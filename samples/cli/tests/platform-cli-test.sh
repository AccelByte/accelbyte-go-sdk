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
    --body '{"context": {"item": {"appId": "rzFcgSSs", "appType": "DEMO", "baseAppId": "rYAL1w0f", "boothName": "V9oyRuc6", "boundItemIds": ["hq1dss0a", "SwlsM5eH", "xJiFkSxd"], "categoryPath": "DWl1jiFx", "clazz": "upkTwDwq", "createdAt": "1972-08-08T00:00:00Z", "description": "Bi0MnNiJ", "displayOrder": 16, "entitlementType": "CONSUMABLE", "ext": {"dU3vfQna": {}, "O4SHeujc": {}, "kSLgZrdz": {}}, "features": ["5fGlj6ME", "AwwZux6K", "uil92qCw"], "images": [{"as": "kAZPndd7", "caption": "S4Wfk17K", "height": 0, "imageUrl": "dbo8qOF5", "smallImageUrl": "yeG67mfv", "width": 66}, {"as": "5nKdr2GN", "caption": "1IadqdH7", "height": 6, "imageUrl": "IIgNydng", "smallImageUrl": "5g2N73ta", "width": 34}, {"as": "BbKsVs6R", "caption": "yZ6BQAE7", "height": 28, "imageUrl": "b3a02sBs", "smallImageUrl": "UkWR2Kr6", "width": 77}], "itemId": "Dw1ny69o", "itemIds": ["UGBhNzss", "eDEr08OK", "3kmyYm6b"], "itemQty": {"scodqwpJ": 6, "AYo4p9co": 44, "EaxYek6K": 8}, "itemType": "MEDIA", "language": "JPP6lAJh", "listable": true, "localExt": {"psMa0NCL": {}, "uHPZ4QPV": {}, "XWR3aq3X": {}}, "longDescription": "cIC2g56a", "maxCount": 97, "maxCountPerUser": 4, "name": "sur2mCBc", "namespace": "RIPutjgb", "optionBoxConfig": {"boxItems": [{"count": 27, "itemId": "dN3d4JZZ", "itemSku": "FklksZ43"}, {"count": 1, "itemId": "D8Umt0IF", "itemSku": "osdLGIJI"}, {"count": 12, "itemId": "LlVqw0GN", "itemSku": "HZOfu0jo"}]}, "purchasable": false, "purchaseCondition": {"conditionGroups": [{"operator": "or", "predicates": [{"anyOf": 39, "comparison": "isNot", "name": "gX7txNvs", "predicateType": "SeasonTierPredicate", "value": "eTHFitDr", "values": ["u7hgLVxD", "fkFiqaiA", "ai9Dhmc1"]}, {"anyOf": 22, "comparison": "excludes", "name": "rY1xtoIy", "predicateType": "SeasonTierPredicate", "value": "0hwY7vWO", "values": ["0IZTFvwn", "OSo3iJLd", "RKKk4KyT"]}, {"anyOf": 82, "comparison": "excludes", "name": "LtdMQYw6", "predicateType": "EntitlementPredicate", "value": "Lvqr9oud", "values": ["U6v0XZWL", "nOQRB0A2", "n6HgA0IP"]}]}, {"operator": "and", "predicates": [{"anyOf": 56, "comparison": "excludes", "name": "CxNQLoDA", "predicateType": "SeasonPassPredicate", "value": "yTzZjr2p", "values": ["0Panausf", "X9NpjFD2", "xKgVvbYF"]}, {"anyOf": 75, "comparison": "isGreaterThan", "name": "qBV8J2FH", "predicateType": "EntitlementPredicate", "value": "5PhOlvy7", "values": ["Ty33nLkG", "7YDJE8Eq", "gHTy07T9"]}, {"anyOf": 88, "comparison": "isGreaterThan", "name": "7LNMG1uz", "predicateType": "EntitlementPredicate", "value": "M5dLzoYj", "values": ["SVeQrASU", "vhGXP5TD", "B3j7quDx"]}]}, {"operator": "and", "predicates": [{"anyOf": 7, "comparison": "isLessThan", "name": "GTqu1jGM", "predicateType": "SeasonTierPredicate", "value": "gm5y45a9", "values": ["l5lE738J", "e1uyASRg", "nIbAFJJh"]}, {"anyOf": 77, "comparison": "isGreaterThan", "name": "8d6ooL6l", "predicateType": "SeasonTierPredicate", "value": "5fAI6G7R", "values": ["CsyHAGiV", "mJreCYWT", "eME5d7iO"]}, {"anyOf": 94, "comparison": "is", "name": "4nSSUCEo", "predicateType": "SeasonPassPredicate", "value": "bMzrxFGd", "values": ["i8YZGglY", "3xoSgbnW", "U5Vx5PAG"]}]}]}, "recurring": {"cycle": "YEARLY", "fixedFreeDays": 85, "fixedTrialCycles": 60, "graceDays": 60}, "region": "lMydl9OK", "regionData": [{"currencyCode": "yI0dRvke", "currencyNamespace": "coCPWf6u", "currencyType": "REAL", "discountAmount": 38, "discountExpireAt": "1977-06-22T00:00:00Z", "discountPercentage": 17, "discountPurchaseAt": "1988-05-06T00:00:00Z", "discountedPrice": 11, "expireAt": "1976-08-09T00:00:00Z", "price": 59, "purchaseAt": "1975-11-23T00:00:00Z", "trialPrice": 77}, {"currencyCode": "4pTxyTPP", "currencyNamespace": "qKkQBZv9", "currencyType": "VIRTUAL", "discountAmount": 74, "discountExpireAt": "1974-03-30T00:00:00Z", "discountPercentage": 82, "discountPurchaseAt": "1993-06-27T00:00:00Z", "discountedPrice": 91, "expireAt": "1981-05-21T00:00:00Z", "price": 44, "purchaseAt": "1981-12-05T00:00:00Z", "trialPrice": 2}, {"currencyCode": "A5v4eQD2", "currencyNamespace": "x9cQSt99", "currencyType": "VIRTUAL", "discountAmount": 39, "discountExpireAt": "1978-05-09T00:00:00Z", "discountPercentage": 17, "discountPurchaseAt": "1972-11-28T00:00:00Z", "discountedPrice": 52, "expireAt": "1994-02-28T00:00:00Z", "price": 47, "purchaseAt": "1987-05-10T00:00:00Z", "trialPrice": 51}], "seasonType": "TIER", "sku": "lHGcCP1E", "stackable": false, "status": "INACTIVE", "tags": ["Y6n0FAYg", "ghXwRz1x", "rWwIEFZh"], "targetCurrencyCode": "wEoEbDFH", "targetItemId": "SBf5LhBW", "targetNamespace": "aiOAduXZ", "thumbnailUrl": "hmnyAXWB", "title": "IeHGzy7P", "updatedAt": "1989-08-12T00:00:00Z", "useCount": 18}, "namespace": "HWhQJBpE", "order": {"currency": {"currencyCode": "xNqFp9cx", "currencySymbol": "lYpWiXmZ", "currencyType": "REAL", "decimals": 33, "namespace": "jcw0Zi9O"}, "ext": {"NqIBmSIh": {}, "Zaj3B3D5": {}, "k13n6Olg": {}}, "free": false}, "source": "OTHER"}, "script": "Na88Zcpl", "type": "grantDays"}' \
    > test.out 2>&1
eval_tap $? 3 'TestFulfillmentScriptEval' test.out

#- 4 GetFulfillmentScript
samples/cli/sample-apps Platform getFulfillmentScript \
    --id 'K2DWkRG9' \
    > test.out 2>&1
eval_tap $? 4 'GetFulfillmentScript' test.out

#- 5 CreateFulfillmentScript
samples/cli/sample-apps Platform createFulfillmentScript \
    --id 'DQr69r6Z' \
    --body '{"grantDays": "RvBo9hg6"}' \
    > test.out 2>&1
eval_tap $? 5 'CreateFulfillmentScript' test.out

#- 6 DeleteFulfillmentScript
samples/cli/sample-apps Platform deleteFulfillmentScript \
    --id 'InvZPDKp' \
    > test.out 2>&1
eval_tap $? 6 'DeleteFulfillmentScript' test.out

#- 7 UpdateFulfillmentScript
samples/cli/sample-apps Platform updateFulfillmentScript \
    --id 'O9y9pF5z' \
    --body '{"grantDays": "R3rWoGx9"}' \
    > test.out 2>&1
eval_tap $? 7 'UpdateFulfillmentScript' test.out

#- 8 QueryCampaigns
samples/cli/sample-apps Platform queryCampaigns \
    --namespace $AB_NAMESPACE \
    --limit '48' \
    --name 'oPwEPmZk' \
    --offset '57' \
    --tag 'EoSg6BYB' \
    > test.out 2>&1
eval_tap $? 8 'QueryCampaigns' test.out

#- 9 CreateCampaign
samples/cli/sample-apps Platform createCampaign \
    --namespace $AB_NAMESPACE \
    --body '{"description": "WiHc7rpd", "items": [{"extraSubscriptionDays": 56, "itemId": "Po1wsxaG", "itemName": "mWJbnzkc", "quantity": 94}, {"extraSubscriptionDays": 42, "itemId": "2pBf0FhQ", "itemName": "AGZmuSVL", "quantity": 69}, {"extraSubscriptionDays": 11, "itemId": "McnQ3esq", "itemName": "pvuBb2UJ", "quantity": 83}], "maxRedeemCountPerCampaignPerUser": 85, "maxRedeemCountPerCode": 86, "maxRedeemCountPerCodePerUser": 49, "maxSaleCount": 57, "name": "yzTybH4B", "redeemEnd": "1976-10-27T00:00:00Z", "redeemStart": "1990-07-11T00:00:00Z", "redeemType": "ITEM", "status": "ACTIVE", "tags": ["MByuNTib", "BkAYZAdD", "snFtPbQv"], "type": "REDEMPTION"}' \
    > test.out 2>&1
eval_tap $? 9 'CreateCampaign' test.out

#- 10 GetCampaign
samples/cli/sample-apps Platform getCampaign \
    --campaignId 'e5xaPnXK' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 10 'GetCampaign' test.out

#- 11 UpdateCampaign
samples/cli/sample-apps Platform updateCampaign \
    --campaignId 'uf4BF9BU' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "HaAabi2w", "items": [{"extraSubscriptionDays": 87, "itemId": "OWNmRBix", "itemName": "8F3A4GVT", "quantity": 80}, {"extraSubscriptionDays": 79, "itemId": "KhGstZ9T", "itemName": "vzjBySId", "quantity": 88}, {"extraSubscriptionDays": 76, "itemId": "RFIzceq1", "itemName": "WIHLWCAp", "quantity": 0}], "maxRedeemCountPerCampaignPerUser": 63, "maxRedeemCountPerCode": 61, "maxRedeemCountPerCodePerUser": 84, "maxSaleCount": 85, "name": "I6Fq4DYi", "redeemEnd": "1976-05-21T00:00:00Z", "redeemStart": "1987-05-08T00:00:00Z", "redeemType": "ITEM", "status": "INACTIVE", "tags": ["EMPdDgBI", "sJC11jQZ", "E9EfWNeN"]}' \
    > test.out 2>&1
eval_tap $? 11 'UpdateCampaign' test.out

#- 12 GetCampaignDynamic
samples/cli/sample-apps Platform getCampaignDynamic \
    --campaignId 'iPCAJBX5' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'GetCampaignDynamic' test.out

#- 13 GetRootCategories
samples/cli/sample-apps Platform getRootCategories \
    --namespace $AB_NAMESPACE \
    --storeId 'j3o0aEpm' \
    > test.out 2>&1
eval_tap $? 13 'GetRootCategories' test.out

#- 14 CreateCategory
samples/cli/sample-apps Platform createCategory \
    --namespace $AB_NAMESPACE \
    --storeId '17yjVnr0' \
    --body '{"categoryPath": "FOWsfHoo", "localizationDisplayNames": {"UmFy5fid": "Dm4tn489", "QFSAvLNw": "VNT5Vlgb", "ofMQOWDU": "Q1XpImwE"}}' \
    > test.out 2>&1
eval_tap $? 14 'CreateCategory' test.out

#- 15 ListCategoriesBasic
samples/cli/sample-apps Platform listCategoriesBasic \
    --namespace $AB_NAMESPACE \
    --storeId 'q3b5qMrs' \
    > test.out 2>&1
eval_tap $? 15 'ListCategoriesBasic' test.out

#- 16 GetCategory
samples/cli/sample-apps Platform getCategory \
    --categoryPath '7fm8K3N0' \
    --namespace $AB_NAMESPACE \
    --storeId 'DmppyzZU' \
    > test.out 2>&1
eval_tap $? 16 'GetCategory' test.out

#- 17 UpdateCategory
samples/cli/sample-apps Platform updateCategory \
    --categoryPath 'yuo4d1GN' \
    --namespace $AB_NAMESPACE \
    --storeId 'fkmVuE3B' \
    --body '{"localizationDisplayNames": {"qkd2lPHu": "VG3UtFg6", "yNdmQiiS": "J1OCJaej", "OZn1lHSf": "pn9EfDht"}}' \
    > test.out 2>&1
eval_tap $? 17 'UpdateCategory' test.out

#- 18 DeleteCategory
samples/cli/sample-apps Platform deleteCategory \
    --categoryPath 'Vm4q43XT' \
    --namespace $AB_NAMESPACE \
    --storeId 'KxABiGHp' \
    > test.out 2>&1
eval_tap $? 18 'DeleteCategory' test.out

#- 19 GetChildCategories
samples/cli/sample-apps Platform getChildCategories \
    --categoryPath '7D4RfYMA' \
    --namespace $AB_NAMESPACE \
    --storeId 'ttolc2dR' \
    > test.out 2>&1
eval_tap $? 19 'GetChildCategories' test.out

#- 20 GetDescendantCategories
samples/cli/sample-apps Platform getDescendantCategories \
    --categoryPath 'x2ykeAIL' \
    --namespace $AB_NAMESPACE \
    --storeId '0QBwf6Jf' \
    > test.out 2>&1
eval_tap $? 20 'GetDescendantCategories' test.out

#- 21 QueryCodes
samples/cli/sample-apps Platform queryCodes \
    --campaignId 'CwcXPe63' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --batchNo '23' \
    --code 'MlIXjf4o' \
    --limit '26' \
    --offset '87' \
    > test.out 2>&1
eval_tap $? 21 'QueryCodes' test.out

#- 22 CreateCodes
samples/cli/sample-apps Platform createCodes \
    --campaignId 'fDQQ2Kml' \
    --namespace $AB_NAMESPACE \
    --body '{"quantity": 27}' \
    > test.out 2>&1
eval_tap $? 22 'CreateCodes' test.out

#- 23 Download
samples/cli/sample-apps Platform download \
    --campaignId 'k8zWZ4C1' \
    --namespace $AB_NAMESPACE \
    --batchNo '22' \
    > test.out 2>&1
eval_tap $? 23 'Download' test.out

#- 24 BulkDisableCodes
samples/cli/sample-apps Platform bulkDisableCodes \
    --campaignId 'RXbZ6zD5' \
    --namespace $AB_NAMESPACE \
    --batchNo '48' \
    > test.out 2>&1
eval_tap $? 24 'BulkDisableCodes' test.out

#- 25 BulkEnableCodes
samples/cli/sample-apps Platform bulkEnableCodes \
    --campaignId 'PQD2vNBN' \
    --namespace $AB_NAMESPACE \
    --batchNo '58' \
    > test.out 2>&1
eval_tap $? 25 'BulkEnableCodes' test.out

#- 26 QueryRedeemHistory
samples/cli/sample-apps Platform queryRedeemHistory \
    --campaignId 'SG6kQ1pO' \
    --namespace $AB_NAMESPACE \
    --code 'euMUZ7tC' \
    --limit '40' \
    --offset '56' \
    --userId 'cI4ksTwj' \
    > test.out 2>&1
eval_tap $? 26 'QueryRedeemHistory' test.out

#- 27 GetCode
samples/cli/sample-apps Platform getCode \
    --code 'A23us3pW' \
    --namespace $AB_NAMESPACE \
    --redeemable 'true' \
    > test.out 2>&1
eval_tap $? 27 'GetCode' test.out

#- 28 DisableCode
samples/cli/sample-apps Platform disableCode \
    --code 'J7lLK66O' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'DisableCode' test.out

#- 29 EnableCode
samples/cli/sample-apps Platform enableCode \
    --code 'GxR09gDm' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'EnableCode' test.out

#- 30 ListCurrencies
samples/cli/sample-apps Platform listCurrencies \
    --namespace $AB_NAMESPACE \
    --currencyType 'VIRTUAL' \
    > test.out 2>&1
eval_tap $? 30 'ListCurrencies' test.out

#- 31 CreateCurrency
samples/cli/sample-apps Platform createCurrency \
    --namespace $AB_NAMESPACE \
    --body '{"currencyCode": "NvzjQgae", "currencySymbol": "xsuSYidF", "currencyType": "REAL", "decimals": 59, "localizationDescriptions": {"llv1XI9y": "pmeEdpM7", "wsi72NA1": "tBWUwBr6", "jB1w9rfy": "VdkJSe8S"}}' \
    > test.out 2>&1
eval_tap $? 31 'CreateCurrency' test.out

#- 32 UpdateCurrency
samples/cli/sample-apps Platform updateCurrency \
    --currencyCode '6TkH8Djs' \
    --namespace $AB_NAMESPACE \
    --body '{"localizationDescriptions": {"dNoJlcvh": "RMJ9s3Wi", "p4k3QgxB": "7xEdoTgt", "v6p9HDA8": "0cuTjil4"}}' \
    > test.out 2>&1
eval_tap $? 32 'UpdateCurrency' test.out

#- 33 DeleteCurrency
samples/cli/sample-apps Platform deleteCurrency \
    --currencyCode 'zOEmmkjk' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 33 'DeleteCurrency' test.out

#- 34 GetCurrencyConfig
samples/cli/sample-apps Platform getCurrencyConfig \
    --currencyCode 'EK0hpUDp' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 34 'GetCurrencyConfig' test.out

#- 35 GetCurrencySummary
samples/cli/sample-apps Platform getCurrencySummary \
    --currencyCode 'a0MsbspL' \
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
    --body '{"data": [{"id": "PNy57HRK", "rewards": [{"currency": {"currencyCode": "BB6nH3Xk", "namespace": "lBrEx0LR"}, "item": {"itemId": "uZWF8t0D", "itemSku": "o026Y7qt", "itemType": "8ZVMfHbR"}, "quantity": 40, "type": "CURRENCY"}, {"currency": {"currencyCode": "aAhsKOWu", "namespace": "HMVrjpMp"}, "item": {"itemId": "tt3n2NgS", "itemSku": "INEhwQkb", "itemType": "N2iXG2ab"}, "quantity": 94, "type": "ITEM"}, {"currency": {"currencyCode": "gAahNct9", "namespace": "7IWjo9lc"}, "item": {"itemId": "sOQPXsae", "itemSku": "rETX9k29", "itemType": "KKKtci9b"}, "quantity": 33, "type": "ITEM"}]}, {"id": "gRGrqKlc", "rewards": [{"currency": {"currencyCode": "dPMayoSr", "namespace": "P7ck39CT"}, "item": {"itemId": "lXyxs5Fl", "itemSku": "kSsbNqtc", "itemType": "Nx1NsgeP"}, "quantity": 36, "type": "ITEM"}, {"currency": {"currencyCode": "bSyLNBcZ", "namespace": "YUloJZPH"}, "item": {"itemId": "QTjlkXO5", "itemSku": "1p1ukDlv", "itemType": "iA6O4y5k"}, "quantity": 35, "type": "CURRENCY"}, {"currency": {"currencyCode": "k4YvQBVE", "namespace": "zQVAmqQM"}, "item": {"itemId": "25h0c6H0", "itemSku": "r5qQNg7D", "itemType": "Vev90kvk"}, "quantity": 90, "type": "CURRENCY"}]}, {"id": "8OJN4GCn", "rewards": [{"currency": {"currencyCode": "6z7I9tCk", "namespace": "v0sYS40X"}, "item": {"itemId": "CoOar826", "itemSku": "lPssVyQR", "itemType": "808ekKLf"}, "quantity": 52, "type": "CURRENCY"}, {"currency": {"currencyCode": "ujDsYGG1", "namespace": "wwylQLsJ"}, "item": {"itemId": "MpU3Ozui", "itemSku": "ddO0JCbM", "itemType": "st7gD5l2"}, "quantity": 4, "type": "CURRENCY"}, {"currency": {"currencyCode": "5fXIfAYo", "namespace": "GxwvwGqJ"}, "item": {"itemId": "V86xtqpD", "itemSku": "ScUb7Jnk", "itemType": "uBS8ty98"}, "quantity": 55, "type": "ITEM"}]}]}' \
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
    --body '{"data": [{"platform": "STEAM", "platformDlcIdMap": {"2eQ1i4WU": "VTdmOcNl", "rI4Ezx9w": "tQ2t71D0", "zoN8tvB8": "ePkQcI3d"}}, {"platform": "PSN", "platformDlcIdMap": {"OS8OWNnW": "ZguBUx81", "1iL8qylP": "jJAcvalV", "U2TQyEGz": "Ko9j3EAY"}}, {"platform": "PSN", "platformDlcIdMap": {"i7i2oxUX": "EW4E9m8K", "UGwWA9VQ": "ps81Bebl", "4gM023f9": "AQ9pIXH6"}}]}' \
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
    --appType 'SOFTWARE' \
    --entitlementClazz 'CODE' \
    --entitlementName '5yJ2HoL5' \
    --itemId '["KyDRW5Yp", "c5LAReNC", "kJr2vP1T"]' \
    --limit '74' \
    --offset '11' \
    --userId 'kU0SadB1' \
    > test.out 2>&1
eval_tap $? 42 'QueryEntitlements' test.out

#- 43 GetEntitlement
samples/cli/sample-apps Platform getEntitlement \
    --entitlementId '4S4p1c4j' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 43 'GetEntitlement' test.out

#- 44 QueryFulfillmentHistories
samples/cli/sample-apps Platform queryFulfillmentHistories \
    --namespace $AB_NAMESPACE \
    --limit '42' \
    --offset '49' \
    --status 'FAIL' \
    --userId 'RxNd9eGK' \
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
    --body '{"bundleId": "5E73eOjA", "password": "zspUcTz5"}' \
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
    --body '{"sandboxId": "AS4wtxly"}' \
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
    --body '{"applicationName": "5M53Wobv", "serviceAccountId": "Kr5cnKkp"}' \
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
    --body '{"data": [{"itemIdentity": "n7MqmX64", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"KZwjZgtZ": "kelu8PJj", "gJofN4dn": "ZHO9Ql96", "94gqtGHk": "Bx82ngHQ"}}, {"itemIdentity": "6j8xu5FQ", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"4SDYHqMt": "7UbitZVe", "UV2hwnIQ": "KJG5yRph", "u7EOYZ64": "0SKaS696"}}, {"itemIdentity": "Jr12YbmZ", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"ocE9bQ8E": "OVmdUDDs", "WN3M92rx": "XfCmyNpa", "U9iJnRhM": "uBKjWYlz"}}]}' \
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
    --body '{"environment": "pcpoBsLg"}' \
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
    --body '{"appId": "QnBmE4Mo", "publisherAuthenticationKey": "wrez9seR"}' \
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
    --body '{"clientId": "XJcRJBnu", "clientSecret": "ICFz6jPV", "organizationId": "f8o0EhG9"}' \
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
    --body '{"relyingPartyCert": "8Y5Ylkkk"}' \
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
    --password 'ZqOvLb8j' \
    > test.out 2>&1
eval_tap $? 73 'UpdateXblBPCertFile' test.out

#- 74 SyncInGameItem
samples/cli/sample-apps Platform syncInGameItem \
    --namespace $AB_NAMESPACE \
    --storeId 'Dh8Qd2fK' \
    --body '{"categoryPath": "1ITk84SV", "targetItemId": "YfxhAnef", "targetNamespace": "fuBUxUnl"}' \
    > test.out 2>&1
eval_tap $? 74 'SyncInGameItem' test.out

#- 75 CreateItem
samples/cli/sample-apps Platform createItem \
    --namespace $AB_NAMESPACE \
    --storeId '4JuMkcPR' \
    --body '{"appId": "pUigUDVj", "appType": "GAME", "baseAppId": "5qD8GnLY", "boothName": "vnffcB38", "categoryPath": "DxiziQAs", "clazz": "D6lbbgdA", "displayOrder": 85, "entitlementType": "DURABLE", "ext": {"jAGjoPfG": {}, "o5B9Wacc": {}, "izQc2B64": {}}, "features": ["vfjpx0lJ", "dXkfKEZD", "Rl3Va2ZM"], "images": [{"as": "kD1XYh2w", "caption": "EgCuF0ve", "height": 95, "imageUrl": "nayR5Bmb", "smallImageUrl": "TxiXdXCJ", "width": 14}, {"as": "iQFq4iha", "caption": "mQ08FSRq", "height": 18, "imageUrl": "8H3xQ1Di", "smallImageUrl": "LJ26kEzt", "width": 78}, {"as": "hWkxkV5P", "caption": "KMtHA2fa", "height": 21, "imageUrl": "RG7RjX2W", "smallImageUrl": "7mWFo9Sd", "width": 22}], "itemIds": ["u0MMwet4", "UcY8SKs1", "iYBFUPab"], "itemQty": {"WfnfqLnf": 3, "qutrKM7F": 44, "9f7xG9hS": 39}, "itemType": "MEDIA", "listable": false, "localizations": {"FEDRahun": {"description": "nv5vMISC", "localExt": {"qm6TokNz": {}, "3zaYD3YZ": {}, "cp8aNb1R": {}}, "longDescription": "QL0aXZpc", "title": "q1JJFXdj"}, "FmX3ImwQ": {"description": "apev9mFa", "localExt": {"T0hLfCYL": {}, "cSUUyNNr": {}, "ljWSS87u": {}}, "longDescription": "8SoNCSSO", "title": "5KadYgBy"}, "hU534ExM": {"description": "wP4TnbjR", "localExt": {"XCt7f2eB": {}, "woPHs7Tv": {}, "uybVSVVb": {}}, "longDescription": "OgYZMmy7", "title": "1YwfoQQL"}}, "maxCount": 91, "maxCountPerUser": 95, "name": "dxE3a0v8", "optionBoxConfig": {"boxItems": [{"count": 89, "itemId": "aKbc9nf4", "itemSku": "1zTBvACN"}, {"count": 69, "itemId": "Akaaqabl", "itemSku": "Fy8Ua8jX"}, {"count": 37, "itemId": "B9SR5lGO", "itemSku": "CJMMHi8c"}]}, "purchasable": false, "recurring": {"cycle": "MONTHLY", "fixedFreeDays": 39, "fixedTrialCycles": 21, "graceDays": 79}, "regionData": {"smo5r8eS": [{"currencyCode": "U6HXilvG", "currencyNamespace": "8g3uQK4u", "currencyType": "REAL", "discountAmount": 44, "discountExpireAt": "1992-12-07T00:00:00Z", "discountPercentage": 2, "discountPurchaseAt": "1987-06-09T00:00:00Z", "discountedPrice": 65, "expireAt": "1987-07-21T00:00:00Z", "price": 86, "purchaseAt": "1987-08-12T00:00:00Z", "trialPrice": 79}, {"currencyCode": "6hWleEcX", "currencyNamespace": "CdQHOFGC", "currencyType": "REAL", "discountAmount": 30, "discountExpireAt": "1998-09-03T00:00:00Z", "discountPercentage": 83, "discountPurchaseAt": "1996-08-19T00:00:00Z", "discountedPrice": 50, "expireAt": "1973-11-11T00:00:00Z", "price": 55, "purchaseAt": "1971-10-08T00:00:00Z", "trialPrice": 52}, {"currencyCode": "qDWnHjVa", "currencyNamespace": "DZEgbmqZ", "currencyType": "REAL", "discountAmount": 81, "discountExpireAt": "1972-04-09T00:00:00Z", "discountPercentage": 48, "discountPurchaseAt": "1995-06-15T00:00:00Z", "discountedPrice": 18, "expireAt": "1983-01-06T00:00:00Z", "price": 50, "purchaseAt": "1982-04-08T00:00:00Z", "trialPrice": 43}], "zsXvJi0l": [{"currencyCode": "58pBZefZ", "currencyNamespace": "tDN9uic6", "currencyType": "VIRTUAL", "discountAmount": 53, "discountExpireAt": "1990-01-07T00:00:00Z", "discountPercentage": 10, "discountPurchaseAt": "1971-01-18T00:00:00Z", "discountedPrice": 16, "expireAt": "1987-11-12T00:00:00Z", "price": 26, "purchaseAt": "1977-06-17T00:00:00Z", "trialPrice": 45}, {"currencyCode": "zmnwJeBs", "currencyNamespace": "DOCz70Dt", "currencyType": "VIRTUAL", "discountAmount": 41, "discountExpireAt": "1983-05-22T00:00:00Z", "discountPercentage": 28, "discountPurchaseAt": "1991-02-19T00:00:00Z", "discountedPrice": 17, "expireAt": "1980-02-16T00:00:00Z", "price": 57, "purchaseAt": "1997-04-08T00:00:00Z", "trialPrice": 3}, {"currencyCode": "Hski5e5k", "currencyNamespace": "7MTVBvoL", "currencyType": "REAL", "discountAmount": 84, "discountExpireAt": "1980-02-16T00:00:00Z", "discountPercentage": 37, "discountPurchaseAt": "1996-03-27T00:00:00Z", "discountedPrice": 58, "expireAt": "1973-10-02T00:00:00Z", "price": 3, "purchaseAt": "1999-04-06T00:00:00Z", "trialPrice": 20}], "h6G1J8Hi": [{"currencyCode": "Yz8J0NTL", "currencyNamespace": "XB4Y5PBk", "currencyType": "REAL", "discountAmount": 93, "discountExpireAt": "1980-04-18T00:00:00Z", "discountPercentage": 77, "discountPurchaseAt": "1974-01-26T00:00:00Z", "discountedPrice": 99, "expireAt": "1979-09-03T00:00:00Z", "price": 1, "purchaseAt": "1972-09-26T00:00:00Z", "trialPrice": 2}, {"currencyCode": "RZRaOz66", "currencyNamespace": "M407Mngo", "currencyType": "VIRTUAL", "discountAmount": 36, "discountExpireAt": "1975-06-25T00:00:00Z", "discountPercentage": 81, "discountPurchaseAt": "1999-01-24T00:00:00Z", "discountedPrice": 78, "expireAt": "1971-11-27T00:00:00Z", "price": 57, "purchaseAt": "1983-01-04T00:00:00Z", "trialPrice": 75}, {"currencyCode": "gfDZwzkq", "currencyNamespace": "RIktxHpL", "currencyType": "VIRTUAL", "discountAmount": 45, "discountExpireAt": "1987-11-22T00:00:00Z", "discountPercentage": 51, "discountPurchaseAt": "1993-01-28T00:00:00Z", "discountedPrice": 1, "expireAt": "1993-11-11T00:00:00Z", "price": 90, "purchaseAt": "1985-08-19T00:00:00Z", "trialPrice": 22}]}, "seasonType": "PASS", "sku": "cihcDhqL", "stackable": false, "status": "INACTIVE", "tags": ["83ynPN3N", "Nsfbk27P", "p8GsjYxA"], "targetCurrencyCode": "KNy8dfES", "targetNamespace": "1eKVAjXW", "thumbnailUrl": "JItuz69Z", "useCount": 99}' \
    > test.out 2>&1
eval_tap $? 75 'CreateItem' test.out

#- 76 GetItemByAppId
samples/cli/sample-apps Platform getItemByAppId \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId '4ftX8W7q' \
    --appId 'qfdOilXC' \
    > test.out 2>&1
eval_tap $? 76 'GetItemByAppId' test.out

#- 77 QueryItems
samples/cli/sample-apps Platform queryItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --appType 'DEMO' \
    --availableDate 'IYCZDvXN' \
    --baseAppId 'QI2UoKO0' \
    --categoryPath 'c027TqjJ' \
    --features 'u3N18yld' \
    --itemType 'COINS' \
    --limit '60' \
    --offset '8' \
    --region 'wq1LoF3k' \
    --sortBy '["displayOrder:desc", "name", "createdAt"]' \
    --storeId 'sLWJcU8O' \
    --tags 'p7rDVAgF' \
    --targetNamespace 'Z8f9gCj0' \
    > test.out 2>&1
eval_tap $? 77 'QueryItems' test.out

#- 78 ListBasicItemsByFeatures
samples/cli/sample-apps Platform listBasicItemsByFeatures \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --features '["wmUEZbzK", "rCN4KILL", "9g2qAioj"]' \
    > test.out 2>&1
eval_tap $? 78 'ListBasicItemsByFeatures' test.out

#- 79 GetItemBySku
samples/cli/sample-apps Platform getItemBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --storeId 'MQj6F5qG' \
    --sku 'omL9Ixhd' \
    > test.out 2>&1
eval_tap $? 79 'GetItemBySku' test.out

#- 80 GetLocaleItemBySku
samples/cli/sample-apps Platform getLocaleItemBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --language 'p80aghqN' \
    --populateBundle 'false' \
    --region 'lyAWlrwj' \
    --storeId '5eXJJKxD' \
    --sku 'LWJmNysA' \
    > test.out 2>&1
eval_tap $? 80 'GetLocaleItemBySku' test.out

#- 81 GetItemIdBySku
samples/cli/sample-apps Platform getItemIdBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --storeId 'mj3oT4ww' \
    --sku 'ZbaFoTww' \
    > test.out 2>&1
eval_tap $? 81 'GetItemIdBySku' test.out

#- 82 GetBulkItemIdBySkus
samples/cli/sample-apps Platform getBulkItemIdBySkus \
    --namespace $AB_NAMESPACE \
    --sku '["LPSb4AaL", "mGWjJdjW", "qjDHkVuU"]' \
    --storeId 'cUUjyWAC' \
    > test.out 2>&1
eval_tap $? 82 'GetBulkItemIdBySkus' test.out

#- 83 BulkGetLocaleItems
samples/cli/sample-apps Platform bulkGetLocaleItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --language 'gmgfqTBB' \
    --region 'b88cPQ97' \
    --storeId 'ijxMDS6T' \
    --itemIds 'dzTK07pm' \
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
    --userId 'anmQ07WG' \
    --body '{"itemIds": ["vbM1fgYR", "mHm3f2bj", "CYXSO28r"]}' \
    > test.out 2>&1
eval_tap $? 85 'ValidateItemPurchaseCondition' test.out

#- 86 SearchItems
samples/cli/sample-apps Platform searchItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --itemType 'INGAMEITEM' \
    --limit '100' \
    --offset '1' \
    --storeId 'AxNJUV6Z' \
    --keyword 'cddxPtAv' \
    --language '5afCIAFQ' \
    > test.out 2>&1
eval_tap $? 86 'SearchItems' test.out

#- 87 QueryUncategorizedItems
samples/cli/sample-apps Platform queryUncategorizedItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --limit '85' \
    --offset '18' \
    --sortBy '["updatedAt", "createdAt", "displayOrder"]' \
    --storeId 'dE2JlQnk' \
    > test.out 2>&1
eval_tap $? 87 'QueryUncategorizedItems' test.out

#- 88 GetItem
samples/cli/sample-apps Platform getItem \
    --itemId 'OqZG4X8S' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'wVAqiTGX' \
    > test.out 2>&1
eval_tap $? 88 'GetItem' test.out

#- 89 UpdateItem
samples/cli/sample-apps Platform updateItem \
    --itemId 'HOo8zrVf' \
    --namespace $AB_NAMESPACE \
    --storeId 'UFuyfNoj' \
    --body '{"appId": "5HNaHqB9", "appType": "SOFTWARE", "baseAppId": "4MnX933E", "boothName": "o73qfTBZ", "categoryPath": "4Dr8ifWa", "clazz": "JdDGyqJj", "displayOrder": 16, "entitlementType": "CONSUMABLE", "ext": {"HrIcJWS6": {}, "mRPPolGw": {}, "hXdSxT43": {}}, "features": ["6HgyaK4l", "V1CNnIQe", "u39CJYa6"], "images": [{"as": "f5hxkqRf", "caption": "QYlPfycp", "height": 27, "imageUrl": "rYD8wfkQ", "smallImageUrl": "Ig7MgIOk", "width": 19}, {"as": "hVbjckfV", "caption": "pACsmSZH", "height": 8, "imageUrl": "bJFkMhi0", "smallImageUrl": "vS416QI2", "width": 40}, {"as": "547Ba3bQ", "caption": "j3595st6", "height": 71, "imageUrl": "Xk19JvLL", "smallImageUrl": "EhEp0MaY", "width": 56}], "itemIds": ["d68Ii8xb", "qjmN9zKX", "UAvqVpbE"], "itemQty": {"xRVS1ety": 20, "gwLVVMrX": 69, "sWEJD3Kd": 66}, "itemType": "CODE", "listable": false, "localizations": {"iF4dR32z": {"description": "CvKVi5ay", "localExt": {"BO7jmBCL": {}, "df3pPv4o": {}, "ZtB09cRU": {}}, "longDescription": "NdxrJuW4", "title": "okFaXOhd"}, "A4u4eixZ": {"description": "7dwOJhOA", "localExt": {"8dPxQUzL": {}, "mpQBeWFT": {}, "giPgPpTI": {}}, "longDescription": "SicM72SV", "title": "QE7Lmf60"}, "1jjkD3Gr": {"description": "mHryo8gT", "localExt": {"O1CyaO1T": {}, "zQ22f9wl": {}, "esPJJJaU": {}}, "longDescription": "noMpgu0X", "title": "oq8hROHe"}}, "maxCount": 37, "maxCountPerUser": 98, "name": "Ufxcix6p", "optionBoxConfig": {"boxItems": [{"count": 21, "itemId": "lQwin5oY", "itemSku": "kz8JNpdc"}, {"count": 58, "itemId": "PlV8MKG2", "itemSku": "DxAIjGqn"}, {"count": 38, "itemId": "r9ckRSGp", "itemSku": "XEqj6pOO"}]}, "purchasable": true, "recurring": {"cycle": "MONTHLY", "fixedFreeDays": 46, "fixedTrialCycles": 50, "graceDays": 18}, "regionData": {"i2DURoOh": [{"currencyCode": "7iITqqyL", "currencyNamespace": "4sSv70Kv", "currencyType": "REAL", "discountAmount": 53, "discountExpireAt": "1980-05-11T00:00:00Z", "discountPercentage": 24, "discountPurchaseAt": "1992-07-03T00:00:00Z", "discountedPrice": 12, "expireAt": "1981-11-10T00:00:00Z", "price": 82, "purchaseAt": "1979-03-15T00:00:00Z", "trialPrice": 81}, {"currencyCode": "CWPqb9Nd", "currencyNamespace": "Rsml0X9h", "currencyType": "REAL", "discountAmount": 57, "discountExpireAt": "1971-03-18T00:00:00Z", "discountPercentage": 39, "discountPurchaseAt": "1991-04-10T00:00:00Z", "discountedPrice": 17, "expireAt": "1992-01-26T00:00:00Z", "price": 29, "purchaseAt": "1993-09-18T00:00:00Z", "trialPrice": 79}, {"currencyCode": "fPmGuqZW", "currencyNamespace": "aZiakyO0", "currencyType": "REAL", "discountAmount": 75, "discountExpireAt": "1979-05-04T00:00:00Z", "discountPercentage": 33, "discountPurchaseAt": "1991-05-06T00:00:00Z", "discountedPrice": 97, "expireAt": "1980-11-14T00:00:00Z", "price": 58, "purchaseAt": "1972-11-01T00:00:00Z", "trialPrice": 52}], "hi889lmx": [{"currencyCode": "PsMp9Xlg", "currencyNamespace": "xvPXglco", "currencyType": "REAL", "discountAmount": 26, "discountExpireAt": "1981-02-08T00:00:00Z", "discountPercentage": 18, "discountPurchaseAt": "1981-05-09T00:00:00Z", "discountedPrice": 65, "expireAt": "1977-06-04T00:00:00Z", "price": 89, "purchaseAt": "1994-09-03T00:00:00Z", "trialPrice": 82}, {"currencyCode": "j6Kpm6AE", "currencyNamespace": "mVbKqDJu", "currencyType": "REAL", "discountAmount": 12, "discountExpireAt": "1988-02-05T00:00:00Z", "discountPercentage": 91, "discountPurchaseAt": "1981-08-22T00:00:00Z", "discountedPrice": 28, "expireAt": "1981-11-13T00:00:00Z", "price": 50, "purchaseAt": "1973-11-04T00:00:00Z", "trialPrice": 37}, {"currencyCode": "XLlKdInh", "currencyNamespace": "4n7BmH4T", "currencyType": "VIRTUAL", "discountAmount": 97, "discountExpireAt": "1991-08-30T00:00:00Z", "discountPercentage": 17, "discountPurchaseAt": "1988-02-19T00:00:00Z", "discountedPrice": 66, "expireAt": "1990-11-14T00:00:00Z", "price": 24, "purchaseAt": "1984-03-17T00:00:00Z", "trialPrice": 68}], "TYlVx8dA": [{"currencyCode": "MiCwvTau", "currencyNamespace": "8l0vQvwU", "currencyType": "REAL", "discountAmount": 66, "discountExpireAt": "1996-03-27T00:00:00Z", "discountPercentage": 6, "discountPurchaseAt": "1994-10-08T00:00:00Z", "discountedPrice": 16, "expireAt": "1974-12-16T00:00:00Z", "price": 83, "purchaseAt": "1996-11-15T00:00:00Z", "trialPrice": 29}, {"currencyCode": "HbFXVV2s", "currencyNamespace": "npJewoXi", "currencyType": "REAL", "discountAmount": 30, "discountExpireAt": "1984-06-03T00:00:00Z", "discountPercentage": 4, "discountPurchaseAt": "1988-12-25T00:00:00Z", "discountedPrice": 60, "expireAt": "1979-12-11T00:00:00Z", "price": 55, "purchaseAt": "1996-08-12T00:00:00Z", "trialPrice": 72}, {"currencyCode": "Gkez4Sdd", "currencyNamespace": "0IkxAfWP", "currencyType": "VIRTUAL", "discountAmount": 64, "discountExpireAt": "1998-07-12T00:00:00Z", "discountPercentage": 71, "discountPurchaseAt": "1993-04-02T00:00:00Z", "discountedPrice": 80, "expireAt": "1996-02-02T00:00:00Z", "price": 96, "purchaseAt": "1998-04-03T00:00:00Z", "trialPrice": 62}]}, "seasonType": "TIER", "sku": "As1sqC9j", "stackable": false, "status": "ACTIVE", "tags": ["E5tIIqa3", "JSoEilOZ", "I3VXRZAW"], "targetCurrencyCode": "cW63SSJR", "targetNamespace": "Bv1U61q8", "thumbnailUrl": "5inqXCEC", "useCount": 54}' \
    > test.out 2>&1
eval_tap $? 89 'UpdateItem' test.out

#- 90 DeleteItem
samples/cli/sample-apps Platform deleteItem \
    --itemId 'iU7k8LQg' \
    --namespace $AB_NAMESPACE \
    --storeId 'QZNGvv97' \
    > test.out 2>&1
eval_tap $? 90 'DeleteItem' test.out

#- 91 AcquireItem
samples/cli/sample-apps Platform acquireItem \
    --itemId 'cYe8znaP' \
    --namespace $AB_NAMESPACE \
    --body '{"count": 94, "orderNo": "jbLVUe0c"}' \
    > test.out 2>&1
eval_tap $? 91 'AcquireItem' test.out

#- 92 GetApp
samples/cli/sample-apps Platform getApp \
    --itemId 'ntM5bUUa' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --storeId 'EYimYNPX' \
    > test.out 2>&1
eval_tap $? 92 'GetApp' test.out

#- 93 UpdateApp
samples/cli/sample-apps Platform updateApp \
    --itemId 'SylXXw67' \
    --namespace $AB_NAMESPACE \
    --storeId 'TVhjDfbB' \
    --body '{"carousel": [{"alt": "cugsiHiN", "previewUrl": "Gu8lv0pu", "thumbnailUrl": "88t9klUx", "type": "image", "url": "MLRL32dQ", "videoSource": "generic"}, {"alt": "om9Xa4ON", "previewUrl": "Myb0amma", "thumbnailUrl": "qxGehCoK", "type": "video", "url": "yMbXnxoo", "videoSource": "vimeo"}, {"alt": "vsx6CZUH", "previewUrl": "rq19AEg3", "thumbnailUrl": "xuTtBvIb", "type": "video", "url": "kmMbVASo", "videoSource": "generic"}], "developer": "PEKpCZKN", "forumUrl": "XSDBWvSV", "genres": ["Sports", "Simulation", "Simulation"], "localizations": {"xc2YNH72": {"announcement": "Znaksiol", "slogan": "gd5JbjAj"}, "uEuhAfeX": {"announcement": "UMMGhBI0", "slogan": "rlDveJsI"}, "kjXQFVjm": {"announcement": "Z9ECdiNM", "slogan": "faFrSa1u"}}, "platformRequirements": {"okQH9Bqj": [{"additionals": "CLm7bvNn", "directXVersion": "ubsj4ESj", "diskSpace": "hIEf62fG", "graphics": "3oPhz9hl", "label": "lTsEtHQ8", "osVersion": "kzLLPqCx", "processor": "EsALCuub", "ram": "GAYQS4Nj", "soundCard": "Eeactqo5"}, {"additionals": "WpqTe0hz", "directXVersion": "xosPYt0V", "diskSpace": "VyBnIYc3", "graphics": "lAf9xYYv", "label": "Oap4UpRt", "osVersion": "YLacGbbV", "processor": "D1wMBe0f", "ram": "6PKKUV8Y", "soundCard": "Jr6PF8LB"}, {"additionals": "IkrQPydR", "directXVersion": "C6YICqt6", "diskSpace": "bDaIpdMZ", "graphics": "hgSrJpwr", "label": "kLbd7mm8", "osVersion": "2zGSd5NN", "processor": "I4fKW26C", "ram": "2oT1kIOu", "soundCard": "Uvpvt9tp"}], "YESJ2uDp": [{"additionals": "gzYr41tc", "directXVersion": "at2L7Kse", "diskSpace": "aQHklc5l", "graphics": "uMsyfJ5c", "label": "yO3rLTc1", "osVersion": "duI1JfnV", "processor": "agl6MfSR", "ram": "QlDgUIh2", "soundCard": "HOZwExg2"}, {"additionals": "ywnZEovt", "directXVersion": "3ltLTS1M", "diskSpace": "NWjWlSZH", "graphics": "AAvZNt1s", "label": "qc4iQgNH", "osVersion": "KTMwDgjQ", "processor": "jKBxj74t", "ram": "aLjusLjS", "soundCard": "bucdVuqM"}, {"additionals": "F5wHdFLm", "directXVersion": "sfaTUPtQ", "diskSpace": "mq1Pgv9Y", "graphics": "PLbag1MK", "label": "6f22e58E", "osVersion": "CvMmvemp", "processor": "dzHkr5dJ", "ram": "vPh1zNnw", "soundCard": "69nLvsdY"}], "HR02Mr7D": [{"additionals": "xlPcgKZr", "directXVersion": "ugXfnvUR", "diskSpace": "TFD8KDhw", "graphics": "FEOG9FZg", "label": "Bao3zBCT", "osVersion": "jgPBwRVp", "processor": "4sBuTpmt", "ram": "mnJLzd51", "soundCard": "5IWauATj"}, {"additionals": "6KLIKke5", "directXVersion": "T0Dg2zHP", "diskSpace": "c2taTuky", "graphics": "4FDtts1B", "label": "jj7V7zJd", "osVersion": "iBnnHcNv", "processor": "ExTgppem", "ram": "414oYYbU", "soundCard": "3F1dURwv"}, {"additionals": "NG3uz15c", "directXVersion": "GUjxvKgM", "diskSpace": "BjBTsaHP", "graphics": "TTMyB3CI", "label": "uJcrDnie", "osVersion": "GWM3VQiS", "processor": "knHJQYPG", "ram": "bv2nWUMW", "soundCard": "kTaGUjpY"}]}, "platforms": ["Android", "Windows", "Windows"], "players": ["Single", "CrossPlatformMulti", "MMO"], "primaryGenre": "Simulation", "publisher": "TgHfKvDJ", "releaseDate": "1994-01-25T00:00:00Z", "websiteUrl": "v32tGFLf"}' \
    > test.out 2>&1
eval_tap $? 93 'UpdateApp' test.out

#- 94 DisableItem
samples/cli/sample-apps Platform disableItem \
    --itemId 'nMs4aQyc' \
    --namespace $AB_NAMESPACE \
    --storeId '4y9nk5pF' \
    > test.out 2>&1
eval_tap $? 94 'DisableItem' test.out

#- 95 GetItemDynamicData
samples/cli/sample-apps Platform getItemDynamicData \
    --itemId 'h2p1fEou' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 95 'GetItemDynamicData' test.out

#- 96 EnableItem
samples/cli/sample-apps Platform enableItem \
    --itemId 'Rc98Ge8m' \
    --namespace $AB_NAMESPACE \
    --storeId 'XX3flmg3' \
    > test.out 2>&1
eval_tap $? 96 'EnableItem' test.out

#- 97 FeatureItem
samples/cli/sample-apps Platform featureItem \
    --feature 'F2As3Eyg' \
    --itemId 'fmXnHRVV' \
    --namespace $AB_NAMESPACE \
    --storeId 'ZCHB7s1s' \
    > test.out 2>&1
eval_tap $? 97 'FeatureItem' test.out

#- 98 DefeatureItem
samples/cli/sample-apps Platform defeatureItem \
    --feature 'aadtAv7e' \
    --itemId '7DoX9qZH' \
    --namespace $AB_NAMESPACE \
    --storeId 'yCtCV0rY' \
    > test.out 2>&1
eval_tap $? 98 'DefeatureItem' test.out

#- 99 GetLocaleItem
samples/cli/sample-apps Platform getLocaleItem \
    --itemId '4aTlR3YJ' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --language 'DyiLeVyw' \
    --populateBundle 'true' \
    --region 'Z4vaN56u' \
    --storeId 'dH96IC2x' \
    > test.out 2>&1
eval_tap $? 99 'GetLocaleItem' test.out

#- 100 UpdateItemPurchaseCondition
samples/cli/sample-apps Platform updateItemPurchaseCondition \
    --itemId 'G2SWl0Dj' \
    --namespace $AB_NAMESPACE \
    --storeId 'P88dwuWD' \
    --body '{"purchaseCondition": {"conditionGroups": [{"operator": "and", "predicates": [{"anyOf": 58, "comparison": "includes", "name": "wqsnpViI", "predicateType": "SeasonPassPredicate", "value": "pfDXioV6", "values": ["ygNBQleD", "a134wJi9", "ah8fQRZD"]}, {"anyOf": 29, "comparison": "is", "name": "LLicReGu", "predicateType": "SeasonTierPredicate", "value": "Md6QT2wF", "values": ["CmC4npje", "3cI3kLLv", "KzO54WIB"]}, {"anyOf": 71, "comparison": "is", "name": "a74TOxfm", "predicateType": "EntitlementPredicate", "value": "RExc2Xj1", "values": ["pchyrrex", "R64BAioH", "bC8mASna"]}]}, {"operator": "and", "predicates": [{"anyOf": 46, "comparison": "excludes", "name": "E3q2WSAR", "predicateType": "SeasonPassPredicate", "value": "g9z56yFg", "values": ["HkLcxeCx", "kqyzhfGY", "1RjuTVgU"]}, {"anyOf": 0, "comparison": "is", "name": "LSWA8qt6", "predicateType": "SeasonPassPredicate", "value": "4m1CQuPW", "values": ["lRe7OcS7", "Vc2gNPh1", "vb0J6OjU"]}, {"anyOf": 72, "comparison": "includes", "name": "82RcpkTt", "predicateType": "SeasonPassPredicate", "value": "qmCM2MSg", "values": ["qbxxQlYY", "A3k2gmcj", "Ks7AaHXe"]}]}, {"operator": "or", "predicates": [{"anyOf": 35, "comparison": "includes", "name": "ooJIWx7w", "predicateType": "EntitlementPredicate", "value": "8L2lvR4R", "values": ["rnbCf9m7", "LFTQTG0h", "QSRl3FBb"]}, {"anyOf": 37, "comparison": "is", "name": "FaMoECfb", "predicateType": "SeasonTierPredicate", "value": "BGeWc7kG", "values": ["xWFE2IjH", "k83gSenI", "au2kxyPS"]}, {"anyOf": 78, "comparison": "isNot", "name": "auGzaZ7P", "predicateType": "EntitlementPredicate", "value": "bCpoDZnl", "values": ["ly09bPPm", "vHw3Ee4T", "tM2UEfVX"]}]}]}}' \
    > test.out 2>&1
eval_tap $? 100 'UpdateItemPurchaseCondition' test.out

#- 101 ReturnItem
samples/cli/sample-apps Platform returnItem \
    --itemId 'Aai2ecAU' \
    --namespace $AB_NAMESPACE \
    --body '{"orderNo": "XR8gw9mS"}' \
    > test.out 2>&1
eval_tap $? 101 'ReturnItem' test.out

#- 102 QueryKeyGroups
samples/cli/sample-apps Platform queryKeyGroups \
    --namespace $AB_NAMESPACE \
    --limit '94' \
    --name 'byGp1GY8' \
    --offset '43' \
    --tag 'C5ftnBm8' \
    > test.out 2>&1
eval_tap $? 102 'QueryKeyGroups' test.out

#- 103 CreateKeyGroup
samples/cli/sample-apps Platform createKeyGroup \
    --namespace $AB_NAMESPACE \
    --body '{"description": "j06g7IsP", "name": "wzai4W2G", "status": "ACTIVE", "tags": ["4JxT63uJ", "vxkD5vz7", "Gf99du4n"]}' \
    > test.out 2>&1
eval_tap $? 103 'CreateKeyGroup' test.out

#- 104 GetKeyGroup
samples/cli/sample-apps Platform getKeyGroup \
    --keyGroupId 'c3a6UZfE' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 104 'GetKeyGroup' test.out

#- 105 UpdateKeyGroup
samples/cli/sample-apps Platform updateKeyGroup \
    --keyGroupId 'gfYiamra' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "nCKP6id3", "name": "KxbSzxJk", "status": "ACTIVE", "tags": ["J97VBW1x", "c03vhUSl", "BR9qgRmP"]}' \
    > test.out 2>&1
eval_tap $? 105 'UpdateKeyGroup' test.out

#- 106 GetKeyGroupDynamic
samples/cli/sample-apps Platform getKeyGroupDynamic \
    --keyGroupId 'cfml7TrA' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 106 'GetKeyGroupDynamic' test.out

#- 107 ListKeys
samples/cli/sample-apps Platform listKeys \
    --keyGroupId 'b1LSRnlN' \
    --namespace $AB_NAMESPACE \
    --limit '10' \
    --offset '76' \
    --status 'ACTIVE' \
    > test.out 2>&1
eval_tap $? 107 'ListKeys' test.out

#- 108 UploadKeys
samples/cli/sample-apps Platform uploadKeys \
    --keyGroupId '46wFGzrz' \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 108 'UploadKeys' test.out

#- 109 QueryOrders
samples/cli/sample-apps Platform queryOrders \
    --namespace $AB_NAMESPACE \
    --endTime 'vT2KRSUr' \
    --limit '71' \
    --offset '56' \
    --orderNos '["jYK5Csg4", "mPyDal0t", "5NkklDEo"]' \
    --sortBy 'vahubY9r' \
    --startTime '5b1i8Dhk' \
    --status 'REFUNDING' \
    --withTotal 'true' \
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
    --orderNo 'Gl8gRBZK' \
    > test.out 2>&1
eval_tap $? 111 'GetOrder' test.out

#- 112 RefundOrder
samples/cli/sample-apps Platform refundOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'I1EheUNP' \
    --body '{"description": "tOLWFSZQ"}' \
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
    --body '{"dryRun": true, "notifyUrl": "HJ2FvX5A", "privateKey": "mSXJsrKu"}' \
    > test.out 2>&1
eval_tap $? 114 'UpdatePaymentCallbackConfig' test.out

#- 115 QueryPaymentNotifications
samples/cli/sample-apps Platform queryPaymentNotifications \
    --namespace $AB_NAMESPACE \
    --endDate '3KhOAufp' \
    --externalId 'S7nzPsGr' \
    --limit '54' \
    --notificationSource 'PAYPAL' \
    --notificationType 'BA8P1cL2' \
    --offset '16' \
    --paymentOrderNo '0QcFPJRX' \
    --startDate 'LTE0cXJG' \
    --status 'ERROR' \
    > test.out 2>&1
eval_tap $? 115 'QueryPaymentNotifications' test.out

#- 116 QueryPaymentOrders
samples/cli/sample-apps Platform queryPaymentOrders \
    --namespace $AB_NAMESPACE \
    --channel 'EXTERNAL' \
    --extTxId 'OX6I1aq3' \
    --limit '17' \
    --offset '16' \
    --status 'INIT' \
    > test.out 2>&1
eval_tap $? 116 'QueryPaymentOrders' test.out

#- 117 CreatePaymentOrderByDedicated
samples/cli/sample-apps Platform createPaymentOrderByDedicated \
    --namespace $AB_NAMESPACE \
    --body '{"currencyCode": "fbnH6FiQ", "currencyNamespace": "EwHSCuDQ", "customParameters": {"ZwVQB3Pa": {}, "yRBjb5iQ": {}, "HjE6GQHS": {}}, "description": "Ek5FPNKd", "extOrderNo": "bUpCH878", "extUserId": "g8PeHi36", "itemType": "SEASON", "language": "AWb_aH", "metadata": {"q77CCNwX": "zi3fKSz6", "tbafJkXh": "nBxQ3YOV", "p8Et7f9V": "nrt9XFRt"}, "notifyUrl": "1GrRIxcj", "omitNotification": false, "platform": "81xeMnPu", "price": 38, "recurringPaymentOrderNo": "ZQ6n2nRd", "region": "bzW6dBPf", "returnUrl": "wvt6FSZW", "sandbox": true, "sku": "94iw25MV", "subscriptionId": "l8Vy33mK", "targetNamespace": "piqXXdIf", "targetUserId": "K1NYgTSx", "title": "BUZqHUWr"}' \
    > test.out 2>&1
eval_tap $? 117 'CreatePaymentOrderByDedicated' test.out

#- 118 ListExtOrderNoByExtTxId
samples/cli/sample-apps Platform listExtOrderNoByExtTxId \
    --namespace $AB_NAMESPACE \
    --extTxId 'Tvqr78WL' \
    > test.out 2>&1
eval_tap $? 118 'ListExtOrderNoByExtTxId' test.out

#- 119 GetPaymentOrder
samples/cli/sample-apps Platform getPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'gn5bL6n6' \
    > test.out 2>&1
eval_tap $? 119 'GetPaymentOrder' test.out

#- 120 ChargePaymentOrder
samples/cli/sample-apps Platform chargePaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'QI5VwYpo' \
    --body '{"extTxId": "2BexXvgf", "paymentMethod": "BBCPtrwx", "paymentProvider": "ALIPAY"}' \
    > test.out 2>&1
eval_tap $? 120 'ChargePaymentOrder' test.out

#- 121 RefundPaymentOrderByDedicated
samples/cli/sample-apps Platform refundPaymentOrderByDedicated \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'nHo9TcjN' \
    --body '{"description": "s5E3GSRh"}' \
    > test.out 2>&1
eval_tap $? 121 'RefundPaymentOrderByDedicated' test.out

#- 122 SimulatePaymentOrderNotification
samples/cli/sample-apps Platform simulatePaymentOrderNotification \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'CF6SYFRX' \
    --body '{"amount": 31, "currencyCode": "pH5tnxxQ", "notifyType": "REFUND", "paymentProvider": "CHECKOUT", "salesTax": 16, "vat": 82}' \
    > test.out 2>&1
eval_tap $? 122 'SimulatePaymentOrderNotification' test.out

#- 123 GetPaymentOrderChargeStatus
samples/cli/sample-apps Platform getPaymentOrderChargeStatus \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo '3QpADTkv' \
    > test.out 2>&1
eval_tap $? 123 'GetPaymentOrderChargeStatus' test.out

#- 124 GetPlatformWalletConfig
samples/cli/sample-apps Platform getPlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'GooglePlay' \
    > test.out 2>&1
eval_tap $? 124 'GetPlatformWalletConfig' test.out

#- 125 UpdatePlatformWalletConfig
samples/cli/sample-apps Platform updatePlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Epic' \
    --body '{"allowedBalanceOrigins": ["System", "Stadia", "Stadia"]}' \
    > test.out 2>&1
eval_tap $? 125 'UpdatePlatformWalletConfig' test.out

#- 126 ResetPlatformWalletConfig
samples/cli/sample-apps Platform resetPlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Playstation' \
    > test.out 2>&1
eval_tap $? 126 'ResetPlatformWalletConfig' test.out

#- 127 CreateReward
samples/cli/sample-apps Platform createReward \
    --namespace $AB_NAMESPACE \
    --body '{"description": "xQS7q4ux", "eventTopic": "1ORJ6HDw", "maxAwarded": 41, "maxAwardedPerUser": 49, "namespaceExpression": "RtFf252C", "rewardCode": "ZZ0gPD4y", "rewardConditions": [{"condition": "RhGmfpRJ", "conditionName": "Y0LVX3lD", "eventName": "PuqFFlYs", "rewardItems": [{"duration": 13, "itemId": "JcDkfJsQ", "quantity": 28}, {"duration": 3, "itemId": "WG4Koktm", "quantity": 56}, {"duration": 99, "itemId": "10UPzHKx", "quantity": 2}]}, {"condition": "PylUA2Yz", "conditionName": "Pe6FbZsk", "eventName": "9myYPnPV", "rewardItems": [{"duration": 30, "itemId": "6vhFApwR", "quantity": 29}, {"duration": 0, "itemId": "8hcMEpuE", "quantity": 91}, {"duration": 0, "itemId": "WCBDQtzU", "quantity": 23}]}, {"condition": "AkejdPVh", "conditionName": "tVSCymO2", "eventName": "Yuk3oPcP", "rewardItems": [{"duration": 85, "itemId": "ky67DyMN", "quantity": 95}, {"duration": 31, "itemId": "z3RJRUHb", "quantity": 64}, {"duration": 53, "itemId": "SIfGisOr", "quantity": 46}]}], "userIdExpression": "piY3JFaH"}' \
    > test.out 2>&1
eval_tap $? 127 'CreateReward' test.out

#- 128 QueryRewards
samples/cli/sample-apps Platform queryRewards \
    --namespace $AB_NAMESPACE \
    --eventTopic 'UH0LpMOr' \
    --limit '15' \
    --offset '57' \
    --sortBy '["namespace:desc", "namespace"]' \
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
    --rewardId 'zYMMOBcW' \
    > test.out 2>&1
eval_tap $? 131 'GetReward' test.out

#- 132 UpdateReward
samples/cli/sample-apps Platform updateReward \
    --namespace $AB_NAMESPACE \
    --rewardId 'm0fiP7yX' \
    --body '{"description": "4QHiUY98", "eventTopic": "QN1RxS5Y", "maxAwarded": 86, "maxAwardedPerUser": 70, "namespaceExpression": "SljhiHlP", "rewardCode": "52keF3kb", "rewardConditions": [{"condition": "tfftHlum", "conditionName": "9XJlCWRR", "eventName": "89boH5Mr", "rewardItems": [{"duration": 75, "itemId": "RJJyflOH", "quantity": 70}, {"duration": 45, "itemId": "awS0j4qZ", "quantity": 86}, {"duration": 93, "itemId": "vv0xjrrx", "quantity": 41}]}, {"condition": "Lsi6PBMV", "conditionName": "7NGiBvVh", "eventName": "aKaqlX5l", "rewardItems": [{"duration": 86, "itemId": "jAb0PQ7Z", "quantity": 36}, {"duration": 66, "itemId": "u1QOfnHT", "quantity": 53}, {"duration": 3, "itemId": "l0kpr7gq", "quantity": 66}]}, {"condition": "xCBI1cQ1", "conditionName": "IbtYJTRS", "eventName": "1RsfAvpo", "rewardItems": [{"duration": 51, "itemId": "iQaGQ5cb", "quantity": 72}, {"duration": 23, "itemId": "4JApHAxD", "quantity": 42}, {"duration": 41, "itemId": "j4pmqsEA", "quantity": 66}]}], "userIdExpression": "q0q6uzkx"}' \
    > test.out 2>&1
eval_tap $? 132 'UpdateReward' test.out

#- 133 DeleteReward
samples/cli/sample-apps Platform deleteReward \
    --namespace $AB_NAMESPACE \
    --rewardId 'PFiqVrfm' \
    > test.out 2>&1
eval_tap $? 133 'DeleteReward' test.out

#- 134 CheckEventCondition
samples/cli/sample-apps Platform checkEventCondition \
    --namespace $AB_NAMESPACE \
    --rewardId 'yse1kYmK' \
    --body '{"payload": {"eOi84zm4": {}, "0I4ZSzc9": {}, "xGXxRrx7": {}}}' \
    > test.out 2>&1
eval_tap $? 134 'CheckEventCondition' test.out

#- 135 ListStores
samples/cli/sample-apps Platform listStores \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 135 'ListStores' test.out

#- 136 CreateStore
samples/cli/sample-apps Platform createStore \
    --namespace $AB_NAMESPACE \
    --body '{"defaultLanguage": "Xcc0EebB", "defaultRegion": "Pes2BEbU", "description": "iNafLGLQ", "supportedLanguages": ["PngZtqYg", "BkMU4Zjk", "HwnRtxPh"], "supportedRegions": ["9V4tqwwu", "tscdrOW0", "1DpLsZox"], "title": "hM9C6DQt"}' \
    > test.out 2>&1
eval_tap $? 136 'CreateStore' test.out

#- 137 ImportStore
samples/cli/sample-apps Platform importStore \
    --namespace $AB_NAMESPACE \
    --storeId 'fXVYwR0H' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 137 'ImportStore' test.out

#- 138 GetPublishedStore
samples/cli/sample-apps Platform getPublishedStore \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 138 'GetPublishedStore' test.out

#- 139 DeletePublishedStore
samples/cli/sample-apps Platform deletePublishedStore \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 139 'DeletePublishedStore' test.out

#- 140 GetPublishedStoreBackup
samples/cli/sample-apps Platform getPublishedStoreBackup \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 140 'GetPublishedStoreBackup' test.out

#- 141 RollbackPublishedStore
samples/cli/sample-apps Platform rollbackPublishedStore \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 141 'RollbackPublishedStore' test.out

#- 142 GetStore
samples/cli/sample-apps Platform getStore \
    --namespace $AB_NAMESPACE \
    --storeId 'QtCQ2I1s' \
    > test.out 2>&1
eval_tap $? 142 'GetStore' test.out

#- 143 UpdateStore
samples/cli/sample-apps Platform updateStore \
    --namespace $AB_NAMESPACE \
    --storeId 'Rw89h2OJ' \
    --body '{"defaultLanguage": "NmkP0KR4", "defaultRegion": "hS856bfZ", "description": "B5jIw9Nf", "supportedLanguages": ["fY1vPoBN", "XweXfogh", "j2p5pxj6"], "supportedRegions": ["HZcQLdsE", "6oulMt0T", "DytDcU4L"], "title": "QoZYEhNt"}' \
    > test.out 2>&1
eval_tap $? 143 'UpdateStore' test.out

#- 144 DeleteStore
samples/cli/sample-apps Platform deleteStore \
    --namespace $AB_NAMESPACE \
    --storeId 'urQXCZXo' \
    > test.out 2>&1
eval_tap $? 144 'DeleteStore' test.out

#- 145 QueryChanges
samples/cli/sample-apps Platform queryChanges \
    --namespace $AB_NAMESPACE \
    --storeId '3o28Vdx9' \
    --action 'UPDATE' \
    --itemSku 'A5eLBE0I' \
    --itemType 'SUBSCRIPTION' \
    --limit '33' \
    --offset '72' \
    --selected 'true' \
    --sortBy '["createdAt:desc", "updatedAt:desc"]' \
    --status 'PUBLISHED' \
    --type 'STORE' \
    --updatedAtEnd '1vzKyfWi' \
    --updatedAtStart 'fxxBaoAt' \
    > test.out 2>&1
eval_tap $? 145 'QueryChanges' test.out

#- 146 PublishAll
samples/cli/sample-apps Platform publishAll \
    --namespace $AB_NAMESPACE \
    --storeId 'h1oaWdiQ' \
    > test.out 2>&1
eval_tap $? 146 'PublishAll' test.out

#- 147 PublishSelected
samples/cli/sample-apps Platform publishSelected \
    --namespace $AB_NAMESPACE \
    --storeId '9ybPtAPE' \
    > test.out 2>&1
eval_tap $? 147 'PublishSelected' test.out

#- 148 SelectAllRecords
samples/cli/sample-apps Platform selectAllRecords \
    --namespace $AB_NAMESPACE \
    --storeId '40vuDlff' \
    > test.out 2>&1
eval_tap $? 148 'SelectAllRecords' test.out

#- 149 GetStatistic
samples/cli/sample-apps Platform getStatistic \
    --namespace $AB_NAMESPACE \
    --storeId '9qp0VGig' \
    --action 'CREATE' \
    --itemSku 'Qt72Kp1B' \
    --itemType 'CODE' \
    --type 'CATEGORY' \
    --updatedAtEnd 'zVBBbdc5' \
    --updatedAtStart 'mOCteKyu' \
    > test.out 2>&1
eval_tap $? 149 'GetStatistic' test.out

#- 150 UnselectAllRecords
samples/cli/sample-apps Platform unselectAllRecords \
    --namespace $AB_NAMESPACE \
    --storeId '5CBC68g4' \
    > test.out 2>&1
eval_tap $? 150 'UnselectAllRecords' test.out

#- 151 SelectRecord
samples/cli/sample-apps Platform selectRecord \
    --changeId 'hKCgqHBb' \
    --namespace $AB_NAMESPACE \
    --storeId 'gXY0GPRi' \
    > test.out 2>&1
eval_tap $? 151 'SelectRecord' test.out

#- 152 UnselectRecord
samples/cli/sample-apps Platform unselectRecord \
    --changeId '6rmByLxX' \
    --namespace $AB_NAMESPACE \
    --storeId '0LpgImKr' \
    > test.out 2>&1
eval_tap $? 152 'UnselectRecord' test.out

#- 153 CloneStore
samples/cli/sample-apps Platform cloneStore \
    --namespace $AB_NAMESPACE \
    --storeId 'meQJ7dQz' \
    --targetStoreId 'KlSVvInz' \
    > test.out 2>&1
eval_tap $? 153 'CloneStore' test.out

#- 154 ExportStore
samples/cli/sample-apps Platform exportStore \
    --namespace $AB_NAMESPACE \
    --storeId 'fPw3qgT1' \
    > test.out 2>&1
eval_tap $? 154 'ExportStore' test.out

#- 155 QuerySubscriptions
samples/cli/sample-apps Platform querySubscriptions \
    --namespace $AB_NAMESPACE \
    --chargeStatus 'CHARGED' \
    --itemId 'Xtk4NOSp' \
    --limit '52' \
    --offset '88' \
    --sku 'cdgegd1I' \
    --status 'INIT' \
    --subscribedBy 'PLATFORM' \
    --userId 'QeuUlpQt' \
    > test.out 2>&1
eval_tap $? 155 'QuerySubscriptions' test.out

#- 156 RecurringChargeSubscription
samples/cli/sample-apps Platform recurringChargeSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'bC3XO97L' \
    > test.out 2>&1
eval_tap $? 156 'RecurringChargeSubscription' test.out

#- 157 GetTicketDynamic
samples/cli/sample-apps Platform getTicketDynamic \
    --boothName 'QLmtbknM' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 157 'GetTicketDynamic' test.out

#- 158 DecreaseTicketSale
samples/cli/sample-apps Platform decreaseTicketSale \
    --boothName 'Wf49BQzf' \
    --namespace $AB_NAMESPACE \
    --body '{"orderNo": "362M6eDK"}' \
    > test.out 2>&1
eval_tap $? 158 'DecreaseTicketSale' test.out

#- 159 GetTicketBoothID
samples/cli/sample-apps Platform getTicketBoothID \
    --boothName 'IWz95QTr' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 159 'GetTicketBoothID' test.out

#- 160 IncreaseTicketSale
samples/cli/sample-apps Platform increaseTicketSale \
    --boothName 'bCWAkoPH' \
    --namespace $AB_NAMESPACE \
    --body '{"count": 16, "orderNo": "0xgqia7N"}' \
    > test.out 2>&1
eval_tap $? 160 'IncreaseTicketSale' test.out

#- 161 UnlockSteamUserAchievement
samples/cli/sample-apps Platform unlockSteamUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId '4L5Jebqv' \
    --body '{"achievements": [{"id": "jSQkEMm0", "value": 88}, {"id": "Erp8iX62", "value": 79}, {"id": "luXemZEF", "value": 30}], "steamUserId": "0J2gNkYx"}' \
    > test.out 2>&1
eval_tap $? 161 'UnlockSteamUserAchievement' test.out

#- 162 GetXblUserAchievements
samples/cli/sample-apps Platform getXblUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId 'EVUAg9Nj' \
    --xboxUserId '5MMpWnIU' \
    > test.out 2>&1
eval_tap $? 162 'GetXblUserAchievements' test.out

#- 163 UpdateXblUserAchievement
samples/cli/sample-apps Platform updateXblUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'or4NCDLS' \
    --body '{"achievements": [{"id": "gjYoz3R3", "percentComplete": 38}, {"id": "MkMJeeyp", "percentComplete": 79}, {"id": "W65edULR", "percentComplete": 70}], "serviceConfigId": "AmhYbEs3", "titleId": "9B6ccSsU", "xboxUserId": "7RXp3wTv"}' \
    > test.out 2>&1
eval_tap $? 163 'UpdateXblUserAchievement' test.out

#- 164 AnonymizeCampaign
samples/cli/sample-apps Platform anonymizeCampaign \
    --namespace $AB_NAMESPACE \
    --userId 's9IESIVt' \
    > test.out 2>&1
eval_tap $? 164 'AnonymizeCampaign' test.out

#- 165 AnonymizeEntitlement
samples/cli/sample-apps Platform anonymizeEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'deT24eqJ' \
    > test.out 2>&1
eval_tap $? 165 'AnonymizeEntitlement' test.out

#- 166 AnonymizeFulfillment
samples/cli/sample-apps Platform anonymizeFulfillment \
    --namespace $AB_NAMESPACE \
    --userId 'Cyutd5P7' \
    > test.out 2>&1
eval_tap $? 166 'AnonymizeFulfillment' test.out

#- 167 AnonymizeIntegration
samples/cli/sample-apps Platform anonymizeIntegration \
    --namespace $AB_NAMESPACE \
    --userId 'NIUWYMzT' \
    > test.out 2>&1
eval_tap $? 167 'AnonymizeIntegration' test.out

#- 168 AnonymizeOrder
samples/cli/sample-apps Platform anonymizeOrder \
    --namespace $AB_NAMESPACE \
    --userId 'TyNxTbEt' \
    > test.out 2>&1
eval_tap $? 168 'AnonymizeOrder' test.out

#- 169 AnonymizePayment
samples/cli/sample-apps Platform anonymizePayment \
    --namespace $AB_NAMESPACE \
    --userId 'zBVdvzrB' \
    > test.out 2>&1
eval_tap $? 169 'AnonymizePayment' test.out

#- 170 AnonymizeSubscription
samples/cli/sample-apps Platform anonymizeSubscription \
    --namespace $AB_NAMESPACE \
    --userId 'dsSoWFn2' \
    > test.out 2>&1
eval_tap $? 170 'AnonymizeSubscription' test.out

#- 171 AnonymizeWallet
samples/cli/sample-apps Platform anonymizeWallet \
    --namespace $AB_NAMESPACE \
    --userId 'Wnsyjgf1' \
    > test.out 2>&1
eval_tap $? 171 'AnonymizeWallet' test.out

#- 172 QueryUserEntitlements
samples/cli/sample-apps Platform queryUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'wMVWDwYS' \
    --activeOnly 'false' \
    --appType 'SOFTWARE' \
    --entitlementClazz 'MEDIA' \
    --entitlementName 'qLTi8aE1' \
    --itemId '["CyrlADF2", "SRV7ehN6", "DTtMVpMb"]' \
    --limit '51' \
    --offset '41' \
    > test.out 2>&1
eval_tap $? 172 'QueryUserEntitlements' test.out

#- 173 GrantUserEntitlement
samples/cli/sample-apps Platform grantUserEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'RtXHeWu1' \
    --body '[{"endDate": "1993-10-06T00:00:00Z", "grantedCode": "r1DndjT9", "itemId": "5LBDiY0f", "itemNamespace": "ouvdb3cd", "language": "DO-227", "quantity": 56, "region": "7asKnal4", "source": "PURCHASE", "startDate": "1998-12-22T00:00:00Z", "storeId": "MysihuWN"}, {"endDate": "1995-09-29T00:00:00Z", "grantedCode": "cLTvUFKu", "itemId": "0H624kAT", "itemNamespace": "MgAGhlAT", "language": "Ud_MZIp-012", "quantity": 59, "region": "ooJW9aUQ", "source": "GIFT", "startDate": "1987-01-10T00:00:00Z", "storeId": "Z5ShZ9cl"}, {"endDate": "1977-02-05T00:00:00Z", "grantedCode": "hvsJwebP", "itemId": "s0LxABnE", "itemNamespace": "C7OOG3Oj", "language": "usN-QoCl", "quantity": 46, "region": "Bxr2bE4P", "source": "REWARD", "startDate": "1976-02-11T00:00:00Z", "storeId": "86Os4uPh"}]' \
    > test.out 2>&1
eval_tap $? 173 'GrantUserEntitlement' test.out

#- 174 GetUserAppEntitlementByAppId
samples/cli/sample-apps Platform getUserAppEntitlementByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'riwlqOwM' \
    --activeOnly 'true' \
    --appId 'ha7WBLeZ' \
    > test.out 2>&1
eval_tap $? 174 'GetUserAppEntitlementByAppId' test.out

#- 175 QueryUserEntitlementsByAppType
samples/cli/sample-apps Platform queryUserEntitlementsByAppType \
    --namespace $AB_NAMESPACE \
    --userId 'k2w0MPnd' \
    --activeOnly 'false' \
    --limit '41' \
    --offset '53' \
    --appType 'SOFTWARE' \
    > test.out 2>&1
eval_tap $? 175 'QueryUserEntitlementsByAppType' test.out

#- 176 GetUserEntitlementByItemId
samples/cli/sample-apps Platform getUserEntitlementByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'UJ1Y5UbE' \
    --activeOnly 'true' \
    --entitlementClazz 'ENTITLEMENT' \
    --itemId 'TbswwgDT' \
    > test.out 2>&1
eval_tap $? 176 'GetUserEntitlementByItemId' test.out

#- 177 GetUserEntitlementBySku
samples/cli/sample-apps Platform getUserEntitlementBySku \
    --namespace $AB_NAMESPACE \
    --userId 'i2eQFPCZ' \
    --activeOnly 'true' \
    --entitlementClazz 'SUBSCRIPTION' \
    --sku 'OAfsj9TU' \
    > test.out 2>&1
eval_tap $? 177 'GetUserEntitlementBySku' test.out

#- 178 ExistsAnyUserActiveEntitlement
samples/cli/sample-apps Platform existsAnyUserActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'TtIrW1Kq' \
    --appIds '["5yLCQh5d", "kXeWz7my", "p7guKq7U"]' \
    --itemIds '["UC2CNfY8", "LA0b5K7K", "zOCMrhZJ"]' \
    --skus '["CFnsePcE", "NlOo40Jo", "IsG4kTQO"]' \
    > test.out 2>&1
eval_tap $? 178 'ExistsAnyUserActiveEntitlement' test.out

#- 179 ExistsAnyUserActiveEntitlementByItemIds
samples/cli/sample-apps Platform existsAnyUserActiveEntitlementByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'j3olOVfp' \
    --itemIds '["wUCYCzEO", "MPVUJm21", "3Z8INvsY"]' \
    > test.out 2>&1
eval_tap $? 179 'ExistsAnyUserActiveEntitlementByItemIds' test.out

#- 180 GetUserAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform getUserAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --userId '991mzbm3' \
    --appId 'iNqXrmer' \
    > test.out 2>&1
eval_tap $? 180 'GetUserAppEntitlementOwnershipByAppId' test.out

#- 181 GetUserEntitlementOwnershipByItemId
samples/cli/sample-apps Platform getUserEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'tjNIdnY3' \
    --entitlementClazz 'MEDIA' \
    --itemId 'x54KU3Yy' \
    > test.out 2>&1
eval_tap $? 181 'GetUserEntitlementOwnershipByItemId' test.out

#- 182 GetUserEntitlementOwnershipByItemIds
samples/cli/sample-apps Platform getUserEntitlementOwnershipByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'wFt3IDf7' \
    --ids '["Rs5ZIRkR", "wP9TdtJq", "37Cnupjz"]' \
    > test.out 2>&1
eval_tap $? 182 'GetUserEntitlementOwnershipByItemIds' test.out

#- 183 GetUserEntitlementOwnershipBySku
samples/cli/sample-apps Platform getUserEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --userId 'bjyTa4Tt' \
    --entitlementClazz 'OPTIONBOX' \
    --sku 'IXRAA27E' \
    > test.out 2>&1
eval_tap $? 183 'GetUserEntitlementOwnershipBySku' test.out

#- 184 RevokeUserEntitlements
samples/cli/sample-apps Platform revokeUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'ekFe5aNl' \
    --entitlementIds 'DLEIsXLj' \
    > test.out 2>&1
eval_tap $? 184 'RevokeUserEntitlements' test.out

#- 185 GetUserEntitlement
samples/cli/sample-apps Platform getUserEntitlement \
    --entitlementId 'CqTrzikZ' \
    --namespace $AB_NAMESPACE \
    --userId 'xTXXTODX' \
    > test.out 2>&1
eval_tap $? 185 'GetUserEntitlement' test.out

#- 186 UpdateUserEntitlement
samples/cli/sample-apps Platform updateUserEntitlement \
    --entitlementId 'OECDH42w' \
    --namespace $AB_NAMESPACE \
    --userId 'AzHfmENM' \
    --body '{"endDate": "1983-02-17T00:00:00Z", "nullFieldList": ["FmqVvOS4", "fuBvvvxJ", "ImHT1PAb"], "startDate": "1977-07-04T00:00:00Z", "status": "REVOKED", "useCount": 69}' \
    > test.out 2>&1
eval_tap $? 186 'UpdateUserEntitlement' test.out

#- 187 ConsumeUserEntitlement
samples/cli/sample-apps Platform consumeUserEntitlement \
    --entitlementId 'zKEbN8kA' \
    --namespace $AB_NAMESPACE \
    --userId 'orTtzVBU' \
    --body '{"options": ["cE8VsMNw", "SZXgIoiS", "Fa4HWacw"], "useCount": 33}' \
    > test.out 2>&1
eval_tap $? 187 'ConsumeUserEntitlement' test.out

#- 188 DisableUserEntitlement
samples/cli/sample-apps Platform disableUserEntitlement \
    --entitlementId 'tb3cU6Bd' \
    --namespace $AB_NAMESPACE \
    --userId 'OEnOKC3l' \
    > test.out 2>&1
eval_tap $? 188 'DisableUserEntitlement' test.out

#- 189 EnableUserEntitlement
samples/cli/sample-apps Platform enableUserEntitlement \
    --entitlementId 'fqYa4QL4' \
    --namespace $AB_NAMESPACE \
    --userId '4QxryrDl' \
    > test.out 2>&1
eval_tap $? 189 'EnableUserEntitlement' test.out

#- 190 GetUserEntitlementHistories
samples/cli/sample-apps Platform getUserEntitlementHistories \
    --entitlementId 'Reaq36dG' \
    --namespace $AB_NAMESPACE \
    --userId 'VqlWWzDD' \
    > test.out 2>&1
eval_tap $? 190 'GetUserEntitlementHistories' test.out

#- 191 RevokeUserEntitlement
samples/cli/sample-apps Platform revokeUserEntitlement \
    --entitlementId 'unilPGLV' \
    --namespace $AB_NAMESPACE \
    --userId 'nUVyTajl' \
    > test.out 2>&1
eval_tap $? 191 'RevokeUserEntitlement' test.out

#- 192 FulfillItem
samples/cli/sample-apps Platform fulfillItem \
    --namespace $AB_NAMESPACE \
    --userId 'm4poMlOO' \
    --body '{"duration": 58, "endDate": "1998-07-25T00:00:00Z", "itemId": "TKM5g3kL", "itemSku": "xmNVYQyC", "language": "rvfJghjF", "order": {"currency": {"currencyCode": "OuFQmyFx", "currencySymbol": "dlaoYBRA", "currencyType": "VIRTUAL", "decimals": 67, "namespace": "ZTLis3O7"}, "ext": {"7cAvnHvb": {}, "AuU5DhPk": {}, "6JEgoV4N": {}}, "free": false}, "orderNo": "r8SyqSXc", "origin": "Xbox", "quantity": 27, "region": "1T7PN8sF", "source": "IAP", "startDate": "1980-09-13T00:00:00Z", "storeId": "Aqy3VjvC"}' \
    > test.out 2>&1
eval_tap $? 192 'FulfillItem' test.out

#- 193 RedeemCode
samples/cli/sample-apps Platform redeemCode \
    --namespace $AB_NAMESPACE \
    --userId 'u3sPpzko' \
    --body '{"code": "RY0Pt4A6", "language": "KvKF", "region": "wM0Iaq8w"}' \
    > test.out 2>&1
eval_tap $? 193 'RedeemCode' test.out

#- 194 FulfillRewards
samples/cli/sample-apps Platform fulfillRewards \
    --namespace $AB_NAMESPACE \
    --userId 'OBJKoQbF' \
    --body '{"origin": "System", "rewards": [{"currency": {"currencyCode": "6QW3J5JA", "namespace": "RgsTqQnQ"}, "item": {"itemId": "mBuMwVkh", "itemSku": "uCz33x6c", "itemType": "aQZaBT8z"}, "quantity": 44, "type": "CURRENCY"}, {"currency": {"currencyCode": "9qX7Ex2I", "namespace": "btqnygSQ"}, "item": {"itemId": "hU94J81A", "itemSku": "AiTcNMQV", "itemType": "9OHCwCaq"}, "quantity": 38, "type": "ITEM"}, {"currency": {"currencyCode": "fTYynhQh", "namespace": "awrYKcST"}, "item": {"itemId": "lEEgFcdi", "itemSku": "lZNFNq7H", "itemType": "uBTnCaVu"}, "quantity": 11, "type": "CURRENCY"}], "source": "OTHER"}' \
    > test.out 2>&1
eval_tap $? 194 'FulfillRewards' test.out

#- 195 QueryUserIAPOrders
samples/cli/sample-apps Platform queryUserIAPOrders \
    --namespace $AB_NAMESPACE \
    --userId 'rfTHbfEo' \
    --endTime 'vnwjAjzQ' \
    --limit '92' \
    --offset '45' \
    --productId 'kkvZWGch' \
    --startTime 'jaeo7TQa' \
    --status 'VERIFIED' \
    --type 'EPICGAMES' \
    > test.out 2>&1
eval_tap $? 195 'QueryUserIAPOrders' test.out

#- 196 QueryAllUserIAPOrders
samples/cli/sample-apps Platform queryAllUserIAPOrders \
    --namespace $AB_NAMESPACE \
    --userId 'mGXTgsxu' \
    > test.out 2>&1
eval_tap $? 196 'QueryAllUserIAPOrders' test.out

#- 197 MockFulfillIAPItem
samples/cli/sample-apps Platform mockFulfillIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'h2gnDzF4' \
    --body '{"itemIdentityType": "ITEM_SKU", "language": "fgV-kDFL_991", "productId": "q0MOy8TC", "region": "YTfOH7LY", "type": "XBOX"}' \
    > test.out 2>&1
eval_tap $? 197 'MockFulfillIAPItem' test.out

#- 198 QueryUserOrders
samples/cli/sample-apps Platform queryUserOrders \
    --namespace $AB_NAMESPACE \
    --userId '4smaqIgH' \
    --itemId '07xyvF2K' \
    --limit '3' \
    --offset '56' \
    --status 'FULFILLED' \
    > test.out 2>&1
eval_tap $? 198 'QueryUserOrders' test.out

#- 199 AdminCreateUserOrder
samples/cli/sample-apps Platform adminCreateUserOrder \
    --namespace $AB_NAMESPACE \
    --userId 'DlyYmFyZ' \
    --body '{"currencyCode": "NjN7H37L", "currencyNamespace": "n9RJNyOn", "discountedPrice": 98, "ext": {"SHR09iSC": {}, "6edyOeO8": {}, "TVLJO7cW": {}}, "itemId": "m6RGBwci", "language": "FI3zZ5Sf", "options": {"skipPriceValidation": false}, "platform": "Nintendo", "price": 70, "quantity": 69, "region": "K5i2jQPN", "returnUrl": "ul8KzfAV", "sandbox": false}' \
    > test.out 2>&1
eval_tap $? 199 'AdminCreateUserOrder' test.out

#- 200 CountOfPurchasedItem
samples/cli/sample-apps Platform countOfPurchasedItem \
    --namespace $AB_NAMESPACE \
    --userId '0glrq2hc' \
    --itemId 'AQBYN1iD' \
    > test.out 2>&1
eval_tap $? 200 'CountOfPurchasedItem' test.out

#- 201 GetUserOrder
samples/cli/sample-apps Platform getUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'ja05gz3e' \
    --userId 'Y48PzrNd' \
    > test.out 2>&1
eval_tap $? 201 'GetUserOrder' test.out

#- 202 UpdateUserOrderStatus
samples/cli/sample-apps Platform updateUserOrderStatus \
    --namespace $AB_NAMESPACE \
    --orderNo 'bl5GP2Mo' \
    --userId 'jPzOwWqd' \
    --body '{"status": "CHARGED", "statusReason": "NzJqziYV"}' \
    > test.out 2>&1
eval_tap $? 202 'UpdateUserOrderStatus' test.out

#- 203 FulfillUserOrder
samples/cli/sample-apps Platform fulfillUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'WhfKa0w9' \
    --userId 'rcx5cT2u' \
    > test.out 2>&1
eval_tap $? 203 'FulfillUserOrder' test.out

#- 204 GetUserOrderGrant
samples/cli/sample-apps Platform getUserOrderGrant \
    --namespace $AB_NAMESPACE \
    --orderNo 'KKFWB1vW' \
    --userId 'MxQNXmqX' \
    > test.out 2>&1
eval_tap $? 204 'GetUserOrderGrant' test.out

#- 205 GetUserOrderHistories
samples/cli/sample-apps Platform getUserOrderHistories \
    --namespace $AB_NAMESPACE \
    --orderNo 'pC4FvRIA' \
    --userId 'XBqU7tT8' \
    > test.out 2>&1
eval_tap $? 205 'GetUserOrderHistories' test.out

#- 206 ProcessUserOrderNotification
samples/cli/sample-apps Platform processUserOrderNotification \
    --namespace $AB_NAMESPACE \
    --orderNo 'DfDyC3fE' \
    --userId 'XxogbjZ2' \
    --body '{"additionalData": {"cardSummary": "8Fi6sSj3"}, "authorisedTime": "1983-08-01T00:00:00Z", "chargebackReversedTime": "1982-08-08T00:00:00Z", "chargebackTime": "1993-08-30T00:00:00Z", "chargedTime": "1997-04-12T00:00:00Z", "createdTime": "1989-02-05T00:00:00Z", "currency": {"currencyCode": "gjilD90f", "currencySymbol": "hIPOCgUK", "currencyType": "VIRTUAL", "decimals": 69, "namespace": "pNG4J4pv"}, "customParameters": {"zAbVyzw8": {}, "ZOl9Si6I": {}, "lEwSbDBL": {}}, "extOrderNo": "ojlzpDJz", "extTxId": "moqvw9Qj", "extUserId": "ILeAv8Ql", "issuedAt": "1972-08-08T00:00:00Z", "metadata": {"AJQNgcvu": "iZfJswPY", "JaAB2YNy": "Lpw4cB6M", "Y35AjVua": "gX5QRS4q"}, "namespace": "YqQmnk8i", "nonceStr": "ZzlPRCvi", "paymentMethod": "u8zIY9yX", "paymentMethodFee": 98, "paymentOrderNo": "GI0qdUp3", "paymentProvider": "XSOLLA", "paymentProviderFee": 92, "paymentStationUrl": "UrdrfR4L", "price": 60, "refundedTime": "1972-09-01T00:00:00Z", "salesTax": 89, "sandbox": false, "sku": "8TrZG1JA", "status": "CHARGE_FAILED", "statusReason": "8hcYaPBZ", "subscriptionId": "pPtqULLH", "subtotalPrice": 68, "targetNamespace": "9KgW90GP", "targetUserId": "rHW7EPwJ", "tax": 51, "totalPrice": 67, "totalTax": 33, "txEndTime": "1974-12-18T00:00:00Z", "type": "6fUyUuFD", "userId": "griJJGhP", "vat": 46}' \
    > test.out 2>&1
eval_tap $? 206 'ProcessUserOrderNotification' test.out

#- 207 DownloadUserOrderReceipt
samples/cli/sample-apps Platform downloadUserOrderReceipt \
    --namespace $AB_NAMESPACE \
    --orderNo '5wXfUl0T' \
    --userId 'Nhs1Bb0c' \
    > test.out 2>&1
eval_tap $? 207 'DownloadUserOrderReceipt' test.out

#- 208 CreateUserPaymentOrder
samples/cli/sample-apps Platform createUserPaymentOrder \
    --namespace $AB_NAMESPACE \
    --userId 'ZOlTvX6Y' \
    --body '{"currencyCode": "zla4KE9t", "currencyNamespace": "Kc9ebCfg", "customParameters": {"PdD5FkCV": {}, "2JlRpyAP": {}, "NV5ya8pu": {}}, "description": "s6PNlOfF", "extOrderNo": "xG6WMjq5", "extUserId": "jqR6ttV1", "itemType": "COINS", "language": "rHsc_eXcR", "metadata": {"N6ihMM32": "5OIZlVZa", "7ROf6EgX": "0SqWdnbt", "OUuUt5Im": "NouGtlAO"}, "notifyUrl": "D7zUHEO9", "omitNotification": true, "platform": "rNumBZ9J", "price": 74, "recurringPaymentOrderNo": "JKIhJQl5", "region": "D9nxVANL", "returnUrl": "x0N8diNC", "sandbox": true, "sku": "m2t4CMqV", "subscriptionId": "nwXGAJ6U", "title": "xEwciROB"}' \
    > test.out 2>&1
eval_tap $? 208 'CreateUserPaymentOrder' test.out

#- 209 RefundUserPaymentOrder
samples/cli/sample-apps Platform refundUserPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'p2tVVJ3v' \
    --userId 'NStrbAwV' \
    --body '{"description": "w8ipdjCu"}' \
    > test.out 2>&1
eval_tap $? 209 'RefundUserPaymentOrder' test.out

#- 210 ApplyUserRedemption
samples/cli/sample-apps Platform applyUserRedemption \
    --namespace $AB_NAMESPACE \
    --userId 'ea9gFXEC' \
    --body '{"code": "fPrstpny", "orderNo": "zC9C2AEf"}' \
    > test.out 2>&1
eval_tap $? 210 'ApplyUserRedemption' test.out

#- 211 QueryUserSubscriptions
samples/cli/sample-apps Platform queryUserSubscriptions \
    --namespace $AB_NAMESPACE \
    --userId 'oicQtA2j' \
    --chargeStatus 'CHARGE_FAILED' \
    --itemId 'UsWpZNNj' \
    --limit '69' \
    --offset '84' \
    --sku 'GT11EnMp' \
    --status 'CANCELLED' \
    --subscribedBy 'PLATFORM' \
    > test.out 2>&1
eval_tap $? 211 'QueryUserSubscriptions' test.out

#- 212 GetUserSubscriptionActivities
samples/cli/sample-apps Platform getUserSubscriptionActivities \
    --namespace $AB_NAMESPACE \
    --userId 'yC5B7GSH' \
    --excludeSystem 'false' \
    --limit '61' \
    --offset '32' \
    --subscriptionId 'Nu4yUpJ0' \
    > test.out 2>&1
eval_tap $? 212 'GetUserSubscriptionActivities' test.out

#- 213 PlatformSubscribeSubscription
samples/cli/sample-apps Platform platformSubscribeSubscription \
    --namespace $AB_NAMESPACE \
    --userId 'iyi7DpCy' \
    --body '{"grantDays": 29, "itemId": "OiG9aTgH", "language": "y32OfdWK", "reason": "VNwjPqCZ", "region": "u1ypdFFa", "source": "o0yIETPn"}' \
    > test.out 2>&1
eval_tap $? 213 'PlatformSubscribeSubscription' test.out

#- 214 CheckUserSubscriptionSubscribableByItemId
samples/cli/sample-apps Platform checkUserSubscriptionSubscribableByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'PwKiLuHB' \
    --itemId 'wny2nlyo' \
    > test.out 2>&1
eval_tap $? 214 'CheckUserSubscriptionSubscribableByItemId' test.out

#- 215 GetUserSubscription
samples/cli/sample-apps Platform getUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'n3ysoaf3' \
    --userId 'vJMmOwb0' \
    > test.out 2>&1
eval_tap $? 215 'GetUserSubscription' test.out

#- 216 DeleteUserSubscription
samples/cli/sample-apps Platform deleteUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'Q08U5Oro' \
    --userId '44vBZR8G' \
    > test.out 2>&1
eval_tap $? 216 'DeleteUserSubscription' test.out

#- 217 CancelSubscription
samples/cli/sample-apps Platform cancelSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'iiKtmH2l' \
    --userId 'Vdbf8rfK' \
    --force 'false' \
    --body '{"immediate": true, "reason": "edsx8cf3"}' \
    > test.out 2>&1
eval_tap $? 217 'CancelSubscription' test.out

#- 218 GrantDaysToSubscription
samples/cli/sample-apps Platform grantDaysToSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'Kwb1nhEr' \
    --userId 'AHfkQrEu' \
    --body '{"grantDays": 43, "reason": "bFd5EYyc"}' \
    > test.out 2>&1
eval_tap $? 218 'GrantDaysToSubscription' test.out

#- 219 GetUserSubscriptionBillingHistories
samples/cli/sample-apps Platform getUserSubscriptionBillingHistories \
    --namespace $AB_NAMESPACE \
    --subscriptionId '7iwSIS2e' \
    --userId 'xPFmwOOV' \
    --excludeFree 'false' \
    --limit '25' \
    --offset '23' \
    > test.out 2>&1
eval_tap $? 219 'GetUserSubscriptionBillingHistories' test.out

#- 220 ProcessUserSubscriptionNotification
samples/cli/sample-apps Platform processUserSubscriptionNotification \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'Ngb4D47n' \
    --userId 'anmHei24' \
    --body '{"additionalData": {"cardSummary": "eMM1oW4P"}, "authorisedTime": "1998-02-28T00:00:00Z", "chargebackReversedTime": "1993-12-26T00:00:00Z", "chargebackTime": "1983-01-03T00:00:00Z", "chargedTime": "1972-08-04T00:00:00Z", "createdTime": "1988-05-16T00:00:00Z", "currency": {"currencyCode": "V06QqrzH", "currencySymbol": "IYziozW9", "currencyType": "REAL", "decimals": 38, "namespace": "IY0kZwrF"}, "customParameters": {"qIB27XOw": {}, "c2qIgr5B": {}, "d0vz5gpk": {}}, "extOrderNo": "T2dEI5JL", "extTxId": "lg7EYO3w", "extUserId": "wVc545yy", "issuedAt": "1981-12-28T00:00:00Z", "metadata": {"vqKmDuhH": "vpKDOq62", "OqVenzrz": "YAGHKAMz", "8fQntVRT": "JN26T9MG"}, "namespace": "rl20oAjF", "nonceStr": "DqIQ19st", "paymentMethod": "EcQhcADx", "paymentMethodFee": 94, "paymentOrderNo": "8w3nH9l0", "paymentProvider": "PAYPAL", "paymentProviderFee": 31, "paymentStationUrl": "HeOW8LF0", "price": 49, "refundedTime": "1989-01-08T00:00:00Z", "salesTax": 36, "sandbox": false, "sku": "JT7gMGWY", "status": "AUTHORISED", "statusReason": "Iwxnojrd", "subscriptionId": "q9VjBXAI", "subtotalPrice": 91, "targetNamespace": "EH0265Ih", "targetUserId": "KUlk5gW7", "tax": 75, "totalPrice": 23, "totalTax": 35, "txEndTime": "1992-12-15T00:00:00Z", "type": "P7Gtkghf", "userId": "tkPT3eMN", "vat": 4}' \
    > test.out 2>&1
eval_tap $? 220 'ProcessUserSubscriptionNotification' test.out

#- 221 AcquireUserTicket
samples/cli/sample-apps Platform acquireUserTicket \
    --boothName 'zVAX53oc' \
    --namespace $AB_NAMESPACE \
    --userId 'K5n7d9fa' \
    --body '{"count": 65, "orderNo": "mAiEvIbF"}' \
    > test.out 2>&1
eval_tap $? 221 'AcquireUserTicket' test.out

#- 222 QueryUserCurrencyWallets
samples/cli/sample-apps Platform queryUserCurrencyWallets \
    --namespace $AB_NAMESPACE \
    --userId '1ABL8vjr' \
    > test.out 2>&1
eval_tap $? 222 'QueryUserCurrencyWallets' test.out

#- 223 ListUserCurrencyTransactions
samples/cli/sample-apps Platform listUserCurrencyTransactions \
    --currencyCode 'Ti5iwypL' \
    --namespace $AB_NAMESPACE \
    --userId 'JXSGQBM4' \
    --limit '3' \
    --offset '48' \
    > test.out 2>&1
eval_tap $? 223 'ListUserCurrencyTransactions' test.out

#- 224 CheckWallet
eval_tap 0 224 'CheckWallet # SKIP deprecated' test.out

#- 225 CreditUserWallet
samples/cli/sample-apps Platform creditUserWallet \
    --currencyCode '4L2XPHSy' \
    --namespace $AB_NAMESPACE \
    --userId 'y4skcA9Q' \
    --body '{"amount": 45, "expireAt": "1986-12-31T00:00:00Z", "origin": "Nintendo", "reason": "qUXTyfHJ", "source": "DLC"}' \
    > test.out 2>&1
eval_tap $? 225 'CreditUserWallet' test.out

#- 226 PayWithUserWallet
samples/cli/sample-apps Platform payWithUserWallet \
    --currencyCode 'GaH88R95' \
    --namespace $AB_NAMESPACE \
    --userId 'eGlGNU8X' \
    --body '{"amount": 49, "walletPlatform": "Xbox"}' \
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
    --nextEvaluatedKey 'C9X45kR7' \
    --end 'AIJv56DH' \
    --start 'uB4fovyn' \
    > test.out 2>&1
eval_tap $? 234 'SyncOrders' test.out

#- 235 TestAdyenConfig
samples/cli/sample-apps Platform testAdyenConfig \
    --sandbox 'true' \
    --body '{"allowedPaymentMethods": ["wMJSGbJm", "SI4QjKWj", "t3SKtS3x"], "apiKey": "uFUIieN8", "authoriseAsCapture": false, "blockedPaymentMethods": ["DAhry4IG", "Ycy2dObI", "dvluzJpI"], "clientKey": "9BIcCLOI", "dropInSettings": "m1ng4VMm", "liveEndpointUrlPrefix": "9rcYVLW9", "merchantAccount": "ZaMvjO1d", "notificationHmacKey": "4rbLdLQG", "notificationPassword": "BtCAe4PS", "notificationUsername": "omQejKqj", "returnUrl": "Rf4VpSyu", "settings": "Ef4yF4XU"}' \
    > test.out 2>&1
eval_tap $? 235 'TestAdyenConfig' test.out

#- 236 TestAliPayConfig
samples/cli/sample-apps Platform testAliPayConfig \
    --sandbox 'false' \
    --body '{"appId": "OqKqHL7A", "privateKey": "ms8JBQ8F", "publicKey": "fdKsSwcY", "returnUrl": "jNjNTnCX"}' \
    > test.out 2>&1
eval_tap $? 236 'TestAliPayConfig' test.out

#- 237 TestCheckoutConfig
samples/cli/sample-apps Platform testCheckoutConfig \
    --sandbox 'false' \
    --body '{"publicKey": "DpJRMF1E", "secretKey": "Xe3sYPt3"}' \
    > test.out 2>&1
eval_tap $? 237 'TestCheckoutConfig' test.out

#- 238 DebugMatchedPaymentMerchantConfig
samples/cli/sample-apps Platform debugMatchedPaymentMerchantConfig \
    --namespace 'oTVONgmG' \
    --region '0FdEhG75' \
    > test.out 2>&1
eval_tap $? 238 'DebugMatchedPaymentMerchantConfig' test.out

#- 239 TestPayPalConfig
samples/cli/sample-apps Platform testPayPalConfig \
    --sandbox 'true' \
    --body '{"clientID": "cQx1S0NM", "clientSecret": "VQPG9R8K", "returnUrl": "5FmE5vPH", "webHookId": "BVv4mrWA"}' \
    > test.out 2>&1
eval_tap $? 239 'TestPayPalConfig' test.out

#- 240 TestStripeConfig
samples/cli/sample-apps Platform testStripeConfig \
    --sandbox 'true' \
    --body '{"allowedPaymentMethodTypes": ["flEXn6wG", "YKOXWQ1e", "BYbVY4AQ"], "publishableKey": "iom1x1nx", "secretKey": "TlNvO9ku", "webhookSecret": "YXFQaRgW"}' \
    > test.out 2>&1
eval_tap $? 240 'TestStripeConfig' test.out

#- 241 TestWxPayConfig
samples/cli/sample-apps Platform testWxPayConfig \
    --body '{"appId": "SteTfdir", "key": "DZV6jjkV", "mchid": "6ggz18i3", "returnUrl": "gtBzSSWT"}' \
    > test.out 2>&1
eval_tap $? 241 'TestWxPayConfig' test.out

#- 242 TestXsollaConfig
samples/cli/sample-apps Platform testXsollaConfig \
    --body '{"apiKey": "v4NAXDrF", "flowCompletionUrl": "V2v6Oawq", "merchantId": 57, "projectId": 56, "projectSecretKey": "rN6HS3hf"}' \
    > test.out 2>&1
eval_tap $? 242 'TestXsollaConfig' test.out

#- 243 GetPaymentMerchantConfig
samples/cli/sample-apps Platform getPaymentMerchantConfig \
    --id 'lihg5Q8s' \
    > test.out 2>&1
eval_tap $? 243 'GetPaymentMerchantConfig' test.out

#- 244 UpdateAdyenConfig
samples/cli/sample-apps Platform updateAdyenConfig \
    --id 'vPYzPzWw' \
    --sandbox 'false' \
    --validate 'true' \
    --body '{"allowedPaymentMethods": ["ET0d3c6a", "cVOWBDE0", "THK5zPll"], "apiKey": "2ZOqRl6R", "authoriseAsCapture": true, "blockedPaymentMethods": ["JKvuwOeE", "SPEwg8Ik", "RtOjd8St"], "clientKey": "QpPrA9tD", "dropInSettings": "ge0dNcXS", "liveEndpointUrlPrefix": "srrP9ltm", "merchantAccount": "YOmEo96d", "notificationHmacKey": "j4lbIJoC", "notificationPassword": "kyvgGLSs", "notificationUsername": "AUdLqXZD", "returnUrl": "ZoSdNgiv", "settings": "pujQdSlc"}' \
    > test.out 2>&1
eval_tap $? 244 'UpdateAdyenConfig' test.out

#- 245 TestAdyenConfigById
samples/cli/sample-apps Platform testAdyenConfigById \
    --id 'pije7eFn' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 245 'TestAdyenConfigById' test.out

#- 246 UpdateAliPayConfig
samples/cli/sample-apps Platform updateAliPayConfig \
    --id 'wWLAaMXs' \
    --sandbox 'true' \
    --validate 'true' \
    --body '{"appId": "24tL0EvO", "privateKey": "W2oiELSb", "publicKey": "RcCBcQjX", "returnUrl": "6EmnSuMj"}' \
    > test.out 2>&1
eval_tap $? 246 'UpdateAliPayConfig' test.out

#- 247 TestAliPayConfigById
samples/cli/sample-apps Platform testAliPayConfigById \
    --id 'baPud1x5' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 247 'TestAliPayConfigById' test.out

#- 248 UpdateCheckoutConfig
samples/cli/sample-apps Platform updateCheckoutConfig \
    --id 'D8P7fr3c' \
    --sandbox 'false' \
    --validate 'false' \
    --body '{"publicKey": "8IH1ObsV", "secretKey": "spKxpHN3"}' \
    > test.out 2>&1
eval_tap $? 248 'UpdateCheckoutConfig' test.out

#- 249 TestCheckoutConfigById
samples/cli/sample-apps Platform testCheckoutConfigById \
    --id 'znvWZKEj' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 249 'TestCheckoutConfigById' test.out

#- 250 UpdatePayPalConfig
samples/cli/sample-apps Platform updatePayPalConfig \
    --id 'xJeFsS9F' \
    --sandbox 'true' \
    --validate 'false' \
    --body '{"clientID": "HRKFiEtC", "clientSecret": "bz8h2JnH", "returnUrl": "XvjF0BdE", "webHookId": "WM4WYkIa"}' \
    > test.out 2>&1
eval_tap $? 250 'UpdatePayPalConfig' test.out

#- 251 TestPayPalConfigById
samples/cli/sample-apps Platform testPayPalConfigById \
    --id 'neInN9Ym' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 251 'TestPayPalConfigById' test.out

#- 252 UpdateStripeConfig
samples/cli/sample-apps Platform updateStripeConfig \
    --id 'CglD7Vim' \
    --sandbox 'false' \
    --validate 'false' \
    --body '{"allowedPaymentMethodTypes": ["VGZodVs6", "8E7UvErj", "D3A24cMl"], "publishableKey": "U8MQXrpz", "secretKey": "SnqJ427g", "webhookSecret": "xK6D6oWu"}' \
    > test.out 2>&1
eval_tap $? 252 'UpdateStripeConfig' test.out

#- 253 TestStripeConfigById
samples/cli/sample-apps Platform testStripeConfigById \
    --id 'KovXheR9' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 253 'TestStripeConfigById' test.out

#- 254 UpdateWxPayConfig
samples/cli/sample-apps Platform updateWxPayConfig \
    --id 'ptnS383P' \
    --validate 'false' \
    --body '{"appId": "pb84dyEb", "key": "3Kcg3P5O", "mchid": "k23NYOMh", "returnUrl": "cNqWudzR"}' \
    > test.out 2>&1
eval_tap $? 254 'UpdateWxPayConfig' test.out

#- 255 UpdateWxPayConfigCert
samples/cli/sample-apps Platform updateWxPayConfigCert \
    --id 'jZS9rOgL' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 255 'UpdateWxPayConfigCert' test.out

#- 256 TestWxPayConfigById
samples/cli/sample-apps Platform testWxPayConfigById \
    --id 'HjKuPvLg' \
    > test.out 2>&1
eval_tap $? 256 'TestWxPayConfigById' test.out

#- 257 UpdateXsollaConfig
samples/cli/sample-apps Platform updateXsollaConfig \
    --id 'SHofL7q5' \
    --validate 'false' \
    --body '{"apiKey": "iQdfSCWd", "flowCompletionUrl": "GUOE3vRN", "merchantId": 78, "projectId": 66, "projectSecretKey": "CeWKFleZ"}' \
    > test.out 2>&1
eval_tap $? 257 'UpdateXsollaConfig' test.out

#- 258 TestXsollaConfigById
samples/cli/sample-apps Platform testXsollaConfigById \
    --id 'xxoxJQKd' \
    > test.out 2>&1
eval_tap $? 258 'TestXsollaConfigById' test.out

#- 259 UpdateXsollaUIConfig
samples/cli/sample-apps Platform updateXsollaUIConfig \
    --id 'hqPtBM2P' \
    --body '{"device": "DESKTOP", "showCloseButton": true, "size": "SMALL", "theme": "DEFAULT"}' \
    > test.out 2>&1
eval_tap $? 259 'UpdateXsollaUIConfig' test.out

#- 260 QueryPaymentProviderConfig
samples/cli/sample-apps Platform queryPaymentProviderConfig \
    --limit '9' \
    --namespace 'FV0gifxY' \
    --offset '2' \
    --region 'GmMUxpsy' \
    > test.out 2>&1
eval_tap $? 260 'QueryPaymentProviderConfig' test.out

#- 261 CreatePaymentProviderConfig
samples/cli/sample-apps Platform createPaymentProviderConfig \
    --body '{"aggregate": "XSOLLA", "namespace": "E5A76mId", "region": "ZsiulPNz", "sandboxTaxJarApiToken": "6fjk7kjR", "specials": ["CHECKOUT", "CHECKOUT", "PAYPAL"], "taxJarApiToken": "BkRdC1v5", "taxJarEnabled": true, "useGlobalTaxJarApiToken": false}' \
    > test.out 2>&1
eval_tap $? 261 'CreatePaymentProviderConfig' test.out

#- 262 GetAggregatePaymentProviders
samples/cli/sample-apps Platform getAggregatePaymentProviders \
    > test.out 2>&1
eval_tap $? 262 'GetAggregatePaymentProviders' test.out

#- 263 DebugMatchedPaymentProviderConfig
samples/cli/sample-apps Platform debugMatchedPaymentProviderConfig \
    --namespace 'IjJIYtve' \
    --region 'fHJb8v96' \
    > test.out 2>&1
eval_tap $? 263 'DebugMatchedPaymentProviderConfig' test.out

#- 264 GetSpecialPaymentProviders
samples/cli/sample-apps Platform getSpecialPaymentProviders \
    > test.out 2>&1
eval_tap $? 264 'GetSpecialPaymentProviders' test.out

#- 265 UpdatePaymentProviderConfig
samples/cli/sample-apps Platform updatePaymentProviderConfig \
    --id 'Lvp59lmH' \
    --body '{"aggregate": "ADYEN", "namespace": "aRgHqm4z", "region": "nqB1opHL", "sandboxTaxJarApiToken": "PFY8ZEbq", "specials": ["WXPAY", "PAYPAL", "ADYEN"], "taxJarApiToken": "CxLMrwWr", "taxJarEnabled": false, "useGlobalTaxJarApiToken": true}' \
    > test.out 2>&1
eval_tap $? 265 'UpdatePaymentProviderConfig' test.out

#- 266 DeletePaymentProviderConfig
samples/cli/sample-apps Platform deletePaymentProviderConfig \
    --id 'dKVjUzIt' \
    > test.out 2>&1
eval_tap $? 266 'DeletePaymentProviderConfig' test.out

#- 267 GetPaymentTaxConfig
samples/cli/sample-apps Platform getPaymentTaxConfig \
    > test.out 2>&1
eval_tap $? 267 'GetPaymentTaxConfig' test.out

#- 268 UpdatePaymentTaxConfig
samples/cli/sample-apps Platform updatePaymentTaxConfig \
    --body '{"sandboxTaxJarApiToken": "dQ2umdSI", "taxJarApiToken": "feFWwn2Z", "taxJarEnabled": true, "taxJarProductCodesMapping": {"D47nwk58": "I7GcTI4V", "DyRFYPc1": "q4PbFntS", "qrgzvMxB": "TsfYO46g"}}' \
    > test.out 2>&1
eval_tap $? 268 'UpdatePaymentTaxConfig' test.out

#- 269 SyncPaymentOrders
samples/cli/sample-apps Platform syncPaymentOrders \
    --nextEvaluatedKey 'w3I9Pusm' \
    --end 'F5Y0AkVO' \
    --start 'Sr8mFvD9' \
    > test.out 2>&1
eval_tap $? 269 'SyncPaymentOrders' test.out

#- 270 PublicGetRootCategories
samples/cli/sample-apps Platform publicGetRootCategories \
    --namespace $AB_NAMESPACE \
    --language 'sdUqvGbd' \
    --storeId 'Im86O9DQ' \
    > test.out 2>&1
eval_tap $? 270 'PublicGetRootCategories' test.out

#- 271 DownloadCategories
samples/cli/sample-apps Platform downloadCategories \
    --namespace $AB_NAMESPACE \
    --language '87Gnz9K3' \
    --storeId 'W4KRHuOc' \
    > test.out 2>&1
eval_tap $? 271 'DownloadCategories' test.out

#- 272 PublicGetCategory
samples/cli/sample-apps Platform publicGetCategory \
    --categoryPath '89JOvZ8s' \
    --namespace $AB_NAMESPACE \
    --language 'A756U7b5' \
    --storeId 'Z6UUvXOS' \
    > test.out 2>&1
eval_tap $? 272 'PublicGetCategory' test.out

#- 273 PublicGetChildCategories
samples/cli/sample-apps Platform publicGetChildCategories \
    --categoryPath 'dJsLhhyx' \
    --namespace $AB_NAMESPACE \
    --language 'kEJ4hwYD' \
    --storeId 'JqPpuj6G' \
    > test.out 2>&1
eval_tap $? 273 'PublicGetChildCategories' test.out

#- 274 PublicGetDescendantCategories
samples/cli/sample-apps Platform publicGetDescendantCategories \
    --categoryPath 'qfdmzuDe' \
    --namespace $AB_NAMESPACE \
    --language 'qz9A0UEp' \
    --storeId 'XnVWN9VU' \
    > test.out 2>&1
eval_tap $? 274 'PublicGetDescendantCategories' test.out

#- 275 PublicListCurrencies
samples/cli/sample-apps Platform publicListCurrencies \
    --namespace $AB_NAMESPACE \
    --currencyType 'REAL' \
    > test.out 2>&1
eval_tap $? 275 'PublicListCurrencies' test.out

#- 276 PublicGetItemByAppId
samples/cli/sample-apps Platform publicGetItemByAppId \
    --namespace $AB_NAMESPACE \
    --language '0Z9Sxn7B' \
    --region 'NXSDFAGY' \
    --storeId 'grayEg6F' \
    --appId 'bble4NPg' \
    > test.out 2>&1
eval_tap $? 276 'PublicGetItemByAppId' test.out

#- 277 PublicQueryItems
samples/cli/sample-apps Platform publicQueryItems \
    --namespace $AB_NAMESPACE \
    --appType 'DLC' \
    --baseAppId 'VfTCPvaR' \
    --categoryPath 'fwJ400sd' \
    --features 'lsqlJYzE' \
    --itemType 'INGAMEITEM' \
    --language 'jJnenBb4' \
    --limit '52' \
    --offset '7' \
    --region 'MT0JH78Z' \
    --sortBy '["name", "updatedAt", "createdAt"]' \
    --storeId 'EMLIdowB' \
    --tags 'fgN62Y2p' \
    > test.out 2>&1
eval_tap $? 277 'PublicQueryItems' test.out

#- 278 PublicGetItemBySku
samples/cli/sample-apps Platform publicGetItemBySku \
    --namespace $AB_NAMESPACE \
    --language 'Nv2PqCVy' \
    --region '9Ab8Wlae' \
    --storeId 'VazE6usf' \
    --sku 'GbCaDVnb' \
    > test.out 2>&1
eval_tap $? 278 'PublicGetItemBySku' test.out

#- 279 PublicBulkGetItems
samples/cli/sample-apps Platform publicBulkGetItems \
    --namespace $AB_NAMESPACE \
    --language 'NfkoECif' \
    --region 'Hv6DqwDv' \
    --storeId 'OwjrNXMm' \
    --itemIds '997lWdSO' \
    > test.out 2>&1
eval_tap $? 279 'PublicBulkGetItems' test.out

#- 280 PublicValidateItemPurchaseCondition
samples/cli/sample-apps Platform publicValidateItemPurchaseCondition \
    --namespace $AB_NAMESPACE \
    --body '{"itemIds": ["10v4BWUF", "YzNXUvj2", "CYUXMYr8"]}' \
    > test.out 2>&1
eval_tap $? 280 'PublicValidateItemPurchaseCondition' test.out

#- 281 PublicSearchItems
samples/cli/sample-apps Platform publicSearchItems \
    --namespace $AB_NAMESPACE \
    --itemType 'BUNDLE' \
    --limit '18' \
    --offset '15' \
    --region 'JyswOXuE' \
    --storeId 'NGwukLAG' \
    --keyword 'fuXpkfdv' \
    --language 'RYFbAocm' \
    > test.out 2>&1
eval_tap $? 281 'PublicSearchItems' test.out

#- 282 PublicGetApp
samples/cli/sample-apps Platform publicGetApp \
    --itemId 'URvjhaF4' \
    --namespace $AB_NAMESPACE \
    --language 'DLOBPVSv' \
    --region 'IcDTDSCd' \
    --storeId 'gdB8czxp' \
    > test.out 2>&1
eval_tap $? 282 'PublicGetApp' test.out

#- 283 PublicGetItemDynamicData
samples/cli/sample-apps Platform publicGetItemDynamicData \
    --itemId '47GZd2tO' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 283 'PublicGetItemDynamicData' test.out

#- 284 PublicGetItem
samples/cli/sample-apps Platform publicGetItem \
    --itemId 'xijoO3wa' \
    --namespace $AB_NAMESPACE \
    --language '4bapuRYI' \
    --populateBundle 'true' \
    --region 'IO7dikiB' \
    --storeId 'ytp0GODj' \
    > test.out 2>&1
eval_tap $? 284 'PublicGetItem' test.out

#- 285 GetPaymentCustomization
eval_tap 0 285 'GetPaymentCustomization # SKIP deprecated' test.out

#- 286 PublicGetPaymentUrl
samples/cli/sample-apps Platform publicGetPaymentUrl \
    --namespace $AB_NAMESPACE \
    --body '{"paymentOrderNo": "26DjFG3t", "paymentProvider": "WXPAY", "returnUrl": "p6LHTY0S", "ui": "gRuNycF5", "zipCode": "FkrzZ7q8"}' \
    > test.out 2>&1
eval_tap $? 286 'PublicGetPaymentUrl' test.out

#- 287 PublicGetPaymentMethods
samples/cli/sample-apps Platform publicGetPaymentMethods \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'V8K6cue0' \
    > test.out 2>&1
eval_tap $? 287 'PublicGetPaymentMethods' test.out

#- 288 PublicGetUnpaidPaymentOrder
samples/cli/sample-apps Platform publicGetUnpaidPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'fTw4STyA' \
    > test.out 2>&1
eval_tap $? 288 'PublicGetUnpaidPaymentOrder' test.out

#- 289 Pay
samples/cli/sample-apps Platform pay \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'WgclkBel' \
    --paymentProvider 'PAYPAL' \
    --zipCode 'H66q1NVR' \
    --body '{"token": "3eLXxT9z"}' \
    > test.out 2>&1
eval_tap $? 289 'Pay' test.out

#- 290 PublicCheckPaymentOrderPaidStatus
samples/cli/sample-apps Platform publicCheckPaymentOrderPaidStatus \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo '3JJtvEjc' \
    > test.out 2>&1
eval_tap $? 290 'PublicCheckPaymentOrderPaidStatus' test.out

#- 291 GetPaymentPublicConfig
samples/cli/sample-apps Platform getPaymentPublicConfig \
    --namespace $AB_NAMESPACE \
    --sandbox 'false' \
    --paymentProvider 'CHECKOUT' \
    --region 'rJPgjUtw' \
    > test.out 2>&1
eval_tap $? 291 'GetPaymentPublicConfig' test.out

#- 292 PublicGetQRCode
samples/cli/sample-apps Platform publicGetQRCode \
    --namespace $AB_NAMESPACE \
    --code 'vlNRx1hm' \
    > test.out 2>&1
eval_tap $? 292 'PublicGetQRCode' test.out

#- 293 PublicNormalizePaymentReturnUrl
samples/cli/sample-apps Platform publicNormalizePaymentReturnUrl \
    --namespace $AB_NAMESPACE \
    --payerID 'kFBh2lDX' \
    --foreinginvoice 'KzdkYZVf' \
    --invoiceId 'pI0glj8i' \
    --payload 'Ijogv0LE' \
    --redirectResult 'bF6zItev' \
    --resultCode 'vdndsHqT' \
    --sessionId '46CD8RQa' \
    --status '5PEDwplq' \
    --token 'Gx5MitgX' \
    --type 'iOXN3sbU' \
    --userId 'fW8YgYTK' \
    --orderNo 'u0sqzpgl' \
    --paymentOrderNo 'Qfhdx8pz' \
    --paymentProvider 'WALLET' \
    --returnUrl 'E8to5g28' \
    > test.out 2>&1
eval_tap $? 293 'PublicNormalizePaymentReturnUrl' test.out

#- 294 GetPaymentTaxValue
samples/cli/sample-apps Platform getPaymentTaxValue \
    --namespace $AB_NAMESPACE \
    --zipCode '8clXpEfO' \
    --paymentOrderNo 'SU5U2qwW' \
    --paymentProvider 'PAYPAL' \
    > test.out 2>&1
eval_tap $? 294 'GetPaymentTaxValue' test.out

#- 295 GetRewardByCode
samples/cli/sample-apps Platform getRewardByCode \
    --namespace $AB_NAMESPACE \
    --rewardCode 'm6u10szX' \
    > test.out 2>&1
eval_tap $? 295 'GetRewardByCode' test.out

#- 296 QueryRewards1
samples/cli/sample-apps Platform queryRewards1 \
    --namespace $AB_NAMESPACE \
    --eventTopic 'AGzXIBgx' \
    --limit '44' \
    --offset '45' \
    --sortBy '["namespace:desc", "rewardCode:asc", "namespace:asc"]' \
    > test.out 2>&1
eval_tap $? 296 'QueryRewards1' test.out

#- 297 GetReward1
samples/cli/sample-apps Platform getReward1 \
    --namespace $AB_NAMESPACE \
    --rewardId 'rrrMO4sm' \
    > test.out 2>&1
eval_tap $? 297 'GetReward1' test.out

#- 298 PublicListStores
samples/cli/sample-apps Platform publicListStores \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 298 'PublicListStores' test.out

#- 299 PublicExistsAnyMyActiveEntitlement
samples/cli/sample-apps Platform publicExistsAnyMyActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --appIds '["ESrHvG08", "TM8BhWwz", "VXIkB6BF"]' \
    --itemIds '["bqzoKHYF", "7YB1VXIz", "Ia66mzzG"]' \
    --skus '["BThubmWN", "c3DcHmUe", "vgmhZbmr"]' \
    > test.out 2>&1
eval_tap $? 299 'PublicExistsAnyMyActiveEntitlement' test.out

#- 300 PublicGetMyAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform publicGetMyAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --appId '2p59rH5V' \
    > test.out 2>&1
eval_tap $? 300 'PublicGetMyAppEntitlementOwnershipByAppId' test.out

#- 301 PublicGetMyEntitlementOwnershipByItemId
samples/cli/sample-apps Platform publicGetMyEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --entitlementClazz 'SUBSCRIPTION' \
    --itemId '3nLx45EX' \
    > test.out 2>&1
eval_tap $? 301 'PublicGetMyEntitlementOwnershipByItemId' test.out

#- 302 PublicGetMyEntitlementOwnershipBySku
samples/cli/sample-apps Platform publicGetMyEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --entitlementClazz 'CODE' \
    --sku 'xPPc13pr' \
    > test.out 2>&1
eval_tap $? 302 'PublicGetMyEntitlementOwnershipBySku' test.out

#- 303 PublicGetEntitlementOwnershipToken
samples/cli/sample-apps Platform publicGetEntitlementOwnershipToken \
    --namespace $AB_NAMESPACE \
    --appIds '["OiPYeND0", "CwZd3yD4", "XQZQezNx"]' \
    --itemIds '["gRATBzt5", "aW3iUZZE", "Cyz2nte3"]' \
    --skus '["FkvdYjVf", "qMQnTmkB", "zYiIAHZF"]' \
    > test.out 2>&1
eval_tap $? 303 'PublicGetEntitlementOwnershipToken' test.out

#- 304 PublicGetMyWallet
samples/cli/sample-apps Platform publicGetMyWallet \
    --currencyCode 'FLBsvCv7' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 304 'PublicGetMyWallet' test.out

#- 305 SyncEpicGameDLC
samples/cli/sample-apps Platform syncEpicGameDLC \
    --namespace $AB_NAMESPACE \
    --userId '6EaK1brB' \
    --body '{"epicGamesJwtToken": "0779mH4K"}' \
    > test.out 2>&1
eval_tap $? 305 'SyncEpicGameDLC' test.out

#- 306 PublicSyncPsnDlcInventory
samples/cli/sample-apps Platform publicSyncPsnDlcInventory \
    --namespace $AB_NAMESPACE \
    --userId 'i12ZoUtV' \
    --body '{"serviceLabel": 16}' \
    > test.out 2>&1
eval_tap $? 306 'PublicSyncPsnDlcInventory' test.out

#- 307 SyncSteamDLC
samples/cli/sample-apps Platform syncSteamDLC \
    --namespace $AB_NAMESPACE \
    --userId 'MJOL5rG4' \
    --body '{"appId": "lvWjuttI", "steamId": "4GeCehEY"}' \
    > test.out 2>&1
eval_tap $? 307 'SyncSteamDLC' test.out

#- 308 SyncXboxDLC
samples/cli/sample-apps Platform syncXboxDLC \
    --namespace $AB_NAMESPACE \
    --userId '92QBs6Tf' \
    --body '{"xstsToken": "sYOF3T62"}' \
    > test.out 2>&1
eval_tap $? 308 'SyncXboxDLC' test.out

#- 309 PublicQueryUserEntitlements
samples/cli/sample-apps Platform publicQueryUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId '56Rifd1G' \
    --appType 'GAME' \
    --entitlementClazz 'MEDIA' \
    --entitlementName 'FXvKdNBh' \
    --itemId '["zHyXzlj3", "rhv3atWb", "KxA7OTbY"]' \
    --limit '50' \
    --offset '88' \
    > test.out 2>&1
eval_tap $? 309 'PublicQueryUserEntitlements' test.out

#- 310 PublicGetUserAppEntitlementByAppId
samples/cli/sample-apps Platform publicGetUserAppEntitlementByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'ATXaluCg' \
    --appId 'pqAv1fpk' \
    > test.out 2>&1
eval_tap $? 310 'PublicGetUserAppEntitlementByAppId' test.out

#- 311 PublicQueryUserEntitlementsByAppType
samples/cli/sample-apps Platform publicQueryUserEntitlementsByAppType \
    --namespace $AB_NAMESPACE \
    --userId '5sPxCZfA' \
    --limit '40' \
    --offset '95' \
    --appType 'DEMO' \
    > test.out 2>&1
eval_tap $? 311 'PublicQueryUserEntitlementsByAppType' test.out

#- 312 PublicGetUserEntitlementByItemId
samples/cli/sample-apps Platform publicGetUserEntitlementByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'ekGi7mcl' \
    --entitlementClazz 'CODE' \
    --itemId 'JivBTB4o' \
    > test.out 2>&1
eval_tap $? 312 'PublicGetUserEntitlementByItemId' test.out

#- 313 PublicGetUserEntitlementBySku
samples/cli/sample-apps Platform publicGetUserEntitlementBySku \
    --namespace $AB_NAMESPACE \
    --userId 'YahbCDpU' \
    --entitlementClazz 'ENTITLEMENT' \
    --sku '3PmxVFm0' \
    > test.out 2>&1
eval_tap $? 313 'PublicGetUserEntitlementBySku' test.out

#- 314 PublicExistsAnyUserActiveEntitlement
samples/cli/sample-apps Platform publicExistsAnyUserActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'OmX1900r' \
    --appIds '["zJ7ufIRX", "BxASFJvb", "nrUojPeG"]' \
    --itemIds '["39mMjZbI", "PysKKNz6", "vsMTOcJ4"]' \
    --skus '["4bZPTHUv", "Q1uNZFQ9", "TlvZeuOZ"]' \
    > test.out 2>&1
eval_tap $? 314 'PublicExistsAnyUserActiveEntitlement' test.out

#- 315 PublicGetUserAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform publicGetUserAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'Lh5HWYDq' \
    --appId 'R8nUTuqu' \
    > test.out 2>&1
eval_tap $? 315 'PublicGetUserAppEntitlementOwnershipByAppId' test.out

#- 316 PublicGetUserEntitlementOwnershipByItemId
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'mbW454ng' \
    --entitlementClazz 'CODE' \
    --itemId 'bPtX6Jr4' \
    > test.out 2>&1
eval_tap $? 316 'PublicGetUserEntitlementOwnershipByItemId' test.out

#- 317 PublicGetUserEntitlementOwnershipByItemIds
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'IHdeQwLM' \
    --ids '["q90FZQ8I", "gecPzaDz", "KHQYMgRP"]' \
    > test.out 2>&1
eval_tap $? 317 'PublicGetUserEntitlementOwnershipByItemIds' test.out

#- 318 PublicGetUserEntitlementOwnershipBySku
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --userId 'ItGyclM2' \
    --entitlementClazz 'ENTITLEMENT' \
    --sku 'jreZhWOT' \
    > test.out 2>&1
eval_tap $? 318 'PublicGetUserEntitlementOwnershipBySku' test.out

#- 319 PublicGetUserEntitlement
samples/cli/sample-apps Platform publicGetUserEntitlement \
    --entitlementId 'sTMR6qop' \
    --namespace $AB_NAMESPACE \
    --userId 'Dbo38bnK' \
    > test.out 2>&1
eval_tap $? 319 'PublicGetUserEntitlement' test.out

#- 320 PublicConsumeUserEntitlement
samples/cli/sample-apps Platform publicConsumeUserEntitlement \
    --entitlementId 'N6GS8M0v' \
    --namespace $AB_NAMESPACE \
    --userId 'h6paovwu' \
    --body '{"options": ["abo96fb4", "RBehyvgH", "GzxiNitI"], "useCount": 63}' \
    > test.out 2>&1
eval_tap $? 320 'PublicConsumeUserEntitlement' test.out

#- 321 PublicRedeemCode
samples/cli/sample-apps Platform publicRedeemCode \
    --namespace $AB_NAMESPACE \
    --userId 'o1ZgHxCs' \
    --body '{"code": "ZDW4oncX", "language": "QC", "region": "xMsFZlVk"}' \
    > test.out 2>&1
eval_tap $? 321 'PublicRedeemCode' test.out

#- 322 PublicFulfillAppleIAPItem
samples/cli/sample-apps Platform publicFulfillAppleIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'RQqzocNZ' \
    --body '{"excludeOldTransactions": false, "language": "Jhp-736", "productId": "b9IGpzmw", "receiptData": "szRgYNfX", "region": "djE5fmqw", "transactionId": "U3757ycY"}' \
    > test.out 2>&1
eval_tap $? 322 'PublicFulfillAppleIAPItem' test.out

#- 323 SyncEpicGamesInventory
samples/cli/sample-apps Platform syncEpicGamesInventory \
    --namespace $AB_NAMESPACE \
    --userId 'xam5UCDL' \
    --body '{"epicGamesJwtToken": "z3kZmxtd"}' \
    > test.out 2>&1
eval_tap $? 323 'SyncEpicGamesInventory' test.out

#- 324 PublicFulfillGoogleIAPItem
samples/cli/sample-apps Platform publicFulfillGoogleIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'xxG2H0Ef' \
    --body '{"autoAck": true, "language": "Qw", "orderId": "Gpy4weZt", "packageName": "fXVaHG7V", "productId": "OggRZ3F2", "purchaseTime": 73, "purchaseToken": "u86W9b5W", "region": "ZHnHksPh"}' \
    > test.out 2>&1
eval_tap $? 324 'PublicFulfillGoogleIAPItem' test.out

#- 325 PublicReconcilePlayStationStore
samples/cli/sample-apps Platform publicReconcilePlayStationStore \
    --namespace $AB_NAMESPACE \
    --userId '7JFY0IwD' \
    --body '{"currencyCode": "4Rq9itKH", "price": 0.04248556674021853, "productId": "YN7mtNog", "serviceLabel": 44}' \
    > test.out 2>&1
eval_tap $? 325 'PublicReconcilePlayStationStore' test.out

#- 326 SyncStadiaEntitlement
samples/cli/sample-apps Platform syncStadiaEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'oQvumi9g' \
    --body '{"appId": "IN1vn5pk", "language": "eR-WlTR", "region": "X5HnlXxK", "stadiaPlayerId": "KuFrNAV6"}' \
    > test.out 2>&1
eval_tap $? 326 'SyncStadiaEntitlement' test.out

#- 327 SyncSteamInventory
samples/cli/sample-apps Platform syncSteamInventory \
    --namespace $AB_NAMESPACE \
    --userId 'P8NuEsbP' \
    --body '{"appId": "LqZUfmuX", "currencyCode": "oOrVm2lv", "language": "kW-Bo", "price": 0.9700211138487441, "productId": "c8TU1Tkm", "region": "mXSHZYg7", "steamId": "oeSZ07My"}' \
    > test.out 2>&1
eval_tap $? 327 'SyncSteamInventory' test.out

#- 328 SyncTwitchDropsEntitlement
samples/cli/sample-apps Platform syncTwitchDropsEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'fpn9rywf' \
    --body '{"gameId": "SkNpUwti", "language": "MO_moXZ", "region": "bVdTJQ3j"}' \
    > test.out 2>&1
eval_tap $? 328 'SyncTwitchDropsEntitlement' test.out

#- 329 SyncXboxInventory
samples/cli/sample-apps Platform syncXboxInventory \
    --namespace $AB_NAMESPACE \
    --userId 'K2VdLTR5' \
    --body '{"currencyCode": "tDlXuuGz", "price": 0.8586552186377252, "productId": "XXGSk1ZE", "xstsToken": "oFFKkJkl"}' \
    > test.out 2>&1
eval_tap $? 329 'SyncXboxInventory' test.out

#- 330 PublicQueryUserOrders
samples/cli/sample-apps Platform publicQueryUserOrders \
    --namespace $AB_NAMESPACE \
    --userId 'FiGXB20z' \
    --itemId 'C9IsSWSq' \
    --limit '36' \
    --offset '53' \
    --status 'CLOSED' \
    > test.out 2>&1
eval_tap $? 330 'PublicQueryUserOrders' test.out

#- 331 PublicCreateUserOrder
samples/cli/sample-apps Platform publicCreateUserOrder \
    --namespace $AB_NAMESPACE \
    --userId 'ZcuEE1YU' \
    --body '{"currencyCode": "Nn8ICFZJ", "discountedPrice": 12, "ext": {"mxZcIS4b": {}, "RZg2Ln6s": {}, "hzj1ptpB": {}}, "itemId": "eRCaGZkD", "language": "gEKp_nX", "price": 22, "quantity": 60, "region": "6Wt5cJ8F", "returnUrl": "y5Oyg7M7"}' \
    > test.out 2>&1
eval_tap $? 331 'PublicCreateUserOrder' test.out

#- 332 PublicGetUserOrder
samples/cli/sample-apps Platform publicGetUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'HZl43yzw' \
    --userId 'RIuVv0O3' \
    > test.out 2>&1
eval_tap $? 332 'PublicGetUserOrder' test.out

#- 333 PublicCancelUserOrder
samples/cli/sample-apps Platform publicCancelUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'jxHfC4K0' \
    --userId 'h7Gwuie2' \
    > test.out 2>&1
eval_tap $? 333 'PublicCancelUserOrder' test.out

#- 334 PublicGetUserOrderHistories
samples/cli/sample-apps Platform publicGetUserOrderHistories \
    --namespace $AB_NAMESPACE \
    --orderNo 'd8ndGsCa' \
    --userId 'g4GSTk33' \
    > test.out 2>&1
eval_tap $? 334 'PublicGetUserOrderHistories' test.out

#- 335 PublicDownloadUserOrderReceipt
samples/cli/sample-apps Platform publicDownloadUserOrderReceipt \
    --namespace $AB_NAMESPACE \
    --orderNo 'rEvJjKoU' \
    --userId '3iYAcoqV' \
    > test.out 2>&1
eval_tap $? 335 'PublicDownloadUserOrderReceipt' test.out

#- 336 PublicGetPaymentAccounts
samples/cli/sample-apps Platform publicGetPaymentAccounts \
    --namespace $AB_NAMESPACE \
    --userId 'YPWGLJpM' \
    > test.out 2>&1
eval_tap $? 336 'PublicGetPaymentAccounts' test.out

#- 337 PublicDeletePaymentAccount
samples/cli/sample-apps Platform publicDeletePaymentAccount \
    --id 'bn6TPnOx' \
    --namespace $AB_NAMESPACE \
    --type 'card' \
    --userId 'gdlDRCma' \
    > test.out 2>&1
eval_tap $? 337 'PublicDeletePaymentAccount' test.out

#- 338 PublicQueryUserSubscriptions
samples/cli/sample-apps Platform publicQueryUserSubscriptions \
    --namespace $AB_NAMESPACE \
    --userId '6PxPjn5t' \
    --chargeStatus 'CHARGE_FAILED' \
    --itemId 'PsiVScGe' \
    --limit '65' \
    --offset '19' \
    --sku 'qOTn4wOy' \
    --status 'EXPIRED' \
    --subscribedBy 'USER' \
    > test.out 2>&1
eval_tap $? 338 'PublicQueryUserSubscriptions' test.out

#- 339 PublicSubscribeSubscription
samples/cli/sample-apps Platform publicSubscribeSubscription \
    --namespace $AB_NAMESPACE \
    --userId 'swJZt8EH' \
    --body '{"currencyCode": "Wf9KPHpv", "itemId": "Y1RmfaM3", "language": "sZ_TTXx", "region": "m5fEj3UB", "returnUrl": "ALzFOYFe", "source": "a3iiPAfX"}' \
    > test.out 2>&1
eval_tap $? 339 'PublicSubscribeSubscription' test.out

#- 340 PublicCheckUserSubscriptionSubscribableByItemId
samples/cli/sample-apps Platform publicCheckUserSubscriptionSubscribableByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'DRkLV6Io' \
    --itemId 'L5n7mFJx' \
    > test.out 2>&1
eval_tap $? 340 'PublicCheckUserSubscriptionSubscribableByItemId' test.out

#- 341 PublicGetUserSubscription
samples/cli/sample-apps Platform publicGetUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'LjXvjr5Z' \
    --userId 'c2Ih1Jt5' \
    > test.out 2>&1
eval_tap $? 341 'PublicGetUserSubscription' test.out

#- 342 PublicChangeSubscriptionBillingAccount
samples/cli/sample-apps Platform publicChangeSubscriptionBillingAccount \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'o6xIKUde' \
    --userId 'SqLf3RG7' \
    > test.out 2>&1
eval_tap $? 342 'PublicChangeSubscriptionBillingAccount' test.out

#- 343 PublicCancelSubscription
samples/cli/sample-apps Platform publicCancelSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId '8RQWBB6H' \
    --userId 'YhMeUEpX' \
    --body '{"immediate": true, "reason": "H8fAwXGn"}' \
    > test.out 2>&1
eval_tap $? 343 'PublicCancelSubscription' test.out

#- 344 PublicGetUserSubscriptionBillingHistories
samples/cli/sample-apps Platform publicGetUserSubscriptionBillingHistories \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'C1rePnHg' \
    --userId '8lvmPubb' \
    --excludeFree 'true' \
    --limit '71' \
    --offset '43' \
    > test.out 2>&1
eval_tap $? 344 'PublicGetUserSubscriptionBillingHistories' test.out

#- 345 PublicGetWallet
samples/cli/sample-apps Platform publicGetWallet \
    --currencyCode 'ejKw7tob' \
    --namespace $AB_NAMESPACE \
    --userId 'qv0ElmqR' \
    > test.out 2>&1
eval_tap $? 345 'PublicGetWallet' test.out

#- 346 PublicListUserWalletTransactions
samples/cli/sample-apps Platform publicListUserWalletTransactions \
    --currencyCode 'M223AstQ' \
    --namespace $AB_NAMESPACE \
    --userId 'PCdBcXHc' \
    --limit '64' \
    --offset '2' \
    > test.out 2>&1
eval_tap $? 346 'PublicListUserWalletTransactions' test.out


rm -f "tmp.dat"

exit $EXIT_CODE