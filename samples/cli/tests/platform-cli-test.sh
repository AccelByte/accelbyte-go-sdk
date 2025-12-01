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
echo "1..507"

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
    --id 'ymd1VRey2zT2qEaz' \
    > test.out 2>&1
eval_tap $? 3 'GetFulfillmentScript' test.out

#- 4 CreateFulfillmentScript
samples/cli/sample-apps Platform createFulfillmentScript \
    --id 'fhurCGRN1VApxTuI' \
    --body '{"grantDays": "2t382Wa74OpQH6OO"}' \
    > test.out 2>&1
eval_tap $? 4 'CreateFulfillmentScript' test.out

#- 5 DeleteFulfillmentScript
samples/cli/sample-apps Platform deleteFulfillmentScript \
    --id 'RG0J4HMNQhwreneY' \
    > test.out 2>&1
eval_tap $? 5 'DeleteFulfillmentScript' test.out

#- 6 UpdateFulfillmentScript
samples/cli/sample-apps Platform updateFulfillmentScript \
    --id 'XDJrWsRyTrcGkTZB' \
    --body '{"grantDays": "Nz7lFijFbqT8928O"}' \
    > test.out 2>&1
eval_tap $? 6 'UpdateFulfillmentScript' test.out

#- 7 ListItemTypeConfigs
samples/cli/sample-apps Platform listItemTypeConfigs \
    > test.out 2>&1
eval_tap $? 7 'ListItemTypeConfigs' test.out

#- 8 CreateItemTypeConfig
samples/cli/sample-apps Platform createItemTypeConfig \
    --body '{"clazz": "S0u67XCu7XlNrLVE", "dryRun": false, "fulfillmentUrl": "uIMWAkdjEHEHKgMH", "itemType": "APP", "purchaseConditionUrl": "x5B9TcLInRfelaoU"}' \
    > test.out 2>&1
eval_tap $? 8 'CreateItemTypeConfig' test.out

#- 9 SearchItemTypeConfig
samples/cli/sample-apps Platform searchItemTypeConfig \
    --clazz 'D97c1KXWowqTIkZH' \
    --itemType 'OPTIONBOX' \
    > test.out 2>&1
eval_tap $? 9 'SearchItemTypeConfig' test.out

#- 10 GetItemTypeConfig
samples/cli/sample-apps Platform getItemTypeConfig \
    --id 'qEylXGwb8AgAwH4G' \
    > test.out 2>&1
eval_tap $? 10 'GetItemTypeConfig' test.out

#- 11 UpdateItemTypeConfig
samples/cli/sample-apps Platform updateItemTypeConfig \
    --id 'gJC5qCCea4h6qdKX' \
    --body '{"clazz": "7pi7CT96CX2PFBze", "dryRun": true, "fulfillmentUrl": "Pyql4hcRgT6I420e", "purchaseConditionUrl": "GPdaAD6JcupAGnJC"}' \
    > test.out 2>&1
eval_tap $? 11 'UpdateItemTypeConfig' test.out

#- 12 DeleteItemTypeConfig
samples/cli/sample-apps Platform deleteItemTypeConfig \
    --id 'tBXrV30c7YhbYdUM' \
    > test.out 2>&1
eval_tap $? 12 'DeleteItemTypeConfig' test.out

#- 13 QueryCampaigns
samples/cli/sample-apps Platform queryCampaigns \
    --namespace $AB_NAMESPACE \
    --limit '84' \
    --name 'crOSdsXNZrTLIIsV' \
    --offset '41' \
    --tag 'MLJ62ickKf3067T1' \
    > test.out 2>&1
eval_tap $? 13 'QueryCampaigns' test.out

#- 14 CreateCampaign
samples/cli/sample-apps Platform createCampaign \
    --namespace $AB_NAMESPACE \
    --body '{"description": "G9NkHuwOIRkEZqQG", "discountConfig": {"categories": [{"categoryPath": "sgqwwq3sSSCtlZ3p", "includeSubCategories": false}, {"categoryPath": "nYt1flkEMGtH4bTN", "includeSubCategories": true}, {"categoryPath": "PHEWVkfKRtotUWZn", "includeSubCategories": false}], "currencyCode": "50mlOacz3L1taYYo", "currencyNamespace": "5aG3Vi4xARm2a2kJ", "discountAmount": 52, "discountPercentage": 41, "discountType": "AMOUNT", "items": [{"itemId": "f2n6BZHUHehhkg0p", "itemName": "NHDgEph5NL2UB0IY"}, {"itemId": "pzXiD1TATHule8Vv", "itemName": "Xj8uTNBqxDur0fJs"}, {"itemId": "bq5tWctrqPwYVkvj", "itemName": "H71Mfg59rR3JCt1s"}], "restrictType": "NONE", "stackable": true}, "items": [{"extraSubscriptionDays": 63, "itemId": "GCqaiSD7OvnzeGk7", "itemName": "lr5zyQj4DDfLsPNn", "quantity": 15}, {"extraSubscriptionDays": 64, "itemId": "KuDaFRo41BwYqktM", "itemName": "Oz2PV6N2KemI1a8X", "quantity": 100}, {"extraSubscriptionDays": 33, "itemId": "TUkOVcDTr6Gv8S5b", "itemName": "9BxQof6OePh2jNEo", "quantity": 19}], "maxRedeemCountPerCampaignPerUser": 98, "maxRedeemCountPerCode": 82, "maxRedeemCountPerCodePerUser": 23, "maxSaleCount": 30, "name": "8lvCSbgsd4xGzuDg", "redeemEnd": "1988-08-02T00:00:00Z", "redeemStart": "1975-10-21T00:00:00Z", "redeemType": "ITEM", "status": "ACTIVE", "tags": ["UzIwtlVzxbVnpQUu", "Grt7BgbSHQWnCdi1", "YFB7PTVOq6uqPUSN"], "type": "REDEMPTION"}' \
    > test.out 2>&1
eval_tap $? 14 'CreateCampaign' test.out

#- 15 GetCampaign
samples/cli/sample-apps Platform getCampaign \
    --campaignId 's5Cb8lKIi2FpziR7' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 15 'GetCampaign' test.out

#- 16 UpdateCampaign
samples/cli/sample-apps Platform updateCampaign \
    --campaignId 'JNYoiRCNKKSBWx6u' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "kGKR7K08ZzReIjP4", "discountConfig": {"categories": [{"categoryPath": "AynIxCrcnEKprQXz", "includeSubCategories": false}, {"categoryPath": "1WQygyqtMcjB0xjn", "includeSubCategories": false}, {"categoryPath": "LShOCU2HDAGtWdfa", "includeSubCategories": false}], "currencyCode": "VGvM4H5xYo8c9g4m", "currencyNamespace": "CnUNqeviUoD0xhBU", "discountAmount": 54, "discountPercentage": 6, "discountType": "PERCENTAGE", "items": [{"itemId": "P3uyCQHNsun29lxc", "itemName": "Joga7siQzWWc4HHW"}, {"itemId": "p17jYLbeUYV1l9p8", "itemName": "k51i22OpZXEQzV87"}, {"itemId": "EjTMZYclMM2CkoEM", "itemName": "LGPMboxvQOLIauhg"}], "restrictType": "ITEMS_AND_CATEGORIES", "stackable": true}, "items": [{"extraSubscriptionDays": 6, "itemId": "OieuYiA9rssXmSt1", "itemName": "1K9TYtosGjeZ9y6m", "quantity": 52}, {"extraSubscriptionDays": 6, "itemId": "usdae62gy7iOjjm8", "itemName": "HNB3mt7DUHUbC14b", "quantity": 29}, {"extraSubscriptionDays": 93, "itemId": "1U1jBrrRd8RVfqkV", "itemName": "f7y4TcFqG1O0psZB", "quantity": 24}], "maxRedeemCountPerCampaignPerUser": 82, "maxRedeemCountPerCode": 18, "maxRedeemCountPerCodePerUser": 88, "maxSaleCount": 62, "name": "6H03SEIHknooVyjC", "redeemEnd": "1979-10-15T00:00:00Z", "redeemStart": "1978-06-08T00:00:00Z", "redeemType": "ITEM", "status": "INACTIVE", "tags": ["fco05yHchhwLhsrc", "yoxsYHKUjRMjqrsQ", "tgAEiISUFq9Hm2nQ"]}' \
    > test.out 2>&1
eval_tap $? 16 'UpdateCampaign' test.out

#- 17 RenameBatch
samples/cli/sample-apps Platform renameBatch \
    --campaignId 'OcIxzm6V8aFwxwIH' \
    --namespace $AB_NAMESPACE \
    --body '{"newName": "xi5jq2ISBD0EQ896", "oldName": "byseWdzbfbnTUBkk"}' \
    > test.out 2>&1
eval_tap $? 17 'RenameBatch' test.out

#- 18 QueryCampaignBatchNames
samples/cli/sample-apps Platform queryCampaignBatchNames \
    --campaignId 'HRlIzvezhc1Ld2JN' \
    --namespace $AB_NAMESPACE \
    --batchName 'SWUNQTIil4QXzgyp' \
    --limit '92' \
    > test.out 2>&1
eval_tap $? 18 'QueryCampaignBatchNames' test.out

#- 19 GetCampaignDynamic
samples/cli/sample-apps Platform getCampaignDynamic \
    --campaignId 'WSgF66ALRlqZYWPg' \
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
    --body '{"enableInventoryCheck": true, "itemDeletionCheckConfig": ["CATALOG", "CAMPAIGN", "ENTITLEMENT"]}' \
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
    --body '{"appConfig": {"appName": "ootnBKB84t54d34D"}, "customConfig": {"connectionType": "TLS", "grpcServerAddress": "N1YHgcP2OE4Y94OL"}, "extendType": "APP"}' \
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
    --body '{"appConfig": {"appName": "a45ow5yrLoVmpc1n"}, "customConfig": {"connectionType": "TLS", "grpcServerAddress": "TuW3uNIHZ44kCkVg"}, "extendType": "APP"}' \
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
    --storeId 'wBqg8dd4xXhwhLz6' \
    > test.out 2>&1
eval_tap $? 31 'GetRootCategories' test.out

#- 32 CreateCategory
samples/cli/sample-apps Platform createCategory \
    --namespace $AB_NAMESPACE \
    --storeId 'eaUSyDADVCfj7888' \
    --body '{"categoryPath": "n2QbnIiSsPHP6iLQ", "localizationDisplayNames": {"aX3c6a6jDqCJPvSn": "kkkt3kS5tg0ILi6S", "8S0iPn87HiXO6qTL": "ZFgXitc09VDmFLbz", "FYt3fcG6J0fRxRIR": "YjBWaYPImEzLgOZc"}}' \
    > test.out 2>&1
eval_tap $? 32 'CreateCategory' test.out

#- 33 ListCategoriesBasic
samples/cli/sample-apps Platform listCategoriesBasic \
    --namespace $AB_NAMESPACE \
    --storeId 'EJ3UXxrVB5hb2jQM' \
    > test.out 2>&1
eval_tap $? 33 'ListCategoriesBasic' test.out

#- 34 GetCategory
samples/cli/sample-apps Platform getCategory \
    --categoryPath 'tMx0HzeW6zSvZX2h' \
    --namespace $AB_NAMESPACE \
    --storeId 'l6d9Z4ucmvJu97v2' \
    > test.out 2>&1
eval_tap $? 34 'GetCategory' test.out

#- 35 UpdateCategory
samples/cli/sample-apps Platform updateCategory \
    --categoryPath 'Venukq6KdfIABZ8L' \
    --namespace $AB_NAMESPACE \
    --storeId 'sLv0tApjXkp988ui' \
    --body '{"localizationDisplayNames": {"yy0A45LVYulyjuvJ": "vFl60dgiVdZORKpL", "2klYsGqt0BurXOFt": "97s9XKo1uAAf3A6v", "sIvzmqr5fhYERh6J": "hs0TLGfvbfqEL9bW"}}' \
    > test.out 2>&1
eval_tap $? 35 'UpdateCategory' test.out

#- 36 DeleteCategory
samples/cli/sample-apps Platform deleteCategory \
    --categoryPath 'QPgWgz7xdQNeZZoD' \
    --namespace $AB_NAMESPACE \
    --storeId 'Ys1xxzyEnfMe9fJ2' \
    > test.out 2>&1
eval_tap $? 36 'DeleteCategory' test.out

#- 37 GetChildCategories
samples/cli/sample-apps Platform getChildCategories \
    --categoryPath 'AEdbivLhzML9Rept' \
    --namespace $AB_NAMESPACE \
    --storeId 'sWbo9DDH6OVHYSSg' \
    > test.out 2>&1
eval_tap $? 37 'GetChildCategories' test.out

#- 38 GetDescendantCategories
samples/cli/sample-apps Platform getDescendantCategories \
    --categoryPath '90whM71vDcmJ3k38' \
    --namespace $AB_NAMESPACE \
    --storeId 'bpixt4a2LFAv9dgj' \
    > test.out 2>&1
eval_tap $? 38 'GetDescendantCategories' test.out

#- 39 QueryCodes
samples/cli/sample-apps Platform queryCodes \
    --campaignId 'qXdm2b2cwiaWWqa7' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --batchName '7712JaQt6YkcqoG5' \
    --batchNo '[28, 62, 45]' \
    --code 'mMF51dO2qnDN6lml' \
    --limit '72' \
    --offset '55' \
    --withBatchName 'true' \
    > test.out 2>&1
eval_tap $? 39 'QueryCodes' test.out

#- 40 CreateCodes
samples/cli/sample-apps Platform createCodes \
    --campaignId 'Q214h197ONDNi40s' \
    --namespace $AB_NAMESPACE \
    --body '{"batchName": "QB31nR0nPj8Xxu2p", "codeValue": "XJ6pLkNofYV2PaNu", "quantity": 1}' \
    > test.out 2>&1
eval_tap $? 40 'CreateCodes' test.out

#- 41 Download
samples/cli/sample-apps Platform download \
    --campaignId 'NsCrZZCzktnwVj42' \
    --namespace $AB_NAMESPACE \
    --batchName 'xd2ZwUabgsdE3iqe' \
    --batchNo '[21, 34, 60]' \
    --withBatchName 'true' \
    > test.out 2>&1
eval_tap $? 41 'Download' test.out

#- 42 BulkDisableCodes
samples/cli/sample-apps Platform bulkDisableCodes \
    --campaignId '7fVcUElgbDM0mAb3' \
    --namespace $AB_NAMESPACE \
    --batchName 'vQHnKVfIGAHBf65J' \
    --batchNo '[67, 27, 36]' \
    > test.out 2>&1
eval_tap $? 42 'BulkDisableCodes' test.out

#- 43 BulkEnableCodes
samples/cli/sample-apps Platform bulkEnableCodes \
    --campaignId 'aroKr3FrgRocqCuf' \
    --namespace $AB_NAMESPACE \
    --batchName 'l9VUgI4ajE6iOXmp' \
    --batchNo '[63, 12, 89]' \
    > test.out 2>&1
eval_tap $? 43 'BulkEnableCodes' test.out

#- 44 QueryRedeemHistory
samples/cli/sample-apps Platform queryRedeemHistory \
    --campaignId 'Wx6TJIj9ty199efC' \
    --namespace $AB_NAMESPACE \
    --code '8KlgCXa2UBPaAFaO' \
    --limit '47' \
    --offset '2' \
    --userId 'HMbRT7TdbVcIsAi6' \
    > test.out 2>&1
eval_tap $? 44 'QueryRedeemHistory' test.out

#- 45 GetCode
samples/cli/sample-apps Platform getCode \
    --code 'rwyzhFUntF0SukSx' \
    --namespace $AB_NAMESPACE \
    --redeemable 'true' \
    --withBatchName 'true' \
    > test.out 2>&1
eval_tap $? 45 'GetCode' test.out

#- 46 DisableCode
samples/cli/sample-apps Platform disableCode \
    --code 'KILoXWpT4gbwl6Nz' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 46 'DisableCode' test.out

#- 47 EnableCode
samples/cli/sample-apps Platform enableCode \
    --code 'vOS0QuvYa4KZnPHO' \
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
    --body '{"currencyCode": "PZIvcsr0NVzPGo9l", "currencySymbol": "MXaOaXIQiy7jn5Zl", "currencyType": "VIRTUAL", "decimals": 71, "localizationDescriptions": {"CoCijjk3Zujj3ACh": "GaX1m29sbJ56bV2l", "xqxZ4TRUgFyIitr6": "HH69xwVoSXCsHslb", "rNoyDxq7UisCaQXt": "VVgYSd47oZbl8yDe"}}' \
    > test.out 2>&1
eval_tap $? 52 'CreateCurrency' test.out

#- 53 UpdateCurrency
samples/cli/sample-apps Platform updateCurrency \
    --currencyCode 'GLyCxPJLXVsP3AI5' \
    --namespace $AB_NAMESPACE \
    --body '{"localizationDescriptions": {"yOPcwh6Blc2l9kO4": "TiHCQtATAnX3JscQ", "6NCBfWZMfhBVzNcb": "8Vxv1bBNPstPd29t", "28EiFVePAM97s4nf": "nEaEaDungNct3VGC"}}' \
    > test.out 2>&1
eval_tap $? 53 'UpdateCurrency' test.out

#- 54 DeleteCurrency
samples/cli/sample-apps Platform deleteCurrency \
    --currencyCode 'oaVGywkKWp489fVI' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 54 'DeleteCurrency' test.out

#- 55 GetCurrencyConfig
samples/cli/sample-apps Platform getCurrencyConfig \
    --currencyCode 'jN28yB0UmsDVUX3L' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 55 'GetCurrencyConfig' test.out

#- 56 GetCurrencySummary
samples/cli/sample-apps Platform getCurrencySummary \
    --currencyCode 'BN7kDd4StO10TOky' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 56 'GetCurrencySummary' test.out

#- 57 GetDLCItemConfigHistory
samples/cli/sample-apps Platform getDLCItemConfigHistory \
    --namespace $AB_NAMESPACE \
    --dlcId 'ylhOUglVezv5LtgX' \
    > test.out 2>&1
eval_tap $? 57 'GetDLCItemConfigHistory' test.out

#- 58 RestoreDLCItemConfigHistory
samples/cli/sample-apps Platform restoreDLCItemConfigHistory \
    --id 'pOGaqUM216coUmH0' \
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
    --body '{"data": [{"autoUpdate": true, "enableRevocation": false, "id": "whUC5MtvUv383Rsn", "rewards": [{"currency": {"currencyCode": "NYNkKwQzGVcdaHbP", "namespace": "xbOPOAnRN0WyCiYZ"}, "item": {"itemId": "MgXH2mwX1eTMgQgi", "itemName": "HTYE3mLwvsvcHZIz", "itemSku": "3lea6AUORzILKe24", "itemType": "SMl9m3r13gtii7Dh"}, "quantity": 65, "type": "CURRENCY"}, {"currency": {"currencyCode": "FWB4Frqz78X8roHt", "namespace": "GlOJI1RpqAN6Y3Ph"}, "item": {"itemId": "imQSlLbhjpZQ52bO", "itemName": "4EAnwrwM9cQiDZR7", "itemSku": "Nwnk6EHvyiZJaMZU", "itemType": "snMj5dybWQXYvvUk"}, "quantity": 80, "type": "CURRENCY"}, {"currency": {"currencyCode": "BfANVIPouZNsJMw5", "namespace": "VoPOHKzdldWkPYjx"}, "item": {"itemId": "atp4nzVjOt8b2k4I", "itemName": "oUPWwSL8DRCea1Fy", "itemSku": "AFXxzHCOYUAz5l0x", "itemType": "8gZEYX98KKOin0vV"}, "quantity": 47, "type": "ITEM"}], "rvn": 46}, {"autoUpdate": false, "enableRevocation": true, "id": "se06CKGCOWQn7JVM", "rewards": [{"currency": {"currencyCode": "cUdzLHi04byRIyof", "namespace": "J6IACHMQWqzpPrCB"}, "item": {"itemId": "ekEe3qVt0i3tiQm3", "itemName": "LdQ49aIME7Bb7Qoi", "itemSku": "nGKDvAMgQDkdurvE", "itemType": "bdVVCE7SkD5sV1uo"}, "quantity": 49, "type": "CURRENCY"}, {"currency": {"currencyCode": "1yGmhesj1ypoSH1z", "namespace": "x2AjOzLKi5xr0d70"}, "item": {"itemId": "pjtyGlxPXEsbF2wO", "itemName": "4V2AWAzffLeyivvP", "itemSku": "nc4fjhMX32nTMcqh", "itemType": "fxPKSrBZVw3KNxkm"}, "quantity": 100, "type": "CURRENCY"}, {"currency": {"currencyCode": "9HxEplY381Ve4SVt", "namespace": "oPFOjGk24M1LlKuY"}, "item": {"itemId": "WXg9LR13kvubFrYc", "itemName": "K9TWdpH2u7Y673nO", "itemSku": "LZ7dhhJ1NHgCGE8O", "itemType": "4vIh53sHkMd27dQP"}, "quantity": 65, "type": "CURRENCY"}], "rvn": 19}, {"autoUpdate": true, "enableRevocation": true, "id": "pxyz0Bz1tgY69RoW", "rewards": [{"currency": {"currencyCode": "3qUcH3xMyYmahR1y", "namespace": "26buySmwNxHd8OXG"}, "item": {"itemId": "SpM6WotldtGxEmq0", "itemName": "PZIMNxqLzHNQjRUd", "itemSku": "oIjEfjS4wMkhri0v", "itemType": "21sNJ6TshYxzkFHX"}, "quantity": 47, "type": "ITEM"}, {"currency": {"currencyCode": "ZVhJmnvMJpCsFXvq", "namespace": "KTBeJeZWKmoVH2Gp"}, "item": {"itemId": "VtRhYMtaUxYVs1rG", "itemName": "3zAfDlXs4cQZylMd", "itemSku": "HScn7JUMCDx6TxQ8", "itemType": "3kI3ThoJy9XJJQwt"}, "quantity": 73, "type": "ITEM"}, {"currency": {"currencyCode": "SvANZvNPSJ6xpmFR", "namespace": "7cTJtt3qf7stKNZl"}, "item": {"itemId": "NIJN9JqB8EXNLMaB", "itemName": "h3dJ8HP6J6IwR75W", "itemSku": "1lGeVCN0RxwYaYaQ", "itemType": "pZOaU9wU3wC9OXFu"}, "quantity": 95, "type": "CURRENCY"}], "rvn": 98}]}' \
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
    --body '{"data": [{"platform": "PSN", "platformDlcIdMap": {"cygwmULMWfTC17UC": "CVWO1CHyyhrFsC3h", "6bNOiKHVhUO3vGlk": "GKBo6W6JSHSD1HJI", "PL7LhKqypmXnqHow": "Qf7JJMAEp2q7aEVY"}}, {"platform": "STEAM", "platformDlcIdMap": {"Gg49VQCdXNA2oWr7": "I0YEvpJ2F1v1W63D", "T3YLhY204uj27WZZ": "WRPguvjqJympVEbE", "UvqVrgMVp7x0X3nx": "syuU1mPzBOBpUgaw"}}, {"platform": "PSN", "platformDlcIdMap": {"qSPBkPAqH9q2lO0i": "J5ZKalcWlABtJcuB", "X0dE6dHQEFR1wFrS": "5PHFHoIa5Hl3YGUs", "fP4iB0D8ZTtKv3nU": "X11FnKTgZCOrF5gl"}}]}' \
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
    --appType 'SOFTWARE' \
    --entitlementClazz 'OPTIONBOX' \
    --entitlementName 'lSxG4RVGGuzUzAgc' \
    --itemId '["A7Q1SVocSEgciCzi", "fhRgFeMZqiMevlDD", "WYhdIn3xDKHww4dq"]' \
    --limit '64' \
    --offset '28' \
    --origin 'Nintendo' \
    --userId '83iOkIp21oKpeS2i' \
    > test.out 2>&1
eval_tap $? 65 'QueryEntitlements' test.out

#- 66 QueryEntitlementsByItemIds
samples/cli/sample-apps Platform queryEntitlementsByItemIds \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --itemIds '["z2Ocry6E26u19XW3", "R29A5f3AAUOhM13b", "zSoVsfDbG7uNutYQ"]' \
    --limit '49' \
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
    --body '{"entitlementGrantList": [{"collectionId": "q1MXrM6YUrONYzcw", "endDate": "1998-06-13T00:00:00Z", "grantedCode": "fMoVC4Wy24PmDI2C", "itemId": "cIQfx5sg2YYZkxil", "itemNamespace": "FzFkfCEur1MMP8Vl", "language": "stc_ipkn-916", "metadata": {"CyjTk8iIrEJUB4tz": {}, "xoE1xT8ciQR1O7wy": {}, "GoRAEZsAC7nIpsTE": {}}, "origin": "Oculus", "quantity": 47, "region": "HFulvvS47M3Esfuh", "source": "PURCHASE", "startDate": "1974-11-19T00:00:00Z", "storeId": "giyaj63RKAXIuOdH"}, {"collectionId": "GcUM1DiwSwVWcT2h", "endDate": "1979-12-19T00:00:00Z", "grantedCode": "rUqqZnhMjZfvDPXu", "itemId": "PZELbtjZbkFGhzLV", "itemNamespace": "YBthVAaOYuorz6Gr", "language": "xUmr-VZXv", "metadata": {"KnORZDtr64uXsOAw": {}, "varNvps7l2hwtkfq": {}, "LKeT1YhkV5lXJwJN": {}}, "origin": "Oculus", "quantity": 47, "region": "kVHSVXfZjw3HK8se", "source": "PROMOTION", "startDate": "1976-10-10T00:00:00Z", "storeId": "WNlFeGnLQh52BxhV"}, {"collectionId": "keps9Jk3vYd07FpM", "endDate": "1982-09-20T00:00:00Z", "grantedCode": "h4LTFvrbcfsZsn6r", "itemId": "tvH188K11Kk3V4dq", "itemNamespace": "O2fx0eIzJaQQj1PR", "language": "DCIk", "metadata": {"9ZWAxeazdTBPnSaG": {}, "ZaHXBcg4J5os6fQO": {}, "RGfEc4bSAzOHLr3s": {}}, "origin": "Twitch", "quantity": 71, "region": "VezH1qjuwQ4bK7sc", "source": "PROMOTION", "startDate": "1988-10-27T00:00:00Z", "storeId": "6a8QtvEdKuXSyBxV"}], "userIds": ["ZVBORAM8egpXYNcF", "F4uKBWVqSSkpxFzw", "uLbbVfN2atM07hfd"]}' \
    > test.out 2>&1
eval_tap $? 69 'GrantEntitlements' test.out

#- 70 RevokeEntitlements
samples/cli/sample-apps Platform revokeEntitlements \
    --namespace $AB_NAMESPACE \
    --body '["bCXovsdrEz3FRmWm", "M6kIW4IrR1O3Q8T3", "XRx3TXLvh92bDJUv"]' \
    > test.out 2>&1
eval_tap $? 70 'RevokeEntitlements' test.out

#- 71 GetEntitlement
samples/cli/sample-apps Platform getEntitlement \
    --entitlementId 'XB2oSpLsdcuzYRUV' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 71 'GetEntitlement' test.out

#- 72 QueryFulfillmentHistories
samples/cli/sample-apps Platform queryFulfillmentHistories \
    --namespace $AB_NAMESPACE \
    --limit '15' \
    --offset '30' \
    --status 'FAIL' \
    --userId '9MBElMHn0N6IV6yO' \
    > test.out 2>&1
eval_tap $? 72 'QueryFulfillmentHistories' test.out

#- 73 QueryIAPClawbackHistory
samples/cli/sample-apps Platform queryIAPClawbackHistory \
    --namespace $AB_NAMESPACE \
    --endTime 'fRiXdBkcZj339HpT' \
    --eventType 'CHARGEBACK_REVERSED' \
    --externalOrderId 'CUv8B0ItXWvsDwtR' \
    --limit '36' \
    --offset '75' \
    --startTime 'r0PV7z5GrCt2U07L' \
    --status 'IGNORED' \
    --userId 'xKnLYbmsqS9xOtDq' \
    > test.out 2>&1
eval_tap $? 73 'QueryIAPClawbackHistory' test.out

#- 74 MockPlayStationStreamEvent
samples/cli/sample-apps Platform mockPlayStationStreamEvent \
    --namespace $AB_NAMESPACE \
    --body '{"body": {"account": "axn258qhsW7O08S3", "additionalData": {"entitlement": [{"clientTransaction": [{"amountConsumed": 92, "clientTransactionId": "vLQHUNAnQcOfbPoC"}, {"amountConsumed": 28, "clientTransactionId": "L3o83Ob3J0KfqKGA"}, {"amountConsumed": 23, "clientTransactionId": "D1RwFIX7vjWjx2HS"}], "entitlementId": "smBDoK9L71zVBepI", "usageCount": 21}, {"clientTransaction": [{"amountConsumed": 50, "clientTransactionId": "pXJ4NGaysOZpGQZ7"}, {"amountConsumed": 57, "clientTransactionId": "4HBPzLgT5DIc4003"}, {"amountConsumed": 3, "clientTransactionId": "EkLAm7Vsvg9JLMkd"}], "entitlementId": "aJ1hjqoDDQyLivI9", "usageCount": 87}, {"clientTransaction": [{"amountConsumed": 32, "clientTransactionId": "aqiau7mtpZj13egd"}, {"amountConsumed": 33, "clientTransactionId": "UDmo2OYTUfEZSgPt"}, {"amountConsumed": 20, "clientTransactionId": "dCm571Xcwg2yftNj"}], "entitlementId": "FoKNNNQuoo2AQ8l3", "usageCount": 1}], "purpose": "XWrK0hUPxMvrzcIO"}, "originalTitleName": "nGdAT550N275W3yB", "paymentProductSKU": "N6t1o0WdMFnCMXfV", "purchaseDate": "3xXdupbEw2XFpO0d", "sourceOrderItemId": "bWlERo3CjAYC2VON", "titleName": "N4MbmbvfP2LSVA3t"}, "eventDomain": "WWoenF3xXImRk6rk", "eventSource": "yWYevnAevx0n8sQA", "eventType": "ELziMNTldXflEUbb", "eventVersion": 60, "id": "r4mIX8bqkAzKstjB", "timestamp": "4Y2GJ1RE1DX3qzaD"}' \
    > test.out 2>&1
eval_tap $? 74 'MockPlayStationStreamEvent' test.out

#- 75 MockXblClawbackEvent
samples/cli/sample-apps Platform mockXblClawbackEvent \
    --namespace $AB_NAMESPACE \
    --body '{"data": {"eventDate": "w6LMhBJsSyRBkE5W", "eventState": "2lnxjl3meF7wfDpI", "lineItemId": "28Mjg5AVMforfSq2", "orderId": "IMPpsCZDaX3vZHie", "productId": "FB2XcBqKQwH0AaNI", "productType": "WDtgTplJhrw5hahk", "purchasedDate": "PDD0iUQ1YAX6ni2O", "sandboxId": "ObFQA3IZBMpYzGtS", "skuId": "0OZmM5Smu5uCNw9T", "subscriptionData": {"consumedDurationInDays": 22, "dateTime": "Lu2EOcZ1MxUx7lzr", "durationInDays": 48, "recurrenceId": "3ZrVz0mXycuYXxne"}}, "datacontenttype": "ZMSudzteSmP7pERJ", "id": "6WR27CvHMW2iM6DU", "source": "cRb1wnDTUrCBBgxH", "specVersion": "DKBuO6enlIoROO5B", "subject": "wQHUOszrPOPrYKCC", "time": "ytwywQJJwtEpYGnY", "traceparent": "R89q59ETins5N73G", "type": "sBN0VT3CTGH6vdEt"}' \
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
    --body '{"appAppleId": 46, "bundleId": "A3k11ERq7yRvfHDT", "issuerId": "69s8uryO6NIDttpq", "keyId": "CdJt8WsqqMxJP0sf", "password": "hXiC7A6Nt8lRoOvu", "version": "V1"}' \
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
    --body '{"sandboxId": "RA6mKKG2aGnDVhiX"}' \
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
    --body '{"applicationName": "VPvBiDvb2XFaiUfH", "notificationTokenAudience": "vM9ozji7W08lL7Ds", "notificationTokenEmail": "tWMoMYov6rLWJAZu", "packageName": "6i9swuU0bpEjWBlF", "serviceAccountId": "pXiOdi3rttE3WYUA"}' \
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
    --body '{"data": [{"itemIdentity": "KYAxITI8CYBEL8Ei", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"ktxUThGbLPr6kX3j": "49EVRcYqcdFPxBOs", "JJTi3QMPfgcD3OPj": "ByB9nejKkM96pi6B", "rD5Dxfq95D5gqH1j": "V6oprQXCEsrkHco5"}}, {"itemIdentity": "dAxvaWK8XnxQB47k", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"PA3ffYkWB086eu0n": "4GXOHaLpgf2WHILS", "vsAWe0CE5dzAM4P2": "unEgCItNG10655a3", "YAVglvwcaSpTrne3": "jvd5bkkAl72jsBUO"}}, {"itemIdentity": "p9KCVfUOduajJKtO", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"TtHpihsXmAUqZaJo": "nH7NbGfwgip66JE7", "4QvA0XlV10lueGSB": "n40nrv6LHM3gEEdm", "rgTjgk1xtLuporW2": "iab8WGJ3ndv5Zja2"}}]}' \
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
    --body '{"appId": "Nc9yISC09Jxeli7c", "appSecret": "rmPMwM3opTk4gec8", "webhookVerifyToken": "pwteLWLfPlbLy66a"}' \
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
    --body '{"sku": "zYgBdnFySvRUVhaW"}' \
    > test.out 2>&1
eval_tap $? 94 'CreateOculusSubscriptionGroup' test.out

#- 95 DeleteOculusSubscriptionGroup
samples/cli/sample-apps Platform deleteOculusSubscriptionGroup \
    --namespace $AB_NAMESPACE \
    --sku 'zSFjBJq7MfpfQZCI' \
    > test.out 2>&1
eval_tap $? 95 'DeleteOculusSubscriptionGroup' test.out

#- 96 ListOculusSubscriptionGroupTier
samples/cli/sample-apps Platform listOculusSubscriptionGroupTier \
    --namespace $AB_NAMESPACE \
    --sku '3aWck2mLx00HfhCZ' \
    > test.out 2>&1
eval_tap $? 96 'ListOculusSubscriptionGroupTier' test.out

#- 97 AddTierIntoMetaQuestSubscriptionGroup
samples/cli/sample-apps Platform addTierIntoMetaQuestSubscriptionGroup \
    --namespace $AB_NAMESPACE \
    --body '{"groupSku": "pU2uZajBx4z5cLTV", "sku": "2NIxMufKkTetSuzB"}' \
    > test.out 2>&1
eval_tap $? 97 'AddTierIntoMetaQuestSubscriptionGroup' test.out

#- 98 DeleteOculusSubscriptionTier
samples/cli/sample-apps Platform deleteOculusSubscriptionTier \
    --namespace $AB_NAMESPACE \
    --sku 'VS0SHq2QHi5CmYPd' \
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
    --body '{"backOfficeServerClientId": "8LBNUEVUyMq3QsMb", "backOfficeServerClientSecret": "dfmkW0BxSWzFaBPV", "enableStreamJob": false, "environment": "sPPANawps9xM9aiE", "streamName": "jqQioNy7wYzTIWib", "streamPartnerName": "9HbNicmizVNtxqRR"}' \
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
    --body '{"backOfficeServerClientId": "7w7z9vV3nsOlxQmL", "backOfficeServerClientSecret": "vw4weYn0bV5Ja7hB", "enableStreamJob": true, "environment": "2FUL7MHF7287P4k2", "streamName": "wHvLiP9UefoiZqfc", "streamPartnerName": "3yrt4H8uaflEeE3F"}' \
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
    --body '{"appId": "cfadvJ9C5QrhqKvi", "env": "LIVE", "publisherAuthenticationKey": "lfYW5o6S2Z2vb1sh", "syncMode": "TRANSACTION"}' \
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
    --body '{"clientId": "KTfv7wiuoj7UZ8qR", "clientSecret": "81w8iuV4EOkfDIlA", "organizationId": "wgjJwgONppbYDJXW"}' \
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
    --body '{"enableClawback": true, "entraAppClientId": "tlZu9eGw7OoCAXnu", "entraAppClientSecret": "UNNuH3OjCUIPpAl0", "entraTenantId": "Tt49WmXkgrxaHwQP", "relyingPartyCert": "hBP2k5wVIJEwC8TP"}' \
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
    --password 'JEfLR6hy8Msrpmby' \
    > test.out 2>&1
eval_tap $? 113 'UpdateXblBPCertFile' test.out

#- 114 QueryThirdPartyNotifications
samples/cli/sample-apps Platform queryThirdPartyNotifications \
    --namespace $AB_NAMESPACE \
    --endDate 'kCfXVyaln6ALyLsd' \
    --externalId 'llV5WFhK3PllUvrz' \
    --limit '23' \
    --offset '46' \
    --source 'TWITCH' \
    --startDate 'X8E8acPVWhOlkPqS' \
    --status 'PROCESSED' \
    --type 'hWDD7Y5eQQyEhs7s' \
    > test.out 2>&1
eval_tap $? 114 'QueryThirdPartyNotifications' test.out

#- 115 QueryAbnormalTransactions
samples/cli/sample-apps Platform queryAbnormalTransactions \
    --namespace $AB_NAMESPACE \
    --limit '35' \
    --offset '76' \
    --orderId 'rdmwJbMVVQclpPEd' \
    --steamId '2PC3KNGyIeBqS2ki' \
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
    --body '{"env": "SANDBOX", "lastTime": "1982-02-24T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 117 'AdminResetSteamJobTime' test.out

#- 118 AdminRefundIAPOrder
samples/cli/sample-apps Platform adminRefundIAPOrder \
    --iapOrderNo 'QGvxEqNZNxnCFe94' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 118 'AdminRefundIAPOrder' test.out

#- 119 QuerySteamReportHistories
samples/cli/sample-apps Platform querySteamReportHistories \
    --namespace $AB_NAMESPACE \
    --limit '92' \
    --offset '57' \
    --orderId 'M42lHWaFHIODQe8J' \
    --processStatus 'PROCESSED' \
    --steamId 'eHhYbtKW4QLWcbqE' \
    > test.out 2>&1
eval_tap $? 119 'QuerySteamReportHistories' test.out

#- 120 QueryThirdPartySubscription
samples/cli/sample-apps Platform queryThirdPartySubscription \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --groupId 'sSbnseeyBLE0HWys' \
    --limit '78' \
    --offset '72' \
    --platform 'GOOGLE' \
    --productId 'HXwkmIo15DhgSHmv' \
    --userId 'pSjuH5vWXwhDovHu' \
    > test.out 2>&1
eval_tap $? 120 'QueryThirdPartySubscription' test.out

#- 121 GetIAPOrderConsumeDetails
samples/cli/sample-apps Platform getIAPOrderConsumeDetails \
    --iapOrderNo 'PGs7o1jATcugefbs' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 121 'GetIAPOrderConsumeDetails' test.out

#- 122 DownloadInvoiceDetails
samples/cli/sample-apps Platform downloadInvoiceDetails \
    --namespace $AB_NAMESPACE \
    --endTime 'vl30L37Lml3eCBe8' \
    --feature 'lc23wvxiKfLdplz1' \
    --itemId '3nkoEkLzNWYbX3Hx' \
    --itemType 'COINS' \
    --startTime 'ANQzX9eXLJs92Tt1' \
    > test.out 2>&1
eval_tap $? 122 'DownloadInvoiceDetails' test.out

#- 123 GenerateInvoiceSummary
samples/cli/sample-apps Platform generateInvoiceSummary \
    --namespace $AB_NAMESPACE \
    --endTime 'RBoMv8KOGJoF8kYj' \
    --feature 'f14MTREYKIR8bxzx' \
    --itemId 'jf2fWIgbYPNXVmFw' \
    --itemType 'EXTENSION' \
    --startTime '7Nu3Vw0NFGf26TXk' \
    > test.out 2>&1
eval_tap $? 123 'GenerateInvoiceSummary' test.out

#- 124 SyncInGameItem
samples/cli/sample-apps Platform syncInGameItem \
    --namespace $AB_NAMESPACE \
    --storeId 'IxVP6keBNY9ORYoh' \
    --body '{"categoryPath": "dDA1k1zjFtxthqhO", "targetItemId": "IsWFLKE8ISQwaUmH", "targetNamespace": "guhuHWy81z9z0a79"}' \
    > test.out 2>&1
eval_tap $? 124 'SyncInGameItem' test.out

#- 125 CreateItem
samples/cli/sample-apps Platform createItem \
    --namespace $AB_NAMESPACE \
    --storeId 'j9UYlYkH9sHs8Okf' \
    --body '{"appId": "0R5Atgkdwo5qx3Hz", "appType": "DLC", "baseAppId": "zYmYZX2OV7yjobAc", "boothName": "Z5UoYftK62rK5kJG", "categoryPath": "CzxFqAyGKd8dVK0g", "clazz": "bDTukIljAQ4ZbbMy", "displayOrder": 64, "entitlementType": "CONSUMABLE", "ext": {"lTNkkEO94WcfrPi8": {}, "H09uYluP0h6VKKun": {}, "tw1DJZtj9jhEygAK": {}}, "features": ["TQLfXN9hHY4gfOCD", "D0ydnBXEAtLD52E7", "ugEum2teIxL8d3ls"], "flexible": false, "images": [{"as": "CXryZY20oSEKtdTe", "caption": "YLp01Q5cb76vluqd", "height": 13, "imageUrl": "iYO65sHKQrD3poT5", "smallImageUrl": "yVhesfJuW1BL6rIj", "width": 88}, {"as": "CnLWjJQnBpeo3gIR", "caption": "Gyqa3SgDlT9Jqkuz", "height": 8, "imageUrl": "JpcmDY7hruuC0uzQ", "smallImageUrl": "XjP0BwvKYcBXUiNF", "width": 31}, {"as": "g2PS4ZDsfXcJH48T", "caption": "VPilkYsv44tedP2t", "height": 48, "imageUrl": "OdhHeRZudK3F8M9U", "smallImageUrl": "yZwMsO0ZGE8jHDOt", "width": 19}], "inventoryConfig": {"customAttributes": {"wDyZ1iXU6j7mbP48": {}, "tw9SLgVdCKX4TbbJ": {}, "OEMpgQ73mvAqzTyu": {}}, "serverCustomAttributes": {"GlPznJoNTBJiDo6E": {}, "Ebs6KeJMW1SNXAOF": {}, "dLA91hLHDLtQLPKO": {}}, "slotUsed": 25}, "itemId": "iaC8mSuHFI2K29Cy", "itemIds": ["W9MmeXKLCTvOSWhv", "lau0VQzPKccWC9Ig", "VWKxGLzR2i10ex3Q"], "itemQty": {"YaAz6oEDVKFCHPzV": 57, "pKwXYPNw4b7IwZz2": 32, "kar7w1zYvEZwjTQw": 15}, "itemType": "COINS", "listable": true, "localizations": {"ZsFZDzspVduFWMUI": {"description": "hfo9V5K7yq4NyFXK", "localExt": {"nxm7fpiS63Ao16dM": {}, "Eeuh4D62LaPSesR7": {}, "w6EiSGnRuZU0ZLbj": {}}, "longDescription": "jLR3tystMvArSB9T", "title": "DPGB1d4KB2GQcDvR"}, "v7JaNJIHQONnSv3G": {"description": "PAiO5RxILoG702fP", "localExt": {"7yky2YG5GDsvU1wA": {}, "P513uPHAbCw4Fh3Y": {}, "pHLI7xz2dUAdOpWF": {}}, "longDescription": "p5f0Nv5fmJs3K737", "title": "VoqLROctVMInkNyT"}, "2kzLUdji4sIrqqQK": {"description": "4UZOPqZAuKlDtLjy", "localExt": {"yymMqsJ0TG0aQVLm": {}, "CvfvJGgP6tfVVJUG": {}, "2NBHSKMSM24KSouC": {}}, "longDescription": "HGpXV5j6ylx3odHO", "title": "7Er6L6mhV7ebrYkS"}}, "lootBoxConfig": {"rewardCount": 68, "rewards": [{"lootBoxItems": [{"count": 45, "duration": 95, "endDate": "1986-06-15T00:00:00Z", "itemId": "L6Jf20fhnsIDvsFS", "itemSku": "LxGQ5dOgRrr3FEJh", "itemType": "x8OvcNbvkA1SKiBo"}, {"count": 91, "duration": 20, "endDate": "1989-04-19T00:00:00Z", "itemId": "vdFckrRHqedHaMQe", "itemSku": "hJr78eQMGkvjUIUQ", "itemType": "Xc5NlrQ4pTe8FcXh"}, {"count": 23, "duration": 98, "endDate": "1979-05-08T00:00:00Z", "itemId": "6bqPO2nDyTjSlm7r", "itemSku": "0oGiZn5UDCc4Bn37", "itemType": "vsiZogP4DH500p3M"}], "name": "YPfV8Uv15wjkbTmR", "odds": 0.5782036538250745, "type": "PROBABILITY_GROUP", "weight": 4}, {"lootBoxItems": [{"count": 50, "duration": 16, "endDate": "1981-04-01T00:00:00Z", "itemId": "ZGyj33DqTknPCGEi", "itemSku": "0Mk0O0XhJrWj3Zhg", "itemType": "OCDxd6nwPdxczR20"}, {"count": 78, "duration": 56, "endDate": "1988-08-02T00:00:00Z", "itemId": "BuJ0PkH0KSpFQOAw", "itemSku": "ZkFfykSdlJj2skp6", "itemType": "dKUJ4HAZMhTyxaKU"}, {"count": 96, "duration": 77, "endDate": "1971-05-27T00:00:00Z", "itemId": "aQtJH2VesZqzxlmT", "itemSku": "CaBOWe61pH2qnZAl", "itemType": "yfxxjfbcIt4xBGni"}], "name": "eK7daf6bpYqub1GQ", "odds": 0.8160206539344179, "type": "REWARD", "weight": 47}, {"lootBoxItems": [{"count": 83, "duration": 47, "endDate": "1988-12-02T00:00:00Z", "itemId": "fBjo5HeTwnmHllJv", "itemSku": "YJuYPs58filcD0t8", "itemType": "8TfiCRatDEowLCjw"}, {"count": 26, "duration": 37, "endDate": "1978-02-18T00:00:00Z", "itemId": "ZEma4L14yF7oXiDZ", "itemSku": "TYeQOZARapyLsvIt", "itemType": "Jc53nevO8qeqqxQ4"}, {"count": 19, "duration": 83, "endDate": "1993-01-16T00:00:00Z", "itemId": "NjxOddIf1ypOatvO", "itemSku": "GM1Hho9VxGIDueQj", "itemType": "Hh2wDox6sHXPXMjk"}], "name": "4MZWoeLmA02nzqrF", "odds": 0.8004769716962764, "type": "PROBABILITY_GROUP", "weight": 41}], "rollFunction": "CUSTOM"}, "maxCount": 63, "maxCountPerUser": 11, "name": "aAj4Ed1ceO3AGD5C", "optionBoxConfig": {"boxItems": [{"count": 8, "duration": 51, "endDate": "1987-01-12T00:00:00Z", "itemId": "7syOXwkFtTDyiULx", "itemSku": "52cmEpG9N1PsOxPA", "itemType": "w1cqtuOWPGWuFsST"}, {"count": 30, "duration": 32, "endDate": "1981-07-07T00:00:00Z", "itemId": "pYMISu5m95aQpkSl", "itemSku": "TbfNFKkm02iDtus2", "itemType": "auwj6IjegvgcFuRk"}, {"count": 93, "duration": 89, "endDate": "1977-06-15T00:00:00Z", "itemId": "1tRtdx7fT1zSkLUq", "itemSku": "90WDZ6WFA9R1UypO", "itemType": "EAoPqR8i6EZpmhao"}]}, "purchasable": false, "recurring": {"cycle": "YEARLY", "fixedFreeDays": 55, "fixedTrialCycles": 69, "graceDays": 53}, "regionData": {"G57XnWUsCA3gwFEe": [{"currencyCode": "iGvCeci7UfUlZoOV", "currencyNamespace": "zQc03zbYjxmpE14f", "currencyType": "VIRTUAL", "discountAmount": 7, "discountExpireAt": "1991-11-27T00:00:00Z", "discountPercentage": 58, "discountPurchaseAt": "1996-11-24T00:00:00Z", "expireAt": "1977-09-04T00:00:00Z", "price": 49, "purchaseAt": "1988-11-23T00:00:00Z", "trialPrice": 0}, {"currencyCode": "FZguwJrfH76QxmPR", "currencyNamespace": "Qs8dVAWj4OSw3OJn", "currencyType": "REAL", "discountAmount": 17, "discountExpireAt": "1993-05-01T00:00:00Z", "discountPercentage": 9, "discountPurchaseAt": "1977-12-12T00:00:00Z", "expireAt": "1991-02-07T00:00:00Z", "price": 51, "purchaseAt": "1978-06-25T00:00:00Z", "trialPrice": 61}, {"currencyCode": "EC8EZRPAEvfO7d2D", "currencyNamespace": "exPSL46bG6goAoqw", "currencyType": "REAL", "discountAmount": 93, "discountExpireAt": "1988-04-27T00:00:00Z", "discountPercentage": 92, "discountPurchaseAt": "1986-07-24T00:00:00Z", "expireAt": "1998-02-21T00:00:00Z", "price": 25, "purchaseAt": "1994-05-11T00:00:00Z", "trialPrice": 38}], "KarerC6zsJu5CFtg": [{"currencyCode": "XPkVd9SdrSqh1rcB", "currencyNamespace": "HxNMBNeCOJjeTBHe", "currencyType": "REAL", "discountAmount": 61, "discountExpireAt": "1989-09-25T00:00:00Z", "discountPercentage": 4, "discountPurchaseAt": "1972-06-19T00:00:00Z", "expireAt": "1987-11-27T00:00:00Z", "price": 19, "purchaseAt": "1976-03-08T00:00:00Z", "trialPrice": 9}, {"currencyCode": "byE3vYsdltQEwvlL", "currencyNamespace": "l3JiEqawsi6iyLuP", "currencyType": "VIRTUAL", "discountAmount": 25, "discountExpireAt": "1988-03-12T00:00:00Z", "discountPercentage": 59, "discountPurchaseAt": "1985-04-24T00:00:00Z", "expireAt": "1972-11-05T00:00:00Z", "price": 7, "purchaseAt": "1999-01-15T00:00:00Z", "trialPrice": 67}, {"currencyCode": "xxSbneaOO2w118MM", "currencyNamespace": "CZZmXb1wW6lLquWb", "currencyType": "VIRTUAL", "discountAmount": 57, "discountExpireAt": "1982-08-01T00:00:00Z", "discountPercentage": 5, "discountPurchaseAt": "1988-06-12T00:00:00Z", "expireAt": "1988-10-18T00:00:00Z", "price": 93, "purchaseAt": "1987-03-28T00:00:00Z", "trialPrice": 94}], "z4JSBS7srCXwJ5xG": [{"currencyCode": "es6PrhI5Cc8ICeBw", "currencyNamespace": "PsP6Vtv6XdjZCR5R", "currencyType": "VIRTUAL", "discountAmount": 0, "discountExpireAt": "1973-11-17T00:00:00Z", "discountPercentage": 61, "discountPurchaseAt": "1987-08-01T00:00:00Z", "expireAt": "1998-01-01T00:00:00Z", "price": 69, "purchaseAt": "1977-09-14T00:00:00Z", "trialPrice": 10}, {"currencyCode": "ZYxB6qgiNTTBn995", "currencyNamespace": "KORlR3SOF8NWaljI", "currencyType": "REAL", "discountAmount": 36, "discountExpireAt": "1999-03-25T00:00:00Z", "discountPercentage": 97, "discountPurchaseAt": "1998-01-08T00:00:00Z", "expireAt": "1983-01-26T00:00:00Z", "price": 50, "purchaseAt": "1995-04-03T00:00:00Z", "trialPrice": 0}, {"currencyCode": "sjeCZFOSvRPOi73A", "currencyNamespace": "gDxf5X2aH6cntRBv", "currencyType": "REAL", "discountAmount": 97, "discountExpireAt": "1979-10-15T00:00:00Z", "discountPercentage": 0, "discountPurchaseAt": "1986-03-02T00:00:00Z", "expireAt": "1989-10-22T00:00:00Z", "price": 92, "purchaseAt": "1994-11-23T00:00:00Z", "trialPrice": 80}]}, "saleConfig": {"currencyCode": "kRur47RtXhC0hKiX", "price": 37}, "seasonType": "TIER", "sectionExclusive": true, "sellable": true, "sku": "jI5KWD89V6ZUOhyZ", "stackable": true, "status": "INACTIVE", "tags": ["XmpGM5T270cIF0tt", "X1EsaVYvNWJ5ynK6", "X39PTN2XDFX4IrOW"], "targetCurrencyCode": "6gntKOXT7YvEBjFS", "targetNamespace": "JlpQDa605azZnYVr", "thumbnailUrl": "WccXoQtuK35xsW9k", "useCount": 51}' \
    > test.out 2>&1
eval_tap $? 125 'CreateItem' test.out

#- 126 GetItemByAppId
samples/cli/sample-apps Platform getItemByAppId \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'JSTS53e59LXrQ4jA' \
    --appId 'dra0PBWmt3tZMEZM' \
    > test.out 2>&1
eval_tap $? 126 'GetItemByAppId' test.out

#- 127 QueryItems
samples/cli/sample-apps Platform queryItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --appType 'DEMO' \
    --availableDate 'JfKwqbGnhAyQWFtU' \
    --baseAppId 'wc4mKd1DHqsukiJH' \
    --categoryPath 'yGM2gZlIw5ZTFCii' \
    --features 'OCi0n1W9B6f1hDOx' \
    --includeSubCategoryItem 'false' \
    --itemType 'APP' \
    --limit '41' \
    --offset '6' \
    --region 'aUPg23lQcpVuur3E' \
    --sortBy '["updatedAt:desc", "createdAt", "createdAt:desc"]' \
    --storeId 'jk1cSIchCbP9EIBW' \
    --tags 'giDTFpK5KqHCz1A1' \
    --targetNamespace 'd6WL4LLhc2BLbcAs' \
    > test.out 2>&1
eval_tap $? 127 'QueryItems' test.out

#- 128 ListBasicItemsByFeatures
samples/cli/sample-apps Platform listBasicItemsByFeatures \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --features '["co0xtsbiCCS6Qmw1", "CCqC5gIENqszapZR", "vIrBL40eLe3p09MJ"]' \
    > test.out 2>&1
eval_tap $? 128 'ListBasicItemsByFeatures' test.out

#- 129 GetItems
samples/cli/sample-apps Platform getItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --storeId 'SdGWLZydu1x2Yv2s' \
    --itemIds 'adR9KGhIdTiFJo1C' \
    > test.out 2>&1
eval_tap $? 129 'GetItems' test.out

#- 130 GetItemBySku
samples/cli/sample-apps Platform getItemBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'b91BSDec72VLXbTT' \
    --sku '2NpSOHXmrz2DPVRj' \
    > test.out 2>&1
eval_tap $? 130 'GetItemBySku' test.out

#- 131 GetLocaleItemBySku
samples/cli/sample-apps Platform getLocaleItemBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --language 'JxZinocF1hYYQ4g6' \
    --populateBundle 'true' \
    --region 'pko5V141RoN9K2v7' \
    --storeId 'vOUZ3SYkjDyyKVBV' \
    --sku '9U4RGPXlOEMYKkEp' \
    > test.out 2>&1
eval_tap $? 131 'GetLocaleItemBySku' test.out

#- 132 GetEstimatedPrice
samples/cli/sample-apps Platform getEstimatedPrice \
    --namespace $AB_NAMESPACE \
    --platform 'mAD0QLzlK6TE0pTj' \
    --region 'OB5cMjK3eENFEWBL' \
    --storeId '3NPyI8b5CdrTkCCM' \
    --itemIds 'l8QxqqNu5CzmWNUS' \
    --userId 'xaPufhjxu7fUYTn9' \
    > test.out 2>&1
eval_tap $? 132 'GetEstimatedPrice' test.out

#- 133 GetItemIdBySku
samples/cli/sample-apps Platform getItemIdBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --storeId 'qlk9I00YVgoX4Quv' \
    --sku 'xIA4kuqal7FTVXXT' \
    > test.out 2>&1
eval_tap $? 133 'GetItemIdBySku' test.out

#- 134 GetBulkItemIdBySkus
samples/cli/sample-apps Platform getBulkItemIdBySkus \
    --namespace $AB_NAMESPACE \
    --sku '["h8yVuNYiKqKZhSyY", "YtCY9OLAAUilJIT8", "QU8xvBADjibQ4Lgn"]' \
    --storeId 'uYu4YgMPPhIjmLP5' \
    > test.out 2>&1
eval_tap $? 134 'GetBulkItemIdBySkus' test.out

#- 135 BulkGetLocaleItems
samples/cli/sample-apps Platform bulkGetLocaleItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --language 'YkD9yDXPq4Opawqg' \
    --region 'MCRRyl8CR93vFSJf' \
    --storeId 'X3Ya3FruRRnkepHN' \
    --itemIds 'Mo1qc7TGHQz3LM1Y' \
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
    --platform 'CdMt0V3sC3dJWHFz' \
    --userId '5pqusQPNmHT6qxPH' \
    --body '{"itemIds": ["1pv7gcKziu35Ca10", "u3A9zjKUzEAPPQdS", "DlQysI8x3HDR02KI"]}' \
    > test.out 2>&1
eval_tap $? 137 'ValidateItemPurchaseCondition' test.out

#- 138 BulkUpdateRegionData
samples/cli/sample-apps Platform bulkUpdateRegionData \
    --namespace $AB_NAMESPACE \
    --storeId 'q2Xv5pEKFbGaa8XJ' \
    --body '{"changes": [{"itemIdentities": ["j4yhAAXHXJqKn91x", "QcienYtvb6Qgzbd3", "hVYf4kgR0DVHizde"], "itemIdentityType": "ITEM_SKU", "regionData": {"oWeE3EmeRT19UYGz": [{"currencyCode": "otzJxWuLEH0od701", "currencyNamespace": "KEBJ9irwEpsnv4aZ", "currencyType": "REAL", "discountAmount": 69, "discountExpireAt": "1989-11-19T00:00:00Z", "discountPercentage": 100, "discountPurchaseAt": "1985-10-22T00:00:00Z", "discountedPrice": 65, "expireAt": "1980-11-23T00:00:00Z", "price": 71, "purchaseAt": "1975-04-20T00:00:00Z", "trialPrice": 25}, {"currencyCode": "RNd7XkwriPM2j3Z8", "currencyNamespace": "RkzY1q6eesSYpeaT", "currencyType": "REAL", "discountAmount": 69, "discountExpireAt": "1977-09-20T00:00:00Z", "discountPercentage": 23, "discountPurchaseAt": "1981-04-05T00:00:00Z", "discountedPrice": 67, "expireAt": "1972-04-23T00:00:00Z", "price": 31, "purchaseAt": "1981-01-06T00:00:00Z", "trialPrice": 33}, {"currencyCode": "MPJ0WxxBjyfHkRCD", "currencyNamespace": "0Hz1mj23pyNllHR8", "currencyType": "VIRTUAL", "discountAmount": 53, "discountExpireAt": "1978-01-04T00:00:00Z", "discountPercentage": 27, "discountPurchaseAt": "1993-10-05T00:00:00Z", "discountedPrice": 77, "expireAt": "1975-03-21T00:00:00Z", "price": 78, "purchaseAt": "1972-09-16T00:00:00Z", "trialPrice": 77}], "yvMhL9TfY3XXKaSL": [{"currencyCode": "GuPNuAjvLXDyHEnF", "currencyNamespace": "LlZbhlmPrE5C0Bf7", "currencyType": "REAL", "discountAmount": 64, "discountExpireAt": "1985-01-23T00:00:00Z", "discountPercentage": 14, "discountPurchaseAt": "1997-04-10T00:00:00Z", "discountedPrice": 23, "expireAt": "1998-12-11T00:00:00Z", "price": 47, "purchaseAt": "1975-05-08T00:00:00Z", "trialPrice": 34}, {"currencyCode": "0jvaTzGywS4MKQh2", "currencyNamespace": "FKCZePU5fVO48avw", "currencyType": "VIRTUAL", "discountAmount": 17, "discountExpireAt": "1975-06-12T00:00:00Z", "discountPercentage": 86, "discountPurchaseAt": "1972-03-10T00:00:00Z", "discountedPrice": 92, "expireAt": "1985-07-29T00:00:00Z", "price": 88, "purchaseAt": "1975-04-25T00:00:00Z", "trialPrice": 26}, {"currencyCode": "ZTc02tks6rfCpo9J", "currencyNamespace": "e0QZErMHeRlUd8NE", "currencyType": "VIRTUAL", "discountAmount": 21, "discountExpireAt": "1981-09-24T00:00:00Z", "discountPercentage": 48, "discountPurchaseAt": "1973-03-03T00:00:00Z", "discountedPrice": 63, "expireAt": "1985-02-12T00:00:00Z", "price": 23, "purchaseAt": "1973-02-01T00:00:00Z", "trialPrice": 60}], "Pjj8AtBZN6pZTKhP": [{"currencyCode": "q1Q5RImynTSvhJro", "currencyNamespace": "vevoN6AXBrTLNQF2", "currencyType": "REAL", "discountAmount": 20, "discountExpireAt": "1978-04-30T00:00:00Z", "discountPercentage": 98, "discountPurchaseAt": "1994-06-25T00:00:00Z", "discountedPrice": 87, "expireAt": "1983-04-02T00:00:00Z", "price": 64, "purchaseAt": "1997-06-28T00:00:00Z", "trialPrice": 1}, {"currencyCode": "zyDmshHjrM3NHVf1", "currencyNamespace": "h2p1J2t9iWAWugTl", "currencyType": "VIRTUAL", "discountAmount": 25, "discountExpireAt": "1975-06-03T00:00:00Z", "discountPercentage": 79, "discountPurchaseAt": "1993-04-17T00:00:00Z", "discountedPrice": 33, "expireAt": "1971-09-20T00:00:00Z", "price": 28, "purchaseAt": "1980-11-11T00:00:00Z", "trialPrice": 73}, {"currencyCode": "E9NVVTYswoXNgrtU", "currencyNamespace": "fLnu3avV1l5LSB1y", "currencyType": "VIRTUAL", "discountAmount": 15, "discountExpireAt": "1981-01-25T00:00:00Z", "discountPercentage": 21, "discountPurchaseAt": "1995-01-01T00:00:00Z", "discountedPrice": 39, "expireAt": "1996-01-13T00:00:00Z", "price": 40, "purchaseAt": "1978-11-06T00:00:00Z", "trialPrice": 1}]}}, {"itemIdentities": ["AiVd8Opasej16rHr", "Mw3iGcYBP4E3V8Kg", "e8dCCPZNdsPF2ayG"], "itemIdentityType": "ITEM_SKU", "regionData": {"AfmFU9jglb58te0G": [{"currencyCode": "1ktvL1pkzW9RkHYx", "currencyNamespace": "8k3XtNmgg1xWWhhD", "currencyType": "VIRTUAL", "discountAmount": 6, "discountExpireAt": "1984-11-13T00:00:00Z", "discountPercentage": 86, "discountPurchaseAt": "1985-09-15T00:00:00Z", "discountedPrice": 47, "expireAt": "1990-06-06T00:00:00Z", "price": 86, "purchaseAt": "1989-08-26T00:00:00Z", "trialPrice": 20}, {"currencyCode": "jUnZhcBse0U9cXWB", "currencyNamespace": "owOlmd5AwDpkGrZL", "currencyType": "VIRTUAL", "discountAmount": 12, "discountExpireAt": "1986-02-23T00:00:00Z", "discountPercentage": 2, "discountPurchaseAt": "1982-02-02T00:00:00Z", "discountedPrice": 45, "expireAt": "1974-04-10T00:00:00Z", "price": 97, "purchaseAt": "1989-07-20T00:00:00Z", "trialPrice": 100}, {"currencyCode": "bRKUvURzkMLfWEWj", "currencyNamespace": "24ZKE2hq2T1fjNDg", "currencyType": "VIRTUAL", "discountAmount": 8, "discountExpireAt": "1985-01-09T00:00:00Z", "discountPercentage": 16, "discountPurchaseAt": "1995-06-13T00:00:00Z", "discountedPrice": 69, "expireAt": "1973-11-02T00:00:00Z", "price": 88, "purchaseAt": "1994-02-21T00:00:00Z", "trialPrice": 53}], "cyN4BbtmvdOelA45": [{"currencyCode": "7bZ30rQTVMGMpbaT", "currencyNamespace": "IyqGhvWve4temiVG", "currencyType": "REAL", "discountAmount": 86, "discountExpireAt": "1980-10-13T00:00:00Z", "discountPercentage": 84, "discountPurchaseAt": "1999-01-12T00:00:00Z", "discountedPrice": 26, "expireAt": "1991-10-21T00:00:00Z", "price": 33, "purchaseAt": "1982-09-13T00:00:00Z", "trialPrice": 46}, {"currencyCode": "s9wCB9zqmlU6X4ku", "currencyNamespace": "ax4K2gpsxlKcCL33", "currencyType": "REAL", "discountAmount": 74, "discountExpireAt": "1977-11-16T00:00:00Z", "discountPercentage": 68, "discountPurchaseAt": "1977-06-22T00:00:00Z", "discountedPrice": 5, "expireAt": "1991-02-26T00:00:00Z", "price": 39, "purchaseAt": "1983-06-03T00:00:00Z", "trialPrice": 39}, {"currencyCode": "Fmh1DqyW1DrzQBw9", "currencyNamespace": "sVKSlLzl7Ycqim2W", "currencyType": "VIRTUAL", "discountAmount": 68, "discountExpireAt": "1981-12-07T00:00:00Z", "discountPercentage": 42, "discountPurchaseAt": "1994-03-19T00:00:00Z", "discountedPrice": 75, "expireAt": "1978-11-29T00:00:00Z", "price": 22, "purchaseAt": "1991-01-06T00:00:00Z", "trialPrice": 60}], "YYeNORKD7rDjKBfI": [{"currencyCode": "ZcuqEdZQjQ0OTabe", "currencyNamespace": "x2jWxvNlwkl8zMSi", "currencyType": "VIRTUAL", "discountAmount": 9, "discountExpireAt": "1995-10-16T00:00:00Z", "discountPercentage": 4, "discountPurchaseAt": "1992-10-11T00:00:00Z", "discountedPrice": 2, "expireAt": "1980-04-16T00:00:00Z", "price": 0, "purchaseAt": "1980-04-06T00:00:00Z", "trialPrice": 18}, {"currencyCode": "MhQFvP6XyAJjO4Kz", "currencyNamespace": "fQ0csBKOE1a0bSly", "currencyType": "VIRTUAL", "discountAmount": 47, "discountExpireAt": "1972-12-30T00:00:00Z", "discountPercentage": 49, "discountPurchaseAt": "1989-11-28T00:00:00Z", "discountedPrice": 42, "expireAt": "1985-03-26T00:00:00Z", "price": 19, "purchaseAt": "1995-11-29T00:00:00Z", "trialPrice": 7}, {"currencyCode": "MaCGWh5VkH8VgchW", "currencyNamespace": "KWVYlcvLfS7TfY9P", "currencyType": "REAL", "discountAmount": 90, "discountExpireAt": "1987-03-08T00:00:00Z", "discountPercentage": 98, "discountPurchaseAt": "1976-09-01T00:00:00Z", "discountedPrice": 16, "expireAt": "1973-10-26T00:00:00Z", "price": 46, "purchaseAt": "1989-08-09T00:00:00Z", "trialPrice": 67}]}}, {"itemIdentities": ["krYTrxuDogPF378V", "Z17MvvAW56L9aGd2", "L11WuHIhngEBkGoN"], "itemIdentityType": "ITEM_SKU", "regionData": {"qoS7wa59qHX7ZuAa": [{"currencyCode": "P7MuU50dkVwe7jeU", "currencyNamespace": "m5E8AikuTb84fpgA", "currencyType": "VIRTUAL", "discountAmount": 56, "discountExpireAt": "1990-04-24T00:00:00Z", "discountPercentage": 40, "discountPurchaseAt": "1995-12-13T00:00:00Z", "discountedPrice": 95, "expireAt": "1995-01-04T00:00:00Z", "price": 29, "purchaseAt": "1991-05-02T00:00:00Z", "trialPrice": 14}, {"currencyCode": "tRAoQzwuiuMO9MpT", "currencyNamespace": "L2eCkN9adWeMkoBh", "currencyType": "VIRTUAL", "discountAmount": 21, "discountExpireAt": "1996-08-27T00:00:00Z", "discountPercentage": 74, "discountPurchaseAt": "1993-10-22T00:00:00Z", "discountedPrice": 98, "expireAt": "1972-12-15T00:00:00Z", "price": 85, "purchaseAt": "1994-05-31T00:00:00Z", "trialPrice": 49}, {"currencyCode": "jfqB79uPYCko7zM5", "currencyNamespace": "V3eequXfbsjwJ5It", "currencyType": "REAL", "discountAmount": 7, "discountExpireAt": "1990-07-01T00:00:00Z", "discountPercentage": 25, "discountPurchaseAt": "1980-10-11T00:00:00Z", "discountedPrice": 68, "expireAt": "1987-07-11T00:00:00Z", "price": 41, "purchaseAt": "1983-11-29T00:00:00Z", "trialPrice": 34}], "NnybdMQtbHyh9naO": [{"currencyCode": "GoufoOuBeGiSKtvP", "currencyNamespace": "fWaK3DVinKi3766R", "currencyType": "VIRTUAL", "discountAmount": 27, "discountExpireAt": "1991-05-21T00:00:00Z", "discountPercentage": 83, "discountPurchaseAt": "1995-08-13T00:00:00Z", "discountedPrice": 0, "expireAt": "1990-03-01T00:00:00Z", "price": 44, "purchaseAt": "1996-09-14T00:00:00Z", "trialPrice": 52}, {"currencyCode": "aBAQfke1VsmP282o", "currencyNamespace": "NiszNRWoYwNl0GVT", "currencyType": "REAL", "discountAmount": 58, "discountExpireAt": "1993-09-27T00:00:00Z", "discountPercentage": 36, "discountPurchaseAt": "1990-11-23T00:00:00Z", "discountedPrice": 30, "expireAt": "1979-08-24T00:00:00Z", "price": 10, "purchaseAt": "1985-04-20T00:00:00Z", "trialPrice": 96}, {"currencyCode": "xBFt6mtSWy8EtXRi", "currencyNamespace": "eYUHUY4XkWtBqOhq", "currencyType": "REAL", "discountAmount": 18, "discountExpireAt": "1972-01-19T00:00:00Z", "discountPercentage": 33, "discountPurchaseAt": "1987-04-27T00:00:00Z", "discountedPrice": 39, "expireAt": "1987-08-01T00:00:00Z", "price": 40, "purchaseAt": "1972-12-06T00:00:00Z", "trialPrice": 98}], "ax49pOm3q768JgFW": [{"currencyCode": "p4s0khzucQ1eBZRU", "currencyNamespace": "h9nHIYVBEMxyR2YY", "currencyType": "REAL", "discountAmount": 2, "discountExpireAt": "1989-03-20T00:00:00Z", "discountPercentage": 26, "discountPurchaseAt": "1977-04-26T00:00:00Z", "discountedPrice": 20, "expireAt": "1996-12-16T00:00:00Z", "price": 55, "purchaseAt": "1985-09-19T00:00:00Z", "trialPrice": 59}, {"currencyCode": "MpuDwyhJKBB62eUY", "currencyNamespace": "7K3746VjpJRNNMsY", "currencyType": "REAL", "discountAmount": 83, "discountExpireAt": "1984-09-08T00:00:00Z", "discountPercentage": 91, "discountPurchaseAt": "1998-02-28T00:00:00Z", "discountedPrice": 46, "expireAt": "1997-12-25T00:00:00Z", "price": 94, "purchaseAt": "1977-07-19T00:00:00Z", "trialPrice": 64}, {"currencyCode": "ABqa8LV7i7L0FNaF", "currencyNamespace": "Su87fOJ6gFvmIRfr", "currencyType": "REAL", "discountAmount": 50, "discountExpireAt": "1997-04-22T00:00:00Z", "discountPercentage": 64, "discountPurchaseAt": "1976-07-10T00:00:00Z", "discountedPrice": 82, "expireAt": "1979-05-23T00:00:00Z", "price": 27, "purchaseAt": "1999-08-23T00:00:00Z", "trialPrice": 30}]}}]}' \
    > test.out 2>&1
eval_tap $? 138 'BulkUpdateRegionData' test.out

#- 139 SearchItems
samples/cli/sample-apps Platform searchItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --itemType 'EXTENSION' \
    --limit '19' \
    --offset '93' \
    --sortBy 'xAAQCNnPrut69Hwp' \
    --storeId '8T34pZ78dk5RsrE6' \
    --keyword 'jTCVnPD67uHr50Ld' \
    --language 'Ck1ealjO4eK4fDnq' \
    > test.out 2>&1
eval_tap $? 139 'SearchItems' test.out

#- 140 QueryUncategorizedItems
samples/cli/sample-apps Platform queryUncategorizedItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --limit '82' \
    --offset '28' \
    --sortBy '["displayOrder", "name:asc", "createdAt"]' \
    --storeId 'zkTmT6ZybiVs5FhE' \
    > test.out 2>&1
eval_tap $? 140 'QueryUncategorizedItems' test.out

#- 141 GetItem
samples/cli/sample-apps Platform getItem \
    --itemId 'eLhbwwTdN0aFgAF8' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId '1y46qmkt7xXgGOZQ' \
    > test.out 2>&1
eval_tap $? 141 'GetItem' test.out

#- 142 UpdateItem
samples/cli/sample-apps Platform updateItem \
    --itemId '2P65bXlS9RebY7Or' \
    --namespace $AB_NAMESPACE \
    --storeId 'woOGw3mqzcYY0Niw' \
    --body '{"appId": "egdAcYVo5wkg0L8d", "appType": "SOFTWARE", "baseAppId": "m86laybB5B5dHCAm", "boothName": "mN9cK5OZtAJTbVpF", "categoryPath": "BEwg4e6mjVOkQIFV", "clazz": "eWgOXLqz05A8iMKU", "displayOrder": 76, "entitlementType": "CONSUMABLE", "ext": {"dANQ42yys4z2OMRp": {}, "P4CIziCbQzzgNeC8": {}, "L0hclvGLl3CyafA8": {}}, "features": ["HX6Clz9pGzaa1mTF", "xFDMnzUhaW1d9tAV", "R9fImQivRjnHpvuJ"], "flexible": true, "images": [{"as": "MOYU99s2pVlmBaMg", "caption": "7SanIOdKtcLHWJwW", "height": 70, "imageUrl": "LLcHEEunipQusL0V", "smallImageUrl": "IUkBWHX2qxpGi4eN", "width": 91}, {"as": "4A3QWH6rY95AZG73", "caption": "SIPZdY2gcIQEs0Hi", "height": 29, "imageUrl": "WTKT2Z8enGPeJndZ", "smallImageUrl": "a4V1FxrZK06V9ADa", "width": 75}, {"as": "AQlzatvWLAmN71KV", "caption": "hkjHZwzS61y0ONqD", "height": 74, "imageUrl": "gq1nW9YFah6POLbJ", "smallImageUrl": "CiXGvpL2Asi364YI", "width": 3}], "inventoryConfig": {"customAttributes": {"LUgAVJqUeVJGJPku": {}, "YUp47m8dPF5oPpWq": {}, "AucHHR28Z4BBlO3R": {}}, "serverCustomAttributes": {"UBMb06a507aBsRDy": {}, "6r9Q3HSsX5cAZAq1": {}, "787G6ZseamEs0ZbP": {}}, "slotUsed": 83}, "itemIds": ["FDYJnMf27MyHWL2O", "95XrhdADZxmYSVCa", "fhDaW4CpMjmkrhYP"], "itemQty": {"VICspCshUP6WFs5e": 48, "xRInvG02xk3QSvHo": 84, "yijnekFQYbB49LTP": 54}, "itemType": "SEASON", "listable": false, "localizations": {"IrKxAjQqRL1UbQJj": {"description": "SnB6tdfXVJV8Ddyj", "localExt": {"PSmUXL7IXxuvrAYH": {}, "Wm0lQ99VyWznkPmm": {}, "dRgsYS4IxkNLVzch": {}}, "longDescription": "dsSOj65lYIODyN2P", "title": "6NVac8Pi8ZuKKiS4"}, "jmVpjugWolqrwmjx": {"description": "FGOKRjzaar2zYm4Z", "localExt": {"Hoq3YqkJGFzbTgwn": {}, "TV58OuQWNHeGtQXo": {}, "os1Ay4PV2oVqG7Fr": {}}, "longDescription": "EupL7UDIt1X0QP9P", "title": "j14T1g44WhcW6Qd9"}, "tYGYeKr7nGP8oGik": {"description": "XWNEu10qZH7uSsJ6", "localExt": {"2BUXjPYzHfyhnHxX": {}, "P6kAPSq99E81bqL3": {}, "GQmaOxZk1JbYfrwi": {}}, "longDescription": "OlJxY54CkADeA2dd", "title": "moFfe46JP5QWHA9G"}}, "lootBoxConfig": {"rewardCount": 70, "rewards": [{"lootBoxItems": [{"count": 35, "duration": 55, "endDate": "1992-01-25T00:00:00Z", "itemId": "DWrn8Zgn4RqDazAK", "itemSku": "4pP4z0tGbrmIB0hs", "itemType": "RalquayT5OnK7gJ0"}, {"count": 37, "duration": 64, "endDate": "1982-05-16T00:00:00Z", "itemId": "kpCbefsp8B2agra2", "itemSku": "tlUoNVGYVKiiMRyu", "itemType": "VsQ5sGbhajQEZ074"}, {"count": 20, "duration": 61, "endDate": "1983-12-16T00:00:00Z", "itemId": "UqH9NKdI8ExuavoL", "itemSku": "inmwQXX2ojG6ZTED", "itemType": "pPjK5CL3UJcUPtam"}], "name": "CEKMesr9xa35Oxl4", "odds": 0.649012033174283, "type": "PROBABILITY_GROUP", "weight": 16}, {"lootBoxItems": [{"count": 8, "duration": 85, "endDate": "1994-12-16T00:00:00Z", "itemId": "eon0nF0eiyaz1gCb", "itemSku": "4brLJdtAv4qnlVSi", "itemType": "6Z6A3FXOANMUiTed"}, {"count": 17, "duration": 70, "endDate": "1981-07-09T00:00:00Z", "itemId": "oewYqzohlMZn0ip0", "itemSku": "HGZe5sH7Ar6rsITs", "itemType": "3Q2HgEBEqKTdZ9Ln"}, {"count": 61, "duration": 12, "endDate": "1985-02-22T00:00:00Z", "itemId": "KNS7TU8ZY4fEGvat", "itemSku": "8mAmspMVK9MVJvSH", "itemType": "6Xqk8TzdcmodVffy"}], "name": "Ka1SHgmIMFqi616o", "odds": 0.9686840931930637, "type": "REWARD", "weight": 85}, {"lootBoxItems": [{"count": 55, "duration": 26, "endDate": "1997-09-22T00:00:00Z", "itemId": "yyiaG1K6ROhran7a", "itemSku": "JYp5CF2W9CY5sgq8", "itemType": "w231AJa4MuYHOpze"}, {"count": 99, "duration": 71, "endDate": "1987-02-17T00:00:00Z", "itemId": "gxa7tD1TLiWtXLtU", "itemSku": "Ms0QycYtTnTwSFIs", "itemType": "ojnsORpTa5tObp2E"}, {"count": 35, "duration": 22, "endDate": "1981-01-29T00:00:00Z", "itemId": "a7kBFfXZSEsL6trd", "itemSku": "0wAfLAsp5CRWZSyu", "itemType": "J13eMWk8KEtP8Ca6"}], "name": "W7tARRXNptePR6tT", "odds": 0.8966730023512495, "type": "REWARD_GROUP", "weight": 47}], "rollFunction": "CUSTOM"}, "maxCount": 76, "maxCountPerUser": 64, "name": "sUAnIpo7nEvyBVs8", "optionBoxConfig": {"boxItems": [{"count": 9, "duration": 81, "endDate": "1979-01-26T00:00:00Z", "itemId": "3fSzBtQ1FbQpL2TS", "itemSku": "jqKPrlO7jloFvPls", "itemType": "qc7pPwDdXisSgzTn"}, {"count": 24, "duration": 73, "endDate": "1974-09-03T00:00:00Z", "itemId": "Ztno7Q0vmwaAnqxE", "itemSku": "YFjkXiRu7YaJTL7c", "itemType": "XifLzPkSzrKXG3tq"}, {"count": 48, "duration": 11, "endDate": "1988-12-12T00:00:00Z", "itemId": "Ud8nZkt62YmkqJ2U", "itemSku": "3KXnYyWDCVdZBmlt", "itemType": "eyDfL5kMKkl79JRb"}]}, "purchasable": false, "recurring": {"cycle": "QUARTERLY", "fixedFreeDays": 2, "fixedTrialCycles": 50, "graceDays": 100}, "regionData": {"Kpv5RmH3cZ2hDHht": [{"currencyCode": "pwhX244SgyGVcuWI", "currencyNamespace": "yMvOIvnxrODnl8B6", "currencyType": "VIRTUAL", "discountAmount": 10, "discountExpireAt": "1996-03-02T00:00:00Z", "discountPercentage": 76, "discountPurchaseAt": "1995-07-20T00:00:00Z", "expireAt": "1977-04-18T00:00:00Z", "price": 36, "purchaseAt": "1973-01-03T00:00:00Z", "trialPrice": 17}, {"currencyCode": "0iH91oNJXboe6fl6", "currencyNamespace": "XRTzrZX7Rfc9eKjM", "currencyType": "REAL", "discountAmount": 28, "discountExpireAt": "1993-02-05T00:00:00Z", "discountPercentage": 29, "discountPurchaseAt": "1985-02-17T00:00:00Z", "expireAt": "1985-08-13T00:00:00Z", "price": 41, "purchaseAt": "1977-09-26T00:00:00Z", "trialPrice": 42}, {"currencyCode": "X9QtzVfryWUbJdus", "currencyNamespace": "xCVWvJy9LZrU1IMH", "currencyType": "REAL", "discountAmount": 69, "discountExpireAt": "1982-01-05T00:00:00Z", "discountPercentage": 67, "discountPurchaseAt": "1995-04-01T00:00:00Z", "expireAt": "1989-01-16T00:00:00Z", "price": 58, "purchaseAt": "1986-10-18T00:00:00Z", "trialPrice": 83}], "JVQY6pkIWVDHhPBN": [{"currencyCode": "CQcJrvkCZgDaukF9", "currencyNamespace": "94U8ootZn4ON0qmt", "currencyType": "VIRTUAL", "discountAmount": 53, "discountExpireAt": "1982-05-10T00:00:00Z", "discountPercentage": 13, "discountPurchaseAt": "1986-05-12T00:00:00Z", "expireAt": "1988-11-28T00:00:00Z", "price": 42, "purchaseAt": "1976-02-26T00:00:00Z", "trialPrice": 57}, {"currencyCode": "v5uS5jmuafKf6zKw", "currencyNamespace": "KUD9dEzrjiyP15Ac", "currencyType": "VIRTUAL", "discountAmount": 83, "discountExpireAt": "1984-08-30T00:00:00Z", "discountPercentage": 18, "discountPurchaseAt": "1991-10-20T00:00:00Z", "expireAt": "1971-01-20T00:00:00Z", "price": 45, "purchaseAt": "1979-01-17T00:00:00Z", "trialPrice": 28}, {"currencyCode": "L5V6JhBVhGIcfjTz", "currencyNamespace": "B0Smh76FfB7vYPq1", "currencyType": "VIRTUAL", "discountAmount": 79, "discountExpireAt": "1983-08-27T00:00:00Z", "discountPercentage": 55, "discountPurchaseAt": "1981-05-25T00:00:00Z", "expireAt": "1992-01-04T00:00:00Z", "price": 42, "purchaseAt": "1972-09-11T00:00:00Z", "trialPrice": 19}], "Sr2AdtF3n2Gfdrf7": [{"currencyCode": "wI2mQy6dXn6hb7TS", "currencyNamespace": "i3vKvKGHiojnOgKP", "currencyType": "REAL", "discountAmount": 84, "discountExpireAt": "1974-09-30T00:00:00Z", "discountPercentage": 10, "discountPurchaseAt": "1991-06-05T00:00:00Z", "expireAt": "1979-02-12T00:00:00Z", "price": 12, "purchaseAt": "1990-10-09T00:00:00Z", "trialPrice": 64}, {"currencyCode": "SvVo4eEPzJJwdrf8", "currencyNamespace": "QfYqb5omxoEpR08h", "currencyType": "VIRTUAL", "discountAmount": 56, "discountExpireAt": "1988-03-05T00:00:00Z", "discountPercentage": 61, "discountPurchaseAt": "1976-10-26T00:00:00Z", "expireAt": "1973-03-11T00:00:00Z", "price": 92, "purchaseAt": "1998-05-20T00:00:00Z", "trialPrice": 26}, {"currencyCode": "DkJPt66RpkAybrgI", "currencyNamespace": "LgepNgaThDvV0auR", "currencyType": "VIRTUAL", "discountAmount": 73, "discountExpireAt": "1993-03-09T00:00:00Z", "discountPercentage": 72, "discountPurchaseAt": "1984-06-25T00:00:00Z", "expireAt": "1992-02-09T00:00:00Z", "price": 10, "purchaseAt": "1976-10-16T00:00:00Z", "trialPrice": 26}]}, "saleConfig": {"currencyCode": "exDQ2QTYCe7MEAY6", "price": 30}, "seasonType": "PASS", "sectionExclusive": true, "sellable": false, "sku": "CfGnLE3Q5CjIX4Xc", "stackable": true, "status": "ACTIVE", "tags": ["by9zXEmlp9p0oalk", "PqQsExmD8f6uFj0R", "k0TigxdwhkqZ5L3R"], "targetCurrencyCode": "jqVzsvJqWH3aw9lP", "targetNamespace": "4hErQj1BCUUBFRK2", "thumbnailUrl": "lMOCKl0gQSGcsx8e", "useCount": 6}' \
    > test.out 2>&1
eval_tap $? 142 'UpdateItem' test.out

#- 143 DeleteItem
samples/cli/sample-apps Platform deleteItem \
    --itemId 'VogQ4986KackucJX' \
    --namespace $AB_NAMESPACE \
    --featuresToCheck '["CATALOG", "CATALOG", "CATALOG"]' \
    --force 'false' \
    --storeId 'ttmlo9jSHk8dSx56' \
    > test.out 2>&1
eval_tap $? 143 'DeleteItem' test.out

#- 144 AcquireItem
samples/cli/sample-apps Platform acquireItem \
    --itemId '8ienkKtz75VuvAfn' \
    --namespace $AB_NAMESPACE \
    --body '{"count": 13, "orderNo": "nv0ttcGkKfG1FuD5"}' \
    > test.out 2>&1
eval_tap $? 144 'AcquireItem' test.out

#- 145 GetApp
samples/cli/sample-apps Platform getApp \
    --itemId '7Uom9sBY40AeoafM' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'B9G00pFfIno5mFf3' \
    > test.out 2>&1
eval_tap $? 145 'GetApp' test.out

#- 146 UpdateApp
samples/cli/sample-apps Platform updateApp \
    --itemId 'lLmAZKHOctmfLHif' \
    --namespace $AB_NAMESPACE \
    --storeId 'UDYJ914YWJ0LwhgN' \
    --body '{"carousel": [{"alt": "qQMACIV6DbYHP6Rt", "previewUrl": "ZRPUCQGISmhQj3ed", "thumbnailUrl": "ArPU0vjpx90aB1yL", "type": "video", "url": "YyWAt2JPEbQA8dmq", "videoSource": "youtube"}, {"alt": "VSKsHauv4KR8jGzx", "previewUrl": "IwXKNyptvY0mai4v", "thumbnailUrl": "ZQyHtbSb4Xsyz0nm", "type": "image", "url": "eV5zfvyZ2HezJB5t", "videoSource": "vimeo"}, {"alt": "hyKqtDmPGYwFq1fG", "previewUrl": "kMxyd87zUP57bjbx", "thumbnailUrl": "kIgrS49xIJ8pq9HM", "type": "image", "url": "zZxFJCumMn6t0PrT", "videoSource": "youtube"}], "developer": "LZOHxV4ONQCCtJe4", "forumUrl": "ERcbJjUQ1y9jzB9z", "genres": ["RPG", "Indie", "MassivelyMultiplayer"], "localizations": {"Kq6fBAFxAFknlPvb": {"announcement": "1WYBAReB08cyDEva", "slogan": "FWbSyLtnVywGMrpk"}, "8I4YFjjZKL8O3QvF": {"announcement": "NgOE28eeafMrSqPW", "slogan": "FcKdJePkm60bbatC"}, "vOhxeHL7BJHd04wP": {"announcement": "TWyfh9GLMK5rWW62", "slogan": "GHCHfxySXxlS9npD"}}, "platformRequirements": {"ndPjt7807xuvx6wr": [{"additionals": "sdGerhdE3aKqKTRG", "directXVersion": "pPJScvQKqJ2BSw8e", "diskSpace": "nMMlmjWcKfURtalw", "graphics": "9m2iKgCXmRHbDrKM", "label": "Va3r3rpZdmGNqBPm", "osVersion": "hryLVIv1gTzCpgnq", "processor": "FWJQl3fXvqTfWD7m", "ram": "IAr04ZUATjQyg2NG", "soundCard": "cuY9HgOxYrs4wMX6"}, {"additionals": "htktMsW7h0pTcWHB", "directXVersion": "DtrkkadYMu3b45ou", "diskSpace": "up4uKQSad9uSojoh", "graphics": "hUnBNK7h9LgqlX4E", "label": "HOewfBKmcEAIYETd", "osVersion": "Di9cQims75v346w4", "processor": "omc27mhJI5hPBkM1", "ram": "92zSaLiDy2Ag7f32", "soundCard": "bxDquqkegfYQvsq2"}, {"additionals": "mzgn0pvVpuTRIhjj", "directXVersion": "ciI2BFH8xxK7IB8I", "diskSpace": "vwJ5cMYkxrK1KYvs", "graphics": "f8itqbjrTv7u3dFK", "label": "aHN512PWaA4zMHoV", "osVersion": "rdoV6XwVVkRWjd5q", "processor": "r2aGMhcQrdWJFQZO", "ram": "LTydDfvvr7tkQljZ", "soundCard": "QDFAYv7RMWtCgC6v"}], "6KwpB3sPOpEApCAd": [{"additionals": "ppWB2t0WkQ4mvghu", "directXVersion": "QiV4zoJL4czpc7GT", "diskSpace": "atTSqi5gZkKne2P9", "graphics": "oZUfUuOeGvNn8xbH", "label": "8IIMwaKS0U2xAL63", "osVersion": "iuu6HzYTQ9vnHU2S", "processor": "h9zNzVent2T5hwTP", "ram": "k8vzMtQIez9hSW8A", "soundCard": "NOF7u8L6LtObRhm1"}, {"additionals": "pMRYdtNjszKUbyiZ", "directXVersion": "R0edX9dTXjZcuscJ", "diskSpace": "SqBSRXwbFU1fSn8A", "graphics": "NtW9L0wIpCyatw26", "label": "hdT3oI1aQhs29ttq", "osVersion": "qOTnFBa8H2moxoi0", "processor": "N5j7AVyKyGkYsO31", "ram": "MCTqi48xnT5RhkPP", "soundCard": "H3WTjemwEd6zgEEz"}, {"additionals": "gE7Txtj0VRLP2t1r", "directXVersion": "ct5jEB90UzDu07LR", "diskSpace": "T00Z3lWIlRUIfCri", "graphics": "OseYaifozHf02aV2", "label": "i8MBoenKEpo5ERjC", "osVersion": "LMyq00pAqH6fJJaQ", "processor": "oHiQdgvozSNIISCJ", "ram": "TJTb1ym6oqRsph3T", "soundCard": "IygoNrBDPZDqlGFA"}], "YD0HEToeFXkK840y": [{"additionals": "hZmq47FfG9U2IZEk", "directXVersion": "QQYWid6PwQU0zvLK", "diskSpace": "Sgkvi0uaOmc8TTtR", "graphics": "KjJKniVOuA8abUED", "label": "hk9zdS9De8ShvS3H", "osVersion": "fhEOOunCdbzlnP6K", "processor": "okWFhlN9QmnQUz6J", "ram": "xTEjtRl0JVwGeIPk", "soundCard": "pAZx0Ar5SPH65Yoi"}, {"additionals": "1Sq7iO1zdv5j5Wqj", "directXVersion": "9F1VvqSoC1skBKhk", "diskSpace": "51QrPEzqBdsgPmGG", "graphics": "bEG38pqjZeykVnJz", "label": "1C2tv7jBA1RsedKJ", "osVersion": "pkPLLYOm6alxr2eD", "processor": "uz7N513Ku9cTX1oL", "ram": "OssonfqstIlbszwp", "soundCard": "41IJf4J8Z1Sg9rTB"}, {"additionals": "J0fDVToR1fTp07GR", "directXVersion": "kAOTYJwsvJfZdnll", "diskSpace": "Z4DexyqeCAyjwbTz", "graphics": "0TnZrXZCMpEsrTmw", "label": "9WXwl4RfZ9It0GCc", "osVersion": "qoUPOGy10fU2CL3k", "processor": "9R3OQiI3uhVjyDbz", "ram": "x4DtZXu9NJdQdg8u", "soundCard": "nqet03VkZW4oD15B"}]}, "platforms": ["MacOS", "Windows", "Linux"], "players": ["CrossPlatformMulti", "LocalCoop", "Multi"], "primaryGenre": "Adventure", "publisher": "gEeA6eYgO6oiJ92S", "releaseDate": "1986-09-09T00:00:00Z", "websiteUrl": "XdwGTEblshXwbD6G"}' \
    > test.out 2>&1
eval_tap $? 146 'UpdateApp' test.out

#- 147 DisableItem
samples/cli/sample-apps Platform disableItem \
    --itemId 'wqi57FCSmUuVyEe1' \
    --namespace $AB_NAMESPACE \
    --storeId 's3ykfATYjEoaStBd' \
    --body '{"featuresToCheck": ["IAP", "REWARD"]}' \
    > test.out 2>&1
eval_tap $? 147 'DisableItem' test.out

#- 148 GetItemDynamicData
samples/cli/sample-apps Platform getItemDynamicData \
    --itemId 'GufpCt6EZMWnwbmY' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 148 'GetItemDynamicData' test.out

#- 149 EnableItem
samples/cli/sample-apps Platform enableItem \
    --itemId 'A9ke3nTjMaCPN1BV' \
    --namespace $AB_NAMESPACE \
    --storeId 'Wm1xvDjzSDm4dXov' \
    > test.out 2>&1
eval_tap $? 149 'EnableItem' test.out

#- 150 FeatureItem
samples/cli/sample-apps Platform featureItem \
    --feature 'kxFwoHYQOlvI8FGz' \
    --itemId 'zmElqi7ZPrQ8ysHc' \
    --namespace $AB_NAMESPACE \
    --storeId 'd6x4OGv1vEZdF31A' \
    > test.out 2>&1
eval_tap $? 150 'FeatureItem' test.out

#- 151 DefeatureItem
samples/cli/sample-apps Platform defeatureItem \
    --feature '7G6z0eCjLW9ETtrS' \
    --itemId 'jXLvGyB9LK4dceKM' \
    --namespace $AB_NAMESPACE \
    --storeId 'umVERFvyARCPEYuq' \
    > test.out 2>&1
eval_tap $? 151 'DefeatureItem' test.out

#- 152 GetLocaleItem
samples/cli/sample-apps Platform getLocaleItem \
    --itemId 'Dt8t7i8MtKnS5KXe' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --language 'cWsbYYaGro5HTjPJ' \
    --populateBundle 'false' \
    --region '2lpNnkXoUR64h1R0' \
    --storeId 'uyghat42yLOuJMFh' \
    > test.out 2>&1
eval_tap $? 152 'GetLocaleItem' test.out

#- 153 UpdateItemPurchaseCondition
samples/cli/sample-apps Platform updateItemPurchaseCondition \
    --itemId 'bTccMTqMtyUNCXhN' \
    --namespace $AB_NAMESPACE \
    --storeId 'hFqKpQdmvrEftDp4' \
    --body '{"purchaseCondition": {"conditionGroups": [{"operator": "and", "predicates": [{"anyOf": 5, "code": "ZAntoZoXIsaeECmr", "comparison": "includes", "name": "7AcXcB1xkJoJGFnY", "predicateType": "StatisticCodePredicate", "value": "2jblblERfgCXVR9Y", "values": ["SSptlBsTv9MC1bAj", "mSPNCunCmBzugWe6", "TfdbUG76emDTf8PM"]}, {"anyOf": 31, "code": "9tpAlXWZSoukJJR0", "comparison": "isLessThan", "name": "QSrQm4yIpS9E4Lpx", "predicateType": "SeasonTierPredicate", "value": "3UpRdyg3aqp2rZo6", "values": ["FbipTXe6YA514LaP", "bJYxSybYmLg3EyvA", "fP44T1LipLOncika"]}, {"anyOf": 36, "code": "bXjGZC02m9qV88wh", "comparison": "includes", "name": "VBycwNmCbZ87Ovvt", "predicateType": "SeasonPassPredicate", "value": "bnAwYIdYtBqfbl5N", "values": ["Z3ZVGnfBZkc8oyLL", "OcQkSPnn1eB3BEMc", "yJAfTtirMkfpZeoy"]}]}, {"operator": "and", "predicates": [{"anyOf": 88, "code": "ViUUnfKA5ymdkWWg", "comparison": "isLessThanOrEqual", "name": "3dUfQ65YerPykIUO", "predicateType": "StatisticCodePredicate", "value": "Ts9Rv2YfZp5W7lCC", "values": ["LMVmFEvYYZmemP7b", "M1vT62k3rqv44V95", "AIEqPr5k4os69U4m"]}, {"anyOf": 14, "code": "KlpROdi8LOMGfkJ5", "comparison": "excludes", "name": "qfBEd86yQJhsWphQ", "predicateType": "SeasonPassPredicate", "value": "FX6lTzuR718Dhoyf", "values": ["jVv3ORX8aOZGYKm8", "6xXYzjrVycge7Ilg", "mZrWbXTF9WoNGx5k"]}, {"anyOf": 95, "code": "SuRx3Q3cTEajeVUD", "comparison": "isLessThan", "name": "AF5xvCeEBSqK3MTq", "predicateType": "SeasonPassPredicate", "value": "A1lnP9jnn7MCOkav", "values": ["7AJTycCoLCR7fEk5", "K81Sz5vvbZIejxbd", "mfHLtmVVi5BQX4l5"]}]}, {"operator": "and", "predicates": [{"anyOf": 31, "code": "2fl0nkQJTeGCJBAN", "comparison": "isGreaterThan", "name": "GEWgwS3lkbOji3cz", "predicateType": "StatisticCodePredicate", "value": "VlAqz5VySKF8uRLt", "values": ["G3qHhPbfyULJH0F3", "OjqbnsAfmoXnjM38", "CNlpM8zPzClOvW82"]}, {"anyOf": 49, "code": "dxhs6Wa7KTzjg0AJ", "comparison": "is", "name": "jQGUnmgqzJ9WGoAu", "predicateType": "SeasonTierPredicate", "value": "xz3Gcp23UpnbB82P", "values": ["XswoCUnJb0lFcgTw", "ztYvpzScop1Xzxxq", "qAMRjCDUiIUHs9J5"]}, {"anyOf": 25, "code": "KOlfP35fjjuuXJHV", "comparison": "includes", "name": "VCORED6NmF0C8hgT", "predicateType": "StatisticCodePredicate", "value": "pWd2hj0TAM7dREW5", "values": ["dLpORJw2iF1goJ7O", "i8N6jlKRRiYehrQv", "kgOhy1rBwRw47zup"]}]}]}}' \
    > test.out 2>&1
eval_tap $? 153 'UpdateItemPurchaseCondition' test.out

#- 154 QueryItemReferences
samples/cli/sample-apps Platform queryItemReferences \
    --itemId '3xbYikOSI2IhbcaI' \
    --namespace $AB_NAMESPACE \
    --featuresToCheck '["REWARD", "DLC", "ENTITLEMENT"]' \
    --storeId 'g6IKOS9HSUtG0Cpd' \
    > test.out 2>&1
eval_tap $? 154 'QueryItemReferences' test.out

#- 155 ReturnItem
samples/cli/sample-apps Platform returnItem \
    --itemId 'p432GqxkQp6rwjbM' \
    --namespace $AB_NAMESPACE \
    --body '{"orderNo": "LZS2CR50Wnxn4VkF"}' \
    > test.out 2>&1
eval_tap $? 155 'ReturnItem' test.out

#- 156 QueryKeyGroups
samples/cli/sample-apps Platform queryKeyGroups \
    --namespace $AB_NAMESPACE \
    --limit '51' \
    --name 'dtU1vnseGjKvFdEB' \
    --offset '18' \
    --tag 'WkDJRPLpX54HPkM8' \
    > test.out 2>&1
eval_tap $? 156 'QueryKeyGroups' test.out

#- 157 CreateKeyGroup
samples/cli/sample-apps Platform createKeyGroup \
    --namespace $AB_NAMESPACE \
    --body '{"description": "zzEpBd4qIhmnoej8", "name": "Xs8xLEqtfiHKfmvf", "status": "ACTIVE", "tags": ["lzxvrqBtKT38b06j", "1kLprpgUNw9Axe1O", "8iL9dMlmp42i1kTN"]}' \
    > test.out 2>&1
eval_tap $? 157 'CreateKeyGroup' test.out

#- 158 GetKeyGroupByBoothName
eval_tap 0 158 'GetKeyGroupByBoothName # SKIP deprecated' test.out

#- 159 GetKeyGroup
samples/cli/sample-apps Platform getKeyGroup \
    --keyGroupId 'ceyPOhDHZNlip9g3' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 159 'GetKeyGroup' test.out

#- 160 UpdateKeyGroup
samples/cli/sample-apps Platform updateKeyGroup \
    --keyGroupId 'bAs5vCRHqowehl8i' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "lAbJTTLIy92TteVk", "name": "uvi3YSu50PSBrDFJ", "status": "INACTIVE", "tags": ["35Ll9AZ8SLTSObgm", "qvVjBSKVqbEZxHbT", "9bBGxztIbA91ZTB4"]}' \
    > test.out 2>&1
eval_tap $? 160 'UpdateKeyGroup' test.out

#- 161 GetKeyGroupDynamic
samples/cli/sample-apps Platform getKeyGroupDynamic \
    --keyGroupId 'cSjL1wDANDJFTZnG' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 161 'GetKeyGroupDynamic' test.out

#- 162 ListKeys
samples/cli/sample-apps Platform listKeys \
    --keyGroupId 'sKA0CCnVAmoOK0qz' \
    --namespace $AB_NAMESPACE \
    --limit '91' \
    --offset '64' \
    --status 'ACTIVE' \
    > test.out 2>&1
eval_tap $? 162 'ListKeys' test.out

#- 163 UploadKeys
samples/cli/sample-apps Platform uploadKeys \
    --keyGroupId 'zx3kJlkusqcgzBq6' \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 163 'UploadKeys' test.out

#- 164 QueryOrders
samples/cli/sample-apps Platform queryOrders \
    --namespace $AB_NAMESPACE \
    --endTime 'Q8khJHCwUYI8anM4' \
    --limit '40' \
    --offset '9' \
    --orderNos '["91vGeuQRRGkKkSSt", "T7h0zDvp12NwD3ac", "BcJ5kyaGPStAgN2E"]' \
    --sortBy '2aHOQvDNxBMtzsX5' \
    --startTime 'UUb2HoykPeYvzate' \
    --status 'CHARGED' \
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
    --orderNo 'tyPDm3MEzAKSEzfl' \
    > test.out 2>&1
eval_tap $? 166 'GetOrder' test.out

#- 167 RefundOrder
samples/cli/sample-apps Platform refundOrder \
    --namespace $AB_NAMESPACE \
    --orderNo '5y1MnagyYmeUIi0L' \
    --body '{"description": "2L88E7wvKWzW2Hz0"}' \
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
    --body '{"domains": ["8NB9kAtrDXzJo1vT", "cubSda0y7ZvsrOEE", "BNrIlQyNNo8zV7Ds"]}' \
    > test.out 2>&1
eval_tap $? 171 'UpdatePaymentDomainWhitelistConfig' test.out

#- 172 QueryPaymentNotifications
samples/cli/sample-apps Platform queryPaymentNotifications \
    --namespace $AB_NAMESPACE \
    --endDate 'atwUTvgxpgxweDAq' \
    --externalId 'FIJp6UgShbQET8z3' \
    --limit '61' \
    --notificationSource 'ADYEN' \
    --notificationType '696M3Kpf7WVRJKNT' \
    --offset '44' \
    --paymentOrderNo 'RWdmUQ00nsf4Ff5M' \
    --startDate 'K2sdLMG66Gnwr9ba' \
    --status 'PROCESSED' \
    > test.out 2>&1
eval_tap $? 172 'QueryPaymentNotifications' test.out

#- 173 QueryPaymentOrders
samples/cli/sample-apps Platform queryPaymentOrders \
    --namespace $AB_NAMESPACE \
    --channel 'EXTERNAL' \
    --extTxId '5cmn61lObrZkTD05' \
    --limit '55' \
    --offset '34' \
    --status 'CHARGEBACK' \
    > test.out 2>&1
eval_tap $? 173 'QueryPaymentOrders' test.out

#- 174 CreatePaymentOrderByDedicated
samples/cli/sample-apps Platform createPaymentOrderByDedicated \
    --namespace $AB_NAMESPACE \
    --body '{"currencyCode": "Im8AjQv5knxartdk", "currencyNamespace": "4QohW8R3zeQ6wtqH", "customParameters": {"mqbT70rtdhBf5vEU": {}, "I8nDEFzRDT7V6Xxr": {}, "X6JpcflX2ugMHlLc": {}}, "description": "G5DtRZVdmXqtRq6A", "extOrderNo": "mYMggZYtBjyX1LeU", "extUserId": "Md4fWuRjtvLaZ8xR", "itemType": "MEDIA", "language": "EhvD-JHDS", "metadata": {"2EpgbcbgddQCiKPE": "MPjQLA9PDQFvooE9", "WOai0A7ayz9filFg": "8cruSQLB6JdJYoHq", "EkxHUrPTmFR2PR1y": "8q6tD9ZXmk99OlZE"}, "notifyUrl": "XuC56z0eXf11s6dK", "omitNotification": false, "platform": "fn19PcryBhqDIHPa", "price": 68, "recurringPaymentOrderNo": "C6EdR5O0HoPBorRd", "region": "dP5WEhi2xPq3f2VM", "returnUrl": "uHR3fK0tEgli1DsF", "sandbox": false, "sku": "jStsDFPGbwCuhQUd", "subscriptionId": "PcyVJ3tzwm5lEnrB", "targetNamespace": "MdR1xB7cWkLno0Aw", "targetUserId": "wVUIej8vCX2yAMrq", "title": "sQzB45FGo1RaB2xK"}' \
    > test.out 2>&1
eval_tap $? 174 'CreatePaymentOrderByDedicated' test.out

#- 175 ListExtOrderNoByExtTxId
samples/cli/sample-apps Platform listExtOrderNoByExtTxId \
    --namespace $AB_NAMESPACE \
    --extTxId 'CoNvjHYT7ZtI7BxZ' \
    > test.out 2>&1
eval_tap $? 175 'ListExtOrderNoByExtTxId' test.out

#- 176 GetPaymentOrder
samples/cli/sample-apps Platform getPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo '9Y4ASMkEnhBIhWoi' \
    > test.out 2>&1
eval_tap $? 176 'GetPaymentOrder' test.out

#- 177 ChargePaymentOrder
samples/cli/sample-apps Platform chargePaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'yS9Dr9XfyUL9ktcl' \
    --body '{"extTxId": "eDB5oR6ZQK7aj5UN", "paymentMethod": "gd8xxVhG5JRxfvq3", "paymentProvider": "STRIPE"}' \
    > test.out 2>&1
eval_tap $? 177 'ChargePaymentOrder' test.out

#- 178 RefundPaymentOrderByDedicated
samples/cli/sample-apps Platform refundPaymentOrderByDedicated \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'gvEJYmElW9AFXJk6' \
    --body '{"description": "dzqxQh2B6JfWsRuo"}' \
    > test.out 2>&1
eval_tap $? 178 'RefundPaymentOrderByDedicated' test.out

#- 179 SimulatePaymentOrderNotification
samples/cli/sample-apps Platform simulatePaymentOrderNotification \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'JCuhwUvSfCfUSLgf' \
    --body '{"amount": 26, "currencyCode": "Nfk4VnekyFQTWTIu", "notifyType": "REFUND", "paymentProvider": "CHECKOUT", "salesTax": 20, "vat": 20}' \
    > test.out 2>&1
eval_tap $? 179 'SimulatePaymentOrderNotification' test.out

#- 180 GetPaymentOrderChargeStatus
samples/cli/sample-apps Platform getPaymentOrderChargeStatus \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'YURWQsg6aqWmR8fA' \
    > test.out 2>&1
eval_tap $? 180 'GetPaymentOrderChargeStatus' test.out

#- 181 GetPsnEntitlementOwnership
samples/cli/sample-apps Platform getPsnEntitlementOwnership \
    --entitlementLabel 'pOSPgA8xqNduDKM4' \
    --namespace $AB_NAMESPACE \
    --body '{"accessToken": "FN3xTbM5YESVUQm3", "serviceLabel": 83}' \
    > test.out 2>&1
eval_tap $? 181 'GetPsnEntitlementOwnership' test.out

#- 182 GetXboxEntitlementOwnership
samples/cli/sample-apps Platform getXboxEntitlementOwnership \
    --namespace $AB_NAMESPACE \
    --productSku '1nDIQ0fi3sbPREqh' \
    --body '{"delegationToken": "xyuR0G0PUnsu79O3", "sandboxId": "HF6x9KJl1S3iE74H"}' \
    > test.out 2>&1
eval_tap $? 182 'GetXboxEntitlementOwnership' test.out

#- 183 GetPlatformEntitlementConfig
samples/cli/sample-apps Platform getPlatformEntitlementConfig \
    --namespace $AB_NAMESPACE \
    --platform 'IOS' \
    > test.out 2>&1
eval_tap $? 183 'GetPlatformEntitlementConfig' test.out

#- 184 UpdatePlatformEntitlementConfig
samples/cli/sample-apps Platform updatePlatformEntitlementConfig \
    --namespace $AB_NAMESPACE \
    --platform 'GooglePlay' \
    --body '{"allowedPlatformOrigins": ["Steam", "IOS", "GooglePlay"]}' \
    > test.out 2>&1
eval_tap $? 184 'UpdatePlatformEntitlementConfig' test.out

#- 185 GetPlatformWalletConfig
samples/cli/sample-apps Platform getPlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Nintendo' \
    > test.out 2>&1
eval_tap $? 185 'GetPlatformWalletConfig' test.out

#- 186 UpdatePlatformWalletConfig
samples/cli/sample-apps Platform updatePlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'GooglePlay' \
    --body '{"allowedBalanceOrigins": ["Oculus", "Epic", "System"]}' \
    > test.out 2>&1
eval_tap $? 186 'UpdatePlatformWalletConfig' test.out

#- 187 ResetPlatformWalletConfig
samples/cli/sample-apps Platform resetPlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Playstation' \
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
    --body '{"entitlement": {"consumable": {"enabled": true, "strategy": "REVOKE_OR_REPORT"}, "durable": {"enabled": true, "strategy": "CUSTOM"}}, "wallet": {"enabled": false, "strategy": "CUSTOM"}}' \
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
    --endTime 'hSU0ndJ32tAKiu6s' \
    --limit '77' \
    --offset '41' \
    --source 'DLC' \
    --startTime 'iz4EOGmpeTmXIQ6p' \
    --status 'FAIL' \
    --transactionId '8nzMMYgg5FEfWHZA' \
    --userId 'oBDrFgjJG94nSTrX' \
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
    --body '{"appConfig": {"appName": "Mkhp9mqzYwKRDCH2"}, "customConfig": {"connectionType": "INSECURE", "grpcServerAddress": "uJjw7IdQmzVgzDS9"}, "extendType": "APP"}' \
    > test.out 2>&1
eval_tap $? 193 'UpdateRevocationPluginConfig' test.out

#- 194 DeleteRevocationPluginConfig
samples/cli/sample-apps Platform deleteRevocationPluginConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 194 'DeleteRevocationPluginConfig' test.out

#- 195 UploadRevocationPluginConfigCert
samples/cli/sample-apps Platform uploadRevocationPluginConfigCert \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 195 'UploadRevocationPluginConfigCert' test.out

#- 196 CreateReward
samples/cli/sample-apps Platform createReward \
    --namespace $AB_NAMESPACE \
    --body '{"description": "TnkBxXaswkf9ogkg", "eventTopic": "HOojnC0honrh1rv1", "maxAwarded": 94, "maxAwardedPerUser": 98, "namespaceExpression": "drIZikbjF7bNjYls", "rewardCode": "4kC4TP3v6A6A2fW4", "rewardConditions": [{"condition": "hylDLGozxTcpDrlh", "conditionName": "p8f8wAWgtyhHTqvP", "eventName": "GciLnLLTaLRkGVwB", "rewardItems": [{"duration": 59, "endDate": "1974-02-21T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "MBFPuJg1fJbeCVlD", "quantity": 48, "sku": "WriyR49T3sC4N0lM"}, {"duration": 64, "endDate": "1974-02-28T00:00:00Z", "identityType": "ITEM_ID", "itemId": "198YOwkCe21NnNxN", "quantity": 71, "sku": "XZh8dpLga1wEa5AY"}, {"duration": 52, "endDate": "1991-12-26T00:00:00Z", "identityType": "ITEM_ID", "itemId": "Arcc6JoyHVsFW3fo", "quantity": 50, "sku": "7mPODRtwzMiyuQAN"}]}, {"condition": "TAzO9kLIQtgAQe9s", "conditionName": "veDFF5hIguBnhp77", "eventName": "4gXpourTWk0t1dSW", "rewardItems": [{"duration": 80, "endDate": "1999-09-05T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "58kzEMEmCkhb3tcm", "quantity": 33, "sku": "dMKqcfHaD2JJtZZq"}, {"duration": 67, "endDate": "1986-01-24T00:00:00Z", "identityType": "ITEM_ID", "itemId": "86vwS5mu936ZVhFq", "quantity": 10, "sku": "0eqL9QCiJCsY5ert"}, {"duration": 72, "endDate": "1974-11-23T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "DlZu1MAAaMlGFmyd", "quantity": 85, "sku": "iCKOTXyUvvVPSC3I"}]}, {"condition": "e8cE5pMFoma6SS1d", "conditionName": "oEvw0GZIKqrEDBh2", "eventName": "iKQvZlOYxCiPDgCb", "rewardItems": [{"duration": 14, "endDate": "1979-07-29T00:00:00Z", "identityType": "ITEM_ID", "itemId": "lhoaahZaCE6Jqlzm", "quantity": 65, "sku": "KKN5ZZnuFsKk5gG1"}, {"duration": 29, "endDate": "1990-06-17T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "LLN0PKSGOA44Rf0y", "quantity": 50, "sku": "LOWw9cfuDdxrgBUJ"}, {"duration": 3, "endDate": "1996-11-10T00:00:00Z", "identityType": "ITEM_ID", "itemId": "FY6hHABaYKSIrVjY", "quantity": 22, "sku": "JfhEvodTw2dIMq30"}]}], "userIdExpression": "GjBVmAowinnyezkf"}' \
    > test.out 2>&1
eval_tap $? 196 'CreateReward' test.out

#- 197 QueryRewards
samples/cli/sample-apps Platform queryRewards \
    --namespace $AB_NAMESPACE \
    --eventTopic 'TDfgdZKykQwQKqLz' \
    --limit '12' \
    --offset '98' \
    --sortBy '["rewardCode", "rewardCode:asc"]' \
    > test.out 2>&1
eval_tap $? 197 'QueryRewards' test.out

#- 198 ExportRewards
samples/cli/sample-apps Platform exportRewards \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 198 'ExportRewards' test.out

#- 199 ImportRewards
samples/cli/sample-apps Platform importRewards \
    --namespace $AB_NAMESPACE \
    --replaceExisting 'true' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 199 'ImportRewards' test.out

#- 200 GetReward
samples/cli/sample-apps Platform getReward \
    --namespace $AB_NAMESPACE \
    --rewardId 'uo1tg7N0OAI23ChA' \
    > test.out 2>&1
eval_tap $? 200 'GetReward' test.out

#- 201 UpdateReward
samples/cli/sample-apps Platform updateReward \
    --namespace $AB_NAMESPACE \
    --rewardId '4ICYRCsUgn05fQd3' \
    --body '{"description": "Qr8B6n6RiykgElO8", "eventTopic": "Vb14WnbGW6bOXkgR", "maxAwarded": 32, "maxAwardedPerUser": 31, "namespaceExpression": "F5K0vsnL4A9zLbLx", "rewardCode": "XUWcqhunRGGB7YKy", "rewardConditions": [{"condition": "W6FRF1BlVt3yFxvr", "conditionName": "LxIYi6FpJtECjcgS", "eventName": "hrOlfOT4M3tdYWjO", "rewardItems": [{"duration": 28, "endDate": "1980-11-25T00:00:00Z", "identityType": "ITEM_ID", "itemId": "xtgUcD2XaNCCw0nd", "quantity": 94, "sku": "yeeM6QiweZdZ0VEM"}, {"duration": 18, "endDate": "1998-08-13T00:00:00Z", "identityType": "ITEM_ID", "itemId": "XfbjPNYuAAzNw9kF", "quantity": 59, "sku": "p8A0vvyYd1zWJD7Q"}, {"duration": 19, "endDate": "1988-07-14T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "2FNGiSphkcvsvSk8", "quantity": 12, "sku": "K6uvhxyIRLqBdFrZ"}]}, {"condition": "v4fqi3Hsw2PLZhRz", "conditionName": "SRc4Y0s1f9zQYWCe", "eventName": "swLtSzUzkdaC4hFG", "rewardItems": [{"duration": 37, "endDate": "1990-07-29T00:00:00Z", "identityType": "ITEM_ID", "itemId": "HasNAfXaBrkz2XQz", "quantity": 3, "sku": "Vro54GIW0uNGWb7F"}, {"duration": 76, "endDate": "1979-10-21T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "4kGgQVqnn8dd0pXd", "quantity": 91, "sku": "BYpjK34xVNrjSLUD"}, {"duration": 9, "endDate": "1994-03-24T00:00:00Z", "identityType": "ITEM_ID", "itemId": "hq5T6neP2qbzDEcb", "quantity": 55, "sku": "7r3s6fkbkE82ibhV"}]}, {"condition": "62ut76zYSUk6meSN", "conditionName": "HYfheeWBRzG15jYi", "eventName": "VGZQGrkdO4Zwf5qk", "rewardItems": [{"duration": 65, "endDate": "1973-02-27T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "YvTg3EGfv0A20cKc", "quantity": 22, "sku": "PixduyUawfEhYI13"}, {"duration": 63, "endDate": "1990-09-27T00:00:00Z", "identityType": "ITEM_ID", "itemId": "23s8KmTPZMQw1bxn", "quantity": 19, "sku": "BgKg3XZbxXlF6Hp0"}, {"duration": 75, "endDate": "1999-07-08T00:00:00Z", "identityType": "ITEM_ID", "itemId": "f4IJnEeZ4IlylgrX", "quantity": 100, "sku": "u7cWkmDzzNJKRLvP"}]}], "userIdExpression": "nDP4viQOraBbAJha"}' \
    > test.out 2>&1
eval_tap $? 201 'UpdateReward' test.out

#- 202 DeleteReward
samples/cli/sample-apps Platform deleteReward \
    --namespace $AB_NAMESPACE \
    --rewardId 'zf1KKwTJQP5v8fzw' \
    > test.out 2>&1
eval_tap $? 202 'DeleteReward' test.out

#- 203 CheckEventCondition
samples/cli/sample-apps Platform checkEventCondition \
    --namespace $AB_NAMESPACE \
    --rewardId '0XkxkMHANtDHvwmg' \
    --body '{"payload": {"GJBbMJFLRDLFSV6D": {}, "tO2uwrTRRS0efsDD": {}, "kSAcbCujW3xYPk5I": {}}}' \
    > test.out 2>&1
eval_tap $? 203 'CheckEventCondition' test.out

#- 204 DeleteRewardConditionRecord
samples/cli/sample-apps Platform deleteRewardConditionRecord \
    --namespace $AB_NAMESPACE \
    --rewardId '8JDXAp4r8JhMrHdW' \
    --body '{"conditionName": "cx9URUNDn4YIDJjJ", "userId": "xySjCPIHksg28Tvh"}' \
    > test.out 2>&1
eval_tap $? 204 'DeleteRewardConditionRecord' test.out

#- 205 QuerySections
samples/cli/sample-apps Platform querySections \
    --namespace $AB_NAMESPACE \
    --end 'bOTY2T70gXiB5yNO' \
    --limit '79' \
    --offset '28' \
    --start 'sdhMY5Un0kmGKwcU' \
    --storeId 'm74w5zjIyRHjsIPe' \
    --viewId 'ChTnVjl4RXHktCV2' \
    > test.out 2>&1
eval_tap $? 205 'QuerySections' test.out

#- 206 CreateSection
samples/cli/sample-apps Platform createSection \
    --namespace $AB_NAMESPACE \
    --storeId 'YtEZG8aqVvt6pk1p' \
    --body '{"active": false, "displayOrder": 2, "endDate": "1979-08-30T00:00:00Z", "ext": {"Cs8jeOONuTcwAWqu": {}, "Uc1ofv3MUzSlFavF": {}, "FlWsysYPyor8D8cd": {}}, "fixedPeriodRotationConfig": {"backfillType": "NONE", "duration": 96, "itemCount": 91, "rule": "LOOP"}, "items": [{"id": "qchpCpBl6PrwKwub", "sku": "nSFuFVqAZDdtLTrq"}, {"id": "QOfMZz5nyfyrLKOf", "sku": "ZmCOfVq4jbf2MrsR"}, {"id": "JCigtnRTjMsOO5j2", "sku": "aImOIZmeVPq0ZrWV"}], "localizations": {"nPQDt4iv4LHYZ4M0": {"description": "TLqRhyclsCPHcQ9I", "localExt": {"0gvqY4di5J7hpUpQ": {}, "4QMMbs5HH6BJJ1cZ": {}, "EgtlbPdfu7OTngMp": {}}, "longDescription": "5hZYUH8FD8C1B6Sb", "title": "yEj6USGe29lOE7uz"}, "d37y6Qs8J8cEshRm": {"description": "vURT0DtLbNcoRzjx", "localExt": {"RELH3Qa7elFAJ09F": {}, "Ny9GaSLRwoSPhBRP": {}, "kzmbjkDfeqNsrdqt": {}}, "longDescription": "oASuiiirQhsso7Rh", "title": "VyNViAmrfCw8YYuX"}, "pOfNv341fmGxHlZN": {"description": "kEg7xJYUvUk4P5TS", "localExt": {"UgebQ1BaLy62Oywo": {}, "1WRASGgFzajv7xwr": {}, "v5OKlBwYsubtIo1C": {}}, "longDescription": "R1sOiHZ6b00bPHno", "title": "1wpxHcULpyv3KQqr"}}, "name": "uB63gdGniDGNyNaK", "rotationType": "FIXED_PERIOD", "startDate": "1994-12-14T00:00:00Z", "viewId": "YuZwmTg4Nrxz69Iw"}' \
    > test.out 2>&1
eval_tap $? 206 'CreateSection' test.out

#- 207 PurgeExpiredSection
samples/cli/sample-apps Platform purgeExpiredSection \
    --namespace $AB_NAMESPACE \
    --storeId 'cdtWoXtP2deCNgHi' \
    > test.out 2>&1
eval_tap $? 207 'PurgeExpiredSection' test.out

#- 208 GetSection
samples/cli/sample-apps Platform getSection \
    --namespace $AB_NAMESPACE \
    --sectionId 'SPQJuhpUZOCAUZm0' \
    --storeId 'smE95tg2wM3EJJnx' \
    > test.out 2>&1
eval_tap $? 208 'GetSection' test.out

#- 209 UpdateSection
samples/cli/sample-apps Platform updateSection \
    --namespace $AB_NAMESPACE \
    --sectionId '3QGzDFH5iTygmfsD' \
    --storeId 'ngibJLE8dLNZhg2Q' \
    --body '{"active": false, "displayOrder": 65, "endDate": "1985-12-28T00:00:00Z", "ext": {"jbfYHZr8u9CW74lc": {}, "t04Uouc4RcRv4a8M": {}, "SlW0JzL5V26tNM0j": {}}, "fixedPeriodRotationConfig": {"backfillType": "NONE", "duration": 89, "itemCount": 99, "rule": "LOOP"}, "items": [{"id": "vjvUSIKU0eEj82FL", "sku": "ud1Z6cx5Z6oIt1cB"}, {"id": "VOuW4zfk7bD3mq71", "sku": "wfQkfGGteqMNQ3yJ"}, {"id": "6eA1NWICCtTedQFG", "sku": "BHwWg6vEQyajnLkJ"}], "localizations": {"whtCctRGh5wep0c8": {"description": "CCpOzr34F6izxSex", "localExt": {"dnCZaMcu4ZPRq1cd": {}, "VbQZnp0pAHYVgZxv": {}, "RJweW5wqQhY8NF98": {}}, "longDescription": "jh2a3ePh7CE9gAYc", "title": "UXDiprvhRo7vKrEd"}, "WtpjrgAGnyiJy25z": {"description": "7GMBMq6xv8AuIym3", "localExt": {"yvP2Dl9dfIb3Brua": {}, "w00htsGCYfBZLEjs": {}, "YB9DSQ4ibkRj0lDw": {}}, "longDescription": "CEZv5AeIq1k3CTVE", "title": "W4403bR7nNPzwFNX"}, "pSu6s33TTnEKeJHr": {"description": "FljTzIRF4mbqCZuY", "localExt": {"x8MIV7xZFxVJQNHA": {}, "ioiFFiNpwmrWZ5HU": {}, "GhEAvbykcdSIyoY9": {}}, "longDescription": "Ljl0GbFYzB6ZHYKo", "title": "w1MV8D1cYWGE8A3E"}}, "name": "Jrtqc7Ve1fQ55Xu7", "rotationType": "FIXED_PERIOD", "startDate": "1984-01-12T00:00:00Z", "viewId": "vzhILo8dBLJZVVEq"}' \
    > test.out 2>&1
eval_tap $? 209 'UpdateSection' test.out

#- 210 DeleteSection
samples/cli/sample-apps Platform deleteSection \
    --namespace $AB_NAMESPACE \
    --sectionId 'bYm5PNrTQ5wkka3Y' \
    --storeId 'AxFmzUMG0xrshJoX' \
    > test.out 2>&1
eval_tap $? 210 'DeleteSection' test.out

#- 211 ListStores
samples/cli/sample-apps Platform listStores \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 211 'ListStores' test.out

#- 212 CreateStore
samples/cli/sample-apps Platform createStore \
    --namespace $AB_NAMESPACE \
    --body '{"defaultLanguage": "JZIgT73BaeGoXdhf", "defaultRegion": "F2vHEuZA6FmOGvWv", "description": "6krNt3XUgxvq21Po", "supportedLanguages": ["DlrciYyJzE7c6X4x", "qcKLtkVC6Jw7VaHV", "D9QsAW9WyER0MeK6"], "supportedRegions": ["40VlTVppy8SSTYjh", "h3KTLIpDV5iYdNLA", "cHf6jJmiL0N4h2dK"], "title": "MQqdGR0fhLf10SXe"}' \
    > test.out 2>&1
eval_tap $? 212 'CreateStore' test.out

#- 213 GetCatalogDefinition
samples/cli/sample-apps Platform getCatalogDefinition \
    --namespace $AB_NAMESPACE \
    --catalogType 'SECTION' \
    > test.out 2>&1
eval_tap $? 213 'GetCatalogDefinition' test.out

#- 214 DownloadCSVTemplates
samples/cli/sample-apps Platform downloadCSVTemplates \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 214 'DownloadCSVTemplates' test.out

#- 215 ExportStoreByCSV
samples/cli/sample-apps Platform exportStoreByCSV \
    --namespace $AB_NAMESPACE \
    --body '{"catalogType": "SECTION", "fieldsToBeIncluded": ["KfvJmAFAz2LxtzqW", "OFf1hCdmjltP4DhC", "9etJAgPDKLuTPr9t"], "idsToBeExported": ["VAgxEtZJIt2ubfhn", "drZUjzCVRDy3ywqe", "pC8FN08SvILyMKVA"], "storeId": "0WCUhsAkLvThfrh9"}' \
    > test.out 2>&1
eval_tap $? 215 'ExportStoreByCSV' test.out

#- 216 ImportStore
eval_tap 0 216 'ImportStore # SKIP deprecated' test.out

#- 217 GetPublishedStore
samples/cli/sample-apps Platform getPublishedStore \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 217 'GetPublishedStore' test.out

#- 218 DeletePublishedStore
samples/cli/sample-apps Platform deletePublishedStore \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 218 'DeletePublishedStore' test.out

#- 219 GetPublishedStoreBackup
samples/cli/sample-apps Platform getPublishedStoreBackup \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 219 'GetPublishedStoreBackup' test.out

#- 220 RollbackPublishedStore
samples/cli/sample-apps Platform rollbackPublishedStore \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 220 'RollbackPublishedStore' test.out

#- 221 GetStore
samples/cli/sample-apps Platform getStore \
    --namespace $AB_NAMESPACE \
    --storeId 'RUeiyrTAjjZE2JT2' \
    > test.out 2>&1
eval_tap $? 221 'GetStore' test.out

#- 222 UpdateStore
samples/cli/sample-apps Platform updateStore \
    --namespace $AB_NAMESPACE \
    --storeId 'YuKOpguVTLAuht9m' \
    --body '{"defaultLanguage": "8Z5Y3ktYLq8pE3Fn", "defaultRegion": "d6yivPtDTIqT7cVN", "description": "UCLsfdUrkGcCYTvS", "supportedLanguages": ["9xEXfkUsqnuYd4Es", "C2VySnu5maeMWeVu", "LnZaBn3LwCZRVPp9"], "supportedRegions": ["JazVjfqWgv0ORUtg", "HpLHWZV0VbI2U2Ai", "az2YLm2fkfTuCH6d"], "title": "dbJQZpZqy3odZIfj"}' \
    > test.out 2>&1
eval_tap $? 222 'UpdateStore' test.out

#- 223 DeleteStore
samples/cli/sample-apps Platform deleteStore \
    --namespace $AB_NAMESPACE \
    --storeId '3YJAFqR4S2OxePQo' \
    > test.out 2>&1
eval_tap $? 223 'DeleteStore' test.out

#- 224 QueryChanges
samples/cli/sample-apps Platform queryChanges \
    --namespace $AB_NAMESPACE \
    --storeId 'cu9NVYJyGn3M0rSU' \
    --action 'UPDATE' \
    --itemSku '3kj6tQNOEpaZD7HI' \
    --itemType 'BUNDLE' \
    --limit '79' \
    --offset '80' \
    --selected 'false' \
    --sortBy '["updatedAt:desc", "createdAt:desc"]' \
    --status 'UNPUBLISHED' \
    --type 'STORE' \
    --updatedAtEnd 'd21EKpZMnAWQXjY4' \
    --updatedAtStart 'ow7qcTmK2glAEan3' \
    --withTotal 'false' \
    > test.out 2>&1
eval_tap $? 224 'QueryChanges' test.out

#- 225 PublishAll
samples/cli/sample-apps Platform publishAll \
    --namespace $AB_NAMESPACE \
    --storeId '7cGcQKuIoEAJgAEN' \
    > test.out 2>&1
eval_tap $? 225 'PublishAll' test.out

#- 226 PublishSelected
samples/cli/sample-apps Platform publishSelected \
    --namespace $AB_NAMESPACE \
    --storeId 'GbVQib6GRSgxWQ8N' \
    > test.out 2>&1
eval_tap $? 226 'PublishSelected' test.out

#- 227 SelectAllRecords
samples/cli/sample-apps Platform selectAllRecords \
    --namespace $AB_NAMESPACE \
    --storeId 'Zc86XWHAJYWEsh3f' \
    > test.out 2>&1
eval_tap $? 227 'SelectAllRecords' test.out

#- 228 SelectAllRecordsByCriteria
samples/cli/sample-apps Platform selectAllRecordsByCriteria \
    --namespace $AB_NAMESPACE \
    --storeId '2zrvvpQmLoXgG0mo' \
    --action 'UPDATE' \
    --itemSku 'JzWCTpbF2Pxsyw2D' \
    --itemType 'OPTIONBOX' \
    --selected 'true' \
    --type 'STORE' \
    --updatedAtEnd 'ArrgcvjRaKR9xJ4Q' \
    --updatedAtStart '8lZj5boFbWhTWrdI' \
    > test.out 2>&1
eval_tap $? 228 'SelectAllRecordsByCriteria' test.out

#- 229 GetStatistic
samples/cli/sample-apps Platform getStatistic \
    --namespace $AB_NAMESPACE \
    --storeId 'zv5MzBulLC2wZSe4' \
    --action 'DELETE' \
    --itemSku 'uG9cU9FXYkihd2zl' \
    --itemType 'LOOTBOX' \
    --type 'STORE' \
    --updatedAtEnd 'myFNo448fbNhm08j' \
    --updatedAtStart 'FuE8stIERb3qNWBN' \
    > test.out 2>&1
eval_tap $? 229 'GetStatistic' test.out

#- 230 UnselectAllRecords
samples/cli/sample-apps Platform unselectAllRecords \
    --namespace $AB_NAMESPACE \
    --storeId 'xS4AxLYts8f31PDt' \
    > test.out 2>&1
eval_tap $? 230 'UnselectAllRecords' test.out

#- 231 SelectRecord
samples/cli/sample-apps Platform selectRecord \
    --changeId '0CQnTBdZPaps2ynO' \
    --namespace $AB_NAMESPACE \
    --storeId 'WcpE7f39gqLwRwkF' \
    > test.out 2>&1
eval_tap $? 231 'SelectRecord' test.out

#- 232 UnselectRecord
samples/cli/sample-apps Platform unselectRecord \
    --changeId 'Lc5ADmjZCodhYu2X' \
    --namespace $AB_NAMESPACE \
    --storeId '8PxxrVKPuPD5O3Ru' \
    > test.out 2>&1
eval_tap $? 232 'UnselectRecord' test.out

#- 233 CloneStore
samples/cli/sample-apps Platform cloneStore \
    --namespace $AB_NAMESPACE \
    --storeId 'A6CgKdQiJCFG9jzj' \
    --targetStoreId 'niLXDtPKqxOK0t0z' \
    > test.out 2>&1
eval_tap $? 233 'CloneStore' test.out

#- 234 ExportStore
eval_tap 0 234 'ExportStore # SKIP deprecated' test.out

#- 235 QueryImportHistory
samples/cli/sample-apps Platform queryImportHistory \
    --namespace $AB_NAMESPACE \
    --storeId '7E9idHxuiGpq2mlG' \
    --end '3LUT9V4XFk6gHZVf' \
    --limit '86' \
    --offset '50' \
    --sortBy 'Sz2btP74TTUbR2vK' \
    --start 'VUyGJlOs2nPo2h36' \
    --success 'false' \
    > test.out 2>&1
eval_tap $? 235 'QueryImportHistory' test.out

#- 236 ImportStoreByCSV
samples/cli/sample-apps Platform importStoreByCSV \
    --namespace $AB_NAMESPACE \
    --storeId 'ULQazdSrX0CElT7T' \
    --category 'tmp.dat' \
    --display 'tmp.dat' \
    --item 'tmp.dat' \
    --notes '54uGC5Pi9GmbkfIz' \
    --section 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 236 'ImportStoreByCSV' test.out

#- 237 QuerySubscriptions
samples/cli/sample-apps Platform querySubscriptions \
    --namespace $AB_NAMESPACE \
    --chargeStatus 'SETUP' \
    --itemId 'xR8qFLnXo4gzLh8J' \
    --limit '12' \
    --offset '72' \
    --sku 'STT4BykJEQJzCPat' \
    --status 'ACTIVE' \
    --subscribedBy 'PLATFORM' \
    --userId '9mVV01fr2KUmb37G' \
    > test.out 2>&1
eval_tap $? 237 'QuerySubscriptions' test.out

#- 238 RecurringChargeSubscription
samples/cli/sample-apps Platform recurringChargeSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'bVgWPqVTsjBA1g7o' \
    > test.out 2>&1
eval_tap $? 238 'RecurringChargeSubscription' test.out

#- 239 GetTicketDynamic
samples/cli/sample-apps Platform getTicketDynamic \
    --boothName 'Uci12Cl76OHItoDt' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 239 'GetTicketDynamic' test.out

#- 240 DecreaseTicketSale
samples/cli/sample-apps Platform decreaseTicketSale \
    --boothName 'owq1zd9wIWiTdwuH' \
    --namespace $AB_NAMESPACE \
    --body '{"orderNo": "HN1bXthi94LkT79K"}' \
    > test.out 2>&1
eval_tap $? 240 'DecreaseTicketSale' test.out

#- 241 GetTicketBoothID
samples/cli/sample-apps Platform getTicketBoothID \
    --boothName 'LgDaks2armw60mI6' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 241 'GetTicketBoothID' test.out

#- 242 IncreaseTicketSale
samples/cli/sample-apps Platform increaseTicketSale \
    --boothName 'd5pEOV5BMtTeFvXN' \
    --namespace $AB_NAMESPACE \
    --body '{"count": 9, "orderNo": "di9LEgcXSXOaPWbH"}' \
    > test.out 2>&1
eval_tap $? 242 'IncreaseTicketSale' test.out

#- 243 Commit
samples/cli/sample-apps Platform commit \
    --namespace $AB_NAMESPACE \
    --body '{"actions": [{"operations": [{"creditPayload": {"balanceOrigin": "Xbox", "count": 1, "currencyCode": "dfPvv3Qt8BOR2hrC", "expireAt": "1994-06-14T00:00:00Z"}, "debitPayload": {"count": 34, "currencyCode": "2ZxHefXv5BRZGcgI", "walletPlatform": "Nintendo"}, "fulFillItemPayload": {"count": 61, "entitlementCollectionId": "lsmtkIlD9BuQPK5N", "entitlementOrigin": "Xbox", "itemIdentity": "rfaIu4bdeMEP63OY", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 11, "entitlementId": "pHjDcVhPodqlvwlS"}, "type": "DEBIT_WALLET"}, {"creditPayload": {"balanceOrigin": "Xbox", "count": 72, "currencyCode": "CrZ50sL8442XwppP", "expireAt": "1972-01-20T00:00:00Z"}, "debitPayload": {"count": 23, "currencyCode": "9rI5gmIiL0ctVycp", "walletPlatform": "Steam"}, "fulFillItemPayload": {"count": 88, "entitlementCollectionId": "M9gSmLvouAT7gv7G", "entitlementOrigin": "Nintendo", "itemIdentity": "mmiWjsSjGq3fmezw", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 22, "entitlementId": "QYPx3xC8ernwhulw"}, "type": "REVOKE_ENTITLEMENT"}, {"creditPayload": {"balanceOrigin": "Nintendo", "count": 45, "currencyCode": "35xFTiRQJrjVkR1j", "expireAt": "1990-09-04T00:00:00Z"}, "debitPayload": {"count": 28, "currencyCode": "eNZIMjyDHFYKMmzw", "walletPlatform": "Steam"}, "fulFillItemPayload": {"count": 56, "entitlementCollectionId": "ptQ3rrQGN0Uzi8Kp", "entitlementOrigin": "Xbox", "itemIdentity": "AVWWYmI00hEoxUT1", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 64, "entitlementId": "fzSJXfxo7WXLLg2H"}, "type": "CREDIT_WALLET"}], "userId": "Jzth0QX4VzRE6P3Q"}, {"operations": [{"creditPayload": {"balanceOrigin": "Oculus", "count": 24, "currencyCode": "7dRXMyklg2S9ih8R", "expireAt": "1974-07-23T00:00:00Z"}, "debitPayload": {"count": 24, "currencyCode": "DQmzux5YvQIpyAYZ", "walletPlatform": "Other"}, "fulFillItemPayload": {"count": 88, "entitlementCollectionId": "Z61RfnIm4RSK1cn2", "entitlementOrigin": "Oculus", "itemIdentity": "1cqFLob5PAmKwFg9", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 7, "entitlementId": "5SQLE8ntstr2UntW"}, "type": "REVOKE_ENTITLEMENT"}, {"creditPayload": {"balanceOrigin": "Steam", "count": 100, "currencyCode": "vLIsmpJi7nhWEJHr", "expireAt": "1981-07-02T00:00:00Z"}, "debitPayload": {"count": 33, "currencyCode": "EyFC1EGDQDMQDpmm", "walletPlatform": "Other"}, "fulFillItemPayload": {"count": 81, "entitlementCollectionId": "duJ79NY16RbIIOWE", "entitlementOrigin": "Oculus", "itemIdentity": "UrOQ8UgKQOKLcrHq", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 42, "entitlementId": "ML6KqR8UH3ZQ2ckk"}, "type": "CREDIT_WALLET"}, {"creditPayload": {"balanceOrigin": "Playstation", "count": 46, "currencyCode": "QwitorkXqfqf5Djr", "expireAt": "1977-01-03T00:00:00Z"}, "debitPayload": {"count": 8, "currencyCode": "w8TJuCVZoaTup9hj", "walletPlatform": "Xbox"}, "fulFillItemPayload": {"count": 97, "entitlementCollectionId": "XWcl3B13PW5swDkp", "entitlementOrigin": "Steam", "itemIdentity": "kORSl6AxWUVMVNu6", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 43, "entitlementId": "Yfj1wzhrKnYE6kkS"}, "type": "CREDIT_WALLET"}], "userId": "gPyCYW9gTIRQUlah"}, {"operations": [{"creditPayload": {"balanceOrigin": "System", "count": 41, "currencyCode": "iopZmgBUrsNhXPJ8", "expireAt": "1994-03-27T00:00:00Z"}, "debitPayload": {"count": 6, "currencyCode": "CHHRLsypPllFMd68", "walletPlatform": "Other"}, "fulFillItemPayload": {"count": 97, "entitlementCollectionId": "iYGcqwji5JMnrXdR", "entitlementOrigin": "Other", "itemIdentity": "MwWTi9RZGwhVMhSj", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 53, "entitlementId": "Jak4XFwaNMrVUUIY"}, "type": "DEBIT_WALLET"}, {"creditPayload": {"balanceOrigin": "Oculus", "count": 14, "currencyCode": "7Cri21vjeLO5HAK4", "expireAt": "1976-09-27T00:00:00Z"}, "debitPayload": {"count": 37, "currencyCode": "8EWulHnlkFTL2CD4", "walletPlatform": "GooglePlay"}, "fulFillItemPayload": {"count": 74, "entitlementCollectionId": "X0UWnLYF1nqOlCRa", "entitlementOrigin": "System", "itemIdentity": "KVhMQxb8SMcauQcq", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 58, "entitlementId": "Sry9dQOCFu1UIfAT"}, "type": "CREDIT_WALLET"}, {"creditPayload": {"balanceOrigin": "Oculus", "count": 9, "currencyCode": "I6Bm0Q4Dtkmt0T5d", "expireAt": "1997-03-27T00:00:00Z"}, "debitPayload": {"count": 24, "currencyCode": "npGCzBhYZ1lD8ODP", "walletPlatform": "GooglePlay"}, "fulFillItemPayload": {"count": 19, "entitlementCollectionId": "tA1L01gTVTPd3C4r", "entitlementOrigin": "Playstation", "itemIdentity": "jCKgMbjnyRkZxNcX", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 34, "entitlementId": "69g4K5kYPQBseWzW"}, "type": "CREDIT_WALLET"}], "userId": "seHfDu5S4A7r16co"}], "metadata": {"1frtH5JoviwXGd6T": {}, "NG18cDR3F6SUf3p1": {}, "oq8qM9rtcGlNZ8DS": {}}, "needPreCheck": true, "transactionId": "oIq6UjIw0CX4rzJy", "type": "8z0vkP2XbXhYV0sg"}' \
    > test.out 2>&1
eval_tap $? 243 'Commit' test.out

#- 244 GetTradeHistoryByCriteria
samples/cli/sample-apps Platform getTradeHistoryByCriteria \
    --namespace $AB_NAMESPACE \
    --limit '91' \
    --offset '54' \
    --status 'FAILED' \
    --type 'WORObSGfEKZhcwaS' \
    --userId 'pUEmMQVlK3ITeUom' \
    > test.out 2>&1
eval_tap $? 244 'GetTradeHistoryByCriteria' test.out

#- 245 GetTradeHistoryByTransactionId
samples/cli/sample-apps Platform getTradeHistoryByTransactionId \
    --namespace $AB_NAMESPACE \
    --transactionId 'CQnrYeqtZC8pq63f' \
    > test.out 2>&1
eval_tap $? 245 'GetTradeHistoryByTransactionId' test.out

#- 246 UnlockSteamUserAchievement
samples/cli/sample-apps Platform unlockSteamUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'jBCx66ortNI3fk8i' \
    --body '{"achievements": [{"id": "KukVuYnyMuzNZOcJ", "value": 2}, {"id": "hpJB4dCMHWH9bUA4", "value": 24}, {"id": "FRGxTFzSm4j8GYTa", "value": 2}], "steamUserId": "LmOKfWZ2RVhKejjp"}' \
    > test.out 2>&1
eval_tap $? 246 'UnlockSteamUserAchievement' test.out

#- 247 GetXblUserAchievements
samples/cli/sample-apps Platform getXblUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId 'jhBuLqIUXla8hoGN' \
    --xboxUserId '6kEVaVxDQGLTjyX1' \
    > test.out 2>&1
eval_tap $? 247 'GetXblUserAchievements' test.out

#- 248 UpdateXblUserAchievement
samples/cli/sample-apps Platform updateXblUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'Eoawywel8Mo6Rfz9' \
    --body '{"achievements": [{"id": "WMQkWl6LJDaG8Ya1", "percentComplete": 58}, {"id": "LRfy272opClUP1hR", "percentComplete": 90}, {"id": "TKyzrdt5dSY5MHOB", "percentComplete": 80}], "serviceConfigId": "GRpuLKrZS1fKAywe", "titleId": "h072Jzv5WxgpuIc8", "xboxUserId": "yCC3QTiCDhPz8Xe3"}' \
    > test.out 2>&1
eval_tap $? 248 'UpdateXblUserAchievement' test.out

#- 249 AnonymizeCampaign
samples/cli/sample-apps Platform anonymizeCampaign \
    --namespace $AB_NAMESPACE \
    --userId 'RdNXfQAb0FOXj00y' \
    > test.out 2>&1
eval_tap $? 249 'AnonymizeCampaign' test.out

#- 250 AnonymizeEntitlement
samples/cli/sample-apps Platform anonymizeEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'pcMvX5C2Im3YxqzM' \
    > test.out 2>&1
eval_tap $? 250 'AnonymizeEntitlement' test.out

#- 251 AnonymizeFulfillment
samples/cli/sample-apps Platform anonymizeFulfillment \
    --namespace $AB_NAMESPACE \
    --userId 'bPEDB3WcVCmpiAwb' \
    > test.out 2>&1
eval_tap $? 251 'AnonymizeFulfillment' test.out

#- 252 AnonymizeIntegration
samples/cli/sample-apps Platform anonymizeIntegration \
    --namespace $AB_NAMESPACE \
    --userId 'P3lEomNWdTso9fgC' \
    > test.out 2>&1
eval_tap $? 252 'AnonymizeIntegration' test.out

#- 253 AnonymizeOrder
samples/cli/sample-apps Platform anonymizeOrder \
    --namespace $AB_NAMESPACE \
    --userId 'thPDmXlJkiG3pl0E' \
    > test.out 2>&1
eval_tap $? 253 'AnonymizeOrder' test.out

#- 254 AnonymizePayment
samples/cli/sample-apps Platform anonymizePayment \
    --namespace $AB_NAMESPACE \
    --userId 'crTY0UgMCGVkx1lu' \
    > test.out 2>&1
eval_tap $? 254 'AnonymizePayment' test.out

#- 255 AnonymizeRevocation
samples/cli/sample-apps Platform anonymizeRevocation \
    --namespace $AB_NAMESPACE \
    --userId 'glITOhTA6NC0cl7K' \
    > test.out 2>&1
eval_tap $? 255 'AnonymizeRevocation' test.out

#- 256 AnonymizeSubscription
samples/cli/sample-apps Platform anonymizeSubscription \
    --namespace $AB_NAMESPACE \
    --userId '8jtxi03A8YZEuicE' \
    > test.out 2>&1
eval_tap $? 256 'AnonymizeSubscription' test.out

#- 257 AnonymizeWallet
samples/cli/sample-apps Platform anonymizeWallet \
    --namespace $AB_NAMESPACE \
    --userId 'WHQKzNQJO4eSTr4W' \
    > test.out 2>&1
eval_tap $? 257 'AnonymizeWallet' test.out

#- 258 GetUserDLCByPlatform
samples/cli/sample-apps Platform getUserDLCByPlatform \
    --namespace $AB_NAMESPACE \
    --userId 'PkdyGHn7ExSdaKQ4' \
    --type 'STEAM' \
    > test.out 2>&1
eval_tap $? 258 'GetUserDLCByPlatform' test.out

#- 259 GetUserDLC
samples/cli/sample-apps Platform getUserDLC \
    --namespace $AB_NAMESPACE \
    --userId 'AkmJsl2oiQ4WPEL5' \
    --includeAllNamespaces 'false' \
    --status 'FULFILLED' \
    --type 'EPICGAMES' \
    > test.out 2>&1
eval_tap $? 259 'GetUserDLC' test.out

#- 260 QueryUserEntitlements
samples/cli/sample-apps Platform queryUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'hL2Ke5gRRGNA0mmi' \
    --activeOnly 'true' \
    --appType 'DEMO' \
    --collectionId 'wLdpBMAd58Jxx0ht' \
    --entitlementClazz 'MEDIA' \
    --entitlementName 'p8Iv6HJp6kher3nO' \
    --features '["sWjTAh1QuST1nY2s", "k5KNgz9WW2riic3E", "j8zQw6ePA92kFG0T"]' \
    --fuzzyMatchName 'true' \
    --ignoreActiveDate 'false' \
    --itemId '["0VYnExagFrB6rU82", "E17YwBQARCiIbyBj", "pqFkkPS7aPXYAQXk"]' \
    --limit '10' \
    --offset '4' \
    --origin 'Oculus' \
    > test.out 2>&1
eval_tap $? 260 'QueryUserEntitlements' test.out

#- 261 GrantUserEntitlement
samples/cli/sample-apps Platform grantUserEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'tlv8WAnJFb70WQaA' \
    --body '[{"collectionId": "bhkPnmMDB0l1kbMv", "endDate": "1991-12-23T00:00:00Z", "grantedCode": "g4o8lQvjKyJhR1vI", "itemId": "9Wh22IeV2svOJTX8", "itemNamespace": "NqX2c97OsHSh5dr0", "language": "kRA_Rnbx_659", "metadata": {"s6ARvkBWvSJVqU81": {}, "fLfi2LfqY2yz7seW": {}, "GB5JxcTj50Bnxzep": {}}, "origin": "Steam", "quantity": 73, "region": "JfnKGEaFfrDEa9lA", "source": "REDEEM_CODE", "startDate": "1999-10-20T00:00:00Z", "storeId": "EnRvszso4QisgXYw"}, {"collectionId": "lM566T4rOrGoLcQn", "endDate": "1975-02-23T00:00:00Z", "grantedCode": "lQzAITu9OhGsP65Y", "itemId": "yZBhbS1ieVfjHWj7", "itemNamespace": "JUsdMqhg2nPnY1gF", "language": "nfYd-MNWr", "metadata": {"476h09XXpJjnKO2y": {}, "3olHbZSWs8s4h4pe": {}, "Q1W2DwarUyOUHbbY": {}}, "origin": "IOS", "quantity": 74, "region": "cbLJJpMerS0AcVfq", "source": "ACHIEVEMENT", "startDate": "1989-04-23T00:00:00Z", "storeId": "XtobhMzItUmS1ENm"}, {"collectionId": "sjQwfqROLrLDMlLs", "endDate": "1984-06-23T00:00:00Z", "grantedCode": "HpJlh9NC2Gm6PA1K", "itemId": "gOPlbieXXz64Rw5P", "itemNamespace": "p430EhDJ2ynXwgUY", "language": "MOgt_vWZP-dJ", "metadata": {"xeXOll18l0LYDuNc": {}, "lioOPKeFyfNzy5LK": {}, "Vf5QKoqalttN3iR1": {}}, "origin": "GooglePlay", "quantity": 36, "region": "yKA6PXMEkPasTlRP", "source": "ACHIEVEMENT", "startDate": "1981-03-21T00:00:00Z", "storeId": "GpYdYe4dYpqMSfA3"}]' \
    > test.out 2>&1
eval_tap $? 261 'GrantUserEntitlement' test.out

#- 262 GetUserAppEntitlementByAppId
samples/cli/sample-apps Platform getUserAppEntitlementByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'gt3TxQ3bCedA0xUU' \
    --activeOnly 'true' \
    --appId '5UeT8dAVWMnEAI9F' \
    > test.out 2>&1
eval_tap $? 262 'GetUserAppEntitlementByAppId' test.out

#- 263 QueryUserEntitlementsByAppType
samples/cli/sample-apps Platform queryUserEntitlementsByAppType \
    --namespace $AB_NAMESPACE \
    --userId '41TrUio9N71yoXIn' \
    --activeOnly 'false' \
    --limit '5' \
    --offset '75' \
    --appType 'DEMO' \
    > test.out 2>&1
eval_tap $? 263 'QueryUserEntitlementsByAppType' test.out

#- 264 GetUserEntitlementsByIds
samples/cli/sample-apps Platform getUserEntitlementsByIds \
    --namespace $AB_NAMESPACE \
    --userId '8gD4rkm3DeuKoQki' \
    --ids '["wvqHtO9zX3JFTcoU", "IRFTe09iKRCCVwUd", "Hr35iQS1U7mUjm6Q"]' \
    > test.out 2>&1
eval_tap $? 264 'GetUserEntitlementsByIds' test.out

#- 265 GetUserEntitlementByItemId
samples/cli/sample-apps Platform getUserEntitlementByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'XFHakHlhSJLrRZAa' \
    --activeOnly 'false' \
    --entitlementClazz 'CODE' \
    --platform '3VLbV886jv0NC3ey' \
    --itemId 'OvLBDluEnvdvRuNu' \
    > test.out 2>&1
eval_tap $? 265 'GetUserEntitlementByItemId' test.out

#- 266 GetUserActiveEntitlementsByItemIds
samples/cli/sample-apps Platform getUserActiveEntitlementsByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'TKjA4g7AbRFxjWM8' \
    --ids '["ecDy6QywbdW5mTh4", "QUqdEKWHJvaNwAp4", "gNdx3LOf7QlnzvRJ"]' \
    --platform 'meln718pwQAmjRVA' \
    > test.out 2>&1
eval_tap $? 266 'GetUserActiveEntitlementsByItemIds' test.out

#- 267 GetUserEntitlementBySku
samples/cli/sample-apps Platform getUserEntitlementBySku \
    --namespace $AB_NAMESPACE \
    --userId 'kvLD5HnT4Lk5DJBZ' \
    --activeOnly 'false' \
    --entitlementClazz 'ENTITLEMENT' \
    --platform 'ng5Vdn1LOO8p9V5v' \
    --sku 'RoS3ZE71BAdA7vxx' \
    > test.out 2>&1
eval_tap $? 267 'GetUserEntitlementBySku' test.out

#- 268 ExistsAnyUserActiveEntitlement
samples/cli/sample-apps Platform existsAnyUserActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'kdDcIjWlZ4vT6hRj' \
    --appIds '["lyCWf9XATJ7yn7u6", "O6rtbKohz6WrwtA2", "37lbtCJm6kSkhAVv"]' \
    --itemIds '["lUW9u8xv8JGwpB5T", "YYHvowagulx5yOAh", "FqYLoBAIKvyUXiHh"]' \
    --platform 'n3Chp9qIcuJ2uhas' \
    --skus '["Pu7eCNHFWMME82FL", "BQ5FnzRDXc9CDhQC", "yZuxcalW9BSSf7C0"]' \
    > test.out 2>&1
eval_tap $? 268 'ExistsAnyUserActiveEntitlement' test.out

#- 269 ExistsAnyUserActiveEntitlementByItemIds
samples/cli/sample-apps Platform existsAnyUserActiveEntitlementByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'iUGOUTNK7rHOskNL' \
    --platform 'hBL9kWnASIZi1dJ7' \
    --itemIds '["Jtfydqqe7SwaJ8iy", "ipNH7DLVLebGPCt7", "zV6CxUCdAe4Dzchm"]' \
    > test.out 2>&1
eval_tap $? 269 'ExistsAnyUserActiveEntitlementByItemIds' test.out

#- 270 GetUserAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform getUserAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --userId '0AM4CPjoc4ptqlwb' \
    --appId 'syrmpTyAURyrLesW' \
    > test.out 2>&1
eval_tap $? 270 'GetUserAppEntitlementOwnershipByAppId' test.out

#- 271 GetUserEntitlementOwnershipByItemId
samples/cli/sample-apps Platform getUserEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'YgVUSZiFS2i7xgbh' \
    --entitlementClazz 'SUBSCRIPTION' \
    --platform 'bxjSgTaDx3HO1Mhw' \
    --itemId 'LLVnTkb5SuUIeK4v' \
    > test.out 2>&1
eval_tap $? 271 'GetUserEntitlementOwnershipByItemId' test.out

#- 272 GetUserEntitlementOwnershipByItemIds
samples/cli/sample-apps Platform getUserEntitlementOwnershipByItemIds \
    --namespace $AB_NAMESPACE \
    --userId '88RSZmy70S7s0Wbt' \
    --ids '["pFAvUWIwkxtRqn0t", "bGVLxLd5x3iU8Qms", "kL6CZeJiiWz6KJfx"]' \
    --platform 'E7pueJponrt5dWfb' \
    > test.out 2>&1
eval_tap $? 272 'GetUserEntitlementOwnershipByItemIds' test.out

#- 273 GetUserEntitlementOwnershipBySku
samples/cli/sample-apps Platform getUserEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --userId 'xq2d0XAHcj3piKYs' \
    --entitlementClazz 'CODE' \
    --platform 'pJBVaGUK7dM9hRMV' \
    --sku 'Y2ZboO8Wl35bx08x' \
    > test.out 2>&1
eval_tap $? 273 'GetUserEntitlementOwnershipBySku' test.out

#- 274 RevokeAllEntitlements
samples/cli/sample-apps Platform revokeAllEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'M0Nip6bn3fk9RKZk' \
    > test.out 2>&1
eval_tap $? 274 'RevokeAllEntitlements' test.out

#- 275 RevokeUserEntitlements
samples/cli/sample-apps Platform revokeUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'DEZccq7iCk8jTpgl' \
    --entitlementIds '4c7O6cq8Ojly6mi5' \
    > test.out 2>&1
eval_tap $? 275 'RevokeUserEntitlements' test.out

#- 276 GetUserEntitlement
samples/cli/sample-apps Platform getUserEntitlement \
    --entitlementId 'KHDTppTcjdxaGjdP' \
    --namespace $AB_NAMESPACE \
    --userId 'Y512iNW88nMJKshi' \
    > test.out 2>&1
eval_tap $? 276 'GetUserEntitlement' test.out

#- 277 UpdateUserEntitlement
samples/cli/sample-apps Platform updateUserEntitlement \
    --entitlementId 'RJf1eFyoePChs7tm' \
    --namespace $AB_NAMESPACE \
    --userId 'vH3HhMdxmXRPt6bC' \
    --body '{"collectionId": "F4H29xjbyrA2K5Cr", "endDate": "1972-12-10T00:00:00Z", "nullFieldList": ["0Qaq389101WnMbyA", "6yYxesIA1uJRgLvK", "lPFyLzryNkJqzUPW"], "origin": "System", "reason": "jap0HlfNYv2bjwxH", "startDate": "1994-03-10T00:00:00Z", "status": "SOLD", "useCount": 62}' \
    > test.out 2>&1
eval_tap $? 277 'UpdateUserEntitlement' test.out

#- 278 ConsumeUserEntitlement
samples/cli/sample-apps Platform consumeUserEntitlement \
    --entitlementId 'HQOBgAGVSuFtkVbA' \
    --namespace $AB_NAMESPACE \
    --userId '6MyD7VRvmrq0SOKZ' \
    --body '{"metadata": {"4bdZEUg4bsdcmWE9": {}, "MMGtK8hPDxjaLnQC": {}, "REG3Atlkx0sBs12Z": {}}, "options": ["yn5YhJGbdtFQ3Ukd", "BMqvtrtMaVIQLHcG", "2tnpCkmpLbNXKldr"], "platform": "gcj551QUr2uNAO3F", "requestId": "PEkSpdR4ApW3UATp", "useCount": 33}' \
    > test.out 2>&1
eval_tap $? 278 'ConsumeUserEntitlement' test.out

#- 279 DisableUserEntitlement
samples/cli/sample-apps Platform disableUserEntitlement \
    --entitlementId 'GmwrYlpcydFJl7Rn' \
    --namespace $AB_NAMESPACE \
    --userId 'PYM7V2oko3DPGpM3' \
    > test.out 2>&1
eval_tap $? 279 'DisableUserEntitlement' test.out

#- 280 EnableUserEntitlement
samples/cli/sample-apps Platform enableUserEntitlement \
    --entitlementId '8p7JAGMlKFwdrWwg' \
    --namespace $AB_NAMESPACE \
    --userId 'KfdSDv7mKLuciFub' \
    > test.out 2>&1
eval_tap $? 280 'EnableUserEntitlement' test.out

#- 281 GetUserEntitlementHistories
samples/cli/sample-apps Platform getUserEntitlementHistories \
    --entitlementId 'aYMYWKsKCiyO3GSl' \
    --namespace $AB_NAMESPACE \
    --userId 'lHDd5omLIx3bZfI2' \
    > test.out 2>&1
eval_tap $? 281 'GetUserEntitlementHistories' test.out

#- 282 RevokeUserEntitlement
samples/cli/sample-apps Platform revokeUserEntitlement \
    --entitlementId 'K4CvKxlRMp246iwz' \
    --namespace $AB_NAMESPACE \
    --userId 'zYgDWFbWnOBUiafD' \
    --body '{"metadata": {"K9ayff70kibQyo0W": {}, "dDxsvebymyIq8j3B": {}, "AI2z4RRl5pBJSkAF": {}}}' \
    > test.out 2>&1
eval_tap $? 282 'RevokeUserEntitlement' test.out

#- 283 RevokeUserEntitlementByUseCount
samples/cli/sample-apps Platform revokeUserEntitlementByUseCount \
    --entitlementId 'gD1TfJfECX5DEUkY' \
    --namespace $AB_NAMESPACE \
    --userId 'xLNa14Y7eYjt2vcD' \
    --body '{"reason": "ES89UpGcKPR4xEC9", "useCount": 33}' \
    > test.out 2>&1
eval_tap $? 283 'RevokeUserEntitlementByUseCount' test.out

#- 284 PreCheckRevokeUserEntitlementByUseCount
samples/cli/sample-apps Platform preCheckRevokeUserEntitlementByUseCount \
    --entitlementId 'MZjSllEa4iivFDtO' \
    --namespace $AB_NAMESPACE \
    --userId 'Arf2nzGDZqANqgXf' \
    --quantity '71' \
    > test.out 2>&1
eval_tap $? 284 'PreCheckRevokeUserEntitlementByUseCount' test.out

#- 285 RevokeUseCount
eval_tap 0 285 'RevokeUseCount # SKIP deprecated' test.out

#- 286 SellUserEntitlement
samples/cli/sample-apps Platform sellUserEntitlement \
    --entitlementId 'aS0r67NWnIJbp44a' \
    --namespace $AB_NAMESPACE \
    --userId 'mIMVflO9FubKCgIh' \
    --body '{"platform": "es61QmntwTCQwa9H", "requestId": "sniPmUNPfGblvo7C", "useCount": 27}' \
    > test.out 2>&1
eval_tap $? 286 'SellUserEntitlement' test.out

#- 287 FulfillItem
samples/cli/sample-apps Platform fulfillItem \
    --namespace $AB_NAMESPACE \
    --userId 'MPMrV5OHVqtibbGj' \
    --body '{"duration": 64, "endDate": "1990-10-12T00:00:00Z", "entitlementCollectionId": "44emo9geKkGFwHXR", "entitlementOrigin": "Oculus", "itemId": "ltJsDo5As1CrjD6Q", "itemSku": "iVr4qrYac0EtRWFA", "language": "U0Dj2KZYJei5WYYv", "metadata": {"vOxOrVIw6CHLre5r": {}, "7v4QVMVRcL8kkEbK": {}, "bgcPCItvij06Kfi9": {}}, "order": {"currency": {"currencyCode": "5tNYaiuJ9Oazcglh", "currencySymbol": "yA4L6lvt1CsFy22f", "currencyType": "REAL", "decimals": 45, "namespace": "8q3YCYnS8gubvFB2"}, "ext": {"Ddigr4l2wsNiBx7c": {}, "L9jyaZlbrOsjREuU": {}, "ci2TcWhplhdVY9KZ": {}}, "free": true}, "orderNo": "0k8XjEgmgQfljYtl", "origin": "System", "overrideBundleItemQty": {"XTkJOjAlAyWaXxhU": 69, "UdKyUSZRY5IF0Nwp": 61, "56nKHnaaam9Vmvpz": 55}, "quantity": 94, "region": "5blxI6LixGc5Zo5S", "source": "EXPIRATION", "startDate": "1989-07-25T00:00:00Z", "storeId": "ASxh6AkZsNYonz0h"}' \
    > test.out 2>&1
eval_tap $? 287 'FulfillItem' test.out

#- 288 RedeemCode
samples/cli/sample-apps Platform redeemCode \
    --namespace $AB_NAMESPACE \
    --userId 'nJ3yENwWEN0cUP2T' \
    --body '{"code": "Io1Q8xT7rZUiotfe", "language": "dcAt-ls", "region": "RXIdtcUi89y8Z4Wu"}' \
    > test.out 2>&1
eval_tap $? 288 'RedeemCode' test.out

#- 289 PreCheckFulfillItem
samples/cli/sample-apps Platform preCheckFulfillItem \
    --namespace $AB_NAMESPACE \
    --userId 'w3fjipMSlzdybpWv' \
    --body '{"itemId": "SOSqHDmb5vwbP0FR", "itemSku": "BlwdLnfZbLBygcA9", "quantity": 58}' \
    > test.out 2>&1
eval_tap $? 289 'PreCheckFulfillItem' test.out

#- 290 FulfillRewards
samples/cli/sample-apps Platform fulfillRewards \
    --namespace $AB_NAMESPACE \
    --userId 'd13wC7E3OTqoTWi3' \
    --body '{"entitlementCollectionId": "95kRTsKgxMJ3Obvr", "entitlementOrigin": "IOS", "metadata": {"3MpRKkEcwmuwiHEW": {}, "kRMadtPYnOO4YT0z": {}, "6ipDbg9K7XTGKKBf": {}}, "origin": "System", "rewards": [{"currency": {"currencyCode": "ame78PJXFht24gtk", "namespace": "oEgndyJm3jr0uzUK"}, "item": {"itemId": "6xS8G6mYhTe2s4Df", "itemName": "POn3kBcmnCZVFluZ", "itemSku": "E9jRRt03OIroiQsS", "itemType": "KJMyKLzwFH9RyEdd"}, "quantity": 31, "type": "ITEM"}, {"currency": {"currencyCode": "QxrkXIpeqTrrD9ZN", "namespace": "7gtcTJKAdfrIZFpn"}, "item": {"itemId": "wBTLy58TELY5k4qV", "itemName": "kq9S8RAaFDVaROIi", "itemSku": "3r2pI9sMTHcb1tlV", "itemType": "VMoMfi6Tg6SsIg57"}, "quantity": 21, "type": "ITEM"}, {"currency": {"currencyCode": "waS53nOrXmkQdPJ3", "namespace": "Z70541wXLDeCCP0b"}, "item": {"itemId": "Y6YsVS6tLiWDC2OO", "itemName": "y1cSyjnxcobsKRfJ", "itemSku": "IggdlogcDzdDjYQD", "itemType": "5fA4rU4xp3zh1z46"}, "quantity": 72, "type": "CURRENCY"}], "source": "EXPIRATION", "transactionId": "12qDS3pjAWkULDx7"}' \
    > test.out 2>&1
eval_tap $? 290 'FulfillRewards' test.out

#- 291 QueryUserIAPOrders
samples/cli/sample-apps Platform queryUserIAPOrders \
    --namespace $AB_NAMESPACE \
    --userId 'Ll0QVhvwefgOxvZo' \
    --endTime 'RzGuOpsVFBWJcuou' \
    --limit '55' \
    --offset '74' \
    --productId 'vJ5XJ38hUy5hAzHW' \
    --startTime 'wG7XXOr0TQcsRxH9' \
    --status 'VERIFIED' \
    --type 'STEAM' \
    > test.out 2>&1
eval_tap $? 291 'QueryUserIAPOrders' test.out

#- 292 QueryAllUserIAPOrders
samples/cli/sample-apps Platform queryAllUserIAPOrders \
    --namespace $AB_NAMESPACE \
    --userId 'DyJL9e8vJMd4Uq92' \
    > test.out 2>&1
eval_tap $? 292 'QueryAllUserIAPOrders' test.out

#- 293 QueryUserIAPConsumeHistory
samples/cli/sample-apps Platform queryUserIAPConsumeHistory \
    --namespace $AB_NAMESPACE \
    --userId 'k7SBrJKvXStOxrBx' \
    --endTime '0XWW6wZ4i1lVmuPq' \
    --limit '78' \
    --offset '87' \
    --startTime 'RMFbQkJXYGxYJ4Lw' \
    --status 'FAIL' \
    --type 'EPICGAMES' \
    > test.out 2>&1
eval_tap $? 293 'QueryUserIAPConsumeHistory' test.out

#- 294 MockFulfillIAPItem
samples/cli/sample-apps Platform mockFulfillIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'U13TMfyzdiub291J' \
    --body '{"itemIdentityType": "ITEM_SKU", "language": "jwif-pkfg-Oz", "productId": "5tFGGxmZdcmM75iK", "region": "WQU1fZnmpucy5sOE", "transactionId": "OHj1XepggRN2DHnJ", "type": "GOOGLE"}' \
    > test.out 2>&1
eval_tap $? 294 'MockFulfillIAPItem' test.out

#- 295 AdminSyncOculusSubscriptions
samples/cli/sample-apps Platform adminSyncOculusSubscriptions \
    --namespace $AB_NAMESPACE \
    --userId 'DlecZjrLPPWicjEj' \
    --body '{"skus": ["YYeAgXrVQYD4hNf4", "c29JXbnRedQcCxzm", "FA5IWhx8J9xIoWar"]}' \
    > test.out 2>&1
eval_tap $? 295 'AdminSyncOculusSubscriptions' test.out

#- 296 AdminGetIAPOrderLineItems
samples/cli/sample-apps Platform adminGetIAPOrderLineItems \
    --iapOrderNo 'z0dNu3S8H3h4AcWq' \
    --namespace $AB_NAMESPACE \
    --userId '3KObVo2SNa0Szn51' \
    > test.out 2>&1
eval_tap $? 296 'AdminGetIAPOrderLineItems' test.out

#- 297 AdminSyncSteamAbnormalTransaction
samples/cli/sample-apps Platform adminSyncSteamAbnormalTransaction \
    --namespace $AB_NAMESPACE \
    --userId 'x9M2uvIuSO0vsGv9' \
    > test.out 2>&1
eval_tap $? 297 'AdminSyncSteamAbnormalTransaction' test.out

#- 298 AdminSyncSteamIAPByTransaction
samples/cli/sample-apps Platform adminSyncSteamIAPByTransaction \
    --namespace $AB_NAMESPACE \
    --userId 'IccqbBMUSBwxehE4' \
    --body '{"orderId": "ecJiv5CbG6k2zWJg"}' \
    > test.out 2>&1
eval_tap $? 298 'AdminSyncSteamIAPByTransaction' test.out

#- 299 QueryUserThirdPartySubscription
samples/cli/sample-apps Platform queryUserThirdPartySubscription \
    --namespace $AB_NAMESPACE \
    --userId 'JnmMb7hDYmEIpaI7' \
    --activeOnly 'false' \
    --groupId 'PBJKgNFgNNyZKlbP' \
    --limit '77' \
    --offset '93' \
    --platform 'APPLE' \
    --productId 'd7lp7g8zIuKQtDNJ' \
    > test.out 2>&1
eval_tap $? 299 'QueryUserThirdPartySubscription' test.out

#- 300 GetThirdPartyPlatformSubscriptionOwnershipByGroupId
samples/cli/sample-apps Platform getThirdPartyPlatformSubscriptionOwnershipByGroupId \
    --namespace $AB_NAMESPACE \
    --platform 'OCULUS' \
    --userId 'DJIJEUEJHylxnGlX' \
    --groupId 'uAERnpsYvid8ffB1' \
    > test.out 2>&1
eval_tap $? 300 'GetThirdPartyPlatformSubscriptionOwnershipByGroupId' test.out

#- 301 GetThirdPartyPlatformSubscriptionOwnershipByProductId
samples/cli/sample-apps Platform getThirdPartyPlatformSubscriptionOwnershipByProductId \
    --namespace $AB_NAMESPACE \
    --platform 'XBOX' \
    --userId 'HlNA79cOoDp5VRFk' \
    --productId 'objAkG7qAIxGUbkP' \
    > test.out 2>&1
eval_tap $? 301 'GetThirdPartyPlatformSubscriptionOwnershipByProductId' test.out

#- 302 QueryUserThirdPartySubscriptionTransactions
samples/cli/sample-apps Platform queryUserThirdPartySubscriptionTransactions \
    --namespace $AB_NAMESPACE \
    --userId 'OG8PjWWNLcJVi1Hl' \
    --activeOnly 'false' \
    --groupId 'owfXcqOdPCAUvuEP' \
    --limit '45' \
    --offset '61' \
    --platform 'EPICGAMES' \
    --productId 'Hj8tniCroc8LlJQ6' \
    > test.out 2>&1
eval_tap $? 302 'QueryUserThirdPartySubscriptionTransactions' test.out

#- 303 GetThirdPartySubscriptionDetails
samples/cli/sample-apps Platform getThirdPartySubscriptionDetails \
    --id 'RHphMM6hFO5jj3bX' \
    --namespace $AB_NAMESPACE \
    --userId 'JbXkXD3LLbwrGakG' \
    > test.out 2>&1
eval_tap $? 303 'GetThirdPartySubscriptionDetails' test.out

#- 304 GetSubscriptionHistory
samples/cli/sample-apps Platform getSubscriptionHistory \
    --id '7YqypnsbVq21Lvcv' \
    --namespace $AB_NAMESPACE \
    --userId 'x7WHiZFMmunbCdTn' \
    --limit '8' \
    --offset '43' \
    > test.out 2>&1
eval_tap $? 304 'GetSubscriptionHistory' test.out

#- 305 SyncSubscriptionTransaction
samples/cli/sample-apps Platform syncSubscriptionTransaction \
    --id 'diCW3ghknFrIw1Ub' \
    --namespace $AB_NAMESPACE \
    --userId 'zEVeSjgKTHs8x7y8' \
    > test.out 2>&1
eval_tap $? 305 'SyncSubscriptionTransaction' test.out

#- 306 GetThirdPartyUserSubscriptionDetails
samples/cli/sample-apps Platform getThirdPartyUserSubscriptionDetails \
    --id '18zC94cVCddbDAAU' \
    --namespace $AB_NAMESPACE \
    --userId 'PkYfwPLkPZ6XWjhr' \
    > test.out 2>&1
eval_tap $? 306 'GetThirdPartyUserSubscriptionDetails' test.out

#- 307 SyncSubscription
samples/cli/sample-apps Platform syncSubscription \
    --id 'GyAuIBQOPsmVVvB9' \
    --namespace $AB_NAMESPACE \
    --userId 'NKxnZDWlqaZYtCUf' \
    > test.out 2>&1
eval_tap $? 307 'SyncSubscription' test.out

#- 308 QueryUserOrders
samples/cli/sample-apps Platform queryUserOrders \
    --namespace $AB_NAMESPACE \
    --userId 'dMnHSMLgtpN5Vnjd' \
    --discounted 'true' \
    --itemId 'Ocep9TJyGoIVdinj' \
    --limit '59' \
    --offset '48' \
    --status 'CHARGED' \
    > test.out 2>&1
eval_tap $? 308 'QueryUserOrders' test.out

#- 309 AdminCreateUserOrder
samples/cli/sample-apps Platform adminCreateUserOrder \
    --namespace $AB_NAMESPACE \
    --userId 'icETFjRUlEC3ihWW' \
    --body '{"currencyCode": "4hQ80nECKWB3fJR8", "currencyNamespace": "11KmQUz034eRzCxg", "discountCodes": ["GH0qjSPYzpWFU97C", "bmwjvar54ShEgvIe", "fdsOIFOLw59l8DYp"], "discountedPrice": 53, "entitlementPlatform": "Other", "ext": {"P6ILgoopaFBVoRLY": {}, "MyfsgC4dx4z0thL7": {}, "G3Pvi1sDyI3DA0pY": {}}, "itemId": "HITwyzmJhkqxqf0z", "language": "RAWktTNeNQoSuyJC", "options": {"skipPriceValidation": false}, "platform": "Other", "price": 32, "quantity": 66, "region": "ppJ2RvVFRItdAeUI", "returnUrl": "oAXPNQ79cJChBHcs", "sandbox": false, "sectionId": "tdrAjNXSF4fkBuXb"}' \
    > test.out 2>&1
eval_tap $? 309 'AdminCreateUserOrder' test.out

#- 310 CountOfPurchasedItem
samples/cli/sample-apps Platform countOfPurchasedItem \
    --namespace $AB_NAMESPACE \
    --userId 'SFElSc1SuGef2anj' \
    --itemId 'hxMiC9uBUVR4tazC' \
    > test.out 2>&1
eval_tap $? 310 'CountOfPurchasedItem' test.out

#- 311 GetUserOrder
samples/cli/sample-apps Platform getUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'RBGUR1fGLfG7ioRU' \
    --userId 'nuAb25WupTyQvJGL' \
    > test.out 2>&1
eval_tap $? 311 'GetUserOrder' test.out

#- 312 UpdateUserOrderStatus
samples/cli/sample-apps Platform updateUserOrderStatus \
    --namespace $AB_NAMESPACE \
    --orderNo '0NNfl58dz6hkYQGx' \
    --userId 'l4Kl5SIHPSo9EcEA' \
    --body '{"status": "REFUND_FAILED", "statusReason": "D0kdXqSEDQNba9ty"}' \
    > test.out 2>&1
eval_tap $? 312 'UpdateUserOrderStatus' test.out

#- 313 FulfillUserOrder
samples/cli/sample-apps Platform fulfillUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'D7Ol1WPCvej4p81Q' \
    --userId 'ALcK5XETF1Vlxio8' \
    > test.out 2>&1
eval_tap $? 313 'FulfillUserOrder' test.out

#- 314 GetUserOrderGrant
eval_tap 0 314 'GetUserOrderGrant # SKIP deprecated' test.out

#- 315 GetUserOrderHistories
samples/cli/sample-apps Platform getUserOrderHistories \
    --namespace $AB_NAMESPACE \
    --orderNo 'hj3UJxBVX7hkUKKU' \
    --userId 'IjxNveP5NKwNAFJt' \
    > test.out 2>&1
eval_tap $? 315 'GetUserOrderHistories' test.out

#- 316 ProcessUserOrderNotification
samples/cli/sample-apps Platform processUserOrderNotification \
    --namespace $AB_NAMESPACE \
    --orderNo '1NoaLMp0ZunC8VoA' \
    --userId '4vlkpJREzRziknJL' \
    --body '{"additionalData": {"cardSummary": "H2W4JXwsDwW1G4zo"}, "authorisedTime": "1974-11-15T00:00:00Z", "chargebackReversedTime": "1999-06-02T00:00:00Z", "chargebackTime": "1974-08-15T00:00:00Z", "chargedTime": "1972-03-03T00:00:00Z", "createdTime": "1979-03-12T00:00:00Z", "currency": {"currencyCode": "EwbPqOQqDTyU2zO1", "currencySymbol": "PbpSVALHuyRpcKWZ", "currencyType": "REAL", "decimals": 23, "namespace": "Wdpg7XHmb3snOYyP"}, "customParameters": {"FoeZdTFMe2UadOW7": {}, "fGYrDFDrqIFVnh65": {}, "78V7D8ctjjPXoQ7G": {}}, "extOrderNo": "rtdKhj3Fhm6U3dp7", "extTxId": "dtPN58LwvGVIUXKK", "extUserId": "RgHAaTuWI2vvBCyY", "issuedAt": "1997-07-31T00:00:00Z", "metadata": {"RtsrLGON86JviJQW": "YdXo9iLZwAIw0u7s", "ClCFiQQmz6tEMCYE": "B4sVh6ANRYM0qPY1", "0bv7TR5HjfLy1G5P": "tW8tAZ6MOqoTfHUW"}, "namespace": "jrfiyX1OdU82PTLg", "nonceStr": "tDHaM93aqtymJtQn", "paymentData": {"discountAmount": 10, "discountCode": "TfCcH3TPKjEHJ5xo", "subtotalPrice": 68, "tax": 88, "totalPrice": 12}, "paymentMethod": "33ggHokLnOqmdkKm", "paymentMethodFee": 21, "paymentOrderNo": "tkqiKuZDyvizXMMe", "paymentProvider": "ALIPAY", "paymentProviderFee": 42, "paymentStationUrl": "uDei4MALt8Q8tnca", "price": 75, "refundedTime": "1978-01-15T00:00:00Z", "salesTax": 29, "sandbox": false, "sku": "YcHQI7Oc8pt5yZt9", "status": "AUTHORISED", "statusReason": "IXF6sHdrjpLBPf35", "subscriptionId": "0qJrWgmwcPYm69x2", "subtotalPrice": 0, "targetNamespace": "AXDpWmLNJOSX76RI", "targetUserId": "65WYLcEzfPPZrIAT", "tax": 29, "totalPrice": 81, "totalTax": 72, "txEndTime": "1988-12-15T00:00:00Z", "type": "PylT6pBLHm7VnizT", "userId": "cALzUpGfC3Ev3OYI", "vat": 43}' \
    > test.out 2>&1
eval_tap $? 316 'ProcessUserOrderNotification' test.out

#- 317 DownloadUserOrderReceipt
samples/cli/sample-apps Platform downloadUserOrderReceipt \
    --namespace $AB_NAMESPACE \
    --orderNo 'nMWI5HfLmEO5QEET' \
    --userId 'NZZ74ek0SwR6Lgo8' \
    > test.out 2>&1
eval_tap $? 317 'DownloadUserOrderReceipt' test.out

#- 318 CreateUserPaymentOrder
samples/cli/sample-apps Platform createUserPaymentOrder \
    --namespace $AB_NAMESPACE \
    --userId 'P1V8rfphmcNDvUFt' \
    --body '{"currencyCode": "q1kn4bBof4GLa4SL", "currencyNamespace": "iRsZzH2RFkEFPbTR", "customParameters": {"ve6lSar5WADxCSX8": {}, "rSO1OeF6tJ5EvhiO": {}, "z5TMDq0w2Veo9jxx": {}}, "description": "8wY1ouPqzZne80eK", "extOrderNo": "M3p934e9gRV3Tg1S", "extUserId": "0caOH8NLyqkBrkRy", "itemType": "OPTIONBOX", "language": "isK_ZK", "metadata": {"lpqlBWuMi7yJNSCq": "Hjc10g11n75QrEbE", "Yz7FdPtFK2xCrTes": "ckni3PpxnIPrD433", "Fqs0QcroK5HXhNzv": "WZrXTThW0AMReYCP"}, "notifyUrl": "5az6WQnF1g1tbdHk", "omitNotification": true, "platform": "UiuB0SmBOgtlowAL", "price": 96, "recurringPaymentOrderNo": "KvCBin6cfi8n8zNb", "region": "Df4vjRQI6lh5I8iF", "returnUrl": "toEJCTXBD3zWf2gR", "sandbox": false, "sku": "i2c1BVJPn78LBxdh", "subscriptionId": "WX67rLTGUQn1Dmql", "title": "3Dv9CiSweUycdMUo"}' \
    > test.out 2>&1
eval_tap $? 318 'CreateUserPaymentOrder' test.out

#- 319 RefundUserPaymentOrder
samples/cli/sample-apps Platform refundUserPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo '7a0VL0waHPaS4dN4' \
    --userId 'UfXX1O4zrPYPObhD' \
    --body '{"description": "y7GPby5QzBtuyaSv"}' \
    > test.out 2>&1
eval_tap $? 319 'RefundUserPaymentOrder' test.out

#- 320 GetUserPlatformAccountClosureHistories
samples/cli/sample-apps Platform getUserPlatformAccountClosureHistories \
    --namespace $AB_NAMESPACE \
    --userId 'jcG5O6pBdWU9C5dR' \
    > test.out 2>&1
eval_tap $? 320 'GetUserPlatformAccountClosureHistories' test.out

#- 321 ApplyUserRedemption
samples/cli/sample-apps Platform applyUserRedemption \
    --namespace $AB_NAMESPACE \
    --userId 'COW4INXRmmGvgtWO' \
    --body '{"code": "n1nLyIZJT3eJTPdR", "orderNo": "aZElod4p9XTidNRd"}' \
    > test.out 2>&1
eval_tap $? 321 'ApplyUserRedemption' test.out

#- 322 DoRevocation
samples/cli/sample-apps Platform doRevocation \
    --namespace $AB_NAMESPACE \
    --userId 'HfBEesVqg50OIbsg' \
    --body '{"meta": {"1tuKckKTcQN9ort9": {}, "ieGudj3J801NjTg4": {}, "qWTUqsO9aKtCXsAz": {}}, "reason": "iqr7d8GbFRTetUxd", "requestId": "c2hk1om82Djx80Q6", "revokeEntries": [{"currency": {"balanceOrigin": "Twitch", "currencyCode": "dlVw1lNafCB8FDgC", "namespace": "LCXoi169m5vvbvdc"}, "entitlement": {"entitlementId": "E20rSI6aOI4JZVqH"}, "item": {"entitlementOrigin": "Epic", "itemIdentity": "thqd9ejcGDmlrqTi", "itemIdentityType": "ITEM_ID", "origin": "Oculus"}, "quantity": 52, "type": "ITEM"}, {"currency": {"balanceOrigin": "Playstation", "currencyCode": "Pp71VyxvLaHc7YaZ", "namespace": "1hqDlkpPwwdH1nU4"}, "entitlement": {"entitlementId": "pby3D6a2GbJMYibL"}, "item": {"entitlementOrigin": "Playstation", "itemIdentity": "CXFUu6AJ7AjolVRV", "itemIdentityType": "ITEM_ID", "origin": "IOS"}, "quantity": 100, "type": "ITEM"}, {"currency": {"balanceOrigin": "System", "currencyCode": "z38424wsj3TatTHz", "namespace": "TYZK3MxGaQvhljRk"}, "entitlement": {"entitlementId": "3B42A2m7qIKMXq6W"}, "item": {"entitlementOrigin": "Steam", "itemIdentity": "ou1Z3tiPQfWbWj1B", "itemIdentityType": "ITEM_SKU", "origin": "Xbox"}, "quantity": 78, "type": "ENTITLEMENT"}], "source": "IAP", "transactionId": "vClM5Fqrbr3570JC"}' \
    > test.out 2>&1
eval_tap $? 322 'DoRevocation' test.out

#- 323 RegisterXblSessions
samples/cli/sample-apps Platform registerXblSessions \
    --namespace $AB_NAMESPACE \
    --userId 'G5HNTxqbuuanNBg9' \
    --body '{"gameSessionId": "SuzR1Mb0acMFOIZL", "payload": {"7XrVuXGxf6xyoW7r": {}, "KdAUBz5xoZi7q1Ox": {}, "Vwf9QzT4LKj4O5k8": {}}, "scid": "VG9yk9AUY3wOhTg2", "sessionTemplateName": "Ch8BQ6uzPzZQ1Yf7"}' \
    > test.out 2>&1
eval_tap $? 323 'RegisterXblSessions' test.out

#- 324 QueryUserSubscriptions
samples/cli/sample-apps Platform queryUserSubscriptions \
    --namespace $AB_NAMESPACE \
    --userId 'SlkULuwrZ0SHkQcr' \
    --chargeStatus 'CHARGE_FAILED' \
    --itemId 'yVBPMvO9YP9DBfUf' \
    --limit '59' \
    --offset '85' \
    --sku 'fcsZZoGRLH5mq12B' \
    --status 'ACTIVE' \
    --subscribedBy 'USER' \
    > test.out 2>&1
eval_tap $? 324 'QueryUserSubscriptions' test.out

#- 325 GetUserSubscriptionActivities
samples/cli/sample-apps Platform getUserSubscriptionActivities \
    --namespace $AB_NAMESPACE \
    --userId 'SZLd2hCzmNvqFxki' \
    --excludeSystem 'true' \
    --limit '82' \
    --offset '3' \
    --subscriptionId 'b4wcvnFVPUQoWqPE' \
    > test.out 2>&1
eval_tap $? 325 'GetUserSubscriptionActivities' test.out

#- 326 PlatformSubscribeSubscription
samples/cli/sample-apps Platform platformSubscribeSubscription \
    --namespace $AB_NAMESPACE \
    --userId 'CCaUBTvN0vyUoy3w' \
    --body '{"grantDays": 92, "itemId": "MQREtdeRRHennH1t", "language": "5hrEhYsDd8b6AN9D", "reason": "ErRzDxFV7nPHBTBs", "region": "AQaFz6IgUiQxgzJV", "source": "x6RUoQFQRkTgZEkF"}' \
    > test.out 2>&1
eval_tap $? 326 'PlatformSubscribeSubscription' test.out

#- 327 CheckUserSubscriptionSubscribableByItemId
samples/cli/sample-apps Platform checkUserSubscriptionSubscribableByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'paMU6M6gkHSNKKVl' \
    --itemId 'HjJoPXW2OwIme7vk' \
    > test.out 2>&1
eval_tap $? 327 'CheckUserSubscriptionSubscribableByItemId' test.out

#- 328 GetUserSubscription
samples/cli/sample-apps Platform getUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'lCSlpylOOmnDF186' \
    --userId 'Sqke2VfXQ5xcKUpt' \
    > test.out 2>&1
eval_tap $? 328 'GetUserSubscription' test.out

#- 329 DeleteUserSubscription
samples/cli/sample-apps Platform deleteUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'vhhVYAGJy1km1Hx7' \
    --userId 'thkOYjTa62oPr0UD' \
    > test.out 2>&1
eval_tap $? 329 'DeleteUserSubscription' test.out

#- 330 CancelSubscription
samples/cli/sample-apps Platform cancelSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'PtNDBky48CKNN6df' \
    --userId 'SMBhPQRfUy8pzUjk' \
    --force 'true' \
    --body '{"immediate": true, "reason": "kpMdCfZZfI8j4MrU"}' \
    > test.out 2>&1
eval_tap $? 330 'CancelSubscription' test.out

#- 331 GrantDaysToSubscription
samples/cli/sample-apps Platform grantDaysToSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'vLO6CHBF1KBcTDRc' \
    --userId 'KhteOXAxlg8xhrx1' \
    --body '{"grantDays": 17, "reason": "fVSZqb5vWpHzlbym"}' \
    > test.out 2>&1
eval_tap $? 331 'GrantDaysToSubscription' test.out

#- 332 GetUserSubscriptionBillingHistories
samples/cli/sample-apps Platform getUserSubscriptionBillingHistories \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'vyPOGSjkFOc0XWLF' \
    --userId '3JmTkpVoNVCrftc5' \
    --excludeFree 'true' \
    --limit '49' \
    --offset '33' \
    > test.out 2>&1
eval_tap $? 332 'GetUserSubscriptionBillingHistories' test.out

#- 333 ProcessUserSubscriptionNotification
samples/cli/sample-apps Platform processUserSubscriptionNotification \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'DwQmPXjV5j4qdUZs' \
    --userId 'S6rnbdyEl1tQcfgO' \
    --body '{"additionalData": {"cardSummary": "YNjwgOlU4t9QhFXU"}, "authorisedTime": "1988-12-14T00:00:00Z", "chargebackReversedTime": "1987-06-21T00:00:00Z", "chargebackTime": "1990-04-23T00:00:00Z", "chargedTime": "1975-08-06T00:00:00Z", "createdTime": "1974-07-30T00:00:00Z", "currency": {"currencyCode": "Tb6eM5pi5N0yPkBu", "currencySymbol": "P0483Zsw46YEWXjp", "currencyType": "VIRTUAL", "decimals": 4, "namespace": "wFODjqJQJalUsJ7g"}, "customParameters": {"doNgRGlFYNccolpA": {}, "Pl4GCR0b2aaqzjSr": {}, "W3oGeu6PYtCp4lFZ": {}}, "extOrderNo": "jvQacsnAUhwJj1VO", "extTxId": "xsTjAylVkd6OHOZL", "extUserId": "6J4fBmi4cYtHCsNh", "issuedAt": "1997-11-19T00:00:00Z", "metadata": {"cf6NrgHokQ0elrXt": "lI4ktKNapJOBbDWh", "l6DkkQAdEgDpbzoW": "bgvIAoAeyRP9s0qI", "9OPhT5WWCeNZZ3AY": "0tzMHs1ZvtfvQ9gq"}, "namespace": "PcdFu3OHO8FZvn5o", "nonceStr": "tPazHwYjczaVRyvZ", "paymentData": {"discountAmount": 66, "discountCode": "zQzBafjWuLqEs6ga", "subtotalPrice": 61, "tax": 48, "totalPrice": 46}, "paymentMethod": "MtzVbc9BjRZzmXoc", "paymentMethodFee": 40, "paymentOrderNo": "304sFFbv2SgquauB", "paymentProvider": "ALIPAY", "paymentProviderFee": 17, "paymentStationUrl": "KzIXKEhmXrK40EmH", "price": 54, "refundedTime": "1985-06-13T00:00:00Z", "salesTax": 66, "sandbox": true, "sku": "9PZEFxWiFLfnFkNQ", "status": "CHARGEBACK_REVERSED", "statusReason": "ABJomql9viqagTNA", "subscriptionId": "bv69QeinFroUTLoJ", "subtotalPrice": 83, "targetNamespace": "X6m4Cfas29yDjrDj", "targetUserId": "lWx4Op6uQR26YKkj", "tax": 52, "totalPrice": 17, "totalTax": 12, "txEndTime": "1987-05-29T00:00:00Z", "type": "bOlLuydb1ltGbTdD", "userId": "uyLP68Da7AtpyyKZ", "vat": 89}' \
    > test.out 2>&1
eval_tap $? 333 'ProcessUserSubscriptionNotification' test.out

#- 334 AcquireUserTicket
samples/cli/sample-apps Platform acquireUserTicket \
    --boothName 'T7fHjTBv58U49zIo' \
    --namespace $AB_NAMESPACE \
    --userId 'zVxuv2h55lX3uFPR' \
    --body '{"count": 2, "orderNo": "WxNArJppRZB25TwE"}' \
    > test.out 2>&1
eval_tap $? 334 'AcquireUserTicket' test.out

#- 335 QueryUserCurrencyWallets
samples/cli/sample-apps Platform queryUserCurrencyWallets \
    --namespace $AB_NAMESPACE \
    --userId 'j1FlSm7IpQfa59Pe' \
    > test.out 2>&1
eval_tap $? 335 'QueryUserCurrencyWallets' test.out

#- 336 DebitUserWalletByCurrencyCode
samples/cli/sample-apps Platform debitUserWalletByCurrencyCode \
    --currencyCode 'j4SUXePZuCVOdE26' \
    --namespace $AB_NAMESPACE \
    --userId 'MHiWP3Hgi9P0kbt2' \
    --body '{"allowOverdraft": false, "amount": 36, "balanceOrigin": "Xbox", "balanceSource": "OTHER", "metadata": {"IQ9n9G84AlxVOEXI": {}, "TSpaeaWyfgnmqoEb": {}, "kO6bvd2vLlOxgGIF": {}}, "reason": "Y2YVAWkItaumzTen"}' \
    > test.out 2>&1
eval_tap $? 336 'DebitUserWalletByCurrencyCode' test.out

#- 337 ListUserCurrencyTransactions
samples/cli/sample-apps Platform listUserCurrencyTransactions \
    --currencyCode 'Hy3eq9zxjg6zuFk8' \
    --namespace $AB_NAMESPACE \
    --userId 'Qg92I4pRKFAcKhGQ' \
    --limit '45' \
    --offset '1' \
    > test.out 2>&1
eval_tap $? 337 'ListUserCurrencyTransactions' test.out

#- 338 CheckBalance
samples/cli/sample-apps Platform checkBalance \
    --currencyCode 'YyQFX9BPHlF9RLfR' \
    --namespace $AB_NAMESPACE \
    --userId '1igZmKGUbJPaOXzn' \
    --request '{"amount": 89, "debitBalanceSource": "ORDER_REVOCATION", "metadata": {"rl7vRL7VxXq3daYU": {}, "VIAL9dtaUSSxLLoK": {}, "peQskxjMpxw1zMxs": {}}, "reason": "P9r9tFVceMYbs5Tr", "walletPlatform": "Nintendo"}' \
    > test.out 2>&1
eval_tap $? 338 'CheckBalance' test.out

#- 339 CheckWallet
eval_tap 0 339 'CheckWallet # SKIP deprecated' test.out

#- 340 CreditUserWallet
samples/cli/sample-apps Platform creditUserWallet \
    --currencyCode 'DV1R1ufIMQdNm4tK' \
    --namespace $AB_NAMESPACE \
    --userId '2O1p3gql7bS59Jmi' \
    --body '{"amount": 27, "expireAt": "1971-03-18T00:00:00Z", "metadata": {"rvFwNGpvd7FDnfgP": {}, "8YPEOLiww9JGcIhF": {}, "TmQxN5HAkqxvmDzq": {}}, "origin": "GooglePlay", "reason": "1hjtUu3Ha3pmOxck", "source": "ACHIEVEMENT"}' \
    > test.out 2>&1
eval_tap $? 340 'CreditUserWallet' test.out

#- 341 DebitByWalletPlatform
samples/cli/sample-apps Platform debitByWalletPlatform \
    --currencyCode 'BacU1bgLZHaMJBzx' \
    --namespace $AB_NAMESPACE \
    --userId 'ZBi5uQGpa4H3Ui41' \
    --request '{"amount": 38, "debitBalanceSource": "OTHER", "metadata": {"pfa0aALaG2FOZuxU": {}, "XVVCPzRX5bqrJq4T": {}, "WGrFf97er6zktkPa": {}}, "reason": "KBOCgYeYf37v3quy", "walletPlatform": "Other"}' \
    > test.out 2>&1
eval_tap $? 341 'DebitByWalletPlatform' test.out

#- 342 PayWithUserWallet
samples/cli/sample-apps Platform payWithUserWallet \
    --currencyCode 'HkUtPLysYQXBlE1k' \
    --namespace $AB_NAMESPACE \
    --userId 'Xw4Vi9w9Ga7iII8Z' \
    --body '{"amount": 37, "metadata": {"cZzjZAnusB1TCzh1": {}, "rT8Jb4bGocG0eLur": {}, "KKwU0BGadU2ui8fH": {}}, "walletPlatform": "IOS"}' \
    > test.out 2>&1
eval_tap $? 342 'PayWithUserWallet' test.out

#- 343 GetUserWallet
eval_tap 0 343 'GetUserWallet # SKIP deprecated' test.out

#- 344 DebitUserWallet
eval_tap 0 344 'DebitUserWallet # SKIP deprecated' test.out

#- 345 DisableUserWallet
eval_tap 0 345 'DisableUserWallet # SKIP deprecated' test.out

#- 346 EnableUserWallet
eval_tap 0 346 'EnableUserWallet # SKIP deprecated' test.out

#- 347 ListUserWalletTransactions
eval_tap 0 347 'ListUserWalletTransactions # SKIP deprecated' test.out

#- 348 ListViews
samples/cli/sample-apps Platform listViews \
    --namespace $AB_NAMESPACE \
    --storeId '3RI9lsfjbitxSLmE' \
    > test.out 2>&1
eval_tap $? 348 'ListViews' test.out

#- 349 CreateView
samples/cli/sample-apps Platform createView \
    --namespace $AB_NAMESPACE \
    --storeId '3aSIKpSLfBZjxo09' \
    --body '{"displayOrder": 54, "localizations": {"NQthL9RleCgtRMsi": {"description": "AStqdbPqQsxNNivV", "localExt": {"idZk4SXjCaia5Lel": {}, "QAITO50jhAbOPDCS": {}, "weTTnm2E61UarLEh": {}}, "longDescription": "93okaUwRs5LNHetu", "title": "0ReWxIdqsrjtvQz8"}, "9IbGCiYH8EapQVpV": {"description": "FZvabvlaK00VqZe2", "localExt": {"1laqrYyE8GNFaiIF": {}, "ILJUgc4iQl8JjyPW": {}, "GhuyUJA4j23b5zQV": {}}, "longDescription": "pXWQ1viEzjX6dKog", "title": "br49uDPpVhjAHMFg"}, "53L3TGdFV3s82Ek6": {"description": "rojemq2gUzXbwTZl", "localExt": {"xrgi7plLhyuXFBJL": {}, "Z6mUqReeTZ7B4uxk": {}, "Au9q4v3SZR6jq8yn": {}}, "longDescription": "MAvoP40hkvdWiUlc", "title": "RKTJEIdRPwJk7sVf"}}, "name": "XFu74xMs2ESLKM7p"}' \
    > test.out 2>&1
eval_tap $? 349 'CreateView' test.out

#- 350 GetView
samples/cli/sample-apps Platform getView \
    --namespace $AB_NAMESPACE \
    --viewId '6zW9blLDX6Kba11K' \
    --storeId 'hOH6AsuZYU3Kbr31' \
    > test.out 2>&1
eval_tap $? 350 'GetView' test.out

#- 351 UpdateView
samples/cli/sample-apps Platform updateView \
    --namespace $AB_NAMESPACE \
    --viewId 'Y29KsKGFxXTf7143' \
    --storeId '7rDGDViAqKGSq6mS' \
    --body '{"displayOrder": 34, "localizations": {"E9jDEpIjowUFhqez": {"description": "lSdkbuemCg1XRcqR", "localExt": {"fHtVD6Di3A0f6Fdd": {}, "qGQaLwDEVreH0rqb": {}, "sXvUxeOYkWmekA4B": {}}, "longDescription": "alBejzBgJDANGwYs", "title": "rmP2YQ6aiGr9vogA"}, "ICwz5b3OZCxqUGVP": {"description": "3tr56tWQ6PXPVqy6", "localExt": {"uKW3JauCfEZAqv8P": {}, "k0HMXyGn78lMcfzS": {}, "WWKsVgp0kkd9kI18": {}}, "longDescription": "De0SKoMIw50YqX9a", "title": "Yxz2RaV6UHbQfxSD"}, "TF3scfff8qBMf7hz": {"description": "aoG5lapa0BvRnLkR", "localExt": {"RwbTpocVYf60slFI": {}, "yM9sgukzsoMPKM9Z": {}, "WJy9dkcCodJlm99q": {}}, "longDescription": "PBt4MsSgEmrmZVn1", "title": "YUO7Csou9zubKuEt"}}, "name": "Qm0J2pLbZ4hcOJe2"}' \
    > test.out 2>&1
eval_tap $? 351 'UpdateView' test.out

#- 352 DeleteView
samples/cli/sample-apps Platform deleteView \
    --namespace $AB_NAMESPACE \
    --viewId 'QJpHaIBeneyu5FJk' \
    --storeId 'pnBlq87pdOutahcH' \
    > test.out 2>&1
eval_tap $? 352 'DeleteView' test.out

#- 353 GetWalletConfig
samples/cli/sample-apps Platform getWalletConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 353 'GetWalletConfig' test.out

#- 354 UpdateWalletConfig
samples/cli/sample-apps Platform updateWalletConfig \
    --namespace $AB_NAMESPACE \
    --body '{"enablePaidForVCExpiration": false}' \
    > test.out 2>&1
eval_tap $? 354 'UpdateWalletConfig' test.out

#- 355 QueryWallets
eval_tap 0 355 'QueryWallets # SKIP deprecated' test.out

#- 356 BulkCredit
samples/cli/sample-apps Platform bulkCredit \
    --namespace $AB_NAMESPACE \
    --body '[{"creditRequest": {"amount": 15, "expireAt": "1989-08-31T00:00:00Z", "metadata": {"Qj5wwsrMSR0Rorws": {}, "IpfEdozXoMG6UE8u": {}, "Y8uVWm0Uy5RTAvK1": {}}, "origin": "Xbox", "reason": "ZXUFproIse4fr7jE", "source": "REFUND"}, "currencyCode": "Q5k9x3DeEfGb2Ums", "userIds": ["APoz9aMfOiAVW22z", "tzmFIbTgRSNDbCMu", "BIX6QIzjlnOqMD8W"]}, {"creditRequest": {"amount": 94, "expireAt": "1974-09-21T00:00:00Z", "metadata": {"RK2Uaaa9YHdDxPU1": {}, "7BsMqHfUYGQbmqWG": {}, "2DeqvtYg4eLemS0v": {}}, "origin": "Nintendo", "reason": "aVrjA1E1oDGTXyBN", "source": "OTHER"}, "currencyCode": "0BYIIrfqexVK0pGC", "userIds": ["lnEAD4L7Af6rlPKv", "svUsiA955McD6V7s", "oveUJa6F2n5gy3qw"]}, {"creditRequest": {"amount": 58, "expireAt": "1974-06-14T00:00:00Z", "metadata": {"rUgWDKRyKcxnqyq4": {}, "1VnTAiz3VGQW0jSp": {}, "sDGR6ypMC00DRQ3g": {}}, "origin": "System", "reason": "BJqzwOa1soYpaPJ8", "source": "REFUND"}, "currencyCode": "NmpoyeHd1tNg8M6f", "userIds": ["cCrwkrHU99WaG3pv", "nT05Se40QM6FjTxW", "aR1ToxAFiZRcshwe"]}]' \
    > test.out 2>&1
eval_tap $? 356 'BulkCredit' test.out

#- 357 BulkDebit
samples/cli/sample-apps Platform bulkDebit \
    --namespace $AB_NAMESPACE \
    --body '[{"currencyCode": "8gZ3GWfg7XMJPIPR", "request": {"allowOverdraft": true, "amount": 59, "balanceOrigin": "System", "balanceSource": "DLC_REVOCATION", "metadata": {"ouvJgUAt4ZJxkBL0": {}, "Tqb90jLuw122UFBE": {}, "JiAdXnRhtntHsgep": {}}, "reason": "F4GLENhjFriEfGmf"}, "userIds": ["dDlrWBmgnyJbO5hX", "9ZP5321EVywrBYvl", "q8J3gWE2yFUZZpfE"]}, {"currencyCode": "W2W170zrpylXplXJ", "request": {"allowOverdraft": true, "amount": 79, "balanceOrigin": "Nintendo", "balanceSource": "ORDER_REVOCATION", "metadata": {"Hwz79YhQw5cTIfmK": {}, "LPBqkpZRdu5ujKph": {}, "AWWS3ftDsG76rj6y": {}}, "reason": "wSssIgyyDt0X24is"}, "userIds": ["yJzuglc6mOYgv9wq", "Z6gaRyLBcQ2A0xEC", "3KgTnYhSTygBx1CP"]}, {"currencyCode": "Ms6ILsWzgvqRtIh0", "request": {"allowOverdraft": false, "amount": 33, "balanceOrigin": "IOS", "balanceSource": "ORDER_REVOCATION", "metadata": {"bShBViYoD1yQMMMD": {}, "JGxNHa7D8nPvE3pV": {}, "52HiV59mjlcRxyth": {}}, "reason": "ILOT9QmCAYuNQN42"}, "userIds": ["89XdkJzrXPDc3cOP", "BbYU1PUirsEHHyZM", "cU68OcA8LxSoXulO"]}]' \
    > test.out 2>&1
eval_tap $? 357 'BulkDebit' test.out

#- 358 GetWallet
eval_tap 0 358 'GetWallet # SKIP deprecated' test.out

#- 359 SyncOrders
samples/cli/sample-apps Platform syncOrders \
    --nextEvaluatedKey '4UDXslbvBvi3NEhw' \
    --end 'K6tFa60glGzjxWm3' \
    --start 'nQcNuJBQ12Z0sxyq' \
    > test.out 2>&1
eval_tap $? 359 'SyncOrders' test.out

#- 360 TestAdyenConfig
samples/cli/sample-apps Platform testAdyenConfig \
    --sandbox 'false' \
    --body '{"allowedPaymentMethods": ["7sqSA4XggA8f6QsE", "P3epvOpkjObSJHtP", "Z827mBk8w618k7Rm"], "apiKey": "LBUakmjFMy4PhfVf", "authoriseAsCapture": true, "blockedPaymentMethods": ["ycibMMQ0ApSSqFUC", "dbcZshforgHeJM0H", "MTAdMcQYdAozLNxk"], "clientKey": "aeGvC5lMQBNOckKG", "dropInSettings": "C4EUe97cmTUBWtqZ", "liveEndpointUrlPrefix": "m2GcUtyVHGY4FqQI", "merchantAccount": "3SwSS2rZFm2h487G", "notificationHmacKey": "2rSGNVpMUl9gkm9T", "notificationPassword": "0Lx0b7SSZm9irOi6", "notificationUsername": "ZuYmC6qM4iYOmFAh", "returnUrl": "38DNBvCEhH6eripW", "settings": "a0l1MMicyKtRrhCe"}' \
    > test.out 2>&1
eval_tap $? 360 'TestAdyenConfig' test.out

#- 361 TestAliPayConfig
samples/cli/sample-apps Platform testAliPayConfig \
    --sandbox 'false' \
    --body '{"appId": "oVXhMZn06z52JXv9", "privateKey": "OufjYdsBD8gAwp59", "publicKey": "xaWvLqTJ2sQN4nBI", "returnUrl": "KeL6e19UPShhRVyQ"}' \
    > test.out 2>&1
eval_tap $? 361 'TestAliPayConfig' test.out

#- 362 TestCheckoutConfig
samples/cli/sample-apps Platform testCheckoutConfig \
    --sandbox 'false' \
    --body '{"publicKey": "mTsBH5cyDKECFwEU", "secretKey": "bdKkW5TJYrcuzfzC"}' \
    > test.out 2>&1
eval_tap $? 362 'TestCheckoutConfig' test.out

#- 363 DebugMatchedPaymentMerchantConfig
samples/cli/sample-apps Platform debugMatchedPaymentMerchantConfig \
    --namespace 'SHLoSRuAtpmwC4Li' \
    --region 'DhfM9atk2OumglJm' \
    > test.out 2>&1
eval_tap $? 363 'DebugMatchedPaymentMerchantConfig' test.out

#- 364 TestNeonPayConfig
samples/cli/sample-apps Platform testNeonPayConfig \
    --sandbox 'true' \
    --body '{"apiKey": "DmtPwR13GmLo4WTF", "webhookSecretKey": "jAJkTd8nHGVFWA4J"}' \
    > test.out 2>&1
eval_tap $? 364 'TestNeonPayConfig' test.out

#- 365 TestPayPalConfig
samples/cli/sample-apps Platform testPayPalConfig \
    --sandbox 'true' \
    --body '{"clientID": "l8Ps6BPOzJK7rv5d", "clientSecret": "Peld4YJvYtWdRN6c", "returnUrl": "ZS04KgrNolZVE7qn", "webHookId": "8CnPC85vCp2NbmWp"}' \
    > test.out 2>&1
eval_tap $? 365 'TestPayPalConfig' test.out

#- 366 TestStripeConfig
samples/cli/sample-apps Platform testStripeConfig \
    --sandbox 'false' \
    --body '{"allowedPaymentMethodTypes": ["2zTB5fZDpJSqC4Ac", "Cd7MSvaBvG5UScOE", "3JuUzldCX4t3xzXb"], "publishableKey": "ODGpVTLJSbvbUEPh", "secretKey": "54mE4wKGLnuOuQNB", "webhookSecret": "kXXf6LWEr35rhHDi"}' \
    > test.out 2>&1
eval_tap $? 366 'TestStripeConfig' test.out

#- 367 TestWxPayConfig
samples/cli/sample-apps Platform testWxPayConfig \
    --body '{"appId": "KqAJ4svsy7OVbuq3", "key": "A0dYR8ec77o5pEB3", "mchid": "PM0np2ULYbQuTGnJ", "returnUrl": "zvRQTn27vKmbXrb9"}' \
    > test.out 2>&1
eval_tap $? 367 'TestWxPayConfig' test.out

#- 368 TestXsollaConfig
samples/cli/sample-apps Platform testXsollaConfig \
    --body '{"apiKey": "IzOuZEOmfgworR47", "flowCompletionUrl": "3rvcffcQTQez1rHX", "merchantId": 41, "projectId": 17, "projectSecretKey": "iJuYLrxmndYgj6uR"}' \
    > test.out 2>&1
eval_tap $? 368 'TestXsollaConfig' test.out

#- 369 GetPaymentMerchantConfig1
samples/cli/sample-apps Platform getPaymentMerchantConfig1 \
    --id 'CQWsR1zFTCDmjKzW' \
    > test.out 2>&1
eval_tap $? 369 'GetPaymentMerchantConfig1' test.out

#- 370 UpdateAdyenConfig
samples/cli/sample-apps Platform updateAdyenConfig \
    --id 'zCgTUWwCxUBk25oQ' \
    --sandbox 'true' \
    --validate 'true' \
    --body '{"allowedPaymentMethods": ["EEHhc15aYNhn1No8", "iHczO0Un1mvIldTC", "97GIe4ZP1FEapISc"], "apiKey": "CyKLtPwTCY9rmGut", "authoriseAsCapture": true, "blockedPaymentMethods": ["KEYacTKDkKAbyHsO", "gFglzuf5QWoXIZlT", "FqKN3GSO3wu2gY3I"], "clientKey": "rnLq2T8BXnjEWTdW", "dropInSettings": "WguVksWvQyQzUoeP", "liveEndpointUrlPrefix": "pcyKgVEnLbFwgjbg", "merchantAccount": "Nhl5YSMuZgHrUkz0", "notificationHmacKey": "VBcdPxaZJmI8lT1R", "notificationPassword": "A53UMiuWh7xIc3hy", "notificationUsername": "EKziwOpHKkNetlTk", "returnUrl": "h77CyzXIKzrIemIG", "settings": "XUCr1FcSJvC7DXzd"}' \
    > test.out 2>&1
eval_tap $? 370 'UpdateAdyenConfig' test.out

#- 371 TestAdyenConfigById
samples/cli/sample-apps Platform testAdyenConfigById \
    --id 'M8YzkYiMFWzUgMcj' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 371 'TestAdyenConfigById' test.out

#- 372 UpdateAliPayConfig
samples/cli/sample-apps Platform updateAliPayConfig \
    --id 'euzDY6QPYrq2YRkB' \
    --sandbox 'false' \
    --validate 'true' \
    --body '{"appId": "Er3zhhq6vQsHaMiI", "privateKey": "wvkiFIM6YVXndvgu", "publicKey": "A3iKgaLMgnWueebO", "returnUrl": "rcvXBar97LTCuMgF"}' \
    > test.out 2>&1
eval_tap $? 372 'UpdateAliPayConfig' test.out

#- 373 TestAliPayConfigById
samples/cli/sample-apps Platform testAliPayConfigById \
    --id '9CUnaHq8EH3afBR7' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 373 'TestAliPayConfigById' test.out

#- 374 UpdateCheckoutConfig
samples/cli/sample-apps Platform updateCheckoutConfig \
    --id 'bvUG47awVd7Wa2Fc' \
    --sandbox 'false' \
    --validate 'false' \
    --body '{"publicKey": "kYUTWcKIsNluifgA", "secretKey": "I6zQmpdgr6hONtJT"}' \
    > test.out 2>&1
eval_tap $? 374 'UpdateCheckoutConfig' test.out

#- 375 TestCheckoutConfigById
samples/cli/sample-apps Platform testCheckoutConfigById \
    --id '78ZsGtQ9qPtJmVXr' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 375 'TestCheckoutConfigById' test.out

#- 376 UpdateNeonPayConfig
samples/cli/sample-apps Platform updateNeonPayConfig \
    --id 'atvR5mJMPEgHV5Nn' \
    --sandbox 'false' \
    --validate 'true' \
    --body '{"apiKey": "TvqJITV8f6snrsjO", "webhookSecretKey": "bjEdC45cu2upi9MW"}' \
    > test.out 2>&1
eval_tap $? 376 'UpdateNeonPayConfig' test.out

#- 377 TestNeonPayConfigById
samples/cli/sample-apps Platform testNeonPayConfigById \
    --id 'BtzLFM3e2OeflQrA' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 377 'TestNeonPayConfigById' test.out

#- 378 UpdatePayPalConfig
samples/cli/sample-apps Platform updatePayPalConfig \
    --id 'FLDB9RgoqyN0dhGN' \
    --sandbox 'true' \
    --validate 'false' \
    --body '{"clientID": "yPDJWjWz5ucTqwB8", "clientSecret": "VN2rpLsioVHFiufC", "returnUrl": "lREAy0LRPMV7VdXy", "webHookId": "Dyh9EIm1G4CGAEtx"}' \
    > test.out 2>&1
eval_tap $? 378 'UpdatePayPalConfig' test.out

#- 379 TestPayPalConfigById
samples/cli/sample-apps Platform testPayPalConfigById \
    --id 'iVF5rUe4vFlXQWmu' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 379 'TestPayPalConfigById' test.out

#- 380 UpdateStripeConfig
samples/cli/sample-apps Platform updateStripeConfig \
    --id 'ytSpcScuoRR6TD2b' \
    --sandbox 'true' \
    --validate 'true' \
    --body '{"allowedPaymentMethodTypes": ["ai77ob4qwk7crlLv", "IslGWZK7fAmn3XnE", "04FB3aEdOYmqDUul"], "publishableKey": "1iDLmbyr4UO3BKn9", "secretKey": "RDkdg8JsUJqOc38H", "webhookSecret": "DwQYPSVzSWMzFh93"}' \
    > test.out 2>&1
eval_tap $? 380 'UpdateStripeConfig' test.out

#- 381 TestStripeConfigById
samples/cli/sample-apps Platform testStripeConfigById \
    --id 'dJvmZTfsgl3GLM43' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 381 'TestStripeConfigById' test.out

#- 382 UpdateWxPayConfig
samples/cli/sample-apps Platform updateWxPayConfig \
    --id 'ZAyV4bSaDyvJXSz9' \
    --validate 'true' \
    --body '{"appId": "wv9lov15LFIkknTA", "key": "C7Yjxm9zlKp1vAua", "mchid": "LWhAtf11Pp0hUzDt", "returnUrl": "KY8NwaeS5idPZzNE"}' \
    > test.out 2>&1
eval_tap $? 382 'UpdateWxPayConfig' test.out

#- 383 UpdateWxPayConfigCert
samples/cli/sample-apps Platform updateWxPayConfigCert \
    --id 'tgs7gIzyvVxqsu1T' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 383 'UpdateWxPayConfigCert' test.out

#- 384 TestWxPayConfigById
samples/cli/sample-apps Platform testWxPayConfigById \
    --id '2wbh9OPuoy7fL1oR' \
    > test.out 2>&1
eval_tap $? 384 'TestWxPayConfigById' test.out

#- 385 UpdateXsollaConfig
samples/cli/sample-apps Platform updateXsollaConfig \
    --id 'Z81TM91PcS817EBy' \
    --validate 'true' \
    --body '{"apiKey": "7T4hDFHg30vm27P2", "flowCompletionUrl": "mMs21Gu6yMsoqjSs", "merchantId": 18, "projectId": 18, "projectSecretKey": "7LVamDIqTcU36dru"}' \
    > test.out 2>&1
eval_tap $? 385 'UpdateXsollaConfig' test.out

#- 386 TestXsollaConfigById
samples/cli/sample-apps Platform testXsollaConfigById \
    --id 'aFrcpSK1BD1rS9nt' \
    > test.out 2>&1
eval_tap $? 386 'TestXsollaConfigById' test.out

#- 387 UpdateXsollaUIConfig
samples/cli/sample-apps Platform updateXsollaUIConfig \
    --id '9r34Q0UgWTZUql7K' \
    --body '{"device": "DESKTOP", "showCloseButton": false, "size": "LARGE", "theme": "DEFAULT_DARK"}' \
    > test.out 2>&1
eval_tap $? 387 'UpdateXsollaUIConfig' test.out

#- 388 QueryPaymentProviderConfig
samples/cli/sample-apps Platform queryPaymentProviderConfig \
    --limit '28' \
    --namespace '6KHa6HYnBCqDgHPn' \
    --offset '37' \
    --region 'kiNnhVdDeDL1DXNH' \
    > test.out 2>&1
eval_tap $? 388 'QueryPaymentProviderConfig' test.out

#- 389 CreatePaymentProviderConfig
samples/cli/sample-apps Platform createPaymentProviderConfig \
    --body '{"aggregate": "XSOLLA", "namespace": "FPyc605c1UonXYHC", "region": "MGIRVwdt2idobXjz", "sandboxTaxJarApiToken": "8nrZqLpkgwQTZy1Q", "specials": ["CHECKOUT", "STRIPE", "CHECKOUT"], "taxJarApiToken": "dSp2xofahvnpDtqo", "taxJarEnabled": false, "useGlobalTaxJarApiToken": true}' \
    > test.out 2>&1
eval_tap $? 389 'CreatePaymentProviderConfig' test.out

#- 390 GetAggregatePaymentProviders
samples/cli/sample-apps Platform getAggregatePaymentProviders \
    > test.out 2>&1
eval_tap $? 390 'GetAggregatePaymentProviders' test.out

#- 391 DebugMatchedPaymentProviderConfig
samples/cli/sample-apps Platform debugMatchedPaymentProviderConfig \
    --namespace '9R1KSjynefISIFbp' \
    --region 'ShygMu9ZZBJHKSxZ' \
    > test.out 2>&1
eval_tap $? 391 'DebugMatchedPaymentProviderConfig' test.out

#- 392 GetSpecialPaymentProviders
samples/cli/sample-apps Platform getSpecialPaymentProviders \
    > test.out 2>&1
eval_tap $? 392 'GetSpecialPaymentProviders' test.out

#- 393 UpdatePaymentProviderConfig
samples/cli/sample-apps Platform updatePaymentProviderConfig \
    --id '1EJiM9C7L6vhyfXN' \
    --body '{"aggregate": "ADYEN", "namespace": "VIYFE1oN6R32bMcp", "region": "oT8V5FiKyZE1u70y", "sandboxTaxJarApiToken": "HgrCYfZETM8WiVie", "specials": ["STRIPE", "WALLET", "WALLET"], "taxJarApiToken": "JGtdoqAnOouzwtbU", "taxJarEnabled": true, "useGlobalTaxJarApiToken": false}' \
    > test.out 2>&1
eval_tap $? 393 'UpdatePaymentProviderConfig' test.out

#- 394 DeletePaymentProviderConfig
samples/cli/sample-apps Platform deletePaymentProviderConfig \
    --id 'x9K2RQTPRPyXrbIe' \
    > test.out 2>&1
eval_tap $? 394 'DeletePaymentProviderConfig' test.out

#- 395 GetPaymentTaxConfig
samples/cli/sample-apps Platform getPaymentTaxConfig \
    > test.out 2>&1
eval_tap $? 395 'GetPaymentTaxConfig' test.out

#- 396 UpdatePaymentTaxConfig
samples/cli/sample-apps Platform updatePaymentTaxConfig \
    --body '{"sandboxTaxJarApiToken": "tF9WmLNHlobIu82X", "taxJarApiToken": "jWA2dOzYXZka7Bjy", "taxJarEnabled": false, "taxJarProductCodesMapping": {"nHeZBlVZTa75sYna": "NSRt7T0kZBNPiguE", "bkRiIfGZVxP2KFn1": "DQPFaus5I62HNByT", "FYID3zUqEzFCsmGA": "33XbfKmVyska7Yxo"}}' \
    > test.out 2>&1
eval_tap $? 396 'UpdatePaymentTaxConfig' test.out

#- 397 SyncPaymentOrders
samples/cli/sample-apps Platform syncPaymentOrders \
    --nextEvaluatedKey 'cOR5GL9JCcR7HUjc' \
    --end 'Dzz1VHWDeWkcYSHV' \
    --start 'aEosu12y2XbNMl1d' \
    > test.out 2>&1
eval_tap $? 397 'SyncPaymentOrders' test.out

#- 398 PublicGetRootCategories
samples/cli/sample-apps Platform publicGetRootCategories \
    --namespace $AB_NAMESPACE \
    --language 'JQT65Thfusa1WKgm' \
    --storeId 'kLGtsGBxrIK8GshF' \
    > test.out 2>&1
eval_tap $? 398 'PublicGetRootCategories' test.out

#- 399 DownloadCategories
samples/cli/sample-apps Platform downloadCategories \
    --namespace $AB_NAMESPACE \
    --language 'WVRfphv2ltLDaeLj' \
    --storeId 'x24CTY5fK3a3kM5a' \
    > test.out 2>&1
eval_tap $? 399 'DownloadCategories' test.out

#- 400 PublicGetCategory
samples/cli/sample-apps Platform publicGetCategory \
    --categoryPath 'IV7NmUV0Dd1L65dm' \
    --namespace $AB_NAMESPACE \
    --language 'RyLf6OvNlQkozkgI' \
    --storeId '3h9PuKlgTR5YKaCT' \
    > test.out 2>&1
eval_tap $? 400 'PublicGetCategory' test.out

#- 401 PublicGetChildCategories
samples/cli/sample-apps Platform publicGetChildCategories \
    --categoryPath 'uoO2ys09UzdQ0H7a' \
    --namespace $AB_NAMESPACE \
    --language '13LDOPB6fk8l549y' \
    --storeId 'vOeO8NVry7qAcmkD' \
    > test.out 2>&1
eval_tap $? 401 'PublicGetChildCategories' test.out

#- 402 PublicGetDescendantCategories
samples/cli/sample-apps Platform publicGetDescendantCategories \
    --categoryPath 'VomnXG5vmgmIYAVI' \
    --namespace $AB_NAMESPACE \
    --language 'JxsrjK2YPztwrNcU' \
    --storeId 'pklCZEHROsJIDqPb' \
    > test.out 2>&1
eval_tap $? 402 'PublicGetDescendantCategories' test.out

#- 403 PublicListCurrencies
samples/cli/sample-apps Platform publicListCurrencies \
    --namespace $AB_NAMESPACE \
    --currencyType 'VIRTUAL' \
    > test.out 2>&1
eval_tap $? 403 'PublicListCurrencies' test.out

#- 404 GeDLCDurableRewardShortMap
samples/cli/sample-apps Platform geDLCDurableRewardShortMap \
    --namespace $AB_NAMESPACE \
    --dlcType 'PSN' \
    > test.out 2>&1
eval_tap $? 404 'GeDLCDurableRewardShortMap' test.out

#- 405 GetAppleConfigVersion
samples/cli/sample-apps Platform getAppleConfigVersion \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 405 'GetAppleConfigVersion' test.out

#- 406 GetIAPItemMapping
samples/cli/sample-apps Platform getIAPItemMapping \
    --namespace $AB_NAMESPACE \
    --platform 'TWITCH' \
    > test.out 2>&1
eval_tap $? 406 'GetIAPItemMapping' test.out

#- 407 PublicGetItemByAppId
samples/cli/sample-apps Platform publicGetItemByAppId \
    --namespace $AB_NAMESPACE \
    --language 'P8fUZgrhJ0wSD6kT' \
    --region 'y5Ts3vf2rG7iLfoG' \
    --storeId '6zCl93Tgi5GgNndo' \
    --appId 'ggPggPJSsDCiBghv' \
    > test.out 2>&1
eval_tap $? 407 'PublicGetItemByAppId' test.out

#- 408 PublicQueryItems
samples/cli/sample-apps Platform publicQueryItems \
    --namespace $AB_NAMESPACE \
    --appType 'SOFTWARE' \
    --autoCalcEstimatedPrice 'false' \
    --baseAppId 'OOCR7hAzIlt9V24Y' \
    --categoryPath 'YLfyMLcer9cWYsFA' \
    --features 'houThJG4btz4CDTR' \
    --includeSubCategoryItem 'false' \
    --itemType 'APP' \
    --language '6T5Ar0cIESvgmbAQ' \
    --limit '83' \
    --offset '21' \
    --region 'OGZs22vXsVp8NV3e' \
    --sortBy '["updatedAt:desc", "displayOrder:desc", "displayOrder:asc"]' \
    --storeId 'E5HfZlcLfobVuvrN' \
    --tags 'OjTJszpyKHJD4qv2' \
    > test.out 2>&1
eval_tap $? 408 'PublicQueryItems' test.out

#- 409 PublicGetItemBySku
samples/cli/sample-apps Platform publicGetItemBySku \
    --namespace $AB_NAMESPACE \
    --autoCalcEstimatedPrice 'true' \
    --language 'hKtBMOEJ1662gWha' \
    --region 'IzDN1tIvy7sZB1q0' \
    --storeId 's4kywVI0JnH9Syg0' \
    --sku '52oAQu1UhiVDKAQZ' \
    > test.out 2>&1
eval_tap $? 409 'PublicGetItemBySku' test.out

#- 410 PublicGetEstimatedPrice
samples/cli/sample-apps Platform publicGetEstimatedPrice \
    --namespace $AB_NAMESPACE \
    --region 'Psne1xWxOAWTHT2l' \
    --storeId 'z9S6g3DZSwpAjuIK' \
    --itemIds 'bnPxuj8BcAELuZ0k' \
    > test.out 2>&1
eval_tap $? 410 'PublicGetEstimatedPrice' test.out

#- 411 PublicBulkGetItems
samples/cli/sample-apps Platform publicBulkGetItems \
    --namespace $AB_NAMESPACE \
    --autoCalcEstimatedPrice 'false' \
    --language '0dyYPj3zPPrCL3ZV' \
    --region 'ful3fEsYJQE1NexE' \
    --storeId 'kMhR0WncSPbJWYNp' \
    --itemIds '8iJu7E6zVifRrc6o' \
    > test.out 2>&1
eval_tap $? 411 'PublicBulkGetItems' test.out

#- 412 PublicValidateItemPurchaseCondition
samples/cli/sample-apps Platform publicValidateItemPurchaseCondition \
    --namespace $AB_NAMESPACE \
    --body '{"itemIds": ["EifFDXPiCBbV2FSi", "JeNa4NU38aN5HfWh", "iMmHVjL8GMWZujAM"]}' \
    > test.out 2>&1
eval_tap $? 412 'PublicValidateItemPurchaseCondition' test.out

#- 413 PublicSearchItems
samples/cli/sample-apps Platform publicSearchItems \
    --namespace $AB_NAMESPACE \
    --autoCalcEstimatedPrice 'false' \
    --itemType 'BUNDLE' \
    --limit '5' \
    --offset '65' \
    --region 'bb1I2Ky1W4ApbuIe' \
    --storeId 'CA2YDLrev9D2qI9w' \
    --keyword 'g2Ne8CSXArXTTVNT' \
    --language 'aTrPhe3NoBFN0wir' \
    > test.out 2>&1
eval_tap $? 413 'PublicSearchItems' test.out

#- 414 PublicGetApp
samples/cli/sample-apps Platform publicGetApp \
    --itemId 'fBYvy0TD89G9luP3' \
    --namespace $AB_NAMESPACE \
    --language 'hLcHZ9ry5NqMT3d7' \
    --region 'kqHYR2ooxsbnPPYJ' \
    --storeId 'ssKZGMats3hslceG' \
    > test.out 2>&1
eval_tap $? 414 'PublicGetApp' test.out

#- 415 PublicGetItemDynamicData
samples/cli/sample-apps Platform publicGetItemDynamicData \
    --itemId 'aEGxsyAS5TBRJG6t' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 415 'PublicGetItemDynamicData' test.out

#- 416 PublicGetItem
samples/cli/sample-apps Platform publicGetItem \
    --itemId 'NskguFd3ZCqlVle9' \
    --namespace $AB_NAMESPACE \
    --autoCalcEstimatedPrice 'false' \
    --language 'Lsy0XvUZs8ANPTpr' \
    --populateBundle 'false' \
    --region 'ATSpY7mRtSp1DtqP' \
    --storeId 'LcEjTEPSa3xaiqxU' \
    > test.out 2>&1
eval_tap $? 416 'PublicGetItem' test.out

#- 417 GetPaymentCustomization
eval_tap 0 417 'GetPaymentCustomization # SKIP deprecated' test.out

#- 418 PublicGetPaymentUrl
samples/cli/sample-apps Platform publicGetPaymentUrl \
    --namespace $AB_NAMESPACE \
    --body '{"neonPayConfig": {"cancelUrl": "IEWzLSlH8rsmiLUi", "successUrl": "rqu15YzbSGC9p2u7"}, "paymentOrderNo": "jW9EJe0jsONFyJth", "paymentProvider": "ADYEN", "returnUrl": "zEGNccVjDljNhChq", "ui": "1VtKIuhOU5PY5YnW", "zipCode": "4Cn62SN8q1EkIhGe"}' \
    > test.out 2>&1
eval_tap $? 418 'PublicGetPaymentUrl' test.out

#- 419 PublicGetPaymentMethods
samples/cli/sample-apps Platform publicGetPaymentMethods \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'O66nZk1P5BYaT5rX' \
    > test.out 2>&1
eval_tap $? 419 'PublicGetPaymentMethods' test.out

#- 420 PublicGetUnpaidPaymentOrder
samples/cli/sample-apps Platform publicGetUnpaidPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'bNqrT2FxtyOpQqge' \
    > test.out 2>&1
eval_tap $? 420 'PublicGetUnpaidPaymentOrder' test.out

#- 421 Pay
samples/cli/sample-apps Platform pay \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'Ep4TkCZzGvBzsm8H' \
    --paymentProvider 'PAYPAL' \
    --zipCode 'OfWZooAfZx0jvB7X' \
    --body '{"token": "mhfzW5JoIYfACWVk"}' \
    > test.out 2>&1
eval_tap $? 421 'Pay' test.out

#- 422 PublicCheckPaymentOrderPaidStatus
samples/cli/sample-apps Platform publicCheckPaymentOrderPaidStatus \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'AOXXkiWH9jt2tR4W' \
    > test.out 2>&1
eval_tap $? 422 'PublicCheckPaymentOrderPaidStatus' test.out

#- 423 GetPaymentPublicConfig
samples/cli/sample-apps Platform getPaymentPublicConfig \
    --namespace $AB_NAMESPACE \
    --sandbox 'false' \
    --paymentProvider 'NEONPAY' \
    --region 'eWPPr3XbPhxvVr5Q' \
    > test.out 2>&1
eval_tap $? 423 'GetPaymentPublicConfig' test.out

#- 424 PublicGetQRCode
samples/cli/sample-apps Platform publicGetQRCode \
    --namespace $AB_NAMESPACE \
    --code 'CVORidoNNJ5Wyac9' \
    > test.out 2>&1
eval_tap $? 424 'PublicGetQRCode' test.out

#- 425 PublicNormalizePaymentReturnUrl
samples/cli/sample-apps Platform publicNormalizePaymentReturnUrl \
    --namespace $AB_NAMESPACE \
    --payerID '9LAZ5Fa4vD97PPcp' \
    --foreinginvoice 'c5O2vaPIC7yM0Cvo' \
    --invoiceId '7m8NSuhBURpH6rEC' \
    --payload '9GzxaPt1EL1dnQGq' \
    --redirectResult 'g9Rz2WnUgHhgkZSn' \
    --resultCode 'W4LgPldKPelWULuc' \
    --sessionId 'Dkzcj5igqXTJ2Ml0' \
    --status 'ZVeSQDpiRQ8lFVBf' \
    --token 'sqoGuXlHojW0gEao' \
    --type '3XPrNY2am6S54adp' \
    --userId 'cHU7EunVkfNpZNfE' \
    --orderNo 'fKmdZr5u4IJmhfbs' \
    --paymentOrderNo 'GY2iUeNw91QKVc3C' \
    --paymentProvider 'ALIPAY' \
    --returnUrl 'kRqwBTMjptaZOXat' \
    > test.out 2>&1
eval_tap $? 425 'PublicNormalizePaymentReturnUrl' test.out

#- 426 GetPaymentTaxValue
samples/cli/sample-apps Platform getPaymentTaxValue \
    --namespace $AB_NAMESPACE \
    --zipCode 'nWHC61u7WcrI5tcg' \
    --paymentOrderNo 'bVxNxyMjru9mK4hi' \
    --paymentProvider 'ADYEN' \
    > test.out 2>&1
eval_tap $? 426 'GetPaymentTaxValue' test.out

#- 427 GetRewardByCode
samples/cli/sample-apps Platform getRewardByCode \
    --namespace $AB_NAMESPACE \
    --rewardCode 'nRvtYmz9T93BaMx2' \
    > test.out 2>&1
eval_tap $? 427 'GetRewardByCode' test.out

#- 428 QueryRewards1
samples/cli/sample-apps Platform queryRewards1 \
    --namespace $AB_NAMESPACE \
    --eventTopic 'VuDemkv0Y36cZBnK' \
    --limit '49' \
    --offset '81' \
    --sortBy '["rewardCode:desc", "rewardCode", "rewardCode:asc"]' \
    > test.out 2>&1
eval_tap $? 428 'QueryRewards1' test.out

#- 429 GetReward1
samples/cli/sample-apps Platform getReward1 \
    --namespace $AB_NAMESPACE \
    --rewardId 'TgsOXr4P2GLEGBaN' \
    > test.out 2>&1
eval_tap $? 429 'GetReward1' test.out

#- 430 PublicListStores
samples/cli/sample-apps Platform publicListStores \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 430 'PublicListStores' test.out

#- 431 PublicExistsAnyMyActiveEntitlement
samples/cli/sample-apps Platform publicExistsAnyMyActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --appIds '["E31TWcPSvEmUqdn9", "93nP8ctUZhyFzhTY", "fhEXNaGKjOFJ0mPs"]' \
    --itemIds '["ppAY6lDrlsjJ8u9S", "0sgvnVxaHTk5teVg", "tUbQA00OcrAfAs3c"]' \
    --skus '["RoMtfbaQdN8eS1Az", "4LVTxv3gajxiifrX", "UQvM4omG4Z3JrhAU"]' \
    > test.out 2>&1
eval_tap $? 431 'PublicExistsAnyMyActiveEntitlement' test.out

#- 432 PublicGetMyAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform publicGetMyAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --appId 'LglKnur8kD7Eog0Y' \
    > test.out 2>&1
eval_tap $? 432 'PublicGetMyAppEntitlementOwnershipByAppId' test.out

#- 433 PublicGetMyEntitlementOwnershipByItemId
samples/cli/sample-apps Platform publicGetMyEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --entitlementClazz 'MEDIA' \
    --itemId 'xqKlPAqzmAcDFYzX' \
    > test.out 2>&1
eval_tap $? 433 'PublicGetMyEntitlementOwnershipByItemId' test.out

#- 434 PublicGetMyEntitlementOwnershipBySku
samples/cli/sample-apps Platform publicGetMyEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --entitlementClazz 'SUBSCRIPTION' \
    --sku 'hnMhPaavxqfR6Yyx' \
    > test.out 2>&1
eval_tap $? 434 'PublicGetMyEntitlementOwnershipBySku' test.out

#- 435 PublicGetEntitlementOwnershipToken
samples/cli/sample-apps Platform publicGetEntitlementOwnershipToken \
    --namespace $AB_NAMESPACE \
    --appIds '["RNSvD7Xwyvf36wYw", "J42eKLWXHu3YXx8O", "2a5mH3THuy2qhuC3"]' \
    --itemIds '["jKYlYtWda1N7Nukx", "qCRnT5xbrGTNtI2p", "QGi3bpUpJUXrRnoY"]' \
    --skus '["dnoNUxrt3yQXbyV6", "09l59c6jePRiPH6n", "ZZllNyC9JeuX3Yqe"]' \
    > test.out 2>&1
eval_tap $? 435 'PublicGetEntitlementOwnershipToken' test.out

#- 436 SyncTwitchDropsEntitlement
samples/cli/sample-apps Platform syncTwitchDropsEntitlement \
    --namespace $AB_NAMESPACE \
    --body '{"gameId": "CBYeK6XcX0eGi9fF", "language": "nB", "region": "rHBvQ7u2cj9mYrwB"}' \
    > test.out 2>&1
eval_tap $? 436 'SyncTwitchDropsEntitlement' test.out

#- 437 PublicGetMyWallet
samples/cli/sample-apps Platform publicGetMyWallet \
    --currencyCode 'j1PoSTfZC5FM2T88' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 437 'PublicGetMyWallet' test.out

#- 438 SyncEpicGameDLC
samples/cli/sample-apps Platform syncEpicGameDLC \
    --namespace $AB_NAMESPACE \
    --userId 'Io9xgY6twrudlc0l' \
    --body '{"epicGamesJwtToken": "lVVCVUv1JYmJwQzS"}' \
    > test.out 2>&1
eval_tap $? 438 'SyncEpicGameDLC' test.out

#- 439 SyncOculusDLC
samples/cli/sample-apps Platform syncOculusDLC \
    --namespace $AB_NAMESPACE \
    --userId '0P5PxS42BuJBoMHH' \
    > test.out 2>&1
eval_tap $? 439 'SyncOculusDLC' test.out

#- 440 PublicSyncPsnDlcInventory
samples/cli/sample-apps Platform publicSyncPsnDlcInventory \
    --namespace $AB_NAMESPACE \
    --userId 'f9VK7uB1cCb74kAt' \
    --body '{"serviceLabel": 45}' \
    > test.out 2>&1
eval_tap $? 440 'PublicSyncPsnDlcInventory' test.out

#- 441 PublicSyncPsnDlcInventoryWithMultipleServiceLabels
samples/cli/sample-apps Platform publicSyncPsnDlcInventoryWithMultipleServiceLabels \
    --namespace $AB_NAMESPACE \
    --userId 'FnXiH31ZZB9H9Kcg' \
    --body '{"serviceLabels": [20, 37, 62]}' \
    > test.out 2>&1
eval_tap $? 441 'PublicSyncPsnDlcInventoryWithMultipleServiceLabels' test.out

#- 442 SyncSteamDLC
samples/cli/sample-apps Platform syncSteamDLC \
    --namespace $AB_NAMESPACE \
    --userId 'nFawIxTGkFDUvosl' \
    --body '{"appId": "eBbjxFYJHprg19JU", "steamId": "7EEvDQr0yNTRpBtz"}' \
    > test.out 2>&1
eval_tap $? 442 'SyncSteamDLC' test.out

#- 443 SyncXboxDLC
samples/cli/sample-apps Platform syncXboxDLC \
    --namespace $AB_NAMESPACE \
    --userId 'h0nBwGukzzwzqjyi' \
    --body '{"xstsToken": "Ts7yhXjNrcHJcTWH"}' \
    > test.out 2>&1
eval_tap $? 443 'SyncXboxDLC' test.out

#- 444 PublicQueryUserEntitlements
samples/cli/sample-apps Platform publicQueryUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'vOeqs2TapZ7mdnei' \
    --appType 'DLC' \
    --entitlementClazz 'CODE' \
    --entitlementName 'ylRxdRy5tIVXySmZ' \
    --features '["bUGETFJ2lxn4yYDH", "JAqUXBYkfXgcBQUH", "ToCwHh1VYPuUXUB9"]' \
    --itemId '["W4CIbVBy8ISOaDzS", "4CdzGlCDniw7ifdS", "qCu0y9DwADgRFa7n"]' \
    --limit '83' \
    --offset '86' \
    > test.out 2>&1
eval_tap $? 444 'PublicQueryUserEntitlements' test.out

#- 445 PublicGetUserAppEntitlementByAppId
samples/cli/sample-apps Platform publicGetUserAppEntitlementByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'UpE3WSLhLTbrFJ5V' \
    --appId 'JhOPEfzekCSjiwFR' \
    > test.out 2>&1
eval_tap $? 445 'PublicGetUserAppEntitlementByAppId' test.out

#- 446 PublicQueryUserEntitlementsByAppType
samples/cli/sample-apps Platform publicQueryUserEntitlementsByAppType \
    --namespace $AB_NAMESPACE \
    --userId 'pQZuwatB6rfnmgwT' \
    --limit '64' \
    --offset '51' \
    --appType 'DEMO' \
    > test.out 2>&1
eval_tap $? 446 'PublicQueryUserEntitlementsByAppType' test.out

#- 447 PublicGetUserEntitlementsByIds
samples/cli/sample-apps Platform publicGetUserEntitlementsByIds \
    --namespace $AB_NAMESPACE \
    --userId 'YEt8XbdTvTRKx6KV' \
    --availablePlatformOnly 'false' \
    --ids '["LrUO02Oxk71O2k75", "cUyKK4gnTWRfyE95", "P3K00tZyi8r40oo8"]' \
    > test.out 2>&1
eval_tap $? 447 'PublicGetUserEntitlementsByIds' test.out

#- 448 PublicGetUserEntitlementByItemId
eval_tap 0 448 'PublicGetUserEntitlementByItemId # SKIP deprecated' test.out

#- 449 PublicGetUserEntitlementBySku
eval_tap 0 449 'PublicGetUserEntitlementBySku # SKIP deprecated' test.out

#- 450 PublicUserEntitlementHistory
samples/cli/sample-apps Platform publicUserEntitlementHistory \
    --namespace $AB_NAMESPACE \
    --userId 'tl85GqcpmgtuBx59' \
    --endDate 'R6KvH0pzMUzXdclQ' \
    --entitlementClazz 'CODE' \
    --limit '82' \
    --offset '29' \
    --startDate 'aBIqxBv8kJRkGAQM' \
    > test.out 2>&1
eval_tap $? 450 'PublicUserEntitlementHistory' test.out

#- 451 PublicExistsAnyUserActiveEntitlement
samples/cli/sample-apps Platform publicExistsAnyUserActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'iNLm3Wyx6kYDyqHR' \
    --appIds '["VipTjb0h2qaJmu3Z", "G8GFSCvoETDWVsgR", "tgoTL72IIpM634cN"]' \
    --itemIds '["PNAqPKSXKkq6fxUs", "LNE0onlibaxrzQwY", "KZV60jCH8ojj4XoE"]' \
    --skus '["if2dwlwffT5eIKz6", "aRH8o2pDwiA0t5P1", "FeBJA4XWqKwuZHqU"]' \
    > test.out 2>&1
eval_tap $? 451 'PublicExistsAnyUserActiveEntitlement' test.out

#- 452 PublicGetUserAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform publicGetUserAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'M1M20iqqyI05DT0C' \
    --appId 'qXbFpjxmtLDTiyfD' \
    > test.out 2>&1
eval_tap $? 452 'PublicGetUserAppEntitlementOwnershipByAppId' test.out

#- 453 PublicGetUserEntitlementOwnershipByItemId
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --userId '0ymXkUb08PQRQpYO' \
    --entitlementClazz 'ENTITLEMENT' \
    --itemId 'TTGYABDolTedosLz' \
    > test.out 2>&1
eval_tap $? 453 'PublicGetUserEntitlementOwnershipByItemId' test.out

#- 454 PublicGetUserEntitlementOwnershipByItemIds
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'ttTcyjvxOA9wDL3i' \
    --ids '["AHeVdahinT1IHeRM", "vFJQKH4W1ppcW9nR", "02ajb6gdoEIOzxFr"]' \
    > test.out 2>&1
eval_tap $? 454 'PublicGetUserEntitlementOwnershipByItemIds' test.out

#- 455 PublicGetUserEntitlementOwnershipBySku
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --userId 'PmK9YiFwvIs8zsvV' \
    --entitlementClazz 'MEDIA' \
    --sku 'Mjj97umfncPIVET6' \
    > test.out 2>&1
eval_tap $? 455 'PublicGetUserEntitlementOwnershipBySku' test.out

#- 456 PublicGetUserEntitlement
samples/cli/sample-apps Platform publicGetUserEntitlement \
    --entitlementId 'xO6TnByLyoRqDfPb' \
    --namespace $AB_NAMESPACE \
    --userId '0JnkbPzpOVxpnR10' \
    > test.out 2>&1
eval_tap $? 456 'PublicGetUserEntitlement' test.out

#- 457 PublicConsumeUserEntitlement
samples/cli/sample-apps Platform publicConsumeUserEntitlement \
    --entitlementId 'YdhjoPw9mrWmnaUT' \
    --namespace $AB_NAMESPACE \
    --userId 'NeSP9JxUKGWGP3Ew' \
    --body '{"metadata": {"operationSource": "INVENTORY"}, "options": ["AnngpdTp5im3qahu", "KegxUG9Wrw5DxWwb", "WN8Dp2TKfxE5n0Sf"], "requestId": "uaYGrs06kXhh2Lm4", "useCount": 79}' \
    > test.out 2>&1
eval_tap $? 457 'PublicConsumeUserEntitlement' test.out

#- 458 PublicSellUserEntitlement
samples/cli/sample-apps Platform publicSellUserEntitlement \
    --entitlementId 'zveYzrLi7ZxTfFR5' \
    --namespace $AB_NAMESPACE \
    --userId '25bCL10VG0RYvwwF' \
    --body '{"requestId": "KQYbNDNIzJDMYj24", "useCount": 5}' \
    > test.out 2>&1
eval_tap $? 458 'PublicSellUserEntitlement' test.out

#- 459 PublicSplitUserEntitlement
samples/cli/sample-apps Platform publicSplitUserEntitlement \
    --entitlementId 'LFrHQpYxInPcXbA5' \
    --namespace $AB_NAMESPACE \
    --userId 'qrSqkhkGXfXBxpQ3' \
    --body '{"metadata": {"operationSource": "INVENTORY"}, "useCount": 19}' \
    > test.out 2>&1
eval_tap $? 459 'PublicSplitUserEntitlement' test.out

#- 460 PublicTransferUserEntitlement
samples/cli/sample-apps Platform publicTransferUserEntitlement \
    --entitlementId 'ut0IGp8fc1IwzkDj' \
    --namespace $AB_NAMESPACE \
    --userId 'sGomg7Uk27xu4VEH' \
    --body '{"entitlementId": "lj6wiEcUxXHlBUee", "metadata": {"operationSource": "INVENTORY"}, "useCount": 33}' \
    > test.out 2>&1
eval_tap $? 460 'PublicTransferUserEntitlement' test.out

#- 461 PublicRedeemCode
samples/cli/sample-apps Platform publicRedeemCode \
    --namespace $AB_NAMESPACE \
    --userId 'dFozqf9vGSJXpuFG' \
    --body '{"code": "MeSbSGquMEM1GEIi", "language": "fH_402", "region": "NSUuPAs1cqCvY8s9"}' \
    > test.out 2>&1
eval_tap $? 461 'PublicRedeemCode' test.out

#- 462 PublicFulfillAppleIAPItem
samples/cli/sample-apps Platform publicFulfillAppleIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'NxoKOmz9kHjftyra' \
    --body '{"excludeOldTransactions": false, "language": "NrBG", "productId": "0GeIymbN5laZA01X", "receiptData": "rrEyvxZEpKUlXW24", "region": "1WVL72YKM0e2bCVu", "transactionId": "WafDKFRkemoJR24z"}' \
    > test.out 2>&1
eval_tap $? 462 'PublicFulfillAppleIAPItem' test.out

#- 463 SyncEpicGamesInventory
samples/cli/sample-apps Platform syncEpicGamesInventory \
    --namespace $AB_NAMESPACE \
    --userId 'CZ4RPGgIUs1K51hd' \
    --body '{"epicGamesJwtToken": "duRUfAqrjw1zdV4O"}' \
    > test.out 2>&1
eval_tap $? 463 'SyncEpicGamesInventory' test.out

#- 464 PublicFulfillGoogleIAPItem
samples/cli/sample-apps Platform publicFulfillGoogleIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'spBZVXlUSZTgCGAZ' \
    --body '{"autoAck": false, "autoConsume": true, "language": "pz-dVbk", "orderId": "c5ysh9hGPN105YIy", "packageName": "QEHixw9fBKab9xPg", "productId": "iF1ND7szDivNZXur", "purchaseTime": 91, "purchaseToken": "cnzsklyOwKp902GP", "region": "LVFuedXgI7q8F2wh", "subscriptionPurchase": true}' \
    > test.out 2>&1
eval_tap $? 464 'PublicFulfillGoogleIAPItem' test.out

#- 465 SyncOculusSubscriptions
samples/cli/sample-apps Platform syncOculusSubscriptions \
    --namespace $AB_NAMESPACE \
    --userId '0Pc2sBjevIYWfSZX' \
    --body '{"skus": ["s9TEvknIYldC7f0P", "5zwFwoXlgpbhCeQ8", "0sFtl65UgZDyRyyH"]}' \
    > test.out 2>&1
eval_tap $? 465 'SyncOculusSubscriptions' test.out

#- 466 SyncOculusConsumableEntitlements
samples/cli/sample-apps Platform syncOculusConsumableEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'K9qgWuHDRVo52m9W' \
    > test.out 2>&1
eval_tap $? 466 'SyncOculusConsumableEntitlements' test.out

#- 467 PublicReconcilePlayStationStore
samples/cli/sample-apps Platform publicReconcilePlayStationStore \
    --namespace $AB_NAMESPACE \
    --userId 'Zqc9Y368aVCASjS4' \
    --body '{"currencyCode": "3qmIVgQJ7VoKFQid", "price": 0.5566667264651055, "productId": "p5A2feVkzrzv0qbH", "serviceLabel": 65}' \
    > test.out 2>&1
eval_tap $? 467 'PublicReconcilePlayStationStore' test.out

#- 468 PublicReconcilePlayStationStoreWithMultipleServiceLabels
samples/cli/sample-apps Platform publicReconcilePlayStationStoreWithMultipleServiceLabels \
    --namespace $AB_NAMESPACE \
    --userId 'azjm8HxRTUdJeSQp' \
    --body '{"currencyCode": "2CXiyOkyCScSQKC9", "price": 0.2411040704903329, "productId": "VQXkN9OhyKNT8gt0", "serviceLabels": [34, 51, 52]}' \
    > test.out 2>&1
eval_tap $? 468 'PublicReconcilePlayStationStoreWithMultipleServiceLabels' test.out

#- 469 SyncSteamInventory
samples/cli/sample-apps Platform syncSteamInventory \
    --namespace $AB_NAMESPACE \
    --userId 'Xd9WZShmSaUNUbHM' \
    --body '{"appId": "6028EA4l0baaxIFh", "currencyCode": "f8Tlul8RVqDo9sV7", "language": "UrI", "price": 0.8190505105105695, "productId": "ZZRQNHETc6gilYpe", "region": "2tc5bQMYKn8riNGx", "steamId": "ZV2CKMIrtIYw92FF"}' \
    > test.out 2>&1
eval_tap $? 469 'SyncSteamInventory' test.out

#- 470 SyncSteamAbnormalTransaction
samples/cli/sample-apps Platform syncSteamAbnormalTransaction \
    --namespace $AB_NAMESPACE \
    --userId 'SzSZdwhJZb7Jj3lp' \
    > test.out 2>&1
eval_tap $? 470 'SyncSteamAbnormalTransaction' test.out

#- 471 SyncSteamIAPByTransaction
samples/cli/sample-apps Platform syncSteamIAPByTransaction \
    --namespace $AB_NAMESPACE \
    --userId 'XN9mJxXIHqy6Izou' \
    --body '{"orderId": "FOkhcvRIDkWtoC7L"}' \
    > test.out 2>&1
eval_tap $? 471 'SyncSteamIAPByTransaction' test.out

#- 472 PublicQueryUserThirdPartySubscription
samples/cli/sample-apps Platform publicQueryUserThirdPartySubscription \
    --namespace $AB_NAMESPACE \
    --platform 'APPLE' \
    --userId '09Hk6bSMbzcxYrDF' \
    --activeOnly 'true' \
    --groupId '8eFRCkhvSeN60uNE' \
    --limit '63' \
    --offset '25' \
    --productId 'hmehLXHyBRH7I1qK' \
    > test.out 2>&1
eval_tap $? 472 'PublicQueryUserThirdPartySubscription' test.out

#- 473 SyncTwitchDropsEntitlement1
samples/cli/sample-apps Platform syncTwitchDropsEntitlement1 \
    --namespace $AB_NAMESPACE \
    --userId 'GoLEl8088OGIPIG5' \
    --body '{"gameId": "svneUjFLs4YIy9AY", "language": "Htg-wFct", "region": "rvbhBwKoicb0Akhl"}' \
    > test.out 2>&1
eval_tap $? 473 'SyncTwitchDropsEntitlement1' test.out

#- 474 SyncXboxInventory
samples/cli/sample-apps Platform syncXboxInventory \
    --namespace $AB_NAMESPACE \
    --userId 'hEFKKTmuYzCBvmXM' \
    --body '{"currencyCode": "gFsm3Nyl8LhhfVC6", "price": 0.16083931920196326, "productId": "q8g8IdtpOGrpVMbB", "xstsToken": "wJdvmptedFPteV9o"}' \
    > test.out 2>&1
eval_tap $? 474 'SyncXboxInventory' test.out

#- 475 PublicQueryUserOrders
samples/cli/sample-apps Platform publicQueryUserOrders \
    --namespace $AB_NAMESPACE \
    --userId '9VFQowhwdTcNsVSV' \
    --discounted 'false' \
    --itemId 'xrdkmYYSOF9lgK4C' \
    --limit '45' \
    --offset '16' \
    --status 'CHARGED' \
    > test.out 2>&1
eval_tap $? 475 'PublicQueryUserOrders' test.out

#- 476 PublicCreateUserOrder
samples/cli/sample-apps Platform publicCreateUserOrder \
    --namespace $AB_NAMESPACE \
    --userId 'O31DQSoVdl5oNLJl' \
    --body '{"currencyCode": "KrK5uu1S0iOgEtjo", "discountCodes": ["TPjRlgoAbYnZvvSH", "CUZrSSefCnrFIjQZ", "CzsYRnfNA3P71Fgb"], "discountedPrice": 94, "ext": {"ydpBoEsTKErWVnxg": {}, "Uus6HhQnoZMDQ8R3": {}, "zBiCrF3HdyccwqQw": {}}, "itemId": "fs2cyivQEF3bcwdx", "language": "ud_aIUZ", "price": 79, "quantity": 20, "region": "5aUndKFO1Y9CUzLH", "returnUrl": "HFH0A64qsBd2tNeG", "sectionId": "Lq4PlVQclTffFjTq"}' \
    > test.out 2>&1
eval_tap $? 476 'PublicCreateUserOrder' test.out

#- 477 PublicPreviewOrderPrice
samples/cli/sample-apps Platform publicPreviewOrderPrice \
    --namespace $AB_NAMESPACE \
    --userId 'O1j1JZz18ahfZ9e2' \
    --body '{"currencyCode": "wB3DJYwnFJPq8KGw", "discountCodes": ["jvG4qmgjRpivKvkj", "VH6EEPauGJgk5uhg", "hpNeUhaswu9xXpEV"], "discountedPrice": 31, "itemId": "YDbIP9KnKAuOgcBW", "price": 31, "quantity": 93}' \
    > test.out 2>&1
eval_tap $? 477 'PublicPreviewOrderPrice' test.out

#- 478 PublicGetUserOrder
samples/cli/sample-apps Platform publicGetUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'OzssatZSnRxJkgMn' \
    --userId '2TdhlV85ygQBSw0B' \
    > test.out 2>&1
eval_tap $? 478 'PublicGetUserOrder' test.out

#- 479 PublicCancelUserOrder
samples/cli/sample-apps Platform publicCancelUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'v7wdRO2jLJEIog37' \
    --userId '2ZK5MI9fnxbTRdEU' \
    > test.out 2>&1
eval_tap $? 479 'PublicCancelUserOrder' test.out

#- 480 PublicGetUserOrderHistories
samples/cli/sample-apps Platform publicGetUserOrderHistories \
    --namespace $AB_NAMESPACE \
    --orderNo 'j6uGcTYtBLtCxVAq' \
    --userId 'UQ0ZrFytU9vdJERB' \
    > test.out 2>&1
eval_tap $? 480 'PublicGetUserOrderHistories' test.out

#- 481 PublicDownloadUserOrderReceipt
samples/cli/sample-apps Platform publicDownloadUserOrderReceipt \
    --namespace $AB_NAMESPACE \
    --orderNo '3EmnsXJR2jpfMw0L' \
    --userId 'hzOO8Bf0fViElrfg' \
    > test.out 2>&1
eval_tap $? 481 'PublicDownloadUserOrderReceipt' test.out

#- 482 PublicGetPaymentAccounts
samples/cli/sample-apps Platform publicGetPaymentAccounts \
    --namespace $AB_NAMESPACE \
    --userId 'xWdytbSLqReKqhL5' \
    > test.out 2>&1
eval_tap $? 482 'PublicGetPaymentAccounts' test.out

#- 483 PublicDeletePaymentAccount
samples/cli/sample-apps Platform publicDeletePaymentAccount \
    --id 'AHg8CeOfQ5KC0nk1' \
    --namespace $AB_NAMESPACE \
    --type 'card' \
    --userId 'WrNLhBHkLoubbTzy' \
    > test.out 2>&1
eval_tap $? 483 'PublicDeletePaymentAccount' test.out

#- 484 PublicListActiveSections
samples/cli/sample-apps Platform publicListActiveSections \
    --namespace $AB_NAMESPACE \
    --userId 'YVTW6YulqUi6BUKa' \
    --autoCalcEstimatedPrice 'false' \
    --language 'oWNZ6eoEyBzVYmsd' \
    --region 'KIDDzXeVjTJ5eLwz' \
    --storeId '2nv8efRHpLCJC5Uu' \
    --viewId 'xDOp0UtteGfNNcV5' \
    > test.out 2>&1
eval_tap $? 484 'PublicListActiveSections' test.out

#- 485 PublicQueryUserSubscriptions
samples/cli/sample-apps Platform publicQueryUserSubscriptions \
    --namespace $AB_NAMESPACE \
    --userId '7ygnFGEpHl5E2J6p' \
    --chargeStatus 'NEVER' \
    --itemId 'EBwDeGo4PQCXLp2W' \
    --limit '71' \
    --offset '17' \
    --sku '0hmIQL4vyUTVyIPG' \
    --status 'ACTIVE' \
    --subscribedBy 'USER' \
    > test.out 2>&1
eval_tap $? 485 'PublicQueryUserSubscriptions' test.out

#- 486 PublicSubscribeSubscription
samples/cli/sample-apps Platform publicSubscribeSubscription \
    --namespace $AB_NAMESPACE \
    --userId '7tg5LbSS2DGsRmk4' \
    --body '{"currencyCode": "VwmpFkgtYQQE3YJu", "itemId": "RyQz0CTpbNGd6wnB", "language": "OB", "region": "K2Cw5Y1xwdynqdR3", "returnUrl": "naHvhQ4iBEApoe7k", "source": "PYKuv5r2tdAqZwBl"}' \
    > test.out 2>&1
eval_tap $? 486 'PublicSubscribeSubscription' test.out

#- 487 PublicCheckUserSubscriptionSubscribableByItemId
samples/cli/sample-apps Platform publicCheckUserSubscriptionSubscribableByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'H97jHat8WSk3EN7t' \
    --itemId 'DIiUhsrt2WSxCHGF' \
    > test.out 2>&1
eval_tap $? 487 'PublicCheckUserSubscriptionSubscribableByItemId' test.out

#- 488 PublicGetUserSubscription
samples/cli/sample-apps Platform publicGetUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'hcMi3bNK4aG4ihLV' \
    --userId '6ysoGkNe1OXCcGSM' \
    > test.out 2>&1
eval_tap $? 488 'PublicGetUserSubscription' test.out

#- 489 PublicChangeSubscriptionBillingAccount
samples/cli/sample-apps Platform publicChangeSubscriptionBillingAccount \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'N8vduP0q6geqU6cL' \
    --userId 'rCWbKGGnit9f8szw' \
    > test.out 2>&1
eval_tap $? 489 'PublicChangeSubscriptionBillingAccount' test.out

#- 490 PublicCancelSubscription
samples/cli/sample-apps Platform publicCancelSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'q2vSh2Q6jEUb4vsM' \
    --userId 'F7Cp4NyE4ZZ4EjIi' \
    --body '{"immediate": false, "reason": "0DkWp6bZZ3M68ht7"}' \
    > test.out 2>&1
eval_tap $? 490 'PublicCancelSubscription' test.out

#- 491 PublicGetUserSubscriptionBillingHistories
samples/cli/sample-apps Platform publicGetUserSubscriptionBillingHistories \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'xxXphEDIeuWpuQQR' \
    --userId 'ZWihsmeNM3FEyPhE' \
    --excludeFree 'true' \
    --limit '38' \
    --offset '71' \
    > test.out 2>&1
eval_tap $? 491 'PublicGetUserSubscriptionBillingHistories' test.out

#- 492 PublicListViews
samples/cli/sample-apps Platform publicListViews \
    --namespace $AB_NAMESPACE \
    --userId 'G9MtFcrmkfENwOU7' \
    --language '7xkCd2EwMUlueyoi' \
    --storeId 'rChzQVdJbuyb9kGy' \
    > test.out 2>&1
eval_tap $? 492 'PublicListViews' test.out

#- 493 PublicGetWallet
samples/cli/sample-apps Platform publicGetWallet \
    --currencyCode 'i68rTNMw4ujGgrLE' \
    --namespace $AB_NAMESPACE \
    --userId 'rBxDKhxjyqdQ9UZE' \
    > test.out 2>&1
eval_tap $? 493 'PublicGetWallet' test.out

#- 494 PublicListUserWalletTransactions
samples/cli/sample-apps Platform publicListUserWalletTransactions \
    --currencyCode 'UioWgvFeOzfkODGj' \
    --namespace $AB_NAMESPACE \
    --userId '7VbvslUCC0wvcw3M' \
    --limit '55' \
    --offset '28' \
    > test.out 2>&1
eval_tap $? 494 'PublicListUserWalletTransactions' test.out

#- 495 PublicGetMyDLCContent
samples/cli/sample-apps Platform publicGetMyDLCContent \
    --includeAllNamespaces 'true' \
    --type 'EPICGAMES' \
    > test.out 2>&1
eval_tap $? 495 'PublicGetMyDLCContent' test.out

#- 496 QueryFulfillments
samples/cli/sample-apps Platform queryFulfillments \
    --namespace $AB_NAMESPACE \
    --endTime 'alWQkhjQwYi1ShN2' \
    --limit '53' \
    --offset '99' \
    --startTime 'tmc7dSnoGyurVe7N' \
    --state 'REVOKE_FAILED' \
    --transactionId '1Uo4JF2gLUDPghYa' \
    --userId 'pJxlrrX48IIKcld1' \
    > test.out 2>&1
eval_tap $? 496 'QueryFulfillments' test.out

#- 497 QueryItemsV2
samples/cli/sample-apps Platform queryItemsV2 \
    --namespace $AB_NAMESPACE \
    --appType 'DEMO' \
    --availableDate 'NBiNMsZzrXi9Gw9e' \
    --baseAppId 'IgSYBHi7mD2pD1iQ' \
    --categoryPath '7hi7g7KIm0k0NcoR' \
    --features 'zdz7qPj6HxbLOj0B' \
    --includeSubCategoryItem 'false' \
    --itemName 'r2xArj1jtPrX5u99' \
    --itemStatus 'INACTIVE' \
    --itemType '["SUBSCRIPTION", "LOOTBOX", "APP"]' \
    --limit '56' \
    --offset '82' \
    --region 'rVmhgMr43wUwaZXG' \
    --sectionExclusive 'true' \
    --sortBy '["createdAt:desc", "updatedAt", "name:desc"]' \
    --storeId 'l0BdHetquLmVOI6u' \
    --tags 'tH7yPVUcmBoLEG14' \
    --targetNamespace '5n4zMLAC3lOmVfqZ' \
    --withTotal 'true' \
    > test.out 2>&1
eval_tap $? 497 'QueryItemsV2' test.out

#- 498 ImportStore1
samples/cli/sample-apps Platform importStore1 \
    --namespace $AB_NAMESPACE \
    --storeId 'dHq2TyyDgzudF3v0' \
    --strictMode 'false' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 498 'ImportStore1' test.out

#- 499 ExportStore1
samples/cli/sample-apps Platform exportStore1 \
    --namespace $AB_NAMESPACE \
    --storeId 'lX2ZgKyMFjpzHJP9' \
    --body '{"itemIds": ["Y1Wizsf4WaNUScsX", "Y6irT3bzN35FUcKH", "G0AL2DyeW90nQcWG"]}' \
    > test.out 2>&1
eval_tap $? 499 'ExportStore1' test.out

#- 500 FulfillRewardsV2
samples/cli/sample-apps Platform fulfillRewardsV2 \
    --namespace $AB_NAMESPACE \
    --userId 'XLDCMTqkJbF3zI79' \
    --body '{"entitlementCollectionId": "UHZEve3OrU79Glpq", "entitlementOrigin": "Other", "metadata": {"TPyPBwwkZv5MkO6C": {}, "0csJFzM5hFvGXQT3": {}, "Vl1SX0j999tRJl92": {}}, "origin": "Epic", "rewards": [{"currency": {"currencyCode": "AW7PAO0bBn7zaeGp", "namespace": "fwaRDlC66JHd5RfD"}, "item": {"itemId": "Fq6rEQtTUNFQVtNb", "itemName": "G3y7cAdKjVWCs10R", "itemSku": "c9ESXy6yTLRGDuol", "itemType": "HacidoGLdiNbP1LO"}, "quantity": 12, "type": "ITEM"}, {"currency": {"currencyCode": "dHOitWvXV5htLm1c", "namespace": "iR47Dba7TdPT0JLk"}, "item": {"itemId": "PX8BI3HFyz7I5mQT", "itemName": "SfUJ7QfXv6qix9HJ", "itemSku": "IU3C3uhB9XQoZzlv", "itemType": "dfSEd0RUIMdjVdGS"}, "quantity": 1, "type": "CURRENCY"}, {"currency": {"currencyCode": "nJTUapWLk7tG4UIU", "namespace": "bOFchf4ULtvNuVeE"}, "item": {"itemId": "qVFMGLn0L4Nb1HMN", "itemName": "U2zsm3yipXWJWC8Q", "itemSku": "N95ueTdYjvJgrf6q", "itemType": "nNJtrJdXXuTTUaxF"}, "quantity": 50, "type": "ITEM"}], "source": "EXPIRATION", "transactionId": "kNlp2ryUdIruE2Sb"}' \
    > test.out 2>&1
eval_tap $? 500 'FulfillRewardsV2' test.out

#- 501 FulfillItems
eval_tap 0 501 'FulfillItems # SKIP deprecated' test.out

#- 502 RetryFulfillItems
eval_tap 0 502 'RetryFulfillItems # SKIP deprecated' test.out

#- 503 RevokeItems
eval_tap 0 503 'RevokeItems # SKIP deprecated' test.out

#- 504 V2PublicFulfillAppleIAPItem
samples/cli/sample-apps Platform v2PublicFulfillAppleIAPItem \
    --namespace $AB_NAMESPACE \
    --userId '4LMmbNffiAnQFjfn' \
    --body '{"transactionId": "KUMn1A5cjNhpduSt"}' \
    > test.out 2>&1
eval_tap $? 504 'V2PublicFulfillAppleIAPItem' test.out

#- 505 FulfillItemsV3
samples/cli/sample-apps Platform fulfillItemsV3 \
    --namespace $AB_NAMESPACE \
    --transactionId '3P2amBDDhaeBStTI' \
    --userId 'Q7IGTR0UVWwCrGv4' \
    --body '{"items": [{"duration": 46, "endDate": "1984-01-01T00:00:00Z", "entitlementCollectionId": "dxzZPB8PszGdoXZL", "entitlementOrigin": "Xbox", "itemId": "rm8cwsa0fmTozKRd", "itemSku": "bPuUOgnLePv1cgIj", "language": "qaeI5JYzQLZDBd2K", "metadata": {"CLkClxXCNTWVGMTL": {}, "itOo8qzq11ogQKBr": {}, "frqQ0KNRD6eqqBAf": {}}, "orderNo": "IFh8t5xNUIfJm069", "origin": "Xbox", "quantity": 74, "region": "oBy5C5luq0c9suo9", "source": "OTHER", "startDate": "1982-07-31T00:00:00Z", "storeId": "UneGTT2me4ZO14uV"}, {"duration": 29, "endDate": "1974-09-11T00:00:00Z", "entitlementCollectionId": "wMZhAwFcGzV58qAW", "entitlementOrigin": "Xbox", "itemId": "kmaNzCiDT96znkOu", "itemSku": "QzxEqyKosfd9BWvB", "language": "k3PnMkgXjC89UDlM", "metadata": {"jv4TPU8MTSaZYYAq": {}, "Z50kSlzVUI7eVvoP": {}, "GaRJPIwVLOyc2vjG": {}}, "orderNo": "JonU3kQNyPshYB7G", "origin": "Nintendo", "quantity": 40, "region": "sNn1dSv1AIYJf5hF", "source": "ACHIEVEMENT", "startDate": "1986-01-24T00:00:00Z", "storeId": "9sQOrUnwaJ4197UU"}, {"duration": 26, "endDate": "1972-05-11T00:00:00Z", "entitlementCollectionId": "uA802ePfWRk5wVYa", "entitlementOrigin": "Other", "itemId": "Df7YzMsFvUxzhQh6", "itemSku": "eaevsVwTHK2QMw7E", "language": "ikrBfBdpiqR7l3Aa", "metadata": {"GO7Aa7PNVwpv81wM": {}, "a7WANF2fHaWjN85m": {}, "KOnR2R2JcOkN5uN2": {}}, "orderNo": "8ECtDiId61AzaaVQ", "origin": "Epic", "quantity": 40, "region": "VOWDYlHjtZLUOxP7", "source": "PURCHASE", "startDate": "1999-09-10T00:00:00Z", "storeId": "crnstsXAWugw5jM2"}]}' \
    > test.out 2>&1
eval_tap $? 505 'FulfillItemsV3' test.out

#- 506 RetryFulfillItemsV3
samples/cli/sample-apps Platform retryFulfillItemsV3 \
    --namespace $AB_NAMESPACE \
    --transactionId 'hsGgBbxGMZySRi9s' \
    --userId 'lgBryb8flNvY179r' \
    > test.out 2>&1
eval_tap $? 506 'RetryFulfillItemsV3' test.out

#- 507 RevokeItemsV3
samples/cli/sample-apps Platform revokeItemsV3 \
    --namespace $AB_NAMESPACE \
    --transactionId 'srP4tWI68FPd0KLi' \
    --userId '2HXgGtiPr2bcXiOg' \
    > test.out 2>&1
eval_tap $? 507 'RevokeItemsV3' test.out


rm -f "tmp.dat"

exit $EXIT_CODE