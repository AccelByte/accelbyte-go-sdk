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
echo "1..478"

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
    --id '6y3KRDruf86r8Sdz' \
    > test.out 2>&1
eval_tap $? 3 'GetFulfillmentScript' test.out

#- 4 CreateFulfillmentScript
samples/cli/sample-apps Platform createFulfillmentScript \
    --id 'bex5D8G5eplJjzEK' \
    --body '{"grantDays": "eh8JBGYTGlLRIPxl"}' \
    > test.out 2>&1
eval_tap $? 4 'CreateFulfillmentScript' test.out

#- 5 DeleteFulfillmentScript
samples/cli/sample-apps Platform deleteFulfillmentScript \
    --id '30EjApsXERZVjiE8' \
    > test.out 2>&1
eval_tap $? 5 'DeleteFulfillmentScript' test.out

#- 6 UpdateFulfillmentScript
samples/cli/sample-apps Platform updateFulfillmentScript \
    --id 'BDB8qz6NxqlkkrnC' \
    --body '{"grantDays": "mVD40Ip2S2HtQLPE"}' \
    > test.out 2>&1
eval_tap $? 6 'UpdateFulfillmentScript' test.out

#- 7 ListItemTypeConfigs
samples/cli/sample-apps Platform listItemTypeConfigs \
    > test.out 2>&1
eval_tap $? 7 'ListItemTypeConfigs' test.out

#- 8 CreateItemTypeConfig
samples/cli/sample-apps Platform createItemTypeConfig \
    --body '{"clazz": "S1QIDDR0ZR1V5wzX", "dryRun": true, "fulfillmentUrl": "0wH52vnERtNII2xM", "itemType": "MEDIA", "purchaseConditionUrl": "p57BE7fG2TQcXihJ"}' \
    > test.out 2>&1
eval_tap $? 8 'CreateItemTypeConfig' test.out

#- 9 SearchItemTypeConfig
samples/cli/sample-apps Platform searchItemTypeConfig \
    --clazz '6Gfg90kAtsjmcaiq' \
    --itemType 'APP' \
    > test.out 2>&1
eval_tap $? 9 'SearchItemTypeConfig' test.out

#- 10 GetItemTypeConfig
samples/cli/sample-apps Platform getItemTypeConfig \
    --id 'eCLxMAmHHcooKo3p' \
    > test.out 2>&1
eval_tap $? 10 'GetItemTypeConfig' test.out

#- 11 UpdateItemTypeConfig
samples/cli/sample-apps Platform updateItemTypeConfig \
    --id 'UUM2XN9ct46sGBhh' \
    --body '{"clazz": "9ArWY3oDaH2gn0EP", "dryRun": false, "fulfillmentUrl": "sWR1I65IQUV7QLL4", "purchaseConditionUrl": "VUpSPK3lro55bNDf"}' \
    > test.out 2>&1
eval_tap $? 11 'UpdateItemTypeConfig' test.out

#- 12 DeleteItemTypeConfig
samples/cli/sample-apps Platform deleteItemTypeConfig \
    --id '2ppyhk5JclsiAuDo' \
    > test.out 2>&1
eval_tap $? 12 'DeleteItemTypeConfig' test.out

#- 13 QueryCampaigns
samples/cli/sample-apps Platform queryCampaigns \
    --namespace $AB_NAMESPACE \
    --limit '13' \
    --name 'tlUGYnXyyUD7cFrO' \
    --offset '82' \
    --tag 'Mtnkd4XJoSphn5vG' \
    > test.out 2>&1
eval_tap $? 13 'QueryCampaigns' test.out

#- 14 CreateCampaign
samples/cli/sample-apps Platform createCampaign \
    --namespace $AB_NAMESPACE \
    --body '{"description": "aZRAzvjlu1FQVY8l", "discountConfig": {"categories": [{"categoryPath": "t4Bp9YG10tKyjyxC", "includeSubCategories": false}, {"categoryPath": "o9ahYh4vGyAqW8Ms", "includeSubCategories": false}, {"categoryPath": "gXaExksZtAuyqzUd", "includeSubCategories": false}], "currencyCode": "6SvxXYrnRrOHwel4", "currencyNamespace": "5fa4ategQPyi4apI", "discountAmount": 57, "discountPercentage": 92, "discountType": "AMOUNT", "items": [{"itemId": "8e96piFK4xjWbJ98", "itemName": "HeSOIY5d0n2D5e6q"}, {"itemId": "HoI74pYTb9RHiECv", "itemName": "kY44zrw3NLLTXBeV"}, {"itemId": "cbrajacy04S0dukY", "itemName": "5Am7IaU9jvu8f1MF"}], "restrictType": "ITEMS_AND_CATEGORIES", "stackable": true}, "items": [{"extraSubscriptionDays": 79, "itemId": "7llZhOlq1XLaoaAG", "itemName": "aBzXnbQ3zGvVUggq", "quantity": 4}, {"extraSubscriptionDays": 8, "itemId": "hBfiTRPCdk7sGnrm", "itemName": "SSoGVVYmvNH6qhdl", "quantity": 71}, {"extraSubscriptionDays": 8, "itemId": "FUfjuOUO6dFtmMZT", "itemName": "GBf9zro2GkIS7njG", "quantity": 25}], "maxRedeemCountPerCampaignPerUser": 69, "maxRedeemCountPerCode": 61, "maxRedeemCountPerCodePerUser": 14, "maxSaleCount": 99, "name": "zXSAGonngqmJNrkg", "redeemEnd": "1990-07-19T00:00:00Z", "redeemStart": "1973-03-05T00:00:00Z", "redeemType": "ITEM", "status": "INACTIVE", "tags": ["WSL3e2Ffmo2FlZmJ", "CtotSl9cuxQsu0NN", "48f4Ox0RqYcMiaoX"], "type": "REDEMPTION"}' \
    > test.out 2>&1
eval_tap $? 14 'CreateCampaign' test.out

#- 15 GetCampaign
samples/cli/sample-apps Platform getCampaign \
    --campaignId '1Dk7sOnqjBhYEEB2' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 15 'GetCampaign' test.out

#- 16 UpdateCampaign
samples/cli/sample-apps Platform updateCampaign \
    --campaignId 'CNLJlAxtSKW1xY6T' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "jhqYDb29liTbN27i", "discountConfig": {"categories": [{"categoryPath": "1hqKZTFIv4S3Y0ej", "includeSubCategories": false}, {"categoryPath": "pNijvSajgPghPATk", "includeSubCategories": true}, {"categoryPath": "MkjirKLJofAyjZbl", "includeSubCategories": false}], "currencyCode": "Qx5UPoXeBW56xowJ", "currencyNamespace": "2LXHzhyZZcqe7c90", "discountAmount": 2, "discountPercentage": 0, "discountType": "AMOUNT", "items": [{"itemId": "2KCKnFXFPIJkFqsU", "itemName": "k1TL45CtGy67BmmO"}, {"itemId": "KqvEi3Q135RhFft0", "itemName": "PQiDMdeyCva7fBCM"}, {"itemId": "I15npDXCF5q7Qijb", "itemName": "xQM5NpPo6RaekPCt"}], "restrictType": "NONE", "stackable": true}, "items": [{"extraSubscriptionDays": 72, "itemId": "nAPX3XJG4m155zoO", "itemName": "LaDLMzHebPYMhYt7", "quantity": 44}, {"extraSubscriptionDays": 27, "itemId": "kfrejzZI3hUW8AKy", "itemName": "DZyWzH8dR0jqgUSx", "quantity": 67}, {"extraSubscriptionDays": 53, "itemId": "y7tKu0eIvrsZehJU", "itemName": "D8bX5z2bXxXhn2wT", "quantity": 41}], "maxRedeemCountPerCampaignPerUser": 46, "maxRedeemCountPerCode": 88, "maxRedeemCountPerCodePerUser": 55, "maxSaleCount": 94, "name": "TzrvjnFcgSkbw7ij", "redeemEnd": "1998-02-06T00:00:00Z", "redeemStart": "1978-05-07T00:00:00Z", "redeemType": "ITEM", "status": "INACTIVE", "tags": ["cBP5cK45AFnVnt24", "zXExOtCSUXhgm0Zl", "ZctmHKdzOr5tFHVN"]}' \
    > test.out 2>&1
eval_tap $? 16 'UpdateCampaign' test.out

#- 17 RenameBatch
samples/cli/sample-apps Platform renameBatch \
    --campaignId 'SJksvvXu3burhK55' \
    --namespace $AB_NAMESPACE \
    --body '{"newName": "1kvrYnK41jKYxSPS", "oldName": "z2wZqk1xLuaxdhb2"}' \
    > test.out 2>&1
eval_tap $? 17 'RenameBatch' test.out

#- 18 QueryCampaignBatchNames
samples/cli/sample-apps Platform queryCampaignBatchNames \
    --campaignId '7sDbEqf4X3tOMTPH' \
    --namespace $AB_NAMESPACE \
    --batchName 'OEyCO4jOZTy6RBaT' \
    --limit '71' \
    > test.out 2>&1
eval_tap $? 18 'QueryCampaignBatchNames' test.out

#- 19 GetCampaignDynamic
samples/cli/sample-apps Platform getCampaignDynamic \
    --campaignId '1KGMOShKXAUEitW4' \
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
    --body '{"enableInventoryCheck": false}' \
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
    --body '{"appConfig": {"appName": "aG8D6j0Vrv9SFvVf"}, "customConfig": {"connectionType": "TLS", "grpcServerAddress": "a9FVDu0ZaGh3vGUx"}, "extendType": "CUSTOM"}' \
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
    --body '{"appConfig": {"appName": "Apnh5jQhDsxiSAtz"}, "customConfig": {"connectionType": "INSECURE", "grpcServerAddress": "yNI1kH43lDdmaOvi"}, "extendType": "CUSTOM"}' \
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
    --storeId 'KZIBO9OfVvrHeipa' \
    > test.out 2>&1
eval_tap $? 31 'GetRootCategories' test.out

#- 32 CreateCategory
samples/cli/sample-apps Platform createCategory \
    --namespace $AB_NAMESPACE \
    --storeId 'aO2La7xMJLNWwGoM' \
    --body '{"categoryPath": "kmpBZqULUhHrmHtC", "localizationDisplayNames": {"zbRhelkrAZUpsUsi": "gl6W7zb8VaLG9Rwl", "8oDwMF6MCL5ytSpu": "GDFOlNqqmbAtjmFf", "2virUwzXeddGOGGq": "9jhsWmtVHhGewRRe"}}' \
    > test.out 2>&1
eval_tap $? 32 'CreateCategory' test.out

#- 33 ListCategoriesBasic
samples/cli/sample-apps Platform listCategoriesBasic \
    --namespace $AB_NAMESPACE \
    --storeId 'CyZM75nseC9P05RS' \
    > test.out 2>&1
eval_tap $? 33 'ListCategoriesBasic' test.out

#- 34 GetCategory
samples/cli/sample-apps Platform getCategory \
    --categoryPath 'yFPkZjxxGq7wyedl' \
    --namespace $AB_NAMESPACE \
    --storeId 'Q17cL0r22HJS7UXg' \
    > test.out 2>&1
eval_tap $? 34 'GetCategory' test.out

#- 35 UpdateCategory
samples/cli/sample-apps Platform updateCategory \
    --categoryPath 'cwy2S6xXFScrLBtC' \
    --namespace $AB_NAMESPACE \
    --storeId 'OqWHLAwFM8qYH8rJ' \
    --body '{"localizationDisplayNames": {"eDCbtup4xzX3XcQN": "UoegFTa58oljMzrc", "lYALx7AlD8BaNOXo": "wYDNjaShUPYRyVfQ", "gYAyMXLByQ2ekd93": "VtaodMuy9KrBG2Eq"}}' \
    > test.out 2>&1
eval_tap $? 35 'UpdateCategory' test.out

#- 36 DeleteCategory
samples/cli/sample-apps Platform deleteCategory \
    --categoryPath 'rnKHsTJRRgOk5ZSg' \
    --namespace $AB_NAMESPACE \
    --storeId '7uFGCjLY09VUYc9r' \
    > test.out 2>&1
eval_tap $? 36 'DeleteCategory' test.out

#- 37 GetChildCategories
samples/cli/sample-apps Platform getChildCategories \
    --categoryPath 'iVqhZVrik0CdV8Ox' \
    --namespace $AB_NAMESPACE \
    --storeId 'EQlg9s1rYxZCD9iN' \
    > test.out 2>&1
eval_tap $? 37 'GetChildCategories' test.out

#- 38 GetDescendantCategories
samples/cli/sample-apps Platform getDescendantCategories \
    --categoryPath 'hdLqyMDuBhEB97rH' \
    --namespace $AB_NAMESPACE \
    --storeId '8IGv9rjDnIl0xdro' \
    > test.out 2>&1
eval_tap $? 38 'GetDescendantCategories' test.out

#- 39 QueryCodes
samples/cli/sample-apps Platform queryCodes \
    --campaignId 'd8egXPJCV9mQEOyO' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --batchName '0I88lGospy2BlkQ6' \
    --batchNo '[61, 69, 92]' \
    --code 'P6c68mjm0gjukTWl' \
    --limit '31' \
    --offset '79' \
    --withBatchName 'true' \
    > test.out 2>&1
eval_tap $? 39 'QueryCodes' test.out

#- 40 CreateCodes
samples/cli/sample-apps Platform createCodes \
    --campaignId 'pZrS74D9Eekhh3Dt' \
    --namespace $AB_NAMESPACE \
    --body '{"batchName": "7ihzXg0N3zspqo5S", "codeValue": "cRVC7kdRELObMlhH", "quantity": 90}' \
    > test.out 2>&1
eval_tap $? 40 'CreateCodes' test.out

#- 41 Download
samples/cli/sample-apps Platform download \
    --campaignId 'rFOsLGxOahAM513g' \
    --namespace $AB_NAMESPACE \
    --batchName 'YvVNH17pUHDSkX7f' \
    --batchNo '[40, 29, 32]' \
    --withBatchName 'false' \
    > test.out 2>&1
eval_tap $? 41 'Download' test.out

#- 42 BulkDisableCodes
samples/cli/sample-apps Platform bulkDisableCodes \
    --campaignId 'gWHcg7SVPIsYTmib' \
    --namespace $AB_NAMESPACE \
    --batchName 'ouIGbPQPctVS3yOq' \
    --batchNo '[21, 58, 28]' \
    > test.out 2>&1
eval_tap $? 42 'BulkDisableCodes' test.out

#- 43 BulkEnableCodes
samples/cli/sample-apps Platform bulkEnableCodes \
    --campaignId 'mGdwzAzPrBrD6JPw' \
    --namespace $AB_NAMESPACE \
    --batchName '4H12J1lSxNsF4m6F' \
    --batchNo '[92, 100, 58]' \
    > test.out 2>&1
eval_tap $? 43 'BulkEnableCodes' test.out

#- 44 QueryRedeemHistory
samples/cli/sample-apps Platform queryRedeemHistory \
    --campaignId 'hFn8mnmwGGw8faKh' \
    --namespace $AB_NAMESPACE \
    --code 'uDjnAlSoVA7y6c2b' \
    --limit '0' \
    --offset '78' \
    --userId 'shDnchHtOGMkNfev' \
    > test.out 2>&1
eval_tap $? 44 'QueryRedeemHistory' test.out

#- 45 GetCode
samples/cli/sample-apps Platform getCode \
    --code '4q3o94Y7d0nqmyRp' \
    --namespace $AB_NAMESPACE \
    --redeemable 'true' \
    --withBatchName 'false' \
    > test.out 2>&1
eval_tap $? 45 'GetCode' test.out

#- 46 DisableCode
samples/cli/sample-apps Platform disableCode \
    --code 'iQFwfMipiRIbyhVk' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 46 'DisableCode' test.out

#- 47 EnableCode
samples/cli/sample-apps Platform enableCode \
    --code '9dDa1bOJQuJXJZQN' \
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
    --body '{"currencyCode": "nlcqH3PIfzK9HhNJ", "currencySymbol": "1L0WnFP3FgmhPbzw", "currencyType": "VIRTUAL", "decimals": 8, "localizationDescriptions": {"HGU8CeV9N3ANHyIq": "hqzySIfivn8ahzIP", "sZfVay7wWWtfQ250": "uYn0EECLpZ0nwHD9", "THrbL9z4noXlI32s": "iXr6IYJILz2suJ3H"}}' \
    > test.out 2>&1
eval_tap $? 52 'CreateCurrency' test.out

#- 53 UpdateCurrency
samples/cli/sample-apps Platform updateCurrency \
    --currencyCode 'xISLmZK6jCHZCNdS' \
    --namespace $AB_NAMESPACE \
    --body '{"localizationDescriptions": {"ocR5gbb01rTscNSW": "5DQ92mibBmsYNtVK", "uYfHtB1M6i59lWfS": "fQ5Yjs8Fx0xxonYS", "vXoiJH6ratmeKno7": "MbyuYHSC2DGS3JOi"}}' \
    > test.out 2>&1
eval_tap $? 53 'UpdateCurrency' test.out

#- 54 DeleteCurrency
samples/cli/sample-apps Platform deleteCurrency \
    --currencyCode 'vV81nC046oEnYKnz' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 54 'DeleteCurrency' test.out

#- 55 GetCurrencyConfig
samples/cli/sample-apps Platform getCurrencyConfig \
    --currencyCode 'wK5FabLcr6vl9gqM' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 55 'GetCurrencyConfig' test.out

#- 56 GetCurrencySummary
samples/cli/sample-apps Platform getCurrencySummary \
    --currencyCode '0nzekcbGc3Fv6XdD' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 56 'GetCurrencySummary' test.out

#- 57 GetDLCItemConfig
samples/cli/sample-apps Platform getDLCItemConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 57 'GetDLCItemConfig' test.out

#- 58 UpdateDLCItemConfig
samples/cli/sample-apps Platform updateDLCItemConfig \
    --namespace $AB_NAMESPACE \
    --body '{"data": [{"id": "Erl0kEPsjGuyIYqG", "rewards": [{"currency": {"currencyCode": "QfzpS8hz4e5aSbMB", "namespace": "C8b848cP6Ma5neLa"}, "item": {"itemId": "GnVXmmCUoqLBjaDp", "itemName": "MySgSlqk3MZeaGjC", "itemSku": "dz4pmnaAge1jWbjg", "itemType": "OMRk7BIx9Ir45JgP"}, "quantity": 30, "type": "ITEM"}, {"currency": {"currencyCode": "XHAygMBOb1UDDcrn", "namespace": "bDSWkp4ON2EtUBht"}, "item": {"itemId": "FDuIX0zFnhuZb7EI", "itemName": "PKQrieHhSzhfjZwH", "itemSku": "MbzoKEFqF5twLXUV", "itemType": "A5CNGM4cuL1QfzEw"}, "quantity": 41, "type": "ITEM"}, {"currency": {"currencyCode": "K1IrjGPwpXvQnTMP", "namespace": "aMu4HV07MYfk1nB5"}, "item": {"itemId": "SdanKfs6tMsitKYx", "itemName": "K4w4VuZOd7tvg8MG", "itemSku": "R2qphyNHzLMgZS1v", "itemType": "iyRlupKDuNzcDqL6"}, "quantity": 46, "type": "CURRENCY"}]}, {"id": "pGjIxYS8dIz1kDbw", "rewards": [{"currency": {"currencyCode": "TOJ5aOGMmapXsFVp", "namespace": "RsAmVWfz47O6UGDr"}, "item": {"itemId": "fGHEwiEVIYhlU4fJ", "itemName": "BDTlx3r0nnz01kGz", "itemSku": "1bamM1ItZg0piKm4", "itemType": "PFGXCNA2GSzZOQCF"}, "quantity": 17, "type": "CURRENCY"}, {"currency": {"currencyCode": "J5UbJrT3nvmu5d2u", "namespace": "R0Vn6DSdihYPJ75k"}, "item": {"itemId": "orgRd1O771e7exED", "itemName": "40q3ZiMM41xZBli8", "itemSku": "1ZP6Syc6zEnoEav8", "itemType": "u3vKqOKNq8xUS5ew"}, "quantity": 80, "type": "ITEM"}, {"currency": {"currencyCode": "hYSi32mx69Rl765t", "namespace": "jKqxj77d7NbfD8nm"}, "item": {"itemId": "VjO1WxNaVw3DUQhw", "itemName": "OljTD2PhtjlW0BWP", "itemSku": "MTnxFLTTW1SFynoD", "itemType": "Dk8mLP8xZPRPZ1h2"}, "quantity": 49, "type": "CURRENCY"}]}, {"id": "eT7sUjM5NqBXaulQ", "rewards": [{"currency": {"currencyCode": "sXWRwIKVmhyS5Wif", "namespace": "wGfG8nRKWU0rya5J"}, "item": {"itemId": "b5U6T4rk4dP1HFvw", "itemName": "mLB97P73RrcbvwRG", "itemSku": "w7iiBhYhMOF2SYA2", "itemType": "brs4msmkivYpqmgo"}, "quantity": 38, "type": "CURRENCY"}, {"currency": {"currencyCode": "XFQKnXDMkr5Cz7P0", "namespace": "SxuhvyJymC5fPHzM"}, "item": {"itemId": "kcvhXPdK8cpmiiJP", "itemName": "DUXyNIjmVs3AbaJx", "itemSku": "mmeOQXfKl1d3Li05", "itemType": "ukbADe7Cy6VQ2aIn"}, "quantity": 95, "type": "CURRENCY"}, {"currency": {"currencyCode": "MZ9D40PfJyKS4IP8", "namespace": "SbM6ncBD2w0LffT0"}, "item": {"itemId": "h7anks2idp7aBnHu", "itemName": "4VwYwHemPznuosPH", "itemSku": "TXjO5rGHPTmONusn", "itemType": "TRqBEMoojJDafz6P"}, "quantity": 11, "type": "CURRENCY"}]}]}' \
    > test.out 2>&1
eval_tap $? 58 'UpdateDLCItemConfig' test.out

#- 59 DeleteDLCItemConfig
samples/cli/sample-apps Platform deleteDLCItemConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 59 'DeleteDLCItemConfig' test.out

#- 60 GetPlatformDLCConfig
samples/cli/sample-apps Platform getPlatformDLCConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 60 'GetPlatformDLCConfig' test.out

#- 61 UpdatePlatformDLCConfig
samples/cli/sample-apps Platform updatePlatformDLCConfig \
    --namespace $AB_NAMESPACE \
    --body '{"data": [{"platform": "XBOX", "platformDlcIdMap": {"VNk59F7RbKIrxukr": "l6hXWpJAl7FaSwVr", "NBQifUZGRz7OfUDa": "qZpC0zWyX5qJIZUc", "PTIT9igcOPj9AAEB": "bYnED2l9AfSyqPKb"}}, {"platform": "PSN", "platformDlcIdMap": {"ADEJiOS8HLISRBDE": "Ad9Qxl8cDTnfxO2N", "4biTYB2WLsqeTSv1": "14LmXCC1wmxo6n8E", "pfKmktPhZC0mtR8F": "64NVmxsF0R5AuEtf"}}, {"platform": "STEAM", "platformDlcIdMap": {"aCMUzkm11x8nLCPQ": "ird4FTUU3sCwiqgU", "dgfYEN7Zplcwyd3e": "9Rt9hPWNuWUmujVS", "E4PygcXD1mbf7rBc": "CiStXmtj7NKqusBb"}}]}' \
    > test.out 2>&1
eval_tap $? 61 'UpdatePlatformDLCConfig' test.out

#- 62 DeletePlatformDLCConfig
samples/cli/sample-apps Platform deletePlatformDLCConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 62 'DeletePlatformDLCConfig' test.out

#- 63 QueryEntitlements1
samples/cli/sample-apps Platform queryEntitlements1 \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --appType 'GAME' \
    --entitlementClazz 'SUBSCRIPTION' \
    --entitlementName '3MdUlvR8SwBJEotm' \
    --itemId '["fr3PLmgP2y9S4Efa", "KVvy5M94ptTVJflF", "2Bk9E0ugVq4P0WZH"]' \
    --limit '7' \
    --offset '38' \
    --origin 'Epic' \
    --userId 'azukZpoe6I1eQRDj' \
    > test.out 2>&1
eval_tap $? 63 'QueryEntitlements1' test.out

#- 64 QueryEntitlements
samples/cli/sample-apps Platform queryEntitlements \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --itemIds '["vMv2EUuKIpqUsTk9", "ANvbjRAEhrfwoZSS", "oUv6bJQ2J2OxNfEJ"]' \
    --limit '48' \
    --offset '65' \
    > test.out 2>&1
eval_tap $? 64 'QueryEntitlements' test.out

#- 65 EnableEntitlementOriginFeature
samples/cli/sample-apps Platform enableEntitlementOriginFeature \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 65 'EnableEntitlementOriginFeature' test.out

#- 66 GetEntitlementConfigInfo
samples/cli/sample-apps Platform getEntitlementConfigInfo \
    --namespace $AB_NAMESPACE \
    --withoutCache 'true' \
    > test.out 2>&1
eval_tap $? 66 'GetEntitlementConfigInfo' test.out

#- 67 GrantEntitlements
samples/cli/sample-apps Platform grantEntitlements \
    --namespace $AB_NAMESPACE \
    --body '{"entitlementGrantList": [{"collectionId": "4IEFawuPcz6xWlo6", "endDate": "1994-11-19T00:00:00Z", "grantedCode": "nuwIYT4Y6f6TmtKl", "itemId": "6ebgHEMnUfZtLPCr", "itemNamespace": "To8GLvF8zamoF2Qj", "language": "LChx-no", "metadata": {"Y5fq81fg1HhoYqlw": {}, "u0nSlwuf2jADOs9M": {}, "sOEE11nL8MU9tepZ": {}}, "origin": "Nintendo", "quantity": 7, "region": "RuEVpIHiAIRgF9E1", "source": "GIFT", "startDate": "1980-06-23T00:00:00Z", "storeId": "hVMzQxPuCYshTbfl"}, {"collectionId": "3mKSoEYcQzLjYFTR", "endDate": "1977-05-12T00:00:00Z", "grantedCode": "ue4YofVNRsNOcSAQ", "itemId": "URKLnf0QS0PdKV5d", "itemNamespace": "wVygN4rMos56NZqt", "language": "JVEr", "metadata": {"LRIzFStkk69MdtXe": {}, "daY2XDrjKB9wCpA2": {}, "KUee9osTLq0MFqVn": {}}, "origin": "Playstation", "quantity": 55, "region": "KSoFTz2IkWQnHyBV", "source": "REWARD", "startDate": "1989-07-13T00:00:00Z", "storeId": "rxpmESvTmzzluMuh"}, {"collectionId": "H79voSur5LDbnL7t", "endDate": "1994-07-29T00:00:00Z", "grantedCode": "VlMyEbiFpHL8o28c", "itemId": "QVLgEwYCoRaiYN4P", "itemNamespace": "d8L1JWRjBqtzP3M1", "language": "kz", "metadata": {"BvEEJILV0WufT3d8": {}, "X97aAbjnQpfxvfT9": {}, "NgZlatyTqXBChvvR": {}}, "origin": "Oculus", "quantity": 69, "region": "xpnb7tTr3uPVMnXM", "source": "REWARD", "startDate": "1991-03-16T00:00:00Z", "storeId": "iNZsE0emSjxeID3o"}], "userIds": ["pYohpcpnhLHap1fH", "rOwS6rKFWfCIqLaJ", "pLt9XqC2nUhbuU3J"]}' \
    > test.out 2>&1
eval_tap $? 67 'GrantEntitlements' test.out

#- 68 RevokeEntitlements
samples/cli/sample-apps Platform revokeEntitlements \
    --namespace $AB_NAMESPACE \
    --body '["QGSK70NqrXHTsSpu", "JxiZGGFcxlTjGIHE", "0kuqNIdKNaGv4xYq"]' \
    > test.out 2>&1
eval_tap $? 68 'RevokeEntitlements' test.out

#- 69 GetEntitlement
samples/cli/sample-apps Platform getEntitlement \
    --entitlementId 'SCvO8vbZjSaf6BUi' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 69 'GetEntitlement' test.out

#- 70 QueryFulfillmentHistories
samples/cli/sample-apps Platform queryFulfillmentHistories \
    --namespace $AB_NAMESPACE \
    --limit '72' \
    --offset '32' \
    --status 'SUCCESS' \
    --userId 'VjylI8L7fd2BjusB' \
    > test.out 2>&1
eval_tap $? 70 'QueryFulfillmentHistories' test.out

#- 71 QueryIAPClawbackHistory
samples/cli/sample-apps Platform queryIAPClawbackHistory \
    --namespace $AB_NAMESPACE \
    --endTime 'WLvapPXcb0lFTEao' \
    --eventType 'CHARGEBACK' \
    --externalOrderId '7FhpWZANsGZaa0KH' \
    --limit '2' \
    --offset '94' \
    --startTime 'IfOAJmfR5g4m74Fs' \
    --status 'FAIL' \
    --userId '8GGLBC1p8JbBn0MY' \
    > test.out 2>&1
eval_tap $? 71 'QueryIAPClawbackHistory' test.out

#- 72 MockPlayStationStreamEvent
samples/cli/sample-apps Platform mockPlayStationStreamEvent \
    --namespace $AB_NAMESPACE \
    --body '{"body": {"account": "kgYIA3g93B8g1EdN", "additionalData": {"entitlement": [{"clientTransaction": [{"amountConsumed": 19, "clientTransactionId": "rQOjJqNVFIPIfD1J"}, {"amountConsumed": 5, "clientTransactionId": "OfkBDBHrXuieAF1p"}, {"amountConsumed": 69, "clientTransactionId": "omsqG9Fp0FyQ9sbx"}], "entitlementId": "eGI5r6V1Idg05PBp", "usageCount": 59}, {"clientTransaction": [{"amountConsumed": 99, "clientTransactionId": "Cik7BldHPdE2BhUy"}, {"amountConsumed": 52, "clientTransactionId": "LtzfPIaI3FyPNWaz"}, {"amountConsumed": 15, "clientTransactionId": "gki5JtVGHyAdTvrf"}], "entitlementId": "PH2h8EWQe7yzi3ns", "usageCount": 81}, {"clientTransaction": [{"amountConsumed": 95, "clientTransactionId": "gNWSzd1sNFF9jdiA"}, {"amountConsumed": 9, "clientTransactionId": "dqdUdsSmPdsIMlZa"}, {"amountConsumed": 63, "clientTransactionId": "ASW10GmXYJnj1AUT"}], "entitlementId": "PUfkhule7lliCVG8", "usageCount": 93}], "purpose": "Iyt4OEqYGlPcOf7z"}, "originalTitleName": "9fscLzajiS4OvByK", "paymentProductSKU": "2JB2o55nQFy98biR", "purchaseDate": "csH9eI5Jd9gLO1ps", "sourceOrderItemId": "NREKXRQIAERucRpl", "titleName": "WwteatflYaMenQIf"}, "eventDomain": "HIbmiX6R2fCttuTz", "eventSource": "L1fhmzKi6n1IbFKU", "eventType": "PJLDoPCsDCALSazG", "eventVersion": 85, "id": "XffjSnsIx2i3o9ui", "timestamp": "gfr5jnEtRoe7t66W"}' \
    > test.out 2>&1
eval_tap $? 72 'MockPlayStationStreamEvent' test.out

#- 73 GetAppleIAPConfig
samples/cli/sample-apps Platform getAppleIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 73 'GetAppleIAPConfig' test.out

#- 74 UpdateAppleIAPConfig
samples/cli/sample-apps Platform updateAppleIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"appAppleId": 59, "bundleId": "I5uDWJczrM60XjRH", "issuerId": "ZO4eKc5bo9kIarym", "keyId": "MuUubsSfvimWE6fn", "password": "D5J1DaHohwsWv3jG", "version": "V2"}' \
    > test.out 2>&1
eval_tap $? 74 'UpdateAppleIAPConfig' test.out

#- 75 DeleteAppleIAPConfig
samples/cli/sample-apps Platform deleteAppleIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 75 'DeleteAppleIAPConfig' test.out

#- 76 UpdateAppleP8File
samples/cli/sample-apps Platform updateAppleP8File \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 76 'UpdateAppleP8File' test.out

#- 77 GetEpicGamesIAPConfig
samples/cli/sample-apps Platform getEpicGamesIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 77 'GetEpicGamesIAPConfig' test.out

#- 78 UpdateEpicGamesIAPConfig
samples/cli/sample-apps Platform updateEpicGamesIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"sandboxId": "nUduMWxNXnQycpKr"}' \
    > test.out 2>&1
eval_tap $? 78 'UpdateEpicGamesIAPConfig' test.out

#- 79 DeleteEpicGamesIAPConfig
samples/cli/sample-apps Platform deleteEpicGamesIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 79 'DeleteEpicGamesIAPConfig' test.out

#- 80 GetGoogleIAPConfig
samples/cli/sample-apps Platform getGoogleIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 80 'GetGoogleIAPConfig' test.out

#- 81 UpdateGoogleIAPConfig
samples/cli/sample-apps Platform updateGoogleIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"applicationName": "oRuoLLq93rg8fZzr", "notificationTokenAudience": "BVWvGXRGJJ0b2jfc", "notificationTokenEmail": "iUOf8DqYwFrn5V4O", "packageName": "9gOi0n6S2rLWb5qt", "serviceAccountId": "H1CkqvSlt4UZFaZd"}' \
    > test.out 2>&1
eval_tap $? 81 'UpdateGoogleIAPConfig' test.out

#- 82 DeleteGoogleIAPConfig
samples/cli/sample-apps Platform deleteGoogleIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 82 'DeleteGoogleIAPConfig' test.out

#- 83 UpdateGoogleP12File
samples/cli/sample-apps Platform updateGoogleP12File \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 83 'UpdateGoogleP12File' test.out

#- 84 GetIAPItemConfig
samples/cli/sample-apps Platform getIAPItemConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 84 'GetIAPItemConfig' test.out

#- 85 UpdateIAPItemConfig
samples/cli/sample-apps Platform updateIAPItemConfig \
    --namespace $AB_NAMESPACE \
    --body '{"data": [{"itemIdentity": "yABoUmCt4h9qTDvt", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"nWoYoYAQ0mHJknjC": "UX0u4Y61d8mjs8ql", "7JKDG0epczut94Gw": "y5uzyTDXb8jYahZ4", "cLUXCumeCWFs3pZm": "jXT5DhpwbGVMXhHa"}}, {"itemIdentity": "RUfQCJDLthHwv88L", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"NdLkuWkQvixslXCe": "t9hRKklOFLgkD2Pm", "WTId9TSZMW6OBJXX": "Q6aoAuodxHbgLrMI", "QGY2ziaQxqHx9aHe": "zce3iZfzgAkbwHNH"}}, {"itemIdentity": "U9KtrbMG6kHkEJ1q", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"HHptgMZ1xNnKBwa2": "5FMmcVWJCMZSyh6F", "sFw9P1YqRHBwpn9U": "ohRdDenAu2W6D5tl", "oVHeFBU0kxDbJjiH": "5gF559TDaok2eibN"}}]}' \
    > test.out 2>&1
eval_tap $? 85 'UpdateIAPItemConfig' test.out

#- 86 DeleteIAPItemConfig
samples/cli/sample-apps Platform deleteIAPItemConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 86 'DeleteIAPItemConfig' test.out

#- 87 GetOculusIAPConfig
samples/cli/sample-apps Platform getOculusIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 87 'GetOculusIAPConfig' test.out

#- 88 UpdateOculusIAPConfig
samples/cli/sample-apps Platform updateOculusIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"appId": "Fk0bRawULWZMDVCB", "appSecret": "r3icfkjRICqCpoXt"}' \
    > test.out 2>&1
eval_tap $? 88 'UpdateOculusIAPConfig' test.out

#- 89 DeleteOculusIAPConfig
samples/cli/sample-apps Platform deleteOculusIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 89 'DeleteOculusIAPConfig' test.out

#- 90 GetPlayStationIAPConfig
samples/cli/sample-apps Platform getPlayStationIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 90 'GetPlayStationIAPConfig' test.out

#- 91 UpdatePlaystationIAPConfig
samples/cli/sample-apps Platform updatePlaystationIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"backOfficeServerClientId": "8S7SDGt3XYc9Qvg3", "backOfficeServerClientSecret": "L1E9MNxCE9mPyGRc", "enableStreamJob": true, "environment": "dUszGtilByv7S2vY", "streamName": "Bso31iZ4hbpNzeOt", "streamPartnerName": "v2V3rTiY7pS3ZEIR"}' \
    > test.out 2>&1
eval_tap $? 91 'UpdatePlaystationIAPConfig' test.out

#- 92 DeletePlaystationIAPConfig
samples/cli/sample-apps Platform deletePlaystationIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 92 'DeletePlaystationIAPConfig' test.out

#- 93 ValidateExistedPlaystationIAPConfig
samples/cli/sample-apps Platform validateExistedPlaystationIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 93 'ValidateExistedPlaystationIAPConfig' test.out

#- 94 ValidatePlaystationIAPConfig
samples/cli/sample-apps Platform validatePlaystationIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"backOfficeServerClientId": "GrkFN4T4aYpBFBOY", "backOfficeServerClientSecret": "lBWwOjxfneEKkkNk", "enableStreamJob": false, "environment": "SdbZMJjIDpA1Hpi2", "streamName": "9qyFoYnla5nyDTXL", "streamPartnerName": "KSD8j4sp1tULFTwG"}' \
    > test.out 2>&1
eval_tap $? 94 'ValidatePlaystationIAPConfig' test.out

#- 95 GetSteamIAPConfig
samples/cli/sample-apps Platform getSteamIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 95 'GetSteamIAPConfig' test.out

#- 96 UpdateSteamIAPConfig
samples/cli/sample-apps Platform updateSteamIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"appId": "4zVYSsr1Qw70ZkGG", "publisherAuthenticationKey": "pS1uJqhMXKkCC1He"}' \
    > test.out 2>&1
eval_tap $? 96 'UpdateSteamIAPConfig' test.out

#- 97 DeleteSteamIAPConfig
samples/cli/sample-apps Platform deleteSteamIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 97 'DeleteSteamIAPConfig' test.out

#- 98 GetTwitchIAPConfig
samples/cli/sample-apps Platform getTwitchIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 98 'GetTwitchIAPConfig' test.out

#- 99 UpdateTwitchIAPConfig
samples/cli/sample-apps Platform updateTwitchIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"clientId": "Evpn3V1SF68Np4EH", "clientSecret": "FZL4Vajtrgr9KP40", "organizationId": "0jUSyNZBVzfhc1Se"}' \
    > test.out 2>&1
eval_tap $? 99 'UpdateTwitchIAPConfig' test.out

#- 100 DeleteTwitchIAPConfig
samples/cli/sample-apps Platform deleteTwitchIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 100 'DeleteTwitchIAPConfig' test.out

#- 101 GetXblIAPConfig
samples/cli/sample-apps Platform getXblIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 101 'GetXblIAPConfig' test.out

#- 102 UpdateXblIAPConfig
samples/cli/sample-apps Platform updateXblIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"relyingPartyCert": "JPR41gmG5scLnuCh"}' \
    > test.out 2>&1
eval_tap $? 102 'UpdateXblIAPConfig' test.out

#- 103 DeleteXblAPConfig
samples/cli/sample-apps Platform deleteXblAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 103 'DeleteXblAPConfig' test.out

#- 104 UpdateXblBPCertFile
samples/cli/sample-apps Platform updateXblBPCertFile \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    --password 'nExnkCATxpBw7YkW' \
    > test.out 2>&1
eval_tap $? 104 'UpdateXblBPCertFile' test.out

#- 105 QueryThirdPartyNotifications
samples/cli/sample-apps Platform queryThirdPartyNotifications \
    --namespace $AB_NAMESPACE \
    --endDate 'lMaKY2kHnpL0Z9T4' \
    --externalId '2YifVVtk0c7VGAy4' \
    --limit '94' \
    --offset '47' \
    --source 'TWITCH' \
    --startDate 'DOL7OX0vf3vKvoqV' \
    --status 'ERROR' \
    --type 'eCIhTb0nurxlJSaW' \
    > test.out 2>&1
eval_tap $? 105 'QueryThirdPartyNotifications' test.out

#- 106 QueryThirdPartySubscription
samples/cli/sample-apps Platform queryThirdPartySubscription \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --groupId 'Gy0Sabc9KwgIsYR6' \
    --limit '28' \
    --offset '26' \
    --platform 'STADIA' \
    --productId 'Twjbn0sMa11jDUhF' \
    --userId '8D6WIAO1YwVxSoPc' \
    > test.out 2>&1
eval_tap $? 106 'QueryThirdPartySubscription' test.out

#- 107 DownloadInvoiceDetails
samples/cli/sample-apps Platform downloadInvoiceDetails \
    --namespace $AB_NAMESPACE \
    --endTime 'j9RU0XYB57DFMi6E' \
    --feature '9tQe9lsfjUDkdVKf' \
    --itemId '5tzpnMEHS9gIoASj' \
    --itemType 'CODE' \
    --startTime 'mtZ8QgJJj0SwYryO' \
    > test.out 2>&1
eval_tap $? 107 'DownloadInvoiceDetails' test.out

#- 108 GenerateInvoiceSummary
samples/cli/sample-apps Platform generateInvoiceSummary \
    --namespace $AB_NAMESPACE \
    --endTime 'gxGMrY7Mh8KTI1Ix' \
    --feature 'DPhmwMGZtgNeUs7n' \
    --itemId 'oH8VsJLGsQj7WFUB' \
    --itemType 'COINS' \
    --startTime 'bgVq8tj8CSNb8wby' \
    > test.out 2>&1
eval_tap $? 108 'GenerateInvoiceSummary' test.out

#- 109 SyncInGameItem
samples/cli/sample-apps Platform syncInGameItem \
    --namespace $AB_NAMESPACE \
    --storeId 'eWv9in7D4V7Lpbdq' \
    --body '{"categoryPath": "Gr1fiBkNSLxlsi7z", "targetItemId": "CcZXkax9rmFMnwh0", "targetNamespace": "rZ5dIfYJum09joRW"}' \
    > test.out 2>&1
eval_tap $? 109 'SyncInGameItem' test.out

#- 110 CreateItem
samples/cli/sample-apps Platform createItem \
    --namespace $AB_NAMESPACE \
    --storeId 'QUyXhQeyn19bD05F' \
    --body '{"appId": "NhhB2qGFNDHW0nkJ", "appType": "SOFTWARE", "baseAppId": "KunMJfdOzsMQ66Ij", "boothName": "uaDHefDDvvbZnou1", "categoryPath": "kyQ1VkWjKFHw8Ljo", "clazz": "qEFNe9rRW9HId7PP", "displayOrder": 86, "entitlementType": "DURABLE", "ext": {"46NrJZZ70DteTJZ0": {}, "xvA9OShBtc1PKhII": {}, "wf6PJq5TZsIiXWv3": {}}, "features": ["1QqdPrW8ecyuaJAI", "AnGlDbDBvQJLoH63", "0AgNZlIQLfFs0koj"], "flexible": false, "images": [{"as": "vIXf47HIhwIgpBAm", "caption": "pKZ7ByPqzAkT6Ybc", "height": 0, "imageUrl": "27Mn9spfsQDyNcNa", "smallImageUrl": "j3LBwFV5heTAhaFF", "width": 16}, {"as": "Tq8OL4v0NWajEy97", "caption": "PkblsO5KnAbehTcu", "height": 11, "imageUrl": "zaqanyFpD73tLgwQ", "smallImageUrl": "ibUGAokdQkay0VrJ", "width": 19}, {"as": "dWViRDaChWQ3iLyN", "caption": "0f76QLIz3Ks9DtIn", "height": 91, "imageUrl": "ymzP9tVzg8eMvodZ", "smallImageUrl": "a8Q6ZpHNQ4whFMW2", "width": 16}], "inventoryConfig": {"customAttributes": {"hsPbKwg68heyCxT4": {}, "J8jMtoZdHDPT2T6K": {}, "yE0p51bwCA8RYCS8": {}}, "serverCustomAttributes": {"Q2063ZR2dD3XezyA": {}, "KS4QC3iRY1w8bqBp": {}, "ygbYqgllTISeyjnv": {}}, "slotUsed": 22}, "itemIds": ["GaELr0C8GyAExfnI", "4cRMvojTjpVplxvl", "dAfsswPUcWJiHjId"], "itemQty": {"1jVxRgblCSzBeXQ7": 69, "jpBGVh1eETgqtPj3": 72, "epYGVmkzvJinyNwx": 80}, "itemType": "INGAMEITEM", "listable": true, "localizations": {"S1Ba8fN9rjsMzcGa": {"description": "CI24TnrtUbdKrNtw", "localExt": {"n0WtzzML279P11I2": {}, "VD8cK1Cqa1DK7woB": {}, "XPlpb3VNoDsMCMna": {}}, "longDescription": "O51AxHbv7NfVLhYw", "title": "dEcYIzxFohR0fxpl"}, "YPPv2qSeVSG9y2jF": {"description": "oD4ZK55m1SkzIHr4", "localExt": {"niJgn7w7sAYEgaZs": {}, "Oi45FXG34fMPLI8R": {}, "AAy2No04mCfqMM6Y": {}}, "longDescription": "30kL98HvA2L8HJTX", "title": "bQxhcjlzl4EEz9ZJ"}, "pjtFy6uxmTTWbC6A": {"description": "dRFYTK0zKvvMWFPi", "localExt": {"cksDRqTcaD8jipNI": {}, "PAAI0uLgvUoHCrJt": {}, "rJgKNiRdRy7FUMPo": {}}, "longDescription": "11NsPUXWZyVrubMC", "title": "l6fHAfSfzQUbebEk"}}, "lootBoxConfig": {"rewardCount": 90, "rewards": [{"lootBoxItems": [{"count": 15, "duration": 73, "endDate": "1977-04-10T00:00:00Z", "itemId": "3Ts1NwbRJkVL2e0K", "itemSku": "Bm0cJWwA2qPnVDnq", "itemType": "v90lmP9Fm9hQTewU"}, {"count": 13, "duration": 20, "endDate": "1980-04-09T00:00:00Z", "itemId": "Mz4ksHZrjq0FSaJT", "itemSku": "BrzoXhxc3e01w4Xp", "itemType": "RTf6BAVwILqajMCu"}, {"count": 78, "duration": 78, "endDate": "1998-02-12T00:00:00Z", "itemId": "4XyRZFOxibh2UbIs", "itemSku": "snsTiKupMBFApamd", "itemType": "p2Q4rUAvJGDSLoxF"}], "name": "f83xlzbProBMFc3B", "odds": 0.9591367372315694, "type": "REWARD_GROUP", "weight": 11}, {"lootBoxItems": [{"count": 91, "duration": 82, "endDate": "1973-07-27T00:00:00Z", "itemId": "nyCu9QFZDi9WuN8n", "itemSku": "F4BUOXoEIZXMdwbT", "itemType": "ooo92LOLFcZJHiz2"}, {"count": 13, "duration": 36, "endDate": "1995-07-09T00:00:00Z", "itemId": "HQOPZRHCgqU45Twv", "itemSku": "rULE65FoCR1VZFhZ", "itemType": "3X3BUD3G7pJHf76g"}, {"count": 49, "duration": 39, "endDate": "1986-02-16T00:00:00Z", "itemId": "RwRJormuJJ5AJHI2", "itemSku": "OpTgiLLYIampqUsV", "itemType": "RU1p1B1iLSj9HNWT"}], "name": "1XD7oUCZdiDjjKmW", "odds": 0.17756931822092936, "type": "REWARD", "weight": 66}, {"lootBoxItems": [{"count": 45, "duration": 7, "endDate": "1971-04-18T00:00:00Z", "itemId": "XfkI9gMM8XUejP4d", "itemSku": "oJjL3yvdy0pJBwWt", "itemType": "12z76rLGtryW7rgw"}, {"count": 46, "duration": 57, "endDate": "1975-06-25T00:00:00Z", "itemId": "YOxQZdGnKtZTGeA5", "itemSku": "S9OZVLuXvLphoYXc", "itemType": "Elg3WPjNmkSNrn0C"}, {"count": 16, "duration": 60, "endDate": "1993-01-15T00:00:00Z", "itemId": "rJqECiFUAG1wS0WC", "itemSku": "OuklpQxdAKLEK0cy", "itemType": "vtZkSTB3EW4bPKMo"}], "name": "avkpAJtrWPIaw393", "odds": 0.6844281547169194, "type": "REWARD_GROUP", "weight": 46}], "rollFunction": "DEFAULT"}, "maxCount": 4, "maxCountPerUser": 37, "name": "VSjq1eXarapykWxX", "optionBoxConfig": {"boxItems": [{"count": 79, "duration": 2, "endDate": "1975-09-09T00:00:00Z", "itemId": "gs7lREDfDiJN2HAG", "itemSku": "QCx3B2NYKFwQHs6O", "itemType": "xitKwbd5auijb2LM"}, {"count": 33, "duration": 50, "endDate": "1977-01-23T00:00:00Z", "itemId": "fj0xrweX4m0OmgAw", "itemSku": "UyQFLuooH5dfUlOv", "itemType": "v378yh4rq6XEmdjv"}, {"count": 38, "duration": 2, "endDate": "1974-11-21T00:00:00Z", "itemId": "KhfCHonNnW3gAUwa", "itemSku": "sugq7DxIJ8Gg0FnX", "itemType": "EzqZ2CZCRtyBQFT3"}]}, "purchasable": false, "recurring": {"cycle": "YEARLY", "fixedFreeDays": 31, "fixedTrialCycles": 84, "graceDays": 39}, "regionData": {"u12zyvLp5FCqA1U1": [{"currencyCode": "ecc4FNQcQd8NU231", "currencyNamespace": "q5thk8mRoH6NyWoj", "currencyType": "VIRTUAL", "discountAmount": 59, "discountExpireAt": "1990-07-17T00:00:00Z", "discountPercentage": 71, "discountPurchaseAt": "1999-09-15T00:00:00Z", "expireAt": "1997-04-11T00:00:00Z", "price": 73, "purchaseAt": "1997-08-26T00:00:00Z", "trialPrice": 33}, {"currencyCode": "PZif9lVni9Nqf2KG", "currencyNamespace": "vio7d2r55Rn286E3", "currencyType": "VIRTUAL", "discountAmount": 56, "discountExpireAt": "1993-12-14T00:00:00Z", "discountPercentage": 7, "discountPurchaseAt": "1973-08-10T00:00:00Z", "expireAt": "1979-04-24T00:00:00Z", "price": 26, "purchaseAt": "1979-01-11T00:00:00Z", "trialPrice": 3}, {"currencyCode": "qFAv6rU34cvOMlex", "currencyNamespace": "9vXIP83Oor9Mxay9", "currencyType": "VIRTUAL", "discountAmount": 33, "discountExpireAt": "1972-01-26T00:00:00Z", "discountPercentage": 20, "discountPurchaseAt": "1999-08-26T00:00:00Z", "expireAt": "1998-06-04T00:00:00Z", "price": 83, "purchaseAt": "1986-12-05T00:00:00Z", "trialPrice": 52}], "TapGDy6iixx4TooK": [{"currencyCode": "wcrAcWt8bjPZri4c", "currencyNamespace": "s1SIVFCJWE3hCfl2", "currencyType": "VIRTUAL", "discountAmount": 1, "discountExpireAt": "1990-06-21T00:00:00Z", "discountPercentage": 3, "discountPurchaseAt": "1998-07-31T00:00:00Z", "expireAt": "1971-08-05T00:00:00Z", "price": 23, "purchaseAt": "1993-12-09T00:00:00Z", "trialPrice": 68}, {"currencyCode": "gUToiGDMoYJTUbmW", "currencyNamespace": "ZRplpqTb1klAnYAE", "currencyType": "VIRTUAL", "discountAmount": 63, "discountExpireAt": "1983-09-16T00:00:00Z", "discountPercentage": 12, "discountPurchaseAt": "1972-10-10T00:00:00Z", "expireAt": "1975-04-19T00:00:00Z", "price": 52, "purchaseAt": "1982-04-10T00:00:00Z", "trialPrice": 32}, {"currencyCode": "GA7LBmzXgUpiqUKf", "currencyNamespace": "4JKp9qAXQ9tBPU9z", "currencyType": "REAL", "discountAmount": 58, "discountExpireAt": "1983-09-20T00:00:00Z", "discountPercentage": 60, "discountPurchaseAt": "1976-06-07T00:00:00Z", "expireAt": "1994-09-21T00:00:00Z", "price": 45, "purchaseAt": "1974-12-18T00:00:00Z", "trialPrice": 8}], "35tZ1wd5onjXjGzJ": [{"currencyCode": "Ib9xaubbsdV0om3J", "currencyNamespace": "HrXu0Zl14FsoEIAq", "currencyType": "REAL", "discountAmount": 26, "discountExpireAt": "1999-12-08T00:00:00Z", "discountPercentage": 17, "discountPurchaseAt": "1984-10-13T00:00:00Z", "expireAt": "1999-10-28T00:00:00Z", "price": 55, "purchaseAt": "1989-08-07T00:00:00Z", "trialPrice": 10}, {"currencyCode": "TTkxSEOBWUJ7oKnR", "currencyNamespace": "Nx90QeGQb6tRX8c0", "currencyType": "VIRTUAL", "discountAmount": 69, "discountExpireAt": "1979-04-20T00:00:00Z", "discountPercentage": 81, "discountPurchaseAt": "1985-10-25T00:00:00Z", "expireAt": "1979-05-30T00:00:00Z", "price": 64, "purchaseAt": "1995-10-05T00:00:00Z", "trialPrice": 7}, {"currencyCode": "zcnwifJ0WF05O8Ql", "currencyNamespace": "tEnRnKtrgfh5EAwr", "currencyType": "VIRTUAL", "discountAmount": 39, "discountExpireAt": "1971-08-04T00:00:00Z", "discountPercentage": 8, "discountPurchaseAt": "1988-12-29T00:00:00Z", "expireAt": "1977-06-09T00:00:00Z", "price": 74, "purchaseAt": "1996-10-21T00:00:00Z", "trialPrice": 61}]}, "saleConfig": {"currencyCode": "x1OhoejRC4FnykKo", "price": 14}, "seasonType": "TIER", "sectionExclusive": true, "sellable": true, "sku": "lq4dteK5wejB9fZS", "stackable": false, "status": "INACTIVE", "tags": ["AZz8LyN17Vgtu3fu", "Uo5V3AJiBuZ6TVkT", "ZLYW88c0Hs6S7Kzy"], "targetCurrencyCode": "u3878RvLu5qK707g", "targetNamespace": "Qd8O7gwgg0bL1CeW", "thumbnailUrl": "j8448tBL7oUY00n3", "useCount": 76}' \
    > test.out 2>&1
eval_tap $? 110 'CreateItem' test.out

#- 111 GetItemByAppId
samples/cli/sample-apps Platform getItemByAppId \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'qL3SQyrlREWecwQf' \
    --appId 'UobQlMPNdSbDrDNZ' \
    > test.out 2>&1
eval_tap $? 111 'GetItemByAppId' test.out

#- 112 QueryItems
samples/cli/sample-apps Platform queryItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --appType 'DLC' \
    --availableDate 'rC4xe8sbdai9xNH7' \
    --baseAppId '6D0E6skxbePCjXXf' \
    --categoryPath 'f2piTCGXSJoAD8Zo' \
    --features 'MyaKOxdrjf1b54Jh' \
    --includeSubCategoryItem 'true' \
    --itemType 'BUNDLE' \
    --limit '79' \
    --offset '56' \
    --region '4vDAMuoORPpk38Ne' \
    --sortBy '["name:desc", "displayOrder:asc", "name:asc"]' \
    --storeId 'DKYmgdPkeTUlEkmQ' \
    --tags 'n19RRlORqeaw9yFh' \
    --targetNamespace 'FbR9itcrvcqwWaiF' \
    > test.out 2>&1
eval_tap $? 112 'QueryItems' test.out

#- 113 ListBasicItemsByFeatures
samples/cli/sample-apps Platform listBasicItemsByFeatures \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --features '["WjJezwi4fxG6dovE", "uD2ZHS3UlnuXguNU", "euH22aGI0tkuiaQM"]' \
    > test.out 2>&1
eval_tap $? 113 'ListBasicItemsByFeatures' test.out

#- 114 GetItems
samples/cli/sample-apps Platform getItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'd9o2R8CBwmieqrtm' \
    --itemIds 'Tb0CYRWoKgEEotwy' \
    > test.out 2>&1
eval_tap $? 114 'GetItems' test.out

#- 115 GetItemBySku
samples/cli/sample-apps Platform getItemBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'BUzFcebMfo97gKJF' \
    --sku 'c0SV6YjU7up0SSHs' \
    > test.out 2>&1
eval_tap $? 115 'GetItemBySku' test.out

#- 116 GetLocaleItemBySku
samples/cli/sample-apps Platform getLocaleItemBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --language 't8sIC0CdhPTZwLfg' \
    --populateBundle 'false' \
    --region 'EcySDeUKnVa7v2KN' \
    --storeId 'bVRViDlz6sxSxaff' \
    --sku 'mtwTIkYwO8RitjI0' \
    > test.out 2>&1
eval_tap $? 116 'GetLocaleItemBySku' test.out

#- 117 GetEstimatedPrice
samples/cli/sample-apps Platform getEstimatedPrice \
    --namespace $AB_NAMESPACE \
    --platform 'POrblIsJje1jPWB6' \
    --region 'NpLUWnuVdb2DJswL' \
    --storeId 'ZUqGuiB433WzZrvW' \
    --itemIds 'shCBJOHWvL8sBNPz' \
    --userId 'wwMu7SqxMrivGvTD' \
    > test.out 2>&1
eval_tap $? 117 'GetEstimatedPrice' test.out

#- 118 GetItemIdBySku
samples/cli/sample-apps Platform getItemIdBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --storeId 'xu9wFhnboh1W3ghO' \
    --sku 'qJ0Kvaz71vEUaLfY' \
    > test.out 2>&1
eval_tap $? 118 'GetItemIdBySku' test.out

#- 119 GetBulkItemIdBySkus
samples/cli/sample-apps Platform getBulkItemIdBySkus \
    --namespace $AB_NAMESPACE \
    --sku '["XNdhsy3x2m1W0mDp", "sQlTP3EUM0cCEqBO", "xvjcpCktGUcFvMql"]' \
    --storeId 'mDNO4RB7A8nW8vu7' \
    > test.out 2>&1
eval_tap $? 119 'GetBulkItemIdBySkus' test.out

#- 120 BulkGetLocaleItems
samples/cli/sample-apps Platform bulkGetLocaleItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --language 'P1qVsANoo7zLfkH6' \
    --region 'pkR8RyuxkK6REPE6' \
    --storeId '88os101rhwGpYNaK' \
    --itemIds 'BDcl2HFa99UeFARL' \
    > test.out 2>&1
eval_tap $? 120 'BulkGetLocaleItems' test.out

#- 121 GetAvailablePredicateTypes
samples/cli/sample-apps Platform getAvailablePredicateTypes \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 121 'GetAvailablePredicateTypes' test.out

#- 122 ValidateItemPurchaseCondition
samples/cli/sample-apps Platform validateItemPurchaseCondition \
    --namespace $AB_NAMESPACE \
    --platform 'iAYjHnZ4Un3FBW5U' \
    --userId '0dWsQr6B51164frf' \
    --body '{"itemIds": ["uDzMXvoJ6aLe3PaD", "HNe1sF9z4POWtUks", "meB5GnB15IOlDgnv"]}' \
    > test.out 2>&1
eval_tap $? 122 'ValidateItemPurchaseCondition' test.out

#- 123 BulkUpdateRegionData
samples/cli/sample-apps Platform bulkUpdateRegionData \
    --namespace $AB_NAMESPACE \
    --storeId 'OlOdcRAp8olsraut' \
    --body '{"changes": [{"itemIdentities": ["IS3cUhY0Y4F7MrUt", "FoGtoV0o24IBZsSk", "jm662fgrkx0ewkKV"], "itemIdentityType": "ITEM_ID", "regionData": {"xOMDN2yzIaB5E7IM": [{"currencyCode": "1F2TUSRuYyHo82im", "currencyNamespace": "asCOYptaYfslIa6m", "currencyType": "VIRTUAL", "discountAmount": 29, "discountExpireAt": "1982-01-26T00:00:00Z", "discountPercentage": 91, "discountPurchaseAt": "1977-02-05T00:00:00Z", "discountedPrice": 38, "expireAt": "1989-01-13T00:00:00Z", "price": 76, "purchaseAt": "1975-11-26T00:00:00Z", "trialPrice": 99}, {"currencyCode": "n6Hlr5cgOrDXQlAU", "currencyNamespace": "V2IZ5Rt22N4ZaVRy", "currencyType": "REAL", "discountAmount": 6, "discountExpireAt": "1991-08-03T00:00:00Z", "discountPercentage": 15, "discountPurchaseAt": "1996-10-06T00:00:00Z", "discountedPrice": 25, "expireAt": "1999-11-08T00:00:00Z", "price": 87, "purchaseAt": "1980-05-14T00:00:00Z", "trialPrice": 14}, {"currencyCode": "CAqRSOHtR76302yy", "currencyNamespace": "qzMCqhPyvH1am8hR", "currencyType": "VIRTUAL", "discountAmount": 65, "discountExpireAt": "1997-08-12T00:00:00Z", "discountPercentage": 86, "discountPurchaseAt": "1985-04-16T00:00:00Z", "discountedPrice": 23, "expireAt": "1975-04-27T00:00:00Z", "price": 6, "purchaseAt": "1980-11-14T00:00:00Z", "trialPrice": 80}], "eOXpWVwqLNcqt32A": [{"currencyCode": "yVWwfFIKfr6xIkTS", "currencyNamespace": "G03hWq5EAgiiT8lD", "currencyType": "REAL", "discountAmount": 39, "discountExpireAt": "1992-09-28T00:00:00Z", "discountPercentage": 11, "discountPurchaseAt": "1971-07-17T00:00:00Z", "discountedPrice": 14, "expireAt": "1992-12-07T00:00:00Z", "price": 100, "purchaseAt": "1987-05-27T00:00:00Z", "trialPrice": 14}, {"currencyCode": "moHw5G9uwfZH2svX", "currencyNamespace": "lI4wYiwiuxnpplUJ", "currencyType": "REAL", "discountAmount": 90, "discountExpireAt": "1988-11-05T00:00:00Z", "discountPercentage": 52, "discountPurchaseAt": "1994-09-06T00:00:00Z", "discountedPrice": 81, "expireAt": "1988-02-27T00:00:00Z", "price": 10, "purchaseAt": "1979-06-15T00:00:00Z", "trialPrice": 1}, {"currencyCode": "1AO7Bh0HYYIKiSfW", "currencyNamespace": "2HjnjN9dlvgww9FZ", "currencyType": "VIRTUAL", "discountAmount": 98, "discountExpireAt": "1990-01-14T00:00:00Z", "discountPercentage": 94, "discountPurchaseAt": "1996-07-05T00:00:00Z", "discountedPrice": 40, "expireAt": "1980-04-09T00:00:00Z", "price": 72, "purchaseAt": "1991-06-29T00:00:00Z", "trialPrice": 88}], "VreMs7MH52Pt12Sj": [{"currencyCode": "RWGNE2QRzNJdUr5Q", "currencyNamespace": "qsE986HX5GVJJRUg", "currencyType": "REAL", "discountAmount": 40, "discountExpireAt": "1979-01-18T00:00:00Z", "discountPercentage": 82, "discountPurchaseAt": "1983-06-22T00:00:00Z", "discountedPrice": 41, "expireAt": "1975-11-25T00:00:00Z", "price": 96, "purchaseAt": "1997-07-25T00:00:00Z", "trialPrice": 10}, {"currencyCode": "ftS885ivUtsMRdHI", "currencyNamespace": "ukjQln2Lh6H45HX8", "currencyType": "VIRTUAL", "discountAmount": 85, "discountExpireAt": "1976-07-06T00:00:00Z", "discountPercentage": 46, "discountPurchaseAt": "1999-03-09T00:00:00Z", "discountedPrice": 13, "expireAt": "1997-03-28T00:00:00Z", "price": 51, "purchaseAt": "1985-11-04T00:00:00Z", "trialPrice": 17}, {"currencyCode": "fwc9ZstTr9DFJ7Rk", "currencyNamespace": "DVul1JIiHGl7B1zt", "currencyType": "VIRTUAL", "discountAmount": 57, "discountExpireAt": "1999-07-06T00:00:00Z", "discountPercentage": 8, "discountPurchaseAt": "1999-11-16T00:00:00Z", "discountedPrice": 60, "expireAt": "1986-01-20T00:00:00Z", "price": 25, "purchaseAt": "1974-01-26T00:00:00Z", "trialPrice": 66}]}}, {"itemIdentities": ["6fqWw5ZkHY6R1KX7", "LqRRuJAq0BXvRhNZ", "nfWJtFy4FK0VBw1l"], "itemIdentityType": "ITEM_SKU", "regionData": {"SibTE8rmch4X9eFz": [{"currencyCode": "yvAeIImABVd4Tu1Q", "currencyNamespace": "OhAiC35o6b6Aotst", "currencyType": "REAL", "discountAmount": 50, "discountExpireAt": "1989-05-23T00:00:00Z", "discountPercentage": 52, "discountPurchaseAt": "1998-11-20T00:00:00Z", "discountedPrice": 67, "expireAt": "1979-08-13T00:00:00Z", "price": 14, "purchaseAt": "1982-04-15T00:00:00Z", "trialPrice": 32}, {"currencyCode": "QtLiivFnHTpIlluc", "currencyNamespace": "Pcv5YRY5qVyj8FQh", "currencyType": "REAL", "discountAmount": 43, "discountExpireAt": "1973-06-23T00:00:00Z", "discountPercentage": 96, "discountPurchaseAt": "1995-09-16T00:00:00Z", "discountedPrice": 59, "expireAt": "1997-09-28T00:00:00Z", "price": 5, "purchaseAt": "1992-07-28T00:00:00Z", "trialPrice": 67}, {"currencyCode": "XYkDMkRqcTVsxvPq", "currencyNamespace": "GuTNWnrc5vilXvy4", "currencyType": "VIRTUAL", "discountAmount": 29, "discountExpireAt": "1996-09-29T00:00:00Z", "discountPercentage": 4, "discountPurchaseAt": "1995-09-22T00:00:00Z", "discountedPrice": 45, "expireAt": "1991-09-11T00:00:00Z", "price": 23, "purchaseAt": "1987-08-12T00:00:00Z", "trialPrice": 89}], "4sD6LtqDDj1qxRxl": [{"currencyCode": "3NUhmxN81bOKszMi", "currencyNamespace": "xtYJAen5lRUjrLvU", "currencyType": "VIRTUAL", "discountAmount": 18, "discountExpireAt": "1972-03-10T00:00:00Z", "discountPercentage": 0, "discountPurchaseAt": "1999-04-23T00:00:00Z", "discountedPrice": 84, "expireAt": "1973-10-12T00:00:00Z", "price": 20, "purchaseAt": "1980-11-17T00:00:00Z", "trialPrice": 72}, {"currencyCode": "ymeibCM5g8OdxdqM", "currencyNamespace": "vTT8ikNoyNxP1QWl", "currencyType": "VIRTUAL", "discountAmount": 78, "discountExpireAt": "1983-10-20T00:00:00Z", "discountPercentage": 18, "discountPurchaseAt": "1986-02-03T00:00:00Z", "discountedPrice": 21, "expireAt": "1988-10-30T00:00:00Z", "price": 97, "purchaseAt": "1985-01-20T00:00:00Z", "trialPrice": 8}, {"currencyCode": "VwzUGsUnvLHTNvcZ", "currencyNamespace": "7lNO0kjm3HbfBRLP", "currencyType": "REAL", "discountAmount": 3, "discountExpireAt": "1974-10-17T00:00:00Z", "discountPercentage": 0, "discountPurchaseAt": "1994-04-17T00:00:00Z", "discountedPrice": 19, "expireAt": "1985-09-20T00:00:00Z", "price": 24, "purchaseAt": "1998-05-18T00:00:00Z", "trialPrice": 49}], "ACJYe2W5AjEbpAab": [{"currencyCode": "B1ni4LcTiAJyRuxQ", "currencyNamespace": "W81zTN3E7l20DPng", "currencyType": "VIRTUAL", "discountAmount": 63, "discountExpireAt": "1986-03-06T00:00:00Z", "discountPercentage": 99, "discountPurchaseAt": "1973-08-16T00:00:00Z", "discountedPrice": 67, "expireAt": "1988-02-25T00:00:00Z", "price": 38, "purchaseAt": "1983-01-11T00:00:00Z", "trialPrice": 80}, {"currencyCode": "RMcdF6jA9EQHqaSG", "currencyNamespace": "84B0ogk314AmknZX", "currencyType": "VIRTUAL", "discountAmount": 54, "discountExpireAt": "1996-04-01T00:00:00Z", "discountPercentage": 25, "discountPurchaseAt": "1972-12-19T00:00:00Z", "discountedPrice": 70, "expireAt": "1981-10-31T00:00:00Z", "price": 65, "purchaseAt": "1983-07-07T00:00:00Z", "trialPrice": 78}, {"currencyCode": "h4yPRuiank6PA89v", "currencyNamespace": "x5eBZUoNQORGeTaY", "currencyType": "REAL", "discountAmount": 73, "discountExpireAt": "1981-12-01T00:00:00Z", "discountPercentage": 45, "discountPurchaseAt": "1973-10-30T00:00:00Z", "discountedPrice": 39, "expireAt": "1998-06-09T00:00:00Z", "price": 55, "purchaseAt": "1999-02-03T00:00:00Z", "trialPrice": 38}]}}, {"itemIdentities": ["WT1ctuZuLT2L6EFO", "RXxpf4U4aHcXDjQL", "fG30jvDTM2FgtsD1"], "itemIdentityType": "ITEM_SKU", "regionData": {"6J5ZZiSWnYG3Lz34": [{"currencyCode": "B7VMLJe1p5OJrwRK", "currencyNamespace": "bQO8HoVI60iBCv5x", "currencyType": "REAL", "discountAmount": 94, "discountExpireAt": "1984-06-20T00:00:00Z", "discountPercentage": 40, "discountPurchaseAt": "1995-07-28T00:00:00Z", "discountedPrice": 76, "expireAt": "1996-10-19T00:00:00Z", "price": 2, "purchaseAt": "1998-05-25T00:00:00Z", "trialPrice": 24}, {"currencyCode": "xtHigmAy03MmQ5VL", "currencyNamespace": "pb4vItVjQaQiO8fx", "currencyType": "REAL", "discountAmount": 7, "discountExpireAt": "1977-10-26T00:00:00Z", "discountPercentage": 25, "discountPurchaseAt": "1990-02-27T00:00:00Z", "discountedPrice": 26, "expireAt": "1985-05-14T00:00:00Z", "price": 96, "purchaseAt": "1983-08-18T00:00:00Z", "trialPrice": 6}, {"currencyCode": "9NvyR5RGtMwZrKb6", "currencyNamespace": "IRPAOIOHw85kxJYl", "currencyType": "VIRTUAL", "discountAmount": 33, "discountExpireAt": "1988-04-09T00:00:00Z", "discountPercentage": 77, "discountPurchaseAt": "1991-04-07T00:00:00Z", "discountedPrice": 77, "expireAt": "1982-08-19T00:00:00Z", "price": 77, "purchaseAt": "1998-02-19T00:00:00Z", "trialPrice": 45}], "ZananpnkowuQNajS": [{"currencyCode": "ggiq6Xc3tOrvjwLw", "currencyNamespace": "cVQyLDL2dgDarU7K", "currencyType": "REAL", "discountAmount": 45, "discountExpireAt": "1989-06-08T00:00:00Z", "discountPercentage": 40, "discountPurchaseAt": "1975-11-13T00:00:00Z", "discountedPrice": 5, "expireAt": "1982-06-25T00:00:00Z", "price": 34, "purchaseAt": "1984-08-06T00:00:00Z", "trialPrice": 78}, {"currencyCode": "nSfWeb0zZK8sWZgZ", "currencyNamespace": "3N1sR7VC9XSML6U5", "currencyType": "VIRTUAL", "discountAmount": 67, "discountExpireAt": "1999-04-04T00:00:00Z", "discountPercentage": 45, "discountPurchaseAt": "1992-12-14T00:00:00Z", "discountedPrice": 10, "expireAt": "1998-07-06T00:00:00Z", "price": 96, "purchaseAt": "1974-10-11T00:00:00Z", "trialPrice": 94}, {"currencyCode": "XQQBVq1pViUr77Fe", "currencyNamespace": "06IVJ6AvZFOTlgNF", "currencyType": "VIRTUAL", "discountAmount": 42, "discountExpireAt": "1988-06-24T00:00:00Z", "discountPercentage": 36, "discountPurchaseAt": "1999-10-20T00:00:00Z", "discountedPrice": 5, "expireAt": "1996-03-19T00:00:00Z", "price": 81, "purchaseAt": "1975-03-17T00:00:00Z", "trialPrice": 48}], "ixR68eGxEN1XI5Pd": [{"currencyCode": "XqSbh6UfoseRkYOr", "currencyNamespace": "4Txot6sUybmQnhen", "currencyType": "REAL", "discountAmount": 0, "discountExpireAt": "1998-12-12T00:00:00Z", "discountPercentage": 72, "discountPurchaseAt": "1973-07-17T00:00:00Z", "discountedPrice": 57, "expireAt": "1993-04-03T00:00:00Z", "price": 96, "purchaseAt": "1977-07-26T00:00:00Z", "trialPrice": 55}, {"currencyCode": "vy03P03g7bXPHUSK", "currencyNamespace": "bNZMUVRiX316QuVq", "currencyType": "VIRTUAL", "discountAmount": 40, "discountExpireAt": "1971-10-27T00:00:00Z", "discountPercentage": 13, "discountPurchaseAt": "1994-12-28T00:00:00Z", "discountedPrice": 32, "expireAt": "1997-09-08T00:00:00Z", "price": 30, "purchaseAt": "1990-04-03T00:00:00Z", "trialPrice": 95}, {"currencyCode": "DeA7BZfPGx09XKmh", "currencyNamespace": "dDSxGGf46fxGAXw1", "currencyType": "REAL", "discountAmount": 77, "discountExpireAt": "1978-10-01T00:00:00Z", "discountPercentage": 17, "discountPurchaseAt": "1981-02-26T00:00:00Z", "discountedPrice": 29, "expireAt": "1978-08-19T00:00:00Z", "price": 48, "purchaseAt": "1977-05-14T00:00:00Z", "trialPrice": 14}]}}]}' \
    > test.out 2>&1
eval_tap $? 123 'BulkUpdateRegionData' test.out

#- 124 SearchItems
samples/cli/sample-apps Platform searchItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --itemType 'EXTENSION' \
    --limit '8' \
    --offset '73' \
    --sortBy 'DQrJcpXB8zY9zjTY' \
    --storeId '3tnVnExuxerjl0mp' \
    --keyword 'MZaFZWTxwrHDSAui' \
    --language 's7MvoD0Xr1BLGZO5' \
    > test.out 2>&1
eval_tap $? 124 'SearchItems' test.out

#- 125 QueryUncategorizedItems
samples/cli/sample-apps Platform queryUncategorizedItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --limit '55' \
    --offset '19' \
    --sortBy '["displayOrder", "createdAt:asc", "updatedAt:desc"]' \
    --storeId 'uuEReo7EoKd1QC4b' \
    > test.out 2>&1
eval_tap $? 125 'QueryUncategorizedItems' test.out

#- 126 GetItem
samples/cli/sample-apps Platform getItem \
    --itemId 'DA8jvmG1SWWW8PKE' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'pZQifsAZwAT9vV2s' \
    > test.out 2>&1
eval_tap $? 126 'GetItem' test.out

#- 127 UpdateItem
samples/cli/sample-apps Platform updateItem \
    --itemId '2vpu0RHBNxbIuNUi' \
    --namespace $AB_NAMESPACE \
    --storeId 'PN8bWFZnhMNK84lq' \
    --body '{"appId": "fnTtrYaHskHcGQj4", "appType": "DLC", "baseAppId": "yqHlIv6IkRqorOBI", "boothName": "x5Jbfx8TNe7hCz68", "categoryPath": "1NuUtP4uDYOPFOK7", "clazz": "q9pCZQN1Hf7ctu6E", "displayOrder": 67, "entitlementType": "CONSUMABLE", "ext": {"dC9kQ7a3rYqvLdth": {}, "3ULpP2vjRXu7qZaP": {}, "4czQUN5kzb4asGq2": {}}, "features": ["0FYJBG5iVXxCXLzu", "qgiAr45VPKizBLc6", "dvlGug6pjqZbv3Hm"], "flexible": false, "images": [{"as": "sGG5mjfJf30CkSaN", "caption": "nk9RLMr45dQO4LwM", "height": 95, "imageUrl": "O0KbKbwJiWBvcue2", "smallImageUrl": "yWotLiCHJsUrXywB", "width": 76}, {"as": "XN0q9ewiaxcAROYx", "caption": "CQocjvNdjalrpOlr", "height": 94, "imageUrl": "22QfbExuiTc3fVNN", "smallImageUrl": "qAPmb6IdzofYOPgY", "width": 64}, {"as": "WcTxyru73sDVKxQD", "caption": "kGmALZXAkISLATmt", "height": 91, "imageUrl": "WOWwhRMkQaerGSXy", "smallImageUrl": "sdPhTbeKcA7Xm6lM", "width": 57}], "inventoryConfig": {"customAttributes": {"QzwpnJsbO7oKukvT": {}, "RNpVVociNimCvTTW": {}, "h7MStwxsshJXfAtl": {}}, "serverCustomAttributes": {"zLcqCGntZpSuMm5Q": {}, "ww9FYaSB0dH6VEZy": {}, "gPky1FS6z1PUYYN7": {}}, "slotUsed": 58}, "itemIds": ["iDBhddtVzg5fu93R", "VfDxTDQxUQfUtHHR", "m7rQj66bogEfZLEy"], "itemQty": {"u9CB0AwnG9kPbQme": 77, "X85hvbp0Y60HabsF": 24, "VKhRGmRBj1NiPx0a": 79}, "itemType": "BUNDLE", "listable": true, "localizations": {"Xwar3MJGAdaU7Wt4": {"description": "ciwgE213sE7wnGLY", "localExt": {"B2opQIksJOqvFt7S": {}, "DWdyHuOJ14JYL39h": {}, "RR2FFkrekJ3isMDB": {}}, "longDescription": "T5u0P9Gm2mt9qffy", "title": "9X3Z39Ue9IodsTLn"}, "YcAj2WUa0XB6qyFe": {"description": "QSkJuJnIxfB8Lyig", "localExt": {"bqkZbHLEpVItsKby": {}, "WUmHpw5JZEwPaeDi": {}, "w5ehecLhTwnZL9WZ": {}}, "longDescription": "QQt9ceS8CJgKeyEb", "title": "TeKlUmNHLCtjQhZj"}, "R3hIkNjnqEY1ik8d": {"description": "5njpEbIyJvwvTtJe", "localExt": {"fZ3nLEM4LecBTO7Q": {}, "Y2a8tX3O2w1wQzlB": {}, "NYVTJTR836MmDO9O": {}}, "longDescription": "K0HrpbvnXAbup8Ld", "title": "C1zRxhKdSsUYRrN6"}}, "lootBoxConfig": {"rewardCount": 75, "rewards": [{"lootBoxItems": [{"count": 17, "duration": 38, "endDate": "1976-06-06T00:00:00Z", "itemId": "06Qh0pHqb9zIAg45", "itemSku": "146OvXd3kCqTQoWp", "itemType": "QPQImuvf4nmIcAOg"}, {"count": 90, "duration": 42, "endDate": "1981-11-12T00:00:00Z", "itemId": "8XY2v26dyjXP8tN9", "itemSku": "Di15LUxWmRRmJXGx", "itemType": "YKYYKjP2odcQt27Y"}, {"count": 65, "duration": 79, "endDate": "1984-12-09T00:00:00Z", "itemId": "35QhMTqbHQpDiZGi", "itemSku": "sd5bYtWoXX6KFfJD", "itemType": "rF7gPBePLHm4BNJ8"}], "name": "8HQoNvTzq4KI99lF", "odds": 0.06724416590204496, "type": "REWARD_GROUP", "weight": 76}, {"lootBoxItems": [{"count": 42, "duration": 52, "endDate": "1974-10-29T00:00:00Z", "itemId": "R4IL1AGwnnRag7ot", "itemSku": "FwZRM79alr07to8E", "itemType": "mQw8HVMERDRzN5j2"}, {"count": 20, "duration": 25, "endDate": "1975-12-23T00:00:00Z", "itemId": "xi5BpwNzSEEznnBg", "itemSku": "EoIAIgbpd7UbAHhu", "itemType": "BQE84pYCZ2t0g2uO"}, {"count": 82, "duration": 88, "endDate": "1994-09-20T00:00:00Z", "itemId": "ZklGgp11y1zKtNrG", "itemSku": "Ycyoblj5nlySfmFZ", "itemType": "uNmx9W5TAXoJ93mZ"}], "name": "pO52BpiKvTO9KmOO", "odds": 0.8712922451544349, "type": "REWARD_GROUP", "weight": 91}, {"lootBoxItems": [{"count": 22, "duration": 54, "endDate": "1980-03-31T00:00:00Z", "itemId": "9yBq8A52am6PYBdJ", "itemSku": "rDFIEGR1XmGOxSmN", "itemType": "tiakXGpiGRdBVmb6"}, {"count": 68, "duration": 48, "endDate": "1997-07-13T00:00:00Z", "itemId": "c70DvdtLlqgcdKZA", "itemSku": "tpRzEkebmL7K37Ii", "itemType": "khnRuu0yBfgpf0eG"}, {"count": 42, "duration": 64, "endDate": "1988-07-15T00:00:00Z", "itemId": "NE90lmDRy4yU2l7L", "itemSku": "sxTADb6XrCvzvsxT", "itemType": "joQE0jvlyBiT3NKr"}], "name": "YCZjxzTQbqF5PSUh", "odds": 0.18315480540701345, "type": "REWARD", "weight": 39}], "rollFunction": "CUSTOM"}, "maxCount": 88, "maxCountPerUser": 49, "name": "Zgvh7gaAKtkC4FaR", "optionBoxConfig": {"boxItems": [{"count": 80, "duration": 23, "endDate": "1979-12-05T00:00:00Z", "itemId": "6O5oppaiWvIsXu59", "itemSku": "wYbeU58YS76pXPLR", "itemType": "fMR1tSMOM4xZMDHr"}, {"count": 18, "duration": 72, "endDate": "1976-01-12T00:00:00Z", "itemId": "1QYcfspRRFK3MWFC", "itemSku": "UzF2QUMqjB10AcGm", "itemType": "5OUUYReWvW2gcBWY"}, {"count": 9, "duration": 5, "endDate": "1986-03-20T00:00:00Z", "itemId": "5ZF2MNzMCPjbuh9c", "itemSku": "lYwNSwi2ZDzzyRPd", "itemType": "hKCEkkMVtf7W2L75"}]}, "purchasable": true, "recurring": {"cycle": "YEARLY", "fixedFreeDays": 31, "fixedTrialCycles": 7, "graceDays": 78}, "regionData": {"7BiCyjI5YEQCWS2o": [{"currencyCode": "7MS0kBohh6F1DpWc", "currencyNamespace": "Fj7kYhw20M43BLlr", "currencyType": "VIRTUAL", "discountAmount": 95, "discountExpireAt": "1990-04-28T00:00:00Z", "discountPercentage": 7, "discountPurchaseAt": "1991-08-10T00:00:00Z", "expireAt": "1982-09-08T00:00:00Z", "price": 59, "purchaseAt": "1985-05-24T00:00:00Z", "trialPrice": 94}, {"currencyCode": "8IrAqvLRgkokCnEe", "currencyNamespace": "aFUqSVCFzheMv2oq", "currencyType": "VIRTUAL", "discountAmount": 88, "discountExpireAt": "1986-02-11T00:00:00Z", "discountPercentage": 52, "discountPurchaseAt": "1983-11-01T00:00:00Z", "expireAt": "1994-05-23T00:00:00Z", "price": 71, "purchaseAt": "1984-08-19T00:00:00Z", "trialPrice": 62}, {"currencyCode": "LGfoHxO2x8QYjNcW", "currencyNamespace": "zLj1najZssdkujnw", "currencyType": "VIRTUAL", "discountAmount": 27, "discountExpireAt": "1999-10-01T00:00:00Z", "discountPercentage": 16, "discountPurchaseAt": "1974-09-17T00:00:00Z", "expireAt": "1980-10-11T00:00:00Z", "price": 58, "purchaseAt": "1972-10-27T00:00:00Z", "trialPrice": 71}], "Ibt0qdZPyGDrGe8y": [{"currencyCode": "dmgB7oT8cY4pppbi", "currencyNamespace": "tHEE6itk5frwbiF7", "currencyType": "VIRTUAL", "discountAmount": 54, "discountExpireAt": "1986-03-10T00:00:00Z", "discountPercentage": 21, "discountPurchaseAt": "1993-09-05T00:00:00Z", "expireAt": "1980-11-05T00:00:00Z", "price": 47, "purchaseAt": "1996-08-22T00:00:00Z", "trialPrice": 68}, {"currencyCode": "OIFPH1DaGFZs6jlt", "currencyNamespace": "PCkLKPHlpe3gO8ux", "currencyType": "VIRTUAL", "discountAmount": 53, "discountExpireAt": "1979-06-09T00:00:00Z", "discountPercentage": 66, "discountPurchaseAt": "1986-09-29T00:00:00Z", "expireAt": "1986-12-29T00:00:00Z", "price": 58, "purchaseAt": "1977-09-14T00:00:00Z", "trialPrice": 92}, {"currencyCode": "DK7MQnaX5vcYCh8v", "currencyNamespace": "0jYBmFpd0WwUsjJq", "currencyType": "VIRTUAL", "discountAmount": 47, "discountExpireAt": "1991-04-10T00:00:00Z", "discountPercentage": 55, "discountPurchaseAt": "1997-09-18T00:00:00Z", "expireAt": "1977-01-03T00:00:00Z", "price": 94, "purchaseAt": "1993-04-14T00:00:00Z", "trialPrice": 22}], "KbmIx1fWzOjCo8XU": [{"currencyCode": "msx7GNprItoLTU9t", "currencyNamespace": "ueQrW7EBCuadXm6V", "currencyType": "REAL", "discountAmount": 68, "discountExpireAt": "1986-05-06T00:00:00Z", "discountPercentage": 81, "discountPurchaseAt": "1985-10-26T00:00:00Z", "expireAt": "1985-01-14T00:00:00Z", "price": 98, "purchaseAt": "1999-08-30T00:00:00Z", "trialPrice": 30}, {"currencyCode": "pIo9v9ecGbPwF5Sk", "currencyNamespace": "eYpljyL6JIgpYQ0h", "currencyType": "VIRTUAL", "discountAmount": 91, "discountExpireAt": "1983-05-08T00:00:00Z", "discountPercentage": 62, "discountPurchaseAt": "1988-12-29T00:00:00Z", "expireAt": "1990-01-19T00:00:00Z", "price": 96, "purchaseAt": "1995-05-29T00:00:00Z", "trialPrice": 18}, {"currencyCode": "4M8s9UXY9bHKYIKk", "currencyNamespace": "lFDNCD3wmzuMhcZG", "currencyType": "REAL", "discountAmount": 83, "discountExpireAt": "1974-07-01T00:00:00Z", "discountPercentage": 2, "discountPurchaseAt": "1980-10-17T00:00:00Z", "expireAt": "1992-07-27T00:00:00Z", "price": 21, "purchaseAt": "1974-10-05T00:00:00Z", "trialPrice": 66}]}, "saleConfig": {"currencyCode": "M4BsjAlzdIbV1gtS", "price": 73}, "seasonType": "PASS", "sectionExclusive": true, "sellable": false, "sku": "Xl8mXMYzjjFVsxXj", "stackable": false, "status": "ACTIVE", "tags": ["Of7X4Yq6nHS97Z4D", "RPnVc4zbIgXMrWRS", "D89Tv1aDR96CXBu3"], "targetCurrencyCode": "ggxJTiuQxfnnVYbL", "targetNamespace": "8hk7ABAG8sGS5DOi", "thumbnailUrl": "HytQR1n9lrBIKl9r", "useCount": 68}' \
    > test.out 2>&1
eval_tap $? 127 'UpdateItem' test.out

#- 128 DeleteItem
samples/cli/sample-apps Platform deleteItem \
    --itemId 'FRhULDTMlpGDPhhn' \
    --namespace $AB_NAMESPACE \
    --force 'false' \
    --storeId 'tfohy9yoXZCciX9p' \
    > test.out 2>&1
eval_tap $? 128 'DeleteItem' test.out

#- 129 AcquireItem
samples/cli/sample-apps Platform acquireItem \
    --itemId '5blwMUMsHABi82AU' \
    --namespace $AB_NAMESPACE \
    --body '{"count": 43, "orderNo": "Hki1LQWxxCYxRhYE"}' \
    > test.out 2>&1
eval_tap $? 129 'AcquireItem' test.out

#- 130 GetApp
samples/cli/sample-apps Platform getApp \
    --itemId 'JWvceYllosdyRvZQ' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --storeId 'HAlVbqWFt5mjKVZm' \
    > test.out 2>&1
eval_tap $? 130 'GetApp' test.out

#- 131 UpdateApp
samples/cli/sample-apps Platform updateApp \
    --itemId 'xuztGNpy0HqqJGER' \
    --namespace $AB_NAMESPACE \
    --storeId 'QmCHnhSZZXwcJhXw' \
    --body '{"carousel": [{"alt": "lKc0FmeIHqBBhhCZ", "previewUrl": "XmUUq5re8Q2LawLo", "thumbnailUrl": "Ecd8NCU9roX2lmj6", "type": "video", "url": "yIZQVbmmHOyhwZJW", "videoSource": "generic"}, {"alt": "4BrBylT19xLi7MjC", "previewUrl": "Luc9KbWm5PwVcWEb", "thumbnailUrl": "tEyuRQqB1gXqYlpW", "type": "image", "url": "egSlBJpdHlWlTiAS", "videoSource": "generic"}, {"alt": "jGOmfUV8jwPLqooe", "previewUrl": "g4pJEyXMyrV28qPh", "thumbnailUrl": "hEQnp6LjSV9TD5q2", "type": "video", "url": "wrulip2ErBFONzgs", "videoSource": "youtube"}], "developer": "R4g96gsYsnsCWAzy", "forumUrl": "cbyQCOskq2JKY98K", "genres": ["RPG", "Adventure", "Strategy"], "localizations": {"2r8iHsn9DwNjl7fQ": {"announcement": "8xIQhd4sPWzzTOQv", "slogan": "Cc2o6df2O5CyqR3D"}, "KnviP9kx4etxMHKC": {"announcement": "WnswERW7NEt8TH1p", "slogan": "Z1HInIzvGQEZZ1rD"}, "bE8MJhAWNsUUgNwA": {"announcement": "4ngsRA5gTr7FJWM4", "slogan": "gs4eDYVjOdPwUlwT"}}, "platformRequirements": {"J0dwVJFoLTJBuT0j": [{"additionals": "ERkAAQ2juu85g0rt", "directXVersion": "M6oMsmbq3Vrj67KX", "diskSpace": "isMiTSgWTcH8c17M", "graphics": "EflVvG3JbmiqDUPs", "label": "r5N6nHceWJYJ75jA", "osVersion": "MK0uxgubLIwNSRBu", "processor": "jqFrdXRdOlQ1FW7P", "ram": "qCCUJHWUT9N298jN", "soundCard": "Uk88QkxWJpFeN2Gx"}, {"additionals": "HkFZZs6ueIjUT8jS", "directXVersion": "e5ENAECkWYsZkg53", "diskSpace": "OzInjkfxdXlagQ0h", "graphics": "52CIbuX8f9IrCSLL", "label": "ApNnywnDZPSDl9pG", "osVersion": "JGmTITTKL3wRByHi", "processor": "rXzZQk1IT7ovDpjY", "ram": "kqQiJMlMFzo53YVb", "soundCard": "FOXgdnVIXtYL167d"}, {"additionals": "8Amlefn22PbzmiSu", "directXVersion": "NZv8DbEQ6N4hk6kV", "diskSpace": "mLxodyJFZLplHy6k", "graphics": "rPcZDvKG3Sfnp86O", "label": "YrpFHq6NNjuxEzW7", "osVersion": "VzlXyVrrhvUTbezg", "processor": "mwlrFkMIjZNVW049", "ram": "Fom8sWwXN2HW3HFt", "soundCard": "Mt7aoIr9doKayMFG"}], "fDtzQy5uCUEjp3mb": [{"additionals": "N1uLWbstvd3Bp4HP", "directXVersion": "NXCD1mnSyItYMcUZ", "diskSpace": "936R6nEWlT0bEE18", "graphics": "DadzOt10Ec0DG1xh", "label": "6DKeJy70uU8bshES", "osVersion": "F8Q9Ha7CwTMt6gAU", "processor": "xS6XjbPnlb1tHUNY", "ram": "4OUXTA9V9wGw3pe9", "soundCard": "jg2ua09RA3TK48IE"}, {"additionals": "xnZsPF3DoE6EdLZx", "directXVersion": "XGN0HsCo7bXvRMYs", "diskSpace": "VnQcbXB1eJrCUbGi", "graphics": "aygZ3l5l0o68Efn8", "label": "UNlE9rY5oLkgithx", "osVersion": "QveKMN2ierFKKVYM", "processor": "InqXZw75XAgmGAtj", "ram": "ezNPXO5W54XPGYoL", "soundCard": "Njx4FBHPJFcQnTCj"}, {"additionals": "SbS44w1JvcUTLJCt", "directXVersion": "AJ4xfWqKZ8J8xAv4", "diskSpace": "uUTDsA6JEXVzNejL", "graphics": "dFJfVsKJAMjYEPt3", "label": "JVq4pq6ONZoU58d9", "osVersion": "SaYzFcJIND5UzNRI", "processor": "sPn6fcMXlLXBf9Jd", "ram": "rXlZ2xpYqdZkz2oL", "soundCard": "ruEfKEmmsuPtWi1G"}], "e1pwd3Ylk2oCtDWt": [{"additionals": "PYmG4THmfyxNzsl1", "directXVersion": "0eS5HrsAqZkqXebM", "diskSpace": "ustbyQ8fcOawNjSJ", "graphics": "BhNlppUkNIJ6puER", "label": "h3pupaAp8y3OhahN", "osVersion": "PH76hieqza0fBvM0", "processor": "lZJPNvUsJMvYnoy9", "ram": "Fl0zkAqiKQdmgy0p", "soundCard": "hKPAQgdNqIl6Fh3U"}, {"additionals": "BqeY7W4Q0YNOGgcL", "directXVersion": "3kmh5FVERhKkIeNi", "diskSpace": "PbPOS82wjhWlakUp", "graphics": "3hLliMG1tHluwEey", "label": "yFkqqlMLD10umb5n", "osVersion": "Dua7LzDN9FEA00Ej", "processor": "BXCv6ePHCIxkmZDE", "ram": "DbZ2AMDQeOGy5Ssy", "soundCard": "DsQ7plHZlPZpBPQx"}, {"additionals": "JsQE27dxmxSrkfDr", "directXVersion": "ILtRHA6REmSWsX3P", "diskSpace": "hTC43l8JG6iyiLGS", "graphics": "MAgSeepIEHLnir1p", "label": "6B5p4D7dL5uyagBJ", "osVersion": "RdJ6FMNzaTiQM4p2", "processor": "zBhw87Oz7yUlCN97", "ram": "QMU6Ww823MkfM79q", "soundCard": "Kutyj2PL97yzbFRI"}]}, "platforms": ["IOS", "Windows", "MacOS"], "players": ["CrossPlatformMulti", "CrossPlatformMulti", "Multi"], "primaryGenre": "Simulation", "publisher": "iwizXFW6OrtFyrk4", "releaseDate": "1978-11-21T00:00:00Z", "websiteUrl": "08zdWwQA0OojXkFF"}' \
    > test.out 2>&1
eval_tap $? 131 'UpdateApp' test.out

#- 132 DisableItem
samples/cli/sample-apps Platform disableItem \
    --itemId 'sIOVvZ4U0S1ASUdT' \
    --namespace $AB_NAMESPACE \
    --storeId 'Iyeljgtik1f7r39O' \
    > test.out 2>&1
eval_tap $? 132 'DisableItem' test.out

#- 133 GetItemDynamicData
samples/cli/sample-apps Platform getItemDynamicData \
    --itemId 'ySU2EBz8cgKBtQKR' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 133 'GetItemDynamicData' test.out

#- 134 EnableItem
samples/cli/sample-apps Platform enableItem \
    --itemId '2yR6f9WQstFzy16l' \
    --namespace $AB_NAMESPACE \
    --storeId '8N0rDk2m09BYzKDS' \
    > test.out 2>&1
eval_tap $? 134 'EnableItem' test.out

#- 135 FeatureItem
samples/cli/sample-apps Platform featureItem \
    --feature '0GsG5M8AMdPEzm7N' \
    --itemId 'B0sBYWbreLKjN2Mj' \
    --namespace $AB_NAMESPACE \
    --storeId 'uMUdT8hbNQ3ri4zJ' \
    > test.out 2>&1
eval_tap $? 135 'FeatureItem' test.out

#- 136 DefeatureItem
samples/cli/sample-apps Platform defeatureItem \
    --feature 'rELa3F2tvoijm7DH' \
    --itemId 'JLhAoqOQKjwXwmHh' \
    --namespace $AB_NAMESPACE \
    --storeId 'L7dLRspokhTcWM6n' \
    > test.out 2>&1
eval_tap $? 136 'DefeatureItem' test.out

#- 137 GetLocaleItem
samples/cli/sample-apps Platform getLocaleItem \
    --itemId 'orxGpBbM3ftHgr9j' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --language 'equ0CbP5pW6NrASH' \
    --populateBundle 'false' \
    --region 'u0dsBiaY9GJ9UP3B' \
    --storeId '0UyHtuCBj5wUvHDs' \
    > test.out 2>&1
eval_tap $? 137 'GetLocaleItem' test.out

#- 138 UpdateItemPurchaseCondition
samples/cli/sample-apps Platform updateItemPurchaseCondition \
    --itemId 'gf85NWoUtwVQSb2c' \
    --namespace $AB_NAMESPACE \
    --storeId 'TlUq0iMDuFN8R1kZ' \
    --body '{"purchaseCondition": {"conditionGroups": [{"operator": "and", "predicates": [{"anyOf": 0, "code": "NpZYS9fX1iiGprWm", "comparison": "isNot", "name": "VxytffiZZ17OSR9r", "predicateType": "StatisticCodePredicate", "value": "o7y3pEfbV3K2kM6k", "values": ["l3A7WMx3bONh2x2W", "V57m0do52KPVM368", "pP7u6NETmHt1I6f0"]}, {"anyOf": 41, "code": "MaZLnff2HPqwtbpA", "comparison": "isLessThanOrEqual", "name": "CoKs2C0SQd1lnmi3", "predicateType": "EntitlementPredicate", "value": "cR9kh61onRjXo5T8", "values": ["hzMpOtDRuR64bqPi", "taJFKuT798dFnmjS", "dEwLIVeb8ioCs3eP"]}, {"anyOf": 30, "code": "1bemUPRElWxlfYyT", "comparison": "isNot", "name": "jrvQoIpAJ09UvkWi", "predicateType": "SeasonPassPredicate", "value": "xBnJPnwjY2cwP0z5", "values": ["cNx3jLP25G3JJtFZ", "D4Q015j2BBsSnaxX", "2a2J9wU5eub9RrxO"]}]}, {"operator": "or", "predicates": [{"anyOf": 19, "code": "KEdOaq5Vixoboycw", "comparison": "isGreaterThanOrEqual", "name": "hGnLQhUqEns010hW", "predicateType": "StatisticCodePredicate", "value": "rL3iLsa2nRlHiKIO", "values": ["ABo6kT5wuL3vHSre", "v4Ca2PaigpGCveMi", "HugMG8nWK0nc99D1"]}, {"anyOf": 10, "code": "zWhjnNtaYRdBOdEI", "comparison": "includes", "name": "bcv8tSagnXtMBsfC", "predicateType": "SeasonTierPredicate", "value": "7tJykY6xLO4IEV9P", "values": ["dLIDaKKW1kjX274R", "WPwvS4wN3EKbpdIR", "xh17SH8Ng6tz5GXk"]}, {"anyOf": 84, "code": "iCU2oQZB3Rgw9NM8", "comparison": "isLessThanOrEqual", "name": "4EEhKMWfRbZds4la", "predicateType": "StatisticCodePredicate", "value": "DhavREyoxKauF34k", "values": ["gJqjzCC7VUVTyPBR", "Y7nlBuNtO0qJWjHj", "VDAAIjePASCdbafA"]}]}, {"operator": "or", "predicates": [{"anyOf": 51, "code": "Ud3cjIJUuQQsr3Ug", "comparison": "is", "name": "oC8hSV1GoM2jgIdJ", "predicateType": "SeasonTierPredicate", "value": "8R7h2eYum4b40TVy", "values": ["zfl2VRokBeZN3l8E", "bRQToLKh5T4wUzdO", "NFgrGSHWxLWLSxBG"]}, {"anyOf": 63, "code": "S6OdXcR2TBvm6yOV", "comparison": "isGreaterThan", "name": "69N40dNWAt1u77xQ", "predicateType": "EntitlementPredicate", "value": "zIMZniAvoGuuvFg3", "values": ["CtbqY1nO43Gyz7f2", "Ncozt1voF0Lp5GlD", "AVpyQuI06Cxc9VWp"]}, {"anyOf": 46, "code": "4jCy3cX1D2ki8F9m", "comparison": "excludes", "name": "0ybGf4IVa0SWBw2X", "predicateType": "SeasonTierPredicate", "value": "9I4cFgdRI47QEoOX", "values": ["6PesaB2PC1kVHz4Y", "74MqoTGlvYcEIgxk", "8zGSKECYqAlp24o9"]}]}]}}' \
    > test.out 2>&1
eval_tap $? 138 'UpdateItemPurchaseCondition' test.out

#- 139 ReturnItem
samples/cli/sample-apps Platform returnItem \
    --itemId 'kzA4jelToIgrp5MN' \
    --namespace $AB_NAMESPACE \
    --body '{"orderNo": "UKQlm5j0CqT32Bbu"}' \
    > test.out 2>&1
eval_tap $? 139 'ReturnItem' test.out

#- 140 QueryKeyGroups
samples/cli/sample-apps Platform queryKeyGroups \
    --namespace $AB_NAMESPACE \
    --limit '83' \
    --name '4f0G88EuevRcDCJ9' \
    --offset '56' \
    --tag '4AQfc0OThkEs0OHA' \
    > test.out 2>&1
eval_tap $? 140 'QueryKeyGroups' test.out

#- 141 CreateKeyGroup
samples/cli/sample-apps Platform createKeyGroup \
    --namespace $AB_NAMESPACE \
    --body '{"description": "3b5bmv2DH6Vt4C9C", "name": "yjGhyQv5ulHOoERt", "status": "INACTIVE", "tags": ["LHLUtkOAkNuH1sjf", "Q59F4JLaZQGf0LQB", "WeV6MCSr2XUFUIK5"]}' \
    > test.out 2>&1
eval_tap $? 141 'CreateKeyGroup' test.out

#- 142 GetKeyGroupByBoothName
eval_tap 0 142 'GetKeyGroupByBoothName # SKIP deprecated' test.out

#- 143 GetKeyGroup
samples/cli/sample-apps Platform getKeyGroup \
    --keyGroupId 'Bu2EXGTpF49D8iGa' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 143 'GetKeyGroup' test.out

#- 144 UpdateKeyGroup
samples/cli/sample-apps Platform updateKeyGroup \
    --keyGroupId 'vjnrN9mrEV477hw4' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "k3aEz7jmxuXDN62r", "name": "lHAHFJomoWO8rO7D", "status": "ACTIVE", "tags": ["NIXQtMaPsLXqy0gF", "Glr0cGheqAl8kR47", "Pyc4vBjYWIwLN7Nj"]}' \
    > test.out 2>&1
eval_tap $? 144 'UpdateKeyGroup' test.out

#- 145 GetKeyGroupDynamic
samples/cli/sample-apps Platform getKeyGroupDynamic \
    --keyGroupId 'sFGsBo398s7kZUa3' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 145 'GetKeyGroupDynamic' test.out

#- 146 ListKeys
samples/cli/sample-apps Platform listKeys \
    --keyGroupId 'iS1aGQavdH7lvx99' \
    --namespace $AB_NAMESPACE \
    --limit '49' \
    --offset '88' \
    --status 'ACTIVE' \
    > test.out 2>&1
eval_tap $? 146 'ListKeys' test.out

#- 147 UploadKeys
samples/cli/sample-apps Platform uploadKeys \
    --keyGroupId '1vKj7xinjyLlSmy2' \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 147 'UploadKeys' test.out

#- 148 QueryOrders
samples/cli/sample-apps Platform queryOrders \
    --namespace $AB_NAMESPACE \
    --endTime 'BoPEsTyG0FsYJ8BF' \
    --limit '60' \
    --offset '87' \
    --orderNos '["Ob7CCcsVCmo8ohsk", "lZspbWhCQyNY3w0A", "dtQ6XXRBTrl02Wp0"]' \
    --sortBy 'z9VZxspNbYiDouSp' \
    --startTime 'lUOtrE926xrN4aSD' \
    --status 'FULFILL_FAILED' \
    --withTotal 'true' \
    > test.out 2>&1
eval_tap $? 148 'QueryOrders' test.out

#- 149 GetOrderStatistics
samples/cli/sample-apps Platform getOrderStatistics \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 149 'GetOrderStatistics' test.out

#- 150 GetOrder
samples/cli/sample-apps Platform getOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'Gz0D5GfXFHwF1nGc' \
    > test.out 2>&1
eval_tap $? 150 'GetOrder' test.out

#- 151 RefundOrder
samples/cli/sample-apps Platform refundOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'MMFayXgKW0PKNGU2' \
    --body '{"description": "fLgTJHyZKogbesJ8"}' \
    > test.out 2>&1
eval_tap $? 151 'RefundOrder' test.out

#- 152 GetPaymentCallbackConfig
samples/cli/sample-apps Platform getPaymentCallbackConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 152 'GetPaymentCallbackConfig' test.out

#- 153 UpdatePaymentCallbackConfig
samples/cli/sample-apps Platform updatePaymentCallbackConfig \
    --namespace $AB_NAMESPACE \
    --body '{"dryRun": true, "notifyUrl": "u5QwDJqiAoOs8fDW", "privateKey": "meP4HhU8fcx3xhKZ"}' \
    > test.out 2>&1
eval_tap $? 153 'UpdatePaymentCallbackConfig' test.out

#- 154 GetPaymentMerchantConfig
samples/cli/sample-apps Platform getPaymentMerchantConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 154 'GetPaymentMerchantConfig' test.out

#- 155 UpdatePaymentDomainWhitelistConfig
samples/cli/sample-apps Platform updatePaymentDomainWhitelistConfig \
    --namespace $AB_NAMESPACE \
    --body '{"domains": ["vJB3brWAEsJSYxPR", "MWBqPowDIu3tOem4", "CUf1MNC1vP98AQf2"]}' \
    > test.out 2>&1
eval_tap $? 155 'UpdatePaymentDomainWhitelistConfig' test.out

#- 156 QueryPaymentNotifications
samples/cli/sample-apps Platform queryPaymentNotifications \
    --namespace $AB_NAMESPACE \
    --endDate 'uQwn6Ru4dcKX9Kwm' \
    --externalId 'zo9i7SMnq2fhr7Nl' \
    --limit '85' \
    --notificationSource 'ALIPAY' \
    --notificationType 'WLd5ikAKXOxDCNYi' \
    --offset '49' \
    --paymentOrderNo 'Ce0bvqFJnyexMlku' \
    --startDate 'SybU3ZmQqXp1G8mR' \
    --status 'WARN' \
    > test.out 2>&1
eval_tap $? 156 'QueryPaymentNotifications' test.out

#- 157 QueryPaymentOrders
samples/cli/sample-apps Platform queryPaymentOrders \
    --namespace $AB_NAMESPACE \
    --channel 'EXTERNAL' \
    --extTxId '3Zc5YO8Nkl6FHg1t' \
    --limit '33' \
    --offset '91' \
    --status 'AUTHORISE_FAILED' \
    > test.out 2>&1
eval_tap $? 157 'QueryPaymentOrders' test.out

#- 158 CreatePaymentOrderByDedicated
samples/cli/sample-apps Platform createPaymentOrderByDedicated \
    --namespace $AB_NAMESPACE \
    --body '{"currencyCode": "vYGxTyO0vBn2EiYz", "currencyNamespace": "3fd5WJ0fn8qS3GeB", "customParameters": {"RRrkxQxKpE8vV3HS": {}, "Wv15w9H1nBCewJy2": {}, "wpYKEwEP52mO1mog": {}}, "description": "SW1ZPGYUhQkxaFDr", "extOrderNo": "1AVMltSGinBLDbAR", "extUserId": "ty6YaksdiTKexnbe", "itemType": "INGAMEITEM", "language": "VTSy", "metadata": {"4YRH0H4EtbQzcnPS": "CgyziHqanuUcYNP9", "0yWmIxg9OVy6Blpl": "yHCAmxKwKoDbnbHg", "HgRoYvsOkkjmNInp": "KsMRX8BZ90y1G1sI"}, "notifyUrl": "H2jin64zy1Utmhg3", "omitNotification": true, "platform": "dQuQbclDjlYjTCwG", "price": 13, "recurringPaymentOrderNo": "HjFsWoUPIMfpDslP", "region": "VixtzXItH85P5BGw", "returnUrl": "UkSoBh0eikUxyMMc", "sandbox": false, "sku": "CeW4MKiRvoCSUAYY", "subscriptionId": "R2X5f3HcGmP2trVT", "targetNamespace": "22PCO8YYSXLuG5KH", "targetUserId": "ntrecTy25txrHrJE", "title": "AJ2s50BGk51tol6L"}' \
    > test.out 2>&1
eval_tap $? 158 'CreatePaymentOrderByDedicated' test.out

#- 159 ListExtOrderNoByExtTxId
samples/cli/sample-apps Platform listExtOrderNoByExtTxId \
    --namespace $AB_NAMESPACE \
    --extTxId 'wKR2NPdlqXJRTNe2' \
    > test.out 2>&1
eval_tap $? 159 'ListExtOrderNoByExtTxId' test.out

#- 160 GetPaymentOrder
samples/cli/sample-apps Platform getPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'BodbIFYaQGO5TZcd' \
    > test.out 2>&1
eval_tap $? 160 'GetPaymentOrder' test.out

#- 161 ChargePaymentOrder
samples/cli/sample-apps Platform chargePaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'GYlNzwSqIC5c3fCX' \
    --body '{"extTxId": "sLDrSVY2y2vqfA63", "paymentMethod": "7zm8EROL0nALZ7kd", "paymentProvider": "WALLET"}' \
    > test.out 2>&1
eval_tap $? 161 'ChargePaymentOrder' test.out

#- 162 RefundPaymentOrderByDedicated
samples/cli/sample-apps Platform refundPaymentOrderByDedicated \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'TZ58aobcvUyF8Xku' \
    --body '{"description": "VYOYMCitESP48Ibs"}' \
    > test.out 2>&1
eval_tap $? 162 'RefundPaymentOrderByDedicated' test.out

#- 163 SimulatePaymentOrderNotification
samples/cli/sample-apps Platform simulatePaymentOrderNotification \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'OfjAAVxo7bUcddVq' \
    --body '{"amount": 91, "currencyCode": "arYWrn9hg4m1SOZw", "notifyType": "REFUND", "paymentProvider": "WXPAY", "salesTax": 81, "vat": 72}' \
    > test.out 2>&1
eval_tap $? 163 'SimulatePaymentOrderNotification' test.out

#- 164 GetPaymentOrderChargeStatus
samples/cli/sample-apps Platform getPaymentOrderChargeStatus \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'fOy9Uyt6xWqDMKy8' \
    > test.out 2>&1
eval_tap $? 164 'GetPaymentOrderChargeStatus' test.out

#- 165 GetPsnEntitlementOwnership
samples/cli/sample-apps Platform getPsnEntitlementOwnership \
    --entitlementLabel '1q4mTx5lnaDBZCa5' \
    --namespace $AB_NAMESPACE \
    --body '{"accessToken": "igmbTvWV5LYwB8lU", "serviceLabel": 23}' \
    > test.out 2>&1
eval_tap $? 165 'GetPsnEntitlementOwnership' test.out

#- 166 GetXboxEntitlementOwnership
samples/cli/sample-apps Platform getXboxEntitlementOwnership \
    --namespace $AB_NAMESPACE \
    --productSku 'uZNo0RsJCmPqECcB' \
    --body '{"delegationToken": "16uTjU8dXHgfa7xf", "sandboxId": "yCuW0R2D7J4AdXet"}' \
    > test.out 2>&1
eval_tap $? 166 'GetXboxEntitlementOwnership' test.out

#- 167 GetPlatformEntitlementConfig
samples/cli/sample-apps Platform getPlatformEntitlementConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Steam' \
    > test.out 2>&1
eval_tap $? 167 'GetPlatformEntitlementConfig' test.out

#- 168 UpdatePlatformEntitlementConfig
samples/cli/sample-apps Platform updatePlatformEntitlementConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Oculus' \
    --body '{"allowedPlatformOrigins": ["Epic", "IOS", "Xbox"]}' \
    > test.out 2>&1
eval_tap $? 168 'UpdatePlatformEntitlementConfig' test.out

#- 169 GetPlatformWalletConfig
samples/cli/sample-apps Platform getPlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'GooglePlay' \
    > test.out 2>&1
eval_tap $? 169 'GetPlatformWalletConfig' test.out

#- 170 UpdatePlatformWalletConfig
samples/cli/sample-apps Platform updatePlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Oculus' \
    --body '{"allowedBalanceOrigins": ["Twitch", "Xbox", "GooglePlay"]}' \
    > test.out 2>&1
eval_tap $? 170 'UpdatePlatformWalletConfig' test.out

#- 171 ResetPlatformWalletConfig
samples/cli/sample-apps Platform resetPlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Other' \
    > test.out 2>&1
eval_tap $? 171 'ResetPlatformWalletConfig' test.out

#- 172 GetRevocationConfig
samples/cli/sample-apps Platform getRevocationConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 172 'GetRevocationConfig' test.out

#- 173 UpdateRevocationConfig
samples/cli/sample-apps Platform updateRevocationConfig \
    --namespace $AB_NAMESPACE \
    --body '{"entitlement": {"consumable": {"enabled": true, "strategy": "CUSTOM"}, "durable": {"enabled": true, "strategy": "CUSTOM"}}, "wallet": {"enabled": false, "strategy": "ALWAYS_REVOKE"}}' \
    > test.out 2>&1
eval_tap $? 173 'UpdateRevocationConfig' test.out

#- 174 DeleteRevocationConfig
samples/cli/sample-apps Platform deleteRevocationConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 174 'DeleteRevocationConfig' test.out

#- 175 QueryRevocationHistories
samples/cli/sample-apps Platform queryRevocationHistories \
    --namespace $AB_NAMESPACE \
    --endTime '0TzrtkalkfaHdaMz' \
    --limit '77' \
    --offset '51' \
    --source 'OTHER' \
    --startTime 'iwo2paZI158F8gHc' \
    --status 'FAIL' \
    --transactionId 'LZrQ0MOCpNbdDubN' \
    --userId '5WFIWs11xPXKC1RP' \
    > test.out 2>&1
eval_tap $? 175 'QueryRevocationHistories' test.out

#- 176 GetRevocationPluginConfig
samples/cli/sample-apps Platform getRevocationPluginConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 176 'GetRevocationPluginConfig' test.out

#- 177 UpdateRevocationPluginConfig
samples/cli/sample-apps Platform updateRevocationPluginConfig \
    --namespace $AB_NAMESPACE \
    --body '{"appConfig": {"appName": "HLk161iVvbVL5e2y"}, "customConfig": {"connectionType": "INSECURE", "grpcServerAddress": "XmC85OjwnkuRzvea"}, "extendType": "APP"}' \
    > test.out 2>&1
eval_tap $? 177 'UpdateRevocationPluginConfig' test.out

#- 178 DeleteRevocationPluginConfig
samples/cli/sample-apps Platform deleteRevocationPluginConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 178 'DeleteRevocationPluginConfig' test.out

#- 179 UploadRevocationPluginConfigCert
samples/cli/sample-apps Platform uploadRevocationPluginConfigCert \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 179 'UploadRevocationPluginConfigCert' test.out

#- 180 CreateReward
samples/cli/sample-apps Platform createReward \
    --namespace $AB_NAMESPACE \
    --body '{"description": "qqbyWX4hiB2Wh5yD", "eventTopic": "bpsLBthJB4hxJ8CE", "maxAwarded": 15, "maxAwardedPerUser": 91, "namespaceExpression": "fVrbxZUvfY5VLsq9", "rewardCode": "CpXmzsEnIrsKAioL", "rewardConditions": [{"condition": "650UWWDijRrRWfun", "conditionName": "fGwtOcn8cE5ZIUiw", "eventName": "HsfjKVvvLANqeN5l", "rewardItems": [{"duration": 6, "endDate": "1973-06-16T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "pX5F6iO10wOkD8RV", "quantity": 3, "sku": "DXDFauXxqNpOO8th"}, {"duration": 46, "endDate": "1985-12-20T00:00:00Z", "identityType": "ITEM_ID", "itemId": "6uM9AALBjNBB1Mgx", "quantity": 31, "sku": "CtTorlNuZfcdcmti"}, {"duration": 1, "endDate": "1971-04-23T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "7YpA9CViQNZFnqRv", "quantity": 34, "sku": "9Iw7DNGnQMVIw5Sx"}]}, {"condition": "6Ny0MgjtPgz3by7S", "conditionName": "QYwVVPSYNgy39Xbg", "eventName": "1k3JM6IMILlMefRd", "rewardItems": [{"duration": 94, "endDate": "1983-02-07T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "EJ40RMOuAUBbKcdY", "quantity": 10, "sku": "sc9HvZpRUjJW8t0v"}, {"duration": 85, "endDate": "1977-06-18T00:00:00Z", "identityType": "ITEM_ID", "itemId": "iqjAghR2UXAvC0Of", "quantity": 96, "sku": "5DVXiT2hyAFrbAZk"}, {"duration": 54, "endDate": "1980-03-25T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "h7tsdH0hruTYnuVs", "quantity": 4, "sku": "EkrCkg8C6lz8Tu3c"}]}, {"condition": "krnPlwfiN9CXPVet", "conditionName": "bxgIFAOg4FBRQk2I", "eventName": "5e5xIXZqzIGlxE9B", "rewardItems": [{"duration": 11, "endDate": "1981-07-19T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "3W5CsxP3NfpyPMU8", "quantity": 84, "sku": "VCDLfORMGcQ7pOFC"}, {"duration": 17, "endDate": "1982-07-02T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "atEW8XhtcNZLu3E4", "quantity": 46, "sku": "7sNfqI4ihHUJUjcO"}, {"duration": 38, "endDate": "1976-04-06T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "BCt2qUQHXFUu912f", "quantity": 53, "sku": "ly79hO146lgdglPm"}]}], "userIdExpression": "djmq96t4NHscziJG"}' \
    > test.out 2>&1
eval_tap $? 180 'CreateReward' test.out

#- 181 QueryRewards
samples/cli/sample-apps Platform queryRewards \
    --namespace $AB_NAMESPACE \
    --eventTopic 'Y8XjGqXpScJzZNgU' \
    --limit '42' \
    --offset '51' \
    --sortBy '["namespace:desc"]' \
    > test.out 2>&1
eval_tap $? 181 'QueryRewards' test.out

#- 182 ExportRewards
samples/cli/sample-apps Platform exportRewards \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 182 'ExportRewards' test.out

#- 183 ImportRewards
samples/cli/sample-apps Platform importRewards \
    --namespace $AB_NAMESPACE \
    --replaceExisting 'true' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 183 'ImportRewards' test.out

#- 184 GetReward
samples/cli/sample-apps Platform getReward \
    --namespace $AB_NAMESPACE \
    --rewardId '1eHdqh4FoYVv1ovi' \
    > test.out 2>&1
eval_tap $? 184 'GetReward' test.out

#- 185 UpdateReward
samples/cli/sample-apps Platform updateReward \
    --namespace $AB_NAMESPACE \
    --rewardId 'MrcG4HUPZBac3Pu0' \
    --body '{"description": "osZNeAsLNKNlLozi", "eventTopic": "OyxXOdxeSROlfwus", "maxAwarded": 23, "maxAwardedPerUser": 60, "namespaceExpression": "M07qyBgzJSCA0BkV", "rewardCode": "aHF0cWOSo4L5fosq", "rewardConditions": [{"condition": "HOuBOmOIA38D713U", "conditionName": "jhIXqrIh3rqlqq1g", "eventName": "hlSPDxCehmTVjl9i", "rewardItems": [{"duration": 93, "endDate": "1996-07-02T00:00:00Z", "identityType": "ITEM_ID", "itemId": "V4l9v35TFPlInntJ", "quantity": 49, "sku": "H2k99qaSua4R6Kpb"}, {"duration": 98, "endDate": "1976-08-16T00:00:00Z", "identityType": "ITEM_ID", "itemId": "2BQDJHoRXtsERx6K", "quantity": 6, "sku": "AyFyaTIdbBqMTK2t"}, {"duration": 31, "endDate": "1997-06-18T00:00:00Z", "identityType": "ITEM_ID", "itemId": "2ek0QIGNzIsQ67uy", "quantity": 4, "sku": "gdZ3Py9WD0IETqdi"}]}, {"condition": "27pGHDwgVsVicUoV", "conditionName": "eEhFFFSzH6v4i16z", "eventName": "20cJseA9rJQlYH9s", "rewardItems": [{"duration": 69, "endDate": "1992-06-15T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "XXZMEiNKSdSkvmqj", "quantity": 24, "sku": "caqG03NtPo1Ym3fs"}, {"duration": 23, "endDate": "1985-09-15T00:00:00Z", "identityType": "ITEM_ID", "itemId": "aZZAY4p6N4iU47uK", "quantity": 85, "sku": "ijQG0t0Ov6pv7Iv1"}, {"duration": 4, "endDate": "1990-12-30T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "gg5PLJ56Z8gzxAlX", "quantity": 88, "sku": "0CBBj44az5vC6G5Q"}]}, {"condition": "ONLCaoaxPBwg7KIY", "conditionName": "Yv9XZj6hrqyp3OC3", "eventName": "4u5jGHtYGB87oSFp", "rewardItems": [{"duration": 30, "endDate": "1973-02-05T00:00:00Z", "identityType": "ITEM_ID", "itemId": "u7cGoOQiuk6V8TG7", "quantity": 46, "sku": "2JISI39sCeZ8C7Bz"}, {"duration": 24, "endDate": "1980-11-08T00:00:00Z", "identityType": "ITEM_ID", "itemId": "BJn6LYLv2Si6v5oI", "quantity": 84, "sku": "Gi29aMo0znhM90ex"}, {"duration": 13, "endDate": "1983-12-03T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "PI59dvD8tChdohiZ", "quantity": 30, "sku": "wsl0FZi4IjqwefIx"}]}], "userIdExpression": "J9Ui7Oub29DGXJzN"}' \
    > test.out 2>&1
eval_tap $? 185 'UpdateReward' test.out

#- 186 DeleteReward
samples/cli/sample-apps Platform deleteReward \
    --namespace $AB_NAMESPACE \
    --rewardId 'qEYO9pBZePUxKh6C' \
    > test.out 2>&1
eval_tap $? 186 'DeleteReward' test.out

#- 187 CheckEventCondition
samples/cli/sample-apps Platform checkEventCondition \
    --namespace $AB_NAMESPACE \
    --rewardId 'c0tSrsDZAZ98p5Xs' \
    --body '{"payload": {"zrHiioqm6tvLdQoF": {}, "PfA9Tc29WxxA6T3g": {}, "p5OjxxnbUfbKNIGM": {}}}' \
    > test.out 2>&1
eval_tap $? 187 'CheckEventCondition' test.out

#- 188 DeleteRewardConditionRecord
samples/cli/sample-apps Platform deleteRewardConditionRecord \
    --namespace $AB_NAMESPACE \
    --rewardId 'LinYTPSpdBplmjPg' \
    --body '{"conditionName": "aF4ihnmoctBODCFE", "userId": "0hOPDPCHAfVCXEwS"}' \
    > test.out 2>&1
eval_tap $? 188 'DeleteRewardConditionRecord' test.out

#- 189 QuerySections
samples/cli/sample-apps Platform querySections \
    --namespace $AB_NAMESPACE \
    --end '3DYkVRbYvZQCpdqB' \
    --limit '8' \
    --offset '96' \
    --start 'QGqyprRCzVrwRKPF' \
    --storeId 'eNWxE20gWA8F9Gf3' \
    --viewId 'FSzE5PW31GxG9suJ' \
    > test.out 2>&1
eval_tap $? 189 'QuerySections' test.out

#- 190 CreateSection
samples/cli/sample-apps Platform createSection \
    --namespace $AB_NAMESPACE \
    --storeId 'euD7OulfOKKWmPld' \
    --body '{"active": true, "displayOrder": 11, "endDate": "1998-10-16T00:00:00Z", "ext": {"nipaogthnVssAzhw": {}, "hVZwLqqSSzLNTFRI": {}, "7Cgsk7fpKBV4yWQI": {}}, "fixedPeriodRotationConfig": {"backfillType": "NONE", "duration": 22, "itemCount": 51, "rule": "SEQUENCE"}, "items": [{"id": "Gt4yWDENQ7RPrnEz", "sku": "JmgwFhCrOhbqO52C"}, {"id": "juqOzS8hladrReq6", "sku": "OwK3DcTmRX8kzcvc"}, {"id": "pwdr6Lvg5gIrbdD3", "sku": "QdFKwfTzhzFNqYkJ"}], "localizations": {"RJ0iRSyguqDu8QhD": {"description": "6jkyY7hypIKZqRjM", "localExt": {"Lnzonl1VbKl3e5M8": {}, "6rsBjmYlO84UhNFQ": {}, "TX7IsbNzOoB78keg": {}}, "longDescription": "wnTfkwB1FOIlNDGL", "title": "ScRNnM1jePR3SPAp"}, "gbvoe3lqpt2JliLX": {"description": "AG6MoWm8zUcybiNT", "localExt": {"zHK4HlFQdqUdnZGr": {}, "UO8XxlDiXoLQK2RN": {}, "95E55jbzFhQLY1nz": {}}, "longDescription": "kisnoM0xkilYEhhp", "title": "uj8BOL10uRhct5GF"}, "uWlCsOUVCeqR5Tk3": {"description": "l1K1bQYKSvSXBLJl", "localExt": {"XMeInCaI6gf0jkqD": {}, "eyGN6GXODOPqf8VR": {}, "j6r8m6uYNAfGDGvR": {}}, "longDescription": "hUZpDbfOrR2QwtNJ", "title": "TyCCIOD1epH1ExPc"}}, "name": "HmEelpuARu9KOx3j", "rotationType": "NONE", "startDate": "1996-03-22T00:00:00Z", "viewId": "MJyaGTyjRIFF4jfc"}' \
    > test.out 2>&1
eval_tap $? 190 'CreateSection' test.out

#- 191 PurgeExpiredSection
samples/cli/sample-apps Platform purgeExpiredSection \
    --namespace $AB_NAMESPACE \
    --storeId 'LyOuF9vFsuaQgopk' \
    > test.out 2>&1
eval_tap $? 191 'PurgeExpiredSection' test.out

#- 192 GetSection
samples/cli/sample-apps Platform getSection \
    --namespace $AB_NAMESPACE \
    --sectionId 'CL64V4nw5naRRT7E' \
    --storeId 'MpCOjfd8wGuqobjI' \
    > test.out 2>&1
eval_tap $? 192 'GetSection' test.out

#- 193 UpdateSection
samples/cli/sample-apps Platform updateSection \
    --namespace $AB_NAMESPACE \
    --sectionId 'iWZtWv6tzrbSbC4A' \
    --storeId 'gnEi3591BwRiS1HM' \
    --body '{"active": true, "displayOrder": 66, "endDate": "1985-06-23T00:00:00Z", "ext": {"1UGYqkbg6fWdyN0l": {}, "Q03WRpaDhuhvvFZm": {}, "5Jl7clhQO4tMlVcS": {}}, "fixedPeriodRotationConfig": {"backfillType": "NONE", "duration": 83, "itemCount": 22, "rule": "SEQUENCE"}, "items": [{"id": "D32uzI1Wt9Qy2EST", "sku": "k7z5syTfbonONqUO"}, {"id": "M2ypWBAVgeJ9PN1S", "sku": "LcbERnZFNDipvAHZ"}, {"id": "Ph7sdP74UpRv9f6d", "sku": "jgmQNpxvNtlTQJzx"}], "localizations": {"btQDbQvsamdEIxNV": {"description": "qOGbx79oNN97Jg97", "localExt": {"jRx7uQsqsbi9ZCrE": {}, "LhSlc1FcXQmqSDPP": {}, "CmEiAXsyL00may2X": {}}, "longDescription": "dzWE4DrBQaXjiuon", "title": "GVeENGZ4I2bAWOLQ"}, "vMaD3VjYv2FOBXRb": {"description": "KnoWTWJg4PmgJcVW", "localExt": {"nq9CUw2VzIDqgsfP": {}, "UA3QjCYwNd7bhwa8": {}, "Mfhsdm7jMvaGgYCH": {}}, "longDescription": "B6er9cGVxUJP5CMV", "title": "bkCJHFOoh9XjJxRE"}, "WTv2AOspq4XSuI57": {"description": "zesc0e0Vwgc8Cs2X", "localExt": {"LQLedmQBnXXZ8vOp": {}, "jsh5QtMvdds1q4gN": {}, "znWqdzI3bo132duW": {}}, "longDescription": "DPTbxrnV3xm3GC69", "title": "eWja8mwoEbcR8Z9m"}}, "name": "wa7uOlmZcvbv0IsD", "rotationType": "FIXED_PERIOD", "startDate": "1978-11-16T00:00:00Z", "viewId": "TzIGHluVUri5Nang"}' \
    > test.out 2>&1
eval_tap $? 193 'UpdateSection' test.out

#- 194 DeleteSection
samples/cli/sample-apps Platform deleteSection \
    --namespace $AB_NAMESPACE \
    --sectionId '6t2HDtGe8ApHB7qA' \
    --storeId 'MOLuRSULTICFeVE4' \
    > test.out 2>&1
eval_tap $? 194 'DeleteSection' test.out

#- 195 ListStores
samples/cli/sample-apps Platform listStores \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 195 'ListStores' test.out

#- 196 CreateStore
samples/cli/sample-apps Platform createStore \
    --namespace $AB_NAMESPACE \
    --body '{"defaultLanguage": "g1YLIheE6M6bvJF0", "defaultRegion": "vK52ZYRg2kQNnd1f", "description": "nLaSaUb8nEssQIuz", "supportedLanguages": ["pqZY6y3pdZrHryOL", "HHqUcxzZaMSEEVQt", "jYQ78sIpFMCJIdK6"], "supportedRegions": ["83wPC9vpl7sdRpqA", "5pjnNtqnoscSsDYA", "rXbAeLumpoWOOVPl"], "title": "qtEr1ep32by2gFJJ"}' \
    > test.out 2>&1
eval_tap $? 196 'CreateStore' test.out

#- 197 GetCatalogDefinition
samples/cli/sample-apps Platform getCatalogDefinition \
    --namespace $AB_NAMESPACE \
    --catalogType 'SECTION' \
    > test.out 2>&1
eval_tap $? 197 'GetCatalogDefinition' test.out

#- 198 DownloadCSVTemplates
samples/cli/sample-apps Platform downloadCSVTemplates \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 198 'DownloadCSVTemplates' test.out

#- 199 ExportStoreByCSV
samples/cli/sample-apps Platform exportStoreByCSV \
    --namespace $AB_NAMESPACE \
    --body '{"catalogType": "CATEGORY", "fieldsToBeIncluded": ["Lja581lhhKLT6I8M", "m5AzM3lXCLdy8pkE", "o57LNOp6fUKyzxVM"], "idsToBeExported": ["lrVtLNCB1swysxCV", "2Nf0xUYrfPqLzwoF", "QM7FGpClsvEBSTPp"], "storeId": "LQy6CaxT4IUgvywg"}' \
    > test.out 2>&1
eval_tap $? 199 'ExportStoreByCSV' test.out

#- 200 ImportStore
eval_tap 0 200 'ImportStore # SKIP deprecated' test.out

#- 201 GetPublishedStore
samples/cli/sample-apps Platform getPublishedStore \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 201 'GetPublishedStore' test.out

#- 202 DeletePublishedStore
samples/cli/sample-apps Platform deletePublishedStore \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 202 'DeletePublishedStore' test.out

#- 203 GetPublishedStoreBackup
samples/cli/sample-apps Platform getPublishedStoreBackup \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 203 'GetPublishedStoreBackup' test.out

#- 204 RollbackPublishedStore
samples/cli/sample-apps Platform rollbackPublishedStore \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 204 'RollbackPublishedStore' test.out

#- 205 GetStore
samples/cli/sample-apps Platform getStore \
    --namespace $AB_NAMESPACE \
    --storeId 'LWaV8fogZ3xi35Gw' \
    > test.out 2>&1
eval_tap $? 205 'GetStore' test.out

#- 206 UpdateStore
samples/cli/sample-apps Platform updateStore \
    --namespace $AB_NAMESPACE \
    --storeId '8c0NFR83j17w8jy8' \
    --body '{"defaultLanguage": "bT7rJAinr9wItfpR", "defaultRegion": "awNjS003mjGtmZKR", "description": "qqaTiCtqSbTeQciu", "supportedLanguages": ["2LEINU6oXX9GowAq", "nZaZMJZNw50OPkdr", "GS6wD49bTZMRvnaF"], "supportedRegions": ["JbRMtrLHC7mPePsJ", "spjWPok9G4JUvZI7", "Euo7j5Wx0r2kISHx"], "title": "unA3OeIJWzR9aRvJ"}' \
    > test.out 2>&1
eval_tap $? 206 'UpdateStore' test.out

#- 207 DeleteStore
samples/cli/sample-apps Platform deleteStore \
    --namespace $AB_NAMESPACE \
    --storeId 'jDMfOjmVivt3dCyW' \
    > test.out 2>&1
eval_tap $? 207 'DeleteStore' test.out

#- 208 QueryChanges
samples/cli/sample-apps Platform queryChanges \
    --namespace $AB_NAMESPACE \
    --storeId '8Pb89iqBDp3xWwOb' \
    --action 'UPDATE' \
    --itemSku 'at1owx9j7g4sZAo9' \
    --itemType 'INGAMEITEM' \
    --limit '58' \
    --offset '96' \
    --selected 'false' \
    --sortBy '["updatedAt:asc", "createdAt:desc"]' \
    --status 'UNPUBLISHED' \
    --type 'STORE' \
    --updatedAtEnd 'rj0GjYVeIOqMUd9S' \
    --updatedAtStart 'BLV2OuZRUgWL51JP' \
    --withTotal 'false' \
    > test.out 2>&1
eval_tap $? 208 'QueryChanges' test.out

#- 209 PublishAll
samples/cli/sample-apps Platform publishAll \
    --namespace $AB_NAMESPACE \
    --storeId 'vWBQfR3J8DuPvkpd' \
    > test.out 2>&1
eval_tap $? 209 'PublishAll' test.out

#- 210 PublishSelected
samples/cli/sample-apps Platform publishSelected \
    --namespace $AB_NAMESPACE \
    --storeId 'HAfOGmrjmkax10OC' \
    > test.out 2>&1
eval_tap $? 210 'PublishSelected' test.out

#- 211 SelectAllRecords
samples/cli/sample-apps Platform selectAllRecords \
    --namespace $AB_NAMESPACE \
    --storeId 'Pnul4RwD0wnobk5F' \
    > test.out 2>&1
eval_tap $? 211 'SelectAllRecords' test.out

#- 212 SelectAllRecordsByCriteria
samples/cli/sample-apps Platform selectAllRecordsByCriteria \
    --namespace $AB_NAMESPACE \
    --storeId '2I4O58ugNSUaJtvc' \
    --action 'DELETE' \
    --itemSku 'VjSRrc1uUgr0c0Im' \
    --itemType 'LOOTBOX' \
    --selected 'true' \
    --type 'STORE' \
    --updatedAtEnd 'c0HyNexqcmLK4xK1' \
    --updatedAtStart 'RCEyFDsWy4pfXOyg' \
    > test.out 2>&1
eval_tap $? 212 'SelectAllRecordsByCriteria' test.out

#- 213 GetStatistic
samples/cli/sample-apps Platform getStatistic \
    --namespace $AB_NAMESPACE \
    --storeId 'p32tlMv1p5OLGZ3x' \
    --action 'CREATE' \
    --itemSku '7cVv367mplHropml' \
    --itemType 'APP' \
    --type 'SECTION' \
    --updatedAtEnd 'QiS856W91uy5qVZq' \
    --updatedAtStart 'QXOCxCTJd8aYgbfl' \
    > test.out 2>&1
eval_tap $? 213 'GetStatistic' test.out

#- 214 UnselectAllRecords
samples/cli/sample-apps Platform unselectAllRecords \
    --namespace $AB_NAMESPACE \
    --storeId 'NyGv3r23NWgtEFtu' \
    > test.out 2>&1
eval_tap $? 214 'UnselectAllRecords' test.out

#- 215 SelectRecord
samples/cli/sample-apps Platform selectRecord \
    --changeId 'gmmY5mO9E2NrRZ2m' \
    --namespace $AB_NAMESPACE \
    --storeId 'MAXAUrsPoOc441Wf' \
    > test.out 2>&1
eval_tap $? 215 'SelectRecord' test.out

#- 216 UnselectRecord
samples/cli/sample-apps Platform unselectRecord \
    --changeId '0u7z100TjnGpu4tT' \
    --namespace $AB_NAMESPACE \
    --storeId 'mTLQu2Qe528lfssP' \
    > test.out 2>&1
eval_tap $? 216 'UnselectRecord' test.out

#- 217 CloneStore
samples/cli/sample-apps Platform cloneStore \
    --namespace $AB_NAMESPACE \
    --storeId 'IFT20TrFcY3Ojov4' \
    --targetStoreId '774NE1VISYMGUiwz' \
    > test.out 2>&1
eval_tap $? 217 'CloneStore' test.out

#- 218 ExportStore
eval_tap 0 218 'ExportStore # SKIP deprecated' test.out

#- 219 QueryImportHistory
samples/cli/sample-apps Platform queryImportHistory \
    --namespace $AB_NAMESPACE \
    --storeId 'MnuVCB6ZkeDXyPmP' \
    --end 'IKmFxpEOHUvTYgO4' \
    --limit '41' \
    --offset '31' \
    --sortBy 'g81oiQARclVwkaiW' \
    --start 'Tto6warkFsYU8He0' \
    --success 'true' \
    > test.out 2>&1
eval_tap $? 219 'QueryImportHistory' test.out

#- 220 ImportStoreByCSV
samples/cli/sample-apps Platform importStoreByCSV \
    --namespace $AB_NAMESPACE \
    --storeId 'yphLKKa0Y3MS9Vrl' \
    --category 'tmp.dat' \
    --display 'tmp.dat' \
    --item 'tmp.dat' \
    --notes '2oK2I0Xtn3RsyXBs' \
    --section 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 220 'ImportStoreByCSV' test.out

#- 221 QuerySubscriptions
samples/cli/sample-apps Platform querySubscriptions \
    --namespace $AB_NAMESPACE \
    --chargeStatus 'SETUP' \
    --itemId 'khcCrgiWCESJYKmf' \
    --limit '55' \
    --offset '23' \
    --sku '84y4eAQtNqK8KM0D' \
    --status 'INIT' \
    --subscribedBy 'PLATFORM' \
    --userId 'WBg55BWFPvbh65o8' \
    > test.out 2>&1
eval_tap $? 221 'QuerySubscriptions' test.out

#- 222 RecurringChargeSubscription
samples/cli/sample-apps Platform recurringChargeSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId '3DYWe0Zi52t7BXtI' \
    > test.out 2>&1
eval_tap $? 222 'RecurringChargeSubscription' test.out

#- 223 GetTicketDynamic
samples/cli/sample-apps Platform getTicketDynamic \
    --boothName '4pdbBoLd0Wi5DaGg' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 223 'GetTicketDynamic' test.out

#- 224 DecreaseTicketSale
samples/cli/sample-apps Platform decreaseTicketSale \
    --boothName 'ZgoCaIbmdxlTOlIx' \
    --namespace $AB_NAMESPACE \
    --body '{"orderNo": "5wY5753G3ktGOQcb"}' \
    > test.out 2>&1
eval_tap $? 224 'DecreaseTicketSale' test.out

#- 225 GetTicketBoothID
samples/cli/sample-apps Platform getTicketBoothID \
    --boothName 'FEYZewhc9t815BtM' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 225 'GetTicketBoothID' test.out

#- 226 IncreaseTicketSale
samples/cli/sample-apps Platform increaseTicketSale \
    --boothName 'GicGSERMrTqG23jI' \
    --namespace $AB_NAMESPACE \
    --body '{"count": 63, "orderNo": "oABWlbjzSnXKelAC"}' \
    > test.out 2>&1
eval_tap $? 226 'IncreaseTicketSale' test.out

#- 227 Commit
samples/cli/sample-apps Platform commit \
    --namespace $AB_NAMESPACE \
    --body '{"actions": [{"operations": [{"creditPayload": {"balanceOrigin": "Twitch", "count": 76, "currencyCode": "vc9zuIJbdJ2pUJJk", "expireAt": "1992-12-30T00:00:00Z"}, "debitPayload": {"count": 22, "currencyCode": "5FvnWT0k5MNmdzMB", "walletPlatform": "Nintendo"}, "fulFillItemPayload": {"count": 89, "entitlementCollectionId": "9qOZOzlX1Ox7KSq7", "entitlementOrigin": "Twitch", "itemIdentity": "4P3upraQhmyRM8iS", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 44, "entitlementId": "iyPS43VYtLjfbAPr"}, "type": "DEBIT_WALLET"}, {"creditPayload": {"balanceOrigin": "System", "count": 90, "currencyCode": "AdRUWFKtMbpD6LJg", "expireAt": "1984-09-11T00:00:00Z"}, "debitPayload": {"count": 36, "currencyCode": "CZETn4u2dvJTZLnj", "walletPlatform": "Nintendo"}, "fulFillItemPayload": {"count": 24, "entitlementCollectionId": "8OTJrwTSYlRl4Lwu", "entitlementOrigin": "Xbox", "itemIdentity": "JVDq9lLDexzP3Qfn", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 79, "entitlementId": "wMar78aRMBHiNHDT"}, "type": "REVOKE_ENTITLEMENT"}, {"creditPayload": {"balanceOrigin": "Nintendo", "count": 17, "currencyCode": "95T1Bj0LtQ35PBbq", "expireAt": "1976-06-28T00:00:00Z"}, "debitPayload": {"count": 58, "currencyCode": "s2hQYMSjxVHjSKc0", "walletPlatform": "Steam"}, "fulFillItemPayload": {"count": 52, "entitlementCollectionId": "89DUp47HN5uX59on", "entitlementOrigin": "Epic", "itemIdentity": "a0J8rdSrIPDLKPKk", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 56, "entitlementId": "WuIDa5wcYc2g6pVJ"}, "type": "FULFILL_ITEM"}], "userId": "Fb4b19GfoJmfTZHI"}, {"operations": [{"creditPayload": {"balanceOrigin": "GooglePlay", "count": 33, "currencyCode": "ROeK1MpiQbJ4dfl2", "expireAt": "1982-12-16T00:00:00Z"}, "debitPayload": {"count": 60, "currencyCode": "L95YTi90sYCEeAj6", "walletPlatform": "Xbox"}, "fulFillItemPayload": {"count": 2, "entitlementCollectionId": "olRJMLaUXsglPGOP", "entitlementOrigin": "System", "itemIdentity": "z6Nzqlo9Ee0PGXiF", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 92, "entitlementId": "zqAnhIkdQ8UOtITo"}, "type": "REVOKE_ENTITLEMENT"}, {"creditPayload": {"balanceOrigin": "GooglePlay", "count": 30, "currencyCode": "fpONzALRSKtjDnKu", "expireAt": "1999-01-12T00:00:00Z"}, "debitPayload": {"count": 78, "currencyCode": "FFI3eRzDDqY6gmqn", "walletPlatform": "Nintendo"}, "fulFillItemPayload": {"count": 29, "entitlementCollectionId": "6irapGUxYVpksRUC", "entitlementOrigin": "Nintendo", "itemIdentity": "7SpWTX18fnabHeZ8", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 9, "entitlementId": "eSTeiI233C6y8XFm"}, "type": "DEBIT_WALLET"}, {"creditPayload": {"balanceOrigin": "Playstation", "count": 33, "currencyCode": "h0bn2llR2yehvRXO", "expireAt": "1977-08-25T00:00:00Z"}, "debitPayload": {"count": 93, "currencyCode": "wEiJKffbbNcI5iut", "walletPlatform": "Nintendo"}, "fulFillItemPayload": {"count": 32, "entitlementCollectionId": "moDLbIvwysFcu8a2", "entitlementOrigin": "Playstation", "itemIdentity": "y70lES3cbFVaAExF", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 82, "entitlementId": "lOMGyVtcJ1eYMdS1"}, "type": "FULFILL_ITEM"}], "userId": "Hxo61Ts6ofnnWiZ6"}, {"operations": [{"creditPayload": {"balanceOrigin": "Other", "count": 10, "currencyCode": "6aqBjWSwdZXLOken", "expireAt": "1975-07-04T00:00:00Z"}, "debitPayload": {"count": 82, "currencyCode": "mYzKGEEupY8B2FaP", "walletPlatform": "IOS"}, "fulFillItemPayload": {"count": 94, "entitlementCollectionId": "Fg8WKjvq4MQoUf7A", "entitlementOrigin": "Steam", "itemIdentity": "YUKw3H3QTnZkUyPv", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 72, "entitlementId": "qTmUaW4louXIbckt"}, "type": "FULFILL_ITEM"}, {"creditPayload": {"balanceOrigin": "System", "count": 48, "currencyCode": "mpDylYWjnTxHiRsf", "expireAt": "1992-07-30T00:00:00Z"}, "debitPayload": {"count": 85, "currencyCode": "WKMZTbc5eZi7hRTl", "walletPlatform": "Other"}, "fulFillItemPayload": {"count": 8, "entitlementCollectionId": "gAAIHLxNTzxNIDOk", "entitlementOrigin": "IOS", "itemIdentity": "h8bz2elBN3tfSfQT", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 93, "entitlementId": "gYfoKromnRMdByAo"}, "type": "REVOKE_ENTITLEMENT"}, {"creditPayload": {"balanceOrigin": "Playstation", "count": 99, "currencyCode": "lCXNhSSdnrql8uM6", "expireAt": "1996-10-01T00:00:00Z"}, "debitPayload": {"count": 85, "currencyCode": "pCpI3nKYjqM6j37P", "walletPlatform": "Other"}, "fulFillItemPayload": {"count": 43, "entitlementCollectionId": "pN3bulpTwWv1VwNL", "entitlementOrigin": "System", "itemIdentity": "VsnEMKsEDARoQQgD", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 98, "entitlementId": "JxYUPwUFEnPIrkki"}, "type": "DEBIT_WALLET"}], "userId": "a6Itg2oLSOViwYEd"}], "metadata": {"ZMD9SopttEGPyrie": {}, "SBcBneUnth0X6kyj": {}, "BEJ9mNhoSMrY2Gyp": {}}, "needPreCheck": false, "transactionId": "GipJM8qQI9wKe4Tl", "type": "nBPiapm8tWOvOJE5"}' \
    > test.out 2>&1
eval_tap $? 227 'Commit' test.out

#- 228 GetTradeHistoryByCriteria
samples/cli/sample-apps Platform getTradeHistoryByCriteria \
    --namespace $AB_NAMESPACE \
    --limit '62' \
    --offset '80' \
    --status 'SUCCESS' \
    --type 'Bo2EZznyJBmG8dVo' \
    --userId 'p1gtnIYOC8zDm4ue' \
    > test.out 2>&1
eval_tap $? 228 'GetTradeHistoryByCriteria' test.out

#- 229 GetTradeHistoryByTransactionId
samples/cli/sample-apps Platform getTradeHistoryByTransactionId \
    --namespace $AB_NAMESPACE \
    --transactionId 'XF0Ced0oP1zs4m1c' \
    > test.out 2>&1
eval_tap $? 229 'GetTradeHistoryByTransactionId' test.out

#- 230 UnlockSteamUserAchievement
samples/cli/sample-apps Platform unlockSteamUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'n4XH80C5o7eUx4z1' \
    --body '{"achievements": [{"id": "y5pFAhW4kELlwCQI", "value": 47}, {"id": "iiEgotEVH5JFsicA", "value": 66}, {"id": "qGTuVQPwQKxfjFyb", "value": 27}], "steamUserId": "bzpXPmZGCWoBL2Y3"}' \
    > test.out 2>&1
eval_tap $? 230 'UnlockSteamUserAchievement' test.out

#- 231 GetXblUserAchievements
samples/cli/sample-apps Platform getXblUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId 'VKLFVhLiaqdVitIO' \
    --xboxUserId 'u9nOBR3d3D1poXkn' \
    > test.out 2>&1
eval_tap $? 231 'GetXblUserAchievements' test.out

#- 232 UpdateXblUserAchievement
samples/cli/sample-apps Platform updateXblUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'fdHBQo2Ue4w5nUog' \
    --body '{"achievements": [{"id": "2EOJO1Q47voVtplG", "percentComplete": 94}, {"id": "lKaIP0sCRr1bNdlv", "percentComplete": 57}, {"id": "X5ygOtGqdThXrwSo", "percentComplete": 98}], "serviceConfigId": "B3LSgU1bP8YosEBJ", "titleId": "uvgR54BFuGIhFxgf", "xboxUserId": "ik5Oo6WEPB6B6O7c"}' \
    > test.out 2>&1
eval_tap $? 232 'UpdateXblUserAchievement' test.out

#- 233 AnonymizeCampaign
samples/cli/sample-apps Platform anonymizeCampaign \
    --namespace $AB_NAMESPACE \
    --userId 'l8a8ONu1lqLt9MNI' \
    > test.out 2>&1
eval_tap $? 233 'AnonymizeCampaign' test.out

#- 234 AnonymizeEntitlement
samples/cli/sample-apps Platform anonymizeEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'xrmtuv4GEmcHiWPN' \
    > test.out 2>&1
eval_tap $? 234 'AnonymizeEntitlement' test.out

#- 235 AnonymizeFulfillment
samples/cli/sample-apps Platform anonymizeFulfillment \
    --namespace $AB_NAMESPACE \
    --userId 'Br6w0l4zJk2zZ2E4' \
    > test.out 2>&1
eval_tap $? 235 'AnonymizeFulfillment' test.out

#- 236 AnonymizeIntegration
samples/cli/sample-apps Platform anonymizeIntegration \
    --namespace $AB_NAMESPACE \
    --userId 'lKq0FylvGkIfT5qg' \
    > test.out 2>&1
eval_tap $? 236 'AnonymizeIntegration' test.out

#- 237 AnonymizeOrder
samples/cli/sample-apps Platform anonymizeOrder \
    --namespace $AB_NAMESPACE \
    --userId 'dhkHr6J9naA5ikgo' \
    > test.out 2>&1
eval_tap $? 237 'AnonymizeOrder' test.out

#- 238 AnonymizePayment
samples/cli/sample-apps Platform anonymizePayment \
    --namespace $AB_NAMESPACE \
    --userId '8oPwLoljvWIbo3lf' \
    > test.out 2>&1
eval_tap $? 238 'AnonymizePayment' test.out

#- 239 AnonymizeRevocation
samples/cli/sample-apps Platform anonymizeRevocation \
    --namespace $AB_NAMESPACE \
    --userId 'S3IFxFZCAIuH7Roj' \
    > test.out 2>&1
eval_tap $? 239 'AnonymizeRevocation' test.out

#- 240 AnonymizeSubscription
samples/cli/sample-apps Platform anonymizeSubscription \
    --namespace $AB_NAMESPACE \
    --userId '2RVhF7jq4b6xkYZk' \
    > test.out 2>&1
eval_tap $? 240 'AnonymizeSubscription' test.out

#- 241 AnonymizeWallet
samples/cli/sample-apps Platform anonymizeWallet \
    --namespace $AB_NAMESPACE \
    --userId 'Puairsot5biLwXlK' \
    > test.out 2>&1
eval_tap $? 241 'AnonymizeWallet' test.out

#- 242 GetUserDLCByPlatform
samples/cli/sample-apps Platform getUserDLCByPlatform \
    --namespace $AB_NAMESPACE \
    --userId '5v4w7Tmb57Uc3LUN' \
    --type 'STEAM' \
    > test.out 2>&1
eval_tap $? 242 'GetUserDLCByPlatform' test.out

#- 243 GetUserDLC
samples/cli/sample-apps Platform getUserDLC \
    --namespace $AB_NAMESPACE \
    --userId '2PmeNaLEQw2mHcyN' \
    --includeAllNamespaces 'true' \
    --status 'FULFILLED' \
    --type 'EPICGAMES' \
    > test.out 2>&1
eval_tap $? 243 'GetUserDLC' test.out

#- 244 QueryUserEntitlements
samples/cli/sample-apps Platform queryUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'hHhu8FY0VzRrJYCi' \
    --activeOnly 'true' \
    --appType 'SOFTWARE' \
    --collectionId 'S3LM2CaBv5zooyen' \
    --entitlementClazz 'MEDIA' \
    --entitlementName 'UetymxEwVT9t4zvq' \
    --features '["DjKGfvMwAiqfKqWn", "WvkrDOlEP5v6Et10", "py3eu2U3q1GAD0rE"]' \
    --fuzzyMatchName 'true' \
    --itemId '["92fHjrelmA5MDF22", "M0Ce9mlcfTNqIYs5", "xlccIcmmmvcxnZ4q"]' \
    --limit '41' \
    --offset '47' \
    --origin 'Xbox' \
    > test.out 2>&1
eval_tap $? 244 'QueryUserEntitlements' test.out

#- 245 GrantUserEntitlement
samples/cli/sample-apps Platform grantUserEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'XGC8O8PKdJpKkjpC' \
    --body '[{"collectionId": "plKMx1bHJoqDn3lw", "endDate": "1985-07-28T00:00:00Z", "grantedCode": "W2Db1bY3lAf5EKPQ", "itemId": "G5wEaeFBtE5vtdZ1", "itemNamespace": "GCqRkXaDxGA7jNIg", "language": "FhC", "metadata": {"XtT8KvugbjrQkxH3": {}, "5tUdUz0oowdKzywb": {}, "eOqx96DGxo2h1XFV": {}}, "origin": "Steam", "quantity": 86, "region": "HxnL21COsoEy4WMl", "source": "PURCHASE", "startDate": "1980-09-30T00:00:00Z", "storeId": "HclXvWUaw13b90oS"}, {"collectionId": "RZ2KhETiz6NEDggT", "endDate": "1979-01-11T00:00:00Z", "grantedCode": "koyvTfP94obFJ4AM", "itemId": "Zy6Lqud6WdjtVwjV", "itemNamespace": "NfvZbMzygTSZB3Za", "language": "rc_Hz", "metadata": {"o83wxOegecZWSv9s": {}, "lw5kIxkRqJVIiHrU": {}, "l2xxEV3Qjpwa9ePu": {}}, "origin": "IOS", "quantity": 52, "region": "xguZ11tSCUOSicty", "source": "GIFT", "startDate": "1972-09-14T00:00:00Z", "storeId": "jKzzOTcCNRivqVJ4"}, {"collectionId": "ymorDVD1ZmYUf0zP", "endDate": "1990-05-11T00:00:00Z", "grantedCode": "trhMt6I2hKT87vKv", "itemId": "jWtW98zriwbD8u4x", "itemNamespace": "YXFZNj87RohSuHNo", "language": "Fva", "metadata": {"G81r2bT7K3Opfp3d": {}, "RBe4mLeHSsdBPD8S": {}, "RTR5aJtfuODz6ZyB": {}}, "origin": "Epic", "quantity": 63, "region": "O5Hg53RzupfEka5u", "source": "OTHER", "startDate": "1973-08-22T00:00:00Z", "storeId": "uiOy5l5LnbGiBolJ"}]' \
    > test.out 2>&1
eval_tap $? 245 'GrantUserEntitlement' test.out

#- 246 GetUserAppEntitlementByAppId
samples/cli/sample-apps Platform getUserAppEntitlementByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'TXRgUE6W7O5cxsAd' \
    --activeOnly 'true' \
    --appId 'NYzVRN6wm21R1Uf2' \
    > test.out 2>&1
eval_tap $? 246 'GetUserAppEntitlementByAppId' test.out

#- 247 QueryUserEntitlementsByAppType
samples/cli/sample-apps Platform queryUserEntitlementsByAppType \
    --namespace $AB_NAMESPACE \
    --userId 'EvOaMxRfROanf0cp' \
    --activeOnly 'false' \
    --limit '85' \
    --offset '78' \
    --appType 'GAME' \
    > test.out 2>&1
eval_tap $? 247 'QueryUserEntitlementsByAppType' test.out

#- 248 GetUserEntitlementByItemId
samples/cli/sample-apps Platform getUserEntitlementByItemId \
    --namespace $AB_NAMESPACE \
    --userId '2p7Oo3s5QZ8XlJQ3' \
    --activeOnly 'true' \
    --entitlementClazz 'LOOTBOX' \
    --platform 'URCvEyg6Hk23kuV2' \
    --itemId 'kSKCNec4s8gjPXjD' \
    > test.out 2>&1
eval_tap $? 248 'GetUserEntitlementByItemId' test.out

#- 249 GetUserActiveEntitlementsByItemIds
samples/cli/sample-apps Platform getUserActiveEntitlementsByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'yDwlLimmETpiT98Z' \
    --ids '["CAhjYV9ESkmLi3T4", "XYsZJdWCG07GvubV", "101gzO18pW274EAE"]' \
    --platform 'tuIbWl0f05eCA8Nj' \
    > test.out 2>&1
eval_tap $? 249 'GetUserActiveEntitlementsByItemIds' test.out

#- 250 GetUserEntitlementBySku
samples/cli/sample-apps Platform getUserEntitlementBySku \
    --namespace $AB_NAMESPACE \
    --userId 'yd3nN0dCFqvDxufX' \
    --activeOnly 'true' \
    --entitlementClazz 'MEDIA' \
    --platform 'oBgO3CeVDqvCXc81' \
    --sku '4I1AgDHPFRMEc6UT' \
    > test.out 2>&1
eval_tap $? 250 'GetUserEntitlementBySku' test.out

#- 251 ExistsAnyUserActiveEntitlement
samples/cli/sample-apps Platform existsAnyUserActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'FOhSwr1FBezXTpvV' \
    --appIds '["5kk96hHUg8vEwEo3", "8XomF1x5lK6M2OWx", "DbpfbP5xp6c35lBt"]' \
    --itemIds '["l5cFe7AAG3kA41Xr", "MkH08BL2BJLvdrpP", "5LL0B1mGl0qMtNWv"]' \
    --platform 'NEclu12bG656kAEp' \
    --skus '["A6WsvzGyoEgQEyDJ", "SJTXgBpu7H9qvcKd", "b01qUdk5VPQNma1j"]' \
    > test.out 2>&1
eval_tap $? 251 'ExistsAnyUserActiveEntitlement' test.out

#- 252 ExistsAnyUserActiveEntitlementByItemIds
samples/cli/sample-apps Platform existsAnyUserActiveEntitlementByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'IedF3Y6JpL3lLNNX' \
    --platform 'I18aL8ewotvPWURX' \
    --itemIds '["TNfHjYyflFY9xpqR", "HZmSptY6uwnJE6zg", "H4UA9TMX44X8lXbW"]' \
    > test.out 2>&1
eval_tap $? 252 'ExistsAnyUserActiveEntitlementByItemIds' test.out

#- 253 GetUserAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform getUserAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --userId '22u4s6bxM2ScnoYS' \
    --appId 'qyrgYS9VCF6EhQKG' \
    > test.out 2>&1
eval_tap $? 253 'GetUserAppEntitlementOwnershipByAppId' test.out

#- 254 GetUserEntitlementOwnershipByItemId
samples/cli/sample-apps Platform getUserEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'h1LsqST9C2Os8r92' \
    --entitlementClazz 'OPTIONBOX' \
    --platform '16wFvogRLvCwXpSK' \
    --itemId 'PN1qRqBYlf9DGkOA' \
    > test.out 2>&1
eval_tap $? 254 'GetUserEntitlementOwnershipByItemId' test.out

#- 255 GetUserEntitlementOwnershipByItemIds
samples/cli/sample-apps Platform getUserEntitlementOwnershipByItemIds \
    --namespace $AB_NAMESPACE \
    --userId '4ZcQgeBmavTuhTPM' \
    --ids '["6wSErTQVRAsl0TF5", "5usqjiUVmWdi1Q72", "jIY4FUI1PGHJ9Lfi"]' \
    --platform 'yWTEIPTxsER2mGFi' \
    > test.out 2>&1
eval_tap $? 255 'GetUserEntitlementOwnershipByItemIds' test.out

#- 256 GetUserEntitlementOwnershipBySku
samples/cli/sample-apps Platform getUserEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --userId 'UGNV04mITYHngFvf' \
    --entitlementClazz 'APP' \
    --platform 'kWi53yJiTfrRxUJc' \
    --sku 'xAOSzk8wiJE7QitR' \
    > test.out 2>&1
eval_tap $? 256 'GetUserEntitlementOwnershipBySku' test.out

#- 257 RevokeAllEntitlements
samples/cli/sample-apps Platform revokeAllEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'FzMUPtzwtIVmpMPA' \
    > test.out 2>&1
eval_tap $? 257 'RevokeAllEntitlements' test.out

#- 258 RevokeUserEntitlements
samples/cli/sample-apps Platform revokeUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId '23maJXCqYD2IidZK' \
    --entitlementIds 'WnegfM4tpTDIzXWC' \
    > test.out 2>&1
eval_tap $? 258 'RevokeUserEntitlements' test.out

#- 259 GetUserEntitlement
samples/cli/sample-apps Platform getUserEntitlement \
    --entitlementId '2yibr8wEWTaghZqa' \
    --namespace $AB_NAMESPACE \
    --userId 'CQBvCCM0FPyViFqd' \
    > test.out 2>&1
eval_tap $? 259 'GetUserEntitlement' test.out

#- 260 UpdateUserEntitlement
samples/cli/sample-apps Platform updateUserEntitlement \
    --entitlementId 'MTPP0VwZVUsMxUEV' \
    --namespace $AB_NAMESPACE \
    --userId 't4D3LrwTdGYVHZtg' \
    --body '{"collectionId": "3Y3WzkUYj3ypcaB9", "endDate": "1998-05-08T00:00:00Z", "nullFieldList": ["OFPiqdTUdGVC6JHl", "aybQQukfVuFqiY02", "gzzj5dFYRzKamvuk"], "origin": "Epic", "reason": "4yV5nff4sNyHEqsB", "startDate": "1997-01-09T00:00:00Z", "status": "CONSUMED", "useCount": 88}' \
    > test.out 2>&1
eval_tap $? 260 'UpdateUserEntitlement' test.out

#- 261 ConsumeUserEntitlement
samples/cli/sample-apps Platform consumeUserEntitlement \
    --entitlementId '5HWPtGuipBCggAKO' \
    --namespace $AB_NAMESPACE \
    --userId 'WCZPPYsmTc28X8HO' \
    --body '{"metadata": {"Y9m4M5B4fj0by13j": {}, "KGhDgevDFdQ7ID1u": {}, "NbxPawOJ8YifNPSo": {}}, "options": ["naZYw9HQnMqi64la", "1PMVC21Fn7lUz49h", "lghTln5z31m8ts9N"], "platform": "osKWXugemYUBEiSM", "requestId": "tkZ8mwuomAMFDhjB", "useCount": 93}' \
    > test.out 2>&1
eval_tap $? 261 'ConsumeUserEntitlement' test.out

#- 262 DisableUserEntitlement
samples/cli/sample-apps Platform disableUserEntitlement \
    --entitlementId 'x0ss7UE6lDTsXDlW' \
    --namespace $AB_NAMESPACE \
    --userId '0oEYxL61RVv9iacM' \
    > test.out 2>&1
eval_tap $? 262 'DisableUserEntitlement' test.out

#- 263 EnableUserEntitlement
samples/cli/sample-apps Platform enableUserEntitlement \
    --entitlementId 'c9xZ1MABqtAWOvzU' \
    --namespace $AB_NAMESPACE \
    --userId 'h36xnhJoUkeKwlrz' \
    > test.out 2>&1
eval_tap $? 263 'EnableUserEntitlement' test.out

#- 264 GetUserEntitlementHistories
samples/cli/sample-apps Platform getUserEntitlementHistories \
    --entitlementId 'vS97Cuaf6Tfoxd3Q' \
    --namespace $AB_NAMESPACE \
    --userId 'ZwTLvPHSFMweoZkn' \
    > test.out 2>&1
eval_tap $? 264 'GetUserEntitlementHistories' test.out

#- 265 RevokeUserEntitlement
samples/cli/sample-apps Platform revokeUserEntitlement \
    --entitlementId '8Xy979nhOj1HD1py' \
    --namespace $AB_NAMESPACE \
    --userId 'VJ5981x69FRIT9Yi' \
    --body '{"metadata": {"wBg8Jo9FeZkZmJGx": {}, "0X4K7kUPTHqAv4sD": {}, "XnUGnG3mkgZedM5G": {}}}' \
    > test.out 2>&1
eval_tap $? 265 'RevokeUserEntitlement' test.out

#- 266 RevokeUserEntitlementByUseCount
samples/cli/sample-apps Platform revokeUserEntitlementByUseCount \
    --entitlementId '1PNxmKEyif6dMajI' \
    --namespace $AB_NAMESPACE \
    --userId 'd3qksBI3UPM4YcgD' \
    --body '{"reason": "YbX5TbbUqeqcysKv", "useCount": 86}' \
    > test.out 2>&1
eval_tap $? 266 'RevokeUserEntitlementByUseCount' test.out

#- 267 PreCheckRevokeUserEntitlementByUseCount
samples/cli/sample-apps Platform preCheckRevokeUserEntitlementByUseCount \
    --entitlementId 'sSHHRy6ze4HnD2xd' \
    --namespace $AB_NAMESPACE \
    --userId 'H7bZON8r1DTD8rPa' \
    --quantity '51' \
    > test.out 2>&1
eval_tap $? 267 'PreCheckRevokeUserEntitlementByUseCount' test.out

#- 268 RevokeUseCount
eval_tap 0 268 'RevokeUseCount # SKIP deprecated' test.out

#- 269 SellUserEntitlement
samples/cli/sample-apps Platform sellUserEntitlement \
    --entitlementId '7B4j1dfUVogTOqSL' \
    --namespace $AB_NAMESPACE \
    --userId 'pFMaMD8nQpfUkcky' \
    --body '{"platform": "cf93uEsh1GQGGu2T", "requestId": "1Bty6zbkXtNOZ724", "useCount": 100}' \
    > test.out 2>&1
eval_tap $? 269 'SellUserEntitlement' test.out

#- 270 FulfillItem
samples/cli/sample-apps Platform fulfillItem \
    --namespace $AB_NAMESPACE \
    --userId 'aLjQA3SRpuVEv0DI' \
    --body '{"duration": 61, "endDate": "1979-03-26T00:00:00Z", "entitlementCollectionId": "5Bjdmv8L0oSQTiKe", "entitlementOrigin": "Playstation", "itemId": "js2vDxkSHwhMH5D6", "itemSku": "9gNovYuLbbGyexIu", "language": "R4hV4vNcOl2RMIcv", "metadata": {"jozM6ok2akIRkvFD": {}, "xkGeEVWyCJigAhY5": {}, "H2mB8GdyWkQWjaVI": {}}, "order": {"currency": {"currencyCode": "tKiUPNFfBrcHFmgm", "currencySymbol": "SALfT10TdZz7se3P", "currencyType": "VIRTUAL", "decimals": 47, "namespace": "vB4NXrPG6fcsuNjK"}, "ext": {"xf0inFsKLjcPXlT9": {}, "WJuq01eLpvnFSBi8": {}, "jQNveGiJA0gf6uxj": {}}, "free": true}, "orderNo": "C2fpvnGRYNhQK901", "origin": "Playstation", "overrideBundleItemQty": {"HimilHOdceeVlczB": 44, "wuOmGDLLLm1StHND": 92, "DHbQYTl5XcchuyVV": 86}, "quantity": 34, "region": "2m2Bs0yajRLRERLk", "source": "REWARD", "startDate": "1973-09-25T00:00:00Z", "storeId": "uxlBd4AVMGAM6E3g"}' \
    > test.out 2>&1
eval_tap $? 270 'FulfillItem' test.out

#- 271 RedeemCode
samples/cli/sample-apps Platform redeemCode \
    --namespace $AB_NAMESPACE \
    --userId 'yRTM9AE5eVPKakNE' \
    --body '{"code": "rw5x0rO3Z3lfi2TO", "language": "skB-PDKF-952", "region": "Xh9J3yUa2V9oQuiR"}' \
    > test.out 2>&1
eval_tap $? 271 'RedeemCode' test.out

#- 272 PreCheckFulfillItem
samples/cli/sample-apps Platform preCheckFulfillItem \
    --namespace $AB_NAMESPACE \
    --userId 'ibchRfXneJrV3wq1' \
    --body '{"itemId": "wIitgrZacmYaNcgf", "itemSku": "Tl2d2rxB638FcV4r", "quantity": 9}' \
    > test.out 2>&1
eval_tap $? 272 'PreCheckFulfillItem' test.out

#- 273 FulfillRewards
samples/cli/sample-apps Platform fulfillRewards \
    --namespace $AB_NAMESPACE \
    --userId 'E8NawC9TeBCuetCY' \
    --body '{"entitlementCollectionId": "ZJHy7TOldCPHzkdH", "entitlementOrigin": "Xbox", "metadata": {"EhEzmLfhykPeufWu": {}, "IsnyeKPZHwyOQC2U": {}, "X7batWuxxZE89O1h": {}}, "origin": "Xbox", "rewards": [{"currency": {"currencyCode": "P690ZxypY6lV7K0N", "namespace": "YgnCulMg6bFrgOdq"}, "item": {"itemId": "RfumYsn1qkpTFkZO", "itemName": "94Kr6TSbqQ8haDWG", "itemSku": "04YMLcAHBkcNFCxZ", "itemType": "YwHwYZQJ0dO49Yzd"}, "quantity": 8, "type": "ITEM"}, {"currency": {"currencyCode": "NOZJzDKTmhCbZixn", "namespace": "2EaIMU9AZw0Bzi0z"}, "item": {"itemId": "jPPTdTWhW55GghBt", "itemName": "hNi6KL2dnJ0QEC2E", "itemSku": "vEpCUxAbFzMKAHLs", "itemType": "GcebG01KPqeonADt"}, "quantity": 98, "type": "CURRENCY"}, {"currency": {"currencyCode": "WAmwwzxxUvPDpLj9", "namespace": "JfBIOwAVxmN4Xb8T"}, "item": {"itemId": "fKKCD49xowsvK15C", "itemName": "fmeougL7OSdSbJrx", "itemSku": "wLGuBvMqHQqRXSkA", "itemType": "4QqrhRALWVBMi9Ts"}, "quantity": 83, "type": "CURRENCY"}], "source": "REFERRAL_BONUS", "transactionId": "0qGv1mBAX0WEwdPL"}' \
    > test.out 2>&1
eval_tap $? 273 'FulfillRewards' test.out

#- 274 QueryUserIAPOrders
samples/cli/sample-apps Platform queryUserIAPOrders \
    --namespace $AB_NAMESPACE \
    --userId 'Vd4YHd56alNmymma' \
    --endTime 'o7SYFq2zykisjOso' \
    --limit '4' \
    --offset '23' \
    --productId 'TUg35BEtqCvcoVUQ' \
    --startTime 'Ntxfx0yJ0kUavfuU' \
    --status 'FAILED' \
    --type 'OCULUS' \
    > test.out 2>&1
eval_tap $? 274 'QueryUserIAPOrders' test.out

#- 275 QueryAllUserIAPOrders
samples/cli/sample-apps Platform queryAllUserIAPOrders \
    --namespace $AB_NAMESPACE \
    --userId 'KWnZcI4Nn22kOET5' \
    > test.out 2>&1
eval_tap $? 275 'QueryAllUserIAPOrders' test.out

#- 276 QueryUserIAPConsumeHistory
samples/cli/sample-apps Platform queryUserIAPConsumeHistory \
    --namespace $AB_NAMESPACE \
    --userId 'apIZIAcmroxdQT3h' \
    --endTime 'DcBhSa8z2Gl6vMDl' \
    --limit '41' \
    --offset '87' \
    --startTime '4VxCKPcXpAF61ZUm' \
    --status 'FAIL' \
    --type 'OCULUS' \
    > test.out 2>&1
eval_tap $? 276 'QueryUserIAPConsumeHistory' test.out

#- 277 MockFulfillIAPItem
samples/cli/sample-apps Platform mockFulfillIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'XvFX4ppcw0cbcJa6' \
    --body '{"itemIdentityType": "ITEM_ID", "language": "YFTi-WVZF-bY", "productId": "JrNMl7pp0cUo99fs", "region": "evRQRdMyq0XkZoWH", "transactionId": "LcsAlbAxxPfZMyJB", "type": "GOOGLE"}' \
    > test.out 2>&1
eval_tap $? 277 'MockFulfillIAPItem' test.out

#- 278 QueryUserThirdPartySubscription
samples/cli/sample-apps Platform queryUserThirdPartySubscription \
    --namespace $AB_NAMESPACE \
    --userId 'k54iX2UcXqdaqmz9' \
    --activeOnly 'true' \
    --groupId 'Rg84suXc49e7BmOV' \
    --limit '20' \
    --offset '88' \
    --platform 'GOOGLE' \
    --productId 'cL6Z7BDFFPbNbMx9' \
    > test.out 2>&1
eval_tap $? 278 'QueryUserThirdPartySubscription' test.out

#- 279 GetThirdPartyPlatformSubscriptionOwnershipByGroupId
samples/cli/sample-apps Platform getThirdPartyPlatformSubscriptionOwnershipByGroupId \
    --namespace $AB_NAMESPACE \
    --platform 'XBOX' \
    --userId 'sRctHJmdoiqt4QJc' \
    --groupId 'f46eCPaHPpCRdLko' \
    > test.out 2>&1
eval_tap $? 279 'GetThirdPartyPlatformSubscriptionOwnershipByGroupId' test.out

#- 280 GetThirdPartyPlatformSubscriptionOwnershipByProductId
samples/cli/sample-apps Platform getThirdPartyPlatformSubscriptionOwnershipByProductId \
    --namespace $AB_NAMESPACE \
    --platform 'GOOGLE' \
    --userId 'mBpJWFPqysO4ukNh' \
    --productId 'd0bsZPdIPg4ta5Oh' \
    > test.out 2>&1
eval_tap $? 280 'GetThirdPartyPlatformSubscriptionOwnershipByProductId' test.out

#- 281 QueryUserThirdPartySubscriptionTransactions
samples/cli/sample-apps Platform queryUserThirdPartySubscriptionTransactions \
    --namespace $AB_NAMESPACE \
    --userId 'f0emikLNSArGInXM' \
    --activeOnly 'true' \
    --groupId '5CnntFCa2aN23UUc' \
    --limit '94' \
    --offset '70' \
    --platform 'STEAM' \
    --productId 'O5w4fyGgVMT3pcm0' \
    > test.out 2>&1
eval_tap $? 281 'QueryUserThirdPartySubscriptionTransactions' test.out

#- 282 GetThirdPartySubscriptionDetails
samples/cli/sample-apps Platform getThirdPartySubscriptionDetails \
    --id 'nt2f0pd6PSnaoOzx' \
    --namespace $AB_NAMESPACE \
    --userId 'VT0RjWgMUQwm81Vw' \
    > test.out 2>&1
eval_tap $? 282 'GetThirdPartySubscriptionDetails' test.out

#- 283 GetSubscriptionHistory
samples/cli/sample-apps Platform getSubscriptionHistory \
    --id 'ODU1MlGct4jm4P4Z' \
    --namespace $AB_NAMESPACE \
    --userId 'sBWA1LeMo4Wam3fe' \
    --limit '96' \
    --offset '71' \
    > test.out 2>&1
eval_tap $? 283 'GetSubscriptionHistory' test.out

#- 284 SyncSubscriptionTransaction
samples/cli/sample-apps Platform syncSubscriptionTransaction \
    --id 'FHN7deALwuFOnBw9' \
    --namespace $AB_NAMESPACE \
    --userId 'NS4BQ3lddweFh4VS' \
    > test.out 2>&1
eval_tap $? 284 'SyncSubscriptionTransaction' test.out

#- 285 GetThirdPartyUserSubscriptionDetails
samples/cli/sample-apps Platform getThirdPartyUserSubscriptionDetails \
    --id 'NolMwp454Ueup1nX' \
    --namespace $AB_NAMESPACE \
    --userId 'vpp4LB0zulijN5zC' \
    > test.out 2>&1
eval_tap $? 285 'GetThirdPartyUserSubscriptionDetails' test.out

#- 286 SyncSubscription
samples/cli/sample-apps Platform syncSubscription \
    --id '0gueF2YPUSYJi7DL' \
    --namespace $AB_NAMESPACE \
    --userId 'FyFil6aYvL5aSgVu' \
    > test.out 2>&1
eval_tap $? 286 'SyncSubscription' test.out

#- 287 QueryUserOrders
samples/cli/sample-apps Platform queryUserOrders \
    --namespace $AB_NAMESPACE \
    --userId '1RMIoEltlr0IbE9b' \
    --discounted 'false' \
    --itemId 'qdgwXLWQ1aHqx9OC' \
    --limit '75' \
    --offset '49' \
    --status 'INIT' \
    > test.out 2>&1
eval_tap $? 287 'QueryUserOrders' test.out

#- 288 AdminCreateUserOrder
samples/cli/sample-apps Platform adminCreateUserOrder \
    --namespace $AB_NAMESPACE \
    --userId 'rIqlWwPUCzSmt4CI' \
    --body '{"currencyCode": "v1ESWpl1LlR7wF8t", "currencyNamespace": "GvTOxPMjBkZPkYDE", "discountCodes": ["nZrT7qwqIhc2DMcd", "lUN2zAMXC2D65VKb", "Jb8hQPuSrV1GoAmy"], "discountedPrice": 19, "entitlementPlatform": "Epic", "ext": {"lECTKeGBUFlGDHov": {}, "IualOuzbl32S4r3A": {}, "2RS8OrG3XM9LWglo": {}}, "itemId": "HgoYHaSToqMIpmkQ", "language": "ulbQJh9I7LdQknz0", "options": {"skipPriceValidation": false}, "platform": "Nintendo", "price": 69, "quantity": 89, "region": "9NkKvqi4zw35oY4v", "returnUrl": "WPF7QgpAWdkj40IZ", "sandbox": true, "sectionId": "DjqkOG6k6eB2gZvA"}' \
    > test.out 2>&1
eval_tap $? 288 'AdminCreateUserOrder' test.out

#- 289 CountOfPurchasedItem
samples/cli/sample-apps Platform countOfPurchasedItem \
    --namespace $AB_NAMESPACE \
    --userId 'zJ8ex7v9Xf5vvU89' \
    --itemId 'dMgongeXOEQHyZ1b' \
    > test.out 2>&1
eval_tap $? 289 'CountOfPurchasedItem' test.out

#- 290 GetUserOrder
samples/cli/sample-apps Platform getUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'MikwlQSrcDIm6QC5' \
    --userId 'CKSD6MD7Y8mKakTc' \
    > test.out 2>&1
eval_tap $? 290 'GetUserOrder' test.out

#- 291 UpdateUserOrderStatus
samples/cli/sample-apps Platform updateUserOrderStatus \
    --namespace $AB_NAMESPACE \
    --orderNo 'DGDv3Ho8n2kOM3cX' \
    --userId 'KMWfPOicH68wwdXW' \
    --body '{"status": "INIT", "statusReason": "ycUo0UEznXRtUj9d"}' \
    > test.out 2>&1
eval_tap $? 291 'UpdateUserOrderStatus' test.out

#- 292 FulfillUserOrder
samples/cli/sample-apps Platform fulfillUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'eL8eOu0wr7ScOqky' \
    --userId 'WJQceGx4f4wdWIyb' \
    > test.out 2>&1
eval_tap $? 292 'FulfillUserOrder' test.out

#- 293 GetUserOrderGrant
eval_tap 0 293 'GetUserOrderGrant # SKIP deprecated' test.out

#- 294 GetUserOrderHistories
samples/cli/sample-apps Platform getUserOrderHistories \
    --namespace $AB_NAMESPACE \
    --orderNo 'OzjqqbEESh3uNZC2' \
    --userId 'mvM9k9i5ajA2ghYm' \
    > test.out 2>&1
eval_tap $? 294 'GetUserOrderHistories' test.out

#- 295 ProcessUserOrderNotification
samples/cli/sample-apps Platform processUserOrderNotification \
    --namespace $AB_NAMESPACE \
    --orderNo 'kv25o8zbVTXhnDRj' \
    --userId 'TId7SsU4lTnpLgoc' \
    --body '{"additionalData": {"cardSummary": "o6WuxKYWHG0h88wd"}, "authorisedTime": "1974-08-02T00:00:00Z", "chargebackReversedTime": "1975-11-01T00:00:00Z", "chargebackTime": "1991-05-24T00:00:00Z", "chargedTime": "1975-09-08T00:00:00Z", "createdTime": "1981-10-02T00:00:00Z", "currency": {"currencyCode": "r3l0888MrMyjTJxM", "currencySymbol": "YcBXlHRB0hBE4Vs9", "currencyType": "VIRTUAL", "decimals": 99, "namespace": "2d4tWpDfzpT9aaQG"}, "customParameters": {"GZ08RLzCLBLljwQs": {}, "H5aTQ4klcdeIQOLR": {}, "MGdcupoy4y9mtmUF": {}}, "extOrderNo": "10d3AwfUUQBlWdN7", "extTxId": "lPjScpnMcXVRwqQC", "extUserId": "4QgrBhdW5lImeiaL", "issuedAt": "1997-02-28T00:00:00Z", "metadata": {"YBayrOUvyY0vgstK": "OQvnyILp6uMgsqnA", "DZB22Z4meNdlGQxK": "5DsTmhBeg72mIos5", "1H5U0qtwIvfgg0Zv": "xCJlSSF0u9rhtsdo"}, "namespace": "tY0vH1fBmgWEZqN8", "nonceStr": "L5CRgsXnLc7Gg3AW", "paymentData": {"discountAmount": 51, "discountCode": "deNgTczLw2LUqlF7", "subtotalPrice": 3, "tax": 20, "totalPrice": 89}, "paymentMethod": "bKdxxKVuAezGRSFB", "paymentMethodFee": 54, "paymentOrderNo": "GRjZmvEITB8xNULH", "paymentProvider": "ALIPAY", "paymentProviderFee": 3, "paymentStationUrl": "XxXrN1uUu53objMD", "price": 17, "refundedTime": "1994-02-27T00:00:00Z", "salesTax": 75, "sandbox": true, "sku": "NrAee8sARgBm30Av", "status": "INIT", "statusReason": "mrbO3PQR0qmT0fDv", "subscriptionId": "AZ7jP9gdUHQfX2B4", "subtotalPrice": 53, "targetNamespace": "CN0MkIYNAxFa2r4T", "targetUserId": "MT8mCo9smLKOfzy4", "tax": 35, "totalPrice": 72, "totalTax": 31, "txEndTime": "1993-08-19T00:00:00Z", "type": "la8hUmfSMz1BH4AW", "userId": "HreduIZGfBqz8Wyw", "vat": 32}' \
    > test.out 2>&1
eval_tap $? 295 'ProcessUserOrderNotification' test.out

#- 296 DownloadUserOrderReceipt
samples/cli/sample-apps Platform downloadUserOrderReceipt \
    --namespace $AB_NAMESPACE \
    --orderNo 'UYVT7k8FWLerBeMg' \
    --userId 'gntTHol3Yuhxr6sM' \
    > test.out 2>&1
eval_tap $? 296 'DownloadUserOrderReceipt' test.out

#- 297 CreateUserPaymentOrder
samples/cli/sample-apps Platform createUserPaymentOrder \
    --namespace $AB_NAMESPACE \
    --userId 'bCc8ZsTRlbX9dZkc' \
    --body '{"currencyCode": "1kBpEX9sWvLnvep6", "currencyNamespace": "iv901cP3ZBcnGZqf", "customParameters": {"9W6J6CVyFxPMiTEU": {}, "zwrWz6V2YDwprkPX": {}, "AM5TtjS7haoyS1po": {}}, "description": "GjJXQvQJgOWRuQlA", "extOrderNo": "vLdLqjdIzKulmQ3r", "extUserId": "tiv4qpTGpuEWUa29", "itemType": "SUBSCRIPTION", "language": "Qv-yLNe-WS", "metadata": {"AowYUf8EAKfvkrfS": "LFoeR19Z02bcNK7Q", "oKNYV91sBztRUnoF": "eAYWFU57ZlgTIFNH", "gQ5mfGoNNNeiCL3W": "XAGwVHW8IcDFlOeI"}, "notifyUrl": "oITCTMQ0miar87fR", "omitNotification": true, "platform": "NyIMEuUpsJHnC8k1", "price": 7, "recurringPaymentOrderNo": "XAhu6gxSFCRaTLWz", "region": "F969RAG0rJcdDq6i", "returnUrl": "mtF8VBviBTU92ZFW", "sandbox": false, "sku": "L8xoHZAvLkTfUQoA", "subscriptionId": "GhNR947cPsEjDDpn", "title": "GAAAJI0DgzL7nG3i"}' \
    > test.out 2>&1
eval_tap $? 297 'CreateUserPaymentOrder' test.out

#- 298 RefundUserPaymentOrder
samples/cli/sample-apps Platform refundUserPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'kBPMC46zVI4eJ15N' \
    --userId 'HQqqn7HojCOV6pfN' \
    --body '{"description": "fAlevRWMGvkjDML3"}' \
    > test.out 2>&1
eval_tap $? 298 'RefundUserPaymentOrder' test.out

#- 299 GetUserPlatformAccountClosureHistories
samples/cli/sample-apps Platform getUserPlatformAccountClosureHistories \
    --namespace $AB_NAMESPACE \
    --userId '1yaiaeNKGYKfZbGh' \
    > test.out 2>&1
eval_tap $? 299 'GetUserPlatformAccountClosureHistories' test.out

#- 300 ApplyUserRedemption
samples/cli/sample-apps Platform applyUserRedemption \
    --namespace $AB_NAMESPACE \
    --userId 'J3Kfq8ao7h4gUtRH' \
    --body '{"code": "x63BKFgP9odn4s0H", "orderNo": "ub1rhCNhxG9asvfo"}' \
    > test.out 2>&1
eval_tap $? 300 'ApplyUserRedemption' test.out

#- 301 DoRevocation
samples/cli/sample-apps Platform doRevocation \
    --namespace $AB_NAMESPACE \
    --userId 'XdWPZYJbTlBuCtTO' \
    --body '{"meta": {"YvEUpLc7tbxQMyfk": {}, "QZhoAefs11VgeMJ1": {}, "Y6jVTWDvjPDNWg3h": {}}, "reason": "P8croJSvmYSWKJNq", "revokeEntries": [{"currency": {"balanceOrigin": "Playstation", "currencyCode": "g8V6IQAHqVG2FqcC", "namespace": "ZSuvWDBxmmeYWPHi"}, "entitlement": {"entitlementId": "s2kkLYZFtlWmJUbB"}, "item": {"entitlementOrigin": "GooglePlay", "itemIdentity": "HPKykebwbHeqZB8T", "itemIdentityType": "ITEM_SKU", "origin": "Twitch"}, "quantity": 7, "type": "ENTITLEMENT"}, {"currency": {"balanceOrigin": "IOS", "currencyCode": "jJ2Yqp3duMwGj0wT", "namespace": "HOrOG7F9z5scjDS0"}, "entitlement": {"entitlementId": "SG13HvVRosHq2z5I"}, "item": {"entitlementOrigin": "Twitch", "itemIdentity": "QJDI9OxQfL8QWm42", "itemIdentityType": "ITEM_SKU", "origin": "GooglePlay"}, "quantity": 32, "type": "ITEM"}, {"currency": {"balanceOrigin": "Oculus", "currencyCode": "ByKjhFUE6adM7Cmo", "namespace": "dL3DvjE1h2NgjuMG"}, "entitlement": {"entitlementId": "QWuxU1yO7VlZESQE"}, "item": {"entitlementOrigin": "System", "itemIdentity": "NKNBV0ri6Hvfi1Pa", "itemIdentityType": "ITEM_ID", "origin": "GooglePlay"}, "quantity": 21, "type": "ITEM"}], "source": "IAP", "transactionId": "kylURhk9ZQsw8r73"}' \
    > test.out 2>&1
eval_tap $? 301 'DoRevocation' test.out

#- 302 RegisterXblSessions
samples/cli/sample-apps Platform registerXblSessions \
    --namespace $AB_NAMESPACE \
    --userId 'c5oTfXax9IiEoaR6' \
    --body '{"gameSessionId": "2wWNsHypDcqFuFw0", "payload": {"YOO8Ly4Xl5VvdvHV": {}, "TqXeYAkMK119Haxm": {}, "afWxHxrxdbWPtHn6": {}}, "scid": "FMT2jszIZgApsu8v", "sessionTemplateName": "AEDDwFESKFc5ETGA"}' \
    > test.out 2>&1
eval_tap $? 302 'RegisterXblSessions' test.out

#- 303 QueryUserSubscriptions
samples/cli/sample-apps Platform queryUserSubscriptions \
    --namespace $AB_NAMESPACE \
    --userId 'uKTqG01WFCpQjcf6' \
    --chargeStatus 'RECURRING_CHARGING' \
    --itemId '9HuqqvODu1Ql9o8A' \
    --limit '77' \
    --offset '37' \
    --sku 'FlRhQEKEDltZ5SWK' \
    --status 'ACTIVE' \
    --subscribedBy 'PLATFORM' \
    > test.out 2>&1
eval_tap $? 303 'QueryUserSubscriptions' test.out

#- 304 GetUserSubscriptionActivities
samples/cli/sample-apps Platform getUserSubscriptionActivities \
    --namespace $AB_NAMESPACE \
    --userId '8UQfYCih3L9GqCDG' \
    --excludeSystem 'false' \
    --limit '81' \
    --offset '76' \
    --subscriptionId 'TeAj3MSwqCJO54IK' \
    > test.out 2>&1
eval_tap $? 304 'GetUserSubscriptionActivities' test.out

#- 305 PlatformSubscribeSubscription
samples/cli/sample-apps Platform platformSubscribeSubscription \
    --namespace $AB_NAMESPACE \
    --userId '4hnxTyaa4WY4eAKE' \
    --body '{"grantDays": 78, "itemId": "sUvwklFAEXCtVKY7", "language": "KJZG6SCQXaMLfobY", "reason": "qmprKUQJcKA55ZUH", "region": "YVzcHi6uu0cHVJAL", "source": "AEpRNtwsj5n9t0zt"}' \
    > test.out 2>&1
eval_tap $? 305 'PlatformSubscribeSubscription' test.out

#- 306 CheckUserSubscriptionSubscribableByItemId
samples/cli/sample-apps Platform checkUserSubscriptionSubscribableByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'iSLIIy6ovoSV4KB7' \
    --itemId 'VRIduF1ZcGbL8Dwd' \
    > test.out 2>&1
eval_tap $? 306 'CheckUserSubscriptionSubscribableByItemId' test.out

#- 307 GetUserSubscription
samples/cli/sample-apps Platform getUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'nCYBKZXToxoA6NkZ' \
    --userId 'o95VnXgWWWs0Zsh4' \
    > test.out 2>&1
eval_tap $? 307 'GetUserSubscription' test.out

#- 308 DeleteUserSubscription
samples/cli/sample-apps Platform deleteUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'qksOOD4ANQFYApLT' \
    --userId 'yACWjWdqFP8nF8ZK' \
    > test.out 2>&1
eval_tap $? 308 'DeleteUserSubscription' test.out

#- 309 CancelSubscription
samples/cli/sample-apps Platform cancelSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'mYGkBEAPX7eFyWkX' \
    --userId 'ARMzbWQEOji7Jx2z' \
    --force 'true' \
    --body '{"immediate": false, "reason": "HyR19tmKpinjby8b"}' \
    > test.out 2>&1
eval_tap $? 309 'CancelSubscription' test.out

#- 310 GrantDaysToSubscription
samples/cli/sample-apps Platform grantDaysToSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'GbeJt8gF8PrNmvP3' \
    --userId 'pvWkB3lvBt777FVx' \
    --body '{"grantDays": 57, "reason": "M2vhGaq77pOeVpHw"}' \
    > test.out 2>&1
eval_tap $? 310 'GrantDaysToSubscription' test.out

#- 311 GetUserSubscriptionBillingHistories
samples/cli/sample-apps Platform getUserSubscriptionBillingHistories \
    --namespace $AB_NAMESPACE \
    --subscriptionId '9Mk7DGITl6G626RV' \
    --userId 'V1rj2gYeoTQmSUoY' \
    --excludeFree 'true' \
    --limit '71' \
    --offset '100' \
    > test.out 2>&1
eval_tap $? 311 'GetUserSubscriptionBillingHistories' test.out

#- 312 ProcessUserSubscriptionNotification
samples/cli/sample-apps Platform processUserSubscriptionNotification \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'UHxpKZ1b0TqnGCL3' \
    --userId 'mSq5vlgGEimRk0Hx' \
    --body '{"additionalData": {"cardSummary": "EKT3DeMOejSVRjdG"}, "authorisedTime": "1997-02-21T00:00:00Z", "chargebackReversedTime": "1999-08-27T00:00:00Z", "chargebackTime": "1977-02-13T00:00:00Z", "chargedTime": "1992-01-11T00:00:00Z", "createdTime": "1975-08-03T00:00:00Z", "currency": {"currencyCode": "I22PIPG2dbl9zGGj", "currencySymbol": "NKMn5OEtMwmjWltd", "currencyType": "REAL", "decimals": 18, "namespace": "PXW177KMs0udMqNT"}, "customParameters": {"k7CqNO1LWWlIVoqn": {}, "jZqDsHVQVNMXrqZ1": {}, "TulKJCwJLfDPiQRA": {}}, "extOrderNo": "Pp3uouzJTyOeXhu4", "extTxId": "JmESUBf9VqKxbixB", "extUserId": "W4yHOue8jFAca2Ki", "issuedAt": "1999-03-11T00:00:00Z", "metadata": {"Xb4TDdXp613iImUz": "4pwM5vcigNucUPHn", "hyW9WRyNUcjhmk6q": "504Xmhu5uTg59JxV", "125g3sUQFykD0j8D": "8nNPCb5Ii57gRSTB"}, "namespace": "Y6BKObyECoF2wh9q", "nonceStr": "Yp16dlqffrfApYFu", "paymentData": {"discountAmount": 44, "discountCode": "1mmUSeHwaMGOdYwT", "subtotalPrice": 71, "tax": 61, "totalPrice": 4}, "paymentMethod": "dJtCp4SI3SKsUzYS", "paymentMethodFee": 34, "paymentOrderNo": "VhCXOKUAU2pfEKzX", "paymentProvider": "CHECKOUT", "paymentProviderFee": 1, "paymentStationUrl": "GHTjAyoHf0pnF02f", "price": 49, "refundedTime": "1984-09-06T00:00:00Z", "salesTax": 69, "sandbox": true, "sku": "Hh8DW7rW3Wp4JYh7", "status": "CHARGEBACK_REVERSED", "statusReason": "2ckGKccB5hgMkop6", "subscriptionId": "uZEXIDQ82kNRZkix", "subtotalPrice": 80, "targetNamespace": "4yQFDBsFeSYfJkr7", "targetUserId": "TaKW5zrq1YtquJGj", "tax": 23, "totalPrice": 73, "totalTax": 25, "txEndTime": "1976-12-04T00:00:00Z", "type": "JrdwXZ77Am6TQBoU", "userId": "Brniafcs0a36exeG", "vat": 96}' \
    > test.out 2>&1
eval_tap $? 312 'ProcessUserSubscriptionNotification' test.out

#- 313 AcquireUserTicket
samples/cli/sample-apps Platform acquireUserTicket \
    --boothName 'kM1Yj1rEGfWjinJs' \
    --namespace $AB_NAMESPACE \
    --userId 'MMHUKqCcMjleI7re' \
    --body '{"count": 63, "orderNo": "IkrF4JDVCoucr2IG"}' \
    > test.out 2>&1
eval_tap $? 313 'AcquireUserTicket' test.out

#- 314 QueryUserCurrencyWallets
samples/cli/sample-apps Platform queryUserCurrencyWallets \
    --namespace $AB_NAMESPACE \
    --userId 'B3yBs3QCIS9GG5Pv' \
    > test.out 2>&1
eval_tap $? 314 'QueryUserCurrencyWallets' test.out

#- 315 DebitUserWalletByCurrencyCode
samples/cli/sample-apps Platform debitUserWalletByCurrencyCode \
    --currencyCode 'YmSPqNNOMZmhm7Na' \
    --namespace $AB_NAMESPACE \
    --userId 'HZaWXiH1uPta7qcO' \
    --body '{"allowOverdraft": false, "amount": 66, "balanceOrigin": "Playstation", "balanceSource": "OTHER", "metadata": {"ALKJsNmZ6DAmK26Z": {}, "CiiLr2FqhUKc0ux6": {}, "zEjSCsFYKdWHcKOI": {}}, "reason": "oxbfp4Tn56qi2wPx"}' \
    > test.out 2>&1
eval_tap $? 315 'DebitUserWalletByCurrencyCode' test.out

#- 316 ListUserCurrencyTransactions
samples/cli/sample-apps Platform listUserCurrencyTransactions \
    --currencyCode 'e33g0UJ0jc00h1oE' \
    --namespace $AB_NAMESPACE \
    --userId 'fkdo5JdWvW0Noazm' \
    --limit '6' \
    --offset '72' \
    > test.out 2>&1
eval_tap $? 316 'ListUserCurrencyTransactions' test.out

#- 317 CheckBalance
samples/cli/sample-apps Platform checkBalance \
    --currencyCode 'XAbKCRrAZSzdki7Y' \
    --namespace $AB_NAMESPACE \
    --userId 'yp3XGYHXLiMFGTdy' \
    --request '{"amount": 33, "debitBalanceSource": "OTHER", "metadata": {"uJyJ6PNiuVArnF2k": {}, "qY5dbKoLYpEFmvrW": {}, "mFppORtxApi8Jfah": {}}, "reason": "VWXiyfpRNxNFrhQf", "walletPlatform": "GooglePlay"}' \
    > test.out 2>&1
eval_tap $? 317 'CheckBalance' test.out

#- 318 CheckWallet
eval_tap 0 318 'CheckWallet # SKIP deprecated' test.out

#- 319 CreditUserWallet
samples/cli/sample-apps Platform creditUserWallet \
    --currencyCode '2M1NjGbQQAiLxCWT' \
    --namespace $AB_NAMESPACE \
    --userId 'DWHC0gGzfNFTVpFS' \
    --body '{"amount": 33, "expireAt": "1988-07-20T00:00:00Z", "metadata": {"cfoFCtTWXek9he7h": {}, "T7HzwYexrchiuzt2": {}, "p8nByKGIFCfmakGE": {}}, "origin": "Xbox", "reason": "RcYaP71F10wBGdDG", "source": "IAP_CHARGEBACK_REVERSED"}' \
    > test.out 2>&1
eval_tap $? 319 'CreditUserWallet' test.out

#- 320 DebitByWalletPlatform
samples/cli/sample-apps Platform debitByWalletPlatform \
    --currencyCode 'Jbd368pFNnFv7NUa' \
    --namespace $AB_NAMESPACE \
    --userId 'mlYO8Y3jcKGQIn1j' \
    --request '{"amount": 33, "debitBalanceSource": "ORDER_REVOCATION", "metadata": {"4XuFBcRg7lQ7cacI": {}, "WNKcthM7vR7kCZuI": {}, "XcYGVWeljKeepdr9": {}}, "reason": "2JDqwZVlCKQ0Tkn5", "walletPlatform": "Playstation"}' \
    > test.out 2>&1
eval_tap $? 320 'DebitByWalletPlatform' test.out

#- 321 PayWithUserWallet
samples/cli/sample-apps Platform payWithUserWallet \
    --currencyCode 'xTGYTJkPWR51EqMO' \
    --namespace $AB_NAMESPACE \
    --userId 'lNCoNNkfohA9zDU6' \
    --body '{"amount": 98, "metadata": {"TY99x1alybXOkdBs": {}, "6Fq4GLm7jH45X7xt": {}, "D5A4NuAW6I495waw": {}}, "walletPlatform": "IOS"}' \
    > test.out 2>&1
eval_tap $? 321 'PayWithUserWallet' test.out

#- 322 GetUserWallet
eval_tap 0 322 'GetUserWallet # SKIP deprecated' test.out

#- 323 DebitUserWallet
eval_tap 0 323 'DebitUserWallet # SKIP deprecated' test.out

#- 324 DisableUserWallet
eval_tap 0 324 'DisableUserWallet # SKIP deprecated' test.out

#- 325 EnableUserWallet
eval_tap 0 325 'EnableUserWallet # SKIP deprecated' test.out

#- 326 ListUserWalletTransactions
eval_tap 0 326 'ListUserWalletTransactions # SKIP deprecated' test.out

#- 327 ListViews
samples/cli/sample-apps Platform listViews \
    --namespace $AB_NAMESPACE \
    --storeId 'D5LUh3vkJIV6J4Hz' \
    > test.out 2>&1
eval_tap $? 327 'ListViews' test.out

#- 328 CreateView
samples/cli/sample-apps Platform createView \
    --namespace $AB_NAMESPACE \
    --storeId 'z58N8axMBGkDccuA' \
    --body '{"displayOrder": 6, "localizations": {"qAWmcmLCTLnvF3Su": {"description": "DXDoth0WAJqUCW6a", "localExt": {"fJRKaoGp2tjXrd8H": {}, "jFtWgPTF1DKPI9As": {}, "dbG8jSqr6X2T0esS": {}}, "longDescription": "NSp9J6VQe8NguB3W", "title": "K1J5y5Twd8MHxJTS"}, "L77Zsz38jt81zxhp": {"description": "hvGYoaB4TK4shdvp", "localExt": {"JFOXs1XXdhAGgCh4": {}, "3867MfElN0KBq3KA": {}, "eSoQ2QrY6ky6bc7g": {}}, "longDescription": "4hhwui479FJlcogT", "title": "YqZBG5xXJvtMpojI"}, "M67mOrIg5FkVuyKi": {"description": "6AsppWGYYNxtqyUK", "localExt": {"63l03p8Tq5Fyi2ZA": {}, "L5qnzeOPR5Vb5kI2": {}, "hsYtJc3Av9mbGoWo": {}}, "longDescription": "aZaGIVptVkOii3Lg", "title": "ENNf4VGDRhPxLt9G"}}, "name": "CCrAqGuAJMDqr5eu"}' \
    > test.out 2>&1
eval_tap $? 328 'CreateView' test.out

#- 329 GetView
samples/cli/sample-apps Platform getView \
    --namespace $AB_NAMESPACE \
    --viewId 'fjHb9xqPyFC2gL62' \
    --storeId 'mJFnWSBiBTDw8LH3' \
    > test.out 2>&1
eval_tap $? 329 'GetView' test.out

#- 330 UpdateView
samples/cli/sample-apps Platform updateView \
    --namespace $AB_NAMESPACE \
    --viewId '4c6PC0FQpyd1W5me' \
    --storeId 'HtZggttsdXYGTscJ' \
    --body '{"displayOrder": 2, "localizations": {"XiK2wtVpWngZPjqB": {"description": "dTyJRSHU4i1g9Hzr", "localExt": {"c6UUb3WFXbhQC7Ys": {}, "foIqCr8IV4mX4Tsh": {}, "UqbIb9TmDbrpNxxF": {}}, "longDescription": "8fJQBmw04aNtJYA5", "title": "hcxLOP5tkp9KBXvU"}, "cwLR4D6PXveJvZbW": {"description": "5WaETSVMCJCOvU78", "localExt": {"viJfLMDFbyoaELXP": {}, "FvF5ku1mSa9S54e2": {}, "f9evLXhz8UWkj2DT": {}}, "longDescription": "1lGFYlUVG4YxoOoE", "title": "QqggXIuBCEw1r6js"}, "nYuWWrOC0UmwUArB": {"description": "Cx6dZPnGHvnfJG3q", "localExt": {"eQjMxlRt8IHi2Cm8": {}, "mQeMbIZAjC5NbdLa": {}, "OG81lWJ1pWLwNqrJ": {}}, "longDescription": "sGbyVNGMe1NBwiYE", "title": "QRYGVvkabnIUD03W"}}, "name": "kXbt3c09AHwwrVA7"}' \
    > test.out 2>&1
eval_tap $? 330 'UpdateView' test.out

#- 331 DeleteView
samples/cli/sample-apps Platform deleteView \
    --namespace $AB_NAMESPACE \
    --viewId 'EoSyqoCKJHl6EJY8' \
    --storeId 'xJuQ0y5gecvl8ACT' \
    > test.out 2>&1
eval_tap $? 331 'DeleteView' test.out

#- 332 QueryWallets
eval_tap 0 332 'QueryWallets # SKIP deprecated' test.out

#- 333 BulkCredit
samples/cli/sample-apps Platform bulkCredit \
    --namespace $AB_NAMESPACE \
    --body '[{"creditRequest": {"amount": 61, "expireAt": "1986-01-31T00:00:00Z", "metadata": {"f906hoqZrOFCsVL7": {}, "K3xrc9CwhrGM63l3": {}, "s2e1eJvrii1NvwFx": {}}, "origin": "Other", "reason": "1iOERMTWqFQGBrOa", "source": "PROMOTION"}, "currencyCode": "Zqu4WflDTeEy8yOQ", "userIds": ["NXHhugqUJX3X2v6g", "LFj38wTrlFxHCQ8S", "toOvkRDJYE9RpajG"]}, {"creditRequest": {"amount": 26, "expireAt": "1991-05-04T00:00:00Z", "metadata": {"CX918dMojDdzc6Jw": {}, "o7XnAnRORc1ynBuw": {}, "VJXDJW1i9bGloTLq": {}}, "origin": "Xbox", "reason": "Ibmyu4CHAAh4JeJp", "source": "GIFT"}, "currencyCode": "xP1uKfHfsulEBR7y", "userIds": ["qQAUgtvTrNSLxwGa", "oIsqQ5Bf9MNASaNV", "vVCftmj3uUtbbtPN"]}, {"creditRequest": {"amount": 63, "expireAt": "1983-10-11T00:00:00Z", "metadata": {"TUNv11WLolbPHLdC": {}, "kwYIAbmbiTpzPLlh": {}, "Wiq4djlaJHs2VKSz": {}}, "origin": "Xbox", "reason": "pvEBsQslxLG59Ctf", "source": "OTHER"}, "currencyCode": "bxBEooRhpZCuUtGC", "userIds": ["CMEWijcboVOYJRLx", "6aIDlXiCNrJ8M2an", "drMXoiInMKWtsHJb"]}]' \
    > test.out 2>&1
eval_tap $? 333 'BulkCredit' test.out

#- 334 BulkDebit
samples/cli/sample-apps Platform bulkDebit \
    --namespace $AB_NAMESPACE \
    --body '[{"currencyCode": "QidbEvtzAO2jumJB", "request": {"allowOverdraft": true, "amount": 95, "balanceOrigin": "Twitch", "balanceSource": "ORDER_REVOCATION", "metadata": {"v87dmPbKcP1Uamh5": {}, "Q73qsYMaNuQIXwaw": {}, "6CX8gt21UN3XzAPj": {}}, "reason": "rfga4pI3EOBgnxxq"}, "userIds": ["UWXs5Adx6VSnth4p", "3btDqA0eJI7r0lTG", "OVrXUdRUoRcgoqso"]}, {"currencyCode": "bbvcuzsf5cOLXIT7", "request": {"allowOverdraft": false, "amount": 62, "balanceOrigin": "Oculus", "balanceSource": "PAYMENT", "metadata": {"oh4PyhTkjDPkVTfB": {}, "yDXEOCGx4cV1VJUF": {}, "eahbxsCtRfPgqgPw": {}}, "reason": "CEaHbCKZHlMIqRNL"}, "userIds": ["kEhD8A82hOlbfa7j", "l2L9j7Up4BRVYkIq", "mb2sbA0FIwD9nnk7"]}, {"currencyCode": "TM0laHVJ9TfI1pPg", "request": {"allowOverdraft": false, "amount": 54, "balanceOrigin": "Other", "balanceSource": "IAP_REVOCATION", "metadata": {"3ipS7wyeYOTF41EW": {}, "1vvvZkdTwtIhtGqV": {}, "spGtUKcnMOSY3nc8": {}}, "reason": "yRvE3T8HYckP7rJS"}, "userIds": ["wWCbWrVIVsmnlP5f", "fKoECVgpV593mWds", "BXZBF5AkOaCqXLBW"]}]' \
    > test.out 2>&1
eval_tap $? 334 'BulkDebit' test.out

#- 335 GetWallet
eval_tap 0 335 'GetWallet # SKIP deprecated' test.out

#- 336 SyncOrders
samples/cli/sample-apps Platform syncOrders \
    --nextEvaluatedKey 'ywN7O4LDUSOwdLhN' \
    --end 'iLFvF37oRYPAPj2S' \
    --start 'jRMqgjt2CYsm1f5C' \
    > test.out 2>&1
eval_tap $? 336 'SyncOrders' test.out

#- 337 TestAdyenConfig
samples/cli/sample-apps Platform testAdyenConfig \
    --sandbox 'false' \
    --body '{"allowedPaymentMethods": ["o2KeQf4JBiYl6cpd", "SzvaY4AwS5asfHtu", "oLlRmOPSL1SECmQ4"], "apiKey": "0qqZnQyzFvl6zpO5", "authoriseAsCapture": false, "blockedPaymentMethods": ["rkZpCkUG05GFWBLp", "mIgSpc0RaQ6p0tVR", "YNEaWmd7dOMucAFf"], "clientKey": "E7obkUoCtF0jKftR", "dropInSettings": "EDNGPVEVxMvX7nER", "liveEndpointUrlPrefix": "rAtT6g0dFyl2RRtU", "merchantAccount": "bqkHc2ib1YABvfvp", "notificationHmacKey": "tZcjH9c4kJ6C9HNw", "notificationPassword": "3c1BP9v9gD2FMU8Q", "notificationUsername": "9BmgVWHqtB8Wv9yQ", "returnUrl": "HxH1bGpQ6242c17B", "settings": "PphrL2vK80oflnMl"}' \
    > test.out 2>&1
eval_tap $? 337 'TestAdyenConfig' test.out

#- 338 TestAliPayConfig
samples/cli/sample-apps Platform testAliPayConfig \
    --sandbox 'true' \
    --body '{"appId": "AirDWueNiqGRWk8v", "privateKey": "Pc0HQQII0v8556U9", "publicKey": "5B9703alHnqEyjcw", "returnUrl": "bGcm02UvQjtkdit3"}' \
    > test.out 2>&1
eval_tap $? 338 'TestAliPayConfig' test.out

#- 339 TestCheckoutConfig
samples/cli/sample-apps Platform testCheckoutConfig \
    --sandbox 'false' \
    --body '{"publicKey": "XVSniMYpAay4vWvO", "secretKey": "LXNGLN6HAjxPHXgu"}' \
    > test.out 2>&1
eval_tap $? 339 'TestCheckoutConfig' test.out

#- 340 DebugMatchedPaymentMerchantConfig
samples/cli/sample-apps Platform debugMatchedPaymentMerchantConfig \
    --namespace 'npcRrz8qRF4sfXZt' \
    --region 'wPCvOJQT7Hy4SmaH' \
    > test.out 2>&1
eval_tap $? 340 'DebugMatchedPaymentMerchantConfig' test.out

#- 341 TestNeonPayConfig
samples/cli/sample-apps Platform testNeonPayConfig \
    --sandbox 'false' \
    --body '{"apiKey": "MvFRbixXtcBNqzph", "webhookSecretKey": "a9HHvTWBV1ZuGURX"}' \
    > test.out 2>&1
eval_tap $? 341 'TestNeonPayConfig' test.out

#- 342 TestPayPalConfig
samples/cli/sample-apps Platform testPayPalConfig \
    --sandbox 'true' \
    --body '{"clientID": "yOrTZJgfWQ8EJ78S", "clientSecret": "F9l7fwKDwAZPldW9", "returnUrl": "loBvbrxyYB5AAUlT", "webHookId": "Zr9djogj8GB7TiSD"}' \
    > test.out 2>&1
eval_tap $? 342 'TestPayPalConfig' test.out

#- 343 TestStripeConfig
samples/cli/sample-apps Platform testStripeConfig \
    --sandbox 'false' \
    --body '{"allowedPaymentMethodTypes": ["PlsQjK7x0tnmjdDB", "az8PROTFjvi6jD4Y", "EuBcAoskmbnATNnp"], "publishableKey": "JUTgj7XbYK9hOMvJ", "secretKey": "eLLDaejcXFDGd7Ia", "webhookSecret": "TDt7FQcLar7I2abT"}' \
    > test.out 2>&1
eval_tap $? 343 'TestStripeConfig' test.out

#- 344 TestWxPayConfig
samples/cli/sample-apps Platform testWxPayConfig \
    --body '{"appId": "PIpyXPMIS5B5Wgt8", "key": "tAwOV12knjaM0UQy", "mchid": "GDireYxhSlb79OfU", "returnUrl": "SoQWvykAK1MjpQeP"}' \
    > test.out 2>&1
eval_tap $? 344 'TestWxPayConfig' test.out

#- 345 TestXsollaConfig
samples/cli/sample-apps Platform testXsollaConfig \
    --body '{"apiKey": "NWG8a9TXVEZ2aho5", "flowCompletionUrl": "r11HH2iaOeexj7Fy", "merchantId": 80, "projectId": 16, "projectSecretKey": "FHUcdhEBDY8r3tQu"}' \
    > test.out 2>&1
eval_tap $? 345 'TestXsollaConfig' test.out

#- 346 GetPaymentMerchantConfig1
samples/cli/sample-apps Platform getPaymentMerchantConfig1 \
    --id '8SkmaCGRVUdMOyx7' \
    > test.out 2>&1
eval_tap $? 346 'GetPaymentMerchantConfig1' test.out

#- 347 UpdateAdyenConfig
samples/cli/sample-apps Platform updateAdyenConfig \
    --id 'q84uviAXp0aaD8Qf' \
    --sandbox 'false' \
    --validate 'true' \
    --body '{"allowedPaymentMethods": ["e8t1eR3pYB5VSYfd", "wGT3LFqQBCx3Z7tf", "VoHDcWieFhIOO9DG"], "apiKey": "9Orxd2Cb6DSKDJ1h", "authoriseAsCapture": false, "blockedPaymentMethods": ["XqBQ30hPURyU7q86", "SjASgjTv9BeVZQHw", "AEV8vOFV7BWYhRe5"], "clientKey": "g7Xbql5aLyet4LcZ", "dropInSettings": "7d905BosbxCU3qiS", "liveEndpointUrlPrefix": "V9NxqU2CzhvfwOUz", "merchantAccount": "NLwsFkGKK68ihdHi", "notificationHmacKey": "25kt1CXbAECBlEEo", "notificationPassword": "p2xSG9MUzL5oELpG", "notificationUsername": "jEuTUWT7iKGEoDFL", "returnUrl": "snuSJb2VPsYhJYmy", "settings": "vNajbTG9Q05AAlga"}' \
    > test.out 2>&1
eval_tap $? 347 'UpdateAdyenConfig' test.out

#- 348 TestAdyenConfigById
samples/cli/sample-apps Platform testAdyenConfigById \
    --id 'KAycE3VRoh3IfM7b' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 348 'TestAdyenConfigById' test.out

#- 349 UpdateAliPayConfig
samples/cli/sample-apps Platform updateAliPayConfig \
    --id 'PURO5moLjitVi5Hb' \
    --sandbox 'true' \
    --validate 'false' \
    --body '{"appId": "fkkd3quUp33XxkOX", "privateKey": "iVYPM6aRDWrA3FZb", "publicKey": "Ulrk4jnqohwScg9Y", "returnUrl": "z98fsZJonESNINHC"}' \
    > test.out 2>&1
eval_tap $? 349 'UpdateAliPayConfig' test.out

#- 350 TestAliPayConfigById
samples/cli/sample-apps Platform testAliPayConfigById \
    --id 'wkZ80AhtwN9vfK7c' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 350 'TestAliPayConfigById' test.out

#- 351 UpdateCheckoutConfig
samples/cli/sample-apps Platform updateCheckoutConfig \
    --id 'vcgUKbLUQhZhalS4' \
    --sandbox 'false' \
    --validate 'true' \
    --body '{"publicKey": "m974i8ckHC2aYk3a", "secretKey": "DboNkzLTs3xpNI7F"}' \
    > test.out 2>&1
eval_tap $? 351 'UpdateCheckoutConfig' test.out

#- 352 TestCheckoutConfigById
samples/cli/sample-apps Platform testCheckoutConfigById \
    --id '4MmMERnkOKKrhf3p' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 352 'TestCheckoutConfigById' test.out

#- 353 UpdateNeonPayConfig
samples/cli/sample-apps Platform updateNeonPayConfig \
    --id 'BJKd7WQl2SvfQRYS' \
    --sandbox 'false' \
    --validate 'true' \
    --body '{"apiKey": "zQsuthBVt2xBorfD", "webhookSecretKey": "jZuHzTftsrSfoBRl"}' \
    > test.out 2>&1
eval_tap $? 353 'UpdateNeonPayConfig' test.out

#- 354 TestNeonPayConfigById
samples/cli/sample-apps Platform testNeonPayConfigById \
    --id 'VYdyRgegSS9Rji3n' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 354 'TestNeonPayConfigById' test.out

#- 355 UpdatePayPalConfig
samples/cli/sample-apps Platform updatePayPalConfig \
    --id 'bXsVXumnvt7wBPGk' \
    --sandbox 'false' \
    --validate 'true' \
    --body '{"clientID": "iu7WbYhw2Z7tHJLG", "clientSecret": "HOLrHCpVPy13cio0", "returnUrl": "Lm75YNaYYRzbtaBd", "webHookId": "ms4yCjtdSPaO8cll"}' \
    > test.out 2>&1
eval_tap $? 355 'UpdatePayPalConfig' test.out

#- 356 TestPayPalConfigById
samples/cli/sample-apps Platform testPayPalConfigById \
    --id 'nsRVzZwRp9AHtVB7' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 356 'TestPayPalConfigById' test.out

#- 357 UpdateStripeConfig
samples/cli/sample-apps Platform updateStripeConfig \
    --id 'cTkn9YYTdbocW8Sp' \
    --sandbox 'false' \
    --validate 'false' \
    --body '{"allowedPaymentMethodTypes": ["6GTT4BHEp4lCmiWB", "k26xNJeKhHlohkeh", "mNSfuFTvU3bEpQ1M"], "publishableKey": "AQnnyfiVYSAgMPxI", "secretKey": "Nmy2gTuPFUo9iiXx", "webhookSecret": "MS4WUdgfh9tFCSU1"}' \
    > test.out 2>&1
eval_tap $? 357 'UpdateStripeConfig' test.out

#- 358 TestStripeConfigById
samples/cli/sample-apps Platform testStripeConfigById \
    --id 'ZlvlLDx8oj80aKB9' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 358 'TestStripeConfigById' test.out

#- 359 UpdateWxPayConfig
samples/cli/sample-apps Platform updateWxPayConfig \
    --id 'QUwLbGMqlNNQun50' \
    --validate 'true' \
    --body '{"appId": "0T94NzP1RwXfT3OE", "key": "cRNLR4iIqrkJmMBz", "mchid": "Tb8fGRVAQo9HrnhQ", "returnUrl": "h6LbOFwoqXQAfHUE"}' \
    > test.out 2>&1
eval_tap $? 359 'UpdateWxPayConfig' test.out

#- 360 UpdateWxPayConfigCert
samples/cli/sample-apps Platform updateWxPayConfigCert \
    --id 'BijPA0dNKmho07ZH' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 360 'UpdateWxPayConfigCert' test.out

#- 361 TestWxPayConfigById
samples/cli/sample-apps Platform testWxPayConfigById \
    --id 'mpaxKBFFKZq6MR1d' \
    > test.out 2>&1
eval_tap $? 361 'TestWxPayConfigById' test.out

#- 362 UpdateXsollaConfig
samples/cli/sample-apps Platform updateXsollaConfig \
    --id 'lzLSYT8IrdKKP89G' \
    --validate 'true' \
    --body '{"apiKey": "ROE3jTPrbH7HoA3q", "flowCompletionUrl": "BLufDGjqtPfxsFR7", "merchantId": 94, "projectId": 67, "projectSecretKey": "U6XpZ1cUwHsRXCCw"}' \
    > test.out 2>&1
eval_tap $? 362 'UpdateXsollaConfig' test.out

#- 363 TestXsollaConfigById
samples/cli/sample-apps Platform testXsollaConfigById \
    --id 'ALbmt7ObkJZcpFsQ' \
    > test.out 2>&1
eval_tap $? 363 'TestXsollaConfigById' test.out

#- 364 UpdateXsollaUIConfig
samples/cli/sample-apps Platform updateXsollaUIConfig \
    --id 'RVLRHxQsGsvemPRN' \
    --body '{"device": "MOBILE", "showCloseButton": true, "size": "SMALL", "theme": "DEFAULT_DARK"}' \
    > test.out 2>&1
eval_tap $? 364 'UpdateXsollaUIConfig' test.out

#- 365 QueryPaymentProviderConfig
samples/cli/sample-apps Platform queryPaymentProviderConfig \
    --limit '75' \
    --namespace 'K888HfDUKfmFGOFf' \
    --offset '75' \
    --region 'uGubQMle6DNeE63F' \
    > test.out 2>&1
eval_tap $? 365 'QueryPaymentProviderConfig' test.out

#- 366 CreatePaymentProviderConfig
samples/cli/sample-apps Platform createPaymentProviderConfig \
    --body '{"aggregate": "NEONPAY", "namespace": "ltWTH8VfBUrUudAZ", "region": "dZXmxLrGkDyJGQnC", "sandboxTaxJarApiToken": "FTeTPxM8clLIVLgs", "specials": ["ALIPAY", "NEONPAY", "WALLET"], "taxJarApiToken": "zSPVLiQuVisvqAqC", "taxJarEnabled": false, "useGlobalTaxJarApiToken": false}' \
    > test.out 2>&1
eval_tap $? 366 'CreatePaymentProviderConfig' test.out

#- 367 GetAggregatePaymentProviders
samples/cli/sample-apps Platform getAggregatePaymentProviders \
    > test.out 2>&1
eval_tap $? 367 'GetAggregatePaymentProviders' test.out

#- 368 DebugMatchedPaymentProviderConfig
samples/cli/sample-apps Platform debugMatchedPaymentProviderConfig \
    --namespace 'ziBNFvjFcV8pKhwY' \
    --region '9TiqVR8N154Z3rcN' \
    > test.out 2>&1
eval_tap $? 368 'DebugMatchedPaymentProviderConfig' test.out

#- 369 GetSpecialPaymentProviders
samples/cli/sample-apps Platform getSpecialPaymentProviders \
    > test.out 2>&1
eval_tap $? 369 'GetSpecialPaymentProviders' test.out

#- 370 UpdatePaymentProviderConfig
samples/cli/sample-apps Platform updatePaymentProviderConfig \
    --id '3Vf0qdRXR3CdmXix' \
    --body '{"aggregate": "NEONPAY", "namespace": "ZpVeXkHYPm4sO0Ho", "region": "FXdgXhzH0QDcoef3", "sandboxTaxJarApiToken": "g6oES3tSgm2H5i1X", "specials": ["WXPAY", "CHECKOUT", "ALIPAY"], "taxJarApiToken": "fqtQad5VYC4MLZ5l", "taxJarEnabled": false, "useGlobalTaxJarApiToken": true}' \
    > test.out 2>&1
eval_tap $? 370 'UpdatePaymentProviderConfig' test.out

#- 371 DeletePaymentProviderConfig
samples/cli/sample-apps Platform deletePaymentProviderConfig \
    --id 'q6IOSu3jDCM8VvzD' \
    > test.out 2>&1
eval_tap $? 371 'DeletePaymentProviderConfig' test.out

#- 372 GetPaymentTaxConfig
samples/cli/sample-apps Platform getPaymentTaxConfig \
    > test.out 2>&1
eval_tap $? 372 'GetPaymentTaxConfig' test.out

#- 373 UpdatePaymentTaxConfig
samples/cli/sample-apps Platform updatePaymentTaxConfig \
    --body '{"sandboxTaxJarApiToken": "GCeIKl08AIUO2e1t", "taxJarApiToken": "JyhWa1BKuMeqgGUf", "taxJarEnabled": true, "taxJarProductCodesMapping": {"AX1xu8ynpiBdX0be": "mdyRiW6LykGdfp3G", "J1jbBknCtIeOP1dP": "ssX7sLHfz2Smr9dE", "DIJM2fw08fUFqrKy": "ss34Dkez1WSQXUib"}}' \
    > test.out 2>&1
eval_tap $? 373 'UpdatePaymentTaxConfig' test.out

#- 374 SyncPaymentOrders
samples/cli/sample-apps Platform syncPaymentOrders \
    --nextEvaluatedKey 'aYdN07GyjBk81f1x' \
    --end 'sJOJOrwuAmycnqZ0' \
    --start 'bewkQ1IrbKjFRN5G' \
    > test.out 2>&1
eval_tap $? 374 'SyncPaymentOrders' test.out

#- 375 PublicGetRootCategories
samples/cli/sample-apps Platform publicGetRootCategories \
    --namespace $AB_NAMESPACE \
    --language 'ckVG8hjy3pSpUB6f' \
    --storeId 'LxUUvTdk3ZiZOxex' \
    > test.out 2>&1
eval_tap $? 375 'PublicGetRootCategories' test.out

#- 376 DownloadCategories
samples/cli/sample-apps Platform downloadCategories \
    --namespace $AB_NAMESPACE \
    --language 'g3n73q8eib8LWAOR' \
    --storeId 'rlE0xmfGoqFU4yUL' \
    > test.out 2>&1
eval_tap $? 376 'DownloadCategories' test.out

#- 377 PublicGetCategory
samples/cli/sample-apps Platform publicGetCategory \
    --categoryPath 'brlsJafMHlfn8oA1' \
    --namespace $AB_NAMESPACE \
    --language '4A24NgryAOZWnjD7' \
    --storeId 'uXqKlDOF7v1Aqnws' \
    > test.out 2>&1
eval_tap $? 377 'PublicGetCategory' test.out

#- 378 PublicGetChildCategories
samples/cli/sample-apps Platform publicGetChildCategories \
    --categoryPath 'RECQsBC0Bx2r5RWo' \
    --namespace $AB_NAMESPACE \
    --language 'LqvcXoguyrVMjrEl' \
    --storeId 'zm3jNSjN7wwIQRbx' \
    > test.out 2>&1
eval_tap $? 378 'PublicGetChildCategories' test.out

#- 379 PublicGetDescendantCategories
samples/cli/sample-apps Platform publicGetDescendantCategories \
    --categoryPath 'nVxRm2k0P1QmjqQS' \
    --namespace $AB_NAMESPACE \
    --language 'FzzsJmAph7QRQvJh' \
    --storeId 'hwaClDsay1J8lQWS' \
    > test.out 2>&1
eval_tap $? 379 'PublicGetDescendantCategories' test.out

#- 380 PublicListCurrencies
samples/cli/sample-apps Platform publicListCurrencies \
    --namespace $AB_NAMESPACE \
    --currencyType 'VIRTUAL' \
    > test.out 2>&1
eval_tap $? 380 'PublicListCurrencies' test.out

#- 381 GeDLCDurableRewardShortMap
samples/cli/sample-apps Platform geDLCDurableRewardShortMap \
    --namespace $AB_NAMESPACE \
    --dlcType 'XBOX' \
    > test.out 2>&1
eval_tap $? 381 'GeDLCDurableRewardShortMap' test.out

#- 382 GetAppleConfigVersion
samples/cli/sample-apps Platform getAppleConfigVersion \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 382 'GetAppleConfigVersion' test.out

#- 383 GetIAPItemMapping
samples/cli/sample-apps Platform getIAPItemMapping \
    --namespace $AB_NAMESPACE \
    --platform 'PLAYSTATION' \
    > test.out 2>&1
eval_tap $? 383 'GetIAPItemMapping' test.out

#- 384 PublicGetItemByAppId
samples/cli/sample-apps Platform publicGetItemByAppId \
    --namespace $AB_NAMESPACE \
    --language 'fb8wtRbzCJ2Vg7Is' \
    --region '8e36CezMZNbRn28A' \
    --storeId 'nMORdfzag0D5obxR' \
    --appId 'A5HiYzC7PTJn94DV' \
    > test.out 2>&1
eval_tap $? 384 'PublicGetItemByAppId' test.out

#- 385 PublicQueryItems
samples/cli/sample-apps Platform publicQueryItems \
    --namespace $AB_NAMESPACE \
    --appType 'DEMO' \
    --autoCalcEstimatedPrice 'false' \
    --baseAppId 'C3m85rYRhLHaFxC0' \
    --categoryPath 'S287PL4YDFf1qv4C' \
    --features 'GNjvqNDKZAlOX55Z' \
    --includeSubCategoryItem 'false' \
    --itemType 'INGAMEITEM' \
    --language 'U8hYB0vAUlGa3aEz' \
    --limit '23' \
    --offset '31' \
    --region 'cmBHtbkwAh0tbZZN' \
    --sortBy '["name", "createdAt:desc", "updatedAt"]' \
    --storeId 'skwNBI1KdOaCgdxy' \
    --tags 'k7KRaCHy3Fkm2Brp' \
    > test.out 2>&1
eval_tap $? 385 'PublicQueryItems' test.out

#- 386 PublicGetItemBySku
samples/cli/sample-apps Platform publicGetItemBySku \
    --namespace $AB_NAMESPACE \
    --autoCalcEstimatedPrice 'true' \
    --language 'gUJUzZKT3Bsy6gpA' \
    --region 'fG1maC8yn8wqpJ2V' \
    --storeId 'LnpCIxBnrKVDXxdg' \
    --sku 'Tgzr3LyXn7BgNYkS' \
    > test.out 2>&1
eval_tap $? 386 'PublicGetItemBySku' test.out

#- 387 PublicGetEstimatedPrice
samples/cli/sample-apps Platform publicGetEstimatedPrice \
    --namespace $AB_NAMESPACE \
    --region 'xzmw3tallKIoT8zm' \
    --storeId 'NBxjOlQq4WurlurD' \
    --itemIds '5PfuplKdBUyF6rJP' \
    > test.out 2>&1
eval_tap $? 387 'PublicGetEstimatedPrice' test.out

#- 388 PublicBulkGetItems
samples/cli/sample-apps Platform publicBulkGetItems \
    --namespace $AB_NAMESPACE \
    --autoCalcEstimatedPrice 'false' \
    --language 'ahsGkjIYnVPk5pJz' \
    --region 'CVDrJYdlS76g6HY0' \
    --storeId 'BNH0q2rOd6W9kmKN' \
    --itemIds 'zf1XuMjkWeoN2Jfx' \
    > test.out 2>&1
eval_tap $? 388 'PublicBulkGetItems' test.out

#- 389 PublicValidateItemPurchaseCondition
samples/cli/sample-apps Platform publicValidateItemPurchaseCondition \
    --namespace $AB_NAMESPACE \
    --body '{"itemIds": ["ZDFC9bk0f5aSe1fs", "cY6tmc1AsC25VwP2", "0Hu9ApSRFJV9iO8a"]}' \
    > test.out 2>&1
eval_tap $? 389 'PublicValidateItemPurchaseCondition' test.out

#- 390 PublicSearchItems
samples/cli/sample-apps Platform publicSearchItems \
    --namespace $AB_NAMESPACE \
    --autoCalcEstimatedPrice 'true' \
    --itemType 'COINS' \
    --limit '33' \
    --offset '65' \
    --region 'j4GnwOyJQeARJ3ct' \
    --storeId 'mT3R7JDLGSjCq9EF' \
    --keyword 'iGb0x2R1C3iNZR56' \
    --language 'IztLPM2nd1vwyQX1' \
    > test.out 2>&1
eval_tap $? 390 'PublicSearchItems' test.out

#- 391 PublicGetApp
samples/cli/sample-apps Platform publicGetApp \
    --itemId 'wttE0KLNSsI8c1Nf' \
    --namespace $AB_NAMESPACE \
    --language 'dnMSU6lR2kfVtAd3' \
    --region '44tLz73juxvHCjmn' \
    --storeId 'WIu0v9HXg0p0kuOu' \
    > test.out 2>&1
eval_tap $? 391 'PublicGetApp' test.out

#- 392 PublicGetItemDynamicData
samples/cli/sample-apps Platform publicGetItemDynamicData \
    --itemId 'SfxCsvhso7PPuqh9' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 392 'PublicGetItemDynamicData' test.out

#- 393 PublicGetItem
samples/cli/sample-apps Platform publicGetItem \
    --itemId 'lZ5RYjc8eLl8iY5B' \
    --namespace $AB_NAMESPACE \
    --autoCalcEstimatedPrice 'true' \
    --language 'rvuFWIOxVe8uXebE' \
    --populateBundle 'true' \
    --region 'Qrva1WuG1aOqUenC' \
    --storeId 'L6KR5SbDIKmvlJeB' \
    > test.out 2>&1
eval_tap $? 393 'PublicGetItem' test.out

#- 394 GetPaymentCustomization
eval_tap 0 394 'GetPaymentCustomization # SKIP deprecated' test.out

#- 395 PublicGetPaymentUrl
samples/cli/sample-apps Platform publicGetPaymentUrl \
    --namespace $AB_NAMESPACE \
    --body '{"neonPayConfig": {"cancelUrl": "DRsRB1ctckMVObql", "successUrl": "23TqDTI0lI7zAB5i"}, "paymentOrderNo": "l94hIFPtNPCgakzj", "paymentProvider": "PAYPAL", "returnUrl": "d6tQLstGlTRBAVWe", "ui": "8UfhkxKtD3r2OjDR", "zipCode": "xmRNmZP6d5l76P2c"}' \
    > test.out 2>&1
eval_tap $? 395 'PublicGetPaymentUrl' test.out

#- 396 PublicGetPaymentMethods
samples/cli/sample-apps Platform publicGetPaymentMethods \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'zfp8limp1hUOCyoM' \
    > test.out 2>&1
eval_tap $? 396 'PublicGetPaymentMethods' test.out

#- 397 PublicGetUnpaidPaymentOrder
samples/cli/sample-apps Platform publicGetUnpaidPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo '5muJMT1qSZGANu0X' \
    > test.out 2>&1
eval_tap $? 397 'PublicGetUnpaidPaymentOrder' test.out

#- 398 Pay
samples/cli/sample-apps Platform pay \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'NVE73QkzqrqD581J' \
    --paymentProvider 'WALLET' \
    --zipCode 'qXW6J9aEfxGp6gYC' \
    --body '{"token": "ZkYTSZLFRjDzJDYl"}' \
    > test.out 2>&1
eval_tap $? 398 'Pay' test.out

#- 399 PublicCheckPaymentOrderPaidStatus
samples/cli/sample-apps Platform publicCheckPaymentOrderPaidStatus \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'BdaCJY0RdM5l4pp4' \
    > test.out 2>&1
eval_tap $? 399 'PublicCheckPaymentOrderPaidStatus' test.out

#- 400 GetPaymentPublicConfig
samples/cli/sample-apps Platform getPaymentPublicConfig \
    --namespace $AB_NAMESPACE \
    --sandbox 'false' \
    --paymentProvider 'ADYEN' \
    --region 'bVzcvH46yH8pm5G5' \
    > test.out 2>&1
eval_tap $? 400 'GetPaymentPublicConfig' test.out

#- 401 PublicGetQRCode
samples/cli/sample-apps Platform publicGetQRCode \
    --namespace $AB_NAMESPACE \
    --code 'hyJQ4oWxyNS2JBjL' \
    > test.out 2>&1
eval_tap $? 401 'PublicGetQRCode' test.out

#- 402 PublicNormalizePaymentReturnUrl
samples/cli/sample-apps Platform publicNormalizePaymentReturnUrl \
    --namespace $AB_NAMESPACE \
    --payerID 'BiFEXQ8U4IHZGmKj' \
    --foreinginvoice 'SwuKs8n7hzm5bglf' \
    --invoiceId 'YhlglJCWnJ1nvQGl' \
    --payload 'brfX1tpzQIq4fMRc' \
    --redirectResult 'Qa9MzXuIcPnQMAyO' \
    --resultCode '7EYi7izN0tu7bnMH' \
    --sessionId 'aPqWMkRr5nPVYxtw' \
    --status 'UTQ7sLPLrhZ7Q1ts' \
    --token 'Idw4AgEJEorjEgW6' \
    --type 'ShvukOgYdoMQVQR5' \
    --userId 'yKdwxu7KwISZemBV' \
    --orderNo 'SQ5mtRFhtUPC9IXR' \
    --paymentOrderNo 'SgvDiQoHOStj5EHa' \
    --paymentProvider 'XSOLLA' \
    --returnUrl 'zDtIMexlnqTP1GBz' \
    > test.out 2>&1
eval_tap $? 402 'PublicNormalizePaymentReturnUrl' test.out

#- 403 GetPaymentTaxValue
samples/cli/sample-apps Platform getPaymentTaxValue \
    --namespace $AB_NAMESPACE \
    --zipCode '5OvzqRyS2ij2tIfS' \
    --paymentOrderNo 'MFFy1lNyHIXBoMZC' \
    --paymentProvider 'NEONPAY' \
    > test.out 2>&1
eval_tap $? 403 'GetPaymentTaxValue' test.out

#- 404 GetRewardByCode
samples/cli/sample-apps Platform getRewardByCode \
    --namespace $AB_NAMESPACE \
    --rewardCode 'WM1VB30xEXz8TclF' \
    > test.out 2>&1
eval_tap $? 404 'GetRewardByCode' test.out

#- 405 QueryRewards1
samples/cli/sample-apps Platform queryRewards1 \
    --namespace $AB_NAMESPACE \
    --eventTopic 'NMeJYue3mhSIOcuv' \
    --limit '84' \
    --offset '40' \
    --sortBy '["namespace:desc", "namespace:asc", "rewardCode:asc"]' \
    > test.out 2>&1
eval_tap $? 405 'QueryRewards1' test.out

#- 406 GetReward1
samples/cli/sample-apps Platform getReward1 \
    --namespace $AB_NAMESPACE \
    --rewardId 'AdvOpkx1I4L5WVBO' \
    > test.out 2>&1
eval_tap $? 406 'GetReward1' test.out

#- 407 PublicListStores
samples/cli/sample-apps Platform publicListStores \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 407 'PublicListStores' test.out

#- 408 PublicExistsAnyMyActiveEntitlement
samples/cli/sample-apps Platform publicExistsAnyMyActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --appIds '["qdBilr3NWelKAWl0", "2kAUHgXCq2zGCh0o", "0tbJC8LxKPbPf3Oy"]' \
    --itemIds '["3wTvN5UEYu2WR7ht", "YhqaGdbXdkqUKvcH", "plKiDhzDmtcqoMTd"]' \
    --skus '["IlpLXAyI2qre9T0c", "k6ul0pwx4wwz8jWx", "adaZwuos0rCgdNJb"]' \
    > test.out 2>&1
eval_tap $? 408 'PublicExistsAnyMyActiveEntitlement' test.out

#- 409 PublicGetMyAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform publicGetMyAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --appId 'BLVDYg14hn2ZtzNt' \
    > test.out 2>&1
eval_tap $? 409 'PublicGetMyAppEntitlementOwnershipByAppId' test.out

#- 410 PublicGetMyEntitlementOwnershipByItemId
samples/cli/sample-apps Platform publicGetMyEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --entitlementClazz 'SUBSCRIPTION' \
    --itemId 'hO0txyW7EKfY8lfT' \
    > test.out 2>&1
eval_tap $? 410 'PublicGetMyEntitlementOwnershipByItemId' test.out

#- 411 PublicGetMyEntitlementOwnershipBySku
samples/cli/sample-apps Platform publicGetMyEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --entitlementClazz 'MEDIA' \
    --sku '8ekQW02c6sk1slhW' \
    > test.out 2>&1
eval_tap $? 411 'PublicGetMyEntitlementOwnershipBySku' test.out

#- 412 PublicGetEntitlementOwnershipToken
samples/cli/sample-apps Platform publicGetEntitlementOwnershipToken \
    --namespace $AB_NAMESPACE \
    --appIds '["hji4SszSeeQfwSim", "iqiALDnHFcQTTj3H", "vw9166SpGLij3gr3"]' \
    --itemIds '["ufgXEOzerhDAlOrr", "bh42PJK0OLmet1DH", "Grk3sKDuVtqaTtD1"]' \
    --skus '["VQiEXmWR4mnynifk", "EKPdDtBkntMe1p75", "hg85FHkUoJs4JdWp"]' \
    > test.out 2>&1
eval_tap $? 412 'PublicGetEntitlementOwnershipToken' test.out

#- 413 SyncTwitchDropsEntitlement
samples/cli/sample-apps Platform syncTwitchDropsEntitlement \
    --namespace $AB_NAMESPACE \
    --body '{"gameId": "dm11mQuuZAQ7FfwJ", "language": "xf_VNYD", "region": "g0yf26lmEnU40CIg"}' \
    > test.out 2>&1
eval_tap $? 413 'SyncTwitchDropsEntitlement' test.out

#- 414 PublicGetMyWallet
samples/cli/sample-apps Platform publicGetMyWallet \
    --currencyCode 'QcuwxNSzmmzMQ6Zd' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 414 'PublicGetMyWallet' test.out

#- 415 SyncEpicGameDLC
samples/cli/sample-apps Platform syncEpicGameDLC \
    --namespace $AB_NAMESPACE \
    --userId 'sC0jXdQdH03sDcTh' \
    --body '{"epicGamesJwtToken": "DDctswmtIG3ctLYh"}' \
    > test.out 2>&1
eval_tap $? 415 'SyncEpicGameDLC' test.out

#- 416 SyncOculusDLC
samples/cli/sample-apps Platform syncOculusDLC \
    --namespace $AB_NAMESPACE \
    --userId '3IjwDe1vLkTX5opb' \
    > test.out 2>&1
eval_tap $? 416 'SyncOculusDLC' test.out

#- 417 PublicSyncPsnDlcInventory
samples/cli/sample-apps Platform publicSyncPsnDlcInventory \
    --namespace $AB_NAMESPACE \
    --userId 'qoELCIo2hSz3QcKJ' \
    --body '{"serviceLabel": 91}' \
    > test.out 2>&1
eval_tap $? 417 'PublicSyncPsnDlcInventory' test.out

#- 418 PublicSyncPsnDlcInventoryWithMultipleServiceLabels
samples/cli/sample-apps Platform publicSyncPsnDlcInventoryWithMultipleServiceLabels \
    --namespace $AB_NAMESPACE \
    --userId 'krs2DA0eD92sqp1R' \
    --body '{"serviceLabels": [0, 76, 77]}' \
    > test.out 2>&1
eval_tap $? 418 'PublicSyncPsnDlcInventoryWithMultipleServiceLabels' test.out

#- 419 SyncSteamDLC
samples/cli/sample-apps Platform syncSteamDLC \
    --namespace $AB_NAMESPACE \
    --userId 'etQ02YAg6j5xxwaO' \
    --body '{"appId": "ru6PDq4LbDo7N18e", "steamId": "1gLr9uGct1RXQdTn"}' \
    > test.out 2>&1
eval_tap $? 419 'SyncSteamDLC' test.out

#- 420 SyncXboxDLC
samples/cli/sample-apps Platform syncXboxDLC \
    --namespace $AB_NAMESPACE \
    --userId 'HhMxquAeA5RewsgJ' \
    --body '{"xstsToken": "NiBSLtyVMDAyNF41"}' \
    > test.out 2>&1
eval_tap $? 420 'SyncXboxDLC' test.out

#- 421 PublicQueryUserEntitlements
samples/cli/sample-apps Platform publicQueryUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'KUnq35WBC7zsEF9U' \
    --appType 'GAME' \
    --entitlementClazz 'OPTIONBOX' \
    --entitlementName 'S8kClMmrc12aDN3x' \
    --features '["eZv5iRB1a3zOOIl9", "s5VkeOTdTbDKrN9g", "L7D48O7nuRxakk8D"]' \
    --itemId '["00yPCpMu2XhU0OKY", "h3CwXLTogEiP7fB4", "ePcqyaalcCfCNmL1"]' \
    --limit '49' \
    --offset '51' \
    > test.out 2>&1
eval_tap $? 421 'PublicQueryUserEntitlements' test.out

#- 422 PublicGetUserAppEntitlementByAppId
samples/cli/sample-apps Platform publicGetUserAppEntitlementByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'CMlBYvFo86eCjVgx' \
    --appId 'ncJMkkZCh4EotYCL' \
    > test.out 2>&1
eval_tap $? 422 'PublicGetUserAppEntitlementByAppId' test.out

#- 423 PublicQueryUserEntitlementsByAppType
samples/cli/sample-apps Platform publicQueryUserEntitlementsByAppType \
    --namespace $AB_NAMESPACE \
    --userId 'Ip8kJrzMqzAAGJoh' \
    --limit '30' \
    --offset '29' \
    --appType 'DLC' \
    > test.out 2>&1
eval_tap $? 423 'PublicQueryUserEntitlementsByAppType' test.out

#- 424 PublicGetUserEntitlementsByIds
samples/cli/sample-apps Platform publicGetUserEntitlementsByIds \
    --namespace $AB_NAMESPACE \
    --userId 'HrXX7xPYpjRjwquB' \
    --availablePlatformOnly 'false' \
    --ids '["bLU265Jk202MAg4l", "mIws3NtgcMpdIfft", "HSsUIqW8MVUbEmBl"]' \
    > test.out 2>&1
eval_tap $? 424 'PublicGetUserEntitlementsByIds' test.out

#- 425 PublicGetUserEntitlementByItemId
eval_tap 0 425 'PublicGetUserEntitlementByItemId # SKIP deprecated' test.out

#- 426 PublicGetUserEntitlementBySku
eval_tap 0 426 'PublicGetUserEntitlementBySku # SKIP deprecated' test.out

#- 427 PublicUserEntitlementHistory
samples/cli/sample-apps Platform publicUserEntitlementHistory \
    --namespace $AB_NAMESPACE \
    --userId 'GlEriijjZi4ncWUV' \
    --endDate '83CsfWKrl3ifLCme' \
    --entitlementClazz 'ENTITLEMENT' \
    --limit '26' \
    --offset '71' \
    --startDate 'O4Aor3DwFTQdXCfU' \
    > test.out 2>&1
eval_tap $? 427 'PublicUserEntitlementHistory' test.out

#- 428 PublicExistsAnyUserActiveEntitlement
samples/cli/sample-apps Platform publicExistsAnyUserActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'AztTxoxgbKO98LmT' \
    --appIds '["494t3DG370e4y9I7", "s890JK70UVOEES46", "eQYsy5OUbCy9Yz5b"]' \
    --itemIds '["rtoRbv4WizIVxXjz", "OoodMLRDlPJ7uDuJ", "425PU2AttDsLJOcF"]' \
    --skus '["6hOAnDxGhj2gqHEh", "VPFgsBwt6N6ITp71", "b44Zv8AkUWOUppUP"]' \
    > test.out 2>&1
eval_tap $? 428 'PublicExistsAnyUserActiveEntitlement' test.out

#- 429 PublicGetUserAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform publicGetUserAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'N4M1Oktw2T6867m4' \
    --appId 'Vcm5a9q1gev8RLVW' \
    > test.out 2>&1
eval_tap $? 429 'PublicGetUserAppEntitlementOwnershipByAppId' test.out

#- 430 PublicGetUserEntitlementOwnershipByItemId
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'AcLutz98dllM8N99' \
    --entitlementClazz 'CODE' \
    --itemId '1qulsffbzZl2U3i5' \
    > test.out 2>&1
eval_tap $? 430 'PublicGetUserEntitlementOwnershipByItemId' test.out

#- 431 PublicGetUserEntitlementOwnershipByItemIds
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'ZuVlmluovOcAouXh' \
    --ids '["3sJtBLo9EJI0y1ME", "53tLmgromzM54FJW", "FycKga9pgnwe3TlZ"]' \
    > test.out 2>&1
eval_tap $? 431 'PublicGetUserEntitlementOwnershipByItemIds' test.out

#- 432 PublicGetUserEntitlementOwnershipBySku
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --userId 'OjEvRUM6cMC8Z8gN' \
    --entitlementClazz 'APP' \
    --sku 'WrkHembv4rshGHcd' \
    > test.out 2>&1
eval_tap $? 432 'PublicGetUserEntitlementOwnershipBySku' test.out

#- 433 PublicGetUserEntitlement
samples/cli/sample-apps Platform publicGetUserEntitlement \
    --entitlementId 'hRw2RF2Mky5zPKmV' \
    --namespace $AB_NAMESPACE \
    --userId 'P3hoXiciEOCOKWU0' \
    > test.out 2>&1
eval_tap $? 433 'PublicGetUserEntitlement' test.out

#- 434 PublicConsumeUserEntitlement
samples/cli/sample-apps Platform publicConsumeUserEntitlement \
    --entitlementId 'Is6ZnyCdnmA5eQKt' \
    --namespace $AB_NAMESPACE \
    --userId 'NlLiLc1NaPBJxS18' \
    --body '{"metadata": {"operationSource": "INVENTORY"}, "options": ["f1zRtE4iDJKqnDkD", "l3eGjQjnFxaXjr4C", "zCAPWttI5TYhQrZx"], "requestId": "kz8a6feQ3Nt6fM64", "useCount": 46}' \
    > test.out 2>&1
eval_tap $? 434 'PublicConsumeUserEntitlement' test.out

#- 435 PublicSellUserEntitlement
samples/cli/sample-apps Platform publicSellUserEntitlement \
    --entitlementId 'DM3BprWdZCPnVWie' \
    --namespace $AB_NAMESPACE \
    --userId 'jqfiTaY3Sz3oN8rz' \
    --body '{"requestId": "Bx259hcJiPuELYOy", "useCount": 89}' \
    > test.out 2>&1
eval_tap $? 435 'PublicSellUserEntitlement' test.out

#- 436 PublicSplitUserEntitlement
samples/cli/sample-apps Platform publicSplitUserEntitlement \
    --entitlementId 'jBrYtLU4RdJ1BExT' \
    --namespace $AB_NAMESPACE \
    --userId 'He5fW3wTJJp7Kdsc' \
    --body '{"metadata": {"operationSource": "INVENTORY"}, "useCount": 90}' \
    > test.out 2>&1
eval_tap $? 436 'PublicSplitUserEntitlement' test.out

#- 437 PublicTransferUserEntitlement
samples/cli/sample-apps Platform publicTransferUserEntitlement \
    --entitlementId 'xVDB0F7BAhn91J4Z' \
    --namespace $AB_NAMESPACE \
    --userId 'DatE7uxSRFZx3MyU' \
    --body '{"entitlementId": "CFCGCmeQ9bTqbeJn", "metadata": {"operationSource": "INVENTORY"}, "useCount": 94}' \
    > test.out 2>&1
eval_tap $? 437 'PublicTransferUserEntitlement' test.out

#- 438 PublicRedeemCode
samples/cli/sample-apps Platform publicRedeemCode \
    --namespace $AB_NAMESPACE \
    --userId '8uffEgsBAcJwC1Iz' \
    --body '{"code": "aPozxoXPzL89TOxi", "language": "rMS_lOMF", "region": "kJdemMdmzhRBcgKI"}' \
    > test.out 2>&1
eval_tap $? 438 'PublicRedeemCode' test.out

#- 439 PublicFulfillAppleIAPItem
samples/cli/sample-apps Platform publicFulfillAppleIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'gcl99v9oX9QgV6A3' \
    --body '{"excludeOldTransactions": true, "language": "rA_lcNI", "productId": "iJNAa0Dn4Qb6EPPc", "receiptData": "4ywI0kNOCT6V61kx", "region": "a149KU6Mq89fDO7F", "transactionId": "te61j7PnMRcjyfIo"}' \
    > test.out 2>&1
eval_tap $? 439 'PublicFulfillAppleIAPItem' test.out

#- 440 SyncEpicGamesInventory
samples/cli/sample-apps Platform syncEpicGamesInventory \
    --namespace $AB_NAMESPACE \
    --userId 'q1gVTdouPHJpgDiv' \
    --body '{"epicGamesJwtToken": "KlVkX9YW9q3BCqmA"}' \
    > test.out 2>&1
eval_tap $? 440 'SyncEpicGamesInventory' test.out

#- 441 PublicFulfillGoogleIAPItem
samples/cli/sample-apps Platform publicFulfillGoogleIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'WRVWADIdcsegV5Dq' \
    --body '{"autoAck": false, "autoConsume": true, "language": "NMmK_ZKVY-kK", "orderId": "VYZ9U9aFkVhIARdo", "packageName": "vo07gq49XZPeWHjC", "productId": "FVsIv0PoPCx1YVVE", "purchaseTime": 57, "purchaseToken": "J1cOHygma8p2GYyO", "region": "JcqNN07ygysQWgJB", "subscriptionPurchase": true}' \
    > test.out 2>&1
eval_tap $? 441 'PublicFulfillGoogleIAPItem' test.out

#- 442 SyncOculusConsumableEntitlements
samples/cli/sample-apps Platform syncOculusConsumableEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'XgdgFybHTvemNj0U' \
    > test.out 2>&1
eval_tap $? 442 'SyncOculusConsumableEntitlements' test.out

#- 443 PublicReconcilePlayStationStore
samples/cli/sample-apps Platform publicReconcilePlayStationStore \
    --namespace $AB_NAMESPACE \
    --userId '7CkYmVZd80JO1C4q' \
    --body '{"currencyCode": "HVFi2DgndMVyVZwS", "price": 0.6652371262083129, "productId": "Q96VbB0iWWk9aG4p", "serviceLabel": 62}' \
    > test.out 2>&1
eval_tap $? 443 'PublicReconcilePlayStationStore' test.out

#- 444 PublicReconcilePlayStationStoreWithMultipleServiceLabels
samples/cli/sample-apps Platform publicReconcilePlayStationStoreWithMultipleServiceLabels \
    --namespace $AB_NAMESPACE \
    --userId 'sEmB616pCEvor3Q9' \
    --body '{"currencyCode": "f8kOyGuYzVQF7xR3", "price": 0.16926503441178087, "productId": "QmYSfq5jFNgTTJTW", "serviceLabels": [42, 29, 62]}' \
    > test.out 2>&1
eval_tap $? 444 'PublicReconcilePlayStationStoreWithMultipleServiceLabels' test.out

#- 445 SyncSteamInventory
samples/cli/sample-apps Platform syncSteamInventory \
    --namespace $AB_NAMESPACE \
    --userId 'SUJFNrzDOetJ1MEj' \
    --body '{"appId": "7qVrxr3yqt3icby5", "currencyCode": "3V7fr10bV5l2lBSX", "language": "qNHK-tIHO", "price": 0.4460815506530813, "productId": "E6a4mPyzI4NED5VQ", "region": "x4kwwhcWWDGI3atm", "steamId": "KNl4UYgiCGoDXrG8"}' \
    > test.out 2>&1
eval_tap $? 445 'SyncSteamInventory' test.out

#- 446 PublicQueryUserThirdPartySubscription
samples/cli/sample-apps Platform publicQueryUserThirdPartySubscription \
    --namespace $AB_NAMESPACE \
    --platform 'EPICGAMES' \
    --userId 'X2NTroE3PIQGXvMm' \
    --activeOnly 'false' \
    --groupId 'e166P8lLdHacwjhl' \
    --limit '3' \
    --offset '17' \
    --productId '8dCkg4VR33evk03V' \
    > test.out 2>&1
eval_tap $? 446 'PublicQueryUserThirdPartySubscription' test.out

#- 447 SyncTwitchDropsEntitlement1
samples/cli/sample-apps Platform syncTwitchDropsEntitlement1 \
    --namespace $AB_NAMESPACE \
    --userId 'NMVoaySDDAyJinmV' \
    --body '{"gameId": "AOQKHezH6JsHYjGu", "language": "Of_wumP_Wj", "region": "7bcCNL4L9SpjDliK"}' \
    > test.out 2>&1
eval_tap $? 447 'SyncTwitchDropsEntitlement1' test.out

#- 448 SyncXboxInventory
samples/cli/sample-apps Platform syncXboxInventory \
    --namespace $AB_NAMESPACE \
    --userId 'U7cMIIpWrNwCJpae' \
    --body '{"currencyCode": "Z9xKzJdCjiDiZqvA", "price": 0.12229009432116966, "productId": "9WEUu5xQ6EtqIPtk", "xstsToken": "pahFFKsx9EF5sw4Y"}' \
    > test.out 2>&1
eval_tap $? 448 'SyncXboxInventory' test.out

#- 449 PublicQueryUserOrders
samples/cli/sample-apps Platform publicQueryUserOrders \
    --namespace $AB_NAMESPACE \
    --userId '4UTywnIDhGn8RhHB' \
    --discounted 'false' \
    --itemId 'sASOdU0AIusxFl94' \
    --limit '92' \
    --offset '19' \
    --status 'INIT' \
    > test.out 2>&1
eval_tap $? 449 'PublicQueryUserOrders' test.out

#- 450 PublicCreateUserOrder
samples/cli/sample-apps Platform publicCreateUserOrder \
    --namespace $AB_NAMESPACE \
    --userId 'nIdS4dCex69Q72yr' \
    --body '{"currencyCode": "WMOcUAC9GAFfuWp9", "discountCodes": ["seq1bYH16t7y69gK", "KrhZCygXnZRnxK8p", "IZwmed5PVG8Ipv5I"], "discountedPrice": 70, "ext": {"8pdCwUAj74byQnYu": {}, "GwNnsrJfqxJ34yvi": {}, "DQxmVelK2J9INDqF": {}}, "itemId": "VSyzsvICV0LrX73I", "language": "JVr_HTPw-980", "price": 8, "quantity": 65, "region": "rJxsfVzYWWEXDrGD", "returnUrl": "B9Bf24xhST5kEUHi", "sectionId": "opvvrwgAiybyKcWg"}' \
    > test.out 2>&1
eval_tap $? 450 'PublicCreateUserOrder' test.out

#- 451 PublicPreviewOrderPrice
samples/cli/sample-apps Platform publicPreviewOrderPrice \
    --namespace $AB_NAMESPACE \
    --userId 'YgWQ0fOs1jtlPGNt' \
    --body '{"currencyCode": "B0M9fDGaVSRvhzDV", "discountCodes": ["knkO0CksnwZIPWPV", "RNuLdJTrziye8KGh", "ZpTziaIFYtHB9QSw"], "discountedPrice": 46, "itemId": "ttCvhJf36izTj8Av", "price": 40, "quantity": 79}' \
    > test.out 2>&1
eval_tap $? 451 'PublicPreviewOrderPrice' test.out

#- 452 PublicGetUserOrder
samples/cli/sample-apps Platform publicGetUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'HcYECzOgwaUBjzOh' \
    --userId 'M6upCvSlqDKAs66h' \
    > test.out 2>&1
eval_tap $? 452 'PublicGetUserOrder' test.out

#- 453 PublicCancelUserOrder
samples/cli/sample-apps Platform publicCancelUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'mq8NxNRWtWklLhnP' \
    --userId 'j6z8vfPQAxi9O4Bw' \
    > test.out 2>&1
eval_tap $? 453 'PublicCancelUserOrder' test.out

#- 454 PublicGetUserOrderHistories
samples/cli/sample-apps Platform publicGetUserOrderHistories \
    --namespace $AB_NAMESPACE \
    --orderNo '9GTQacFtXc3PIwZx' \
    --userId 'ajiOEAS4Dq4nZScN' \
    > test.out 2>&1
eval_tap $? 454 'PublicGetUserOrderHistories' test.out

#- 455 PublicDownloadUserOrderReceipt
samples/cli/sample-apps Platform publicDownloadUserOrderReceipt \
    --namespace $AB_NAMESPACE \
    --orderNo 'ycezjcQp0i6Us2cn' \
    --userId 'MRl8PZEYWbw3FOs6' \
    > test.out 2>&1
eval_tap $? 455 'PublicDownloadUserOrderReceipt' test.out

#- 456 PublicGetPaymentAccounts
samples/cli/sample-apps Platform publicGetPaymentAccounts \
    --namespace $AB_NAMESPACE \
    --userId 'OK0Q09n3hiEfbarz' \
    > test.out 2>&1
eval_tap $? 456 'PublicGetPaymentAccounts' test.out

#- 457 PublicDeletePaymentAccount
samples/cli/sample-apps Platform publicDeletePaymentAccount \
    --id 'caEh2ds3UAZ2nAw5' \
    --namespace $AB_NAMESPACE \
    --type 'card' \
    --userId 'gjQQmKPJG9l8y6i7' \
    > test.out 2>&1
eval_tap $? 457 'PublicDeletePaymentAccount' test.out

#- 458 PublicListActiveSections
samples/cli/sample-apps Platform publicListActiveSections \
    --namespace $AB_NAMESPACE \
    --userId 'CbKsNNlFJPktVeRU' \
    --autoCalcEstimatedPrice 'true' \
    --language 'YOr5dFjZLRkvEyqw' \
    --region 'V7i7emVBraUcZqaB' \
    --storeId 'Zx66v4RR2Un33dtG' \
    --viewId '66ylIcqEJJ4JXwjI' \
    > test.out 2>&1
eval_tap $? 458 'PublicListActiveSections' test.out

#- 459 PublicQueryUserSubscriptions
samples/cli/sample-apps Platform publicQueryUserSubscriptions \
    --namespace $AB_NAMESPACE \
    --userId 'FFleWsXuca3A2cyt' \
    --chargeStatus 'SETUP' \
    --itemId 'OJwqSXHivHqKSwej' \
    --limit '51' \
    --offset '59' \
    --sku 'oteWBCgNuf8j2lnk' \
    --status 'INIT' \
    --subscribedBy 'USER' \
    > test.out 2>&1
eval_tap $? 459 'PublicQueryUserSubscriptions' test.out

#- 460 PublicSubscribeSubscription
samples/cli/sample-apps Platform publicSubscribeSubscription \
    --namespace $AB_NAMESPACE \
    --userId 'nQuHpC532Gnex7hF' \
    --body '{"currencyCode": "RrLvOwVK0AcvcVCr", "itemId": "iJPWX54WarFgD50W", "language": "oXIw_DfqE", "region": "4MPLhxAWY9yDVN6J", "returnUrl": "Em0PThrvxQinRob7", "source": "k39LiVoogoBm3B4e"}' \
    > test.out 2>&1
eval_tap $? 460 'PublicSubscribeSubscription' test.out

#- 461 PublicCheckUserSubscriptionSubscribableByItemId
samples/cli/sample-apps Platform publicCheckUserSubscriptionSubscribableByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'WTjyz3ETPYlgh8Oh' \
    --itemId '4c4qdQFWTs8fqqvi' \
    > test.out 2>&1
eval_tap $? 461 'PublicCheckUserSubscriptionSubscribableByItemId' test.out

#- 462 PublicGetUserSubscription
samples/cli/sample-apps Platform publicGetUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'fcGH85YrIuFndbaT' \
    --userId 'biTumqeXXzgNJgtS' \
    > test.out 2>&1
eval_tap $? 462 'PublicGetUserSubscription' test.out

#- 463 PublicChangeSubscriptionBillingAccount
samples/cli/sample-apps Platform publicChangeSubscriptionBillingAccount \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'RrZ2heYcjPYlnkJa' \
    --userId '4XvjeFmwzidNl2LI' \
    > test.out 2>&1
eval_tap $? 463 'PublicChangeSubscriptionBillingAccount' test.out

#- 464 PublicCancelSubscription
samples/cli/sample-apps Platform publicCancelSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'ZuO8KwqpexTKmi08' \
    --userId 'JaxZ6RkL5ZEUbTgG' \
    --body '{"immediate": true, "reason": "Fpr9OtjEbVafBwzi"}' \
    > test.out 2>&1
eval_tap $? 464 'PublicCancelSubscription' test.out

#- 465 PublicGetUserSubscriptionBillingHistories
samples/cli/sample-apps Platform publicGetUserSubscriptionBillingHistories \
    --namespace $AB_NAMESPACE \
    --subscriptionId '6xU5N1TeqIIzVVsR' \
    --userId 'fuXkdKMUowQqOScz' \
    --excludeFree 'true' \
    --limit '31' \
    --offset '13' \
    > test.out 2>&1
eval_tap $? 465 'PublicGetUserSubscriptionBillingHistories' test.out

#- 466 PublicListViews
samples/cli/sample-apps Platform publicListViews \
    --namespace $AB_NAMESPACE \
    --userId 'UeO0sSx7txmNcug7' \
    --language 'jwXsFYRuYMtZnq8H' \
    --storeId 'ulqtCtGNFzrYE07b' \
    > test.out 2>&1
eval_tap $? 466 'PublicListViews' test.out

#- 467 PublicGetWallet
samples/cli/sample-apps Platform publicGetWallet \
    --currencyCode 'IOFDsA2RmnCRfFip' \
    --namespace $AB_NAMESPACE \
    --userId 'yhe2NXI2jyORFYV6' \
    > test.out 2>&1
eval_tap $? 467 'PublicGetWallet' test.out

#- 468 PublicListUserWalletTransactions
samples/cli/sample-apps Platform publicListUserWalletTransactions \
    --currencyCode 'awkzH3rk3d2dd7uz' \
    --namespace $AB_NAMESPACE \
    --userId 'Ojn1wuALDvOjdblQ' \
    --limit '93' \
    --offset '61' \
    > test.out 2>&1
eval_tap $? 468 'PublicListUserWalletTransactions' test.out

#- 469 PublicGetMyDLCContent
samples/cli/sample-apps Platform publicGetMyDLCContent \
    --includeAllNamespaces 'true' \
    --type 'OCULUS' \
    > test.out 2>&1
eval_tap $? 469 'PublicGetMyDLCContent' test.out

#- 470 QueryFulfillments
samples/cli/sample-apps Platform queryFulfillments \
    --namespace $AB_NAMESPACE \
    --endTime 'Tcv3iLxbqpg2HRaZ' \
    --limit '35' \
    --offset '16' \
    --startTime '07DwGx0J1yTk4FSn' \
    --state 'REVOKED' \
    --transactionId 'A93RV9DYBO3RKiW8' \
    --userId 'UytUDeavr3r2jvXd' \
    > test.out 2>&1
eval_tap $? 470 'QueryFulfillments' test.out

#- 471 QueryItemsV2
samples/cli/sample-apps Platform queryItemsV2 \
    --namespace $AB_NAMESPACE \
    --appType 'GAME' \
    --availableDate 'a7fHE64qsLI1YkId' \
    --baseAppId 'TXcaO6rQ0PM36Nir' \
    --categoryPath 'PQJd3tOc8pG12ms6' \
    --features 'bFeXh5010sYN9sLr' \
    --includeSubCategoryItem 'true' \
    --itemName 'IyQmmqbMkNf1Zy3D' \
    --itemStatus 'ACTIVE' \
    --itemType '["LOOTBOX", "MEDIA", "SEASON"]' \
    --limit '47' \
    --offset '47' \
    --region 'j3er2BewhSkpiaAP' \
    --sectionExclusive 'true' \
    --sortBy '["updatedAt", "name", "name:asc"]' \
    --storeId 'j1xdknWZaaGVeiIZ' \
    --tags 'ZZTdjULLox9TctP1' \
    --targetNamespace 'LLrpcpkgQOFC72iQ' \
    --withTotal 'false' \
    > test.out 2>&1
eval_tap $? 471 'QueryItemsV2' test.out

#- 472 ImportStore1
samples/cli/sample-apps Platform importStore1 \
    --namespace $AB_NAMESPACE \
    --storeId '3PWsDalahnpDwkOG' \
    --strictMode 'false' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 472 'ImportStore1' test.out

#- 473 ExportStore1
samples/cli/sample-apps Platform exportStore1 \
    --namespace $AB_NAMESPACE \
    --storeId 'lwAcWctjoydPqeRz' \
    --body '{"itemIds": ["bXPRko5kMjdfKEE5", "WCvfnJqP0QJI8Ikw", "VDavDpto84NCP8Nu"]}' \
    > test.out 2>&1
eval_tap $? 473 'ExportStore1' test.out

#- 474 FulfillRewardsV2
samples/cli/sample-apps Platform fulfillRewardsV2 \
    --namespace $AB_NAMESPACE \
    --userId 'e9FfJmnmmdtX8UpR' \
    --body '{"entitlementCollectionId": "5kba9PueRUpkHJAa", "entitlementOrigin": "GooglePlay", "metadata": {"FQEqzUcFuql4fcJw": {}, "QlOXDiyNydJeyo0b": {}, "FvwYqhTj9Dt0g5KO": {}}, "origin": "Nintendo", "rewards": [{"currency": {"currencyCode": "e1YMPtfQ19NNrTLg", "namespace": "qxma8di0tdnHz0dD"}, "item": {"itemId": "WO1LDpKSM4Nk3jtA", "itemName": "HT1Di7G8GcAsegnc", "itemSku": "VIeB4coGqiUSutXY", "itemType": "rsunx5DCHSfetefq"}, "quantity": 45, "type": "CURRENCY"}, {"currency": {"currencyCode": "sgTfg4kzPRxL3oKO", "namespace": "6w84IEWdVTnVe69F"}, "item": {"itemId": "dhaOykvugFchqwIJ", "itemName": "Cwxp6EQP4ICPVguc", "itemSku": "IgqCe9TG57cOONLb", "itemType": "CqESzqcAMkLhH1JU"}, "quantity": 83, "type": "ITEM"}, {"currency": {"currencyCode": "1lT2sTPV74bWpdhu", "namespace": "q4Kh91xQbxs4ORni"}, "item": {"itemId": "0lk4xa0mpqDkm8SL", "itemName": "LhvJqqUW45oAsDel", "itemSku": "zzluiI2c8hj6A6n0", "itemType": "lsugLjDVoyaNKJu8"}, "quantity": 63, "type": "ITEM"}], "source": "REFERRAL_BONUS", "transactionId": "xxFiV9WGY0eF8QtP"}' \
    > test.out 2>&1
eval_tap $? 474 'FulfillRewardsV2' test.out

#- 475 FulfillItems
samples/cli/sample-apps Platform fulfillItems \
    --namespace $AB_NAMESPACE \
    --transactionId '5tOuJ2br7c5CAr7i' \
    --userId '883nAmlGskWa4wck' \
    --body '{"items": [{"duration": 57, "endDate": "1999-11-29T00:00:00Z", "entitlementCollectionId": "TypDco1MA3NZcLFC", "entitlementOrigin": "Xbox", "itemId": "Im1Rhe0b8nCik20g", "itemSku": "Gvnz364XwijC2aJ8", "language": "ZcOQaGshKHC0Ky86", "metadata": {"N7sIAG8jxou0ljit": {}, "D1bxbAF3ycDasXOR": {}, "8DlcOrRqfRQGYzah": {}}, "orderNo": "qmVWq1rvDvhnHfNj", "origin": "System", "quantity": 5, "region": "W8ymweex3Vo8BlUa", "source": "ORDER_REVOCATION", "startDate": "1986-07-05T00:00:00Z", "storeId": "6aLTmNERdw1OmNL7"}, {"duration": 37, "endDate": "1990-07-31T00:00:00Z", "entitlementCollectionId": "S9a7h6TwrCadCIOc", "entitlementOrigin": "Xbox", "itemId": "Fh9ZEva37pMYsjgc", "itemSku": "oatrL9PBsLtc3WQK", "language": "LX5cjCL9meTgu3pd", "metadata": {"QWt8QFPHca2kKyQY": {}, "B615v2BnwCRa5Ihk": {}, "ZzJQ1UndSPLToiC0": {}}, "orderNo": "IqhjaxEFS4inXD54", "origin": "Twitch", "quantity": 34, "region": "kLlzFQDEMVQySoAi", "source": "REDEEM_CODE", "startDate": "1984-12-20T00:00:00Z", "storeId": "kUyCA2cyDIuYztIx"}, {"duration": 24, "endDate": "1988-01-03T00:00:00Z", "entitlementCollectionId": "4sq8dRxpEllAjSAE", "entitlementOrigin": "System", "itemId": "AZK1UFAp5wA9dhXR", "itemSku": "xnPTTFe26wLGhdE8", "language": "mgUA34thwxpOclqq", "metadata": {"d4lodDDcNHr1Ty0Y": {}, "eo8Hxs2XwYzpNZyW": {}, "9xeiT0YqOwuRlfbB": {}}, "orderNo": "MXy0pIk6hoMwT1A5", "origin": "Nintendo", "quantity": 67, "region": "ciMOVk8DAdNkuygf", "source": "DLC", "startDate": "1992-09-29T00:00:00Z", "storeId": "lNPP5dkHh3aj47K1"}]}' \
    > test.out 2>&1
eval_tap $? 475 'FulfillItems' test.out

#- 476 RetryFulfillItems
samples/cli/sample-apps Platform retryFulfillItems \
    --namespace $AB_NAMESPACE \
    --transactionId 'Tyo0G0wuY8SD441n' \
    --userId '4jQGBXAKR4rMeFtM' \
    > test.out 2>&1
eval_tap $? 476 'RetryFulfillItems' test.out

#- 477 RevokeItems
samples/cli/sample-apps Platform revokeItems \
    --namespace $AB_NAMESPACE \
    --transactionId 'fojboLlTY3HmXMBg' \
    --userId 'vJnE7kuFMZCvulHS' \
    > test.out 2>&1
eval_tap $? 477 'RevokeItems' test.out

#- 478 V2PublicFulfillAppleIAPItem
samples/cli/sample-apps Platform v2PublicFulfillAppleIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'AFtlhLF1bN723v5q' \
    --body '{"transactionId": "KiquwMUQFnRooWAI"}' \
    > test.out 2>&1
eval_tap $? 478 'V2PublicFulfillAppleIAPItem' test.out


rm -f "tmp.dat"

exit $EXIT_CODE