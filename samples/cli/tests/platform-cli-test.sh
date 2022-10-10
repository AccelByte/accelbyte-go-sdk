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
echo "1..359"

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
    --body '{"context": {"item": {"appId": "clzlp8ME", "appType": "SOFTWARE", "baseAppId": "fa1kyB91", "boothName": "MjIkU5qD", "boundItemIds": ["snBR7JgY", "cj9LXJt7", "C7V21cRe"], "categoryPath": "F7vHZzTP", "clazz": "isNjV6Xg", "createdAt": "1998-08-06T00:00:00Z", "description": "6aCCp1Fl", "displayOrder": 26, "entitlementType": "DURABLE", "ext": {"uLR896Lp": {}, "yGTYSs1w": {}, "rce8vKyG": {}}, "features": ["8D3wwk6q", "frSTdLzk", "wheN9Wiq"], "fresh": true, "images": [{"as": "99xRTGYo", "caption": "OCV6GXse", "height": 9, "imageUrl": "7zKRdSmC", "smallImageUrl": "H5YBw970", "width": 91}, {"as": "mdXQYyXD", "caption": "6Gx08jz7", "height": 49, "imageUrl": "zJibIFsS", "smallImageUrl": "gGKdg8f6", "width": 16}, {"as": "Vg6PP0fr", "caption": "La2s3gzz", "height": 27, "imageUrl": "jDs8PD7b", "smallImageUrl": "6KAehBFw", "width": 2}], "itemId": "g8POJu7p", "itemIds": ["VQXy6pvK", "nH8z2dFf", "j6GcmyJ9"], "itemQty": {"qfwenhrp": 58, "XqCuroPo": 10, "2T6nmqLJ": 20}, "itemType": "MEDIA", "language": "p7EuILO0", "listable": false, "localExt": {"FtEH4bKk": {}, "3gXlbYRN": {}, "QZuchpXn": {}}, "longDescription": "mkf3OSwg", "maxCount": 31, "maxCountPerUser": 75, "name": "odNvr8Bz", "namespace": "ol6qSb6w", "optionBoxConfig": {"boxItems": [{"count": 87, "itemId": "ByRw9KJB", "itemSku": "kUDip13D"}, {"count": 1, "itemId": "Y7lQcGCM", "itemSku": "bCfSrFRf"}, {"count": 98, "itemId": "5s58Zncj", "itemSku": "rhZTEqb0"}]}, "purchasable": false, "purchaseCondition": {"conditionGroups": [{"operator": "or", "predicates": [{"anyOf": 28, "comparison": "isGreaterThanOrEqual", "name": "gsvmQAHN", "predicateType": "SeasonTierPredicate", "value": "gvgsTxK1", "values": ["PorlFS6t", "vcyLNSuv", "blmG1P81"]}, {"anyOf": 38, "comparison": "isGreaterThanOrEqual", "name": "ygtiL1uG", "predicateType": "EntitlementPredicate", "value": "CwzKddgz", "values": ["Y2LzDOYh", "FIrymU1H", "wfy0a6TV"]}, {"anyOf": 74, "comparison": "includes", "name": "By6bzVpu", "predicateType": "SeasonPassPredicate", "value": "uESBWpA3", "values": ["g4BIGpsG", "OuqDEt2X", "BxsIdrPR"]}]}, {"operator": "and", "predicates": [{"anyOf": 54, "comparison": "includes", "name": "j0R4KGj0", "predicateType": "SeasonTierPredicate", "value": "BZtIdaoI", "values": ["RF1JSoTB", "mraOSk8X", "RqrLvjEB"]}, {"anyOf": 15, "comparison": "isLessThanOrEqual", "name": "NoAARrcc", "predicateType": "EntitlementPredicate", "value": "NU4gRVeL", "values": ["8Jh22SWA", "YJKtXe9g", "N59LvMM8"]}, {"anyOf": 86, "comparison": "excludes", "name": "s8OITFlx", "predicateType": "SeasonPassPredicate", "value": "qhA5zcTf", "values": ["0gr9BjbE", "PbfbE8of", "BEwNp0aG"]}]}, {"operator": "or", "predicates": [{"anyOf": 25, "comparison": "isLessThanOrEqual", "name": "ZZqcTXxe", "predicateType": "EntitlementPredicate", "value": "j32R69p1", "values": ["ty36y8n3", "hbsOGYvd", "R3WjHmaJ"]}, {"anyOf": 64, "comparison": "excludes", "name": "LJXbBarX", "predicateType": "SeasonTierPredicate", "value": "C6bot2ns", "values": ["sz9156Sl", "OkWSGnIc", "fJU8xAHw"]}, {"anyOf": 40, "comparison": "includes", "name": "BSU6E3WX", "predicateType": "SeasonPassPredicate", "value": "AcLyD0IY", "values": ["ozcPJ2bc", "mAnLQC4j", "3D49MFoC"]}]}]}, "recurring": {"cycle": "MONTHLY", "fixedFreeDays": 58, "fixedTrialCycles": 14, "graceDays": 72}, "region": "8sT5eLU7", "regionData": [{"currencyCode": "VRhEBSOM", "currencyNamespace": "gzKKrzL8", "currencyType": "VIRTUAL", "discountAmount": 41, "discountExpireAt": "1982-09-01T00:00:00Z", "discountPercentage": 51, "discountPurchaseAt": "1995-07-13T00:00:00Z", "discountedPrice": 39, "expireAt": "1995-03-10T00:00:00Z", "price": 30, "purchaseAt": "1991-05-04T00:00:00Z", "trialPrice": 70}, {"currencyCode": "iJ9b2khW", "currencyNamespace": "x3VPQjzn", "currencyType": "VIRTUAL", "discountAmount": 4, "discountExpireAt": "1998-12-07T00:00:00Z", "discountPercentage": 16, "discountPurchaseAt": "1982-11-26T00:00:00Z", "discountedPrice": 75, "expireAt": "1981-02-02T00:00:00Z", "price": 91, "purchaseAt": "1982-03-15T00:00:00Z", "trialPrice": 50}, {"currencyCode": "vzwSd32X", "currencyNamespace": "OfjzNAPS", "currencyType": "REAL", "discountAmount": 65, "discountExpireAt": "1976-04-29T00:00:00Z", "discountPercentage": 17, "discountPurchaseAt": "1984-01-01T00:00:00Z", "discountedPrice": 63, "expireAt": "1996-04-10T00:00:00Z", "price": 79, "purchaseAt": "1987-10-05T00:00:00Z", "trialPrice": 27}], "seasonType": "TIER", "sku": "6z3dXK3C", "stackable": false, "status": "ACTIVE", "tags": ["myYShAvg", "sVmWoUvo", "JaIuD9UY"], "targetCurrencyCode": "POaJzWHi", "targetItemId": "HwmFPzlM", "targetNamespace": "twKeOmBa", "thumbnailUrl": "AmH2Ibdl", "title": "iPkjQogC", "updatedAt": "1993-04-28T00:00:00Z", "useCount": 21}, "namespace": "GBU9V5li", "order": {"currency": {"currencyCode": "VFOrvyWV", "currencySymbol": "VPxvYDSI", "currencyType": "VIRTUAL", "decimals": 20, "namespace": "W4TvoELx"}, "ext": {"qRysOEVt": {}, "5QrC7VA0": {}, "Vfrkpwz2": {}}, "free": true}, "source": "OTHER"}, "script": "owggKIJg", "type": "grantDays"}' \
    > test.out 2>&1
eval_tap $? 3 'TestFulfillmentScriptEval' test.out

#- 4 GetFulfillmentScript
samples/cli/sample-apps Platform getFulfillmentScript \
    --id 'YbU5593Q' \
    > test.out 2>&1
eval_tap $? 4 'GetFulfillmentScript' test.out

#- 5 CreateFulfillmentScript
samples/cli/sample-apps Platform createFulfillmentScript \
    --id 'IYSgam96' \
    --body '{"grantDays": "rsKn8QIs"}' \
    > test.out 2>&1
eval_tap $? 5 'CreateFulfillmentScript' test.out

#- 6 DeleteFulfillmentScript
samples/cli/sample-apps Platform deleteFulfillmentScript \
    --id 'lQT0cLqi' \
    > test.out 2>&1
eval_tap $? 6 'DeleteFulfillmentScript' test.out

#- 7 UpdateFulfillmentScript
samples/cli/sample-apps Platform updateFulfillmentScript \
    --id 'kmVhq0fr' \
    --body '{"grantDays": "C2qTLb3L"}' \
    > test.out 2>&1
eval_tap $? 7 'UpdateFulfillmentScript' test.out

#- 8 ListItemTypeConfigs
samples/cli/sample-apps Platform listItemTypeConfigs \
    > test.out 2>&1
eval_tap $? 8 'ListItemTypeConfigs' test.out

#- 9 CreateItemTypeConfig
samples/cli/sample-apps Platform createItemTypeConfig \
    --body '{"clazz": "dO51XBW3", "dryRun": true, "fulfillmentUrl": "3nimt3Pe", "itemType": "MEDIA", "purchaseConditionUrl": "Zbz2CeOy"}' \
    > test.out 2>&1
eval_tap $? 9 'CreateItemTypeConfig' test.out

#- 10 SearchItemTypeConfig
samples/cli/sample-apps Platform searchItemTypeConfig \
    --clazz 'DiLEsPFy' \
    --itemType 'INGAMEITEM' \
    > test.out 2>&1
eval_tap $? 10 'SearchItemTypeConfig' test.out

#- 11 GetItemTypeConfig
samples/cli/sample-apps Platform getItemTypeConfig \
    --id 'k5iT4K6d' \
    > test.out 2>&1
eval_tap $? 11 'GetItemTypeConfig' test.out

#- 12 UpdateItemTypeConfig
samples/cli/sample-apps Platform updateItemTypeConfig \
    --id 'mlTkFbHd' \
    --body '{"clazz": "rOzdOH28", "dryRun": true, "fulfillmentUrl": "NxZrckMO", "purchaseConditionUrl": "iI0zsm7C"}' \
    > test.out 2>&1
eval_tap $? 12 'UpdateItemTypeConfig' test.out

#- 13 DeleteItemTypeConfig
samples/cli/sample-apps Platform deleteItemTypeConfig \
    --id 'zGIfnrFn' \
    > test.out 2>&1
eval_tap $? 13 'DeleteItemTypeConfig' test.out

#- 14 QueryCampaigns
samples/cli/sample-apps Platform queryCampaigns \
    --namespace $AB_NAMESPACE \
    --limit '82' \
    --name 'jRz8rbsA' \
    --offset '50' \
    --tag 'o4ft8oFf' \
    > test.out 2>&1
eval_tap $? 14 'QueryCampaigns' test.out

#- 15 CreateCampaign
samples/cli/sample-apps Platform createCampaign \
    --namespace $AB_NAMESPACE \
    --body '{"description": "8rhmYAbb", "items": [{"extraSubscriptionDays": 48, "itemId": "EQ5EzJ0N", "itemName": "FO1w4qoB", "quantity": 9}, {"extraSubscriptionDays": 98, "itemId": "xZC0ZBob", "itemName": "SwDs5A22", "quantity": 31}, {"extraSubscriptionDays": 1, "itemId": "I0Ap77T0", "itemName": "8Wadj0rq", "quantity": 50}], "maxRedeemCountPerCampaignPerUser": 7, "maxRedeemCountPerCode": 21, "maxRedeemCountPerCodePerUser": 58, "maxSaleCount": 0, "name": "pPiZPRs7", "redeemEnd": "1988-06-02T00:00:00Z", "redeemStart": "1974-04-07T00:00:00Z", "redeemType": "ITEM", "status": "ACTIVE", "tags": ["pr8eLB2I", "dRNbeuQ0", "yI394Lhw"], "type": "REDEMPTION"}' \
    > test.out 2>&1
eval_tap $? 15 'CreateCampaign' test.out

#- 16 GetCampaign
samples/cli/sample-apps Platform getCampaign \
    --campaignId 'yOzHxlHU' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'GetCampaign' test.out

#- 17 UpdateCampaign
samples/cli/sample-apps Platform updateCampaign \
    --campaignId 'GBndXF4j' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "taABDnZa", "items": [{"extraSubscriptionDays": 79, "itemId": "xPdxyQgd", "itemName": "DKNxdZKR", "quantity": 42}, {"extraSubscriptionDays": 62, "itemId": "NbUxCxIF", "itemName": "7uIF3kdl", "quantity": 80}, {"extraSubscriptionDays": 9, "itemId": "NdkJ95J1", "itemName": "Al4qtDXm", "quantity": 47}], "maxRedeemCountPerCampaignPerUser": 24, "maxRedeemCountPerCode": 48, "maxRedeemCountPerCodePerUser": 52, "maxSaleCount": 15, "name": "83V9SZuC", "redeemEnd": "1992-08-09T00:00:00Z", "redeemStart": "1990-04-16T00:00:00Z", "redeemType": "ITEM", "status": "ACTIVE", "tags": ["CaIMkxST", "POoGZGCN", "VurWKD2h"]}' \
    > test.out 2>&1
eval_tap $? 17 'UpdateCampaign' test.out

#- 18 GetCampaignDynamic
samples/cli/sample-apps Platform getCampaignDynamic \
    --campaignId 'ZA93lhLr' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'GetCampaignDynamic' test.out

#- 19 GetRootCategories
samples/cli/sample-apps Platform getRootCategories \
    --namespace $AB_NAMESPACE \
    --storeId 'ip6ReKUT' \
    > test.out 2>&1
eval_tap $? 19 'GetRootCategories' test.out

#- 20 CreateCategory
samples/cli/sample-apps Platform createCategory \
    --namespace $AB_NAMESPACE \
    --storeId '4GyvU6Dt' \
    --body '{"categoryPath": "t8Shsd7o", "localizationDisplayNames": {"R1Xzn3Nz": "tbnmeC3R", "9whHoGky": "YNXZaNtc", "ys8977oZ": "xvtztYvl"}}' \
    > test.out 2>&1
eval_tap $? 20 'CreateCategory' test.out

#- 21 ListCategoriesBasic
samples/cli/sample-apps Platform listCategoriesBasic \
    --namespace $AB_NAMESPACE \
    --storeId 'AotJaUpU' \
    > test.out 2>&1
eval_tap $? 21 'ListCategoriesBasic' test.out

#- 22 GetCategory
samples/cli/sample-apps Platform getCategory \
    --categoryPath 'FI886Y3p' \
    --namespace $AB_NAMESPACE \
    --storeId 'hbk6sOd9' \
    > test.out 2>&1
eval_tap $? 22 'GetCategory' test.out

#- 23 UpdateCategory
samples/cli/sample-apps Platform updateCategory \
    --categoryPath 'Hd1fJo6l' \
    --namespace $AB_NAMESPACE \
    --storeId '6oldBmYK' \
    --body '{"localizationDisplayNames": {"Cx2DaQQd": "fzuokG9W", "Gfkdi0a9": "pQtiLbEO", "6WZPpfFo": "iLwGALwG"}}' \
    > test.out 2>&1
eval_tap $? 23 'UpdateCategory' test.out

#- 24 DeleteCategory
samples/cli/sample-apps Platform deleteCategory \
    --categoryPath 'GVWrPVdR' \
    --namespace $AB_NAMESPACE \
    --storeId '5gUqneTE' \
    > test.out 2>&1
eval_tap $? 24 'DeleteCategory' test.out

#- 25 GetChildCategories
samples/cli/sample-apps Platform getChildCategories \
    --categoryPath 'rNgZup1W' \
    --namespace $AB_NAMESPACE \
    --storeId 'kp0Im8BB' \
    > test.out 2>&1
eval_tap $? 25 'GetChildCategories' test.out

#- 26 GetDescendantCategories
samples/cli/sample-apps Platform getDescendantCategories \
    --categoryPath 'ODocqGB1' \
    --namespace $AB_NAMESPACE \
    --storeId 'jMk4805m' \
    > test.out 2>&1
eval_tap $? 26 'GetDescendantCategories' test.out

#- 27 QueryCodes
samples/cli/sample-apps Platform queryCodes \
    --campaignId 'H7kjoFtu' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --batchNo '2' \
    --code 'EkcNhtkC' \
    --limit '68' \
    --offset '67' \
    > test.out 2>&1
eval_tap $? 27 'QueryCodes' test.out

#- 28 CreateCodes
samples/cli/sample-apps Platform createCodes \
    --campaignId 'KW9HKRyZ' \
    --namespace $AB_NAMESPACE \
    --body '{"quantity": 48}' \
    > test.out 2>&1
eval_tap $? 28 'CreateCodes' test.out

#- 29 Download
samples/cli/sample-apps Platform download \
    --campaignId 'Jte8BmIK' \
    --namespace $AB_NAMESPACE \
    --batchNo '94' \
    > test.out 2>&1
eval_tap $? 29 'Download' test.out

#- 30 BulkDisableCodes
samples/cli/sample-apps Platform bulkDisableCodes \
    --campaignId 'DlQO15st' \
    --namespace $AB_NAMESPACE \
    --batchNo '49' \
    > test.out 2>&1
eval_tap $? 30 'BulkDisableCodes' test.out

#- 31 BulkEnableCodes
samples/cli/sample-apps Platform bulkEnableCodes \
    --campaignId '4KJISTfU' \
    --namespace $AB_NAMESPACE \
    --batchNo '56' \
    > test.out 2>&1
eval_tap $? 31 'BulkEnableCodes' test.out

#- 32 QueryRedeemHistory
samples/cli/sample-apps Platform queryRedeemHistory \
    --campaignId 'faY48m4K' \
    --namespace $AB_NAMESPACE \
    --code 'nXdOx8jf' \
    --limit '8' \
    --offset '10' \
    --userId 'X2yzuVbc' \
    > test.out 2>&1
eval_tap $? 32 'QueryRedeemHistory' test.out

#- 33 GetCode
samples/cli/sample-apps Platform getCode \
    --code 'pNkYitvS' \
    --namespace $AB_NAMESPACE \
    --redeemable 'true' \
    > test.out 2>&1
eval_tap $? 33 'GetCode' test.out

#- 34 DisableCode
samples/cli/sample-apps Platform disableCode \
    --code '9EnaJQI0' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 34 'DisableCode' test.out

#- 35 EnableCode
samples/cli/sample-apps Platform enableCode \
    --code 'S5p8NxeN' \
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
    --body '{"currencyCode": "DFWveMqk", "currencySymbol": "02nx25R9", "currencyType": "REAL", "decimals": 60, "localizationDescriptions": {"SgNs6qPa": "NsHGaC97", "Nd8frkW0": "eOFtAPQ8", "Ksmd0Fn7": "IP1BupZv"}}' \
    > test.out 2>&1
eval_tap $? 37 'CreateCurrency' test.out

#- 38 UpdateCurrency
samples/cli/sample-apps Platform updateCurrency \
    --currencyCode 'XVvn8LRP' \
    --namespace $AB_NAMESPACE \
    --body '{"localizationDescriptions": {"sKWeZDf3": "P1z08XDf", "GSAlgtfe": "RiJYXIDm", "iTzBlrpw": "QxAuhP2u"}}' \
    > test.out 2>&1
eval_tap $? 38 'UpdateCurrency' test.out

#- 39 DeleteCurrency
samples/cli/sample-apps Platform deleteCurrency \
    --currencyCode '3Ws6v0Ya' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 39 'DeleteCurrency' test.out

#- 40 GetCurrencyConfig
samples/cli/sample-apps Platform getCurrencyConfig \
    --currencyCode 'N9irL7aN' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 40 'GetCurrencyConfig' test.out

#- 41 GetCurrencySummary
samples/cli/sample-apps Platform getCurrencySummary \
    --currencyCode 'yJQfA1Vk' \
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
    --body '{"data": [{"id": "FAbhLwfd", "rewards": [{"currency": {"currencyCode": "VNjbzCIe", "namespace": "RHU9RWZH"}, "item": {"itemId": "eABOn1P3", "itemSku": "5GjcD4B4", "itemType": "lYpWJpdj"}, "quantity": 92, "type": "CURRENCY"}, {"currency": {"currencyCode": "gkgqBDgg", "namespace": "68CdLw54"}, "item": {"itemId": "vCYtg2Pw", "itemSku": "yQW1E44z", "itemType": "6SeVUYpB"}, "quantity": 82, "type": "ITEM"}, {"currency": {"currencyCode": "L8naEhzG", "namespace": "XyGRAw7i"}, "item": {"itemId": "1z63UFQi", "itemSku": "tH7eyohO", "itemType": "GFuCy0UB"}, "quantity": 100, "type": "CURRENCY"}]}, {"id": "zigPUZWY", "rewards": [{"currency": {"currencyCode": "jYc9b2F4", "namespace": "AoLuLw3x"}, "item": {"itemId": "PH8YrqjB", "itemSku": "9WMNAmZ3", "itemType": "TKmkzU7D"}, "quantity": 2, "type": "ITEM"}, {"currency": {"currencyCode": "b4eTr9gr", "namespace": "uqfi6LXx"}, "item": {"itemId": "VOsWof3y", "itemSku": "mRw5bsCd", "itemType": "MM7skWY8"}, "quantity": 33, "type": "ITEM"}, {"currency": {"currencyCode": "8SRlkdXD", "namespace": "oQnZoCZK"}, "item": {"itemId": "g24mmf7b", "itemSku": "yRGlas0I", "itemType": "XNA3LBvW"}, "quantity": 88, "type": "CURRENCY"}]}, {"id": "NKhHx3zm", "rewards": [{"currency": {"currencyCode": "idhzX1lA", "namespace": "8Wc0Y8gv"}, "item": {"itemId": "7Y8mRjn2", "itemSku": "UBW33lBQ", "itemType": "MbJ1M7vb"}, "quantity": 54, "type": "ITEM"}, {"currency": {"currencyCode": "rB6jVNdY", "namespace": "PbF1RlD0"}, "item": {"itemId": "UE3MIsJC", "itemSku": "Mx2XYAHJ", "itemType": "wN6TB3AI"}, "quantity": 91, "type": "ITEM"}, {"currency": {"currencyCode": "xLk8L5kx", "namespace": "iahAxCb2"}, "item": {"itemId": "52BBDsJP", "itemSku": "JZGtqQWU", "itemType": "efsHw4V7"}, "quantity": 47, "type": "ITEM"}]}]}' \
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
    --body '{"data": [{"platform": "XBOX", "platformDlcIdMap": {"QXovggIn": "4ut1HrxA", "9OpuGqKc": "OnVHr8KL", "S4jRB6Lj": "IholSIKC"}}, {"platform": "XBOX", "platformDlcIdMap": {"GxaUNJ85": "WPkxM8bt", "YH07DEej": "aPHtkeWQ", "QXFizycd": "X6wylRbm"}}, {"platform": "STEAM", "platformDlcIdMap": {"I8cpuEQz": "BLBTdTYD", "nDyiSI4D": "KSVnJd7B", "cietkHhW": "jX6eSa12"}}]}' \
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
    --appType 'SOFTWARE' \
    --entitlementClazz 'SUBSCRIPTION' \
    --entitlementName 'jZR8e49b' \
    --itemId '["DduZ70bI", "YJCa6oRl", "vB8yoO1h"]' \
    --limit '79' \
    --offset '15' \
    --userId 'oi8pCIfj' \
    > test.out 2>&1
eval_tap $? 48 'QueryEntitlements' test.out

#- 49 GetEntitlement
samples/cli/sample-apps Platform getEntitlement \
    --entitlementId 'rbGJe4Td' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 49 'GetEntitlement' test.out

#- 50 QueryFulfillmentHistories
samples/cli/sample-apps Platform queryFulfillmentHistories \
    --namespace $AB_NAMESPACE \
    --limit '40' \
    --offset '79' \
    --status 'FAIL' \
    --userId 'DvHBJk9N' \
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
    --body '{"bundleId": "VEimXnJx", "password": "ypYIJSpn"}' \
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
    --body '{"sandboxId": "6FFUPUCS"}' \
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
    --body '{"applicationName": "J0CFOjQS", "serviceAccountId": "utuPHk7t"}' \
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
    --body '{"data": [{"itemIdentity": "tCnJuOt9", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"wiyY1utg": "sHJErjgE", "jt5pIA72": "qAKrnO82", "yZRaKVfG": "mA4MIX5x"}}, {"itemIdentity": "DE8xWRuR", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"ryuWxUFr": "oIf09GMq", "ZwbAEn4d": "2k98oI27", "oi5PizPJ": "YIeAhP3g"}}, {"itemIdentity": "bbYvI9F3", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"uXBlgBbm": "PbnnJOEj", "H42mAMlD": "9NDOUSyU", "R20vQCi8": "bFwfNiEZ"}}]}' \
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
    --body '{"environment": "ayUneX4o"}' \
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
    --body '{"appId": "9Esq2Fn1", "publisherAuthenticationKey": "MvVd8wRU"}' \
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
    --body '{"clientId": "5vTZ1fk8", "clientSecret": "uLiNJLYq", "organizationId": "H5Q5Rcsa"}' \
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
    --body '{"relyingPartyCert": "um2Qvqqx"}' \
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
    --password 'nB9qtsQ3' \
    > test.out 2>&1
eval_tap $? 79 'UpdateXblBPCertFile' test.out

#- 80 DownloadInvoiceDetails
samples/cli/sample-apps Platform downloadInvoiceDetails \
    --namespace $AB_NAMESPACE \
    --feature 'mQ0AC5or' \
    --itemId 'BtbbeQtN' \
    --itemType 'MEDIA' \
    --endTime 'bXPC8eh7' \
    --startTime '2HJt1HF9' \
    > test.out 2>&1
eval_tap $? 80 'DownloadInvoiceDetails' test.out

#- 81 GenerateInvoiceSummary
samples/cli/sample-apps Platform generateInvoiceSummary \
    --namespace $AB_NAMESPACE \
    --feature 'XSh0hUQD' \
    --itemId 'HKkk1Y5e' \
    --itemType 'MEDIA' \
    --endTime 'EeVbU59b' \
    --startTime 'rU9vjkXl' \
    > test.out 2>&1
eval_tap $? 81 'GenerateInvoiceSummary' test.out

#- 82 SyncInGameItem
samples/cli/sample-apps Platform syncInGameItem \
    --namespace $AB_NAMESPACE \
    --storeId 'NBPpjBk9' \
    --body '{"categoryPath": "LIbvpC1k", "targetItemId": "dxI7KPYb", "targetNamespace": "tijZuf9a"}' \
    > test.out 2>&1
eval_tap $? 82 'SyncInGameItem' test.out

#- 83 CreateItem
samples/cli/sample-apps Platform createItem \
    --namespace $AB_NAMESPACE \
    --storeId '4QL6B0oT' \
    --body '{"appId": "lMI2K24m", "appType": "DEMO", "baseAppId": "hvqwvxEn", "boothName": "H25D7gnP", "categoryPath": "bbIOH8uL", "clazz": "EZJfwvf9", "displayOrder": 83, "entitlementType": "DURABLE", "ext": {"F0HWTqvi": {}, "4ErHPUQC": {}, "DkETXi9j": {}}, "features": ["dMjY30LG", "kywhhNWM", "tHgw4sae"], "images": [{"as": "pEI41jFk", "caption": "BD9FWRrC", "height": 87, "imageUrl": "tuhAmaMj", "smallImageUrl": "M8TPhpm7", "width": 96}, {"as": "fRZzaOkC", "caption": "mwtu9JAo", "height": 58, "imageUrl": "Z8qpiwkQ", "smallImageUrl": "ROtEzY22", "width": 24}, {"as": "30txYEFX", "caption": "ppU7jWWU", "height": 99, "imageUrl": "uPMlMxLx", "smallImageUrl": "cNLj0EZ5", "width": 5}], "itemIds": ["GwnPYpgY", "MekrBTn4", "kqi0COBS"], "itemQty": {"Qh0Iz3fJ": 8, "zvsDxnoF": 11, "0NKXcKOB": 99}, "itemType": "OPTIONBOX", "listable": true, "localizations": {"AwP46O9G": {"description": "l5XQy7Ss", "localExt": {"NfnNvd93": {}, "3t8XWmho": {}, "owv4M1KT": {}}, "longDescription": "sjKZ6M6i", "title": "0mQIQsjk"}, "SANVbxlf": {"description": "AJbNYjWJ", "localExt": {"K7JawB0Z": {}, "ZgsHrNq8": {}, "ykn1UVJO": {}}, "longDescription": "IxPPU9wJ", "title": "cB2vmfjO"}, "8AVEEoux": {"description": "UFUS74IQ", "localExt": {"zOsqSXcZ": {}, "gtbQKKNr": {}, "dJ5JwLR8": {}}, "longDescription": "w3Ve0BLh", "title": "ULhTeeyR"}}, "maxCount": 57, "maxCountPerUser": 87, "name": "FIqCPQ2k", "optionBoxConfig": {"boxItems": [{"count": 75, "itemId": "GHX0uI4c", "itemSku": "4E569FuC"}, {"count": 2, "itemId": "NBreUXgu", "itemSku": "EcyZyuvM"}, {"count": 14, "itemId": "SsepIgo2", "itemSku": "BnvUCk00"}]}, "purchasable": true, "recurring": {"cycle": "QUARTERLY", "fixedFreeDays": 20, "fixedTrialCycles": 81, "graceDays": 47}, "regionData": {"52j8WMD9": [{"currencyCode": "3ZCgJy0U", "currencyNamespace": "KhKCxCFF", "currencyType": "VIRTUAL", "discountAmount": 15, "discountExpireAt": "1990-06-06T00:00:00Z", "discountPercentage": 45, "discountPurchaseAt": "1975-07-28T00:00:00Z", "discountedPrice": 97, "expireAt": "1972-02-20T00:00:00Z", "price": 33, "purchaseAt": "1977-05-20T00:00:00Z", "trialPrice": 12}, {"currencyCode": "Xc1nYeTy", "currencyNamespace": "w2caGEDK", "currencyType": "REAL", "discountAmount": 66, "discountExpireAt": "1983-03-23T00:00:00Z", "discountPercentage": 90, "discountPurchaseAt": "1986-06-18T00:00:00Z", "discountedPrice": 12, "expireAt": "1979-03-20T00:00:00Z", "price": 82, "purchaseAt": "1973-03-17T00:00:00Z", "trialPrice": 79}, {"currencyCode": "6yDimblE", "currencyNamespace": "8QoxQ5GM", "currencyType": "VIRTUAL", "discountAmount": 84, "discountExpireAt": "1990-05-04T00:00:00Z", "discountPercentage": 8, "discountPurchaseAt": "1982-04-06T00:00:00Z", "discountedPrice": 41, "expireAt": "1976-06-21T00:00:00Z", "price": 22, "purchaseAt": "1980-03-06T00:00:00Z", "trialPrice": 68}], "q0aTH62a": [{"currencyCode": "EyGQsIrz", "currencyNamespace": "EbY1EsPX", "currencyType": "REAL", "discountAmount": 15, "discountExpireAt": "1998-03-17T00:00:00Z", "discountPercentage": 15, "discountPurchaseAt": "1992-06-11T00:00:00Z", "discountedPrice": 41, "expireAt": "1981-02-20T00:00:00Z", "price": 78, "purchaseAt": "1984-07-30T00:00:00Z", "trialPrice": 83}, {"currencyCode": "80Dq3t8c", "currencyNamespace": "IAROvH7B", "currencyType": "REAL", "discountAmount": 36, "discountExpireAt": "1971-02-03T00:00:00Z", "discountPercentage": 7, "discountPurchaseAt": "1990-01-20T00:00:00Z", "discountedPrice": 88, "expireAt": "1974-08-31T00:00:00Z", "price": 14, "purchaseAt": "1998-06-11T00:00:00Z", "trialPrice": 76}, {"currencyCode": "euGk0gro", "currencyNamespace": "BWBD9utC", "currencyType": "REAL", "discountAmount": 8, "discountExpireAt": "1988-01-28T00:00:00Z", "discountPercentage": 86, "discountPurchaseAt": "1983-03-14T00:00:00Z", "discountedPrice": 70, "expireAt": "1988-02-26T00:00:00Z", "price": 87, "purchaseAt": "1988-02-29T00:00:00Z", "trialPrice": 69}], "ztJHmr4X": [{"currencyCode": "S5FkgM1h", "currencyNamespace": "IyA1SZvy", "currencyType": "VIRTUAL", "discountAmount": 30, "discountExpireAt": "1973-11-19T00:00:00Z", "discountPercentage": 44, "discountPurchaseAt": "1979-05-27T00:00:00Z", "discountedPrice": 48, "expireAt": "1995-03-04T00:00:00Z", "price": 60, "purchaseAt": "1972-11-13T00:00:00Z", "trialPrice": 12}, {"currencyCode": "FNmKP3Co", "currencyNamespace": "Ck47MDyi", "currencyType": "VIRTUAL", "discountAmount": 36, "discountExpireAt": "1996-03-20T00:00:00Z", "discountPercentage": 57, "discountPurchaseAt": "1995-11-04T00:00:00Z", "discountedPrice": 46, "expireAt": "1998-05-28T00:00:00Z", "price": 81, "purchaseAt": "1977-05-11T00:00:00Z", "trialPrice": 71}, {"currencyCode": "mEAxGvF3", "currencyNamespace": "REDzieKN", "currencyType": "REAL", "discountAmount": 49, "discountExpireAt": "1988-01-10T00:00:00Z", "discountPercentage": 68, "discountPurchaseAt": "1996-12-26T00:00:00Z", "discountedPrice": 15, "expireAt": "1982-09-09T00:00:00Z", "price": 42, "purchaseAt": "1995-12-02T00:00:00Z", "trialPrice": 98}]}, "seasonType": "PASS", "sku": "ItXrDiZR", "stackable": false, "status": "INACTIVE", "tags": ["uX3jYEn5", "FGtylWyu", "Mq0qG9wk"], "targetCurrencyCode": "LgVS2gor", "targetNamespace": "D8BT41nZ", "thumbnailUrl": "OnOaRmgP", "useCount": 91}' \
    > test.out 2>&1
eval_tap $? 83 'CreateItem' test.out

#- 84 GetItemByAppId
samples/cli/sample-apps Platform getItemByAppId \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --storeId 'MnJjL85A' \
    --appId 'LWbbONPd' \
    > test.out 2>&1
eval_tap $? 84 'GetItemByAppId' test.out

#- 85 QueryItems
samples/cli/sample-apps Platform queryItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --appType 'GAME' \
    --availableDate 'txwLusOi' \
    --baseAppId 'Jeymy345' \
    --categoryPath 'EGO0QLSi' \
    --features 'R1b5dR8H' \
    --includeSubCategoryItem 'true' \
    --itemType 'CODE' \
    --limit '97' \
    --offset '50' \
    --region 'amY8iud7' \
    --sortBy '["name:asc", "name:desc", "updatedAt"]' \
    --storeId 'KyfAkViq' \
    --tags 'JPbz7leu' \
    --targetNamespace 'ZSHRPCQr' \
    > test.out 2>&1
eval_tap $? 85 'QueryItems' test.out

#- 86 ListBasicItemsByFeatures
samples/cli/sample-apps Platform listBasicItemsByFeatures \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --features '["wiT8496N", "RqTSKtXK", "xe2FYNFh"]' \
    > test.out 2>&1
eval_tap $? 86 'ListBasicItemsByFeatures' test.out

#- 87 GetItemBySku
samples/cli/sample-apps Platform getItemBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'l8PAzgpZ' \
    --sku '5Vxr4Cj8' \
    > test.out 2>&1
eval_tap $? 87 'GetItemBySku' test.out

#- 88 GetLocaleItemBySku
samples/cli/sample-apps Platform getLocaleItemBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --language 'VJZF2ZGD' \
    --populateBundle 'false' \
    --region 'zw4uXXDk' \
    --storeId 'Q58tGzWZ' \
    --sku 'GzwooclH' \
    > test.out 2>&1
eval_tap $? 88 'GetLocaleItemBySku' test.out

#- 89 GetItemIdBySku
samples/cli/sample-apps Platform getItemIdBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'YVlswLni' \
    --sku 'oQ0FNH3b' \
    > test.out 2>&1
eval_tap $? 89 'GetItemIdBySku' test.out

#- 90 GetBulkItemIdBySkus
samples/cli/sample-apps Platform getBulkItemIdBySkus \
    --namespace $AB_NAMESPACE \
    --sku '["0mTI42sm", "4go68rE1", "mP1nPjFd"]' \
    --storeId 'YjzLDGAh' \
    > test.out 2>&1
eval_tap $? 90 'GetBulkItemIdBySkus' test.out

#- 91 BulkGetLocaleItems
samples/cli/sample-apps Platform bulkGetLocaleItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --language '6QI0UrZL' \
    --region 'PPonW1FT' \
    --storeId '7P4gDPUA' \
    --itemIds 'rEswQD4h' \
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
    --userId 'IxgsGFcA' \
    --body '{"itemIds": ["ZXSCeoWe", "N9PePARP", "8a6QSlKk"]}' \
    > test.out 2>&1
eval_tap $? 93 'ValidateItemPurchaseCondition' test.out

#- 94 SearchItems
samples/cli/sample-apps Platform searchItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --itemType 'MEDIA' \
    --limit '21' \
    --offset '93' \
    --sortBy '9e6pMwCF' \
    --storeId 'pnmVtIwz' \
    --keyword 'iH1Xg5yM' \
    --language 'J7zbrP2q' \
    > test.out 2>&1
eval_tap $? 94 'SearchItems' test.out

#- 95 QueryUncategorizedItems
samples/cli/sample-apps Platform queryUncategorizedItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --limit '71' \
    --offset '63' \
    --sortBy '["name", "displayOrder"]' \
    --storeId 'AKSiiHe3' \
    > test.out 2>&1
eval_tap $? 95 'QueryUncategorizedItems' test.out

#- 96 GetItem
samples/cli/sample-apps Platform getItem \
    --itemId 'Mh0PcLLB' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'wR5JsqsV' \
    > test.out 2>&1
eval_tap $? 96 'GetItem' test.out

#- 97 UpdateItem
samples/cli/sample-apps Platform updateItem \
    --itemId 'lHI0fej5' \
    --namespace $AB_NAMESPACE \
    --storeId 'p9K49IEE' \
    --body '{"appId": "2W5Ud7nA", "appType": "DLC", "baseAppId": "Eouxpsht", "boothName": "eFk5SlI8", "categoryPath": "qATHkCtP", "clazz": "HZrI8qFd", "displayOrder": 73, "entitlementType": "DURABLE", "ext": {"ZTPwabpd": {}, "zOr7OVlX": {}, "2ouznYdO": {}}, "features": ["QiLZTZfV", "4QfcqfLM", "o5giqFo0"], "images": [{"as": "VYC1Z47N", "caption": "5Uga3Nxc", "height": 31, "imageUrl": "ykEQL2jB", "smallImageUrl": "2y2vWDag", "width": 63}, {"as": "rBtw2IP2", "caption": "cSdRWFsJ", "height": 11, "imageUrl": "owez5gB7", "smallImageUrl": "UhXKVYCy", "width": 74}, {"as": "1ImKHVeE", "caption": "aX82gmjN", "height": 39, "imageUrl": "VqikBxrb", "smallImageUrl": "FW6mEy6v", "width": 35}], "itemIds": ["MEhnJexB", "TwkIUW4B", "4VnIGGIN"], "itemQty": {"RWlS2hNO": 14, "7w3QAeNU": 14, "rfVD14Zy": 67}, "itemType": "INGAMEITEM", "listable": false, "localizations": {"6rExK8a3": {"description": "XUNQEUOb", "localExt": {"SpFpWUZp": {}, "ifc3vGUJ": {}, "ffIesrVY": {}}, "longDescription": "TtSnMi4e", "title": "063Ic6VL"}, "D4c5u5nC": {"description": "HRDhK79I", "localExt": {"aQ7N1tnv": {}, "0OaelNqG": {}, "znyIhJCI": {}}, "longDescription": "dks1Gmxi", "title": "2EYYIPlw"}, "KhhGHlBD": {"description": "1anazrsD", "localExt": {"LaOYoaut": {}, "SSx9oLm9": {}, "F9HWNxCJ": {}}, "longDescription": "u703KugY", "title": "nsWbdZV1"}}, "maxCount": 55, "maxCountPerUser": 15, "name": "6YQDsRX5", "optionBoxConfig": {"boxItems": [{"count": 72, "itemId": "nVTtHNEW", "itemSku": "9QJqni9c"}, {"count": 89, "itemId": "HKSFKLzt", "itemSku": "KvRYCmve"}, {"count": 21, "itemId": "yASNVggG", "itemSku": "8E21KS9R"}]}, "purchasable": false, "recurring": {"cycle": "MONTHLY", "fixedFreeDays": 22, "fixedTrialCycles": 49, "graceDays": 0}, "regionData": {"CK2HZuAb": [{"currencyCode": "wbsN9y26", "currencyNamespace": "SZjq5MtG", "currencyType": "REAL", "discountAmount": 42, "discountExpireAt": "1982-03-22T00:00:00Z", "discountPercentage": 56, "discountPurchaseAt": "1988-07-21T00:00:00Z", "discountedPrice": 34, "expireAt": "1993-09-27T00:00:00Z", "price": 19, "purchaseAt": "1974-01-24T00:00:00Z", "trialPrice": 42}, {"currencyCode": "U2PTLVOw", "currencyNamespace": "cvONZoSI", "currencyType": "REAL", "discountAmount": 3, "discountExpireAt": "1983-05-05T00:00:00Z", "discountPercentage": 47, "discountPurchaseAt": "1993-07-16T00:00:00Z", "discountedPrice": 11, "expireAt": "1983-04-04T00:00:00Z", "price": 0, "purchaseAt": "1999-10-20T00:00:00Z", "trialPrice": 59}, {"currencyCode": "6H0B0pfs", "currencyNamespace": "8ZoG2n2u", "currencyType": "REAL", "discountAmount": 75, "discountExpireAt": "1974-11-12T00:00:00Z", "discountPercentage": 1, "discountPurchaseAt": "1994-02-05T00:00:00Z", "discountedPrice": 39, "expireAt": "1991-05-10T00:00:00Z", "price": 89, "purchaseAt": "1990-06-18T00:00:00Z", "trialPrice": 72}], "l7KZJDdE": [{"currencyCode": "brgnEZGJ", "currencyNamespace": "vYCTcfC8", "currencyType": "REAL", "discountAmount": 80, "discountExpireAt": "1972-06-09T00:00:00Z", "discountPercentage": 40, "discountPurchaseAt": "1985-12-01T00:00:00Z", "discountedPrice": 24, "expireAt": "1994-08-09T00:00:00Z", "price": 57, "purchaseAt": "1974-05-09T00:00:00Z", "trialPrice": 11}, {"currencyCode": "RoKCW0iX", "currencyNamespace": "vGO5yhsM", "currencyType": "VIRTUAL", "discountAmount": 64, "discountExpireAt": "1975-12-15T00:00:00Z", "discountPercentage": 79, "discountPurchaseAt": "1984-07-26T00:00:00Z", "discountedPrice": 34, "expireAt": "1997-02-05T00:00:00Z", "price": 9, "purchaseAt": "1998-08-08T00:00:00Z", "trialPrice": 43}, {"currencyCode": "XHq7TghU", "currencyNamespace": "aDRG56dP", "currencyType": "REAL", "discountAmount": 24, "discountExpireAt": "1980-06-26T00:00:00Z", "discountPercentage": 70, "discountPurchaseAt": "1998-10-04T00:00:00Z", "discountedPrice": 71, "expireAt": "1973-09-10T00:00:00Z", "price": 27, "purchaseAt": "1976-12-22T00:00:00Z", "trialPrice": 72}], "joyskzuC": [{"currencyCode": "uYajgbpp", "currencyNamespace": "Y73jff9f", "currencyType": "REAL", "discountAmount": 88, "discountExpireAt": "1971-08-27T00:00:00Z", "discountPercentage": 32, "discountPurchaseAt": "1992-08-11T00:00:00Z", "discountedPrice": 12, "expireAt": "1994-11-16T00:00:00Z", "price": 13, "purchaseAt": "1979-07-20T00:00:00Z", "trialPrice": 67}, {"currencyCode": "rwJ4lcDZ", "currencyNamespace": "AH6UFa6T", "currencyType": "REAL", "discountAmount": 71, "discountExpireAt": "1997-08-10T00:00:00Z", "discountPercentage": 98, "discountPurchaseAt": "1977-07-15T00:00:00Z", "discountedPrice": 88, "expireAt": "1994-07-17T00:00:00Z", "price": 20, "purchaseAt": "1996-08-03T00:00:00Z", "trialPrice": 78}, {"currencyCode": "ZS61bB5d", "currencyNamespace": "GnTXXJBL", "currencyType": "REAL", "discountAmount": 63, "discountExpireAt": "1986-03-01T00:00:00Z", "discountPercentage": 49, "discountPurchaseAt": "1975-01-13T00:00:00Z", "discountedPrice": 65, "expireAt": "1974-01-08T00:00:00Z", "price": 37, "purchaseAt": "1981-06-29T00:00:00Z", "trialPrice": 75}]}, "seasonType": "PASS", "sku": "EJzWzGz4", "stackable": true, "status": "INACTIVE", "tags": ["5EaWKwbr", "lRaO2Xr3", "NGgu4Akn"], "targetCurrencyCode": "2OEcvoBG", "targetNamespace": "uboITWt4", "thumbnailUrl": "17Tpc6CR", "useCount": 60}' \
    > test.out 2>&1
eval_tap $? 97 'UpdateItem' test.out

#- 98 DeleteItem
samples/cli/sample-apps Platform deleteItem \
    --itemId 'WqynhOez' \
    --namespace $AB_NAMESPACE \
    --force 'true' \
    --storeId 'HO4kxOKR' \
    > test.out 2>&1
eval_tap $? 98 'DeleteItem' test.out

#- 99 AcquireItem
samples/cli/sample-apps Platform acquireItem \
    --itemId 'JIn7piim' \
    --namespace $AB_NAMESPACE \
    --body '{"count": 92, "orderNo": "OyzNJ7S1"}' \
    > test.out 2>&1
eval_tap $? 99 'AcquireItem' test.out

#- 100 GetApp
samples/cli/sample-apps Platform getApp \
    --itemId 'm57TmRQD' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --storeId 'DqvAre9w' \
    > test.out 2>&1
eval_tap $? 100 'GetApp' test.out

#- 101 UpdateApp
samples/cli/sample-apps Platform updateApp \
    --itemId 'Ik4RorYU' \
    --namespace $AB_NAMESPACE \
    --storeId 'KF8JTUuy' \
    --body '{"carousel": [{"alt": "oMKWOFJA", "previewUrl": "MZCccvCS", "thumbnailUrl": "uPeTJRKP", "type": "image", "url": "vluUT2Og", "videoSource": "youtube"}, {"alt": "CDXSGGRk", "previewUrl": "4QSyiZmh", "thumbnailUrl": "ORxtE5dn", "type": "video", "url": "iX4IoxYJ", "videoSource": "youtube"}, {"alt": "9CsV9We5", "previewUrl": "LOFQKnBq", "thumbnailUrl": "aFHAMYJ5", "type": "image", "url": "I1aRniZh", "videoSource": "generic"}], "developer": "tbJYre8E", "forumUrl": "VcHvWwnL", "genres": ["Casual", "Action", "FreeToPlay"], "localizations": {"NrIfn5li": {"announcement": "PFXhx9R1", "slogan": "bNfdlscM"}, "ppwcX6Lb": {"announcement": "ra0ZYoHK", "slogan": "GoojOpeo"}, "BTbBPQoC": {"announcement": "WRBP0BE2", "slogan": "EVApShSN"}}, "platformRequirements": {"5SFdwuDd": [{"additionals": "CXSkKeLH", "directXVersion": "TtGiQiZ2", "diskSpace": "qWitbHix", "graphics": "C5zNXwL4", "label": "18We2Db9", "osVersion": "HCJ79mMd", "processor": "6KJOenLn", "ram": "3KUgTXC2", "soundCard": "4qtw6WHN"}, {"additionals": "ZK6xu4Px", "directXVersion": "aTQ2PqQA", "diskSpace": "OqIBYawi", "graphics": "07P7KzG2", "label": "JhaIaQwV", "osVersion": "3HB4hlOK", "processor": "kEsZ9O9q", "ram": "kBUV1sWS", "soundCard": "pO3ddsET"}, {"additionals": "n9Y2xnUA", "directXVersion": "8LkUmXsP", "diskSpace": "rQ83qQLK", "graphics": "UnaJ6GzL", "label": "KMNYD7mF", "osVersion": "0VwTjdO3", "processor": "7kfkJXOz", "ram": "WFZ0152H", "soundCard": "YJYwbzQt"}], "nQkb74ML": [{"additionals": "jaIo73uw", "directXVersion": "25pNWv3P", "diskSpace": "Azw3Hanu", "graphics": "GSlccbnl", "label": "9XIifT5a", "osVersion": "YHC1wR1C", "processor": "J7Eja0vf", "ram": "rZf1q1VP", "soundCard": "CvUkDWd6"}, {"additionals": "QvI0DYCQ", "directXVersion": "z0EcGBGv", "diskSpace": "C7Y6CVgO", "graphics": "RrTw6tbJ", "label": "jyG19iQm", "osVersion": "p9M0wkNm", "processor": "04aKKPVU", "ram": "HpGXgxqg", "soundCard": "QLNPIKVt"}, {"additionals": "RsKf481U", "directXVersion": "QsqPl6kE", "diskSpace": "HNo3qpAC", "graphics": "dKdp4790", "label": "UbloZeUg", "osVersion": "8tf6pdvS", "processor": "Zr1Lj5lk", "ram": "XghvSEJF", "soundCard": "H7ZUr7HI"}], "ErQP3EPw": [{"additionals": "nfjyblq1", "directXVersion": "llxrpU8W", "diskSpace": "CCxFQ85S", "graphics": "vvn7QgZ9", "label": "kEmXLWDE", "osVersion": "6tqwJqpp", "processor": "lAzh5Zar", "ram": "FXXq8Zbd", "soundCard": "j9QXj2LF"}, {"additionals": "SnETNPqO", "directXVersion": "A7GpNjHX", "diskSpace": "Hq0LlUnG", "graphics": "DTT0HMfl", "label": "bXZSyVnl", "osVersion": "VQ18kDFH", "processor": "w63U1avu", "ram": "g5dnRty6", "soundCard": "diIFj2Y8"}, {"additionals": "fGh9jpta", "directXVersion": "PLnLNTub", "diskSpace": "20luLD3V", "graphics": "5GFvegSH", "label": "pYuPojQW", "osVersion": "HV0aqhne", "processor": "leMjLhKN", "ram": "LYU8ifSW", "soundCard": "MdeuBQtA"}]}, "platforms": ["IOS", "MacOS", "MacOS"], "players": ["CrossPlatformMulti", "Coop", "Multi"], "primaryGenre": "FreeToPlay", "publisher": "vBBZPjtu", "releaseDate": "1993-05-26T00:00:00Z", "websiteUrl": "d4KQzamx"}' \
    > test.out 2>&1
eval_tap $? 101 'UpdateApp' test.out

#- 102 DisableItem
samples/cli/sample-apps Platform disableItem \
    --itemId '4w4DcHnf' \
    --namespace $AB_NAMESPACE \
    --storeId 'IgKS0l0X' \
    > test.out 2>&1
eval_tap $? 102 'DisableItem' test.out

#- 103 GetItemDynamicData
samples/cli/sample-apps Platform getItemDynamicData \
    --itemId 'JKRQ3vcZ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 103 'GetItemDynamicData' test.out

#- 104 EnableItem
samples/cli/sample-apps Platform enableItem \
    --itemId 'ESvF3Wkv' \
    --namespace $AB_NAMESPACE \
    --storeId 'MmCHeIhl' \
    > test.out 2>&1
eval_tap $? 104 'EnableItem' test.out

#- 105 FeatureItem
samples/cli/sample-apps Platform featureItem \
    --feature 'ecZ6vd9K' \
    --itemId 'ktaqn6Gl' \
    --namespace $AB_NAMESPACE \
    --storeId 'ggqWKGhE' \
    > test.out 2>&1
eval_tap $? 105 'FeatureItem' test.out

#- 106 DefeatureItem
samples/cli/sample-apps Platform defeatureItem \
    --feature '12yUGMOC' \
    --itemId 'Y71ICK4P' \
    --namespace $AB_NAMESPACE \
    --storeId 'ocl2NSlt' \
    > test.out 2>&1
eval_tap $? 106 'DefeatureItem' test.out

#- 107 GetLocaleItem
samples/cli/sample-apps Platform getLocaleItem \
    --itemId 'sgFJ1z83' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --language 'IjI2FlQP' \
    --populateBundle 'true' \
    --region 'XcqSUAdT' \
    --storeId 'moAA4o1L' \
    > test.out 2>&1
eval_tap $? 107 'GetLocaleItem' test.out

#- 108 UpdateItemPurchaseCondition
samples/cli/sample-apps Platform updateItemPurchaseCondition \
    --itemId '83QgtMyr' \
    --namespace $AB_NAMESPACE \
    --storeId 'vuCkoZXg' \
    --body '{"purchaseCondition": {"conditionGroups": [{"operator": "and", "predicates": [{"anyOf": 54, "comparison": "isGreaterThan", "name": "tQPoDR2K", "predicateType": "SeasonPassPredicate", "value": "fypgagO2", "values": ["0Qu0aaFY", "SLi6pkWk", "hJFoOycN"]}, {"anyOf": 16, "comparison": "excludes", "name": "hP6mTlhW", "predicateType": "SeasonPassPredicate", "value": "58OT0gMG", "values": ["tqCOeeHo", "UwQLjOaD", "Q2zAVcvy"]}, {"anyOf": 58, "comparison": "isNot", "name": "gKc976P6", "predicateType": "SeasonTierPredicate", "value": "0r5K6aGG", "values": ["fT2r3qgS", "fdxRuzhL", "Nbo4Vhew"]}]}, {"operator": "and", "predicates": [{"anyOf": 31, "comparison": "is", "name": "A0VlP5sQ", "predicateType": "SeasonTierPredicate", "value": "Dx7DkZxm", "values": ["bjfF8JBB", "JcP8heSn", "qhaO6xCS"]}, {"anyOf": 26, "comparison": "isGreaterThan", "name": "xRPelglh", "predicateType": "SeasonPassPredicate", "value": "vJYf8Tpw", "values": ["nGBE6dLy", "IIl2MpkN", "5mCxqF6t"]}, {"anyOf": 68, "comparison": "isNot", "name": "FJdiAHj1", "predicateType": "SeasonPassPredicate", "value": "jIXuRkOr", "values": ["UJTLPD48", "AhOKFbMT", "HDceWULH"]}]}, {"operator": "and", "predicates": [{"anyOf": 56, "comparison": "is", "name": "hq24s8dR", "predicateType": "EntitlementPredicate", "value": "leAD84ld", "values": ["nxIPEo5d", "mELH3LUG", "D5w3Zrhs"]}, {"anyOf": 8, "comparison": "includes", "name": "EfAtmQtZ", "predicateType": "SeasonTierPredicate", "value": "RWPmgIb7", "values": ["o8wcMISC", "1Ma7YW75", "DcJ9oNBm"]}, {"anyOf": 16, "comparison": "includes", "name": "akCv26QD", "predicateType": "SeasonTierPredicate", "value": "BCvBJaYj", "values": ["hcuKc0lx", "R6sFMh1f", "Y8dCryC4"]}]}]}}' \
    > test.out 2>&1
eval_tap $? 108 'UpdateItemPurchaseCondition' test.out

#- 109 ReturnItem
samples/cli/sample-apps Platform returnItem \
    --itemId 'NSYFEv4D' \
    --namespace $AB_NAMESPACE \
    --body '{"orderNo": "DmD23XvI"}' \
    > test.out 2>&1
eval_tap $? 109 'ReturnItem' test.out

#- 110 QueryKeyGroups
samples/cli/sample-apps Platform queryKeyGroups \
    --namespace $AB_NAMESPACE \
    --limit '82' \
    --name 'UVcaT2LB' \
    --offset '3' \
    --tag 'CLRsjiKQ' \
    > test.out 2>&1
eval_tap $? 110 'QueryKeyGroups' test.out

#- 111 CreateKeyGroup
samples/cli/sample-apps Platform createKeyGroup \
    --namespace $AB_NAMESPACE \
    --body '{"description": "qpm7q9uB", "name": "AcpGOXzd", "status": "ACTIVE", "tags": ["FNrAhI4k", "bfWhT0Uv", "bwHqY4wp"]}' \
    > test.out 2>&1
eval_tap $? 111 'CreateKeyGroup' test.out

#- 112 GetKeyGroupByBoothName
samples/cli/sample-apps Platform getKeyGroupByBoothName \
    --namespace $AB_NAMESPACE \
    --boothName '38Mb9veU' \
    > test.out 2>&1
eval_tap $? 112 'GetKeyGroupByBoothName' test.out

#- 113 GetKeyGroup
samples/cli/sample-apps Platform getKeyGroup \
    --keyGroupId '7VmtgaVL' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 113 'GetKeyGroup' test.out

#- 114 UpdateKeyGroup
samples/cli/sample-apps Platform updateKeyGroup \
    --keyGroupId '1nAGp3wu' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "6AIsJufv", "name": "0xxaFZYf", "status": "ACTIVE", "tags": ["YosI23fi", "Tt3yR3gI", "h5R0iNMq"]}' \
    > test.out 2>&1
eval_tap $? 114 'UpdateKeyGroup' test.out

#- 115 GetKeyGroupDynamic
samples/cli/sample-apps Platform getKeyGroupDynamic \
    --keyGroupId 'KJdVAFCe' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 115 'GetKeyGroupDynamic' test.out

#- 116 ListKeys
samples/cli/sample-apps Platform listKeys \
    --keyGroupId 'S4vlaQ7z' \
    --namespace $AB_NAMESPACE \
    --limit '73' \
    --offset '11' \
    --status 'ACTIVE' \
    > test.out 2>&1
eval_tap $? 116 'ListKeys' test.out

#- 117 UploadKeys
samples/cli/sample-apps Platform uploadKeys \
    --keyGroupId '7BM67YZt' \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 117 'UploadKeys' test.out

#- 118 QueryOrders
samples/cli/sample-apps Platform queryOrders \
    --namespace $AB_NAMESPACE \
    --endTime 'Xc2taYKV' \
    --limit '83' \
    --offset '97' \
    --orderNos '["ucKFgTGs", "zbUnUzh3", "xs5b8Blz"]' \
    --sortBy '66xdhGW0' \
    --startTime '0IHjzFMp' \
    --status 'DELETED' \
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
    --orderNo 'VbNTdvzQ' \
    > test.out 2>&1
eval_tap $? 120 'GetOrder' test.out

#- 121 RefundOrder
samples/cli/sample-apps Platform refundOrder \
    --namespace $AB_NAMESPACE \
    --orderNo '0iDQJK6v' \
    --body '{"description": "RQeuqfs9"}' \
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
    --body '{"dryRun": false, "notifyUrl": "EfJXGxeQ", "privateKey": "1Ul5aBeb"}' \
    > test.out 2>&1
eval_tap $? 123 'UpdatePaymentCallbackConfig' test.out

#- 124 QueryPaymentNotifications
samples/cli/sample-apps Platform queryPaymentNotifications \
    --namespace $AB_NAMESPACE \
    --endDate 'LxLh55VG' \
    --externalId '6D2jl8Dh' \
    --limit '10' \
    --notificationSource 'PAYPAL' \
    --notificationType 'AGriAsGD' \
    --offset '70' \
    --paymentOrderNo 'bf3x5Ozt' \
    --startDate '0aEwBkm4' \
    --status 'WARN' \
    > test.out 2>&1
eval_tap $? 124 'QueryPaymentNotifications' test.out

#- 125 QueryPaymentOrders
samples/cli/sample-apps Platform queryPaymentOrders \
    --namespace $AB_NAMESPACE \
    --channel 'INTERNAL' \
    --extTxId 'ufThIFe2' \
    --limit '38' \
    --offset '0' \
    --status 'REFUND_FAILED' \
    > test.out 2>&1
eval_tap $? 125 'QueryPaymentOrders' test.out

#- 126 CreatePaymentOrderByDedicated
samples/cli/sample-apps Platform createPaymentOrderByDedicated \
    --namespace $AB_NAMESPACE \
    --body '{"currencyCode": "of0xbKcJ", "currencyNamespace": "gpCoNUXJ", "customParameters": {"QVFHPMw7": {}, "wY0Etona": {}, "BUemDH9w": {}}, "description": "JxVQp6TR", "extOrderNo": "7s9BYvg3", "extUserId": "bqNgUDtM", "itemType": "MEDIA", "language": "wAS_BQ", "metadata": {"yf0ESeLd": "a6WXkFMO", "rMHzrDqA": "QSm6KgS9", "JTNb292X": "sjDpzR8C"}, "notifyUrl": "rsSMNa3J", "omitNotification": false, "platform": "zVewk20P", "price": 49, "recurringPaymentOrderNo": "lYn1nRKb", "region": "DdxzbJN1", "returnUrl": "exM3Tuf9", "sandbox": false, "sku": "UbGuxwOM", "subscriptionId": "5bWUjhqQ", "targetNamespace": "5xe1pl5f", "targetUserId": "nHrbmFUA", "title": "bSe4WzGZ"}' \
    > test.out 2>&1
eval_tap $? 126 'CreatePaymentOrderByDedicated' test.out

#- 127 ListExtOrderNoByExtTxId
samples/cli/sample-apps Platform listExtOrderNoByExtTxId \
    --namespace $AB_NAMESPACE \
    --extTxId 'OokD7xCa' \
    > test.out 2>&1
eval_tap $? 127 'ListExtOrderNoByExtTxId' test.out

#- 128 GetPaymentOrder
samples/cli/sample-apps Platform getPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'Qo3C9kVM' \
    > test.out 2>&1
eval_tap $? 128 'GetPaymentOrder' test.out

#- 129 ChargePaymentOrder
samples/cli/sample-apps Platform chargePaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'B9SfQauo' \
    --body '{"extTxId": "9uBBAu3N", "paymentMethod": "BolpbDKI", "paymentProvider": "ALIPAY"}' \
    > test.out 2>&1
eval_tap $? 129 'ChargePaymentOrder' test.out

#- 130 RefundPaymentOrderByDedicated
samples/cli/sample-apps Platform refundPaymentOrderByDedicated \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'CIjlQFOT' \
    --body '{"description": "jyxLUrzH"}' \
    > test.out 2>&1
eval_tap $? 130 'RefundPaymentOrderByDedicated' test.out

#- 131 SimulatePaymentOrderNotification
samples/cli/sample-apps Platform simulatePaymentOrderNotification \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'Dl0IK3iR' \
    --body '{"amount": 32, "currencyCode": "7IvWeRTK", "notifyType": "CHARGE", "paymentProvider": "ALIPAY", "salesTax": 65, "vat": 57}' \
    > test.out 2>&1
eval_tap $? 131 'SimulatePaymentOrderNotification' test.out

#- 132 GetPaymentOrderChargeStatus
samples/cli/sample-apps Platform getPaymentOrderChargeStatus \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'ZitD0Hd4' \
    > test.out 2>&1
eval_tap $? 132 'GetPaymentOrderChargeStatus' test.out

#- 133 GetPlatformWalletConfig
samples/cli/sample-apps Platform getPlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Epic' \
    > test.out 2>&1
eval_tap $? 133 'GetPlatformWalletConfig' test.out

#- 134 UpdatePlatformWalletConfig
samples/cli/sample-apps Platform updatePlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Epic' \
    --body '{"allowedBalanceOrigins": ["Playstation", "Other", "Stadia"]}' \
    > test.out 2>&1
eval_tap $? 134 'UpdatePlatformWalletConfig' test.out

#- 135 ResetPlatformWalletConfig
samples/cli/sample-apps Platform resetPlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'GooglePlay' \
    > test.out 2>&1
eval_tap $? 135 'ResetPlatformWalletConfig' test.out

#- 136 CreateReward
samples/cli/sample-apps Platform createReward \
    --namespace $AB_NAMESPACE \
    --body '{"description": "SnlFd4wP", "eventTopic": "lvZfgdyX", "maxAwarded": 39, "maxAwardedPerUser": 81, "namespaceExpression": "wcGOxRCb", "rewardCode": "wmhU0vgf", "rewardConditions": [{"condition": "PIeLT35z", "conditionName": "EyFd9YR4", "eventName": "HcpetWaW", "rewardItems": [{"duration": 90, "itemId": "jLKoFgmz", "quantity": 68}, {"duration": 86, "itemId": "jJJEWVJN", "quantity": 31}, {"duration": 95, "itemId": "dsQEVp7K", "quantity": 38}]}, {"condition": "uUPNbgzR", "conditionName": "qdUlu7an", "eventName": "eIrks4lW", "rewardItems": [{"duration": 59, "itemId": "pjNtVI12", "quantity": 8}, {"duration": 11, "itemId": "vexTnCzy", "quantity": 94}, {"duration": 59, "itemId": "SojsXef4", "quantity": 59}]}, {"condition": "BmE0N0cI", "conditionName": "lQX3n5aV", "eventName": "P9sDZUau", "rewardItems": [{"duration": 37, "itemId": "HRKgQqir", "quantity": 50}, {"duration": 32, "itemId": "dvzqa2WR", "quantity": 77}, {"duration": 68, "itemId": "ydn5SOpy", "quantity": 16}]}], "userIdExpression": "gY3GhWDo"}' \
    > test.out 2>&1
eval_tap $? 136 'CreateReward' test.out

#- 137 QueryRewards
samples/cli/sample-apps Platform queryRewards \
    --namespace $AB_NAMESPACE \
    --eventTopic 'ffL0LYGj' \
    --limit '98' \
    --offset '18' \
    --sortBy '["rewardCode:desc", "namespace"]' \
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
    --rewardId 'JEW735lP' \
    > test.out 2>&1
eval_tap $? 140 'GetReward' test.out

#- 141 UpdateReward
samples/cli/sample-apps Platform updateReward \
    --namespace $AB_NAMESPACE \
    --rewardId 'X5rMdCpZ' \
    --body '{"description": "ra8dS4tg", "eventTopic": "a8KLxn1p", "maxAwarded": 69, "maxAwardedPerUser": 100, "namespaceExpression": "jH4bKumd", "rewardCode": "R1OwAg1o", "rewardConditions": [{"condition": "w8m4Tb1M", "conditionName": "QwwiXPlA", "eventName": "S2AIsgT3", "rewardItems": [{"duration": 24, "itemId": "7b7yGZxz", "quantity": 35}, {"duration": 7, "itemId": "MTFWS8AH", "quantity": 66}, {"duration": 38, "itemId": "EsXNXgeR", "quantity": 56}]}, {"condition": "j4BMHqqE", "conditionName": "OE8iEAow", "eventName": "XlrKExj4", "rewardItems": [{"duration": 29, "itemId": "pRpvRv5c", "quantity": 80}, {"duration": 12, "itemId": "0O2iFRTQ", "quantity": 28}, {"duration": 51, "itemId": "ms7gVAG5", "quantity": 8}]}, {"condition": "3kUwM3y2", "conditionName": "eDQSBj5P", "eventName": "nNVlHMLM", "rewardItems": [{"duration": 84, "itemId": "v5ZMRBtE", "quantity": 18}, {"duration": 89, "itemId": "sI06W80D", "quantity": 52}, {"duration": 64, "itemId": "kintR6ba", "quantity": 46}]}], "userIdExpression": "JPhVGNE4"}' \
    > test.out 2>&1
eval_tap $? 141 'UpdateReward' test.out

#- 142 DeleteReward
samples/cli/sample-apps Platform deleteReward \
    --namespace $AB_NAMESPACE \
    --rewardId 'bWMvylT5' \
    > test.out 2>&1
eval_tap $? 142 'DeleteReward' test.out

#- 143 CheckEventCondition
samples/cli/sample-apps Platform checkEventCondition \
    --namespace $AB_NAMESPACE \
    --rewardId 'shumNm9Q' \
    --body '{"payload": {"UuNWRGcJ": {}, "IyYtr2Im": {}, "2DSWwaZ4": {}}}' \
    > test.out 2>&1
eval_tap $? 143 'CheckEventCondition' test.out

#- 144 DeleteRewardConditionRecord
samples/cli/sample-apps Platform deleteRewardConditionRecord \
    --namespace $AB_NAMESPACE \
    --rewardId 'wFAmJ8nq' \
    --body '{"conditionName": "FXZxKfXp", "userId": "5n10N9Gf"}' \
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
    --body '{"defaultLanguage": "AVE0naiW", "defaultRegion": "hTdlUHjH", "description": "cOneDCQo", "supportedLanguages": ["5iaUfwVK", "f8A7RiOa", "Mb7EdbbK"], "supportedRegions": ["lBSmxNGS", "Mnd89Du9", "ofZy7OwP"], "title": "j4Z94Ujn"}' \
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
    --storeId 'YfaWtnyn' \
    > test.out 2>&1
eval_tap $? 152 'GetStore' test.out

#- 153 UpdateStore
samples/cli/sample-apps Platform updateStore \
    --namespace $AB_NAMESPACE \
    --storeId 'SWVvLawY' \
    --body '{"defaultLanguage": "rrlRhrF1", "defaultRegion": "HNwZ0bAO", "description": "LWTnBC6r", "supportedLanguages": ["lVy7NisD", "65Q6XFrs", "ykIRGFGE"], "supportedRegions": ["Lg2qUo8S", "XJXafDr6", "Y44h3ZJV"], "title": "nRparJOg"}' \
    > test.out 2>&1
eval_tap $? 153 'UpdateStore' test.out

#- 154 DeleteStore
samples/cli/sample-apps Platform deleteStore \
    --namespace $AB_NAMESPACE \
    --storeId 'fj8Mj36o' \
    > test.out 2>&1
eval_tap $? 154 'DeleteStore' test.out

#- 155 QueryChanges
samples/cli/sample-apps Platform queryChanges \
    --namespace $AB_NAMESPACE \
    --storeId 'CV99ymzv' \
    --action 'DELETE' \
    --itemSku 'kQUsbTYH' \
    --itemType 'CODE' \
    --limit '20' \
    --offset '95' \
    --selected 'true' \
    --sortBy '["createdAt:asc", "updatedAt:asc", "updatedAt"]' \
    --status 'PUBLISHED' \
    --type 'ITEM' \
    --updatedAtEnd 'V2w56aI2' \
    --updatedAtStart 'XfTDKe6j' \
    > test.out 2>&1
eval_tap $? 155 'QueryChanges' test.out

#- 156 PublishAll
samples/cli/sample-apps Platform publishAll \
    --namespace $AB_NAMESPACE \
    --storeId 'y9odzvql' \
    > test.out 2>&1
eval_tap $? 156 'PublishAll' test.out

#- 157 PublishSelected
samples/cli/sample-apps Platform publishSelected \
    --namespace $AB_NAMESPACE \
    --storeId 'sv5xjuMO' \
    > test.out 2>&1
eval_tap $? 157 'PublishSelected' test.out

#- 158 SelectAllRecords
samples/cli/sample-apps Platform selectAllRecords \
    --namespace $AB_NAMESPACE \
    --storeId 'MCCtBNum' \
    > test.out 2>&1
eval_tap $? 158 'SelectAllRecords' test.out

#- 159 GetStatistic
samples/cli/sample-apps Platform getStatistic \
    --namespace $AB_NAMESPACE \
    --storeId 'q6sopZtW' \
    --action 'UPDATE' \
    --itemSku 'ODgcwPIt' \
    --itemType 'OPTIONBOX' \
    --type 'CATEGORY' \
    --updatedAtEnd 'lXM28aCf' \
    --updatedAtStart 'xqw93FJD' \
    > test.out 2>&1
eval_tap $? 159 'GetStatistic' test.out

#- 160 UnselectAllRecords
samples/cli/sample-apps Platform unselectAllRecords \
    --namespace $AB_NAMESPACE \
    --storeId 'vD9hNMA9' \
    > test.out 2>&1
eval_tap $? 160 'UnselectAllRecords' test.out

#- 161 SelectRecord
samples/cli/sample-apps Platform selectRecord \
    --changeId 'eUTmll7Z' \
    --namespace $AB_NAMESPACE \
    --storeId 'l0XhuVx4' \
    > test.out 2>&1
eval_tap $? 161 'SelectRecord' test.out

#- 162 UnselectRecord
samples/cli/sample-apps Platform unselectRecord \
    --changeId 'cTmAzTHV' \
    --namespace $AB_NAMESPACE \
    --storeId 'zOUeTWHn' \
    > test.out 2>&1
eval_tap $? 162 'UnselectRecord' test.out

#- 163 CloneStore
samples/cli/sample-apps Platform cloneStore \
    --namespace $AB_NAMESPACE \
    --storeId 'hbRPlPf0' \
    --targetStoreId '4OYrWdTe' \
    > test.out 2>&1
eval_tap $? 163 'CloneStore' test.out

#- 164 ExportStore
eval_tap 0 164 'ExportStore # SKIP deprecated' test.out

#- 165 QuerySubscriptions
samples/cli/sample-apps Platform querySubscriptions \
    --namespace $AB_NAMESPACE \
    --chargeStatus 'NEVER' \
    --itemId 'kTOC0kMN' \
    --limit '36' \
    --offset '79' \
    --sku 'F5sCLYWf' \
    --status 'EXPIRED' \
    --subscribedBy 'PLATFORM' \
    --userId 'nTOSIqw8' \
    > test.out 2>&1
eval_tap $? 165 'QuerySubscriptions' test.out

#- 166 RecurringChargeSubscription
samples/cli/sample-apps Platform recurringChargeSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'NG9VQ6aI' \
    > test.out 2>&1
eval_tap $? 166 'RecurringChargeSubscription' test.out

#- 167 GetTicketDynamic
samples/cli/sample-apps Platform getTicketDynamic \
    --boothName 'kI25qui6' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 167 'GetTicketDynamic' test.out

#- 168 DecreaseTicketSale
samples/cli/sample-apps Platform decreaseTicketSale \
    --boothName '0OKmiP3M' \
    --namespace $AB_NAMESPACE \
    --body '{"orderNo": "iQJoAyUa"}' \
    > test.out 2>&1
eval_tap $? 168 'DecreaseTicketSale' test.out

#- 169 GetTicketBoothID
samples/cli/sample-apps Platform getTicketBoothID \
    --boothName 'SmK2ak1u' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 169 'GetTicketBoothID' test.out

#- 170 IncreaseTicketSale
samples/cli/sample-apps Platform increaseTicketSale \
    --boothName 'HlEerEbI' \
    --namespace $AB_NAMESPACE \
    --body '{"count": 91, "orderNo": "OC9HaOsq"}' \
    > test.out 2>&1
eval_tap $? 170 'IncreaseTicketSale' test.out

#- 171 UnlockSteamUserAchievement
samples/cli/sample-apps Platform unlockSteamUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'jUG7rP5o' \
    --body '{"achievements": [{"id": "2wJrLf70", "value": 70}, {"id": "JRnaLUQC", "value": 80}, {"id": "ejIhwx7i", "value": 90}], "steamUserId": "JChAKAIH"}' \
    > test.out 2>&1
eval_tap $? 171 'UnlockSteamUserAchievement' test.out

#- 172 GetXblUserAchievements
samples/cli/sample-apps Platform getXblUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId 'cxpRTKKS' \
    --xboxUserId '9KXZQ7gc' \
    > test.out 2>&1
eval_tap $? 172 'GetXblUserAchievements' test.out

#- 173 UpdateXblUserAchievement
samples/cli/sample-apps Platform updateXblUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'pvaTn9Yl' \
    --body '{"achievements": [{"id": "ASyzh9Dw", "percentComplete": 35}, {"id": "C6BGfVCV", "percentComplete": 25}, {"id": "joIlCNEs", "percentComplete": 36}], "serviceConfigId": "Q7WAzJf9", "titleId": "B6lRlxhf", "xboxUserId": "jRvFz9w8"}' \
    > test.out 2>&1
eval_tap $? 173 'UpdateXblUserAchievement' test.out

#- 174 AnonymizeCampaign
samples/cli/sample-apps Platform anonymizeCampaign \
    --namespace $AB_NAMESPACE \
    --userId 'jAlcgmeJ' \
    > test.out 2>&1
eval_tap $? 174 'AnonymizeCampaign' test.out

#- 175 AnonymizeEntitlement
samples/cli/sample-apps Platform anonymizeEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'nBrT61Fu' \
    > test.out 2>&1
eval_tap $? 175 'AnonymizeEntitlement' test.out

#- 176 AnonymizeFulfillment
samples/cli/sample-apps Platform anonymizeFulfillment \
    --namespace $AB_NAMESPACE \
    --userId 'CnuKXIjb' \
    > test.out 2>&1
eval_tap $? 176 'AnonymizeFulfillment' test.out

#- 177 AnonymizeIntegration
samples/cli/sample-apps Platform anonymizeIntegration \
    --namespace $AB_NAMESPACE \
    --userId 'mIsA8mLd' \
    > test.out 2>&1
eval_tap $? 177 'AnonymizeIntegration' test.out

#- 178 AnonymizeOrder
samples/cli/sample-apps Platform anonymizeOrder \
    --namespace $AB_NAMESPACE \
    --userId 'cVQi7slP' \
    > test.out 2>&1
eval_tap $? 178 'AnonymizeOrder' test.out

#- 179 AnonymizePayment
samples/cli/sample-apps Platform anonymizePayment \
    --namespace $AB_NAMESPACE \
    --userId 'uVkh58Vs' \
    > test.out 2>&1
eval_tap $? 179 'AnonymizePayment' test.out

#- 180 AnonymizeSubscription
samples/cli/sample-apps Platform anonymizeSubscription \
    --namespace $AB_NAMESPACE \
    --userId 'SpEPIQOj' \
    > test.out 2>&1
eval_tap $? 180 'AnonymizeSubscription' test.out

#- 181 AnonymizeWallet
samples/cli/sample-apps Platform anonymizeWallet \
    --namespace $AB_NAMESPACE \
    --userId 'VCZ3FD2l' \
    > test.out 2>&1
eval_tap $? 181 'AnonymizeWallet' test.out

#- 182 QueryUserEntitlements
samples/cli/sample-apps Platform queryUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId '9PvpsCSX' \
    --activeOnly 'true' \
    --appType 'DLC' \
    --entitlementClazz 'APP' \
    --entitlementName '4o2NK4hi' \
    --features '["tv8MR0Ov", "06FqJAZ8", "GI2aduDw"]' \
    --itemId '["MJSEpU4L", "EJeDC5KC", "11mxzFZX"]' \
    --limit '61' \
    --offset '82' \
    > test.out 2>&1
eval_tap $? 182 'QueryUserEntitlements' test.out

#- 183 GrantUserEntitlement
samples/cli/sample-apps Platform grantUserEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 't7Ob4693' \
    --body '[{"endDate": "1992-11-15T00:00:00Z", "grantedCode": "DbgDAeaj", "itemId": "14Mbk6ap", "itemNamespace": "W28Kk2iz", "language": "hm-VhNi", "quantity": 100, "region": "7XlGzStV", "source": "OTHER", "startDate": "1988-01-14T00:00:00Z", "storeId": "TTuqwIVE"}, {"endDate": "1984-06-14T00:00:00Z", "grantedCode": "OeOaR25o", "itemId": "FQWgET3t", "itemNamespace": "fdB11bZw", "language": "HfXc_aKKW", "quantity": 81, "region": "i3ClldcC", "source": "REFERRAL_BONUS", "startDate": "1989-07-02T00:00:00Z", "storeId": "dJo2Kagq"}, {"endDate": "1983-06-27T00:00:00Z", "grantedCode": "x8VJaPEU", "itemId": "wBGqL9u3", "itemNamespace": "SjTOiUIH", "language": "Lv", "quantity": 100, "region": "ab1h0aDJ", "source": "PURCHASE", "startDate": "1992-12-07T00:00:00Z", "storeId": "MSLF6H4f"}]' \
    > test.out 2>&1
eval_tap $? 183 'GrantUserEntitlement' test.out

#- 184 GetUserAppEntitlementByAppId
samples/cli/sample-apps Platform getUserAppEntitlementByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'mrosZKyv' \
    --activeOnly 'true' \
    --appId 'hLMSoozh' \
    > test.out 2>&1
eval_tap $? 184 'GetUserAppEntitlementByAppId' test.out

#- 185 QueryUserEntitlementsByAppType
samples/cli/sample-apps Platform queryUserEntitlementsByAppType \
    --namespace $AB_NAMESPACE \
    --userId 'KPnXtx9f' \
    --activeOnly 'false' \
    --limit '69' \
    --offset '26' \
    --appType 'DEMO' \
    > test.out 2>&1
eval_tap $? 185 'QueryUserEntitlementsByAppType' test.out

#- 186 GetUserEntitlementByItemId
samples/cli/sample-apps Platform getUserEntitlementByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'TAQtWBfh' \
    --activeOnly 'true' \
    --entitlementClazz 'SUBSCRIPTION' \
    --itemId '4Yk7wRak' \
    > test.out 2>&1
eval_tap $? 186 'GetUserEntitlementByItemId' test.out

#- 187 GetUserEntitlementBySku
samples/cli/sample-apps Platform getUserEntitlementBySku \
    --namespace $AB_NAMESPACE \
    --userId 'Ec2OpECM' \
    --activeOnly 'true' \
    --entitlementClazz 'OPTIONBOX' \
    --sku 'hnefa1if' \
    > test.out 2>&1
eval_tap $? 187 'GetUserEntitlementBySku' test.out

#- 188 ExistsAnyUserActiveEntitlement
samples/cli/sample-apps Platform existsAnyUserActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'aLWb5Rt9' \
    --appIds '["euweLrZ8", "Z9bhXGMr", "TOEojHQ4"]' \
    --itemIds '["TZ2W4zHu", "vNiidzDQ", "jdb93qcP"]' \
    --skus '["e27VtU8n", "GKDhE8Oc", "mHfL9buA"]' \
    > test.out 2>&1
eval_tap $? 188 'ExistsAnyUserActiveEntitlement' test.out

#- 189 ExistsAnyUserActiveEntitlementByItemIds
samples/cli/sample-apps Platform existsAnyUserActiveEntitlementByItemIds \
    --namespace $AB_NAMESPACE \
    --userId '6Nwgg56j' \
    --itemIds '["ohOJOS0a", "ypJDlHP4", "3JhvardS"]' \
    > test.out 2>&1
eval_tap $? 189 'ExistsAnyUserActiveEntitlementByItemIds' test.out

#- 190 GetUserAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform getUserAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --userId '27VGO8mj' \
    --appId 'mx0IseUA' \
    > test.out 2>&1
eval_tap $? 190 'GetUserAppEntitlementOwnershipByAppId' test.out

#- 191 GetUserEntitlementOwnershipByItemId
samples/cli/sample-apps Platform getUserEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'BEGaqXuD' \
    --entitlementClazz 'MEDIA' \
    --itemId 'DPpu7T6e' \
    > test.out 2>&1
eval_tap $? 191 'GetUserEntitlementOwnershipByItemId' test.out

#- 192 GetUserEntitlementOwnershipByItemIds
samples/cli/sample-apps Platform getUserEntitlementOwnershipByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'mf03i6tv' \
    --ids '["PJJh2tBd", "JFyyNvAl", "Ex0SaQ58"]' \
    > test.out 2>&1
eval_tap $? 192 'GetUserEntitlementOwnershipByItemIds' test.out

#- 193 GetUserEntitlementOwnershipBySku
samples/cli/sample-apps Platform getUserEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --userId 'j5J7NmyP' \
    --entitlementClazz 'SUBSCRIPTION' \
    --sku 'H90MgC7y' \
    > test.out 2>&1
eval_tap $? 193 'GetUserEntitlementOwnershipBySku' test.out

#- 194 RevokeUserEntitlements
samples/cli/sample-apps Platform revokeUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'WEVBFRMw' \
    --entitlementIds 'x0ROpIN7' \
    > test.out 2>&1
eval_tap $? 194 'RevokeUserEntitlements' test.out

#- 195 GetUserEntitlement
samples/cli/sample-apps Platform getUserEntitlement \
    --entitlementId 'ZPm8o79k' \
    --namespace $AB_NAMESPACE \
    --userId 'h3NZLMvh' \
    > test.out 2>&1
eval_tap $? 195 'GetUserEntitlement' test.out

#- 196 UpdateUserEntitlement
samples/cli/sample-apps Platform updateUserEntitlement \
    --entitlementId 'P1btug9h' \
    --namespace $AB_NAMESPACE \
    --userId 'gJSQ9snE' \
    --body '{"endDate": "1978-09-09T00:00:00Z", "nullFieldList": ["PwG8qIXz", "kzDwCm8k", "Ugp51NKg"], "startDate": "1999-12-24T00:00:00Z", "status": "REVOKED", "useCount": 15}' \
    > test.out 2>&1
eval_tap $? 196 'UpdateUserEntitlement' test.out

#- 197 ConsumeUserEntitlement
samples/cli/sample-apps Platform consumeUserEntitlement \
    --entitlementId 'WWFioKEf' \
    --namespace $AB_NAMESPACE \
    --userId 'frouycv1' \
    --body '{"options": ["WhJd7DWP", "yqHibeYB", "kYk4dqGl"], "requestId": "E0vyPPzz", "useCount": 4}' \
    > test.out 2>&1
eval_tap $? 197 'ConsumeUserEntitlement' test.out

#- 198 DisableUserEntitlement
samples/cli/sample-apps Platform disableUserEntitlement \
    --entitlementId 'Irav3JKg' \
    --namespace $AB_NAMESPACE \
    --userId 'YeLKc0ud' \
    > test.out 2>&1
eval_tap $? 198 'DisableUserEntitlement' test.out

#- 199 EnableUserEntitlement
samples/cli/sample-apps Platform enableUserEntitlement \
    --entitlementId 'zwj9y9NW' \
    --namespace $AB_NAMESPACE \
    --userId 'xPHC0VD0' \
    > test.out 2>&1
eval_tap $? 199 'EnableUserEntitlement' test.out

#- 200 GetUserEntitlementHistories
samples/cli/sample-apps Platform getUserEntitlementHistories \
    --entitlementId 'YyhXeItJ' \
    --namespace $AB_NAMESPACE \
    --userId 'S2VUtwa9' \
    > test.out 2>&1
eval_tap $? 200 'GetUserEntitlementHistories' test.out

#- 201 RevokeUserEntitlement
samples/cli/sample-apps Platform revokeUserEntitlement \
    --entitlementId 'tu9tAJUE' \
    --namespace $AB_NAMESPACE \
    --userId '4UfDLiqR' \
    > test.out 2>&1
eval_tap $? 201 'RevokeUserEntitlement' test.out

#- 202 FulfillItem
samples/cli/sample-apps Platform fulfillItem \
    --namespace $AB_NAMESPACE \
    --userId 'vvc1z49t' \
    --body '{"duration": 69, "endDate": "1993-08-28T00:00:00Z", "itemId": "dnuh6UHP", "itemSku": "bscqaTNf", "language": "esbjh6iX", "order": {"currency": {"currencyCode": "jeLaLl4t", "currencySymbol": "u43g5qis", "currencyType": "VIRTUAL", "decimals": 6, "namespace": "vLhsSkOB"}, "ext": {"jYptexDB": {}, "5GzCDbcM": {}, "caRSnFG1": {}}, "free": false}, "orderNo": "ysnsKhoC", "origin": "Epic", "quantity": 25, "region": "U6seankM", "source": "DLC", "startDate": "1987-03-02T00:00:00Z", "storeId": "zXBeNEkR"}' \
    > test.out 2>&1
eval_tap $? 202 'FulfillItem' test.out

#- 203 RedeemCode
samples/cli/sample-apps Platform redeemCode \
    --namespace $AB_NAMESPACE \
    --userId 'UAlk0cYG' \
    --body '{"code": "Wc2hq8vH", "language": "Yo-Wm", "region": "aobmqmN2"}' \
    > test.out 2>&1
eval_tap $? 203 'RedeemCode' test.out

#- 204 FulfillRewards
samples/cli/sample-apps Platform fulfillRewards \
    --namespace $AB_NAMESPACE \
    --userId 'wJPKFYRc' \
    --body '{"origin": "IOS", "rewards": [{"currency": {"currencyCode": "9jB7BNOb", "namespace": "kluLEw4n"}, "item": {"itemId": "78w568a7", "itemSku": "cH5BzcS1", "itemType": "qnRNqD8b"}, "quantity": 18, "type": "ITEM"}, {"currency": {"currencyCode": "5nrel8nA", "namespace": "3Z7fTynY"}, "item": {"itemId": "fyPJq2n7", "itemSku": "g5H5OWVF", "itemType": "Vb80ycod"}, "quantity": 7, "type": "ITEM"}, {"currency": {"currencyCode": "B2L7h3AA", "namespace": "Wll80TrJ"}, "item": {"itemId": "vDz15nsI", "itemSku": "gQ0gLcDO", "itemType": "Kl4jy4yo"}, "quantity": 33, "type": "ITEM"}], "source": "REFERRAL_BONUS"}' \
    > test.out 2>&1
eval_tap $? 204 'FulfillRewards' test.out

#- 205 QueryUserIAPOrders
samples/cli/sample-apps Platform queryUserIAPOrders \
    --namespace $AB_NAMESPACE \
    --userId '51Mmjhmv' \
    --endTime 'wcqptlUr' \
    --limit '0' \
    --offset '36' \
    --productId 'ibFjm73N' \
    --startTime 'Ed3VJPMl' \
    --status 'VERIFIED' \
    --type 'EPICGAMES' \
    > test.out 2>&1
eval_tap $? 205 'QueryUserIAPOrders' test.out

#- 206 QueryAllUserIAPOrders
samples/cli/sample-apps Platform queryAllUserIAPOrders \
    --namespace $AB_NAMESPACE \
    --userId 'bx9A5XTU' \
    > test.out 2>&1
eval_tap $? 206 'QueryAllUserIAPOrders' test.out

#- 207 MockFulfillIAPItem
samples/cli/sample-apps Platform mockFulfillIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'xVEZt8O6' \
    --body '{"itemIdentityType": "ITEM_ID", "language": "jHdb-CwQQ", "productId": "uvEZbWx9", "region": "I7iApWcQ", "type": "STADIA"}' \
    > test.out 2>&1
eval_tap $? 207 'MockFulfillIAPItem' test.out

#- 208 QueryUserOrders
samples/cli/sample-apps Platform queryUserOrders \
    --namespace $AB_NAMESPACE \
    --userId 'xByOcfQC' \
    --itemId 'JCDBtxoO' \
    --limit '22' \
    --offset '36' \
    --status 'CHARGEBACK_REVERSED' \
    > test.out 2>&1
eval_tap $? 208 'QueryUserOrders' test.out

#- 209 AdminCreateUserOrder
samples/cli/sample-apps Platform adminCreateUserOrder \
    --namespace $AB_NAMESPACE \
    --userId '7EZMt09J' \
    --body '{"currencyCode": "1xbyccfm", "currencyNamespace": "tEgt7wus", "discountedPrice": 34, "ext": {"VP50ix3U": {}, "VA0eiXSA": {}, "X1AR7ttd": {}}, "itemId": "BRlLv4vf", "language": "MWHfQPDD", "options": {"skipPriceValidation": true}, "platform": "IOS", "price": 15, "quantity": 88, "region": "WozBBOnP", "returnUrl": "3bTKZrRo", "sandbox": false}' \
    > test.out 2>&1
eval_tap $? 209 'AdminCreateUserOrder' test.out

#- 210 CountOfPurchasedItem
samples/cli/sample-apps Platform countOfPurchasedItem \
    --namespace $AB_NAMESPACE \
    --userId 'pohr3S8k' \
    --itemId 'YkpntFdp' \
    > test.out 2>&1
eval_tap $? 210 'CountOfPurchasedItem' test.out

#- 211 GetUserOrder
samples/cli/sample-apps Platform getUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo '9PDH91Yo' \
    --userId 'v9RWKdGp' \
    > test.out 2>&1
eval_tap $? 211 'GetUserOrder' test.out

#- 212 UpdateUserOrderStatus
samples/cli/sample-apps Platform updateUserOrderStatus \
    --namespace $AB_NAMESPACE \
    --orderNo 'kE2ZePAM' \
    --userId 'VgZv5o2t' \
    --body '{"status": "CHARGEBACK_REVERSED", "statusReason": "Ln8mmJbu"}' \
    > test.out 2>&1
eval_tap $? 212 'UpdateUserOrderStatus' test.out

#- 213 FulfillUserOrder
samples/cli/sample-apps Platform fulfillUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'Jl5SXp5G' \
    --userId 'zBiAAik9' \
    > test.out 2>&1
eval_tap $? 213 'FulfillUserOrder' test.out

#- 214 GetUserOrderGrant
samples/cli/sample-apps Platform getUserOrderGrant \
    --namespace $AB_NAMESPACE \
    --orderNo 'xxKlLTlQ' \
    --userId 'jBxag11z' \
    > test.out 2>&1
eval_tap $? 214 'GetUserOrderGrant' test.out

#- 215 GetUserOrderHistories
samples/cli/sample-apps Platform getUserOrderHistories \
    --namespace $AB_NAMESPACE \
    --orderNo '8pnqIbGn' \
    --userId 'kCYHcvRj' \
    > test.out 2>&1
eval_tap $? 215 'GetUserOrderHistories' test.out

#- 216 ProcessUserOrderNotification
samples/cli/sample-apps Platform processUserOrderNotification \
    --namespace $AB_NAMESPACE \
    --orderNo 'UB66s5Df' \
    --userId 'FgN3e06W' \
    --body '{"additionalData": {"cardSummary": "1EMer0Jl"}, "authorisedTime": "1979-09-23T00:00:00Z", "chargebackReversedTime": "1988-02-14T00:00:00Z", "chargebackTime": "1977-02-18T00:00:00Z", "chargedTime": "1987-06-15T00:00:00Z", "createdTime": "1980-06-17T00:00:00Z", "currency": {"currencyCode": "5Ny4tPwa", "currencySymbol": "tFE82y3w", "currencyType": "REAL", "decimals": 0, "namespace": "TUXJBE1M"}, "customParameters": {"uVM3XX5j": {}, "KVQbMtG1": {}, "1fi0Ldsc": {}}, "extOrderNo": "wYKAqZeM", "extTxId": "MOHN4ppH", "extUserId": "L6m11VnE", "issuedAt": "1985-06-22T00:00:00Z", "metadata": {"p3ZK1wT2": "p7ZTGWtx", "KBgl4fOx": "hBmUqs7B", "guAELM2Y": "mxLJfEvE"}, "namespace": "y1DAhAqk", "nonceStr": "IDady2jC", "paymentMethod": "EjQ5h69B", "paymentMethodFee": 59, "paymentOrderNo": "aZkOsPyg", "paymentProvider": "CHECKOUT", "paymentProviderFee": 95, "paymentStationUrl": "VjOLLnNV", "price": 73, "refundedTime": "1992-07-07T00:00:00Z", "salesTax": 92, "sandbox": true, "sku": "oR5EiSzl", "status": "CHARGED", "statusReason": "LEQTdCLQ", "subscriptionId": "0s0PCM1L", "subtotalPrice": 4, "targetNamespace": "mk9Fg69x", "targetUserId": "1Wp63wmv", "tax": 80, "totalPrice": 80, "totalTax": 50, "txEndTime": "1994-08-11T00:00:00Z", "type": "uqFRZo4V", "userId": "K0iVtqZ9", "vat": 80}' \
    > test.out 2>&1
eval_tap $? 216 'ProcessUserOrderNotification' test.out

#- 217 DownloadUserOrderReceipt
samples/cli/sample-apps Platform downloadUserOrderReceipt \
    --namespace $AB_NAMESPACE \
    --orderNo 'n4cxXQhH' \
    --userId '1SRsnFG9' \
    > test.out 2>&1
eval_tap $? 217 'DownloadUserOrderReceipt' test.out

#- 218 CreateUserPaymentOrder
samples/cli/sample-apps Platform createUserPaymentOrder \
    --namespace $AB_NAMESPACE \
    --userId 'mkoDUnOr' \
    --body '{"currencyCode": "stFD2B71", "currencyNamespace": "vXpoWk9f", "customParameters": {"RJdLELd8": {}, "u90JNeda": {}, "BKUsVUFr": {}}, "description": "8uM9FGKY", "extOrderNo": "SPBoDttP", "extUserId": "39jgCf1C", "itemType": "OPTIONBOX", "language": "lZuK-WCjA", "metadata": {"8u2aK5kS": "VQoxuvdd", "0ke4RgYc": "LU1Zm6oc", "OMeYmNSi": "0d7wS8nB"}, "notifyUrl": "48WzMVsW", "omitNotification": false, "platform": "ppQ26VEb", "price": 0, "recurringPaymentOrderNo": "pH4fwZXX", "region": "QXK33R93", "returnUrl": "E0igz8aw", "sandbox": true, "sku": "q7SHI0WC", "subscriptionId": "38kKTOrb", "title": "M7OaR794"}' \
    > test.out 2>&1
eval_tap $? 218 'CreateUserPaymentOrder' test.out

#- 219 RefundUserPaymentOrder
samples/cli/sample-apps Platform refundUserPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'JIXh3ufl' \
    --userId 'A15VZoPg' \
    --body '{"description": "BxKfaE9y"}' \
    > test.out 2>&1
eval_tap $? 219 'RefundUserPaymentOrder' test.out

#- 220 ApplyUserRedemption
samples/cli/sample-apps Platform applyUserRedemption \
    --namespace $AB_NAMESPACE \
    --userId '6OgM04S8' \
    --body '{"code": "Psy0WNcT", "orderNo": "wemwuOHy"}' \
    > test.out 2>&1
eval_tap $? 220 'ApplyUserRedemption' test.out

#- 221 QueryUserSubscriptions
samples/cli/sample-apps Platform queryUserSubscriptions \
    --namespace $AB_NAMESPACE \
    --userId 'U3dQWzJ4' \
    --chargeStatus 'RECURRING_CHARGING' \
    --itemId 'wr2XoKph' \
    --limit '76' \
    --offset '85' \
    --sku 'ov6VEMT0' \
    --status 'ACTIVE' \
    --subscribedBy 'PLATFORM' \
    > test.out 2>&1
eval_tap $? 221 'QueryUserSubscriptions' test.out

#- 222 GetUserSubscriptionActivities
samples/cli/sample-apps Platform getUserSubscriptionActivities \
    --namespace $AB_NAMESPACE \
    --userId 'negbEXpE' \
    --excludeSystem 'true' \
    --limit '34' \
    --offset '16' \
    --subscriptionId 'Umn6WhB6' \
    > test.out 2>&1
eval_tap $? 222 'GetUserSubscriptionActivities' test.out

#- 223 PlatformSubscribeSubscription
samples/cli/sample-apps Platform platformSubscribeSubscription \
    --namespace $AB_NAMESPACE \
    --userId 'kvz86toX' \
    --body '{"grantDays": 13, "itemId": "5Wm8XfgZ", "language": "t339jbrR", "reason": "tPen7Zd7", "region": "DVNClN95", "source": "Lh756c30"}' \
    > test.out 2>&1
eval_tap $? 223 'PlatformSubscribeSubscription' test.out

#- 224 CheckUserSubscriptionSubscribableByItemId
samples/cli/sample-apps Platform checkUserSubscriptionSubscribableByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'NmUYpqQl' \
    --itemId 'hy5K47MM' \
    > test.out 2>&1
eval_tap $? 224 'CheckUserSubscriptionSubscribableByItemId' test.out

#- 225 GetUserSubscription
samples/cli/sample-apps Platform getUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'jSTN3dDO' \
    --userId 'VSXgC7ST' \
    > test.out 2>&1
eval_tap $? 225 'GetUserSubscription' test.out

#- 226 DeleteUserSubscription
samples/cli/sample-apps Platform deleteUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId '2wLq5PPV' \
    --userId 'KMVcQA5H' \
    > test.out 2>&1
eval_tap $? 226 'DeleteUserSubscription' test.out

#- 227 CancelSubscription
samples/cli/sample-apps Platform cancelSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'MOsuJVxP' \
    --userId 'A8Ca9rpV' \
    --force 'true' \
    --body '{"immediate": false, "reason": "xpEd7RGa"}' \
    > test.out 2>&1
eval_tap $? 227 'CancelSubscription' test.out

#- 228 GrantDaysToSubscription
samples/cli/sample-apps Platform grantDaysToSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'x1GhefCm' \
    --userId 'jDg2K8zx' \
    --body '{"grantDays": 52, "reason": "cUumkhER"}' \
    > test.out 2>&1
eval_tap $? 228 'GrantDaysToSubscription' test.out

#- 229 GetUserSubscriptionBillingHistories
samples/cli/sample-apps Platform getUserSubscriptionBillingHistories \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'pChell1z' \
    --userId 'dXiWwZb1' \
    --excludeFree 'false' \
    --limit '4' \
    --offset '35' \
    > test.out 2>&1
eval_tap $? 229 'GetUserSubscriptionBillingHistories' test.out

#- 230 ProcessUserSubscriptionNotification
samples/cli/sample-apps Platform processUserSubscriptionNotification \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'T4h52oMx' \
    --userId 'iLBDgaPg' \
    --body '{"additionalData": {"cardSummary": "GeaUgQ4a"}, "authorisedTime": "1990-11-29T00:00:00Z", "chargebackReversedTime": "1991-01-25T00:00:00Z", "chargebackTime": "1972-08-18T00:00:00Z", "chargedTime": "1992-01-30T00:00:00Z", "createdTime": "1997-01-03T00:00:00Z", "currency": {"currencyCode": "hspBV2kO", "currencySymbol": "YyYJCOZD", "currencyType": "REAL", "decimals": 14, "namespace": "eQ0DSS9u"}, "customParameters": {"BSufo7zq": {}, "oPyoIffr": {}, "dGWC6BRI": {}}, "extOrderNo": "FRPa4ka1", "extTxId": "0dUyKDk3", "extUserId": "guydVppe", "issuedAt": "1971-08-02T00:00:00Z", "metadata": {"y1uYZLzO": "dhxU7ln2", "F9wOaRb5": "qQwSjtms", "oDjPK4dv": "e6grNlbT"}, "namespace": "h60h6ji7", "nonceStr": "lzZ4DeAm", "paymentMethod": "QC8uuI9s", "paymentMethodFee": 93, "paymentOrderNo": "15vi8ULV", "paymentProvider": "XSOLLA", "paymentProviderFee": 88, "paymentStationUrl": "9nUqRbmt", "price": 93, "refundedTime": "1998-06-06T00:00:00Z", "salesTax": 75, "sandbox": true, "sku": "JiFBwIFr", "status": "AUTHORISED", "statusReason": "pdkDme2B", "subscriptionId": "q7DsBi1j", "subtotalPrice": 93, "targetNamespace": "bzuHo6t3", "targetUserId": "0YsMoWGD", "tax": 89, "totalPrice": 54, "totalTax": 74, "txEndTime": "1988-02-23T00:00:00Z", "type": "cZooqpHK", "userId": "cxOi3py7", "vat": 21}' \
    > test.out 2>&1
eval_tap $? 230 'ProcessUserSubscriptionNotification' test.out

#- 231 AcquireUserTicket
samples/cli/sample-apps Platform acquireUserTicket \
    --boothName 'ag6pGt2f' \
    --namespace $AB_NAMESPACE \
    --userId 'fmXOvvoz' \
    --body '{"count": 27, "orderNo": "gkxbyLdf"}' \
    > test.out 2>&1
eval_tap $? 231 'AcquireUserTicket' test.out

#- 232 QueryUserCurrencyWallets
samples/cli/sample-apps Platform queryUserCurrencyWallets \
    --namespace $AB_NAMESPACE \
    --userId 'JiTxk9CY' \
    > test.out 2>&1
eval_tap $? 232 'QueryUserCurrencyWallets' test.out

#- 233 ListUserCurrencyTransactions
samples/cli/sample-apps Platform listUserCurrencyTransactions \
    --currencyCode 'GuAwE2TO' \
    --namespace $AB_NAMESPACE \
    --userId 'cvD3WPpX' \
    --limit '17' \
    --offset '21' \
    > test.out 2>&1
eval_tap $? 233 'ListUserCurrencyTransactions' test.out

#- 234 CheckWallet
eval_tap 0 234 'CheckWallet # SKIP deprecated' test.out

#- 235 CreditUserWallet
samples/cli/sample-apps Platform creditUserWallet \
    --currencyCode 'qPjuK0rc' \
    --namespace $AB_NAMESPACE \
    --userId 'bTp6IxOG' \
    --body '{"amount": 28, "expireAt": "1982-06-12T00:00:00Z", "origin": "Twitch", "reason": "t1XGNHAx", "source": "OTHER"}' \
    > test.out 2>&1
eval_tap $? 235 'CreditUserWallet' test.out

#- 236 PayWithUserWallet
samples/cli/sample-apps Platform payWithUserWallet \
    --currencyCode 'cka3SQHg' \
    --namespace $AB_NAMESPACE \
    --userId '9DnWasMU' \
    --body '{"amount": 77, "walletPlatform": "Nintendo"}' \
    > test.out 2>&1
eval_tap $? 236 'PayWithUserWallet' test.out

#- 237 GetUserWallet
eval_tap 0 237 'GetUserWallet # SKIP deprecated' test.out

#- 238 DebitUserWallet
eval_tap 0 238 'DebitUserWallet # SKIP deprecated' test.out

#- 239 DisableUserWallet
eval_tap 0 239 'DisableUserWallet # SKIP deprecated' test.out

#- 240 EnableUserWallet
eval_tap 0 240 'EnableUserWallet # SKIP deprecated' test.out

#- 241 ListUserWalletTransactions
eval_tap 0 241 'ListUserWalletTransactions # SKIP deprecated' test.out

#- 242 QueryWallets
eval_tap 0 242 'QueryWallets # SKIP deprecated' test.out

#- 243 GetWallet
eval_tap 0 243 'GetWallet # SKIP deprecated' test.out

#- 244 SyncOrders
samples/cli/sample-apps Platform syncOrders \
    --nextEvaluatedKey 'BcKrkWGO' \
    --end '2QFOMGip' \
    --start '9amK2rVi' \
    > test.out 2>&1
eval_tap $? 244 'SyncOrders' test.out

#- 245 TestAdyenConfig
samples/cli/sample-apps Platform testAdyenConfig \
    --sandbox 'true' \
    --body '{"allowedPaymentMethods": ["XBIsxyql", "8x1HtipC", "thNXH8m3"], "apiKey": "wH0DIXeP", "authoriseAsCapture": false, "blockedPaymentMethods": ["H01cXHyA", "ybg4Thyu", "QmZAVjsM"], "clientKey": "Gaorri9m", "dropInSettings": "3W5Ijf7D", "liveEndpointUrlPrefix": "7M4TX6zE", "merchantAccount": "U70ZiO2n", "notificationHmacKey": "AdxLaslh", "notificationPassword": "owoktx7l", "notificationUsername": "801ftqQe", "returnUrl": "X4yIZ2vw", "settings": "HS803Pfl"}' \
    > test.out 2>&1
eval_tap $? 245 'TestAdyenConfig' test.out

#- 246 TestAliPayConfig
samples/cli/sample-apps Platform testAliPayConfig \
    --sandbox 'true' \
    --body '{"appId": "xpGXpKjP", "privateKey": "odP2zdhb", "publicKey": "AtoNsYSN", "returnUrl": "hav3Jpo4"}' \
    > test.out 2>&1
eval_tap $? 246 'TestAliPayConfig' test.out

#- 247 TestCheckoutConfig
samples/cli/sample-apps Platform testCheckoutConfig \
    --sandbox 'false' \
    --body '{"publicKey": "elbX5mbh", "secretKey": "BpqQD3I2"}' \
    > test.out 2>&1
eval_tap $? 247 'TestCheckoutConfig' test.out

#- 248 DebugMatchedPaymentMerchantConfig
samples/cli/sample-apps Platform debugMatchedPaymentMerchantConfig \
    --namespace 'vf0GtSBW' \
    --region 'll7neHmL' \
    > test.out 2>&1
eval_tap $? 248 'DebugMatchedPaymentMerchantConfig' test.out

#- 249 TestPayPalConfig
samples/cli/sample-apps Platform testPayPalConfig \
    --sandbox 'false' \
    --body '{"clientID": "i0BMjakf", "clientSecret": "GS8uzjK4", "returnUrl": "yA26vsNK", "webHookId": "telzUEqO"}' \
    > test.out 2>&1
eval_tap $? 249 'TestPayPalConfig' test.out

#- 250 TestStripeConfig
samples/cli/sample-apps Platform testStripeConfig \
    --sandbox 'false' \
    --body '{"allowedPaymentMethodTypes": ["dWlDyveV", "TN6vUhEB", "9soD4a5T"], "publishableKey": "3KRsYWCT", "secretKey": "2xOp4q98", "webhookSecret": "dklYpfvc"}' \
    > test.out 2>&1
eval_tap $? 250 'TestStripeConfig' test.out

#- 251 TestWxPayConfig
samples/cli/sample-apps Platform testWxPayConfig \
    --body '{"appId": "hUeMpfvX", "key": "3svaVeMg", "mchid": "jE26TUx7", "returnUrl": "OfvKSmeB"}' \
    > test.out 2>&1
eval_tap $? 251 'TestWxPayConfig' test.out

#- 252 TestXsollaConfig
samples/cli/sample-apps Platform testXsollaConfig \
    --body '{"apiKey": "0vQnOWzw", "flowCompletionUrl": "vvY4oeBm", "merchantId": 73, "projectId": 91, "projectSecretKey": "gZIHc4lp"}' \
    > test.out 2>&1
eval_tap $? 252 'TestXsollaConfig' test.out

#- 253 GetPaymentMerchantConfig
samples/cli/sample-apps Platform getPaymentMerchantConfig \
    --id '6BFDAfIX' \
    > test.out 2>&1
eval_tap $? 253 'GetPaymentMerchantConfig' test.out

#- 254 UpdateAdyenConfig
samples/cli/sample-apps Platform updateAdyenConfig \
    --id '4lPHKo27' \
    --sandbox 'false' \
    --validate 'true' \
    --body '{"allowedPaymentMethods": ["aVHbf8oQ", "uuleOTny", "3QQSjXrI"], "apiKey": "8ykgUMh8", "authoriseAsCapture": true, "blockedPaymentMethods": ["i2lty0UC", "r7FCjfod", "mWx2SOzE"], "clientKey": "iKq28PQj", "dropInSettings": "PKhreUIA", "liveEndpointUrlPrefix": "F52cl8tu", "merchantAccount": "wVaGvGFd", "notificationHmacKey": "OoINcpEP", "notificationPassword": "R1XQZdfX", "notificationUsername": "QI937P6F", "returnUrl": "rAuT0OG5", "settings": "kBDLoYEM"}' \
    > test.out 2>&1
eval_tap $? 254 'UpdateAdyenConfig' test.out

#- 255 TestAdyenConfigById
samples/cli/sample-apps Platform testAdyenConfigById \
    --id 'RfcaDCE2' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 255 'TestAdyenConfigById' test.out

#- 256 UpdateAliPayConfig
samples/cli/sample-apps Platform updateAliPayConfig \
    --id '9Mf3Jg3V' \
    --sandbox 'false' \
    --validate 'true' \
    --body '{"appId": "fVCA2VRG", "privateKey": "1kEst7QV", "publicKey": "VGkp7utD", "returnUrl": "1Glluuyc"}' \
    > test.out 2>&1
eval_tap $? 256 'UpdateAliPayConfig' test.out

#- 257 TestAliPayConfigById
samples/cli/sample-apps Platform testAliPayConfigById \
    --id 'aBFfqSrb' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 257 'TestAliPayConfigById' test.out

#- 258 UpdateCheckoutConfig
samples/cli/sample-apps Platform updateCheckoutConfig \
    --id 'getSGB5n' \
    --sandbox 'true' \
    --validate 'false' \
    --body '{"publicKey": "P53enRB9", "secretKey": "S3NJoenV"}' \
    > test.out 2>&1
eval_tap $? 258 'UpdateCheckoutConfig' test.out

#- 259 TestCheckoutConfigById
samples/cli/sample-apps Platform testCheckoutConfigById \
    --id 'yZBQzeJy' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 259 'TestCheckoutConfigById' test.out

#- 260 UpdatePayPalConfig
samples/cli/sample-apps Platform updatePayPalConfig \
    --id 'teibnZ9J' \
    --sandbox 'false' \
    --validate 'false' \
    --body '{"clientID": "id1F0ziW", "clientSecret": "uqRzZS6j", "returnUrl": "4JK8Ggyo", "webHookId": "UbyguL83"}' \
    > test.out 2>&1
eval_tap $? 260 'UpdatePayPalConfig' test.out

#- 261 TestPayPalConfigById
samples/cli/sample-apps Platform testPayPalConfigById \
    --id 'MFoENNIw' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 261 'TestPayPalConfigById' test.out

#- 262 UpdateStripeConfig
samples/cli/sample-apps Platform updateStripeConfig \
    --id 'pujpjQ8Q' \
    --sandbox 'true' \
    --validate 'true' \
    --body '{"allowedPaymentMethodTypes": ["FqchBSCr", "MoCifMwR", "dpuBFQYe"], "publishableKey": "7VJSLRJ9", "secretKey": "Ev4E98Yg", "webhookSecret": "8WWkHt0T"}' \
    > test.out 2>&1
eval_tap $? 262 'UpdateStripeConfig' test.out

#- 263 TestStripeConfigById
samples/cli/sample-apps Platform testStripeConfigById \
    --id 'Z03FJURL' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 263 'TestStripeConfigById' test.out

#- 264 UpdateWxPayConfig
samples/cli/sample-apps Platform updateWxPayConfig \
    --id 'k9ntuPGc' \
    --validate 'false' \
    --body '{"appId": "4CkGmH6M", "key": "Law74R6K", "mchid": "xF1JK49m", "returnUrl": "QQeo2BZs"}' \
    > test.out 2>&1
eval_tap $? 264 'UpdateWxPayConfig' test.out

#- 265 UpdateWxPayConfigCert
samples/cli/sample-apps Platform updateWxPayConfigCert \
    --id 'ZIrHkfiV' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 265 'UpdateWxPayConfigCert' test.out

#- 266 TestWxPayConfigById
samples/cli/sample-apps Platform testWxPayConfigById \
    --id 'wwE5m7Jf' \
    > test.out 2>&1
eval_tap $? 266 'TestWxPayConfigById' test.out

#- 267 UpdateXsollaConfig
samples/cli/sample-apps Platform updateXsollaConfig \
    --id '7dqnzPyc' \
    --validate 'true' \
    --body '{"apiKey": "ye2Jta2n", "flowCompletionUrl": "boAMwThx", "merchantId": 46, "projectId": 65, "projectSecretKey": "cKxdsNeQ"}' \
    > test.out 2>&1
eval_tap $? 267 'UpdateXsollaConfig' test.out

#- 268 TestXsollaConfigById
samples/cli/sample-apps Platform testXsollaConfigById \
    --id 'xLl3V6kM' \
    > test.out 2>&1
eval_tap $? 268 'TestXsollaConfigById' test.out

#- 269 UpdateXsollaUIConfig
samples/cli/sample-apps Platform updateXsollaUIConfig \
    --id 'mOpNTqK0' \
    --body '{"device": "MOBILE", "showCloseButton": false, "size": "SMALL", "theme": "DEFAULT"}' \
    > test.out 2>&1
eval_tap $? 269 'UpdateXsollaUIConfig' test.out

#- 270 QueryPaymentProviderConfig
samples/cli/sample-apps Platform queryPaymentProviderConfig \
    --limit '0' \
    --namespace 'AUYxcLwV' \
    --offset '10' \
    --region 'hMEY2NJP' \
    > test.out 2>&1
eval_tap $? 270 'QueryPaymentProviderConfig' test.out

#- 271 CreatePaymentProviderConfig
samples/cli/sample-apps Platform createPaymentProviderConfig \
    --body '{"aggregate": "XSOLLA", "namespace": "1fF9355a", "region": "5Ie8EAN9", "sandboxTaxJarApiToken": "IW9tyH1M", "specials": ["CHECKOUT", "CHECKOUT", "PAYPAL"], "taxJarApiToken": "WW47P4NB", "taxJarEnabled": false, "useGlobalTaxJarApiToken": false}' \
    > test.out 2>&1
eval_tap $? 271 'CreatePaymentProviderConfig' test.out

#- 272 GetAggregatePaymentProviders
samples/cli/sample-apps Platform getAggregatePaymentProviders \
    > test.out 2>&1
eval_tap $? 272 'GetAggregatePaymentProviders' test.out

#- 273 DebugMatchedPaymentProviderConfig
samples/cli/sample-apps Platform debugMatchedPaymentProviderConfig \
    --namespace 'y6HdR6s5' \
    --region 'iQW8ordV' \
    > test.out 2>&1
eval_tap $? 273 'DebugMatchedPaymentProviderConfig' test.out

#- 274 GetSpecialPaymentProviders
samples/cli/sample-apps Platform getSpecialPaymentProviders \
    > test.out 2>&1
eval_tap $? 274 'GetSpecialPaymentProviders' test.out

#- 275 UpdatePaymentProviderConfig
samples/cli/sample-apps Platform updatePaymentProviderConfig \
    --id 'Mi84i2l7' \
    --body '{"aggregate": "XSOLLA", "namespace": "YOM0wHUp", "region": "E4xVvGAs", "sandboxTaxJarApiToken": "AI6mCrki", "specials": ["WXPAY", "PAYPAL", "XSOLLA"], "taxJarApiToken": "M4SzMoKM", "taxJarEnabled": true, "useGlobalTaxJarApiToken": false}' \
    > test.out 2>&1
eval_tap $? 275 'UpdatePaymentProviderConfig' test.out

#- 276 DeletePaymentProviderConfig
samples/cli/sample-apps Platform deletePaymentProviderConfig \
    --id 'n1q4WcOI' \
    > test.out 2>&1
eval_tap $? 276 'DeletePaymentProviderConfig' test.out

#- 277 GetPaymentTaxConfig
samples/cli/sample-apps Platform getPaymentTaxConfig \
    > test.out 2>&1
eval_tap $? 277 'GetPaymentTaxConfig' test.out

#- 278 UpdatePaymentTaxConfig
samples/cli/sample-apps Platform updatePaymentTaxConfig \
    --body '{"sandboxTaxJarApiToken": "UOdAcBSq", "taxJarApiToken": "pjsVXKPL", "taxJarEnabled": true, "taxJarProductCodesMapping": {"bzYAVh2u": "skFbSFKd", "5rNJ7TQg": "mjpz5cHW", "o1loKWKn": "FMmdJ29z"}}' \
    > test.out 2>&1
eval_tap $? 278 'UpdatePaymentTaxConfig' test.out

#- 279 SyncPaymentOrders
samples/cli/sample-apps Platform syncPaymentOrders \
    --nextEvaluatedKey 'uLTeLcTQ' \
    --end 'DGNBqAk3' \
    --start 'UPkB7qbO' \
    > test.out 2>&1
eval_tap $? 279 'SyncPaymentOrders' test.out

#- 280 PublicGetRootCategories
samples/cli/sample-apps Platform publicGetRootCategories \
    --namespace $AB_NAMESPACE \
    --language 'r3TLyhB0' \
    --storeId 'm0J0mbMX' \
    > test.out 2>&1
eval_tap $? 280 'PublicGetRootCategories' test.out

#- 281 DownloadCategories
samples/cli/sample-apps Platform downloadCategories \
    --namespace $AB_NAMESPACE \
    --language 'emojs25j' \
    --storeId '4dKBe4Vc' \
    > test.out 2>&1
eval_tap $? 281 'DownloadCategories' test.out

#- 282 PublicGetCategory
samples/cli/sample-apps Platform publicGetCategory \
    --categoryPath 'QI6PAJsO' \
    --namespace $AB_NAMESPACE \
    --language 'Tpib7Ber' \
    --storeId 'cclnuAyF' \
    > test.out 2>&1
eval_tap $? 282 'PublicGetCategory' test.out

#- 283 PublicGetChildCategories
samples/cli/sample-apps Platform publicGetChildCategories \
    --categoryPath 'VEq76zx1' \
    --namespace $AB_NAMESPACE \
    --language 'f6z6A7y5' \
    --storeId '9SvKD97P' \
    > test.out 2>&1
eval_tap $? 283 'PublicGetChildCategories' test.out

#- 284 PublicGetDescendantCategories
samples/cli/sample-apps Platform publicGetDescendantCategories \
    --categoryPath 'dOyS8MEN' \
    --namespace $AB_NAMESPACE \
    --language 'lBcVB70v' \
    --storeId 'srT8VAJf' \
    > test.out 2>&1
eval_tap $? 284 'PublicGetDescendantCategories' test.out

#- 285 PublicListCurrencies
samples/cli/sample-apps Platform publicListCurrencies \
    --namespace $AB_NAMESPACE \
    --currencyType 'VIRTUAL' \
    > test.out 2>&1
eval_tap $? 285 'PublicListCurrencies' test.out

#- 286 PublicGetItemByAppId
samples/cli/sample-apps Platform publicGetItemByAppId \
    --namespace $AB_NAMESPACE \
    --language '4LJe0WVT' \
    --region 'iHwplkte' \
    --storeId '0xTrfWrs' \
    --appId '3Db3Y4bq' \
    > test.out 2>&1
eval_tap $? 286 'PublicGetItemByAppId' test.out

#- 287 PublicQueryItems
samples/cli/sample-apps Platform publicQueryItems \
    --namespace $AB_NAMESPACE \
    --appType 'SOFTWARE' \
    --baseAppId '7wNMWVHs' \
    --categoryPath 'uXQpmrj4' \
    --features 'iAbtk3lj' \
    --includeSubCategoryItem 'false' \
    --itemType 'BUNDLE' \
    --language 'kb9YS7b7' \
    --limit '57' \
    --offset '82' \
    --region 'QZLgV5Cx' \
    --sortBy '["createdAt:asc", "name:asc", "displayOrder:desc"]' \
    --storeId 'RalBJfN6' \
    --tags 'SJPpL0oq' \
    > test.out 2>&1
eval_tap $? 287 'PublicQueryItems' test.out

#- 288 PublicGetItemBySku
samples/cli/sample-apps Platform publicGetItemBySku \
    --namespace $AB_NAMESPACE \
    --language 'MFFv08Le' \
    --region 'McwEOqv2' \
    --storeId 'NIms9IPi' \
    --sku '1sNx95gY' \
    > test.out 2>&1
eval_tap $? 288 'PublicGetItemBySku' test.out

#- 289 PublicBulkGetItems
samples/cli/sample-apps Platform publicBulkGetItems \
    --namespace $AB_NAMESPACE \
    --language 'y9x8r6tP' \
    --region 'Hl2zE82L' \
    --storeId 'SRcUTihU' \
    --itemIds 'TCWowKzp' \
    > test.out 2>&1
eval_tap $? 289 'PublicBulkGetItems' test.out

#- 290 PublicValidateItemPurchaseCondition
samples/cli/sample-apps Platform publicValidateItemPurchaseCondition \
    --namespace $AB_NAMESPACE \
    --body '{"itemIds": ["KJz6Fane", "SlysC0Rr", "CBKFlBwe"]}' \
    > test.out 2>&1
eval_tap $? 290 'PublicValidateItemPurchaseCondition' test.out

#- 291 PublicSearchItems
samples/cli/sample-apps Platform publicSearchItems \
    --namespace $AB_NAMESPACE \
    --itemType 'SUBSCRIPTION' \
    --limit '11' \
    --offset '56' \
    --region '6QvJKmeJ' \
    --storeId 'LsbrOdmb' \
    --keyword 'WOrwmuDA' \
    --language 'yyLwtYzT' \
    > test.out 2>&1
eval_tap $? 291 'PublicSearchItems' test.out

#- 292 PublicGetApp
samples/cli/sample-apps Platform publicGetApp \
    --itemId '3HI2OLXT' \
    --namespace $AB_NAMESPACE \
    --language '4BRLgXVa' \
    --region 'DfCJRQbB' \
    --storeId 'pgPHehAB' \
    > test.out 2>&1
eval_tap $? 292 'PublicGetApp' test.out

#- 293 PublicGetItemDynamicData
samples/cli/sample-apps Platform publicGetItemDynamicData \
    --itemId 'uyzqRFUF' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 293 'PublicGetItemDynamicData' test.out

#- 294 PublicGetItem
samples/cli/sample-apps Platform publicGetItem \
    --itemId 'mwBoY4ZV' \
    --namespace $AB_NAMESPACE \
    --language 'uHMDCw6U' \
    --populateBundle 'true' \
    --region 'CgbqI9Q8' \
    --storeId 'AlRiFzVn' \
    > test.out 2>&1
eval_tap $? 294 'PublicGetItem' test.out

#- 295 GetPaymentCustomization
eval_tap 0 295 'GetPaymentCustomization # SKIP deprecated' test.out

#- 296 PublicGetPaymentUrl
samples/cli/sample-apps Platform publicGetPaymentUrl \
    --namespace $AB_NAMESPACE \
    --body '{"paymentOrderNo": "dffyaTYC", "paymentProvider": "WALLET", "returnUrl": "BYMHXUe1", "ui": "aJc0wqGs", "zipCode": "U4Blu8Nc"}' \
    > test.out 2>&1
eval_tap $? 296 'PublicGetPaymentUrl' test.out

#- 297 PublicGetPaymentMethods
samples/cli/sample-apps Platform publicGetPaymentMethods \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'oAwRmnCz' \
    > test.out 2>&1
eval_tap $? 297 'PublicGetPaymentMethods' test.out

#- 298 PublicGetUnpaidPaymentOrder
samples/cli/sample-apps Platform publicGetUnpaidPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'a3sMCUT2' \
    > test.out 2>&1
eval_tap $? 298 'PublicGetUnpaidPaymentOrder' test.out

#- 299 Pay
samples/cli/sample-apps Platform pay \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'ghhFuI2q' \
    --paymentProvider 'CHECKOUT' \
    --zipCode '1MLu0ETM' \
    --body '{"token": "Fn4TP0jc"}' \
    > test.out 2>&1
eval_tap $? 299 'Pay' test.out

#- 300 PublicCheckPaymentOrderPaidStatus
samples/cli/sample-apps Platform publicCheckPaymentOrderPaidStatus \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'cnipgcny' \
    > test.out 2>&1
eval_tap $? 300 'PublicCheckPaymentOrderPaidStatus' test.out

#- 301 GetPaymentPublicConfig
samples/cli/sample-apps Platform getPaymentPublicConfig \
    --namespace $AB_NAMESPACE \
    --sandbox 'true' \
    --paymentProvider 'STRIPE' \
    --region '07JgZbbd' \
    > test.out 2>&1
eval_tap $? 301 'GetPaymentPublicConfig' test.out

#- 302 PublicGetQRCode
samples/cli/sample-apps Platform publicGetQRCode \
    --namespace $AB_NAMESPACE \
    --code 'tTMaEON9' \
    > test.out 2>&1
eval_tap $? 302 'PublicGetQRCode' test.out

#- 303 PublicNormalizePaymentReturnUrl
samples/cli/sample-apps Platform publicNormalizePaymentReturnUrl \
    --namespace $AB_NAMESPACE \
    --payerID 'gk6ckXap' \
    --foreinginvoice 'lUWTkVKL' \
    --invoiceId '6Vm2O2hM' \
    --payload 'P8Sw20HA' \
    --redirectResult 'cuRBBgAh' \
    --resultCode 'mYR2guPY' \
    --sessionId 'kl5PjFqQ' \
    --status 'sZ1SbRUA' \
    --token 'lfZ2b8eK' \
    --type 'kGvCTvCn' \
    --userId 'wM3ndpIJ' \
    --orderNo 'g3yz7uMP' \
    --paymentOrderNo 'dVnz33Nx' \
    --paymentProvider 'CHECKOUT' \
    --returnUrl 'tL1LBPov' \
    > test.out 2>&1
eval_tap $? 303 'PublicNormalizePaymentReturnUrl' test.out

#- 304 GetPaymentTaxValue
samples/cli/sample-apps Platform getPaymentTaxValue \
    --namespace $AB_NAMESPACE \
    --zipCode 'ICqB6OB7' \
    --paymentOrderNo 'Y2lctwon' \
    --paymentProvider 'PAYPAL' \
    > test.out 2>&1
eval_tap $? 304 'GetPaymentTaxValue' test.out

#- 305 GetRewardByCode
samples/cli/sample-apps Platform getRewardByCode \
    --namespace $AB_NAMESPACE \
    --rewardCode '4BF6fLVC' \
    > test.out 2>&1
eval_tap $? 305 'GetRewardByCode' test.out

#- 306 QueryRewards1
samples/cli/sample-apps Platform queryRewards1 \
    --namespace $AB_NAMESPACE \
    --eventTopic 'GzzpYmfA' \
    --limit '87' \
    --offset '64' \
    --sortBy '["rewardCode:desc", "rewardCode:asc"]' \
    > test.out 2>&1
eval_tap $? 306 'QueryRewards1' test.out

#- 307 GetReward1
samples/cli/sample-apps Platform getReward1 \
    --namespace $AB_NAMESPACE \
    --rewardId 'eoXUleWH' \
    > test.out 2>&1
eval_tap $? 307 'GetReward1' test.out

#- 308 PublicListStores
samples/cli/sample-apps Platform publicListStores \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 308 'PublicListStores' test.out

#- 309 PublicExistsAnyMyActiveEntitlement
samples/cli/sample-apps Platform publicExistsAnyMyActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --appIds '["x7OPDYYm", "7o7aM971", "3l2L2eAc"]' \
    --itemIds '["bBCwIBw3", "owzQCGk9", "ujyVnTBG"]' \
    --skus '["D7nfkj6m", "YxDGhnr0", "wfTq33xg"]' \
    > test.out 2>&1
eval_tap $? 309 'PublicExistsAnyMyActiveEntitlement' test.out

#- 310 PublicGetMyAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform publicGetMyAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --appId 'mCeWwLmb' \
    > test.out 2>&1
eval_tap $? 310 'PublicGetMyAppEntitlementOwnershipByAppId' test.out

#- 311 PublicGetMyEntitlementOwnershipByItemId
samples/cli/sample-apps Platform publicGetMyEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --entitlementClazz 'APP' \
    --itemId '0h9iskFE' \
    > test.out 2>&1
eval_tap $? 311 'PublicGetMyEntitlementOwnershipByItemId' test.out

#- 312 PublicGetMyEntitlementOwnershipBySku
samples/cli/sample-apps Platform publicGetMyEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --entitlementClazz 'OPTIONBOX' \
    --sku 'MLyfWxFT' \
    > test.out 2>&1
eval_tap $? 312 'PublicGetMyEntitlementOwnershipBySku' test.out

#- 313 PublicGetEntitlementOwnershipToken
samples/cli/sample-apps Platform publicGetEntitlementOwnershipToken \
    --namespace $AB_NAMESPACE \
    --appIds '["25G01SE1", "q4GUBUgj", "LXPQ28e0"]' \
    --itemIds '["qDvvCST1", "OrQBxPkb", "AmrAwcfF"]' \
    --skus '["FmVoq6F0", "iYfrsFUe", "0QBALtT5"]' \
    > test.out 2>&1
eval_tap $? 313 'PublicGetEntitlementOwnershipToken' test.out

#- 314 PublicGetMyWallet
samples/cli/sample-apps Platform publicGetMyWallet \
    --currencyCode 'T4PLTUqS' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 314 'PublicGetMyWallet' test.out

#- 315 SyncEpicGameDLC
samples/cli/sample-apps Platform syncEpicGameDLC \
    --namespace $AB_NAMESPACE \
    --userId 'qzap3x4V' \
    --body '{"epicGamesJwtToken": "qnChCJGw"}' \
    > test.out 2>&1
eval_tap $? 315 'SyncEpicGameDLC' test.out

#- 316 PublicSyncPsnDlcInventory
samples/cli/sample-apps Platform publicSyncPsnDlcInventory \
    --namespace $AB_NAMESPACE \
    --userId '3gq74Da9' \
    --body '{"serviceLabel": 61}' \
    > test.out 2>&1
eval_tap $? 316 'PublicSyncPsnDlcInventory' test.out

#- 317 SyncSteamDLC
samples/cli/sample-apps Platform syncSteamDLC \
    --namespace $AB_NAMESPACE \
    --userId 'k0EPgDAN' \
    --body '{"appId": "ZWBZXROJ", "steamId": "FTpnsAEz"}' \
    > test.out 2>&1
eval_tap $? 317 'SyncSteamDLC' test.out

#- 318 SyncXboxDLC
samples/cli/sample-apps Platform syncXboxDLC \
    --namespace $AB_NAMESPACE \
    --userId 'lI0PpxrV' \
    --body '{"xstsToken": "LRI3gBgw"}' \
    > test.out 2>&1
eval_tap $? 318 'SyncXboxDLC' test.out

#- 319 PublicQueryUserEntitlements
samples/cli/sample-apps Platform publicQueryUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'Ac5RFKui' \
    --appType 'SOFTWARE' \
    --entitlementClazz 'SUBSCRIPTION' \
    --entitlementName '9jTOB8tT' \
    --features '["rV6Jx8O8", "Ky7VuxcP", "GtbaUeYC"]' \
    --itemId '["nFChGIgT", "Vk1cEUct", "QL00rA9D"]' \
    --limit '19' \
    --offset '87' \
    > test.out 2>&1
eval_tap $? 319 'PublicQueryUserEntitlements' test.out

#- 320 PublicGetUserAppEntitlementByAppId
samples/cli/sample-apps Platform publicGetUserAppEntitlementByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'iXZVYolK' \
    --appId 'kVb6pxtw' \
    > test.out 2>&1
eval_tap $? 320 'PublicGetUserAppEntitlementByAppId' test.out

#- 321 PublicQueryUserEntitlementsByAppType
samples/cli/sample-apps Platform publicQueryUserEntitlementsByAppType \
    --namespace $AB_NAMESPACE \
    --userId 'YP0uijeF' \
    --limit '5' \
    --offset '4' \
    --appType 'SOFTWARE' \
    > test.out 2>&1
eval_tap $? 321 'PublicQueryUserEntitlementsByAppType' test.out

#- 322 PublicGetUserEntitlementByItemId
samples/cli/sample-apps Platform publicGetUserEntitlementByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'wFj7tJm0' \
    --entitlementClazz 'APP' \
    --itemId 'YbRAkCIG' \
    > test.out 2>&1
eval_tap $? 322 'PublicGetUserEntitlementByItemId' test.out

#- 323 PublicGetUserEntitlementBySku
samples/cli/sample-apps Platform publicGetUserEntitlementBySku \
    --namespace $AB_NAMESPACE \
    --userId '4jt0R3Cf' \
    --entitlementClazz 'SUBSCRIPTION' \
    --sku '2XTXOvBW' \
    > test.out 2>&1
eval_tap $? 323 'PublicGetUserEntitlementBySku' test.out

#- 324 PublicExistsAnyUserActiveEntitlement
samples/cli/sample-apps Platform publicExistsAnyUserActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'wwzm5i0M' \
    --appIds '["2ApUHFZN", "Q71oHEXB", "FaUR0Gz7"]' \
    --itemIds '["bmnBpOib", "tpZn1VR8", "nKG1hX6C"]' \
    --skus '["AyBoB4dC", "CD5B4mRC", "DPUHA3WK"]' \
    > test.out 2>&1
eval_tap $? 324 'PublicExistsAnyUserActiveEntitlement' test.out

#- 325 PublicGetUserAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform publicGetUserAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --userId '7oOypgS4' \
    --appId 'QoQGe6Ma' \
    > test.out 2>&1
eval_tap $? 325 'PublicGetUserAppEntitlementOwnershipByAppId' test.out

#- 326 PublicGetUserEntitlementOwnershipByItemId
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'DllWD5LK' \
    --entitlementClazz 'MEDIA' \
    --itemId 'A0UZ3NPN' \
    > test.out 2>&1
eval_tap $? 326 'PublicGetUserEntitlementOwnershipByItemId' test.out

#- 327 PublicGetUserEntitlementOwnershipByItemIds
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipByItemIds \
    --namespace $AB_NAMESPACE \
    --userId '30zf3oDT' \
    --ids '["lzhsRxlg", "b75pA2yF", "1xuaQ0G1"]' \
    > test.out 2>&1
eval_tap $? 327 'PublicGetUserEntitlementOwnershipByItemIds' test.out

#- 328 PublicGetUserEntitlementOwnershipBySku
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --userId 'OVrqwG8N' \
    --entitlementClazz 'CODE' \
    --sku 'l4p46PYs' \
    > test.out 2>&1
eval_tap $? 328 'PublicGetUserEntitlementOwnershipBySku' test.out

#- 329 PublicGetUserEntitlement
samples/cli/sample-apps Platform publicGetUserEntitlement \
    --entitlementId '2IwkfvwT' \
    --namespace $AB_NAMESPACE \
    --userId 'pauGz6jZ' \
    > test.out 2>&1
eval_tap $? 329 'PublicGetUserEntitlement' test.out

#- 330 PublicConsumeUserEntitlement
samples/cli/sample-apps Platform publicConsumeUserEntitlement \
    --entitlementId '8p5uacEO' \
    --namespace $AB_NAMESPACE \
    --userId 'N0cSEXV3' \
    --body '{"options": ["Ah56vCjL", "USRjnCga", "ij95kv5V"], "requestId": "wHRxL9jq", "useCount": 100}' \
    > test.out 2>&1
eval_tap $? 330 'PublicConsumeUserEntitlement' test.out

#- 331 PublicRedeemCode
samples/cli/sample-apps Platform publicRedeemCode \
    --namespace $AB_NAMESPACE \
    --userId 'ek0znAZt' \
    --body '{"code": "tfilgGof", "language": "xtTR_zy", "region": "bACD9Yk5"}' \
    > test.out 2>&1
eval_tap $? 331 'PublicRedeemCode' test.out

#- 332 PublicFulfillAppleIAPItem
samples/cli/sample-apps Platform publicFulfillAppleIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'VSKQBrx7' \
    --body '{"excludeOldTransactions": true, "language": "wYpU_mOdh", "productId": "y7a7uAVx", "receiptData": "oQ8FjfHy", "region": "oC4x3c2e", "transactionId": "cDGnfAvH"}' \
    > test.out 2>&1
eval_tap $? 332 'PublicFulfillAppleIAPItem' test.out

#- 333 SyncEpicGamesInventory
samples/cli/sample-apps Platform syncEpicGamesInventory \
    --namespace $AB_NAMESPACE \
    --userId 'MWAgXgE8' \
    --body '{"epicGamesJwtToken": "8hjJdh6N"}' \
    > test.out 2>&1
eval_tap $? 333 'SyncEpicGamesInventory' test.out

#- 334 PublicFulfillGoogleIAPItem
samples/cli/sample-apps Platform publicFulfillGoogleIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'mZwtaI2k' \
    --body '{"autoAck": false, "language": "UcoZ-mSHl_889", "orderId": "dk7QjKRW", "packageName": "iZ7GhRKt", "productId": "57aox9cu", "purchaseTime": 35, "purchaseToken": "fPXXzN4f", "region": "VUoZ0ZGt"}' \
    > test.out 2>&1
eval_tap $? 334 'PublicFulfillGoogleIAPItem' test.out

#- 335 PublicReconcilePlayStationStore
samples/cli/sample-apps Platform publicReconcilePlayStationStore \
    --namespace $AB_NAMESPACE \
    --userId 'plYzn063' \
    --body '{"currencyCode": "W1PKuNKu", "price": 0.21709777905593608, "productId": "SXWCCS9F", "serviceLabel": 22}' \
    > test.out 2>&1
eval_tap $? 335 'PublicReconcilePlayStationStore' test.out

#- 336 SyncStadiaEntitlement
samples/cli/sample-apps Platform syncStadiaEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'ldZK1tEH' \
    --body '{"appId": "HFdkVNrM", "language": "lwPZ_TXJO", "region": "SyxdDEfi", "stadiaPlayerId": "uW9QO7hr"}' \
    > test.out 2>&1
eval_tap $? 336 'SyncStadiaEntitlement' test.out

#- 337 SyncSteamInventory
samples/cli/sample-apps Platform syncSteamInventory \
    --namespace $AB_NAMESPACE \
    --userId 'sDbpXL9r' \
    --body '{"appId": "iPSr8dfz", "currencyCode": "4V6yVbzf", "language": "MEO_069", "price": 0.1994896286034895, "productId": "WQXHej9O", "region": "14su592G", "steamId": "3cynMe2h"}' \
    > test.out 2>&1
eval_tap $? 337 'SyncSteamInventory' test.out

#- 338 SyncTwitchDropsEntitlement
samples/cli/sample-apps Platform syncTwitchDropsEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'GC893YSR' \
    --body '{"gameId": "ToCZzOCh", "language": "GNq-fiVM", "region": "ilYipxA5"}' \
    > test.out 2>&1
eval_tap $? 338 'SyncTwitchDropsEntitlement' test.out

#- 339 SyncXboxInventory
samples/cli/sample-apps Platform syncXboxInventory \
    --namespace $AB_NAMESPACE \
    --userId 'LLu5PhgX' \
    --body '{"currencyCode": "96gtRtYT", "price": 0.042845574240704454, "productId": "ZuOI8xw3", "xstsToken": "NqQeYaRs"}' \
    > test.out 2>&1
eval_tap $? 339 'SyncXboxInventory' test.out

#- 340 PublicQueryUserOrders
samples/cli/sample-apps Platform publicQueryUserOrders \
    --namespace $AB_NAMESPACE \
    --userId 'nLpC2CNl' \
    --itemId 'OJQyVIpo' \
    --limit '5' \
    --offset '94' \
    --status 'CLOSED' \
    > test.out 2>&1
eval_tap $? 340 'PublicQueryUserOrders' test.out

#- 341 PublicCreateUserOrder
samples/cli/sample-apps Platform publicCreateUserOrder \
    --namespace $AB_NAMESPACE \
    --userId 'oibj7nxU' \
    --body '{"currencyCode": "tLoWKzBd", "discountedPrice": 51, "ext": {"i1OlY6j6": {}, "V3WZepUn": {}, "Exb9MVWg": {}}, "itemId": "K1x0zNux", "language": "Tfll_ANHU", "price": 74, "quantity": 16, "region": "amtqdh4t", "returnUrl": "CkGdRk7d"}' \
    > test.out 2>&1
eval_tap $? 341 'PublicCreateUserOrder' test.out

#- 342 PublicGetUserOrder
samples/cli/sample-apps Platform publicGetUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'idQblEyw' \
    --userId 'PNAJBLMB' \
    > test.out 2>&1
eval_tap $? 342 'PublicGetUserOrder' test.out

#- 343 PublicCancelUserOrder
samples/cli/sample-apps Platform publicCancelUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'rCRSxZPT' \
    --userId 'whehFUDb' \
    > test.out 2>&1
eval_tap $? 343 'PublicCancelUserOrder' test.out

#- 344 PublicGetUserOrderHistories
samples/cli/sample-apps Platform publicGetUserOrderHistories \
    --namespace $AB_NAMESPACE \
    --orderNo 'XvjjHueA' \
    --userId 'bmS4RvnD' \
    > test.out 2>&1
eval_tap $? 344 'PublicGetUserOrderHistories' test.out

#- 345 PublicDownloadUserOrderReceipt
samples/cli/sample-apps Platform publicDownloadUserOrderReceipt \
    --namespace $AB_NAMESPACE \
    --orderNo 'K3Dnvlg6' \
    --userId 'RTUHnsHj' \
    > test.out 2>&1
eval_tap $? 345 'PublicDownloadUserOrderReceipt' test.out

#- 346 PublicGetPaymentAccounts
samples/cli/sample-apps Platform publicGetPaymentAccounts \
    --namespace $AB_NAMESPACE \
    --userId 'lR4be8Bi' \
    > test.out 2>&1
eval_tap $? 346 'PublicGetPaymentAccounts' test.out

#- 347 PublicDeletePaymentAccount
samples/cli/sample-apps Platform publicDeletePaymentAccount \
    --id 'tZO1Y0by' \
    --namespace $AB_NAMESPACE \
    --type 'card' \
    --userId 'ZGltfEUf' \
    > test.out 2>&1
eval_tap $? 347 'PublicDeletePaymentAccount' test.out

#- 348 PublicQueryUserSubscriptions
samples/cli/sample-apps Platform publicQueryUserSubscriptions \
    --namespace $AB_NAMESPACE \
    --userId 'VXcfHYp2' \
    --chargeStatus 'NEVER' \
    --itemId 'DlnZAHJB' \
    --limit '95' \
    --offset '15' \
    --sku 'yxEH1o9e' \
    --status 'EXPIRED' \
    --subscribedBy 'USER' \
    > test.out 2>&1
eval_tap $? 348 'PublicQueryUserSubscriptions' test.out

#- 349 PublicSubscribeSubscription
samples/cli/sample-apps Platform publicSubscribeSubscription \
    --namespace $AB_NAMESPACE \
    --userId 'LV7CvWnX' \
    --body '{"currencyCode": "cAUXBMWq", "itemId": "v4Q0gKbv", "language": "Tx", "region": "BS0sBeFv", "returnUrl": "RgAt9kOk", "source": "B8BF44Hd"}' \
    > test.out 2>&1
eval_tap $? 349 'PublicSubscribeSubscription' test.out

#- 350 PublicCheckUserSubscriptionSubscribableByItemId
samples/cli/sample-apps Platform publicCheckUserSubscriptionSubscribableByItemId \
    --namespace $AB_NAMESPACE \
    --userId '24stjtnw' \
    --itemId '4cCcPDPS' \
    > test.out 2>&1
eval_tap $? 350 'PublicCheckUserSubscriptionSubscribableByItemId' test.out

#- 351 PublicGetUserSubscription
samples/cli/sample-apps Platform publicGetUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'NFlNRt8e' \
    --userId 'H1jhRuSH' \
    > test.out 2>&1
eval_tap $? 351 'PublicGetUserSubscription' test.out

#- 352 PublicChangeSubscriptionBillingAccount
samples/cli/sample-apps Platform publicChangeSubscriptionBillingAccount \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'IlfDeDFX' \
    --userId 'MCUzdUAY' \
    > test.out 2>&1
eval_tap $? 352 'PublicChangeSubscriptionBillingAccount' test.out

#- 353 PublicCancelSubscription
samples/cli/sample-apps Platform publicCancelSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'hdcwtNlC' \
    --userId 'nF0sPY4e' \
    --body '{"immediate": true, "reason": "Ln4eeDEU"}' \
    > test.out 2>&1
eval_tap $? 353 'PublicCancelSubscription' test.out

#- 354 PublicGetUserSubscriptionBillingHistories
samples/cli/sample-apps Platform publicGetUserSubscriptionBillingHistories \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'mbaxxkuP' \
    --userId 'h1Tr18wL' \
    --excludeFree 'false' \
    --limit '93' \
    --offset '40' \
    > test.out 2>&1
eval_tap $? 354 'PublicGetUserSubscriptionBillingHistories' test.out

#- 355 PublicGetWallet
samples/cli/sample-apps Platform publicGetWallet \
    --currencyCode 'pUmzo1nD' \
    --namespace $AB_NAMESPACE \
    --userId 'qCgT0Yel' \
    > test.out 2>&1
eval_tap $? 355 'PublicGetWallet' test.out

#- 356 PublicListUserWalletTransactions
samples/cli/sample-apps Platform publicListUserWalletTransactions \
    --currencyCode 'btnfA4d3' \
    --namespace $AB_NAMESPACE \
    --userId 'T4G8SiQB' \
    --limit '20' \
    --offset '62' \
    > test.out 2>&1
eval_tap $? 356 'PublicListUserWalletTransactions' test.out

#- 357 QueryItems1
samples/cli/sample-apps Platform queryItems1 \
    --namespace $AB_NAMESPACE \
    --appType 'SOFTWARE' \
    --availableDate 'yaycHGri' \
    --baseAppId '0Aw0Gbjk' \
    --categoryPath '2kYyjBH6' \
    --features '68eD2BFR' \
    --includeSubCategoryItem 'false' \
    --itemStatus 'ACTIVE' \
    --itemType 'SUBSCRIPTION' \
    --limit '14' \
    --offset '15' \
    --region 'GFR8XzZX' \
    --sortBy '["displayOrder:asc", "createdAt:asc", "updatedAt:asc"]' \
    --storeId 'Too8RTKo' \
    --tags 'jMFR1dft' \
    --targetNamespace 'xwdA2hGB' \
    > test.out 2>&1
eval_tap $? 357 'QueryItems1' test.out

#- 358 ImportStore1
samples/cli/sample-apps Platform importStore1 \
    --namespace $AB_NAMESPACE \
    --storeId '4m8tLDFv' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 358 'ImportStore1' test.out

#- 359 ExportStore1
samples/cli/sample-apps Platform exportStore1 \
    --namespace $AB_NAMESPACE \
    --storeId 'cnUijhgY' \
    --body '{"itemIds": ["MbbUjmf3", "uCRixCUe", "5ASSUy8L"]}' \
    > test.out 2>&1
eval_tap $? 359 'ExportStore1' test.out


rm -f "tmp.dat"

exit $EXIT_CODE