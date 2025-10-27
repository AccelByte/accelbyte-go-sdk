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
    --id 'v4YkXxXGhF50xMLU' \
    > test.out 2>&1
eval_tap $? 3 'GetFulfillmentScript' test.out

#- 4 CreateFulfillmentScript
samples/cli/sample-apps Platform createFulfillmentScript \
    --id 'BS6cnxyy6RbCdabd' \
    --body '{"grantDays": "KxJjOrcbnGj6r1jy"}' \
    > test.out 2>&1
eval_tap $? 4 'CreateFulfillmentScript' test.out

#- 5 DeleteFulfillmentScript
samples/cli/sample-apps Platform deleteFulfillmentScript \
    --id '4tQ8k4h64UTzswJ7' \
    > test.out 2>&1
eval_tap $? 5 'DeleteFulfillmentScript' test.out

#- 6 UpdateFulfillmentScript
samples/cli/sample-apps Platform updateFulfillmentScript \
    --id 'NtOHfjhrGjRMPaya' \
    --body '{"grantDays": "Zr83DlA6zt64vfAy"}' \
    > test.out 2>&1
eval_tap $? 6 'UpdateFulfillmentScript' test.out

#- 7 ListItemTypeConfigs
samples/cli/sample-apps Platform listItemTypeConfigs \
    > test.out 2>&1
eval_tap $? 7 'ListItemTypeConfigs' test.out

#- 8 CreateItemTypeConfig
samples/cli/sample-apps Platform createItemTypeConfig \
    --body '{"clazz": "ZC0qTsS9u4ApEHNV", "dryRun": true, "fulfillmentUrl": "44XmuJHiuNGQGhD1", "itemType": "MEDIA", "purchaseConditionUrl": "fazFGeJMgNngivU5"}' \
    > test.out 2>&1
eval_tap $? 8 'CreateItemTypeConfig' test.out

#- 9 SearchItemTypeConfig
samples/cli/sample-apps Platform searchItemTypeConfig \
    --clazz 'Gs6M8YrIeqnlP4Pd' \
    --itemType 'BUNDLE' \
    > test.out 2>&1
eval_tap $? 9 'SearchItemTypeConfig' test.out

#- 10 GetItemTypeConfig
samples/cli/sample-apps Platform getItemTypeConfig \
    --id 'v1v3Ps0jAAzIpOwD' \
    > test.out 2>&1
eval_tap $? 10 'GetItemTypeConfig' test.out

#- 11 UpdateItemTypeConfig
samples/cli/sample-apps Platform updateItemTypeConfig \
    --id 'WbN0MyasG5JbdYNa' \
    --body '{"clazz": "OmWC24iEAc8GZ9Vz", "dryRun": false, "fulfillmentUrl": "lOTzLEM1mLVDssxw", "purchaseConditionUrl": "qTD5y258J2XS7EDH"}' \
    > test.out 2>&1
eval_tap $? 11 'UpdateItemTypeConfig' test.out

#- 12 DeleteItemTypeConfig
samples/cli/sample-apps Platform deleteItemTypeConfig \
    --id 'a0ofyEN8Wtjfftgm' \
    > test.out 2>&1
eval_tap $? 12 'DeleteItemTypeConfig' test.out

#- 13 QueryCampaigns
samples/cli/sample-apps Platform queryCampaigns \
    --namespace $AB_NAMESPACE \
    --limit '57' \
    --name 'kZKxQGsFZOOZS3le' \
    --offset '62' \
    --tag 'UoMzHEv8CJJbmEmd' \
    > test.out 2>&1
eval_tap $? 13 'QueryCampaigns' test.out

#- 14 CreateCampaign
samples/cli/sample-apps Platform createCampaign \
    --namespace $AB_NAMESPACE \
    --body '{"description": "23bDAEe23UHPm3hc", "discountConfig": {"categories": [{"categoryPath": "iIg6AwF37BtHnbNl", "includeSubCategories": true}, {"categoryPath": "7gzxEcs4vypS7LGS", "includeSubCategories": true}, {"categoryPath": "boRfOV5r1DPXJ04t", "includeSubCategories": false}], "currencyCode": "dsEq3z3ZCYlaOZTg", "currencyNamespace": "JEwDXseVzkk2Tz3K", "discountAmount": 51, "discountPercentage": 1, "discountType": "AMOUNT", "items": [{"itemId": "F6JjX1s1jWBA7crz", "itemName": "HRkccWlvBYZfsytg"}, {"itemId": "V5aehUlYftranWxz", "itemName": "8av9q6sC8bCxTlpJ"}, {"itemId": "JYU48o7AuLZxM2SD", "itemName": "X8D47MwVtihcTo5b"}], "restrictType": "ITEMS_AND_CATEGORIES", "stackable": true}, "items": [{"extraSubscriptionDays": 77, "itemId": "HOvSniPTbL1VtUZ6", "itemName": "2aRVi968vWeyWiSX", "quantity": 86}, {"extraSubscriptionDays": 86, "itemId": "KLKuhoPfM93cE9er", "itemName": "VwDH8x43a0wcbv56", "quantity": 63}, {"extraSubscriptionDays": 64, "itemId": "XEIt4qDMOA3PIpWU", "itemName": "WqYuFLkPtibAxyi0", "quantity": 95}], "maxRedeemCountPerCampaignPerUser": 96, "maxRedeemCountPerCode": 59, "maxRedeemCountPerCodePerUser": 47, "maxSaleCount": 0, "name": "t67xPCNi998lWZ2O", "redeemEnd": "1997-01-12T00:00:00Z", "redeemStart": "1991-01-07T00:00:00Z", "redeemType": "DISCOUNT", "status": "INACTIVE", "tags": ["kvQgH96SbTfuOGcM", "Ph6g5R5S5WywDrBg", "AiIl0GI0SJidBZxn"], "type": "REDEMPTION"}' \
    > test.out 2>&1
eval_tap $? 14 'CreateCampaign' test.out

#- 15 GetCampaign
samples/cli/sample-apps Platform getCampaign \
    --campaignId 'NXIyKIkZ6svLj3Bu' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 15 'GetCampaign' test.out

#- 16 UpdateCampaign
samples/cli/sample-apps Platform updateCampaign \
    --campaignId 'EOwDJdUJbZMvorvu' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "p6Z4B2NkaP72OC2Y", "discountConfig": {"categories": [{"categoryPath": "zppKjquMmOnRn8Fc", "includeSubCategories": true}, {"categoryPath": "yXkAseboLNBOXopE", "includeSubCategories": true}, {"categoryPath": "OCaF19GCqqUrcq8e", "includeSubCategories": true}], "currencyCode": "p5Pc1Ykh5XJiZTnR", "currencyNamespace": "HWvUNOcogqrqhigG", "discountAmount": 17, "discountPercentage": 25, "discountType": "PERCENTAGE", "items": [{"itemId": "FdMQNYNCxIabyGSc", "itemName": "l4Eb7bm3sInRvewc"}, {"itemId": "heH05HbFWBi6iMCZ", "itemName": "gRDk9Wcl4aH64uA6"}, {"itemId": "RepSyjjN2KGRZ8F2", "itemName": "JLYqTok2w1mtii09"}], "restrictType": "ITEMS_AND_CATEGORIES", "stackable": false}, "items": [{"extraSubscriptionDays": 55, "itemId": "WgrpJOjhQ37bHuKu", "itemName": "VSGkLn7dq5IF8Q4q", "quantity": 27}, {"extraSubscriptionDays": 10, "itemId": "OOd2kxKKOIzY7kZK", "itemName": "qNLVYgkpp0kwXTF9", "quantity": 38}, {"extraSubscriptionDays": 74, "itemId": "NYX4V5UnB1VHTezX", "itemName": "gIh4Mr4JAgLoLPDF", "quantity": 53}], "maxRedeemCountPerCampaignPerUser": 83, "maxRedeemCountPerCode": 13, "maxRedeemCountPerCodePerUser": 21, "maxSaleCount": 46, "name": "7PGivAT8zQvDmKIq", "redeemEnd": "1982-03-22T00:00:00Z", "redeemStart": "1971-08-05T00:00:00Z", "redeemType": "DISCOUNT", "status": "ACTIVE", "tags": ["lKwjPilFzv0IZS3t", "iBc5xPMwhq45VEfk", "aW1OTLG8F4rpUasd"]}' \
    > test.out 2>&1
eval_tap $? 16 'UpdateCampaign' test.out

#- 17 RenameBatch
samples/cli/sample-apps Platform renameBatch \
    --campaignId 'HL6IOncsbO9EvOXP' \
    --namespace $AB_NAMESPACE \
    --body '{"newName": "iEkYhdGvwYEAIVTG", "oldName": "4VNB5Rbfdbfe7xIy"}' \
    > test.out 2>&1
eval_tap $? 17 'RenameBatch' test.out

#- 18 QueryCampaignBatchNames
samples/cli/sample-apps Platform queryCampaignBatchNames \
    --campaignId 'HkpgcPHeWMbmNi3h' \
    --namespace $AB_NAMESPACE \
    --batchName 'BAPDnvwSl6EZWC29' \
    --limit '46' \
    > test.out 2>&1
eval_tap $? 18 'QueryCampaignBatchNames' test.out

#- 19 GetCampaignDynamic
samples/cli/sample-apps Platform getCampaignDynamic \
    --campaignId '3dTPReh8vnlywH5e' \
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
    --body '{"enableInventoryCheck": false, "itemDeletionCheckConfig": ["DLC", "REWARD", "CATALOG"]}' \
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
    --body '{"appConfig": {"appName": "ybdnZ1rNzoqDDXc1"}, "customConfig": {"connectionType": "INSECURE", "grpcServerAddress": "sCMs78JrbcL5fzHZ"}, "extendType": "CUSTOM"}' \
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
    --body '{"appConfig": {"appName": "2K1BiOrsFfH6hT3z"}, "customConfig": {"connectionType": "TLS", "grpcServerAddress": "iPxm7bPoimetNixs"}, "extendType": "APP"}' \
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
    --storeId 'oR5rn6ixlNREXt8y' \
    > test.out 2>&1
eval_tap $? 31 'GetRootCategories' test.out

#- 32 CreateCategory
samples/cli/sample-apps Platform createCategory \
    --namespace $AB_NAMESPACE \
    --storeId 'EkbPaxHlZTUUDfzx' \
    --body '{"categoryPath": "m1k0A2wNnOjxI0T1", "localizationDisplayNames": {"Fz8L99VG0xvjrGK3": "VxyIvWP9OZ4UfvtT", "aWiBklaacSqxbfmZ": "Z8k87c1TcOfe145y", "DB2bPMrRx7q1DZPD": "B8sa9zPQM3BcMOlZ"}}' \
    > test.out 2>&1
eval_tap $? 32 'CreateCategory' test.out

#- 33 ListCategoriesBasic
samples/cli/sample-apps Platform listCategoriesBasic \
    --namespace $AB_NAMESPACE \
    --storeId 'JeVtyKkAK58AFX23' \
    > test.out 2>&1
eval_tap $? 33 'ListCategoriesBasic' test.out

#- 34 GetCategory
samples/cli/sample-apps Platform getCategory \
    --categoryPath '0vB4kTm01GvlmDFp' \
    --namespace $AB_NAMESPACE \
    --storeId 'pUTMxB13lE3H92ei' \
    > test.out 2>&1
eval_tap $? 34 'GetCategory' test.out

#- 35 UpdateCategory
samples/cli/sample-apps Platform updateCategory \
    --categoryPath 'wmI5N8aCJdDwiFPY' \
    --namespace $AB_NAMESPACE \
    --storeId 'OzcX6cRkIsYF7X5Z' \
    --body '{"localizationDisplayNames": {"wSm4HPTYBt4tqyeC": "AK7ZsiXlCkeYi6Yp", "mIWjAwNOslVhiZxg": "2bKTLzbc1ULpYMSQ", "YckcpMSuDUbOvE6M": "EOWV0POvyulVgYkZ"}}' \
    > test.out 2>&1
eval_tap $? 35 'UpdateCategory' test.out

#- 36 DeleteCategory
samples/cli/sample-apps Platform deleteCategory \
    --categoryPath 'Wo8WaHAyw6s43vqi' \
    --namespace $AB_NAMESPACE \
    --storeId 'Cl9OBPlEdKWGZRW7' \
    > test.out 2>&1
eval_tap $? 36 'DeleteCategory' test.out

#- 37 GetChildCategories
samples/cli/sample-apps Platform getChildCategories \
    --categoryPath 'RrqKKzlGcjJKIBUs' \
    --namespace $AB_NAMESPACE \
    --storeId 'mhKSmWIpQNaKrCze' \
    > test.out 2>&1
eval_tap $? 37 'GetChildCategories' test.out

#- 38 GetDescendantCategories
samples/cli/sample-apps Platform getDescendantCategories \
    --categoryPath 'DoMuy1inZP9Qm5hC' \
    --namespace $AB_NAMESPACE \
    --storeId '0GLIo9yw2RWd3ccy' \
    > test.out 2>&1
eval_tap $? 38 'GetDescendantCategories' test.out

#- 39 QueryCodes
samples/cli/sample-apps Platform queryCodes \
    --campaignId '35N6tNgpOUNCpPF1' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --batchName 'HZhadZv58pX3ZYP7' \
    --batchNo '[13, 64, 95]' \
    --code 'uMP6fTg2Dvp1OoaT' \
    --limit '39' \
    --offset '82' \
    --withBatchName 'true' \
    > test.out 2>&1
eval_tap $? 39 'QueryCodes' test.out

#- 40 CreateCodes
samples/cli/sample-apps Platform createCodes \
    --campaignId 'nv97A1l4QNUJgpc3' \
    --namespace $AB_NAMESPACE \
    --body '{"batchName": "vY5MJeL0F0SeO6E9", "codeValue": "YmUAiZAxmqkYq4Ww", "quantity": 19}' \
    > test.out 2>&1
eval_tap $? 40 'CreateCodes' test.out

#- 41 Download
samples/cli/sample-apps Platform download \
    --campaignId 'btC9xgXVG1TTfkmu' \
    --namespace $AB_NAMESPACE \
    --batchName 'adv6Ay2IdzMsbddT' \
    --batchNo '[64, 6, 40]' \
    --withBatchName 'true' \
    > test.out 2>&1
eval_tap $? 41 'Download' test.out

#- 42 BulkDisableCodes
samples/cli/sample-apps Platform bulkDisableCodes \
    --campaignId 'ErV7sws3f9PN2YzP' \
    --namespace $AB_NAMESPACE \
    --batchName 'cGfP0q043BckWPPM' \
    --batchNo '[70, 92, 62]' \
    > test.out 2>&1
eval_tap $? 42 'BulkDisableCodes' test.out

#- 43 BulkEnableCodes
samples/cli/sample-apps Platform bulkEnableCodes \
    --campaignId 'EBD6vcCRpsMgW36T' \
    --namespace $AB_NAMESPACE \
    --batchName '3QdMknGNBJYnrMvI' \
    --batchNo '[75, 55, 31]' \
    > test.out 2>&1
eval_tap $? 43 'BulkEnableCodes' test.out

#- 44 QueryRedeemHistory
samples/cli/sample-apps Platform queryRedeemHistory \
    --campaignId '6TcQRafnrrOIgRMH' \
    --namespace $AB_NAMESPACE \
    --code 'mFxBHr1qrMd3Pomn' \
    --limit '23' \
    --offset '78' \
    --userId '0csDig79ZG8DCxEu' \
    > test.out 2>&1
eval_tap $? 44 'QueryRedeemHistory' test.out

#- 45 GetCode
samples/cli/sample-apps Platform getCode \
    --code 'PnFiYhMYtoQatKB2' \
    --namespace $AB_NAMESPACE \
    --redeemable 'true' \
    --withBatchName 'false' \
    > test.out 2>&1
eval_tap $? 45 'GetCode' test.out

#- 46 DisableCode
samples/cli/sample-apps Platform disableCode \
    --code 'ezchluYX3Z58stJd' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 46 'DisableCode' test.out

#- 47 EnableCode
samples/cli/sample-apps Platform enableCode \
    --code 'OKWvUJuJhoKbqXy6' \
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
    --body '{"currencyCode": "kJQOmICbJ4oL3TjX", "currencySymbol": "bMXsOLRpJ6TcpQE0", "currencyType": "REAL", "decimals": 35, "localizationDescriptions": {"hTtmqXlGjn03M5vw": "5NJB2NOrAHrz1WVA", "M4kqrSkdDyw7xLdH": "dRw60A3V3Tk2o0Ze", "jCyRZUauIXlYMXG6": "MfuhkwDNx0OkShWs"}}' \
    > test.out 2>&1
eval_tap $? 52 'CreateCurrency' test.out

#- 53 UpdateCurrency
samples/cli/sample-apps Platform updateCurrency \
    --currencyCode '6sibmURaj6TmTP83' \
    --namespace $AB_NAMESPACE \
    --body '{"localizationDescriptions": {"4qObPrnQ0mHgVPN9": "Yyt8ikN9DjUz5cNc", "vxu74lsYhI8Qzjr3": "8bbZnr94DqArPcmN", "mr0Eo4TlHdHs4MAW": "OPDyDz191fgiV0bo"}}' \
    > test.out 2>&1
eval_tap $? 53 'UpdateCurrency' test.out

#- 54 DeleteCurrency
samples/cli/sample-apps Platform deleteCurrency \
    --currencyCode 'EAyVrJsZXo5SNAEJ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 54 'DeleteCurrency' test.out

#- 55 GetCurrencyConfig
samples/cli/sample-apps Platform getCurrencyConfig \
    --currencyCode 'HqdV7TIRSggXcDr5' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 55 'GetCurrencyConfig' test.out

#- 56 GetCurrencySummary
samples/cli/sample-apps Platform getCurrencySummary \
    --currencyCode 'segtBpKgRWbK5hyI' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 56 'GetCurrencySummary' test.out

#- 57 GetDLCItemConfigHistory
samples/cli/sample-apps Platform getDLCItemConfigHistory \
    --namespace $AB_NAMESPACE \
    --dlcId 'J4WRps9GjKVGg4xo' \
    > test.out 2>&1
eval_tap $? 57 'GetDLCItemConfigHistory' test.out

#- 58 RestoreDLCItemConfigHistory
samples/cli/sample-apps Platform restoreDLCItemConfigHistory \
    --id 'W4LZFy3lHCwanUDv' \
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
    --body '{"data": [{"autoUpdate": true, "enableRevocation": false, "id": "TlReo5B9gbWmdfDi", "rewards": [{"currency": {"currencyCode": "CgNXDg4FmNKwGefa", "namespace": "dOC2Yr2QQTAH6q9a"}, "item": {"itemId": "uTyl9r2L79rwhHqu", "itemName": "X27lSWBriohgjdnD", "itemSku": "Cmf8ETodXiIUPZ7Q", "itemType": "3PqwvdgmXobOWPPV"}, "quantity": 58, "type": "ITEM"}, {"currency": {"currencyCode": "VPmWCLSGsC1eUSAs", "namespace": "diEjiLiNm0IKKBx3"}, "item": {"itemId": "El0iNLjjKvZYJXiw", "itemName": "xR7yqAG4w7SUc2LJ", "itemSku": "WL4jqtULeMt59t0I", "itemType": "3dpUgIiJXBuVNJ3v"}, "quantity": 94, "type": "CURRENCY"}, {"currency": {"currencyCode": "VnZIAqpTXBZHAy0S", "namespace": "VNOj8Q8CMhf4aUbK"}, "item": {"itemId": "4XOAmboKixjQQMta", "itemName": "nLd5YULhy29nIJct", "itemSku": "qgOPmPZRTBCcK6VN", "itemType": "RGpN9cqIYmykW2ov"}, "quantity": 34, "type": "CURRENCY"}], "rvn": 88}, {"autoUpdate": false, "enableRevocation": false, "id": "cxwT5NekNDlv6Kvw", "rewards": [{"currency": {"currencyCode": "4xtQ6y54rLC2yOHV", "namespace": "8KLad7zk1k9BpElR"}, "item": {"itemId": "L8N9X1XZp4GNCpEh", "itemName": "kfDeoYpAScll3RgB", "itemSku": "hmFW1U9jdR3EDq6q", "itemType": "Kre4LFeosYjW8VqB"}, "quantity": 13, "type": "CURRENCY"}, {"currency": {"currencyCode": "bXLBLFpOuU6rqsmf", "namespace": "nJppGgZn3hNMUYox"}, "item": {"itemId": "tlRePhOPtfcAdx4I", "itemName": "D0wpePtnLtgMPrwb", "itemSku": "7xWYGTj8pNg0fbHE", "itemType": "CLYav3WTmRimkZA2"}, "quantity": 80, "type": "CURRENCY"}, {"currency": {"currencyCode": "Gql7TXfjBBWoNfSQ", "namespace": "CmeyNJUka3RGxk9N"}, "item": {"itemId": "KPOqMN6YQKsjwdQ8", "itemName": "2Pgc9QZSL2EyBdnx", "itemSku": "7I5mYeqdZM6ITXrg", "itemType": "wnQ0PRNFgqOweBWb"}, "quantity": 4, "type": "CURRENCY"}], "rvn": 76}, {"autoUpdate": true, "enableRevocation": true, "id": "Nf5xytaV4BfTsvUC", "rewards": [{"currency": {"currencyCode": "1cmVbCDbVnOcsOKX", "namespace": "M8PUINxjfYrjFb3A"}, "item": {"itemId": "srWkSTBAwOsjevls", "itemName": "bsRWdTWOuxmu5gpN", "itemSku": "5TTetNh6wXqNGCHK", "itemType": "6jTl6bgmAyQXwFB8"}, "quantity": 86, "type": "ITEM"}, {"currency": {"currencyCode": "WPQHyK82pxUQ4Zzl", "namespace": "k9emEVAhyC4tXnlg"}, "item": {"itemId": "AyHyMg883waqCi4R", "itemName": "B4D9nzxerviAWq1x", "itemSku": "ITtMNy7UGYnmxPcM", "itemType": "WpLOz1KbDEvrqhmc"}, "quantity": 61, "type": "CURRENCY"}, {"currency": {"currencyCode": "0QoGW5Rwb5jr3BTt", "namespace": "Qf2C4c6kn2qEkQyd"}, "item": {"itemId": "06RA7B5OWkVPHp4w", "itemName": "HcSRiMxCgRXkJq0x", "itemSku": "ra9umxmz8U1ZDUPB", "itemType": "6QGCZXkWTS3YgoT8"}, "quantity": 9, "type": "ITEM"}], "rvn": 26}]}' \
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
    --body '{"data": [{"platform": "PSN", "platformDlcIdMap": {"QQTvE2dyOWJIElnV": "9OvJj8PWKroY4Zc6", "iQuXZn4wUnevzgqY": "CPuMqLwVmrCel886", "41MnUooqkKifjBDH": "oqBgUvZnqqKoSbOj"}}, {"platform": "OCULUS", "platformDlcIdMap": {"53AuCQpHnFhwfTbm": "iY5trzUHecacahar", "Zvvx0Rof6wqiC8n4": "vDmL87JrMKZFuWl4", "G1q0YJNDAAS9UFOi": "gLf53TTN15Q7sd36"}}, {"platform": "PSN", "platformDlcIdMap": {"LEomGBfbuj15cxcz": "pB93k46ZVDHzpTuE", "bYCWstw1nOAkPryj": "dQFQiGSNeFXpugsy", "nKfKbeeuKYaICvU1": "sYTX1YSWMNVi0ZlQ"}}]}' \
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
    --appType 'DLC' \
    --entitlementClazz 'APP' \
    --entitlementName 'az3sMolS0fMJxake' \
    --itemId '["p5eSVWNXsd6qE6rk", "k7YIBo31gIvRPyDM", "DCplhN5N4kVdXDhJ"]' \
    --limit '23' \
    --offset '74' \
    --origin 'Other' \
    --userId 'ro3bkUXyX1l1qai8' \
    > test.out 2>&1
eval_tap $? 65 'QueryEntitlements' test.out

#- 66 QueryEntitlementsByItemIds
samples/cli/sample-apps Platform queryEntitlementsByItemIds \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --itemIds '["rwzyPDWusTGgUHpR", "ZSaOdvDP7PBdKnDB", "i2SjZohmm3OqLcCp"]' \
    --limit '90' \
    --offset '5' \
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
    --body '{"entitlementGrantList": [{"collectionId": "heWRCGfsVRMoisSI", "endDate": "1975-11-29T00:00:00Z", "grantedCode": "grskkkRagNtFIIcP", "itemId": "YxrSNHn0SIc701Cc", "itemNamespace": "L8XHTRhFv1Mmr66W", "language": "nm_dUoE-mY", "metadata": {"puQ9pnFregUvE8Oz": {}, "9LQo9pDzgrjN19dw": {}, "Ey1FkcOGdQZkZ2MF": {}}, "origin": "Twitch", "quantity": 68, "region": "Q2tWxPPPe4B9pkTN", "source": "REWARD", "startDate": "1986-10-09T00:00:00Z", "storeId": "9QY7D8gb83hWmPfK"}, {"collectionId": "mANydGBmU4zMr0e8", "endDate": "1986-08-10T00:00:00Z", "grantedCode": "ob7yCiwf5pabTiRA", "itemId": "urW5d8TWiUBVvAKH", "itemNamespace": "XXxBBQz3thN0bXqq", "language": "GR_nwcp", "metadata": {"jezba7LNLCyZ6PEt": {}, "qD4JUeAV0Td4N3yk": {}, "BJLB4x9a9yxchRaT": {}}, "origin": "System", "quantity": 50, "region": "9Fa1vCt69yCTtoWb", "source": "GIFT", "startDate": "1987-08-29T00:00:00Z", "storeId": "0OnJtGWRx8DX8ctd"}, {"collectionId": "m09rF10ehpPMIRCP", "endDate": "1998-04-06T00:00:00Z", "grantedCode": "FmKJhgrlrIX2LKXm", "itemId": "2I3IQNt6V0eFtRGq", "itemNamespace": "8PQbgqUuktKo6CO4", "language": "ph", "metadata": {"p9qccFcmiFWPe7vk": {}, "Ah82YReHlTSB7VL0": {}, "SJ9xEsQO1EVnP8CF": {}}, "origin": "Epic", "quantity": 58, "region": "xjCrQjKtBaFZczdR", "source": "REWARD", "startDate": "1997-09-09T00:00:00Z", "storeId": "xqE2ZJ4SuzMhibVl"}], "userIds": ["Vs7UfbihSCA8gXuU", "wLKSQVGKcJcUnY79", "1313uyrIpULzNafp"]}' \
    > test.out 2>&1
eval_tap $? 69 'GrantEntitlements' test.out

#- 70 RevokeEntitlements
samples/cli/sample-apps Platform revokeEntitlements \
    --namespace $AB_NAMESPACE \
    --body '["O9oBWkJXLpiF52ry", "i4NME29qDK4hOpjo", "Gle67GoYX6y3d0s9"]' \
    > test.out 2>&1
eval_tap $? 70 'RevokeEntitlements' test.out

#- 71 GetEntitlement
samples/cli/sample-apps Platform getEntitlement \
    --entitlementId 'BaLHQGHMzee1IJBg' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 71 'GetEntitlement' test.out

#- 72 QueryFulfillmentHistories
samples/cli/sample-apps Platform queryFulfillmentHistories \
    --namespace $AB_NAMESPACE \
    --limit '73' \
    --offset '24' \
    --status 'FAIL' \
    --userId '3zztCcbO8ZKvpS55' \
    > test.out 2>&1
eval_tap $? 72 'QueryFulfillmentHistories' test.out

#- 73 QueryIAPClawbackHistory
samples/cli/sample-apps Platform queryIAPClawbackHistory \
    --namespace $AB_NAMESPACE \
    --endTime 'khvj37JVAJCR5gyx' \
    --eventType 'CHARGEBACK' \
    --externalOrderId 'seTVeTXxIUkQkVPp' \
    --limit '57' \
    --offset '11' \
    --startTime 'GBvqtkvWGdV5bP72' \
    --status 'FAIL' \
    --userId 'NIZUGnqGkhemjMgF' \
    > test.out 2>&1
eval_tap $? 73 'QueryIAPClawbackHistory' test.out

#- 74 MockPlayStationStreamEvent
samples/cli/sample-apps Platform mockPlayStationStreamEvent \
    --namespace $AB_NAMESPACE \
    --body '{"body": {"account": "jMpTDcLkheulmg0U", "additionalData": {"entitlement": [{"clientTransaction": [{"amountConsumed": 87, "clientTransactionId": "TkmhnVyVYT8TbgMM"}, {"amountConsumed": 63, "clientTransactionId": "mFbTB9xEGu9Qbopx"}, {"amountConsumed": 99, "clientTransactionId": "YyLgRlF2dUtMzhkz"}], "entitlementId": "S74LLSgFXV4ocA0r", "usageCount": 31}, {"clientTransaction": [{"amountConsumed": 21, "clientTransactionId": "GtBjQMIifJoRoyEs"}, {"amountConsumed": 43, "clientTransactionId": "MhYt8DuG1sFQTLCI"}, {"amountConsumed": 1, "clientTransactionId": "VQcNqCt3GljmhiHF"}], "entitlementId": "Gv7KL4SAJP29biiW", "usageCount": 33}, {"clientTransaction": [{"amountConsumed": 27, "clientTransactionId": "oltygOWmfXospWfu"}, {"amountConsumed": 73, "clientTransactionId": "WZ5kxTt5fotOlN5t"}, {"amountConsumed": 15, "clientTransactionId": "LUEJdpLL4JvGZY6c"}], "entitlementId": "8y2FYLS65Ck7hR1B", "usageCount": 24}], "purpose": "e6einB3nZ4yqaxl5"}, "originalTitleName": "APBOradYjfnXSaaw", "paymentProductSKU": "haTQDDAhGWW1YWSa", "purchaseDate": "q9UpRz60vMtRhhvD", "sourceOrderItemId": "yLkgxNgdlFEkEgiA", "titleName": "rh0aCIXE7RF7Rjla"}, "eventDomain": "kiTtGcnLa8aq6AW5", "eventSource": "JRSVhV7hVEtpmL1j", "eventType": "w7atfk0aVzS30i7J", "eventVersion": 94, "id": "RAg6oJi9iSY8Lrja", "timestamp": "YCZMPHMZ3p3BBjYg"}' \
    > test.out 2>&1
eval_tap $? 74 'MockPlayStationStreamEvent' test.out

#- 75 MockXblClawbackEvent
samples/cli/sample-apps Platform mockXblClawbackEvent \
    --namespace $AB_NAMESPACE \
    --body '{"data": {"eventDate": "BAivouGcDnw6OtyF", "eventState": "wiMVdHyth0vtiFQi", "lineItemId": "UnBxFI1rwRZiJvrH", "orderId": "xQUuSGHnbBAok3pU", "productId": "dSz1h7mUKBKi8BST", "productType": "DAu90Wlq7FFZjWLl", "purchasedDate": "gWi6LNi5ebKRcYs8", "sandboxId": "dUl984xMff9eItwf", "skuId": "8wDcVmaf4FjzC8dM", "subscriptionData": {"consumedDurationInDays": 12, "dateTime": "sHWgm0oJMGjWYdqb", "durationInDays": 6, "recurrenceId": "fjjOywkueVTuaSbg"}}, "datacontenttype": "ppoajlJG3qS9ylTN", "id": "XAwvKfNGEuAgckmZ", "source": "HeKBVz2165oRPPkv", "specVersion": "sWOvseQftmEFC84z", "subject": "Hne5JZoSRRn0zlyz", "time": "s4r0AYeOCsc4kDi2", "traceparent": "r1ciBEPamq0aMrTs", "type": "42bNqbHZkiWqaM6k"}' \
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
    --body '{"appAppleId": 29, "bundleId": "gFcySP6HP7cyNxhg", "issuerId": "j2bqKIS5JtlNqqB2", "keyId": "qyacmL0ucAup5yOw", "password": "jbTzr8bJT9C3k5uT", "version": "V2"}' \
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
    --body '{"sandboxId": "um54KNipMKTjvPFl"}' \
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
    --body '{"applicationName": "Z041yIQ3yM3GXcD6", "notificationTokenAudience": "MavrcR0k2uKKdgNx", "notificationTokenEmail": "evZKCOe7eFecwCtx", "packageName": "Yn11KUVJiWzpaPEo", "serviceAccountId": "EmZ3IUphurN9zQt0"}' \
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
    --body '{"data": [{"itemIdentity": "Koo3FTOwaWm9Uf1W", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"RgeVxrGxKHi7F84G": "8c5tN5vC36V2Q7Zm", "kQPdTblJLaVXjA0m": "aZSkPlJLstDcV8X4", "ro999S18notnEuQA": "3GKrsjVELr5DDWyb"}}, {"itemIdentity": "VDrWmdCF7FVZL9Gs", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"TSzuxVtS9LrPDw8W": "v3s0BL0vgCcNO9pP", "yW2iIzoECtgHd9Nz": "4hQqTjYXO8IWFKs0", "T3EfpiMWB5id5pXH": "x1oAHDTrqiCoYmpR"}}, {"itemIdentity": "kyUldbEIipaAR6hP", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"24BrG9AalLtIVMiG": "6bqr0wEEJrIoQJBF", "bqUplShr4PYr89dg": "gY1jovjyC9qvEnvc", "TOIoUGfPnvBAniNZ": "h4vkJ4dmcq4MlYGp"}}]}' \
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
    --body '{"appId": "yyxmessxb3YuHK6b", "appSecret": "yX1kPx3k0SmARxwT", "webhookVerifyToken": "hP5Ikbr7mLZbHQvb"}' \
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
    --body '{"sku": "AanjUgVdaG1NceFY"}' \
    > test.out 2>&1
eval_tap $? 94 'CreateOculusSubscriptionGroup' test.out

#- 95 DeleteOculusSubscriptionGroup
samples/cli/sample-apps Platform deleteOculusSubscriptionGroup \
    --namespace $AB_NAMESPACE \
    --sku 'eavjwcGXC6RBRos3' \
    > test.out 2>&1
eval_tap $? 95 'DeleteOculusSubscriptionGroup' test.out

#- 96 ListOculusSubscriptionGroupTier
samples/cli/sample-apps Platform listOculusSubscriptionGroupTier \
    --namespace $AB_NAMESPACE \
    --sku 'FUvz3q7jioi6QVZl' \
    > test.out 2>&1
eval_tap $? 96 'ListOculusSubscriptionGroupTier' test.out

#- 97 AddTierIntoMetaQuestSubscriptionGroup
samples/cli/sample-apps Platform addTierIntoMetaQuestSubscriptionGroup \
    --namespace $AB_NAMESPACE \
    --body '{"groupSku": "BuH3B63eTIOq3JET", "sku": "Zw4uY9NNfi9oMsWt"}' \
    > test.out 2>&1
eval_tap $? 97 'AddTierIntoMetaQuestSubscriptionGroup' test.out

#- 98 DeleteOculusSubscriptionTier
samples/cli/sample-apps Platform deleteOculusSubscriptionTier \
    --namespace $AB_NAMESPACE \
    --sku 'dEhLwVOaNaHsREFA' \
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
    --body '{"backOfficeServerClientId": "ILxvRRQhIbDsy6tr", "backOfficeServerClientSecret": "A63LGCJxmdb1jvUz", "enableStreamJob": false, "environment": "rB5k50w5nvP8CTwq", "streamName": "PPNLJYHPxD4BAZSh", "streamPartnerName": "6wtWX7mAs0v5tu46"}' \
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
    --body '{"backOfficeServerClientId": "RJHcBRP52VPB6X3m", "backOfficeServerClientSecret": "rG9VLHOju4qpVGxj", "enableStreamJob": true, "environment": "FPFqod3QrzetC9Vq", "streamName": "LCgDqN5wLDnqXmGU", "streamPartnerName": "PCFcRWD9AW4qb5y7"}' \
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
    --body '{"appId": "dpaSyhGNTlUijSsP", "env": "SANDBOX", "publisherAuthenticationKey": "P8Drr172KCiegH0Q", "syncMode": "INVENTORY"}' \
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
    --body '{"clientId": "3wHX1Ni4oaWYmq94", "clientSecret": "f7UefJLpAOfjqdgD", "organizationId": "Yk10x1FhDxR2ZuIQ"}' \
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
    --body '{"enableClawback": false, "entraAppClientId": "jlgzYNiDi3sHs8iO", "entraAppClientSecret": "H2GvXqgT1SkbguK3", "entraTenantId": "u53N15ntopsfSxJ1", "relyingPartyCert": "uiEeub6ZxVaKj0bX"}' \
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
    --password 'QILmnr9F7IbJsLrF' \
    > test.out 2>&1
eval_tap $? 113 'UpdateXblBPCertFile' test.out

#- 114 QueryThirdPartyNotifications
samples/cli/sample-apps Platform queryThirdPartyNotifications \
    --namespace $AB_NAMESPACE \
    --endDate 'bqNku13kp4fTmfhN' \
    --externalId 'bsM2pognrAmHXNYT' \
    --limit '63' \
    --offset '75' \
    --source 'XBOX' \
    --startDate 'MhmVB9DfZ4W4EAbE' \
    --status 'IGNORED' \
    --type 'lUJoZEEUjeoJyQ6N' \
    > test.out 2>&1
eval_tap $? 114 'QueryThirdPartyNotifications' test.out

#- 115 QueryAbnormalTransactions
samples/cli/sample-apps Platform queryAbnormalTransactions \
    --namespace $AB_NAMESPACE \
    --limit '48' \
    --offset '13' \
    --orderId 'oZeDEoZZI5RkAlH1' \
    --steamId 'rcr6pzOaugAF3cdU' \
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
    --body '{"env": "LIVE", "lastTime": "1975-12-17T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 117 'AdminResetSteamJobTime' test.out

#- 118 AdminRefundIAPOrder
samples/cli/sample-apps Platform adminRefundIAPOrder \
    --iapOrderNo 'tPC9CpedtJnLWwpS' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 118 'AdminRefundIAPOrder' test.out

#- 119 QuerySteamReportHistories
samples/cli/sample-apps Platform querySteamReportHistories \
    --namespace $AB_NAMESPACE \
    --limit '25' \
    --offset '35' \
    --orderId 'HXxucnzotej6GP8L' \
    --processStatus 'ERROR' \
    --steamId 'sshqQqPp7h545V6g' \
    > test.out 2>&1
eval_tap $? 119 'QuerySteamReportHistories' test.out

#- 120 QueryThirdPartySubscription
samples/cli/sample-apps Platform queryThirdPartySubscription \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --groupId '5ZvERf72UV2AfIZi' \
    --limit '4' \
    --offset '14' \
    --platform 'EPICGAMES' \
    --productId 'Rv8gmmZB7VOjc9kr' \
    --userId 'VlWVZdTKTXYsmS0C' \
    > test.out 2>&1
eval_tap $? 120 'QueryThirdPartySubscription' test.out

#- 121 GetIAPOrderConsumeDetails
samples/cli/sample-apps Platform getIAPOrderConsumeDetails \
    --iapOrderNo '5FKbtq3EqOkJKIXG' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 121 'GetIAPOrderConsumeDetails' test.out

#- 122 DownloadInvoiceDetails
samples/cli/sample-apps Platform downloadInvoiceDetails \
    --namespace $AB_NAMESPACE \
    --endTime 'HYonCX5q6p9YGdA5' \
    --feature 'GLshhxfcBHr5FpfA' \
    --itemId '4OvBZmSMD4k9Yp3u' \
    --itemType 'CODE' \
    --startTime 'FeEBkfcXmvqSz2h3' \
    > test.out 2>&1
eval_tap $? 122 'DownloadInvoiceDetails' test.out

#- 123 GenerateInvoiceSummary
samples/cli/sample-apps Platform generateInvoiceSummary \
    --namespace $AB_NAMESPACE \
    --endTime 'p49ZuWMilQezVaRM' \
    --feature 'oOGkRvmMS9byVmK0' \
    --itemId 'NecBdjB2p1CnpPhc' \
    --itemType 'MEDIA' \
    --startTime 'imc5qC4VZVW0L3HZ' \
    > test.out 2>&1
eval_tap $? 123 'GenerateInvoiceSummary' test.out

#- 124 SyncInGameItem
samples/cli/sample-apps Platform syncInGameItem \
    --namespace $AB_NAMESPACE \
    --storeId 'XxIt9vxPl5j49fzj' \
    --body '{"categoryPath": "NBNTX9OsKkVJxL3K", "targetItemId": "OnsgCyvTDblGZCjp", "targetNamespace": "VUdROFS5N1Q5S1ln"}' \
    > test.out 2>&1
eval_tap $? 124 'SyncInGameItem' test.out

#- 125 CreateItem
samples/cli/sample-apps Platform createItem \
    --namespace $AB_NAMESPACE \
    --storeId 'j07wJC7w9a7KiwxB' \
    --body '{"appId": "nMG1sz8V2v2uIe6H", "appType": "GAME", "baseAppId": "6QKCJ5u8dVDT9sVX", "boothName": "80q9EGe2Qtn71cx4", "categoryPath": "902647RNxoqH4Lb9", "clazz": "l5pserDOqt7rG8Pf", "displayOrder": 71, "entitlementType": "DURABLE", "ext": {"BgVct4EKO3pHK9hj": {}, "M5yTQFUPTXU2uyPe": {}, "WxXHSJVNnHEk6BTk": {}}, "features": ["7rjGEyuH2rbCh5a3", "opZeqlx6MS2bdgSQ", "oaeORRdFWoWABXoB"], "flexible": false, "images": [{"as": "5uBxtwqOZCVcFDjI", "caption": "tqS4q7DhEUY6HYhz", "height": 12, "imageUrl": "kFp66LJpjhxLIcP0", "smallImageUrl": "7haRojyvyxwvjfDq", "width": 95}, {"as": "cVCipOL9DsrgijAa", "caption": "k0MGh7VpVzIySLnR", "height": 16, "imageUrl": "TTTbjO8y7TnvyQHK", "smallImageUrl": "YeuwEtJebi7BSHXL", "width": 66}, {"as": "ktDXIT8smVjqjHo3", "caption": "ERulUfL7Sfe7vB70", "height": 49, "imageUrl": "1jeGDfcuQ9TgJhYd", "smallImageUrl": "Sbsw8yMXtumM1E8W", "width": 80}], "inventoryConfig": {"customAttributes": {"CE3w94TQHMXHjJDp": {}, "T4ruu6VR4QjmBRSw": {}, "posyX9bhCuyLPDdS": {}}, "serverCustomAttributes": {"8EAFt2684RXbE6iP": {}, "naRjgn3DB4p4zyBK": {}, "lPRvXUPKErstPfbq": {}}, "slotUsed": 14}, "itemId": "ChWGcysgS6eCMyN0", "itemIds": ["ATuzrU3Rk2wmDb0O", "SoUDXSZX2Dvxwach", "yz2bRhyN1kQdhL0t"], "itemQty": {"MvHjQYRugN4oRKYY": 11, "Khw95N7bCORJ6xcV": 43, "pUTEQ47ur9h47E4h": 17}, "itemType": "INGAMEITEM", "listable": true, "localizations": {"GgPpThNUytfN7ESo": {"description": "NF7DKEr7gt6BVhRb", "localExt": {"VegDhGeGEsxIQE6w": {}, "zbx58fDbrNee3Cjq": {}, "mco1Hurv2P9T61X0": {}}, "longDescription": "96H7TBdtp1oXYXEE", "title": "rTaHbMmQjNgs4x2l"}, "A0zDSIKUjkZP8f5q": {"description": "9vU0TgN34u5lsiMG", "localExt": {"YoRIvjaIaWbA9LKc": {}, "WhIeX59ssXBuwokb": {}, "kENbUcWsGiT1g2Zd": {}}, "longDescription": "L9qxpK9s8JNpPYsb", "title": "dd7pKXArQ4EshlGr"}, "qLKRAeKcmTMaVQSi": {"description": "K3WfnPBVrv73pRiD", "localExt": {"rhzNiGmpCNN74NDt": {}, "ftn8BLemg53nWXwL": {}, "ZjgrEOFgQ5RyDC2z": {}}, "longDescription": "ZQj4UBTG6iRdYCKt", "title": "LiwGD6INGWt2Wusp"}}, "lootBoxConfig": {"rewardCount": 90, "rewards": [{"lootBoxItems": [{"count": 90, "duration": 38, "endDate": "1981-08-24T00:00:00Z", "itemId": "fOwTw1o6304tZcFA", "itemSku": "dKnNljOLLPFDayvL", "itemType": "gGrj9IvPJ9RYHJlk"}, {"count": 85, "duration": 12, "endDate": "1998-01-31T00:00:00Z", "itemId": "bH17dw7c6rmJ1tXn", "itemSku": "VQrzY9DfbbvDFVVw", "itemType": "C1Ftytz35nTI7cgj"}, {"count": 27, "duration": 65, "endDate": "1988-03-05T00:00:00Z", "itemId": "oVmtaUGstBBxfvni", "itemSku": "YnsbnaFt6zRJWxv3", "itemType": "0tTsfBWuiEpDdaI5"}], "name": "AmbB9qhHyCmGtuub", "odds": 0.08365633218136714, "type": "REWARD", "weight": 38}, {"lootBoxItems": [{"count": 2, "duration": 28, "endDate": "1984-09-21T00:00:00Z", "itemId": "WAIqfI48CU01eq4j", "itemSku": "tu93EubRjHo4ptbS", "itemType": "Lo4GebMmYm4WJJBp"}, {"count": 30, "duration": 9, "endDate": "1990-05-21T00:00:00Z", "itemId": "YDOYE5RMsif6Uixj", "itemSku": "dvdyBxcFda86rzKp", "itemType": "lVVlrVGnUOFlZ2DZ"}, {"count": 54, "duration": 13, "endDate": "1996-04-13T00:00:00Z", "itemId": "OixfF09LH9KvztVa", "itemSku": "x5NpoY6gk5SnDI9w", "itemType": "zwT0p4S6aYACEiRD"}], "name": "GKISpT39YRT8QlJ4", "odds": 0.3021199939013961, "type": "PROBABILITY_GROUP", "weight": 55}, {"lootBoxItems": [{"count": 53, "duration": 20, "endDate": "1987-12-11T00:00:00Z", "itemId": "KbUd6dAgdqEW0Utf", "itemSku": "Cm558r26XKU5Q8RD", "itemType": "A0bgQ1StLSk9VPQW"}, {"count": 64, "duration": 45, "endDate": "1974-11-04T00:00:00Z", "itemId": "3eRSZsOwKFldIhDQ", "itemSku": "pus7Gq87aaPGZzEb", "itemType": "sAyDYhODcbflCqFO"}, {"count": 95, "duration": 30, "endDate": "1992-08-01T00:00:00Z", "itemId": "OL9QcpPKJKGNC5C1", "itemSku": "dJUAXmjTnxlXwv3F", "itemType": "BCkK4gOhlO6TY4tX"}], "name": "oSDHCDjgqZv9Js5r", "odds": 0.7877104560438466, "type": "PROBABILITY_GROUP", "weight": 68}], "rollFunction": "DEFAULT"}, "maxCount": 94, "maxCountPerUser": 23, "name": "0DApsj23RQDPVwDZ", "optionBoxConfig": {"boxItems": [{"count": 18, "duration": 82, "endDate": "1982-05-02T00:00:00Z", "itemId": "T2smAE84Rah9i58A", "itemSku": "kQQ3NNIuLuDVtLK1", "itemType": "IpXJVyOClGSvLCYu"}, {"count": 46, "duration": 41, "endDate": "1998-12-16T00:00:00Z", "itemId": "QEg4QLaX7ANUXhbN", "itemSku": "2ftE9FRobgMDmVoE", "itemType": "9jgPHdbS9mpbmY8x"}, {"count": 5, "duration": 62, "endDate": "1974-01-31T00:00:00Z", "itemId": "yH5ixa5RyFDpogM1", "itemSku": "fb60ON0bppKJO3Ek", "itemType": "bjdMp72Hvh4KPK5P"}]}, "purchasable": true, "recurring": {"cycle": "YEARLY", "fixedFreeDays": 9, "fixedTrialCycles": 52, "graceDays": 31}, "regionData": {"mIR5YKL8MfYlCMn4": [{"currencyCode": "kDmqMeIlL3UP7Nny", "currencyNamespace": "GhYxZB6GA0tQg9xH", "currencyType": "VIRTUAL", "discountAmount": 41, "discountExpireAt": "1996-12-04T00:00:00Z", "discountPercentage": 83, "discountPurchaseAt": "1975-02-10T00:00:00Z", "expireAt": "1971-04-11T00:00:00Z", "price": 40, "purchaseAt": "1991-06-01T00:00:00Z", "trialPrice": 37}, {"currencyCode": "AMy81y9bZf9HWAUC", "currencyNamespace": "nvjMcyOOSY0wbNDA", "currencyType": "REAL", "discountAmount": 14, "discountExpireAt": "1989-10-07T00:00:00Z", "discountPercentage": 21, "discountPurchaseAt": "1978-03-26T00:00:00Z", "expireAt": "1977-08-04T00:00:00Z", "price": 93, "purchaseAt": "1992-07-23T00:00:00Z", "trialPrice": 93}, {"currencyCode": "GxEgQZZkpnzOMIpt", "currencyNamespace": "mOCbmhjixvhMhBDp", "currencyType": "REAL", "discountAmount": 49, "discountExpireAt": "1971-09-29T00:00:00Z", "discountPercentage": 86, "discountPurchaseAt": "1971-12-04T00:00:00Z", "expireAt": "1991-06-12T00:00:00Z", "price": 70, "purchaseAt": "1992-11-29T00:00:00Z", "trialPrice": 5}], "GKIl3dyFBg3knvPk": [{"currencyCode": "vBlDfaaTSw0o8BsT", "currencyNamespace": "sDHe3LxlpfJ0wQHv", "currencyType": "REAL", "discountAmount": 74, "discountExpireAt": "1991-01-18T00:00:00Z", "discountPercentage": 47, "discountPurchaseAt": "1971-10-16T00:00:00Z", "expireAt": "1982-05-07T00:00:00Z", "price": 28, "purchaseAt": "1974-08-17T00:00:00Z", "trialPrice": 81}, {"currencyCode": "8JL6BtZX8xUavt33", "currencyNamespace": "k4JXgkygzz9zrVsy", "currencyType": "VIRTUAL", "discountAmount": 33, "discountExpireAt": "1999-02-25T00:00:00Z", "discountPercentage": 80, "discountPurchaseAt": "1981-10-09T00:00:00Z", "expireAt": "1982-07-23T00:00:00Z", "price": 7, "purchaseAt": "1997-12-14T00:00:00Z", "trialPrice": 90}, {"currencyCode": "spVE8mW07QVJK5eH", "currencyNamespace": "ghqnlCSe2aMHg1Zi", "currencyType": "VIRTUAL", "discountAmount": 6, "discountExpireAt": "1974-10-11T00:00:00Z", "discountPercentage": 49, "discountPurchaseAt": "1971-01-31T00:00:00Z", "expireAt": "1993-07-29T00:00:00Z", "price": 43, "purchaseAt": "1977-06-18T00:00:00Z", "trialPrice": 18}], "rt4yvQbFBAdHMlbp": [{"currencyCode": "sZ5yzxTVLYGcDbQX", "currencyNamespace": "DXKf8oWxtI9ADmUO", "currencyType": "REAL", "discountAmount": 79, "discountExpireAt": "1999-07-31T00:00:00Z", "discountPercentage": 77, "discountPurchaseAt": "1981-08-21T00:00:00Z", "expireAt": "1999-04-24T00:00:00Z", "price": 77, "purchaseAt": "1985-11-28T00:00:00Z", "trialPrice": 75}, {"currencyCode": "JrF0VlCZFGQGlg0D", "currencyNamespace": "ibwEcUECwxYrtd22", "currencyType": "REAL", "discountAmount": 84, "discountExpireAt": "1996-04-23T00:00:00Z", "discountPercentage": 6, "discountPurchaseAt": "1978-08-11T00:00:00Z", "expireAt": "1980-01-19T00:00:00Z", "price": 25, "purchaseAt": "1991-11-04T00:00:00Z", "trialPrice": 53}, {"currencyCode": "k7gJo4ssJ0hHKdCQ", "currencyNamespace": "v8ce4pR1kL3TwAHl", "currencyType": "VIRTUAL", "discountAmount": 47, "discountExpireAt": "1997-01-26T00:00:00Z", "discountPercentage": 76, "discountPurchaseAt": "1978-10-19T00:00:00Z", "expireAt": "1977-05-16T00:00:00Z", "price": 49, "purchaseAt": "1987-01-23T00:00:00Z", "trialPrice": 71}]}, "saleConfig": {"currencyCode": "tJni7PNMLCyVEPYv", "price": 16}, "seasonType": "TIER", "sectionExclusive": true, "sellable": true, "sku": "RabJ5rnStu3bqILg", "stackable": false, "status": "ACTIVE", "tags": ["77Qta2SU3Bey16to", "zK0gYPS4paQPK3aU", "TOK6NPd4bxuD6RUR"], "targetCurrencyCode": "NfJq3r4etACJYQH9", "targetNamespace": "YrlQVkid2q3iNYmF", "thumbnailUrl": "2spdRQ7xNTYq0Bmz", "useCount": 97}' \
    > test.out 2>&1
eval_tap $? 125 'CreateItem' test.out

#- 126 GetItemByAppId
samples/cli/sample-apps Platform getItemByAppId \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'RpmxlhkVUWC8TkH1' \
    --appId 'cZZjXMTAXkSOeG6E' \
    > test.out 2>&1
eval_tap $? 126 'GetItemByAppId' test.out

#- 127 QueryItems
samples/cli/sample-apps Platform queryItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --appType 'SOFTWARE' \
    --availableDate 'GDJ1idAB2qUdiFzE' \
    --baseAppId '8PxCJL2Cih44cOKP' \
    --categoryPath 'nih8CtsGh3BYOG4p' \
    --features 'zqgefyKjzWjAvez5' \
    --includeSubCategoryItem 'false' \
    --itemType 'MEDIA' \
    --limit '41' \
    --offset '54' \
    --region 'MbDQKPqe2ZQeIF87' \
    --sortBy '["name", "name:asc", "displayOrder"]' \
    --storeId 'W35gfS737ptTHAV9' \
    --tags 'Dq7vDlhnUK57MBzm' \
    --targetNamespace 'gsm8yA0NSIglN86t' \
    > test.out 2>&1
eval_tap $? 127 'QueryItems' test.out

#- 128 ListBasicItemsByFeatures
samples/cli/sample-apps Platform listBasicItemsByFeatures \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --features '["YDp1CPs86Yt2vvHj", "Wl1mSTv5zJBAFCcQ", "UnUFlbORq5kMcbYo"]' \
    > test.out 2>&1
eval_tap $? 128 'ListBasicItemsByFeatures' test.out

#- 129 GetItems
samples/cli/sample-apps Platform getItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'GDJzzJHGKdJstZ0P' \
    --itemIds 'JhuYS2Qr5Dty3YOu' \
    > test.out 2>&1
eval_tap $? 129 'GetItems' test.out

#- 130 GetItemBySku
samples/cli/sample-apps Platform getItemBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --storeId '2kEu6rYuqGFOCmez' \
    --sku 'U9H3FgaVZf8KrGD3' \
    > test.out 2>&1
eval_tap $? 130 'GetItemBySku' test.out

#- 131 GetLocaleItemBySku
samples/cli/sample-apps Platform getLocaleItemBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --language 'CVfRSAGOUvikdp0E' \
    --populateBundle 'true' \
    --region 'eAhYy09Hufmzjj8g' \
    --storeId 'RJWDmsBd3nvygi7i' \
    --sku 'OC0IPv5D0gmGPaxx' \
    > test.out 2>&1
eval_tap $? 131 'GetLocaleItemBySku' test.out

#- 132 GetEstimatedPrice
samples/cli/sample-apps Platform getEstimatedPrice \
    --namespace $AB_NAMESPACE \
    --platform 'q7fUQiBfAEGfwfPB' \
    --region 'YI2Fk8dD1smHi5ia' \
    --storeId '33y3hxAF19WLKEX8' \
    --itemIds 'bp2nN6PnvuKpE66n' \
    --userId 'VtuR6RnBZ87VAGUu' \
    > test.out 2>&1
eval_tap $? 132 'GetEstimatedPrice' test.out

#- 133 GetItemIdBySku
samples/cli/sample-apps Platform getItemIdBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --storeId 'P833wz1aSu7Ja5iq' \
    --sku 'twomzBjqQ8KpcSK7' \
    > test.out 2>&1
eval_tap $? 133 'GetItemIdBySku' test.out

#- 134 GetBulkItemIdBySkus
samples/cli/sample-apps Platform getBulkItemIdBySkus \
    --namespace $AB_NAMESPACE \
    --sku '["mTjxX3tZIx2X2upC", "vqVKPAiBq2sNZxTF", "Rs0695yDkHR0td3A"]' \
    --storeId 'VNK3Zeb6ukNH26xu' \
    > test.out 2>&1
eval_tap $? 134 'GetBulkItemIdBySkus' test.out

#- 135 BulkGetLocaleItems
samples/cli/sample-apps Platform bulkGetLocaleItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --language 'I7V2lByKGm9p3uYB' \
    --region 'PEYeSJ2djQZOsg8w' \
    --storeId 'uDLGkbPtKV8NB4pb' \
    --itemIds 'm1ZbRTiktcTQzR2s' \
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
    --platform 'I96mG2jnPoxbTCIF' \
    --userId 'C4EbIYG6nItZKkfw' \
    --body '{"itemIds": ["UTIEzy2VULALDNjF", "dXQAUQ0WcX6T7aWt", "FJ4iCerC0PVxZ5ZZ"]}' \
    > test.out 2>&1
eval_tap $? 137 'ValidateItemPurchaseCondition' test.out

#- 138 BulkUpdateRegionData
samples/cli/sample-apps Platform bulkUpdateRegionData \
    --namespace $AB_NAMESPACE \
    --storeId 'NfSdDt8VsfMeq80T' \
    --body '{"changes": [{"itemIdentities": ["uBTsCMSWZAaPkZee", "pau807qWLjQcc49E", "6ox5u60I31BVgcey"], "itemIdentityType": "ITEM_ID", "regionData": {"k2FNFhSGZFCcKZ46": [{"currencyCode": "I9AIdbmJOb8QHEKZ", "currencyNamespace": "UHAMJ4Yfssedr66M", "currencyType": "REAL", "discountAmount": 40, "discountExpireAt": "1986-03-12T00:00:00Z", "discountPercentage": 15, "discountPurchaseAt": "1989-01-29T00:00:00Z", "discountedPrice": 25, "expireAt": "1973-02-20T00:00:00Z", "price": 40, "purchaseAt": "1996-01-20T00:00:00Z", "trialPrice": 75}, {"currencyCode": "tzri6VUSegcaVhZe", "currencyNamespace": "6ty7q4JAP5uhYew6", "currencyType": "VIRTUAL", "discountAmount": 45, "discountExpireAt": "1992-04-06T00:00:00Z", "discountPercentage": 100, "discountPurchaseAt": "1979-05-21T00:00:00Z", "discountedPrice": 12, "expireAt": "1978-06-10T00:00:00Z", "price": 4, "purchaseAt": "1987-06-13T00:00:00Z", "trialPrice": 45}, {"currencyCode": "TDU7SIgh7jJq1e5d", "currencyNamespace": "Ky7hOWXzepuwsUbp", "currencyType": "VIRTUAL", "discountAmount": 85, "discountExpireAt": "1987-10-05T00:00:00Z", "discountPercentage": 6, "discountPurchaseAt": "1975-09-24T00:00:00Z", "discountedPrice": 36, "expireAt": "1974-05-20T00:00:00Z", "price": 1, "purchaseAt": "1995-01-19T00:00:00Z", "trialPrice": 11}], "d83iTPQa0gULA4HT": [{"currencyCode": "Y402r92rsAoHe18a", "currencyNamespace": "AXdmTdt7Ga6qvoyp", "currencyType": "VIRTUAL", "discountAmount": 53, "discountExpireAt": "1975-09-29T00:00:00Z", "discountPercentage": 55, "discountPurchaseAt": "1993-08-31T00:00:00Z", "discountedPrice": 47, "expireAt": "1996-04-09T00:00:00Z", "price": 98, "purchaseAt": "1985-06-15T00:00:00Z", "trialPrice": 17}, {"currencyCode": "npb4wADihtUqawAp", "currencyNamespace": "gNYZahUG35orTQVs", "currencyType": "VIRTUAL", "discountAmount": 1, "discountExpireAt": "1975-12-31T00:00:00Z", "discountPercentage": 24, "discountPurchaseAt": "1978-05-20T00:00:00Z", "discountedPrice": 92, "expireAt": "1987-10-24T00:00:00Z", "price": 97, "purchaseAt": "1981-03-20T00:00:00Z", "trialPrice": 81}, {"currencyCode": "450PMMNuEHT4mpYL", "currencyNamespace": "CDmxTzecwjkmzQyv", "currencyType": "VIRTUAL", "discountAmount": 69, "discountExpireAt": "1988-01-01T00:00:00Z", "discountPercentage": 63, "discountPurchaseAt": "1973-11-16T00:00:00Z", "discountedPrice": 100, "expireAt": "1996-03-01T00:00:00Z", "price": 3, "purchaseAt": "1998-04-03T00:00:00Z", "trialPrice": 34}], "OfBT6H1tj1LKDofB": [{"currencyCode": "ReZmJnaHCmlp4tsK", "currencyNamespace": "VQgRKejWVXGUAK88", "currencyType": "VIRTUAL", "discountAmount": 91, "discountExpireAt": "1987-03-21T00:00:00Z", "discountPercentage": 9, "discountPurchaseAt": "1982-09-11T00:00:00Z", "discountedPrice": 67, "expireAt": "1982-12-17T00:00:00Z", "price": 91, "purchaseAt": "1979-01-21T00:00:00Z", "trialPrice": 76}, {"currencyCode": "vEyogvrrXzYj56Iy", "currencyNamespace": "DDfXvHemdWB8oUqC", "currencyType": "REAL", "discountAmount": 82, "discountExpireAt": "1994-09-29T00:00:00Z", "discountPercentage": 68, "discountPurchaseAt": "1995-11-21T00:00:00Z", "discountedPrice": 87, "expireAt": "1975-11-08T00:00:00Z", "price": 62, "purchaseAt": "1982-04-24T00:00:00Z", "trialPrice": 45}, {"currencyCode": "uwjklcyILfyOYWVm", "currencyNamespace": "uUXh9yxDcokqGvm8", "currencyType": "VIRTUAL", "discountAmount": 64, "discountExpireAt": "1988-01-23T00:00:00Z", "discountPercentage": 71, "discountPurchaseAt": "1995-05-07T00:00:00Z", "discountedPrice": 76, "expireAt": "1980-12-31T00:00:00Z", "price": 46, "purchaseAt": "1972-11-24T00:00:00Z", "trialPrice": 65}]}}, {"itemIdentities": ["OvSqDhCIG6XQB7bs", "FPejjpPC4u8zyqkj", "KvfLZeMC8asMjbyZ"], "itemIdentityType": "ITEM_ID", "regionData": {"DJowIX9KP8M26IMF": [{"currencyCode": "SOiUBxYrKnWmGTBg", "currencyNamespace": "O4GbnLgKvqP8qCSD", "currencyType": "REAL", "discountAmount": 59, "discountExpireAt": "1978-01-17T00:00:00Z", "discountPercentage": 78, "discountPurchaseAt": "1989-09-04T00:00:00Z", "discountedPrice": 84, "expireAt": "1993-10-09T00:00:00Z", "price": 22, "purchaseAt": "1988-04-07T00:00:00Z", "trialPrice": 8}, {"currencyCode": "tHh7kAlTXtTNHQmP", "currencyNamespace": "ClVlxRZLYf7AABcY", "currencyType": "REAL", "discountAmount": 59, "discountExpireAt": "1990-08-31T00:00:00Z", "discountPercentage": 11, "discountPurchaseAt": "1976-08-07T00:00:00Z", "discountedPrice": 3, "expireAt": "1971-01-11T00:00:00Z", "price": 66, "purchaseAt": "1988-01-25T00:00:00Z", "trialPrice": 89}, {"currencyCode": "XXxquBoQS7ViDK2H", "currencyNamespace": "s52rHCS74FOFyKaD", "currencyType": "VIRTUAL", "discountAmount": 59, "discountExpireAt": "1980-11-12T00:00:00Z", "discountPercentage": 69, "discountPurchaseAt": "1989-04-25T00:00:00Z", "discountedPrice": 57, "expireAt": "1997-03-21T00:00:00Z", "price": 8, "purchaseAt": "1979-01-05T00:00:00Z", "trialPrice": 96}], "Brw7DlflSE0DMZZC": [{"currencyCode": "Tgty7FYV7RgQQkGh", "currencyNamespace": "1alrSh00R5VEgIle", "currencyType": "VIRTUAL", "discountAmount": 5, "discountExpireAt": "1985-06-01T00:00:00Z", "discountPercentage": 85, "discountPurchaseAt": "1994-08-22T00:00:00Z", "discountedPrice": 25, "expireAt": "1973-06-22T00:00:00Z", "price": 2, "purchaseAt": "1991-02-13T00:00:00Z", "trialPrice": 34}, {"currencyCode": "HUD7gYFjrL2ONnF6", "currencyNamespace": "cM0rpBQ3bHwlcmMS", "currencyType": "REAL", "discountAmount": 20, "discountExpireAt": "1979-11-23T00:00:00Z", "discountPercentage": 94, "discountPurchaseAt": "1995-09-05T00:00:00Z", "discountedPrice": 43, "expireAt": "1998-05-29T00:00:00Z", "price": 10, "purchaseAt": "1979-07-19T00:00:00Z", "trialPrice": 63}, {"currencyCode": "Yw56Bth5hGV0gOvT", "currencyNamespace": "Dtl7dBwHr42Po3Ce", "currencyType": "VIRTUAL", "discountAmount": 26, "discountExpireAt": "1997-02-04T00:00:00Z", "discountPercentage": 23, "discountPurchaseAt": "1996-03-01T00:00:00Z", "discountedPrice": 89, "expireAt": "1975-10-05T00:00:00Z", "price": 28, "purchaseAt": "1996-10-08T00:00:00Z", "trialPrice": 92}], "T72nCBfsqStWBoe7": [{"currencyCode": "9reUyhetoMfqgrNb", "currencyNamespace": "ewXZvOrSGl9kLCuO", "currencyType": "VIRTUAL", "discountAmount": 39, "discountExpireAt": "1981-04-20T00:00:00Z", "discountPercentage": 82, "discountPurchaseAt": "1981-01-21T00:00:00Z", "discountedPrice": 61, "expireAt": "1974-09-19T00:00:00Z", "price": 70, "purchaseAt": "1981-09-28T00:00:00Z", "trialPrice": 99}, {"currencyCode": "585b8l58yfPa6niP", "currencyNamespace": "NxXxA6Iye4f6E3e9", "currencyType": "VIRTUAL", "discountAmount": 14, "discountExpireAt": "1987-06-18T00:00:00Z", "discountPercentage": 36, "discountPurchaseAt": "1979-07-12T00:00:00Z", "discountedPrice": 51, "expireAt": "1980-08-02T00:00:00Z", "price": 46, "purchaseAt": "1974-08-18T00:00:00Z", "trialPrice": 73}, {"currencyCode": "tDz4fPmShCAojdYu", "currencyNamespace": "r9Tp9I86P7HT6s0J", "currencyType": "REAL", "discountAmount": 89, "discountExpireAt": "1981-07-10T00:00:00Z", "discountPercentage": 84, "discountPurchaseAt": "1973-01-10T00:00:00Z", "discountedPrice": 52, "expireAt": "1975-01-31T00:00:00Z", "price": 53, "purchaseAt": "1979-07-12T00:00:00Z", "trialPrice": 4}]}}, {"itemIdentities": ["3htNsbyhfTFnGBCr", "s9WEPvxTCjpkXBGz", "W8ZdrI3yRZZyAYZz"], "itemIdentityType": "ITEM_ID", "regionData": {"nhdqa6cbUUmPTGED": [{"currencyCode": "rxq7EXpGAMRMJ3WJ", "currencyNamespace": "HyfOsix4wqmaSrZN", "currencyType": "VIRTUAL", "discountAmount": 99, "discountExpireAt": "1971-10-17T00:00:00Z", "discountPercentage": 83, "discountPurchaseAt": "1998-03-28T00:00:00Z", "discountedPrice": 5, "expireAt": "1971-08-17T00:00:00Z", "price": 16, "purchaseAt": "1978-12-28T00:00:00Z", "trialPrice": 8}, {"currencyCode": "zeJgblDowoyF2Dia", "currencyNamespace": "20rIcob8HoTXfCjT", "currencyType": "REAL", "discountAmount": 22, "discountExpireAt": "1980-10-02T00:00:00Z", "discountPercentage": 59, "discountPurchaseAt": "1988-12-06T00:00:00Z", "discountedPrice": 17, "expireAt": "1976-02-05T00:00:00Z", "price": 38, "purchaseAt": "1999-10-15T00:00:00Z", "trialPrice": 1}, {"currencyCode": "kpwbfZV45i0XwDfw", "currencyNamespace": "w8HJFsik1te43bfr", "currencyType": "REAL", "discountAmount": 82, "discountExpireAt": "1993-10-08T00:00:00Z", "discountPercentage": 91, "discountPurchaseAt": "1995-02-13T00:00:00Z", "discountedPrice": 17, "expireAt": "1979-01-07T00:00:00Z", "price": 86, "purchaseAt": "1979-02-04T00:00:00Z", "trialPrice": 32}], "tEqIm6OkPxpohmDP": [{"currencyCode": "PY9CDM27HXAzuS8j", "currencyNamespace": "15tj3QohqDpj1EUp", "currencyType": "VIRTUAL", "discountAmount": 25, "discountExpireAt": "1974-01-20T00:00:00Z", "discountPercentage": 58, "discountPurchaseAt": "1972-05-19T00:00:00Z", "discountedPrice": 76, "expireAt": "1984-07-28T00:00:00Z", "price": 96, "purchaseAt": "1975-11-01T00:00:00Z", "trialPrice": 49}, {"currencyCode": "94odTo6QE65JzTXX", "currencyNamespace": "ECggE32k5sLQevTQ", "currencyType": "VIRTUAL", "discountAmount": 39, "discountExpireAt": "1998-06-23T00:00:00Z", "discountPercentage": 78, "discountPurchaseAt": "1997-09-01T00:00:00Z", "discountedPrice": 85, "expireAt": "1981-01-20T00:00:00Z", "price": 58, "purchaseAt": "1989-08-29T00:00:00Z", "trialPrice": 62}, {"currencyCode": "IuiYjunwpzwozcjx", "currencyNamespace": "R9Enk2zzwIj26ABp", "currencyType": "REAL", "discountAmount": 0, "discountExpireAt": "1974-09-15T00:00:00Z", "discountPercentage": 28, "discountPurchaseAt": "1996-02-26T00:00:00Z", "discountedPrice": 63, "expireAt": "1986-06-04T00:00:00Z", "price": 71, "purchaseAt": "1990-12-26T00:00:00Z", "trialPrice": 83}], "3A5uccv1goDP8mkU": [{"currencyCode": "umDlL2Xxe7bnxSdU", "currencyNamespace": "5KEdR6AVSiEkbjon", "currencyType": "REAL", "discountAmount": 17, "discountExpireAt": "1982-07-21T00:00:00Z", "discountPercentage": 77, "discountPurchaseAt": "1978-01-11T00:00:00Z", "discountedPrice": 47, "expireAt": "1996-07-25T00:00:00Z", "price": 99, "purchaseAt": "1999-01-22T00:00:00Z", "trialPrice": 88}, {"currencyCode": "EmiuyPDXRJgl6Gvw", "currencyNamespace": "b7pRM725PiKKHAJP", "currencyType": "VIRTUAL", "discountAmount": 86, "discountExpireAt": "1997-12-20T00:00:00Z", "discountPercentage": 92, "discountPurchaseAt": "1974-10-16T00:00:00Z", "discountedPrice": 85, "expireAt": "1993-11-18T00:00:00Z", "price": 65, "purchaseAt": "1977-04-04T00:00:00Z", "trialPrice": 75}, {"currencyCode": "rttMq5ZSUglRLSKy", "currencyNamespace": "E2g8wCdV7P4Kzq68", "currencyType": "VIRTUAL", "discountAmount": 47, "discountExpireAt": "1992-01-05T00:00:00Z", "discountPercentage": 56, "discountPurchaseAt": "1976-03-16T00:00:00Z", "discountedPrice": 64, "expireAt": "1985-01-16T00:00:00Z", "price": 41, "purchaseAt": "1981-12-16T00:00:00Z", "trialPrice": 72}]}}]}' \
    > test.out 2>&1
eval_tap $? 138 'BulkUpdateRegionData' test.out

#- 139 SearchItems
samples/cli/sample-apps Platform searchItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --itemType 'BUNDLE' \
    --limit '91' \
    --offset '89' \
    --sortBy 'gnUJmhjFSoEeorYw' \
    --storeId 'O2omErAqeAdj1qpe' \
    --keyword 'qwSE3uZ8Tfrd4VgU' \
    --language 'SrZuTpsq8GHkhAT3' \
    > test.out 2>&1
eval_tap $? 139 'SearchItems' test.out

#- 140 QueryUncategorizedItems
samples/cli/sample-apps Platform queryUncategorizedItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --limit '31' \
    --offset '2' \
    --sortBy '["displayOrder:asc", "updatedAt:desc", "name:desc"]' \
    --storeId '0urxT4xYNVwR2bBj' \
    > test.out 2>&1
eval_tap $? 140 'QueryUncategorizedItems' test.out

#- 141 GetItem
samples/cli/sample-apps Platform getItem \
    --itemId 'wYhJY24ZbLnA5ZgO' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --storeId 'Bbyerrg3PihbaHOX' \
    > test.out 2>&1
eval_tap $? 141 'GetItem' test.out

#- 142 UpdateItem
samples/cli/sample-apps Platform updateItem \
    --itemId 'wAbWbBNffCoHZUEb' \
    --namespace $AB_NAMESPACE \
    --storeId 'xBRBeCAfZZbymCFj' \
    --body '{"appId": "AGwDhXprmZb1QPvf", "appType": "SOFTWARE", "baseAppId": "5z8gZtDLmVAp7OT1", "boothName": "RbHWrkhQophFQYSA", "categoryPath": "BGhh7zojCrQPQz4g", "clazz": "hNXA5aJ2Um2kQFH5", "displayOrder": 68, "entitlementType": "CONSUMABLE", "ext": {"hr5ezZMtAjrseewa": {}, "o1WGEWocIJuaFmep": {}, "jWuL4xKHAmWVcqOw": {}}, "features": ["4aUJ77AuR89tEYcx", "Ur64dfk5PJ8vi6wJ", "TqZqGkUwfqIpKyQa"], "flexible": false, "images": [{"as": "Pu1mX8kH62GQuE7f", "caption": "mpcuyT0r56auYNnh", "height": 61, "imageUrl": "JeXGDunPTwThiTTd", "smallImageUrl": "1ik29Jr2E6aVTqa0", "width": 2}, {"as": "6VFL3mFepfkOoNza", "caption": "X9ujKFd9NhcDnZiQ", "height": 39, "imageUrl": "zeVt1C7SolzZoYbP", "smallImageUrl": "RB4MRkPbEnCS9PAf", "width": 70}, {"as": "HqtYTvpHSncuZDpg", "caption": "LBFzALVDcamlhthn", "height": 40, "imageUrl": "EjTiDbb99EesQgcW", "smallImageUrl": "aq8FzjdbraiKlKf4", "width": 50}], "inventoryConfig": {"customAttributes": {"EGzMurO1LHNVPeV5": {}, "oX8tfOAJexHBqfgm": {}, "FZ4GRNGadZ8ZYGen": {}}, "serverCustomAttributes": {"BptarKQFeU4J4FDb": {}, "GcM8vdpOoAFr1NWw": {}, "w3FG43GgZR9vMn9I": {}}, "slotUsed": 26}, "itemIds": ["9sqJq782JzBsR735", "NFx920DYdoblUPcY", "GTNuLYRZFxpp8hMk"], "itemQty": {"GNltUT6CkTqUE5Jc": 14, "0GOR6GHPyLMQu2C2": 79, "UhMP6sMNVQ11Jjsu": 68}, "itemType": "MEDIA", "listable": false, "localizations": {"7bDMqs3Grc5MIB2H": {"description": "ARxW9HmlCqXTueiF", "localExt": {"MjMXqIprJ82hPcZs": {}, "MQQ9nY7lAiGClJWK": {}, "6Sq1nBY50GIJkQ2G": {}}, "longDescription": "LQn0Fp3iPqKeY3aI", "title": "3bq2N2uonJ51yItB"}, "MHkvzDEUtTWJOM5u": {"description": "8SwccGNmAn1hCXJY", "localExt": {"DAtfrUTLSKEfhqqW": {}, "wblOji8p6AfHVH6X": {}, "Rp7U0LUJgSg4vKJj": {}}, "longDescription": "oWGEdoScxbc2ySyp", "title": "zXoRmaZ4WaFEPmzr"}, "WXLiIziyf9pr3QI4": {"description": "F32Ec4SxOMIYFclf", "localExt": {"L1nI0aB7HHvKbPth": {}, "TJvEbuCf8qmNNfZe": {}, "NM94MZq8UE2GQiMF": {}}, "longDescription": "QwSMKFNon1OS8nBk", "title": "PfGtVyLeusEBczqV"}}, "lootBoxConfig": {"rewardCount": 17, "rewards": [{"lootBoxItems": [{"count": 14, "duration": 61, "endDate": "1990-08-16T00:00:00Z", "itemId": "hnho86Nt6X9jHVhV", "itemSku": "7rj5LHfNTPlbhwuo", "itemType": "Ku5cx22nMnksjlZV"}, {"count": 74, "duration": 24, "endDate": "1990-05-02T00:00:00Z", "itemId": "vzHAb8Ry7iDZGXsV", "itemSku": "67OJov6iZpzkTlPV", "itemType": "jlDxZMnmfXACDeCl"}, {"count": 77, "duration": 46, "endDate": "1987-09-30T00:00:00Z", "itemId": "QuqEVxAnUp1v6YjT", "itemSku": "mwwCNLyLF3Lf8Was", "itemType": "t4broFWv2aWxglY0"}], "name": "SdMzJM1eQWrCBHFW", "odds": 0.24646175436551365, "type": "REWARD_GROUP", "weight": 85}, {"lootBoxItems": [{"count": 44, "duration": 85, "endDate": "1972-07-25T00:00:00Z", "itemId": "kPW7APZ9mu0O7q1C", "itemSku": "pMW5vwM4HNpHgPL6", "itemType": "1mkOX65Goe2qpTfx"}, {"count": 40, "duration": 79, "endDate": "1984-11-26T00:00:00Z", "itemId": "KTkHoznn3HLFwvZ5", "itemSku": "3qBAyWuu8JmnBDS4", "itemType": "TLtPhGq2LitQ4pVF"}, {"count": 10, "duration": 39, "endDate": "1989-05-06T00:00:00Z", "itemId": "lDaQnRS6TmUVvkjS", "itemSku": "hQV1FWi0ioX5VMV7", "itemType": "N8VhVKI0VmAu4SuR"}], "name": "MjAaX9Ad0JZA11aQ", "odds": 0.528052264320575, "type": "PROBABILITY_GROUP", "weight": 85}, {"lootBoxItems": [{"count": 4, "duration": 32, "endDate": "1991-10-25T00:00:00Z", "itemId": "WIAffT93mdF7Q6g4", "itemSku": "JnXEmaEHtcLlxrnJ", "itemType": "CLsWCs2WjeWRGplo"}, {"count": 14, "duration": 82, "endDate": "1971-02-14T00:00:00Z", "itemId": "gE0DgjvFYeE33uEG", "itemSku": "JaWtiNEgAftdZcGt", "itemType": "0hrLK58iqN1GANu0"}, {"count": 41, "duration": 86, "endDate": "1999-11-24T00:00:00Z", "itemId": "WXroyqBX3BFXCyvr", "itemSku": "381lmlckfzHkGBNb", "itemType": "o4FaYkLl8qKqHh9J"}], "name": "d4ACJ6i4IVxTnENX", "odds": 0.011443395090089736, "type": "PROBABILITY_GROUP", "weight": 3}], "rollFunction": "DEFAULT"}, "maxCount": 39, "maxCountPerUser": 83, "name": "YSaVZxzQFn8iLqPg", "optionBoxConfig": {"boxItems": [{"count": 33, "duration": 73, "endDate": "1986-01-27T00:00:00Z", "itemId": "NBXiBYTiQ619l0Ew", "itemSku": "BocOz7MSvZ4izFdV", "itemType": "AeidHvhVDFbCVxCV"}, {"count": 43, "duration": 20, "endDate": "1996-12-15T00:00:00Z", "itemId": "rxV63xV107S6dUBA", "itemSku": "EEo1Dr8jH6YIFnMl", "itemType": "VOVXw1OY9ZPmgPLR"}, {"count": 64, "duration": 62, "endDate": "1978-06-19T00:00:00Z", "itemId": "uHwD6jHsIseerdIW", "itemSku": "kpUnZMsehiCuNM7Y", "itemType": "R3J6dSldmiWvKIau"}]}, "purchasable": true, "recurring": {"cycle": "MONTHLY", "fixedFreeDays": 98, "fixedTrialCycles": 88, "graceDays": 34}, "regionData": {"k0cayT7PHki9VZqt": [{"currencyCode": "AqUDDIk3Z2NcksiF", "currencyNamespace": "2pBX3LNnZ2sC4NKV", "currencyType": "REAL", "discountAmount": 84, "discountExpireAt": "1980-03-23T00:00:00Z", "discountPercentage": 78, "discountPurchaseAt": "1976-02-25T00:00:00Z", "expireAt": "1997-02-14T00:00:00Z", "price": 3, "purchaseAt": "1974-11-22T00:00:00Z", "trialPrice": 81}, {"currencyCode": "dUIDOFmQL18EvRQb", "currencyNamespace": "uq84g2roGcE2UAKU", "currencyType": "REAL", "discountAmount": 45, "discountExpireAt": "1988-10-03T00:00:00Z", "discountPercentage": 98, "discountPurchaseAt": "1973-06-14T00:00:00Z", "expireAt": "1977-04-30T00:00:00Z", "price": 20, "purchaseAt": "1983-03-17T00:00:00Z", "trialPrice": 14}, {"currencyCode": "jehR581Ygai7Q2YB", "currencyNamespace": "d2MZtN7Z0X1DVdXt", "currencyType": "VIRTUAL", "discountAmount": 60, "discountExpireAt": "1975-12-14T00:00:00Z", "discountPercentage": 31, "discountPurchaseAt": "1998-11-05T00:00:00Z", "expireAt": "1983-01-04T00:00:00Z", "price": 7, "purchaseAt": "1996-02-05T00:00:00Z", "trialPrice": 0}], "TJr3E2uRhrav5lZL": [{"currencyCode": "3bmL6D69LCulGR6e", "currencyNamespace": "GPUjNCqhlfzNMbRS", "currencyType": "VIRTUAL", "discountAmount": 67, "discountExpireAt": "1977-02-26T00:00:00Z", "discountPercentage": 61, "discountPurchaseAt": "1971-09-18T00:00:00Z", "expireAt": "1973-05-15T00:00:00Z", "price": 28, "purchaseAt": "1987-01-29T00:00:00Z", "trialPrice": 59}, {"currencyCode": "jxnKIZs41OfWcERL", "currencyNamespace": "fQFOgxptqeshqvW1", "currencyType": "VIRTUAL", "discountAmount": 86, "discountExpireAt": "1990-08-31T00:00:00Z", "discountPercentage": 86, "discountPurchaseAt": "1999-09-04T00:00:00Z", "expireAt": "1993-11-13T00:00:00Z", "price": 16, "purchaseAt": "1978-04-21T00:00:00Z", "trialPrice": 14}, {"currencyCode": "lWNVIgOqvFEhvdab", "currencyNamespace": "494KfqbDO5kGyOrk", "currencyType": "VIRTUAL", "discountAmount": 91, "discountExpireAt": "1998-05-04T00:00:00Z", "discountPercentage": 11, "discountPurchaseAt": "1972-11-08T00:00:00Z", "expireAt": "1975-12-20T00:00:00Z", "price": 42, "purchaseAt": "1972-07-20T00:00:00Z", "trialPrice": 27}], "QcCmtWsTd9TfBodf": [{"currencyCode": "kxrKKzTOlajCY41i", "currencyNamespace": "fQBiAHI1W3RwAR0O", "currencyType": "VIRTUAL", "discountAmount": 55, "discountExpireAt": "1984-11-10T00:00:00Z", "discountPercentage": 11, "discountPurchaseAt": "1979-06-16T00:00:00Z", "expireAt": "1971-03-17T00:00:00Z", "price": 4, "purchaseAt": "1978-11-21T00:00:00Z", "trialPrice": 26}, {"currencyCode": "dkKdqd4UKXhJ8g6k", "currencyNamespace": "U0R169CpzZpTkGBb", "currencyType": "REAL", "discountAmount": 52, "discountExpireAt": "1997-11-07T00:00:00Z", "discountPercentage": 70, "discountPurchaseAt": "1995-03-03T00:00:00Z", "expireAt": "1989-10-11T00:00:00Z", "price": 1, "purchaseAt": "1979-01-22T00:00:00Z", "trialPrice": 71}, {"currencyCode": "o3N1nOpms3ClMeot", "currencyNamespace": "N05InKIHgnRT5xiC", "currencyType": "REAL", "discountAmount": 39, "discountExpireAt": "1977-05-12T00:00:00Z", "discountPercentage": 49, "discountPurchaseAt": "1995-04-25T00:00:00Z", "expireAt": "1977-12-28T00:00:00Z", "price": 38, "purchaseAt": "1989-12-23T00:00:00Z", "trialPrice": 55}]}, "saleConfig": {"currencyCode": "l4XDdrywFhmZ0NL4", "price": 37}, "seasonType": "TIER", "sectionExclusive": true, "sellable": false, "sku": "YDrmSjhmAx47QM0G", "stackable": true, "status": "INACTIVE", "tags": ["mIoP5FNhDpT5kmSq", "OkhJFXn39ODDMdAR", "lWhD9hLc48C5eJZH"], "targetCurrencyCode": "IkJlWrrvWS6J3hwU", "targetNamespace": "F5Z8Pq5aTY4RkABR", "thumbnailUrl": "nlcpgFEypk7BQhKv", "useCount": 52}' \
    > test.out 2>&1
eval_tap $? 142 'UpdateItem' test.out

#- 143 DeleteItem
samples/cli/sample-apps Platform deleteItem \
    --itemId 'KHOpDeRVYNtB2Dth' \
    --namespace $AB_NAMESPACE \
    --featuresToCheck '["CATALOG", "DLC", "DLC"]' \
    --force 'true' \
    --storeId 'y85UfTFsB9cd9WVL' \
    > test.out 2>&1
eval_tap $? 143 'DeleteItem' test.out

#- 144 AcquireItem
samples/cli/sample-apps Platform acquireItem \
    --itemId 'fT8gihL4SGuPJv3y' \
    --namespace $AB_NAMESPACE \
    --body '{"count": 75, "orderNo": "GTtR6K88m5x9moSW"}' \
    > test.out 2>&1
eval_tap $? 144 'AcquireItem' test.out

#- 145 GetApp
samples/cli/sample-apps Platform getApp \
    --itemId '6XoGmiNvzw5RRSBk' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId '1Af3WICgyIEaVqxv' \
    > test.out 2>&1
eval_tap $? 145 'GetApp' test.out

#- 146 UpdateApp
samples/cli/sample-apps Platform updateApp \
    --itemId 'slKGYIw8lrR74gzO' \
    --namespace $AB_NAMESPACE \
    --storeId 'AkqacUTpqWVGeY0L' \
    --body '{"carousel": [{"alt": "JK0OAzZHdjlyofb7", "previewUrl": "annJDPJdCjmhphpm", "thumbnailUrl": "BXvhgRTKvMTM1YkE", "type": "image", "url": "ZifWiRrymZsUMMC1", "videoSource": "youtube"}, {"alt": "AvMkmmRuXsd8RJx8", "previewUrl": "mEVUiwkYIzA48xvh", "thumbnailUrl": "ubn6alF8uyWkoD3I", "type": "image", "url": "PTBVUDOD6X81tgvE", "videoSource": "generic"}, {"alt": "SGdCkz67cP3q2d7R", "previewUrl": "Chap872xTC7xPFro", "thumbnailUrl": "KmKbcXz7nNMvzcmc", "type": "image", "url": "ChQhtddcAS2E0GVG", "videoSource": "youtube"}], "developer": "c4mlLrBPh321Q7s0", "forumUrl": "IsXrLcALAyVQZiyK", "genres": ["FreeToPlay", "MassivelyMultiplayer", "Simulation"], "localizations": {"nUTrJwudjCxlp6D7": {"announcement": "9yFrDpGgaFy6Ezr3", "slogan": "6OM9Xnqqn3Q7pELn"}, "9t14KKL5YVwoVXXd": {"announcement": "7KK2zLKzDp6BVK5O", "slogan": "PgeQLdObFiGXPMAi"}, "LTcy6bqUc1GC74F5": {"announcement": "RKulM3tJoonXTZw9", "slogan": "Y6TXDCqc9qDbxaPO"}}, "platformRequirements": {"bqPiOPVOqF3XUVfD": [{"additionals": "EJKq7qjZMnnKtjZW", "directXVersion": "PXzac6q3RsjrZUta", "diskSpace": "FLwUO0Mnf7DtACXJ", "graphics": "4xDhI2AgLVBo1ZZQ", "label": "lXiUu9noV8VmSkwI", "osVersion": "eNfMMcJFEWy2jEmf", "processor": "vtCrPkh80Hi9z2Pf", "ram": "Jz5v5nr2pdp5dtYT", "soundCard": "BfPh88kCxpmtK4Bt"}, {"additionals": "gMuzyKmXxrJivAPV", "directXVersion": "m84J9fEkyAfbaEwR", "diskSpace": "6Ax8aySYhCh8jI9A", "graphics": "PjYMO6F6yXHgYPql", "label": "yLznuX1JkFfq0ACc", "osVersion": "EqObzCNiAcs7oIIj", "processor": "Q1e9JCd2DRgKnio8", "ram": "hNSZUwvM5k6NLozX", "soundCard": "K6PiU9ojJP0s3Kjm"}, {"additionals": "wcDcrrCvqjJH8hS0", "directXVersion": "wavr2a8x9SC8GqHO", "diskSpace": "gLqKUJfkhKkH4TBj", "graphics": "G6982yKC9o6GfOXV", "label": "tCm8fn65erapllc9", "osVersion": "CRUp8yvsOL1zpnAf", "processor": "7B6yfjRuqoPR7MBb", "ram": "uckf7ApzJJVfI6MJ", "soundCard": "eR9AbEjM8kFP42sW"}], "r0U6Z7r6Yo6m1q68": [{"additionals": "mrFpFW6k4nZx4OTU", "directXVersion": "gN1fdrhsPTjwGv7K", "diskSpace": "angUJCsqjZnmHD0x", "graphics": "sQTz0UkaKZgs60hZ", "label": "qbD6gIkw33wqD6OL", "osVersion": "xZXX8KaFvgM2TLcJ", "processor": "x2yrCpMKWW1b6EoY", "ram": "A6k0ycOlam0pJIpl", "soundCard": "qANGGJG4VysjbmLh"}, {"additionals": "0tTsyHS66YVRpbJT", "directXVersion": "7cbxxFMr6px8VCfh", "diskSpace": "z4Lzesg0KWCnTytf", "graphics": "ZYSr2Pcr6NG2If7C", "label": "v55juq3qsoa20WjK", "osVersion": "ihbddRbg3bMBukjq", "processor": "NC0UMoRRUrI9iDTe", "ram": "4M7pL9RDJRsMu19p", "soundCard": "fDqJ967nkOCzdAqq"}, {"additionals": "AKS4d6AdpN0Frurf", "directXVersion": "kjs1BGOZL9CCQNiM", "diskSpace": "cH6WTw8FlaZJzeRS", "graphics": "sO3Cu5GmqCUZDpn2", "label": "SSDyAALenQCLmIZ4", "osVersion": "FzqxTnmObNX8t6BN", "processor": "nkbU8GYZoJtSowE9", "ram": "inlS1dYQAw6Jl3oh", "soundCard": "lx7nIwyYeNYG4ZpW"}], "sBfawhggW4ZxHel7": [{"additionals": "LuPH8MrHEsGI9DXk", "directXVersion": "dkudK5U9aAa1w3JU", "diskSpace": "4muyrBSMGCTESS4k", "graphics": "W7Nq5rpyhZ1c3Okj", "label": "jgXNDXMWkUDLkzIj", "osVersion": "Lx3HzvePs9cf2WEl", "processor": "exPVceG5LGt0GFkB", "ram": "XvAHCBpkYY4Rt0Ow", "soundCard": "5xVZuTehHwsZRqUw"}, {"additionals": "Aw9U6nCg4NaeSO54", "directXVersion": "hd2vI1vWtJxFnLKH", "diskSpace": "AoeAaaVnwlk233aL", "graphics": "4exa8IXiLkwKyrF1", "label": "BQTxaBDMRqtojkai", "osVersion": "EOdi8xONRTdELsyG", "processor": "gOcx0bHgTccTMdwN", "ram": "OcBbr92bW5TzSz9r", "soundCard": "WGwA0r9W9u2R99oa"}, {"additionals": "sk9e1raGkmQDq0zL", "directXVersion": "2zui9b6AdD2fNv8L", "diskSpace": "BH8CHHD1iag2VAoT", "graphics": "MQl9BWbQ3OR583xL", "label": "uIxa7rkbxoHnU64Y", "osVersion": "YuxVN7txrXRSdrz5", "processor": "hkk0QuEwzuX62Wvl", "ram": "8kJXmBW3Yejeg76n", "soundCard": "cWZJpD93TfTFtKhV"}]}, "platforms": ["Linux", "MacOS", "Linux"], "players": ["CrossPlatformMulti", "CrossPlatformMulti", "Coop"], "primaryGenre": "Casual", "publisher": "UONA9UfJWJMqJ85z", "releaseDate": "1983-02-01T00:00:00Z", "websiteUrl": "WlajZIpbbYavKlYb"}' \
    > test.out 2>&1
eval_tap $? 146 'UpdateApp' test.out

#- 147 DisableItem
samples/cli/sample-apps Platform disableItem \
    --itemId 'Jz4hmP3Yv0aKyDTw' \
    --namespace $AB_NAMESPACE \
    --storeId 'V2w94HfJgGX0MxVa' \
    --body '{"featuresToCheck": ["CAMPAIGN", "CATALOG"]}' \
    > test.out 2>&1
eval_tap $? 147 'DisableItem' test.out

#- 148 GetItemDynamicData
samples/cli/sample-apps Platform getItemDynamicData \
    --itemId 'LiwnDtVTPa3HMyUM' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 148 'GetItemDynamicData' test.out

#- 149 EnableItem
samples/cli/sample-apps Platform enableItem \
    --itemId 'xXENUFrXJUehU2g7' \
    --namespace $AB_NAMESPACE \
    --storeId 'rIyPjowedpGRNDSu' \
    > test.out 2>&1
eval_tap $? 149 'EnableItem' test.out

#- 150 FeatureItem
samples/cli/sample-apps Platform featureItem \
    --feature 'pM2jQJK4hxEkjPbV' \
    --itemId 'qyVPMPfqB1UoFBIp' \
    --namespace $AB_NAMESPACE \
    --storeId 'SJVbkGEPL6CYNvSJ' \
    > test.out 2>&1
eval_tap $? 150 'FeatureItem' test.out

#- 151 DefeatureItem
samples/cli/sample-apps Platform defeatureItem \
    --feature 'mCi3kvM9s57UdVu0' \
    --itemId 'jYgDUcBptYiXRgnv' \
    --namespace $AB_NAMESPACE \
    --storeId 'vbD0vm1FuCkJuZD4' \
    > test.out 2>&1
eval_tap $? 151 'DefeatureItem' test.out

#- 152 GetLocaleItem
samples/cli/sample-apps Platform getLocaleItem \
    --itemId '5ADg0q1PnYVPGN7C' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --language 'eh1M2CWeoxBIV9yf' \
    --populateBundle 'false' \
    --region 'bt1SI1aIM8A7w0yD' \
    --storeId 'mkbguySKDvEPSFIr' \
    > test.out 2>&1
eval_tap $? 152 'GetLocaleItem' test.out

#- 153 UpdateItemPurchaseCondition
samples/cli/sample-apps Platform updateItemPurchaseCondition \
    --itemId '1kpo7frukBOyv58g' \
    --namespace $AB_NAMESPACE \
    --storeId 'qUUgLYSmhwTvJ8LG' \
    --body '{"purchaseCondition": {"conditionGroups": [{"operator": "and", "predicates": [{"anyOf": 34, "code": "R6mXrNVRBTqHgxDK", "comparison": "is", "name": "KfFBpCOL5tZNh7mD", "predicateType": "SeasonTierPredicate", "value": "zjw9YOuPVwZY3T3M", "values": ["y7Be4IL5x9SAy2nP", "223vDZcg9UEu9GsJ", "y7hPRxV9veS2MIpM"]}, {"anyOf": 29, "code": "SdEdPRjiEdWJCAAp", "comparison": "is", "name": "gFWv1sWEpQQYSRc6", "predicateType": "StatisticCodePredicate", "value": "qnIuveLG3idxwoGk", "values": ["HEUxsOJCgGU4CLFD", "ehUHK3Y4guaJKb58", "l91uAMVbwnXRCb8L"]}, {"anyOf": 55, "code": "oQX3eaSZmcNXQkLD", "comparison": "isGreaterThan", "name": "XAyYMqM2tJ6Mb6NT", "predicateType": "EntitlementPredicate", "value": "zogvLgXfUMKdJyQt", "values": ["A2CIIDwvpY87VxcQ", "kL6yr7aEuVfm3aNN", "F5dAEqbjCFVGXdwb"]}]}, {"operator": "and", "predicates": [{"anyOf": 61, "code": "A5gU7lVmVAfTCtRQ", "comparison": "isLessThanOrEqual", "name": "5q4SqbIaObb2YrAr", "predicateType": "StatisticCodePredicate", "value": "ffHr6i5UJb3B4y04", "values": ["tN953CifxTNUevJf", "JY5MlQCobRUGdA4B", "Eh77TxyBAGF7lHhX"]}, {"anyOf": 36, "code": "TsppvMcQUeF3M27m", "comparison": "isLessThan", "name": "Ilg6pvdEZRerTZWv", "predicateType": "StatisticCodePredicate", "value": "hNzRhwHkz0Cju0H6", "values": ["mpEs8BcbIJac1Iud", "o7HiF5iChsulDkWL", "NS3HeIxvlr3bniQf"]}, {"anyOf": 21, "code": "NaAh4atS8xK8qrYQ", "comparison": "excludes", "name": "zXl6IdDXn1v4evG5", "predicateType": "EntitlementPredicate", "value": "fWze6gQOg17kQpDO", "values": ["HuyIEoB2iPAB2EDc", "79vs5eyuaoCwRSnZ", "jbwIYD1n5mw2BH3m"]}]}, {"operator": "or", "predicates": [{"anyOf": 37, "code": "q2RZouFIkXu5Mvsq", "comparison": "isNot", "name": "e4lpJb6wP8w5AiDt", "predicateType": "StatisticCodePredicate", "value": "G65DTI8KWXdFgtN5", "values": ["daz3cHD5nXI2rAqY", "O7dUbQ4o0B2YGpLh", "8cJTXzzWZDbgwcxW"]}, {"anyOf": 74, "code": "O97YefOvsfqK24BZ", "comparison": "is", "name": "D7sOsYoSDE7StCHG", "predicateType": "EntitlementPredicate", "value": "DzCSG5gMVTyK8EWQ", "values": ["Jyii3s3ZeynXSbpp", "XdffGskU3VanJcVO", "KMFmNOTAYcmDudmp"]}, {"anyOf": 18, "code": "cOtiv4MSdVDpyCh3", "comparison": "isGreaterThanOrEqual", "name": "agXkX2XBIRnK41Ex", "predicateType": "StatisticCodePredicate", "value": "V76qxHr1VYJx8VlL", "values": ["77dwazvuUmJkECNr", "Bfk5LjiJ7yo18Pua", "nPJONi15IUpfGHSM"]}]}]}}' \
    > test.out 2>&1
eval_tap $? 153 'UpdateItemPurchaseCondition' test.out

#- 154 QueryItemReferences
samples/cli/sample-apps Platform queryItemReferences \
    --itemId 'fcpJ3jTNZh3ZX915' \
    --namespace $AB_NAMESPACE \
    --featuresToCheck '["REWARD", "IAP", "DLC"]' \
    --storeId 'oXQdX4RDxRPCJOMg' \
    > test.out 2>&1
eval_tap $? 154 'QueryItemReferences' test.out

#- 155 ReturnItem
samples/cli/sample-apps Platform returnItem \
    --itemId 'yB3EFlTmO2pdxcKS' \
    --namespace $AB_NAMESPACE \
    --body '{"orderNo": "TrpA8oInm6mW8vwQ"}' \
    > test.out 2>&1
eval_tap $? 155 'ReturnItem' test.out

#- 156 QueryKeyGroups
samples/cli/sample-apps Platform queryKeyGroups \
    --namespace $AB_NAMESPACE \
    --limit '28' \
    --name 'l9xefeQReeJHALil' \
    --offset '18' \
    --tag 'aBXAEln7hvSYsbPJ' \
    > test.out 2>&1
eval_tap $? 156 'QueryKeyGroups' test.out

#- 157 CreateKeyGroup
samples/cli/sample-apps Platform createKeyGroup \
    --namespace $AB_NAMESPACE \
    --body '{"description": "sHeybCGssgEA1b0z", "name": "ZHOi0Tg7kApNGbqR", "status": "INACTIVE", "tags": ["PSR5cIsMzYFKlnlR", "NcE4Hf7GqUkTWEN5", "PsQCITy5oz1KzVOj"]}' \
    > test.out 2>&1
eval_tap $? 157 'CreateKeyGroup' test.out

#- 158 GetKeyGroupByBoothName
eval_tap 0 158 'GetKeyGroupByBoothName # SKIP deprecated' test.out

#- 159 GetKeyGroup
samples/cli/sample-apps Platform getKeyGroup \
    --keyGroupId 'CiTJCrO6zEYEMXTB' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 159 'GetKeyGroup' test.out

#- 160 UpdateKeyGroup
samples/cli/sample-apps Platform updateKeyGroup \
    --keyGroupId 'kYSfjc7v40CHlHsp' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "xXPwGz1ZcvqduASf", "name": "h4iodYDCXv8Zpzqv", "status": "ACTIVE", "tags": ["wAPfzZKJN4hCfM7M", "VfdziXBa0qKIriWt", "wti3HVlj1X3ATasq"]}' \
    > test.out 2>&1
eval_tap $? 160 'UpdateKeyGroup' test.out

#- 161 GetKeyGroupDynamic
samples/cli/sample-apps Platform getKeyGroupDynamic \
    --keyGroupId 'VgVlWyxDiwh3ayt1' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 161 'GetKeyGroupDynamic' test.out

#- 162 ListKeys
samples/cli/sample-apps Platform listKeys \
    --keyGroupId '3Frn4AQHXXco956X' \
    --namespace $AB_NAMESPACE \
    --limit '3' \
    --offset '71' \
    --status 'ACTIVE' \
    > test.out 2>&1
eval_tap $? 162 'ListKeys' test.out

#- 163 UploadKeys
samples/cli/sample-apps Platform uploadKeys \
    --keyGroupId 'FeMFyqLKuep2vpru' \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 163 'UploadKeys' test.out

#- 164 QueryOrders
samples/cli/sample-apps Platform queryOrders \
    --namespace $AB_NAMESPACE \
    --endTime 'T7K3J4Iq2XRI54Fu' \
    --limit '36' \
    --offset '68' \
    --orderNos '["xdbQNZ4yK0Zd3o5a", "E9ZVzYZt071CqtFN", "PEHUx9mHQLPQwPlQ"]' \
    --sortBy 'lvLLrbayL3G5DAvn' \
    --startTime 'KdebxPKn0A9uoPvB' \
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
    --orderNo '2hWiCTFT1sEQv8zy' \
    > test.out 2>&1
eval_tap $? 166 'GetOrder' test.out

#- 167 RefundOrder
samples/cli/sample-apps Platform refundOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'WxdcPB9wecKQRSWe' \
    --body '{"description": "My8k6ZUFOnVW6apT"}' \
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
    --body '{"domains": ["7IN4XAPAmi6ggKMy", "NSbogxeHtXI9pBbd", "YxeNTJ2P0oASu25w"]}' \
    > test.out 2>&1
eval_tap $? 171 'UpdatePaymentDomainWhitelistConfig' test.out

#- 172 QueryPaymentNotifications
samples/cli/sample-apps Platform queryPaymentNotifications \
    --namespace $AB_NAMESPACE \
    --endDate '7Lcbr4HIGSoiFBiZ' \
    --externalId '49Um40P1foI8FdPB' \
    --limit '99' \
    --notificationSource 'NEONPAY' \
    --notificationType 'LdMfv6Sy26Jgz9pU' \
    --offset '0' \
    --paymentOrderNo 'nWBd7zbthV0OqHIO' \
    --startDate 'vVOn6uMGlVoYQ6K9' \
    --status 'IGNORED' \
    > test.out 2>&1
eval_tap $? 172 'QueryPaymentNotifications' test.out

#- 173 QueryPaymentOrders
samples/cli/sample-apps Platform queryPaymentOrders \
    --namespace $AB_NAMESPACE \
    --channel 'INTERNAL' \
    --extTxId 'FFjJlwJGbVYUaqH9' \
    --limit '8' \
    --offset '56' \
    --status 'AUTHORISE_FAILED' \
    > test.out 2>&1
eval_tap $? 173 'QueryPaymentOrders' test.out

#- 174 CreatePaymentOrderByDedicated
samples/cli/sample-apps Platform createPaymentOrderByDedicated \
    --namespace $AB_NAMESPACE \
    --body '{"currencyCode": "bj2C3kU5jn4TUap2", "currencyNamespace": "FaoVYl27NBREsM7w", "customParameters": {"WWwwTcDIMxVwJ2fP": {}, "dSyccygQiFo7gErT": {}, "fQavdWL0MQHMTWdd": {}}, "description": "RSLM5czx9vBPM1f1", "extOrderNo": "VInapp6zq8cF1bR6", "extUserId": "NKUa2umdobRxriL8", "itemType": "APP", "language": "kU-zfLO_087", "metadata": {"auT3dlJCl1SDwWGw": "SrV1QoRcoe3T7ZLD", "jYGSsrla7IWxqmgZ": "pNJaRd8HMmNUHuJf", "uWzruBmT2cyFQodY": "duPZX5Su5Oh7VYHM"}, "notifyUrl": "qaDy1kF1zChLEQFC", "omitNotification": true, "platform": "JCqHhULopR43o8kB", "price": 1, "recurringPaymentOrderNo": "NK7JkcAw51nMyviN", "region": "2hopbzjtqJVXUrFl", "returnUrl": "3flHNiq2V2KwJZQy", "sandbox": false, "sku": "a5e6g0nOJnpc5g5U", "subscriptionId": "AhYgg0iUZa4QyjbC", "targetNamespace": "p7MTuO0xXkxpJKvs", "targetUserId": "56MgZL35kPvRSbVS", "title": "8hWDIyn1HMNsZkPJ"}' \
    > test.out 2>&1
eval_tap $? 174 'CreatePaymentOrderByDedicated' test.out

#- 175 ListExtOrderNoByExtTxId
samples/cli/sample-apps Platform listExtOrderNoByExtTxId \
    --namespace $AB_NAMESPACE \
    --extTxId 'SFoQNoKXk9DHBCcV' \
    > test.out 2>&1
eval_tap $? 175 'ListExtOrderNoByExtTxId' test.out

#- 176 GetPaymentOrder
samples/cli/sample-apps Platform getPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'ig8PDKGISbPAXHFP' \
    > test.out 2>&1
eval_tap $? 176 'GetPaymentOrder' test.out

#- 177 ChargePaymentOrder
samples/cli/sample-apps Platform chargePaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'UCHO5cnf0K1L9U1g' \
    --body '{"extTxId": "VGS3nAoQoRC8Qp4r", "paymentMethod": "g7dVKZlOfQgrVwwI", "paymentProvider": "PAYPAL"}' \
    > test.out 2>&1
eval_tap $? 177 'ChargePaymentOrder' test.out

#- 178 RefundPaymentOrderByDedicated
samples/cli/sample-apps Platform refundPaymentOrderByDedicated \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'zST7bqni3GgwmqQK' \
    --body '{"description": "Aj706RImWG5qzDjY"}' \
    > test.out 2>&1
eval_tap $? 178 'RefundPaymentOrderByDedicated' test.out

#- 179 SimulatePaymentOrderNotification
samples/cli/sample-apps Platform simulatePaymentOrderNotification \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'WeYrI6G56KarSDa8' \
    --body '{"amount": 7, "currencyCode": "TfCsdgfGsJXpfux3", "notifyType": "REFUND", "paymentProvider": "ADYEN", "salesTax": 30, "vat": 58}' \
    > test.out 2>&1
eval_tap $? 179 'SimulatePaymentOrderNotification' test.out

#- 180 GetPaymentOrderChargeStatus
samples/cli/sample-apps Platform getPaymentOrderChargeStatus \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo '3iOu1wlpuqJa62iz' \
    > test.out 2>&1
eval_tap $? 180 'GetPaymentOrderChargeStatus' test.out

#- 181 GetPsnEntitlementOwnership
samples/cli/sample-apps Platform getPsnEntitlementOwnership \
    --entitlementLabel 'XokzsME95akU0kj2' \
    --namespace $AB_NAMESPACE \
    --body '{"accessToken": "D0iOeqv3fDNCXOZd", "serviceLabel": 23}' \
    > test.out 2>&1
eval_tap $? 181 'GetPsnEntitlementOwnership' test.out

#- 182 GetXboxEntitlementOwnership
samples/cli/sample-apps Platform getXboxEntitlementOwnership \
    --namespace $AB_NAMESPACE \
    --productSku 'WUqQgjle6QDKgKoV' \
    --body '{"delegationToken": "IOCvGkWQxZWLq0QR", "sandboxId": "pVcJrCc04stv1DuG"}' \
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
    --body '{"allowedPlatformOrigins": ["GooglePlay", "Playstation", "System"]}' \
    > test.out 2>&1
eval_tap $? 184 'UpdatePlatformEntitlementConfig' test.out

#- 185 GetPlatformWalletConfig
samples/cli/sample-apps Platform getPlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Epic' \
    > test.out 2>&1
eval_tap $? 185 'GetPlatformWalletConfig' test.out

#- 186 UpdatePlatformWalletConfig
samples/cli/sample-apps Platform updatePlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Epic' \
    --body '{"allowedBalanceOrigins": ["Twitch", "Other", "System"]}' \
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
    --body '{"entitlement": {"consumable": {"enabled": false, "strategy": "REVOKE_OR_REPORT"}, "durable": {"enabled": true, "strategy": "REVOKE_OR_REPORT"}}, "wallet": {"enabled": true, "strategy": "REVOKE_OR_REPORT"}}' \
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
    --endTime 'eN5fRUti8VrmnGBP' \
    --limit '94' \
    --offset '59' \
    --source 'DLC' \
    --startTime 'huLLY9XZruziVOt0' \
    --status 'FAIL' \
    --transactionId 'eju2oUAR7A3FzrW3' \
    --userId 'e5KtUTuweIgUtHdO' \
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
    --body '{"appConfig": {"appName": "vMsfCknA57HDpyL4"}, "customConfig": {"connectionType": "TLS", "grpcServerAddress": "1Ezyt2Ou3oSYxdqP"}, "extendType": "APP"}' \
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
    --body '{"description": "Yx7aC1YjMYHFudHU", "eventTopic": "Kf2h2vqvRUJmPYWQ", "maxAwarded": 47, "maxAwardedPerUser": 65, "namespaceExpression": "1quyxRZZFn7DIJk4", "rewardCode": "cPIEZnAbuvPGhBBH", "rewardConditions": [{"condition": "BWIOfu72XjHky7ZH", "conditionName": "YL0bGQp3aD9gr37M", "eventName": "zKtnykgnZIxzx9Be", "rewardItems": [{"duration": 56, "endDate": "1993-08-11T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "3upqJMtoY6LQrGZH", "quantity": 80, "sku": "2ZSzD7aNVoyIatlS"}, {"duration": 85, "endDate": "1975-02-10T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "RfAz6ab8jWfivyRK", "quantity": 39, "sku": "IJCwo0o4Eqk3Bd2E"}, {"duration": 7, "endDate": "1986-06-07T00:00:00Z", "identityType": "ITEM_ID", "itemId": "ebGt0O7KhQU5xk70", "quantity": 63, "sku": "wm61anfRCik5e1AQ"}]}, {"condition": "MJXetcdRn7S9qE9R", "conditionName": "ppal7RTuGwHUBFMa", "eventName": "2Tvdq9ydZ4GVuFFh", "rewardItems": [{"duration": 63, "endDate": "1985-10-17T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "sXNlfHDTk70jHFR7", "quantity": 39, "sku": "EypGe4b4hT59o48l"}, {"duration": 4, "endDate": "1982-11-10T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "GHesny8CT11kJAsQ", "quantity": 90, "sku": "Z6t9pZz32j3Xvfgt"}, {"duration": 87, "endDate": "1992-04-27T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "6exsU5uKvBFtWgYG", "quantity": 5, "sku": "xD4l2gZ116OsGGHD"}]}, {"condition": "KU4rLbd0uuq7iOCK", "conditionName": "3XhyI4uI9WKEympb", "eventName": "CafYdL3VWcDhinH7", "rewardItems": [{"duration": 73, "endDate": "1996-11-09T00:00:00Z", "identityType": "ITEM_ID", "itemId": "uSpxnCTbL1F1hlU6", "quantity": 36, "sku": "I2TjB9rnaGItd8Lj"}, {"duration": 36, "endDate": "1991-05-29T00:00:00Z", "identityType": "ITEM_ID", "itemId": "yOqP8vh2pJey23es", "quantity": 16, "sku": "knOWxLC3Ry6iRELg"}, {"duration": 95, "endDate": "1972-01-26T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "OgKd4mL2XnnR0TjA", "quantity": 7, "sku": "umFzJtskTsQunr4i"}]}], "userIdExpression": "dlLYIFbGqmyVlh10"}' \
    > test.out 2>&1
eval_tap $? 196 'CreateReward' test.out

#- 197 QueryRewards
samples/cli/sample-apps Platform queryRewards \
    --namespace $AB_NAMESPACE \
    --eventTopic 'E79f4cASMZNB7d91' \
    --limit '51' \
    --offset '89' \
    --sortBy '["namespace:asc", "rewardCode", "namespace"]' \
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
    --rewardId 'gaeyIT4BRUiyQdZ1' \
    > test.out 2>&1
eval_tap $? 200 'GetReward' test.out

#- 201 UpdateReward
samples/cli/sample-apps Platform updateReward \
    --namespace $AB_NAMESPACE \
    --rewardId '6bvNeZVSHqOoyqMC' \
    --body '{"description": "7M8kwnmKLqPwfSWA", "eventTopic": "NESQbLqcx1nexGlL", "maxAwarded": 43, "maxAwardedPerUser": 55, "namespaceExpression": "lzgMrJPOi1fhqVxQ", "rewardCode": "5d17nKxZJFQJ0Cyn", "rewardConditions": [{"condition": "RizlElD04UjVBxeG", "conditionName": "8VZOEGfawimpT2Yh", "eventName": "enapVgzL5H7AtYgJ", "rewardItems": [{"duration": 47, "endDate": "1975-10-01T00:00:00Z", "identityType": "ITEM_ID", "itemId": "pMEGakxP5r5mciJT", "quantity": 8, "sku": "SQLRpKgMBYzYo2iS"}, {"duration": 77, "endDate": "1984-06-17T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "ry2YRmi8YQfmSuCK", "quantity": 33, "sku": "jZYIN02xzvFAZFbe"}, {"duration": 35, "endDate": "1997-03-21T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "wDvCkWO7YeLumCPy", "quantity": 71, "sku": "ikIECUiBGaRuxS5M"}]}, {"condition": "ibctJA8eoSgz0fdk", "conditionName": "7kV6CGcTXbn1VEIE", "eventName": "XVWOTzV5b92u2S1W", "rewardItems": [{"duration": 32, "endDate": "1975-02-11T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "HV0JUO82gPxwvn9s", "quantity": 67, "sku": "xwMFPsylNW6F4gvi"}, {"duration": 45, "endDate": "1992-07-21T00:00:00Z", "identityType": "ITEM_ID", "itemId": "IZePSRcAjAeKUL8X", "quantity": 26, "sku": "RpGWq39TLidcWdm6"}, {"duration": 76, "endDate": "1988-02-11T00:00:00Z", "identityType": "ITEM_ID", "itemId": "FwYHH8sXzGlXHTIJ", "quantity": 72, "sku": "kl5WWdQ5hFiKqBF5"}]}, {"condition": "TuIb5Hw6oyzzwFFB", "conditionName": "emq4jK06wWffvQ3S", "eventName": "ElgBy1uOklGjCyUW", "rewardItems": [{"duration": 12, "endDate": "1992-04-20T00:00:00Z", "identityType": "ITEM_ID", "itemId": "whhAju3yiu7Vkybh", "quantity": 85, "sku": "q55ojqSvpbt3ULcN"}, {"duration": 72, "endDate": "1977-03-28T00:00:00Z", "identityType": "ITEM_ID", "itemId": "eIfkSq8FDv449O8m", "quantity": 30, "sku": "gQym5DgWu75xRAAI"}, {"duration": 15, "endDate": "1971-10-11T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "YMVOX1ole1TNxuHF", "quantity": 15, "sku": "mAwil425FR13Y1FJ"}]}], "userIdExpression": "s0v9KPeCBcncKpCh"}' \
    > test.out 2>&1
eval_tap $? 201 'UpdateReward' test.out

#- 202 DeleteReward
samples/cli/sample-apps Platform deleteReward \
    --namespace $AB_NAMESPACE \
    --rewardId 'LG5zkiolJVpFKTxV' \
    > test.out 2>&1
eval_tap $? 202 'DeleteReward' test.out

#- 203 CheckEventCondition
samples/cli/sample-apps Platform checkEventCondition \
    --namespace $AB_NAMESPACE \
    --rewardId 'DcKOAe8aaYpKme5q' \
    --body '{"payload": {"SOlyv5wa2JaVUfRm": {}, "57OyDGJzEyuNEmmB": {}, "Mpq8wH5FQEJEqLJu": {}}}' \
    > test.out 2>&1
eval_tap $? 203 'CheckEventCondition' test.out

#- 204 DeleteRewardConditionRecord
samples/cli/sample-apps Platform deleteRewardConditionRecord \
    --namespace $AB_NAMESPACE \
    --rewardId 'bIjEOTlhn7UI7uvU' \
    --body '{"conditionName": "Hf5O870MYjhafvTn", "userId": "l1YOPgROH12Nem7t"}' \
    > test.out 2>&1
eval_tap $? 204 'DeleteRewardConditionRecord' test.out

#- 205 QuerySections
samples/cli/sample-apps Platform querySections \
    --namespace $AB_NAMESPACE \
    --end 'zKmdHxfvGE6Jz6h8' \
    --limit '94' \
    --offset '87' \
    --start 'qSw1OJURx2s8Yyfq' \
    --storeId '8vGShxIbQV0sdyQN' \
    --viewId 'Uf1nQ4ZHg9L53ZeZ' \
    > test.out 2>&1
eval_tap $? 205 'QuerySections' test.out

#- 206 CreateSection
samples/cli/sample-apps Platform createSection \
    --namespace $AB_NAMESPACE \
    --storeId 'vVyBTnMUQgcRuCe3' \
    --body '{"active": false, "displayOrder": 53, "endDate": "1985-06-30T00:00:00Z", "ext": {"o1xLR1mPk4fmNk0v": {}, "lYuVG7YxspnzT615": {}, "GfGONyE6agEZ5zo7": {}}, "fixedPeriodRotationConfig": {"backfillType": "CUSTOM", "duration": 84, "itemCount": 69, "rule": "SEQUENCE"}, "items": [{"id": "WJAnFpr5ubwA7gnB", "sku": "8wt39MgQD29AaTUj"}, {"id": "Zk0TY0t3jXnmFcDn", "sku": "DmphhCF2tqWJQmP1"}, {"id": "dVfdwH7De9OGVLCz", "sku": "rpysG1ahjZKjzjRo"}], "localizations": {"EuRcJqceXMPRrMk9": {"description": "S0Mw3TKSWxB1ig3n", "localExt": {"17Yi1j73LbAv6yyR": {}, "OmuDbsKnNcSj7qCC": {}, "ZS3zqWpNJDUz4WcA": {}}, "longDescription": "tZ7T67AZHP7PdPp0", "title": "cvzkTBIt4FSwCWj3"}, "dbcatkCTddZq8OyZ": {"description": "a0xmFL0s9tgXFBq6", "localExt": {"SZBntGc7U0o030FI": {}, "QWpSMXCYIYswpfD2": {}, "Q0JkKMyElx6l9drO": {}}, "longDescription": "jRMDpjgQAij6AeXZ", "title": "uBbE9nZdrHPsi6L8"}, "s7rhSfVSUnLXH9UQ": {"description": "JJnkQdIaIwdm5mNZ", "localExt": {"uq8Yd5wvqC2Wzf4d": {}, "uVV5G7GyTswN84Jg": {}, "vfngXKAGkOEXyWB8": {}}, "longDescription": "tKsAHYUknvaeg7BA", "title": "YfQCp0wTssRosQpY"}}, "name": "nPGiTp5bjtpEVKRe", "rotationType": "NONE", "startDate": "1996-07-24T00:00:00Z", "viewId": "oRgyZd5DBMeSpKrD"}' \
    > test.out 2>&1
eval_tap $? 206 'CreateSection' test.out

#- 207 PurgeExpiredSection
samples/cli/sample-apps Platform purgeExpiredSection \
    --namespace $AB_NAMESPACE \
    --storeId 'wmYHCaAr7UesV7y5' \
    > test.out 2>&1
eval_tap $? 207 'PurgeExpiredSection' test.out

#- 208 GetSection
samples/cli/sample-apps Platform getSection \
    --namespace $AB_NAMESPACE \
    --sectionId 'YrfvpsQLf5zumBeq' \
    --storeId 'JqH0SEgFbEz42j5U' \
    > test.out 2>&1
eval_tap $? 208 'GetSection' test.out

#- 209 UpdateSection
samples/cli/sample-apps Platform updateSection \
    --namespace $AB_NAMESPACE \
    --sectionId 'KBj6qSKtNfaFQWsU' \
    --storeId '0wtZgdzFSM071fVW' \
    --body '{"active": true, "displayOrder": 95, "endDate": "1991-07-19T00:00:00Z", "ext": {"uZelvkMes91pUtMl": {}, "APYHmOoSq3xyzAcn": {}, "jGHVBa3SW9jR5ba2": {}}, "fixedPeriodRotationConfig": {"backfillType": "CUSTOM", "duration": 41, "itemCount": 35, "rule": "LOOP"}, "items": [{"id": "3bmhLA2BLAeE9Iww", "sku": "ATvzfGcZYa1PYJ5X"}, {"id": "lYcXk1QkdmXd1Dpp", "sku": "T3ahDnlSH66WSeCc"}, {"id": "Wr2zZXgIKxC7WLI0", "sku": "IpPomI0cOlhU5KwH"}], "localizations": {"6hSpHNyaveOuix3Y": {"description": "5bertZAyyXB1MrK4", "localExt": {"Z1CzBYqmIx1OrbIN": {}, "aahHQn4qOvrdmJah": {}, "GqCp8pfXCzdLGC7Q": {}}, "longDescription": "TTitKxaqIXVn1Dia", "title": "CI0sbVWnqW7k7dYP"}, "8jJ2NQHiAQk8egxE": {"description": "xfcPohNPwyDdI9Xw", "localExt": {"IFUVGyVfXtFAtK3D": {}, "34bkDzffynCseq2k": {}, "dHmLkDxOzHtEhPYd": {}}, "longDescription": "2N5gT7c6yW0lkrED", "title": "LW4fVdZFcnVihlva"}, "swGDs0cggDqJUNmq": {"description": "mjupLxQ0aSEHkf3K", "localExt": {"WJsQpoM8jVc0P1hp": {}, "onFzoLn6Xxijwe7X": {}, "set3lRi7fE9wYX76": {}}, "longDescription": "wCgh6W8cMykKane2", "title": "Q7Qrlrh4ja3PnpHH"}}, "name": "n9pR2zU54uwNYM7o", "rotationType": "FIXED_PERIOD", "startDate": "1977-02-08T00:00:00Z", "viewId": "ycuLBgdE8ATiiN8o"}' \
    > test.out 2>&1
eval_tap $? 209 'UpdateSection' test.out

#- 210 DeleteSection
samples/cli/sample-apps Platform deleteSection \
    --namespace $AB_NAMESPACE \
    --sectionId 'vsACESHpWLYS9jas' \
    --storeId 'JMbhupe1hgW1MEpN' \
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
    --body '{"defaultLanguage": "s7TOflKkDCCUBpAB", "defaultRegion": "5OI9w09YW4KFHrmT", "description": "QppHaybxpHS71nhr", "supportedLanguages": ["hXfvpwixF3R1LrG3", "aVQDt1rmHb3ByG1h", "oljtlv0NtbsxPyNc"], "supportedRegions": ["TUH80OCIdBEwVSK8", "RwvsbSmAgXtkpJfx", "7KHYRgntAtrDZQRR"], "title": "rIKqAM4s6WGC1tFc"}' \
    > test.out 2>&1
eval_tap $? 212 'CreateStore' test.out

#- 213 GetCatalogDefinition
samples/cli/sample-apps Platform getCatalogDefinition \
    --namespace $AB_NAMESPACE \
    --catalogType 'VIEW' \
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
    --body '{"catalogType": "SECTION", "fieldsToBeIncluded": ["1Q5qzZRzC6R13jrJ", "XDQv6SCbe8qMwYOg", "vdkCnxjyWkhQDyTa"], "idsToBeExported": ["HErMYSmbfrcvKRP3", "n9MWIRRtTdTCEDnd", "A5mLMOq1QdsYVpTu"], "storeId": "90jslzMSYGoEywln"}' \
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
    --storeId 'bbz3dEB0PACVd1Tu' \
    > test.out 2>&1
eval_tap $? 221 'GetStore' test.out

#- 222 UpdateStore
samples/cli/sample-apps Platform updateStore \
    --namespace $AB_NAMESPACE \
    --storeId 'NL5FIxvzKzpDMNK1' \
    --body '{"defaultLanguage": "x2wkz5kxVUpVN3rG", "defaultRegion": "ahu3ipHEaHSHArVH", "description": "2yKHv6N8htvZ2Tyw", "supportedLanguages": ["x6ldGOLAr8KpdXph", "PWz6Rbr2CkhiHdvW", "H5TKN8ZvxZixlc3e"], "supportedRegions": ["8uYEgEeFbtCNDp8j", "5kaq56l7sC4JUSJm", "wSIz73Q6m79bnORj"], "title": "plKRUgemsmifV8U9"}' \
    > test.out 2>&1
eval_tap $? 222 'UpdateStore' test.out

#- 223 DeleteStore
samples/cli/sample-apps Platform deleteStore \
    --namespace $AB_NAMESPACE \
    --storeId 'aKHGCY0M326arhYH' \
    > test.out 2>&1
eval_tap $? 223 'DeleteStore' test.out

#- 224 QueryChanges
samples/cli/sample-apps Platform queryChanges \
    --namespace $AB_NAMESPACE \
    --storeId 'PNAtCjbyVBffalny' \
    --action 'CREATE' \
    --itemSku 'u6c3s0xcPBreJsrO' \
    --itemType 'SUBSCRIPTION' \
    --limit '19' \
    --offset '50' \
    --selected 'true' \
    --sortBy '["createdAt", "updatedAt:desc", "createdAt:asc"]' \
    --status 'UNPUBLISHED' \
    --type 'STORE' \
    --updatedAtEnd 'RNeEXOJeJGlwmisQ' \
    --updatedAtStart 'lM1GJqh0XQHahrpa' \
    --withTotal 'true' \
    > test.out 2>&1
eval_tap $? 224 'QueryChanges' test.out

#- 225 PublishAll
samples/cli/sample-apps Platform publishAll \
    --namespace $AB_NAMESPACE \
    --storeId 'DGxYcD1ARavHPXle' \
    > test.out 2>&1
eval_tap $? 225 'PublishAll' test.out

#- 226 PublishSelected
samples/cli/sample-apps Platform publishSelected \
    --namespace $AB_NAMESPACE \
    --storeId 'i236l38T2PagQLId' \
    > test.out 2>&1
eval_tap $? 226 'PublishSelected' test.out

#- 227 SelectAllRecords
samples/cli/sample-apps Platform selectAllRecords \
    --namespace $AB_NAMESPACE \
    --storeId 'yaENAtPMa7yujqJk' \
    > test.out 2>&1
eval_tap $? 227 'SelectAllRecords' test.out

#- 228 SelectAllRecordsByCriteria
samples/cli/sample-apps Platform selectAllRecordsByCriteria \
    --namespace $AB_NAMESPACE \
    --storeId '8NT9zXXtnjjfU8kB' \
    --action 'CREATE' \
    --itemSku 'Eduh6WwQfwNB6E3l' \
    --itemType 'SEASON' \
    --selected 'true' \
    --type 'ITEM' \
    --updatedAtEnd 'pdpQd0hDfOkm17dM' \
    --updatedAtStart 'v4yyOXxkFh1i2gO8' \
    > test.out 2>&1
eval_tap $? 228 'SelectAllRecordsByCriteria' test.out

#- 229 GetStatistic
samples/cli/sample-apps Platform getStatistic \
    --namespace $AB_NAMESPACE \
    --storeId 'jjlhBzaJlnMytbMc' \
    --action 'CREATE' \
    --itemSku 'Lu9zX0XwM2b7pGN8' \
    --itemType 'SUBSCRIPTION' \
    --type 'VIEW' \
    --updatedAtEnd 'yj6caKUjYjUxvIQ3' \
    --updatedAtStart 'kvXBaFQAB3u0FkSS' \
    > test.out 2>&1
eval_tap $? 229 'GetStatistic' test.out

#- 230 UnselectAllRecords
samples/cli/sample-apps Platform unselectAllRecords \
    --namespace $AB_NAMESPACE \
    --storeId 'ROH4f4KN0QBw1LNY' \
    > test.out 2>&1
eval_tap $? 230 'UnselectAllRecords' test.out

#- 231 SelectRecord
samples/cli/sample-apps Platform selectRecord \
    --changeId '6Gh369F8eQpYVeTq' \
    --namespace $AB_NAMESPACE \
    --storeId 'AoWpn9qLzzf1uz1V' \
    > test.out 2>&1
eval_tap $? 231 'SelectRecord' test.out

#- 232 UnselectRecord
samples/cli/sample-apps Platform unselectRecord \
    --changeId 'lzmPZYE36igblrXB' \
    --namespace $AB_NAMESPACE \
    --storeId 'Cfx4PObAhH5CQ7ML' \
    > test.out 2>&1
eval_tap $? 232 'UnselectRecord' test.out

#- 233 CloneStore
samples/cli/sample-apps Platform cloneStore \
    --namespace $AB_NAMESPACE \
    --storeId 'LJzfdvTEy43yviHd' \
    --targetStoreId 'TKC0A88RhWf0jLFi' \
    > test.out 2>&1
eval_tap $? 233 'CloneStore' test.out

#- 234 ExportStore
eval_tap 0 234 'ExportStore # SKIP deprecated' test.out

#- 235 QueryImportHistory
samples/cli/sample-apps Platform queryImportHistory \
    --namespace $AB_NAMESPACE \
    --storeId 'PStX3KtTeDKbEPNN' \
    --end 'DasGMRxNueWKDbvS' \
    --limit '71' \
    --offset '75' \
    --sortBy 'Td6GHzIcWPzAZMbi' \
    --start '5CBVAYGCRxqQgRST' \
    --success 'false' \
    > test.out 2>&1
eval_tap $? 235 'QueryImportHistory' test.out

#- 236 ImportStoreByCSV
samples/cli/sample-apps Platform importStoreByCSV \
    --namespace $AB_NAMESPACE \
    --storeId 'Jz6DDnNuyiq7W5Xt' \
    --category 'tmp.dat' \
    --display 'tmp.dat' \
    --item 'tmp.dat' \
    --notes 'kmMOySjptPX1BZ4l' \
    --section 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 236 'ImportStoreByCSV' test.out

#- 237 QuerySubscriptions
samples/cli/sample-apps Platform querySubscriptions \
    --namespace $AB_NAMESPACE \
    --chargeStatus 'CHARGED' \
    --itemId 'COIDleQhOr7ZulAm' \
    --limit '37' \
    --offset '97' \
    --sku '9CvsERuwWGba6HAs' \
    --status 'EXPIRED' \
    --subscribedBy 'USER' \
    --userId 'QzDhL0WvuqAHeUBG' \
    > test.out 2>&1
eval_tap $? 237 'QuerySubscriptions' test.out

#- 238 RecurringChargeSubscription
samples/cli/sample-apps Platform recurringChargeSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'OEUuzFPmBfZub0r5' \
    > test.out 2>&1
eval_tap $? 238 'RecurringChargeSubscription' test.out

#- 239 GetTicketDynamic
samples/cli/sample-apps Platform getTicketDynamic \
    --boothName 'wc1xChtojeyhglJu' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 239 'GetTicketDynamic' test.out

#- 240 DecreaseTicketSale
samples/cli/sample-apps Platform decreaseTicketSale \
    --boothName 'ABwN4SoX0YP8Mh4g' \
    --namespace $AB_NAMESPACE \
    --body '{"orderNo": "R0XwAocvxJiDcuIe"}' \
    > test.out 2>&1
eval_tap $? 240 'DecreaseTicketSale' test.out

#- 241 GetTicketBoothID
samples/cli/sample-apps Platform getTicketBoothID \
    --boothName 'qvSKVzwAEeTV9ChS' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 241 'GetTicketBoothID' test.out

#- 242 IncreaseTicketSale
samples/cli/sample-apps Platform increaseTicketSale \
    --boothName 'WCCcAiMiyK8BuHi7' \
    --namespace $AB_NAMESPACE \
    --body '{"count": 19, "orderNo": "S5TihMIlBBkffiqw"}' \
    > test.out 2>&1
eval_tap $? 242 'IncreaseTicketSale' test.out

#- 243 Commit
samples/cli/sample-apps Platform commit \
    --namespace $AB_NAMESPACE \
    --body '{"actions": [{"operations": [{"creditPayload": {"balanceOrigin": "Epic", "count": 96, "currencyCode": "008DwUHAO2NImS8X", "expireAt": "1990-12-02T00:00:00Z"}, "debitPayload": {"count": 6, "currencyCode": "t6HNj0wmhGexGpNK", "walletPlatform": "Oculus"}, "fulFillItemPayload": {"count": 54, "entitlementCollectionId": "4FR2ar3CNltSw0VR", "entitlementOrigin": "Nintendo", "itemIdentity": "ocJ0ulcBQeGDSiE8", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 17, "entitlementId": "DpwIkUuFrEclnDWa"}, "type": "FULFILL_ITEM"}, {"creditPayload": {"balanceOrigin": "System", "count": 34, "currencyCode": "v1e0gGSZyRyd1iuU", "expireAt": "1999-10-09T00:00:00Z"}, "debitPayload": {"count": 58, "currencyCode": "pJWISQIG93dKlmEL", "walletPlatform": "Playstation"}, "fulFillItemPayload": {"count": 99, "entitlementCollectionId": "08owOSVi9AGFPPsn", "entitlementOrigin": "Other", "itemIdentity": "y8erwAX418ShphS1", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 84, "entitlementId": "EI8MO8QHi4SoVcz3"}, "type": "CREDIT_WALLET"}, {"creditPayload": {"balanceOrigin": "Playstation", "count": 61, "currencyCode": "6AmCdxySbbX7BJpR", "expireAt": "1986-08-13T00:00:00Z"}, "debitPayload": {"count": 98, "currencyCode": "i6mxaQRP6Xty5uKN", "walletPlatform": "GooglePlay"}, "fulFillItemPayload": {"count": 64, "entitlementCollectionId": "iuxzzdx2W26NAGtp", "entitlementOrigin": "Oculus", "itemIdentity": "orT2NU2Td2nfCWH0", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 2, "entitlementId": "O2VIYrwcz8VZmHZe"}, "type": "CREDIT_WALLET"}], "userId": "og2jme757STd4tF3"}, {"operations": [{"creditPayload": {"balanceOrigin": "Epic", "count": 94, "currencyCode": "ilg1pswlHS3IBk29", "expireAt": "1994-09-03T00:00:00Z"}, "debitPayload": {"count": 2, "currencyCode": "r4mrsTT5DLRcRJsj", "walletPlatform": "Steam"}, "fulFillItemPayload": {"count": 20, "entitlementCollectionId": "j1eLqgJgRqyBDWXJ", "entitlementOrigin": "Other", "itemIdentity": "OXI80A0ZeSdXfdaU", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 11, "entitlementId": "wm0NgSrlzm8MOC1w"}, "type": "FULFILL_ITEM"}, {"creditPayload": {"balanceOrigin": "Nintendo", "count": 85, "currencyCode": "enTdmKRaB7CH6mWp", "expireAt": "1980-12-21T00:00:00Z"}, "debitPayload": {"count": 88, "currencyCode": "5eDy7UhuT0HsWi6H", "walletPlatform": "IOS"}, "fulFillItemPayload": {"count": 42, "entitlementCollectionId": "jPxOpo4uuVhYacqC", "entitlementOrigin": "IOS", "itemIdentity": "PuHxMbAByhBwkSZi", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 55, "entitlementId": "5vlNE0BOsjv5wHsx"}, "type": "DEBIT_WALLET"}, {"creditPayload": {"balanceOrigin": "Steam", "count": 17, "currencyCode": "uEBCncmhQHMTvdmn", "expireAt": "1975-01-11T00:00:00Z"}, "debitPayload": {"count": 16, "currencyCode": "cM2qTVHYoZ8FywQG", "walletPlatform": "Epic"}, "fulFillItemPayload": {"count": 11, "entitlementCollectionId": "sRjFviWrE0koXRtQ", "entitlementOrigin": "Other", "itemIdentity": "44XhwgMeimOElbuz", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 24, "entitlementId": "zE76nw0T73pdmEFx"}, "type": "DEBIT_WALLET"}], "userId": "ye8U67K0ztQwQfTk"}, {"operations": [{"creditPayload": {"balanceOrigin": "Epic", "count": 71, "currencyCode": "soNIKePwhd9rmDmn", "expireAt": "1972-12-26T00:00:00Z"}, "debitPayload": {"count": 89, "currencyCode": "W8RcOU8z2g8h3Wcz", "walletPlatform": "Xbox"}, "fulFillItemPayload": {"count": 98, "entitlementCollectionId": "0paF4WFDCOZnihbw", "entitlementOrigin": "Oculus", "itemIdentity": "aqO3McDtuVALjF5Y", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 48, "entitlementId": "rZKTjxM2TxN4vtr5"}, "type": "DEBIT_WALLET"}, {"creditPayload": {"balanceOrigin": "Oculus", "count": 81, "currencyCode": "vJOy9DwXUloXDHAb", "expireAt": "1986-11-06T00:00:00Z"}, "debitPayload": {"count": 15, "currencyCode": "wjg6E1aABBvr9v4D", "walletPlatform": "Oculus"}, "fulFillItemPayload": {"count": 36, "entitlementCollectionId": "7f4aVRhx5JdpmiIe", "entitlementOrigin": "Playstation", "itemIdentity": "rqsPcKiRXPwfBIkm", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 36, "entitlementId": "WYnZppCxAkhbT2MS"}, "type": "FULFILL_ITEM"}, {"creditPayload": {"balanceOrigin": "Epic", "count": 8, "currencyCode": "xjwdkZT3z7HQm5MF", "expireAt": "1977-10-15T00:00:00Z"}, "debitPayload": {"count": 92, "currencyCode": "hMBCEccKAKXxtgAY", "walletPlatform": "Steam"}, "fulFillItemPayload": {"count": 59, "entitlementCollectionId": "2Gk7FzQVbnZQg4jL", "entitlementOrigin": "System", "itemIdentity": "YYQ6HtG50Mvch0gt", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 85, "entitlementId": "rENtI3gVWjEQ37TV"}, "type": "CREDIT_WALLET"}], "userId": "wTlgoVKthX8MHijK"}], "metadata": {"fV84EfUgj1URBUGp": {}, "dOlKGC8lCB1UatuR": {}, "uxgh0rFQ2vCB6ods": {}}, "needPreCheck": true, "transactionId": "cTEKi9zkQvFikwTQ", "type": "9ltBzYHJ6Uvrxp0T"}' \
    > test.out 2>&1
eval_tap $? 243 'Commit' test.out

#- 244 GetTradeHistoryByCriteria
samples/cli/sample-apps Platform getTradeHistoryByCriteria \
    --namespace $AB_NAMESPACE \
    --limit '50' \
    --offset '57' \
    --status 'FAILED' \
    --type 'TlTPVZUMAgWEoA5Q' \
    --userId 'g9s8PUumJHjmp2rx' \
    > test.out 2>&1
eval_tap $? 244 'GetTradeHistoryByCriteria' test.out

#- 245 GetTradeHistoryByTransactionId
samples/cli/sample-apps Platform getTradeHistoryByTransactionId \
    --namespace $AB_NAMESPACE \
    --transactionId 'RPTzYzyzqsRaboGm' \
    > test.out 2>&1
eval_tap $? 245 'GetTradeHistoryByTransactionId' test.out

#- 246 UnlockSteamUserAchievement
samples/cli/sample-apps Platform unlockSteamUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'xLDw2AAXXPUriaep' \
    --body '{"achievements": [{"id": "6POEBHA0SgGiEZxf", "value": 90}, {"id": "HpRQLb1psTiwwnu0", "value": 86}, {"id": "C06YgNEXmqWvUxZH", "value": 72}], "steamUserId": "4zIj1HTEaEin0Kpo"}' \
    > test.out 2>&1
eval_tap $? 246 'UnlockSteamUserAchievement' test.out

#- 247 GetXblUserAchievements
samples/cli/sample-apps Platform getXblUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId 'USORfFbOFnUJQjlB' \
    --xboxUserId 'UTcDWiJFgvav2eNp' \
    > test.out 2>&1
eval_tap $? 247 'GetXblUserAchievements' test.out

#- 248 UpdateXblUserAchievement
samples/cli/sample-apps Platform updateXblUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'sIHXjIBTJJeeldVs' \
    --body '{"achievements": [{"id": "alYDUqGoMbV2GrWO", "percentComplete": 95}, {"id": "7BZply8q5aAQrerp", "percentComplete": 5}, {"id": "9czjckOfeTlUvgtY", "percentComplete": 37}], "serviceConfigId": "B4eopOqqqyom2bbG", "titleId": "IPyg54sMTxorojYw", "xboxUserId": "ZTNtNDiHt3P4kBvM"}' \
    > test.out 2>&1
eval_tap $? 248 'UpdateXblUserAchievement' test.out

#- 249 AnonymizeCampaign
samples/cli/sample-apps Platform anonymizeCampaign \
    --namespace $AB_NAMESPACE \
    --userId 'koCPZ2bKc1d1PtBv' \
    > test.out 2>&1
eval_tap $? 249 'AnonymizeCampaign' test.out

#- 250 AnonymizeEntitlement
samples/cli/sample-apps Platform anonymizeEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'hXfGmwTg1EKk5Hjq' \
    > test.out 2>&1
eval_tap $? 250 'AnonymizeEntitlement' test.out

#- 251 AnonymizeFulfillment
samples/cli/sample-apps Platform anonymizeFulfillment \
    --namespace $AB_NAMESPACE \
    --userId 'H0GEcuz6GKsUzN8J' \
    > test.out 2>&1
eval_tap $? 251 'AnonymizeFulfillment' test.out

#- 252 AnonymizeIntegration
samples/cli/sample-apps Platform anonymizeIntegration \
    --namespace $AB_NAMESPACE \
    --userId '9uwfyyMXAGDmZUmu' \
    > test.out 2>&1
eval_tap $? 252 'AnonymizeIntegration' test.out

#- 253 AnonymizeOrder
samples/cli/sample-apps Platform anonymizeOrder \
    --namespace $AB_NAMESPACE \
    --userId 'QSbAUUa6xXeAjF6i' \
    > test.out 2>&1
eval_tap $? 253 'AnonymizeOrder' test.out

#- 254 AnonymizePayment
samples/cli/sample-apps Platform anonymizePayment \
    --namespace $AB_NAMESPACE \
    --userId 'I6reKW33PURAIKs5' \
    > test.out 2>&1
eval_tap $? 254 'AnonymizePayment' test.out

#- 255 AnonymizeRevocation
samples/cli/sample-apps Platform anonymizeRevocation \
    --namespace $AB_NAMESPACE \
    --userId '8hvLxmObzCKzeg9j' \
    > test.out 2>&1
eval_tap $? 255 'AnonymizeRevocation' test.out

#- 256 AnonymizeSubscription
samples/cli/sample-apps Platform anonymizeSubscription \
    --namespace $AB_NAMESPACE \
    --userId 'x9WqWENe4iiUHz9G' \
    > test.out 2>&1
eval_tap $? 256 'AnonymizeSubscription' test.out

#- 257 AnonymizeWallet
samples/cli/sample-apps Platform anonymizeWallet \
    --namespace $AB_NAMESPACE \
    --userId 'NQYQs6e3Y6mbmOtZ' \
    > test.out 2>&1
eval_tap $? 257 'AnonymizeWallet' test.out

#- 258 GetUserDLCByPlatform
samples/cli/sample-apps Platform getUserDLCByPlatform \
    --namespace $AB_NAMESPACE \
    --userId 'Sm5BC7HZ6j0dXge4' \
    --type 'XBOX' \
    > test.out 2>&1
eval_tap $? 258 'GetUserDLCByPlatform' test.out

#- 259 GetUserDLC
samples/cli/sample-apps Platform getUserDLC \
    --namespace $AB_NAMESPACE \
    --userId 'Ycn3I0vMyKCF0gMW' \
    --includeAllNamespaces 'false' \
    --status 'REVOKED' \
    --type 'OCULUS' \
    > test.out 2>&1
eval_tap $? 259 'GetUserDLC' test.out

#- 260 QueryUserEntitlements
samples/cli/sample-apps Platform queryUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId '1FBovblBkgvqp0Od' \
    --activeOnly 'false' \
    --appType 'GAME' \
    --collectionId 'BlOWV70OAOvDNh34' \
    --entitlementClazz 'ENTITLEMENT' \
    --entitlementName 'RDkDkXhgEDtRBlGJ' \
    --features '["LbnXjVqK3zRCWBp3", "XWRvv5NMchlfSmHm", "gtQGIMQ72TnB333l"]' \
    --fuzzyMatchName 'true' \
    --ignoreActiveDate 'true' \
    --itemId '["hMwlPA9V5cPMfPHf", "ZdG10Bcxcmved1kb", "hHY9tRL6ufqU815X"]' \
    --limit '82' \
    --offset '6' \
    --origin 'Nintendo' \
    > test.out 2>&1
eval_tap $? 260 'QueryUserEntitlements' test.out

#- 261 GrantUserEntitlement
samples/cli/sample-apps Platform grantUserEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'NZtBwm9I7VnZjw2a' \
    --body '[{"collectionId": "E3bchkgJVYv4k8oc", "endDate": "1999-04-14T00:00:00Z", "grantedCode": "8HDjDXnD4ZH2fqfv", "itemId": "7gtUi2pXfhz5sdqa", "itemNamespace": "DNSQMK68gPJuduMd", "language": "DY", "metadata": {"SOi0hMJZeey0nCrj": {}, "LgyhwhXtDHn4KieN": {}, "6yZYIAhvyuhhqO5a": {}}, "origin": "Twitch", "quantity": 90, "region": "vNR9kGoS2LuZ5g37", "source": "REFERRAL_BONUS", "startDate": "1976-10-27T00:00:00Z", "storeId": "RdGUsB94dLbkiOAT"}, {"collectionId": "gpajPxt8hoAsUHj9", "endDate": "1992-07-15T00:00:00Z", "grantedCode": "96TcON3KWtCVQdxF", "itemId": "NpVreAFiLdYtVkXu", "itemNamespace": "kcSjl81RCrfhKcrz", "language": "IS_mOTN", "metadata": {"PtijAjUOabGiHieC": {}, "28Y0RgpvuTKEyd5I": {}, "1FCqHC8tLRUEuifY": {}}, "origin": "Xbox", "quantity": 9, "region": "cub6zok2cYfmJ8ob", "source": "REWARD", "startDate": "1991-10-16T00:00:00Z", "storeId": "kNXiQZXxhaXfauLC"}, {"collectionId": "lJ4eDKfXPFf2bhBI", "endDate": "1989-06-16T00:00:00Z", "grantedCode": "FZZBQyVUrPrGXh2w", "itemId": "Eankyfm4gnq1Z4ow", "itemNamespace": "XRYSOoLIjVYNdKsX", "language": "Qpr-mOsz", "metadata": {"qABhy6rJppsPxZNz": {}, "FW9AKVhAUtT9gIZW": {}, "kapyn2OoybSMiSLs": {}}, "origin": "GooglePlay", "quantity": 84, "region": "lxHc0ImeTDOZOQRB", "source": "PROMOTION", "startDate": "1999-12-01T00:00:00Z", "storeId": "JHy2YkUmYZiR4z9s"}]' \
    > test.out 2>&1
eval_tap $? 261 'GrantUserEntitlement' test.out

#- 262 GetUserAppEntitlementByAppId
samples/cli/sample-apps Platform getUserAppEntitlementByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'CgASTGYSrGFPfMbz' \
    --activeOnly 'true' \
    --appId 'ZgIwCsMWixhBd57g' \
    > test.out 2>&1
eval_tap $? 262 'GetUserAppEntitlementByAppId' test.out

#- 263 QueryUserEntitlementsByAppType
samples/cli/sample-apps Platform queryUserEntitlementsByAppType \
    --namespace $AB_NAMESPACE \
    --userId 'cnu6904YSZOJVvzl' \
    --activeOnly 'true' \
    --limit '87' \
    --offset '92' \
    --appType 'SOFTWARE' \
    > test.out 2>&1
eval_tap $? 263 'QueryUserEntitlementsByAppType' test.out

#- 264 GetUserEntitlementsByIds
samples/cli/sample-apps Platform getUserEntitlementsByIds \
    --namespace $AB_NAMESPACE \
    --userId 'lmP782UJOTWUQQKJ' \
    --ids '["ER3kSYmclBfKA9J3", "jrm6VjHHhdjNGSIp", "6T7vunubJvVCVR6M"]' \
    > test.out 2>&1
eval_tap $? 264 'GetUserEntitlementsByIds' test.out

#- 265 GetUserEntitlementByItemId
samples/cli/sample-apps Platform getUserEntitlementByItemId \
    --namespace $AB_NAMESPACE \
    --userId '4s4eovBbZCmxaT32' \
    --activeOnly 'true' \
    --entitlementClazz 'CODE' \
    --platform 'U3dG0pk7i7Ec2KiD' \
    --itemId 'qtnCHaP7qrwL8Ynd' \
    > test.out 2>&1
eval_tap $? 265 'GetUserEntitlementByItemId' test.out

#- 266 GetUserActiveEntitlementsByItemIds
samples/cli/sample-apps Platform getUserActiveEntitlementsByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'Xvscu8VM8PyvxMGe' \
    --ids '["Y7VEaGu4EBUKbZHn", "gTlaJPtY58jKmWRU", "fZdfewfOiBoNiZN4"]' \
    --platform '9mp9tY9e1zHEVQ2O' \
    > test.out 2>&1
eval_tap $? 266 'GetUserActiveEntitlementsByItemIds' test.out

#- 267 GetUserEntitlementBySku
samples/cli/sample-apps Platform getUserEntitlementBySku \
    --namespace $AB_NAMESPACE \
    --userId 'l2ZMMdYcf25ARDAE' \
    --activeOnly 'true' \
    --entitlementClazz 'LOOTBOX' \
    --platform 'X8t2fzgGFufAs4d9' \
    --sku 'FeDziUK9EvoApoFF' \
    > test.out 2>&1
eval_tap $? 267 'GetUserEntitlementBySku' test.out

#- 268 ExistsAnyUserActiveEntitlement
samples/cli/sample-apps Platform existsAnyUserActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'HmIZs9G2YvllITGK' \
    --appIds '["pn75KRYmbDSzkbhw", "kf6WyOxPTQftAOKW", "Fr2pdJixKkekiQ7O"]' \
    --itemIds '["wfGd9P8mdjfRVIJi", "a5TCith44JotVpuv", "PzRrayEtUQxcOhlk"]' \
    --platform 'dloduPxkYJPLG4S6' \
    --skus '["fPlVyvLga88o8pN9", "3eMhltOkpjWOuIpg", "5dDtdvrPlBCWvrLm"]' \
    > test.out 2>&1
eval_tap $? 268 'ExistsAnyUserActiveEntitlement' test.out

#- 269 ExistsAnyUserActiveEntitlementByItemIds
samples/cli/sample-apps Platform existsAnyUserActiveEntitlementByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'kt4phHtYEb1imVLR' \
    --platform 'wV6QG0zBjZQvlyxx' \
    --itemIds '["yQWPpG8Zqqu5oJL7", "CkUO0nxCExLUfnu9", "IfQY0PFaAgHGOaDl"]' \
    > test.out 2>&1
eval_tap $? 269 'ExistsAnyUserActiveEntitlementByItemIds' test.out

#- 270 GetUserAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform getUserAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'ts3ehqQ1RffcfJS2' \
    --appId 'CTgwcHsLqLPVbN8H' \
    > test.out 2>&1
eval_tap $? 270 'GetUserAppEntitlementOwnershipByAppId' test.out

#- 271 GetUserEntitlementOwnershipByItemId
samples/cli/sample-apps Platform getUserEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'tiCv2YhB39A42kch' \
    --entitlementClazz 'LOOTBOX' \
    --platform 'vjveMpQOYh8JyRcb' \
    --itemId 'K7kis5iXt5GdmMx2' \
    > test.out 2>&1
eval_tap $? 271 'GetUserEntitlementOwnershipByItemId' test.out

#- 272 GetUserEntitlementOwnershipByItemIds
samples/cli/sample-apps Platform getUserEntitlementOwnershipByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'eqmBnZilCo52skZg' \
    --ids '["Dax4fbBQMi9qz2FL", "FMBg24pnlG4spqix", "H3BD3Y5h5A45NfIF"]' \
    --platform '2cs0ZbU5PsvQ1V8x' \
    > test.out 2>&1
eval_tap $? 272 'GetUserEntitlementOwnershipByItemIds' test.out

#- 273 GetUserEntitlementOwnershipBySku
samples/cli/sample-apps Platform getUserEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --userId 'Z2v3FoZowtg5n4mD' \
    --entitlementClazz 'APP' \
    --platform 'QcU6GfnJX6R6HKPI' \
    --sku 'FhL0gEexwMJES5Hy' \
    > test.out 2>&1
eval_tap $? 273 'GetUserEntitlementOwnershipBySku' test.out

#- 274 RevokeAllEntitlements
samples/cli/sample-apps Platform revokeAllEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'aW7crDthQRtVNyuB' \
    > test.out 2>&1
eval_tap $? 274 'RevokeAllEntitlements' test.out

#- 275 RevokeUserEntitlements
samples/cli/sample-apps Platform revokeUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'RdEm4TI9kYDEbkdE' \
    --entitlementIds 'fCPwnKTs8ya5xM2u' \
    > test.out 2>&1
eval_tap $? 275 'RevokeUserEntitlements' test.out

#- 276 GetUserEntitlement
samples/cli/sample-apps Platform getUserEntitlement \
    --entitlementId '6nlaX7RYdUtfVi0A' \
    --namespace $AB_NAMESPACE \
    --userId '0VJsRMLTE8mILB7i' \
    > test.out 2>&1
eval_tap $? 276 'GetUserEntitlement' test.out

#- 277 UpdateUserEntitlement
samples/cli/sample-apps Platform updateUserEntitlement \
    --entitlementId 'QsMDZZjRx9tTeJFk' \
    --namespace $AB_NAMESPACE \
    --userId 'oTh7n6WN4rkCjNtK' \
    --body '{"collectionId": "HUPXccufGl9h5PSO", "endDate": "1998-05-18T00:00:00Z", "nullFieldList": ["FYCBxCQ27eJIPOpw", "RgGrpvJyXuoM02uh", "d1V9Eu5wMDd8kl9d"], "origin": "Other", "reason": "Bipu4iWTkIMU8eRx", "startDate": "1986-09-04T00:00:00Z", "status": "INACTIVE", "useCount": 85}' \
    > test.out 2>&1
eval_tap $? 277 'UpdateUserEntitlement' test.out

#- 278 ConsumeUserEntitlement
samples/cli/sample-apps Platform consumeUserEntitlement \
    --entitlementId '2XS0glEZLgE3gr1Y' \
    --namespace $AB_NAMESPACE \
    --userId 'ypnIvVt6qN5CmP94' \
    --body '{"metadata": {"L4GmVs0or6Pjahir": {}, "yykYPGI5mX80IYfW": {}, "hEvvJBbs9eWqvsow": {}}, "options": ["HP6ZGxH71ZaV8N9h", "is7rDE1BTB7miu1y", "ENghztQIyPMGWte1"], "platform": "6X5wCNu2KWCjmxNV", "requestId": "OsjdSuLyu0aptGQZ", "useCount": 83}' \
    > test.out 2>&1
eval_tap $? 278 'ConsumeUserEntitlement' test.out

#- 279 DisableUserEntitlement
samples/cli/sample-apps Platform disableUserEntitlement \
    --entitlementId 'I2aAIMjyJAP5OsET' \
    --namespace $AB_NAMESPACE \
    --userId 'i9KD8hks3OUkwapS' \
    > test.out 2>&1
eval_tap $? 279 'DisableUserEntitlement' test.out

#- 280 EnableUserEntitlement
samples/cli/sample-apps Platform enableUserEntitlement \
    --entitlementId 'APiVrp2BJG2Z4yo6' \
    --namespace $AB_NAMESPACE \
    --userId '0csMJPKdXkpOqOyq' \
    > test.out 2>&1
eval_tap $? 280 'EnableUserEntitlement' test.out

#- 281 GetUserEntitlementHistories
samples/cli/sample-apps Platform getUserEntitlementHistories \
    --entitlementId 'W5RozrfZadGDbxvs' \
    --namespace $AB_NAMESPACE \
    --userId '3QESY5oXApziKQq4' \
    > test.out 2>&1
eval_tap $? 281 'GetUserEntitlementHistories' test.out

#- 282 RevokeUserEntitlement
samples/cli/sample-apps Platform revokeUserEntitlement \
    --entitlementId 'HhGkqkbfImskTaaW' \
    --namespace $AB_NAMESPACE \
    --userId 'Mh5MGVAI3MyvwoOE' \
    --body '{"metadata": {"AWYEwQpXFyn42esq": {}, "np2gRKdcyhvqFdl9": {}, "C4VfdAte5iH4YNFg": {}}}' \
    > test.out 2>&1
eval_tap $? 282 'RevokeUserEntitlement' test.out

#- 283 RevokeUserEntitlementByUseCount
samples/cli/sample-apps Platform revokeUserEntitlementByUseCount \
    --entitlementId 'ce0IrGtz95RlAFC0' \
    --namespace $AB_NAMESPACE \
    --userId 'vEFmO1HRBVg3ZGE7' \
    --body '{"reason": "LDbmETrUZxUGyRoV", "useCount": 18}' \
    > test.out 2>&1
eval_tap $? 283 'RevokeUserEntitlementByUseCount' test.out

#- 284 PreCheckRevokeUserEntitlementByUseCount
samples/cli/sample-apps Platform preCheckRevokeUserEntitlementByUseCount \
    --entitlementId '6chsEDh3Qhp6aFNo' \
    --namespace $AB_NAMESPACE \
    --userId 'jBokCVpXMlVAKi9E' \
    --quantity '45' \
    > test.out 2>&1
eval_tap $? 284 'PreCheckRevokeUserEntitlementByUseCount' test.out

#- 285 RevokeUseCount
eval_tap 0 285 'RevokeUseCount # SKIP deprecated' test.out

#- 286 SellUserEntitlement
samples/cli/sample-apps Platform sellUserEntitlement \
    --entitlementId 'o6dY8Ey5DYJ4Mqnb' \
    --namespace $AB_NAMESPACE \
    --userId 'XfctYFZ4NlqdjKLb' \
    --body '{"platform": "tefhKbR9sMzca0uP", "requestId": "shm7GHrZR7CkePxd", "useCount": 49}' \
    > test.out 2>&1
eval_tap $? 286 'SellUserEntitlement' test.out

#- 287 FulfillItem
samples/cli/sample-apps Platform fulfillItem \
    --namespace $AB_NAMESPACE \
    --userId 'm6MOuivTAvKZWZ3f' \
    --body '{"duration": 41, "endDate": "1994-07-03T00:00:00Z", "entitlementCollectionId": "I8m5DDEfKpkqHf08", "entitlementOrigin": "Nintendo", "itemId": "pS4K88ADoKVrxTrK", "itemSku": "PGvpgS24yUlwLGnE", "language": "gXRn1DaRh4o2mIGd", "metadata": {"IHIJ8EHScK2VjIPp": {}, "kndyAJ8QasRLr1Ho": {}, "XLSF7L8De8g2Tcg9": {}}, "order": {"currency": {"currencyCode": "otBjTqNUSYDnXTRj", "currencySymbol": "lEtyWL8f7ffrbeOs", "currencyType": "VIRTUAL", "decimals": 24, "namespace": "SXnxamRV3L3fXVmH"}, "ext": {"AkEulQk4Ql2H5kAr": {}, "3KWPphhEx46mfAUJ": {}, "5wNbuLZmTrpT2kAF": {}}, "free": false}, "orderNo": "KXyjqJ8eOQ7luzQG", "origin": "Other", "overrideBundleItemQty": {"O5LGZziDH9GhHs5i": 89, "30hhg4v7kamq9bfi": 87, "MzrA4Wx2jz6nA7AS": 49}, "quantity": 79, "region": "bFWVcMcxmrutJgoQ", "source": "PROMOTION", "startDate": "1998-06-17T00:00:00Z", "storeId": "ExRqIwACQP30mbbo"}' \
    > test.out 2>&1
eval_tap $? 287 'FulfillItem' test.out

#- 288 RedeemCode
samples/cli/sample-apps Platform redeemCode \
    --namespace $AB_NAMESPACE \
    --userId 'EK83AUtJzbjR9Kc6' \
    --body '{"code": "zORqhXR9PFFOSH3w", "language": "FJ_Gvgn-ar", "region": "vsjTpRz3ohb0237O"}' \
    > test.out 2>&1
eval_tap $? 288 'RedeemCode' test.out

#- 289 PreCheckFulfillItem
samples/cli/sample-apps Platform preCheckFulfillItem \
    --namespace $AB_NAMESPACE \
    --userId 'uG63anClIc0ywZI7' \
    --body '{"itemId": "ZIqv7uUjnsHGgMer", "itemSku": "t74J6IhX0iq7NPEW", "quantity": 26}' \
    > test.out 2>&1
eval_tap $? 289 'PreCheckFulfillItem' test.out

#- 290 FulfillRewards
samples/cli/sample-apps Platform fulfillRewards \
    --namespace $AB_NAMESPACE \
    --userId 'ItemZ24v704Nw69x' \
    --body '{"entitlementCollectionId": "sISRc16KLksO79AE", "entitlementOrigin": "System", "metadata": {"SzYD5o51tbILiAG2": {}, "jYU1P9HEonONQmOe": {}, "S0ZVZ1grxoIHuIJx": {}}, "origin": "Twitch", "rewards": [{"currency": {"currencyCode": "QtGh7Cehb5oHG2KR", "namespace": "hVW4FaTGQjPqcG8k"}, "item": {"itemId": "1vfOp0XzpOuEBLoN", "itemName": "Us8ePQI3MLfo2LMA", "itemSku": "wCQFBKs8Syw0aDiD", "itemType": "UaQ9JjpytAnTeYu9"}, "quantity": 88, "type": "CURRENCY"}, {"currency": {"currencyCode": "VUCewigpJY3W9IZw", "namespace": "i5yrzMLeM90gmuPP"}, "item": {"itemId": "fhRjTNNa0He8QZLQ", "itemName": "OZWjUdPrsDsve4Py", "itemSku": "iImxzqyLsbcEegAM", "itemType": "7bUW44r9Fq4UOyFa"}, "quantity": 58, "type": "CURRENCY"}, {"currency": {"currencyCode": "H5CLuZ143FFHSx7l", "namespace": "RMddPyfgt1IAi4jR"}, "item": {"itemId": "a7QfZd4IbkAfvR9h", "itemName": "xjxgY0MogugYV2ew", "itemSku": "eCvT7GgBeDOeVhn8", "itemType": "iHoYQgrMAILdqOWK"}, "quantity": 40, "type": "CURRENCY"}], "source": "CONSUME_ENTITLEMENT", "transactionId": "RP74d7KiFtutAxmf"}' \
    > test.out 2>&1
eval_tap $? 290 'FulfillRewards' test.out

#- 291 QueryUserIAPOrders
samples/cli/sample-apps Platform queryUserIAPOrders \
    --namespace $AB_NAMESPACE \
    --userId '9kND1lH6HtavTNTX' \
    --endTime 'jQgFBwWOBwoX6fzb' \
    --limit '98' \
    --offset '23' \
    --productId 'OFk7RtUJAFhU2Bmg' \
    --startTime 'BQd0IH1aLSFqCJEG' \
    --status 'FULFILLED' \
    --type 'EPICGAMES' \
    > test.out 2>&1
eval_tap $? 291 'QueryUserIAPOrders' test.out

#- 292 QueryAllUserIAPOrders
samples/cli/sample-apps Platform queryAllUserIAPOrders \
    --namespace $AB_NAMESPACE \
    --userId 'd3wcaEu0bSyTLzkz' \
    > test.out 2>&1
eval_tap $? 292 'QueryAllUserIAPOrders' test.out

#- 293 QueryUserIAPConsumeHistory
samples/cli/sample-apps Platform queryUserIAPConsumeHistory \
    --namespace $AB_NAMESPACE \
    --userId 'ch6abgVVN7N8lRM8' \
    --endTime '8WqfrwuKbSz3xhdp' \
    --limit '7' \
    --offset '54' \
    --startTime 'VKz00DYg9FlAdSR2' \
    --status 'SUCCESS' \
    --type 'APPLE' \
    > test.out 2>&1
eval_tap $? 293 'QueryUserIAPConsumeHistory' test.out

#- 294 MockFulfillIAPItem
samples/cli/sample-apps Platform mockFulfillIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'vjirhZ0l76kFAmqQ' \
    --body '{"itemIdentityType": "ITEM_SKU", "language": "SB_Pr", "productId": "F5D2Ne8wcPGtyk9u", "region": "Bj3VcUzRX6xVGhCD", "transactionId": "qfnCwQv3jMIvWr1Z", "type": "STADIA"}' \
    > test.out 2>&1
eval_tap $? 294 'MockFulfillIAPItem' test.out

#- 295 AdminSyncOculusSubscriptions
samples/cli/sample-apps Platform adminSyncOculusSubscriptions \
    --namespace $AB_NAMESPACE \
    --userId 'VVfYuccVScgF7PwN' \
    --body '{"skus": ["2gXvonudDugfHZrC", "YD3oW4GScmNBvUUS", "RpUC4NUBQGQQARNy"]}' \
    > test.out 2>&1
eval_tap $? 295 'AdminSyncOculusSubscriptions' test.out

#- 296 AdminGetIAPOrderLineItems
samples/cli/sample-apps Platform adminGetIAPOrderLineItems \
    --iapOrderNo 'JL5egX0V5ORBMj4J' \
    --namespace $AB_NAMESPACE \
    --userId 'q5k7Uvv4t0Orjp12' \
    > test.out 2>&1
eval_tap $? 296 'AdminGetIAPOrderLineItems' test.out

#- 297 AdminSyncSteamAbnormalTransaction
samples/cli/sample-apps Platform adminSyncSteamAbnormalTransaction \
    --namespace $AB_NAMESPACE \
    --userId 'sWZllkBU8iegQkR8' \
    > test.out 2>&1
eval_tap $? 297 'AdminSyncSteamAbnormalTransaction' test.out

#- 298 AdminSyncSteamIAPByTransaction
samples/cli/sample-apps Platform adminSyncSteamIAPByTransaction \
    --namespace $AB_NAMESPACE \
    --userId 'EnhWTdYVuZcCGSoI' \
    --body '{"orderId": "Mtu1obCvqLW9Y0tT"}' \
    > test.out 2>&1
eval_tap $? 298 'AdminSyncSteamIAPByTransaction' test.out

#- 299 QueryUserThirdPartySubscription
samples/cli/sample-apps Platform queryUserThirdPartySubscription \
    --namespace $AB_NAMESPACE \
    --userId 'VrB0M0HXWtuIEIx6' \
    --activeOnly 'false' \
    --groupId 'KOyVLvxlNusGhQTK' \
    --limit '39' \
    --offset '93' \
    --platform 'PLAYSTATION' \
    --productId 'QuztRfHklTs2ON4f' \
    > test.out 2>&1
eval_tap $? 299 'QueryUserThirdPartySubscription' test.out

#- 300 GetThirdPartyPlatformSubscriptionOwnershipByGroupId
samples/cli/sample-apps Platform getThirdPartyPlatformSubscriptionOwnershipByGroupId \
    --namespace $AB_NAMESPACE \
    --platform 'OCULUS' \
    --userId 'YcPJBJJGSXEcdGO6' \
    --groupId '35LWithBA86SxpTA' \
    > test.out 2>&1
eval_tap $? 300 'GetThirdPartyPlatformSubscriptionOwnershipByGroupId' test.out

#- 301 GetThirdPartyPlatformSubscriptionOwnershipByProductId
samples/cli/sample-apps Platform getThirdPartyPlatformSubscriptionOwnershipByProductId \
    --namespace $AB_NAMESPACE \
    --platform 'OCULUS' \
    --userId 'Cz1ymkSoaalt0U7Q' \
    --productId 'CvdiZF4cqNkSQzJ0' \
    > test.out 2>&1
eval_tap $? 301 'GetThirdPartyPlatformSubscriptionOwnershipByProductId' test.out

#- 302 QueryUserThirdPartySubscriptionTransactions
samples/cli/sample-apps Platform queryUserThirdPartySubscriptionTransactions \
    --namespace $AB_NAMESPACE \
    --userId 'wKi7Cjg9PWpC9zyM' \
    --activeOnly 'true' \
    --groupId 'PWoqQPBJiaNWQ0OB' \
    --limit '9' \
    --offset '75' \
    --platform 'EPICGAMES' \
    --productId '4f8JxNM3rpRAHAAE' \
    > test.out 2>&1
eval_tap $? 302 'QueryUserThirdPartySubscriptionTransactions' test.out

#- 303 GetThirdPartySubscriptionDetails
samples/cli/sample-apps Platform getThirdPartySubscriptionDetails \
    --id 'YHdAarh1FcysGEmT' \
    --namespace $AB_NAMESPACE \
    --userId 'ipzRQ2BhAeJOPl7W' \
    > test.out 2>&1
eval_tap $? 303 'GetThirdPartySubscriptionDetails' test.out

#- 304 GetSubscriptionHistory
samples/cli/sample-apps Platform getSubscriptionHistory \
    --id 'jpnW4ieKJkPMbnaL' \
    --namespace $AB_NAMESPACE \
    --userId 'EAM3dT2IHMuUwj1I' \
    --limit '88' \
    --offset '48' \
    > test.out 2>&1
eval_tap $? 304 'GetSubscriptionHistory' test.out

#- 305 SyncSubscriptionTransaction
samples/cli/sample-apps Platform syncSubscriptionTransaction \
    --id 'XNgw4yfu3Ltrs7iS' \
    --namespace $AB_NAMESPACE \
    --userId 'N5JVeLjxFKssWvXd' \
    > test.out 2>&1
eval_tap $? 305 'SyncSubscriptionTransaction' test.out

#- 306 GetThirdPartyUserSubscriptionDetails
samples/cli/sample-apps Platform getThirdPartyUserSubscriptionDetails \
    --id 'pRjn5eHH4hLrlfeN' \
    --namespace $AB_NAMESPACE \
    --userId 'DkvhzYA2F7WgvAtG' \
    > test.out 2>&1
eval_tap $? 306 'GetThirdPartyUserSubscriptionDetails' test.out

#- 307 SyncSubscription
samples/cli/sample-apps Platform syncSubscription \
    --id 'v9AQ3tylsBUVvios' \
    --namespace $AB_NAMESPACE \
    --userId '1p4P6d9KLKTYdkZm' \
    > test.out 2>&1
eval_tap $? 307 'SyncSubscription' test.out

#- 308 QueryUserOrders
samples/cli/sample-apps Platform queryUserOrders \
    --namespace $AB_NAMESPACE \
    --userId 'FBWqjR00C3bh1GQg' \
    --discounted 'false' \
    --itemId 'ruhkoHw30gKzMnpF' \
    --limit '87' \
    --offset '11' \
    --status 'REFUNDING' \
    > test.out 2>&1
eval_tap $? 308 'QueryUserOrders' test.out

#- 309 AdminCreateUserOrder
samples/cli/sample-apps Platform adminCreateUserOrder \
    --namespace $AB_NAMESPACE \
    --userId 'L59cto42AIX3KJte' \
    --body '{"currencyCode": "AhXBzrLAQ7HsUbPI", "currencyNamespace": "8MP1SBtMnIUdm87o", "discountCodes": ["bM83xOEO9v6sabH0", "Fls1ZGZqvChsO8pj", "BEPbMuACb6YMYwSO"], "discountedPrice": 37, "entitlementPlatform": "Steam", "ext": {"ufDz77jIfV0YxJDi": {}, "pJ8axqljIx6jMs67": {}, "F6olVtLq3nanHkoA": {}}, "itemId": "MkQMTn196vPETXtr", "language": "f8m3JvgwTL6Wa0AO", "options": {"skipPriceValidation": false}, "platform": "GooglePlay", "price": 96, "quantity": 34, "region": "QZidCCfyqJ4C1adD", "returnUrl": "xUxp2IQZUbvBgLm7", "sandbox": false, "sectionId": "RUotRGwCK3h2i8C6"}' \
    > test.out 2>&1
eval_tap $? 309 'AdminCreateUserOrder' test.out

#- 310 CountOfPurchasedItem
samples/cli/sample-apps Platform countOfPurchasedItem \
    --namespace $AB_NAMESPACE \
    --userId 'Q5mQmeTT3pxPcFK9' \
    --itemId 'bTdTqKjqjzMLC8m4' \
    > test.out 2>&1
eval_tap $? 310 'CountOfPurchasedItem' test.out

#- 311 GetUserOrder
samples/cli/sample-apps Platform getUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'pdTFmOfl9baBYatl' \
    --userId 'GftZmvJAVJmSCA1n' \
    > test.out 2>&1
eval_tap $? 311 'GetUserOrder' test.out

#- 312 UpdateUserOrderStatus
samples/cli/sample-apps Platform updateUserOrderStatus \
    --namespace $AB_NAMESPACE \
    --orderNo 'krvpCFY5tciaKaB7' \
    --userId 'rBpwwTNgENCHHIF3' \
    --body '{"status": "CHARGED", "statusReason": "KKD9YSFvYU4w6kNk"}' \
    > test.out 2>&1
eval_tap $? 312 'UpdateUserOrderStatus' test.out

#- 313 FulfillUserOrder
samples/cli/sample-apps Platform fulfillUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'bVTSJRTAhizwBSuj' \
    --userId 'h0AUvQlpBlLb3rrX' \
    > test.out 2>&1
eval_tap $? 313 'FulfillUserOrder' test.out

#- 314 GetUserOrderGrant
eval_tap 0 314 'GetUserOrderGrant # SKIP deprecated' test.out

#- 315 GetUserOrderHistories
samples/cli/sample-apps Platform getUserOrderHistories \
    --namespace $AB_NAMESPACE \
    --orderNo '9NiN82PV2DeNOWhR' \
    --userId 'TN1wRsMHBPjhNufG' \
    > test.out 2>&1
eval_tap $? 315 'GetUserOrderHistories' test.out

#- 316 ProcessUserOrderNotification
samples/cli/sample-apps Platform processUserOrderNotification \
    --namespace $AB_NAMESPACE \
    --orderNo 'tsuCYXtvNtGWuGxa' \
    --userId '36CC7qEbOdIqRxcs' \
    --body '{"additionalData": {"cardSummary": "jMEZxycHnCNdKIvF"}, "authorisedTime": "1975-05-05T00:00:00Z", "chargebackReversedTime": "1999-08-30T00:00:00Z", "chargebackTime": "1988-07-14T00:00:00Z", "chargedTime": "1978-11-30T00:00:00Z", "createdTime": "1981-05-16T00:00:00Z", "currency": {"currencyCode": "hBMAKFzC6PkYLQgg", "currencySymbol": "EUlsQ8ecBVktUYUi", "currencyType": "VIRTUAL", "decimals": 26, "namespace": "sGCQB5WqJe7RKJWz"}, "customParameters": {"7K47H4Hhc5HAOkyR": {}, "Jee7FZ946RXKtPM9": {}, "EeGxqpK83bPSucOT": {}}, "extOrderNo": "KfPIcX7qkZrqEhrH", "extTxId": "MCisjPWay9tyhBzZ", "extUserId": "GdVNqPKaD7gc3KS8", "issuedAt": "1978-01-05T00:00:00Z", "metadata": {"BPaHM9TkWW6J9mG7": "DhDFzgog1ptFC6z0", "IOiZouCKJE29WGpL": "Kt6S9AsQzH4zvUTC", "GI0QaBgH3ZLUi5Rn": "RACLWQyJDjdOyCdT"}, "namespace": "PCZ2D5km1rDnWxDu", "nonceStr": "tADZPmgkSqJUui2v", "paymentData": {"discountAmount": 45, "discountCode": "Bv7Ru1Vcw4vG0oDA", "subtotalPrice": 79, "tax": 22, "totalPrice": 74}, "paymentMethod": "8TU0i5JjrFHHGPC1", "paymentMethodFee": 55, "paymentOrderNo": "bCP3FXQF8ZlKbUBx", "paymentProvider": "NEONPAY", "paymentProviderFee": 79, "paymentStationUrl": "6HtfdKMfFXUYSkUn", "price": 84, "refundedTime": "1973-12-03T00:00:00Z", "salesTax": 90, "sandbox": true, "sku": "gbG1Bn9pYiWachF0", "status": "CHARGEBACK", "statusReason": "vOlbD92keO1N7o0z", "subscriptionId": "VXWVELMCbog0M2fQ", "subtotalPrice": 96, "targetNamespace": "EjqgBXSuml8BuNoR", "targetUserId": "Q4oeSbDHccHfxTIU", "tax": 85, "totalPrice": 86, "totalTax": 28, "txEndTime": "1990-02-01T00:00:00Z", "type": "wTeBc4PUlgPhOCqH", "userId": "6BGDHoYeJcQ1JZ63", "vat": 97}' \
    > test.out 2>&1
eval_tap $? 316 'ProcessUserOrderNotification' test.out

#- 317 DownloadUserOrderReceipt
samples/cli/sample-apps Platform downloadUserOrderReceipt \
    --namespace $AB_NAMESPACE \
    --orderNo 'qXPJfMWwgFEnHRP4' \
    --userId 'cx5IHlbZT25jc0qB' \
    > test.out 2>&1
eval_tap $? 317 'DownloadUserOrderReceipt' test.out

#- 318 CreateUserPaymentOrder
samples/cli/sample-apps Platform createUserPaymentOrder \
    --namespace $AB_NAMESPACE \
    --userId 'AqelvD0oyaHY0Ny3' \
    --body '{"currencyCode": "W5NcrgXyb6cjPTcM", "currencyNamespace": "HLQHIUBbNceXvaqq", "customParameters": {"MsnhzrmvryIdX2UU": {}, "gzYkDImy0JC9qjZu": {}, "ydJ5w90hI7NUGhCt": {}}, "description": "BsEJojh06AR9ieep", "extOrderNo": "S9L3VlxuUaG6gKTg", "extUserId": "o1fF5Oo71jgehAYQ", "itemType": "APP", "language": "ieaI-JIPa_Jg", "metadata": {"6DOFxj4QfvYzG38s": "u8KGN4GVlZ2uPxKg", "SHMCzyxXZffPP9Vc": "4VGhvBggbmb4EVh3", "2w1Po6KnZlf6Kcei": "4RHgecwXUvCPqzXr"}, "notifyUrl": "1LnB4NSK6cSS7tvx", "omitNotification": false, "platform": "KXBF7xdAiHr8iFcq", "price": 39, "recurringPaymentOrderNo": "oQeu81XRLz9HLL9t", "region": "yyY6KrU9s1GHhI0B", "returnUrl": "Rtbv1NWg0TrYvJOc", "sandbox": false, "sku": "EMCfgRc1VUeoKUbn", "subscriptionId": "4J8Jki6AmK59u66w", "title": "sKP0rnryr5bqSqYD"}' \
    > test.out 2>&1
eval_tap $? 318 'CreateUserPaymentOrder' test.out

#- 319 RefundUserPaymentOrder
samples/cli/sample-apps Platform refundUserPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'jhExVzQtZMjBP1cP' \
    --userId 'Nwd3PyRqCNqCDcAl' \
    --body '{"description": "PbhjkqyydEWpUkwL"}' \
    > test.out 2>&1
eval_tap $? 319 'RefundUserPaymentOrder' test.out

#- 320 GetUserPlatformAccountClosureHistories
samples/cli/sample-apps Platform getUserPlatformAccountClosureHistories \
    --namespace $AB_NAMESPACE \
    --userId 'CCPW0x2bzP2xFuEQ' \
    > test.out 2>&1
eval_tap $? 320 'GetUserPlatformAccountClosureHistories' test.out

#- 321 ApplyUserRedemption
samples/cli/sample-apps Platform applyUserRedemption \
    --namespace $AB_NAMESPACE \
    --userId 'RdW2wb4Jep7Y2VCO' \
    --body '{"code": "d8MbuZLzzu8guZKO", "orderNo": "oBvyGahKG1jv2NYg"}' \
    > test.out 2>&1
eval_tap $? 321 'ApplyUserRedemption' test.out

#- 322 DoRevocation
samples/cli/sample-apps Platform doRevocation \
    --namespace $AB_NAMESPACE \
    --userId 'JuQ1KbrxzV6M4BzX' \
    --body '{"meta": {"5VVFvenybjE8CaIi": {}, "PqmQ0vAiPwVxGeqQ": {}, "ZkOK36xPE0xQ1jJ4": {}}, "reason": "IflvQ3CsdRaiMXeX", "requestId": "tvDVwMkqjOWAVbXp", "revokeEntries": [{"currency": {"balanceOrigin": "IOS", "currencyCode": "O76vnz19jQ2uqBaG", "namespace": "wdZ3uA9KkhXKTn05"}, "entitlement": {"entitlementId": "YSL2CO5jkiFdYeDj"}, "item": {"entitlementOrigin": "GooglePlay", "itemIdentity": "1Jc3Iu6hagSnKCBs", "itemIdentityType": "ITEM_ID", "origin": "Other"}, "quantity": 34, "type": "ITEM"}, {"currency": {"balanceOrigin": "GooglePlay", "currencyCode": "qDu5KZJTCdu7gXTg", "namespace": "PvfYWl8b5mDVQO9W"}, "entitlement": {"entitlementId": "8i0dx8Pg3LkeQfhU"}, "item": {"entitlementOrigin": "Nintendo", "itemIdentity": "0jCCQzRSqkCv2ALG", "itemIdentityType": "ITEM_ID", "origin": "GooglePlay"}, "quantity": 28, "type": "ITEM"}, {"currency": {"balanceOrigin": "Oculus", "currencyCode": "SLTjSe2AuRs4Zmgl", "namespace": "V7g1GeCHfwA9cGth"}, "entitlement": {"entitlementId": "O9QyUh6g3nuicSz7"}, "item": {"entitlementOrigin": "Playstation", "itemIdentity": "8LkCFKHxYI7ud5iq", "itemIdentityType": "ITEM_ID", "origin": "Twitch"}, "quantity": 34, "type": "CURRENCY"}], "source": "DLC", "transactionId": "jwCKG6Lnz4P1Pgmy"}' \
    > test.out 2>&1
eval_tap $? 322 'DoRevocation' test.out

#- 323 RegisterXblSessions
samples/cli/sample-apps Platform registerXblSessions \
    --namespace $AB_NAMESPACE \
    --userId '6oM5DX9N5y8a3kHC' \
    --body '{"gameSessionId": "euzjBlXUb4izaNsi", "payload": {"PG3y7RIfAg5eBNLW": {}, "qPm1weggW37ludzn": {}, "rErHeF2POZ12GNTd": {}}, "scid": "DBqZLr9Kjr9if0sK", "sessionTemplateName": "IxF0VCPQN7vsIPSE"}' \
    > test.out 2>&1
eval_tap $? 323 'RegisterXblSessions' test.out

#- 324 QueryUserSubscriptions
samples/cli/sample-apps Platform queryUserSubscriptions \
    --namespace $AB_NAMESPACE \
    --userId 'C8XMLP2KCabxPzUL' \
    --chargeStatus 'NEVER' \
    --itemId 'FHqAW0jqGaMUUNUH' \
    --limit '24' \
    --offset '10' \
    --sku 'K8Gs8Y5GdNpnY6Mv' \
    --status 'EXPIRED' \
    --subscribedBy 'PLATFORM' \
    > test.out 2>&1
eval_tap $? 324 'QueryUserSubscriptions' test.out

#- 325 GetUserSubscriptionActivities
samples/cli/sample-apps Platform getUserSubscriptionActivities \
    --namespace $AB_NAMESPACE \
    --userId 'Z8NwEDOxaJ8syMF3' \
    --excludeSystem 'false' \
    --limit '92' \
    --offset '24' \
    --subscriptionId 'Cj97LwcLebiESErb' \
    > test.out 2>&1
eval_tap $? 325 'GetUserSubscriptionActivities' test.out

#- 326 PlatformSubscribeSubscription
samples/cli/sample-apps Platform platformSubscribeSubscription \
    --namespace $AB_NAMESPACE \
    --userId 'JMKlZiXqVvS6LNfJ' \
    --body '{"grantDays": 37, "itemId": "PJPy3cv2KNUNAUDB", "language": "HkxfxmGrBjWflQOK", "reason": "Llj3aoFccntgp92K", "region": "xh2XWCyM6FPwVNUc", "source": "znvEknc6w5VIdkvy"}' \
    > test.out 2>&1
eval_tap $? 326 'PlatformSubscribeSubscription' test.out

#- 327 CheckUserSubscriptionSubscribableByItemId
samples/cli/sample-apps Platform checkUserSubscriptionSubscribableByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'EGbrkRWRpT4NR27c' \
    --itemId '4GK6FtrhuRYTVaoW' \
    > test.out 2>&1
eval_tap $? 327 'CheckUserSubscriptionSubscribableByItemId' test.out

#- 328 GetUserSubscription
samples/cli/sample-apps Platform getUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'HimBjn5CEb0IIOc9' \
    --userId 'L7qZHzruozevQmW1' \
    > test.out 2>&1
eval_tap $? 328 'GetUserSubscription' test.out

#- 329 DeleteUserSubscription
samples/cli/sample-apps Platform deleteUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'V5jLjcOyFZBns7jE' \
    --userId '4bFQYBoEurMj5nd2' \
    > test.out 2>&1
eval_tap $? 329 'DeleteUserSubscription' test.out

#- 330 CancelSubscription
samples/cli/sample-apps Platform cancelSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId '3fP1XHK6WI5tiXOg' \
    --userId 'MRB3RqkFYR5GKt9w' \
    --force 'false' \
    --body '{"immediate": false, "reason": "SMvE3wdUn7C2G4l3"}' \
    > test.out 2>&1
eval_tap $? 330 'CancelSubscription' test.out

#- 331 GrantDaysToSubscription
samples/cli/sample-apps Platform grantDaysToSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'G68qCRAcZRiU9PUs' \
    --userId 'c1esprRcMkzQrsDK' \
    --body '{"grantDays": 30, "reason": "MaKLSy0cwD8tiDUl"}' \
    > test.out 2>&1
eval_tap $? 331 'GrantDaysToSubscription' test.out

#- 332 GetUserSubscriptionBillingHistories
samples/cli/sample-apps Platform getUserSubscriptionBillingHistories \
    --namespace $AB_NAMESPACE \
    --subscriptionId '9RWr4ZJBQuPAzWPv' \
    --userId 'U7sZecixSp6q4JWj' \
    --excludeFree 'true' \
    --limit '66' \
    --offset '27' \
    > test.out 2>&1
eval_tap $? 332 'GetUserSubscriptionBillingHistories' test.out

#- 333 ProcessUserSubscriptionNotification
samples/cli/sample-apps Platform processUserSubscriptionNotification \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'zLoBW6wdbIWeBJ3S' \
    --userId '5FPRTfKsSzS3Txyw' \
    --body '{"additionalData": {"cardSummary": "CSBUfeDXrOzbUTnX"}, "authorisedTime": "1975-01-09T00:00:00Z", "chargebackReversedTime": "1972-10-07T00:00:00Z", "chargebackTime": "1976-03-04T00:00:00Z", "chargedTime": "1975-12-13T00:00:00Z", "createdTime": "1978-06-24T00:00:00Z", "currency": {"currencyCode": "ujwZJH0Dky1EfEPa", "currencySymbol": "HXyTDQ0k1fjpYbhQ", "currencyType": "REAL", "decimals": 76, "namespace": "MeS3HS8Ksj4jr4aJ"}, "customParameters": {"XGMZGb3dm4kw5i1Y": {}, "V7m1cNU4TyDmupiA": {}, "LBWNxHSFC6nuuZx7": {}}, "extOrderNo": "ed6Cw0BhTXrw0fBf", "extTxId": "dGWe1cmKSLnaVTCT", "extUserId": "JYuH2KTLpFJrWuXv", "issuedAt": "1989-10-24T00:00:00Z", "metadata": {"f6EU02nLPxMQZtQf": "Fuu2vsx6OeslJbf7", "oZRZqnD1uZCQhPoL": "NQSUcprb20XR5fhz", "QtFZ5m73PyoPJ2Gx": "VzLrbtXWUzT2AzpY"}, "namespace": "UYq32kCvNo8DowXa", "nonceStr": "tEZSDwF8BNt92LMG", "paymentData": {"discountAmount": 44, "discountCode": "jMj8M3UuiaNV08Kd", "subtotalPrice": 12, "tax": 10, "totalPrice": 70}, "paymentMethod": "hM3d0DAQWBWZ3F5k", "paymentMethodFee": 68, "paymentOrderNo": "6p28JBhYLhZ4ElME", "paymentProvider": "WXPAY", "paymentProviderFee": 95, "paymentStationUrl": "ew9ejFax5rcCKmUR", "price": 7, "refundedTime": "1983-05-15T00:00:00Z", "salesTax": 46, "sandbox": false, "sku": "t8prL48nPbvkxyED", "status": "CHARGED", "statusReason": "2Atx4ulSpfaqnvVZ", "subscriptionId": "VZzp29OTOqmssXpQ", "subtotalPrice": 0, "targetNamespace": "GJs48OrgTZcANt4j", "targetUserId": "lGkQxrZBfgDEKGlQ", "tax": 33, "totalPrice": 39, "totalTax": 38, "txEndTime": "1971-11-05T00:00:00Z", "type": "b8gUtb7IVw9JvpPu", "userId": "jnwOhCJcNYmT0cs6", "vat": 82}' \
    > test.out 2>&1
eval_tap $? 333 'ProcessUserSubscriptionNotification' test.out

#- 334 AcquireUserTicket
samples/cli/sample-apps Platform acquireUserTicket \
    --boothName '634sE2edwVhyxyVn' \
    --namespace $AB_NAMESPACE \
    --userId '7LVXfse6tg54JzPs' \
    --body '{"count": 79, "orderNo": "vY52dD8ahjfQET9j"}' \
    > test.out 2>&1
eval_tap $? 334 'AcquireUserTicket' test.out

#- 335 QueryUserCurrencyWallets
samples/cli/sample-apps Platform queryUserCurrencyWallets \
    --namespace $AB_NAMESPACE \
    --userId 'YEPEv2WX05MSQ137' \
    > test.out 2>&1
eval_tap $? 335 'QueryUserCurrencyWallets' test.out

#- 336 DebitUserWalletByCurrencyCode
samples/cli/sample-apps Platform debitUserWalletByCurrencyCode \
    --currencyCode '0nCg1Vb1NIrTgiZP' \
    --namespace $AB_NAMESPACE \
    --userId 'DwhP4Ob396UKl3Jv' \
    --body '{"allowOverdraft": false, "amount": 18, "balanceOrigin": "GooglePlay", "balanceSource": "TRADE", "metadata": {"A91tVA0cgPs2zo9d": {}, "A8lEDmtUAGouZPrU": {}, "H08YdUXA1hDvRMgL": {}}, "reason": "HfmAXSLQQ1Wj46ec"}' \
    > test.out 2>&1
eval_tap $? 336 'DebitUserWalletByCurrencyCode' test.out

#- 337 ListUserCurrencyTransactions
samples/cli/sample-apps Platform listUserCurrencyTransactions \
    --currencyCode 'LNd0ofoSddmlNgXR' \
    --namespace $AB_NAMESPACE \
    --userId 'pKazHuNkCzbboyQW' \
    --limit '16' \
    --offset '95' \
    > test.out 2>&1
eval_tap $? 337 'ListUserCurrencyTransactions' test.out

#- 338 CheckBalance
samples/cli/sample-apps Platform checkBalance \
    --currencyCode '8HvMZaxd4IJGcD76' \
    --namespace $AB_NAMESPACE \
    --userId 'pxRIJqWAeskgun5F' \
    --request '{"amount": 15, "debitBalanceSource": "OTHER", "metadata": {"kun87y4SOXI2hXjK": {}, "CUXX3hSvMpNdSMiq": {}, "g6g1Cfsr7Tqqw5AN": {}}, "reason": "iNx3bRFdzxyFJUTg", "walletPlatform": "IOS"}' \
    > test.out 2>&1
eval_tap $? 338 'CheckBalance' test.out

#- 339 CheckWallet
eval_tap 0 339 'CheckWallet # SKIP deprecated' test.out

#- 340 CreditUserWallet
samples/cli/sample-apps Platform creditUserWallet \
    --currencyCode 's1vbNPW6vK138h2K' \
    --namespace $AB_NAMESPACE \
    --userId 'YQihZHQ7FAbh6147' \
    --body '{"amount": 41, "expireAt": "1971-07-27T00:00:00Z", "metadata": {"uYVxTd7cZrv3QpJc": {}, "J3pxZojA4mlNksb0": {}, "kalAGFrPS9MPkRfL": {}}, "origin": "Twitch", "reason": "nY8DDjj9zxPqBq3g", "source": "IAP"}' \
    > test.out 2>&1
eval_tap $? 340 'CreditUserWallet' test.out

#- 341 DebitByWalletPlatform
samples/cli/sample-apps Platform debitByWalletPlatform \
    --currencyCode 't46KgiuFITsdlZbq' \
    --namespace $AB_NAMESPACE \
    --userId 'T7i12LjvSJxZ7tp1' \
    --request '{"amount": 83, "debitBalanceSource": "DLC_REVOCATION", "metadata": {"QzgcdZ1y7HSqhmn2": {}, "ygPmgaC0JyezOgfP": {}, "vq5CH2LwF7j27ZJu": {}}, "reason": "4WEguyZqyJO5lXi4", "walletPlatform": "Nintendo"}' \
    > test.out 2>&1
eval_tap $? 341 'DebitByWalletPlatform' test.out

#- 342 PayWithUserWallet
samples/cli/sample-apps Platform payWithUserWallet \
    --currencyCode '7ASQ8tmVMoALZ1kd' \
    --namespace $AB_NAMESPACE \
    --userId 'hW5m06XEv3HwdK7G' \
    --body '{"amount": 32, "metadata": {"waCl8NHgzpBMQaxn": {}, "XeADbLGqi0kIurio": {}, "5yALOZBy7sShHqnc": {}}, "walletPlatform": "Other"}' \
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
    --storeId '7ON9WxVVoW5J3wJN' \
    > test.out 2>&1
eval_tap $? 348 'ListViews' test.out

#- 349 CreateView
samples/cli/sample-apps Platform createView \
    --namespace $AB_NAMESPACE \
    --storeId '46StS3l3JTJVJ0qc' \
    --body '{"displayOrder": 37, "localizations": {"tDXbpewq9zhMbpjq": {"description": "ERS3LkUy6U4kdWss", "localExt": {"YUKokn17Eht3MUIj": {}, "INDLizVXStDGDdG6": {}, "tjn9zWl8TErXeMS9": {}}, "longDescription": "9kIrGGDF2VVSOfKF", "title": "JmaWSweBZUhdBSiC"}, "FeSwIAl80gBoT6Yj": {"description": "M5IM4sSBinIRUe1l", "localExt": {"L846DYVCIOecUUdB": {}, "usbxQU1VvIQFdsXH": {}, "EN5rtAIjAHSNMaVA": {}}, "longDescription": "AbjLnZVajji9NoGw", "title": "zQ4WMCQHzBYcjL5T"}, "NzyqYmazhNsLbDin": {"description": "muJOStBJvCIaMVFq", "localExt": {"CpvOVMTMlTZh5KDC": {}, "vfKwdHsSlKn5DPbJ": {}, "jTBXt83951UjDpWk": {}}, "longDescription": "5nafL1MPRtOl3tKM", "title": "JYNedztH4KsRz2ck"}}, "name": "XNCtiWoePX6OqWQq"}' \
    > test.out 2>&1
eval_tap $? 349 'CreateView' test.out

#- 350 GetView
samples/cli/sample-apps Platform getView \
    --namespace $AB_NAMESPACE \
    --viewId '34iIU4LABhlkJUF2' \
    --storeId 'PgcHshLAlhbVRMPm' \
    > test.out 2>&1
eval_tap $? 350 'GetView' test.out

#- 351 UpdateView
samples/cli/sample-apps Platform updateView \
    --namespace $AB_NAMESPACE \
    --viewId 'a0hEouCDZfpNOioB' \
    --storeId '0G8n4C4d0HihZSed' \
    --body '{"displayOrder": 22, "localizations": {"8IpzpHdv1T8GlBJX": {"description": "MakWdBxMFWLjpzzt", "localExt": {"hJ1Cv9FZ1YCrryY2": {}, "RSoYGTQ0yeioFqXj": {}, "OnLLgPIzZveg7dKv": {}}, "longDescription": "M2U0hAL2Kx8o3GVM", "title": "wYgE3pNHWXSwUh3a"}, "AavGYSM2daWZW9MO": {"description": "LGtErV5eurbhgBf6", "localExt": {"2DcbKnKc0V61Wpcr": {}, "LNhaNjv3wS6iQCAb": {}, "YynhXTxmEHSsPagR": {}}, "longDescription": "Bx2zflPCHseNLEP0", "title": "xMoENpbLmUIbiPUI"}, "ovLAGiSeMpsNEFBn": {"description": "BwWRZDMgrEUo2bsy", "localExt": {"AbvUUZfAEzJ3LtrE": {}, "tus0RehzsypAk9jL": {}, "sd9eGcu2Cd4iyAw0": {}}, "longDescription": "fuNAM42EBhUEZF6S", "title": "7ET7xwQ2lKqKiBKs"}}, "name": "jQHTXx0kNtN76VF7"}' \
    > test.out 2>&1
eval_tap $? 351 'UpdateView' test.out

#- 352 DeleteView
samples/cli/sample-apps Platform deleteView \
    --namespace $AB_NAMESPACE \
    --viewId 'oekxbnCPy39yoKlE' \
    --storeId 'a8mU03oVVKypD78c' \
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
    --body '{"enablePaidForVCExpiration": true}' \
    > test.out 2>&1
eval_tap $? 354 'UpdateWalletConfig' test.out

#- 355 QueryWallets
eval_tap 0 355 'QueryWallets # SKIP deprecated' test.out

#- 356 BulkCredit
samples/cli/sample-apps Platform bulkCredit \
    --namespace $AB_NAMESPACE \
    --body '[{"creditRequest": {"amount": 94, "expireAt": "1971-09-11T00:00:00Z", "metadata": {"psbe7P3yaHPoGYRe": {}, "vr4JQ9xFESftEIXn": {}, "49ehGTPMmtv46Lpb": {}}, "origin": "Other", "reason": "J54ydpLDIoD92SC2", "source": "DLC"}, "currencyCode": "X5Db1cBKhOvcToAk", "userIds": ["cQyEHsPVx3TEawcv", "xY0q6Nmz65gSKhKq", "bBGA5en1oETS8ZWP"]}, {"creditRequest": {"amount": 25, "expireAt": "1994-08-12T00:00:00Z", "metadata": {"VvWtdbsem0v5qewx": {}, "bvYbEAvTbcvY4O15": {}, "U1XTatpuaGKul6JG": {}}, "origin": "Xbox", "reason": "UZj6gup4rNpakpUY", "source": "REFUND"}, "currencyCode": "HnYjcxzQGBP2ibCq", "userIds": ["l8GvgliX4k1HzTRK", "dDOYGlv7HcVT1GQs", "OsWFe3YeuWGVHnxb"]}, {"creditRequest": {"amount": 21, "expireAt": "1995-07-22T00:00:00Z", "metadata": {"5bQRszTQv1JrO2Xx": {}, "IkidInab1sx8EGBh": {}, "mEdZ3AApVDgd05yV": {}}, "origin": "Epic", "reason": "bbwWRF82i2dc70zz", "source": "PROMOTION"}, "currencyCode": "f4pMDAUrAoGDcboB", "userIds": ["ju8YvdiKQHDRDKPs", "y4oCKI7DqndfHSqn", "BQoeYIPFYyWcrywz"]}]' \
    > test.out 2>&1
eval_tap $? 356 'BulkCredit' test.out

#- 357 BulkDebit
samples/cli/sample-apps Platform bulkDebit \
    --namespace $AB_NAMESPACE \
    --body '[{"currencyCode": "oP2A6abo8ceGf0Kj", "request": {"allowOverdraft": true, "amount": 87, "balanceOrigin": "Nintendo", "balanceSource": "OTHER", "metadata": {"mEtAzSYEFMIOu19t": {}, "OBLfPKBfWOYCsQx1": {}, "seordjIDgfNmHjy7": {}}, "reason": "PxSLPdCq0A6Rdukn"}, "userIds": ["HaHoWpKxNDGhr52A", "hZexWXoVq4DshF9R", "UcfVXKwY4RrZJXsd"]}, {"currencyCode": "LaSoQByilS170Qb8", "request": {"allowOverdraft": false, "amount": 11, "balanceOrigin": "Nintendo", "balanceSource": "IAP_REVOCATION", "metadata": {"PsJQldSZDeOvG3WC": {}, "a4YR1pdcmgkTWY4w": {}, "Ojv5ewfWjfTpwUn8": {}}, "reason": "iLPGs6WU4S1AUUhQ"}, "userIds": ["z0jgvou9pZrF4j7x", "B4sL8WWAmtmm9QJq", "gUDwGKi8ZkvdJ1rM"]}, {"currencyCode": "J0HOHcpNDXs0vWmU", "request": {"allowOverdraft": false, "amount": 26, "balanceOrigin": "Nintendo", "balanceSource": "IAP_REVOCATION", "metadata": {"WvqFjeKmsYkF9Ksj": {}, "7NCJsKLN1NRk9al4": {}, "iMHlI6QEDVhU0yiW": {}}, "reason": "4jV0qVJonmX2lavZ"}, "userIds": ["INX3uCzeQdal5Nxw", "5BUZIUUna6N22g3p", "WBAy4vUZ7phexOjw"]}]' \
    > test.out 2>&1
eval_tap $? 357 'BulkDebit' test.out

#- 358 GetWallet
eval_tap 0 358 'GetWallet # SKIP deprecated' test.out

#- 359 SyncOrders
samples/cli/sample-apps Platform syncOrders \
    --nextEvaluatedKey '6TLZWW9TnG3O7yYH' \
    --end '1Om59NqHluLBsfv2' \
    --start '8nHP4ue3Ng751iqF' \
    > test.out 2>&1
eval_tap $? 359 'SyncOrders' test.out

#- 360 TestAdyenConfig
samples/cli/sample-apps Platform testAdyenConfig \
    --sandbox 'true' \
    --body '{"allowedPaymentMethods": ["0ubJ6l9A2PYtyaqI", "GDyMHW7uwvKP58nZ", "a6kqmVjEakyvgH1A"], "apiKey": "CVBpPaFHjGWodNjd", "authoriseAsCapture": false, "blockedPaymentMethods": ["DIdnVNzpC6LTxaN5", "gsBbA3Kg6i26TFRn", "rQ7hGS3PQUFNf07P"], "clientKey": "hbEWwvGxvgJI4iMg", "dropInSettings": "Dl4ONZ1iv2ovjnh7", "liveEndpointUrlPrefix": "p30tOLtCLoj3fPzu", "merchantAccount": "14qLeQRntsz6YR0M", "notificationHmacKey": "6zd759rRjuKSIFfB", "notificationPassword": "NLNOuWpKB4FxLB3Y", "notificationUsername": "m6gN0GN0w3I0FIF0", "returnUrl": "xpvKfDPecXFA8ETV", "settings": "fqWYHJAMHDS1LYdR"}' \
    > test.out 2>&1
eval_tap $? 360 'TestAdyenConfig' test.out

#- 361 TestAliPayConfig
samples/cli/sample-apps Platform testAliPayConfig \
    --sandbox 'true' \
    --body '{"appId": "ZMZhFzKRrVo8YpvY", "privateKey": "tfPz8V9JCDTHshOq", "publicKey": "WwnhqDwbAUejTYp0", "returnUrl": "dR1BM285XiHltOPw"}' \
    > test.out 2>&1
eval_tap $? 361 'TestAliPayConfig' test.out

#- 362 TestCheckoutConfig
samples/cli/sample-apps Platform testCheckoutConfig \
    --sandbox 'false' \
    --body '{"publicKey": "mdmcjTLQf7qVi1e2", "secretKey": "wMjcGF1CbXzFGgHe"}' \
    > test.out 2>&1
eval_tap $? 362 'TestCheckoutConfig' test.out

#- 363 DebugMatchedPaymentMerchantConfig
samples/cli/sample-apps Platform debugMatchedPaymentMerchantConfig \
    --namespace 'gP0ejL1IKfUMqEFO' \
    --region 'ihWVGBzMV6oZsfPc' \
    > test.out 2>&1
eval_tap $? 363 'DebugMatchedPaymentMerchantConfig' test.out

#- 364 TestNeonPayConfig
samples/cli/sample-apps Platform testNeonPayConfig \
    --sandbox 'false' \
    --body '{"apiKey": "O8R1NU5jWnEKSaqF", "webhookSecretKey": "Xif0OIN7ixSdIynO"}' \
    > test.out 2>&1
eval_tap $? 364 'TestNeonPayConfig' test.out

#- 365 TestPayPalConfig
samples/cli/sample-apps Platform testPayPalConfig \
    --sandbox 'false' \
    --body '{"clientID": "vdLb8kGgBoROVKj1", "clientSecret": "RJJnubDSChgwasdb", "returnUrl": "lQDt4a0MqkF0aqW4", "webHookId": "SIRVfG0TbxKlOwgj"}' \
    > test.out 2>&1
eval_tap $? 365 'TestPayPalConfig' test.out

#- 366 TestStripeConfig
samples/cli/sample-apps Platform testStripeConfig \
    --sandbox 'false' \
    --body '{"allowedPaymentMethodTypes": ["nD26c3saNEBfeBS0", "C8D58DqEV0UFAePR", "oSAMLOAtixXdQlk1"], "publishableKey": "4dyG0UgY4g0N3COx", "secretKey": "P1p7XpkD63WktRI8", "webhookSecret": "VlCkx5eqBaiHFo4L"}' \
    > test.out 2>&1
eval_tap $? 366 'TestStripeConfig' test.out

#- 367 TestWxPayConfig
samples/cli/sample-apps Platform testWxPayConfig \
    --body '{"appId": "yMNkDp1vEsgIGxHZ", "key": "WRm3vzRa0iX57yxO", "mchid": "mwNMWzWPqD2OgPu3", "returnUrl": "vRfkKUPTFHYF8OCl"}' \
    > test.out 2>&1
eval_tap $? 367 'TestWxPayConfig' test.out

#- 368 TestXsollaConfig
samples/cli/sample-apps Platform testXsollaConfig \
    --body '{"apiKey": "1YFB6zQMibtkShhH", "flowCompletionUrl": "H43tZXq0cA0gHyaA", "merchantId": 93, "projectId": 8, "projectSecretKey": "QTLYuVU6HiPys871"}' \
    > test.out 2>&1
eval_tap $? 368 'TestXsollaConfig' test.out

#- 369 GetPaymentMerchantConfig1
samples/cli/sample-apps Platform getPaymentMerchantConfig1 \
    --id 'z9yrYCDLJrnieFQ1' \
    > test.out 2>&1
eval_tap $? 369 'GetPaymentMerchantConfig1' test.out

#- 370 UpdateAdyenConfig
samples/cli/sample-apps Platform updateAdyenConfig \
    --id '3rj49IYmf3gPQ81o' \
    --sandbox 'true' \
    --validate 'true' \
    --body '{"allowedPaymentMethods": ["JtXHX7B55GBIyRhf", "vsnJW1GdMJKqKljJ", "1387ZveZjHTvixtD"], "apiKey": "VbfVa7pALjilnDcK", "authoriseAsCapture": false, "blockedPaymentMethods": ["PQvI6pv6kOHnWAAe", "QnLNaTJPINj0WkRj", "MMO19w1GIHXkEfft"], "clientKey": "HOLdGwuh9uQYS7ao", "dropInSettings": "MJ8CMNV1GbsQYTw7", "liveEndpointUrlPrefix": "OXdhiXTb1h6QuMhI", "merchantAccount": "6yOilS3aU2gAguYy", "notificationHmacKey": "VIaM8xjZkZPvza8n", "notificationPassword": "z9k8EwehSzCbeveA", "notificationUsername": "Co9WysIfCEYXkKzU", "returnUrl": "DIlug5AketGIphov", "settings": "AOzRlmpmCODnElRk"}' \
    > test.out 2>&1
eval_tap $? 370 'UpdateAdyenConfig' test.out

#- 371 TestAdyenConfigById
samples/cli/sample-apps Platform testAdyenConfigById \
    --id 'ppuMYb5uNDpjsar1' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 371 'TestAdyenConfigById' test.out

#- 372 UpdateAliPayConfig
samples/cli/sample-apps Platform updateAliPayConfig \
    --id 'byv4DgYzdZAy8hdm' \
    --sandbox 'false' \
    --validate 'true' \
    --body '{"appId": "7NHorZp0odoYXvf0", "privateKey": "3xAQDmAAsFbZfxza", "publicKey": "rARVSTdvMxARTg3l", "returnUrl": "nlrbLThl19JBljKG"}' \
    > test.out 2>&1
eval_tap $? 372 'UpdateAliPayConfig' test.out

#- 373 TestAliPayConfigById
samples/cli/sample-apps Platform testAliPayConfigById \
    --id 'XVxrhnnFHi9NTVW3' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 373 'TestAliPayConfigById' test.out

#- 374 UpdateCheckoutConfig
samples/cli/sample-apps Platform updateCheckoutConfig \
    --id 'p7FwXXgQRVgTayTF' \
    --sandbox 'true' \
    --validate 'true' \
    --body '{"publicKey": "WVEzYKGt9VObs40A", "secretKey": "G4iIEBC2uoMlwFWH"}' \
    > test.out 2>&1
eval_tap $? 374 'UpdateCheckoutConfig' test.out

#- 375 TestCheckoutConfigById
samples/cli/sample-apps Platform testCheckoutConfigById \
    --id 'DHRvFbkH824ECVHE' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 375 'TestCheckoutConfigById' test.out

#- 376 UpdateNeonPayConfig
samples/cli/sample-apps Platform updateNeonPayConfig \
    --id 'VuIkLyxCisBLRbkA' \
    --sandbox 'true' \
    --validate 'true' \
    --body '{"apiKey": "QFwCgyiA7NWGk6Va", "webhookSecretKey": "SUU1acgezoNdbJzd"}' \
    > test.out 2>&1
eval_tap $? 376 'UpdateNeonPayConfig' test.out

#- 377 TestNeonPayConfigById
samples/cli/sample-apps Platform testNeonPayConfigById \
    --id 'isnjH32rIAwxwE5U' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 377 'TestNeonPayConfigById' test.out

#- 378 UpdatePayPalConfig
samples/cli/sample-apps Platform updatePayPalConfig \
    --id 'rFxqjF4e0bs42YSp' \
    --sandbox 'true' \
    --validate 'true' \
    --body '{"clientID": "nJvjirFLzEXEBgtr", "clientSecret": "GvCq6R51kubaD6xI", "returnUrl": "USj1rYDWWS5SoSxL", "webHookId": "ozXRWPtClQVImsCA"}' \
    > test.out 2>&1
eval_tap $? 378 'UpdatePayPalConfig' test.out

#- 379 TestPayPalConfigById
samples/cli/sample-apps Platform testPayPalConfigById \
    --id '0K0jR1zaQeUhb4Bw' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 379 'TestPayPalConfigById' test.out

#- 380 UpdateStripeConfig
samples/cli/sample-apps Platform updateStripeConfig \
    --id '86V7ADEzXqIOdQsK' \
    --sandbox 'false' \
    --validate 'true' \
    --body '{"allowedPaymentMethodTypes": ["9XXyms1y3VJR3GJp", "wfrxuXctYRQXF6hS", "DtTAt03qJLiw61Ry"], "publishableKey": "j02Xvq7wJEHi0QhE", "secretKey": "x4GmaAyDSbngmtpt", "webhookSecret": "Aetx1cCcCTrCdULY"}' \
    > test.out 2>&1
eval_tap $? 380 'UpdateStripeConfig' test.out

#- 381 TestStripeConfigById
samples/cli/sample-apps Platform testStripeConfigById \
    --id 'nERTNhxtIhtkYw1h' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 381 'TestStripeConfigById' test.out

#- 382 UpdateWxPayConfig
samples/cli/sample-apps Platform updateWxPayConfig \
    --id '2MkZ3YQs8NDx7mgB' \
    --validate 'true' \
    --body '{"appId": "khK72NcoMbXgfnjC", "key": "sxyV9sOsJSZkR6MU", "mchid": "qB71EUAq3ZJBnWnZ", "returnUrl": "X4A3G9kk7I1GXRU5"}' \
    > test.out 2>&1
eval_tap $? 382 'UpdateWxPayConfig' test.out

#- 383 UpdateWxPayConfigCert
samples/cli/sample-apps Platform updateWxPayConfigCert \
    --id 'WLLQRaXLhQX8sOr4' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 383 'UpdateWxPayConfigCert' test.out

#- 384 TestWxPayConfigById
samples/cli/sample-apps Platform testWxPayConfigById \
    --id '5aTNCAnbQS5Y406J' \
    > test.out 2>&1
eval_tap $? 384 'TestWxPayConfigById' test.out

#- 385 UpdateXsollaConfig
samples/cli/sample-apps Platform updateXsollaConfig \
    --id 'AUgBS1YIZ631xBGq' \
    --validate 'true' \
    --body '{"apiKey": "vg0Gl3trFrE0wlci", "flowCompletionUrl": "8GTUn91uFcfVHRaG", "merchantId": 69, "projectId": 62, "projectSecretKey": "RrfEEhHpdzbU4OW7"}' \
    > test.out 2>&1
eval_tap $? 385 'UpdateXsollaConfig' test.out

#- 386 TestXsollaConfigById
samples/cli/sample-apps Platform testXsollaConfigById \
    --id 'oaXThb9PNsNrHlkz' \
    > test.out 2>&1
eval_tap $? 386 'TestXsollaConfigById' test.out

#- 387 UpdateXsollaUIConfig
samples/cli/sample-apps Platform updateXsollaUIConfig \
    --id 'ZrMWQzQmkAQtKbeD' \
    --body '{"device": "MOBILE", "showCloseButton": true, "size": "MEDIUM", "theme": "DEFAULT_DARK"}' \
    > test.out 2>&1
eval_tap $? 387 'UpdateXsollaUIConfig' test.out

#- 388 QueryPaymentProviderConfig
samples/cli/sample-apps Platform queryPaymentProviderConfig \
    --limit '21' \
    --namespace 'ttnRWX2RdvW2NPI5' \
    --offset '66' \
    --region 'FziLppEDED5L1KM6' \
    > test.out 2>&1
eval_tap $? 388 'QueryPaymentProviderConfig' test.out

#- 389 CreatePaymentProviderConfig
samples/cli/sample-apps Platform createPaymentProviderConfig \
    --body '{"aggregate": "CHECKOUT", "namespace": "pBIZLGCJ1fbb9z7r", "region": "IbMImysafNpyT8AM", "sandboxTaxJarApiToken": "jZbD5II5FeRDcAM1", "specials": ["ALIPAY", "ALIPAY", "WALLET"], "taxJarApiToken": "gS5SDMxVVSjnQB9Y", "taxJarEnabled": true, "useGlobalTaxJarApiToken": true}' \
    > test.out 2>&1
eval_tap $? 389 'CreatePaymentProviderConfig' test.out

#- 390 GetAggregatePaymentProviders
samples/cli/sample-apps Platform getAggregatePaymentProviders \
    > test.out 2>&1
eval_tap $? 390 'GetAggregatePaymentProviders' test.out

#- 391 DebugMatchedPaymentProviderConfig
samples/cli/sample-apps Platform debugMatchedPaymentProviderConfig \
    --namespace 'O671H4MqfD95s7LX' \
    --region 'VWbYfCtssWJQkp0n' \
    > test.out 2>&1
eval_tap $? 391 'DebugMatchedPaymentProviderConfig' test.out

#- 392 GetSpecialPaymentProviders
samples/cli/sample-apps Platform getSpecialPaymentProviders \
    > test.out 2>&1
eval_tap $? 392 'GetSpecialPaymentProviders' test.out

#- 393 UpdatePaymentProviderConfig
samples/cli/sample-apps Platform updatePaymentProviderConfig \
    --id 'E1zbcQnbwjwQFWGf' \
    --body '{"aggregate": "STRIPE", "namespace": "cJtbUPRhbOZ070Zp", "region": "zjctBqviXXqAFmBI", "sandboxTaxJarApiToken": "9yO5alIptkfJgS7h", "specials": ["WALLET", "WALLET", "PAYPAL"], "taxJarApiToken": "jvCFFNmuLa7vfE1m", "taxJarEnabled": true, "useGlobalTaxJarApiToken": false}' \
    > test.out 2>&1
eval_tap $? 393 'UpdatePaymentProviderConfig' test.out

#- 394 DeletePaymentProviderConfig
samples/cli/sample-apps Platform deletePaymentProviderConfig \
    --id 'KWV0By2KTYzGiGQo' \
    > test.out 2>&1
eval_tap $? 394 'DeletePaymentProviderConfig' test.out

#- 395 GetPaymentTaxConfig
samples/cli/sample-apps Platform getPaymentTaxConfig \
    > test.out 2>&1
eval_tap $? 395 'GetPaymentTaxConfig' test.out

#- 396 UpdatePaymentTaxConfig
samples/cli/sample-apps Platform updatePaymentTaxConfig \
    --body '{"sandboxTaxJarApiToken": "kw3H3UsrqfjupGT3", "taxJarApiToken": "9gsZGVUW3djRBNQR", "taxJarEnabled": false, "taxJarProductCodesMapping": {"JFtfurJfNG06rtBm": "FSaRVr5CFpbSSjFy", "Tdcp8fwQN4C2w7Ro": "S8JovPd0StQBf69U", "qv4JAbbRYXbMOtNJ": "eF8o7XSmxJQYkBcz"}}' \
    > test.out 2>&1
eval_tap $? 396 'UpdatePaymentTaxConfig' test.out

#- 397 SyncPaymentOrders
samples/cli/sample-apps Platform syncPaymentOrders \
    --nextEvaluatedKey 'NfmPrVfaSaqb3s0i' \
    --end '6WDsnaaWkCd5Kp8L' \
    --start 'ccwmgcuIX7os6JhK' \
    > test.out 2>&1
eval_tap $? 397 'SyncPaymentOrders' test.out

#- 398 PublicGetRootCategories
samples/cli/sample-apps Platform publicGetRootCategories \
    --namespace $AB_NAMESPACE \
    --language 'ghTVWLe3Sf7GVqXN' \
    --storeId 'FG5jAqo6fH67g0BK' \
    > test.out 2>&1
eval_tap $? 398 'PublicGetRootCategories' test.out

#- 399 DownloadCategories
samples/cli/sample-apps Platform downloadCategories \
    --namespace $AB_NAMESPACE \
    --language 'RYctxIh2TX7NQVXy' \
    --storeId 'LVkN44EHQ1x2cwiu' \
    > test.out 2>&1
eval_tap $? 399 'DownloadCategories' test.out

#- 400 PublicGetCategory
samples/cli/sample-apps Platform publicGetCategory \
    --categoryPath 'SMqOXDp7uspP7YNY' \
    --namespace $AB_NAMESPACE \
    --language 'g0wuT8ZeF9E2Qss2' \
    --storeId 'IxMJvzaLfOMw086u' \
    > test.out 2>&1
eval_tap $? 400 'PublicGetCategory' test.out

#- 401 PublicGetChildCategories
samples/cli/sample-apps Platform publicGetChildCategories \
    --categoryPath 'nltSjAy9XkMQ7bHp' \
    --namespace $AB_NAMESPACE \
    --language 'IvkBhfs2JNB5YpDr' \
    --storeId 'PGXgZyACO6Cbrsrc' \
    > test.out 2>&1
eval_tap $? 401 'PublicGetChildCategories' test.out

#- 402 PublicGetDescendantCategories
samples/cli/sample-apps Platform publicGetDescendantCategories \
    --categoryPath 'Ud7IPXCtYHnJowAG' \
    --namespace $AB_NAMESPACE \
    --language 'IIbxCMYEwx0P4LIH' \
    --storeId 'TO6XJM5Pdd3mnAF7' \
    > test.out 2>&1
eval_tap $? 402 'PublicGetDescendantCategories' test.out

#- 403 PublicListCurrencies
samples/cli/sample-apps Platform publicListCurrencies \
    --namespace $AB_NAMESPACE \
    --currencyType 'REAL' \
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
    --platform 'XBOX' \
    > test.out 2>&1
eval_tap $? 406 'GetIAPItemMapping' test.out

#- 407 PublicGetItemByAppId
samples/cli/sample-apps Platform publicGetItemByAppId \
    --namespace $AB_NAMESPACE \
    --language 'Hg1t2TLFwHnHnzVa' \
    --region 'VrODxyfYWpTyPHx3' \
    --storeId 'MEXLSprwkWBNZHP7' \
    --appId 'r6CUqlE3sbo6fSww' \
    > test.out 2>&1
eval_tap $? 407 'PublicGetItemByAppId' test.out

#- 408 PublicQueryItems
samples/cli/sample-apps Platform publicQueryItems \
    --namespace $AB_NAMESPACE \
    --appType 'GAME' \
    --autoCalcEstimatedPrice 'false' \
    --baseAppId 'nIQ9wmDPeWIyMys2' \
    --categoryPath '9RYhREoCGw85mmeQ' \
    --features 'DpNME25kuLXncm37' \
    --includeSubCategoryItem 'false' \
    --itemType 'APP' \
    --language 'TsFIfnRXttMr8DBX' \
    --limit '100' \
    --offset '44' \
    --region 'Y9XccOaLHuRCY9Ak' \
    --sortBy '["displayOrder:asc", "updatedAt:desc", "createdAt"]' \
    --storeId '2nMDfhEDXz5QSKw2' \
    --tags '80ILel8Hthp2wjnj' \
    > test.out 2>&1
eval_tap $? 408 'PublicQueryItems' test.out

#- 409 PublicGetItemBySku
samples/cli/sample-apps Platform publicGetItemBySku \
    --namespace $AB_NAMESPACE \
    --autoCalcEstimatedPrice 'true' \
    --language '9MkaEPvN5liKQxHm' \
    --region '3trjXCgZ7hcfXb6v' \
    --storeId 'LXLx43Mnba9oDQUZ' \
    --sku '8Qb2ljiFJfvuu3hp' \
    > test.out 2>&1
eval_tap $? 409 'PublicGetItemBySku' test.out

#- 410 PublicGetEstimatedPrice
samples/cli/sample-apps Platform publicGetEstimatedPrice \
    --namespace $AB_NAMESPACE \
    --region 'DPmmJN7ZJ12GcSgE' \
    --storeId '9pgeonaxxgdcAFTF' \
    --itemIds 'SA5XkxHXDqonVIVN' \
    > test.out 2>&1
eval_tap $? 410 'PublicGetEstimatedPrice' test.out

#- 411 PublicBulkGetItems
samples/cli/sample-apps Platform publicBulkGetItems \
    --namespace $AB_NAMESPACE \
    --autoCalcEstimatedPrice 'true' \
    --language 'eN2I7PQAnbSeJUBW' \
    --region '56WjLdGlG8Bbeuog' \
    --storeId 'ccN1H8Gxhw0ygNAp' \
    --itemIds 'unLkpLB2QLr4vy9X' \
    > test.out 2>&1
eval_tap $? 411 'PublicBulkGetItems' test.out

#- 412 PublicValidateItemPurchaseCondition
samples/cli/sample-apps Platform publicValidateItemPurchaseCondition \
    --namespace $AB_NAMESPACE \
    --body '{"itemIds": ["nZDQBWBfti9r9Re8", "KghSKHH835ut5rSM", "D91BdzbBVYI9GZm1"]}' \
    > test.out 2>&1
eval_tap $? 412 'PublicValidateItemPurchaseCondition' test.out

#- 413 PublicSearchItems
samples/cli/sample-apps Platform publicSearchItems \
    --namespace $AB_NAMESPACE \
    --autoCalcEstimatedPrice 'true' \
    --itemType 'MEDIA' \
    --limit '5' \
    --offset '35' \
    --region '6bAC9Bquv0Ai535V' \
    --storeId 'Ko6Xzq5ubzrxmz1T' \
    --keyword 'ejstCT3QH8OcWn94' \
    --language 'xr6ZRBnVOsfKPo0e' \
    > test.out 2>&1
eval_tap $? 413 'PublicSearchItems' test.out

#- 414 PublicGetApp
samples/cli/sample-apps Platform publicGetApp \
    --itemId 'W91GQAVDTVd8w6XF' \
    --namespace $AB_NAMESPACE \
    --language 'uxsriPmozA9gZANy' \
    --region 'yfzladGYPtARmIPd' \
    --storeId 'JAZmJ1bmBqhpjq3a' \
    > test.out 2>&1
eval_tap $? 414 'PublicGetApp' test.out

#- 415 PublicGetItemDynamicData
samples/cli/sample-apps Platform publicGetItemDynamicData \
    --itemId 'wwHmYc9a4DGyR0Lm' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 415 'PublicGetItemDynamicData' test.out

#- 416 PublicGetItem
samples/cli/sample-apps Platform publicGetItem \
    --itemId 'ESRH7OQQuTnXTsd4' \
    --namespace $AB_NAMESPACE \
    --autoCalcEstimatedPrice 'true' \
    --language 'KoTRhgu9duLyL7l6' \
    --populateBundle 'false' \
    --region 'EZYaKGDvd60z2wPe' \
    --storeId 'fn99ccwXGk5VKUwe' \
    > test.out 2>&1
eval_tap $? 416 'PublicGetItem' test.out

#- 417 GetPaymentCustomization
eval_tap 0 417 'GetPaymentCustomization # SKIP deprecated' test.out

#- 418 PublicGetPaymentUrl
samples/cli/sample-apps Platform publicGetPaymentUrl \
    --namespace $AB_NAMESPACE \
    --body '{"neonPayConfig": {"cancelUrl": "cYCwKsdorrVENtWW", "successUrl": "2EDDObTl2lvmrWDC"}, "paymentOrderNo": "gz7U8EMUQ24nVwfn", "paymentProvider": "XSOLLA", "returnUrl": "2BU4viq9sSi3Y0gM", "ui": "oBrGw9rdHSOUw344", "zipCode": "J0evTf6uxhE9j8VI"}' \
    > test.out 2>&1
eval_tap $? 418 'PublicGetPaymentUrl' test.out

#- 419 PublicGetPaymentMethods
samples/cli/sample-apps Platform publicGetPaymentMethods \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'E63X1H1QEg6FGK0L' \
    > test.out 2>&1
eval_tap $? 419 'PublicGetPaymentMethods' test.out

#- 420 PublicGetUnpaidPaymentOrder
samples/cli/sample-apps Platform publicGetUnpaidPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'qcw0hzXinoNRdePe' \
    > test.out 2>&1
eval_tap $? 420 'PublicGetUnpaidPaymentOrder' test.out

#- 421 Pay
samples/cli/sample-apps Platform pay \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'lvvjgEprZz60Q7p8' \
    --paymentProvider 'ALIPAY' \
    --zipCode 'kMnm77fepXoEuYee' \
    --body '{"token": "mdfPUCQ7FCRBZlq6"}' \
    > test.out 2>&1
eval_tap $? 421 'Pay' test.out

#- 422 PublicCheckPaymentOrderPaidStatus
samples/cli/sample-apps Platform publicCheckPaymentOrderPaidStatus \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'LgP7jqRlQUqRiJYy' \
    > test.out 2>&1
eval_tap $? 422 'PublicCheckPaymentOrderPaidStatus' test.out

#- 423 GetPaymentPublicConfig
samples/cli/sample-apps Platform getPaymentPublicConfig \
    --namespace $AB_NAMESPACE \
    --sandbox 'false' \
    --paymentProvider 'NEONPAY' \
    --region 'h6YtHlcvtQJ0Q85H' \
    > test.out 2>&1
eval_tap $? 423 'GetPaymentPublicConfig' test.out

#- 424 PublicGetQRCode
samples/cli/sample-apps Platform publicGetQRCode \
    --namespace $AB_NAMESPACE \
    --code 'UPm0RVi5clqA88ng' \
    > test.out 2>&1
eval_tap $? 424 'PublicGetQRCode' test.out

#- 425 PublicNormalizePaymentReturnUrl
samples/cli/sample-apps Platform publicNormalizePaymentReturnUrl \
    --namespace $AB_NAMESPACE \
    --payerID 'pgKHGWS1RhxFfd4d' \
    --foreinginvoice 'TdEluRXjKrZk6RY3' \
    --invoiceId 'TRGyIZjjRcf9KyqB' \
    --payload 'PtVWqzUVhdzKcH9b' \
    --redirectResult 'u6fh9M7a4tjtuxUV' \
    --resultCode 'CwJ6CFq9wtEWl9Ld' \
    --sessionId 'sm8PknKicvN3dcaF' \
    --status 'Maq6EoHGtJLLYN7M' \
    --token 'Oe8aLtiuDmCuwnwo' \
    --type '4DxOXber6PgUgCid' \
    --userId '0xvAgs1wS9nHnoju' \
    --orderNo '2Lb4N5HCuWLaSfpC' \
    --paymentOrderNo 'pbXxMNccByWvuYab' \
    --paymentProvider 'XSOLLA' \
    --returnUrl 'nm00zAb20LnNXEfO' \
    > test.out 2>&1
eval_tap $? 425 'PublicNormalizePaymentReturnUrl' test.out

#- 426 GetPaymentTaxValue
samples/cli/sample-apps Platform getPaymentTaxValue \
    --namespace $AB_NAMESPACE \
    --zipCode 'eXXkW5lSosuz8371' \
    --paymentOrderNo 'AhZ7z2PyrhMdRLoF' \
    --paymentProvider 'NEONPAY' \
    > test.out 2>&1
eval_tap $? 426 'GetPaymentTaxValue' test.out

#- 427 GetRewardByCode
samples/cli/sample-apps Platform getRewardByCode \
    --namespace $AB_NAMESPACE \
    --rewardCode '4raPk2OX5YK91cye' \
    > test.out 2>&1
eval_tap $? 427 'GetRewardByCode' test.out

#- 428 QueryRewards1
samples/cli/sample-apps Platform queryRewards1 \
    --namespace $AB_NAMESPACE \
    --eventTopic 'MVWl6HGOqTonYTg9' \
    --limit '17' \
    --offset '52' \
    --sortBy '["namespace:asc", "rewardCode", "namespace:desc"]' \
    > test.out 2>&1
eval_tap $? 428 'QueryRewards1' test.out

#- 429 GetReward1
samples/cli/sample-apps Platform getReward1 \
    --namespace $AB_NAMESPACE \
    --rewardId 'TThmSI9tWQXJ7Idw' \
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
    --appIds '["eppTvJKajwoLwXav", "fa3lZyTQKJz0xoPC", "CWLOr9hqGM3wE4a1"]' \
    --itemIds '["mgVIwhtWQXjhhuQx", "rILKoDsQYmWtRUBX", "rP6o5z19PYimAIRS"]' \
    --skus '["UuTVnRHP5vOFyIEa", "52izJGCePlcbAjwS", "wpgYMzLiaWCH1rNw"]' \
    > test.out 2>&1
eval_tap $? 431 'PublicExistsAnyMyActiveEntitlement' test.out

#- 432 PublicGetMyAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform publicGetMyAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --appId 'E5XP8Zum4cYflhF3' \
    > test.out 2>&1
eval_tap $? 432 'PublicGetMyAppEntitlementOwnershipByAppId' test.out

#- 433 PublicGetMyEntitlementOwnershipByItemId
samples/cli/sample-apps Platform publicGetMyEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --entitlementClazz 'CODE' \
    --itemId '0Q4xhDshTJ2yn6D2' \
    > test.out 2>&1
eval_tap $? 433 'PublicGetMyEntitlementOwnershipByItemId' test.out

#- 434 PublicGetMyEntitlementOwnershipBySku
samples/cli/sample-apps Platform publicGetMyEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --entitlementClazz 'OPTIONBOX' \
    --sku 'i7FATBfB3vZSglmE' \
    > test.out 2>&1
eval_tap $? 434 'PublicGetMyEntitlementOwnershipBySku' test.out

#- 435 PublicGetEntitlementOwnershipToken
samples/cli/sample-apps Platform publicGetEntitlementOwnershipToken \
    --namespace $AB_NAMESPACE \
    --appIds '["cT8NgOOPQsohPkaj", "ow4pvzQO3PG4Bc8C", "TpBvUHZZogkmwOcF"]' \
    --itemIds '["zm6S1dGOJyUIFnIN", "ZIovW4O0kGJ3Wxm5", "VIS1uqFVz62juyfj"]' \
    --skus '["8ara6i9YuUPctVfv", "54u5cWNQoMWoR9oO", "a8SmG3sDBbgePpjd"]' \
    > test.out 2>&1
eval_tap $? 435 'PublicGetEntitlementOwnershipToken' test.out

#- 436 SyncTwitchDropsEntitlement
samples/cli/sample-apps Platform syncTwitchDropsEntitlement \
    --namespace $AB_NAMESPACE \
    --body '{"gameId": "ZYLtOGKl4kNrD3Xr", "language": "yK-Czih_IJ", "region": "TLWHaJwJ1fyEfQJq"}' \
    > test.out 2>&1
eval_tap $? 436 'SyncTwitchDropsEntitlement' test.out

#- 437 PublicGetMyWallet
samples/cli/sample-apps Platform publicGetMyWallet \
    --currencyCode 'V5b83DTLc5kxz3Qq' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 437 'PublicGetMyWallet' test.out

#- 438 SyncEpicGameDLC
samples/cli/sample-apps Platform syncEpicGameDLC \
    --namespace $AB_NAMESPACE \
    --userId 'H2GuqQ7Jae2CNwuT' \
    --body '{"epicGamesJwtToken": "cKuvGHnTa9kA9jsv"}' \
    > test.out 2>&1
eval_tap $? 438 'SyncEpicGameDLC' test.out

#- 439 SyncOculusDLC
samples/cli/sample-apps Platform syncOculusDLC \
    --namespace $AB_NAMESPACE \
    --userId 'f25GXM9sK4zwwH1T' \
    > test.out 2>&1
eval_tap $? 439 'SyncOculusDLC' test.out

#- 440 PublicSyncPsnDlcInventory
samples/cli/sample-apps Platform publicSyncPsnDlcInventory \
    --namespace $AB_NAMESPACE \
    --userId '18quvXmEEVbfJFGi' \
    --body '{"serviceLabel": 60}' \
    > test.out 2>&1
eval_tap $? 440 'PublicSyncPsnDlcInventory' test.out

#- 441 PublicSyncPsnDlcInventoryWithMultipleServiceLabels
samples/cli/sample-apps Platform publicSyncPsnDlcInventoryWithMultipleServiceLabels \
    --namespace $AB_NAMESPACE \
    --userId '0RFogFPYQ5DKc52S' \
    --body '{"serviceLabels": [64, 52, 77]}' \
    > test.out 2>&1
eval_tap $? 441 'PublicSyncPsnDlcInventoryWithMultipleServiceLabels' test.out

#- 442 SyncSteamDLC
samples/cli/sample-apps Platform syncSteamDLC \
    --namespace $AB_NAMESPACE \
    --userId 'zs4udyKQJkKKPjOL' \
    --body '{"appId": "luvVxcNbKlta9Ew3", "steamId": "b7esf8NC5ecevvDN"}' \
    > test.out 2>&1
eval_tap $? 442 'SyncSteamDLC' test.out

#- 443 SyncXboxDLC
samples/cli/sample-apps Platform syncXboxDLC \
    --namespace $AB_NAMESPACE \
    --userId 'uY5Ues971W5AkDJ1' \
    --body '{"xstsToken": "bkU45vfaG7Klwa4w"}' \
    > test.out 2>&1
eval_tap $? 443 'SyncXboxDLC' test.out

#- 444 PublicQueryUserEntitlements
samples/cli/sample-apps Platform publicQueryUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'Fz67txaZPGBCiwvr' \
    --appType 'SOFTWARE' \
    --entitlementClazz 'APP' \
    --entitlementName 'UsJnHpqoXwlqdvon' \
    --features '["mtP2MxH7eCEphRFE", "KlFr8FE3ZWJ0z4Hx", "vgPEn8AyFD0xlwT2"]' \
    --itemId '["bGsxw8Ixmx4uhAgc", "e2NseAYiffxbtzsH", "TWYVYeow18xI4w8F"]' \
    --limit '32' \
    --offset '93' \
    > test.out 2>&1
eval_tap $? 444 'PublicQueryUserEntitlements' test.out

#- 445 PublicGetUserAppEntitlementByAppId
samples/cli/sample-apps Platform publicGetUserAppEntitlementByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'xQ4EfIw752B0TQFf' \
    --appId 'wV4d0S09ZSU2jHcf' \
    > test.out 2>&1
eval_tap $? 445 'PublicGetUserAppEntitlementByAppId' test.out

#- 446 PublicQueryUserEntitlementsByAppType
samples/cli/sample-apps Platform publicQueryUserEntitlementsByAppType \
    --namespace $AB_NAMESPACE \
    --userId 'E1aXPrgfgqmoDXS7' \
    --limit '97' \
    --offset '28' \
    --appType 'DEMO' \
    > test.out 2>&1
eval_tap $? 446 'PublicQueryUserEntitlementsByAppType' test.out

#- 447 PublicGetUserEntitlementsByIds
samples/cli/sample-apps Platform publicGetUserEntitlementsByIds \
    --namespace $AB_NAMESPACE \
    --userId 'ZhBlunhDtAEcqPZd' \
    --availablePlatformOnly 'false' \
    --ids '["1eqUQtO59gK5m1WW", "NjI8XAWMoq90aH8B", "lR7ZNM1F1ISoIyYu"]' \
    > test.out 2>&1
eval_tap $? 447 'PublicGetUserEntitlementsByIds' test.out

#- 448 PublicGetUserEntitlementByItemId
eval_tap 0 448 'PublicGetUserEntitlementByItemId # SKIP deprecated' test.out

#- 449 PublicGetUserEntitlementBySku
eval_tap 0 449 'PublicGetUserEntitlementBySku # SKIP deprecated' test.out

#- 450 PublicUserEntitlementHistory
samples/cli/sample-apps Platform publicUserEntitlementHistory \
    --namespace $AB_NAMESPACE \
    --userId '73tEBxSiX9J8A1lx' \
    --endDate 'CFSsE4Wb3LiIdyAB' \
    --entitlementClazz 'CODE' \
    --limit '94' \
    --offset '3' \
    --startDate 'l3i37pnyOxJdKjrF' \
    > test.out 2>&1
eval_tap $? 450 'PublicUserEntitlementHistory' test.out

#- 451 PublicExistsAnyUserActiveEntitlement
samples/cli/sample-apps Platform publicExistsAnyUserActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'WIMbTQC6P34bGlFb' \
    --appIds '["ZZ5JWrkgKmioQZkO", "iO8JxiwBwCzfDuo4", "cWCvFjln7Stm2e0t"]' \
    --itemIds '["6y2SOxzdbkTdTVfJ", "QQHJ0yQRdoXkjRSe", "6K5jnY6zNu4tKWEW"]' \
    --skus '["j2jbBrc0z3giUBrW", "s6DUlC1fgybD2SkB", "GHwwFHE8COG2k3I1"]' \
    > test.out 2>&1
eval_tap $? 451 'PublicExistsAnyUserActiveEntitlement' test.out

#- 452 PublicGetUserAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform publicGetUserAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --userId '3UH7bD5BiZ5Mwnmj' \
    --appId 'jIZeuVdCpNoFOuCX' \
    > test.out 2>&1
eval_tap $? 452 'PublicGetUserAppEntitlementOwnershipByAppId' test.out

#- 453 PublicGetUserEntitlementOwnershipByItemId
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'l45A9zOBRsCTNK39' \
    --entitlementClazz 'MEDIA' \
    --itemId 'u6LYvqkAZnwEmZUv' \
    > test.out 2>&1
eval_tap $? 453 'PublicGetUserEntitlementOwnershipByItemId' test.out

#- 454 PublicGetUserEntitlementOwnershipByItemIds
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'kPL3AyLSvIEZBro0' \
    --ids '["iGlarniJVc6f38S8", "Pm8J2LN37rjsdmjJ", "0v6dAHznS6yL05ds"]' \
    > test.out 2>&1
eval_tap $? 454 'PublicGetUserEntitlementOwnershipByItemIds' test.out

#- 455 PublicGetUserEntitlementOwnershipBySku
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --userId 'p9PgtbrNxrTpEwnr' \
    --entitlementClazz 'LOOTBOX' \
    --sku 'ZZtjYC3NggImKEZm' \
    > test.out 2>&1
eval_tap $? 455 'PublicGetUserEntitlementOwnershipBySku' test.out

#- 456 PublicGetUserEntitlement
samples/cli/sample-apps Platform publicGetUserEntitlement \
    --entitlementId 'u5B408KpbVl9eVLG' \
    --namespace $AB_NAMESPACE \
    --userId 'cdRAb9NuVBZljcob' \
    > test.out 2>&1
eval_tap $? 456 'PublicGetUserEntitlement' test.out

#- 457 PublicConsumeUserEntitlement
samples/cli/sample-apps Platform publicConsumeUserEntitlement \
    --entitlementId '0fW7KJox2GWL2Lu8' \
    --namespace $AB_NAMESPACE \
    --userId 'oZ1fbGtGGBSNKWnv' \
    --body '{"metadata": {"operationSource": "INVENTORY"}, "options": ["pLhCFm1vMT49WclZ", "aEFj4keTvmlJLCb8", "hwCvLobo1COAZxir"], "requestId": "paU8NlgeImtQyGd3", "useCount": 64}' \
    > test.out 2>&1
eval_tap $? 457 'PublicConsumeUserEntitlement' test.out

#- 458 PublicSellUserEntitlement
samples/cli/sample-apps Platform publicSellUserEntitlement \
    --entitlementId 'Pns230UOwtEDamWZ' \
    --namespace $AB_NAMESPACE \
    --userId 'TA5H6zH99lOtYGmh' \
    --body '{"requestId": "i6VFfPVuj0ulvpJn", "useCount": 24}' \
    > test.out 2>&1
eval_tap $? 458 'PublicSellUserEntitlement' test.out

#- 459 PublicSplitUserEntitlement
samples/cli/sample-apps Platform publicSplitUserEntitlement \
    --entitlementId 'WY7f7pj4B3IfHP64' \
    --namespace $AB_NAMESPACE \
    --userId 'bZG95jp8iA2Jd8Jh' \
    --body '{"metadata": {"operationSource": "INVENTORY"}, "useCount": 41}' \
    > test.out 2>&1
eval_tap $? 459 'PublicSplitUserEntitlement' test.out

#- 460 PublicTransferUserEntitlement
samples/cli/sample-apps Platform publicTransferUserEntitlement \
    --entitlementId 'Z9PvjQOG1vIiyOBv' \
    --namespace $AB_NAMESPACE \
    --userId 'mPuIzT1DEjyUOGtO' \
    --body '{"entitlementId": "Rhl9FeQFEJOUNW2P", "metadata": {"operationSource": "INVENTORY"}, "useCount": 92}' \
    > test.out 2>&1
eval_tap $? 460 'PublicTransferUserEntitlement' test.out

#- 461 PublicRedeemCode
samples/cli/sample-apps Platform publicRedeemCode \
    --namespace $AB_NAMESPACE \
    --userId '9OKHxfWaiQwv35lk' \
    --body '{"code": "pwh4aBZdp4kxzg6S", "language": "NCO_209", "region": "vqcGawHw0VzGQwbt"}' \
    > test.out 2>&1
eval_tap $? 461 'PublicRedeemCode' test.out

#- 462 PublicFulfillAppleIAPItem
samples/cli/sample-apps Platform publicFulfillAppleIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'uEoQMEdFB3U6BSCy' \
    --body '{"excludeOldTransactions": false, "language": "HVi", "productId": "cr7ey7H6Qqj375Li", "receiptData": "KteNswd2gFbiKhU0", "region": "sxc4Nq4pR8zVhuCt", "transactionId": "r2CuvUb0XrRmAAKt"}' \
    > test.out 2>&1
eval_tap $? 462 'PublicFulfillAppleIAPItem' test.out

#- 463 SyncEpicGamesInventory
samples/cli/sample-apps Platform syncEpicGamesInventory \
    --namespace $AB_NAMESPACE \
    --userId 'HhphV7dZblceX276' \
    --body '{"epicGamesJwtToken": "MppLRpkL73ZrqYXH"}' \
    > test.out 2>&1
eval_tap $? 463 'SyncEpicGamesInventory' test.out

#- 464 PublicFulfillGoogleIAPItem
samples/cli/sample-apps Platform publicFulfillGoogleIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'xq9uJafnbRqcouyg' \
    --body '{"autoAck": false, "autoConsume": false, "language": "RAHQ", "orderId": "9Z98KqxxEEO8HjE2", "packageName": "h2VlnGmeTg9rh4cn", "productId": "hkgDy5SW1xEzGpl4", "purchaseTime": 65, "purchaseToken": "tkxPq7PEqAyjlqC3", "region": "nZtqkfFJPih1CZzd", "subscriptionPurchase": false}' \
    > test.out 2>&1
eval_tap $? 464 'PublicFulfillGoogleIAPItem' test.out

#- 465 SyncOculusSubscriptions
samples/cli/sample-apps Platform syncOculusSubscriptions \
    --namespace $AB_NAMESPACE \
    --userId 'EE8voFihDzWsDpIs' \
    --body '{"skus": ["am9wEm8kqnGp7EDw", "1Dc1kEiCMKvHyaUH", "k6PwFFYQMbGotvUV"]}' \
    > test.out 2>&1
eval_tap $? 465 'SyncOculusSubscriptions' test.out

#- 466 SyncOculusConsumableEntitlements
samples/cli/sample-apps Platform syncOculusConsumableEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'XJDsMfJRccSZKBr1' \
    > test.out 2>&1
eval_tap $? 466 'SyncOculusConsumableEntitlements' test.out

#- 467 PublicReconcilePlayStationStore
samples/cli/sample-apps Platform publicReconcilePlayStationStore \
    --namespace $AB_NAMESPACE \
    --userId 'qDeUJ9zTxqdaAnPk' \
    --body '{"currencyCode": "r7vs5xy2JFqdWSfA", "price": 0.7045864767899032, "productId": "XtMxC7rgxaY2oaBq", "serviceLabel": 5}' \
    > test.out 2>&1
eval_tap $? 467 'PublicReconcilePlayStationStore' test.out

#- 468 PublicReconcilePlayStationStoreWithMultipleServiceLabels
samples/cli/sample-apps Platform publicReconcilePlayStationStoreWithMultipleServiceLabels \
    --namespace $AB_NAMESPACE \
    --userId 'T1AJ9jM39rIlbp87' \
    --body '{"currencyCode": "lPvRU2JCoYH08apc", "price": 0.1441431289134273, "productId": "BFxh5tLrmdfIwzIj", "serviceLabels": [50, 52, 54]}' \
    > test.out 2>&1
eval_tap $? 468 'PublicReconcilePlayStationStoreWithMultipleServiceLabels' test.out

#- 469 SyncSteamInventory
samples/cli/sample-apps Platform syncSteamInventory \
    --namespace $AB_NAMESPACE \
    --userId 'XD7sOm5D9hvBBPMq' \
    --body '{"appId": "71RvMNBVoYu9Auau", "currencyCode": "uWIwP5JlOLlwhKA2", "language": "wMjl_HpSq", "price": 0.09468618981306665, "productId": "hh6dxXPARqusuBuP", "region": "LIXBtlOX4uZ7WkuY", "steamId": "aSjV8CzLq4vGXOw1"}' \
    > test.out 2>&1
eval_tap $? 469 'SyncSteamInventory' test.out

#- 470 SyncSteamAbnormalTransaction
samples/cli/sample-apps Platform syncSteamAbnormalTransaction \
    --namespace $AB_NAMESPACE \
    --userId 'mXb5ArKxMEnEMSUs' \
    > test.out 2>&1
eval_tap $? 470 'SyncSteamAbnormalTransaction' test.out

#- 471 SyncSteamIAPByTransaction
samples/cli/sample-apps Platform syncSteamIAPByTransaction \
    --namespace $AB_NAMESPACE \
    --userId 'GuNUg9YeD3VmiwRW' \
    --body '{"orderId": "c8J1mRDaNmQoiA8J"}' \
    > test.out 2>&1
eval_tap $? 471 'SyncSteamIAPByTransaction' test.out

#- 472 PublicQueryUserThirdPartySubscription
samples/cli/sample-apps Platform publicQueryUserThirdPartySubscription \
    --namespace $AB_NAMESPACE \
    --platform 'PLAYSTATION' \
    --userId 'Gx7BoVpMrFQ8tYmZ' \
    --activeOnly 'false' \
    --groupId 'At9i2ut4DpUTbAhO' \
    --limit '58' \
    --offset '21' \
    --productId '5pghejk52KefZfA5' \
    > test.out 2>&1
eval_tap $? 472 'PublicQueryUserThirdPartySubscription' test.out

#- 473 SyncTwitchDropsEntitlement1
samples/cli/sample-apps Platform syncTwitchDropsEntitlement1 \
    --namespace $AB_NAMESPACE \
    --userId 'EB1fk6gZorc1mFMn' \
    --body '{"gameId": "1WL3JDgIYyrXO22w", "language": "ZCZJ_zxzB", "region": "5s999RKjAIW5eq2n"}' \
    > test.out 2>&1
eval_tap $? 473 'SyncTwitchDropsEntitlement1' test.out

#- 474 SyncXboxInventory
samples/cli/sample-apps Platform syncXboxInventory \
    --namespace $AB_NAMESPACE \
    --userId 'TmnMgdZrmF42QR1r' \
    --body '{"currencyCode": "GwiFKXWv7uTtpi1w", "price": 0.5740563721904206, "productId": "D7xvU6uFCTIh6PEm", "xstsToken": "qt4xRQki5bVOtXoy"}' \
    > test.out 2>&1
eval_tap $? 474 'SyncXboxInventory' test.out

#- 475 PublicQueryUserOrders
samples/cli/sample-apps Platform publicQueryUserOrders \
    --namespace $AB_NAMESPACE \
    --userId 'Y2uFU1uu5KJhDyAX' \
    --discounted 'false' \
    --itemId 'ICTGOlO9q1wePHSq' \
    --limit '93' \
    --offset '50' \
    --status 'FULFILLED' \
    > test.out 2>&1
eval_tap $? 475 'PublicQueryUserOrders' test.out

#- 476 PublicCreateUserOrder
samples/cli/sample-apps Platform publicCreateUserOrder \
    --namespace $AB_NAMESPACE \
    --userId 'PneHAyOdfHstniNc' \
    --body '{"currencyCode": "AFF7yy3aRklBnWPm", "discountCodes": ["6TC40l7jeUuwAcRO", "wlLwGHmLtBV9kMjj", "iocyp0SLdI6uMK3k"], "discountedPrice": 88, "ext": {"HjNmTsdDqVHltggV": {}, "r0Bdy3ns1f5Mcg3r": {}, "CQRlRD1aUbnqp42M": {}}, "itemId": "3aCa25CELkQ7Zv5h", "language": "DUog-ta", "price": 94, "quantity": 72, "region": "PCXFcDrXmeP9bw6l", "returnUrl": "ZeHzobym3QEiNtFd", "sectionId": "G186f6i6YisxXvek"}' \
    > test.out 2>&1
eval_tap $? 476 'PublicCreateUserOrder' test.out

#- 477 PublicPreviewOrderPrice
samples/cli/sample-apps Platform publicPreviewOrderPrice \
    --namespace $AB_NAMESPACE \
    --userId 'R0r6cXmcR6cFTBnQ' \
    --body '{"currencyCode": "NuQC32g3yHXopm52", "discountCodes": ["UdHe2PeKT2OZZXIg", "HzAhKZnh64oVAqmV", "811cq7DbjyUVUK0h"], "discountedPrice": 87, "itemId": "qBJpDqsVng9lJ6UT", "price": 82, "quantity": 47}' \
    > test.out 2>&1
eval_tap $? 477 'PublicPreviewOrderPrice' test.out

#- 478 PublicGetUserOrder
samples/cli/sample-apps Platform publicGetUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'hkDr6rVXu1xcrhlU' \
    --userId 'R3epxdN8STHA33i4' \
    > test.out 2>&1
eval_tap $? 478 'PublicGetUserOrder' test.out

#- 479 PublicCancelUserOrder
samples/cli/sample-apps Platform publicCancelUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'iwJrS2UUn9tes50Y' \
    --userId 'iuNFQ5MAvQepGhU2' \
    > test.out 2>&1
eval_tap $? 479 'PublicCancelUserOrder' test.out

#- 480 PublicGetUserOrderHistories
samples/cli/sample-apps Platform publicGetUserOrderHistories \
    --namespace $AB_NAMESPACE \
    --orderNo '5GWBV8NVZMKsVRIg' \
    --userId 'AWOMK6fRytb8W4OT' \
    > test.out 2>&1
eval_tap $? 480 'PublicGetUserOrderHistories' test.out

#- 481 PublicDownloadUserOrderReceipt
samples/cli/sample-apps Platform publicDownloadUserOrderReceipt \
    --namespace $AB_NAMESPACE \
    --orderNo '97yxXyjfgHeZTKHr' \
    --userId 'WQOItRo8zipa9Otp' \
    > test.out 2>&1
eval_tap $? 481 'PublicDownloadUserOrderReceipt' test.out

#- 482 PublicGetPaymentAccounts
samples/cli/sample-apps Platform publicGetPaymentAccounts \
    --namespace $AB_NAMESPACE \
    --userId 'Xf6HsZJm2hJKKLWy' \
    > test.out 2>&1
eval_tap $? 482 'PublicGetPaymentAccounts' test.out

#- 483 PublicDeletePaymentAccount
samples/cli/sample-apps Platform publicDeletePaymentAccount \
    --id 'T019KUylkUjKyQzR' \
    --namespace $AB_NAMESPACE \
    --type 'paypal' \
    --userId 'ibrmuRpXjCU6Rxa3' \
    > test.out 2>&1
eval_tap $? 483 'PublicDeletePaymentAccount' test.out

#- 484 PublicListActiveSections
samples/cli/sample-apps Platform publicListActiveSections \
    --namespace $AB_NAMESPACE \
    --userId 'EVXpeIvGBWD8YcB0' \
    --autoCalcEstimatedPrice 'true' \
    --language '9fldhkji17o0KTuM' \
    --region 'odkZs1zrrzCoL1ca' \
    --storeId 'EJbEch0AcGFVVrTq' \
    --viewId 'NKWfm5OlA45AZrBr' \
    > test.out 2>&1
eval_tap $? 484 'PublicListActiveSections' test.out

#- 485 PublicQueryUserSubscriptions
samples/cli/sample-apps Platform publicQueryUserSubscriptions \
    --namespace $AB_NAMESPACE \
    --userId 'R12lUyywU1011eYQ' \
    --chargeStatus 'RECURRING_CHARGING' \
    --itemId 'GMGxBMaxmGyK7KE3' \
    --limit '55' \
    --offset '24' \
    --sku '6gx26aANPyVToBmJ' \
    --status 'INIT' \
    --subscribedBy 'PLATFORM' \
    > test.out 2>&1
eval_tap $? 485 'PublicQueryUserSubscriptions' test.out

#- 486 PublicSubscribeSubscription
samples/cli/sample-apps Platform publicSubscribeSubscription \
    --namespace $AB_NAMESPACE \
    --userId 'p8nvpBJHeTRjqtXH' \
    --body '{"currencyCode": "h9o1YexNErgsfBil", "itemId": "YJMkfnNHezwcrL2x", "language": "EWgW-FWKF", "region": "2UsdYJ8Heazwn8lh", "returnUrl": "N42KmZT5PPzZuYIA", "source": "61VeFmKynUFnBRsg"}' \
    > test.out 2>&1
eval_tap $? 486 'PublicSubscribeSubscription' test.out

#- 487 PublicCheckUserSubscriptionSubscribableByItemId
samples/cli/sample-apps Platform publicCheckUserSubscriptionSubscribableByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'JptbFIJ23vJBghUA' \
    --itemId 'ts5k3iS1UOuXGAXV' \
    > test.out 2>&1
eval_tap $? 487 'PublicCheckUserSubscriptionSubscribableByItemId' test.out

#- 488 PublicGetUserSubscription
samples/cli/sample-apps Platform publicGetUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'Z0bCyfhsJK8jJF2j' \
    --userId 'L34Z2ddJEeNTHdaW' \
    > test.out 2>&1
eval_tap $? 488 'PublicGetUserSubscription' test.out

#- 489 PublicChangeSubscriptionBillingAccount
samples/cli/sample-apps Platform publicChangeSubscriptionBillingAccount \
    --namespace $AB_NAMESPACE \
    --subscriptionId '8jFtulyDW1KYUqSu' \
    --userId 'n9V6IsUO6ZcWGM5v' \
    > test.out 2>&1
eval_tap $? 489 'PublicChangeSubscriptionBillingAccount' test.out

#- 490 PublicCancelSubscription
samples/cli/sample-apps Platform publicCancelSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'spKOiNH2hvLuDq93' \
    --userId 'cWdQkQrwBkCBKwgn' \
    --body '{"immediate": false, "reason": "sAkJT7hDvbVJnoQC"}' \
    > test.out 2>&1
eval_tap $? 490 'PublicCancelSubscription' test.out

#- 491 PublicGetUserSubscriptionBillingHistories
samples/cli/sample-apps Platform publicGetUserSubscriptionBillingHistories \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'Wi3O1T2vGCTxVV32' \
    --userId 'tmvFOtTx4O0USuT0' \
    --excludeFree 'true' \
    --limit '55' \
    --offset '9' \
    > test.out 2>&1
eval_tap $? 491 'PublicGetUserSubscriptionBillingHistories' test.out

#- 492 PublicListViews
samples/cli/sample-apps Platform publicListViews \
    --namespace $AB_NAMESPACE \
    --userId 'wLkrfvFLvf9uxsch' \
    --language 'N1AWDFfkQ1l7y1aX' \
    --storeId 'G7wlRegVbEOvr6tF' \
    > test.out 2>&1
eval_tap $? 492 'PublicListViews' test.out

#- 493 PublicGetWallet
samples/cli/sample-apps Platform publicGetWallet \
    --currencyCode 'K9SR3WBZXmSpGI82' \
    --namespace $AB_NAMESPACE \
    --userId 'BoYl2T4VHLLmZNhp' \
    > test.out 2>&1
eval_tap $? 493 'PublicGetWallet' test.out

#- 494 PublicListUserWalletTransactions
samples/cli/sample-apps Platform publicListUserWalletTransactions \
    --currencyCode 'EjlRUw4POTcDZMUe' \
    --namespace $AB_NAMESPACE \
    --userId '1RSVplRV5uf4tBu6' \
    --limit '71' \
    --offset '69' \
    > test.out 2>&1
eval_tap $? 494 'PublicListUserWalletTransactions' test.out

#- 495 PublicGetMyDLCContent
samples/cli/sample-apps Platform publicGetMyDLCContent \
    --includeAllNamespaces 'false' \
    --type 'XBOX' \
    > test.out 2>&1
eval_tap $? 495 'PublicGetMyDLCContent' test.out

#- 496 QueryFulfillments
samples/cli/sample-apps Platform queryFulfillments \
    --namespace $AB_NAMESPACE \
    --endTime 'trBgiZAovDUsplhF' \
    --limit '65' \
    --offset '62' \
    --startTime 'iWq83kskHCOZvvW8' \
    --state 'REVOKED' \
    --transactionId '1M1n6zjoROv8oSJT' \
    --userId 'luFMyRCBZwbAyEZS' \
    > test.out 2>&1
eval_tap $? 496 'QueryFulfillments' test.out

#- 497 QueryItemsV2
samples/cli/sample-apps Platform queryItemsV2 \
    --namespace $AB_NAMESPACE \
    --appType 'DEMO' \
    --availableDate 'q2PfjSao4T4AllM8' \
    --baseAppId 'JyJcKq1RquLOxMpJ' \
    --categoryPath '50zGjPryiqJQHPet' \
    --features 'Rhfb9nzPpAwq2LqC' \
    --includeSubCategoryItem 'false' \
    --itemName 'uMd0XlvVgvI7fXTC' \
    --itemStatus 'INACTIVE' \
    --itemType '["OPTIONBOX", "APP", "APP"]' \
    --limit '55' \
    --offset '27' \
    --region '2zza5oDE1brUT9ah' \
    --sectionExclusive 'false' \
    --sortBy '["name:asc", "updatedAt:asc", "updatedAt"]' \
    --storeId 'vhOGlHneOphJQnSG' \
    --tags '8IAQkCOMUocpiikb' \
    --targetNamespace 'CQxxI3w5cgFjhyaV' \
    --withTotal 'false' \
    > test.out 2>&1
eval_tap $? 497 'QueryItemsV2' test.out

#- 498 ImportStore1
samples/cli/sample-apps Platform importStore1 \
    --namespace $AB_NAMESPACE \
    --storeId 'ebDysdidwCjIz3l9' \
    --strictMode 'true' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 498 'ImportStore1' test.out

#- 499 ExportStore1
samples/cli/sample-apps Platform exportStore1 \
    --namespace $AB_NAMESPACE \
    --storeId '18gSGohfY0TY1ByA' \
    --body '{"itemIds": ["OAk7eGVxQexOjNgQ", "ZaYkbYWPkusAl7tr", "u1ytDjMuebWZBxMs"]}' \
    > test.out 2>&1
eval_tap $? 499 'ExportStore1' test.out

#- 500 FulfillRewardsV2
samples/cli/sample-apps Platform fulfillRewardsV2 \
    --namespace $AB_NAMESPACE \
    --userId 'oPOgWOhcJbGkxx5g' \
    --body '{"entitlementCollectionId": "zsQdtFTV4yctatq2", "entitlementOrigin": "Playstation", "metadata": {"DXTWepkGhUe6uxtN": {}, "hTAtzdEPDZctQUyU": {}, "mVMCjavk4sWuaiFj": {}}, "origin": "Twitch", "rewards": [{"currency": {"currencyCode": "X2oGaXOASacs707S", "namespace": "zatvtgqZcvIAzfv1"}, "item": {"itemId": "fRSodwaC3kzm96VY", "itemName": "ZSQ4oD838aXvbyv5", "itemSku": "tI0foDIjbpNHFEc4", "itemType": "tQaaybJClo0wzSaR"}, "quantity": 10, "type": "ITEM"}, {"currency": {"currencyCode": "hSIuwj0IfnLGUBRh", "namespace": "esyCKQk0Y6RmTsS0"}, "item": {"itemId": "12n9ugKThEYOl7qs", "itemName": "GQBCIo83udBqDHYw", "itemSku": "6p3BaFBf7yu3SIIh", "itemType": "xlCH0gLkOmgleUig"}, "quantity": 80, "type": "CURRENCY"}, {"currency": {"currencyCode": "wz29QUyEUauBI3rY", "namespace": "n2scBGf9LbsBh6dW"}, "item": {"itemId": "edi3mwoOUlaMfCyx", "itemName": "SAyizdN2DvvNiDm5", "itemSku": "ohPfs8gkCuaMp3jj", "itemType": "NgKgot9Z0k12HD47"}, "quantity": 21, "type": "ITEM"}], "source": "ACHIEVEMENT", "transactionId": "KEIljDWnTyoglN6D"}' \
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
    --userId 'D4Z5xANB7n6BLG03' \
    --body '{"transactionId": "gCK6GqrFKTuPFlyF"}' \
    > test.out 2>&1
eval_tap $? 504 'V2PublicFulfillAppleIAPItem' test.out

#- 505 FulfillItemsV3
samples/cli/sample-apps Platform fulfillItemsV3 \
    --namespace $AB_NAMESPACE \
    --transactionId 'P8Tuwpbs2s86NJC0' \
    --userId 'qWYsR7oJzLt7cM5i' \
    --body '{"items": [{"duration": 3, "endDate": "1976-02-01T00:00:00Z", "entitlementCollectionId": "Fx9hBYKhlkqYqqOb", "entitlementOrigin": "Twitch", "itemId": "PyEX9HmRCYEpTS83", "itemSku": "DUCBYCx8ilfbgal5", "language": "WgBJasvO3mrUjAYB", "metadata": {"WuscVY22fccxy0e4": {}, "A1FBlvjDaFd7abzk": {}, "rhplgp3LDcM98PNY": {}}, "orderNo": "gUgEMC3z7G9wxUmn", "origin": "Playstation", "quantity": 90, "region": "eIHg1unxtqtnD7wX", "source": "REDEEM_CODE", "startDate": "1994-10-04T00:00:00Z", "storeId": "sMmdvzbDfxY0JPch"}, {"duration": 80, "endDate": "1985-01-26T00:00:00Z", "entitlementCollectionId": "NtUI6S6IvKwQvI3q", "entitlementOrigin": "Epic", "itemId": "ccYlG7EzmE1NhKcA", "itemSku": "6F86aOVDvdY2nfjd", "language": "yqPXIc288ap4liqY", "metadata": {"oIpaZag6Bd7z2E1V": {}, "JVX6q7EheG9jPCQq": {}, "Ht4wJVysJrK7LCmg": {}}, "orderNo": "BXN2gLDrMfdPFazi", "origin": "Twitch", "quantity": 90, "region": "SXi4n51zZFlgUh0p", "source": "REWARD", "startDate": "1996-01-23T00:00:00Z", "storeId": "68j0M2ZEyjUX9PLw"}, {"duration": 6, "endDate": "1992-02-09T00:00:00Z", "entitlementCollectionId": "nf7uLzIv16TePM90", "entitlementOrigin": "IOS", "itemId": "rvMgT7MDeOqz2e63", "itemSku": "UeekDiv1k84uRak8", "language": "KRBBVe8cibQOnOcN", "metadata": {"FqlwOohIJqzScimi": {}, "g43s6SCKQYxS2nyj": {}, "XBucje2IpnrckOXd": {}}, "orderNo": "l0Ni5YMt7JjxSq2n", "origin": "Twitch", "quantity": 13, "region": "Hng64XvdcpC5pU6c", "source": "CONSUME_ENTITLEMENT", "startDate": "1980-11-14T00:00:00Z", "storeId": "HtJKq7h9Pg9e6WAT"}]}' \
    > test.out 2>&1
eval_tap $? 505 'FulfillItemsV3' test.out

#- 506 RetryFulfillItemsV3
samples/cli/sample-apps Platform retryFulfillItemsV3 \
    --namespace $AB_NAMESPACE \
    --transactionId 'axkKLonvTzarpxq1' \
    --userId 'AuYOHa49MyN4OguU' \
    > test.out 2>&1
eval_tap $? 506 'RetryFulfillItemsV3' test.out

#- 507 RevokeItemsV3
samples/cli/sample-apps Platform revokeItemsV3 \
    --namespace $AB_NAMESPACE \
    --transactionId 'cfXW6V1WhGPfXk64' \
    --userId 'nhDDrYyTdkDBdIid' \
    > test.out 2>&1
eval_tap $? 507 'RevokeItemsV3' test.out


rm -f "tmp.dat"

exit $EXIT_CODE