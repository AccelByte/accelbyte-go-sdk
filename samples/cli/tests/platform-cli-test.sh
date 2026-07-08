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
    --id 'dnCS3jDLpSusLy5S' \
    > test.out 2>&1
eval_tap $? 3 'GetFulfillmentScript' test.out

#- 4 CreateFulfillmentScript
samples/cli/sample-apps Platform createFulfillmentScript \
    --id 'fUIrMZh6pXtSoJJw' \
    --body '{"grantDays": "loaMoABkgu9vjYr5"}' \
    > test.out 2>&1
eval_tap $? 4 'CreateFulfillmentScript' test.out

#- 5 DeleteFulfillmentScript
samples/cli/sample-apps Platform deleteFulfillmentScript \
    --id 'XwEzHWsakFv8WDCH' \
    > test.out 2>&1
eval_tap $? 5 'DeleteFulfillmentScript' test.out

#- 6 UpdateFulfillmentScript
samples/cli/sample-apps Platform updateFulfillmentScript \
    --id 'y8ZxfnMcjupp0h0P' \
    --body '{"grantDays": "As1Yk7upbZLp5tHq"}' \
    > test.out 2>&1
eval_tap $? 6 'UpdateFulfillmentScript' test.out

#- 7 ListItemTypeConfigs
samples/cli/sample-apps Platform listItemTypeConfigs \
    > test.out 2>&1
eval_tap $? 7 'ListItemTypeConfigs' test.out

#- 8 CreateItemTypeConfig
samples/cli/sample-apps Platform createItemTypeConfig \
    --body '{"clazz": "Vs8RMBE4mbkn95J4", "dryRun": false, "fulfillmentUrl": "a7012dsrfBoeG7MJ", "itemType": "BUNDLE", "purchaseConditionUrl": "dBHcxaLd8K0SsAXu"}' \
    > test.out 2>&1
eval_tap $? 8 'CreateItemTypeConfig' test.out

#- 9 SearchItemTypeConfig
samples/cli/sample-apps Platform searchItemTypeConfig \
    --clazz 'pEIxu8Ejs5Mr86m6' \
    --itemType 'COINS' \
    > test.out 2>&1
eval_tap $? 9 'SearchItemTypeConfig' test.out

#- 10 GetItemTypeConfig
samples/cli/sample-apps Platform getItemTypeConfig \
    --id 'MuJwE6FWj4rDHTAl' \
    > test.out 2>&1
eval_tap $? 10 'GetItemTypeConfig' test.out

#- 11 UpdateItemTypeConfig
samples/cli/sample-apps Platform updateItemTypeConfig \
    --id '91g1983oa4z3MfIm' \
    --body '{"clazz": "aW6tZ6E3885ZoIDd", "dryRun": true, "fulfillmentUrl": "Td5x113o2llfXeXE", "purchaseConditionUrl": "OynsSNQ3yE80VZlV"}' \
    > test.out 2>&1
eval_tap $? 11 'UpdateItemTypeConfig' test.out

#- 12 DeleteItemTypeConfig
samples/cli/sample-apps Platform deleteItemTypeConfig \
    --id 'GxB3kAwdB4XhWlsO' \
    > test.out 2>&1
eval_tap $? 12 'DeleteItemTypeConfig' test.out

#- 13 QueryCampaigns
samples/cli/sample-apps Platform queryCampaigns \
    --namespace $AB_NAMESPACE \
    --limit '65' \
    --name '7MDlGHrkfsKivdUb' \
    --offset '38' \
    --tag 'Ax0A9NjbAXigrEBu' \
    > test.out 2>&1
eval_tap $? 13 'QueryCampaigns' test.out

#- 14 CreateCampaign
samples/cli/sample-apps Platform createCampaign \
    --namespace $AB_NAMESPACE \
    --body '{"description": "LJhGFDeclR1AEvpi", "discountConfig": {"categories": [{"categoryPath": "quNmdLahx04TjIrS", "includeSubCategories": false}, {"categoryPath": "NYMuJAN1T9LrO4By", "includeSubCategories": true}, {"categoryPath": "0bJs1Y8O7Z0NNN8t", "includeSubCategories": true}], "currencyCode": "BekGP4qYAAwy8dQj", "currencyNamespace": "sQoGO5GUxAgVguas", "discountAmount": 17, "discountPercentage": 12, "discountType": "AMOUNT", "items": [{"itemId": "cEh3mqBpEoKDqEZb", "itemName": "IBcFf56tcm5LLfKx"}, {"itemId": "IJpfmfWOieRZ9OkK", "itemName": "4cWfgq8swfqaBdRZ"}, {"itemId": "Nos43agxC1qEifOS", "itemName": "l39SJih8SQwidPRT"}], "restrictType": "NONE", "stackable": true}, "items": [{"extraSubscriptionDays": 46, "itemId": "RcukJUV7GqhOuanu", "itemName": "MtEnbks8pyQBpMFu", "quantity": 5}, {"extraSubscriptionDays": 5, "itemId": "qlJVVG0DUD8xnvrM", "itemName": "QOkv2odSfcsI2EPl", "quantity": 69}, {"extraSubscriptionDays": 32, "itemId": "6lntlWJUdg2bt8RW", "itemName": "0Z5zisuk5qGD7gcF", "quantity": 80}], "maxRedeemCountPerCampaignPerUser": 82, "maxRedeemCountPerCode": 38, "maxRedeemCountPerCodePerUser": 79, "maxSaleCount": 88, "name": "WjoaWJz5MSQ2wzLN", "redeemEnd": "1997-06-27T00:00:00Z", "redeemStart": "1972-02-17T00:00:00Z", "redeemType": "DISCOUNT", "status": "ACTIVE", "tags": ["uQvq0wqJEv3zro56", "z17Dc3ZlIuSNWBOb", "TpbHIyGWM5TDBUhv"], "type": "REDEMPTION"}' \
    > test.out 2>&1
eval_tap $? 14 'CreateCampaign' test.out

#- 15 GetCampaign
samples/cli/sample-apps Platform getCampaign \
    --campaignId 'HptIkNzoF0StQVV2' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 15 'GetCampaign' test.out

#- 16 UpdateCampaign
samples/cli/sample-apps Platform updateCampaign \
    --campaignId 'SgUOXRcVicrGiTdu' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "g07tJ1JAPUjri9iW", "discountConfig": {"categories": [{"categoryPath": "X9VIDwjfXW9vIJwq", "includeSubCategories": true}, {"categoryPath": "AHbMLHU8Bd32TWs8", "includeSubCategories": true}, {"categoryPath": "pJz4ks9TiO1lqvK9", "includeSubCategories": true}], "currencyCode": "81vtEl2skL58OLOx", "currencyNamespace": "f77pdKiHdGXkKmO0", "discountAmount": 4, "discountPercentage": 92, "discountType": "AMOUNT", "items": [{"itemId": "s5GoWeEAuOaE1IaE", "itemName": "peR73qarPfNOO2MY"}, {"itemId": "CXkXmnIjx0fALKiH", "itemName": "gjvxunK4nUM7v5Mq"}, {"itemId": "kxfMtdCZi96TYM6B", "itemName": "EmmbnwsmvMNFqSsq"}], "restrictType": "ITEMS_AND_CATEGORIES", "stackable": true}, "items": [{"extraSubscriptionDays": 34, "itemId": "ae82xZXtC95WzqBI", "itemName": "1nPD4fZBzSnzNe6j", "quantity": 36}, {"extraSubscriptionDays": 77, "itemId": "yIK0fWtFUTh2Gbtx", "itemName": "hNMCPYOPZFVLYEnQ", "quantity": 59}, {"extraSubscriptionDays": 63, "itemId": "M1cCZurtOHQXiUT4", "itemName": "5crNsKGtz1HrFSn8", "quantity": 71}], "maxRedeemCountPerCampaignPerUser": 90, "maxRedeemCountPerCode": 61, "maxRedeemCountPerCodePerUser": 75, "maxSaleCount": 86, "name": "wTIMOdr5stMGZHrL", "redeemEnd": "1985-01-30T00:00:00Z", "redeemStart": "1986-11-07T00:00:00Z", "redeemType": "DISCOUNT", "status": "INACTIVE", "tags": ["usO9CMlV5mMRZHHa", "m4YWqQao6q3Qo7wB", "BUhHbFHsNhdJXUDg"]}' \
    > test.out 2>&1
eval_tap $? 16 'UpdateCampaign' test.out

#- 17 RenameBatch
samples/cli/sample-apps Platform renameBatch \
    --campaignId 'YVP4TbTUAx6OZP7g' \
    --namespace $AB_NAMESPACE \
    --body '{"newName": "uZJ9e7FSt4j1ID50", "oldName": "pgbMY8Rd1vWDJKVx"}' \
    > test.out 2>&1
eval_tap $? 17 'RenameBatch' test.out

#- 18 QueryCampaignBatchNames
samples/cli/sample-apps Platform queryCampaignBatchNames \
    --campaignId 'YrkwnjDIAVjnCuhi' \
    --namespace $AB_NAMESPACE \
    --batchName 'TClLDoKcUXGmJHRL' \
    --limit '32' \
    > test.out 2>&1
eval_tap $? 18 'QueryCampaignBatchNames' test.out

#- 19 GetCampaignDynamic
samples/cli/sample-apps Platform getCampaignDynamic \
    --campaignId 'otklWaxEBlptJHlI' \
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
    --body '{"enableInventoryCheck": false, "itemDeletionCheckConfig": ["ENTITLEMENT", "CATALOG"]}' \
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
    --body '{"appConfig": {"appName": "CjlLiMnNDhd5vuSs"}, "customConfig": {"connectionType": "INSECURE", "grpcServerAddress": "YC7d8BBHFkM8A6YG"}, "extendType": "CUSTOM"}' \
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
    --body '{"appConfig": {"appName": "dxt9n6jHameetuIw"}, "customConfig": {"connectionType": "INSECURE", "grpcServerAddress": "V10m96HKt4E6GhcY"}, "extendType": "APP"}' \
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
    --storeId 't9UOhoz3YK2ThM7j' \
    > test.out 2>&1
eval_tap $? 31 'GetRootCategories' test.out

#- 32 CreateCategory
samples/cli/sample-apps Platform createCategory \
    --namespace $AB_NAMESPACE \
    --storeId 'MGW8ccNpx0cySy7H' \
    --body '{"categoryPath": "xaFHA8ZrBLvWwWCa", "localizationDisplayNames": {"HxqsPWXP6FnQot9H": "PzW1u53JZcthysY1", "ViuXbB4luhmueEou": "vPPNOAbKBbweIjVJ", "s890rE8RJcLlY2X1": "ErjvzHD00odyFubN"}}' \
    > test.out 2>&1
eval_tap $? 32 'CreateCategory' test.out

#- 33 ListCategoriesBasic
samples/cli/sample-apps Platform listCategoriesBasic \
    --namespace $AB_NAMESPACE \
    --storeId 'hVAQNASsuS8EzPQZ' \
    > test.out 2>&1
eval_tap $? 33 'ListCategoriesBasic' test.out

#- 34 GetCategory
samples/cli/sample-apps Platform getCategory \
    --categoryPath 'AKTSA86TJDngXylw' \
    --namespace $AB_NAMESPACE \
    --storeId 'IMNdhNDBHofaZcVT' \
    > test.out 2>&1
eval_tap $? 34 'GetCategory' test.out

#- 35 UpdateCategory
samples/cli/sample-apps Platform updateCategory \
    --categoryPath 'Tnao0VudPaRPkmur' \
    --namespace $AB_NAMESPACE \
    --storeId 'qpNvJ9fPIQgve6I1' \
    --body '{"localizationDisplayNames": {"YQFoK53PN2E1Z9qs": "SWrHcduIBM4i7xHH", "3Jg5Lum15f59258L": "xsoH82zmED9KabXI", "HcPjVmf5kmiZIMTt": "9JTxxYNH4A1GZfjm"}}' \
    > test.out 2>&1
eval_tap $? 35 'UpdateCategory' test.out

#- 36 DeleteCategory
samples/cli/sample-apps Platform deleteCategory \
    --categoryPath 'fpGKRPsmaL96jvKT' \
    --namespace $AB_NAMESPACE \
    --storeId 'LlQbvKan4ammddwt' \
    > test.out 2>&1
eval_tap $? 36 'DeleteCategory' test.out

#- 37 GetChildCategories
samples/cli/sample-apps Platform getChildCategories \
    --categoryPath 'JxXPNp3PkZD3GQ0C' \
    --namespace $AB_NAMESPACE \
    --storeId 'lp1ROUxYiGnSsEZ2' \
    > test.out 2>&1
eval_tap $? 37 'GetChildCategories' test.out

#- 38 GetDescendantCategories
samples/cli/sample-apps Platform getDescendantCategories \
    --categoryPath 'wgOQLE58FDUygWaG' \
    --namespace $AB_NAMESPACE \
    --storeId 'QVZLJfCVCi8PJ2Z0' \
    > test.out 2>&1
eval_tap $? 38 'GetDescendantCategories' test.out

#- 39 QueryCodes
samples/cli/sample-apps Platform queryCodes \
    --campaignId 'oNgUzIXDNW3hg4ak' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --batchName 'XZFpcwFdoJukPxIm' \
    --batchNo '[76, 60, 64]' \
    --code 'rbyB262xz8glq2zn' \
    --limit '93' \
    --offset '0' \
    --withBatchName 'true' \
    > test.out 2>&1
eval_tap $? 39 'QueryCodes' test.out

#- 40 CreateCodes
samples/cli/sample-apps Platform createCodes \
    --campaignId 'd8W9dbJhHGlAeT7r' \
    --namespace $AB_NAMESPACE \
    --body '{"batchName": "eRByYlhFdafQxsF1", "codeValue": "wqzzNx2lVftPMpvJ", "quantity": 45}' \
    > test.out 2>&1
eval_tap $? 40 'CreateCodes' test.out

#- 41 Download
samples/cli/sample-apps Platform download \
    --campaignId 'LCiA6Pf42tvde3mZ' \
    --namespace $AB_NAMESPACE \
    --batchName 'z11wQLACHeVW1noo' \
    --batchNo '[10, 74, 7]' \
    --withBatchName 'false' \
    > test.out 2>&1
eval_tap $? 41 'Download' test.out

#- 42 BulkDisableCodes
samples/cli/sample-apps Platform bulkDisableCodes \
    --campaignId 'fMLxQ0MXL6GBHdFF' \
    --namespace $AB_NAMESPACE \
    --batchName '31vzapsBJ9wgn9yT' \
    --batchNo '[35, 77, 3]' \
    > test.out 2>&1
eval_tap $? 42 'BulkDisableCodes' test.out

#- 43 BulkEnableCodes
samples/cli/sample-apps Platform bulkEnableCodes \
    --campaignId 'iPAlXhXFMTh7QgpR' \
    --namespace $AB_NAMESPACE \
    --batchName 'xTFWze9X6Jl74BuB' \
    --batchNo '[81, 96, 99]' \
    > test.out 2>&1
eval_tap $? 43 'BulkEnableCodes' test.out

#- 44 QueryRedeemHistory
samples/cli/sample-apps Platform queryRedeemHistory \
    --campaignId 'TaKG9L4BRnsj6tZw' \
    --namespace $AB_NAMESPACE \
    --code 'qyOouqsfRLseawtu' \
    --limit '42' \
    --offset '57' \
    --userId '31WPEW1SVERElm1p' \
    > test.out 2>&1
eval_tap $? 44 'QueryRedeemHistory' test.out

#- 45 GetCode
samples/cli/sample-apps Platform getCode \
    --code '66l3WnLsQqe1ZhN2' \
    --namespace $AB_NAMESPACE \
    --redeemable 'true' \
    --withBatchName 'false' \
    > test.out 2>&1
eval_tap $? 45 'GetCode' test.out

#- 46 DisableCode
samples/cli/sample-apps Platform disableCode \
    --code 'j1vbae4nhsu1DESK' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 46 'DisableCode' test.out

#- 47 EnableCode
samples/cli/sample-apps Platform enableCode \
    --code '5FRwg0CxcdYhiX07' \
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
    --body '{"currencyCode": "Fjk2P0Ehh9igue6p", "currencySymbol": "IIR9WUH8Sa9a3oM1", "currencyType": "REAL", "decimals": 93, "localizationDescriptions": {"oNJIYtaBjg4zrRxi": "yti6iRjpxaUQPwkK", "b6oWOgOq1lEE7MZR": "t1Zjt9wyBkUkxLla", "SporVnXYUPourcb9": "d5nOVdeXmCugLRx4"}}' \
    > test.out 2>&1
eval_tap $? 52 'CreateCurrency' test.out

#- 53 UpdateCurrency
samples/cli/sample-apps Platform updateCurrency \
    --currencyCode 'QbkPGWrlJPOujyiV' \
    --namespace $AB_NAMESPACE \
    --body '{"localizationDescriptions": {"vegiQBemDU011gzV": "O3qJeS0If2wycFJw", "4tnbTM5SOpF1Jhg3": "CC15VeWuNAgmqaOe", "h0XTROBggrRBHTV0": "GdHvQlVERW7w8FGt"}}' \
    > test.out 2>&1
eval_tap $? 53 'UpdateCurrency' test.out

#- 54 DeleteCurrency
samples/cli/sample-apps Platform deleteCurrency \
    --currencyCode 'G9syYkKBecMz88XT' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 54 'DeleteCurrency' test.out

#- 55 GetCurrencyConfig
samples/cli/sample-apps Platform getCurrencyConfig \
    --currencyCode 'pUDqf1Oi40b28nHc' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 55 'GetCurrencyConfig' test.out

#- 56 GetCurrencySummary
samples/cli/sample-apps Platform getCurrencySummary \
    --currencyCode 'CTQaMAWE1Hgkha5O' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 56 'GetCurrencySummary' test.out

#- 57 GetDLCItemConfigHistory
samples/cli/sample-apps Platform getDLCItemConfigHistory \
    --namespace $AB_NAMESPACE \
    --dlcId 'R270vaT478H6TYS7' \
    > test.out 2>&1
eval_tap $? 57 'GetDLCItemConfigHistory' test.out

#- 58 RestoreDLCItemConfigHistory
samples/cli/sample-apps Platform restoreDLCItemConfigHistory \
    --id 'hPpyp3Fe4r44K3Uk' \
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
    --body '{"data": [{"autoUpdate": true, "enableRevocation": false, "id": "6Dj3LNaQeIBVxZW1", "rewards": [{"currency": {"currencyCode": "EZRHlCKSd1oDne3S", "namespace": "QlTPqNA7w8Luq13E"}, "item": {"itemId": "mONfydgiVJXqvJJM", "itemName": "HPGH0ulIkhIrXLLq", "itemSku": "eUcFrtnt3ja2C9Xt", "itemType": "8kPQblFpkjNA2BDb"}, "quantity": 75, "type": "ITEM"}, {"currency": {"currencyCode": "9HZhFXbqbr2iyMUF", "namespace": "KQEnYfoSB3p9O594"}, "item": {"itemId": "Xwmx7WXw7xRGkpJN", "itemName": "nORNRnGpzIjkvgx1", "itemSku": "ck5Qsgr8MoiEMm2l", "itemType": "sIMSnd2thJu2fImf"}, "quantity": 93, "type": "ITEM"}, {"currency": {"currencyCode": "QNgqqxDnraScu8NG", "namespace": "ppu4gWUgjlzBFOb5"}, "item": {"itemId": "qJV7B6eJ5toDECfM", "itemName": "wNAEQAieWdUMmhQx", "itemSku": "jW0ZoNcZlEsOZYXT", "itemType": "mUTp0i3id2XEKE1s"}, "quantity": 30, "type": "CURRENCY"}], "rvn": 45}, {"autoUpdate": false, "enableRevocation": false, "id": "zFPyOzl4m0lBECXB", "rewards": [{"currency": {"currencyCode": "1WU6Rzof5yRdzQWt", "namespace": "dicDuvnGU2Xj4K3z"}, "item": {"itemId": "9udKwj0zTcpTfPZJ", "itemName": "aSRf7kBUZEAGqj3A", "itemSku": "AQ9WK6AVYlfynbQ1", "itemType": "yrpgALT9xS1IeiLD"}, "quantity": 37, "type": "ITEM"}, {"currency": {"currencyCode": "4MOYlbzQNq4H68eN", "namespace": "BZZaTPurlyPM5c4p"}, "item": {"itemId": "8n6kAmdoqDAqI3b9", "itemName": "3CEpqfgOtkDIvsQh", "itemSku": "nBCHULxyUcfslc2f", "itemType": "6RidfRd3A2a4UP9H"}, "quantity": 28, "type": "ITEM"}, {"currency": {"currencyCode": "XkGpMvtmUTXGjrlN", "namespace": "7LXKunLpciayWgTQ"}, "item": {"itemId": "y70ZxInVWV9HTNcc", "itemName": "D2O8Hhmh8kJYgFa1", "itemSku": "EchbvTx3wEUVKJ6u", "itemType": "Lo1qCPwWYaelDPpW"}, "quantity": 35, "type": "CURRENCY"}], "rvn": 82}, {"autoUpdate": false, "enableRevocation": true, "id": "HaCs1tXBihOQlM3V", "rewards": [{"currency": {"currencyCode": "zrHWSarojNAbJBdY", "namespace": "IRR9r7iltAsIN7jP"}, "item": {"itemId": "8fbIkJNh8xtq5lia", "itemName": "JDOEnjBSj4m7Nrqt", "itemSku": "EpSiky1QmNRtV5hG", "itemType": "folptXFfQEuAweLF"}, "quantity": 55, "type": "CURRENCY"}, {"currency": {"currencyCode": "k9Ovy49RrPuTcleW", "namespace": "ATU6ACT509BpI6m1"}, "item": {"itemId": "tydCXyA7tJCbZssH", "itemName": "fUV5Gof8fZVfHVv5", "itemSku": "RjD5u2eDZE7UkAnM", "itemType": "jdaINCStbYLUFfdw"}, "quantity": 24, "type": "ITEM"}, {"currency": {"currencyCode": "366jI8oVsXOp8pzc", "namespace": "Wz4cbT2SMVLmILar"}, "item": {"itemId": "aYt8efXP2xjJE4FF", "itemName": "c4bUohXC2GkROqRv", "itemSku": "jgJanZl3u4mnLydT", "itemType": "kWw0neVk1tR4S66N"}, "quantity": 81, "type": "CURRENCY"}], "rvn": 50}]}' \
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
    --body '{"data": [{"platform": "STEAM", "platformDlcIdMap": {"7YHhiglcDvQKQHOs": "1xLwroKU6GKNYfoA", "blnloieb1QXgYGEa": "JHUJduJll01BMPTv", "85tWhSI2wvMjUlKt": "tqda5PFF191ldJnz"}}, {"platform": "XBOX", "platformDlcIdMap": {"lFlOD4Wtn9cnlzgJ": "Fm7zpIwhIoBiajq0", "9R3JHfbCFotMJhLV": "fDDfKlbFyuchoyvF", "lPa8o8aNEC3YTILB": "IZ0lVamgpWoSXX3L"}}, {"platform": "XBOX", "platformDlcIdMap": {"fn8yEI9rCmUrlj0U": "CjvaUfsPWBJks5cX", "2qKbsWqBSkm6wBuM": "iRzBFci5Cm6gNJK4", "vuiASY1cSNRYMBnG": "Qzi1zadBsFpNnbxV"}}]}' \
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
    --appType 'DEMO' \
    --entitlementClazz 'ENTITLEMENT' \
    --entitlementName '7axjX17XErgtmGks' \
    --itemId '["FqnwxIHAJvEOub7X", "Jxfdc5KGSk5OpAre", "xZY8i66gg5R4XRQh"]' \
    --limit '28' \
    --offset '93' \
    --origin 'Nintendo' \
    --userId 'BK3hVRetYZZGmOGQ' \
    > test.out 2>&1
eval_tap $? 65 'QueryEntitlements' test.out

#- 66 QueryEntitlementsByItemIds
samples/cli/sample-apps Platform queryEntitlementsByItemIds \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --itemIds '["dd4xHLckcD6uaOHI", "yWpvJPDXjVbgQ4tR", "pxhl8Avy1f2X6k9O"]' \
    --limit '78' \
    --offset '97' \
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
    --body '{"entitlementGrantList": [{"collectionId": "L0n5Or1U5SgEdUs1", "endDate": "1996-05-30T00:00:00Z", "grantedCode": "MmehszuQ6MQO91Oa", "itemId": "zmxO9NAmrwmWbZrt", "itemNamespace": "bLZAPuVnym7ICviW", "language": "Qh", "metadata": {"4oi9ip14BTiKAED0": {}, "89N5ZGz3RkjevCkN": {}, "9xlVEld9R35RV8b7": {}}, "origin": "System", "quantity": 21, "region": "XrqvDYQxAljvwMs8", "source": "ACHIEVEMENT", "startDate": "1994-02-01T00:00:00Z", "storeId": "KuMsozLszHwJ20DF"}, {"collectionId": "rW2TfVSKxELwmG7O", "endDate": "1986-09-23T00:00:00Z", "grantedCode": "0xjoTOJ1R8IBp1ot", "itemId": "IobAx4nGEPMRaIA2", "itemNamespace": "Gcf0xcG56eDjtThT", "language": "Rdjh", "metadata": {"3nFEdkoSLXU2CUB9": {}, "FRXGftwz0QggmdSy": {}, "E4n57UGHrn1GU33I": {}}, "origin": "GooglePlay", "quantity": 29, "region": "o07J3wj1igNBs47D", "source": "REWARD", "startDate": "1986-05-02T00:00:00Z", "storeId": "cCABP8yQnFFs5L5N"}, {"collectionId": "GKeGo0H9qxFO8IDS", "endDate": "1990-08-15T00:00:00Z", "grantedCode": "2678fgK5iJy2xKys", "itemId": "nwdbTEm2IY240qPw", "itemNamespace": "0m1VgLd7CvOZYUrC", "language": "sWU-EekZ_RG", "metadata": {"aVEpQlcmQI978Nu1": {}, "qZJyyX9Yv62lqYMw": {}, "3LGRKhPwvjUPzXqA": {}}, "origin": "IOS", "quantity": 70, "region": "s5ix9GcOhrSRB2zC", "source": "PROMOTION", "startDate": "1983-06-27T00:00:00Z", "storeId": "EvvpJHOP0TVP5nIS"}], "userIds": ["nMFxrSZO7BISoX10", "acFHMgVTMKMZWHXa", "bee3wUrgG6vdBefF"]}' \
    > test.out 2>&1
eval_tap $? 69 'GrantEntitlements' test.out

#- 70 RevokeEntitlements
samples/cli/sample-apps Platform revokeEntitlements \
    --namespace $AB_NAMESPACE \
    --body '["DArSl1hGsHJ1Vi1m", "3UVvDJBa5jD36abH", "jkUq20pgQoATVXF6"]' \
    > test.out 2>&1
eval_tap $? 70 'RevokeEntitlements' test.out

#- 71 GetEntitlement
samples/cli/sample-apps Platform getEntitlement \
    --entitlementId 'PpvmJiZ5KqtslGKi' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 71 'GetEntitlement' test.out

#- 72 QueryFulfillmentHistories
samples/cli/sample-apps Platform queryFulfillmentHistories \
    --namespace $AB_NAMESPACE \
    --limit '30' \
    --offset '55' \
    --status 'FAIL' \
    --userId 'U9gQJoRLZY4s7mtu' \
    > test.out 2>&1
eval_tap $? 72 'QueryFulfillmentHistories' test.out

#- 73 QueryIAPClawbackHistory
samples/cli/sample-apps Platform queryIAPClawbackHistory \
    --namespace $AB_NAMESPACE \
    --endTime 'b1d07EQk2KxEL96U' \
    --eventType 'REFUND' \
    --externalOrderId 'ezvV8q335gyfkTBQ' \
    --limit '62' \
    --offset '75' \
    --startTime 'hSVqf3Z9jMNHie3Y' \
    --status 'FAIL' \
    --userId 'WydCxfbA3SwFJoqQ' \
    > test.out 2>&1
eval_tap $? 73 'QueryIAPClawbackHistory' test.out

#- 74 MockPlayStationStreamEvent
samples/cli/sample-apps Platform mockPlayStationStreamEvent \
    --namespace $AB_NAMESPACE \
    --body '{"body": {"account": "i0Vq7NNfG5ip0BnN", "additionalData": {"entitlement": [{"clientTransaction": [{"amountConsumed": 49, "clientTransactionId": "vAciVRsXLMIxyGUx"}, {"amountConsumed": 2, "clientTransactionId": "hCAp4hJDu2E2BLL0"}, {"amountConsumed": 85, "clientTransactionId": "QVlTdmIXXYfPfAbR"}], "entitlementId": "sLE1keIyPwKuXPlf", "usageCount": 5}, {"clientTransaction": [{"amountConsumed": 42, "clientTransactionId": "SVIajEPJLysw0yi1"}, {"amountConsumed": 22, "clientTransactionId": "fJhmUjDWYREDRWH3"}, {"amountConsumed": 55, "clientTransactionId": "lvSZN4gGX2zrLNkc"}], "entitlementId": "wZBCYh58X54cfDDo", "usageCount": 96}, {"clientTransaction": [{"amountConsumed": 69, "clientTransactionId": "mrZSiSl0WohCVFgH"}, {"amountConsumed": 71, "clientTransactionId": "vytqHmx4dp8rXVvp"}, {"amountConsumed": 44, "clientTransactionId": "A0QNPyFBVecQWXJk"}], "entitlementId": "MEuUsMFvpk2RrR37", "usageCount": 90}], "purpose": "PhjWuBkaq3hqYKAb"}, "originalTitleName": "3t9Co4ZB5NghcUVb", "paymentProductSKU": "ZjRjmI3lJU3NBI3u", "purchaseDate": "VKUhlPiPGz2WAKuG", "sourceOrderItemId": "Nkg8Pb0R1oqcQKgm", "titleName": "Gsug6gtnqB6IiPa1"}, "eventDomain": "K9hXC5zPgMiZJ8lG", "eventSource": "VZ5PiE8D8xwQMSb2", "eventType": "woEddTij4HY7r48m", "eventVersion": 66, "id": "0cJuA3ajtk256kq7", "timestamp": "b78jvrk2n3Qt3dw9"}' \
    > test.out 2>&1
eval_tap $? 74 'MockPlayStationStreamEvent' test.out

#- 75 MockXblClawbackEvent
samples/cli/sample-apps Platform mockXblClawbackEvent \
    --namespace $AB_NAMESPACE \
    --body '{"data": {"eventDate": "ew6cQbnK5uAci66J", "eventState": "8eoRyxgZyzfr6xa3", "lineItemId": "CJq44hHCBDB2VusV", "orderId": "Y7IR7Ai1IhyXFYj2", "productId": "Oacspd29AiLUUb2c", "productType": "GJzyNRh691YTfWNk", "purchasedDate": "zPb8t7QceiXB0JqD", "sandboxId": "O6KdeEwuDuomOfpf", "skuId": "TQmE8fog4AhbTblB", "subscriptionData": {"consumedDurationInDays": 62, "dateTime": "oZVq5ls0qGdNqNvb", "durationInDays": 15, "recurrenceId": "11edItwO9Jk5BOKM"}}, "datacontenttype": "w0dQ0IrY8MILl5S0", "id": "qAU0ke5dpr6Zpghf", "source": "D3MzEcBtIDDmdtQu", "specVersion": "XSFIC3YY6jQ3SFF0", "subject": "38Est2DgqbpTlrXI", "time": "iXoCpMHKoa34yUxg", "traceparent": "2q5jOBYzYmTDuFeg", "type": "nUTBXM2xnSCdG4de"}' \
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
    --body '{"appAppleId": 77, "bundleId": "2mvSwMHpH3ifBJjI", "issuerId": "tW4yhJa62e6LevU2", "keyId": "zmTIBpj5ZNUHuljt", "password": "wlIdFnYcyORRSdQs", "version": "V2"}' \
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
    --body '{"sandboxId": "hsidvyfbxqsfyquJ"}' \
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
    --body '{"applicationName": "hmEU5iIuF9VbP84r", "notificationTokenAudience": "fi9ezVSliXpfhPBk", "notificationTokenEmail": "lL611FM3NpWfpJW4", "packageName": "wbTilsWXvYXLOC3q", "serviceAccountId": "O4t7dKcRiWFh9uOu"}' \
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
    --body '{"data": [{"itemIdentity": "WdLeROJ3Hoa2bodF", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"2JFBxJTGlbzjvZS9": "XN2tUQdmNlWNMIAc", "qnkyeW8YfGg3wr4G": "fegzKSs1tKRKrm1X", "KcCEcJNVV2XKtBnN": "pMugRxKYYZpkALK9"}}, {"itemIdentity": "qy2dCMpjp1GtJNga", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"OFpFOZr1bVlcIEDL": "GDHVMR4Qz5OCReg6", "UDC0SNpzIyfz0Des": "GXM0yj7YBJYfH2XE", "58ymrJtOgnWAbOpq": "yLZxiq8ACaeLaMgb"}}, {"itemIdentity": "h3AmUmGbOz5xkpRq", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"uGPpV13T98PKrA4m": "VTDgKht3kul1xQ5W", "DJ7bX3LvQpIvE7An": "sLuoo5JIFT6e5PCI", "cAnfVppKYqFk0Zea": "7oxsMs3am9R9wEU8"}}]}' \
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
    --body '{"appId": "FSxoxoGq9TqzazOj", "appSecret": "dEzRP2LEuKHZk1kd", "webhookVerifyToken": "LO6azO8hPrnXoz3D"}' \
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
    --body '{"sku": "baKQUi5YOBZWKRJF"}' \
    > test.out 2>&1
eval_tap $? 94 'CreateOculusSubscriptionGroup' test.out

#- 95 DeleteOculusSubscriptionGroup
samples/cli/sample-apps Platform deleteOculusSubscriptionGroup \
    --namespace $AB_NAMESPACE \
    --sku '4wURqsU3tiS6YAM6' \
    > test.out 2>&1
eval_tap $? 95 'DeleteOculusSubscriptionGroup' test.out

#- 96 ListOculusSubscriptionGroupTier
samples/cli/sample-apps Platform listOculusSubscriptionGroupTier \
    --namespace $AB_NAMESPACE \
    --sku '8vBaNpdROaSUGqbl' \
    > test.out 2>&1
eval_tap $? 96 'ListOculusSubscriptionGroupTier' test.out

#- 97 AddTierIntoMetaQuestSubscriptionGroup
samples/cli/sample-apps Platform addTierIntoMetaQuestSubscriptionGroup \
    --namespace $AB_NAMESPACE \
    --body '{"groupSku": "DEPXQVOL0m2MssfX", "sku": "J9I4TEcTJxzHhuYe"}' \
    > test.out 2>&1
eval_tap $? 97 'AddTierIntoMetaQuestSubscriptionGroup' test.out

#- 98 DeleteOculusSubscriptionTier
samples/cli/sample-apps Platform deleteOculusSubscriptionTier \
    --namespace $AB_NAMESPACE \
    --sku '4p1MP0VF9IDNvb4D' \
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
    --body '{"backOfficeServerClientId": "DGf1JBLDknE63UYg", "backOfficeServerClientSecret": "hQDY7Ag5o01oJqdK", "enableStreamJob": true, "environment": "lKZim6AGJ7iqe6Mh", "streamName": "xwRlM0F4zdgqdBuG", "streamPartnerName": "kHtdpvOFPRIGJPWx"}' \
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
    --body '{"backOfficeServerClientId": "jkd2Wgy4TeSB23xA", "backOfficeServerClientSecret": "UCNTrlRjXEtwhq7I", "enableStreamJob": true, "environment": "3BHTYbpFOps9Apio", "streamName": "zhnIebUi9pG5eKJj", "streamPartnerName": "sUPYkxJxRtwIIoPM"}' \
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
    --body '{"appId": "1BypOfgb9ygvSFg3", "env": "SANDBOX", "publisherAuthenticationKey": "eXCFL7q1Mf0gfrk0", "syncMode": "TRANSACTION"}' \
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
    --body '{"clientId": "I79oGvx7GdEm6gY6", "clientSecret": "pCRZekvxoTlnNX3D", "organizationId": "sB6y6msiTj3dwETI"}' \
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
    --body '{"enableClawback": true, "entraAppClientId": "I4m4EClJLoCLIOKq", "entraAppClientSecret": "XAQ959OkaDeDRsnF", "entraTenantId": "DL9qrkfcBFc76d1e", "relyingPartyCert": "hzWqc2pZXylunsHg"}' \
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
    --password 'SZ5E4VprQ7N349vI' \
    > test.out 2>&1
eval_tap $? 113 'UpdateXblBPCertFile' test.out

#- 114 QueryThirdPartyNotifications
samples/cli/sample-apps Platform queryThirdPartyNotifications \
    --namespace $AB_NAMESPACE \
    --endDate 'it9RivvldYOs8dND' \
    --externalId 'xCQDrkFpmT9tUFD2' \
    --limit '12' \
    --offset '90' \
    --source 'APPLE' \
    --startDate 'zVxTLRsXy976IDfi' \
    --status 'IGNORED' \
    --type 'Vd70hZITo55WtE7W' \
    > test.out 2>&1
eval_tap $? 114 'QueryThirdPartyNotifications' test.out

#- 115 QueryAbnormalTransactions
samples/cli/sample-apps Platform queryAbnormalTransactions \
    --namespace $AB_NAMESPACE \
    --limit '68' \
    --offset '16' \
    --orderId '3Fg8UjM9L8brd6by' \
    --steamId '1nAYchdt6naDRzYF' \
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
    --body '{"env": "SANDBOX", "lastTime": "1988-11-23T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 117 'AdminResetSteamJobTime' test.out

#- 118 AdminRefundIAPOrder
samples/cli/sample-apps Platform adminRefundIAPOrder \
    --iapOrderNo 'QS9CRzjyQUfqgKEm' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 118 'AdminRefundIAPOrder' test.out

#- 119 QuerySteamReportHistories
samples/cli/sample-apps Platform querySteamReportHistories \
    --namespace $AB_NAMESPACE \
    --limit '8' \
    --offset '97' \
    --orderId 'eec2rfK6cYiA843F' \
    --processStatus 'PROCESSED' \
    --steamId 'pbXPbqnlxwInQVrb' \
    > test.out 2>&1
eval_tap $? 119 'QuerySteamReportHistories' test.out

#- 120 QueryThirdPartySubscription
samples/cli/sample-apps Platform queryThirdPartySubscription \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --groupId 'oWjSIPN4dJm5Hxaz' \
    --limit '73' \
    --offset '93' \
    --platform 'PLAYSTATION' \
    --productId 'wEnKyN3x5f6EfPpf' \
    --userId 'vSerp17VABteq8LF' \
    > test.out 2>&1
eval_tap $? 120 'QueryThirdPartySubscription' test.out

#- 121 GetIAPOrderConsumeDetails
samples/cli/sample-apps Platform getIAPOrderConsumeDetails \
    --iapOrderNo '3QZop5IfJMowoEm1' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 121 'GetIAPOrderConsumeDetails' test.out

#- 122 DownloadInvoiceDetails
samples/cli/sample-apps Platform downloadInvoiceDetails \
    --namespace $AB_NAMESPACE \
    --endTime 'oAs1ErHX7tDgh6p7' \
    --feature 'KfY7MRfzF2HNVkjI' \
    --itemId 'p6ud6I2sXMzD1fej' \
    --itemType 'LOOTBOX' \
    --startTime 'QEamr4N7qbHHZSoq' \
    > test.out 2>&1
eval_tap $? 122 'DownloadInvoiceDetails' test.out

#- 123 GenerateInvoiceSummary
samples/cli/sample-apps Platform generateInvoiceSummary \
    --namespace $AB_NAMESPACE \
    --endTime 'OEQIwYd0DA2EVJTt' \
    --feature 'ZaohXilbjjFFEUjQ' \
    --itemId 'EpyrRlPomMc7jtnA' \
    --itemType 'EXTENSION' \
    --startTime 'T8C5MmGgVlQqouwQ' \
    > test.out 2>&1
eval_tap $? 123 'GenerateInvoiceSummary' test.out

#- 124 SyncInGameItem
samples/cli/sample-apps Platform syncInGameItem \
    --namespace $AB_NAMESPACE \
    --storeId 'ugjS9S9spCEiBS5B' \
    --body '{"categoryPath": "B7AkN7PSUwqqM3YE", "targetItemId": "w0gSVQt7vChu1qDo", "targetNamespace": "oVEiREXmhkcxkkNr"}' \
    > test.out 2>&1
eval_tap $? 124 'SyncInGameItem' test.out

#- 125 CreateItem
samples/cli/sample-apps Platform createItem \
    --namespace $AB_NAMESPACE \
    --storeId 'GGvOHaWvFQnHtVbf' \
    --body '{"appId": "6d3eQM9a7KovzSjq", "appType": "GAME", "baseAppId": "hMP8lmoxc08eHXth", "boothName": "1swnB6rhNT5xr7R5", "categoryPath": "iDS8I2ozPKC8iHfX", "clazz": "NYdEfMZMcHY4Jgde", "displayOrder": 26, "entitlementType": "DURABLE", "ext": {"1TQCAQKPmZAEEsai": {}, "n0GKscDxshK6aN1Y": {}, "GejFIYJwCvlBHzDG": {}}, "features": ["IHLyatakmWadEbCh", "Asc7d9l3CKGUUXzc", "Z6KKaOewHbjcSkGS"], "flexible": true, "images": [{"as": "jkLxOAs97LbSGx0y", "caption": "qj1xpoC061oEezLV", "height": 81, "imageUrl": "sS9d6pUUH5yhJWzu", "smallImageUrl": "r7UX1doEa3JzvKNZ", "width": 27}, {"as": "nX9ko0Ljpj9nCiCS", "caption": "6BjeojKvVEDMU2dj", "height": 32, "imageUrl": "ZP6rQ8K2xtPtwj1J", "smallImageUrl": "zxIYSD1EMFNsEqzz", "width": 31}, {"as": "FQ6tROM30twuiK48", "caption": "2vvil4GCt4j1Kslp", "height": 85, "imageUrl": "fEWuHBoU0LOrJsjF", "smallImageUrl": "C8Ms1wDrjZ4R7A8M", "width": 54}], "inventoryConfig": {"customAttributes": {"4bFWgFitu7GaRsN3": {}, "83JduwP8swJKDGg9": {}, "6Hmn08pD16lDhZNL": {}}, "serverCustomAttributes": {"wCnhivHn8B2zQO40": {}, "f7myVGFaB0eRZV3B": {}, "WOfZrwwsnalCf9iM": {}}, "slotUsed": 97}, "itemId": "nLmFdg6bVuwJ3dmN", "itemIds": ["rDWEOAwOVgW7uvTp", "wz6jFKBXjwZlItSV", "wyabpYPUyha1hOT3"], "itemQty": {"6sz9Kv67QoYTfIfv": 13, "HjYi9exkar1afyek": 11, "YKTsdWtU9bCdGzsL": 12}, "itemType": "CODE", "listable": true, "localizations": {"qFMHTyoutpovIZmx": {"description": "257rp7WK7BsBzJ2C", "localExt": {"Oqf4Pf8zOddF5koi": {}, "3cj2EYjUKgwV90Qc": {}, "PI498b2B45GG1lLS": {}}, "longDescription": "oTT4VEqvNuYSuxkv", "title": "34NNiemRS95gVQIu"}, "9t7Fhj2mhkaentVE": {"description": "4rPbK05HZOtL6XCy", "localExt": {"2Z7JRdhyjJrwWp0y": {}, "o4PKNcQqMABwiKZv": {}, "wqLG9ZB0Bg1ZAMOO": {}}, "longDescription": "bM3seUq1BlF0cFBJ", "title": "RZxhfhSVQMXXUfrs"}, "34gyRgTGbWqEnddq": {"description": "EJsx58zKIC8b0U3w", "localExt": {"DlgHrIGahhfY4IIU": {}, "vk87Exr1IYJIYZQy": {}, "ODGKY2JXOTY1AVRH": {}}, "longDescription": "TniAmkQ247cckrwo", "title": "s7XBmST513bqV9NC"}}, "lootBoxConfig": {"rewardCount": 81, "rewards": [{"lootBoxItems": [{"count": 63, "duration": 49, "endDate": "1980-08-06T00:00:00Z", "itemId": "h2IYdjCX0Cba5Nav", "itemSku": "jNqPWq0n9PmjXxFx", "itemType": "w9kVaw7JJe5FD4Qo"}, {"count": 7, "duration": 23, "endDate": "1979-07-15T00:00:00Z", "itemId": "XK1Vr5qhjOldf4XJ", "itemSku": "VikGjYoqpJa05UZw", "itemType": "fErC6S5ou9egz8m0"}, {"count": 8, "duration": 89, "endDate": "1971-09-28T00:00:00Z", "itemId": "ipqR0TnGb7XHOJA6", "itemSku": "xdasmy8TjRAPHZb2", "itemType": "wJuRQtFaQAIf2p6H"}], "name": "Tn0hxSNeLY22N5JF", "odds": 0.6949000282676437, "type": "PROBABILITY_GROUP", "weight": 40}, {"lootBoxItems": [{"count": 38, "duration": 5, "endDate": "1982-11-16T00:00:00Z", "itemId": "HzCrZ9kLHWyMraIA", "itemSku": "hxgDrkDBM3tuBzzD", "itemType": "e9r0LoblmJWF6xaQ"}, {"count": 97, "duration": 35, "endDate": "1999-07-04T00:00:00Z", "itemId": "9gYj2xtBY3x0mrfN", "itemSku": "0fMGMj2sjfw8pQZ2", "itemType": "N9z8qnC1QB1pjggj"}, {"count": 40, "duration": 66, "endDate": "1997-11-18T00:00:00Z", "itemId": "ZzKfPe8oZqqoFPoI", "itemSku": "UWCcitC3ozrthsju", "itemType": "pYAefqH4HJwwh7B5"}], "name": "h32F0JOdrteAlDiJ", "odds": 0.4223653072126662, "type": "PROBABILITY_GROUP", "weight": 13}, {"lootBoxItems": [{"count": 31, "duration": 84, "endDate": "1977-06-21T00:00:00Z", "itemId": "BdyKxGzz6bAy31UT", "itemSku": "U4Lt8D0Gj6G5BO7f", "itemType": "Dq80u5sAnLRPWKn4"}, {"count": 41, "duration": 16, "endDate": "1982-07-18T00:00:00Z", "itemId": "YoB9Faj4X1hTTZOS", "itemSku": "3LH9WzHthJK03CfN", "itemType": "m6kCwjZeXlOnz1mf"}, {"count": 94, "duration": 25, "endDate": "1988-11-17T00:00:00Z", "itemId": "VmXzWlbDZjx0iilC", "itemSku": "hnjhdZjsJSPQPGw1", "itemType": "Z2ssyQOC87AC144u"}], "name": "rKEUwEEGpbxjNscr", "odds": 0.3069987170195261, "type": "REWARD", "weight": 22}], "rollFunction": "DEFAULT"}, "maxCount": 85, "maxCountPerUser": 0, "name": "SRtUYvN0UK7D6pbp", "optionBoxConfig": {"boxItems": [{"count": 62, "duration": 33, "endDate": "1972-06-24T00:00:00Z", "itemId": "5zqCuVQbRQOPMm6y", "itemSku": "gMwnxI2NSwxDsPNr", "itemType": "8rZmTw0iqjhYJeMY"}, {"count": 44, "duration": 96, "endDate": "1987-03-31T00:00:00Z", "itemId": "Y2yN8z41CzkdtxNT", "itemSku": "xeHJOX5qV6Poku49", "itemType": "KJP4tZfAxOsiW1Io"}, {"count": 91, "duration": 12, "endDate": "1986-08-22T00:00:00Z", "itemId": "z8XNha1XhErXm1mZ", "itemSku": "NmNPo4qaNYQ5WQsa", "itemType": "y7LJjQ8Zy3CJASmI"}]}, "purchasable": false, "recurring": {"cycle": "MONTHLY", "fixedFreeDays": 28, "fixedTrialCycles": 98, "graceDays": 72}, "regionData": {"66DKZouEO6uXkzla": [{"currencyCode": "op1CrjJBmAE03Hwb", "currencyNamespace": "CtRZk1HQjON9R5IN", "currencyType": "REAL", "discountAmount": 71, "discountExpireAt": "1998-05-03T00:00:00Z", "discountPercentage": 60, "discountPurchaseAt": "1974-12-08T00:00:00Z", "expireAt": "1974-07-07T00:00:00Z", "price": 20, "purchaseAt": "1973-08-12T00:00:00Z", "trialPrice": 93}, {"currencyCode": "d8zhj0qI9RtJhjWJ", "currencyNamespace": "zJzqmw1Xo15ygpdB", "currencyType": "REAL", "discountAmount": 27, "discountExpireAt": "1991-05-28T00:00:00Z", "discountPercentage": 49, "discountPurchaseAt": "1978-07-30T00:00:00Z", "expireAt": "1989-12-17T00:00:00Z", "price": 71, "purchaseAt": "1979-02-06T00:00:00Z", "trialPrice": 27}, {"currencyCode": "uwQJfg4wGW9TIAYp", "currencyNamespace": "lOYsvvdmMwhzBm4U", "currencyType": "VIRTUAL", "discountAmount": 41, "discountExpireAt": "1972-06-16T00:00:00Z", "discountPercentage": 82, "discountPurchaseAt": "1983-09-29T00:00:00Z", "expireAt": "1993-09-15T00:00:00Z", "price": 41, "purchaseAt": "1981-04-03T00:00:00Z", "trialPrice": 29}], "tzWYaUxGVFANPStd": [{"currencyCode": "yaiSxM2Zbx5jm9A2", "currencyNamespace": "kjo8p37oqhypeIMt", "currencyType": "VIRTUAL", "discountAmount": 1, "discountExpireAt": "1989-02-19T00:00:00Z", "discountPercentage": 84, "discountPurchaseAt": "1983-08-16T00:00:00Z", "expireAt": "1991-07-18T00:00:00Z", "price": 46, "purchaseAt": "1998-07-13T00:00:00Z", "trialPrice": 41}, {"currencyCode": "SCd2zbPvU4jDoN8n", "currencyNamespace": "ttUKMyA4iEALNJGE", "currencyType": "REAL", "discountAmount": 96, "discountExpireAt": "1981-10-29T00:00:00Z", "discountPercentage": 54, "discountPurchaseAt": "1986-07-27T00:00:00Z", "expireAt": "1976-07-29T00:00:00Z", "price": 3, "purchaseAt": "1991-04-17T00:00:00Z", "trialPrice": 22}, {"currencyCode": "4bOMQH79NKw2hxLq", "currencyNamespace": "qKVTQmdiNXc34jPh", "currencyType": "VIRTUAL", "discountAmount": 8, "discountExpireAt": "1981-08-13T00:00:00Z", "discountPercentage": 2, "discountPurchaseAt": "1994-09-28T00:00:00Z", "expireAt": "1984-05-22T00:00:00Z", "price": 29, "purchaseAt": "1993-04-03T00:00:00Z", "trialPrice": 26}], "O4gu4tYTIAf0bbUz": [{"currencyCode": "9sW7UHNI9vQvcBBj", "currencyNamespace": "KBLWFROt7pHveaQW", "currencyType": "REAL", "discountAmount": 4, "discountExpireAt": "1992-09-24T00:00:00Z", "discountPercentage": 94, "discountPurchaseAt": "1981-08-25T00:00:00Z", "expireAt": "1994-09-20T00:00:00Z", "price": 67, "purchaseAt": "1997-07-24T00:00:00Z", "trialPrice": 2}, {"currencyCode": "IqkNLKWZi4Aejzi2", "currencyNamespace": "pkucexcuTsSrjlSp", "currencyType": "VIRTUAL", "discountAmount": 68, "discountExpireAt": "1977-07-15T00:00:00Z", "discountPercentage": 33, "discountPurchaseAt": "1991-02-08T00:00:00Z", "expireAt": "1975-03-24T00:00:00Z", "price": 88, "purchaseAt": "1992-06-08T00:00:00Z", "trialPrice": 30}, {"currencyCode": "mrzzDqP62HlMvb1b", "currencyNamespace": "74EPaE0tDa2c9FGr", "currencyType": "VIRTUAL", "discountAmount": 46, "discountExpireAt": "1976-05-28T00:00:00Z", "discountPercentage": 49, "discountPurchaseAt": "1985-01-15T00:00:00Z", "expireAt": "1997-07-05T00:00:00Z", "price": 3, "purchaseAt": "1984-03-06T00:00:00Z", "trialPrice": 77}]}, "saleConfig": {"currencyCode": "SAcymUWmA4nIUqK9", "price": 30}, "seasonType": "PASS", "sectionExclusive": true, "sellable": true, "sku": "tL5GM2LcGxwSy6qc", "stackable": true, "status": "ACTIVE", "tags": ["CBt9xNYCpK5GQUKV", "maFqxoz0D6rhtTid", "APCfdQ6F2TN0Dzm3"], "targetCurrencyCode": "e4SOGIaLvvFAhI1u", "targetNamespace": "B4vxI9beMuoyoIpx", "thumbnailUrl": "vCpAvNttueorXWZN", "useCount": 5}' \
    > test.out 2>&1
eval_tap $? 125 'CreateItem' test.out

#- 126 GetItemByAppId
samples/cli/sample-apps Platform getItemByAppId \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'iYVNSYvG5H1qM3vi' \
    --appId 'nxLYSQIuCOTFeqGM' \
    > test.out 2>&1
eval_tap $? 126 'GetItemByAppId' test.out

#- 127 QueryItems
samples/cli/sample-apps Platform queryItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --appType 'GAME' \
    --availableDate 'fCNKmVJhwY0tRskj' \
    --baseAppId 'ar29E0SWhpfSVexX' \
    --categoryPath 'E0kYtytSJDyGV9qY' \
    --features 'qe70IvV69gbU6EZ5' \
    --includeSubCategoryItem 'true' \
    --itemType 'OPTIONBOX' \
    --limit '65' \
    --offset '43' \
    --region 'v6g635RSBXxG5aR5' \
    --sortBy '["displayOrder", "updatedAt", "updatedAt:asc"]' \
    --storeId 'r9T1u34UC3Kb5Y8I' \
    --tags 'D8ltMVty6qM3NdqX' \
    --targetNamespace 'mrMswqhAfRNetGY7' \
    > test.out 2>&1
eval_tap $? 127 'QueryItems' test.out

#- 128 ListBasicItemsByFeatures
samples/cli/sample-apps Platform listBasicItemsByFeatures \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --features '["geSVtmVnJRrwf9tL", "OdqirEX0UL2VsVLb", "Xc0ETvQlalSfgAO4"]' \
    > test.out 2>&1
eval_tap $? 128 'ListBasicItemsByFeatures' test.out

#- 129 GetItems
samples/cli/sample-apps Platform getItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --storeId 'hRq6YD77xMoqnPaL' \
    --itemIds 'Rb7j9MD7o8Iy7X41' \
    > test.out 2>&1
eval_tap $? 129 'GetItems' test.out

#- 130 GetItemBySku
samples/cli/sample-apps Platform getItemBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --storeId 'D1NaqjT3XkzXGq93' \
    --sku 'Om74a4atf9dW5REe' \
    > test.out 2>&1
eval_tap $? 130 'GetItemBySku' test.out

#- 131 GetLocaleItemBySku
samples/cli/sample-apps Platform getLocaleItemBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --language '65NxPA3oFt7teyCf' \
    --populateBundle 'true' \
    --region 'Qymg8yQ4trYeIF5q' \
    --storeId 'bYIMfLHToHQgMOLd' \
    --sku '0it8ziPCm77tVn9y' \
    > test.out 2>&1
eval_tap $? 131 'GetLocaleItemBySku' test.out

#- 132 GetEstimatedPrice
samples/cli/sample-apps Platform getEstimatedPrice \
    --namespace $AB_NAMESPACE \
    --platform 'bJOpmdaQtdHZa2hC' \
    --region 'WE0BoJYHsE6zcbRo' \
    --storeId '3wHKaxootrJDi9NZ' \
    --itemIds '4mhzMduTC5xskiiR' \
    --userId 'YuIZ6VUNHIOxSsqT' \
    > test.out 2>&1
eval_tap $? 132 'GetEstimatedPrice' test.out

#- 133 GetItemIdBySku
samples/cli/sample-apps Platform getItemIdBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'ybPmKzlxcCfQKmOP' \
    --sku 'fban2P3GQecyHg7U' \
    > test.out 2>&1
eval_tap $? 133 'GetItemIdBySku' test.out

#- 134 GetBulkItemIdBySkus
samples/cli/sample-apps Platform getBulkItemIdBySkus \
    --namespace $AB_NAMESPACE \
    --sku '["1xP9Zb6UrSTg4Wz7", "HOIwA8YLGa7aYJnZ", "HaN6WT3jRW1fv0Oi"]' \
    --storeId 'vmWepyqrCXLdXe3p' \
    > test.out 2>&1
eval_tap $? 134 'GetBulkItemIdBySkus' test.out

#- 135 BulkGetLocaleItems
samples/cli/sample-apps Platform bulkGetLocaleItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --language 'd0NrY796pgD2zWsd' \
    --region 'mZhVO2uWRH2cYyOx' \
    --storeId 'jrxj2jsE6ckbqNpu' \
    --itemIds 'j8tYWyih9Wp2yICH' \
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
    --platform 'R525918HT00EOCiC' \
    --userId 'HuJZfP5orm1dgdXW' \
    --body '{"itemIds": ["ofzgjgIBH97hpIrr", "cKovhG8qC9FOCYg3", "1Xk7D9Q0fbghNnVL"]}' \
    > test.out 2>&1
eval_tap $? 137 'ValidateItemPurchaseCondition' test.out

#- 138 BulkUpdateRegionData
samples/cli/sample-apps Platform bulkUpdateRegionData \
    --namespace $AB_NAMESPACE \
    --storeId 'J0CadsXVGjfeUqmW' \
    --body '{"changes": [{"itemIdentities": ["iWyqRqTz1UU1By2k", "BuvpMGLqU3nwIcWP", "8P5Ei1CKUVTQWkYN"], "itemIdentityType": "ITEM_SKU", "regionData": {"fYyB89eluIzuxs5V": [{"currencyCode": "jNDSmLgk9FnM9SMh", "currencyNamespace": "pfzN6f3TsT9ZBu1R", "currencyType": "REAL", "discountAmount": 33, "discountExpireAt": "1991-04-15T00:00:00Z", "discountPercentage": 35, "discountPurchaseAt": "1971-05-06T00:00:00Z", "discountedPrice": 4, "expireAt": "1991-05-30T00:00:00Z", "price": 86, "purchaseAt": "1980-05-08T00:00:00Z", "trialPrice": 35}, {"currencyCode": "O8Ub3HKvCSqpPbLL", "currencyNamespace": "ZmPY3Gnv6V8QUZ2b", "currencyType": "REAL", "discountAmount": 62, "discountExpireAt": "1988-03-07T00:00:00Z", "discountPercentage": 61, "discountPurchaseAt": "1991-03-09T00:00:00Z", "discountedPrice": 10, "expireAt": "1976-07-07T00:00:00Z", "price": 60, "purchaseAt": "1997-03-12T00:00:00Z", "trialPrice": 77}, {"currencyCode": "e3oDdynF5z7Kj78y", "currencyNamespace": "MJcYg3JexvdgBFbm", "currencyType": "REAL", "discountAmount": 6, "discountExpireAt": "1974-09-14T00:00:00Z", "discountPercentage": 78, "discountPurchaseAt": "1986-08-24T00:00:00Z", "discountedPrice": 25, "expireAt": "1973-03-28T00:00:00Z", "price": 56, "purchaseAt": "1999-12-03T00:00:00Z", "trialPrice": 59}], "djYMC6GjRrnim2Fy": [{"currencyCode": "gDQlg0UmWhjkrc3M", "currencyNamespace": "9GyZIbtQ40MJwOhM", "currencyType": "VIRTUAL", "discountAmount": 91, "discountExpireAt": "1981-10-15T00:00:00Z", "discountPercentage": 91, "discountPurchaseAt": "1996-04-17T00:00:00Z", "discountedPrice": 80, "expireAt": "1971-03-27T00:00:00Z", "price": 47, "purchaseAt": "1997-12-18T00:00:00Z", "trialPrice": 39}, {"currencyCode": "wjzWB7nWfL1z0KHj", "currencyNamespace": "ZHlbItk0rJHu9WYp", "currencyType": "REAL", "discountAmount": 24, "discountExpireAt": "1985-08-11T00:00:00Z", "discountPercentage": 85, "discountPurchaseAt": "1991-08-19T00:00:00Z", "discountedPrice": 83, "expireAt": "1976-05-21T00:00:00Z", "price": 96, "purchaseAt": "1977-01-25T00:00:00Z", "trialPrice": 100}, {"currencyCode": "b8cPL8J0EUHxDlZl", "currencyNamespace": "YrajxfQlIKUEuPcV", "currencyType": "REAL", "discountAmount": 55, "discountExpireAt": "1988-11-19T00:00:00Z", "discountPercentage": 59, "discountPurchaseAt": "1986-10-10T00:00:00Z", "discountedPrice": 44, "expireAt": "1998-12-13T00:00:00Z", "price": 67, "purchaseAt": "1984-03-20T00:00:00Z", "trialPrice": 37}], "DGBwF5PzjQy4KTFn": [{"currencyCode": "4iwXJhoFvD3Fu4b4", "currencyNamespace": "OJOrfBZiQiZb50je", "currencyType": "VIRTUAL", "discountAmount": 17, "discountExpireAt": "1971-08-30T00:00:00Z", "discountPercentage": 31, "discountPurchaseAt": "1997-03-31T00:00:00Z", "discountedPrice": 58, "expireAt": "1990-05-05T00:00:00Z", "price": 74, "purchaseAt": "1989-05-03T00:00:00Z", "trialPrice": 2}, {"currencyCode": "fzw3ssLMk8INGdlX", "currencyNamespace": "Xn5T9bhFWC5sVGoa", "currencyType": "REAL", "discountAmount": 10, "discountExpireAt": "1997-11-19T00:00:00Z", "discountPercentage": 75, "discountPurchaseAt": "1974-03-26T00:00:00Z", "discountedPrice": 71, "expireAt": "1986-02-08T00:00:00Z", "price": 78, "purchaseAt": "1993-06-09T00:00:00Z", "trialPrice": 7}, {"currencyCode": "FNUmChhStXAo0nwK", "currencyNamespace": "HV7DAuqHFBq1gE8W", "currencyType": "REAL", "discountAmount": 33, "discountExpireAt": "1983-08-02T00:00:00Z", "discountPercentage": 11, "discountPurchaseAt": "1971-12-28T00:00:00Z", "discountedPrice": 71, "expireAt": "1987-12-01T00:00:00Z", "price": 1, "purchaseAt": "1984-04-04T00:00:00Z", "trialPrice": 67}]}}, {"itemIdentities": ["nRcAJnu8nnjMy2u9", "kvJKeew7LxvKVQiB", "TUJekgT7uoWWrGRJ"], "itemIdentityType": "ITEM_ID", "regionData": {"WkjAgXCmmW7QXj59": [{"currencyCode": "UcC6AR4LTXBi5b3Z", "currencyNamespace": "eHvZHDyFo6xxYaxy", "currencyType": "VIRTUAL", "discountAmount": 2, "discountExpireAt": "1990-06-22T00:00:00Z", "discountPercentage": 14, "discountPurchaseAt": "1992-04-14T00:00:00Z", "discountedPrice": 3, "expireAt": "1975-04-14T00:00:00Z", "price": 80, "purchaseAt": "1991-05-04T00:00:00Z", "trialPrice": 69}, {"currencyCode": "DkCchi0Y0lxrhpqQ", "currencyNamespace": "Rwt2WRPuYdNiJl9f", "currencyType": "REAL", "discountAmount": 72, "discountExpireAt": "1979-10-10T00:00:00Z", "discountPercentage": 64, "discountPurchaseAt": "1987-03-20T00:00:00Z", "discountedPrice": 26, "expireAt": "1995-05-01T00:00:00Z", "price": 51, "purchaseAt": "1981-06-06T00:00:00Z", "trialPrice": 38}, {"currencyCode": "uDzC8zEYssQFUCBE", "currencyNamespace": "O7QVX9iqyqEPsvIj", "currencyType": "VIRTUAL", "discountAmount": 47, "discountExpireAt": "1983-01-02T00:00:00Z", "discountPercentage": 15, "discountPurchaseAt": "1971-02-17T00:00:00Z", "discountedPrice": 63, "expireAt": "1975-11-12T00:00:00Z", "price": 86, "purchaseAt": "1989-03-12T00:00:00Z", "trialPrice": 17}], "g4wAbts7Q0fKMBqa": [{"currencyCode": "uVsOSWFbj1VSI39c", "currencyNamespace": "mKD8bNU0lIuKIKgM", "currencyType": "VIRTUAL", "discountAmount": 96, "discountExpireAt": "1976-03-11T00:00:00Z", "discountPercentage": 69, "discountPurchaseAt": "1983-09-20T00:00:00Z", "discountedPrice": 40, "expireAt": "1992-06-01T00:00:00Z", "price": 98, "purchaseAt": "1975-09-05T00:00:00Z", "trialPrice": 77}, {"currencyCode": "jA1MFqRaxCQJSKoj", "currencyNamespace": "h4IoZgvTaFto1zqL", "currencyType": "VIRTUAL", "discountAmount": 95, "discountExpireAt": "1991-11-26T00:00:00Z", "discountPercentage": 19, "discountPurchaseAt": "1995-10-12T00:00:00Z", "discountedPrice": 37, "expireAt": "1983-07-20T00:00:00Z", "price": 88, "purchaseAt": "1978-01-07T00:00:00Z", "trialPrice": 68}, {"currencyCode": "WYAKWWKvETpeIrT6", "currencyNamespace": "HmpYprY0GyNE7mAi", "currencyType": "REAL", "discountAmount": 1, "discountExpireAt": "1980-05-30T00:00:00Z", "discountPercentage": 45, "discountPurchaseAt": "1982-01-06T00:00:00Z", "discountedPrice": 20, "expireAt": "1992-03-19T00:00:00Z", "price": 86, "purchaseAt": "1974-01-07T00:00:00Z", "trialPrice": 35}], "vTUbEC22TdEBTP2T": [{"currencyCode": "jMmNVZTvo5VWPMbr", "currencyNamespace": "cd8f5Il1UAJzV1C7", "currencyType": "REAL", "discountAmount": 83, "discountExpireAt": "1985-04-29T00:00:00Z", "discountPercentage": 59, "discountPurchaseAt": "1981-01-12T00:00:00Z", "discountedPrice": 50, "expireAt": "1997-07-06T00:00:00Z", "price": 79, "purchaseAt": "1973-06-06T00:00:00Z", "trialPrice": 9}, {"currencyCode": "kBwLJfp6zRaT14js", "currencyNamespace": "AklaFxNGF5mIyIdC", "currencyType": "VIRTUAL", "discountAmount": 21, "discountExpireAt": "1989-05-19T00:00:00Z", "discountPercentage": 71, "discountPurchaseAt": "1992-12-10T00:00:00Z", "discountedPrice": 2, "expireAt": "1971-02-06T00:00:00Z", "price": 38, "purchaseAt": "1990-01-29T00:00:00Z", "trialPrice": 63}, {"currencyCode": "EZxKCJGImFdWBXbz", "currencyNamespace": "CtkU5UXT31Vw53Nr", "currencyType": "REAL", "discountAmount": 99, "discountExpireAt": "1980-01-16T00:00:00Z", "discountPercentage": 7, "discountPurchaseAt": "1999-07-08T00:00:00Z", "discountedPrice": 51, "expireAt": "1997-02-13T00:00:00Z", "price": 22, "purchaseAt": "1991-08-16T00:00:00Z", "trialPrice": 20}]}}, {"itemIdentities": ["fd76c0eY27lmybBR", "SGWnCLxCwYgKDeim", "IzjttSQUsqwFCnpP"], "itemIdentityType": "ITEM_ID", "regionData": {"a41EJLZg9y6BAyJC": [{"currencyCode": "aRfcIe7daU9vF0ZT", "currencyNamespace": "T9ycM6PoFzMi43jY", "currencyType": "REAL", "discountAmount": 9, "discountExpireAt": "1992-10-05T00:00:00Z", "discountPercentage": 87, "discountPurchaseAt": "1981-12-20T00:00:00Z", "discountedPrice": 51, "expireAt": "1973-07-13T00:00:00Z", "price": 94, "purchaseAt": "1978-05-11T00:00:00Z", "trialPrice": 15}, {"currencyCode": "q5rugroxYouiwPiR", "currencyNamespace": "Gb8olRXVx36PdVBi", "currencyType": "VIRTUAL", "discountAmount": 94, "discountExpireAt": "1997-02-25T00:00:00Z", "discountPercentage": 47, "discountPurchaseAt": "1976-10-19T00:00:00Z", "discountedPrice": 100, "expireAt": "1973-02-17T00:00:00Z", "price": 46, "purchaseAt": "1999-10-03T00:00:00Z", "trialPrice": 49}, {"currencyCode": "k6khdaStaPmMwTyd", "currencyNamespace": "R4aWqqZxXBbERm5r", "currencyType": "REAL", "discountAmount": 42, "discountExpireAt": "1986-06-25T00:00:00Z", "discountPercentage": 80, "discountPurchaseAt": "1973-04-21T00:00:00Z", "discountedPrice": 53, "expireAt": "1998-08-03T00:00:00Z", "price": 26, "purchaseAt": "1995-05-18T00:00:00Z", "trialPrice": 61}], "1c7J2u8ZS6oX0ciA": [{"currencyCode": "EV549WN9fRbUABhw", "currencyNamespace": "Wc3v7lorKZH1waxS", "currencyType": "VIRTUAL", "discountAmount": 29, "discountExpireAt": "1980-01-12T00:00:00Z", "discountPercentage": 81, "discountPurchaseAt": "1989-10-13T00:00:00Z", "discountedPrice": 57, "expireAt": "1995-05-23T00:00:00Z", "price": 69, "purchaseAt": "1985-03-13T00:00:00Z", "trialPrice": 25}, {"currencyCode": "jBujjqGxVxCvesu6", "currencyNamespace": "K1Q6ri9faIz4j839", "currencyType": "VIRTUAL", "discountAmount": 26, "discountExpireAt": "1989-03-29T00:00:00Z", "discountPercentage": 84, "discountPurchaseAt": "1992-06-25T00:00:00Z", "discountedPrice": 36, "expireAt": "1993-06-03T00:00:00Z", "price": 89, "purchaseAt": "1988-03-22T00:00:00Z", "trialPrice": 64}, {"currencyCode": "4piZYLOYxxP0Wb0U", "currencyNamespace": "ZsLIXaTLD1rtlzbh", "currencyType": "VIRTUAL", "discountAmount": 8, "discountExpireAt": "1987-01-12T00:00:00Z", "discountPercentage": 97, "discountPurchaseAt": "1993-01-07T00:00:00Z", "discountedPrice": 92, "expireAt": "1971-04-22T00:00:00Z", "price": 51, "purchaseAt": "1981-03-19T00:00:00Z", "trialPrice": 62}], "YCEQIfmOa3VLMXNr": [{"currencyCode": "MLh2FT1jNeB0yy2Z", "currencyNamespace": "saBrJkD0KuwWD2lf", "currencyType": "VIRTUAL", "discountAmount": 83, "discountExpireAt": "1993-04-06T00:00:00Z", "discountPercentage": 29, "discountPurchaseAt": "1982-12-28T00:00:00Z", "discountedPrice": 68, "expireAt": "1990-08-22T00:00:00Z", "price": 85, "purchaseAt": "1976-08-26T00:00:00Z", "trialPrice": 67}, {"currencyCode": "44GIOZL24cTpGwUw", "currencyNamespace": "YNzLNdxqdfG7PyVk", "currencyType": "REAL", "discountAmount": 4, "discountExpireAt": "1976-02-05T00:00:00Z", "discountPercentage": 50, "discountPurchaseAt": "1992-04-17T00:00:00Z", "discountedPrice": 5, "expireAt": "1998-08-02T00:00:00Z", "price": 62, "purchaseAt": "1984-10-20T00:00:00Z", "trialPrice": 5}, {"currencyCode": "PJJMMe8FDmBiUNym", "currencyNamespace": "OAApbODRDboGKRAl", "currencyType": "VIRTUAL", "discountAmount": 45, "discountExpireAt": "1984-04-30T00:00:00Z", "discountPercentage": 49, "discountPurchaseAt": "1978-05-05T00:00:00Z", "discountedPrice": 51, "expireAt": "1986-07-15T00:00:00Z", "price": 34, "purchaseAt": "1982-10-02T00:00:00Z", "trialPrice": 17}]}}]}' \
    > test.out 2>&1
eval_tap $? 138 'BulkUpdateRegionData' test.out

#- 139 SearchItems
samples/cli/sample-apps Platform searchItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --itemType 'OPTIONBOX' \
    --limit '18' \
    --offset '91' \
    --sortBy '73AyoqXzTWzWf4xQ' \
    --storeId 'Cq2fYdEXQHjrTkOL' \
    --keyword 's4uemZvynGwpFFVH' \
    --language 'j05hneAwMRZ7NTZy' \
    > test.out 2>&1
eval_tap $? 139 'SearchItems' test.out

#- 140 QueryUncategorizedItems
samples/cli/sample-apps Platform queryUncategorizedItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --limit '98' \
    --offset '63' \
    --sortBy '["name:desc", "displayOrder:asc", "displayOrder:desc"]' \
    --storeId 'TpIiNfLeG1gfkKZH' \
    > test.out 2>&1
eval_tap $? 140 'QueryUncategorizedItems' test.out

#- 141 GetItem
samples/cli/sample-apps Platform getItem \
    --itemId 'jv6EONSyWcyDD08m' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'WnTFQwgBLyhLZBqd' \
    > test.out 2>&1
eval_tap $? 141 'GetItem' test.out

#- 142 UpdateItem
samples/cli/sample-apps Platform updateItem \
    --itemId 'O3cIA6jmMJLw1mRz' \
    --namespace $AB_NAMESPACE \
    --storeId 'KBU5oDA826yzDI9W' \
    --body '{"appId": "kEgiGnyy7xuAzV8V", "appType": "DLC", "baseAppId": "7Qxk3qyKQCLYNJMV", "boothName": "yHEJNKbJ0T3nDGCg", "categoryPath": "90Pb7KAEnOSGyUQN", "clazz": "Xro9tweKjBFCGecw", "displayOrder": 56, "entitlementType": "CONSUMABLE", "ext": {"G9Iu9mcGLFo199eD": {}, "dc27sqzcGTHut6NS": {}, "aGpqKZZXJ829uKdH": {}}, "features": ["HTFC18D5Y3oXkZ7S", "M5YdMdVBg6fJiRAL", "6lVs3jOn4dIbq7iQ"], "flexible": false, "images": [{"as": "YY1YpPdcXJsLkqBg", "caption": "HlWNIsvLYwPbzY53", "height": 88, "imageUrl": "22K8zFolaXrqgTJS", "smallImageUrl": "WT3Y66zyNxZrwQao", "width": 100}, {"as": "MJtHsBz5BNaeOHqe", "caption": "yuuVBkLZlNmP96cZ", "height": 92, "imageUrl": "nrlbaXJqBrdGJOX6", "smallImageUrl": "6k7KuexmpCejJaI4", "width": 75}, {"as": "XwcEOdFrPHBLSX8H", "caption": "Bhr1FJYkveX1vUDP", "height": 96, "imageUrl": "jMIiFWf8VH40hS9w", "smallImageUrl": "Nz3MCHEz3PShARgN", "width": 88}], "inventoryConfig": {"customAttributes": {"el2gNnANElyC4M88": {}, "1dU3RfbKLy06Nw0L": {}, "jxPqQ8jr1A90I7Kp": {}}, "serverCustomAttributes": {"2gEflbusijKdw3Ld": {}, "AeslFnQ54P9YDB5S": {}, "K02p5HupuBqTaa6P": {}}, "slotUsed": 46}, "itemIds": ["QYUHnKlcyUvuAcv7", "qcvldoyXwQLu3tXG", "CU0bGDwNdfYXz7iq"], "itemQty": {"TFUk20KH3mI7FbmG": 89, "EvTkzu5niEKWelEX": 17, "rP1nz8iwnvRCm7Kb": 72}, "itemType": "APP", "listable": false, "localizations": {"gPfzXVDOL8zNtz4c": {"description": "6reVcV40vc474ggq", "localExt": {"vhzHr3opjKx0otG7": {}, "NMNDpP2RI05Bzev5": {}, "2SF7K0vNQxAomIWE": {}}, "longDescription": "P8P0zCnV3cTyuiPf", "title": "muIBfqdcu4iuXPB3"}, "gJQWrbEkqSTUr7Hs": {"description": "nLWV2iExzfk28x9s", "localExt": {"hIeLTLwWYCrZjFUj": {}, "ApqCerFNOGxoI6fN": {}, "4fV2WGrnH40aCAT2": {}}, "longDescription": "v7KRyJk15MVuSABS", "title": "MPZm4pdf61FJIlzC"}, "jePQEgSJhe3LtuE9": {"description": "oepLuP8Mjn5PF02I", "localExt": {"XhJhGn2wMT3KivUn": {}, "acHVAZIabzC9Kuw4": {}, "uPxWOwScfJ5YP5Im": {}}, "longDescription": "PNdKdU5pMGaTjifE", "title": "T15hVJgkYlIXjISo"}}, "lootBoxConfig": {"rewardCount": 4, "rewards": [{"lootBoxItems": [{"count": 7, "duration": 85, "endDate": "1996-08-31T00:00:00Z", "itemId": "dyzF5n36SIAFfaZJ", "itemSku": "VcZxtEUiDsFujL25", "itemType": "BAmi6NGwmvtaOYYY"}, {"count": 52, "duration": 74, "endDate": "1998-11-15T00:00:00Z", "itemId": "rr41aFZNbJ666W0h", "itemSku": "7gAINqRCkZDUloV2", "itemType": "dr3avQFhONEtJ84M"}, {"count": 55, "duration": 22, "endDate": "1993-12-07T00:00:00Z", "itemId": "wJqEoqx2LZxFItHA", "itemSku": "ajpyzNhFUEjA0aRi", "itemType": "EgIqB9Cj77F61BK8"}], "name": "APhIpSAR1yTekp9W", "odds": 0.5534078312628817, "type": "REWARD", "weight": 49}, {"lootBoxItems": [{"count": 64, "duration": 37, "endDate": "1998-10-21T00:00:00Z", "itemId": "27IZ0XGOPuu8D5zr", "itemSku": "ZTzZELnUP1bvQECJ", "itemType": "VlhT6BZwcI6Rzzpw"}, {"count": 59, "duration": 92, "endDate": "1972-04-14T00:00:00Z", "itemId": "UWxKvOQKIXFq7sx0", "itemSku": "iBYdkclmABUVLPHk", "itemType": "x2YPKSEUkb48NM9W"}, {"count": 36, "duration": 42, "endDate": "1976-05-23T00:00:00Z", "itemId": "4QeupPM30u20R281", "itemSku": "KN3xyzqdheai267h", "itemType": "ZTxlITM0STuvdOIm"}], "name": "e5EvFwHQ3aM1oQDn", "odds": 0.5415184035136527, "type": "REWARD_GROUP", "weight": 79}, {"lootBoxItems": [{"count": 68, "duration": 30, "endDate": "1994-12-16T00:00:00Z", "itemId": "7QJrk62byJgtNPhQ", "itemSku": "aSywk443FkGre0M3", "itemType": "NEoBgJW7AuYWIC8c"}, {"count": 22, "duration": 66, "endDate": "1971-06-01T00:00:00Z", "itemId": "FJhj9jrwNZPXJM2P", "itemSku": "oolFNCpFAXcax9B8", "itemType": "4EXWlJ2WbfzNR5LP"}, {"count": 8, "duration": 42, "endDate": "1976-02-22T00:00:00Z", "itemId": "z4m9YAIgOtTi2Kl0", "itemSku": "o6cFynJCKoNCf0lD", "itemType": "GrWizsb1rHMNil3j"}], "name": "BAEVlylzVJuI9gXd", "odds": 0.01582217529535901, "type": "PROBABILITY_GROUP", "weight": 32}], "rollFunction": "DEFAULT"}, "maxCount": 11, "maxCountPerUser": 74, "name": "ei9EXJ420colptFk", "optionBoxConfig": {"boxItems": [{"count": 95, "duration": 14, "endDate": "1980-04-18T00:00:00Z", "itemId": "8WyakF1T8tFTdwMb", "itemSku": "dQGaWHThNequL62g", "itemType": "z3VL1lHHL2YG3hSL"}, {"count": 58, "duration": 24, "endDate": "1979-06-19T00:00:00Z", "itemId": "eCUMpYn41bSl8AqV", "itemSku": "sNc5Ta5yIL3Y5Cp0", "itemType": "AriGaHCWalMiH2Lr"}, {"count": 73, "duration": 29, "endDate": "1971-03-01T00:00:00Z", "itemId": "rZMzKYKW68s7uumq", "itemSku": "acH8Y3bMDgLHpzr1", "itemType": "MD4Y42ry6qjfRbJb"}]}, "purchasable": true, "recurring": {"cycle": "YEARLY", "fixedFreeDays": 24, "fixedTrialCycles": 46, "graceDays": 77}, "regionData": {"oyyLuvjFA6v6jejm": [{"currencyCode": "OPSdTvMHGl9kN9GS", "currencyNamespace": "KI8RjqPtfBSy29KS", "currencyType": "REAL", "discountAmount": 78, "discountExpireAt": "1997-07-06T00:00:00Z", "discountPercentage": 45, "discountPurchaseAt": "1984-07-26T00:00:00Z", "expireAt": "1994-12-29T00:00:00Z", "price": 38, "purchaseAt": "1971-05-23T00:00:00Z", "trialPrice": 88}, {"currencyCode": "t8adkxjuT9VzNBBr", "currencyNamespace": "HB8MHdCy6Smen0bB", "currencyType": "REAL", "discountAmount": 92, "discountExpireAt": "1994-09-23T00:00:00Z", "discountPercentage": 32, "discountPurchaseAt": "1984-06-08T00:00:00Z", "expireAt": "1975-05-19T00:00:00Z", "price": 93, "purchaseAt": "1972-11-02T00:00:00Z", "trialPrice": 41}, {"currencyCode": "zPfpouVlmtVgnxCe", "currencyNamespace": "9TKLsJMEULhAOLM5", "currencyType": "REAL", "discountAmount": 99, "discountExpireAt": "1990-11-03T00:00:00Z", "discountPercentage": 37, "discountPurchaseAt": "1998-07-15T00:00:00Z", "expireAt": "1984-02-20T00:00:00Z", "price": 57, "purchaseAt": "1979-05-25T00:00:00Z", "trialPrice": 42}], "M9XLT94XZHkl82Zn": [{"currencyCode": "hJFqtvyjQDXG2f6W", "currencyNamespace": "OEAE3F59b664MRe3", "currencyType": "REAL", "discountAmount": 81, "discountExpireAt": "1983-06-14T00:00:00Z", "discountPercentage": 55, "discountPurchaseAt": "1987-03-29T00:00:00Z", "expireAt": "1990-01-02T00:00:00Z", "price": 20, "purchaseAt": "1995-12-15T00:00:00Z", "trialPrice": 88}, {"currencyCode": "5IvJ5VXQBQfinwdk", "currencyNamespace": "pRpNH9QvvMPbtX20", "currencyType": "REAL", "discountAmount": 86, "discountExpireAt": "1994-07-30T00:00:00Z", "discountPercentage": 91, "discountPurchaseAt": "1998-05-10T00:00:00Z", "expireAt": "1993-09-11T00:00:00Z", "price": 64, "purchaseAt": "1981-10-12T00:00:00Z", "trialPrice": 1}, {"currencyCode": "thUJKQ9Elg2OKYnV", "currencyNamespace": "SaPszzp5rPbJxbrd", "currencyType": "VIRTUAL", "discountAmount": 49, "discountExpireAt": "1996-02-21T00:00:00Z", "discountPercentage": 45, "discountPurchaseAt": "1983-06-27T00:00:00Z", "expireAt": "1984-12-13T00:00:00Z", "price": 90, "purchaseAt": "1994-04-29T00:00:00Z", "trialPrice": 79}], "PRJvedbP6PMCNmvm": [{"currencyCode": "TQ35ThQDPCzF8jqs", "currencyNamespace": "FD1Jm5YNHuoHGyw4", "currencyType": "REAL", "discountAmount": 9, "discountExpireAt": "1990-01-26T00:00:00Z", "discountPercentage": 56, "discountPurchaseAt": "1991-05-31T00:00:00Z", "expireAt": "1998-01-17T00:00:00Z", "price": 6, "purchaseAt": "1975-11-22T00:00:00Z", "trialPrice": 8}, {"currencyCode": "np45QMQlayteaxFZ", "currencyNamespace": "ee1wh5kqo6gz7rd8", "currencyType": "VIRTUAL", "discountAmount": 50, "discountExpireAt": "1988-02-06T00:00:00Z", "discountPercentage": 10, "discountPurchaseAt": "1992-06-07T00:00:00Z", "expireAt": "1979-10-10T00:00:00Z", "price": 7, "purchaseAt": "1977-02-19T00:00:00Z", "trialPrice": 20}, {"currencyCode": "3IqoQ29O6lgMxkFR", "currencyNamespace": "ZfGoPPm384PVn4s2", "currencyType": "VIRTUAL", "discountAmount": 88, "discountExpireAt": "1995-05-11T00:00:00Z", "discountPercentage": 71, "discountPurchaseAt": "1993-05-29T00:00:00Z", "expireAt": "1988-09-25T00:00:00Z", "price": 41, "purchaseAt": "1987-03-15T00:00:00Z", "trialPrice": 0}]}, "saleConfig": {"currencyCode": "RTANLRhoLTGffGSA", "price": 50}, "seasonType": "PASS", "sectionExclusive": false, "sellable": false, "sku": "DOod8NEdpxE84kiF", "stackable": true, "status": "ACTIVE", "tags": ["NpBBxpG9UdRQ4Y60", "fWDxDU4UcrkzeVTZ", "DPgKp2DF5Fdm24Y5"], "targetCurrencyCode": "g6BqLspWl4yxjscl", "targetNamespace": "I0JeBo6f7yd4p7Cd", "thumbnailUrl": "ejbittwY2QLxNBDk", "useCount": 59}' \
    > test.out 2>&1
eval_tap $? 142 'UpdateItem' test.out

#- 143 DeleteItem
samples/cli/sample-apps Platform deleteItem \
    --itemId 'dOpMhjv7xoKFN9lN' \
    --namespace $AB_NAMESPACE \
    --featuresToCheck '["IAP", "IAP", "DLC"]' \
    --force 'true' \
    --storeId 'vOelzbHyTeEuKzah' \
    > test.out 2>&1
eval_tap $? 143 'DeleteItem' test.out

#- 144 AcquireItem
samples/cli/sample-apps Platform acquireItem \
    --itemId '0FmgOT8cgkfQzqMh' \
    --namespace $AB_NAMESPACE \
    --body '{"count": 24, "orderNo": "0NOV8fnQhgUEmbq4"}' \
    > test.out 2>&1
eval_tap $? 144 'AcquireItem' test.out

#- 145 GetApp
samples/cli/sample-apps Platform getApp \
    --itemId 'fbJWQy6rOdjVGI2c' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'gvrvARfnriw76IPL' \
    > test.out 2>&1
eval_tap $? 145 'GetApp' test.out

#- 146 UpdateApp
samples/cli/sample-apps Platform updateApp \
    --itemId 'gRacK9fYkWzvjwV8' \
    --namespace $AB_NAMESPACE \
    --storeId 'mZcVNbuW1bNApukz' \
    --body '{"carousel": [{"alt": "oTB9i2P2PKHKwdMa", "previewUrl": "jvBq90X3UxWws96h", "thumbnailUrl": "m8fwgN7AtfG0LOSf", "type": "image", "url": "p5JmH47HPxWx0Lxy", "videoSource": "generic"}, {"alt": "xDvBuluSNtDmgI6s", "previewUrl": "L2cFSzazhnMICF6l", "thumbnailUrl": "RMw1kMsDT9Od5C7b", "type": "image", "url": "VFXnBpKHvGCYuUvz", "videoSource": "vimeo"}, {"alt": "QrbTUUQe9sv9RSl3", "previewUrl": "2Qwg3p9R7HfMaRxA", "thumbnailUrl": "aQ3QO1mdzBZDOM83", "type": "video", "url": "G4wqsu9LtwqY3vBs", "videoSource": "vimeo"}], "developer": "Ed9nROJpmb61a1uW", "forumUrl": "zlVGwst4tB94qa8d", "genres": ["Sports", "Sports", "Simulation"], "localizations": {"kA0qMANwx0CcLotN": {"announcement": "VGiylDvhaPWJwvGG", "slogan": "1zX7XHFbtJ7zBoSK"}, "zhUjchug6xHqkW2c": {"announcement": "iezBOqMmlTRvuLUS", "slogan": "sKhNxQ6lkJ0ohiY7"}, "qi85dPfyBjuHuoTe": {"announcement": "oetSOaqhyu6z70AP", "slogan": "KS8RbleB0yYFiaRt"}}, "platformRequirements": {"aLwuwl83ae9g00Pg": [{"additionals": "ovCps82e47DM9gYG", "directXVersion": "7aUpJLETcTic233R", "diskSpace": "H2o1WyYzGsERZdCT", "graphics": "mo5kq4fcCTmX24Uu", "label": "W5uNoMbu6zlcRfa9", "osVersion": "21mfviHy2mlPqc8n", "processor": "tHGiF8Fh9XO3HNew", "ram": "0Y6FM7FieYjqLaOi", "soundCard": "Bksacv51tjEfk7RS"}, {"additionals": "LgoH7IwT3N7N5skh", "directXVersion": "GtkuUqSeD17dcaMl", "diskSpace": "Q2V7ozR8t0pSd530", "graphics": "w5Zn5LN39Q00HXlj", "label": "BsEZ8sJVkkqBiika", "osVersion": "21TLJYYZP5x9yBgo", "processor": "nKNTkEFYHYGQyHBT", "ram": "9M1aVvM3OBYdMygD", "soundCard": "w2gLsGsSJ9kRP4vI"}, {"additionals": "pNDNyCP6DcCAf2PD", "directXVersion": "c5aGOVLwHG2BUE22", "diskSpace": "jbwSCPsUKWF3JlNk", "graphics": "BJhSIhy1KvC9hM98", "label": "JH2HZay0Ddjqnojm", "osVersion": "PRTBKvadYt13DHNv", "processor": "yRLNdQsnZCkTGtZV", "ram": "fYr1qknHmb8KDlZ4", "soundCard": "1Q9eDtuAeDpTTeHt"}], "IksYsRHnU6JP1eHG": [{"additionals": "k7LlA06racf24VAQ", "directXVersion": "ktE0nDwOBZpOAToV", "diskSpace": "uaUwJCYW64lJF0aS", "graphics": "0Vl6pKcViXvOPqY5", "label": "IKamIfU6JTml8ejR", "osVersion": "QACm24wEJMqrViOS", "processor": "EQEw6Cj84ED6kiqx", "ram": "SCglsLkIIFpAQJeE", "soundCard": "dJawa6Q8Prue6Dio"}, {"additionals": "zPVh0PKG6UQc8b1U", "directXVersion": "Vusvas231hQGJAes", "diskSpace": "sKwtqK2w4jjWqyzG", "graphics": "AYOTLiqCOzifvdGb", "label": "b5qQKxrdFTLcI4gp", "osVersion": "dx9rrNA4B4WSyw6V", "processor": "cIWWURefbiMMHbwK", "ram": "vWO0uqUP8KR4TtKb", "soundCard": "sB4V2qXU7U8uxaax"}, {"additionals": "oCB2gA3dfnSPascU", "directXVersion": "Wx1ibpKHHZvDyyN2", "diskSpace": "77AybjVNXXNnOO4U", "graphics": "XXsYeGeoYl7a7ZTR", "label": "NoUJvsF3M0uBPrqm", "osVersion": "Om4gtOVXg0FYMvZb", "processor": "bZRa2vDjXShGiJtG", "ram": "hyMYZIv54yJb6Tzw", "soundCard": "HMUIIAId1GCm4HTB"}], "ldDeoIi3A3NPL5m5": [{"additionals": "ZIpvPIIZHdEMX59H", "directXVersion": "XE02fpJXmudSh9nn", "diskSpace": "iA3IlsSDOyfC4dvz", "graphics": "oaOSXybv0LfIYYSS", "label": "UqApXNUkJPC9Fjmy", "osVersion": "RK9tT7p9qe2U8QeZ", "processor": "hgcfNYxviIRN3zB0", "ram": "6V82MBmeFdJDTFEv", "soundCard": "3OLKacZ0juaNp8M8"}, {"additionals": "9D0gcnl6L7ifbwx3", "directXVersion": "xrNYRwiPVuCmtAp8", "diskSpace": "DZ9f9rNRnhDGuqIs", "graphics": "0BNbYQQx4BZtqv2g", "label": "RnvRk2zbinBQWLyy", "osVersion": "WE4Rw6frRqceYwtQ", "processor": "86Kx8htFgKEQNUVk", "ram": "N11ERqIYCzQ3jXGI", "soundCard": "su9Kj69V5EkWXONC"}, {"additionals": "W7oTJj1HlgC5MUUu", "directXVersion": "4gglrURY9M6EFO26", "diskSpace": "0isQnWdrMrexIDZY", "graphics": "Nx58NXt43O23hhGa", "label": "aHnAadSIuPWQWIFT", "osVersion": "6rS5KRyL1yBJuSqO", "processor": "QVM70hDSps4BDsHd", "ram": "GcALuebvH6fcBCkd", "soundCard": "gr8C2XNsDI0nriOF"}]}, "platforms": ["Android", "MacOS", "Linux"], "players": ["MMO", "MMO", "Multi"], "primaryGenre": "Simulation", "publisher": "Cdb3Hk28uMVSNqiM", "releaseDate": "1979-06-01T00:00:00Z", "websiteUrl": "sKAUoABXMVjSnVFq"}' \
    > test.out 2>&1
eval_tap $? 146 'UpdateApp' test.out

#- 147 DisableItem
samples/cli/sample-apps Platform disableItem \
    --itemId '10bRSM0C0fdK0raV' \
    --namespace $AB_NAMESPACE \
    --storeId 'I9qjJhAwRX6vH7uu' \
    --body '{"featuresToCheck": ["DLC", "ENTITLEMENT", "CAMPAIGN"]}' \
    > test.out 2>&1
eval_tap $? 147 'DisableItem' test.out

#- 148 GetItemDynamicData
samples/cli/sample-apps Platform getItemDynamicData \
    --itemId 'XVVKEX1JRNuc6NC3' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 148 'GetItemDynamicData' test.out

#- 149 EnableItem
samples/cli/sample-apps Platform enableItem \
    --itemId 'P3Qyp46nBSlnaLGd' \
    --namespace $AB_NAMESPACE \
    --storeId '06qcUPy6R2hRgn8K' \
    > test.out 2>&1
eval_tap $? 149 'EnableItem' test.out

#- 150 FeatureItem
samples/cli/sample-apps Platform featureItem \
    --feature 'q6QXFFvqm2ioLHDV' \
    --itemId '7AHjc8FLcVkf0M9W' \
    --namespace $AB_NAMESPACE \
    --storeId '7TjTg5Qx2Bx8cvQV' \
    > test.out 2>&1
eval_tap $? 150 'FeatureItem' test.out

#- 151 DefeatureItem
samples/cli/sample-apps Platform defeatureItem \
    --feature '2Aq1QzirzvqSOkwQ' \
    --itemId '6SIBlo3LPf0J8PZS' \
    --namespace $AB_NAMESPACE \
    --storeId 'TsX2VJuG0GMokUYH' \
    > test.out 2>&1
eval_tap $? 151 'DefeatureItem' test.out

#- 152 GetLocaleItem
samples/cli/sample-apps Platform getLocaleItem \
    --itemId 'moGfaVwn2bZe3A1H' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --language 'O0oqIhMwsM7NHHgA' \
    --populateBundle 'false' \
    --region 'VAHIesWJn9b1Fbde' \
    --storeId 'wliilqbq4vbZfV8m' \
    > test.out 2>&1
eval_tap $? 152 'GetLocaleItem' test.out

#- 153 UpdateItemPurchaseCondition
samples/cli/sample-apps Platform updateItemPurchaseCondition \
    --itemId 'Vh02DGAKbR1JYrb9' \
    --namespace $AB_NAMESPACE \
    --storeId 'pgNcu2gRr7v5NpXz' \
    --body '{"purchaseCondition": {"conditionGroups": [{"operator": "or", "predicates": [{"anyOf": 5, "code": "Ts4MuJctfzl0ODiN", "comparison": "includes", "name": "NEwM97bL40wXflKf", "predicateType": "SeasonPassPredicate", "value": "Gf3pCs6FgcNgqkNT", "values": ["kztgoRAklHVqdr2F", "Vh1lPSJqzdijRaN3", "Tut3AkQAeNqw4t6k"]}, {"anyOf": 61, "code": "je00ns20pIHGfKmD", "comparison": "isGreaterThanOrEqual", "name": "vxNBm0ikwdZ0ROIh", "predicateType": "SeasonPassPredicate", "value": "Oo5EjpVDFHehQv5h", "values": ["T6IkWepKmun7CsU8", "FCacaNjKjGeBr0BW", "rME8RkABJEZnPfH0"]}, {"anyOf": 7, "code": "ZqSKEAZrIkFiTE8k", "comparison": "excludes", "name": "5ggwW7j7Fnyss8Wb", "predicateType": "StatisticCodePredicate", "value": "3vLUgkUfPa61eFLY", "values": ["RCohBS3PQeitx0IS", "Q4zHqyblnSa8xPii", "q9P0c27TV9R4KNo2"]}]}, {"operator": "or", "predicates": [{"anyOf": 61, "code": "dnk0SxX98kaQyACY", "comparison": "isLessThanOrEqual", "name": "XvOCijGpiizFJn1H", "predicateType": "SeasonPassPredicate", "value": "BdxgeO8Q4HFPcHKT", "values": ["vVKtZA46kgSiTTZd", "P3Y8hH9VsKDlTFB4", "NblcqIqTlqAVb1k9"]}, {"anyOf": 90, "code": "3JfDNoTMkWVWqfgE", "comparison": "includes", "name": "MG6tD2JboBjOfXxR", "predicateType": "SeasonPassPredicate", "value": "ikJdXSu35GlSdqGe", "values": ["AprKWMBkSDrwZ8NG", "Gc4fM4DTqq4t9iPA", "DTolpg8FhujVcCk2"]}, {"anyOf": 91, "code": "BovfvhViirbqlBll", "comparison": "isNot", "name": "Ncptv9TTaN5DDC17", "predicateType": "SeasonTierPredicate", "value": "fPOVOzUMpsZ3F6iD", "values": ["wkqmzu7vH7EjW8da", "iKyPoP8Q7F1zJmbr", "M7LG2B4vyaL3kANR"]}]}, {"operator": "and", "predicates": [{"anyOf": 88, "code": "Dk1kO97ALbBIXC8n", "comparison": "is", "name": "DRzXTtbQUS9Tq3Uz", "predicateType": "SeasonTierPredicate", "value": "PQqbsBdXHQEHcqt6", "values": ["fe3HWkc6wMAy2rJQ", "3hf95IYdYowOmC5T", "VDOY2wF83HsJtr90"]}, {"anyOf": 3, "code": "9sGnKObZT5NKpToF", "comparison": "isNot", "name": "FSt7ypqFhzgvJyUC", "predicateType": "EntitlementPredicate", "value": "aHEmZV1SYH6yLzBZ", "values": ["5SpwsuOBVFntmn70", "ziAJyVDG2CqvjGOU", "GlTZpj8FUaBO1YvB"]}, {"anyOf": 1, "code": "vFkUW9g1uvfURxpv", "comparison": "isGreaterThanOrEqual", "name": "8VDiVSkp2rwKoaTI", "predicateType": "SeasonPassPredicate", "value": "9G1IUuyYMf3IssfK", "values": ["xd2gdm4NUxnph9vi", "rCdRrJoUOX4wwfz2", "qq4RESPzt5D2hzQk"]}]}]}}' \
    > test.out 2>&1
eval_tap $? 153 'UpdateItemPurchaseCondition' test.out

#- 154 QueryItemReferences
samples/cli/sample-apps Platform queryItemReferences \
    --itemId 'GnqaZ81jU1tbRR5y' \
    --namespace $AB_NAMESPACE \
    --featuresToCheck '["DLC", "CAMPAIGN", "ENTITLEMENT"]' \
    --storeId 'eAhUsxTwusEiHsVR' \
    > test.out 2>&1
eval_tap $? 154 'QueryItemReferences' test.out

#- 155 ReturnItem
samples/cli/sample-apps Platform returnItem \
    --itemId 'jUDnd79mZXUDMcDA' \
    --namespace $AB_NAMESPACE \
    --body '{"orderNo": "iSoelMAFAS6qXIzM"}' \
    > test.out 2>&1
eval_tap $? 155 'ReturnItem' test.out

#- 156 QueryKeyGroups
samples/cli/sample-apps Platform queryKeyGroups \
    --namespace $AB_NAMESPACE \
    --limit '57' \
    --name '5x8KURBCMC4puK81' \
    --offset '18' \
    --tag 'yGhegmZc5iOXlk6z' \
    > test.out 2>&1
eval_tap $? 156 'QueryKeyGroups' test.out

#- 157 CreateKeyGroup
samples/cli/sample-apps Platform createKeyGroup \
    --namespace $AB_NAMESPACE \
    --body '{"description": "gK2YyEh5lgwdUf9b", "name": "gYRPnHxkwnfPpykv", "status": "ACTIVE", "tags": ["ww83v2PKji4keJKp", "stNRDJOQmaEPlPv1", "pIw8bledvmXzKXcJ"]}' \
    > test.out 2>&1
eval_tap $? 157 'CreateKeyGroup' test.out

#- 158 GetKeyGroupByBoothName
eval_tap 0 158 'GetKeyGroupByBoothName # SKIP deprecated' test.out

#- 159 GetKeyGroup
samples/cli/sample-apps Platform getKeyGroup \
    --keyGroupId 'XKxdcZsL7Vp17ETY' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 159 'GetKeyGroup' test.out

#- 160 UpdateKeyGroup
samples/cli/sample-apps Platform updateKeyGroup \
    --keyGroupId 'yZKln50XuLIAhvpk' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "XSIZMsuDDuOwQisp", "name": "YXP0vocszDt97LfK", "status": "INACTIVE", "tags": ["qGkQOejwfi1zELYO", "xrywz0etIHAKQfXm", "9IHeHNRLqmespamP"]}' \
    > test.out 2>&1
eval_tap $? 160 'UpdateKeyGroup' test.out

#- 161 GetKeyGroupDynamic
samples/cli/sample-apps Platform getKeyGroupDynamic \
    --keyGroupId 'fAsO0SuZRTERk7r8' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 161 'GetKeyGroupDynamic' test.out

#- 162 ListKeys
samples/cli/sample-apps Platform listKeys \
    --keyGroupId 'n6pVc5uI4eALwilt' \
    --namespace $AB_NAMESPACE \
    --limit '77' \
    --offset '35' \
    --status 'ACTIVE' \
    > test.out 2>&1
eval_tap $? 162 'ListKeys' test.out

#- 163 UploadKeys
samples/cli/sample-apps Platform uploadKeys \
    --keyGroupId 'Z39uRpvc8tjsfpd2' \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 163 'UploadKeys' test.out

#- 164 QueryOrders
samples/cli/sample-apps Platform queryOrders \
    --namespace $AB_NAMESPACE \
    --endTime 'g0kQzjttRsDi2xJ7' \
    --limit '60' \
    --offset '34' \
    --orderNos '["g3fVBBpkR7BlDwVs", "HZSOihZTtTlRa5mP", "wUJ0QpnGEIMqlTNU"]' \
    --sortBy '7ObSnL4g1pxGg8k2' \
    --startTime 'YOrVNVBsdwQYHaFw' \
    --status 'CHARGED' \
    --withTotal 'false' \
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
    --orderNo '8sQNKVBlv9hCNJl4' \
    > test.out 2>&1
eval_tap $? 166 'GetOrder' test.out

#- 167 RefundOrder
samples/cli/sample-apps Platform refundOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'wCIKqKrHIdIpbn6p' \
    --body '{"description": "rVIVh6jueMFZhWnc"}' \
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
    --body '{"domains": ["GNOVbshjpDollUjd", "87LboGcNaj2h6CPl", "7DZwnTYJadYlqnPM"]}' \
    > test.out 2>&1
eval_tap $? 171 'UpdatePaymentDomainWhitelistConfig' test.out

#- 172 QueryPaymentNotifications
samples/cli/sample-apps Platform queryPaymentNotifications \
    --namespace $AB_NAMESPACE \
    --endDate 'q3EadPNuo3CByjTa' \
    --externalId 'U820c2r5ftsNHTEX' \
    --limit '37' \
    --notificationSource 'CHECKOUT' \
    --notificationType 'MVViEmXfX9fTUAGd' \
    --offset '90' \
    --paymentOrderNo 'IJbBgm7QJANiq55z' \
    --startDate 'N9hbKcHvRkUMnTlY' \
    --status 'ERROR' \
    > test.out 2>&1
eval_tap $? 172 'QueryPaymentNotifications' test.out

#- 173 QueryPaymentOrders
samples/cli/sample-apps Platform queryPaymentOrders \
    --namespace $AB_NAMESPACE \
    --channel 'INTERNAL' \
    --extTxId 'qr71kOtijZIUzkt9' \
    --limit '8' \
    --offset '100' \
    --status 'REFUND_FAILED' \
    > test.out 2>&1
eval_tap $? 173 'QueryPaymentOrders' test.out

#- 174 CreatePaymentOrderByDedicated
samples/cli/sample-apps Platform createPaymentOrderByDedicated \
    --namespace $AB_NAMESPACE \
    --body '{"currencyCode": "IHLf4iHlrgOlPo1d", "currencyNamespace": "sVeNEzxO2cU6kgPB", "customParameters": {"Ur3MqCabcFnO0FL6": {}, "yhdDGrI7dXCynBIX": {}, "Pn7QMDew3whPspQ3": {}}, "description": "NQNV9RIEZc420F2G", "extOrderNo": "4DDY9gTEAJYdNeqY", "extUserId": "CfLQaEAhQSsX4ZT6", "itemType": "OPTIONBOX", "language": "kD-vyYB_DZ", "metadata": {"25oANCr1b6bkZ0Cy": "xpOUXIyEcunZaP9T", "JMBS4se8XJUUv5Ja": "LtsZSVS6GIUyegGG", "OTGJ08Lf8Geq8508": "JPNCcdRYLtD6RRK3"}, "notifyUrl": "jtHU5J6ucaU1GIxM", "omitNotification": false, "platform": "VkAfqrtLov5DjdxU", "price": 97, "recurringPaymentOrderNo": "YSkfaSAT0be0HCte", "region": "YgaSVX3xHydAuLkv", "returnUrl": "FgkiLDP4o2A234G9", "sandbox": false, "sku": "chUCR24yRVaCnrtP", "subscriptionId": "dCYLat0Mdba7zKGj", "targetNamespace": "QBHL87AQHYqxNx1s", "targetUserId": "tmm1bGrMGeNQy6EF", "title": "A0o6551PhvrJQunp"}' \
    > test.out 2>&1
eval_tap $? 174 'CreatePaymentOrderByDedicated' test.out

#- 175 ListExtOrderNoByExtTxId
samples/cli/sample-apps Platform listExtOrderNoByExtTxId \
    --namespace $AB_NAMESPACE \
    --extTxId 'fnzpwybMGBYtZVp3' \
    > test.out 2>&1
eval_tap $? 175 'ListExtOrderNoByExtTxId' test.out

#- 176 GetPaymentOrder
samples/cli/sample-apps Platform getPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'Fy3YfNF1z5zMNYbr' \
    > test.out 2>&1
eval_tap $? 176 'GetPaymentOrder' test.out

#- 177 ChargePaymentOrder
samples/cli/sample-apps Platform chargePaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'LIiOKnSKWm65JsBa' \
    --body '{"extTxId": "jaarQbUZ8zf46Pu9", "paymentMethod": "UjnUAblptjTCqsGv", "paymentProvider": "WALLET"}' \
    > test.out 2>&1
eval_tap $? 177 'ChargePaymentOrder' test.out

#- 178 RefundPaymentOrderByDedicated
samples/cli/sample-apps Platform refundPaymentOrderByDedicated \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo '5EXrW3l0ll76AQ3A' \
    --body '{"description": "UiSDmTvKoKLBCkX8"}' \
    > test.out 2>&1
eval_tap $? 178 'RefundPaymentOrderByDedicated' test.out

#- 179 SimulatePaymentOrderNotification
samples/cli/sample-apps Platform simulatePaymentOrderNotification \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'DVpqiHQKcgWSwAka' \
    --body '{"amount": 13, "currencyCode": "Vm25x3IEwFTsx05L", "notifyType": "CHARGE", "paymentProvider": "XSOLLA", "salesTax": 83, "vat": 64}' \
    > test.out 2>&1
eval_tap $? 179 'SimulatePaymentOrderNotification' test.out

#- 180 GetPaymentOrderChargeStatus
samples/cli/sample-apps Platform getPaymentOrderChargeStatus \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'yvFJ9KGtT8gyl1WO' \
    > test.out 2>&1
eval_tap $? 180 'GetPaymentOrderChargeStatus' test.out

#- 181 GetPsnEntitlementOwnership
samples/cli/sample-apps Platform getPsnEntitlementOwnership \
    --entitlementLabel 'j1eFWuDXWVEa3ROw' \
    --namespace $AB_NAMESPACE \
    --body '{"accessToken": "onnvxxthWmcbBKZO", "serviceLabel": 26}' \
    > test.out 2>&1
eval_tap $? 181 'GetPsnEntitlementOwnership' test.out

#- 182 GetXboxEntitlementOwnership
samples/cli/sample-apps Platform getXboxEntitlementOwnership \
    --namespace $AB_NAMESPACE \
    --productSku 'UHbJLjTcSjkbfjsO' \
    --body '{"delegationToken": "n7coyc6kjJXNCmHA", "sandboxId": "BiEVi0GFtKnGh7RH"}' \
    > test.out 2>&1
eval_tap $? 182 'GetXboxEntitlementOwnership' test.out

#- 183 GetPlatformEntitlementConfig
samples/cli/sample-apps Platform getPlatformEntitlementConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Xbox' \
    > test.out 2>&1
eval_tap $? 183 'GetPlatformEntitlementConfig' test.out

#- 184 UpdatePlatformEntitlementConfig
samples/cli/sample-apps Platform updatePlatformEntitlementConfig \
    --namespace $AB_NAMESPACE \
    --platform 'GooglePlay' \
    --body '{"allowedPlatformOrigins": ["Other", "Oculus", "Playstation"]}' \
    > test.out 2>&1
eval_tap $? 184 'UpdatePlatformEntitlementConfig' test.out

#- 185 GetPlatformWalletConfig
samples/cli/sample-apps Platform getPlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Other' \
    > test.out 2>&1
eval_tap $? 185 'GetPlatformWalletConfig' test.out

#- 186 UpdatePlatformWalletConfig
samples/cli/sample-apps Platform updatePlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'GooglePlay' \
    --body '{"allowedBalanceOrigins": ["GooglePlay", "Playstation", "Oculus"]}' \
    > test.out 2>&1
eval_tap $? 186 'UpdatePlatformWalletConfig' test.out

#- 187 ResetPlatformWalletConfig
samples/cli/sample-apps Platform resetPlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Oculus' \
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
    --body '{"entitlement": {"consumable": {"enabled": true, "strategy": "CUSTOM"}, "durable": {"enabled": true, "strategy": "CUSTOM"}}, "wallet": {"enabled": true, "strategy": "ALWAYS_REVOKE"}}' \
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
    --endTime 'Sl8JGFBA09lg1p31' \
    --limit '93' \
    --offset '97' \
    --source 'OTHER' \
    --startTime 'IeeGAg1xMZt5brCa' \
    --status 'SUCCESS' \
    --transactionId 'LaAbIG9B3DH3tEA4' \
    --userId 'pTQr7Fsq9iEt1NHS' \
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
    --body '{"appConfig": {"appName": "Rwofese7dMLTHn7p"}, "customConfig": {"connectionType": "INSECURE", "grpcServerAddress": "7XLyWZufRf28Djux"}, "extendType": "CUSTOM"}' \
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
    --body '{"description": "0Az9nKwSD6Go7p36", "eventTopic": "4sPzWVaR8JmbDQ5K", "maxAwarded": 54, "maxAwardedPerUser": 54, "namespaceExpression": "Mu6QhxxVBSkc30u2", "rewardCode": "BY9lh6a7xyN1ZP5U", "rewardConditions": [{"condition": "tMMM7p7HNf187CVg", "conditionName": "1vbSaFIPEyUByU3J", "eventName": "trR4HQe9ERbWtr7B", "rewardItems": [{"duration": 12, "endDate": "1985-02-07T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "0w6gutFpd9OQqvKv", "quantity": 43, "sku": "VbJgYm2HrNDTsoNE"}, {"duration": 66, "endDate": "1971-05-08T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "IlGwxJHzl94ulpd6", "quantity": 15, "sku": "1dPb9fBf8H7CKvkb"}, {"duration": 39, "endDate": "1987-06-04T00:00:00Z", "identityType": "ITEM_ID", "itemId": "zKuF0lIrhzDykNnt", "quantity": 1, "sku": "7LlxfYUq1EtFLe5k"}]}, {"condition": "p9llu5QNsmNZNdfC", "conditionName": "CIuLXsZQ7YTvfi34", "eventName": "nIFhGU5wlZw4sg2y", "rewardItems": [{"duration": 58, "endDate": "1988-07-14T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "YLJMYDk06HrRIqOu", "quantity": 41, "sku": "3yukTa6ChbQ30jxC"}, {"duration": 24, "endDate": "1975-02-26T00:00:00Z", "identityType": "ITEM_ID", "itemId": "pFBVG8W0XUpjnBtK", "quantity": 60, "sku": "71Ui5I33v9nMvxDF"}, {"duration": 57, "endDate": "1998-09-23T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "dWPSHiR6nA8D6l6b", "quantity": 78, "sku": "LBE6yNdQKfhajxfw"}]}, {"condition": "rn5MBcg7bgviGmf1", "conditionName": "t3FjrX8CKd6KGit7", "eventName": "C4nQkr2nWfORLhoQ", "rewardItems": [{"duration": 11, "endDate": "1992-12-31T00:00:00Z", "identityType": "ITEM_ID", "itemId": "JjDPx4rNjjVFo7Ge", "quantity": 100, "sku": "nQWA6eEJPp2DFv1l"}, {"duration": 67, "endDate": "1975-07-05T00:00:00Z", "identityType": "ITEM_ID", "itemId": "m43BWRA6jACBcCs7", "quantity": 24, "sku": "4O64LTNRYRZ1a0xt"}, {"duration": 55, "endDate": "1992-07-15T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "asIzFsqY9s07sLI0", "quantity": 64, "sku": "glTtHfd51SebymHb"}]}], "userIdExpression": "I04Iu2R4vep6a99S"}' \
    > test.out 2>&1
eval_tap $? 197 'CreateReward' test.out

#- 198 QueryRewards
samples/cli/sample-apps Platform queryRewards \
    --namespace $AB_NAMESPACE \
    --eventTopic 'RMTD01nOjCpV7Pcy' \
    --limit '2' \
    --offset '43' \
    --sortBy '["rewardCode", "namespace:desc"]' \
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
    --rewardId 'pOn7IV220VyCxKAh' \
    > test.out 2>&1
eval_tap $? 201 'GetReward' test.out

#- 202 UpdateReward
samples/cli/sample-apps Platform updateReward \
    --namespace $AB_NAMESPACE \
    --rewardId 'mgxS9pz3LTVc6hir' \
    --body '{"description": "MOapNr2s8CMRhXlV", "eventTopic": "ICxct6ERGPpnILvH", "maxAwarded": 55, "maxAwardedPerUser": 21, "namespaceExpression": "G0pewtEU1JXd9fZQ", "rewardCode": "R2HoJOBXpSKvKdUx", "rewardConditions": [{"condition": "ezTClEtRdXNF8Yt0", "conditionName": "VIqzbp1dK3JePc0P", "eventName": "4654jVN6ikHRR8OG", "rewardItems": [{"duration": 15, "endDate": "1987-02-27T00:00:00Z", "identityType": "ITEM_ID", "itemId": "XTpU36taumWEj6Xy", "quantity": 24, "sku": "vn6wIM23DY0n1oWf"}, {"duration": 66, "endDate": "1991-04-24T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "HxO8hlCin0Q1VVQc", "quantity": 6, "sku": "5SExR2Sc5UKDsEOA"}, {"duration": 83, "endDate": "1984-05-30T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "H6orqp4u6DQ7yX3w", "quantity": 65, "sku": "rypJl4fV77icWeol"}]}, {"condition": "OvB8cWaUQjZAmV80", "conditionName": "L7rF4D5cwQ9DjeLo", "eventName": "TsfzNZk8kxsF33yv", "rewardItems": [{"duration": 9, "endDate": "1989-10-16T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "fSAbS7P0Mkt0f5l7", "quantity": 93, "sku": "t8vOH6YesknZSHr4"}, {"duration": 97, "endDate": "1976-06-06T00:00:00Z", "identityType": "ITEM_ID", "itemId": "DjKoqj1flSdHhXNr", "quantity": 51, "sku": "UOWnS4uRAhFPfWAJ"}, {"duration": 86, "endDate": "1995-11-30T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "8yBx0JZwDcalHQyx", "quantity": 59, "sku": "2NSqDUf7XDcL31no"}]}, {"condition": "4nhUJlH7ocpd7QEa", "conditionName": "v3VJUKwO8EnK9lS3", "eventName": "bol6RwMoHeCWc0Kv", "rewardItems": [{"duration": 82, "endDate": "1980-04-27T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "Cq73K0yK70tEwJK5", "quantity": 1, "sku": "oyNr0Fnww3eToiK6"}, {"duration": 84, "endDate": "1974-11-01T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "pgrkNivlo2UjePE9", "quantity": 96, "sku": "6MyWuLfKBR7xXBdW"}, {"duration": 48, "endDate": "1972-05-08T00:00:00Z", "identityType": "ITEM_ID", "itemId": "BF4Pw91ciPH4n8je", "quantity": 70, "sku": "A5L13SLehs9s55dL"}]}], "userIdExpression": "BJ3MG7sDs8Doi7fX"}' \
    > test.out 2>&1
eval_tap $? 202 'UpdateReward' test.out

#- 203 DeleteReward
samples/cli/sample-apps Platform deleteReward \
    --namespace $AB_NAMESPACE \
    --rewardId '33yKAveWmkVhOuiB' \
    > test.out 2>&1
eval_tap $? 203 'DeleteReward' test.out

#- 204 CheckEventCondition
samples/cli/sample-apps Platform checkEventCondition \
    --namespace $AB_NAMESPACE \
    --rewardId '9uTpUkIDb27P08xv' \
    --body '{"payload": {"3JkgwkzyZ0AvxF9B": {}, "r7tF7jSYwa8oTS0i": {}, "HUWIVoNjpe3bXZtk": {}}}' \
    > test.out 2>&1
eval_tap $? 204 'CheckEventCondition' test.out

#- 205 DeleteRewardConditionRecord
samples/cli/sample-apps Platform deleteRewardConditionRecord \
    --namespace $AB_NAMESPACE \
    --rewardId 'PthXrFJPZzqnsmdE' \
    --body '{"conditionName": "U0xH254qMWq7fIOX", "userId": "Bn1pkFkoM4mqn3Tp"}' \
    > test.out 2>&1
eval_tap $? 205 'DeleteRewardConditionRecord' test.out

#- 206 QuerySections
samples/cli/sample-apps Platform querySections \
    --namespace $AB_NAMESPACE \
    --end 'GQHy8gaqjUwT0lAO' \
    --limit '59' \
    --offset '10' \
    --start 'PyWTKyJaphdc4BTo' \
    --storeId 'vp7I92lIMH6QQnOl' \
    --viewId 'rEicGLMfs8qnEEZw' \
    > test.out 2>&1
eval_tap $? 206 'QuerySections' test.out

#- 207 CreateSection
samples/cli/sample-apps Platform createSection \
    --namespace $AB_NAMESPACE \
    --storeId '9sBsqlX9v3OR4u5o' \
    --body '{"active": true, "displayOrder": 85, "endDate": "1976-03-04T00:00:00Z", "ext": {"kFhJMi85buBkqGl9": {}, "WKL1MFCx2CUHi3M8": {}, "iIk4Vz08acI3oGmW": {}}, "fixedPeriodRotationConfig": {"backfillType": "NONE", "duration": 48, "itemCount": 60, "rule": "SEQUENCE"}, "items": [{"id": "hiv2MEQcicvMMGJr", "sku": "A6xySVJFMkvKzpHT"}, {"id": "ixRskQBM2iRG1h6C", "sku": "N6O54Z7ueyINA7Um"}, {"id": "TixE1cGOMGOzGn7s", "sku": "eBLb6HclIkDoaGum"}], "localizations": {"4FKgNvf8B5fL7JJs": {"description": "ZJWtpclEahYvDwvi", "localExt": {"aMtthB9gTyCJ3cNB": {}, "HKC66NjiRU2o6Wc9": {}, "Z9gLwSVSu29XzkCf": {}}, "longDescription": "2z8gomaPH4tKuatM", "title": "qOYCPxmpF7LStH4Q"}, "YlsFUs1hs3WObvBh": {"description": "FkeNtxK6KKDN7qIC", "localExt": {"rjLf0H9gUgIMx5xT": {}, "w8byKcP2izTGf7VW": {}, "bS0FsMCaDYOalANH": {}}, "longDescription": "4GRoPHaTTXhzcGOz", "title": "fHBUHrBH5Hur14q0"}, "gEbURHYhpFP89Uuw": {"description": "sbxIKLdpfeRgmdJh", "localExt": {"OWyD3rb3mkG70HPq": {}, "MvxgRik582PDMpBy": {}, "lOKlRmr7JYArr6ZE": {}}, "longDescription": "Y2KkWTZN4dXPEDqm", "title": "UXtYdS83ynCIw28R"}}, "name": "ecrSe6DtEFvgGA35", "rotationType": "NONE", "startDate": "1999-09-26T00:00:00Z", "viewId": "wPuzNhpVYvU5Yk7d"}' \
    > test.out 2>&1
eval_tap $? 207 'CreateSection' test.out

#- 208 PurgeExpiredSection
samples/cli/sample-apps Platform purgeExpiredSection \
    --namespace $AB_NAMESPACE \
    --storeId 'fbvhS74l73bwAvfT' \
    > test.out 2>&1
eval_tap $? 208 'PurgeExpiredSection' test.out

#- 209 GetSection
samples/cli/sample-apps Platform getSection \
    --namespace $AB_NAMESPACE \
    --sectionId 'kxj6X8tmiUgML7o7' \
    --storeId 'ReVki2KHNxK9pc0b' \
    > test.out 2>&1
eval_tap $? 209 'GetSection' test.out

#- 210 UpdateSection
samples/cli/sample-apps Platform updateSection \
    --namespace $AB_NAMESPACE \
    --sectionId 'hbqjyn1Wov1yEs7l' \
    --storeId 'ufXK704tGTX3IN8i' \
    --body '{"active": false, "displayOrder": 18, "endDate": "1986-07-18T00:00:00Z", "ext": {"lV1Mhk9gPz8XjjxA": {}, "59lg9qH3ZbjLYzjG": {}, "bbJTSJJzu5ULf3FY": {}}, "fixedPeriodRotationConfig": {"backfillType": "NONE", "duration": 95, "itemCount": 93, "rule": "LOOP"}, "items": [{"id": "6rc9Ke43l1pgeSRQ", "sku": "CK7APun0RH0Q27gs"}, {"id": "m83VDsMEIzPnrb1M", "sku": "7obgeQ1DpJRtLUHy"}, {"id": "6QKwO3VHXu5Vzwdm", "sku": "XxND28Q4XiL9hwlD"}], "localizations": {"NguKJpd8H7wdWWdf": {"description": "da6P7VjaA657cxCK", "localExt": {"NUb4SVlQybVnhZZs": {}, "pYHRikh0Sm5S3MPG": {}, "NL69P870WDKzMIju": {}}, "longDescription": "TFIz9t87cH5yeH3K", "title": "rd5H8EhDIb5nExrD"}, "puSxsXYwNRrmjmep": {"description": "FDVJGLm7HLXlltJx", "localExt": {"MKQ7zGurX9cxifGA": {}, "JI4QVC6PNz0P8UCA": {}, "UydXPqzEolPha6XW": {}}, "longDescription": "PJdX23CFxz3MmdYL", "title": "bcc67pLBXK2tEXFs"}, "Ki9XIaeSfWI7xBOW": {"description": "pXHDnZEB9ClayyPP", "localExt": {"UNmqrljv07Ev9AJv": {}, "gJ9MeqzPuQLKAOkx": {}, "JhXNSCcvpES1HeAY": {}}, "longDescription": "899pSZwRlUzKyzyP", "title": "34994wYj6pmB7qsl"}}, "name": "op8TW3CtV3vbGhCI", "rotationType": "FIXED_PERIOD", "startDate": "1979-06-12T00:00:00Z", "viewId": "fDlWjSX0CvEZz322"}' \
    > test.out 2>&1
eval_tap $? 210 'UpdateSection' test.out

#- 211 DeleteSection
samples/cli/sample-apps Platform deleteSection \
    --namespace $AB_NAMESPACE \
    --sectionId 'XgXt3DNrGQmtN1lQ' \
    --storeId '50EpWP2nXBnH5gfi' \
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
    --body '{"defaultLanguage": "AQrpiq1vJXrpcYUT", "defaultRegion": "8qks4TX9YxvaXdSj", "description": "IknTKlBG3MJz02y8", "supportedLanguages": ["M3QnjMBDqi6gCzrj", "3snRdDPvjZcAksWR", "KH6RwL65G7B3Gl6P"], "supportedRegions": ["4KCsiaGmcYepinSK", "W7gNIVwoLijK5jgz", "N3PbkwbalBLvIcHv"], "title": "UEr3VeZGLXTz7Zyr"}' \
    > test.out 2>&1
eval_tap $? 213 'CreateStore' test.out

#- 214 GetCatalogDefinition
samples/cli/sample-apps Platform getCatalogDefinition \
    --namespace $AB_NAMESPACE \
    --catalogType 'CATEGORY' \
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
    --body '{"catalogType": "ITEM", "fieldsToBeIncluded": ["SdLD5ofHUsdvv1Ua", "AV0Pb5YTNrLHKcW5", "ywTTRSHCgAyusqs5"], "idsToBeExported": ["xAbcIVCPxDc3izLn", "vkLxanV9tdXoqKAf", "l7Cb6qLUjUzPk0og"], "storeId": "wNIeCqclpBXhzmCS"}' \
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
    --storeId 'libdnv32G2iWMjKi' \
    > test.out 2>&1
eval_tap $? 222 'GetStore' test.out

#- 223 UpdateStore
samples/cli/sample-apps Platform updateStore \
    --namespace $AB_NAMESPACE \
    --storeId 'jpgPcafSgTLxGoZH' \
    --body '{"defaultLanguage": "7pXUZq8cNoguYcNH", "defaultRegion": "W3g0tq3jSlFOUaQc", "description": "RLlXWcpg1MQhQIO8", "supportedLanguages": ["WHbC29l2YTmypoEz", "ckaFhM7inuDKj869", "yujN7aMbyo2XilyA"], "supportedRegions": ["F8uZD6ovTJmTK0N8", "pencMbPsohEWPcR2", "YkUS19TXofqfP58e"], "title": "7UJMgoL8z1fJVZXq"}' \
    > test.out 2>&1
eval_tap $? 223 'UpdateStore' test.out

#- 224 DeleteStore
samples/cli/sample-apps Platform deleteStore \
    --namespace $AB_NAMESPACE \
    --storeId 'jd6hpRgVJHnKeLxu' \
    > test.out 2>&1
eval_tap $? 224 'DeleteStore' test.out

#- 225 QueryChanges
samples/cli/sample-apps Platform queryChanges \
    --namespace $AB_NAMESPACE \
    --storeId 'ZRuo80oGnwBNcXnx' \
    --action 'DELETE' \
    --itemSku 'Twp1Y8f7TZgXyWaT' \
    --itemType 'BUNDLE' \
    --limit '6' \
    --offset '45' \
    --selected 'true' \
    --sortBy '["createdAt:asc", "updatedAt", "updatedAt:desc"]' \
    --status 'PUBLISHED' \
    --type 'SECTION' \
    --updatedAtEnd 'Y43Rl0mKM0aMdkXU' \
    --updatedAtStart 'zoEuN8dgw8bPktzn' \
    --withTotal 'false' \
    > test.out 2>&1
eval_tap $? 225 'QueryChanges' test.out

#- 226 PublishAll
samples/cli/sample-apps Platform publishAll \
    --namespace $AB_NAMESPACE \
    --storeId 'wD8NWQ13OkZ5xvIP' \
    > test.out 2>&1
eval_tap $? 226 'PublishAll' test.out

#- 227 PublishSelected
samples/cli/sample-apps Platform publishSelected \
    --namespace $AB_NAMESPACE \
    --storeId 'cxErV9kMYgmosAUW' \
    > test.out 2>&1
eval_tap $? 227 'PublishSelected' test.out

#- 228 SelectAllRecords
samples/cli/sample-apps Platform selectAllRecords \
    --namespace $AB_NAMESPACE \
    --storeId 'pj5Wozh8wCSJI6NR' \
    > test.out 2>&1
eval_tap $? 228 'SelectAllRecords' test.out

#- 229 SelectAllRecordsByCriteria
samples/cli/sample-apps Platform selectAllRecordsByCriteria \
    --namespace $AB_NAMESPACE \
    --storeId 'Fttp8IPxhtMOo2SN' \
    --action 'DELETE' \
    --itemSku 'Nh4saPp018cSeCzB' \
    --itemType 'OPTIONBOX' \
    --selected 'true' \
    --type 'SECTION' \
    --updatedAtEnd '9UII5MZIq0cqEuEu' \
    --updatedAtStart '9cvxpXJ62LTFHJYw' \
    > test.out 2>&1
eval_tap $? 229 'SelectAllRecordsByCriteria' test.out

#- 230 GetStatistic
samples/cli/sample-apps Platform getStatistic \
    --namespace $AB_NAMESPACE \
    --storeId 'C7xvObKMROIpFh34' \
    --action 'UPDATE' \
    --itemSku '4jqlNfEBAfPzma6E' \
    --itemType 'MEDIA' \
    --type 'ITEM' \
    --updatedAtEnd 'm17zzzJIcq4ueHx8' \
    --updatedAtStart 'AzkwlBPS0VWrt1XV' \
    > test.out 2>&1
eval_tap $? 230 'GetStatistic' test.out

#- 231 UnselectAllRecords
samples/cli/sample-apps Platform unselectAllRecords \
    --namespace $AB_NAMESPACE \
    --storeId 'A6teq5k58gXPitoC' \
    > test.out 2>&1
eval_tap $? 231 'UnselectAllRecords' test.out

#- 232 SelectRecord
samples/cli/sample-apps Platform selectRecord \
    --changeId 'NYDLSrY8gMWK75My' \
    --namespace $AB_NAMESPACE \
    --storeId 'K7m9hixM9txckq5Y' \
    > test.out 2>&1
eval_tap $? 232 'SelectRecord' test.out

#- 233 UnselectRecord
samples/cli/sample-apps Platform unselectRecord \
    --changeId 'R8kmHCx129CUesXm' \
    --namespace $AB_NAMESPACE \
    --storeId 'F5jUDms4N96sKRbr' \
    > test.out 2>&1
eval_tap $? 233 'UnselectRecord' test.out

#- 234 CloneStore
samples/cli/sample-apps Platform cloneStore \
    --namespace $AB_NAMESPACE \
    --storeId 'YXaDoNcWSM01sFfa' \
    --targetStoreId 'dludFBfhQNdwBYmg' \
    > test.out 2>&1
eval_tap $? 234 'CloneStore' test.out

#- 235 ExportStore
eval_tap 0 235 'ExportStore # SKIP deprecated' test.out

#- 236 QueryImportHistory
samples/cli/sample-apps Platform queryImportHistory \
    --namespace $AB_NAMESPACE \
    --storeId 'qMSpFxQge9sEwcO3' \
    --end 'slcbIYYMCVNWN0ce' \
    --limit '9' \
    --offset '86' \
    --sortBy 'FSJFIDugYycUhbO0' \
    --start 'G4q4pGrse346leKN' \
    --success 'true' \
    > test.out 2>&1
eval_tap $? 236 'QueryImportHistory' test.out

#- 237 ImportStoreByCSV
samples/cli/sample-apps Platform importStoreByCSV \
    --namespace $AB_NAMESPACE \
    --storeId 'uU8dmLIymz5bY0Zf' \
    --category 'tmp.dat' \
    --display 'tmp.dat' \
    --item 'tmp.dat' \
    --notes 'hd8tkt03ebCrU5OP' \
    --section 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 237 'ImportStoreByCSV' test.out

#- 238 QuerySubscriptions
samples/cli/sample-apps Platform querySubscriptions \
    --namespace $AB_NAMESPACE \
    --chargeStatus 'NEVER' \
    --itemId 'iXQTz63y2yZR8JE1' \
    --limit '85' \
    --offset '36' \
    --sku 'C9641BDrAQVLXVbo' \
    --status 'CANCELLED' \
    --subscribedBy 'USER' \
    --userId 'yky6s4QuqBMVp4rI' \
    > test.out 2>&1
eval_tap $? 238 'QuerySubscriptions' test.out

#- 239 RecurringChargeSubscription
samples/cli/sample-apps Platform recurringChargeSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'mdilhXCLpPeuSRYK' \
    > test.out 2>&1
eval_tap $? 239 'RecurringChargeSubscription' test.out

#- 240 GetTicketDynamic
samples/cli/sample-apps Platform getTicketDynamic \
    --boothName 'c4TnTzUMXOh77vUN' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 240 'GetTicketDynamic' test.out

#- 241 DecreaseTicketSale
samples/cli/sample-apps Platform decreaseTicketSale \
    --boothName 'ahvRFtlh0JavnFNq' \
    --namespace $AB_NAMESPACE \
    --body '{"orderNo": "Lgjo3JVFt6jagly2"}' \
    > test.out 2>&1
eval_tap $? 241 'DecreaseTicketSale' test.out

#- 242 GetTicketBoothID
samples/cli/sample-apps Platform getTicketBoothID \
    --boothName 'Xxrm98bjLxcozZb4' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 242 'GetTicketBoothID' test.out

#- 243 IncreaseTicketSale
samples/cli/sample-apps Platform increaseTicketSale \
    --boothName 'g9ZdAT1w2D6EaQbV' \
    --namespace $AB_NAMESPACE \
    --body '{"count": 3, "orderNo": "rVT5i954KQ6pQ7qs"}' \
    > test.out 2>&1
eval_tap $? 243 'IncreaseTicketSale' test.out

#- 244 Commit
samples/cli/sample-apps Platform commit \
    --namespace $AB_NAMESPACE \
    --body '{"actions": [{"operations": [{"creditPayload": {"balanceOrigin": "Other", "count": 23, "currencyCode": "QGCivPY8K6HVEHum", "expireAt": "1977-12-22T00:00:00Z"}, "debitPayload": {"count": 35, "currencyCode": "M84g6lx52nfmGS3E", "walletPlatform": "Oculus"}, "fulFillItemPayload": {"count": 9, "entitlementCollectionId": "t5sKHCIy6H6SkIfq", "entitlementOrigin": "Other", "itemIdentity": "8hwybyGiL5w3pThd", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 20, "entitlementId": "kOowNO5zSYMLJ8cS"}, "type": "CREDIT_WALLET"}, {"creditPayload": {"balanceOrigin": "System", "count": 36, "currencyCode": "ECtwYlGDEyOP3n0c", "expireAt": "1997-06-03T00:00:00Z"}, "debitPayload": {"count": 41, "currencyCode": "g4A3rtB73mmx0LUV", "walletPlatform": "GooglePlay"}, "fulFillItemPayload": {"count": 38, "entitlementCollectionId": "nGFWdIlyhVnOIYxi", "entitlementOrigin": "Other", "itemIdentity": "CQ5sxkIFoxS9TySw", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 35, "entitlementId": "cHxL1N5fQnXuY6tx"}, "type": "REVOKE_ENTITLEMENT"}, {"creditPayload": {"balanceOrigin": "System", "count": 24, "currencyCode": "Qznlr61X9GuagDiR", "expireAt": "1995-04-29T00:00:00Z"}, "debitPayload": {"count": 57, "currencyCode": "bFnFxAzy3mgc3XK4", "walletPlatform": "Other"}, "fulFillItemPayload": {"count": 25, "entitlementCollectionId": "ML0oG8rrlF8D9vEy", "entitlementOrigin": "GooglePlay", "itemIdentity": "5ughbZk09gPGM5dQ", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 96, "entitlementId": "I9b3GXyNAwF5w09v"}, "type": "FULFILL_ITEM"}], "userId": "kRQXHGpmw0UOBP3c"}, {"operations": [{"creditPayload": {"balanceOrigin": "IOS", "count": 23, "currencyCode": "sEdcdiIXtQbnnkzz", "expireAt": "1971-05-03T00:00:00Z"}, "debitPayload": {"count": 63, "currencyCode": "jKXGLBubNFSOlUKA", "walletPlatform": "Steam"}, "fulFillItemPayload": {"count": 31, "entitlementCollectionId": "eV0Z51YpTqPDIDIO", "entitlementOrigin": "Xbox", "itemIdentity": "rfsI39MUhwLPsLlq", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 26, "entitlementId": "pVdrZhallxuqZ8wb"}, "type": "DEBIT_WALLET"}, {"creditPayload": {"balanceOrigin": "Steam", "count": 93, "currencyCode": "I5yEbyApIq3iiOOG", "expireAt": "1971-02-05T00:00:00Z"}, "debitPayload": {"count": 46, "currencyCode": "wgdfr3kEdjg8HdYe", "walletPlatform": "IOS"}, "fulFillItemPayload": {"count": 37, "entitlementCollectionId": "oZEvKWNenJiTYNiX", "entitlementOrigin": "Nintendo", "itemIdentity": "sQsY8mNt1JxRVMi8", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 63, "entitlementId": "J2KEr3d6OhkyzOqq"}, "type": "CREDIT_WALLET"}, {"creditPayload": {"balanceOrigin": "GooglePlay", "count": 54, "currencyCode": "aZgRE5MoOMKejp9i", "expireAt": "1978-06-30T00:00:00Z"}, "debitPayload": {"count": 91, "currencyCode": "WCbchCuwXc5ZHsES", "walletPlatform": "IOS"}, "fulFillItemPayload": {"count": 69, "entitlementCollectionId": "LT1Wl9bBhvMEsIws", "entitlementOrigin": "Playstation", "itemIdentity": "GAeYieLLRv1RIW0P", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 3, "entitlementId": "hNXXPaCeXCly4FYh"}, "type": "CREDIT_WALLET"}], "userId": "kKC7RVRLxAsAmh7T"}, {"operations": [{"creditPayload": {"balanceOrigin": "System", "count": 43, "currencyCode": "zzDUiYJ0ouQpJTGV", "expireAt": "1988-09-05T00:00:00Z"}, "debitPayload": {"count": 27, "currencyCode": "NNGVD6tZEev3fX8g", "walletPlatform": "Xbox"}, "fulFillItemPayload": {"count": 61, "entitlementCollectionId": "UTRFlCKolJFpO2xU", "entitlementOrigin": "Oculus", "itemIdentity": "y7hLQJBZ3DA0XI6t", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 54, "entitlementId": "NbqJneJA7ODcJvYe"}, "type": "FULFILL_ITEM"}, {"creditPayload": {"balanceOrigin": "System", "count": 49, "currencyCode": "Lm1Z44nHzxCRFxe5", "expireAt": "1993-07-31T00:00:00Z"}, "debitPayload": {"count": 79, "currencyCode": "ZjgEaBJd1KTO5JV6", "walletPlatform": "Nintendo"}, "fulFillItemPayload": {"count": 41, "entitlementCollectionId": "7Iyto0LKzkqPlka8", "entitlementOrigin": "Playstation", "itemIdentity": "3P67QYpKvS4xesNg", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 81, "entitlementId": "Y0EEwD2N4fNt9pdh"}, "type": "DEBIT_WALLET"}, {"creditPayload": {"balanceOrigin": "GooglePlay", "count": 13, "currencyCode": "cmN55bVRXcc5IpiO", "expireAt": "1978-03-26T00:00:00Z"}, "debitPayload": {"count": 12, "currencyCode": "dIxuLLbmz3KrGlMK", "walletPlatform": "Playstation"}, "fulFillItemPayload": {"count": 83, "entitlementCollectionId": "YOa4izkpMkQIDCbn", "entitlementOrigin": "Playstation", "itemIdentity": "manIcl7l9oWdwEYx", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 61, "entitlementId": "6LObpzTYTZ0vhzvY"}, "type": "FULFILL_ITEM"}], "userId": "jQHfhVonbqukZaeD"}], "metadata": {"C9l3CwSLFkbBUrBm": {}, "Vh5K6sOig87a5xwW": {}, "nYRUj7RKrXTIzNSk": {}}, "needPreCheck": false, "transactionId": "lI6iZjSSFv7rqKQM", "type": "zM4gGzyPW7BqGTD4"}' \
    > test.out 2>&1
eval_tap $? 244 'Commit' test.out

#- 245 GetTradeHistoryByCriteria
samples/cli/sample-apps Platform getTradeHistoryByCriteria \
    --namespace $AB_NAMESPACE \
    --limit '94' \
    --offset '86' \
    --status 'FAILED' \
    --type 'GpZoFs7ePSVA5bVa' \
    --userId '42xqdPnsMVv4qWhh' \
    > test.out 2>&1
eval_tap $? 245 'GetTradeHistoryByCriteria' test.out

#- 246 GetTradeHistoryByTransactionId
samples/cli/sample-apps Platform getTradeHistoryByTransactionId \
    --namespace $AB_NAMESPACE \
    --transactionId 'LNKfsicGN0NfV1NS' \
    > test.out 2>&1
eval_tap $? 246 'GetTradeHistoryByTransactionId' test.out

#- 247 UnlockSteamUserAchievement
samples/cli/sample-apps Platform unlockSteamUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId '5cl8Hz0iwno8KNic' \
    --body '{"achievements": [{"id": "Mv4Td9H7hYtaRmGm", "value": 47}, {"id": "zwqk0SV6bFxnMjIR", "value": 81}, {"id": "MIftc4vAF7lhU98Z", "value": 12}], "steamUserId": "lTWFFzmn8W9OHGGL"}' \
    > test.out 2>&1
eval_tap $? 247 'UnlockSteamUserAchievement' test.out

#- 248 GetXblUserAchievements
samples/cli/sample-apps Platform getXblUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId 'xQSxTdlfNBnWIT8B' \
    --xboxUserId 'FNueHNyqv6y5taPj' \
    > test.out 2>&1
eval_tap $? 248 'GetXblUserAchievements' test.out

#- 249 UpdateXblUserAchievement
samples/cli/sample-apps Platform updateXblUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId '4Uilp7Clx77Bv7UD' \
    --body '{"achievements": [{"id": "u0TZw6bV34Xy0l6w", "percentComplete": 29}, {"id": "9wXeUGrQX3A30peE", "percentComplete": 20}, {"id": "YrAbwcdGvpeBUKNu", "percentComplete": 62}], "serviceConfigId": "9y5LYROMWyRWFZjX", "titleId": "QjN3ZEkM6sdHYYbN", "xboxUserId": "whUnKMMawFWVIVmU"}' \
    > test.out 2>&1
eval_tap $? 249 'UpdateXblUserAchievement' test.out

#- 250 AnonymizeCampaign
samples/cli/sample-apps Platform anonymizeCampaign \
    --namespace $AB_NAMESPACE \
    --userId 'zrUT1keMDwfy6zMY' \
    > test.out 2>&1
eval_tap $? 250 'AnonymizeCampaign' test.out

#- 251 AnonymizeEntitlement
samples/cli/sample-apps Platform anonymizeEntitlement \
    --namespace $AB_NAMESPACE \
    --userId '8CsXtSYAOQLGnJaY' \
    > test.out 2>&1
eval_tap $? 251 'AnonymizeEntitlement' test.out

#- 252 AnonymizeFulfillment
samples/cli/sample-apps Platform anonymizeFulfillment \
    --namespace $AB_NAMESPACE \
    --userId 'Q4CTy0Mh2jl3V3yC' \
    > test.out 2>&1
eval_tap $? 252 'AnonymizeFulfillment' test.out

#- 253 AnonymizeIntegration
samples/cli/sample-apps Platform anonymizeIntegration \
    --namespace $AB_NAMESPACE \
    --userId 'wgKzT0Bt9rY4uB21' \
    > test.out 2>&1
eval_tap $? 253 'AnonymizeIntegration' test.out

#- 254 AnonymizeOrder
samples/cli/sample-apps Platform anonymizeOrder \
    --namespace $AB_NAMESPACE \
    --userId 'gulOUNoTIsmZV3ox' \
    > test.out 2>&1
eval_tap $? 254 'AnonymizeOrder' test.out

#- 255 AnonymizePayment
samples/cli/sample-apps Platform anonymizePayment \
    --namespace $AB_NAMESPACE \
    --userId 'ExHKFvexcJ2FUdw0' \
    > test.out 2>&1
eval_tap $? 255 'AnonymizePayment' test.out

#- 256 AnonymizeRevocation
samples/cli/sample-apps Platform anonymizeRevocation \
    --namespace $AB_NAMESPACE \
    --userId 'Zoy0bcnn7DDuzPWj' \
    > test.out 2>&1
eval_tap $? 256 'AnonymizeRevocation' test.out

#- 257 AnonymizeSubscription
samples/cli/sample-apps Platform anonymizeSubscription \
    --namespace $AB_NAMESPACE \
    --userId '8k8OjfrH8N6KDPru' \
    > test.out 2>&1
eval_tap $? 257 'AnonymizeSubscription' test.out

#- 258 AnonymizeWallet
samples/cli/sample-apps Platform anonymizeWallet \
    --namespace $AB_NAMESPACE \
    --userId 'WsG0cqMlyi9ohsCG' \
    > test.out 2>&1
eval_tap $? 258 'AnonymizeWallet' test.out

#- 259 GetUserDLCByPlatform
samples/cli/sample-apps Platform getUserDLCByPlatform \
    --namespace $AB_NAMESPACE \
    --userId 'CnD5YgCUxEhQ30vk' \
    --type 'OCULUS' \
    > test.out 2>&1
eval_tap $? 259 'GetUserDLCByPlatform' test.out

#- 260 GetUserDLC
samples/cli/sample-apps Platform getUserDLC \
    --namespace $AB_NAMESPACE \
    --userId 'C1wM28WPTv5uPb9C' \
    --includeAllNamespaces 'true' \
    --status 'REVOKE_FAILED' \
    --type 'STEAM' \
    > test.out 2>&1
eval_tap $? 260 'GetUserDLC' test.out

#- 261 QueryUserEntitlements
samples/cli/sample-apps Platform queryUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'TRVufqYWaQMgrb81' \
    --activeOnly 'false' \
    --appType 'DEMO' \
    --collectionId 'vO33KOaN8gLW3xI8' \
    --entitlementClazz 'SUBSCRIPTION' \
    --entitlementName 'dK743KmSwk9ROny8' \
    --features '["JzBwnLCpiFUowsGd", "UWQOpUcOSvvstVJa", "q5ZgNJdkaCzivJNC"]' \
    --fuzzyMatchName 'false' \
    --ignoreActiveDate 'false' \
    --itemId '["zGsLtaD69j1ByU7L", "Pqmw1E8TZmlLYFA6", "a7FoddVJrDwOI0LZ"]' \
    --limit '17' \
    --offset '87' \
    --origin 'Xbox' \
    > test.out 2>&1
eval_tap $? 261 'QueryUserEntitlements' test.out

#- 262 GrantUserEntitlement
samples/cli/sample-apps Platform grantUserEntitlement \
    --namespace $AB_NAMESPACE \
    --userId '90e4QE7OQf7pUINy' \
    --body '[{"collectionId": "osUDM2xWXSyEZgkj", "endDate": "1984-01-13T00:00:00Z", "grantedCode": "1JoueQnGZHMuSWFo", "itemId": "UgJ9dVk78cH6Lef1", "itemNamespace": "EOKZCEd32rIwyuq6", "language": "gIE-SwcF", "metadata": {"HtbKbsRvynMQy9cm": {}, "QzopOcK5bO33sZTT": {}, "tehRbIKWu203lTh5": {}}, "origin": "Playstation", "quantity": 86, "region": "dNGhnSNuKMwSKx5B", "source": "REDEEM_CODE", "startDate": "1993-06-16T00:00:00Z", "storeId": "3NMh9IFsrQughPRh"}, {"collectionId": "x5jhM7WGSklAPKyH", "endDate": "1974-06-09T00:00:00Z", "grantedCode": "y0LMWSEYQBkOfLN8", "itemId": "Qctu7vCRTOUTx7r9", "itemNamespace": "hGnZwIX5ca2Rf8rN", "language": "Ed", "metadata": {"pDSWmEDJLA3SLotu": {}, "VNVzlqBaQ9myzgX7": {}, "VXdGFyJrHydSfb2n": {}}, "origin": "Nintendo", "quantity": 56, "region": "SJTn2l53hLiTMeGA", "source": "PROMOTION", "startDate": "1981-07-26T00:00:00Z", "storeId": "gIJlnJME6OGXTGCZ"}, {"collectionId": "ay1awlJoyAqVobvp", "endDate": "1994-07-14T00:00:00Z", "grantedCode": "qiUnHMZ63Gs99kpQ", "itemId": "aWsqbUJHveWrmzLP", "itemNamespace": "eMJ9ZGaUU4AuNZ6u", "language": "Bw-YgWK", "metadata": {"LmTt8vKIrR06nNE6": {}, "dUIetEI9qJBLjVJd": {}, "KUraEwcXJnldgXIU": {}}, "origin": "Twitch", "quantity": 58, "region": "aREsaGFRilFWmrE5", "source": "GIFT", "startDate": "1979-08-03T00:00:00Z", "storeId": "C0UHPpCXzkh5TMbq"}]' \
    > test.out 2>&1
eval_tap $? 262 'GrantUserEntitlement' test.out

#- 263 GetUserAppEntitlementByAppId
samples/cli/sample-apps Platform getUserAppEntitlementByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'LVdx1w1CPIW26K1T' \
    --activeOnly 'true' \
    --appId '8A0L4ceRDa1zWdbI' \
    > test.out 2>&1
eval_tap $? 263 'GetUserAppEntitlementByAppId' test.out

#- 264 QueryUserEntitlementsByAppType
samples/cli/sample-apps Platform queryUserEntitlementsByAppType \
    --namespace $AB_NAMESPACE \
    --userId 'hcUnssGESHABLjb3' \
    --activeOnly 'true' \
    --limit '47' \
    --offset '21' \
    --appType 'GAME' \
    > test.out 2>&1
eval_tap $? 264 'QueryUserEntitlementsByAppType' test.out

#- 265 GetUserEntitlementsByIds
samples/cli/sample-apps Platform getUserEntitlementsByIds \
    --namespace $AB_NAMESPACE \
    --userId '8TOVCEQp3k0gIglW' \
    --ids '["FMBHnKb6RQjRFBQe", "Vo72ASJE38CEf0Xc", "BQH8cwLXlylEaXz7"]' \
    > test.out 2>&1
eval_tap $? 265 'GetUserEntitlementsByIds' test.out

#- 266 GetUserEntitlementByItemId
samples/cli/sample-apps Platform getUserEntitlementByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'xV1KmxihVRqfZCvE' \
    --activeOnly 'true' \
    --entitlementClazz 'OPTIONBOX' \
    --platform 'd8eTk54FLb1IiNcH' \
    --itemId 'SAhKC1obNubOJsJR' \
    > test.out 2>&1
eval_tap $? 266 'GetUserEntitlementByItemId' test.out

#- 267 GetUserActiveEntitlementsByItemIds
samples/cli/sample-apps Platform getUserActiveEntitlementsByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'rkgbzLm9HKcipKDm' \
    --ids '["k5HvlvyRXCS52djD", "Ssw6q5ZUYrzjVmFg", "bPu65FLeFOuo9rkF"]' \
    --platform 'W0G4JlNFDmNt9stD' \
    > test.out 2>&1
eval_tap $? 267 'GetUserActiveEntitlementsByItemIds' test.out

#- 268 GetUserEntitlementBySku
samples/cli/sample-apps Platform getUserEntitlementBySku \
    --namespace $AB_NAMESPACE \
    --userId 'gzpJUcfcnX7AWHR7' \
    --activeOnly 'true' \
    --entitlementClazz 'APP' \
    --platform '9NkRYISM3by3yMuc' \
    --sku 'Wc3zz7JmEJRG1QIz' \
    > test.out 2>&1
eval_tap $? 268 'GetUserEntitlementBySku' test.out

#- 269 ExistsAnyUserActiveEntitlement
samples/cli/sample-apps Platform existsAnyUserActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'PChz5jXNtPqOyBLF' \
    --appIds '["XGzxKyKF6ixRlArV", "Ioh7WlE7qTLcbdom", "FaoiZdNw9jeV3XOk"]' \
    --itemIds '["BaTE0GqqTavnDPmI", "LzHG9IoLYb3aI1Iw", "Ug7LIxKL3Oia2uZ3"]' \
    --platform 'pFFQN4WjurfgSMeV' \
    --skus '["h29tVaCgrCRD9nRU", "PWn4xpqPUU24th2d", "zoZHGNfqg0v2Dliw"]' \
    > test.out 2>&1
eval_tap $? 269 'ExistsAnyUserActiveEntitlement' test.out

#- 270 ExistsAnyUserActiveEntitlementByItemIds
samples/cli/sample-apps Platform existsAnyUserActiveEntitlementByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'QSydvyPD4VhMUsLJ' \
    --platform 'w1fVHMmnTTIpzNYW' \
    --itemIds '["C8bldqIMjZshKzYZ", "Qh4R1ZXxAyF3gpGt", "VqedPXS7r9ZTjQmC"]' \
    > test.out 2>&1
eval_tap $? 270 'ExistsAnyUserActiveEntitlementByItemIds' test.out

#- 271 GetUserAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform getUserAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'gPiubRoZGOpijlyW' \
    --appId 'sWJApj26Rz1KSoVi' \
    > test.out 2>&1
eval_tap $? 271 'GetUserAppEntitlementOwnershipByAppId' test.out

#- 272 GetUserEntitlementOwnershipByItemId
samples/cli/sample-apps Platform getUserEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'swrV0OJKBUbcK4SD' \
    --entitlementClazz 'MEDIA' \
    --platform 'btAdy8t6I6BZ4kEZ' \
    --itemId '7l6aK87fkS2ape2q' \
    > test.out 2>&1
eval_tap $? 272 'GetUserEntitlementOwnershipByItemId' test.out

#- 273 GetUserEntitlementOwnershipByItemIds
samples/cli/sample-apps Platform getUserEntitlementOwnershipByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'lNzyrBuDDOawUWqT' \
    --ids '["8qT70XlnQZFSqDw5", "hNRd0jEREMo5tGJO", "ILKnu7Q7mFOtWKGF"]' \
    --platform 'MaEAV9PwDBJ1i1UG' \
    > test.out 2>&1
eval_tap $? 273 'GetUserEntitlementOwnershipByItemIds' test.out

#- 274 GetUserEntitlementOwnershipBySku
samples/cli/sample-apps Platform getUserEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --userId 'PIzjUe8Lfqa32AJL' \
    --entitlementClazz 'APP' \
    --platform 'aoHf8AYnZdbdARlJ' \
    --sku 'j4yymEIf1j74D0su' \
    > test.out 2>&1
eval_tap $? 274 'GetUserEntitlementOwnershipBySku' test.out

#- 275 RevokeAllEntitlements
samples/cli/sample-apps Platform revokeAllEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'RO2SzOjU8aPZsvzq' \
    > test.out 2>&1
eval_tap $? 275 'RevokeAllEntitlements' test.out

#- 276 RevokeUserEntitlements
samples/cli/sample-apps Platform revokeUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId '46fCy3QCAOhH84GW' \
    --entitlementIds 'LGmKGnm1b64gq7cT' \
    > test.out 2>&1
eval_tap $? 276 'RevokeUserEntitlements' test.out

#- 277 GetUserEntitlement
samples/cli/sample-apps Platform getUserEntitlement \
    --entitlementId 'DcYtFG6lkvR1xLCd' \
    --namespace $AB_NAMESPACE \
    --userId 'TRwq5Pmiq748E4AQ' \
    > test.out 2>&1
eval_tap $? 277 'GetUserEntitlement' test.out

#- 278 UpdateUserEntitlement
samples/cli/sample-apps Platform updateUserEntitlement \
    --entitlementId 'nAZeS9BmFQ8PEAAH' \
    --namespace $AB_NAMESPACE \
    --userId 'ZWEkFm8vFI4hT0x5' \
    --body '{"collectionId": "hgjb4vrF54TCjMb4", "endDate": "1981-07-04T00:00:00Z", "nullFieldList": ["kAZXmfcnqF5g3TXY", "67Hm1IVa4GY153Up", "OHerhuK6eN9q25GM"], "origin": "System", "reason": "TFTBbgwB0lI42uGg", "startDate": "1978-11-12T00:00:00Z", "status": "CONSUMED", "useCount": 98}' \
    > test.out 2>&1
eval_tap $? 278 'UpdateUserEntitlement' test.out

#- 279 ConsumeUserEntitlement
samples/cli/sample-apps Platform consumeUserEntitlement \
    --entitlementId 'StVwPoflTsNe4zFR' \
    --namespace $AB_NAMESPACE \
    --userId 'K8pwwU3QXbn8lUXW' \
    --body '{"metadata": {"a1Rkau5L1DLaJpcy": {}, "kZ9bbPT3iT2JYIzZ": {}, "iK20sFmQZNLXXWON": {}}, "options": ["QPQrIFg49hxICMvK", "jaq2oCR0JufNdYkA", "CCp7t5pgNczFF2II"], "platform": "GwDjfz3Zx8ayKQLJ", "requestId": "yQHzsappJRSW7f9V", "useCount": 93}' \
    > test.out 2>&1
eval_tap $? 279 'ConsumeUserEntitlement' test.out

#- 280 DisableUserEntitlement
samples/cli/sample-apps Platform disableUserEntitlement \
    --entitlementId 'vU9gVZCHKsBYqInn' \
    --namespace $AB_NAMESPACE \
    --userId 'bb8ChUSsBCGYNdJx' \
    > test.out 2>&1
eval_tap $? 280 'DisableUserEntitlement' test.out

#- 281 EnableUserEntitlement
samples/cli/sample-apps Platform enableUserEntitlement \
    --entitlementId 'hlkUN7ND6IL1UK9y' \
    --namespace $AB_NAMESPACE \
    --userId 'ESyOkIzRaimcEXCI' \
    > test.out 2>&1
eval_tap $? 281 'EnableUserEntitlement' test.out

#- 282 GetUserEntitlementHistories
samples/cli/sample-apps Platform getUserEntitlementHistories \
    --entitlementId '2lfHkaA1KpzgJpo4' \
    --namespace $AB_NAMESPACE \
    --userId '042gIcoy3gScZV13' \
    > test.out 2>&1
eval_tap $? 282 'GetUserEntitlementHistories' test.out

#- 283 RevokeUserEntitlement
samples/cli/sample-apps Platform revokeUserEntitlement \
    --entitlementId 's8ZdWCGPXrjvWYcM' \
    --namespace $AB_NAMESPACE \
    --userId 'SEmDaGIUs8ngKy9M' \
    --body '{"metadata": {"rWcfI9SkOmef6gEg": {}, "OPbUX19pq9THvTMp": {}, "cInwdqwGNVXrmmuU": {}}}' \
    > test.out 2>&1
eval_tap $? 283 'RevokeUserEntitlement' test.out

#- 284 RevokeUserEntitlementByUseCount
samples/cli/sample-apps Platform revokeUserEntitlementByUseCount \
    --entitlementId 'XYXc7wBl02b9nEG5' \
    --namespace $AB_NAMESPACE \
    --userId 'HynNEHeMME9mxY7N' \
    --body '{"reason": "0C2rW9AOanHe0lBO", "useCount": 16}' \
    > test.out 2>&1
eval_tap $? 284 'RevokeUserEntitlementByUseCount' test.out

#- 285 PreCheckRevokeUserEntitlementByUseCount
samples/cli/sample-apps Platform preCheckRevokeUserEntitlementByUseCount \
    --entitlementId 'K5VpBCHrHXkyu0Gl' \
    --namespace $AB_NAMESPACE \
    --userId 'FJVaYgmYhjfFOjc5' \
    --quantity '26' \
    > test.out 2>&1
eval_tap $? 285 'PreCheckRevokeUserEntitlementByUseCount' test.out

#- 286 RevokeUseCount
eval_tap 0 286 'RevokeUseCount # SKIP deprecated' test.out

#- 287 SellUserEntitlement
samples/cli/sample-apps Platform sellUserEntitlement \
    --entitlementId '0O95a5YQjg3HaEeK' \
    --namespace $AB_NAMESPACE \
    --userId 'pSlXgBXpM2Gezm13' \
    --body '{"platform": "Ly6d8hMVC8HH8pgl", "requestId": "OUVMo9ZyeWJAxdaZ", "useCount": 67}' \
    > test.out 2>&1
eval_tap $? 287 'SellUserEntitlement' test.out

#- 288 FulfillItem
samples/cli/sample-apps Platform fulfillItem \
    --namespace $AB_NAMESPACE \
    --userId '7Y6qZiB4mdir6G0F' \
    --body '{"duration": 32, "endDate": "1978-08-22T00:00:00Z", "entitlementCollectionId": "8LRghVliw1e4VpFE", "entitlementOrigin": "Twitch", "itemId": "m1JAAapk8s0qqUWl", "itemSku": "w3WPPOjkir1x6CJO", "language": "4nWyXstPvU4Fx615", "metadata": {"OKUDfBKGcub1fsuw": {}, "uk39LMOVBiknBsS2": {}, "nUQcQsSAYrD8RbuT": {}}, "order": {"currency": {"currencyCode": "YGew8yuVxRlNDTwd", "currencySymbol": "xhmFt5dKULystov6", "currencyType": "VIRTUAL", "decimals": 20, "namespace": "VXU5SvYv8J7uztRk"}, "ext": {"AFAQI7PIashKsEeE": {}, "NV4Kwsn42KcW2QH7": {}, "rkft71fygPMBzLab": {}}, "free": true}, "orderNo": "J9hizdZJwgGCVvHr", "origin": "Epic", "overrideBundleItemQty": {"zWNb39Dbr33VwL0x": 32, "zAZ0xsVNbx8pbToN": 53, "OsSzYx8KjMPuvAEF": 19}, "quantity": 34, "region": "imfCk2fqOr51BtpZ", "source": "REWARD", "startDate": "1992-06-13T00:00:00Z", "storeId": "duB0YBL8tEgSh5ac"}' \
    > test.out 2>&1
eval_tap $? 288 'FulfillItem' test.out

#- 289 RedeemCode
samples/cli/sample-apps Platform redeemCode \
    --namespace $AB_NAMESPACE \
    --userId 'FsEk524jx5vN7nFM' \
    --body '{"code": "wymQPamdH5dm3KCm", "language": "aC_haDd_NF", "region": "lVAlRbvFRJD4jkQX"}' \
    > test.out 2>&1
eval_tap $? 289 'RedeemCode' test.out

#- 290 PreCheckFulfillItem
samples/cli/sample-apps Platform preCheckFulfillItem \
    --namespace $AB_NAMESPACE \
    --userId 'PohH8jBRzHlTw3Ky' \
    --body '{"itemId": "U6jZHHfQ4ouwSl98", "itemSku": "x73gTzbii5iInJl6", "quantity": 64}' \
    > test.out 2>&1
eval_tap $? 290 'PreCheckFulfillItem' test.out

#- 291 FulfillRewards
samples/cli/sample-apps Platform fulfillRewards \
    --namespace $AB_NAMESPACE \
    --userId 'dN54onnixhpSp1AX' \
    --body '{"entitlementCollectionId": "JZ44Fz2rU2tIGP0I", "entitlementOrigin": "System", "metadata": {"ZdXVPDHLODUWon5Z": {}, "xYDgx77BEEfoRStY": {}, "lX1SjL55OG49zTpF": {}}, "origin": "IOS", "rewards": [{"currency": {"currencyCode": "uBQin3pGRVfn1UEy", "namespace": "V16VOvcOQDRjDnl5"}, "item": {"itemId": "lByJurTpdR2Sn21S", "itemName": "v3z302sC7GuzBdPP", "itemSku": "rEjb43heUxUcYaAh", "itemType": "yizYvda7q9s4pNdO"}, "quantity": 48, "type": "ITEM"}, {"currency": {"currencyCode": "NlyLceQnG2T3wS5M", "namespace": "er8kUts9V4klrb1j"}, "item": {"itemId": "AP7IScpSzy3Qf9GY", "itemName": "8ohFBbqoisZBGOrF", "itemSku": "vIQTV0f8txhz6JJV", "itemType": "5dlcTeGwTWms9BHd"}, "quantity": 90, "type": "CURRENCY"}, {"currency": {"currencyCode": "nlGutTq5b0H2voCK", "namespace": "62yZh7cAV2DUtTqH"}, "item": {"itemId": "IrAdGgCOHUReLIvN", "itemName": "0kknPhOQRUibJ9EV", "itemSku": "9278hU7V1LvA2Ibw", "itemType": "p6sTX0fioyMWJ2FW"}, "quantity": 67, "type": "ITEM"}], "source": "ORDER_REVOCATION", "transactionId": "sMFyPIju0l41Ux3o"}' \
    > test.out 2>&1
eval_tap $? 291 'FulfillRewards' test.out

#- 292 QueryUserIAPOrders
samples/cli/sample-apps Platform queryUserIAPOrders \
    --namespace $AB_NAMESPACE \
    --userId 'gynXGZ9AWzrZ1fnn' \
    --endTime 'wjiWrnTgEQAUxaCS' \
    --limit '22' \
    --offset '1' \
    --productId 'zA8xqmpNHwaPC725' \
    --startTime 'RIfc8DpBKvWWMTQZ' \
    --status 'FULFILLED' \
    --type 'PLAYSTATION' \
    > test.out 2>&1
eval_tap $? 292 'QueryUserIAPOrders' test.out

#- 293 QueryAllUserIAPOrders
samples/cli/sample-apps Platform queryAllUserIAPOrders \
    --namespace $AB_NAMESPACE \
    --userId 'e24A83IIiruuOf4w' \
    > test.out 2>&1
eval_tap $? 293 'QueryAllUserIAPOrders' test.out

#- 294 QueryUserIAPConsumeHistory
samples/cli/sample-apps Platform queryUserIAPConsumeHistory \
    --namespace $AB_NAMESPACE \
    --userId '3YpTmQsenBQtLqob' \
    --endTime 'U8WsrhXtVkkgQl4I' \
    --limit '79' \
    --offset '78' \
    --startTime 'FpV5zCge6u1bW89G' \
    --status 'FAIL' \
    --type 'PLAYSTATION' \
    > test.out 2>&1
eval_tap $? 294 'QueryUserIAPConsumeHistory' test.out

#- 295 MockFulfillIAPItem
samples/cli/sample-apps Platform mockFulfillIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'rVUfB5rXJAqRPDxD' \
    --body '{"itemIdentityType": "ITEM_ID", "language": "UtAt_SBDE_qf", "productId": "RdIlYJaswufCLc2G", "region": "lUMRnLPTdcPJrfAa", "transactionId": "sIliucoQliPqNqt2", "type": "APPLE"}' \
    > test.out 2>&1
eval_tap $? 295 'MockFulfillIAPItem' test.out

#- 296 AdminSyncOculusSubscriptions
samples/cli/sample-apps Platform adminSyncOculusSubscriptions \
    --namespace $AB_NAMESPACE \
    --userId 'aaewge1Ku4VX8NJ9' \
    --body '{"skus": ["AnSr06Or9Pyk7ygH", "npYJaXtUhow0RJfK", "KMcaNQ0s0K2ZwAOZ"]}' \
    > test.out 2>&1
eval_tap $? 296 'AdminSyncOculusSubscriptions' test.out

#- 297 AdminGetIAPOrderLineItems
samples/cli/sample-apps Platform adminGetIAPOrderLineItems \
    --iapOrderNo 'aJvsLrVO1pdvXneM' \
    --namespace $AB_NAMESPACE \
    --userId 'yp6ALgR1peJSF2ab' \
    > test.out 2>&1
eval_tap $? 297 'AdminGetIAPOrderLineItems' test.out

#- 298 AdminSyncSteamAbnormalTransaction
samples/cli/sample-apps Platform adminSyncSteamAbnormalTransaction \
    --namespace $AB_NAMESPACE \
    --userId '4VJYmaenE51b8KPy' \
    > test.out 2>&1
eval_tap $? 298 'AdminSyncSteamAbnormalTransaction' test.out

#- 299 AdminSyncSteamIAPByTransaction
samples/cli/sample-apps Platform adminSyncSteamIAPByTransaction \
    --namespace $AB_NAMESPACE \
    --userId 'adOYPAKqZlUS3qLd' \
    --body '{"orderId": "qJyIC64OKAg4ZHAK"}' \
    > test.out 2>&1
eval_tap $? 299 'AdminSyncSteamIAPByTransaction' test.out

#- 300 QueryUserThirdPartySubscription
samples/cli/sample-apps Platform queryUserThirdPartySubscription \
    --namespace $AB_NAMESPACE \
    --userId 'G3HPJdWa27AyeitA' \
    --activeOnly 'true' \
    --groupId 'QJxNfQIWgeRRAkSY' \
    --limit '13' \
    --offset '0' \
    --platform 'STADIA' \
    --productId 'f0ePIEHdtHdePs05' \
    > test.out 2>&1
eval_tap $? 300 'QueryUserThirdPartySubscription' test.out

#- 301 GetThirdPartyPlatformSubscriptionOwnershipByGroupId
samples/cli/sample-apps Platform getThirdPartyPlatformSubscriptionOwnershipByGroupId \
    --namespace $AB_NAMESPACE \
    --platform 'XBOX' \
    --userId 'TiiORoh7EejctvQo' \
    --groupId 'KiVnaF8zQ7dc772I' \
    > test.out 2>&1
eval_tap $? 301 'GetThirdPartyPlatformSubscriptionOwnershipByGroupId' test.out

#- 302 GetThirdPartyPlatformSubscriptionOwnershipByProductId
samples/cli/sample-apps Platform getThirdPartyPlatformSubscriptionOwnershipByProductId \
    --namespace $AB_NAMESPACE \
    --platform 'XBOX' \
    --userId 'QIAvWwiUpT9Et7fy' \
    --productId '32gOVVV0Dz70v1IX' \
    > test.out 2>&1
eval_tap $? 302 'GetThirdPartyPlatformSubscriptionOwnershipByProductId' test.out

#- 303 QueryUserThirdPartySubscriptionTransactions
samples/cli/sample-apps Platform queryUserThirdPartySubscriptionTransactions \
    --namespace $AB_NAMESPACE \
    --userId 'KAqG7w5JfxgPhDje' \
    --activeOnly 'true' \
    --groupId 'n8Yi9NmAxyzoC99b' \
    --limit '98' \
    --offset '23' \
    --platform 'TWITCH' \
    --productId 'tLSRRIhTV7uT5mAV' \
    > test.out 2>&1
eval_tap $? 303 'QueryUserThirdPartySubscriptionTransactions' test.out

#- 304 GetThirdPartySubscriptionDetails
samples/cli/sample-apps Platform getThirdPartySubscriptionDetails \
    --id 'sRPtz1UOQhFAxsfh' \
    --namespace $AB_NAMESPACE \
    --userId '5lkJMFCGXb6yupSu' \
    > test.out 2>&1
eval_tap $? 304 'GetThirdPartySubscriptionDetails' test.out

#- 305 GetSubscriptionHistory
samples/cli/sample-apps Platform getSubscriptionHistory \
    --id 'gxfifoDwpGUMcwAF' \
    --namespace $AB_NAMESPACE \
    --userId 'jJISYJgzX44tVxa6' \
    --limit '0' \
    --offset '82' \
    > test.out 2>&1
eval_tap $? 305 'GetSubscriptionHistory' test.out

#- 306 SyncSubscriptionTransaction
samples/cli/sample-apps Platform syncSubscriptionTransaction \
    --id 'XQ4sHAQZgSjCEizH' \
    --namespace $AB_NAMESPACE \
    --userId 'SIRAtjDSYXv1hpRi' \
    > test.out 2>&1
eval_tap $? 306 'SyncSubscriptionTransaction' test.out

#- 307 GetThirdPartyUserSubscriptionDetails
samples/cli/sample-apps Platform getThirdPartyUserSubscriptionDetails \
    --id 'Fw3dTskGjaKaBIy1' \
    --namespace $AB_NAMESPACE \
    --userId 'kf0xcqTDtUK58kJH' \
    > test.out 2>&1
eval_tap $? 307 'GetThirdPartyUserSubscriptionDetails' test.out

#- 308 SyncSubscription
samples/cli/sample-apps Platform syncSubscription \
    --id '1zol6ltWIxc4OcJR' \
    --namespace $AB_NAMESPACE \
    --userId 'd8J0f3eKQM27M8Xh' \
    > test.out 2>&1
eval_tap $? 308 'SyncSubscription' test.out

#- 309 AdminSyncTwitchDropsEntitlement
samples/cli/sample-apps Platform adminSyncTwitchDropsEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'Z6qtA9tWvlDlHrad' \
    --body '{"gameId": "2EIWqfDZhYqUfmSR", "language": "Ezx_SomH-613", "region": "51DDIW1gcXgOgEAS"}' \
    > test.out 2>&1
eval_tap $? 309 'AdminSyncTwitchDropsEntitlement' test.out

#- 310 QueryUserOrders
samples/cli/sample-apps Platform queryUserOrders \
    --namespace $AB_NAMESPACE \
    --userId '2ix39Q3JXncPKy7O' \
    --discounted 'true' \
    --itemId 'emCA5WlTyYm9sAww' \
    --limit '42' \
    --offset '75' \
    --status 'REFUNDED' \
    > test.out 2>&1
eval_tap $? 310 'QueryUserOrders' test.out

#- 311 AdminCreateUserOrder
samples/cli/sample-apps Platform adminCreateUserOrder \
    --namespace $AB_NAMESPACE \
    --userId 'MdREd5Ikm35wNqhQ' \
    --body '{"currencyCode": "CBMv54DwBYFz6Tum", "currencyNamespace": "rq4ZMtTOH9svFdyf", "discountCodes": ["TZmauIMTlvU0UCpK", "3F2pZafKe4BRkqnB", "OPKsMnznWJGiCzV8"], "discountedPrice": 83, "entitlementPlatform": "Oculus", "ext": {"99PERck9R9tsdsNW": {}, "Q9ey6CAWuSbXeyw1": {}, "d5lTyLZQ05DH3uky": {}}, "itemId": "tvjlQUZIlqi7sNtR", "language": "o2RIExwDDVYoveiN", "options": {"skipPriceValidation": false}, "platform": "Oculus", "price": 74, "quantity": 9, "region": "xJYXGGAbv5k6TtEj", "returnUrl": "Qu0LNOGLi1Alvags", "sandbox": false, "sectionId": "trcmh9pax22NeN1H"}' \
    > test.out 2>&1
eval_tap $? 311 'AdminCreateUserOrder' test.out

#- 312 CountOfPurchasedItem
samples/cli/sample-apps Platform countOfPurchasedItem \
    --namespace $AB_NAMESPACE \
    --userId 'JTHumnLjuOTd4rbl' \
    --itemId 'Phex951vummkANcf' \
    > test.out 2>&1
eval_tap $? 312 'CountOfPurchasedItem' test.out

#- 313 GetUserOrder
samples/cli/sample-apps Platform getUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'oQTQcn7uqy6c9kym' \
    --userId 'WcCcGmzFW6wiLPM1' \
    > test.out 2>&1
eval_tap $? 313 'GetUserOrder' test.out

#- 314 UpdateUserOrderStatus
samples/cli/sample-apps Platform updateUserOrderStatus \
    --namespace $AB_NAMESPACE \
    --orderNo '17jwCmxlFjz9HmGd' \
    --userId 'L9UpfXhgzucUgyfo' \
    --body '{"status": "DELETED", "statusReason": "KSw6FQuxNS7sOT3v"}' \
    > test.out 2>&1
eval_tap $? 314 'UpdateUserOrderStatus' test.out

#- 315 FulfillUserOrder
samples/cli/sample-apps Platform fulfillUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'bqm15z5zZ62YONTM' \
    --userId 'DuUsWMnpAeVUWXcf' \
    > test.out 2>&1
eval_tap $? 315 'FulfillUserOrder' test.out

#- 316 GetUserOrderGrant
eval_tap 0 316 'GetUserOrderGrant # SKIP deprecated' test.out

#- 317 GetUserOrderHistories
samples/cli/sample-apps Platform getUserOrderHistories \
    --namespace $AB_NAMESPACE \
    --orderNo 'dVVpXzOO94BR20MN' \
    --userId 'ZAfN0bgsyGBmFEgl' \
    > test.out 2>&1
eval_tap $? 317 'GetUserOrderHistories' test.out

#- 318 ProcessUserOrderNotification
samples/cli/sample-apps Platform processUserOrderNotification \
    --namespace $AB_NAMESPACE \
    --orderNo '5dWNXTRjLXUQbwM6' \
    --userId 'U3gvLaYytiOPc6QD' \
    --body '{"additionalData": {"cardSummary": "bT4WCjkoxcrMKmFL"}, "authorisedTime": "1971-02-12T00:00:00Z", "chargebackReversedTime": "1987-10-06T00:00:00Z", "chargebackTime": "1972-10-23T00:00:00Z", "chargedTime": "1979-01-20T00:00:00Z", "createdTime": "1976-04-01T00:00:00Z", "currency": {"currencyCode": "Zmpszyb2a9GDOsUf", "currencySymbol": "KyAdjhtJkDZUhk4J", "currencyType": "REAL", "decimals": 88, "namespace": "JAdgDj7wk2L46IAM"}, "customParameters": {"9ZuAufR1Cvt8gMYA": {}, "pH7zSlGJwi86zkBI": {}, "SrH6gdN7MMNnU2y5": {}}, "extOrderNo": "r5Qt7CF9pKkyLlMW", "extTxId": "dEkwoiXfiBZYsj4u", "extUserId": "hZYRBEUkvOrFpyvx", "issuedAt": "1998-05-07T00:00:00Z", "metadata": {"p87FcmGe4d4cuNpz": "xAH9UiAzI6BFtDYn", "eOELu43PCwrEkdD4": "BFV8K8EAycLgCQMX", "a3SAuNOdyUfVX8oD": "nqdkbp6teFqfqPLb"}, "namespace": "jOC52NWrMU5rjjjR", "nonceStr": "ozdGW9Ycy1NDalNM", "paymentData": {"discountAmount": 75, "discountCode": "16KTjUbYlMMNza54", "subtotalPrice": 52, "tax": 33, "totalPrice": 77}, "paymentMethod": "fO8sRgOW6gjQ46CQ", "paymentMethodFee": 24, "paymentOrderNo": "2BFsMQRRU0OZ908u", "paymentProvider": "CHECKOUT", "paymentProviderFee": 34, "paymentStationUrl": "LfnltN3ujtQZp3fA", "price": 19, "refundedTime": "1979-09-08T00:00:00Z", "salesTax": 20, "sandbox": false, "sku": "GvZPdKCQK7sgw8AI", "status": "CHARGED", "statusReason": "9cC2lZxAsFYNP5GB", "subscriptionId": "70zvghQNiKtnRjqS", "subtotalPrice": 28, "targetNamespace": "zGqxz5I49EvyM7zI", "targetUserId": "bfEUBc05uaObYDvc", "tax": 17, "totalPrice": 76, "totalTax": 69, "txEndTime": "1980-02-22T00:00:00Z", "type": "pKVJl9u3OnbIQQed", "userId": "A4OC3wUZuExBMgdb", "vat": 76}' \
    > test.out 2>&1
eval_tap $? 318 'ProcessUserOrderNotification' test.out

#- 319 DownloadUserOrderReceipt
samples/cli/sample-apps Platform downloadUserOrderReceipt \
    --namespace $AB_NAMESPACE \
    --orderNo 'LG1di303jbDfwoh7' \
    --userId 'lNsbdXzbohEPgwPr' \
    > test.out 2>&1
eval_tap $? 319 'DownloadUserOrderReceipt' test.out

#- 320 CreateUserPaymentOrder
samples/cli/sample-apps Platform createUserPaymentOrder \
    --namespace $AB_NAMESPACE \
    --userId 'Dn5D28Af98AkN6P0' \
    --body '{"currencyCode": "Hojbk7jI1xPWcY81", "currencyNamespace": "HwKMsSVtFjojbDLu", "customParameters": {"6vUBSTOqInSRS1pk": {}, "Lr8KAShSxr2L484k": {}, "lqPaC6OvCsCIVWCt": {}}, "description": "Zt6EKGuhJqpRmzYr", "extOrderNo": "WGAQiC7jrEdy0wdV", "extUserId": "IEfo3WTCCJYjZRoL", "itemType": "SEASON", "language": "bJA", "metadata": {"F2ZKydyMBsRtHOfk": "UeVArMMYTevSW57V", "oMl3fEImWloCH0Sk": "o0dXrmd68JOEuNWj", "z3AsXXCnantJz7kH": "9MnclH2K9izXvM95"}, "notifyUrl": "iWbVL8X4fhYmhEkV", "omitNotification": false, "platform": "qGCFEt0OfMr1qEeq", "price": 71, "recurringPaymentOrderNo": "YkMYQTlYsxzOpdQT", "region": "e0OgGxCnUlANxryT", "returnUrl": "7Rzlx3zbpI03NSvn", "sandbox": true, "sku": "2qSxTlvCRDIuaRa6", "subscriptionId": "ebRtwak66d5Vf5kS", "title": "RyKY0AlLdXPBrbqp"}' \
    > test.out 2>&1
eval_tap $? 320 'CreateUserPaymentOrder' test.out

#- 321 RefundUserPaymentOrder
samples/cli/sample-apps Platform refundUserPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'jo9ls5A9wnr7TkMT' \
    --userId 'LSKcG30ku52Kno49' \
    --body '{"description": "Ep8XForvD1VJl2Z7"}' \
    > test.out 2>&1
eval_tap $? 321 'RefundUserPaymentOrder' test.out

#- 322 GetUserPlatformAccountClosureHistories
samples/cli/sample-apps Platform getUserPlatformAccountClosureHistories \
    --namespace $AB_NAMESPACE \
    --userId 'h4YrwsT5sbMQHlgh' \
    > test.out 2>&1
eval_tap $? 322 'GetUserPlatformAccountClosureHistories' test.out

#- 323 ApplyUserRedemption
samples/cli/sample-apps Platform applyUserRedemption \
    --namespace $AB_NAMESPACE \
    --userId 'KlW0WPrIMgH5ueRK' \
    --body '{"code": "xLB3jysnMotPKBJJ", "orderNo": "jX6I4HrOYKTIdjTD"}' \
    > test.out 2>&1
eval_tap $? 323 'ApplyUserRedemption' test.out

#- 324 DoRevocation
samples/cli/sample-apps Platform doRevocation \
    --namespace $AB_NAMESPACE \
    --userId 'HpawtVLIwLDyEHyt' \
    --body '{"meta": {"XlaA5IIVQNgWkoEb": {}, "J7FiKcw2OknoVVy8": {}, "wCdee72q7AjKXEM9": {}}, "reason": "tmunEzNs7SPyQLq4", "requestId": "hguybV64BRkyJA4A", "revokeEntries": [{"currency": {"balanceOrigin": "Steam", "currencyCode": "lrz0wYT42Vjmll2o", "namespace": "Wo2OLiOpR0rmkRIw"}, "entitlement": {"entitlementId": "cTGe4JuZh1XW4aWZ"}, "item": {"entitlementOrigin": "System", "itemIdentity": "8l3IcUlL48hGlQsK", "itemIdentityType": "ITEM_ID", "origin": "GooglePlay"}, "quantity": 1, "type": "ENTITLEMENT"}, {"currency": {"balanceOrigin": "System", "currencyCode": "vjy022s5idWMFcPM", "namespace": "jZfbgpeRq4N2S7h6"}, "entitlement": {"entitlementId": "Ev8QDAtmVGkd8BbX"}, "item": {"entitlementOrigin": "Nintendo", "itemIdentity": "KLWAVT7kiyLnE806", "itemIdentityType": "ITEM_SKU", "origin": "GooglePlay"}, "quantity": 88, "type": "ITEM"}, {"currency": {"balanceOrigin": "System", "currencyCode": "QooWNSxaz4f31uI8", "namespace": "IH0GZ3xePbj1Ocgs"}, "entitlement": {"entitlementId": "Hmwo4zaXT5CncFXq"}, "item": {"entitlementOrigin": "Epic", "itemIdentity": "1JgX3fehXSEOXHw9", "itemIdentityType": "ITEM_ID", "origin": "System"}, "quantity": 24, "type": "ENTITLEMENT"}], "source": "IAP", "transactionId": "ONdro0acgBGhrx7O"}' \
    > test.out 2>&1
eval_tap $? 324 'DoRevocation' test.out

#- 325 RegisterXblSessions
samples/cli/sample-apps Platform registerXblSessions \
    --namespace $AB_NAMESPACE \
    --userId '7fouSBVIRjvf5y6V' \
    --body '{"gameSessionId": "BBWUD5bmcR7FvLYn", "payload": {"PhEI4jvHnrVsjtrh": {}, "IzFRhzhwQdRb3y08": {}, "GbdUjdycPnPDmnGe": {}}, "scid": "1M7extdD9BjAMGNs", "sessionTemplateName": "fkVcdVQy8czwwd6A"}' \
    > test.out 2>&1
eval_tap $? 325 'RegisterXblSessions' test.out

#- 326 QueryUserSubscriptions
samples/cli/sample-apps Platform queryUserSubscriptions \
    --namespace $AB_NAMESPACE \
    --userId 'R6DaTtIDm3NGXZlk' \
    --chargeStatus 'NEVER' \
    --itemId 'jiVtdlsIHhD0jk1B' \
    --limit '24' \
    --offset '79' \
    --sku 'FnBGdnDgiPCfcMvq' \
    --status 'CANCELLED' \
    --subscribedBy 'USER' \
    > test.out 2>&1
eval_tap $? 326 'QueryUserSubscriptions' test.out

#- 327 GetUserSubscriptionActivities
samples/cli/sample-apps Platform getUserSubscriptionActivities \
    --namespace $AB_NAMESPACE \
    --userId 'FrkF8m1jCnpaGN7N' \
    --excludeSystem 'false' \
    --limit '57' \
    --offset '87' \
    --subscriptionId 'oA3ymGAc36hu5P91' \
    > test.out 2>&1
eval_tap $? 327 'GetUserSubscriptionActivities' test.out

#- 328 PlatformSubscribeSubscription
samples/cli/sample-apps Platform platformSubscribeSubscription \
    --namespace $AB_NAMESPACE \
    --userId 'gHavZ1MOpss8A8Ey' \
    --body '{"grantDays": 77, "itemId": "GElgekxrikDqdlB7", "language": "oRGFshs0AAlMBEJj", "reason": "8VGdBndutq7KeCgk", "region": "E9iYNQV91XmhZQ9h", "source": "N18huF9mKzbqHCd9"}' \
    > test.out 2>&1
eval_tap $? 328 'PlatformSubscribeSubscription' test.out

#- 329 CheckUserSubscriptionSubscribableByItemId
samples/cli/sample-apps Platform checkUserSubscriptionSubscribableByItemId \
    --namespace $AB_NAMESPACE \
    --userId '1djo1MtADd8fGCIx' \
    --itemId 'BqWwocENS1niiYlT' \
    > test.out 2>&1
eval_tap $? 329 'CheckUserSubscriptionSubscribableByItemId' test.out

#- 330 GetUserSubscription
samples/cli/sample-apps Platform getUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'wTRwiMkZfeslNtyQ' \
    --userId 'afMDkDvvJ4KDme5X' \
    > test.out 2>&1
eval_tap $? 330 'GetUserSubscription' test.out

#- 331 DeleteUserSubscription
samples/cli/sample-apps Platform deleteUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'URNiaq3aswoP3KQI' \
    --userId 'K9rDJqfHKlEKVKaL' \
    > test.out 2>&1
eval_tap $? 331 'DeleteUserSubscription' test.out

#- 332 CancelSubscription
samples/cli/sample-apps Platform cancelSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'x0NbzEzJTjCsLnLg' \
    --userId 'KgEeDvPOWwNWNb6z' \
    --force 'true' \
    --body '{"immediate": true, "reason": "FquLZZMblHEmtbRZ"}' \
    > test.out 2>&1
eval_tap $? 332 'CancelSubscription' test.out

#- 333 GrantDaysToSubscription
samples/cli/sample-apps Platform grantDaysToSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'xH8BI0dud9EPp4m9' \
    --userId 'YPOgL99xT7eU3iRA' \
    --body '{"grantDays": 25, "reason": "Og4vRYqMwCPnhiSs"}' \
    > test.out 2>&1
eval_tap $? 333 'GrantDaysToSubscription' test.out

#- 334 GetUserSubscriptionBillingHistories
samples/cli/sample-apps Platform getUserSubscriptionBillingHistories \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'x3ghVzleUDRDKe9Z' \
    --userId 'm95a5Z2hd5rjx4Pz' \
    --excludeFree 'true' \
    --limit '14' \
    --offset '68' \
    > test.out 2>&1
eval_tap $? 334 'GetUserSubscriptionBillingHistories' test.out

#- 335 ProcessUserSubscriptionNotification
samples/cli/sample-apps Platform processUserSubscriptionNotification \
    --namespace $AB_NAMESPACE \
    --subscriptionId '462u2jQTClUYem67' \
    --userId 'zqwtvkXf1XhC1xZM' \
    --body '{"additionalData": {"cardSummary": "OLyQ8n7SgL4GcjnD"}, "authorisedTime": "1980-07-08T00:00:00Z", "chargebackReversedTime": "1989-10-27T00:00:00Z", "chargebackTime": "1997-11-28T00:00:00Z", "chargedTime": "1972-09-13T00:00:00Z", "createdTime": "1979-05-02T00:00:00Z", "currency": {"currencyCode": "XWDNRxQ0a98OGjfs", "currencySymbol": "bPpAtNSEneTwXVvY", "currencyType": "VIRTUAL", "decimals": 86, "namespace": "rJhp9wV3SQ0D7YGZ"}, "customParameters": {"IvUaxyL3r7lM7EFz": {}, "PzpphSPgcb6cUa68": {}, "CJLmElYne2UduwnV": {}}, "extOrderNo": "pbByEyeInlddAa1K", "extTxId": "SsidyxYqrgl29HTk", "extUserId": "5rT5FaVupgYhp60H", "issuedAt": "1979-01-10T00:00:00Z", "metadata": {"wwlS8w1uzjO6awYQ": "ogtyZToZlYy3ZMAH", "7m1LROUt7bueIfjC": "tegpXmfn7GkJgzof", "lRk4chiZWaT1y2LU": "IM2sGUahbbzbQcmp"}, "namespace": "hnSyIlJ5ATHabzCo", "nonceStr": "xgZjeB0EFGyaXXZJ", "paymentData": {"discountAmount": 36, "discountCode": "YjTr4RLswnM5TAnO", "subtotalPrice": 88, "tax": 60, "totalPrice": 84}, "paymentMethod": "r8M2eXNkrHYVxCK9", "paymentMethodFee": 40, "paymentOrderNo": "mtCup9AfAtcLG5We", "paymentProvider": "NEONPAY", "paymentProviderFee": 42, "paymentStationUrl": "keKPjooyB2B8AZpT", "price": 23, "refundedTime": "1984-05-09T00:00:00Z", "salesTax": 20, "sandbox": true, "sku": "ja5YCYR0IbSy2ssp", "status": "DELETED", "statusReason": "f8cts0P8SD5YfoSp", "subscriptionId": "v9AAcjtxQGoNPLNo", "subtotalPrice": 31, "targetNamespace": "0UG6DOihT1QzujaQ", "targetUserId": "w8dNqXi5UQgaGwBc", "tax": 92, "totalPrice": 12, "totalTax": 72, "txEndTime": "1977-02-16T00:00:00Z", "type": "r8zHgh45e3chuJvz", "userId": "kdzYBWmB1oJb2XJ0", "vat": 81}' \
    > test.out 2>&1
eval_tap $? 335 'ProcessUserSubscriptionNotification' test.out

#- 336 AcquireUserTicket
samples/cli/sample-apps Platform acquireUserTicket \
    --boothName '9qn2rhEYeRVAuX8l' \
    --namespace $AB_NAMESPACE \
    --userId 'RkR2fbfc1XqroTfj' \
    --body '{"count": 33, "orderNo": "GqKjWpdH8eqoabiD"}' \
    > test.out 2>&1
eval_tap $? 336 'AcquireUserTicket' test.out

#- 337 QueryUserCurrencyWallets
samples/cli/sample-apps Platform queryUserCurrencyWallets \
    --namespace $AB_NAMESPACE \
    --userId 'plx5v1wCgnpZ755M' \
    > test.out 2>&1
eval_tap $? 337 'QueryUserCurrencyWallets' test.out

#- 338 DebitUserWalletByCurrencyCode
samples/cli/sample-apps Platform debitUserWalletByCurrencyCode \
    --currencyCode 'H5u9ZEclHYVHUbEd' \
    --namespace $AB_NAMESPACE \
    --userId 'ZmKhCNe7o0fQziNt' \
    --body '{"allowOverdraft": false, "amount": 79, "balanceOrigin": "Xbox", "balanceSource": "PAYMENT", "metadata": {"FoNqRmgdtCEqYBGm": {}, "jnVKcq4jl7fi7sM5": {}, "nWMFDJIilB1L9fgY": {}}, "reason": "B22M6VTChLaVm50D"}' \
    > test.out 2>&1
eval_tap $? 338 'DebitUserWalletByCurrencyCode' test.out

#- 339 ListUserCurrencyTransactions
samples/cli/sample-apps Platform listUserCurrencyTransactions \
    --currencyCode 'vUYfc36XcoipaEdB' \
    --namespace $AB_NAMESPACE \
    --userId 'oXwdzmGkjLbr3ueb' \
    --limit '83' \
    --offset '16' \
    > test.out 2>&1
eval_tap $? 339 'ListUserCurrencyTransactions' test.out

#- 340 CheckBalance
samples/cli/sample-apps Platform checkBalance \
    --currencyCode 'dsKmVLupEkDlJpD0' \
    --namespace $AB_NAMESPACE \
    --userId '1PIJgRA24acjAfTS' \
    --request '{"amount": 62, "debitBalanceSource": "ORDER_REVOCATION", "metadata": {"33oJDLPdyr2KeFqd": {}, "APFpPFopWlpECV7i": {}, "wzRLcsmjxedIEQss": {}}, "reason": "yFeauWSwxvIw84NF", "walletPlatform": "Xbox"}' \
    > test.out 2>&1
eval_tap $? 340 'CheckBalance' test.out

#- 341 CheckWallet
eval_tap 0 341 'CheckWallet # SKIP deprecated' test.out

#- 342 CreditUserWallet
samples/cli/sample-apps Platform creditUserWallet \
    --currencyCode 'FYYRaujuWT3UY6z3' \
    --namespace $AB_NAMESPACE \
    --userId 'VWVHftyeBKEKGXNz' \
    --body '{"amount": 8, "expireAt": "1983-06-28T00:00:00Z", "metadata": {"r2Sair51rZsfJhOP": {}, "hZiLxMwtMzoq0hmV": {}, "Fd3NYeYfE3g2oJ9D": {}}, "origin": "Xbox", "reason": "vhx348QuhtcvmErX", "source": "SELL_BACK"}' \
    > test.out 2>&1
eval_tap $? 342 'CreditUserWallet' test.out

#- 343 DebitByWalletPlatform
samples/cli/sample-apps Platform debitByWalletPlatform \
    --currencyCode 'NcDl1fvhKX3Mxmj3' \
    --namespace $AB_NAMESPACE \
    --userId 'tV1VSKN6rmpPch4U' \
    --request '{"amount": 90, "debitBalanceSource": "PAYMENT", "metadata": {"vnT6dHAfqix10VEh": {}, "aR8mRm46IkMzPt5U": {}, "AOqzGrLWzdrkb6vq": {}}, "reason": "R32vrN92QVnaa8oA", "walletPlatform": "Xbox"}' \
    > test.out 2>&1
eval_tap $? 343 'DebitByWalletPlatform' test.out

#- 344 PayWithUserWallet
samples/cli/sample-apps Platform payWithUserWallet \
    --currencyCode 'aBcqbzyP9VXsxW5B' \
    --namespace $AB_NAMESPACE \
    --userId 'AYz4VtBCSDldQxK9' \
    --body '{"amount": 83, "metadata": {"0UIcEJRfDSMyOO2C": {}, "TpJHcbS1Q4qPMkOk": {}, "M3jyknUuH5ILUig8": {}}, "walletPlatform": "Epic"}' \
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
    --storeId 'MbmET1gmvOcWS0zb' \
    > test.out 2>&1
eval_tap $? 350 'ListViews' test.out

#- 351 CreateView
samples/cli/sample-apps Platform createView \
    --namespace $AB_NAMESPACE \
    --storeId 'hRLrsp0kACJbi9eq' \
    --body '{"displayOrder": 40, "localizations": {"nUOBHnzBAHsUKcKO": {"description": "gzVmP6CIz1Pr9jvz", "localExt": {"F6ri1sJ72jHgKQCy": {}, "VEoALdtwriDAUn60": {}, "iqMOrons44hREp8T": {}}, "longDescription": "AmqNP39lGJTT5nzO", "title": "I6rDxMHCEsse5C7V"}, "2amnuFAQLu6wopLu": {"description": "niw7K8wnLpzOF6Tx", "localExt": {"gvlORhnzp0pMjNX0": {}, "r4cqSAz58iLgcDxg": {}, "pkAzussdr4lvMMIF": {}}, "longDescription": "qkSD5nFC7dM95c0q", "title": "NjlWQBYSbb7Av51n"}, "NBe2yHIK5a8oeAMs": {"description": "huLeydyNcP0C89sK", "localExt": {"DlWgqgC2DRzHFD04": {}, "z7aXhS2hIRuK2wOS": {}, "s0qXnuGuk3s7dQyS": {}}, "longDescription": "kgo2odhMQnBxCw37", "title": "KqpD0v3aVD34qeiu"}}, "name": "h5LxkuY8QB1Bigg9"}' \
    > test.out 2>&1
eval_tap $? 351 'CreateView' test.out

#- 352 GetView
samples/cli/sample-apps Platform getView \
    --namespace $AB_NAMESPACE \
    --viewId 'wJClIhl5epjsj5yi' \
    --storeId 'Jc5H7dZook3b727r' \
    > test.out 2>&1
eval_tap $? 352 'GetView' test.out

#- 353 UpdateView
samples/cli/sample-apps Platform updateView \
    --namespace $AB_NAMESPACE \
    --viewId 'vCbyXRVWCjqpCtX0' \
    --storeId '4rillTNAYQp5CTbw' \
    --body '{"displayOrder": 36, "localizations": {"6IM0FLrWBgr5y4gC": {"description": "rMPOTKvEDaVTFRV1", "localExt": {"x48ptKcR8NB1e7xj": {}, "hbs1m09Sl8nZw48n": {}, "DzkHicOqSrRYe1Wl": {}}, "longDescription": "ya5lHvvRgtMvrfka", "title": "BbsX4qZ1tdWzYOkt"}, "FEiu0Wn2QOa7BUkj": {"description": "DwDCzuskb879ZUWm", "localExt": {"67Q4RhTgO3tGLSov": {}, "kGYSSKMd3B9fLIMx": {}, "gEDEPZKoeTM9jyrl": {}}, "longDescription": "JnhaIIR3a9b9UKK8", "title": "EygmGACy7gQNlhbC"}, "B12tL4biKSLNpvRT": {"description": "w3tbTCMPtVBAvEU0", "localExt": {"wEsZ7MU8teyClfeA": {}, "UzWr5HyQeNWflqsS": {}, "kycfHZles5hKtaLE": {}}, "longDescription": "3A7UnhT3ZLyN3hua", "title": "E4E1UMz0bQaViEVT"}}, "name": "a5QaD7sTLkJcH8C8"}' \
    > test.out 2>&1
eval_tap $? 353 'UpdateView' test.out

#- 354 DeleteView
samples/cli/sample-apps Platform deleteView \
    --namespace $AB_NAMESPACE \
    --viewId 'nn5kgXYcXiMApBUs' \
    --storeId 'gyMiY4BreMikIX86' \
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
    --body '[{"creditRequest": {"amount": 96, "expireAt": "1994-07-30T00:00:00Z", "metadata": {"3aVnqNPrxHGfYmWJ": {}, "qaGkx3siM2FE6ntr": {}, "Qe36Uc15D7FGLuGE": {}}, "origin": "Xbox", "reason": "6rDs4QxaZyg6xi8K", "source": "IAP"}, "currencyCode": "95CaDbx9zhqMmAbz", "userIds": ["uGZMufWJmZ8hAM3B", "naD8kFnbW38N8n9j", "KLaQXhTWbn2Sahrl"]}, {"creditRequest": {"amount": 100, "expireAt": "1988-09-14T00:00:00Z", "metadata": {"Y5kk5eHM3ffwZz3m": {}, "B6pUmhscWOiLe4uX": {}, "5CcdX95ivMjH95Rs": {}}, "origin": "Steam", "reason": "eCKKMsfReQrrHXFH", "source": "REWARD"}, "currencyCode": "9pmGKm2Jkr7fleox", "userIds": ["8ecrAEzCGMvZgXG4", "yD2rzCGE6rXa6TKN", "5JLxo6WhZtp8pqln"]}, {"creditRequest": {"amount": 95, "expireAt": "1997-12-02T00:00:00Z", "metadata": {"xl280pPkfrsddx4E": {}, "CnsQWnjNBp5CBFoV": {}, "28hpmcJUbeEjHPO1": {}}, "origin": "Twitch", "reason": "riGW6zD40TRyDAIY", "source": "DLC"}, "currencyCode": "OU6paKcnrSKNc93H", "userIds": ["EJ4Y1NNUy6gusHKX", "5eCxsXb9LGjMQB9v", "G3IXgl39QCoWyTzv"]}]' \
    > test.out 2>&1
eval_tap $? 358 'BulkCredit' test.out

#- 359 BulkDebit
samples/cli/sample-apps Platform bulkDebit \
    --namespace $AB_NAMESPACE \
    --body '[{"currencyCode": "DGQd6rbYERNPTPzP", "request": {"allowOverdraft": false, "amount": 14, "balanceOrigin": "Oculus", "balanceSource": "IAP_REVOCATION", "metadata": {"xE36RjBlv80f7yWN": {}, "jPJqksS7R2XQloDk": {}, "tS7iAReQtmKE5Row": {}}, "reason": "dgXzTBD2k7RbArvI"}, "userIds": ["OBHMFsZ8i4MkckCn", "vJpZPzSRWlaD7eVJ", "iHBnxFFPg05tTDBR"]}, {"currencyCode": "MprSmBgIxRSjTgEl", "request": {"allowOverdraft": true, "amount": 74, "balanceOrigin": "Oculus", "balanceSource": "OTHER", "metadata": {"u41NYzVTkhLJHxT2": {}, "21Pry30CmhDymfSo": {}, "1AlDFomfJF6Oifpx": {}}, "reason": "CFQo5fMr7zw8kPfX"}, "userIds": ["35S11pepVGFKdSJM", "b2Sh1JuBoPj5zgdC", "pArcMeAHnpYQbjuz"]}, {"currencyCode": "GlzQCibBowK4iC6m", "request": {"allowOverdraft": true, "amount": 60, "balanceOrigin": "Nintendo", "balanceSource": "DLC_REVOCATION", "metadata": {"zo9zRqfIF5ixCt56": {}, "TK0zkPbNtbVLMA5F": {}, "BlRyCTGcRsBNL0OY": {}}, "reason": "O2IrMZdfomp6XFHm"}, "userIds": ["wICbJK6LyVDo19XV", "ta32XIN9illpSUpf", "qKH71Ei5z3t56toJ"]}]' \
    > test.out 2>&1
eval_tap $? 359 'BulkDebit' test.out

#- 360 GetWallet
eval_tap 0 360 'GetWallet # SKIP deprecated' test.out

#- 361 SyncOrders
samples/cli/sample-apps Platform syncOrders \
    --nextEvaluatedKey 'sYjhuFtYaME6OQdP' \
    --end 'IPmJ0V8tBAdbPMK6' \
    --start 'apPadeSFn72kQYDB' \
    > test.out 2>&1
eval_tap $? 361 'SyncOrders' test.out

#- 362 TestAdyenConfig
samples/cli/sample-apps Platform testAdyenConfig \
    --sandbox 'false' \
    --body '{"allowedPaymentMethods": ["Qs5zPFzhY3mfVhub", "SY9nIRlyfdbRETQg", "e93NbbO88NL6ZeM0"], "apiKey": "ptZ8JDlHAsBrPK8W", "authoriseAsCapture": false, "blockedPaymentMethods": ["UkiVhPJuQo3ngygy", "w4gTht8A1PRjySM6", "0hG2hOFVRCpw7aur"], "clientKey": "4wBkGNnBUPOmzfG2", "dropInSettings": "LT6sF6LNs60gN6LA", "liveEndpointUrlPrefix": "wAucNSvwzdF0RzW4", "merchantAccount": "1h3k5lCUdDxmXOj6", "notificationHmacKey": "5BDjcX4vfAmNyiLS", "notificationPassword": "TI8CsF7vg7pT54Qz", "notificationUsername": "JEKcu9BotEtd5dzM", "returnUrl": "X88Uw6hd8tVXR8EM", "settings": "Pa3DDthNgpcMTD6c"}' \
    > test.out 2>&1
eval_tap $? 362 'TestAdyenConfig' test.out

#- 363 TestAliPayConfig
samples/cli/sample-apps Platform testAliPayConfig \
    --sandbox 'false' \
    --body '{"appId": "07oqVmRFHBR8Jkhj", "privateKey": "xMXVzxYUOgeMlTc5", "publicKey": "c4Cctu2mgsuYiB1H", "returnUrl": "6K30WWfHrkyfvnsL"}' \
    > test.out 2>&1
eval_tap $? 363 'TestAliPayConfig' test.out

#- 364 TestCheckoutConfig
samples/cli/sample-apps Platform testCheckoutConfig \
    --sandbox 'false' \
    --body '{"publicKey": "XvE4w2ehr7ORpiky", "secretKey": "1pMFCf0CtjmAaTx7"}' \
    > test.out 2>&1
eval_tap $? 364 'TestCheckoutConfig' test.out

#- 365 DebugMatchedPaymentMerchantConfig
samples/cli/sample-apps Platform debugMatchedPaymentMerchantConfig \
    --namespace 'QnHOnccIN0CDCwxw' \
    --region 'LXeJ8XxDlsDBywxa' \
    > test.out 2>&1
eval_tap $? 365 'DebugMatchedPaymentMerchantConfig' test.out

#- 366 TestNeonPayConfig
samples/cli/sample-apps Platform testNeonPayConfig \
    --sandbox 'false' \
    --body '{"apiKey": "4NNOJr127Tjazbu2", "webhookSecretKey": "BRuyPTYYJTj4IDwB"}' \
    > test.out 2>&1
eval_tap $? 366 'TestNeonPayConfig' test.out

#- 367 TestPayPalConfig
samples/cli/sample-apps Platform testPayPalConfig \
    --sandbox 'false' \
    --body '{"clientID": "kSsYeW5GMbyvHOqg", "clientSecret": "I0hebLUh7o9vX2bv", "returnUrl": "7Qe29sD9wZPwIgmj", "webHookId": "6JSmROLSncE2H8gr"}' \
    > test.out 2>&1
eval_tap $? 367 'TestPayPalConfig' test.out

#- 368 TestStripeConfig
samples/cli/sample-apps Platform testStripeConfig \
    --sandbox 'true' \
    --body '{"allowedPaymentMethodTypes": ["B6Gi0scbSZcv6dEb", "H0de7K5FBMkpWhej", "HZnACap15zaNwRxY"], "publishableKey": "NaVkzHNPE4KWifCL", "secretKey": "0Z19AquWjHHuE0Fe", "webhookSecret": "vleM8lDrDhCwbOPe"}' \
    > test.out 2>&1
eval_tap $? 368 'TestStripeConfig' test.out

#- 369 TestWxPayConfig
samples/cli/sample-apps Platform testWxPayConfig \
    --body '{"appId": "CXWdbZ3JCV9zOXmo", "key": "zouxKKgYY6mE125q", "mchid": "HGDISzGFhoeQYw4c", "returnUrl": "KQbp4R42qHRa5OrV"}' \
    > test.out 2>&1
eval_tap $? 369 'TestWxPayConfig' test.out

#- 370 TestXsollaConfig
samples/cli/sample-apps Platform testXsollaConfig \
    --body '{"apiKey": "ly37cBb3uL4CrCKk", "flowCompletionUrl": "nKRCDIWqAJ5BywIC", "merchantId": 21, "projectId": 98, "projectSecretKey": "qPjkXLRYzTX6ulQD"}' \
    > test.out 2>&1
eval_tap $? 370 'TestXsollaConfig' test.out

#- 371 GetPaymentMerchantConfig1
samples/cli/sample-apps Platform getPaymentMerchantConfig1 \
    --id '5mDRGs1qnbl1Qnxf' \
    > test.out 2>&1
eval_tap $? 371 'GetPaymentMerchantConfig1' test.out

#- 372 UpdateAdyenConfig
samples/cli/sample-apps Platform updateAdyenConfig \
    --id 'EEsPh4fOySwxHaf4' \
    --sandbox 'true' \
    --validate 'true' \
    --body '{"allowedPaymentMethods": ["8gFyQrTl7Sxalnwo", "AI4lhufhqu2X8TeJ", "SYr1uRFHhhjAkNEm"], "apiKey": "rd8hqlSYVqMGsDKx", "authoriseAsCapture": false, "blockedPaymentMethods": ["p0obrm9ub9ijP27s", "QRolaPowoJGvwky5", "tRkDQB2Cd6Cn6LnV"], "clientKey": "dkYVFCqNtAtFJItP", "dropInSettings": "VWUAXHLvJETxcysN", "liveEndpointUrlPrefix": "lppsXJNYKlXdIQ5G", "merchantAccount": "NPl7yENXQEiMZJDa", "notificationHmacKey": "QzihfxKlECmOdC7d", "notificationPassword": "wTaNtxuBAabQpy86", "notificationUsername": "sN9m04kelFAyHMde", "returnUrl": "pzrQjz1TRAvgvsE5", "settings": "qW5PvUYE5GZStcVu"}' \
    > test.out 2>&1
eval_tap $? 372 'UpdateAdyenConfig' test.out

#- 373 TestAdyenConfigById
samples/cli/sample-apps Platform testAdyenConfigById \
    --id 'l1rTFJjGLMiIay8e' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 373 'TestAdyenConfigById' test.out

#- 374 UpdateAliPayConfig
samples/cli/sample-apps Platform updateAliPayConfig \
    --id 'VALH8cv6UElUsJao' \
    --sandbox 'false' \
    --validate 'true' \
    --body '{"appId": "hCUzWSzJMJv5XYd4", "privateKey": "s6uNf7hgl7vISwb0", "publicKey": "aCBt4SfI0hUvU0Ea", "returnUrl": "ckscpki1Tp3ttWKh"}' \
    > test.out 2>&1
eval_tap $? 374 'UpdateAliPayConfig' test.out

#- 375 TestAliPayConfigById
samples/cli/sample-apps Platform testAliPayConfigById \
    --id 'wGRGLoJBOwOZeMRA' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 375 'TestAliPayConfigById' test.out

#- 376 UpdateCheckoutConfig
samples/cli/sample-apps Platform updateCheckoutConfig \
    --id 'MCh3M4kxSpLSFXkg' \
    --sandbox 'true' \
    --validate 'false' \
    --body '{"publicKey": "U9T2405ImX72Tagg", "secretKey": "SNard3v8RXkZDGM4"}' \
    > test.out 2>&1
eval_tap $? 376 'UpdateCheckoutConfig' test.out

#- 377 TestCheckoutConfigById
samples/cli/sample-apps Platform testCheckoutConfigById \
    --id 'isOPX5cDi7WtYaM1' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 377 'TestCheckoutConfigById' test.out

#- 378 UpdateNeonPayConfig
samples/cli/sample-apps Platform updateNeonPayConfig \
    --id '5UlxrEFkihWIrsjA' \
    --sandbox 'false' \
    --validate 'true' \
    --body '{"apiKey": "Bjfeb7QvFHI24rv2", "webhookSecretKey": "wqD637rpJBp5bn2n"}' \
    > test.out 2>&1
eval_tap $? 378 'UpdateNeonPayConfig' test.out

#- 379 TestNeonPayConfigById
samples/cli/sample-apps Platform testNeonPayConfigById \
    --id 'twY4zI06kSXEgkyx' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 379 'TestNeonPayConfigById' test.out

#- 380 UpdatePayPalConfig
samples/cli/sample-apps Platform updatePayPalConfig \
    --id 'SQca54c9KVgdfaB0' \
    --sandbox 'false' \
    --validate 'false' \
    --body '{"clientID": "EXlGjgH1oU4mr58B", "clientSecret": "b5mdXEZ0S0ZAeg5F", "returnUrl": "DpNFriQJdB78ZqEp", "webHookId": "1ORPdMC1ReiPPcLd"}' \
    > test.out 2>&1
eval_tap $? 380 'UpdatePayPalConfig' test.out

#- 381 TestPayPalConfigById
samples/cli/sample-apps Platform testPayPalConfigById \
    --id 'xrw0YU3JTe3fO3i9' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 381 'TestPayPalConfigById' test.out

#- 382 UpdateStripeConfig
samples/cli/sample-apps Platform updateStripeConfig \
    --id 'fHcq4GAKlpSGNUd0' \
    --sandbox 'false' \
    --validate 'false' \
    --body '{"allowedPaymentMethodTypes": ["wlJRDcwmuYUcJ642", "bnUOVWqKYcSZwNXD", "cBto1Ut8iyBrK3u7"], "publishableKey": "GieOdKTpSNCbnjFE", "secretKey": "p3TL9OQYHntJOuYU", "webhookSecret": "nTK46acKm4zscTOz"}' \
    > test.out 2>&1
eval_tap $? 382 'UpdateStripeConfig' test.out

#- 383 TestStripeConfigById
samples/cli/sample-apps Platform testStripeConfigById \
    --id 'N6HkVX3ctOTJ9WsQ' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 383 'TestStripeConfigById' test.out

#- 384 UpdateWxPayConfig
samples/cli/sample-apps Platform updateWxPayConfig \
    --id 'gDdglG6NnHHhWNBz' \
    --validate 'false' \
    --body '{"appId": "x27qpn2lTCvyLLfD", "key": "Diz2UjwHBDeGU1gn", "mchid": "zIMiKz5fuhcg1dpQ", "returnUrl": "IOtIINPbwKxiMTlH"}' \
    > test.out 2>&1
eval_tap $? 384 'UpdateWxPayConfig' test.out

#- 385 UpdateWxPayConfigCert
samples/cli/sample-apps Platform updateWxPayConfigCert \
    --id 'bJ6tBl9ROH7LwOlp' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 385 'UpdateWxPayConfigCert' test.out

#- 386 TestWxPayConfigById
samples/cli/sample-apps Platform testWxPayConfigById \
    --id 'O4FK0NtkGGsAYjkJ' \
    > test.out 2>&1
eval_tap $? 386 'TestWxPayConfigById' test.out

#- 387 UpdateXsollaConfig
samples/cli/sample-apps Platform updateXsollaConfig \
    --id 'twuUROPxXAu2Smrg' \
    --validate 'false' \
    --body '{"apiKey": "EfbdaOqMU4E31h8G", "flowCompletionUrl": "NCtW9RxloUIfkby6", "merchantId": 55, "projectId": 22, "projectSecretKey": "Poqea8d94ddUWCLV"}' \
    > test.out 2>&1
eval_tap $? 387 'UpdateXsollaConfig' test.out

#- 388 TestXsollaConfigById
samples/cli/sample-apps Platform testXsollaConfigById \
    --id 'dFKHN13fAaiXr4Be' \
    > test.out 2>&1
eval_tap $? 388 'TestXsollaConfigById' test.out

#- 389 UpdateXsollaUIConfig
samples/cli/sample-apps Platform updateXsollaUIConfig \
    --id 'VA8FitSIgDXUNIzH' \
    --body '{"device": "DESKTOP", "showCloseButton": false, "size": "SMALL", "theme": "DARK"}' \
    > test.out 2>&1
eval_tap $? 389 'UpdateXsollaUIConfig' test.out

#- 390 QueryPaymentProviderConfig
samples/cli/sample-apps Platform queryPaymentProviderConfig \
    --limit '27' \
    --namespace 'kfRLrobtkEcL7Fa3' \
    --offset '78' \
    --region 'dBxWJLPQeE9QiQD1' \
    > test.out 2>&1
eval_tap $? 390 'QueryPaymentProviderConfig' test.out

#- 391 CreatePaymentProviderConfig
samples/cli/sample-apps Platform createPaymentProviderConfig \
    --body '{"aggregate": "NEONPAY", "namespace": "H6p8TXk3BioKDM7R", "region": "Z8hZFHuqmWbD5P0J", "sandboxTaxJarApiToken": "HUrx5r65bgLBUVNe", "specials": ["CHECKOUT", "WALLET", "NEONPAY"], "taxJarApiToken": "z4my20ip2w9h16zm", "taxJarEnabled": true, "useGlobalTaxJarApiToken": true}' \
    > test.out 2>&1
eval_tap $? 391 'CreatePaymentProviderConfig' test.out

#- 392 GetAggregatePaymentProviders
samples/cli/sample-apps Platform getAggregatePaymentProviders \
    > test.out 2>&1
eval_tap $? 392 'GetAggregatePaymentProviders' test.out

#- 393 DebugMatchedPaymentProviderConfig
samples/cli/sample-apps Platform debugMatchedPaymentProviderConfig \
    --namespace 'Ev9gjWXFY0IlTe1L' \
    --region 'EiX04qDxoXaURb7x' \
    > test.out 2>&1
eval_tap $? 393 'DebugMatchedPaymentProviderConfig' test.out

#- 394 GetSpecialPaymentProviders
samples/cli/sample-apps Platform getSpecialPaymentProviders \
    > test.out 2>&1
eval_tap $? 394 'GetSpecialPaymentProviders' test.out

#- 395 UpdatePaymentProviderConfig
samples/cli/sample-apps Platform updatePaymentProviderConfig \
    --id 'BD4x9sNd7AMybjYA' \
    --body '{"aggregate": "XSOLLA", "namespace": "vPeyYGZabruznCpA", "region": "PUxsotApVLE7bi9V", "sandboxTaxJarApiToken": "2AwgkvIpdCIba7c4", "specials": ["STRIPE", "ADYEN", "ADYEN"], "taxJarApiToken": "xFNheoW3HmM6zwsN", "taxJarEnabled": false, "useGlobalTaxJarApiToken": false}' \
    > test.out 2>&1
eval_tap $? 395 'UpdatePaymentProviderConfig' test.out

#- 396 DeletePaymentProviderConfig
samples/cli/sample-apps Platform deletePaymentProviderConfig \
    --id 'tFwXVVlQnBQFUo5H' \
    > test.out 2>&1
eval_tap $? 396 'DeletePaymentProviderConfig' test.out

#- 397 GetPaymentTaxConfig
samples/cli/sample-apps Platform getPaymentTaxConfig \
    > test.out 2>&1
eval_tap $? 397 'GetPaymentTaxConfig' test.out

#- 398 UpdatePaymentTaxConfig
samples/cli/sample-apps Platform updatePaymentTaxConfig \
    --body '{"sandboxTaxJarApiToken": "n6O2FRMR7IT9EZPi", "taxJarApiToken": "MIYU19xOzO7sCEXr", "taxJarEnabled": false, "taxJarProductCodesMapping": {"h0na9ZfbGv01L1xW": "0xinpaUL06pyvH9g", "3dDttOHWOa14WtHF": "1Hp7zZRVPhE2mFD9", "VVup3i30EOg04ZEB": "rNycehQR12Jrm9At"}}' \
    > test.out 2>&1
eval_tap $? 398 'UpdatePaymentTaxConfig' test.out

#- 399 SyncPaymentOrders
samples/cli/sample-apps Platform syncPaymentOrders \
    --nextEvaluatedKey 'DMzCjGVJJsDaIqpt' \
    --end 'OOa7IjxzbdGLdzDx' \
    --start 'sXXzBFrbkk0Wq5F3' \
    > test.out 2>&1
eval_tap $? 399 'SyncPaymentOrders' test.out

#- 400 PublicGetRootCategories
samples/cli/sample-apps Platform publicGetRootCategories \
    --namespace $AB_NAMESPACE \
    --language 'a9TOrmuHUzqLFL93' \
    --storeId '8BXm90eO4oZH0vxD' \
    > test.out 2>&1
eval_tap $? 400 'PublicGetRootCategories' test.out

#- 401 DownloadCategories
samples/cli/sample-apps Platform downloadCategories \
    --namespace $AB_NAMESPACE \
    --language 'u8TNecoHwknwtNwN' \
    --storeId 'AcDMdZoxeW8IXjkq' \
    > test.out 2>&1
eval_tap $? 401 'DownloadCategories' test.out

#- 402 PublicGetCategory
samples/cli/sample-apps Platform publicGetCategory \
    --categoryPath 'iEfD4cX8FXkQ6gV7' \
    --namespace $AB_NAMESPACE \
    --language 'F5eVYlH8UZcdhgZk' \
    --storeId 'g5gqiFVOMcbiOla0' \
    > test.out 2>&1
eval_tap $? 402 'PublicGetCategory' test.out

#- 403 PublicGetChildCategories
samples/cli/sample-apps Platform publicGetChildCategories \
    --categoryPath 'nEaDnEX9R7pzvmNN' \
    --namespace $AB_NAMESPACE \
    --language 'Xwk1IgtummSjRJ42' \
    --storeId 'sFuF0LaYLF91xDZz' \
    > test.out 2>&1
eval_tap $? 403 'PublicGetChildCategories' test.out

#- 404 PublicGetDescendantCategories
samples/cli/sample-apps Platform publicGetDescendantCategories \
    --categoryPath '51FicHuzqYXhHt5q' \
    --namespace $AB_NAMESPACE \
    --language 'Ycg7XvdhD8hQdpwU' \
    --storeId 'k7eytkacYJ6xJsZ1' \
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
    --dlcType 'XBOX' \
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
    --platform 'EPICGAMES' \
    > test.out 2>&1
eval_tap $? 408 'GetIAPItemMapping' test.out

#- 409 PublicGetItemByAppId
samples/cli/sample-apps Platform publicGetItemByAppId \
    --namespace $AB_NAMESPACE \
    --language 'V3By2g8xcPFgJa0d' \
    --region '6m4jABJ7nAwccw5Z' \
    --storeId 'naJA9bftdD3T6MqY' \
    --appId '4XtLovg5eQNiT1SL' \
    > test.out 2>&1
eval_tap $? 409 'PublicGetItemByAppId' test.out

#- 410 PublicQueryItems
samples/cli/sample-apps Platform publicQueryItems \
    --namespace $AB_NAMESPACE \
    --appType 'DLC' \
    --autoCalcEstimatedPrice 'false' \
    --baseAppId 'dkV7HNNl4Tlx0fyB' \
    --categoryPath 'h2Nr7fWhKxYgiduu' \
    --features 'mS00rvFwIQ1YdQ7P' \
    --includeSubCategoryItem 'false' \
    --itemType 'SEASON' \
    --language 'YsNVD7YVI5j9X1rE' \
    --limit '73' \
    --offset '78' \
    --region '6ilGhc8MvQQSE4GW' \
    --sortBy '["name", "updatedAt:desc", "updatedAt:asc"]' \
    --storeId 'oYNPtrL3kBqB2VBG' \
    --tags 'ZVaMdghyUOpV0Jii' \
    > test.out 2>&1
eval_tap $? 410 'PublicQueryItems' test.out

#- 411 PublicGetItemBySku
samples/cli/sample-apps Platform publicGetItemBySku \
    --namespace $AB_NAMESPACE \
    --autoCalcEstimatedPrice 'false' \
    --language 'jkQoTLK8OUJHZM5N' \
    --region 'Gwd5VqROEdMaPpZI' \
    --storeId 'avbtKk1Zi6hTiRK6' \
    --sku 'WpnaVe3ILuWA7lWi' \
    > test.out 2>&1
eval_tap $? 411 'PublicGetItemBySku' test.out

#- 412 PublicGetEstimatedPrice
samples/cli/sample-apps Platform publicGetEstimatedPrice \
    --namespace $AB_NAMESPACE \
    --region '8uXlq2LQoMo1eY8n' \
    --storeId 'TEiklf6LPWZWtBOh' \
    --itemIds 's4oqr028YHGNhJoA' \
    > test.out 2>&1
eval_tap $? 412 'PublicGetEstimatedPrice' test.out

#- 413 PublicBulkGetItems
samples/cli/sample-apps Platform publicBulkGetItems \
    --namespace $AB_NAMESPACE \
    --autoCalcEstimatedPrice 'true' \
    --language '3Gjw982GYrpte0NO' \
    --region 'wTfh6ftZbjXkYDoQ' \
    --storeId 'UNurhMrZZUPWt1JS' \
    --itemIds 'apcn9UhTQPxu1t4x' \
    > test.out 2>&1
eval_tap $? 413 'PublicBulkGetItems' test.out

#- 414 PublicValidateItemPurchaseCondition
samples/cli/sample-apps Platform publicValidateItemPurchaseCondition \
    --namespace $AB_NAMESPACE \
    --body '{"itemIds": ["nV7b6uTjp2Nu94Bp", "d6VNtAWjo5LczFdG", "gfgd0mnyRKQzwtf8"]}' \
    > test.out 2>&1
eval_tap $? 414 'PublicValidateItemPurchaseCondition' test.out

#- 415 PublicSearchItems
samples/cli/sample-apps Platform publicSearchItems \
    --namespace $AB_NAMESPACE \
    --autoCalcEstimatedPrice 'false' \
    --itemType 'BUNDLE' \
    --limit '64' \
    --offset '75' \
    --region 'xnNvBDyrf7cuH1ni' \
    --storeId 'e5CbribP3F7C0ibZ' \
    --keyword 'mTfXcxU5x6NSmoTp' \
    --language 'SrPL7tOLPZbN2OIo' \
    > test.out 2>&1
eval_tap $? 415 'PublicSearchItems' test.out

#- 416 PublicGetApp
samples/cli/sample-apps Platform publicGetApp \
    --itemId '4hgoiJRYBjLA89Rg' \
    --namespace $AB_NAMESPACE \
    --language '0rM7P7p8A0fjSVu1' \
    --region 'q5xnAR83XxfnpqiI' \
    --storeId '13gKmNqEVaOcWoww' \
    > test.out 2>&1
eval_tap $? 416 'PublicGetApp' test.out

#- 417 PublicGetItemDynamicData
samples/cli/sample-apps Platform publicGetItemDynamicData \
    --itemId '6uRcg2IXXB8uknek' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 417 'PublicGetItemDynamicData' test.out

#- 418 PublicGetItem
samples/cli/sample-apps Platform publicGetItem \
    --itemId 'fcOoFWdFyMDmCdtb' \
    --namespace $AB_NAMESPACE \
    --autoCalcEstimatedPrice 'true' \
    --language 'rXh3RqIjwG7wmvhW' \
    --populateBundle 'true' \
    --region 'YzzJpvcOp50x5wiE' \
    --storeId '2QbnEd0FP7ABoCnO' \
    > test.out 2>&1
eval_tap $? 418 'PublicGetItem' test.out

#- 419 GetPaymentCustomization
eval_tap 0 419 'GetPaymentCustomization # SKIP deprecated' test.out

#- 420 PublicGetPaymentUrl
samples/cli/sample-apps Platform publicGetPaymentUrl \
    --namespace $AB_NAMESPACE \
    --body '{"neonPayConfig": {"cancelUrl": "4TTGJt1Nv8S1Fc2M", "successUrl": "mx8bkth5wXcIQTK4"}, "paymentOrderNo": "DloSEUAOJaigt2vB", "paymentProvider": "XSOLLA", "returnUrl": "lRWgpP3hKJ1hKck2", "ui": "uxX2msglaLdPopbd", "zipCode": "6XF2JJwRQzPwyFcp"}' \
    > test.out 2>&1
eval_tap $? 420 'PublicGetPaymentUrl' test.out

#- 421 PublicGetPaymentMethods
samples/cli/sample-apps Platform publicGetPaymentMethods \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo '3aPnEhyMgu2FYMv0' \
    > test.out 2>&1
eval_tap $? 421 'PublicGetPaymentMethods' test.out

#- 422 PublicGetUnpaidPaymentOrder
samples/cli/sample-apps Platform publicGetUnpaidPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'wE1bEhcIuB2JxyDi' \
    > test.out 2>&1
eval_tap $? 422 'PublicGetUnpaidPaymentOrder' test.out

#- 423 Pay
samples/cli/sample-apps Platform pay \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo '7xMjCGpGJs8US34c' \
    --paymentProvider 'WALLET' \
    --zipCode 'SSJhOxMoBU2uNV9C' \
    --body '{"token": "XKED0SwzGzxDWZWz"}' \
    > test.out 2>&1
eval_tap $? 423 'Pay' test.out

#- 424 PublicCheckPaymentOrderPaidStatus
samples/cli/sample-apps Platform publicCheckPaymentOrderPaidStatus \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'Fe7IAnqtmqlKIPy7' \
    > test.out 2>&1
eval_tap $? 424 'PublicCheckPaymentOrderPaidStatus' test.out

#- 425 GetPaymentPublicConfig
samples/cli/sample-apps Platform getPaymentPublicConfig \
    --namespace $AB_NAMESPACE \
    --sandbox 'true' \
    --paymentProvider 'CHECKOUT' \
    --region 'm1EOedzXhNMu9fzg' \
    > test.out 2>&1
eval_tap $? 425 'GetPaymentPublicConfig' test.out

#- 426 PublicGetQRCode
samples/cli/sample-apps Platform publicGetQRCode \
    --namespace $AB_NAMESPACE \
    --code 'mFfzJvce1SCXcjbU' \
    > test.out 2>&1
eval_tap $? 426 'PublicGetQRCode' test.out

#- 427 PublicNormalizePaymentReturnUrl
samples/cli/sample-apps Platform publicNormalizePaymentReturnUrl \
    --namespace $AB_NAMESPACE \
    --payerID 'mpJgfgRL32KX15Vw' \
    --foreinginvoice 'Ro5ZZVrujTRJLQdx' \
    --invoiceId 'COgYTSkiEpkeOry3' \
    --payload 'Bi8YCHG5zar3qvVb' \
    --redirectResult 't1Kd65kuS1qRyQjj' \
    --resultCode 'oPzS1NRLwGxIClOq' \
    --sessionId 'qToE0CAMxJKTl08t' \
    --status 'plRWsijt4eqsE4iW' \
    --token 'KbF1OaZWUFyFGLMP' \
    --type 'zZmXRkM9Uz0o5pRp' \
    --userId 'DLXeXuXY9U84Oo9A' \
    --orderNo 'qzRNfWPKi6J4qLnR' \
    --paymentOrderNo 'mn7owsEWPwVFXyq7' \
    --paymentProvider 'WALLET' \
    --returnUrl 'LnPPFHEisDREmfED' \
    > test.out 2>&1
eval_tap $? 427 'PublicNormalizePaymentReturnUrl' test.out

#- 428 GetPaymentTaxValue
samples/cli/sample-apps Platform getPaymentTaxValue \
    --namespace $AB_NAMESPACE \
    --zipCode '7TxcESbZvTM79o4G' \
    --paymentOrderNo 'Ai1vwF9tXQHvzBS2' \
    --paymentProvider 'WALLET' \
    > test.out 2>&1
eval_tap $? 428 'GetPaymentTaxValue' test.out

#- 429 GetRewardByCode
samples/cli/sample-apps Platform getRewardByCode \
    --namespace $AB_NAMESPACE \
    --rewardCode 'hJ9mjKVi4QZ56tMB' \
    > test.out 2>&1
eval_tap $? 429 'GetRewardByCode' test.out

#- 430 QueryRewards1
samples/cli/sample-apps Platform queryRewards1 \
    --namespace $AB_NAMESPACE \
    --eventTopic 'vwRTkyUdKwJdJrkA' \
    --limit '89' \
    --offset '39' \
    --sortBy '["rewardCode", "namespace"]' \
    > test.out 2>&1
eval_tap $? 430 'QueryRewards1' test.out

#- 431 GetReward1
samples/cli/sample-apps Platform getReward1 \
    --namespace $AB_NAMESPACE \
    --rewardId 'yTAeZUWQPA7X7PuN' \
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
    --appIds '["8pE9FOH6LbQrJUfu", "xEjN0LMW5or1yncQ", "vPNo85BFb18y7Nzz"]' \
    --itemIds '["v0E1963qwIvRezJV", "R9qZWCOvcSRzFrbZ", "5XJjksdqXLPe8WU3"]' \
    --skus '["ClWuJUd61n66lVLE", "9iS2AakUdPdveVYb", "A6b6SoKqtGAZEZcv"]' \
    > test.out 2>&1
eval_tap $? 433 'PublicExistsAnyMyActiveEntitlement' test.out

#- 434 PublicGetMyAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform publicGetMyAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --appId 'BOwSAe3JKzSfT9It' \
    > test.out 2>&1
eval_tap $? 434 'PublicGetMyAppEntitlementOwnershipByAppId' test.out

#- 435 PublicGetMyEntitlementOwnershipByItemId
samples/cli/sample-apps Platform publicGetMyEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --entitlementClazz 'MEDIA' \
    --itemId 'Z6fduL5c6Gnzq9m0' \
    > test.out 2>&1
eval_tap $? 435 'PublicGetMyEntitlementOwnershipByItemId' test.out

#- 436 PublicGetMyEntitlementOwnershipBySku
samples/cli/sample-apps Platform publicGetMyEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --entitlementClazz 'MEDIA' \
    --sku 'U3RwgfmaO7bRlZfJ' \
    > test.out 2>&1
eval_tap $? 436 'PublicGetMyEntitlementOwnershipBySku' test.out

#- 437 PublicGetEntitlementOwnershipToken
samples/cli/sample-apps Platform publicGetEntitlementOwnershipToken \
    --namespace $AB_NAMESPACE \
    --appIds '["R91jwNA2UGW4kj6X", "OUStZxF3it8x00Bv", "TDcT8SEn30LsUqJ0"]' \
    --itemIds '["19Y0TSfMvKCneEmF", "Lq0dA5ZCQ1GYYhl7", "L3yt1LQlv7bSCygx"]' \
    --skus '["Ob8efZHj2vOzAp8p", "bNhL0Fkh6aioQsLk", "cZYnqKm6gwLoqpVq"]' \
    > test.out 2>&1
eval_tap $? 437 'PublicGetEntitlementOwnershipToken' test.out

#- 438 SyncTwitchDropsEntitlement
samples/cli/sample-apps Platform syncTwitchDropsEntitlement \
    --namespace $AB_NAMESPACE \
    --body '{"gameId": "ohHArtPDMNvHI3B6", "language": "Vyv-sHef-CY", "region": "JuxEUfyjbmxPZCRs"}' \
    > test.out 2>&1
eval_tap $? 438 'SyncTwitchDropsEntitlement' test.out

#- 439 PublicGetMyWallet
samples/cli/sample-apps Platform publicGetMyWallet \
    --currencyCode 'JK9ztuak4RhBIxnO' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 439 'PublicGetMyWallet' test.out

#- 440 SyncEpicGameDLC
samples/cli/sample-apps Platform syncEpicGameDLC \
    --namespace $AB_NAMESPACE \
    --userId '9A4Cm6TdsBacOMrt' \
    --body '{"epicGamesJwtToken": "iFV8X7LWDvR40fT8"}' \
    > test.out 2>&1
eval_tap $? 440 'SyncEpicGameDLC' test.out

#- 441 SyncOculusDLC
samples/cli/sample-apps Platform syncOculusDLC \
    --namespace $AB_NAMESPACE \
    --userId 'bZdTB0aMQtwMbE93' \
    > test.out 2>&1
eval_tap $? 441 'SyncOculusDLC' test.out

#- 442 PublicSyncPsnDlcInventory
samples/cli/sample-apps Platform publicSyncPsnDlcInventory \
    --namespace $AB_NAMESPACE \
    --userId 'YV0lk6U0B9ee93cI' \
    --body '{"serviceLabel": 85}' \
    > test.out 2>&1
eval_tap $? 442 'PublicSyncPsnDlcInventory' test.out

#- 443 PublicSyncPsnDlcInventoryWithMultipleServiceLabels
samples/cli/sample-apps Platform publicSyncPsnDlcInventoryWithMultipleServiceLabels \
    --namespace $AB_NAMESPACE \
    --userId 'd82mwjul6gApG2Ev' \
    --body '{"serviceLabels": [57, 21, 6]}' \
    > test.out 2>&1
eval_tap $? 443 'PublicSyncPsnDlcInventoryWithMultipleServiceLabels' test.out

#- 444 SyncSteamDLC
samples/cli/sample-apps Platform syncSteamDLC \
    --namespace $AB_NAMESPACE \
    --userId 'YJBxCU0ZnnKFyvkA' \
    --body '{"appId": "dpQTnF9Kb2Cndq0I", "steamId": "bQiDsgk3yZVMHLHJ"}' \
    > test.out 2>&1
eval_tap $? 444 'SyncSteamDLC' test.out

#- 445 SyncXboxDLC
samples/cli/sample-apps Platform syncXboxDLC \
    --namespace $AB_NAMESPACE \
    --userId 'S9DCabz2swOt7fEb' \
    --body '{"xstsToken": "ouANUI8FwhlJ6z8e"}' \
    > test.out 2>&1
eval_tap $? 445 'SyncXboxDLC' test.out

#- 446 PublicQueryUserEntitlements
samples/cli/sample-apps Platform publicQueryUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'yThhGDoRQ2fVlUKq' \
    --appType 'DLC' \
    --entitlementClazz 'SUBSCRIPTION' \
    --entitlementName 'PsTgMV8Iwj8FiWGW' \
    --features '["OTRCUSOy3fqojn6Z", "87v0h1CMhCFGYacj", "EsxdAkcicg7z1gZP"]' \
    --itemId '["8X2tgrxrUxpvQzNu", "0ws7WCGp0f5mRO3U", "dI8nNPVRHBFU3Zmp"]' \
    --limit '48' \
    --offset '21' \
    > test.out 2>&1
eval_tap $? 446 'PublicQueryUserEntitlements' test.out

#- 447 PublicGetUserAppEntitlementByAppId
samples/cli/sample-apps Platform publicGetUserAppEntitlementByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'MleGJI3k9HoCmRh9' \
    --appId 'AJWiA8872vKzQrp9' \
    > test.out 2>&1
eval_tap $? 447 'PublicGetUserAppEntitlementByAppId' test.out

#- 448 PublicQueryUserEntitlementsByAppType
samples/cli/sample-apps Platform publicQueryUserEntitlementsByAppType \
    --namespace $AB_NAMESPACE \
    --userId 'CR7vvI9vbSC6Pqlc' \
    --limit '93' \
    --offset '30' \
    --appType 'SOFTWARE' \
    > test.out 2>&1
eval_tap $? 448 'PublicQueryUserEntitlementsByAppType' test.out

#- 449 PublicGetUserEntitlementsByIds
samples/cli/sample-apps Platform publicGetUserEntitlementsByIds \
    --namespace $AB_NAMESPACE \
    --userId 'SF2xRRX0C79cT9HF' \
    --availablePlatformOnly 'true' \
    --ids '["IvS9nUslZ0h9icbN", "Gm1LReJC6F1IlxS5", "b61ilFdkkcqcIF0w"]' \
    > test.out 2>&1
eval_tap $? 449 'PublicGetUserEntitlementsByIds' test.out

#- 450 PublicGetUserEntitlementByItemId
eval_tap 0 450 'PublicGetUserEntitlementByItemId # SKIP deprecated' test.out

#- 451 PublicGetUserEntitlementBySku
eval_tap 0 451 'PublicGetUserEntitlementBySku # SKIP deprecated' test.out

#- 452 PublicUserEntitlementHistory
samples/cli/sample-apps Platform publicUserEntitlementHistory \
    --namespace $AB_NAMESPACE \
    --userId 'NbOLL4hJKWdgCmwH' \
    --endDate 'SepSVwfiM9vjsrYL' \
    --entitlementClazz 'OPTIONBOX' \
    --limit '26' \
    --offset '100' \
    --startDate 'M0NfJ7VibcnZ85Sp' \
    > test.out 2>&1
eval_tap $? 452 'PublicUserEntitlementHistory' test.out

#- 453 PublicExistsAnyUserActiveEntitlement
samples/cli/sample-apps Platform publicExistsAnyUserActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'inX7jkSjiu7GLRDX' \
    --appIds '["tjKgzjyjUqMFbCOo", "SssqfwroDO5xHfXJ", "beZ0fxoAAo8CBMDU"]' \
    --itemIds '["fooKgcO15X5rpnfi", "keFCPIsGZ5hgsw8u", "TZAHPCOXUD2LUDV5"]' \
    --skus '["s3vq3u8NrZSW1bGr", "hqtXJSRWH7meaoVo", "1HtzVUEXP1PQGETr"]' \
    > test.out 2>&1
eval_tap $? 453 'PublicExistsAnyUserActiveEntitlement' test.out

#- 454 PublicGetUserAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform publicGetUserAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --userId '14busblzgyGHUgLC' \
    --appId 'ikDgINSr1tmiPwsi' \
    > test.out 2>&1
eval_tap $? 454 'PublicGetUserAppEntitlementOwnershipByAppId' test.out

#- 455 PublicGetUserEntitlementOwnershipByItemId
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'A1scPRDU9VqM0f7e' \
    --entitlementClazz 'CODE' \
    --itemId 'YGHH34dcDH7E0nuO' \
    > test.out 2>&1
eval_tap $? 455 'PublicGetUserEntitlementOwnershipByItemId' test.out

#- 456 PublicGetUserEntitlementOwnershipByItemIds
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'Pwn5RGIKn2Mrgu2W' \
    --ids '["ZupCgD3IhZZ31jzZ", "i9SvfB4DJ4rP1llI", "L7QYX5UJ78EMx4ez"]' \
    > test.out 2>&1
eval_tap $? 456 'PublicGetUserEntitlementOwnershipByItemIds' test.out

#- 457 PublicGetUserEntitlementOwnershipBySku
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --userId 'FRJa1cbWkiJHawKi' \
    --entitlementClazz 'MEDIA' \
    --sku 'QN2gHhNlCvzIXs3N' \
    > test.out 2>&1
eval_tap $? 457 'PublicGetUserEntitlementOwnershipBySku' test.out

#- 458 PublicGetUserEntitlement
samples/cli/sample-apps Platform publicGetUserEntitlement \
    --entitlementId 'ZzBhyyqn4D86ZlOQ' \
    --namespace $AB_NAMESPACE \
    --userId 'sYuyx57QPxCRN2Gm' \
    > test.out 2>&1
eval_tap $? 458 'PublicGetUserEntitlement' test.out

#- 459 PublicConsumeUserEntitlement
samples/cli/sample-apps Platform publicConsumeUserEntitlement \
    --entitlementId 'gnaIFZO6oW4vl8br' \
    --namespace $AB_NAMESPACE \
    --userId '0M7CjLA4eW46sNtO' \
    --body '{"metadata": {"operationSource": "INVENTORY"}, "options": ["g4t8aGbvPskLJO5N", "VsTdAMLdjqVt177Y", "x71IBj3qGdgS5ZbI"], "requestId": "JhCgPhpT1gM0loLk", "useCount": 3}' \
    > test.out 2>&1
eval_tap $? 459 'PublicConsumeUserEntitlement' test.out

#- 460 PublicSellUserEntitlement
samples/cli/sample-apps Platform publicSellUserEntitlement \
    --entitlementId 'foN4PMaaI7EV1oq8' \
    --namespace $AB_NAMESPACE \
    --userId 'p9ATkpk7VF9y998z' \
    --body '{"requestId": "b6qQZvnith7KJMa5", "useCount": 81}' \
    > test.out 2>&1
eval_tap $? 460 'PublicSellUserEntitlement' test.out

#- 461 PublicSplitUserEntitlement
samples/cli/sample-apps Platform publicSplitUserEntitlement \
    --entitlementId 'QhV5cHgeCewEYKub' \
    --namespace $AB_NAMESPACE \
    --userId 'SHJ02At0zs8zKifS' \
    --body '{"metadata": {"operationSource": "INVENTORY"}, "useCount": 30}' \
    > test.out 2>&1
eval_tap $? 461 'PublicSplitUserEntitlement' test.out

#- 462 PublicTransferUserEntitlement
samples/cli/sample-apps Platform publicTransferUserEntitlement \
    --entitlementId 'yoo1tFvQF4GPkzlW' \
    --namespace $AB_NAMESPACE \
    --userId 'XlTqOZStkWBTjK8n' \
    --body '{"entitlementId": "JEOfd99iyZsyED6q", "metadata": {"operationSource": "INVENTORY"}, "useCount": 71}' \
    > test.out 2>&1
eval_tap $? 462 'PublicTransferUserEntitlement' test.out

#- 463 PublicRedeemCode
samples/cli/sample-apps Platform publicRedeemCode \
    --namespace $AB_NAMESPACE \
    --userId 'R7KbcPRYUL1m7ORk' \
    --body '{"code": "JHXSoOjFToC2kT3o", "language": "Idpu", "region": "hvSD4jEN4FqGPD5Z"}' \
    > test.out 2>&1
eval_tap $? 463 'PublicRedeemCode' test.out

#- 464 PublicFulfillAppleIAPItem
samples/cli/sample-apps Platform publicFulfillAppleIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'xbrVFnd4raR7PR6h' \
    --body '{"excludeOldTransactions": true, "language": "VrSj_HpmX", "productId": "0Nq3lPa60zJvTuF4", "receiptData": "FvnM2vH9axHMlH6m", "region": "D8f0wY7i8pq5XMMX", "transactionId": "re6WMDu8cfhOZcZB"}' \
    > test.out 2>&1
eval_tap $? 464 'PublicFulfillAppleIAPItem' test.out

#- 465 SyncEpicGamesInventory
samples/cli/sample-apps Platform syncEpicGamesInventory \
    --namespace $AB_NAMESPACE \
    --userId 'tur2wecCqGLDMJvK' \
    --body '{"epicGamesJwtToken": "IsIrfyn9QDPjZBuP"}' \
    > test.out 2>&1
eval_tap $? 465 'SyncEpicGamesInventory' test.out

#- 466 PublicFulfillGoogleIAPItem
samples/cli/sample-apps Platform publicFulfillGoogleIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'lKrGuUrfuOMMUsRa' \
    --body '{"autoAck": false, "autoConsume": false, "language": "MeZM-OA", "orderId": "FfIHSxo1UhX69FJ4", "packageName": "AmfB9BFTbeVCPUGB", "productId": "JxwAqclVuXf2oJC0", "purchaseTime": 10, "purchaseToken": "3Zq7iJRYZRULm5Qj", "region": "zjkIRgGg8lmNP8KK", "subscriptionPurchase": false}' \
    > test.out 2>&1
eval_tap $? 466 'PublicFulfillGoogleIAPItem' test.out

#- 467 SyncOculusSubscriptions
samples/cli/sample-apps Platform syncOculusSubscriptions \
    --namespace $AB_NAMESPACE \
    --userId '45UQTRwkWzMhrXiw' \
    --body '{"skus": ["sgDIyxPpkF6UJyQu", "215JHBkjKNmOTWk1", "KbgliRLP1T4toaur"]}' \
    > test.out 2>&1
eval_tap $? 467 'SyncOculusSubscriptions' test.out

#- 468 SyncOculusConsumableEntitlements
samples/cli/sample-apps Platform syncOculusConsumableEntitlements \
    --namespace $AB_NAMESPACE \
    --userId '6OvkJdo461EYR9AP' \
    > test.out 2>&1
eval_tap $? 468 'SyncOculusConsumableEntitlements' test.out

#- 469 PublicReconcilePlayStationStore
samples/cli/sample-apps Platform publicReconcilePlayStationStore \
    --namespace $AB_NAMESPACE \
    --userId 'TnfCBgDEUEnXOgSq' \
    --body '{"currencyCode": "6dNXVedizi07NHRG", "price": 0.8718768493059447, "productId": "CMNk47FejJX1jxJ1", "serviceLabel": 21}' \
    > test.out 2>&1
eval_tap $? 469 'PublicReconcilePlayStationStore' test.out

#- 470 PublicReconcilePlayStationStoreWithMultipleServiceLabels
samples/cli/sample-apps Platform publicReconcilePlayStationStoreWithMultipleServiceLabels \
    --namespace $AB_NAMESPACE \
    --userId '1f2Wy0WDNCjrGZlo' \
    --body '{"currencyCode": "hs5Ju61gMqGG7c3K", "price": 0.23835438759356375, "productId": "7g53Ze0tlka5uSdg", "serviceLabels": [90, 28, 71]}' \
    > test.out 2>&1
eval_tap $? 470 'PublicReconcilePlayStationStoreWithMultipleServiceLabels' test.out

#- 471 SyncSteamInventory
samples/cli/sample-apps Platform syncSteamInventory \
    --namespace $AB_NAMESPACE \
    --userId 'QxyQSaaLcaeE0kvv' \
    --body '{"appId": "ZWIi9bprpoRvPFdP", "currencyCode": "cFEtkvsvOv9Q2uIO", "language": "Ex-mujS", "price": 0.12640119697596164, "productId": "TbHsLbl7WQ2gA1fr", "region": "dsYRSgveGdAQEUjl", "steamId": "56on9CDIscCSwTsj"}' \
    > test.out 2>&1
eval_tap $? 471 'SyncSteamInventory' test.out

#- 472 SyncSteamAbnormalTransaction
samples/cli/sample-apps Platform syncSteamAbnormalTransaction \
    --namespace $AB_NAMESPACE \
    --userId 'OG2Fsiut6YCLyjj9' \
    > test.out 2>&1
eval_tap $? 472 'SyncSteamAbnormalTransaction' test.out

#- 473 SyncSteamIAPByTransaction
samples/cli/sample-apps Platform syncSteamIAPByTransaction \
    --namespace $AB_NAMESPACE \
    --userId '4rF0rJOXcbvstUkZ' \
    --body '{"orderId": "F2DF6LIhNQuyHuN2"}' \
    > test.out 2>&1
eval_tap $? 473 'SyncSteamIAPByTransaction' test.out

#- 474 PublicQueryUserThirdPartySubscription
samples/cli/sample-apps Platform publicQueryUserThirdPartySubscription \
    --namespace $AB_NAMESPACE \
    --platform 'STEAM' \
    --userId 'ex0TaLZg6JKTW7uD' \
    --activeOnly 'false' \
    --groupId 'NR5UAR2XnEfXqBK6' \
    --limit '98' \
    --offset '88' \
    --productId 'WAD3soIQSy4Orxir' \
    > test.out 2>&1
eval_tap $? 474 'PublicQueryUserThirdPartySubscription' test.out

#- 475 SyncTwitchDropsEntitlement1
samples/cli/sample-apps Platform syncTwitchDropsEntitlement1 \
    --namespace $AB_NAMESPACE \
    --userId 'gUObP1LlqN55nn7K' \
    --body '{"gameId": "7bocJjrJi9TX9VLv", "language": "KBvj-182", "region": "f9a6irPBxBN6bUsJ"}' \
    > test.out 2>&1
eval_tap $? 475 'SyncTwitchDropsEntitlement1' test.out

#- 476 SyncXboxInventory
samples/cli/sample-apps Platform syncXboxInventory \
    --namespace $AB_NAMESPACE \
    --userId '4SMypEoyXkxUALf4' \
    --body '{"currencyCode": "HqJsh44lZuu6Lfi6", "price": 0.1939079620729921, "productId": "2hol10AjVkNvy3HZ", "xstsToken": "vH1xHI8CFHJDmCKk"}' \
    > test.out 2>&1
eval_tap $? 476 'SyncXboxInventory' test.out

#- 477 PublicQueryUserOrders
samples/cli/sample-apps Platform publicQueryUserOrders \
    --namespace $AB_NAMESPACE \
    --userId 'TIYZ3zj2EnCg6kd0' \
    --discounted 'false' \
    --itemId 'M1CuHnVFX0Q8fE8Q' \
    --limit '0' \
    --offset '35' \
    --status 'CHARGEBACK_REVERSED' \
    > test.out 2>&1
eval_tap $? 477 'PublicQueryUserOrders' test.out

#- 478 PublicCreateUserOrder
samples/cli/sample-apps Platform publicCreateUserOrder \
    --namespace $AB_NAMESPACE \
    --userId '7bMy7x1uNWk3XzWw' \
    --body '{"currencyCode": "u8dORmqnuVPHRRqz", "discountCodes": ["T6SbJBNkLfdJlpKW", "qQD3WZNjKs0wom0j", "Qo7sFLNvclGFDlgh"], "discountedPrice": 32, "ext": {"djfLaFgPkqDnmf7P": {}, "lrO6chEJ22HSvAnc": {}, "upqS0sJSlGyLV63m": {}}, "itemId": "JwK7nWsbVamUqNQO", "language": "xIL-WCBJ", "price": 23, "quantity": 50, "region": "uPvVsqLHapbqeKa7", "returnUrl": "1riXXZ3hc6v1sv1K", "sectionId": "UlwMB57zZDImd05R"}' \
    > test.out 2>&1
eval_tap $? 478 'PublicCreateUserOrder' test.out

#- 479 PublicPreviewOrderPrice
samples/cli/sample-apps Platform publicPreviewOrderPrice \
    --namespace $AB_NAMESPACE \
    --userId 'IG2tS5B6f55BCElm' \
    --body '{"currencyCode": "HkqxHlwL6B9mNWKj", "discountCodes": ["SxeWrQYukUvJiVjb", "TLEwMZk0x635Gxcr", "1FQvm2hILKsCxff3"], "discountedPrice": 2, "itemId": "jq0JCObKPmUPgtlb", "price": 88, "quantity": 20}' \
    > test.out 2>&1
eval_tap $? 479 'PublicPreviewOrderPrice' test.out

#- 480 PublicGetUserOrder
samples/cli/sample-apps Platform publicGetUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'KqaIhx62RBduDcJx' \
    --userId 'NlicIfUJDwP6BMSH' \
    > test.out 2>&1
eval_tap $? 480 'PublicGetUserOrder' test.out

#- 481 PublicCancelUserOrder
samples/cli/sample-apps Platform publicCancelUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo '58qLmibVEG19nqrQ' \
    --userId '79C517lINdMYJEvl' \
    > test.out 2>&1
eval_tap $? 481 'PublicCancelUserOrder' test.out

#- 482 PublicGetUserOrderHistories
samples/cli/sample-apps Platform publicGetUserOrderHistories \
    --namespace $AB_NAMESPACE \
    --orderNo 'kfaoW1vQ3Wm9BpEj' \
    --userId 'YZczE8fqOLzPJf0y' \
    > test.out 2>&1
eval_tap $? 482 'PublicGetUserOrderHistories' test.out

#- 483 PublicDownloadUserOrderReceipt
samples/cli/sample-apps Platform publicDownloadUserOrderReceipt \
    --namespace $AB_NAMESPACE \
    --orderNo 'QSosMdYzZCSxeCYJ' \
    --userId '3ayPaqifxICnoEnG' \
    > test.out 2>&1
eval_tap $? 483 'PublicDownloadUserOrderReceipt' test.out

#- 484 PublicGetPaymentAccounts
samples/cli/sample-apps Platform publicGetPaymentAccounts \
    --namespace $AB_NAMESPACE \
    --userId 'hfzJWvUFAWGzXpE1' \
    > test.out 2>&1
eval_tap $? 484 'PublicGetPaymentAccounts' test.out

#- 485 PublicDeletePaymentAccount
samples/cli/sample-apps Platform publicDeletePaymentAccount \
    --id 'JFhwdGlkfIojOn1v' \
    --namespace $AB_NAMESPACE \
    --type 'paypal' \
    --userId '8He0ruk7djOK37ZT' \
    > test.out 2>&1
eval_tap $? 485 'PublicDeletePaymentAccount' test.out

#- 486 PublicListActiveSections
samples/cli/sample-apps Platform publicListActiveSections \
    --namespace $AB_NAMESPACE \
    --userId 'hWKYohI9MPWcbJEe' \
    --autoCalcEstimatedPrice 'false' \
    --language 'IF33IJRjOFWvwODe' \
    --region 'MH9OcGPJKkHiRbXz' \
    --storeId 'DpXoekpBsXEEdz2r' \
    --viewId 'EKnigmpo95AX88QW' \
    > test.out 2>&1
eval_tap $? 486 'PublicListActiveSections' test.out

#- 487 PublicQueryUserSubscriptions
samples/cli/sample-apps Platform publicQueryUserSubscriptions \
    --namespace $AB_NAMESPACE \
    --userId 'AbX1wyJjKYYhQdA1' \
    --chargeStatus 'NEVER' \
    --itemId 'mvD9v3FoKzPAxtTy' \
    --limit '86' \
    --offset '15' \
    --sku 'KlfwL9tP2WY26F3f' \
    --status 'CANCELLED' \
    --subscribedBy 'USER' \
    > test.out 2>&1
eval_tap $? 487 'PublicQueryUserSubscriptions' test.out

#- 488 PublicSubscribeSubscription
samples/cli/sample-apps Platform publicSubscribeSubscription \
    --namespace $AB_NAMESPACE \
    --userId 'fKuzlWEDhbwuUmdi' \
    --body '{"currencyCode": "qqSl4OKu1bWlpQwL", "itemId": "QJZtAjXyIEd5rYVs", "language": "pXXc-SuUl_ck", "region": "0pLeTdGOCVNmqGLX", "returnUrl": "iKDEJ1pxTgpaOZ45", "source": "gwXZnmAJxvc4fWBE"}' \
    > test.out 2>&1
eval_tap $? 488 'PublicSubscribeSubscription' test.out

#- 489 PublicCheckUserSubscriptionSubscribableByItemId
samples/cli/sample-apps Platform publicCheckUserSubscriptionSubscribableByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'sBpCPgVP8jzg62Jx' \
    --itemId 'eW9GjFLWfqB5sYIj' \
    > test.out 2>&1
eval_tap $? 489 'PublicCheckUserSubscriptionSubscribableByItemId' test.out

#- 490 PublicGetUserSubscription
samples/cli/sample-apps Platform publicGetUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'LNfmFbvtmrfL6yIu' \
    --userId 'uxpmVcAe1jUl3Til' \
    > test.out 2>&1
eval_tap $? 490 'PublicGetUserSubscription' test.out

#- 491 PublicChangeSubscriptionBillingAccount
samples/cli/sample-apps Platform publicChangeSubscriptionBillingAccount \
    --namespace $AB_NAMESPACE \
    --subscriptionId '39MN8De6DtRr5AUl' \
    --userId 'tBuJZwIcOOy30Pg3' \
    > test.out 2>&1
eval_tap $? 491 'PublicChangeSubscriptionBillingAccount' test.out

#- 492 PublicCancelSubscription
samples/cli/sample-apps Platform publicCancelSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'ut6HeZfsWVZfZaJM' \
    --userId '58MaJzQnxFXvN6Im' \
    --body '{"immediate": true, "reason": "u3wuYRJ18gBSjEpE"}' \
    > test.out 2>&1
eval_tap $? 492 'PublicCancelSubscription' test.out

#- 493 PublicGetUserSubscriptionBillingHistories
samples/cli/sample-apps Platform publicGetUserSubscriptionBillingHistories \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'bIYJjgF9L9CLcQEu' \
    --userId 'zOZSXhF8LsT1BvzE' \
    --excludeFree 'false' \
    --limit '35' \
    --offset '34' \
    > test.out 2>&1
eval_tap $? 493 'PublicGetUserSubscriptionBillingHistories' test.out

#- 494 PublicListViews
samples/cli/sample-apps Platform publicListViews \
    --namespace $AB_NAMESPACE \
    --userId 'LnlGRp7Tvz6whbrU' \
    --language 'lEAzWu7jwMDB2Zql' \
    --storeId '07Q1tqnvhJIV90cL' \
    > test.out 2>&1
eval_tap $? 494 'PublicListViews' test.out

#- 495 PublicGetWallet
samples/cli/sample-apps Platform publicGetWallet \
    --currencyCode '6EuA16bntU6GcOC4' \
    --namespace $AB_NAMESPACE \
    --userId 'HU337efYm9E7NA5T' \
    > test.out 2>&1
eval_tap $? 495 'PublicGetWallet' test.out

#- 496 PublicListUserWalletTransactions
samples/cli/sample-apps Platform publicListUserWalletTransactions \
    --currencyCode 'unqQ69OEiB0unrQR' \
    --namespace $AB_NAMESPACE \
    --userId 'Jp8DZmxyuBvZYRAh' \
    --limit '11' \
    --offset '60' \
    > test.out 2>&1
eval_tap $? 496 'PublicListUserWalletTransactions' test.out

#- 497 PublicGetMyDLCContent
samples/cli/sample-apps Platform publicGetMyDLCContent \
    --includeAllNamespaces 'false' \
    --type 'XBOX' \
    > test.out 2>&1
eval_tap $? 497 'PublicGetMyDLCContent' test.out

#- 498 QueryFulfillments
samples/cli/sample-apps Platform queryFulfillments \
    --namespace $AB_NAMESPACE \
    --endTime 'XxKZjBblnpPdFW0C' \
    --limit '83' \
    --offset '86' \
    --startTime 'rnVLAGcmAqAPkmah' \
    --state 'REVOKED' \
    --transactionId 'vloftYkDdnjP8fR1' \
    --userId 'TrYozwA0VfZNyqqW' \
    > test.out 2>&1
eval_tap $? 498 'QueryFulfillments' test.out

#- 499 QueryItemsV2
samples/cli/sample-apps Platform queryItemsV2 \
    --namespace $AB_NAMESPACE \
    --appType 'GAME' \
    --availableDate 'hDP0cZKRqUkBKl0p' \
    --baseAppId 'phR6iW4LI0BJFC1C' \
    --categoryPath '4KgqsR7qPO2dOjf3' \
    --features 'IWwSa3ZjO6hCPBIY' \
    --includeSubCategoryItem 'true' \
    --itemName '3SUrYNairgMYT3m7' \
    --itemStatus 'INACTIVE' \
    --itemType '["EXTENSION", "LOOTBOX", "INGAMEITEM"]' \
    --limit '54' \
    --offset '64' \
    --region 'lWpYBc2TVLvdYsyM' \
    --sectionExclusive 'true' \
    --sortBy '["updatedAt", "createdAt:desc"]' \
    --storeId 'lDI4DdB86dE09YvF' \
    --tags 'tcO0Ay9D3JJ31YYq' \
    --targetNamespace 'khssOjM3CMAKjmbU' \
    --withTotal 'true' \
    > test.out 2>&1
eval_tap $? 499 'QueryItemsV2' test.out

#- 500 ImportStore1
samples/cli/sample-apps Platform importStore1 \
    --namespace $AB_NAMESPACE \
    --storeId 'WirYQWy8On0k16Af' \
    --strictMode 'false' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 500 'ImportStore1' test.out

#- 501 ExportStore1
samples/cli/sample-apps Platform exportStore1 \
    --namespace $AB_NAMESPACE \
    --storeId 'ZxY6E4Y0CYYrB0Mb' \
    --body '{"itemIds": ["TGnnKS0SymTdRZ7Z", "AWCZZCvP9TbnS6mr", "rQ3dGPKCIbjLXIqA"]}' \
    > test.out 2>&1
eval_tap $? 501 'ExportStore1' test.out

#- 502 FulfillRewardsV2
samples/cli/sample-apps Platform fulfillRewardsV2 \
    --namespace $AB_NAMESPACE \
    --userId 'ykWfZGV0JauU96WC' \
    --body '{"entitlementCollectionId": "DUENp9NvofwPQ21i", "entitlementOrigin": "Steam", "metadata": {"EkRYWl6G5pjeLC9z": {}, "uC2VbpKysyWHnL9r": {}, "BCZV6jKvScY6HPWr": {}}, "origin": "Epic", "rewards": [{"currency": {"currencyCode": "qfpzqJqRIwJeZcX1", "namespace": "UOa6VSz13JajbiFU"}, "item": {"itemId": "XG3StRCFbfm0gSnm", "itemName": "VE9uVmwcotSY8hGq", "itemSku": "ZzcTxVmOpnTgdgKM", "itemType": "j4qxoOEY0yuVga3V"}, "quantity": 85, "type": "CURRENCY"}, {"currency": {"currencyCode": "vaQb1nHD96aTUix7", "namespace": "sGbe0kKsI2bFEwth"}, "item": {"itemId": "b6Fmp9itbVYrwPJg", "itemName": "5uCgaQX3AObdECRX", "itemSku": "lmU5DKwob1IigLQu", "itemType": "VR0Z3yi9x4SqHwbo"}, "quantity": 45, "type": "CURRENCY"}, {"currency": {"currencyCode": "R5SzU8II3urt92Tb", "namespace": "uaDHmRQA5d9peCTd"}, "item": {"itemId": "9GMZ0uRVna3NpAis", "itemName": "vRiXOBoAaoyLgQ5D", "itemSku": "z3Nct96BND7H8VLt", "itemType": "W0EciTqoSqw0djtn"}, "quantity": 73, "type": "ITEM"}], "source": "IAP_CHARGEBACK_REVERSED", "transactionId": "lYtnWWZ5nCJPzNEd"}' \
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
    --userId 'uaE83KOCvWz0SXN8' \
    --body '{"transactionId": "EWdQ9wFwNK32lkaP"}' \
    > test.out 2>&1
eval_tap $? 506 'V2PublicFulfillAppleIAPItem' test.out

#- 507 BulkFulfillItemsV3
samples/cli/sample-apps Platform bulkFulfillItemsV3 \
    --namespace $AB_NAMESPACE \
    --userId '5udXD4Q2ppm700O3' \
    --body '[{"items": [{"duration": 17, "endDate": "1977-01-21T00:00:00Z", "entitlementCollectionId": "gSzYyil8bEchvPsX", "entitlementOrigin": "Nintendo", "itemId": "LLGxKxz6sjqJimZp", "itemSku": "JhCpyiPvqSZnSTJ8", "language": "6Xng8K35kigJwLr0", "metadata": {"wkGae21jWoAFfjZ3": {}, "rKTX401RUuNAtZby": {}, "172GkJaE09ASJZSS": {}}, "orderNo": "sTZUzBmVgRH8zTfO", "origin": "Xbox", "quantity": 24, "region": "5swPNV6pLdI6H9V1", "source": "IAP_CHARGEBACK_REVERSED", "startDate": "1987-07-01T00:00:00Z", "storeId": "22to7Vp08Vh9qmZR"}, {"duration": 23, "endDate": "1975-12-22T00:00:00Z", "entitlementCollectionId": "eHp7SmWW04qnAgIG", "entitlementOrigin": "Other", "itemId": "gDuFceDY1FiR1iQG", "itemSku": "ralHwTm7T5xGJV54", "language": "u3qPrEEm1UltuxQm", "metadata": {"6PAcK8o9Cwcy0WDU": {}, "1f3KNmDqtxKdWjLH": {}, "domr0I5rZcfZZFl7": {}}, "orderNo": "MJMWm1dX1sxv3G1t", "origin": "IOS", "quantity": 58, "region": "YnDXa8mRhTbLZDS9", "source": "GIFT", "startDate": "1976-09-09T00:00:00Z", "storeId": "a8Ifyzq6cEdb4Co4"}, {"duration": 25, "endDate": "1993-08-01T00:00:00Z", "entitlementCollectionId": "L7O2lHZkzaJy4jnf", "entitlementOrigin": "Xbox", "itemId": "HVWcZCapT88kvFPZ", "itemSku": "JGNdgeLTChSV4lnJ", "language": "KYjiFwY3CxfFJPdM", "metadata": {"Ojgr5fbZogOr9Q9b": {}, "DzjBR36UQOG7qTPD": {}, "VL1DDK6lr9fICw7p": {}}, "orderNo": "YwXe5BmPWjAlO7Pk", "origin": "Playstation", "quantity": 77, "region": "rlOfSzyrYA86au6I", "source": "GIFT", "startDate": "1973-07-30T00:00:00Z", "storeId": "0ParrIbcC4LHBmcS"}], "transactionId": "tcH8JCrx2teF599i"}, {"items": [{"duration": 95, "endDate": "1984-05-13T00:00:00Z", "entitlementCollectionId": "ZNtblZdM4gNX6L0Y", "entitlementOrigin": "Twitch", "itemId": "4VKdGzcgFgPp9xmp", "itemSku": "CzTuGLvV8JPu7ETQ", "language": "Uv91u0I5VCKQL3OI", "metadata": {"Eoj7GNlsP28USty0": {}, "pikHeHRK4YFmVdjP": {}, "dSEInzIoYF9n3w85": {}}, "orderNo": "y74c3ij2kjkHechL", "origin": "Nintendo", "quantity": 94, "region": "0eaaHOgU60AepaRK", "source": "ORDER_REVOCATION", "startDate": "1982-06-14T00:00:00Z", "storeId": "ASsb0YmwIL5N42Rz"}, {"duration": 30, "endDate": "1982-08-19T00:00:00Z", "entitlementCollectionId": "W5787ZVG11cFlrHR", "entitlementOrigin": "Twitch", "itemId": "HdJOot9aenftEC7p", "itemSku": "42BZGptgXsC9DbWJ", "language": "3iDnOCuADwKYt1xh", "metadata": {"OQoA2nZEKB5xGz27": {}, "wDNoxbBDpz31Rtv0": {}, "M9itGSRfH8DsRyB5": {}}, "orderNo": "tL0bKHXoZFHm333p", "origin": "GooglePlay", "quantity": 63, "region": "ycGfnVZVZNgYBjbJ", "source": "SELL_BACK", "startDate": "1996-07-28T00:00:00Z", "storeId": "wtpEzaK7ZV8EAkAa"}, {"duration": 2, "endDate": "1980-01-18T00:00:00Z", "entitlementCollectionId": "hHE3BBOfXzUN4Czf", "entitlementOrigin": "Epic", "itemId": "spWP44XG8KH5R2MS", "itemSku": "PfzPVdcXWgYFTyMb", "language": "HYFv3NiWoFXOQnYA", "metadata": {"9ibirzZuMgyig7oO": {}, "7kmGS1TpfPEiRcyi": {}, "PbLUO4lpuGRBAslW": {}}, "orderNo": "Sa9fQZeipQD2tDwU", "origin": "Xbox", "quantity": 88, "region": "QeiV8V9BXprglwfF", "source": "REFERRAL_BONUS", "startDate": "1982-09-17T00:00:00Z", "storeId": "ARxfllRKvxlXr7ON"}], "transactionId": "m2at0oiCwlMh3DrD"}, {"items": [{"duration": 6, "endDate": "1988-02-10T00:00:00Z", "entitlementCollectionId": "BthTor1q8lL9NAbd", "entitlementOrigin": "Nintendo", "itemId": "b0hthPxruOUN3XDU", "itemSku": "5zWmAHSEL3n0PiX6", "language": "hh4zA4vcAPuxwzVX", "metadata": {"ejgCpBaHiRRHJKHQ": {}, "vi2VqisHMOiwNYTo": {}, "mPwuYUcZVEo4VtSK": {}}, "orderNo": "SBOaVCJlzslwnvZr", "origin": "Epic", "quantity": 66, "region": "14V74ZQIf2Tzfci7", "source": "EXPIRATION", "startDate": "1975-11-25T00:00:00Z", "storeId": "vepcL4QwWdCw8qGj"}, {"duration": 95, "endDate": "1974-05-27T00:00:00Z", "entitlementCollectionId": "THAdIQg9p2vecfdF", "entitlementOrigin": "Twitch", "itemId": "lguhTcFvCaNB5LN5", "itemSku": "42vmjnLk1xVDpVAb", "language": "NDQbZvK6nSO0BOj7", "metadata": {"aekiK1Ww6avfRWQQ": {}, "yrrNA1ByXoAgcnJ5": {}, "XOLKGojVDcGc50Xe": {}}, "orderNo": "ipDHpEEsNRIpqULr", "origin": "System", "quantity": 2, "region": "gI8bzhlgrpARQP4W", "source": "GIFT", "startDate": "1999-10-23T00:00:00Z", "storeId": "G6pKeSvPgmfJKTsf"}, {"duration": 69, "endDate": "1996-02-27T00:00:00Z", "entitlementCollectionId": "ilgh5KhiPu31bKBi", "entitlementOrigin": "System", "itemId": "cXydm4v4uHiFxrYr", "itemSku": "W2me6vNiT94vln7d", "language": "8igCDhDaRGWZ0lOx", "metadata": {"dzUlEqkvnbh9bfH5": {}, "oJMNvLxQaik1zYJh": {}, "r3k95wgAzFpX8hAa": {}}, "orderNo": "lRzPLDJVs86OzuBH", "origin": "Nintendo", "quantity": 42, "region": "Oxd9CRK7VvMeqexp", "source": "PROMOTION", "startDate": "1989-11-19T00:00:00Z", "storeId": "F6yJyAK0BgZ9EK2z"}], "transactionId": "YrWD2931eV97fiML"}]' \
    > test.out 2>&1
eval_tap $? 507 'BulkFulfillItemsV3' test.out

#- 508 FulfillItemsV3
samples/cli/sample-apps Platform fulfillItemsV3 \
    --namespace $AB_NAMESPACE \
    --transactionId 'MSnkNIYKXENYutHS' \
    --userId 'vqhO2DV6euvyGI3F' \
    --body '{"items": [{"duration": 62, "endDate": "1974-08-09T00:00:00Z", "entitlementCollectionId": "smR63TSgk4SwEhFt", "entitlementOrigin": "IOS", "itemId": "vJDfP4JN3vraagb0", "itemSku": "UBhaC0Y7hMEB3SKD", "language": "KLYkwwor9tEaxZaN", "metadata": {"rUU2pmFUbjRzLcEL": {}, "WW2sPYL4f8FHbagX": {}, "UqpYlNtOOMXiNsJQ": {}}, "orderNo": "HoiXfQGljuMVbE9O", "origin": "Other", "quantity": 34, "region": "bzF8VgAZdeABMhdk", "source": "ORDER_REVOCATION", "startDate": "1984-01-10T00:00:00Z", "storeId": "Rx2Es3ALaHQFqGnr"}, {"duration": 22, "endDate": "1998-10-09T00:00:00Z", "entitlementCollectionId": "EcMV5hAO6XcZQZ3u", "entitlementOrigin": "System", "itemId": "j1kB92MPSQMiJn7R", "itemSku": "wyat8ZsjAQqo2D8E", "language": "xOszn2IR03caA23p", "metadata": {"OK9n9vVSPqnn1cGR": {}, "1t5K7LWdRnOOZifi": {}, "LZlTY4TTNUFym8c7": {}}, "orderNo": "gxfmGW9tdx5KdVmu", "origin": "Epic", "quantity": 66, "region": "2Be2fBwihTVhNPJ4", "source": "REFERRAL_BONUS", "startDate": "1979-12-08T00:00:00Z", "storeId": "AlQqINOyaVedfpjs"}, {"duration": 96, "endDate": "1995-04-28T00:00:00Z", "entitlementCollectionId": "I4T0ZIzyL2oVrHYx", "entitlementOrigin": "GooglePlay", "itemId": "qQXvkqidE3LclMLD", "itemSku": "q0RxeYUgeijLE1P5", "language": "uNGGUXsaBYyZst1T", "metadata": {"belUM3lkrcT5ooAb": {}, "upjieShgWW141g9H": {}, "dVWxy2mCPvtMw7hq": {}}, "orderNo": "qsnigFZRfzlH6z4I", "origin": "Epic", "quantity": 39, "region": "gdOCNbcXEN4c7zoi", "source": "ACHIEVEMENT", "startDate": "1994-04-24T00:00:00Z", "storeId": "EcXY63WBoM1rBn16"}]}' \
    > test.out 2>&1
eval_tap $? 508 'FulfillItemsV3' test.out

#- 509 RetryFulfillItemsV3
samples/cli/sample-apps Platform retryFulfillItemsV3 \
    --namespace $AB_NAMESPACE \
    --transactionId 'rOSCY9p0gNJzcf9f' \
    --userId 'K5S7YGxRtCz2RdOH' \
    > test.out 2>&1
eval_tap $? 509 'RetryFulfillItemsV3' test.out

#- 510 RevokeItemsV3
samples/cli/sample-apps Platform revokeItemsV3 \
    --namespace $AB_NAMESPACE \
    --transactionId 'ePfMMKy43DGeY00f' \
    --userId 'UejsZnp66JMQ09Pc' \
    > test.out 2>&1
eval_tap $? 510 'RevokeItemsV3' test.out


rm -f "tmp.dat"

exit $EXIT_CODE