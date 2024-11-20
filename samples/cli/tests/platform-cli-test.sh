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
echo "1..481"

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
    --id 'Izjv7inqp51WmVx6' \
    > test.out 2>&1
eval_tap $? 3 'GetFulfillmentScript' test.out

#- 4 CreateFulfillmentScript
samples/cli/sample-apps Platform createFulfillmentScript \
    --id '8vnKJ4loCVWHexvm' \
    --body '{"grantDays": "2glZVyCWlILl33ot"}' \
    > test.out 2>&1
eval_tap $? 4 'CreateFulfillmentScript' test.out

#- 5 DeleteFulfillmentScript
samples/cli/sample-apps Platform deleteFulfillmentScript \
    --id 'KhCDkHE5xHTIzjJn' \
    > test.out 2>&1
eval_tap $? 5 'DeleteFulfillmentScript' test.out

#- 6 UpdateFulfillmentScript
samples/cli/sample-apps Platform updateFulfillmentScript \
    --id 'fzDUVFSUwJuf750s' \
    --body '{"grantDays": "O9VZj0QAp6n8D5pM"}' \
    > test.out 2>&1
eval_tap $? 6 'UpdateFulfillmentScript' test.out

#- 7 ListItemTypeConfigs
samples/cli/sample-apps Platform listItemTypeConfigs \
    > test.out 2>&1
eval_tap $? 7 'ListItemTypeConfigs' test.out

#- 8 CreateItemTypeConfig
samples/cli/sample-apps Platform createItemTypeConfig \
    --body '{"clazz": "My3Zdg6IQiW4V1RW", "dryRun": true, "fulfillmentUrl": "RUHEbhIbEKEpOQLj", "itemType": "COINS", "purchaseConditionUrl": "W5RCx570RroDIA7A"}' \
    > test.out 2>&1
eval_tap $? 8 'CreateItemTypeConfig' test.out

#- 9 SearchItemTypeConfig
samples/cli/sample-apps Platform searchItemTypeConfig \
    --clazz 'g0BQm834Z8YyEdIk' \
    --itemType 'INGAMEITEM' \
    > test.out 2>&1
eval_tap $? 9 'SearchItemTypeConfig' test.out

#- 10 GetItemTypeConfig
samples/cli/sample-apps Platform getItemTypeConfig \
    --id 'tgIVqYbi8MB127CB' \
    > test.out 2>&1
eval_tap $? 10 'GetItemTypeConfig' test.out

#- 11 UpdateItemTypeConfig
samples/cli/sample-apps Platform updateItemTypeConfig \
    --id 'cEfF8KGd6Drs3z8u' \
    --body '{"clazz": "ssIyUR7L34iqDkvX", "dryRun": true, "fulfillmentUrl": "5PycpLz8Od0ijL2L", "purchaseConditionUrl": "Kuzc30JLNVhL3Mxb"}' \
    > test.out 2>&1
eval_tap $? 11 'UpdateItemTypeConfig' test.out

#- 12 DeleteItemTypeConfig
samples/cli/sample-apps Platform deleteItemTypeConfig \
    --id 'WUePKb7Irn3QnrzZ' \
    > test.out 2>&1
eval_tap $? 12 'DeleteItemTypeConfig' test.out

#- 13 QueryCampaigns
samples/cli/sample-apps Platform queryCampaigns \
    --namespace $AB_NAMESPACE \
    --limit '60' \
    --name 'e1Sc00voSuS2kkRv' \
    --offset '82' \
    --tag 'v7FNOzOlSs53OvFb' \
    > test.out 2>&1
eval_tap $? 13 'QueryCampaigns' test.out

#- 14 CreateCampaign
samples/cli/sample-apps Platform createCampaign \
    --namespace $AB_NAMESPACE \
    --body '{"description": "UXsjr0MobutXCfue", "discountConfig": {"categories": [{"categoryPath": "c6tGSzDcLZQTz12P", "includeSubCategories": true}, {"categoryPath": "dj5xcXH4E22iUuZZ", "includeSubCategories": false}, {"categoryPath": "4xYVPnE4zTxLmFU1", "includeSubCategories": false}], "currencyCode": "N0pIrZWdSLmVTZm6", "currencyNamespace": "eKB4HtPIGxTn1Ekh", "discountAmount": 7, "discountPercentage": 35, "discountType": "PERCENTAGE", "items": [{"itemId": "Uri1ztbRwWoqWGIP", "itemName": "dkJiRSwFnqB3aSPV"}, {"itemId": "ZTCfDXDi67Wm4GLm", "itemName": "307izk8vloh357yZ"}, {"itemId": "PYYd4XU3G5Q7Qoer", "itemName": "eOm3Bi73WdLkWPL6"}], "restrictType": "NONE", "stackable": true}, "items": [{"extraSubscriptionDays": 69, "itemId": "0J3Abo4QGAJGcJ7B", "itemName": "Fy5nVGIUjaW8Bgdh", "quantity": 100}, {"extraSubscriptionDays": 15, "itemId": "ijienozfJIzybzPw", "itemName": "zp2xT6pum98gC4OB", "quantity": 80}, {"extraSubscriptionDays": 88, "itemId": "aGLPD9faZgjBWTbr", "itemName": "Jl9Z9Nqn5WZOP2de", "quantity": 48}], "maxRedeemCountPerCampaignPerUser": 46, "maxRedeemCountPerCode": 33, "maxRedeemCountPerCodePerUser": 48, "maxSaleCount": 9, "name": "qlaxCcsSiHOinsy6", "redeemEnd": "1977-06-09T00:00:00Z", "redeemStart": "1996-12-22T00:00:00Z", "redeemType": "ITEM", "status": "ACTIVE", "tags": ["hJXhP3uf2WfWgYSz", "hExrOdBrDonxZekB", "FNSKNFQ5U2z6tGyq"], "type": "REDEMPTION"}' \
    > test.out 2>&1
eval_tap $? 14 'CreateCampaign' test.out

#- 15 GetCampaign
samples/cli/sample-apps Platform getCampaign \
    --campaignId 'h8D3eLRhIlk9aIiS' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 15 'GetCampaign' test.out

#- 16 UpdateCampaign
samples/cli/sample-apps Platform updateCampaign \
    --campaignId 'jrL1YvkdRA2frZQ6' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "Rlr45bYCotGEB3vj", "discountConfig": {"categories": [{"categoryPath": "2H4VN29objhk3lxC", "includeSubCategories": true}, {"categoryPath": "r960ItxZav2FjZ6T", "includeSubCategories": true}, {"categoryPath": "qcdbofjzAFTXHI22", "includeSubCategories": false}], "currencyCode": "o3r4cKarJG691AZb", "currencyNamespace": "Wg4FR7HZordJfh8P", "discountAmount": 32, "discountPercentage": 91, "discountType": "AMOUNT", "items": [{"itemId": "Mpxg3U2oDLpBzZux", "itemName": "vyEzfu241mXOLoxX"}, {"itemId": "oftKgxtyj8gmzQpj", "itemName": "3ZhV7XYZTKmoEGir"}, {"itemId": "lD8iHWvIdEqS2rCe", "itemName": "SkCFCtUionx1oNUx"}], "restrictType": "ITEMS_AND_CATEGORIES", "stackable": true}, "items": [{"extraSubscriptionDays": 7, "itemId": "KNO81RIZCb3jdg27", "itemName": "DHJU8MIuW39qeMvv", "quantity": 45}, {"extraSubscriptionDays": 28, "itemId": "ovo5l2uKhaGJdLgD", "itemName": "fstGgKQtguz95roc", "quantity": 12}, {"extraSubscriptionDays": 68, "itemId": "p0yjww9eQQ7jxQ88", "itemName": "xClDHIAOopJ3S8w0", "quantity": 92}], "maxRedeemCountPerCampaignPerUser": 67, "maxRedeemCountPerCode": 94, "maxRedeemCountPerCodePerUser": 72, "maxSaleCount": 12, "name": "niuTlOaSXFUN4aVV", "redeemEnd": "1993-08-21T00:00:00Z", "redeemStart": "1997-12-06T00:00:00Z", "redeemType": "ITEM", "status": "INACTIVE", "tags": ["OY9vVN5TdI3T1F9l", "WhugX2BkW92Dgdtz", "gvoKY5qp57NzTcFc"]}' \
    > test.out 2>&1
eval_tap $? 16 'UpdateCampaign' test.out

#- 17 RenameBatch
samples/cli/sample-apps Platform renameBatch \
    --campaignId 'WM2XwrdbajQ1lYyb' \
    --namespace $AB_NAMESPACE \
    --body '{"newName": "dDDhcZwuaK93GMRO", "oldName": "f7hnGLoaXooCV31t"}' \
    > test.out 2>&1
eval_tap $? 17 'RenameBatch' test.out

#- 18 QueryCampaignBatchNames
samples/cli/sample-apps Platform queryCampaignBatchNames \
    --campaignId 'vNQhpYBiq8oyA8un' \
    --namespace $AB_NAMESPACE \
    --batchName 'mhAIuxSepEaOPTEV' \
    --limit '46' \
    > test.out 2>&1
eval_tap $? 18 'QueryCampaignBatchNames' test.out

#- 19 GetCampaignDynamic
samples/cli/sample-apps Platform getCampaignDynamic \
    --campaignId '4gM2C1ug0CdZLsZn' \
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
    --body '{"enableInventoryCheck": true}' \
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
    --body '{"appConfig": {"appName": "lfOUrFl1qmnV8dBL"}, "customConfig": {"connectionType": "INSECURE", "grpcServerAddress": "wpOmzQXuV1AddqhS"}, "extendType": "CUSTOM"}' \
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
    --body '{"appConfig": {"appName": "yhu4n3AEZaob0N82"}, "customConfig": {"connectionType": "TLS", "grpcServerAddress": "uaoqVeOnF0D4o4OD"}, "extendType": "CUSTOM"}' \
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
    --storeId 'ryi6lSHn1X5tB50G' \
    > test.out 2>&1
eval_tap $? 31 'GetRootCategories' test.out

#- 32 CreateCategory
samples/cli/sample-apps Platform createCategory \
    --namespace $AB_NAMESPACE \
    --storeId 'pxhYzdzlEO1kekzj' \
    --body '{"categoryPath": "slMc7xrERTQKMnRt", "localizationDisplayNames": {"Wm1ptNV978yZAeh0": "VDBWAmbTsf39AAAf", "TzmeN5tuzyiUDAJA": "8YA2ZVv3K2seYgQ4", "y5d5ez47TE8JZNAg": "AgHb6BE0OqyIpVAI"}}' \
    > test.out 2>&1
eval_tap $? 32 'CreateCategory' test.out

#- 33 ListCategoriesBasic
samples/cli/sample-apps Platform listCategoriesBasic \
    --namespace $AB_NAMESPACE \
    --storeId 'ZLV5n3qpw8GdUuQB' \
    > test.out 2>&1
eval_tap $? 33 'ListCategoriesBasic' test.out

#- 34 GetCategory
samples/cli/sample-apps Platform getCategory \
    --categoryPath 'XnSbnkZJRzGygiGg' \
    --namespace $AB_NAMESPACE \
    --storeId 'kCKhCRtLaBHA3AOS' \
    > test.out 2>&1
eval_tap $? 34 'GetCategory' test.out

#- 35 UpdateCategory
samples/cli/sample-apps Platform updateCategory \
    --categoryPath 'T11Mircqqe1VqcGl' \
    --namespace $AB_NAMESPACE \
    --storeId 'ayLZMbFCMVHKRjlW' \
    --body '{"localizationDisplayNames": {"IcGh6a5gxgZDrBOB": "0SeDNVzmv9RFqYiK", "Zwk8gjrXwhQ6DcQY": "1MUOWcq9Hyl2KvgC", "KYFjg8rCy176KHbF": "wdedMA0XMIljqIxO"}}' \
    > test.out 2>&1
eval_tap $? 35 'UpdateCategory' test.out

#- 36 DeleteCategory
samples/cli/sample-apps Platform deleteCategory \
    --categoryPath 'F2sC0XrFNXNaJEQO' \
    --namespace $AB_NAMESPACE \
    --storeId 'sIxRtaW4tGV92cy3' \
    > test.out 2>&1
eval_tap $? 36 'DeleteCategory' test.out

#- 37 GetChildCategories
samples/cli/sample-apps Platform getChildCategories \
    --categoryPath 'ECaYve85glCy0Hdq' \
    --namespace $AB_NAMESPACE \
    --storeId '07G4bumPa5XP242X' \
    > test.out 2>&1
eval_tap $? 37 'GetChildCategories' test.out

#- 38 GetDescendantCategories
samples/cli/sample-apps Platform getDescendantCategories \
    --categoryPath 'GRkfzVO821nBC1i3' \
    --namespace $AB_NAMESPACE \
    --storeId 'SpWFTLdioY2wG3XL' \
    > test.out 2>&1
eval_tap $? 38 'GetDescendantCategories' test.out

#- 39 QueryCodes
samples/cli/sample-apps Platform queryCodes \
    --campaignId 'ZEpemweD8OATV8cR' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --batchName 'VH1VFphXkDOfHoSt' \
    --batchNo '[49, 16, 92]' \
    --code '1OEOCsJk6HZCSCOJ' \
    --limit '11' \
    --offset '85' \
    --withBatchName 'false' \
    > test.out 2>&1
eval_tap $? 39 'QueryCodes' test.out

#- 40 CreateCodes
samples/cli/sample-apps Platform createCodes \
    --campaignId '5zzXnlZ5dZmZ6U0P' \
    --namespace $AB_NAMESPACE \
    --body '{"batchName": "W4YqNSPRyICreflE", "codeValue": "qEgZCnvUE6nFaApT", "quantity": 50}' \
    > test.out 2>&1
eval_tap $? 40 'CreateCodes' test.out

#- 41 Download
samples/cli/sample-apps Platform download \
    --campaignId 'wqsKVlv9ItmpgtKN' \
    --namespace $AB_NAMESPACE \
    --batchName 'HaJWuwQqxfbAYq0j' \
    --batchNo '[22, 50, 18]' \
    --withBatchName 'true' \
    > test.out 2>&1
eval_tap $? 41 'Download' test.out

#- 42 BulkDisableCodes
samples/cli/sample-apps Platform bulkDisableCodes \
    --campaignId 'qCEFAx7N8SC95xMj' \
    --namespace $AB_NAMESPACE \
    --batchName 'glUgKDUxKH8LHgoc' \
    --batchNo '[5, 24, 98]' \
    > test.out 2>&1
eval_tap $? 42 'BulkDisableCodes' test.out

#- 43 BulkEnableCodes
samples/cli/sample-apps Platform bulkEnableCodes \
    --campaignId '8a8aB0GNlZ5UdgTX' \
    --namespace $AB_NAMESPACE \
    --batchName 'eVmjtBWBX7HMQhOK' \
    --batchNo '[38, 29, 27]' \
    > test.out 2>&1
eval_tap $? 43 'BulkEnableCodes' test.out

#- 44 QueryRedeemHistory
samples/cli/sample-apps Platform queryRedeemHistory \
    --campaignId '8ROk4yRCjIpl2z8z' \
    --namespace $AB_NAMESPACE \
    --code 'BfSHFspdZ6GM11vl' \
    --limit '75' \
    --offset '8' \
    --userId 'cWAZZrQFlvw8Eiuc' \
    > test.out 2>&1
eval_tap $? 44 'QueryRedeemHistory' test.out

#- 45 GetCode
samples/cli/sample-apps Platform getCode \
    --code 'e75fTATIeaus1v49' \
    --namespace $AB_NAMESPACE \
    --redeemable 'true' \
    --withBatchName 'true' \
    > test.out 2>&1
eval_tap $? 45 'GetCode' test.out

#- 46 DisableCode
samples/cli/sample-apps Platform disableCode \
    --code 'bhE466qGvJUDqQSO' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 46 'DisableCode' test.out

#- 47 EnableCode
samples/cli/sample-apps Platform enableCode \
    --code 'N7p52a5AL2OyazfB' \
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
    --body '{"currencyCode": "2Zn7pwtkIXqEl3Gd", "currencySymbol": "xTf9fPX484b6k0sN", "currencyType": "VIRTUAL", "decimals": 68, "localizationDescriptions": {"CMKbwsRMBvFgWYjG": "LgLGYUArbxDXzoJr", "4jWs64aVuyxxEqv4": "VVaYSdZ1lc9JIspx", "iGBzT4qKEhYMTaaV": "k9OtfmfGrIOlonh9"}}' \
    > test.out 2>&1
eval_tap $? 52 'CreateCurrency' test.out

#- 53 UpdateCurrency
samples/cli/sample-apps Platform updateCurrency \
    --currencyCode 'Em25JToHTmt3Kjqy' \
    --namespace $AB_NAMESPACE \
    --body '{"localizationDescriptions": {"rx3eoFExApGsO54d": "VvBFETKZ8nLtKtQ4", "zR60IJwUgvRwp9wz": "xof11xRtMLaV3u9U", "ztG2YuMKVUmhjqku": "um8vDHYilzT9hEsl"}}' \
    > test.out 2>&1
eval_tap $? 53 'UpdateCurrency' test.out

#- 54 DeleteCurrency
samples/cli/sample-apps Platform deleteCurrency \
    --currencyCode 'umG8zVgfpvNBJ5Wn' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 54 'DeleteCurrency' test.out

#- 55 GetCurrencyConfig
samples/cli/sample-apps Platform getCurrencyConfig \
    --currencyCode '8HE9GgLEY6k76h8V' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 55 'GetCurrencyConfig' test.out

#- 56 GetCurrencySummary
samples/cli/sample-apps Platform getCurrencySummary \
    --currencyCode 'tRWNdsL96RK1BctA' \
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
    --body '{"data": [{"id": "e62JX75DTW1VWzmk", "rewards": [{"currency": {"currencyCode": "twwvek9CKpxsFq0v", "namespace": "E3qToSTioUh7ujMB"}, "item": {"itemId": "iLxpGeOvHg9Bfzh4", "itemName": "BZucWzSrLnX39pBK", "itemSku": "gGjTGcBZmrbVKlyx", "itemType": "0HDexsuZTftnDizd"}, "quantity": 21, "type": "CURRENCY"}, {"currency": {"currencyCode": "PMlRAseWWu6ln83o", "namespace": "zS3ENTEVyJgGp10a"}, "item": {"itemId": "ppEbfthpmq77vYAb", "itemName": "W8ZTyBCVgY3FThVi", "itemSku": "ycnJwkEtbZ92lZ2r", "itemType": "5d73xIgDw6nLRhUr"}, "quantity": 33, "type": "CURRENCY"}, {"currency": {"currencyCode": "d6Q0TQ24TULAoRlH", "namespace": "sIQGL5Kesgf0fXyU"}, "item": {"itemId": "vdq9vnPOXYMkOw4B", "itemName": "4NZqgDZtGtUJqLrV", "itemSku": "7RAihXlBNHwYwWZl", "itemType": "w5zQL8sKAenKNlPV"}, "quantity": 21, "type": "CURRENCY"}]}, {"id": "9Jr9r2QpYHg5LuVE", "rewards": [{"currency": {"currencyCode": "vjEaOtAK6rdOvp6m", "namespace": "c5RWNVggZ0ObogaE"}, "item": {"itemId": "qnCJERXsrVFrVU0u", "itemName": "kg7I7J8VTv9XKI4X", "itemSku": "DiTxu5fOf9bo87Rn", "itemType": "hpP9HimXNfIbhjAM"}, "quantity": 1, "type": "CURRENCY"}, {"currency": {"currencyCode": "D3wvt39hXPaSWQUa", "namespace": "R4UolUo545QF7CPS"}, "item": {"itemId": "TKJKuJHI1dh3Va6d", "itemName": "upjYVnzQe15tTdeE", "itemSku": "DAYuVsARoE2XqYVk", "itemType": "Nvz331ZpOnp0YjjB"}, "quantity": 36, "type": "ITEM"}, {"currency": {"currencyCode": "6wLHj53hVYmVUdIM", "namespace": "8fSE7TXJazGgCc9f"}, "item": {"itemId": "b4GEccHcJzc078I9", "itemName": "GhBkW6Kw2ff9VlFi", "itemSku": "Xs5kU0G6kCScjm9g", "itemType": "ja9Qmk355kjMERng"}, "quantity": 30, "type": "ITEM"}]}, {"id": "rAoN1ZVPdLbHn4An", "rewards": [{"currency": {"currencyCode": "LpzdGeohQHURWlcX", "namespace": "Gi8QzwooqYEwsEVo"}, "item": {"itemId": "YFJqmzTJaTEk7xIZ", "itemName": "dm5UoiYgucTWRqUi", "itemSku": "sNNz0FMoJgsJpSbr", "itemType": "QHHzFES3aKwZjinV"}, "quantity": 83, "type": "ITEM"}, {"currency": {"currencyCode": "IfCxokexiJRe8LTp", "namespace": "R5uRk1mEvPxjNojw"}, "item": {"itemId": "FMfQ4VyNMLyoRGx2", "itemName": "34A6KBYxZtkRNef9", "itemSku": "pW07vfMVY1m7R42T", "itemType": "bGMhgjMO4LDh7svo"}, "quantity": 70, "type": "CURRENCY"}, {"currency": {"currencyCode": "xAhxYmJAe0ateaQm", "namespace": "YhQOWVlESVEu1nqo"}, "item": {"itemId": "T5ubNHVfCJNMXTiF", "itemName": "ZBaxzusPKzprWrO4", "itemSku": "MGVo16MEiXTqQ75M", "itemType": "RNXA14QUwNFJlmDX"}, "quantity": 1, "type": "ITEM"}]}]}' \
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
    --body '{"data": [{"platform": "PSN", "platformDlcIdMap": {"OP8RZ3g3XvCvwYQb": "Up1bpcYGQbX7NgGo", "JeN3j71NUC0WOvJt": "fpP08eKHijaWUvr4", "DBt4w2koTkhrlE8n": "qRX5OmYGIMZXx2IK"}}, {"platform": "EPICGAMES", "platformDlcIdMap": {"CN2mz6iEHSQRskjc": "1opHBZt5wLTW58aR", "NeHtjws4uYeuZc0T": "XTAIQKVqSbgEhNQW", "O3L7WMCOFDYSFfJc": "NXMjvfIGpQUWAzl2"}}, {"platform": "OCULUS", "platformDlcIdMap": {"2aVR3macXvU5vmKQ": "vCvcHStmRXNlR74w", "ysPLsErWmpupvY7x": "SzgPGLPkPyujqpj0", "h32oeIvdyfYeATXJ": "b9RcUvEsMmq0dL0Q"}}]}' \
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
    --activeOnly 'false' \
    --appType 'GAME' \
    --entitlementClazz 'SUBSCRIPTION' \
    --entitlementName 'wKXNLrO0sznpb745' \
    --itemId '["ivgkSy3NChApLvav", "YKj0rDi0Nb0CeBgY", "Akrw0OJmSCXR8pZz"]' \
    --limit '70' \
    --offset '76' \
    --origin 'Epic' \
    --userId 'bu14VWVbRodSfpZq' \
    > test.out 2>&1
eval_tap $? 63 'QueryEntitlements1' test.out

#- 64 QueryEntitlements
samples/cli/sample-apps Platform queryEntitlements \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --itemIds '["LCBDJbg8K0ujezrD", "3s1jZYBeuu66AZj4", "9CYT6lFICM0YxhE4"]' \
    --limit '14' \
    --offset '47' \
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
    --body '{"entitlementGrantList": [{"collectionId": "4qeo1DLH1zn7yDGM", "endDate": "1990-11-30T00:00:00Z", "grantedCode": "mIirBwOQb7sMTVYo", "itemId": "FY3GvuOeGKtB8X8Z", "itemNamespace": "o6Sa4w4Oiewm7FPB", "language": "qn", "metadata": {"kDwwg6PVZD85nu3L": {}, "CKQhembX4N3EzvVt": {}, "6x5djOOmsZrccYKH": {}}, "origin": "Other", "quantity": 75, "region": "ihBM5l63viD3sHf5", "source": "GIFT", "startDate": "1975-05-16T00:00:00Z", "storeId": "zJ1cRd43ysEUVWaW"}, {"collectionId": "C4BL5d7ND71fzD62", "endDate": "1972-06-26T00:00:00Z", "grantedCode": "FNJP0fvlpVmZhnI5", "itemId": "vTTEjkHAJUGcpO2R", "itemNamespace": "lYe3GUg1kENHQ451", "language": "YVaG", "metadata": {"Uuv4itf6sFtENpjW": {}, "1kCPOFEGEsD6CWiG": {}, "BAYpBxX5BFQCEAr8": {}}, "origin": "Twitch", "quantity": 89, "region": "Tf61Pfmg7A5LEUau", "source": "PROMOTION", "startDate": "1999-09-18T00:00:00Z", "storeId": "VPP57M1y45Ho9BsX"}, {"collectionId": "3Fes3lrCGEhhu2P7", "endDate": "1973-08-15T00:00:00Z", "grantedCode": "r3mPNfzA1zdgzl47", "itemId": "8AdbDi0MVT8NWoLc", "itemNamespace": "tp1zJZEgaAQh0y4P", "language": "VpK_sAcn_296", "metadata": {"lgBOmlggB04ZJcdM": {}, "SZYc9XuHdPPUUAoQ": {}, "yL1ePuZZGn9bzmpS": {}}, "origin": "Nintendo", "quantity": 40, "region": "LyA65wgjGSPTEesk", "source": "REWARD", "startDate": "1982-10-02T00:00:00Z", "storeId": "xK6cJQc1AsxXcQqC"}], "userIds": ["JKrGDuH9aclfIm1s", "vYPd9aYXfjQxMRQ5", "0vhf66nccuOf8voD"]}' \
    > test.out 2>&1
eval_tap $? 67 'GrantEntitlements' test.out

#- 68 RevokeEntitlements
samples/cli/sample-apps Platform revokeEntitlements \
    --namespace $AB_NAMESPACE \
    --body '["bgvzHBHgMoFuAMSx", "eGIdYzBLfIgn3HBu", "Keg68bP4GjEFMWf3"]' \
    > test.out 2>&1
eval_tap $? 68 'RevokeEntitlements' test.out

#- 69 GetEntitlement
samples/cli/sample-apps Platform getEntitlement \
    --entitlementId 'AwzNCKGRu5sinE6W' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 69 'GetEntitlement' test.out

#- 70 QueryFulfillmentHistories
samples/cli/sample-apps Platform queryFulfillmentHistories \
    --namespace $AB_NAMESPACE \
    --limit '67' \
    --offset '84' \
    --status 'FAIL' \
    --userId 'FkwwAHI8BrANxde2' \
    > test.out 2>&1
eval_tap $? 70 'QueryFulfillmentHistories' test.out

#- 71 QueryIAPClawbackHistory
samples/cli/sample-apps Platform queryIAPClawbackHistory \
    --namespace $AB_NAMESPACE \
    --endTime '80NlnrRECyq5mHV5' \
    --eventType 'CHARGEBACK' \
    --externalOrderId 'jzukEwedzTq1EplC' \
    --limit '45' \
    --offset '93' \
    --startTime 'AGlWzA0kIRWKj9IN' \
    --status 'FAIL' \
    --userId 'eN5cPJ1rPfRrrZPI' \
    > test.out 2>&1
eval_tap $? 71 'QueryIAPClawbackHistory' test.out

#- 72 MockPlayStationStreamEvent
samples/cli/sample-apps Platform mockPlayStationStreamEvent \
    --namespace $AB_NAMESPACE \
    --body '{"body": {"account": "7bvVHVAKDPLjp3qG", "additionalData": {"entitlement": [{"clientTransaction": [{"amountConsumed": 72, "clientTransactionId": "ZLeOoxvb0boxxKVX"}, {"amountConsumed": 93, "clientTransactionId": "DR68s7glrLeOi2wd"}, {"amountConsumed": 1, "clientTransactionId": "VTfNOPH5PxoD5E3u"}], "entitlementId": "yy9NTNLfGCGa7FtX", "usageCount": 46}, {"clientTransaction": [{"amountConsumed": 19, "clientTransactionId": "A90b7mCEHmlK1Ktm"}, {"amountConsumed": 4, "clientTransactionId": "oU7eNN1bKPa5Kjgb"}, {"amountConsumed": 62, "clientTransactionId": "gATQRZUKQBKU7gDu"}], "entitlementId": "WuYxijjzCS5Z5QEf", "usageCount": 84}, {"clientTransaction": [{"amountConsumed": 28, "clientTransactionId": "FeGDkeJ7kkQ6MAar"}, {"amountConsumed": 67, "clientTransactionId": "mGO79X5MykagdXtB"}, {"amountConsumed": 22, "clientTransactionId": "3KGkyH97430I1fZd"}], "entitlementId": "D2geN5BU8Ii9kFpm", "usageCount": 65}], "purpose": "Lox4dmv2Gd5OneSO"}, "originalTitleName": "RO4yH4jHQG3I54tt", "paymentProductSKU": "ZaGcYKE64CgobKAz", "purchaseDate": "s3JiX08s2tEyjvjS", "sourceOrderItemId": "OMyPbOhODWYpADKM", "titleName": "oczIglX0rSiIr3ms"}, "eventDomain": "tNvIERsX4AMjVcWO", "eventSource": "tjWNHIfCjbAW0RON", "eventType": "k6d9JJ5lBUnFgIGV", "eventVersion": 17, "id": "Xo02ITO5HVvmn1lI", "timestamp": "D10j8L3QYopyus5I"}' \
    > test.out 2>&1
eval_tap $? 72 'MockPlayStationStreamEvent' test.out

#- 73 MockXblClawbackEvent
samples/cli/sample-apps Platform mockXblClawbackEvent \
    --namespace $AB_NAMESPACE \
    --body '{"data": {"eventDate": "aDkE6IWpv6swkwnY", "eventState": "pKIZDoVBUBYxWcGU", "lineItemId": "HtdeS7q2XVaURi1q", "orderId": "J2GH2zuJuRNGfcYc", "productId": "yblZpDgL5WpSPwmx", "productType": "VYIZMkTPGd0N8ekg", "purchasedDate": "QA3RvjFq9rreGf1b", "sandboxId": "BEO1RXBRIV2NBbwA", "skuId": "Jvf9y6TIxiqD8JbT", "subscriptionData": {"consumedDurationInDays": 98, "dateTime": "JuvNSOT09l5uKfCV", "durationInDays": 6, "recurrenceId": "9TNwIw04tOEvWUEF"}}, "datacontenttype": "4mlsoSXLFAL94A7B", "id": "75w6qeqOUhhvOM2R", "source": "iBd8mlf6Kdd0FrMl", "specVersion": "wkzsMIZWtWwPuGtB", "subject": "m2bRq6xE6G8ZWywf", "time": "xOLqnae3IFsY9TbF", "traceparent": "Xk8ECbD27KC5QQ77", "type": "voQWXRYnAhFJD4gY"}' \
    > test.out 2>&1
eval_tap $? 73 'MockXblClawbackEvent' test.out

#- 74 GetAppleIAPConfig
samples/cli/sample-apps Platform getAppleIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 74 'GetAppleIAPConfig' test.out

#- 75 UpdateAppleIAPConfig
samples/cli/sample-apps Platform updateAppleIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"appAppleId": 73, "bundleId": "ub7hHcrpY4eCB99C", "issuerId": "YYyN231yJUcQ1Tcl", "keyId": "fYlpJOKOfCjV6G1s", "password": "RzRpVP9c63NrHlAr", "version": "V1"}' \
    > test.out 2>&1
eval_tap $? 75 'UpdateAppleIAPConfig' test.out

#- 76 DeleteAppleIAPConfig
samples/cli/sample-apps Platform deleteAppleIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 76 'DeleteAppleIAPConfig' test.out

#- 77 UpdateAppleP8File
samples/cli/sample-apps Platform updateAppleP8File \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 77 'UpdateAppleP8File' test.out

#- 78 GetEpicGamesIAPConfig
samples/cli/sample-apps Platform getEpicGamesIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 78 'GetEpicGamesIAPConfig' test.out

#- 79 UpdateEpicGamesIAPConfig
samples/cli/sample-apps Platform updateEpicGamesIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"sandboxId": "2VaVAbdKksYfjmDO"}' \
    > test.out 2>&1
eval_tap $? 79 'UpdateEpicGamesIAPConfig' test.out

#- 80 DeleteEpicGamesIAPConfig
samples/cli/sample-apps Platform deleteEpicGamesIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 80 'DeleteEpicGamesIAPConfig' test.out

#- 81 GetGoogleIAPConfig
samples/cli/sample-apps Platform getGoogleIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 81 'GetGoogleIAPConfig' test.out

#- 82 UpdateGoogleIAPConfig
samples/cli/sample-apps Platform updateGoogleIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"applicationName": "vYDgdc7aw7kVAHV6", "notificationTokenAudience": "nOLhCEpTwUyuamv2", "notificationTokenEmail": "3tCt88H5FuhaNjBv", "packageName": "2KlNzdU4lRWuitiP", "serviceAccountId": "zhKMq61l4TidRuwm"}' \
    > test.out 2>&1
eval_tap $? 82 'UpdateGoogleIAPConfig' test.out

#- 83 DeleteGoogleIAPConfig
samples/cli/sample-apps Platform deleteGoogleIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 83 'DeleteGoogleIAPConfig' test.out

#- 84 UpdateGoogleP12File
samples/cli/sample-apps Platform updateGoogleP12File \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 84 'UpdateGoogleP12File' test.out

#- 85 GetIAPItemConfig
samples/cli/sample-apps Platform getIAPItemConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 85 'GetIAPItemConfig' test.out

#- 86 UpdateIAPItemConfig
samples/cli/sample-apps Platform updateIAPItemConfig \
    --namespace $AB_NAMESPACE \
    --body '{"data": [{"itemIdentity": "qUQ9Xg0Bi6PJfRhi", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"DseaL2k5O2bsxdum": "CBLVFZ04Ww4l8rMH", "HNw54JC0LbmoIYsI": "CiNkt0T5s8nK1qPE", "q1uNr7C6K2HusiOR": "mE5Ytl0fX9Lhwbx2"}}, {"itemIdentity": "0wan4quySvEZehKW", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"Nh9wX9GTqCtBRvJ8": "OUDViI9JZMQg5NHL", "CtMV11h6Jg57Krgo": "sNzald13JxiqS1gL", "Xblt3aNIIpUN47j7": "U0JqRM1eVHLnzPKk"}}, {"itemIdentity": "xBsJE3awgzBZBsCZ", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"eavxcCleGLPNAEop": "wabrN4FhTjiyx4uT", "vqGUadqwSYuf4baP": "kM76ySFO4PhSuOQv", "s18L7Y9gir6QkNtF": "w4lG5HpwhyO6fmWc"}}]}' \
    > test.out 2>&1
eval_tap $? 86 'UpdateIAPItemConfig' test.out

#- 87 DeleteIAPItemConfig
samples/cli/sample-apps Platform deleteIAPItemConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 87 'DeleteIAPItemConfig' test.out

#- 88 GetOculusIAPConfig
samples/cli/sample-apps Platform getOculusIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 88 'GetOculusIAPConfig' test.out

#- 89 UpdateOculusIAPConfig
samples/cli/sample-apps Platform updateOculusIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"appId": "8wjzrFDLQAeIzyMK", "appSecret": "QpZoZp4n2Qd1h5zq"}' \
    > test.out 2>&1
eval_tap $? 89 'UpdateOculusIAPConfig' test.out

#- 90 DeleteOculusIAPConfig
samples/cli/sample-apps Platform deleteOculusIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 90 'DeleteOculusIAPConfig' test.out

#- 91 GetPlayStationIAPConfig
samples/cli/sample-apps Platform getPlayStationIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 91 'GetPlayStationIAPConfig' test.out

#- 92 UpdatePlaystationIAPConfig
samples/cli/sample-apps Platform updatePlaystationIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"backOfficeServerClientId": "5n3jB2HnTGlLwHXR", "backOfficeServerClientSecret": "uYbiWlbX2Ih7G7mU", "enableStreamJob": true, "environment": "vPWRBXq7nzFSrnWC", "streamName": "VsR1ZH7shfapuGd7", "streamPartnerName": "OdT3nywNsbWZFsDD"}' \
    > test.out 2>&1
eval_tap $? 92 'UpdatePlaystationIAPConfig' test.out

#- 93 DeletePlaystationIAPConfig
samples/cli/sample-apps Platform deletePlaystationIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 93 'DeletePlaystationIAPConfig' test.out

#- 94 ValidateExistedPlaystationIAPConfig
samples/cli/sample-apps Platform validateExistedPlaystationIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 94 'ValidateExistedPlaystationIAPConfig' test.out

#- 95 ValidatePlaystationIAPConfig
samples/cli/sample-apps Platform validatePlaystationIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"backOfficeServerClientId": "41siuXP0PcDvEfeX", "backOfficeServerClientSecret": "kD9iHVs2KVQmLGOU", "enableStreamJob": true, "environment": "o6un6xkoGUVpa8Ad", "streamName": "7RSrP5aSXdrszHzY", "streamPartnerName": "Kt8VWKy2G4d8KErL"}' \
    > test.out 2>&1
eval_tap $? 95 'ValidatePlaystationIAPConfig' test.out

#- 96 GetSteamIAPConfig
samples/cli/sample-apps Platform getSteamIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 96 'GetSteamIAPConfig' test.out

#- 97 UpdateSteamIAPConfig
samples/cli/sample-apps Platform updateSteamIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"appId": "Q9mkgRn4PRjBd7pa", "publisherAuthenticationKey": "GLd0pH7KxfFaxbLG"}' \
    > test.out 2>&1
eval_tap $? 97 'UpdateSteamIAPConfig' test.out

#- 98 DeleteSteamIAPConfig
samples/cli/sample-apps Platform deleteSteamIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 98 'DeleteSteamIAPConfig' test.out

#- 99 GetTwitchIAPConfig
samples/cli/sample-apps Platform getTwitchIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 99 'GetTwitchIAPConfig' test.out

#- 100 UpdateTwitchIAPConfig
samples/cli/sample-apps Platform updateTwitchIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"clientId": "yJw9fveJ6wt66BF9", "clientSecret": "kOTeSdbFqlU5i6TT", "organizationId": "W2WHrKvLTxEiJ2di"}' \
    > test.out 2>&1
eval_tap $? 100 'UpdateTwitchIAPConfig' test.out

#- 101 DeleteTwitchIAPConfig
samples/cli/sample-apps Platform deleteTwitchIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 101 'DeleteTwitchIAPConfig' test.out

#- 102 GetXblIAPConfig
samples/cli/sample-apps Platform getXblIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 102 'GetXblIAPConfig' test.out

#- 103 UpdateXblIAPConfig
samples/cli/sample-apps Platform updateXblIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"enableClawback": false, "entraAppClientId": "e2WtcMHqdferojfZ", "entraAppClientSecret": "Aidjy0lpMT0LvPQ0", "entraTenantId": "dRRPSLi6Y23WlZTr", "relyingPartyCert": "nDWf0AY353RSPEXh"}' \
    > test.out 2>&1
eval_tap $? 103 'UpdateXblIAPConfig' test.out

#- 104 DeleteXblAPConfig
samples/cli/sample-apps Platform deleteXblAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 104 'DeleteXblAPConfig' test.out

#- 105 UpdateXblBPCertFile
samples/cli/sample-apps Platform updateXblBPCertFile \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    --password 'UPwCuUx6Mz9bG3k1' \
    > test.out 2>&1
eval_tap $? 105 'UpdateXblBPCertFile' test.out

#- 106 QueryThirdPartyNotifications
samples/cli/sample-apps Platform queryThirdPartyNotifications \
    --namespace $AB_NAMESPACE \
    --endDate 'Bi7RDrXJQRyQUEGC' \
    --externalId 'GSeZNZ9tvtCaA6z1' \
    --limit '57' \
    --offset '21' \
    --source 'STEAM' \
    --startDate 'CPmUF93gAQIoN0AN' \
    --status 'ERROR' \
    --type 'uj9aBX2aOP6rmzyi' \
    > test.out 2>&1
eval_tap $? 106 'QueryThirdPartyNotifications' test.out

#- 107 QueryThirdPartySubscription
samples/cli/sample-apps Platform queryThirdPartySubscription \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --groupId 'pTAcz57WlKn6AAqR' \
    --limit '58' \
    --offset '65' \
    --platform 'APPLE' \
    --productId 'o5zOjtH3SEhY5HA5' \
    --userId 'UbrgFwc6RcK49cf2' \
    > test.out 2>&1
eval_tap $? 107 'QueryThirdPartySubscription' test.out

#- 108 GetIAPOrderConsumeDetails
samples/cli/sample-apps Platform getIAPOrderConsumeDetails \
    --iapOrderNo 'qbEW5nAmxpCGicc5' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 108 'GetIAPOrderConsumeDetails' test.out

#- 109 DownloadInvoiceDetails
samples/cli/sample-apps Platform downloadInvoiceDetails \
    --namespace $AB_NAMESPACE \
    --endTime 'MIO8GX6B9xpeYXSS' \
    --feature 'nHjey6GaUOvx6j9t' \
    --itemId 'Ev9T3SJFrOsTRtKk' \
    --itemType 'COINS' \
    --startTime 'KWol9Vf6CSDwyLAN' \
    > test.out 2>&1
eval_tap $? 109 'DownloadInvoiceDetails' test.out

#- 110 GenerateInvoiceSummary
samples/cli/sample-apps Platform generateInvoiceSummary \
    --namespace $AB_NAMESPACE \
    --endTime 'ZPRM8e23MpPQ8tVa' \
    --feature 'BqBbZFKPoQi6Q8yK' \
    --itemId 'MNUowkOvNdMRFcTj' \
    --itemType 'APP' \
    --startTime 'HMdKn2NJhmeUtdBa' \
    > test.out 2>&1
eval_tap $? 110 'GenerateInvoiceSummary' test.out

#- 111 SyncInGameItem
samples/cli/sample-apps Platform syncInGameItem \
    --namespace $AB_NAMESPACE \
    --storeId '6nzv7IepQlHHUfKF' \
    --body '{"categoryPath": "16Iq4lSsEv0Tjm3R", "targetItemId": "BzfEFBXKTR5SRVjJ", "targetNamespace": "6VpOV3O38zghrlPr"}' \
    > test.out 2>&1
eval_tap $? 111 'SyncInGameItem' test.out

#- 112 CreateItem
samples/cli/sample-apps Platform createItem \
    --namespace $AB_NAMESPACE \
    --storeId 'LjLjNy8SyjPQKYZj' \
    --body '{"appId": "4ElMI40UrfpziALy", "appType": "DLC", "baseAppId": "vKbwOht2d2hYWEF5", "boothName": "ULHhqv6OYFOLSdci", "categoryPath": "ZPuxwnNbbUPMLmaT", "clazz": "qkXlYrzFIl7eqbFZ", "displayOrder": 40, "entitlementType": "DURABLE", "ext": {"18w10HObOPLlB5TD": {}, "hLsyxyoj5ZHJSjJA": {}, "UuJx7kluxHZRWukL": {}}, "features": ["jqXKUGSxvhwAq9qJ", "aN6fzVYhGTBVqPrU", "xFsFlAXhCQxagSSF"], "flexible": true, "images": [{"as": "mM6H2fYNrySw09Qr", "caption": "YiWgB2d6jrVCARvZ", "height": 45, "imageUrl": "5FtGphfcPeBce54p", "smallImageUrl": "3Krb2LeQm7xTXq95", "width": 85}, {"as": "S28R2Ck3CEj0lk0W", "caption": "TypAzqoMxCStOBmf", "height": 17, "imageUrl": "YkV5FVez8c0CFW1V", "smallImageUrl": "eB7NbwwEUZpPQ4DK", "width": 4}, {"as": "nsm62MJy3lL6Z1qy", "caption": "wOS6iL4NnXSDVEV3", "height": 6, "imageUrl": "mgHEprNa9ZNbvOpx", "smallImageUrl": "CPs7oWviUwcsqZBy", "width": 21}], "inventoryConfig": {"customAttributes": {"JquQIlMArTBnjOvl": {}, "JT02LEqVZbrY39Rz": {}, "bbhQ52h3GvsPwARq": {}}, "serverCustomAttributes": {"2GY2flcofvMG8kYK": {}, "fdKJrXVGFyCSGUoF": {}, "wturSeKNOkcLSwUM": {}}, "slotUsed": 71}, "itemIds": ["uZ63SzlvLy1kSCJS", "LQzNPdtm999G8thl", "Bf2YCifELHNYB37S"], "itemQty": {"eQ2YYH5sW89jWXHv": 30, "dzWGP3SIl9iYY8Zk": 52, "Raef3PPx5REcLgOr": 10}, "itemType": "SEASON", "listable": false, "localizations": {"HxxOa3zynZGwCUvq": {"description": "HTPOEIeXcKDAlQiC", "localExt": {"fUyEBYux55fCMOK0": {}, "6hEzGsoKn0tiXIuJ": {}, "iZ5LiZClm6PEG2lZ": {}}, "longDescription": "D1PkWhbwNTDarNqf", "title": "nizQD129myzknE6s"}, "9vm6qQVINm06yxz3": {"description": "iC2iM4K9d8CXeDJx", "localExt": {"uONff3MHXSVANkU0": {}, "LRWcKsoU6YkRDDvt": {}, "NegO9MsX4NRQwbfk": {}}, "longDescription": "A27DBDGq4VAEzvAp", "title": "OpUb6UlixIKlQA6Y"}, "Y87d0nWurdMVwOqZ": {"description": "RIDXB7yuMQe4yuMj", "localExt": {"jiaCF1egFaFN6LVK": {}, "y7ofIl76jv1dBDba": {}, "1LDGXzbnBcexz51l": {}}, "longDescription": "Zvym2Z5feIcRWDKe", "title": "38Qa1Qeil5uG5xCt"}}, "lootBoxConfig": {"rewardCount": 94, "rewards": [{"lootBoxItems": [{"count": 18, "duration": 77, "endDate": "1974-09-19T00:00:00Z", "itemId": "JMr1aXTYYEE7tg6f", "itemSku": "tchJkrYAfA6PVBnL", "itemType": "cDaSNC7JsLuaorJF"}, {"count": 70, "duration": 91, "endDate": "1997-05-06T00:00:00Z", "itemId": "uRFZM9bXlczcfn9g", "itemSku": "dZLWhxhXAnDJC7fS", "itemType": "Xq309jFKtBAyPvjr"}, {"count": 60, "duration": 100, "endDate": "1971-08-17T00:00:00Z", "itemId": "bam4mHUKdPgDydg2", "itemSku": "Z1DHrw4T26uNEag2", "itemType": "9rYXlsWOrE9T50PW"}], "name": "Q8AsrndTLnoixyRK", "odds": 0.217212438392687, "type": "PROBABILITY_GROUP", "weight": 36}, {"lootBoxItems": [{"count": 58, "duration": 46, "endDate": "1976-11-04T00:00:00Z", "itemId": "LsTdtuuCXZK0mKTM", "itemSku": "Ry3XfK8qEWBDtoDA", "itemType": "KYrXR8t1YHEotqOB"}, {"count": 46, "duration": 49, "endDate": "1985-08-13T00:00:00Z", "itemId": "HtAqT43IIcwTqxV1", "itemSku": "ixvEJo61tSt1X9OY", "itemType": "5tsIz26cx4ibFWIw"}, {"count": 61, "duration": 31, "endDate": "1994-08-27T00:00:00Z", "itemId": "mk8sZEYCc5p7nPDp", "itemSku": "YvTlFG6a6GK5ZOnw", "itemType": "IduhKXLXvsLfE3tF"}], "name": "TUIb1SxQ3BxNtfBO", "odds": 0.17135197336528896, "type": "REWARD", "weight": 5}, {"lootBoxItems": [{"count": 35, "duration": 74, "endDate": "1985-11-19T00:00:00Z", "itemId": "4vzfVUd2X4MqtHRD", "itemSku": "rQXWNt2E53I36Ewc", "itemType": "rEFJVCgweR1RVRRK"}, {"count": 95, "duration": 92, "endDate": "1982-11-09T00:00:00Z", "itemId": "BXRwsYiXGnwigaCc", "itemSku": "w6xtVUwaQMEXOZ4a", "itemType": "ajy5ksSztifTLvf4"}, {"count": 62, "duration": 78, "endDate": "1986-05-24T00:00:00Z", "itemId": "YHdOG6zj2HL9lQ8x", "itemSku": "vqij1lqzpa2XH34j", "itemType": "pEUZk4NHWW7xFm66"}], "name": "aylcrBFp4eh8wcT4", "odds": 0.30562869862459197, "type": "PROBABILITY_GROUP", "weight": 14}], "rollFunction": "DEFAULT"}, "maxCount": 95, "maxCountPerUser": 28, "name": "3mCZznZArqqkhw4T", "optionBoxConfig": {"boxItems": [{"count": 11, "duration": 81, "endDate": "1979-09-22T00:00:00Z", "itemId": "IPVubfOgybZ9H0w6", "itemSku": "GScT9YIJ02arKN6T", "itemType": "BjN5ph8NgoGFAAHM"}, {"count": 10, "duration": 8, "endDate": "1971-10-19T00:00:00Z", "itemId": "q7QIjSErvcBul98l", "itemSku": "X9XxwETXkrXdiC0j", "itemType": "5zD5wLOeR9W0PpG0"}, {"count": 94, "duration": 88, "endDate": "1981-04-09T00:00:00Z", "itemId": "o0IbVfjWPIctw8Pl", "itemSku": "0RZqDG7r5mk0awFu", "itemType": "4DoYOtI6ZlnMMG4w"}]}, "purchasable": false, "recurring": {"cycle": "YEARLY", "fixedFreeDays": 79, "fixedTrialCycles": 97, "graceDays": 24}, "regionData": {"jZpnDAsdnQk6p1Gr": [{"currencyCode": "9Rl536cab4JRscdL", "currencyNamespace": "aag8NeaCAKFVtAqW", "currencyType": "REAL", "discountAmount": 64, "discountExpireAt": "1976-11-30T00:00:00Z", "discountPercentage": 0, "discountPurchaseAt": "1989-06-04T00:00:00Z", "expireAt": "1984-07-11T00:00:00Z", "price": 35, "purchaseAt": "1985-12-15T00:00:00Z", "trialPrice": 42}, {"currencyCode": "vWTtZL21qEcvlC4E", "currencyNamespace": "9GY3J5pWPsbaXD3D", "currencyType": "VIRTUAL", "discountAmount": 58, "discountExpireAt": "1993-10-19T00:00:00Z", "discountPercentage": 83, "discountPurchaseAt": "1972-04-30T00:00:00Z", "expireAt": "1998-02-07T00:00:00Z", "price": 49, "purchaseAt": "1992-05-14T00:00:00Z", "trialPrice": 90}, {"currencyCode": "fxvUkp6evy9kzvn0", "currencyNamespace": "CkLbdViPYT1ELMDR", "currencyType": "REAL", "discountAmount": 43, "discountExpireAt": "1996-07-13T00:00:00Z", "discountPercentage": 77, "discountPurchaseAt": "1974-10-05T00:00:00Z", "expireAt": "1994-02-11T00:00:00Z", "price": 77, "purchaseAt": "1987-08-04T00:00:00Z", "trialPrice": 89}], "hpRZJqloUIvA5joh": [{"currencyCode": "aEinf4te7vcXkLin", "currencyNamespace": "TNJh4s4CuFyx6d1q", "currencyType": "VIRTUAL", "discountAmount": 52, "discountExpireAt": "1980-11-29T00:00:00Z", "discountPercentage": 92, "discountPurchaseAt": "1981-10-25T00:00:00Z", "expireAt": "1996-12-13T00:00:00Z", "price": 44, "purchaseAt": "1993-03-25T00:00:00Z", "trialPrice": 49}, {"currencyCode": "HpegqpOzqBVOU5fb", "currencyNamespace": "TFHtrGwKz0RUT52s", "currencyType": "REAL", "discountAmount": 6, "discountExpireAt": "1981-07-23T00:00:00Z", "discountPercentage": 72, "discountPurchaseAt": "1974-04-26T00:00:00Z", "expireAt": "1999-01-13T00:00:00Z", "price": 9, "purchaseAt": "1993-02-28T00:00:00Z", "trialPrice": 40}, {"currencyCode": "pEeKLZXPTuUpN3Q6", "currencyNamespace": "4WxXywhNsQWgZYrp", "currencyType": "VIRTUAL", "discountAmount": 81, "discountExpireAt": "1987-07-08T00:00:00Z", "discountPercentage": 86, "discountPurchaseAt": "1994-07-21T00:00:00Z", "expireAt": "1982-01-03T00:00:00Z", "price": 58, "purchaseAt": "1997-02-12T00:00:00Z", "trialPrice": 36}], "RkgJFmw1IOmIPWeE": [{"currencyCode": "y8m6VpP1or367PME", "currencyNamespace": "FHLm60gNHszF452k", "currencyType": "VIRTUAL", "discountAmount": 39, "discountExpireAt": "1975-01-31T00:00:00Z", "discountPercentage": 31, "discountPurchaseAt": "1986-10-20T00:00:00Z", "expireAt": "1991-03-30T00:00:00Z", "price": 23, "purchaseAt": "1996-01-08T00:00:00Z", "trialPrice": 36}, {"currencyCode": "Lyorl2WfWn28oGwg", "currencyNamespace": "P5kQ02QUdeYmvtXB", "currencyType": "VIRTUAL", "discountAmount": 84, "discountExpireAt": "1996-03-18T00:00:00Z", "discountPercentage": 99, "discountPurchaseAt": "1982-08-23T00:00:00Z", "expireAt": "1981-08-12T00:00:00Z", "price": 7, "purchaseAt": "1991-09-03T00:00:00Z", "trialPrice": 17}, {"currencyCode": "FDw09nZsRGtPYFnn", "currencyNamespace": "Npa07cl2KY8R5P8K", "currencyType": "REAL", "discountAmount": 18, "discountExpireAt": "1996-10-15T00:00:00Z", "discountPercentage": 46, "discountPurchaseAt": "1991-07-29T00:00:00Z", "expireAt": "1984-03-28T00:00:00Z", "price": 52, "purchaseAt": "1989-07-31T00:00:00Z", "trialPrice": 76}]}, "saleConfig": {"currencyCode": "0n3w9FbQnUpDQjoZ", "price": 87}, "seasonType": "TIER", "sectionExclusive": true, "sellable": true, "sku": "oShDgeT5gua7cneG", "stackable": true, "status": "ACTIVE", "tags": ["PiU7wrxI1m9dGXHS", "2rxYmH2fTF1PJClP", "Ipnznbg7cDaClF9E"], "targetCurrencyCode": "WVlhhtCdCnw0sSft", "targetNamespace": "nWb3VVMD0qvIHqmS", "thumbnailUrl": "WefSa7CPQ7fDR1sr", "useCount": 18}' \
    > test.out 2>&1
eval_tap $? 112 'CreateItem' test.out

#- 113 GetItemByAppId
samples/cli/sample-apps Platform getItemByAppId \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --storeId 'GZXiq8R39YpPTMBL' \
    --appId 't6yX8TAD892gV8c7' \
    > test.out 2>&1
eval_tap $? 113 'GetItemByAppId' test.out

#- 114 QueryItems
samples/cli/sample-apps Platform queryItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --appType 'GAME' \
    --availableDate 'Lq7i1HdQxvXwca4p' \
    --baseAppId 'TCa2hz1W5rysAUZv' \
    --categoryPath 'Ay8A7pwQfqvB1Mbi' \
    --features 'ejIsTqBJ9Zh80qrA' \
    --includeSubCategoryItem 'false' \
    --itemType 'INGAMEITEM' \
    --limit '31' \
    --offset '34' \
    --region 'ooevWD8Jrr1vyqfC' \
    --sortBy '["createdAt", "displayOrder:asc", "updatedAt"]' \
    --storeId 'yqi7DoiXEEbcIRlE' \
    --tags 'hBhhvFCiL3Bc0Zlr' \
    --targetNamespace 'DJdHGR2tYwsjFJSh' \
    > test.out 2>&1
eval_tap $? 114 'QueryItems' test.out

#- 115 ListBasicItemsByFeatures
samples/cli/sample-apps Platform listBasicItemsByFeatures \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --features '["3h37R8fNPGjCjbko", "E084Ax59Irf4vGnZ", "icrYsNYmrUN9w6Fc"]' \
    > test.out 2>&1
eval_tap $? 115 'ListBasicItemsByFeatures' test.out

#- 116 GetItems
samples/cli/sample-apps Platform getItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId '5iJJxB3EkZ6t4EGD' \
    --itemIds 'g15SUwHz0SjeVzoT' \
    > test.out 2>&1
eval_tap $? 116 'GetItems' test.out

#- 117 GetItemBySku
samples/cli/sample-apps Platform getItemBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'Cc166XysRd7vKE6h' \
    --sku '9wGvT0MudbgXQcSm' \
    > test.out 2>&1
eval_tap $? 117 'GetItemBySku' test.out

#- 118 GetLocaleItemBySku
samples/cli/sample-apps Platform getLocaleItemBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --language 'AxaPJsSWiBoR5mtq' \
    --populateBundle 'true' \
    --region 'i22am5g1rekOxgQV' \
    --storeId 'O7oEseL2FjIF30vM' \
    --sku 'uI6NIoEdbfwnRBMs' \
    > test.out 2>&1
eval_tap $? 118 'GetLocaleItemBySku' test.out

#- 119 GetEstimatedPrice
samples/cli/sample-apps Platform getEstimatedPrice \
    --namespace $AB_NAMESPACE \
    --platform 'W0b2a8GIpbdhr53S' \
    --region 'XcHLfs7SRoWdrI2c' \
    --storeId 'KqSHvg0onasuRm3M' \
    --itemIds 'cGNs8OHkhRenIPsH' \
    --userId 'KZwxxxbzn0NQGucX' \
    > test.out 2>&1
eval_tap $? 119 'GetEstimatedPrice' test.out

#- 120 GetItemIdBySku
samples/cli/sample-apps Platform getItemIdBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'kYFQQl5oVEn2NGen' \
    --sku 'CfTSybXQNYTLZlBz' \
    > test.out 2>&1
eval_tap $? 120 'GetItemIdBySku' test.out

#- 121 GetBulkItemIdBySkus
samples/cli/sample-apps Platform getBulkItemIdBySkus \
    --namespace $AB_NAMESPACE \
    --sku '["vnvMauSAP9r2PawJ", "3JkWSMPq6Wh7FEds", "kmuj4haE2suzabia"]' \
    --storeId 'gcMExsgxndBCkkxs' \
    > test.out 2>&1
eval_tap $? 121 'GetBulkItemIdBySkus' test.out

#- 122 BulkGetLocaleItems
samples/cli/sample-apps Platform bulkGetLocaleItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --language 'bs8ePWVquUwOl4Hw' \
    --region 'puZ413kW3dfUsn7f' \
    --storeId 'CiLxqsd3vclmJY9j' \
    --itemIds 'mDD4CwbIn7vnrmx9' \
    > test.out 2>&1
eval_tap $? 122 'BulkGetLocaleItems' test.out

#- 123 GetAvailablePredicateTypes
samples/cli/sample-apps Platform getAvailablePredicateTypes \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 123 'GetAvailablePredicateTypes' test.out

#- 124 ValidateItemPurchaseCondition
samples/cli/sample-apps Platform validateItemPurchaseCondition \
    --namespace $AB_NAMESPACE \
    --platform '87Z984rn4iw7B6Pe' \
    --userId 'vJXxAumGP0wjB1gd' \
    --body '{"itemIds": ["OeQk7DhO1Xd5Ahr5", "TC02OlUtolJZFKVz", "QV4YUwqAv9DalFkm"]}' \
    > test.out 2>&1
eval_tap $? 124 'ValidateItemPurchaseCondition' test.out

#- 125 BulkUpdateRegionData
samples/cli/sample-apps Platform bulkUpdateRegionData \
    --namespace $AB_NAMESPACE \
    --storeId '6zvVUSnnzAfQLpZh' \
    --body '{"changes": [{"itemIdentities": ["3rIEHmDpW4GgbAhb", "MMEc2o4xpfVKFRc5", "hQa9SSe68Zm2a6QT"], "itemIdentityType": "ITEM_SKU", "regionData": {"23eDpizGpBNM0pHZ": [{"currencyCode": "1bltknyX3NNVGewE", "currencyNamespace": "SfBoWw00ozEFaZZP", "currencyType": "VIRTUAL", "discountAmount": 89, "discountExpireAt": "1975-10-16T00:00:00Z", "discountPercentage": 8, "discountPurchaseAt": "1998-08-30T00:00:00Z", "discountedPrice": 25, "expireAt": "1979-12-12T00:00:00Z", "price": 31, "purchaseAt": "1975-05-30T00:00:00Z", "trialPrice": 44}, {"currencyCode": "ODHPEZZiPg7qJQSE", "currencyNamespace": "drfLAHnH7CKa1cuX", "currencyType": "REAL", "discountAmount": 8, "discountExpireAt": "1989-05-04T00:00:00Z", "discountPercentage": 20, "discountPurchaseAt": "1976-03-30T00:00:00Z", "discountedPrice": 87, "expireAt": "1992-01-23T00:00:00Z", "price": 77, "purchaseAt": "1989-04-04T00:00:00Z", "trialPrice": 29}, {"currencyCode": "DZbxmjMrBcRelSee", "currencyNamespace": "LctXGLmmNrK7N8uJ", "currencyType": "VIRTUAL", "discountAmount": 100, "discountExpireAt": "1995-02-16T00:00:00Z", "discountPercentage": 28, "discountPurchaseAt": "1989-03-14T00:00:00Z", "discountedPrice": 83, "expireAt": "1977-04-01T00:00:00Z", "price": 24, "purchaseAt": "1997-10-27T00:00:00Z", "trialPrice": 62}], "GhGrIm5JVnx7vzp0": [{"currencyCode": "OGfT9EgY733qGDPN", "currencyNamespace": "HNI1E60CMHAssDI3", "currencyType": "REAL", "discountAmount": 82, "discountExpireAt": "1973-01-01T00:00:00Z", "discountPercentage": 38, "discountPurchaseAt": "1976-12-28T00:00:00Z", "discountedPrice": 25, "expireAt": "1974-08-21T00:00:00Z", "price": 27, "purchaseAt": "1985-04-11T00:00:00Z", "trialPrice": 86}, {"currencyCode": "3WZHhW2g2oZm9oyN", "currencyNamespace": "KExG7F4pKd3KH6eh", "currencyType": "REAL", "discountAmount": 99, "discountExpireAt": "1996-02-15T00:00:00Z", "discountPercentage": 9, "discountPurchaseAt": "1997-05-23T00:00:00Z", "discountedPrice": 40, "expireAt": "1978-12-01T00:00:00Z", "price": 14, "purchaseAt": "1974-09-10T00:00:00Z", "trialPrice": 45}, {"currencyCode": "sOtORf0QniMzzQQi", "currencyNamespace": "zlMNbuVfATsxWSoP", "currencyType": "REAL", "discountAmount": 14, "discountExpireAt": "1988-11-14T00:00:00Z", "discountPercentage": 95, "discountPurchaseAt": "1974-05-20T00:00:00Z", "discountedPrice": 36, "expireAt": "1983-11-28T00:00:00Z", "price": 7, "purchaseAt": "1996-08-21T00:00:00Z", "trialPrice": 63}], "QC5bLfKCcHU7npJD": [{"currencyCode": "NJOB5W92ElF5qrUt", "currencyNamespace": "hySSP1hbAvkI1373", "currencyType": "VIRTUAL", "discountAmount": 87, "discountExpireAt": "1980-08-12T00:00:00Z", "discountPercentage": 29, "discountPurchaseAt": "1974-03-09T00:00:00Z", "discountedPrice": 53, "expireAt": "1976-09-22T00:00:00Z", "price": 65, "purchaseAt": "1974-05-05T00:00:00Z", "trialPrice": 8}, {"currencyCode": "O15QPs5UggLbydap", "currencyNamespace": "DvmPCQrHOENa5ySE", "currencyType": "REAL", "discountAmount": 73, "discountExpireAt": "1975-08-26T00:00:00Z", "discountPercentage": 82, "discountPurchaseAt": "1988-09-22T00:00:00Z", "discountedPrice": 73, "expireAt": "1994-08-28T00:00:00Z", "price": 28, "purchaseAt": "1976-01-20T00:00:00Z", "trialPrice": 35}, {"currencyCode": "GfNf9ZsitRlQYSbP", "currencyNamespace": "ZmcIScvj5scvtSNf", "currencyType": "REAL", "discountAmount": 2, "discountExpireAt": "1971-02-19T00:00:00Z", "discountPercentage": 40, "discountPurchaseAt": "1977-02-24T00:00:00Z", "discountedPrice": 99, "expireAt": "1997-12-03T00:00:00Z", "price": 49, "purchaseAt": "1987-05-08T00:00:00Z", "trialPrice": 18}]}}, {"itemIdentities": ["p8DvQxbldrozd46F", "w5Qls7PntJxm17mJ", "JrD0STjus3DykK20"], "itemIdentityType": "ITEM_SKU", "regionData": {"11hGl4SVPBsdEGO5": [{"currencyCode": "VSBkCdSo7Ip3GYnx", "currencyNamespace": "WhGWa8i6MfzJjGgs", "currencyType": "REAL", "discountAmount": 13, "discountExpireAt": "1975-10-06T00:00:00Z", "discountPercentage": 27, "discountPurchaseAt": "1984-09-17T00:00:00Z", "discountedPrice": 31, "expireAt": "1981-05-25T00:00:00Z", "price": 54, "purchaseAt": "1981-10-29T00:00:00Z", "trialPrice": 4}, {"currencyCode": "tNOBLymTtpTtjiiV", "currencyNamespace": "QeMvyEb3B6j9Bj4Y", "currencyType": "VIRTUAL", "discountAmount": 51, "discountExpireAt": "1976-09-09T00:00:00Z", "discountPercentage": 52, "discountPurchaseAt": "1981-01-03T00:00:00Z", "discountedPrice": 3, "expireAt": "1996-02-19T00:00:00Z", "price": 87, "purchaseAt": "1999-06-03T00:00:00Z", "trialPrice": 45}, {"currencyCode": "pP9mCctEOCWHEbG5", "currencyNamespace": "LKP4IOW5tZ0hbKmy", "currencyType": "VIRTUAL", "discountAmount": 50, "discountExpireAt": "1971-06-22T00:00:00Z", "discountPercentage": 49, "discountPurchaseAt": "1980-11-24T00:00:00Z", "discountedPrice": 8, "expireAt": "1983-03-01T00:00:00Z", "price": 17, "purchaseAt": "1999-03-20T00:00:00Z", "trialPrice": 18}], "V2rt3RO2Vvvnzj0K": [{"currencyCode": "YoncjW9WiBZ1C9Uj", "currencyNamespace": "WBkFKf6nNCunxuqV", "currencyType": "REAL", "discountAmount": 91, "discountExpireAt": "1992-07-19T00:00:00Z", "discountPercentage": 29, "discountPurchaseAt": "1979-03-30T00:00:00Z", "discountedPrice": 31, "expireAt": "1976-08-07T00:00:00Z", "price": 36, "purchaseAt": "1984-05-30T00:00:00Z", "trialPrice": 67}, {"currencyCode": "Q05hRD8KHG4HV3tt", "currencyNamespace": "OJrkEmaWzBzGRfgT", "currencyType": "VIRTUAL", "discountAmount": 76, "discountExpireAt": "1995-10-07T00:00:00Z", "discountPercentage": 37, "discountPurchaseAt": "1997-11-21T00:00:00Z", "discountedPrice": 17, "expireAt": "1983-07-30T00:00:00Z", "price": 5, "purchaseAt": "1991-02-27T00:00:00Z", "trialPrice": 52}, {"currencyCode": "RZ2fScRXezcIxUR3", "currencyNamespace": "wosMpQLGOk5VDA90", "currencyType": "VIRTUAL", "discountAmount": 37, "discountExpireAt": "1982-03-28T00:00:00Z", "discountPercentage": 100, "discountPurchaseAt": "1974-10-12T00:00:00Z", "discountedPrice": 12, "expireAt": "1998-05-28T00:00:00Z", "price": 32, "purchaseAt": "1979-08-28T00:00:00Z", "trialPrice": 91}], "FmGtOva4WstWl0Y6": [{"currencyCode": "yiEktpPOXYeifaLc", "currencyNamespace": "ImEIuSK2Pu1gmStJ", "currencyType": "REAL", "discountAmount": 85, "discountExpireAt": "1986-02-02T00:00:00Z", "discountPercentage": 5, "discountPurchaseAt": "1996-12-24T00:00:00Z", "discountedPrice": 74, "expireAt": "1976-05-19T00:00:00Z", "price": 65, "purchaseAt": "1997-09-25T00:00:00Z", "trialPrice": 39}, {"currencyCode": "6O5mBLmVq0NNBwH4", "currencyNamespace": "MqH2TAA3JjuY60jZ", "currencyType": "VIRTUAL", "discountAmount": 27, "discountExpireAt": "1971-01-19T00:00:00Z", "discountPercentage": 68, "discountPurchaseAt": "1980-02-22T00:00:00Z", "discountedPrice": 68, "expireAt": "1980-01-01T00:00:00Z", "price": 7, "purchaseAt": "1998-03-03T00:00:00Z", "trialPrice": 68}, {"currencyCode": "L3ICRCeXn6ROoZJJ", "currencyNamespace": "jHfEVrJDAwaQM69Y", "currencyType": "REAL", "discountAmount": 56, "discountExpireAt": "1998-08-05T00:00:00Z", "discountPercentage": 49, "discountPurchaseAt": "1983-05-26T00:00:00Z", "discountedPrice": 66, "expireAt": "1996-07-15T00:00:00Z", "price": 13, "purchaseAt": "1971-02-11T00:00:00Z", "trialPrice": 71}]}}, {"itemIdentities": ["iMpu6uAuLaGiMYUQ", "UFqFnzqOtSGZlXGw", "Zk9xWJZlGzyjIJIg"], "itemIdentityType": "ITEM_ID", "regionData": {"B4aJUXLcFxqcJsLR": [{"currencyCode": "VxGlduvt8IDxi1Zr", "currencyNamespace": "QS7fuZm9sUe4wvOf", "currencyType": "VIRTUAL", "discountAmount": 78, "discountExpireAt": "1981-12-20T00:00:00Z", "discountPercentage": 95, "discountPurchaseAt": "1972-06-20T00:00:00Z", "discountedPrice": 2, "expireAt": "1979-07-27T00:00:00Z", "price": 43, "purchaseAt": "1983-10-06T00:00:00Z", "trialPrice": 10}, {"currencyCode": "SzXWZ5MlemZcbRmT", "currencyNamespace": "oAgAqueKJZL95Qkb", "currencyType": "REAL", "discountAmount": 27, "discountExpireAt": "1995-11-11T00:00:00Z", "discountPercentage": 71, "discountPurchaseAt": "1999-11-30T00:00:00Z", "discountedPrice": 54, "expireAt": "1974-04-02T00:00:00Z", "price": 90, "purchaseAt": "1988-10-14T00:00:00Z", "trialPrice": 14}, {"currencyCode": "6JBVCR8ZTu9Muzgz", "currencyNamespace": "LjPyZs3whaj2Axmw", "currencyType": "VIRTUAL", "discountAmount": 89, "discountExpireAt": "1996-08-10T00:00:00Z", "discountPercentage": 100, "discountPurchaseAt": "1971-11-12T00:00:00Z", "discountedPrice": 94, "expireAt": "1981-02-11T00:00:00Z", "price": 70, "purchaseAt": "1985-06-25T00:00:00Z", "trialPrice": 93}], "Kf6i8ByD5IvCQY8M": [{"currencyCode": "vT7SnML97d4A63nJ", "currencyNamespace": "fz9woBaYLjP5SwkT", "currencyType": "REAL", "discountAmount": 18, "discountExpireAt": "1997-04-13T00:00:00Z", "discountPercentage": 84, "discountPurchaseAt": "1983-06-14T00:00:00Z", "discountedPrice": 27, "expireAt": "1982-09-03T00:00:00Z", "price": 88, "purchaseAt": "1997-06-20T00:00:00Z", "trialPrice": 19}, {"currencyCode": "dRIuiljAhcEXxuUJ", "currencyNamespace": "Ta5A6djzradq0lrS", "currencyType": "VIRTUAL", "discountAmount": 95, "discountExpireAt": "1987-03-20T00:00:00Z", "discountPercentage": 37, "discountPurchaseAt": "1975-08-05T00:00:00Z", "discountedPrice": 41, "expireAt": "1996-11-27T00:00:00Z", "price": 2, "purchaseAt": "1984-01-26T00:00:00Z", "trialPrice": 50}, {"currencyCode": "hY6whbbS8S6ihg7u", "currencyNamespace": "sWRBMBAhz8ehmtWu", "currencyType": "REAL", "discountAmount": 63, "discountExpireAt": "1979-03-23T00:00:00Z", "discountPercentage": 92, "discountPurchaseAt": "1998-07-08T00:00:00Z", "discountedPrice": 30, "expireAt": "1978-08-12T00:00:00Z", "price": 66, "purchaseAt": "1972-06-10T00:00:00Z", "trialPrice": 92}], "oRoVqaa0fS0SEWPQ": [{"currencyCode": "Y7K8fLKoUxlFVi4W", "currencyNamespace": "Itgb6IOfxlys8I2O", "currencyType": "REAL", "discountAmount": 35, "discountExpireAt": "1991-08-12T00:00:00Z", "discountPercentage": 36, "discountPurchaseAt": "1973-02-28T00:00:00Z", "discountedPrice": 39, "expireAt": "1979-03-30T00:00:00Z", "price": 17, "purchaseAt": "1998-11-25T00:00:00Z", "trialPrice": 40}, {"currencyCode": "Ln1wGn2lrfCz3NDC", "currencyNamespace": "R0AIlOu94H7PE2NW", "currencyType": "VIRTUAL", "discountAmount": 95, "discountExpireAt": "1991-02-03T00:00:00Z", "discountPercentage": 13, "discountPurchaseAt": "1995-03-22T00:00:00Z", "discountedPrice": 32, "expireAt": "1974-04-22T00:00:00Z", "price": 83, "purchaseAt": "1973-07-18T00:00:00Z", "trialPrice": 94}, {"currencyCode": "en2AhjIwbuxS6YV8", "currencyNamespace": "HNhHO4Bdottwaj7b", "currencyType": "VIRTUAL", "discountAmount": 74, "discountExpireAt": "1975-08-06T00:00:00Z", "discountPercentage": 100, "discountPurchaseAt": "1993-04-23T00:00:00Z", "discountedPrice": 85, "expireAt": "1987-04-08T00:00:00Z", "price": 60, "purchaseAt": "1972-11-08T00:00:00Z", "trialPrice": 23}]}}]}' \
    > test.out 2>&1
eval_tap $? 125 'BulkUpdateRegionData' test.out

#- 126 SearchItems
samples/cli/sample-apps Platform searchItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --itemType 'MEDIA' \
    --limit '40' \
    --offset '17' \
    --sortBy 'LpdK4TQPbCUi1mef' \
    --storeId 'tsSytD1dGvsflmVZ' \
    --keyword 'AC4bzJmAE2zitbC3' \
    --language 'wcvtsisi5du3Ce0q' \
    > test.out 2>&1
eval_tap $? 126 'SearchItems' test.out

#- 127 QueryUncategorizedItems
samples/cli/sample-apps Platform queryUncategorizedItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --limit '89' \
    --offset '100' \
    --sortBy '["createdAt:asc", "createdAt", "name:desc"]' \
    --storeId 'DU81mLPLCCreIqNu' \
    > test.out 2>&1
eval_tap $? 127 'QueryUncategorizedItems' test.out

#- 128 GetItem
samples/cli/sample-apps Platform getItem \
    --itemId 'jXlmr1Hz5kxsW9fC' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --storeId 'EuLQtfg3BApu5Xc6' \
    > test.out 2>&1
eval_tap $? 128 'GetItem' test.out

#- 129 UpdateItem
samples/cli/sample-apps Platform updateItem \
    --itemId 'GjM250RM1xeNh2Bj' \
    --namespace $AB_NAMESPACE \
    --storeId 'f3VGBpjS29s9amwV' \
    --body '{"appId": "A8Zb3giw8Ejed8JR", "appType": "DLC", "baseAppId": "R1ACwjwZsB595LIZ", "boothName": "h405aBBbgBoSz9E0", "categoryPath": "ThPRVhK6aGssEt8J", "clazz": "rH14lMqnhQ2iryAF", "displayOrder": 22, "entitlementType": "DURABLE", "ext": {"eLa72nUGBs6UjfcD": {}, "cu0tI7NAUUNuMy2R": {}, "v5FSycnyFxlPjlST": {}}, "features": ["B7n2F9Lt41B7dPq4", "bEGAggpBu2NMswwk", "UgaaIOQE7ASyaqhE"], "flexible": true, "images": [{"as": "cXpaiFpSxJX180Lr", "caption": "udxz2U5jjQhodBVB", "height": 80, "imageUrl": "VjsnlZA337S8xLnD", "smallImageUrl": "R80mKt3MIIEllzsa", "width": 26}, {"as": "gtQdHGaT14aPM0on", "caption": "Cu1iJmtrxi3w1qzb", "height": 2, "imageUrl": "esG4ljKTnbVzbPTh", "smallImageUrl": "Qq2wiraWddF9gM2T", "width": 79}, {"as": "Zao0ay1iELH7SyBj", "caption": "o2KYNGBY9c0BqGbs", "height": 77, "imageUrl": "ivxjPx1GX5k3ENlZ", "smallImageUrl": "QfiNxRFibYHnvKPQ", "width": 53}], "inventoryConfig": {"customAttributes": {"yg3UGFpIdAbiaj78": {}, "akZBe1NSwfXxlKpo": {}, "KShPOh00ElvSPlAh": {}}, "serverCustomAttributes": {"AWGR5jiCWB7LrqoS": {}, "WGGhDiWXjlSeRW9W": {}, "ZkytDyOwVCSQR29L": {}}, "slotUsed": 29}, "itemIds": ["TTZSI2LL7zFH5Mzv", "WIK14mH9l5jKVmAH", "Tnk5ngtCmOzZqyJi"], "itemQty": {"2miOuh7yMbwmIuak": 27, "8h3B1M6Y5XFazBNt": 88, "jK9mYEQLtyoaMmlY": 89}, "itemType": "SEASON", "listable": false, "localizations": {"xpHTTZW7ctKpg2S1": {"description": "3nQjszK8Uamiz93I", "localExt": {"RonTEdkIGkDq4cav": {}, "Jnxbtb5ECV8UcutN": {}, "9x84IAthutVvlz1W": {}}, "longDescription": "BTluoM0lo4xugXbL", "title": "pxcGIACIIr10Kszx"}, "EncFP3Q2vCkxziwo": {"description": "o41e35mlO2V7hd0n", "localExt": {"7VQot9PjWsJNTX4l": {}, "PPbSltifp369etgS": {}, "LWAUNWwq307ui27Z": {}}, "longDescription": "08ASG6IxG4wia0Lo", "title": "mg69A98wLHFani8N"}, "FQoFmPt63HdI8mQn": {"description": "wvHN6MgJNbeLlT4k", "localExt": {"lRSvAMKRISjQgVZh": {}, "2EZCQYcycfG9oqOd": {}, "IwcLbjjGLH2Ag00A": {}}, "longDescription": "7SBffuWPqdDkWXqw", "title": "vgieQjK61nojaSPD"}}, "lootBoxConfig": {"rewardCount": 6, "rewards": [{"lootBoxItems": [{"count": 37, "duration": 9, "endDate": "1980-10-01T00:00:00Z", "itemId": "Vq7cvS0pdR7GtSIU", "itemSku": "XVemxVtFiF0Npw6s", "itemType": "T73eNHi51He4OpSC"}, {"count": 4, "duration": 36, "endDate": "1971-08-18T00:00:00Z", "itemId": "nWif4ObppuShtk4l", "itemSku": "kEiveMlF6SehMNAO", "itemType": "GmTgzMVSAuyTTi3S"}, {"count": 94, "duration": 71, "endDate": "1982-06-28T00:00:00Z", "itemId": "9K2BodxFUyxaWw6M", "itemSku": "5hHDnmpLBclKftnM", "itemType": "HgPMlhIwi4PfbGaV"}], "name": "LrNlrMNM27zfshGu", "odds": 0.3444752884882252, "type": "PROBABILITY_GROUP", "weight": 75}, {"lootBoxItems": [{"count": 81, "duration": 50, "endDate": "1992-02-19T00:00:00Z", "itemId": "9G5Eg0V5cOrjPjaK", "itemSku": "y4YtIehxKBzfGvuv", "itemType": "Fjj7DGaxGWR7ztx5"}, {"count": 43, "duration": 45, "endDate": "1992-10-05T00:00:00Z", "itemId": "9RMW0oh7KGRSmmVr", "itemSku": "hnPf4sSWT8JG7I0s", "itemType": "qK4hVSyqc9nVfN5u"}, {"count": 58, "duration": 51, "endDate": "1998-10-02T00:00:00Z", "itemId": "MTEYM2qrcgzHFmS8", "itemSku": "GeiZj2SNxCJBxDA4", "itemType": "BZobYzDbnV8RAxBp"}], "name": "eHNKvz0s9TNAL5Yv", "odds": 0.3359672290089739, "type": "PROBABILITY_GROUP", "weight": 46}, {"lootBoxItems": [{"count": 87, "duration": 7, "endDate": "1993-12-21T00:00:00Z", "itemId": "S4jVLjdHwQvK9Xux", "itemSku": "BLuK3CbYUwqGYu4O", "itemType": "OjBizXAIvIN4NdZJ"}, {"count": 95, "duration": 94, "endDate": "1974-11-09T00:00:00Z", "itemId": "fLbRYQaTjUVjqKa0", "itemSku": "3ObbynAtqkFJ4bc9", "itemType": "hpTBcE3zqmulWbqa"}, {"count": 76, "duration": 52, "endDate": "1993-11-08T00:00:00Z", "itemId": "vm0SfwQrhvPUgEl8", "itemSku": "zNpbqJaSkScKjODv", "itemType": "vMTmuHk8q2UK3tNc"}], "name": "u6LXqFmy8woOPDYa", "odds": 0.17348299977795745, "type": "REWARD", "weight": 59}], "rollFunction": "DEFAULT"}, "maxCount": 72, "maxCountPerUser": 12, "name": "XKbnKTOUhAMaDvRM", "optionBoxConfig": {"boxItems": [{"count": 6, "duration": 59, "endDate": "1987-11-11T00:00:00Z", "itemId": "mn2QgjbK5eHDrqmT", "itemSku": "Gvs5xTZbiK5XFMbq", "itemType": "j0dTmQ3axLBh0rs6"}, {"count": 100, "duration": 73, "endDate": "1977-08-19T00:00:00Z", "itemId": "4hjSYufI3kcfuFkd", "itemSku": "J7ZfDVN6dz8AKvPX", "itemType": "gt6xzeluO0mybygD"}, {"count": 86, "duration": 42, "endDate": "1991-02-21T00:00:00Z", "itemId": "pOE2AhOGrUGXgbe5", "itemSku": "cCoCGL8RK10NWyo3", "itemType": "ig4PMUIyrREmPHyb"}]}, "purchasable": true, "recurring": {"cycle": "YEARLY", "fixedFreeDays": 2, "fixedTrialCycles": 30, "graceDays": 69}, "regionData": {"g6B0nCEF7jqTFjcm": [{"currencyCode": "RvoepOM1iYEnqc6z", "currencyNamespace": "SVj4BNaYNPDT3ocZ", "currencyType": "REAL", "discountAmount": 40, "discountExpireAt": "1999-02-18T00:00:00Z", "discountPercentage": 88, "discountPurchaseAt": "1973-11-05T00:00:00Z", "expireAt": "1999-07-06T00:00:00Z", "price": 0, "purchaseAt": "1972-05-01T00:00:00Z", "trialPrice": 18}, {"currencyCode": "ZLOLw8I0cnGe04YU", "currencyNamespace": "bufwyckNUHQkwwzD", "currencyType": "REAL", "discountAmount": 81, "discountExpireAt": "1981-11-26T00:00:00Z", "discountPercentage": 27, "discountPurchaseAt": "1995-12-12T00:00:00Z", "expireAt": "1976-06-18T00:00:00Z", "price": 85, "purchaseAt": "1991-12-30T00:00:00Z", "trialPrice": 93}, {"currencyCode": "aF16NCbbIYLUkaXD", "currencyNamespace": "K1uTt7IHO4KI4yQ2", "currencyType": "REAL", "discountAmount": 89, "discountExpireAt": "1971-08-02T00:00:00Z", "discountPercentage": 44, "discountPurchaseAt": "1977-09-15T00:00:00Z", "expireAt": "1971-07-24T00:00:00Z", "price": 20, "purchaseAt": "1991-10-23T00:00:00Z", "trialPrice": 51}], "1lAf01B6zVLciRbz": [{"currencyCode": "VhnWFb8l1drGhDAI", "currencyNamespace": "vQ80l26tU2DCtacy", "currencyType": "VIRTUAL", "discountAmount": 5, "discountExpireAt": "1992-12-30T00:00:00Z", "discountPercentage": 29, "discountPurchaseAt": "1972-07-15T00:00:00Z", "expireAt": "1996-07-31T00:00:00Z", "price": 20, "purchaseAt": "1973-04-09T00:00:00Z", "trialPrice": 6}, {"currencyCode": "oW6qzGz911IwdgF0", "currencyNamespace": "pB79Xmu4TsmPsa2R", "currencyType": "VIRTUAL", "discountAmount": 24, "discountExpireAt": "1993-02-19T00:00:00Z", "discountPercentage": 83, "discountPurchaseAt": "1985-05-07T00:00:00Z", "expireAt": "1978-10-14T00:00:00Z", "price": 14, "purchaseAt": "1983-10-09T00:00:00Z", "trialPrice": 77}, {"currencyCode": "m04N7rrVzIS7tnPi", "currencyNamespace": "kLI52VYxu9pofvIE", "currencyType": "REAL", "discountAmount": 82, "discountExpireAt": "1974-10-07T00:00:00Z", "discountPercentage": 4, "discountPurchaseAt": "1972-06-15T00:00:00Z", "expireAt": "1989-09-16T00:00:00Z", "price": 13, "purchaseAt": "1995-03-11T00:00:00Z", "trialPrice": 77}], "CkhFcNwjr2qPh9t2": [{"currencyCode": "8m0NFxb1C1uvZqIB", "currencyNamespace": "tHGw2Q0Mk7izgDa1", "currencyType": "REAL", "discountAmount": 29, "discountExpireAt": "1999-01-31T00:00:00Z", "discountPercentage": 73, "discountPurchaseAt": "1988-11-12T00:00:00Z", "expireAt": "1999-01-02T00:00:00Z", "price": 22, "purchaseAt": "1995-06-15T00:00:00Z", "trialPrice": 39}, {"currencyCode": "jbyuTqIv6tsMNplT", "currencyNamespace": "iaV8pJehMWsRgyOg", "currencyType": "VIRTUAL", "discountAmount": 40, "discountExpireAt": "1976-01-11T00:00:00Z", "discountPercentage": 11, "discountPurchaseAt": "1979-04-05T00:00:00Z", "expireAt": "1999-08-26T00:00:00Z", "price": 35, "purchaseAt": "1992-12-14T00:00:00Z", "trialPrice": 78}, {"currencyCode": "dhdz5fIIENCaH9wH", "currencyNamespace": "BBAS8oDezUqCjldP", "currencyType": "VIRTUAL", "discountAmount": 67, "discountExpireAt": "1982-01-26T00:00:00Z", "discountPercentage": 18, "discountPurchaseAt": "1983-10-23T00:00:00Z", "expireAt": "1971-10-06T00:00:00Z", "price": 9, "purchaseAt": "1987-01-26T00:00:00Z", "trialPrice": 39}]}, "saleConfig": {"currencyCode": "Jogu9jipwx7vZdZA", "price": 25}, "seasonType": "PASS", "sectionExclusive": false, "sellable": false, "sku": "RFERITOKpExDkxrJ", "stackable": false, "status": "ACTIVE", "tags": ["rmOxfB1RALmPBcQl", "0KgrAx3dBEF1F2TB", "r1aTHn18L7j9Ia0L"], "targetCurrencyCode": "pW2mbFvPZ4KOmY0Z", "targetNamespace": "20RiQs7j9movb0qw", "thumbnailUrl": "xIZjqmN5FPsnRIdF", "useCount": 77}' \
    > test.out 2>&1
eval_tap $? 129 'UpdateItem' test.out

#- 130 DeleteItem
samples/cli/sample-apps Platform deleteItem \
    --itemId '9UOyLdBcXUgn0UEf' \
    --namespace $AB_NAMESPACE \
    --force 'false' \
    --storeId 'XmDRDvIa5oQLK04q' \
    > test.out 2>&1
eval_tap $? 130 'DeleteItem' test.out

#- 131 AcquireItem
samples/cli/sample-apps Platform acquireItem \
    --itemId 'LJpZ9IoRPAAEtQxY' \
    --namespace $AB_NAMESPACE \
    --body '{"count": 41, "orderNo": "i8MWc3B7XdTiXyTc"}' \
    > test.out 2>&1
eval_tap $? 131 'AcquireItem' test.out

#- 132 GetApp
samples/cli/sample-apps Platform getApp \
    --itemId '9MIsMcJncMIw8bMO' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'xo9xoga0LQdr1yva' \
    > test.out 2>&1
eval_tap $? 132 'GetApp' test.out

#- 133 UpdateApp
samples/cli/sample-apps Platform updateApp \
    --itemId 'rNjyy46WRk3eMrux' \
    --namespace $AB_NAMESPACE \
    --storeId 'cdtFvIwZc2sScsGQ' \
    --body '{"carousel": [{"alt": "ujePbT3idrrXAz2S", "previewUrl": "Fn2XFvTENHqVTFu6", "thumbnailUrl": "pSbys3TIhcnK4HSk", "type": "image", "url": "KZ91PfVUtChhZB1l", "videoSource": "vimeo"}, {"alt": "MLzbjDcdIC7fEDzs", "previewUrl": "uuBUCdOEisOrLAz2", "thumbnailUrl": "vHR6EXs0EjrdMhd1", "type": "image", "url": "uJTsurC668LtetJA", "videoSource": "youtube"}, {"alt": "5mICxaPeJF3BoidM", "previewUrl": "9h6Y5DAbzwuUO03n", "thumbnailUrl": "VGeE2hOFtyGFhRkn", "type": "image", "url": "QzzA3ew5PNfpK8tK", "videoSource": "youtube"}], "developer": "NbKejJGPvHgcvMS0", "forumUrl": "tcpmGXZIy9iYP8En", "genres": ["Adventure", "Action", "MassivelyMultiplayer"], "localizations": {"FVxP1YLGb6sUzxLQ": {"announcement": "WReUoWYjLfNmS8EO", "slogan": "hAyqNRXxr8Qk6N3B"}, "nlyAfCSQhtJHvuew": {"announcement": "KJCLnLQdOeNmgkvP", "slogan": "sYes0vou6zUynmbQ"}, "vW4DJmIu8yDegJcv": {"announcement": "A7SNh1Lm1A33GFbG", "slogan": "x1yGJ5IPDTwBg0mm"}}, "platformRequirements": {"rmSi5oClVD4SRPLk": [{"additionals": "DPWgSOBpKhd1LgLk", "directXVersion": "idDhkPvdhvmqPldp", "diskSpace": "UnARUBEtqRa1PvjU", "graphics": "IXkARDDuVTiaF06h", "label": "7kTdNHooXoEewLw4", "osVersion": "FHMvcEMHAk4vHKgt", "processor": "PlhtBr5Y807yk9qO", "ram": "DBPyX2SyNQoAsJyd", "soundCard": "GtsHP7pPNFkUIT02"}, {"additionals": "SZiXIYqZ3tTZNL84", "directXVersion": "in0uekEVbDcv2hcq", "diskSpace": "L5SyDQlj0N6rWVBR", "graphics": "Y4cn7zri9y4zadIz", "label": "ndyEoLuir8xWnKd1", "osVersion": "0rhiOdbD2ouqCMds", "processor": "QCgJeldVCln8uWBs", "ram": "xPlAVYSg1wuPIt5S", "soundCard": "ICnEdUM4UXw3hupo"}, {"additionals": "2XQIKzXFvkUhxhl1", "directXVersion": "gNMLcMAm3ljj0jvf", "diskSpace": "CHxo1C7WAwl35sVQ", "graphics": "JN0lUXZDZkZ8ecbg", "label": "Kt3x1d6iqHrj6gQI", "osVersion": "qbxgWencUEodLpX8", "processor": "PzzsffgZD0GapBDM", "ram": "91QkwlGQiHDgvpmK", "soundCard": "jtmmfRWGKd4kePJw"}], "0AOtlPFFcojgEpJC": [{"additionals": "6a9pzskYUwmGLD2E", "directXVersion": "Wqdp4qJrQteLNYIf", "diskSpace": "cle1xteVOKsyg8wN", "graphics": "sFm3UpyHbTmJSI9f", "label": "JGXm7mnHYNtC55HD", "osVersion": "F2fL783C0hz3X6Bi", "processor": "xectxuYperL3ngow", "ram": "gp3ig66RVrhDDo9g", "soundCard": "AB8MGqH2oO3WKFmE"}, {"additionals": "gv5PD2agZ69lAjMA", "directXVersion": "aAO6EJrgPwa1wwtO", "diskSpace": "1KAodZJqo0qXogYl", "graphics": "zmJWppSV3mGRa9Sd", "label": "BN9UCQUJhTidK5Y3", "osVersion": "rEo0b7EXNIJFV3vM", "processor": "TxQ5eZRkbrKLmnO2", "ram": "1rMCEvtjRhjpP8tm", "soundCard": "44Q86CIw2z42KfvF"}, {"additionals": "OFZFrjzahXJzCBY0", "directXVersion": "08AFChUotOV1YQVi", "diskSpace": "BM7N0vzijn3CVZxv", "graphics": "4ls1UfkZHcwhioiA", "label": "bUm23oPG1wiKB3PN", "osVersion": "fEgc7di4BKHuIXUM", "processor": "UK7uvgutpqtICvHU", "ram": "kaTkkMonGd2dPjlT", "soundCard": "Sw6r9uZsNZjYcCbF"}], "9HexJgF4fIq0neXC": [{"additionals": "B6bPqmuUeZZM555F", "directXVersion": "bjW7KQYrsyFmPEs2", "diskSpace": "d9pBz5VRmMuRDIPb", "graphics": "zeC8A6yz2kqnQeEq", "label": "X9vueJC1kUcF9SLf", "osVersion": "GDnggDGn5fPdXllI", "processor": "aTH9MYevBE5ctIP6", "ram": "2zrdACiMM07zcUYO", "soundCard": "5yj8Hz9uXaNxTZxG"}, {"additionals": "xYtGGDv9P2vCBBKH", "directXVersion": "juqENG1oINzwsGyl", "diskSpace": "vS2V7kF5v2Q8q9jh", "graphics": "3iNrxG5bmgtdsmCB", "label": "o0v8XeY4yjC5fxw2", "osVersion": "yeIbhuDEMCEmjSXC", "processor": "h2JzkhK0gqbnmG3Y", "ram": "dqKILa7dYsTPWkrb", "soundCard": "Fwrtd1JHPYlowcV5"}, {"additionals": "wjPMEozlbjbcQBxp", "directXVersion": "4HV9TQF6qTp3iNTx", "diskSpace": "2Hg9M1YxkCqqqCUZ", "graphics": "NNl7V2DEuQoWsMm3", "label": "vAh8IvZ1jOd2kqYi", "osVersion": "3Hj3FqrSFa60YjQM", "processor": "0SE71KYxscKKxwuM", "ram": "oSrwn6CqnaKB5hol", "soundCard": "iwrY6AO61nOSqgqb"}]}, "platforms": ["MacOS", "Linux", "IOS"], "players": ["Multi", "CrossPlatformMulti", "MMO"], "primaryGenre": "Adventure", "publisher": "tAt6Mev6DkQuOy81", "releaseDate": "1989-03-11T00:00:00Z", "websiteUrl": "0uzCv7PPK0LGfGJb"}' \
    > test.out 2>&1
eval_tap $? 133 'UpdateApp' test.out

#- 134 DisableItem
samples/cli/sample-apps Platform disableItem \
    --itemId 'DG2RK1jjfi1tKWbH' \
    --namespace $AB_NAMESPACE \
    --storeId 'Ne9gH4nKmYmRgF5g' \
    > test.out 2>&1
eval_tap $? 134 'DisableItem' test.out

#- 135 GetItemDynamicData
samples/cli/sample-apps Platform getItemDynamicData \
    --itemId 'HjKtmGO0xMPhG9Bn' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 135 'GetItemDynamicData' test.out

#- 136 EnableItem
samples/cli/sample-apps Platform enableItem \
    --itemId 'C5N9LvLxDNnybpSL' \
    --namespace $AB_NAMESPACE \
    --storeId 'W8RKlgvBnQOvi2aH' \
    > test.out 2>&1
eval_tap $? 136 'EnableItem' test.out

#- 137 FeatureItem
samples/cli/sample-apps Platform featureItem \
    --feature 'quaOAPfUEPPRF493' \
    --itemId 'YR0oywgiIWC01ggH' \
    --namespace $AB_NAMESPACE \
    --storeId 'mTGFYhL3TwvnCDKw' \
    > test.out 2>&1
eval_tap $? 137 'FeatureItem' test.out

#- 138 DefeatureItem
samples/cli/sample-apps Platform defeatureItem \
    --feature '0oPqnQJTUBoeIfPP' \
    --itemId 'MWw6Spon65VGJxLm' \
    --namespace $AB_NAMESPACE \
    --storeId '0d2O9KhtzySSpgRZ' \
    > test.out 2>&1
eval_tap $? 138 'DefeatureItem' test.out

#- 139 GetLocaleItem
samples/cli/sample-apps Platform getLocaleItem \
    --itemId 'WAcoSGFvYql9pkyt' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --language 'x3x55cNh3akjdSl5' \
    --populateBundle 'true' \
    --region 'yxbCFeLj5vDRJ8IR' \
    --storeId 'wosZo7yOj03xSToB' \
    > test.out 2>&1
eval_tap $? 139 'GetLocaleItem' test.out

#- 140 UpdateItemPurchaseCondition
samples/cli/sample-apps Platform updateItemPurchaseCondition \
    --itemId 'iVXi4OK0v4BopGPb' \
    --namespace $AB_NAMESPACE \
    --storeId 'FXhrP7a0Yiuh9Mdq' \
    --body '{"purchaseCondition": {"conditionGroups": [{"operator": "and", "predicates": [{"anyOf": 60, "code": "hKcoXxYrvlumotVi", "comparison": "isNot", "name": "897v2E3fYscfnqPO", "predicateType": "EntitlementPredicate", "value": "VgUBWLyK3cRIkV4Y", "values": ["sg6kaw65jWlAknB1", "3wbZ6Nd8rCkNxTxB", "tGriVqAH2Wu9GPXa"]}, {"anyOf": 19, "code": "uReBiqa5FIuO5q0i", "comparison": "isNot", "name": "OHp2ljCBszVZIizM", "predicateType": "SeasonTierPredicate", "value": "uHRL0SOYJQEppad7", "values": ["IWtyFOM5nWsnl98n", "uT1HXagYc13r6mYf", "YwKIqgsPHTDZGULH"]}, {"anyOf": 53, "code": "mHx9vcCYJWtpPECK", "comparison": "isNot", "name": "lgVwMxpHfIte1yZW", "predicateType": "EntitlementPredicate", "value": "5AODt4J5JEmSI8mS", "values": ["8A76abwxmpHOOJE4", "0IkwXrBX2kQ3x7tt", "ATqWP6gq9qoNxksm"]}]}, {"operator": "or", "predicates": [{"anyOf": 16, "code": "tRRxKejAZRj08fU7", "comparison": "isLessThanOrEqual", "name": "NG68TnSut3zYUiRu", "predicateType": "EntitlementPredicate", "value": "uqeeXhVVsB9YAQWd", "values": ["g35netIBEhDgzrbf", "CVEgymQx5gE4Zqj9", "gwlRfrkZb54h9R18"]}, {"anyOf": 9, "code": "9Fxv8TLCA66gRlzL", "comparison": "isLessThanOrEqual", "name": "IhA3obv5NhZtU37S", "predicateType": "SeasonPassPredicate", "value": "cnllSS08UIL075x8", "values": ["rBWF65OX7D78DtaV", "UJ22I5Vy48f7IOIP", "ViJCFzTo2uDa95k6"]}, {"anyOf": 77, "code": "4XwsFN8KlezIQdVG", "comparison": "isGreaterThanOrEqual", "name": "5uar9r0jnzw2Xk9t", "predicateType": "SeasonPassPredicate", "value": "EmeZJeeU0SdcWIYi", "values": ["edlTGsaUnzwEvagW", "aeGcFUuHrjGuQepE", "3tdKZyx9OlGfZLWW"]}]}, {"operator": "and", "predicates": [{"anyOf": 22, "code": "wxsvB5u2DkIkzoh8", "comparison": "isLessThanOrEqual", "name": "d7fSG4JekAMALDa4", "predicateType": "SeasonTierPredicate", "value": "Dy7mq9jx5JD3SduB", "values": ["4JEYSYsJo4Fofp2E", "5ajp0E0nfJGuYpEy", "crcs7E6RL5S9tv02"]}, {"anyOf": 39, "code": "vx5cxNRSOsnl0p8Z", "comparison": "excludes", "name": "N7S5qehVJz0gm8AT", "predicateType": "SeasonPassPredicate", "value": "fVu1wr0Us6kU14BG", "values": ["skDUxKiqn0zfrrN0", "vc9yXZUTLx7GXMTC", "zfAtGV6piUGwoW0G"]}, {"anyOf": 68, "code": "PFP0nujASpMypI91", "comparison": "isLessThan", "name": "PHinZk8aYDbl6UKP", "predicateType": "SeasonPassPredicate", "value": "auxgUqSnNbn0LQLx", "values": ["Ak1g2Smq9v5HzGDi", "961dL0jQfWjM4Waa", "JhTIOFjPOQwc9wqv"]}]}]}}' \
    > test.out 2>&1
eval_tap $? 140 'UpdateItemPurchaseCondition' test.out

#- 141 ReturnItem
samples/cli/sample-apps Platform returnItem \
    --itemId 'QYW7NU4uT5Ar9c0y' \
    --namespace $AB_NAMESPACE \
    --body '{"orderNo": "xWQoVCVwh9Hm6iNT"}' \
    > test.out 2>&1
eval_tap $? 141 'ReturnItem' test.out

#- 142 QueryKeyGroups
samples/cli/sample-apps Platform queryKeyGroups \
    --namespace $AB_NAMESPACE \
    --limit '24' \
    --name 'FrdRHwcodNAfNM4l' \
    --offset '37' \
    --tag 'e1IcnVrzDLIDSWUB' \
    > test.out 2>&1
eval_tap $? 142 'QueryKeyGroups' test.out

#- 143 CreateKeyGroup
samples/cli/sample-apps Platform createKeyGroup \
    --namespace $AB_NAMESPACE \
    --body '{"description": "ri9NK3SsOKnTHjvi", "name": "rMViX2ZzjzmfZOOp", "status": "INACTIVE", "tags": ["C0EtB0oFXHyO2KGT", "mjQTVTXJvjlewSvw", "fP9gZ91Hxx73cMWS"]}' \
    > test.out 2>&1
eval_tap $? 143 'CreateKeyGroup' test.out

#- 144 GetKeyGroupByBoothName
eval_tap 0 144 'GetKeyGroupByBoothName # SKIP deprecated' test.out

#- 145 GetKeyGroup
samples/cli/sample-apps Platform getKeyGroup \
    --keyGroupId 'MbvPXTfiCXMh1ryl' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 145 'GetKeyGroup' test.out

#- 146 UpdateKeyGroup
samples/cli/sample-apps Platform updateKeyGroup \
    --keyGroupId 'YfQNYaHNqcRiP8bm' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "10CwVTbqz9kzGXIk", "name": "9ETm14hxWcFCA0Yd", "status": "INACTIVE", "tags": ["dBZR8NKXTW7RCeLD", "KbaMx3BSKt7QSk0N", "EL5iVq6tm3WUPcY3"]}' \
    > test.out 2>&1
eval_tap $? 146 'UpdateKeyGroup' test.out

#- 147 GetKeyGroupDynamic
samples/cli/sample-apps Platform getKeyGroupDynamic \
    --keyGroupId 'CX46bXPfGMfGydSX' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 147 'GetKeyGroupDynamic' test.out

#- 148 ListKeys
samples/cli/sample-apps Platform listKeys \
    --keyGroupId '95NEbb2ldFoFCCjW' \
    --namespace $AB_NAMESPACE \
    --limit '58' \
    --offset '86' \
    --status 'ACQUIRED' \
    > test.out 2>&1
eval_tap $? 148 'ListKeys' test.out

#- 149 UploadKeys
samples/cli/sample-apps Platform uploadKeys \
    --keyGroupId 'sRoKU03hs0jkauXq' \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 149 'UploadKeys' test.out

#- 150 QueryOrders
samples/cli/sample-apps Platform queryOrders \
    --namespace $AB_NAMESPACE \
    --endTime 'KVItxvXH7FyoGsOa' \
    --limit '8' \
    --offset '54' \
    --orderNos '["lpzUsk5qs33Lzmib", "YB0eYQn4kCnqfRcW", "znBgl1Ceq7vtkuQA"]' \
    --sortBy 'IGmjWW4hNjGniUjx' \
    --startTime 'Ewr6Ci0REEWfknBi' \
    --status 'INIT' \
    --withTotal 'false' \
    > test.out 2>&1
eval_tap $? 150 'QueryOrders' test.out

#- 151 GetOrderStatistics
samples/cli/sample-apps Platform getOrderStatistics \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 151 'GetOrderStatistics' test.out

#- 152 GetOrder
samples/cli/sample-apps Platform getOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'P4lsfxZim9ZrwH8e' \
    > test.out 2>&1
eval_tap $? 152 'GetOrder' test.out

#- 153 RefundOrder
samples/cli/sample-apps Platform refundOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'PTHQemy0c5jMvrBG' \
    --body '{"description": "2gMr54ViFPneftQS"}' \
    > test.out 2>&1
eval_tap $? 153 'RefundOrder' test.out

#- 154 GetPaymentCallbackConfig
samples/cli/sample-apps Platform getPaymentCallbackConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 154 'GetPaymentCallbackConfig' test.out

#- 155 UpdatePaymentCallbackConfig
samples/cli/sample-apps Platform updatePaymentCallbackConfig \
    --namespace $AB_NAMESPACE \
    --body '{"dryRun": false, "notifyUrl": "sfDsqKr3Olo3ICGR", "privateKey": "Gpv7m22LlTaYduYs"}' \
    > test.out 2>&1
eval_tap $? 155 'UpdatePaymentCallbackConfig' test.out

#- 156 GetPaymentMerchantConfig
samples/cli/sample-apps Platform getPaymentMerchantConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 156 'GetPaymentMerchantConfig' test.out

#- 157 UpdatePaymentDomainWhitelistConfig
samples/cli/sample-apps Platform updatePaymentDomainWhitelistConfig \
    --namespace $AB_NAMESPACE \
    --body '{"domains": ["iJK8NKF81Evtrkio", "ZqT9kF0ODgwc0vEq", "sL2hEoXcYSBqiEQj"]}' \
    > test.out 2>&1
eval_tap $? 157 'UpdatePaymentDomainWhitelistConfig' test.out

#- 158 QueryPaymentNotifications
samples/cli/sample-apps Platform queryPaymentNotifications \
    --namespace $AB_NAMESPACE \
    --endDate 'LG7Lc0teTjWhupip' \
    --externalId 'HXonZ0uABsv5wArF' \
    --limit '31' \
    --notificationSource 'CHECKOUT' \
    --notificationType 'WNbvhqpJeTUGXiSY' \
    --offset '5' \
    --paymentOrderNo 'fWtxkgdNJD4qd2aN' \
    --startDate 'zqUn6sfK3QLGjS7y' \
    --status 'ERROR' \
    > test.out 2>&1
eval_tap $? 158 'QueryPaymentNotifications' test.out

#- 159 QueryPaymentOrders
samples/cli/sample-apps Platform queryPaymentOrders \
    --namespace $AB_NAMESPACE \
    --channel 'INTERNAL' \
    --extTxId 'RxzEDPUiwJBlfvJV' \
    --limit '89' \
    --offset '54' \
    --status 'REQUEST_FOR_INFORMATION' \
    > test.out 2>&1
eval_tap $? 159 'QueryPaymentOrders' test.out

#- 160 CreatePaymentOrderByDedicated
samples/cli/sample-apps Platform createPaymentOrderByDedicated \
    --namespace $AB_NAMESPACE \
    --body '{"currencyCode": "QLSdeX6BCeQYBWmX", "currencyNamespace": "fzwZj4qbC4i8c7Nl", "customParameters": {"SUvttAPz7F7VCHHv": {}, "848wfqxTyzuaLf0q": {}, "zeqZlrwJ4HwAVDai": {}}, "description": "bNnk9jAbPYyEDdXM", "extOrderNo": "egGrHpJFA6NuQU74", "extUserId": "jQZvtcExz6DBvgb8", "itemType": "OPTIONBOX", "language": "XaLm_NH", "metadata": {"JzQOegD4sPUFDUh3": "UwYkOlyQDd74oqix", "fSa0DvFyqCVGznPe": "6d7kocwyjaZw8BSS", "YS2FXiE9T3CUlj3j": "hjq7tEXMtVv2Yz7k"}, "notifyUrl": "XlHpU42XhF5pfoSb", "omitNotification": true, "platform": "jQScubdV2z7TGngD", "price": 84, "recurringPaymentOrderNo": "lrHDerTqXOao5SCW", "region": "L2LmPciHTgTcptkn", "returnUrl": "1CfzWKNQ3vQzGTwt", "sandbox": true, "sku": "nLnfILYtgP1Ubbtm", "subscriptionId": "dBpsM1Ze3iD0ibm7", "targetNamespace": "Gl60zA97u7lE3fN3", "targetUserId": "C9kQes9tacua9iaX", "title": "Z11We2jYPlfI7OYt"}' \
    > test.out 2>&1
eval_tap $? 160 'CreatePaymentOrderByDedicated' test.out

#- 161 ListExtOrderNoByExtTxId
samples/cli/sample-apps Platform listExtOrderNoByExtTxId \
    --namespace $AB_NAMESPACE \
    --extTxId 'LqEtNk52RA4n0mUl' \
    > test.out 2>&1
eval_tap $? 161 'ListExtOrderNoByExtTxId' test.out

#- 162 GetPaymentOrder
samples/cli/sample-apps Platform getPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'JUjm6S2benpynXlj' \
    > test.out 2>&1
eval_tap $? 162 'GetPaymentOrder' test.out

#- 163 ChargePaymentOrder
samples/cli/sample-apps Platform chargePaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'P7pR137b5YAfl1Rq' \
    --body '{"extTxId": "im5GIzAywx7So4Ot", "paymentMethod": "it7PmN54ni0CrNGi", "paymentProvider": "NEONPAY"}' \
    > test.out 2>&1
eval_tap $? 163 'ChargePaymentOrder' test.out

#- 164 RefundPaymentOrderByDedicated
samples/cli/sample-apps Platform refundPaymentOrderByDedicated \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'uckjFWcFipWwbPYa' \
    --body '{"description": "3Elzlc6GzTdDwupy"}' \
    > test.out 2>&1
eval_tap $? 164 'RefundPaymentOrderByDedicated' test.out

#- 165 SimulatePaymentOrderNotification
samples/cli/sample-apps Platform simulatePaymentOrderNotification \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'Do9NYgYzFZ75kR6z' \
    --body '{"amount": 35, "currencyCode": "4p5kj8ZFZQI9Uh1X", "notifyType": "CHARGE", "paymentProvider": "PAYPAL", "salesTax": 83, "vat": 68}' \
    > test.out 2>&1
eval_tap $? 165 'SimulatePaymentOrderNotification' test.out

#- 166 GetPaymentOrderChargeStatus
samples/cli/sample-apps Platform getPaymentOrderChargeStatus \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'rQqExEpWNlIoKyKZ' \
    > test.out 2>&1
eval_tap $? 166 'GetPaymentOrderChargeStatus' test.out

#- 167 GetPsnEntitlementOwnership
samples/cli/sample-apps Platform getPsnEntitlementOwnership \
    --entitlementLabel 'Xxn7puLBRO3EyIAs' \
    --namespace $AB_NAMESPACE \
    --body '{"accessToken": "1vtM2GqYiexEWqT6", "serviceLabel": 97}' \
    > test.out 2>&1
eval_tap $? 167 'GetPsnEntitlementOwnership' test.out

#- 168 GetXboxEntitlementOwnership
samples/cli/sample-apps Platform getXboxEntitlementOwnership \
    --namespace $AB_NAMESPACE \
    --productSku 'OkYpP249WmLNEAqf' \
    --body '{"delegationToken": "140v4g460J6xsMw6", "sandboxId": "JZoZMlvsbk7tptjM"}' \
    > test.out 2>&1
eval_tap $? 168 'GetXboxEntitlementOwnership' test.out

#- 169 GetPlatformEntitlementConfig
samples/cli/sample-apps Platform getPlatformEntitlementConfig \
    --namespace $AB_NAMESPACE \
    --platform 'GooglePlay' \
    > test.out 2>&1
eval_tap $? 169 'GetPlatformEntitlementConfig' test.out

#- 170 UpdatePlatformEntitlementConfig
samples/cli/sample-apps Platform updatePlatformEntitlementConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Oculus' \
    --body '{"allowedPlatformOrigins": ["Steam", "IOS", "GooglePlay"]}' \
    > test.out 2>&1
eval_tap $? 170 'UpdatePlatformEntitlementConfig' test.out

#- 171 GetPlatformWalletConfig
samples/cli/sample-apps Platform getPlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Epic' \
    > test.out 2>&1
eval_tap $? 171 'GetPlatformWalletConfig' test.out

#- 172 UpdatePlatformWalletConfig
samples/cli/sample-apps Platform updatePlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Nintendo' \
    --body '{"allowedBalanceOrigins": ["IOS", "Twitch", "Other"]}' \
    > test.out 2>&1
eval_tap $? 172 'UpdatePlatformWalletConfig' test.out

#- 173 ResetPlatformWalletConfig
samples/cli/sample-apps Platform resetPlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Steam' \
    > test.out 2>&1
eval_tap $? 173 'ResetPlatformWalletConfig' test.out

#- 174 GetRevocationConfig
samples/cli/sample-apps Platform getRevocationConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 174 'GetRevocationConfig' test.out

#- 175 UpdateRevocationConfig
samples/cli/sample-apps Platform updateRevocationConfig \
    --namespace $AB_NAMESPACE \
    --body '{"entitlement": {"consumable": {"enabled": false, "strategy": "REVOKE_OR_REPORT"}, "durable": {"enabled": true, "strategy": "CUSTOM"}}, "wallet": {"enabled": true, "strategy": "REVOKE_OR_REPORT"}}' \
    > test.out 2>&1
eval_tap $? 175 'UpdateRevocationConfig' test.out

#- 176 DeleteRevocationConfig
samples/cli/sample-apps Platform deleteRevocationConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 176 'DeleteRevocationConfig' test.out

#- 177 QueryRevocationHistories
samples/cli/sample-apps Platform queryRevocationHistories \
    --namespace $AB_NAMESPACE \
    --endTime 'OQ1Tl3WMuOal4K47' \
    --limit '26' \
    --offset '28' \
    --source 'OTHER' \
    --startTime 'Tjiv0TquWXY0MyXb' \
    --status 'FAIL' \
    --transactionId '115zfjSXyqW6oMyl' \
    --userId 'GgPuJuJPtK9xlF8X' \
    > test.out 2>&1
eval_tap $? 177 'QueryRevocationHistories' test.out

#- 178 GetRevocationPluginConfig
samples/cli/sample-apps Platform getRevocationPluginConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 178 'GetRevocationPluginConfig' test.out

#- 179 UpdateRevocationPluginConfig
samples/cli/sample-apps Platform updateRevocationPluginConfig \
    --namespace $AB_NAMESPACE \
    --body '{"appConfig": {"appName": "g5KccZxfCOs2SGId"}, "customConfig": {"connectionType": "INSECURE", "grpcServerAddress": "K0hoU4ChKYvzLQ3Z"}, "extendType": "CUSTOM"}' \
    > test.out 2>&1
eval_tap $? 179 'UpdateRevocationPluginConfig' test.out

#- 180 DeleteRevocationPluginConfig
samples/cli/sample-apps Platform deleteRevocationPluginConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 180 'DeleteRevocationPluginConfig' test.out

#- 181 UploadRevocationPluginConfigCert
samples/cli/sample-apps Platform uploadRevocationPluginConfigCert \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 181 'UploadRevocationPluginConfigCert' test.out

#- 182 CreateReward
samples/cli/sample-apps Platform createReward \
    --namespace $AB_NAMESPACE \
    --body '{"description": "dGce62eo7lI32a1V", "eventTopic": "oLaPnFDu9jRqKosU", "maxAwarded": 6, "maxAwardedPerUser": 86, "namespaceExpression": "wQoKN52hLinJwIsF", "rewardCode": "x4I87zU6LJQjoXm6", "rewardConditions": [{"condition": "CtkNiqmWsn7jRGVj", "conditionName": "1pcWh1iNOhZdvwxY", "eventName": "Y5eE8bESjL3YuhTz", "rewardItems": [{"duration": 70, "endDate": "1988-09-15T00:00:00Z", "identityType": "ITEM_ID", "itemId": "Wyn0tGczp44Nxiyi", "quantity": 35, "sku": "p872om6W8vRG04N2"}, {"duration": 6, "endDate": "1973-03-10T00:00:00Z", "identityType": "ITEM_ID", "itemId": "RzUhwCb3Ni7GTIAk", "quantity": 87, "sku": "0FFNw0XdfgApLyq6"}, {"duration": 53, "endDate": "1990-09-26T00:00:00Z", "identityType": "ITEM_ID", "itemId": "jhhwzJa9i6EqCp9R", "quantity": 50, "sku": "M5nrNEHCiaYQAgbK"}]}, {"condition": "IT7MP9MT5wsTo1ob", "conditionName": "zuWpq9pQkEqdOouW", "eventName": "lte3NyytplSgfELv", "rewardItems": [{"duration": 21, "endDate": "1990-11-01T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "lgziZ9n5HdzD36GW", "quantity": 94, "sku": "ieNlac9KsQwRpM4o"}, {"duration": 20, "endDate": "1984-03-14T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "digw7uU9beZMnrLj", "quantity": 99, "sku": "cXqiUgSzTpszytYa"}, {"duration": 9, "endDate": "1975-03-09T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "U8ytceVPfRsWGXYr", "quantity": 78, "sku": "Wis8jZqwGHfZWBSD"}]}, {"condition": "Ehx7ACbP8G9bKaAt", "conditionName": "UR1ByACclddDhnZY", "eventName": "LGRTp2XvzQNx30BH", "rewardItems": [{"duration": 32, "endDate": "1999-10-24T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "LdZg3e2fm8DAw9Uv", "quantity": 75, "sku": "6xCikKrXeA9YlmI8"}, {"duration": 12, "endDate": "1998-09-04T00:00:00Z", "identityType": "ITEM_ID", "itemId": "XV56gEXso3XcAPxX", "quantity": 15, "sku": "qB4mywl7cRoBLT8X"}, {"duration": 3, "endDate": "1993-05-31T00:00:00Z", "identityType": "ITEM_ID", "itemId": "OLGmuHrnGAGz0wMV", "quantity": 1, "sku": "xZkkCl5Gf54UGk3K"}]}], "userIdExpression": "mqCGv3L4bS2XPiny"}' \
    > test.out 2>&1
eval_tap $? 182 'CreateReward' test.out

#- 183 QueryRewards
samples/cli/sample-apps Platform queryRewards \
    --namespace $AB_NAMESPACE \
    --eventTopic 'iQ35LHeUCbv7Lt8D' \
    --limit '24' \
    --offset '48' \
    --sortBy '["namespace:asc", "namespace", "namespace:desc"]' \
    > test.out 2>&1
eval_tap $? 183 'QueryRewards' test.out

#- 184 ExportRewards
samples/cli/sample-apps Platform exportRewards \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 184 'ExportRewards' test.out

#- 185 ImportRewards
samples/cli/sample-apps Platform importRewards \
    --namespace $AB_NAMESPACE \
    --replaceExisting 'true' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 185 'ImportRewards' test.out

#- 186 GetReward
samples/cli/sample-apps Platform getReward \
    --namespace $AB_NAMESPACE \
    --rewardId '1JRurG2E29W9Y58N' \
    > test.out 2>&1
eval_tap $? 186 'GetReward' test.out

#- 187 UpdateReward
samples/cli/sample-apps Platform updateReward \
    --namespace $AB_NAMESPACE \
    --rewardId 'vyBVnfTBjWu1eJch' \
    --body '{"description": "zaaElC8R5LpL1zCI", "eventTopic": "1hmYW9br0Y0dbpNF", "maxAwarded": 73, "maxAwardedPerUser": 21, "namespaceExpression": "3j2QABjKgZaHwspy", "rewardCode": "ADmPY4G657Z7NSZw", "rewardConditions": [{"condition": "4P9d4pMlKAcxAeKj", "conditionName": "evD6BRulHWKYUGEt", "eventName": "zfZxzeezYUJv51BW", "rewardItems": [{"duration": 94, "endDate": "1983-06-22T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "287TORuVM1NcRcsC", "quantity": 96, "sku": "qLLW9xtw0nmAw995"}, {"duration": 14, "endDate": "1997-10-29T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "pZpypbwFDJqhuT3p", "quantity": 62, "sku": "Tm2sVgJNYcVzezin"}, {"duration": 86, "endDate": "1998-04-30T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "HufU6KDQRFNBtOAX", "quantity": 23, "sku": "gKoRjNCVRpSUvrN0"}]}, {"condition": "41vFBRkIfe6DVOCH", "conditionName": "McIjnjOa7nGSO5wj", "eventName": "5t27FyKLd28394zn", "rewardItems": [{"duration": 99, "endDate": "1982-07-24T00:00:00Z", "identityType": "ITEM_ID", "itemId": "mU2l9BtEwYI7l8cg", "quantity": 39, "sku": "8ludlkLCXFitqLa4"}, {"duration": 64, "endDate": "1988-03-30T00:00:00Z", "identityType": "ITEM_ID", "itemId": "nhy4FPokOBg3rPpJ", "quantity": 96, "sku": "PY8jEB3dPfZp2MXl"}, {"duration": 57, "endDate": "1974-02-07T00:00:00Z", "identityType": "ITEM_ID", "itemId": "XWh5MMP3m5u7draP", "quantity": 97, "sku": "8oWGFTc5gp1V7nwP"}]}, {"condition": "xDZmIpgdIr0XGbqX", "conditionName": "ldL2xJhafIvSDNFN", "eventName": "9RDOcUKERubWTl2m", "rewardItems": [{"duration": 87, "endDate": "1982-04-30T00:00:00Z", "identityType": "ITEM_ID", "itemId": "3HaPJmSM9KvbEccV", "quantity": 79, "sku": "KhsyCTbYjpVjs2nQ"}, {"duration": 4, "endDate": "1997-08-01T00:00:00Z", "identityType": "ITEM_ID", "itemId": "gBuxIwQv05LXmKLf", "quantity": 74, "sku": "JoEhQ3Dtro0aqAhd"}, {"duration": 20, "endDate": "1974-06-18T00:00:00Z", "identityType": "ITEM_ID", "itemId": "WfW72bniDdBupFFW", "quantity": 10, "sku": "FhOrJ3GC1FqJWjrU"}]}], "userIdExpression": "0acepwjBwgFeUl2q"}' \
    > test.out 2>&1
eval_tap $? 187 'UpdateReward' test.out

#- 188 DeleteReward
samples/cli/sample-apps Platform deleteReward \
    --namespace $AB_NAMESPACE \
    --rewardId 'JSP7900HBDzcr8lv' \
    > test.out 2>&1
eval_tap $? 188 'DeleteReward' test.out

#- 189 CheckEventCondition
samples/cli/sample-apps Platform checkEventCondition \
    --namespace $AB_NAMESPACE \
    --rewardId 'oaW1FXJ9K7oIkb8d' \
    --body '{"payload": {"tFdViDTluIwLJ8X8": {}, "iUTREzo6wuF5E4Na": {}, "yVYSbKRT62blskns": {}}}' \
    > test.out 2>&1
eval_tap $? 189 'CheckEventCondition' test.out

#- 190 DeleteRewardConditionRecord
samples/cli/sample-apps Platform deleteRewardConditionRecord \
    --namespace $AB_NAMESPACE \
    --rewardId '801lfSdeBUgI82AR' \
    --body '{"conditionName": "Rwiv5ZXLjcoBmank", "userId": "1oRO9WrvWO3GBOIu"}' \
    > test.out 2>&1
eval_tap $? 190 'DeleteRewardConditionRecord' test.out

#- 191 QuerySections
samples/cli/sample-apps Platform querySections \
    --namespace $AB_NAMESPACE \
    --end 'pHOGwRniojSXNKio' \
    --limit '10' \
    --offset '87' \
    --start 'bAgF9otHbISMY2E3' \
    --storeId '9C8hpMY7NmhLo4so' \
    --viewId 'aXAtF0XZOXpfw5QV' \
    > test.out 2>&1
eval_tap $? 191 'QuerySections' test.out

#- 192 CreateSection
samples/cli/sample-apps Platform createSection \
    --namespace $AB_NAMESPACE \
    --storeId 'io9UPrhmc52p91cs' \
    --body '{"active": false, "displayOrder": 33, "endDate": "1994-07-28T00:00:00Z", "ext": {"oFNeB7yTTUCZS54r": {}, "Fx3Zxbt7jvQp8xmk": {}, "8POFzLM9yVI1lbcv": {}}, "fixedPeriodRotationConfig": {"backfillType": "CUSTOM", "duration": 21, "itemCount": 45, "rule": "SEQUENCE"}, "items": [{"id": "LQIlIH6voIoJvt35", "sku": "5kljWkDsEQnsJlYH"}, {"id": "wIH7p123JR6klxS5", "sku": "uRkoFMy1hCpHrQko"}, {"id": "mDdc8GhTleHlUb7P", "sku": "UFKdjJMyHAwLeeDR"}], "localizations": {"mHXLCK9HtUt1QK8g": {"description": "odK9ULRH7sXJbZ6Q", "localExt": {"g2dqh8VyneaWFugw": {}, "QIOMtRte1txfdOMK": {}, "eEYySH8i8prvVgrx": {}}, "longDescription": "PJ32GbYXNd4LJD6j", "title": "fZV1wqqMYmYaSZSb"}, "SYEP2PlM7GSXqmTO": {"description": "B0HH67IQxY693aXZ", "localExt": {"95UZsSyohFUwX2rZ": {}, "xtw8IXulBOWi9fFm": {}, "PcMPcUy8Vm9FnR4h": {}}, "longDescription": "ZueegQPfMiif5cHq", "title": "aqVdafC5vycBNK4J"}, "XelXW8d8D3fXA8y8": {"description": "y72Y6zFLfpS2QnwJ", "localExt": {"NStbBHg7HlOT9UMX": {}, "8BDqMlAkqvKuNiL0": {}, "T07DqI0t2KMkyNym": {}}, "longDescription": "EhuvQtdg6vLBYvcK", "title": "96nOHx3YBwv38vBN"}}, "name": "PeLqrFXyPxWa8tIn", "rotationType": "CUSTOM", "startDate": "1977-05-11T00:00:00Z", "viewId": "nBxSZfH6mNrtn0rD"}' \
    > test.out 2>&1
eval_tap $? 192 'CreateSection' test.out

#- 193 PurgeExpiredSection
samples/cli/sample-apps Platform purgeExpiredSection \
    --namespace $AB_NAMESPACE \
    --storeId 'vWj01xSlIpbFWODo' \
    > test.out 2>&1
eval_tap $? 193 'PurgeExpiredSection' test.out

#- 194 GetSection
samples/cli/sample-apps Platform getSection \
    --namespace $AB_NAMESPACE \
    --sectionId '2zRhCkAe1Es5QR1E' \
    --storeId '0tviVJug53dvcNLO' \
    > test.out 2>&1
eval_tap $? 194 'GetSection' test.out

#- 195 UpdateSection
samples/cli/sample-apps Platform updateSection \
    --namespace $AB_NAMESPACE \
    --sectionId 'al0Nlqn3c7aXobog' \
    --storeId 'Dbzz1eQ4pc8OpHOW' \
    --body '{"active": false, "displayOrder": 46, "endDate": "1990-12-12T00:00:00Z", "ext": {"I8GZOvjZiVnGSU2N": {}, "t7NdmZlwDp67d86s": {}, "IWZb6JA9umDYPV53": {}}, "fixedPeriodRotationConfig": {"backfillType": "CUSTOM", "duration": 89, "itemCount": 63, "rule": "SEQUENCE"}, "items": [{"id": "WXYxuCgIlQTaDbS8", "sku": "mqICPfvse6d2LeJy"}, {"id": "ZXI6Dp5ZahDpgaCp", "sku": "skPFEig3og1ezSOW"}, {"id": "ODb4rrroOQkB49DZ", "sku": "dn89wVT0WJ0HXK79"}], "localizations": {"fyVFwpJCZNIUFpY3": {"description": "8LWvmSaRLrVOStvt", "localExt": {"ZYs5wq6xg43lEa8L": {}, "DyW2dqvwH2VYWLhc": {}, "0RMH2Vj2S5Y10hnS": {}}, "longDescription": "uASk7ZjTleA89elu", "title": "yjmUgZ7OUR8OpXEL"}, "6h6JuLFveua0FVwx": {"description": "O8wA9QKDazl4WGnE", "localExt": {"30gjUpMVRt1i5d9a": {}, "aSJuiwdQJ9M0qfJr": {}, "Jxgp3xbqXbSeNTw3": {}}, "longDescription": "Su9FjHnyauBO6BF4", "title": "DFbnWiOTpOI8xeh5"}, "KY4vH6tgjGcNmrOe": {"description": "b3i7PALlCrELaP7l", "localExt": {"uwlesYTEIoKPdvHf": {}, "JyP54yY1VCNcMR1Z": {}, "Y0GfRdbt8r8bmKfZ": {}}, "longDescription": "5W6ZNrhIFpXPhZLi", "title": "ECF3a4IVwBRyGAq0"}}, "name": "kIQPzyYMrlUJdcn2", "rotationType": "FIXED_PERIOD", "startDate": "1975-02-13T00:00:00Z", "viewId": "FSI2PZLxdXoFpodD"}' \
    > test.out 2>&1
eval_tap $? 195 'UpdateSection' test.out

#- 196 DeleteSection
samples/cli/sample-apps Platform deleteSection \
    --namespace $AB_NAMESPACE \
    --sectionId 'tdEjqddDuYpyHkeB' \
    --storeId 'Dab98d6sxk9u6yz4' \
    > test.out 2>&1
eval_tap $? 196 'DeleteSection' test.out

#- 197 ListStores
samples/cli/sample-apps Platform listStores \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 197 'ListStores' test.out

#- 198 CreateStore
samples/cli/sample-apps Platform createStore \
    --namespace $AB_NAMESPACE \
    --body '{"defaultLanguage": "rp4qnAu6vfmbSpm4", "defaultRegion": "fouTuDDxasGlFOIc", "description": "FqoPFou6sGYivHwM", "supportedLanguages": ["dEZvrPfwLK45B6B9", "R14YdADU5i4i1SUh", "DuQ5AudztDauF8Yr"], "supportedRegions": ["0RoqNuwklZFxYttD", "xGKfY36Rmmet7Icj", "NTMuZg4psBaFCV0e"], "title": "TT1Dc6uNIlZwIPRz"}' \
    > test.out 2>&1
eval_tap $? 198 'CreateStore' test.out

#- 199 GetCatalogDefinition
samples/cli/sample-apps Platform getCatalogDefinition \
    --namespace $AB_NAMESPACE \
    --catalogType 'SECTION' \
    > test.out 2>&1
eval_tap $? 199 'GetCatalogDefinition' test.out

#- 200 DownloadCSVTemplates
samples/cli/sample-apps Platform downloadCSVTemplates \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 200 'DownloadCSVTemplates' test.out

#- 201 ExportStoreByCSV
samples/cli/sample-apps Platform exportStoreByCSV \
    --namespace $AB_NAMESPACE \
    --body '{"catalogType": "ITEM", "fieldsToBeIncluded": ["IRwgTeAK27FfgmIc", "yOFKovHDBtrOOpaJ", "7r2QsqKtR0hBrX4R"], "idsToBeExported": ["t7QqHYiu7TPjiwtI", "G14QjfI1lQ5FzK5i", "7y88BZGoH0Vi2qIE"], "storeId": "dKd2YbEKi6vlDldF"}' \
    > test.out 2>&1
eval_tap $? 201 'ExportStoreByCSV' test.out

#- 202 ImportStore
eval_tap 0 202 'ImportStore # SKIP deprecated' test.out

#- 203 GetPublishedStore
samples/cli/sample-apps Platform getPublishedStore \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 203 'GetPublishedStore' test.out

#- 204 DeletePublishedStore
samples/cli/sample-apps Platform deletePublishedStore \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 204 'DeletePublishedStore' test.out

#- 205 GetPublishedStoreBackup
samples/cli/sample-apps Platform getPublishedStoreBackup \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 205 'GetPublishedStoreBackup' test.out

#- 206 RollbackPublishedStore
samples/cli/sample-apps Platform rollbackPublishedStore \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 206 'RollbackPublishedStore' test.out

#- 207 GetStore
samples/cli/sample-apps Platform getStore \
    --namespace $AB_NAMESPACE \
    --storeId 'wPeKpTYBJTQQoiu3' \
    > test.out 2>&1
eval_tap $? 207 'GetStore' test.out

#- 208 UpdateStore
samples/cli/sample-apps Platform updateStore \
    --namespace $AB_NAMESPACE \
    --storeId 'Yd6MWhbG4Y2CLiLB' \
    --body '{"defaultLanguage": "vltRK2ulpZVDbIBD", "defaultRegion": "PaPOAT34wyMihEUl", "description": "FKSjHXcQAyKOm98M", "supportedLanguages": ["qJknhudxE10LEEdv", "7uKwShLkTpAA4MUM", "zLDHyenYE3SolPrP"], "supportedRegions": ["Yl2L2fCmC3ODS4uz", "M70XIluW1pSl4Zl5", "zJOhhGwWVojaQXlV"], "title": "7fwx0SFQiEIuppNH"}' \
    > test.out 2>&1
eval_tap $? 208 'UpdateStore' test.out

#- 209 DeleteStore
samples/cli/sample-apps Platform deleteStore \
    --namespace $AB_NAMESPACE \
    --storeId 'PaiGKG1EsdBoPnZf' \
    > test.out 2>&1
eval_tap $? 209 'DeleteStore' test.out

#- 210 QueryChanges
samples/cli/sample-apps Platform queryChanges \
    --namespace $AB_NAMESPACE \
    --storeId 'aUYT56l4dqCa3KUZ' \
    --action 'CREATE' \
    --itemSku 'vpqNJBzZhFNgBPGk' \
    --itemType 'CODE' \
    --limit '16' \
    --offset '10' \
    --selected 'true' \
    --sortBy '["createdAt", "updatedAt:asc", "createdAt:desc"]' \
    --status 'UNPUBLISHED' \
    --type 'VIEW' \
    --updatedAtEnd '3Sav00rIuUh0kOa3' \
    --updatedAtStart '02NkoAqLawkP48PW' \
    --withTotal 'true' \
    > test.out 2>&1
eval_tap $? 210 'QueryChanges' test.out

#- 211 PublishAll
samples/cli/sample-apps Platform publishAll \
    --namespace $AB_NAMESPACE \
    --storeId 'fBBW5Wd75uVsPM77' \
    > test.out 2>&1
eval_tap $? 211 'PublishAll' test.out

#- 212 PublishSelected
samples/cli/sample-apps Platform publishSelected \
    --namespace $AB_NAMESPACE \
    --storeId '6FIjkiuqCtDAcni2' \
    > test.out 2>&1
eval_tap $? 212 'PublishSelected' test.out

#- 213 SelectAllRecords
samples/cli/sample-apps Platform selectAllRecords \
    --namespace $AB_NAMESPACE \
    --storeId 'Y54Jf7EpMa444oxI' \
    > test.out 2>&1
eval_tap $? 213 'SelectAllRecords' test.out

#- 214 SelectAllRecordsByCriteria
samples/cli/sample-apps Platform selectAllRecordsByCriteria \
    --namespace $AB_NAMESPACE \
    --storeId '8zAdyITNgRk1ikhR' \
    --action 'DELETE' \
    --itemSku 'kAvQTyhpS6VvSThp' \
    --itemType 'MEDIA' \
    --selected 'false' \
    --type 'CATEGORY' \
    --updatedAtEnd 'VGb3P0lj1l9W8hic' \
    --updatedAtStart 'DuvjrUUxbZpUulqx' \
    > test.out 2>&1
eval_tap $? 214 'SelectAllRecordsByCriteria' test.out

#- 215 GetStatistic
samples/cli/sample-apps Platform getStatistic \
    --namespace $AB_NAMESPACE \
    --storeId 'fwzLYF5WNAutcnb4' \
    --action 'CREATE' \
    --itemSku 'zTU24iUK3zRHYil1' \
    --itemType 'SUBSCRIPTION' \
    --type 'VIEW' \
    --updatedAtEnd '1e6sPbFwTSpLT271' \
    --updatedAtStart 'hZfPmt496r1PkAs5' \
    > test.out 2>&1
eval_tap $? 215 'GetStatistic' test.out

#- 216 UnselectAllRecords
samples/cli/sample-apps Platform unselectAllRecords \
    --namespace $AB_NAMESPACE \
    --storeId 'hW2Ihm1hcErjYu7K' \
    > test.out 2>&1
eval_tap $? 216 'UnselectAllRecords' test.out

#- 217 SelectRecord
samples/cli/sample-apps Platform selectRecord \
    --changeId 'F0mu8SkhE40ASRV7' \
    --namespace $AB_NAMESPACE \
    --storeId 'rm8qj3ex86QMNkQ4' \
    > test.out 2>&1
eval_tap $? 217 'SelectRecord' test.out

#- 218 UnselectRecord
samples/cli/sample-apps Platform unselectRecord \
    --changeId 'sPaTijJ7szluoR3l' \
    --namespace $AB_NAMESPACE \
    --storeId 'GTatqLCRbT5Rz9Ku' \
    > test.out 2>&1
eval_tap $? 218 'UnselectRecord' test.out

#- 219 CloneStore
samples/cli/sample-apps Platform cloneStore \
    --namespace $AB_NAMESPACE \
    --storeId 'qxgOtvnEVJLGxT22' \
    --targetStoreId 'NBAOXztD1DCfdukg' \
    > test.out 2>&1
eval_tap $? 219 'CloneStore' test.out

#- 220 ExportStore
eval_tap 0 220 'ExportStore # SKIP deprecated' test.out

#- 221 QueryImportHistory
samples/cli/sample-apps Platform queryImportHistory \
    --namespace $AB_NAMESPACE \
    --storeId 'MFNr642joBcksAzG' \
    --end '81PjcT9ypYYnMMiM' \
    --limit '17' \
    --offset '90' \
    --sortBy 'onstLTYQTlRtdpFH' \
    --start 'rSvujCci4qIPKJwV' \
    --success 'true' \
    > test.out 2>&1
eval_tap $? 221 'QueryImportHistory' test.out

#- 222 ImportStoreByCSV
samples/cli/sample-apps Platform importStoreByCSV \
    --namespace $AB_NAMESPACE \
    --storeId 'OqoNWNfguuhfI3Dj' \
    --category 'tmp.dat' \
    --display 'tmp.dat' \
    --item 'tmp.dat' \
    --notes 'u2huzOgtPA6n2sFU' \
    --section 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 222 'ImportStoreByCSV' test.out

#- 223 QuerySubscriptions
samples/cli/sample-apps Platform querySubscriptions \
    --namespace $AB_NAMESPACE \
    --chargeStatus 'SETUP' \
    --itemId 'z0TvdC3km5osC9RP' \
    --limit '29' \
    --offset '12' \
    --sku 'yiVWH9NTPERMlNwl' \
    --status 'INIT' \
    --subscribedBy 'PLATFORM' \
    --userId '2RpOB8yGPnhNA6tY' \
    > test.out 2>&1
eval_tap $? 223 'QuerySubscriptions' test.out

#- 224 RecurringChargeSubscription
samples/cli/sample-apps Platform recurringChargeSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'p0oIn4nOrZG4Utxp' \
    > test.out 2>&1
eval_tap $? 224 'RecurringChargeSubscription' test.out

#- 225 GetTicketDynamic
samples/cli/sample-apps Platform getTicketDynamic \
    --boothName 'XB07GDeEEb5b7XRq' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 225 'GetTicketDynamic' test.out

#- 226 DecreaseTicketSale
samples/cli/sample-apps Platform decreaseTicketSale \
    --boothName 'XhFVKOLXIvmMLyr9' \
    --namespace $AB_NAMESPACE \
    --body '{"orderNo": "hHwTRxQoYy1IV43J"}' \
    > test.out 2>&1
eval_tap $? 226 'DecreaseTicketSale' test.out

#- 227 GetTicketBoothID
samples/cli/sample-apps Platform getTicketBoothID \
    --boothName 'daLWvrTkMkmf3OGk' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 227 'GetTicketBoothID' test.out

#- 228 IncreaseTicketSale
samples/cli/sample-apps Platform increaseTicketSale \
    --boothName 'UzP7sjQ21KnOzbWx' \
    --namespace $AB_NAMESPACE \
    --body '{"count": 82, "orderNo": "x9XtmydNn43EoFAB"}' \
    > test.out 2>&1
eval_tap $? 228 'IncreaseTicketSale' test.out

#- 229 Commit
samples/cli/sample-apps Platform commit \
    --namespace $AB_NAMESPACE \
    --body '{"actions": [{"operations": [{"creditPayload": {"balanceOrigin": "Playstation", "count": 56, "currencyCode": "VSn6Ws90YwsepKXU", "expireAt": "1976-06-11T00:00:00Z"}, "debitPayload": {"count": 8, "currencyCode": "XDYFYWisjJpg4L3w", "walletPlatform": "Nintendo"}, "fulFillItemPayload": {"count": 30, "entitlementCollectionId": "tqaBpvdRZFfVxyff", "entitlementOrigin": "Twitch", "itemIdentity": "i5e8uZyxpP2FMIry", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 80, "entitlementId": "ROpaLuawwFgJFQ0S"}, "type": "CREDIT_WALLET"}, {"creditPayload": {"balanceOrigin": "Twitch", "count": 21, "currencyCode": "3CTmGFeQvMmCQRVu", "expireAt": "1976-12-17T00:00:00Z"}, "debitPayload": {"count": 67, "currencyCode": "LfiSFrB6uujq89x6", "walletPlatform": "Steam"}, "fulFillItemPayload": {"count": 93, "entitlementCollectionId": "hpwxc8jpvpHHRdR0", "entitlementOrigin": "Playstation", "itemIdentity": "7RRF7fQi9kDhEcQr", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 20, "entitlementId": "Hri5Bw6fce0f8qNW"}, "type": "REVOKE_ENTITLEMENT"}, {"creditPayload": {"balanceOrigin": "Epic", "count": 75, "currencyCode": "4m0VprF35yBNTGzx", "expireAt": "1998-12-17T00:00:00Z"}, "debitPayload": {"count": 86, "currencyCode": "Nl8Wn48t8E3kaS8i", "walletPlatform": "IOS"}, "fulFillItemPayload": {"count": 0, "entitlementCollectionId": "08ZFKnvOUO8FYwpH", "entitlementOrigin": "Epic", "itemIdentity": "Y14h8u7SINtHW2K7", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 74, "entitlementId": "IhusR9g0AHwC2WIO"}, "type": "DEBIT_WALLET"}], "userId": "8ytmP8OFZjGXpnbu"}, {"operations": [{"creditPayload": {"balanceOrigin": "System", "count": 16, "currencyCode": "P4k35Bz2QICHyFUu", "expireAt": "1986-03-07T00:00:00Z"}, "debitPayload": {"count": 54, "currencyCode": "1bcdlKwHAYYwVhDV", "walletPlatform": "IOS"}, "fulFillItemPayload": {"count": 85, "entitlementCollectionId": "a4CBg04oTZazvY5N", "entitlementOrigin": "IOS", "itemIdentity": "hXwdTWD6XxtfHEyv", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 55, "entitlementId": "pjrvMW6s2UWBk390"}, "type": "REVOKE_ENTITLEMENT"}, {"creditPayload": {"balanceOrigin": "System", "count": 17, "currencyCode": "wdF7su0o1Iyl9qhx", "expireAt": "1975-08-30T00:00:00Z"}, "debitPayload": {"count": 20, "currencyCode": "IGQuOIvJjDJpVaQj", "walletPlatform": "Xbox"}, "fulFillItemPayload": {"count": 76, "entitlementCollectionId": "aqGwB6w7wU1gS414", "entitlementOrigin": "Other", "itemIdentity": "MMDaYnjoa7BQqElN", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 76, "entitlementId": "bZYTM8hVmJNtu2g7"}, "type": "CREDIT_WALLET"}, {"creditPayload": {"balanceOrigin": "Other", "count": 86, "currencyCode": "M6GBY3OXSqH49yPe", "expireAt": "1992-01-16T00:00:00Z"}, "debitPayload": {"count": 47, "currencyCode": "SmP4BQ0NIZHyCwWk", "walletPlatform": "Playstation"}, "fulFillItemPayload": {"count": 50, "entitlementCollectionId": "OmCZvyguocQl1rfM", "entitlementOrigin": "GooglePlay", "itemIdentity": "9SXdYRhtggwr4oT3", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 41, "entitlementId": "jvQzDfMKsTTKt8nA"}, "type": "FULFILL_ITEM"}], "userId": "bpDZ2qzClXgHZSIm"}, {"operations": [{"creditPayload": {"balanceOrigin": "Epic", "count": 98, "currencyCode": "4Ed5OZ5zgHTvj4hx", "expireAt": "1994-07-02T00:00:00Z"}, "debitPayload": {"count": 49, "currencyCode": "HbTKTukLhxTMmvgN", "walletPlatform": "Playstation"}, "fulFillItemPayload": {"count": 9, "entitlementCollectionId": "oVO7CQNi8qUfeIj4", "entitlementOrigin": "System", "itemIdentity": "coukn1S29ZzaCrAY", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 32, "entitlementId": "vePxAxuQp8ml1F9i"}, "type": "DEBIT_WALLET"}, {"creditPayload": {"balanceOrigin": "Other", "count": 59, "currencyCode": "3BF0t7FTi4Rk5u1S", "expireAt": "1982-11-04T00:00:00Z"}, "debitPayload": {"count": 14, "currencyCode": "I77EugxqDIn1FlYt", "walletPlatform": "Playstation"}, "fulFillItemPayload": {"count": 33, "entitlementCollectionId": "XjYb66M7MMkwr5b1", "entitlementOrigin": "Epic", "itemIdentity": "dSxfn2O63EyHyqUX", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 57, "entitlementId": "1aH7Xr06UGCYSKJ1"}, "type": "CREDIT_WALLET"}, {"creditPayload": {"balanceOrigin": "Other", "count": 97, "currencyCode": "1FM5CwXftgRf40QL", "expireAt": "1979-11-11T00:00:00Z"}, "debitPayload": {"count": 92, "currencyCode": "i6qzv5js1CwKr3lV", "walletPlatform": "Nintendo"}, "fulFillItemPayload": {"count": 65, "entitlementCollectionId": "RdUauSxLtbDFidn9", "entitlementOrigin": "Xbox", "itemIdentity": "7jeF2BaXwyroyhC8", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 69, "entitlementId": "eiZRYxTopGNUOb3b"}, "type": "REVOKE_ENTITLEMENT"}], "userId": "qsujH7WsqwHYeIYt"}], "metadata": {"kboMK0v1a2enZHaN": {}, "5FbEZR1eyH35kDC9": {}, "eWoYWMFReaeSxqA5": {}}, "needPreCheck": false, "transactionId": "mqtKQl1BjW7Q94MS", "type": "NlU3SUGvQaoXdM3F"}' \
    > test.out 2>&1
eval_tap $? 229 'Commit' test.out

#- 230 GetTradeHistoryByCriteria
samples/cli/sample-apps Platform getTradeHistoryByCriteria \
    --namespace $AB_NAMESPACE \
    --limit '42' \
    --offset '55' \
    --status 'FAILED' \
    --type 'YCfF6W2yZpZQdNJ8' \
    --userId '2dPEdjIoQsLxXzkn' \
    > test.out 2>&1
eval_tap $? 230 'GetTradeHistoryByCriteria' test.out

#- 231 GetTradeHistoryByTransactionId
samples/cli/sample-apps Platform getTradeHistoryByTransactionId \
    --namespace $AB_NAMESPACE \
    --transactionId 'egdg4qxn0Ya4NOCJ' \
    > test.out 2>&1
eval_tap $? 231 'GetTradeHistoryByTransactionId' test.out

#- 232 UnlockSteamUserAchievement
samples/cli/sample-apps Platform unlockSteamUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'KqXPyyWYegDFACgT' \
    --body '{"achievements": [{"id": "vZGvtHjFdJk0E8RM", "value": 53}, {"id": "WuXw3SqctRFu8D1U", "value": 90}, {"id": "CEJMTquGh6mXiPiF", "value": 8}], "steamUserId": "YyrGMCQ7EXX1Xmuf"}' \
    > test.out 2>&1
eval_tap $? 232 'UnlockSteamUserAchievement' test.out

#- 233 GetXblUserAchievements
samples/cli/sample-apps Platform getXblUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId 'yyAgf5n8jAD9ycil' \
    --xboxUserId 'dTyCroyUCbxtWz3a' \
    > test.out 2>&1
eval_tap $? 233 'GetXblUserAchievements' test.out

#- 234 UpdateXblUserAchievement
samples/cli/sample-apps Platform updateXblUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'KaZTNmO9vj0EOKBH' \
    --body '{"achievements": [{"id": "03qAhpC8e7Sg9PJS", "percentComplete": 85}, {"id": "2SxcDwAaeEudAyvZ", "percentComplete": 37}, {"id": "XF0EpswunRKPZKGs", "percentComplete": 43}], "serviceConfigId": "KcZEFQQXOxOquCEv", "titleId": "xgAv6gKIBofDsgWQ", "xboxUserId": "qBAi2uQTL1pyK2It"}' \
    > test.out 2>&1
eval_tap $? 234 'UpdateXblUserAchievement' test.out

#- 235 AnonymizeCampaign
samples/cli/sample-apps Platform anonymizeCampaign \
    --namespace $AB_NAMESPACE \
    --userId 'iQGwhBtcrefhQie5' \
    > test.out 2>&1
eval_tap $? 235 'AnonymizeCampaign' test.out

#- 236 AnonymizeEntitlement
samples/cli/sample-apps Platform anonymizeEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'nVVGEvsFuelleXfj' \
    > test.out 2>&1
eval_tap $? 236 'AnonymizeEntitlement' test.out

#- 237 AnonymizeFulfillment
samples/cli/sample-apps Platform anonymizeFulfillment \
    --namespace $AB_NAMESPACE \
    --userId 'LdnF51QFGxXYUtdB' \
    > test.out 2>&1
eval_tap $? 237 'AnonymizeFulfillment' test.out

#- 238 AnonymizeIntegration
samples/cli/sample-apps Platform anonymizeIntegration \
    --namespace $AB_NAMESPACE \
    --userId 'mJcsGogN6Pc528GG' \
    > test.out 2>&1
eval_tap $? 238 'AnonymizeIntegration' test.out

#- 239 AnonymizeOrder
samples/cli/sample-apps Platform anonymizeOrder \
    --namespace $AB_NAMESPACE \
    --userId 'qJjjC90Bh68C06zF' \
    > test.out 2>&1
eval_tap $? 239 'AnonymizeOrder' test.out

#- 240 AnonymizePayment
samples/cli/sample-apps Platform anonymizePayment \
    --namespace $AB_NAMESPACE \
    --userId 'QhBID2J62GnvAUHZ' \
    > test.out 2>&1
eval_tap $? 240 'AnonymizePayment' test.out

#- 241 AnonymizeRevocation
samples/cli/sample-apps Platform anonymizeRevocation \
    --namespace $AB_NAMESPACE \
    --userId 'ExSLeWSk3TzJLbQS' \
    > test.out 2>&1
eval_tap $? 241 'AnonymizeRevocation' test.out

#- 242 AnonymizeSubscription
samples/cli/sample-apps Platform anonymizeSubscription \
    --namespace $AB_NAMESPACE \
    --userId 'rS48ivhFXEpcC9YE' \
    > test.out 2>&1
eval_tap $? 242 'AnonymizeSubscription' test.out

#- 243 AnonymizeWallet
samples/cli/sample-apps Platform anonymizeWallet \
    --namespace $AB_NAMESPACE \
    --userId 'dveIP0JThzMDFdaU' \
    > test.out 2>&1
eval_tap $? 243 'AnonymizeWallet' test.out

#- 244 GetUserDLCByPlatform
samples/cli/sample-apps Platform getUserDLCByPlatform \
    --namespace $AB_NAMESPACE \
    --userId 'XqYuPyRu5bRuXaiQ' \
    --type 'XBOX' \
    > test.out 2>&1
eval_tap $? 244 'GetUserDLCByPlatform' test.out

#- 245 GetUserDLC
samples/cli/sample-apps Platform getUserDLC \
    --namespace $AB_NAMESPACE \
    --userId 's6pdIwOoTGuuId2g' \
    --includeAllNamespaces 'true' \
    --status 'REVOKE_FAILED' \
    --type 'XBOX' \
    > test.out 2>&1
eval_tap $? 245 'GetUserDLC' test.out

#- 246 QueryUserEntitlements
samples/cli/sample-apps Platform queryUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'b929nbB825WLXM64' \
    --activeOnly 'false' \
    --appType 'DLC' \
    --collectionId 'UxMYZuEkiYGstCFV' \
    --entitlementClazz 'ENTITLEMENT' \
    --entitlementName 'uXSkuPV2KP7tfKr9' \
    --features '["3IjsO0wKop1hOeEN", "xqJG1WF6cNRiO0dG", "96XgUORq3eZSuV8D"]' \
    --fuzzyMatchName 'true' \
    --ignoreActiveDate 'false' \
    --itemId '["dwGQhXyAWXH6jwjq", "MaH0OrG8Tql6lIaI", "IPCxJ8VtyeFa2fPf"]' \
    --limit '50' \
    --offset '38' \
    --origin 'Nintendo' \
    > test.out 2>&1
eval_tap $? 246 'QueryUserEntitlements' test.out

#- 247 GrantUserEntitlement
samples/cli/sample-apps Platform grantUserEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'SOCwT7Onjgzc3JTN' \
    --body '[{"collectionId": "XIgmgIC2KFGw9DoY", "endDate": "1974-06-26T00:00:00Z", "grantedCode": "Iw2gEDoPPA0TalXA", "itemId": "oOwkZEqHoLC5TcLL", "itemNamespace": "hXJLVJOspNIAncm7", "language": "Eh_paTv", "metadata": {"BBdnCMrPM9np3f97": {}, "uvBgTVuyf41VR0UV": {}, "ybkHWkw8EaRtBn3j": {}}, "origin": "System", "quantity": 72, "region": "ntTodhoau2WUDmOK", "source": "ACHIEVEMENT", "startDate": "1974-01-21T00:00:00Z", "storeId": "umbYBHkMVdz4jN8F"}, {"collectionId": "3KYKwojrcnSpB05P", "endDate": "1979-04-30T00:00:00Z", "grantedCode": "Qrk20YYlTdp3RR0w", "itemId": "Qv7qUaFIo7MdryDv", "itemNamespace": "8jAhX8hmLXvUMab3", "language": "jGb", "metadata": {"JNZIqSGohgdoarg5": {}, "TX5cGqSyBHwhyCQ7": {}, "xy2x5ElX6zhSMRkb": {}}, "origin": "Steam", "quantity": 85, "region": "VWkiFVj7De1XFEsI", "source": "PURCHASE", "startDate": "1998-12-31T00:00:00Z", "storeId": "GcGaFciZ7yKkXjwg"}, {"collectionId": "Xf9tBAzZ0uw2iRzD", "endDate": "1994-03-08T00:00:00Z", "grantedCode": "vnKABweeLhrKQEHG", "itemId": "Ui9W1QJiBYxwmWSk", "itemNamespace": "aiFvoCjQLDcUWUiD", "language": "tAe-Cz", "metadata": {"XPk3MjAUxnqCWURl": {}, "ZsrXEUYiWj3qqbG5": {}, "KA0afWctZx8NujKe": {}}, "origin": "System", "quantity": 41, "region": "qQeM4nSjz3GFN3vg", "source": "REDEEM_CODE", "startDate": "1980-04-01T00:00:00Z", "storeId": "zy6zjFrZEQaolkoJ"}]' \
    > test.out 2>&1
eval_tap $? 247 'GrantUserEntitlement' test.out

#- 248 GetUserAppEntitlementByAppId
samples/cli/sample-apps Platform getUserAppEntitlementByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'YXo3jSl688uGVMNa' \
    --activeOnly 'false' \
    --appId 'aAujJyphWWMnGPDs' \
    > test.out 2>&1
eval_tap $? 248 'GetUserAppEntitlementByAppId' test.out

#- 249 QueryUserEntitlementsByAppType
samples/cli/sample-apps Platform queryUserEntitlementsByAppType \
    --namespace $AB_NAMESPACE \
    --userId 'Cu0lW2VWbUJSViXj' \
    --activeOnly 'false' \
    --limit '23' \
    --offset '60' \
    --appType 'SOFTWARE' \
    > test.out 2>&1
eval_tap $? 249 'QueryUserEntitlementsByAppType' test.out

#- 250 GetUserEntitlementsByIds
samples/cli/sample-apps Platform getUserEntitlementsByIds \
    --namespace $AB_NAMESPACE \
    --userId 'UxBaCfPjQBGNi43Z' \
    --ids '["jnH0YDziEFqTw8c9", "QYbgwwLXzh3CTHWd", "SFpWATl8P6nx9yoH"]' \
    > test.out 2>&1
eval_tap $? 250 'GetUserEntitlementsByIds' test.out

#- 251 GetUserEntitlementByItemId
samples/cli/sample-apps Platform getUserEntitlementByItemId \
    --namespace $AB_NAMESPACE \
    --userId '3WSZSPczSp3DogHm' \
    --activeOnly 'true' \
    --entitlementClazz 'ENTITLEMENT' \
    --platform '3KKOJ4ryVKer5ofQ' \
    --itemId 'VyL18Unh9m0DDiHN' \
    > test.out 2>&1
eval_tap $? 251 'GetUserEntitlementByItemId' test.out

#- 252 GetUserActiveEntitlementsByItemIds
samples/cli/sample-apps Platform getUserActiveEntitlementsByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'z0hfPVxsDP38Injc' \
    --ids '["Oi0StFH7umEFhZyo", "0YxeGWfkCGDPe7hW", "QAAivmNUoOnJhJyy"]' \
    --platform '3uuBQZZJ4hnx9h2T' \
    > test.out 2>&1
eval_tap $? 252 'GetUserActiveEntitlementsByItemIds' test.out

#- 253 GetUserEntitlementBySku
samples/cli/sample-apps Platform getUserEntitlementBySku \
    --namespace $AB_NAMESPACE \
    --userId '3QgtIuTG8bwrL08z' \
    --activeOnly 'true' \
    --entitlementClazz 'SUBSCRIPTION' \
    --platform 'NMWAlEdfhJRn9Hdv' \
    --sku 'CHzg5yGfUWJQOVDV' \
    > test.out 2>&1
eval_tap $? 253 'GetUserEntitlementBySku' test.out

#- 254 ExistsAnyUserActiveEntitlement
samples/cli/sample-apps Platform existsAnyUserActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'bYM9FlVT4r2mOhgJ' \
    --appIds '["VxtFiqLSzLW0CWrf", "IH9wnKAy2YSa3LUo", "qYQUiQDXqYVqrcHX"]' \
    --itemIds '["cpIZqQAVsqKRCISu", "BdHUzk9qRXe3cGgm", "9FTMvHb8pX4LeMna"]' \
    --platform 'gmhsFLg4JvSGi5VD' \
    --skus '["xlwscCJ6qQDLmBH7", "GyLokEregblPhFGO", "0lUdFKGdFpsMgEPn"]' \
    > test.out 2>&1
eval_tap $? 254 'ExistsAnyUserActiveEntitlement' test.out

#- 255 ExistsAnyUserActiveEntitlementByItemIds
samples/cli/sample-apps Platform existsAnyUserActiveEntitlementByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'VXOI8DxdJzBAIuyz' \
    --platform 'sEBwEoudb4g9EVKh' \
    --itemIds '["m2z2EwnUqCCsUE6i", "NSuhfV9BIvCWDl1i", "JBJjgwkxEGiOGzhI"]' \
    > test.out 2>&1
eval_tap $? 255 'ExistsAnyUserActiveEntitlementByItemIds' test.out

#- 256 GetUserAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform getUserAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --userId '4GE7yCdZMnKamDrh' \
    --appId 'lE8zGjZJQmx4W025' \
    > test.out 2>&1
eval_tap $? 256 'GetUserAppEntitlementOwnershipByAppId' test.out

#- 257 GetUserEntitlementOwnershipByItemId
samples/cli/sample-apps Platform getUserEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'JoGj70I1Rd27B8cM' \
    --entitlementClazz 'ENTITLEMENT' \
    --platform '3QmFSK5SyFjvqOOC' \
    --itemId 'IjgQJ3L48YWg0DZn' \
    > test.out 2>&1
eval_tap $? 257 'GetUserEntitlementOwnershipByItemId' test.out

#- 258 GetUserEntitlementOwnershipByItemIds
samples/cli/sample-apps Platform getUserEntitlementOwnershipByItemIds \
    --namespace $AB_NAMESPACE \
    --userId '05lKxaKBUOTxG7U9' \
    --ids '["B8HuAYmDPq69UPFF", "0MZxziwgWfM7gQzx", "7zgsd2fjw61PcNYM"]' \
    --platform 'k3KqOe6IkpvJNCSf' \
    > test.out 2>&1
eval_tap $? 258 'GetUserEntitlementOwnershipByItemIds' test.out

#- 259 GetUserEntitlementOwnershipBySku
samples/cli/sample-apps Platform getUserEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --userId 'uYazAJOR4HmuahGm' \
    --entitlementClazz 'ENTITLEMENT' \
    --platform 'jIjF9brLeGwOxZ88' \
    --sku 'qqKsaxVr9nGyTXTs' \
    > test.out 2>&1
eval_tap $? 259 'GetUserEntitlementOwnershipBySku' test.out

#- 260 RevokeAllEntitlements
samples/cli/sample-apps Platform revokeAllEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'NZ3yEDUxYb2xxJJy' \
    > test.out 2>&1
eval_tap $? 260 'RevokeAllEntitlements' test.out

#- 261 RevokeUserEntitlements
samples/cli/sample-apps Platform revokeUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'VqJO3vMR95lUIBow' \
    --entitlementIds 'eW5iAdZ9leqHzVKa' \
    > test.out 2>&1
eval_tap $? 261 'RevokeUserEntitlements' test.out

#- 262 GetUserEntitlement
samples/cli/sample-apps Platform getUserEntitlement \
    --entitlementId 'pwf7Qp8KJeaYeOV8' \
    --namespace $AB_NAMESPACE \
    --userId 'OB8zphKEHVhyAxa8' \
    > test.out 2>&1
eval_tap $? 262 'GetUserEntitlement' test.out

#- 263 UpdateUserEntitlement
samples/cli/sample-apps Platform updateUserEntitlement \
    --entitlementId 'LzYFX71pPGmqC5JO' \
    --namespace $AB_NAMESPACE \
    --userId 'tg6zQzhQjUJwWtlu' \
    --body '{"collectionId": "LmnAcAKZ5wEN0sdh", "endDate": "1984-03-03T00:00:00Z", "nullFieldList": ["rIAlRJckbtP3YaJU", "GaPRFsbdnNUZ0Jpy", "gvLblLO5Q8PKxTNJ"], "origin": "Nintendo", "reason": "NyewqcDB6su7zwD0", "startDate": "1989-02-13T00:00:00Z", "status": "ACTIVE", "useCount": 12}' \
    > test.out 2>&1
eval_tap $? 263 'UpdateUserEntitlement' test.out

#- 264 ConsumeUserEntitlement
samples/cli/sample-apps Platform consumeUserEntitlement \
    --entitlementId '96P6NeWcp1ATIkCS' \
    --namespace $AB_NAMESPACE \
    --userId 'c4ZHzj0rI7YSVlqh' \
    --body '{"metadata": {"pUGt4xqSl1uzGckY": {}, "KvpytMzWF9GGEuTa": {}, "gu3BJHEhHRAJIcBk": {}}, "options": ["Iv5O8SF4OsCe7SKl", "9HdqYZys2vw6dfU3", "ERicyEmVPLvOPzgN"], "platform": "RnYYFBKNqg5rX39a", "requestId": "QP09LUL79YWUYka8", "useCount": 81}' \
    > test.out 2>&1
eval_tap $? 264 'ConsumeUserEntitlement' test.out

#- 265 DisableUserEntitlement
samples/cli/sample-apps Platform disableUserEntitlement \
    --entitlementId 'fgGyFyC0Hay2uKFt' \
    --namespace $AB_NAMESPACE \
    --userId 'JizE1wOKoKyH6yv9' \
    > test.out 2>&1
eval_tap $? 265 'DisableUserEntitlement' test.out

#- 266 EnableUserEntitlement
samples/cli/sample-apps Platform enableUserEntitlement \
    --entitlementId 'ODoQAVHxoeCyeLGY' \
    --namespace $AB_NAMESPACE \
    --userId 'CO9xreYeWkzSGnSP' \
    > test.out 2>&1
eval_tap $? 266 'EnableUserEntitlement' test.out

#- 267 GetUserEntitlementHistories
samples/cli/sample-apps Platform getUserEntitlementHistories \
    --entitlementId 'pygrXNVu0fodl9id' \
    --namespace $AB_NAMESPACE \
    --userId '7w9mlwxAL1XXB9sR' \
    > test.out 2>&1
eval_tap $? 267 'GetUserEntitlementHistories' test.out

#- 268 RevokeUserEntitlement
samples/cli/sample-apps Platform revokeUserEntitlement \
    --entitlementId 'w48KtuMp0L4y6nxT' \
    --namespace $AB_NAMESPACE \
    --userId 'qsmM2X8uOjvcshMy' \
    --body '{"metadata": {"sZkes1t2S9pP11qi": {}, "GIX74SvagpDt4l9s": {}, "ASs3MeziLJSYQjZs": {}}}' \
    > test.out 2>&1
eval_tap $? 268 'RevokeUserEntitlement' test.out

#- 269 RevokeUserEntitlementByUseCount
samples/cli/sample-apps Platform revokeUserEntitlementByUseCount \
    --entitlementId 'jYfYUAxxf4nFaUrv' \
    --namespace $AB_NAMESPACE \
    --userId 'bqaQm4mF4qizjWYM' \
    --body '{"reason": "HVUHFW3w5bdtQJXp", "useCount": 21}' \
    > test.out 2>&1
eval_tap $? 269 'RevokeUserEntitlementByUseCount' test.out

#- 270 PreCheckRevokeUserEntitlementByUseCount
samples/cli/sample-apps Platform preCheckRevokeUserEntitlementByUseCount \
    --entitlementId 'HYZRaIzG8fMyzVGH' \
    --namespace $AB_NAMESPACE \
    --userId 'f6rxtG62GNfrs5ei' \
    --quantity '36' \
    > test.out 2>&1
eval_tap $? 270 'PreCheckRevokeUserEntitlementByUseCount' test.out

#- 271 RevokeUseCount
eval_tap 0 271 'RevokeUseCount # SKIP deprecated' test.out

#- 272 SellUserEntitlement
samples/cli/sample-apps Platform sellUserEntitlement \
    --entitlementId 'GfS5fV4xtaIPt4T5' \
    --namespace $AB_NAMESPACE \
    --userId '9IQxYaK324EXEb1L' \
    --body '{"platform": "YQGbn9p6TOz2zoH4", "requestId": "5pVV03YeT0L0fGZV", "useCount": 70}' \
    > test.out 2>&1
eval_tap $? 272 'SellUserEntitlement' test.out

#- 273 FulfillItem
samples/cli/sample-apps Platform fulfillItem \
    --namespace $AB_NAMESPACE \
    --userId 'pLlktfszXJitgEC7' \
    --body '{"duration": 41, "endDate": "1982-07-24T00:00:00Z", "entitlementCollectionId": "ukdCXeSkXYvFGy1X", "entitlementOrigin": "Xbox", "itemId": "AHW7S3uvot6DUQiR", "itemSku": "Nk87qzCYpthLAnas", "language": "V0Prdqjw4yT7Mhha", "metadata": {"t9qfkEND1KrtDRbH": {}, "w3uk5vYL9kyyVztd": {}, "t3KOo6hUXc0VTQwJ": {}}, "order": {"currency": {"currencyCode": "WCAwIMpSJclW6fuO", "currencySymbol": "jSRtNzokLzJByr0m", "currencyType": "REAL", "decimals": 54, "namespace": "DVsMgCk83qxiQMnY"}, "ext": {"QoyT0K2SS8gxNwjP": {}, "v7Bz6gK5TezSrcwj": {}, "OoALFslESArRy26I": {}}, "free": true}, "orderNo": "Hn35Z9B69lZeIDiD", "origin": "GooglePlay", "overrideBundleItemQty": {"sJCTyMUthUVdTGv1": 35, "WZrYgjYsxZWXySD5": 20, "VMAv63WczgsOG2M3": 72}, "quantity": 52, "region": "vDgMT1P1eMFc4wRS", "source": "OTHER", "startDate": "1999-07-18T00:00:00Z", "storeId": "QAnQD5SKjOKk92Lu"}' \
    > test.out 2>&1
eval_tap $? 273 'FulfillItem' test.out

#- 274 RedeemCode
samples/cli/sample-apps Platform redeemCode \
    --namespace $AB_NAMESPACE \
    --userId 'cnExggREm7wsypVy' \
    --body '{"code": "ukRNVwH3wQR6C2ZE", "language": "sdW", "region": "YbgLnpXwXvRGb4Ev"}' \
    > test.out 2>&1
eval_tap $? 274 'RedeemCode' test.out

#- 275 PreCheckFulfillItem
samples/cli/sample-apps Platform preCheckFulfillItem \
    --namespace $AB_NAMESPACE \
    --userId '2rLUumojy8sRQKu5' \
    --body '{"itemId": "qejEZ4NChiNIuGlP", "itemSku": "maA9JE6k5JBzIs62", "quantity": 27}' \
    > test.out 2>&1
eval_tap $? 275 'PreCheckFulfillItem' test.out

#- 276 FulfillRewards
samples/cli/sample-apps Platform fulfillRewards \
    --namespace $AB_NAMESPACE \
    --userId 'HPAPJH9l88qSWcyp' \
    --body '{"entitlementCollectionId": "PQoKpWuR1puw4Icd", "entitlementOrigin": "IOS", "metadata": {"GMpezWUumAirCykk": {}, "1gQumI6V0X6VZMGS": {}, "dkRYm6KCp7bZbID5": {}}, "origin": "Playstation", "rewards": [{"currency": {"currencyCode": "Ko6Z6YrTrd0ONIPK", "namespace": "z7nI28KJWuJkqUzw"}, "item": {"itemId": "j6l8AhdaBCkk9jVO", "itemName": "PDJebqMZwvOhSfll", "itemSku": "GwysfksS6vXWTOfb", "itemType": "E6j1JeF1nQnNgSTg"}, "quantity": 10, "type": "ITEM"}, {"currency": {"currencyCode": "R8rIL8StK9LEQ72r", "namespace": "CyhztvX3Q6SzBg92"}, "item": {"itemId": "0r4yBZo11PbFPUqx", "itemName": "QLTDp9CRdf4iIjqW", "itemSku": "cxxErPShnElu7FdH", "itemType": "gj0LQrNJ4QHYa3oA"}, "quantity": 10, "type": "ITEM"}, {"currency": {"currencyCode": "l9qGSNn4rnq8v7rP", "namespace": "9FNUDqosRxgLHZ6Z"}, "item": {"itemId": "miN39kPQwhbPyEpy", "itemName": "EK5cvAuQlxGsdQh2", "itemSku": "c2YLefrOQWoatZhR", "itemType": "cG8ZDyDS3SFuGINQ"}, "quantity": 38, "type": "ITEM"}], "source": "EXPIRATION", "transactionId": "SgN8U3oBoq2lfSOE"}' \
    > test.out 2>&1
eval_tap $? 276 'FulfillRewards' test.out

#- 277 QueryUserIAPOrders
samples/cli/sample-apps Platform queryUserIAPOrders \
    --namespace $AB_NAMESPACE \
    --userId 'LOgg9Oi1u4pGiW6K' \
    --endTime 'aSu3GNoz2XOFqEBi' \
    --limit '0' \
    --offset '0' \
    --productId 'f2KvTJvHThXvEuy6' \
    --startTime 'Gxhy4PyGNpb2ixbI' \
    --status 'PARTIAL_REVOKED' \
    --type 'STEAM' \
    > test.out 2>&1
eval_tap $? 277 'QueryUserIAPOrders' test.out

#- 278 QueryAllUserIAPOrders
samples/cli/sample-apps Platform queryAllUserIAPOrders \
    --namespace $AB_NAMESPACE \
    --userId 'haF2FZnykSwE6EBh' \
    > test.out 2>&1
eval_tap $? 278 'QueryAllUserIAPOrders' test.out

#- 279 QueryUserIAPConsumeHistory
samples/cli/sample-apps Platform queryUserIAPConsumeHistory \
    --namespace $AB_NAMESPACE \
    --userId 'yeqxMBNycMpViYHv' \
    --endTime 'fRXgJEwQ9aDXadzl' \
    --limit '60' \
    --offset '14' \
    --startTime 'skEflg7VsZmIlSJr' \
    --status 'PENDING' \
    --type 'PLAYSTATION' \
    > test.out 2>&1
eval_tap $? 279 'QueryUserIAPConsumeHistory' test.out

#- 280 MockFulfillIAPItem
samples/cli/sample-apps Platform mockFulfillIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'jVKKj6EYnJApUCdr' \
    --body '{"itemIdentityType": "ITEM_ID", "language": "UqI_jmiO", "productId": "S0dGxDR2WISBj3hq", "region": "wck30ivz1xXljbMw", "transactionId": "zjtvpTb1CR7rdefg", "type": "GOOGLE"}' \
    > test.out 2>&1
eval_tap $? 280 'MockFulfillIAPItem' test.out

#- 281 QueryUserThirdPartySubscription
samples/cli/sample-apps Platform queryUserThirdPartySubscription \
    --namespace $AB_NAMESPACE \
    --userId 'M1pWop2vk3R5cS6n' \
    --activeOnly 'false' \
    --groupId 'UffVyWKZLsbMGfc6' \
    --limit '30' \
    --offset '10' \
    --platform 'OCULUS' \
    --productId 'L7t0tM6ywBQfWqdT' \
    > test.out 2>&1
eval_tap $? 281 'QueryUserThirdPartySubscription' test.out

#- 282 GetThirdPartyPlatformSubscriptionOwnershipByGroupId
samples/cli/sample-apps Platform getThirdPartyPlatformSubscriptionOwnershipByGroupId \
    --namespace $AB_NAMESPACE \
    --platform 'STADIA' \
    --userId 'jRgzT4hgP7lPN8vk' \
    --groupId 'aq9PE5WS5TnsPIRv' \
    > test.out 2>&1
eval_tap $? 282 'GetThirdPartyPlatformSubscriptionOwnershipByGroupId' test.out

#- 283 GetThirdPartyPlatformSubscriptionOwnershipByProductId
samples/cli/sample-apps Platform getThirdPartyPlatformSubscriptionOwnershipByProductId \
    --namespace $AB_NAMESPACE \
    --platform 'STADIA' \
    --userId 'rVP0kW78nUabdXTM' \
    --productId 'f1RJh66s1DBS0zRh' \
    > test.out 2>&1
eval_tap $? 283 'GetThirdPartyPlatformSubscriptionOwnershipByProductId' test.out

#- 284 QueryUserThirdPartySubscriptionTransactions
samples/cli/sample-apps Platform queryUserThirdPartySubscriptionTransactions \
    --namespace $AB_NAMESPACE \
    --userId 'F4065y2mhtwHcspW' \
    --activeOnly 'true' \
    --groupId 'p1EHgjWenfvljfVW' \
    --limit '51' \
    --offset '92' \
    --platform 'GOOGLE' \
    --productId '41xDqZrT6hu7JCaL' \
    > test.out 2>&1
eval_tap $? 284 'QueryUserThirdPartySubscriptionTransactions' test.out

#- 285 GetThirdPartySubscriptionDetails
samples/cli/sample-apps Platform getThirdPartySubscriptionDetails \
    --id 'LTNhPHvN179vJ3hA' \
    --namespace $AB_NAMESPACE \
    --userId 'q3DfsyaqogiGStYp' \
    > test.out 2>&1
eval_tap $? 285 'GetThirdPartySubscriptionDetails' test.out

#- 286 GetSubscriptionHistory
samples/cli/sample-apps Platform getSubscriptionHistory \
    --id 'YNHfaz50OZN7MhJm' \
    --namespace $AB_NAMESPACE \
    --userId 'XVlSguQvcK1DJSux' \
    --limit '71' \
    --offset '18' \
    > test.out 2>&1
eval_tap $? 286 'GetSubscriptionHistory' test.out

#- 287 SyncSubscriptionTransaction
samples/cli/sample-apps Platform syncSubscriptionTransaction \
    --id 'zQZvdasJPtJ5FFiX' \
    --namespace $AB_NAMESPACE \
    --userId 'pnBHi5brNK1CUrT5' \
    > test.out 2>&1
eval_tap $? 287 'SyncSubscriptionTransaction' test.out

#- 288 GetThirdPartyUserSubscriptionDetails
samples/cli/sample-apps Platform getThirdPartyUserSubscriptionDetails \
    --id 'cfJ1qpIYNC4SXhah' \
    --namespace $AB_NAMESPACE \
    --userId 'nvpVhjSkyuqvZzkM' \
    > test.out 2>&1
eval_tap $? 288 'GetThirdPartyUserSubscriptionDetails' test.out

#- 289 SyncSubscription
samples/cli/sample-apps Platform syncSubscription \
    --id 'YkEaikzyJ64XLUAN' \
    --namespace $AB_NAMESPACE \
    --userId 'Y9PH04XYmdFm42Rq' \
    > test.out 2>&1
eval_tap $? 289 'SyncSubscription' test.out

#- 290 QueryUserOrders
samples/cli/sample-apps Platform queryUserOrders \
    --namespace $AB_NAMESPACE \
    --userId 'iHYVE51tfapsIDJw' \
    --discounted 'false' \
    --itemId 'jiJlcwXMOcIhwmHx' \
    --limit '76' \
    --offset '8' \
    --status 'CLOSED' \
    > test.out 2>&1
eval_tap $? 290 'QueryUserOrders' test.out

#- 291 AdminCreateUserOrder
samples/cli/sample-apps Platform adminCreateUserOrder \
    --namespace $AB_NAMESPACE \
    --userId 'VzpFpGlifMy7n6Tg' \
    --body '{"currencyCode": "DcRvfChtkOJTNPqU", "currencyNamespace": "EmzYfXc8gCUILevE", "discountCodes": ["3dv9NWr1xtdrHli8", "2xAAjQ5M879Gpv5E", "K5QIgO4G9F7fRgPl"], "discountedPrice": 3, "entitlementPlatform": "Oculus", "ext": {"l4tROFB9IlAjVwPn": {}, "040Ui3BUeBVKGetl": {}, "EvePrJXUgW9qqjQQ": {}}, "itemId": "4l6jUZd1I0yfnTFt", "language": "IRijyzxYmHXxobKw", "options": {"skipPriceValidation": true}, "platform": "Playstation", "price": 28, "quantity": 85, "region": "1y97jWdKd6C2BI9G", "returnUrl": "2YAOaRQBFLXzFuQB", "sandbox": true, "sectionId": "guM27hHcAX9r92UC"}' \
    > test.out 2>&1
eval_tap $? 291 'AdminCreateUserOrder' test.out

#- 292 CountOfPurchasedItem
samples/cli/sample-apps Platform countOfPurchasedItem \
    --namespace $AB_NAMESPACE \
    --userId 'r73RSdOhdd50tDzQ' \
    --itemId '0dqJ4JW4Td35asxB' \
    > test.out 2>&1
eval_tap $? 292 'CountOfPurchasedItem' test.out

#- 293 GetUserOrder
samples/cli/sample-apps Platform getUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'Aud5mbH3GeovHyWA' \
    --userId 'JNu67bVq8h8sHFbY' \
    > test.out 2>&1
eval_tap $? 293 'GetUserOrder' test.out

#- 294 UpdateUserOrderStatus
samples/cli/sample-apps Platform updateUserOrderStatus \
    --namespace $AB_NAMESPACE \
    --orderNo 'iyCkAeIaDE81X7dv' \
    --userId 'undFwyXyRsOJyxvI' \
    --body '{"status": "REFUND_FAILED", "statusReason": "v7kHviyiq2SFMTeW"}' \
    > test.out 2>&1
eval_tap $? 294 'UpdateUserOrderStatus' test.out

#- 295 FulfillUserOrder
samples/cli/sample-apps Platform fulfillUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo '6xgN9mxgQ64nXjAf' \
    --userId 'grrgQlqeEoWPaFUV' \
    > test.out 2>&1
eval_tap $? 295 'FulfillUserOrder' test.out

#- 296 GetUserOrderGrant
eval_tap 0 296 'GetUserOrderGrant # SKIP deprecated' test.out

#- 297 GetUserOrderHistories
samples/cli/sample-apps Platform getUserOrderHistories \
    --namespace $AB_NAMESPACE \
    --orderNo 'PV3FGVTrvqECiroe' \
    --userId 'MUmJWWPtD8OD0sOs' \
    > test.out 2>&1
eval_tap $? 297 'GetUserOrderHistories' test.out

#- 298 ProcessUserOrderNotification
samples/cli/sample-apps Platform processUserOrderNotification \
    --namespace $AB_NAMESPACE \
    --orderNo 'kiwGjgInNcujtDEE' \
    --userId 'sT25IzksiHHUc71Y' \
    --body '{"additionalData": {"cardSummary": "yd03J3ZgQsrJPNrR"}, "authorisedTime": "1979-07-21T00:00:00Z", "chargebackReversedTime": "1983-04-29T00:00:00Z", "chargebackTime": "1978-11-25T00:00:00Z", "chargedTime": "1979-09-11T00:00:00Z", "createdTime": "1999-09-10T00:00:00Z", "currency": {"currencyCode": "TQvDzKRKp0QUJi0X", "currencySymbol": "BkmyYmGBDWeOs9Wo", "currencyType": "REAL", "decimals": 35, "namespace": "WHYyKJf6aQo3PY8K"}, "customParameters": {"s6WUtIUOGrdRImDn": {}, "Udo6BwAorbS6qnFC": {}, "alKJeBaegpQJ71rJ": {}}, "extOrderNo": "vBcHRTL8PWk5JQjg", "extTxId": "dRpvpZIXfHM5ThTe", "extUserId": "qoMppHbGu2GZjL8g", "issuedAt": "1986-04-26T00:00:00Z", "metadata": {"LjRMZ3rF487EUVLk": "w3Q9exYHFPUnUta9", "MwfUZYN2WsTrdG5l": "loUPQ3HmfXNmWqfL", "2LSlnhLVlhzWXI3M": "Su571dbwm4xJEqgY"}, "namespace": "h1gmCTjaw6tF04VK", "nonceStr": "JAUQkIMlNpD9Usc5", "paymentData": {"discountAmount": 82, "discountCode": "LsB8bkiiDo6jvv7Q", "subtotalPrice": 90, "tax": 67, "totalPrice": 48}, "paymentMethod": "FfPwKvBHIV5F1MQO", "paymentMethodFee": 55, "paymentOrderNo": "YIf6b2wjZqAPMNR3", "paymentProvider": "CHECKOUT", "paymentProviderFee": 23, "paymentStationUrl": "1jAt5BtpXpk1BOhR", "price": 88, "refundedTime": "1984-09-14T00:00:00Z", "salesTax": 96, "sandbox": true, "sku": "kATUZgjhrhf45s5s", "status": "CHARGED", "statusReason": "m7dHDL7q9SYayvPX", "subscriptionId": "hQZfyXsvI5OwJk6f", "subtotalPrice": 18, "targetNamespace": "p1aqtoIspV2knUkJ", "targetUserId": "pZWMSZyQma2GsenZ", "tax": 90, "totalPrice": 38, "totalTax": 94, "txEndTime": "1973-09-03T00:00:00Z", "type": "xUwaD9xX4gXXNPhX", "userId": "AZ8Mj9kLkrMfhsu2", "vat": 18}' \
    > test.out 2>&1
eval_tap $? 298 'ProcessUserOrderNotification' test.out

#- 299 DownloadUserOrderReceipt
samples/cli/sample-apps Platform downloadUserOrderReceipt \
    --namespace $AB_NAMESPACE \
    --orderNo 'ZTWUBwNw9UW1wIMZ' \
    --userId 'DwNHYC26qaPZv3qQ' \
    > test.out 2>&1
eval_tap $? 299 'DownloadUserOrderReceipt' test.out

#- 300 CreateUserPaymentOrder
samples/cli/sample-apps Platform createUserPaymentOrder \
    --namespace $AB_NAMESPACE \
    --userId 'nx9trGscIH7j3mEY' \
    --body '{"currencyCode": "83EzqCeSj3HWrqzV", "currencyNamespace": "c6KNzkbKNzebOqd8", "customParameters": {"AGXVoaiNg4AtJpgk": {}, "BOvxNrocN2WbkRDH": {}, "edbFknLzkNt66H9l": {}}, "description": "2PYrN4h6ZEHqUO94", "extOrderNo": "b8KsJ1YbVlhlNtMK", "extUserId": "aLmFCs2pKpeXrRvM", "itemType": "MEDIA", "language": "ZWG-pjmz_KY", "metadata": {"E58GPaeZRJifeuzU": "fMXhc6LJrzycLrzn", "J4iq3sorSOjYBtVt": "28M54NV74CsvbhMU", "F2qQQnwsZgnsmodK": "ueyazKnavBHeX2MB"}, "notifyUrl": "XOUwA8x8KIQIYNTX", "omitNotification": false, "platform": "CA4WEYnvQ8GpX8tZ", "price": 58, "recurringPaymentOrderNo": "xQ92ZRTsCRr5v2tb", "region": "sLcaSMnrun2zxYWj", "returnUrl": "qmEj2xyE4J0CwekL", "sandbox": false, "sku": "RGRKWKte14XyHfsK", "subscriptionId": "7SfRdyW8yveZqFAk", "title": "US9ci059rk7SkIoF"}' \
    > test.out 2>&1
eval_tap $? 300 'CreateUserPaymentOrder' test.out

#- 301 RefundUserPaymentOrder
samples/cli/sample-apps Platform refundUserPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'oIrCycUgx0kPChwJ' \
    --userId 'hgI3LEpPoweZbEhR' \
    --body '{"description": "d7AjYgiPotmgDFl3"}' \
    > test.out 2>&1
eval_tap $? 301 'RefundUserPaymentOrder' test.out

#- 302 GetUserPlatformAccountClosureHistories
samples/cli/sample-apps Platform getUserPlatformAccountClosureHistories \
    --namespace $AB_NAMESPACE \
    --userId 'kET7FJIdmidRBnXK' \
    > test.out 2>&1
eval_tap $? 302 'GetUserPlatformAccountClosureHistories' test.out

#- 303 ApplyUserRedemption
samples/cli/sample-apps Platform applyUserRedemption \
    --namespace $AB_NAMESPACE \
    --userId 'Qeo0O5IVh8eqLaEO' \
    --body '{"code": "6hvAV44uui4a5aIH", "orderNo": "W9iKQUQ555a4AdQ5"}' \
    > test.out 2>&1
eval_tap $? 303 'ApplyUserRedemption' test.out

#- 304 DoRevocation
samples/cli/sample-apps Platform doRevocation \
    --namespace $AB_NAMESPACE \
    --userId 'cbFf6J33OIRwWuPa' \
    --body '{"meta": {"MSwO9MiDvPJmdabD": {}, "HTe8K8r7XT5ZSwWo": {}, "IzCg0FomkVa881Vu": {}}, "reason": "9W7MD2KvakHqBzP2", "revokeEntries": [{"currency": {"balanceOrigin": "Xbox", "currencyCode": "541O0dGnJqlzqzU8", "namespace": "ed5kXYyj96kBvmqu"}, "entitlement": {"entitlementId": "g9deSAzIGrZSG3aG"}, "item": {"entitlementOrigin": "Nintendo", "itemIdentity": "Gl25pUKKnmIwJbyo", "itemIdentityType": "ITEM_ID", "origin": "Other"}, "quantity": 73, "type": "ITEM"}, {"currency": {"balanceOrigin": "Steam", "currencyCode": "JHEbFQBs1kfu9GnN", "namespace": "CscDUNgWiJtjARPN"}, "entitlement": {"entitlementId": "JUlAk5YVreQz2adB"}, "item": {"entitlementOrigin": "Xbox", "itemIdentity": "kcqTAGHwuoo0cqYQ", "itemIdentityType": "ITEM_ID", "origin": "IOS"}, "quantity": 84, "type": "CURRENCY"}, {"currency": {"balanceOrigin": "Epic", "currencyCode": "kzcpwk5O3SiK3cCt", "namespace": "iLSUI7TJVeCvTi6N"}, "entitlement": {"entitlementId": "YFhpglh5FrXzwN77"}, "item": {"entitlementOrigin": "Xbox", "itemIdentity": "umnedl1UfoT2VvZF", "itemIdentityType": "ITEM_SKU", "origin": "Twitch"}, "quantity": 2, "type": "CURRENCY"}], "source": "IAP", "transactionId": "KDxpadegs97kvwHx"}' \
    > test.out 2>&1
eval_tap $? 304 'DoRevocation' test.out

#- 305 RegisterXblSessions
samples/cli/sample-apps Platform registerXblSessions \
    --namespace $AB_NAMESPACE \
    --userId 'KgaClrMOh3NpAlXg' \
    --body '{"gameSessionId": "UjRpZboKikyYqoRj", "payload": {"3SzhiILUXElnXGBN": {}, "UIXPHifavZsJdah3": {}, "ilYu4IKzviHdf7iD": {}}, "scid": "JWhc1wEbOhkfOw5V", "sessionTemplateName": "sXtRaQKj1aBVZs55"}' \
    > test.out 2>&1
eval_tap $? 305 'RegisterXblSessions' test.out

#- 306 QueryUserSubscriptions
samples/cli/sample-apps Platform queryUserSubscriptions \
    --namespace $AB_NAMESPACE \
    --userId 'anJAJjk3jsHEmJja' \
    --chargeStatus 'CHARGE_FAILED' \
    --itemId '9PBlt4acPeqntSus' \
    --limit '98' \
    --offset '20' \
    --sku 'gh89MxUxMjRNicmf' \
    --status 'CANCELLED' \
    --subscribedBy 'USER' \
    > test.out 2>&1
eval_tap $? 306 'QueryUserSubscriptions' test.out

#- 307 GetUserSubscriptionActivities
samples/cli/sample-apps Platform getUserSubscriptionActivities \
    --namespace $AB_NAMESPACE \
    --userId 'D8EkeuZwcvlckKAS' \
    --excludeSystem 'true' \
    --limit '29' \
    --offset '4' \
    --subscriptionId 'M7Cmzpq8ywww4ehH' \
    > test.out 2>&1
eval_tap $? 307 'GetUserSubscriptionActivities' test.out

#- 308 PlatformSubscribeSubscription
samples/cli/sample-apps Platform platformSubscribeSubscription \
    --namespace $AB_NAMESPACE \
    --userId 'LqR86Y1IPZ4pn71P' \
    --body '{"grantDays": 57, "itemId": "Tt7nUyDBlI4zXU23", "language": "Nk7uHq6nXt5HF0kL", "reason": "tkmT2ny8H9OQoS6A", "region": "pKiNr9ikU3OyaizI", "source": "HFMNUV1SV74j5zox"}' \
    > test.out 2>&1
eval_tap $? 308 'PlatformSubscribeSubscription' test.out

#- 309 CheckUserSubscriptionSubscribableByItemId
samples/cli/sample-apps Platform checkUserSubscriptionSubscribableByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'vXSNTLAYYMVXZRgx' \
    --itemId 'gtyzELK4mvhxR1XB' \
    > test.out 2>&1
eval_tap $? 309 'CheckUserSubscriptionSubscribableByItemId' test.out

#- 310 GetUserSubscription
samples/cli/sample-apps Platform getUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'FoMBtGl4lT4a44Ge' \
    --userId 'WqPpOBD34cOctzFG' \
    > test.out 2>&1
eval_tap $? 310 'GetUserSubscription' test.out

#- 311 DeleteUserSubscription
samples/cli/sample-apps Platform deleteUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'D325B2qA7EUaSbfv' \
    --userId '0KHJoLhJgxOsPgFl' \
    > test.out 2>&1
eval_tap $? 311 'DeleteUserSubscription' test.out

#- 312 CancelSubscription
samples/cli/sample-apps Platform cancelSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'U94saNDiqrClI7ia' \
    --userId 'y4RBS2ZAATRaeyWN' \
    --force 'false' \
    --body '{"immediate": false, "reason": "wVsGW5OOPrZwbOYn"}' \
    > test.out 2>&1
eval_tap $? 312 'CancelSubscription' test.out

#- 313 GrantDaysToSubscription
samples/cli/sample-apps Platform grantDaysToSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'QTIqlRwE0w1vHHFX' \
    --userId 'a2eiAwgZQrVBMPxA' \
    --body '{"grantDays": 59, "reason": "4WW7kDwJtlZBPFpe"}' \
    > test.out 2>&1
eval_tap $? 313 'GrantDaysToSubscription' test.out

#- 314 GetUserSubscriptionBillingHistories
samples/cli/sample-apps Platform getUserSubscriptionBillingHistories \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'eWvGfWRSNhZrSsa9' \
    --userId 'whKuh2FrIPsgqoOt' \
    --excludeFree 'false' \
    --limit '91' \
    --offset '94' \
    > test.out 2>&1
eval_tap $? 314 'GetUserSubscriptionBillingHistories' test.out

#- 315 ProcessUserSubscriptionNotification
samples/cli/sample-apps Platform processUserSubscriptionNotification \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'cTP9gmHHGiwd1aJa' \
    --userId 'NXt5dmAvLlv8lkh6' \
    --body '{"additionalData": {"cardSummary": "Ed83nKOpICR1KGw4"}, "authorisedTime": "1984-08-14T00:00:00Z", "chargebackReversedTime": "1977-12-20T00:00:00Z", "chargebackTime": "1977-04-25T00:00:00Z", "chargedTime": "1985-01-06T00:00:00Z", "createdTime": "1998-06-02T00:00:00Z", "currency": {"currencyCode": "tShYU3SJif4IRqRS", "currencySymbol": "Eo1m69wfphm7wkhH", "currencyType": "VIRTUAL", "decimals": 55, "namespace": "6pdQdk2Z8E4nmO8c"}, "customParameters": {"2tWwqAcV48BORCmB": {}, "XKSbvtYQdxXLQXFI": {}, "bZmRVbY0qz836rfE": {}}, "extOrderNo": "ztvSrZDGRpEXGWJ0", "extTxId": "f7WAw3Akemd3tzAL", "extUserId": "lmU90CmdFzYMVo6r", "issuedAt": "1999-03-27T00:00:00Z", "metadata": {"SQj5TZPk1NrxGk4F": "IoeRcVXQUQtgOHee", "t0ROiB4xSWmlquTz": "PQ3AT79bQUb0hxW2", "wlKkkyGc7VyTvDL5": "ZN0qW47SbG7sJmkR"}, "namespace": "jrA1pqHJ3CrpqNb9", "nonceStr": "1Up4ByhyO3wsLjQO", "paymentData": {"discountAmount": 53, "discountCode": "QeAGh0pkLHFdIlVK", "subtotalPrice": 9, "tax": 55, "totalPrice": 77}, "paymentMethod": "tqeVyN4KfDpRG4g1", "paymentMethodFee": 88, "paymentOrderNo": "ofCO1atNscyRkCir", "paymentProvider": "ADYEN", "paymentProviderFee": 40, "paymentStationUrl": "A5F4b3Ie1Xw9crFy", "price": 14, "refundedTime": "1997-02-06T00:00:00Z", "salesTax": 2, "sandbox": true, "sku": "uywYemgwpekbYTSQ", "status": "NOTIFICATION_OF_CHARGEBACK", "statusReason": "G6A8Gmx5tif8tpED", "subscriptionId": "rLwB7GhdyMCuyUy1", "subtotalPrice": 27, "targetNamespace": "yPgTYIVXw4JXExsP", "targetUserId": "iSaPtM0bXwCJOxPK", "tax": 95, "totalPrice": 7, "totalTax": 75, "txEndTime": "1988-07-09T00:00:00Z", "type": "xElBUhRDigxAp59Q", "userId": "EFJ4hG5QdE02cQEH", "vat": 59}' \
    > test.out 2>&1
eval_tap $? 315 'ProcessUserSubscriptionNotification' test.out

#- 316 AcquireUserTicket
samples/cli/sample-apps Platform acquireUserTicket \
    --boothName 'jP6uOL8EbUJS0hCV' \
    --namespace $AB_NAMESPACE \
    --userId 'Um4Ewz79MCrrjEFA' \
    --body '{"count": 66, "orderNo": "h2D4XPjY9AIIkDrG"}' \
    > test.out 2>&1
eval_tap $? 316 'AcquireUserTicket' test.out

#- 317 QueryUserCurrencyWallets
samples/cli/sample-apps Platform queryUserCurrencyWallets \
    --namespace $AB_NAMESPACE \
    --userId '97lelgmrxoD2JOmK' \
    > test.out 2>&1
eval_tap $? 317 'QueryUserCurrencyWallets' test.out

#- 318 DebitUserWalletByCurrencyCode
samples/cli/sample-apps Platform debitUserWalletByCurrencyCode \
    --currencyCode '8t4uMECyygWsqQju' \
    --namespace $AB_NAMESPACE \
    --userId 'JNSAUPRP0ou4UIRs' \
    --body '{"allowOverdraft": true, "amount": 45, "balanceOrigin": "GooglePlay", "balanceSource": "IAP_REVOCATION", "metadata": {"WLtIjfjHRaVUGnCW": {}, "08wOrJUEvgPVMi2W": {}, "ASZDWygZwKRobjaR": {}}, "reason": "Vd57wYuB8T7RlUdN"}' \
    > test.out 2>&1
eval_tap $? 318 'DebitUserWalletByCurrencyCode' test.out

#- 319 ListUserCurrencyTransactions
samples/cli/sample-apps Platform listUserCurrencyTransactions \
    --currencyCode '3N2C0KctFqQD5bpm' \
    --namespace $AB_NAMESPACE \
    --userId 'eKga938q02nlfByU' \
    --limit '62' \
    --offset '90' \
    > test.out 2>&1
eval_tap $? 319 'ListUserCurrencyTransactions' test.out

#- 320 CheckBalance
samples/cli/sample-apps Platform checkBalance \
    --currencyCode 'PgeW7w3J58Pr81pf' \
    --namespace $AB_NAMESPACE \
    --userId 'cuXh4ULBXY1uUScn' \
    --request '{"amount": 87, "debitBalanceSource": "TRADE", "metadata": {"noyRElSemXBoDtTN": {}, "YpQzezEHOpQFinRn": {}, "m5IaYPD3wZImB9iT": {}}, "reason": "rXSgQLiNM3svbqZX", "walletPlatform": "Epic"}' \
    > test.out 2>&1
eval_tap $? 320 'CheckBalance' test.out

#- 321 CheckWallet
eval_tap 0 321 'CheckWallet # SKIP deprecated' test.out

#- 322 CreditUserWallet
samples/cli/sample-apps Platform creditUserWallet \
    --currencyCode 'GiaKh4fFBj6qTzLd' \
    --namespace $AB_NAMESPACE \
    --userId 'vBBrBklZ9ShWV9Nb' \
    --body '{"amount": 98, "expireAt": "1991-12-22T00:00:00Z", "metadata": {"3gXZO63SQo6ae2IQ": {}, "b4gkwMsySgrMRSV8": {}, "mVwrQm8hLcw55JFJ": {}}, "origin": "System", "reason": "EM9wJil3UqA2Ma2a", "source": "GIFT"}' \
    > test.out 2>&1
eval_tap $? 322 'CreditUserWallet' test.out

#- 323 DebitByWalletPlatform
samples/cli/sample-apps Platform debitByWalletPlatform \
    --currencyCode '4BfCB0JkkpPcffkD' \
    --namespace $AB_NAMESPACE \
    --userId 'vMGFBr2fL7PdECYk' \
    --request '{"amount": 71, "debitBalanceSource": "TRADE", "metadata": {"wrvSbYxsWtsaJi3Q": {}, "d80o0IBbmMc5vpny": {}, "trBSlwu35ML7ircX": {}}, "reason": "PE1NtHg5o5RCwD7A", "walletPlatform": "Other"}' \
    > test.out 2>&1
eval_tap $? 323 'DebitByWalletPlatform' test.out

#- 324 PayWithUserWallet
samples/cli/sample-apps Platform payWithUserWallet \
    --currencyCode 'ozGzNsYjNSyuKZzS' \
    --namespace $AB_NAMESPACE \
    --userId '0q2Q1lIzbCpQYBN0' \
    --body '{"amount": 4, "metadata": {"RWjtD5CP6qfxhWXk": {}, "tHH1a967xM4gDo78": {}, "UXkeGalfEr4o9kMu": {}}, "walletPlatform": "Other"}' \
    > test.out 2>&1
eval_tap $? 324 'PayWithUserWallet' test.out

#- 325 GetUserWallet
eval_tap 0 325 'GetUserWallet # SKIP deprecated' test.out

#- 326 DebitUserWallet
eval_tap 0 326 'DebitUserWallet # SKIP deprecated' test.out

#- 327 DisableUserWallet
eval_tap 0 327 'DisableUserWallet # SKIP deprecated' test.out

#- 328 EnableUserWallet
eval_tap 0 328 'EnableUserWallet # SKIP deprecated' test.out

#- 329 ListUserWalletTransactions
eval_tap 0 329 'ListUserWalletTransactions # SKIP deprecated' test.out

#- 330 ListViews
samples/cli/sample-apps Platform listViews \
    --namespace $AB_NAMESPACE \
    --storeId 'COJpriJhILRMSYon' \
    > test.out 2>&1
eval_tap $? 330 'ListViews' test.out

#- 331 CreateView
samples/cli/sample-apps Platform createView \
    --namespace $AB_NAMESPACE \
    --storeId 'MmuIqCesWJULV87H' \
    --body '{"displayOrder": 39, "localizations": {"EhHNEns5RSC8MYq5": {"description": "EnGnGskSbCzkspBC", "localExt": {"egDRHPWY05RWMHDQ": {}, "2HuUFNTpgK9he5jT": {}, "ThVL2fL7ACgTIA00": {}}, "longDescription": "BK23IjbkjOFDg9UB", "title": "i6NA2RzFJmgLKNIO"}, "Vm28KZpJONWUlWJt": {"description": "xRRNNy12QOOTNOd6", "localExt": {"aOJzZSeFBSwkvWZh": {}, "gKXWxvW6dZBGJKfG": {}, "dOHQbfA592YZMC0U": {}}, "longDescription": "3NY6ZwZcGtpiuc2W", "title": "6zIZZYpBeXrmYoat"}, "20tgDqX7WXGMjwTY": {"description": "ScSAbJJisdwAL1RC", "localExt": {"JvoZiaL8sRt05vgx": {}, "XR8qzDocJy1nYvqC": {}, "dE9gdYOFfwlvnI3k": {}}, "longDescription": "UgOoRpPYnit48e09", "title": "Az7qz1z1oCFqb1eN"}}, "name": "mbhCRG8fUZ22i5ca"}' \
    > test.out 2>&1
eval_tap $? 331 'CreateView' test.out

#- 332 GetView
samples/cli/sample-apps Platform getView \
    --namespace $AB_NAMESPACE \
    --viewId 'Q1UXWuR8nCFK3adG' \
    --storeId 'POE4pfXE4btAo7oa' \
    > test.out 2>&1
eval_tap $? 332 'GetView' test.out

#- 333 UpdateView
samples/cli/sample-apps Platform updateView \
    --namespace $AB_NAMESPACE \
    --viewId 'M0iFQ0SMCkWWN2sV' \
    --storeId 'G7S6t9HJX0pceytb' \
    --body '{"displayOrder": 39, "localizations": {"WvdqiV2XBgB66Qtm": {"description": "ebgqv3Bu0WPgu0O3", "localExt": {"D1DjalFdl9yxGQVj": {}, "mTnt1Wu8Fufy8nRt": {}, "CLDiDC8BeZNm8PbE": {}}, "longDescription": "Evau0BuLcPauDAh9", "title": "ilerGz8EeCXZyD3j"}, "vNqc0YmHu4traNI2": {"description": "AxEiE65Ydujaowlf", "localExt": {"cLSeeLn1KT0acTjq": {}, "Ih4Ac2GUWPvFm1yG": {}, "XFxvnxgs9koocBku": {}}, "longDescription": "iFnXVhnKLyUhUvgg", "title": "8hRpNvI8I7BXF0Ea"}, "XU9v2kI7DFVmDoHA": {"description": "vXwht6VaBwnPozD6", "localExt": {"tab1eyNp7nauc6MH": {}, "59XAqtnWsve29LOL": {}, "3SLCaIEKNqDWCuwR": {}}, "longDescription": "PlKbehlVJ8Fbwezg", "title": "vIb98HoNJmkzKIV8"}}, "name": "yPhLWdDezTzSpc0Y"}' \
    > test.out 2>&1
eval_tap $? 333 'UpdateView' test.out

#- 334 DeleteView
samples/cli/sample-apps Platform deleteView \
    --namespace $AB_NAMESPACE \
    --viewId 'Ath8qV4tk1rgtCFa' \
    --storeId 'CCXa5vQPDFgZoliI' \
    > test.out 2>&1
eval_tap $? 334 'DeleteView' test.out

#- 335 QueryWallets
eval_tap 0 335 'QueryWallets # SKIP deprecated' test.out

#- 336 BulkCredit
samples/cli/sample-apps Platform bulkCredit \
    --namespace $AB_NAMESPACE \
    --body '[{"creditRequest": {"amount": 72, "expireAt": "1996-06-29T00:00:00Z", "metadata": {"MgeWZodvsp8SFE7n": {}, "lZqRI35FNqbzwlxG": {}, "Q0Nn8bGLXDkJHdIM": {}}, "origin": "Oculus", "reason": "qXCDVUBioIqJrtii", "source": "IAP_CHARGEBACK_REVERSED"}, "currencyCode": "Ou5u4cPw8dCdbApu", "userIds": ["At5F2ymJ0fjVSrhW", "M9DiUo7ZWdw04Lpw", "jfYGnNX02kJCRKKr"]}, {"creditRequest": {"amount": 50, "expireAt": "1977-03-03T00:00:00Z", "metadata": {"hKzp9A4TYCa4cMm5": {}, "RseifGDk2VOCDi5J": {}, "7pL29C0mDDtMrVNt": {}}, "origin": "GooglePlay", "reason": "eDlD0TfPo2Qd5fnd", "source": "DLC"}, "currencyCode": "fuP1k8u9AJwqHid6", "userIds": ["PeOCzmIHrIOYi01Z", "AcqV1SSXe92BaUCf", "y3z8dj6lU574oeee"]}, {"creditRequest": {"amount": 81, "expireAt": "1995-05-24T00:00:00Z", "metadata": {"bNAPmkD8lKEwxmYq": {}, "vn38HpMD8JySYw6u": {}, "AK0sFTsjimnUVtjf": {}}, "origin": "Other", "reason": "197WYbkkJ767g4qY", "source": "REFERRAL_BONUS"}, "currencyCode": "ZIf0keOG0Vf1BhUR", "userIds": ["8dA1lUrjMSXp0tdn", "i9gh8strm74dOgCM", "OQpFwcUr7S3o2jzO"]}]' \
    > test.out 2>&1
eval_tap $? 336 'BulkCredit' test.out

#- 337 BulkDebit
samples/cli/sample-apps Platform bulkDebit \
    --namespace $AB_NAMESPACE \
    --body '[{"currencyCode": "PL5yUn6QZYKfUfwQ", "request": {"allowOverdraft": false, "amount": 81, "balanceOrigin": "System", "balanceSource": "DLC_REVOCATION", "metadata": {"hcsXvuKuts4vAgdU": {}, "MAyWT5hHiiS198b9": {}, "qLBOwfkMYURb6X8M": {}}, "reason": "01DhFY95Tnqt2TQt"}, "userIds": ["wH9A6BX8crUDzzKV", "KFsX3hJd4aEEauGn", "wkypCzda3Lnwzsb9"]}, {"currencyCode": "5X2dNrVbKBksKxog", "request": {"allowOverdraft": true, "amount": 16, "balanceOrigin": "Other", "balanceSource": "PAYMENT", "metadata": {"tRpcv0gTeiECGjb8": {}, "hBHKQXHboW9xchJH": {}, "VmXxCgXEDfjPKyyo": {}}, "reason": "EN8E74po2LrVtKFx"}, "userIds": ["NdFkY1Nfo6RAP1p3", "147co6xiflK9pdR1", "cmLGddpzo8r1Zwue"]}, {"currencyCode": "HGuZLyAMGRRMX5mw", "request": {"allowOverdraft": false, "amount": 89, "balanceOrigin": "Playstation", "balanceSource": "DLC_REVOCATION", "metadata": {"o3jhwXI4Qp95EokG": {}, "Ci8YW2OZbLtn97Yy": {}, "knbI9yUl6JIM7TTM": {}}, "reason": "Sun582f835DWpuF8"}, "userIds": ["PfICFXh7eBHkhXJn", "E1NCuJhzyLAjSqWp", "zjUzEl4aB8LGGJo6"]}]' \
    > test.out 2>&1
eval_tap $? 337 'BulkDebit' test.out

#- 338 GetWallet
eval_tap 0 338 'GetWallet # SKIP deprecated' test.out

#- 339 SyncOrders
samples/cli/sample-apps Platform syncOrders \
    --nextEvaluatedKey 'OZYHQ8jmS01hdvFP' \
    --end 'GzsOxlJfj1no5qzX' \
    --start 'UAzUdKmIiNyvdTi3' \
    > test.out 2>&1
eval_tap $? 339 'SyncOrders' test.out

#- 340 TestAdyenConfig
samples/cli/sample-apps Platform testAdyenConfig \
    --sandbox 'false' \
    --body '{"allowedPaymentMethods": ["AfDe5AFmHspwvyWP", "zemJHiSQmx4gziJc", "RGYACI1Ncl87kQy0"], "apiKey": "e5wh4NzNMOl9KyNb", "authoriseAsCapture": true, "blockedPaymentMethods": ["HLXkbwUDGRxuge9R", "DVaehlFavjEUl1Np", "oRQedQP1YJUtQBJB"], "clientKey": "DyIA8ImDctYLteQh", "dropInSettings": "NPg1sVh5FjQ9bqHx", "liveEndpointUrlPrefix": "gxJRhfp9gBrGg02a", "merchantAccount": "utSjvmqSGHYAnkFE", "notificationHmacKey": "A6wYizE3rarfcedw", "notificationPassword": "3ID9ABbLNz3399pD", "notificationUsername": "UVweHuL0KcixACMM", "returnUrl": "qu66eDasOni1PqGq", "settings": "P2N02ZxLOUuao4On"}' \
    > test.out 2>&1
eval_tap $? 340 'TestAdyenConfig' test.out

#- 341 TestAliPayConfig
samples/cli/sample-apps Platform testAliPayConfig \
    --sandbox 'true' \
    --body '{"appId": "WF318keKS1LFfBjV", "privateKey": "Cx87cJC6iTl7wfvl", "publicKey": "etIyxJQNPqRG97EZ", "returnUrl": "BvMxMo4jE8xJA9kc"}' \
    > test.out 2>&1
eval_tap $? 341 'TestAliPayConfig' test.out

#- 342 TestCheckoutConfig
samples/cli/sample-apps Platform testCheckoutConfig \
    --sandbox 'true' \
    --body '{"publicKey": "60G7TlUdoQeMMYkK", "secretKey": "MWxRPoG9mBKn78TH"}' \
    > test.out 2>&1
eval_tap $? 342 'TestCheckoutConfig' test.out

#- 343 DebugMatchedPaymentMerchantConfig
samples/cli/sample-apps Platform debugMatchedPaymentMerchantConfig \
    --namespace 'iiBJS3x7o15NHmOR' \
    --region 'lFhybDUdeOBoVZGr' \
    > test.out 2>&1
eval_tap $? 343 'DebugMatchedPaymentMerchantConfig' test.out

#- 344 TestNeonPayConfig
samples/cli/sample-apps Platform testNeonPayConfig \
    --sandbox 'false' \
    --body '{"apiKey": "y1f4YRDy3rJ7WU8V", "webhookSecretKey": "RymzH9K9hXaPqQrO"}' \
    > test.out 2>&1
eval_tap $? 344 'TestNeonPayConfig' test.out

#- 345 TestPayPalConfig
samples/cli/sample-apps Platform testPayPalConfig \
    --sandbox 'false' \
    --body '{"clientID": "vguqqbOqBjvsOJm0", "clientSecret": "1aQzBnYrANctHYGu", "returnUrl": "N57DLCDDMpSPzPb7", "webHookId": "Zchk49rnjfYRopEs"}' \
    > test.out 2>&1
eval_tap $? 345 'TestPayPalConfig' test.out

#- 346 TestStripeConfig
samples/cli/sample-apps Platform testStripeConfig \
    --sandbox 'false' \
    --body '{"allowedPaymentMethodTypes": ["5DN66iO5OKIhc1lX", "EGUHHd5nugseRa1M", "TSOUrxTowx3DvWIo"], "publishableKey": "Ebpt7MUneqU3LVhw", "secretKey": "H7YjSLbDxtATGfBr", "webhookSecret": "rwzWsSMlLALyJ3CI"}' \
    > test.out 2>&1
eval_tap $? 346 'TestStripeConfig' test.out

#- 347 TestWxPayConfig
samples/cli/sample-apps Platform testWxPayConfig \
    --body '{"appId": "KF3LoDT85x195ZfQ", "key": "00nljjm1CuZYPQbj", "mchid": "bcmr78gYsxHqYaZK", "returnUrl": "MUcf2Pj0uiZUqIGI"}' \
    > test.out 2>&1
eval_tap $? 347 'TestWxPayConfig' test.out

#- 348 TestXsollaConfig
samples/cli/sample-apps Platform testXsollaConfig \
    --body '{"apiKey": "TiPK9RZBp58tFN0u", "flowCompletionUrl": "FZWdju7WBTIH2SRd", "merchantId": 38, "projectId": 74, "projectSecretKey": "FalS25oLqj3LaqKU"}' \
    > test.out 2>&1
eval_tap $? 348 'TestXsollaConfig' test.out

#- 349 GetPaymentMerchantConfig1
samples/cli/sample-apps Platform getPaymentMerchantConfig1 \
    --id 'p8jizJw5kGM8JmkK' \
    > test.out 2>&1
eval_tap $? 349 'GetPaymentMerchantConfig1' test.out

#- 350 UpdateAdyenConfig
samples/cli/sample-apps Platform updateAdyenConfig \
    --id '6X0FBxyc4lM9wjg5' \
    --sandbox 'true' \
    --validate 'true' \
    --body '{"allowedPaymentMethods": ["0pffZwjLBE5VtRJK", "zWvSedjDhbQuvXvS", "DUpgmy6Bu6QIM53v"], "apiKey": "2OfwI9bQ1YIedqVF", "authoriseAsCapture": false, "blockedPaymentMethods": ["Q9YEsOVMig0z5G6O", "78eCTtWdZcLaPZUk", "zKTqBka3XoDaQmGr"], "clientKey": "tV0ZcK6rEMd1pDv5", "dropInSettings": "LZnG7SWV8XWaMdty", "liveEndpointUrlPrefix": "cIAZEqVN57UU6W09", "merchantAccount": "D81AK6rYX4Y86dse", "notificationHmacKey": "M7UpFYAF9Jgdrw0K", "notificationPassword": "Qtv2h8V4oqUoK88J", "notificationUsername": "UDQAUnM7VuGQMj4G", "returnUrl": "Dum42NkySE0Ffchd", "settings": "jN6v74L5NRduBWfv"}' \
    > test.out 2>&1
eval_tap $? 350 'UpdateAdyenConfig' test.out

#- 351 TestAdyenConfigById
samples/cli/sample-apps Platform testAdyenConfigById \
    --id 'FaEXvYJwMBpaEogu' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 351 'TestAdyenConfigById' test.out

#- 352 UpdateAliPayConfig
samples/cli/sample-apps Platform updateAliPayConfig \
    --id 'IGN0aVB4SRe1nNpd' \
    --sandbox 'false' \
    --validate 'false' \
    --body '{"appId": "CZY0xjgKm48GNMlb", "privateKey": "kZK8MODeskMRHlMC", "publicKey": "22O9QoyR5Q3kJpms", "returnUrl": "I7eWnh3fAYQREusk"}' \
    > test.out 2>&1
eval_tap $? 352 'UpdateAliPayConfig' test.out

#- 353 TestAliPayConfigById
samples/cli/sample-apps Platform testAliPayConfigById \
    --id 'ILsjX0y5y2IjcaVs' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 353 'TestAliPayConfigById' test.out

#- 354 UpdateCheckoutConfig
samples/cli/sample-apps Platform updateCheckoutConfig \
    --id '4XSsdApYXUiTouID' \
    --sandbox 'true' \
    --validate 'true' \
    --body '{"publicKey": "O1H0F1LCrWl4TGYy", "secretKey": "3sIvd1WmmzjtxsrB"}' \
    > test.out 2>&1
eval_tap $? 354 'UpdateCheckoutConfig' test.out

#- 355 TestCheckoutConfigById
samples/cli/sample-apps Platform testCheckoutConfigById \
    --id 'y1pTKR9GOahxVHbj' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 355 'TestCheckoutConfigById' test.out

#- 356 UpdateNeonPayConfig
samples/cli/sample-apps Platform updateNeonPayConfig \
    --id 'WAlc1Uo71Ze74BFH' \
    --sandbox 'false' \
    --validate 'true' \
    --body '{"apiKey": "77CyaMUVNajCTqMR", "webhookSecretKey": "7TA9V2uI7yWMFW2Q"}' \
    > test.out 2>&1
eval_tap $? 356 'UpdateNeonPayConfig' test.out

#- 357 TestNeonPayConfigById
samples/cli/sample-apps Platform testNeonPayConfigById \
    --id 'P2s4TMXykW6jQPmL' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 357 'TestNeonPayConfigById' test.out

#- 358 UpdatePayPalConfig
samples/cli/sample-apps Platform updatePayPalConfig \
    --id 'BSilpC4MIwU7B2cI' \
    --sandbox 'false' \
    --validate 'false' \
    --body '{"clientID": "eb2mqUjGh1ax8gUj", "clientSecret": "VwRQCJpdtvhmz8JG", "returnUrl": "klym3kc1m2g4wh5Y", "webHookId": "7pfdAPhiCBIcV1mP"}' \
    > test.out 2>&1
eval_tap $? 358 'UpdatePayPalConfig' test.out

#- 359 TestPayPalConfigById
samples/cli/sample-apps Platform testPayPalConfigById \
    --id 'yS0mA95YrpMw5xHF' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 359 'TestPayPalConfigById' test.out

#- 360 UpdateStripeConfig
samples/cli/sample-apps Platform updateStripeConfig \
    --id 'U1GCuIq71OSZQh9s' \
    --sandbox 'false' \
    --validate 'false' \
    --body '{"allowedPaymentMethodTypes": ["ENE7SlKF1BxHhcMk", "z1COjyjGP8YP3tnt", "34O2rTN18fyqH1mV"], "publishableKey": "tVss23fnGgrEB6o8", "secretKey": "RaMHOP3hMD3iNasv", "webhookSecret": "ccwHez6I1wBEOpkB"}' \
    > test.out 2>&1
eval_tap $? 360 'UpdateStripeConfig' test.out

#- 361 TestStripeConfigById
samples/cli/sample-apps Platform testStripeConfigById \
    --id 'PCjebQcij7HAMXym' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 361 'TestStripeConfigById' test.out

#- 362 UpdateWxPayConfig
samples/cli/sample-apps Platform updateWxPayConfig \
    --id '1HqzkN87A0tyUYKt' \
    --validate 'false' \
    --body '{"appId": "s2eg4NbMLFc3muYn", "key": "IsvR8RYRiEabyJ0e", "mchid": "Ino4PCdJsGBwsyCB", "returnUrl": "uarbVtjuLyIUajYA"}' \
    > test.out 2>&1
eval_tap $? 362 'UpdateWxPayConfig' test.out

#- 363 UpdateWxPayConfigCert
samples/cli/sample-apps Platform updateWxPayConfigCert \
    --id 'LnskYvVSc7NgPmz7' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 363 'UpdateWxPayConfigCert' test.out

#- 364 TestWxPayConfigById
samples/cli/sample-apps Platform testWxPayConfigById \
    --id 'Cj1Ph0iS73h7yIBp' \
    > test.out 2>&1
eval_tap $? 364 'TestWxPayConfigById' test.out

#- 365 UpdateXsollaConfig
samples/cli/sample-apps Platform updateXsollaConfig \
    --id 'J0uuEoV2IsVRLhNw' \
    --validate 'true' \
    --body '{"apiKey": "D5bgdBCekv5EQ2YZ", "flowCompletionUrl": "DUHrR8ICBtPNPxfS", "merchantId": 27, "projectId": 45, "projectSecretKey": "rmfFr23bAmIlWI9W"}' \
    > test.out 2>&1
eval_tap $? 365 'UpdateXsollaConfig' test.out

#- 366 TestXsollaConfigById
samples/cli/sample-apps Platform testXsollaConfigById \
    --id 'ZHsdcpVzMz4aH2Ym' \
    > test.out 2>&1
eval_tap $? 366 'TestXsollaConfigById' test.out

#- 367 UpdateXsollaUIConfig
samples/cli/sample-apps Platform updateXsollaUIConfig \
    --id 'wmK3x4Fnic8RWvWb' \
    --body '{"device": "DESKTOP", "showCloseButton": true, "size": "MEDIUM", "theme": "DEFAULT_DARK"}' \
    > test.out 2>&1
eval_tap $? 367 'UpdateXsollaUIConfig' test.out

#- 368 QueryPaymentProviderConfig
samples/cli/sample-apps Platform queryPaymentProviderConfig \
    --limit '93' \
    --namespace 'UENH3y6LEuEX8Eah' \
    --offset '76' \
    --region 'zeGMhSSaexW2hSld' \
    > test.out 2>&1
eval_tap $? 368 'QueryPaymentProviderConfig' test.out

#- 369 CreatePaymentProviderConfig
samples/cli/sample-apps Platform createPaymentProviderConfig \
    --body '{"aggregate": "STRIPE", "namespace": "iN49sp58HV1WPAet", "region": "jDwAR8S08YO9qJu1", "sandboxTaxJarApiToken": "LO8XO5ZmZU3UUTzb", "specials": ["PAYPAL", "NEONPAY", "WXPAY"], "taxJarApiToken": "BXlxU7Awp2dudcIr", "taxJarEnabled": false, "useGlobalTaxJarApiToken": false}' \
    > test.out 2>&1
eval_tap $? 369 'CreatePaymentProviderConfig' test.out

#- 370 GetAggregatePaymentProviders
samples/cli/sample-apps Platform getAggregatePaymentProviders \
    > test.out 2>&1
eval_tap $? 370 'GetAggregatePaymentProviders' test.out

#- 371 DebugMatchedPaymentProviderConfig
samples/cli/sample-apps Platform debugMatchedPaymentProviderConfig \
    --namespace 'qo2Ws4RiT7nPDI5f' \
    --region 'JEO9eWnux3W1KQC3' \
    > test.out 2>&1
eval_tap $? 371 'DebugMatchedPaymentProviderConfig' test.out

#- 372 GetSpecialPaymentProviders
samples/cli/sample-apps Platform getSpecialPaymentProviders \
    > test.out 2>&1
eval_tap $? 372 'GetSpecialPaymentProviders' test.out

#- 373 UpdatePaymentProviderConfig
samples/cli/sample-apps Platform updatePaymentProviderConfig \
    --id 'wLzdNl6ZdqL02cfw' \
    --body '{"aggregate": "NEONPAY", "namespace": "5RuRdg6JIXTm9tyZ", "region": "0TyGGqqG1QrOcZ2I", "sandboxTaxJarApiToken": "QeQdUUjzlXbx3v80", "specials": ["ALIPAY", "ADYEN", "CHECKOUT"], "taxJarApiToken": "MwKuAeS4zriCx1HS", "taxJarEnabled": true, "useGlobalTaxJarApiToken": false}' \
    > test.out 2>&1
eval_tap $? 373 'UpdatePaymentProviderConfig' test.out

#- 374 DeletePaymentProviderConfig
samples/cli/sample-apps Platform deletePaymentProviderConfig \
    --id 'TGiVeaJytLO6RC8S' \
    > test.out 2>&1
eval_tap $? 374 'DeletePaymentProviderConfig' test.out

#- 375 GetPaymentTaxConfig
samples/cli/sample-apps Platform getPaymentTaxConfig \
    > test.out 2>&1
eval_tap $? 375 'GetPaymentTaxConfig' test.out

#- 376 UpdatePaymentTaxConfig
samples/cli/sample-apps Platform updatePaymentTaxConfig \
    --body '{"sandboxTaxJarApiToken": "dfZtB4dbsYd9LY8y", "taxJarApiToken": "dQYEIY9vnj3UBavO", "taxJarEnabled": false, "taxJarProductCodesMapping": {"4jHy8HalM1SBG9mV": "lPnta45vpF6lcJfX", "fHcTIJoAV1UCJcRo": "c9nAQhankvZFEt56", "6Q5SPMSwreiwwA07": "ENMYSNVhLlAmxv2O"}}' \
    > test.out 2>&1
eval_tap $? 376 'UpdatePaymentTaxConfig' test.out

#- 377 SyncPaymentOrders
samples/cli/sample-apps Platform syncPaymentOrders \
    --nextEvaluatedKey 'XtlfEVEGfpB29wnw' \
    --end 'K2LgTiAa1fshFeyG' \
    --start '3YtEbbxg3L50O5qC' \
    > test.out 2>&1
eval_tap $? 377 'SyncPaymentOrders' test.out

#- 378 PublicGetRootCategories
samples/cli/sample-apps Platform publicGetRootCategories \
    --namespace $AB_NAMESPACE \
    --language 'QeCkPYwfogaXC3QX' \
    --storeId 'avd9U2zRVF9bWFIu' \
    > test.out 2>&1
eval_tap $? 378 'PublicGetRootCategories' test.out

#- 379 DownloadCategories
samples/cli/sample-apps Platform downloadCategories \
    --namespace $AB_NAMESPACE \
    --language 'i1tk1zlJ4V9Xn0ru' \
    --storeId 'eqorq1hOliwwnuHU' \
    > test.out 2>&1
eval_tap $? 379 'DownloadCategories' test.out

#- 380 PublicGetCategory
samples/cli/sample-apps Platform publicGetCategory \
    --categoryPath 'MdPSo9iMnWXcLif4' \
    --namespace $AB_NAMESPACE \
    --language '8cKWEN9XzNG9tOAQ' \
    --storeId 'RNXYYaIZK2fDjyh0' \
    > test.out 2>&1
eval_tap $? 380 'PublicGetCategory' test.out

#- 381 PublicGetChildCategories
samples/cli/sample-apps Platform publicGetChildCategories \
    --categoryPath 'a7LKy3F5zT0gLy6j' \
    --namespace $AB_NAMESPACE \
    --language '0aFzFwc5L2RCaEHM' \
    --storeId '9N1fVRxUAxplMn2q' \
    > test.out 2>&1
eval_tap $? 381 'PublicGetChildCategories' test.out

#- 382 PublicGetDescendantCategories
samples/cli/sample-apps Platform publicGetDescendantCategories \
    --categoryPath 'CakTFg9p2DatmGV5' \
    --namespace $AB_NAMESPACE \
    --language 'S6N9cnz7AsnW2uLS' \
    --storeId 'ehaUEmbBtipTRprA' \
    > test.out 2>&1
eval_tap $? 382 'PublicGetDescendantCategories' test.out

#- 383 PublicListCurrencies
samples/cli/sample-apps Platform publicListCurrencies \
    --namespace $AB_NAMESPACE \
    --currencyType 'VIRTUAL' \
    > test.out 2>&1
eval_tap $? 383 'PublicListCurrencies' test.out

#- 384 GeDLCDurableRewardShortMap
samples/cli/sample-apps Platform geDLCDurableRewardShortMap \
    --namespace $AB_NAMESPACE \
    --dlcType 'PSN' \
    > test.out 2>&1
eval_tap $? 384 'GeDLCDurableRewardShortMap' test.out

#- 385 GetAppleConfigVersion
samples/cli/sample-apps Platform getAppleConfigVersion \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 385 'GetAppleConfigVersion' test.out

#- 386 GetIAPItemMapping
samples/cli/sample-apps Platform getIAPItemMapping \
    --namespace $AB_NAMESPACE \
    --platform 'STADIA' \
    > test.out 2>&1
eval_tap $? 386 'GetIAPItemMapping' test.out

#- 387 PublicGetItemByAppId
samples/cli/sample-apps Platform publicGetItemByAppId \
    --namespace $AB_NAMESPACE \
    --language 'XAQFmO4fmKwfR5aw' \
    --region 'J7Z2ALZVopz4BmAd' \
    --storeId 'OCsijU2Qt3rjml6B' \
    --appId 'FNfm0CptKK9zfvQ0' \
    > test.out 2>&1
eval_tap $? 387 'PublicGetItemByAppId' test.out

#- 388 PublicQueryItems
samples/cli/sample-apps Platform publicQueryItems \
    --namespace $AB_NAMESPACE \
    --appType 'DLC' \
    --autoCalcEstimatedPrice 'true' \
    --baseAppId 'Q6Zc94MOSDUxyTq9' \
    --categoryPath '3XmPjd8If9t25tNn' \
    --features 'JOklNAevhBskvqeA' \
    --includeSubCategoryItem 'false' \
    --itemType 'SUBSCRIPTION' \
    --language 'YnLEjEIDGlHaxyE2' \
    --limit '26' \
    --offset '96' \
    --region 'ZxY09kjGcWT7xcd7' \
    --sortBy '["name:desc", "updatedAt:asc", "updatedAt:desc"]' \
    --storeId 'bwFkFHUrYcaTqhxS' \
    --tags '0rkMAaY2MGpuB1Lm' \
    > test.out 2>&1
eval_tap $? 388 'PublicQueryItems' test.out

#- 389 PublicGetItemBySku
samples/cli/sample-apps Platform publicGetItemBySku \
    --namespace $AB_NAMESPACE \
    --autoCalcEstimatedPrice 'true' \
    --language '2eCb2kXi53GLOATR' \
    --region 'AxZUxnnlCTfwVyzv' \
    --storeId '5wVaB3o8WWmcSuDR' \
    --sku 'fE5xp7qUVUGq0hfa' \
    > test.out 2>&1
eval_tap $? 389 'PublicGetItemBySku' test.out

#- 390 PublicGetEstimatedPrice
samples/cli/sample-apps Platform publicGetEstimatedPrice \
    --namespace $AB_NAMESPACE \
    --region 'yva2Ti4L4jpkLMWC' \
    --storeId 'M9jmtyUpwTbVyrJp' \
    --itemIds 'DlgPUANFqM5FJirt' \
    > test.out 2>&1
eval_tap $? 390 'PublicGetEstimatedPrice' test.out

#- 391 PublicBulkGetItems
samples/cli/sample-apps Platform publicBulkGetItems \
    --namespace $AB_NAMESPACE \
    --autoCalcEstimatedPrice 'true' \
    --language 'j7Q7wHMxLxfEDu61' \
    --region 'QB7rstGgJDlhgTf6' \
    --storeId 'nEGuj6uGbrVL8JAX' \
    --itemIds 'JeHwoI1dGsALRHcj' \
    > test.out 2>&1
eval_tap $? 391 'PublicBulkGetItems' test.out

#- 392 PublicValidateItemPurchaseCondition
samples/cli/sample-apps Platform publicValidateItemPurchaseCondition \
    --namespace $AB_NAMESPACE \
    --body '{"itemIds": ["gkGfQQQrKCGLGsgT", "q4r6BLfsqy8Ke8MO", "UcBCRyqYn414wH9i"]}' \
    > test.out 2>&1
eval_tap $? 392 'PublicValidateItemPurchaseCondition' test.out

#- 393 PublicSearchItems
samples/cli/sample-apps Platform publicSearchItems \
    --namespace $AB_NAMESPACE \
    --autoCalcEstimatedPrice 'false' \
    --itemType 'COINS' \
    --limit '10' \
    --offset '61' \
    --region 'M77l9qJbza7J0nNA' \
    --storeId 'y7xOGCg8oppFLiLu' \
    --keyword 'NLQ0AtRjjXN2Ym5j' \
    --language '6mVxp0gYUaleHtm5' \
    > test.out 2>&1
eval_tap $? 393 'PublicSearchItems' test.out

#- 394 PublicGetApp
samples/cli/sample-apps Platform publicGetApp \
    --itemId 'tKLk3IJdkCWyiJRl' \
    --namespace $AB_NAMESPACE \
    --language '5GpsBjj6Cx7TJlPS' \
    --region 'flQw3cyoocimewhU' \
    --storeId '61z1K9grf37cFTQt' \
    > test.out 2>&1
eval_tap $? 394 'PublicGetApp' test.out

#- 395 PublicGetItemDynamicData
samples/cli/sample-apps Platform publicGetItemDynamicData \
    --itemId 'qVtLc1zVMVntngk8' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 395 'PublicGetItemDynamicData' test.out

#- 396 PublicGetItem
samples/cli/sample-apps Platform publicGetItem \
    --itemId 'XnhCIVqTk4CNvHEg' \
    --namespace $AB_NAMESPACE \
    --autoCalcEstimatedPrice 'false' \
    --language '6xq9yI5FEKRpxR99' \
    --populateBundle 'true' \
    --region '4b8KaNa9l49qf6y9' \
    --storeId 'rvNCEYUk32RFu2sB' \
    > test.out 2>&1
eval_tap $? 396 'PublicGetItem' test.out

#- 397 GetPaymentCustomization
eval_tap 0 397 'GetPaymentCustomization # SKIP deprecated' test.out

#- 398 PublicGetPaymentUrl
samples/cli/sample-apps Platform publicGetPaymentUrl \
    --namespace $AB_NAMESPACE \
    --body '{"neonPayConfig": {"cancelUrl": "Oq6DteGlbkRkGSTJ", "successUrl": "L6m91t4Gaq7Iem63"}, "paymentOrderNo": "BB1DPlsmCAYdSxzP", "paymentProvider": "XSOLLA", "returnUrl": "tPC8t9ENPsRcVUUU", "ui": "AZlLTnBt1wuHoiaR", "zipCode": "14Rw9hM6XZZcIR5U"}' \
    > test.out 2>&1
eval_tap $? 398 'PublicGetPaymentUrl' test.out

#- 399 PublicGetPaymentMethods
samples/cli/sample-apps Platform publicGetPaymentMethods \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'INF81ugbHYzijSmi' \
    > test.out 2>&1
eval_tap $? 399 'PublicGetPaymentMethods' test.out

#- 400 PublicGetUnpaidPaymentOrder
samples/cli/sample-apps Platform publicGetUnpaidPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'Ki6n59DnR0BUL0HE' \
    > test.out 2>&1
eval_tap $? 400 'PublicGetUnpaidPaymentOrder' test.out

#- 401 Pay
samples/cli/sample-apps Platform pay \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'n8tiD6HY6CXbKt2C' \
    --paymentProvider 'WALLET' \
    --zipCode 'dvYDWUaBuowvPcKr' \
    --body '{"token": "hjpgh8OLf6Ed6JfY"}' \
    > test.out 2>&1
eval_tap $? 401 'Pay' test.out

#- 402 PublicCheckPaymentOrderPaidStatus
samples/cli/sample-apps Platform publicCheckPaymentOrderPaidStatus \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'IBoxJNA20Ni8A9SW' \
    > test.out 2>&1
eval_tap $? 402 'PublicCheckPaymentOrderPaidStatus' test.out

#- 403 GetPaymentPublicConfig
samples/cli/sample-apps Platform getPaymentPublicConfig \
    --namespace $AB_NAMESPACE \
    --sandbox 'false' \
    --paymentProvider 'WALLET' \
    --region 'MlNQgYydHIlLQHDx' \
    > test.out 2>&1
eval_tap $? 403 'GetPaymentPublicConfig' test.out

#- 404 PublicGetQRCode
samples/cli/sample-apps Platform publicGetQRCode \
    --namespace $AB_NAMESPACE \
    --code '9DLwl3cpjMLh5yPc' \
    > test.out 2>&1
eval_tap $? 404 'PublicGetQRCode' test.out

#- 405 PublicNormalizePaymentReturnUrl
samples/cli/sample-apps Platform publicNormalizePaymentReturnUrl \
    --namespace $AB_NAMESPACE \
    --payerID 'xo9SVQhfXEbHsDuB' \
    --foreinginvoice 'J6I4KnmD3XnQjoSk' \
    --invoiceId 'BWJaBlEyZs5j275o' \
    --payload 'XBFupe1pYfOiGrWN' \
    --redirectResult 'jkkjiKOIy129PVJl' \
    --resultCode 'Fe1bMgpuW7Hw82GR' \
    --sessionId 'RCElfm30Q7UbuGnU' \
    --status 'jiOtODIuaQPg1vVs' \
    --token 'JPJNWfgnvx82Naqg' \
    --type 'P8zKiQzqT8VDwPX4' \
    --userId 'lEQ7eyYmodhI4eOp' \
    --orderNo 'dGQWQbYhaHNUYidN' \
    --paymentOrderNo 'iVMIXIiwqBoaRULQ' \
    --paymentProvider 'ALIPAY' \
    --returnUrl 'Q0y2gGp4RdlnsLVF' \
    > test.out 2>&1
eval_tap $? 405 'PublicNormalizePaymentReturnUrl' test.out

#- 406 GetPaymentTaxValue
samples/cli/sample-apps Platform getPaymentTaxValue \
    --namespace $AB_NAMESPACE \
    --zipCode 'A5YcX8ObqNz8RWH3' \
    --paymentOrderNo '1YVQ8TEQbymek356' \
    --paymentProvider 'WALLET' \
    > test.out 2>&1
eval_tap $? 406 'GetPaymentTaxValue' test.out

#- 407 GetRewardByCode
samples/cli/sample-apps Platform getRewardByCode \
    --namespace $AB_NAMESPACE \
    --rewardCode 'W17Mf9cbOn7K6KSn' \
    > test.out 2>&1
eval_tap $? 407 'GetRewardByCode' test.out

#- 408 QueryRewards1
samples/cli/sample-apps Platform queryRewards1 \
    --namespace $AB_NAMESPACE \
    --eventTopic 'dsiJ4JLVYsemaKa1' \
    --limit '37' \
    --offset '96' \
    --sortBy '["rewardCode:asc", "namespace:asc"]' \
    > test.out 2>&1
eval_tap $? 408 'QueryRewards1' test.out

#- 409 GetReward1
samples/cli/sample-apps Platform getReward1 \
    --namespace $AB_NAMESPACE \
    --rewardId 'dnX4Qv9V0ZYd4yAa' \
    > test.out 2>&1
eval_tap $? 409 'GetReward1' test.out

#- 410 PublicListStores
samples/cli/sample-apps Platform publicListStores \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 410 'PublicListStores' test.out

#- 411 PublicExistsAnyMyActiveEntitlement
samples/cli/sample-apps Platform publicExistsAnyMyActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --appIds '["TUz9LmjmBBTqn0Sx", "UUNjENzbKx0ekyiP", "uYIsFDyh2h0zh6vM"]' \
    --itemIds '["qAfg3Jv6J2JO5wjs", "XPlwnIuFBTT4bMyP", "Osbk9m2BBvQ2tn8c"]' \
    --skus '["Qk5OAihAFhywaunI", "38ec3rnX1Drj9jCZ", "fa4nLqG1OgiEWZCv"]' \
    > test.out 2>&1
eval_tap $? 411 'PublicExistsAnyMyActiveEntitlement' test.out

#- 412 PublicGetMyAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform publicGetMyAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --appId 'obWIUD9DyshyVT6Q' \
    > test.out 2>&1
eval_tap $? 412 'PublicGetMyAppEntitlementOwnershipByAppId' test.out

#- 413 PublicGetMyEntitlementOwnershipByItemId
samples/cli/sample-apps Platform publicGetMyEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --entitlementClazz 'MEDIA' \
    --itemId '9VZov5My3F6YGY0Y' \
    > test.out 2>&1
eval_tap $? 413 'PublicGetMyEntitlementOwnershipByItemId' test.out

#- 414 PublicGetMyEntitlementOwnershipBySku
samples/cli/sample-apps Platform publicGetMyEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --entitlementClazz 'APP' \
    --sku 'Wvmpx1RoHjQp57gk' \
    > test.out 2>&1
eval_tap $? 414 'PublicGetMyEntitlementOwnershipBySku' test.out

#- 415 PublicGetEntitlementOwnershipToken
samples/cli/sample-apps Platform publicGetEntitlementOwnershipToken \
    --namespace $AB_NAMESPACE \
    --appIds '["E0LnwXcyxx8LDEqk", "920Bjg1FT1A6phoa", "Dj989d8V1BHl6jID"]' \
    --itemIds '["ah2eEUZvg7mq74Xi", "zPfaUWqqOrMjqnmM", "TnVJBn69ggYL9sff"]' \
    --skus '["5k5FPb5naRHTZB1R", "iBOQqQPiEcXEAeQJ", "IyJ3PaaayqbcVzr0"]' \
    > test.out 2>&1
eval_tap $? 415 'PublicGetEntitlementOwnershipToken' test.out

#- 416 SyncTwitchDropsEntitlement
samples/cli/sample-apps Platform syncTwitchDropsEntitlement \
    --namespace $AB_NAMESPACE \
    --body '{"gameId": "JQjvY0RBt5vOMDZw", "language": "SX", "region": "pRxxcyWcf0FF1lVg"}' \
    > test.out 2>&1
eval_tap $? 416 'SyncTwitchDropsEntitlement' test.out

#- 417 PublicGetMyWallet
samples/cli/sample-apps Platform publicGetMyWallet \
    --currencyCode 'eRCoqsCkhMMBZs0P' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 417 'PublicGetMyWallet' test.out

#- 418 SyncEpicGameDLC
samples/cli/sample-apps Platform syncEpicGameDLC \
    --namespace $AB_NAMESPACE \
    --userId 'YIBcaz6xVjy7MfT6' \
    --body '{"epicGamesJwtToken": "fiO0dGUcO314DlB2"}' \
    > test.out 2>&1
eval_tap $? 418 'SyncEpicGameDLC' test.out

#- 419 SyncOculusDLC
samples/cli/sample-apps Platform syncOculusDLC \
    --namespace $AB_NAMESPACE \
    --userId 'W4ay0dB8OVk97cSa' \
    > test.out 2>&1
eval_tap $? 419 'SyncOculusDLC' test.out

#- 420 PublicSyncPsnDlcInventory
samples/cli/sample-apps Platform publicSyncPsnDlcInventory \
    --namespace $AB_NAMESPACE \
    --userId 'oDvzz7U71woHGg86' \
    --body '{"serviceLabel": 69}' \
    > test.out 2>&1
eval_tap $? 420 'PublicSyncPsnDlcInventory' test.out

#- 421 PublicSyncPsnDlcInventoryWithMultipleServiceLabels
samples/cli/sample-apps Platform publicSyncPsnDlcInventoryWithMultipleServiceLabels \
    --namespace $AB_NAMESPACE \
    --userId 'e6i1oPYKScoMGz5P' \
    --body '{"serviceLabels": [10, 31, 39]}' \
    > test.out 2>&1
eval_tap $? 421 'PublicSyncPsnDlcInventoryWithMultipleServiceLabels' test.out

#- 422 SyncSteamDLC
samples/cli/sample-apps Platform syncSteamDLC \
    --namespace $AB_NAMESPACE \
    --userId '5dyY5oAo5nafPCME' \
    --body '{"appId": "kbU2Gjx1kGKvqBg6", "steamId": "J7VSGuF8jIwtFxHe"}' \
    > test.out 2>&1
eval_tap $? 422 'SyncSteamDLC' test.out

#- 423 SyncXboxDLC
samples/cli/sample-apps Platform syncXboxDLC \
    --namespace $AB_NAMESPACE \
    --userId 'JsTyu5uTB0BdWjyv' \
    --body '{"xstsToken": "9X2s5HPYWsUyzTb4"}' \
    > test.out 2>&1
eval_tap $? 423 'SyncXboxDLC' test.out

#- 424 PublicQueryUserEntitlements
samples/cli/sample-apps Platform publicQueryUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId '0K0CTAh1MgazLSnr' \
    --appType 'DLC' \
    --entitlementClazz 'ENTITLEMENT' \
    --entitlementName 'bygCHq5anQeiKUPb' \
    --features '["TBeElYsSsfNXhXPQ", "ABxnumTzACA4ZQeX", "UXLUykUHzxLpRADB"]' \
    --itemId '["0Qw3veC22LfGWKHc", "G12PuKHSp3rpOqX2", "5ggyUAyeRXdQA8AZ"]' \
    --limit '16' \
    --offset '29' \
    > test.out 2>&1
eval_tap $? 424 'PublicQueryUserEntitlements' test.out

#- 425 PublicGetUserAppEntitlementByAppId
samples/cli/sample-apps Platform publicGetUserAppEntitlementByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'X205V531In1qjVIQ' \
    --appId 'RL4eXyVhDPdrZTRt' \
    > test.out 2>&1
eval_tap $? 425 'PublicGetUserAppEntitlementByAppId' test.out

#- 426 PublicQueryUserEntitlementsByAppType
samples/cli/sample-apps Platform publicQueryUserEntitlementsByAppType \
    --namespace $AB_NAMESPACE \
    --userId 'akY8hUVDi71USFjU' \
    --limit '20' \
    --offset '52' \
    --appType 'DEMO' \
    > test.out 2>&1
eval_tap $? 426 'PublicQueryUserEntitlementsByAppType' test.out

#- 427 PublicGetUserEntitlementsByIds
samples/cli/sample-apps Platform publicGetUserEntitlementsByIds \
    --namespace $AB_NAMESPACE \
    --userId 'nQTEyd0815vBtTct' \
    --availablePlatformOnly 'true' \
    --ids '["3vgFKzfzyL5Nl7VS", "4zgbqFQPENn5tOha", "gqQtLPBCZx7oN007"]' \
    > test.out 2>&1
eval_tap $? 427 'PublicGetUserEntitlementsByIds' test.out

#- 428 PublicGetUserEntitlementByItemId
eval_tap 0 428 'PublicGetUserEntitlementByItemId # SKIP deprecated' test.out

#- 429 PublicGetUserEntitlementBySku
eval_tap 0 429 'PublicGetUserEntitlementBySku # SKIP deprecated' test.out

#- 430 PublicUserEntitlementHistory
samples/cli/sample-apps Platform publicUserEntitlementHistory \
    --namespace $AB_NAMESPACE \
    --userId 'TchiGOhZKqKons0A' \
    --endDate 'b30qA6paUIHxPa0A' \
    --entitlementClazz 'ENTITLEMENT' \
    --limit '79' \
    --offset '59' \
    --startDate 'X4kiJZAOvbFKn8fQ' \
    > test.out 2>&1
eval_tap $? 430 'PublicUserEntitlementHistory' test.out

#- 431 PublicExistsAnyUserActiveEntitlement
samples/cli/sample-apps Platform publicExistsAnyUserActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'pKRSmmgzRY96bbZC' \
    --appIds '["SiBVXf4nYNTmwZuy", "gQcRdpQva6fQrGwh", "Rm9Nav39ZnGpt2gZ"]' \
    --itemIds '["zlSM5Tecn2bPmPP4", "67k5cB2BicVo21QS", "BhhkcrH2dLvU5e1U"]' \
    --skus '["QDNV91yeYpwRxwPr", "qiR02hfJ2uAMLASr", "SlIRkt0oFVFcFWY7"]' \
    > test.out 2>&1
eval_tap $? 431 'PublicExistsAnyUserActiveEntitlement' test.out

#- 432 PublicGetUserAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform publicGetUserAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'WfpAsNQd7LtfAyS5' \
    --appId 'XmT417kxjq5Z5SHS' \
    > test.out 2>&1
eval_tap $? 432 'PublicGetUserAppEntitlementOwnershipByAppId' test.out

#- 433 PublicGetUserEntitlementOwnershipByItemId
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'Jg5uVocTTLkKrlpX' \
    --entitlementClazz 'OPTIONBOX' \
    --itemId 'uEZg37cyF8i4RCIL' \
    > test.out 2>&1
eval_tap $? 433 'PublicGetUserEntitlementOwnershipByItemId' test.out

#- 434 PublicGetUserEntitlementOwnershipByItemIds
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'ax8wKG9fpBMQFwvv' \
    --ids '["cgAeIvRHTst663N9", "HI6gYlQK39Yuu0z7", "jWv6eso7b0domida"]' \
    > test.out 2>&1
eval_tap $? 434 'PublicGetUserEntitlementOwnershipByItemIds' test.out

#- 435 PublicGetUserEntitlementOwnershipBySku
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --userId 'AkEl9jGwxvYg5p1X' \
    --entitlementClazz 'SUBSCRIPTION' \
    --sku '3X650EhV9ISxZWhf' \
    > test.out 2>&1
eval_tap $? 435 'PublicGetUserEntitlementOwnershipBySku' test.out

#- 436 PublicGetUserEntitlement
samples/cli/sample-apps Platform publicGetUserEntitlement \
    --entitlementId 'v8thHOjfDvi8tTRE' \
    --namespace $AB_NAMESPACE \
    --userId 'YnwTXi6ygArgiUlC' \
    > test.out 2>&1
eval_tap $? 436 'PublicGetUserEntitlement' test.out

#- 437 PublicConsumeUserEntitlement
samples/cli/sample-apps Platform publicConsumeUserEntitlement \
    --entitlementId 'Py8gNGsBUTLb0hUV' \
    --namespace $AB_NAMESPACE \
    --userId 'xY3NzR2uYFkzrStd' \
    --body '{"metadata": {"operationSource": "INVENTORY"}, "options": ["FtL3VYF8liI8HWou", "RQz9uCkKNSBSMPBk", "7VmDCgoFDhTIJGKB"], "requestId": "RLqb3Mx4EXJ4balG", "useCount": 92}' \
    > test.out 2>&1
eval_tap $? 437 'PublicConsumeUserEntitlement' test.out

#- 438 PublicSellUserEntitlement
samples/cli/sample-apps Platform publicSellUserEntitlement \
    --entitlementId 'BmHI2AizrDiC2KWU' \
    --namespace $AB_NAMESPACE \
    --userId 'PcN66tLRnL921Er6' \
    --body '{"requestId": "4JgztPL6b2t4zPRK", "useCount": 78}' \
    > test.out 2>&1
eval_tap $? 438 'PublicSellUserEntitlement' test.out

#- 439 PublicSplitUserEntitlement
samples/cli/sample-apps Platform publicSplitUserEntitlement \
    --entitlementId 'lRT3wZoiC5Ss0Guz' \
    --namespace $AB_NAMESPACE \
    --userId 'jz0i7PVNoKPrar5N' \
    --body '{"metadata": {"operationSource": "INVENTORY"}, "useCount": 0}' \
    > test.out 2>&1
eval_tap $? 439 'PublicSplitUserEntitlement' test.out

#- 440 PublicTransferUserEntitlement
samples/cli/sample-apps Platform publicTransferUserEntitlement \
    --entitlementId 'VZpj2MRVlCyK97Gq' \
    --namespace $AB_NAMESPACE \
    --userId 'jwFFlORdWmAInoS2' \
    --body '{"entitlementId": "CWlBtsiUsIgPF8mg", "metadata": {"operationSource": "INVENTORY"}, "useCount": 62}' \
    > test.out 2>&1
eval_tap $? 440 'PublicTransferUserEntitlement' test.out

#- 441 PublicRedeemCode
samples/cli/sample-apps Platform publicRedeemCode \
    --namespace $AB_NAMESPACE \
    --userId 'ZvIdKyYXYvLEoCCX' \
    --body '{"code": "YYA6jjEM6IdxD8Jc", "language": "bBr-me", "region": "NoUAJAkLbPufxTYA"}' \
    > test.out 2>&1
eval_tap $? 441 'PublicRedeemCode' test.out

#- 442 PublicFulfillAppleIAPItem
samples/cli/sample-apps Platform publicFulfillAppleIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'UQJiGbrRgPsx3ZDz' \
    --body '{"excludeOldTransactions": false, "language": "Pn", "productId": "XqliDOfwSOmI0D4J", "receiptData": "ZopyufdNCjjEAeZE", "region": "4V8M34EdmO2IlBpB", "transactionId": "3Blh5FzHZs84LzYa"}' \
    > test.out 2>&1
eval_tap $? 442 'PublicFulfillAppleIAPItem' test.out

#- 443 SyncEpicGamesInventory
samples/cli/sample-apps Platform syncEpicGamesInventory \
    --namespace $AB_NAMESPACE \
    --userId 'avlVDrP1yvyghELH' \
    --body '{"epicGamesJwtToken": "zqBUT9MOh7EIPYCT"}' \
    > test.out 2>&1
eval_tap $? 443 'SyncEpicGamesInventory' test.out

#- 444 PublicFulfillGoogleIAPItem
samples/cli/sample-apps Platform publicFulfillGoogleIAPItem \
    --namespace $AB_NAMESPACE \
    --userId '4a61goI7uYUXAml7' \
    --body '{"autoAck": true, "autoConsume": false, "language": "oo_Ab", "orderId": "cc2L4b9W3BsL1wcY", "packageName": "4H0Ln8TMO6qKXsUr", "productId": "5RSkhDh4s8eXydqt", "purchaseTime": 71, "purchaseToken": "UfdbjXxvy6xA0OY8", "region": "xKBw0mmnT4IVTcX8", "subscriptionPurchase": false}' \
    > test.out 2>&1
eval_tap $? 444 'PublicFulfillGoogleIAPItem' test.out

#- 445 SyncOculusConsumableEntitlements
samples/cli/sample-apps Platform syncOculusConsumableEntitlements \
    --namespace $AB_NAMESPACE \
    --userId '35WqUQaq5KWmKNNA' \
    > test.out 2>&1
eval_tap $? 445 'SyncOculusConsumableEntitlements' test.out

#- 446 PublicReconcilePlayStationStore
samples/cli/sample-apps Platform publicReconcilePlayStationStore \
    --namespace $AB_NAMESPACE \
    --userId 'gIu9YKEBHraVBn1m' \
    --body '{"currencyCode": "nFJwCIzwQomYfoCa", "price": 0.013225967817460549, "productId": "4BVRsjec6f4jV852", "serviceLabel": 45}' \
    > test.out 2>&1
eval_tap $? 446 'PublicReconcilePlayStationStore' test.out

#- 447 PublicReconcilePlayStationStoreWithMultipleServiceLabels
samples/cli/sample-apps Platform publicReconcilePlayStationStoreWithMultipleServiceLabels \
    --namespace $AB_NAMESPACE \
    --userId 'c8E4TWWod3Zep2yO' \
    --body '{"currencyCode": "LCFKNfqDrTBQi0Qs", "price": 0.7185380400762313, "productId": "OByjafrRGgZu5Rvo", "serviceLabels": [77, 44, 45]}' \
    > test.out 2>&1
eval_tap $? 447 'PublicReconcilePlayStationStoreWithMultipleServiceLabels' test.out

#- 448 SyncSteamInventory
samples/cli/sample-apps Platform syncSteamInventory \
    --namespace $AB_NAMESPACE \
    --userId 'iuT026pPto6NDL5H' \
    --body '{"appId": "N5t3eGM8myHdmEe8", "currencyCode": "kqqgTHk4CeXpL1iw", "language": "YM-vuiT", "price": 0.4772624890744277, "productId": "aRuokTyNs5HxY1dy", "region": "8kqrhESr73dfkbhQ", "steamId": "bgB6xhDkMeZcCcIK"}' \
    > test.out 2>&1
eval_tap $? 448 'SyncSteamInventory' test.out

#- 449 PublicQueryUserThirdPartySubscription
samples/cli/sample-apps Platform publicQueryUserThirdPartySubscription \
    --namespace $AB_NAMESPACE \
    --platform 'OCULUS' \
    --userId 'S0M6fxBcBdecsuZ5' \
    --activeOnly 'false' \
    --groupId '7nH9tPcqSXh0YWqM' \
    --limit '33' \
    --offset '12' \
    --productId 'pyNJl3b0nY0y5Mwq' \
    > test.out 2>&1
eval_tap $? 449 'PublicQueryUserThirdPartySubscription' test.out

#- 450 SyncTwitchDropsEntitlement1
samples/cli/sample-apps Platform syncTwitchDropsEntitlement1 \
    --namespace $AB_NAMESPACE \
    --userId 'vsqJJL2aVY8aroD3' \
    --body '{"gameId": "E94tFvJehhWYmYFl", "language": "zD", "region": "Nasu9LQUBr4vx4u2"}' \
    > test.out 2>&1
eval_tap $? 450 'SyncTwitchDropsEntitlement1' test.out

#- 451 SyncXboxInventory
samples/cli/sample-apps Platform syncXboxInventory \
    --namespace $AB_NAMESPACE \
    --userId 'TnZIVUNy5l8PNRBT' \
    --body '{"currencyCode": "Beh3Tfw9Ba9cMEgH", "price": 0.668734014167216, "productId": "UdPFU7PiIeNV1hbt", "xstsToken": "yDkXWXq2KgVp6JgJ"}' \
    > test.out 2>&1
eval_tap $? 451 'SyncXboxInventory' test.out

#- 452 PublicQueryUserOrders
samples/cli/sample-apps Platform publicQueryUserOrders \
    --namespace $AB_NAMESPACE \
    --userId 'Ma0NXXADCX2Nfk4v' \
    --discounted 'false' \
    --itemId 'FDTgKiHv6hELz8v6' \
    --limit '80' \
    --offset '35' \
    --status 'FULFILLED' \
    > test.out 2>&1
eval_tap $? 452 'PublicQueryUserOrders' test.out

#- 453 PublicCreateUserOrder
samples/cli/sample-apps Platform publicCreateUserOrder \
    --namespace $AB_NAMESPACE \
    --userId 'WcihRaMg6FoMAguk' \
    --body '{"currencyCode": "XTdadkQC3qxiGD1t", "discountCodes": ["oH7u3bTgybfo27p6", "KMLJWxQyIEIlKBjQ", "Q5SLfbhqs748IASb"], "discountedPrice": 73, "ext": {"KJZscUYdGPu8F6J7": {}, "6an0l3KS6PrUPYXf": {}, "VSapHOoRzw2DDVmp": {}}, "itemId": "puvdEpPWM4m97qF5", "language": "FPZM-573", "price": 26, "quantity": 89, "region": "5gG6js8WdawBsOi4", "returnUrl": "IVzO84fpKFCSEP5u", "sectionId": "TbjPDiMpUiMwaQlp"}' \
    > test.out 2>&1
eval_tap $? 453 'PublicCreateUserOrder' test.out

#- 454 PublicPreviewOrderPrice
samples/cli/sample-apps Platform publicPreviewOrderPrice \
    --namespace $AB_NAMESPACE \
    --userId 'OMqHmDC5eG1ZSbYD' \
    --body '{"currencyCode": "sDsY0mtgeJSgoBTj", "discountCodes": ["PQJ6WM7X7GQQ4Q1Y", "aG2K7Qjdq36Bh4gw", "ykUiKDqkf7nYi6gT"], "discountedPrice": 89, "itemId": "jig2cQDMmJcFDCeE", "price": 91, "quantity": 13}' \
    > test.out 2>&1
eval_tap $? 454 'PublicPreviewOrderPrice' test.out

#- 455 PublicGetUserOrder
samples/cli/sample-apps Platform publicGetUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'sIPQbjsFJ1eT7Eo8' \
    --userId 'wwlMa7RNvzHtJeWp' \
    > test.out 2>&1
eval_tap $? 455 'PublicGetUserOrder' test.out

#- 456 PublicCancelUserOrder
samples/cli/sample-apps Platform publicCancelUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'eB08mO7enwJEl5XD' \
    --userId 'tfJrYYdRooyBFDFn' \
    > test.out 2>&1
eval_tap $? 456 'PublicCancelUserOrder' test.out

#- 457 PublicGetUserOrderHistories
samples/cli/sample-apps Platform publicGetUserOrderHistories \
    --namespace $AB_NAMESPACE \
    --orderNo '64lmPFaRu5SmjYSX' \
    --userId 'OVTNdjoHo8tqxQ3w' \
    > test.out 2>&1
eval_tap $? 457 'PublicGetUserOrderHistories' test.out

#- 458 PublicDownloadUserOrderReceipt
samples/cli/sample-apps Platform publicDownloadUserOrderReceipt \
    --namespace $AB_NAMESPACE \
    --orderNo 'UmhkRECEwPXRRHtf' \
    --userId '0C5AkpfhI0xlhIi5' \
    > test.out 2>&1
eval_tap $? 458 'PublicDownloadUserOrderReceipt' test.out

#- 459 PublicGetPaymentAccounts
samples/cli/sample-apps Platform publicGetPaymentAccounts \
    --namespace $AB_NAMESPACE \
    --userId 'jgDPbsGNMlFhBgPS' \
    > test.out 2>&1
eval_tap $? 459 'PublicGetPaymentAccounts' test.out

#- 460 PublicDeletePaymentAccount
samples/cli/sample-apps Platform publicDeletePaymentAccount \
    --id 'rlbK8W8HyYxaFgzJ' \
    --namespace $AB_NAMESPACE \
    --type 'paypal' \
    --userId '6sSpqRloYpy9yhyQ' \
    > test.out 2>&1
eval_tap $? 460 'PublicDeletePaymentAccount' test.out

#- 461 PublicListActiveSections
samples/cli/sample-apps Platform publicListActiveSections \
    --namespace $AB_NAMESPACE \
    --userId 'gjJUnxshv95kIc8J' \
    --autoCalcEstimatedPrice 'false' \
    --language 'W8jR4sT8f8KYe0AI' \
    --region 'GA3HH2ISHLt1GlmU' \
    --storeId 'L1YKwbtuD2Wv6kfU' \
    --viewId 'Fow7nV0zu1O0rUZr' \
    > test.out 2>&1
eval_tap $? 461 'PublicListActiveSections' test.out

#- 462 PublicQueryUserSubscriptions
samples/cli/sample-apps Platform publicQueryUserSubscriptions \
    --namespace $AB_NAMESPACE \
    --userId 'JjkClIrTHmxfOcw0' \
    --chargeStatus 'RECURRING_CHARGING' \
    --itemId 'WXXIvWYtdt02D3ua' \
    --limit '52' \
    --offset '1' \
    --sku 's6Tjez1MuTtiXfIj' \
    --status 'INIT' \
    --subscribedBy 'PLATFORM' \
    > test.out 2>&1
eval_tap $? 462 'PublicQueryUserSubscriptions' test.out

#- 463 PublicSubscribeSubscription
samples/cli/sample-apps Platform publicSubscribeSubscription \
    --namespace $AB_NAMESPACE \
    --userId 'xZnmdpZZ5NKSLTdl' \
    --body '{"currencyCode": "6j9DZTepPhIW1IJx", "itemId": "RgExW5jtpAUpkwUA", "language": "KNf-126", "region": "nqngwwUFkWuAORsc", "returnUrl": "lKSsKHfI4Cjpy7jA", "source": "0ak45PMCfCXP1IXq"}' \
    > test.out 2>&1
eval_tap $? 463 'PublicSubscribeSubscription' test.out

#- 464 PublicCheckUserSubscriptionSubscribableByItemId
samples/cli/sample-apps Platform publicCheckUserSubscriptionSubscribableByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'SZT2iOiLzdGsRvNG' \
    --itemId 'd0IIIscAWirh1cW6' \
    > test.out 2>&1
eval_tap $? 464 'PublicCheckUserSubscriptionSubscribableByItemId' test.out

#- 465 PublicGetUserSubscription
samples/cli/sample-apps Platform publicGetUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'tyRfaOxP0Ks5WrZn' \
    --userId 'zMdalq8Q3HgjQrpE' \
    > test.out 2>&1
eval_tap $? 465 'PublicGetUserSubscription' test.out

#- 466 PublicChangeSubscriptionBillingAccount
samples/cli/sample-apps Platform publicChangeSubscriptionBillingAccount \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'gkr5COUIRQCrnm5l' \
    --userId 'DdBBFHS3dhrBnlqY' \
    > test.out 2>&1
eval_tap $? 466 'PublicChangeSubscriptionBillingAccount' test.out

#- 467 PublicCancelSubscription
samples/cli/sample-apps Platform publicCancelSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'DjyQBiiqVxu1Ssx3' \
    --userId 'y5Z5Z2moDO8FuZ2t' \
    --body '{"immediate": true, "reason": "0op6L2cUd0Rb1Jfi"}' \
    > test.out 2>&1
eval_tap $? 467 'PublicCancelSubscription' test.out

#- 468 PublicGetUserSubscriptionBillingHistories
samples/cli/sample-apps Platform publicGetUserSubscriptionBillingHistories \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'FziB7we4rmomQyay' \
    --userId 'm54XFH62ogj6zKpu' \
    --excludeFree 'true' \
    --limit '39' \
    --offset '87' \
    > test.out 2>&1
eval_tap $? 468 'PublicGetUserSubscriptionBillingHistories' test.out

#- 469 PublicListViews
samples/cli/sample-apps Platform publicListViews \
    --namespace $AB_NAMESPACE \
    --userId 'BxWTFxNCSgRsu1Xa' \
    --language 'He9S1oARqdS1zEby' \
    --storeId 'cuLGyHdas5lUoR8y' \
    > test.out 2>&1
eval_tap $? 469 'PublicListViews' test.out

#- 470 PublicGetWallet
samples/cli/sample-apps Platform publicGetWallet \
    --currencyCode 'GjZWPwa990N43xFt' \
    --namespace $AB_NAMESPACE \
    --userId 'xFtlN4ODwTMVydPU' \
    > test.out 2>&1
eval_tap $? 470 'PublicGetWallet' test.out

#- 471 PublicListUserWalletTransactions
samples/cli/sample-apps Platform publicListUserWalletTransactions \
    --currencyCode 'vouBGAPgC1wOAFzt' \
    --namespace $AB_NAMESPACE \
    --userId 'yFAR19DpEbQN8Br4' \
    --limit '12' \
    --offset '86' \
    > test.out 2>&1
eval_tap $? 471 'PublicListUserWalletTransactions' test.out

#- 472 PublicGetMyDLCContent
samples/cli/sample-apps Platform publicGetMyDLCContent \
    --includeAllNamespaces 'false' \
    --type 'OCULUS' \
    > test.out 2>&1
eval_tap $? 472 'PublicGetMyDLCContent' test.out

#- 473 QueryFulfillments
samples/cli/sample-apps Platform queryFulfillments \
    --namespace $AB_NAMESPACE \
    --endTime 'nw0SBs89f2kIRuuO' \
    --limit '55' \
    --offset '93' \
    --startTime '5h3TbckLSjxMEWxD' \
    --state 'REVOKE_FAILED' \
    --transactionId 'CGxhWJ5EjcvZtLiF' \
    --userId 'Lbp1GkkEdWeO9h97' \
    > test.out 2>&1
eval_tap $? 473 'QueryFulfillments' test.out

#- 474 QueryItemsV2
samples/cli/sample-apps Platform queryItemsV2 \
    --namespace $AB_NAMESPACE \
    --appType 'DLC' \
    --availableDate 'i3p1cMTqhEBJleqT' \
    --baseAppId '9PXEFg649ZAzSFOJ' \
    --categoryPath 'CeC5aF0JP18dDxbK' \
    --features 'j5u5CjOafy1EawBn' \
    --includeSubCategoryItem 'false' \
    --itemName 'Z5nK1z3jJu2eQxem' \
    --itemStatus 'INACTIVE' \
    --itemType '["LOOTBOX", "MEDIA", "OPTIONBOX"]' \
    --limit '91' \
    --offset '24' \
    --region 'CLRAUBujw4pIu5Kr' \
    --sectionExclusive 'true' \
    --sortBy '["createdAt:asc", "updatedAt", "updatedAt:asc"]' \
    --storeId 'bordYZvWjzqUSd6g' \
    --tags 'V59VIyAi5hPN0wJl' \
    --targetNamespace 'vKmAUpMJTYknsUzY' \
    --withTotal 'true' \
    > test.out 2>&1
eval_tap $? 474 'QueryItemsV2' test.out

#- 475 ImportStore1
samples/cli/sample-apps Platform importStore1 \
    --namespace $AB_NAMESPACE \
    --storeId '8TYOe5f1ixuPnAuP' \
    --strictMode 'false' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 475 'ImportStore1' test.out

#- 476 ExportStore1
samples/cli/sample-apps Platform exportStore1 \
    --namespace $AB_NAMESPACE \
    --storeId 'kZKHznDPhfIkuioL' \
    --body '{"itemIds": ["QAbXWPrePz6X9EXa", "7u4yHCxWwLk1Mrb6", "kJ4oIIcUTdgP66FV"]}' \
    > test.out 2>&1
eval_tap $? 476 'ExportStore1' test.out

#- 477 FulfillRewardsV2
samples/cli/sample-apps Platform fulfillRewardsV2 \
    --namespace $AB_NAMESPACE \
    --userId 'wT0mM7adLBL7shnr' \
    --body '{"entitlementCollectionId": "0AmVTGV89LvsygfH", "entitlementOrigin": "Other", "metadata": {"8fB7UOWVmtNynWQh": {}, "ky6Ov9pFtKZiew7G": {}, "gYIHKDNWshM60CzQ": {}}, "origin": "System", "rewards": [{"currency": {"currencyCode": "HGgEd7wkO53MCI6P", "namespace": "NzqwkDXeY5y8OG53"}, "item": {"itemId": "JEPcmALdLuhfHeqq", "itemName": "PT6IY3ZdwB1qnQBi", "itemSku": "vWPdhXlGxQI2NgwQ", "itemType": "ZPrmovQjvqZyQ9ET"}, "quantity": 71, "type": "ITEM"}, {"currency": {"currencyCode": "rIc07sQnzuL7xVAZ", "namespace": "HlJl88y03mEyC9Pq"}, "item": {"itemId": "kzDJmepv7X2fMplu", "itemName": "SsX4QmcFRBCGFqYR", "itemSku": "p6MGFHH9YzOy4mIG", "itemType": "1P9XqHO4W2D4SwSg"}, "quantity": 78, "type": "CURRENCY"}, {"currency": {"currencyCode": "Aq0znd4yXgcHZRTN", "namespace": "bSYGN1o2RHNiFUxi"}, "item": {"itemId": "MEcmM5Se4dq1qSic", "itemName": "8uwFYJsVobYg9ZjY", "itemSku": "s8JQPdsdLcKS05R3", "itemType": "nUThbER4ZLeinfsx"}, "quantity": 36, "type": "CURRENCY"}], "source": "DLC", "transactionId": "Klx5p3w8KCnoDgJI"}' \
    > test.out 2>&1
eval_tap $? 477 'FulfillRewardsV2' test.out

#- 478 FulfillItems
samples/cli/sample-apps Platform fulfillItems \
    --namespace $AB_NAMESPACE \
    --transactionId 's9GE5BjZQLvmBtqQ' \
    --userId 'VutGRBa6Qb6RrrG4' \
    --body '{"items": [{"duration": 21, "endDate": "1977-04-29T00:00:00Z", "entitlementCollectionId": "IxXK8GJIGadXewc2", "entitlementOrigin": "Steam", "itemId": "Qlb2Knr9hbIm2dKE", "itemSku": "OdDsjzl1QjhxRnwn", "language": "FRgQzd8qF739N5hj", "metadata": {"6A77Nid4s1cH98Qn": {}, "oOLQTRwDwL7XWNHh": {}, "LNpdv6yypAMZou43": {}}, "orderNo": "yAeudiskxhplLlrK", "origin": "Twitch", "quantity": 20, "region": "2KfqVz0VULzjC94h", "source": "REWARD", "startDate": "1984-09-08T00:00:00Z", "storeId": "ZS3MHhL5mOoAsFNo"}, {"duration": 18, "endDate": "1993-07-01T00:00:00Z", "entitlementCollectionId": "iwTDRiJuyp6a3ED1", "entitlementOrigin": "GooglePlay", "itemId": "EDisStxf6fM64K8F", "itemSku": "DKcBGgdlbGMT5tSm", "language": "ZTEK26xzK8Vyj5t7", "metadata": {"4bn8Wpbb18mR4odY": {}, "zLkUuDBfe9p0M0ea": {}, "bRaklYXtUhrZcYlk": {}}, "orderNo": "7493bv5lHoOxrmdO", "origin": "System", "quantity": 72, "region": "gTkxo6zXwn5zfX9j", "source": "PAYMENT", "startDate": "1972-06-03T00:00:00Z", "storeId": "s9aqxkiR09yc5SQT"}, {"duration": 56, "endDate": "1998-07-09T00:00:00Z", "entitlementCollectionId": "NQrC0kyi3JOIi0ni", "entitlementOrigin": "GooglePlay", "itemId": "UNjoJAe4My01JI9V", "itemSku": "RlFi4a5gfnZkMfmO", "language": "Mk82vOTViBsUgj6k", "metadata": {"kBoxAvWsVusiiNhn": {}, "pi2fcVx4eEl0YgaF": {}, "npD9dHTizdJgBsvM": {}}, "orderNo": "dO1BgAC7kIUod8fw", "origin": "IOS", "quantity": 50, "region": "2D9J0SIwt9lKrBD1", "source": "PROMOTION", "startDate": "1971-09-15T00:00:00Z", "storeId": "DlCWK58DrbVHbivw"}]}' \
    > test.out 2>&1
eval_tap $? 478 'FulfillItems' test.out

#- 479 RetryFulfillItems
samples/cli/sample-apps Platform retryFulfillItems \
    --namespace $AB_NAMESPACE \
    --transactionId 'SRnJeZmcDeXeDDP3' \
    --userId '7RFxWHmUy2cAl99x' \
    > test.out 2>&1
eval_tap $? 479 'RetryFulfillItems' test.out

#- 480 RevokeItems
samples/cli/sample-apps Platform revokeItems \
    --namespace $AB_NAMESPACE \
    --transactionId 'hcrbxNJeM9VpZmSy' \
    --userId 'cAzEo6xAVe5UW9Zy' \
    > test.out 2>&1
eval_tap $? 480 'RevokeItems' test.out

#- 481 V2PublicFulfillAppleIAPItem
samples/cli/sample-apps Platform v2PublicFulfillAppleIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'Y49q09zmO87nZgRT' \
    --body '{"transactionId": "PqlvBz3gComW5tbd"}' \
    > test.out 2>&1
eval_tap $? 481 'V2PublicFulfillAppleIAPItem' test.out


rm -f "tmp.dat"

exit $EXIT_CODE