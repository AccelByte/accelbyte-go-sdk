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
echo "1..499"

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
    --id 'aWPSKvlk7ybOnZej' \
    > test.out 2>&1
eval_tap $? 3 'GetFulfillmentScript' test.out

#- 4 CreateFulfillmentScript
samples/cli/sample-apps Platform createFulfillmentScript \
    --id 'ZWg5oGYscX8oy72a' \
    --body '{"grantDays": "U1VJHLO16tI9QJsd"}' \
    > test.out 2>&1
eval_tap $? 4 'CreateFulfillmentScript' test.out

#- 5 DeleteFulfillmentScript
samples/cli/sample-apps Platform deleteFulfillmentScript \
    --id 'FkUtLAUOSoqguAOz' \
    > test.out 2>&1
eval_tap $? 5 'DeleteFulfillmentScript' test.out

#- 6 UpdateFulfillmentScript
samples/cli/sample-apps Platform updateFulfillmentScript \
    --id 'EXksxaUIeq06hzp6' \
    --body '{"grantDays": "mJDh5TISMHvtl3rp"}' \
    > test.out 2>&1
eval_tap $? 6 'UpdateFulfillmentScript' test.out

#- 7 ListItemTypeConfigs
samples/cli/sample-apps Platform listItemTypeConfigs \
    > test.out 2>&1
eval_tap $? 7 'ListItemTypeConfigs' test.out

#- 8 CreateItemTypeConfig
samples/cli/sample-apps Platform createItemTypeConfig \
    --body '{"clazz": "2twzGlUET5VP2jdp", "dryRun": true, "fulfillmentUrl": "wTGKmnzt33ujNYNv", "itemType": "SUBSCRIPTION", "purchaseConditionUrl": "5y7dxzwWSiBi6axm"}' \
    > test.out 2>&1
eval_tap $? 8 'CreateItemTypeConfig' test.out

#- 9 SearchItemTypeConfig
samples/cli/sample-apps Platform searchItemTypeConfig \
    --clazz 'UY8DkhxWsHGi4bBn' \
    --itemType 'SUBSCRIPTION' \
    > test.out 2>&1
eval_tap $? 9 'SearchItemTypeConfig' test.out

#- 10 GetItemTypeConfig
samples/cli/sample-apps Platform getItemTypeConfig \
    --id 'KUFJ4bCCA6CqEq9A' \
    > test.out 2>&1
eval_tap $? 10 'GetItemTypeConfig' test.out

#- 11 UpdateItemTypeConfig
samples/cli/sample-apps Platform updateItemTypeConfig \
    --id 'CEZjTcZHdPimSXpo' \
    --body '{"clazz": "KI0kSeCLSYhkdtMC", "dryRun": true, "fulfillmentUrl": "OPmHXEYyEjedFPoB", "purchaseConditionUrl": "6wsbusOio4JJeyjx"}' \
    > test.out 2>&1
eval_tap $? 11 'UpdateItemTypeConfig' test.out

#- 12 DeleteItemTypeConfig
samples/cli/sample-apps Platform deleteItemTypeConfig \
    --id 'r53k8O3S5rHElj6A' \
    > test.out 2>&1
eval_tap $? 12 'DeleteItemTypeConfig' test.out

#- 13 QueryCampaigns
samples/cli/sample-apps Platform queryCampaigns \
    --namespace $AB_NAMESPACE \
    --limit '58' \
    --name '70kjEhnkQriayeoS' \
    --offset '78' \
    --tag 'VQc8Us2C2tzBuzN3' \
    > test.out 2>&1
eval_tap $? 13 'QueryCampaigns' test.out

#- 14 CreateCampaign
samples/cli/sample-apps Platform createCampaign \
    --namespace $AB_NAMESPACE \
    --body '{"description": "UKU7vmlFwfAid24t", "discountConfig": {"categories": [{"categoryPath": "ao85YcmQE9Pd8X4v", "includeSubCategories": true}, {"categoryPath": "BBQmksfbUXk27iul", "includeSubCategories": false}, {"categoryPath": "rAKvXGRNnnjgyvvQ", "includeSubCategories": true}], "currencyCode": "10nJIw7ePYUdzUKD", "currencyNamespace": "oeVGAyQznH7zvuHq", "discountAmount": 67, "discountPercentage": 24, "discountType": "AMOUNT", "items": [{"itemId": "7mFR04B8xu8e05t7", "itemName": "REQT2TT5RcyoPvGF"}, {"itemId": "heqojjsMsL55atgb", "itemName": "P3T247vJ21oW4mlj"}, {"itemId": "dEl1DsH4IjTtJt2P", "itemName": "DCrzyIs4xW0kMj9t"}], "restrictType": "NONE", "stackable": false}, "items": [{"extraSubscriptionDays": 20, "itemId": "W5vYeFitHzCLmNKP", "itemName": "FS4h3ykTw5i7i3ks", "quantity": 62}, {"extraSubscriptionDays": 78, "itemId": "P5kwyHwjr83pckAg", "itemName": "US8NrzomOSIW4QDP", "quantity": 53}, {"extraSubscriptionDays": 19, "itemId": "Q83Tpy81T5V30GK7", "itemName": "RkbOWLYAz9VbMIfd", "quantity": 25}], "maxRedeemCountPerCampaignPerUser": 91, "maxRedeemCountPerCode": 75, "maxRedeemCountPerCodePerUser": 87, "maxSaleCount": 85, "name": "mtBzfANBc1Cz6dg9", "redeemEnd": "1979-04-07T00:00:00Z", "redeemStart": "1983-10-19T00:00:00Z", "redeemType": "ITEM", "status": "ACTIVE", "tags": ["rN25dIa8wHvUP2NZ", "jgkG9QVTRsu9YQhx", "thdjrBYcLXOHReRd"], "type": "REDEMPTION"}' \
    > test.out 2>&1
eval_tap $? 14 'CreateCampaign' test.out

#- 15 GetCampaign
samples/cli/sample-apps Platform getCampaign \
    --campaignId 'Y7mJ1Jx944GOjAwg' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 15 'GetCampaign' test.out

#- 16 UpdateCampaign
samples/cli/sample-apps Platform updateCampaign \
    --campaignId 'goE3xX5LjFXwuHxL' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "kSi5CVQYZXlaZaEl", "discountConfig": {"categories": [{"categoryPath": "7GeUW4pRJUzodHRC", "includeSubCategories": true}, {"categoryPath": "rqki8uj7kjps9Wrq", "includeSubCategories": true}, {"categoryPath": "64HUIoyq7keKXRrY", "includeSubCategories": true}], "currencyCode": "oOjayB2XwfZ7ByNN", "currencyNamespace": "q2NxqYoW09corcwA", "discountAmount": 80, "discountPercentage": 65, "discountType": "AMOUNT", "items": [{"itemId": "V9ZPy4tvDEVyqovy", "itemName": "Hf9hdIeTs4Gt5Cj6"}, {"itemId": "76Ie8x1pyw1F2u8U", "itemName": "4mEZAcNbmqn3nSj4"}, {"itemId": "cpElJSMI81okKh0T", "itemName": "JzDMHINKa7sS5aja"}], "restrictType": "NONE", "stackable": false}, "items": [{"extraSubscriptionDays": 71, "itemId": "qkA0LzcyrcfxF8LX", "itemName": "sSIsAm9SaqlTU4dg", "quantity": 54}, {"extraSubscriptionDays": 15, "itemId": "fRqxwxUhJVeRCDUI", "itemName": "siL336sSsj8njtbb", "quantity": 63}, {"extraSubscriptionDays": 92, "itemId": "POFwz84r4LNjYec3", "itemName": "uN6fGwMUm6muJWJE", "quantity": 88}], "maxRedeemCountPerCampaignPerUser": 69, "maxRedeemCountPerCode": 92, "maxRedeemCountPerCodePerUser": 74, "maxSaleCount": 90, "name": "QufjL4wzSzxPBj5g", "redeemEnd": "1976-04-24T00:00:00Z", "redeemStart": "1997-04-09T00:00:00Z", "redeemType": "DISCOUNT", "status": "INACTIVE", "tags": ["VY4u8FV5mV5hGbsn", "oy7LnnOU75ZWm3pe", "q9zMSq8IKmZcv9tP"]}' \
    > test.out 2>&1
eval_tap $? 16 'UpdateCampaign' test.out

#- 17 RenameBatch
samples/cli/sample-apps Platform renameBatch \
    --campaignId 'UqcKLfBr7JHzr7vh' \
    --namespace $AB_NAMESPACE \
    --body '{"newName": "Raz6f0xh6Jjb1CNI", "oldName": "AysHxokmmRIjRgjI"}' \
    > test.out 2>&1
eval_tap $? 17 'RenameBatch' test.out

#- 18 QueryCampaignBatchNames
samples/cli/sample-apps Platform queryCampaignBatchNames \
    --campaignId 'Q1aM3f1hcYJ9OdUQ' \
    --namespace $AB_NAMESPACE \
    --batchName 'vMhcL91bRBPEBbiU' \
    --limit '64' \
    > test.out 2>&1
eval_tap $? 18 'QueryCampaignBatchNames' test.out

#- 19 GetCampaignDynamic
samples/cli/sample-apps Platform getCampaignDynamic \
    --campaignId 'rZOCGosTKiAzny61' \
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
    --body '{"enableInventoryCheck": true, "itemDeletionCheckConfig": ["DLC", "CAMPAIGN", "REWARD"]}' \
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
    --body '{"appConfig": {"appName": "n1vBlefn98oocBuT"}, "customConfig": {"connectionType": "TLS", "grpcServerAddress": "lQTqcroARA7ed5y3"}, "extendType": "CUSTOM"}' \
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
    --force 'false' \
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
    --body '{"appConfig": {"appName": "TyanmpicTDhfbOtJ"}, "customConfig": {"connectionType": "TLS", "grpcServerAddress": "qcsobWeQpfdxBMSX"}, "extendType": "APP"}' \
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
    --storeId 'Bg9sVTdJLoMccrYs' \
    > test.out 2>&1
eval_tap $? 31 'GetRootCategories' test.out

#- 32 CreateCategory
samples/cli/sample-apps Platform createCategory \
    --namespace $AB_NAMESPACE \
    --storeId 'mKYjP2JUwtI03GdM' \
    --body '{"categoryPath": "0BLLw6IsevEXmmDu", "localizationDisplayNames": {"VgS24PB8irqNTghk": "7URFeNzWUzprhFup", "150Tuj3iu8Lu3bOB": "msFVTPXDDihJUkow", "Khy3xcTvLh5o260w": "aGvmwulBW7RUkKjy"}}' \
    > test.out 2>&1
eval_tap $? 32 'CreateCategory' test.out

#- 33 ListCategoriesBasic
samples/cli/sample-apps Platform listCategoriesBasic \
    --namespace $AB_NAMESPACE \
    --storeId 'FGYqsJbkr2RPBQ5Y' \
    > test.out 2>&1
eval_tap $? 33 'ListCategoriesBasic' test.out

#- 34 GetCategory
samples/cli/sample-apps Platform getCategory \
    --categoryPath 'y1sBX4XtfqAv0FPI' \
    --namespace $AB_NAMESPACE \
    --storeId 'qDyTRh2TQD5WBcMR' \
    > test.out 2>&1
eval_tap $? 34 'GetCategory' test.out

#- 35 UpdateCategory
samples/cli/sample-apps Platform updateCategory \
    --categoryPath 'z4nSYKRDDmjfnoob' \
    --namespace $AB_NAMESPACE \
    --storeId 'IKLm9FkGLPgyD6L9' \
    --body '{"localizationDisplayNames": {"vSnaxTILu5NVAj2z": "xRqLeA3JS4Yy5e33", "8VCBU2f7CHFnmHT6": "nabaf6FQSyKgU4rC", "0MhJDlDte9dcvFCa": "ZJaZFIp1v01Zw9ei"}}' \
    > test.out 2>&1
eval_tap $? 35 'UpdateCategory' test.out

#- 36 DeleteCategory
samples/cli/sample-apps Platform deleteCategory \
    --categoryPath '9ari9CX6yDK7nrlY' \
    --namespace $AB_NAMESPACE \
    --storeId 'Ji9F2gxnOW4VjXb9' \
    > test.out 2>&1
eval_tap $? 36 'DeleteCategory' test.out

#- 37 GetChildCategories
samples/cli/sample-apps Platform getChildCategories \
    --categoryPath 'jysDmFiDqC8UVgjo' \
    --namespace $AB_NAMESPACE \
    --storeId 'lYjl9YnuKgLnAgx9' \
    > test.out 2>&1
eval_tap $? 37 'GetChildCategories' test.out

#- 38 GetDescendantCategories
samples/cli/sample-apps Platform getDescendantCategories \
    --categoryPath 'YKl6rDS7GxoD36Mo' \
    --namespace $AB_NAMESPACE \
    --storeId 'N9W3XPfJHyizrSJQ' \
    > test.out 2>&1
eval_tap $? 38 'GetDescendantCategories' test.out

#- 39 QueryCodes
samples/cli/sample-apps Platform queryCodes \
    --campaignId 'lR6j2OfK4jgpoA10' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --batchName 'cORm1aNdzllwYIQv' \
    --batchNo '[6, 10, 45]' \
    --code 'MYKaGZDZ8i6QXqBW' \
    --limit '49' \
    --offset '32' \
    --withBatchName 'false' \
    > test.out 2>&1
eval_tap $? 39 'QueryCodes' test.out

#- 40 CreateCodes
samples/cli/sample-apps Platform createCodes \
    --campaignId 'tFTKb7x3ese5ZDRl' \
    --namespace $AB_NAMESPACE \
    --body '{"batchName": "WigxlrEWEbaQdvnM", "codeValue": "YGkwfHlpidoL2Eia", "quantity": 42}' \
    > test.out 2>&1
eval_tap $? 40 'CreateCodes' test.out

#- 41 Download
samples/cli/sample-apps Platform download \
    --campaignId 'hxUydTWQwzUYRSgL' \
    --namespace $AB_NAMESPACE \
    --batchName 'GX01URtEQlqoYAWQ' \
    --batchNo '[99, 15, 48]' \
    --withBatchName 'false' \
    > test.out 2>&1
eval_tap $? 41 'Download' test.out

#- 42 BulkDisableCodes
samples/cli/sample-apps Platform bulkDisableCodes \
    --campaignId '9dPhcXnvYmvGBRgh' \
    --namespace $AB_NAMESPACE \
    --batchName 'KSAjUxvU7qBZ7BNU' \
    --batchNo '[30, 6, 27]' \
    > test.out 2>&1
eval_tap $? 42 'BulkDisableCodes' test.out

#- 43 BulkEnableCodes
samples/cli/sample-apps Platform bulkEnableCodes \
    --campaignId 'GXIkgZmlmvOo4mBN' \
    --namespace $AB_NAMESPACE \
    --batchName '7cRHGMWVCIWDsxYn' \
    --batchNo '[77, 67, 89]' \
    > test.out 2>&1
eval_tap $? 43 'BulkEnableCodes' test.out

#- 44 QueryRedeemHistory
samples/cli/sample-apps Platform queryRedeemHistory \
    --campaignId 'TuHEKRZVqKJKtZb2' \
    --namespace $AB_NAMESPACE \
    --code '44nGoRJ8auaNb9l7' \
    --limit '87' \
    --offset '56' \
    --userId 'tPurGQBktcMYnGvG' \
    > test.out 2>&1
eval_tap $? 44 'QueryRedeemHistory' test.out

#- 45 GetCode
samples/cli/sample-apps Platform getCode \
    --code 'MajHKe8GyzWxybZh' \
    --namespace $AB_NAMESPACE \
    --redeemable 'false' \
    --withBatchName 'false' \
    > test.out 2>&1
eval_tap $? 45 'GetCode' test.out

#- 46 DisableCode
samples/cli/sample-apps Platform disableCode \
    --code 'mHEJjYav2pl5lN04' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 46 'DisableCode' test.out

#- 47 EnableCode
samples/cli/sample-apps Platform enableCode \
    --code 'pGhYMiNDpdzCxEXN' \
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
    --currencyType 'REAL' \
    > test.out 2>&1
eval_tap $? 51 'ListCurrencies' test.out

#- 52 CreateCurrency
samples/cli/sample-apps Platform createCurrency \
    --namespace $AB_NAMESPACE \
    --body '{"currencyCode": "T49Ue7uBRzqC6pxQ", "currencySymbol": "vtWrGpyvveTVPBd4", "currencyType": "VIRTUAL", "decimals": 68, "localizationDescriptions": {"8cujRJBWMKl5JYix": "h3GDHqMzeqy1l6w9", "d1gDQBoV8wwSdDtq": "4dafGVMSk4aagrTA", "SSzmnaddcUjlfg2r": "Q1y7o6OySME6yHop"}}' \
    > test.out 2>&1
eval_tap $? 52 'CreateCurrency' test.out

#- 53 UpdateCurrency
samples/cli/sample-apps Platform updateCurrency \
    --currencyCode 'MYIh4XmyokMRmxZE' \
    --namespace $AB_NAMESPACE \
    --body '{"localizationDescriptions": {"TdM0Ptqk2PXOngk3": "Pca7FMKa4pNfl2Vl", "w6binRRQ2HJJmVvY": "8JntbxFhPyfCgBYp", "lj9UUgwOZzsJcCHU": "YLusQ0Ho7sfk7OSC"}}' \
    > test.out 2>&1
eval_tap $? 53 'UpdateCurrency' test.out

#- 54 DeleteCurrency
samples/cli/sample-apps Platform deleteCurrency \
    --currencyCode 'heuNEZew0bu8wSmr' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 54 'DeleteCurrency' test.out

#- 55 GetCurrencyConfig
samples/cli/sample-apps Platform getCurrencyConfig \
    --currencyCode 'qRudv8sl4KSeyTy6' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 55 'GetCurrencyConfig' test.out

#- 56 GetCurrencySummary
samples/cli/sample-apps Platform getCurrencySummary \
    --currencyCode 'o9iRIm0qLtToXxji' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 56 'GetCurrencySummary' test.out

#- 57 GetDLCItemConfigHistory
samples/cli/sample-apps Platform getDLCItemConfigHistory \
    --namespace $AB_NAMESPACE \
    --dlcId 'mcFHps8ncqwx7qYD' \
    > test.out 2>&1
eval_tap $? 57 'GetDLCItemConfigHistory' test.out

#- 58 RestoreDLCItemConfigHistory
samples/cli/sample-apps Platform restoreDLCItemConfigHistory \
    --id 'na7p7OoHxWZen5Ut' \
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
    --body '{"data": [{"autoUpdate": false, "enableRevocation": true, "id": "G2sq0F3kou0TTQzt", "rewards": [{"currency": {"currencyCode": "8Ghzg1vmAxcS0syp", "namespace": "3aJ8lPOyTe401rdp"}, "item": {"itemId": "AivR8Y96NZr4DQo1", "itemName": "HwKXDIpJaCt67L3U", "itemSku": "aIlIuoyXvuya6ihY", "itemType": "EN5b8nj6tUjZsBZX"}, "quantity": 4, "type": "CURRENCY"}, {"currency": {"currencyCode": "G21uWTW4FJgaE1Us", "namespace": "sRF9fFCBVU7xIl6B"}, "item": {"itemId": "Qi7AxCss40Ihi1vp", "itemName": "HDW4MZzS3CxzQ0zz", "itemSku": "zZxSps4TEBDptcOV", "itemType": "uJrXRwET4b4H0ZQP"}, "quantity": 64, "type": "CURRENCY"}, {"currency": {"currencyCode": "5seCYWsn9ZAUQkdw", "namespace": "74U8Co7WK42FS4wJ"}, "item": {"itemId": "FJpCV0Yg4J5XzkRg", "itemName": "bAW3dmquMh8VpBv5", "itemSku": "anV2U8F3Lbld4NHp", "itemType": "yV1dfu8fjNY9l6oX"}, "quantity": 83, "type": "CURRENCY"}], "rvn": 99}, {"autoUpdate": true, "enableRevocation": false, "id": "mqP1nrJhTBqFGxAm", "rewards": [{"currency": {"currencyCode": "dRtG3XWFZzEMxLpd", "namespace": "B1NEQ4LIWeFbHEYE"}, "item": {"itemId": "lkJ5udDJLk1XBMU3", "itemName": "XFo8h1h4P2OtzoEm", "itemSku": "o5vVb7IZpFjKkino", "itemType": "ZSvmVYSvI9M8Yeb9"}, "quantity": 72, "type": "ITEM"}, {"currency": {"currencyCode": "LceVO7memTe7TcCY", "namespace": "5G2JtT1IQIjZ38fl"}, "item": {"itemId": "BeqXPkQqS1Iyj0XS", "itemName": "RILnPACJ1ql5P6P8", "itemSku": "Hr8hczApQSW82V8B", "itemType": "6RxKWUzu6K1MPGhG"}, "quantity": 91, "type": "ITEM"}, {"currency": {"currencyCode": "NeW8ZDSf4c7Wuo3k", "namespace": "lZelbCm0NdDummmu"}, "item": {"itemId": "XXWQQhuGyWACfOMa", "itemName": "MTs2VN8SgaIZMiUE", "itemSku": "6SUyP7F0QO9Bgbom", "itemType": "YqUMd1CO8yFO2XpO"}, "quantity": 54, "type": "CURRENCY"}], "rvn": 100}, {"autoUpdate": false, "enableRevocation": false, "id": "yzcjZpRkboULFiRB", "rewards": [{"currency": {"currencyCode": "5A6hndnWXGunnRpY", "namespace": "9TS8Nv1W86fttvOh"}, "item": {"itemId": "yl5jstNDkKA2qe9U", "itemName": "0MuJZ9s6SdH3cZjN", "itemSku": "IKU96herTOaeYq8a", "itemType": "PUIaicUDWabjrpHc"}, "quantity": 11, "type": "ITEM"}, {"currency": {"currencyCode": "bjFcAZ7kmxXtJgIY", "namespace": "BMMWqYVlcFrH3viG"}, "item": {"itemId": "8hIgxZNmYkExKAgR", "itemName": "Y70ZqjhOtLeheqeq", "itemSku": "EAueNcReIXJbpku2", "itemType": "9ogu6l5AhujN9bn7"}, "quantity": 95, "type": "CURRENCY"}, {"currency": {"currencyCode": "49Cygl2mhwj9C5GY", "namespace": "RiBD4Dz3o4RN6YIo"}, "item": {"itemId": "KLlPOKUpxUj1xOCF", "itemName": "WHhXe0igtoVdrdBr", "itemSku": "Q5mUxRgc1WplEVBg", "itemType": "FD9nDUkvmKtHnfIy"}, "quantity": 18, "type": "ITEM"}], "rvn": 6}]}' \
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
    --body '{"data": [{"platform": "EPICGAMES", "platformDlcIdMap": {"elGFW8OZ2IO6pcZh": "EKGsVvNSDD5NE6wn", "nJ4ixdCBWszKn48P": "IAdAWgvrmSUnrkKr", "UOViaZa6rL9hPUA3": "kypiIvIroiDgfhtA"}}, {"platform": "XBOX", "platformDlcIdMap": {"ddTSzbbHmSu5dLDv": "JgeeFfSR7VirZH74", "VBVK9zy1DuyETjjy": "ZjxLA2ee79urHsWR", "d8UbLA0qfXwDCyk0": "fEIFu441a1Vuicpv"}}, {"platform": "PSN", "platformDlcIdMap": {"yQ4qoXB9LW8MJMZM": "CmPaXbbrQGjIEVkt", "XICnb6PXiILdzITo": "hpzqtVfcGAbBQisq", "Jped53rGtk3ZEEN7": "yvQueYKe9egzypKs"}}]}' \
    > test.out 2>&1
eval_tap $? 63 'UpdatePlatformDLCConfig' test.out

#- 64 DeletePlatformDLCConfig
samples/cli/sample-apps Platform deletePlatformDLCConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 64 'DeletePlatformDLCConfig' test.out

#- 65 QueryEntitlements1
samples/cli/sample-apps Platform queryEntitlements1 \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --appType 'DEMO' \
    --entitlementClazz 'CODE' \
    --entitlementName 'D8gBYQZr1eDyPX0z' \
    --itemId '["TJVgggvFKX9JDfWb", "d1lCI5SDHy97BZq4", "2qAEKucbN1MFKPan"]' \
    --limit '56' \
    --offset '98' \
    --origin 'Other' \
    --userId '4lh7Og0Jn2RI925i' \
    > test.out 2>&1
eval_tap $? 65 'QueryEntitlements1' test.out

#- 66 QueryEntitlements
samples/cli/sample-apps Platform queryEntitlements \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --itemIds '["5WdAShGTL1lJZOFl", "ORKehrXHcyqYqzPL", "lyCVBzBq00nG7Mh5"]' \
    --limit '4' \
    --offset '83' \
    > test.out 2>&1
eval_tap $? 66 'QueryEntitlements' test.out

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
    --body '{"entitlementGrantList": [{"collectionId": "v1ydWdz3C1m3k2FX", "endDate": "1992-10-12T00:00:00Z", "grantedCode": "5qVjdylrhVogFVll", "itemId": "tDWGrjvu2DPrpCr7", "itemNamespace": "xHs5F0WCNOlpFBcB", "language": "SRJ-862", "metadata": {"tLYMEFgkLavUZNxR": {}, "tnNgdVsP15iXy92Y": {}, "fByV6LrjaavMjAq7": {}}, "origin": "Epic", "quantity": 3, "region": "c2rXph0SbN4Pcxsu", "source": "REFERRAL_BONUS", "startDate": "1989-09-13T00:00:00Z", "storeId": "PJ7q6cwAmtW8q94P"}, {"collectionId": "1QkSxToFSuowswwp", "endDate": "1995-12-31T00:00:00Z", "grantedCode": "lyAJ5RXSJZrsrooB", "itemId": "ZoOreLN4qdd0ap5L", "itemNamespace": "cfzunGgL6blYefJE", "language": "oWI_OZ", "metadata": {"UGq21sFlZVfEFIZ6": {}, "FpCVagr5OKAZSZPQ": {}, "4GRXd1TGtuajYPvz": {}}, "origin": "Playstation", "quantity": 16, "region": "cn0bQd6IklOhlw8Q", "source": "REWARD", "startDate": "1981-12-28T00:00:00Z", "storeId": "k9DMVICWOrOoEkcX"}, {"collectionId": "NloKQt8bJ4gWWomq", "endDate": "1984-03-17T00:00:00Z", "grantedCode": "POtqi2VoBgPd6t3u", "itemId": "pkN0rYufivKt6atH", "itemNamespace": "sNPUug8JiPDAa4UX", "language": "FFUM", "metadata": {"0lHJqJieT2Ltt3XY": {}, "7jZGtiySP8AhqjLg": {}, "rEnapYd1zT91Iwy2": {}}, "origin": "Twitch", "quantity": 7, "region": "VHT3cYqJVX9Tu9dV", "source": "GIFT", "startDate": "1984-01-29T00:00:00Z", "storeId": "eDO9B3vFX3nCbFUD"}], "userIds": ["jJ5yJyGwQrgQFPPr", "6ItW1cqNOHgq34RN", "EOM4DaYSPfJvu2H4"]}' \
    > test.out 2>&1
eval_tap $? 69 'GrantEntitlements' test.out

#- 70 RevokeEntitlements
samples/cli/sample-apps Platform revokeEntitlements \
    --namespace $AB_NAMESPACE \
    --body '["xOObW6Wp7QPRgD5R", "ZM6yHQ44svtCYl2x", "uOWX7qnok7vYdbXh"]' \
    > test.out 2>&1
eval_tap $? 70 'RevokeEntitlements' test.out

#- 71 GetEntitlement
samples/cli/sample-apps Platform getEntitlement \
    --entitlementId 'PhgEBZS4EzR2K1kv' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 71 'GetEntitlement' test.out

#- 72 QueryFulfillmentHistories
samples/cli/sample-apps Platform queryFulfillmentHistories \
    --namespace $AB_NAMESPACE \
    --limit '17' \
    --offset '7' \
    --status 'SUCCESS' \
    --userId 'bMpuDQv7KzBYy17L' \
    > test.out 2>&1
eval_tap $? 72 'QueryFulfillmentHistories' test.out

#- 73 QueryIAPClawbackHistory
samples/cli/sample-apps Platform queryIAPClawbackHistory \
    --namespace $AB_NAMESPACE \
    --endTime 'UBvGYvR21JM67UYD' \
    --eventType 'OTHER' \
    --externalOrderId 'C6RoNvohTYwvPwAU' \
    --limit '32' \
    --offset '62' \
    --startTime 'ytBj9Ly49gb9OYeW' \
    --status 'SUCCESS' \
    --userId 'zesnSP7y99WV6ZJC' \
    > test.out 2>&1
eval_tap $? 73 'QueryIAPClawbackHistory' test.out

#- 74 MockPlayStationStreamEvent
samples/cli/sample-apps Platform mockPlayStationStreamEvent \
    --namespace $AB_NAMESPACE \
    --body '{"body": {"account": "QRuRGnm83aTghDYB", "additionalData": {"entitlement": [{"clientTransaction": [{"amountConsumed": 12, "clientTransactionId": "Pc68gFM08oyqjxQr"}, {"amountConsumed": 10, "clientTransactionId": "0H7ExfjJpgporGH8"}, {"amountConsumed": 61, "clientTransactionId": "WAcukSffD0y2fV5U"}], "entitlementId": "jsaIPj3ig5TK38EM", "usageCount": 38}, {"clientTransaction": [{"amountConsumed": 68, "clientTransactionId": "BZOrwZNyar5VAdAz"}, {"amountConsumed": 80, "clientTransactionId": "7jjdLVXzl5eAhvdR"}, {"amountConsumed": 2, "clientTransactionId": "xKTTULgK25iqM9hh"}], "entitlementId": "8vIoZbMkWibQkq6l", "usageCount": 39}, {"clientTransaction": [{"amountConsumed": 11, "clientTransactionId": "05VZth685NFGvzcm"}, {"amountConsumed": 94, "clientTransactionId": "kIiCgvOQjmmcsyUm"}, {"amountConsumed": 77, "clientTransactionId": "vFjSJf1VYYXP70hD"}], "entitlementId": "s3Uy4e7zuWoJ2Roa", "usageCount": 13}], "purpose": "NF1pSy7pBAxHa0eb"}, "originalTitleName": "aPk0HZD3ZqzVs60Q", "paymentProductSKU": "Rzvn8dEkNxccFMs8", "purchaseDate": "IgoHnAObgmlruqq9", "sourceOrderItemId": "Jij8i39I6gTUKE8d", "titleName": "RDqdLn3Ea60rj6kz"}, "eventDomain": "OuBzubfYwIyjhl6r", "eventSource": "uQOIgKUJCucHWrl5", "eventType": "k5bku6PpGmpOdqIe", "eventVersion": 23, "id": "dTpiTtdiQoPtl21U", "timestamp": "qCvFWis1CMTuqYLW"}' \
    > test.out 2>&1
eval_tap $? 74 'MockPlayStationStreamEvent' test.out

#- 75 MockXblClawbackEvent
samples/cli/sample-apps Platform mockXblClawbackEvent \
    --namespace $AB_NAMESPACE \
    --body '{"data": {"eventDate": "tEVllGPqoj1Gg0zl", "eventState": "VgJKYsgm2uPcUC0M", "lineItemId": "g0YN6KAY9Ix1uYni", "orderId": "FcazfRDbnaPk4Ytf", "productId": "oEJmfqMlWYIh8Bxv", "productType": "LEAy7z8mYd171GPR", "purchasedDate": "OiZi4ybmLnHnYJT3", "sandboxId": "lvkyW5UvERP0kmhq", "skuId": "X7cHpf7dYsEAM5t2", "subscriptionData": {"consumedDurationInDays": 92, "dateTime": "uM8aqO6LOftDmdQ1", "durationInDays": 89, "recurrenceId": "ToKgnv54nZxDrgPb"}}, "datacontenttype": "nYk4RLOtYgiPxgiw", "id": "UGJ6Ur1ONG5KyETB", "source": "87utneMslKShWTQ5", "specVersion": "j0ztlygMbFsVTTMt", "subject": "3V5EQ4SKZ3mDTxQe", "time": "0QTKO4PMFbkc0Lt1", "traceparent": "MrfZmwO5tGxtFyZQ", "type": "FaybOjG5w7n63x7l"}' \
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
    --body '{"appAppleId": 33, "bundleId": "ytoYs0smSTKIZefA", "issuerId": "DxLFFNe9QrRmq4qu", "keyId": "5BxMGfOHVnSydbA3", "password": "1hUhKVTrviY9Kai4", "version": "V1"}' \
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
    --body '{"sandboxId": "8TKegE4ikDDAiqOh"}' \
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
    --body '{"applicationName": "kTPjCK0WHajvWJNp", "notificationTokenAudience": "nROK2ZwtC3Dauwsz", "notificationTokenEmail": "Kqb9BbSIosKYryuK", "packageName": "uNIGS3l5oCzw5L2G", "serviceAccountId": "CAB3bY9WdYhFkqdn"}' \
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
    --body '{"data": [{"itemIdentity": "M3zjuGeIRRkiM3Xz", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"Bl2hsmpx0WyJhVIF": "5YAo93VSc7Rupu8b", "2rNGHTMZgmcvFk5y": "0ZbQ2Fl32UZs0Bbb", "c3LF17jXGop3FLg5": "zQ8pcuVL3NNMmBWy"}}, {"itemIdentity": "3A7lRDGJEYb4hiKz", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"OkRTv1BngjgPhv3r": "wlH1b58EloAwCCzs", "NkMeFR7dXxVWLdGH": "FVA1dzEhpV8e8mwd", "dzQs907NU8OD1QuB": "EDDFfVrcFjMAGbVH"}}, {"itemIdentity": "tWsAxDIGc49BXsNu", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"gnG2oJhO1KcukrA6": "TTZVdPsyuJO5xFfz", "HjXUWiXM3oLFESgs": "a3zczaxS4vSb96MA", "Y6UBf32TVMyOV7HK": "o2J0hImY8MDGLwug"}}]}' \
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
    --body '{"appId": "aauiyJ0Oz6qj79xE", "appSecret": "u6HqdKX5hKYHfstJ"}' \
    > test.out 2>&1
eval_tap $? 91 'UpdateOculusIAPConfig' test.out

#- 92 DeleteOculusIAPConfig
samples/cli/sample-apps Platform deleteOculusIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 92 'DeleteOculusIAPConfig' test.out

#- 93 GetPlayStationIAPConfig
samples/cli/sample-apps Platform getPlayStationIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 93 'GetPlayStationIAPConfig' test.out

#- 94 UpdatePlaystationIAPConfig
samples/cli/sample-apps Platform updatePlaystationIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"backOfficeServerClientId": "CCs6KZmpM1VXB2kG", "backOfficeServerClientSecret": "NP37OLapGSPUjSUf", "enableStreamJob": true, "environment": "5UNGau80hcpOUmhE", "streamName": "CkF8MXxRTiP0Wtvc", "streamPartnerName": "FWULvRRkoDl1Rrqj"}' \
    > test.out 2>&1
eval_tap $? 94 'UpdatePlaystationIAPConfig' test.out

#- 95 DeletePlaystationIAPConfig
samples/cli/sample-apps Platform deletePlaystationIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 95 'DeletePlaystationIAPConfig' test.out

#- 96 ValidateExistedPlaystationIAPConfig
samples/cli/sample-apps Platform validateExistedPlaystationIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 96 'ValidateExistedPlaystationIAPConfig' test.out

#- 97 ValidatePlaystationIAPConfig
samples/cli/sample-apps Platform validatePlaystationIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"backOfficeServerClientId": "sTHVEd5GDqGlTr1x", "backOfficeServerClientSecret": "S8hTRMPDALDmcEov", "enableStreamJob": false, "environment": "VEnl7KSmQSSLAMIF", "streamName": "3tkpt07N15x8yb4W", "streamPartnerName": "m4wXLaGgtLmuEJsN"}' \
    > test.out 2>&1
eval_tap $? 97 'ValidatePlaystationIAPConfig' test.out

#- 98 GetSteamIAPConfig
samples/cli/sample-apps Platform getSteamIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 98 'GetSteamIAPConfig' test.out

#- 99 UpdateSteamIAPConfig
samples/cli/sample-apps Platform updateSteamIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"appId": "PApCTuQ4T9RWFp7M", "env": "LIVE", "publisherAuthenticationKey": "Uf5rcyRIRXwmV57Y", "syncMode": "INVENTORY"}' \
    > test.out 2>&1
eval_tap $? 99 'UpdateSteamIAPConfig' test.out

#- 100 DeleteSteamIAPConfig
samples/cli/sample-apps Platform deleteSteamIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 100 'DeleteSteamIAPConfig' test.out

#- 101 GetTwitchIAPConfig
samples/cli/sample-apps Platform getTwitchIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 101 'GetTwitchIAPConfig' test.out

#- 102 UpdateTwitchIAPConfig
samples/cli/sample-apps Platform updateTwitchIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"clientId": "bkvxfKpRMvavJPpo", "clientSecret": "ssPHhJD7x8ItECDU", "organizationId": "BzH059BXO8WCoCmI"}' \
    > test.out 2>&1
eval_tap $? 102 'UpdateTwitchIAPConfig' test.out

#- 103 DeleteTwitchIAPConfig
samples/cli/sample-apps Platform deleteTwitchIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 103 'DeleteTwitchIAPConfig' test.out

#- 104 GetXblIAPConfig
samples/cli/sample-apps Platform getXblIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 104 'GetXblIAPConfig' test.out

#- 105 UpdateXblIAPConfig
samples/cli/sample-apps Platform updateXblIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"enableClawback": false, "entraAppClientId": "JSIp4KRS72DBnFQ7", "entraAppClientSecret": "6kIXGOuUo8VkFB9d", "entraTenantId": "8C6nRx906bNJiylj", "relyingPartyCert": "gzv5yePN4WqYT8xS"}' \
    > test.out 2>&1
eval_tap $? 105 'UpdateXblIAPConfig' test.out

#- 106 DeleteXblAPConfig
samples/cli/sample-apps Platform deleteXblAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 106 'DeleteXblAPConfig' test.out

#- 107 UpdateXblBPCertFile
samples/cli/sample-apps Platform updateXblBPCertFile \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    --password 'DszOv1QqLnrCHGPt' \
    > test.out 2>&1
eval_tap $? 107 'UpdateXblBPCertFile' test.out

#- 108 QueryThirdPartyNotifications
samples/cli/sample-apps Platform queryThirdPartyNotifications \
    --namespace $AB_NAMESPACE \
    --endDate 'QEnX76iCTYtwlGPJ' \
    --externalId 'rWmPY2ejIIAd3i4I' \
    --limit '25' \
    --offset '39' \
    --source 'APPLE' \
    --startDate 'IO0FubOnHodJR6vp' \
    --status 'IGNORED' \
    --type 'DwNvObJJijUJgl5L' \
    > test.out 2>&1
eval_tap $? 108 'QueryThirdPartyNotifications' test.out

#- 109 QueryAbnormalTransactions
samples/cli/sample-apps Platform queryAbnormalTransactions \
    --namespace $AB_NAMESPACE \
    --limit '41' \
    --offset '66' \
    --orderId '6aFA35Qp5svGMpC7' \
    --steamId 'yjHi1a0n51Drg03E' \
    > test.out 2>&1
eval_tap $? 109 'QueryAbnormalTransactions' test.out

#- 110 AdminGetSteamJobInfo
samples/cli/sample-apps Platform adminGetSteamJobInfo \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 110 'AdminGetSteamJobInfo' test.out

#- 111 AdminResetSteamJobTime
samples/cli/sample-apps Platform adminResetSteamJobTime \
    --namespace $AB_NAMESPACE \
    --body '{"env": "LIVE", "lastTime": "1992-11-22T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 111 'AdminResetSteamJobTime' test.out

#- 112 AdminRefundIAPOrder
samples/cli/sample-apps Platform adminRefundIAPOrder \
    --iapOrderNo 'nSVNIygHrjhEwTDI' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 112 'AdminRefundIAPOrder' test.out

#- 113 QuerySteamReportHistories
samples/cli/sample-apps Platform querySteamReportHistories \
    --namespace $AB_NAMESPACE \
    --limit '66' \
    --offset '12' \
    --orderId 'zTtIlorJLGH271Cl' \
    --processStatus 'ERROR' \
    --steamId 'Aht67LY9BLlpnpNo' \
    > test.out 2>&1
eval_tap $? 113 'QuerySteamReportHistories' test.out

#- 114 QueryThirdPartySubscription
samples/cli/sample-apps Platform queryThirdPartySubscription \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --groupId 'Spui6wPPOVuSljrN' \
    --limit '64' \
    --offset '10' \
    --platform 'EPICGAMES' \
    --productId 'Yt3If6TyRGnxpKKa' \
    --userId '1chDmOaCqjHwuq0M' \
    > test.out 2>&1
eval_tap $? 114 'QueryThirdPartySubscription' test.out

#- 115 GetIAPOrderConsumeDetails
samples/cli/sample-apps Platform getIAPOrderConsumeDetails \
    --iapOrderNo 'PWOtMQTM61KbUYUE' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 115 'GetIAPOrderConsumeDetails' test.out

#- 116 DownloadInvoiceDetails
samples/cli/sample-apps Platform downloadInvoiceDetails \
    --namespace $AB_NAMESPACE \
    --endTime 'hMfzFsAOKIr2y3wq' \
    --feature 'd77Ml4psDwHT76pL' \
    --itemId 'ejLveU8WhKFCmnLp' \
    --itemType 'INGAMEITEM' \
    --startTime 'C7k65VhCRCGCiEDX' \
    > test.out 2>&1
eval_tap $? 116 'DownloadInvoiceDetails' test.out

#- 117 GenerateInvoiceSummary
samples/cli/sample-apps Platform generateInvoiceSummary \
    --namespace $AB_NAMESPACE \
    --endTime 'zU7riARWbOAYYaNn' \
    --feature 'bwzkEIbwQEq2l4Te' \
    --itemId 'oSzCjZQnlKssYesT' \
    --itemType 'MEDIA' \
    --startTime 'jTWisT8nunlCho3s' \
    > test.out 2>&1
eval_tap $? 117 'GenerateInvoiceSummary' test.out

#- 118 SyncInGameItem
samples/cli/sample-apps Platform syncInGameItem \
    --namespace $AB_NAMESPACE \
    --storeId 'IB92b78QjdaiewqN' \
    --body '{"categoryPath": "E3XUoTR44VGDx04M", "targetItemId": "SnwacHsncYooJMDF", "targetNamespace": "eIEVPAwfHcDpir38"}' \
    > test.out 2>&1
eval_tap $? 118 'SyncInGameItem' test.out

#- 119 CreateItem
samples/cli/sample-apps Platform createItem \
    --namespace $AB_NAMESPACE \
    --storeId '5ELv30y8UxQJkLxV' \
    --body '{"appId": "ACX8U4GLi2wZNhig", "appType": "DLC", "baseAppId": "4GpK05D0RreKrKTi", "boothName": "5VL5me0Uz4xl3DWh", "categoryPath": "x9IpLtJxAT7PGFtF", "clazz": "FLlPi4sAh8NShR0C", "displayOrder": 11, "entitlementType": "CONSUMABLE", "ext": {"ddjqHYAgBmFwTl1b": {}, "SMEtREBcE2NzraQs": {}, "JJsk8XAbWBMIBUC1": {}}, "features": ["Hfd8HSgLv6vkgPQP", "HvVmGrCzAkh35KnY", "26pWurLWK0sJImUr"], "flexible": false, "images": [{"as": "2XftWcPSxFxfPWUe", "caption": "5yLFoR31AY0uP7iS", "height": 25, "imageUrl": "6M0TBdOhywtSFJ5y", "smallImageUrl": "EiSqFp0Dv9EhPjGD", "width": 3}, {"as": "Aa8pIt74LfyJpluy", "caption": "bakf4Eqjb6seRW5N", "height": 86, "imageUrl": "NBozq7x274Rua2Lj", "smallImageUrl": "DmQe5blKvasH3zL5", "width": 11}, {"as": "5gvJZulcq903u5vF", "caption": "kQaQKL7HR2uBde8V", "height": 71, "imageUrl": "9D8mFACynYu5bfqb", "smallImageUrl": "KidOj5asMqNjrfl2", "width": 96}], "inventoryConfig": {"customAttributes": {"HXPcrGU94Cw0R1rN": {}, "tvSTMilJnBmVc6jM": {}, "csfFvRRJLJSjUAuq": {}}, "serverCustomAttributes": {"k3Do6SBwYoCBGDEs": {}, "uLJcBZpgEuzKEAqO": {}, "cTSFiuiqOZMAETdY": {}}, "slotUsed": 62}, "itemIds": ["NB1sZJ5YrkkFnWFm", "9UOoIPfwwCgZJeMx", "hLJcciqTXrhLTdA6"], "itemQty": {"e4zHrGkLehNUePHW": 100, "aVACvE3r3iviejzS": 98, "Kgu1ff6jp4sprze4": 12}, "itemType": "COINS", "listable": false, "localizations": {"1P7XrLEeTLMamr0I": {"description": "WDZBuzYuQyaWd9ow", "localExt": {"ipO0B8ihIPBVmwGg": {}, "FVEghm87CmLyVSb5": {}, "yLcWhXh6OsAN5PrN": {}}, "longDescription": "CGwdhVxQK60DTa60", "title": "fffYRDzA6QPnMyKG"}, "kicaOqJC33n70MxO": {"description": "MlykzONPCi3nk1Pb", "localExt": {"x3LlOBN487d697WS": {}, "tZthrTwASQbeeZ5c": {}, "BXyQ2UQmnDIcFm5G": {}}, "longDescription": "8JsQrj6Q9UKUpkc2", "title": "jhxSJZIsDxGhtXC0"}, "BmMJ1gNrRiWEzB6v": {"description": "G4HCPPTbEF4LbAFO", "localExt": {"y4io83eQ0BfmtNJn": {}, "MwjNj02I73tcfAcF": {}, "SUmLnzzpwMRpRJwH": {}}, "longDescription": "5NHFMnCuDMt2oqt0", "title": "nDy4JrGjPHFEpdkz"}}, "lootBoxConfig": {"rewardCount": 79, "rewards": [{"lootBoxItems": [{"count": 73, "duration": 9, "endDate": "1976-03-03T00:00:00Z", "itemId": "mBnwGGFeMPHQ55qH", "itemSku": "uGtAI7s3f3Fbe7lG", "itemType": "HTHGFBP2DNElXv2T"}, {"count": 18, "duration": 19, "endDate": "1997-03-28T00:00:00Z", "itemId": "A8cUQPPsrlrxwgeH", "itemSku": "VQwOQSaDqZY86JWC", "itemType": "H69SOX8xSxi9zoaM"}, {"count": 17, "duration": 5, "endDate": "1996-04-02T00:00:00Z", "itemId": "QdPrhTg1Q5Db0Osy", "itemSku": "7gBMNquLqeC9fet4", "itemType": "OhhF132jwxcC82cZ"}], "name": "b89hwQtZ7a96qbsZ", "odds": 0.5477094929397133, "type": "PROBABILITY_GROUP", "weight": 35}, {"lootBoxItems": [{"count": 91, "duration": 56, "endDate": "1976-10-24T00:00:00Z", "itemId": "zZS654XSZ1NSn1yN", "itemSku": "TWEqZGoDY3nHxkUM", "itemType": "iOqmvqkhiUzOIhYS"}, {"count": 61, "duration": 89, "endDate": "1993-12-18T00:00:00Z", "itemId": "Cmgm891Vlh41X3ob", "itemSku": "l5Nnz1paZQdHuKz9", "itemType": "mo0NuQg0mHnEwB6C"}, {"count": 72, "duration": 58, "endDate": "1995-12-27T00:00:00Z", "itemId": "MsUcYz3JVNsBk4O6", "itemSku": "k00cM0OEITEFPkcw", "itemType": "J2DYcdlbFI5CxsYm"}], "name": "ymioASXyZxwOsLAv", "odds": 0.8803042616823401, "type": "REWARD", "weight": 35}, {"lootBoxItems": [{"count": 16, "duration": 38, "endDate": "1990-06-19T00:00:00Z", "itemId": "nidR40KL6EdEMIn7", "itemSku": "mcf5KGqB5YSUzV5k", "itemType": "vFCEsQZy1VEH8v8X"}, {"count": 80, "duration": 27, "endDate": "1984-07-06T00:00:00Z", "itemId": "s8cR8WBzb2w2bRzm", "itemSku": "Tvs2tWy4QOQ0B4ew", "itemType": "hbsezF4FHWGSrQ4A"}, {"count": 100, "duration": 33, "endDate": "1995-01-04T00:00:00Z", "itemId": "jdWe2n3pGrPr9pCr", "itemSku": "uH7nGe9nvNGEndWp", "itemType": "2GC9bD0h6uqrzs3M"}], "name": "e3sAZc23VmLIILwc", "odds": 0.6898388581149636, "type": "REWARD", "weight": 90}], "rollFunction": "DEFAULT"}, "maxCount": 84, "maxCountPerUser": 81, "name": "4KlQBETLaRCdrXVF", "optionBoxConfig": {"boxItems": [{"count": 76, "duration": 6, "endDate": "1987-11-18T00:00:00Z", "itemId": "2puwy1ulaiLnJzVI", "itemSku": "eOTvIdvrWAIo2SgE", "itemType": "zrXBNuhA0xFy2tgi"}, {"count": 51, "duration": 89, "endDate": "1979-07-24T00:00:00Z", "itemId": "w0HdqRNsZu7w101a", "itemSku": "EdbkSRwq6yFKaNxM", "itemType": "wqm6SJVPiTreVdMH"}, {"count": 60, "duration": 7, "endDate": "1975-05-03T00:00:00Z", "itemId": "WaLQVau7mompP95l", "itemSku": "l49EkZgwcHJelyZC", "itemType": "LRCNzafMvL3zta9H"}]}, "purchasable": true, "recurring": {"cycle": "YEARLY", "fixedFreeDays": 45, "fixedTrialCycles": 60, "graceDays": 96}, "regionData": {"4koXFMULDOXNWyH6": [{"currencyCode": "9Z4ewihBeqWgFniY", "currencyNamespace": "rmX69DqWQjjcSnhQ", "currencyType": "VIRTUAL", "discountAmount": 43, "discountExpireAt": "1994-04-22T00:00:00Z", "discountPercentage": 13, "discountPurchaseAt": "1977-01-29T00:00:00Z", "expireAt": "1983-08-09T00:00:00Z", "price": 32, "purchaseAt": "1989-06-07T00:00:00Z", "trialPrice": 23}, {"currencyCode": "iT1I5HXhm41cnPqI", "currencyNamespace": "vIItKZmbjnZ9hDIb", "currencyType": "VIRTUAL", "discountAmount": 77, "discountExpireAt": "1984-09-07T00:00:00Z", "discountPercentage": 32, "discountPurchaseAt": "1993-06-30T00:00:00Z", "expireAt": "1977-12-24T00:00:00Z", "price": 92, "purchaseAt": "1992-04-08T00:00:00Z", "trialPrice": 73}, {"currencyCode": "vDSfLUA3LIkSfx5o", "currencyNamespace": "VXhM0M73k3x86jcZ", "currencyType": "VIRTUAL", "discountAmount": 53, "discountExpireAt": "1973-04-02T00:00:00Z", "discountPercentage": 75, "discountPurchaseAt": "1986-08-11T00:00:00Z", "expireAt": "1974-04-23T00:00:00Z", "price": 75, "purchaseAt": "1991-02-03T00:00:00Z", "trialPrice": 55}], "OveFzHX2xGUD9G9K": [{"currencyCode": "mgmkjFJWvvkdnSQ8", "currencyNamespace": "URkEv6DQxCwpyjJx", "currencyType": "VIRTUAL", "discountAmount": 46, "discountExpireAt": "1996-03-16T00:00:00Z", "discountPercentage": 70, "discountPurchaseAt": "1987-03-13T00:00:00Z", "expireAt": "1997-03-14T00:00:00Z", "price": 61, "purchaseAt": "1981-03-17T00:00:00Z", "trialPrice": 82}, {"currencyCode": "x1gPUs58B7UbUBYe", "currencyNamespace": "haJF01uicgDNzhvR", "currencyType": "REAL", "discountAmount": 89, "discountExpireAt": "1982-08-03T00:00:00Z", "discountPercentage": 8, "discountPurchaseAt": "1973-01-31T00:00:00Z", "expireAt": "1984-06-01T00:00:00Z", "price": 76, "purchaseAt": "1999-10-21T00:00:00Z", "trialPrice": 43}, {"currencyCode": "AVVE4H0g5XX5qEIa", "currencyNamespace": "Rhf9bhVhqeL0Rg80", "currencyType": "REAL", "discountAmount": 26, "discountExpireAt": "1978-07-22T00:00:00Z", "discountPercentage": 2, "discountPurchaseAt": "1988-10-12T00:00:00Z", "expireAt": "1998-05-15T00:00:00Z", "price": 94, "purchaseAt": "1983-08-14T00:00:00Z", "trialPrice": 53}], "qd16YYRp6Api2If5": [{"currencyCode": "gWo8PC1rfYis5CIo", "currencyNamespace": "5yA6MEvRT6CkSukY", "currencyType": "REAL", "discountAmount": 86, "discountExpireAt": "1992-10-14T00:00:00Z", "discountPercentage": 15, "discountPurchaseAt": "1977-12-12T00:00:00Z", "expireAt": "1977-10-24T00:00:00Z", "price": 91, "purchaseAt": "1978-05-17T00:00:00Z", "trialPrice": 74}, {"currencyCode": "gIfPqLfYg9heOuTP", "currencyNamespace": "9mFokWiZWYLxrFiZ", "currencyType": "REAL", "discountAmount": 49, "discountExpireAt": "1994-02-17T00:00:00Z", "discountPercentage": 50, "discountPurchaseAt": "1978-01-04T00:00:00Z", "expireAt": "1994-05-04T00:00:00Z", "price": 78, "purchaseAt": "1988-12-04T00:00:00Z", "trialPrice": 67}, {"currencyCode": "4Z5uCm3BQIa4nvTZ", "currencyNamespace": "9X6e8BKLnaaz5LIx", "currencyType": "REAL", "discountAmount": 80, "discountExpireAt": "1986-02-04T00:00:00Z", "discountPercentage": 50, "discountPurchaseAt": "1987-09-21T00:00:00Z", "expireAt": "1986-01-31T00:00:00Z", "price": 50, "purchaseAt": "1979-05-27T00:00:00Z", "trialPrice": 60}]}, "saleConfig": {"currencyCode": "lqMiId28dTTpaU0E", "price": 84}, "seasonType": "PASS", "sectionExclusive": true, "sellable": false, "sku": "WkIHzgV3hfLdbhnC", "stackable": false, "status": "ACTIVE", "tags": ["Iw0EitMVJBa6T4Sn", "zYfSQBBV4xAV1744", "2t47wYCuHI3gOKfh"], "targetCurrencyCode": "JghLawm51L0BnjPi", "targetNamespace": "Jdw6FbbxAjg0K7Gm", "thumbnailUrl": "KZ38XX6kQMoxdusx", "useCount": 33}' \
    > test.out 2>&1
eval_tap $? 119 'CreateItem' test.out

#- 120 GetItemByAppId
samples/cli/sample-apps Platform getItemByAppId \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --storeId 'u06skAaCvHv698vy' \
    --appId 'qpc6WuKVApnHag7E' \
    > test.out 2>&1
eval_tap $? 120 'GetItemByAppId' test.out

#- 121 QueryItems
samples/cli/sample-apps Platform queryItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --appType 'DLC' \
    --availableDate 'XmEl5VtQ8b9NdEB2' \
    --baseAppId 'QypzOiXkakDkNx1m' \
    --categoryPath 'pIsaBShUlRE1lnTu' \
    --features 'E7zfiLVBCa5AGGBX' \
    --includeSubCategoryItem 'true' \
    --itemType 'OPTIONBOX' \
    --limit '13' \
    --offset '50' \
    --region 'hk8jWRv4R0rhT0tx' \
    --sortBy '["updatedAt:desc", "name", "name:asc"]' \
    --storeId 'xqijn6PUmDqzmMfJ' \
    --tags 'ydAH6NQIjgblbYwM' \
    --targetNamespace 'EICdivaW1mX27Gwn' \
    > test.out 2>&1
eval_tap $? 121 'QueryItems' test.out

#- 122 ListBasicItemsByFeatures
samples/cli/sample-apps Platform listBasicItemsByFeatures \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --features '["LPunbq5vSfGLxKDu", "NPsGEaxXaq3dYOAy", "DvFhEe4rETm4Wpon"]' \
    > test.out 2>&1
eval_tap $? 122 'ListBasicItemsByFeatures' test.out

#- 123 GetItems
samples/cli/sample-apps Platform getItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'rwWgaMJyy6LlLeP8' \
    --itemIds 'AIYEDQEPwHtroE2w' \
    > test.out 2>&1
eval_tap $? 123 'GetItems' test.out

#- 124 GetItemBySku
samples/cli/sample-apps Platform getItemBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'dNS7aKXigYRWUKFV' \
    --sku 'CtG8v296XmcI7DTt' \
    > test.out 2>&1
eval_tap $? 124 'GetItemBySku' test.out

#- 125 GetLocaleItemBySku
samples/cli/sample-apps Platform getLocaleItemBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --language 'JvgG400zHhLLzOAX' \
    --populateBundle 'false' \
    --region '4wFeRlUlWGSdx1A1' \
    --storeId 'GBpbFX6Siz9osKcz' \
    --sku 'Qzr1hsJ0ou4l9eTJ' \
    > test.out 2>&1
eval_tap $? 125 'GetLocaleItemBySku' test.out

#- 126 GetEstimatedPrice
samples/cli/sample-apps Platform getEstimatedPrice \
    --namespace $AB_NAMESPACE \
    --platform '5XLLxOUdA0HLviUP' \
    --region 'oSavVAFDA257xPM3' \
    --storeId 'TaJN9qOiqP6HXYsL' \
    --itemIds 'h7hW8TDwU72yWWi4' \
    --userId 'Dp9Jr0RUBuJgLHcz' \
    > test.out 2>&1
eval_tap $? 126 'GetEstimatedPrice' test.out

#- 127 GetItemIdBySku
samples/cli/sample-apps Platform getItemIdBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId '94vQTRj9eKeBuOJp' \
    --sku 'gXjvo4PuR2SFxJb1' \
    > test.out 2>&1
eval_tap $? 127 'GetItemIdBySku' test.out

#- 128 GetBulkItemIdBySkus
samples/cli/sample-apps Platform getBulkItemIdBySkus \
    --namespace $AB_NAMESPACE \
    --sku '["YQX8I1rxheox43Ek", "NjSvN1D45sS5LnJF", "aadG3YnyZhnwZDkX"]' \
    --storeId 'O61rHWHZAwSq8ykR' \
    > test.out 2>&1
eval_tap $? 128 'GetBulkItemIdBySkus' test.out

#- 129 BulkGetLocaleItems
samples/cli/sample-apps Platform bulkGetLocaleItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --language 'TlAbJb8WpDhYxLOy' \
    --region '9qhpYxrrFr4yRrDT' \
    --storeId 'IWKcHazILOxUVz6B' \
    --itemIds 'UIOqMtG46f8oPRpg' \
    > test.out 2>&1
eval_tap $? 129 'BulkGetLocaleItems' test.out

#- 130 GetAvailablePredicateTypes
samples/cli/sample-apps Platform getAvailablePredicateTypes \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 130 'GetAvailablePredicateTypes' test.out

#- 131 ValidateItemPurchaseCondition
samples/cli/sample-apps Platform validateItemPurchaseCondition \
    --namespace $AB_NAMESPACE \
    --platform 'gUyP0swT7ZfoRNhP' \
    --userId 'ZFN0zBW2sOC5kYuN' \
    --body '{"itemIds": ["rBBz9wxKIey5Hp8i", "1XcBFDTZYMphaTRK", "QSOezRv5PP0l68Ty"]}' \
    > test.out 2>&1
eval_tap $? 131 'ValidateItemPurchaseCondition' test.out

#- 132 BulkUpdateRegionData
samples/cli/sample-apps Platform bulkUpdateRegionData \
    --namespace $AB_NAMESPACE \
    --storeId 'Sy2BXhjuILS3RA22' \
    --body '{"changes": [{"itemIdentities": ["ThwT2XckdnMNFWpA", "GNJoEIOwfy01z55l", "HmI02cFxSoPELyU1"], "itemIdentityType": "ITEM_ID", "regionData": {"KF6O13E18oqsvSLv": [{"currencyCode": "GAVHJRJVayPF4hGM", "currencyNamespace": "RpzeKSv2jppm03k3", "currencyType": "REAL", "discountAmount": 84, "discountExpireAt": "1994-09-20T00:00:00Z", "discountPercentage": 77, "discountPurchaseAt": "1987-06-17T00:00:00Z", "discountedPrice": 78, "expireAt": "1989-06-02T00:00:00Z", "price": 93, "purchaseAt": "1995-02-19T00:00:00Z", "trialPrice": 82}, {"currencyCode": "9JNe6JSnfaEWVmis", "currencyNamespace": "yNhGx7RIRWErHfmJ", "currencyType": "VIRTUAL", "discountAmount": 19, "discountExpireAt": "1976-03-18T00:00:00Z", "discountPercentage": 30, "discountPurchaseAt": "1982-06-29T00:00:00Z", "discountedPrice": 32, "expireAt": "1992-03-20T00:00:00Z", "price": 88, "purchaseAt": "1991-12-01T00:00:00Z", "trialPrice": 57}, {"currencyCode": "oy5xVZm5W7ShBIcD", "currencyNamespace": "CLYxgXNfDCBl9GY7", "currencyType": "REAL", "discountAmount": 48, "discountExpireAt": "1994-07-14T00:00:00Z", "discountPercentage": 89, "discountPurchaseAt": "1979-02-13T00:00:00Z", "discountedPrice": 41, "expireAt": "1997-10-19T00:00:00Z", "price": 3, "purchaseAt": "1986-04-02T00:00:00Z", "trialPrice": 21}], "1hRaLp17Z5habcxB": [{"currencyCode": "09QLkQVPUyR58BrX", "currencyNamespace": "25PlnTIw5EscgdVh", "currencyType": "VIRTUAL", "discountAmount": 25, "discountExpireAt": "1985-07-03T00:00:00Z", "discountPercentage": 12, "discountPurchaseAt": "1977-06-22T00:00:00Z", "discountedPrice": 74, "expireAt": "1979-03-20T00:00:00Z", "price": 68, "purchaseAt": "1976-04-15T00:00:00Z", "trialPrice": 80}, {"currencyCode": "ZpDua59PdW5AkB4B", "currencyNamespace": "PD8A3mNbmXVm1OUb", "currencyType": "REAL", "discountAmount": 51, "discountExpireAt": "1985-11-14T00:00:00Z", "discountPercentage": 12, "discountPurchaseAt": "1998-11-07T00:00:00Z", "discountedPrice": 76, "expireAt": "1986-05-24T00:00:00Z", "price": 4, "purchaseAt": "1989-07-08T00:00:00Z", "trialPrice": 45}, {"currencyCode": "0OQB8y36CipRchTR", "currencyNamespace": "eHHu24oAcdCb4kYf", "currencyType": "VIRTUAL", "discountAmount": 36, "discountExpireAt": "1998-09-27T00:00:00Z", "discountPercentage": 27, "discountPurchaseAt": "1981-09-25T00:00:00Z", "discountedPrice": 0, "expireAt": "1998-11-22T00:00:00Z", "price": 69, "purchaseAt": "1983-04-01T00:00:00Z", "trialPrice": 70}], "VkC32trpq7T7zoLL": [{"currencyCode": "1rXQmyZfT4I0tgsE", "currencyNamespace": "UDzcrLLZRFxf1k8I", "currencyType": "VIRTUAL", "discountAmount": 29, "discountExpireAt": "1991-09-30T00:00:00Z", "discountPercentage": 31, "discountPurchaseAt": "1972-06-27T00:00:00Z", "discountedPrice": 38, "expireAt": "1985-12-22T00:00:00Z", "price": 58, "purchaseAt": "1996-03-17T00:00:00Z", "trialPrice": 76}, {"currencyCode": "ps1wDL0X3xXoGXXF", "currencyNamespace": "XVr1HTbFQQfeRG8u", "currencyType": "VIRTUAL", "discountAmount": 67, "discountExpireAt": "1987-05-07T00:00:00Z", "discountPercentage": 54, "discountPurchaseAt": "1976-05-18T00:00:00Z", "discountedPrice": 26, "expireAt": "1993-09-02T00:00:00Z", "price": 95, "purchaseAt": "1991-10-18T00:00:00Z", "trialPrice": 29}, {"currencyCode": "AdjAMEgGQ6pCJMaw", "currencyNamespace": "ygxw7vC5H5sLixGO", "currencyType": "REAL", "discountAmount": 74, "discountExpireAt": "1993-10-15T00:00:00Z", "discountPercentage": 25, "discountPurchaseAt": "1984-04-27T00:00:00Z", "discountedPrice": 11, "expireAt": "1971-02-11T00:00:00Z", "price": 37, "purchaseAt": "1980-01-28T00:00:00Z", "trialPrice": 79}]}}, {"itemIdentities": ["GL9m2lt1eR2YLhjd", "eTdgw2kIVUR1U6cp", "c2u1pX6qPD46iWj4"], "itemIdentityType": "ITEM_ID", "regionData": {"NKZ9JRgxLTMiaY0z": [{"currencyCode": "j5rcTUWXJeiFndWD", "currencyNamespace": "cgQteZhGjKYWgJg1", "currencyType": "VIRTUAL", "discountAmount": 78, "discountExpireAt": "1976-08-02T00:00:00Z", "discountPercentage": 9, "discountPurchaseAt": "1977-01-24T00:00:00Z", "discountedPrice": 50, "expireAt": "1979-03-03T00:00:00Z", "price": 55, "purchaseAt": "1988-04-28T00:00:00Z", "trialPrice": 63}, {"currencyCode": "WkdkDiMgCSOLcC0s", "currencyNamespace": "VfDr1jxet2iIjLx8", "currencyType": "VIRTUAL", "discountAmount": 25, "discountExpireAt": "1983-02-10T00:00:00Z", "discountPercentage": 77, "discountPurchaseAt": "1987-02-11T00:00:00Z", "discountedPrice": 48, "expireAt": "1994-07-13T00:00:00Z", "price": 26, "purchaseAt": "1996-07-04T00:00:00Z", "trialPrice": 76}, {"currencyCode": "VmIhCCKN6OwWgdiO", "currencyNamespace": "jNgGejBxnMlKKreA", "currencyType": "REAL", "discountAmount": 46, "discountExpireAt": "1974-04-07T00:00:00Z", "discountPercentage": 63, "discountPurchaseAt": "1981-06-09T00:00:00Z", "discountedPrice": 45, "expireAt": "1984-08-13T00:00:00Z", "price": 8, "purchaseAt": "1994-05-31T00:00:00Z", "trialPrice": 70}], "WM1agZfGehDsEurD": [{"currencyCode": "thZPuntl6Ig6fln9", "currencyNamespace": "8etvty2HMBNneGvV", "currencyType": "VIRTUAL", "discountAmount": 43, "discountExpireAt": "1984-10-27T00:00:00Z", "discountPercentage": 55, "discountPurchaseAt": "1973-02-23T00:00:00Z", "discountedPrice": 1, "expireAt": "1988-05-26T00:00:00Z", "price": 41, "purchaseAt": "1981-03-26T00:00:00Z", "trialPrice": 93}, {"currencyCode": "8vB2iqJKJi6nRYus", "currencyNamespace": "3XXQYMCQytoeCC4H", "currencyType": "REAL", "discountAmount": 43, "discountExpireAt": "1998-12-12T00:00:00Z", "discountPercentage": 13, "discountPurchaseAt": "1989-03-25T00:00:00Z", "discountedPrice": 67, "expireAt": "1987-11-22T00:00:00Z", "price": 47, "purchaseAt": "1972-01-28T00:00:00Z", "trialPrice": 32}, {"currencyCode": "HW4Z8PllheM019Ua", "currencyNamespace": "x9ZLtA5cRnEnH3Sb", "currencyType": "VIRTUAL", "discountAmount": 75, "discountExpireAt": "1974-01-10T00:00:00Z", "discountPercentage": 36, "discountPurchaseAt": "1989-11-07T00:00:00Z", "discountedPrice": 42, "expireAt": "1997-11-30T00:00:00Z", "price": 48, "purchaseAt": "1995-05-21T00:00:00Z", "trialPrice": 41}], "spFGKoKE9P6bSznZ": [{"currencyCode": "dhi6P2GexTEgU9Jk", "currencyNamespace": "6jWfWsRt6A1750AW", "currencyType": "VIRTUAL", "discountAmount": 41, "discountExpireAt": "1974-01-03T00:00:00Z", "discountPercentage": 81, "discountPurchaseAt": "1991-11-27T00:00:00Z", "discountedPrice": 76, "expireAt": "1984-05-12T00:00:00Z", "price": 37, "purchaseAt": "1991-10-24T00:00:00Z", "trialPrice": 71}, {"currencyCode": "vR9IUkZCaOO2UKr7", "currencyNamespace": "gqmHKplM989luMSs", "currencyType": "VIRTUAL", "discountAmount": 85, "discountExpireAt": "1996-10-16T00:00:00Z", "discountPercentage": 6, "discountPurchaseAt": "1979-10-11T00:00:00Z", "discountedPrice": 29, "expireAt": "1980-02-21T00:00:00Z", "price": 36, "purchaseAt": "1972-08-28T00:00:00Z", "trialPrice": 65}, {"currencyCode": "O4ESBG4ot5U7b3lh", "currencyNamespace": "8hSH0pWiaRgZ000U", "currencyType": "REAL", "discountAmount": 37, "discountExpireAt": "1993-09-09T00:00:00Z", "discountPercentage": 53, "discountPurchaseAt": "1974-10-27T00:00:00Z", "discountedPrice": 5, "expireAt": "1977-03-25T00:00:00Z", "price": 50, "purchaseAt": "1974-07-10T00:00:00Z", "trialPrice": 57}]}}, {"itemIdentities": ["LyIA0L3t5J3wZO6t", "3psooYA65LDpeXfe", "PvAldjWvklWYOiv4"], "itemIdentityType": "ITEM_ID", "regionData": {"HCzJCesaszgQmukF": [{"currencyCode": "r4bXhSaJlpSrxaVU", "currencyNamespace": "iW4n37Uko4EQokmZ", "currencyType": "VIRTUAL", "discountAmount": 74, "discountExpireAt": "1983-05-06T00:00:00Z", "discountPercentage": 95, "discountPurchaseAt": "1976-11-08T00:00:00Z", "discountedPrice": 2, "expireAt": "1971-07-16T00:00:00Z", "price": 54, "purchaseAt": "1989-04-17T00:00:00Z", "trialPrice": 72}, {"currencyCode": "dlq5gGvpgfcBDVc3", "currencyNamespace": "TQELDigCz4XhaDOu", "currencyType": "REAL", "discountAmount": 94, "discountExpireAt": "1990-02-16T00:00:00Z", "discountPercentage": 87, "discountPurchaseAt": "1983-01-17T00:00:00Z", "discountedPrice": 3, "expireAt": "1982-03-14T00:00:00Z", "price": 41, "purchaseAt": "1984-04-08T00:00:00Z", "trialPrice": 28}, {"currencyCode": "YhVIXeMqSUrJfvd5", "currencyNamespace": "xLRaLN7blf4778w6", "currencyType": "REAL", "discountAmount": 0, "discountExpireAt": "1981-06-11T00:00:00Z", "discountPercentage": 27, "discountPurchaseAt": "1999-10-08T00:00:00Z", "discountedPrice": 64, "expireAt": "1999-10-16T00:00:00Z", "price": 50, "purchaseAt": "1972-02-11T00:00:00Z", "trialPrice": 68}], "PVzUqV8CaETPNHce": [{"currencyCode": "6AzZMTmcadAYv27V", "currencyNamespace": "MIIseFtSPByXFfad", "currencyType": "REAL", "discountAmount": 67, "discountExpireAt": "1974-08-11T00:00:00Z", "discountPercentage": 43, "discountPurchaseAt": "1975-07-22T00:00:00Z", "discountedPrice": 16, "expireAt": "1999-09-21T00:00:00Z", "price": 32, "purchaseAt": "1981-07-22T00:00:00Z", "trialPrice": 57}, {"currencyCode": "cGOEcM9m4EJxiYkH", "currencyNamespace": "usjAKIgqV3ZTOzZU", "currencyType": "REAL", "discountAmount": 59, "discountExpireAt": "1977-11-01T00:00:00Z", "discountPercentage": 75, "discountPurchaseAt": "1990-05-11T00:00:00Z", "discountedPrice": 58, "expireAt": "1990-07-11T00:00:00Z", "price": 19, "purchaseAt": "1976-01-15T00:00:00Z", "trialPrice": 30}, {"currencyCode": "9Vh5LMZ33JvrrNeI", "currencyNamespace": "WKj24dfOabgrn2kU", "currencyType": "REAL", "discountAmount": 12, "discountExpireAt": "1991-10-08T00:00:00Z", "discountPercentage": 33, "discountPurchaseAt": "1981-02-17T00:00:00Z", "discountedPrice": 7, "expireAt": "1973-11-02T00:00:00Z", "price": 62, "purchaseAt": "1977-07-27T00:00:00Z", "trialPrice": 21}], "OcbCF9N01AGya52W": [{"currencyCode": "XHx3DvghOB74i9gq", "currencyNamespace": "wfZu3BRzbsbGJlOV", "currencyType": "REAL", "discountAmount": 4, "discountExpireAt": "1976-03-13T00:00:00Z", "discountPercentage": 72, "discountPurchaseAt": "1971-04-09T00:00:00Z", "discountedPrice": 83, "expireAt": "1979-11-17T00:00:00Z", "price": 7, "purchaseAt": "1983-11-09T00:00:00Z", "trialPrice": 17}, {"currencyCode": "aT8EikopYjvAcndf", "currencyNamespace": "IfoQgemeSAlgzVsU", "currencyType": "VIRTUAL", "discountAmount": 47, "discountExpireAt": "1993-08-22T00:00:00Z", "discountPercentage": 93, "discountPurchaseAt": "1989-03-16T00:00:00Z", "discountedPrice": 83, "expireAt": "1984-09-04T00:00:00Z", "price": 29, "purchaseAt": "1989-03-18T00:00:00Z", "trialPrice": 55}, {"currencyCode": "dj8yu3g7pYbe6ffA", "currencyNamespace": "P5w5jOhCFzPE5PM8", "currencyType": "REAL", "discountAmount": 49, "discountExpireAt": "1984-04-17T00:00:00Z", "discountPercentage": 92, "discountPurchaseAt": "1992-05-01T00:00:00Z", "discountedPrice": 99, "expireAt": "1988-11-12T00:00:00Z", "price": 29, "purchaseAt": "1980-11-14T00:00:00Z", "trialPrice": 55}]}}]}' \
    > test.out 2>&1
eval_tap $? 132 'BulkUpdateRegionData' test.out

#- 133 SearchItems
samples/cli/sample-apps Platform searchItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --itemType 'BUNDLE' \
    --limit '0' \
    --offset '57' \
    --sortBy 'aB846SWjysP4qqGf' \
    --storeId 'VqF3lpE1scSdP5QR' \
    --keyword '6ALKMoXRyCaUcM3u' \
    --language '4Hycz0iuIrtmnsle' \
    > test.out 2>&1
eval_tap $? 133 'SearchItems' test.out

#- 134 QueryUncategorizedItems
samples/cli/sample-apps Platform queryUncategorizedItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --limit '20' \
    --offset '43' \
    --sortBy '["updatedAt:desc", "createdAt", "name:asc"]' \
    --storeId 'BfzZ16GNfOkZUOWm' \
    > test.out 2>&1
eval_tap $? 134 'QueryUncategorizedItems' test.out

#- 135 GetItem
samples/cli/sample-apps Platform getItem \
    --itemId 'QONIDvTshqKMhlS4' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --storeId 'CmGD1mTjZ7TQ3ISP' \
    > test.out 2>&1
eval_tap $? 135 'GetItem' test.out

#- 136 UpdateItem
samples/cli/sample-apps Platform updateItem \
    --itemId 'OToCCiTaQqSeY4ry' \
    --namespace $AB_NAMESPACE \
    --storeId 'D515SpJMOaf61BaP' \
    --body '{"appId": "Ey3r8CVnohJ4efD2", "appType": "DLC", "baseAppId": "bMD2OUUXKq1aFAkN", "boothName": "MupZBdhWBfXagchW", "categoryPath": "7HWrSjGkw22HGpJs", "clazz": "QDImxG7QlzeNZOSk", "displayOrder": 81, "entitlementType": "CONSUMABLE", "ext": {"J2Ek4sFkmv2Dq12z": {}, "0gL837ruRFVSFw4k": {}, "m58yM6fXXoOBJfg7": {}}, "features": ["LBdwBjE3QoES0ODY", "mp7NC0ZngeWR1Ccs", "jG0N8BXEv3xQE0S5"], "flexible": false, "images": [{"as": "KzCb8q9KSk6yvXDk", "caption": "v7pYr70IyOYf0r5n", "height": 23, "imageUrl": "ZdA4yhDhJ7zb7cTQ", "smallImageUrl": "eFM9FyqFLDHAXDMx", "width": 60}, {"as": "Gk7e7wIKyLRVD7AK", "caption": "AXJH2351bjwrESki", "height": 35, "imageUrl": "x8fcsnGRbDc90B4L", "smallImageUrl": "gLMXDiBoI0BSSMf7", "width": 92}, {"as": "hEUNPgh40Oli89Bv", "caption": "i5czkFWTxiE8GiQC", "height": 92, "imageUrl": "6GNy4lWkNJrEBFo4", "smallImageUrl": "mYpZ01MUs7NWszNo", "width": 100}], "inventoryConfig": {"customAttributes": {"PLdNkqRoJcesA5pV": {}, "OLm1e6ECbBkqQg9F": {}, "yv5FBBFw66jdXsA9": {}}, "serverCustomAttributes": {"nwVwV14eBi82pZ3Z": {}, "GL8UqA9OTh1RKW1k": {}, "lSUMSqreH1rEN1mR": {}}, "slotUsed": 69}, "itemIds": ["HOIxfNW4d7oJ8FDJ", "EoRAGWm7mZdRYynM", "IfjYDpUM7enxSHs3"], "itemQty": {"vzh0F8wYsxoAQGG7": 60, "llmuzUJKbSDoxvRv": 90, "6vTYrUfhKMnF2obN": 34}, "itemType": "COINS", "listable": false, "localizations": {"WK6uc5GLr9byofLi": {"description": "qyIFHBGBjKVN0uR1", "localExt": {"p8VMYYyoHpH7sDIB": {}, "NJE8jnAcz7gM77KX": {}, "wiQowkx4avyE0vv3": {}}, "longDescription": "bDGHRHl4i9YCXyuU", "title": "eZFKS1M5Dbg11lDl"}, "B6Ahy63rMuDEjt2v": {"description": "lFBfjuG0jpNkj1dn", "localExt": {"tFPkfGl4L7mtIOxD": {}, "1c0MkFQZjLgtdy95": {}, "axH3vwTi46sAMbVo": {}}, "longDescription": "gAO4YEtHCZiuaVfh", "title": "EKWSQ6Bpkf3k7LH5"}, "pXnxEkzild14zIh6": {"description": "QArTMT4wlOCquaPS", "localExt": {"gRBGnYmvcVuZHLmb": {}, "kg48NV1i1bPeJeKy": {}, "L17ViqSDz2aKUPB3": {}}, "longDescription": "asIXvp5yfyksPAdf", "title": "5pdjsTTMFXjDxw1L"}}, "lootBoxConfig": {"rewardCount": 51, "rewards": [{"lootBoxItems": [{"count": 40, "duration": 99, "endDate": "1987-07-11T00:00:00Z", "itemId": "AOlJ0ircPHQLaueI", "itemSku": "ZMaGCLYNlvMV38LN", "itemType": "vmqLshKfeXp1T0DR"}, {"count": 85, "duration": 88, "endDate": "1974-06-17T00:00:00Z", "itemId": "Xxb5ATMEHZl0aNxu", "itemSku": "byXsKs4oy7vI1XtL", "itemType": "kQFreGBBBHFJtIDd"}, {"count": 100, "duration": 74, "endDate": "1994-11-17T00:00:00Z", "itemId": "zBDPKFucKaNnH3Lc", "itemSku": "NkiZxbMcm55FSZLd", "itemType": "DEZ1Pc3RsUCh99o2"}], "name": "5mbpDu7PAKYnTsbH", "odds": 0.20447047283154107, "type": "REWARD_GROUP", "weight": 100}, {"lootBoxItems": [{"count": 97, "duration": 81, "endDate": "1994-04-18T00:00:00Z", "itemId": "YKpIMy8og2kp2d32", "itemSku": "1ZDoxT7s0c6Mpvei", "itemType": "bo5ucCWRF9fA3wzB"}, {"count": 46, "duration": 22, "endDate": "1995-05-17T00:00:00Z", "itemId": "QBIsej60Z6dECUyb", "itemSku": "ZOqFjUo5gNjJG4VO", "itemType": "PMCgwupUc7CPAWXV"}, {"count": 82, "duration": 72, "endDate": "1994-08-11T00:00:00Z", "itemId": "ufPkOPaHTXSFVP3t", "itemSku": "Qluq2cVakXeYqUpb", "itemType": "0a7BnNkJbbAqU0YI"}], "name": "LQBU6CNmHCkB01li", "odds": 0.6028076893756366, "type": "REWARD_GROUP", "weight": 68}, {"lootBoxItems": [{"count": 86, "duration": 95, "endDate": "1973-02-01T00:00:00Z", "itemId": "gckseZjakt3klHU4", "itemSku": "jF8K0YHCb7chhtAr", "itemType": "fCIdzfHbvWP1esIz"}, {"count": 2, "duration": 85, "endDate": "1976-05-03T00:00:00Z", "itemId": "ecBMwpwFmN3g75CY", "itemSku": "7AWzpTedYTDo5yuk", "itemType": "gYa8It6ilmdLHutX"}, {"count": 67, "duration": 15, "endDate": "1997-04-17T00:00:00Z", "itemId": "A0PUg8oSz2RVfco4", "itemSku": "SkcHL0Pa5fodXRLo", "itemType": "O1BPbUmRwo1jqnbO"}], "name": "cp2V0Rf1dS1Sq4EZ", "odds": 0.2462591640300964, "type": "REWARD", "weight": 16}], "rollFunction": "CUSTOM"}, "maxCount": 34, "maxCountPerUser": 79, "name": "HTcGjvPAzh9gJjEK", "optionBoxConfig": {"boxItems": [{"count": 56, "duration": 70, "endDate": "1974-04-25T00:00:00Z", "itemId": "GQIrr7Kd24ZtbFi8", "itemSku": "L4d2Pf34tlbib0AF", "itemType": "rfZbozVi0uWbwXnu"}, {"count": 68, "duration": 21, "endDate": "1994-06-30T00:00:00Z", "itemId": "B086cmgPUFwIF4Vw", "itemSku": "0AKDK4itTkXPetqh", "itemType": "THC1wNrXOrQzCLtA"}, {"count": 59, "duration": 51, "endDate": "1996-06-02T00:00:00Z", "itemId": "mfFurQEZF3EI5bdf", "itemSku": "C5TlfjxbjvnjhFlQ", "itemType": "MsYpEG2tyU6kliR3"}]}, "purchasable": false, "recurring": {"cycle": "WEEKLY", "fixedFreeDays": 80, "fixedTrialCycles": 86, "graceDays": 86}, "regionData": {"dgOZdstigB9jRU79": [{"currencyCode": "2e52SmYeG0GNuVV9", "currencyNamespace": "qkyofMsepXgP9yiq", "currencyType": "VIRTUAL", "discountAmount": 16, "discountExpireAt": "1993-09-15T00:00:00Z", "discountPercentage": 2, "discountPurchaseAt": "1998-05-11T00:00:00Z", "expireAt": "1980-08-30T00:00:00Z", "price": 62, "purchaseAt": "1975-10-08T00:00:00Z", "trialPrice": 38}, {"currencyCode": "bgcgUdn8NwxwiZ1m", "currencyNamespace": "iZMAV5VKaaJtWHLn", "currencyType": "VIRTUAL", "discountAmount": 25, "discountExpireAt": "1982-07-24T00:00:00Z", "discountPercentage": 24, "discountPurchaseAt": "1995-08-16T00:00:00Z", "expireAt": "1981-06-20T00:00:00Z", "price": 28, "purchaseAt": "1979-11-09T00:00:00Z", "trialPrice": 65}, {"currencyCode": "EBpTlH0Owp4cEm1o", "currencyNamespace": "fdTv9kZRtfvWBlXQ", "currencyType": "REAL", "discountAmount": 29, "discountExpireAt": "1977-11-08T00:00:00Z", "discountPercentage": 49, "discountPurchaseAt": "1989-04-04T00:00:00Z", "expireAt": "1979-03-06T00:00:00Z", "price": 30, "purchaseAt": "1973-03-08T00:00:00Z", "trialPrice": 96}], "WnvNBBMm6PYwGeaX": [{"currencyCode": "2GZrYgNLMVS0Z8cx", "currencyNamespace": "cHrvlIA4ScCBQs0Y", "currencyType": "REAL", "discountAmount": 1, "discountExpireAt": "1979-07-31T00:00:00Z", "discountPercentage": 31, "discountPurchaseAt": "1979-09-14T00:00:00Z", "expireAt": "1977-11-05T00:00:00Z", "price": 57, "purchaseAt": "1997-07-10T00:00:00Z", "trialPrice": 2}, {"currencyCode": "sM0VZ5xsPmFVm7Sw", "currencyNamespace": "l0TQDSGW8NnEh9DC", "currencyType": "REAL", "discountAmount": 57, "discountExpireAt": "1992-05-03T00:00:00Z", "discountPercentage": 37, "discountPurchaseAt": "1999-05-10T00:00:00Z", "expireAt": "1976-03-15T00:00:00Z", "price": 9, "purchaseAt": "1977-01-31T00:00:00Z", "trialPrice": 79}, {"currencyCode": "SYJ2cQedibYJbG6r", "currencyNamespace": "Z4A3gxorFrXMCzde", "currencyType": "VIRTUAL", "discountAmount": 62, "discountExpireAt": "1978-09-10T00:00:00Z", "discountPercentage": 13, "discountPurchaseAt": "1987-12-24T00:00:00Z", "expireAt": "1992-03-29T00:00:00Z", "price": 73, "purchaseAt": "1979-04-29T00:00:00Z", "trialPrice": 87}], "vYVPhSygKWRH9B4w": [{"currencyCode": "7mC2B7OlTyqIFmbC", "currencyNamespace": "NrSJxk4kKwcTmV9v", "currencyType": "VIRTUAL", "discountAmount": 13, "discountExpireAt": "1975-04-03T00:00:00Z", "discountPercentage": 87, "discountPurchaseAt": "1989-08-29T00:00:00Z", "expireAt": "1994-09-03T00:00:00Z", "price": 9, "purchaseAt": "1989-04-25T00:00:00Z", "trialPrice": 33}, {"currencyCode": "ldJzdJFJDh8rBXwT", "currencyNamespace": "lEqk1hBwkeIc4D9J", "currencyType": "VIRTUAL", "discountAmount": 89, "discountExpireAt": "1973-03-20T00:00:00Z", "discountPercentage": 58, "discountPurchaseAt": "1980-05-20T00:00:00Z", "expireAt": "1997-03-30T00:00:00Z", "price": 87, "purchaseAt": "1980-04-25T00:00:00Z", "trialPrice": 66}, {"currencyCode": "gMhohWmr4vXftYXB", "currencyNamespace": "guUMi73iVdvHekpn", "currencyType": "REAL", "discountAmount": 25, "discountExpireAt": "1974-03-14T00:00:00Z", "discountPercentage": 95, "discountPurchaseAt": "1980-05-23T00:00:00Z", "expireAt": "1993-01-20T00:00:00Z", "price": 38, "purchaseAt": "1980-08-01T00:00:00Z", "trialPrice": 31}]}, "saleConfig": {"currencyCode": "zhQg02dn3MY8GEoi", "price": 96}, "seasonType": "PASS", "sectionExclusive": false, "sellable": false, "sku": "kIiqXsc2LrbE3Dq8", "stackable": true, "status": "INACTIVE", "tags": ["kW7udmmDQT0Nzyu4", "syvmqs4CPON5Arfx", "a1VunJKc06DCLYKC"], "targetCurrencyCode": "F3TR9QJd4fksbJel", "targetNamespace": "ZgTbQczaWGekqsdy", "thumbnailUrl": "SmCuQJCIW7hxAaqf", "useCount": 84}' \
    > test.out 2>&1
eval_tap $? 136 'UpdateItem' test.out

#- 137 DeleteItem
samples/cli/sample-apps Platform deleteItem \
    --itemId 'OIIpKpGFrAfdvqps' \
    --namespace $AB_NAMESPACE \
    --featuresToCheck '["ENTITLEMENT", "CATALOG", "CATALOG"]' \
    --force 'true' \
    --storeId '480Xuk3Eij9CO7aQ' \
    > test.out 2>&1
eval_tap $? 137 'DeleteItem' test.out

#- 138 AcquireItem
samples/cli/sample-apps Platform acquireItem \
    --itemId 'rtUFw8mPrjS7Wteo' \
    --namespace $AB_NAMESPACE \
    --body '{"count": 78, "orderNo": "rk9CPJO4OhDHCXOY"}' \
    > test.out 2>&1
eval_tap $? 138 'AcquireItem' test.out

#- 139 GetApp
samples/cli/sample-apps Platform getApp \
    --itemId 'rVsA34IMrIRlGR4m' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'i2ncFsoAUiF7Jt8k' \
    > test.out 2>&1
eval_tap $? 139 'GetApp' test.out

#- 140 UpdateApp
samples/cli/sample-apps Platform updateApp \
    --itemId 'p40IlD8vA0mb3kFy' \
    --namespace $AB_NAMESPACE \
    --storeId 'Z2K0QYr4QB35eonf' \
    --body '{"carousel": [{"alt": "pNS1W7bTkTm2WnNN", "previewUrl": "ZAr2KELCOGKA4Qa0", "thumbnailUrl": "MZAY1ifPt7zxnfpT", "type": "video", "url": "8rTb928q0GCE8HSH", "videoSource": "generic"}, {"alt": "fP522Uoeqw05aeVA", "previewUrl": "zlQZ8SW1v3NySeUJ", "thumbnailUrl": "yjcjXG4SGzH4w82R", "type": "image", "url": "i4LTz1HYrrgRCjaf", "videoSource": "generic"}, {"alt": "KV1H8rxB5cjcxwOO", "previewUrl": "tSPiNdbqbik8KuoI", "thumbnailUrl": "8NvQzDonDEJZ5gU2", "type": "video", "url": "zsNzvvXHj6tlhO48", "videoSource": "generic"}], "developer": "MvPvPBPY3Gp9K3wS", "forumUrl": "vmJ6GhPvM9OmFLZX", "genres": ["FreeToPlay", "Adventure", "Racing"], "localizations": {"2fyIJU7p3T4D3q0s": {"announcement": "AdM9IzESy6TUBS8r", "slogan": "ZBAXUJEJxGbBSOpv"}, "BZZAWYQCIO8DMsuw": {"announcement": "URQDih5bztnNWQvq", "slogan": "Mex7WUX4V8yeJJNu"}, "PTWvx2JQ6zu1TbB4": {"announcement": "cOZAKBmHqdWYwVDd", "slogan": "eQdyGEO1Pa7pWbxa"}}, "platformRequirements": {"3mbyEqPQgThMrGQ5": [{"additionals": "kuSSKqZmsYfa6ED7", "directXVersion": "Rcbhi9iRHIa3LoGb", "diskSpace": "L5KSfc6PWxNPqMle", "graphics": "QHQEwbQTjJuNUwZN", "label": "kk5tDVrKnOQGOByX", "osVersion": "fzpJEzP92dGMC6Kh", "processor": "zQKOBXnun7GG7EjI", "ram": "YdW9ZYozAS8cyacn", "soundCard": "FPb2aTXx9bhEjYCQ"}, {"additionals": "wh5XUB2Jfmps2aYt", "directXVersion": "H1G4fM32VZCLvCop", "diskSpace": "BQedilOcY8as326W", "graphics": "J1USBKKM5mKwoiMI", "label": "V5QU2nLuUMNnGTKa", "osVersion": "TvLCkhv6ImqqF1j3", "processor": "3AhKHAqWK6RZAvMO", "ram": "om4XKCDy9y79zUxC", "soundCard": "EvO5BoiiM2TT0aTD"}, {"additionals": "wVlEBhmttHj6aomV", "directXVersion": "0SYjRzcKS4SSc5rg", "diskSpace": "Hnf6935nICAdacUE", "graphics": "F3SPQi11mMMJYITX", "label": "Fp6rPmLkwKWWDzg5", "osVersion": "8ToYtULa1CMcSDS1", "processor": "uyobiHDIoaBelVVw", "ram": "aoEksu9HbNSIgqW8", "soundCard": "m0CH8pQHwmf1jTex"}], "MfJtEBc8V30yHFkp": [{"additionals": "JNV5gxn0vSZ33fJe", "directXVersion": "CGrG7NjLFIqJXHQi", "diskSpace": "u5uB6XjQis13AQw4", "graphics": "3u2WWHyByhMpqI9Q", "label": "wnE7ntxbBmP8C0QK", "osVersion": "fesEzRm5HDLmpR5i", "processor": "SOKX8cX3RiUOue4z", "ram": "PGRAVuBnYx0SIhY7", "soundCard": "oTu8jKJZ5TA2wZC5"}, {"additionals": "QpTMkQhGetnsfXGd", "directXVersion": "YGYwi4gkNl9Jswtq", "diskSpace": "MAmceJIvhumw7sCk", "graphics": "qUUaTwreBzie9nsl", "label": "q51qPsHonh5Vu82k", "osVersion": "4fiEZMzbAYwtgBzn", "processor": "tiAWWdU3A6UgOKX3", "ram": "gsNbVDado2DBiC3V", "soundCard": "ZgorAnmciegJxTTM"}, {"additionals": "jTsx6GJNvCWMkzoR", "directXVersion": "jvpZIo7cMnkOmFoW", "diskSpace": "vd0tSMcdHOVtWh6q", "graphics": "Px4HyCT8ZqefzuGD", "label": "4VvWbwLdZ9z3MPTw", "osVersion": "VDuMph3G0zidIlNv", "processor": "2IMpJs7ndoaQD7u3", "ram": "UEsywwtiyLoHVsJX", "soundCard": "2I4TnVEw64TzzNhT"}], "0UUzSm55KWYbO9VV": [{"additionals": "4SoX7i1xvRubZ4S2", "directXVersion": "L4TmzmY79fmyAVTM", "diskSpace": "aADERqaFUPAA8vhn", "graphics": "6vKlbHwe4X6dfmEd", "label": "9mV6bafdevwCzKyh", "osVersion": "yJuzEGQxWQaIJunA", "processor": "HhL5PiWGGYnL65Q2", "ram": "acneJPI1kor7IRA8", "soundCard": "D9JbUWjfxUqS5xsp"}, {"additionals": "mBe4Y0DSiJALGShe", "directXVersion": "Ob16ZTtkV6sUMj5G", "diskSpace": "IKVLOEMzpWmOYD4s", "graphics": "iQ5lkmSRVR4ENLmZ", "label": "YBr7Lhqf2owjfEj8", "osVersion": "L84ho9uSwPg7H6xg", "processor": "rrurfXRa8ylXwa05", "ram": "F8F08d8q8jt7frSB", "soundCard": "CXa9npcax1giUNcw"}, {"additionals": "EFGvu5ZWf77NZibK", "directXVersion": "GjqUtswCJwWICQYl", "diskSpace": "iuVUvgEC3c7La2D6", "graphics": "TkjgyAz8q0xMq6ht", "label": "cyLsYkVZ7NiELbnC", "osVersion": "5OrSqOhTX2gNWmg5", "processor": "iwDxPcMfh3tXszvc", "ram": "QYu4HRt0BdBsrssh", "soundCard": "OuEBM3Zu24CEoqNY"}]}, "platforms": ["Linux", "Android", "Windows"], "players": ["Coop", "Coop", "Single"], "primaryGenre": "FreeToPlay", "publisher": "VzQYTdDOpq4XrXMs", "releaseDate": "1996-05-21T00:00:00Z", "websiteUrl": "ePIRvHIH1PXa6T6f"}' \
    > test.out 2>&1
eval_tap $? 140 'UpdateApp' test.out

#- 141 DisableItem
samples/cli/sample-apps Platform disableItem \
    --itemId '8uopFcSXvTREYmEh' \
    --namespace $AB_NAMESPACE \
    --storeId 'tkTd7SuCPA8H35bX' \
    --body '{"featuresToCheck": ["DLC"]}' \
    > test.out 2>&1
eval_tap $? 141 'DisableItem' test.out

#- 142 GetItemDynamicData
samples/cli/sample-apps Platform getItemDynamicData \
    --itemId 'Y6mgPh6RAIHc7Kz6' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 142 'GetItemDynamicData' test.out

#- 143 EnableItem
samples/cli/sample-apps Platform enableItem \
    --itemId '5DY7kbquoGkAMFbQ' \
    --namespace $AB_NAMESPACE \
    --storeId '97NdDf0vnITR4dcG' \
    > test.out 2>&1
eval_tap $? 143 'EnableItem' test.out

#- 144 FeatureItem
samples/cli/sample-apps Platform featureItem \
    --feature '9gXyp648OZJNS7cn' \
    --itemId 'NGzUjbmb6EWCiZlV' \
    --namespace $AB_NAMESPACE \
    --storeId 'a1W5LSm1qB6rbXmE' \
    > test.out 2>&1
eval_tap $? 144 'FeatureItem' test.out

#- 145 DefeatureItem
samples/cli/sample-apps Platform defeatureItem \
    --feature 'KocxVb71Gz0ZZKcN' \
    --itemId 'jNAev6P3cI97lxtI' \
    --namespace $AB_NAMESPACE \
    --storeId 'WxvRezSccrRglt9M' \
    > test.out 2>&1
eval_tap $? 145 'DefeatureItem' test.out

#- 146 GetLocaleItem
samples/cli/sample-apps Platform getLocaleItem \
    --itemId '7DkbpkKgjDhtthuL' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --language '3ZvdqWJrA85Ifr6y' \
    --populateBundle 'false' \
    --region 'ePHsZv5xXszPFHyx' \
    --storeId '8zgn8FqXowLjU5nK' \
    > test.out 2>&1
eval_tap $? 146 'GetLocaleItem' test.out

#- 147 UpdateItemPurchaseCondition
samples/cli/sample-apps Platform updateItemPurchaseCondition \
    --itemId 'cXD0lwhSuErT68TP' \
    --namespace $AB_NAMESPACE \
    --storeId 'mEfPRV2oyiWjjaBc' \
    --body '{"purchaseCondition": {"conditionGroups": [{"operator": "and", "predicates": [{"anyOf": 41, "code": "MaElhYQTvnqrvoIl", "comparison": "isNot", "name": "r8JcxNrCCMDpIoxN", "predicateType": "SeasonTierPredicate", "value": "8yhHbmQfzKJS2rhx", "values": ["cfzqxR7FlxmwO8it", "jjvLyInRePKSb6Ip", "AMqCw49EUlIgta9w"]}, {"anyOf": 13, "code": "sxfkKTYig1cCOZ64", "comparison": "isLessThanOrEqual", "name": "gNCzCOYEc4fGIRMr", "predicateType": "StatisticCodePredicate", "value": "QP8EBIX9NYDON0dk", "values": ["5ijrVcMxVpOuwGZ4", "uTezq9Vx683KgBCE", "YRN52CUPM5P3IM0p"]}, {"anyOf": 14, "code": "oY5b15Qk1vjil8sp", "comparison": "is", "name": "qnbRvZp7DqMW5zgS", "predicateType": "EntitlementPredicate", "value": "E8wOrvkhXCj6VC9G", "values": ["B3gip1mlL19MlhnZ", "982LN5stDW7Hmqiv", "HDkyEPbYdjWqH7f5"]}]}, {"operator": "and", "predicates": [{"anyOf": 13, "code": "Enyg5UOicmtQ2wZF", "comparison": "includes", "name": "KPGdbJNfJla5n8Fg", "predicateType": "SeasonPassPredicate", "value": "rbWlSoPgBen412B3", "values": ["dqI46iaupw0LJw4G", "4JaT10oHCAOwx9Fb", "AFoUgJi4LnpR4iw2"]}, {"anyOf": 11, "code": "Pd58RooVYJ2Ou88F", "comparison": "isGreaterThanOrEqual", "name": "C72z1GtJ9f5FVNa2", "predicateType": "SeasonTierPredicate", "value": "FJL6LDIDPSHpjywO", "values": ["M5lnJqwvY1oMSn10", "uEshwhYpdPlGItEo", "xB7D4fM4YsWQ3A1h"]}, {"anyOf": 65, "code": "DTHdau815BIgUSJw", "comparison": "isGreaterThan", "name": "u5Ur05s8GBrsuBG4", "predicateType": "StatisticCodePredicate", "value": "KMBo9cgN6LLZBZjw", "values": ["E1rcFwf4U81T7Vh9", "E0tw0DLRIUy1RKgc", "To6Ls7z9QJo8TgU1"]}]}, {"operator": "and", "predicates": [{"anyOf": 98, "code": "sObHpDWc4dkOCwl2", "comparison": "isLessThan", "name": "raoa17KNw71cNlhP", "predicateType": "SeasonTierPredicate", "value": "tygJkr5jUPN11C7S", "values": ["cegIvUQbnsR5fkEy", "ZrRxt4oujXxG9BMs", "YPR9ZJrPAkhqnfd1"]}, {"anyOf": 11, "code": "rBm6btc5osqz8vUx", "comparison": "excludes", "name": "PExcvTEQeH8C9pOd", "predicateType": "SeasonTierPredicate", "value": "8BL5ENVmIDLLqJd8", "values": ["794Blq7sH8HO7voc", "T4uZz92BdLOUJXQc", "V96pZXSv20sUf9G4"]}, {"anyOf": 53, "code": "THXynjTqCEi4apXA", "comparison": "isLessThanOrEqual", "name": "xZE33NKfTK6BvtmG", "predicateType": "EntitlementPredicate", "value": "qfyoPehcnS1LgNRk", "values": ["LY8yAGlR5H3Jr4vD", "SI2R1rvNAol68oiL", "KjkRCyaAvcUxO9G1"]}]}]}}' \
    > test.out 2>&1
eval_tap $? 147 'UpdateItemPurchaseCondition' test.out

#- 148 QueryItemReferences
samples/cli/sample-apps Platform queryItemReferences \
    --itemId '6T8cjQCCPPnD7oED' \
    --namespace $AB_NAMESPACE \
    --featuresToCheck '["ENTITLEMENT", "DLC", "CATALOG"]' \
    --storeId 'wex1nnj3yBR5A6nz' \
    > test.out 2>&1
eval_tap $? 148 'QueryItemReferences' test.out

#- 149 ReturnItem
samples/cli/sample-apps Platform returnItem \
    --itemId 'V422f0LVN1i1cOKc' \
    --namespace $AB_NAMESPACE \
    --body '{"orderNo": "RJnerHTCOUk95FqV"}' \
    > test.out 2>&1
eval_tap $? 149 'ReturnItem' test.out

#- 150 QueryKeyGroups
samples/cli/sample-apps Platform queryKeyGroups \
    --namespace $AB_NAMESPACE \
    --limit '19' \
    --name 'oG29QBloBULnkPwr' \
    --offset '94' \
    --tag 'enwdLqcOu4cqeiZp' \
    > test.out 2>&1
eval_tap $? 150 'QueryKeyGroups' test.out

#- 151 CreateKeyGroup
samples/cli/sample-apps Platform createKeyGroup \
    --namespace $AB_NAMESPACE \
    --body '{"description": "p9T8lOK7yvUKqIC1", "name": "ge8EJ8svzPahKWUr", "status": "ACTIVE", "tags": ["CtMX0jt0OtXQhvff", "olRRF1QUrA7K4eKo", "CK86flUciDSDoWRj"]}' \
    > test.out 2>&1
eval_tap $? 151 'CreateKeyGroup' test.out

#- 152 GetKeyGroupByBoothName
eval_tap 0 152 'GetKeyGroupByBoothName # SKIP deprecated' test.out

#- 153 GetKeyGroup
samples/cli/sample-apps Platform getKeyGroup \
    --keyGroupId '3vYnbYa2Io6P3r3l' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 153 'GetKeyGroup' test.out

#- 154 UpdateKeyGroup
samples/cli/sample-apps Platform updateKeyGroup \
    --keyGroupId 'fBPj2DfLYJaNPK5i' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "SgdiQWqjOSiKAQya", "name": "EVN0tiPTCEKpR1MQ", "status": "INACTIVE", "tags": ["4RmF53uXImuta9UK", "7tVlEInNuU2A96v1", "Eu3bbWoRFw0vj4fM"]}' \
    > test.out 2>&1
eval_tap $? 154 'UpdateKeyGroup' test.out

#- 155 GetKeyGroupDynamic
samples/cli/sample-apps Platform getKeyGroupDynamic \
    --keyGroupId 'Qorz9GQ7oBvMkuDL' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 155 'GetKeyGroupDynamic' test.out

#- 156 ListKeys
samples/cli/sample-apps Platform listKeys \
    --keyGroupId 'YVrHPpozjUeoCXzf' \
    --namespace $AB_NAMESPACE \
    --limit '65' \
    --offset '7' \
    --status 'ACTIVE' \
    > test.out 2>&1
eval_tap $? 156 'ListKeys' test.out

#- 157 UploadKeys
samples/cli/sample-apps Platform uploadKeys \
    --keyGroupId 'IrhOvKM6V8d98nYE' \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 157 'UploadKeys' test.out

#- 158 QueryOrders
samples/cli/sample-apps Platform queryOrders \
    --namespace $AB_NAMESPACE \
    --endTime 'BI6hCD7wpO9ZkxE7' \
    --limit '39' \
    --offset '3' \
    --orderNos '["LlyfaecAIg6Cj7Ce", "xn3cK5pA0A5EE5qE", "vmoio1JaEpM9Kp2l"]' \
    --sortBy 'kqK7gUxV4pJ33JMd' \
    --startTime 'RYpTGwq0bY78g1gg' \
    --status 'REFUNDING' \
    --withTotal 'false' \
    > test.out 2>&1
eval_tap $? 158 'QueryOrders' test.out

#- 159 GetOrderStatistics
samples/cli/sample-apps Platform getOrderStatistics \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 159 'GetOrderStatistics' test.out

#- 160 GetOrder
samples/cli/sample-apps Platform getOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'rmlyBLskebT6dwU7' \
    > test.out 2>&1
eval_tap $? 160 'GetOrder' test.out

#- 161 RefundOrder
samples/cli/sample-apps Platform refundOrder \
    --namespace $AB_NAMESPACE \
    --orderNo '9p9MX95sYpQlCD3b' \
    --body '{"description": "bGbSXQFNlp7dBk8v"}' \
    > test.out 2>&1
eval_tap $? 161 'RefundOrder' test.out

#- 162 GetPaymentCallbackConfig
eval_tap 0 162 'GetPaymentCallbackConfig # SKIP deprecated' test.out

#- 163 UpdatePaymentCallbackConfig
eval_tap 0 163 'UpdatePaymentCallbackConfig # SKIP deprecated' test.out

#- 164 GetPaymentMerchantConfig
samples/cli/sample-apps Platform getPaymentMerchantConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 164 'GetPaymentMerchantConfig' test.out

#- 165 UpdatePaymentDomainWhitelistConfig
samples/cli/sample-apps Platform updatePaymentDomainWhitelistConfig \
    --namespace $AB_NAMESPACE \
    --body '{"domains": ["B6eZey56W9wEQBvQ", "IjyD9n5vdk18GePE", "ppiUQ5CORf8KoMNn"]}' \
    > test.out 2>&1
eval_tap $? 165 'UpdatePaymentDomainWhitelistConfig' test.out

#- 166 QueryPaymentNotifications
samples/cli/sample-apps Platform queryPaymentNotifications \
    --namespace $AB_NAMESPACE \
    --endDate 'ifMeNEtTJORJDSsF' \
    --externalId 'teZsnuVL3VL3ijAi' \
    --limit '18' \
    --notificationSource 'NEONPAY' \
    --notificationType 'c8TalopiXf4UQ7HK' \
    --offset '50' \
    --paymentOrderNo 'iiNI0oYbURunkhwq' \
    --startDate 'YIekgz21kzbCClAY' \
    --status 'ERROR' \
    > test.out 2>&1
eval_tap $? 166 'QueryPaymentNotifications' test.out

#- 167 QueryPaymentOrders
samples/cli/sample-apps Platform queryPaymentOrders \
    --namespace $AB_NAMESPACE \
    --channel 'INTERNAL' \
    --extTxId 'oSOwm5Lj00zFaepF' \
    --limit '42' \
    --offset '23' \
    --status 'REFUND_FAILED' \
    > test.out 2>&1
eval_tap $? 167 'QueryPaymentOrders' test.out

#- 168 CreatePaymentOrderByDedicated
samples/cli/sample-apps Platform createPaymentOrderByDedicated \
    --namespace $AB_NAMESPACE \
    --body '{"currencyCode": "WW9Wq9RW9CxXrhOW", "currencyNamespace": "Y1y8NEpOmhq8nS0B", "customParameters": {"qNEKIapGP78vH4Ci": {}, "iwvAWfgMZTXCemUT": {}, "8nInOcq63VtBeHZx": {}}, "description": "slEiSnNZPSMoMoL0", "extOrderNo": "YmQB84eXKrTb1lRF", "extUserId": "QzBgQv8VhD9P2Jg9", "itemType": "EXTENSION", "language": "DENq_654", "metadata": {"7VNKrD33mBVXbbqH": "YWdTvtbQBvWhpYt6", "5a1VMymBflwe8s8q": "5bpE2N9a6YaXaIkH", "UkTKpTrJ4Wnm0Gtt": "nHIY6BH2I8ON5ZnA"}, "notifyUrl": "DZySK2vLIi2MDIgj", "omitNotification": false, "platform": "o2JRq4IuDnWl9I10", "price": 100, "recurringPaymentOrderNo": "TgW3rnQwgzgzlUom", "region": "r7wBT9EvCxUHqfFC", "returnUrl": "ZtRPD0dHOKWVw0xq", "sandbox": true, "sku": "Gqf6J4Tq8cLvEBnE", "subscriptionId": "L1MEsRwF55L4CwwY", "targetNamespace": "78V9wdB3b28J4X2j", "targetUserId": "iGIGxaQWB7PUTSNB", "title": "FpbJOyNEjXGHlPRH"}' \
    > test.out 2>&1
eval_tap $? 168 'CreatePaymentOrderByDedicated' test.out

#- 169 ListExtOrderNoByExtTxId
samples/cli/sample-apps Platform listExtOrderNoByExtTxId \
    --namespace $AB_NAMESPACE \
    --extTxId 'nA7HocE5KaYD6MUX' \
    > test.out 2>&1
eval_tap $? 169 'ListExtOrderNoByExtTxId' test.out

#- 170 GetPaymentOrder
samples/cli/sample-apps Platform getPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'l5FQGoxmqakkmYQO' \
    > test.out 2>&1
eval_tap $? 170 'GetPaymentOrder' test.out

#- 171 ChargePaymentOrder
samples/cli/sample-apps Platform chargePaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'iJKWW9SYDifnBPhd' \
    --body '{"extTxId": "6L3XXWsOMR8J5mjd", "paymentMethod": "HGSOzeWHlfayDeXe", "paymentProvider": "CHECKOUT"}' \
    > test.out 2>&1
eval_tap $? 171 'ChargePaymentOrder' test.out

#- 172 RefundPaymentOrderByDedicated
samples/cli/sample-apps Platform refundPaymentOrderByDedicated \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo '32o3sqUbYzJttcZ2' \
    --body '{"description": "oSesdDutDy28Tx5J"}' \
    > test.out 2>&1
eval_tap $? 172 'RefundPaymentOrderByDedicated' test.out

#- 173 SimulatePaymentOrderNotification
samples/cli/sample-apps Platform simulatePaymentOrderNotification \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'CLSa3dQSlahavKjF' \
    --body '{"amount": 55, "currencyCode": "L0r0dLO7MxWmGH4E", "notifyType": "REFUND", "paymentProvider": "XSOLLA", "salesTax": 62, "vat": 1}' \
    > test.out 2>&1
eval_tap $? 173 'SimulatePaymentOrderNotification' test.out

#- 174 GetPaymentOrderChargeStatus
samples/cli/sample-apps Platform getPaymentOrderChargeStatus \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 's6LMwQnjBKZJFQTV' \
    > test.out 2>&1
eval_tap $? 174 'GetPaymentOrderChargeStatus' test.out

#- 175 GetPsnEntitlementOwnership
samples/cli/sample-apps Platform getPsnEntitlementOwnership \
    --entitlementLabel '19aWRlLHqsLJ1CAt' \
    --namespace $AB_NAMESPACE \
    --body '{"accessToken": "h9ir9LnGqtASjZKj", "serviceLabel": 20}' \
    > test.out 2>&1
eval_tap $? 175 'GetPsnEntitlementOwnership' test.out

#- 176 GetXboxEntitlementOwnership
samples/cli/sample-apps Platform getXboxEntitlementOwnership \
    --namespace $AB_NAMESPACE \
    --productSku 'q5npq1RTHCWsSFRV' \
    --body '{"delegationToken": "5VVEMDL5Q4TZggaH", "sandboxId": "N22VjQYdA9lrzpdt"}' \
    > test.out 2>&1
eval_tap $? 176 'GetXboxEntitlementOwnership' test.out

#- 177 GetPlatformEntitlementConfig
samples/cli/sample-apps Platform getPlatformEntitlementConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Xbox' \
    > test.out 2>&1
eval_tap $? 177 'GetPlatformEntitlementConfig' test.out

#- 178 UpdatePlatformEntitlementConfig
samples/cli/sample-apps Platform updatePlatformEntitlementConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Nintendo' \
    --body '{"allowedPlatformOrigins": ["Twitch", "IOS", "Other"]}' \
    > test.out 2>&1
eval_tap $? 178 'UpdatePlatformEntitlementConfig' test.out

#- 179 GetPlatformWalletConfig
samples/cli/sample-apps Platform getPlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Nintendo' \
    > test.out 2>&1
eval_tap $? 179 'GetPlatformWalletConfig' test.out

#- 180 UpdatePlatformWalletConfig
samples/cli/sample-apps Platform updatePlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Other' \
    --body '{"allowedBalanceOrigins": ["System", "Playstation", "Nintendo"]}' \
    > test.out 2>&1
eval_tap $? 180 'UpdatePlatformWalletConfig' test.out

#- 181 ResetPlatformWalletConfig
samples/cli/sample-apps Platform resetPlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Steam' \
    > test.out 2>&1
eval_tap $? 181 'ResetPlatformWalletConfig' test.out

#- 182 GetRevocationConfig
samples/cli/sample-apps Platform getRevocationConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 182 'GetRevocationConfig' test.out

#- 183 UpdateRevocationConfig
samples/cli/sample-apps Platform updateRevocationConfig \
    --namespace $AB_NAMESPACE \
    --body '{"entitlement": {"consumable": {"enabled": true, "strategy": "REVOKE_OR_REPORT"}, "durable": {"enabled": false, "strategy": "CUSTOM"}}, "wallet": {"enabled": true, "strategy": "CUSTOM"}}' \
    > test.out 2>&1
eval_tap $? 183 'UpdateRevocationConfig' test.out

#- 184 DeleteRevocationConfig
samples/cli/sample-apps Platform deleteRevocationConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 184 'DeleteRevocationConfig' test.out

#- 185 QueryRevocationHistories
samples/cli/sample-apps Platform queryRevocationHistories \
    --namespace $AB_NAMESPACE \
    --endTime 'qp1m7DjrMEfL9VxQ' \
    --limit '61' \
    --offset '99' \
    --source 'ORDER' \
    --startTime 'TIS03B6M5DOCzU88' \
    --status 'SUCCESS' \
    --transactionId '8LiuXTWhxw1bOrjg' \
    --userId 'o2Qg20zrhFl8EGkx' \
    > test.out 2>&1
eval_tap $? 185 'QueryRevocationHistories' test.out

#- 186 GetRevocationPluginConfig
samples/cli/sample-apps Platform getRevocationPluginConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 186 'GetRevocationPluginConfig' test.out

#- 187 UpdateRevocationPluginConfig
samples/cli/sample-apps Platform updateRevocationPluginConfig \
    --namespace $AB_NAMESPACE \
    --body '{"appConfig": {"appName": "1lrn4D0PDos9SOXt"}, "customConfig": {"connectionType": "TLS", "grpcServerAddress": "K0LuuHsVutVxSs1b"}, "extendType": "CUSTOM"}' \
    > test.out 2>&1
eval_tap $? 187 'UpdateRevocationPluginConfig' test.out

#- 188 DeleteRevocationPluginConfig
samples/cli/sample-apps Platform deleteRevocationPluginConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 188 'DeleteRevocationPluginConfig' test.out

#- 189 UploadRevocationPluginConfigCert
samples/cli/sample-apps Platform uploadRevocationPluginConfigCert \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 189 'UploadRevocationPluginConfigCert' test.out

#- 190 CreateReward
samples/cli/sample-apps Platform createReward \
    --namespace $AB_NAMESPACE \
    --body '{"description": "HU5KQTBnl0NsLv2C", "eventTopic": "ZPO9uLMdD7aEykaH", "maxAwarded": 80, "maxAwardedPerUser": 100, "namespaceExpression": "sZmZw7vqluaW6JtN", "rewardCode": "zVZfczA3XKLGg6fX", "rewardConditions": [{"condition": "LyHFrgTdjy1LsPes", "conditionName": "HGIQa14jgsPZEnpY", "eventName": "2S3pTMG0YFEROJkb", "rewardItems": [{"duration": 48, "endDate": "1997-02-06T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "lzke5XRlpaH6Ijew", "quantity": 28, "sku": "LIBUvCI09CQSSOra"}, {"duration": 82, "endDate": "1990-01-06T00:00:00Z", "identityType": "ITEM_ID", "itemId": "RpnRn0gfxMV0RjFe", "quantity": 19, "sku": "1ydC53Hr63bdRFM8"}, {"duration": 20, "endDate": "1982-04-10T00:00:00Z", "identityType": "ITEM_ID", "itemId": "XPUJGh8VaGeaXmjq", "quantity": 0, "sku": "az134oRUN9Li0KhL"}]}, {"condition": "E8C5TuRpZWyJMTk5", "conditionName": "sQgY9Eg7k6uztRFs", "eventName": "qowVADX9sFvkIzrJ", "rewardItems": [{"duration": 89, "endDate": "1984-04-26T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "BGuQHA2JxkUSplLb", "quantity": 49, "sku": "Erw4BHWjiltRHOYk"}, {"duration": 52, "endDate": "1981-12-06T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "pyW4VX90GcZ159d3", "quantity": 54, "sku": "36lOKgCBbbtQpftm"}, {"duration": 44, "endDate": "1994-06-24T00:00:00Z", "identityType": "ITEM_ID", "itemId": "PFCngsUKStoO8q5R", "quantity": 91, "sku": "ZETLTuBytOlEVurC"}]}, {"condition": "qjJRoXbaIm0CieG3", "conditionName": "fjL9kGdFi9j9gTGm", "eventName": "uwHXZ3QaQfkMCt32", "rewardItems": [{"duration": 86, "endDate": "1971-04-10T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "SFuSNs1s8t7hYN2W", "quantity": 50, "sku": "pi3oMWbQSlFAFT3C"}, {"duration": 27, "endDate": "1975-01-16T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "WJSfc6vHZtw3Al2O", "quantity": 72, "sku": "fC6rgv75QUNUJHo3"}, {"duration": 58, "endDate": "1987-07-20T00:00:00Z", "identityType": "ITEM_ID", "itemId": "XppgCv3K1UnRaoQc", "quantity": 0, "sku": "WZeCF70NCJrpwncG"}]}], "userIdExpression": "qZbd8J5rqL3bu244"}' \
    > test.out 2>&1
eval_tap $? 190 'CreateReward' test.out

#- 191 QueryRewards
samples/cli/sample-apps Platform queryRewards \
    --namespace $AB_NAMESPACE \
    --eventTopic 'DPhQB67gbwK2BbDG' \
    --limit '83' \
    --offset '61' \
    --sortBy '["rewardCode:asc", "rewardCode", "rewardCode:desc"]' \
    > test.out 2>&1
eval_tap $? 191 'QueryRewards' test.out

#- 192 ExportRewards
samples/cli/sample-apps Platform exportRewards \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 192 'ExportRewards' test.out

#- 193 ImportRewards
samples/cli/sample-apps Platform importRewards \
    --namespace $AB_NAMESPACE \
    --replaceExisting 'true' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 193 'ImportRewards' test.out

#- 194 GetReward
samples/cli/sample-apps Platform getReward \
    --namespace $AB_NAMESPACE \
    --rewardId '7JrEtC3YIhYnERFw' \
    > test.out 2>&1
eval_tap $? 194 'GetReward' test.out

#- 195 UpdateReward
samples/cli/sample-apps Platform updateReward \
    --namespace $AB_NAMESPACE \
    --rewardId 'Bxpfzm4FHKhbPzNV' \
    --body '{"description": "PvCCvGJnXlBDdvCG", "eventTopic": "Rn7i6vVLI6nINXL3", "maxAwarded": 17, "maxAwardedPerUser": 34, "namespaceExpression": "SZWoyFhgJdBzA4Az", "rewardCode": "4oXk1LCpsBQDhPb4", "rewardConditions": [{"condition": "WzhVufVFC4XSnX9R", "conditionName": "93QjrNPHNAVZ1T4G", "eventName": "qVbKfi9zPSa4lQt1", "rewardItems": [{"duration": 62, "endDate": "1997-03-13T00:00:00Z", "identityType": "ITEM_ID", "itemId": "Jl01R1NwGAbj1dE5", "quantity": 44, "sku": "BPX5Inhn0wEv8Jx8"}, {"duration": 31, "endDate": "1972-03-05T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "dmMtRqAfYIB0OwKR", "quantity": 32, "sku": "1GrYHiPBecBQHrb1"}, {"duration": 43, "endDate": "1982-05-11T00:00:00Z", "identityType": "ITEM_ID", "itemId": "c2cOsQVxqEk8gPVx", "quantity": 28, "sku": "YdJaGiDIO92E7lb3"}]}, {"condition": "aVYaxk9MkryjLPpO", "conditionName": "hPhF0v1Mybr2brhH", "eventName": "AprxhqNvVFKBLQ7i", "rewardItems": [{"duration": 26, "endDate": "1979-04-30T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "GerTj6u3OT7essWa", "quantity": 83, "sku": "MW8x2YrgvT49pZKv"}, {"duration": 87, "endDate": "1972-04-15T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "N5m2fVx02vXD8Uw7", "quantity": 26, "sku": "84IOdw7Aweg7DOR9"}, {"duration": 57, "endDate": "1992-10-05T00:00:00Z", "identityType": "ITEM_ID", "itemId": "fm2O2RFd4QRn53oD", "quantity": 72, "sku": "iHqkVLunKNStR5t3"}]}, {"condition": "anxQuBm0gfKQamkO", "conditionName": "UG0LeZ3375Pd2lc0", "eventName": "ihseynYizJVk4H0M", "rewardItems": [{"duration": 20, "endDate": "1984-12-31T00:00:00Z", "identityType": "ITEM_ID", "itemId": "TzA8Vs1otTMkercV", "quantity": 75, "sku": "78Cn5gz0UrljCAwq"}, {"duration": 87, "endDate": "1983-10-13T00:00:00Z", "identityType": "ITEM_ID", "itemId": "bjX8Yt9L4wt3bOym", "quantity": 83, "sku": "49jS4OYM4LVpuZUi"}, {"duration": 48, "endDate": "1973-01-04T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "Y36eIecExz7e9IWf", "quantity": 85, "sku": "kuA7pndIbPu2wnya"}]}], "userIdExpression": "QQvUMXPzo2mfh8uo"}' \
    > test.out 2>&1
eval_tap $? 195 'UpdateReward' test.out

#- 196 DeleteReward
samples/cli/sample-apps Platform deleteReward \
    --namespace $AB_NAMESPACE \
    --rewardId 'KnGYtrE2cqIKmWBs' \
    > test.out 2>&1
eval_tap $? 196 'DeleteReward' test.out

#- 197 CheckEventCondition
samples/cli/sample-apps Platform checkEventCondition \
    --namespace $AB_NAMESPACE \
    --rewardId 'fBLGB4RIDrFjuBKd' \
    --body '{"payload": {"7gSPZadEf37OqFWJ": {}, "JNY9mimuZVa0YLsH": {}, "OtoaTy2DQE9XDjDG": {}}}' \
    > test.out 2>&1
eval_tap $? 197 'CheckEventCondition' test.out

#- 198 DeleteRewardConditionRecord
samples/cli/sample-apps Platform deleteRewardConditionRecord \
    --namespace $AB_NAMESPACE \
    --rewardId 'mmBFtKpYctS4WtNZ' \
    --body '{"conditionName": "LRrfmFLtMxJzAoOw", "userId": "TmwllT6NnXEoybqT"}' \
    > test.out 2>&1
eval_tap $? 198 'DeleteRewardConditionRecord' test.out

#- 199 QuerySections
samples/cli/sample-apps Platform querySections \
    --namespace $AB_NAMESPACE \
    --end 'Xh8msWkVNRIz2Whu' \
    --limit '33' \
    --offset '53' \
    --start 'qWU2x79cfj0QNukv' \
    --storeId 'AhRDqpArlpJ9ne3H' \
    --viewId 'kLGWo1hzTr2MrkXc' \
    > test.out 2>&1
eval_tap $? 199 'QuerySections' test.out

#- 200 CreateSection
samples/cli/sample-apps Platform createSection \
    --namespace $AB_NAMESPACE \
    --storeId 'zxiGV89KFAFgVnNV' \
    --body '{"active": true, "displayOrder": 78, "endDate": "1989-11-11T00:00:00Z", "ext": {"GxQEfjR20RLIzfYp": {}, "WYzAaaXViCAWWv9j": {}, "kAuIZTo9H6pHCeWc": {}}, "fixedPeriodRotationConfig": {"backfillType": "CUSTOM", "duration": 41, "itemCount": 10, "rule": "SEQUENCE"}, "items": [{"id": "Z8edJHYY0EeFqeJV", "sku": "nvVeCjQHwoeYNCyl"}, {"id": "jBDtppUbD2BhL5fJ", "sku": "8eWTh4P9x08814Qv"}, {"id": "n1Ef5VILR93NnF3Y", "sku": "PPrkZeRutu6FFbyT"}], "localizations": {"vnsGj9e0bE48dRlv": {"description": "ix0tjQjLDeputQd5", "localExt": {"clGQqhnjdMyDE0gX": {}, "QKcucdTGVpP5ftlj": {}, "Z6Mn9CkWzLANOQY7": {}}, "longDescription": "vmBlaNiwlqLveL4G", "title": "10KbtVAUDaeyXJ5H"}, "Y20RsrKjiCMdWKi0": {"description": "XLgZ4S2KDFWbSbdx", "localExt": {"a4M0CecGQeNvItgv": {}, "EaTfPeVheNe6JFgE": {}, "gcgdg0RcgfHD8Ln7": {}}, "longDescription": "xU0m7TADGDcbvWHO", "title": "GnswsrdHBrukK1mj"}, "lLZTyYVhFXz1nFBR": {"description": "ebBKS48oICWggZ1j", "localExt": {"yT1cyFwqe4iY8z0m": {}, "SAMIpdNNORHFI2pk": {}, "lS6SHce9CkJfBb4q": {}}, "longDescription": "SLg8wTfcTfiqPT4s", "title": "jvMH9dKfXsqkuG8R"}}, "name": "DXvJt5Syq269WCby", "rotationType": "CUSTOM", "startDate": "1993-08-18T00:00:00Z", "viewId": "FMUxSJJa8A6ILg1w"}' \
    > test.out 2>&1
eval_tap $? 200 'CreateSection' test.out

#- 201 PurgeExpiredSection
samples/cli/sample-apps Platform purgeExpiredSection \
    --namespace $AB_NAMESPACE \
    --storeId 'deAHg0GjX8COrd5g' \
    > test.out 2>&1
eval_tap $? 201 'PurgeExpiredSection' test.out

#- 202 GetSection
samples/cli/sample-apps Platform getSection \
    --namespace $AB_NAMESPACE \
    --sectionId 'WurAwujEvNBcwpov' \
    --storeId '9IyN6uDJMsWOuRZ1' \
    > test.out 2>&1
eval_tap $? 202 'GetSection' test.out

#- 203 UpdateSection
samples/cli/sample-apps Platform updateSection \
    --namespace $AB_NAMESPACE \
    --sectionId 'lLvGBisJwlR2REXl' \
    --storeId '2fw5Vg1ifTG2Ds17' \
    --body '{"active": true, "displayOrder": 22, "endDate": "1992-08-27T00:00:00Z", "ext": {"RFCu7KrrOqrEYi67": {}, "ajYUoOrye0X7FBki": {}, "C4yJGEKSYLpSMqOr": {}}, "fixedPeriodRotationConfig": {"backfillType": "NONE", "duration": 64, "itemCount": 44, "rule": "SEQUENCE"}, "items": [{"id": "UexdGEci4WpG9GaU", "sku": "044N5nu2f9tFSTuq"}, {"id": "HW95wZRPs5GaHMt7", "sku": "bY3Pa85FFqyj7Mum"}, {"id": "09ZHHVaLI9gm8Izk", "sku": "5sxnGONwFz6OivBL"}], "localizations": {"g4tbSVE2nnsffpuq": {"description": "KT5o1UcwEK4Set2u", "localExt": {"m1MJAfA9Hl0QbcFI": {}, "tpXqrmaJRekxHcvs": {}, "lENNnmz1NLZjpUpt": {}}, "longDescription": "CByAu1APWZB6usSg", "title": "M8AMBIFeXVcNLQ7I"}, "fRotDzxpXbke7e2p": {"description": "iCxK3CVCDNzvDheq", "localExt": {"3aY4IoNX0RDkSN6B": {}, "OtGJwHJ8PEP63fYO": {}, "ZHwdIPtbimGCrGDm": {}}, "longDescription": "MCvRsg1qCDLiqwWq", "title": "evnqwQ7ivTC9aMz3"}, "dhUlTkp31erXjRbM": {"description": "Uem8ghucDXn0vSkj", "localExt": {"xf7yKNMiX5J6PuyF": {}, "4hWvWRO9x5P5Wvjn": {}, "8MQ5fPMzZi3liuMs": {}}, "longDescription": "Fer8Za0gqnISbIYP", "title": "WBZibDb4Ycu0dgus"}}, "name": "emquUk2Ri4z74xyf", "rotationType": "FIXED_PERIOD", "startDate": "1995-04-01T00:00:00Z", "viewId": "OFoRB0FocLxJ39ZT"}' \
    > test.out 2>&1
eval_tap $? 203 'UpdateSection' test.out

#- 204 DeleteSection
samples/cli/sample-apps Platform deleteSection \
    --namespace $AB_NAMESPACE \
    --sectionId 'n9MUhXyZMXKgpAYK' \
    --storeId 'pl819MqiwAsim3pP' \
    > test.out 2>&1
eval_tap $? 204 'DeleteSection' test.out

#- 205 ListStores
samples/cli/sample-apps Platform listStores \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 205 'ListStores' test.out

#- 206 CreateStore
samples/cli/sample-apps Platform createStore \
    --namespace $AB_NAMESPACE \
    --body '{"defaultLanguage": "qBY9VZnXlRxqdVI7", "defaultRegion": "A3pXvHxkECdmRZKY", "description": "5GMYUQp1UPZvysfU", "supportedLanguages": ["YDtZQrHKq8Zfgc35", "aStZv51HMwqQ6wdx", "Fqh0K9r37KID6A4X"], "supportedRegions": ["h1I2yiLjWtyKi50L", "1litCyHs0RG9UZNQ", "jkbAjaoafljK9VqK"], "title": "KUzpaszwrP57yMCC"}' \
    > test.out 2>&1
eval_tap $? 206 'CreateStore' test.out

#- 207 GetCatalogDefinition
samples/cli/sample-apps Platform getCatalogDefinition \
    --namespace $AB_NAMESPACE \
    --catalogType 'CATEGORY' \
    > test.out 2>&1
eval_tap $? 207 'GetCatalogDefinition' test.out

#- 208 DownloadCSVTemplates
samples/cli/sample-apps Platform downloadCSVTemplates \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 208 'DownloadCSVTemplates' test.out

#- 209 ExportStoreByCSV
samples/cli/sample-apps Platform exportStoreByCSV \
    --namespace $AB_NAMESPACE \
    --body '{"catalogType": "VIEW", "fieldsToBeIncluded": ["AhiMcWcON3QRqTKz", "x9syXmpfjSRLctv8", "qE7imTb5YN1UT3Nh"], "idsToBeExported": ["NwuY1qDKBrz81bVP", "ReEyocQnOA6B5XQH", "Pj92vgHyCtAKRkEy"], "storeId": "47R8FwIQlOBbbClV"}' \
    > test.out 2>&1
eval_tap $? 209 'ExportStoreByCSV' test.out

#- 210 ImportStore
eval_tap 0 210 'ImportStore # SKIP deprecated' test.out

#- 211 GetPublishedStore
samples/cli/sample-apps Platform getPublishedStore \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 211 'GetPublishedStore' test.out

#- 212 DeletePublishedStore
samples/cli/sample-apps Platform deletePublishedStore \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 212 'DeletePublishedStore' test.out

#- 213 GetPublishedStoreBackup
samples/cli/sample-apps Platform getPublishedStoreBackup \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 213 'GetPublishedStoreBackup' test.out

#- 214 RollbackPublishedStore
samples/cli/sample-apps Platform rollbackPublishedStore \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 214 'RollbackPublishedStore' test.out

#- 215 GetStore
samples/cli/sample-apps Platform getStore \
    --namespace $AB_NAMESPACE \
    --storeId 'xDyufa9iMN7cUsbo' \
    > test.out 2>&1
eval_tap $? 215 'GetStore' test.out

#- 216 UpdateStore
samples/cli/sample-apps Platform updateStore \
    --namespace $AB_NAMESPACE \
    --storeId 'JYVveHgtkILIKqDY' \
    --body '{"defaultLanguage": "1Ed5hkuiFK5LmZEk", "defaultRegion": "qqeeBqceFxLFtS6U", "description": "qlY5mWx1FCiuaFge", "supportedLanguages": ["JpcTQdcTpHrVymjC", "qKQUFCHZVzJtv0Ev", "PufHvtACCuuAsOwn"], "supportedRegions": ["DPzj5AW1kQzwTtog", "Rj7S3kgRdaRIpq6t", "xpSGhcSwuJHFqsJL"], "title": "ROMRfY722rV0BQUu"}' \
    > test.out 2>&1
eval_tap $? 216 'UpdateStore' test.out

#- 217 DeleteStore
samples/cli/sample-apps Platform deleteStore \
    --namespace $AB_NAMESPACE \
    --storeId 'kHfIqLiRiPiK4G84' \
    > test.out 2>&1
eval_tap $? 217 'DeleteStore' test.out

#- 218 QueryChanges
samples/cli/sample-apps Platform queryChanges \
    --namespace $AB_NAMESPACE \
    --storeId 'dXLdlPTeIX8F3cuU' \
    --action 'DELETE' \
    --itemSku 'AhuZpO4lppLNTt1w' \
    --itemType 'OPTIONBOX' \
    --limit '11' \
    --offset '91' \
    --selected 'false' \
    --sortBy '["updatedAt:desc", "updatedAt:asc", "createdAt:asc"]' \
    --status 'UNPUBLISHED' \
    --type 'VIEW' \
    --updatedAtEnd 'hPZIu61Iq7Citf06' \
    --updatedAtStart 'Dakf288VAAKakZB4' \
    --withTotal 'true' \
    > test.out 2>&1
eval_tap $? 218 'QueryChanges' test.out

#- 219 PublishAll
samples/cli/sample-apps Platform publishAll \
    --namespace $AB_NAMESPACE \
    --storeId '5D013pq2RjSTJS9B' \
    > test.out 2>&1
eval_tap $? 219 'PublishAll' test.out

#- 220 PublishSelected
samples/cli/sample-apps Platform publishSelected \
    --namespace $AB_NAMESPACE \
    --storeId 'VwUxhMdbLjrNQw0X' \
    > test.out 2>&1
eval_tap $? 220 'PublishSelected' test.out

#- 221 SelectAllRecords
samples/cli/sample-apps Platform selectAllRecords \
    --namespace $AB_NAMESPACE \
    --storeId 'QGRTBg8kAQsjL0HE' \
    > test.out 2>&1
eval_tap $? 221 'SelectAllRecords' test.out

#- 222 SelectAllRecordsByCriteria
samples/cli/sample-apps Platform selectAllRecordsByCriteria \
    --namespace $AB_NAMESPACE \
    --storeId 'r83wNkSIWi1Ax551' \
    --action 'CREATE' \
    --itemSku '2V09TAlwaOAqHppb' \
    --itemType 'MEDIA' \
    --selected 'false' \
    --type 'STORE' \
    --updatedAtEnd 'tgYIBMPhorsktMBV' \
    --updatedAtStart 'VScaCNv4h3TuVoQW' \
    > test.out 2>&1
eval_tap $? 222 'SelectAllRecordsByCriteria' test.out

#- 223 GetStatistic
samples/cli/sample-apps Platform getStatistic \
    --namespace $AB_NAMESPACE \
    --storeId 'NivRjpkVSJxXRkuW' \
    --action 'DELETE' \
    --itemSku 'upOmPrGajy4DYvM3' \
    --itemType 'MEDIA' \
    --type 'SECTION' \
    --updatedAtEnd 'g4FNi7wcATQHDuQW' \
    --updatedAtStart 'cUbWc34iRGNj2zpD' \
    > test.out 2>&1
eval_tap $? 223 'GetStatistic' test.out

#- 224 UnselectAllRecords
samples/cli/sample-apps Platform unselectAllRecords \
    --namespace $AB_NAMESPACE \
    --storeId 'pWqPgc7wdsfrw6lY' \
    > test.out 2>&1
eval_tap $? 224 'UnselectAllRecords' test.out

#- 225 SelectRecord
samples/cli/sample-apps Platform selectRecord \
    --changeId 'AnepnBsPUD4kkceC' \
    --namespace $AB_NAMESPACE \
    --storeId 'z1EgAgIlfoOotldG' \
    > test.out 2>&1
eval_tap $? 225 'SelectRecord' test.out

#- 226 UnselectRecord
samples/cli/sample-apps Platform unselectRecord \
    --changeId 'mk56xuJ44fXP9LwD' \
    --namespace $AB_NAMESPACE \
    --storeId '71gNmhyy2Xjx6igO' \
    > test.out 2>&1
eval_tap $? 226 'UnselectRecord' test.out

#- 227 CloneStore
samples/cli/sample-apps Platform cloneStore \
    --namespace $AB_NAMESPACE \
    --storeId 'DysMgYLfn2BvL7CP' \
    --targetStoreId 'B0ZSBn0uSwwcId2Y' \
    > test.out 2>&1
eval_tap $? 227 'CloneStore' test.out

#- 228 ExportStore
eval_tap 0 228 'ExportStore # SKIP deprecated' test.out

#- 229 QueryImportHistory
samples/cli/sample-apps Platform queryImportHistory \
    --namespace $AB_NAMESPACE \
    --storeId 'NzQTIZAUNVIlkexk' \
    --end 'Dwq4VEooJPnQX2iZ' \
    --limit '61' \
    --offset '52' \
    --sortBy 'w0XUfPBhUTi3Xc7h' \
    --start 'lJNepMW6YQJnIF0X' \
    --success 'false' \
    > test.out 2>&1
eval_tap $? 229 'QueryImportHistory' test.out

#- 230 ImportStoreByCSV
samples/cli/sample-apps Platform importStoreByCSV \
    --namespace $AB_NAMESPACE \
    --storeId 'Szn5u5x0RHYuHTia' \
    --category 'tmp.dat' \
    --display 'tmp.dat' \
    --item 'tmp.dat' \
    --notes 'LX3aHy4R8sq7g3hd' \
    --section 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 230 'ImportStoreByCSV' test.out

#- 231 QuerySubscriptions
samples/cli/sample-apps Platform querySubscriptions \
    --namespace $AB_NAMESPACE \
    --chargeStatus 'SETUP' \
    --itemId '4ijdbS8tB5XXEJFe' \
    --limit '18' \
    --offset '3' \
    --sku 'MYrKQDZ9z1kB2l00' \
    --status 'INIT' \
    --subscribedBy 'PLATFORM' \
    --userId 'B1C6fUujErR9PXdt' \
    > test.out 2>&1
eval_tap $? 231 'QuerySubscriptions' test.out

#- 232 RecurringChargeSubscription
samples/cli/sample-apps Platform recurringChargeSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId '9ZLStoPpGlCWHGZv' \
    > test.out 2>&1
eval_tap $? 232 'RecurringChargeSubscription' test.out

#- 233 GetTicketDynamic
samples/cli/sample-apps Platform getTicketDynamic \
    --boothName 'vg8JMsE4oZbfoPkA' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 233 'GetTicketDynamic' test.out

#- 234 DecreaseTicketSale
samples/cli/sample-apps Platform decreaseTicketSale \
    --boothName 'G0ZWu0wph15D3DgH' \
    --namespace $AB_NAMESPACE \
    --body '{"orderNo": "dcN81PWWCpEFOCCq"}' \
    > test.out 2>&1
eval_tap $? 234 'DecreaseTicketSale' test.out

#- 235 GetTicketBoothID
samples/cli/sample-apps Platform getTicketBoothID \
    --boothName 'KEDQAei8KNqARR2F' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 235 'GetTicketBoothID' test.out

#- 236 IncreaseTicketSale
samples/cli/sample-apps Platform increaseTicketSale \
    --boothName 'U4w1n9dbTFgHpfJc' \
    --namespace $AB_NAMESPACE \
    --body '{"count": 5, "orderNo": "h7ZN0oA1CiOVMx23"}' \
    > test.out 2>&1
eval_tap $? 236 'IncreaseTicketSale' test.out

#- 237 Commit
samples/cli/sample-apps Platform commit \
    --namespace $AB_NAMESPACE \
    --body '{"actions": [{"operations": [{"creditPayload": {"balanceOrigin": "IOS", "count": 96, "currencyCode": "9ZHJkaDPkPtGJQW6", "expireAt": "1996-11-07T00:00:00Z"}, "debitPayload": {"count": 71, "currencyCode": "HKJXk5u0i0IK4kuL", "walletPlatform": "Other"}, "fulFillItemPayload": {"count": 85, "entitlementCollectionId": "OGNfC3JWTksfPef3", "entitlementOrigin": "Steam", "itemIdentity": "ZAGcQU6C7HGgFJcw", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 71, "entitlementId": "pdxYSUQXVkIrDvMe"}, "type": "DEBIT_WALLET"}, {"creditPayload": {"balanceOrigin": "Xbox", "count": 92, "currencyCode": "lPLZKfUxuScrK02f", "expireAt": "1986-01-05T00:00:00Z"}, "debitPayload": {"count": 44, "currencyCode": "EpunhwBz5xEv74Dd", "walletPlatform": "Epic"}, "fulFillItemPayload": {"count": 30, "entitlementCollectionId": "es6O2jN6KkcgJk2w", "entitlementOrigin": "Nintendo", "itemIdentity": "AqiSc5ckNjzHoL3J", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 37, "entitlementId": "8rQoRL507ehnapgx"}, "type": "DEBIT_WALLET"}, {"creditPayload": {"balanceOrigin": "Xbox", "count": 16, "currencyCode": "6zMPgrdknkjUzkUJ", "expireAt": "1979-12-22T00:00:00Z"}, "debitPayload": {"count": 21, "currencyCode": "ijTNHacKaSCa1At3", "walletPlatform": "Xbox"}, "fulFillItemPayload": {"count": 71, "entitlementCollectionId": "UFNcY6rgKQIp8El6", "entitlementOrigin": "Xbox", "itemIdentity": "c1KkZaXnRdsT84Dm", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 79, "entitlementId": "2U2vdTtjetyCJSYi"}, "type": "REVOKE_ENTITLEMENT"}], "userId": "bqtBm1GWQiCbWjQo"}, {"operations": [{"creditPayload": {"balanceOrigin": "Xbox", "count": 32, "currencyCode": "IvFFhGbGNBtZa1c5", "expireAt": "1999-05-25T00:00:00Z"}, "debitPayload": {"count": 73, "currencyCode": "OqBvyeTD1phkGfG5", "walletPlatform": "Playstation"}, "fulFillItemPayload": {"count": 66, "entitlementCollectionId": "RcqzYAnsjqZAwd9T", "entitlementOrigin": "Steam", "itemIdentity": "Zv6PGifT8zmHQgO9", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 4, "entitlementId": "J8oMSh7CdnG2zix3"}, "type": "REVOKE_ENTITLEMENT"}, {"creditPayload": {"balanceOrigin": "Oculus", "count": 64, "currencyCode": "qWPc1Y6mTFtYTP35", "expireAt": "1997-04-11T00:00:00Z"}, "debitPayload": {"count": 68, "currencyCode": "O3XSCBUpFIxWAb5h", "walletPlatform": "GooglePlay"}, "fulFillItemPayload": {"count": 90, "entitlementCollectionId": "7vlCOAtUtRJzLS2A", "entitlementOrigin": "Steam", "itemIdentity": "PL19R7Zsu8wtcv2m", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 81, "entitlementId": "e5EZYJyKTYoxuM4B"}, "type": "REVOKE_ENTITLEMENT"}, {"creditPayload": {"balanceOrigin": "IOS", "count": 36, "currencyCode": "mHHJ0quplsClA3qV", "expireAt": "1988-05-06T00:00:00Z"}, "debitPayload": {"count": 14, "currencyCode": "9aDtpOQc5PdGtbNV", "walletPlatform": "Xbox"}, "fulFillItemPayload": {"count": 25, "entitlementCollectionId": "7OBTLAWXaKcMxRHi", "entitlementOrigin": "Other", "itemIdentity": "EVYsSiHBgcIGDyKG", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 2, "entitlementId": "Mm9RW0o2vFdxSlXA"}, "type": "REVOKE_ENTITLEMENT"}], "userId": "u68d4Fjoyj5TNfeX"}, {"operations": [{"creditPayload": {"balanceOrigin": "Oculus", "count": 10, "currencyCode": "xyOwdVoPEYGAzhZX", "expireAt": "1990-10-07T00:00:00Z"}, "debitPayload": {"count": 5, "currencyCode": "Knx8uCG4SaA23wMW", "walletPlatform": "Oculus"}, "fulFillItemPayload": {"count": 89, "entitlementCollectionId": "MaVxrmg14H4v7vIS", "entitlementOrigin": "System", "itemIdentity": "JlsU2bwg9VnAtTlL", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 23, "entitlementId": "4GI7sN1dexSiitWG"}, "type": "FULFILL_ITEM"}, {"creditPayload": {"balanceOrigin": "Epic", "count": 56, "currencyCode": "xoawM8qWcytYpCM3", "expireAt": "1998-09-22T00:00:00Z"}, "debitPayload": {"count": 47, "currencyCode": "oKzFD3mxc9Rd8PbP", "walletPlatform": "Xbox"}, "fulFillItemPayload": {"count": 17, "entitlementCollectionId": "CGSCaMAhfcFY5Opi", "entitlementOrigin": "Playstation", "itemIdentity": "Om6uJ6Ij7THYwla2", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 11, "entitlementId": "UtincjTjcFdlOTbs"}, "type": "FULFILL_ITEM"}, {"creditPayload": {"balanceOrigin": "GooglePlay", "count": 52, "currencyCode": "AwYvVqzm87UicOti", "expireAt": "1998-12-13T00:00:00Z"}, "debitPayload": {"count": 11, "currencyCode": "MvZRaUOHm8GYaE48", "walletPlatform": "Steam"}, "fulFillItemPayload": {"count": 62, "entitlementCollectionId": "8m3x3SLKETXDdIx6", "entitlementOrigin": "Xbox", "itemIdentity": "MKV8JCrifJdAYJrr", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 51, "entitlementId": "DMmtJNN38r6dls9l"}, "type": "REVOKE_ENTITLEMENT"}], "userId": "JYeLRAw9x3ACqnuG"}], "metadata": {"CEh4tK6Xucy3KDQm": {}, "l9Nx2NTG8l3o4oWt": {}, "Z4jB4tOA8Hjl379D": {}}, "needPreCheck": true, "transactionId": "t5vsMjTj67fAewKn", "type": "d31Tdx3B8Q2PUrJS"}' \
    > test.out 2>&1
eval_tap $? 237 'Commit' test.out

#- 238 GetTradeHistoryByCriteria
samples/cli/sample-apps Platform getTradeHistoryByCriteria \
    --namespace $AB_NAMESPACE \
    --limit '98' \
    --offset '23' \
    --status 'INIT' \
    --type 'zgmvF2nrCB5P6J2t' \
    --userId 'LRUNtq3igSzNaZti' \
    > test.out 2>&1
eval_tap $? 238 'GetTradeHistoryByCriteria' test.out

#- 239 GetTradeHistoryByTransactionId
samples/cli/sample-apps Platform getTradeHistoryByTransactionId \
    --namespace $AB_NAMESPACE \
    --transactionId 'nHWu6tyI0DvZOgbF' \
    > test.out 2>&1
eval_tap $? 239 'GetTradeHistoryByTransactionId' test.out

#- 240 UnlockSteamUserAchievement
samples/cli/sample-apps Platform unlockSteamUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'aCRehtxWWy7t87KT' \
    --body '{"achievements": [{"id": "gUV3MHL9th6uY6HG", "value": 77}, {"id": "MxVmSueWzWZbOPHl", "value": 28}, {"id": "puVPDSE7Qj0tEvsz", "value": 72}], "steamUserId": "dkTtdWRMjVALSrdP"}' \
    > test.out 2>&1
eval_tap $? 240 'UnlockSteamUserAchievement' test.out

#- 241 GetXblUserAchievements
samples/cli/sample-apps Platform getXblUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId 'KV1PDiJ7usDjk37o' \
    --xboxUserId 'VLLs9GdJwhDZzIaw' \
    > test.out 2>&1
eval_tap $? 241 'GetXblUserAchievements' test.out

#- 242 UpdateXblUserAchievement
samples/cli/sample-apps Platform updateXblUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'ccmrMXQKXU8jiHpw' \
    --body '{"achievements": [{"id": "y01QvUJv0GEqTRN7", "percentComplete": 70}, {"id": "Zez1cs6KB37ZoyFH", "percentComplete": 67}, {"id": "0tLuGyMOZEH7oIBY", "percentComplete": 99}], "serviceConfigId": "7VoYGqkgkwoirUVz", "titleId": "vgh6WKuMYmFYlcRt", "xboxUserId": "2sHwxhyGWwxpqXxK"}' \
    > test.out 2>&1
eval_tap $? 242 'UpdateXblUserAchievement' test.out

#- 243 AnonymizeCampaign
samples/cli/sample-apps Platform anonymizeCampaign \
    --namespace $AB_NAMESPACE \
    --userId 'OYkYDL0zKoaIZvXs' \
    > test.out 2>&1
eval_tap $? 243 'AnonymizeCampaign' test.out

#- 244 AnonymizeEntitlement
samples/cli/sample-apps Platform anonymizeEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'Gn1lwGCJonMcnXQj' \
    > test.out 2>&1
eval_tap $? 244 'AnonymizeEntitlement' test.out

#- 245 AnonymizeFulfillment
samples/cli/sample-apps Platform anonymizeFulfillment \
    --namespace $AB_NAMESPACE \
    --userId 'cutzWDVZ9tv1tJL9' \
    > test.out 2>&1
eval_tap $? 245 'AnonymizeFulfillment' test.out

#- 246 AnonymizeIntegration
samples/cli/sample-apps Platform anonymizeIntegration \
    --namespace $AB_NAMESPACE \
    --userId 'jjneE1C4ahSHPbqB' \
    > test.out 2>&1
eval_tap $? 246 'AnonymizeIntegration' test.out

#- 247 AnonymizeOrder
samples/cli/sample-apps Platform anonymizeOrder \
    --namespace $AB_NAMESPACE \
    --userId '7BG8UCpz9mDyLX5X' \
    > test.out 2>&1
eval_tap $? 247 'AnonymizeOrder' test.out

#- 248 AnonymizePayment
samples/cli/sample-apps Platform anonymizePayment \
    --namespace $AB_NAMESPACE \
    --userId 'CAa3mLf2tGSoQHb8' \
    > test.out 2>&1
eval_tap $? 248 'AnonymizePayment' test.out

#- 249 AnonymizeRevocation
samples/cli/sample-apps Platform anonymizeRevocation \
    --namespace $AB_NAMESPACE \
    --userId 'ZHvhdBEuFHTkFINU' \
    > test.out 2>&1
eval_tap $? 249 'AnonymizeRevocation' test.out

#- 250 AnonymizeSubscription
samples/cli/sample-apps Platform anonymizeSubscription \
    --namespace $AB_NAMESPACE \
    --userId '80DpYvni9Cw4YDlW' \
    > test.out 2>&1
eval_tap $? 250 'AnonymizeSubscription' test.out

#- 251 AnonymizeWallet
samples/cli/sample-apps Platform anonymizeWallet \
    --namespace $AB_NAMESPACE \
    --userId 'Eg1MnAS7wdAs8Pdq' \
    > test.out 2>&1
eval_tap $? 251 'AnonymizeWallet' test.out

#- 252 GetUserDLCByPlatform
samples/cli/sample-apps Platform getUserDLCByPlatform \
    --namespace $AB_NAMESPACE \
    --userId 'SUniEiM7gIl6EPaY' \
    --type 'OCULUS' \
    > test.out 2>&1
eval_tap $? 252 'GetUserDLCByPlatform' test.out

#- 253 GetUserDLC
samples/cli/sample-apps Platform getUserDLC \
    --namespace $AB_NAMESPACE \
    --userId 'gCPQ33Z6qYERSKnK' \
    --includeAllNamespaces 'true' \
    --status 'FULFILLED' \
    --type 'OCULUS' \
    > test.out 2>&1
eval_tap $? 253 'GetUserDLC' test.out

#- 254 QueryUserEntitlements
samples/cli/sample-apps Platform queryUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'Ugdq9DWsStIuJKLa' \
    --activeOnly 'true' \
    --appType 'DLC' \
    --collectionId 'Kwwe3rcqxK0AtB0T' \
    --entitlementClazz 'MEDIA' \
    --entitlementName 'JyRzMlz7iz66MhG7' \
    --features '["sWrpJJSzGbNRy1Hp", "FgCX9z3s92kybWXA", "pLGAyBRuCLGRRT9r"]' \
    --fuzzyMatchName 'false' \
    --ignoreActiveDate 'false' \
    --itemId '["gjp2rqNIYDuuSXgG", "NUuGGzpBMlqZOJ2U", "FgfigirmMcVeEE02"]' \
    --limit '25' \
    --offset '84' \
    --origin 'Nintendo' \
    > test.out 2>&1
eval_tap $? 254 'QueryUserEntitlements' test.out

#- 255 GrantUserEntitlement
samples/cli/sample-apps Platform grantUserEntitlement \
    --namespace $AB_NAMESPACE \
    --userId '0C6G1W9D0lkJShUu' \
    --body '[{"collectionId": "m5Li7NdbMvM8f3x4", "endDate": "1972-10-12T00:00:00Z", "grantedCode": "E3yqpqisdHdZ7rn6", "itemId": "Pk4VEM3lkJEmxNeF", "itemNamespace": "cFuSELUD0nvNfz4v", "language": "wAA_186", "metadata": {"idCGhzOYmqWIbBMC": {}, "8kpOsUnDB11fWhKb": {}, "Fql7jccVtDPCcVCW": {}}, "origin": "Oculus", "quantity": 33, "region": "jjvJiglUAZ0UA2Nm", "source": "REDEEM_CODE", "startDate": "1972-05-10T00:00:00Z", "storeId": "yi6hDXfO6e2WOjID"}, {"collectionId": "ZuhjjLiJPuIlJdXZ", "endDate": "1991-01-27T00:00:00Z", "grantedCode": "enapIi6KKlVtNjVR", "itemId": "pXqRwPTGiDrJTDLQ", "itemNamespace": "jEotgbgTGrFijqun", "language": "ZK-119", "metadata": {"wag8qQhZ3AQNfyJV": {}, "JvDmZ1Biwueh47wh": {}, "1v9kdrbmduKQRQCx": {}}, "origin": "Epic", "quantity": 13, "region": "c6V2kFPyJZAb7eFl", "source": "PROMOTION", "startDate": "1998-10-12T00:00:00Z", "storeId": "blyWbFWFUyZZNTn9"}, {"collectionId": "v7pGeIJXIkKNKZ9F", "endDate": "1982-07-30T00:00:00Z", "grantedCode": "gz2AMSd5K6zYXJnh", "itemId": "gQj1lq6DWVFyGZ2C", "itemNamespace": "5B2wxkwM9iU5W9QN", "language": "Nd-PsQi", "metadata": {"cusYAdPjksBmDHmi": {}, "1gM8WatpEsYpXCX6": {}, "xn1hAStFla05dmgi": {}}, "origin": "IOS", "quantity": 6, "region": "YcIKPCuQtRe8cBz7", "source": "OTHER", "startDate": "1986-11-10T00:00:00Z", "storeId": "dA48f6EiZRxt7KbB"}]' \
    > test.out 2>&1
eval_tap $? 255 'GrantUserEntitlement' test.out

#- 256 GetUserAppEntitlementByAppId
samples/cli/sample-apps Platform getUserAppEntitlementByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'bY591EHnoUkwNu3e' \
    --activeOnly 'true' \
    --appId 'BckYQ65bYrFBdFuo' \
    > test.out 2>&1
eval_tap $? 256 'GetUserAppEntitlementByAppId' test.out

#- 257 QueryUserEntitlementsByAppType
samples/cli/sample-apps Platform queryUserEntitlementsByAppType \
    --namespace $AB_NAMESPACE \
    --userId 'UomoT99TKk7emKVL' \
    --activeOnly 'false' \
    --limit '81' \
    --offset '33' \
    --appType 'SOFTWARE' \
    > test.out 2>&1
eval_tap $? 257 'QueryUserEntitlementsByAppType' test.out

#- 258 GetUserEntitlementsByIds
samples/cli/sample-apps Platform getUserEntitlementsByIds \
    --namespace $AB_NAMESPACE \
    --userId 'qPeSDnlHX26uhLEA' \
    --ids '["2GiGKnhTPyTTMS8Z", "HByiJyoUwoj5QO8z", "6zeT3CAd6Mhm9k90"]' \
    > test.out 2>&1
eval_tap $? 258 'GetUserEntitlementsByIds' test.out

#- 259 GetUserEntitlementByItemId
samples/cli/sample-apps Platform getUserEntitlementByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'MjfsZOuW1HYIejSR' \
    --activeOnly 'true' \
    --entitlementClazz 'CODE' \
    --platform 'DGZ5SxSxrxSRBX4M' \
    --itemId 'sThsTcm1ygsU6ZRf' \
    > test.out 2>&1
eval_tap $? 259 'GetUserEntitlementByItemId' test.out

#- 260 GetUserActiveEntitlementsByItemIds
samples/cli/sample-apps Platform getUserActiveEntitlementsByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'QL06rb1hWt3n2QhK' \
    --ids '["FsQu7n6VGnorQFcB", "YCpySc713pTgYViJ", "b04Lx4kbkfz27MCo"]' \
    --platform 'k28s05GOYN4dTkXP' \
    > test.out 2>&1
eval_tap $? 260 'GetUserActiveEntitlementsByItemIds' test.out

#- 261 GetUserEntitlementBySku
samples/cli/sample-apps Platform getUserEntitlementBySku \
    --namespace $AB_NAMESPACE \
    --userId 'AHteQFlTXZqVxhHl' \
    --activeOnly 'false' \
    --entitlementClazz 'OPTIONBOX' \
    --platform 'pJo316yFemd2Ozfr' \
    --sku 'aKni2plgQmL48JIF' \
    > test.out 2>&1
eval_tap $? 261 'GetUserEntitlementBySku' test.out

#- 262 ExistsAnyUserActiveEntitlement
samples/cli/sample-apps Platform existsAnyUserActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'bIjcoiim4IOYLEOF' \
    --appIds '["9N3soW3D0Og3hOyX", "40zoZXynEtyrd2R9", "ZvBuqVtbnOlXadfS"]' \
    --itemIds '["pqaQM64WDmNMAEXC", "jnWwtzQf9UvhmFU7", "yzUr724HZTKZx6e7"]' \
    --platform 'apCHmiXcCrahRupH' \
    --skus '["6b0Yfw74nhszU1Ed", "F7kN0S3zWmJcZy2x", "iVe4jiu9nxP8v4qa"]' \
    > test.out 2>&1
eval_tap $? 262 'ExistsAnyUserActiveEntitlement' test.out

#- 263 ExistsAnyUserActiveEntitlementByItemIds
samples/cli/sample-apps Platform existsAnyUserActiveEntitlementByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'x02UmtrNZE7vUAtJ' \
    --platform 'q8qvtViYE1jVe1qr' \
    --itemIds '["mEzRYSocE2xmZcyb", "vmRpSTPVMF1rW23o", "9rE3M7x9HfhdvzDg"]' \
    > test.out 2>&1
eval_tap $? 263 'ExistsAnyUserActiveEntitlementByItemIds' test.out

#- 264 GetUserAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform getUserAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --userId '2WmHJqIBojg35Zl1' \
    --appId 'nViXMeJOdvQyc9Kf' \
    > test.out 2>&1
eval_tap $? 264 'GetUserAppEntitlementOwnershipByAppId' test.out

#- 265 GetUserEntitlementOwnershipByItemId
samples/cli/sample-apps Platform getUserEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --userId '16onYinMIHoDuW78' \
    --entitlementClazz 'LOOTBOX' \
    --platform 'obtPnjdDFQcdXw3v' \
    --itemId 'C11t4w4lj7YRieqe' \
    > test.out 2>&1
eval_tap $? 265 'GetUserEntitlementOwnershipByItemId' test.out

#- 266 GetUserEntitlementOwnershipByItemIds
samples/cli/sample-apps Platform getUserEntitlementOwnershipByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'fNB4Rk7DOG8WhShh' \
    --ids '["2gbNA2oT0fCNLmB0", "0VPhTcyeK8gbwWpF", "H3LOXJyIhPaOy2LT"]' \
    --platform 'fEZ1QzMOJ7MHvZZe' \
    > test.out 2>&1
eval_tap $? 266 'GetUserEntitlementOwnershipByItemIds' test.out

#- 267 GetUserEntitlementOwnershipBySku
samples/cli/sample-apps Platform getUserEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --userId 'bK9AzXTpz1Ku0nBk' \
    --entitlementClazz 'CODE' \
    --platform 'l0DFgPtiIiAbLj5q' \
    --sku 'VcHlt5lXFd8Rtxe7' \
    > test.out 2>&1
eval_tap $? 267 'GetUserEntitlementOwnershipBySku' test.out

#- 268 RevokeAllEntitlements
samples/cli/sample-apps Platform revokeAllEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'caBJj5P8sK42cDRq' \
    > test.out 2>&1
eval_tap $? 268 'RevokeAllEntitlements' test.out

#- 269 RevokeUserEntitlements
samples/cli/sample-apps Platform revokeUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'xBDDAhSMpfHEwk2K' \
    --entitlementIds 'SamO8UMbsyhc17s4' \
    > test.out 2>&1
eval_tap $? 269 'RevokeUserEntitlements' test.out

#- 270 GetUserEntitlement
samples/cli/sample-apps Platform getUserEntitlement \
    --entitlementId 'bbnoobHleXbziiuR' \
    --namespace $AB_NAMESPACE \
    --userId 'XBZNgt2WZ9xOnIpX' \
    > test.out 2>&1
eval_tap $? 270 'GetUserEntitlement' test.out

#- 271 UpdateUserEntitlement
samples/cli/sample-apps Platform updateUserEntitlement \
    --entitlementId 'cdVgCPqbTDZRaZgt' \
    --namespace $AB_NAMESPACE \
    --userId 'b9Js6zwuGWFXWf7d' \
    --body '{"collectionId": "Ik1Py1NMk5e0ykiw", "endDate": "1993-05-02T00:00:00Z", "nullFieldList": ["fhGm7EMjh9kFVXAc", "2ScFbC25n1w8D2lZ", "xzYhTkbi79mu2xvL"], "origin": "Nintendo", "reason": "PgPnLWWuElzZsrqp", "startDate": "1999-03-14T00:00:00Z", "status": "CONSUMED", "useCount": 53}' \
    > test.out 2>&1
eval_tap $? 271 'UpdateUserEntitlement' test.out

#- 272 ConsumeUserEntitlement
samples/cli/sample-apps Platform consumeUserEntitlement \
    --entitlementId '8zXHvNwmp2cKJrRW' \
    --namespace $AB_NAMESPACE \
    --userId '9jr919X6TX1hALq1' \
    --body '{"metadata": {"K4BOg1UEw5E2OJQB": {}, "5YdOMNaWKDkRLrXw": {}, "JTXKLErVBPTFhz0V": {}}, "options": ["i8SfgPrA67e3poc5", "MtgK2DdyYrDCtb1B", "Gg4NTgYH0QNesHUZ"], "platform": "5kJ7wbOC3UteR3h1", "requestId": "uOWBOYoZwdJWEB1l", "useCount": 4}' \
    > test.out 2>&1
eval_tap $? 272 'ConsumeUserEntitlement' test.out

#- 273 DisableUserEntitlement
samples/cli/sample-apps Platform disableUserEntitlement \
    --entitlementId 'cMcZevYMC29CqpPf' \
    --namespace $AB_NAMESPACE \
    --userId 'ScbeLxNBN5xclANa' \
    > test.out 2>&1
eval_tap $? 273 'DisableUserEntitlement' test.out

#- 274 EnableUserEntitlement
samples/cli/sample-apps Platform enableUserEntitlement \
    --entitlementId 'ZpPCZKl8TLs8bU7Z' \
    --namespace $AB_NAMESPACE \
    --userId 'ksnVMo5hUyqwQ6vy' \
    > test.out 2>&1
eval_tap $? 274 'EnableUserEntitlement' test.out

#- 275 GetUserEntitlementHistories
samples/cli/sample-apps Platform getUserEntitlementHistories \
    --entitlementId 'bUHXEqN5SyhKD8ER' \
    --namespace $AB_NAMESPACE \
    --userId '0t9hFfrKgvn20cDK' \
    > test.out 2>&1
eval_tap $? 275 'GetUserEntitlementHistories' test.out

#- 276 RevokeUserEntitlement
samples/cli/sample-apps Platform revokeUserEntitlement \
    --entitlementId 'jYLokp5DUFW0F7qr' \
    --namespace $AB_NAMESPACE \
    --userId 'BbPbTDi0bha6mzqh' \
    --body '{"metadata": {"RpctY3pgadQO6nDy": {}, "XbtZpey2mUxVdIbP": {}, "3ca0dP0GhQHKiDyX": {}}}' \
    > test.out 2>&1
eval_tap $? 276 'RevokeUserEntitlement' test.out

#- 277 RevokeUserEntitlementByUseCount
samples/cli/sample-apps Platform revokeUserEntitlementByUseCount \
    --entitlementId '1Ip8q5QtJ2QtiAMW' \
    --namespace $AB_NAMESPACE \
    --userId 'oMNratAAIkkXzaPl' \
    --body '{"reason": "RaUjz9yeho0zrXYg", "useCount": 51}' \
    > test.out 2>&1
eval_tap $? 277 'RevokeUserEntitlementByUseCount' test.out

#- 278 PreCheckRevokeUserEntitlementByUseCount
samples/cli/sample-apps Platform preCheckRevokeUserEntitlementByUseCount \
    --entitlementId 'HuYrPlABDpwyKgVO' \
    --namespace $AB_NAMESPACE \
    --userId 'SMmr1k6gOZ68MZRN' \
    --quantity '7' \
    > test.out 2>&1
eval_tap $? 278 'PreCheckRevokeUserEntitlementByUseCount' test.out

#- 279 RevokeUseCount
eval_tap 0 279 'RevokeUseCount # SKIP deprecated' test.out

#- 280 SellUserEntitlement
samples/cli/sample-apps Platform sellUserEntitlement \
    --entitlementId 'YJszSgvpJMY0xRqc' \
    --namespace $AB_NAMESPACE \
    --userId 'EvDWv049AEcskrQf' \
    --body '{"platform": "neWwSUfWV9bPfzif", "requestId": "qzjk4pgHGefr9RdK", "useCount": 61}' \
    > test.out 2>&1
eval_tap $? 280 'SellUserEntitlement' test.out

#- 281 FulfillItem
samples/cli/sample-apps Platform fulfillItem \
    --namespace $AB_NAMESPACE \
    --userId 'CqrdgMoPDE0DzJpD' \
    --body '{"duration": 47, "endDate": "1975-08-30T00:00:00Z", "entitlementCollectionId": "nadjXn9dIWyBQPt9", "entitlementOrigin": "Xbox", "itemId": "dwE4NguKFv511bXM", "itemSku": "Xrs75NXK7go6k5Yf", "language": "au5C8rCVPwnblxLh", "metadata": {"U1ZHyebSoQ8gOQZf": {}, "VkHR1k83j60qi3g4": {}, "r1mSCjRp06jZMlxd": {}}, "order": {"currency": {"currencyCode": "ujIWk6DjrgNi3yFw", "currencySymbol": "lkOjMQYOILBqsJOH", "currencyType": "VIRTUAL", "decimals": 94, "namespace": "nzkm5iz67oK1ETfi"}, "ext": {"ugYSflVxlOETceVi": {}, "VLCmOKeTlKanre7k": {}, "UnjQEWPDuPSc04A9": {}}, "free": false}, "orderNo": "wGHl5rMoB79McxR9", "origin": "Other", "overrideBundleItemQty": {"ZIViFj1y5cblQGsG": 32, "sVIQfwRQEjPZkY70": 92, "bPcrbPqv9aDVzMK7": 22}, "quantity": 42, "region": "Ykpv5xZH6d8VquXu", "source": "PROMOTION", "startDate": "1978-04-06T00:00:00Z", "storeId": "KBjiXEPXNZnSdn5p"}' \
    > test.out 2>&1
eval_tap $? 281 'FulfillItem' test.out

#- 282 RedeemCode
samples/cli/sample-apps Platform redeemCode \
    --namespace $AB_NAMESPACE \
    --userId 'zm9j3yeW2Caa7BjL' \
    --body '{"code": "y48cV4McLUlj9tvN", "language": "lBah", "region": "QAayYTN0r1bfC2X4"}' \
    > test.out 2>&1
eval_tap $? 282 'RedeemCode' test.out

#- 283 PreCheckFulfillItem
samples/cli/sample-apps Platform preCheckFulfillItem \
    --namespace $AB_NAMESPACE \
    --userId '5osH1OikDfTSnmru' \
    --body '{"itemId": "p1GTnDggOSeIcrCx", "itemSku": "lAz86lP1L2Ortd3s", "quantity": 40}' \
    > test.out 2>&1
eval_tap $? 283 'PreCheckFulfillItem' test.out

#- 284 FulfillRewards
samples/cli/sample-apps Platform fulfillRewards \
    --namespace $AB_NAMESPACE \
    --userId 'UzkW7KXKD9n5Y5VG' \
    --body '{"entitlementCollectionId": "MCbaSzM68Bhp6wNn", "entitlementOrigin": "Xbox", "metadata": {"C4GMskrwlYRurVWr": {}, "Dar74Zh7h6vsNMAt": {}, "oIN8QqEgkFAym6i7": {}}, "origin": "Epic", "rewards": [{"currency": {"currencyCode": "QuUHUSMakjXyuvCx", "namespace": "7IEfZJcRmPyA6GL3"}, "item": {"itemId": "3RxeGxWmdcWS9FzR", "itemName": "j2vILNL0mmhfYb68", "itemSku": "ak67cVJNH9ewXeES", "itemType": "KlEh4ZYUYsRQdTOl"}, "quantity": 13, "type": "ITEM"}, {"currency": {"currencyCode": "bi01G8ilHj3bRdIg", "namespace": "Lrfk7G3JqJANNhxB"}, "item": {"itemId": "v3XgYf9xfzU4wFkH", "itemName": "m1BUXWGKeJj9DUfj", "itemSku": "QGktpvVifLjY2ep8", "itemType": "KaPAtsic5hPxsDlp"}, "quantity": 58, "type": "CURRENCY"}, {"currency": {"currencyCode": "ZO1vP69uee7hS7In", "namespace": "f3QozOgZGbyE47Qo"}, "item": {"itemId": "3Gyc5FFo4M235d0R", "itemName": "HNUJ1ZWWNyuRk20C", "itemSku": "LkczHiWMWxMWv5Pu", "itemType": "cSIaNhP4rmS4bIWi"}, "quantity": 46, "type": "ITEM"}], "source": "GIFT", "transactionId": "eUiyMLvldv1pKUbo"}' \
    > test.out 2>&1
eval_tap $? 284 'FulfillRewards' test.out

#- 285 QueryUserIAPOrders
samples/cli/sample-apps Platform queryUserIAPOrders \
    --namespace $AB_NAMESPACE \
    --userId '1nn3r9SfnMhHYV0O' \
    --endTime 'xrWlq1eHC4iKUWlm' \
    --limit '59' \
    --offset '74' \
    --productId 'vJBEHYZvb2q7Iru5' \
    --startTime 'RpPm9pdBMkVJYEEI' \
    --status 'REVOKED' \
    --type 'STEAM' \
    > test.out 2>&1
eval_tap $? 285 'QueryUserIAPOrders' test.out

#- 286 QueryAllUserIAPOrders
samples/cli/sample-apps Platform queryAllUserIAPOrders \
    --namespace $AB_NAMESPACE \
    --userId '1a2SUlqvlNCtUAc1' \
    > test.out 2>&1
eval_tap $? 286 'QueryAllUserIAPOrders' test.out

#- 287 QueryUserIAPConsumeHistory
samples/cli/sample-apps Platform queryUserIAPConsumeHistory \
    --namespace $AB_NAMESPACE \
    --userId 'SpCujC9DQ1iE6Vrq' \
    --endTime 'qlgUY18JkCALILvE' \
    --limit '23' \
    --offset '80' \
    --startTime '13S9lw1CymyCRArT' \
    --status 'SUCCESS' \
    --type 'XBOX' \
    > test.out 2>&1
eval_tap $? 287 'QueryUserIAPConsumeHistory' test.out

#- 288 MockFulfillIAPItem
samples/cli/sample-apps Platform mockFulfillIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'KgPmzIDTad7EDgTb' \
    --body '{"itemIdentityType": "ITEM_ID", "language": "Km_VZMG_588", "productId": "67AGuK75O4LkvR3P", "region": "rkPZcEb4bidZG4xR", "transactionId": "E6BfgEnXLSfOc71D", "type": "XBOX"}' \
    > test.out 2>&1
eval_tap $? 288 'MockFulfillIAPItem' test.out

#- 289 AdminGetIAPOrderLineItems
samples/cli/sample-apps Platform adminGetIAPOrderLineItems \
    --iapOrderNo 'a3aWcLCmtOuYkjzg' \
    --namespace $AB_NAMESPACE \
    --userId 'SEeSDUojEW0FIb5a' \
    > test.out 2>&1
eval_tap $? 289 'AdminGetIAPOrderLineItems' test.out

#- 290 AdminSyncSteamAbnormalTransaction
samples/cli/sample-apps Platform adminSyncSteamAbnormalTransaction \
    --namespace $AB_NAMESPACE \
    --userId 'SvOmuBvn0MliMrl4' \
    > test.out 2>&1
eval_tap $? 290 'AdminSyncSteamAbnormalTransaction' test.out

#- 291 AdminSyncSteamIAPByTransaction
samples/cli/sample-apps Platform adminSyncSteamIAPByTransaction \
    --namespace $AB_NAMESPACE \
    --userId 'KyIUfuU21Ht7ozX4' \
    --body '{"orderId": "lHO2STXTZy7o1IUR"}' \
    > test.out 2>&1
eval_tap $? 291 'AdminSyncSteamIAPByTransaction' test.out

#- 292 QueryUserThirdPartySubscription
samples/cli/sample-apps Platform queryUserThirdPartySubscription \
    --namespace $AB_NAMESPACE \
    --userId 'TN1FqdZOh36AN1qq' \
    --activeOnly 'true' \
    --groupId 'OaCAd7ZEjDPz6fHc' \
    --limit '37' \
    --offset '3' \
    --platform 'APPLE' \
    --productId 'QsljT8YpPIp3bEgL' \
    > test.out 2>&1
eval_tap $? 292 'QueryUserThirdPartySubscription' test.out

#- 293 GetThirdPartyPlatformSubscriptionOwnershipByGroupId
samples/cli/sample-apps Platform getThirdPartyPlatformSubscriptionOwnershipByGroupId \
    --namespace $AB_NAMESPACE \
    --platform 'STEAM' \
    --userId 'wyRUZV8gTGXpJIVl' \
    --groupId '6MjTgcF5mdNMIkmw' \
    > test.out 2>&1
eval_tap $? 293 'GetThirdPartyPlatformSubscriptionOwnershipByGroupId' test.out

#- 294 GetThirdPartyPlatformSubscriptionOwnershipByProductId
samples/cli/sample-apps Platform getThirdPartyPlatformSubscriptionOwnershipByProductId \
    --namespace $AB_NAMESPACE \
    --platform 'EPICGAMES' \
    --userId 'hHkgj3zGztaSaL2F' \
    --productId '5jfIlfdCOmNOOn5Y' \
    > test.out 2>&1
eval_tap $? 294 'GetThirdPartyPlatformSubscriptionOwnershipByProductId' test.out

#- 295 QueryUserThirdPartySubscriptionTransactions
samples/cli/sample-apps Platform queryUserThirdPartySubscriptionTransactions \
    --namespace $AB_NAMESPACE \
    --userId 'N3TdMocxYRuUapx8' \
    --activeOnly 'true' \
    --groupId 'nLi1r7kp2EAILw11' \
    --limit '47' \
    --offset '4' \
    --platform 'STADIA' \
    --productId '0F5J49qX5UKPFFsk' \
    > test.out 2>&1
eval_tap $? 295 'QueryUserThirdPartySubscriptionTransactions' test.out

#- 296 GetThirdPartySubscriptionDetails
samples/cli/sample-apps Platform getThirdPartySubscriptionDetails \
    --id '79SxY3PJRr4GNL2C' \
    --namespace $AB_NAMESPACE \
    --userId 'geC7IYVrmZg5HRtT' \
    > test.out 2>&1
eval_tap $? 296 'GetThirdPartySubscriptionDetails' test.out

#- 297 GetSubscriptionHistory
samples/cli/sample-apps Platform getSubscriptionHistory \
    --id 'nyK93sSWBnm1RQ9b' \
    --namespace $AB_NAMESPACE \
    --userId '4eXOQCZAFLCV9CEE' \
    --limit '7' \
    --offset '49' \
    > test.out 2>&1
eval_tap $? 297 'GetSubscriptionHistory' test.out

#- 298 SyncSubscriptionTransaction
samples/cli/sample-apps Platform syncSubscriptionTransaction \
    --id 'eqNnymI2v2I51Afo' \
    --namespace $AB_NAMESPACE \
    --userId 'OXrnBUe6grfonbfC' \
    > test.out 2>&1
eval_tap $? 298 'SyncSubscriptionTransaction' test.out

#- 299 GetThirdPartyUserSubscriptionDetails
samples/cli/sample-apps Platform getThirdPartyUserSubscriptionDetails \
    --id 'An4VQDSHrS9lIjuu' \
    --namespace $AB_NAMESPACE \
    --userId 'Jpdr23pzACXYiyAm' \
    > test.out 2>&1
eval_tap $? 299 'GetThirdPartyUserSubscriptionDetails' test.out

#- 300 SyncSubscription
samples/cli/sample-apps Platform syncSubscription \
    --id 'rnesG6dbMGkc9FHX' \
    --namespace $AB_NAMESPACE \
    --userId 'OqbyUpbKMQBcxRdo' \
    > test.out 2>&1
eval_tap $? 300 'SyncSubscription' test.out

#- 301 QueryUserOrders
samples/cli/sample-apps Platform queryUserOrders \
    --namespace $AB_NAMESPACE \
    --userId 'nPwDG6HqslNdvzr7' \
    --discounted 'false' \
    --itemId 'KXtFKOE2lHHclMTc' \
    --limit '30' \
    --offset '45' \
    --status 'REFUNDING' \
    > test.out 2>&1
eval_tap $? 301 'QueryUserOrders' test.out

#- 302 AdminCreateUserOrder
samples/cli/sample-apps Platform adminCreateUserOrder \
    --namespace $AB_NAMESPACE \
    --userId 'hQZLct8FiqDx5KXf' \
    --body '{"currencyCode": "TWYhEc8biCXGy4Ok", "currencyNamespace": "blL9VU6XNrBp2lKx", "discountCodes": ["UF7FadiK6c71VXmp", "9uVvJKtN4CsnU8vT", "Qkpxd5gxNSIq0FBp"], "discountedPrice": 31, "entitlementPlatform": "Steam", "ext": {"J3yTicfd8Hzi7hQS": {}, "gDDS7WcKqnGIVT5e": {}, "64pbR4cdco1xZlHy": {}}, "itemId": "GWWUTHCxfkZZaIxK", "language": "DVjosIdvFqadsJkY", "options": {"skipPriceValidation": true}, "platform": "GooglePlay", "price": 60, "quantity": 70, "region": "YqehDx3QjDiBviZd", "returnUrl": "jkKUxrpXc768lUAs", "sandbox": true, "sectionId": "x2JhI1D4GlM2YHir"}' \
    > test.out 2>&1
eval_tap $? 302 'AdminCreateUserOrder' test.out

#- 303 CountOfPurchasedItem
samples/cli/sample-apps Platform countOfPurchasedItem \
    --namespace $AB_NAMESPACE \
    --userId 'wxhgghxFvqKwIzqE' \
    --itemId 'LQBcO2y1tQd57i6d' \
    > test.out 2>&1
eval_tap $? 303 'CountOfPurchasedItem' test.out

#- 304 GetUserOrder
samples/cli/sample-apps Platform getUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'QLMBSYxxASOXUsBZ' \
    --userId 'B60DC7w61FdesH6d' \
    > test.out 2>&1
eval_tap $? 304 'GetUserOrder' test.out

#- 305 UpdateUserOrderStatus
samples/cli/sample-apps Platform updateUserOrderStatus \
    --namespace $AB_NAMESPACE \
    --orderNo 'ZpD1LV73Gw4Onfub' \
    --userId '7hkZTEE3xJoE7pl6' \
    --body '{"status": "REFUND_FAILED", "statusReason": "TEzwQvzI2KfXRuXy"}' \
    > test.out 2>&1
eval_tap $? 305 'UpdateUserOrderStatus' test.out

#- 306 FulfillUserOrder
samples/cli/sample-apps Platform fulfillUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'PdYJ92miSWT5b2VE' \
    --userId 'iue94GuK4l1f2VA1' \
    > test.out 2>&1
eval_tap $? 306 'FulfillUserOrder' test.out

#- 307 GetUserOrderGrant
eval_tap 0 307 'GetUserOrderGrant # SKIP deprecated' test.out

#- 308 GetUserOrderHistories
samples/cli/sample-apps Platform getUserOrderHistories \
    --namespace $AB_NAMESPACE \
    --orderNo 'BF8TaNbrLO7hQSza' \
    --userId 'NMGP7aHeXynmJON1' \
    > test.out 2>&1
eval_tap $? 308 'GetUserOrderHistories' test.out

#- 309 ProcessUserOrderNotification
samples/cli/sample-apps Platform processUserOrderNotification \
    --namespace $AB_NAMESPACE \
    --orderNo '1BQcethD8hZoBMuZ' \
    --userId 'wuwUmvs4XcBmwisp' \
    --body '{"additionalData": {"cardSummary": "j4CMb82EIO0UOapo"}, "authorisedTime": "1986-09-21T00:00:00Z", "chargebackReversedTime": "1988-12-11T00:00:00Z", "chargebackTime": "1971-06-02T00:00:00Z", "chargedTime": "1980-03-31T00:00:00Z", "createdTime": "1987-01-09T00:00:00Z", "currency": {"currencyCode": "u04EWs6KuDGimkT6", "currencySymbol": "MoC0o6EVUxzM88Aj", "currencyType": "VIRTUAL", "decimals": 2, "namespace": "d32J3D8ApZEJcFjR"}, "customParameters": {"IU5t9whhwsTIn8la": {}, "tzHfQNsnXsw1N0xc": {}, "LhFChpcRzV4sKyBR": {}}, "extOrderNo": "hEkpW8haZGrRhvp9", "extTxId": "8cIDE3w3n2IeZ1jE", "extUserId": "7xA2HeIYWouNfyfq", "issuedAt": "1972-01-25T00:00:00Z", "metadata": {"XCisqTrTInaypcth": "iUEt734ffNYUgtfu", "hRnqbU7OLqNVQrtn": "TsBPFNEw0p9tjRsO", "7YRDIXr7Y2PvARUp": "4nto5AkESgDfwCEG"}, "namespace": "XAgg3VCwTMo20OmP", "nonceStr": "i1ElCpne9Qfhyfe7", "paymentData": {"discountAmount": 37, "discountCode": "y4fQaaKjmiAD31hk", "subtotalPrice": 12, "tax": 64, "totalPrice": 86}, "paymentMethod": "Xy21UoLstfx93Hx8", "paymentMethodFee": 7, "paymentOrderNo": "MsEV0B0aAuzEkwXc", "paymentProvider": "NEONPAY", "paymentProviderFee": 26, "paymentStationUrl": "pQjXtkJbAxNcr1pC", "price": 97, "refundedTime": "1991-12-20T00:00:00Z", "salesTax": 19, "sandbox": true, "sku": "wK5T9wWxNeDTBUh1", "status": "REQUEST_FOR_INFORMATION", "statusReason": "L4CJLCEMssV2OZ2K", "subscriptionId": "tYDqSdehjmcrZYIV", "subtotalPrice": 40, "targetNamespace": "j8zMQXaZlPUU5iw0", "targetUserId": "cc9RrLbf4aiTpdcR", "tax": 97, "totalPrice": 76, "totalTax": 47, "txEndTime": "1987-07-19T00:00:00Z", "type": "6ZeQvmVLALbI0GYl", "userId": "581vQDw10cVy2qJw", "vat": 60}' \
    > test.out 2>&1
eval_tap $? 309 'ProcessUserOrderNotification' test.out

#- 310 DownloadUserOrderReceipt
samples/cli/sample-apps Platform downloadUserOrderReceipt \
    --namespace $AB_NAMESPACE \
    --orderNo 'z4AcWJfrG5fDIfTV' \
    --userId 'uq6lhuNPfCm2RGig' \
    > test.out 2>&1
eval_tap $? 310 'DownloadUserOrderReceipt' test.out

#- 311 CreateUserPaymentOrder
samples/cli/sample-apps Platform createUserPaymentOrder \
    --namespace $AB_NAMESPACE \
    --userId 'y3u3RooioUxPXPpA' \
    --body '{"currencyCode": "u8DVSma1mEm1av4h", "currencyNamespace": "axsnx58J4D5QNuZX", "customParameters": {"jXqVKwsYBSRnUNzZ": {}, "0k97xorDB8fxMbMy": {}, "Ayjg7au5KtSKSeuj": {}}, "description": "z4F5nrz2paKRCJsv", "extOrderNo": "fIr5W5O4NC3Bbmvf", "extUserId": "dCk4B40UrwLWFf4L", "itemType": "LOOTBOX", "language": "FD-YMOt-ms", "metadata": {"VwWqs5432Scq0tG4": "s0izYTvLGZoImF6e", "vTkyA0gPXt4M4Zuf": "eAUAvOH5H5bSubFG", "BvhH7mmXIki3bres": "NWJPSaKWXF2jWwxs"}, "notifyUrl": "ztHeuUoalcO8IQUu", "omitNotification": true, "platform": "mf6trGmO5HopkVyR", "price": 73, "recurringPaymentOrderNo": "1yjQP6sg2KQ7jb0C", "region": "y8CIRy1qMP58Dsbh", "returnUrl": "6RabfgkqnpqW7o8z", "sandbox": false, "sku": "WnxSXlB3OqG3f80l", "subscriptionId": "2th4ZCXconyDknCC", "title": "J6bN3uEO0RIv7y3T"}' \
    > test.out 2>&1
eval_tap $? 311 'CreateUserPaymentOrder' test.out

#- 312 RefundUserPaymentOrder
samples/cli/sample-apps Platform refundUserPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'xynquGesh8nL2c7b' \
    --userId 'tM0sg9a3c1QrhvEN' \
    --body '{"description": "6fQMf8dyTJCFZZGj"}' \
    > test.out 2>&1
eval_tap $? 312 'RefundUserPaymentOrder' test.out

#- 313 GetUserPlatformAccountClosureHistories
samples/cli/sample-apps Platform getUserPlatformAccountClosureHistories \
    --namespace $AB_NAMESPACE \
    --userId 'AfxXsJVCeTZbIPzu' \
    > test.out 2>&1
eval_tap $? 313 'GetUserPlatformAccountClosureHistories' test.out

#- 314 ApplyUserRedemption
samples/cli/sample-apps Platform applyUserRedemption \
    --namespace $AB_NAMESPACE \
    --userId 'KJfRAPrGuzSRZsM7' \
    --body '{"code": "XzaDrQgl7psNjOm1", "orderNo": "QnPyjiKftHtB061Q"}' \
    > test.out 2>&1
eval_tap $? 314 'ApplyUserRedemption' test.out

#- 315 DoRevocation
samples/cli/sample-apps Platform doRevocation \
    --namespace $AB_NAMESPACE \
    --userId 'ViLp3z7COsD7pJK3' \
    --body '{"meta": {"5oXOHjgrUvfY5LcG": {}, "fGZBjho3Ak5pNFzZ": {}, "bGm4SaDHhPBfcNUB": {}}, "reason": "F1H3U1guD2MQ0me8", "requestId": "3aiT0O8JaI7tC5ZD", "revokeEntries": [{"currency": {"balanceOrigin": "Playstation", "currencyCode": "JCMe50kygb5BFU8l", "namespace": "EJol3Ei3Ia5nZ7XR"}, "entitlement": {"entitlementId": "DO6rnDRcPLduFMnf"}, "item": {"entitlementOrigin": "Steam", "itemIdentity": "SNrC0bdqLvMNJjEt", "itemIdentityType": "ITEM_SKU", "origin": "GooglePlay"}, "quantity": 80, "type": "ENTITLEMENT"}, {"currency": {"balanceOrigin": "System", "currencyCode": "1H6CRPb1D0s2TQtn", "namespace": "iEpVqSonx4ZaUuJx"}, "entitlement": {"entitlementId": "TdMrHnnljj4RzfCv"}, "item": {"entitlementOrigin": "Playstation", "itemIdentity": "uK5rE3OcatDszLP3", "itemIdentityType": "ITEM_ID", "origin": "Twitch"}, "quantity": 25, "type": "ENTITLEMENT"}, {"currency": {"balanceOrigin": "Steam", "currencyCode": "ime1epfzYuzqwxH0", "namespace": "YrF8fMl2qrpclSiL"}, "entitlement": {"entitlementId": "avWspjQ1QgzWZb6U"}, "item": {"entitlementOrigin": "Xbox", "itemIdentity": "GKHMWiRfmxbt5mre", "itemIdentityType": "ITEM_SKU", "origin": "Playstation"}, "quantity": 88, "type": "ENTITLEMENT"}], "source": "DLC", "transactionId": "oCY5aAnjMu5WzMXY"}' \
    > test.out 2>&1
eval_tap $? 315 'DoRevocation' test.out

#- 316 RegisterXblSessions
samples/cli/sample-apps Platform registerXblSessions \
    --namespace $AB_NAMESPACE \
    --userId 'pi03kqubqLjM1bBE' \
    --body '{"gameSessionId": "LxNUnZpg54YK99sP", "payload": {"KgmMt94f1eLSllE8": {}, "xy1GBStIKioGDEVA": {}, "KXk2QgUUlEjUPUid": {}}, "scid": "qxl6yOkXL1unqs7I", "sessionTemplateName": "OfEMGkTeihzUB29H"}' \
    > test.out 2>&1
eval_tap $? 316 'RegisterXblSessions' test.out

#- 317 QueryUserSubscriptions
samples/cli/sample-apps Platform queryUserSubscriptions \
    --namespace $AB_NAMESPACE \
    --userId 'owQzj32BtfCFOQo3' \
    --chargeStatus 'CHARGED' \
    --itemId 'lK9yRg0NAHuHpwYy' \
    --limit '10' \
    --offset '65' \
    --sku 'MN2pRHqhOkr15TLc' \
    --status 'EXPIRED' \
    --subscribedBy 'USER' \
    > test.out 2>&1
eval_tap $? 317 'QueryUserSubscriptions' test.out

#- 318 GetUserSubscriptionActivities
samples/cli/sample-apps Platform getUserSubscriptionActivities \
    --namespace $AB_NAMESPACE \
    --userId 'C1UAa8RPz8qcgY5e' \
    --excludeSystem 'true' \
    --limit '9' \
    --offset '59' \
    --subscriptionId 'dIElPR8lXFVw1bxK' \
    > test.out 2>&1
eval_tap $? 318 'GetUserSubscriptionActivities' test.out

#- 319 PlatformSubscribeSubscription
samples/cli/sample-apps Platform platformSubscribeSubscription \
    --namespace $AB_NAMESPACE \
    --userId 'b4UPRNNCZSOC5ODW' \
    --body '{"grantDays": 44, "itemId": "wnMkKtsm8nzRWyVZ", "language": "qXxfWVhbX7PhaO3E", "reason": "KE1vR2zTv8ZowEUD", "region": "gUnBlkKyXcpofDHd", "source": "uasktWhHbRLA51QD"}' \
    > test.out 2>&1
eval_tap $? 319 'PlatformSubscribeSubscription' test.out

#- 320 CheckUserSubscriptionSubscribableByItemId
samples/cli/sample-apps Platform checkUserSubscriptionSubscribableByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'SBiBEg0HNT3vyDbR' \
    --itemId '6vxIe2rTK5XGUTmg' \
    > test.out 2>&1
eval_tap $? 320 'CheckUserSubscriptionSubscribableByItemId' test.out

#- 321 GetUserSubscription
samples/cli/sample-apps Platform getUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'FnDkj9ZcdUWBpdrh' \
    --userId 'gfJjgUBvDSXp5n30' \
    > test.out 2>&1
eval_tap $? 321 'GetUserSubscription' test.out

#- 322 DeleteUserSubscription
samples/cli/sample-apps Platform deleteUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'IwinRVjyrYTw5XXT' \
    --userId 'TFwhH86MrFuexBSg' \
    > test.out 2>&1
eval_tap $? 322 'DeleteUserSubscription' test.out

#- 323 CancelSubscription
samples/cli/sample-apps Platform cancelSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'G213B2syyf5Uc4My' \
    --userId 'sNjUu6bwtK735iKF' \
    --force 'false' \
    --body '{"immediate": false, "reason": "rtfLmfakjcFTK95I"}' \
    > test.out 2>&1
eval_tap $? 323 'CancelSubscription' test.out

#- 324 GrantDaysToSubscription
samples/cli/sample-apps Platform grantDaysToSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'MmCrpF1Vi3Wu4Jog' \
    --userId 'UR9vhnhz68UK2y1R' \
    --body '{"grantDays": 38, "reason": "PXnm1OzjE5ZyKdMm"}' \
    > test.out 2>&1
eval_tap $? 324 'GrantDaysToSubscription' test.out

#- 325 GetUserSubscriptionBillingHistories
samples/cli/sample-apps Platform getUserSubscriptionBillingHistories \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'IDilmUaWI9jL9n0X' \
    --userId 'yHdhFv4lq0vsJ1ix' \
    --excludeFree 'true' \
    --limit '56' \
    --offset '3' \
    > test.out 2>&1
eval_tap $? 325 'GetUserSubscriptionBillingHistories' test.out

#- 326 ProcessUserSubscriptionNotification
samples/cli/sample-apps Platform processUserSubscriptionNotification \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'H4EYr4aqlvSWS54w' \
    --userId 'jCUzUuVA8knsLeay' \
    --body '{"additionalData": {"cardSummary": "AVaCZm71Ot5VRIsa"}, "authorisedTime": "1973-11-11T00:00:00Z", "chargebackReversedTime": "1986-07-06T00:00:00Z", "chargebackTime": "1979-10-17T00:00:00Z", "chargedTime": "1991-05-03T00:00:00Z", "createdTime": "1980-06-03T00:00:00Z", "currency": {"currencyCode": "Sn6iMtCLeV16FZho", "currencySymbol": "5bTxfpXdgZSA8fpS", "currencyType": "REAL", "decimals": 11, "namespace": "tlq67xmbe0O1E9pZ"}, "customParameters": {"xGgQqNJdwbnLRqbU": {}, "CiqdyvtB5WYVrV18": {}, "dP5LvTioOaQlTjrx": {}}, "extOrderNo": "o3WzUtByougZGfEK", "extTxId": "3Yufpln8CEwSyoGe", "extUserId": "3imMRM3DUILDbDke", "issuedAt": "1981-07-30T00:00:00Z", "metadata": {"RWmFq97UlGY98CJw": "j5PykhUp0vW8uk04", "77eaMVFJlAVJvycI": "vfD0SE3pPAWdUr8i", "JJaHkmvue702nKdw": "riQTXKaM2aWbPHpl"}, "namespace": "Os5C1BIxuyRvkj3z", "nonceStr": "7AsNvEMTdMW4SmZq", "paymentData": {"discountAmount": 2, "discountCode": "HwKogxuhT48X7BPk", "subtotalPrice": 55, "tax": 62, "totalPrice": 6}, "paymentMethod": "QtxQSd2rDDTuqzSL", "paymentMethodFee": 80, "paymentOrderNo": "91CrNU89HxWv0yno", "paymentProvider": "NEONPAY", "paymentProviderFee": 26, "paymentStationUrl": "3VKWyfJh5ZWNuhNC", "price": 30, "refundedTime": "1974-08-14T00:00:00Z", "salesTax": 54, "sandbox": false, "sku": "PmPHxo4QchyKdMGa", "status": "NOTIFICATION_OF_CHARGEBACK", "statusReason": "fDc5q4fIeG0a91h6", "subscriptionId": "9Tv8cjtgMWRbhokW", "subtotalPrice": 74, "targetNamespace": "DOGaZ9yambKnNIV2", "targetUserId": "f5hEDQV1eoB20rch", "tax": 17, "totalPrice": 31, "totalTax": 24, "txEndTime": "1987-11-09T00:00:00Z", "type": "DJKyu4iZ1vFWOZWl", "userId": "u58Q2nHf0faiJ9uu", "vat": 50}' \
    > test.out 2>&1
eval_tap $? 326 'ProcessUserSubscriptionNotification' test.out

#- 327 AcquireUserTicket
samples/cli/sample-apps Platform acquireUserTicket \
    --boothName 'Y8dAD9nBrVlxncyK' \
    --namespace $AB_NAMESPACE \
    --userId 'hVm2YXQSv214NWM2' \
    --body '{"count": 63, "orderNo": "h8H1jNganEeDKsMT"}' \
    > test.out 2>&1
eval_tap $? 327 'AcquireUserTicket' test.out

#- 328 QueryUserCurrencyWallets
samples/cli/sample-apps Platform queryUserCurrencyWallets \
    --namespace $AB_NAMESPACE \
    --userId 'UoHcaijYhD0haTTu' \
    > test.out 2>&1
eval_tap $? 328 'QueryUserCurrencyWallets' test.out

#- 329 DebitUserWalletByCurrencyCode
samples/cli/sample-apps Platform debitUserWalletByCurrencyCode \
    --currencyCode 'oNgywDoKOjLxrAVY' \
    --namespace $AB_NAMESPACE \
    --userId '5Dhl5EQiTrbG4oBP' \
    --body '{"allowOverdraft": true, "amount": 23, "balanceOrigin": "IOS", "balanceSource": "OTHER", "metadata": {"j9wwgSZAHkJIgzBo": {}, "EN9EhLZbt97LetXz": {}, "oy4r3iR04ZI7b3mh": {}}, "reason": "3P9TayPyvID6yvSW"}' \
    > test.out 2>&1
eval_tap $? 329 'DebitUserWalletByCurrencyCode' test.out

#- 330 ListUserCurrencyTransactions
samples/cli/sample-apps Platform listUserCurrencyTransactions \
    --currencyCode 'eKF0Z2VYxjnoHuj2' \
    --namespace $AB_NAMESPACE \
    --userId 'NS1mxNRemBxQ3mJj' \
    --limit '40' \
    --offset '12' \
    > test.out 2>&1
eval_tap $? 330 'ListUserCurrencyTransactions' test.out

#- 331 CheckBalance
samples/cli/sample-apps Platform checkBalance \
    --currencyCode '1AcGi0rnDE6CCs3w' \
    --namespace $AB_NAMESPACE \
    --userId 'q2zFQGOLRwenOjJs' \
    --request '{"amount": 85, "debitBalanceSource": "EXPIRATION", "metadata": {"9Jis9h2dwpfQYEay": {}, "214rkOf9MNsA45tR": {}, "ALWW6O0AfV9WjSYm": {}}, "reason": "lEoQjq6txF4XLhnP", "walletPlatform": "GooglePlay"}' \
    > test.out 2>&1
eval_tap $? 331 'CheckBalance' test.out

#- 332 CheckWallet
eval_tap 0 332 'CheckWallet # SKIP deprecated' test.out

#- 333 CreditUserWallet
samples/cli/sample-apps Platform creditUserWallet \
    --currencyCode 'khYef9uPcaqfpkQH' \
    --namespace $AB_NAMESPACE \
    --userId 'Z9s8QVxSewrv8h6M' \
    --body '{"amount": 23, "expireAt": "1983-10-11T00:00:00Z", "metadata": {"XzLheFlzeUtA3iCa": {}, "cWz7lciO8jFhgieV": {}, "x8kg5Vj6FdX7aqBK": {}}, "origin": "GooglePlay", "reason": "IpQC6pWhbm8bnWbg", "source": "TRADE"}' \
    > test.out 2>&1
eval_tap $? 333 'CreditUserWallet' test.out

#- 334 DebitByWalletPlatform
samples/cli/sample-apps Platform debitByWalletPlatform \
    --currencyCode 'BmmSdYfObkILXOMi' \
    --namespace $AB_NAMESPACE \
    --userId 'qg3ubcAcO36afOQr' \
    --request '{"amount": 3, "debitBalanceSource": "DLC_REVOCATION", "metadata": {"wlIVEgQsvWikqFww": {}, "pSBPNCEafLbn0WfV": {}, "O2lVB2ulTUStOzPY": {}}, "reason": "zlcHPlibMg2qtjK4", "walletPlatform": "Playstation"}' \
    > test.out 2>&1
eval_tap $? 334 'DebitByWalletPlatform' test.out

#- 335 PayWithUserWallet
samples/cli/sample-apps Platform payWithUserWallet \
    --currencyCode 'm23ocfwelSvAsZ9Q' \
    --namespace $AB_NAMESPACE \
    --userId 'vrAEVFDdE9k2LHSC' \
    --body '{"amount": 68, "metadata": {"HzCxT7fkUZ4VHiQI": {}, "NP1fJtOskV0sihCv": {}, "lnVPrpwaKR2KArr3": {}}, "walletPlatform": "IOS"}' \
    > test.out 2>&1
eval_tap $? 335 'PayWithUserWallet' test.out

#- 336 GetUserWallet
eval_tap 0 336 'GetUserWallet # SKIP deprecated' test.out

#- 337 DebitUserWallet
eval_tap 0 337 'DebitUserWallet # SKIP deprecated' test.out

#- 338 DisableUserWallet
eval_tap 0 338 'DisableUserWallet # SKIP deprecated' test.out

#- 339 EnableUserWallet
eval_tap 0 339 'EnableUserWallet # SKIP deprecated' test.out

#- 340 ListUserWalletTransactions
eval_tap 0 340 'ListUserWalletTransactions # SKIP deprecated' test.out

#- 341 ListViews
samples/cli/sample-apps Platform listViews \
    --namespace $AB_NAMESPACE \
    --storeId 'H89GxScteIpy6xRX' \
    > test.out 2>&1
eval_tap $? 341 'ListViews' test.out

#- 342 CreateView
samples/cli/sample-apps Platform createView \
    --namespace $AB_NAMESPACE \
    --storeId 'Xut3PWa88yZB1nIg' \
    --body '{"displayOrder": 3, "localizations": {"tMpHfIUpFgWzEGwh": {"description": "50YZRPQrvDSmL2Ay", "localExt": {"L6l5zgsyzsXuNXzQ": {}, "WGDIZjkgC9or3Htc": {}, "88MfXzu9mszfmcZY": {}}, "longDescription": "8wclEEtTZ0dQN84t", "title": "b0dBfA6BLDJUQX7J"}, "KuWVVhSa0iILtLfO": {"description": "ieqrhYSAZ2KYNa3y", "localExt": {"tf63aONXzGTWrMLi": {}, "XNvuK2f092fdGDdN": {}, "46bGhIQSsv2sOV8U": {}}, "longDescription": "CT7A1z4AfVaKHfod", "title": "Jqk2VBwtkceJte5t"}, "0Xg4MAmTsrl858ou": {"description": "xIHHi0JAIMRexUNQ", "localExt": {"O62SVh49fY9F4gvg": {}, "fareg2Gpy0sarWW6": {}, "4IXGp6bXhc6CS2rc": {}}, "longDescription": "mXlHkK4vhCAWD5Pj", "title": "KdXVuCOnsvSQAQld"}}, "name": "1CdQpIPn6CobdrqP"}' \
    > test.out 2>&1
eval_tap $? 342 'CreateView' test.out

#- 343 GetView
samples/cli/sample-apps Platform getView \
    --namespace $AB_NAMESPACE \
    --viewId 'tyooS1GB2YvIdZXh' \
    --storeId 'i2ZbmLtrOYaffRiJ' \
    > test.out 2>&1
eval_tap $? 343 'GetView' test.out

#- 344 UpdateView
samples/cli/sample-apps Platform updateView \
    --namespace $AB_NAMESPACE \
    --viewId 'mEMcSx6R8kAPR3jl' \
    --storeId 'sZzriCAkj2gFzlvF' \
    --body '{"displayOrder": 51, "localizations": {"KDwv2pYKLwRwELW5": {"description": "7Jbs1MD8VLK3pYTq", "localExt": {"QiWqsYoG1iYVwWmr": {}, "jlkyO44gun4a0p48": {}, "ueAGvSCXFJz7KdYX": {}}, "longDescription": "Wn3RwfRtxPSL2Jln", "title": "IjOJhNgogkUIhN48"}, "2pMnpHvyjlTttqjT": {"description": "UHBlnprpJPcPxlyf", "localExt": {"C5O8BLht7Z3iXU0O": {}, "Lx7V49zrLRkOnQE5": {}, "A0TuINkV975jHlw7": {}}, "longDescription": "TzjWPoTRqFaPLEJJ", "title": "DMLcdHMaKXYIFfzR"}, "3j3g1W3QJQicHZfL": {"description": "6PrvMHtgpfxHPMoc", "localExt": {"Zbz1TAi8o052csds": {}, "2gZf6UCZXmYAhzyg": {}, "Wo3V6oI1fxyWh8cx": {}}, "longDescription": "EGlOoK3iWtWGVVYL", "title": "HLkIlleaLjsvrq47"}}, "name": "qNRAQM7qosSiC01b"}' \
    > test.out 2>&1
eval_tap $? 344 'UpdateView' test.out

#- 345 DeleteView
samples/cli/sample-apps Platform deleteView \
    --namespace $AB_NAMESPACE \
    --viewId 'FxhWRESpRB5Alqcl' \
    --storeId 'c9rfz0umuO5SdfQP' \
    > test.out 2>&1
eval_tap $? 345 'DeleteView' test.out

#- 346 GetWalletConfig
samples/cli/sample-apps Platform getWalletConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 346 'GetWalletConfig' test.out

#- 347 UpdateWalletConfig
samples/cli/sample-apps Platform updateWalletConfig \
    --namespace $AB_NAMESPACE \
    --body '{"enablePaidForVCExpiration": false}' \
    > test.out 2>&1
eval_tap $? 347 'UpdateWalletConfig' test.out

#- 348 QueryWallets
eval_tap 0 348 'QueryWallets # SKIP deprecated' test.out

#- 349 BulkCredit
samples/cli/sample-apps Platform bulkCredit \
    --namespace $AB_NAMESPACE \
    --body '[{"creditRequest": {"amount": 52, "expireAt": "1979-08-08T00:00:00Z", "metadata": {"rXfWG4u8HRXE7Enc": {}, "TYuOHP7hnzV10Bws": {}, "B4YdFC4YUWmKkt3d": {}}, "origin": "Oculus", "reason": "pW6Radh39tbqobRo", "source": "OTHER"}, "currencyCode": "jENHK1vz7YXEFAZI", "userIds": ["ugPUUCMYMBI59Svd", "7Xxkvp55MLAExi0x", "Mvlf443cWGvJw5L8"]}, {"creditRequest": {"amount": 89, "expireAt": "1981-10-15T00:00:00Z", "metadata": {"J3G9uPMPFk31Wxwv": {}, "v2T91Rq5a6bjygpE": {}, "RqVRjfT8eWINQJxw": {}}, "origin": "Twitch", "reason": "OCKItr7cuiLq5ODD", "source": "TRADE"}, "currencyCode": "KrXPWPcegAGBvjEB", "userIds": ["bW1LeHtUwh4TJngC", "dGm2N8Z0S6LplMhp", "wxRSAB40T3HYEnmK"]}, {"creditRequest": {"amount": 31, "expireAt": "1989-06-18T00:00:00Z", "metadata": {"NtWj7LWmhAruHS35": {}, "nyJtwJh8UMPUJ1Ft": {}, "nM6QmNN5ZZqOLPWT": {}}, "origin": "Nintendo", "reason": "9J51x7gfSC7Xbj6C", "source": "REFERRAL_BONUS"}, "currencyCode": "HiywJhsDjzpUV1EV", "userIds": ["POzpKd6qcCcFmtGT", "NevB9akaUE8Gfw2c", "RuTurAcriOjJBIKd"]}]' \
    > test.out 2>&1
eval_tap $? 349 'BulkCredit' test.out

#- 350 BulkDebit
samples/cli/sample-apps Platform bulkDebit \
    --namespace $AB_NAMESPACE \
    --body '[{"currencyCode": "MJnZYGQl2JjOnArv", "request": {"allowOverdraft": false, "amount": 20, "balanceOrigin": "Xbox", "balanceSource": "TRADE", "metadata": {"DA1X2hp1vD0tvZte": {}, "TCNM7E0nIb6iUmDg": {}, "fL5WE7PWNATLQoJ9": {}}, "reason": "5824jRAAQNDklEgm"}, "userIds": ["3fJSWL6EmjkTOo8a", "H1UvtQrx4OCZozLt", "TLnmgg7LZcbw17sy"]}, {"currencyCode": "GfK98S4FtVeQzFep", "request": {"allowOverdraft": true, "amount": 71, "balanceOrigin": "Nintendo", "balanceSource": "OTHER", "metadata": {"oqsNVh1qpDVdX1XJ": {}, "kwZmZgB1XLy2gYAg": {}, "8PRexm7hMl5dkLzj": {}}, "reason": "inP1vMk55R4sLYxT"}, "userIds": ["h2WqAX07zKhTUxjd", "QxhS5dQxOwrfm2Qo", "mYKw686ZBGAKr7EH"]}, {"currencyCode": "zydQcvOCLGaeFWKo", "request": {"allowOverdraft": true, "amount": 6, "balanceOrigin": "GooglePlay", "balanceSource": "IAP_REVOCATION", "metadata": {"wepZNeMTPpCiLLDM": {}, "oy5qfiXuwUBsWGsB": {}, "Agks25EOtV6z9F06": {}}, "reason": "LDTXUIdxTEjmHSCx"}, "userIds": ["qBfZ9XzNLngx3mNR", "cI8TEBY2VxvIgtis", "HPVJjrpaqiwEMpOP"]}]' \
    > test.out 2>&1
eval_tap $? 350 'BulkDebit' test.out

#- 351 GetWallet
eval_tap 0 351 'GetWallet # SKIP deprecated' test.out

#- 352 SyncOrders
samples/cli/sample-apps Platform syncOrders \
    --nextEvaluatedKey 'zE688aSzJcg7Oy4Z' \
    --end 'UBDGVeaHXtr3WU6z' \
    --start 'fINb9QV43SpHX4Is' \
    > test.out 2>&1
eval_tap $? 352 'SyncOrders' test.out

#- 353 TestAdyenConfig
samples/cli/sample-apps Platform testAdyenConfig \
    --sandbox 'false' \
    --body '{"allowedPaymentMethods": ["YKvw9MTavtoFUwnZ", "a3bpv8uWUIpQ1y4x", "KOayllbAAYmKWXjV"], "apiKey": "BWNTg2quvfsL4dEz", "authoriseAsCapture": false, "blockedPaymentMethods": ["4UWnsegoEeFfkyP8", "P55QWM5qFAK90GEz", "tSCUkMuDkbl8nObK"], "clientKey": "WymNlNb8IpKlMzMU", "dropInSettings": "g35gTPqnAGupG1zq", "liveEndpointUrlPrefix": "xFXFa0c9Ot81dM9H", "merchantAccount": "7eKvocVaoGasvN22", "notificationHmacKey": "ZdoaeI7gGL14uMi5", "notificationPassword": "Dsh2UxdVZ5LJqmIG", "notificationUsername": "yVvZG9tMpIVdd6pE", "returnUrl": "5AJBDvcSBoKx19B6", "settings": "9kl0C0TF1rEyVc2S"}' \
    > test.out 2>&1
eval_tap $? 353 'TestAdyenConfig' test.out

#- 354 TestAliPayConfig
samples/cli/sample-apps Platform testAliPayConfig \
    --sandbox 'true' \
    --body '{"appId": "VSuWe8Jnjhx7u4QS", "privateKey": "j5MSEXucK4eoCM01", "publicKey": "27NZY5Z6KVPrbhHY", "returnUrl": "itLv7fkXZDf1b7JN"}' \
    > test.out 2>&1
eval_tap $? 354 'TestAliPayConfig' test.out

#- 355 TestCheckoutConfig
samples/cli/sample-apps Platform testCheckoutConfig \
    --sandbox 'false' \
    --body '{"publicKey": "DFASpsvm5G2BWoTj", "secretKey": "b1Xd6xLTXm3n9ZPx"}' \
    > test.out 2>&1
eval_tap $? 355 'TestCheckoutConfig' test.out

#- 356 DebugMatchedPaymentMerchantConfig
samples/cli/sample-apps Platform debugMatchedPaymentMerchantConfig \
    --namespace 'Ak0MeyCwbTkRohen' \
    --region 'qE8Hm6Mej7Fwklfx' \
    > test.out 2>&1
eval_tap $? 356 'DebugMatchedPaymentMerchantConfig' test.out

#- 357 TestNeonPayConfig
samples/cli/sample-apps Platform testNeonPayConfig \
    --sandbox 'false' \
    --body '{"apiKey": "BpdGgIRxNCdxH5K9", "webhookSecretKey": "SkvKkZTz1PBdIqfL"}' \
    > test.out 2>&1
eval_tap $? 357 'TestNeonPayConfig' test.out

#- 358 TestPayPalConfig
samples/cli/sample-apps Platform testPayPalConfig \
    --sandbox 'false' \
    --body '{"clientID": "3gkLgzkmdiYrpo7C", "clientSecret": "TH3qdM11qddn9vyO", "returnUrl": "hiYBdA1HCjRxdmmK", "webHookId": "r86hRcDhvvPUntSP"}' \
    > test.out 2>&1
eval_tap $? 358 'TestPayPalConfig' test.out

#- 359 TestStripeConfig
samples/cli/sample-apps Platform testStripeConfig \
    --sandbox 'false' \
    --body '{"allowedPaymentMethodTypes": ["UBKdT6MonhtuL4vE", "0Le8IDj9kX09R2Iq", "EQSAeeHssWbUdPLt"], "publishableKey": "hY2eHg2cQ2kQi7wb", "secretKey": "njdPvKETVePPA2lA", "webhookSecret": "0JXmu9s0pF1rXet2"}' \
    > test.out 2>&1
eval_tap $? 359 'TestStripeConfig' test.out

#- 360 TestWxPayConfig
samples/cli/sample-apps Platform testWxPayConfig \
    --body '{"appId": "X8CJakplsL6DsZRT", "key": "P6gjEWh0yPveeQNa", "mchid": "oWyVDOx80SF9daqm", "returnUrl": "DjmcMkOxuan5rcdL"}' \
    > test.out 2>&1
eval_tap $? 360 'TestWxPayConfig' test.out

#- 361 TestXsollaConfig
samples/cli/sample-apps Platform testXsollaConfig \
    --body '{"apiKey": "0oY2cmoBfXztVPbw", "flowCompletionUrl": "ZEvmygQTQvmDqkEb", "merchantId": 64, "projectId": 68, "projectSecretKey": "OgClrg1HHDphfAjS"}' \
    > test.out 2>&1
eval_tap $? 361 'TestXsollaConfig' test.out

#- 362 GetPaymentMerchantConfig1
samples/cli/sample-apps Platform getPaymentMerchantConfig1 \
    --id 'RFYDON7cwYYvQNAm' \
    > test.out 2>&1
eval_tap $? 362 'GetPaymentMerchantConfig1' test.out

#- 363 UpdateAdyenConfig
samples/cli/sample-apps Platform updateAdyenConfig \
    --id 'z4gaVvMQzskSewdr' \
    --sandbox 'true' \
    --validate 'true' \
    --body '{"allowedPaymentMethods": ["pOpEUfRzOFKYpW5N", "8q6lwol2frxIXGT5", "v9HZr8njbGV9jkWG"], "apiKey": "iXg5BJlPcCpyc519", "authoriseAsCapture": false, "blockedPaymentMethods": ["etFVPlTug4NMlTz9", "zWKqNfNdXS8iXukl", "kRdYpidcgfdesrLp"], "clientKey": "eVoh3Do4PaAf59Wk", "dropInSettings": "v1L8pbbQssffuXDt", "liveEndpointUrlPrefix": "fOviA4YAbG4M24ut", "merchantAccount": "0N3vr2b1W9NwgnV6", "notificationHmacKey": "ozInEsZ6RPy07B5t", "notificationPassword": "cEgk4SK28Ll79Chh", "notificationUsername": "bauhc59p4I9cL2u0", "returnUrl": "fkhcfnAfaKvZz7se", "settings": "NhTrPLSPDujt0NRR"}' \
    > test.out 2>&1
eval_tap $? 363 'UpdateAdyenConfig' test.out

#- 364 TestAdyenConfigById
samples/cli/sample-apps Platform testAdyenConfigById \
    --id 'nYF2t1paQNwoxt4S' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 364 'TestAdyenConfigById' test.out

#- 365 UpdateAliPayConfig
samples/cli/sample-apps Platform updateAliPayConfig \
    --id 'r383Kdx8fuUukNyG' \
    --sandbox 'false' \
    --validate 'false' \
    --body '{"appId": "SCeXHe9qd9IN5jp5", "privateKey": "y4hKoCZk1kM2QSwZ", "publicKey": "NT2ec3RZL0w3OpFf", "returnUrl": "gvOtFfD96qjRXncv"}' \
    > test.out 2>&1
eval_tap $? 365 'UpdateAliPayConfig' test.out

#- 366 TestAliPayConfigById
samples/cli/sample-apps Platform testAliPayConfigById \
    --id 'WXGa6b8Far2w6jB5' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 366 'TestAliPayConfigById' test.out

#- 367 UpdateCheckoutConfig
samples/cli/sample-apps Platform updateCheckoutConfig \
    --id 'ZUzd49LBze84GwQl' \
    --sandbox 'false' \
    --validate 'true' \
    --body '{"publicKey": "qGMvaeWaCMxsBYYb", "secretKey": "LcTF1IRhe52YAHur"}' \
    > test.out 2>&1
eval_tap $? 367 'UpdateCheckoutConfig' test.out

#- 368 TestCheckoutConfigById
samples/cli/sample-apps Platform testCheckoutConfigById \
    --id 'ukh3FlgpoWmxDVPe' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 368 'TestCheckoutConfigById' test.out

#- 369 UpdateNeonPayConfig
samples/cli/sample-apps Platform updateNeonPayConfig \
    --id 'EzNGED4wsIxpsjZ5' \
    --sandbox 'false' \
    --validate 'false' \
    --body '{"apiKey": "PkpFaW3WNhVtDX7a", "webhookSecretKey": "cm2pERDG9QommeQR"}' \
    > test.out 2>&1
eval_tap $? 369 'UpdateNeonPayConfig' test.out

#- 370 TestNeonPayConfigById
samples/cli/sample-apps Platform testNeonPayConfigById \
    --id 'xtp8TQakHttZulcL' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 370 'TestNeonPayConfigById' test.out

#- 371 UpdatePayPalConfig
samples/cli/sample-apps Platform updatePayPalConfig \
    --id 'Qunl6ilmThejydMy' \
    --sandbox 'true' \
    --validate 'false' \
    --body '{"clientID": "jmtz0EF54VtkSpt0", "clientSecret": "JIuJW3ZNfHZQYPHY", "returnUrl": "fZsG586P4xsHlyA4", "webHookId": "ebMCodsUG4zvOojp"}' \
    > test.out 2>&1
eval_tap $? 371 'UpdatePayPalConfig' test.out

#- 372 TestPayPalConfigById
samples/cli/sample-apps Platform testPayPalConfigById \
    --id '1mEu46AK69un1y2K' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 372 'TestPayPalConfigById' test.out

#- 373 UpdateStripeConfig
samples/cli/sample-apps Platform updateStripeConfig \
    --id 'misiIDsGcXExA1qL' \
    --sandbox 'false' \
    --validate 'false' \
    --body '{"allowedPaymentMethodTypes": ["GweUsN6ufNbgwcsO", "MltVKxCVygM4esKg", "VzxkwhDNCMGydncK"], "publishableKey": "LoChtTlAUtruFUlG", "secretKey": "SltM7IIkToAXFY5C", "webhookSecret": "1shWIeU8Apx9sBMT"}' \
    > test.out 2>&1
eval_tap $? 373 'UpdateStripeConfig' test.out

#- 374 TestStripeConfigById
samples/cli/sample-apps Platform testStripeConfigById \
    --id 'SuaL7ZM0POuVZ0eT' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 374 'TestStripeConfigById' test.out

#- 375 UpdateWxPayConfig
samples/cli/sample-apps Platform updateWxPayConfig \
    --id 'gvoQ9y4O6N9VqLbb' \
    --validate 'false' \
    --body '{"appId": "10oX0RojO2VDr7ND", "key": "h1LN3owBXKW2hE6H", "mchid": "UmQJTmVo98lsovfT", "returnUrl": "jk804RwvX0vQqnKV"}' \
    > test.out 2>&1
eval_tap $? 375 'UpdateWxPayConfig' test.out

#- 376 UpdateWxPayConfigCert
samples/cli/sample-apps Platform updateWxPayConfigCert \
    --id '59kTpttgViM8YFg1' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 376 'UpdateWxPayConfigCert' test.out

#- 377 TestWxPayConfigById
samples/cli/sample-apps Platform testWxPayConfigById \
    --id 'ypUD7oo8jYX4jMZh' \
    > test.out 2>&1
eval_tap $? 377 'TestWxPayConfigById' test.out

#- 378 UpdateXsollaConfig
samples/cli/sample-apps Platform updateXsollaConfig \
    --id 'ostU3QWT0BS2ZkzG' \
    --validate 'false' \
    --body '{"apiKey": "s9CkmvjUgLWiKm0S", "flowCompletionUrl": "AJUfiL5l2otYbe1G", "merchantId": 95, "projectId": 98, "projectSecretKey": "DCG6OFIclZ5BSA5z"}' \
    > test.out 2>&1
eval_tap $? 378 'UpdateXsollaConfig' test.out

#- 379 TestXsollaConfigById
samples/cli/sample-apps Platform testXsollaConfigById \
    --id 'TqPRkUa1mTYglfHm' \
    > test.out 2>&1
eval_tap $? 379 'TestXsollaConfigById' test.out

#- 380 UpdateXsollaUIConfig
samples/cli/sample-apps Platform updateXsollaUIConfig \
    --id 'qRAv1qWViEPXECBU' \
    --body '{"device": "MOBILE", "showCloseButton": true, "size": "SMALL", "theme": "DEFAULT_DARK"}' \
    > test.out 2>&1
eval_tap $? 380 'UpdateXsollaUIConfig' test.out

#- 381 QueryPaymentProviderConfig
samples/cli/sample-apps Platform queryPaymentProviderConfig \
    --limit '14' \
    --namespace 'DD2cYc47TZSLFOw9' \
    --offset '46' \
    --region 'qRfccYovF6wRBtFm' \
    > test.out 2>&1
eval_tap $? 381 'QueryPaymentProviderConfig' test.out

#- 382 CreatePaymentProviderConfig
samples/cli/sample-apps Platform createPaymentProviderConfig \
    --body '{"aggregate": "CHECKOUT", "namespace": "EVPtcL1jzsErx7ut", "region": "JpeVNSVtCmjYA9xr", "sandboxTaxJarApiToken": "QS4H8wZT2P3h9WuU", "specials": ["STRIPE", "WALLET", "PAYPAL"], "taxJarApiToken": "JaIAAkRYdahoiFiH", "taxJarEnabled": false, "useGlobalTaxJarApiToken": true}' \
    > test.out 2>&1
eval_tap $? 382 'CreatePaymentProviderConfig' test.out

#- 383 GetAggregatePaymentProviders
samples/cli/sample-apps Platform getAggregatePaymentProviders \
    > test.out 2>&1
eval_tap $? 383 'GetAggregatePaymentProviders' test.out

#- 384 DebugMatchedPaymentProviderConfig
samples/cli/sample-apps Platform debugMatchedPaymentProviderConfig \
    --namespace 'xkud8uIDVOcs4tGE' \
    --region 'TNEuISEx1ZUYzxGJ' \
    > test.out 2>&1
eval_tap $? 384 'DebugMatchedPaymentProviderConfig' test.out

#- 385 GetSpecialPaymentProviders
samples/cli/sample-apps Platform getSpecialPaymentProviders \
    > test.out 2>&1
eval_tap $? 385 'GetSpecialPaymentProviders' test.out

#- 386 UpdatePaymentProviderConfig
samples/cli/sample-apps Platform updatePaymentProviderConfig \
    --id '34G87L4bXxIaIMJh' \
    --body '{"aggregate": "ADYEN", "namespace": "wuQ5ctSWTjnrVxJY", "region": "4ZTE05SOEFZyCLBo", "sandboxTaxJarApiToken": "5OdyJ0wxcISy0fD4", "specials": ["STRIPE", "CHECKOUT", "WXPAY"], "taxJarApiToken": "u4deeJhEuDNNRL2t", "taxJarEnabled": true, "useGlobalTaxJarApiToken": true}' \
    > test.out 2>&1
eval_tap $? 386 'UpdatePaymentProviderConfig' test.out

#- 387 DeletePaymentProviderConfig
samples/cli/sample-apps Platform deletePaymentProviderConfig \
    --id 'lRDWUdr9iBzcuPH2' \
    > test.out 2>&1
eval_tap $? 387 'DeletePaymentProviderConfig' test.out

#- 388 GetPaymentTaxConfig
samples/cli/sample-apps Platform getPaymentTaxConfig \
    > test.out 2>&1
eval_tap $? 388 'GetPaymentTaxConfig' test.out

#- 389 UpdatePaymentTaxConfig
samples/cli/sample-apps Platform updatePaymentTaxConfig \
    --body '{"sandboxTaxJarApiToken": "upXf71SBe7EBgl1n", "taxJarApiToken": "WdHFpHgvcz2dQqTF", "taxJarEnabled": false, "taxJarProductCodesMapping": {"uGTXQUdmjuCmlHOL": "YBkPTbUcx2pi6D0H", "M4CKqG90Sr9oQsuy": "2VRuLr21Csc9lNDb", "Kb1nFzgvIbHkxyni": "SlMupa4ZVVpneFPB"}}' \
    > test.out 2>&1
eval_tap $? 389 'UpdatePaymentTaxConfig' test.out

#- 390 SyncPaymentOrders
samples/cli/sample-apps Platform syncPaymentOrders \
    --nextEvaluatedKey 'nFhegKoKbDQ1BZvD' \
    --end 'udigGg8kruYBw3VA' \
    --start 'vMGHwSgaKJQ1Go8X' \
    > test.out 2>&1
eval_tap $? 390 'SyncPaymentOrders' test.out

#- 391 PublicGetRootCategories
samples/cli/sample-apps Platform publicGetRootCategories \
    --namespace $AB_NAMESPACE \
    --language 'O6XuQLbI4keIP8I7' \
    --storeId 'kjclUy5qIwcRhG59' \
    > test.out 2>&1
eval_tap $? 391 'PublicGetRootCategories' test.out

#- 392 DownloadCategories
samples/cli/sample-apps Platform downloadCategories \
    --namespace $AB_NAMESPACE \
    --language '02LPopzVls7DAATj' \
    --storeId 'CSX9du1rc8Lm7691' \
    > test.out 2>&1
eval_tap $? 392 'DownloadCategories' test.out

#- 393 PublicGetCategory
samples/cli/sample-apps Platform publicGetCategory \
    --categoryPath 'CxPvxtm2oatpxRQj' \
    --namespace $AB_NAMESPACE \
    --language 'nkPFgADkmQ83ICK1' \
    --storeId 'GFBxxrHk4mkgfmQz' \
    > test.out 2>&1
eval_tap $? 393 'PublicGetCategory' test.out

#- 394 PublicGetChildCategories
samples/cli/sample-apps Platform publicGetChildCategories \
    --categoryPath 'P2WNpQZqYXF3IbKR' \
    --namespace $AB_NAMESPACE \
    --language 'hzX4O1SvAmaalNTN' \
    --storeId 'EaeLrdKPWdXA7yWI' \
    > test.out 2>&1
eval_tap $? 394 'PublicGetChildCategories' test.out

#- 395 PublicGetDescendantCategories
samples/cli/sample-apps Platform publicGetDescendantCategories \
    --categoryPath 'AwpyV4WB51YyQJ5N' \
    --namespace $AB_NAMESPACE \
    --language 'MsEUl9xiu6ITOn9A' \
    --storeId 'CUkt29KCIDaixDDA' \
    > test.out 2>&1
eval_tap $? 395 'PublicGetDescendantCategories' test.out

#- 396 PublicListCurrencies
samples/cli/sample-apps Platform publicListCurrencies \
    --namespace $AB_NAMESPACE \
    --currencyType 'VIRTUAL' \
    > test.out 2>&1
eval_tap $? 396 'PublicListCurrencies' test.out

#- 397 GeDLCDurableRewardShortMap
samples/cli/sample-apps Platform geDLCDurableRewardShortMap \
    --namespace $AB_NAMESPACE \
    --dlcType 'EPICGAMES' \
    > test.out 2>&1
eval_tap $? 397 'GeDLCDurableRewardShortMap' test.out

#- 398 GetAppleConfigVersion
samples/cli/sample-apps Platform getAppleConfigVersion \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 398 'GetAppleConfigVersion' test.out

#- 399 GetIAPItemMapping
samples/cli/sample-apps Platform getIAPItemMapping \
    --namespace $AB_NAMESPACE \
    --platform 'EPICGAMES' \
    > test.out 2>&1
eval_tap $? 399 'GetIAPItemMapping' test.out

#- 400 PublicGetItemByAppId
samples/cli/sample-apps Platform publicGetItemByAppId \
    --namespace $AB_NAMESPACE \
    --language 'iottZaU5raiMpODJ' \
    --region 'NdM0nfqu4ACusohY' \
    --storeId '8BZ4mDzUrvXV4flh' \
    --appId 'MfuU5RWjXQC3Kn1R' \
    > test.out 2>&1
eval_tap $? 400 'PublicGetItemByAppId' test.out

#- 401 PublicQueryItems
samples/cli/sample-apps Platform publicQueryItems \
    --namespace $AB_NAMESPACE \
    --appType 'GAME' \
    --autoCalcEstimatedPrice 'true' \
    --baseAppId 'ONCFUAo5IbO9zeL8' \
    --categoryPath 'SbDNGC1IXKeOMEkB' \
    --features 'd75ZBStOQ3dY6HaV' \
    --includeSubCategoryItem 'true' \
    --itemType 'MEDIA' \
    --language '6IwwoS9kGoQeOFZt' \
    --limit '9' \
    --offset '87' \
    --region 'MT43MQb7D6T4k5ZI' \
    --sortBy '["updatedAt", "displayOrder:asc", "name"]' \
    --storeId 'IOHuYx2hErHlEcsM' \
    --tags '174ak5NsZXV0901G' \
    > test.out 2>&1
eval_tap $? 401 'PublicQueryItems' test.out

#- 402 PublicGetItemBySku
samples/cli/sample-apps Platform publicGetItemBySku \
    --namespace $AB_NAMESPACE \
    --autoCalcEstimatedPrice 'true' \
    --language 'SF5ITNNvgXfdeiT2' \
    --region 'CS0tI0ZIkWo00FtY' \
    --storeId 'gi17lLmjqXOAMj35' \
    --sku 'p2gCm9wgUUictXFF' \
    > test.out 2>&1
eval_tap $? 402 'PublicGetItemBySku' test.out

#- 403 PublicGetEstimatedPrice
samples/cli/sample-apps Platform publicGetEstimatedPrice \
    --namespace $AB_NAMESPACE \
    --region 'SlLgy3w9LPd0uwxh' \
    --storeId 'JejjwgbmgBm42aUj' \
    --itemIds '6lPYFYQuv463Tbhs' \
    > test.out 2>&1
eval_tap $? 403 'PublicGetEstimatedPrice' test.out

#- 404 PublicBulkGetItems
samples/cli/sample-apps Platform publicBulkGetItems \
    --namespace $AB_NAMESPACE \
    --autoCalcEstimatedPrice 'false' \
    --language '5i1ksay8DAbitbYS' \
    --region 'afQDVbFxn6Zby2Gp' \
    --storeId 'Re7zeaXtcbpjlGEl' \
    --itemIds 'eHjZfdwymanV9jAa' \
    > test.out 2>&1
eval_tap $? 404 'PublicBulkGetItems' test.out

#- 405 PublicValidateItemPurchaseCondition
samples/cli/sample-apps Platform publicValidateItemPurchaseCondition \
    --namespace $AB_NAMESPACE \
    --body '{"itemIds": ["GqqcZ5C1A90L2KkV", "BXRmO7Zuk44zgPtV", "AMz96iq4g2VBjcW2"]}' \
    > test.out 2>&1
eval_tap $? 405 'PublicValidateItemPurchaseCondition' test.out

#- 406 PublicSearchItems
samples/cli/sample-apps Platform publicSearchItems \
    --namespace $AB_NAMESPACE \
    --autoCalcEstimatedPrice 'false' \
    --itemType 'SEASON' \
    --limit '9' \
    --offset '3' \
    --region '77EjfKSGQRs0WyQ5' \
    --storeId 'CyqKHRuU49cdJ71c' \
    --keyword 'h0fpKQLVjeVLc9U1' \
    --language 'p4SGSBBJ8UZg3FAE' \
    > test.out 2>&1
eval_tap $? 406 'PublicSearchItems' test.out

#- 407 PublicGetApp
samples/cli/sample-apps Platform publicGetApp \
    --itemId 'Li5c5pgMfkTp19TM' \
    --namespace $AB_NAMESPACE \
    --language 'kDYloQGcKbv8WJDF' \
    --region '1quSCUl1B049dnn4' \
    --storeId 'MH6c2hVPKsTlYGVf' \
    > test.out 2>&1
eval_tap $? 407 'PublicGetApp' test.out

#- 408 PublicGetItemDynamicData
samples/cli/sample-apps Platform publicGetItemDynamicData \
    --itemId 'CWBvlmTToVSwfjXH' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 408 'PublicGetItemDynamicData' test.out

#- 409 PublicGetItem
samples/cli/sample-apps Platform publicGetItem \
    --itemId 'zxgU6kbCffAZiWSB' \
    --namespace $AB_NAMESPACE \
    --autoCalcEstimatedPrice 'true' \
    --language 'rcQh3i6yjIa6zg5W' \
    --populateBundle 'true' \
    --region 'SHBuuw38eZhDUC2E' \
    --storeId 'fTTbq3IYIkUgD1iF' \
    > test.out 2>&1
eval_tap $? 409 'PublicGetItem' test.out

#- 410 GetPaymentCustomization
eval_tap 0 410 'GetPaymentCustomization # SKIP deprecated' test.out

#- 411 PublicGetPaymentUrl
samples/cli/sample-apps Platform publicGetPaymentUrl \
    --namespace $AB_NAMESPACE \
    --body '{"neonPayConfig": {"cancelUrl": "AW5BCycbQQqvRfJ1", "successUrl": "qMDLJRFPpnnwp9Al"}, "paymentOrderNo": "sNFyHFDCEXUHhovk", "paymentProvider": "ALIPAY", "returnUrl": "EPzMO1tSJICnoZsL", "ui": "BqyOttgLFR0P1LeN", "zipCode": "phA8bcgpnc5KubNd"}' \
    > test.out 2>&1
eval_tap $? 411 'PublicGetPaymentUrl' test.out

#- 412 PublicGetPaymentMethods
samples/cli/sample-apps Platform publicGetPaymentMethods \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'yNGEfAx8amPj9uIw' \
    > test.out 2>&1
eval_tap $? 412 'PublicGetPaymentMethods' test.out

#- 413 PublicGetUnpaidPaymentOrder
samples/cli/sample-apps Platform publicGetUnpaidPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'vs4pj7RQ6xhVPZT1' \
    > test.out 2>&1
eval_tap $? 413 'PublicGetUnpaidPaymentOrder' test.out

#- 414 Pay
samples/cli/sample-apps Platform pay \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo '4UmZBX2gxlGoxvLm' \
    --paymentProvider 'PAYPAL' \
    --zipCode 'zKVgXwCgYBEF9eig' \
    --body '{"token": "AQz0zq3ExZhViraF"}' \
    > test.out 2>&1
eval_tap $? 414 'Pay' test.out

#- 415 PublicCheckPaymentOrderPaidStatus
samples/cli/sample-apps Platform publicCheckPaymentOrderPaidStatus \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'D7UHZkyupwMq3li5' \
    > test.out 2>&1
eval_tap $? 415 'PublicCheckPaymentOrderPaidStatus' test.out

#- 416 GetPaymentPublicConfig
samples/cli/sample-apps Platform getPaymentPublicConfig \
    --namespace $AB_NAMESPACE \
    --sandbox 'true' \
    --paymentProvider 'ALIPAY' \
    --region 'qUu09MDVkgdCEnDW' \
    > test.out 2>&1
eval_tap $? 416 'GetPaymentPublicConfig' test.out

#- 417 PublicGetQRCode
samples/cli/sample-apps Platform publicGetQRCode \
    --namespace $AB_NAMESPACE \
    --code 'K6tGcjPyviYxyvOK' \
    > test.out 2>&1
eval_tap $? 417 'PublicGetQRCode' test.out

#- 418 PublicNormalizePaymentReturnUrl
samples/cli/sample-apps Platform publicNormalizePaymentReturnUrl \
    --namespace $AB_NAMESPACE \
    --payerID 'dqo9wD4WCaRzns1F' \
    --foreinginvoice 'MMbC3q3wbsaERmux' \
    --invoiceId 'W23Ezbi7cDrZK0M6' \
    --payload 'Xa8UL2DEwAhofVCC' \
    --redirectResult 'OMqCmppaLdkwlAHj' \
    --resultCode 'KEZ4tIH3EeI0pklf' \
    --sessionId 'n2vs7ZFKUrffCvGt' \
    --status '3Oke1OVRuYUSLkFs' \
    --token 'OazT0KILiAphRNlq' \
    --type 'a72Y8BkGQu7qGQVV' \
    --userId 'HzgME2XGVQpEYxu4' \
    --orderNo 'kvZDenuJCU4EY4Lw' \
    --paymentOrderNo 'T5LUCsLvmho9AZ50' \
    --paymentProvider 'WXPAY' \
    --returnUrl 'gPD8AsLHkBO6E2LI' \
    > test.out 2>&1
eval_tap $? 418 'PublicNormalizePaymentReturnUrl' test.out

#- 419 GetPaymentTaxValue
samples/cli/sample-apps Platform getPaymentTaxValue \
    --namespace $AB_NAMESPACE \
    --zipCode 'plWbgDJwShZ9Pqk8' \
    --paymentOrderNo 'T6xriFY6US2BEECl' \
    --paymentProvider 'ADYEN' \
    > test.out 2>&1
eval_tap $? 419 'GetPaymentTaxValue' test.out

#- 420 GetRewardByCode
samples/cli/sample-apps Platform getRewardByCode \
    --namespace $AB_NAMESPACE \
    --rewardCode '96sWTk5Qonz7S9SM' \
    > test.out 2>&1
eval_tap $? 420 'GetRewardByCode' test.out

#- 421 QueryRewards1
samples/cli/sample-apps Platform queryRewards1 \
    --namespace $AB_NAMESPACE \
    --eventTopic 'hg8lkUh1qJKLZmbE' \
    --limit '13' \
    --offset '64' \
    --sortBy '["namespace", "namespace:desc"]' \
    > test.out 2>&1
eval_tap $? 421 'QueryRewards1' test.out

#- 422 GetReward1
samples/cli/sample-apps Platform getReward1 \
    --namespace $AB_NAMESPACE \
    --rewardId 'hKUaBgqX8wHNsKv3' \
    > test.out 2>&1
eval_tap $? 422 'GetReward1' test.out

#- 423 PublicListStores
samples/cli/sample-apps Platform publicListStores \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 423 'PublicListStores' test.out

#- 424 PublicExistsAnyMyActiveEntitlement
samples/cli/sample-apps Platform publicExistsAnyMyActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --appIds '["nNyknNziiOFq1Y1j", "i5l7bM3ECjjLMQAi", "DBmX9lJsggXwdPvv"]' \
    --itemIds '["8Dv71Loq1HOpw7Qj", "LCq9D7bSTObBwdh7", "oGXse9OmdoDClxgo"]' \
    --skus '["yvhJiwkmcBNhHujs", "bWbGPwtRCy4dinYd", "v9LCyEEOhsRhahtH"]' \
    > test.out 2>&1
eval_tap $? 424 'PublicExistsAnyMyActiveEntitlement' test.out

#- 425 PublicGetMyAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform publicGetMyAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --appId 'uud7gBDThbDkTakh' \
    > test.out 2>&1
eval_tap $? 425 'PublicGetMyAppEntitlementOwnershipByAppId' test.out

#- 426 PublicGetMyEntitlementOwnershipByItemId
samples/cli/sample-apps Platform publicGetMyEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --entitlementClazz 'LOOTBOX' \
    --itemId 'jzDZzQUBMWiIGWQZ' \
    > test.out 2>&1
eval_tap $? 426 'PublicGetMyEntitlementOwnershipByItemId' test.out

#- 427 PublicGetMyEntitlementOwnershipBySku
samples/cli/sample-apps Platform publicGetMyEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --entitlementClazz 'LOOTBOX' \
    --sku '92Vvr8arvtSSZ2F2' \
    > test.out 2>&1
eval_tap $? 427 'PublicGetMyEntitlementOwnershipBySku' test.out

#- 428 PublicGetEntitlementOwnershipToken
samples/cli/sample-apps Platform publicGetEntitlementOwnershipToken \
    --namespace $AB_NAMESPACE \
    --appIds '["aVsfTVbQuN0chSi1", "vFX1rTkih8jBlqe7", "nLlZGx8yyof4JHgI"]' \
    --itemIds '["k7LkHu5qhlhGGdZO", "RNnuk8POUA5y1FvD", "319vDvZbHwOiASlj"]' \
    --skus '["7iEXoJoZseT7ahEh", "xT31IB3IDQtza1sV", "ccCDSOWLSYqLPkZx"]' \
    > test.out 2>&1
eval_tap $? 428 'PublicGetEntitlementOwnershipToken' test.out

#- 429 SyncTwitchDropsEntitlement
samples/cli/sample-apps Platform syncTwitchDropsEntitlement \
    --namespace $AB_NAMESPACE \
    --body '{"gameId": "fTfG2NjTVe2XyEbG", "language": "RHD", "region": "KQlb73b3TRe41jRM"}' \
    > test.out 2>&1
eval_tap $? 429 'SyncTwitchDropsEntitlement' test.out

#- 430 PublicGetMyWallet
samples/cli/sample-apps Platform publicGetMyWallet \
    --currencyCode 'XnuTlI3KKg2NOxKI' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 430 'PublicGetMyWallet' test.out

#- 431 SyncEpicGameDLC
samples/cli/sample-apps Platform syncEpicGameDLC \
    --namespace $AB_NAMESPACE \
    --userId 'zPD4jt8FiujE8iCi' \
    --body '{"epicGamesJwtToken": "U1lveqy4dIvMet6H"}' \
    > test.out 2>&1
eval_tap $? 431 'SyncEpicGameDLC' test.out

#- 432 SyncOculusDLC
samples/cli/sample-apps Platform syncOculusDLC \
    --namespace $AB_NAMESPACE \
    --userId 'GUzdRPOOxsvBp6Pz' \
    > test.out 2>&1
eval_tap $? 432 'SyncOculusDLC' test.out

#- 433 PublicSyncPsnDlcInventory
samples/cli/sample-apps Platform publicSyncPsnDlcInventory \
    --namespace $AB_NAMESPACE \
    --userId 'Tvt63GisrhVi9NVD' \
    --body '{"serviceLabel": 79}' \
    > test.out 2>&1
eval_tap $? 433 'PublicSyncPsnDlcInventory' test.out

#- 434 PublicSyncPsnDlcInventoryWithMultipleServiceLabels
samples/cli/sample-apps Platform publicSyncPsnDlcInventoryWithMultipleServiceLabels \
    --namespace $AB_NAMESPACE \
    --userId 'LlICyd6SYduL2cGo' \
    --body '{"serviceLabels": [80, 65, 44]}' \
    > test.out 2>&1
eval_tap $? 434 'PublicSyncPsnDlcInventoryWithMultipleServiceLabels' test.out

#- 435 SyncSteamDLC
samples/cli/sample-apps Platform syncSteamDLC \
    --namespace $AB_NAMESPACE \
    --userId 'fI9INVBZDZ8srkd1' \
    --body '{"appId": "f8yYYLR8uxASf0om", "steamId": "YGyOHOnrwZv6NEEJ"}' \
    > test.out 2>&1
eval_tap $? 435 'SyncSteamDLC' test.out

#- 436 SyncXboxDLC
samples/cli/sample-apps Platform syncXboxDLC \
    --namespace $AB_NAMESPACE \
    --userId 'MKLNj0KbrbtTk3QX' \
    --body '{"xstsToken": "v4FZuiY3rAqmI90R"}' \
    > test.out 2>&1
eval_tap $? 436 'SyncXboxDLC' test.out

#- 437 PublicQueryUserEntitlements
samples/cli/sample-apps Platform publicQueryUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'qM0V3XarWfSteWN1' \
    --appType 'SOFTWARE' \
    --entitlementClazz 'CODE' \
    --entitlementName 'd81Cq4rr0Rk4rL2Y' \
    --features '["Iag122vWiSN1rmK1", "jVJKw0Nok7ojPHnv", "XBojzWQeSadPHWyv"]' \
    --itemId '["yeAH0XJ7xuLAXQEp", "UdkF4Ts08cDexwZV", "9z5hGKuNhUvvswAd"]' \
    --limit '80' \
    --offset '87' \
    > test.out 2>&1
eval_tap $? 437 'PublicQueryUserEntitlements' test.out

#- 438 PublicGetUserAppEntitlementByAppId
samples/cli/sample-apps Platform publicGetUserAppEntitlementByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'h3M9a9SiycfFIhcc' \
    --appId 'zHGhGpJZjVjuBYxj' \
    > test.out 2>&1
eval_tap $? 438 'PublicGetUserAppEntitlementByAppId' test.out

#- 439 PublicQueryUserEntitlementsByAppType
samples/cli/sample-apps Platform publicQueryUserEntitlementsByAppType \
    --namespace $AB_NAMESPACE \
    --userId 'P1i3jY8W68XN4jZ9' \
    --limit '19' \
    --offset '45' \
    --appType 'GAME' \
    > test.out 2>&1
eval_tap $? 439 'PublicQueryUserEntitlementsByAppType' test.out

#- 440 PublicGetUserEntitlementsByIds
samples/cli/sample-apps Platform publicGetUserEntitlementsByIds \
    --namespace $AB_NAMESPACE \
    --userId 'uT7JsydS9BfAAUlg' \
    --availablePlatformOnly 'true' \
    --ids '["NvYwvdUi94D0X074", "suTutnixJ3Qtsq0C", "7kBmU6ed0AgrvSjd"]' \
    > test.out 2>&1
eval_tap $? 440 'PublicGetUserEntitlementsByIds' test.out

#- 441 PublicGetUserEntitlementByItemId
eval_tap 0 441 'PublicGetUserEntitlementByItemId # SKIP deprecated' test.out

#- 442 PublicGetUserEntitlementBySku
eval_tap 0 442 'PublicGetUserEntitlementBySku # SKIP deprecated' test.out

#- 443 PublicUserEntitlementHistory
samples/cli/sample-apps Platform publicUserEntitlementHistory \
    --namespace $AB_NAMESPACE \
    --userId 'Gs5NhCSsIN4jnIBM' \
    --endDate 'mzJhXTTQmzNnt4z0' \
    --entitlementClazz 'APP' \
    --limit '50' \
    --offset '23' \
    --startDate 'P1Mgv65XX3snMPsG' \
    > test.out 2>&1
eval_tap $? 443 'PublicUserEntitlementHistory' test.out

#- 444 PublicExistsAnyUserActiveEntitlement
samples/cli/sample-apps Platform publicExistsAnyUserActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'gdoxhGQYhr7iW21P' \
    --appIds '["IGxwWqbZrWebSJG0", "cl1gyopZTRQJY5vt", "dIHhzA0Yqdew2oTJ"]' \
    --itemIds '["XikdJxIEfPM7TUBe", "dnZqhzObwwKtG6lr", "sAoCTlGMcmHTWf4B"]' \
    --skus '["k40Yy3ZKpBKlNAaR", "YSMOFUfxxA8VeoNN", "qa16LydNSOLbCHlw"]' \
    > test.out 2>&1
eval_tap $? 444 'PublicExistsAnyUserActiveEntitlement' test.out

#- 445 PublicGetUserAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform publicGetUserAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'HIZ2A5dAO0gb9JTk' \
    --appId 'DPn2ZVjiof9uD52o' \
    > test.out 2>&1
eval_tap $? 445 'PublicGetUserAppEntitlementOwnershipByAppId' test.out

#- 446 PublicGetUserEntitlementOwnershipByItemId
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'vpfPME0aSfw39GO2' \
    --entitlementClazz 'CODE' \
    --itemId 'HMJXTcIuPU2Imuaq' \
    > test.out 2>&1
eval_tap $? 446 'PublicGetUserEntitlementOwnershipByItemId' test.out

#- 447 PublicGetUserEntitlementOwnershipByItemIds
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'riKb1MHBrVF99fYe' \
    --ids '["FbdcvWXfyi2b10R4", "vvrqknGv8H1Njv0Z", "fIYOAuOB0R7QgAQu"]' \
    > test.out 2>&1
eval_tap $? 447 'PublicGetUserEntitlementOwnershipByItemIds' test.out

#- 448 PublicGetUserEntitlementOwnershipBySku
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --userId 'o13Y5zUBAl2BNDu4' \
    --entitlementClazz 'CODE' \
    --sku 'Zyg85fDJIWZZ2WKL' \
    > test.out 2>&1
eval_tap $? 448 'PublicGetUserEntitlementOwnershipBySku' test.out

#- 449 PublicGetUserEntitlement
samples/cli/sample-apps Platform publicGetUserEntitlement \
    --entitlementId 'r1sdrEOX0Tw9SUxM' \
    --namespace $AB_NAMESPACE \
    --userId '4uIyerWEfwNZIzQN' \
    > test.out 2>&1
eval_tap $? 449 'PublicGetUserEntitlement' test.out

#- 450 PublicConsumeUserEntitlement
samples/cli/sample-apps Platform publicConsumeUserEntitlement \
    --entitlementId 'J9aEtOcgQlELklvo' \
    --namespace $AB_NAMESPACE \
    --userId 'K3gVB1WKhLnYW8tJ' \
    --body '{"metadata": {"operationSource": "INVENTORY"}, "options": ["zXeT2WcAoC17AVnZ", "jeabZJgjfZXGLHT8", "NBqQbz2HvHwZ6AiX"], "requestId": "T1KkEgoIV1gVDkn8", "useCount": 63}' \
    > test.out 2>&1
eval_tap $? 450 'PublicConsumeUserEntitlement' test.out

#- 451 PublicSellUserEntitlement
samples/cli/sample-apps Platform publicSellUserEntitlement \
    --entitlementId 'Qjk9CNYhHaP5jPJ9' \
    --namespace $AB_NAMESPACE \
    --userId 'boq9mCB2kUIDpsQg' \
    --body '{"requestId": "znA8Nohjj4vMFVa5", "useCount": 40}' \
    > test.out 2>&1
eval_tap $? 451 'PublicSellUserEntitlement' test.out

#- 452 PublicSplitUserEntitlement
samples/cli/sample-apps Platform publicSplitUserEntitlement \
    --entitlementId 'hqJJgAaTh1LZItJ8' \
    --namespace $AB_NAMESPACE \
    --userId 'WNjIGt5w9cijmZDV' \
    --body '{"metadata": {"operationSource": "INVENTORY"}, "useCount": 54}' \
    > test.out 2>&1
eval_tap $? 452 'PublicSplitUserEntitlement' test.out

#- 453 PublicTransferUserEntitlement
samples/cli/sample-apps Platform publicTransferUserEntitlement \
    --entitlementId 'UTjB0PophRXyfKRE' \
    --namespace $AB_NAMESPACE \
    --userId 'BVpeT4zvZFJ1ozxi' \
    --body '{"entitlementId": "U2fNHX6rKef4pDg1", "metadata": {"operationSource": "INVENTORY"}, "useCount": 2}' \
    > test.out 2>&1
eval_tap $? 453 'PublicTransferUserEntitlement' test.out

#- 454 PublicRedeemCode
samples/cli/sample-apps Platform publicRedeemCode \
    --namespace $AB_NAMESPACE \
    --userId 'fdDlJkv4e11Ado1G' \
    --body '{"code": "U2Y4fzpPKmV6vb5c", "language": "nk-uJBl", "region": "zpZbkaimX1GN1CmD"}' \
    > test.out 2>&1
eval_tap $? 454 'PublicRedeemCode' test.out

#- 455 PublicFulfillAppleIAPItem
samples/cli/sample-apps Platform publicFulfillAppleIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'Fk1r4MPzUuMG2bC5' \
    --body '{"excludeOldTransactions": true, "language": "mwy_Yr", "productId": "DVih3i0awSdpAhmB", "receiptData": "cbQaEasrZFWJGrKE", "region": "DYhx7mZcW75EbHI7", "transactionId": "PNAzUeDccLTNmm6M"}' \
    > test.out 2>&1
eval_tap $? 455 'PublicFulfillAppleIAPItem' test.out

#- 456 SyncEpicGamesInventory
samples/cli/sample-apps Platform syncEpicGamesInventory \
    --namespace $AB_NAMESPACE \
    --userId 'UpNepCDsF0aQmTHC' \
    --body '{"epicGamesJwtToken": "uJHPDvAXJffgZx0O"}' \
    > test.out 2>&1
eval_tap $? 456 'SyncEpicGamesInventory' test.out

#- 457 PublicFulfillGoogleIAPItem
samples/cli/sample-apps Platform publicFulfillGoogleIAPItem \
    --namespace $AB_NAMESPACE \
    --userId '5GCXUsiC7J1a5Q3J' \
    --body '{"autoAck": true, "autoConsume": false, "language": "rn-WlJD", "orderId": "NEC1ZzGiNNmQZ0rA", "packageName": "Yz1OgT34QfjXEeHC", "productId": "yQ3NB1kCHlZuc5Ll", "purchaseTime": 41, "purchaseToken": "Tedi4xWPcWgNMmPA", "region": "EMhORxz5pYllQ1OG", "subscriptionPurchase": false}' \
    > test.out 2>&1
eval_tap $? 457 'PublicFulfillGoogleIAPItem' test.out

#- 458 SyncOculusConsumableEntitlements
samples/cli/sample-apps Platform syncOculusConsumableEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'uJSGfIvOmmmtMml6' \
    > test.out 2>&1
eval_tap $? 458 'SyncOculusConsumableEntitlements' test.out

#- 459 PublicReconcilePlayStationStore
samples/cli/sample-apps Platform publicReconcilePlayStationStore \
    --namespace $AB_NAMESPACE \
    --userId 'fquZKd5guyZxN9E5' \
    --body '{"currencyCode": "djMZwNpY31aIJXxI", "price": 0.2592187403053332, "productId": "GP4WLM8kkw0MwBBS", "serviceLabel": 37}' \
    > test.out 2>&1
eval_tap $? 459 'PublicReconcilePlayStationStore' test.out

#- 460 PublicReconcilePlayStationStoreWithMultipleServiceLabels
samples/cli/sample-apps Platform publicReconcilePlayStationStoreWithMultipleServiceLabels \
    --namespace $AB_NAMESPACE \
    --userId 'XZsk4ebrTd7HlmP7' \
    --body '{"currencyCode": "gPJXcZiDE7dsAOYJ", "price": 0.24077265867624698, "productId": "BrGmHY7SQXpYjFhb", "serviceLabels": [25, 10, 63]}' \
    > test.out 2>&1
eval_tap $? 460 'PublicReconcilePlayStationStoreWithMultipleServiceLabels' test.out

#- 461 SyncSteamInventory
samples/cli/sample-apps Platform syncSteamInventory \
    --namespace $AB_NAMESPACE \
    --userId 'jWAtQDhrjlyFIyv9' \
    --body '{"appId": "rfzEBb1cjqxkcyiq", "currencyCode": "lld9pQsxukw3TLug", "language": "Id-Cb", "price": 0.004395143222939435, "productId": "R0Z37FdGqyxxTzI3", "region": "rgTzKXjNQy1iJjUN", "steamId": "pIKhE3gL2snJcQur"}' \
    > test.out 2>&1
eval_tap $? 461 'SyncSteamInventory' test.out

#- 462 SyncSteamAbnormalTransaction
samples/cli/sample-apps Platform syncSteamAbnormalTransaction \
    --namespace $AB_NAMESPACE \
    --userId 'dlJDUYWeOKnUoQH1' \
    > test.out 2>&1
eval_tap $? 462 'SyncSteamAbnormalTransaction' test.out

#- 463 SyncSteamIAPByTransaction
samples/cli/sample-apps Platform syncSteamIAPByTransaction \
    --namespace $AB_NAMESPACE \
    --userId '5PCztcVzwMO0WbCe' \
    --body '{"orderId": "tX0LKNq71vz5QoLF"}' \
    > test.out 2>&1
eval_tap $? 463 'SyncSteamIAPByTransaction' test.out

#- 464 PublicQueryUserThirdPartySubscription
samples/cli/sample-apps Platform publicQueryUserThirdPartySubscription \
    --namespace $AB_NAMESPACE \
    --platform 'STEAM' \
    --userId 'p3pTtqkS704akIgp' \
    --activeOnly 'true' \
    --groupId 'dJXQxLTW14esgV3C' \
    --limit '32' \
    --offset '54' \
    --productId 'DSbY7V6NeWUaBsD4' \
    > test.out 2>&1
eval_tap $? 464 'PublicQueryUserThirdPartySubscription' test.out

#- 465 SyncTwitchDropsEntitlement1
samples/cli/sample-apps Platform syncTwitchDropsEntitlement1 \
    --namespace $AB_NAMESPACE \
    --userId 'p3ZCiSXp72y25VJD' \
    --body '{"gameId": "4pGTy84HWnytDNzo", "language": "dBv-Tj", "region": "ECVLdz4INXooIg6I"}' \
    > test.out 2>&1
eval_tap $? 465 'SyncTwitchDropsEntitlement1' test.out

#- 466 SyncXboxInventory
samples/cli/sample-apps Platform syncXboxInventory \
    --namespace $AB_NAMESPACE \
    --userId 'CGqi1aTNVIjS5unL' \
    --body '{"currencyCode": "aNsXrD5NQDCuFuyh", "price": 0.463971337071991, "productId": "XmCbjhl71v82KbRb", "xstsToken": "uUyB9nmwnaDoqSWm"}' \
    > test.out 2>&1
eval_tap $? 466 'SyncXboxInventory' test.out

#- 467 PublicQueryUserOrders
samples/cli/sample-apps Platform publicQueryUserOrders \
    --namespace $AB_NAMESPACE \
    --userId 'afwvve6yXxcMR3Yt' \
    --discounted 'true' \
    --itemId 'rSbEUhSUFb27s1KR' \
    --limit '43' \
    --offset '63' \
    --status 'CLOSED' \
    > test.out 2>&1
eval_tap $? 467 'PublicQueryUserOrders' test.out

#- 468 PublicCreateUserOrder
samples/cli/sample-apps Platform publicCreateUserOrder \
    --namespace $AB_NAMESPACE \
    --userId '9Iqi1JR6gaAZNSWT' \
    --body '{"currencyCode": "FbVNpBXuFBpufo3B", "discountCodes": ["3bmfk36vEK8zecMP", "NSl83jiIYnGBWRG1", "Buo5AWqrhXzWDEJd"], "discountedPrice": 68, "ext": {"mPkuyFP25xU7YAGX": {}, "0WmQ7SDqrLYcEkkj": {}, "AHjyPseeCFLQnJ6P": {}}, "itemId": "ajJveiVQtIX9zmpD", "language": "rDL_Xh", "price": 67, "quantity": 66, "region": "OP8ryghbpU4yrLA3", "returnUrl": "5ZkSmrXD4hcx418E", "sectionId": "vocoyBZ3sz9Jd05v"}' \
    > test.out 2>&1
eval_tap $? 468 'PublicCreateUserOrder' test.out

#- 469 PublicPreviewOrderPrice
samples/cli/sample-apps Platform publicPreviewOrderPrice \
    --namespace $AB_NAMESPACE \
    --userId 'FptYUY06xQ9eJpiJ' \
    --body '{"currencyCode": "ByrpYljnHH7tQqFD", "discountCodes": ["x2zJr8d0FPwCWGHq", "riQg5SDHWfl1KQAl", "oTeO8zw6uaQ4f80i"], "discountedPrice": 23, "itemId": "YHWyUsuSOKjoJU2C", "price": 3, "quantity": 75}' \
    > test.out 2>&1
eval_tap $? 469 'PublicPreviewOrderPrice' test.out

#- 470 PublicGetUserOrder
samples/cli/sample-apps Platform publicGetUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'rbnOHWWIPXbUdYHj' \
    --userId 'aS6l5NSDAaJM2jXz' \
    > test.out 2>&1
eval_tap $? 470 'PublicGetUserOrder' test.out

#- 471 PublicCancelUserOrder
samples/cli/sample-apps Platform publicCancelUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'FzE00nWxXUsOQrwE' \
    --userId 'ifn4FMSQVBeEYt4t' \
    > test.out 2>&1
eval_tap $? 471 'PublicCancelUserOrder' test.out

#- 472 PublicGetUserOrderHistories
samples/cli/sample-apps Platform publicGetUserOrderHistories \
    --namespace $AB_NAMESPACE \
    --orderNo 'h2Lv8LruW3Spfkl4' \
    --userId '0I6wGsh5mdf2Q1DY' \
    > test.out 2>&1
eval_tap $? 472 'PublicGetUserOrderHistories' test.out

#- 473 PublicDownloadUserOrderReceipt
samples/cli/sample-apps Platform publicDownloadUserOrderReceipt \
    --namespace $AB_NAMESPACE \
    --orderNo 'wPkygYD3UUoj5VVE' \
    --userId 'okvqbszthbSIJTpe' \
    > test.out 2>&1
eval_tap $? 473 'PublicDownloadUserOrderReceipt' test.out

#- 474 PublicGetPaymentAccounts
samples/cli/sample-apps Platform publicGetPaymentAccounts \
    --namespace $AB_NAMESPACE \
    --userId 'sTQ08obkkTvguTu7' \
    > test.out 2>&1
eval_tap $? 474 'PublicGetPaymentAccounts' test.out

#- 475 PublicDeletePaymentAccount
samples/cli/sample-apps Platform publicDeletePaymentAccount \
    --id 'DzRhatzsDAfbSZk3' \
    --namespace $AB_NAMESPACE \
    --type 'paypal' \
    --userId 'ifgZzDizFOAsxlIG' \
    > test.out 2>&1
eval_tap $? 475 'PublicDeletePaymentAccount' test.out

#- 476 PublicListActiveSections
samples/cli/sample-apps Platform publicListActiveSections \
    --namespace $AB_NAMESPACE \
    --userId '9dR6CcbsjwFPJ9K8' \
    --autoCalcEstimatedPrice 'true' \
    --language 'RNzSH8Ff3OD6pnIQ' \
    --region '2A6u6ZVLRdh4smAZ' \
    --storeId 'A4wvEqPSXj9VPeI6' \
    --viewId '7E4tfWT3hUDIYC0q' \
    > test.out 2>&1
eval_tap $? 476 'PublicListActiveSections' test.out

#- 477 PublicQueryUserSubscriptions
samples/cli/sample-apps Platform publicQueryUserSubscriptions \
    --namespace $AB_NAMESPACE \
    --userId 'kN1UHbUSV2AZ0lux' \
    --chargeStatus 'NEVER' \
    --itemId '7lYcf93DDovGyrK0' \
    --limit '1' \
    --offset '48' \
    --sku 'WyDcJkxvXwAXkKsG' \
    --status 'INIT' \
    --subscribedBy 'USER' \
    > test.out 2>&1
eval_tap $? 477 'PublicQueryUserSubscriptions' test.out

#- 478 PublicSubscribeSubscription
samples/cli/sample-apps Platform publicSubscribeSubscription \
    --namespace $AB_NAMESPACE \
    --userId 'wSgfGo2jmcGULRUn' \
    --body '{"currencyCode": "SsD5fPcYVK1EmzJJ", "itemId": "zC1RqDQdbduzGuiT", "language": "EtQ-AlFi_132", "region": "8gsbIW23iD7Cz7rQ", "returnUrl": "HImPXUKzYPNwAg6h", "source": "ZGOoZLahjdz00Q3P"}' \
    > test.out 2>&1
eval_tap $? 478 'PublicSubscribeSubscription' test.out

#- 479 PublicCheckUserSubscriptionSubscribableByItemId
samples/cli/sample-apps Platform publicCheckUserSubscriptionSubscribableByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'aj6j3O7iDK4lO9y7' \
    --itemId '9tLUWG4HP6t6hR5W' \
    > test.out 2>&1
eval_tap $? 479 'PublicCheckUserSubscriptionSubscribableByItemId' test.out

#- 480 PublicGetUserSubscription
samples/cli/sample-apps Platform publicGetUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'XKo5uOEAMyUj3kbC' \
    --userId 'dRWOKc3Z5sTuV8mh' \
    > test.out 2>&1
eval_tap $? 480 'PublicGetUserSubscription' test.out

#- 481 PublicChangeSubscriptionBillingAccount
samples/cli/sample-apps Platform publicChangeSubscriptionBillingAccount \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'ZrLWvEDbZ8fUx4Sb' \
    --userId 'gQu6ym5KqK40mfTA' \
    > test.out 2>&1
eval_tap $? 481 'PublicChangeSubscriptionBillingAccount' test.out

#- 482 PublicCancelSubscription
samples/cli/sample-apps Platform publicCancelSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'QmmGBlCumiCn39rB' \
    --userId 'Y0fJf2x0qlLHdWzm' \
    --body '{"immediate": false, "reason": "bkkK51RCt9LQ07hw"}' \
    > test.out 2>&1
eval_tap $? 482 'PublicCancelSubscription' test.out

#- 483 PublicGetUserSubscriptionBillingHistories
samples/cli/sample-apps Platform publicGetUserSubscriptionBillingHistories \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'RdoMIGTdKhdz2WYr' \
    --userId 'yfpxUTJHn7YnpNri' \
    --excludeFree 'false' \
    --limit '3' \
    --offset '12' \
    > test.out 2>&1
eval_tap $? 483 'PublicGetUserSubscriptionBillingHistories' test.out

#- 484 PublicListViews
samples/cli/sample-apps Platform publicListViews \
    --namespace $AB_NAMESPACE \
    --userId 'fwLijUS3s2yzztGj' \
    --language 'sSJvOtEgrrqIiAEI' \
    --storeId '8jnyPJm3ArsmPCqK' \
    > test.out 2>&1
eval_tap $? 484 'PublicListViews' test.out

#- 485 PublicGetWallet
samples/cli/sample-apps Platform publicGetWallet \
    --currencyCode '0TjsqVr2QNwogY4Q' \
    --namespace $AB_NAMESPACE \
    --userId 'AuHGDrQpMlii4b0m' \
    > test.out 2>&1
eval_tap $? 485 'PublicGetWallet' test.out

#- 486 PublicListUserWalletTransactions
samples/cli/sample-apps Platform publicListUserWalletTransactions \
    --currencyCode '3BKFJkghN14Q91j8' \
    --namespace $AB_NAMESPACE \
    --userId 'udXLvNdXX48tRoVt' \
    --limit '70' \
    --offset '84' \
    > test.out 2>&1
eval_tap $? 486 'PublicListUserWalletTransactions' test.out

#- 487 PublicGetMyDLCContent
samples/cli/sample-apps Platform publicGetMyDLCContent \
    --includeAllNamespaces 'false' \
    --type 'EPICGAMES' \
    > test.out 2>&1
eval_tap $? 487 'PublicGetMyDLCContent' test.out

#- 488 QueryFulfillments
samples/cli/sample-apps Platform queryFulfillments \
    --namespace $AB_NAMESPACE \
    --endTime 't5zhAYs3YPi3tK2O' \
    --limit '82' \
    --offset '16' \
    --startTime 'QOToXMao4lEqa2By' \
    --state 'FULFILLED' \
    --transactionId 'albTV2IzKg8JiXnZ' \
    --userId 'v0dBlF7Qx1zSWmoN' \
    > test.out 2>&1
eval_tap $? 488 'QueryFulfillments' test.out

#- 489 QueryItemsV2
samples/cli/sample-apps Platform queryItemsV2 \
    --namespace $AB_NAMESPACE \
    --appType 'DEMO' \
    --availableDate 'Y0nSZ0sUfASqjWlc' \
    --baseAppId '4KVUdSQJnkmq5NAK' \
    --categoryPath 'C9zbpeNg0c4wS4Gf' \
    --features 'CTKaIqPFhIPHhDOS' \
    --includeSubCategoryItem 'true' \
    --itemName '6cXPMDYtFxjPGvtX' \
    --itemStatus 'ACTIVE' \
    --itemType '["APP", "COINS", "BUNDLE"]' \
    --limit '76' \
    --offset '69' \
    --region 'dLJcGtRzpUL40wrJ' \
    --sectionExclusive 'true' \
    --sortBy '["createdAt:desc", "name:desc", "displayOrder:asc"]' \
    --storeId 'DsfPqqLQLNOD0p16' \
    --tags 'dmcPdJhXjVhKogXJ' \
    --targetNamespace '1YsxJdsA3spyDd4v' \
    --withTotal 'false' \
    > test.out 2>&1
eval_tap $? 489 'QueryItemsV2' test.out

#- 490 ImportStore1
samples/cli/sample-apps Platform importStore1 \
    --namespace $AB_NAMESPACE \
    --storeId '8m0Wj1E5hczmrfqn' \
    --strictMode 'false' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 490 'ImportStore1' test.out

#- 491 ExportStore1
samples/cli/sample-apps Platform exportStore1 \
    --namespace $AB_NAMESPACE \
    --storeId 'Tb7deNChAA3JJxx4' \
    --body '{"itemIds": ["XQ9p7RkydhL4yvzZ", "8y2bL3prbIS7FlC6", "q1krKsf1GXZnsX8Z"]}' \
    > test.out 2>&1
eval_tap $? 491 'ExportStore1' test.out

#- 492 FulfillRewardsV2
samples/cli/sample-apps Platform fulfillRewardsV2 \
    --namespace $AB_NAMESPACE \
    --userId 'QAfBvZLidB2PhMwB' \
    --body '{"entitlementCollectionId": "kkhe5h27JqIPIayX", "entitlementOrigin": "System", "metadata": {"95RD4GVB6l4o6tnF": {}, "qwD7XYNPmzdtLNMn": {}, "mRFidTWkl3H7N4nO": {}}, "origin": "Nintendo", "rewards": [{"currency": {"currencyCode": "YQQk83lewILs0F9M", "namespace": "SuOqcDM7pWGMkT8q"}, "item": {"itemId": "O7XCdUCsv2FS81XN", "itemName": "lkMo1qHmHI4m4W8V", "itemSku": "8IuEWHWTH5WCC3I2", "itemType": "nAgnP9DMEy8YXFQ8"}, "quantity": 3, "type": "ITEM"}, {"currency": {"currencyCode": "PZg8Yi9bCOUr3qRs", "namespace": "ECe1OfnCFSyHRuqu"}, "item": {"itemId": "ItdvGCSpc5YUiio4", "itemName": "ugq92YoN3W459YTL", "itemSku": "GieIuaTCLMyZWoqj", "itemType": "evddDeDdfQRwgoy5"}, "quantity": 90, "type": "CURRENCY"}, {"currency": {"currencyCode": "TI79sUARBmMFhxb5", "namespace": "PWZsPrI8DePHTq5Y"}, "item": {"itemId": "Un8sm0DJWMVXGZXL", "itemName": "trlHMVCwehZ5WOSK", "itemSku": "RkAjocPXfsoSLJtQ", "itemType": "p9N5Ff2PqEf3nW8k"}, "quantity": 16, "type": "CURRENCY"}], "source": "GIFT", "transactionId": "dJc15DC1XMMMgb53"}' \
    > test.out 2>&1
eval_tap $? 492 'FulfillRewardsV2' test.out

#- 493 FulfillItems
eval_tap 0 493 'FulfillItems # SKIP deprecated' test.out

#- 494 RetryFulfillItems
eval_tap 0 494 'RetryFulfillItems # SKIP deprecated' test.out

#- 495 RevokeItems
eval_tap 0 495 'RevokeItems # SKIP deprecated' test.out

#- 496 V2PublicFulfillAppleIAPItem
samples/cli/sample-apps Platform v2PublicFulfillAppleIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'Jsq3wVWypy7zQi76' \
    --body '{"transactionId": "WhEaDh4iqoj2pnmx"}' \
    > test.out 2>&1
eval_tap $? 496 'V2PublicFulfillAppleIAPItem' test.out

#- 497 FulfillItemsV3
samples/cli/sample-apps Platform fulfillItemsV3 \
    --namespace $AB_NAMESPACE \
    --transactionId 'dxwyiroqmnjvTSbe' \
    --userId '57uZgpJXnuv81Jtq' \
    --body '{"items": [{"duration": 43, "endDate": "1981-04-01T00:00:00Z", "entitlementCollectionId": "7Dz4kb4R0GFphwKX", "entitlementOrigin": "System", "itemId": "bqEEyhRptceintfR", "itemSku": "A9ABMvtoRGzdGJzU", "language": "cfDJlLiacXgS7mCF", "metadata": {"XMfJC0eGOe101XIK": {}, "ycKzIKoVs8WCg8LR": {}, "iPyhpvX5dt8nNvlR": {}}, "orderNo": "Z9KlbsalNwKGKgbf", "origin": "Nintendo", "quantity": 11, "region": "scO0p8ytbGoFmxpF", "source": "EXPIRATION", "startDate": "1998-03-16T00:00:00Z", "storeId": "PF29CaThACIAMKp3"}, {"duration": 28, "endDate": "1988-02-28T00:00:00Z", "entitlementCollectionId": "q9CqJxOn2vMPoUcI", "entitlementOrigin": "Oculus", "itemId": "4Vmkt8b4jg3vjSLE", "itemSku": "siNDPdfYPcH4H9G7", "language": "IJFMubUw9JkbMdVV", "metadata": {"CXqnufF541Tamc3z": {}, "RRctD3dHCs2L7L4B": {}, "QNgEk6eRCU8OC416": {}}, "orderNo": "Dnr65VXG9TW9wGxg", "origin": "GooglePlay", "quantity": 66, "region": "GgyyOL85nM5Ao7Sz", "source": "DLC", "startDate": "1985-06-17T00:00:00Z", "storeId": "Lq3r0oQhOTzKmo5x"}, {"duration": 18, "endDate": "1972-01-31T00:00:00Z", "entitlementCollectionId": "DVjTsePSQPoTMKd1", "entitlementOrigin": "System", "itemId": "r3CFdamayenNO0GY", "itemSku": "eMARuEU5gvcsaw6V", "language": "7jgtkVIwGQuaAfyO", "metadata": {"fVRiOu24u4879JQd": {}, "JNwiLI2tDyuGTXuY": {}, "h8QrYPNiL5Ja1ab9": {}}, "orderNo": "xGtSo4QxxOeASARs", "origin": "System", "quantity": 20, "region": "6PmslfU9UqFnd2xp", "source": "ORDER_REVOCATION", "startDate": "1981-07-02T00:00:00Z", "storeId": "bwsonHX1PFkIrhqx"}]}' \
    > test.out 2>&1
eval_tap $? 497 'FulfillItemsV3' test.out

#- 498 RetryFulfillItemsV3
samples/cli/sample-apps Platform retryFulfillItemsV3 \
    --namespace $AB_NAMESPACE \
    --transactionId '8hcBj3AXS10ZoEKn' \
    --userId 'Hq73Y8kXSYUmracA' \
    > test.out 2>&1
eval_tap $? 498 'RetryFulfillItemsV3' test.out

#- 499 RevokeItemsV3
samples/cli/sample-apps Platform revokeItemsV3 \
    --namespace $AB_NAMESPACE \
    --transactionId 'oAPldNIk3R1fNZAv' \
    --userId 'NZH9AknGrLzKgB2M' \
    > test.out 2>&1
eval_tap $? 499 'RevokeItemsV3' test.out


rm -f "tmp.dat"

exit $EXIT_CODE