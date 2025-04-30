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
echo "1..497"

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
    --id 'PK9oKP3mHtnfX8IU' \
    > test.out 2>&1
eval_tap $? 3 'GetFulfillmentScript' test.out

#- 4 CreateFulfillmentScript
samples/cli/sample-apps Platform createFulfillmentScript \
    --id 'XIcKnNCxcOFFSyQL' \
    --body '{"grantDays": "3i2jufZ7zN10wEGK"}' \
    > test.out 2>&1
eval_tap $? 4 'CreateFulfillmentScript' test.out

#- 5 DeleteFulfillmentScript
samples/cli/sample-apps Platform deleteFulfillmentScript \
    --id 'Q7SuJx7CNK6pAkB8' \
    > test.out 2>&1
eval_tap $? 5 'DeleteFulfillmentScript' test.out

#- 6 UpdateFulfillmentScript
samples/cli/sample-apps Platform updateFulfillmentScript \
    --id 'cPtlkpl7NIvMr5E6' \
    --body '{"grantDays": "BUEgTSzmVLna2Gx4"}' \
    > test.out 2>&1
eval_tap $? 6 'UpdateFulfillmentScript' test.out

#- 7 ListItemTypeConfigs
samples/cli/sample-apps Platform listItemTypeConfigs \
    > test.out 2>&1
eval_tap $? 7 'ListItemTypeConfigs' test.out

#- 8 CreateItemTypeConfig
samples/cli/sample-apps Platform createItemTypeConfig \
    --body '{"clazz": "bIabMBIflcT6UQ0x", "dryRun": true, "fulfillmentUrl": "jxl9eQvA30gDRRjU", "itemType": "BUNDLE", "purchaseConditionUrl": "bQKLc2UuEyghAn7F"}' \
    > test.out 2>&1
eval_tap $? 8 'CreateItemTypeConfig' test.out

#- 9 SearchItemTypeConfig
samples/cli/sample-apps Platform searchItemTypeConfig \
    --clazz 'x91qtxt7AvuvkWFD' \
    --itemType 'LOOTBOX' \
    > test.out 2>&1
eval_tap $? 9 'SearchItemTypeConfig' test.out

#- 10 GetItemTypeConfig
samples/cli/sample-apps Platform getItemTypeConfig \
    --id 'Spsh3wKslKcjNWOi' \
    > test.out 2>&1
eval_tap $? 10 'GetItemTypeConfig' test.out

#- 11 UpdateItemTypeConfig
samples/cli/sample-apps Platform updateItemTypeConfig \
    --id 'PmH46JFvA2UDxXGX' \
    --body '{"clazz": "WyXAYFgQJmkjfmVQ", "dryRun": false, "fulfillmentUrl": "lArR96mKMmXwzHKg", "purchaseConditionUrl": "wSCg3IwZBn4kN1Hf"}' \
    > test.out 2>&1
eval_tap $? 11 'UpdateItemTypeConfig' test.out

#- 12 DeleteItemTypeConfig
samples/cli/sample-apps Platform deleteItemTypeConfig \
    --id 'qSAoL4MhWHB6hTnp' \
    > test.out 2>&1
eval_tap $? 12 'DeleteItemTypeConfig' test.out

#- 13 QueryCampaigns
samples/cli/sample-apps Platform queryCampaigns \
    --namespace $AB_NAMESPACE \
    --limit '68' \
    --name 'RPpRhdFQFQrr8bJ9' \
    --offset '55' \
    --tag 'HzLX5lWUAoNSp4cS' \
    > test.out 2>&1
eval_tap $? 13 'QueryCampaigns' test.out

#- 14 CreateCampaign
samples/cli/sample-apps Platform createCampaign \
    --namespace $AB_NAMESPACE \
    --body '{"description": "ccFmncBJKXIkTndT", "discountConfig": {"categories": [{"categoryPath": "OTlI1JD9rIJrLyMn", "includeSubCategories": false}, {"categoryPath": "SV3p9P02GJBTiCVb", "includeSubCategories": true}, {"categoryPath": "FoAjycIUVck6dZXy", "includeSubCategories": false}], "currencyCode": "ObzrgM6sipKRwKKq", "currencyNamespace": "yvgBLIdWDkuneZum", "discountAmount": 25, "discountPercentage": 32, "discountType": "PERCENTAGE", "items": [{"itemId": "SfmTcOyUmemiVt5U", "itemName": "oehTZAfxq0BZLHY2"}, {"itemId": "DWiOBFA6fp9n8hXk", "itemName": "ZWeVMcu5o0T6eg8T"}, {"itemId": "1RpoQlcSlfAMJuXe", "itemName": "0yg232HOAqrZgFEW"}], "restrictType": "NONE", "stackable": false}, "items": [{"extraSubscriptionDays": 14, "itemId": "crnwXtAtKlYnTNCN", "itemName": "QXoU1uC1KwX0CP3x", "quantity": 28}, {"extraSubscriptionDays": 16, "itemId": "9tMWui9SIptMbWYa", "itemName": "vkuyGCseVFdZByJZ", "quantity": 5}, {"extraSubscriptionDays": 73, "itemId": "3Fwe2keVIwmrrZ3C", "itemName": "w3PWB4xznQwncLS1", "quantity": 63}], "maxRedeemCountPerCampaignPerUser": 36, "maxRedeemCountPerCode": 21, "maxRedeemCountPerCodePerUser": 44, "maxSaleCount": 0, "name": "5YOX4IfgZRSfFzyu", "redeemEnd": "1985-06-08T00:00:00Z", "redeemStart": "1988-03-08T00:00:00Z", "redeemType": "DISCOUNT", "status": "ACTIVE", "tags": ["oOt8o38z0833RKRF", "G497uv5iKfey4rMb", "oeaSUpv2PKlcRa2i"], "type": "REDEMPTION"}' \
    > test.out 2>&1
eval_tap $? 14 'CreateCampaign' test.out

#- 15 GetCampaign
samples/cli/sample-apps Platform getCampaign \
    --campaignId '0FiLbiWKTeowJtq3' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 15 'GetCampaign' test.out

#- 16 UpdateCampaign
samples/cli/sample-apps Platform updateCampaign \
    --campaignId 'GRAVnvasGvpEg7tO' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "rSddPAN0zSh37TXI", "discountConfig": {"categories": [{"categoryPath": "SASySQ9bKPVy4h8i", "includeSubCategories": true}, {"categoryPath": "GnEwd1EvLpenDtzP", "includeSubCategories": true}, {"categoryPath": "lnYxtFgCyDMjrHgp", "includeSubCategories": false}], "currencyCode": "yiRLVCn1b80hJbRJ", "currencyNamespace": "Lrr0msgnEvAq9W9R", "discountAmount": 71, "discountPercentage": 17, "discountType": "PERCENTAGE", "items": [{"itemId": "OdlWePdurKv7f8qu", "itemName": "RROQOsfJ94NOmLCd"}, {"itemId": "UIxRZw3ieHQo7Hrj", "itemName": "oyhstMglKBotuobd"}, {"itemId": "23VTAx4O4hborboi", "itemName": "NhTnRxmOaCeYRedN"}], "restrictType": "ITEMS_AND_CATEGORIES", "stackable": true}, "items": [{"extraSubscriptionDays": 89, "itemId": "PjVn8XDVOkYwvReH", "itemName": "7Yc6ZSND9pXQQZW9", "quantity": 11}, {"extraSubscriptionDays": 28, "itemId": "1bah6AKTvghdrQrj", "itemName": "RvrQrstgQqPxceYN", "quantity": 9}, {"extraSubscriptionDays": 20, "itemId": "Fj3sE8SQrb1Nx6Mv", "itemName": "mDAItEIhHDLs1n7x", "quantity": 22}], "maxRedeemCountPerCampaignPerUser": 89, "maxRedeemCountPerCode": 89, "maxRedeemCountPerCodePerUser": 2, "maxSaleCount": 72, "name": "8uAxif3ZiO2R3lRV", "redeemEnd": "1995-11-05T00:00:00Z", "redeemStart": "1972-06-14T00:00:00Z", "redeemType": "ITEM", "status": "ACTIVE", "tags": ["QUs1aqNrdAmjeDSo", "mipEttyiuK8nhQS5", "IP2mVIDB1TxmTxuj"]}' \
    > test.out 2>&1
eval_tap $? 16 'UpdateCampaign' test.out

#- 17 RenameBatch
samples/cli/sample-apps Platform renameBatch \
    --campaignId 'ugrPtzDCbNVj14Db' \
    --namespace $AB_NAMESPACE \
    --body '{"newName": "cq9ROxTt3xAluPts", "oldName": "5toDoQLDLjWvEKpp"}' \
    > test.out 2>&1
eval_tap $? 17 'RenameBatch' test.out

#- 18 QueryCampaignBatchNames
samples/cli/sample-apps Platform queryCampaignBatchNames \
    --campaignId 'YQgf92HdypXAU6HW' \
    --namespace $AB_NAMESPACE \
    --batchName 'WkBa2Iv66VWCmeZX' \
    --limit '93' \
    > test.out 2>&1
eval_tap $? 18 'QueryCampaignBatchNames' test.out

#- 19 GetCampaignDynamic
samples/cli/sample-apps Platform getCampaignDynamic \
    --campaignId 'yc7oFnnzPVbHw7dQ' \
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
    --body '{"enableInventoryCheck": false, "itemDeletionCheckConfig": ["CATALOG", "REWARD"]}' \
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
    --body '{"appConfig": {"appName": "V7RVgsUv0UQO2Vbm"}, "customConfig": {"connectionType": "TLS", "grpcServerAddress": "XEZTjYXC2Uhpwn7Q"}, "extendType": "APP"}' \
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
    --body '{"appConfig": {"appName": "GzDHb3P529ttvv5F"}, "customConfig": {"connectionType": "TLS", "grpcServerAddress": "Fmbodtw2gUVXCuYp"}, "extendType": "APP"}' \
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
    --storeId '6ucgjLdP1XJadf0P' \
    > test.out 2>&1
eval_tap $? 31 'GetRootCategories' test.out

#- 32 CreateCategory
samples/cli/sample-apps Platform createCategory \
    --namespace $AB_NAMESPACE \
    --storeId 'vr7H3YHp5V7TpkiN' \
    --body '{"categoryPath": "cTVXyBzK1ZU6VFvF", "localizationDisplayNames": {"PSZSiv6hwdHCSrI6": "uNrE6ICVneO0qpkG", "zdguaCTLDH0rgszz": "rUUT0DbXcbfxkHnw", "QmN0UPSyMyIlXbeU": "5h0KthQ6ylAKmyK4"}}' \
    > test.out 2>&1
eval_tap $? 32 'CreateCategory' test.out

#- 33 ListCategoriesBasic
samples/cli/sample-apps Platform listCategoriesBasic \
    --namespace $AB_NAMESPACE \
    --storeId 'QJHGySM61OgOSVkv' \
    > test.out 2>&1
eval_tap $? 33 'ListCategoriesBasic' test.out

#- 34 GetCategory
samples/cli/sample-apps Platform getCategory \
    --categoryPath 'KuCeEv44joYQkVJq' \
    --namespace $AB_NAMESPACE \
    --storeId 'aDqanm69GBaT4KK7' \
    > test.out 2>&1
eval_tap $? 34 'GetCategory' test.out

#- 35 UpdateCategory
samples/cli/sample-apps Platform updateCategory \
    --categoryPath 'MXyk5GV9HzCj3iPJ' \
    --namespace $AB_NAMESPACE \
    --storeId 'uFlgacdgc0FtUTQr' \
    --body '{"localizationDisplayNames": {"xwBvqlcJkUZ9NkIs": "Qk4ki5ZCGkG5hVmB", "baPHPXNE2Hc8qM5G": "xjzXUsmCQ1n3H795", "W7JngnhsYGr2llRY": "roJSGAtJ2oAls1So"}}' \
    > test.out 2>&1
eval_tap $? 35 'UpdateCategory' test.out

#- 36 DeleteCategory
samples/cli/sample-apps Platform deleteCategory \
    --categoryPath 'crWcRcUvaU2aW206' \
    --namespace $AB_NAMESPACE \
    --storeId 'd6Td7H7y1lmAIRq8' \
    > test.out 2>&1
eval_tap $? 36 'DeleteCategory' test.out

#- 37 GetChildCategories
samples/cli/sample-apps Platform getChildCategories \
    --categoryPath '8fU5cpbE8HREBIhC' \
    --namespace $AB_NAMESPACE \
    --storeId 'gnBsmpsx2EMX51zM' \
    > test.out 2>&1
eval_tap $? 37 'GetChildCategories' test.out

#- 38 GetDescendantCategories
samples/cli/sample-apps Platform getDescendantCategories \
    --categoryPath 'ZzJYT2ZiMtREkESy' \
    --namespace $AB_NAMESPACE \
    --storeId '88FYP9oke2phB8O7' \
    > test.out 2>&1
eval_tap $? 38 'GetDescendantCategories' test.out

#- 39 QueryCodes
samples/cli/sample-apps Platform queryCodes \
    --campaignId 'siHSUdEpRssBMjpt' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --batchName '8zmUeg9rC9MocYQy' \
    --batchNo '[27, 9, 29]' \
    --code 'pdH5vdQNYG4eZL6D' \
    --limit '48' \
    --offset '98' \
    --withBatchName 'false' \
    > test.out 2>&1
eval_tap $? 39 'QueryCodes' test.out

#- 40 CreateCodes
samples/cli/sample-apps Platform createCodes \
    --campaignId 'jwHNk9kpcckJQ8XS' \
    --namespace $AB_NAMESPACE \
    --body '{"batchName": "0s03MS5fQg4J2d1m", "codeValue": "u9W1dOz1duZpglk6", "quantity": 73}' \
    > test.out 2>&1
eval_tap $? 40 'CreateCodes' test.out

#- 41 Download
samples/cli/sample-apps Platform download \
    --campaignId 'ePX1y5Al39DvlkOB' \
    --namespace $AB_NAMESPACE \
    --batchName 'BEEezgaELmfTx1aq' \
    --batchNo '[14, 32, 45]' \
    --withBatchName 'true' \
    > test.out 2>&1
eval_tap $? 41 'Download' test.out

#- 42 BulkDisableCodes
samples/cli/sample-apps Platform bulkDisableCodes \
    --campaignId 'dLjBK9Psdp7ae5bS' \
    --namespace $AB_NAMESPACE \
    --batchName 'FTV2wCl9N5GPKpL6' \
    --batchNo '[15, 59, 5]' \
    > test.out 2>&1
eval_tap $? 42 'BulkDisableCodes' test.out

#- 43 BulkEnableCodes
samples/cli/sample-apps Platform bulkEnableCodes \
    --campaignId 'Ycn6enSQBBIeyF9c' \
    --namespace $AB_NAMESPACE \
    --batchName 'rygwYhXLatZeVV9I' \
    --batchNo '[89, 61, 15]' \
    > test.out 2>&1
eval_tap $? 43 'BulkEnableCodes' test.out

#- 44 QueryRedeemHistory
samples/cli/sample-apps Platform queryRedeemHistory \
    --campaignId 'YPkIo9wJELk3H5eg' \
    --namespace $AB_NAMESPACE \
    --code '85SbX8aqL1T1erMu' \
    --limit '11' \
    --offset '3' \
    --userId 'FoqZZlfkere0beL2' \
    > test.out 2>&1
eval_tap $? 44 'QueryRedeemHistory' test.out

#- 45 GetCode
samples/cli/sample-apps Platform getCode \
    --code 'ji8GxwR339K5lFdI' \
    --namespace $AB_NAMESPACE \
    --redeemable 'false' \
    --withBatchName 'false' \
    > test.out 2>&1
eval_tap $? 45 'GetCode' test.out

#- 46 DisableCode
samples/cli/sample-apps Platform disableCode \
    --code '1D5tm8sJAjvayGn9' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 46 'DisableCode' test.out

#- 47 EnableCode
samples/cli/sample-apps Platform enableCode \
    --code 'rhxUpvRglIlDbDVN' \
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
    --body '{"currencyCode": "pJLN0CY1HrXCOezt", "currencySymbol": "bfhIOgDHAbZilmLR", "currencyType": "VIRTUAL", "decimals": 9, "localizationDescriptions": {"vWfSaJwpehihWubo": "7y2Z0U7IeoZEmebY", "p6BgF78NqakDtXqI": "TkWRGLut9TbKPswH", "1XinWykqAFni9lux": "nO3270ofuaYhKpGA"}}' \
    > test.out 2>&1
eval_tap $? 52 'CreateCurrency' test.out

#- 53 UpdateCurrency
samples/cli/sample-apps Platform updateCurrency \
    --currencyCode '1Llzc4CNuFyB0xGU' \
    --namespace $AB_NAMESPACE \
    --body '{"localizationDescriptions": {"SHeKDHLitmKFWrKC": "ZkImvszG7brpGSd1", "p9Yam2RKuGndyZFD": "34SXMYcwU54z9O5k", "KVEm0RfD6ORU3Nmi": "t5UJdbgoTLwB4kpl"}}' \
    > test.out 2>&1
eval_tap $? 53 'UpdateCurrency' test.out

#- 54 DeleteCurrency
samples/cli/sample-apps Platform deleteCurrency \
    --currencyCode '94JCVFbYZEHAIGdD' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 54 'DeleteCurrency' test.out

#- 55 GetCurrencyConfig
samples/cli/sample-apps Platform getCurrencyConfig \
    --currencyCode 'FTcEPsgFUsIaMWMi' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 55 'GetCurrencyConfig' test.out

#- 56 GetCurrencySummary
samples/cli/sample-apps Platform getCurrencySummary \
    --currencyCode 'wO803jcysNDuAr5p' \
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
    --body '{"data": [{"id": "tgnhAREfO36tiNTW", "rewards": [{"currency": {"currencyCode": "ojONF2oC9kxjvsT1", "namespace": "yVwumIb9NU3tKLrF"}, "item": {"itemId": "lj7HJxLfuZBx3KBO", "itemName": "4dfb4ZbENOiaV8xJ", "itemSku": "tw566lsEH73IdIsN", "itemType": "LMQdPIjLLxaFm4yK"}, "quantity": 16, "type": "ITEM"}, {"currency": {"currencyCode": "dTLbSn7JykgqdLQp", "namespace": "sOLS0S5eE7iLmnxG"}, "item": {"itemId": "HTbyW86r1QeoVwoU", "itemName": "FWe7yrVKzI53N63L", "itemSku": "DsyQ20EqMf4a6sW9", "itemType": "8XMEuo6Lip4MLTdg"}, "quantity": 29, "type": "CURRENCY"}, {"currency": {"currencyCode": "1OO7HeN7UEdNRiET", "namespace": "zX2sxmkea76NqgLH"}, "item": {"itemId": "9ptsZDOBXANtrFv4", "itemName": "gRu9mwYvJV4h5kuk", "itemSku": "SOuffIUXpe1j6q40", "itemType": "UBC5vzeF7F64hE6C"}, "quantity": 9, "type": "ITEM"}]}, {"id": "oScPnmqNwsrcwimU", "rewards": [{"currency": {"currencyCode": "MAoP5Pw3NwHDv3rw", "namespace": "bkYuClK6ugqO1eU2"}, "item": {"itemId": "3VoBCnfkIDKZBqss", "itemName": "RpiRYYFr2QPyOgI6", "itemSku": "WYfmIyzlg3qLBYdP", "itemType": "rSKNj5HzA4nXcOKn"}, "quantity": 53, "type": "CURRENCY"}, {"currency": {"currencyCode": "zIuUpDREXE5fQTLG", "namespace": "TDcVjTGD2VdvpPd7"}, "item": {"itemId": "uTrFCiyVVk9R4i9v", "itemName": "1GfTxt07GSpAZzAE", "itemSku": "IXnrchntonjX84yF", "itemType": "8O5hmITIxc2ZykOW"}, "quantity": 28, "type": "ITEM"}, {"currency": {"currencyCode": "fFH3DnUQ6IMcHkIs", "namespace": "AttwDVyi4emEwvcK"}, "item": {"itemId": "R5jtmO3m7iW0Gu6N", "itemName": "0yabV7PB9CTEeeCE", "itemSku": "CZfJ58Q7ZQuSwVUy", "itemType": "5R03NmiOGvQyiMD3"}, "quantity": 43, "type": "ITEM"}]}, {"id": "ca0u85y0Yg9LaDcr", "rewards": [{"currency": {"currencyCode": "jQtNjVdQKjiDkooT", "namespace": "hvDNMyrMmc2cxzWH"}, "item": {"itemId": "a6J3OdAIgbqxZG9F", "itemName": "Sa6JcSjxCQCuYwdn", "itemSku": "YawuUNVyvWkXELp7", "itemType": "wLGqCvHfUomPEJgg"}, "quantity": 51, "type": "ITEM"}, {"currency": {"currencyCode": "lj4xEBeg6Hj17WKX", "namespace": "ctWrfaSmPjfWVT64"}, "item": {"itemId": "bgSNUkgZgt9WbQxX", "itemName": "Zc2xtEwvDZOaozZC", "itemSku": "iqQoQVNVHjbUaj6E", "itemType": "Vt5XnBXvWku0Pp4N"}, "quantity": 44, "type": "ITEM"}, {"currency": {"currencyCode": "RVcub4jErVuWlGNR", "namespace": "xxpbdYSmmHGQAqWi"}, "item": {"itemId": "a0HnHSmTApZaHoBZ", "itemName": "DptyEjca9yyV2Wfv", "itemSku": "lmAUM9KfCVOTv6jK", "itemType": "CaHqO59W8eSD1n3k"}, "quantity": 78, "type": "ITEM"}]}]}' \
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
    --body '{"data": [{"platform": "PSN", "platformDlcIdMap": {"m85XQyGv8TeF4iEV": "X0PRYbZk03eORPv0", "O67zwwcfXfNdmGxp": "ZMaP8pfDkqq0Hrt9", "w5ftqH0wPPe5tHbs": "J5pjT5FJe3pnppiW"}}, {"platform": "PSN", "platformDlcIdMap": {"hbsGPtyMbwXjEfFH": "G0FWduoZQWxqEIKJ", "CQvXhnjEJlWDR8oj": "YqSR4S2koXObP8jI", "gLcPgs3YDl4aUgzf": "PMlNmGIfqLl4Ycjt"}}, {"platform": "XBOX", "platformDlcIdMap": {"UKkF7LCULqdncnaM": "G2T2f7NJlmXbUko3", "GNBSPr0QLehJwVyj": "apnapbh4nXX8MzN6", "DjmiyQABLaG48lDh": "ILjpNxsX5OrrU0Vr"}}]}' \
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
    --appType 'SOFTWARE' \
    --entitlementClazz 'LOOTBOX' \
    --entitlementName 'HrlGHoGeQwZp2Vb7' \
    --itemId '["Pdg9QOGTuKc9Aks3", "fUVcxezDAL5b5bnT", "QQmPEbyQ3iKWJIkc"]' \
    --limit '37' \
    --offset '46' \
    --origin 'GooglePlay' \
    --userId 'NDIou5BTDNx6l4cY' \
    > test.out 2>&1
eval_tap $? 63 'QueryEntitlements1' test.out

#- 64 QueryEntitlements
samples/cli/sample-apps Platform queryEntitlements \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --itemIds '["nLKquh01806qu7nk", "jeT3MmZVVGmgG7iL", "5Vx8IZfNDhjVwiP7"]' \
    --limit '7' \
    --offset '84' \
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
    --withoutCache 'false' \
    > test.out 2>&1
eval_tap $? 66 'GetEntitlementConfigInfo' test.out

#- 67 GrantEntitlements
samples/cli/sample-apps Platform grantEntitlements \
    --namespace $AB_NAMESPACE \
    --body '{"entitlementGrantList": [{"collectionId": "TOQz1JANs7jG6SvC", "endDate": "1992-08-16T00:00:00Z", "grantedCode": "IBVomR9UmQmJ3UI7", "itemId": "jtdn9PaijRl3Zahe", "itemNamespace": "EyDer0LX8dne1bZC", "language": "HU", "metadata": {"h8onmNNpMq7QylJX": {}, "DRM8A0wQVGypGiRG": {}, "SN7CPgBzhgbrRqvC": {}}, "origin": "Playstation", "quantity": 73, "region": "Jrt0kiVVuy8iRzCr", "source": "REDEEM_CODE", "startDate": "1978-04-24T00:00:00Z", "storeId": "a1NoRk4N1EkABwLu"}, {"collectionId": "NnTQNDlCJnaQRr9J", "endDate": "1976-07-01T00:00:00Z", "grantedCode": "taajyJvnec41ZUZs", "itemId": "JL9yMpaGvuHfCoFT", "itemNamespace": "kxTjKi198v7JC2uy", "language": "nUll", "metadata": {"Qy36V90qLOmUb8EA": {}, "OHzMQWFIJ0szT5Jo": {}, "RzKiluay41CF2Yug": {}}, "origin": "Other", "quantity": 75, "region": "MuggMX27JSWAYOvy", "source": "REDEEM_CODE", "startDate": "1998-01-11T00:00:00Z", "storeId": "BYJPSxcmgZ1LQsHo"}, {"collectionId": "jRxhwPqIOJLlGHuT", "endDate": "1975-11-06T00:00:00Z", "grantedCode": "1yayfV735CuphIAl", "itemId": "znTp3KZy6UKD7t9y", "itemNamespace": "j8wstYOwGSegW8Qg", "language": "in-Ubuy", "metadata": {"Nmr4IMut85ufsIn6": {}, "mv0vruA9vcPEnqgR": {}, "XGse1dEUIk1QJAlK": {}}, "origin": "Twitch", "quantity": 71, "region": "qYXraWCkAWRWmecI", "source": "ACHIEVEMENT", "startDate": "1985-07-05T00:00:00Z", "storeId": "XNNbAKH9OpQs0u2l"}], "userIds": ["7QAaDN4AGvzZbmbT", "Y3U6LOhvEJDxUTOQ", "clNuZeHDyJBjhCmo"]}' \
    > test.out 2>&1
eval_tap $? 67 'GrantEntitlements' test.out

#- 68 RevokeEntitlements
samples/cli/sample-apps Platform revokeEntitlements \
    --namespace $AB_NAMESPACE \
    --body '["XYtQUz0g7T3uVs9m", "YmhwD3JOnRF53hbu", "6jSLm70WkrCRNm1b"]' \
    > test.out 2>&1
eval_tap $? 68 'RevokeEntitlements' test.out

#- 69 GetEntitlement
samples/cli/sample-apps Platform getEntitlement \
    --entitlementId 'WBXiAnC5tPNfrk8S' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 69 'GetEntitlement' test.out

#- 70 QueryFulfillmentHistories
samples/cli/sample-apps Platform queryFulfillmentHistories \
    --namespace $AB_NAMESPACE \
    --limit '79' \
    --offset '33' \
    --status 'FAIL' \
    --userId '4qcJn80UI8ba9IPI' \
    > test.out 2>&1
eval_tap $? 70 'QueryFulfillmentHistories' test.out

#- 71 QueryIAPClawbackHistory
samples/cli/sample-apps Platform queryIAPClawbackHistory \
    --namespace $AB_NAMESPACE \
    --endTime 'wiHbeOV36vNLMAfS' \
    --eventType 'CHARGEBACK_REVERSED' \
    --externalOrderId '7Q8GOigdszzVFMDt' \
    --limit '31' \
    --offset '36' \
    --startTime 'UBtfiUOLDnBNSCVc' \
    --status 'INIT' \
    --userId 'Q0nUjEMPZLcEFDqP' \
    > test.out 2>&1
eval_tap $? 71 'QueryIAPClawbackHistory' test.out

#- 72 MockPlayStationStreamEvent
samples/cli/sample-apps Platform mockPlayStationStreamEvent \
    --namespace $AB_NAMESPACE \
    --body '{"body": {"account": "G9wZ9dwJULHcGPrH", "additionalData": {"entitlement": [{"clientTransaction": [{"amountConsumed": 72, "clientTransactionId": "7KdYwsaIYVwQ4sCB"}, {"amountConsumed": 0, "clientTransactionId": "VKhvNeyB3RTnEQZp"}, {"amountConsumed": 71, "clientTransactionId": "LYNnqGPHovqKiUcq"}], "entitlementId": "8W19wRa4HJHUSG5R", "usageCount": 5}, {"clientTransaction": [{"amountConsumed": 10, "clientTransactionId": "B4T3aNMdPUEahxTK"}, {"amountConsumed": 72, "clientTransactionId": "xoMsnqzbopnxGkTZ"}, {"amountConsumed": 3, "clientTransactionId": "wXgrt0HnKXndo5Iq"}], "entitlementId": "t6vJCxO9I2uLUO2x", "usageCount": 10}, {"clientTransaction": [{"amountConsumed": 55, "clientTransactionId": "zNdUzWdxMZVNJSrg"}, {"amountConsumed": 36, "clientTransactionId": "SIGH7RxyrHshGd8u"}, {"amountConsumed": 66, "clientTransactionId": "6hwi3SOQdBkNUmrg"}], "entitlementId": "0VHywDyfr5Z23Er5", "usageCount": 0}], "purpose": "In4xInZvEpcG9MF9"}, "originalTitleName": "ogdna3u8rwhzp3yz", "paymentProductSKU": "Hik8jv7a9nHTy23V", "purchaseDate": "KADhEu6nWilhP1PL", "sourceOrderItemId": "rXtRtHn2wL2FbG38", "titleName": "ne2IzhCFLiluHNuM"}, "eventDomain": "Lr4KAVne8joI8Ocg", "eventSource": "NO0pBGIlBVovoZ6T", "eventType": "fvwDtptIRDjywRX0", "eventVersion": 94, "id": "0Mp2BXkbhaTBtOjN", "timestamp": "87fo7eX1xMSA63vY"}' \
    > test.out 2>&1
eval_tap $? 72 'MockPlayStationStreamEvent' test.out

#- 73 MockXblClawbackEvent
samples/cli/sample-apps Platform mockXblClawbackEvent \
    --namespace $AB_NAMESPACE \
    --body '{"data": {"eventDate": "L8eYoWk3VeWJyk9W", "eventState": "oldgUxh43hTmaBdd", "lineItemId": "p82tWitU7B9ZwJpy", "orderId": "QH8hXVhmTmciI5OX", "productId": "CdCOWkEydgi3cy4h", "productType": "SWPl8MbWcnBjNsdd", "purchasedDate": "M31QsjoiPi96NVz6", "sandboxId": "tfJKlJ4EppEVnVRA", "skuId": "2CzPItuNoTGWD5B4", "subscriptionData": {"consumedDurationInDays": 0, "dateTime": "eqJDylOII0tiI9fO", "durationInDays": 41, "recurrenceId": "H8KVlQQxBKRTKjfO"}}, "datacontenttype": "30pSLkyoU9CaHlQ6", "id": "QDsmOx4QWIreZfyL", "source": "GLAbmdtIcKu1AZSd", "specVersion": "3cmTvkH0dPiaodxs", "subject": "IKQrb1hkxnxdGUdV", "time": "PAxjZaHO8880iajn", "traceparent": "4SnAmxYRWCRjovXp", "type": "pnQIY7p6X67IDIBX"}' \
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
    --body '{"appAppleId": 47, "bundleId": "6ge0n4VQ4jiRv1BA", "issuerId": "TubQKeUSLXtUfgys", "keyId": "BSzcTjmdPGTSREEo", "password": "hueR8bmFU60B5yXZ", "version": "V1"}' \
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
    --body '{"sandboxId": "2BCdLhUcNerQTTsZ"}' \
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
    --body '{"applicationName": "NtfRstFtAov9vB16", "notificationTokenAudience": "uNYKUttxgrltxGZR", "notificationTokenEmail": "OE2RvU27Q0LWfuA1", "packageName": "2qEhIVU6W3hQr8b7", "serviceAccountId": "UWvwNCWJeqAvMh0w"}' \
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
    --body '{"data": [{"itemIdentity": "Mx2tRj3bBKdrYUWE", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"riXaD7bn1K8I5HX8": "MaFRG2VX9tkp61Xg", "vVoVOVszrxDq9Ma2": "IZrdBb2eTbtuBXmG", "tV0wPzTc0FAMYHQR": "Smt7nkP6S07Jb1aM"}}, {"itemIdentity": "HHTX2kT1p2desJak", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"m5oopvkY3IN1Hs8q": "YbevKPkuzXhgicwi", "pLoi1DzHyz285zdQ": "oPcdcgXh7VWOSUDj", "JNhZysRdy1cv6MYr": "qL0o3ZpRAk7quvQP"}}, {"itemIdentity": "Ptp7fpIVDAlWQRn8", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"EjZrMF9g8iPWoJzh": "zDqAQBVwou2cfsxH", "QenKZoXWdXDOtQmu": "jvTzUnGUVSbuhAf0", "HEbLvBz7ozc2vgAk": "1k7sivlp8oOOT5JO"}}]}' \
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
    --body '{"appId": "Qq7PobDbw6H410eO", "appSecret": "Ab8ZoRKHkni6KgmS"}' \
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
    --body '{"backOfficeServerClientId": "lo3kdRqaYCoot1lS", "backOfficeServerClientSecret": "5qVxGtluJxvO3pBL", "enableStreamJob": false, "environment": "ZoAWw1CedmlPtPtw", "streamName": "M3Aa388Cr27Xcu7p", "streamPartnerName": "JjjkYRwPtliPBS0n"}' \
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
    --body '{"backOfficeServerClientId": "SaPo8i1t4HfymOQD", "backOfficeServerClientSecret": "uGeV3Y4TRAA2Bv6W", "enableStreamJob": false, "environment": "HWklwWbGmDpvkcTd", "streamName": "mguaAlqfz8J5QLbg", "streamPartnerName": "rJ8EdwYQmKQarr0f"}' \
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
    --body '{"appId": "jKx8QfP3QVS5PK9L", "env": "LIVE", "publisherAuthenticationKey": "b8Yy348CO2gnfIvo", "syncMode": "INVENTORY"}' \
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
    --body '{"clientId": "vDlg2Nv1QZTeGaOt", "clientSecret": "EPQPH3Tgp9mqrv3P", "organizationId": "SSsQHsi3A37yyj9P"}' \
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
    --body '{"enableClawback": true, "entraAppClientId": "6Wh7F02S6CI6ycSs", "entraAppClientSecret": "AZo8kIRSxrAjU7Kc", "entraTenantId": "lPrczLwrpkZFzHSJ", "relyingPartyCert": "eH5bl0wdigQ8W32Z"}' \
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
    --password 'dSWidFwXQ778GQpB' \
    > test.out 2>&1
eval_tap $? 105 'UpdateXblBPCertFile' test.out

#- 106 QueryThirdPartyNotifications
samples/cli/sample-apps Platform queryThirdPartyNotifications \
    --namespace $AB_NAMESPACE \
    --endDate 'uA3Sk7georvnqfwu' \
    --externalId 'k10uuHgCnyIc9IVO' \
    --limit '23' \
    --offset '11' \
    --source 'GOOGLE' \
    --startDate 'rl20nRz504dtYKaY' \
    --status 'WARN' \
    --type '05UqeDgxYScO2yIx' \
    > test.out 2>&1
eval_tap $? 106 'QueryThirdPartyNotifications' test.out

#- 107 QueryAbnormalTransactions
samples/cli/sample-apps Platform queryAbnormalTransactions \
    --namespace $AB_NAMESPACE \
    --limit '40' \
    --offset '31' \
    --orderId 'RikPkDYkArh9UgNA' \
    --steamId 'Ir8opLO89wRLkJDN' \
    > test.out 2>&1
eval_tap $? 107 'QueryAbnormalTransactions' test.out

#- 108 AdminGetSteamJobInfo
samples/cli/sample-apps Platform adminGetSteamJobInfo \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 108 'AdminGetSteamJobInfo' test.out

#- 109 AdminResetSteamJobTime
samples/cli/sample-apps Platform adminResetSteamJobTime \
    --namespace $AB_NAMESPACE \
    --body '{"env": "LIVE", "lastTime": "1972-02-02T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 109 'AdminResetSteamJobTime' test.out

#- 110 AdminRefundIAPOrder
samples/cli/sample-apps Platform adminRefundIAPOrder \
    --iapOrderNo 'oUI1sUsmsEijNTDR' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 110 'AdminRefundIAPOrder' test.out

#- 111 QuerySteamReportHistories
samples/cli/sample-apps Platform querySteamReportHistories \
    --namespace $AB_NAMESPACE \
    --limit '94' \
    --offset '82' \
    --orderId 'ctGTeQbhQizbBYEd' \
    --processStatus 'ERROR' \
    --steamId 'IBLHvZWof79Ng9MT' \
    > test.out 2>&1
eval_tap $? 111 'QuerySteamReportHistories' test.out

#- 112 QueryThirdPartySubscription
samples/cli/sample-apps Platform queryThirdPartySubscription \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --groupId '9Aqc1K6S6RVLTlXS' \
    --limit '5' \
    --offset '57' \
    --platform 'TWITCH' \
    --productId 'UF8jzm8OuD666y0l' \
    --userId 'PVNWHcfslL3IeFQu' \
    > test.out 2>&1
eval_tap $? 112 'QueryThirdPartySubscription' test.out

#- 113 GetIAPOrderConsumeDetails
samples/cli/sample-apps Platform getIAPOrderConsumeDetails \
    --iapOrderNo 'o3RNBwEc1zfBGeho' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 113 'GetIAPOrderConsumeDetails' test.out

#- 114 DownloadInvoiceDetails
samples/cli/sample-apps Platform downloadInvoiceDetails \
    --namespace $AB_NAMESPACE \
    --endTime 'VZZl6XgmeQyN7m6I' \
    --feature 'QwN58Twmsfyc5GiJ' \
    --itemId 'uVVeEDcbOAYsNuBG' \
    --itemType 'LOOTBOX' \
    --startTime 'gEpRpeaGxIbu8G7C' \
    > test.out 2>&1
eval_tap $? 114 'DownloadInvoiceDetails' test.out

#- 115 GenerateInvoiceSummary
samples/cli/sample-apps Platform generateInvoiceSummary \
    --namespace $AB_NAMESPACE \
    --endTime 'F9JUMqkxCcee1Bpn' \
    --feature 'IH0jhG5WyPKaymL0' \
    --itemId 'WYGqRSB0msnGnEB7' \
    --itemType 'EXTENSION' \
    --startTime 'JxfVfl22JmhIEleO' \
    > test.out 2>&1
eval_tap $? 115 'GenerateInvoiceSummary' test.out

#- 116 SyncInGameItem
samples/cli/sample-apps Platform syncInGameItem \
    --namespace $AB_NAMESPACE \
    --storeId '2jRgIbb0bxIhw62f' \
    --body '{"categoryPath": "ZQR0yR99z6Rg6Hpg", "targetItemId": "1nijThBcwq948b11", "targetNamespace": "4IH8XBE9Z03vHQsF"}' \
    > test.out 2>&1
eval_tap $? 116 'SyncInGameItem' test.out

#- 117 CreateItem
samples/cli/sample-apps Platform createItem \
    --namespace $AB_NAMESPACE \
    --storeId 'a9sXMG6LA9Uve3uo' \
    --body '{"appId": "qdH7JR8NxdlZY5RE", "appType": "GAME", "baseAppId": "KToOBknIkvbDxiUK", "boothName": "AdEpCLONHMhxyBue", "categoryPath": "98Y0OwOwpOoaBiGV", "clazz": "lSTniF8njkIrSvvM", "displayOrder": 71, "entitlementType": "CONSUMABLE", "ext": {"5XFw4F0wJzzP3HsD": {}, "fa8Q72RwgN9qEs6A": {}, "yu4aXMgHloDnSEwO": {}}, "features": ["d6yJHhj4fLxuWK9b", "VkJJ9cbD4rsFXTju", "BvdGnKJMxCb0o2E6"], "flexible": true, "images": [{"as": "SfKVy54fgXflWdJX", "caption": "oLwKMOlhzPUeDYwf", "height": 46, "imageUrl": "OzN4QtVft5xyfVd0", "smallImageUrl": "VXVtfKMWacvurYa4", "width": 90}, {"as": "w5XduijR3ElHKVoe", "caption": "Spur1RpU2uhYmVBN", "height": 32, "imageUrl": "6YP3FClUKMt3q4Md", "smallImageUrl": "rqjoowUTQ9matmQI", "width": 68}, {"as": "5eo9GZE1hBQCQJhP", "caption": "ZCsSD9dk8gv7QYu9", "height": 53, "imageUrl": "zQJxWJy7ecz5ZQLu", "smallImageUrl": "ucANSqGakaI0K0f2", "width": 42}], "inventoryConfig": {"customAttributes": {"VjhQ4mUVTVri4hiA": {}, "0RyoJ70qRrTibHqy": {}, "ilKwosR63wU4v8KJ": {}}, "serverCustomAttributes": {"94rZrkuwRpmWtvfG": {}, "GfLJ5fcLPSkdrn7F": {}, "TXN9yTNelPOWHiNQ": {}}, "slotUsed": 10}, "itemIds": ["xr8lAFGo6zLXUWXV", "AfnuBmruLtMAQFeR", "AGVNavzvw9PNknKc"], "itemQty": {"M1jJiG56yFyXMyql": 57, "3Py9hskS6ePWgjtA": 67, "OzC6eVf2aPQKOPUJ": 16}, "itemType": "SUBSCRIPTION", "listable": false, "localizations": {"Q3QY3QwCkCWCMkhG": {"description": "dPURUkR5hWVYItoP", "localExt": {"1dQdvnHi5AUADwz1": {}, "fUtoVNg8ATF0LZ5O": {}, "vVdpGcZqiSXxtlGj": {}}, "longDescription": "qF1sHphOgCkUYuB5", "title": "KkY5LCmBf87kL3Nk"}, "NcfkNLRqFE5C4McZ": {"description": "buFFLVS5iowmIqmW", "localExt": {"phwH3cLPnZZJd67K": {}, "rt5tUDCwlUY8PUTv": {}, "MtsTpbB0F7xsat3Q": {}}, "longDescription": "rg7Fdncbuy2NC53X", "title": "sN2QSuKJ6U9LlEB6"}, "I6T9qFMjqf7JIBbB": {"description": "3o35TFk41VBfHyFa", "localExt": {"Zo0jlPcNi8fr4c7G": {}, "Cb7j5dYVdevA4nWt": {}, "5xETRbDiFN6ffwW7": {}}, "longDescription": "JJ8UXbrVqiqZxAD3", "title": "OhHGf52S1DJ3o18L"}}, "lootBoxConfig": {"rewardCount": 35, "rewards": [{"lootBoxItems": [{"count": 4, "duration": 63, "endDate": "1984-07-01T00:00:00Z", "itemId": "T3C2cqIHj98TEeBC", "itemSku": "Q0NpYG9rPQD9Xxhe", "itemType": "zeqJtdYseTz5hhfk"}, {"count": 90, "duration": 41, "endDate": "1981-03-10T00:00:00Z", "itemId": "FC5iHotwAgCYRzFH", "itemSku": "7QVvS4j99NXzqGps", "itemType": "LDG5GBVHijuIuzRc"}, {"count": 94, "duration": 53, "endDate": "1986-04-15T00:00:00Z", "itemId": "GPuZk2Fe6RbPEG4o", "itemSku": "ZRK5eG7fK5q6nYJq", "itemType": "GIXTNyV6xHv59f2L"}], "name": "BKvrgXCFaGldy9hg", "odds": 0.26870453195279553, "type": "REWARD_GROUP", "weight": 45}, {"lootBoxItems": [{"count": 32, "duration": 98, "endDate": "1997-06-17T00:00:00Z", "itemId": "qZJf1peaOZh5gOEN", "itemSku": "lelgDcnbjXikfmih", "itemType": "zyQfWdODGL6mdP5F"}, {"count": 73, "duration": 25, "endDate": "1976-04-20T00:00:00Z", "itemId": "IAgLTDm1CGgoTKgR", "itemSku": "BbrrqQtCMHQUP3ED", "itemType": "EwKUB7vl7n2ZWOVo"}, {"count": 68, "duration": 82, "endDate": "1995-05-23T00:00:00Z", "itemId": "0iQV5d3OhC49FEOa", "itemSku": "3lgDXGV9aXoMaKKi", "itemType": "BurmgZSDNGgypn34"}], "name": "OA5rk3mdeugXEavX", "odds": 0.8085122909399934, "type": "REWARD", "weight": 41}, {"lootBoxItems": [{"count": 99, "duration": 53, "endDate": "1986-04-07T00:00:00Z", "itemId": "O8eAemqMWRwxH6pT", "itemSku": "zaHp0JdAQ0UCEhSn", "itemType": "TlH5PgLnkobJULMW"}, {"count": 60, "duration": 22, "endDate": "1986-04-11T00:00:00Z", "itemId": "b022kTuZPgIDox8w", "itemSku": "iDFzH91NW2FWZZY2", "itemType": "nngbU8XGQN9uqQq9"}, {"count": 59, "duration": 51, "endDate": "1974-01-27T00:00:00Z", "itemId": "UT0t6FyEYuDwwcOu", "itemSku": "i7FjC07IrjXzU3WQ", "itemType": "Ung95K8NH6bJDZEM"}], "name": "mBKXk5vGjYCtRGms", "odds": 0.7683980356481759, "type": "PROBABILITY_GROUP", "weight": 99}], "rollFunction": "DEFAULT"}, "maxCount": 17, "maxCountPerUser": 49, "name": "2C0Ikq7nIqcgoNmZ", "optionBoxConfig": {"boxItems": [{"count": 59, "duration": 0, "endDate": "1981-05-07T00:00:00Z", "itemId": "4iylwyDeKWrKUEqJ", "itemSku": "RbbywvNh6EsdbZDB", "itemType": "A62qavGuoCreHuJA"}, {"count": 51, "duration": 52, "endDate": "1982-02-16T00:00:00Z", "itemId": "N0DznXvnx2vdRiav", "itemSku": "ojDwEcJI8lWFokR5", "itemType": "Wf078YNw5MQxLgfu"}, {"count": 85, "duration": 40, "endDate": "1988-03-02T00:00:00Z", "itemId": "X1MBFW07FwBaInhn", "itemSku": "JsYz8DzHbPRnvC7F", "itemType": "Vwp50uEBwSMq3G0m"}]}, "purchasable": false, "recurring": {"cycle": "YEARLY", "fixedFreeDays": 44, "fixedTrialCycles": 25, "graceDays": 5}, "regionData": {"SPlVr6VMKrLEJQxU": [{"currencyCode": "QuLZnSC8su2mLoXk", "currencyNamespace": "5OzgfvD8i6L5F1n2", "currencyType": "REAL", "discountAmount": 24, "discountExpireAt": "1998-11-08T00:00:00Z", "discountPercentage": 5, "discountPurchaseAt": "1983-07-02T00:00:00Z", "expireAt": "1990-07-27T00:00:00Z", "price": 38, "purchaseAt": "1971-06-21T00:00:00Z", "trialPrice": 67}, {"currencyCode": "xipFrjC7NoLKexPX", "currencyNamespace": "mZmn6dJq8ovLX5rk", "currencyType": "REAL", "discountAmount": 72, "discountExpireAt": "1989-03-08T00:00:00Z", "discountPercentage": 22, "discountPurchaseAt": "1971-09-15T00:00:00Z", "expireAt": "1978-04-06T00:00:00Z", "price": 59, "purchaseAt": "1999-01-31T00:00:00Z", "trialPrice": 32}, {"currencyCode": "srwCcM7qteF1NEOL", "currencyNamespace": "pWxbP1AgG3Dv9E3D", "currencyType": "REAL", "discountAmount": 83, "discountExpireAt": "1979-03-12T00:00:00Z", "discountPercentage": 22, "discountPurchaseAt": "1995-07-21T00:00:00Z", "expireAt": "1991-05-02T00:00:00Z", "price": 24, "purchaseAt": "1973-11-06T00:00:00Z", "trialPrice": 80}], "Ux6s1xCxLH20XhR1": [{"currencyCode": "Hs1bqq2IlY7fJ75r", "currencyNamespace": "K3dZLI8uDeSaPXPz", "currencyType": "VIRTUAL", "discountAmount": 88, "discountExpireAt": "1981-04-23T00:00:00Z", "discountPercentage": 32, "discountPurchaseAt": "1993-05-04T00:00:00Z", "expireAt": "1981-05-10T00:00:00Z", "price": 74, "purchaseAt": "1977-06-12T00:00:00Z", "trialPrice": 6}, {"currencyCode": "D0J6WRlv7CBsM933", "currencyNamespace": "OhWKqYO4TIlC8DZt", "currencyType": "REAL", "discountAmount": 92, "discountExpireAt": "1971-12-27T00:00:00Z", "discountPercentage": 18, "discountPurchaseAt": "1988-11-11T00:00:00Z", "expireAt": "1978-02-22T00:00:00Z", "price": 2, "purchaseAt": "1989-09-07T00:00:00Z", "trialPrice": 4}, {"currencyCode": "go4iXRwCbxPETWFb", "currencyNamespace": "jB5jjpfQN2YtyJhW", "currencyType": "REAL", "discountAmount": 4, "discountExpireAt": "1987-10-14T00:00:00Z", "discountPercentage": 24, "discountPurchaseAt": "1971-02-21T00:00:00Z", "expireAt": "1992-06-30T00:00:00Z", "price": 3, "purchaseAt": "1982-04-05T00:00:00Z", "trialPrice": 69}], "cKNUVfqj6eBQGijp": [{"currencyCode": "M4ohoV1dERLdeU1Q", "currencyNamespace": "AwJM5Apqfl1SSTdr", "currencyType": "VIRTUAL", "discountAmount": 85, "discountExpireAt": "1994-02-07T00:00:00Z", "discountPercentage": 85, "discountPurchaseAt": "1987-12-31T00:00:00Z", "expireAt": "1980-10-15T00:00:00Z", "price": 51, "purchaseAt": "1979-11-02T00:00:00Z", "trialPrice": 13}, {"currencyCode": "w1UXjW1cDn3ItHNX", "currencyNamespace": "kAUHmPk3PbuZZOwX", "currencyType": "VIRTUAL", "discountAmount": 65, "discountExpireAt": "1971-11-13T00:00:00Z", "discountPercentage": 20, "discountPurchaseAt": "1993-12-13T00:00:00Z", "expireAt": "1972-01-29T00:00:00Z", "price": 22, "purchaseAt": "1975-01-21T00:00:00Z", "trialPrice": 66}, {"currencyCode": "q5VpBKdeNWfB04rO", "currencyNamespace": "1sNWj88C7RF5AawU", "currencyType": "VIRTUAL", "discountAmount": 60, "discountExpireAt": "1994-04-01T00:00:00Z", "discountPercentage": 74, "discountPurchaseAt": "1977-03-20T00:00:00Z", "expireAt": "1974-12-12T00:00:00Z", "price": 91, "purchaseAt": "1985-07-24T00:00:00Z", "trialPrice": 64}]}, "saleConfig": {"currencyCode": "shaYrFd2iZ9oAQHY", "price": 63}, "seasonType": "TIER", "sectionExclusive": true, "sellable": false, "sku": "NuI1UuFWuCjBnKrW", "stackable": true, "status": "ACTIVE", "tags": ["czz3v3ZzAVuVh5K9", "OoSfmPktQOrJ0FM3", "4iLAyXBwO3U1XaxD"], "targetCurrencyCode": "oQsHhfzK14W9gOsW", "targetNamespace": "EIUwfuLD5d75sSXU", "thumbnailUrl": "nfr1UA1hmPQHuR4X", "useCount": 13}' \
    > test.out 2>&1
eval_tap $? 117 'CreateItem' test.out

#- 118 GetItemByAppId
samples/cli/sample-apps Platform getItemByAppId \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'sZxRSzr7jLUIbVEF' \
    --appId 'nrmgv9PaIYDMCgwu' \
    > test.out 2>&1
eval_tap $? 118 'GetItemByAppId' test.out

#- 119 QueryItems
samples/cli/sample-apps Platform queryItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --appType 'DLC' \
    --availableDate 'zwY1uocx8X2kVktG' \
    --baseAppId 'O0FdMDUPAM2j8Ztn' \
    --categoryPath 'Y4rdQnVp9LCqy4YS' \
    --features '3JopAJs2OOm4hceX' \
    --includeSubCategoryItem 'false' \
    --itemType 'BUNDLE' \
    --limit '29' \
    --offset '15' \
    --region 'LrFWd9Js6OrUh91q' \
    --sortBy '["name", "name:desc", "displayOrder:asc"]' \
    --storeId 'Gp4vlbJZoZTObsfP' \
    --tags 'STga6ynK1qsChzoQ' \
    --targetNamespace '4Q4aBxv2RtGK83Sl' \
    > test.out 2>&1
eval_tap $? 119 'QueryItems' test.out

#- 120 ListBasicItemsByFeatures
samples/cli/sample-apps Platform listBasicItemsByFeatures \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --features '["hVMZoW5GH6RNY7jq", "QXFXGCdRgiQ1GSgK", "bmBtIjoWjk0qNPLO"]' \
    > test.out 2>&1
eval_tap $? 120 'ListBasicItemsByFeatures' test.out

#- 121 GetItems
samples/cli/sample-apps Platform getItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'Py3TTPdHI4AwaiJ7' \
    --itemIds 'Lo7Ejex4kutUoSOI' \
    > test.out 2>&1
eval_tap $? 121 'GetItems' test.out

#- 122 GetItemBySku
samples/cli/sample-apps Platform getItemBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'yIJYyDB6lSSWRhgz' \
    --sku 'R7twoWkcu2419Xop' \
    > test.out 2>&1
eval_tap $? 122 'GetItemBySku' test.out

#- 123 GetLocaleItemBySku
samples/cli/sample-apps Platform getLocaleItemBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --language 'QFjZAbxyonvFqeLi' \
    --populateBundle 'true' \
    --region 'KzPS4DCvD2FsoSqV' \
    --storeId 'PaLjgYvlF5qJ7Rq2' \
    --sku 'n4TesiAB0E9c9tCd' \
    > test.out 2>&1
eval_tap $? 123 'GetLocaleItemBySku' test.out

#- 124 GetEstimatedPrice
samples/cli/sample-apps Platform getEstimatedPrice \
    --namespace $AB_NAMESPACE \
    --platform 'DUhwAFMnE9RgUWlW' \
    --region 'L2eLz8U9XWxKVvFo' \
    --storeId '7C19eDnloLYSCu60' \
    --itemIds 'd1TNCvmXAU10Rp83' \
    --userId '4KHfXPP6cBXA3lvq' \
    > test.out 2>&1
eval_tap $? 124 'GetEstimatedPrice' test.out

#- 125 GetItemIdBySku
samples/cli/sample-apps Platform getItemIdBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'DMd1wvnDvhhUtzlW' \
    --sku 'U047Z0vgxCwrnSVC' \
    > test.out 2>&1
eval_tap $? 125 'GetItemIdBySku' test.out

#- 126 GetBulkItemIdBySkus
samples/cli/sample-apps Platform getBulkItemIdBySkus \
    --namespace $AB_NAMESPACE \
    --sku '["bR0SfNG8Dir8lbZq", "siJCtkZjsr7lB45K", "TfDxUmDeXm5j875K"]' \
    --storeId 'm7ljX1xwwXCme9ea' \
    > test.out 2>&1
eval_tap $? 126 'GetBulkItemIdBySkus' test.out

#- 127 BulkGetLocaleItems
samples/cli/sample-apps Platform bulkGetLocaleItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --language 'UadmlUJStzA0UFp3' \
    --region 'oL4T4vEoEhAIaSHz' \
    --storeId 'bii6HjleJwlcdHzs' \
    --itemIds 'wF4795BHhgX504s9' \
    > test.out 2>&1
eval_tap $? 127 'BulkGetLocaleItems' test.out

#- 128 GetAvailablePredicateTypes
samples/cli/sample-apps Platform getAvailablePredicateTypes \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 128 'GetAvailablePredicateTypes' test.out

#- 129 ValidateItemPurchaseCondition
samples/cli/sample-apps Platform validateItemPurchaseCondition \
    --namespace $AB_NAMESPACE \
    --platform 'qqMNEBJbpOwGfeq3' \
    --userId 'ErhnMka3fWND7wME' \
    --body '{"itemIds": ["yka58DKoZPCFZeZy", "RxWm8WhwDVPuCWQv", "hzZkRvC85PGvvOrP"]}' \
    > test.out 2>&1
eval_tap $? 129 'ValidateItemPurchaseCondition' test.out

#- 130 BulkUpdateRegionData
samples/cli/sample-apps Platform bulkUpdateRegionData \
    --namespace $AB_NAMESPACE \
    --storeId '1WrtijGkEQSposG5' \
    --body '{"changes": [{"itemIdentities": ["dOgi5tMPTYxgY5Dz", "KRee4DcxRKZiMKRN", "rI3MRSxgr6c40YCT"], "itemIdentityType": "ITEM_SKU", "regionData": {"R9PDtfMo8ZYgp355": [{"currencyCode": "sPoQ607ZijldOsOP", "currencyNamespace": "X32XZmPO6bgufwaW", "currencyType": "VIRTUAL", "discountAmount": 19, "discountExpireAt": "1992-02-11T00:00:00Z", "discountPercentage": 19, "discountPurchaseAt": "1978-06-09T00:00:00Z", "discountedPrice": 4, "expireAt": "1984-06-05T00:00:00Z", "price": 97, "purchaseAt": "1975-03-29T00:00:00Z", "trialPrice": 92}, {"currencyCode": "SH500sozltVMFZJG", "currencyNamespace": "TRVnAg8h6FNpUjz1", "currencyType": "REAL", "discountAmount": 36, "discountExpireAt": "1979-07-14T00:00:00Z", "discountPercentage": 63, "discountPurchaseAt": "1979-02-13T00:00:00Z", "discountedPrice": 1, "expireAt": "1991-10-10T00:00:00Z", "price": 49, "purchaseAt": "1983-08-23T00:00:00Z", "trialPrice": 13}, {"currencyCode": "3IPVsMR1KOAly4hW", "currencyNamespace": "4D9sgoeivgMPHVze", "currencyType": "REAL", "discountAmount": 19, "discountExpireAt": "1988-10-05T00:00:00Z", "discountPercentage": 83, "discountPurchaseAt": "1987-09-15T00:00:00Z", "discountedPrice": 36, "expireAt": "1993-08-16T00:00:00Z", "price": 30, "purchaseAt": "1994-08-16T00:00:00Z", "trialPrice": 90}], "vnOvuj0t9g2Z81Z8": [{"currencyCode": "tlryRqi2eNwvbeJx", "currencyNamespace": "6kgMGF8KxSM5F1Zw", "currencyType": "VIRTUAL", "discountAmount": 92, "discountExpireAt": "1977-05-16T00:00:00Z", "discountPercentage": 79, "discountPurchaseAt": "1985-03-11T00:00:00Z", "discountedPrice": 7, "expireAt": "1974-03-21T00:00:00Z", "price": 80, "purchaseAt": "1999-01-02T00:00:00Z", "trialPrice": 87}, {"currencyCode": "xKnaUFLVaatUVeFp", "currencyNamespace": "Olp6ioJoKpSulQBI", "currencyType": "REAL", "discountAmount": 31, "discountExpireAt": "1975-05-14T00:00:00Z", "discountPercentage": 74, "discountPurchaseAt": "1983-01-20T00:00:00Z", "discountedPrice": 16, "expireAt": "1995-08-07T00:00:00Z", "price": 42, "purchaseAt": "1973-01-27T00:00:00Z", "trialPrice": 5}, {"currencyCode": "BribALHt3MYSOYuH", "currencyNamespace": "sm2gQ3e6Mqy55QAI", "currencyType": "REAL", "discountAmount": 88, "discountExpireAt": "1994-10-18T00:00:00Z", "discountPercentage": 41, "discountPurchaseAt": "1981-09-19T00:00:00Z", "discountedPrice": 2, "expireAt": "1990-08-03T00:00:00Z", "price": 52, "purchaseAt": "1987-11-10T00:00:00Z", "trialPrice": 81}], "R5YYzaLtHZ3ow40t": [{"currencyCode": "uyb252SluHNmf4BM", "currencyNamespace": "kHupDnty2blftuTx", "currencyType": "VIRTUAL", "discountAmount": 48, "discountExpireAt": "1999-04-07T00:00:00Z", "discountPercentage": 25, "discountPurchaseAt": "1997-03-14T00:00:00Z", "discountedPrice": 59, "expireAt": "1994-07-01T00:00:00Z", "price": 39, "purchaseAt": "1983-06-19T00:00:00Z", "trialPrice": 68}, {"currencyCode": "lSuVgANeaDbgF1Ha", "currencyNamespace": "sMlrEe3N8DYOExnO", "currencyType": "VIRTUAL", "discountAmount": 18, "discountExpireAt": "1985-02-17T00:00:00Z", "discountPercentage": 70, "discountPurchaseAt": "1994-02-06T00:00:00Z", "discountedPrice": 4, "expireAt": "1989-08-03T00:00:00Z", "price": 100, "purchaseAt": "1988-01-08T00:00:00Z", "trialPrice": 52}, {"currencyCode": "Sv2UfXDZF1yq855e", "currencyNamespace": "8BIMdwObhFFqr1Ie", "currencyType": "VIRTUAL", "discountAmount": 90, "discountExpireAt": "1996-12-31T00:00:00Z", "discountPercentage": 70, "discountPurchaseAt": "1983-10-16T00:00:00Z", "discountedPrice": 88, "expireAt": "1976-04-06T00:00:00Z", "price": 98, "purchaseAt": "1997-05-20T00:00:00Z", "trialPrice": 88}]}}, {"itemIdentities": ["L09spWTmjTLHUuRR", "sy8Q4788zhnMYgUP", "ZGpc4hpXhVx7Nigj"], "itemIdentityType": "ITEM_SKU", "regionData": {"jNmhYGKfi7Vefior": [{"currencyCode": "gNhisZ1ISez25VdJ", "currencyNamespace": "AniBRuoqcgJmiVZR", "currencyType": "REAL", "discountAmount": 1, "discountExpireAt": "1976-08-11T00:00:00Z", "discountPercentage": 59, "discountPurchaseAt": "1979-03-16T00:00:00Z", "discountedPrice": 79, "expireAt": "1992-08-07T00:00:00Z", "price": 62, "purchaseAt": "1984-03-30T00:00:00Z", "trialPrice": 57}, {"currencyCode": "jjyjQ0jRz6N6FjNL", "currencyNamespace": "FJYmcWnny12zXXdG", "currencyType": "VIRTUAL", "discountAmount": 25, "discountExpireAt": "1995-09-09T00:00:00Z", "discountPercentage": 81, "discountPurchaseAt": "1978-03-01T00:00:00Z", "discountedPrice": 14, "expireAt": "1973-06-13T00:00:00Z", "price": 70, "purchaseAt": "1978-04-02T00:00:00Z", "trialPrice": 65}, {"currencyCode": "ob416uR3920zzHai", "currencyNamespace": "XqxpI74Wzuj87Whd", "currencyType": "VIRTUAL", "discountAmount": 14, "discountExpireAt": "1976-11-23T00:00:00Z", "discountPercentage": 71, "discountPurchaseAt": "1998-08-07T00:00:00Z", "discountedPrice": 99, "expireAt": "1984-04-19T00:00:00Z", "price": 95, "purchaseAt": "1992-04-05T00:00:00Z", "trialPrice": 45}], "Pem7H9viFNkTsOCk": [{"currencyCode": "1CKMTjaUwrbJzY2k", "currencyNamespace": "sJjJdrPs72DxyHNE", "currencyType": "VIRTUAL", "discountAmount": 14, "discountExpireAt": "1971-08-22T00:00:00Z", "discountPercentage": 57, "discountPurchaseAt": "1976-04-02T00:00:00Z", "discountedPrice": 62, "expireAt": "1976-04-08T00:00:00Z", "price": 53, "purchaseAt": "1981-03-23T00:00:00Z", "trialPrice": 82}, {"currencyCode": "f2EJ4H3qzeXUO6C5", "currencyNamespace": "iaepJfmHI03tCxTr", "currencyType": "REAL", "discountAmount": 33, "discountExpireAt": "1992-02-25T00:00:00Z", "discountPercentage": 41, "discountPurchaseAt": "1972-02-28T00:00:00Z", "discountedPrice": 23, "expireAt": "1988-04-21T00:00:00Z", "price": 39, "purchaseAt": "1981-08-21T00:00:00Z", "trialPrice": 80}, {"currencyCode": "WAMOheRycZZFxVYO", "currencyNamespace": "iFUukcisRJPGQuOS", "currencyType": "VIRTUAL", "discountAmount": 31, "discountExpireAt": "1982-11-23T00:00:00Z", "discountPercentage": 16, "discountPurchaseAt": "1984-08-12T00:00:00Z", "discountedPrice": 75, "expireAt": "1977-07-02T00:00:00Z", "price": 21, "purchaseAt": "1988-11-22T00:00:00Z", "trialPrice": 5}], "txh9DzwA4HfnHtYt": [{"currencyCode": "Eu2fXT4VkjhuFtCJ", "currencyNamespace": "XioUrKlZrl3iAULo", "currencyType": "VIRTUAL", "discountAmount": 30, "discountExpireAt": "1989-10-02T00:00:00Z", "discountPercentage": 48, "discountPurchaseAt": "1981-09-22T00:00:00Z", "discountedPrice": 14, "expireAt": "1989-11-11T00:00:00Z", "price": 15, "purchaseAt": "1971-12-23T00:00:00Z", "trialPrice": 35}, {"currencyCode": "3qxRanlMJdb4s0O9", "currencyNamespace": "jnmQhLOFKSXlsQho", "currencyType": "VIRTUAL", "discountAmount": 69, "discountExpireAt": "1997-03-24T00:00:00Z", "discountPercentage": 30, "discountPurchaseAt": "1997-01-11T00:00:00Z", "discountedPrice": 22, "expireAt": "1972-11-11T00:00:00Z", "price": 25, "purchaseAt": "1993-09-06T00:00:00Z", "trialPrice": 31}, {"currencyCode": "Fj0WgM0yd3VQU5aq", "currencyNamespace": "qc6sd4IBkf7xIbhW", "currencyType": "REAL", "discountAmount": 43, "discountExpireAt": "1982-03-28T00:00:00Z", "discountPercentage": 2, "discountPurchaseAt": "1986-10-12T00:00:00Z", "discountedPrice": 52, "expireAt": "1997-02-02T00:00:00Z", "price": 76, "purchaseAt": "1976-03-03T00:00:00Z", "trialPrice": 33}]}}, {"itemIdentities": ["MXiPwnJPV2qDfMNf", "BV4Cfyi40GORG5aJ", "cEQTj2lbGWHObEml"], "itemIdentityType": "ITEM_SKU", "regionData": {"GLPA64nqwSpLSOVL": [{"currencyCode": "Tge01g3NGPZCrJzY", "currencyNamespace": "evKAp9e2ZMpolivY", "currencyType": "REAL", "discountAmount": 32, "discountExpireAt": "1981-02-27T00:00:00Z", "discountPercentage": 72, "discountPurchaseAt": "1987-01-18T00:00:00Z", "discountedPrice": 72, "expireAt": "1986-06-09T00:00:00Z", "price": 24, "purchaseAt": "1987-12-11T00:00:00Z", "trialPrice": 40}, {"currencyCode": "TCCNwqqL4zd8c6ja", "currencyNamespace": "J7Lsj23jmctPPpdY", "currencyType": "REAL", "discountAmount": 9, "discountExpireAt": "1989-07-28T00:00:00Z", "discountPercentage": 78, "discountPurchaseAt": "1971-10-20T00:00:00Z", "discountedPrice": 11, "expireAt": "1976-06-29T00:00:00Z", "price": 64, "purchaseAt": "1979-12-30T00:00:00Z", "trialPrice": 42}, {"currencyCode": "YUW7Z2dBVuT2vx76", "currencyNamespace": "n9cI3wjzfRQxUfrF", "currencyType": "VIRTUAL", "discountAmount": 96, "discountExpireAt": "1989-11-04T00:00:00Z", "discountPercentage": 22, "discountPurchaseAt": "1993-08-29T00:00:00Z", "discountedPrice": 93, "expireAt": "1985-08-01T00:00:00Z", "price": 54, "purchaseAt": "1989-07-05T00:00:00Z", "trialPrice": 59}], "bc5zaZMg7Vi9CKyT": [{"currencyCode": "NBBc5x901ZP3oBDa", "currencyNamespace": "4GGLnxVFeYrtbtIZ", "currencyType": "VIRTUAL", "discountAmount": 69, "discountExpireAt": "1982-06-18T00:00:00Z", "discountPercentage": 69, "discountPurchaseAt": "1990-07-21T00:00:00Z", "discountedPrice": 77, "expireAt": "1993-12-04T00:00:00Z", "price": 63, "purchaseAt": "1971-01-30T00:00:00Z", "trialPrice": 64}, {"currencyCode": "XekRuotYXjtT4IAn", "currencyNamespace": "iWieUoGlpxvyNblu", "currencyType": "REAL", "discountAmount": 64, "discountExpireAt": "1984-09-22T00:00:00Z", "discountPercentage": 81, "discountPurchaseAt": "1997-09-14T00:00:00Z", "discountedPrice": 56, "expireAt": "1980-09-29T00:00:00Z", "price": 75, "purchaseAt": "1975-03-20T00:00:00Z", "trialPrice": 30}, {"currencyCode": "tuMjjGa03PTx9P2v", "currencyNamespace": "8cAQbDEUAyjJpkwF", "currencyType": "REAL", "discountAmount": 73, "discountExpireAt": "1990-07-13T00:00:00Z", "discountPercentage": 84, "discountPurchaseAt": "1982-04-25T00:00:00Z", "discountedPrice": 49, "expireAt": "1992-05-12T00:00:00Z", "price": 35, "purchaseAt": "1985-05-28T00:00:00Z", "trialPrice": 70}], "089OaZwkqTDtv40V": [{"currencyCode": "PKVyLZLo7jskFOAF", "currencyNamespace": "UWZMWbbeWGeP7FfE", "currencyType": "VIRTUAL", "discountAmount": 41, "discountExpireAt": "1978-12-29T00:00:00Z", "discountPercentage": 65, "discountPurchaseAt": "1990-12-04T00:00:00Z", "discountedPrice": 87, "expireAt": "1996-03-26T00:00:00Z", "price": 39, "purchaseAt": "1985-06-28T00:00:00Z", "trialPrice": 24}, {"currencyCode": "1qu5u5sGu7Gdoerr", "currencyNamespace": "yjDf0kYZklLa7OiS", "currencyType": "VIRTUAL", "discountAmount": 6, "discountExpireAt": "1994-01-13T00:00:00Z", "discountPercentage": 11, "discountPurchaseAt": "1985-05-15T00:00:00Z", "discountedPrice": 38, "expireAt": "1975-05-17T00:00:00Z", "price": 0, "purchaseAt": "1975-10-13T00:00:00Z", "trialPrice": 64}, {"currencyCode": "WgQ2BTit8I4HSOss", "currencyNamespace": "EiprZoR9DdN9XXTe", "currencyType": "VIRTUAL", "discountAmount": 14, "discountExpireAt": "1991-04-05T00:00:00Z", "discountPercentage": 21, "discountPurchaseAt": "1993-11-21T00:00:00Z", "discountedPrice": 82, "expireAt": "1977-01-08T00:00:00Z", "price": 52, "purchaseAt": "1994-12-20T00:00:00Z", "trialPrice": 84}]}}]}' \
    > test.out 2>&1
eval_tap $? 130 'BulkUpdateRegionData' test.out

#- 131 SearchItems
samples/cli/sample-apps Platform searchItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --itemType 'SUBSCRIPTION' \
    --limit '34' \
    --offset '42' \
    --sortBy 'DL4QwVcrcAzll45r' \
    --storeId 'eSrjmK6uwkeb0cVb' \
    --keyword 'dB6SV1hvlfVLKhTj' \
    --language 'PgEhwKXjVzAXhlDS' \
    > test.out 2>&1
eval_tap $? 131 'SearchItems' test.out

#- 132 QueryUncategorizedItems
samples/cli/sample-apps Platform queryUncategorizedItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --limit '31' \
    --offset '63' \
    --sortBy '["createdAt:asc", "name", "createdAt"]' \
    --storeId 'W7vJhpY1k9VHXNrH' \
    > test.out 2>&1
eval_tap $? 132 'QueryUncategorizedItems' test.out

#- 133 GetItem
samples/cli/sample-apps Platform getItem \
    --itemId 'qZdSozhTMVFmlEy2' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'de3Tmss5mGq2KUb4' \
    > test.out 2>&1
eval_tap $? 133 'GetItem' test.out

#- 134 UpdateItem
samples/cli/sample-apps Platform updateItem \
    --itemId 'zlRSWRl2HdlJpp5p' \
    --namespace $AB_NAMESPACE \
    --storeId 'Q0Bb8TliXrMJFSqJ' \
    --body '{"appId": "OtFAvEIrNAkGIKfk", "appType": "DEMO", "baseAppId": "JfiXOToXySzlewgj", "boothName": "aylMKkhGsqTFxpfU", "categoryPath": "haSMOwZU5QknjATI", "clazz": "mJBQee0DK3DhcUJm", "displayOrder": 88, "entitlementType": "DURABLE", "ext": {"WRStwwflUeqecMiz": {}, "dLKMSKWrflwLZirz": {}, "2zDrRU5xoyU2Xb4f": {}}, "features": ["vKaeMg0jlEOxCTL2", "HeSuPZUALwbbUY5r", "bhk2GHxTCi673RVb"], "flexible": true, "images": [{"as": "xOLChPEpDAXsGmCY", "caption": "BcGJIKfJ2Xh7lY8m", "height": 88, "imageUrl": "mNankEMvbeWcPm9O", "smallImageUrl": "3fnTdB2Rkfu181dk", "width": 90}, {"as": "B6cRdVEd4ZTU9qea", "caption": "uTume9bEmEr2uLsH", "height": 56, "imageUrl": "96YLYDUJY4fGiEnY", "smallImageUrl": "SPd67PKfyFp0LygR", "width": 63}, {"as": "TnWD8PPU3kTJCnzj", "caption": "fV4ilcFNKQ7aGxeI", "height": 83, "imageUrl": "dNZPTnXgn5j3q2ZJ", "smallImageUrl": "TieFijgqDQAFqIuI", "width": 60}], "inventoryConfig": {"customAttributes": {"W7dY3vPud95EM45c": {}, "H8bWr6CnXhJBcoAg": {}, "xGbgqe2o37NR44of": {}}, "serverCustomAttributes": {"uqzHXZ4DQIQV2yZZ": {}, "q1FdIDBsEL5cRlf2": {}, "E66aZ9CrMeY8ZGD1": {}}, "slotUsed": 96}, "itemIds": ["sYDLBDCKD974lO6R", "nKWoewNZYnVv1XfD", "fLuO0hWrKu5cuAeO"], "itemQty": {"SXuAOuXrLcpMFHdh": 11, "yq1OV5gdVk43U0R7": 82, "ieiruOpRx7zHuAYO": 75}, "itemType": "COINS", "listable": true, "localizations": {"6933iWNDk6zBpnZc": {"description": "tZJg5PXE5HYS7JF0", "localExt": {"kzT7rwuQHgq6Hcuc": {}, "1GMGw0YZ4IM1szrr": {}, "drJ9hJ2ZyyZ3T0f3": {}}, "longDescription": "i6axlzzj2jeQvsPK", "title": "CB08dhjXoObLtTud"}, "qlkWZoAfrPm3pof2": {"description": "V2dJT5YcbQKpnL4i", "localExt": {"VWJnDpTxg9v7AxNY": {}, "OM7KvpuXRrZc7pTG": {}, "CFWo47WhXGPk0enr": {}}, "longDescription": "dsQ04luiIDTyvz3l", "title": "oximdlQ7oldkJS3K"}, "XjtI3UrODr6RzDPd": {"description": "qaXRMkQkBUpWLgSt", "localExt": {"B19LUhYlgHTNoNoq": {}, "xbmV3JZEg8R5c53v": {}, "tmwZxRZo2STIpepn": {}}, "longDescription": "i273bvoTuNrAipX1", "title": "643rLhv5DXHMdXo8"}}, "lootBoxConfig": {"rewardCount": 52, "rewards": [{"lootBoxItems": [{"count": 18, "duration": 18, "endDate": "1978-08-16T00:00:00Z", "itemId": "Dvfjn7b2WPqgd8Tu", "itemSku": "G4hCDpyR9wYYQIk8", "itemType": "17VdJCqbYkGYEuls"}, {"count": 27, "duration": 54, "endDate": "1977-05-06T00:00:00Z", "itemId": "MdtMR2ecmWI3woj1", "itemSku": "XCNzIDARfI7ixhpJ", "itemType": "WOAv66ZWEjGpTUet"}, {"count": 74, "duration": 42, "endDate": "1983-03-12T00:00:00Z", "itemId": "Qqr50ZlU2ZlEtsTx", "itemSku": "fLLeKRbih4tlXXrr", "itemType": "dpeZXV1VbTuXCM6u"}], "name": "MdufUIYT7hufsXUW", "odds": 0.7709819525369286, "type": "REWARD_GROUP", "weight": 63}, {"lootBoxItems": [{"count": 37, "duration": 67, "endDate": "1986-11-26T00:00:00Z", "itemId": "Mo4uENdylRd7pnv5", "itemSku": "8VgNxln2jiNFrQ0i", "itemType": "IIZm6ysHT8wLKGt0"}, {"count": 30, "duration": 48, "endDate": "1996-07-13T00:00:00Z", "itemId": "9FNWbYFNhEUuiApJ", "itemSku": "f8maRUWySYdB6W2o", "itemType": "BBk0JAaqAqoCkX0y"}, {"count": 55, "duration": 42, "endDate": "1977-09-20T00:00:00Z", "itemId": "cJV6tdFiqnmBkT46", "itemSku": "8Wo7YnbYImMPiHdU", "itemType": "sg99wq9TDn3vUPcV"}], "name": "zJSgLPKAQm463aeK", "odds": 0.14434458270586947, "type": "REWARD_GROUP", "weight": 25}, {"lootBoxItems": [{"count": 42, "duration": 47, "endDate": "1995-05-21T00:00:00Z", "itemId": "sCa7u22YTo1jVF7Y", "itemSku": "LwMf91GGigWjOeTm", "itemType": "v6rlJPHbEPvTerZ8"}, {"count": 51, "duration": 56, "endDate": "1985-07-21T00:00:00Z", "itemId": "C01aJpk8gUs1wF55", "itemSku": "TZOOsdb37KypZFE3", "itemType": "EZiwRyQAmidkr0BV"}, {"count": 81, "duration": 7, "endDate": "1991-04-20T00:00:00Z", "itemId": "KdptNP4w6hFyY303", "itemSku": "Px6QsFX3T0kzz7yC", "itemType": "PGbXtJuLJFpAoufi"}], "name": "kDCoRufNeOncdR1O", "odds": 0.9505562849017558, "type": "REWARD", "weight": 47}], "rollFunction": "CUSTOM"}, "maxCount": 100, "maxCountPerUser": 43, "name": "785nBKzWkeeFQ0et", "optionBoxConfig": {"boxItems": [{"count": 72, "duration": 2, "endDate": "1975-06-09T00:00:00Z", "itemId": "LB9Jb9noevHncTNQ", "itemSku": "yYdr1IwGwqXZJLV8", "itemType": "m9OsWnSnLlAdAvTJ"}, {"count": 88, "duration": 60, "endDate": "1997-10-12T00:00:00Z", "itemId": "zmzEQf6h8thedL7Y", "itemSku": "OyR5zqjJpA6IKMoG", "itemType": "vXAkiITV4OhjTqNQ"}, {"count": 68, "duration": 65, "endDate": "1975-06-22T00:00:00Z", "itemId": "zCzKxpZl8ICxBXMz", "itemSku": "WYhYA5WslsyhNurW", "itemType": "fmxh8Sj7r7OSwn56"}]}, "purchasable": true, "recurring": {"cycle": "QUARTERLY", "fixedFreeDays": 27, "fixedTrialCycles": 56, "graceDays": 73}, "regionData": {"NIxKtHNbVgNn4Mlt": [{"currencyCode": "D4Y3FqeAMJJ4kToN", "currencyNamespace": "mqdyeKXDZpHYkiwY", "currencyType": "REAL", "discountAmount": 81, "discountExpireAt": "1978-05-17T00:00:00Z", "discountPercentage": 47, "discountPurchaseAt": "1971-06-21T00:00:00Z", "expireAt": "1991-09-08T00:00:00Z", "price": 67, "purchaseAt": "1978-05-10T00:00:00Z", "trialPrice": 63}, {"currencyCode": "x5L8rxx4RLxPjpyi", "currencyNamespace": "tnULov5EwpCUlhUc", "currencyType": "VIRTUAL", "discountAmount": 96, "discountExpireAt": "1990-08-24T00:00:00Z", "discountPercentage": 93, "discountPurchaseAt": "1992-02-10T00:00:00Z", "expireAt": "1973-02-07T00:00:00Z", "price": 87, "purchaseAt": "1993-09-11T00:00:00Z", "trialPrice": 21}, {"currencyCode": "ZPXcuYBkug0CUMUD", "currencyNamespace": "SsyQiZ4D62qOdl1C", "currencyType": "REAL", "discountAmount": 36, "discountExpireAt": "1994-01-17T00:00:00Z", "discountPercentage": 51, "discountPurchaseAt": "1984-09-26T00:00:00Z", "expireAt": "1973-05-19T00:00:00Z", "price": 85, "purchaseAt": "1995-01-14T00:00:00Z", "trialPrice": 56}], "rxnw6Ty4C2EP0ISv": [{"currencyCode": "NXB6yJOzJUPwY4xd", "currencyNamespace": "UdRKSWQN3D9chQqL", "currencyType": "VIRTUAL", "discountAmount": 73, "discountExpireAt": "1973-03-01T00:00:00Z", "discountPercentage": 35, "discountPurchaseAt": "1998-04-16T00:00:00Z", "expireAt": "1987-08-03T00:00:00Z", "price": 73, "purchaseAt": "1998-11-27T00:00:00Z", "trialPrice": 61}, {"currencyCode": "8MkOzlpOSLcN0wq5", "currencyNamespace": "YBCdvTZoSYyyU6Zs", "currencyType": "VIRTUAL", "discountAmount": 62, "discountExpireAt": "1984-02-05T00:00:00Z", "discountPercentage": 6, "discountPurchaseAt": "1971-04-01T00:00:00Z", "expireAt": "1987-03-25T00:00:00Z", "price": 9, "purchaseAt": "1981-11-15T00:00:00Z", "trialPrice": 63}, {"currencyCode": "tNXbb76VwoFbn9x0", "currencyNamespace": "LF088ETtDWtfogMW", "currencyType": "REAL", "discountAmount": 86, "discountExpireAt": "1987-08-05T00:00:00Z", "discountPercentage": 87, "discountPurchaseAt": "1981-03-22T00:00:00Z", "expireAt": "1993-11-12T00:00:00Z", "price": 33, "purchaseAt": "1997-02-05T00:00:00Z", "trialPrice": 23}], "i1sze00JjPIq9lFN": [{"currencyCode": "vOVUGFgbbBGwb09y", "currencyNamespace": "2mz44pZZt5vMGB1r", "currencyType": "VIRTUAL", "discountAmount": 21, "discountExpireAt": "1994-01-29T00:00:00Z", "discountPercentage": 56, "discountPurchaseAt": "1979-02-07T00:00:00Z", "expireAt": "1992-11-28T00:00:00Z", "price": 79, "purchaseAt": "1984-03-11T00:00:00Z", "trialPrice": 8}, {"currencyCode": "We8HcqzmjSFfZJ6y", "currencyNamespace": "jvOdOHoBqyfww9Q8", "currencyType": "REAL", "discountAmount": 88, "discountExpireAt": "1999-12-14T00:00:00Z", "discountPercentage": 56, "discountPurchaseAt": "1993-05-03T00:00:00Z", "expireAt": "1994-06-26T00:00:00Z", "price": 92, "purchaseAt": "1992-12-17T00:00:00Z", "trialPrice": 47}, {"currencyCode": "dtfJDFsKrYtvBBYE", "currencyNamespace": "WGyuaG3aAomYEksQ", "currencyType": "VIRTUAL", "discountAmount": 8, "discountExpireAt": "1983-08-14T00:00:00Z", "discountPercentage": 97, "discountPurchaseAt": "1975-05-16T00:00:00Z", "expireAt": "1976-11-29T00:00:00Z", "price": 45, "purchaseAt": "1972-02-09T00:00:00Z", "trialPrice": 59}]}, "saleConfig": {"currencyCode": "nZL0OLJ0pxuBPeB4", "price": 65}, "seasonType": "TIER", "sectionExclusive": false, "sellable": true, "sku": "ph5rpqVF8AuBNyVS", "stackable": false, "status": "ACTIVE", "tags": ["Kj3WPG7CF8OStagt", "p07aacYEGb8PF6OE", "WNJiXWNUGpEm69kQ"], "targetCurrencyCode": "0U6nHHKMNEkuMSUJ", "targetNamespace": "0i5VtQsN1K275U6n", "thumbnailUrl": "tCxektsD7Qr2tStv", "useCount": 77}' \
    > test.out 2>&1
eval_tap $? 134 'UpdateItem' test.out

#- 135 DeleteItem
samples/cli/sample-apps Platform deleteItem \
    --itemId 'd7EuX5g6DZE195rp' \
    --namespace $AB_NAMESPACE \
    --featuresToCheck '["CATALOG", "IAP", "CATALOG"]' \
    --force 'false' \
    --storeId 'eNbOC5EUQfIZdJYK' \
    > test.out 2>&1
eval_tap $? 135 'DeleteItem' test.out

#- 136 AcquireItem
samples/cli/sample-apps Platform acquireItem \
    --itemId 'cJ7GPZ6o4LFo10Bw' \
    --namespace $AB_NAMESPACE \
    --body '{"count": 58, "orderNo": "upxQDrU3BmUBSmj2"}' \
    > test.out 2>&1
eval_tap $? 136 'AcquireItem' test.out

#- 137 GetApp
samples/cli/sample-apps Platform getApp \
    --itemId 'LtfLn6BImZZ1nstc' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'FmpeL9MNddbEaofT' \
    > test.out 2>&1
eval_tap $? 137 'GetApp' test.out

#- 138 UpdateApp
samples/cli/sample-apps Platform updateApp \
    --itemId 'JVwM0a8EBfpWrooS' \
    --namespace $AB_NAMESPACE \
    --storeId '8QygHySHy35Zfxs4' \
    --body '{"carousel": [{"alt": "vzawFVxKOIpLof5i", "previewUrl": "oA149GhKm4GzHgEu", "thumbnailUrl": "gm7WHjheXYob5gVC", "type": "video", "url": "3N4qs1N2X9kUDIJT", "videoSource": "youtube"}, {"alt": "v6tSTjEnpyUMSPiR", "previewUrl": "DdY32y9ZpE9q9NTd", "thumbnailUrl": "VKvQ8C44z0VYzSZH", "type": "video", "url": "QxW84Ro3AbfJQHKa", "videoSource": "generic"}, {"alt": "X074uBR5GNy6fx8C", "previewUrl": "XJeU68ZmIkgjnGNj", "thumbnailUrl": "cIuSf1lwmnSL8HaK", "type": "image", "url": "fxfp59PdVvabnGzb", "videoSource": "youtube"}], "developer": "5YRTiONplMKAwKyk", "forumUrl": "OHq0RxRU1PgUsKqS", "genres": ["Adventure", "Casual", "Indie"], "localizations": {"4vHY9y1B7yu5R9DY": {"announcement": "R711svE0ojKRxFTQ", "slogan": "9XCffJVPGA1DMric"}, "3Ap7XF2V6nUuKaRI": {"announcement": "nEmhphh1N8XUDeZw", "slogan": "CIlJxN8ELYPrOuy5"}, "lelbBzituh1sUoSG": {"announcement": "3sDCiTSqMqi79Hmc", "slogan": "z21RpflgPOBczPQj"}}, "platformRequirements": {"Mbp9lMyELBWp1glB": [{"additionals": "wbkPYO6S3FLffkry", "directXVersion": "ayBjOZhN9ZcS7Bz0", "diskSpace": "1edXbeLq1qCvPoJ3", "graphics": "kcUKBSHQyfZXMCiF", "label": "B0qIDsD5doFhPZpU", "osVersion": "LNNmyX9ACsTItEk7", "processor": "zu95euKadxnrA9x7", "ram": "T7aXo5UnNc5kPMrF", "soundCard": "61tD3Gr9AgKFT58F"}, {"additionals": "eZ3yKOtNSle3aGry", "directXVersion": "BDEXyct8Aatft6CE", "diskSpace": "vDwHh1LtyWJixJQO", "graphics": "F04zD3zWO5jn1QKh", "label": "t7V7vaq2HuhtYVb1", "osVersion": "2mrZynp4kgD8F7BF", "processor": "7seVzwAzUrawloTA", "ram": "ja3pCrImisHhzz5C", "soundCard": "lyjJ68hlvdFkWGUx"}, {"additionals": "ryBe4H4ePRMJSLdR", "directXVersion": "CVLTwQaJaCkeR166", "diskSpace": "DymF5NYr6cKjDFAT", "graphics": "tFQMn6mR5IoIXnEh", "label": "kDZKzJjybAbUxJ14", "osVersion": "yNML9CFKUDg393dU", "processor": "MHClC39jz5HSL60B", "ram": "bB3J5RmyBKMxgQdx", "soundCard": "QHy7IxkBpA8qUoz6"}], "VBb3y88H1KpdvdcK": [{"additionals": "zCVwZFoAUGO5vtLE", "directXVersion": "cfUDQvXfklfaFicg", "diskSpace": "DiM4jcyd2ClHC4M2", "graphics": "52y9qumLAkbwk3Za", "label": "bUVvQYYsWdrsZ1Jj", "osVersion": "Q8do8TXaQfFu1YvV", "processor": "Ku6xuhhXzEvzsNT0", "ram": "6eflLBPkYOByhkkF", "soundCard": "zcNdIASxVxUGYRiz"}, {"additionals": "whrpmiINIygEJo7l", "directXVersion": "Aj7oQgCAm5zmbGX1", "diskSpace": "NDdbDs5oJXg1e6RW", "graphics": "3dYxAJ6jcy6eV0PT", "label": "icaxwx5nfgdoApbn", "osVersion": "YzJOjtvin1ICjnuy", "processor": "r4bbro8zMAqmuLKw", "ram": "2p2Eb8ShmpDOpfvC", "soundCard": "4sr1VlrjloP4X8Mn"}, {"additionals": "Qd6pPVXvtziBLgkI", "directXVersion": "kyNakizeNO0Ysi1Y", "diskSpace": "vRMl9H6fAXMXKhvr", "graphics": "wHxMnZbOQmJKHuBM", "label": "NWRchJjGpA1iJYng", "osVersion": "IeQPwEBy7dpPICNf", "processor": "PAfqLMI4LbL6KgeR", "ram": "AhEHvM64QmdcZsFA", "soundCard": "Qs53Q6SfboHCZX1p"}], "MKI25yahteLyv5tn": [{"additionals": "93BjePETbQPHUGkW", "directXVersion": "M5ZFsR9vyci6FVLh", "diskSpace": "fWbocz5FKHnqZTcP", "graphics": "XxygD1PsbmQMEstu", "label": "B4jgwRUrbqbfTAWc", "osVersion": "W317PiEypzgpcefp", "processor": "Y9q7FbgkGrWd2UDO", "ram": "B7utQNrgNRFsXKNo", "soundCard": "6qisem0x5AUmDfkH"}, {"additionals": "swHcuCa4cdQMfehh", "directXVersion": "C5K2uragkCXEbvFl", "diskSpace": "EKuuumpwHoU2MCRm", "graphics": "LzKcWzBiq0veacit", "label": "JL2p3JRHylB2EXjr", "osVersion": "3t5sznyTQnAxTNsE", "processor": "JVyOSkZIdvElrL3a", "ram": "TdmejGUy23lBWiFW", "soundCard": "1IPe4J6onP5WTXMO"}, {"additionals": "dhLHLGrCdezgKKiy", "directXVersion": "HMkr69pq0hHu8lmP", "diskSpace": "atVxcZ1WXcj2Te2R", "graphics": "CvyNd77OIKh16jbr", "label": "B6zWCwc9ovXvyW2W", "osVersion": "kN12fasHFOWo75I7", "processor": "l6aJq2Nq7OoefpaL", "ram": "nplL2teIVWF17vUd", "soundCard": "puGzqPAzMC6yyAmA"}]}, "platforms": ["Windows", "MacOS", "MacOS"], "players": ["Single", "Multi", "CrossPlatformMulti"], "primaryGenre": "Sports", "publisher": "5RaQ2FHeAHXivbtI", "releaseDate": "1985-01-09T00:00:00Z", "websiteUrl": "fwTiK0EQkGWqDLvE"}' \
    > test.out 2>&1
eval_tap $? 138 'UpdateApp' test.out

#- 139 DisableItem
samples/cli/sample-apps Platform disableItem \
    --itemId 'BBGWWj7LWHeypimb' \
    --namespace $AB_NAMESPACE \
    --storeId 'lO7Y3veJ5ju2NwYF' \
    --body '{"featuresToCheck": ["DLC", "IAP", "REWARD"]}' \
    > test.out 2>&1
eval_tap $? 139 'DisableItem' test.out

#- 140 GetItemDynamicData
samples/cli/sample-apps Platform getItemDynamicData \
    --itemId 'zz4Gej9DRbb5fJZp' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 140 'GetItemDynamicData' test.out

#- 141 EnableItem
samples/cli/sample-apps Platform enableItem \
    --itemId '0MK1PGDCzdWROrN0' \
    --namespace $AB_NAMESPACE \
    --storeId 'Vm9dY0blPfRDgIPv' \
    > test.out 2>&1
eval_tap $? 141 'EnableItem' test.out

#- 142 FeatureItem
samples/cli/sample-apps Platform featureItem \
    --feature 'z0JZwPE3J3IZ42vn' \
    --itemId '0JSLrJyPa6hNsnip' \
    --namespace $AB_NAMESPACE \
    --storeId '0ynNXFjDv0eMB9tV' \
    > test.out 2>&1
eval_tap $? 142 'FeatureItem' test.out

#- 143 DefeatureItem
samples/cli/sample-apps Platform defeatureItem \
    --feature 'gj6AymdplGVSgT5W' \
    --itemId '9LG9vtfjZL3ckMDI' \
    --namespace $AB_NAMESPACE \
    --storeId 'lNtHexVvr3DYKHDH' \
    > test.out 2>&1
eval_tap $? 143 'DefeatureItem' test.out

#- 144 GetLocaleItem
samples/cli/sample-apps Platform getLocaleItem \
    --itemId 'Cei0QbrqyPzjsak6' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --language 'NgYlKFFi9jZVuUhG' \
    --populateBundle 'false' \
    --region 'hVafhRgLtI9tlEiD' \
    --storeId 'H7CT2r6V9OSgxmLN' \
    > test.out 2>&1
eval_tap $? 144 'GetLocaleItem' test.out

#- 145 UpdateItemPurchaseCondition
samples/cli/sample-apps Platform updateItemPurchaseCondition \
    --itemId '6SIjQLRkTCsKEVAD' \
    --namespace $AB_NAMESPACE \
    --storeId 'O5uugCNCEVxFQKj7' \
    --body '{"purchaseCondition": {"conditionGroups": [{"operator": "or", "predicates": [{"anyOf": 68, "code": "hqgUYgD9UP3Z9wkQ", "comparison": "is", "name": "NCAaWWPJS9Ef0Omq", "predicateType": "EntitlementPredicate", "value": "bF5CennnXaJfrroE", "values": ["Ucg8svziHrMAvZ6d", "rmJAojZvtgfJvUSd", "aXv8BNbSaBQs3E0Y"]}, {"anyOf": 0, "code": "fB4TQfKYBuKrJwfk", "comparison": "isLessThan", "name": "Xj87Reh0byk5vM3d", "predicateType": "SeasonTierPredicate", "value": "HmHCQBHSZPH616Sg", "values": ["NaCOkyW3l4bvMvTG", "OCQp9vxxpWdvyuKh", "U28wJ4tr3eySew0D"]}, {"anyOf": 88, "code": "cnOXjKO9G63uajoY", "comparison": "isGreaterThan", "name": "UnubzFew0lG9osvW", "predicateType": "SeasonPassPredicate", "value": "4a4jeJIkIcOv8ChU", "values": ["94IjLeaE6Wa08iMy", "dx5f1lQp4VtmSWlp", "mNQTCLuGQtbr258K"]}]}, {"operator": "or", "predicates": [{"anyOf": 32, "code": "8GixLBh07eZYhYVS", "comparison": "isLessThan", "name": "VtKS9J9oliicoTTf", "predicateType": "EntitlementPredicate", "value": "zZSsEPzGx7Fiam5w", "values": ["9eo8BuQnCnT3VETz", "CsODgETaTMU5y1Er", "k7M3MnNVYNJOidQs"]}, {"anyOf": 0, "code": "fYlHajP7rTJ5N1be", "comparison": "is", "name": "DgeQO3q7yzEb5n55", "predicateType": "EntitlementPredicate", "value": "LPodXLJIUjYUX8zj", "values": ["d3wQm2xTih9lF1Ka", "nkwtjevOfUxwgzZz", "BJuVcITSgmNIkWml"]}, {"anyOf": 15, "code": "OVV5LlZqMDi2NQcz", "comparison": "isNot", "name": "4Da6RQjgrtM6ewEj", "predicateType": "SeasonPassPredicate", "value": "S9gyIA5nLI9202mZ", "values": ["zZEgvZvDvjAFb59c", "fN5ZdpkIv4gjnxNl", "selZPsB3rDDXb64g"]}]}, {"operator": "or", "predicates": [{"anyOf": 91, "code": "UgNaC5STIwJkfdnq", "comparison": "excludes", "name": "9I6PVXZMUgULQkH2", "predicateType": "StatisticCodePredicate", "value": "ml80Awb8TjOAw1td", "values": ["ZpXV9GF4TVc0yOt0", "BdKWRX7DqKVIynOY", "M69nW6kC93NAnnow"]}, {"anyOf": 62, "code": "15AubSsKFT3kump3", "comparison": "isGreaterThanOrEqual", "name": "NenPIrsIHN5VIZmA", "predicateType": "SeasonTierPredicate", "value": "bWoivZ2Pk9rA54e3", "values": ["jRRtK5XIGuJYCStM", "I24EaKRiJl379393", "f0vxLt6fSbHRy4Wz"]}, {"anyOf": 72, "code": "d3rwgM0eaeyiO5Fh", "comparison": "excludes", "name": "B90X0hwW2gujUCPY", "predicateType": "SeasonPassPredicate", "value": "BCrU7opcfKle8sb2", "values": ["h4odTmxaJebIPCT1", "pqlHLXHoqwQJ0sIq", "5rbkyK1r6YsNiGjf"]}]}]}}' \
    > test.out 2>&1
eval_tap $? 145 'UpdateItemPurchaseCondition' test.out

#- 146 QueryItemReferences
samples/cli/sample-apps Platform queryItemReferences \
    --itemId 'NOiYnIZgBrANwz0g' \
    --namespace $AB_NAMESPACE \
    --featuresToCheck '["DLC", "IAP", "CATALOG"]' \
    --storeId 'bBV1oAuEDeFebBkZ' \
    > test.out 2>&1
eval_tap $? 146 'QueryItemReferences' test.out

#- 147 ReturnItem
samples/cli/sample-apps Platform returnItem \
    --itemId 'Iw0swr4MZgUPJhGz' \
    --namespace $AB_NAMESPACE \
    --body '{"orderNo": "6u5wj7nk92LnSrYj"}' \
    > test.out 2>&1
eval_tap $? 147 'ReturnItem' test.out

#- 148 QueryKeyGroups
samples/cli/sample-apps Platform queryKeyGroups \
    --namespace $AB_NAMESPACE \
    --limit '19' \
    --name 'TFqcRE14rBXzu4ep' \
    --offset '64' \
    --tag 'y9NEE7YOqcnmK1iR' \
    > test.out 2>&1
eval_tap $? 148 'QueryKeyGroups' test.out

#- 149 CreateKeyGroup
samples/cli/sample-apps Platform createKeyGroup \
    --namespace $AB_NAMESPACE \
    --body '{"description": "oOyVgmArT22MK1W6", "name": "jLnuZlwofotFDnFy", "status": "ACTIVE", "tags": ["7epPkKuCEoywobWR", "d8Y5N0kGaSXBGGMU", "qKWwBv0Cxgje6w7R"]}' \
    > test.out 2>&1
eval_tap $? 149 'CreateKeyGroup' test.out

#- 150 GetKeyGroupByBoothName
eval_tap 0 150 'GetKeyGroupByBoothName # SKIP deprecated' test.out

#- 151 GetKeyGroup
samples/cli/sample-apps Platform getKeyGroup \
    --keyGroupId 'YBRZbA1fQoP8UH6N' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 151 'GetKeyGroup' test.out

#- 152 UpdateKeyGroup
samples/cli/sample-apps Platform updateKeyGroup \
    --keyGroupId 'HUOhQUPrjbZCv3Zf' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "nASmhkTFS1qeHmxu", "name": "tEaN37uAXCvcrRay", "status": "ACTIVE", "tags": ["3lE0nt942NVPEUdK", "tMXmGu7xI76Yo60f", "x6Jq47CWRHX7aN77"]}' \
    > test.out 2>&1
eval_tap $? 152 'UpdateKeyGroup' test.out

#- 153 GetKeyGroupDynamic
samples/cli/sample-apps Platform getKeyGroupDynamic \
    --keyGroupId 'QPFwDT1A0vySIIFy' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 153 'GetKeyGroupDynamic' test.out

#- 154 ListKeys
samples/cli/sample-apps Platform listKeys \
    --keyGroupId 'x3IqihGvv8FcG54V' \
    --namespace $AB_NAMESPACE \
    --limit '0' \
    --offset '24' \
    --status 'ACQUIRED' \
    > test.out 2>&1
eval_tap $? 154 'ListKeys' test.out

#- 155 UploadKeys
samples/cli/sample-apps Platform uploadKeys \
    --keyGroupId 'NDCOSvunwGolIVGB' \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 155 'UploadKeys' test.out

#- 156 QueryOrders
samples/cli/sample-apps Platform queryOrders \
    --namespace $AB_NAMESPACE \
    --endTime 'kiN9LM85e7LapCJ2' \
    --limit '85' \
    --offset '19' \
    --orderNos '["czfWkrmei0lSQLFG", "xAV9JdpiBcD1t634", "bF1GkzQ3ETcUepyY"]' \
    --sortBy 'Pvh8WC7EVC7HCtxg' \
    --startTime '0WAkb2P4ApIIuOpY' \
    --status 'REFUNDING' \
    --withTotal 'false' \
    > test.out 2>&1
eval_tap $? 156 'QueryOrders' test.out

#- 157 GetOrderStatistics
samples/cli/sample-apps Platform getOrderStatistics \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 157 'GetOrderStatistics' test.out

#- 158 GetOrder
samples/cli/sample-apps Platform getOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'xfS5LRS4rinDq02Y' \
    > test.out 2>&1
eval_tap $? 158 'GetOrder' test.out

#- 159 RefundOrder
samples/cli/sample-apps Platform refundOrder \
    --namespace $AB_NAMESPACE \
    --orderNo '3kD3EiY0H0Qw6ZGK' \
    --body '{"description": "DOCfR4N2bk9R0Qtz"}' \
    > test.out 2>&1
eval_tap $? 159 'RefundOrder' test.out

#- 160 GetPaymentCallbackConfig
eval_tap 0 160 'GetPaymentCallbackConfig # SKIP deprecated' test.out

#- 161 UpdatePaymentCallbackConfig
eval_tap 0 161 'UpdatePaymentCallbackConfig # SKIP deprecated' test.out

#- 162 GetPaymentMerchantConfig
samples/cli/sample-apps Platform getPaymentMerchantConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 162 'GetPaymentMerchantConfig' test.out

#- 163 UpdatePaymentDomainWhitelistConfig
samples/cli/sample-apps Platform updatePaymentDomainWhitelistConfig \
    --namespace $AB_NAMESPACE \
    --body '{"domains": ["bY1vhoi8clpprtRT", "1wsv6bQ32jTmLnXu", "j8mwRGaGlC2hlWRj"]}' \
    > test.out 2>&1
eval_tap $? 163 'UpdatePaymentDomainWhitelistConfig' test.out

#- 164 QueryPaymentNotifications
samples/cli/sample-apps Platform queryPaymentNotifications \
    --namespace $AB_NAMESPACE \
    --endDate 'zi3z7Azq7dRX6eIV' \
    --externalId '5kxrskyg0oTQ7T8A' \
    --limit '36' \
    --notificationSource 'PAYPAL' \
    --notificationType 'AeAngB8bFNIcECex' \
    --offset '43' \
    --paymentOrderNo '4XZdnyBGQe2KKMh4' \
    --startDate 'ptmiSk4hl5UoyDZG' \
    --status 'IGNORED' \
    > test.out 2>&1
eval_tap $? 164 'QueryPaymentNotifications' test.out

#- 165 QueryPaymentOrders
samples/cli/sample-apps Platform queryPaymentOrders \
    --namespace $AB_NAMESPACE \
    --channel 'INTERNAL' \
    --extTxId 'ELx1QA2ApjzHaO5x' \
    --limit '81' \
    --offset '62' \
    --status 'NOTIFICATION_OF_CHARGEBACK' \
    > test.out 2>&1
eval_tap $? 165 'QueryPaymentOrders' test.out

#- 166 CreatePaymentOrderByDedicated
samples/cli/sample-apps Platform createPaymentOrderByDedicated \
    --namespace $AB_NAMESPACE \
    --body '{"currencyCode": "L8KhQl3xxEjX1Fem", "currencyNamespace": "UzGasf0C6xrCvT6S", "customParameters": {"M92Zo7FP4RqpxAPb": {}, "F378RHJxpG19MQFE": {}, "z9mvr9y5xhHItRBf": {}}, "description": "jYsl4d0QWUHchp5S", "extOrderNo": "kko9zROhdxqmDMpJ", "extUserId": "evMR9APNKlapn1am", "itemType": "SUBSCRIPTION", "language": "UY_HfyC_575", "metadata": {"2yUKAAFSPMt4Tmgf": "VUhllrOTdDg1gwUn", "wLQUMcR3nVocgTQu": "jyVUvVh7gwGfNRXM", "wBfpSRt2OZSIfIpg": "z2gROgzsramN3Tlp"}, "notifyUrl": "AFrzrZJbfT2Pqmte", "omitNotification": false, "platform": "1M3GdRtKMdOwdrn8", "price": 31, "recurringPaymentOrderNo": "1SXAMrAzrG0E4Cgr", "region": "ffYzuAeMKU82Y0LY", "returnUrl": "Rf0QHiaeiJHD8iJJ", "sandbox": true, "sku": "NKCuLqFemYPoUUEX", "subscriptionId": "w7Rh81SQAfOe9XUb", "targetNamespace": "gTfrxaeQTZvKfcVW", "targetUserId": "X2B86EODrObQgqNm", "title": "KhDOC4iMom5eUdLu"}' \
    > test.out 2>&1
eval_tap $? 166 'CreatePaymentOrderByDedicated' test.out

#- 167 ListExtOrderNoByExtTxId
samples/cli/sample-apps Platform listExtOrderNoByExtTxId \
    --namespace $AB_NAMESPACE \
    --extTxId 'NA3TKJQzUN3jB0Mz' \
    > test.out 2>&1
eval_tap $? 167 'ListExtOrderNoByExtTxId' test.out

#- 168 GetPaymentOrder
samples/cli/sample-apps Platform getPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'TmsbjJ81zCvUgMPV' \
    > test.out 2>&1
eval_tap $? 168 'GetPaymentOrder' test.out

#- 169 ChargePaymentOrder
samples/cli/sample-apps Platform chargePaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'UjTlkv9lZHRcs05i' \
    --body '{"extTxId": "yw8xMx4gzGK7KOVp", "paymentMethod": "0Khwtg8lNxM2cymM", "paymentProvider": "STRIPE"}' \
    > test.out 2>&1
eval_tap $? 169 'ChargePaymentOrder' test.out

#- 170 RefundPaymentOrderByDedicated
samples/cli/sample-apps Platform refundPaymentOrderByDedicated \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'zP5Qb7r4i2ZDjTgx' \
    --body '{"description": "iwhMxsss0eqsoimc"}' \
    > test.out 2>&1
eval_tap $? 170 'RefundPaymentOrderByDedicated' test.out

#- 171 SimulatePaymentOrderNotification
samples/cli/sample-apps Platform simulatePaymentOrderNotification \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'K3ZMgjcMWuvP58lx' \
    --body '{"amount": 6, "currencyCode": "gY6bOjcqwoJuz44H", "notifyType": "CHARGE", "paymentProvider": "ALIPAY", "salesTax": 96, "vat": 53}' \
    > test.out 2>&1
eval_tap $? 171 'SimulatePaymentOrderNotification' test.out

#- 172 GetPaymentOrderChargeStatus
samples/cli/sample-apps Platform getPaymentOrderChargeStatus \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo '6qDSVlio2HEqDcF8' \
    > test.out 2>&1
eval_tap $? 172 'GetPaymentOrderChargeStatus' test.out

#- 173 GetPsnEntitlementOwnership
samples/cli/sample-apps Platform getPsnEntitlementOwnership \
    --entitlementLabel 'UslmIGeXlAWwtEIp' \
    --namespace $AB_NAMESPACE \
    --body '{"accessToken": "DUPXEsqkW9G6HHPq", "serviceLabel": 92}' \
    > test.out 2>&1
eval_tap $? 173 'GetPsnEntitlementOwnership' test.out

#- 174 GetXboxEntitlementOwnership
samples/cli/sample-apps Platform getXboxEntitlementOwnership \
    --namespace $AB_NAMESPACE \
    --productSku '8FEhZUYwUynA1M7i' \
    --body '{"delegationToken": "PGiZXrfMCSdhfBul", "sandboxId": "mliAtHCHMUXkCLX4"}' \
    > test.out 2>&1
eval_tap $? 174 'GetXboxEntitlementOwnership' test.out

#- 175 GetPlatformEntitlementConfig
samples/cli/sample-apps Platform getPlatformEntitlementConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Oculus' \
    > test.out 2>&1
eval_tap $? 175 'GetPlatformEntitlementConfig' test.out

#- 176 UpdatePlatformEntitlementConfig
samples/cli/sample-apps Platform updatePlatformEntitlementConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Steam' \
    --body '{"allowedPlatformOrigins": ["Oculus", "Playstation", "Steam"]}' \
    > test.out 2>&1
eval_tap $? 176 'UpdatePlatformEntitlementConfig' test.out

#- 177 GetPlatformWalletConfig
samples/cli/sample-apps Platform getPlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Xbox' \
    > test.out 2>&1
eval_tap $? 177 'GetPlatformWalletConfig' test.out

#- 178 UpdatePlatformWalletConfig
samples/cli/sample-apps Platform updatePlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Steam' \
    --body '{"allowedBalanceOrigins": ["Playstation", "Playstation", "System"]}' \
    > test.out 2>&1
eval_tap $? 178 'UpdatePlatformWalletConfig' test.out

#- 179 ResetPlatformWalletConfig
samples/cli/sample-apps Platform resetPlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Other' \
    > test.out 2>&1
eval_tap $? 179 'ResetPlatformWalletConfig' test.out

#- 180 GetRevocationConfig
samples/cli/sample-apps Platform getRevocationConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 180 'GetRevocationConfig' test.out

#- 181 UpdateRevocationConfig
samples/cli/sample-apps Platform updateRevocationConfig \
    --namespace $AB_NAMESPACE \
    --body '{"entitlement": {"consumable": {"enabled": false, "strategy": "CUSTOM"}, "durable": {"enabled": true, "strategy": "REVOKE_OR_REPORT"}}, "wallet": {"enabled": true, "strategy": "ALWAYS_REVOKE"}}' \
    > test.out 2>&1
eval_tap $? 181 'UpdateRevocationConfig' test.out

#- 182 DeleteRevocationConfig
samples/cli/sample-apps Platform deleteRevocationConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 182 'DeleteRevocationConfig' test.out

#- 183 QueryRevocationHistories
samples/cli/sample-apps Platform queryRevocationHistories \
    --namespace $AB_NAMESPACE \
    --endTime 'UvfO82ml02Ar2nbM' \
    --limit '93' \
    --offset '95' \
    --source 'OTHER' \
    --startTime 'SqHuYq1eeQbV1TkL' \
    --status 'FAIL' \
    --transactionId 'pWIRlYEDOAxGebh9' \
    --userId 'jgqRw02dMHZHbb9K' \
    > test.out 2>&1
eval_tap $? 183 'QueryRevocationHistories' test.out

#- 184 GetRevocationPluginConfig
samples/cli/sample-apps Platform getRevocationPluginConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 184 'GetRevocationPluginConfig' test.out

#- 185 UpdateRevocationPluginConfig
samples/cli/sample-apps Platform updateRevocationPluginConfig \
    --namespace $AB_NAMESPACE \
    --body '{"appConfig": {"appName": "uPKtWgl1D4rJYa1b"}, "customConfig": {"connectionType": "TLS", "grpcServerAddress": "p4py5jJLhyZtEPuX"}, "extendType": "APP"}' \
    > test.out 2>&1
eval_tap $? 185 'UpdateRevocationPluginConfig' test.out

#- 186 DeleteRevocationPluginConfig
samples/cli/sample-apps Platform deleteRevocationPluginConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 186 'DeleteRevocationPluginConfig' test.out

#- 187 UploadRevocationPluginConfigCert
samples/cli/sample-apps Platform uploadRevocationPluginConfigCert \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 187 'UploadRevocationPluginConfigCert' test.out

#- 188 CreateReward
samples/cli/sample-apps Platform createReward \
    --namespace $AB_NAMESPACE \
    --body '{"description": "MP3KMimbQFz4B8y4", "eventTopic": "8a91vqivJ4jhJMDL", "maxAwarded": 42, "maxAwardedPerUser": 54, "namespaceExpression": "iHrcaK3vnPkW4Xou", "rewardCode": "tF9aB4bslpkgxi2K", "rewardConditions": [{"condition": "QesyUYx8bfCTJ2jT", "conditionName": "JXaxeFlfJJ4LcYm7", "eventName": "8jg2jWaF5m5utXEz", "rewardItems": [{"duration": 9, "endDate": "1991-09-04T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "0hbDyXVKoLtOExDB", "quantity": 10, "sku": "mkj3K1eWTfPWKfVc"}, {"duration": 37, "endDate": "1992-09-27T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "yix1T8hXt5xwKcAM", "quantity": 25, "sku": "oUO896VGlXugcOnq"}, {"duration": 47, "endDate": "1975-06-30T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "5gfbr3vhr3vgA16Z", "quantity": 54, "sku": "Rx2aME1rEuKiToG1"}]}, {"condition": "UwRQ7IHS4NvLd3Ef", "conditionName": "7K2yOcWp1IupDWY9", "eventName": "nJ390gwMXAKoeHis", "rewardItems": [{"duration": 90, "endDate": "1994-08-13T00:00:00Z", "identityType": "ITEM_ID", "itemId": "hB7cOUvVMdcV9C8z", "quantity": 48, "sku": "TFupaBzAVekSakK7"}, {"duration": 4, "endDate": "1999-05-13T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "VYy6Tesc2NYQMAax", "quantity": 97, "sku": "x6xiZcgOwsZk9QQq"}, {"duration": 100, "endDate": "1993-02-14T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "E7xBR8EFBLvG0p1B", "quantity": 12, "sku": "lCIB96hEAuT5HOhs"}]}, {"condition": "HNchpLqaciukUiNt", "conditionName": "jn3s51qosMfvUpyB", "eventName": "gpasguDoJ68QHd4j", "rewardItems": [{"duration": 41, "endDate": "1979-07-12T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "8T5HFz5NL03thQ4v", "quantity": 50, "sku": "gGkBSYRhGavRwsX7"}, {"duration": 31, "endDate": "1977-04-13T00:00:00Z", "identityType": "ITEM_ID", "itemId": "gcqJeJBDaxCbnNVB", "quantity": 49, "sku": "MVNfbXICDJ62uN0K"}, {"duration": 98, "endDate": "1984-09-09T00:00:00Z", "identityType": "ITEM_ID", "itemId": "6DlBgv9WgKrL404E", "quantity": 78, "sku": "MS81Ghg1axPsMOWT"}]}], "userIdExpression": "PilkMLLSVlhkRxWO"}' \
    > test.out 2>&1
eval_tap $? 188 'CreateReward' test.out

#- 189 QueryRewards
samples/cli/sample-apps Platform queryRewards \
    --namespace $AB_NAMESPACE \
    --eventTopic 'SoQ6PeK1c9l7sfnY' \
    --limit '32' \
    --offset '47' \
    --sortBy '["namespace:asc", "namespace", "rewardCode:asc"]' \
    > test.out 2>&1
eval_tap $? 189 'QueryRewards' test.out

#- 190 ExportRewards
samples/cli/sample-apps Platform exportRewards \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 190 'ExportRewards' test.out

#- 191 ImportRewards
samples/cli/sample-apps Platform importRewards \
    --namespace $AB_NAMESPACE \
    --replaceExisting 'false' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 191 'ImportRewards' test.out

#- 192 GetReward
samples/cli/sample-apps Platform getReward \
    --namespace $AB_NAMESPACE \
    --rewardId 'IVEWJ812WIARwuwi' \
    > test.out 2>&1
eval_tap $? 192 'GetReward' test.out

#- 193 UpdateReward
samples/cli/sample-apps Platform updateReward \
    --namespace $AB_NAMESPACE \
    --rewardId 'rt9QRXEkwEYvksd7' \
    --body '{"description": "L6PiY4Q3vV44sk5v", "eventTopic": "ywXlznSzabY1PWzh", "maxAwarded": 4, "maxAwardedPerUser": 48, "namespaceExpression": "zMN6yvIOqFmdWvbq", "rewardCode": "woBpuXF7nwpw0dcv", "rewardConditions": [{"condition": "iIhOVxhzFIeqcAvL", "conditionName": "qKmLpvW8GFwCvoN3", "eventName": "poGaPxKcppCNoPjj", "rewardItems": [{"duration": 76, "endDate": "1979-12-02T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "2tl5HylcESr6GcXk", "quantity": 11, "sku": "RmVM3mCRZ1KjWPiM"}, {"duration": 57, "endDate": "1976-11-17T00:00:00Z", "identityType": "ITEM_ID", "itemId": "U0TXduAuyFDQ0HND", "quantity": 74, "sku": "Xbr3HUzKmmHOXckm"}, {"duration": 40, "endDate": "1993-10-28T00:00:00Z", "identityType": "ITEM_ID", "itemId": "m3kgpTtXaYouigi3", "quantity": 16, "sku": "pzaa0qFk3ic6ssrv"}]}, {"condition": "kqyPHpvNECkkJMg4", "conditionName": "XkceOfZMg7zOn4e6", "eventName": "PTgoBohGFDbABqEd", "rewardItems": [{"duration": 44, "endDate": "1998-02-09T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "1InPpbBg4OdL6qQW", "quantity": 79, "sku": "eJZsBWh0G7xFZu8F"}, {"duration": 39, "endDate": "1991-05-08T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "80cRCC0zsKmaiFul", "quantity": 0, "sku": "1nDvX57KEfCLmlm4"}, {"duration": 29, "endDate": "1988-08-21T00:00:00Z", "identityType": "ITEM_ID", "itemId": "QbBQzDiOwHHCGmxX", "quantity": 22, "sku": "6olSxFB45ctEagyP"}]}, {"condition": "haRvjOEPXsZKWs8U", "conditionName": "9KFzz5IJGScMWJFm", "eventName": "ZuxddYJL1hdM1cvR", "rewardItems": [{"duration": 98, "endDate": "1983-04-03T00:00:00Z", "identityType": "ITEM_ID", "itemId": "3YNrwZzQ2sIwIjk5", "quantity": 9, "sku": "NOx7PM3lIRJ0KPkJ"}, {"duration": 91, "endDate": "1994-04-18T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "2RbCLXGszfaX47R2", "quantity": 50, "sku": "122Jcxcxp2cfsSqw"}, {"duration": 6, "endDate": "1994-01-31T00:00:00Z", "identityType": "ITEM_ID", "itemId": "TgScsSQ53kgNc8JO", "quantity": 65, "sku": "chaeepVHUvQbbaNf"}]}], "userIdExpression": "x2ZkTOUM3MwjWJnL"}' \
    > test.out 2>&1
eval_tap $? 193 'UpdateReward' test.out

#- 194 DeleteReward
samples/cli/sample-apps Platform deleteReward \
    --namespace $AB_NAMESPACE \
    --rewardId 'c3HoAWV7vdKCqxS9' \
    > test.out 2>&1
eval_tap $? 194 'DeleteReward' test.out

#- 195 CheckEventCondition
samples/cli/sample-apps Platform checkEventCondition \
    --namespace $AB_NAMESPACE \
    --rewardId 'uER5i7gebT6HEIhA' \
    --body '{"payload": {"yFi0FFTf4SsVNeU4": {}, "N0it63f1Vm1qnF70": {}, "fxwDoc8yh3vaMNi0": {}}}' \
    > test.out 2>&1
eval_tap $? 195 'CheckEventCondition' test.out

#- 196 DeleteRewardConditionRecord
samples/cli/sample-apps Platform deleteRewardConditionRecord \
    --namespace $AB_NAMESPACE \
    --rewardId 'sgsbCIrb6PUfdUXA' \
    --body '{"conditionName": "LDMEOtn7YpQtnvjp", "userId": "JFZVI8d5zGol9nDB"}' \
    > test.out 2>&1
eval_tap $? 196 'DeleteRewardConditionRecord' test.out

#- 197 QuerySections
samples/cli/sample-apps Platform querySections \
    --namespace $AB_NAMESPACE \
    --end 'ASG1wxoyC45pzOYQ' \
    --limit '3' \
    --offset '73' \
    --start 'xwbkX0qgiSutw4Ah' \
    --storeId 'Bqp8smbCtMfZZa7y' \
    --viewId 'mwDpzonoy8XYDCnM' \
    > test.out 2>&1
eval_tap $? 197 'QuerySections' test.out

#- 198 CreateSection
samples/cli/sample-apps Platform createSection \
    --namespace $AB_NAMESPACE \
    --storeId '8rn4CSqTZJF0UrtC' \
    --body '{"active": false, "displayOrder": 13, "endDate": "1998-09-23T00:00:00Z", "ext": {"xlpWrBerqfPdLCls": {}, "x5uuyHd7Bx84O2CE": {}, "5dH0wtkMYI9wlldZ": {}}, "fixedPeriodRotationConfig": {"backfillType": "CUSTOM", "duration": 49, "itemCount": 84, "rule": "SEQUENCE"}, "items": [{"id": "wXpliKdX4kToiJmq", "sku": "C4PDgFTVHaxanI1w"}, {"id": "NNjEPzhoNHs5cJ5U", "sku": "2eqX8Fwx20weEx3t"}, {"id": "HJ4Ntl1Ur8TQIuzT", "sku": "USgi5kbmBVZgvwAF"}], "localizations": {"Yy9xK54fmSmkp1Gt": {"description": "Oo21DvEB8FyCImhO", "localExt": {"nzwYsEfkUfxXPfjl": {}, "zQqrnNUXdzgf1Y7v": {}, "gfzRBqeq2QIruXF4": {}}, "longDescription": "EeMmiU6ozMhui0kg", "title": "IfawriUBALtKqdij"}, "Y3RUYjFs3lLs5Bo8": {"description": "UwUiXivvnDZ9aOdA", "localExt": {"nBAImLsXM7K3a0RT": {}, "T2ManCVHVvy0F8du": {}, "ul55zRv1X2KFkOnJ": {}}, "longDescription": "ejQ1BAkUBpblvnGI", "title": "LWZP6w60Ryl62IEx"}, "7grDHQXmTfNYaiOh": {"description": "xKFBzu1nAabBPcP3", "localExt": {"plgHJgCzuMvDKolH": {}, "vDZlOg0fqMYUSCME": {}, "pI7leDJ0kd8Ds7e2": {}}, "longDescription": "3OerqMMnHGmP0S8T", "title": "rPb2ekLS3DBAA41L"}}, "name": "r6DCudsB5pcF2WgY", "rotationType": "CUSTOM", "startDate": "1986-04-14T00:00:00Z", "viewId": "j4UPzKHoSKvv4Qgr"}' \
    > test.out 2>&1
eval_tap $? 198 'CreateSection' test.out

#- 199 PurgeExpiredSection
samples/cli/sample-apps Platform purgeExpiredSection \
    --namespace $AB_NAMESPACE \
    --storeId 'mBrr1FBF9IdYcQPW' \
    > test.out 2>&1
eval_tap $? 199 'PurgeExpiredSection' test.out

#- 200 GetSection
samples/cli/sample-apps Platform getSection \
    --namespace $AB_NAMESPACE \
    --sectionId 'TwpVt0zTMFtrKmDf' \
    --storeId 'Eu9Pi4lymjf7mfxn' \
    > test.out 2>&1
eval_tap $? 200 'GetSection' test.out

#- 201 UpdateSection
samples/cli/sample-apps Platform updateSection \
    --namespace $AB_NAMESPACE \
    --sectionId 'foQcVnHDULRt6lx9' \
    --storeId '6BW33wdSbEj5GF2e' \
    --body '{"active": true, "displayOrder": 11, "endDate": "1985-06-13T00:00:00Z", "ext": {"xJ6W7ML7urDUTFER": {}, "8xPOsrDhU3yOeFiD": {}, "UfaW0dSes10aD8JP": {}}, "fixedPeriodRotationConfig": {"backfillType": "CUSTOM", "duration": 60, "itemCount": 54, "rule": "SEQUENCE"}, "items": [{"id": "XQTwfQ0brHiK4Kxs", "sku": "w5Tz38T9wo1n4m0M"}, {"id": "s2LTw5JGIp39DtAB", "sku": "wvgH0xKVAgM4II6G"}, {"id": "ZEYM9AAA0DwCZOcf", "sku": "DB5jFSRzsZHuAI5x"}], "localizations": {"udiMjXBv6WwadRq6": {"description": "FmLwtjVpQMIYJVwX", "localExt": {"q62a8K8LIo4TYpmY": {}, "TpLUoYntYfhA3WNl": {}, "UBuGiQsm8zEhoyYO": {}}, "longDescription": "Urx9jq6BPSGcsziq", "title": "qcrfgE5f2ZkSg2ep"}, "6uGypT8hEu5Dk9i2": {"description": "4DST9KuBFoTX7igL", "localExt": {"Pv8Ck5HFn1ioT1XS": {}, "n3dGlHUHftwon7Q4": {}, "RxVvE89mckouV1hd": {}}, "longDescription": "8FGs6JocedODPyQ4", "title": "fIQi7UrPM9ocQfwo"}, "3tvKlmAlg7Zs0m4R": {"description": "7cveSou70jHmZo8s", "localExt": {"mq8wvCJxXb2UFbhW": {}, "Z1nyB2mahNWbEr2u": {}, "7xNE05TeDzaw1gGm": {}}, "longDescription": "pJpAHjndX9eto2zC", "title": "bjbGNSmcB3tvJibA"}}, "name": "MaLHK8Kzlh1LGpYZ", "rotationType": "CUSTOM", "startDate": "1977-05-06T00:00:00Z", "viewId": "0R4H8csRcF1Ya2bN"}' \
    > test.out 2>&1
eval_tap $? 201 'UpdateSection' test.out

#- 202 DeleteSection
samples/cli/sample-apps Platform deleteSection \
    --namespace $AB_NAMESPACE \
    --sectionId 'TNDr2ul1cjXq7kQD' \
    --storeId '4kl5XyEjBTBJGIxg' \
    > test.out 2>&1
eval_tap $? 202 'DeleteSection' test.out

#- 203 ListStores
samples/cli/sample-apps Platform listStores \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 203 'ListStores' test.out

#- 204 CreateStore
samples/cli/sample-apps Platform createStore \
    --namespace $AB_NAMESPACE \
    --body '{"defaultLanguage": "VhpjC3NeoG5ODXGm", "defaultRegion": "16iIlQt8mCu5bQ5Z", "description": "RCJagLaU58tG4SRM", "supportedLanguages": ["S3BcsLhAfwvnV2CE", "XTAWESs0mR9m15I5", "U6CqQTlmMG3Y3cvn"], "supportedRegions": ["Kfq2Xna3BguHKohi", "qrSDnoel8ytTMqEO", "MgnrheXbHjCfs5Sx"], "title": "K572EyuIpPmJZ4ac"}' \
    > test.out 2>&1
eval_tap $? 204 'CreateStore' test.out

#- 205 GetCatalogDefinition
samples/cli/sample-apps Platform getCatalogDefinition \
    --namespace $AB_NAMESPACE \
    --catalogType 'APP' \
    > test.out 2>&1
eval_tap $? 205 'GetCatalogDefinition' test.out

#- 206 DownloadCSVTemplates
samples/cli/sample-apps Platform downloadCSVTemplates \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 206 'DownloadCSVTemplates' test.out

#- 207 ExportStoreByCSV
samples/cli/sample-apps Platform exportStoreByCSV \
    --namespace $AB_NAMESPACE \
    --body '{"catalogType": "VIEW", "fieldsToBeIncluded": ["Zcd9MypsA0KotLKc", "YuBmsBTnalHlz4pr", "T21KUnJtySwpTmT1"], "idsToBeExported": ["ecwy6Gv9uy13WC8C", "mJ4ZHV3KNe88HtXV", "yRdLv1DOxawsIEN9"], "storeId": "fk3KQYlo0HF4vn1I"}' \
    > test.out 2>&1
eval_tap $? 207 'ExportStoreByCSV' test.out

#- 208 ImportStore
eval_tap 0 208 'ImportStore # SKIP deprecated' test.out

#- 209 GetPublishedStore
samples/cli/sample-apps Platform getPublishedStore \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 209 'GetPublishedStore' test.out

#- 210 DeletePublishedStore
samples/cli/sample-apps Platform deletePublishedStore \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 210 'DeletePublishedStore' test.out

#- 211 GetPublishedStoreBackup
samples/cli/sample-apps Platform getPublishedStoreBackup \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 211 'GetPublishedStoreBackup' test.out

#- 212 RollbackPublishedStore
samples/cli/sample-apps Platform rollbackPublishedStore \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 212 'RollbackPublishedStore' test.out

#- 213 GetStore
samples/cli/sample-apps Platform getStore \
    --namespace $AB_NAMESPACE \
    --storeId 'By531lAgbI4sy28T' \
    > test.out 2>&1
eval_tap $? 213 'GetStore' test.out

#- 214 UpdateStore
samples/cli/sample-apps Platform updateStore \
    --namespace $AB_NAMESPACE \
    --storeId 'Pt8AhCuXZudtnjsN' \
    --body '{"defaultLanguage": "Qdv7KkvPwSJspRsv", "defaultRegion": "vhnsylsVyiiYwwox", "description": "k1jNF6Ko5yRUy103", "supportedLanguages": ["b7fp4zbjwv7Lb9fU", "QJEPbLCK6ETyp21T", "9PtR2Gdz7WQyLvg1"], "supportedRegions": ["gmC2t3CJaaVyyadH", "1UgY7QYwTV8WuY10", "ewjRKwU70h543DsU"], "title": "OCTYfWOG4iTLCMA5"}' \
    > test.out 2>&1
eval_tap $? 214 'UpdateStore' test.out

#- 215 DeleteStore
samples/cli/sample-apps Platform deleteStore \
    --namespace $AB_NAMESPACE \
    --storeId 'hqQbZNwZkTGPNIst' \
    > test.out 2>&1
eval_tap $? 215 'DeleteStore' test.out

#- 216 QueryChanges
samples/cli/sample-apps Platform queryChanges \
    --namespace $AB_NAMESPACE \
    --storeId '4SDWhD1tiJoWjwup' \
    --action 'CREATE' \
    --itemSku 's7S22LRVnzbEBl67' \
    --itemType 'COINS' \
    --limit '95' \
    --offset '48' \
    --selected 'false' \
    --sortBy '["updatedAt:asc", "createdAt:desc", "createdAt:asc"]' \
    --status 'PUBLISHED' \
    --type 'STORE' \
    --updatedAtEnd 'vxhjvmpcIEdBznYA' \
    --updatedAtStart 'ZDK1S5nGDPWny3Jq' \
    --withTotal 'true' \
    > test.out 2>&1
eval_tap $? 216 'QueryChanges' test.out

#- 217 PublishAll
samples/cli/sample-apps Platform publishAll \
    --namespace $AB_NAMESPACE \
    --storeId '6Xnin0GGRjcN7DCA' \
    > test.out 2>&1
eval_tap $? 217 'PublishAll' test.out

#- 218 PublishSelected
samples/cli/sample-apps Platform publishSelected \
    --namespace $AB_NAMESPACE \
    --storeId 'CYNSZUMOTgpyHTpu' \
    > test.out 2>&1
eval_tap $? 218 'PublishSelected' test.out

#- 219 SelectAllRecords
samples/cli/sample-apps Platform selectAllRecords \
    --namespace $AB_NAMESPACE \
    --storeId 'OD4vKOUlYiUdLo7j' \
    > test.out 2>&1
eval_tap $? 219 'SelectAllRecords' test.out

#- 220 SelectAllRecordsByCriteria
samples/cli/sample-apps Platform selectAllRecordsByCriteria \
    --namespace $AB_NAMESPACE \
    --storeId 'e5wqzQYCkWRuYUae' \
    --action 'CREATE' \
    --itemSku 'g2Yfjk6vMkspY5cD' \
    --itemType 'COINS' \
    --selected 'false' \
    --type 'VIEW' \
    --updatedAtEnd 'dqhrIrI77No2Pccy' \
    --updatedAtStart 'f4wfe7zTilmTExnn' \
    > test.out 2>&1
eval_tap $? 220 'SelectAllRecordsByCriteria' test.out

#- 221 GetStatistic
samples/cli/sample-apps Platform getStatistic \
    --namespace $AB_NAMESPACE \
    --storeId '1xfZGWxR3uV0YLsH' \
    --action 'DELETE' \
    --itemSku 'Vz4L1yXMHHtWxX4k' \
    --itemType 'SEASON' \
    --type 'STORE' \
    --updatedAtEnd 'hLMusEiZ0vG5RC8l' \
    --updatedAtStart 'YWrdKdQ12jRgSGB6' \
    > test.out 2>&1
eval_tap $? 221 'GetStatistic' test.out

#- 222 UnselectAllRecords
samples/cli/sample-apps Platform unselectAllRecords \
    --namespace $AB_NAMESPACE \
    --storeId 'T4hv9QFTVMyqWm0q' \
    > test.out 2>&1
eval_tap $? 222 'UnselectAllRecords' test.out

#- 223 SelectRecord
samples/cli/sample-apps Platform selectRecord \
    --changeId 'HW3Fxwu2Xv4g1NGq' \
    --namespace $AB_NAMESPACE \
    --storeId '7focZuTdTPzzAjpc' \
    > test.out 2>&1
eval_tap $? 223 'SelectRecord' test.out

#- 224 UnselectRecord
samples/cli/sample-apps Platform unselectRecord \
    --changeId '28ob4hSOdkcxyrTN' \
    --namespace $AB_NAMESPACE \
    --storeId 'Z8Lz7ze7Nz7SNQyT' \
    > test.out 2>&1
eval_tap $? 224 'UnselectRecord' test.out

#- 225 CloneStore
samples/cli/sample-apps Platform cloneStore \
    --namespace $AB_NAMESPACE \
    --storeId 'jtMqiYg1MfeHHVVD' \
    --targetStoreId 'FU3TELGDUQejmu6w' \
    > test.out 2>&1
eval_tap $? 225 'CloneStore' test.out

#- 226 ExportStore
eval_tap 0 226 'ExportStore # SKIP deprecated' test.out

#- 227 QueryImportHistory
samples/cli/sample-apps Platform queryImportHistory \
    --namespace $AB_NAMESPACE \
    --storeId 'u7X9WITOoH2HraPN' \
    --end '4WAyFooxQzDRlNPh' \
    --limit '17' \
    --offset '35' \
    --sortBy 'dZLJhIBx9xek9GMR' \
    --start 'gKX5NbFpaQrF8vtk' \
    --success 'false' \
    > test.out 2>&1
eval_tap $? 227 'QueryImportHistory' test.out

#- 228 ImportStoreByCSV
samples/cli/sample-apps Platform importStoreByCSV \
    --namespace $AB_NAMESPACE \
    --storeId 'uRMEW6b7CMzQ0Kdq' \
    --category 'tmp.dat' \
    --display 'tmp.dat' \
    --item 'tmp.dat' \
    --notes 'bIDcpjW6ezJqLr3s' \
    --section 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 228 'ImportStoreByCSV' test.out

#- 229 QuerySubscriptions
samples/cli/sample-apps Platform querySubscriptions \
    --namespace $AB_NAMESPACE \
    --chargeStatus 'NEVER' \
    --itemId 'QxWypaK4IglFWB8T' \
    --limit '21' \
    --offset '27' \
    --sku 'oOqgBuFRpQFI6ILz' \
    --status 'INIT' \
    --subscribedBy 'PLATFORM' \
    --userId 'gTwVhGZ6D5adjKfP' \
    > test.out 2>&1
eval_tap $? 229 'QuerySubscriptions' test.out

#- 230 RecurringChargeSubscription
samples/cli/sample-apps Platform recurringChargeSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'lKGBtxhf6WaTaV8N' \
    > test.out 2>&1
eval_tap $? 230 'RecurringChargeSubscription' test.out

#- 231 GetTicketDynamic
samples/cli/sample-apps Platform getTicketDynamic \
    --boothName 'dZzh94prJN9rwQYs' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 231 'GetTicketDynamic' test.out

#- 232 DecreaseTicketSale
samples/cli/sample-apps Platform decreaseTicketSale \
    --boothName 'm61LlVyFOuMOUvIP' \
    --namespace $AB_NAMESPACE \
    --body '{"orderNo": "zzu7j0yKtSe609H7"}' \
    > test.out 2>&1
eval_tap $? 232 'DecreaseTicketSale' test.out

#- 233 GetTicketBoothID
samples/cli/sample-apps Platform getTicketBoothID \
    --boothName 'eEMHS2niHqi9AYhQ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 233 'GetTicketBoothID' test.out

#- 234 IncreaseTicketSale
samples/cli/sample-apps Platform increaseTicketSale \
    --boothName 'PAULlRSYg8UGzeX2' \
    --namespace $AB_NAMESPACE \
    --body '{"count": 9, "orderNo": "zg8obw7rymti9DtJ"}' \
    > test.out 2>&1
eval_tap $? 234 'IncreaseTicketSale' test.out

#- 235 Commit
samples/cli/sample-apps Platform commit \
    --namespace $AB_NAMESPACE \
    --body '{"actions": [{"operations": [{"creditPayload": {"balanceOrigin": "Playstation", "count": 96, "currencyCode": "RecskdJzYGV756Vu", "expireAt": "1989-06-11T00:00:00Z"}, "debitPayload": {"count": 82, "currencyCode": "cfqPtfo7a2J39XJA", "walletPlatform": "IOS"}, "fulFillItemPayload": {"count": 96, "entitlementCollectionId": "ulqeSG5meNNSuovB", "entitlementOrigin": "Nintendo", "itemIdentity": "XBB2Nh5UlfJiIaLY", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 53, "entitlementId": "3yAIviNAy7EnNZSg"}, "type": "REVOKE_ENTITLEMENT"}, {"creditPayload": {"balanceOrigin": "Steam", "count": 44, "currencyCode": "TbAL11k20M6KbwHg", "expireAt": "1988-10-17T00:00:00Z"}, "debitPayload": {"count": 66, "currencyCode": "q5cU3cvlQZblIIOl", "walletPlatform": "Playstation"}, "fulFillItemPayload": {"count": 27, "entitlementCollectionId": "sMCD4DnAgRlTMnmT", "entitlementOrigin": "Xbox", "itemIdentity": "n6fK3Dktjid9tnbK", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 71, "entitlementId": "Ywih1PR6FEKBYAQx"}, "type": "REVOKE_ENTITLEMENT"}, {"creditPayload": {"balanceOrigin": "Other", "count": 95, "currencyCode": "MHS9zVkKCShIw0DK", "expireAt": "1975-12-01T00:00:00Z"}, "debitPayload": {"count": 1, "currencyCode": "xTxCKp9g9JtXh4cJ", "walletPlatform": "GooglePlay"}, "fulFillItemPayload": {"count": 13, "entitlementCollectionId": "PJYYiXjoQdetePXd", "entitlementOrigin": "IOS", "itemIdentity": "b8BMrlWdNgs3bi4P", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 31, "entitlementId": "7ThXQ9L5uUkzE7C5"}, "type": "REVOKE_ENTITLEMENT"}], "userId": "Fk4xs3TdGIsaEl2V"}, {"operations": [{"creditPayload": {"balanceOrigin": "Steam", "count": 31, "currencyCode": "YqOOAfGVKG5cKggJ", "expireAt": "1991-11-08T00:00:00Z"}, "debitPayload": {"count": 15, "currencyCode": "fG5tvOhDPxqbpcYt", "walletPlatform": "Epic"}, "fulFillItemPayload": {"count": 30, "entitlementCollectionId": "5VNdsBEymK9JC35j", "entitlementOrigin": "Oculus", "itemIdentity": "JMPtsahr12CNmsvY", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 72, "entitlementId": "E6O6lVN6AUEJiUJD"}, "type": "CREDIT_WALLET"}, {"creditPayload": {"balanceOrigin": "Nintendo", "count": 79, "currencyCode": "2MYnP2FYtDppFIpw", "expireAt": "1984-02-09T00:00:00Z"}, "debitPayload": {"count": 36, "currencyCode": "CCIMZ6n4vmZDaBBU", "walletPlatform": "Nintendo"}, "fulFillItemPayload": {"count": 86, "entitlementCollectionId": "a3zUbLLAgPXudc1X", "entitlementOrigin": "Steam", "itemIdentity": "iaA2V5Xs1Scq5KUJ", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 51, "entitlementId": "A26obLWHqDH02dhG"}, "type": "DEBIT_WALLET"}, {"creditPayload": {"balanceOrigin": "Playstation", "count": 26, "currencyCode": "I2TDM1kT7CmAqmNK", "expireAt": "1972-07-22T00:00:00Z"}, "debitPayload": {"count": 24, "currencyCode": "DNmwfkswD7n5tjaA", "walletPlatform": "Steam"}, "fulFillItemPayload": {"count": 65, "entitlementCollectionId": "ZcZJVn4B6BOIr0vM", "entitlementOrigin": "Twitch", "itemIdentity": "l7KQ10jNmMTkeJxz", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 58, "entitlementId": "OpB9RRjXgMLxbKq3"}, "type": "DEBIT_WALLET"}], "userId": "JVYOz6TAzbqWeLAw"}, {"operations": [{"creditPayload": {"balanceOrigin": "Xbox", "count": 96, "currencyCode": "AVr23jexNZYl0oev", "expireAt": "1971-10-26T00:00:00Z"}, "debitPayload": {"count": 75, "currencyCode": "q6O8cBR9Isj5MfDr", "walletPlatform": "IOS"}, "fulFillItemPayload": {"count": 46, "entitlementCollectionId": "HssTU6UhDECGDyKR", "entitlementOrigin": "Nintendo", "itemIdentity": "g0htf9HwOt085gjW", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 85, "entitlementId": "dI8uFna9BjQkcfz1"}, "type": "CREDIT_WALLET"}, {"creditPayload": {"balanceOrigin": "System", "count": 42, "currencyCode": "LnmCgNOXC89PHNaH", "expireAt": "1981-11-21T00:00:00Z"}, "debitPayload": {"count": 6, "currencyCode": "xUOboUOUp1fhs7w4", "walletPlatform": "Playstation"}, "fulFillItemPayload": {"count": 26, "entitlementCollectionId": "78rpgnf67aGFHdC1", "entitlementOrigin": "Oculus", "itemIdentity": "PZqddZD0pEIukvGF", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 25, "entitlementId": "8AsrdXI3wNW3uAgF"}, "type": "FULFILL_ITEM"}, {"creditPayload": {"balanceOrigin": "Twitch", "count": 34, "currencyCode": "igEC0FiS6WicVreB", "expireAt": "1999-04-23T00:00:00Z"}, "debitPayload": {"count": 64, "currencyCode": "a3vdx7xo8PK8rv2m", "walletPlatform": "IOS"}, "fulFillItemPayload": {"count": 56, "entitlementCollectionId": "27Af2f6ZJlKhff3U", "entitlementOrigin": "Steam", "itemIdentity": "5lax254zszGruklq", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 35, "entitlementId": "QxZqauAG9QnSe9o6"}, "type": "FULFILL_ITEM"}], "userId": "QyWkrJPWv6dJj4CX"}], "metadata": {"Qwa7kRlCYXs5Zj4l": {}, "DcQiAZXYkWYeQ6MJ": {}, "Z6VboSYk2OzvuVHO": {}}, "needPreCheck": true, "transactionId": "hEHvbsMXN4JVTGq9", "type": "18gpLazT9TH3Kw87"}' \
    > test.out 2>&1
eval_tap $? 235 'Commit' test.out

#- 236 GetTradeHistoryByCriteria
samples/cli/sample-apps Platform getTradeHistoryByCriteria \
    --namespace $AB_NAMESPACE \
    --limit '92' \
    --offset '27' \
    --status 'SUCCESS' \
    --type 'ej7xPgGoZX3gDNeb' \
    --userId 'lycg8dhSNBRbtjcD' \
    > test.out 2>&1
eval_tap $? 236 'GetTradeHistoryByCriteria' test.out

#- 237 GetTradeHistoryByTransactionId
samples/cli/sample-apps Platform getTradeHistoryByTransactionId \
    --namespace $AB_NAMESPACE \
    --transactionId 'yzxooOQ3c9lskPM5' \
    > test.out 2>&1
eval_tap $? 237 'GetTradeHistoryByTransactionId' test.out

#- 238 UnlockSteamUserAchievement
samples/cli/sample-apps Platform unlockSteamUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'lmb31BODNDJ3xbtJ' \
    --body '{"achievements": [{"id": "yg9QIYBftagAxIsG", "value": 54}, {"id": "PgJkeeNXyRjfEpBY", "value": 68}, {"id": "VpUo3o6rSWuviwcW", "value": 15}], "steamUserId": "SsDIva5sXYcsX7JY"}' \
    > test.out 2>&1
eval_tap $? 238 'UnlockSteamUserAchievement' test.out

#- 239 GetXblUserAchievements
samples/cli/sample-apps Platform getXblUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId '6vaeSVgA080fEr9B' \
    --xboxUserId '6U61rc3mGOToo0Ka' \
    > test.out 2>&1
eval_tap $? 239 'GetXblUserAchievements' test.out

#- 240 UpdateXblUserAchievement
samples/cli/sample-apps Platform updateXblUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'nTRxgOvc7fELvpHJ' \
    --body '{"achievements": [{"id": "uPZlnuBUNSi72aiz", "percentComplete": 36}, {"id": "dlEU2qFxkEwQSPww", "percentComplete": 61}, {"id": "xE18gahYs6zBtQgo", "percentComplete": 10}], "serviceConfigId": "2qkqI28prVgetwMm", "titleId": "J9L6nZfefKcCKu7Y", "xboxUserId": "HeZaZcApLYb6YXom"}' \
    > test.out 2>&1
eval_tap $? 240 'UpdateXblUserAchievement' test.out

#- 241 AnonymizeCampaign
samples/cli/sample-apps Platform anonymizeCampaign \
    --namespace $AB_NAMESPACE \
    --userId 'U9uv7cNqtShVnnw4' \
    > test.out 2>&1
eval_tap $? 241 'AnonymizeCampaign' test.out

#- 242 AnonymizeEntitlement
samples/cli/sample-apps Platform anonymizeEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'S3R3eF8CSwOmAllB' \
    > test.out 2>&1
eval_tap $? 242 'AnonymizeEntitlement' test.out

#- 243 AnonymizeFulfillment
samples/cli/sample-apps Platform anonymizeFulfillment \
    --namespace $AB_NAMESPACE \
    --userId 'KX7E3AhkvPW8fmLm' \
    > test.out 2>&1
eval_tap $? 243 'AnonymizeFulfillment' test.out

#- 244 AnonymizeIntegration
samples/cli/sample-apps Platform anonymizeIntegration \
    --namespace $AB_NAMESPACE \
    --userId 'UbgHNgpDhTWGQlwe' \
    > test.out 2>&1
eval_tap $? 244 'AnonymizeIntegration' test.out

#- 245 AnonymizeOrder
samples/cli/sample-apps Platform anonymizeOrder \
    --namespace $AB_NAMESPACE \
    --userId 'ws9hjzj95ukRD8XP' \
    > test.out 2>&1
eval_tap $? 245 'AnonymizeOrder' test.out

#- 246 AnonymizePayment
samples/cli/sample-apps Platform anonymizePayment \
    --namespace $AB_NAMESPACE \
    --userId 'EufsnGjnlAtyvcUF' \
    > test.out 2>&1
eval_tap $? 246 'AnonymizePayment' test.out

#- 247 AnonymizeRevocation
samples/cli/sample-apps Platform anonymizeRevocation \
    --namespace $AB_NAMESPACE \
    --userId 'iLL4amWJPeFe6olE' \
    > test.out 2>&1
eval_tap $? 247 'AnonymizeRevocation' test.out

#- 248 AnonymizeSubscription
samples/cli/sample-apps Platform anonymizeSubscription \
    --namespace $AB_NAMESPACE \
    --userId 'yByyaCavhMNZ1CPP' \
    > test.out 2>&1
eval_tap $? 248 'AnonymizeSubscription' test.out

#- 249 AnonymizeWallet
samples/cli/sample-apps Platform anonymizeWallet \
    --namespace $AB_NAMESPACE \
    --userId 'o3QpzzEOKgpiHmdK' \
    > test.out 2>&1
eval_tap $? 249 'AnonymizeWallet' test.out

#- 250 GetUserDLCByPlatform
samples/cli/sample-apps Platform getUserDLCByPlatform \
    --namespace $AB_NAMESPACE \
    --userId 'EDWk9aXWat7Ht95j' \
    --type 'STEAM' \
    > test.out 2>&1
eval_tap $? 250 'GetUserDLCByPlatform' test.out

#- 251 GetUserDLC
samples/cli/sample-apps Platform getUserDLC \
    --namespace $AB_NAMESPACE \
    --userId '4FyaVIO7zWvNCdL8' \
    --includeAllNamespaces 'false' \
    --status 'REVOKED' \
    --type 'OCULUS' \
    > test.out 2>&1
eval_tap $? 251 'GetUserDLC' test.out

#- 252 QueryUserEntitlements
samples/cli/sample-apps Platform queryUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'MYnqY9M711x0aqhA' \
    --activeOnly 'false' \
    --appType 'DEMO' \
    --collectionId 'lTp2spaA5PDscr1F' \
    --entitlementClazz 'MEDIA' \
    --entitlementName 'BDyQD40ZdwIeZORc' \
    --features '["TJ00oBttI4wxjLKG", "4M6RfwK8XdDZTLlD", "nGt9klQ0rMXWkkbc"]' \
    --fuzzyMatchName 'false' \
    --ignoreActiveDate 'true' \
    --itemId '["UhiHadZUvHcK9Lf5", "e9ev7eyPgpAC6y3x", "o4bZtILFjZypkWq9"]' \
    --limit '43' \
    --offset '17' \
    --origin 'IOS' \
    > test.out 2>&1
eval_tap $? 252 'QueryUserEntitlements' test.out

#- 253 GrantUserEntitlement
samples/cli/sample-apps Platform grantUserEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'cwmbWU2R8kLFYMPL' \
    --body '[{"collectionId": "rRQKLDCre6TrWnP6", "endDate": "1971-06-12T00:00:00Z", "grantedCode": "X7R6IRDgj4JUUrnq", "itemId": "j5HQQc9TUEIpC6aI", "itemNamespace": "6DLg8QMwfnta2DLt", "language": "NoQ_diFP_Zd", "metadata": {"m5fY3FCH6QiFYidB": {}, "XOKzbGeOi1VQLxLq": {}, "a3OQ6UIvv5FhDzbS": {}}, "origin": "Xbox", "quantity": 57, "region": "0rKhFWYBkOke6cbX", "source": "PROMOTION", "startDate": "1979-10-07T00:00:00Z", "storeId": "Ib5bNQwdnZNrSy4a"}, {"collectionId": "z3HB8Oj82Dl4R949", "endDate": "1994-12-15T00:00:00Z", "grantedCode": "v2XwhAZX2u6Z9NLX", "itemId": "Fn31W6psTDzYvEDn", "itemNamespace": "Z560GH7MLWQ9WmFW", "language": "Gwi", "metadata": {"28Rgoh5NvReLoBOA": {}, "hRmeFiluxbN468nu": {}, "u6j4nwzSnIzaWX4q": {}}, "origin": "GooglePlay", "quantity": 68, "region": "tpmD1r6OIxDCeBFK", "source": "PROMOTION", "startDate": "1994-08-25T00:00:00Z", "storeId": "dvL5JP7VWRhZXYKG"}, {"collectionId": "RWYSmP7jEr775LUy", "endDate": "1992-04-20T00:00:00Z", "grantedCode": "V4QwnBXZ55PtDwZU", "itemId": "bGs6jABgjLttKtWK", "itemNamespace": "D9IfGpNCseaXKMZw", "language": "sq_ikrw", "metadata": {"EfFiQPp7GV4CHFwV": {}, "1AdsBIWLNNm3i7VS": {}, "H4cCLegNSOPMa7A5": {}}, "origin": "System", "quantity": 17, "region": "RdYIH85yKYotYmIJ", "source": "PROMOTION", "startDate": "1999-11-09T00:00:00Z", "storeId": "1d6l17moiPClFbiq"}]' \
    > test.out 2>&1
eval_tap $? 253 'GrantUserEntitlement' test.out

#- 254 GetUserAppEntitlementByAppId
samples/cli/sample-apps Platform getUserAppEntitlementByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'EYJejcdpCH924ghE' \
    --activeOnly 'false' \
    --appId '9t87dusYYfqiOC05' \
    > test.out 2>&1
eval_tap $? 254 'GetUserAppEntitlementByAppId' test.out

#- 255 QueryUserEntitlementsByAppType
samples/cli/sample-apps Platform queryUserEntitlementsByAppType \
    --namespace $AB_NAMESPACE \
    --userId 'lu3gsfUU3Kk1cuQn' \
    --activeOnly 'false' \
    --limit '59' \
    --offset '41' \
    --appType 'DLC' \
    > test.out 2>&1
eval_tap $? 255 'QueryUserEntitlementsByAppType' test.out

#- 256 GetUserEntitlementsByIds
samples/cli/sample-apps Platform getUserEntitlementsByIds \
    --namespace $AB_NAMESPACE \
    --userId '7o26al3sZlD5BHzY' \
    --ids '["gdMHQFyWTme4Nq6r", "XuHMyORdfgdVRxBZ", "bYxUzZT0v0pilV6h"]' \
    > test.out 2>&1
eval_tap $? 256 'GetUserEntitlementsByIds' test.out

#- 257 GetUserEntitlementByItemId
samples/cli/sample-apps Platform getUserEntitlementByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'vk3vHHYgKFlNg0km' \
    --activeOnly 'true' \
    --entitlementClazz 'SUBSCRIPTION' \
    --platform 'LiOb8tHoDPLOuYnb' \
    --itemId 'bTaJw5GbOQR8fp1C' \
    > test.out 2>&1
eval_tap $? 257 'GetUserEntitlementByItemId' test.out

#- 258 GetUserActiveEntitlementsByItemIds
samples/cli/sample-apps Platform getUserActiveEntitlementsByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'KDjmE7D5XCnTPHVv' \
    --ids '["MlflhHqgRvHb4k3w", "sQxYtqBdRdvngTY0", "x6GdAwswAMx1RGxf"]' \
    --platform 'xQVWNueEfniXTTUt' \
    > test.out 2>&1
eval_tap $? 258 'GetUserActiveEntitlementsByItemIds' test.out

#- 259 GetUserEntitlementBySku
samples/cli/sample-apps Platform getUserEntitlementBySku \
    --namespace $AB_NAMESPACE \
    --userId 'unwguIaeuFlNjfhD' \
    --activeOnly 'false' \
    --entitlementClazz 'APP' \
    --platform '2N0AS4LDwqizprjo' \
    --sku 'xHXsCQOxi8JhmOpR' \
    > test.out 2>&1
eval_tap $? 259 'GetUserEntitlementBySku' test.out

#- 260 ExistsAnyUserActiveEntitlement
samples/cli/sample-apps Platform existsAnyUserActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'M0fCZsO5paWoCtdK' \
    --appIds '["nZWYteDWWR3Xh0AR", "thqqj5Ok0ChNQGXe", "4AwcyFYCMCjwEoFd"]' \
    --itemIds '["ksK8LFTzYhwWcaua", "W2AdeOd2KCqYhtAi", "y6yg2qa78Jq5qHK6"]' \
    --platform 'GDGCiU15O1TxbcJg' \
    --skus '["oluHmHmNPpu8VZ7L", "zVNzw5grhe6GtmeD", "YGzitOxx4wmQDDd7"]' \
    > test.out 2>&1
eval_tap $? 260 'ExistsAnyUserActiveEntitlement' test.out

#- 261 ExistsAnyUserActiveEntitlementByItemIds
samples/cli/sample-apps Platform existsAnyUserActiveEntitlementByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'QY0mgo9kcIhlLKH2' \
    --platform 'brfRhh9zXTsMpLvX' \
    --itemIds '["pOek88g5ULyLRv2X", "w3lArvIZ7D5rTrNf", "nKRbcK6zcTZbv8nH"]' \
    > test.out 2>&1
eval_tap $? 261 'ExistsAnyUserActiveEntitlementByItemIds' test.out

#- 262 GetUserAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform getUserAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'qYv7aVBDCuJ7PWNl' \
    --appId 'BysdIz1p83VHwCZU' \
    > test.out 2>&1
eval_tap $? 262 'GetUserAppEntitlementOwnershipByAppId' test.out

#- 263 GetUserEntitlementOwnershipByItemId
samples/cli/sample-apps Platform getUserEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'ZjRqmXi7IEQUfCN1' \
    --entitlementClazz 'CODE' \
    --platform 'XGd04drEUPVeLtS0' \
    --itemId 'UB1BEGd3pbbTjFrX' \
    > test.out 2>&1
eval_tap $? 263 'GetUserEntitlementOwnershipByItemId' test.out

#- 264 GetUserEntitlementOwnershipByItemIds
samples/cli/sample-apps Platform getUserEntitlementOwnershipByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'sysvD2901I2w6m7G' \
    --ids '["pYCtp3bqkkq5bxyc", "PDqb2K0vt8YLa4d3", "UK6L6JO9Rp6Cdy62"]' \
    --platform 'nHdwLBh0ORuUMdUF' \
    > test.out 2>&1
eval_tap $? 264 'GetUserEntitlementOwnershipByItemIds' test.out

#- 265 GetUserEntitlementOwnershipBySku
samples/cli/sample-apps Platform getUserEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --userId 'uRUK0BnpUWNIwPAT' \
    --entitlementClazz 'LOOTBOX' \
    --platform 'Vc33tAy2l1aFyUfH' \
    --sku 'bPJmzVIsC4c4kpGR' \
    > test.out 2>&1
eval_tap $? 265 'GetUserEntitlementOwnershipBySku' test.out

#- 266 RevokeAllEntitlements
samples/cli/sample-apps Platform revokeAllEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'QEc20Wq4IzwXJvhc' \
    > test.out 2>&1
eval_tap $? 266 'RevokeAllEntitlements' test.out

#- 267 RevokeUserEntitlements
samples/cli/sample-apps Platform revokeUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'Ge6syZRFLMhttNmh' \
    --entitlementIds 'geTFAkrACn1XwNPz' \
    > test.out 2>&1
eval_tap $? 267 'RevokeUserEntitlements' test.out

#- 268 GetUserEntitlement
samples/cli/sample-apps Platform getUserEntitlement \
    --entitlementId 'z8rFUw7XEOI0JrcF' \
    --namespace $AB_NAMESPACE \
    --userId '1PQ4UAzDxVXqXw2h' \
    > test.out 2>&1
eval_tap $? 268 'GetUserEntitlement' test.out

#- 269 UpdateUserEntitlement
samples/cli/sample-apps Platform updateUserEntitlement \
    --entitlementId 'Osbdmuk4pc36IrxG' \
    --namespace $AB_NAMESPACE \
    --userId 'Ed3XbB6Q1NauBa5i' \
    --body '{"collectionId": "n1oyXONs6sK36ELg", "endDate": "1989-05-08T00:00:00Z", "nullFieldList": ["gzvS2KNRqWERsp0z", "MrUsmnDgZrqBDeBA", "U1k3XQVwEzCWlyqv"], "origin": "Twitch", "reason": "Se2UM0eZJjZw0ngy", "startDate": "1991-10-16T00:00:00Z", "status": "ACTIVE", "useCount": 84}' \
    > test.out 2>&1
eval_tap $? 269 'UpdateUserEntitlement' test.out

#- 270 ConsumeUserEntitlement
samples/cli/sample-apps Platform consumeUserEntitlement \
    --entitlementId 'GcTsBwGaZTBoDaeM' \
    --namespace $AB_NAMESPACE \
    --userId '7U3xXI12SeFbIWSO' \
    --body '{"metadata": {"hQrpnPfwnLlxb866": {}, "ZMWwKXyREjvoMBvY": {}, "tNXicXjEDdIbumIm": {}}, "options": ["xS6s6YR58KGcb7lL", "OJBv8UcFvpcHFCb3", "x9kE0sD689hxxRXA"], "platform": "l8KEQL8kqk3BMIJB", "requestId": "qOk75Mc0Uz72Eoyd", "useCount": 75}' \
    > test.out 2>&1
eval_tap $? 270 'ConsumeUserEntitlement' test.out

#- 271 DisableUserEntitlement
samples/cli/sample-apps Platform disableUserEntitlement \
    --entitlementId 'E4BLicJQpnBmyE5k' \
    --namespace $AB_NAMESPACE \
    --userId 'zWlZFZpREBNDowJ5' \
    > test.out 2>&1
eval_tap $? 271 'DisableUserEntitlement' test.out

#- 272 EnableUserEntitlement
samples/cli/sample-apps Platform enableUserEntitlement \
    --entitlementId '4G3sF2cfD4hCWDgS' \
    --namespace $AB_NAMESPACE \
    --userId 'xgljD5Va79kpPbEL' \
    > test.out 2>&1
eval_tap $? 272 'EnableUserEntitlement' test.out

#- 273 GetUserEntitlementHistories
samples/cli/sample-apps Platform getUserEntitlementHistories \
    --entitlementId 'ZNzpnT5oURj9eZur' \
    --namespace $AB_NAMESPACE \
    --userId 'cYR6BQGMQv3ShRit' \
    > test.out 2>&1
eval_tap $? 273 'GetUserEntitlementHistories' test.out

#- 274 RevokeUserEntitlement
samples/cli/sample-apps Platform revokeUserEntitlement \
    --entitlementId 'aTRd0ufYcQA9HXMC' \
    --namespace $AB_NAMESPACE \
    --userId 'XVRjTd54q1vhm4ov' \
    --body '{"metadata": {"mU7DVPra1Hq5bBCT": {}, "DbDIpdPyrMbxHOyI": {}, "bHvfCOcpLAXPyCFJ": {}}}' \
    > test.out 2>&1
eval_tap $? 274 'RevokeUserEntitlement' test.out

#- 275 RevokeUserEntitlementByUseCount
samples/cli/sample-apps Platform revokeUserEntitlementByUseCount \
    --entitlementId 'XW5ifnzEFE9m3EOM' \
    --namespace $AB_NAMESPACE \
    --userId 't3tdlYqsfN500DTp' \
    --body '{"reason": "CK1bZ063lybrEWb9", "useCount": 64}' \
    > test.out 2>&1
eval_tap $? 275 'RevokeUserEntitlementByUseCount' test.out

#- 276 PreCheckRevokeUserEntitlementByUseCount
samples/cli/sample-apps Platform preCheckRevokeUserEntitlementByUseCount \
    --entitlementId 'SsCetH8fX0bM5mWJ' \
    --namespace $AB_NAMESPACE \
    --userId 'f7yMOuiEQilQDhGU' \
    --quantity '14' \
    > test.out 2>&1
eval_tap $? 276 'PreCheckRevokeUserEntitlementByUseCount' test.out

#- 277 RevokeUseCount
eval_tap 0 277 'RevokeUseCount # SKIP deprecated' test.out

#- 278 SellUserEntitlement
samples/cli/sample-apps Platform sellUserEntitlement \
    --entitlementId 'H7kl9zJ9tw1WfdEL' \
    --namespace $AB_NAMESPACE \
    --userId 'QPkhl5tLLTqHbmQf' \
    --body '{"platform": "kD1MZ45K0TRt9Lba", "requestId": "T3eH9R38Axfh15wu", "useCount": 92}' \
    > test.out 2>&1
eval_tap $? 278 'SellUserEntitlement' test.out

#- 279 FulfillItem
samples/cli/sample-apps Platform fulfillItem \
    --namespace $AB_NAMESPACE \
    --userId 'QrU6435uXfRod5Ik' \
    --body '{"duration": 99, "endDate": "1997-08-18T00:00:00Z", "entitlementCollectionId": "7VmDCcznFNT5mLIY", "entitlementOrigin": "System", "itemId": "iFH3eM3kzSS6b7Kp", "itemSku": "xfRFWj8YhCC3xigL", "language": "48bgidasTjS2xdf2", "metadata": {"6PZqZpl1kbblcLt7": {}, "7h0W2f6MHvNQW9iD": {}, "lwAuhpuzQOSCPbW3": {}}, "order": {"currency": {"currencyCode": "Sibe696MtlunyFN2", "currencySymbol": "Q53uXWrnwswUTigZ", "currencyType": "REAL", "decimals": 62, "namespace": "zlCLEohaSZTwiGNc"}, "ext": {"odA2nBPyiDS0Q8pr": {}, "oGITdIuYLa6biVzi": {}, "QTc3INb5UsRyPqJe": {}}, "free": false}, "orderNo": "3NblFOaGdrxsxuH8", "origin": "GooglePlay", "overrideBundleItemQty": {"0uwysKUZwQNrn31F": 51, "WTzOgNJwYeaxfBq7": 54, "m9grZvIP3Z1N8uVW": 73}, "quantity": 31, "region": "QSjZvJcmT4RUEGVJ", "source": "PURCHASE", "startDate": "1999-04-28T00:00:00Z", "storeId": "uFGjei7VtRWHkmRR"}' \
    > test.out 2>&1
eval_tap $? 279 'FulfillItem' test.out

#- 280 RedeemCode
samples/cli/sample-apps Platform redeemCode \
    --namespace $AB_NAMESPACE \
    --userId 'fcpTbtIv5Uy1dpjA' \
    --body '{"code": "RarCVjs3Q2LoCxou", "language": "axA_Tifp-951", "region": "HS96UXE6paGYDiFr"}' \
    > test.out 2>&1
eval_tap $? 280 'RedeemCode' test.out

#- 281 PreCheckFulfillItem
samples/cli/sample-apps Platform preCheckFulfillItem \
    --namespace $AB_NAMESPACE \
    --userId '4BQTAYTNiQDxHrYj' \
    --body '{"itemId": "NLWShZ840FMKPIck", "itemSku": "5Qw8eISi16tve1ur", "quantity": 50}' \
    > test.out 2>&1
eval_tap $? 281 'PreCheckFulfillItem' test.out

#- 282 FulfillRewards
samples/cli/sample-apps Platform fulfillRewards \
    --namespace $AB_NAMESPACE \
    --userId 'nd0aTVQVadoHu8J0' \
    --body '{"entitlementCollectionId": "m8qCjB92dWr6cTiM", "entitlementOrigin": "Nintendo", "metadata": {"OJEltXENkzg6H3au": {}, "MmExW4IkeCERjZQA": {}, "Gdw46wncFzTf7BVY": {}}, "origin": "Nintendo", "rewards": [{"currency": {"currencyCode": "FRrQF8zIMWcDfmE6", "namespace": "6V2VY457pgfSK4XA"}, "item": {"itemId": "5eTRxGzpiAsJNgmG", "itemName": "xeNmUB28SpDUY53N", "itemSku": "wADglNsPGf2zUfPv", "itemType": "G4hxRAracJZ9jel2"}, "quantity": 85, "type": "CURRENCY"}, {"currency": {"currencyCode": "fSfAvVxbTSdv8BXG", "namespace": "ZEX4nVEVYZbGjG0C"}, "item": {"itemId": "6X7t9oDCBrVgTnu3", "itemName": "uNAS45WdpfWQljKg", "itemSku": "BMUI4zhGHMc0qwsq", "itemType": "uAQRTGYXBiDirV6V"}, "quantity": 38, "type": "ITEM"}, {"currency": {"currencyCode": "FLSnUEGe0xDBI0Hw", "namespace": "onCLxSrF3qI3e35Q"}, "item": {"itemId": "SOz5NYpSfPI49GeZ", "itemName": "9ykZdSA7FgWxRjQ3", "itemSku": "lj8Paxk0mSRxeags", "itemType": "VwirZ86npo9nqQdh"}, "quantity": 35, "type": "CURRENCY"}], "source": "ACHIEVEMENT", "transactionId": "THOAukdqonB0nEJu"}' \
    > test.out 2>&1
eval_tap $? 282 'FulfillRewards' test.out

#- 283 QueryUserIAPOrders
samples/cli/sample-apps Platform queryUserIAPOrders \
    --namespace $AB_NAMESPACE \
    --userId 'w5WCJUTmBAr4amA3' \
    --endTime 'EmOXbReOYblVRqfB' \
    --limit '36' \
    --offset '65' \
    --productId 'P5eNvLr2JTHrivfs' \
    --startTime 'gZEccXTwVaHeFU9d' \
    --status 'FULFILLED' \
    --type 'GOOGLE' \
    > test.out 2>&1
eval_tap $? 283 'QueryUserIAPOrders' test.out

#- 284 QueryAllUserIAPOrders
samples/cli/sample-apps Platform queryAllUserIAPOrders \
    --namespace $AB_NAMESPACE \
    --userId 'Qy4ItYdhX219XOwp' \
    > test.out 2>&1
eval_tap $? 284 'QueryAllUserIAPOrders' test.out

#- 285 QueryUserIAPConsumeHistory
samples/cli/sample-apps Platform queryUserIAPConsumeHistory \
    --namespace $AB_NAMESPACE \
    --userId 'pIo1XVBqnF5Xlxcp' \
    --endTime '1e3ePFZNYDE1uAZk' \
    --limit '57' \
    --offset '32' \
    --startTime '8Zrsc7zdvQOf2oUu' \
    --status 'PENDING' \
    --type 'EPICGAMES' \
    > test.out 2>&1
eval_tap $? 285 'QueryUserIAPConsumeHistory' test.out

#- 286 MockFulfillIAPItem
samples/cli/sample-apps Platform mockFulfillIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'bTizsi3L1jgM5YK5' \
    --body '{"itemIdentityType": "ITEM_ID", "language": "HK-qg", "productId": "kv2CXPi9loL4zAkY", "region": "vn1IFImdK9E1oTpz", "transactionId": "CyFm1PGUg0gmy64k", "type": "PLAYSTATION"}' \
    > test.out 2>&1
eval_tap $? 286 'MockFulfillIAPItem' test.out

#- 287 AdminGetIAPOrderLineItems
samples/cli/sample-apps Platform adminGetIAPOrderLineItems \
    --iapOrderNo 'Xrywy7N9v68Y4rAD' \
    --namespace $AB_NAMESPACE \
    --userId 'exYKEXbWfBLuLquS' \
    > test.out 2>&1
eval_tap $? 287 'AdminGetIAPOrderLineItems' test.out

#- 288 AdminSyncSteamAbnormalTransaction
samples/cli/sample-apps Platform adminSyncSteamAbnormalTransaction \
    --namespace $AB_NAMESPACE \
    --userId 'ZJ0082eApVSM01dM' \
    > test.out 2>&1
eval_tap $? 288 'AdminSyncSteamAbnormalTransaction' test.out

#- 289 AdminSyncSteamIAPByTransaction
samples/cli/sample-apps Platform adminSyncSteamIAPByTransaction \
    --namespace $AB_NAMESPACE \
    --userId 'Iw1yoWO1JY8G0ZP5' \
    --body '{"orderId": "RO761EFac3TAjboD"}' \
    > test.out 2>&1
eval_tap $? 289 'AdminSyncSteamIAPByTransaction' test.out

#- 290 QueryUserThirdPartySubscription
samples/cli/sample-apps Platform queryUserThirdPartySubscription \
    --namespace $AB_NAMESPACE \
    --userId 'wTwybXvFjhcEzUN4' \
    --activeOnly 'false' \
    --groupId 'QpCwyNP60GkxkohN' \
    --limit '28' \
    --offset '30' \
    --platform 'GOOGLE' \
    --productId '7bdskwY7mrPmlYQl' \
    > test.out 2>&1
eval_tap $? 290 'QueryUserThirdPartySubscription' test.out

#- 291 GetThirdPartyPlatformSubscriptionOwnershipByGroupId
samples/cli/sample-apps Platform getThirdPartyPlatformSubscriptionOwnershipByGroupId \
    --namespace $AB_NAMESPACE \
    --platform 'OCULUS' \
    --userId 'mcREyBG2PeaMtG3f' \
    --groupId 'QpIZ1byTNpCU5U1S' \
    > test.out 2>&1
eval_tap $? 291 'GetThirdPartyPlatformSubscriptionOwnershipByGroupId' test.out

#- 292 GetThirdPartyPlatformSubscriptionOwnershipByProductId
samples/cli/sample-apps Platform getThirdPartyPlatformSubscriptionOwnershipByProductId \
    --namespace $AB_NAMESPACE \
    --platform 'OCULUS' \
    --userId 'QwsbtZCQB9COyZN5' \
    --productId '6gY1XnbQGWK1hpp5' \
    > test.out 2>&1
eval_tap $? 292 'GetThirdPartyPlatformSubscriptionOwnershipByProductId' test.out

#- 293 QueryUserThirdPartySubscriptionTransactions
samples/cli/sample-apps Platform queryUserThirdPartySubscriptionTransactions \
    --namespace $AB_NAMESPACE \
    --userId 'C1IugL4fiBVc6lYP' \
    --activeOnly 'true' \
    --groupId '2P4fzk17XZdZ2o2o' \
    --limit '0' \
    --offset '28' \
    --platform 'APPLE' \
    --productId 'GUkOkbAhWRUiacUI' \
    > test.out 2>&1
eval_tap $? 293 'QueryUserThirdPartySubscriptionTransactions' test.out

#- 294 GetThirdPartySubscriptionDetails
samples/cli/sample-apps Platform getThirdPartySubscriptionDetails \
    --id 'dF81JuYfBSkTm1eJ' \
    --namespace $AB_NAMESPACE \
    --userId 'fPQk8f0BQevOLSQE' \
    > test.out 2>&1
eval_tap $? 294 'GetThirdPartySubscriptionDetails' test.out

#- 295 GetSubscriptionHistory
samples/cli/sample-apps Platform getSubscriptionHistory \
    --id '2ZiOcfqe1JutAtKW' \
    --namespace $AB_NAMESPACE \
    --userId 'zkOsgzuO67G7bxtq' \
    --limit '87' \
    --offset '93' \
    > test.out 2>&1
eval_tap $? 295 'GetSubscriptionHistory' test.out

#- 296 SyncSubscriptionTransaction
samples/cli/sample-apps Platform syncSubscriptionTransaction \
    --id 'H0t6LncSba3CpopT' \
    --namespace $AB_NAMESPACE \
    --userId '4W7qAFlZzxBF4Oz4' \
    > test.out 2>&1
eval_tap $? 296 'SyncSubscriptionTransaction' test.out

#- 297 GetThirdPartyUserSubscriptionDetails
samples/cli/sample-apps Platform getThirdPartyUserSubscriptionDetails \
    --id 'uyAehGBpvRNC8kAF' \
    --namespace $AB_NAMESPACE \
    --userId 'dsaaewM0ChbCnEin' \
    > test.out 2>&1
eval_tap $? 297 'GetThirdPartyUserSubscriptionDetails' test.out

#- 298 SyncSubscription
samples/cli/sample-apps Platform syncSubscription \
    --id 'I8xRIcrdsVWtfFd7' \
    --namespace $AB_NAMESPACE \
    --userId 'YqAPZQtY6lz4dIpZ' \
    > test.out 2>&1
eval_tap $? 298 'SyncSubscription' test.out

#- 299 QueryUserOrders
samples/cli/sample-apps Platform queryUserOrders \
    --namespace $AB_NAMESPACE \
    --userId '1xJoX7jTt6Qp6kYW' \
    --discounted 'true' \
    --itemId 'KFF2wdYwSmmLK5L1' \
    --limit '5' \
    --offset '15' \
    --status 'CHARGEBACK' \
    > test.out 2>&1
eval_tap $? 299 'QueryUserOrders' test.out

#- 300 AdminCreateUserOrder
samples/cli/sample-apps Platform adminCreateUserOrder \
    --namespace $AB_NAMESPACE \
    --userId 't5U8Y8ajD3zRb9kD' \
    --body '{"currencyCode": "BsXGNMMrjyuKdapp", "currencyNamespace": "QYuk6XxpSsxGDezs", "discountCodes": ["fJkZXRppztqcq2K6", "L0YQYhnwNwTuFzlf", "P42irvNVSLKBDQNt"], "discountedPrice": 90, "entitlementPlatform": "Epic", "ext": {"EjcEIqn1jlroinWx": {}, "65orOISHnlWbM9JF": {}, "HcP7imu39GTwvgpF": {}}, "itemId": "eqsVPmvWTfzUOHbk", "language": "3tObYo2BngRonlgO", "options": {"skipPriceValidation": false}, "platform": "Epic", "price": 73, "quantity": 56, "region": "hH1uvKf9zpcKEGp8", "returnUrl": "trpmS8WJ6n5Im2lQ", "sandbox": true, "sectionId": "xo6citn1mYEGKnfg"}' \
    > test.out 2>&1
eval_tap $? 300 'AdminCreateUserOrder' test.out

#- 301 CountOfPurchasedItem
samples/cli/sample-apps Platform countOfPurchasedItem \
    --namespace $AB_NAMESPACE \
    --userId 'vJ4pnbyt3uaIM0Wz' \
    --itemId 'UeAmFRpLoe8JXWsG' \
    > test.out 2>&1
eval_tap $? 301 'CountOfPurchasedItem' test.out

#- 302 GetUserOrder
samples/cli/sample-apps Platform getUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'DFp2AUIzA4X5SgWx' \
    --userId 'r4ZFb3GQ4LD1Z812' \
    > test.out 2>&1
eval_tap $? 302 'GetUserOrder' test.out

#- 303 UpdateUserOrderStatus
samples/cli/sample-apps Platform updateUserOrderStatus \
    --namespace $AB_NAMESPACE \
    --orderNo 'IWCCGl6R56sJpR7f' \
    --userId 'CdQ8rPDjsCbLhTv4' \
    --body '{"status": "FULFILLED", "statusReason": "Jeh7VpJbunU5ZSgc"}' \
    > test.out 2>&1
eval_tap $? 303 'UpdateUserOrderStatus' test.out

#- 304 FulfillUserOrder
samples/cli/sample-apps Platform fulfillUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'Jplra0nzdark8oE6' \
    --userId 'IMCM50p24AxGiUNc' \
    > test.out 2>&1
eval_tap $? 304 'FulfillUserOrder' test.out

#- 305 GetUserOrderGrant
eval_tap 0 305 'GetUserOrderGrant # SKIP deprecated' test.out

#- 306 GetUserOrderHistories
samples/cli/sample-apps Platform getUserOrderHistories \
    --namespace $AB_NAMESPACE \
    --orderNo '55Hc8bdjZTBemLbo' \
    --userId 'rVw7ipAm5VPw7Vk3' \
    > test.out 2>&1
eval_tap $? 306 'GetUserOrderHistories' test.out

#- 307 ProcessUserOrderNotification
samples/cli/sample-apps Platform processUserOrderNotification \
    --namespace $AB_NAMESPACE \
    --orderNo 'N25AMlZbhVfXXalN' \
    --userId 'ZVzXkyzlStlNwjni' \
    --body '{"additionalData": {"cardSummary": "OWCzvLgU1Lfymbdt"}, "authorisedTime": "1976-09-18T00:00:00Z", "chargebackReversedTime": "1994-10-17T00:00:00Z", "chargebackTime": "1990-04-29T00:00:00Z", "chargedTime": "1996-08-13T00:00:00Z", "createdTime": "1987-06-11T00:00:00Z", "currency": {"currencyCode": "M02O96yBTAdPo192", "currencySymbol": "o4p3AX9sNstK9udB", "currencyType": "VIRTUAL", "decimals": 37, "namespace": "UCwdt3XTY8eLEwCo"}, "customParameters": {"RixArc97PAcrv1Ni": {}, "eLvo2W7tpxKspgya": {}, "Hp3EXUub4hN6FjmJ": {}}, "extOrderNo": "8OVPOm1m8ZFRgT8J", "extTxId": "ZSdzcCLaOSCk0Kl4", "extUserId": "IhtC0dqGIMeKzNsv", "issuedAt": "1987-07-05T00:00:00Z", "metadata": {"9jwW3TWUIlQsPrv7": "m9Auubuoi0MRQhny", "o5idjvubpG1nJZg2": "C8mQT57lINaKMaaZ", "7i13M4F20OAhNhRT": "LxIq04EOAzDNpwKO"}, "namespace": "lrgF782yX6ZmqWH3", "nonceStr": "wfT7NFSf2nuxeAEy", "paymentData": {"discountAmount": 27, "discountCode": "dPYhk88zYORYy5Ih", "subtotalPrice": 87, "tax": 67, "totalPrice": 97}, "paymentMethod": "dOHEc5RG92pU2GB9", "paymentMethodFee": 21, "paymentOrderNo": "BlvOLH9CnnXXxIx3", "paymentProvider": "WALLET", "paymentProviderFee": 73, "paymentStationUrl": "1CgZR2NxZmjCn8Ln", "price": 2, "refundedTime": "1991-07-16T00:00:00Z", "salesTax": 68, "sandbox": true, "sku": "hCx6OyLmKCYDQNVQ", "status": "AUTHORISED", "statusReason": "awqusQSBPXaoMGIj", "subscriptionId": "muwmdgXEIzM7RZv8", "subtotalPrice": 10, "targetNamespace": "AM2q3Otz7IShMTMn", "targetUserId": "0gmwtAJNwYB8KtVo", "tax": 49, "totalPrice": 90, "totalTax": 33, "txEndTime": "1977-03-13T00:00:00Z", "type": "DOJR18kBAI6x5AJz", "userId": "a9QqjSS3PrOYND2f", "vat": 97}' \
    > test.out 2>&1
eval_tap $? 307 'ProcessUserOrderNotification' test.out

#- 308 DownloadUserOrderReceipt
samples/cli/sample-apps Platform downloadUserOrderReceipt \
    --namespace $AB_NAMESPACE \
    --orderNo 'GiKrp94yycpkMeHH' \
    --userId 'CehLgNwv2kKkQOw5' \
    > test.out 2>&1
eval_tap $? 308 'DownloadUserOrderReceipt' test.out

#- 309 CreateUserPaymentOrder
samples/cli/sample-apps Platform createUserPaymentOrder \
    --namespace $AB_NAMESPACE \
    --userId 'GxP0YuTtOqjM0mQt' \
    --body '{"currencyCode": "4jq5ipV9gTsMTog7", "currencyNamespace": "gWHIgI0jZVueERgM", "customParameters": {"Xqd5EAc58WZaznbE": {}, "HOPecdRfsldUbbTY": {}, "2GGKOVf2PdYsXiHE": {}}, "description": "AwqFiuZ3gQLFQhXO", "extOrderNo": "F6pfxWHJld1fHoYM", "extUserId": "Z64WpnUOefCFTV3L", "itemType": "INGAMEITEM", "language": "Hia-hinu_YX", "metadata": {"kXYaTGbSqA8kDAiE": "F7X3SC7uets2bv7K", "1QkZV8XsBznkhcxO": "DdqSOd202r3q2KWf", "5h1c16DNzrMNpjmX": "2Pb69En147pYNSB1"}, "notifyUrl": "y78TTPCSlzZvw4Z7", "omitNotification": true, "platform": "34xpRuIqqIrweEmH", "price": 15, "recurringPaymentOrderNo": "q5u0kW9JEpBhdKgU", "region": "FmDHcHZku6k0ht3m", "returnUrl": "M1o5sog4FCgQ3qSN", "sandbox": true, "sku": "9t9nCoadpYFklapl", "subscriptionId": "ONyqjJkUx3SzCtOK", "title": "VC06M1KDqjDXUefG"}' \
    > test.out 2>&1
eval_tap $? 309 'CreateUserPaymentOrder' test.out

#- 310 RefundUserPaymentOrder
samples/cli/sample-apps Platform refundUserPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'Q1IhZTJEjri9LZ0Q' \
    --userId 'NCWWOJWcx5dkAs9h' \
    --body '{"description": "9ydu9AC7IHlcjEkC"}' \
    > test.out 2>&1
eval_tap $? 310 'RefundUserPaymentOrder' test.out

#- 311 GetUserPlatformAccountClosureHistories
samples/cli/sample-apps Platform getUserPlatformAccountClosureHistories \
    --namespace $AB_NAMESPACE \
    --userId 'AL77SobJoXqxv1bv' \
    > test.out 2>&1
eval_tap $? 311 'GetUserPlatformAccountClosureHistories' test.out

#- 312 ApplyUserRedemption
samples/cli/sample-apps Platform applyUserRedemption \
    --namespace $AB_NAMESPACE \
    --userId 'dN4l2cYQH7Zae4WA' \
    --body '{"code": "gduAZ1jO0v0LNqSU", "orderNo": "u94q1KBSpD3hngQg"}' \
    > test.out 2>&1
eval_tap $? 312 'ApplyUserRedemption' test.out

#- 313 DoRevocation
samples/cli/sample-apps Platform doRevocation \
    --namespace $AB_NAMESPACE \
    --userId 'vjIGUK72rXWXJO7a' \
    --body '{"meta": {"dh64d2GJrStrhmIg": {}, "vvSVKFJkveKCRS9H": {}, "QRBtAv0KGQaE811v": {}}, "reason": "q5MeZwX7c9PRZNsx", "requestId": "BOd5AD2iOjB7C76o", "revokeEntries": [{"currency": {"balanceOrigin": "Twitch", "currencyCode": "vKzFxKznajtBiryY", "namespace": "0wvYNynw6gVqf2J3"}, "entitlement": {"entitlementId": "Tb9PzFghveE1POV2"}, "item": {"entitlementOrigin": "Xbox", "itemIdentity": "fwAuWWtffozwSENt", "itemIdentityType": "ITEM_ID", "origin": "Oculus"}, "quantity": 49, "type": "ITEM"}, {"currency": {"balanceOrigin": "IOS", "currencyCode": "E93Nrh7dlZLVKQ6F", "namespace": "wHVJ13DNCC14pr4F"}, "entitlement": {"entitlementId": "pNE75HiF9xcANb2k"}, "item": {"entitlementOrigin": "Twitch", "itemIdentity": "b3hE7jmkEOzcN24b", "itemIdentityType": "ITEM_ID", "origin": "Other"}, "quantity": 83, "type": "ITEM"}, {"currency": {"balanceOrigin": "Playstation", "currencyCode": "OPVJBnxbTmB21zsw", "namespace": "HZRprq32NTXl0aVk"}, "entitlement": {"entitlementId": "cooBQPk9bmvZDPD6"}, "item": {"entitlementOrigin": "Epic", "itemIdentity": "8zkTcMlGlftQo9p7", "itemIdentityType": "ITEM_ID", "origin": "Oculus"}, "quantity": 47, "type": "ITEM"}], "source": "DLC", "transactionId": "PhcsfJCpZoLPVZa4"}' \
    > test.out 2>&1
eval_tap $? 313 'DoRevocation' test.out

#- 314 RegisterXblSessions
samples/cli/sample-apps Platform registerXblSessions \
    --namespace $AB_NAMESPACE \
    --userId 'KRRFBgse9oxp5vwm' \
    --body '{"gameSessionId": "pmpTyQAX9xFiu2Id", "payload": {"8xNYlOZgKCfFvCd7": {}, "pGUOEV8ZzI7cz1aN": {}, "knS62nglz5VdL4M9": {}}, "scid": "Yf83cRQwwfeyZBAS", "sessionTemplateName": "32oDVBPlWDfQ50B4"}' \
    > test.out 2>&1
eval_tap $? 314 'RegisterXblSessions' test.out

#- 315 QueryUserSubscriptions
samples/cli/sample-apps Platform queryUserSubscriptions \
    --namespace $AB_NAMESPACE \
    --userId 'MS2djkbtTTTwLNvG' \
    --chargeStatus 'NEVER' \
    --itemId 'iMOWObjJO6gfXT88' \
    --limit '60' \
    --offset '45' \
    --sku 'Pa1469meEHnabJXh' \
    --status 'CANCELLED' \
    --subscribedBy 'USER' \
    > test.out 2>&1
eval_tap $? 315 'QueryUserSubscriptions' test.out

#- 316 GetUserSubscriptionActivities
samples/cli/sample-apps Platform getUserSubscriptionActivities \
    --namespace $AB_NAMESPACE \
    --userId 'YfdqHQC9bwrEXATN' \
    --excludeSystem 'false' \
    --limit '95' \
    --offset '58' \
    --subscriptionId '9KxsfVAAZEi9QlxG' \
    > test.out 2>&1
eval_tap $? 316 'GetUserSubscriptionActivities' test.out

#- 317 PlatformSubscribeSubscription
samples/cli/sample-apps Platform platformSubscribeSubscription \
    --namespace $AB_NAMESPACE \
    --userId 'eGMlCasqS6dHxh3s' \
    --body '{"grantDays": 98, "itemId": "hHNWCIDflUl00sOC", "language": "EVdysB6UIBIoz6VF", "reason": "z2cyyDV9FKcQTr2I", "region": "jpLPrLINF88QfhgW", "source": "ast3DApkmrvrp8BP"}' \
    > test.out 2>&1
eval_tap $? 317 'PlatformSubscribeSubscription' test.out

#- 318 CheckUserSubscriptionSubscribableByItemId
samples/cli/sample-apps Platform checkUserSubscriptionSubscribableByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'fGClFOI8AtP7JL1Q' \
    --itemId 'jcZoSEOqUex6PNKI' \
    > test.out 2>&1
eval_tap $? 318 'CheckUserSubscriptionSubscribableByItemId' test.out

#- 319 GetUserSubscription
samples/cli/sample-apps Platform getUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'i9m2ZtzGkMKDvcAx' \
    --userId 'w7OTspDMOASeOofk' \
    > test.out 2>&1
eval_tap $? 319 'GetUserSubscription' test.out

#- 320 DeleteUserSubscription
samples/cli/sample-apps Platform deleteUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'jGGTaj9qBRZtjzZg' \
    --userId '9NoirJ4TirNuG8XB' \
    > test.out 2>&1
eval_tap $? 320 'DeleteUserSubscription' test.out

#- 321 CancelSubscription
samples/cli/sample-apps Platform cancelSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'nAL9Ceb0slnIxZfl' \
    --userId 'evGKERm8QryCHGXX' \
    --force 'false' \
    --body '{"immediate": true, "reason": "r1rF6ofjqmP8Ybul"}' \
    > test.out 2>&1
eval_tap $? 321 'CancelSubscription' test.out

#- 322 GrantDaysToSubscription
samples/cli/sample-apps Platform grantDaysToSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'F1g6XPpobBX2gP5b' \
    --userId 'ZrVwEpOh17d0Vm3m' \
    --body '{"grantDays": 83, "reason": "Y30WlwEW82EmVJsS"}' \
    > test.out 2>&1
eval_tap $? 322 'GrantDaysToSubscription' test.out

#- 323 GetUserSubscriptionBillingHistories
samples/cli/sample-apps Platform getUserSubscriptionBillingHistories \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'rU9qNkJtkm2QDGhs' \
    --userId 'UsAnqYvHd7LYQ74u' \
    --excludeFree 'true' \
    --limit '41' \
    --offset '81' \
    > test.out 2>&1
eval_tap $? 323 'GetUserSubscriptionBillingHistories' test.out

#- 324 ProcessUserSubscriptionNotification
samples/cli/sample-apps Platform processUserSubscriptionNotification \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'w7kbb1lanjMrxUhD' \
    --userId 'IZ2CxirOjLREWEKi' \
    --body '{"additionalData": {"cardSummary": "yDaepGHTdTTuWEAE"}, "authorisedTime": "1996-11-23T00:00:00Z", "chargebackReversedTime": "1989-06-08T00:00:00Z", "chargebackTime": "1998-03-15T00:00:00Z", "chargedTime": "1979-11-22T00:00:00Z", "createdTime": "1983-03-10T00:00:00Z", "currency": {"currencyCode": "ZZtQhctN7Ct7azUJ", "currencySymbol": "JDMREtHmlpKfFuI6", "currencyType": "REAL", "decimals": 100, "namespace": "FkrBkkX8YhUtVdl4"}, "customParameters": {"QcRzaeZWdc7povWj": {}, "KK4TMUyvnM33PPG9": {}, "o8YCMRpBKCG4VBPK": {}}, "extOrderNo": "usC8ILhi3ysis5KB", "extTxId": "oOa8gAwlv3Og9uj7", "extUserId": "6MExtZa7UQxuUa21", "issuedAt": "1993-04-05T00:00:00Z", "metadata": {"Kilm6LNlC0voJ3AA": "MMJy2ovP2FghVun7", "JiAMMvfOA3OvTStd": "wGQrSbpNE7fM2b4N", "p213Bvpf5iQIunrn": "L5pFlvjjZUl71Bsc"}, "namespace": "iEduCSxsud39zyxu", "nonceStr": "AIP1QEKFk1lYXH4A", "paymentData": {"discountAmount": 97, "discountCode": "kXp5ijyaxqDaeMkD", "subtotalPrice": 57, "tax": 47, "totalPrice": 35}, "paymentMethod": "cwJl8yhPSnPT99Qc", "paymentMethodFee": 62, "paymentOrderNo": "83m5FxdDbeQaGVnl", "paymentProvider": "WXPAY", "paymentProviderFee": 41, "paymentStationUrl": "Q1wTmqUZPakHVNnT", "price": 85, "refundedTime": "1989-09-28T00:00:00Z", "salesTax": 55, "sandbox": false, "sku": "FugUKSxUibsbV4Kt", "status": "CHARGED", "statusReason": "gjbgPfJ6S2XNJ8yC", "subscriptionId": "Mzy3lbpk8wgqzds7", "subtotalPrice": 87, "targetNamespace": "koLsMWRqU4g8rnX8", "targetUserId": "1y4bCrGuOL6Q0Ph1", "tax": 63, "totalPrice": 21, "totalTax": 7, "txEndTime": "1996-03-29T00:00:00Z", "type": "1oOspO3wgexFHHGN", "userId": "QscgQFhsbycmB5FU", "vat": 79}' \
    > test.out 2>&1
eval_tap $? 324 'ProcessUserSubscriptionNotification' test.out

#- 325 AcquireUserTicket
samples/cli/sample-apps Platform acquireUserTicket \
    --boothName 'yOfIwaijPCfM8Hmj' \
    --namespace $AB_NAMESPACE \
    --userId 'oXIkGdMWB5G6v65n' \
    --body '{"count": 47, "orderNo": "PXteHGiKOhLN4dkd"}' \
    > test.out 2>&1
eval_tap $? 325 'AcquireUserTicket' test.out

#- 326 QueryUserCurrencyWallets
samples/cli/sample-apps Platform queryUserCurrencyWallets \
    --namespace $AB_NAMESPACE \
    --userId 'Cc2X0pnkdlprdXC5' \
    > test.out 2>&1
eval_tap $? 326 'QueryUserCurrencyWallets' test.out

#- 327 DebitUserWalletByCurrencyCode
samples/cli/sample-apps Platform debitUserWalletByCurrencyCode \
    --currencyCode 'oAUwEByCZLFszzoH' \
    --namespace $AB_NAMESPACE \
    --userId 'h715DZ6cXgqf6Wrw' \
    --body '{"allowOverdraft": false, "amount": 28, "balanceOrigin": "GooglePlay", "balanceSource": "PAYMENT", "metadata": {"ZFv0KiNox8jONfsv": {}, "hS0Rbe2xXPJdLfWO": {}, "AxdTzmoE6pZw16g0": {}}, "reason": "hm7oKFgcylWe2Ldc"}' \
    > test.out 2>&1
eval_tap $? 327 'DebitUserWalletByCurrencyCode' test.out

#- 328 ListUserCurrencyTransactions
samples/cli/sample-apps Platform listUserCurrencyTransactions \
    --currencyCode 'HyjlZrMMGf5gfS7l' \
    --namespace $AB_NAMESPACE \
    --userId 'p0uRdZ78YCo9zDTa' \
    --limit '71' \
    --offset '60' \
    > test.out 2>&1
eval_tap $? 328 'ListUserCurrencyTransactions' test.out

#- 329 CheckBalance
samples/cli/sample-apps Platform checkBalance \
    --currencyCode 'UJf6XSXiiwri2WTF' \
    --namespace $AB_NAMESPACE \
    --userId '5NDIm4ZShYUI5n7Y' \
    --request '{"amount": 93, "debitBalanceSource": "IAP_REVOCATION", "metadata": {"oUyuMTy7eYeW8Kuv": {}, "s3f6fGoCS023AxFZ": {}, "pdnq7uXhn81cYr63": {}}, "reason": "W9tHaNGTnLj9pFK9", "walletPlatform": "Epic"}' \
    > test.out 2>&1
eval_tap $? 329 'CheckBalance' test.out

#- 330 CheckWallet
eval_tap 0 330 'CheckWallet # SKIP deprecated' test.out

#- 331 CreditUserWallet
samples/cli/sample-apps Platform creditUserWallet \
    --currencyCode '8vTk6T4UdhI04kNX' \
    --namespace $AB_NAMESPACE \
    --userId 'D2v25fiS735Pdv9I' \
    --body '{"amount": 2, "expireAt": "1973-09-12T00:00:00Z", "metadata": {"gg1lZo6B07nPbwiT": {}, "0Bgsa0iv1z0d8lmw": {}, "0vZ0YWqD4q3VfXKx": {}}, "origin": "Nintendo", "reason": "VWDfhjO4G1Wki6jp", "source": "REDEEM_CODE"}' \
    > test.out 2>&1
eval_tap $? 331 'CreditUserWallet' test.out

#- 332 DebitByWalletPlatform
samples/cli/sample-apps Platform debitByWalletPlatform \
    --currencyCode 'NCU61ibaw6HUdSlW' \
    --namespace $AB_NAMESPACE \
    --userId '0yd70SCh8MkesxqA' \
    --request '{"amount": 44, "debitBalanceSource": "DLC_REVOCATION", "metadata": {"o1lF2uOFZleyY4d5": {}, "IgHzwNZNNhGWtLhe": {}, "2cBwkfhhCW0U0EqF": {}}, "reason": "6M6weYoKkthbdzYP", "walletPlatform": "Nintendo"}' \
    > test.out 2>&1
eval_tap $? 332 'DebitByWalletPlatform' test.out

#- 333 PayWithUserWallet
samples/cli/sample-apps Platform payWithUserWallet \
    --currencyCode 'LsiXIqIsaststbwT' \
    --namespace $AB_NAMESPACE \
    --userId 'qP1qMoLdHbC6OQYD' \
    --body '{"amount": 35, "metadata": {"13h17e4AHOovtofP": {}, "Ef6wiCueSOVJ3qs2": {}, "YASHZoXbIihZ1IBM": {}}, "walletPlatform": "Playstation"}' \
    > test.out 2>&1
eval_tap $? 333 'PayWithUserWallet' test.out

#- 334 GetUserWallet
eval_tap 0 334 'GetUserWallet # SKIP deprecated' test.out

#- 335 DebitUserWallet
eval_tap 0 335 'DebitUserWallet # SKIP deprecated' test.out

#- 336 DisableUserWallet
eval_tap 0 336 'DisableUserWallet # SKIP deprecated' test.out

#- 337 EnableUserWallet
eval_tap 0 337 'EnableUserWallet # SKIP deprecated' test.out

#- 338 ListUserWalletTransactions
eval_tap 0 338 'ListUserWalletTransactions # SKIP deprecated' test.out

#- 339 ListViews
samples/cli/sample-apps Platform listViews \
    --namespace $AB_NAMESPACE \
    --storeId 'lTqvsxw11Ecgrpw9' \
    > test.out 2>&1
eval_tap $? 339 'ListViews' test.out

#- 340 CreateView
samples/cli/sample-apps Platform createView \
    --namespace $AB_NAMESPACE \
    --storeId 'R8G3LHPA1axGavtg' \
    --body '{"displayOrder": 67, "localizations": {"CbnuV1prYn8eS9hK": {"description": "6GQF8I08mo5NgltW", "localExt": {"6Q8KwDsjU9MRbotQ": {}, "f68qUb9549AYO3eQ": {}, "tHRIKnQrL93QqcaJ": {}}, "longDescription": "IxXpvKioWC8NOqs6", "title": "JYe3r5ORjGAuZjtB"}, "jnQXircUZ2iaUKwX": {"description": "om8kevZNVKgG0ZQe", "localExt": {"9EWue4BPv8pw0Sjn": {}, "6syDd3Jtw6VxeZ6n": {}, "ngoBvP6ka4bikkj4": {}}, "longDescription": "sfdeasi17mChDPON", "title": "xPQRuoKeSZ5fEpWc"}, "MTvzwZpHHqBhLMdr": {"description": "gVvVYR6VNcOSFEOp", "localExt": {"zcLhZDBR2Fb0J3Tq": {}, "zNtn60LyFeuV9Ysm": {}, "JUoVrmjdIg3lFaAM": {}}, "longDescription": "ZkOxgp4g0FsQ3q2X", "title": "V4scxkTuW6Jw4hrw"}}, "name": "9bqSZTx5lrdjrN2d"}' \
    > test.out 2>&1
eval_tap $? 340 'CreateView' test.out

#- 341 GetView
samples/cli/sample-apps Platform getView \
    --namespace $AB_NAMESPACE \
    --viewId '7qqanmADSzHfbXjV' \
    --storeId 'fIBC8TF0NePVNuQB' \
    > test.out 2>&1
eval_tap $? 341 'GetView' test.out

#- 342 UpdateView
samples/cli/sample-apps Platform updateView \
    --namespace $AB_NAMESPACE \
    --viewId 'zJzCn4V2GlhkKM1D' \
    --storeId 'XSPVGSXbw76yk6XU' \
    --body '{"displayOrder": 22, "localizations": {"hgfUFsWKMzXYfIEy": {"description": "DNEwBZSGuwHhKATW", "localExt": {"f8JMLleR9TnpdMcL": {}, "Er4aPKzdmalsoaQl": {}, "NLbrRQzkA9jebO7w": {}}, "longDescription": "owqdyfPsTae2ltJ5", "title": "hUtn0nhrZRxcXO3o"}, "qUxucE5lz6hUauN7": {"description": "dvM0qeRc26Gf8Hhk", "localExt": {"oRyYxhAkQZNTGORf": {}, "WjXFpSg4e8PAMJy1": {}, "AtP0i5b6XMUMoHNy": {}}, "longDescription": "V5evBwigrQ2vKVwM", "title": "NA5MDdbd5rlt6Y18"}, "eLgyGmMapWN7kiKj": {"description": "SDnzeJIKJb2focMg", "localExt": {"9xdyCQAJ9HyBIlO7": {}, "yTLGZOnaHbOcOioc": {}, "jCLtbg2jvkb789Np": {}}, "longDescription": "3O6HcHaWzLMrnQMT", "title": "FtCeFwkkXLTx1Egi"}}, "name": "mr0xpa5e41dUMoUX"}' \
    > test.out 2>&1
eval_tap $? 342 'UpdateView' test.out

#- 343 DeleteView
samples/cli/sample-apps Platform deleteView \
    --namespace $AB_NAMESPACE \
    --viewId 'ZeTLwCHYvoTgf1kM' \
    --storeId 'XMiX4IFk3HnZYHIc' \
    > test.out 2>&1
eval_tap $? 343 'DeleteView' test.out

#- 344 GetWalletConfig
samples/cli/sample-apps Platform getWalletConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 344 'GetWalletConfig' test.out

#- 345 UpdateWalletConfig
samples/cli/sample-apps Platform updateWalletConfig \
    --namespace $AB_NAMESPACE \
    --body '{"enablePaidForVCExpiration": false}' \
    > test.out 2>&1
eval_tap $? 345 'UpdateWalletConfig' test.out

#- 346 QueryWallets
eval_tap 0 346 'QueryWallets # SKIP deprecated' test.out

#- 347 BulkCredit
samples/cli/sample-apps Platform bulkCredit \
    --namespace $AB_NAMESPACE \
    --body '[{"creditRequest": {"amount": 89, "expireAt": "1980-07-03T00:00:00Z", "metadata": {"UUsB8hSaQp1jdN5E": {}, "yAxB47YtvGcZlxhc": {}, "tv0eBSupgqfNBGqP": {}}, "origin": "Epic", "reason": "oi1GMoIbOjhv8bGn", "source": "PROMOTION"}, "currencyCode": "8Fy68Vy5N2K9OGsV", "userIds": ["deJG2188rkEMZFCw", "9TJvVufRVPlKJaXm", "AaKfi8sSszSdLEWP"]}, {"creditRequest": {"amount": 78, "expireAt": "1997-06-30T00:00:00Z", "metadata": {"Kj5dYhmwllhfuI72": {}, "2d7XOR6Lmz2ibWzV": {}, "1IMDvSdk7nNIjEw8": {}}, "origin": "Playstation", "reason": "T651sU4NwbGnI5mE", "source": "REFUND"}, "currencyCode": "6pKkR3N7RrrWAn4i", "userIds": ["7fxdquYwTiYXQL8U", "gPGEzce4T8C1XRaJ", "ImJTAd66RioxyxC7"]}, {"creditRequest": {"amount": 5, "expireAt": "1997-11-14T00:00:00Z", "metadata": {"dCfqDJWVCwEtXrNP": {}, "r5gOtUCKIh81XSeG": {}, "HtnLg1z5EjihXZUQ": {}}, "origin": "Playstation", "reason": "XO2exiRKU80Q3dcO", "source": "CONSUME_ENTITLEMENT"}, "currencyCode": "xj1TcE6ow49jQhC5", "userIds": ["7Y1H19YpWiOy22Ng", "u7mfq59ekst1nwoW", "Iv5v8iMq1xEqIdHq"]}]' \
    > test.out 2>&1
eval_tap $? 347 'BulkCredit' test.out

#- 348 BulkDebit
samples/cli/sample-apps Platform bulkDebit \
    --namespace $AB_NAMESPACE \
    --body '[{"currencyCode": "0xaTXWLxcOg4B6nZ", "request": {"allowOverdraft": false, "amount": 72, "balanceOrigin": "Steam", "balanceSource": "OTHER", "metadata": {"OUihHppgWRCJZCA9": {}, "nZxiYreUdTqVpBSz": {}, "B7TF6gPmg14pztYE": {}}, "reason": "1xePZd0y9K42ipig"}, "userIds": ["Dx2epfAwVZ1arIcK", "FEKHBo9cMVgT0Yge", "h1YhgpeIfEoCo1mH"]}, {"currencyCode": "Wv46QjUveVAAZhdh", "request": {"allowOverdraft": false, "amount": 80, "balanceOrigin": "Oculus", "balanceSource": "EXPIRATION", "metadata": {"ELJu2ZuSxRbSEX27": {}, "6u5dFqFFPh5a5hLg": {}, "dVIjGnDWZ1jOCMib": {}}, "reason": "oooaFtI2r4sB9ikB"}, "userIds": ["ZYUWglJBCdB1Yqa6", "ngPArQMinEXlGCYM", "mvph2Lg3L97Y5Iwa"]}, {"currencyCode": "U61MkOxyjwn4bTLC", "request": {"allowOverdraft": false, "amount": 91, "balanceOrigin": "Playstation", "balanceSource": "TRADE", "metadata": {"01J8DJ65uglqaCEm": {}, "GULUnejxx51IWj4d": {}, "XozK3wBKelR2TBHt": {}}, "reason": "mW81qt38xjBT5miN"}, "userIds": ["lGhGexF1YKqjUZOQ", "Oa0cYSgTFRDc2vP8", "7orcsEajIqa79Jpq"]}]' \
    > test.out 2>&1
eval_tap $? 348 'BulkDebit' test.out

#- 349 GetWallet
eval_tap 0 349 'GetWallet # SKIP deprecated' test.out

#- 350 SyncOrders
samples/cli/sample-apps Platform syncOrders \
    --nextEvaluatedKey 'iPAflMgLwm9UE5W1' \
    --end 'fdqdokU8xSn0strI' \
    --start 'SMfOxfFm8DCfc4kK' \
    > test.out 2>&1
eval_tap $? 350 'SyncOrders' test.out

#- 351 TestAdyenConfig
samples/cli/sample-apps Platform testAdyenConfig \
    --sandbox 'true' \
    --body '{"allowedPaymentMethods": ["aTR9NzHnTDmm2Ixm", "TPPEqBYu4PtvbgwM", "yW4fO0vX1RRWMaO9"], "apiKey": "xJaaIGBbZ2lN0XZL", "authoriseAsCapture": false, "blockedPaymentMethods": ["pbuuxgL201mhJ2Vb", "qdChQ8bYI4v5o5en", "4h7hwlxH9yQfYuXe"], "clientKey": "7LQiTnaKEfsuC84M", "dropInSettings": "KKIy9sStKBpHffhH", "liveEndpointUrlPrefix": "f2oBshs08pUAALah", "merchantAccount": "4hgUuibvGTZ5ZIVm", "notificationHmacKey": "jelEWHg1yWbZDXBy", "notificationPassword": "UJAD3WRnMVbbNyR1", "notificationUsername": "I6bu2g8JAx0jXSom", "returnUrl": "B8d5w1lkjPhNH5L5", "settings": "4rBDkq6knA1qS1RM"}' \
    > test.out 2>&1
eval_tap $? 351 'TestAdyenConfig' test.out

#- 352 TestAliPayConfig
samples/cli/sample-apps Platform testAliPayConfig \
    --sandbox 'false' \
    --body '{"appId": "hanLcSn6qz7HMu7b", "privateKey": "m1kqpXyrb60QQNNb", "publicKey": "B5SrM3ABW0rbKUiX", "returnUrl": "1tkRtWvQIUPacBQD"}' \
    > test.out 2>&1
eval_tap $? 352 'TestAliPayConfig' test.out

#- 353 TestCheckoutConfig
samples/cli/sample-apps Platform testCheckoutConfig \
    --sandbox 'false' \
    --body '{"publicKey": "1SJH1LT4u0pKDnjp", "secretKey": "xr2rFJUVYMN24K7w"}' \
    > test.out 2>&1
eval_tap $? 353 'TestCheckoutConfig' test.out

#- 354 DebugMatchedPaymentMerchantConfig
samples/cli/sample-apps Platform debugMatchedPaymentMerchantConfig \
    --namespace 'HGvxUD8TR37E16uW' \
    --region 'LRtK0u3ueoWehemk' \
    > test.out 2>&1
eval_tap $? 354 'DebugMatchedPaymentMerchantConfig' test.out

#- 355 TestNeonPayConfig
samples/cli/sample-apps Platform testNeonPayConfig \
    --sandbox 'false' \
    --body '{"apiKey": "HzHKwSSvYmUvInjb", "webhookSecretKey": "SqkYIUiGXMpfKZAc"}' \
    > test.out 2>&1
eval_tap $? 355 'TestNeonPayConfig' test.out

#- 356 TestPayPalConfig
samples/cli/sample-apps Platform testPayPalConfig \
    --sandbox 'true' \
    --body '{"clientID": "7TZmTJQJHuOafYTV", "clientSecret": "Vy9hHx8qxI13LvjX", "returnUrl": "r6fmQWVll0INXyEM", "webHookId": "YTsaUqPaARFDPobX"}' \
    > test.out 2>&1
eval_tap $? 356 'TestPayPalConfig' test.out

#- 357 TestStripeConfig
samples/cli/sample-apps Platform testStripeConfig \
    --sandbox 'true' \
    --body '{"allowedPaymentMethodTypes": ["3huzme0MSqTqTq3k", "9kDyOAbLtHIEUztr", "STQn45hhEZ0RnD4m"], "publishableKey": "TMzuGzMuwgQ4DBsA", "secretKey": "ioQTZMbl7GvZQvUn", "webhookSecret": "5seqz0drjRtxb7I5"}' \
    > test.out 2>&1
eval_tap $? 357 'TestStripeConfig' test.out

#- 358 TestWxPayConfig
samples/cli/sample-apps Platform testWxPayConfig \
    --body '{"appId": "4pElsgwqbFvUyu2y", "key": "1aqfOtCMBSxUh98s", "mchid": "ha8kDsrn6kua6VUW", "returnUrl": "W6bewCr12UmL2J5h"}' \
    > test.out 2>&1
eval_tap $? 358 'TestWxPayConfig' test.out

#- 359 TestXsollaConfig
samples/cli/sample-apps Platform testXsollaConfig \
    --body '{"apiKey": "Q0H1Z8kquZVYMF5m", "flowCompletionUrl": "CPhPmhsqMcWDgxzu", "merchantId": 5, "projectId": 51, "projectSecretKey": "71OESZ3FmcEKDFtk"}' \
    > test.out 2>&1
eval_tap $? 359 'TestXsollaConfig' test.out

#- 360 GetPaymentMerchantConfig1
samples/cli/sample-apps Platform getPaymentMerchantConfig1 \
    --id 'HHzy1qFzDO3xlhGK' \
    > test.out 2>&1
eval_tap $? 360 'GetPaymentMerchantConfig1' test.out

#- 361 UpdateAdyenConfig
samples/cli/sample-apps Platform updateAdyenConfig \
    --id 'oD6zK6cjK6pgdsq4' \
    --sandbox 'true' \
    --validate 'false' \
    --body '{"allowedPaymentMethods": ["Tu69dlcDB6ZhsMwl", "MtKKPDQ0aEEwG3Pg", "Maghgq83DyUETUUf"], "apiKey": "8lO8n9luEXEz6tde", "authoriseAsCapture": false, "blockedPaymentMethods": ["mw1IdEnW6LoioPI2", "WGDu9NotTt92IIPl", "yQ4ig5YpXULCU072"], "clientKey": "zqXTTH6CUV8s5fXi", "dropInSettings": "1pHdIUqADQY3vtqJ", "liveEndpointUrlPrefix": "zcAkXgrqky7ZFOQd", "merchantAccount": "OojgmJHYVZOcWWzI", "notificationHmacKey": "VJ8JDG70dvgmea8w", "notificationPassword": "hNgrhwn95OzXLs9w", "notificationUsername": "kj2TkefGWJYahBQ9", "returnUrl": "Zzyc3O0YJZZqpJi3", "settings": "YS65cbkbw8T6ARxK"}' \
    > test.out 2>&1
eval_tap $? 361 'UpdateAdyenConfig' test.out

#- 362 TestAdyenConfigById
samples/cli/sample-apps Platform testAdyenConfigById \
    --id '3of1Pbdfo0I9FZPg' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 362 'TestAdyenConfigById' test.out

#- 363 UpdateAliPayConfig
samples/cli/sample-apps Platform updateAliPayConfig \
    --id 'eoldkaPgBOeTvNdC' \
    --sandbox 'true' \
    --validate 'false' \
    --body '{"appId": "TXuDVOI3D43mTlVA", "privateKey": "RO6JZAM4W9NLvrDS", "publicKey": "5InSxisv2z1HC7JN", "returnUrl": "foLMnZRUqzMniLXT"}' \
    > test.out 2>&1
eval_tap $? 363 'UpdateAliPayConfig' test.out

#- 364 TestAliPayConfigById
samples/cli/sample-apps Platform testAliPayConfigById \
    --id 'adfZsQHpYIkLLz2q' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 364 'TestAliPayConfigById' test.out

#- 365 UpdateCheckoutConfig
samples/cli/sample-apps Platform updateCheckoutConfig \
    --id 'fVzbVTWgeWFLifsx' \
    --sandbox 'false' \
    --validate 'true' \
    --body '{"publicKey": "wS5RSPpdgR2NAbDi", "secretKey": "QYVSAI8UbvXslwSc"}' \
    > test.out 2>&1
eval_tap $? 365 'UpdateCheckoutConfig' test.out

#- 366 TestCheckoutConfigById
samples/cli/sample-apps Platform testCheckoutConfigById \
    --id 'e65zZI80JZOrNhDT' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 366 'TestCheckoutConfigById' test.out

#- 367 UpdateNeonPayConfig
samples/cli/sample-apps Platform updateNeonPayConfig \
    --id 'K9jye5Bz4qDs2jfM' \
    --sandbox 'true' \
    --validate 'true' \
    --body '{"apiKey": "rrdAlfcAEHRqoslf", "webhookSecretKey": "lY6O2PyqWpm6knRt"}' \
    > test.out 2>&1
eval_tap $? 367 'UpdateNeonPayConfig' test.out

#- 368 TestNeonPayConfigById
samples/cli/sample-apps Platform testNeonPayConfigById \
    --id 'adf4TEu7lIRqXTTe' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 368 'TestNeonPayConfigById' test.out

#- 369 UpdatePayPalConfig
samples/cli/sample-apps Platform updatePayPalConfig \
    --id 'GkBZgRJ9xqe8kIZm' \
    --sandbox 'false' \
    --validate 'true' \
    --body '{"clientID": "fIXLU7JTwWTqh3SB", "clientSecret": "FEveshs5HQi7B74A", "returnUrl": "XtQgxbcNr8Hr8veX", "webHookId": "k8mhPB1ndqzOC7pa"}' \
    > test.out 2>&1
eval_tap $? 369 'UpdatePayPalConfig' test.out

#- 370 TestPayPalConfigById
samples/cli/sample-apps Platform testPayPalConfigById \
    --id 'GTX0SdxDVI8iWgBc' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 370 'TestPayPalConfigById' test.out

#- 371 UpdateStripeConfig
samples/cli/sample-apps Platform updateStripeConfig \
    --id 'TPjqkkKMtPScYkWn' \
    --sandbox 'true' \
    --validate 'false' \
    --body '{"allowedPaymentMethodTypes": ["oPgBXjG3vOhjWhQk", "fkoM1ORyJwAN1J2t", "v9conQi1KyQOZkDg"], "publishableKey": "yAyIiPNoHFIQDOtC", "secretKey": "sMgzBXeiMAKlfZAB", "webhookSecret": "lucWWGIvnEcbvLrU"}' \
    > test.out 2>&1
eval_tap $? 371 'UpdateStripeConfig' test.out

#- 372 TestStripeConfigById
samples/cli/sample-apps Platform testStripeConfigById \
    --id 'bAOR5GkYt6lQHdGH' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 372 'TestStripeConfigById' test.out

#- 373 UpdateWxPayConfig
samples/cli/sample-apps Platform updateWxPayConfig \
    --id 'N7j9zsqfFnlvjLAs' \
    --validate 'true' \
    --body '{"appId": "iwoJBWrMqMgsFch7", "key": "Q8okyEIfjP2DEm4c", "mchid": "ZAn9ylDei3fwn34f", "returnUrl": "stqME77sh8QjPD98"}' \
    > test.out 2>&1
eval_tap $? 373 'UpdateWxPayConfig' test.out

#- 374 UpdateWxPayConfigCert
samples/cli/sample-apps Platform updateWxPayConfigCert \
    --id 'U5VBNKwNI5ijy7Gg' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 374 'UpdateWxPayConfigCert' test.out

#- 375 TestWxPayConfigById
samples/cli/sample-apps Platform testWxPayConfigById \
    --id 'DveOMeq6EcNdTnz2' \
    > test.out 2>&1
eval_tap $? 375 'TestWxPayConfigById' test.out

#- 376 UpdateXsollaConfig
samples/cli/sample-apps Platform updateXsollaConfig \
    --id 'b2s52Kb6QkC8hND9' \
    --validate 'true' \
    --body '{"apiKey": "F1YNnOhBmSUihq2z", "flowCompletionUrl": "RD2Ov6TVeymoz74X", "merchantId": 45, "projectId": 79, "projectSecretKey": "pEUwafRq2eIZrB21"}' \
    > test.out 2>&1
eval_tap $? 376 'UpdateXsollaConfig' test.out

#- 377 TestXsollaConfigById
samples/cli/sample-apps Platform testXsollaConfigById \
    --id 'GvlviLCxNQCGXVTd' \
    > test.out 2>&1
eval_tap $? 377 'TestXsollaConfigById' test.out

#- 378 UpdateXsollaUIConfig
samples/cli/sample-apps Platform updateXsollaUIConfig \
    --id 'Vcp3XhWOfEYCOOQ4' \
    --body '{"device": "DESKTOP", "showCloseButton": true, "size": "LARGE", "theme": "DEFAULT"}' \
    > test.out 2>&1
eval_tap $? 378 'UpdateXsollaUIConfig' test.out

#- 379 QueryPaymentProviderConfig
samples/cli/sample-apps Platform queryPaymentProviderConfig \
    --limit '40' \
    --namespace 'l2jggzTWOw04y6uT' \
    --offset '76' \
    --region 'alihEmx1VKL4j9mj' \
    > test.out 2>&1
eval_tap $? 379 'QueryPaymentProviderConfig' test.out

#- 380 CreatePaymentProviderConfig
samples/cli/sample-apps Platform createPaymentProviderConfig \
    --body '{"aggregate": "ADYEN", "namespace": "VVk5VCAEKyhZ8Oek", "region": "SCt5ZfkS6SDvWaW5", "sandboxTaxJarApiToken": "K8mk29MEZSoTRPqU", "specials": ["ADYEN", "WALLET", "ALIPAY"], "taxJarApiToken": "9i3sP0uI6chY7qT6", "taxJarEnabled": true, "useGlobalTaxJarApiToken": true}' \
    > test.out 2>&1
eval_tap $? 380 'CreatePaymentProviderConfig' test.out

#- 381 GetAggregatePaymentProviders
samples/cli/sample-apps Platform getAggregatePaymentProviders \
    > test.out 2>&1
eval_tap $? 381 'GetAggregatePaymentProviders' test.out

#- 382 DebugMatchedPaymentProviderConfig
samples/cli/sample-apps Platform debugMatchedPaymentProviderConfig \
    --namespace '4UfZZ9mZzDCST6uF' \
    --region 'OMR0xFvABEZxxgBc' \
    > test.out 2>&1
eval_tap $? 382 'DebugMatchedPaymentProviderConfig' test.out

#- 383 GetSpecialPaymentProviders
samples/cli/sample-apps Platform getSpecialPaymentProviders \
    > test.out 2>&1
eval_tap $? 383 'GetSpecialPaymentProviders' test.out

#- 384 UpdatePaymentProviderConfig
samples/cli/sample-apps Platform updatePaymentProviderConfig \
    --id '5xkMCIWbDP3L0rxa' \
    --body '{"aggregate": "STRIPE", "namespace": "kothlUDPERl3tJfU", "region": "d2P21WRfdiCKWlKP", "sandboxTaxJarApiToken": "t3Y1Vcp96hj3mWQW", "specials": ["PAYPAL", "ADYEN", "NEONPAY"], "taxJarApiToken": "DATWOIIF665GCPmp", "taxJarEnabled": true, "useGlobalTaxJarApiToken": true}' \
    > test.out 2>&1
eval_tap $? 384 'UpdatePaymentProviderConfig' test.out

#- 385 DeletePaymentProviderConfig
samples/cli/sample-apps Platform deletePaymentProviderConfig \
    --id 'JrDjbZnsnKj08KNu' \
    > test.out 2>&1
eval_tap $? 385 'DeletePaymentProviderConfig' test.out

#- 386 GetPaymentTaxConfig
samples/cli/sample-apps Platform getPaymentTaxConfig \
    > test.out 2>&1
eval_tap $? 386 'GetPaymentTaxConfig' test.out

#- 387 UpdatePaymentTaxConfig
samples/cli/sample-apps Platform updatePaymentTaxConfig \
    --body '{"sandboxTaxJarApiToken": "udw221t1Pl5Wtapm", "taxJarApiToken": "CqlAb9NRzWsaA2wV", "taxJarEnabled": false, "taxJarProductCodesMapping": {"3AQVZVVa5SywiPv3": "LIY9p36WUphRfRWm", "GydV1oKJuXe4Gsk2": "3w7tBdMeOToYq8BP", "OuQJ7n27Y4Uc8rsk": "Wkrv5jh2wo2aXB5Z"}}' \
    > test.out 2>&1
eval_tap $? 387 'UpdatePaymentTaxConfig' test.out

#- 388 SyncPaymentOrders
samples/cli/sample-apps Platform syncPaymentOrders \
    --nextEvaluatedKey 'GKfAn8UsREdvcnze' \
    --end 's9CaV4z1xCzHGLUl' \
    --start 'QatkT45Qm3yC859J' \
    > test.out 2>&1
eval_tap $? 388 'SyncPaymentOrders' test.out

#- 389 PublicGetRootCategories
samples/cli/sample-apps Platform publicGetRootCategories \
    --namespace $AB_NAMESPACE \
    --language 'VcDAYBWcW65xvCrn' \
    --storeId 'xiPUxw1aQjhjsy4X' \
    > test.out 2>&1
eval_tap $? 389 'PublicGetRootCategories' test.out

#- 390 DownloadCategories
samples/cli/sample-apps Platform downloadCategories \
    --namespace $AB_NAMESPACE \
    --language 'e0P3yHgG30CFbJIn' \
    --storeId 'Oi7jNQMkPjf1P57C' \
    > test.out 2>&1
eval_tap $? 390 'DownloadCategories' test.out

#- 391 PublicGetCategory
samples/cli/sample-apps Platform publicGetCategory \
    --categoryPath 'LhG8oQkBC3Qe73wz' \
    --namespace $AB_NAMESPACE \
    --language 'VSuyi5xASnL66XHY' \
    --storeId 'VTpeAUYI16uoPqRd' \
    > test.out 2>&1
eval_tap $? 391 'PublicGetCategory' test.out

#- 392 PublicGetChildCategories
samples/cli/sample-apps Platform publicGetChildCategories \
    --categoryPath 'l0XtpH5OROnC1QHf' \
    --namespace $AB_NAMESPACE \
    --language '1LP8SiEKihyhL3q5' \
    --storeId '3uQOaVvjHHoTfXN6' \
    > test.out 2>&1
eval_tap $? 392 'PublicGetChildCategories' test.out

#- 393 PublicGetDescendantCategories
samples/cli/sample-apps Platform publicGetDescendantCategories \
    --categoryPath 'toRWvODeKTvtqsNH' \
    --namespace $AB_NAMESPACE \
    --language '0dvUke2FnoI9xigI' \
    --storeId 'cQk7MXsxHl4kCHvU' \
    > test.out 2>&1
eval_tap $? 393 'PublicGetDescendantCategories' test.out

#- 394 PublicListCurrencies
samples/cli/sample-apps Platform publicListCurrencies \
    --namespace $AB_NAMESPACE \
    --currencyType 'REAL' \
    > test.out 2>&1
eval_tap $? 394 'PublicListCurrencies' test.out

#- 395 GeDLCDurableRewardShortMap
samples/cli/sample-apps Platform geDLCDurableRewardShortMap \
    --namespace $AB_NAMESPACE \
    --dlcType 'PSN' \
    > test.out 2>&1
eval_tap $? 395 'GeDLCDurableRewardShortMap' test.out

#- 396 GetAppleConfigVersion
samples/cli/sample-apps Platform getAppleConfigVersion \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 396 'GetAppleConfigVersion' test.out

#- 397 GetIAPItemMapping
samples/cli/sample-apps Platform getIAPItemMapping \
    --namespace $AB_NAMESPACE \
    --platform 'APPLE' \
    > test.out 2>&1
eval_tap $? 397 'GetIAPItemMapping' test.out

#- 398 PublicGetItemByAppId
samples/cli/sample-apps Platform publicGetItemByAppId \
    --namespace $AB_NAMESPACE \
    --language 'CRUa41dDU3BlZUbH' \
    --region 'uFN8XY2IyRwgP0cR' \
    --storeId 'PYvUqIYzM8TJ1Rcn' \
    --appId 'feSVC8WpeYGcnn4B' \
    > test.out 2>&1
eval_tap $? 398 'PublicGetItemByAppId' test.out

#- 399 PublicQueryItems
samples/cli/sample-apps Platform publicQueryItems \
    --namespace $AB_NAMESPACE \
    --appType 'DEMO' \
    --autoCalcEstimatedPrice 'true' \
    --baseAppId 'oXPhgKr44eVGn6BS' \
    --categoryPath 'dHUS4MzHBR1bc4Oc' \
    --features 'fNwYQuADIytLhXyL' \
    --includeSubCategoryItem 'true' \
    --itemType 'EXTENSION' \
    --language 'AKhu1h5UbxUWL8Ul' \
    --limit '5' \
    --offset '82' \
    --region 'i2BCGgHKT3o4A7mh' \
    --sortBy '["name:desc", "displayOrder:desc", "displayOrder:asc"]' \
    --storeId 'q9EzuVbZ3bIcX984' \
    --tags '0y6cWntCrG6iwH5f' \
    > test.out 2>&1
eval_tap $? 399 'PublicQueryItems' test.out

#- 400 PublicGetItemBySku
samples/cli/sample-apps Platform publicGetItemBySku \
    --namespace $AB_NAMESPACE \
    --autoCalcEstimatedPrice 'false' \
    --language 'NOf25AQ5el2bS1Y2' \
    --region '4ZEahGEMXqInj5Dl' \
    --storeId 'I5XliNlSaHCTvZgP' \
    --sku 'Phzhg4HixkqhgDZA' \
    > test.out 2>&1
eval_tap $? 400 'PublicGetItemBySku' test.out

#- 401 PublicGetEstimatedPrice
samples/cli/sample-apps Platform publicGetEstimatedPrice \
    --namespace $AB_NAMESPACE \
    --region '4H0CIxCtxKXDLw2B' \
    --storeId 'NWvT9RGrxaZ5eUjp' \
    --itemIds 'kQAMWOvrSjlwce19' \
    > test.out 2>&1
eval_tap $? 401 'PublicGetEstimatedPrice' test.out

#- 402 PublicBulkGetItems
samples/cli/sample-apps Platform publicBulkGetItems \
    --namespace $AB_NAMESPACE \
    --autoCalcEstimatedPrice 'true' \
    --language '177Uu9dtGlEaCRsk' \
    --region 'NMujsgkS6J8MnqlO' \
    --storeId '4ymilAIVSh24nvsl' \
    --itemIds 'D5MjCg6Z9S4QDKli' \
    > test.out 2>&1
eval_tap $? 402 'PublicBulkGetItems' test.out

#- 403 PublicValidateItemPurchaseCondition
samples/cli/sample-apps Platform publicValidateItemPurchaseCondition \
    --namespace $AB_NAMESPACE \
    --body '{"itemIds": ["UbHi1yqv0SESSt8O", "7bobueXkG2wlHsev", "VdKKKtgaRmZNYbY1"]}' \
    > test.out 2>&1
eval_tap $? 403 'PublicValidateItemPurchaseCondition' test.out

#- 404 PublicSearchItems
samples/cli/sample-apps Platform publicSearchItems \
    --namespace $AB_NAMESPACE \
    --autoCalcEstimatedPrice 'true' \
    --itemType 'OPTIONBOX' \
    --limit '89' \
    --offset '76' \
    --region '6bZCwoxOWv2lavkH' \
    --storeId 'CyUmNWU4dopMmpJO' \
    --keyword '4YMHpkR2zbzHjUqe' \
    --language '5zbbP3n9TL046dm7' \
    > test.out 2>&1
eval_tap $? 404 'PublicSearchItems' test.out

#- 405 PublicGetApp
samples/cli/sample-apps Platform publicGetApp \
    --itemId 'Ay7fgr84q0u8ZZJn' \
    --namespace $AB_NAMESPACE \
    --language 'QEdUetKcALkRSszG' \
    --region 'kkyn7GVHAVf9Srew' \
    --storeId 'aP5xXiimLdfkspk5' \
    > test.out 2>&1
eval_tap $? 405 'PublicGetApp' test.out

#- 406 PublicGetItemDynamicData
samples/cli/sample-apps Platform publicGetItemDynamicData \
    --itemId 'GhKuFDz8HXgZsGlM' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 406 'PublicGetItemDynamicData' test.out

#- 407 PublicGetItem
samples/cli/sample-apps Platform publicGetItem \
    --itemId '8R6YFWjS6bZn5frN' \
    --namespace $AB_NAMESPACE \
    --autoCalcEstimatedPrice 'true' \
    --language 'szOaNprJgebEStlf' \
    --populateBundle 'false' \
    --region 'klWtBO7OVWlicyb3' \
    --storeId 'sENL9vDQ8y3SoVoB' \
    > test.out 2>&1
eval_tap $? 407 'PublicGetItem' test.out

#- 408 GetPaymentCustomization
eval_tap 0 408 'GetPaymentCustomization # SKIP deprecated' test.out

#- 409 PublicGetPaymentUrl
samples/cli/sample-apps Platform publicGetPaymentUrl \
    --namespace $AB_NAMESPACE \
    --body '{"neonPayConfig": {"cancelUrl": "lm4Rhj8TmSNIYYz7", "successUrl": "nHXeqcrHPAUxZjH2"}, "paymentOrderNo": "TorRibiO4Goz15DA", "paymentProvider": "STRIPE", "returnUrl": "QgtEYhMPEjTXmHEN", "ui": "VUEHgtCiD6aR2ht2", "zipCode": "iszZ0V0IRRJOYIdt"}' \
    > test.out 2>&1
eval_tap $? 409 'PublicGetPaymentUrl' test.out

#- 410 PublicGetPaymentMethods
samples/cli/sample-apps Platform publicGetPaymentMethods \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'Iw5T1zkC7KNJH6DR' \
    > test.out 2>&1
eval_tap $? 410 'PublicGetPaymentMethods' test.out

#- 411 PublicGetUnpaidPaymentOrder
samples/cli/sample-apps Platform publicGetUnpaidPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'FzFBidtPgr77bgp4' \
    > test.out 2>&1
eval_tap $? 411 'PublicGetUnpaidPaymentOrder' test.out

#- 412 Pay
samples/cli/sample-apps Platform pay \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'YNeFQwGoNsU2PznO' \
    --paymentProvider 'CHECKOUT' \
    --zipCode 'eaqMP3sbUhPwpGAG' \
    --body '{"token": "OSPJDMKMyZ7vl8at"}' \
    > test.out 2>&1
eval_tap $? 412 'Pay' test.out

#- 413 PublicCheckPaymentOrderPaidStatus
samples/cli/sample-apps Platform publicCheckPaymentOrderPaidStatus \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'A0jQ56VFEpmgimJB' \
    > test.out 2>&1
eval_tap $? 413 'PublicCheckPaymentOrderPaidStatus' test.out

#- 414 GetPaymentPublicConfig
samples/cli/sample-apps Platform getPaymentPublicConfig \
    --namespace $AB_NAMESPACE \
    --sandbox 'false' \
    --paymentProvider 'PAYPAL' \
    --region 'ah3IYN3ZvQ5tuksx' \
    > test.out 2>&1
eval_tap $? 414 'GetPaymentPublicConfig' test.out

#- 415 PublicGetQRCode
samples/cli/sample-apps Platform publicGetQRCode \
    --namespace $AB_NAMESPACE \
    --code 'mzEnNvwzc6UiLCRp' \
    > test.out 2>&1
eval_tap $? 415 'PublicGetQRCode' test.out

#- 416 PublicNormalizePaymentReturnUrl
samples/cli/sample-apps Platform publicNormalizePaymentReturnUrl \
    --namespace $AB_NAMESPACE \
    --payerID 'cGSm7Je5fT9bA0IG' \
    --foreinginvoice 'M7pek4VO5reAxUm1' \
    --invoiceId 'VS9n9qAvVM2AwfWJ' \
    --payload 'JlLqAcMNeoSoWTEX' \
    --redirectResult 'KepgMgjI7FMlIXej' \
    --resultCode 'v9JwrlIHFbZgjnDu' \
    --sessionId 'LgCRyrcHTuEosEzX' \
    --status 'QfZPa3xHdswg2yeb' \
    --token 'MhB8Bk7a3rK8JpRp' \
    --type 'Fub5HUryP8lZN2E8' \
    --userId 'yR3CxLbPLM6pxdB4' \
    --orderNo 'ZRcaYLtz1BeqB7Fj' \
    --paymentOrderNo 'ragT5kVc2lz5l9V3' \
    --paymentProvider 'ADYEN' \
    --returnUrl 'tQ3ZaMTB66cSJvCg' \
    > test.out 2>&1
eval_tap $? 416 'PublicNormalizePaymentReturnUrl' test.out

#- 417 GetPaymentTaxValue
samples/cli/sample-apps Platform getPaymentTaxValue \
    --namespace $AB_NAMESPACE \
    --zipCode 'KYdQFJZdQzH8lnn6' \
    --paymentOrderNo 'seQ8C5QZK9Nw7srS' \
    --paymentProvider 'NEONPAY' \
    > test.out 2>&1
eval_tap $? 417 'GetPaymentTaxValue' test.out

#- 418 GetRewardByCode
samples/cli/sample-apps Platform getRewardByCode \
    --namespace $AB_NAMESPACE \
    --rewardCode 'EE9d5sNq6Xke2P2N' \
    > test.out 2>&1
eval_tap $? 418 'GetRewardByCode' test.out

#- 419 QueryRewards1
samples/cli/sample-apps Platform queryRewards1 \
    --namespace $AB_NAMESPACE \
    --eventTopic 'IsCnU6hIs9f7A3Bq' \
    --limit '14' \
    --offset '77' \
    --sortBy '["rewardCode", "rewardCode:asc"]' \
    > test.out 2>&1
eval_tap $? 419 'QueryRewards1' test.out

#- 420 GetReward1
samples/cli/sample-apps Platform getReward1 \
    --namespace $AB_NAMESPACE \
    --rewardId 'nLjLBV62qfXSx70O' \
    > test.out 2>&1
eval_tap $? 420 'GetReward1' test.out

#- 421 PublicListStores
samples/cli/sample-apps Platform publicListStores \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 421 'PublicListStores' test.out

#- 422 PublicExistsAnyMyActiveEntitlement
samples/cli/sample-apps Platform publicExistsAnyMyActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --appIds '["YXyXLN6CAgGKU0Pd", "85uRbcwLVSyWfsK8", "5nTXVG3qsVFE5HH7"]' \
    --itemIds '["ectY4oBJjUxouKQ3", "0N6MEaCyoEvx1bYJ", "fxKSuBB4pDBiszr5"]' \
    --skus '["LibNbTGGs4tyYEjg", "9gFOAj4Tygc8cIAJ", "u5mQDcCaHJ8ityAk"]' \
    > test.out 2>&1
eval_tap $? 422 'PublicExistsAnyMyActiveEntitlement' test.out

#- 423 PublicGetMyAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform publicGetMyAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --appId 'MIootDiC1wZUeotb' \
    > test.out 2>&1
eval_tap $? 423 'PublicGetMyAppEntitlementOwnershipByAppId' test.out

#- 424 PublicGetMyEntitlementOwnershipByItemId
samples/cli/sample-apps Platform publicGetMyEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --entitlementClazz 'OPTIONBOX' \
    --itemId 'VxCJbzc6hm9bEuwr' \
    > test.out 2>&1
eval_tap $? 424 'PublicGetMyEntitlementOwnershipByItemId' test.out

#- 425 PublicGetMyEntitlementOwnershipBySku
samples/cli/sample-apps Platform publicGetMyEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --entitlementClazz 'MEDIA' \
    --sku 'cZAlJ1IdLSGLgZK7' \
    > test.out 2>&1
eval_tap $? 425 'PublicGetMyEntitlementOwnershipBySku' test.out

#- 426 PublicGetEntitlementOwnershipToken
samples/cli/sample-apps Platform publicGetEntitlementOwnershipToken \
    --namespace $AB_NAMESPACE \
    --appIds '["oOW9tFzBEzi77fHs", "XOOaU7PFOd35KO53", "2gFxv8ePoLISmFuv"]' \
    --itemIds '["AHL7ETzy4SVOnzpp", "WZNKExddI3q2EL1c", "LOAyuxWCZ7Kr1pym"]' \
    --skus '["3EMvIaBbJ752Zki1", "AgJTzF68MrRhTfvO", "cqPeKYwH3EC5LXm5"]' \
    > test.out 2>&1
eval_tap $? 426 'PublicGetEntitlementOwnershipToken' test.out

#- 427 SyncTwitchDropsEntitlement
samples/cli/sample-apps Platform syncTwitchDropsEntitlement \
    --namespace $AB_NAMESPACE \
    --body '{"gameId": "RFyGWR3GMbv6ZODi", "language": "FwP-io", "region": "2VwK3XjohGN7vBsK"}' \
    > test.out 2>&1
eval_tap $? 427 'SyncTwitchDropsEntitlement' test.out

#- 428 PublicGetMyWallet
samples/cli/sample-apps Platform publicGetMyWallet \
    --currencyCode 'RP5ffCToht8XLw7h' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 428 'PublicGetMyWallet' test.out

#- 429 SyncEpicGameDLC
samples/cli/sample-apps Platform syncEpicGameDLC \
    --namespace $AB_NAMESPACE \
    --userId 'ZNGSEz4m9YxhmBWB' \
    --body '{"epicGamesJwtToken": "aCvsP5XqrJ3BYFHJ"}' \
    > test.out 2>&1
eval_tap $? 429 'SyncEpicGameDLC' test.out

#- 430 SyncOculusDLC
samples/cli/sample-apps Platform syncOculusDLC \
    --namespace $AB_NAMESPACE \
    --userId 'MkWdlENb3KkTJNbF' \
    > test.out 2>&1
eval_tap $? 430 'SyncOculusDLC' test.out

#- 431 PublicSyncPsnDlcInventory
samples/cli/sample-apps Platform publicSyncPsnDlcInventory \
    --namespace $AB_NAMESPACE \
    --userId '44hTniflEHu69tGC' \
    --body '{"serviceLabel": 76}' \
    > test.out 2>&1
eval_tap $? 431 'PublicSyncPsnDlcInventory' test.out

#- 432 PublicSyncPsnDlcInventoryWithMultipleServiceLabels
samples/cli/sample-apps Platform publicSyncPsnDlcInventoryWithMultipleServiceLabels \
    --namespace $AB_NAMESPACE \
    --userId 'phSR8QuRoEZJ5lYi' \
    --body '{"serviceLabels": [64, 5, 7]}' \
    > test.out 2>&1
eval_tap $? 432 'PublicSyncPsnDlcInventoryWithMultipleServiceLabels' test.out

#- 433 SyncSteamDLC
samples/cli/sample-apps Platform syncSteamDLC \
    --namespace $AB_NAMESPACE \
    --userId 'yDon1hHjRcTvYpIH' \
    --body '{"appId": "rxm35xZpewJb0pOs", "steamId": "79dRPLHknmGEkGAs"}' \
    > test.out 2>&1
eval_tap $? 433 'SyncSteamDLC' test.out

#- 434 SyncXboxDLC
samples/cli/sample-apps Platform syncXboxDLC \
    --namespace $AB_NAMESPACE \
    --userId 'VOQu7VT9AGSj2ynv' \
    --body '{"xstsToken": "YuRJ6L4WOJmrMiNn"}' \
    > test.out 2>&1
eval_tap $? 434 'SyncXboxDLC' test.out

#- 435 PublicQueryUserEntitlements
samples/cli/sample-apps Platform publicQueryUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'XHvrQHu513Hzm8aH' \
    --appType 'GAME' \
    --entitlementClazz 'SUBSCRIPTION' \
    --entitlementName 'xXOEwQqOqxmQZEJe' \
    --features '["sCtTBqTPlde83wMq", "1pEyv5bll6jjlLpW", "3soykwZbQro8yBXA"]' \
    --itemId '["NkhtQm3LJ5G3vawb", "CjFkjNaHA9j49qMk", "OMEfTT4Ny60lVWpu"]' \
    --limit '23' \
    --offset '40' \
    > test.out 2>&1
eval_tap $? 435 'PublicQueryUserEntitlements' test.out

#- 436 PublicGetUserAppEntitlementByAppId
samples/cli/sample-apps Platform publicGetUserAppEntitlementByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'e6vdktGUHDgiOBGo' \
    --appId '1pLyMJPI13dQoOrm' \
    > test.out 2>&1
eval_tap $? 436 'PublicGetUserAppEntitlementByAppId' test.out

#- 437 PublicQueryUserEntitlementsByAppType
samples/cli/sample-apps Platform publicQueryUserEntitlementsByAppType \
    --namespace $AB_NAMESPACE \
    --userId '3fU2mtyS2TkgcJiM' \
    --limit '71' \
    --offset '89' \
    --appType 'DEMO' \
    > test.out 2>&1
eval_tap $? 437 'PublicQueryUserEntitlementsByAppType' test.out

#- 438 PublicGetUserEntitlementsByIds
samples/cli/sample-apps Platform publicGetUserEntitlementsByIds \
    --namespace $AB_NAMESPACE \
    --userId 'rvNWJQ5yXhyXbOLa' \
    --availablePlatformOnly 'false' \
    --ids '["JuqcQCtHLeJw5iZ5", "94EWMjsgxuowmbYZ", "Elux6idK36wFuIaH"]' \
    > test.out 2>&1
eval_tap $? 438 'PublicGetUserEntitlementsByIds' test.out

#- 439 PublicGetUserEntitlementByItemId
eval_tap 0 439 'PublicGetUserEntitlementByItemId # SKIP deprecated' test.out

#- 440 PublicGetUserEntitlementBySku
eval_tap 0 440 'PublicGetUserEntitlementBySku # SKIP deprecated' test.out

#- 441 PublicUserEntitlementHistory
samples/cli/sample-apps Platform publicUserEntitlementHistory \
    --namespace $AB_NAMESPACE \
    --userId 'd5lvDrGy3S9Zmh3J' \
    --endDate 'c3oIzIA7L87zsFIn' \
    --entitlementClazz 'APP' \
    --limit '55' \
    --offset '72' \
    --startDate 'RVVdmVAA6mkhchl0' \
    > test.out 2>&1
eval_tap $? 441 'PublicUserEntitlementHistory' test.out

#- 442 PublicExistsAnyUserActiveEntitlement
samples/cli/sample-apps Platform publicExistsAnyUserActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'g2p0hMqNmv3rPmoy' \
    --appIds '["Jr4YUaF7dCK0bvkl", "N4b9SB9A4pKNkkpk", "Tkcor88N6ihNuQtj"]' \
    --itemIds '["IY7DrIHTcnwcUlNV", "7UiZhaJKCckVzLAN", "N7HraUaHR2PZulaO"]' \
    --skus '["JzYGc9xpuyw5uBk1", "yOZM3zLWRgRB2gL7", "aqU86V3fZyU3r5XR"]' \
    > test.out 2>&1
eval_tap $? 442 'PublicExistsAnyUserActiveEntitlement' test.out

#- 443 PublicGetUserAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform publicGetUserAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'P02BxPzlxlt4MivW' \
    --appId 'VlcYPNEM5IUC479O' \
    > test.out 2>&1
eval_tap $? 443 'PublicGetUserAppEntitlementOwnershipByAppId' test.out

#- 444 PublicGetUserEntitlementOwnershipByItemId
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --userId '1xE3glhmwi5x70BO' \
    --entitlementClazz 'LOOTBOX' \
    --itemId 'TREwxPqr7cbkSp9x' \
    > test.out 2>&1
eval_tap $? 444 'PublicGetUserEntitlementOwnershipByItemId' test.out

#- 445 PublicGetUserEntitlementOwnershipByItemIds
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'MrN4V04zyGLH7tur' \
    --ids '["L8onrjIZd8NO3Q73", "MRS9Py8iEtgtrpme", "V50Ks1g2lNNzsxhH"]' \
    > test.out 2>&1
eval_tap $? 445 'PublicGetUserEntitlementOwnershipByItemIds' test.out

#- 446 PublicGetUserEntitlementOwnershipBySku
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --userId '24PZcy9SPVQqqOms' \
    --entitlementClazz 'ENTITLEMENT' \
    --sku 'IHfTr8c7PWB7dFBL' \
    > test.out 2>&1
eval_tap $? 446 'PublicGetUserEntitlementOwnershipBySku' test.out

#- 447 PublicGetUserEntitlement
samples/cli/sample-apps Platform publicGetUserEntitlement \
    --entitlementId 'GNDrMAgwpub3jB6M' \
    --namespace $AB_NAMESPACE \
    --userId 'mFz8rvzVnSiI5bcc' \
    > test.out 2>&1
eval_tap $? 447 'PublicGetUserEntitlement' test.out

#- 448 PublicConsumeUserEntitlement
samples/cli/sample-apps Platform publicConsumeUserEntitlement \
    --entitlementId '0pYT3RmeJaqVAThy' \
    --namespace $AB_NAMESPACE \
    --userId 'mPVJgN1kifRz4bA1' \
    --body '{"metadata": {"operationSource": "INVENTORY"}, "options": ["XIuQBNznwOCfYDdt", "veortoHvaI5S6KUz", "rbnzjfMyNd8Nlzod"], "requestId": "qm5LohlhE3PsB7Y4", "useCount": 79}' \
    > test.out 2>&1
eval_tap $? 448 'PublicConsumeUserEntitlement' test.out

#- 449 PublicSellUserEntitlement
samples/cli/sample-apps Platform publicSellUserEntitlement \
    --entitlementId 'nGeEnY0DePEPon6V' \
    --namespace $AB_NAMESPACE \
    --userId 'GUmro5qDD4ILAfFp' \
    --body '{"requestId": "6zPXViQvtvdxPjJP", "useCount": 17}' \
    > test.out 2>&1
eval_tap $? 449 'PublicSellUserEntitlement' test.out

#- 450 PublicSplitUserEntitlement
samples/cli/sample-apps Platform publicSplitUserEntitlement \
    --entitlementId 'RLpOgRnQCLntpJqi' \
    --namespace $AB_NAMESPACE \
    --userId 'ozGtDaEeuUlMII81' \
    --body '{"metadata": {"operationSource": "INVENTORY"}, "useCount": 79}' \
    > test.out 2>&1
eval_tap $? 450 'PublicSplitUserEntitlement' test.out

#- 451 PublicTransferUserEntitlement
samples/cli/sample-apps Platform publicTransferUserEntitlement \
    --entitlementId 'jME30AgjUyA554U6' \
    --namespace $AB_NAMESPACE \
    --userId 'E0YPMTLeca2pqZht' \
    --body '{"entitlementId": "SbYE9JKmSNKlAycq", "metadata": {"operationSource": "INVENTORY"}, "useCount": 49}' \
    > test.out 2>&1
eval_tap $? 451 'PublicTransferUserEntitlement' test.out

#- 452 PublicRedeemCode
samples/cli/sample-apps Platform publicRedeemCode \
    --namespace $AB_NAMESPACE \
    --userId 'oimnKpYwoNfAISlQ' \
    --body '{"code": "uJEb4CAC2euN54lK", "language": "gBlK_ijCi_188", "region": "Knq4UU8DK07Mq7p5"}' \
    > test.out 2>&1
eval_tap $? 452 'PublicRedeemCode' test.out

#- 453 PublicFulfillAppleIAPItem
samples/cli/sample-apps Platform publicFulfillAppleIAPItem \
    --namespace $AB_NAMESPACE \
    --userId '2t9PjX9PM5omloTS' \
    --body '{"excludeOldTransactions": false, "language": "Yeb_llcl-JY", "productId": "bRovw8UDPhdYD7PS", "receiptData": "tYm2qmSZYgpJxNao", "region": "jD6yGNipr9XoMWpB", "transactionId": "JGKmnjxjweAVBQYp"}' \
    > test.out 2>&1
eval_tap $? 453 'PublicFulfillAppleIAPItem' test.out

#- 454 SyncEpicGamesInventory
samples/cli/sample-apps Platform syncEpicGamesInventory \
    --namespace $AB_NAMESPACE \
    --userId 'MZSNwZ8Vqow4tSJ2' \
    --body '{"epicGamesJwtToken": "9VVtHmaKWRDyZLmF"}' \
    > test.out 2>&1
eval_tap $? 454 'SyncEpicGamesInventory' test.out

#- 455 PublicFulfillGoogleIAPItem
samples/cli/sample-apps Platform publicFulfillGoogleIAPItem \
    --namespace $AB_NAMESPACE \
    --userId '8O4R6nBFBJKlWUyb' \
    --body '{"autoAck": true, "autoConsume": false, "language": "jTtV_vD", "orderId": "c7zkXfhzjAGO7ZkG", "packageName": "lLYVOUpSFW7xokAM", "productId": "Wg4BPmPnniMZHwnm", "purchaseTime": 18, "purchaseToken": "cG1Jzf4WtOw66dT7", "region": "Ps2Rc0kKqTFaWg8m", "subscriptionPurchase": false}' \
    > test.out 2>&1
eval_tap $? 455 'PublicFulfillGoogleIAPItem' test.out

#- 456 SyncOculusConsumableEntitlements
samples/cli/sample-apps Platform syncOculusConsumableEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'R0gAxpV4cR0TM3hU' \
    > test.out 2>&1
eval_tap $? 456 'SyncOculusConsumableEntitlements' test.out

#- 457 PublicReconcilePlayStationStore
samples/cli/sample-apps Platform publicReconcilePlayStationStore \
    --namespace $AB_NAMESPACE \
    --userId 'k4eapKzP1FhY5tK7' \
    --body '{"currencyCode": "xZZHfPmou39IEqxR", "price": 0.3683119430563673, "productId": "SAAOLE7MhZFKnxs0", "serviceLabel": 21}' \
    > test.out 2>&1
eval_tap $? 457 'PublicReconcilePlayStationStore' test.out

#- 458 PublicReconcilePlayStationStoreWithMultipleServiceLabels
samples/cli/sample-apps Platform publicReconcilePlayStationStoreWithMultipleServiceLabels \
    --namespace $AB_NAMESPACE \
    --userId 'YuDKRgcvbxr3p0CU' \
    --body '{"currencyCode": "myDf0KrBwzvl7DKM", "price": 0.27693694341608754, "productId": "chmJiuY3MAlGHcQT", "serviceLabels": [18, 67, 28]}' \
    > test.out 2>&1
eval_tap $? 458 'PublicReconcilePlayStationStoreWithMultipleServiceLabels' test.out

#- 459 SyncSteamInventory
samples/cli/sample-apps Platform syncSteamInventory \
    --namespace $AB_NAMESPACE \
    --userId 'YqrkDXCgJgxlDnGS' \
    --body '{"appId": "YXq7pRy5Ie2mMFjU", "currencyCode": "AEGN5Msn39eEivGo", "language": "CiyY_jgPu_535", "price": 0.23686243213325642, "productId": "mCVhEx04TkCyYHLt", "region": "KbmShUw1JqENEX8I", "steamId": "U4C4QAmjBo2svzA1"}' \
    > test.out 2>&1
eval_tap $? 459 'SyncSteamInventory' test.out

#- 460 SyncSteamAbnormalTransaction
samples/cli/sample-apps Platform syncSteamAbnormalTransaction \
    --namespace $AB_NAMESPACE \
    --userId 'ISFiDt72xJQC8r50' \
    > test.out 2>&1
eval_tap $? 460 'SyncSteamAbnormalTransaction' test.out

#- 461 SyncSteamIAPByTransaction
samples/cli/sample-apps Platform syncSteamIAPByTransaction \
    --namespace $AB_NAMESPACE \
    --userId 'E3Ph6qrGGpP6bHHT' \
    --body '{"orderId": "xYuxWODhIgdzkpZJ"}' \
    > test.out 2>&1
eval_tap $? 461 'SyncSteamIAPByTransaction' test.out

#- 462 PublicQueryUserThirdPartySubscription
samples/cli/sample-apps Platform publicQueryUserThirdPartySubscription \
    --namespace $AB_NAMESPACE \
    --platform 'STEAM' \
    --userId 'MlqQhroD7g4cFwHE' \
    --activeOnly 'true' \
    --groupId 'kSSUjzCV5BXQfcPz' \
    --limit '90' \
    --offset '48' \
    --productId 'M1iKWiNGphfB9hEW' \
    > test.out 2>&1
eval_tap $? 462 'PublicQueryUserThirdPartySubscription' test.out

#- 463 SyncTwitchDropsEntitlement1
samples/cli/sample-apps Platform syncTwitchDropsEntitlement1 \
    --namespace $AB_NAMESPACE \
    --userId 'mUAqEExaK6gSOuSV' \
    --body '{"gameId": "MOY0IGylo5UKUEwS", "language": "gCqL-UrkU_Cd", "region": "FnqFa5y3QFY1FspO"}' \
    > test.out 2>&1
eval_tap $? 463 'SyncTwitchDropsEntitlement1' test.out

#- 464 SyncXboxInventory
samples/cli/sample-apps Platform syncXboxInventory \
    --namespace $AB_NAMESPACE \
    --userId 'ZHFqZgml9zkaqORh' \
    --body '{"currencyCode": "mGgHxfsj1yFZ1GgG", "price": 0.9090996728151594, "productId": "2cJK2cpFDNR8Mfs9", "xstsToken": "EArXbUCVlcdakpDF"}' \
    > test.out 2>&1
eval_tap $? 464 'SyncXboxInventory' test.out

#- 465 PublicQueryUserOrders
samples/cli/sample-apps Platform publicQueryUserOrders \
    --namespace $AB_NAMESPACE \
    --userId 'dkdEgBt06ZpOB1VM' \
    --discounted 'true' \
    --itemId '8aB0Wo7ZetVyKm8K' \
    --limit '49' \
    --offset '43' \
    --status 'REFUNDING' \
    > test.out 2>&1
eval_tap $? 465 'PublicQueryUserOrders' test.out

#- 466 PublicCreateUserOrder
samples/cli/sample-apps Platform publicCreateUserOrder \
    --namespace $AB_NAMESPACE \
    --userId 'EmPcSLr1VPwy1syo' \
    --body '{"currencyCode": "fwTJBwtunbN3svrw", "discountCodes": ["YCuVw2MpNVhSxuxO", "H008p18TtzEt3VQN", "T4QZ5bgzJhREDBV6"], "discountedPrice": 98, "ext": {"0FzyYheCT8bIqIoA": {}, "YaIw7XFzFbiJxwoN": {}, "DWXH9N4hKwiwuPE3": {}}, "itemId": "P023h1Ay2BhAbJkL", "language": "SG-720", "price": 4, "quantity": 33, "region": "LowviLKtLNlaylGV", "returnUrl": "kNBvNhZgqrgrw1hw", "sectionId": "t3cXeXq7y4uHT76D"}' \
    > test.out 2>&1
eval_tap $? 466 'PublicCreateUserOrder' test.out

#- 467 PublicPreviewOrderPrice
samples/cli/sample-apps Platform publicPreviewOrderPrice \
    --namespace $AB_NAMESPACE \
    --userId 'zZCnc6psvOsaKjot' \
    --body '{"currencyCode": "OrwGLItoAQoo0c5z", "discountCodes": ["fz1N1e5g6CMzu87B", "ZdLZdieQppIzEXqK", "wzrHrCgushoUcwzA"], "discountedPrice": 21, "itemId": "c9d5RRGQZWlpD413", "price": 5, "quantity": 95}' \
    > test.out 2>&1
eval_tap $? 467 'PublicPreviewOrderPrice' test.out

#- 468 PublicGetUserOrder
samples/cli/sample-apps Platform publicGetUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'wwMe6TG6ANTvGQCR' \
    --userId 'J3cv8VsJ7iOII4qH' \
    > test.out 2>&1
eval_tap $? 468 'PublicGetUserOrder' test.out

#- 469 PublicCancelUserOrder
samples/cli/sample-apps Platform publicCancelUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'AbAdC1qCQs53nGpG' \
    --userId 'r7D3eEC4p10hCpdh' \
    > test.out 2>&1
eval_tap $? 469 'PublicCancelUserOrder' test.out

#- 470 PublicGetUserOrderHistories
samples/cli/sample-apps Platform publicGetUserOrderHistories \
    --namespace $AB_NAMESPACE \
    --orderNo 'BeoYtvuhFpOBi68L' \
    --userId 'riOVB9y0wgI3d90K' \
    > test.out 2>&1
eval_tap $? 470 'PublicGetUserOrderHistories' test.out

#- 471 PublicDownloadUserOrderReceipt
samples/cli/sample-apps Platform publicDownloadUserOrderReceipt \
    --namespace $AB_NAMESPACE \
    --orderNo 'L6tLEw9FnYFQBiUn' \
    --userId 'B0HmsF18F3ZZosMi' \
    > test.out 2>&1
eval_tap $? 471 'PublicDownloadUserOrderReceipt' test.out

#- 472 PublicGetPaymentAccounts
samples/cli/sample-apps Platform publicGetPaymentAccounts \
    --namespace $AB_NAMESPACE \
    --userId 'yYM2WYQ0RqugdyZJ' \
    > test.out 2>&1
eval_tap $? 472 'PublicGetPaymentAccounts' test.out

#- 473 PublicDeletePaymentAccount
samples/cli/sample-apps Platform publicDeletePaymentAccount \
    --id 'sLeeMreIkbLVTN0g' \
    --namespace $AB_NAMESPACE \
    --type 'paypal' \
    --userId 'lYo87rIBxhIcNkMV' \
    > test.out 2>&1
eval_tap $? 473 'PublicDeletePaymentAccount' test.out

#- 474 PublicListActiveSections
samples/cli/sample-apps Platform publicListActiveSections \
    --namespace $AB_NAMESPACE \
    --userId 'ZUzDThWfmSpGaCJ2' \
    --autoCalcEstimatedPrice 'true' \
    --language '9hOwRG9pTUI9WLTY' \
    --region 'LLNnlxsQEbKI6hGf' \
    --storeId 'YVr1lpSKXYUS0IN4' \
    --viewId 'ibgmbD3WTFDR5ZPT' \
    > test.out 2>&1
eval_tap $? 474 'PublicListActiveSections' test.out

#- 475 PublicQueryUserSubscriptions
samples/cli/sample-apps Platform publicQueryUserSubscriptions \
    --namespace $AB_NAMESPACE \
    --userId 'Y2mqwThKDPoWlPIh' \
    --chargeStatus 'NEVER' \
    --itemId 'HtOsj9nddSSgsg9B' \
    --limit '29' \
    --offset '3' \
    --sku 'ZUiCI0fLbKIGS0QK' \
    --status 'INIT' \
    --subscribedBy 'USER' \
    > test.out 2>&1
eval_tap $? 475 'PublicQueryUserSubscriptions' test.out

#- 476 PublicSubscribeSubscription
samples/cli/sample-apps Platform publicSubscribeSubscription \
    --namespace $AB_NAMESPACE \
    --userId 'BqPMtDS4LMvjpPIP' \
    --body '{"currencyCode": "aeG3FXOWU7V8y3Q6", "itemId": "FQvA08DXOYoSqCHE", "language": "QwO-ER", "region": "HcY78N1hdB3GUgvo", "returnUrl": "c1e9JdFIgiVzGb9k", "source": "WAMiwBWr4YhrhseA"}' \
    > test.out 2>&1
eval_tap $? 476 'PublicSubscribeSubscription' test.out

#- 477 PublicCheckUserSubscriptionSubscribableByItemId
samples/cli/sample-apps Platform publicCheckUserSubscriptionSubscribableByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'tR9oigzuHlLQP32D' \
    --itemId '0R02oyZZ0p1RKCBK' \
    > test.out 2>&1
eval_tap $? 477 'PublicCheckUserSubscriptionSubscribableByItemId' test.out

#- 478 PublicGetUserSubscription
samples/cli/sample-apps Platform publicGetUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'RIutRzuICzK5A0tG' \
    --userId 'pwSKSFIkpH9td8Wf' \
    > test.out 2>&1
eval_tap $? 478 'PublicGetUserSubscription' test.out

#- 479 PublicChangeSubscriptionBillingAccount
samples/cli/sample-apps Platform publicChangeSubscriptionBillingAccount \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'bRVi14c6gI4a2KlF' \
    --userId '9DDkXtDCtR8M8hxK' \
    > test.out 2>&1
eval_tap $? 479 'PublicChangeSubscriptionBillingAccount' test.out

#- 480 PublicCancelSubscription
samples/cli/sample-apps Platform publicCancelSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'ThR1VL1zAAB7j74O' \
    --userId '9F1Wm5PvrCiwwQaB' \
    --body '{"immediate": true, "reason": "u20RGcXzAbP6zQxi"}' \
    > test.out 2>&1
eval_tap $? 480 'PublicCancelSubscription' test.out

#- 481 PublicGetUserSubscriptionBillingHistories
samples/cli/sample-apps Platform publicGetUserSubscriptionBillingHistories \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'VW66EZ0tbOfdASF5' \
    --userId 'QJ8yXg7JQSyFzuMK' \
    --excludeFree 'false' \
    --limit '76' \
    --offset '44' \
    > test.out 2>&1
eval_tap $? 481 'PublicGetUserSubscriptionBillingHistories' test.out

#- 482 PublicListViews
samples/cli/sample-apps Platform publicListViews \
    --namespace $AB_NAMESPACE \
    --userId '45oTR5kx1z09KfGm' \
    --language 'kJSzq4PUCLJqoahJ' \
    --storeId 'fAaRbwC2sUfRetft' \
    > test.out 2>&1
eval_tap $? 482 'PublicListViews' test.out

#- 483 PublicGetWallet
samples/cli/sample-apps Platform publicGetWallet \
    --currencyCode 'cKDixvJzOc9P8ACl' \
    --namespace $AB_NAMESPACE \
    --userId 'l0mKtTnpJ5Kmo8VC' \
    > test.out 2>&1
eval_tap $? 483 'PublicGetWallet' test.out

#- 484 PublicListUserWalletTransactions
samples/cli/sample-apps Platform publicListUserWalletTransactions \
    --currencyCode '2rmKcs9yoEYPpvx6' \
    --namespace $AB_NAMESPACE \
    --userId 'sRYNtxnlw498V755' \
    --limit '70' \
    --offset '9' \
    > test.out 2>&1
eval_tap $? 484 'PublicListUserWalletTransactions' test.out

#- 485 PublicGetMyDLCContent
samples/cli/sample-apps Platform publicGetMyDLCContent \
    --includeAllNamespaces 'false' \
    --type 'OCULUS' \
    > test.out 2>&1
eval_tap $? 485 'PublicGetMyDLCContent' test.out

#- 486 QueryFulfillments
samples/cli/sample-apps Platform queryFulfillments \
    --namespace $AB_NAMESPACE \
    --endTime 'cHvmbn0IfrlKLQpb' \
    --limit '98' \
    --offset '98' \
    --startTime 'dm9WPLWa1T4Pi9K2' \
    --state 'REVOKE_FAILED' \
    --transactionId 'm7Kpesm6ypfgLL39' \
    --userId 'z6tcHDeYyjU6NuIu' \
    > test.out 2>&1
eval_tap $? 486 'QueryFulfillments' test.out

#- 487 QueryItemsV2
samples/cli/sample-apps Platform queryItemsV2 \
    --namespace $AB_NAMESPACE \
    --appType 'DEMO' \
    --availableDate 'JZKh342oYo9i7Ugg' \
    --baseAppId 'luKIOPmxYOhVvw4E' \
    --categoryPath 'Yf5w4ooRNmTXUQht' \
    --features 'KUToK7mB8qyMOFEY' \
    --includeSubCategoryItem 'false' \
    --itemName 'xKc1yssxNFctphxh' \
    --itemStatus 'ACTIVE' \
    --itemType '["INGAMEITEM", "CODE", "CODE"]' \
    --limit '7' \
    --offset '75' \
    --region 'Fy2SV9LtaQZMZZVB' \
    --sectionExclusive 'true' \
    --sortBy '["createdAt:asc", "displayOrder:asc"]' \
    --storeId 'mM2M8NeIVT93XiU3' \
    --tags 'wZrmvLCKp08SKfFj' \
    --targetNamespace 'c3OCfTA8fx2SdNuJ' \
    --withTotal 'false' \
    > test.out 2>&1
eval_tap $? 487 'QueryItemsV2' test.out

#- 488 ImportStore1
samples/cli/sample-apps Platform importStore1 \
    --namespace $AB_NAMESPACE \
    --storeId 'aQKssAimRPHZTUwn' \
    --strictMode 'false' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 488 'ImportStore1' test.out

#- 489 ExportStore1
samples/cli/sample-apps Platform exportStore1 \
    --namespace $AB_NAMESPACE \
    --storeId 'FtbwjQ59gVXwNJFe' \
    --body '{"itemIds": ["tahn6BaG1BJTdFga", "dlpqybQTBiyzrErf", "1PhXyWBaBcR6363F"]}' \
    > test.out 2>&1
eval_tap $? 489 'ExportStore1' test.out

#- 490 FulfillRewardsV2
samples/cli/sample-apps Platform fulfillRewardsV2 \
    --namespace $AB_NAMESPACE \
    --userId '9fCd1nHBUrhRGvCL' \
    --body '{"entitlementCollectionId": "UIr7x0tvWXGLaCFP", "entitlementOrigin": "Xbox", "metadata": {"4TvvO1zICcHZgYOh": {}, "OoXJX25HagqvASe1": {}, "KnvBh42xiSErMQ9Z": {}}, "origin": "Other", "rewards": [{"currency": {"currencyCode": "Zpp6hXxuxlkb7pJi", "namespace": "6KwyYUf9Ig6tkxFE"}, "item": {"itemId": "riofzQdQjgxJVFaX", "itemName": "83hbBafsNmAr3KZf", "itemSku": "CgA2QWxPCKiUcMQT", "itemType": "FLtWWZC2dNHOGJdm"}, "quantity": 24, "type": "ITEM"}, {"currency": {"currencyCode": "3CB7RBDoi5O4jlDU", "namespace": "9KofqHvx4TxiG2Th"}, "item": {"itemId": "WHXb2l7WdFeruIDl", "itemName": "bR9fmlvLtUjZVaiZ", "itemSku": "OSKFD2RQ6NgR1C6i", "itemType": "xfF3h0rTfpzCratY"}, "quantity": 45, "type": "ITEM"}, {"currency": {"currencyCode": "pldQgrH8dC4vvMJS", "namespace": "mth7tryUnWPkH10t"}, "item": {"itemId": "qqeRHTl3Qr9ccTzF", "itemName": "ta4eYWFOMYw2xrnA", "itemSku": "bfkQm6UElaZtkn1M", "itemType": "PJRalh3RsrpA01YA"}, "quantity": 11, "type": "ITEM"}], "source": "ACHIEVEMENT", "transactionId": "XG2bNXkxz01QNQN0"}' \
    > test.out 2>&1
eval_tap $? 490 'FulfillRewardsV2' test.out

#- 491 FulfillItems
eval_tap 0 491 'FulfillItems # SKIP deprecated' test.out

#- 492 RetryFulfillItems
eval_tap 0 492 'RetryFulfillItems # SKIP deprecated' test.out

#- 493 RevokeItems
eval_tap 0 493 'RevokeItems # SKIP deprecated' test.out

#- 494 V2PublicFulfillAppleIAPItem
samples/cli/sample-apps Platform v2PublicFulfillAppleIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'ofDCDFrAHF9xpQlc' \
    --body '{"transactionId": "6XCv7jLRIjaCvtOV"}' \
    > test.out 2>&1
eval_tap $? 494 'V2PublicFulfillAppleIAPItem' test.out

#- 495 FulfillItemsV3
samples/cli/sample-apps Platform fulfillItemsV3 \
    --namespace $AB_NAMESPACE \
    --transactionId 'hsJJHEdlv2yZ7RHv' \
    --userId 'HHEJ32y9lHxWDBY2' \
    --body '{"items": [{"duration": 14, "endDate": "1982-07-22T00:00:00Z", "entitlementCollectionId": "j3fVSJBcN6x2KvzE", "entitlementOrigin": "Xbox", "itemId": "aCkkBQ9v7J7badHh", "itemSku": "cyp8NY9ElvMZTjBB", "language": "O3gEbbwUBQMJGZ5O", "metadata": {"IlpKCMzUB97DpoCN": {}, "D8PkszDX4DjcKsDQ": {}, "WQchoPu4HCjed35b": {}}, "orderNo": "s1WTytdv4nFL1Ek7", "origin": "Xbox", "quantity": 47, "region": "WmHHwRX3XEES5SCU", "source": "REFERRAL_BONUS", "startDate": "1971-11-13T00:00:00Z", "storeId": "izzlIxb4Xe9SbOh3"}, {"duration": 58, "endDate": "1990-12-24T00:00:00Z", "entitlementCollectionId": "A7bw2zQ6U8XNUWcc", "entitlementOrigin": "Other", "itemId": "C72huLgmtAfysgB6", "itemSku": "WhGI5TK65VwlRlIg", "language": "4UXu0LV4thVckoQa", "metadata": {"FNWzgW6nm0xvlsos": {}, "jOjDmKVvuUjt9EDP": {}, "OJ2SBLJApZ90h0K4": {}}, "orderNo": "PG4x8o5qdLHhMzUk", "origin": "Xbox", "quantity": 69, "region": "VhJkbyEo93GHHwC8", "source": "DLC", "startDate": "1975-10-26T00:00:00Z", "storeId": "UqS34nFmQn21NdUn"}, {"duration": 75, "endDate": "1998-06-25T00:00:00Z", "entitlementCollectionId": "ecI36si4CVBVHxCH", "entitlementOrigin": "Xbox", "itemId": "P58NUaEoblzQcC5t", "itemSku": "c3cSYx7qEwYDjZGY", "language": "Ii8KFOj9siX5tMYp", "metadata": {"4rr0PHmyhZC1BNFf": {}, "3BkVHuvMydZzcAck": {}, "5UYIie3ZivYB4pPu": {}}, "orderNo": "0Ly37N40CHy4LqEo", "origin": "Steam", "quantity": 25, "region": "ZtkbAlQ7IhMO0HVF", "source": "DLC", "startDate": "1990-01-22T00:00:00Z", "storeId": "Zek0ZOR9Vd1SY1kP"}]}' \
    > test.out 2>&1
eval_tap $? 495 'FulfillItemsV3' test.out

#- 496 RetryFulfillItemsV3
samples/cli/sample-apps Platform retryFulfillItemsV3 \
    --namespace $AB_NAMESPACE \
    --transactionId 'j02szzNJztDl06zq' \
    --userId 'L8EcvRVv56hbJID6' \
    > test.out 2>&1
eval_tap $? 496 'RetryFulfillItemsV3' test.out

#- 497 RevokeItemsV3
samples/cli/sample-apps Platform revokeItemsV3 \
    --namespace $AB_NAMESPACE \
    --transactionId 'mfuAaWMYlQ5xufUc' \
    --userId 'WQ7jIDVBdrgUn1DO' \
    > test.out 2>&1
eval_tap $? 497 'RevokeItemsV3' test.out


rm -f "tmp.dat"

exit $EXIT_CODE