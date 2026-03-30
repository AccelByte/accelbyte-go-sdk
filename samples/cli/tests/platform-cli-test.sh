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
echo "1..509"

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
    --id '3pvEQ18o04QQhAHA' \
    > test.out 2>&1
eval_tap $? 3 'GetFulfillmentScript' test.out

#- 4 CreateFulfillmentScript
samples/cli/sample-apps Platform createFulfillmentScript \
    --id 'W6VwDqlUQErrC5cd' \
    --body '{"grantDays": "sfPVxPz64eO2kjjF"}' \
    > test.out 2>&1
eval_tap $? 4 'CreateFulfillmentScript' test.out

#- 5 DeleteFulfillmentScript
samples/cli/sample-apps Platform deleteFulfillmentScript \
    --id '51pgVMkti4SuM0hA' \
    > test.out 2>&1
eval_tap $? 5 'DeleteFulfillmentScript' test.out

#- 6 UpdateFulfillmentScript
samples/cli/sample-apps Platform updateFulfillmentScript \
    --id 'vdwDXD22dfEXa103' \
    --body '{"grantDays": "OxnVy09TQ7HcKdQ3"}' \
    > test.out 2>&1
eval_tap $? 6 'UpdateFulfillmentScript' test.out

#- 7 ListItemTypeConfigs
samples/cli/sample-apps Platform listItemTypeConfigs \
    > test.out 2>&1
eval_tap $? 7 'ListItemTypeConfigs' test.out

#- 8 CreateItemTypeConfig
samples/cli/sample-apps Platform createItemTypeConfig \
    --body '{"clazz": "Pa3jYuMYhcUfaBTS", "dryRun": false, "fulfillmentUrl": "SrC5WdUw0HyG02aj", "itemType": "MEDIA", "purchaseConditionUrl": "J4VooGiYPT8Bk1sc"}' \
    > test.out 2>&1
eval_tap $? 8 'CreateItemTypeConfig' test.out

#- 9 SearchItemTypeConfig
samples/cli/sample-apps Platform searchItemTypeConfig \
    --clazz 'sknIA5KfqDJhuKNm' \
    --itemType 'BUNDLE' \
    > test.out 2>&1
eval_tap $? 9 'SearchItemTypeConfig' test.out

#- 10 GetItemTypeConfig
samples/cli/sample-apps Platform getItemTypeConfig \
    --id '11demYK94sNYBhkF' \
    > test.out 2>&1
eval_tap $? 10 'GetItemTypeConfig' test.out

#- 11 UpdateItemTypeConfig
samples/cli/sample-apps Platform updateItemTypeConfig \
    --id 'Xrai3kUNW70YzCFv' \
    --body '{"clazz": "c2xPb5QKfTPTkihf", "dryRun": true, "fulfillmentUrl": "fbOIW8I3LbgnQjMW", "purchaseConditionUrl": "eAyFPDyHA9kBGK66"}' \
    > test.out 2>&1
eval_tap $? 11 'UpdateItemTypeConfig' test.out

#- 12 DeleteItemTypeConfig
samples/cli/sample-apps Platform deleteItemTypeConfig \
    --id 'hM7VN3TOeZ8eDKoI' \
    > test.out 2>&1
eval_tap $? 12 'DeleteItemTypeConfig' test.out

#- 13 QueryCampaigns
samples/cli/sample-apps Platform queryCampaigns \
    --namespace $AB_NAMESPACE \
    --limit '43' \
    --name '2iI5ixQfWtuBC12o' \
    --offset '32' \
    --tag 'B80lI2qnHI5d0tLO' \
    > test.out 2>&1
eval_tap $? 13 'QueryCampaigns' test.out

#- 14 CreateCampaign
samples/cli/sample-apps Platform createCampaign \
    --namespace $AB_NAMESPACE \
    --body '{"description": "akCixvkCGBAfnJRj", "discountConfig": {"categories": [{"categoryPath": "lRd7Sm90ujtDH96S", "includeSubCategories": true}, {"categoryPath": "1znnP5Q3jypY4bzC", "includeSubCategories": true}, {"categoryPath": "uwVhDBYsxFBmxjsk", "includeSubCategories": false}], "currencyCode": "Yx9ikpltjYyPL2nY", "currencyNamespace": "3vgMbdE5k9VV4hnK", "discountAmount": 70, "discountPercentage": 63, "discountType": "AMOUNT", "items": [{"itemId": "NzmdJmr5p41m9P7Y", "itemName": "paTFoP1CteUS7WLK"}, {"itemId": "nGVpVznZL78Mly4S", "itemName": "fn7uXRh0VAdnakX4"}, {"itemId": "InIEdD1yQZEKAR9k", "itemName": "dVSG6neybWKTHEBS"}], "restrictType": "ITEMS_AND_CATEGORIES", "stackable": true}, "items": [{"extraSubscriptionDays": 47, "itemId": "K5Y03NkdxQMOuS8h", "itemName": "JThrpJEyRDePj7J2", "quantity": 85}, {"extraSubscriptionDays": 7, "itemId": "thzC9me7wiWM1JMS", "itemName": "tJk055TRbp9qr3PK", "quantity": 55}, {"extraSubscriptionDays": 51, "itemId": "Wwud3ZSLC1jaGFUJ", "itemName": "MHAQeBsbbs04XnZ8", "quantity": 30}], "maxRedeemCountPerCampaignPerUser": 67, "maxRedeemCountPerCode": 32, "maxRedeemCountPerCodePerUser": 6, "maxSaleCount": 5, "name": "gNuOH5e93rFpugEE", "redeemEnd": "1992-06-16T00:00:00Z", "redeemStart": "1994-11-19T00:00:00Z", "redeemType": "ITEM", "status": "INACTIVE", "tags": ["lzIDR9FghTLmBJVR", "SaV9nEvlwCXzHP4a", "BNWEQdHgZAx4oFh1"], "type": "REDEMPTION"}' \
    > test.out 2>&1
eval_tap $? 14 'CreateCampaign' test.out

#- 15 GetCampaign
samples/cli/sample-apps Platform getCampaign \
    --campaignId '8X8pnFjOIKaxlM1M' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 15 'GetCampaign' test.out

#- 16 UpdateCampaign
samples/cli/sample-apps Platform updateCampaign \
    --campaignId 'ABZnSTRxnMZtZG54' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "iMJBkWYWhLWellsl", "discountConfig": {"categories": [{"categoryPath": "UsopnbJqiAmRCuHz", "includeSubCategories": false}, {"categoryPath": "FFU5ozv1DndFiKHj", "includeSubCategories": true}, {"categoryPath": "mwWrEq0Sfnpjsz3y", "includeSubCategories": false}], "currencyCode": "Sk13mn3Xf4s1PM6E", "currencyNamespace": "CvJ7M0o5Vv0fXe0y", "discountAmount": 9, "discountPercentage": 18, "discountType": "PERCENTAGE", "items": [{"itemId": "lIhIUQwWWkwmtDtx", "itemName": "kd3dFlq4jt25mjaL"}, {"itemId": "ScHpreYXMco4uU78", "itemName": "izUVrI4Xdk8APIxZ"}, {"itemId": "EOUp4GU397RdeT6q", "itemName": "qJnOJhSGOqDoEF06"}], "restrictType": "NONE", "stackable": false}, "items": [{"extraSubscriptionDays": 80, "itemId": "5FOpVlRU26S32uQm", "itemName": "jNWJMFSuaYxUgtKv", "quantity": 74}, {"extraSubscriptionDays": 8, "itemId": "Q2AUugVxX3DNQJhZ", "itemName": "665YMftfSaaik7Hd", "quantity": 4}, {"extraSubscriptionDays": 99, "itemId": "iLFxrEJubNXWpDV8", "itemName": "ieKrr8ylChGISm2S", "quantity": 42}], "maxRedeemCountPerCampaignPerUser": 95, "maxRedeemCountPerCode": 72, "maxRedeemCountPerCodePerUser": 62, "maxSaleCount": 36, "name": "oZULUz9pdGgBCJ1G", "redeemEnd": "1987-09-27T00:00:00Z", "redeemStart": "1976-04-25T00:00:00Z", "redeemType": "ITEM", "status": "ACTIVE", "tags": ["whjDX3t5HCVtjNHX", "nAVttuafaZjYizay", "z6NnE6TNcH7AfjHZ"]}' \
    > test.out 2>&1
eval_tap $? 16 'UpdateCampaign' test.out

#- 17 RenameBatch
samples/cli/sample-apps Platform renameBatch \
    --campaignId 'ycq4HjYexsBGCABM' \
    --namespace $AB_NAMESPACE \
    --body '{"newName": "niDhfGHypVXi8EX1", "oldName": "HG3zj8RfpltVjOcr"}' \
    > test.out 2>&1
eval_tap $? 17 'RenameBatch' test.out

#- 18 QueryCampaignBatchNames
samples/cli/sample-apps Platform queryCampaignBatchNames \
    --campaignId '6gtpXY9ruUnUzUdq' \
    --namespace $AB_NAMESPACE \
    --batchName 'tfVWOn6iwOENoYu4' \
    --limit '34' \
    > test.out 2>&1
eval_tap $? 18 'QueryCampaignBatchNames' test.out

#- 19 GetCampaignDynamic
samples/cli/sample-apps Platform getCampaignDynamic \
    --campaignId 'sa4A02z0E8jIyLzF' \
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
    --body '{"enableInventoryCheck": false, "itemDeletionCheckConfig": ["CATALOG", "ENTITLEMENT", "CAMPAIGN"]}' \
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
    --body '{"appConfig": {"appName": "bKzLUWzucOjL68SY"}, "customConfig": {"connectionType": "TLS", "grpcServerAddress": "OH9WsD92YrSZcX5r"}, "extendType": "APP"}' \
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
    --body '{"appConfig": {"appName": "rvDhHuNMTStZYkoX"}, "customConfig": {"connectionType": "INSECURE", "grpcServerAddress": "ayFhA2X4DhGB2Olh"}, "extendType": "CUSTOM"}' \
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
    --storeId 'eRJtQpcSLDppra6w' \
    > test.out 2>&1
eval_tap $? 31 'GetRootCategories' test.out

#- 32 CreateCategory
samples/cli/sample-apps Platform createCategory \
    --namespace $AB_NAMESPACE \
    --storeId 'GnXNiLStGkop1VcU' \
    --body '{"categoryPath": "vAFfzw9YFmGwPxpU", "localizationDisplayNames": {"fPjw2GQPWbZ4WJkg": "xvEJqqzmT19DaWNs", "vRTFH1jdbyYxOzvb": "MB8c3W8gUC6PD041", "lmyJTSKvmhutQFYH": "TdqR220bgKF0hgXC"}}' \
    > test.out 2>&1
eval_tap $? 32 'CreateCategory' test.out

#- 33 ListCategoriesBasic
samples/cli/sample-apps Platform listCategoriesBasic \
    --namespace $AB_NAMESPACE \
    --storeId 'NfUpWmwG9wr8JdjG' \
    > test.out 2>&1
eval_tap $? 33 'ListCategoriesBasic' test.out

#- 34 GetCategory
samples/cli/sample-apps Platform getCategory \
    --categoryPath 'MfrMkjM6sTRWjmIC' \
    --namespace $AB_NAMESPACE \
    --storeId 'UYm6dd2znCoFVRNC' \
    > test.out 2>&1
eval_tap $? 34 'GetCategory' test.out

#- 35 UpdateCategory
samples/cli/sample-apps Platform updateCategory \
    --categoryPath 'bjNImP1WDLWWEQ4r' \
    --namespace $AB_NAMESPACE \
    --storeId 'wW1yEld9VJgdEBbK' \
    --body '{"localizationDisplayNames": {"b3eUHbaH1UhzsRfi": "JXezdMOvpasOuedw", "3GwfKsCs4Yz0eWmF": "frYEXuoWgKKOyHC7", "RDVCFxMFM17kKssf": "dIpmnMO8hFm93723"}}' \
    > test.out 2>&1
eval_tap $? 35 'UpdateCategory' test.out

#- 36 DeleteCategory
samples/cli/sample-apps Platform deleteCategory \
    --categoryPath 'YmZR6oGpA2tQ1x6o' \
    --namespace $AB_NAMESPACE \
    --storeId 'slLjLggXm20t4b50' \
    > test.out 2>&1
eval_tap $? 36 'DeleteCategory' test.out

#- 37 GetChildCategories
samples/cli/sample-apps Platform getChildCategories \
    --categoryPath 'DOjrg5gUkaqU4aZF' \
    --namespace $AB_NAMESPACE \
    --storeId '7biinEz1xPNLFplH' \
    > test.out 2>&1
eval_tap $? 37 'GetChildCategories' test.out

#- 38 GetDescendantCategories
samples/cli/sample-apps Platform getDescendantCategories \
    --categoryPath 'FQJaifXcd2r9tgcc' \
    --namespace $AB_NAMESPACE \
    --storeId '9eD0XMIhOZbQVnlW' \
    > test.out 2>&1
eval_tap $? 38 'GetDescendantCategories' test.out

#- 39 QueryCodes
samples/cli/sample-apps Platform queryCodes \
    --campaignId 'i6MjHZXWFGdtqx7d' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --batchName 'OX4vO5HWmZhHS0nn' \
    --batchNo '[35, 11, 79]' \
    --code 'I1GkuLGrT3kACbxP' \
    --limit '7' \
    --offset '33' \
    --withBatchName 'true' \
    > test.out 2>&1
eval_tap $? 39 'QueryCodes' test.out

#- 40 CreateCodes
samples/cli/sample-apps Platform createCodes \
    --campaignId 'w6zLnPbO6vbuKtdD' \
    --namespace $AB_NAMESPACE \
    --body '{"batchName": "U5pGOeHEbJWaoaMw", "codeValue": "ygxj4Ep3JIxa0H08", "quantity": 30}' \
    > test.out 2>&1
eval_tap $? 40 'CreateCodes' test.out

#- 41 Download
samples/cli/sample-apps Platform download \
    --campaignId 'ZyB5bFYcIqY1Lopu' \
    --namespace $AB_NAMESPACE \
    --batchName '0XPBw5omLq6ZUm5v' \
    --batchNo '[64, 81, 54]' \
    --withBatchName 'false' \
    > test.out 2>&1
eval_tap $? 41 'Download' test.out

#- 42 BulkDisableCodes
samples/cli/sample-apps Platform bulkDisableCodes \
    --campaignId 'JkgRsCgMGPq2477U' \
    --namespace $AB_NAMESPACE \
    --batchName 'mB1kR785V9TAziu5' \
    --batchNo '[7, 32, 98]' \
    > test.out 2>&1
eval_tap $? 42 'BulkDisableCodes' test.out

#- 43 BulkEnableCodes
samples/cli/sample-apps Platform bulkEnableCodes \
    --campaignId 'xTVaPuJB6Ufss6x9' \
    --namespace $AB_NAMESPACE \
    --batchName 'Blxcf2NrY27n38M9' \
    --batchNo '[47, 27, 45]' \
    > test.out 2>&1
eval_tap $? 43 'BulkEnableCodes' test.out

#- 44 QueryRedeemHistory
samples/cli/sample-apps Platform queryRedeemHistory \
    --campaignId 'Ykmy4cNdwUd8xafG' \
    --namespace $AB_NAMESPACE \
    --code 'rm1Rsi1W6qCil0C1' \
    --limit '75' \
    --offset '75' \
    --userId 'NdS9XIvNAXVtxPsm' \
    > test.out 2>&1
eval_tap $? 44 'QueryRedeemHistory' test.out

#- 45 GetCode
samples/cli/sample-apps Platform getCode \
    --code '302qSZFfgY5x30Jd' \
    --namespace $AB_NAMESPACE \
    --redeemable 'true' \
    --withBatchName 'false' \
    > test.out 2>&1
eval_tap $? 45 'GetCode' test.out

#- 46 DisableCode
samples/cli/sample-apps Platform disableCode \
    --code '4OgB3LFulU7q12ss' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 46 'DisableCode' test.out

#- 47 EnableCode
samples/cli/sample-apps Platform enableCode \
    --code 'AJ8APBHenYU1r841' \
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
    --body '{"currencyCode": "ObsobsVvKUh5pFxw", "currencySymbol": "pAyjzOEN0S9Jvyle", "currencyType": "VIRTUAL", "decimals": 14, "localizationDescriptions": {"g6I7l3GKJBSoL6sw": "zWXV1BkSzuobNWf4", "AWH7PzkKOnJpn4V8": "FK9NmvUh6pcQCPlL", "qBZ4iNNbL0awblNo": "zvPV99u2oVNan3kq"}}' \
    > test.out 2>&1
eval_tap $? 52 'CreateCurrency' test.out

#- 53 UpdateCurrency
samples/cli/sample-apps Platform updateCurrency \
    --currencyCode 'enkF2Frrc0uAKHBr' \
    --namespace $AB_NAMESPACE \
    --body '{"localizationDescriptions": {"9qUeQXMTVEaHfsaS": "qW4uttsPCoxiT0lP", "p9e85zbi21My7YYl": "ZqFM5UCnHWmg1SWm", "vxY6Hyeytkguk6mD": "h1Z309nrN4p1oRyU"}}' \
    > test.out 2>&1
eval_tap $? 53 'UpdateCurrency' test.out

#- 54 DeleteCurrency
samples/cli/sample-apps Platform deleteCurrency \
    --currencyCode 'PyYmbRUra9iZYncr' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 54 'DeleteCurrency' test.out

#- 55 GetCurrencyConfig
samples/cli/sample-apps Platform getCurrencyConfig \
    --currencyCode 'tMchRsgai4zv2Igp' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 55 'GetCurrencyConfig' test.out

#- 56 GetCurrencySummary
samples/cli/sample-apps Platform getCurrencySummary \
    --currencyCode 'gCZMTVKb7wJ90Q3W' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 56 'GetCurrencySummary' test.out

#- 57 GetDLCItemConfigHistory
samples/cli/sample-apps Platform getDLCItemConfigHistory \
    --namespace $AB_NAMESPACE \
    --dlcId 'NHDYSIKfU16zatgX' \
    > test.out 2>&1
eval_tap $? 57 'GetDLCItemConfigHistory' test.out

#- 58 RestoreDLCItemConfigHistory
samples/cli/sample-apps Platform restoreDLCItemConfigHistory \
    --id 'QhLNo3l5XYQShY2T' \
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
    --body '{"data": [{"autoUpdate": true, "enableRevocation": false, "id": "PdadIAD6USTv2j4A", "rewards": [{"currency": {"currencyCode": "x3sA2taL90cn4jig", "namespace": "JiyK4klW6jSf7iLS"}, "item": {"itemId": "HzlEvWXaunSoEbUp", "itemName": "JjHOav1UWSNAyxTA", "itemSku": "jAKnUGXvBqoig0Qq", "itemType": "dniTwNi5pRKCFMSN"}, "quantity": 75, "type": "ITEM"}, {"currency": {"currencyCode": "29QZvJbZfjPNZCMH", "namespace": "l08Q6aEfwSKiNBbP"}, "item": {"itemId": "luaRkJGz8Vf5wfvb", "itemName": "n4uM9RasEsOH9dLy", "itemSku": "x8CYuwdjA5gXyAQr", "itemType": "JUKfWi9So9qH2Hiz"}, "quantity": 67, "type": "CURRENCY"}, {"currency": {"currencyCode": "IJQHU3EFjkUBn8nq", "namespace": "RvqkJ3sfTP8A74N4"}, "item": {"itemId": "8OXWbBRqvLoVCglm", "itemName": "rIgPaV1APl1ArGsg", "itemSku": "FxLrq7EPhiuMh8qd", "itemType": "ZckDddYB4KlYn3nT"}, "quantity": 98, "type": "ITEM"}], "rvn": 67}, {"autoUpdate": false, "enableRevocation": false, "id": "rt2fl7BxZvR88Bf7", "rewards": [{"currency": {"currencyCode": "ADB4yj3y2r7JtvVB", "namespace": "2hcoBPE0t6d9iPbb"}, "item": {"itemId": "aA4BfZgJ7SQS6yQ0", "itemName": "VDOnzB3Z1ndUTVOE", "itemSku": "o1en0Nd2NA6Uu4oq", "itemType": "h0Q7YBVmr3yhS5JO"}, "quantity": 57, "type": "ITEM"}, {"currency": {"currencyCode": "80ZlRUDaYa1nvB0M", "namespace": "9hrxtwQQRlw3vw8O"}, "item": {"itemId": "QfxnMioHDYBKrzWD", "itemName": "3LHwbgraI25N6Dky", "itemSku": "uqhflrXqoNN1Zu9U", "itemType": "Ek1TUnisAlVDVMMw"}, "quantity": 67, "type": "ITEM"}, {"currency": {"currencyCode": "xD9KLqdNnV40fHNX", "namespace": "dYUGw5Wn6QL98fjD"}, "item": {"itemId": "0bSiOI6TYghNPH4W", "itemName": "WjM5GtiS4sdKE4Yl", "itemSku": "5R6N1pJrcJ2oHZKf", "itemType": "t6apwucsiUBZFO7j"}, "quantity": 69, "type": "ITEM"}], "rvn": 52}, {"autoUpdate": true, "enableRevocation": false, "id": "3qeDi69uH7P4zpIP", "rewards": [{"currency": {"currencyCode": "PJYMWxYsrySlRRCd", "namespace": "YbYaB9v8MaO5Dknc"}, "item": {"itemId": "mut4DYtLODLZPqre", "itemName": "6nValUX7QBLr52mo", "itemSku": "5BQikn4vM4JwmCHi", "itemType": "8StuZvrkMJ5RGSYo"}, "quantity": 30, "type": "ITEM"}, {"currency": {"currencyCode": "lFfNDoJZnVV74tlD", "namespace": "oysFR9E2jBJCeEWx"}, "item": {"itemId": "hrjfksgxYJgXziPQ", "itemName": "J6emu2oNV8sUYyFh", "itemSku": "PM0kvzc3tNJXDDE5", "itemType": "KWVN5TKBeNGUj6Te"}, "quantity": 38, "type": "CURRENCY"}, {"currency": {"currencyCode": "zhP8Me3f31LMtqUP", "namespace": "ie2cvXvJjkml1pbO"}, "item": {"itemId": "XuQKN6OZ0chz2qd2", "itemName": "oBuSXvtgfFA903tX", "itemSku": "qbqC7hzKXtsvBn6A", "itemType": "jIurkT6VrXrdTh2Y"}, "quantity": 74, "type": "CURRENCY"}], "rvn": 95}]}' \
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
    --body '{"data": [{"platform": "EPICGAMES", "platformDlcIdMap": {"2l2igTIWRLlYqO6E": "vSwtrQ21oQn1U405", "rvoxsHhBhXzlpX06": "rmb1eAF3GU822JJC", "8vrLwNWuznUwTSZT": "SP3qEj6GFOlo9anT"}}, {"platform": "EPICGAMES", "platformDlcIdMap": {"LD0WVS27o3TIVLJl": "4KKR4weB6N5HnHfp", "r29sG9pfhNK7VtM2": "RPnJ59HlbO77exsI", "t01QMsvYxQs4vScQ": "1epeb8cArVSpTE6e"}}, {"platform": "EPICGAMES", "platformDlcIdMap": {"NLDb8V6ysU1GsIZ8": "plV4SuCCPN4l9BvA", "ErOrFJCiPxWAipxk": "ZRN1bQxPcnwTRyAI", "pzwykbtWk07vvQ8H": "b78uWxgvhnXJAvAQ"}}]}' \
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
    --activeOnly 'true' \
    --appType 'SOFTWARE' \
    --entitlementClazz 'SUBSCRIPTION' \
    --entitlementName 'F0FATFyjS5ev3hmc' \
    --itemId '["GoMQZa8uZU95pTVI", "AYAzXbybgn0ezu5Z", "VdU3Ke4cw5n4fpfq"]' \
    --limit '87' \
    --offset '3' \
    --origin 'IOS' \
    --userId 'NGsywpJtyV7pRjJF' \
    > test.out 2>&1
eval_tap $? 65 'QueryEntitlements' test.out

#- 66 QueryEntitlementsByItemIds
samples/cli/sample-apps Platform queryEntitlementsByItemIds \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --itemIds '["wBRlOC9DSHOUxYxr", "DUexXQa9Nao4wLlB", "34E4BpkynAAL1Un3"]' \
    --limit '51' \
    --offset '78' \
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
    --withoutCache 'true' \
    > test.out 2>&1
eval_tap $? 68 'GetEntitlementConfigInfo' test.out

#- 69 GrantEntitlements
samples/cli/sample-apps Platform grantEntitlements \
    --namespace $AB_NAMESPACE \
    --body '{"entitlementGrantList": [{"collectionId": "fUJ45hMBCnOMIDGD", "endDate": "1992-08-25T00:00:00Z", "grantedCode": "G9eZxUdK1SM6ftej", "itemId": "UXuTl3eYa9lE8X77", "itemNamespace": "GPWzkvAHc20Bp0O3", "language": "Jv_ffFn_eg", "metadata": {"VoxuG2osrmF8eB4G": {}, "rTxkDCN3EXWNwflJ": {}, "YoncuB2bvs5YeLdH": {}}, "origin": "System", "quantity": 86, "region": "rwt8LqsTalXTpajM", "source": "GIFT", "startDate": "1972-04-08T00:00:00Z", "storeId": "CdiAK6NZ3C0B1aIO"}, {"collectionId": "JmoFmAASYVXedO2g", "endDate": "1984-04-25T00:00:00Z", "grantedCode": "mXUvHPGP1FgtWDB5", "itemId": "9VSaH21v2GOdYTIY", "itemNamespace": "9EHG3yTOHzG7O6LM", "language": "hAQC", "metadata": {"EPPEZS7TNp8WZkWB": {}, "iCnuUuJH8T3GW3Ma": {}, "kpApPTH7k4B1Evpn": {}}, "origin": "Oculus", "quantity": 37, "region": "wMkn01KFn2b7DtKu", "source": "PROMOTION", "startDate": "1993-11-09T00:00:00Z", "storeId": "bV8FXEaFm4NtowBq"}, {"collectionId": "zW23ev4lmB8zeuQL", "endDate": "1992-09-14T00:00:00Z", "grantedCode": "p44u6eA6ipX0ZMec", "itemId": "SL9x4JcxIgMbkBpR", "itemNamespace": "zEkWXh9UlxAWUoUK", "language": "SVfQ", "metadata": {"yhnXd9dpkzzGmGnF": {}, "fYPhq7rraS0lt6aC": {}, "J77pAaluZnQKL4gj": {}}, "origin": "GooglePlay", "quantity": 1, "region": "TVijgcAQXOxKLtcB", "source": "ACHIEVEMENT", "startDate": "1997-06-27T00:00:00Z", "storeId": "nIwSd3ryvIJm1KSN"}], "userIds": ["9rQaOkAHGnzdHoRJ", "x6oGafEhyn9m4zko", "b6Jbp8r9gi2pN65F"]}' \
    > test.out 2>&1
eval_tap $? 69 'GrantEntitlements' test.out

#- 70 RevokeEntitlements
samples/cli/sample-apps Platform revokeEntitlements \
    --namespace $AB_NAMESPACE \
    --body '["z3QTaZnpkylVv1Mk", "4mGJXlXWCiu0Cz5m", "uMzTktaifvzAlr6Q"]' \
    > test.out 2>&1
eval_tap $? 70 'RevokeEntitlements' test.out

#- 71 GetEntitlement
samples/cli/sample-apps Platform getEntitlement \
    --entitlementId '1BcqusOtd1TU6q32' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 71 'GetEntitlement' test.out

#- 72 QueryFulfillmentHistories
samples/cli/sample-apps Platform queryFulfillmentHistories \
    --namespace $AB_NAMESPACE \
    --limit '1' \
    --offset '56' \
    --status 'FAIL' \
    --userId 'dPKd4ZbtCJCDXv1a' \
    > test.out 2>&1
eval_tap $? 72 'QueryFulfillmentHistories' test.out

#- 73 QueryIAPClawbackHistory
samples/cli/sample-apps Platform queryIAPClawbackHistory \
    --namespace $AB_NAMESPACE \
    --endTime '38uUPT3giX32SqXV' \
    --eventType 'REFUND' \
    --externalOrderId 'ew1r56tH4oyqGKfS' \
    --limit '100' \
    --offset '96' \
    --startTime 'bqw9HYEzbcHtaX8d' \
    --status 'FAIL' \
    --userId 'EKRTJfgOWxvVzgHR' \
    > test.out 2>&1
eval_tap $? 73 'QueryIAPClawbackHistory' test.out

#- 74 MockPlayStationStreamEvent
samples/cli/sample-apps Platform mockPlayStationStreamEvent \
    --namespace $AB_NAMESPACE \
    --body '{"body": {"account": "zmb4iuLllSV9w0CD", "additionalData": {"entitlement": [{"clientTransaction": [{"amountConsumed": 38, "clientTransactionId": "bsAlv6ss920cYyFr"}, {"amountConsumed": 10, "clientTransactionId": "U6KeDTr0rbzUQhxa"}, {"amountConsumed": 77, "clientTransactionId": "ZBo9JHLCnhvy8ATy"}], "entitlementId": "EiVTWIul4Vis4tsL", "usageCount": 96}, {"clientTransaction": [{"amountConsumed": 71, "clientTransactionId": "Sz78es5nXGtazsaZ"}, {"amountConsumed": 52, "clientTransactionId": "VFPl3fMn5vOgmhZ7"}, {"amountConsumed": 56, "clientTransactionId": "x3hChtfHAUrwq6UP"}], "entitlementId": "XYwol28E9kYvqsly", "usageCount": 46}, {"clientTransaction": [{"amountConsumed": 28, "clientTransactionId": "jVsRy5k6emOZdi4U"}, {"amountConsumed": 79, "clientTransactionId": "vh21uIuPBRzh7BLu"}, {"amountConsumed": 84, "clientTransactionId": "nRVRpHA55sF5qdst"}], "entitlementId": "aO6Jp9dAfQEGdH4B", "usageCount": 58}], "purpose": "R5i6JF5gaR5MMeim"}, "originalTitleName": "I4RSx2NyEjVyX8Bi", "paymentProductSKU": "utcu83Vj78EMgvrS", "purchaseDate": "bqANApfaLnSk4p1S", "sourceOrderItemId": "HmTRJZaVGTYzV8gE", "titleName": "5riEd71yFGHKBljD"}, "eventDomain": "p3VdcxKS9bVMI3ne", "eventSource": "erlUhhyQh8ZfhbDg", "eventType": "LRxvANxsALvYAZEK", "eventVersion": 6, "id": "cFtefJ2yFaTCtBMN", "timestamp": "P4Z2fPYgM3m2lTFJ"}' \
    > test.out 2>&1
eval_tap $? 74 'MockPlayStationStreamEvent' test.out

#- 75 MockXblClawbackEvent
samples/cli/sample-apps Platform mockXblClawbackEvent \
    --namespace $AB_NAMESPACE \
    --body '{"data": {"eventDate": "VwOst0Xi442sfGsQ", "eventState": "8redQqqmMjaqe0gm", "lineItemId": "RlD663tVYXEkPnIN", "orderId": "8tL9Vy8SPsuc9MUC", "productId": "tjW76DghYT3FvfJy", "productType": "pNPzZxoVCcKS8hM4", "purchasedDate": "iJ5fl3vyUgcliend", "sandboxId": "t1NigBGWXCkkbceB", "skuId": "quImIOmPcIvmgsiL", "subscriptionData": {"consumedDurationInDays": 72, "dateTime": "XQU7g1j21HbZ4gwZ", "durationInDays": 98, "recurrenceId": "NVJ4Dmo7u5Vp6klv"}}, "datacontenttype": "pqBaREbW310d4IXS", "id": "CmKxxGKFQCZxY4qG", "source": "ZOUhnq5ZstIOQQtV", "specVersion": "dMleADLClBv2V066", "subject": "OItbk7QOYc9TZOak", "time": "qq9MpNC62SbHTbu2", "traceparent": "Zl7VmMNj7RvznOy4", "type": "JXO0IYvbXvsVqDx0"}' \
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
    --body '{"appAppleId": 81, "bundleId": "fVGza7IHhrk70bMy", "issuerId": "cnx8bKqDGs7uaGuI", "keyId": "7LrqGNMjCEhxRoOk", "password": "vWsCR4pf62ukO6Qc", "version": "V2"}' \
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
    --body '{"sandboxId": "jYLZTuDW6IW4XA61"}' \
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
    --body '{"applicationName": "xMDye9Bm6Rvcci4L", "notificationTokenAudience": "Yynfi8JWsqkPDfjK", "notificationTokenEmail": "2SBKcCEEl5PzUZzG", "packageName": "AvZtvXVuWTNYzacp", "serviceAccountId": "wbjypuyzI1n94jJD"}' \
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
    --body '{"data": [{"itemIdentity": "fcD50bC0Ow99CrGZ", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"3JTanivWPQCoZ2RO": "kDotO41FWKlqMklf", "ppeW1TSqEEAgYA7k": "96pPkkNGJJl1L8X2", "lkQajOoFBB2XZi0w": "yvhCoxyzwwPp8pHh"}}, {"itemIdentity": "IVhLopqoZpQPErjS", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"P9C2X7p1vqXF9Jg3": "RdM5KfeySPiD7iyJ", "1XkTOwdxpM4WdT29": "Q8tDsHLlbSyoo4Pw", "pPjh05NZnXBPgXmt": "en8o1NoupPxoKV4S"}}, {"itemIdentity": "MXHsgQMfATd1wrhV", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"O2Pk1Gs4Sw5I16fv": "GecbOyq6Wo63a0sX", "ztYwt5K2gEC1kvtr": "lebSJzYrSASrgWTJ", "rITjadnYna63khvZ": "ncRdpDBCz7WocfT3"}}]}' \
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
    --body '{"appId": "AYYIjjqoQGPzIQZL", "appSecret": "1shwF6DQgtfMBgGK", "webhookVerifyToken": "BXmLh8Hrna7Iebwp"}' \
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
    --body '{"sku": "shIyWn5qZLPrm6A8"}' \
    > test.out 2>&1
eval_tap $? 94 'CreateOculusSubscriptionGroup' test.out

#- 95 DeleteOculusSubscriptionGroup
samples/cli/sample-apps Platform deleteOculusSubscriptionGroup \
    --namespace $AB_NAMESPACE \
    --sku 'P7L7vXFTjOeYaJ6B' \
    > test.out 2>&1
eval_tap $? 95 'DeleteOculusSubscriptionGroup' test.out

#- 96 ListOculusSubscriptionGroupTier
samples/cli/sample-apps Platform listOculusSubscriptionGroupTier \
    --namespace $AB_NAMESPACE \
    --sku 'YTU7rnL3XZkOHJBU' \
    > test.out 2>&1
eval_tap $? 96 'ListOculusSubscriptionGroupTier' test.out

#- 97 AddTierIntoMetaQuestSubscriptionGroup
samples/cli/sample-apps Platform addTierIntoMetaQuestSubscriptionGroup \
    --namespace $AB_NAMESPACE \
    --body '{"groupSku": "GaIMoixoR3wSiC7u", "sku": "dupHwuUYkjbG11SZ"}' \
    > test.out 2>&1
eval_tap $? 97 'AddTierIntoMetaQuestSubscriptionGroup' test.out

#- 98 DeleteOculusSubscriptionTier
samples/cli/sample-apps Platform deleteOculusSubscriptionTier \
    --namespace $AB_NAMESPACE \
    --sku '1MD09gk5J5k94Yzz' \
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
    --body '{"backOfficeServerClientId": "55OKdzYZs86ubJXx", "backOfficeServerClientSecret": "3MQ1HoPPQDVBLgT8", "enableStreamJob": true, "environment": "8wGFQ5ziR2FWV1q3", "streamName": "uEYPFAmPBObsyrzd", "streamPartnerName": "EXAw1ySlit6KJJeq"}' \
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
    --body '{"backOfficeServerClientId": "v6LFUHVIMncDwy1F", "backOfficeServerClientSecret": "PlU0ugoXpmbvErg8", "enableStreamJob": true, "environment": "7mrn6QioWcsDnIyf", "streamName": "pAiVxmEdXeeFEQzX", "streamPartnerName": "DM12sh1PvuHVISpU"}' \
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
    --body '{"appId": "BqA8CPSKeC2NNTLZ", "env": "SANDBOX", "publisherAuthenticationKey": "4i2S5IeAmjqFQlgo", "syncMode": "TRANSACTION"}' \
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
    --body '{"clientId": "3XrIZLNu0CsyTpeB", "clientSecret": "AYCwWbVAw6PPOvDH", "organizationId": "5A4KNDkrEvx69DVL"}' \
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
    --body '{"enableClawback": false, "entraAppClientId": "HycFRFUhy4bgILrQ", "entraAppClientSecret": "96DQhjFpLqRxmHDR", "entraTenantId": "lVbzxFaRMmcL30fe", "relyingPartyCert": "fpcSvylEunFQNGt8"}' \
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
    --password 'GPwx4XNXzINGyGN5' \
    > test.out 2>&1
eval_tap $? 113 'UpdateXblBPCertFile' test.out

#- 114 QueryThirdPartyNotifications
samples/cli/sample-apps Platform queryThirdPartyNotifications \
    --namespace $AB_NAMESPACE \
    --endDate 'XN9DxTZIq706Cnql' \
    --externalId '7851LZG5Yy8fOW0y' \
    --limit '63' \
    --offset '96' \
    --source 'STEAM' \
    --startDate 'bDSCWghGBCLTCpyj' \
    --status 'ERROR' \
    --type '5MLvxTi2OUDgbi6l' \
    > test.out 2>&1
eval_tap $? 114 'QueryThirdPartyNotifications' test.out

#- 115 QueryAbnormalTransactions
samples/cli/sample-apps Platform queryAbnormalTransactions \
    --namespace $AB_NAMESPACE \
    --limit '6' \
    --offset '5' \
    --orderId 'wpv8H0xODJJJWq7a' \
    --steamId 'hfuy9Q8C92ridmRn' \
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
    --body '{"env": "SANDBOX", "lastTime": "1989-02-02T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 117 'AdminResetSteamJobTime' test.out

#- 118 AdminRefundIAPOrder
samples/cli/sample-apps Platform adminRefundIAPOrder \
    --iapOrderNo 'lx0P4HtIs4IpYOtD' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 118 'AdminRefundIAPOrder' test.out

#- 119 QuerySteamReportHistories
samples/cli/sample-apps Platform querySteamReportHistories \
    --namespace $AB_NAMESPACE \
    --limit '34' \
    --offset '61' \
    --orderId '6x2PJBf0IJwLpkZh' \
    --processStatus 'IGNORED' \
    --steamId 'ixvgXBUyJbD2TN7j' \
    > test.out 2>&1
eval_tap $? 119 'QuerySteamReportHistories' test.out

#- 120 QueryThirdPartySubscription
samples/cli/sample-apps Platform queryThirdPartySubscription \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --groupId 'nuntDscnMMRK1h3X' \
    --limit '40' \
    --offset '15' \
    --platform 'EPICGAMES' \
    --productId 'W5nuxO42cHj8kVmm' \
    --userId '81FYRPLDxfPtccfz' \
    > test.out 2>&1
eval_tap $? 120 'QueryThirdPartySubscription' test.out

#- 121 GetIAPOrderConsumeDetails
samples/cli/sample-apps Platform getIAPOrderConsumeDetails \
    --iapOrderNo 'zFWfZAkhIH0KrUqF' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 121 'GetIAPOrderConsumeDetails' test.out

#- 122 DownloadInvoiceDetails
samples/cli/sample-apps Platform downloadInvoiceDetails \
    --namespace $AB_NAMESPACE \
    --endTime 'kSo7kxwvFNE49UyQ' \
    --feature 'Pw41n2oY6uBcmPzC' \
    --itemId '4PlpRR25853DoiEo' \
    --itemType 'LOOTBOX' \
    --startTime 'PW1uHYSjIqM0kw3q' \
    > test.out 2>&1
eval_tap $? 122 'DownloadInvoiceDetails' test.out

#- 123 GenerateInvoiceSummary
samples/cli/sample-apps Platform generateInvoiceSummary \
    --namespace $AB_NAMESPACE \
    --endTime 'XJfTIjlnydhzvqvo' \
    --feature 'kjKC57i5Mshmkcag' \
    --itemId 'MKUoXnziNIMeeq32' \
    --itemType 'CODE' \
    --startTime 'sPm77jDRZiV8iUpP' \
    > test.out 2>&1
eval_tap $? 123 'GenerateInvoiceSummary' test.out

#- 124 SyncInGameItem
samples/cli/sample-apps Platform syncInGameItem \
    --namespace $AB_NAMESPACE \
    --storeId 'wx86ozV3C5cHgENh' \
    --body '{"categoryPath": "Cpn8UmOBiOLU2VNx", "targetItemId": "8MCOQhIFaYREOlYB", "targetNamespace": "w0QNNutUPYZ2fEQ1"}' \
    > test.out 2>&1
eval_tap $? 124 'SyncInGameItem' test.out

#- 125 CreateItem
samples/cli/sample-apps Platform createItem \
    --namespace $AB_NAMESPACE \
    --storeId 'H85hN1k89WE1dKo0' \
    --body '{"appId": "CWPYU5IUcx5gVKlD", "appType": "SOFTWARE", "baseAppId": "WF2yfeu1aKQloatN", "boothName": "hKXnVwET6IisHUY1", "categoryPath": "vEF03HKLsODLxe2x", "clazz": "q2Jf2nDKrNw5iXBS", "displayOrder": 83, "entitlementType": "DURABLE", "ext": {"XRBxRRpiSvMS1VEB": {}, "VTFJRGBDeMnw6ZVM": {}, "SOayXTnsGLU9bet8": {}}, "features": ["nDGKcfU3gqUJqBHS", "EsuIbzXjuufDOqPh", "jGkJLZayQNsDHJwX"], "flexible": true, "images": [{"as": "bxoVlmtgcqSm5M0g", "caption": "5fvUiVuawEzqCFzZ", "height": 53, "imageUrl": "jw5pP5W5Q5MaHez9", "smallImageUrl": "t3HPj1Wm5Y1DfM87", "width": 65}, {"as": "79eQIb0iOiTPe9wf", "caption": "rfIZe0uqfMPYkhRk", "height": 43, "imageUrl": "CzOXVlsVX27teTtJ", "smallImageUrl": "eFlNHIZk5YIAp08E", "width": 47}, {"as": "6L8fb0ae9E28ZwdF", "caption": "mlN4ne5GMXu06Szf", "height": 76, "imageUrl": "beUHp06USaOhUw7Y", "smallImageUrl": "qVfgb3skH1uj0x0h", "width": 8}], "inventoryConfig": {"customAttributes": {"bE1T9gGIy0Bp37nc": {}, "uuNPOXQiNlVJZI06": {}, "3T5G4NO6LunpcwvG": {}}, "serverCustomAttributes": {"NLtHku2hcPFBQKri": {}, "gWwY1WGGQ5g6efUw": {}, "NePfMlnzFEoby4En": {}}, "slotUsed": 19}, "itemId": "LiHdvxtoIJCE3RZP", "itemIds": ["UUEsQH4WFceiWdj8", "R7M4KjNAVSA8uyRN", "kG3SCsCZLmnjS0hd"], "itemQty": {"2J4ryarWPDNpkuzx": 46, "0qcJyIhu5Q4AZ1B7": 32, "gJBNkIECiFv5l03y": 58}, "itemType": "EXTENSION", "listable": true, "localizations": {"jdPBuz7gDnyD3615": {"description": "MPUBEIbqel2UtDHn", "localExt": {"XHwDPHp5DejBaNBp": {}, "T69h4flbe0LxWjpT": {}, "pda22KiDIyc4UvsI": {}}, "longDescription": "k9Moq0bfnf87z7jE", "title": "YAUZ5hWCdvU4Mdh6"}, "dIf43ieQ9IBUtBJN": {"description": "7GXEWleNJaywisat", "localExt": {"qLlPcXdzuG680qLS": {}, "In9TL1ZZ6J3ahqzY": {}, "MfY6rvUbgpcHVCgN": {}}, "longDescription": "PmZBSWQkkOD31r2n", "title": "obz7PDIVO25LETmj"}, "pR58f693RgvMZjtM": {"description": "3kF8NrIsjCtDE26o", "localExt": {"k1MKAjPYgYNt3CVF": {}, "ssRIO7ONVdiBu1HT": {}, "QJQGul8I1Ar0RmzQ": {}}, "longDescription": "NxlFSMJT22GhkxwF", "title": "GuOSWNyGqOFxXcnW"}}, "lootBoxConfig": {"rewardCount": 12, "rewards": [{"lootBoxItems": [{"count": 78, "duration": 24, "endDate": "1978-11-21T00:00:00Z", "itemId": "fME1gyx69B51Tvvq", "itemSku": "ODl4vci3kZQkfMmV", "itemType": "bMfnpfRhMJ2o2Xhb"}, {"count": 95, "duration": 81, "endDate": "1981-08-06T00:00:00Z", "itemId": "eMITd5LoC32yCk2R", "itemSku": "yoskdMqfEv7MpN3V", "itemType": "bPXtTbBTx7kb18I7"}, {"count": 50, "duration": 17, "endDate": "1988-02-17T00:00:00Z", "itemId": "DkXOtOfK3zXm0xOJ", "itemSku": "u5LcWXKbSxoDFX45", "itemType": "4nMW9VLSjumS0ZIr"}], "name": "3QAC3lVHVJvQGpnh", "odds": 0.2691145632986365, "type": "REWARD", "weight": 32}, {"lootBoxItems": [{"count": 28, "duration": 20, "endDate": "1972-05-23T00:00:00Z", "itemId": "uSbCyDus8CalfUi6", "itemSku": "98HC9d1AaIzAB4Ja", "itemType": "dwvORmRTCyzrmMaA"}, {"count": 39, "duration": 27, "endDate": "1987-08-18T00:00:00Z", "itemId": "1gFVyBOJylN2kvvD", "itemSku": "udhSV4WaQD2Yo5gJ", "itemType": "Nsdhk7VHQlHpBKSw"}, {"count": 9, "duration": 73, "endDate": "1973-02-07T00:00:00Z", "itemId": "CSwYSs3j17N04NG4", "itemSku": "ZDLMXMscl9I88Iw2", "itemType": "7HsgOplEIUK7amOg"}], "name": "gI4xJthYrovXNFmg", "odds": 0.9658223119641717, "type": "PROBABILITY_GROUP", "weight": 20}, {"lootBoxItems": [{"count": 100, "duration": 57, "endDate": "1982-03-19T00:00:00Z", "itemId": "6kPKmaQJkidsoz0V", "itemSku": "N5SRicqRf6ouprI8", "itemType": "MxsiXHoG1TcFiTAz"}, {"count": 87, "duration": 4, "endDate": "1991-08-28T00:00:00Z", "itemId": "1ek9NBlzn300ZTqU", "itemSku": "ct5hrzpHbTj8NIW7", "itemType": "1BEqXTj3kR7Cafjv"}, {"count": 73, "duration": 59, "endDate": "1977-08-23T00:00:00Z", "itemId": "QYiLoqSEfNGLXNeO", "itemSku": "1xQMhIGWWZeqeusa", "itemType": "dy9JcGDZGycI9dFR"}], "name": "hKHkHKaDXpzXO0Ll", "odds": 0.3140505075647675, "type": "REWARD", "weight": 70}], "rollFunction": "DEFAULT"}, "maxCount": 43, "maxCountPerUser": 45, "name": "ByJ5W51Vb661exWn", "optionBoxConfig": {"boxItems": [{"count": 95, "duration": 85, "endDate": "1992-10-03T00:00:00Z", "itemId": "vSqdgoDjynY7qeel", "itemSku": "a24lqPVm9GPR5Qll", "itemType": "PNWPTiWm6QOeWpsS"}, {"count": 68, "duration": 27, "endDate": "1999-06-11T00:00:00Z", "itemId": "93wF1NUVnYJaRQt6", "itemSku": "SfvNIuhbfXKude2F", "itemType": "YS2ASckhFr4TUrCe"}, {"count": 42, "duration": 1, "endDate": "1991-10-30T00:00:00Z", "itemId": "en6eWTOGnzxRbdu1", "itemSku": "aeov2Qeue5AV6Rf5", "itemType": "DWMkQttygbxhSL4m"}]}, "purchasable": false, "recurring": {"cycle": "MONTHLY", "fixedFreeDays": 70, "fixedTrialCycles": 15, "graceDays": 61}, "regionData": {"xiyVgtd5PDWwX4us": [{"currencyCode": "Vg4Mk6KM7Ook231j", "currencyNamespace": "K5c6oSx3Gz9bmyzY", "currencyType": "VIRTUAL", "discountAmount": 73, "discountExpireAt": "1983-08-25T00:00:00Z", "discountPercentage": 80, "discountPurchaseAt": "1975-08-14T00:00:00Z", "expireAt": "1984-06-13T00:00:00Z", "price": 72, "purchaseAt": "1989-03-03T00:00:00Z", "trialPrice": 33}, {"currencyCode": "H45Hr2DBA5Jsbl2N", "currencyNamespace": "kyKVgD3haXHK4c6p", "currencyType": "REAL", "discountAmount": 13, "discountExpireAt": "1979-09-18T00:00:00Z", "discountPercentage": 53, "discountPurchaseAt": "1998-11-13T00:00:00Z", "expireAt": "1984-02-16T00:00:00Z", "price": 22, "purchaseAt": "1979-03-29T00:00:00Z", "trialPrice": 22}, {"currencyCode": "uEyK8i22PqRcxYq5", "currencyNamespace": "8y7LBiKoVX9uKdzV", "currencyType": "VIRTUAL", "discountAmount": 64, "discountExpireAt": "1976-05-10T00:00:00Z", "discountPercentage": 53, "discountPurchaseAt": "1976-04-18T00:00:00Z", "expireAt": "1997-05-29T00:00:00Z", "price": 22, "purchaseAt": "1994-05-11T00:00:00Z", "trialPrice": 93}], "BYWTg5AE4mU1yb0K": [{"currencyCode": "fCe5v8RegYAyv7xL", "currencyNamespace": "9l0Qy5z11PkwyUBe", "currencyType": "VIRTUAL", "discountAmount": 53, "discountExpireAt": "1974-07-15T00:00:00Z", "discountPercentage": 24, "discountPurchaseAt": "1971-03-21T00:00:00Z", "expireAt": "1974-06-17T00:00:00Z", "price": 99, "purchaseAt": "1974-05-18T00:00:00Z", "trialPrice": 88}, {"currencyCode": "VkHwSrC7bTGQ9YQR", "currencyNamespace": "8Enj5gN2JzoPWAqM", "currencyType": "REAL", "discountAmount": 90, "discountExpireAt": "1984-07-23T00:00:00Z", "discountPercentage": 4, "discountPurchaseAt": "1974-12-04T00:00:00Z", "expireAt": "1992-11-21T00:00:00Z", "price": 86, "purchaseAt": "1975-11-03T00:00:00Z", "trialPrice": 14}, {"currencyCode": "xTQN192dKzdhsEGU", "currencyNamespace": "t8jBdkuev6DG0GVm", "currencyType": "REAL", "discountAmount": 48, "discountExpireAt": "1983-09-28T00:00:00Z", "discountPercentage": 56, "discountPurchaseAt": "1993-05-26T00:00:00Z", "expireAt": "1992-07-21T00:00:00Z", "price": 16, "purchaseAt": "1989-01-20T00:00:00Z", "trialPrice": 66}], "IVnprnsATnbeUhhz": [{"currencyCode": "fcl5C740DykUfIei", "currencyNamespace": "xpVUKnZtUjWowigf", "currencyType": "REAL", "discountAmount": 33, "discountExpireAt": "1982-05-29T00:00:00Z", "discountPercentage": 52, "discountPurchaseAt": "1976-11-08T00:00:00Z", "expireAt": "1988-01-08T00:00:00Z", "price": 51, "purchaseAt": "1980-09-11T00:00:00Z", "trialPrice": 19}, {"currencyCode": "os2JM3ajIJ5h2EdP", "currencyNamespace": "wIw150htWRRzv3fX", "currencyType": "REAL", "discountAmount": 85, "discountExpireAt": "1990-08-11T00:00:00Z", "discountPercentage": 51, "discountPurchaseAt": "1991-03-16T00:00:00Z", "expireAt": "1989-03-20T00:00:00Z", "price": 33, "purchaseAt": "1995-09-29T00:00:00Z", "trialPrice": 56}, {"currencyCode": "hiK2sIVczBVgZUWY", "currencyNamespace": "WWBV07QuPRhHokac", "currencyType": "VIRTUAL", "discountAmount": 62, "discountExpireAt": "1975-04-06T00:00:00Z", "discountPercentage": 0, "discountPurchaseAt": "1978-08-19T00:00:00Z", "expireAt": "1979-12-31T00:00:00Z", "price": 54, "purchaseAt": "1979-03-31T00:00:00Z", "trialPrice": 32}]}, "saleConfig": {"currencyCode": "SBiUlPmUnqB5XpXL", "price": 24}, "seasonType": "TIER", "sectionExclusive": false, "sellable": false, "sku": "4TNHWinA1TrrJo4y", "stackable": false, "status": "ACTIVE", "tags": ["CU6dhiz36Gf5OTbH", "Y26noLFxorDThwrm", "wpx4ky9h27eBn4r4"], "targetCurrencyCode": "JWw6G0gJub4BKvfx", "targetNamespace": "LNI5N2l3o4kpSllL", "thumbnailUrl": "D7e9exPDrSq6nheE", "useCount": 11}' \
    > test.out 2>&1
eval_tap $? 125 'CreateItem' test.out

#- 126 GetItemByAppId
samples/cli/sample-apps Platform getItemByAppId \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --storeId 'XtvJuLjUx87dTCcA' \
    --appId 'x9SZQjxszaAemKnr' \
    > test.out 2>&1
eval_tap $? 126 'GetItemByAppId' test.out

#- 127 QueryItems
samples/cli/sample-apps Platform queryItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --appType 'DLC' \
    --availableDate 'XpdZ2v6fdqbIhT91' \
    --baseAppId 'DniLu9ZKShPTAAtC' \
    --categoryPath 'A0WdLLxgc1tyqlr3' \
    --features 'Lfmb1SUDk17KVwcX' \
    --includeSubCategoryItem 'true' \
    --itemType 'LOOTBOX' \
    --limit '86' \
    --offset '3' \
    --region 'JZypVzCwNtL2MX6m' \
    --sortBy '["createdAt:asc", "name:asc"]' \
    --storeId 'HzrF4WM49479RU5T' \
    --tags 'x96Fw8E19U114oWZ' \
    --targetNamespace '4X3YslZkYAvRzQ0A' \
    > test.out 2>&1
eval_tap $? 127 'QueryItems' test.out

#- 128 ListBasicItemsByFeatures
samples/cli/sample-apps Platform listBasicItemsByFeatures \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --features '["5bzv20nsYP8cokrx", "NJIjUNDbNic81kTW", "mfRAVf2eTkvRdGuk"]' \
    > test.out 2>&1
eval_tap $? 128 'ListBasicItemsByFeatures' test.out

#- 129 GetItems
samples/cli/sample-apps Platform getItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --storeId 'xtYj1yYkWQQCvZ0t' \
    --itemIds 'z2InsAkN0U5bGBzw' \
    > test.out 2>&1
eval_tap $? 129 'GetItems' test.out

#- 130 GetItemBySku
samples/cli/sample-apps Platform getItemBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'eOTnyKwFri1cwO3K' \
    --sku 'nLw5RzPPayZZG38G' \
    > test.out 2>&1
eval_tap $? 130 'GetItemBySku' test.out

#- 131 GetLocaleItemBySku
samples/cli/sample-apps Platform getLocaleItemBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --language 'jmhpiFHc03F1eqbI' \
    --populateBundle 'true' \
    --region 'dlyqEDCRK6hpwZ3S' \
    --storeId 'GRxfiv35HEjhZU8E' \
    --sku 'Lh97TwX39JwqUWE0' \
    > test.out 2>&1
eval_tap $? 131 'GetLocaleItemBySku' test.out

#- 132 GetEstimatedPrice
samples/cli/sample-apps Platform getEstimatedPrice \
    --namespace $AB_NAMESPACE \
    --platform 'jYSF44N5Er5jqhE8' \
    --region 'JJ4tvxyLIOXLeMjM' \
    --storeId 'exmUlo0d65a3ry9W' \
    --itemIds 'RuDXpkeHslfUMQpR' \
    --userId '4rsYNJAQw1rQycUw' \
    > test.out 2>&1
eval_tap $? 132 'GetEstimatedPrice' test.out

#- 133 GetItemIdBySku
samples/cli/sample-apps Platform getItemIdBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'NhMwmKBkJcuZacn3' \
    --sku '1oV0TZerbo9Dq49b' \
    > test.out 2>&1
eval_tap $? 133 'GetItemIdBySku' test.out

#- 134 GetBulkItemIdBySkus
samples/cli/sample-apps Platform getBulkItemIdBySkus \
    --namespace $AB_NAMESPACE \
    --sku '["US3DMKA3KtY7Ft6q", "tbyfaxeOxgcG3xqm", "j39PMLuybpTVXZFW"]' \
    --storeId 'g5tsiAZbkWXloERT' \
    > test.out 2>&1
eval_tap $? 134 'GetBulkItemIdBySkus' test.out

#- 135 BulkGetLocaleItems
samples/cli/sample-apps Platform bulkGetLocaleItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --language 'jZSE10XCj7tu608s' \
    --region 'CHA3XZT8KdNISA3n' \
    --storeId 'CQPcmxutT7RHToNL' \
    --itemIds '4xnM1hbORVCCeBDO' \
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
    --platform 'zicPZwaqPJ76wsIK' \
    --userId 'UEHyBcnxojSLZ7Nz' \
    --body '{"itemIds": ["MTgfTKDNWxEibWUd", "jd6pRfVhOsE40e3Y", "yizbrUABVvTJ9pTx"]}' \
    > test.out 2>&1
eval_tap $? 137 'ValidateItemPurchaseCondition' test.out

#- 138 BulkUpdateRegionData
samples/cli/sample-apps Platform bulkUpdateRegionData \
    --namespace $AB_NAMESPACE \
    --storeId 'Z4ltSPJ3Ng6DOyyL' \
    --body '{"changes": [{"itemIdentities": ["JtARfheJxkLEe51m", "22jDfxHyVxTdLSJG", "l1BotLha7jCSFs1V"], "itemIdentityType": "ITEM_SKU", "regionData": {"M5Z81jHJiTrECXgF": [{"currencyCode": "Xp5jXWTmB2YTPPh7", "currencyNamespace": "GA8T9sdmDAwaibbY", "currencyType": "VIRTUAL", "discountAmount": 79, "discountExpireAt": "1981-10-09T00:00:00Z", "discountPercentage": 48, "discountPurchaseAt": "1983-12-06T00:00:00Z", "discountedPrice": 10, "expireAt": "1997-04-25T00:00:00Z", "price": 35, "purchaseAt": "1994-08-25T00:00:00Z", "trialPrice": 15}, {"currencyCode": "iNGfE4JXbOmb96Ah", "currencyNamespace": "lT1hqMvOKwVLvDl9", "currencyType": "VIRTUAL", "discountAmount": 62, "discountExpireAt": "1982-02-28T00:00:00Z", "discountPercentage": 33, "discountPurchaseAt": "1995-04-10T00:00:00Z", "discountedPrice": 50, "expireAt": "1995-08-07T00:00:00Z", "price": 93, "purchaseAt": "1985-08-19T00:00:00Z", "trialPrice": 60}, {"currencyCode": "nlEom6Irt3CBv6xk", "currencyNamespace": "o3PgEExgZ2vKwlfd", "currencyType": "REAL", "discountAmount": 69, "discountExpireAt": "1975-05-08T00:00:00Z", "discountPercentage": 13, "discountPurchaseAt": "1997-01-10T00:00:00Z", "discountedPrice": 37, "expireAt": "1973-03-05T00:00:00Z", "price": 25, "purchaseAt": "1982-02-27T00:00:00Z", "trialPrice": 97}], "grr5qGFlYFdMxcuD": [{"currencyCode": "KMGFqlYqZV7XfaBs", "currencyNamespace": "ml0VR9nBxMWSvxt3", "currencyType": "REAL", "discountAmount": 55, "discountExpireAt": "1994-11-27T00:00:00Z", "discountPercentage": 38, "discountPurchaseAt": "1980-01-22T00:00:00Z", "discountedPrice": 78, "expireAt": "1995-06-13T00:00:00Z", "price": 35, "purchaseAt": "1971-04-30T00:00:00Z", "trialPrice": 50}, {"currencyCode": "DDAT0v61o1y3i5sD", "currencyNamespace": "6sgge5whLIdHvrQR", "currencyType": "VIRTUAL", "discountAmount": 16, "discountExpireAt": "1990-01-28T00:00:00Z", "discountPercentage": 65, "discountPurchaseAt": "1983-12-04T00:00:00Z", "discountedPrice": 93, "expireAt": "1995-06-16T00:00:00Z", "price": 13, "purchaseAt": "1994-06-10T00:00:00Z", "trialPrice": 1}, {"currencyCode": "Ne6xVPwEZeM2NQSj", "currencyNamespace": "qAMBdWSoPZJO8mui", "currencyType": "VIRTUAL", "discountAmount": 20, "discountExpireAt": "1975-03-14T00:00:00Z", "discountPercentage": 18, "discountPurchaseAt": "1974-12-14T00:00:00Z", "discountedPrice": 69, "expireAt": "1987-02-22T00:00:00Z", "price": 11, "purchaseAt": "1978-12-18T00:00:00Z", "trialPrice": 29}], "SGACeIVvWnYaKqwd": [{"currencyCode": "GZTOFXZFdlmE2Z9i", "currencyNamespace": "kNZKRXMDfPFHF7xm", "currencyType": "VIRTUAL", "discountAmount": 99, "discountExpireAt": "1980-01-31T00:00:00Z", "discountPercentage": 24, "discountPurchaseAt": "1981-03-30T00:00:00Z", "discountedPrice": 99, "expireAt": "1990-02-27T00:00:00Z", "price": 35, "purchaseAt": "1988-03-02T00:00:00Z", "trialPrice": 59}, {"currencyCode": "TZCutmhuGJgDRtrO", "currencyNamespace": "GGRpDCHENlAjsuuG", "currencyType": "REAL", "discountAmount": 78, "discountExpireAt": "1998-03-04T00:00:00Z", "discountPercentage": 37, "discountPurchaseAt": "1978-05-20T00:00:00Z", "discountedPrice": 59, "expireAt": "1995-01-22T00:00:00Z", "price": 95, "purchaseAt": "1984-08-28T00:00:00Z", "trialPrice": 91}, {"currencyCode": "qvGtX7wtETjkq2kI", "currencyNamespace": "Oo8R4x6dU5ccmK69", "currencyType": "VIRTUAL", "discountAmount": 59, "discountExpireAt": "1977-02-12T00:00:00Z", "discountPercentage": 96, "discountPurchaseAt": "1986-02-07T00:00:00Z", "discountedPrice": 44, "expireAt": "1983-03-11T00:00:00Z", "price": 94, "purchaseAt": "1973-12-07T00:00:00Z", "trialPrice": 56}]}}, {"itemIdentities": ["E45b4NITKgEkoMMn", "JPvaIVs6UJvmXXNt", "y1Dajvuw4wfEvc1H"], "itemIdentityType": "ITEM_ID", "regionData": {"uHhZEnGa7PMbk18y": [{"currencyCode": "zLKl4Ar5AFGuoaI0", "currencyNamespace": "818DREiFEwBpajSv", "currencyType": "VIRTUAL", "discountAmount": 89, "discountExpireAt": "1974-04-14T00:00:00Z", "discountPercentage": 34, "discountPurchaseAt": "1979-11-05T00:00:00Z", "discountedPrice": 80, "expireAt": "1998-01-22T00:00:00Z", "price": 29, "purchaseAt": "1984-11-17T00:00:00Z", "trialPrice": 78}, {"currencyCode": "IunhAAl1LAtUb6pw", "currencyNamespace": "Wbv7JwszJ2Ylychm", "currencyType": "REAL", "discountAmount": 16, "discountExpireAt": "1993-08-06T00:00:00Z", "discountPercentage": 78, "discountPurchaseAt": "1990-11-12T00:00:00Z", "discountedPrice": 93, "expireAt": "1999-01-16T00:00:00Z", "price": 50, "purchaseAt": "1995-04-29T00:00:00Z", "trialPrice": 65}, {"currencyCode": "dgh6HVxKqeBFqHSB", "currencyNamespace": "YoNoeR7QxhXVolWS", "currencyType": "VIRTUAL", "discountAmount": 66, "discountExpireAt": "1992-09-25T00:00:00Z", "discountPercentage": 33, "discountPurchaseAt": "1992-06-03T00:00:00Z", "discountedPrice": 24, "expireAt": "1975-06-19T00:00:00Z", "price": 25, "purchaseAt": "1997-11-15T00:00:00Z", "trialPrice": 49}], "LBLQ1dCGH41Y31KG": [{"currencyCode": "RIEOedQNDUwHkF7O", "currencyNamespace": "73T4roYObL1GucE0", "currencyType": "REAL", "discountAmount": 13, "discountExpireAt": "1993-08-13T00:00:00Z", "discountPercentage": 8, "discountPurchaseAt": "1989-03-07T00:00:00Z", "discountedPrice": 40, "expireAt": "1977-05-03T00:00:00Z", "price": 6, "purchaseAt": "1971-08-30T00:00:00Z", "trialPrice": 65}, {"currencyCode": "xazyEBvr4n43SWKG", "currencyNamespace": "uhUkNr00akw13hBv", "currencyType": "VIRTUAL", "discountAmount": 85, "discountExpireAt": "1996-01-15T00:00:00Z", "discountPercentage": 31, "discountPurchaseAt": "1981-11-28T00:00:00Z", "discountedPrice": 2, "expireAt": "1990-03-25T00:00:00Z", "price": 4, "purchaseAt": "1977-11-15T00:00:00Z", "trialPrice": 16}, {"currencyCode": "WPnAKEfWD4wj15AP", "currencyNamespace": "umrZQauhz2srMc9k", "currencyType": "REAL", "discountAmount": 64, "discountExpireAt": "1996-07-10T00:00:00Z", "discountPercentage": 33, "discountPurchaseAt": "1990-02-05T00:00:00Z", "discountedPrice": 85, "expireAt": "1992-05-08T00:00:00Z", "price": 78, "purchaseAt": "1996-07-06T00:00:00Z", "trialPrice": 96}], "fwpObF8xTYn3LQ92": [{"currencyCode": "3Ds458AMWKpBo6E0", "currencyNamespace": "YHIOfEoVwjP9Sbjn", "currencyType": "REAL", "discountAmount": 53, "discountExpireAt": "1990-11-25T00:00:00Z", "discountPercentage": 51, "discountPurchaseAt": "1987-04-20T00:00:00Z", "discountedPrice": 67, "expireAt": "1997-10-07T00:00:00Z", "price": 22, "purchaseAt": "1976-03-26T00:00:00Z", "trialPrice": 71}, {"currencyCode": "22igZJeP7XNb4OKf", "currencyNamespace": "DfyOHxH0DcIfRMI0", "currencyType": "REAL", "discountAmount": 44, "discountExpireAt": "1976-08-03T00:00:00Z", "discountPercentage": 88, "discountPurchaseAt": "1981-07-25T00:00:00Z", "discountedPrice": 82, "expireAt": "1981-07-23T00:00:00Z", "price": 36, "purchaseAt": "1971-03-08T00:00:00Z", "trialPrice": 58}, {"currencyCode": "XX1o2dUqZeBxrK6M", "currencyNamespace": "sstMReSQjpOSYtyz", "currencyType": "VIRTUAL", "discountAmount": 25, "discountExpireAt": "1996-03-07T00:00:00Z", "discountPercentage": 95, "discountPurchaseAt": "1999-04-07T00:00:00Z", "discountedPrice": 86, "expireAt": "1990-12-22T00:00:00Z", "price": 99, "purchaseAt": "1979-11-26T00:00:00Z", "trialPrice": 49}]}}, {"itemIdentities": ["1c95RlWRqNpBsgTU", "kvgGF0GrBkvMh4sa", "VsWLRyEjqfRZRnsk"], "itemIdentityType": "ITEM_ID", "regionData": {"UppxVxg7enb2Perr": [{"currencyCode": "ckgK6Ij86iwmHnl0", "currencyNamespace": "ChesldJupHxiWx1T", "currencyType": "VIRTUAL", "discountAmount": 30, "discountExpireAt": "1992-10-20T00:00:00Z", "discountPercentage": 40, "discountPurchaseAt": "1994-05-31T00:00:00Z", "discountedPrice": 18, "expireAt": "1992-06-28T00:00:00Z", "price": 68, "purchaseAt": "1990-04-28T00:00:00Z", "trialPrice": 12}, {"currencyCode": "lnlwyeDidY5JOwh7", "currencyNamespace": "1ahqjy2enzOCYTwQ", "currencyType": "REAL", "discountAmount": 81, "discountExpireAt": "1991-09-20T00:00:00Z", "discountPercentage": 6, "discountPurchaseAt": "1994-01-10T00:00:00Z", "discountedPrice": 19, "expireAt": "1978-06-17T00:00:00Z", "price": 24, "purchaseAt": "1998-08-10T00:00:00Z", "trialPrice": 89}, {"currencyCode": "M1At5DKNBCJiODBv", "currencyNamespace": "H2iCBg9Z166YRkEU", "currencyType": "REAL", "discountAmount": 22, "discountExpireAt": "1986-06-16T00:00:00Z", "discountPercentage": 94, "discountPurchaseAt": "1982-01-25T00:00:00Z", "discountedPrice": 40, "expireAt": "1973-11-24T00:00:00Z", "price": 38, "purchaseAt": "1976-11-26T00:00:00Z", "trialPrice": 84}], "3GxTRBqOROLqgrfo": [{"currencyCode": "usgDeuTp3XqsYPOB", "currencyNamespace": "TVM4qbsCQc20NmHT", "currencyType": "VIRTUAL", "discountAmount": 48, "discountExpireAt": "1978-07-16T00:00:00Z", "discountPercentage": 87, "discountPurchaseAt": "1987-01-03T00:00:00Z", "discountedPrice": 18, "expireAt": "1975-02-05T00:00:00Z", "price": 93, "purchaseAt": "1989-07-12T00:00:00Z", "trialPrice": 83}, {"currencyCode": "W6gub7lFI9xVarld", "currencyNamespace": "JmNYzYDDUnF66cAc", "currencyType": "REAL", "discountAmount": 47, "discountExpireAt": "1973-06-30T00:00:00Z", "discountPercentage": 82, "discountPurchaseAt": "1985-10-06T00:00:00Z", "discountedPrice": 59, "expireAt": "1991-08-14T00:00:00Z", "price": 87, "purchaseAt": "1985-06-12T00:00:00Z", "trialPrice": 48}, {"currencyCode": "BApKFh9sr8pYhtoE", "currencyNamespace": "AfWsaDrGWOVc90UM", "currencyType": "VIRTUAL", "discountAmount": 93, "discountExpireAt": "1999-06-08T00:00:00Z", "discountPercentage": 41, "discountPurchaseAt": "1976-08-13T00:00:00Z", "discountedPrice": 90, "expireAt": "1988-02-29T00:00:00Z", "price": 54, "purchaseAt": "1989-11-06T00:00:00Z", "trialPrice": 86}], "ok02lugkHk4dWGoy": [{"currencyCode": "vUlH0RArm77calqq", "currencyNamespace": "a3xPz95BaY2g77sg", "currencyType": "REAL", "discountAmount": 31, "discountExpireAt": "1979-12-24T00:00:00Z", "discountPercentage": 96, "discountPurchaseAt": "1979-11-20T00:00:00Z", "discountedPrice": 20, "expireAt": "1995-07-15T00:00:00Z", "price": 4, "purchaseAt": "1988-02-14T00:00:00Z", "trialPrice": 59}, {"currencyCode": "DeVm6WOeLydaBkVc", "currencyNamespace": "4KdS03hTaiFqC6GD", "currencyType": "VIRTUAL", "discountAmount": 29, "discountExpireAt": "1982-06-22T00:00:00Z", "discountPercentage": 18, "discountPurchaseAt": "1981-07-04T00:00:00Z", "discountedPrice": 51, "expireAt": "1985-01-21T00:00:00Z", "price": 16, "purchaseAt": "1997-09-10T00:00:00Z", "trialPrice": 14}, {"currencyCode": "LhVHPOAITo65yUJo", "currencyNamespace": "YyM3C74nZKue2UmX", "currencyType": "VIRTUAL", "discountAmount": 8, "discountExpireAt": "1978-03-22T00:00:00Z", "discountPercentage": 69, "discountPurchaseAt": "1972-07-04T00:00:00Z", "discountedPrice": 84, "expireAt": "1973-09-13T00:00:00Z", "price": 100, "purchaseAt": "1972-11-08T00:00:00Z", "trialPrice": 53}]}}]}' \
    > test.out 2>&1
eval_tap $? 138 'BulkUpdateRegionData' test.out

#- 139 SearchItems
samples/cli/sample-apps Platform searchItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --itemType 'SEASON' \
    --limit '92' \
    --offset '90' \
    --sortBy 'ljTQ6QF44U77DWjp' \
    --storeId 'R81iFnDoIXMVcZUr' \
    --keyword 'NFlZg14dX1ieSBIh' \
    --language 'dFOboEYa2Z2UwjQR' \
    > test.out 2>&1
eval_tap $? 139 'SearchItems' test.out

#- 140 QueryUncategorizedItems
samples/cli/sample-apps Platform queryUncategorizedItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --limit '9' \
    --offset '37' \
    --sortBy '["createdAt:desc", "displayOrder:desc", "updatedAt:asc"]' \
    --storeId 'llbdY8z2MNvqnya8' \
    > test.out 2>&1
eval_tap $? 140 'QueryUncategorizedItems' test.out

#- 141 GetItem
samples/cli/sample-apps Platform getItem \
    --itemId 'LRsWqfCf1wccypsV' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'QLmb7MylD2BliRBB' \
    > test.out 2>&1
eval_tap $? 141 'GetItem' test.out

#- 142 UpdateItem
samples/cli/sample-apps Platform updateItem \
    --itemId 'zccenR4rT8wKx0Hl' \
    --namespace $AB_NAMESPACE \
    --storeId '6Yz5gN93YmJA9CcM' \
    --body '{"appId": "EiFIxBJ58RBzeZNc", "appType": "SOFTWARE", "baseAppId": "Xa6WIVoKhrCO7IhR", "boothName": "p0MLs3JcbM7H9E6o", "categoryPath": "aVMiwrPvJRBAvGEx", "clazz": "ae5yEEZU1yaVY0Vk", "displayOrder": 45, "entitlementType": "CONSUMABLE", "ext": {"lEJmF9LZdDi07Etv": {}, "6xkMpaf7LsQ8OkAy": {}, "Cp9sEoQBUUyAF1Jf": {}}, "features": ["2PDeGE9ne53aqAkK", "B1aPeA4JXzkmf3ww", "yRurcMc5NsfxSjRX"], "flexible": true, "images": [{"as": "R0U0Vsl6eoThEL8s", "caption": "yLJVaTqlduemS6GS", "height": 22, "imageUrl": "6mRTrZgCGKyBohUB", "smallImageUrl": "T7mhmyLbBEOpxQla", "width": 25}, {"as": "29dX3MYMxoOKNewU", "caption": "7to67yVC7iUqoHhX", "height": 19, "imageUrl": "975UuUqImhPZfGDS", "smallImageUrl": "5GigzQyDnqRtgp73", "width": 44}, {"as": "W1pOmaERM0arTged", "caption": "p7QbhueGV7s0Ponu", "height": 3, "imageUrl": "PUxSwMjTYzP6noXE", "smallImageUrl": "H3MhmEjCdW6JYkoY", "width": 18}], "inventoryConfig": {"customAttributes": {"nUR5BsIlxIPDK0Ol": {}, "zLbhPg167ZBdm9gp": {}, "yo6IgHTRmy98aWy0": {}}, "serverCustomAttributes": {"Ta837dArqUySq18Y": {}, "XfXypGr0shNNuVnr": {}, "Tma0fPYLfE3FztT2": {}}, "slotUsed": 66}, "itemIds": ["Qwobxl3pDQ4jysri", "cezCiRiBKMA7r9Wu", "DPCSxeZOkplNSAxW"], "itemQty": {"6qljtA36r8Mozjsa": 0, "4DXLqSIlmt0VUSXj": 28, "a7H966AixpLbdTT3": 57}, "itemType": "CODE", "listable": true, "localizations": {"QB8QVxofPOkfZR7G": {"description": "xzbKFMGQZIdtuhrc", "localExt": {"AelBKftM297zyYmQ": {}, "u9pb9xRRkdAtK1Pu": {}, "bqcnTfEv9pwfqW24": {}}, "longDescription": "5PVq7qch9Dxp6cw5", "title": "k6qVGhCVydmSqevr"}, "vvOG602iwH9mlo5y": {"description": "UDABwalBvDzGi5bU", "localExt": {"IVebQp82JuZZ0tls": {}, "hs1F41c2DIJhSoln": {}, "xTJlngO2ulpaali8": {}}, "longDescription": "i89hWrIU4qP6Fiyx", "title": "1XZtfMZDx0snoV01"}, "QAkcq4BihYMjh0X9": {"description": "lmcQWhZ1EY2U24Lp", "localExt": {"Tn5eNLrFXVAdwyQY": {}, "GgbJxD1wgzxyejsK": {}, "XgB2aFdTQ4ktxCrf": {}}, "longDescription": "oouFHVPfcXKh4sGj", "title": "Vw31GZsT6hgGJrvo"}}, "lootBoxConfig": {"rewardCount": 100, "rewards": [{"lootBoxItems": [{"count": 48, "duration": 54, "endDate": "1973-02-26T00:00:00Z", "itemId": "RELPoKZPVK4AwA6q", "itemSku": "juc3kYJMXgVw6tps", "itemType": "esrPklG5dTzrUic4"}, {"count": 64, "duration": 4, "endDate": "1978-10-01T00:00:00Z", "itemId": "QK873DRMFV573jvo", "itemSku": "OrXWzx68AZCJqDrJ", "itemType": "oOUMCMc4OkPrRiz8"}, {"count": 83, "duration": 79, "endDate": "1982-04-25T00:00:00Z", "itemId": "omAsZWBBs4JcyUp7", "itemSku": "uSGvYtCKsOzAoy8j", "itemType": "ugfcaekmftWy1n0Y"}], "name": "gppSz9poHA7QcWjU", "odds": 0.036678283879027274, "type": "REWARD", "weight": 15}, {"lootBoxItems": [{"count": 15, "duration": 8, "endDate": "1997-08-08T00:00:00Z", "itemId": "N1VvF3xIuSCZ0B1z", "itemSku": "HaUEQ8AglnF4VUIc", "itemType": "evOA1r6f6w0RdnpP"}, {"count": 35, "duration": 94, "endDate": "1985-04-09T00:00:00Z", "itemId": "gsqjFJvtnYAcOriT", "itemSku": "fyijBX9DlwvzmvBJ", "itemType": "gK95s3BfGAjykvuj"}, {"count": 13, "duration": 32, "endDate": "1996-06-04T00:00:00Z", "itemId": "NqCoIeFziUWqgh3e", "itemSku": "Krkf7kO27U3thtrl", "itemType": "CqRyWSZ3hieHvMFY"}], "name": "84Mys8eEbNv6esg0", "odds": 0.8396142752022715, "type": "REWARD", "weight": 69}, {"lootBoxItems": [{"count": 68, "duration": 86, "endDate": "1975-07-08T00:00:00Z", "itemId": "eIrhF0eVss7NabcC", "itemSku": "qcXZc5imwBwLDEz1", "itemType": "RBWEQTt0IijmlhDm"}, {"count": 5, "duration": 91, "endDate": "1987-08-10T00:00:00Z", "itemId": "NJh8Igr9HLT4mgW9", "itemSku": "c0lNjEaf8pRxUgp1", "itemType": "IGbAwsoCx9EcuIW7"}, {"count": 61, "duration": 25, "endDate": "1989-06-11T00:00:00Z", "itemId": "A0WtEOCt2J3STTvz", "itemSku": "JFBBlVeWca2Pq504", "itemType": "FVOBL3cNR0Hnlyrr"}], "name": "VijqxlzTpZ9PqNce", "odds": 0.43830840177853936, "type": "REWARD", "weight": 3}], "rollFunction": "CUSTOM"}, "maxCount": 13, "maxCountPerUser": 74, "name": "KdncpoO6UmGUxwi1", "optionBoxConfig": {"boxItems": [{"count": 38, "duration": 45, "endDate": "1975-11-15T00:00:00Z", "itemId": "upCQYhFazesioxol", "itemSku": "QEGoeSx5RccADx9J", "itemType": "1jOtBQghzOFJ4fGc"}, {"count": 21, "duration": 55, "endDate": "1979-05-26T00:00:00Z", "itemId": "eAoD1gNK5SnERkSa", "itemSku": "21gAOxCPQDK4pMdV", "itemType": "MfIeNdd1iQEoS5vx"}, {"count": 42, "duration": 51, "endDate": "1996-04-21T00:00:00Z", "itemId": "881OeoVIYFtt42xs", "itemSku": "lMw9vzibowTpYEFE", "itemType": "0GpYaPdPVcOfl1UJ"}]}, "purchasable": false, "recurring": {"cycle": "QUARTERLY", "fixedFreeDays": 24, "fixedTrialCycles": 3, "graceDays": 60}, "regionData": {"xz6ji8Lnh4LSfLh9": [{"currencyCode": "dxhltyJJkYyI0G8p", "currencyNamespace": "wtxDQe3V9yMDgycJ", "currencyType": "VIRTUAL", "discountAmount": 23, "discountExpireAt": "1973-07-25T00:00:00Z", "discountPercentage": 44, "discountPurchaseAt": "1985-07-29T00:00:00Z", "expireAt": "1988-02-04T00:00:00Z", "price": 35, "purchaseAt": "1991-09-03T00:00:00Z", "trialPrice": 45}, {"currencyCode": "tVKpyHz7X2YdowhM", "currencyNamespace": "ZSZtTToEawXHsxKO", "currencyType": "REAL", "discountAmount": 17, "discountExpireAt": "1995-04-01T00:00:00Z", "discountPercentage": 1, "discountPurchaseAt": "1973-08-15T00:00:00Z", "expireAt": "1996-03-20T00:00:00Z", "price": 93, "purchaseAt": "1996-06-06T00:00:00Z", "trialPrice": 6}, {"currencyCode": "Hnv1mUmYB0j3mQYA", "currencyNamespace": "1dlwQ033e29GpKH6", "currencyType": "VIRTUAL", "discountAmount": 48, "discountExpireAt": "1978-01-16T00:00:00Z", "discountPercentage": 33, "discountPurchaseAt": "1985-12-27T00:00:00Z", "expireAt": "1975-10-01T00:00:00Z", "price": 76, "purchaseAt": "1987-08-05T00:00:00Z", "trialPrice": 62}], "yt4Wd6JuN1eZXr5i": [{"currencyCode": "tklvwrqbWX1CMpa4", "currencyNamespace": "1e095PepDud7A3I9", "currencyType": "VIRTUAL", "discountAmount": 28, "discountExpireAt": "1986-12-18T00:00:00Z", "discountPercentage": 58, "discountPurchaseAt": "1996-10-11T00:00:00Z", "expireAt": "1985-03-28T00:00:00Z", "price": 69, "purchaseAt": "1978-12-06T00:00:00Z", "trialPrice": 32}, {"currencyCode": "US8CfVhVLk4PT8c4", "currencyNamespace": "lQ7ZQMMomKLih28M", "currencyType": "VIRTUAL", "discountAmount": 40, "discountExpireAt": "1977-09-01T00:00:00Z", "discountPercentage": 81, "discountPurchaseAt": "1980-12-10T00:00:00Z", "expireAt": "1971-04-17T00:00:00Z", "price": 74, "purchaseAt": "1983-03-26T00:00:00Z", "trialPrice": 59}, {"currencyCode": "ZY2HxqcmqRl4dL5C", "currencyNamespace": "qPSZCOH113zuvGOi", "currencyType": "REAL", "discountAmount": 87, "discountExpireAt": "1999-03-08T00:00:00Z", "discountPercentage": 9, "discountPurchaseAt": "1991-12-20T00:00:00Z", "expireAt": "1976-03-01T00:00:00Z", "price": 97, "purchaseAt": "1979-08-03T00:00:00Z", "trialPrice": 46}], "KGJy6DFHsBFC1na3": [{"currencyCode": "0W3FNlU0ZrknhVFj", "currencyNamespace": "fdClHEzGReuMVZ95", "currencyType": "VIRTUAL", "discountAmount": 9, "discountExpireAt": "1997-07-08T00:00:00Z", "discountPercentage": 18, "discountPurchaseAt": "1997-04-24T00:00:00Z", "expireAt": "1995-04-10T00:00:00Z", "price": 40, "purchaseAt": "1973-11-13T00:00:00Z", "trialPrice": 78}, {"currencyCode": "FLqKzSZNloLBUeJB", "currencyNamespace": "uz4Vem7hkypd8dhc", "currencyType": "REAL", "discountAmount": 51, "discountExpireAt": "1987-10-06T00:00:00Z", "discountPercentage": 40, "discountPurchaseAt": "1976-09-26T00:00:00Z", "expireAt": "1972-07-11T00:00:00Z", "price": 5, "purchaseAt": "1987-03-18T00:00:00Z", "trialPrice": 41}, {"currencyCode": "cP59BMQBDt2wlJIe", "currencyNamespace": "xSs0tjji72RuOXLC", "currencyType": "VIRTUAL", "discountAmount": 42, "discountExpireAt": "1972-05-09T00:00:00Z", "discountPercentage": 31, "discountPurchaseAt": "1974-04-06T00:00:00Z", "expireAt": "1974-11-17T00:00:00Z", "price": 39, "purchaseAt": "1974-03-03T00:00:00Z", "trialPrice": 4}]}, "saleConfig": {"currencyCode": "zK81td0L8WYTIf7x", "price": 8}, "seasonType": "TIER", "sectionExclusive": true, "sellable": false, "sku": "j9oUyhFIo359xuY4", "stackable": true, "status": "ACTIVE", "tags": ["yS8dv8HOVSuGmQQM", "RvI98AYSwd3aQ3oa", "MxPIL0n1bqaO1YUN"], "targetCurrencyCode": "tXYDpISHRMhzvS9u", "targetNamespace": "oJlP31v4oAI5XRh3", "thumbnailUrl": "bgy33FRnv987Lh2F", "useCount": 94}' \
    > test.out 2>&1
eval_tap $? 142 'UpdateItem' test.out

#- 143 DeleteItem
samples/cli/sample-apps Platform deleteItem \
    --itemId 'EWVsPxRLaG3dymKr' \
    --namespace $AB_NAMESPACE \
    --featuresToCheck '["REWARD", "ENTITLEMENT", "REWARD"]' \
    --force 'false' \
    --storeId '9Y0P0xF77LBoj64J' \
    > test.out 2>&1
eval_tap $? 143 'DeleteItem' test.out

#- 144 AcquireItem
samples/cli/sample-apps Platform acquireItem \
    --itemId 'TbBiFycyMr8Tji9d' \
    --namespace $AB_NAMESPACE \
    --body '{"count": 69, "orderNo": "ry6ILP0I4elWPLI2"}' \
    > test.out 2>&1
eval_tap $? 144 'AcquireItem' test.out

#- 145 GetApp
samples/cli/sample-apps Platform getApp \
    --itemId 'jjmHbKUCuXDyIJ0L' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId '19vDnRVttlA5a65I' \
    > test.out 2>&1
eval_tap $? 145 'GetApp' test.out

#- 146 UpdateApp
samples/cli/sample-apps Platform updateApp \
    --itemId 'f45vBCwzhVJFUfiO' \
    --namespace $AB_NAMESPACE \
    --storeId 'Z11fLX99JZ6kRqHN' \
    --body '{"carousel": [{"alt": "BFovG7aJZtWjz3y3", "previewUrl": "qowcMLw9HrPo3LLL", "thumbnailUrl": "vwDxCoIuqzjcQCee", "type": "video", "url": "oOLTqSEZz1FUobUA", "videoSource": "vimeo"}, {"alt": "zTF1CkthkBWUDGGc", "previewUrl": "BSSl8b0aYI6ZJ8j3", "thumbnailUrl": "DkzTHC7EYcHg6VLQ", "type": "video", "url": "lFn2l18MQEu11R4a", "videoSource": "vimeo"}, {"alt": "jzm3xtx81c8frROE", "previewUrl": "n2lhdHDgIVRFFsZx", "thumbnailUrl": "EVZCOWz2Ko4IYYvI", "type": "video", "url": "mC7svhsu63Vre2YW", "videoSource": "youtube"}], "developer": "RtBaX3QWiNnfEE8d", "forumUrl": "I6wu7a0b0RUBiigt", "genres": ["MassivelyMultiplayer", "Sports", "Racing"], "localizations": {"r1ecfivteJmHLYfF": {"announcement": "PY19WiiqeZNLwYlw", "slogan": "odezwwEEjClvbBkr"}, "LLCUwBd8GeKvXom0": {"announcement": "xJTO2hNaZqZoKwNx", "slogan": "oFk09XW8ij3x5UcD"}, "XGR5qpGL3ZF9zakS": {"announcement": "pLUScNk74PATbOyZ", "slogan": "fNqRSXXNtBm8Drmn"}}, "platformRequirements": {"SJWrfRFpOxwywenO": [{"additionals": "MQ0tniNqmu0j9Ssg", "directXVersion": "U0JgWbUxhstyP3NF", "diskSpace": "5PBTsrU2aw69Dg17", "graphics": "NZmzsqF7spz2YUXp", "label": "6LIpnomff6T945ED", "osVersion": "PxJ3GAOACnljBz4z", "processor": "jPFhAiovolRd1fUS", "ram": "9WFLegzXKmH5PYxw", "soundCard": "DjjyNTUakmUL6ZJY"}, {"additionals": "d7D8cRXAvFeY9yMa", "directXVersion": "T4N2CONu01yMYRpI", "diskSpace": "bxQqzn9lHCETvmy8", "graphics": "uJghiyAxrGq186Lx", "label": "WdQd0ok25Qgnpf5y", "osVersion": "VZy48s4H7F0qp748", "processor": "YUnq0Y1J7mVMdQu0", "ram": "XdJUgufYtyhlm57l", "soundCard": "6HlC1iT6FVLACCkI"}, {"additionals": "I31ukwySRSrWb1Nm", "directXVersion": "ODXF6aJ1nWUC4WTN", "diskSpace": "JvCtUIojLQjg3qGg", "graphics": "aJqZRkrzI4jCygFO", "label": "wM8zaM6vXTMuIZR3", "osVersion": "0nmNjJQMLZepaOUs", "processor": "4tzUPDzo94NfW5Mg", "ram": "Py8HSIijLAvLuQmq", "soundCard": "1M44exO6usl6C7zb"}], "4FU0alkc0V0l0i2e": [{"additionals": "XOaOVYBnywpmrNg2", "directXVersion": "gkrJ8hTUsN78p0iy", "diskSpace": "imrZxyB76G3YoCkf", "graphics": "68CXtkkr2b77fKRj", "label": "dEncYMXoyT1RdQeV", "osVersion": "a5cVnwelZTS38lPK", "processor": "fTafhble96nMof3W", "ram": "w9jDGRmbrvWOnOq9", "soundCard": "wTswnwxoxAfMB4RR"}, {"additionals": "SNagJy0x9zaT28BL", "directXVersion": "ptHV5GbapbkX7TWl", "diskSpace": "WJwtLQ9V2jSWEfUO", "graphics": "pbh56gEyFb2n73TX", "label": "yozDbEUuu9eRYg9Q", "osVersion": "ucKFeqXtTQC2nry6", "processor": "e9CORbtECChmU4H7", "ram": "sIq1viKXwCkOZgOY", "soundCard": "0mbTrdHpFyx3O06O"}, {"additionals": "fOxgDIar6P27hnqx", "directXVersion": "BRuKDaE9bXlv7azB", "diskSpace": "7dXODrZKq6N9lVRR", "graphics": "WLIrkAZUrrGA1mOb", "label": "DYD2vtsCaZkdh2yk", "osVersion": "A3ZQRtbPefDXqnEU", "processor": "nCw3WidLZdxYtZpy", "ram": "1DUYZNXaoSNspEIg", "soundCard": "CBTYn0dFnYQObRz2"}], "nNzcPm7fNFByhkV3": [{"additionals": "AbC0cokj8ke034hk", "directXVersion": "XzYhsg9nW0ptpDqq", "diskSpace": "27IGF5K6wUCngZgC", "graphics": "eQyIe2lVOgAFszbJ", "label": "xKiYDGg0ZyhCHsJk", "osVersion": "z8cGU4SIlB7OPrlv", "processor": "0sqC4z4UHSlRHTnv", "ram": "1sOjpvZBeYK8I7jY", "soundCard": "JA8YM0AL9CXSptUi"}, {"additionals": "5q8lh1WF9LutJstn", "directXVersion": "R9YguZ1DIISYXRYw", "diskSpace": "MaZTyxZ4nZhdbS7Z", "graphics": "xNMcTWQf6ZRN5s4q", "label": "cwEjQlz8Hh5J7sJL", "osVersion": "0FdUP1uMMwEj4MFt", "processor": "53cNBQE7GAWMPXVX", "ram": "8i6iULREHSvg3WGv", "soundCard": "9hvcti7CxRy1My2k"}, {"additionals": "Qu4xSkk4cCRp7eS8", "directXVersion": "CmCUj3asU2Ty0tLq", "diskSpace": "uq8OKZdufQUOKV99", "graphics": "5uPE2UxOJVzCLEeM", "label": "GL7xVxBq2j6Lc0Qa", "osVersion": "oASYgRfGoiV4SlpK", "processor": "zlweQui4rJLk5sFH", "ram": "ovTpHwumsy60h9Ys", "soundCard": "LvGPRsh5VfbR4rBW"}]}, "platforms": ["Windows", "Windows", "MacOS"], "players": ["CrossPlatformMulti", "Single", "LocalCoop"], "primaryGenre": "MassivelyMultiplayer", "publisher": "tukdIKoB6kKSA6H1", "releaseDate": "1996-07-04T00:00:00Z", "websiteUrl": "0wqsqWbNrtds34ra"}' \
    > test.out 2>&1
eval_tap $? 146 'UpdateApp' test.out

#- 147 DisableItem
samples/cli/sample-apps Platform disableItem \
    --itemId '1YvhsxNo6t7fM2ca' \
    --namespace $AB_NAMESPACE \
    --storeId 'OVGSbtahNvuYiSQ2' \
    --body '{"featuresToCheck": ["CATALOG", "IAP"]}' \
    > test.out 2>&1
eval_tap $? 147 'DisableItem' test.out

#- 148 GetItemDynamicData
samples/cli/sample-apps Platform getItemDynamicData \
    --itemId '0mRYsFZx839t86gl' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 148 'GetItemDynamicData' test.out

#- 149 EnableItem
samples/cli/sample-apps Platform enableItem \
    --itemId 'FkASBQDwuSkBXOXv' \
    --namespace $AB_NAMESPACE \
    --storeId 'cBVw7abP6vVmva3r' \
    > test.out 2>&1
eval_tap $? 149 'EnableItem' test.out

#- 150 FeatureItem
samples/cli/sample-apps Platform featureItem \
    --feature 'UnrHDmeXbstFwKip' \
    --itemId '9c0AOtbuhPKIqTLn' \
    --namespace $AB_NAMESPACE \
    --storeId 'T3P3nW7a5kg0Ruha' \
    > test.out 2>&1
eval_tap $? 150 'FeatureItem' test.out

#- 151 DefeatureItem
samples/cli/sample-apps Platform defeatureItem \
    --feature '88VPdpNR3XfyQarF' \
    --itemId '7uDt3HDavLQZedNa' \
    --namespace $AB_NAMESPACE \
    --storeId 'NwNKoD3iwvQp4FvZ' \
    > test.out 2>&1
eval_tap $? 151 'DefeatureItem' test.out

#- 152 GetLocaleItem
samples/cli/sample-apps Platform getLocaleItem \
    --itemId 'HSDX15PvS2EpyZIJ' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --language '1hhcBgxSHNCNtwbV' \
    --populateBundle 'true' \
    --region 'fYPSKM2rd4YyrD4Q' \
    --storeId 'gIcSwIqb9rl09Snm' \
    > test.out 2>&1
eval_tap $? 152 'GetLocaleItem' test.out

#- 153 UpdateItemPurchaseCondition
samples/cli/sample-apps Platform updateItemPurchaseCondition \
    --itemId 'XIcKjg5e7Oct6rkx' \
    --namespace $AB_NAMESPACE \
    --storeId 'T6gNchGpVOkz6Ijt' \
    --body '{"purchaseCondition": {"conditionGroups": [{"operator": "or", "predicates": [{"anyOf": 82, "code": "6iGOGnsNMyhs3ukc", "comparison": "includes", "name": "8CWAdpXxgGkNyihz", "predicateType": "SeasonTierPredicate", "value": "4kTQbOMYsUmO8l54", "values": ["EKvMMavyAQz8QHNw", "S4FT24CseL1qKg82", "m5RCpD6eBXYC2uXW"]}, {"anyOf": 24, "code": "lZxFafUlJL3hush3", "comparison": "isGreaterThanOrEqual", "name": "tboHn5IWJrFi0OjO", "predicateType": "SeasonPassPredicate", "value": "9Grl4uVShWRt2L6q", "values": ["7FIeV7Fjc0EhEebq", "hAey3RA2ahA2mvaD", "HxFVel1D42U2G9e6"]}, {"anyOf": 38, "code": "Uj7NLQSLcIKF7C36", "comparison": "isLessThanOrEqual", "name": "Bual7u2NIN6PRJ3J", "predicateType": "SeasonTierPredicate", "value": "ZtBhwvLOEvQA6n2G", "values": ["rGJB8bn6knHah7Xn", "r0va2983kMHVJJ0v", "GuNFzdQoIUni56D1"]}]}, {"operator": "and", "predicates": [{"anyOf": 99, "code": "kDP8GlpunoxasHTI", "comparison": "is", "name": "FwJS9kEZwYB4b1qJ", "predicateType": "StatisticCodePredicate", "value": "pZq12kKFVVJyTC4c", "values": ["cVBdVYXg6AcqhtZx", "vjQcrhsNbJJ6pIht", "Pfq4UClwhSOu2NEd"]}, {"anyOf": 87, "code": "FtJYKjsZwkMK0AbO", "comparison": "is", "name": "qcIokkxagETdFJTJ", "predicateType": "SeasonTierPredicate", "value": "n6l3IirPOlrfoWoY", "values": ["0QN2gpcYLR5qncSm", "eXUhum13BCXZsFNF", "p0w07DkK55T14mVZ"]}, {"anyOf": 29, "code": "mk02GzSRWRlKg2SU", "comparison": "isLessThanOrEqual", "name": "6zPfkjNKjm2lLr3e", "predicateType": "SeasonTierPredicate", "value": "5YsQOrgMyAy7zEt2", "values": ["GkocFolKvoSC6kQi", "DT2cVwQ4QghAaa7d", "mi19i7NNJx0et6Vz"]}]}, {"operator": "or", "predicates": [{"anyOf": 13, "code": "vXoLJrxHQc0KBQg8", "comparison": "excludes", "name": "IawWIw7wAVm5PWJJ", "predicateType": "SeasonPassPredicate", "value": "sE0lxPb492Cmww38", "values": ["ov6fc4oe18Q1s5Vr", "Zmax1HqxZO2IGqHT", "wzTpjSXfxBkqAO9B"]}, {"anyOf": 71, "code": "srznn6LJcxIKKbSr", "comparison": "isLessThan", "name": "wV5s7qbOYPJX4ilp", "predicateType": "SeasonTierPredicate", "value": "R2Sv1aHW09q7K3aY", "values": ["SFwZbc3leXfUsLk2", "A1MrmZCLvlX3VTbA", "oChszEayWTv9aq3Q"]}, {"anyOf": 99, "code": "ioQycb55LyyAv2r2", "comparison": "excludes", "name": "MYYoLvywOAsZ9MaQ", "predicateType": "SeasonTierPredicate", "value": "3CbFGqWt1zUVrliU", "values": ["xwzJjpWtUrHP35cx", "XK92Z7bOv1LMtChG", "5xNjXjmMHpTDuQrb"]}]}]}}' \
    > test.out 2>&1
eval_tap $? 153 'UpdateItemPurchaseCondition' test.out

#- 154 QueryItemReferences
samples/cli/sample-apps Platform queryItemReferences \
    --itemId 'nAEGtxPTt5w0IUhb' \
    --namespace $AB_NAMESPACE \
    --featuresToCheck '["REWARD", "ENTITLEMENT", "CAMPAIGN"]' \
    --storeId 'WfREv85hpWqt0J5O' \
    > test.out 2>&1
eval_tap $? 154 'QueryItemReferences' test.out

#- 155 ReturnItem
samples/cli/sample-apps Platform returnItem \
    --itemId 'F0MtIUdeUg3kWiUZ' \
    --namespace $AB_NAMESPACE \
    --body '{"orderNo": "CELDZRAvD0gAJ4MM"}' \
    > test.out 2>&1
eval_tap $? 155 'ReturnItem' test.out

#- 156 QueryKeyGroups
samples/cli/sample-apps Platform queryKeyGroups \
    --namespace $AB_NAMESPACE \
    --limit '52' \
    --name 'LV3b77ThspPLx3yJ' \
    --offset '67' \
    --tag 'kSPsZsirQSC4oDAF' \
    > test.out 2>&1
eval_tap $? 156 'QueryKeyGroups' test.out

#- 157 CreateKeyGroup
samples/cli/sample-apps Platform createKeyGroup \
    --namespace $AB_NAMESPACE \
    --body '{"description": "nmj0DtmU5rVPvwjn", "name": "0ZN9CSmqemcqrDD0", "status": "ACTIVE", "tags": ["LggLsAYSkXInvgcK", "3zcDuL2enWKWFfWb", "h6IpiUv6QaEcIF3P"]}' \
    > test.out 2>&1
eval_tap $? 157 'CreateKeyGroup' test.out

#- 158 GetKeyGroupByBoothName
eval_tap 0 158 'GetKeyGroupByBoothName # SKIP deprecated' test.out

#- 159 GetKeyGroup
samples/cli/sample-apps Platform getKeyGroup \
    --keyGroupId 'ink8ccBqG6pMiYBY' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 159 'GetKeyGroup' test.out

#- 160 UpdateKeyGroup
samples/cli/sample-apps Platform updateKeyGroup \
    --keyGroupId 'oh0hpUf7Hw6UVKmR' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "3kHCbJuJyJUSRZRi", "name": "R2whxl7jinT2JQyl", "status": "INACTIVE", "tags": ["Wx48LQSN4atGv2gS", "hJE6BFxpnQ0YotcS", "L5kqdI0LcpAfrN70"]}' \
    > test.out 2>&1
eval_tap $? 160 'UpdateKeyGroup' test.out

#- 161 GetKeyGroupDynamic
samples/cli/sample-apps Platform getKeyGroupDynamic \
    --keyGroupId '32MhA0MMUHDkalRn' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 161 'GetKeyGroupDynamic' test.out

#- 162 ListKeys
samples/cli/sample-apps Platform listKeys \
    --keyGroupId 'CRLju6Bz1DBxWhUI' \
    --namespace $AB_NAMESPACE \
    --limit '32' \
    --offset '5' \
    --status 'ACTIVE' \
    > test.out 2>&1
eval_tap $? 162 'ListKeys' test.out

#- 163 UploadKeys
samples/cli/sample-apps Platform uploadKeys \
    --keyGroupId 'xv5ncjLCEEeIv8xo' \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 163 'UploadKeys' test.out

#- 164 QueryOrders
samples/cli/sample-apps Platform queryOrders \
    --namespace $AB_NAMESPACE \
    --endTime 'PcRADnrgwPp1mjnf' \
    --limit '11' \
    --offset '85' \
    --orderNos '["TVtKYNT06T01RY2s", "5h7D9zQWJjFN6M1H", "zVsLcYlCxiKP1XB2"]' \
    --sortBy 'Jw6ImTTxwCJTvKwz' \
    --startTime 'ffgzhiKQXQMxENRE' \
    --status 'REFUND_FAILED' \
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
    --orderNo 'U93FM39PpZMKayZq' \
    > test.out 2>&1
eval_tap $? 166 'GetOrder' test.out

#- 167 RefundOrder
samples/cli/sample-apps Platform refundOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'VERKRC0NV0xi5AS1' \
    --body '{"description": "JsoKbAQkXTpGL29b"}' \
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
    --body '{"domains": ["BvTuuKKEzF6YfUGY", "x65nlazVrsHsX3YC", "HwkieogFdbsnmpOb"]}' \
    > test.out 2>&1
eval_tap $? 171 'UpdatePaymentDomainWhitelistConfig' test.out

#- 172 QueryPaymentNotifications
samples/cli/sample-apps Platform queryPaymentNotifications \
    --namespace $AB_NAMESPACE \
    --endDate 'hfU1JrrIAaaOSfAl' \
    --externalId 'vQSPA4zgVWSVRZNI' \
    --limit '99' \
    --notificationSource 'CHECKOUT' \
    --notificationType '8DnDWOGhcFPTBvI9' \
    --offset '84' \
    --paymentOrderNo '6n4bjDlUKaPxs9ES' \
    --startDate 'W9szLbsMiQUD16XP' \
    --status 'IGNORED' \
    > test.out 2>&1
eval_tap $? 172 'QueryPaymentNotifications' test.out

#- 173 QueryPaymentOrders
samples/cli/sample-apps Platform queryPaymentOrders \
    --namespace $AB_NAMESPACE \
    --channel 'EXTERNAL' \
    --extTxId 'LGjEnXTY1nZqBVFN' \
    --limit '20' \
    --offset '69' \
    --status 'CHARGE_FAILED' \
    > test.out 2>&1
eval_tap $? 173 'QueryPaymentOrders' test.out

#- 174 CreatePaymentOrderByDedicated
samples/cli/sample-apps Platform createPaymentOrderByDedicated \
    --namespace $AB_NAMESPACE \
    --body '{"currencyCode": "zrpgpjgWocT37Oep", "currencyNamespace": "mEpLTPCPH1ySAmWe", "customParameters": {"OkUBR4wdRAFKV3gS": {}, "Vm9BXzKGZqc6TB3O": {}, "XSEv0sBcuLacH1YC": {}}, "description": "RspxnmEBpha8PBzi", "extOrderNo": "TP0mWWafWbk5feFk", "extUserId": "DYK7UCD7oBPnp89o", "itemType": "SEASON", "language": "QhEi-rhnp", "metadata": {"k1hCJhtwqzDLT8nr": "e61U8RLIZWc90bEf", "8XQFg2yz5a9o1laI": "sDwXsbT8D7vfyIYv", "kH5jt0yGyxWXxxQT": "VCDpoLPewv2C9zxn"}, "notifyUrl": "4QwK9NrMbJRDfC2P", "omitNotification": false, "platform": "xiSHfQZ2VFVoSsLf", "price": 85, "recurringPaymentOrderNo": "RLkmsyh5fq3sxydy", "region": "o8bhZGBCdAGy5ON4", "returnUrl": "iIvPrKU03iMZdKOG", "sandbox": true, "sku": "xmsUOQ7yqUj6Vh3W", "subscriptionId": "WN9xkKLsA7c4Plwj", "targetNamespace": "e1TYddPXRt1CJBCI", "targetUserId": "4sBxV2YvGUfjMa4O", "title": "MZzmatoG4ByCI71K"}' \
    > test.out 2>&1
eval_tap $? 174 'CreatePaymentOrderByDedicated' test.out

#- 175 ListExtOrderNoByExtTxId
samples/cli/sample-apps Platform listExtOrderNoByExtTxId \
    --namespace $AB_NAMESPACE \
    --extTxId 'mnIqTirs4iQ4O475' \
    > test.out 2>&1
eval_tap $? 175 'ListExtOrderNoByExtTxId' test.out

#- 176 GetPaymentOrder
samples/cli/sample-apps Platform getPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'TJlUcaxojhHuhnlA' \
    > test.out 2>&1
eval_tap $? 176 'GetPaymentOrder' test.out

#- 177 ChargePaymentOrder
samples/cli/sample-apps Platform chargePaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo '3fQw0dVZacXv8Tym' \
    --body '{"extTxId": "IhJZ8ZEjHZ3ukSm5", "paymentMethod": "JcmyWi5XKvSD0Hy7", "paymentProvider": "PAYPAL"}' \
    > test.out 2>&1
eval_tap $? 177 'ChargePaymentOrder' test.out

#- 178 RefundPaymentOrderByDedicated
samples/cli/sample-apps Platform refundPaymentOrderByDedicated \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'eEOESjfDGzz1XjCP' \
    --body '{"description": "cH4j22WOFe2kr4vN"}' \
    > test.out 2>&1
eval_tap $? 178 'RefundPaymentOrderByDedicated' test.out

#- 179 SimulatePaymentOrderNotification
samples/cli/sample-apps Platform simulatePaymentOrderNotification \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'LaXjhr9qqHK8S1XE' \
    --body '{"amount": 43, "currencyCode": "8U3sVIAoRCbyoka1", "notifyType": "REFUND", "paymentProvider": "XSOLLA", "salesTax": 96, "vat": 27}' \
    > test.out 2>&1
eval_tap $? 179 'SimulatePaymentOrderNotification' test.out

#- 180 GetPaymentOrderChargeStatus
samples/cli/sample-apps Platform getPaymentOrderChargeStatus \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'L2AmgWbny5LtDyWs' \
    > test.out 2>&1
eval_tap $? 180 'GetPaymentOrderChargeStatus' test.out

#- 181 GetPsnEntitlementOwnership
samples/cli/sample-apps Platform getPsnEntitlementOwnership \
    --entitlementLabel 'VvfkGAU9neqoNiuO' \
    --namespace $AB_NAMESPACE \
    --body '{"accessToken": "Q2qxKFXdKui61WUR", "serviceLabel": 49}' \
    > test.out 2>&1
eval_tap $? 181 'GetPsnEntitlementOwnership' test.out

#- 182 GetXboxEntitlementOwnership
samples/cli/sample-apps Platform getXboxEntitlementOwnership \
    --namespace $AB_NAMESPACE \
    --productSku 'DjNfbdmo5cp0B2Kk' \
    --body '{"delegationToken": "grKpH48gnF8ubwl3", "sandboxId": "pTWw5DMuVSTIqvPY"}' \
    > test.out 2>&1
eval_tap $? 182 'GetXboxEntitlementOwnership' test.out

#- 183 GetPlatformEntitlementConfig
samples/cli/sample-apps Platform getPlatformEntitlementConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Steam' \
    > test.out 2>&1
eval_tap $? 183 'GetPlatformEntitlementConfig' test.out

#- 184 UpdatePlatformEntitlementConfig
samples/cli/sample-apps Platform updatePlatformEntitlementConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Oculus' \
    --body '{"allowedPlatformOrigins": ["Nintendo", "Oculus", "Twitch"]}' \
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
    --body '{"allowedBalanceOrigins": ["Epic", "Other", "Twitch"]}' \
    > test.out 2>&1
eval_tap $? 186 'UpdatePlatformWalletConfig' test.out

#- 187 ResetPlatformWalletConfig
samples/cli/sample-apps Platform resetPlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Other' \
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
    --body '{"entitlement": {"consumable": {"enabled": true, "strategy": "CUSTOM"}, "durable": {"enabled": true, "strategy": "REVOKE_OR_REPORT"}}, "wallet": {"enabled": true, "strategy": "ALWAYS_REVOKE"}}' \
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
    --endTime 'tPDLDJhxjQc0Nhx7' \
    --limit '65' \
    --offset '87' \
    --source 'DLC' \
    --startTime 'sni7B6aDrQ4Q9qeA' \
    --status 'SUCCESS' \
    --transactionId 'NaFjdw11WZga43sn' \
    --userId 'Nrd3NICLSiKY13yg' \
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
    --body '{"appConfig": {"appName": "e20eWhCI8ph4JD8m"}, "customConfig": {"connectionType": "TLS", "grpcServerAddress": "a01oC0iaTt0RCcWr"}, "extendType": "CUSTOM"}' \
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
    --body '{"description": "oI6nbcqfN10JE94t", "eventTopic": "T0ocIyIjXzyvaEM7", "maxAwarded": 29, "maxAwardedPerUser": 85, "namespaceExpression": "GE4tpdRkCrX9YwXo", "rewardCode": "A8yJ0ADE9IXn3RDb", "rewardConditions": [{"condition": "iFQzeLgH2ZOgqYK0", "conditionName": "rgLYvMczI84CaVMS", "eventName": "gGFaPVnA1zruzXw2", "rewardItems": [{"duration": 93, "endDate": "1982-05-09T00:00:00Z", "identityType": "ITEM_ID", "itemId": "ptWdbxBTcnX2tThB", "quantity": 62, "sku": "uvPw430kHWNosW00"}, {"duration": 49, "endDate": "1985-11-28T00:00:00Z", "identityType": "ITEM_ID", "itemId": "si8YWYm2IaP1IuBo", "quantity": 38, "sku": "F4qnB2PPJiSy29yv"}, {"duration": 8, "endDate": "1982-06-03T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "eHGamrBR90HusJAe", "quantity": 41, "sku": "580wELfDxYtnBjOb"}]}, {"condition": "8nsijqx9EP1ZtbqL", "conditionName": "Y9JiuWg9Fbq79dNB", "eventName": "tuxvsTwzmZfIyVFQ", "rewardItems": [{"duration": 99, "endDate": "1995-12-16T00:00:00Z", "identityType": "ITEM_ID", "itemId": "CBW2YdmsEQR0M903", "quantity": 86, "sku": "8BQSxBMIRAhDuTc0"}, {"duration": 98, "endDate": "1991-01-23T00:00:00Z", "identityType": "ITEM_ID", "itemId": "kkpMbcE8SqAksaNB", "quantity": 12, "sku": "Jh8KeEodOwdQmYxr"}, {"duration": 87, "endDate": "1977-03-13T00:00:00Z", "identityType": "ITEM_ID", "itemId": "MQR9j0wW3qKbLUFT", "quantity": 50, "sku": "GcHzhf8aqbhueiSH"}]}, {"condition": "CFdCQKT3kG04zhDb", "conditionName": "0GTZ7IOl2IhoxM9n", "eventName": "Z7x39PQiufOKMrLa", "rewardItems": [{"duration": 64, "endDate": "1994-03-29T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "CU9pqtoLfHW6gKLi", "quantity": 74, "sku": "bJhIdGeUkZw6eYRZ"}, {"duration": 44, "endDate": "1982-06-23T00:00:00Z", "identityType": "ITEM_ID", "itemId": "jM54H4Bm5Rx8ZUta", "quantity": 17, "sku": "GB6XncHcchF1yp1A"}, {"duration": 99, "endDate": "1993-08-25T00:00:00Z", "identityType": "ITEM_ID", "itemId": "Z70UUGLD93415Xm9", "quantity": 99, "sku": "Is2UxMhpWARD1wd1"}]}], "userIdExpression": "JjdPkuj2igMBzvpE"}' \
    > test.out 2>&1
eval_tap $? 197 'CreateReward' test.out

#- 198 QueryRewards
samples/cli/sample-apps Platform queryRewards \
    --namespace $AB_NAMESPACE \
    --eventTopic 'R2pKFUOeYC3mnoiV' \
    --limit '29' \
    --offset '98' \
    --sortBy '["namespace:asc", "rewardCode"]' \
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
    --replaceExisting 'false' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 200 'ImportRewards' test.out

#- 201 GetReward
samples/cli/sample-apps Platform getReward \
    --namespace $AB_NAMESPACE \
    --rewardId '5QWVuSMhtq90tX8m' \
    > test.out 2>&1
eval_tap $? 201 'GetReward' test.out

#- 202 UpdateReward
samples/cli/sample-apps Platform updateReward \
    --namespace $AB_NAMESPACE \
    --rewardId 'MB27Q1hKIx8URPHq' \
    --body '{"description": "KmSy1ha7ObeKlEaC", "eventTopic": "rcRByANleggcveNf", "maxAwarded": 45, "maxAwardedPerUser": 62, "namespaceExpression": "x5JcjGDEA9oUkvmT", "rewardCode": "qt17RxnrROJBgMCM", "rewardConditions": [{"condition": "o3MYeXbOQJ9CBNRx", "conditionName": "hFyGWyGCvEEvdCLY", "eventName": "eu0VcOrNxSvFIisI", "rewardItems": [{"duration": 80, "endDate": "1981-05-04T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "Xcbh1Sul1wt5RQsh", "quantity": 4, "sku": "jhakQpFeW1cwbX3m"}, {"duration": 84, "endDate": "1986-01-09T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "8BidAjoXB9fetFBE", "quantity": 79, "sku": "lDyvzcAg9VsXOZCe"}, {"duration": 57, "endDate": "1971-08-31T00:00:00Z", "identityType": "ITEM_ID", "itemId": "el2ny3mUmnnQXYvv", "quantity": 27, "sku": "jt62YfALmGYNFb6C"}]}, {"condition": "3afyuJeSQBesW9aI", "conditionName": "HIcwBtr0lTZJgcc1", "eventName": "rb4ZCNaAuLLxiVv2", "rewardItems": [{"duration": 95, "endDate": "1999-01-17T00:00:00Z", "identityType": "ITEM_ID", "itemId": "PmiauRfaDgMV1NhK", "quantity": 99, "sku": "alcbFL4ZBUdmoSEJ"}, {"duration": 30, "endDate": "1996-03-25T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "9eWGf7sBNNa3vn1W", "quantity": 49, "sku": "e8hjKq66PiaTl4Qr"}, {"duration": 11, "endDate": "1998-10-12T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "N5oZhGpNbCrm8JRh", "quantity": 56, "sku": "gdvZOCpC4bRO5B2z"}]}, {"condition": "5tvocvzuOJVbmvDu", "conditionName": "KZCKK1quH0hmkwiK", "eventName": "uP2BtkVynM3MDaHt", "rewardItems": [{"duration": 41, "endDate": "1984-10-09T00:00:00Z", "identityType": "ITEM_ID", "itemId": "udaXOUG9exTt4Y0U", "quantity": 61, "sku": "AfgQfXGS3M1vo2U6"}, {"duration": 87, "endDate": "1991-02-23T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "zbgsjDWVfLCkj4Sb", "quantity": 84, "sku": "ZDKoNErHpgfKdlaf"}, {"duration": 84, "endDate": "1978-02-13T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "ifvzfeMps3dyobbq", "quantity": 99, "sku": "mQxgBy6QQSfFBDjA"}]}], "userIdExpression": "peGJEobhABpQbpSz"}' \
    > test.out 2>&1
eval_tap $? 202 'UpdateReward' test.out

#- 203 DeleteReward
samples/cli/sample-apps Platform deleteReward \
    --namespace $AB_NAMESPACE \
    --rewardId 'a9z7SjTDxLouQPyG' \
    > test.out 2>&1
eval_tap $? 203 'DeleteReward' test.out

#- 204 CheckEventCondition
samples/cli/sample-apps Platform checkEventCondition \
    --namespace $AB_NAMESPACE \
    --rewardId 'NOTfEQK6NVsTCqHc' \
    --body '{"payload": {"n2yow8uVaZeNuqYN": {}, "gqb2V73S226Vb0xz": {}, "eOOBtlAdpWtjFPqR": {}}}' \
    > test.out 2>&1
eval_tap $? 204 'CheckEventCondition' test.out

#- 205 DeleteRewardConditionRecord
samples/cli/sample-apps Platform deleteRewardConditionRecord \
    --namespace $AB_NAMESPACE \
    --rewardId 'vJ3VxFTHKd9Vcyc3' \
    --body '{"conditionName": "7WpRFk5QGTaSz3wu", "userId": "KcBQ9yber6rV01pH"}' \
    > test.out 2>&1
eval_tap $? 205 'DeleteRewardConditionRecord' test.out

#- 206 QuerySections
samples/cli/sample-apps Platform querySections \
    --namespace $AB_NAMESPACE \
    --end '0iDF8RxhxpQu91zQ' \
    --limit '32' \
    --offset '35' \
    --start 'SeO4mSWk9dBc9P6S' \
    --storeId 'bd5L8mYfqCVHhaTV' \
    --viewId 'qJgwTFBbrDE4HYhf' \
    > test.out 2>&1
eval_tap $? 206 'QuerySections' test.out

#- 207 CreateSection
samples/cli/sample-apps Platform createSection \
    --namespace $AB_NAMESPACE \
    --storeId 'qU5vH7NZHnC0qa9Q' \
    --body '{"active": true, "displayOrder": 79, "endDate": "1982-06-27T00:00:00Z", "ext": {"c766T8jvIjzkLJbc": {}, "xUNqnjBwlhybth8v": {}, "UzqM4wtNcrHQUdWM": {}}, "fixedPeriodRotationConfig": {"backfillType": "CUSTOM", "duration": 98, "itemCount": 70, "rule": "SEQUENCE"}, "items": [{"id": "cwgUedUkXSOjOoPD", "sku": "m6SQwXQ6JQDm0FZl"}, {"id": "rP2Ghvmq75Ox6DVz", "sku": "MLLYsClFbjIA1XRV"}, {"id": "uziF3edYNzRIeYGy", "sku": "YwfKZ5Bd8xHVM1cq"}], "localizations": {"2OkKFPko8ip4B6ma": {"description": "x2MJHOJxqkiJBqAd", "localExt": {"zLbuD8mrnbSIUAi8": {}, "cr5Xx93AY0l9OeYH": {}, "yHMf904wP09eBqxc": {}}, "longDescription": "Bf7POa9gi1jkTyiB", "title": "0fzvl8SS2RFyhpbo"}, "MGKO14UUxy6ZYbUj": {"description": "5b0bPC6YgTlGR4GP", "localExt": {"weelED60Zkhr3YZM": {}, "cAr69GWubBlY2CwY": {}, "Wer0HHXTgsJIwYgy": {}}, "longDescription": "61MteAMFjwPbS8j1", "title": "56qnMprQiPv0iPcC"}, "XQ7AbyZtNt0AH81C": {"description": "bz1X2tzmjCpVcFBL", "localExt": {"4PR04BgVNUm77GDG": {}, "3U0dMHagGmNd7XKw": {}, "LiOoIuNOrcAt5sNC": {}}, "longDescription": "N6HXMtVwUYBcTqYK", "title": "rHNxSr1XW4Y6fHy7"}}, "name": "GaEHaS4CHHnxO1bc", "rotationType": "FIXED_PERIOD", "startDate": "1976-11-09T00:00:00Z", "viewId": "fsXBA5sqGS4ZVN7P"}' \
    > test.out 2>&1
eval_tap $? 207 'CreateSection' test.out

#- 208 PurgeExpiredSection
samples/cli/sample-apps Platform purgeExpiredSection \
    --namespace $AB_NAMESPACE \
    --storeId 'pdpXcII6SJIkXBNi' \
    > test.out 2>&1
eval_tap $? 208 'PurgeExpiredSection' test.out

#- 209 GetSection
samples/cli/sample-apps Platform getSection \
    --namespace $AB_NAMESPACE \
    --sectionId 'r8Xwnq6PxFMddGep' \
    --storeId 'PmNMsSOufTyrIRgU' \
    > test.out 2>&1
eval_tap $? 209 'GetSection' test.out

#- 210 UpdateSection
samples/cli/sample-apps Platform updateSection \
    --namespace $AB_NAMESPACE \
    --sectionId 'zJ0UjE4gdRpDjETu' \
    --storeId 'J6Ci7S6cZbClB6zl' \
    --body '{"active": true, "displayOrder": 90, "endDate": "1987-12-20T00:00:00Z", "ext": {"Tk9E3AqSZi2qUOXk": {}, "6hyUH98wr5WNY6bF": {}, "YuaU6AdrCPXdPWm3": {}}, "fixedPeriodRotationConfig": {"backfillType": "NONE", "duration": 8, "itemCount": 47, "rule": "SEQUENCE"}, "items": [{"id": "ia3udRKxpCjn1MAI", "sku": "vMneQxmPxINrfeWF"}, {"id": "ofZs9RjfJD0IsbM7", "sku": "8oAQFvjvlLNYPGMk"}, {"id": "qI0nakKTsOs7ExDy", "sku": "DkLeHDdoKwn47ydi"}], "localizations": {"suKUFRooZ0WIj3dw": {"description": "zkJGzEmluMxD6eRP", "localExt": {"SKKjMKZJhHO3jzEu": {}, "4r0QOqABk4RsyuxP": {}, "6WSvHy4Ao9Z4ENej": {}}, "longDescription": "BaVQvnmpRqiNy9oV", "title": "cnZoeoWlmlwZ13Ia"}, "cUjxcGEDjZWsCjLA": {"description": "LAfHHYNStD2IXe2R", "localExt": {"CCCJ9U6lmz79CMVo": {}, "mDc1y3JXi0WQtIHr": {}, "AtN4d6AiBweiUKac": {}}, "longDescription": "Gxni30usSP0zoqtx", "title": "0jgiaAFKAc8gpd9t"}, "xqmZyLqRHiXCTmpA": {"description": "pV8YLtXlCOcd9Fwd", "localExt": {"XgsULT0jPVa7vkqM": {}, "Y9EhOrQ5gGOkFF46": {}, "zWsITNj7lmPpiJn5": {}}, "longDescription": "IJzWlxmM8UYGCgKQ", "title": "qlKHlzjlgyx6zdGA"}}, "name": "rYuPwogOJz7yr6LR", "rotationType": "NONE", "startDate": "1986-05-10T00:00:00Z", "viewId": "SGskvJDnjSG1rCxs"}' \
    > test.out 2>&1
eval_tap $? 210 'UpdateSection' test.out

#- 211 DeleteSection
samples/cli/sample-apps Platform deleteSection \
    --namespace $AB_NAMESPACE \
    --sectionId 'OslgJ6MywoxWP6kn' \
    --storeId 'nzgTZRpPkW2ieAzu' \
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
    --body '{"defaultLanguage": "3eBrnZCpRCwjPniu", "defaultRegion": "L3SwRItqUK9gsET4", "description": "V0n8TWYSsJVZEjz5", "supportedLanguages": ["anHwbL8LtAFiVt2Z", "400qFHmjbQaNkXze", "fXXqusMVZhh6NjFJ"], "supportedRegions": ["R2b0rdSjjAAq3Hd7", "uXYr5kEmsiXjvGOt", "rFrzPGVnUAzPFQ6j"], "title": "qnQvLrYF5Lkq88BU"}' \
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
    --body '{"catalogType": "VIEW", "fieldsToBeIncluded": ["VxBhoClbAViohBxi", "Mb7nCb0Hs57SmQgu", "x6n147kDbMQzTwOf"], "idsToBeExported": ["GWpx2XbJZASrovKz", "YwXtezhcvFjGMlQZ", "QbcwF2TpZWiwq1cw"], "storeId": "auiXGzYBOLHeqFsC"}' \
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
    --storeId 'Ap8YwrgD318izIrP' \
    > test.out 2>&1
eval_tap $? 222 'GetStore' test.out

#- 223 UpdateStore
samples/cli/sample-apps Platform updateStore \
    --namespace $AB_NAMESPACE \
    --storeId '10aIhB1jKlBY7sMG' \
    --body '{"defaultLanguage": "bX9ZXpWRTbI0onUa", "defaultRegion": "8aaREJ4s81RNKvnZ", "description": "xdvCAieQ9J7jpRIR", "supportedLanguages": ["L77N6fQHW68yL5Gj", "uxzcBs8yKzeW5ipL", "fhyg3wVqZkTZ2744"], "supportedRegions": ["o3bw0Yv57gAok2CD", "lXNrmbnj0y61c0qV", "Y185LVN4Gt0DPZdT"], "title": "R5ylr4BummoPMxVs"}' \
    > test.out 2>&1
eval_tap $? 223 'UpdateStore' test.out

#- 224 DeleteStore
samples/cli/sample-apps Platform deleteStore \
    --namespace $AB_NAMESPACE \
    --storeId 'eajtQ9CHOtGXmsZV' \
    > test.out 2>&1
eval_tap $? 224 'DeleteStore' test.out

#- 225 QueryChanges
samples/cli/sample-apps Platform queryChanges \
    --namespace $AB_NAMESPACE \
    --storeId '6fr1TTKAKtbZm98J' \
    --action 'DELETE' \
    --itemSku 'e1rRfQSqdxz6u563' \
    --itemType 'SEASON' \
    --limit '27' \
    --offset '3' \
    --selected 'false' \
    --sortBy '["createdAt:desc", "createdAt"]' \
    --status 'UNPUBLISHED' \
    --type 'SECTION' \
    --updatedAtEnd 'qrb1Qoc9W82n2yp3' \
    --updatedAtStart 'o2YPcYtfcBYj2ANg' \
    --withTotal 'true' \
    > test.out 2>&1
eval_tap $? 225 'QueryChanges' test.out

#- 226 PublishAll
samples/cli/sample-apps Platform publishAll \
    --namespace $AB_NAMESPACE \
    --storeId 'RtnE7EE8Y8lM7iA7' \
    > test.out 2>&1
eval_tap $? 226 'PublishAll' test.out

#- 227 PublishSelected
samples/cli/sample-apps Platform publishSelected \
    --namespace $AB_NAMESPACE \
    --storeId 'lk0z29y37tpvxZtH' \
    > test.out 2>&1
eval_tap $? 227 'PublishSelected' test.out

#- 228 SelectAllRecords
samples/cli/sample-apps Platform selectAllRecords \
    --namespace $AB_NAMESPACE \
    --storeId 'yUBW442JWaTqHZPq' \
    > test.out 2>&1
eval_tap $? 228 'SelectAllRecords' test.out

#- 229 SelectAllRecordsByCriteria
samples/cli/sample-apps Platform selectAllRecordsByCriteria \
    --namespace $AB_NAMESPACE \
    --storeId 'y58i0oWeVCpwYDMV' \
    --action 'CREATE' \
    --itemSku 'xTCfBXE4cCuNVxEU' \
    --itemType 'BUNDLE' \
    --selected 'true' \
    --type 'SECTION' \
    --updatedAtEnd 'tbpGdkgxjwfGNtsR' \
    --updatedAtStart 'DW2M07ibhFV75hO2' \
    > test.out 2>&1
eval_tap $? 229 'SelectAllRecordsByCriteria' test.out

#- 230 GetStatistic
samples/cli/sample-apps Platform getStatistic \
    --namespace $AB_NAMESPACE \
    --storeId '5lGJMaZILMsB7HGQ' \
    --action 'CREATE' \
    --itemSku 'R00WZnOpx6xRAuRB' \
    --itemType 'INGAMEITEM' \
    --type 'VIEW' \
    --updatedAtEnd 'InvVw8tawLpzwXH8' \
    --updatedAtStart 'Cnfpo2yH9NIQES4K' \
    > test.out 2>&1
eval_tap $? 230 'GetStatistic' test.out

#- 231 UnselectAllRecords
samples/cli/sample-apps Platform unselectAllRecords \
    --namespace $AB_NAMESPACE \
    --storeId 'an64Yl7Fyp0k97u8' \
    > test.out 2>&1
eval_tap $? 231 'UnselectAllRecords' test.out

#- 232 SelectRecord
samples/cli/sample-apps Platform selectRecord \
    --changeId 'WCt1ST4Y8ak02oKY' \
    --namespace $AB_NAMESPACE \
    --storeId 'CondZwY2QaZ0OvOo' \
    > test.out 2>&1
eval_tap $? 232 'SelectRecord' test.out

#- 233 UnselectRecord
samples/cli/sample-apps Platform unselectRecord \
    --changeId 'mY5UFHsTb1rYtmsb' \
    --namespace $AB_NAMESPACE \
    --storeId 'mfXakrDjISJimZDu' \
    > test.out 2>&1
eval_tap $? 233 'UnselectRecord' test.out

#- 234 CloneStore
samples/cli/sample-apps Platform cloneStore \
    --namespace $AB_NAMESPACE \
    --storeId 'tCWX0k6hwqtAIz7C' \
    --targetStoreId 'WMDfaFDQ1nVxrx3S' \
    > test.out 2>&1
eval_tap $? 234 'CloneStore' test.out

#- 235 ExportStore
eval_tap 0 235 'ExportStore # SKIP deprecated' test.out

#- 236 QueryImportHistory
samples/cli/sample-apps Platform queryImportHistory \
    --namespace $AB_NAMESPACE \
    --storeId 'aWqyceMXiyqnSUCF' \
    --end 'qDZsj08S2JQwgAjd' \
    --limit '28' \
    --offset '35' \
    --sortBy 'uJ4WgqvRK2cHAMLf' \
    --start 'EhayqnHLxxQGch3Y' \
    --success 'false' \
    > test.out 2>&1
eval_tap $? 236 'QueryImportHistory' test.out

#- 237 ImportStoreByCSV
samples/cli/sample-apps Platform importStoreByCSV \
    --namespace $AB_NAMESPACE \
    --storeId 'Kl6Zd70fFf3jRYUj' \
    --category 'tmp.dat' \
    --display 'tmp.dat' \
    --item 'tmp.dat' \
    --notes 'wPyUHqoOwUzlCvNg' \
    --section 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 237 'ImportStoreByCSV' test.out

#- 238 QuerySubscriptions
samples/cli/sample-apps Platform querySubscriptions \
    --namespace $AB_NAMESPACE \
    --chargeStatus 'NEVER' \
    --itemId 'PsQBQeTGXmqAf6O9' \
    --limit '39' \
    --offset '97' \
    --sku 'lbY4NCdvsRiiGmBb' \
    --status 'INIT' \
    --subscribedBy 'PLATFORM' \
    --userId 'Szj6WgcqoNofdumg' \
    > test.out 2>&1
eval_tap $? 238 'QuerySubscriptions' test.out

#- 239 RecurringChargeSubscription
samples/cli/sample-apps Platform recurringChargeSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'gDLbyO7awrtnrHpz' \
    > test.out 2>&1
eval_tap $? 239 'RecurringChargeSubscription' test.out

#- 240 GetTicketDynamic
samples/cli/sample-apps Platform getTicketDynamic \
    --boothName 'Oqg8qkRXXwbDhM5f' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 240 'GetTicketDynamic' test.out

#- 241 DecreaseTicketSale
samples/cli/sample-apps Platform decreaseTicketSale \
    --boothName 'TDnLxPK5V6dbyalm' \
    --namespace $AB_NAMESPACE \
    --body '{"orderNo": "fBVV0zTTeVwPIsow"}' \
    > test.out 2>&1
eval_tap $? 241 'DecreaseTicketSale' test.out

#- 242 GetTicketBoothID
samples/cli/sample-apps Platform getTicketBoothID \
    --boothName 'uplxRQmy7XS66de6' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 242 'GetTicketBoothID' test.out

#- 243 IncreaseTicketSale
samples/cli/sample-apps Platform increaseTicketSale \
    --boothName 'EFe9DQcXlk6FJwIa' \
    --namespace $AB_NAMESPACE \
    --body '{"count": 72, "orderNo": "Lws1tA10PaqCYUgD"}' \
    > test.out 2>&1
eval_tap $? 243 'IncreaseTicketSale' test.out

#- 244 Commit
samples/cli/sample-apps Platform commit \
    --namespace $AB_NAMESPACE \
    --body '{"actions": [{"operations": [{"creditPayload": {"balanceOrigin": "System", "count": 52, "currencyCode": "p44Yal3HegMheitj", "expireAt": "1981-07-02T00:00:00Z"}, "debitPayload": {"count": 95, "currencyCode": "rENKVoBZvRNOL3HP", "walletPlatform": "Other"}, "fulFillItemPayload": {"count": 97, "entitlementCollectionId": "1cIGEF2s9fBjR4bb", "entitlementOrigin": "Xbox", "itemIdentity": "SaqS3m9OqA1d31Qf", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 31, "entitlementId": "RDDM53adwsFJEg3t"}, "type": "REVOKE_ENTITLEMENT"}, {"creditPayload": {"balanceOrigin": "IOS", "count": 63, "currencyCode": "W4HP5KbSu4z99Gq2", "expireAt": "1978-01-02T00:00:00Z"}, "debitPayload": {"count": 36, "currencyCode": "xQvSAXwDaqNcIxn9", "walletPlatform": "Oculus"}, "fulFillItemPayload": {"count": 70, "entitlementCollectionId": "m3EncvKjICAK1ciD", "entitlementOrigin": "Playstation", "itemIdentity": "ahgiTTe7YhPQYpjg", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 53, "entitlementId": "gtdhBtETQ64UP6p3"}, "type": "REVOKE_ENTITLEMENT"}, {"creditPayload": {"balanceOrigin": "Other", "count": 35, "currencyCode": "YuQmm8ZpYfJZiLkB", "expireAt": "1997-02-12T00:00:00Z"}, "debitPayload": {"count": 16, "currencyCode": "CAXUEzMth3hNK630", "walletPlatform": "Oculus"}, "fulFillItemPayload": {"count": 56, "entitlementCollectionId": "FCmrGLJZn28GrEL9", "entitlementOrigin": "Twitch", "itemIdentity": "YCzDSt2ONofAQp36", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 67, "entitlementId": "Kf3QzGNUEUYbcOeD"}, "type": "FULFILL_ITEM"}], "userId": "P5kb0O3JApxuqZSg"}, {"operations": [{"creditPayload": {"balanceOrigin": "System", "count": 95, "currencyCode": "Cv8GoAgijcotiIPF", "expireAt": "1999-06-18T00:00:00Z"}, "debitPayload": {"count": 38, "currencyCode": "m5mh6gO5Gy5Y15LH", "walletPlatform": "IOS"}, "fulFillItemPayload": {"count": 51, "entitlementCollectionId": "T8vKKuEeOjArBzOa", "entitlementOrigin": "Steam", "itemIdentity": "VYAp3MmjvXgvm3u8", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 10, "entitlementId": "guGoM8gCLMQ0mB1f"}, "type": "CREDIT_WALLET"}, {"creditPayload": {"balanceOrigin": "Twitch", "count": 27, "currencyCode": "X47OCTm3rTUIeBHT", "expireAt": "1977-09-22T00:00:00Z"}, "debitPayload": {"count": 32, "currencyCode": "sMwErIGb4ccvLbwV", "walletPlatform": "GooglePlay"}, "fulFillItemPayload": {"count": 48, "entitlementCollectionId": "pttFkJmoiBoPpwnj", "entitlementOrigin": "Epic", "itemIdentity": "2KXtEbEKWXS4dif3", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 94, "entitlementId": "xPmSJg12Czzo9hhL"}, "type": "CREDIT_WALLET"}, {"creditPayload": {"balanceOrigin": "Steam", "count": 71, "currencyCode": "vBb4Jhyf5j7un5g1", "expireAt": "1998-12-25T00:00:00Z"}, "debitPayload": {"count": 97, "currencyCode": "PcpnRSa5HvEDKIkt", "walletPlatform": "GooglePlay"}, "fulFillItemPayload": {"count": 22, "entitlementCollectionId": "mQgwB06DaBXUrwxj", "entitlementOrigin": "Twitch", "itemIdentity": "3ZC2JtKpVlgZcmIK", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 96, "entitlementId": "0UYou7CbuHb4gac5"}, "type": "CREDIT_WALLET"}], "userId": "xiY2D4IgtLXoINH3"}, {"operations": [{"creditPayload": {"balanceOrigin": "IOS", "count": 14, "currencyCode": "GdGInkVwjpEn3pkI", "expireAt": "1983-01-25T00:00:00Z"}, "debitPayload": {"count": 32, "currencyCode": "RbGLEIE9uVzpchEV", "walletPlatform": "Nintendo"}, "fulFillItemPayload": {"count": 84, "entitlementCollectionId": "2Ywcrq9G3x8X9qhm", "entitlementOrigin": "Xbox", "itemIdentity": "7a2F6rZoMRPH0P1C", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 100, "entitlementId": "mRhoTGUAVCgDCqPI"}, "type": "FULFILL_ITEM"}, {"creditPayload": {"balanceOrigin": "Epic", "count": 80, "currencyCode": "ySn4dWG9afQQ2jmU", "expireAt": "1997-04-13T00:00:00Z"}, "debitPayload": {"count": 81, "currencyCode": "ve0LQbldLhECnkmG", "walletPlatform": "GooglePlay"}, "fulFillItemPayload": {"count": 13, "entitlementCollectionId": "GJZpLuWd2YP157ul", "entitlementOrigin": "Nintendo", "itemIdentity": "S5ad0JaXkJMr4P6I", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 55, "entitlementId": "l7bVo93i4DGpMHO2"}, "type": "FULFILL_ITEM"}, {"creditPayload": {"balanceOrigin": "GooglePlay", "count": 95, "currencyCode": "D8TnC3ZHQzfmQgce", "expireAt": "1971-11-30T00:00:00Z"}, "debitPayload": {"count": 61, "currencyCode": "xkAK11lZElXcrkhY", "walletPlatform": "Xbox"}, "fulFillItemPayload": {"count": 6, "entitlementCollectionId": "7JZ6X8T46cJzuYiZ", "entitlementOrigin": "IOS", "itemIdentity": "iSyJH7Sw7Gzr23F7", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 13, "entitlementId": "TpkW6VZNNu9D8EXx"}, "type": "REVOKE_ENTITLEMENT"}], "userId": "28tgN65hFhD68PVs"}], "metadata": {"IKdrSer6mUndXd26": {}, "NWjSH1pPlRDVnAvs": {}, "cCwXo3bDiLgtSSuu": {}}, "needPreCheck": false, "transactionId": "P7TVTfcKGuHSBzHd", "type": "rC1aQY0gx1BVtXrL"}' \
    > test.out 2>&1
eval_tap $? 244 'Commit' test.out

#- 245 GetTradeHistoryByCriteria
samples/cli/sample-apps Platform getTradeHistoryByCriteria \
    --namespace $AB_NAMESPACE \
    --limit '17' \
    --offset '92' \
    --status 'FAILED' \
    --type '0ieztRF3lkKShYJf' \
    --userId 'Pjlc4ONkS6QtSBEr' \
    > test.out 2>&1
eval_tap $? 245 'GetTradeHistoryByCriteria' test.out

#- 246 GetTradeHistoryByTransactionId
samples/cli/sample-apps Platform getTradeHistoryByTransactionId \
    --namespace $AB_NAMESPACE \
    --transactionId 'QpZK3Qw0mrJGxG1z' \
    > test.out 2>&1
eval_tap $? 246 'GetTradeHistoryByTransactionId' test.out

#- 247 UnlockSteamUserAchievement
samples/cli/sample-apps Platform unlockSteamUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId '4DsDVj9tLFc0Wrei' \
    --body '{"achievements": [{"id": "hG8E1JHMPH27SJqr", "value": 36}, {"id": "tu3R3U5rTRHzj3Rh", "value": 34}, {"id": "KWmWaDx9m8dbDjIN", "value": 7}], "steamUserId": "mnb0lkJIC9Em8jmS"}' \
    > test.out 2>&1
eval_tap $? 247 'UnlockSteamUserAchievement' test.out

#- 248 GetXblUserAchievements
samples/cli/sample-apps Platform getXblUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId 'oxTozF9nZePNTF7p' \
    --xboxUserId 'eonzhbtFBjmRhomC' \
    > test.out 2>&1
eval_tap $? 248 'GetXblUserAchievements' test.out

#- 249 UpdateXblUserAchievement
samples/cli/sample-apps Platform updateXblUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'nYzQPtAjZjxUt8kP' \
    --body '{"achievements": [{"id": "2l6uIShc2A3hqtRL", "percentComplete": 13}, {"id": "jQWUALsREkuEolmZ", "percentComplete": 58}, {"id": "YZ1yA5bTuRj2o92x", "percentComplete": 17}], "serviceConfigId": "GQG2Mll8HQqIuCID", "titleId": "g6DMiu0yQdjZvXsr", "xboxUserId": "Y1fjckqazdwCnqau"}' \
    > test.out 2>&1
eval_tap $? 249 'UpdateXblUserAchievement' test.out

#- 250 AnonymizeCampaign
samples/cli/sample-apps Platform anonymizeCampaign \
    --namespace $AB_NAMESPACE \
    --userId 'vOrpnSqbjNnNnrX3' \
    > test.out 2>&1
eval_tap $? 250 'AnonymizeCampaign' test.out

#- 251 AnonymizeEntitlement
samples/cli/sample-apps Platform anonymizeEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'TS2ncuF2QZuFOiwr' \
    > test.out 2>&1
eval_tap $? 251 'AnonymizeEntitlement' test.out

#- 252 AnonymizeFulfillment
samples/cli/sample-apps Platform anonymizeFulfillment \
    --namespace $AB_NAMESPACE \
    --userId 'hsX4PC7HyLhsMDiZ' \
    > test.out 2>&1
eval_tap $? 252 'AnonymizeFulfillment' test.out

#- 253 AnonymizeIntegration
samples/cli/sample-apps Platform anonymizeIntegration \
    --namespace $AB_NAMESPACE \
    --userId '0UQUQXKRMgavjrJO' \
    > test.out 2>&1
eval_tap $? 253 'AnonymizeIntegration' test.out

#- 254 AnonymizeOrder
samples/cli/sample-apps Platform anonymizeOrder \
    --namespace $AB_NAMESPACE \
    --userId '9pmILSWkxUxlJvuy' \
    > test.out 2>&1
eval_tap $? 254 'AnonymizeOrder' test.out

#- 255 AnonymizePayment
samples/cli/sample-apps Platform anonymizePayment \
    --namespace $AB_NAMESPACE \
    --userId '5Edbx1CM3UFtGfJc' \
    > test.out 2>&1
eval_tap $? 255 'AnonymizePayment' test.out

#- 256 AnonymizeRevocation
samples/cli/sample-apps Platform anonymizeRevocation \
    --namespace $AB_NAMESPACE \
    --userId 'o3M9dyl2ri0FZ5UN' \
    > test.out 2>&1
eval_tap $? 256 'AnonymizeRevocation' test.out

#- 257 AnonymizeSubscription
samples/cli/sample-apps Platform anonymizeSubscription \
    --namespace $AB_NAMESPACE \
    --userId '5o0tC0aPIibywqCL' \
    > test.out 2>&1
eval_tap $? 257 'AnonymizeSubscription' test.out

#- 258 AnonymizeWallet
samples/cli/sample-apps Platform anonymizeWallet \
    --namespace $AB_NAMESPACE \
    --userId '2ozRPCoOyJB1KWQ9' \
    > test.out 2>&1
eval_tap $? 258 'AnonymizeWallet' test.out

#- 259 GetUserDLCByPlatform
samples/cli/sample-apps Platform getUserDLCByPlatform \
    --namespace $AB_NAMESPACE \
    --userId '9LT2StcRDznOCyQF' \
    --type 'EPICGAMES' \
    > test.out 2>&1
eval_tap $? 259 'GetUserDLCByPlatform' test.out

#- 260 GetUserDLC
samples/cli/sample-apps Platform getUserDLC \
    --namespace $AB_NAMESPACE \
    --userId 'zOzr5uwUTIQkUHgH' \
    --includeAllNamespaces 'false' \
    --status 'REVOKED' \
    --type 'EPICGAMES' \
    > test.out 2>&1
eval_tap $? 260 'GetUserDLC' test.out

#- 261 QueryUserEntitlements
samples/cli/sample-apps Platform queryUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'ga4cKB5Zcew5mYiI' \
    --activeOnly 'true' \
    --appType 'DEMO' \
    --collectionId 'a0rO8QTvNMUnKr0J' \
    --entitlementClazz 'MEDIA' \
    --entitlementName 'HMwZIAZDuvsinRUl' \
    --features '["N922vsr6wUEFNNQh", "NWCrUMF7XT7K3QPk", "OjRGDVwB1fPJor1o"]' \
    --fuzzyMatchName 'true' \
    --ignoreActiveDate 'true' \
    --itemId '["J1Q0IIshSr6CWtr5", "64cvtWUHGmAN1AAA", "h6jd6bTvkxALEI1D"]' \
    --limit '64' \
    --offset '15' \
    --origin 'System' \
    > test.out 2>&1
eval_tap $? 261 'QueryUserEntitlements' test.out

#- 262 GrantUserEntitlement
samples/cli/sample-apps Platform grantUserEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'xRe0f0CBClfsVnbS' \
    --body '[{"collectionId": "uHxMaPmDvoDBVjc2", "endDate": "1996-06-09T00:00:00Z", "grantedCode": "OcuYdqntPZXbLMtr", "itemId": "taX2wtvC3WtBqVZS", "itemNamespace": "OZZyldh2OQOSA2DU", "language": "OD-413", "metadata": {"5fr0vfydqSwu1qNw": {}, "iWS1TgM77c2ZU0qY": {}, "7cikiGq65WWOcYx1": {}}, "origin": "Nintendo", "quantity": 1, "region": "GkHrajrJlD5mQqsy", "source": "REFERRAL_BONUS", "startDate": "1999-01-09T00:00:00Z", "storeId": "FR2YIiioSd1maJxg"}, {"collectionId": "wH2vmkUF6EKsDAKe", "endDate": "1975-10-03T00:00:00Z", "grantedCode": "MtAK4YJDu1Xefj2H", "itemId": "K8d9pf2KUmdMhuGN", "itemNamespace": "8TaLU7cWnwulG1Be", "language": "oU-HM", "metadata": {"v6rdGuBsCquduh6u": {}, "meGCgGoKjs3fLoNl": {}, "BIvcLfj1Kgx2sni0": {}}, "origin": "Twitch", "quantity": 26, "region": "Y80Pi96KTS3ftAm3", "source": "ACHIEVEMENT", "startDate": "1986-11-25T00:00:00Z", "storeId": "MjL8uuW9jsoUL4ja"}, {"collectionId": "IgU99TTGQ8FYGRbi", "endDate": "1979-02-17T00:00:00Z", "grantedCode": "WBBBx8JokkEoTvqp", "itemId": "xEvd7Ndq5J6stj4T", "itemNamespace": "0UxI7g4uWglNotSm", "language": "yFiX_aM", "metadata": {"4bDLdOAEZefGxty6": {}, "8TXkZ8awEZDUZ9rN": {}, "saZ9A2ljc0mRAoL9": {}}, "origin": "Other", "quantity": 64, "region": "KP6HqCZIMnIkluQa", "source": "PROMOTION", "startDate": "1992-05-25T00:00:00Z", "storeId": "EhF5XlTOfGbqppoJ"}]' \
    > test.out 2>&1
eval_tap $? 262 'GrantUserEntitlement' test.out

#- 263 GetUserAppEntitlementByAppId
samples/cli/sample-apps Platform getUserAppEntitlementByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'ZboqMYSCEOX74GrK' \
    --activeOnly 'true' \
    --appId 'WRmxE4qqVVXFfaW9' \
    > test.out 2>&1
eval_tap $? 263 'GetUserAppEntitlementByAppId' test.out

#- 264 QueryUserEntitlementsByAppType
samples/cli/sample-apps Platform queryUserEntitlementsByAppType \
    --namespace $AB_NAMESPACE \
    --userId '5YbbMmEWPSC1USZo' \
    --activeOnly 'false' \
    --limit '33' \
    --offset '54' \
    --appType 'SOFTWARE' \
    > test.out 2>&1
eval_tap $? 264 'QueryUserEntitlementsByAppType' test.out

#- 265 GetUserEntitlementsByIds
samples/cli/sample-apps Platform getUserEntitlementsByIds \
    --namespace $AB_NAMESPACE \
    --userId 'kjEeM58C5KSIto6x' \
    --ids '["kg1dJAgxSRkiaPQT", "5mv3YONSDcM2Taot", "eIfuJuSgC6oIvZzG"]' \
    > test.out 2>&1
eval_tap $? 265 'GetUserEntitlementsByIds' test.out

#- 266 GetUserEntitlementByItemId
samples/cli/sample-apps Platform getUserEntitlementByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'nrCDBJerGHRji8kh' \
    --activeOnly 'false' \
    --entitlementClazz 'LOOTBOX' \
    --platform 'y2qoqAokxqIqAOuh' \
    --itemId 'yI4bON05wDPiKRJj' \
    > test.out 2>&1
eval_tap $? 266 'GetUserEntitlementByItemId' test.out

#- 267 GetUserActiveEntitlementsByItemIds
samples/cli/sample-apps Platform getUserActiveEntitlementsByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'dhxVCHokBodVXvqf' \
    --ids '["kq0ks1q1N6QfvyJu", "6PUTwtRbuMxOWWtn", "82WaHOeubPE2eqa6"]' \
    --platform '1EXhzF6M8yFDXp9S' \
    > test.out 2>&1
eval_tap $? 267 'GetUserActiveEntitlementsByItemIds' test.out

#- 268 GetUserEntitlementBySku
samples/cli/sample-apps Platform getUserEntitlementBySku \
    --namespace $AB_NAMESPACE \
    --userId 'MWaKQMyPsfberiAy' \
    --activeOnly 'true' \
    --entitlementClazz 'CODE' \
    --platform '92dxXwKYtH4CdPGJ' \
    --sku '0AmB41tyVtPcyCLC' \
    > test.out 2>&1
eval_tap $? 268 'GetUserEntitlementBySku' test.out

#- 269 ExistsAnyUserActiveEntitlement
samples/cli/sample-apps Platform existsAnyUserActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'YtQBA5uRsFFC3jwk' \
    --appIds '["5iHRw61TNHQWPPD5", "TtlPnPgJ5t3Kzmmu", "iPA1EYkio6wfHGRu"]' \
    --itemIds '["KdqyxW6pSja4QnjX", "jXeGl1DeVzYpi2lL", "Vzi4VYnk3bszQKI8"]' \
    --platform '4SfRk6VrRcdXf6sk' \
    --skus '["GuHnzoTb8xHJYyVD", "E1Z1S4ZfjKdTgnQN", "w85jvmYh6OuV98vW"]' \
    > test.out 2>&1
eval_tap $? 269 'ExistsAnyUserActiveEntitlement' test.out

#- 270 ExistsAnyUserActiveEntitlementByItemIds
samples/cli/sample-apps Platform existsAnyUserActiveEntitlementByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'N0ac2kZWvAczMdGO' \
    --platform 'ngJfVeGgFKmAc69e' \
    --itemIds '["Lhy03wHIu55Jdmzs", "zBQYJc46jhZJRgBb", "7CG6BeRP533P9ujA"]' \
    > test.out 2>&1
eval_tap $? 270 'ExistsAnyUserActiveEntitlementByItemIds' test.out

#- 271 GetUserAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform getUserAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --userId '9clLtHjisL5hDqOK' \
    --appId 'SlXwqvJF4toxy2wL' \
    > test.out 2>&1
eval_tap $? 271 'GetUserAppEntitlementOwnershipByAppId' test.out

#- 272 GetUserEntitlementOwnershipByItemId
samples/cli/sample-apps Platform getUserEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'u99jMnPIyUYHrRkm' \
    --entitlementClazz 'SUBSCRIPTION' \
    --platform 'hSUEGglT1R4ESjJs' \
    --itemId '2a9rKVhF4Hhb8x9V' \
    > test.out 2>&1
eval_tap $? 272 'GetUserEntitlementOwnershipByItemId' test.out

#- 273 GetUserEntitlementOwnershipByItemIds
samples/cli/sample-apps Platform getUserEntitlementOwnershipByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'QbHaAjGVukG9gbnw' \
    --ids '["mrgupm3iaW0WkDZH", "hBe7eKD4CBwSH8UZ", "f2alZVH5aS2NLaDc"]' \
    --platform 'toa4Aa1Iov3prVUK' \
    > test.out 2>&1
eval_tap $? 273 'GetUserEntitlementOwnershipByItemIds' test.out

#- 274 GetUserEntitlementOwnershipBySku
samples/cli/sample-apps Platform getUserEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --userId 'hUg2134t69yHXc9j' \
    --entitlementClazz 'CODE' \
    --platform 'AEUtlClIxxkrj17i' \
    --sku 'NIKnRyTiMGjLXfW3' \
    > test.out 2>&1
eval_tap $? 274 'GetUserEntitlementOwnershipBySku' test.out

#- 275 RevokeAllEntitlements
samples/cli/sample-apps Platform revokeAllEntitlements \
    --namespace $AB_NAMESPACE \
    --userId '5MwgMNUD1OrpIjJX' \
    > test.out 2>&1
eval_tap $? 275 'RevokeAllEntitlements' test.out

#- 276 RevokeUserEntitlements
samples/cli/sample-apps Platform revokeUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'okDDXue8JO1MnjYn' \
    --entitlementIds 'Q1KtRQJj4pRk6Ley' \
    > test.out 2>&1
eval_tap $? 276 'RevokeUserEntitlements' test.out

#- 277 GetUserEntitlement
samples/cli/sample-apps Platform getUserEntitlement \
    --entitlementId 'diTd0hUZLxtKLBnK' \
    --namespace $AB_NAMESPACE \
    --userId 'Ckr47kznuZDPRCHv' \
    > test.out 2>&1
eval_tap $? 277 'GetUserEntitlement' test.out

#- 278 UpdateUserEntitlement
samples/cli/sample-apps Platform updateUserEntitlement \
    --entitlementId 'PMR5YSkJvdAAc0UQ' \
    --namespace $AB_NAMESPACE \
    --userId 'hEUXIy4IWt3jE047' \
    --body '{"collectionId": "VCCO1dw0cKUFASwT", "endDate": "1997-09-18T00:00:00Z", "nullFieldList": ["O299lkDXAbgEHMWv", "btqZ1COYyms3rkhL", "ZuVfs4R8OF5FvhOR"], "origin": "System", "reason": "Oq4C1LGGyn6r2Krr", "startDate": "1993-08-12T00:00:00Z", "status": "INACTIVE", "useCount": 38}' \
    > test.out 2>&1
eval_tap $? 278 'UpdateUserEntitlement' test.out

#- 279 ConsumeUserEntitlement
samples/cli/sample-apps Platform consumeUserEntitlement \
    --entitlementId 'fRzMC9ot4q5wX89S' \
    --namespace $AB_NAMESPACE \
    --userId '2ewkE7vMXDRSuPfi' \
    --body '{"metadata": {"1NwI1iT3VfOx2bM9": {}, "wOaQYm92qCCajNvR": {}, "oauyiWDk2qEaFnqv": {}}, "options": ["YTgdcE0ilimrmt4K", "HCfxZMtwABYvRK3Y", "6kQY4wB5BM3rWSfd"], "platform": "Ndq1aENmNWVeTQ5k", "requestId": "ZUGirJ7MftuvQeYb", "useCount": 25}' \
    > test.out 2>&1
eval_tap $? 279 'ConsumeUserEntitlement' test.out

#- 280 DisableUserEntitlement
samples/cli/sample-apps Platform disableUserEntitlement \
    --entitlementId 'l0GcyqiQMFD710lK' \
    --namespace $AB_NAMESPACE \
    --userId 'hUltFdMGpRCd5nGM' \
    > test.out 2>&1
eval_tap $? 280 'DisableUserEntitlement' test.out

#- 281 EnableUserEntitlement
samples/cli/sample-apps Platform enableUserEntitlement \
    --entitlementId 'J0oznNJDtthLwpP5' \
    --namespace $AB_NAMESPACE \
    --userId 'DHbVspOKUy9MgAbn' \
    > test.out 2>&1
eval_tap $? 281 'EnableUserEntitlement' test.out

#- 282 GetUserEntitlementHistories
samples/cli/sample-apps Platform getUserEntitlementHistories \
    --entitlementId 'ruhNhWeUkaR1VlhK' \
    --namespace $AB_NAMESPACE \
    --userId 'XhU24YY18F5ogLh2' \
    > test.out 2>&1
eval_tap $? 282 'GetUserEntitlementHistories' test.out

#- 283 RevokeUserEntitlement
samples/cli/sample-apps Platform revokeUserEntitlement \
    --entitlementId 'orhFZrhCxGCObLV6' \
    --namespace $AB_NAMESPACE \
    --userId 'jCmPbnd2KlSWS9t5' \
    --body '{"metadata": {"9wBh9dwbo9pk6bz6": {}, "g5Wyo1wbXDeHANOz": {}, "sRgcFhCXLWTcyY64": {}}}' \
    > test.out 2>&1
eval_tap $? 283 'RevokeUserEntitlement' test.out

#- 284 RevokeUserEntitlementByUseCount
samples/cli/sample-apps Platform revokeUserEntitlementByUseCount \
    --entitlementId 'cr7GeTHSqeiSrhHQ' \
    --namespace $AB_NAMESPACE \
    --userId 'iyOgxH8uXDV7ZJf1' \
    --body '{"reason": "9MyhisVr9pSUOPdO", "useCount": 54}' \
    > test.out 2>&1
eval_tap $? 284 'RevokeUserEntitlementByUseCount' test.out

#- 285 PreCheckRevokeUserEntitlementByUseCount
samples/cli/sample-apps Platform preCheckRevokeUserEntitlementByUseCount \
    --entitlementId 'YEZQnsMeSB3GsoVk' \
    --namespace $AB_NAMESPACE \
    --userId '6oYvtnf1zRqpUtY6' \
    --quantity '44' \
    > test.out 2>&1
eval_tap $? 285 'PreCheckRevokeUserEntitlementByUseCount' test.out

#- 286 RevokeUseCount
eval_tap 0 286 'RevokeUseCount # SKIP deprecated' test.out

#- 287 SellUserEntitlement
samples/cli/sample-apps Platform sellUserEntitlement \
    --entitlementId '9N4Sz0cczmlIs0l6' \
    --namespace $AB_NAMESPACE \
    --userId 'AwshHeXSJB3bbTtc' \
    --body '{"platform": "0HnJeKEkCvQcX5Iy", "requestId": "iyNE8g5Ph0JwUgvX", "useCount": 59}' \
    > test.out 2>&1
eval_tap $? 287 'SellUserEntitlement' test.out

#- 288 FulfillItem
samples/cli/sample-apps Platform fulfillItem \
    --namespace $AB_NAMESPACE \
    --userId '4rq3ycmxJBxNqc2m' \
    --body '{"duration": 55, "endDate": "1994-12-14T00:00:00Z", "entitlementCollectionId": "GnxYWmRdlOCPOaez", "entitlementOrigin": "IOS", "itemId": "F1Z7iAIIhSwbKtkA", "itemSku": "njbu0EL91T71RVmd", "language": "ifimbRbBaylLPAAi", "metadata": {"MbCwgUSrKaee9t7W": {}, "CQJJbON6vjhCZiFC": {}, "aGR9TWoX5QHoBtfQ": {}}, "order": {"currency": {"currencyCode": "uW4DY3th3LzJbTkn", "currencySymbol": "Hmm7s1GPlphVVmGh", "currencyType": "VIRTUAL", "decimals": 93, "namespace": "HFSbYrrETr2Ut9Ar"}, "ext": {"YaT7t5IPHXguPXYk": {}, "M6t8gyjAF8OvXnOW": {}, "LM4x4ZEcbynNFTae": {}}, "free": true}, "orderNo": "ynzyCmKtnhp4Yyqg", "origin": "Nintendo", "overrideBundleItemQty": {"aCSqXpp3j4v7b5ef": 43, "vba8rRyeBGinJK9y": 58, "kVGgDnAEy4Nzers7": 18}, "quantity": 91, "region": "GkT37QeHkK0PHR7w", "source": "CONSUME_ENTITLEMENT", "startDate": "1990-05-22T00:00:00Z", "storeId": "topuSbOW0jmqNfjN"}' \
    > test.out 2>&1
eval_tap $? 288 'FulfillItem' test.out

#- 289 RedeemCode
samples/cli/sample-apps Platform redeemCode \
    --namespace $AB_NAMESPACE \
    --userId 'RjWJ9vIK2ToINekO' \
    --body '{"code": "K9P1Hw0681UzEBl3", "language": "Ujyi_876", "region": "JSE2pHp4xCBUXe1K"}' \
    > test.out 2>&1
eval_tap $? 289 'RedeemCode' test.out

#- 290 PreCheckFulfillItem
samples/cli/sample-apps Platform preCheckFulfillItem \
    --namespace $AB_NAMESPACE \
    --userId 'HJnxrrkuWP77zTHe' \
    --body '{"itemId": "bxwVTELd4GzNB6is", "itemSku": "rlASLRdpXDIDPipN", "quantity": 85}' \
    > test.out 2>&1
eval_tap $? 290 'PreCheckFulfillItem' test.out

#- 291 FulfillRewards
samples/cli/sample-apps Platform fulfillRewards \
    --namespace $AB_NAMESPACE \
    --userId 'dktL60FaXwDktK2c' \
    --body '{"entitlementCollectionId": "q2CbRiiHMyd8lrC2", "entitlementOrigin": "Epic", "metadata": {"7yFzzYaqo09krLpM": {}, "IxF3YBewTcriBWCo": {}, "IE5YfUabqCpmKePw": {}}, "origin": "System", "rewards": [{"currency": {"currencyCode": "SFz1UC7IJhTkZTWc", "namespace": "jFC3nsnZfT2d4y07"}, "item": {"itemId": "IMkqpS3IzLOjw5bE", "itemName": "VOrf3rXgModht984", "itemSku": "1P18ONTFZtew8egk", "itemType": "fYRNl9mZgMsrHNG6"}, "quantity": 46, "type": "CURRENCY"}, {"currency": {"currencyCode": "WeJLH9rSuI6OvfRa", "namespace": "Dy7YzJD9QWspNjVe"}, "item": {"itemId": "pV8K1hXMu2FUENHQ", "itemName": "2b8Yjx0dfg81Alvq", "itemSku": "HTwdzAAuh6e7p5cm", "itemType": "HEuetTDBJLjgYvX8"}, "quantity": 80, "type": "CURRENCY"}, {"currency": {"currencyCode": "aT3GUruWrQ9Ikvgu", "namespace": "CNF9J7TSIBtLJf6u"}, "item": {"itemId": "TklUIeMaS9Pw8e0X", "itemName": "ltmRTRmpAm3FeV9T", "itemSku": "RHMPcrnWXW9XThhd", "itemType": "cuapf93J4wVpEQf5"}, "quantity": 34, "type": "CURRENCY"}], "source": "PURCHASE", "transactionId": "Wx9pdKuesxArDF83"}' \
    > test.out 2>&1
eval_tap $? 291 'FulfillRewards' test.out

#- 292 QueryUserIAPOrders
samples/cli/sample-apps Platform queryUserIAPOrders \
    --namespace $AB_NAMESPACE \
    --userId 'r8cH3nBtSSbfZv5o' \
    --endTime 'Fwi1NxNdu75gkiEt' \
    --limit '31' \
    --offset '45' \
    --productId 'PStfku8Cn92Ozjr4' \
    --startTime 'ED9VrSRQtMfS68wx' \
    --status 'VERIFIED' \
    --type 'GOOGLE' \
    > test.out 2>&1
eval_tap $? 292 'QueryUserIAPOrders' test.out

#- 293 QueryAllUserIAPOrders
samples/cli/sample-apps Platform queryAllUserIAPOrders \
    --namespace $AB_NAMESPACE \
    --userId 'oDxnuiKYv2WkCOQC' \
    > test.out 2>&1
eval_tap $? 293 'QueryAllUserIAPOrders' test.out

#- 294 QueryUserIAPConsumeHistory
samples/cli/sample-apps Platform queryUserIAPConsumeHistory \
    --namespace $AB_NAMESPACE \
    --userId 'ZC5yRoLBcystP5jN' \
    --endTime 'vei7CEaVeB9Nlv3c' \
    --limit '46' \
    --offset '91' \
    --startTime 'Ft4D7b5CATB8ptKI' \
    --status 'PENDING' \
    --type 'EPICGAMES' \
    > test.out 2>&1
eval_tap $? 294 'QueryUserIAPConsumeHistory' test.out

#- 295 MockFulfillIAPItem
samples/cli/sample-apps Platform mockFulfillIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'WwOOwxHYPgy3aAxy' \
    --body '{"itemIdentityType": "ITEM_SKU", "language": "sgY-iWND_cK", "productId": "tMRKbZ16I2E26kf8", "region": "uUZPIwzhcOmDDvj3", "transactionId": "vknUI1IBPAryW8Tp", "type": "STADIA"}' \
    > test.out 2>&1
eval_tap $? 295 'MockFulfillIAPItem' test.out

#- 296 AdminSyncOculusSubscriptions
samples/cli/sample-apps Platform adminSyncOculusSubscriptions \
    --namespace $AB_NAMESPACE \
    --userId 'ooFFs8QSADAx6s0M' \
    --body '{"skus": ["BaKzGpepQTBV9uWY", "L94FmoLPkmqyORIA", "BAJUKzZYSyz5QsF8"]}' \
    > test.out 2>&1
eval_tap $? 296 'AdminSyncOculusSubscriptions' test.out

#- 297 AdminGetIAPOrderLineItems
samples/cli/sample-apps Platform adminGetIAPOrderLineItems \
    --iapOrderNo 'AqemBhTRWhymYAeA' \
    --namespace $AB_NAMESPACE \
    --userId 'fBlQzPbQmaNQ0Nhz' \
    > test.out 2>&1
eval_tap $? 297 'AdminGetIAPOrderLineItems' test.out

#- 298 AdminSyncSteamAbnormalTransaction
samples/cli/sample-apps Platform adminSyncSteamAbnormalTransaction \
    --namespace $AB_NAMESPACE \
    --userId '13sAeql561YSVbom' \
    > test.out 2>&1
eval_tap $? 298 'AdminSyncSteamAbnormalTransaction' test.out

#- 299 AdminSyncSteamIAPByTransaction
samples/cli/sample-apps Platform adminSyncSteamIAPByTransaction \
    --namespace $AB_NAMESPACE \
    --userId '1BZV4RLja80X7Nzl' \
    --body '{"orderId": "L5MPVGCrTn0T7YbQ"}' \
    > test.out 2>&1
eval_tap $? 299 'AdminSyncSteamIAPByTransaction' test.out

#- 300 QueryUserThirdPartySubscription
samples/cli/sample-apps Platform queryUserThirdPartySubscription \
    --namespace $AB_NAMESPACE \
    --userId 'WaSccm164uJkoRD0' \
    --activeOnly 'false' \
    --groupId 'APjRUt6awcs9YYkw' \
    --limit '54' \
    --offset '6' \
    --platform 'PLAYSTATION' \
    --productId 'Fv9kbdGq8eB3og8W' \
    > test.out 2>&1
eval_tap $? 300 'QueryUserThirdPartySubscription' test.out

#- 301 GetThirdPartyPlatformSubscriptionOwnershipByGroupId
samples/cli/sample-apps Platform getThirdPartyPlatformSubscriptionOwnershipByGroupId \
    --namespace $AB_NAMESPACE \
    --platform 'EPICGAMES' \
    --userId 'amy5nsbkCIxqDUvb' \
    --groupId '6bdzbiZDhi9bWEBq' \
    > test.out 2>&1
eval_tap $? 301 'GetThirdPartyPlatformSubscriptionOwnershipByGroupId' test.out

#- 302 GetThirdPartyPlatformSubscriptionOwnershipByProductId
samples/cli/sample-apps Platform getThirdPartyPlatformSubscriptionOwnershipByProductId \
    --namespace $AB_NAMESPACE \
    --platform 'STEAM' \
    --userId 'j2W7UfF1bYH2JRnX' \
    --productId 'CWumPZXSBfwj4c4L' \
    > test.out 2>&1
eval_tap $? 302 'GetThirdPartyPlatformSubscriptionOwnershipByProductId' test.out

#- 303 QueryUserThirdPartySubscriptionTransactions
samples/cli/sample-apps Platform queryUserThirdPartySubscriptionTransactions \
    --namespace $AB_NAMESPACE \
    --userId 'KcAHcanf2oCFQAO1' \
    --activeOnly 'false' \
    --groupId 's9wjLeAz68nCRL0g' \
    --limit '40' \
    --offset '2' \
    --platform 'PLAYSTATION' \
    --productId 'GcmcdB3ODDAsITMe' \
    > test.out 2>&1
eval_tap $? 303 'QueryUserThirdPartySubscriptionTransactions' test.out

#- 304 GetThirdPartySubscriptionDetails
samples/cli/sample-apps Platform getThirdPartySubscriptionDetails \
    --id 'ktMzv5yBQORZzAnq' \
    --namespace $AB_NAMESPACE \
    --userId '8s1pj2MENkmfhSus' \
    > test.out 2>&1
eval_tap $? 304 'GetThirdPartySubscriptionDetails' test.out

#- 305 GetSubscriptionHistory
samples/cli/sample-apps Platform getSubscriptionHistory \
    --id 'rNJGLzBxAhrv9B61' \
    --namespace $AB_NAMESPACE \
    --userId 'H8nsoijGAhZzbOKn' \
    --limit '32' \
    --offset '46' \
    > test.out 2>&1
eval_tap $? 305 'GetSubscriptionHistory' test.out

#- 306 SyncSubscriptionTransaction
samples/cli/sample-apps Platform syncSubscriptionTransaction \
    --id '082mzXxHDGUH6tsT' \
    --namespace $AB_NAMESPACE \
    --userId 'dwbVlOTyizpSfdyb' \
    > test.out 2>&1
eval_tap $? 306 'SyncSubscriptionTransaction' test.out

#- 307 GetThirdPartyUserSubscriptionDetails
samples/cli/sample-apps Platform getThirdPartyUserSubscriptionDetails \
    --id '5kLwL3pZ7rG9Smc7' \
    --namespace $AB_NAMESPACE \
    --userId '7kFQgCZjJe6QQMc1' \
    > test.out 2>&1
eval_tap $? 307 'GetThirdPartyUserSubscriptionDetails' test.out

#- 308 SyncSubscription
samples/cli/sample-apps Platform syncSubscription \
    --id 'Vw8HSumnZl6F5UM7' \
    --namespace $AB_NAMESPACE \
    --userId '22ZUYeqYduwCOVsy' \
    > test.out 2>&1
eval_tap $? 308 'SyncSubscription' test.out

#- 309 QueryUserOrders
samples/cli/sample-apps Platform queryUserOrders \
    --namespace $AB_NAMESPACE \
    --userId '407dKFrZMxmOkjP0' \
    --discounted 'true' \
    --itemId 'bLoBZ8vHv0rSHmJk' \
    --limit '58' \
    --offset '25' \
    --status 'REFUNDING' \
    > test.out 2>&1
eval_tap $? 309 'QueryUserOrders' test.out

#- 310 AdminCreateUserOrder
samples/cli/sample-apps Platform adminCreateUserOrder \
    --namespace $AB_NAMESPACE \
    --userId 'iLPw5Ec7Wuc0qrhL' \
    --body '{"currencyCode": "1ykZTY4aNZeeDf3T", "currencyNamespace": "ReM7kbj0n8xQio9C", "discountCodes": ["h764VfXWfG0ToMpp", "AYuaeN8A25JM5zDO", "HYlVVTOyldRwfEE8"], "discountedPrice": 86, "entitlementPlatform": "Xbox", "ext": {"AvqheMeLXgC5OHRy": {}, "ahxMpC3H6rbQ2cIP": {}, "kivERjKKSppW1JFM": {}}, "itemId": "gAIHHPy7JC4ZnamI", "language": "BPIGp7UD8uHr3GHV", "options": {"skipPriceValidation": true}, "platform": "Steam", "price": 14, "quantity": 24, "region": "xxklq3fWH592ATIG", "returnUrl": "MnljS5hQtDQEdYFY", "sandbox": false, "sectionId": "0v56Sg6W6hHzD9rn"}' \
    > test.out 2>&1
eval_tap $? 310 'AdminCreateUserOrder' test.out

#- 311 CountOfPurchasedItem
samples/cli/sample-apps Platform countOfPurchasedItem \
    --namespace $AB_NAMESPACE \
    --userId 'UzmdsUgJvcxkeqsL' \
    --itemId 'DqI34NiIIekIAHIL' \
    > test.out 2>&1
eval_tap $? 311 'CountOfPurchasedItem' test.out

#- 312 GetUserOrder
samples/cli/sample-apps Platform getUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'X4Az0ripsLxrF76x' \
    --userId 'FGZdyltIzFO5deUp' \
    > test.out 2>&1
eval_tap $? 312 'GetUserOrder' test.out

#- 313 UpdateUserOrderStatus
samples/cli/sample-apps Platform updateUserOrderStatus \
    --namespace $AB_NAMESPACE \
    --orderNo 'd6o8P8d7cMwv8sHu' \
    --userId 'n2GuhLuZgIJSb4Go' \
    --body '{"status": "INIT", "statusReason": "vyEY8Qfc6Fj0NdCJ"}' \
    > test.out 2>&1
eval_tap $? 313 'UpdateUserOrderStatus' test.out

#- 314 FulfillUserOrder
samples/cli/sample-apps Platform fulfillUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'TnyAOQSgLeZqy3zC' \
    --userId 'juQ2Ap6QrFF9Yd6o' \
    > test.out 2>&1
eval_tap $? 314 'FulfillUserOrder' test.out

#- 315 GetUserOrderGrant
eval_tap 0 315 'GetUserOrderGrant # SKIP deprecated' test.out

#- 316 GetUserOrderHistories
samples/cli/sample-apps Platform getUserOrderHistories \
    --namespace $AB_NAMESPACE \
    --orderNo 'UPEkkHh3PQaSHUbF' \
    --userId '1MSodcAtnXTYSmEE' \
    > test.out 2>&1
eval_tap $? 316 'GetUserOrderHistories' test.out

#- 317 ProcessUserOrderNotification
samples/cli/sample-apps Platform processUserOrderNotification \
    --namespace $AB_NAMESPACE \
    --orderNo 'z2IlwDvem6yMWxv9' \
    --userId 'v5EhnG4U4Rg0Fq4y' \
    --body '{"additionalData": {"cardSummary": "IHMh1M5xm36Hbkui"}, "authorisedTime": "1997-04-03T00:00:00Z", "chargebackReversedTime": "1976-02-17T00:00:00Z", "chargebackTime": "1995-05-09T00:00:00Z", "chargedTime": "1993-06-20T00:00:00Z", "createdTime": "1998-02-24T00:00:00Z", "currency": {"currencyCode": "MP8nZ8ElpcFwogEP", "currencySymbol": "swytx2N16JxbupMe", "currencyType": "REAL", "decimals": 72, "namespace": "0QcnVqzGhVmfOkxM"}, "customParameters": {"poBquD6sE24zWMPj": {}, "KiSjuxvy1Mqxgny0": {}, "6ubPQypg6NRRj84a": {}}, "extOrderNo": "l3hV15rRydVo4Lr3", "extTxId": "J0fOn6HB82nl0n1m", "extUserId": "FHuaVUOYP5gF1gir", "issuedAt": "1975-09-22T00:00:00Z", "metadata": {"eTVWMeaC0cDDsuIY": "Igw9hx4wr9X2DZzY", "p4C60iwRPyvO3fhd": "XZzF7hh2bFam0XCt", "SHry3jOVLdo1d4cT": "CpLGzAZswn2EhnLg"}, "namespace": "alhI4v7BeTsb65tj", "nonceStr": "nzPpxMpGaLPgZT5w", "paymentData": {"discountAmount": 71, "discountCode": "SmYmdAzrtdqy7mG0", "subtotalPrice": 66, "tax": 90, "totalPrice": 13}, "paymentMethod": "Vq9TyCaQ3M4Ndcjb", "paymentMethodFee": 63, "paymentOrderNo": "dzPLJl3y7UW9JEEJ", "paymentProvider": "PAYPAL", "paymentProviderFee": 66, "paymentStationUrl": "OWwrOGPr9OGR7fe4", "price": 17, "refundedTime": "1981-11-04T00:00:00Z", "salesTax": 76, "sandbox": false, "sku": "lwROXOOjwSaxiIEH", "status": "CHARGEBACK", "statusReason": "BHaBSCVDHkTXrMLC", "subscriptionId": "UyE7cmRwAZwodGnS", "subtotalPrice": 71, "targetNamespace": "lpt1KqzFhzCyL0zS", "targetUserId": "5aNdNd83IxkqEbu1", "tax": 14, "totalPrice": 12, "totalTax": 24, "txEndTime": "1985-08-12T00:00:00Z", "type": "AO9JumFMiTQmbvw5", "userId": "Z0Cqt0J9uxuPFduH", "vat": 43}' \
    > test.out 2>&1
eval_tap $? 317 'ProcessUserOrderNotification' test.out

#- 318 DownloadUserOrderReceipt
samples/cli/sample-apps Platform downloadUserOrderReceipt \
    --namespace $AB_NAMESPACE \
    --orderNo 'c2MzeplcRMsGrlG0' \
    --userId 'WBQjR0ldRyVp47Hl' \
    > test.out 2>&1
eval_tap $? 318 'DownloadUserOrderReceipt' test.out

#- 319 CreateUserPaymentOrder
samples/cli/sample-apps Platform createUserPaymentOrder \
    --namespace $AB_NAMESPACE \
    --userId 'ce7KllavyoNq5Lxh' \
    --body '{"currencyCode": "PtWT5ZFWTiobngsW", "currencyNamespace": "gnuunbATiNAsLCZ7", "customParameters": {"0RaYytrL0tXp1hXj": {}, "jc2nLQ4vMzTSVWmD": {}, "5w3SsRDWMI3tKRST": {}}, "description": "U6WeeolDMQdgUhRg", "extOrderNo": "WI4lr9OVWiNTjHvP", "extUserId": "ayKVRGdIZqtnKsKy", "itemType": "LOOTBOX", "language": "KfV", "metadata": {"J7BodfSN7cWhUphZ": "3bxjpGK6imCyCu58", "sxRAVB0s7JY8QYZF": "vbIDCs7tK43vQObu", "HJgNtsqcmIyi88FI": "FbHRc2H1fFPA9VRM"}, "notifyUrl": "2UIaGTKBRLGtBgSz", "omitNotification": true, "platform": "0H72NuGr4wWTfQmF", "price": 37, "recurringPaymentOrderNo": "QqMFnZ0n6b0XIzaT", "region": "aI3syQbLbqoM7TD4", "returnUrl": "bRkMKdup25LvgiLI", "sandbox": true, "sku": "l1PfwIFfKI22xLff", "subscriptionId": "0foFSfTWz9ZmMiOv", "title": "Xf3eaaF2IVO12OAT"}' \
    > test.out 2>&1
eval_tap $? 319 'CreateUserPaymentOrder' test.out

#- 320 RefundUserPaymentOrder
samples/cli/sample-apps Platform refundUserPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'b11HfnktPnBQtc92' \
    --userId '992pNVgdYojDs4Wq' \
    --body '{"description": "fEXXTtMMCBrzEf5Q"}' \
    > test.out 2>&1
eval_tap $? 320 'RefundUserPaymentOrder' test.out

#- 321 GetUserPlatformAccountClosureHistories
samples/cli/sample-apps Platform getUserPlatformAccountClosureHistories \
    --namespace $AB_NAMESPACE \
    --userId '1kDFaUU5wa4T0x3Z' \
    > test.out 2>&1
eval_tap $? 321 'GetUserPlatformAccountClosureHistories' test.out

#- 322 ApplyUserRedemption
samples/cli/sample-apps Platform applyUserRedemption \
    --namespace $AB_NAMESPACE \
    --userId 'z6ahbzk22RbZ5sQz' \
    --body '{"code": "Tug7UTXmikBRnEeJ", "orderNo": "8jQ7enikfKmACBoC"}' \
    > test.out 2>&1
eval_tap $? 322 'ApplyUserRedemption' test.out

#- 323 DoRevocation
samples/cli/sample-apps Platform doRevocation \
    --namespace $AB_NAMESPACE \
    --userId '6dFqQjz1oTWgcP6G' \
    --body '{"meta": {"zlxBYZJ36cczOUPE": {}, "Ee7yZuPy9PVv2Bys": {}, "ldd2BNXPgAFVIbjs": {}}, "reason": "DuLmIowAC3KCx74S", "requestId": "B9hjglgXDROv1nzK", "revokeEntries": [{"currency": {"balanceOrigin": "Steam", "currencyCode": "q8aKu96ccBDr3UGT", "namespace": "v6mTNCMik63i6I5X"}, "entitlement": {"entitlementId": "ZvgPTkjqbL8fJu0r"}, "item": {"entitlementOrigin": "Twitch", "itemIdentity": "Rs337mE7eC0QBSEr", "itemIdentityType": "ITEM_ID", "origin": "System"}, "quantity": 63, "type": "ENTITLEMENT"}, {"currency": {"balanceOrigin": "IOS", "currencyCode": "0MpI7pA8NHGagd0z", "namespace": "0sVFD6qNaHG4NJ16"}, "entitlement": {"entitlementId": "bqfPZmc3gmgwpJtJ"}, "item": {"entitlementOrigin": "GooglePlay", "itemIdentity": "Uq8r7kw4XWZOX66z", "itemIdentityType": "ITEM_ID", "origin": "IOS"}, "quantity": 8, "type": "CURRENCY"}, {"currency": {"balanceOrigin": "Playstation", "currencyCode": "9IGr6jIr39jyByAZ", "namespace": "V9ft4VAR7l172Fwz"}, "entitlement": {"entitlementId": "0ihN033Co0qocGPc"}, "item": {"entitlementOrigin": "System", "itemIdentity": "wz0h6qdCwBdF1I5X", "itemIdentityType": "ITEM_SKU", "origin": "Xbox"}, "quantity": 23, "type": "ENTITLEMENT"}], "source": "ORDER", "transactionId": "U4IgczJokGKiQomD"}' \
    > test.out 2>&1
eval_tap $? 323 'DoRevocation' test.out

#- 324 RegisterXblSessions
samples/cli/sample-apps Platform registerXblSessions \
    --namespace $AB_NAMESPACE \
    --userId 'jPrVPl4DBoigVmLW' \
    --body '{"gameSessionId": "4OBkWmdboaDekTUW", "payload": {"fHOTUmkqcSgmyRHx": {}, "KN8zITPMXsnngdjX": {}, "yiEhogj0mD6lPOXe": {}}, "scid": "pJOG9NoUQUovzXwp", "sessionTemplateName": "CtBShqbjUPZUJQqD"}' \
    > test.out 2>&1
eval_tap $? 324 'RegisterXblSessions' test.out

#- 325 QueryUserSubscriptions
samples/cli/sample-apps Platform queryUserSubscriptions \
    --namespace $AB_NAMESPACE \
    --userId 'dYTftVRi5VX6gXWb' \
    --chargeStatus 'CHARGED' \
    --itemId 'KQlVXqr1CMLDHth1' \
    --limit '33' \
    --offset '8' \
    --sku '5e78z74o3kKJDE5E' \
    --status 'EXPIRED' \
    --subscribedBy 'USER' \
    > test.out 2>&1
eval_tap $? 325 'QueryUserSubscriptions' test.out

#- 326 GetUserSubscriptionActivities
samples/cli/sample-apps Platform getUserSubscriptionActivities \
    --namespace $AB_NAMESPACE \
    --userId 'uJvlk4rY5NSyeidQ' \
    --excludeSystem 'true' \
    --limit '3' \
    --offset '76' \
    --subscriptionId 'wh22YZiXQNtKzxC7' \
    > test.out 2>&1
eval_tap $? 326 'GetUserSubscriptionActivities' test.out

#- 327 PlatformSubscribeSubscription
samples/cli/sample-apps Platform platformSubscribeSubscription \
    --namespace $AB_NAMESPACE \
    --userId 'On8MSaos8gFIJwBV' \
    --body '{"grantDays": 15, "itemId": "yiWdkAzE9i1WdujH", "language": "bugqqrjeP5PspDLI", "reason": "PT9BVRI26jZiQbOP", "region": "bsKe8VaE9dmZgDqA", "source": "DOOSgDei7Ed8bxF9"}' \
    > test.out 2>&1
eval_tap $? 327 'PlatformSubscribeSubscription' test.out

#- 328 CheckUserSubscriptionSubscribableByItemId
samples/cli/sample-apps Platform checkUserSubscriptionSubscribableByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'GsPlMPDKvJbrSkz4' \
    --itemId '4793f3XSzmf8gvxG' \
    > test.out 2>&1
eval_tap $? 328 'CheckUserSubscriptionSubscribableByItemId' test.out

#- 329 GetUserSubscription
samples/cli/sample-apps Platform getUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'dYmQtHErjGBdGoda' \
    --userId 'bxjfIF2UIEa0oME8' \
    > test.out 2>&1
eval_tap $? 329 'GetUserSubscription' test.out

#- 330 DeleteUserSubscription
samples/cli/sample-apps Platform deleteUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'R8FqXutyKMRFjLKa' \
    --userId 'DAhgPi2HBC8y8vMD' \
    > test.out 2>&1
eval_tap $? 330 'DeleteUserSubscription' test.out

#- 331 CancelSubscription
samples/cli/sample-apps Platform cancelSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'Lm5DulDg2cRzA8GK' \
    --userId 'N1BjGvVVb5dnqtvs' \
    --force 'true' \
    --body '{"immediate": true, "reason": "9ALdOlq2cNyWAXYR"}' \
    > test.out 2>&1
eval_tap $? 331 'CancelSubscription' test.out

#- 332 GrantDaysToSubscription
samples/cli/sample-apps Platform grantDaysToSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'DWrU8aBVPtKsDfED' \
    --userId 'Kxjib6i057GknAFQ' \
    --body '{"grantDays": 71, "reason": "GR5EGn8xCvMAevjL"}' \
    > test.out 2>&1
eval_tap $? 332 'GrantDaysToSubscription' test.out

#- 333 GetUserSubscriptionBillingHistories
samples/cli/sample-apps Platform getUserSubscriptionBillingHistories \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'j5mYkaqUPOTadlqi' \
    --userId 'AMfUsam4NWSqKgfM' \
    --excludeFree 'true' \
    --limit '100' \
    --offset '33' \
    > test.out 2>&1
eval_tap $? 333 'GetUserSubscriptionBillingHistories' test.out

#- 334 ProcessUserSubscriptionNotification
samples/cli/sample-apps Platform processUserSubscriptionNotification \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'vhjGE2kKWjMVsIvw' \
    --userId 'kMrbdkmTA6QkdMXm' \
    --body '{"additionalData": {"cardSummary": "9v5n2sZhXt2wU5iW"}, "authorisedTime": "1997-10-18T00:00:00Z", "chargebackReversedTime": "1995-05-20T00:00:00Z", "chargebackTime": "1977-08-10T00:00:00Z", "chargedTime": "1986-07-07T00:00:00Z", "createdTime": "1988-11-10T00:00:00Z", "currency": {"currencyCode": "SU53pTxHWsurSBGG", "currencySymbol": "qDsuxXJiMQxCwuQG", "currencyType": "REAL", "decimals": 85, "namespace": "2AGpF9552MurggcL"}, "customParameters": {"RuB4DuFSko6eEPw2": {}, "NClfw6p6fzk3uNFQ": {}, "6CHm7sJVdq3YNbfn": {}}, "extOrderNo": "tY5AigiTpCUL2MyT", "extTxId": "9qeFkPMCHx1uT3xr", "extUserId": "iXhiC2106toTx6vP", "issuedAt": "1990-07-28T00:00:00Z", "metadata": {"xVVmQdGZhoE1rIic": "50eeqTMStIDgKrVv", "ub4ZsXLrEwKYpnGm": "CqBq9T6XuVAUMQU8", "e3hsYgHdH8B6bIRe": "UyYEiFC1TCUauknB"}, "namespace": "auSxOG5Nlu7ZkgiE", "nonceStr": "c13xFMjXLMtoLQf4", "paymentData": {"discountAmount": 16, "discountCode": "wvAPkcI5tUQBexhI", "subtotalPrice": 38, "tax": 19, "totalPrice": 33}, "paymentMethod": "ulevp5eZajj8hQsq", "paymentMethodFee": 94, "paymentOrderNo": "prt2XhaibELL8WyS", "paymentProvider": "WALLET", "paymentProviderFee": 82, "paymentStationUrl": "ncyQSjmygC56gG4m", "price": 72, "refundedTime": "1995-06-22T00:00:00Z", "salesTax": 86, "sandbox": true, "sku": "ojWMo7X05GhE2zYY", "status": "AUTHORISED", "statusReason": "PHlo7U6Gf23IfDQ9", "subscriptionId": "rkeHpljBvdE1JMUg", "subtotalPrice": 29, "targetNamespace": "zrqoDhjxEAsAD7ND", "targetUserId": "4qk0qHF23ffPmdB1", "tax": 78, "totalPrice": 24, "totalTax": 29, "txEndTime": "1989-03-27T00:00:00Z", "type": "sddTnGSWbNvjMc7H", "userId": "HQ3Ldn2ZhgzbB3Tb", "vat": 36}' \
    > test.out 2>&1
eval_tap $? 334 'ProcessUserSubscriptionNotification' test.out

#- 335 AcquireUserTicket
samples/cli/sample-apps Platform acquireUserTicket \
    --boothName 'nNDC3hmvDSV4NpQU' \
    --namespace $AB_NAMESPACE \
    --userId 'SVuhudTKGrrnkikC' \
    --body '{"count": 74, "orderNo": "4GK9BanU3o5kCEEX"}' \
    > test.out 2>&1
eval_tap $? 335 'AcquireUserTicket' test.out

#- 336 QueryUserCurrencyWallets
samples/cli/sample-apps Platform queryUserCurrencyWallets \
    --namespace $AB_NAMESPACE \
    --userId 'kAQFnlfPmgoW77hI' \
    > test.out 2>&1
eval_tap $? 336 'QueryUserCurrencyWallets' test.out

#- 337 DebitUserWalletByCurrencyCode
samples/cli/sample-apps Platform debitUserWalletByCurrencyCode \
    --currencyCode 'qpXArELxjjDdtuDZ' \
    --namespace $AB_NAMESPACE \
    --userId 'kjgoZQ6fgqD7eyen' \
    --body '{"allowOverdraft": false, "amount": 79, "balanceOrigin": "Other", "balanceSource": "PAYMENT", "metadata": {"DWSbc2JJYrF5eVbq": {}, "VVFBDZdPrkhxb31I": {}, "MmkCqTx4gXAQHfRI": {}}, "reason": "MHPV9koi3DtqRFqa"}' \
    > test.out 2>&1
eval_tap $? 337 'DebitUserWalletByCurrencyCode' test.out

#- 338 ListUserCurrencyTransactions
samples/cli/sample-apps Platform listUserCurrencyTransactions \
    --currencyCode 'D6lkpjq2skFhHJ96' \
    --namespace $AB_NAMESPACE \
    --userId 'FnSTYNYVgTM2eu3c' \
    --limit '21' \
    --offset '93' \
    > test.out 2>&1
eval_tap $? 338 'ListUserCurrencyTransactions' test.out

#- 339 CheckBalance
samples/cli/sample-apps Platform checkBalance \
    --currencyCode 'NaLqukKrVQEH29wF' \
    --namespace $AB_NAMESPACE \
    --userId 'GBmt69IHRe2Jh0E3' \
    --request '{"amount": 26, "debitBalanceSource": "ORDER_REVOCATION", "metadata": {"niirZwXGwnX8MyUZ": {}, "MTxYcdOQN8JhuPK6": {}, "81BNYcjMJfeZmx08": {}}, "reason": "KDZ82NQQYavFyEcr", "walletPlatform": "GooglePlay"}' \
    > test.out 2>&1
eval_tap $? 339 'CheckBalance' test.out

#- 340 CheckWallet
eval_tap 0 340 'CheckWallet # SKIP deprecated' test.out

#- 341 CreditUserWallet
samples/cli/sample-apps Platform creditUserWallet \
    --currencyCode 'XV3DiEhD3BIaPcfJ' \
    --namespace $AB_NAMESPACE \
    --userId 'Bu1VhhfKWnevI2N4' \
    --body '{"amount": 48, "expireAt": "1972-06-11T00:00:00Z", "metadata": {"bFTYnK8zUHWMYJDA": {}, "D3r7XoZvBRM99qJz": {}, "hchrdc9ioT5OOcxN": {}}, "origin": "Oculus", "reason": "yAEZI714BYL0UST0", "source": "TRADE"}' \
    > test.out 2>&1
eval_tap $? 341 'CreditUserWallet' test.out

#- 342 DebitByWalletPlatform
samples/cli/sample-apps Platform debitByWalletPlatform \
    --currencyCode 'Qc8mIJHD9fNUtXfl' \
    --namespace $AB_NAMESPACE \
    --userId 'MK6dP9PYk04WrjgL' \
    --request '{"amount": 87, "debitBalanceSource": "IAP_REVOCATION", "metadata": {"wiKrn0FhHLWnn14e": {}, "23pyWyuSWZlTv3K2": {}, "SL9e2OYSmF9dYEkh": {}}, "reason": "sDTgYjRlazESunuu", "walletPlatform": "Epic"}' \
    > test.out 2>&1
eval_tap $? 342 'DebitByWalletPlatform' test.out

#- 343 PayWithUserWallet
samples/cli/sample-apps Platform payWithUserWallet \
    --currencyCode 'BMF4kxXtGI4PHxGn' \
    --namespace $AB_NAMESPACE \
    --userId 'bvxG57FSxEDb4HBm' \
    --body '{"amount": 95, "metadata": {"Rtq7ZUfhoVhOu9Ya": {}, "CA6ACxnch4q90mvI": {}, "M8HvLdVH5HbgWxUn": {}}, "walletPlatform": "Epic"}' \
    > test.out 2>&1
eval_tap $? 343 'PayWithUserWallet' test.out

#- 344 GetUserWallet
eval_tap 0 344 'GetUserWallet # SKIP deprecated' test.out

#- 345 DebitUserWallet
eval_tap 0 345 'DebitUserWallet # SKIP deprecated' test.out

#- 346 DisableUserWallet
eval_tap 0 346 'DisableUserWallet # SKIP deprecated' test.out

#- 347 EnableUserWallet
eval_tap 0 347 'EnableUserWallet # SKIP deprecated' test.out

#- 348 ListUserWalletTransactions
eval_tap 0 348 'ListUserWalletTransactions # SKIP deprecated' test.out

#- 349 ListViews
samples/cli/sample-apps Platform listViews \
    --namespace $AB_NAMESPACE \
    --storeId 'SSla0E4VejBxGrip' \
    > test.out 2>&1
eval_tap $? 349 'ListViews' test.out

#- 350 CreateView
samples/cli/sample-apps Platform createView \
    --namespace $AB_NAMESPACE \
    --storeId 'LuNZwXrclL5Gqp5S' \
    --body '{"displayOrder": 96, "localizations": {"mDAsBZXp41J87OFI": {"description": "9pNjYUkuVCjQCSaI", "localExt": {"O8ng0ouNdSR3oFcT": {}, "tms3Dqshb7Z1BLi1": {}, "UZQFYkbRWDI1mWTi": {}}, "longDescription": "Rz0cDhT5l0dgfawY", "title": "ZoAZVPHWvyb0RIiF"}, "O0fVM6TQTS7A9QrD": {"description": "YxKj999SZuuZWgcd", "localExt": {"Xi1gTpzLeo6bCxJL": {}, "zImh8JMubEleF54J": {}, "YOshjz3H7rQj63nD": {}}, "longDescription": "O7AnNEtXKwObvktX", "title": "OD1C7hvavmZSwP21"}, "dqiRuWRHXEqGKTJA": {"description": "U654yjvGloBtSmad", "localExt": {"kPv2JTtmhcYN4LES": {}, "Ns2S0XZj8ft1R6Se": {}, "nnMjSR8TnhWpeTM1": {}}, "longDescription": "Q8yLqDuGFkk1XJnu", "title": "WQDb3wkQmmAFTox1"}}, "name": "mni3RMzRWW5i4drj"}' \
    > test.out 2>&1
eval_tap $? 350 'CreateView' test.out

#- 351 GetView
samples/cli/sample-apps Platform getView \
    --namespace $AB_NAMESPACE \
    --viewId '6hPEcxaqqzMGHVGQ' \
    --storeId '39dkBZI8ncGuWU7x' \
    > test.out 2>&1
eval_tap $? 351 'GetView' test.out

#- 352 UpdateView
samples/cli/sample-apps Platform updateView \
    --namespace $AB_NAMESPACE \
    --viewId 'eQnC2TScM1B4jNiR' \
    --storeId 'Dhq39NrEWO2cDzWB' \
    --body '{"displayOrder": 48, "localizations": {"zKtdCjftLTK8vX82": {"description": "05worrnBpjosGI2L", "localExt": {"80uFJAdqN2Z8YDfg": {}, "9poVtTScAi7OEhP6": {}, "M0qBBfKIAPU3Mtoe": {}}, "longDescription": "UsCvCvPOjz9TshYg", "title": "fqzOvjpLS1EjE1pq"}, "3OKHfW0MT7IVikol": {"description": "Fi3xBXziyWPDB2to", "localExt": {"7FjfKoiLh0rkhGzT": {}, "F5yYHGtEsyrWDimk": {}, "Ys9bS07ThFCTaGRm": {}}, "longDescription": "vepNguGmOEslH9FJ", "title": "ppBfBTpSeHRMNxAA"}, "mRGiHuA6KsPwQE79": {"description": "xRgvnRQ3h9J66DM9", "localExt": {"tQRbwyVpdJ9FgkPg": {}, "oJLlBJVLqgomseKN": {}, "qiagqRMQlrDXLyLg": {}}, "longDescription": "hukIdUxXkeqfHXVf", "title": "ZN63YoIyP8F2uHBg"}}, "name": "sh71H2MZSuKO4ZhW"}' \
    > test.out 2>&1
eval_tap $? 352 'UpdateView' test.out

#- 353 DeleteView
samples/cli/sample-apps Platform deleteView \
    --namespace $AB_NAMESPACE \
    --viewId 'qwJw4U99nUKiXORr' \
    --storeId '1g3oiImdyCtPft5d' \
    > test.out 2>&1
eval_tap $? 353 'DeleteView' test.out

#- 354 GetWalletConfig
samples/cli/sample-apps Platform getWalletConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 354 'GetWalletConfig' test.out

#- 355 UpdateWalletConfig
samples/cli/sample-apps Platform updateWalletConfig \
    --namespace $AB_NAMESPACE \
    --body '{"enablePaidForVCExpiration": false}' \
    > test.out 2>&1
eval_tap $? 355 'UpdateWalletConfig' test.out

#- 356 QueryWallets
eval_tap 0 356 'QueryWallets # SKIP deprecated' test.out

#- 357 BulkCredit
samples/cli/sample-apps Platform bulkCredit \
    --namespace $AB_NAMESPACE \
    --body '[{"creditRequest": {"amount": 25, "expireAt": "1973-01-09T00:00:00Z", "metadata": {"sSm7gquWzqiYHGgQ": {}, "MsCpiKx0sl2MF0bm": {}, "VPB2HNwLpFm52MVk": {}}, "origin": "Xbox", "reason": "WyGqslonplpxBzS5", "source": "SELL_BACK"}, "currencyCode": "FoWnPT8UdYrsqnAQ", "userIds": ["xUnXsZeReEPgsSpL", "te4d480Vs71qBSjg", "2Hy90FtK7mbtSQZV"]}, {"creditRequest": {"amount": 80, "expireAt": "1990-08-08T00:00:00Z", "metadata": {"jRR7sFrGoTLf3JgF": {}, "AcSZEPBwS9NEtRRC": {}, "aiNXHQlvHkiYwsuX": {}}, "origin": "Other", "reason": "05uZIfTCupUTVAv5", "source": "SELL_BACK"}, "currencyCode": "LfHz0m9CQ4Kez5vM", "userIds": ["iJYJD95mORpof3Pn", "higsUmRS6TBx7ZCq", "9lim19r664W7jHVH"]}, {"creditRequest": {"amount": 46, "expireAt": "1976-11-22T00:00:00Z", "metadata": {"UnXfN2iY8kT5j11Q": {}, "JR7wUXcQFg298X9s": {}, "5oJjduPwy7AWuTQh": {}}, "origin": "Playstation", "reason": "J5cMUgw1ZC7DVrdF", "source": "IAP"}, "currencyCode": "tl9PNU9iq3tfrNlK", "userIds": ["W7H0re7g5LjF50L3", "gI4CNPOHyZlnaw0C", "cS2F8anIa9aIk1sx"]}]' \
    > test.out 2>&1
eval_tap $? 357 'BulkCredit' test.out

#- 358 BulkDebit
samples/cli/sample-apps Platform bulkDebit \
    --namespace $AB_NAMESPACE \
    --body '[{"currencyCode": "hfkcBJL7WrbXknSm", "request": {"allowOverdraft": false, "amount": 69, "balanceOrigin": "IOS", "balanceSource": "ORDER_REVOCATION", "metadata": {"3djAmb6IXdXCdeok": {}, "c6D5cNq8rwKNNv3m": {}, "dHhySsNtrOxtM5qO": {}}, "reason": "Il6u3X1oVIiRLzwp"}, "userIds": ["gDYgfIAA7AOuaCDJ", "JdnNGM5136FNbNFl", "W9pxBEge4IcCFfGq"]}, {"currencyCode": "UnzcI7wgXMQ7aBM8", "request": {"allowOverdraft": false, "amount": 14, "balanceOrigin": "Xbox", "balanceSource": "DLC_REVOCATION", "metadata": {"huuJ7wvmHdqVY0KE": {}, "1CeSTac7MiSiWEMS": {}, "tdrdDyO37r6uSWnP": {}}, "reason": "EYMpJUGPgGdFXt7Q"}, "userIds": ["MZ5jFFt0mn7yQofP", "4Ih6leGQGTjlvMp7", "D4Z89aCJ1yVE0JN3"]}, {"currencyCode": "HKwdpPxNHOwxTgBV", "request": {"allowOverdraft": false, "amount": 10, "balanceOrigin": "Twitch", "balanceSource": "PAYMENT", "metadata": {"m3efKD13wh6wjEOr": {}, "dikn8rAMOgasMhEw": {}, "x9HwWAmBrj4jEB7G": {}}, "reason": "C8H2Y44QVh77lCyy"}, "userIds": ["MpSqkCAPZpnz0b7B", "UOGXMzCChibzMbE4", "2YOO1QX0etiPlA8y"]}]' \
    > test.out 2>&1
eval_tap $? 358 'BulkDebit' test.out

#- 359 GetWallet
eval_tap 0 359 'GetWallet # SKIP deprecated' test.out

#- 360 SyncOrders
samples/cli/sample-apps Platform syncOrders \
    --nextEvaluatedKey 'DHse37F41JUTM98u' \
    --end 'cawf8JGdk2s7RNVz' \
    --start 'QsDeDPQmTKq9evJn' \
    > test.out 2>&1
eval_tap $? 360 'SyncOrders' test.out

#- 361 TestAdyenConfig
samples/cli/sample-apps Platform testAdyenConfig \
    --sandbox 'false' \
    --body '{"allowedPaymentMethods": ["ekRhwnxS1CpbyzWJ", "BwOMHGZ3PqOFM1AC", "FYODXEaA6mcirDDt"], "apiKey": "Ry68j6xNSpBULZ9f", "authoriseAsCapture": true, "blockedPaymentMethods": ["baHK6zzmt3eVYdQe", "HkQVlxHZwV2oyLJa", "hCcdukO3MXbRIHTt"], "clientKey": "GHOTMoox51bgvp6l", "dropInSettings": "lfelJEikUBuRHSFi", "liveEndpointUrlPrefix": "7SGQg7X3G0kZVq4H", "merchantAccount": "iUkMg0nuoZU4Gt7i", "notificationHmacKey": "wRNVn3LCyHmnni6x", "notificationPassword": "1CfGWdFJJp69W67l", "notificationUsername": "bBDDAU74rshEIwlI", "returnUrl": "pkhymzlWJAjZ2vgA", "settings": "ArMCOt2eRI4gET0s"}' \
    > test.out 2>&1
eval_tap $? 361 'TestAdyenConfig' test.out

#- 362 TestAliPayConfig
samples/cli/sample-apps Platform testAliPayConfig \
    --sandbox 'true' \
    --body '{"appId": "31cLhjf5VELc1ura", "privateKey": "V5UqkXszVyfiVVY3", "publicKey": "TaDhDCRjgKzlmlaB", "returnUrl": "WUmxxCFOLwS0Pfex"}' \
    > test.out 2>&1
eval_tap $? 362 'TestAliPayConfig' test.out

#- 363 TestCheckoutConfig
samples/cli/sample-apps Platform testCheckoutConfig \
    --sandbox 'false' \
    --body '{"publicKey": "hpwRZVib2WM1J5Ra", "secretKey": "O4DWw11wNEVeDFGi"}' \
    > test.out 2>&1
eval_tap $? 363 'TestCheckoutConfig' test.out

#- 364 DebugMatchedPaymentMerchantConfig
samples/cli/sample-apps Platform debugMatchedPaymentMerchantConfig \
    --namespace 'O9kaZ0PNSHkxgHlu' \
    --region 'jEYsOouBRB60Diya' \
    > test.out 2>&1
eval_tap $? 364 'DebugMatchedPaymentMerchantConfig' test.out

#- 365 TestNeonPayConfig
samples/cli/sample-apps Platform testNeonPayConfig \
    --sandbox 'true' \
    --body '{"apiKey": "zWSrdxyVUpdRHWyL", "webhookSecretKey": "kvH3HEhh4hSBfy2u"}' \
    > test.out 2>&1
eval_tap $? 365 'TestNeonPayConfig' test.out

#- 366 TestPayPalConfig
samples/cli/sample-apps Platform testPayPalConfig \
    --sandbox 'false' \
    --body '{"clientID": "71MLFAt4b8Y8smwu", "clientSecret": "Zz1fY3dPBOamGSbi", "returnUrl": "aNpTJT3JYPMiXbIy", "webHookId": "cVMkTyWDAzlN2PyR"}' \
    > test.out 2>&1
eval_tap $? 366 'TestPayPalConfig' test.out

#- 367 TestStripeConfig
samples/cli/sample-apps Platform testStripeConfig \
    --sandbox 'false' \
    --body '{"allowedPaymentMethodTypes": ["WOUGNSzuIxJvzBRt", "vodAnY57GgOOVTUQ", "meCQ0Leivoa6roNv"], "publishableKey": "Hh3939MV6pv4i8K6", "secretKey": "ZC2mhJMEZ4hZpKOu", "webhookSecret": "FXETmlTi6fZwhrBI"}' \
    > test.out 2>&1
eval_tap $? 367 'TestStripeConfig' test.out

#- 368 TestWxPayConfig
samples/cli/sample-apps Platform testWxPayConfig \
    --body '{"appId": "Hkj0MwnWOxF0u9OX", "key": "s9qqKbwztLp4B0na", "mchid": "Sg6UIGL2gmp6AzhR", "returnUrl": "fKuA0YhFKqCQfDUy"}' \
    > test.out 2>&1
eval_tap $? 368 'TestWxPayConfig' test.out

#- 369 TestXsollaConfig
samples/cli/sample-apps Platform testXsollaConfig \
    --body '{"apiKey": "FOc1ath0Cn4G50YZ", "flowCompletionUrl": "V1I1CBYw4vrgXr3Z", "merchantId": 29, "projectId": 83, "projectSecretKey": "ym9rfNnsMWcHqWZe"}' \
    > test.out 2>&1
eval_tap $? 369 'TestXsollaConfig' test.out

#- 370 GetPaymentMerchantConfig1
samples/cli/sample-apps Platform getPaymentMerchantConfig1 \
    --id 'kInozg91rWVi8ZjG' \
    > test.out 2>&1
eval_tap $? 370 'GetPaymentMerchantConfig1' test.out

#- 371 UpdateAdyenConfig
samples/cli/sample-apps Platform updateAdyenConfig \
    --id 'MSYGcgIOfHcbVpxJ' \
    --sandbox 'false' \
    --validate 'true' \
    --body '{"allowedPaymentMethods": ["tz9LBmPaOV268Tcj", "aVyoSk0EGo8fuKpG", "7jX0yWsenVxwuaIu"], "apiKey": "s8PGkMtspPtPd0Ps", "authoriseAsCapture": true, "blockedPaymentMethods": ["WXu8cd3gk8XS2DUt", "MjgrbvMPj4rlJt8z", "vufRByzbtsGyqavx"], "clientKey": "1qLHL7BPierKALjS", "dropInSettings": "eO2TGuP9I7bPSdLW", "liveEndpointUrlPrefix": "oMPmNScmgRCABPVh", "merchantAccount": "uLjnUe3G9yv5WoAm", "notificationHmacKey": "zhP9ZA9khGY0RGKs", "notificationPassword": "x4gINRtAodzBzzix", "notificationUsername": "fWQCRY4MWEoBJNkz", "returnUrl": "6a4oyfrTwpQGVviB", "settings": "4dNOgEdkt6ch73D0"}' \
    > test.out 2>&1
eval_tap $? 371 'UpdateAdyenConfig' test.out

#- 372 TestAdyenConfigById
samples/cli/sample-apps Platform testAdyenConfigById \
    --id '2wpWEIUM8f86pWfY' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 372 'TestAdyenConfigById' test.out

#- 373 UpdateAliPayConfig
samples/cli/sample-apps Platform updateAliPayConfig \
    --id 'nxjksUJtVUqswnPF' \
    --sandbox 'false' \
    --validate 'false' \
    --body '{"appId": "btfg9fLdvpnU0cLZ", "privateKey": "pPB2bMbfIrOjeJXQ", "publicKey": "LvwWbLbIygmyKLTW", "returnUrl": "nrdSo2ifLe286eNO"}' \
    > test.out 2>&1
eval_tap $? 373 'UpdateAliPayConfig' test.out

#- 374 TestAliPayConfigById
samples/cli/sample-apps Platform testAliPayConfigById \
    --id 'fAdGE9FdHi78JxiU' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 374 'TestAliPayConfigById' test.out

#- 375 UpdateCheckoutConfig
samples/cli/sample-apps Platform updateCheckoutConfig \
    --id 'CxaV9tkpPtioHAPQ' \
    --sandbox 'false' \
    --validate 'true' \
    --body '{"publicKey": "6iEmzkUu3jWDtvkA", "secretKey": "GGDPObree4OF9ljR"}' \
    > test.out 2>&1
eval_tap $? 375 'UpdateCheckoutConfig' test.out

#- 376 TestCheckoutConfigById
samples/cli/sample-apps Platform testCheckoutConfigById \
    --id '7OhSMIwlpIJJBKRB' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 376 'TestCheckoutConfigById' test.out

#- 377 UpdateNeonPayConfig
samples/cli/sample-apps Platform updateNeonPayConfig \
    --id 'aLD003E3qDRJ45ub' \
    --sandbox 'true' \
    --validate 'false' \
    --body '{"apiKey": "mfEDCje4ITPAPPlB", "webhookSecretKey": "wu6jvPU7NMbskmZj"}' \
    > test.out 2>&1
eval_tap $? 377 'UpdateNeonPayConfig' test.out

#- 378 TestNeonPayConfigById
samples/cli/sample-apps Platform testNeonPayConfigById \
    --id 'sAfKzMNYt1amuWs4' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 378 'TestNeonPayConfigById' test.out

#- 379 UpdatePayPalConfig
samples/cli/sample-apps Platform updatePayPalConfig \
    --id 'd3X81l3kCVJ7AQqb' \
    --sandbox 'true' \
    --validate 'true' \
    --body '{"clientID": "quoiTkcrOza0fJrQ", "clientSecret": "pXTsfmUmGeQWGzJ6", "returnUrl": "IRyeTY0OwIpL4ywG", "webHookId": "pVptwRwoE0DawcA9"}' \
    > test.out 2>&1
eval_tap $? 379 'UpdatePayPalConfig' test.out

#- 380 TestPayPalConfigById
samples/cli/sample-apps Platform testPayPalConfigById \
    --id '0xCgvIA3ADW1NylT' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 380 'TestPayPalConfigById' test.out

#- 381 UpdateStripeConfig
samples/cli/sample-apps Platform updateStripeConfig \
    --id 'SpJXEtbPL7Fyrw86' \
    --sandbox 'true' \
    --validate 'false' \
    --body '{"allowedPaymentMethodTypes": ["lg7YslrkELXp8aW5", "azrfwz3lfwGcc9jy", "8YqbGoviuqPprXNS"], "publishableKey": "jOGe9gwTrqablc2l", "secretKey": "hrSdbYuWP5quReyK", "webhookSecret": "CmklCZ2Jl5V80pPs"}' \
    > test.out 2>&1
eval_tap $? 381 'UpdateStripeConfig' test.out

#- 382 TestStripeConfigById
samples/cli/sample-apps Platform testStripeConfigById \
    --id 'u8hDvhBFI0SAlfyV' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 382 'TestStripeConfigById' test.out

#- 383 UpdateWxPayConfig
samples/cli/sample-apps Platform updateWxPayConfig \
    --id 'rN6sg8HVRCqlEkPq' \
    --validate 'false' \
    --body '{"appId": "ce3KmsB29CumJFyf", "key": "jxDxwwVwiU0xgqFg", "mchid": "oBHRItiomw36oXKh", "returnUrl": "xiS2GFRgRCJ14pJJ"}' \
    > test.out 2>&1
eval_tap $? 383 'UpdateWxPayConfig' test.out

#- 384 UpdateWxPayConfigCert
samples/cli/sample-apps Platform updateWxPayConfigCert \
    --id 'b0hCllxJauOeQi3h' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 384 'UpdateWxPayConfigCert' test.out

#- 385 TestWxPayConfigById
samples/cli/sample-apps Platform testWxPayConfigById \
    --id 'aLOrWttVff6DLnre' \
    > test.out 2>&1
eval_tap $? 385 'TestWxPayConfigById' test.out

#- 386 UpdateXsollaConfig
samples/cli/sample-apps Platform updateXsollaConfig \
    --id 'GheURgU8vfi1taZO' \
    --validate 'true' \
    --body '{"apiKey": "TJpNToECdXmhCYWZ", "flowCompletionUrl": "oVD9IkF2Ia21Zeb4", "merchantId": 35, "projectId": 9, "projectSecretKey": "1qtatRg3YPUP01zm"}' \
    > test.out 2>&1
eval_tap $? 386 'UpdateXsollaConfig' test.out

#- 387 TestXsollaConfigById
samples/cli/sample-apps Platform testXsollaConfigById \
    --id 'Y7oHLICcbknuh7O4' \
    > test.out 2>&1
eval_tap $? 387 'TestXsollaConfigById' test.out

#- 388 UpdateXsollaUIConfig
samples/cli/sample-apps Platform updateXsollaUIConfig \
    --id 'seAE1Piyh866oPjN' \
    --body '{"device": "MOBILE", "showCloseButton": true, "size": "SMALL", "theme": "DARK"}' \
    > test.out 2>&1
eval_tap $? 388 'UpdateXsollaUIConfig' test.out

#- 389 QueryPaymentProviderConfig
samples/cli/sample-apps Platform queryPaymentProviderConfig \
    --limit '37' \
    --namespace '6XcJmpFuSEB6RhZJ' \
    --offset '63' \
    --region 'KG1va8WxqQVtvg25' \
    > test.out 2>&1
eval_tap $? 389 'QueryPaymentProviderConfig' test.out

#- 390 CreatePaymentProviderConfig
samples/cli/sample-apps Platform createPaymentProviderConfig \
    --body '{"aggregate": "ADYEN", "namespace": "S0PR59AOgaQht4QH", "region": "YRkFXAkuB9MUcSjs", "sandboxTaxJarApiToken": "eB12dJG8ownoxpTj", "specials": ["WXPAY", "ADYEN", "ALIPAY"], "taxJarApiToken": "6QG0ysNMPmQ5e2Zs", "taxJarEnabled": false, "useGlobalTaxJarApiToken": true}' \
    > test.out 2>&1
eval_tap $? 390 'CreatePaymentProviderConfig' test.out

#- 391 GetAggregatePaymentProviders
samples/cli/sample-apps Platform getAggregatePaymentProviders \
    > test.out 2>&1
eval_tap $? 391 'GetAggregatePaymentProviders' test.out

#- 392 DebugMatchedPaymentProviderConfig
samples/cli/sample-apps Platform debugMatchedPaymentProviderConfig \
    --namespace 'oWZIk2xUfgkJuxKj' \
    --region '4HngKbK9wkUqHZiV' \
    > test.out 2>&1
eval_tap $? 392 'DebugMatchedPaymentProviderConfig' test.out

#- 393 GetSpecialPaymentProviders
samples/cli/sample-apps Platform getSpecialPaymentProviders \
    > test.out 2>&1
eval_tap $? 393 'GetSpecialPaymentProviders' test.out

#- 394 UpdatePaymentProviderConfig
samples/cli/sample-apps Platform updatePaymentProviderConfig \
    --id 'W4pgIoOFNBIBI9eZ' \
    --body '{"aggregate": "STRIPE", "namespace": "FOfY1ImLxEbYd8Y4", "region": "2y5lKioIIhsbgoEB", "sandboxTaxJarApiToken": "0iUqVqxiaSGgkpdc", "specials": ["STRIPE", "XSOLLA", "WALLET"], "taxJarApiToken": "D3IyKRdtjYLo2AGN", "taxJarEnabled": true, "useGlobalTaxJarApiToken": false}' \
    > test.out 2>&1
eval_tap $? 394 'UpdatePaymentProviderConfig' test.out

#- 395 DeletePaymentProviderConfig
samples/cli/sample-apps Platform deletePaymentProviderConfig \
    --id '8kVm6ig3TwwIKLjZ' \
    > test.out 2>&1
eval_tap $? 395 'DeletePaymentProviderConfig' test.out

#- 396 GetPaymentTaxConfig
samples/cli/sample-apps Platform getPaymentTaxConfig \
    > test.out 2>&1
eval_tap $? 396 'GetPaymentTaxConfig' test.out

#- 397 UpdatePaymentTaxConfig
samples/cli/sample-apps Platform updatePaymentTaxConfig \
    --body '{"sandboxTaxJarApiToken": "5rIDCjGKxPIYRkfN", "taxJarApiToken": "i9tJtleazGwLiQ9s", "taxJarEnabled": true, "taxJarProductCodesMapping": {"Zqj8p6CwEHr7Z84L": "HEEmv9qZPfhxxUNw", "5XUu1bf9HupfkR7z": "ItGA1TuBa60bUsAj", "OFXY40vuj7yFLXTj": "Iettk9xq4xtdeayk"}}' \
    > test.out 2>&1
eval_tap $? 397 'UpdatePaymentTaxConfig' test.out

#- 398 SyncPaymentOrders
samples/cli/sample-apps Platform syncPaymentOrders \
    --nextEvaluatedKey 'U9p8opRjBPOhEP9K' \
    --end 'Cd97h49l4FjofrhR' \
    --start 'rrDNLRO6bfqwb4YW' \
    > test.out 2>&1
eval_tap $? 398 'SyncPaymentOrders' test.out

#- 399 PublicGetRootCategories
samples/cli/sample-apps Platform publicGetRootCategories \
    --namespace $AB_NAMESPACE \
    --language 'gZncbzQy2EEy0sro' \
    --storeId '6LMwwbBBmxol88mz' \
    > test.out 2>&1
eval_tap $? 399 'PublicGetRootCategories' test.out

#- 400 DownloadCategories
samples/cli/sample-apps Platform downloadCategories \
    --namespace $AB_NAMESPACE \
    --language 'FihFfavl9twTU4VH' \
    --storeId 'VWRsbK4tqMwtvtTA' \
    > test.out 2>&1
eval_tap $? 400 'DownloadCategories' test.out

#- 401 PublicGetCategory
samples/cli/sample-apps Platform publicGetCategory \
    --categoryPath 'xRH1F1assdrBsG9w' \
    --namespace $AB_NAMESPACE \
    --language 'AX83PABqatiLuHpj' \
    --storeId 'KH3pscsZvDgHLH2J' \
    > test.out 2>&1
eval_tap $? 401 'PublicGetCategory' test.out

#- 402 PublicGetChildCategories
samples/cli/sample-apps Platform publicGetChildCategories \
    --categoryPath 'vCjzQW9ghI9kyUWl' \
    --namespace $AB_NAMESPACE \
    --language 'ln7yhG4maaBz8WiW' \
    --storeId 'oSo0xjRH1b2N43H6' \
    > test.out 2>&1
eval_tap $? 402 'PublicGetChildCategories' test.out

#- 403 PublicGetDescendantCategories
samples/cli/sample-apps Platform publicGetDescendantCategories \
    --categoryPath 'JPpfzjJkdN9LTRdT' \
    --namespace $AB_NAMESPACE \
    --language 'anbNYcMRmo3yP0T4' \
    --storeId 'Z1WDkxke6FacNBKx' \
    > test.out 2>&1
eval_tap $? 403 'PublicGetDescendantCategories' test.out

#- 404 PublicListCurrencies
samples/cli/sample-apps Platform publicListCurrencies \
    --namespace $AB_NAMESPACE \
    --currencyType 'VIRTUAL' \
    > test.out 2>&1
eval_tap $? 404 'PublicListCurrencies' test.out

#- 405 GeDLCDurableRewardShortMap
samples/cli/sample-apps Platform geDLCDurableRewardShortMap \
    --namespace $AB_NAMESPACE \
    --dlcType 'EPICGAMES' \
    > test.out 2>&1
eval_tap $? 405 'GeDLCDurableRewardShortMap' test.out

#- 406 GetAppleConfigVersion
samples/cli/sample-apps Platform getAppleConfigVersion \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 406 'GetAppleConfigVersion' test.out

#- 407 GetIAPItemMapping
samples/cli/sample-apps Platform getIAPItemMapping \
    --namespace $AB_NAMESPACE \
    --platform 'STEAM' \
    > test.out 2>&1
eval_tap $? 407 'GetIAPItemMapping' test.out

#- 408 PublicGetItemByAppId
samples/cli/sample-apps Platform publicGetItemByAppId \
    --namespace $AB_NAMESPACE \
    --language 'nBdC5Ii9lrYCopUm' \
    --region '8tdQGcMCau2nWNdk' \
    --storeId '0DQjUZL5VA2NkPUJ' \
    --appId 'jkZ2yTQeyxNsTY6Y' \
    > test.out 2>&1
eval_tap $? 408 'PublicGetItemByAppId' test.out

#- 409 PublicQueryItems
samples/cli/sample-apps Platform publicQueryItems \
    --namespace $AB_NAMESPACE \
    --appType 'DEMO' \
    --autoCalcEstimatedPrice 'true' \
    --baseAppId '7ejBd5MI5qmQxenp' \
    --categoryPath 'd3aaZqAwPTwvvABn' \
    --features 'rxtK52XwZCc8HkJH' \
    --includeSubCategoryItem 'false' \
    --itemType 'INGAMEITEM' \
    --language 'CGtYypqzgBfjE9VS' \
    --limit '57' \
    --offset '57' \
    --region '65Tyx5Z1UKuaUXZR' \
    --sortBy '["createdAt:asc", "displayOrder:asc", "name:asc"]' \
    --storeId 'q4XHBbSS0NOX1n2k' \
    --tags 'JKzJE6FnIsm7ArqY' \
    > test.out 2>&1
eval_tap $? 409 'PublicQueryItems' test.out

#- 410 PublicGetItemBySku
samples/cli/sample-apps Platform publicGetItemBySku \
    --namespace $AB_NAMESPACE \
    --autoCalcEstimatedPrice 'true' \
    --language 'GFoqxpLXbJZ7l2uM' \
    --region '0VtV6b5F8Re03KlD' \
    --storeId 'W8ceRCxSvTUh0i8Y' \
    --sku 'ybjt4wLEkTjwsyAn' \
    > test.out 2>&1
eval_tap $? 410 'PublicGetItemBySku' test.out

#- 411 PublicGetEstimatedPrice
samples/cli/sample-apps Platform publicGetEstimatedPrice \
    --namespace $AB_NAMESPACE \
    --region 'sgNrt9wyTeObarpa' \
    --storeId 'BxI8x1AASGL93i4L' \
    --itemIds 'RcbkNIF9mHv9BIvH' \
    > test.out 2>&1
eval_tap $? 411 'PublicGetEstimatedPrice' test.out

#- 412 PublicBulkGetItems
samples/cli/sample-apps Platform publicBulkGetItems \
    --namespace $AB_NAMESPACE \
    --autoCalcEstimatedPrice 'false' \
    --language 'Xemf99m8vkKA6Owj' \
    --region 'puybQmKcH4sTYTWq' \
    --storeId 'Tr4UF58RTsPK0OuG' \
    --itemIds 'NX6O2VshDqbXklgO' \
    > test.out 2>&1
eval_tap $? 412 'PublicBulkGetItems' test.out

#- 413 PublicValidateItemPurchaseCondition
samples/cli/sample-apps Platform publicValidateItemPurchaseCondition \
    --namespace $AB_NAMESPACE \
    --body '{"itemIds": ["Wg9hWh98OHHTGFkV", "U7QplE6HYYHDp9MB", "VFvQnoiEnddtCEjR"]}' \
    > test.out 2>&1
eval_tap $? 413 'PublicValidateItemPurchaseCondition' test.out

#- 414 PublicSearchItems
samples/cli/sample-apps Platform publicSearchItems \
    --namespace $AB_NAMESPACE \
    --autoCalcEstimatedPrice 'true' \
    --itemType 'EXTENSION' \
    --limit '49' \
    --offset '16' \
    --region 'EPBPDD5fc7dFSGM2' \
    --storeId 'ny2WCpa6BETBQYi2' \
    --keyword 'zS7Oo61QMAsUW1AL' \
    --language 'WsZpsPElmQqldVJ7' \
    > test.out 2>&1
eval_tap $? 414 'PublicSearchItems' test.out

#- 415 PublicGetApp
samples/cli/sample-apps Platform publicGetApp \
    --itemId 'XqF7K34CfLd0vUUA' \
    --namespace $AB_NAMESPACE \
    --language '9V3ngRl0cerXPums' \
    --region 'uIiswU0h90Tuq8pe' \
    --storeId 'HxCwt572cdoaDxdN' \
    > test.out 2>&1
eval_tap $? 415 'PublicGetApp' test.out

#- 416 PublicGetItemDynamicData
samples/cli/sample-apps Platform publicGetItemDynamicData \
    --itemId 'mJIkeQQamtuoYyv0' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 416 'PublicGetItemDynamicData' test.out

#- 417 PublicGetItem
samples/cli/sample-apps Platform publicGetItem \
    --itemId 'gXvnpzzXJc9WMEdD' \
    --namespace $AB_NAMESPACE \
    --autoCalcEstimatedPrice 'true' \
    --language 'r1JyxZfR0ezHrYWD' \
    --populateBundle 'false' \
    --region 'k2dzkdbkWs6DAvJ4' \
    --storeId 'nnFzUG1xM0xZtMlz' \
    > test.out 2>&1
eval_tap $? 417 'PublicGetItem' test.out

#- 418 GetPaymentCustomization
eval_tap 0 418 'GetPaymentCustomization # SKIP deprecated' test.out

#- 419 PublicGetPaymentUrl
samples/cli/sample-apps Platform publicGetPaymentUrl \
    --namespace $AB_NAMESPACE \
    --body '{"neonPayConfig": {"cancelUrl": "tDPyLCZWJXHi7MwM", "successUrl": "f01DCAvz5h2Pjljq"}, "paymentOrderNo": "nziFS73KPDwF2bkQ", "paymentProvider": "STRIPE", "returnUrl": "XV4zLyKTRG6wx74S", "ui": "MGMKqPkib536LuTW", "zipCode": "FZwSjogpcVqG7NLg"}' \
    > test.out 2>&1
eval_tap $? 419 'PublicGetPaymentUrl' test.out

#- 420 PublicGetPaymentMethods
samples/cli/sample-apps Platform publicGetPaymentMethods \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'GOx2xVPmo4J78wIk' \
    > test.out 2>&1
eval_tap $? 420 'PublicGetPaymentMethods' test.out

#- 421 PublicGetUnpaidPaymentOrder
samples/cli/sample-apps Platform publicGetUnpaidPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'Ec10VtIghDo5iazs' \
    > test.out 2>&1
eval_tap $? 421 'PublicGetUnpaidPaymentOrder' test.out

#- 422 Pay
samples/cli/sample-apps Platform pay \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'TRyg7CuOdXUtoXGG' \
    --paymentProvider 'PAYPAL' \
    --zipCode 'aaWexWwEJFJNPJJH' \
    --body '{"token": "cjiEan5Uo6ME6y8Q"}' \
    > test.out 2>&1
eval_tap $? 422 'Pay' test.out

#- 423 PublicCheckPaymentOrderPaidStatus
samples/cli/sample-apps Platform publicCheckPaymentOrderPaidStatus \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'zI2SfHvRR6SPxHuf' \
    > test.out 2>&1
eval_tap $? 423 'PublicCheckPaymentOrderPaidStatus' test.out

#- 424 GetPaymentPublicConfig
samples/cli/sample-apps Platform getPaymentPublicConfig \
    --namespace $AB_NAMESPACE \
    --sandbox 'false' \
    --paymentProvider 'PAYPAL' \
    --region 'uLErxwt2kkOrZ2zW' \
    > test.out 2>&1
eval_tap $? 424 'GetPaymentPublicConfig' test.out

#- 425 PublicGetQRCode
samples/cli/sample-apps Platform publicGetQRCode \
    --namespace $AB_NAMESPACE \
    --code 'EkKDaGhisOTbZAU9' \
    > test.out 2>&1
eval_tap $? 425 'PublicGetQRCode' test.out

#- 426 PublicNormalizePaymentReturnUrl
samples/cli/sample-apps Platform publicNormalizePaymentReturnUrl \
    --namespace $AB_NAMESPACE \
    --payerID '7vv5fdtO8XCwlgSq' \
    --foreinginvoice 'peHN7uvrmqS5xTKH' \
    --invoiceId 'Zw4TMgwRz7FwyNUS' \
    --payload 'gSZtAtGo3Mnmo7sR' \
    --redirectResult 'pf7hFDmflWRtBpMn' \
    --resultCode '8LH2DNR4QFM8fX65' \
    --sessionId 'FWZCaOhw5RitDQyh' \
    --status '5kzKiu0pSoYeXCFr' \
    --token 'ABePxVTQ8OITWwVL' \
    --type 'fpeWMXx5Zy1lKsXb' \
    --userId 'A1apX0jInUbqDo7t' \
    --orderNo 'yjZFxKUqSVTal3ys' \
    --paymentOrderNo 'OO1dFytTHI1d5imY' \
    --paymentProvider 'NEONPAY' \
    --returnUrl 'hZTLJGUo3Ju0qfIL' \
    > test.out 2>&1
eval_tap $? 426 'PublicNormalizePaymentReturnUrl' test.out

#- 427 GetPaymentTaxValue
samples/cli/sample-apps Platform getPaymentTaxValue \
    --namespace $AB_NAMESPACE \
    --zipCode 'bEwbMZ6paYZkWUsI' \
    --paymentOrderNo 'YPchZXblBm2QiIyb' \
    --paymentProvider 'STRIPE' \
    > test.out 2>&1
eval_tap $? 427 'GetPaymentTaxValue' test.out

#- 428 GetRewardByCode
samples/cli/sample-apps Platform getRewardByCode \
    --namespace $AB_NAMESPACE \
    --rewardCode 'r4wQIORx4rUkKZYs' \
    > test.out 2>&1
eval_tap $? 428 'GetRewardByCode' test.out

#- 429 QueryRewards1
samples/cli/sample-apps Platform queryRewards1 \
    --namespace $AB_NAMESPACE \
    --eventTopic 'wxEQ9dF4iehnPtDm' \
    --limit '64' \
    --offset '88' \
    --sortBy '["namespace:asc", "namespace:desc"]' \
    > test.out 2>&1
eval_tap $? 429 'QueryRewards1' test.out

#- 430 GetReward1
samples/cli/sample-apps Platform getReward1 \
    --namespace $AB_NAMESPACE \
    --rewardId 'BzmlWf0i4Npbv5ec' \
    > test.out 2>&1
eval_tap $? 430 'GetReward1' test.out

#- 431 PublicListStores
samples/cli/sample-apps Platform publicListStores \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 431 'PublicListStores' test.out

#- 432 PublicExistsAnyMyActiveEntitlement
samples/cli/sample-apps Platform publicExistsAnyMyActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --appIds '["mjSeFujbNTgVyCQN", "0Hno6AiDwNXwINtg", "g1zVxlMAqEuluNf3"]' \
    --itemIds '["JA87i9d4SqA2iS1T", "Y0lTqfT3XUqSITHt", "ka5SCHBAS2noEATd"]' \
    --skus '["fIDiFPc3irCwkobK", "xwCHBzYatvHwH7oW", "o4N0JRcyqK0BwRit"]' \
    > test.out 2>&1
eval_tap $? 432 'PublicExistsAnyMyActiveEntitlement' test.out

#- 433 PublicGetMyAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform publicGetMyAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --appId '9tPq1PZTxRYHOJE6' \
    > test.out 2>&1
eval_tap $? 433 'PublicGetMyAppEntitlementOwnershipByAppId' test.out

#- 434 PublicGetMyEntitlementOwnershipByItemId
samples/cli/sample-apps Platform publicGetMyEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --entitlementClazz 'OPTIONBOX' \
    --itemId 'MRHFB9zgY78b4wWd' \
    > test.out 2>&1
eval_tap $? 434 'PublicGetMyEntitlementOwnershipByItemId' test.out

#- 435 PublicGetMyEntitlementOwnershipBySku
samples/cli/sample-apps Platform publicGetMyEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --entitlementClazz 'CODE' \
    --sku 'JqyVdugZwE1I66ib' \
    > test.out 2>&1
eval_tap $? 435 'PublicGetMyEntitlementOwnershipBySku' test.out

#- 436 PublicGetEntitlementOwnershipToken
samples/cli/sample-apps Platform publicGetEntitlementOwnershipToken \
    --namespace $AB_NAMESPACE \
    --appIds '["VXhPwDzxDi351vIh", "CdXUP19Ig9wIWNqJ", "V8OhajoHBapj1g99"]' \
    --itemIds '["uHAoTakFpqa3MowU", "XBSZ3HAFoPIJetcs", "5FpbuDNLHOydrl2Z"]' \
    --skus '["aClLvGOZEerMDXxa", "I7LZQxQ6ksslfWy3", "nBgqyBijxB42FqD6"]' \
    > test.out 2>&1
eval_tap $? 436 'PublicGetEntitlementOwnershipToken' test.out

#- 437 SyncTwitchDropsEntitlement
samples/cli/sample-apps Platform syncTwitchDropsEntitlement \
    --namespace $AB_NAMESPACE \
    --body '{"gameId": "i5Xkcrfvmi9PEynI", "language": "Ssr_iIpL_923", "region": "x7LJjRu9UI4aHeDR"}' \
    > test.out 2>&1
eval_tap $? 437 'SyncTwitchDropsEntitlement' test.out

#- 438 PublicGetMyWallet
samples/cli/sample-apps Platform publicGetMyWallet \
    --currencyCode '7tx7LD6XFLdHKsIC' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 438 'PublicGetMyWallet' test.out

#- 439 SyncEpicGameDLC
samples/cli/sample-apps Platform syncEpicGameDLC \
    --namespace $AB_NAMESPACE \
    --userId 'gro4bu98c0KuHMOe' \
    --body '{"epicGamesJwtToken": "3LuDmq3K5Pi3TGT1"}' \
    > test.out 2>&1
eval_tap $? 439 'SyncEpicGameDLC' test.out

#- 440 SyncOculusDLC
samples/cli/sample-apps Platform syncOculusDLC \
    --namespace $AB_NAMESPACE \
    --userId '7hvpynq8CwVYEpnk' \
    > test.out 2>&1
eval_tap $? 440 'SyncOculusDLC' test.out

#- 441 PublicSyncPsnDlcInventory
samples/cli/sample-apps Platform publicSyncPsnDlcInventory \
    --namespace $AB_NAMESPACE \
    --userId 'VD5uvDLelMvPzqyE' \
    --body '{"serviceLabel": 65}' \
    > test.out 2>&1
eval_tap $? 441 'PublicSyncPsnDlcInventory' test.out

#- 442 PublicSyncPsnDlcInventoryWithMultipleServiceLabels
samples/cli/sample-apps Platform publicSyncPsnDlcInventoryWithMultipleServiceLabels \
    --namespace $AB_NAMESPACE \
    --userId 'FHYjK8S2eqkk8YGZ' \
    --body '{"serviceLabels": [16, 9, 64]}' \
    > test.out 2>&1
eval_tap $? 442 'PublicSyncPsnDlcInventoryWithMultipleServiceLabels' test.out

#- 443 SyncSteamDLC
samples/cli/sample-apps Platform syncSteamDLC \
    --namespace $AB_NAMESPACE \
    --userId 'JZK0rV0wnLkDlBH3' \
    --body '{"appId": "MqHYD0U40NiOGCgZ", "steamId": "itfQx5oDHpXroFMe"}' \
    > test.out 2>&1
eval_tap $? 443 'SyncSteamDLC' test.out

#- 444 SyncXboxDLC
samples/cli/sample-apps Platform syncXboxDLC \
    --namespace $AB_NAMESPACE \
    --userId '6Kxz9ts7thUXcLo3' \
    --body '{"xstsToken": "jPh5ixz5ilUQFLLI"}' \
    > test.out 2>&1
eval_tap $? 444 'SyncXboxDLC' test.out

#- 445 PublicQueryUserEntitlements
samples/cli/sample-apps Platform publicQueryUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'FxShpi3dYw0WvFKG' \
    --appType 'DLC' \
    --entitlementClazz 'LOOTBOX' \
    --entitlementName 'evBzw2gOAPKa5sPD' \
    --features '["MTs3qB7Dw6XlxBFC", "r6OsN0oW9MP9m44l", "MFflKLx5EXZVpVwB"]' \
    --itemId '["q9nt07XteRC6pasW", "a6QXRvWIYf0QUKyp", "DAN2cTJNJnPl3vkB"]' \
    --limit '90' \
    --offset '94' \
    > test.out 2>&1
eval_tap $? 445 'PublicQueryUserEntitlements' test.out

#- 446 PublicGetUserAppEntitlementByAppId
samples/cli/sample-apps Platform publicGetUserAppEntitlementByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'd7Kko3gMlhcXtdmK' \
    --appId 'u0Q1hbvq4zO15HYd' \
    > test.out 2>&1
eval_tap $? 446 'PublicGetUserAppEntitlementByAppId' test.out

#- 447 PublicQueryUserEntitlementsByAppType
samples/cli/sample-apps Platform publicQueryUserEntitlementsByAppType \
    --namespace $AB_NAMESPACE \
    --userId 'fRraBjTU1ICO5SGq' \
    --limit '68' \
    --offset '32' \
    --appType 'DEMO' \
    > test.out 2>&1
eval_tap $? 447 'PublicQueryUserEntitlementsByAppType' test.out

#- 448 PublicGetUserEntitlementsByIds
samples/cli/sample-apps Platform publicGetUserEntitlementsByIds \
    --namespace $AB_NAMESPACE \
    --userId 'MNxYbmbdDPFVmecS' \
    --availablePlatformOnly 'true' \
    --ids '["kbETnvV0umbTVas9", "gdrfkKafPQvxs1f4", "1zguxfd1WwkAsXdR"]' \
    > test.out 2>&1
eval_tap $? 448 'PublicGetUserEntitlementsByIds' test.out

#- 449 PublicGetUserEntitlementByItemId
eval_tap 0 449 'PublicGetUserEntitlementByItemId # SKIP deprecated' test.out

#- 450 PublicGetUserEntitlementBySku
eval_tap 0 450 'PublicGetUserEntitlementBySku # SKIP deprecated' test.out

#- 451 PublicUserEntitlementHistory
samples/cli/sample-apps Platform publicUserEntitlementHistory \
    --namespace $AB_NAMESPACE \
    --userId 'fTfUY8sJfZAXbXyB' \
    --endDate 'UPycNvEPwhidDiep' \
    --entitlementClazz 'LOOTBOX' \
    --limit '27' \
    --offset '39' \
    --startDate 'MsdUBv50JDJtNtFD' \
    > test.out 2>&1
eval_tap $? 451 'PublicUserEntitlementHistory' test.out

#- 452 PublicExistsAnyUserActiveEntitlement
samples/cli/sample-apps Platform publicExistsAnyUserActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'XUMCwzEfrfzKynP1' \
    --appIds '["1KecQBui10NDTx9j", "WApLCYPUGubTn7DB", "ylhMPuJH6CVkpCP3"]' \
    --itemIds '["qbJKtniwOqP6hIAn", "CE8o51ztERo3orlr", "lEIfnIHOeoGBS0mm"]' \
    --skus '["QbH2SdHobxop9kQi", "LW9YFueCdND2tgpv", "hW2r8EjpgCGycp6A"]' \
    > test.out 2>&1
eval_tap $? 452 'PublicExistsAnyUserActiveEntitlement' test.out

#- 453 PublicGetUserAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform publicGetUserAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'IgdEFthE3DryTdxJ' \
    --appId 'dAIhChY2NuYkPcjo' \
    > test.out 2>&1
eval_tap $? 453 'PublicGetUserAppEntitlementOwnershipByAppId' test.out

#- 454 PublicGetUserEntitlementOwnershipByItemId
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --userId '0KuCawAKEAWyKRJd' \
    --entitlementClazz 'CODE' \
    --itemId '2pnHHlFCR6dBdqVL' \
    > test.out 2>&1
eval_tap $? 454 'PublicGetUserEntitlementOwnershipByItemId' test.out

#- 455 PublicGetUserEntitlementOwnershipByItemIds
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'fDv23kaIzogSceSY' \
    --ids '["obCAuo9KSWG1BmIS", "LxNLA6KDpbLAO0lQ", "yAwfFWQzoN5j4xMw"]' \
    > test.out 2>&1
eval_tap $? 455 'PublicGetUserEntitlementOwnershipByItemIds' test.out

#- 456 PublicGetUserEntitlementOwnershipBySku
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --userId 'axeQXarSlgLvG5x7' \
    --entitlementClazz 'LOOTBOX' \
    --sku 'PFYeoHfwiuWwESHZ' \
    > test.out 2>&1
eval_tap $? 456 'PublicGetUserEntitlementOwnershipBySku' test.out

#- 457 PublicGetUserEntitlement
samples/cli/sample-apps Platform publicGetUserEntitlement \
    --entitlementId '3w5tbqpUDGyfgJNB' \
    --namespace $AB_NAMESPACE \
    --userId 'on4H8DBu3Kxgba1b' \
    > test.out 2>&1
eval_tap $? 457 'PublicGetUserEntitlement' test.out

#- 458 PublicConsumeUserEntitlement
samples/cli/sample-apps Platform publicConsumeUserEntitlement \
    --entitlementId 'BWkmG4PtOrx2o9Xt' \
    --namespace $AB_NAMESPACE \
    --userId '3vjJVaVx1pxrQl7b' \
    --body '{"metadata": {"operationSource": "INVENTORY"}, "options": ["N3V11tGuTJWJIPUg", "HcMHbeIQs8drkkWl", "csUea7uSWz0R6Zsg"], "requestId": "TZMxBluh0xWP6Amr", "useCount": 31}' \
    > test.out 2>&1
eval_tap $? 458 'PublicConsumeUserEntitlement' test.out

#- 459 PublicSellUserEntitlement
samples/cli/sample-apps Platform publicSellUserEntitlement \
    --entitlementId 'vvq5S5dRpDh4r4Z6' \
    --namespace $AB_NAMESPACE \
    --userId 'dSgyIpPojKcJsLyX' \
    --body '{"requestId": "ytBmklVfy0SEL1kB", "useCount": 20}' \
    > test.out 2>&1
eval_tap $? 459 'PublicSellUserEntitlement' test.out

#- 460 PublicSplitUserEntitlement
samples/cli/sample-apps Platform publicSplitUserEntitlement \
    --entitlementId 'BV1JQWwDsFP55Jpk' \
    --namespace $AB_NAMESPACE \
    --userId 'GqW5ZAS4ng3wOb33' \
    --body '{"metadata": {"operationSource": "INVENTORY"}, "useCount": 38}' \
    > test.out 2>&1
eval_tap $? 460 'PublicSplitUserEntitlement' test.out

#- 461 PublicTransferUserEntitlement
samples/cli/sample-apps Platform publicTransferUserEntitlement \
    --entitlementId 'SMAPy4gDbbpk5Eo5' \
    --namespace $AB_NAMESPACE \
    --userId 'YZ5uqatZHiggFngA' \
    --body '{"entitlementId": "dCvUy9fbUDSDx9wf", "metadata": {"operationSource": "INVENTORY"}, "useCount": 63}' \
    > test.out 2>&1
eval_tap $? 461 'PublicTransferUserEntitlement' test.out

#- 462 PublicRedeemCode
samples/cli/sample-apps Platform publicRedeemCode \
    --namespace $AB_NAMESPACE \
    --userId 'NWL3piHLHJXvpvGE' \
    --body '{"code": "oqj7uqQpnxvLkByY", "language": "qooU", "region": "9TiADpzHR2Vkc7jm"}' \
    > test.out 2>&1
eval_tap $? 462 'PublicRedeemCode' test.out

#- 463 PublicFulfillAppleIAPItem
samples/cli/sample-apps Platform publicFulfillAppleIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'OMkBfNvZbFqfuB2G' \
    --body '{"excludeOldTransactions": false, "language": "SqJE", "productId": "hIAVNcTbqOiPtsPL", "receiptData": "35nexikUPZzzldVr", "region": "NM014cHzUip1175D", "transactionId": "HF3GGwLaJoRNPG8a"}' \
    > test.out 2>&1
eval_tap $? 463 'PublicFulfillAppleIAPItem' test.out

#- 464 SyncEpicGamesInventory
samples/cli/sample-apps Platform syncEpicGamesInventory \
    --namespace $AB_NAMESPACE \
    --userId 'Yan50r9Iz8EuW5nr' \
    --body '{"epicGamesJwtToken": "G0oBNnfSgSlT36fG"}' \
    > test.out 2>&1
eval_tap $? 464 'SyncEpicGamesInventory' test.out

#- 465 PublicFulfillGoogleIAPItem
samples/cli/sample-apps Platform publicFulfillGoogleIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'UfXxNdknq8SdeJoC' \
    --body '{"autoAck": true, "autoConsume": false, "language": "hkKF-mrWz_fa", "orderId": "4QndUGGtkFDS6edE", "packageName": "tYNAJ16OBFa3kdrL", "productId": "KadFvbD72tAxmWtn", "purchaseTime": 61, "purchaseToken": "7xMErpzC9N9TSlEy", "region": "QZasguNtw1Z6duMY", "subscriptionPurchase": false}' \
    > test.out 2>&1
eval_tap $? 465 'PublicFulfillGoogleIAPItem' test.out

#- 466 SyncOculusSubscriptions
samples/cli/sample-apps Platform syncOculusSubscriptions \
    --namespace $AB_NAMESPACE \
    --userId 'fkvvWx5S8mb9FDEZ' \
    --body '{"skus": ["D6HEjdXdVAb5NqaD", "ZWw8zchumgjPJ1Oz", "wsa1ayCiLigqH4Eg"]}' \
    > test.out 2>&1
eval_tap $? 466 'SyncOculusSubscriptions' test.out

#- 467 SyncOculusConsumableEntitlements
samples/cli/sample-apps Platform syncOculusConsumableEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'TAZoLKIs2qbw1Yuc' \
    > test.out 2>&1
eval_tap $? 467 'SyncOculusConsumableEntitlements' test.out

#- 468 PublicReconcilePlayStationStore
samples/cli/sample-apps Platform publicReconcilePlayStationStore \
    --namespace $AB_NAMESPACE \
    --userId 'gPHgubyWajMAOx59' \
    --body '{"currencyCode": "S8apkFKOhJ9BLRmF", "price": 0.7537419575362369, "productId": "dA4BQbzyS8AMd82X", "serviceLabel": 50}' \
    > test.out 2>&1
eval_tap $? 468 'PublicReconcilePlayStationStore' test.out

#- 469 PublicReconcilePlayStationStoreWithMultipleServiceLabels
samples/cli/sample-apps Platform publicReconcilePlayStationStoreWithMultipleServiceLabels \
    --namespace $AB_NAMESPACE \
    --userId 'gtjd35g8lMQkTQrz' \
    --body '{"currencyCode": "ff94BHRO9awh4jLw", "price": 0.669023291282037, "productId": "EzDWWEjFR9DimnUd", "serviceLabels": [16, 35, 19]}' \
    > test.out 2>&1
eval_tap $? 469 'PublicReconcilePlayStationStoreWithMultipleServiceLabels' test.out

#- 470 SyncSteamInventory
samples/cli/sample-apps Platform syncSteamInventory \
    --namespace $AB_NAMESPACE \
    --userId '8uPZYW6mPbu2GwcC' \
    --body '{"appId": "0kcgMH1KD1DWAFhL", "currencyCode": "uqY6XN3HyDFKoVYr", "language": "MkS-Zs", "price": 0.26208073554978917, "productId": "E3reOmhJRWXxO1Gh", "region": "zblqnAWtV7J6gQKx", "steamId": "7gEp4Gr1KiKcvO8m"}' \
    > test.out 2>&1
eval_tap $? 470 'SyncSteamInventory' test.out

#- 471 SyncSteamAbnormalTransaction
samples/cli/sample-apps Platform syncSteamAbnormalTransaction \
    --namespace $AB_NAMESPACE \
    --userId 'm9PhIzSqPHsWNKsP' \
    > test.out 2>&1
eval_tap $? 471 'SyncSteamAbnormalTransaction' test.out

#- 472 SyncSteamIAPByTransaction
samples/cli/sample-apps Platform syncSteamIAPByTransaction \
    --namespace $AB_NAMESPACE \
    --userId 'NzqS2NDY2w2iz353' \
    --body '{"orderId": "N3pODmHAqHYYuWHU"}' \
    > test.out 2>&1
eval_tap $? 472 'SyncSteamIAPByTransaction' test.out

#- 473 PublicQueryUserThirdPartySubscription
samples/cli/sample-apps Platform publicQueryUserThirdPartySubscription \
    --namespace $AB_NAMESPACE \
    --platform 'GOOGLE' \
    --userId 'DfUeJKfhhkNuumS8' \
    --activeOnly 'true' \
    --groupId 'Qp4Xx9G1pUPZG6aE' \
    --limit '99' \
    --offset '53' \
    --productId 'PZnRYk47r5IhytIE' \
    > test.out 2>&1
eval_tap $? 473 'PublicQueryUserThirdPartySubscription' test.out

#- 474 SyncTwitchDropsEntitlement1
samples/cli/sample-apps Platform syncTwitchDropsEntitlement1 \
    --namespace $AB_NAMESPACE \
    --userId 'bPpWseh8g01weM4f' \
    --body '{"gameId": "gWGWHX1H08UVujo2", "language": "FEms-xlpi", "region": "M0nPEz80Vdn1oQph"}' \
    > test.out 2>&1
eval_tap $? 474 'SyncTwitchDropsEntitlement1' test.out

#- 475 SyncXboxInventory
samples/cli/sample-apps Platform syncXboxInventory \
    --namespace $AB_NAMESPACE \
    --userId 'JYOZYEUkk1onsHWp' \
    --body '{"currencyCode": "BF9XBPrD9QNm1yZz", "price": 0.48131760388102873, "productId": "XlT1U5RDv99E4FPB", "xstsToken": "nF1BVeQ2lrEpQGGK"}' \
    > test.out 2>&1
eval_tap $? 475 'SyncXboxInventory' test.out

#- 476 PublicQueryUserOrders
samples/cli/sample-apps Platform publicQueryUserOrders \
    --namespace $AB_NAMESPACE \
    --userId 'DvxJEQ2xcBsW8226' \
    --discounted 'true' \
    --itemId 'JRY2c8lL0p3DwxvM' \
    --limit '10' \
    --offset '27' \
    --status 'CHARGEBACK' \
    > test.out 2>&1
eval_tap $? 476 'PublicQueryUserOrders' test.out

#- 477 PublicCreateUserOrder
samples/cli/sample-apps Platform publicCreateUserOrder \
    --namespace $AB_NAMESPACE \
    --userId 'LgpPkayjROQQGRfA' \
    --body '{"currencyCode": "riUPLG0sCwDlmHDb", "discountCodes": ["a843a9yawXmgT3Oq", "hn3xsDgbJhhXo0yg", "J7S66cKsURZDy98r"], "discountedPrice": 85, "ext": {"prQ4cxpufpL1vd3y": {}, "svfq6qxW6DyX85JW": {}, "k1GWH4ylqhq0gkS3": {}}, "itemId": "RD1ooTV6EWZIjbQ2", "language": "Wq_859", "price": 44, "quantity": 37, "region": "Xoy5puap4gogUvzv", "returnUrl": "G8Y0eZmZhw0ldkhb", "sectionId": "W7sCBsHBCGd1kN6y"}' \
    > test.out 2>&1
eval_tap $? 477 'PublicCreateUserOrder' test.out

#- 478 PublicPreviewOrderPrice
samples/cli/sample-apps Platform publicPreviewOrderPrice \
    --namespace $AB_NAMESPACE \
    --userId 'vaWeckSpzWCTocgL' \
    --body '{"currencyCode": "ezT8iSn9mPHppRIu", "discountCodes": ["Q7m6OEo7TrcvEhDL", "RhU7xlKEkuD16RJj", "FpmtOE6IvXKY4AkH"], "discountedPrice": 76, "itemId": "aKrFW9mT8Vyd3G1F", "price": 84, "quantity": 52}' \
    > test.out 2>&1
eval_tap $? 478 'PublicPreviewOrderPrice' test.out

#- 479 PublicGetUserOrder
samples/cli/sample-apps Platform publicGetUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'lGap6ebCKBPiJ4WR' \
    --userId 'p8ti4fuf6fOim6lV' \
    > test.out 2>&1
eval_tap $? 479 'PublicGetUserOrder' test.out

#- 480 PublicCancelUserOrder
samples/cli/sample-apps Platform publicCancelUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'wz2QqS8TJ44okn3g' \
    --userId 'DHkErDQE0xu3yxf0' \
    > test.out 2>&1
eval_tap $? 480 'PublicCancelUserOrder' test.out

#- 481 PublicGetUserOrderHistories
samples/cli/sample-apps Platform publicGetUserOrderHistories \
    --namespace $AB_NAMESPACE \
    --orderNo 'IGs6YNDGs8Gz6VYK' \
    --userId 'jGj7ny5soqNj0td7' \
    > test.out 2>&1
eval_tap $? 481 'PublicGetUserOrderHistories' test.out

#- 482 PublicDownloadUserOrderReceipt
samples/cli/sample-apps Platform publicDownloadUserOrderReceipt \
    --namespace $AB_NAMESPACE \
    --orderNo 'X36F1uGAsvdOSeRz' \
    --userId 'HPyVX2rO0IRrmB06' \
    > test.out 2>&1
eval_tap $? 482 'PublicDownloadUserOrderReceipt' test.out

#- 483 PublicGetPaymentAccounts
samples/cli/sample-apps Platform publicGetPaymentAccounts \
    --namespace $AB_NAMESPACE \
    --userId 'rtor64wXgw4ua26P' \
    > test.out 2>&1
eval_tap $? 483 'PublicGetPaymentAccounts' test.out

#- 484 PublicDeletePaymentAccount
samples/cli/sample-apps Platform publicDeletePaymentAccount \
    --id 'i4asuN07zDN1LaY5' \
    --namespace $AB_NAMESPACE \
    --type 'card' \
    --userId 'O62Kh8vXvfyQPQYV' \
    > test.out 2>&1
eval_tap $? 484 'PublicDeletePaymentAccount' test.out

#- 485 PublicListActiveSections
samples/cli/sample-apps Platform publicListActiveSections \
    --namespace $AB_NAMESPACE \
    --userId '2r37anlxVsvluJ1n' \
    --autoCalcEstimatedPrice 'false' \
    --language '8Zc2vlgE5pzYFcif' \
    --region 'tYgzBgujT64SKVdS' \
    --storeId '0KSdguFcbsTLiEiE' \
    --viewId 'ICCt3d1Wq4gDm89h' \
    > test.out 2>&1
eval_tap $? 485 'PublicListActiveSections' test.out

#- 486 PublicQueryUserSubscriptions
samples/cli/sample-apps Platform publicQueryUserSubscriptions \
    --namespace $AB_NAMESPACE \
    --userId 'Cr340H5WPw2vTwVT' \
    --chargeStatus 'CHARGE_FAILED' \
    --itemId 'hzKZvA1tAynufedg' \
    --limit '58' \
    --offset '69' \
    --sku 'SoVsrYdHUI9r1dqr' \
    --status 'ACTIVE' \
    --subscribedBy 'PLATFORM' \
    > test.out 2>&1
eval_tap $? 486 'PublicQueryUserSubscriptions' test.out

#- 487 PublicSubscribeSubscription
samples/cli/sample-apps Platform publicSubscribeSubscription \
    --namespace $AB_NAMESPACE \
    --userId 'Glilzo88ZoYUT0WG' \
    --body '{"currencyCode": "QXoTuHMlwoPhqvee", "itemId": "Bipk6Vuphfhhy9Ld", "language": "wg-Hb", "region": "WfSsNfmtBrkeeERD", "returnUrl": "lI1CoYyCUCfovmJ2", "source": "GYS0pVYfJqQhDD4u"}' \
    > test.out 2>&1
eval_tap $? 487 'PublicSubscribeSubscription' test.out

#- 488 PublicCheckUserSubscriptionSubscribableByItemId
samples/cli/sample-apps Platform publicCheckUserSubscriptionSubscribableByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'xeYcdDTqiwazpWH0' \
    --itemId 'y7iay9SPkqZw1mOX' \
    > test.out 2>&1
eval_tap $? 488 'PublicCheckUserSubscriptionSubscribableByItemId' test.out

#- 489 PublicGetUserSubscription
samples/cli/sample-apps Platform publicGetUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'Eh7uojRWTNUWepRI' \
    --userId 'NGNlRSxDlrAxoedD' \
    > test.out 2>&1
eval_tap $? 489 'PublicGetUserSubscription' test.out

#- 490 PublicChangeSubscriptionBillingAccount
samples/cli/sample-apps Platform publicChangeSubscriptionBillingAccount \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'kZDs7BbKrsgkCewv' \
    --userId 'CuhEaynUiMtcZofK' \
    > test.out 2>&1
eval_tap $? 490 'PublicChangeSubscriptionBillingAccount' test.out

#- 491 PublicCancelSubscription
samples/cli/sample-apps Platform publicCancelSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'thg5tTcp1BprLkqs' \
    --userId 'vtLRFdczJIH9Nc59' \
    --body '{"immediate": true, "reason": "0wdOgfFoyVsiNONx"}' \
    > test.out 2>&1
eval_tap $? 491 'PublicCancelSubscription' test.out

#- 492 PublicGetUserSubscriptionBillingHistories
samples/cli/sample-apps Platform publicGetUserSubscriptionBillingHistories \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'a4FgqQTAjUviIEpM' \
    --userId 'XaygLHMBIrimZrOK' \
    --excludeFree 'true' \
    --limit '46' \
    --offset '56' \
    > test.out 2>&1
eval_tap $? 492 'PublicGetUserSubscriptionBillingHistories' test.out

#- 493 PublicListViews
samples/cli/sample-apps Platform publicListViews \
    --namespace $AB_NAMESPACE \
    --userId 'NCqQWqb5N6mc84Qj' \
    --language 'jjZdunNJnsIs1TU0' \
    --storeId '0HXrOIanWRUWYBde' \
    > test.out 2>&1
eval_tap $? 493 'PublicListViews' test.out

#- 494 PublicGetWallet
samples/cli/sample-apps Platform publicGetWallet \
    --currencyCode 'fbflQjlF1aXvBPIS' \
    --namespace $AB_NAMESPACE \
    --userId 'xY2ZIQ44niBP4wrS' \
    > test.out 2>&1
eval_tap $? 494 'PublicGetWallet' test.out

#- 495 PublicListUserWalletTransactions
samples/cli/sample-apps Platform publicListUserWalletTransactions \
    --currencyCode 'e9SfR2GmNNi1wZd4' \
    --namespace $AB_NAMESPACE \
    --userId 'Zo9CgSjJQIY474ep' \
    --limit '68' \
    --offset '0' \
    > test.out 2>&1
eval_tap $? 495 'PublicListUserWalletTransactions' test.out

#- 496 PublicGetMyDLCContent
samples/cli/sample-apps Platform publicGetMyDLCContent \
    --includeAllNamespaces 'false' \
    --type 'STEAM' \
    > test.out 2>&1
eval_tap $? 496 'PublicGetMyDLCContent' test.out

#- 497 QueryFulfillments
samples/cli/sample-apps Platform queryFulfillments \
    --namespace $AB_NAMESPACE \
    --endTime 'cVUyNOHwaDbmN3rQ' \
    --limit '69' \
    --offset '9' \
    --startTime 'KGHSTTbFaYNC9FEl' \
    --state 'REVOKE_FAILED' \
    --transactionId 's15EsjGwxWP15kem' \
    --userId 'cmeQa0KXsLZ7dgwl' \
    > test.out 2>&1
eval_tap $? 497 'QueryFulfillments' test.out

#- 498 QueryItemsV2
samples/cli/sample-apps Platform queryItemsV2 \
    --namespace $AB_NAMESPACE \
    --appType 'SOFTWARE' \
    --availableDate 'FASuqAxtfYn6KfxY' \
    --baseAppId 'PiCWXPSsg2KfdAht' \
    --categoryPath '1WLre1jgqjdDQQzz' \
    --features 'e3bYyUAMXOjH3PTb' \
    --includeSubCategoryItem 'false' \
    --itemName 'cWEClkUH18b9y6mO' \
    --itemStatus 'INACTIVE' \
    --itemType '["BUNDLE", "APP", "OPTIONBOX"]' \
    --limit '74' \
    --offset '92' \
    --region 'Zz6h0ydm7rvpvuEg' \
    --sectionExclusive 'false' \
    --sortBy '["updatedAt:desc", "name:desc", "displayOrder"]' \
    --storeId 'DISq2QaNScoSfzJX' \
    --tags 'egcLY25L0I7hphaj' \
    --targetNamespace 'CI9WYOakrECwh2G7' \
    --withTotal 'true' \
    > test.out 2>&1
eval_tap $? 498 'QueryItemsV2' test.out

#- 499 ImportStore1
samples/cli/sample-apps Platform importStore1 \
    --namespace $AB_NAMESPACE \
    --storeId 'fGHlq8RE2LnzGXKu' \
    --strictMode 'true' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 499 'ImportStore1' test.out

#- 500 ExportStore1
samples/cli/sample-apps Platform exportStore1 \
    --namespace $AB_NAMESPACE \
    --storeId 'JUR7ikny0ZSoTkKC' \
    --body '{"itemIds": ["vvBhXUK0FjfgSYyM", "EAYCtgMhsxDT2SJw", "3U0k1sULl54CmIao"]}' \
    > test.out 2>&1
eval_tap $? 500 'ExportStore1' test.out

#- 501 FulfillRewardsV2
samples/cli/sample-apps Platform fulfillRewardsV2 \
    --namespace $AB_NAMESPACE \
    --userId 'ePJ5uDWL3dlc7HxN' \
    --body '{"entitlementCollectionId": "vy7SVHfT3hg8m3gN", "entitlementOrigin": "System", "metadata": {"hsoCMThjXx96vbqn": {}, "kP5LQply0mfDLUCy": {}, "Nmg0dt0Ojs8r6mXA": {}}, "origin": "GooglePlay", "rewards": [{"currency": {"currencyCode": "KuDd3u1GzE67Eyw3", "namespace": "44tchj8LQVDbJV7n"}, "item": {"itemId": "bFeHOFK4KErOE1Kf", "itemName": "AXAkM49ed5oSXqqY", "itemSku": "Bx3UPDQ3XI6M42sa", "itemType": "AnHZCd6PtwOekdrf"}, "quantity": 88, "type": "ITEM"}, {"currency": {"currencyCode": "MQPC7XzscaxC8WJc", "namespace": "qNjwVwPiGLdCC3jc"}, "item": {"itemId": "Izvp0khhmXTclzJZ", "itemName": "W8QG0JGRoaUcfZEx", "itemSku": "4b5fHmDPAp15atFi", "itemType": "wFuG6QzTM30XNhDV"}, "quantity": 22, "type": "CURRENCY"}, {"currency": {"currencyCode": "pChWHRtoac3LsNHe", "namespace": "MrdEM7mM3b9ajART"}, "item": {"itemId": "WWwT4jQpbfn3bwEa", "itemName": "0ulGaa2UaLtYeclJ", "itemSku": "afrIirDHipLdnSbk", "itemType": "5siFpBzOj1bgKc6Q"}, "quantity": 75, "type": "CURRENCY"}], "source": "REDEEM_CODE", "transactionId": "QrRzFLV8hz46J2EW"}' \
    > test.out 2>&1
eval_tap $? 501 'FulfillRewardsV2' test.out

#- 502 FulfillItems
eval_tap 0 502 'FulfillItems # SKIP deprecated' test.out

#- 503 RetryFulfillItems
eval_tap 0 503 'RetryFulfillItems # SKIP deprecated' test.out

#- 504 RevokeItems
eval_tap 0 504 'RevokeItems # SKIP deprecated' test.out

#- 505 V2PublicFulfillAppleIAPItem
samples/cli/sample-apps Platform v2PublicFulfillAppleIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'tsYslkbZsfldg87a' \
    --body '{"transactionId": "FY6sRnxCCA0C3b9V"}' \
    > test.out 2>&1
eval_tap $? 505 'V2PublicFulfillAppleIAPItem' test.out

#- 506 BulkFulfillItemsV3
samples/cli/sample-apps Platform bulkFulfillItemsV3 \
    --namespace $AB_NAMESPACE \
    --userId '506V0x7JbAjFFLXv' \
    --body '[{"items": [{"duration": 47, "endDate": "1988-11-05T00:00:00Z", "entitlementCollectionId": "DnhsOBfuX0JzWAfr", "entitlementOrigin": "GooglePlay", "itemId": "pTXSoBOnlQtAxzqW", "itemSku": "RpDVwA7EGODQopGT", "language": "SrOMhOjgzxBTzl76", "metadata": {"HN9gQgIApFs0QzPW": {}, "2qbedBkfVtpIs5u0": {}, "FpqHbPfSeqU7jUI2": {}}, "orderNo": "DlBaMkCoQWwW28se", "origin": "Xbox", "quantity": 79, "region": "xRCQYxnjZ5Nb21rK", "source": "REWARD", "startDate": "1982-04-19T00:00:00Z", "storeId": "IATCc9uENNGhIfc3"}, {"duration": 24, "endDate": "1988-12-23T00:00:00Z", "entitlementCollectionId": "p7etqx547z6BTqTJ", "entitlementOrigin": "Oculus", "itemId": "m8MWanKDYknjm3Si", "itemSku": "Z5vGysBUulR4iO18", "language": "VnypSQW4cN5g0yEy", "metadata": {"L1GJgLtrXQvICDp0": {}, "xghESRyH509dbGwq": {}, "CmQF2DyTp1B0B9eu": {}}, "orderNo": "6CaPhm5fUk5z0H4p", "origin": "Nintendo", "quantity": 15, "region": "XujJiuon6FAfJTDE", "source": "CONSUME_ENTITLEMENT", "startDate": "1974-06-16T00:00:00Z", "storeId": "oI2giT0rQ3zRpKyy"}, {"duration": 10, "endDate": "1974-03-27T00:00:00Z", "entitlementCollectionId": "BpdJaKKoxYIqtz6R", "entitlementOrigin": "Playstation", "itemId": "Or7pgni3hpyTftbB", "itemSku": "qvPck2H1KtYzvEn6", "language": "fqDgmlJXw6r07mAU", "metadata": {"Lg04cP8zPXsbmAnA": {}, "f79gqdb9XWRQBRhx": {}, "JJuhjGKpRpkDHJde": {}}, "orderNo": "nivLbvNrPwUb8nsV", "origin": "Oculus", "quantity": 43, "region": "FIFaILQU1E3WBwOY", "source": "REDEEM_CODE", "startDate": "1995-12-08T00:00:00Z", "storeId": "NaMNUS7knVnAtnkp"}], "transactionId": "C7NkDK6Yt28t2D99"}, {"items": [{"duration": 21, "endDate": "1977-08-08T00:00:00Z", "entitlementCollectionId": "bsVdGZgr1QeSUkig", "entitlementOrigin": "Twitch", "itemId": "VOD5zs5uSgyC8IJA", "itemSku": "JlP5ptU8IQkfqrQI", "language": "baCyzsHBR9kPsjeg", "metadata": {"WNqHpIzIrmVkzmOb": {}, "iXpn3LbjuS2b3tfW": {}, "InyoRtbMLtVIo538": {}}, "orderNo": "IU6pZLG4L7tpILwJ", "origin": "Twitch", "quantity": 8, "region": "H9zXSd0BkIluQHU1", "source": "IAP_CHARGEBACK_REVERSED", "startDate": "1978-03-26T00:00:00Z", "storeId": "0aZBi2rScyuDTXyE"}, {"duration": 16, "endDate": "1997-11-20T00:00:00Z", "entitlementCollectionId": "6BFmKXBC61LBxT0B", "entitlementOrigin": "Oculus", "itemId": "gc0pvivC6gO6TRIm", "itemSku": "hlY0ZXVqRHssumVK", "language": "35a7zNH3a036dbe0", "metadata": {"NgjmunbmzPrtl8y7": {}, "Keb3bTUBvwpUOiF5": {}, "X2coTEtnmYxn501k": {}}, "orderNo": "sUZZOGpUWWGcux52", "origin": "IOS", "quantity": 83, "region": "hh2CN29cDOCw8KLh", "source": "DLC", "startDate": "1981-06-26T00:00:00Z", "storeId": "bK1STNGp87fmP79V"}, {"duration": 17, "endDate": "1987-09-13T00:00:00Z", "entitlementCollectionId": "MydDlVdjOuTH3syi", "entitlementOrigin": "Xbox", "itemId": "reL3vfuXTbYo4TR9", "itemSku": "vaxLrMwwxj6a8K0L", "language": "FXUvPuK4H5DeXjpj", "metadata": {"bkzS2InbExWN3o90": {}, "hjLGqpPetynt0MqJ": {}, "28G0mFTSDOtryh1j": {}}, "orderNo": "MGvrMTqpomk4Pru5", "origin": "Playstation", "quantity": 78, "region": "u5s7YYNSbwulggqw", "source": "EXPIRATION", "startDate": "1995-11-30T00:00:00Z", "storeId": "bDpEypsTfGEpHqiO"}], "transactionId": "1GRyRCJk0il1saLZ"}, {"items": [{"duration": 35, "endDate": "1976-04-28T00:00:00Z", "entitlementCollectionId": "3QyVOTi12voHET7f", "entitlementOrigin": "Other", "itemId": "TsrsWZXZDHMiJfDF", "itemSku": "7K0HqTRYOBkYWzIS", "language": "Jr0BnkWFXaY1pp8n", "metadata": {"289Th6vzPh2sxG5Q": {}, "4ytQWyfvx7dfruNn": {}, "FztgM4nAx3maXwkX": {}}, "orderNo": "5Av92QApYn2LVMWe", "origin": "GooglePlay", "quantity": 71, "region": "lZoDgT9vgFu01vIH", "source": "CONSUME_ENTITLEMENT", "startDate": "1996-06-29T00:00:00Z", "storeId": "r6AyYNP8xCN95l7j"}, {"duration": 55, "endDate": "1994-10-10T00:00:00Z", "entitlementCollectionId": "gEWVV3kEqE8ULDHZ", "entitlementOrigin": "Other", "itemId": "B7DOcqbMADD7wXsA", "itemSku": "3FiPibvV1yycKavy", "language": "yJp3NoHMdePHakHT", "metadata": {"x1JRTsnUZUbujByg": {}, "bOoXVKSLDTcvX7Jc": {}, "7czRNUWyi3xfGW9s": {}}, "orderNo": "vaR62MQyBZ2nsiMc", "origin": "IOS", "quantity": 5, "region": "TcdzO3BxEwp1Oe24", "source": "REDEEM_CODE", "startDate": "1996-06-28T00:00:00Z", "storeId": "9a4GMc80DVclbh1W"}, {"duration": 47, "endDate": "1996-02-19T00:00:00Z", "entitlementCollectionId": "uI3oXtSi3JcE1z51", "entitlementOrigin": "Nintendo", "itemId": "wz17Hp3Cnc2FuuvB", "itemSku": "OD0OqzXYZIPnrZwx", "language": "zQTFxwgY25OiGF6f", "metadata": {"vFDcOfMvwpe9oDm8": {}, "LnGp3df7mvrQ696p": {}, "enF6M426oJkGuWi3": {}}, "orderNo": "wJUZ6vfV0ahDSYsQ", "origin": "Xbox", "quantity": 98, "region": "DzefgrTDBWc1U9u4", "source": "PAYMENT", "startDate": "1976-09-25T00:00:00Z", "storeId": "mRfMu1EPRSBrINM5"}], "transactionId": "SQLDCSpxnH3rwuev"}]' \
    > test.out 2>&1
eval_tap $? 506 'BulkFulfillItemsV3' test.out

#- 507 FulfillItemsV3
samples/cli/sample-apps Platform fulfillItemsV3 \
    --namespace $AB_NAMESPACE \
    --transactionId 'uzPqCSNfot31vA4M' \
    --userId 'nZgkgd3LdsCb9rhR' \
    --body '{"items": [{"duration": 35, "endDate": "1984-03-25T00:00:00Z", "entitlementCollectionId": "zmbdBEofMfMLWumI", "entitlementOrigin": "Playstation", "itemId": "TH36dIo5k7xWF109", "itemSku": "woWZkqpGiuIAqvZt", "language": "uftikA41lquddszB", "metadata": {"b2LeY8FCpZ3vPDsk": {}, "4WFrkROMBZcD81NN": {}, "Xu5hTiBZMcvVNS1r": {}}, "orderNo": "7EdBqeQhOMiBzlLZ", "origin": "Oculus", "quantity": 9, "region": "ez0Npoeoq2Z2h1F7", "source": "DLC", "startDate": "1976-02-18T00:00:00Z", "storeId": "EVCs0YXdMHFgI0cW"}, {"duration": 93, "endDate": "1987-04-13T00:00:00Z", "entitlementCollectionId": "rRgn6CbTdYpurxBy", "entitlementOrigin": "Other", "itemId": "Bp5DLqx9HuxI1yux", "itemSku": "b3mZfPq6X0bRERVo", "language": "zylQxHb21EaSUg9j", "metadata": {"C8UvdEOFzFzhz4lH": {}, "HjjGnabydNlieasG": {}, "t9FExzjiOmxtVI6c": {}}, "orderNo": "aHRBenJdnyDvOaAd", "origin": "Oculus", "quantity": 7, "region": "obJkhVQYW5w0auO0", "source": "PROMOTION", "startDate": "1993-06-05T00:00:00Z", "storeId": "EzVzZJUDz9uIikXH"}, {"duration": 29, "endDate": "1974-02-25T00:00:00Z", "entitlementCollectionId": "2yH6FUe1ImU8w79s", "entitlementOrigin": "Xbox", "itemId": "tm6gMg1AmYET2YwI", "itemSku": "Ql4evdMLIBR4URZm", "language": "bLQCmDue1zwG9Xzx", "metadata": {"oiDF5XHiJ9x6Ng9B": {}, "qhooczfkqs4i6rH4": {}, "XkNZkjH8AXe1aXUo": {}}, "orderNo": "2TgQXbynO8uvcAGq", "origin": "Nintendo", "quantity": 36, "region": "1cilmvr8ZJgf0DNL", "source": "REDEEM_CODE", "startDate": "1974-09-06T00:00:00Z", "storeId": "aKBathzp4Q6jdJhB"}]}' \
    > test.out 2>&1
eval_tap $? 507 'FulfillItemsV3' test.out

#- 508 RetryFulfillItemsV3
samples/cli/sample-apps Platform retryFulfillItemsV3 \
    --namespace $AB_NAMESPACE \
    --transactionId 'E3KNWMsXj1hL4j45' \
    --userId 'ilcnaLlQRu8TdNAr' \
    > test.out 2>&1
eval_tap $? 508 'RetryFulfillItemsV3' test.out

#- 509 RevokeItemsV3
samples/cli/sample-apps Platform revokeItemsV3 \
    --namespace $AB_NAMESPACE \
    --transactionId 'IzNZ4pmp0W4N9kgW' \
    --userId 'xVEr9w02PZkxacI0' \
    > test.out 2>&1
eval_tap $? 509 'RevokeItemsV3' test.out


rm -f "tmp.dat"

exit $EXIT_CODE