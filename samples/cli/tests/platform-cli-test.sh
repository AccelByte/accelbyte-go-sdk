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
echo "1..510"

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

#- 3 GetFulfillmentScript
samples/cli/sample-apps Platform getFulfillmentScript \
    --id 'jZiE3wgZfIdcP0Ch' \
    > test.out 2>&1
eval_tap $? 3 'GetFulfillmentScript' test.out

#- 4 CreateFulfillmentScript
samples/cli/sample-apps Platform createFulfillmentScript \
    --id 'KKdnCRRLelwJ1SPN' \
    --body '{"grantDays": "rR3H3jAZGi0RwN0z"}' \
    > test.out 2>&1
eval_tap $? 4 'CreateFulfillmentScript' test.out

#- 5 DeleteFulfillmentScript
samples/cli/sample-apps Platform deleteFulfillmentScript \
    --id 'mhthvpcGq8oWEjrM' \
    > test.out 2>&1
eval_tap $? 5 'DeleteFulfillmentScript' test.out

#- 6 UpdateFulfillmentScript
samples/cli/sample-apps Platform updateFulfillmentScript \
    --id '4wSeMz6a8umtB0eY' \
    --body '{"grantDays": "IUl4ULATR3aLz6ni"}' \
    > test.out 2>&1
eval_tap $? 6 'UpdateFulfillmentScript' test.out

#- 7 ListItemTypeConfigs
samples/cli/sample-apps Platform listItemTypeConfigs \
    > test.out 2>&1
eval_tap $? 7 'ListItemTypeConfigs' test.out

#- 8 CreateItemTypeConfig
samples/cli/sample-apps Platform createItemTypeConfig \
    --body '{"clazz": "rX2kn1U5jB65KTrZ", "dryRun": true, "fulfillmentUrl": "66Gh7xTljBPQzYtQ", "itemType": "BUNDLE", "purchaseConditionUrl": "LkQuvO8haUAODpq5"}' \
    > test.out 2>&1
eval_tap $? 8 'CreateItemTypeConfig' test.out

#- 9 SearchItemTypeConfig
samples/cli/sample-apps Platform searchItemTypeConfig \
    --clazz '7f62rXtScWPmnVS9' \
    --itemType 'INGAMEITEM' \
    > test.out 2>&1
eval_tap $? 9 'SearchItemTypeConfig' test.out

#- 10 GetItemTypeConfig
samples/cli/sample-apps Platform getItemTypeConfig \
    --id 'p2EH2G2ww6AggBLK' \
    > test.out 2>&1
eval_tap $? 10 'GetItemTypeConfig' test.out

#- 11 UpdateItemTypeConfig
samples/cli/sample-apps Platform updateItemTypeConfig \
    --id 'QHEHsU2JQjoAuLW7' \
    --body '{"clazz": "ucKwc9wqYbwalR9V", "dryRun": true, "fulfillmentUrl": "9o98WKmNTFWua03G", "purchaseConditionUrl": "NyDYmuQut2ha1txH"}' \
    > test.out 2>&1
eval_tap $? 11 'UpdateItemTypeConfig' test.out

#- 12 DeleteItemTypeConfig
samples/cli/sample-apps Platform deleteItemTypeConfig \
    --id 'PzYAI1sLYEY4Auxv' \
    > test.out 2>&1
eval_tap $? 12 'DeleteItemTypeConfig' test.out

#- 13 QueryCampaigns
samples/cli/sample-apps Platform queryCampaigns \
    --namespace $AB_NAMESPACE \
    --limit '43' \
    --name 'GR2R2tUGo2HQtMYT' \
    --offset '88' \
    --tag '4NWt9KojKr2QFsOn' \
    > test.out 2>&1
eval_tap $? 13 'QueryCampaigns' test.out

#- 14 CreateCampaign
samples/cli/sample-apps Platform createCampaign \
    --namespace $AB_NAMESPACE \
    --body '{"description": "q1sS34kYn0HZbnkW", "discountConfig": {"categories": [{"categoryPath": "l7beEbaxM2j7dbPF", "includeSubCategories": false}, {"categoryPath": "H9hmRbbO5EEoViyg", "includeSubCategories": true}, {"categoryPath": "ARsaLCQ9uTED8ACF", "includeSubCategories": false}], "currencyCode": "uPO54a2oEkKp36Pu", "currencyNamespace": "Cau7qfDvgzSLlznU", "discountAmount": 83, "discountPercentage": 36, "discountType": "AMOUNT", "items": [{"itemId": "OJq3DrEJ18OxqX3Z", "itemName": "luIB1SV0PXlptp0U"}, {"itemId": "ttJqPt9F6cTkH41m", "itemName": "9YPhmGqL6bxat3dR"}, {"itemId": "7ZyHgeBWHSWNcv3k", "itemName": "xyADLgL5NKu02VkB"}], "restrictType": "NONE", "stackable": true}, "items": [{"extraSubscriptionDays": 9, "itemId": "nFadb9b0HurCtXus", "itemName": "lNqYZmncCmCKT0ns", "quantity": 32}, {"extraSubscriptionDays": 3, "itemId": "DIGzQU9dkJzUDXae", "itemName": "i6avro5QoetAPRD7", "quantity": 73}, {"extraSubscriptionDays": 50, "itemId": "QRfGey6wzr8VmduH", "itemName": "W6GiJq5lVdGZyzBj", "quantity": 29}], "maxRedeemCountPerCampaignPerUser": 69, "maxRedeemCountPerCode": 94, "maxRedeemCountPerCodePerUser": 22, "maxSaleCount": 27, "name": "7jlEv73kZnHKJfpJ", "redeemEnd": "1981-02-17T00:00:00Z", "redeemStart": "1976-04-23T00:00:00Z", "redeemType": "DISCOUNT", "status": "ACTIVE", "tags": ["YdBVA7LD80eAbyVJ", "p2usG1JYK3ikhvVl", "XZhwwgK250d7ABr7"], "type": "REDEMPTION"}' \
    > test.out 2>&1
eval_tap $? 14 'CreateCampaign' test.out

#- 15 GetCampaign
samples/cli/sample-apps Platform getCampaign \
    --campaignId 'gUmyCXvbqQTtcKzr' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 15 'GetCampaign' test.out

#- 16 UpdateCampaign
samples/cli/sample-apps Platform updateCampaign \
    --campaignId 'VK0D4m4gVtptxXHM' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "DyA5F1uUhOaZ9bX9", "discountConfig": {"categories": [{"categoryPath": "sFrR3kMZE4Q1uOKQ", "includeSubCategories": false}, {"categoryPath": "v82TfXqj4NoYZKqx", "includeSubCategories": true}, {"categoryPath": "eR4ySl2SOxURD3Qd", "includeSubCategories": false}], "currencyCode": "R0il8u6gu8n5yzCq", "currencyNamespace": "C12GNlyA5QeEZ6kO", "discountAmount": 8, "discountPercentage": 57, "discountType": "AMOUNT", "items": [{"itemId": "qrt4oR7LgCkhgfwA", "itemName": "D6V4uLImvqDkw3en"}, {"itemId": "NLOzxdX8OdUyahx6", "itemName": "eaMuXgdXLi1cnCky"}, {"itemId": "FVCf7EO3Gq64hQA1", "itemName": "UhSb0vPXyR49zxGL"}], "restrictType": "ITEMS_AND_CATEGORIES", "stackable": false}, "items": [{"extraSubscriptionDays": 7, "itemId": "kc9TnDXvN9O6C6uy", "itemName": "I8Ujnc3taCEGeM9E", "quantity": 62}, {"extraSubscriptionDays": 51, "itemId": "Ie7XWJ9DvbKfnjfR", "itemName": "dC55XmCWlAViVkLt", "quantity": 85}, {"extraSubscriptionDays": 81, "itemId": "Nkfb3y0rEHqozBho", "itemName": "CNyF6Q9mVZ8lYcob", "quantity": 100}], "maxRedeemCountPerCampaignPerUser": 42, "maxRedeemCountPerCode": 88, "maxRedeemCountPerCodePerUser": 1, "maxSaleCount": 21, "name": "lQp9UEuzfSLPwzZA", "redeemEnd": "1979-08-31T00:00:00Z", "redeemStart": "1989-11-21T00:00:00Z", "redeemType": "DISCOUNT", "status": "INACTIVE", "tags": ["0VMCDf4fLB228e6u", "1ibITBOvopJntENf", "RoLN5hHhBqG3TJiP"]}' \
    > test.out 2>&1
eval_tap $? 16 'UpdateCampaign' test.out

#- 17 RenameBatch
samples/cli/sample-apps Platform renameBatch \
    --campaignId 'VN4yuF2GOkte12P9' \
    --namespace $AB_NAMESPACE \
    --body '{"newName": "jOPTlE9XfJ0o2tTt", "oldName": "VofSm72efuUZkTj0"}' \
    > test.out 2>&1
eval_tap $? 17 'RenameBatch' test.out

#- 18 QueryCampaignBatchNames
samples/cli/sample-apps Platform queryCampaignBatchNames \
    --campaignId 'UxjKoelWYhDtnv1J' \
    --namespace $AB_NAMESPACE \
    --batchName 'sjlfAiAWtfMu9D7K' \
    --limit '40' \
    > test.out 2>&1
eval_tap $? 18 'QueryCampaignBatchNames' test.out

#- 19 GetCampaignDynamic
samples/cli/sample-apps Platform getCampaignDynamic \
    --campaignId 'K261KkFNjb39kc9Q' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 19 'GetCampaignDynamic' test.out

#- 20 GetCatalogConfig
samples/cli/sample-apps Platform getCatalogConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 20 'GetCatalogConfig' test.out

#- 21 UpdateCatalogConfig
samples/cli/sample-apps Platform updateCatalogConfig \
    --namespace $AB_NAMESPACE \
    --body '{"enableInventoryCheck": false, "itemDeletionCheckConfig": ["CAMPAIGN", "IAP", "CATALOG"]}' \
    > test.out 2>&1
eval_tap $? 21 'UpdateCatalogConfig' test.out

#- 22 GetLootBoxPluginConfig
samples/cli/sample-apps Platform getLootBoxPluginConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 22 'GetLootBoxPluginConfig' test.out

#- 23 UpdateLootBoxPluginConfig
samples/cli/sample-apps Platform updateLootBoxPluginConfig \
    --namespace $AB_NAMESPACE \
    --body '{"appConfig": {"appName": "3VL7WFw8rlNAgkzm"}, "customConfig": {"connectionType": "INSECURE", "grpcServerAddress": "4Bbtm3REVFZHfAk2"}, "extendType": "APP"}' \
    > test.out 2>&1
eval_tap $? 23 'UpdateLootBoxPluginConfig' test.out

#- 24 DeleteLootBoxPluginConfig
samples/cli/sample-apps Platform deleteLootBoxPluginConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 24 'DeleteLootBoxPluginConfig' test.out

#- 25 UplodLootBoxPluginConfigCert
samples/cli/sample-apps Platform uplodLootBoxPluginConfigCert \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 25 'UplodLootBoxPluginConfigCert' test.out

#- 26 GetLootBoxGrpcInfo
samples/cli/sample-apps Platform getLootBoxGrpcInfo \
    --namespace $AB_NAMESPACE \
    --force 'true' \
    > test.out 2>&1
eval_tap $? 26 'GetLootBoxGrpcInfo' test.out

#- 27 GetSectionPluginConfig
samples/cli/sample-apps Platform getSectionPluginConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 27 'GetSectionPluginConfig' test.out

#- 28 UpdateSectionPluginConfig
samples/cli/sample-apps Platform updateSectionPluginConfig \
    --namespace $AB_NAMESPACE \
    --body '{"appConfig": {"appName": "EQRTw4AUuSMZIRs3"}, "customConfig": {"connectionType": "INSECURE", "grpcServerAddress": "RKWmg3D3wrPkFQI6"}, "extendType": "APP"}' \
    > test.out 2>&1
eval_tap $? 28 'UpdateSectionPluginConfig' test.out

#- 29 DeleteSectionPluginConfig
samples/cli/sample-apps Platform deleteSectionPluginConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'DeleteSectionPluginConfig' test.out

#- 30 UploadSectionPluginConfigCert
samples/cli/sample-apps Platform uploadSectionPluginConfigCert \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 30 'UploadSectionPluginConfigCert' test.out

#- 31 GetRootCategories
samples/cli/sample-apps Platform getRootCategories \
    --namespace $AB_NAMESPACE \
    --storeId 'WkdBvTcaz5PzoQ1S' \
    > test.out 2>&1
eval_tap $? 31 'GetRootCategories' test.out

#- 32 CreateCategory
samples/cli/sample-apps Platform createCategory \
    --namespace $AB_NAMESPACE \
    --storeId '9LmejPKwkIjrGFhZ' \
    --body '{"categoryPath": "2WRSCaHhQVwVa1cD", "localizationDisplayNames": {"5e71N7WWUpOEwdHW": "EAfeTgGF6etdjAIO", "Nbd9y8QfZKmYfHh3": "SY0XKCzEZtgL9lKr", "tSYVgXih3R49BWmu": "qU0LZkUpLcFP2qQM"}}' \
    > test.out 2>&1
eval_tap $? 32 'CreateCategory' test.out

#- 33 ListCategoriesBasic
samples/cli/sample-apps Platform listCategoriesBasic \
    --namespace $AB_NAMESPACE \
    --storeId '881MgVqDvfmeLYHP' \
    > test.out 2>&1
eval_tap $? 33 'ListCategoriesBasic' test.out

#- 34 GetCategory
samples/cli/sample-apps Platform getCategory \
    --categoryPath 't9DYgDEe9k09gQKe' \
    --namespace $AB_NAMESPACE \
    --storeId 'tpvRki1YC9mIQ8c1' \
    > test.out 2>&1
eval_tap $? 34 'GetCategory' test.out

#- 35 UpdateCategory
samples/cli/sample-apps Platform updateCategory \
    --categoryPath 'Bh4qIxtmRwSiVLrk' \
    --namespace $AB_NAMESPACE \
    --storeId 'lGWkQehuEt3br0oY' \
    --body '{"localizationDisplayNames": {"VbQuGDyGHii6aEaV": "jzqT5RZEH7Eha5sd", "aa7KMmRj6G1DcjwZ": "un0SWiSif6hOGdvi", "QcQpvCffybINMMHg": "qNjWLy5awnK7l7Sn"}}' \
    > test.out 2>&1
eval_tap $? 35 'UpdateCategory' test.out

#- 36 DeleteCategory
samples/cli/sample-apps Platform deleteCategory \
    --categoryPath '91hHC5S6V9nW8U7M' \
    --namespace $AB_NAMESPACE \
    --storeId 'oScJZ11LeruRJ7op' \
    > test.out 2>&1
eval_tap $? 36 'DeleteCategory' test.out

#- 37 GetChildCategories
samples/cli/sample-apps Platform getChildCategories \
    --categoryPath '2OljPbuQtdJa2A4T' \
    --namespace $AB_NAMESPACE \
    --storeId 'AQ5csUVvmFIAyPza' \
    > test.out 2>&1
eval_tap $? 37 'GetChildCategories' test.out

#- 38 GetDescendantCategories
samples/cli/sample-apps Platform getDescendantCategories \
    --categoryPath 'X4JNzU5jftD5C7TJ' \
    --namespace $AB_NAMESPACE \
    --storeId 'ONFF4pSzVXqN2O44' \
    > test.out 2>&1
eval_tap $? 38 'GetDescendantCategories' test.out

#- 39 QueryCodes
samples/cli/sample-apps Platform queryCodes \
    --campaignId 'mGOfsx59TiDhMnRN' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --batchName 'Txg11jhoJyeTNOD7' \
    --batchNo '[41, 19, 14]' \
    --code 'LjWGf6ZACqy5De1E' \
    --limit '3' \
    --offset '88' \
    --withBatchName 'true' \
    > test.out 2>&1
eval_tap $? 39 'QueryCodes' test.out

#- 40 CreateCodes
samples/cli/sample-apps Platform createCodes \
    --campaignId 'vgT1asdV67ZWuyjp' \
    --namespace $AB_NAMESPACE \
    --body '{"batchName": "1YOb94zZIOzNRh1N", "codeValue": "qTccDfrgOxRQKa8O", "quantity": 68}' \
    > test.out 2>&1
eval_tap $? 40 'CreateCodes' test.out

#- 41 Download
samples/cli/sample-apps Platform download \
    --campaignId '2eIApwLImnq7ASFK' \
    --namespace $AB_NAMESPACE \
    --batchName '2bNLBqaxaDqYZeDF' \
    --batchNo '[75, 38, 17]' \
    --withBatchName 'false' \
    > test.out 2>&1
eval_tap $? 41 'Download' test.out

#- 42 BulkDisableCodes
samples/cli/sample-apps Platform bulkDisableCodes \
    --campaignId 'J0aeyqFQXdJtLwDR' \
    --namespace $AB_NAMESPACE \
    --batchName 'XCba9lILJvETUTtV' \
    --batchNo '[83, 31, 38]' \
    > test.out 2>&1
eval_tap $? 42 'BulkDisableCodes' test.out

#- 43 BulkEnableCodes
samples/cli/sample-apps Platform bulkEnableCodes \
    --campaignId '9cjIGLXbahkQu6Pc' \
    --namespace $AB_NAMESPACE \
    --batchName 'cdzgmvTNlchnS2Zy' \
    --batchNo '[60, 5, 95]' \
    > test.out 2>&1
eval_tap $? 43 'BulkEnableCodes' test.out

#- 44 QueryRedeemHistory
samples/cli/sample-apps Platform queryRedeemHistory \
    --campaignId 'qnpqFwnzhg9sEiRW' \
    --namespace $AB_NAMESPACE \
    --code 'mRalzQFZGfml2Bf1' \
    --limit '9' \
    --offset '35' \
    --userId '6hTN7iu83QpOAtvC' \
    > test.out 2>&1
eval_tap $? 44 'QueryRedeemHistory' test.out

#- 45 GetCode
samples/cli/sample-apps Platform getCode \
    --code 'vojPmlaLdW8hjzi9' \
    --namespace $AB_NAMESPACE \
    --redeemable 'true' \
    --withBatchName 'true' \
    > test.out 2>&1
eval_tap $? 45 'GetCode' test.out

#- 46 DisableCode
samples/cli/sample-apps Platform disableCode \
    --code 'NtVtZdBIhirmkBCd' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 46 'DisableCode' test.out

#- 47 EnableCode
samples/cli/sample-apps Platform enableCode \
    --code 'S3xk4Jde2IOEay1i' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 47 'EnableCode' test.out

#- 48 GetServicePluginConfig
eval_tap 0 48 'GetServicePluginConfig # SKIP deprecated' test.out

#- 49 UpdateServicePluginConfig
eval_tap 0 49 'UpdateServicePluginConfig # SKIP deprecated' test.out

#- 50 DeleteServicePluginConfig
eval_tap 0 50 'DeleteServicePluginConfig # SKIP deprecated' test.out

#- 51 ListCurrencies
samples/cli/sample-apps Platform listCurrencies \
    --namespace $AB_NAMESPACE \
    --currencyType 'VIRTUAL' \
    > test.out 2>&1
eval_tap $? 51 'ListCurrencies' test.out

#- 52 CreateCurrency
samples/cli/sample-apps Platform createCurrency \
    --namespace $AB_NAMESPACE \
    --body '{"currencyCode": "3PwKeNbSYhokXDq8", "currencySymbol": "EBc65pS37WIVSSTI", "currencyType": "REAL", "decimals": 8, "localizationDescriptions": {"jB4iUdXSm7D1natA": "oa2gxTMbfxcx7TsZ", "bES7uDamurMM1fUg": "PKIn8k1oXnMd6LB3", "XozPeGEtVKoow0mh": "pxWwL6ekN6oXxnB4"}}' \
    > test.out 2>&1
eval_tap $? 52 'CreateCurrency' test.out

#- 53 UpdateCurrency
samples/cli/sample-apps Platform updateCurrency \
    --currencyCode 'FLUHBjwH36rjh52i' \
    --namespace $AB_NAMESPACE \
    --body '{"localizationDescriptions": {"8HxSjCX0GXfjXkgr": "Tuw3WJADWP9pIKy7", "ReZ3zIeGWD0Sy6YZ": "ieUBLCN3kSJKy8ib", "A8koY8hmLRsiEgqF": "TI9iNeoF4ZrlIQTQ"}}' \
    > test.out 2>&1
eval_tap $? 53 'UpdateCurrency' test.out

#- 54 DeleteCurrency
samples/cli/sample-apps Platform deleteCurrency \
    --currencyCode '019Sz7TMf0lnzeQH' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 54 'DeleteCurrency' test.out

#- 55 GetCurrencyConfig
samples/cli/sample-apps Platform getCurrencyConfig \
    --currencyCode 'tcb2AaKlLHjFkYGl' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 55 'GetCurrencyConfig' test.out

#- 56 GetCurrencySummary
samples/cli/sample-apps Platform getCurrencySummary \
    --currencyCode 'SAnGOr4LPGwMr8Yn' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 56 'GetCurrencySummary' test.out

#- 57 GetDLCItemConfigHistory
samples/cli/sample-apps Platform getDLCItemConfigHistory \
    --namespace $AB_NAMESPACE \
    --dlcId 'weBUwRurzmG2He3H' \
    > test.out 2>&1
eval_tap $? 57 'GetDLCItemConfigHistory' test.out

#- 58 RestoreDLCItemConfigHistory
samples/cli/sample-apps Platform restoreDLCItemConfigHistory \
    --id '6tVwnRLhuv8AeAB0' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 58 'RestoreDLCItemConfigHistory' test.out

#- 59 GetDLCItemConfig
samples/cli/sample-apps Platform getDLCItemConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 59 'GetDLCItemConfig' test.out

#- 60 UpdateDLCItemConfig
samples/cli/sample-apps Platform updateDLCItemConfig \
    --namespace $AB_NAMESPACE \
    --body '{"data": [{"autoUpdate": false, "enableRevocation": true, "id": "waJkYufClC1GrOq2", "rewards": [{"currency": {"currencyCode": "InyJn6ctoImktJj9", "namespace": "c9HBXPgoa4RaiIgS"}, "item": {"itemId": "itARwFPckvUHUWR7", "itemName": "7hne6Q0pH7LJ9jQl", "itemSku": "3scBo5gWUTuQiL1D", "itemType": "rEd5Uc4nHVRMDehb"}, "quantity": 83, "type": "CURRENCY"}, {"currency": {"currencyCode": "I1OkvS4O0aXbtZ7E", "namespace": "uKQQho3qxeSWW0D1"}, "item": {"itemId": "5tnOdXe3TIpC21w8", "itemName": "RF7ZSjSyD974sRXN", "itemSku": "iPqns0D0X2Qm8puK", "itemType": "qcoib5bTVxyKy3kB"}, "quantity": 16, "type": "ITEM"}, {"currency": {"currencyCode": "qILhkd4L0LHVYAiH", "namespace": "dNrnhKfsBW8AL6uh"}, "item": {"itemId": "1IDouNhqlqMEJdTG", "itemName": "ltN3UEIOueV8wehK", "itemSku": "5HBqg1HlREkT0S3Q", "itemType": "4lsCeum2bkpWVcSI"}, "quantity": 17, "type": "ITEM"}], "rvn": 65}, {"autoUpdate": false, "enableRevocation": true, "id": "zxFQaFgtPYo4WnH1", "rewards": [{"currency": {"currencyCode": "05WJxkL6pJ8ZE3wt", "namespace": "fC70Cnc3q7OeAHN0"}, "item": {"itemId": "qHrJVVKrCTX1FjfE", "itemName": "tq7RZ4lTRe9ciXQc", "itemSku": "Lull87fGe0Kc3VTD", "itemType": "HCDfiYMTwqkKqA9T"}, "quantity": 42, "type": "CURRENCY"}, {"currency": {"currencyCode": "vkjyzLJcxm4GI3eP", "namespace": "oaaKhc0VOCKvMbEn"}, "item": {"itemId": "cNfwWOGsrwLJKDXL", "itemName": "5IKqd28dbFUtnYPv", "itemSku": "UknNMg3PUcVnANT6", "itemType": "qeckjuuYYcqtNp3Y"}, "quantity": 32, "type": "CURRENCY"}, {"currency": {"currencyCode": "KDXpU06TR1hSsRUx", "namespace": "mjeXmnoM5lRGAYRE"}, "item": {"itemId": "IsyPsyFCJzRPSS5h", "itemName": "1y2mjaV90J0u1qzT", "itemSku": "4LXoVZSL3YxUoiUK", "itemType": "QA3oXDauCTL85WDt"}, "quantity": 94, "type": "CURRENCY"}], "rvn": 96}, {"autoUpdate": false, "enableRevocation": true, "id": "Dv3pCqqSBuUZMnzb", "rewards": [{"currency": {"currencyCode": "HKNBssdz0sJiOZSM", "namespace": "ZqH2PE9xzWPC04oa"}, "item": {"itemId": "5si7j8SKXiI6Muck", "itemName": "scUWIZqPh6a4goWv", "itemSku": "arZNjNaPONTZFsVM", "itemType": "qPDyBrldNJucjXAr"}, "quantity": 31, "type": "ITEM"}, {"currency": {"currencyCode": "e5phc3dnU0dbsE2I", "namespace": "97CPVMuE57oWzwNg"}, "item": {"itemId": "gdWPnRJEUrjjDjAO", "itemName": "dQ5MPLIrBODdluP2", "itemSku": "Ha25KuGKxeGUm5aH", "itemType": "jnLTD7caVIS5h7or"}, "quantity": 7, "type": "CURRENCY"}, {"currency": {"currencyCode": "qcUe23UIJ0YmBed5", "namespace": "ynyeGuAy6WEqqNMF"}, "item": {"itemId": "47XUNUQwEsP0mLNN", "itemName": "GnrFDYk5WWag21s5", "itemSku": "E55lvuX6fem5Tbs0", "itemType": "BP8jWgM5CtWVzPMC"}, "quantity": 64, "type": "CURRENCY"}], "rvn": 76}]}' \
    > test.out 2>&1
eval_tap $? 60 'UpdateDLCItemConfig' test.out

#- 61 DeleteDLCItemConfig
samples/cli/sample-apps Platform deleteDLCItemConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 61 'DeleteDLCItemConfig' test.out

#- 62 GetPlatformDLCConfig
samples/cli/sample-apps Platform getPlatformDLCConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 62 'GetPlatformDLCConfig' test.out

#- 63 UpdatePlatformDLCConfig
samples/cli/sample-apps Platform updatePlatformDLCConfig \
    --namespace $AB_NAMESPACE \
    --body '{"data": [{"platform": "EPICGAMES", "platformDlcIdMap": {"n7YL0BgkRIfwkRXs": "NQGfVp3KMw7s9ozB", "zlItfEpUfmo2yp2P": "Yo8UN07oStUIDfgc", "Bz7PvqLjlFsgduQP": "r8AHg2WocQrhjmab"}}, {"platform": "XBOX", "platformDlcIdMap": {"8kEtssdQTq3DPz73": "EFxXKmz9SJywcywX", "KvVOMrZmOwBJ62Gv": "bLyYwWIeq8QJkY6q", "3BE5wqBcUYkGZWqg": "UDfI8sgVmDZNWbXs"}}, {"platform": "XBOX", "platformDlcIdMap": {"QbsdqwPIw93UPIWe": "TUNyJjOUHNcvka12", "Q3itprUQHxPa8FKe": "YCUToVIVvPzmwqOQ", "K5iBXhdwjdFDVdCr": "EqMrJcsUxzjoSLDp"}}]}' \
    > test.out 2>&1
eval_tap $? 63 'UpdatePlatformDLCConfig' test.out

#- 64 DeletePlatformDLCConfig
samples/cli/sample-apps Platform deletePlatformDLCConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 64 'DeletePlatformDLCConfig' test.out

#- 65 QueryEntitlements
samples/cli/sample-apps Platform queryEntitlements \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --appType 'GAME' \
    --entitlementClazz 'MEDIA' \
    --entitlementName 'eQwtgTxpVjojewwW' \
    --itemId '["K66GvhjfER5AxM76", "GIHE93igW9CzswdF", "7Mr4kcfeJUL3sWjH"]' \
    --limit '20' \
    --offset '61' \
    --origin 'Playstation' \
    --userId 'JIrDF1uXZJPqrTgP' \
    > test.out 2>&1
eval_tap $? 65 'QueryEntitlements' test.out

#- 66 QueryEntitlementsByItemIds
samples/cli/sample-apps Platform queryEntitlementsByItemIds \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --itemIds '["iDAokqYwelbJj8zb", "HRSac78LNICgEL3S", "1VqsrUMDRE07QabY"]' \
    --limit '79' \
    --offset '55' \
    > test.out 2>&1
eval_tap $? 66 'QueryEntitlementsByItemIds' test.out

#- 67 EnableEntitlementOriginFeature
samples/cli/sample-apps Platform enableEntitlementOriginFeature \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 67 'EnableEntitlementOriginFeature' test.out

#- 68 GetEntitlementConfigInfo
samples/cli/sample-apps Platform getEntitlementConfigInfo \
    --namespace $AB_NAMESPACE \
    --withoutCache 'false' \
    > test.out 2>&1
eval_tap $? 68 'GetEntitlementConfigInfo' test.out

#- 69 GrantEntitlements
samples/cli/sample-apps Platform grantEntitlements \
    --namespace $AB_NAMESPACE \
    --body '{"entitlementGrantList": [{"collectionId": "Xj5QKQVjikU7ZS5P", "endDate": "1980-09-23T00:00:00Z", "grantedCode": "vZAseSFHI2suc8Uk", "itemId": "nexjlyjdiLhZ9IOl", "itemNamespace": "c38WusfjMCdWF3SG", "language": "to_DaRS-112", "metadata": {"0taB4XEot2h1cNGF": {}, "XYa6KeHJkWILXBz1": {}, "PnkVQLPesjAKwesE": {}}, "origin": "System", "quantity": 50, "region": "rAqrrN3bZrpbLPmf", "source": "PROMOTION", "startDate": "1987-02-10T00:00:00Z", "storeId": "JOUkZCUTIqpoGv9A"}, {"collectionId": "BP72imt23KScZ0Kk", "endDate": "1981-05-04T00:00:00Z", "grantedCode": "x2Z6oelepmFD8Ox2", "itemId": "lCwEbSjD8M7QHAzz", "itemNamespace": "tYnseEQ7mruuIfCB", "language": "oXDK_XLZl-Df", "metadata": {"acHqavMnLdhPckjP": {}, "srWHepHImmzls02C": {}, "BNkefNpf05i7ZwfF": {}}, "origin": "Nintendo", "quantity": 0, "region": "aOJklUiBuNR05MOD", "source": "REDEEM_CODE", "startDate": "1998-06-13T00:00:00Z", "storeId": "hClfYHHV32cY8dFo"}, {"collectionId": "u7ImatqqFT2sUkmw", "endDate": "1979-11-27T00:00:00Z", "grantedCode": "bgYwKAylHbjSAT4G", "itemId": "CZISAQCP7hdL0Loa", "itemNamespace": "fU20ELuSSTdbQow7", "language": "ybIA_SzAm", "metadata": {"N8Nhc7cSBmdjVFUR": {}, "lnf7pzO0h2s3Si00": {}, "tRysiOu07tBmqtha": {}}, "origin": "IOS", "quantity": 54, "region": "4MFYo57nkJhAAJn8", "source": "REDEEM_CODE", "startDate": "1987-02-11T00:00:00Z", "storeId": "5WXvlSGwp1ZSxtS4"}], "userIds": ["8qdt5t6pQt4gx6V0", "cPMMiMGgbjYhQgwf", "jwlLDR6iJp4xhqBM"]}' \
    > test.out 2>&1
eval_tap $? 69 'GrantEntitlements' test.out

#- 70 RevokeEntitlements
samples/cli/sample-apps Platform revokeEntitlements \
    --namespace $AB_NAMESPACE \
    --body '["H1kpB608ecGEnC1l", "3NH5ggL447S8ZtU8", "R6PoUD5lctm5NXvx"]' \
    > test.out 2>&1
eval_tap $? 70 'RevokeEntitlements' test.out

#- 71 GetEntitlement
samples/cli/sample-apps Platform getEntitlement \
    --entitlementId '5Wei6SAELQkle3FZ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 71 'GetEntitlement' test.out

#- 72 QueryFulfillmentHistories
samples/cli/sample-apps Platform queryFulfillmentHistories \
    --namespace $AB_NAMESPACE \
    --limit '8' \
    --offset '100' \
    --status 'SUCCESS' \
    --userId '13fkO52L1ZNI3eMv' \
    > test.out 2>&1
eval_tap $? 72 'QueryFulfillmentHistories' test.out

#- 73 QueryIAPClawbackHistory
samples/cli/sample-apps Platform queryIAPClawbackHistory \
    --namespace $AB_NAMESPACE \
    --endTime 'Bu5Sv36NeKThNvDU' \
    --eventType 'CHARGEBACK_REVERSED' \
    --externalOrderId 'CjhScYXCSotmVsLw' \
    --limit '97' \
    --offset '13' \
    --startTime '7AyFxdtyj8YjKTpy' \
    --status 'FAIL' \
    --userId 'SMyH9K19ajdS97OZ' \
    > test.out 2>&1
eval_tap $? 73 'QueryIAPClawbackHistory' test.out

#- 74 MockPlayStationStreamEvent
samples/cli/sample-apps Platform mockPlayStationStreamEvent \
    --namespace $AB_NAMESPACE \
    --body '{"body": {"account": "DlFea8n6qVJaQKVW", "additionalData": {"entitlement": [{"clientTransaction": [{"amountConsumed": 40, "clientTransactionId": "wz3BOycqJvdQ4mah"}, {"amountConsumed": 37, "clientTransactionId": "OCsYOzcgBd3v81qB"}, {"amountConsumed": 85, "clientTransactionId": "x3CXdKt13NN65wLE"}], "entitlementId": "HnFEi1SELK33qa1A", "usageCount": 69}, {"clientTransaction": [{"amountConsumed": 59, "clientTransactionId": "mvHjhPj4CMIyhjUu"}, {"amountConsumed": 62, "clientTransactionId": "mdPKcFbbBdpy5Zyq"}, {"amountConsumed": 26, "clientTransactionId": "Pl31dKJNUXV1eeAt"}], "entitlementId": "LUzO6iSbLYYgXg4R", "usageCount": 14}, {"clientTransaction": [{"amountConsumed": 38, "clientTransactionId": "oBVMwwLpgJOWib8B"}, {"amountConsumed": 90, "clientTransactionId": "5Fc9fw0b7gXEDc3F"}, {"amountConsumed": 26, "clientTransactionId": "q5Nej6eInT4i0KV5"}], "entitlementId": "LaWeQarm23SBUp2v", "usageCount": 79}], "purpose": "jMK6FCdUKkGLGYT6"}, "originalTitleName": "IpkfNywcnUVRWHS3", "paymentProductSKU": "37VyDl70M1wabEr5", "purchaseDate": "WmCRdLq2jyy8rNns", "sourceOrderItemId": "w7VIDEpNWponPbLI", "titleName": "dknmML4gNBdIp5sr"}, "eventDomain": "H1THdLpPqJa9k8aM", "eventSource": "Ca7s5QmtfjcOd8rv", "eventType": "LArM1T0Z5h3cCIMc", "eventVersion": 61, "id": "LJrnHxuqTFNJCkR2", "timestamp": "9iYje7KmB9fkSK2n"}' \
    > test.out 2>&1
eval_tap $? 74 'MockPlayStationStreamEvent' test.out

#- 75 MockXblClawbackEvent
samples/cli/sample-apps Platform mockXblClawbackEvent \
    --namespace $AB_NAMESPACE \
    --body '{"data": {"eventDate": "zgWcHRXb0U9jZlaM", "eventState": "bJsiD4euzZooMEFN", "lineItemId": "2LajaOyO8DeIP7vU", "orderId": "B5cAP62QVQxlgecJ", "productId": "ECpy7MM3RYzd91Pp", "productType": "Pc2G15l5XGBXf45G", "purchasedDate": "pSDgH7WarO8NX8Tg", "sandboxId": "PWY6ZNaAw49UEZ2y", "skuId": "9Un322kK1j1xuC1u", "subscriptionData": {"consumedDurationInDays": 69, "dateTime": "qyEQ1x9erCQJY5k6", "durationInDays": 42, "recurrenceId": "kcMYRx9pLM9uwKOi"}}, "datacontenttype": "K6TlyzckacQVM0X7", "id": "lDuK7nC1ZLPVehOV", "source": "7FmHPOEGR2S7aMZK", "specVersion": "sxFGexbDpNs5m0Kx", "subject": "EqbM3NMUR0n8uUL7", "time": "Fz4ycvtpswFR8c88", "traceparent": "pkNmzCSjtn7cup6X", "type": "UPto32Gw6txvsndA"}' \
    > test.out 2>&1
eval_tap $? 75 'MockXblClawbackEvent' test.out

#- 76 GetAppleIAPConfig
samples/cli/sample-apps Platform getAppleIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 76 'GetAppleIAPConfig' test.out

#- 77 UpdateAppleIAPConfig
samples/cli/sample-apps Platform updateAppleIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"appAppleId": 21, "bundleId": "wpOlrEtT0PEmeEHQ", "issuerId": "mwLpC1Scf85lIS1L", "keyId": "4C0eWHJ63H5IvVA5", "password": "SNBnkm39gwmi37In", "version": "V1"}' \
    > test.out 2>&1
eval_tap $? 77 'UpdateAppleIAPConfig' test.out

#- 78 DeleteAppleIAPConfig
samples/cli/sample-apps Platform deleteAppleIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 78 'DeleteAppleIAPConfig' test.out

#- 79 UpdateAppleP8File
samples/cli/sample-apps Platform updateAppleP8File \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 79 'UpdateAppleP8File' test.out

#- 80 GetEpicGamesIAPConfig
samples/cli/sample-apps Platform getEpicGamesIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 80 'GetEpicGamesIAPConfig' test.out

#- 81 UpdateEpicGamesIAPConfig
samples/cli/sample-apps Platform updateEpicGamesIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"sandboxId": "RXqPnMIBQKN1BF8J"}' \
    > test.out 2>&1
eval_tap $? 81 'UpdateEpicGamesIAPConfig' test.out

#- 82 DeleteEpicGamesIAPConfig
samples/cli/sample-apps Platform deleteEpicGamesIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 82 'DeleteEpicGamesIAPConfig' test.out

#- 83 GetGoogleIAPConfig
samples/cli/sample-apps Platform getGoogleIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 83 'GetGoogleIAPConfig' test.out

#- 84 UpdateGoogleIAPConfig
samples/cli/sample-apps Platform updateGoogleIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"applicationName": "eBE8w0X3pwEq0Jj3", "notificationTokenAudience": "UVzD153vyarkFZ6Q", "notificationTokenEmail": "pcvZGOrfJsXerKa5", "packageName": "5GRCTN8MAENa3hRM", "serviceAccountId": "QLCjUuSIj6RMO37z"}' \
    > test.out 2>&1
eval_tap $? 84 'UpdateGoogleIAPConfig' test.out

#- 85 DeleteGoogleIAPConfig
samples/cli/sample-apps Platform deleteGoogleIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 85 'DeleteGoogleIAPConfig' test.out

#- 86 UpdateGoogleP12File
samples/cli/sample-apps Platform updateGoogleP12File \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 86 'UpdateGoogleP12File' test.out

#- 87 GetIAPItemConfig
samples/cli/sample-apps Platform getIAPItemConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 87 'GetIAPItemConfig' test.out

#- 88 UpdateIAPItemConfig
samples/cli/sample-apps Platform updateIAPItemConfig \
    --namespace $AB_NAMESPACE \
    --body '{"data": [{"itemIdentity": "Z51n0guj3yhrlLvc", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"fX5t8SQcTxRqSQBL": "ssoMaafhJvhMu5uX", "UCvG27B8T1aF68x3": "OEn7DKdO1iIXSdvb", "Ti6Ug6pGyqtNWIJx": "Xvlz0mkmolO7Vqfu"}}, {"itemIdentity": "Aub7HpaChIcifZVz", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"4mbR6d7LO221hwac": "s8yYacDZ4HcB3DeU", "l0tHZPWgiyDL70AP": "2TJOrxuEWHgkWkLv", "d69WLyekSu1eQA78": "UfIr3w82EO9SwsD5"}}, {"itemIdentity": "ajX73reqJ1PKhual", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"LxVAF7jWBj6f3zML": "vF574BLUkkRMpbfs", "nEczDY7pQG9lPTJY": "4YGP4v6lFDSOXnKC", "mWGyRXcfPxmw7sTL": "HIP2MFLylYGIbq9D"}}]}' \
    > test.out 2>&1
eval_tap $? 88 'UpdateIAPItemConfig' test.out

#- 89 DeleteIAPItemConfig
samples/cli/sample-apps Platform deleteIAPItemConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 89 'DeleteIAPItemConfig' test.out

#- 90 GetOculusIAPConfig
samples/cli/sample-apps Platform getOculusIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 90 'GetOculusIAPConfig' test.out

#- 91 UpdateOculusIAPConfig
samples/cli/sample-apps Platform updateOculusIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"appId": "P1fN5s6qA3PYxqOb", "appSecret": "1fecnHTxjjC2GGJ2", "webhookVerifyToken": "OZA94cVgbg30uZU6"}' \
    > test.out 2>&1
eval_tap $? 91 'UpdateOculusIAPConfig' test.out

#- 92 DeleteOculusIAPConfig
samples/cli/sample-apps Platform deleteOculusIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 92 'DeleteOculusIAPConfig' test.out

#- 93 ListOculusSubscriptionGroups
samples/cli/sample-apps Platform listOculusSubscriptionGroups \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 93 'ListOculusSubscriptionGroups' test.out

#- 94 CreateOculusSubscriptionGroup
samples/cli/sample-apps Platform createOculusSubscriptionGroup \
    --namespace $AB_NAMESPACE \
    --body '{"sku": "eJ5YqpHj9Hln8cQr"}' \
    > test.out 2>&1
eval_tap $? 94 'CreateOculusSubscriptionGroup' test.out

#- 95 DeleteOculusSubscriptionGroup
samples/cli/sample-apps Platform deleteOculusSubscriptionGroup \
    --namespace $AB_NAMESPACE \
    --sku 'Aa3LptV0hd50GtLr' \
    > test.out 2>&1
eval_tap $? 95 'DeleteOculusSubscriptionGroup' test.out

#- 96 ListOculusSubscriptionGroupTier
samples/cli/sample-apps Platform listOculusSubscriptionGroupTier \
    --namespace $AB_NAMESPACE \
    --sku 'R1l60BfLTZADWN8e' \
    > test.out 2>&1
eval_tap $? 96 'ListOculusSubscriptionGroupTier' test.out

#- 97 AddTierIntoMetaQuestSubscriptionGroup
samples/cli/sample-apps Platform addTierIntoMetaQuestSubscriptionGroup \
    --namespace $AB_NAMESPACE \
    --body '{"groupSku": "ZMwpbcvtnpJ9DuTU", "sku": "1aY73Hc3r6mT0C5z"}' \
    > test.out 2>&1
eval_tap $? 97 'AddTierIntoMetaQuestSubscriptionGroup' test.out

#- 98 DeleteOculusSubscriptionTier
samples/cli/sample-apps Platform deleteOculusSubscriptionTier \
    --namespace $AB_NAMESPACE \
    --sku 'cNXisyKGhNwua2wi' \
    > test.out 2>&1
eval_tap $? 98 'DeleteOculusSubscriptionTier' test.out

#- 99 GetPlayStationIAPConfig
samples/cli/sample-apps Platform getPlayStationIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 99 'GetPlayStationIAPConfig' test.out

#- 100 UpdatePlaystationIAPConfig
samples/cli/sample-apps Platform updatePlaystationIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"backOfficeServerClientId": "HY9HpaoByk33Qdm6", "backOfficeServerClientSecret": "Wj8ITrdBWkh9Tw57", "enableStreamJob": false, "environment": "CVqpFBQEbr5f6llB", "streamName": "fJM56g8NAFLE3NFP", "streamPartnerName": "Xs3G7F4OL5gpuxCn"}' \
    > test.out 2>&1
eval_tap $? 100 'UpdatePlaystationIAPConfig' test.out

#- 101 DeletePlaystationIAPConfig
samples/cli/sample-apps Platform deletePlaystationIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 101 'DeletePlaystationIAPConfig' test.out

#- 102 ValidateExistedPlaystationIAPConfig
samples/cli/sample-apps Platform validateExistedPlaystationIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 102 'ValidateExistedPlaystationIAPConfig' test.out

#- 103 ValidatePlaystationIAPConfig
samples/cli/sample-apps Platform validatePlaystationIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"backOfficeServerClientId": "opppjWc7JMvZdQwI", "backOfficeServerClientSecret": "WZLpqQRoM5dC8lrM", "enableStreamJob": true, "environment": "vmFsRWaRsurpmFW9", "streamName": "XStbfCvWALAdKQiC", "streamPartnerName": "ol7P8pIGbU7irUEX"}' \
    > test.out 2>&1
eval_tap $? 103 'ValidatePlaystationIAPConfig' test.out

#- 104 GetSteamIAPConfig
samples/cli/sample-apps Platform getSteamIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 104 'GetSteamIAPConfig' test.out

#- 105 UpdateSteamIAPConfig
samples/cli/sample-apps Platform updateSteamIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"appId": "b6oVBHk1ZNNX6qsr", "env": "SANDBOX", "publisherAuthenticationKey": "7ChEn25YQr1OVozK", "syncMode": "INVENTORY"}' \
    > test.out 2>&1
eval_tap $? 105 'UpdateSteamIAPConfig' test.out

#- 106 DeleteSteamIAPConfig
samples/cli/sample-apps Platform deleteSteamIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 106 'DeleteSteamIAPConfig' test.out

#- 107 GetTwitchIAPConfig
samples/cli/sample-apps Platform getTwitchIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 107 'GetTwitchIAPConfig' test.out

#- 108 UpdateTwitchIAPConfig
samples/cli/sample-apps Platform updateTwitchIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"clientId": "biH67uxqKfYPFFFj", "clientSecret": "5GVNfSF8A9k9bOrj", "organizationId": "GzNCFKiYD7nuJC7S"}' \
    > test.out 2>&1
eval_tap $? 108 'UpdateTwitchIAPConfig' test.out

#- 109 DeleteTwitchIAPConfig
samples/cli/sample-apps Platform deleteTwitchIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 109 'DeleteTwitchIAPConfig' test.out

#- 110 GetXblIAPConfig
samples/cli/sample-apps Platform getXblIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 110 'GetXblIAPConfig' test.out

#- 111 UpdateXblIAPConfig
samples/cli/sample-apps Platform updateXblIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"enableClawback": true, "entraAppClientId": "CNqcqawHseAq0fq7", "entraAppClientSecret": "kkpwh7mgpnw9EEiZ", "entraTenantId": "WoPnShAdNQZgJzHQ", "relyingPartyCert": "YRRYcWvPw9UZcKXr"}' \
    > test.out 2>&1
eval_tap $? 111 'UpdateXblIAPConfig' test.out

#- 112 DeleteXblAPConfig
samples/cli/sample-apps Platform deleteXblAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 112 'DeleteXblAPConfig' test.out

#- 113 UpdateXblBPCertFile
samples/cli/sample-apps Platform updateXblBPCertFile \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    --password 'fEj3rwO5Ij4eZuOH' \
    > test.out 2>&1
eval_tap $? 113 'UpdateXblBPCertFile' test.out

#- 114 QueryThirdPartyNotifications
samples/cli/sample-apps Platform queryThirdPartyNotifications \
    --namespace $AB_NAMESPACE \
    --endDate 'O3tqbaFLhBV8LE7j' \
    --externalId 'pFBgQFYMnG3Vvcnh' \
    --limit '96' \
    --offset '75' \
    --source 'STEAM' \
    --startDate 'DQEu5MxTXzCnvVRX' \
    --status 'PROCESSED' \
    --type '6iMZVOKhBmmzLwxg' \
    > test.out 2>&1
eval_tap $? 114 'QueryThirdPartyNotifications' test.out

#- 115 QueryAbnormalTransactions
samples/cli/sample-apps Platform queryAbnormalTransactions \
    --namespace $AB_NAMESPACE \
    --limit '76' \
    --offset '98' \
    --orderId 'q0sYJoa0kP9Iubwh' \
    --steamId 'qvO6t5cSLQ17DUkZ' \
    > test.out 2>&1
eval_tap $? 115 'QueryAbnormalTransactions' test.out

#- 116 AdminGetSteamJobInfo
samples/cli/sample-apps Platform adminGetSteamJobInfo \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 116 'AdminGetSteamJobInfo' test.out

#- 117 AdminResetSteamJobTime
samples/cli/sample-apps Platform adminResetSteamJobTime \
    --namespace $AB_NAMESPACE \
    --body '{"env": "SANDBOX", "lastTime": "1993-10-04T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 117 'AdminResetSteamJobTime' test.out

#- 118 AdminRefundIAPOrder
samples/cli/sample-apps Platform adminRefundIAPOrder \
    --iapOrderNo 'TAI45HqudqSPNOVX' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 118 'AdminRefundIAPOrder' test.out

#- 119 QuerySteamReportHistories
samples/cli/sample-apps Platform querySteamReportHistories \
    --namespace $AB_NAMESPACE \
    --limit '50' \
    --offset '59' \
    --orderId 'JecnE1dUVqlyFsOq' \
    --processStatus 'IGNORED' \
    --steamId '0NSpxNGSGgI4aavD' \
    > test.out 2>&1
eval_tap $? 119 'QuerySteamReportHistories' test.out

#- 120 QueryThirdPartySubscription
samples/cli/sample-apps Platform queryThirdPartySubscription \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --groupId 'xHArLh4zYnJIszP9' \
    --limit '4' \
    --offset '6' \
    --platform 'OCULUS' \
    --productId 'X1VZR4MNXktGSaAk' \
    --userId 'dfAfPaVqiZgDvoPG' \
    > test.out 2>&1
eval_tap $? 120 'QueryThirdPartySubscription' test.out

#- 121 GetIAPOrderConsumeDetails
samples/cli/sample-apps Platform getIAPOrderConsumeDetails \
    --iapOrderNo 'PjblKUHKt46V9sTw' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 121 'GetIAPOrderConsumeDetails' test.out

#- 122 DownloadInvoiceDetails
samples/cli/sample-apps Platform downloadInvoiceDetails \
    --namespace $AB_NAMESPACE \
    --endTime 'YG4aNyOEYF2civFZ' \
    --feature 'rt5n7avCnBMMuZxN' \
    --itemId 'V8AJvSGL8nmutPom' \
    --itemType 'OPTIONBOX' \
    --startTime 'zZzLON38OKKE42qa' \
    > test.out 2>&1
eval_tap $? 122 'DownloadInvoiceDetails' test.out

#- 123 GenerateInvoiceSummary
samples/cli/sample-apps Platform generateInvoiceSummary \
    --namespace $AB_NAMESPACE \
    --endTime 'kUsuceXeCc9SWy4O' \
    --feature 'ctpRGpuH6zs1InrR' \
    --itemId 'F2nXQadAcF4UcFuZ' \
    --itemType 'SEASON' \
    --startTime 'KEsyYSS6B9msHSDu' \
    > test.out 2>&1
eval_tap $? 123 'GenerateInvoiceSummary' test.out

#- 124 SyncInGameItem
samples/cli/sample-apps Platform syncInGameItem \
    --namespace $AB_NAMESPACE \
    --storeId '4EQqqqB74ug0U3F6' \
    --body '{"categoryPath": "lkDMYTmOq7tprei6", "targetItemId": "oX8JjVTLrXF2QUBW", "targetNamespace": "FuGhFWKgtuhmNk0u"}' \
    > test.out 2>&1
eval_tap $? 124 'SyncInGameItem' test.out

#- 125 CreateItem
samples/cli/sample-apps Platform createItem \
    --namespace $AB_NAMESPACE \
    --storeId 'uDz8FL4ztiwEEr44' \
    --body '{"appId": "iN7nn7wOwXT43rCx", "appType": "SOFTWARE", "baseAppId": "Hvpn5rO91ioxzSB8", "boothName": "I3uudnGl7r9D4Sn8", "categoryPath": "KJWlZ2tYul1wSfmF", "clazz": "99nYzSbeHAyZxhYj", "displayOrder": 68, "entitlementType": "CONSUMABLE", "ext": {"c1ntA6enQ50dfuQv": {}, "icPB1fIQQ1ZlXUlO": {}, "vhL4g3pN1tLmZEpP": {}}, "features": ["CnIzM0DhdGe7dhnM", "FTnJwFayfHxNasSM", "zWjibOyiw52FtQSQ"], "flexible": true, "images": [{"as": "3jopIbWBCeUuJOwI", "caption": "evac9ERBCyA19zKp", "height": 100, "imageUrl": "WpfWUydwxaej9sEV", "smallImageUrl": "qIOvq5nwP8s9XzSq", "width": 81}, {"as": "BbaGUHPcWwu5v64D", "caption": "7sQJTXTGxhTOd1gx", "height": 5, "imageUrl": "0E1LXNeEwSxRue5i", "smallImageUrl": "0SLRrWOrB5rt3hlW", "width": 32}, {"as": "ZEOVlFEkbDy9tiuO", "caption": "4NKXFLqgcGEvAfCO", "height": 48, "imageUrl": "1evjzGPbre0RV3pA", "smallImageUrl": "ToYe9kf3cofV0XlJ", "width": 13}], "inventoryConfig": {"customAttributes": {"Khdi0WUfHOzoNf35": {}, "PBfaKyXHgVeUC3DH": {}, "CIr6iEANGmjjzI07": {}}, "serverCustomAttributes": {"FDqzgGJpx588mvIX": {}, "IeYxN9ZOtzgBWhdO": {}, "bhvZMF2pvsgDfSbd": {}}, "slotUsed": 74}, "itemId": "qrnJNQTxvKuIE50E", "itemIds": ["xqThwkEUVPGBdpTK", "Wzkv0sIKHUCZ7mVs", "IEmEQbNQLIwGR5Z3"], "itemQty": {"tDiIHEkp8z9WqMbA": 13, "jM8PIOO7JsTylxrE": 71, "KYg1BuMUySJcoXyP": 6}, "itemType": "APP", "listable": true, "localizations": {"p7v7AMnWNuXlySsg": {"description": "L7Y73jZiGKMeFyYy", "localExt": {"vlFG8R9xQG0owGDc": {}, "yc0DTC46cYnFG7Gz": {}, "fq1FNAmo7eeGWuZg": {}}, "longDescription": "gOk94m8euEBeEhf4", "title": "J4WT97WrZSjJQmdV"}, "sCluW78CRNZw8m3G": {"description": "UWMGqWFptd76pUnz", "localExt": {"7wJyykCtLNCnpxF1": {}, "o8tpW05KJxlFU2An": {}, "KZCGGioj4f383e4z": {}}, "longDescription": "Qgangc1vhuvMdYQ8", "title": "XzRa0A5CoQazDGiS"}, "43C6LmU3SdNyPCA5": {"description": "Tkxboi1fHU9tsrUx", "localExt": {"8dBlNPT5x5BxAidC": {}, "P2c4TmPOfW8rpnln": {}, "3d8tPhhh9Dn1YsGy": {}}, "longDescription": "DwG2Zr7HR0tZepaz", "title": "isaHC0lBsc0YaWya"}}, "lootBoxConfig": {"rewardCount": 83, "rewards": [{"lootBoxItems": [{"count": 41, "duration": 75, "endDate": "1983-05-17T00:00:00Z", "itemId": "njBgt6KCMeedktvx", "itemSku": "62tkdQlrtixj8gFN", "itemType": "UTyI7LHNAPRc3SMy"}, {"count": 89, "duration": 86, "endDate": "1994-11-03T00:00:00Z", "itemId": "5nYwp1i2puFi55N9", "itemSku": "fyZESenDXE35ZHvJ", "itemType": "69407OcW0yAh9G7W"}, {"count": 65, "duration": 95, "endDate": "1992-08-22T00:00:00Z", "itemId": "K8rqDjwunTxddt7k", "itemSku": "PTNw9L6MqzvcIs4i", "itemType": "gDf2kzGvswXGVjV1"}], "name": "9RP0jonKUpDImoJC", "odds": 0.14348914692152515, "type": "REWARD", "weight": 99}, {"lootBoxItems": [{"count": 50, "duration": 79, "endDate": "1976-01-14T00:00:00Z", "itemId": "haaga5ukHuYTUk6y", "itemSku": "RPE8HlQNngfLD9Lt", "itemType": "5zeIlxVrbJRc88Q6"}, {"count": 99, "duration": 1, "endDate": "1993-12-01T00:00:00Z", "itemId": "d9CN2z6g4LvHm2V0", "itemSku": "Br6fs5XEFDCGVWgI", "itemType": "tSwhsIHpdY2L9GJ2"}, {"count": 84, "duration": 55, "endDate": "1994-11-17T00:00:00Z", "itemId": "XZC6yVUd4IwPjSCz", "itemSku": "HRAZSH7QCVJCdpuI", "itemType": "q1D8rpR8DvRtg2lV"}], "name": "XevxWpkyoNAKqx88", "odds": 0.8263121509052483, "type": "PROBABILITY_GROUP", "weight": 50}, {"lootBoxItems": [{"count": 81, "duration": 46, "endDate": "1997-07-03T00:00:00Z", "itemId": "Vn3e1R8Xh1bCEHvF", "itemSku": "Tz9Ua7U8FsBuWkuf", "itemType": "RoWiN1XAxgu6m37D"}, {"count": 91, "duration": 51, "endDate": "1979-03-09T00:00:00Z", "itemId": "JADSkIu7AmZg9QxF", "itemSku": "EHbPncAvXn0cIJiO", "itemType": "jEDU8t0QusTNyz6c"}, {"count": 38, "duration": 46, "endDate": "1999-09-10T00:00:00Z", "itemId": "pdfpivxogryiV7kQ", "itemSku": "O1U7Lz2thrMmjI2a", "itemType": "A0Sdh7GjtbfaugHX"}], "name": "mRqdp866eFILx9PG", "odds": 0.821039835640816, "type": "REWARD_GROUP", "weight": 99}], "rollFunction": "CUSTOM"}, "maxCount": 35, "maxCountPerUser": 20, "name": "XfPSTyO3DAWENU3X", "optionBoxConfig": {"boxItems": [{"count": 85, "duration": 85, "endDate": "1996-03-11T00:00:00Z", "itemId": "cC7GAaB2SGFgbRxJ", "itemSku": "L8f86z9bsN7QqNUZ", "itemType": "eoGP4vWPKX1Z7LV1"}, {"count": 72, "duration": 45, "endDate": "1997-11-01T00:00:00Z", "itemId": "RkH1rqGXnRdsPT0B", "itemSku": "4uD7tJG0TbQejo0V", "itemType": "OPL5kmjZ4a7k5yPE"}, {"count": 67, "duration": 89, "endDate": "1988-12-31T00:00:00Z", "itemId": "XXyW1cnyw2kJRMoZ", "itemSku": "gTtVRsoOepPT57O6", "itemType": "zA99MAmEBo9kcyCk"}]}, "purchasable": false, "recurring": {"cycle": "QUARTERLY", "fixedFreeDays": 95, "fixedTrialCycles": 76, "graceDays": 41}, "regionData": {"MZW87Kq2JYKBCGSc": [{"currencyCode": "UlvcmH8Fq1tK8jrU", "currencyNamespace": "QSZHNevguEt7XHQM", "currencyType": "VIRTUAL", "discountAmount": 58, "discountExpireAt": "1995-07-31T00:00:00Z", "discountPercentage": 9, "discountPurchaseAt": "1998-09-26T00:00:00Z", "expireAt": "1994-08-27T00:00:00Z", "price": 42, "purchaseAt": "1996-01-16T00:00:00Z", "trialPrice": 22}, {"currencyCode": "heH77EFRshgftmX4", "currencyNamespace": "LBK1m65CmiE8DNBV", "currencyType": "VIRTUAL", "discountAmount": 66, "discountExpireAt": "1987-03-31T00:00:00Z", "discountPercentage": 98, "discountPurchaseAt": "1990-05-14T00:00:00Z", "expireAt": "1985-04-28T00:00:00Z", "price": 21, "purchaseAt": "1994-09-10T00:00:00Z", "trialPrice": 81}, {"currencyCode": "H6U7vzKNoWvWdCSE", "currencyNamespace": "yjupVPeYxlWlGJUk", "currencyType": "REAL", "discountAmount": 81, "discountExpireAt": "1999-03-26T00:00:00Z", "discountPercentage": 38, "discountPurchaseAt": "1989-02-12T00:00:00Z", "expireAt": "1994-03-22T00:00:00Z", "price": 87, "purchaseAt": "1982-05-23T00:00:00Z", "trialPrice": 76}], "Qj7yxSjDE0dHkSpv": [{"currencyCode": "u2zFFGPCs3CsrMnd", "currencyNamespace": "K0fOjkciXr0qWFAx", "currencyType": "VIRTUAL", "discountAmount": 65, "discountExpireAt": "1988-08-19T00:00:00Z", "discountPercentage": 59, "discountPurchaseAt": "1991-06-19T00:00:00Z", "expireAt": "1997-08-06T00:00:00Z", "price": 78, "purchaseAt": "1989-02-20T00:00:00Z", "trialPrice": 15}, {"currencyCode": "UQhKE6GgR8GbahAC", "currencyNamespace": "oXSsyAHXfirfej4V", "currencyType": "REAL", "discountAmount": 53, "discountExpireAt": "1993-01-10T00:00:00Z", "discountPercentage": 86, "discountPurchaseAt": "1990-02-01T00:00:00Z", "expireAt": "1979-11-19T00:00:00Z", "price": 69, "purchaseAt": "1992-02-12T00:00:00Z", "trialPrice": 74}, {"currencyCode": "PCOMm4ISdjJIdILX", "currencyNamespace": "vmQGoedvOBiNmFoz", "currencyType": "REAL", "discountAmount": 80, "discountExpireAt": "1979-10-07T00:00:00Z", "discountPercentage": 34, "discountPurchaseAt": "1989-11-29T00:00:00Z", "expireAt": "1999-04-12T00:00:00Z", "price": 61, "purchaseAt": "1988-04-13T00:00:00Z", "trialPrice": 25}], "Wo4Q767cLOVCqdB8": [{"currencyCode": "Gk4JUXZ47zq68WvF", "currencyNamespace": "6jTfmcGU957RB6Zy", "currencyType": "VIRTUAL", "discountAmount": 5, "discountExpireAt": "1991-07-30T00:00:00Z", "discountPercentage": 51, "discountPurchaseAt": "1976-12-02T00:00:00Z", "expireAt": "1990-03-19T00:00:00Z", "price": 74, "purchaseAt": "1988-11-10T00:00:00Z", "trialPrice": 60}, {"currencyCode": "w2RYwORJpWPtV57H", "currencyNamespace": "YnLEh0sZjGpgMXOR", "currencyType": "VIRTUAL", "discountAmount": 20, "discountExpireAt": "1971-09-03T00:00:00Z", "discountPercentage": 51, "discountPurchaseAt": "1976-04-05T00:00:00Z", "expireAt": "1972-02-14T00:00:00Z", "price": 57, "purchaseAt": "1999-05-14T00:00:00Z", "trialPrice": 83}, {"currencyCode": "PGebq1fFiTTEvDCf", "currencyNamespace": "RXhsxMUnLB1mejec", "currencyType": "VIRTUAL", "discountAmount": 33, "discountExpireAt": "1972-09-03T00:00:00Z", "discountPercentage": 19, "discountPurchaseAt": "1984-06-05T00:00:00Z", "expireAt": "1993-11-07T00:00:00Z", "price": 9, "purchaseAt": "1996-10-17T00:00:00Z", "trialPrice": 88}]}, "saleConfig": {"currencyCode": "6YJ6wDxO9GvVMolt", "price": 18}, "seasonType": "TIER", "sectionExclusive": true, "sellable": true, "sku": "JUYpI60NLKbfCzIN", "stackable": false, "status": "INACTIVE", "tags": ["oto1CrK6KKwXNoqx", "wU5Tl95bhCnmMKC4", "oiwoxrLZQW9RpIOB"], "targetCurrencyCode": "8Xt4yX3VBZLTF8pc", "targetNamespace": "m4WKF4ogOZq6BLv0", "thumbnailUrl": "yBYTVPhNlZWiKtdG", "useCount": 65}' \
    > test.out 2>&1
eval_tap $? 125 'CreateItem' test.out

#- 126 GetItemByAppId
samples/cli/sample-apps Platform getItemByAppId \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --storeId 'yO1GdToW1Pns33qj' \
    --appId '67iU5k8P3jacp46y' \
    > test.out 2>&1
eval_tap $? 126 'GetItemByAppId' test.out

#- 127 QueryItems
samples/cli/sample-apps Platform queryItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --appType 'DLC' \
    --availableDate 'Pue2jKgQkQJBfbc9' \
    --baseAppId 'BPyhgZaHKninoUkl' \
    --categoryPath 'fF6Q4syCHcdT05Q4' \
    --features 'r0btU50fYzC60pF2' \
    --includeSubCategoryItem 'false' \
    --itemType 'EXTENSION' \
    --limit '94' \
    --offset '32' \
    --region 'TWmOl4zgdGUVW0UU' \
    --sortBy '["updatedAt:desc", "createdAt:desc", "displayOrder:asc"]' \
    --storeId 'vep4Hhbgy8EbFAo7' \
    --tags 'Gu9Chp0e3kDKgQoD' \
    --targetNamespace 'HVlL46ZFFt1WUlAC' \
    > test.out 2>&1
eval_tap $? 127 'QueryItems' test.out

#- 128 ListBasicItemsByFeatures
samples/cli/sample-apps Platform listBasicItemsByFeatures \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --features '["OGtnnxIOpydIlVVx", "zpMyC59dU9lfdq7Q", "Vw5FVyrG6DbMBwBa"]' \
    > test.out 2>&1
eval_tap $? 128 'ListBasicItemsByFeatures' test.out

#- 129 GetItems
samples/cli/sample-apps Platform getItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --storeId 'JRQTeTW9HOY6Ylk2' \
    --itemIds 'GCOMdFl0oZoYwIs1' \
    > test.out 2>&1
eval_tap $? 129 'GetItems' test.out

#- 130 GetItemBySku
samples/cli/sample-apps Platform getItemBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'w34iMequy9VvWOKq' \
    --sku '5OnkJ9BNILbTgltL' \
    > test.out 2>&1
eval_tap $? 130 'GetItemBySku' test.out

#- 131 GetLocaleItemBySku
samples/cli/sample-apps Platform getLocaleItemBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --language 'o4mRGMz67eeCGfSB' \
    --populateBundle 'true' \
    --region 'aXQ3mMH0xCWkvhvP' \
    --storeId '5zHWGXT3goull4sQ' \
    --sku 'jbNMsN13BDOlXZ0l' \
    > test.out 2>&1
eval_tap $? 131 'GetLocaleItemBySku' test.out

#- 132 GetEstimatedPrice
samples/cli/sample-apps Platform getEstimatedPrice \
    --namespace $AB_NAMESPACE \
    --platform '2kRkDR07uMPtb78V' \
    --region '3t8BlRTaj1jYxkXx' \
    --storeId 'abHLtrCpMe9E1eKR' \
    --itemIds 'OsePZqfVOHIB5MMv' \
    --userId 'fKNnFWmYUTCvolx5' \
    > test.out 2>&1
eval_tap $? 132 'GetEstimatedPrice' test.out

#- 133 GetItemIdBySku
samples/cli/sample-apps Platform getItemIdBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId '6IMUQyNvLRn2L7mF' \
    --sku 'A5RGF90RyzLNwEo3' \
    > test.out 2>&1
eval_tap $? 133 'GetItemIdBySku' test.out

#- 134 GetBulkItemIdBySkus
samples/cli/sample-apps Platform getBulkItemIdBySkus \
    --namespace $AB_NAMESPACE \
    --sku '["ibH4JQR9br65Kiqh", "twVVMwpN6BupP1qz", "uk3YImWCIHIJyg8y"]' \
    --storeId 'OkDsGi1bDeuQIUnC' \
    > test.out 2>&1
eval_tap $? 134 'GetBulkItemIdBySkus' test.out

#- 135 BulkGetLocaleItems
samples/cli/sample-apps Platform bulkGetLocaleItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --language 'LsRBfDQBviD72y79' \
    --region 'V7zMakfLaT68XnGL' \
    --storeId 'xpP8rpZdCIbyrnyN' \
    --itemIds '8GqQ07blBbRHMLKI' \
    > test.out 2>&1
eval_tap $? 135 'BulkGetLocaleItems' test.out

#- 136 GetAvailablePredicateTypes
samples/cli/sample-apps Platform getAvailablePredicateTypes \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 136 'GetAvailablePredicateTypes' test.out

#- 137 ValidateItemPurchaseCondition
samples/cli/sample-apps Platform validateItemPurchaseCondition \
    --namespace $AB_NAMESPACE \
    --platform 'bVS6BiSRl1FIiurz' \
    --userId 'FBJ92FBCTDKEYE1e' \
    --body '{"itemIds": ["WFurOz7C6cf6SH9j", "TECvS5MROLLHWAs8", "kxRvJcPj3zvBszaE"]}' \
    > test.out 2>&1
eval_tap $? 137 'ValidateItemPurchaseCondition' test.out

#- 138 BulkUpdateRegionData
samples/cli/sample-apps Platform bulkUpdateRegionData \
    --namespace $AB_NAMESPACE \
    --storeId 'EBSUNzybmbi7Rv7J' \
    --body '{"changes": [{"itemIdentities": ["3rAYavw1BpKfuGXb", "5ykpE6omiUW0lAoq", "KDgUzNsbpZ484DZ2"], "itemIdentityType": "ITEM_ID", "regionData": {"IutPIZkPvpXpS6y4": [{"currencyCode": "F1JMnsUsnfwYAb4o", "currencyNamespace": "6QZFdQLjqToTTQec", "currencyType": "VIRTUAL", "discountAmount": 71, "discountExpireAt": "1998-08-21T00:00:00Z", "discountPercentage": 22, "discountPurchaseAt": "1982-05-31T00:00:00Z", "discountedPrice": 37, "expireAt": "1989-02-05T00:00:00Z", "price": 94, "purchaseAt": "1982-05-25T00:00:00Z", "trialPrice": 61}, {"currencyCode": "t0RprkyGWsVxnHR7", "currencyNamespace": "27QxLTeGwWJuFlVZ", "currencyType": "VIRTUAL", "discountAmount": 12, "discountExpireAt": "1990-06-26T00:00:00Z", "discountPercentage": 37, "discountPurchaseAt": "1973-09-11T00:00:00Z", "discountedPrice": 80, "expireAt": "1978-12-14T00:00:00Z", "price": 83, "purchaseAt": "1990-07-05T00:00:00Z", "trialPrice": 4}, {"currencyCode": "k0XK3RYCTGtLoL9i", "currencyNamespace": "urK6fDDREYS0Sb3Y", "currencyType": "REAL", "discountAmount": 79, "discountExpireAt": "1976-01-25T00:00:00Z", "discountPercentage": 76, "discountPurchaseAt": "1977-08-07T00:00:00Z", "discountedPrice": 1, "expireAt": "1982-08-31T00:00:00Z", "price": 15, "purchaseAt": "1997-04-05T00:00:00Z", "trialPrice": 73}], "r4foLvZhAkmGPc32": [{"currencyCode": "YeEpacUKXY20uq2n", "currencyNamespace": "I3VvBMW8rbIYptzt", "currencyType": "REAL", "discountAmount": 55, "discountExpireAt": "1994-06-29T00:00:00Z", "discountPercentage": 87, "discountPurchaseAt": "1979-07-16T00:00:00Z", "discountedPrice": 62, "expireAt": "1976-09-22T00:00:00Z", "price": 85, "purchaseAt": "1981-03-31T00:00:00Z", "trialPrice": 91}, {"currencyCode": "n4ogOte2hd5TUnd2", "currencyNamespace": "SoPMBnEgBukCmD3z", "currencyType": "REAL", "discountAmount": 18, "discountExpireAt": "1974-07-17T00:00:00Z", "discountPercentage": 23, "discountPurchaseAt": "1974-07-12T00:00:00Z", "discountedPrice": 67, "expireAt": "1973-02-17T00:00:00Z", "price": 39, "purchaseAt": "1999-07-20T00:00:00Z", "trialPrice": 28}, {"currencyCode": "6U81I0ayvbbEJyCd", "currencyNamespace": "BME3JGtgclGG3ZBk", "currencyType": "REAL", "discountAmount": 58, "discountExpireAt": "1997-01-06T00:00:00Z", "discountPercentage": 38, "discountPurchaseAt": "1980-01-20T00:00:00Z", "discountedPrice": 68, "expireAt": "1979-12-30T00:00:00Z", "price": 27, "purchaseAt": "1993-01-03T00:00:00Z", "trialPrice": 19}], "INxYJxebroMzwyCa": [{"currencyCode": "AdRJ2dTrlxnUHEQQ", "currencyNamespace": "QVjPzOe4vIrxTgO1", "currencyType": "VIRTUAL", "discountAmount": 26, "discountExpireAt": "1987-01-19T00:00:00Z", "discountPercentage": 16, "discountPurchaseAt": "1983-06-23T00:00:00Z", "discountedPrice": 90, "expireAt": "1986-01-01T00:00:00Z", "price": 64, "purchaseAt": "1986-07-28T00:00:00Z", "trialPrice": 20}, {"currencyCode": "b6VJN5thsypOkUQN", "currencyNamespace": "v5pNzCld0CwaP5qU", "currencyType": "VIRTUAL", "discountAmount": 34, "discountExpireAt": "1999-05-13T00:00:00Z", "discountPercentage": 84, "discountPurchaseAt": "1981-09-22T00:00:00Z", "discountedPrice": 98, "expireAt": "1975-07-25T00:00:00Z", "price": 51, "purchaseAt": "1998-03-13T00:00:00Z", "trialPrice": 87}, {"currencyCode": "KhUMbsSxbPP2pvF0", "currencyNamespace": "SESCzZ7iDUlkxh5b", "currencyType": "REAL", "discountAmount": 25, "discountExpireAt": "1978-12-08T00:00:00Z", "discountPercentage": 80, "discountPurchaseAt": "1991-08-06T00:00:00Z", "discountedPrice": 60, "expireAt": "1992-01-03T00:00:00Z", "price": 58, "purchaseAt": "1973-08-16T00:00:00Z", "trialPrice": 68}]}}, {"itemIdentities": ["Bodum5TF4fAhrrp2", "kgPHKL4AKCUbQR7U", "9ch0Buecha59pDSQ"], "itemIdentityType": "ITEM_ID", "regionData": {"5laaTYCBev8zn3ru": [{"currencyCode": "LSpIFagokpeawdVc", "currencyNamespace": "gQARFCzSJKD6ml3y", "currencyType": "VIRTUAL", "discountAmount": 10, "discountExpireAt": "1988-04-26T00:00:00Z", "discountPercentage": 45, "discountPurchaseAt": "1971-06-18T00:00:00Z", "discountedPrice": 75, "expireAt": "1990-04-13T00:00:00Z", "price": 81, "purchaseAt": "1975-03-24T00:00:00Z", "trialPrice": 58}, {"currencyCode": "fOsmZ5rNU8Utgh5H", "currencyNamespace": "7dghjItrUaXFOdf7", "currencyType": "VIRTUAL", "discountAmount": 16, "discountExpireAt": "1980-09-09T00:00:00Z", "discountPercentage": 31, "discountPurchaseAt": "1982-02-28T00:00:00Z", "discountedPrice": 95, "expireAt": "1982-10-01T00:00:00Z", "price": 99, "purchaseAt": "1977-01-10T00:00:00Z", "trialPrice": 74}, {"currencyCode": "5BF0T2JxXZh60OQg", "currencyNamespace": "qBFMYSdpZLkRlnyT", "currencyType": "VIRTUAL", "discountAmount": 18, "discountExpireAt": "1997-09-17T00:00:00Z", "discountPercentage": 25, "discountPurchaseAt": "1976-06-27T00:00:00Z", "discountedPrice": 17, "expireAt": "1996-05-27T00:00:00Z", "price": 40, "purchaseAt": "1989-03-01T00:00:00Z", "trialPrice": 23}], "p7zhwPJY8FtBBcGc": [{"currencyCode": "hQ9wvIHIFV0LBiLB", "currencyNamespace": "0WdIZKjij7jKGHM5", "currencyType": "REAL", "discountAmount": 19, "discountExpireAt": "1999-05-19T00:00:00Z", "discountPercentage": 22, "discountPurchaseAt": "1992-05-11T00:00:00Z", "discountedPrice": 47, "expireAt": "1983-05-19T00:00:00Z", "price": 11, "purchaseAt": "1979-09-01T00:00:00Z", "trialPrice": 51}, {"currencyCode": "3zaxiKVdc6oLTHn7", "currencyNamespace": "CLse6mWEp4Ihfepc", "currencyType": "VIRTUAL", "discountAmount": 11, "discountExpireAt": "1981-03-08T00:00:00Z", "discountPercentage": 83, "discountPurchaseAt": "1998-07-08T00:00:00Z", "discountedPrice": 73, "expireAt": "1994-06-21T00:00:00Z", "price": 81, "purchaseAt": "1987-03-16T00:00:00Z", "trialPrice": 86}, {"currencyCode": "4oE5AsFBouHlppFG", "currencyNamespace": "jXKO1JfKYMtXCQcZ", "currencyType": "VIRTUAL", "discountAmount": 0, "discountExpireAt": "1984-02-15T00:00:00Z", "discountPercentage": 54, "discountPurchaseAt": "1973-07-12T00:00:00Z", "discountedPrice": 89, "expireAt": "1988-12-19T00:00:00Z", "price": 3, "purchaseAt": "1972-05-31T00:00:00Z", "trialPrice": 32}], "ltts14rBqZvz8STc": [{"currencyCode": "aF8E1xAuDksmUwIi", "currencyNamespace": "HZRl9FJIbybkdui0", "currencyType": "VIRTUAL", "discountAmount": 52, "discountExpireAt": "1981-03-01T00:00:00Z", "discountPercentage": 76, "discountPurchaseAt": "1992-02-19T00:00:00Z", "discountedPrice": 59, "expireAt": "1984-03-12T00:00:00Z", "price": 26, "purchaseAt": "1990-04-24T00:00:00Z", "trialPrice": 45}, {"currencyCode": "6kMVJpDGBOhvSGXB", "currencyNamespace": "YFAASMnj9aBx5rvH", "currencyType": "REAL", "discountAmount": 14, "discountExpireAt": "1996-05-31T00:00:00Z", "discountPercentage": 9, "discountPurchaseAt": "1985-05-27T00:00:00Z", "discountedPrice": 18, "expireAt": "1988-10-29T00:00:00Z", "price": 26, "purchaseAt": "1989-12-02T00:00:00Z", "trialPrice": 68}, {"currencyCode": "U5lVWnTLd8z4ttxV", "currencyNamespace": "YBaEdQLjxCeKkGXy", "currencyType": "REAL", "discountAmount": 78, "discountExpireAt": "1984-06-04T00:00:00Z", "discountPercentage": 63, "discountPurchaseAt": "1990-05-13T00:00:00Z", "discountedPrice": 58, "expireAt": "1986-03-08T00:00:00Z", "price": 8, "purchaseAt": "1980-04-12T00:00:00Z", "trialPrice": 34}]}}, {"itemIdentities": ["tBPVtuhymBqQ79bV", "e74ihegvqaDTmiZQ", "QJmXtEU4pcCDYwng"], "itemIdentityType": "ITEM_ID", "regionData": {"c1bBUHzyOdk3FXth": [{"currencyCode": "H1uZWaWeSSlajgIv", "currencyNamespace": "NJ8ApflpRTv8sMwm", "currencyType": "REAL", "discountAmount": 28, "discountExpireAt": "1994-07-03T00:00:00Z", "discountPercentage": 46, "discountPurchaseAt": "1998-09-27T00:00:00Z", "discountedPrice": 69, "expireAt": "1984-05-18T00:00:00Z", "price": 29, "purchaseAt": "1976-10-03T00:00:00Z", "trialPrice": 0}, {"currencyCode": "iwl2jBtrPukZmwH1", "currencyNamespace": "ZL1N9OFmHHT2INFE", "currencyType": "VIRTUAL", "discountAmount": 51, "discountExpireAt": "1978-12-04T00:00:00Z", "discountPercentage": 72, "discountPurchaseAt": "1985-11-25T00:00:00Z", "discountedPrice": 91, "expireAt": "1986-12-25T00:00:00Z", "price": 15, "purchaseAt": "1979-12-14T00:00:00Z", "trialPrice": 65}, {"currencyCode": "dbyhi6U8Knw82e5k", "currencyNamespace": "WKtmVNYdQilSpMLW", "currencyType": "REAL", "discountAmount": 28, "discountExpireAt": "1982-01-06T00:00:00Z", "discountPercentage": 74, "discountPurchaseAt": "1993-07-03T00:00:00Z", "discountedPrice": 17, "expireAt": "1994-02-04T00:00:00Z", "price": 0, "purchaseAt": "1995-05-09T00:00:00Z", "trialPrice": 84}], "HjOZJkaSgXe9zgro": [{"currencyCode": "tTHMJCuF8nsOGoUR", "currencyNamespace": "7oYyHZcZZgdJ5OdY", "currencyType": "REAL", "discountAmount": 30, "discountExpireAt": "1989-06-28T00:00:00Z", "discountPercentage": 12, "discountPurchaseAt": "1999-05-31T00:00:00Z", "discountedPrice": 61, "expireAt": "1972-08-24T00:00:00Z", "price": 46, "purchaseAt": "1988-09-07T00:00:00Z", "trialPrice": 96}, {"currencyCode": "21e95QgFA80sZwU8", "currencyNamespace": "XWaRdMg4hS1JuBje", "currencyType": "VIRTUAL", "discountAmount": 50, "discountExpireAt": "1991-06-19T00:00:00Z", "discountPercentage": 40, "discountPurchaseAt": "1993-11-22T00:00:00Z", "discountedPrice": 12, "expireAt": "1995-04-02T00:00:00Z", "price": 90, "purchaseAt": "1988-11-13T00:00:00Z", "trialPrice": 67}, {"currencyCode": "upuMWr2mRUFyiHdh", "currencyNamespace": "LasU7daBQ38Hq12s", "currencyType": "REAL", "discountAmount": 41, "discountExpireAt": "1984-07-01T00:00:00Z", "discountPercentage": 75, "discountPurchaseAt": "1983-09-10T00:00:00Z", "discountedPrice": 2, "expireAt": "1996-11-03T00:00:00Z", "price": 19, "purchaseAt": "1998-10-23T00:00:00Z", "trialPrice": 79}], "pNbUYWaUxsjIrQqP": [{"currencyCode": "j5sr754cqWqlcGKh", "currencyNamespace": "PpWNZmGVZz1RY0YT", "currencyType": "VIRTUAL", "discountAmount": 29, "discountExpireAt": "1980-07-18T00:00:00Z", "discountPercentage": 94, "discountPurchaseAt": "1972-07-10T00:00:00Z", "discountedPrice": 58, "expireAt": "1994-04-26T00:00:00Z", "price": 52, "purchaseAt": "1984-02-08T00:00:00Z", "trialPrice": 25}, {"currencyCode": "C1GdD5XRhKJgWFMY", "currencyNamespace": "8nfV7Oork6ZzUcPt", "currencyType": "REAL", "discountAmount": 0, "discountExpireAt": "1994-12-14T00:00:00Z", "discountPercentage": 69, "discountPurchaseAt": "1973-10-01T00:00:00Z", "discountedPrice": 49, "expireAt": "1985-09-22T00:00:00Z", "price": 48, "purchaseAt": "1991-03-04T00:00:00Z", "trialPrice": 42}, {"currencyCode": "BnhSnzwgc10sYGbc", "currencyNamespace": "Pl9FLo6A1GsqhIpJ", "currencyType": "REAL", "discountAmount": 45, "discountExpireAt": "1984-12-19T00:00:00Z", "discountPercentage": 51, "discountPurchaseAt": "1980-10-05T00:00:00Z", "discountedPrice": 75, "expireAt": "1996-03-02T00:00:00Z", "price": 23, "purchaseAt": "1993-12-19T00:00:00Z", "trialPrice": 53}]}}]}' \
    > test.out 2>&1
eval_tap $? 138 'BulkUpdateRegionData' test.out

#- 139 SearchItems
samples/cli/sample-apps Platform searchItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --itemType 'APP' \
    --limit '67' \
    --offset '38' \
    --sortBy '7oM2hi0j8AHXHBIn' \
    --storeId 'V9UX8K37XljTLyNN' \
    --keyword 'ZDuARqsQpCtYWUmK' \
    --language 'pUewaE2KUHrHE77J' \
    > test.out 2>&1
eval_tap $? 139 'SearchItems' test.out

#- 140 QueryUncategorizedItems
samples/cli/sample-apps Platform queryUncategorizedItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --limit '51' \
    --offset '20' \
    --sortBy '["createdAt", "updatedAt", "name:desc"]' \
    --storeId 'rP3RJlxMRN2IahMf' \
    > test.out 2>&1
eval_tap $? 140 'QueryUncategorizedItems' test.out

#- 141 GetItem
samples/cli/sample-apps Platform getItem \
    --itemId 'eTv5YhFYKbgNK24U' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --storeId 'W01CZEjmbxOIDvlj' \
    > test.out 2>&1
eval_tap $? 141 'GetItem' test.out

#- 142 UpdateItem
samples/cli/sample-apps Platform updateItem \
    --itemId 'IT2tJL6cjzU94T04' \
    --namespace $AB_NAMESPACE \
    --storeId 'RgdbhjSexsRNayQ7' \
    --body '{"appId": "zhkHUM7LAPGQBUVh", "appType": "GAME", "baseAppId": "iKu187hY74ubQwNL", "boothName": "d0iiQR8XBs666kmp", "categoryPath": "vRyAgx4ZV9Jo5baO", "clazz": "zuRv3a3sKZVJp3OJ", "displayOrder": 95, "entitlementType": "CONSUMABLE", "ext": {"PC0KRweOh9kAzZb6": {}, "1O0Srnxq4E1wCM1I": {}, "x5Qv92QoxqOtlPY3": {}}, "features": ["DtR8tRj8TZ0ivzIo", "BXIfPsxgYtHM62ZK", "3kdb3GYTJZIE8Oyq"], "flexible": true, "images": [{"as": "BctHaA4RqE5vnlaF", "caption": "qpcIIoftIbjJeSie", "height": 62, "imageUrl": "PF7j0hNpwU76Ckps", "smallImageUrl": "XrHTXN1mqm6VQz94", "width": 79}, {"as": "GFmvTaxptXB6lITO", "caption": "BElmY7Oyfv8EIn8P", "height": 81, "imageUrl": "wRj7IvO4bF10qxXf", "smallImageUrl": "MYNgOuvcBXvfnEVy", "width": 92}, {"as": "qb0Vfyq1HrukUPgc", "caption": "dQftjIOpF0CFL6dN", "height": 33, "imageUrl": "UdkUo4V2xHoioJiQ", "smallImageUrl": "wzJkB9vvSPsnlqDs", "width": 97}], "inventoryConfig": {"customAttributes": {"Wm0vCFbbf1RsvTmW": {}, "uQGL5kcpYrsmE2P1": {}, "sGg4lUxGlysTlrWr": {}}, "serverCustomAttributes": {"LE9t17i1ezEW9bCt": {}, "uoTZ0U5EVHaFjNCt": {}, "h1ZLrOhtv2HjZiUl": {}}, "slotUsed": 16}, "itemIds": ["QQICPGvExBOZMxls", "URARF0NprBuqbXQc", "q66e0HvnhBOzSyUR"], "itemQty": {"y2dWlEZIYjL0MGiS": 83, "Re0mxaAWng4QfXM6": 46, "iC1fzY217e0uKRqM": 42}, "itemType": "EXTENSION", "listable": false, "localizations": {"JY2YqQe0xeiFY5sK": {"description": "zTOt2Z15FvyvE7pF", "localExt": {"TncRBLs5piNsnEuj": {}, "lETzzt2BeCCVv3Ly": {}, "cEhcmW1nM7xQFl4e": {}}, "longDescription": "ly9it3jQOZD368B2", "title": "iXB0ByGJVfKNCJ5P"}, "JWTISpvZ4GSLXPzb": {"description": "RAheW1uWXuJkP1Fv", "localExt": {"WCSd7ODfo00PZjx2": {}, "NXCCfhPPGpRX6rbf": {}, "sWnGOnqBCc7I2L08": {}}, "longDescription": "6qcvZGqisO3hVuMT", "title": "IRQyqBxtFa28XFKN"}, "lgs6LHhWR6kOYtNA": {"description": "rdItUgzK137ymwIa", "localExt": {"fgzxwRg1iC2oWW3B": {}, "MB2ZFx9JDQArxv9J": {}, "Yi7PlS2tQ4WwDvko": {}}, "longDescription": "Wv6t2f0RcTGEcWdT", "title": "dM80W0tzKSd050VQ"}}, "lootBoxConfig": {"rewardCount": 81, "rewards": [{"lootBoxItems": [{"count": 20, "duration": 93, "endDate": "1972-02-07T00:00:00Z", "itemId": "7ZQNdVMebDBTRZRW", "itemSku": "eUH82ArteSSKFxpj", "itemType": "t1fHAHuys3RXCg33"}, {"count": 55, "duration": 41, "endDate": "1990-06-12T00:00:00Z", "itemId": "YfEeAN0I3xjJzV1J", "itemSku": "Fj32yZpD5oILxL7q", "itemType": "YR3zvUKkMaPjJHF3"}, {"count": 29, "duration": 74, "endDate": "1985-03-01T00:00:00Z", "itemId": "HTeHBrP6V4GMg4B2", "itemSku": "dMk7wADqiU9AV63Y", "itemType": "qxI9AviAjFwp3IQH"}], "name": "qvnTz7SrYXk85Pbu", "odds": 0.009507978745553092, "type": "REWARD", "weight": 23}, {"lootBoxItems": [{"count": 40, "duration": 9, "endDate": "1999-01-13T00:00:00Z", "itemId": "pxCQZwx2Kc2FNl0T", "itemSku": "ZX3JVgdSryTT3iJE", "itemType": "oUG8zjBCx2Fi2eUU"}, {"count": 8, "duration": 52, "endDate": "1974-08-30T00:00:00Z", "itemId": "mQv8j42CPNrt5bDh", "itemSku": "shZM5FADBHIl63mg", "itemType": "cesskFk7CBh0nwRI"}, {"count": 46, "duration": 21, "endDate": "1980-07-08T00:00:00Z", "itemId": "vproJBPwH6YaXEn6", "itemSku": "AZ8btFLm7sIkPBAr", "itemType": "y9T4K7vPa5R4HiXV"}], "name": "UiuSzmWwgtVG57nT", "odds": 0.8636027971155469, "type": "PROBABILITY_GROUP", "weight": 59}, {"lootBoxItems": [{"count": 1, "duration": 96, "endDate": "1984-03-07T00:00:00Z", "itemId": "CGOrpPA6aaQTXBka", "itemSku": "x0AW7mL0c9BMwASt", "itemType": "xYwhkSFNlnzCjRbW"}, {"count": 14, "duration": 47, "endDate": "1991-11-20T00:00:00Z", "itemId": "oVI4LNYeBi3RhlVX", "itemSku": "K91wxbMHm1A6KMEL", "itemType": "ahM5sKsobQiablfy"}, {"count": 6, "duration": 21, "endDate": "1981-11-18T00:00:00Z", "itemId": "IotHdI5bAe3MMD7I", "itemSku": "KKv6xinOpdN9Yvsc", "itemType": "OjKtk6qOjtxHy04a"}], "name": "k7ts7vi9HhOgJ1kA", "odds": 0.4345686839949151, "type": "PROBABILITY_GROUP", "weight": 32}], "rollFunction": "DEFAULT"}, "maxCount": 26, "maxCountPerUser": 12, "name": "NEJ15vFA0kjurc7i", "optionBoxConfig": {"boxItems": [{"count": 20, "duration": 27, "endDate": "1983-02-13T00:00:00Z", "itemId": "LX6MYjxzxcerV8aI", "itemSku": "PO8k2ujreJ3f2xg4", "itemType": "YFXaQeTZgWOVepxC"}, {"count": 15, "duration": 62, "endDate": "1979-06-22T00:00:00Z", "itemId": "o4Z7ia3Vz3B33HP7", "itemSku": "OavojfJzNKwdmHZ8", "itemType": "4YQ7A5ACqiFZyJZi"}, {"count": 38, "duration": 31, "endDate": "1996-12-02T00:00:00Z", "itemId": "9HvpXsssB6yeEiBJ", "itemSku": "mjlUVajz9Oj8BCJf", "itemType": "p7IqYl4ZSX0QkqET"}]}, "purchasable": false, "recurring": {"cycle": "YEARLY", "fixedFreeDays": 62, "fixedTrialCycles": 82, "graceDays": 75}, "regionData": {"eAuXkKhvxxzByh5z": [{"currencyCode": "xPaXQIRa9FoAO6TD", "currencyNamespace": "CijBR4ShFRjQmeJH", "currencyType": "REAL", "discountAmount": 65, "discountExpireAt": "1989-12-03T00:00:00Z", "discountPercentage": 61, "discountPurchaseAt": "1975-01-20T00:00:00Z", "expireAt": "1980-07-26T00:00:00Z", "price": 74, "purchaseAt": "1991-01-23T00:00:00Z", "trialPrice": 84}, {"currencyCode": "Ma59Z3JWCLgAJfZP", "currencyNamespace": "ZFd9IGe4i1A4TUhX", "currencyType": "VIRTUAL", "discountAmount": 3, "discountExpireAt": "1990-04-15T00:00:00Z", "discountPercentage": 14, "discountPurchaseAt": "1976-09-05T00:00:00Z", "expireAt": "1985-09-14T00:00:00Z", "price": 80, "purchaseAt": "1975-07-29T00:00:00Z", "trialPrice": 52}, {"currencyCode": "mMNxUuBGhOY1gVk1", "currencyNamespace": "YA25apelUP079tkd", "currencyType": "REAL", "discountAmount": 79, "discountExpireAt": "1985-02-06T00:00:00Z", "discountPercentage": 87, "discountPurchaseAt": "1981-07-02T00:00:00Z", "expireAt": "1983-09-20T00:00:00Z", "price": 78, "purchaseAt": "1973-04-26T00:00:00Z", "trialPrice": 19}], "otkoByMUVup4oH92": [{"currencyCode": "EiFRASdWZFBgbqGY", "currencyNamespace": "CrI8uaOE0LJmHl5e", "currencyType": "REAL", "discountAmount": 63, "discountExpireAt": "1983-06-11T00:00:00Z", "discountPercentage": 4, "discountPurchaseAt": "1998-03-11T00:00:00Z", "expireAt": "1992-02-17T00:00:00Z", "price": 95, "purchaseAt": "1996-01-07T00:00:00Z", "trialPrice": 21}, {"currencyCode": "30ozVie5YJYax5hF", "currencyNamespace": "XG9yD4sijWwdYbUe", "currencyType": "REAL", "discountAmount": 55, "discountExpireAt": "1995-10-04T00:00:00Z", "discountPercentage": 64, "discountPurchaseAt": "1996-04-05T00:00:00Z", "expireAt": "1974-10-20T00:00:00Z", "price": 7, "purchaseAt": "1981-08-01T00:00:00Z", "trialPrice": 60}, {"currencyCode": "0UjyWAvg5uN3WG3Q", "currencyNamespace": "MC8kPvcqOwTX6XPO", "currencyType": "REAL", "discountAmount": 42, "discountExpireAt": "1975-12-26T00:00:00Z", "discountPercentage": 52, "discountPurchaseAt": "1988-05-31T00:00:00Z", "expireAt": "1977-11-21T00:00:00Z", "price": 93, "purchaseAt": "1978-03-19T00:00:00Z", "trialPrice": 14}], "7E4i0593a17CVTek": [{"currencyCode": "jjD8SmMqYiB09ZTW", "currencyNamespace": "qVWH9KbuEDvXmFhm", "currencyType": "VIRTUAL", "discountAmount": 82, "discountExpireAt": "1978-05-04T00:00:00Z", "discountPercentage": 10, "discountPurchaseAt": "1995-05-24T00:00:00Z", "expireAt": "1974-10-28T00:00:00Z", "price": 39, "purchaseAt": "1989-01-14T00:00:00Z", "trialPrice": 94}, {"currencyCode": "SQLRXbw9n1gm7GWV", "currencyNamespace": "pOCW9Hbx3hI60dU1", "currencyType": "VIRTUAL", "discountAmount": 43, "discountExpireAt": "1975-07-29T00:00:00Z", "discountPercentage": 20, "discountPurchaseAt": "1996-02-19T00:00:00Z", "expireAt": "1974-10-16T00:00:00Z", "price": 62, "purchaseAt": "1995-05-13T00:00:00Z", "trialPrice": 9}, {"currencyCode": "76hTdl8OeypfOGhN", "currencyNamespace": "jrGCuLmMKglEOnzV", "currencyType": "VIRTUAL", "discountAmount": 24, "discountExpireAt": "1978-02-17T00:00:00Z", "discountPercentage": 17, "discountPurchaseAt": "1985-12-06T00:00:00Z", "expireAt": "1980-11-03T00:00:00Z", "price": 36, "purchaseAt": "1977-10-27T00:00:00Z", "trialPrice": 93}]}, "saleConfig": {"currencyCode": "KAH5ztp0PzM60SDt", "price": 16}, "seasonType": "PASS", "sectionExclusive": true, "sellable": true, "sku": "ibt2mNcRd5OVIoyx", "stackable": false, "status": "INACTIVE", "tags": ["KbaDJRxtlLVgF71U", "fajek02acx0TULi8", "n9TphsxrFZlitZMK"], "targetCurrencyCode": "XukK5HBYlcC8SvGK", "targetNamespace": "UGPGemtUyaD80oqg", "thumbnailUrl": "KqxOQvhrqAsCSXpo", "useCount": 65}' \
    > test.out 2>&1
eval_tap $? 142 'UpdateItem' test.out

#- 143 DeleteItem
samples/cli/sample-apps Platform deleteItem \
    --itemId 'VsLEttwaiCLM4C9t' \
    --namespace $AB_NAMESPACE \
    --featuresToCheck '["DLC", "CATALOG", "ENTITLEMENT"]' \
    --force 'false' \
    --storeId 'KNaKK9fESI38cbrD' \
    > test.out 2>&1
eval_tap $? 143 'DeleteItem' test.out

#- 144 AcquireItem
samples/cli/sample-apps Platform acquireItem \
    --itemId 'DK2HGxzCMWqtdi0j' \
    --namespace $AB_NAMESPACE \
    --body '{"count": 29, "orderNo": "6mSTfVHKj3chRSAG"}' \
    > test.out 2>&1
eval_tap $? 144 'AcquireItem' test.out

#- 145 GetApp
samples/cli/sample-apps Platform getApp \
    --itemId 'Gw3LePP41QH7R2Gp' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'xqgHQxRp7S48xIl6' \
    > test.out 2>&1
eval_tap $? 145 'GetApp' test.out

#- 146 UpdateApp
samples/cli/sample-apps Platform updateApp \
    --itemId 'bGnUnM6OojiYN47N' \
    --namespace $AB_NAMESPACE \
    --storeId 'DrB1p8aSnx37LLqI' \
    --body '{"carousel": [{"alt": "db3wUfmgQG1l6cqL", "previewUrl": "jG1xqtUaIFhO1zne", "thumbnailUrl": "MGRPIzuANZHz5dXq", "type": "video", "url": "fBJHCJaWAzSVWqlb", "videoSource": "generic"}, {"alt": "0Csp4Y8XkSLYdoR4", "previewUrl": "oLNs5KAhqsC7EJWK", "thumbnailUrl": "ZYzKOypxTQIG7Ojx", "type": "video", "url": "zjWbC2PUTFLG4CU5", "videoSource": "generic"}, {"alt": "hmTmOnCAfawHjOm4", "previewUrl": "vn3YRLg8dQk0dXDK", "thumbnailUrl": "K76KlwR3uhfraxGa", "type": "image", "url": "n1mpm7ZpGofO8gUP", "videoSource": "generic"}], "developer": "CNpnWJbTrM8ZfZBj", "forumUrl": "sRQAkK69OyE4Ts88", "genres": ["Racing", "Strategy", "Sports"], "localizations": {"7x4lcLou1wdkDKXD": {"announcement": "h80L99qM4Ee2kcMF", "slogan": "zFmhtcin1REf9NZM"}, "hzK9PQZbvuoKSBK6": {"announcement": "paR3zqoHZwcveCew", "slogan": "qjF5kD55Qv43rP8e"}, "JrKcvqlfFiJ72qtF": {"announcement": "XzPQgHvAuzKAJphY", "slogan": "oSBB1dGkLmhmWIY3"}}, "platformRequirements": {"tDiPYc0DWRvppPAK": [{"additionals": "sPL8fAyzBYU7kf3M", "directXVersion": "XUlDiQuXyaF5wyTf", "diskSpace": "7HQHWqJOtA3jCiCO", "graphics": "4Y6ncILA1VLWYv8D", "label": "x8yc13ZaZxttPTuo", "osVersion": "94wgq5lh7bt1ennr", "processor": "bFWxBVLqjMmaBt0a", "ram": "7NPAko3I3ohku2li", "soundCard": "8wrABU1kwVLJaDK6"}, {"additionals": "dvedXuuqNvJF6DQ2", "directXVersion": "kAwFlLCuIUSIoW2F", "diskSpace": "debHw2O0Sej2Whp7", "graphics": "2DzHDp4LyY9DFrsV", "label": "ilq5nqn2G3n08bJP", "osVersion": "gzUa1ZDjVFqubOLs", "processor": "ULaYsMt4wT6ZtzCt", "ram": "c9poFEEr4C1FTHSg", "soundCard": "M6J1777XpHRSfdEm"}, {"additionals": "CFuUafOTZItuDXdG", "directXVersion": "o5kfsxt65f9y5Wzc", "diskSpace": "4h1nHAP2H4AWnnvh", "graphics": "jsrHXdCxocPdI747", "label": "d6WPEYfiWPHlsZP0", "osVersion": "oaSNDTB3TYJoXyS0", "processor": "EFFJe51g6m7T2Zch", "ram": "O5YCYqyWU1qdp5B8", "soundCard": "yPX1TBPDP3ehYyha"}], "AFJlkUiwFyCz9Rng": [{"additionals": "lDshwNsLwhTb708J", "directXVersion": "mLbCAvp87aE4iWFb", "diskSpace": "w2rZVTFDIFFPNSJD", "graphics": "R7s6DYmg6HR9fDvs", "label": "EOeEWgDFZV3Cy1Vm", "osVersion": "Ntn3vksV455q6kit", "processor": "CaER02wAdF8yRhf7", "ram": "FJ9oZkO6r7MD3iXo", "soundCard": "ya1cBOt3p0GQu18M"}, {"additionals": "mB2yLhEeunYkP6Br", "directXVersion": "MZiN5wHeDFfcGrTz", "diskSpace": "YD1yGdFrK7H2HiQE", "graphics": "Z005zg76xBugpqov", "label": "to3g3R4FtAnd9oFU", "osVersion": "NLHJuYqeS8QVQkTA", "processor": "Li6UhQzkr54CB0yr", "ram": "9uMDQWmy6Yhavugp", "soundCard": "eeddL9yFqyAInKWV"}, {"additionals": "ZwGIEK82o0lw1ZmB", "directXVersion": "ip3PGJXfa1iUxKlT", "diskSpace": "nVwKDIyI5G5nZpmM", "graphics": "EronMrrDKf2IMyci", "label": "KUiOMAfZsda0wRma", "osVersion": "sSCW52A0BuNhS46M", "processor": "66vbFGll5stpzPVr", "ram": "ipp0TIq6cFu2ZlNT", "soundCard": "dqM0tYIPyK7c7HUV"}], "yX9G3HHsWS22QG9l": [{"additionals": "tDPwPvM6mzpwPYUV", "directXVersion": "K8Iczlhmj3ttOy0U", "diskSpace": "zXEpF2L0EbsaGEBf", "graphics": "8M23TPHol62pi1nl", "label": "lC4DV1jNFxSFYoSG", "osVersion": "6TpFaPQeK5HSTfoW", "processor": "S1EorwYxgxtcpNQD", "ram": "9upwp5vAag1WdIX9", "soundCard": "yyRkY4qvSyn9kztW"}, {"additionals": "EDutLd1bchCebWYn", "directXVersion": "yiGnbdwPKCsWXx0g", "diskSpace": "jyy1VslesGcoELHe", "graphics": "mbcxnSbDTvvaxjLW", "label": "jh45pGybFmW3Hl4d", "osVersion": "caNi3LVgHDeug07M", "processor": "puqvFGRMm5W5lpRW", "ram": "ozo9GctB18Fmv4xg", "soundCard": "8KZIYYkJq2zMmX6r"}, {"additionals": "TMwhqsyyCnBkym2T", "directXVersion": "fJAAJjLVIGxHpL5B", "diskSpace": "dJYMdaAUtZ0VgOAV", "graphics": "RU54Nd7jIR4B4CDS", "label": "X8RqR6Y4JBxQAcHJ", "osVersion": "1FWGhobqMutG7sy7", "processor": "p6fKI96mUonMyIvk", "ram": "rRR3zDUEdUramEJg", "soundCard": "kslCY96XmMWQlHVJ"}]}, "platforms": ["IOS", "MacOS", "Android"], "players": ["CrossPlatformMulti", "MMO", "MMO"], "primaryGenre": "Action", "publisher": "Ei957A9q3gOCwjcl", "releaseDate": "1972-05-20T00:00:00Z", "websiteUrl": "QclS2HD9xlbVet8d"}' \
    > test.out 2>&1
eval_tap $? 146 'UpdateApp' test.out

#- 147 DisableItem
samples/cli/sample-apps Platform disableItem \
    --itemId 'bMh9CFaAkoVy7l5d' \
    --namespace $AB_NAMESPACE \
    --storeId 'IsgB0jR31jMJ1Jdi' \
    --body '{"featuresToCheck": ["CAMPAIGN", "REWARD", "DLC"]}' \
    > test.out 2>&1
eval_tap $? 147 'DisableItem' test.out

#- 148 GetItemDynamicData
samples/cli/sample-apps Platform getItemDynamicData \
    --itemId 'mKD0jkLRSuA3E4HN' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 148 'GetItemDynamicData' test.out

#- 149 EnableItem
samples/cli/sample-apps Platform enableItem \
    --itemId 'xgKbiqAnVHm7t3Ti' \
    --namespace $AB_NAMESPACE \
    --storeId 'rqqyOnNKbuEs5ZjM' \
    > test.out 2>&1
eval_tap $? 149 'EnableItem' test.out

#- 150 FeatureItem
samples/cli/sample-apps Platform featureItem \
    --feature 'cax4vK80DGlwX5Qd' \
    --itemId 'm4YIqW6E7WPOQF6o' \
    --namespace $AB_NAMESPACE \
    --storeId 'vVvuzhgaAjT8rpEO' \
    > test.out 2>&1
eval_tap $? 150 'FeatureItem' test.out

#- 151 DefeatureItem
samples/cli/sample-apps Platform defeatureItem \
    --feature 'MSUw38ULbiYESpLl' \
    --itemId '2r8nDcezq18T8DaT' \
    --namespace $AB_NAMESPACE \
    --storeId 'ZOmtBjbo9ANtPVYW' \
    > test.out 2>&1
eval_tap $? 151 'DefeatureItem' test.out

#- 152 GetLocaleItem
samples/cli/sample-apps Platform getLocaleItem \
    --itemId '50lhtDrOA7xI90wY' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --language 'H6PtOoMDTbKfOQAO' \
    --populateBundle 'false' \
    --region '7S0SV6b3xeYVfZFD' \
    --storeId 'QUeaH3lxpQMibjDl' \
    > test.out 2>&1
eval_tap $? 152 'GetLocaleItem' test.out

#- 153 UpdateItemPurchaseCondition
samples/cli/sample-apps Platform updateItemPurchaseCondition \
    --itemId '4RMbtDii9qyfnOIj' \
    --namespace $AB_NAMESPACE \
    --storeId 'A6SrF2MSLHDFsEsv' \
    --body '{"purchaseCondition": {"conditionGroups": [{"operator": "and", "predicates": [{"anyOf": 42, "code": "l4aIaHj2nS4Q4zCC", "comparison": "isLessThanOrEqual", "name": "Qqyzw3A3Jj1bDiOJ", "predicateType": "EntitlementPredicate", "value": "wnsbYCeVl5gI9XFK", "values": ["JDK87R8NkXBQZhZl", "FLN2mwjNNOqPnhGm", "H3EK7uEgKM3x75hm"]}, {"anyOf": 64, "code": "2rLJ3uRnVeXsR0m0", "comparison": "is", "name": "GwI9zYUd3yZlVOBZ", "predicateType": "EntitlementPredicate", "value": "KvQhk0PNGu1WqQc5", "values": ["EZ1jB9uKA8V90pN9", "d3ad7gtwG6Fex0Li", "CtqIaR1OkC9qd8xf"]}, {"anyOf": 85, "code": "o4pyTUfyyMdkMw8h", "comparison": "isGreaterThan", "name": "rJ5OXTPlreECokyc", "predicateType": "SeasonTierPredicate", "value": "zL6NlGdKdGkS07Jv", "values": ["wAWAdAR0bEqfzXvN", "c6WymhH04z85yAw7", "i2U5RWfTvDKTgilZ"]}]}, {"operator": "or", "predicates": [{"anyOf": 0, "code": "nw5dWkfsW3BbDPKN", "comparison": "isGreaterThan", "name": "8DYrEMrvJEdnSiTH", "predicateType": "EntitlementPredicate", "value": "tCntn56zwMpmmC7z", "values": ["uvbbz9id1z4l0DM8", "e1kAQyyAjBZ9nTma", "pzE0aFpmN8a1e1Zj"]}, {"anyOf": 14, "code": "0xb7z5YUkUvze9T0", "comparison": "isGreaterThan", "name": "I4ekfE634UmuykzV", "predicateType": "SeasonPassPredicate", "value": "q9MyOUHT9cV8WUSO", "values": ["glCNrgDNoABOZZYQ", "6cu6eJ70ybJgzvpL", "d4x0mXUuMn42iCah"]}, {"anyOf": 1, "code": "ACyZar6wgBIIJSe7", "comparison": "isNot", "name": "nfLDTfvCh4XqNy6P", "predicateType": "SeasonPassPredicate", "value": "MyeXkLdvFYic8Ffy", "values": ["IUcVJpqypJ8UPpzQ", "BvSlyGwcvczWBwZf", "cTol5LBfcoVCDbv5"]}]}, {"operator": "or", "predicates": [{"anyOf": 69, "code": "H3VKBvzlugGqhxG5", "comparison": "includes", "name": "9TcOP6o3A5W2gt2r", "predicateType": "SeasonPassPredicate", "value": "8C6Vk3kni39zvGvs", "values": ["IhY06LF8Sdw9zDLm", "ij7Uf4SIO4u6S0lV", "0H6oed2Y1YmNnkqc"]}, {"anyOf": 89, "code": "SY6RRa1MEWr9KJsT", "comparison": "is", "name": "IBDH5xBfmMKiFYQy", "predicateType": "StatisticCodePredicate", "value": "LUrXr1SdZ6ldtSwP", "values": ["aSpIcDGyLCejL8ib", "cgeDVuMJ5NEaZyWp", "N1lgNOLlVsC7Ytw2"]}, {"anyOf": 42, "code": "bYYezF7ni62FCAqT", "comparison": "is", "name": "NXwsa2yVXI06m08G", "predicateType": "EntitlementPredicate", "value": "NvXi7k7sCJhAHJ8S", "values": ["hHzBeY7AgAqxTN8G", "zPq0ZnLVFWGN1423", "Dxn2fk7Tu0AlD5dJ"]}]}]}}' \
    > test.out 2>&1
eval_tap $? 153 'UpdateItemPurchaseCondition' test.out

#- 154 QueryItemReferences
samples/cli/sample-apps Platform queryItemReferences \
    --itemId 'NS60XI7KXHVJU1LO' \
    --namespace $AB_NAMESPACE \
    --featuresToCheck '["ENTITLEMENT", "CAMPAIGN", "ENTITLEMENT"]' \
    --storeId 'eZRc3n2UXGN8rli6' \
    > test.out 2>&1
eval_tap $? 154 'QueryItemReferences' test.out

#- 155 ReturnItem
samples/cli/sample-apps Platform returnItem \
    --itemId 'tHOKOZp6b35RiZ33' \
    --namespace $AB_NAMESPACE \
    --body '{"orderNo": "NDlOHUrnXIKcxJNo"}' \
    > test.out 2>&1
eval_tap $? 155 'ReturnItem' test.out

#- 156 QueryKeyGroups
samples/cli/sample-apps Platform queryKeyGroups \
    --namespace $AB_NAMESPACE \
    --limit '27' \
    --name 'Pe8NFouFRxO9zaPD' \
    --offset '8' \
    --tag 'PcXxh4EvwWztkvV3' \
    > test.out 2>&1
eval_tap $? 156 'QueryKeyGroups' test.out

#- 157 CreateKeyGroup
samples/cli/sample-apps Platform createKeyGroup \
    --namespace $AB_NAMESPACE \
    --body '{"description": "x83mxQPxwQF3WF5u", "name": "hlPMgN8dhg2DvEye", "status": "ACTIVE", "tags": ["E9VEHlFvmTI1saA3", "u7MtweKcLMcfCRAp", "HFGQ1VV7mPrrnyW0"]}' \
    > test.out 2>&1
eval_tap $? 157 'CreateKeyGroup' test.out

#- 158 GetKeyGroupByBoothName
eval_tap 0 158 'GetKeyGroupByBoothName # SKIP deprecated' test.out

#- 159 GetKeyGroup
samples/cli/sample-apps Platform getKeyGroup \
    --keyGroupId '83rUHvWJ5xeLsMMm' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 159 'GetKeyGroup' test.out

#- 160 UpdateKeyGroup
samples/cli/sample-apps Platform updateKeyGroup \
    --keyGroupId 'WpL6p5VTPVGd5h7l' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "rb4OJ7gopNQlxcOy", "name": "mFqTAfrv6ZISnmrv", "status": "ACTIVE", "tags": ["DkQQW9TFGAYILurL", "j3EjrIpzQoDAnNT8", "TXFomQi7ay9umQWC"]}' \
    > test.out 2>&1
eval_tap $? 160 'UpdateKeyGroup' test.out

#- 161 GetKeyGroupDynamic
samples/cli/sample-apps Platform getKeyGroupDynamic \
    --keyGroupId 'yFTWLCV8MtsBvWS9' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 161 'GetKeyGroupDynamic' test.out

#- 162 ListKeys
samples/cli/sample-apps Platform listKeys \
    --keyGroupId 'Rzp62At9cdOeTU52' \
    --namespace $AB_NAMESPACE \
    --limit '19' \
    --offset '76' \
    --status 'ACTIVE' \
    > test.out 2>&1
eval_tap $? 162 'ListKeys' test.out

#- 163 UploadKeys
samples/cli/sample-apps Platform uploadKeys \
    --keyGroupId 'xNC0Ub2Z2ewEQDXw' \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 163 'UploadKeys' test.out

#- 164 QueryOrders
samples/cli/sample-apps Platform queryOrders \
    --namespace $AB_NAMESPACE \
    --endTime 'DJOc6bzJFAfMaMLX' \
    --limit '19' \
    --offset '19' \
    --orderNos '["ZHX15NRLCXRTbiiZ", "sTr13OnqmDgmN0qQ", "Dr0SsWhoW7pqgl45"]' \
    --sortBy '3jcQHtczhJ8ZDPlH' \
    --startTime 'DQVUjxDrUNmPoUiG' \
    --status 'REFUNDING' \
    --withTotal 'true' \
    > test.out 2>&1
eval_tap $? 164 'QueryOrders' test.out

#- 165 GetOrderStatistics
samples/cli/sample-apps Platform getOrderStatistics \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 165 'GetOrderStatistics' test.out

#- 166 GetOrder
samples/cli/sample-apps Platform getOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'AGyKBrWG91liykm4' \
    > test.out 2>&1
eval_tap $? 166 'GetOrder' test.out

#- 167 RefundOrder
samples/cli/sample-apps Platform refundOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'SiXmXO164dYHl5oi' \
    --body '{"description": "tS2HLBC8qpX6oaBh"}' \
    > test.out 2>&1
eval_tap $? 167 'RefundOrder' test.out

#- 168 GetPaymentCallbackConfig
eval_tap 0 168 'GetPaymentCallbackConfig # SKIP deprecated' test.out

#- 169 UpdatePaymentCallbackConfig
eval_tap 0 169 'UpdatePaymentCallbackConfig # SKIP deprecated' test.out

#- 170 GetPaymentMerchantConfig
samples/cli/sample-apps Platform getPaymentMerchantConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 170 'GetPaymentMerchantConfig' test.out

#- 171 UpdatePaymentDomainWhitelistConfig
samples/cli/sample-apps Platform updatePaymentDomainWhitelistConfig \
    --namespace $AB_NAMESPACE \
    --body '{"domains": ["Db3EVRMuExIeA3A3", "xZr9XZXOoTVzxzxr", "HGAGzZIiWUJDbpUb"]}' \
    > test.out 2>&1
eval_tap $? 171 'UpdatePaymentDomainWhitelistConfig' test.out

#- 172 QueryPaymentNotifications
samples/cli/sample-apps Platform queryPaymentNotifications \
    --namespace $AB_NAMESPACE \
    --endDate 'puB8SlWI4iKg4ziS' \
    --externalId 'HMwQV9GvHxJSNe9X' \
    --limit '38' \
    --notificationSource 'WALLET' \
    --notificationType '4krs8BVV9sZKHLWY' \
    --offset '67' \
    --paymentOrderNo 'QLPIuU2Pjpp65zL3' \
    --startDate 'V3Kr9e39fzUjXFjX' \
    --status 'IGNORED' \
    > test.out 2>&1
eval_tap $? 172 'QueryPaymentNotifications' test.out

#- 173 QueryPaymentOrders
samples/cli/sample-apps Platform queryPaymentOrders \
    --namespace $AB_NAMESPACE \
    --channel 'INTERNAL' \
    --extTxId 'lwHMsGEe2HgD4SFL' \
    --limit '16' \
    --offset '14' \
    --status 'REQUEST_FOR_INFORMATION' \
    > test.out 2>&1
eval_tap $? 173 'QueryPaymentOrders' test.out

#- 174 CreatePaymentOrderByDedicated
samples/cli/sample-apps Platform createPaymentOrderByDedicated \
    --namespace $AB_NAMESPACE \
    --body '{"currencyCode": "ZcXD522FMxHXswBQ", "currencyNamespace": "HpoT5QEZ1oi92AN1", "customParameters": {"MTqTwVwXk2yaV6II": {}, "8kBsf0nQDNdqkJXB": {}, "0Ksg6Q3UCVnupdOJ": {}}, "description": "DvbIJcErT4imjOuQ", "extOrderNo": "nIY2FptyJc4VaHRM", "extUserId": "5JDNaS4WjcqZZx6G", "itemType": "OPTIONBOX", "language": "hDrs-udbA", "metadata": {"ECQ09PWzS0ptOAmu": "6IRuNSGo38EAjUn9", "GX3cGI1h9a66WAAC": "AnIB9w8dL5D98O9V", "GCQEasMbGpBzWejs": "crrADziPElhbZPcV"}, "notifyUrl": "dbHZEizTa3BuRuTM", "omitNotification": false, "platform": "tcemFqSmZkYmdf9w", "price": 67, "recurringPaymentOrderNo": "0gIuvWGBMrBLhp19", "region": "TQBQebpcZnoyf6IQ", "returnUrl": "sBtTuJvblh0emFFa", "sandbox": false, "sku": "KtDaLa6Hp3OrmXuF", "subscriptionId": "KmlvmQMpUSwYaSBD", "targetNamespace": "Gk54IuPoOuMdCEfo", "targetUserId": "rvb788RpU1lyqgSQ", "title": "vzDjd5HQpu2VUsas"}' \
    > test.out 2>&1
eval_tap $? 174 'CreatePaymentOrderByDedicated' test.out

#- 175 ListExtOrderNoByExtTxId
samples/cli/sample-apps Platform listExtOrderNoByExtTxId \
    --namespace $AB_NAMESPACE \
    --extTxId 'HNiwEDpCPbcF3P1g' \
    > test.out 2>&1
eval_tap $? 175 'ListExtOrderNoByExtTxId' test.out

#- 176 GetPaymentOrder
samples/cli/sample-apps Platform getPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'MmOxLNUVDGt9j20m' \
    > test.out 2>&1
eval_tap $? 176 'GetPaymentOrder' test.out

#- 177 ChargePaymentOrder
samples/cli/sample-apps Platform chargePaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'NM9uw42rj7mLi5fm' \
    --body '{"extTxId": "SwCzcrWE34JxTbnd", "paymentMethod": "5sinNzsNNyt7UOGd", "paymentProvider": "WXPAY"}' \
    > test.out 2>&1
eval_tap $? 177 'ChargePaymentOrder' test.out

#- 178 RefundPaymentOrderByDedicated
samples/cli/sample-apps Platform refundPaymentOrderByDedicated \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'cwLs9xL7Ysw7Aoz9' \
    --body '{"description": "L8aDn7E9FvFXXOeN"}' \
    > test.out 2>&1
eval_tap $? 178 'RefundPaymentOrderByDedicated' test.out

#- 179 SimulatePaymentOrderNotification
samples/cli/sample-apps Platform simulatePaymentOrderNotification \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'bfLI0oOHQEyrDhg1' \
    --body '{"amount": 42, "currencyCode": "yDEhnXr9KLMVtSIB", "notifyType": "CHARGE", "paymentProvider": "NEONPAY", "salesTax": 16, "vat": 63}' \
    > test.out 2>&1
eval_tap $? 179 'SimulatePaymentOrderNotification' test.out

#- 180 GetPaymentOrderChargeStatus
samples/cli/sample-apps Platform getPaymentOrderChargeStatus \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'K5fZxtQmvwWKgbXP' \
    > test.out 2>&1
eval_tap $? 180 'GetPaymentOrderChargeStatus' test.out

#- 181 GetPsnEntitlementOwnership
samples/cli/sample-apps Platform getPsnEntitlementOwnership \
    --entitlementLabel 'YsCfF5JB2Z3U9Eun' \
    --namespace $AB_NAMESPACE \
    --body '{"accessToken": "JRYr2WWv2YZLL6lA", "serviceLabel": 22}' \
    > test.out 2>&1
eval_tap $? 181 'GetPsnEntitlementOwnership' test.out

#- 182 GetXboxEntitlementOwnership
samples/cli/sample-apps Platform getXboxEntitlementOwnership \
    --namespace $AB_NAMESPACE \
    --productSku 'THpoqLCDH2tHJZ4j' \
    --body '{"delegationToken": "s4RosQhkVnUKoKqB", "sandboxId": "8RhthPH5vMQTSw4g"}' \
    > test.out 2>&1
eval_tap $? 182 'GetXboxEntitlementOwnership' test.out

#- 183 GetPlatformEntitlementConfig
samples/cli/sample-apps Platform getPlatformEntitlementConfig \
    --namespace $AB_NAMESPACE \
    --platform 'GooglePlay' \
    > test.out 2>&1
eval_tap $? 183 'GetPlatformEntitlementConfig' test.out

#- 184 UpdatePlatformEntitlementConfig
samples/cli/sample-apps Platform updatePlatformEntitlementConfig \
    --namespace $AB_NAMESPACE \
    --platform 'GooglePlay' \
    --body '{"allowedPlatformOrigins": ["Twitch", "Twitch", "IOS"]}' \
    > test.out 2>&1
eval_tap $? 184 'UpdatePlatformEntitlementConfig' test.out

#- 185 GetPlatformWalletConfig
samples/cli/sample-apps Platform getPlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'IOS' \
    > test.out 2>&1
eval_tap $? 185 'GetPlatformWalletConfig' test.out

#- 186 UpdatePlatformWalletConfig
samples/cli/sample-apps Platform updatePlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Playstation' \
    --body '{"allowedBalanceOrigins": ["Playstation", "IOS", "System"]}' \
    > test.out 2>&1
eval_tap $? 186 'UpdatePlatformWalletConfig' test.out

#- 187 ResetPlatformWalletConfig
samples/cli/sample-apps Platform resetPlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Epic' \
    > test.out 2>&1
eval_tap $? 187 'ResetPlatformWalletConfig' test.out

#- 188 GetRevocationConfig
samples/cli/sample-apps Platform getRevocationConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 188 'GetRevocationConfig' test.out

#- 189 UpdateRevocationConfig
samples/cli/sample-apps Platform updateRevocationConfig \
    --namespace $AB_NAMESPACE \
    --body '{"entitlement": {"consumable": {"enabled": true, "strategy": "REVOKE_OR_REPORT"}, "durable": {"enabled": true, "strategy": "CUSTOM"}}, "wallet": {"enabled": true, "strategy": "CUSTOM"}}' \
    > test.out 2>&1
eval_tap $? 189 'UpdateRevocationConfig' test.out

#- 190 DeleteRevocationConfig
samples/cli/sample-apps Platform deleteRevocationConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 190 'DeleteRevocationConfig' test.out

#- 191 QueryRevocationHistories
samples/cli/sample-apps Platform queryRevocationHistories \
    --namespace $AB_NAMESPACE \
    --endTime 'qX7uA4Fd9tWMRptJ' \
    --limit '3' \
    --offset '22' \
    --source 'ORDER' \
    --startTime 'qCde12OlhUEGd21K' \
    --status 'SUCCESS' \
    --transactionId 'Tp1h0aF41IYochNx' \
    --userId 'cm5YgVosqzcvfE83' \
    > test.out 2>&1
eval_tap $? 191 'QueryRevocationHistories' test.out

#- 192 GetRevocationPluginConfig
samples/cli/sample-apps Platform getRevocationPluginConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 192 'GetRevocationPluginConfig' test.out

#- 193 UpdateRevocationPluginConfig
samples/cli/sample-apps Platform updateRevocationPluginConfig \
    --namespace $AB_NAMESPACE \
    --body '{"appConfig": {"appName": "z6yT2B99SGtwbWhO"}, "customConfig": {"connectionType": "INSECURE", "grpcServerAddress": "GOQ3XkSsLccRfbcc"}, "extendType": "CUSTOM"}' \
    > test.out 2>&1
eval_tap $? 193 'UpdateRevocationPluginConfig' test.out

#- 194 DeleteRevocationPluginConfig
samples/cli/sample-apps Platform deleteRevocationPluginConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 194 'DeleteRevocationPluginConfig' test.out

#- 195 UploadRevocationPluginConfigCertV2
samples/cli/sample-apps Platform uploadRevocationPluginConfigCertV2 \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 195 'UploadRevocationPluginConfigCertV2' test.out

#- 196 UploadRevocationPluginConfigCert
eval_tap 0 196 'UploadRevocationPluginConfigCert # SKIP deprecated' test.out

#- 197 CreateReward
samples/cli/sample-apps Platform createReward \
    --namespace $AB_NAMESPACE \
    --body '{"description": "7KcpZKCdKP5qhByc", "eventTopic": "wz4HCSVmNDQYOgtk", "maxAwarded": 68, "maxAwardedPerUser": 27, "namespaceExpression": "Ntfy0yXbmL6B7B4z", "rewardCode": "qeOPvLXGVVSHxpzR", "rewardConditions": [{"condition": "LTYmS2Z6ZJrWGH2A", "conditionName": "hzPf6SiojJSHAE3L", "eventName": "1o3mqyUX2fYYQSdR", "rewardItems": [{"duration": 21, "endDate": "1993-10-10T00:00:00Z", "identityType": "ITEM_ID", "itemId": "xy5lrGoTmd7WZhh1", "quantity": 35, "sku": "058WXsQ6hegBUvjz"}, {"duration": 44, "endDate": "1971-08-06T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "VMb662Gvy9g7bGao", "quantity": 84, "sku": "UnUz60DgyOMvhxIf"}, {"duration": 62, "endDate": "1998-03-23T00:00:00Z", "identityType": "ITEM_ID", "itemId": "w0TuFHetxrCpyYGi", "quantity": 25, "sku": "f9TBlx32dPMdSETE"}]}, {"condition": "7kMl7hq9h5EL308k", "conditionName": "w1BJuqKMaxoIHQqR", "eventName": "h44GbV6F7g54DJSv", "rewardItems": [{"duration": 99, "endDate": "1980-01-19T00:00:00Z", "identityType": "ITEM_ID", "itemId": "5zP2xGJY8Iz2CepR", "quantity": 87, "sku": "RKgpEmZXwvA6GB43"}, {"duration": 31, "endDate": "1983-10-19T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "vaquPuQvsyVSb6H3", "quantity": 91, "sku": "4l3KssqFvHMFEXKi"}, {"duration": 82, "endDate": "1980-05-24T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "SS7w8GpJ1Ws3FQtu", "quantity": 36, "sku": "9Yeoiz9adsss7U34"}]}, {"condition": "ZLPmDq1ng4CJPvzI", "conditionName": "kbaduyjZev8ULiSq", "eventName": "8j8xNmmph63od0yo", "rewardItems": [{"duration": 52, "endDate": "1990-12-21T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "6AJk7dwE1To4YHlb", "quantity": 83, "sku": "iynkkLGbq2wshaM2"}, {"duration": 68, "endDate": "1975-11-28T00:00:00Z", "identityType": "ITEM_ID", "itemId": "n1jKza3kGfX0tAqa", "quantity": 72, "sku": "7j84aQE8c6heuMif"}, {"duration": 53, "endDate": "1972-08-12T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "EWU66MhnZ2KMVQVe", "quantity": 60, "sku": "UD3aoBeP7bpWqfjc"}]}], "userIdExpression": "QXz82qw2rSncM8wF"}' \
    > test.out 2>&1
eval_tap $? 197 'CreateReward' test.out

#- 198 QueryRewards
samples/cli/sample-apps Platform queryRewards \
    --namespace $AB_NAMESPACE \
    --eventTopic 'xCf1TghhbcyxaU7E' \
    --limit '42' \
    --offset '10' \
    --sortBy '["rewardCode", "namespace:asc"]' \
    > test.out 2>&1
eval_tap $? 198 'QueryRewards' test.out

#- 199 ExportRewards
samples/cli/sample-apps Platform exportRewards \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 199 'ExportRewards' test.out

#- 200 ImportRewards
samples/cli/sample-apps Platform importRewards \
    --namespace $AB_NAMESPACE \
    --replaceExisting 'true' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 200 'ImportRewards' test.out

#- 201 GetReward
samples/cli/sample-apps Platform getReward \
    --namespace $AB_NAMESPACE \
    --rewardId 'U4J97mmwI2uUOkC4' \
    > test.out 2>&1
eval_tap $? 201 'GetReward' test.out

#- 202 UpdateReward
samples/cli/sample-apps Platform updateReward \
    --namespace $AB_NAMESPACE \
    --rewardId 'iJXJ9Mzv72XW4LCk' \
    --body '{"description": "UxsNEzLjwT0rovwg", "eventTopic": "6vqgnlJkw3lknVDd", "maxAwarded": 65, "maxAwardedPerUser": 40, "namespaceExpression": "kTNs8fFrxYpLJO8N", "rewardCode": "9fFgFiTQHHXgiVWY", "rewardConditions": [{"condition": "i2OK2oMP07BhJn0e", "conditionName": "GFROSAb8aL9YjEEU", "eventName": "kxKry5Dq1AIuIvrM", "rewardItems": [{"duration": 7, "endDate": "1978-01-14T00:00:00Z", "identityType": "ITEM_ID", "itemId": "mEscJNiB1wCasYrG", "quantity": 100, "sku": "Ol6SrkKug9wCewAS"}, {"duration": 6, "endDate": "1975-11-28T00:00:00Z", "identityType": "ITEM_ID", "itemId": "ENlrE0oQEJ8qVZ9E", "quantity": 73, "sku": "SIo1H1SuWzfEbjCH"}, {"duration": 3, "endDate": "1974-06-04T00:00:00Z", "identityType": "ITEM_ID", "itemId": "LObLXFZjCoKwnays", "quantity": 19, "sku": "YFN280fmvQnEQwoT"}]}, {"condition": "V2SeEseKX36o61Zp", "conditionName": "SP0QFDJCrMI2bbfj", "eventName": "vKCXLFRpss4Kp480", "rewardItems": [{"duration": 56, "endDate": "1978-09-12T00:00:00Z", "identityType": "ITEM_ID", "itemId": "i0zIhPcfAAYbleA8", "quantity": 27, "sku": "ptsnynW3wemd6ApY"}, {"duration": 51, "endDate": "1985-10-14T00:00:00Z", "identityType": "ITEM_ID", "itemId": "PJgHrhYrJ4Babj4P", "quantity": 33, "sku": "iPfnqMezB8j24vQM"}, {"duration": 47, "endDate": "1995-06-29T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "1EFEKxzQCP9ECiM5", "quantity": 15, "sku": "OSScNW0EfTIoQqCE"}]}, {"condition": "1tUwswaoVUX7Mgbk", "conditionName": "kzaQiSvA4Tit50Hq", "eventName": "mC8ObkwgF091AzyX", "rewardItems": [{"duration": 42, "endDate": "1994-12-06T00:00:00Z", "identityType": "ITEM_ID", "itemId": "KGBsgwDH1m1goH2Y", "quantity": 0, "sku": "akJbgQ6vAXrRyGzZ"}, {"duration": 1, "endDate": "1978-07-08T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "e9ANuAfV5m5rqsV6", "quantity": 60, "sku": "Kya9lb5RzpnKYUz5"}, {"duration": 23, "endDate": "1976-05-29T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "EZTYdOY9xAbwfCYs", "quantity": 76, "sku": "10LYqISe2dQRcryr"}]}], "userIdExpression": "lGNaPRi8pNvhfYrh"}' \
    > test.out 2>&1
eval_tap $? 202 'UpdateReward' test.out

#- 203 DeleteReward
samples/cli/sample-apps Platform deleteReward \
    --namespace $AB_NAMESPACE \
    --rewardId '0cZtitmMg4burYLn' \
    > test.out 2>&1
eval_tap $? 203 'DeleteReward' test.out

#- 204 CheckEventCondition
samples/cli/sample-apps Platform checkEventCondition \
    --namespace $AB_NAMESPACE \
    --rewardId 'lcQCyqmS4yXoH2Jv' \
    --body '{"payload": {"JQ7ehRjtKRWCPbkr": {}, "PvsUuenoFTVCbutQ": {}, "RdQrmt7OvbIqwDBk": {}}}' \
    > test.out 2>&1
eval_tap $? 204 'CheckEventCondition' test.out

#- 205 DeleteRewardConditionRecord
samples/cli/sample-apps Platform deleteRewardConditionRecord \
    --namespace $AB_NAMESPACE \
    --rewardId 'dTlVb3uMPStQ00qH' \
    --body '{"conditionName": "Nj6GlOH95XiofQoa", "userId": "IJXneyF2T5I9cL1R"}' \
    > test.out 2>&1
eval_tap $? 205 'DeleteRewardConditionRecord' test.out

#- 206 QuerySections
samples/cli/sample-apps Platform querySections \
    --namespace $AB_NAMESPACE \
    --end 'aqewCkVIxZH6lDXC' \
    --limit '60' \
    --offset '46' \
    --start 'J1d8jNNEXgDXp8hC' \
    --storeId 'RSvjHmuCbtAKBgq3' \
    --viewId 'LkEpREEWvvCJjrab' \
    > test.out 2>&1
eval_tap $? 206 'QuerySections' test.out

#- 207 CreateSection
samples/cli/sample-apps Platform createSection \
    --namespace $AB_NAMESPACE \
    --storeId 'axUJ08xXdp3mIpKl' \
    --body '{"active": false, "displayOrder": 24, "endDate": "1985-09-23T00:00:00Z", "ext": {"RuOVpFJx2xjZN9XM": {}, "BJiemuXqiLtVQw9U": {}, "GhbCsAP1GIRB9U4Y": {}}, "fixedPeriodRotationConfig": {"backfillType": "NONE", "duration": 12, "itemCount": 8, "rule": "SEQUENCE"}, "items": [{"id": "OOzTB3aKDXFAZuxo", "sku": "3bmIa4FiK51slrpz"}, {"id": "Y2ZK2jhazzhmti4l", "sku": "1nceOxGb0BZKCpo5"}, {"id": "GA4IRWUP2ofBpGmP", "sku": "kaZ1MaNrLGFLD41v"}], "localizations": {"i9LycXIlgj1QMZhJ": {"description": "B4LjJ9fDu1av7PgF", "localExt": {"yJZNhRf1E8ntoIFb": {}, "jHEvKqgc7PWTZVoa": {}, "UHaSiQOZwGgx7dTF": {}}, "longDescription": "bVZPmrF3duBeL8Nx", "title": "1g228dbx1IEfjzvF"}, "4T6Q8IxO0HeVvRMD": {"description": "chR29fkzf7I03sgU", "localExt": {"VrbSGMZsFItERzsb": {}, "K72MZZE7aHPjhC9r": {}, "LhRmzetJQ4C3Hbb6": {}}, "longDescription": "9divCQXDv254i205", "title": "po92jP2BUK22jsFr"}, "SqhSVt8aPv79cAnr": {"description": "8Sip2VsiIAAAjGzZ", "localExt": {"G463WzrPaMdwPDSo": {}, "kzQ5nm7DSqPy7rBT": {}, "1mDRrYmFctBi3TMo": {}}, "longDescription": "z8wzMarR65zHCmMy", "title": "S8iDPPJncLfamgy2"}}, "name": "zjr5c11hTz2RSyKz", "rotationType": "NONE", "startDate": "1981-01-03T00:00:00Z", "viewId": "iLglyso5g9vALpba"}' \
    > test.out 2>&1
eval_tap $? 207 'CreateSection' test.out

#- 208 PurgeExpiredSection
samples/cli/sample-apps Platform purgeExpiredSection \
    --namespace $AB_NAMESPACE \
    --storeId 'drQ1mawKGAVsJl6T' \
    > test.out 2>&1
eval_tap $? 208 'PurgeExpiredSection' test.out

#- 209 GetSection
samples/cli/sample-apps Platform getSection \
    --namespace $AB_NAMESPACE \
    --sectionId 'hoMcNM4lGhxiZEEY' \
    --storeId 'lVteYTVcTFGGrOG2' \
    > test.out 2>&1
eval_tap $? 209 'GetSection' test.out

#- 210 UpdateSection
samples/cli/sample-apps Platform updateSection \
    --namespace $AB_NAMESPACE \
    --sectionId '6DcSol49SjHbCkRK' \
    --storeId '0xWEntQvzfvOflDm' \
    --body '{"active": false, "displayOrder": 2, "endDate": "1986-09-24T00:00:00Z", "ext": {"2pkXhcaoHAjiwI2Q": {}, "x6njxQlqC0uIpqI2": {}, "vcj4bNwfpalUzVd4": {}}, "fixedPeriodRotationConfig": {"backfillType": "NONE", "duration": 6, "itemCount": 47, "rule": "LOOP"}, "items": [{"id": "IkNDeK1GURTsXB6l", "sku": "jA5ttRxwcZPfI8yR"}, {"id": "TQdMuWqTaliK7DAK", "sku": "AA11Qvq6kIUAj94N"}, {"id": "XRERUjttOzg38dhh", "sku": "Qlxt4WghJPLf8z6M"}], "localizations": {"T2ImWrncoWYJRGQw": {"description": "AUWFVsI56ydDeoc2", "localExt": {"CLm93ZIKpulp1jN9": {}, "WWkBAHIPeMJpraLQ": {}, "eMpUluY25P6fDaWv": {}}, "longDescription": "4pK0fnAJl9WlASdu", "title": "RoBq0BVOhm6gpOzD"}, "iwUspiiWsMxjLK1b": {"description": "kJZe9lEOTcdTOZtb", "localExt": {"MngM2nv1zA81q6u5": {}, "K8fYsOLfZ1s31k0r": {}, "PQVkDcKDfcIUryQQ": {}}, "longDescription": "jf2s19H6mZtCMPph", "title": "xqhXuYyavE8hO8b5"}, "nNH95hXPKvGRed1C": {"description": "FTpKz8vab7kEY1eg", "localExt": {"qGK3jydEf81nBXFX": {}, "IrOpAyOYW8VVejXm": {}, "DnM8hKRpp51AzPxg": {}}, "longDescription": "FAsxNeuMUAqm5wlS", "title": "SXcrOClNnq3Q24us"}}, "name": "bPzxo4R3wCUJswU2", "rotationType": "FIXED_PERIOD", "startDate": "1985-03-11T00:00:00Z", "viewId": "Ggy6jyRTx6FFNejd"}' \
    > test.out 2>&1
eval_tap $? 210 'UpdateSection' test.out

#- 211 DeleteSection
samples/cli/sample-apps Platform deleteSection \
    --namespace $AB_NAMESPACE \
    --sectionId 'lYH1ibZiPrkjVMyy' \
    --storeId 'yARie90pidu9hGDr' \
    > test.out 2>&1
eval_tap $? 211 'DeleteSection' test.out

#- 212 ListStores
samples/cli/sample-apps Platform listStores \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 212 'ListStores' test.out

#- 213 CreateStore
samples/cli/sample-apps Platform createStore \
    --namespace $AB_NAMESPACE \
    --body '{"defaultLanguage": "28aapMBMPOk5yRKz", "defaultRegion": "27vE15GLQWY57e6m", "description": "B2yaSc6l5vOdeewK", "supportedLanguages": ["yXgGLzhpmZGhAbiR", "9n3cFmNtSSHYCkiH", "ha1mek62a49nl9N3"], "supportedRegions": ["z3WGMh5x9LmoBXbY", "uTx5hGPwrT9vm7Yw", "7h9Od1xggQ86DViK"], "title": "uzPMGsxb6FGuhlS9"}' \
    > test.out 2>&1
eval_tap $? 213 'CreateStore' test.out

#- 214 GetCatalogDefinition
samples/cli/sample-apps Platform getCatalogDefinition \
    --namespace $AB_NAMESPACE \
    --catalogType 'SECTION' \
    > test.out 2>&1
eval_tap $? 214 'GetCatalogDefinition' test.out

#- 215 DownloadCSVTemplates
samples/cli/sample-apps Platform downloadCSVTemplates \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 215 'DownloadCSVTemplates' test.out

#- 216 ExportStoreByCSV
samples/cli/sample-apps Platform exportStoreByCSV \
    --namespace $AB_NAMESPACE \
    --body '{"catalogType": "ITEM", "fieldsToBeIncluded": ["hI065F0aaTd3qZFU", "XLyvrQOoLouPcOi4", "gTSSqOZL6qNDmrjs"], "idsToBeExported": ["QV9B1w8a65E3sXrn", "TJxrsgaVEMXO9l0T", "yIIA0m2BueQdL2Rx"], "storeId": "IPwhg92OUXOX08Lv"}' \
    > test.out 2>&1
eval_tap $? 216 'ExportStoreByCSV' test.out

#- 217 ImportStore
eval_tap 0 217 'ImportStore # SKIP deprecated' test.out

#- 218 GetPublishedStore
samples/cli/sample-apps Platform getPublishedStore \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 218 'GetPublishedStore' test.out

#- 219 DeletePublishedStore
samples/cli/sample-apps Platform deletePublishedStore \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 219 'DeletePublishedStore' test.out

#- 220 GetPublishedStoreBackup
samples/cli/sample-apps Platform getPublishedStoreBackup \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 220 'GetPublishedStoreBackup' test.out

#- 221 RollbackPublishedStore
samples/cli/sample-apps Platform rollbackPublishedStore \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 221 'RollbackPublishedStore' test.out

#- 222 GetStore
samples/cli/sample-apps Platform getStore \
    --namespace $AB_NAMESPACE \
    --storeId 'ur3LGw0ZUNM9rc5R' \
    > test.out 2>&1
eval_tap $? 222 'GetStore' test.out

#- 223 UpdateStore
samples/cli/sample-apps Platform updateStore \
    --namespace $AB_NAMESPACE \
    --storeId 'ZowKuQrrD7AXTVAe' \
    --body '{"defaultLanguage": "qplIOQTCUxIg03sB", "defaultRegion": "wR5aTbjBNXIGvkXB", "description": "jNJBHBlbbApRjc3l", "supportedLanguages": ["ujrAfbl6jNHXwWnz", "jrnvHS4UlAOAQnYI", "PRRgJRFbhRRJN3bI"], "supportedRegions": ["GdFNYu3lOo3hy9lj", "0uqvtKrxAs4FZK8N", "AKmVqtLCkM7edaGz"], "title": "cR4V0GgtDTZ4Snt9"}' \
    > test.out 2>&1
eval_tap $? 223 'UpdateStore' test.out

#- 224 DeleteStore
samples/cli/sample-apps Platform deleteStore \
    --namespace $AB_NAMESPACE \
    --storeId 'tYxMoXe6HMZJbhJj' \
    > test.out 2>&1
eval_tap $? 224 'DeleteStore' test.out

#- 225 QueryChanges
samples/cli/sample-apps Platform queryChanges \
    --namespace $AB_NAMESPACE \
    --storeId 'hdoeQks9fEkha7Ew' \
    --action 'CREATE' \
    --itemSku 'Qp7a6WxNWZGNM65a' \
    --itemType 'BUNDLE' \
    --limit '10' \
    --offset '82' \
    --selected 'true' \
    --sortBy '["updatedAt", "createdAt:asc"]' \
    --status 'UNPUBLISHED' \
    --type 'VIEW' \
    --updatedAtEnd 'XXjwoMxmFO24f597' \
    --updatedAtStart '3csaFz82glG2jpPB' \
    --withTotal 'false' \
    > test.out 2>&1
eval_tap $? 225 'QueryChanges' test.out

#- 226 PublishAll
samples/cli/sample-apps Platform publishAll \
    --namespace $AB_NAMESPACE \
    --storeId 'jbtSR52bzeCJ3vWV' \
    > test.out 2>&1
eval_tap $? 226 'PublishAll' test.out

#- 227 PublishSelected
samples/cli/sample-apps Platform publishSelected \
    --namespace $AB_NAMESPACE \
    --storeId 'XiP3gtTQB9aDySHb' \
    > test.out 2>&1
eval_tap $? 227 'PublishSelected' test.out

#- 228 SelectAllRecords
samples/cli/sample-apps Platform selectAllRecords \
    --namespace $AB_NAMESPACE \
    --storeId 'cD2t8E6LUmQmj1PN' \
    > test.out 2>&1
eval_tap $? 228 'SelectAllRecords' test.out

#- 229 SelectAllRecordsByCriteria
samples/cli/sample-apps Platform selectAllRecordsByCriteria \
    --namespace $AB_NAMESPACE \
    --storeId 'oQ3Azt5dI9aqdmR4' \
    --action 'CREATE' \
    --itemSku 'PrTx68nMjJcNNHGt' \
    --itemType 'BUNDLE' \
    --selected 'true' \
    --type 'CATEGORY' \
    --updatedAtEnd '0Ff1al4yFpQ6TAeo' \
    --updatedAtStart 'Fg91cbeeyQr49VNz' \
    > test.out 2>&1
eval_tap $? 229 'SelectAllRecordsByCriteria' test.out

#- 230 GetStatistic
samples/cli/sample-apps Platform getStatistic \
    --namespace $AB_NAMESPACE \
    --storeId 'q3dDpxuTlicgWCBz' \
    --action 'DELETE' \
    --itemSku 'ngDUhP7IaWk08rlT' \
    --itemType 'CODE' \
    --type 'CATEGORY' \
    --updatedAtEnd 'DSIP4TYLRU2UjSzq' \
    --updatedAtStart '758zNX5vSaTN5hYi' \
    > test.out 2>&1
eval_tap $? 230 'GetStatistic' test.out

#- 231 UnselectAllRecords
samples/cli/sample-apps Platform unselectAllRecords \
    --namespace $AB_NAMESPACE \
    --storeId 'pkDibDxfd00z55jO' \
    > test.out 2>&1
eval_tap $? 231 'UnselectAllRecords' test.out

#- 232 SelectRecord
samples/cli/sample-apps Platform selectRecord \
    --changeId '44dBgdgaSdpQxKUA' \
    --namespace $AB_NAMESPACE \
    --storeId 'qfGN75Oo6C245zdq' \
    > test.out 2>&1
eval_tap $? 232 'SelectRecord' test.out

#- 233 UnselectRecord
samples/cli/sample-apps Platform unselectRecord \
    --changeId 'Ke0Y2CKdVBV2pZGj' \
    --namespace $AB_NAMESPACE \
    --storeId 'Rh7beHjtqeHMf0qO' \
    > test.out 2>&1
eval_tap $? 233 'UnselectRecord' test.out

#- 234 CloneStore
samples/cli/sample-apps Platform cloneStore \
    --namespace $AB_NAMESPACE \
    --storeId '05u32LLLWAX5CNxI' \
    --targetStoreId 'L5zDxNEMNosWrfhU' \
    > test.out 2>&1
eval_tap $? 234 'CloneStore' test.out

#- 235 ExportStore
eval_tap 0 235 'ExportStore # SKIP deprecated' test.out

#- 236 QueryImportHistory
samples/cli/sample-apps Platform queryImportHistory \
    --namespace $AB_NAMESPACE \
    --storeId 'ja2N7oWcdALBX0Uh' \
    --end 'zqKBwOSUSGQMs9Pg' \
    --limit '43' \
    --offset '73' \
    --sortBy 'PNMbwxZayswZCy8B' \
    --start '2pJgEh9piqN7FQRs' \
    --success 'true' \
    > test.out 2>&1
eval_tap $? 236 'QueryImportHistory' test.out

#- 237 ImportStoreByCSV
samples/cli/sample-apps Platform importStoreByCSV \
    --namespace $AB_NAMESPACE \
    --storeId 'nJ43FNxhuPRWshR7' \
    --category 'tmp.dat' \
    --display 'tmp.dat' \
    --item 'tmp.dat' \
    --notes 'kHYmZLw0p1HdElX9' \
    --section 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 237 'ImportStoreByCSV' test.out

#- 238 QuerySubscriptions
samples/cli/sample-apps Platform querySubscriptions \
    --namespace $AB_NAMESPACE \
    --chargeStatus 'SETUP' \
    --itemId '2DxlyyoFZtiPnSCa' \
    --limit '89' \
    --offset '36' \
    --sku 'ttGMBu1gFiA6SXWa' \
    --status 'CANCELLED' \
    --subscribedBy 'PLATFORM' \
    --userId 'vMtMoHszu5OYqHnu' \
    > test.out 2>&1
eval_tap $? 238 'QuerySubscriptions' test.out

#- 239 RecurringChargeSubscription
samples/cli/sample-apps Platform recurringChargeSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'CQltbNUaxpp5rA3n' \
    > test.out 2>&1
eval_tap $? 239 'RecurringChargeSubscription' test.out

#- 240 GetTicketDynamic
samples/cli/sample-apps Platform getTicketDynamic \
    --boothName '33FjV7rfTIkWgnGV' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 240 'GetTicketDynamic' test.out

#- 241 DecreaseTicketSale
samples/cli/sample-apps Platform decreaseTicketSale \
    --boothName 'SUQnndFNrr7ZlhJq' \
    --namespace $AB_NAMESPACE \
    --body '{"orderNo": "kXAbvDDGwHwrPeO3"}' \
    > test.out 2>&1
eval_tap $? 241 'DecreaseTicketSale' test.out

#- 242 GetTicketBoothID
samples/cli/sample-apps Platform getTicketBoothID \
    --boothName 'LQqJG2qG75xNdTpM' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 242 'GetTicketBoothID' test.out

#- 243 IncreaseTicketSale
samples/cli/sample-apps Platform increaseTicketSale \
    --boothName 'ldzJ899pxlA9TS7y' \
    --namespace $AB_NAMESPACE \
    --body '{"count": 59, "orderNo": "csiPtfH6Qb68Z1Nt"}' \
    > test.out 2>&1
eval_tap $? 243 'IncreaseTicketSale' test.out

#- 244 Commit
samples/cli/sample-apps Platform commit \
    --namespace $AB_NAMESPACE \
    --body '{"actions": [{"operations": [{"creditPayload": {"balanceOrigin": "Steam", "count": 4, "currencyCode": "DAoubZyzCRPfM8lV", "expireAt": "1971-03-21T00:00:00Z"}, "debitPayload": {"count": 25, "currencyCode": "SlFfHEc8GWD47vL0", "walletPlatform": "Playstation"}, "fulFillItemPayload": {"count": 0, "entitlementCollectionId": "gaR39ZAu20HxQXre", "entitlementOrigin": "Nintendo", "itemIdentity": "oD19MQvaBb3ZkdPK", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 87, "entitlementId": "B6InXX5exW3iqA8P"}, "type": "FULFILL_ITEM"}, {"creditPayload": {"balanceOrigin": "Nintendo", "count": 15, "currencyCode": "AcAWpsGVFaabF57q", "expireAt": "1980-03-23T00:00:00Z"}, "debitPayload": {"count": 56, "currencyCode": "wdZMD1AhomueAncU", "walletPlatform": "GooglePlay"}, "fulFillItemPayload": {"count": 90, "entitlementCollectionId": "egVZp0msj8czAOHh", "entitlementOrigin": "GooglePlay", "itemIdentity": "WDIUPd9vXJgNhXVL", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 68, "entitlementId": "htwph5WrSZC8cHzt"}, "type": "REVOKE_ENTITLEMENT"}, {"creditPayload": {"balanceOrigin": "GooglePlay", "count": 45, "currencyCode": "l7huPXxEd9WqcDpB", "expireAt": "1998-01-21T00:00:00Z"}, "debitPayload": {"count": 13, "currencyCode": "Zlsr1EHrbEPppuAU", "walletPlatform": "Epic"}, "fulFillItemPayload": {"count": 70, "entitlementCollectionId": "wjLPvieENsh1fkwD", "entitlementOrigin": "System", "itemIdentity": "Pxz0wv7WR6H9rf72", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 62, "entitlementId": "mTs0QEYjF3yi1JNT"}, "type": "REVOKE_ENTITLEMENT"}], "userId": "pdGEOJoIeDXyAaQj"}, {"operations": [{"creditPayload": {"balanceOrigin": "Playstation", "count": 96, "currencyCode": "mIPy9Y339bSAiuMb", "expireAt": "1997-09-27T00:00:00Z"}, "debitPayload": {"count": 0, "currencyCode": "328Ox7M04xz20wDV", "walletPlatform": "Other"}, "fulFillItemPayload": {"count": 43, "entitlementCollectionId": "RPkAE4f4mTHYpa7R", "entitlementOrigin": "Other", "itemIdentity": "14Hd0Bn65ZOCy1gl", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 59, "entitlementId": "6lvfwd5wzCXcVzFO"}, "type": "REVOKE_ENTITLEMENT"}, {"creditPayload": {"balanceOrigin": "Oculus", "count": 37, "currencyCode": "cWQ7ys2nlqFZNQxy", "expireAt": "1997-01-07T00:00:00Z"}, "debitPayload": {"count": 70, "currencyCode": "CEX2RfsNVNBB39tJ", "walletPlatform": "GooglePlay"}, "fulFillItemPayload": {"count": 84, "entitlementCollectionId": "eTy8BuR1W7MQgLEO", "entitlementOrigin": "Steam", "itemIdentity": "O2tdXIv1xXeUvrss", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 76, "entitlementId": "sGNzSpXoEpJTeDhc"}, "type": "CREDIT_WALLET"}, {"creditPayload": {"balanceOrigin": "IOS", "count": 4, "currencyCode": "UO2V6mynQY3cJEmA", "expireAt": "1978-12-13T00:00:00Z"}, "debitPayload": {"count": 20, "currencyCode": "vJctotTmwJrknQkF", "walletPlatform": "Nintendo"}, "fulFillItemPayload": {"count": 68, "entitlementCollectionId": "T6tsU2fDPAgIXOiu", "entitlementOrigin": "IOS", "itemIdentity": "sSP12C7wcY2Q9euz", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 13, "entitlementId": "r7WTCu0om3cxU3Et"}, "type": "CREDIT_WALLET"}], "userId": "mWJLX81W3gioqfh0"}, {"operations": [{"creditPayload": {"balanceOrigin": "Other", "count": 84, "currencyCode": "Vllll1afIaTzgJPo", "expireAt": "1978-04-11T00:00:00Z"}, "debitPayload": {"count": 58, "currencyCode": "76nvA5ECRsYmRl3Q", "walletPlatform": "Xbox"}, "fulFillItemPayload": {"count": 16, "entitlementCollectionId": "OJ1alMyzGm1da6Dd", "entitlementOrigin": "Other", "itemIdentity": "xMYcGbVspTlvG0rs", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 89, "entitlementId": "ZFkybZ50Kg5CNZI8"}, "type": "REVOKE_ENTITLEMENT"}, {"creditPayload": {"balanceOrigin": "Playstation", "count": 86, "currencyCode": "PuspDgsJzeod9w8n", "expireAt": "1973-09-01T00:00:00Z"}, "debitPayload": {"count": 18, "currencyCode": "WBr3OHWTujrwaiEI", "walletPlatform": "Oculus"}, "fulFillItemPayload": {"count": 40, "entitlementCollectionId": "fXegkx0uk43TlgJQ", "entitlementOrigin": "Other", "itemIdentity": "xan6TCAqXjmQLtdv", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 14, "entitlementId": "cZMGQQv3r7t4gDzD"}, "type": "CREDIT_WALLET"}, {"creditPayload": {"balanceOrigin": "Nintendo", "count": 68, "currencyCode": "tLIVu8nLmSFGnh0m", "expireAt": "1971-06-15T00:00:00Z"}, "debitPayload": {"count": 6, "currencyCode": "4J7ydhiRqpNu04bo", "walletPlatform": "Epic"}, "fulFillItemPayload": {"count": 35, "entitlementCollectionId": "S1aT9DagvnS6Tzxz", "entitlementOrigin": "Oculus", "itemIdentity": "lfd6PGNXEX2BXwYM", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 77, "entitlementId": "KuQr8mYAVX6wWJ1Z"}, "type": "CREDIT_WALLET"}], "userId": "WehW6A2rpjtjzZBf"}], "metadata": {"AzB6YGwpuQpH9KpC": {}, "NMYyXyNXMc8rg08X": {}, "qE3FEgGYrxpUsdmw": {}}, "needPreCheck": false, "transactionId": "sdyt6KsIpWJ6Mu0k", "type": "c3AP9XJYE9eQJigq"}' \
    > test.out 2>&1
eval_tap $? 244 'Commit' test.out

#- 245 GetTradeHistoryByCriteria
samples/cli/sample-apps Platform getTradeHistoryByCriteria \
    --namespace $AB_NAMESPACE \
    --limit '37' \
    --offset '58' \
    --status 'INIT' \
    --type 'RQFiYbvQJPioWNSd' \
    --userId 'KfGmu44wKZWPCSqR' \
    > test.out 2>&1
eval_tap $? 245 'GetTradeHistoryByCriteria' test.out

#- 246 GetTradeHistoryByTransactionId
samples/cli/sample-apps Platform getTradeHistoryByTransactionId \
    --namespace $AB_NAMESPACE \
    --transactionId 'gRcm4Qb4egxroV9o' \
    > test.out 2>&1
eval_tap $? 246 'GetTradeHistoryByTransactionId' test.out

#- 247 UnlockSteamUserAchievement
samples/cli/sample-apps Platform unlockSteamUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'NBHXCs4ouhMn1H1i' \
    --body '{"achievements": [{"id": "sZkrMK69NRo4xKgN", "value": 55}, {"id": "VIaWjuI2b3wHzUVK", "value": 18}, {"id": "h8K511qNGXfHcm2e", "value": 66}], "steamUserId": "8e0QVZfMuj0X1IyO"}' \
    > test.out 2>&1
eval_tap $? 247 'UnlockSteamUserAchievement' test.out

#- 248 GetXblUserAchievements
samples/cli/sample-apps Platform getXblUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId 'vvW0vc5INTX6ShpZ' \
    --xboxUserId '77nK8VKwhMQKMDV1' \
    > test.out 2>&1
eval_tap $? 248 'GetXblUserAchievements' test.out

#- 249 UpdateXblUserAchievement
samples/cli/sample-apps Platform updateXblUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'Ti41qhyOn8XxtK08' \
    --body '{"achievements": [{"id": "kG9llll6M1pTE9BR", "percentComplete": 15}, {"id": "1GRgUQ60tgIwf3xY", "percentComplete": 40}, {"id": "OWi1RUXZVozUkmu6", "percentComplete": 7}], "serviceConfigId": "LVcjb82HEJxR8pOk", "titleId": "7JAumWmxa1YPkwtA", "xboxUserId": "pNA2nBN6uhGNKLiB"}' \
    > test.out 2>&1
eval_tap $? 249 'UpdateXblUserAchievement' test.out

#- 250 AnonymizeCampaign
samples/cli/sample-apps Platform anonymizeCampaign \
    --namespace $AB_NAMESPACE \
    --userId '1yCSyFCGytlgiIgu' \
    > test.out 2>&1
eval_tap $? 250 'AnonymizeCampaign' test.out

#- 251 AnonymizeEntitlement
samples/cli/sample-apps Platform anonymizeEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'sm69W95ePxkjxgll' \
    > test.out 2>&1
eval_tap $? 251 'AnonymizeEntitlement' test.out

#- 252 AnonymizeFulfillment
samples/cli/sample-apps Platform anonymizeFulfillment \
    --namespace $AB_NAMESPACE \
    --userId 'hLdxIBXXoUDDjucp' \
    > test.out 2>&1
eval_tap $? 252 'AnonymizeFulfillment' test.out

#- 253 AnonymizeIntegration
samples/cli/sample-apps Platform anonymizeIntegration \
    --namespace $AB_NAMESPACE \
    --userId 'AvjLGEbyFv9U8ZnK' \
    > test.out 2>&1
eval_tap $? 253 'AnonymizeIntegration' test.out

#- 254 AnonymizeOrder
samples/cli/sample-apps Platform anonymizeOrder \
    --namespace $AB_NAMESPACE \
    --userId 'oILsiR6yJSC0PHoe' \
    > test.out 2>&1
eval_tap $? 254 'AnonymizeOrder' test.out

#- 255 AnonymizePayment
samples/cli/sample-apps Platform anonymizePayment \
    --namespace $AB_NAMESPACE \
    --userId 'J2zA5uDCPuXiysaB' \
    > test.out 2>&1
eval_tap $? 255 'AnonymizePayment' test.out

#- 256 AnonymizeRevocation
samples/cli/sample-apps Platform anonymizeRevocation \
    --namespace $AB_NAMESPACE \
    --userId 'xzfM0avtWHsRKn41' \
    > test.out 2>&1
eval_tap $? 256 'AnonymizeRevocation' test.out

#- 257 AnonymizeSubscription
samples/cli/sample-apps Platform anonymizeSubscription \
    --namespace $AB_NAMESPACE \
    --userId 'DEritFO8W1N0zHOY' \
    > test.out 2>&1
eval_tap $? 257 'AnonymizeSubscription' test.out

#- 258 AnonymizeWallet
samples/cli/sample-apps Platform anonymizeWallet \
    --namespace $AB_NAMESPACE \
    --userId 'DhknFjjW90P0YgrC' \
    > test.out 2>&1
eval_tap $? 258 'AnonymizeWallet' test.out

#- 259 GetUserDLCByPlatform
samples/cli/sample-apps Platform getUserDLCByPlatform \
    --namespace $AB_NAMESPACE \
    --userId '8d4aHYA5O8Tml86H' \
    --type 'OCULUS' \
    > test.out 2>&1
eval_tap $? 259 'GetUserDLCByPlatform' test.out

#- 260 GetUserDLC
samples/cli/sample-apps Platform getUserDLC \
    --namespace $AB_NAMESPACE \
    --userId 'ZpmKKprFmGIfRKhn' \
    --includeAllNamespaces 'true' \
    --status 'FULFILLED' \
    --type 'STEAM' \
    > test.out 2>&1
eval_tap $? 260 'GetUserDLC' test.out

#- 261 QueryUserEntitlements
samples/cli/sample-apps Platform queryUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'yxjQboVJHnsVSfgw' \
    --activeOnly 'true' \
    --appType 'DEMO' \
    --collectionId 'UVq19YUzELcCgkmM' \
    --entitlementClazz 'LOOTBOX' \
    --entitlementName '7RFOwY8j6bzxVH61' \
    --features '["gG9SkQ5vjfhrYq5N", "ZJqtmLDYvc3HszPt", "zLX3yxoKLvzLhey0"]' \
    --fuzzyMatchName 'true' \
    --ignoreActiveDate 'true' \
    --itemId '["RdWIe9gyaSBmT7yE", "3dGAAtAOysyVD2b0", "gF8kQWZPRomnUjw9"]' \
    --limit '96' \
    --offset '81' \
    --origin 'IOS' \
    > test.out 2>&1
eval_tap $? 261 'QueryUserEntitlements' test.out

#- 262 GrantUserEntitlement
samples/cli/sample-apps Platform grantUserEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'RsTlluX7eUftuRJp' \
    --body '[{"collectionId": "BTREGYpAvOMHzGdB", "endDate": "1994-10-04T00:00:00Z", "grantedCode": "HE7Gurzdsiq8i8RZ", "itemId": "N2aX5I4pgxvEWh5k", "itemNamespace": "hrs3Jz5CjM43h1mn", "language": "BJV_277", "metadata": {"skQFxq8O9HdR45Ru": {}, "1fWFi7kSfmAmYCbF": {}, "t4P2oNbzVXB2BX4P": {}}, "origin": "System", "quantity": 51, "region": "e9qbj0unmYiIe2hr", "source": "ACHIEVEMENT", "startDate": "1986-10-26T00:00:00Z", "storeId": "WghiXWOuauRmrnWp"}, {"collectionId": "BtINH8CCLJtRWqak", "endDate": "1977-06-17T00:00:00Z", "grantedCode": "bQfaHgi5qnvHmVSU", "itemId": "UEuhIpHtWO23JUjR", "itemNamespace": "mTEUtkXSNCiVolLf", "language": "SJ_Uwyv_385", "metadata": {"0fjvfscYn3ydyjkS": {}, "7mAtYkYtoy6fPg7L": {}, "sa8llFwD2CCW51eq": {}}, "origin": "GooglePlay", "quantity": 80, "region": "aBfbpgnbLWBpKqvD", "source": "IAP", "startDate": "1987-06-22T00:00:00Z", "storeId": "IwVzCYDmlIsGbP5u"}, {"collectionId": "zW5LgKF5uHnHtLUd", "endDate": "1974-12-28T00:00:00Z", "grantedCode": "DTNo0cTORN2M2Otz", "itemId": "dMErivlqtA0koS5r", "itemNamespace": "zc8Bv8EIZdUaIrbd", "language": "TZc", "metadata": {"AJUUZ7GuuW6wK54C": {}, "SrB5LBgtU5AA39xa": {}, "Gb2ner0kdEyRVgMe": {}}, "origin": "IOS", "quantity": 56, "region": "Qh9AjGeN6Xdzz4Iz", "source": "GIFT", "startDate": "1977-06-04T00:00:00Z", "storeId": "GhOrJ959IrNBoBDL"}]' \
    > test.out 2>&1
eval_tap $? 262 'GrantUserEntitlement' test.out

#- 263 GetUserAppEntitlementByAppId
samples/cli/sample-apps Platform getUserAppEntitlementByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'GITiWJlqJCQjo5k3' \
    --activeOnly 'true' \
    --appId 'qCyljo6BLoT0WgGK' \
    > test.out 2>&1
eval_tap $? 263 'GetUserAppEntitlementByAppId' test.out

#- 264 QueryUserEntitlementsByAppType
samples/cli/sample-apps Platform queryUserEntitlementsByAppType \
    --namespace $AB_NAMESPACE \
    --userId 'SahWYgLRX2iOYyQV' \
    --activeOnly 'false' \
    --limit '26' \
    --offset '72' \
    --appType 'DLC' \
    > test.out 2>&1
eval_tap $? 264 'QueryUserEntitlementsByAppType' test.out

#- 265 GetUserEntitlementsByIds
samples/cli/sample-apps Platform getUserEntitlementsByIds \
    --namespace $AB_NAMESPACE \
    --userId 'GKFGok5lMPiWAlEJ' \
    --ids '["MndObyFhiYqEqPlS", "rIoK3OSKh53vbK7i", "S7goP9UcrC7eSKul"]' \
    > test.out 2>&1
eval_tap $? 265 'GetUserEntitlementsByIds' test.out

#- 266 GetUserEntitlementByItemId
samples/cli/sample-apps Platform getUserEntitlementByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'NgOqfGcqDQyhPYpr' \
    --activeOnly 'true' \
    --entitlementClazz 'ENTITLEMENT' \
    --platform 'kiTG2zIjDg3keCYY' \
    --itemId 'hr4PxvzKkzI0y1Lo' \
    > test.out 2>&1
eval_tap $? 266 'GetUserEntitlementByItemId' test.out

#- 267 GetUserActiveEntitlementsByItemIds
samples/cli/sample-apps Platform getUserActiveEntitlementsByItemIds \
    --namespace $AB_NAMESPACE \
    --userId '8uGTRQyArZLS6ldS' \
    --ids '["2eSuSu9yafqxuxIh", "9n8ZKkEShhDHzpIy", "s1bKo94li80BtDuT"]' \
    --platform 'X0Q1eBBCieNGsiGS' \
    > test.out 2>&1
eval_tap $? 267 'GetUserActiveEntitlementsByItemIds' test.out

#- 268 GetUserEntitlementBySku
samples/cli/sample-apps Platform getUserEntitlementBySku \
    --namespace $AB_NAMESPACE \
    --userId 'nBSh8jVdA0iHbEdU' \
    --activeOnly 'true' \
    --entitlementClazz 'MEDIA' \
    --platform '4iGFV40FweCeviae' \
    --sku 'Dcg2qxPLhIkprebx' \
    > test.out 2>&1
eval_tap $? 268 'GetUserEntitlementBySku' test.out

#- 269 ExistsAnyUserActiveEntitlement
samples/cli/sample-apps Platform existsAnyUserActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'iuLiNtT1qeejtEh8' \
    --appIds '["DbXrBHIEF66fpXeS", "Wi7sEF04mWfaesVo", "IWiEQwiAHVp6a5cx"]' \
    --itemIds '["5u8pCKKJlihVaw4U", "ZKKXLgWsUMgPhid8", "9hecP4E859xGQOVS"]' \
    --platform 'TfJazlJNH14RSob8' \
    --skus '["OQ8vYHedGJSHve9c", "7NWdkpSh3mtEe1RG", "3zQz61rXE0HnrzmU"]' \
    > test.out 2>&1
eval_tap $? 269 'ExistsAnyUserActiveEntitlement' test.out

#- 270 ExistsAnyUserActiveEntitlementByItemIds
samples/cli/sample-apps Platform existsAnyUserActiveEntitlementByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'LDFwSf80XPAgLecl' \
    --platform '0y3Q9NxUX0eD3bik' \
    --itemIds '["U88hDFtCqtG9k4qI", "fFjxQgc4MsRfXJTh", "DgWVeBmAObniyX0r"]' \
    > test.out 2>&1
eval_tap $? 270 'ExistsAnyUserActiveEntitlementByItemIds' test.out

#- 271 GetUserAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform getUserAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'stg4I7eTQnteBzzD' \
    --appId '6seANz4B3YhFhzAr' \
    > test.out 2>&1
eval_tap $? 271 'GetUserAppEntitlementOwnershipByAppId' test.out

#- 272 GetUserEntitlementOwnershipByItemId
samples/cli/sample-apps Platform getUserEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --userId '7ESwS2QhaJMylttL' \
    --entitlementClazz 'ENTITLEMENT' \
    --platform 'GDLA8FXkAhnEnhPA' \
    --itemId 'a5jA63njoJbduw8G' \
    > test.out 2>&1
eval_tap $? 272 'GetUserEntitlementOwnershipByItemId' test.out

#- 273 GetUserEntitlementOwnershipByItemIds
samples/cli/sample-apps Platform getUserEntitlementOwnershipByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'AtLvyYRJGW2OZt1C' \
    --ids '["FJUH1MMzidLAEyOC", "Xb1g4XgeVF78ArYA", "p3nejQQmHMmIW3jS"]' \
    --platform '7oLNXXXGzUQNEqEp' \
    > test.out 2>&1
eval_tap $? 273 'GetUserEntitlementOwnershipByItemIds' test.out

#- 274 GetUserEntitlementOwnershipBySku
samples/cli/sample-apps Platform getUserEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --userId 'YNlxL0Rm91HHK1FU' \
    --entitlementClazz 'ENTITLEMENT' \
    --platform 'KDVHLdxZ8cDhoYeX' \
    --sku '8242LnF2g7VMz1h0' \
    > test.out 2>&1
eval_tap $? 274 'GetUserEntitlementOwnershipBySku' test.out

#- 275 RevokeAllEntitlements
samples/cli/sample-apps Platform revokeAllEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'UIO73eXgB1JtzcPG' \
    > test.out 2>&1
eval_tap $? 275 'RevokeAllEntitlements' test.out

#- 276 RevokeUserEntitlements
samples/cli/sample-apps Platform revokeUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'EDPGyziwXtXALlm7' \
    --entitlementIds 'qRs146bNYKGbaVF6' \
    > test.out 2>&1
eval_tap $? 276 'RevokeUserEntitlements' test.out

#- 277 GetUserEntitlement
samples/cli/sample-apps Platform getUserEntitlement \
    --entitlementId '6Ov0DCtzIlvKlgWZ' \
    --namespace $AB_NAMESPACE \
    --userId 'PsED92Lmh3yfQpP8' \
    > test.out 2>&1
eval_tap $? 277 'GetUserEntitlement' test.out

#- 278 UpdateUserEntitlement
samples/cli/sample-apps Platform updateUserEntitlement \
    --entitlementId 'rQRPANSOlCDLsP5p' \
    --namespace $AB_NAMESPACE \
    --userId 'L69kIRfjFqKmnYRN' \
    --body '{"collectionId": "jcyvAmqCdmB7JCTh", "endDate": "1979-09-17T00:00:00Z", "nullFieldList": ["2BpxW0d36Znnh6Uu", "5bg7bKo6f6U2LvbJ", "tzfyvnPV689q7qIm"], "origin": "Oculus", "reason": "5a2AoB6We3P9wLsH", "startDate": "1973-08-21T00:00:00Z", "status": "ACTIVE", "useCount": 17}' \
    > test.out 2>&1
eval_tap $? 278 'UpdateUserEntitlement' test.out

#- 279 ConsumeUserEntitlement
samples/cli/sample-apps Platform consumeUserEntitlement \
    --entitlementId 'Xb6P0ClZKJ5h0hEi' \
    --namespace $AB_NAMESPACE \
    --userId 'tf1mbml1KQbmEL3G' \
    --body '{"metadata": {"iV6oxs10dnr3wuep": {}, "VrjhlIgPIoqtxqtx": {}, "xnUcWnbhREY8s6WC": {}}, "options": ["rUhbWsqqmB93zL4c", "Is6vkV3dI583g1tw", "9VbUzZVNpC7YEF2M"], "platform": "2ZjfSrQEfe2lMZtT", "requestId": "GeAz13WAWKqvEqzL", "useCount": 38}' \
    > test.out 2>&1
eval_tap $? 279 'ConsumeUserEntitlement' test.out

#- 280 DisableUserEntitlement
samples/cli/sample-apps Platform disableUserEntitlement \
    --entitlementId 'OAaeX9QEAe8aBztW' \
    --namespace $AB_NAMESPACE \
    --userId 'rubkqe4EkmM8MJIk' \
    > test.out 2>&1
eval_tap $? 280 'DisableUserEntitlement' test.out

#- 281 EnableUserEntitlement
samples/cli/sample-apps Platform enableUserEntitlement \
    --entitlementId 'SUz63J0i7Com2PEW' \
    --namespace $AB_NAMESPACE \
    --userId 'Wv1fQwfV6vi0frjs' \
    > test.out 2>&1
eval_tap $? 281 'EnableUserEntitlement' test.out

#- 282 GetUserEntitlementHistories
samples/cli/sample-apps Platform getUserEntitlementHistories \
    --entitlementId '9JCahsZsrjUTbCfD' \
    --namespace $AB_NAMESPACE \
    --userId 'yivrYKiVhQwzNPx8' \
    > test.out 2>&1
eval_tap $? 282 'GetUserEntitlementHistories' test.out

#- 283 RevokeUserEntitlement
samples/cli/sample-apps Platform revokeUserEntitlement \
    --entitlementId 'v9YdDr6ZCP2SFi4q' \
    --namespace $AB_NAMESPACE \
    --userId 'qseyPYoAyuooDxDK' \
    --body '{"metadata": {"96tOW8toDKPLbnGh": {}, "hrKKF8GXtfyC46Er": {}, "1jnplr7eG1l1qA3J": {}}}' \
    > test.out 2>&1
eval_tap $? 283 'RevokeUserEntitlement' test.out

#- 284 RevokeUserEntitlementByUseCount
samples/cli/sample-apps Platform revokeUserEntitlementByUseCount \
    --entitlementId 'cR2RT1RtQGVAZbDr' \
    --namespace $AB_NAMESPACE \
    --userId '1WXwK65pCCEwSBjB' \
    --body '{"reason": "41K8wINLHXs77Cxb", "useCount": 69}' \
    > test.out 2>&1
eval_tap $? 284 'RevokeUserEntitlementByUseCount' test.out

#- 285 PreCheckRevokeUserEntitlementByUseCount
samples/cli/sample-apps Platform preCheckRevokeUserEntitlementByUseCount \
    --entitlementId 'yqTpdZm2wqQ5kayx' \
    --namespace $AB_NAMESPACE \
    --userId 'jQqcusAByqu2N2S6' \
    --quantity '55' \
    > test.out 2>&1
eval_tap $? 285 'PreCheckRevokeUserEntitlementByUseCount' test.out

#- 286 RevokeUseCount
eval_tap 0 286 'RevokeUseCount # SKIP deprecated' test.out

#- 287 SellUserEntitlement
samples/cli/sample-apps Platform sellUserEntitlement \
    --entitlementId 'G2rHHcW2mz2li5AX' \
    --namespace $AB_NAMESPACE \
    --userId '34u4IAgvbPuXChks' \
    --body '{"platform": "j2NMtdRNVIVizAb6", "requestId": "XdlWjFYl7JVWx2S8", "useCount": 0}' \
    > test.out 2>&1
eval_tap $? 287 'SellUserEntitlement' test.out

#- 288 FulfillItem
samples/cli/sample-apps Platform fulfillItem \
    --namespace $AB_NAMESPACE \
    --userId 'zYZHwmo4BuMf6pcz' \
    --body '{"duration": 69, "endDate": "1971-12-23T00:00:00Z", "entitlementCollectionId": "UYJZko6EJPGDW437", "entitlementOrigin": "Xbox", "itemId": "zcbIu4rRSbfIphn6", "itemSku": "LjWhJrf0GBcVY6iR", "language": "v1uBmFOu7wmhnLk9", "metadata": {"d88TNn44b0HlukdZ": {}, "dsUbGU4HLIb8ViVa": {}, "ZqOOJUlji4dkNddV": {}}, "order": {"currency": {"currencyCode": "tPYQLJwV3eRkP9cj", "currencySymbol": "vyetgekNPfoaYYWP", "currencyType": "VIRTUAL", "decimals": 65, "namespace": "pDhmNKOywvmchztj"}, "ext": {"lBThK56fxEPKssdr": {}, "l8lnCJwyLHngj4go": {}, "TCeQToTiCYPfiivO": {}}, "free": true}, "orderNo": "nj6xozhA0GR2P0mV", "origin": "Other", "overrideBundleItemQty": {"JBjUU3VMKHqy9vJE": 95, "o5a97ct8MW713Qn1": 36, "ibOyz29FIcqMLTbl": 75}, "quantity": 85, "region": "wtnXwPcN7fvQdNd4", "source": "OTHER", "startDate": "1976-08-23T00:00:00Z", "storeId": "wyp2GOfC0HKxpzF9"}' \
    > test.out 2>&1
eval_tap $? 288 'FulfillItem' test.out

#- 289 RedeemCode
samples/cli/sample-apps Platform redeemCode \
    --namespace $AB_NAMESPACE \
    --userId 'KwIL3ZJcNe0rn1WR' \
    --body '{"code": "MAlJ3B6Gt6kS7YMv", "language": "oUv", "region": "ZruymqQcR7w5WZZN"}' \
    > test.out 2>&1
eval_tap $? 289 'RedeemCode' test.out

#- 290 PreCheckFulfillItem
samples/cli/sample-apps Platform preCheckFulfillItem \
    --namespace $AB_NAMESPACE \
    --userId 'r2OOiYJPx24mh5gu' \
    --body '{"itemId": "InA9LDrLcwNrZl4g", "itemSku": "aXfuPdupaXOHVzsR", "quantity": 45}' \
    > test.out 2>&1
eval_tap $? 290 'PreCheckFulfillItem' test.out

#- 291 FulfillRewards
samples/cli/sample-apps Platform fulfillRewards \
    --namespace $AB_NAMESPACE \
    --userId 'Ukwp94A0pLxGSkHs' \
    --body '{"entitlementCollectionId": "PyFdLmA5crN5Xafu", "entitlementOrigin": "Nintendo", "metadata": {"7hBky9ntPDECwmgU": {}, "yplj7YH9FiBubE4I": {}, "fyu9Msm1l4Tp8D65": {}}, "origin": "Other", "rewards": [{"currency": {"currencyCode": "fss6vEkyaH8CyebI", "namespace": "9EYMJ6UgmK6z64cJ"}, "item": {"itemId": "X4KkPARfEeKww0To", "itemName": "v3Jnte3846Lgj4u6", "itemSku": "EUqxTDJZapsQeiuI", "itemType": "lmlAdRAqnHoikvMF"}, "quantity": 39, "type": "CURRENCY"}, {"currency": {"currencyCode": "1tms53pCWPRCpfbj", "namespace": "xAYhmiezZSB0aF5k"}, "item": {"itemId": "qbAgNzuLnFH8ZMQ0", "itemName": "rSo0WzmMqPLS5lOE", "itemSku": "e0D69pK8d7cjago7", "itemType": "14kBD7jGh2SAzcYo"}, "quantity": 67, "type": "ITEM"}, {"currency": {"currencyCode": "DX9xvD2aeUMvAU6E", "namespace": "ARn0dpkYF6wwk2DR"}, "item": {"itemId": "0aUudHzz1rfPFoOJ", "itemName": "Sxj53yuH6QKSWhX4", "itemSku": "Y7AU2gjWCXPvzROr", "itemType": "dG1Gug6d9C6CUraH"}, "quantity": 90, "type": "CURRENCY"}], "source": "PROMOTION", "transactionId": "hqMj9lTVtdDeCHHs"}' \
    > test.out 2>&1
eval_tap $? 291 'FulfillRewards' test.out

#- 292 QueryUserIAPOrders
samples/cli/sample-apps Platform queryUserIAPOrders \
    --namespace $AB_NAMESPACE \
    --userId 'Tf9MgkUoiUpTIhz3' \
    --endTime 'Lcns7PEiLvPjkzy3' \
    --limit '9' \
    --offset '98' \
    --productId 'SLu5dtFLXVO0LRa3' \
    --startTime 'uV11j91YCOAJDlDR' \
    --status 'PARTIAL_REVOKED' \
    --type 'STADIA' \
    > test.out 2>&1
eval_tap $? 292 'QueryUserIAPOrders' test.out

#- 293 QueryAllUserIAPOrders
samples/cli/sample-apps Platform queryAllUserIAPOrders \
    --namespace $AB_NAMESPACE \
    --userId 'Wtwp0QTn4rTGh0Wh' \
    > test.out 2>&1
eval_tap $? 293 'QueryAllUserIAPOrders' test.out

#- 294 QueryUserIAPConsumeHistory
samples/cli/sample-apps Platform queryUserIAPConsumeHistory \
    --namespace $AB_NAMESPACE \
    --userId 'NCt7xbLfRGVG79R9' \
    --endTime 'fYzUr0WwzjQw6vuO' \
    --limit '78' \
    --offset '42' \
    --startTime 'e7SvhkpihjFXdf1c' \
    --status 'SUCCESS' \
    --type 'OCULUS' \
    > test.out 2>&1
eval_tap $? 294 'QueryUserIAPConsumeHistory' test.out

#- 295 MockFulfillIAPItem
samples/cli/sample-apps Platform mockFulfillIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'qiaEm1SdkxmPYgYd' \
    --body '{"itemIdentityType": "ITEM_SKU", "language": "VrX", "productId": "8Nye7MybPIdQ5eZ1", "region": "kwZEG15OYXb8ybfd", "transactionId": "r4eTqLhL01irpTG0", "type": "OCULUS"}' \
    > test.out 2>&1
eval_tap $? 295 'MockFulfillIAPItem' test.out

#- 296 AdminSyncOculusSubscriptions
samples/cli/sample-apps Platform adminSyncOculusSubscriptions \
    --namespace $AB_NAMESPACE \
    --userId '7JoS4LPWZs7N3aAt' \
    --body '{"skus": ["WBVav60fgDiwEoFx", "sICcgTScYMoPhdq0", "lvJpVzLdgYqDCKKt"]}' \
    > test.out 2>&1
eval_tap $? 296 'AdminSyncOculusSubscriptions' test.out

#- 297 AdminGetIAPOrderLineItems
samples/cli/sample-apps Platform adminGetIAPOrderLineItems \
    --iapOrderNo 'Z0b3xkKbFDeMlD0K' \
    --namespace $AB_NAMESPACE \
    --userId 'oJj4DvZlq5ZkX0AO' \
    > test.out 2>&1
eval_tap $? 297 'AdminGetIAPOrderLineItems' test.out

#- 298 AdminSyncSteamAbnormalTransaction
samples/cli/sample-apps Platform adminSyncSteamAbnormalTransaction \
    --namespace $AB_NAMESPACE \
    --userId 'yvRhNQfx6XfRaLWq' \
    > test.out 2>&1
eval_tap $? 298 'AdminSyncSteamAbnormalTransaction' test.out

#- 299 AdminSyncSteamIAPByTransaction
samples/cli/sample-apps Platform adminSyncSteamIAPByTransaction \
    --namespace $AB_NAMESPACE \
    --userId 'U0UCLqjn3QiC5Pma' \
    --body '{"orderId": "aVxyNHI9yICUgMS2"}' \
    > test.out 2>&1
eval_tap $? 299 'AdminSyncSteamIAPByTransaction' test.out

#- 300 QueryUserThirdPartySubscription
samples/cli/sample-apps Platform queryUserThirdPartySubscription \
    --namespace $AB_NAMESPACE \
    --userId 'EYx7ujrf8JvauWvN' \
    --activeOnly 'false' \
    --groupId '28F80dG7bt2eTg8R' \
    --limit '42' \
    --offset '2' \
    --platform 'TWITCH' \
    --productId '1xAvgmOcLGzp9rO0' \
    > test.out 2>&1
eval_tap $? 300 'QueryUserThirdPartySubscription' test.out

#- 301 GetThirdPartyPlatformSubscriptionOwnershipByGroupId
samples/cli/sample-apps Platform getThirdPartyPlatformSubscriptionOwnershipByGroupId \
    --namespace $AB_NAMESPACE \
    --platform 'GOOGLE' \
    --userId 'LmumSXCHrV2QOZt4' \
    --groupId '43VBblXxrW5yNwEP' \
    > test.out 2>&1
eval_tap $? 301 'GetThirdPartyPlatformSubscriptionOwnershipByGroupId' test.out

#- 302 GetThirdPartyPlatformSubscriptionOwnershipByProductId
samples/cli/sample-apps Platform getThirdPartyPlatformSubscriptionOwnershipByProductId \
    --namespace $AB_NAMESPACE \
    --platform 'OCULUS' \
    --userId 'X3agd87J2QUtbEef' \
    --productId 'AmIxn0dtx5oqtMMJ' \
    > test.out 2>&1
eval_tap $? 302 'GetThirdPartyPlatformSubscriptionOwnershipByProductId' test.out

#- 303 QueryUserThirdPartySubscriptionTransactions
samples/cli/sample-apps Platform queryUserThirdPartySubscriptionTransactions \
    --namespace $AB_NAMESPACE \
    --userId 'xjCKY8JmU8yzbLlB' \
    --activeOnly 'false' \
    --groupId 'tQVviYbunoI6uidS' \
    --limit '76' \
    --offset '98' \
    --platform 'STADIA' \
    --productId 'REGBcqX4kukZcFEI' \
    > test.out 2>&1
eval_tap $? 303 'QueryUserThirdPartySubscriptionTransactions' test.out

#- 304 GetThirdPartySubscriptionDetails
samples/cli/sample-apps Platform getThirdPartySubscriptionDetails \
    --id 'iSHCCoxJ45ht0Xlm' \
    --namespace $AB_NAMESPACE \
    --userId 'aVaVBf9IgtB5iHaK' \
    > test.out 2>&1
eval_tap $? 304 'GetThirdPartySubscriptionDetails' test.out

#- 305 GetSubscriptionHistory
samples/cli/sample-apps Platform getSubscriptionHistory \
    --id '1SRD85xDs0AKsyq2' \
    --namespace $AB_NAMESPACE \
    --userId 'jGKCA5vd7bL80wGM' \
    --limit '73' \
    --offset '71' \
    > test.out 2>&1
eval_tap $? 305 'GetSubscriptionHistory' test.out

#- 306 SyncSubscriptionTransaction
samples/cli/sample-apps Platform syncSubscriptionTransaction \
    --id 'XJLx0sSY2cWG7dlx' \
    --namespace $AB_NAMESPACE \
    --userId 'zRt4l01a8Tso0A8W' \
    > test.out 2>&1
eval_tap $? 306 'SyncSubscriptionTransaction' test.out

#- 307 GetThirdPartyUserSubscriptionDetails
samples/cli/sample-apps Platform getThirdPartyUserSubscriptionDetails \
    --id 'yRzMdn8ENQW3NsBK' \
    --namespace $AB_NAMESPACE \
    --userId 'rJIupiuGxTvrdjp2' \
    > test.out 2>&1
eval_tap $? 307 'GetThirdPartyUserSubscriptionDetails' test.out

#- 308 SyncSubscription
samples/cli/sample-apps Platform syncSubscription \
    --id 'eVlVdJrtQzlbZEb6' \
    --namespace $AB_NAMESPACE \
    --userId 'zwSUY1p2bP6iBj1B' \
    > test.out 2>&1
eval_tap $? 308 'SyncSubscription' test.out

#- 309 AdminSyncTwitchDropsEntitlement
samples/cli/sample-apps Platform adminSyncTwitchDropsEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'jmhtchEN9PVT2uli' \
    --body '{"gameId": "wGYUgdQYycxqyQCi", "language": "BBFx_mGuj", "region": "LfdGQgHbR1cGX7bE"}' \
    > test.out 2>&1
eval_tap $? 309 'AdminSyncTwitchDropsEntitlement' test.out

#- 310 QueryUserOrders
samples/cli/sample-apps Platform queryUserOrders \
    --namespace $AB_NAMESPACE \
    --userId '8fdAIFASgo0zjlUf' \
    --discounted 'false' \
    --itemId 'xsPdfYTYimSqnaF8' \
    --limit '25' \
    --offset '77' \
    --status 'FULFILL_FAILED' \
    > test.out 2>&1
eval_tap $? 310 'QueryUserOrders' test.out

#- 311 AdminCreateUserOrder
samples/cli/sample-apps Platform adminCreateUserOrder \
    --namespace $AB_NAMESPACE \
    --userId 'sbJxWurHCuMFi5Ni' \
    --body '{"currencyCode": "Y9HWzFsKIqwfYUmC", "currencyNamespace": "oNSoaWTZBQUZPXl6", "discountCodes": ["Yyfdy3W01EszYBME", "XdsHAFegHiKwDqeq", "4FHHtdETts3CBAPR"], "discountedPrice": 5, "entitlementPlatform": "Playstation", "ext": {"URwOGMh7KUAE15zL": {}, "x0HKTeh3rGvZHfna": {}, "vmBFnHp7LBb5QMJ8": {}}, "itemId": "E9urEe45snp8XRre", "language": "KSX5KbYuSRgicPha", "options": {"skipPriceValidation": false}, "platform": "GooglePlay", "price": 34, "quantity": 7, "region": "yiBC82Lv4GQ5C6iJ", "returnUrl": "vzeUjxpBeC54YnVP", "sandbox": false, "sectionId": "6Pba9EBVvhoUGoEe"}' \
    > test.out 2>&1
eval_tap $? 311 'AdminCreateUserOrder' test.out

#- 312 CountOfPurchasedItem
samples/cli/sample-apps Platform countOfPurchasedItem \
    --namespace $AB_NAMESPACE \
    --userId '4wbnLYnHpWktUKOH' \
    --itemId 'ndqLls45Jduty9zE' \
    > test.out 2>&1
eval_tap $? 312 'CountOfPurchasedItem' test.out

#- 313 GetUserOrder
samples/cli/sample-apps Platform getUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'MuBNsGmKEAsqIza9' \
    --userId 'kBdXQ5hNQ1BVPR02' \
    > test.out 2>&1
eval_tap $? 313 'GetUserOrder' test.out

#- 314 UpdateUserOrderStatus
samples/cli/sample-apps Platform updateUserOrderStatus \
    --namespace $AB_NAMESPACE \
    --orderNo 'KOFRQKISBPt0wTuz' \
    --userId 'hX3NyUmLT2YxaXTO' \
    --body '{"status": "CHARGEBACK", "statusReason": "36UjU0z7kOnHoxWR"}' \
    > test.out 2>&1
eval_tap $? 314 'UpdateUserOrderStatus' test.out

#- 315 FulfillUserOrder
samples/cli/sample-apps Platform fulfillUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'KIsjMrQZoicJUWNA' \
    --userId 'unWzbm61AXpWJXdK' \
    > test.out 2>&1
eval_tap $? 315 'FulfillUserOrder' test.out

#- 316 GetUserOrderGrant
eval_tap 0 316 'GetUserOrderGrant # SKIP deprecated' test.out

#- 317 GetUserOrderHistories
samples/cli/sample-apps Platform getUserOrderHistories \
    --namespace $AB_NAMESPACE \
    --orderNo 'zS2Y86YBS7RBbwAB' \
    --userId '1DKz1l72tQpKxxPG' \
    > test.out 2>&1
eval_tap $? 317 'GetUserOrderHistories' test.out

#- 318 ProcessUserOrderNotification
samples/cli/sample-apps Platform processUserOrderNotification \
    --namespace $AB_NAMESPACE \
    --orderNo 'pgg71LfEOphOb9t4' \
    --userId '0bzIshzKRkd7Vm8Q' \
    --body '{"additionalData": {"cardSummary": "ZbLpSN9ewWfrNweM"}, "authorisedTime": "1985-02-16T00:00:00Z", "chargebackReversedTime": "1976-11-10T00:00:00Z", "chargebackTime": "1985-04-22T00:00:00Z", "chargedTime": "1974-06-09T00:00:00Z", "createdTime": "1986-04-06T00:00:00Z", "currency": {"currencyCode": "74uHMHx4GbO0unCP", "currencySymbol": "CuRpEtEvbRUXb8m3", "currencyType": "VIRTUAL", "decimals": 83, "namespace": "13A8nlbo8j7fOGrf"}, "customParameters": {"o9Xos0UcLFIJT7iY": {}, "Lo5kjFN5BFhc9JjR": {}, "3gHd1Ln9raqh0BLt": {}}, "extOrderNo": "1CM9CzXXv4PJGK1M", "extTxId": "8xvTE8CcklKlpHtq", "extUserId": "YWHwbcoEcCo3Srxk", "issuedAt": "1993-10-16T00:00:00Z", "metadata": {"uovxKJpMb6Ftsnva": "XW3s2jv4CJ6x6AHL", "V4mNU8yl3pznjknV": "UFeDIZasjkZM2TPi", "n2KyeuZ7bOrxfmxJ": "LsDYvSrag753ryPG"}, "namespace": "LBYeRkW5iL2RvBto", "nonceStr": "Qwgtqhs8F4Hiyb4C", "paymentData": {"discountAmount": 56, "discountCode": "s4YLHPH1orxfW4pr", "subtotalPrice": 55, "tax": 10, "totalPrice": 17}, "paymentMethod": "xof5qCplTsJjMeyy", "paymentMethodFee": 77, "paymentOrderNo": "w4dgbcwupmDDYvyS", "paymentProvider": "XSOLLA", "paymentProviderFee": 39, "paymentStationUrl": "G2GZ7IctAsHeKnkA", "price": 21, "refundedTime": "1992-03-04T00:00:00Z", "salesTax": 83, "sandbox": true, "sku": "MFe7QxCilnGOxvHE", "status": "DELETED", "statusReason": "DQEd3fqUpNjmHxHF", "subscriptionId": "EeD1NDITHvziXwby", "subtotalPrice": 31, "targetNamespace": "ntARkWNldayewbfl", "targetUserId": "77JoaYXlRHSFW4tB", "tax": 50, "totalPrice": 23, "totalTax": 30, "txEndTime": "1977-04-18T00:00:00Z", "type": "1Q6cl2dHtRH2VVFr", "userId": "bXpGjgVgGdzkAeza", "vat": 17}' \
    > test.out 2>&1
eval_tap $? 318 'ProcessUserOrderNotification' test.out

#- 319 DownloadUserOrderReceipt
samples/cli/sample-apps Platform downloadUserOrderReceipt \
    --namespace $AB_NAMESPACE \
    --orderNo 'd4tWuFmxYPTadDXw' \
    --userId '1V8v5N0kAVguQjZJ' \
    > test.out 2>&1
eval_tap $? 319 'DownloadUserOrderReceipt' test.out

#- 320 CreateUserPaymentOrder
samples/cli/sample-apps Platform createUserPaymentOrder \
    --namespace $AB_NAMESPACE \
    --userId '7Pu5zO4F0GULUQ1f' \
    --body '{"currencyCode": "k5ropSEhE7eSFqkK", "currencyNamespace": "rqxDWV4EPLovIYdB", "customParameters": {"9ZL8Q4CCuN8S3Odu": {}, "f4NRi9S4RGJ8sYuO": {}, "N4gl2tEc9V7FzB5v": {}}, "description": "jI7BSyREc8xfAaRa", "extOrderNo": "WD2kvWsmSABruwHZ", "extUserId": "Mt6dT802szmUaJ75", "itemType": "BUNDLE", "language": "TUz-QbZW", "metadata": {"iDaPZHDunmMNM7bh": "aCodrdcEEysvLDJg", "VN3w3kn3hv3IySt1": "b9gMqXl8cfpQBWIz", "ctrzdao1VOkF6tTN": "PGwX3peIqEiD0BTG"}, "notifyUrl": "afawuGx51XlyighL", "omitNotification": true, "platform": "zRaRJCMVSvwqcWsd", "price": 50, "recurringPaymentOrderNo": "M7C0Nm9wVwPavOcv", "region": "9qdJf9rOBcsauETs", "returnUrl": "Fwi96VKAamQFYZLd", "sandbox": false, "sku": "KLwqxSA4bewmxgh2", "subscriptionId": "AZLcpbLHnKhgPFn8", "title": "VERTi4yiEH2n3TW9"}' \
    > test.out 2>&1
eval_tap $? 320 'CreateUserPaymentOrder' test.out

#- 321 RefundUserPaymentOrder
samples/cli/sample-apps Platform refundUserPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo '74FNlfIagGHuHzyj' \
    --userId '3WTLm3zS1jj6W6RW' \
    --body '{"description": "ph6RIEovXgogdMkc"}' \
    > test.out 2>&1
eval_tap $? 321 'RefundUserPaymentOrder' test.out

#- 322 GetUserPlatformAccountClosureHistories
samples/cli/sample-apps Platform getUserPlatformAccountClosureHistories \
    --namespace $AB_NAMESPACE \
    --userId 'eNPSECU8VCk4vBTn' \
    > test.out 2>&1
eval_tap $? 322 'GetUserPlatformAccountClosureHistories' test.out

#- 323 ApplyUserRedemption
samples/cli/sample-apps Platform applyUserRedemption \
    --namespace $AB_NAMESPACE \
    --userId 'zYgLlq0cb3Fz8Qe9' \
    --body '{"code": "f8zPGmba65EAtSZE", "orderNo": "8qi7liAL5kMOnTRW"}' \
    > test.out 2>&1
eval_tap $? 323 'ApplyUserRedemption' test.out

#- 324 DoRevocation
samples/cli/sample-apps Platform doRevocation \
    --namespace $AB_NAMESPACE \
    --userId 'R7NJsLujrJ7vkDgE' \
    --body '{"meta": {"R7mlN6EsiCYgsFMm": {}, "coHoSfo8hMKapjfk": {}, "7lEacbkhZN045NWH": {}}, "reason": "vtSTQQCV6xdGAVsj", "requestId": "SCivDbT8pidF3T1U", "revokeEntries": [{"currency": {"balanceOrigin": "Nintendo", "currencyCode": "m4MYjxAf3ZXM2sLn", "namespace": "BpPmo8VvbNXhZRK7"}, "entitlement": {"entitlementId": "qbTLyRepdLDGmceS"}, "item": {"entitlementOrigin": "Steam", "itemIdentity": "acSwCFSkMniusIfn", "itemIdentityType": "ITEM_SKU", "origin": "Steam"}, "quantity": 26, "type": "ENTITLEMENT"}, {"currency": {"balanceOrigin": "Xbox", "currencyCode": "Stb8ATaXUXyEG7M8", "namespace": "V5a8DYBR8Qp70Doh"}, "entitlement": {"entitlementId": "IN4vi1gfW3Oi8tUi"}, "item": {"entitlementOrigin": "GooglePlay", "itemIdentity": "i3yEuCqsvP4Xkrto", "itemIdentityType": "ITEM_SKU", "origin": "Steam"}, "quantity": 46, "type": "ITEM"}, {"currency": {"balanceOrigin": "Playstation", "currencyCode": "xRkQLSjON76XVTli", "namespace": "wy0eAaTAqnIbvodg"}, "entitlement": {"entitlementId": "GjDIg7ga2AYqQd92"}, "item": {"entitlementOrigin": "Xbox", "itemIdentity": "yfUMtrgcVslN3YC2", "itemIdentityType": "ITEM_SKU", "origin": "Twitch"}, "quantity": 9, "type": "ENTITLEMENT"}], "source": "DLC", "transactionId": "Frd4RuOvq0WV1Nar"}' \
    > test.out 2>&1
eval_tap $? 324 'DoRevocation' test.out

#- 325 RegisterXblSessions
samples/cli/sample-apps Platform registerXblSessions \
    --namespace $AB_NAMESPACE \
    --userId 'MLxWfpKqdVowgk2E' \
    --body '{"gameSessionId": "2emPw5B9cy8UtKZN", "payload": {"Wtu5QDdM1aY2Bh1T": {}, "tptHVXY5WakO4fDP": {}, "EmqtYApmQwPSPgC6": {}}, "scid": "ZJ68gBHFPQSibk1I", "sessionTemplateName": "wrUsMdxintwhlpOx"}' \
    > test.out 2>&1
eval_tap $? 325 'RegisterXblSessions' test.out

#- 326 QueryUserSubscriptions
samples/cli/sample-apps Platform queryUserSubscriptions \
    --namespace $AB_NAMESPACE \
    --userId '0s8tSzL6nC2v1DOy' \
    --chargeStatus 'NEVER' \
    --itemId 'ACJFqFFXb1G0fhzX' \
    --limit '57' \
    --offset '7' \
    --sku 'pQbBwF2WlJqWdOFj' \
    --status 'INIT' \
    --subscribedBy 'USER' \
    > test.out 2>&1
eval_tap $? 326 'QueryUserSubscriptions' test.out

#- 327 GetUserSubscriptionActivities
samples/cli/sample-apps Platform getUserSubscriptionActivities \
    --namespace $AB_NAMESPACE \
    --userId 'd5fZh8xBpXSOQTJI' \
    --excludeSystem 'false' \
    --limit '99' \
    --offset '64' \
    --subscriptionId 'kj48h4OflkqhvMoU' \
    > test.out 2>&1
eval_tap $? 327 'GetUserSubscriptionActivities' test.out

#- 328 PlatformSubscribeSubscription
samples/cli/sample-apps Platform platformSubscribeSubscription \
    --namespace $AB_NAMESPACE \
    --userId 'klHaRZJC8h0eNloV' \
    --body '{"grantDays": 69, "itemId": "S4hNzNEBfoNdkCfY", "language": "wLKPCXVd3Hf4QVA0", "reason": "qPZSizdu2rlPa0ly", "region": "inJ4QO1EkoI5kZrG", "source": "b9tHYf2kglOj42DE"}' \
    > test.out 2>&1
eval_tap $? 328 'PlatformSubscribeSubscription' test.out

#- 329 CheckUserSubscriptionSubscribableByItemId
samples/cli/sample-apps Platform checkUserSubscriptionSubscribableByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'gjTVIqo39GjmjFkF' \
    --itemId 'Dcp20HBxSwik8A76' \
    > test.out 2>&1
eval_tap $? 329 'CheckUserSubscriptionSubscribableByItemId' test.out

#- 330 GetUserSubscription
samples/cli/sample-apps Platform getUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'vOqfym8mKy8ASvGM' \
    --userId 'uDlVGQ96nC2ST1xU' \
    > test.out 2>&1
eval_tap $? 330 'GetUserSubscription' test.out

#- 331 DeleteUserSubscription
samples/cli/sample-apps Platform deleteUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'liPzuYszXnXDy6GK' \
    --userId '5cDtX3nJKR0RdJiq' \
    > test.out 2>&1
eval_tap $? 331 'DeleteUserSubscription' test.out

#- 332 CancelSubscription
samples/cli/sample-apps Platform cancelSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'I3iNyzeW8vidjyJm' \
    --userId 'sIBwtnkVPjYBzL5c' \
    --force 'false' \
    --body '{"immediate": false, "reason": "Dk0oTHXlKTmQtZb8"}' \
    > test.out 2>&1
eval_tap $? 332 'CancelSubscription' test.out

#- 333 GrantDaysToSubscription
samples/cli/sample-apps Platform grantDaysToSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'pOBOoELlxorMRprs' \
    --userId 'BlBMtigWAFTp8jkJ' \
    --body '{"grantDays": 32, "reason": "TSWZPx6JLLEC6ltv"}' \
    > test.out 2>&1
eval_tap $? 333 'GrantDaysToSubscription' test.out

#- 334 GetUserSubscriptionBillingHistories
samples/cli/sample-apps Platform getUserSubscriptionBillingHistories \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'Ot0FQb9RrrvifqGb' \
    --userId 'jIfYeNlhIIHDoJY8' \
    --excludeFree 'true' \
    --limit '84' \
    --offset '48' \
    > test.out 2>&1
eval_tap $? 334 'GetUserSubscriptionBillingHistories' test.out

#- 335 ProcessUserSubscriptionNotification
samples/cli/sample-apps Platform processUserSubscriptionNotification \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'MnV9Da4ABIxWFGfh' \
    --userId '0ZVx1YdR9Gnfz0Or' \
    --body '{"additionalData": {"cardSummary": "AQrkEcnDyzUejugH"}, "authorisedTime": "1986-09-05T00:00:00Z", "chargebackReversedTime": "1981-01-19T00:00:00Z", "chargebackTime": "1980-08-04T00:00:00Z", "chargedTime": "1996-08-17T00:00:00Z", "createdTime": "1990-04-05T00:00:00Z", "currency": {"currencyCode": "oTZsXiBQpZcfRZOs", "currencySymbol": "qT7A68ScX8CAq6gi", "currencyType": "VIRTUAL", "decimals": 21, "namespace": "AmXWu0KN7JD8l3cS"}, "customParameters": {"ZuHi7HadpilaHNbG": {}, "BxOSbP4uwZGBxBU2": {}, "YxkqkvRIppao9vvX": {}}, "extOrderNo": "SnSnBWyhInhQyx0o", "extTxId": "zC5IUAg6txwJ0yEe", "extUserId": "r2Vkst5pIf9FzF6x", "issuedAt": "1994-10-16T00:00:00Z", "metadata": {"uY56fwPFu5uYPWpk": "6eBjewOkhw8k1Iot", "xC7FBmJP5Ujzscd9": "xSgswZ5yOlAaGH0c", "asZwizCpgGq9oMg2": "7qqfFyrtfMeTvohv"}, "namespace": "CGBoLIUx9BMkb6W3", "nonceStr": "nHAQYXfEYaneJ1PE", "paymentData": {"discountAmount": 18, "discountCode": "7yHzdYXQ6Vsa87bV", "subtotalPrice": 79, "tax": 80, "totalPrice": 28}, "paymentMethod": "WhmOOweTeelQhHJ9", "paymentMethodFee": 18, "paymentOrderNo": "5GVtZLNZ0JdeZRPd", "paymentProvider": "NEONPAY", "paymentProviderFee": 13, "paymentStationUrl": "vXh350XPP6rGgWq4", "price": 26, "refundedTime": "1994-07-02T00:00:00Z", "salesTax": 94, "sandbox": true, "sku": "3toeZFTocJkKb2PZ", "status": "CHARGE_FAILED", "statusReason": "h7ee9Z0SmmiobAVC", "subscriptionId": "FCGHaCLmP9WA4ck8", "subtotalPrice": 0, "targetNamespace": "ZQOqkwwLP6LTZXcg", "targetUserId": "Hqjg3J56GqdeNWZ8", "tax": 1, "totalPrice": 57, "totalTax": 59, "txEndTime": "1973-01-10T00:00:00Z", "type": "LqUhWvncKIytG4DO", "userId": "wnjR9SboAUfbA5X2", "vat": 40}' \
    > test.out 2>&1
eval_tap $? 335 'ProcessUserSubscriptionNotification' test.out

#- 336 AcquireUserTicket
samples/cli/sample-apps Platform acquireUserTicket \
    --boothName 'Xf9r62qJ4l9fJlEI' \
    --namespace $AB_NAMESPACE \
    --userId 'jW74q4Y9Knk0g1s2' \
    --body '{"count": 49, "orderNo": "RuXRjOrCPrrBkI2r"}' \
    > test.out 2>&1
eval_tap $? 336 'AcquireUserTicket' test.out

#- 337 QueryUserCurrencyWallets
samples/cli/sample-apps Platform queryUserCurrencyWallets \
    --namespace $AB_NAMESPACE \
    --userId 'zD91xuF8UiIzIYhy' \
    > test.out 2>&1
eval_tap $? 337 'QueryUserCurrencyWallets' test.out

#- 338 DebitUserWalletByCurrencyCode
samples/cli/sample-apps Platform debitUserWalletByCurrencyCode \
    --currencyCode 'csTmkDrOQfd6Vd50' \
    --namespace $AB_NAMESPACE \
    --userId 's7gywMSyHeyUJf0q' \
    --body '{"allowOverdraft": true, "amount": 20, "balanceOrigin": "IOS", "balanceSource": "IAP_REVOCATION", "metadata": {"R6YkkqAFeUdNEe9B": {}, "LbL4NQnmfUMRtGmq": {}, "FyQBp9aTaxuYcJ1V": {}}, "reason": "55LV1EvPWnb15vbS"}' \
    > test.out 2>&1
eval_tap $? 338 'DebitUserWalletByCurrencyCode' test.out

#- 339 ListUserCurrencyTransactions
samples/cli/sample-apps Platform listUserCurrencyTransactions \
    --currencyCode 'qKgyKQt0DmUgEG4Y' \
    --namespace $AB_NAMESPACE \
    --userId 'Lpr759R1ILkhXkyq' \
    --limit '56' \
    --offset '8' \
    > test.out 2>&1
eval_tap $? 339 'ListUserCurrencyTransactions' test.out

#- 340 CheckBalance
samples/cli/sample-apps Platform checkBalance \
    --currencyCode 'c7b1JQtqVrMzz2KG' \
    --namespace $AB_NAMESPACE \
    --userId 'FwC9rD6biVaV5igJ' \
    --request '{"amount": 58, "debitBalanceSource": "IAP_REVOCATION", "metadata": {"wa7S8hkei7rPG4L4": {}, "JjvUIxXPsToI3Pja": {}, "qWpyv6ecUPKS5zzC": {}}, "reason": "htdCkKyDrywzwAs2", "walletPlatform": "Nintendo"}' \
    > test.out 2>&1
eval_tap $? 340 'CheckBalance' test.out

#- 341 CheckWallet
eval_tap 0 341 'CheckWallet # SKIP deprecated' test.out

#- 342 CreditUserWallet
samples/cli/sample-apps Platform creditUserWallet \
    --currencyCode 'LoPWzvqbBWelitgL' \
    --namespace $AB_NAMESPACE \
    --userId 'kjkAqE4VYU1QsQuA' \
    --body '{"amount": 58, "expireAt": "1992-09-12T00:00:00Z", "metadata": {"QbBeX50RNctjUYvM": {}, "PpP0iQVC42D6ZJEl": {}, "eId29yiXrC1DjnLB": {}}, "origin": "Oculus", "reason": "g8Zg7DRnrd5kjNne", "source": "IAP"}' \
    > test.out 2>&1
eval_tap $? 342 'CreditUserWallet' test.out

#- 343 DebitByWalletPlatform
samples/cli/sample-apps Platform debitByWalletPlatform \
    --currencyCode '0szLDuEQIx5Qi4jS' \
    --namespace $AB_NAMESPACE \
    --userId 'QoaWBTSzSm3iUDs7' \
    --request '{"amount": 96, "debitBalanceSource": "PAYMENT", "metadata": {"Zkz1XZISAboJLRSQ": {}, "5iP1qdaGkNAMDpMs": {}, "d8BxECL81lhLBkwf": {}}, "reason": "v46OJwFmEgzVakFp", "walletPlatform": "GooglePlay"}' \
    > test.out 2>&1
eval_tap $? 343 'DebitByWalletPlatform' test.out

#- 344 PayWithUserWallet
samples/cli/sample-apps Platform payWithUserWallet \
    --currencyCode 'Rch67vuGKCJNERhh' \
    --namespace $AB_NAMESPACE \
    --userId 'M8GTwkmRmsAvh6nJ' \
    --body '{"amount": 46, "metadata": {"oYhZbFBH745Jwqe7": {}, "9RM6Xp8ZagGk49m5": {}, "h4ofkwmmFxu1ZSHm": {}}, "walletPlatform": "Oculus"}' \
    > test.out 2>&1
eval_tap $? 344 'PayWithUserWallet' test.out

#- 345 GetUserWallet
eval_tap 0 345 'GetUserWallet # SKIP deprecated' test.out

#- 346 DebitUserWallet
eval_tap 0 346 'DebitUserWallet # SKIP deprecated' test.out

#- 347 DisableUserWallet
eval_tap 0 347 'DisableUserWallet # SKIP deprecated' test.out

#- 348 EnableUserWallet
eval_tap 0 348 'EnableUserWallet # SKIP deprecated' test.out

#- 349 ListUserWalletTransactions
eval_tap 0 349 'ListUserWalletTransactions # SKIP deprecated' test.out

#- 350 ListViews
samples/cli/sample-apps Platform listViews \
    --namespace $AB_NAMESPACE \
    --storeId 'gAlvEmkaNfPuCMv7' \
    > test.out 2>&1
eval_tap $? 350 'ListViews' test.out

#- 351 CreateView
samples/cli/sample-apps Platform createView \
    --namespace $AB_NAMESPACE \
    --storeId 'xZWajt0nHPR5wvU8' \
    --body '{"displayOrder": 80, "localizations": {"icEHyU2PwyPOGRKh": {"description": "j0CG3CO1mdeb234e", "localExt": {"Bjz1xuCBKU7wXJBU": {}, "mZud865SW8P76g3L": {}, "ney92h3moRezXV1m": {}}, "longDescription": "ucrr0mmZRD3Guts7", "title": "40g0E7fIyqOTjlv8"}, "VArc7TJoUBps2DVH": {"description": "sFwz93afL8IvUzXp", "localExt": {"PHI5RdBoP2jKDy60": {}, "PWrPDlh6yGgoczni": {}, "upsWAPBjoB4tCL9Y": {}}, "longDescription": "nKPw3H8YCVHtpO2A", "title": "tneVy3zDTZ1D4xix"}, "iSamoy0y4benPM5C": {"description": "KcqLZ01iFuUUQiLf", "localExt": {"lT6EQA9gcM2frmV9": {}, "hLw7hKzO4Ia9qoNo": {}, "bpSaFt8iccoZBkkz": {}}, "longDescription": "6rd9rtClS2RcZm4Y", "title": "B3bdYs72C166549W"}}, "name": "6f8NbQTYobbheRDq"}' \
    > test.out 2>&1
eval_tap $? 351 'CreateView' test.out

#- 352 GetView
samples/cli/sample-apps Platform getView \
    --namespace $AB_NAMESPACE \
    --viewId 'aJrVy6D4LpsKh43w' \
    --storeId '0xkw61WJ1WVdd1or' \
    > test.out 2>&1
eval_tap $? 352 'GetView' test.out

#- 353 UpdateView
samples/cli/sample-apps Platform updateView \
    --namespace $AB_NAMESPACE \
    --viewId 'kqGZTG8ZpdrMzD8c' \
    --storeId 'eJJKWiOqruW5bLWl' \
    --body '{"displayOrder": 39, "localizations": {"XA1CRWdmenOufO4q": {"description": "0mdcNuYxPWyfZv7m", "localExt": {"5Qt62LVJWPZ41CGE": {}, "QNec685zfdhVkyGT": {}, "ioIHRJUu4I2Ywrw3": {}}, "longDescription": "ABm4e7qSkd7BjE3h", "title": "MOG89KbGM4rfeMqX"}, "Ax5LdCmAZt8AxvxU": {"description": "9OMtRj9NivKos1Rq", "localExt": {"g4hQJYFJmOCKLUi6": {}, "WugFz8MZlaJUS9Hq": {}, "QWraSnNIw5wdo7pD": {}}, "longDescription": "eloc6a017UbHzwmV", "title": "ntEg0L0R6nCQVZbE"}, "38ez2ntgLBObRH8D": {"description": "XR5BJ3zoFSuIXcnQ", "localExt": {"fkD9kHFyzyW6CxHx": {}, "2zncjVvoKs0t7xqZ": {}, "Fl5iG4Ny3BS9lcsU": {}}, "longDescription": "jodrjogDk9P9kwwl", "title": "rBjxCVSwWYplGNn5"}}, "name": "W2kfsXhDVKFOUjyd"}' \
    > test.out 2>&1
eval_tap $? 353 'UpdateView' test.out

#- 354 DeleteView
samples/cli/sample-apps Platform deleteView \
    --namespace $AB_NAMESPACE \
    --viewId 'uNQcu5fmiRsUSN2i' \
    --storeId 'QKZvKzqumWlO5Ayi' \
    > test.out 2>&1
eval_tap $? 354 'DeleteView' test.out

#- 355 GetWalletConfig
samples/cli/sample-apps Platform getWalletConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 355 'GetWalletConfig' test.out

#- 356 UpdateWalletConfig
samples/cli/sample-apps Platform updateWalletConfig \
    --namespace $AB_NAMESPACE \
    --body '{"enablePaidForVCExpiration": true}' \
    > test.out 2>&1
eval_tap $? 356 'UpdateWalletConfig' test.out

#- 357 QueryWallets
eval_tap 0 357 'QueryWallets # SKIP deprecated' test.out

#- 358 BulkCredit
samples/cli/sample-apps Platform bulkCredit \
    --namespace $AB_NAMESPACE \
    --body '[{"creditRequest": {"amount": 62, "expireAt": "1974-03-11T00:00:00Z", "metadata": {"q9NfPW7aXZbWNAp5": {}, "WjfSI3KHFaySEUqa": {}, "VacKMoWN9VbauOZ9": {}}, "origin": "Steam", "reason": "jWvJDZ5z0DzUhd5h", "source": "TRADE"}, "currencyCode": "69CetukEqef7sbGx", "userIds": ["55MhDO0b5tf2iu9S", "CmeZ6heQit0AkoRo", "4adDTioNWgJm2wt4"]}, {"creditRequest": {"amount": 42, "expireAt": "1984-04-28T00:00:00Z", "metadata": {"e9Df7Ng6Lh7DXIrB": {}, "8TIzeAiUe71Jn85p": {}, "xOBr6WOHrtqVv8UZ": {}}, "origin": "Nintendo", "reason": "kduP8XwVnXr8BUWL", "source": "IAP"}, "currencyCode": "H0KT9ZCB1Kx0zCf1", "userIds": ["zyHvVHPUmIOur0fS", "t7bVt5i980mMWCwW", "5pLuBGi4jT811PI9"]}, {"creditRequest": {"amount": 61, "expireAt": "1997-07-30T00:00:00Z", "metadata": {"o2RpTvLboxDYInyG": {}, "c5jzl3hwRTtAEca9": {}, "QUpgLLzPViCSmaQm": {}}, "origin": "Twitch", "reason": "x1Bu2PxVg8TrLTnR", "source": "OTHER"}, "currencyCode": "OaaMn793IWn4oYsx", "userIds": ["ohrxvUI27McqNrDB", "t8msGeRggIPLkt55", "Am7xQos2luFYlh7Z"]}]' \
    > test.out 2>&1
eval_tap $? 358 'BulkCredit' test.out

#- 359 BulkDebit
samples/cli/sample-apps Platform bulkDebit \
    --namespace $AB_NAMESPACE \
    --body '[{"currencyCode": "XLkGj9FU1KHhuhZN", "request": {"allowOverdraft": true, "amount": 25, "balanceOrigin": "Epic", "balanceSource": "OTHER", "metadata": {"BvsJMeNfWk0FZsuA": {}, "1DIjwwjtrMMG48xx": {}, "EgdV9g0e9wmGoZaS": {}}, "reason": "TbDn8EStTFqcZryb"}, "userIds": ["yUcukxlYc5mXcEHG", "ralW62wWYf7u1SsS", "bgXNd32QtDCXAUIP"]}, {"currencyCode": "uQPCFitn8uXc5Ugg", "request": {"allowOverdraft": true, "amount": 77, "balanceOrigin": "GooglePlay", "balanceSource": "DLC_REVOCATION", "metadata": {"o25LFPEcaQpqgOgt": {}, "hXxo1G8Y7MW2bdMm": {}, "cClxHOtk5dbzo5IP": {}}, "reason": "9mtckajOjAsI785u"}, "userIds": ["1CKeqkrt4ZvUBlqv", "hiD0gXyJvOXUdo2p", "YB7xHU8YWmh0BLQh"]}, {"currencyCode": "ZnJeQI6xMXeh358N", "request": {"allowOverdraft": true, "amount": 31, "balanceOrigin": "Xbox", "balanceSource": "IAP_REVOCATION", "metadata": {"I07jVuDoFwr29ylR": {}, "zNbwGoJFtGor23bT": {}, "hpyiF79qbAjmt8bT": {}}, "reason": "pCSFbl1HF070ets7"}, "userIds": ["BqzzjoUgIo1AHXyC", "l3PypIIvj6QexH1H", "jZprQmqAMMmZLzHE"]}]' \
    > test.out 2>&1
eval_tap $? 359 'BulkDebit' test.out

#- 360 GetWallet
eval_tap 0 360 'GetWallet # SKIP deprecated' test.out

#- 361 SyncOrders
samples/cli/sample-apps Platform syncOrders \
    --nextEvaluatedKey 'pcI5xqFS71vsFnec' \
    --end 'yK7WiW08C55CrX5O' \
    --start 'BOefwzlQCecYxyMj' \
    > test.out 2>&1
eval_tap $? 361 'SyncOrders' test.out

#- 362 TestAdyenConfig
samples/cli/sample-apps Platform testAdyenConfig \
    --sandbox 'true' \
    --body '{"allowedPaymentMethods": ["M2mRi2Ec4XEDVQ2M", "jDexBb9uVldJX5id", "Ou4sNqzNQOUMSzg8"], "apiKey": "DpOq5Tz3wl7bPgGM", "authoriseAsCapture": false, "blockedPaymentMethods": ["LB7Per4syMzlbwBC", "0cl14L80k9LogquN", "cjOGBU22cWHhdUkF"], "clientKey": "LDMnxaXgERNpvd9S", "dropInSettings": "blVqiqG8NOb8dh97", "liveEndpointUrlPrefix": "NF7cmVeMZ50LvzL6", "merchantAccount": "VY0GEocd4fpCPrcB", "notificationHmacKey": "VrsEaIzSzkyTbxGe", "notificationPassword": "oSqEMDU7YGhCtPk8", "notificationUsername": "6sRwyYLE3WgFLEJP", "returnUrl": "kPbPwa3l0C7WAIjR", "settings": "Arnz8jxoUumFC14t"}' \
    > test.out 2>&1
eval_tap $? 362 'TestAdyenConfig' test.out

#- 363 TestAliPayConfig
samples/cli/sample-apps Platform testAliPayConfig \
    --sandbox 'false' \
    --body '{"appId": "GjN6EPqBvX4LhOpu", "privateKey": "OPd1lQ81W5aZGaHb", "publicKey": "HhYuEDXIvFnxlDdI", "returnUrl": "NABqLJSWQU1i6af2"}' \
    > test.out 2>&1
eval_tap $? 363 'TestAliPayConfig' test.out

#- 364 TestCheckoutConfig
samples/cli/sample-apps Platform testCheckoutConfig \
    --sandbox 'true' \
    --body '{"publicKey": "utyxPwPqHSzjOaDH", "secretKey": "kRheDAPDKRRgkHOA"}' \
    > test.out 2>&1
eval_tap $? 364 'TestCheckoutConfig' test.out

#- 365 DebugMatchedPaymentMerchantConfig
samples/cli/sample-apps Platform debugMatchedPaymentMerchantConfig \
    --namespace 'Qkn7irnD8aO5TpMv' \
    --region 'XUfmVY4TtkzAY3vB' \
    > test.out 2>&1
eval_tap $? 365 'DebugMatchedPaymentMerchantConfig' test.out

#- 366 TestNeonPayConfig
samples/cli/sample-apps Platform testNeonPayConfig \
    --sandbox 'false' \
    --body '{"apiKey": "H3syDXdlRn7u4n2p", "webhookSecretKey": "dOYQCgB332vInqMz"}' \
    > test.out 2>&1
eval_tap $? 366 'TestNeonPayConfig' test.out

#- 367 TestPayPalConfig
samples/cli/sample-apps Platform testPayPalConfig \
    --sandbox 'false' \
    --body '{"clientID": "eaWzuLZrujbWbDim", "clientSecret": "KHfjeZzBgd7hioWT", "returnUrl": "8IOZberiNDnDtg66", "webHookId": "57pIsuuu51KOCBnr"}' \
    > test.out 2>&1
eval_tap $? 367 'TestPayPalConfig' test.out

#- 368 TestStripeConfig
samples/cli/sample-apps Platform testStripeConfig \
    --sandbox 'false' \
    --body '{"allowedPaymentMethodTypes": ["19y48WOQ1YGzlkVM", "ClWcPuM5fNd9Vzn4", "vpGLpC6MIT5DCoVI"], "publishableKey": "RcXkLSJYzfH6jhjr", "secretKey": "4jnkE3KQsz9Et13d", "webhookSecret": "dtw6eh6w4ahjOJLL"}' \
    > test.out 2>&1
eval_tap $? 368 'TestStripeConfig' test.out

#- 369 TestWxPayConfig
samples/cli/sample-apps Platform testWxPayConfig \
    --body '{"appId": "qK5RNqPz9UkrM7il", "key": "jVtHpZF1tZ1HYX54", "mchid": "fcfY4lWU0aDkAClv", "returnUrl": "8a8IPxnfOVsGtAWb"}' \
    > test.out 2>&1
eval_tap $? 369 'TestWxPayConfig' test.out

#- 370 TestXsollaConfig
samples/cli/sample-apps Platform testXsollaConfig \
    --body '{"apiKey": "Wx4sQIJ8szWJ6ztW", "flowCompletionUrl": "xkfOYsGWPWp8ghat", "merchantId": 93, "projectId": 62, "projectSecretKey": "xL3eev5Y6deJKbxO"}' \
    > test.out 2>&1
eval_tap $? 370 'TestXsollaConfig' test.out

#- 371 GetPaymentMerchantConfig1
samples/cli/sample-apps Platform getPaymentMerchantConfig1 \
    --id '6aOtd198fB3gBY5D' \
    > test.out 2>&1
eval_tap $? 371 'GetPaymentMerchantConfig1' test.out

#- 372 UpdateAdyenConfig
samples/cli/sample-apps Platform updateAdyenConfig \
    --id 'ZI9OsGAZXrpaGFw5' \
    --sandbox 'false' \
    --validate 'true' \
    --body '{"allowedPaymentMethods": ["cWV2HjWc9ZpxETwn", "IwAacLxGpy4201nv", "wvmd0ZJHpkPSiFDN"], "apiKey": "K3oYoXbZ1VIltKzR", "authoriseAsCapture": false, "blockedPaymentMethods": ["FsLS6IZ8Q6nXPGsW", "EwK1uXK6LTtCX1KD", "yhopzb1zdgPpdpiI"], "clientKey": "BklA07tY3EhRItoF", "dropInSettings": "B6mwUN1xXLLJu43l", "liveEndpointUrlPrefix": "jl39vpLlGelpds8Z", "merchantAccount": "b2rsbp03NqxkBoeB", "notificationHmacKey": "zbYrURlpG1Zc62Eu", "notificationPassword": "BgirwliFGvoMf1ro", "notificationUsername": "M9U4BPjyvRmBV0YN", "returnUrl": "ZZrCmDFcGNBAWZ3m", "settings": "EY1bgZBnajWqfiTk"}' \
    > test.out 2>&1
eval_tap $? 372 'UpdateAdyenConfig' test.out

#- 373 TestAdyenConfigById
samples/cli/sample-apps Platform testAdyenConfigById \
    --id '2tG9nYuDPigQsgYf' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 373 'TestAdyenConfigById' test.out

#- 374 UpdateAliPayConfig
samples/cli/sample-apps Platform updateAliPayConfig \
    --id 'JzuYVA5L7hfPl9lY' \
    --sandbox 'false' \
    --validate 'true' \
    --body '{"appId": "g6HwHz57GvpeywbI", "privateKey": "Eep5Fd2u0qZaei0B", "publicKey": "PavUid98ku4NoURD", "returnUrl": "XqeuapihpUxMD8tE"}' \
    > test.out 2>&1
eval_tap $? 374 'UpdateAliPayConfig' test.out

#- 375 TestAliPayConfigById
samples/cli/sample-apps Platform testAliPayConfigById \
    --id 'fL426sl4AKKDd5vi' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 375 'TestAliPayConfigById' test.out

#- 376 UpdateCheckoutConfig
samples/cli/sample-apps Platform updateCheckoutConfig \
    --id 'aFCv8qeuqvTfohhG' \
    --sandbox 'false' \
    --validate 'true' \
    --body '{"publicKey": "2Po837H43WtRND0r", "secretKey": "qYlJnnbdHHaMCZ34"}' \
    > test.out 2>&1
eval_tap $? 376 'UpdateCheckoutConfig' test.out

#- 377 TestCheckoutConfigById
samples/cli/sample-apps Platform testCheckoutConfigById \
    --id 'sSktYKGED2WEpmxE' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 377 'TestCheckoutConfigById' test.out

#- 378 UpdateNeonPayConfig
samples/cli/sample-apps Platform updateNeonPayConfig \
    --id '4CGxGkx7zxGKNGII' \
    --sandbox 'true' \
    --validate 'false' \
    --body '{"apiKey": "vInGZeErtDZz0htY", "webhookSecretKey": "76NCtPe4IHuOmwhg"}' \
    > test.out 2>&1
eval_tap $? 378 'UpdateNeonPayConfig' test.out

#- 379 TestNeonPayConfigById
samples/cli/sample-apps Platform testNeonPayConfigById \
    --id 'gCZhEJOU1OpW2prY' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 379 'TestNeonPayConfigById' test.out

#- 380 UpdatePayPalConfig
samples/cli/sample-apps Platform updatePayPalConfig \
    --id 'VHl7GwK6BpCt8usG' \
    --sandbox 'false' \
    --validate 'true' \
    --body '{"clientID": "yRDmplNjhDZuzu3a", "clientSecret": "N9b1ZUu9C3IhIo4W", "returnUrl": "vz9F8qtmNuW1UvHL", "webHookId": "ctxThBEQKRBEAGfL"}' \
    > test.out 2>&1
eval_tap $? 380 'UpdatePayPalConfig' test.out

#- 381 TestPayPalConfigById
samples/cli/sample-apps Platform testPayPalConfigById \
    --id '6Z2VX2k5frUv4GN8' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 381 'TestPayPalConfigById' test.out

#- 382 UpdateStripeConfig
samples/cli/sample-apps Platform updateStripeConfig \
    --id 'nGQBjcuHB3qB4bYN' \
    --sandbox 'false' \
    --validate 'false' \
    --body '{"allowedPaymentMethodTypes": ["4HFmuSuUSPq4uaj0", "b7wJZi7EIk9lRMHf", "yR4iidxQ2JcnFusB"], "publishableKey": "kAYGdeyX8kjL9pb4", "secretKey": "FgFoJMC8S4dcjtqB", "webhookSecret": "dZ3ACkY6wyCxixYN"}' \
    > test.out 2>&1
eval_tap $? 382 'UpdateStripeConfig' test.out

#- 383 TestStripeConfigById
samples/cli/sample-apps Platform testStripeConfigById \
    --id '3jHi0M87WEIGbMU2' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 383 'TestStripeConfigById' test.out

#- 384 UpdateWxPayConfig
samples/cli/sample-apps Platform updateWxPayConfig \
    --id '1ogP26A7ghBFdt5p' \
    --validate 'false' \
    --body '{"appId": "lLbvZxqmtLvXaf7w", "key": "oSdRwbAoayBdxEaT", "mchid": "SqCP5tbRkaihdJO6", "returnUrl": "QfmumhlY1GGBk1no"}' \
    > test.out 2>&1
eval_tap $? 384 'UpdateWxPayConfig' test.out

#- 385 UpdateWxPayConfigCert
samples/cli/sample-apps Platform updateWxPayConfigCert \
    --id 'NDCyEeucitvbRbIw' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 385 'UpdateWxPayConfigCert' test.out

#- 386 TestWxPayConfigById
samples/cli/sample-apps Platform testWxPayConfigById \
    --id 'hO8dxrvF2gtp9yBp' \
    > test.out 2>&1
eval_tap $? 386 'TestWxPayConfigById' test.out

#- 387 UpdateXsollaConfig
samples/cli/sample-apps Platform updateXsollaConfig \
    --id 'Fs9wLudtM44nkBjB' \
    --validate 'true' \
    --body '{"apiKey": "Dg3uSifA5RwMQjnt", "flowCompletionUrl": "p0oOCXbzJn0dXcnZ", "merchantId": 69, "projectId": 83, "projectSecretKey": "3kNsqIOvUBlGg8Fh"}' \
    > test.out 2>&1
eval_tap $? 387 'UpdateXsollaConfig' test.out

#- 388 TestXsollaConfigById
samples/cli/sample-apps Platform testXsollaConfigById \
    --id 'w1OjRBhx9YQCjsnf' \
    > test.out 2>&1
eval_tap $? 388 'TestXsollaConfigById' test.out

#- 389 UpdateXsollaUIConfig
samples/cli/sample-apps Platform updateXsollaUIConfig \
    --id 'BBc2n3TkmdtiTsOr' \
    --body '{"device": "MOBILE", "showCloseButton": false, "size": "LARGE", "theme": "DARK"}' \
    > test.out 2>&1
eval_tap $? 389 'UpdateXsollaUIConfig' test.out

#- 390 QueryPaymentProviderConfig
samples/cli/sample-apps Platform queryPaymentProviderConfig \
    --limit '33' \
    --namespace 'CGBwhefkAW1ShhVL' \
    --offset '5' \
    --region 'wV4VFtdbSyJYFKds' \
    > test.out 2>&1
eval_tap $? 390 'QueryPaymentProviderConfig' test.out

#- 391 CreatePaymentProviderConfig
samples/cli/sample-apps Platform createPaymentProviderConfig \
    --body '{"aggregate": "ADYEN", "namespace": "oxBtGnlRunvXY5XX", "region": "ciTS1jjjuCtvRRZk", "sandboxTaxJarApiToken": "Sj3kvn48TfkiaO45", "specials": ["ALIPAY", "NEONPAY", "WXPAY"], "taxJarApiToken": "nnO5xVmrATGFG8uH", "taxJarEnabled": true, "useGlobalTaxJarApiToken": false}' \
    > test.out 2>&1
eval_tap $? 391 'CreatePaymentProviderConfig' test.out

#- 392 GetAggregatePaymentProviders
samples/cli/sample-apps Platform getAggregatePaymentProviders \
    > test.out 2>&1
eval_tap $? 392 'GetAggregatePaymentProviders' test.out

#- 393 DebugMatchedPaymentProviderConfig
samples/cli/sample-apps Platform debugMatchedPaymentProviderConfig \
    --namespace 'GDSfV1KKdhwyfgWM' \
    --region 'lwuz2iTQ0c1sZMic' \
    > test.out 2>&1
eval_tap $? 393 'DebugMatchedPaymentProviderConfig' test.out

#- 394 GetSpecialPaymentProviders
samples/cli/sample-apps Platform getSpecialPaymentProviders \
    > test.out 2>&1
eval_tap $? 394 'GetSpecialPaymentProviders' test.out

#- 395 UpdatePaymentProviderConfig
samples/cli/sample-apps Platform updatePaymentProviderConfig \
    --id 'csnuxZbHYhIoKkuI' \
    --body '{"aggregate": "STRIPE", "namespace": "lgdBpaOG6JHDyyXf", "region": "Xn2mKazr7aIxd8GV", "sandboxTaxJarApiToken": "lUiHfQB5vhDk9nT8", "specials": ["CHECKOUT", "ALIPAY", "ALIPAY"], "taxJarApiToken": "OKTVMFLWkBxg7yQV", "taxJarEnabled": false, "useGlobalTaxJarApiToken": false}' \
    > test.out 2>&1
eval_tap $? 395 'UpdatePaymentProviderConfig' test.out

#- 396 DeletePaymentProviderConfig
samples/cli/sample-apps Platform deletePaymentProviderConfig \
    --id 'TFykHq2Vui2hEJAK' \
    > test.out 2>&1
eval_tap $? 396 'DeletePaymentProviderConfig' test.out

#- 397 GetPaymentTaxConfig
samples/cli/sample-apps Platform getPaymentTaxConfig \
    > test.out 2>&1
eval_tap $? 397 'GetPaymentTaxConfig' test.out

#- 398 UpdatePaymentTaxConfig
samples/cli/sample-apps Platform updatePaymentTaxConfig \
    --body '{"sandboxTaxJarApiToken": "lIMX8gFxKRjTQmTL", "taxJarApiToken": "RrVjEmG3P6L4xsyd", "taxJarEnabled": true, "taxJarProductCodesMapping": {"gIzb3X0GDMuIso6B": "cVoa96iwv03mIqD7", "20Ygnery7jK8u1Ow": "XwnXGKsivoEBuC7T", "m9w0b8t2VtX8NaIU": "dTNOlwdgk2Vmclni"}}' \
    > test.out 2>&1
eval_tap $? 398 'UpdatePaymentTaxConfig' test.out

#- 399 SyncPaymentOrders
samples/cli/sample-apps Platform syncPaymentOrders \
    --nextEvaluatedKey 'o7a2aANBR3JHtK15' \
    --end 'QD2FSR4EN6prnYiu' \
    --start 'KFw8LwlL6jE3sail' \
    > test.out 2>&1
eval_tap $? 399 'SyncPaymentOrders' test.out

#- 400 PublicGetRootCategories
samples/cli/sample-apps Platform publicGetRootCategories \
    --namespace $AB_NAMESPACE \
    --language '1lGTt6yecdWhFk7V' \
    --storeId 'bHGgLMbvDAxPhzJ8' \
    > test.out 2>&1
eval_tap $? 400 'PublicGetRootCategories' test.out

#- 401 DownloadCategories
samples/cli/sample-apps Platform downloadCategories \
    --namespace $AB_NAMESPACE \
    --language 'uFih22iL8sL6Gsh1' \
    --storeId '7trN1aawstFpCGo5' \
    > test.out 2>&1
eval_tap $? 401 'DownloadCategories' test.out

#- 402 PublicGetCategory
samples/cli/sample-apps Platform publicGetCategory \
    --categoryPath 'XX3PnAW3Q1Mc2F4L' \
    --namespace $AB_NAMESPACE \
    --language 'JydgEZ9mT0QI3dU1' \
    --storeId '6RFP4dz4Oy9NFhjE' \
    > test.out 2>&1
eval_tap $? 402 'PublicGetCategory' test.out

#- 403 PublicGetChildCategories
samples/cli/sample-apps Platform publicGetChildCategories \
    --categoryPath 'wam1WwS4cjMsB09I' \
    --namespace $AB_NAMESPACE \
    --language 'nXc4mPY7PpHflaxt' \
    --storeId '3zEJdDX6p2kSCjaZ' \
    > test.out 2>&1
eval_tap $? 403 'PublicGetChildCategories' test.out

#- 404 PublicGetDescendantCategories
samples/cli/sample-apps Platform publicGetDescendantCategories \
    --categoryPath '9yhRX7bTzm5tB6yG' \
    --namespace $AB_NAMESPACE \
    --language '7LY7pg9JSXsRE8ws' \
    --storeId 'PlcGS5fXA5xKKudp' \
    > test.out 2>&1
eval_tap $? 404 'PublicGetDescendantCategories' test.out

#- 405 PublicListCurrencies
samples/cli/sample-apps Platform publicListCurrencies \
    --namespace $AB_NAMESPACE \
    --currencyType 'REAL' \
    > test.out 2>&1
eval_tap $? 405 'PublicListCurrencies' test.out

#- 406 GeDLCDurableRewardShortMap
samples/cli/sample-apps Platform geDLCDurableRewardShortMap \
    --namespace $AB_NAMESPACE \
    --dlcType 'EPICGAMES' \
    > test.out 2>&1
eval_tap $? 406 'GeDLCDurableRewardShortMap' test.out

#- 407 GetAppleConfigVersion
samples/cli/sample-apps Platform getAppleConfigVersion \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 407 'GetAppleConfigVersion' test.out

#- 408 GetIAPItemMapping
samples/cli/sample-apps Platform getIAPItemMapping \
    --namespace $AB_NAMESPACE \
    --platform 'STADIA' \
    > test.out 2>&1
eval_tap $? 408 'GetIAPItemMapping' test.out

#- 409 PublicGetItemByAppId
samples/cli/sample-apps Platform publicGetItemByAppId \
    --namespace $AB_NAMESPACE \
    --language 'hfIIS0F6ogAiYPho' \
    --region 'OEmoTYuaX6x6s5Hq' \
    --storeId 'uKDd98Ig1XbtpjeG' \
    --appId 'JodGUYLZ3ixmGGCn' \
    > test.out 2>&1
eval_tap $? 409 'PublicGetItemByAppId' test.out

#- 410 PublicQueryItems
samples/cli/sample-apps Platform publicQueryItems \
    --namespace $AB_NAMESPACE \
    --appType 'SOFTWARE' \
    --autoCalcEstimatedPrice 'true' \
    --baseAppId 'PnF46MI3RTcOHANq' \
    --categoryPath 'tVNwGS9v4d1HuNfG' \
    --features '8MYwNuOBY65LDI3F' \
    --includeSubCategoryItem 'false' \
    --itemType 'APP' \
    --language 'bQTDSoLHPCFOUk4X' \
    --limit '81' \
    --offset '84' \
    --region 'FVHZkTOOmh9krUAB' \
    --sortBy '["displayOrder:desc", "createdAt", "displayOrder:asc"]' \
    --storeId '4f8qFkgbMYrXpvjO' \
    --tags 'XXmGMfRB5cpSqJH3' \
    > test.out 2>&1
eval_tap $? 410 'PublicQueryItems' test.out

#- 411 PublicGetItemBySku
samples/cli/sample-apps Platform publicGetItemBySku \
    --namespace $AB_NAMESPACE \
    --autoCalcEstimatedPrice 'false' \
    --language 'YPZjhvexE9cBtfgZ' \
    --region 'guyzkRHJ674GrDXn' \
    --storeId 'BuqFrpNVqCNtAlAj' \
    --sku 'n0beXdqXeKLbbbjd' \
    > test.out 2>&1
eval_tap $? 411 'PublicGetItemBySku' test.out

#- 412 PublicGetEstimatedPrice
samples/cli/sample-apps Platform publicGetEstimatedPrice \
    --namespace $AB_NAMESPACE \
    --region 'BsuvmNTRu1Y8eZXg' \
    --storeId 'U8EwLCrnhVucLlpF' \
    --itemIds '8QvbzPuCS0E62G6j' \
    > test.out 2>&1
eval_tap $? 412 'PublicGetEstimatedPrice' test.out

#- 413 PublicBulkGetItems
samples/cli/sample-apps Platform publicBulkGetItems \
    --namespace $AB_NAMESPACE \
    --autoCalcEstimatedPrice 'true' \
    --language '96ljaXiTsuLtIfAh' \
    --region 'OAC1XoWzd5jCuFDS' \
    --storeId 'cojNHMVnKTIX7N5E' \
    --itemIds '7uXArEjidHOUILqB' \
    > test.out 2>&1
eval_tap $? 413 'PublicBulkGetItems' test.out

#- 414 PublicValidateItemPurchaseCondition
samples/cli/sample-apps Platform publicValidateItemPurchaseCondition \
    --namespace $AB_NAMESPACE \
    --body '{"itemIds": ["PC1aHJs2O3fwgemy", "9Y9RYImsGSbFrrz0", "kCv4ns1km2LRz8y2"]}' \
    > test.out 2>&1
eval_tap $? 414 'PublicValidateItemPurchaseCondition' test.out

#- 415 PublicSearchItems
samples/cli/sample-apps Platform publicSearchItems \
    --namespace $AB_NAMESPACE \
    --autoCalcEstimatedPrice 'false' \
    --itemType 'SUBSCRIPTION' \
    --limit '35' \
    --offset '16' \
    --region 'jkeVxOKaru6RV3EZ' \
    --storeId 'c5R8Ov5qRCsRg6ac' \
    --keyword '8K9UAZ1bQc6ZuTFx' \
    --language 'W1nODXwaVn5U0TW5' \
    > test.out 2>&1
eval_tap $? 415 'PublicSearchItems' test.out

#- 416 PublicGetApp
samples/cli/sample-apps Platform publicGetApp \
    --itemId 'EL2jqDMmkW2P50jj' \
    --namespace $AB_NAMESPACE \
    --language 'NqnDw4XM91bXtbLS' \
    --region 'Hc7lQL3R3Gjr5HwY' \
    --storeId 'FJ3wkB3Y0QF8Ihrx' \
    > test.out 2>&1
eval_tap $? 416 'PublicGetApp' test.out

#- 417 PublicGetItemDynamicData
samples/cli/sample-apps Platform publicGetItemDynamicData \
    --itemId '55OISpdJXKiCaKeP' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 417 'PublicGetItemDynamicData' test.out

#- 418 PublicGetItem
samples/cli/sample-apps Platform publicGetItem \
    --itemId '4kDsjKYgM4K6dB8k' \
    --namespace $AB_NAMESPACE \
    --autoCalcEstimatedPrice 'false' \
    --language 'J2DSKRt6q9u7BSjR' \
    --populateBundle 'true' \
    --region 'jTUSTZr6pOnVLjkv' \
    --storeId 'gEfBZXAASRfA1kWq' \
    > test.out 2>&1
eval_tap $? 418 'PublicGetItem' test.out

#- 419 GetPaymentCustomization
eval_tap 0 419 'GetPaymentCustomization # SKIP deprecated' test.out

#- 420 PublicGetPaymentUrl
samples/cli/sample-apps Platform publicGetPaymentUrl \
    --namespace $AB_NAMESPACE \
    --body '{"neonPayConfig": {"cancelUrl": "uKqWJxMwNmFJHreO", "successUrl": "rE69cs6UHw6ZlhPK"}, "paymentOrderNo": "e5RxqXgylw221pVf", "paymentProvider": "STRIPE", "returnUrl": "qgNOAsylYeMUXK2T", "ui": "FLAHwEDvmTYd3xZ0", "zipCode": "55Ws5eE8aQAwdfIR"}' \
    > test.out 2>&1
eval_tap $? 420 'PublicGetPaymentUrl' test.out

#- 421 PublicGetPaymentMethods
samples/cli/sample-apps Platform publicGetPaymentMethods \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'CbVGohzVjfVXjKn2' \
    > test.out 2>&1
eval_tap $? 421 'PublicGetPaymentMethods' test.out

#- 422 PublicGetUnpaidPaymentOrder
samples/cli/sample-apps Platform publicGetUnpaidPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'XXzl561piPtY2Zxp' \
    > test.out 2>&1
eval_tap $? 422 'PublicGetUnpaidPaymentOrder' test.out

#- 423 Pay
samples/cli/sample-apps Platform pay \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'VC8lJmH2hwLfNq8v' \
    --paymentProvider 'ADYEN' \
    --zipCode 'BHKO65PquuoPxopd' \
    --body '{"token": "XNyXcE62Y10gpF8b"}' \
    > test.out 2>&1
eval_tap $? 423 'Pay' test.out

#- 424 PublicCheckPaymentOrderPaidStatus
samples/cli/sample-apps Platform publicCheckPaymentOrderPaidStatus \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'TVacoGwjWqDtCjsX' \
    > test.out 2>&1
eval_tap $? 424 'PublicCheckPaymentOrderPaidStatus' test.out

#- 425 GetPaymentPublicConfig
samples/cli/sample-apps Platform getPaymentPublicConfig \
    --namespace $AB_NAMESPACE \
    --sandbox 'true' \
    --paymentProvider 'ALIPAY' \
    --region 'mtDpisjE0ov6Jlip' \
    > test.out 2>&1
eval_tap $? 425 'GetPaymentPublicConfig' test.out

#- 426 PublicGetQRCode
samples/cli/sample-apps Platform publicGetQRCode \
    --namespace $AB_NAMESPACE \
    --code 'fJ1pvzpQ1UNuibO3' \
    > test.out 2>&1
eval_tap $? 426 'PublicGetQRCode' test.out

#- 427 PublicNormalizePaymentReturnUrl
samples/cli/sample-apps Platform publicNormalizePaymentReturnUrl \
    --namespace $AB_NAMESPACE \
    --payerID 'BNmd446GrvSnbSoc' \
    --foreinginvoice 'bRxVfg6zXGLqsEmV' \
    --invoiceId 'G0iSM7LjqVg3Lm23' \
    --payload '7vXvCC4nJgZWS9ng' \
    --redirectResult 'BVprzQT8QAvy9Ywo' \
    --resultCode 'ZhST9yYaS6K56WHh' \
    --sessionId 'mYUoSgjmdFeZlp67' \
    --status 'IS3ECnmsPgZOqfXF' \
    --token 'E35GZxvPPRq0AKhR' \
    --type 'sjG7r7cZG1p637jm' \
    --userId '5yZhFRCCdpZL1fVG' \
    --orderNo 'LpKDNsVZ7rxh77n5' \
    --paymentOrderNo 'MYDFpbO8uN1GYNyY' \
    --paymentProvider 'WALLET' \
    --returnUrl 'iF8hk8GcRdIX80kd' \
    > test.out 2>&1
eval_tap $? 427 'PublicNormalizePaymentReturnUrl' test.out

#- 428 GetPaymentTaxValue
samples/cli/sample-apps Platform getPaymentTaxValue \
    --namespace $AB_NAMESPACE \
    --zipCode 'RpsLWspqLY0yZmmw' \
    --paymentOrderNo 'vxx2uweZlA9gdC8J' \
    --paymentProvider 'CHECKOUT' \
    > test.out 2>&1
eval_tap $? 428 'GetPaymentTaxValue' test.out

#- 429 GetRewardByCode
samples/cli/sample-apps Platform getRewardByCode \
    --namespace $AB_NAMESPACE \
    --rewardCode 'JBx4g17uaAWvIaoR' \
    > test.out 2>&1
eval_tap $? 429 'GetRewardByCode' test.out

#- 430 QueryRewards1
samples/cli/sample-apps Platform queryRewards1 \
    --namespace $AB_NAMESPACE \
    --eventTopic 'pKqAPDMctygQfglt' \
    --limit '46' \
    --offset '65' \
    --sortBy '["rewardCode:asc", "rewardCode", "namespace"]' \
    > test.out 2>&1
eval_tap $? 430 'QueryRewards1' test.out

#- 431 GetReward1
samples/cli/sample-apps Platform getReward1 \
    --namespace $AB_NAMESPACE \
    --rewardId 'Mxic3rL2rz8jBlON' \
    > test.out 2>&1
eval_tap $? 431 'GetReward1' test.out

#- 432 PublicListStores
samples/cli/sample-apps Platform publicListStores \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 432 'PublicListStores' test.out

#- 433 PublicExistsAnyMyActiveEntitlement
samples/cli/sample-apps Platform publicExistsAnyMyActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --appIds '["8uCtN3mxrFt5NX1e", "MIGt9FH5A1jjIhNB", "bOmnMLw7je9kfE6s"]' \
    --itemIds '["ReEiuDahhQllvhAt", "4lJcwRQ3JuY4BewA", "yYf5adgnc8GG3Lpc"]' \
    --skus '["9hYPPLr2h1ehxCbL", "fhmVNWcZHexw6onp", "cIKhLsVzzvLc0OjL"]' \
    > test.out 2>&1
eval_tap $? 433 'PublicExistsAnyMyActiveEntitlement' test.out

#- 434 PublicGetMyAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform publicGetMyAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --appId 'HfR2WpCIYXHyAvIJ' \
    > test.out 2>&1
eval_tap $? 434 'PublicGetMyAppEntitlementOwnershipByAppId' test.out

#- 435 PublicGetMyEntitlementOwnershipByItemId
samples/cli/sample-apps Platform publicGetMyEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --entitlementClazz 'LOOTBOX' \
    --itemId 'NwGf3UK1tiAGWYfq' \
    > test.out 2>&1
eval_tap $? 435 'PublicGetMyEntitlementOwnershipByItemId' test.out

#- 436 PublicGetMyEntitlementOwnershipBySku
samples/cli/sample-apps Platform publicGetMyEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --entitlementClazz 'APP' \
    --sku 'V4gIw2KdMirLwZ1A' \
    > test.out 2>&1
eval_tap $? 436 'PublicGetMyEntitlementOwnershipBySku' test.out

#- 437 PublicGetEntitlementOwnershipToken
samples/cli/sample-apps Platform publicGetEntitlementOwnershipToken \
    --namespace $AB_NAMESPACE \
    --appIds '["BPpEvzIvjH2V5OZG", "6J928a7vqhc4kNMO", "SjK9OU8E0RffTuex"]' \
    --itemIds '["8fRrjws7dFob4223", "UcK0av3q8GqLaumy", "gXLIbcxkMC3HvjnY"]' \
    --skus '["kDzOj1TFlbGZQWOr", "cTOQOaxMP6uF28b0", "eJt6q4yftlV7coKK"]' \
    > test.out 2>&1
eval_tap $? 437 'PublicGetEntitlementOwnershipToken' test.out

#- 438 SyncTwitchDropsEntitlement
samples/cli/sample-apps Platform syncTwitchDropsEntitlement \
    --namespace $AB_NAMESPACE \
    --body '{"gameId": "je9EXOpnVWuIlYcp", "language": "Py-kN", "region": "0Gx5VifulTVpWeql"}' \
    > test.out 2>&1
eval_tap $? 438 'SyncTwitchDropsEntitlement' test.out

#- 439 PublicGetMyWallet
samples/cli/sample-apps Platform publicGetMyWallet \
    --currencyCode 'WKDh3uJxBnabPEy6' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 439 'PublicGetMyWallet' test.out

#- 440 SyncEpicGameDLC
samples/cli/sample-apps Platform syncEpicGameDLC \
    --namespace $AB_NAMESPACE \
    --userId 'swRrsH1RzQPsV2qC' \
    --body '{"epicGamesJwtToken": "JE31BMF3IkjNVLxB"}' \
    > test.out 2>&1
eval_tap $? 440 'SyncEpicGameDLC' test.out

#- 441 SyncOculusDLC
samples/cli/sample-apps Platform syncOculusDLC \
    --namespace $AB_NAMESPACE \
    --userId 'klggOzvKhvBvOQbC' \
    > test.out 2>&1
eval_tap $? 441 'SyncOculusDLC' test.out

#- 442 PublicSyncPsnDlcInventory
samples/cli/sample-apps Platform publicSyncPsnDlcInventory \
    --namespace $AB_NAMESPACE \
    --userId 'TRygoaQ9Gxb2LYmF' \
    --body '{"serviceLabel": 8}' \
    > test.out 2>&1
eval_tap $? 442 'PublicSyncPsnDlcInventory' test.out

#- 443 PublicSyncPsnDlcInventoryWithMultipleServiceLabels
samples/cli/sample-apps Platform publicSyncPsnDlcInventoryWithMultipleServiceLabels \
    --namespace $AB_NAMESPACE \
    --userId '4rFXGu1tROA2ciXr' \
    --body '{"serviceLabels": [22, 87, 95]}' \
    > test.out 2>&1
eval_tap $? 443 'PublicSyncPsnDlcInventoryWithMultipleServiceLabels' test.out

#- 444 SyncSteamDLC
samples/cli/sample-apps Platform syncSteamDLC \
    --namespace $AB_NAMESPACE \
    --userId 'qgVsbadP9JPl1TWY' \
    --body '{"appId": "2ghRonF7f1LL6cRZ", "steamId": "qJBHKCbCw3VllPuN"}' \
    > test.out 2>&1
eval_tap $? 444 'SyncSteamDLC' test.out

#- 445 SyncXboxDLC
samples/cli/sample-apps Platform syncXboxDLC \
    --namespace $AB_NAMESPACE \
    --userId 'xzgESfo6T8Ug00qG' \
    --body '{"xstsToken": "Co55wZzvgzdZ8nCz"}' \
    > test.out 2>&1
eval_tap $? 445 'SyncXboxDLC' test.out

#- 446 PublicQueryUserEntitlements
samples/cli/sample-apps Platform publicQueryUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'nBLzzLwKKPzY4xBq' \
    --appType 'DLC' \
    --entitlementClazz 'MEDIA' \
    --entitlementName 'fabt9jMLphy8jiMj' \
    --features '["BjCdYVum9OkvADrM", "z1991IJG10NYi9mA", "nJuM9tkLrzyEkrdH"]' \
    --itemId '["H18GGFEHAxi5ZWgx", "wi4GqAwPZlF6hKgo", "FJTCj1oEOyJauAI5"]' \
    --limit '64' \
    --offset '30' \
    > test.out 2>&1
eval_tap $? 446 'PublicQueryUserEntitlements' test.out

#- 447 PublicGetUserAppEntitlementByAppId
samples/cli/sample-apps Platform publicGetUserAppEntitlementByAppId \
    --namespace $AB_NAMESPACE \
    --userId '5pDs98F3qmcurnLL' \
    --appId 'qp3AtSs0KRvCxtbw' \
    > test.out 2>&1
eval_tap $? 447 'PublicGetUserAppEntitlementByAppId' test.out

#- 448 PublicQueryUserEntitlementsByAppType
samples/cli/sample-apps Platform publicQueryUserEntitlementsByAppType \
    --namespace $AB_NAMESPACE \
    --userId 'm8CjJiSiBQmZ4Z3v' \
    --limit '0' \
    --offset '88' \
    --appType 'SOFTWARE' \
    > test.out 2>&1
eval_tap $? 448 'PublicQueryUserEntitlementsByAppType' test.out

#- 449 PublicGetUserEntitlementsByIds
samples/cli/sample-apps Platform publicGetUserEntitlementsByIds \
    --namespace $AB_NAMESPACE \
    --userId '10kaXZLHzCk0Z9wY' \
    --availablePlatformOnly 'false' \
    --ids '["Bf0wT2B4b8vjy5n8", "nbpXmJwoQqbH95IJ", "qnZYOcb1Bua9XSrW"]' \
    > test.out 2>&1
eval_tap $? 449 'PublicGetUserEntitlementsByIds' test.out

#- 450 PublicGetUserEntitlementByItemId
eval_tap 0 450 'PublicGetUserEntitlementByItemId # SKIP deprecated' test.out

#- 451 PublicGetUserEntitlementBySku
eval_tap 0 451 'PublicGetUserEntitlementBySku # SKIP deprecated' test.out

#- 452 PublicUserEntitlementHistory
samples/cli/sample-apps Platform publicUserEntitlementHistory \
    --namespace $AB_NAMESPACE \
    --userId 'BdNcXZXPptXXTxqr' \
    --endDate 'NtqSTeGdmZjtMQv5' \
    --entitlementClazz 'ENTITLEMENT' \
    --limit '65' \
    --offset '49' \
    --startDate 'oxb8R60o7MYejug4' \
    > test.out 2>&1
eval_tap $? 452 'PublicUserEntitlementHistory' test.out

#- 453 PublicExistsAnyUserActiveEntitlement
samples/cli/sample-apps Platform publicExistsAnyUserActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --userId '88SgIK95KLM6mBd1' \
    --appIds '["zoFVG76UPkmAb43u", "yLePD4P9NjYh4Usm", "MsV0A342kGPAjMhN"]' \
    --itemIds '["pRHpnikQHLChJlNE", "7DvaD5XJQKPb6mzM", "l44OGWk6KUDZecE9"]' \
    --skus '["rsYUa5G064OwulGk", "xNi3WbzflwYeUTbH", "ohLMBAQHeyP71M5X"]' \
    > test.out 2>&1
eval_tap $? 453 'PublicExistsAnyUserActiveEntitlement' test.out

#- 454 PublicGetUserAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform publicGetUserAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'qs2LXn7aKAe2CLK2' \
    --appId '9p0NC6VrMh32r1rY' \
    > test.out 2>&1
eval_tap $? 454 'PublicGetUserAppEntitlementOwnershipByAppId' test.out

#- 455 PublicGetUserEntitlementOwnershipByItemId
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'EoGAp5WLENvsRG33' \
    --entitlementClazz 'OPTIONBOX' \
    --itemId 'IXgbZ5rU1FkmqXmb' \
    > test.out 2>&1
eval_tap $? 455 'PublicGetUserEntitlementOwnershipByItemId' test.out

#- 456 PublicGetUserEntitlementOwnershipByItemIds
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'kMTmvd4tohoJlmgn' \
    --ids '["kyw9EHaAmKMfQFCN", "VpBagiKWF7HNP3zW", "7hDycupMvIyYlSAS"]' \
    > test.out 2>&1
eval_tap $? 456 'PublicGetUserEntitlementOwnershipByItemIds' test.out

#- 457 PublicGetUserEntitlementOwnershipBySku
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --userId 'H64L8Qcys9yiCGwU' \
    --entitlementClazz 'CODE' \
    --sku 'i7ytuMMu3YME1yh3' \
    > test.out 2>&1
eval_tap $? 457 'PublicGetUserEntitlementOwnershipBySku' test.out

#- 458 PublicGetUserEntitlement
samples/cli/sample-apps Platform publicGetUserEntitlement \
    --entitlementId 'vhBse8bnvS56RR5o' \
    --namespace $AB_NAMESPACE \
    --userId 'ekiYrTNEl7BA672p' \
    > test.out 2>&1
eval_tap $? 458 'PublicGetUserEntitlement' test.out

#- 459 PublicConsumeUserEntitlement
samples/cli/sample-apps Platform publicConsumeUserEntitlement \
    --entitlementId 'nYARvlzQyNaJMQF2' \
    --namespace $AB_NAMESPACE \
    --userId 'HRqjzbI4DNv2D4F1' \
    --body '{"metadata": {"operationSource": "INVENTORY"}, "options": ["MbcVZECIeaeMc8zI", "ZFzfY8idqrKiiMdM", "UQFfU4DGoFhIZTsK"], "requestId": "74oUCRhrj2dqMWoX", "useCount": 82}' \
    > test.out 2>&1
eval_tap $? 459 'PublicConsumeUserEntitlement' test.out

#- 460 PublicSellUserEntitlement
samples/cli/sample-apps Platform publicSellUserEntitlement \
    --entitlementId 'u32NY0QcdMN9UWh9' \
    --namespace $AB_NAMESPACE \
    --userId 'VKxrHjFPtBzANhT2' \
    --body '{"requestId": "4lC3e0qO1oVPVAZD", "useCount": 31}' \
    > test.out 2>&1
eval_tap $? 460 'PublicSellUserEntitlement' test.out

#- 461 PublicSplitUserEntitlement
samples/cli/sample-apps Platform publicSplitUserEntitlement \
    --entitlementId 'wWgCyXAyMhOkS884' \
    --namespace $AB_NAMESPACE \
    --userId 'YFY05IbCyhD5P4gs' \
    --body '{"metadata": {"operationSource": "INVENTORY"}, "useCount": 68}' \
    > test.out 2>&1
eval_tap $? 461 'PublicSplitUserEntitlement' test.out

#- 462 PublicTransferUserEntitlement
samples/cli/sample-apps Platform publicTransferUserEntitlement \
    --entitlementId 'M6TAf0GQdakvuXpr' \
    --namespace $AB_NAMESPACE \
    --userId 'OEMJJybYUX498HNI' \
    --body '{"entitlementId": "fBC8Nnmg30te83Xg", "metadata": {"operationSource": "INVENTORY"}, "useCount": 20}' \
    > test.out 2>&1
eval_tap $? 462 'PublicTransferUserEntitlement' test.out

#- 463 PublicRedeemCode
samples/cli/sample-apps Platform publicRedeemCode \
    --namespace $AB_NAMESPACE \
    --userId '7ZiYldhJdOB1myJN' \
    --body '{"code": "1bma2if33b7TMyV6", "language": "by", "region": "lAR36ps7dm7k2f6k"}' \
    > test.out 2>&1
eval_tap $? 463 'PublicRedeemCode' test.out

#- 464 PublicFulfillAppleIAPItem
samples/cli/sample-apps Platform publicFulfillAppleIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'zswZQSvdee7VLVno' \
    --body '{"excludeOldTransactions": true, "language": "bpr_zcOJ-864", "productId": "Nz1TKp0ANuCjxwGd", "receiptData": "clRrPrXoCqNFFb0K", "region": "rUOIi27f2vam1qcY", "transactionId": "kykRXTco6CHeQj27"}' \
    > test.out 2>&1
eval_tap $? 464 'PublicFulfillAppleIAPItem' test.out

#- 465 SyncEpicGamesInventory
samples/cli/sample-apps Platform syncEpicGamesInventory \
    --namespace $AB_NAMESPACE \
    --userId 'FLKWFAYemT33Q2qv' \
    --body '{"epicGamesJwtToken": "hYPrJE9MYkGA9fNf"}' \
    > test.out 2>&1
eval_tap $? 465 'SyncEpicGamesInventory' test.out

#- 466 PublicFulfillGoogleIAPItem
samples/cli/sample-apps Platform publicFulfillGoogleIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'eT5zCZqkWLqdLoI8' \
    --body '{"autoAck": false, "autoConsume": true, "language": "KmO_YSGP", "orderId": "a2aotyCOsRwLLZ8V", "packageName": "XKHlMBwM2ZAG5SxN", "productId": "TrUNJ1IgEnZF6Mq2", "purchaseTime": 51, "purchaseToken": "qe0m8lQXi5zFjvys", "region": "3nxIXzv8YWG5TFLf", "subscriptionPurchase": true}' \
    > test.out 2>&1
eval_tap $? 466 'PublicFulfillGoogleIAPItem' test.out

#- 467 SyncOculusSubscriptions
samples/cli/sample-apps Platform syncOculusSubscriptions \
    --namespace $AB_NAMESPACE \
    --userId 'SV83HExU53zMbcvk' \
    --body '{"skus": ["rQhET72OCdJmuqkd", "7gSWNJ0G9Oa6MFtZ", "41N4In0GULNPhOD6"]}' \
    > test.out 2>&1
eval_tap $? 467 'SyncOculusSubscriptions' test.out

#- 468 SyncOculusConsumableEntitlements
samples/cli/sample-apps Platform syncOculusConsumableEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'Ye6f4fkJweZMg6UM' \
    > test.out 2>&1
eval_tap $? 468 'SyncOculusConsumableEntitlements' test.out

#- 469 PublicReconcilePlayStationStore
samples/cli/sample-apps Platform publicReconcilePlayStationStore \
    --namespace $AB_NAMESPACE \
    --userId 'ZZJgTjQ7HI1a7knZ' \
    --body '{"currencyCode": "9iNTKjqMhMXqJ5Jh", "price": 0.811971291396173, "productId": "s1HYQN94wPsq2sFr", "serviceLabel": 25}' \
    > test.out 2>&1
eval_tap $? 469 'PublicReconcilePlayStationStore' test.out

#- 470 PublicReconcilePlayStationStoreWithMultipleServiceLabels
samples/cli/sample-apps Platform publicReconcilePlayStationStoreWithMultipleServiceLabels \
    --namespace $AB_NAMESPACE \
    --userId 'a5pnLBUFD8FIwQbm' \
    --body '{"currencyCode": "VfNjhifvDxo4U1U7", "price": 0.3171975340415747, "productId": "C6oMSD9wE6bpufQo", "serviceLabels": [66, 84, 62]}' \
    > test.out 2>&1
eval_tap $? 470 'PublicReconcilePlayStationStoreWithMultipleServiceLabels' test.out

#- 471 SyncSteamInventory
samples/cli/sample-apps Platform syncSteamInventory \
    --namespace $AB_NAMESPACE \
    --userId 'Z5pnmpMgtDKHcBZB' \
    --body '{"appId": "Zkaf4NwoLmq6AiVh", "currencyCode": "ubjfoHvIAmRGLOM5", "language": "qWzU_zy", "price": 0.7593441037712707, "productId": "VVbQd4fvkYdl577x", "region": "TdvpKR6aHlKoBdgB", "steamId": "3xqDUHchbjyH8yZ4"}' \
    > test.out 2>&1
eval_tap $? 471 'SyncSteamInventory' test.out

#- 472 SyncSteamAbnormalTransaction
samples/cli/sample-apps Platform syncSteamAbnormalTransaction \
    --namespace $AB_NAMESPACE \
    --userId 'kLKJUWwqyDsS7W5c' \
    > test.out 2>&1
eval_tap $? 472 'SyncSteamAbnormalTransaction' test.out

#- 473 SyncSteamIAPByTransaction
samples/cli/sample-apps Platform syncSteamIAPByTransaction \
    --namespace $AB_NAMESPACE \
    --userId 'jTBgJdZSYvAd8Wqp' \
    --body '{"orderId": "zN8O8vrtfGpQSJ8C"}' \
    > test.out 2>&1
eval_tap $? 473 'SyncSteamIAPByTransaction' test.out

#- 474 PublicQueryUserThirdPartySubscription
samples/cli/sample-apps Platform publicQueryUserThirdPartySubscription \
    --namespace $AB_NAMESPACE \
    --platform 'APPLE' \
    --userId 'I8ybOqkP66By8gUB' \
    --activeOnly 'false' \
    --groupId 'd1YFA5SCwENKCewx' \
    --limit '86' \
    --offset '37' \
    --productId '1nRuIPbldImUzljt' \
    > test.out 2>&1
eval_tap $? 474 'PublicQueryUserThirdPartySubscription' test.out

#- 475 SyncTwitchDropsEntitlement1
samples/cli/sample-apps Platform syncTwitchDropsEntitlement1 \
    --namespace $AB_NAMESPACE \
    --userId '4Sj08igWJ2oUkZDh' \
    --body '{"gameId": "l29ehCmwJqKcObvg", "language": "HwN_FwZp", "region": "nmNUw91WqRc3BDBl"}' \
    > test.out 2>&1
eval_tap $? 475 'SyncTwitchDropsEntitlement1' test.out

#- 476 SyncXboxInventory
samples/cli/sample-apps Platform syncXboxInventory \
    --namespace $AB_NAMESPACE \
    --userId 'aCVtEjDd2mz66Hm7' \
    --body '{"currencyCode": "ZA9mvtEJeEdF0XF6", "price": 0.09562916493026263, "productId": "j2v8cxhHSZ1lYkyq", "xstsToken": "sVIypIppCeaKULAF"}' \
    > test.out 2>&1
eval_tap $? 476 'SyncXboxInventory' test.out

#- 477 PublicQueryUserOrders
samples/cli/sample-apps Platform publicQueryUserOrders \
    --namespace $AB_NAMESPACE \
    --userId 'OM1SQs7kIHHcmXuv' \
    --discounted 'true' \
    --itemId 'yGFBpUwVdCWvHWEh' \
    --limit '22' \
    --offset '28' \
    --status 'DELETED' \
    > test.out 2>&1
eval_tap $? 477 'PublicQueryUserOrders' test.out

#- 478 PublicCreateUserOrder
samples/cli/sample-apps Platform publicCreateUserOrder \
    --namespace $AB_NAMESPACE \
    --userId 'jcYcmtMLcJ9JsHcM' \
    --body '{"currencyCode": "KmY6KFRE9lLaM0ow", "discountCodes": ["EyhB00i2ByrdeKAr", "gj8Lt4prvXYZgCEy", "aNFrBz1GP62tuQ9K"], "discountedPrice": 67, "ext": {"CSCvhDvS4TfZdN4B": {}, "Fp7PkEsI5NPl6hA8": {}, "SUjSV3ipJHtLbt3z": {}}, "itemId": "POB19pH7hQ9vIxzF", "language": "KoO", "price": 35, "quantity": 64, "region": "FfLc2xblEoyog46v", "returnUrl": "MgvYgFN750P2msce", "sectionId": "TvNVMsEoR0HqJ2RW"}' \
    > test.out 2>&1
eval_tap $? 478 'PublicCreateUserOrder' test.out

#- 479 PublicPreviewOrderPrice
samples/cli/sample-apps Platform publicPreviewOrderPrice \
    --namespace $AB_NAMESPACE \
    --userId 'JA9AyVLGulTeBke2' \
    --body '{"currencyCode": "HMYlgv7tUwbgZyr2", "discountCodes": ["PqOFLp5RfHQNoFE9", "pTbbtAWfuk46h4C7", "tICGCJFWMuHlC85h"], "discountedPrice": 1, "itemId": "Cjhghr2WzjCPtVBd", "price": 85, "quantity": 83}' \
    > test.out 2>&1
eval_tap $? 479 'PublicPreviewOrderPrice' test.out

#- 480 PublicGetUserOrder
samples/cli/sample-apps Platform publicGetUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'NeNXe3gpJKAgoPQB' \
    --userId 'jksYXNXnGP98kNBS' \
    > test.out 2>&1
eval_tap $? 480 'PublicGetUserOrder' test.out

#- 481 PublicCancelUserOrder
samples/cli/sample-apps Platform publicCancelUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'c1RwExExhtcIQsqj' \
    --userId 'HTP2fxXZmnhFt4ID' \
    > test.out 2>&1
eval_tap $? 481 'PublicCancelUserOrder' test.out

#- 482 PublicGetUserOrderHistories
samples/cli/sample-apps Platform publicGetUserOrderHistories \
    --namespace $AB_NAMESPACE \
    --orderNo '8DlQGiOEJ90V499k' \
    --userId 'mMgoVLZjLQ0O9dlt' \
    > test.out 2>&1
eval_tap $? 482 'PublicGetUserOrderHistories' test.out

#- 483 PublicDownloadUserOrderReceipt
samples/cli/sample-apps Platform publicDownloadUserOrderReceipt \
    --namespace $AB_NAMESPACE \
    --orderNo 'jRaDWRL2whbnULMo' \
    --userId 'hDsvo6mwSc9j9pxu' \
    > test.out 2>&1
eval_tap $? 483 'PublicDownloadUserOrderReceipt' test.out

#- 484 PublicGetPaymentAccounts
samples/cli/sample-apps Platform publicGetPaymentAccounts \
    --namespace $AB_NAMESPACE \
    --userId 'uom991yB31WPRMnn' \
    > test.out 2>&1
eval_tap $? 484 'PublicGetPaymentAccounts' test.out

#- 485 PublicDeletePaymentAccount
samples/cli/sample-apps Platform publicDeletePaymentAccount \
    --id 'knMkT35lzmiz7iOs' \
    --namespace $AB_NAMESPACE \
    --type 'paypal' \
    --userId 'ArE8MIAAh5zlEuop' \
    > test.out 2>&1
eval_tap $? 485 'PublicDeletePaymentAccount' test.out

#- 486 PublicListActiveSections
samples/cli/sample-apps Platform publicListActiveSections \
    --namespace $AB_NAMESPACE \
    --userId 'XmfbqBLbv6BDSkdI' \
    --autoCalcEstimatedPrice 'false' \
    --language 'rVShAmABdvDXBEZl' \
    --region 'x8EensMGfA2FU967' \
    --storeId '7RLAtPk9jPt7dQbj' \
    --viewId 'PuDnkWfLWtRe5PU9' \
    > test.out 2>&1
eval_tap $? 486 'PublicListActiveSections' test.out

#- 487 PublicQueryUserSubscriptions
samples/cli/sample-apps Platform publicQueryUserSubscriptions \
    --namespace $AB_NAMESPACE \
    --userId 'Jp2yc61N4g3k3tUI' \
    --chargeStatus 'CHARGE_FAILED' \
    --itemId 'bDMlqc2YBgnPKblo' \
    --limit '55' \
    --offset '82' \
    --sku '0ZYIqMF9v7DZJa7Z' \
    --status 'ACTIVE' \
    --subscribedBy 'USER' \
    > test.out 2>&1
eval_tap $? 487 'PublicQueryUserSubscriptions' test.out

#- 488 PublicSubscribeSubscription
samples/cli/sample-apps Platform publicSubscribeSubscription \
    --namespace $AB_NAMESPACE \
    --userId 'UP5Bv3noSjv6lX8s' \
    --body '{"currencyCode": "VvvQDR6ouwuvBO5s", "itemId": "wzjDLpuDBhv8tiQQ", "language": "Nqj_ni", "region": "jVpCboZsWyafDUTv", "returnUrl": "LSUOnWfl2A354vhf", "source": "PhVAXuSMbL76vadm"}' \
    > test.out 2>&1
eval_tap $? 488 'PublicSubscribeSubscription' test.out

#- 489 PublicCheckUserSubscriptionSubscribableByItemId
samples/cli/sample-apps Platform publicCheckUserSubscriptionSubscribableByItemId \
    --namespace $AB_NAMESPACE \
    --userId '1Xi3gvX1l6Y80FfN' \
    --itemId 'hzrvwCOuzCz2n22t' \
    > test.out 2>&1
eval_tap $? 489 'PublicCheckUserSubscriptionSubscribableByItemId' test.out

#- 490 PublicGetUserSubscription
samples/cli/sample-apps Platform publicGetUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'YrgP77vumF1Eq0IZ' \
    --userId '28a8JKtc9FFkfTyP' \
    > test.out 2>&1
eval_tap $? 490 'PublicGetUserSubscription' test.out

#- 491 PublicChangeSubscriptionBillingAccount
samples/cli/sample-apps Platform publicChangeSubscriptionBillingAccount \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'jvVlxbax4CgsN9m8' \
    --userId 'pjSRqyL7yht6U2E3' \
    > test.out 2>&1
eval_tap $? 491 'PublicChangeSubscriptionBillingAccount' test.out

#- 492 PublicCancelSubscription
samples/cli/sample-apps Platform publicCancelSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'ZECyOLLDcolUwqOl' \
    --userId 'x4UZM9grsPOudvTY' \
    --body '{"immediate": true, "reason": "iSYdLQE6MwZzLUc9"}' \
    > test.out 2>&1
eval_tap $? 492 'PublicCancelSubscription' test.out

#- 493 PublicGetUserSubscriptionBillingHistories
samples/cli/sample-apps Platform publicGetUserSubscriptionBillingHistories \
    --namespace $AB_NAMESPACE \
    --subscriptionId '33CPX30Rx840B3G4' \
    --userId 'PnKSxNlpXtE7zsBS' \
    --excludeFree 'false' \
    --limit '20' \
    --offset '71' \
    > test.out 2>&1
eval_tap $? 493 'PublicGetUserSubscriptionBillingHistories' test.out

#- 494 PublicListViews
samples/cli/sample-apps Platform publicListViews \
    --namespace $AB_NAMESPACE \
    --userId 'qqYmwR12BJBH1F3d' \
    --language '6NvpG9ir0lwK9pmR' \
    --storeId '6QNR2usXSwmKJ745' \
    > test.out 2>&1
eval_tap $? 494 'PublicListViews' test.out

#- 495 PublicGetWallet
samples/cli/sample-apps Platform publicGetWallet \
    --currencyCode 'Y1Aq303kAVAgv6Do' \
    --namespace $AB_NAMESPACE \
    --userId 'X797uQiWspUuMrWn' \
    > test.out 2>&1
eval_tap $? 495 'PublicGetWallet' test.out

#- 496 PublicListUserWalletTransactions
samples/cli/sample-apps Platform publicListUserWalletTransactions \
    --currencyCode 'Z3Zsg2MIGCmTNTc1' \
    --namespace $AB_NAMESPACE \
    --userId 'j3eI71LpHz9rbw4c' \
    --limit '84' \
    --offset '3' \
    > test.out 2>&1
eval_tap $? 496 'PublicListUserWalletTransactions' test.out

#- 497 PublicGetMyDLCContent
samples/cli/sample-apps Platform publicGetMyDLCContent \
    --includeAllNamespaces 'true' \
    --type 'PSN' \
    > test.out 2>&1
eval_tap $? 497 'PublicGetMyDLCContent' test.out

#- 498 QueryFulfillments
samples/cli/sample-apps Platform queryFulfillments \
    --namespace $AB_NAMESPACE \
    --endTime '9r7ut9M6zaJgD16c' \
    --limit '24' \
    --offset '30' \
    --startTime 'BHwJ3QXdx5pXpwrD' \
    --state 'FULFILLED' \
    --transactionId 'ipygjo829rwhPTyr' \
    --userId 'bI9CDnUFyuCN47wB' \
    > test.out 2>&1
eval_tap $? 498 'QueryFulfillments' test.out

#- 499 QueryItemsV2
samples/cli/sample-apps Platform queryItemsV2 \
    --namespace $AB_NAMESPACE \
    --appType 'DEMO' \
    --availableDate 'BSu9eDxxrTm0kaLE' \
    --baseAppId 'YIsYuUTmW9rocw8a' \
    --categoryPath '8GaFEC7MJyJls6Uy' \
    --features 'aZgGsAaip3YCkpHn' \
    --includeSubCategoryItem 'true' \
    --itemName 'WzVtdETjYy3gJiJA' \
    --itemStatus 'INACTIVE' \
    --itemType '["BUNDLE", "SEASON", "BUNDLE"]' \
    --limit '20' \
    --offset '27' \
    --region '2i4yi3P0CrgL7IHg' \
    --sectionExclusive 'true' \
    --sortBy '["createdAt:desc", "name:desc"]' \
    --storeId 'MNCdUJwS9CUgEh4l' \
    --tags 'OMYBPW9at1yY5tfW' \
    --targetNamespace 'VN2qNoToLzupzKJF' \
    --withTotal 'true' \
    > test.out 2>&1
eval_tap $? 499 'QueryItemsV2' test.out

#- 500 ImportStore1
samples/cli/sample-apps Platform importStore1 \
    --namespace $AB_NAMESPACE \
    --storeId 'DII2MZTYzdrPV4LQ' \
    --strictMode 'false' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 500 'ImportStore1' test.out

#- 501 ExportStore1
samples/cli/sample-apps Platform exportStore1 \
    --namespace $AB_NAMESPACE \
    --storeId 'klhlC8rclRIQEOCH' \
    --body '{"itemIds": ["2iCVmsE2YnRbSMc9", "HLloHGN3UtfWdryr", "CsvMyFHu56GlPKWZ"]}' \
    > test.out 2>&1
eval_tap $? 501 'ExportStore1' test.out

#- 502 FulfillRewardsV2
samples/cli/sample-apps Platform fulfillRewardsV2 \
    --namespace $AB_NAMESPACE \
    --userId 'OPza90gs5zRBBqq4' \
    --body '{"entitlementCollectionId": "ydKana7VgR8xq0l4", "entitlementOrigin": "Oculus", "metadata": {"shAkt86qiGferg74": {}, "8Xy3IaRN2u05CAFc": {}, "EL3blo6MPIg1gxar": {}}, "origin": "IOS", "rewards": [{"currency": {"currencyCode": "5v7GTxOOivFnWSEV", "namespace": "6vFrQF46M6i0koh1"}, "item": {"itemId": "SEmzwNEdKBuyHPAX", "itemName": "K3Z6vN5FE2umYxE8", "itemSku": "JJC2RYudqmWLLfKN", "itemType": "lti1DZ5Q2fuU62YN"}, "quantity": 25, "type": "ITEM"}, {"currency": {"currencyCode": "a4eByWla4UCuyO4O", "namespace": "7R4Pd4QgvWkddimu"}, "item": {"itemId": "ouO2JewG56rl2AHR", "itemName": "mvaFzWHHvAAgCHLp", "itemSku": "4bV81fLHS2OJVYD2", "itemType": "BgrtoSdLnF2wKMjA"}, "quantity": 16, "type": "CURRENCY"}, {"currency": {"currencyCode": "e9oK8hYsfkCavqIL", "namespace": "M23Enq1PlzfygmDd"}, "item": {"itemId": "YiYnvvHL5EMMtCjR", "itemName": "Ptts2wdslRux5OGa", "itemSku": "joDJDyWwHqUIvtIR", "itemType": "bb620n1f5PZU7lgb"}, "quantity": 60, "type": "ITEM"}], "source": "ORDER_REVOCATION", "transactionId": "UGjT8AsCPnDT6MbG"}' \
    > test.out 2>&1
eval_tap $? 502 'FulfillRewardsV2' test.out

#- 503 FulfillItems
eval_tap 0 503 'FulfillItems # SKIP deprecated' test.out

#- 504 RetryFulfillItems
eval_tap 0 504 'RetryFulfillItems # SKIP deprecated' test.out

#- 505 RevokeItems
eval_tap 0 505 'RevokeItems # SKIP deprecated' test.out

#- 506 V2PublicFulfillAppleIAPItem
samples/cli/sample-apps Platform v2PublicFulfillAppleIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'BVDyU51zMcKXIAgT' \
    --body '{"transactionId": "cb7yhKAx083nIiMy"}' \
    > test.out 2>&1
eval_tap $? 506 'V2PublicFulfillAppleIAPItem' test.out

#- 507 BulkFulfillItemsV3
samples/cli/sample-apps Platform bulkFulfillItemsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'oPI9B4HdtFpo7pcg' \
    --body '[{"items": [{"duration": 41, "endDate": "1985-07-22T00:00:00Z", "entitlementCollectionId": "SOkxTq9dVsrdV1iU", "entitlementOrigin": "Epic", "itemId": "nR8LNHFa1A7LVqcq", "itemSku": "nqtDQjy8xzKMk9b4", "language": "hKtvXjmdxAbq7XFA", "metadata": {"xNgVZgdIlLP10ErD": {}, "ZnELloTQf6j3qdFT": {}, "djfP5x0s3ZGcV3Yc": {}}, "orderNo": "ialRcKWyMg1AsgEH", "origin": "Playstation", "quantity": 86, "region": "59iJnfPAY3MFDdif", "source": "SELL_BACK", "startDate": "1997-09-17T00:00:00Z", "storeId": "jbbauZL0mjSrpXIK"}, {"duration": 27, "endDate": "1997-02-26T00:00:00Z", "entitlementCollectionId": "rRChxJIEKXKVza8s", "entitlementOrigin": "GooglePlay", "itemId": "MQpiK3MOIDThpVrT", "itemSku": "V7uPhTiAkXyYnmOF", "language": "EDinYrWEXjLyE3vu", "metadata": {"5csPZHZXFSVsvF0M": {}, "64SiHn2PRJZTJxMM": {}, "z1yhdZmLT76UPG4k": {}}, "orderNo": "EGW1yZ5kyQlhWIwO", "origin": "Xbox", "quantity": 13, "region": "vzw07IJ4U9KkBk81", "source": "ACHIEVEMENT", "startDate": "1980-08-05T00:00:00Z", "storeId": "5H1i7gpXvNyjz9zv"}, {"duration": 78, "endDate": "1990-10-24T00:00:00Z", "entitlementCollectionId": "AhbOICgVdJ5MPYPc", "entitlementOrigin": "Nintendo", "itemId": "Gaemy0RCa48OQbaG", "itemSku": "zVjbfTG57ffl3qV4", "language": "H0tyhUkUR7IHAA3k", "metadata": {"gOS5f4m4GDKgOhC8": {}, "vCc2MBdNLFWNTlKd": {}, "nV2QCjtzIokY2vAo": {}}, "orderNo": "4ZLLXggC4IdbPrwA", "origin": "Playstation", "quantity": 53, "region": "Ia44mnw5XW7X7HmG", "source": "ORDER_REVOCATION", "startDate": "1976-09-24T00:00:00Z", "storeId": "tHC4qetcC9z9Vu7Z"}], "transactionId": "mlQTm4uHApEdZtan"}, {"items": [{"duration": 74, "endDate": "1993-05-04T00:00:00Z", "entitlementCollectionId": "Un0Ff9VCUQcs1LDE", "entitlementOrigin": "Nintendo", "itemId": "zr8j4aR0LPTqpAzm", "itemSku": "Tw9dLxPR3JJouO4F", "language": "StLRHuXw712X1tod", "metadata": {"TtV4RhbEKcVDEtZY": {}, "1toBVtdrP2oWpnSo": {}, "qIQQEWzyk65UQwFs": {}}, "orderNo": "JA6t1eHG5nFPHotd", "origin": "Twitch", "quantity": 23, "region": "sWJzplHICBO89DjY", "source": "ACHIEVEMENT", "startDate": "1985-11-01T00:00:00Z", "storeId": "HNUwc1dZhHNSc9jZ"}, {"duration": 81, "endDate": "1997-04-13T00:00:00Z", "entitlementCollectionId": "GPpQi63XNSu7ViiU", "entitlementOrigin": "Nintendo", "itemId": "NM8ys0Lnat5CHvjX", "itemSku": "aRHtfjchqcJGVXy1", "language": "aY7uzPQ7f57OVLX6", "metadata": {"7oBBVp8mlkUx0Osm": {}, "1iZzqSJ0RXFA8j9s": {}, "3NF3wUW5u2DnRxW4": {}}, "orderNo": "ejIz2TkQIp6lJ3Rb", "origin": "IOS", "quantity": 25, "region": "LA6lkdO9za0grjzV", "source": "ORDER_REVOCATION", "startDate": "1975-04-03T00:00:00Z", "storeId": "sGj8kkIDIpaV0n0H"}, {"duration": 23, "endDate": "1976-08-31T00:00:00Z", "entitlementCollectionId": "6BTtJgGsOk8pAcr4", "entitlementOrigin": "Oculus", "itemId": "Uoud4XDPXzmPD7lK", "itemSku": "mWhYdWwPWvH7I7mk", "language": "w8q0j9fcWmNnvxIv", "metadata": {"uLmyeN84bgFsrFwy": {}, "870303uYn8RWVwaS": {}, "0JT0wxvmCkP6W53O": {}}, "orderNo": "G9iESdMpB4MZs1Br", "origin": "Steam", "quantity": 48, "region": "YujCFAAuF9NpKczm", "source": "OTHER", "startDate": "1977-10-22T00:00:00Z", "storeId": "DFLqQoikpl1ZoUPD"}], "transactionId": "ZYhCXCEIbYObI3xA"}, {"items": [{"duration": 99, "endDate": "1989-02-04T00:00:00Z", "entitlementCollectionId": "gvSRX8CFJES0F9h3", "entitlementOrigin": "Oculus", "itemId": "rF5lFx5O1VC5HZap", "itemSku": "ar6rPIGNBZ206zWu", "language": "Fi4CVDAEovqVQzAP", "metadata": {"PNACFsfMBJuMkXgq": {}, "oAbYcPn9LKinZDip": {}, "Cogce0vfyFfbqwvZ": {}}, "orderNo": "SOzzkYLXdafASizK", "origin": "IOS", "quantity": 17, "region": "jk5ce0DUcn01DFmC", "source": "IAP", "startDate": "1985-03-11T00:00:00Z", "storeId": "LvLmRYjSMiYSuSl9"}, {"duration": 32, "endDate": "1993-07-23T00:00:00Z", "entitlementCollectionId": "p9IG6dQVNAWjeJsX", "entitlementOrigin": "IOS", "itemId": "3PnKb4fdsFeAYabz", "itemSku": "mtLbGZyv2q6Ny2Ux", "language": "kzBfTOB008RYc6wf", "metadata": {"Z7eFJrnrgSSfMz4k": {}, "gHYhr8ud3jAAGco2": {}, "WfXzTmP4pCJSYXb2": {}}, "orderNo": "tHpbg8P5OVS1IQ87", "origin": "GooglePlay", "quantity": 79, "region": "obRjDDxSwxTWbVcU", "source": "IAP_CHARGEBACK_REVERSED", "startDate": "1999-09-29T00:00:00Z", "storeId": "2UnG8XTTcEBMByDD"}, {"duration": 58, "endDate": "1997-07-09T00:00:00Z", "entitlementCollectionId": "P2pdPkIfcXlqxYbV", "entitlementOrigin": "GooglePlay", "itemId": "lBaIzPZRgrgCByLF", "itemSku": "jOc4cg3lQZRpINaB", "language": "P2vMcAqgNxktx4Ms", "metadata": {"DDk3WSOUiy1jmL06": {}, "Wx6J1QbPX0nLbgQL": {}, "ScGS4eJdr3pidMgz": {}}, "orderNo": "rHo4CmAER6OX2o5W", "origin": "Oculus", "quantity": 88, "region": "ly5r6lna0lqz5QO9", "source": "REDEEM_CODE", "startDate": "1982-08-05T00:00:00Z", "storeId": "1BWGWP5NTmDf3vdL"}], "transactionId": "M4mi01Cta9lREZ1G"}]' \
    > test.out 2>&1
eval_tap $? 507 'BulkFulfillItemsV3' test.out

#- 508 FulfillItemsV3
samples/cli/sample-apps Platform fulfillItemsV3 \
    --namespace $AB_NAMESPACE \
    --transactionId 'MKXyiaYwiDgAA8Pn' \
    --userId 'RlNZMY3RYsJHR85M' \
    --body '{"items": [{"duration": 98, "endDate": "1989-12-28T00:00:00Z", "entitlementCollectionId": "0UYHMYovqgH60AM1", "entitlementOrigin": "Steam", "itemId": "rsusUVYbcVzSMnhu", "itemSku": "fDHROlD4qJPVpy8j", "language": "QKv43B0o8WFLfLcD", "metadata": {"mE0M5GN2sbMCe9tb": {}, "4ZICGXAu6vaq27AZ": {}, "4dA5s4HXT1D9aazp": {}}, "orderNo": "SrRvfHiXcQ1GV1Fe", "origin": "Epic", "quantity": 2, "region": "SV7STVTW4KhHZTZa", "source": "IAP", "startDate": "1980-04-09T00:00:00Z", "storeId": "cejmDZOuLPpyBzeH"}, {"duration": 94, "endDate": "1988-09-30T00:00:00Z", "entitlementCollectionId": "PmjRSSVUBsBLYZDN", "entitlementOrigin": "System", "itemId": "wTUTxsD6uaDytgm9", "itemSku": "af5zxpiAVLSb4dUV", "language": "tmrqvgRO7yvgg4Sk", "metadata": {"cy1JNQXM2ECSWfHj": {}, "P90EPl9JSAiqhciN": {}, "AEDsf1YbCzsCV5ub": {}}, "orderNo": "9fYPkZ4kJVP4uwmm", "origin": "Epic", "quantity": 46, "region": "GjDW3uLLRknmg6Vs", "source": "ACHIEVEMENT", "startDate": "1979-02-26T00:00:00Z", "storeId": "rWXxnM8JEV2V3fPX"}, {"duration": 6, "endDate": "1993-03-04T00:00:00Z", "entitlementCollectionId": "mYOIGN7ME63YzclU", "entitlementOrigin": "Other", "itemId": "TIxrUciOKJCzPDN4", "itemSku": "O6qRBrfsntEzyNmQ", "language": "hRda2nL9lIUMXJqm", "metadata": {"mDrw88HSFw2PkPh2": {}, "IHP53ZXSBmEFRhbt": {}, "VqETq2FWfuNnIEoS": {}}, "orderNo": "NFBcp45tbMzoVPk1", "origin": "GooglePlay", "quantity": 51, "region": "8rqWr5sKCZZIJHwo", "source": "OTHER", "startDate": "1975-08-03T00:00:00Z", "storeId": "jEWYmzkopj9BZPXy"}]}' \
    > test.out 2>&1
eval_tap $? 508 'FulfillItemsV3' test.out

#- 509 RetryFulfillItemsV3
samples/cli/sample-apps Platform retryFulfillItemsV3 \
    --namespace $AB_NAMESPACE \
    --transactionId 'dE9D4JivIJiWz5HD' \
    --userId 'i2VtwPnNzqXsHI7H' \
    > test.out 2>&1
eval_tap $? 509 'RetryFulfillItemsV3' test.out

#- 510 RevokeItemsV3
samples/cli/sample-apps Platform revokeItemsV3 \
    --namespace $AB_NAMESPACE \
    --transactionId 'lHYrcIsbc7KpD9Vh' \
    --userId 'lZjf2eyeLjeJIqlt' \
    > test.out 2>&1
eval_tap $? 510 'RevokeItemsV3' test.out


rm -f "tmp.dat"

exit $EXIT_CODE