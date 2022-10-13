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
    --body '{"context": {"item": {"appId": "knS5Ax2p", "appType": "DLC", "baseAppId": "V7ApLPxl", "boothName": "8TUbPyHc", "boundItemIds": ["t4thCzoz", "JmqSuQlp", "kFWS4hRX"], "categoryPath": "w11cCGJb", "clazz": "lHyukcrD", "createdAt": "1975-05-30T00:00:00Z", "description": "r4IHX8Sr", "displayOrder": 50, "entitlementType": "DURABLE", "ext": {"lLRM38Nl": {}, "krUqX1UX": {}, "cwSlFICu": {}}, "features": ["jNorqNMj", "uV30wP1g", "RerUpi01"], "fresh": false, "images": [{"as": "nzsIP4GW", "caption": "GQ8KVaIM", "height": 82, "imageUrl": "3lnQ1miT", "smallImageUrl": "xCL6XwoA", "width": 1}, {"as": "Oax8DFRx", "caption": "GZgJW2Og", "height": 32, "imageUrl": "8PqF5vJX", "smallImageUrl": "6UXNPTBX", "width": 30}, {"as": "d18JmcOo", "caption": "0qpp2NKx", "height": 78, "imageUrl": "tS1yBFLZ", "smallImageUrl": "jSmqTVRk", "width": 95}], "itemId": "xSBLCsEj", "itemIds": ["B4tnqOc1", "sz8GCjfh", "GRobhSCq"], "itemQty": {"5NkVHzYL": 6, "eQ5ngrsO": 16, "KIWG7kju": 10}, "itemType": "OPTIONBOX", "language": "6Ozw26vS", "listable": false, "localExt": {"IYESOU8e": {}, "UsNytwbD": {}, "x6AbssaJ": {}}, "longDescription": "t0zsOqdF", "maxCount": 42, "maxCountPerUser": 97, "name": "za1x0jfV", "namespace": "N8OBS5Rh", "optionBoxConfig": {"boxItems": [{"count": 64, "itemId": "iNDCAhkC", "itemSku": "0l3NgoZo"}, {"count": 65, "itemId": "wpvHE0mb", "itemSku": "tZBLeH2H"}, {"count": 35, "itemId": "hJQGMJJE", "itemSku": "Owm3SLD3"}]}, "purchasable": false, "purchaseCondition": {"conditionGroups": [{"operator": "or", "predicates": [{"anyOf": 83, "comparison": "excludes", "name": "bPWKRdQb", "predicateType": "SeasonTierPredicate", "value": "YJdKes21", "values": ["adwGg89O", "ByB0w2Du", "msEVWWbB"]}, {"anyOf": 93, "comparison": "isLessThanOrEqual", "name": "bSldTMq6", "predicateType": "EntitlementPredicate", "value": "6xk5XJiN", "values": ["X16Kmihx", "2vG8nzWf", "DbODEuoj"]}, {"anyOf": 55, "comparison": "includes", "name": "Z4PY5n40", "predicateType": "EntitlementPredicate", "value": "WGwimJVL", "values": ["7QRpefcM", "kOtuDFiq", "p1OMM67z"]}]}, {"operator": "and", "predicates": [{"anyOf": 82, "comparison": "isLessThanOrEqual", "name": "2KnrI48L", "predicateType": "EntitlementPredicate", "value": "gmW3M43h", "values": ["SYo09yV9", "09MKhE7E", "FU1sJDXF"]}, {"anyOf": 27, "comparison": "isNot", "name": "EsAuGnWM", "predicateType": "SeasonPassPredicate", "value": "8WzvLGJp", "values": ["G7TNIum0", "MaG0QXfd", "2f6Kp89g"]}, {"anyOf": 23, "comparison": "isGreaterThan", "name": "vzB0qODU", "predicateType": "SeasonPassPredicate", "value": "goZucRL2", "values": ["JnrbYFes", "zI08NABV", "R6iGZWhA"]}]}, {"operator": "or", "predicates": [{"anyOf": 80, "comparison": "includes", "name": "EH1i07nT", "predicateType": "SeasonPassPredicate", "value": "10JNfNYf", "values": ["2N1iJ3MJ", "LPfhcpqw", "C0tQzvjh"]}, {"anyOf": 87, "comparison": "isLessThan", "name": "kFsS8Xuu", "predicateType": "SeasonPassPredicate", "value": "9wvzTsxd", "values": ["YDZnRw9t", "J2aXWQb0", "Cx4E6AQi"]}, {"anyOf": 80, "comparison": "isLessThanOrEqual", "name": "3twhxnTB", "predicateType": "SeasonTierPredicate", "value": "yRNml7dW", "values": ["Ekkmbgdx", "qrycoKwr", "YGVbPuyx"]}]}]}, "recurring": {"cycle": "YEARLY", "fixedFreeDays": 53, "fixedTrialCycles": 3, "graceDays": 87}, "region": "beQdMzVY", "regionData": [{"currencyCode": "D9VWlqJi", "currencyNamespace": "LnH0282s", "currencyType": "VIRTUAL", "discountAmount": 33, "discountExpireAt": "1976-11-10T00:00:00Z", "discountPercentage": 79, "discountPurchaseAt": "1979-03-08T00:00:00Z", "discountedPrice": 17, "expireAt": "1986-12-18T00:00:00Z", "price": 73, "purchaseAt": "1971-04-08T00:00:00Z", "trialPrice": 34}, {"currencyCode": "xqTYulvy", "currencyNamespace": "eBJ1mSVF", "currencyType": "REAL", "discountAmount": 63, "discountExpireAt": "1989-06-02T00:00:00Z", "discountPercentage": 41, "discountPurchaseAt": "1989-04-09T00:00:00Z", "discountedPrice": 35, "expireAt": "1980-12-30T00:00:00Z", "price": 71, "purchaseAt": "1984-08-26T00:00:00Z", "trialPrice": 51}, {"currencyCode": "adGwT9f0", "currencyNamespace": "t2q0F1VO", "currencyType": "REAL", "discountAmount": 90, "discountExpireAt": "1971-09-15T00:00:00Z", "discountPercentage": 62, "discountPurchaseAt": "1974-06-09T00:00:00Z", "discountedPrice": 74, "expireAt": "1992-09-17T00:00:00Z", "price": 9, "purchaseAt": "1975-02-28T00:00:00Z", "trialPrice": 8}], "seasonType": "TIER", "sku": "BKKLZWZV", "stackable": false, "status": "INACTIVE", "tags": ["Ze5oOttx", "tsRCWc1k", "2gigfQM5"], "targetCurrencyCode": "Qc5zDXK6", "targetItemId": "cWfTn2xm", "targetNamespace": "6a2WX8uf", "thumbnailUrl": "CBFfQ9Ft", "title": "n6yG9X9p", "updatedAt": "1984-09-10T00:00:00Z", "useCount": 32}, "namespace": "gQAIs9vr", "order": {"currency": {"currencyCode": "95Bg1Zlm", "currencySymbol": "JObnPSf1", "currencyType": "VIRTUAL", "decimals": 74, "namespace": "ikUrsvpP"}, "ext": {"Q30Ei7yX": {}, "aaZU5TQg": {}, "exEaHbCV": {}}, "free": false}, "source": "OTHER"}, "script": "weKNRzYU", "type": "grantDays"}' \
    > test.out 2>&1
eval_tap $? 3 'TestFulfillmentScriptEval' test.out

#- 4 GetFulfillmentScript
samples/cli/sample-apps Platform getFulfillmentScript \
    --id '1H9V8apr' \
    > test.out 2>&1
eval_tap $? 4 'GetFulfillmentScript' test.out

#- 5 CreateFulfillmentScript
samples/cli/sample-apps Platform createFulfillmentScript \
    --id 'jG8I8ACa' \
    --body '{"grantDays": "pVp40Mrp"}' \
    > test.out 2>&1
eval_tap $? 5 'CreateFulfillmentScript' test.out

#- 6 DeleteFulfillmentScript
samples/cli/sample-apps Platform deleteFulfillmentScript \
    --id '1xHsvaJE' \
    > test.out 2>&1
eval_tap $? 6 'DeleteFulfillmentScript' test.out

#- 7 UpdateFulfillmentScript
samples/cli/sample-apps Platform updateFulfillmentScript \
    --id 'mY5KLoJE' \
    --body '{"grantDays": "ntMF0uE4"}' \
    > test.out 2>&1
eval_tap $? 7 'UpdateFulfillmentScript' test.out

#- 8 ListItemTypeConfigs
samples/cli/sample-apps Platform listItemTypeConfigs \
    > test.out 2>&1
eval_tap $? 8 'ListItemTypeConfigs' test.out

#- 9 CreateItemTypeConfig
samples/cli/sample-apps Platform createItemTypeConfig \
    --body '{"clazz": "AdsnEAEL", "dryRun": true, "fulfillmentUrl": "324Uiha6", "itemType": "INGAMEITEM", "purchaseConditionUrl": "6XRSbTE1"}' \
    > test.out 2>&1
eval_tap $? 9 'CreateItemTypeConfig' test.out

#- 10 SearchItemTypeConfig
samples/cli/sample-apps Platform searchItemTypeConfig \
    --clazz 'hJEZirE6' \
    --itemType 'COINS' \
    > test.out 2>&1
eval_tap $? 10 'SearchItemTypeConfig' test.out

#- 11 GetItemTypeConfig
samples/cli/sample-apps Platform getItemTypeConfig \
    --id 'y2AktPVI' \
    > test.out 2>&1
eval_tap $? 11 'GetItemTypeConfig' test.out

#- 12 UpdateItemTypeConfig
samples/cli/sample-apps Platform updateItemTypeConfig \
    --id 'jacd0B1k' \
    --body '{"clazz": "PUajmItJ", "dryRun": true, "fulfillmentUrl": "iY0IjIki", "purchaseConditionUrl": "2l3m2Eav"}' \
    > test.out 2>&1
eval_tap $? 12 'UpdateItemTypeConfig' test.out

#- 13 DeleteItemTypeConfig
samples/cli/sample-apps Platform deleteItemTypeConfig \
    --id 'q5eFeKTL' \
    > test.out 2>&1
eval_tap $? 13 'DeleteItemTypeConfig' test.out

#- 14 QueryCampaigns
samples/cli/sample-apps Platform queryCampaigns \
    --namespace $AB_NAMESPACE \
    --limit '18' \
    --name 'WWKh3G5v' \
    --offset '86' \
    --tag 'g4K9B1U5' \
    > test.out 2>&1
eval_tap $? 14 'QueryCampaigns' test.out

#- 15 CreateCampaign
samples/cli/sample-apps Platform createCampaign \
    --namespace $AB_NAMESPACE \
    --body '{"description": "vw4LKKgg", "items": [{"extraSubscriptionDays": 10, "itemId": "eZMbFhWY", "itemName": "jqdkBBVQ", "quantity": 2}, {"extraSubscriptionDays": 89, "itemId": "AFEzU8RT", "itemName": "6iLz2mQp", "quantity": 31}, {"extraSubscriptionDays": 41, "itemId": "XkWapXQ4", "itemName": "V87MEEfE", "quantity": 16}], "maxRedeemCountPerCampaignPerUser": 84, "maxRedeemCountPerCode": 1, "maxRedeemCountPerCodePerUser": 38, "maxSaleCount": 15, "name": "4c1vAIp9", "redeemEnd": "1992-09-23T00:00:00Z", "redeemStart": "1984-10-10T00:00:00Z", "redeemType": "ITEM", "status": "INACTIVE", "tags": ["kaQbI9QA", "gG8Vn4Jz", "rWZXr5Ou"], "type": "REDEMPTION"}' \
    > test.out 2>&1
eval_tap $? 15 'CreateCampaign' test.out

#- 16 GetCampaign
samples/cli/sample-apps Platform getCampaign \
    --campaignId 'KmNZz002' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'GetCampaign' test.out

#- 17 UpdateCampaign
samples/cli/sample-apps Platform updateCampaign \
    --campaignId 'rzstqJMb' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "upOTEHNs", "items": [{"extraSubscriptionDays": 50, "itemId": "6J5N3nTc", "itemName": "Y5SlH5uK", "quantity": 3}, {"extraSubscriptionDays": 92, "itemId": "tTVB22Xi", "itemName": "52EAU5iO", "quantity": 0}, {"extraSubscriptionDays": 99, "itemId": "TCxpy5mm", "itemName": "mV8TfJ6N", "quantity": 80}], "maxRedeemCountPerCampaignPerUser": 51, "maxRedeemCountPerCode": 92, "maxRedeemCountPerCodePerUser": 6, "maxSaleCount": 84, "name": "4WpIB8Hr", "redeemEnd": "1981-03-29T00:00:00Z", "redeemStart": "1994-03-26T00:00:00Z", "redeemType": "ITEM", "status": "ACTIVE", "tags": ["x4Yi4LZq", "XMN4udgY", "uU1fLmeU"]}' \
    > test.out 2>&1
eval_tap $? 17 'UpdateCampaign' test.out

#- 18 GetCampaignDynamic
samples/cli/sample-apps Platform getCampaignDynamic \
    --campaignId 'HEb1G60k' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'GetCampaignDynamic' test.out

#- 19 GetRootCategories
samples/cli/sample-apps Platform getRootCategories \
    --namespace $AB_NAMESPACE \
    --storeId 'qh2LH0jy' \
    > test.out 2>&1
eval_tap $? 19 'GetRootCategories' test.out

#- 20 CreateCategory
samples/cli/sample-apps Platform createCategory \
    --namespace $AB_NAMESPACE \
    --storeId 'aGvhMN5X' \
    --body '{"categoryPath": "gADRVyfD", "localizationDisplayNames": {"pwVX5xiT": "fquKPqdn", "CLAmQYgL": "nSmG0Aa7", "LNUfApjY": "QTXG8GnI"}}' \
    > test.out 2>&1
eval_tap $? 20 'CreateCategory' test.out

#- 21 ListCategoriesBasic
samples/cli/sample-apps Platform listCategoriesBasic \
    --namespace $AB_NAMESPACE \
    --storeId 'bfGjvVkU' \
    > test.out 2>&1
eval_tap $? 21 'ListCategoriesBasic' test.out

#- 22 GetCategory
samples/cli/sample-apps Platform getCategory \
    --categoryPath 'filmF6Eg' \
    --namespace $AB_NAMESPACE \
    --storeId 'qrLbg1ci' \
    > test.out 2>&1
eval_tap $? 22 'GetCategory' test.out

#- 23 UpdateCategory
samples/cli/sample-apps Platform updateCategory \
    --categoryPath 'mIMcWW7B' \
    --namespace $AB_NAMESPACE \
    --storeId '3nCgKrr2' \
    --body '{"localizationDisplayNames": {"JhNTAllA": "puzgryEu", "w4ekLewr": "CZ4DT4Sr", "gzFDlmIs": "Nws1AFEx"}}' \
    > test.out 2>&1
eval_tap $? 23 'UpdateCategory' test.out

#- 24 DeleteCategory
samples/cli/sample-apps Platform deleteCategory \
    --categoryPath '32VMVmHQ' \
    --namespace $AB_NAMESPACE \
    --storeId 'TsNuuZTp' \
    > test.out 2>&1
eval_tap $? 24 'DeleteCategory' test.out

#- 25 GetChildCategories
samples/cli/sample-apps Platform getChildCategories \
    --categoryPath 'EzNpa7Eq' \
    --namespace $AB_NAMESPACE \
    --storeId 'eE8A3VUd' \
    > test.out 2>&1
eval_tap $? 25 'GetChildCategories' test.out

#- 26 GetDescendantCategories
samples/cli/sample-apps Platform getDescendantCategories \
    --categoryPath 'C58aYhWG' \
    --namespace $AB_NAMESPACE \
    --storeId '9R12o3EG' \
    > test.out 2>&1
eval_tap $? 26 'GetDescendantCategories' test.out

#- 27 QueryCodes
samples/cli/sample-apps Platform queryCodes \
    --campaignId 'PlSjnpvf' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --batchNo '22' \
    --code 'qMpneSFV' \
    --limit '87' \
    --offset '84' \
    > test.out 2>&1
eval_tap $? 27 'QueryCodes' test.out

#- 28 CreateCodes
samples/cli/sample-apps Platform createCodes \
    --campaignId 'uLDvCqvD' \
    --namespace $AB_NAMESPACE \
    --body '{"quantity": 3}' \
    > test.out 2>&1
eval_tap $? 28 'CreateCodes' test.out

#- 29 Download
samples/cli/sample-apps Platform download \
    --campaignId 'zgcgrz9A' \
    --namespace $AB_NAMESPACE \
    --batchNo '89' \
    > test.out 2>&1
eval_tap $? 29 'Download' test.out

#- 30 BulkDisableCodes
samples/cli/sample-apps Platform bulkDisableCodes \
    --campaignId 'GSU4rzt0' \
    --namespace $AB_NAMESPACE \
    --batchNo '56' \
    > test.out 2>&1
eval_tap $? 30 'BulkDisableCodes' test.out

#- 31 BulkEnableCodes
samples/cli/sample-apps Platform bulkEnableCodes \
    --campaignId 'LsjrAQC8' \
    --namespace $AB_NAMESPACE \
    --batchNo '93' \
    > test.out 2>&1
eval_tap $? 31 'BulkEnableCodes' test.out

#- 32 QueryRedeemHistory
samples/cli/sample-apps Platform queryRedeemHistory \
    --campaignId 'PddurePN' \
    --namespace $AB_NAMESPACE \
    --code 'xEqvMmdB' \
    --limit '77' \
    --offset '15' \
    --userId 't4yktBFh' \
    > test.out 2>&1
eval_tap $? 32 'QueryRedeemHistory' test.out

#- 33 GetCode
samples/cli/sample-apps Platform getCode \
    --code 'KIBsMzLZ' \
    --namespace $AB_NAMESPACE \
    --redeemable 'true' \
    > test.out 2>&1
eval_tap $? 33 'GetCode' test.out

#- 34 DisableCode
samples/cli/sample-apps Platform disableCode \
    --code 'BnH5QuS8' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 34 'DisableCode' test.out

#- 35 EnableCode
samples/cli/sample-apps Platform enableCode \
    --code 'ecp2Ft1T' \
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
    --body '{"currencyCode": "xVUH8LXd", "currencySymbol": "FiVeNpBv", "currencyType": "REAL", "decimals": 88, "localizationDescriptions": {"bXhmfqxi": "3xh1OMhM", "K4l7rd5K": "TYjedSir", "SyD6IyJg": "uRJyoQIo"}}' \
    > test.out 2>&1
eval_tap $? 37 'CreateCurrency' test.out

#- 38 UpdateCurrency
samples/cli/sample-apps Platform updateCurrency \
    --currencyCode '1jeIPMIE' \
    --namespace $AB_NAMESPACE \
    --body '{"localizationDescriptions": {"G8ePfZeD": "RfqkCGMk", "qhzljddn": "mNVS1S3h", "FIW95qys": "Xn3CJJsL"}}' \
    > test.out 2>&1
eval_tap $? 38 'UpdateCurrency' test.out

#- 39 DeleteCurrency
samples/cli/sample-apps Platform deleteCurrency \
    --currencyCode 'wB2Qr3GR' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 39 'DeleteCurrency' test.out

#- 40 GetCurrencyConfig
samples/cli/sample-apps Platform getCurrencyConfig \
    --currencyCode 'K8Dqja93' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 40 'GetCurrencyConfig' test.out

#- 41 GetCurrencySummary
samples/cli/sample-apps Platform getCurrencySummary \
    --currencyCode 'T8p6rQSU' \
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
    --body '{"data": [{"id": "oWbelXhM", "rewards": [{"currency": {"currencyCode": "V5Mcxjeq", "namespace": "Tju4vLFB"}, "item": {"itemId": "8QMAvKtH", "itemSku": "en2IdQPa", "itemType": "qphKbeaD"}, "quantity": 99, "type": "ITEM"}, {"currency": {"currencyCode": "gXr75VjM", "namespace": "BK6La31C"}, "item": {"itemId": "yYQH63JT", "itemSku": "2Fm1VOO2", "itemType": "CUEw4EsC"}, "quantity": 81, "type": "ITEM"}, {"currency": {"currencyCode": "vrCeyfW5", "namespace": "YpiDSpIE"}, "item": {"itemId": "sXQNMJcK", "itemSku": "YYtVrWsr", "itemType": "4kt9n3bQ"}, "quantity": 3, "type": "ITEM"}]}, {"id": "ZcZUrrO5", "rewards": [{"currency": {"currencyCode": "fbrTk7gC", "namespace": "R4H4Q2Rg"}, "item": {"itemId": "Z3zOWe1x", "itemSku": "lFdLMaQ4", "itemType": "noFLfcDN"}, "quantity": 57, "type": "ITEM"}, {"currency": {"currencyCode": "IdQEU86v", "namespace": "LFVz33mx"}, "item": {"itemId": "Gt3P0qyk", "itemSku": "ZeCUTZ8w", "itemType": "q81ZAnru"}, "quantity": 74, "type": "CURRENCY"}, {"currency": {"currencyCode": "EnVDYjex", "namespace": "9QSlYydf"}, "item": {"itemId": "PofkMEDK", "itemSku": "BO0hKauI", "itemType": "8SA0gR1m"}, "quantity": 89, "type": "ITEM"}]}, {"id": "BPVMEdpq", "rewards": [{"currency": {"currencyCode": "ZfMH7bjm", "namespace": "W39c3zGc"}, "item": {"itemId": "4pUctfKJ", "itemSku": "SmxN1n5m", "itemType": "CK7NnHfK"}, "quantity": 11, "type": "CURRENCY"}, {"currency": {"currencyCode": "nRCaH0Tu", "namespace": "jIxZ5PZp"}, "item": {"itemId": "LUR9UzVX", "itemSku": "UGnLR0Xw", "itemType": "CLpWClVp"}, "quantity": 22, "type": "ITEM"}, {"currency": {"currencyCode": "uksMSZHN", "namespace": "lmrrNSj7"}, "item": {"itemId": "0rTpkZsN", "itemSku": "dJYJtJPD", "itemType": "tFzMB2zo"}, "quantity": 61, "type": "ITEM"}]}]}' \
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
    --body '{"data": [{"platform": "EPICGAMES", "platformDlcIdMap": {"TYWFqfpJ": "DwTiMsoP", "kaZUMioL": "BofC5gU3", "ACdRqxJO": "u4cyzomp"}}, {"platform": "XBOX", "platformDlcIdMap": {"ZefE9KWQ": "ScnBc9XJ", "cP1pq6QB": "xwqv4lBV", "7Y3QyZjY": "vdMoL1pp"}}, {"platform": "XBOX", "platformDlcIdMap": {"9CtYRJW8": "WH9tNo6W", "nwCf1BeT": "gByfCSJb", "xBDZjVKn": "AEdpx4wz"}}]}' \
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
    --entitlementClazz 'SUBSCRIPTION' \
    --entitlementName 'Xtggu1it' \
    --itemId '["P8vd1Mtd", "fKZuonSG", "aTrcfjl8"]' \
    --limit '19' \
    --offset '99' \
    --userId 'xwebYhSQ' \
    > test.out 2>&1
eval_tap $? 48 'QueryEntitlements' test.out

#- 49 GetEntitlement
samples/cli/sample-apps Platform getEntitlement \
    --entitlementId '4Ya57o9F' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 49 'GetEntitlement' test.out

#- 50 QueryFulfillmentHistories
samples/cli/sample-apps Platform queryFulfillmentHistories \
    --namespace $AB_NAMESPACE \
    --limit '68' \
    --offset '14' \
    --status 'FAIL' \
    --userId '9owDTMpv' \
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
    --body '{"bundleId": "m40cinib", "password": "Y0mZQd3h"}' \
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
    --body '{"sandboxId": "lS5E7vGt"}' \
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
    --body '{"applicationName": "4zFjAVbn", "serviceAccountId": "GkZja1TQ"}' \
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
    --body '{"data": [{"itemIdentity": "7qDoMFk6", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"GprFxIWj": "jHIsysZ3", "j3p30n9y": "8m7E0g4R", "tc6IOwJe": "WYbKf4oB"}}, {"itemIdentity": "889dnGW4", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"fapIY3mb": "71nVr0br", "FTKfQUPj": "qnLSZg0K", "kFWaDSEL": "2I0vQ7B7"}}, {"itemIdentity": "17r5DU70", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"YFtJCjTr": "sDdx32U9", "wXoxHFHU": "2lY4eVQ6", "VkEax14U": "2TgIkN3g"}}]}' \
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
    --body '{"environment": "EJ6V94lz"}' \
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
    --body '{"appId": "aLekzGnf", "publisherAuthenticationKey": "BwGjdqBZ"}' \
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
    --body '{"clientId": "FOT8foW0", "clientSecret": "h5TiFCrj", "organizationId": "HsrkRD6P"}' \
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
    --body '{"relyingPartyCert": "DKTtGJlP"}' \
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
    --password 'zluW5zBx' \
    > test.out 2>&1
eval_tap $? 79 'UpdateXblBPCertFile' test.out

#- 80 DownloadInvoiceDetails
samples/cli/sample-apps Platform downloadInvoiceDetails \
    --namespace $AB_NAMESPACE \
    --feature '2ElYSPLs' \
    --itemId 'gzt87BKT' \
    --itemType 'BUNDLE' \
    --endTime 'e23GyyNh' \
    --startTime '9OGsakFH' \
    > test.out 2>&1
eval_tap $? 80 'DownloadInvoiceDetails' test.out

#- 81 GenerateInvoiceSummary
samples/cli/sample-apps Platform generateInvoiceSummary \
    --namespace $AB_NAMESPACE \
    --feature 'YEcqzH51' \
    --itemId 'iW7Y5aJu' \
    --itemType 'BUNDLE' \
    --endTime 'sI0h9bb2' \
    --startTime 'UQ2SSxBg' \
    > test.out 2>&1
eval_tap $? 81 'GenerateInvoiceSummary' test.out

#- 82 SyncInGameItem
samples/cli/sample-apps Platform syncInGameItem \
    --namespace $AB_NAMESPACE \
    --storeId 'VnWCT9Ze' \
    --body '{"categoryPath": "okpUkNSt", "targetItemId": "0rk9vlui", "targetNamespace": "5eWlQsj2"}' \
    > test.out 2>&1
eval_tap $? 82 'SyncInGameItem' test.out

#- 83 CreateItem
samples/cli/sample-apps Platform createItem \
    --namespace $AB_NAMESPACE \
    --storeId 'kZCdaQR7' \
    --body '{"appId": "RMeVodCO", "appType": "GAME", "baseAppId": "Z1LmXDze", "boothName": "7RBRcX19", "categoryPath": "Q3mMPI03", "clazz": "XGvr4p7o", "displayOrder": 78, "entitlementType": "CONSUMABLE", "ext": {"rSh2Q9oA": {}, "bcVXl3xh": {}, "TZA15Baz": {}}, "features": ["p7YijU6s", "QAdWBa0j", "3ZQh0dpl"], "images": [{"as": "DAranH4O", "caption": "X6fxyWhl", "height": 38, "imageUrl": "gf8tBVq1", "smallImageUrl": "oy6lZzEv", "width": 12}, {"as": "NesLqEla", "caption": "qx2AvQxM", "height": 5, "imageUrl": "3aY9Nu6i", "smallImageUrl": "eveCwLAZ", "width": 53}, {"as": "GAJ4iGU4", "caption": "8WwAHbo6", "height": 1, "imageUrl": "mWRepZuh", "smallImageUrl": "Z2fEUaFp", "width": 38}], "itemIds": ["oMOyS08G", "GxYDs87Z", "ReHptMDs"], "itemQty": {"4OcBVjOA": 68, "XGBvB05y": 82, "BzrCtoyx": 87}, "itemType": "EXTENSION", "listable": false, "localizations": {"sw274WVE": {"description": "Cf8KJlTe", "localExt": {"zD5W2Lci": {}, "WSJIjlM9": {}, "jDN3lD0J": {}}, "longDescription": "63Q1wxh6", "title": "bwr0e80E"}, "pJoP43mV": {"description": "MIvenXbv", "localExt": {"g9RVvmed": {}, "dmeqRNje": {}, "3WXtrpRC": {}}, "longDescription": "l5luoRB9", "title": "mzdGt4Lw"}, "xkikZzLm": {"description": "k81JCtvs", "localExt": {"mZHZ4B3Z": {}, "gDwPMvGs": {}, "hZLSpEh8": {}}, "longDescription": "GcPVq5Ee", "title": "rdHlpOzj"}}, "maxCount": 97, "maxCountPerUser": 67, "name": "2PzhRgpZ", "optionBoxConfig": {"boxItems": [{"count": 75, "itemId": "4ieRhaMg", "itemSku": "ESbulKfR"}, {"count": 34, "itemId": "UkMsHlQx", "itemSku": "IKcVqagg"}, {"count": 91, "itemId": "AeHuXMts", "itemSku": "yYjUfteZ"}]}, "purchasable": false, "recurring": {"cycle": "WEEKLY", "fixedFreeDays": 13, "fixedTrialCycles": 13, "graceDays": 95}, "regionData": {"HIzWWXla": [{"currencyCode": "BHN22LBn", "currencyNamespace": "EsgyxVzz", "currencyType": "REAL", "discountAmount": 91, "discountExpireAt": "1971-04-07T00:00:00Z", "discountPercentage": 7, "discountPurchaseAt": "1974-05-10T00:00:00Z", "discountedPrice": 24, "expireAt": "1996-10-23T00:00:00Z", "price": 58, "purchaseAt": "1998-01-24T00:00:00Z", "trialPrice": 25}, {"currencyCode": "gqkTfpbd", "currencyNamespace": "TRtT3QIP", "currencyType": "REAL", "discountAmount": 32, "discountExpireAt": "1973-08-31T00:00:00Z", "discountPercentage": 78, "discountPurchaseAt": "1974-02-10T00:00:00Z", "discountedPrice": 22, "expireAt": "1982-03-03T00:00:00Z", "price": 64, "purchaseAt": "1997-12-15T00:00:00Z", "trialPrice": 51}, {"currencyCode": "s12zeaRN", "currencyNamespace": "Jy92DKNh", "currencyType": "VIRTUAL", "discountAmount": 85, "discountExpireAt": "1992-11-22T00:00:00Z", "discountPercentage": 66, "discountPurchaseAt": "1989-01-04T00:00:00Z", "discountedPrice": 17, "expireAt": "1991-11-09T00:00:00Z", "price": 14, "purchaseAt": "1988-11-25T00:00:00Z", "trialPrice": 52}], "VCdSnEIk": [{"currencyCode": "DQR8i77E", "currencyNamespace": "vYK0Ngy8", "currencyType": "VIRTUAL", "discountAmount": 6, "discountExpireAt": "1984-04-18T00:00:00Z", "discountPercentage": 10, "discountPurchaseAt": "1983-12-13T00:00:00Z", "discountedPrice": 55, "expireAt": "1984-12-07T00:00:00Z", "price": 100, "purchaseAt": "1974-08-31T00:00:00Z", "trialPrice": 37}, {"currencyCode": "EA4rjtuo", "currencyNamespace": "BoscxPUm", "currencyType": "VIRTUAL", "discountAmount": 69, "discountExpireAt": "1977-06-05T00:00:00Z", "discountPercentage": 3, "discountPurchaseAt": "1992-05-11T00:00:00Z", "discountedPrice": 18, "expireAt": "1997-02-08T00:00:00Z", "price": 23, "purchaseAt": "1979-01-11T00:00:00Z", "trialPrice": 81}, {"currencyCode": "LqI5rqDv", "currencyNamespace": "89AMLNUS", "currencyType": "REAL", "discountAmount": 30, "discountExpireAt": "1999-07-19T00:00:00Z", "discountPercentage": 50, "discountPurchaseAt": "1977-11-08T00:00:00Z", "discountedPrice": 42, "expireAt": "1990-04-06T00:00:00Z", "price": 87, "purchaseAt": "1982-02-25T00:00:00Z", "trialPrice": 82}], "v1h73tRN": [{"currencyCode": "Qy1QnBzl", "currencyNamespace": "7SgJma6f", "currencyType": "REAL", "discountAmount": 41, "discountExpireAt": "1987-08-31T00:00:00Z", "discountPercentage": 6, "discountPurchaseAt": "1992-11-19T00:00:00Z", "discountedPrice": 89, "expireAt": "1971-11-03T00:00:00Z", "price": 1, "purchaseAt": "1996-10-30T00:00:00Z", "trialPrice": 70}, {"currencyCode": "0zgDvotL", "currencyNamespace": "1yux3lHh", "currencyType": "REAL", "discountAmount": 89, "discountExpireAt": "1974-03-01T00:00:00Z", "discountPercentage": 61, "discountPurchaseAt": "1971-08-14T00:00:00Z", "discountedPrice": 86, "expireAt": "1996-07-03T00:00:00Z", "price": 52, "purchaseAt": "1980-12-03T00:00:00Z", "trialPrice": 83}, {"currencyCode": "TJRGslcK", "currencyNamespace": "tk1yRYP6", "currencyType": "VIRTUAL", "discountAmount": 10, "discountExpireAt": "1972-07-23T00:00:00Z", "discountPercentage": 25, "discountPurchaseAt": "1987-03-22T00:00:00Z", "discountedPrice": 0, "expireAt": "1972-03-12T00:00:00Z", "price": 12, "purchaseAt": "1990-05-15T00:00:00Z", "trialPrice": 94}]}, "seasonType": "TIER", "sku": "PxS2xOqt", "stackable": false, "status": "INACTIVE", "tags": ["6rFCKKGi", "q3yKfc9m", "5tZhtZuw"], "targetCurrencyCode": "5y4AerQi", "targetNamespace": "vj1o0iWE", "thumbnailUrl": "QOJx4kAq", "useCount": 2}' \
    > test.out 2>&1
eval_tap $? 83 'CreateItem' test.out

#- 84 GetItemByAppId
samples/cli/sample-apps Platform getItemByAppId \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --storeId 'B0As0ssk' \
    --appId 'sZ1JLEyj' \
    > test.out 2>&1
eval_tap $? 84 'GetItemByAppId' test.out

#- 85 QueryItems
samples/cli/sample-apps Platform queryItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --appType 'DLC' \
    --availableDate '3ML2pGmS' \
    --baseAppId '3iaCjAnP' \
    --categoryPath 'p2Wz0XW4' \
    --features '4rUq05u1' \
    --includeSubCategoryItem 'true' \
    --itemType 'OPTIONBOX' \
    --limit '31' \
    --offset '78' \
    --region 'vWiQqYDu' \
    --sortBy '["displayOrder:asc", "name:asc", "updatedAt"]' \
    --storeId '9WRKgbwq' \
    --tags 'Fa4syarT' \
    --targetNamespace 'l3dPw5LS' \
    > test.out 2>&1
eval_tap $? 85 'QueryItems' test.out

#- 86 ListBasicItemsByFeatures
samples/cli/sample-apps Platform listBasicItemsByFeatures \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --features '["JIZ5Yr2u", "MruMfbYH", "I3fVci9T"]' \
    > test.out 2>&1
eval_tap $? 86 'ListBasicItemsByFeatures' test.out

#- 87 GetItemBySku
samples/cli/sample-apps Platform getItemBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId '5YCps8zK' \
    --sku 'zZGn1Z3z' \
    > test.out 2>&1
eval_tap $? 87 'GetItemBySku' test.out

#- 88 GetLocaleItemBySku
samples/cli/sample-apps Platform getLocaleItemBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --language 'zzHDqnzP' \
    --populateBundle 'true' \
    --region 'WKM2FoDa' \
    --storeId '6jicefkI' \
    --sku 'gnUDWNLh' \
    > test.out 2>&1
eval_tap $? 88 'GetLocaleItemBySku' test.out

#- 89 GetItemIdBySku
samples/cli/sample-apps Platform getItemIdBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --storeId 'Otjwj4Vo' \
    --sku 'tBFNstpU' \
    > test.out 2>&1
eval_tap $? 89 'GetItemIdBySku' test.out

#- 90 GetBulkItemIdBySkus
samples/cli/sample-apps Platform getBulkItemIdBySkus \
    --namespace $AB_NAMESPACE \
    --sku '["2GYThNmL", "lY4Sj6i6", "pXzldgCe"]' \
    --storeId 'uYNOi0Oc' \
    > test.out 2>&1
eval_tap $? 90 'GetBulkItemIdBySkus' test.out

#- 91 BulkGetLocaleItems
samples/cli/sample-apps Platform bulkGetLocaleItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --language 'FkFUrrtj' \
    --region 'kgmfEUaQ' \
    --storeId '99WkX6HR' \
    --itemIds 'P4EvWo9T' \
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
    --userId 'y2wjbA1Q' \
    --body '{"itemIds": ["BOMTIVMK", "ovqeestW", "UjhoEM0b"]}' \
    > test.out 2>&1
eval_tap $? 93 'ValidateItemPurchaseCondition' test.out

#- 94 SearchItems
samples/cli/sample-apps Platform searchItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --itemType 'SEASON' \
    --limit '75' \
    --offset '32' \
    --sortBy 'o20302n0' \
    --storeId 'llNVwEM2' \
    --keyword 'TPNaz04w' \
    --language '7vES4PH7' \
    > test.out 2>&1
eval_tap $? 94 'SearchItems' test.out

#- 95 QueryUncategorizedItems
samples/cli/sample-apps Platform queryUncategorizedItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --limit '87' \
    --offset '45' \
    --sortBy '["updatedAt", "createdAt:desc", "updatedAt:asc"]' \
    --storeId 'cd2b8iu6' \
    > test.out 2>&1
eval_tap $? 95 'QueryUncategorizedItems' test.out

#- 96 GetItem
samples/cli/sample-apps Platform getItem \
    --itemId 'BWwClcX7' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'jt4r4Sot' \
    > test.out 2>&1
eval_tap $? 96 'GetItem' test.out

#- 97 UpdateItem
samples/cli/sample-apps Platform updateItem \
    --itemId 'ajfPjdIo' \
    --namespace $AB_NAMESPACE \
    --storeId 'zSUwdBYM' \
    --body '{"appId": "mDgyzFFm", "appType": "GAME", "baseAppId": "gLupfUN3", "boothName": "Ofn88ySC", "categoryPath": "aFnMrUke", "clazz": "pOouP7JV", "displayOrder": 5, "entitlementType": "CONSUMABLE", "ext": {"FJXLrG4U": {}, "O0lIW7Ku": {}, "AM7asqlp": {}}, "features": ["w6bmYVtG", "jcWkVntf", "UzTP0EFY"], "images": [{"as": "lFcZCGyo", "caption": "wviCtwK7", "height": 69, "imageUrl": "OFpl0k9G", "smallImageUrl": "m1TI9map", "width": 2}, {"as": "xL0k8r0b", "caption": "yGa0Tery", "height": 31, "imageUrl": "Kh5BEWIG", "smallImageUrl": "zhdDugvG", "width": 40}, {"as": "twjei3rz", "caption": "X1vxMchK", "height": 100, "imageUrl": "HZjQ5pme", "smallImageUrl": "UjGLI6jF", "width": 34}], "itemIds": ["nClg5HYo", "hMFoKrSo", "tnelDs6Z"], "itemQty": {"02i3mYOd": 71, "88B3rD39": 43, "IickzCVF": 70}, "itemType": "SUBSCRIPTION", "listable": true, "localizations": {"p3EaZLAJ": {"description": "m5wancYz", "localExt": {"za1ZOP8t": {}, "VztMyghh": {}, "yPEuNZ4j": {}}, "longDescription": "TuQXkpiW", "title": "7z86vhil"}, "jmBQTZXw": {"description": "ssZu7Lxw", "localExt": {"ArZncgYN": {}, "ZIkaZ8pY": {}, "dgBxgIWf": {}}, "longDescription": "EYV5mky0", "title": "ydc3CiP9"}, "ZgurTs83": {"description": "anoT90h6", "localExt": {"jLWLdsNH": {}, "OUwQhCkz": {}, "A4vbdllA": {}}, "longDescription": "gL2soD2V", "title": "cNSgEA0X"}}, "maxCount": 70, "maxCountPerUser": 43, "name": "D8Qk4Hmw", "optionBoxConfig": {"boxItems": [{"count": 50, "itemId": "brnLtxL5", "itemSku": "M6bb6QaI"}, {"count": 80, "itemId": "ylxcMzDB", "itemSku": "yl49mEG0"}, {"count": 77, "itemId": "8IatPYIb", "itemSku": "cMFIfeCE"}]}, "purchasable": true, "recurring": {"cycle": "WEEKLY", "fixedFreeDays": 30, "fixedTrialCycles": 19, "graceDays": 18}, "regionData": {"tJKKN1kW": [{"currencyCode": "o6z4U12X", "currencyNamespace": "jri3HvJB", "currencyType": "VIRTUAL", "discountAmount": 46, "discountExpireAt": "1995-01-05T00:00:00Z", "discountPercentage": 1, "discountPurchaseAt": "1993-09-26T00:00:00Z", "discountedPrice": 67, "expireAt": "1988-11-25T00:00:00Z", "price": 29, "purchaseAt": "1971-05-25T00:00:00Z", "trialPrice": 35}, {"currencyCode": "Eyseovhv", "currencyNamespace": "5kAKsJAr", "currencyType": "REAL", "discountAmount": 83, "discountExpireAt": "1973-06-15T00:00:00Z", "discountPercentage": 45, "discountPurchaseAt": "1974-03-01T00:00:00Z", "discountedPrice": 23, "expireAt": "1993-08-03T00:00:00Z", "price": 60, "purchaseAt": "1985-09-07T00:00:00Z", "trialPrice": 59}, {"currencyCode": "8dIXXbdR", "currencyNamespace": "bqvpLcW7", "currencyType": "REAL", "discountAmount": 91, "discountExpireAt": "1986-08-10T00:00:00Z", "discountPercentage": 54, "discountPurchaseAt": "1985-11-08T00:00:00Z", "discountedPrice": 55, "expireAt": "1973-08-08T00:00:00Z", "price": 7, "purchaseAt": "1997-07-11T00:00:00Z", "trialPrice": 5}], "eegb0c7B": [{"currencyCode": "WolCpH8e", "currencyNamespace": "PN7PvRIJ", "currencyType": "REAL", "discountAmount": 81, "discountExpireAt": "1972-08-15T00:00:00Z", "discountPercentage": 5, "discountPurchaseAt": "1993-01-19T00:00:00Z", "discountedPrice": 27, "expireAt": "1987-04-15T00:00:00Z", "price": 21, "purchaseAt": "1999-01-19T00:00:00Z", "trialPrice": 9}, {"currencyCode": "X63xky1l", "currencyNamespace": "D49Q9pDH", "currencyType": "REAL", "discountAmount": 60, "discountExpireAt": "1993-12-20T00:00:00Z", "discountPercentage": 30, "discountPurchaseAt": "1991-12-25T00:00:00Z", "discountedPrice": 72, "expireAt": "1977-03-31T00:00:00Z", "price": 81, "purchaseAt": "1972-05-07T00:00:00Z", "trialPrice": 98}, {"currencyCode": "sjmdDixr", "currencyNamespace": "1og7BPi3", "currencyType": "REAL", "discountAmount": 77, "discountExpireAt": "1994-03-31T00:00:00Z", "discountPercentage": 97, "discountPurchaseAt": "1978-10-23T00:00:00Z", "discountedPrice": 79, "expireAt": "1986-03-26T00:00:00Z", "price": 14, "purchaseAt": "1971-10-31T00:00:00Z", "trialPrice": 42}], "4hVuRajS": [{"currencyCode": "7X8O8zui", "currencyNamespace": "9Q6xggWD", "currencyType": "VIRTUAL", "discountAmount": 92, "discountExpireAt": "1981-06-09T00:00:00Z", "discountPercentage": 84, "discountPurchaseAt": "1975-07-22T00:00:00Z", "discountedPrice": 44, "expireAt": "1996-11-25T00:00:00Z", "price": 10, "purchaseAt": "1973-09-03T00:00:00Z", "trialPrice": 30}, {"currencyCode": "KeXEU9jo", "currencyNamespace": "2z7yJvsQ", "currencyType": "VIRTUAL", "discountAmount": 41, "discountExpireAt": "1998-11-29T00:00:00Z", "discountPercentage": 77, "discountPurchaseAt": "1971-02-28T00:00:00Z", "discountedPrice": 100, "expireAt": "1989-03-18T00:00:00Z", "price": 15, "purchaseAt": "1986-04-29T00:00:00Z", "trialPrice": 77}, {"currencyCode": "TK4knMHZ", "currencyNamespace": "mljxAewd", "currencyType": "VIRTUAL", "discountAmount": 14, "discountExpireAt": "1998-04-15T00:00:00Z", "discountPercentage": 84, "discountPurchaseAt": "1999-06-26T00:00:00Z", "discountedPrice": 86, "expireAt": "1975-09-25T00:00:00Z", "price": 72, "purchaseAt": "1978-12-26T00:00:00Z", "trialPrice": 20}]}, "seasonType": "TIER", "sku": "PozgePQl", "stackable": true, "status": "ACTIVE", "tags": ["j1vryFEw", "8cMZaLFH", "b4MnohMN"], "targetCurrencyCode": "IVjtLruc", "targetNamespace": "ZYkGYii5", "thumbnailUrl": "2tKn88lz", "useCount": 57}' \
    > test.out 2>&1
eval_tap $? 97 'UpdateItem' test.out

#- 98 DeleteItem
samples/cli/sample-apps Platform deleteItem \
    --itemId 'fJz31w4u' \
    --namespace $AB_NAMESPACE \
    --force 'true' \
    --storeId 'Rc1TqVXI' \
    > test.out 2>&1
eval_tap $? 98 'DeleteItem' test.out

#- 99 AcquireItem
samples/cli/sample-apps Platform acquireItem \
    --itemId 'Jv3WwUnJ' \
    --namespace $AB_NAMESPACE \
    --body '{"count": 96, "orderNo": "vKQQCl0n"}' \
    > test.out 2>&1
eval_tap $? 99 'AcquireItem' test.out

#- 100 GetApp
samples/cli/sample-apps Platform getApp \
    --itemId 'u7OU3gJJ' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --storeId 'J2zGeikp' \
    > test.out 2>&1
eval_tap $? 100 'GetApp' test.out

#- 101 UpdateApp
samples/cli/sample-apps Platform updateApp \
    --itemId 'ZdTqNWcD' \
    --namespace $AB_NAMESPACE \
    --storeId 's3ExvVmv' \
    --body '{"carousel": [{"alt": "ABwya2j7", "previewUrl": "qeqfF09R", "thumbnailUrl": "KE0Yp7xD", "type": "video", "url": "qaRcOprV", "videoSource": "vimeo"}, {"alt": "y72r56HH", "previewUrl": "Mjl1VH7s", "thumbnailUrl": "SlSgzMie", "type": "video", "url": "kZh73ZHT", "videoSource": "generic"}, {"alt": "W6O9bzuj", "previewUrl": "diHZigK7", "thumbnailUrl": "lgxIBunF", "type": "image", "url": "bRXwSMqg", "videoSource": "generic"}], "developer": "2yj6Kq2g", "forumUrl": "bvX8pxbm", "genres": ["MassivelyMultiplayer", "Sports", "Simulation"], "localizations": {"06ssWs5T": {"announcement": "Cq0aOJfT", "slogan": "iJvvOmJ5"}, "PrQXwNPK": {"announcement": "G0RMvhlK", "slogan": "drJU1XzA"}, "7ee5Pku5": {"announcement": "7vkwvUd2", "slogan": "onKhO0nL"}}, "platformRequirements": {"mQZhhzYy": [{"additionals": "PsM5gu8o", "directXVersion": "YFLJ6oCc", "diskSpace": "w2amGFkH", "graphics": "nGcs3wci", "label": "RXa3gSzs", "osVersion": "WMD7qFKE", "processor": "jwia8u4o", "ram": "nDb4Xm1K", "soundCard": "5mbSk88O"}, {"additionals": "ligqaCU5", "directXVersion": "ZRmd040b", "diskSpace": "nEihwMf2", "graphics": "Qk6YpS7I", "label": "PmlrV3LB", "osVersion": "hxTh7VZu", "processor": "qYzjTTIb", "ram": "MZFL8h1V", "soundCard": "x02USYvU"}, {"additionals": "9yqzoau0", "directXVersion": "5ChlPKk4", "diskSpace": "BlWIBI9G", "graphics": "9zxduOCZ", "label": "9woVypBv", "osVersion": "MBZks8Qt", "processor": "CcqVRrDs", "ram": "CcjlNteI", "soundCard": "c2Bwm3Pc"}], "wnYah8W4": [{"additionals": "ISaVHRkt", "directXVersion": "zjbAoXMp", "diskSpace": "WbkuC9PN", "graphics": "dyEBvKrg", "label": "YIfQmCw7", "osVersion": "FdC4SaIH", "processor": "T0Aucn6R", "ram": "H5uV0p3h", "soundCard": "SWCdZ2gF"}, {"additionals": "ZN7dRFRP", "directXVersion": "w4CBVxzR", "diskSpace": "SqjCJ3et", "graphics": "4Vdm8pKA", "label": "swsCQyaB", "osVersion": "YBLrlyzN", "processor": "2s18FM2V", "ram": "mrkXbH9x", "soundCard": "e5turTTt"}, {"additionals": "LWkGDqhv", "directXVersion": "nt7LugVU", "diskSpace": "vknhBl0z", "graphics": "2Pj1Q2f6", "label": "aE8kGVMq", "osVersion": "217blBI3", "processor": "GRAicMsO", "ram": "BFDxrDj6", "soundCard": "4SlvSrvd"}], "FZabQFqT": [{"additionals": "86kHBNGx", "directXVersion": "5sqegA0L", "diskSpace": "E8aZzE7j", "graphics": "PigbhxMh", "label": "PYcn8TON", "osVersion": "yb0Sa5Ww", "processor": "ODTNranW", "ram": "GMyGXRT0", "soundCard": "hnCYa2sc"}, {"additionals": "x0jBr5yl", "directXVersion": "kX3xXmKR", "diskSpace": "o9vYWnis", "graphics": "NFmXML0I", "label": "tv9MNdHC", "osVersion": "fYX13jG1", "processor": "y1YlddC0", "ram": "qRe4PAeA", "soundCard": "Faeq22Zz"}, {"additionals": "xbCmUBLq", "directXVersion": "vk1jY0hu", "diskSpace": "hBdEhAyC", "graphics": "BjzxBlVm", "label": "HBSX4EwK", "osVersion": "IwhOxKpF", "processor": "J532PX72", "ram": "p1AFs5RF", "soundCard": "SVxdMmAm"}]}, "platforms": ["MacOS", "IOS", "Android"], "players": ["Single", "Coop", "MMO"], "primaryGenre": "Action", "publisher": "55bYDp4t", "releaseDate": "1993-03-24T00:00:00Z", "websiteUrl": "MU03kX1x"}' \
    > test.out 2>&1
eval_tap $? 101 'UpdateApp' test.out

#- 102 DisableItem
samples/cli/sample-apps Platform disableItem \
    --itemId '4DJBBXfJ' \
    --namespace $AB_NAMESPACE \
    --storeId 'kyochpfy' \
    > test.out 2>&1
eval_tap $? 102 'DisableItem' test.out

#- 103 GetItemDynamicData
samples/cli/sample-apps Platform getItemDynamicData \
    --itemId '5Y5OfT6k' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 103 'GetItemDynamicData' test.out

#- 104 EnableItem
samples/cli/sample-apps Platform enableItem \
    --itemId '63QkLnz4' \
    --namespace $AB_NAMESPACE \
    --storeId 'sxyzGIRT' \
    > test.out 2>&1
eval_tap $? 104 'EnableItem' test.out

#- 105 FeatureItem
samples/cli/sample-apps Platform featureItem \
    --feature 'FJW08Caf' \
    --itemId 'A3PUw372' \
    --namespace $AB_NAMESPACE \
    --storeId 'o5xisCMK' \
    > test.out 2>&1
eval_tap $? 105 'FeatureItem' test.out

#- 106 DefeatureItem
samples/cli/sample-apps Platform defeatureItem \
    --feature 'sFyxJ4uM' \
    --itemId 'Rty84lep' \
    --namespace $AB_NAMESPACE \
    --storeId 'Kg2CnZ9d' \
    > test.out 2>&1
eval_tap $? 106 'DefeatureItem' test.out

#- 107 GetLocaleItem
samples/cli/sample-apps Platform getLocaleItem \
    --itemId 'cHSZ5hU0' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --language 'Vs4u9iRF' \
    --populateBundle 'true' \
    --region 'lmH1jAES' \
    --storeId 'subY5p0o' \
    > test.out 2>&1
eval_tap $? 107 'GetLocaleItem' test.out

#- 108 UpdateItemPurchaseCondition
samples/cli/sample-apps Platform updateItemPurchaseCondition \
    --itemId 'ncV8Znwp' \
    --namespace $AB_NAMESPACE \
    --storeId 'hBoHFypV' \
    --body '{"purchaseCondition": {"conditionGroups": [{"operator": "or", "predicates": [{"anyOf": 56, "comparison": "isLessThanOrEqual", "name": "NXnkIPmI", "predicateType": "SeasonTierPredicate", "value": "9QSLdc9y", "values": ["iLTNTM0P", "4PqyLegs", "ycbNQhCj"]}, {"anyOf": 88, "comparison": "isGreaterThan", "name": "Q1ilGORc", "predicateType": "EntitlementPredicate", "value": "MB91cQes", "values": ["uWpKOog6", "1E8rhM0Y", "uDoNrEBW"]}, {"anyOf": 33, "comparison": "isNot", "name": "9OPfDrMq", "predicateType": "SeasonPassPredicate", "value": "KBnyRAJf", "values": ["TU9kyFpC", "oNMqv29R", "1dNHkZZp"]}]}, {"operator": "and", "predicates": [{"anyOf": 40, "comparison": "is", "name": "zWOAtkTq", "predicateType": "SeasonPassPredicate", "value": "ZMOiatsd", "values": ["v907Rlq9", "XLVSulMS", "fxFfZRjA"]}, {"anyOf": 34, "comparison": "isGreaterThan", "name": "T397qcsL", "predicateType": "SeasonPassPredicate", "value": "YzohH1kr", "values": ["mBteJSaj", "oYGv4hEq", "aBsxuC78"]}, {"anyOf": 9, "comparison": "isLessThanOrEqual", "name": "n6MECGmc", "predicateType": "SeasonPassPredicate", "value": "VBAoybeh", "values": ["rxozWIhM", "mJUT5DqG", "rnfSYH6O"]}]}, {"operator": "or", "predicates": [{"anyOf": 45, "comparison": "isGreaterThan", "name": "Yjav6gjO", "predicateType": "EntitlementPredicate", "value": "V4pVepE5", "values": ["dKRmR7W0", "JV8lOy0H", "7ECOFVAi"]}, {"anyOf": 21, "comparison": "includes", "name": "QuvCbdiG", "predicateType": "EntitlementPredicate", "value": "aB9H1qmW", "values": ["y7zvJgZp", "CJbVe2XZ", "0tekAeWn"]}, {"anyOf": 69, "comparison": "isLessThan", "name": "YlwCkdf6", "predicateType": "EntitlementPredicate", "value": "OWNmTI5U", "values": ["uaC5WX1s", "Tfd7uCV9", "Mu3rQaCl"]}]}]}}' \
    > test.out 2>&1
eval_tap $? 108 'UpdateItemPurchaseCondition' test.out

#- 109 ReturnItem
samples/cli/sample-apps Platform returnItem \
    --itemId 'FKDoDVFc' \
    --namespace $AB_NAMESPACE \
    --body '{"orderNo": "dlKTWILI"}' \
    > test.out 2>&1
eval_tap $? 109 'ReturnItem' test.out

#- 110 QueryKeyGroups
samples/cli/sample-apps Platform queryKeyGroups \
    --namespace $AB_NAMESPACE \
    --limit '55' \
    --name 'b3y46h0b' \
    --offset '40' \
    --tag 'XtcGqk3V' \
    > test.out 2>&1
eval_tap $? 110 'QueryKeyGroups' test.out

#- 111 CreateKeyGroup
samples/cli/sample-apps Platform createKeyGroup \
    --namespace $AB_NAMESPACE \
    --body '{"description": "fkbwb6kn", "name": "6kW2uZVK", "status": "ACTIVE", "tags": ["3UnemcZc", "HL71yhzy", "4EYMRTOu"]}' \
    > test.out 2>&1
eval_tap $? 111 'CreateKeyGroup' test.out

#- 112 GetKeyGroupByBoothName
samples/cli/sample-apps Platform getKeyGroupByBoothName \
    --namespace $AB_NAMESPACE \
    --boothName 'sdrz8F6v' \
    > test.out 2>&1
eval_tap $? 112 'GetKeyGroupByBoothName' test.out

#- 113 GetKeyGroup
samples/cli/sample-apps Platform getKeyGroup \
    --keyGroupId 'Y22y2kDk' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 113 'GetKeyGroup' test.out

#- 114 UpdateKeyGroup
samples/cli/sample-apps Platform updateKeyGroup \
    --keyGroupId 'X5VXJ7Fq' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "WGtOVPRE", "name": "o3WfZUhC", "status": "INACTIVE", "tags": ["3b8Jaelv", "MKyKdG2n", "GhR99aXA"]}' \
    > test.out 2>&1
eval_tap $? 114 'UpdateKeyGroup' test.out

#- 115 GetKeyGroupDynamic
samples/cli/sample-apps Platform getKeyGroupDynamic \
    --keyGroupId '0TOQKMyw' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 115 'GetKeyGroupDynamic' test.out

#- 116 ListKeys
samples/cli/sample-apps Platform listKeys \
    --keyGroupId 'nJFsU684' \
    --namespace $AB_NAMESPACE \
    --limit '90' \
    --offset '8' \
    --status 'ACQUIRED' \
    > test.out 2>&1
eval_tap $? 116 'ListKeys' test.out

#- 117 UploadKeys
samples/cli/sample-apps Platform uploadKeys \
    --keyGroupId '1kP5jgfe' \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 117 'UploadKeys' test.out

#- 118 QueryOrders
samples/cli/sample-apps Platform queryOrders \
    --namespace $AB_NAMESPACE \
    --endTime '1nuDKBQY' \
    --limit '52' \
    --offset '16' \
    --orderNos '["bTfmpSDQ", "k19jsxc8", "GJGsjgwZ"]' \
    --sortBy 'sYVAjKl7' \
    --startTime 'YB3FRwdI' \
    --status 'CHARGED' \
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
    --orderNo 'mG3vY02E' \
    > test.out 2>&1
eval_tap $? 120 'GetOrder' test.out

#- 121 RefundOrder
samples/cli/sample-apps Platform refundOrder \
    --namespace $AB_NAMESPACE \
    --orderNo '5VlCjmiQ' \
    --body '{"description": "5gT64KGE"}' \
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
    --body '{"dryRun": true, "notifyUrl": "4ec4YzXB", "privateKey": "UJAXucrd"}' \
    > test.out 2>&1
eval_tap $? 123 'UpdatePaymentCallbackConfig' test.out

#- 124 QueryPaymentNotifications
samples/cli/sample-apps Platform queryPaymentNotifications \
    --namespace $AB_NAMESPACE \
    --endDate 's4YsZ7Vz' \
    --externalId 'gYLB20cB' \
    --limit '76' \
    --notificationSource 'WXPAY' \
    --notificationType 'vJSyaVsl' \
    --offset '5' \
    --paymentOrderNo '0uxc5Th7' \
    --startDate 'yM5usNoP' \
    --status 'ERROR' \
    > test.out 2>&1
eval_tap $? 124 'QueryPaymentNotifications' test.out

#- 125 QueryPaymentOrders
samples/cli/sample-apps Platform queryPaymentOrders \
    --namespace $AB_NAMESPACE \
    --channel 'INTERNAL' \
    --extTxId 'tYJtM0Ex' \
    --limit '36' \
    --offset '50' \
    --status 'REFUNDED' \
    > test.out 2>&1
eval_tap $? 125 'QueryPaymentOrders' test.out

#- 126 CreatePaymentOrderByDedicated
samples/cli/sample-apps Platform createPaymentOrderByDedicated \
    --namespace $AB_NAMESPACE \
    --body '{"currencyCode": "fbWGf0ns", "currencyNamespace": "7Lz0FhIX", "customParameters": {"ZmLjoZlF": {}, "qX8GqmgI": {}, "qVDcX0RD": {}}, "description": "2Bckf2UR", "extOrderNo": "UPClPYRQ", "extUserId": "RlHUtcFh", "itemType": "COINS", "language": "Dwi_NUED", "metadata": {"b2uIeaSq": "xbZkj2b1", "L5evuN10": "W2Bhh41A", "5izI6aB0": "bI0qLm68"}, "notifyUrl": "wD6QNpQu", "omitNotification": true, "platform": "m8NbPoQM", "price": 29, "recurringPaymentOrderNo": "n0YjLhvi", "region": "ncZGAAzX", "returnUrl": "ZDbmMeYa", "sandbox": false, "sku": "mPmmhMrr", "subscriptionId": "0eIipf5T", "targetNamespace": "Jr3GP0FZ", "targetUserId": "TgJ0ZaOu", "title": "jNM5BQzH"}' \
    > test.out 2>&1
eval_tap $? 126 'CreatePaymentOrderByDedicated' test.out

#- 127 ListExtOrderNoByExtTxId
samples/cli/sample-apps Platform listExtOrderNoByExtTxId \
    --namespace $AB_NAMESPACE \
    --extTxId 'jETrj5Sc' \
    > test.out 2>&1
eval_tap $? 127 'ListExtOrderNoByExtTxId' test.out

#- 128 GetPaymentOrder
samples/cli/sample-apps Platform getPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'f9DonuFG' \
    > test.out 2>&1
eval_tap $? 128 'GetPaymentOrder' test.out

#- 129 ChargePaymentOrder
samples/cli/sample-apps Platform chargePaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'jskDwVC9' \
    --body '{"extTxId": "CDMF1pl5", "paymentMethod": "8UFv8GrV", "paymentProvider": "ALIPAY"}' \
    > test.out 2>&1
eval_tap $? 129 'ChargePaymentOrder' test.out

#- 130 RefundPaymentOrderByDedicated
samples/cli/sample-apps Platform refundPaymentOrderByDedicated \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'NJ1uw2Fl' \
    --body '{"description": "j0ncQuCg"}' \
    > test.out 2>&1
eval_tap $? 130 'RefundPaymentOrderByDedicated' test.out

#- 131 SimulatePaymentOrderNotification
samples/cli/sample-apps Platform simulatePaymentOrderNotification \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'G3O2BAb7' \
    --body '{"amount": 69, "currencyCode": "BvLkXusd", "notifyType": "REFUND", "paymentProvider": "STRIPE", "salesTax": 63, "vat": 90}' \
    > test.out 2>&1
eval_tap $? 131 'SimulatePaymentOrderNotification' test.out

#- 132 GetPaymentOrderChargeStatus
samples/cli/sample-apps Platform getPaymentOrderChargeStatus \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'o7L8bhDQ' \
    > test.out 2>&1
eval_tap $? 132 'GetPaymentOrderChargeStatus' test.out

#- 133 GetPlatformWalletConfig
samples/cli/sample-apps Platform getPlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'IOS' \
    > test.out 2>&1
eval_tap $? 133 'GetPlatformWalletConfig' test.out

#- 134 UpdatePlatformWalletConfig
samples/cli/sample-apps Platform updatePlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Steam' \
    --body '{"allowedBalanceOrigins": ["Epic", "Twitch", "Xbox"]}' \
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
    --body '{"description": "e1S8Tnfe", "eventTopic": "3gkL7pN5", "maxAwarded": 34, "maxAwardedPerUser": 66, "namespaceExpression": "N2ruXQAB", "rewardCode": "Wsv8Bc7x", "rewardConditions": [{"condition": "d4pH115G", "conditionName": "2yYRrZ19", "eventName": "A8nXMdYm", "rewardItems": [{"duration": 15, "itemId": "zU8u5OZk", "quantity": 45}, {"duration": 34, "itemId": "MarLbuLp", "quantity": 64}, {"duration": 53, "itemId": "mOtppsbt", "quantity": 65}]}, {"condition": "bR44SF9X", "conditionName": "ZN6jBDRa", "eventName": "BHZuNDsU", "rewardItems": [{"duration": 32, "itemId": "7EK4wW0D", "quantity": 49}, {"duration": 79, "itemId": "6r6B1656", "quantity": 37}, {"duration": 23, "itemId": "YD9CFCak", "quantity": 91}]}, {"condition": "ekR9BE9q", "conditionName": "SUmjEWFV", "eventName": "v34TknbL", "rewardItems": [{"duration": 100, "itemId": "a5WOYvk1", "quantity": 91}, {"duration": 66, "itemId": "IsRPbCax", "quantity": 6}, {"duration": 72, "itemId": "XVCMjz1T", "quantity": 99}]}], "userIdExpression": "HVLOyZm8"}' \
    > test.out 2>&1
eval_tap $? 136 'CreateReward' test.out

#- 137 QueryRewards
samples/cli/sample-apps Platform queryRewards \
    --namespace $AB_NAMESPACE \
    --eventTopic 'eVgS8nv5' \
    --limit '3' \
    --offset '37' \
    --sortBy '["rewardCode:asc", "namespace:asc", "rewardCode:desc"]' \
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
    --rewardId 'YJu5YJOa' \
    > test.out 2>&1
eval_tap $? 140 'GetReward' test.out

#- 141 UpdateReward
samples/cli/sample-apps Platform updateReward \
    --namespace $AB_NAMESPACE \
    --rewardId 'zeXlFzwC' \
    --body '{"description": "dm06HB8i", "eventTopic": "SOxnLB2K", "maxAwarded": 12, "maxAwardedPerUser": 18, "namespaceExpression": "3pPxUOnb", "rewardCode": "f6SDRq7C", "rewardConditions": [{"condition": "8DrEHnqs", "conditionName": "QryCPFbc", "eventName": "AgtWIBgq", "rewardItems": [{"duration": 100, "itemId": "2vOcj20F", "quantity": 78}, {"duration": 44, "itemId": "xyimLaCL", "quantity": 70}, {"duration": 69, "itemId": "nCOkXljT", "quantity": 77}]}, {"condition": "SxoxkFoB", "conditionName": "YIEYrvwm", "eventName": "kdOoswGZ", "rewardItems": [{"duration": 97, "itemId": "JdQpinXf", "quantity": 0}, {"duration": 72, "itemId": "JhrNfOih", "quantity": 85}, {"duration": 83, "itemId": "RyXwWZ3c", "quantity": 95}]}, {"condition": "lYZei46u", "conditionName": "XGyP0mPI", "eventName": "khFlXV4S", "rewardItems": [{"duration": 68, "itemId": "lmFjsGcQ", "quantity": 85}, {"duration": 82, "itemId": "aXKtpHsu", "quantity": 62}, {"duration": 3, "itemId": "a8NSWgs5", "quantity": 33}]}], "userIdExpression": "OLmbNcrf"}' \
    > test.out 2>&1
eval_tap $? 141 'UpdateReward' test.out

#- 142 DeleteReward
samples/cli/sample-apps Platform deleteReward \
    --namespace $AB_NAMESPACE \
    --rewardId 'DYlw7Yxx' \
    > test.out 2>&1
eval_tap $? 142 'DeleteReward' test.out

#- 143 CheckEventCondition
samples/cli/sample-apps Platform checkEventCondition \
    --namespace $AB_NAMESPACE \
    --rewardId 'QUSLlrSC' \
    --body '{"payload": {"KuVvSweN": {}, "WI3RSKRA": {}, "gJ3opQ22": {}}}' \
    > test.out 2>&1
eval_tap $? 143 'CheckEventCondition' test.out

#- 144 DeleteRewardConditionRecord
samples/cli/sample-apps Platform deleteRewardConditionRecord \
    --namespace $AB_NAMESPACE \
    --rewardId 'PquV4VYi' \
    --body '{"conditionName": "fxQn6tyZ", "userId": "tciQeZKZ"}' \
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
    --body '{"defaultLanguage": "ERQszdfu", "defaultRegion": "JOibTdm6", "description": "INEm93Q8", "supportedLanguages": ["1lEWhoNq", "h5qjbkls", "TKo4y9yh"], "supportedRegions": ["C5Wgxb0F", "lpgRVc7w", "QyIiKCJq"], "title": "UldT8won"}' \
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
    --storeId '901ptdXN' \
    > test.out 2>&1
eval_tap $? 152 'GetStore' test.out

#- 153 UpdateStore
samples/cli/sample-apps Platform updateStore \
    --namespace $AB_NAMESPACE \
    --storeId 'ZnZ00URm' \
    --body '{"defaultLanguage": "TYu6XpAL", "defaultRegion": "Lrv6jh0M", "description": "z85X3cFH", "supportedLanguages": ["4z7OaXBQ", "FIZJ0UAe", "ROtevP3Z"], "supportedRegions": ["Y8MWQguk", "khekhW3r", "dwhboYsY"], "title": "HtTxcXSQ"}' \
    > test.out 2>&1
eval_tap $? 153 'UpdateStore' test.out

#- 154 DeleteStore
samples/cli/sample-apps Platform deleteStore \
    --namespace $AB_NAMESPACE \
    --storeId '1jY7nsO8' \
    > test.out 2>&1
eval_tap $? 154 'DeleteStore' test.out

#- 155 QueryChanges
samples/cli/sample-apps Platform queryChanges \
    --namespace $AB_NAMESPACE \
    --storeId 'sJNLhgqj' \
    --action 'UPDATE' \
    --itemSku 'sQyyMF3W' \
    --itemType 'SEASON' \
    --limit '48' \
    --offset '73' \
    --selected 'true' \
    --sortBy '["updatedAt", "createdAt:asc", "createdAt:desc"]' \
    --status 'PUBLISHED' \
    --type 'CATEGORY' \
    --updatedAtEnd 'hYzpTZN2' \
    --updatedAtStart 'VWVjYLz0' \
    > test.out 2>&1
eval_tap $? 155 'QueryChanges' test.out

#- 156 PublishAll
samples/cli/sample-apps Platform publishAll \
    --namespace $AB_NAMESPACE \
    --storeId 'F5buYQrQ' \
    > test.out 2>&1
eval_tap $? 156 'PublishAll' test.out

#- 157 PublishSelected
samples/cli/sample-apps Platform publishSelected \
    --namespace $AB_NAMESPACE \
    --storeId '3kKj6JSV' \
    > test.out 2>&1
eval_tap $? 157 'PublishSelected' test.out

#- 158 SelectAllRecords
samples/cli/sample-apps Platform selectAllRecords \
    --namespace $AB_NAMESPACE \
    --storeId 'kRJO9aGa' \
    > test.out 2>&1
eval_tap $? 158 'SelectAllRecords' test.out

#- 159 GetStatistic
samples/cli/sample-apps Platform getStatistic \
    --namespace $AB_NAMESPACE \
    --storeId 'sj8K62qj' \
    --action 'DELETE' \
    --itemSku 'enhF5pXL' \
    --itemType 'COINS' \
    --type 'CATEGORY' \
    --updatedAtEnd 'NKwQfeuf' \
    --updatedAtStart 'q6LLozNe' \
    > test.out 2>&1
eval_tap $? 159 'GetStatistic' test.out

#- 160 UnselectAllRecords
samples/cli/sample-apps Platform unselectAllRecords \
    --namespace $AB_NAMESPACE \
    --storeId 'SEbTGwUX' \
    > test.out 2>&1
eval_tap $? 160 'UnselectAllRecords' test.out

#- 161 SelectRecord
samples/cli/sample-apps Platform selectRecord \
    --changeId 'v3aO2OHr' \
    --namespace $AB_NAMESPACE \
    --storeId 'sF4i4ibZ' \
    > test.out 2>&1
eval_tap $? 161 'SelectRecord' test.out

#- 162 UnselectRecord
samples/cli/sample-apps Platform unselectRecord \
    --changeId 'gLUeRH2G' \
    --namespace $AB_NAMESPACE \
    --storeId 'Y6Hu2wwG' \
    > test.out 2>&1
eval_tap $? 162 'UnselectRecord' test.out

#- 163 CloneStore
samples/cli/sample-apps Platform cloneStore \
    --namespace $AB_NAMESPACE \
    --storeId '8OLGHeKo' \
    --targetStoreId 'ZxWMjeBc' \
    > test.out 2>&1
eval_tap $? 163 'CloneStore' test.out

#- 164 ExportStore
eval_tap 0 164 'ExportStore # SKIP deprecated' test.out

#- 165 QuerySubscriptions
samples/cli/sample-apps Platform querySubscriptions \
    --namespace $AB_NAMESPACE \
    --chargeStatus 'NEVER' \
    --itemId 'oBxPkG8f' \
    --limit '24' \
    --offset '33' \
    --sku 'XhcsThdL' \
    --status 'INIT' \
    --subscribedBy 'PLATFORM' \
    --userId '849JIvBl' \
    > test.out 2>&1
eval_tap $? 165 'QuerySubscriptions' test.out

#- 166 RecurringChargeSubscription
samples/cli/sample-apps Platform recurringChargeSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'POLAk8Ca' \
    > test.out 2>&1
eval_tap $? 166 'RecurringChargeSubscription' test.out

#- 167 GetTicketDynamic
samples/cli/sample-apps Platform getTicketDynamic \
    --boothName '0z1Yk969' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 167 'GetTicketDynamic' test.out

#- 168 DecreaseTicketSale
samples/cli/sample-apps Platform decreaseTicketSale \
    --boothName 'Mi1JSBr4' \
    --namespace $AB_NAMESPACE \
    --body '{"orderNo": "nNu94XUm"}' \
    > test.out 2>&1
eval_tap $? 168 'DecreaseTicketSale' test.out

#- 169 GetTicketBoothID
samples/cli/sample-apps Platform getTicketBoothID \
    --boothName 'ccbYuRUt' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 169 'GetTicketBoothID' test.out

#- 170 IncreaseTicketSale
samples/cli/sample-apps Platform increaseTicketSale \
    --boothName 'Hj9YElVm' \
    --namespace $AB_NAMESPACE \
    --body '{"count": 38, "orderNo": "K0Bh4cg3"}' \
    > test.out 2>&1
eval_tap $? 170 'IncreaseTicketSale' test.out

#- 171 UnlockSteamUserAchievement
samples/cli/sample-apps Platform unlockSteamUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'Z483BUyU' \
    --body '{"achievements": [{"id": "ZGv4vmpY", "value": 30}, {"id": "Ulv3Vi9f", "value": 82}, {"id": "iQ4Fo5Tk", "value": 34}], "steamUserId": "bLKtlqZS"}' \
    > test.out 2>&1
eval_tap $? 171 'UnlockSteamUserAchievement' test.out

#- 172 GetXblUserAchievements
samples/cli/sample-apps Platform getXblUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId 'Pfnk9G8s' \
    --xboxUserId 'NhNo7xK7' \
    > test.out 2>&1
eval_tap $? 172 'GetXblUserAchievements' test.out

#- 173 UpdateXblUserAchievement
samples/cli/sample-apps Platform updateXblUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'Dcu9h9eO' \
    --body '{"achievements": [{"id": "VFCrfvxZ", "percentComplete": 6}, {"id": "LqZia1r2", "percentComplete": 1}, {"id": "qcrdQZla", "percentComplete": 29}], "serviceConfigId": "N0VoVMgv", "titleId": "SOgeP4rO", "xboxUserId": "L4Mi7qyy"}' \
    > test.out 2>&1
eval_tap $? 173 'UpdateXblUserAchievement' test.out

#- 174 AnonymizeCampaign
samples/cli/sample-apps Platform anonymizeCampaign \
    --namespace $AB_NAMESPACE \
    --userId 'VrCCOJip' \
    > test.out 2>&1
eval_tap $? 174 'AnonymizeCampaign' test.out

#- 175 AnonymizeEntitlement
samples/cli/sample-apps Platform anonymizeEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'zawOzqR4' \
    > test.out 2>&1
eval_tap $? 175 'AnonymizeEntitlement' test.out

#- 176 AnonymizeFulfillment
samples/cli/sample-apps Platform anonymizeFulfillment \
    --namespace $AB_NAMESPACE \
    --userId 'o2lcG1W5' \
    > test.out 2>&1
eval_tap $? 176 'AnonymizeFulfillment' test.out

#- 177 AnonymizeIntegration
samples/cli/sample-apps Platform anonymizeIntegration \
    --namespace $AB_NAMESPACE \
    --userId 'FKwe2Ac6' \
    > test.out 2>&1
eval_tap $? 177 'AnonymizeIntegration' test.out

#- 178 AnonymizeOrder
samples/cli/sample-apps Platform anonymizeOrder \
    --namespace $AB_NAMESPACE \
    --userId 'RbHn5eAv' \
    > test.out 2>&1
eval_tap $? 178 'AnonymizeOrder' test.out

#- 179 AnonymizePayment
samples/cli/sample-apps Platform anonymizePayment \
    --namespace $AB_NAMESPACE \
    --userId 'Qi7lXCZe' \
    > test.out 2>&1
eval_tap $? 179 'AnonymizePayment' test.out

#- 180 AnonymizeSubscription
samples/cli/sample-apps Platform anonymizeSubscription \
    --namespace $AB_NAMESPACE \
    --userId 's3XFKsH0' \
    > test.out 2>&1
eval_tap $? 180 'AnonymizeSubscription' test.out

#- 181 AnonymizeWallet
samples/cli/sample-apps Platform anonymizeWallet \
    --namespace $AB_NAMESPACE \
    --userId 'WhsGIZ3M' \
    > test.out 2>&1
eval_tap $? 181 'AnonymizeWallet' test.out

#- 182 QueryUserEntitlements
samples/cli/sample-apps Platform queryUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'eIStbGej' \
    --activeOnly 'true' \
    --appType 'GAME' \
    --entitlementClazz 'CODE' \
    --entitlementName 'gwtyTOPV' \
    --features '["gyZoaqdp", "sGQIyE2t", "5vnVPu77"]' \
    --itemId '["0zkQOKzp", "01XhKsQD", "FLVBPl0T"]' \
    --limit '1' \
    --offset '66' \
    > test.out 2>&1
eval_tap $? 182 'QueryUserEntitlements' test.out

#- 183 GrantUserEntitlement
samples/cli/sample-apps Platform grantUserEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'gyVfJHuD' \
    --body '[{"endDate": "1979-04-26T00:00:00Z", "grantedCode": "Oeb8skPY", "itemId": "TgiQG2RV", "itemNamespace": "KfuasZjw", "language": "QU_batP-Oa", "quantity": 51, "region": "SRaRTkFT", "source": "REFERRAL_BONUS", "startDate": "1977-03-21T00:00:00Z", "storeId": "KCprB9hA"}, {"endDate": "1997-08-04T00:00:00Z", "grantedCode": "4N6PIVBP", "itemId": "1Xh2p9cc", "itemNamespace": "8ln6bFxB", "language": "dbTj-644", "quantity": 94, "region": "2OZPiZid", "source": "OTHER", "startDate": "1989-05-21T00:00:00Z", "storeId": "kp7ckqZc"}, {"endDate": "1979-06-04T00:00:00Z", "grantedCode": "9IK6mHMu", "itemId": "E43RHXWs", "itemNamespace": "5YkZ3Tli", "language": "rnGg_847", "quantity": 17, "region": "6BG0Yrhg", "source": "REFERRAL_BONUS", "startDate": "1982-11-19T00:00:00Z", "storeId": "hZBPgpy8"}]' \
    > test.out 2>&1
eval_tap $? 183 'GrantUserEntitlement' test.out

#- 184 GetUserAppEntitlementByAppId
samples/cli/sample-apps Platform getUserAppEntitlementByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'NUuzqWCQ' \
    --activeOnly 'true' \
    --appId 'EqguhVq6' \
    > test.out 2>&1
eval_tap $? 184 'GetUserAppEntitlementByAppId' test.out

#- 185 QueryUserEntitlementsByAppType
samples/cli/sample-apps Platform queryUserEntitlementsByAppType \
    --namespace $AB_NAMESPACE \
    --userId 'ig05zwHw' \
    --activeOnly 'false' \
    --limit '6' \
    --offset '33' \
    --appType 'SOFTWARE' \
    > test.out 2>&1
eval_tap $? 185 'QueryUserEntitlementsByAppType' test.out

#- 186 GetUserEntitlementByItemId
samples/cli/sample-apps Platform getUserEntitlementByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'UbFShnPu' \
    --activeOnly 'true' \
    --entitlementClazz 'CODE' \
    --itemId 'JQXp1Bwo' \
    > test.out 2>&1
eval_tap $? 186 'GetUserEntitlementByItemId' test.out

#- 187 GetUserEntitlementBySku
samples/cli/sample-apps Platform getUserEntitlementBySku \
    --namespace $AB_NAMESPACE \
    --userId 'QkGrgmsY' \
    --activeOnly 'true' \
    --entitlementClazz 'MEDIA' \
    --sku 'lYp5upsw' \
    > test.out 2>&1
eval_tap $? 187 'GetUserEntitlementBySku' test.out

#- 188 ExistsAnyUserActiveEntitlement
samples/cli/sample-apps Platform existsAnyUserActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --userId '9DMDJS62' \
    --appIds '["6xPWrvRw", "neEfa1c7", "km5H1EU7"]' \
    --itemIds '["Ke51xgrO", "znMtTQrC", "xkj5u2CN"]' \
    --skus '["M4D5qSzW", "dlNyVxzU", "SLc2mCRK"]' \
    > test.out 2>&1
eval_tap $? 188 'ExistsAnyUserActiveEntitlement' test.out

#- 189 ExistsAnyUserActiveEntitlementByItemIds
samples/cli/sample-apps Platform existsAnyUserActiveEntitlementByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'ZMiVl4zH' \
    --itemIds '["F17XdRIa", "V6xmQe1G", "7IyBqTjP"]' \
    > test.out 2>&1
eval_tap $? 189 'ExistsAnyUserActiveEntitlementByItemIds' test.out

#- 190 GetUserAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform getUserAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'LV6L17Iw' \
    --appId 'DnHGRaWI' \
    > test.out 2>&1
eval_tap $? 190 'GetUserAppEntitlementOwnershipByAppId' test.out

#- 191 GetUserEntitlementOwnershipByItemId
samples/cli/sample-apps Platform getUserEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'raYeIUFS' \
    --entitlementClazz 'OPTIONBOX' \
    --itemId 'dWbDAev4' \
    > test.out 2>&1
eval_tap $? 191 'GetUserEntitlementOwnershipByItemId' test.out

#- 192 GetUserEntitlementOwnershipByItemIds
samples/cli/sample-apps Platform getUserEntitlementOwnershipByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'c41YK5Uu' \
    --ids '["l4d9X3VP", "IWSRHmHi", "cxkoJfBo"]' \
    > test.out 2>&1
eval_tap $? 192 'GetUserEntitlementOwnershipByItemIds' test.out

#- 193 GetUserEntitlementOwnershipBySku
samples/cli/sample-apps Platform getUserEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --userId 'ZIuRIvK7' \
    --entitlementClazz 'ENTITLEMENT' \
    --sku 'Ww4tXPRy' \
    > test.out 2>&1
eval_tap $? 193 'GetUserEntitlementOwnershipBySku' test.out

#- 194 RevokeUserEntitlements
samples/cli/sample-apps Platform revokeUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'Z8ysxxOA' \
    --entitlementIds 'aeRnNgPF' \
    > test.out 2>&1
eval_tap $? 194 'RevokeUserEntitlements' test.out

#- 195 GetUserEntitlement
samples/cli/sample-apps Platform getUserEntitlement \
    --entitlementId 'F9peMsnh' \
    --namespace $AB_NAMESPACE \
    --userId 'oCMJFREM' \
    > test.out 2>&1
eval_tap $? 195 'GetUserEntitlement' test.out

#- 196 UpdateUserEntitlement
samples/cli/sample-apps Platform updateUserEntitlement \
    --entitlementId 'qprdh0Fx' \
    --namespace $AB_NAMESPACE \
    --userId 'mG4lJjnu' \
    --body '{"endDate": "1996-06-20T00:00:00Z", "nullFieldList": ["moFweCSX", "W8AljNBG", "F1O6QwR3"], "startDate": "1979-06-12T00:00:00Z", "status": "REVOKED", "useCount": 65}' \
    > test.out 2>&1
eval_tap $? 196 'UpdateUserEntitlement' test.out

#- 197 ConsumeUserEntitlement
samples/cli/sample-apps Platform consumeUserEntitlement \
    --entitlementId 'f1LyXL12' \
    --namespace $AB_NAMESPACE \
    --userId '2cln3THt' \
    --body '{"options": ["VoMEFu9t", "B6SAiBy4", "n8LpV3ly"], "requestId": "TjF4rT5a", "useCount": 53}' \
    > test.out 2>&1
eval_tap $? 197 'ConsumeUserEntitlement' test.out

#- 198 DisableUserEntitlement
samples/cli/sample-apps Platform disableUserEntitlement \
    --entitlementId 'Y2sw5i5t' \
    --namespace $AB_NAMESPACE \
    --userId 'j7HBdQIq' \
    > test.out 2>&1
eval_tap $? 198 'DisableUserEntitlement' test.out

#- 199 EnableUserEntitlement
samples/cli/sample-apps Platform enableUserEntitlement \
    --entitlementId 'iKwXeiwC' \
    --namespace $AB_NAMESPACE \
    --userId '7z509ljj' \
    > test.out 2>&1
eval_tap $? 199 'EnableUserEntitlement' test.out

#- 200 GetUserEntitlementHistories
samples/cli/sample-apps Platform getUserEntitlementHistories \
    --entitlementId 'esgUjzgA' \
    --namespace $AB_NAMESPACE \
    --userId 'I6CMrP42' \
    > test.out 2>&1
eval_tap $? 200 'GetUserEntitlementHistories' test.out

#- 201 RevokeUserEntitlement
samples/cli/sample-apps Platform revokeUserEntitlement \
    --entitlementId 'ZXdCzABY' \
    --namespace $AB_NAMESPACE \
    --userId 'aMtRxBR4' \
    > test.out 2>&1
eval_tap $? 201 'RevokeUserEntitlement' test.out

#- 202 FulfillItem
samples/cli/sample-apps Platform fulfillItem \
    --namespace $AB_NAMESPACE \
    --userId 'iiXq39PO' \
    --body '{"duration": 55, "endDate": "1976-03-03T00:00:00Z", "itemId": "xSVsuB20", "itemSku": "LLENUAOh", "language": "TcEfwpLF", "order": {"currency": {"currencyCode": "sH8sMIWh", "currencySymbol": "SMWxCbYh", "currencyType": "REAL", "decimals": 60, "namespace": "21VPmA1K"}, "ext": {"8bEDv1lk": {}, "sgvqs4fw": {}, "6t6lIBwn": {}}, "free": true}, "orderNo": "FgDroZNw", "origin": "GooglePlay", "quantity": 22, "region": "sXn7vibb", "source": "REFERRAL_BONUS", "startDate": "1983-06-19T00:00:00Z", "storeId": "1CdGmiVN"}' \
    > test.out 2>&1
eval_tap $? 202 'FulfillItem' test.out

#- 203 RedeemCode
samples/cli/sample-apps Platform redeemCode \
    --namespace $AB_NAMESPACE \
    --userId 'QAAZqFBn' \
    --body '{"code": "kWfPfA4U", "language": "Nxne", "region": "EknRsOTv"}' \
    > test.out 2>&1
eval_tap $? 203 'RedeemCode' test.out

#- 204 FulfillRewards
samples/cli/sample-apps Platform fulfillRewards \
    --namespace $AB_NAMESPACE \
    --userId 'ZyAp8DCi' \
    --body '{"origin": "IOS", "rewards": [{"currency": {"currencyCode": "gMgpIfnc", "namespace": "pMWIEdz9"}, "item": {"itemId": "HoEQplaw", "itemSku": "2jgoQhIl", "itemType": "klZIgP5f"}, "quantity": 63, "type": "ITEM"}, {"currency": {"currencyCode": "0XZN98y0", "namespace": "mvVbHgfo"}, "item": {"itemId": "6oKEeNfe", "itemSku": "LISaWJKB", "itemType": "OsMAYoYg"}, "quantity": 34, "type": "CURRENCY"}, {"currency": {"currencyCode": "GRMQVid3", "namespace": "LSt9R3dW"}, "item": {"itemId": "YS9NlyMP", "itemSku": "tLBHeOkl", "itemType": "AAm8NNXz"}, "quantity": 80, "type": "ITEM"}], "source": "ACHIEVEMENT"}' \
    > test.out 2>&1
eval_tap $? 204 'FulfillRewards' test.out

#- 205 QueryUserIAPOrders
samples/cli/sample-apps Platform queryUserIAPOrders \
    --namespace $AB_NAMESPACE \
    --userId 'C11SGhEL' \
    --endTime '7kSjjrQu' \
    --limit '23' \
    --offset '28' \
    --productId 't9kzPq8c' \
    --startTime '2Z9Cg1H8' \
    --status 'VERIFIED' \
    --type 'TWITCH' \
    > test.out 2>&1
eval_tap $? 205 'QueryUserIAPOrders' test.out

#- 206 QueryAllUserIAPOrders
samples/cli/sample-apps Platform queryAllUserIAPOrders \
    --namespace $AB_NAMESPACE \
    --userId 'QSpiKOaS' \
    > test.out 2>&1
eval_tap $? 206 'QueryAllUserIAPOrders' test.out

#- 207 QueryUserIAPConsumeHistory
samples/cli/sample-apps Platform queryUserIAPConsumeHistory \
    --namespace $AB_NAMESPACE \
    --userId '7weKklJy' \
    --endTime 'LJRWTWLd' \
    --limit '47' \
    --offset '15' \
    --startTime 'jH37t55T' \
    --status 'SUCCESS' \
    --type 'STADIA' \
    > test.out 2>&1
eval_tap $? 207 'QueryUserIAPConsumeHistory' test.out

#- 208 MockFulfillIAPItem
samples/cli/sample-apps Platform mockFulfillIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'WQSouz72' \
    --body '{"itemIdentityType": "ITEM_ID", "language": "dEMp", "productId": "ohx90y5S", "region": "X6VnOcmL", "type": "EPICGAMES"}' \
    > test.out 2>&1
eval_tap $? 208 'MockFulfillIAPItem' test.out

#- 209 QueryUserOrders
samples/cli/sample-apps Platform queryUserOrders \
    --namespace $AB_NAMESPACE \
    --userId 'avoVWS1b' \
    --itemId 'r6VQ2ugF' \
    --limit '37' \
    --offset '2' \
    --status 'INIT' \
    > test.out 2>&1
eval_tap $? 209 'QueryUserOrders' test.out

#- 210 AdminCreateUserOrder
samples/cli/sample-apps Platform adminCreateUserOrder \
    --namespace $AB_NAMESPACE \
    --userId 'HyBTTwjC' \
    --body '{"currencyCode": "vaf5jd0E", "currencyNamespace": "WQdPHhM5", "discountedPrice": 1, "ext": {"3DVTAwVC": {}, "fthOCmLl": {}, "8XTv5jPs": {}}, "itemId": "11dCsVgw", "language": "rTSpiGZy", "options": {"skipPriceValidation": false}, "platform": "Playstation", "price": 90, "quantity": 77, "region": "Gw957r54", "returnUrl": "3umV3k9n", "sandbox": false}' \
    > test.out 2>&1
eval_tap $? 210 'AdminCreateUserOrder' test.out

#- 211 CountOfPurchasedItem
samples/cli/sample-apps Platform countOfPurchasedItem \
    --namespace $AB_NAMESPACE \
    --userId 'naGVQyTq' \
    --itemId 'XS1cX8Gd' \
    > test.out 2>&1
eval_tap $? 211 'CountOfPurchasedItem' test.out

#- 212 GetUserOrder
samples/cli/sample-apps Platform getUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'eLFFyhsv' \
    --userId 'TPRPjH3M' \
    > test.out 2>&1
eval_tap $? 212 'GetUserOrder' test.out

#- 213 UpdateUserOrderStatus
samples/cli/sample-apps Platform updateUserOrderStatus \
    --namespace $AB_NAMESPACE \
    --orderNo '8r9Vt0hn' \
    --userId '4O5Dp1l7' \
    --body '{"status": "INIT", "statusReason": "BsBVznoh"}' \
    > test.out 2>&1
eval_tap $? 213 'UpdateUserOrderStatus' test.out

#- 214 FulfillUserOrder
samples/cli/sample-apps Platform fulfillUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'JD2YdTlP' \
    --userId 'swZaVMFZ' \
    > test.out 2>&1
eval_tap $? 214 'FulfillUserOrder' test.out

#- 215 GetUserOrderGrant
samples/cli/sample-apps Platform getUserOrderGrant \
    --namespace $AB_NAMESPACE \
    --orderNo 'SwQtQjZq' \
    --userId 'BEDthBd8' \
    > test.out 2>&1
eval_tap $? 215 'GetUserOrderGrant' test.out

#- 216 GetUserOrderHistories
samples/cli/sample-apps Platform getUserOrderHistories \
    --namespace $AB_NAMESPACE \
    --orderNo 'sBBdNukB' \
    --userId 'v2O9sXqY' \
    > test.out 2>&1
eval_tap $? 216 'GetUserOrderHistories' test.out

#- 217 ProcessUserOrderNotification
samples/cli/sample-apps Platform processUserOrderNotification \
    --namespace $AB_NAMESPACE \
    --orderNo 'ojNV5flR' \
    --userId 'x7iAU6F2' \
    --body '{"additionalData": {"cardSummary": "8C1yw7Xy"}, "authorisedTime": "1984-06-23T00:00:00Z", "chargebackReversedTime": "1990-10-10T00:00:00Z", "chargebackTime": "1982-05-06T00:00:00Z", "chargedTime": "1997-06-01T00:00:00Z", "createdTime": "1971-06-09T00:00:00Z", "currency": {"currencyCode": "dKqXsxRp", "currencySymbol": "HH0R2nNN", "currencyType": "REAL", "decimals": 5, "namespace": "pc8mscq5"}, "customParameters": {"IMtsgxAq": {}, "6omB5dtB": {}, "0LGVASB8": {}}, "extOrderNo": "PEYqAPtY", "extTxId": "iaKr7MSK", "extUserId": "jVgcP333", "issuedAt": "1976-05-08T00:00:00Z", "metadata": {"6rbhfKpr": "69JIHxv8", "apyiWj1x": "SVAG00ip", "SXd8AzHp": "9ahF372D"}, "namespace": "YJAhVXoS", "nonceStr": "Wb4Vn0tC", "paymentMethod": "tVo9gaGr", "paymentMethodFee": 51, "paymentOrderNo": "Jx3bsgcx", "paymentProvider": "WXPAY", "paymentProviderFee": 58, "paymentStationUrl": "vhMu2sxa", "price": 74, "refundedTime": "1981-10-01T00:00:00Z", "salesTax": 30, "sandbox": false, "sku": "GvbLFc8E", "status": "REFUNDED", "statusReason": "EhB7wMxt", "subscriptionId": "UT87Laqd", "subtotalPrice": 63, "targetNamespace": "C7XIs8ST", "targetUserId": "tI87BXEi", "tax": 60, "totalPrice": 73, "totalTax": 51, "txEndTime": "1998-01-22T00:00:00Z", "type": "8ExVgzJJ", "userId": "Doce2chU", "vat": 10}' \
    > test.out 2>&1
eval_tap $? 217 'ProcessUserOrderNotification' test.out

#- 218 DownloadUserOrderReceipt
samples/cli/sample-apps Platform downloadUserOrderReceipt \
    --namespace $AB_NAMESPACE \
    --orderNo 'Z1tDb5di' \
    --userId 'aXePFs69' \
    > test.out 2>&1
eval_tap $? 218 'DownloadUserOrderReceipt' test.out

#- 219 CreateUserPaymentOrder
samples/cli/sample-apps Platform createUserPaymentOrder \
    --namespace $AB_NAMESPACE \
    --userId 'aQ1aQBit' \
    --body '{"currencyCode": "uEfslyZt", "currencyNamespace": "JBv1dpUM", "customParameters": {"qp5XvWVR": {}, "1OAIcLa6": {}, "PNYudHKA": {}}, "description": "QP5gFn6K", "extOrderNo": "PZZqFCUz", "extUserId": "imIZGxTc", "itemType": "COINS", "language": "jpnN_543", "metadata": {"TjqA8u18": "k4KuXW2Z", "KhnKpaT2": "nTCcILjb", "8SNBNRD3": "qfYQFae1"}, "notifyUrl": "TzdVqPMr", "omitNotification": true, "platform": "srybQSYO", "price": 86, "recurringPaymentOrderNo": "621Vai3i", "region": "YoOFrRiF", "returnUrl": "FTzVVswh", "sandbox": false, "sku": "orDzsrgl", "subscriptionId": "0eZPHzJn", "title": "deUow64u"}' \
    > test.out 2>&1
eval_tap $? 219 'CreateUserPaymentOrder' test.out

#- 220 RefundUserPaymentOrder
samples/cli/sample-apps Platform refundUserPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'VLC6rOdK' \
    --userId 'ZBrgFJj8' \
    --body '{"description": "YJNTVneS"}' \
    > test.out 2>&1
eval_tap $? 220 'RefundUserPaymentOrder' test.out

#- 221 ApplyUserRedemption
samples/cli/sample-apps Platform applyUserRedemption \
    --namespace $AB_NAMESPACE \
    --userId 'gcph8O7P' \
    --body '{"code": "OIizhtco", "orderNo": "KcMtuyDB"}' \
    > test.out 2>&1
eval_tap $? 221 'ApplyUserRedemption' test.out

#- 222 QueryUserSubscriptions
samples/cli/sample-apps Platform queryUserSubscriptions \
    --namespace $AB_NAMESPACE \
    --userId 'oqSE8j7d' \
    --chargeStatus 'RECURRING_CHARGING' \
    --itemId 'B4SvD6Sd' \
    --limit '16' \
    --offset '15' \
    --sku 'y2HoNbVB' \
    --status 'EXPIRED' \
    --subscribedBy 'PLATFORM' \
    > test.out 2>&1
eval_tap $? 222 'QueryUserSubscriptions' test.out

#- 223 GetUserSubscriptionActivities
samples/cli/sample-apps Platform getUserSubscriptionActivities \
    --namespace $AB_NAMESPACE \
    --userId 'Aaoqw8X3' \
    --excludeSystem 'true' \
    --limit '85' \
    --offset '77' \
    --subscriptionId 'WqRUT2a5' \
    > test.out 2>&1
eval_tap $? 223 'GetUserSubscriptionActivities' test.out

#- 224 PlatformSubscribeSubscription
samples/cli/sample-apps Platform platformSubscribeSubscription \
    --namespace $AB_NAMESPACE \
    --userId 'RBcuX9UC' \
    --body '{"grantDays": 21, "itemId": "Ei9aGmF8", "language": "jrlIojZP", "reason": "nPxSHQAq", "region": "m9Zh7qG6", "source": "2PpZiiC5"}' \
    > test.out 2>&1
eval_tap $? 224 'PlatformSubscribeSubscription' test.out

#- 225 CheckUserSubscriptionSubscribableByItemId
samples/cli/sample-apps Platform checkUserSubscriptionSubscribableByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'wHfDxkR4' \
    --itemId 'KhXxciI2' \
    > test.out 2>&1
eval_tap $? 225 'CheckUserSubscriptionSubscribableByItemId' test.out

#- 226 GetUserSubscription
samples/cli/sample-apps Platform getUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'kXybLRA3' \
    --userId 'iQtEXA1l' \
    > test.out 2>&1
eval_tap $? 226 'GetUserSubscription' test.out

#- 227 DeleteUserSubscription
samples/cli/sample-apps Platform deleteUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 's9pjY219' \
    --userId 'EFR8OAWV' \
    > test.out 2>&1
eval_tap $? 227 'DeleteUserSubscription' test.out

#- 228 CancelSubscription
samples/cli/sample-apps Platform cancelSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'ydwNB5rb' \
    --userId 'G6OxQNeq' \
    --force 'false' \
    --body '{"immediate": false, "reason": "pKc38VKl"}' \
    > test.out 2>&1
eval_tap $? 228 'CancelSubscription' test.out

#- 229 GrantDaysToSubscription
samples/cli/sample-apps Platform grantDaysToSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'xg3tbWpi' \
    --userId 'bIpegPby' \
    --body '{"grantDays": 51, "reason": "WWJCy7i7"}' \
    > test.out 2>&1
eval_tap $? 229 'GrantDaysToSubscription' test.out

#- 230 GetUserSubscriptionBillingHistories
samples/cli/sample-apps Platform getUserSubscriptionBillingHistories \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'tzu5QXoa' \
    --userId 'WoBpkT4G' \
    --excludeFree 'false' \
    --limit '99' \
    --offset '99' \
    > test.out 2>&1
eval_tap $? 230 'GetUserSubscriptionBillingHistories' test.out

#- 231 ProcessUserSubscriptionNotification
samples/cli/sample-apps Platform processUserSubscriptionNotification \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'ckEYVOeA' \
    --userId '6WZg9o8e' \
    --body '{"additionalData": {"cardSummary": "e4OYlEQJ"}, "authorisedTime": "1983-02-26T00:00:00Z", "chargebackReversedTime": "1975-06-16T00:00:00Z", "chargebackTime": "1971-03-06T00:00:00Z", "chargedTime": "1994-02-10T00:00:00Z", "createdTime": "1994-02-01T00:00:00Z", "currency": {"currencyCode": "C5KX9N6D", "currencySymbol": "DouSwz4D", "currencyType": "VIRTUAL", "decimals": 78, "namespace": "YKZulHRc"}, "customParameters": {"ipIaQRPg": {}, "GdKOf3LG": {}, "YUudvm0a": {}}, "extOrderNo": "REXMSTGJ", "extTxId": "oiBZbDcU", "extUserId": "0uNfC3GR", "issuedAt": "1979-11-09T00:00:00Z", "metadata": {"krRYtKp4": "eE8cJfhB", "Ezun4Hkk": "jA9dXWah", "8cc1uQny": "WiwAccVJ"}, "namespace": "oTfgsr1H", "nonceStr": "Y1ZSKOmk", "paymentMethod": "Tfw9x54w", "paymentMethodFee": 64, "paymentOrderNo": "XIPIbKgo", "paymentProvider": "ALIPAY", "paymentProviderFee": 83, "paymentStationUrl": "s3GHxYiU", "price": 74, "refundedTime": "1981-09-16T00:00:00Z", "salesTax": 92, "sandbox": false, "sku": "xtHoaDDJ", "status": "REFUNDED", "statusReason": "g4heBrBC", "subscriptionId": "mY0uci5j", "subtotalPrice": 10, "targetNamespace": "ONEjWTLL", "targetUserId": "lKRbKDqu", "tax": 99, "totalPrice": 4, "totalTax": 73, "txEndTime": "1985-04-11T00:00:00Z", "type": "wcdraMcH", "userId": "76BsmYx3", "vat": 28}' \
    > test.out 2>&1
eval_tap $? 231 'ProcessUserSubscriptionNotification' test.out

#- 232 AcquireUserTicket
samples/cli/sample-apps Platform acquireUserTicket \
    --boothName 'DjV9luzf' \
    --namespace $AB_NAMESPACE \
    --userId '8cZS9K5C' \
    --body '{"count": 29, "orderNo": "YrgTiiPK"}' \
    > test.out 2>&1
eval_tap $? 232 'AcquireUserTicket' test.out

#- 233 QueryUserCurrencyWallets
samples/cli/sample-apps Platform queryUserCurrencyWallets \
    --namespace $AB_NAMESPACE \
    --userId 'Q4JkDnph' \
    > test.out 2>&1
eval_tap $? 233 'QueryUserCurrencyWallets' test.out

#- 234 ListUserCurrencyTransactions
samples/cli/sample-apps Platform listUserCurrencyTransactions \
    --currencyCode 'vHvTNrEW' \
    --namespace $AB_NAMESPACE \
    --userId 'MhBO4oy9' \
    --limit '28' \
    --offset '10' \
    > test.out 2>&1
eval_tap $? 234 'ListUserCurrencyTransactions' test.out

#- 235 CheckWallet
eval_tap 0 235 'CheckWallet # SKIP deprecated' test.out

#- 236 CreditUserWallet
samples/cli/sample-apps Platform creditUserWallet \
    --currencyCode 'XgHn3ZH0' \
    --namespace $AB_NAMESPACE \
    --userId 'xdckcPR2' \
    --body '{"amount": 77, "expireAt": "1982-05-21T00:00:00Z", "origin": "Playstation", "reason": "n2P4nxrt", "source": "IAP"}' \
    > test.out 2>&1
eval_tap $? 236 'CreditUserWallet' test.out

#- 237 PayWithUserWallet
samples/cli/sample-apps Platform payWithUserWallet \
    --currencyCode 'tyI9zQjI' \
    --namespace $AB_NAMESPACE \
    --userId 'nNqv0eOz' \
    --body '{"amount": 30, "walletPlatform": "Steam"}' \
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
    --nextEvaluatedKey 'GaZP4Op9' \
    --end 'cwxs5DOF' \
    --start 'HM1cKhS6' \
    > test.out 2>&1
eval_tap $? 245 'SyncOrders' test.out

#- 246 TestAdyenConfig
samples/cli/sample-apps Platform testAdyenConfig \
    --sandbox 'false' \
    --body '{"allowedPaymentMethods": ["51AudVBo", "Rt4LaiRb", "tV6TPyVL"], "apiKey": "jpwQVgKm", "authoriseAsCapture": false, "blockedPaymentMethods": ["xHYAnpOh", "eTFKKHIb", "G4bEcPsA"], "clientKey": "arrXaFdP", "dropInSettings": "AMFVNIAL", "liveEndpointUrlPrefix": "GkbmLlia", "merchantAccount": "H07FThAV", "notificationHmacKey": "jpCPwNsn", "notificationPassword": "7agfTAy4", "notificationUsername": "59PvXAvF", "returnUrl": "m2P8T5nj", "settings": "L3kY7hx1"}' \
    > test.out 2>&1
eval_tap $? 246 'TestAdyenConfig' test.out

#- 247 TestAliPayConfig
samples/cli/sample-apps Platform testAliPayConfig \
    --sandbox 'true' \
    --body '{"appId": "7mvomoGf", "privateKey": "S60zF2EY", "publicKey": "7l5c48IZ", "returnUrl": "XcvSJw8f"}' \
    > test.out 2>&1
eval_tap $? 247 'TestAliPayConfig' test.out

#- 248 TestCheckoutConfig
samples/cli/sample-apps Platform testCheckoutConfig \
    --sandbox 'true' \
    --body '{"publicKey": "fTXzxyY1", "secretKey": "HmhG0K2C"}' \
    > test.out 2>&1
eval_tap $? 248 'TestCheckoutConfig' test.out

#- 249 DebugMatchedPaymentMerchantConfig
samples/cli/sample-apps Platform debugMatchedPaymentMerchantConfig \
    --namespace 'DwJmhiVX' \
    --region '0XTTRucp' \
    > test.out 2>&1
eval_tap $? 249 'DebugMatchedPaymentMerchantConfig' test.out

#- 250 TestPayPalConfig
samples/cli/sample-apps Platform testPayPalConfig \
    --sandbox 'false' \
    --body '{"clientID": "JX3Hi4pP", "clientSecret": "25qtVUgq", "returnUrl": "1BoMOVvk", "webHookId": "eIXV5Of4"}' \
    > test.out 2>&1
eval_tap $? 250 'TestPayPalConfig' test.out

#- 251 TestStripeConfig
samples/cli/sample-apps Platform testStripeConfig \
    --sandbox 'false' \
    --body '{"allowedPaymentMethodTypes": ["ivbsOUEL", "teL3eZKB", "U0ipI0Ac"], "publishableKey": "C4Wgo2aA", "secretKey": "odk8Xdye", "webhookSecret": "ZjjPEqLR"}' \
    > test.out 2>&1
eval_tap $? 251 'TestStripeConfig' test.out

#- 252 TestWxPayConfig
samples/cli/sample-apps Platform testWxPayConfig \
    --body '{"appId": "vKf5XUlU", "key": "6BpxTzCc", "mchid": "7RJWmLC9", "returnUrl": "6OJQPtlw"}' \
    > test.out 2>&1
eval_tap $? 252 'TestWxPayConfig' test.out

#- 253 TestXsollaConfig
samples/cli/sample-apps Platform testXsollaConfig \
    --body '{"apiKey": "bkXMIpQj", "flowCompletionUrl": "GI8IkVgO", "merchantId": 51, "projectId": 19, "projectSecretKey": "BIsjpPUH"}' \
    > test.out 2>&1
eval_tap $? 253 'TestXsollaConfig' test.out

#- 254 GetPaymentMerchantConfig
samples/cli/sample-apps Platform getPaymentMerchantConfig \
    --id 'fgaF65KH' \
    > test.out 2>&1
eval_tap $? 254 'GetPaymentMerchantConfig' test.out

#- 255 UpdateAdyenConfig
samples/cli/sample-apps Platform updateAdyenConfig \
    --id 'sfcomZMk' \
    --sandbox 'true' \
    --validate 'true' \
    --body '{"allowedPaymentMethods": ["wApycSAu", "ujowIx5l", "k8A4RuLn"], "apiKey": "EGESPbw5", "authoriseAsCapture": true, "blockedPaymentMethods": ["3bkfYUUM", "ygfbAMBh", "11OvxoGZ"], "clientKey": "rPXQ0FPx", "dropInSettings": "RdwnDLFh", "liveEndpointUrlPrefix": "JxEGq3YB", "merchantAccount": "OUxXa64j", "notificationHmacKey": "aj8CQPAr", "notificationPassword": "82XJeEjn", "notificationUsername": "NBiPAh1i", "returnUrl": "2CxcS7K3", "settings": "VxoWXVYY"}' \
    > test.out 2>&1
eval_tap $? 255 'UpdateAdyenConfig' test.out

#- 256 TestAdyenConfigById
samples/cli/sample-apps Platform testAdyenConfigById \
    --id 'ttpJtuut' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 256 'TestAdyenConfigById' test.out

#- 257 UpdateAliPayConfig
samples/cli/sample-apps Platform updateAliPayConfig \
    --id '6UoM6Pkg' \
    --sandbox 'true' \
    --validate 'true' \
    --body '{"appId": "pCrFrFuo", "privateKey": "EkBEZ8j8", "publicKey": "Ys7d91pX", "returnUrl": "CKHm46mY"}' \
    > test.out 2>&1
eval_tap $? 257 'UpdateAliPayConfig' test.out

#- 258 TestAliPayConfigById
samples/cli/sample-apps Platform testAliPayConfigById \
    --id '26D1w5jp' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 258 'TestAliPayConfigById' test.out

#- 259 UpdateCheckoutConfig
samples/cli/sample-apps Platform updateCheckoutConfig \
    --id 'ID4prJ6e' \
    --sandbox 'false' \
    --validate 'false' \
    --body '{"publicKey": "IehDq0VG", "secretKey": "Po4BXhd5"}' \
    > test.out 2>&1
eval_tap $? 259 'UpdateCheckoutConfig' test.out

#- 260 TestCheckoutConfigById
samples/cli/sample-apps Platform testCheckoutConfigById \
    --id 'HIPKsEEH' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 260 'TestCheckoutConfigById' test.out

#- 261 UpdatePayPalConfig
samples/cli/sample-apps Platform updatePayPalConfig \
    --id 'CEukZvuI' \
    --sandbox 'false' \
    --validate 'true' \
    --body '{"clientID": "dWuNUyw6", "clientSecret": "OaXOQ63w", "returnUrl": "FS4GtZqF", "webHookId": "tKO7xRvf"}' \
    > test.out 2>&1
eval_tap $? 261 'UpdatePayPalConfig' test.out

#- 262 TestPayPalConfigById
samples/cli/sample-apps Platform testPayPalConfigById \
    --id '1gVUWybp' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 262 'TestPayPalConfigById' test.out

#- 263 UpdateStripeConfig
samples/cli/sample-apps Platform updateStripeConfig \
    --id 'sR0JyX4k' \
    --sandbox 'false' \
    --validate 'true' \
    --body '{"allowedPaymentMethodTypes": ["egHnsMy6", "4jD4XzfC", "v3Ry2N0i"], "publishableKey": "QhffNlCP", "secretKey": "oZzDC2Tt", "webhookSecret": "nhmLIXc9"}' \
    > test.out 2>&1
eval_tap $? 263 'UpdateStripeConfig' test.out

#- 264 TestStripeConfigById
samples/cli/sample-apps Platform testStripeConfigById \
    --id '9mmfkHSQ' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 264 'TestStripeConfigById' test.out

#- 265 UpdateWxPayConfig
samples/cli/sample-apps Platform updateWxPayConfig \
    --id 'd5I47g05' \
    --validate 'false' \
    --body '{"appId": "cYDzM6hN", "key": "41hsRhTb", "mchid": "4T3iC59z", "returnUrl": "CHXVWpe3"}' \
    > test.out 2>&1
eval_tap $? 265 'UpdateWxPayConfig' test.out

#- 266 UpdateWxPayConfigCert
samples/cli/sample-apps Platform updateWxPayConfigCert \
    --id 'Lg82EWj1' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 266 'UpdateWxPayConfigCert' test.out

#- 267 TestWxPayConfigById
samples/cli/sample-apps Platform testWxPayConfigById \
    --id 'ICgN3eB9' \
    > test.out 2>&1
eval_tap $? 267 'TestWxPayConfigById' test.out

#- 268 UpdateXsollaConfig
samples/cli/sample-apps Platform updateXsollaConfig \
    --id 'DUR1Pe29' \
    --validate 'false' \
    --body '{"apiKey": "Cf3NqB0Z", "flowCompletionUrl": "dOH4AnFE", "merchantId": 63, "projectId": 73, "projectSecretKey": "PFlWl1Ix"}' \
    > test.out 2>&1
eval_tap $? 268 'UpdateXsollaConfig' test.out

#- 269 TestXsollaConfigById
samples/cli/sample-apps Platform testXsollaConfigById \
    --id 'bciVRJZD' \
    > test.out 2>&1
eval_tap $? 269 'TestXsollaConfigById' test.out

#- 270 UpdateXsollaUIConfig
samples/cli/sample-apps Platform updateXsollaUIConfig \
    --id 'H9lcGdJ8' \
    --body '{"device": "MOBILE", "showCloseButton": false, "size": "SMALL", "theme": "DARK"}' \
    > test.out 2>&1
eval_tap $? 270 'UpdateXsollaUIConfig' test.out

#- 271 QueryPaymentProviderConfig
samples/cli/sample-apps Platform queryPaymentProviderConfig \
    --limit '80' \
    --namespace 'wx8IfoDh' \
    --offset '73' \
    --region '3NlC8FsP' \
    > test.out 2>&1
eval_tap $? 271 'QueryPaymentProviderConfig' test.out

#- 272 CreatePaymentProviderConfig
samples/cli/sample-apps Platform createPaymentProviderConfig \
    --body '{"aggregate": "XSOLLA", "namespace": "gsqBJtTF", "region": "obdWluLH", "sandboxTaxJarApiToken": "IQdkB2tF", "specials": ["WALLET", "STRIPE", "STRIPE"], "taxJarApiToken": "9Zl6It32", "taxJarEnabled": true, "useGlobalTaxJarApiToken": false}' \
    > test.out 2>&1
eval_tap $? 272 'CreatePaymentProviderConfig' test.out

#- 273 GetAggregatePaymentProviders
samples/cli/sample-apps Platform getAggregatePaymentProviders \
    > test.out 2>&1
eval_tap $? 273 'GetAggregatePaymentProviders' test.out

#- 274 DebugMatchedPaymentProviderConfig
samples/cli/sample-apps Platform debugMatchedPaymentProviderConfig \
    --namespace 'ZLNjG4CY' \
    --region 'g0K0HYcs' \
    > test.out 2>&1
eval_tap $? 274 'DebugMatchedPaymentProviderConfig' test.out

#- 275 GetSpecialPaymentProviders
samples/cli/sample-apps Platform getSpecialPaymentProviders \
    > test.out 2>&1
eval_tap $? 275 'GetSpecialPaymentProviders' test.out

#- 276 UpdatePaymentProviderConfig
samples/cli/sample-apps Platform updatePaymentProviderConfig \
    --id 'pGkHkJZI' \
    --body '{"aggregate": "XSOLLA", "namespace": "aE83XoGP", "region": "aeiu5REz", "sandboxTaxJarApiToken": "wSqPXsuo", "specials": ["XSOLLA", "XSOLLA", "WALLET"], "taxJarApiToken": "j1P2tH2Y", "taxJarEnabled": false, "useGlobalTaxJarApiToken": false}' \
    > test.out 2>&1
eval_tap $? 276 'UpdatePaymentProviderConfig' test.out

#- 277 DeletePaymentProviderConfig
samples/cli/sample-apps Platform deletePaymentProviderConfig \
    --id 'H7LZTUk8' \
    > test.out 2>&1
eval_tap $? 277 'DeletePaymentProviderConfig' test.out

#- 278 GetPaymentTaxConfig
samples/cli/sample-apps Platform getPaymentTaxConfig \
    > test.out 2>&1
eval_tap $? 278 'GetPaymentTaxConfig' test.out

#- 279 UpdatePaymentTaxConfig
samples/cli/sample-apps Platform updatePaymentTaxConfig \
    --body '{"sandboxTaxJarApiToken": "GiqGJQrK", "taxJarApiToken": "Y4X9eKlw", "taxJarEnabled": true, "taxJarProductCodesMapping": {"1rQ60Mcq": "AZBKCDVc", "G7d0gF21": "R5RlFfzA", "LW84fhIV": "cHg8S5e2"}}' \
    > test.out 2>&1
eval_tap $? 279 'UpdatePaymentTaxConfig' test.out

#- 280 SyncPaymentOrders
samples/cli/sample-apps Platform syncPaymentOrders \
    --nextEvaluatedKey 'SCbIixwp' \
    --end 'VLYSagdg' \
    --start 'qRKHAyHl' \
    > test.out 2>&1
eval_tap $? 280 'SyncPaymentOrders' test.out

#- 281 PublicGetRootCategories
samples/cli/sample-apps Platform publicGetRootCategories \
    --namespace $AB_NAMESPACE \
    --language 'UUIefWnr' \
    --storeId 'rWLDWpzQ' \
    > test.out 2>&1
eval_tap $? 281 'PublicGetRootCategories' test.out

#- 282 DownloadCategories
samples/cli/sample-apps Platform downloadCategories \
    --namespace $AB_NAMESPACE \
    --language 'FedZZiXY' \
    --storeId '90vTSzCZ' \
    > test.out 2>&1
eval_tap $? 282 'DownloadCategories' test.out

#- 283 PublicGetCategory
samples/cli/sample-apps Platform publicGetCategory \
    --categoryPath 'mGakWGPQ' \
    --namespace $AB_NAMESPACE \
    --language '6QWZPdlW' \
    --storeId 'usCNwyz5' \
    > test.out 2>&1
eval_tap $? 283 'PublicGetCategory' test.out

#- 284 PublicGetChildCategories
samples/cli/sample-apps Platform publicGetChildCategories \
    --categoryPath 'Qc73Xq8W' \
    --namespace $AB_NAMESPACE \
    --language '1iADuwEC' \
    --storeId 'pcA6Q4f0' \
    > test.out 2>&1
eval_tap $? 284 'PublicGetChildCategories' test.out

#- 285 PublicGetDescendantCategories
samples/cli/sample-apps Platform publicGetDescendantCategories \
    --categoryPath '1O8YKYxP' \
    --namespace $AB_NAMESPACE \
    --language 'XJKutbFI' \
    --storeId '3kymgTTT' \
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
    --language 'DdammsKm' \
    --region '6deP2CSM' \
    --storeId '9OcpWxTc' \
    --appId 'MpVDGK0O' \
    > test.out 2>&1
eval_tap $? 287 'PublicGetItemByAppId' test.out

#- 288 PublicQueryItems
samples/cli/sample-apps Platform publicQueryItems \
    --namespace $AB_NAMESPACE \
    --appType 'GAME' \
    --baseAppId '453x1JeB' \
    --categoryPath '2UVWxtTc' \
    --features 'jdJGYWMh' \
    --includeSubCategoryItem 'false' \
    --itemType 'APP' \
    --language 't0mcIZZv' \
    --limit '70' \
    --offset '14' \
    --region 'k7xaiRat' \
    --sortBy '["name:desc", "createdAt:desc", "updatedAt:desc"]' \
    --storeId 'ueITD1DY' \
    --tags 'u6DDrxtq' \
    > test.out 2>&1
eval_tap $? 288 'PublicQueryItems' test.out

#- 289 PublicGetItemBySku
samples/cli/sample-apps Platform publicGetItemBySku \
    --namespace $AB_NAMESPACE \
    --language 'AOHvOBlH' \
    --region 'ofoXflAl' \
    --storeId '3CorvHBb' \
    --sku 'JyZgwRHR' \
    > test.out 2>&1
eval_tap $? 289 'PublicGetItemBySku' test.out

#- 290 PublicBulkGetItems
samples/cli/sample-apps Platform publicBulkGetItems \
    --namespace $AB_NAMESPACE \
    --language 'N0kSFigX' \
    --region 'psULWSzt' \
    --storeId 'k3UeUHDv' \
    --itemIds 'rfmd7pNF' \
    > test.out 2>&1
eval_tap $? 290 'PublicBulkGetItems' test.out

#- 291 PublicValidateItemPurchaseCondition
samples/cli/sample-apps Platform publicValidateItemPurchaseCondition \
    --namespace $AB_NAMESPACE \
    --body '{"itemIds": ["VVKPaaS4", "GmHLicaO", "1E2E0Jvp"]}' \
    > test.out 2>&1
eval_tap $? 291 'PublicValidateItemPurchaseCondition' test.out

#- 292 PublicSearchItems
samples/cli/sample-apps Platform publicSearchItems \
    --namespace $AB_NAMESPACE \
    --itemType 'COINS' \
    --limit '46' \
    --offset '88' \
    --region 'rQFoSoFQ' \
    --storeId '2zz8eDzw' \
    --keyword 'UsBUAHmb' \
    --language 'NBEEN0Vk' \
    > test.out 2>&1
eval_tap $? 292 'PublicSearchItems' test.out

#- 293 PublicGetApp
samples/cli/sample-apps Platform publicGetApp \
    --itemId 'Ik8Fbper' \
    --namespace $AB_NAMESPACE \
    --language 'nfaJ8Spt' \
    --region 'U6OxyhXr' \
    --storeId 'V0gTEUwf' \
    > test.out 2>&1
eval_tap $? 293 'PublicGetApp' test.out

#- 294 PublicGetItemDynamicData
samples/cli/sample-apps Platform publicGetItemDynamicData \
    --itemId 'Sfu0yXrZ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 294 'PublicGetItemDynamicData' test.out

#- 295 PublicGetItem
samples/cli/sample-apps Platform publicGetItem \
    --itemId 'fvrQa9Pi' \
    --namespace $AB_NAMESPACE \
    --language 'OgyxGdH4' \
    --populateBundle 'true' \
    --region 'jVZJhtSD' \
    --storeId 'ESQZ3xbU' \
    > test.out 2>&1
eval_tap $? 295 'PublicGetItem' test.out

#- 296 GetPaymentCustomization
eval_tap 0 296 'GetPaymentCustomization # SKIP deprecated' test.out

#- 297 PublicGetPaymentUrl
samples/cli/sample-apps Platform publicGetPaymentUrl \
    --namespace $AB_NAMESPACE \
    --body '{"paymentOrderNo": "9QvEBpDH", "paymentProvider": "STRIPE", "returnUrl": "fmaE5UjN", "ui": "gVMV9tVE", "zipCode": "8ODOvnPg"}' \
    > test.out 2>&1
eval_tap $? 297 'PublicGetPaymentUrl' test.out

#- 298 PublicGetPaymentMethods
samples/cli/sample-apps Platform publicGetPaymentMethods \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo '4uA33ygB' \
    > test.out 2>&1
eval_tap $? 298 'PublicGetPaymentMethods' test.out

#- 299 PublicGetUnpaidPaymentOrder
samples/cli/sample-apps Platform publicGetUnpaidPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo '7eysguq9' \
    > test.out 2>&1
eval_tap $? 299 'PublicGetUnpaidPaymentOrder' test.out

#- 300 Pay
samples/cli/sample-apps Platform pay \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'MnBv8Ak6' \
    --paymentProvider 'WXPAY' \
    --zipCode 'NiZpRRGg' \
    --body '{"token": "QfRQFFbl"}' \
    > test.out 2>&1
eval_tap $? 300 'Pay' test.out

#- 301 PublicCheckPaymentOrderPaidStatus
samples/cli/sample-apps Platform publicCheckPaymentOrderPaidStatus \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'Dmi20Ocp' \
    > test.out 2>&1
eval_tap $? 301 'PublicCheckPaymentOrderPaidStatus' test.out

#- 302 GetPaymentPublicConfig
samples/cli/sample-apps Platform getPaymentPublicConfig \
    --namespace $AB_NAMESPACE \
    --sandbox 'true' \
    --paymentProvider 'WXPAY' \
    --region '7VSehBjb' \
    > test.out 2>&1
eval_tap $? 302 'GetPaymentPublicConfig' test.out

#- 303 PublicGetQRCode
samples/cli/sample-apps Platform publicGetQRCode \
    --namespace $AB_NAMESPACE \
    --code 'Vb3iEJfB' \
    > test.out 2>&1
eval_tap $? 303 'PublicGetQRCode' test.out

#- 304 PublicNormalizePaymentReturnUrl
samples/cli/sample-apps Platform publicNormalizePaymentReturnUrl \
    --namespace $AB_NAMESPACE \
    --payerID '4xkhBML5' \
    --foreinginvoice 'pZLzxtcU' \
    --invoiceId '9vQx87uH' \
    --payload 'UFNWwNnA' \
    --redirectResult 'KBXQPPKG' \
    --resultCode 'bbvYg40m' \
    --sessionId 'xBAGOilj' \
    --status '3pyzBRLW' \
    --token 'p6IFcOXT' \
    --type 'NV0BBxuT' \
    --userId 'Q653YhSX' \
    --orderNo '6Dknu6Iu' \
    --paymentOrderNo 'nTmAzjNF' \
    --paymentProvider 'XSOLLA' \
    --returnUrl 'yuQK5QP6' \
    > test.out 2>&1
eval_tap $? 304 'PublicNormalizePaymentReturnUrl' test.out

#- 305 GetPaymentTaxValue
samples/cli/sample-apps Platform getPaymentTaxValue \
    --namespace $AB_NAMESPACE \
    --zipCode 'hG1l3pQD' \
    --paymentOrderNo '2D09FJLB' \
    --paymentProvider 'PAYPAL' \
    > test.out 2>&1
eval_tap $? 305 'GetPaymentTaxValue' test.out

#- 306 GetRewardByCode
samples/cli/sample-apps Platform getRewardByCode \
    --namespace $AB_NAMESPACE \
    --rewardCode 'MHbubYZG' \
    > test.out 2>&1
eval_tap $? 306 'GetRewardByCode' test.out

#- 307 QueryRewards1
samples/cli/sample-apps Platform queryRewards1 \
    --namespace $AB_NAMESPACE \
    --eventTopic '3fKUQiBO' \
    --limit '33' \
    --offset '75' \
    --sortBy '["rewardCode:asc", "namespace", "rewardCode:desc"]' \
    > test.out 2>&1
eval_tap $? 307 'QueryRewards1' test.out

#- 308 GetReward1
samples/cli/sample-apps Platform getReward1 \
    --namespace $AB_NAMESPACE \
    --rewardId 'XOdYdQOE' \
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
    --appIds '["HycywgwO", "wxu56lsA", "2g3vgogV"]' \
    --itemIds '["3DuVdgnz", "0oVFO3Zr", "fhxNlsIB"]' \
    --skus '["w2ZWM8QL", "THDjDn9k", "NFOPn9Mn"]' \
    > test.out 2>&1
eval_tap $? 310 'PublicExistsAnyMyActiveEntitlement' test.out

#- 311 PublicGetMyAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform publicGetMyAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --appId '7HPJkbZL' \
    > test.out 2>&1
eval_tap $? 311 'PublicGetMyAppEntitlementOwnershipByAppId' test.out

#- 312 PublicGetMyEntitlementOwnershipByItemId
samples/cli/sample-apps Platform publicGetMyEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --entitlementClazz 'OPTIONBOX' \
    --itemId 'LUrIKvi7' \
    > test.out 2>&1
eval_tap $? 312 'PublicGetMyEntitlementOwnershipByItemId' test.out

#- 313 PublicGetMyEntitlementOwnershipBySku
samples/cli/sample-apps Platform publicGetMyEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --entitlementClazz 'CODE' \
    --sku 'cCgLZD7Z' \
    > test.out 2>&1
eval_tap $? 313 'PublicGetMyEntitlementOwnershipBySku' test.out

#- 314 PublicGetEntitlementOwnershipToken
samples/cli/sample-apps Platform publicGetEntitlementOwnershipToken \
    --namespace $AB_NAMESPACE \
    --appIds '["cGxVrFtM", "STvpdz8Z", "rU9GOnuF"]' \
    --itemIds '["ixzdeINd", "Xyp5GUZI", "OEMFRGAV"]' \
    --skus '["5Hw1PpGz", "8TB4o23b", "kHfXNjn8"]' \
    > test.out 2>&1
eval_tap $? 314 'PublicGetEntitlementOwnershipToken' test.out

#- 315 PublicGetMyWallet
samples/cli/sample-apps Platform publicGetMyWallet \
    --currencyCode 'OtuPDFMp' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 315 'PublicGetMyWallet' test.out

#- 316 SyncEpicGameDLC
samples/cli/sample-apps Platform syncEpicGameDLC \
    --namespace $AB_NAMESPACE \
    --userId 'ucezrx54' \
    --body '{"epicGamesJwtToken": "fc6sr5A9"}' \
    > test.out 2>&1
eval_tap $? 316 'SyncEpicGameDLC' test.out

#- 317 PublicSyncPsnDlcInventory
samples/cli/sample-apps Platform publicSyncPsnDlcInventory \
    --namespace $AB_NAMESPACE \
    --userId '4jSHcnbX' \
    --body '{"serviceLabel": 60}' \
    > test.out 2>&1
eval_tap $? 317 'PublicSyncPsnDlcInventory' test.out

#- 318 SyncSteamDLC
samples/cli/sample-apps Platform syncSteamDLC \
    --namespace $AB_NAMESPACE \
    --userId 'YCfuJY3Y' \
    --body '{"appId": "2uTQTeP7", "steamId": "cAUNgMRB"}' \
    > test.out 2>&1
eval_tap $? 318 'SyncSteamDLC' test.out

#- 319 SyncXboxDLC
samples/cli/sample-apps Platform syncXboxDLC \
    --namespace $AB_NAMESPACE \
    --userId '1W9434vM' \
    --body '{"xstsToken": "rYJZVYZj"}' \
    > test.out 2>&1
eval_tap $? 319 'SyncXboxDLC' test.out

#- 320 PublicQueryUserEntitlements
samples/cli/sample-apps Platform publicQueryUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'M7AWN3sp' \
    --appType 'GAME' \
    --entitlementClazz 'APP' \
    --entitlementName 'LQxrpbht' \
    --features '["hHvLdW3U", "6k64y4iW", "IF5BHrrQ"]' \
    --itemId '["UFwNOZPp", "FASg7Cpc", "kC1CkvCA"]' \
    --limit '22' \
    --offset '34' \
    > test.out 2>&1
eval_tap $? 320 'PublicQueryUserEntitlements' test.out

#- 321 PublicGetUserAppEntitlementByAppId
samples/cli/sample-apps Platform publicGetUserAppEntitlementByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'aOl59csO' \
    --appId 'DNlIDEmJ' \
    > test.out 2>&1
eval_tap $? 321 'PublicGetUserAppEntitlementByAppId' test.out

#- 322 PublicQueryUserEntitlementsByAppType
samples/cli/sample-apps Platform publicQueryUserEntitlementsByAppType \
    --namespace $AB_NAMESPACE \
    --userId 'Uqrrsv8y' \
    --limit '9' \
    --offset '21' \
    --appType 'SOFTWARE' \
    > test.out 2>&1
eval_tap $? 322 'PublicQueryUserEntitlementsByAppType' test.out

#- 323 PublicGetUserEntitlementByItemId
samples/cli/sample-apps Platform publicGetUserEntitlementByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'HV74OsUJ' \
    --entitlementClazz 'OPTIONBOX' \
    --itemId 'QWkXE4l8' \
    > test.out 2>&1
eval_tap $? 323 'PublicGetUserEntitlementByItemId' test.out

#- 324 PublicGetUserEntitlementBySku
samples/cli/sample-apps Platform publicGetUserEntitlementBySku \
    --namespace $AB_NAMESPACE \
    --userId 'ni4Gig08' \
    --entitlementClazz 'OPTIONBOX' \
    --sku '0LIYx1Vf' \
    > test.out 2>&1
eval_tap $? 324 'PublicGetUserEntitlementBySku' test.out

#- 325 PublicExistsAnyUserActiveEntitlement
samples/cli/sample-apps Platform publicExistsAnyUserActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'vZz2B5km' \
    --appIds '["3YMvEObN", "ExeQzzpT", "ZFzveYE1"]' \
    --itemIds '["ohE2ZGwm", "ORK7mwDa", "R83C32XY"]' \
    --skus '["HpQZqlPd", "CR0ZFZq0", "E0yPEdyV"]' \
    > test.out 2>&1
eval_tap $? 325 'PublicExistsAnyUserActiveEntitlement' test.out

#- 326 PublicGetUserAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform publicGetUserAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'tm1QMs7i' \
    --appId 'AJYRaXfw' \
    > test.out 2>&1
eval_tap $? 326 'PublicGetUserAppEntitlementOwnershipByAppId' test.out

#- 327 PublicGetUserEntitlementOwnershipByItemId
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'OoagWXDL' \
    --entitlementClazz 'CODE' \
    --itemId 'V9KsutSR' \
    > test.out 2>&1
eval_tap $? 327 'PublicGetUserEntitlementOwnershipByItemId' test.out

#- 328 PublicGetUserEntitlementOwnershipByItemIds
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'HMZu7d6N' \
    --ids '["8ERx09Q3", "C4c8a9kQ", "4wy4hOD9"]' \
    > test.out 2>&1
eval_tap $? 328 'PublicGetUserEntitlementOwnershipByItemIds' test.out

#- 329 PublicGetUserEntitlementOwnershipBySku
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --userId 'rGU46WMG' \
    --entitlementClazz 'ENTITLEMENT' \
    --sku 'vHRy9mqm' \
    > test.out 2>&1
eval_tap $? 329 'PublicGetUserEntitlementOwnershipBySku' test.out

#- 330 PublicGetUserEntitlement
samples/cli/sample-apps Platform publicGetUserEntitlement \
    --entitlementId '7OlJbNh3' \
    --namespace $AB_NAMESPACE \
    --userId 'WinT7pgA' \
    > test.out 2>&1
eval_tap $? 330 'PublicGetUserEntitlement' test.out

#- 331 PublicConsumeUserEntitlement
samples/cli/sample-apps Platform publicConsumeUserEntitlement \
    --entitlementId 'BWObKSzF' \
    --namespace $AB_NAMESPACE \
    --userId 'huWYpqLD' \
    --body '{"options": ["KX7e8RFK", "jUcXpoHX", "4eXlq6Fk"], "requestId": "BMrzSJwk", "useCount": 79}' \
    > test.out 2>&1
eval_tap $? 331 'PublicConsumeUserEntitlement' test.out

#- 332 PublicRedeemCode
samples/cli/sample-apps Platform publicRedeemCode \
    --namespace $AB_NAMESPACE \
    --userId 'MMimV8fE' \
    --body '{"code": "XHhAuPCw", "language": "FYHK", "region": "wyRJG3o5"}' \
    > test.out 2>&1
eval_tap $? 332 'PublicRedeemCode' test.out

#- 333 PublicFulfillAppleIAPItem
samples/cli/sample-apps Platform publicFulfillAppleIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'c1JiUJxC' \
    --body '{"excludeOldTransactions": false, "language": "KCr_nduW", "productId": "j2JoU3ax", "receiptData": "DCCBgUFG", "region": "jmOtCSwe", "transactionId": "slWfMqcy"}' \
    > test.out 2>&1
eval_tap $? 333 'PublicFulfillAppleIAPItem' test.out

#- 334 SyncEpicGamesInventory
samples/cli/sample-apps Platform syncEpicGamesInventory \
    --namespace $AB_NAMESPACE \
    --userId 'ED0ktysd' \
    --body '{"epicGamesJwtToken": "YqFjekic"}' \
    > test.out 2>&1
eval_tap $? 334 'SyncEpicGamesInventory' test.out

#- 335 PublicFulfillGoogleIAPItem
samples/cli/sample-apps Platform publicFulfillGoogleIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'qtORhrBF' \
    --body '{"autoAck": false, "language": "FE", "orderId": "2Z43N7RI", "packageName": "r5lkCJvQ", "productId": "hAxH57cr", "purchaseTime": 97, "purchaseToken": "st2vQO1m", "region": "UTbj8Ori"}' \
    > test.out 2>&1
eval_tap $? 335 'PublicFulfillGoogleIAPItem' test.out

#- 336 PublicReconcilePlayStationStore
samples/cli/sample-apps Platform publicReconcilePlayStationStore \
    --namespace $AB_NAMESPACE \
    --userId 'dXlBpO3F' \
    --body '{"currencyCode": "wuhQffAW", "price": 0.6820239933954753, "productId": "u0vXxthg", "serviceLabel": 95}' \
    > test.out 2>&1
eval_tap $? 336 'PublicReconcilePlayStationStore' test.out

#- 337 SyncStadiaEntitlement
samples/cli/sample-apps Platform syncStadiaEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'B4he5cRc' \
    --body '{"appId": "j4egOs1S", "language": "ksGP_djAA_271", "region": "LwPpkidk", "stadiaPlayerId": "3uvkHNvu"}' \
    > test.out 2>&1
eval_tap $? 337 'SyncStadiaEntitlement' test.out

#- 338 SyncSteamInventory
samples/cli/sample-apps Platform syncSteamInventory \
    --namespace $AB_NAMESPACE \
    --userId '4VBCbSh7' \
    --body '{"appId": "iBHFDLcS", "currencyCode": "UGgc2Dil", "language": "Mz_BktZ_650", "price": 0.7115532541563901, "productId": "HAmUdzY5", "region": "hJYqhoJQ", "steamId": "1HklgYV6"}' \
    > test.out 2>&1
eval_tap $? 338 'SyncSteamInventory' test.out

#- 339 SyncTwitchDropsEntitlement
samples/cli/sample-apps Platform syncTwitchDropsEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'Yf1RfgVU' \
    --body '{"gameId": "WG0pdXQ6", "language": "QEGR", "region": "QWaxeXef"}' \
    > test.out 2>&1
eval_tap $? 339 'SyncTwitchDropsEntitlement' test.out

#- 340 SyncXboxInventory
samples/cli/sample-apps Platform syncXboxInventory \
    --namespace $AB_NAMESPACE \
    --userId 'srkuc22A' \
    --body '{"currencyCode": "XeqcJElb", "price": 0.8898113370812112, "productId": "adhH8hGO", "xstsToken": "0b020WUY"}' \
    > test.out 2>&1
eval_tap $? 340 'SyncXboxInventory' test.out

#- 341 PublicQueryUserOrders
samples/cli/sample-apps Platform publicQueryUserOrders \
    --namespace $AB_NAMESPACE \
    --userId 'uXU2SvSH' \
    --itemId 'PccNtDWI' \
    --limit '89' \
    --offset '37' \
    --status 'CLOSED' \
    > test.out 2>&1
eval_tap $? 341 'PublicQueryUserOrders' test.out

#- 342 PublicCreateUserOrder
samples/cli/sample-apps Platform publicCreateUserOrder \
    --namespace $AB_NAMESPACE \
    --userId 'xQ7vRiLY' \
    --body '{"currencyCode": "CFnN96No", "discountedPrice": 26, "ext": {"E3xTIJ7O": {}, "FsDvreMF": {}, "XMnJa6ly": {}}, "itemId": "tvr5ZU9x", "language": "NW", "price": 70, "quantity": 46, "region": "0mVUkNt1", "returnUrl": "MgJlhoR2"}' \
    > test.out 2>&1
eval_tap $? 342 'PublicCreateUserOrder' test.out

#- 343 PublicGetUserOrder
samples/cli/sample-apps Platform publicGetUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'TMwtB7AH' \
    --userId 'NZbPwTT4' \
    > test.out 2>&1
eval_tap $? 343 'PublicGetUserOrder' test.out

#- 344 PublicCancelUserOrder
samples/cli/sample-apps Platform publicCancelUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'Jt0k5PXm' \
    --userId 'UL5wr9J7' \
    > test.out 2>&1
eval_tap $? 344 'PublicCancelUserOrder' test.out

#- 345 PublicGetUserOrderHistories
samples/cli/sample-apps Platform publicGetUserOrderHistories \
    --namespace $AB_NAMESPACE \
    --orderNo 'SW99rly0' \
    --userId 'yt0yFfIU' \
    > test.out 2>&1
eval_tap $? 345 'PublicGetUserOrderHistories' test.out

#- 346 PublicDownloadUserOrderReceipt
samples/cli/sample-apps Platform publicDownloadUserOrderReceipt \
    --namespace $AB_NAMESPACE \
    --orderNo 'alSzPU3k' \
    --userId 'lYmLAEuY' \
    > test.out 2>&1
eval_tap $? 346 'PublicDownloadUserOrderReceipt' test.out

#- 347 PublicGetPaymentAccounts
samples/cli/sample-apps Platform publicGetPaymentAccounts \
    --namespace $AB_NAMESPACE \
    --userId 'g88HBO3c' \
    > test.out 2>&1
eval_tap $? 347 'PublicGetPaymentAccounts' test.out

#- 348 PublicDeletePaymentAccount
samples/cli/sample-apps Platform publicDeletePaymentAccount \
    --id 'RTBdtndx' \
    --namespace $AB_NAMESPACE \
    --type 'paypal' \
    --userId 'L7I7CTpN' \
    > test.out 2>&1
eval_tap $? 348 'PublicDeletePaymentAccount' test.out

#- 349 PublicQueryUserSubscriptions
samples/cli/sample-apps Platform publicQueryUserSubscriptions \
    --namespace $AB_NAMESPACE \
    --userId 'dZsreLYN' \
    --chargeStatus 'SETUP' \
    --itemId 'AfG5yGwG' \
    --limit '65' \
    --offset '20' \
    --sku '5QRn5BTT' \
    --status 'ACTIVE' \
    --subscribedBy 'PLATFORM' \
    > test.out 2>&1
eval_tap $? 349 'PublicQueryUserSubscriptions' test.out

#- 350 PublicSubscribeSubscription
samples/cli/sample-apps Platform publicSubscribeSubscription \
    --namespace $AB_NAMESPACE \
    --userId 'UGFR4Iir' \
    --body '{"currencyCode": "SAa8gSVJ", "itemId": "B5chaOC4", "language": "gsJ_539", "region": "LCQEw4bU", "returnUrl": "7h1FuISu", "source": "E4loDiVi"}' \
    > test.out 2>&1
eval_tap $? 350 'PublicSubscribeSubscription' test.out

#- 351 PublicCheckUserSubscriptionSubscribableByItemId
samples/cli/sample-apps Platform publicCheckUserSubscriptionSubscribableByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'mjVRDYvE' \
    --itemId '5cg8gSkX' \
    > test.out 2>&1
eval_tap $? 351 'PublicCheckUserSubscriptionSubscribableByItemId' test.out

#- 352 PublicGetUserSubscription
samples/cli/sample-apps Platform publicGetUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId '6UG5Hhhr' \
    --userId 'CFRqIYlQ' \
    > test.out 2>&1
eval_tap $? 352 'PublicGetUserSubscription' test.out

#- 353 PublicChangeSubscriptionBillingAccount
samples/cli/sample-apps Platform publicChangeSubscriptionBillingAccount \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'Hm6dKlV8' \
    --userId 'qQ4BJnVF' \
    > test.out 2>&1
eval_tap $? 353 'PublicChangeSubscriptionBillingAccount' test.out

#- 354 PublicCancelSubscription
samples/cli/sample-apps Platform publicCancelSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId '2w4zuwWl' \
    --userId 'aB9sl1Ju' \
    --body '{"immediate": false, "reason": "BFiAY1Nb"}' \
    > test.out 2>&1
eval_tap $? 354 'PublicCancelSubscription' test.out

#- 355 PublicGetUserSubscriptionBillingHistories
samples/cli/sample-apps Platform publicGetUserSubscriptionBillingHistories \
    --namespace $AB_NAMESPACE \
    --subscriptionId '00CPOczK' \
    --userId 'JcjzG2pQ' \
    --excludeFree 'false' \
    --limit '69' \
    --offset '49' \
    > test.out 2>&1
eval_tap $? 355 'PublicGetUserSubscriptionBillingHistories' test.out

#- 356 PublicGetWallet
samples/cli/sample-apps Platform publicGetWallet \
    --currencyCode 'K2gskYcV' \
    --namespace $AB_NAMESPACE \
    --userId 'GTgPbd3o' \
    > test.out 2>&1
eval_tap $? 356 'PublicGetWallet' test.out

#- 357 PublicListUserWalletTransactions
samples/cli/sample-apps Platform publicListUserWalletTransactions \
    --currencyCode 'NZwKeBTF' \
    --namespace $AB_NAMESPACE \
    --userId '8D5AR6Bb' \
    --limit '81' \
    --offset '1' \
    > test.out 2>&1
eval_tap $? 357 'PublicListUserWalletTransactions' test.out

#- 358 QueryItems1
samples/cli/sample-apps Platform queryItems1 \
    --namespace $AB_NAMESPACE \
    --appType 'DLC' \
    --availableDate 'BGOQKjGZ' \
    --baseAppId 'TxtKrFhT' \
    --categoryPath 'DKJZKzxS' \
    --features 'Atazh9qi' \
    --includeSubCategoryItem 'false' \
    --itemStatus 'INACTIVE' \
    --itemType 'MEDIA' \
    --limit '41' \
    --offset '64' \
    --region 'WT8abSRO' \
    --sortBy '["name:asc", "updatedAt:desc", "name:desc"]' \
    --storeId 'oCzPNB23' \
    --tags '8wALDhGJ' \
    --targetNamespace 'UglAad51' \
    > test.out 2>&1
eval_tap $? 358 'QueryItems1' test.out

#- 359 ImportStore1
samples/cli/sample-apps Platform importStore1 \
    --namespace $AB_NAMESPACE \
    --storeId 'qNNZO2Uc' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 359 'ImportStore1' test.out

#- 360 ExportStore1
samples/cli/sample-apps Platform exportStore1 \
    --namespace $AB_NAMESPACE \
    --storeId 'IqnmMm2U' \
    --body '{"itemIds": ["D6nMHvRv", "gsBNvSnZ", "K5KbeXBu"]}' \
    > test.out 2>&1
eval_tap $? 360 'ExportStore1' test.out


rm -f "tmp.dat"

exit $EXIT_CODE