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
echo "1..484"

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
    --id 'nrCosb6mjIE4nGza' \
    > test.out 2>&1
eval_tap $? 3 'GetFulfillmentScript' test.out

#- 4 CreateFulfillmentScript
samples/cli/sample-apps Platform createFulfillmentScript \
    --id 'rNB0ZPv5aaI1LWsn' \
    --body '{"grantDays": "H8cHT1LaIVWMMOoS"}' \
    > test.out 2>&1
eval_tap $? 4 'CreateFulfillmentScript' test.out

#- 5 DeleteFulfillmentScript
samples/cli/sample-apps Platform deleteFulfillmentScript \
    --id '3yraUaflnjDZumZ5' \
    > test.out 2>&1
eval_tap $? 5 'DeleteFulfillmentScript' test.out

#- 6 UpdateFulfillmentScript
samples/cli/sample-apps Platform updateFulfillmentScript \
    --id 'zOhsnbIH9B9mRqUO' \
    --body '{"grantDays": "00NbkKAmWHZb9rJj"}' \
    > test.out 2>&1
eval_tap $? 6 'UpdateFulfillmentScript' test.out

#- 7 ListItemTypeConfigs
samples/cli/sample-apps Platform listItemTypeConfigs \
    > test.out 2>&1
eval_tap $? 7 'ListItemTypeConfigs' test.out

#- 8 CreateItemTypeConfig
samples/cli/sample-apps Platform createItemTypeConfig \
    --body '{"clazz": "VNicqnGjL2fqEmer", "dryRun": true, "fulfillmentUrl": "ySG9GtZikhLuoYaH", "itemType": "APP", "purchaseConditionUrl": "l0YYNSUdkiIM5UTK"}' \
    > test.out 2>&1
eval_tap $? 8 'CreateItemTypeConfig' test.out

#- 9 SearchItemTypeConfig
samples/cli/sample-apps Platform searchItemTypeConfig \
    --clazz 'eR5H23h265g2dRUH' \
    --itemType 'OPTIONBOX' \
    > test.out 2>&1
eval_tap $? 9 'SearchItemTypeConfig' test.out

#- 10 GetItemTypeConfig
samples/cli/sample-apps Platform getItemTypeConfig \
    --id 'QqfSUwIunpLTA7sD' \
    > test.out 2>&1
eval_tap $? 10 'GetItemTypeConfig' test.out

#- 11 UpdateItemTypeConfig
samples/cli/sample-apps Platform updateItemTypeConfig \
    --id '6FWSjt9k4hx8RFwI' \
    --body '{"clazz": "fc31Qws8OkABuWWX", "dryRun": false, "fulfillmentUrl": "VmSGFmsELkAxzWMJ", "purchaseConditionUrl": "iTnWMpdLUFbi5WbL"}' \
    > test.out 2>&1
eval_tap $? 11 'UpdateItemTypeConfig' test.out

#- 12 DeleteItemTypeConfig
samples/cli/sample-apps Platform deleteItemTypeConfig \
    --id 'I9qiAqw31BTcUv5D' \
    > test.out 2>&1
eval_tap $? 12 'DeleteItemTypeConfig' test.out

#- 13 QueryCampaigns
samples/cli/sample-apps Platform queryCampaigns \
    --namespace $AB_NAMESPACE \
    --limit '85' \
    --name 'y3FYWzxDKUSLCkLU' \
    --offset '95' \
    --tag 'cDtrE3p276N5fDps' \
    > test.out 2>&1
eval_tap $? 13 'QueryCampaigns' test.out

#- 14 CreateCampaign
samples/cli/sample-apps Platform createCampaign \
    --namespace $AB_NAMESPACE \
    --body '{"description": "hXPlf6h5M36na2kf", "discountConfig": {"categories": [{"categoryPath": "uwPuZbliUPVHRPrf", "includeSubCategories": false}, {"categoryPath": "rYFf6uCKNxLlY2ca", "includeSubCategories": true}, {"categoryPath": "Ob7dGrq4snaR9Aw4", "includeSubCategories": false}], "currencyCode": "vNBP5TWoIP1s57AL", "currencyNamespace": "mGg65NOZI1FgIHus", "discountAmount": 22, "discountPercentage": 59, "discountType": "AMOUNT", "items": [{"itemId": "zKVsP9wECzG6L1hk", "itemName": "LmUXgYPQRyd7Fa3e"}, {"itemId": "RmM3TssKGiSQpUUR", "itemName": "MZnniTmCCy4uZI1b"}, {"itemId": "TAKMuec1ffAq1OJD", "itemName": "Uj7MLy1JTf4vSBGC"}], "restrictType": "ITEMS_AND_CATEGORIES", "stackable": false}, "items": [{"extraSubscriptionDays": 15, "itemId": "19BE5NQY8GSWDZME", "itemName": "eZmwqS6i2dxozSCy", "quantity": 58}, {"extraSubscriptionDays": 74, "itemId": "CZUgtWK9bWPzuD48", "itemName": "idcYvmjVXyPzM71F", "quantity": 74}, {"extraSubscriptionDays": 2, "itemId": "lO2UScLKOhwzWP2n", "itemName": "VLQ0jQHsS0HzQOsl", "quantity": 91}], "maxRedeemCountPerCampaignPerUser": 71, "maxRedeemCountPerCode": 96, "maxRedeemCountPerCodePerUser": 61, "maxSaleCount": 51, "name": "Q9bIAbIZtj1p9sLF", "redeemEnd": "1995-03-21T00:00:00Z", "redeemStart": "1975-10-09T00:00:00Z", "redeemType": "ITEM", "status": "ACTIVE", "tags": ["jFlZRnQ49eY7nsqi", "cLkmeT1JfBIy9xeA", "UqFk3Tnj1NuDvlB4"], "type": "REDEMPTION"}' \
    > test.out 2>&1
eval_tap $? 14 'CreateCampaign' test.out

#- 15 GetCampaign
samples/cli/sample-apps Platform getCampaign \
    --campaignId 'm94vC8euVfzKC3M1' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 15 'GetCampaign' test.out

#- 16 UpdateCampaign
samples/cli/sample-apps Platform updateCampaign \
    --campaignId 'KLecclvko9bsTwaa' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "ZkdKQ7fW1J71jx3g", "discountConfig": {"categories": [{"categoryPath": "L2Hwny2OTqeTAwHH", "includeSubCategories": false}, {"categoryPath": "pv85sronFFgNCOqy", "includeSubCategories": true}, {"categoryPath": "zdm4DTk0UVyen1Ww", "includeSubCategories": true}], "currencyCode": "Y890rVGRsNl4GrLd", "currencyNamespace": "DqWOQDyrFDpX1pGZ", "discountAmount": 5, "discountPercentage": 63, "discountType": "PERCENTAGE", "items": [{"itemId": "vtrVet0vhcN0fN7v", "itemName": "GY4HwXMtUfQO1YZ0"}, {"itemId": "mYRDoJeM4oKGcsmS", "itemName": "OusUrpPIyF7yjtTy"}, {"itemId": "hhJmaCwj8s0bwyxk", "itemName": "fqaYkYLuzkZp08nW"}], "restrictType": "NONE", "stackable": true}, "items": [{"extraSubscriptionDays": 50, "itemId": "q0gFRajMAsDiyEwP", "itemName": "dygJyK4qTOX30CT4", "quantity": 4}, {"extraSubscriptionDays": 35, "itemId": "NgOtaDUkEcrtiKiR", "itemName": "0cTLTTdInHSgbNj7", "quantity": 72}, {"extraSubscriptionDays": 55, "itemId": "3MtmNdOPyin7xPBa", "itemName": "zv8DifbRUFk3mWjI", "quantity": 97}], "maxRedeemCountPerCampaignPerUser": 14, "maxRedeemCountPerCode": 29, "maxRedeemCountPerCodePerUser": 66, "maxSaleCount": 90, "name": "rwe8IT5DPiflwJVX", "redeemEnd": "1994-09-01T00:00:00Z", "redeemStart": "1979-04-30T00:00:00Z", "redeemType": "ITEM", "status": "INACTIVE", "tags": ["gV5A8azn9MX34M5F", "xCFr8mpslf4EQfQe", "3DLiAWJdwTQKs6VN"]}' \
    > test.out 2>&1
eval_tap $? 16 'UpdateCampaign' test.out

#- 17 RenameBatch
samples/cli/sample-apps Platform renameBatch \
    --campaignId 'fDZyaz82uyakLUKF' \
    --namespace $AB_NAMESPACE \
    --body '{"newName": "TjKvPjHN3Punexkz", "oldName": "oNT8nF6qgwKJ2sM9"}' \
    > test.out 2>&1
eval_tap $? 17 'RenameBatch' test.out

#- 18 QueryCampaignBatchNames
samples/cli/sample-apps Platform queryCampaignBatchNames \
    --campaignId '6UyCTADF6ZBkcmJC' \
    --namespace $AB_NAMESPACE \
    --batchName 'lCD0IeHywgKycsqe' \
    --limit '11' \
    > test.out 2>&1
eval_tap $? 18 'QueryCampaignBatchNames' test.out

#- 19 GetCampaignDynamic
samples/cli/sample-apps Platform getCampaignDynamic \
    --campaignId 'LkOa2ve7HWIQjSLq' \
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
    --body '{"appConfig": {"appName": "HtE3E0d5JcS9fyFl"}, "customConfig": {"connectionType": "INSECURE", "grpcServerAddress": "1hTBb3pPvlwlD1u6"}, "extendType": "CUSTOM"}' \
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
    --body '{"appConfig": {"appName": "hGQfrG0muKjw6mg7"}, "customConfig": {"connectionType": "TLS", "grpcServerAddress": "yuxvXbzaq1vj6bvQ"}, "extendType": "APP"}' \
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
    --storeId 'v7yD22xVM4RTx7EZ' \
    > test.out 2>&1
eval_tap $? 31 'GetRootCategories' test.out

#- 32 CreateCategory
samples/cli/sample-apps Platform createCategory \
    --namespace $AB_NAMESPACE \
    --storeId 'GB0YGkq22p78OmcD' \
    --body '{"categoryPath": "HiYqmGAiLgaLkb3i", "localizationDisplayNames": {"YBhPIR4DDHWeSWXS": "kJY6sqt4AeHuUujT", "U6zdRaZfAOupZV0L": "TndGAjw5a5JbixeL", "FaBaYUaViXIJuqNB": "EPFS1GacKv55smzC"}}' \
    > test.out 2>&1
eval_tap $? 32 'CreateCategory' test.out

#- 33 ListCategoriesBasic
samples/cli/sample-apps Platform listCategoriesBasic \
    --namespace $AB_NAMESPACE \
    --storeId 'L7GN6sX8iRgbasDR' \
    > test.out 2>&1
eval_tap $? 33 'ListCategoriesBasic' test.out

#- 34 GetCategory
samples/cli/sample-apps Platform getCategory \
    --categoryPath 'n7qVByDmycV6FLE3' \
    --namespace $AB_NAMESPACE \
    --storeId 'xNr2K4e4YbMyffCu' \
    > test.out 2>&1
eval_tap $? 34 'GetCategory' test.out

#- 35 UpdateCategory
samples/cli/sample-apps Platform updateCategory \
    --categoryPath 'kdfADCGEs1hbF0z0' \
    --namespace $AB_NAMESPACE \
    --storeId 'nBnkWevdbKfZdAuc' \
    --body '{"localizationDisplayNames": {"jupeQq7w9GqddHaX": "kTQV4eNpMbFyPKIu", "LrOdbNeAmsuuXlZb": "tuXfQ8PnK3CBWavz", "tbT0w8CMLXZxV9tI": "nZgqxCjEGAftGpR6"}}' \
    > test.out 2>&1
eval_tap $? 35 'UpdateCategory' test.out

#- 36 DeleteCategory
samples/cli/sample-apps Platform deleteCategory \
    --categoryPath 'Q7jGrkktauVcwP1y' \
    --namespace $AB_NAMESPACE \
    --storeId 'Paw8mpIqPnqID8cW' \
    > test.out 2>&1
eval_tap $? 36 'DeleteCategory' test.out

#- 37 GetChildCategories
samples/cli/sample-apps Platform getChildCategories \
    --categoryPath '7GzTJDsVq0DxicsZ' \
    --namespace $AB_NAMESPACE \
    --storeId 'gYJ81bBfGkXdIYow' \
    > test.out 2>&1
eval_tap $? 37 'GetChildCategories' test.out

#- 38 GetDescendantCategories
samples/cli/sample-apps Platform getDescendantCategories \
    --categoryPath 'Xpbal2ylv9cM5Gu5' \
    --namespace $AB_NAMESPACE \
    --storeId 'ZWcXionyflVOPnxh' \
    > test.out 2>&1
eval_tap $? 38 'GetDescendantCategories' test.out

#- 39 QueryCodes
samples/cli/sample-apps Platform queryCodes \
    --campaignId 'CvXmY0kcsq6ZfWIe' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --batchName 'HHbH731pUo1DyZgG' \
    --batchNo '[95, 10, 8]' \
    --code 'KygGc4kOnHOebtng' \
    --limit '40' \
    --offset '36' \
    --withBatchName 'false' \
    > test.out 2>&1
eval_tap $? 39 'QueryCodes' test.out

#- 40 CreateCodes
samples/cli/sample-apps Platform createCodes \
    --campaignId 'TTCFrgDIgT9sIDke' \
    --namespace $AB_NAMESPACE \
    --body '{"batchName": "4Pt2rANDzm91rdJs", "codeValue": "0vYagwt5mqaX6hf6", "quantity": 77}' \
    > test.out 2>&1
eval_tap $? 40 'CreateCodes' test.out

#- 41 Download
samples/cli/sample-apps Platform download \
    --campaignId 'wK40Kwd5DSoG2KB1' \
    --namespace $AB_NAMESPACE \
    --batchName 'H6lTEplJIrZRxwMG' \
    --batchNo '[71, 100, 99]' \
    --withBatchName 'false' \
    > test.out 2>&1
eval_tap $? 41 'Download' test.out

#- 42 BulkDisableCodes
samples/cli/sample-apps Platform bulkDisableCodes \
    --campaignId 'GTbVL7zf4sGPksGD' \
    --namespace $AB_NAMESPACE \
    --batchName 'PUXGrJv9RBO504WQ' \
    --batchNo '[15, 18, 98]' \
    > test.out 2>&1
eval_tap $? 42 'BulkDisableCodes' test.out

#- 43 BulkEnableCodes
samples/cli/sample-apps Platform bulkEnableCodes \
    --campaignId 'XYDnjUCyc52Z2MAi' \
    --namespace $AB_NAMESPACE \
    --batchName 'dZTeeLWPLXfnUnsI' \
    --batchNo '[12, 28, 16]' \
    > test.out 2>&1
eval_tap $? 43 'BulkEnableCodes' test.out

#- 44 QueryRedeemHistory
samples/cli/sample-apps Platform queryRedeemHistory \
    --campaignId 'VhH01Fv38DOK6BR1' \
    --namespace $AB_NAMESPACE \
    --code 'KRr7qY1KSuyEtNZc' \
    --limit '72' \
    --offset '94' \
    --userId 'SPJgrmrHzcrGOTH2' \
    > test.out 2>&1
eval_tap $? 44 'QueryRedeemHistory' test.out

#- 45 GetCode
samples/cli/sample-apps Platform getCode \
    --code 'oa89P7BsdP54xJr9' \
    --namespace $AB_NAMESPACE \
    --redeemable 'true' \
    --withBatchName 'false' \
    > test.out 2>&1
eval_tap $? 45 'GetCode' test.out

#- 46 DisableCode
samples/cli/sample-apps Platform disableCode \
    --code 'yB2VubQI1mMxmsI0' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 46 'DisableCode' test.out

#- 47 EnableCode
samples/cli/sample-apps Platform enableCode \
    --code 'fzC3iWhWaJRwEynv' \
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
    --body '{"currencyCode": "VierddMHuOQQoK2I", "currencySymbol": "2p23CZUrq5vcmDp4", "currencyType": "VIRTUAL", "decimals": 12, "localizationDescriptions": {"oiRloAZIo8wQ6uXP": "CzaVJdxkzoToBFvx", "tVCS9yftcAoC6jRc": "r5zkVwngTiOyLZro", "cng8lXb7aDifiGSp": "gRjCb3rwlDoGkHba"}}' \
    > test.out 2>&1
eval_tap $? 52 'CreateCurrency' test.out

#- 53 UpdateCurrency
samples/cli/sample-apps Platform updateCurrency \
    --currencyCode 'orgjfhTRHtpG5C01' \
    --namespace $AB_NAMESPACE \
    --body '{"localizationDescriptions": {"H8bnRrvmQwbIhS9R": "7Z7CmoRj8NpEBs1T", "QFtOKZW5zszB4Mxo": "DrK5cShrSh0P92Ol", "WerMCigb7IcQwB9T": "wPiG9tjmQIEsLYOu"}}' \
    > test.out 2>&1
eval_tap $? 53 'UpdateCurrency' test.out

#- 54 DeleteCurrency
samples/cli/sample-apps Platform deleteCurrency \
    --currencyCode 'RicawytOyoZnP4nC' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 54 'DeleteCurrency' test.out

#- 55 GetCurrencyConfig
samples/cli/sample-apps Platform getCurrencyConfig \
    --currencyCode 'pwunfXRG51Epa30l' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 55 'GetCurrencyConfig' test.out

#- 56 GetCurrencySummary
samples/cli/sample-apps Platform getCurrencySummary \
    --currencyCode 'd11uCK9DcfFdQdAu' \
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
    --body '{"data": [{"id": "udGxQ6NjChpGXCHw", "rewards": [{"currency": {"currencyCode": "SauQOfNMqTtIUfnv", "namespace": "DERlbBJEk2aYAraS"}, "item": {"itemId": "sUqcyCbLTVKMgP17", "itemName": "4mTmHv2W7Bw0QVV6", "itemSku": "4kiTVtUzTtQDaY0j", "itemType": "C3nT2RKinkWK01sp"}, "quantity": 75, "type": "CURRENCY"}, {"currency": {"currencyCode": "joiacjhjDLJ8YIcA", "namespace": "7jv5XteIvkydnLsL"}, "item": {"itemId": "ILEmKiHPJsX8OWaL", "itemName": "xve0kjPpliOxEgQy", "itemSku": "6JcHyfXtLEd2j9pR", "itemType": "26eOZLXvLotfsNe6"}, "quantity": 90, "type": "CURRENCY"}, {"currency": {"currencyCode": "FeNXZvClovRVU8O8", "namespace": "pzqHJtQRNTrYm916"}, "item": {"itemId": "KqRrkgK4mq5U2Lrg", "itemName": "jKGN7MogMH3rOkyu", "itemSku": "CkBbIJVM57pqAQ48", "itemType": "GUKXy0HxUsJQCTxc"}, "quantity": 81, "type": "ITEM"}]}, {"id": "IeoxVZ4bwlseMTrE", "rewards": [{"currency": {"currencyCode": "q7bGOHQbZgY0BheS", "namespace": "2f1gySjhW9mbetE8"}, "item": {"itemId": "PAUnyRG8A2SzmWKj", "itemName": "nxBV3pxJOIwfZMpm", "itemSku": "Yod6ZNrvYNV9Xxus", "itemType": "8dHMFWnvFMKzqXS5"}, "quantity": 76, "type": "ITEM"}, {"currency": {"currencyCode": "vZjoMACmp35p9v5j", "namespace": "0g3KLm5UWIDraCb8"}, "item": {"itemId": "x5e5elve7h6ClxdO", "itemName": "VVLv9DV7dzIjLSZX", "itemSku": "34NOIWj4yyhUBRWH", "itemType": "bG7XDPnDtf0LEjDN"}, "quantity": 82, "type": "ITEM"}, {"currency": {"currencyCode": "6rTpkoLL0iOCPUw8", "namespace": "KaqgHlv08x9Yg8bp"}, "item": {"itemId": "nSQmUhVd3fGjw4Fg", "itemName": "6KaJsePyn2gups9E", "itemSku": "VELtM8sz278Gcqjj", "itemType": "uohQ7C4NP10qmPzR"}, "quantity": 53, "type": "ITEM"}]}, {"id": "XphyqUWCyS2o7nT2", "rewards": [{"currency": {"currencyCode": "WCdGr4KTRMYmIwF3", "namespace": "JEt2FXw6ZiPYxtIj"}, "item": {"itemId": "xeiXsUUWp20nGvmz", "itemName": "Q2If1vnHMoQdQDzG", "itemSku": "TqbYHa9J6bYIoPqC", "itemType": "H7AyhUQfS27tpgkj"}, "quantity": 100, "type": "CURRENCY"}, {"currency": {"currencyCode": "NuYQqAriJLVl8QGq", "namespace": "OTUxzpJOGyQYxDLI"}, "item": {"itemId": "7JVSQVz9MIuCnNr8", "itemName": "oEoU1F8ju1fyiYj1", "itemSku": "yGxXPOPGdsY8TBoE", "itemType": "M3CnDzkjSkPUJK9j"}, "quantity": 27, "type": "CURRENCY"}, {"currency": {"currencyCode": "uffcj5xZpjYSm5EU", "namespace": "sjQ5JQJh3M42YKqo"}, "item": {"itemId": "zqkWOOItCy8ctYIZ", "itemName": "dA7kX36LchVfgYJF", "itemSku": "b2FUNxebuU7LNSy9", "itemType": "pyXfwd2zSkRGw2ya"}, "quantity": 5, "type": "ITEM"}]}]}' \
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
    --body '{"data": [{"platform": "XBOX", "platformDlcIdMap": {"5xUmQqqM8ouATO7H": "QwATHU785mAcIJg3", "dJ6pKsmOvBGPRm7C": "ywxX5DNjK7rsealg", "4WNBTZ8ynxffao6k": "judCeFBdWPl6m3gh"}}, {"platform": "STEAM", "platformDlcIdMap": {"YaHnBqrwavMR9zKu": "I0jLHYEvkb8trEss", "Ta7ihLihUoResGmd": "wFHQrkEbVts3HKg8", "tXXbwyTj0niEqrUw": "OJATcznOcZ8LDsa0"}}, {"platform": "XBOX", "platformDlcIdMap": {"Zh6UcEutKWEeWNDm": "jBZGqIYCZblUrRdj", "3oZSs8B7HJaJs8rf": "WolUV7lJNPzbIeHc", "KpCXa0Yzy0Hh8BhR": "yEoiBbAwRY7puSOJ"}}]}' \
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
    --appType 'DLC' \
    --entitlementClazz 'OPTIONBOX' \
    --entitlementName 'r7UCbJ7EUg29wrIB' \
    --itemId '["iBVbKyxbdExMX6W7", "fRZ4fZoZ4Qxgcf30", "MZX9IX3AQoeG5aAQ"]' \
    --limit '11' \
    --offset '92' \
    --origin 'Steam' \
    --userId 'DS5mQF3MstiMAr29' \
    > test.out 2>&1
eval_tap $? 63 'QueryEntitlements1' test.out

#- 64 QueryEntitlements
samples/cli/sample-apps Platform queryEntitlements \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --itemIds '["8jWriYgSUzvFPgIo", "tha2eGybZUdO2xPc", "LXjsDL0TT37TcTdY"]' \
    --limit '94' \
    --offset '10' \
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
    --body '{"entitlementGrantList": [{"collectionId": "dCGcdfl70OalfKX5", "endDate": "1987-02-02T00:00:00Z", "grantedCode": "HeKzh1BOjltpEPus", "itemId": "drxkvLIEDyNTR83y", "itemNamespace": "C3BDOzZIIwj9sJjW", "language": "wIwK-JaSL-013", "metadata": {"UV4yckrlxkBqu2R0": {}, "EjPmZv3j1K5dczJF": {}, "rOgeyzphMLuDKS8u": {}}, "origin": "System", "quantity": 14, "region": "4OvBAJMATecQ6Vr6", "source": "REFERRAL_BONUS", "startDate": "1980-06-02T00:00:00Z", "storeId": "gdxLgfNAv4dqoUtg"}, {"collectionId": "WaDwQMUB9Kk0V9M8", "endDate": "1998-08-20T00:00:00Z", "grantedCode": "aZOCyA1mPUM9hpjH", "itemId": "uPwNER0d4uxgDSJ5", "itemNamespace": "90zqh1UVoJwiUaQn", "language": "LgY_krBP", "metadata": {"1YqlJMDGh921jex8": {}, "VkbxaTqPrH0gQL2P": {}, "2ynZoSHnjAIdQAHL": {}}, "origin": "Nintendo", "quantity": 83, "region": "91PTjUOsYKhnkfzn", "source": "REFERRAL_BONUS", "startDate": "1979-02-23T00:00:00Z", "storeId": "GhLHCwrxQhSYNP6t"}, {"collectionId": "YlipWgRIwuLFRtGP", "endDate": "1974-06-09T00:00:00Z", "grantedCode": "6h1rcpJ9iGNACASc", "itemId": "TwAA2HhYy7olROJJ", "itemNamespace": "kAZnr5NlQqdIZNUc", "language": "xFlu-ucuq", "metadata": {"Lw08ueRY7dBsWZ5l": {}, "YuHs4EaR1RiLmB9O": {}, "WmXYHlfkY1tacZiP": {}}, "origin": "Playstation", "quantity": 17, "region": "WOQKVNTeXFUEFhUD", "source": "GIFT", "startDate": "1991-05-23T00:00:00Z", "storeId": "95xy0rjWyDeXdeDC"}], "userIds": ["eYO1TqUTC5dOMphX", "810OmDyIPeCFJbdT", "OA2sF7bU4q84MqFR"]}' \
    > test.out 2>&1
eval_tap $? 67 'GrantEntitlements' test.out

#- 68 RevokeEntitlements
samples/cli/sample-apps Platform revokeEntitlements \
    --namespace $AB_NAMESPACE \
    --body '["YvBdlcUzkitd9Mrx", "cpp2EzTa688onaOc", "ocyHMEQ4qRV3EuRq"]' \
    > test.out 2>&1
eval_tap $? 68 'RevokeEntitlements' test.out

#- 69 GetEntitlement
samples/cli/sample-apps Platform getEntitlement \
    --entitlementId 'EyZRlnUrCPGgahOy' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 69 'GetEntitlement' test.out

#- 70 QueryFulfillmentHistories
samples/cli/sample-apps Platform queryFulfillmentHistories \
    --namespace $AB_NAMESPACE \
    --limit '86' \
    --offset '30' \
    --status 'SUCCESS' \
    --userId 'pkKZ5oXwm9Z8UxfE' \
    > test.out 2>&1
eval_tap $? 70 'QueryFulfillmentHistories' test.out

#- 71 QueryIAPClawbackHistory
samples/cli/sample-apps Platform queryIAPClawbackHistory \
    --namespace $AB_NAMESPACE \
    --endTime 'e0hHNYG2RkWfBmQm' \
    --eventType 'REVOKED' \
    --externalOrderId 'pmITAoqDmwJ7gwHm' \
    --limit '75' \
    --offset '86' \
    --startTime 'oRfZxSo27HSNPwyO' \
    --status 'IGNORED' \
    --userId 'MRMO504CC9pHwJEe' \
    > test.out 2>&1
eval_tap $? 71 'QueryIAPClawbackHistory' test.out

#- 72 MockPlayStationStreamEvent
samples/cli/sample-apps Platform mockPlayStationStreamEvent \
    --namespace $AB_NAMESPACE \
    --body '{"body": {"account": "2cSFXZ5Dm1rhKO9w", "additionalData": {"entitlement": [{"clientTransaction": [{"amountConsumed": 74, "clientTransactionId": "8ckH4t7YD85MTNH2"}, {"amountConsumed": 96, "clientTransactionId": "lsDcdtF1KsSXMCNI"}, {"amountConsumed": 51, "clientTransactionId": "Vsv01An4m2deblee"}], "entitlementId": "EVlGjWXv16HrcGZP", "usageCount": 9}, {"clientTransaction": [{"amountConsumed": 5, "clientTransactionId": "Jms8EYsSzG05m9if"}, {"amountConsumed": 63, "clientTransactionId": "NZXqtRiOVOzSt6La"}, {"amountConsumed": 1, "clientTransactionId": "J9BLnd5Aqtv8My9a"}], "entitlementId": "X3SyXgk5e09CGU2M", "usageCount": 20}, {"clientTransaction": [{"amountConsumed": 71, "clientTransactionId": "ae29u2XLvdYzWeb3"}, {"amountConsumed": 54, "clientTransactionId": "GcjrAWF35oCo6bXc"}, {"amountConsumed": 20, "clientTransactionId": "iYQcetOYFX2JSz1L"}], "entitlementId": "AHhwt8SJqmSgUA7t", "usageCount": 7}], "purpose": "QNHcCjLNTNP4KOqq"}, "originalTitleName": "VwVfySNUcOv1SWfo", "paymentProductSKU": "RnAwku8WyMLhEuxl", "purchaseDate": "xxX3iStxgwmAJm4q", "sourceOrderItemId": "uvdZpQ29kUvGtAn6", "titleName": "RoIJ9b6QP9xxkkho"}, "eventDomain": "PxD2CPOHa6CfY22Y", "eventSource": "XTTBQP1fjpTp98aX", "eventType": "4rzVQfeYt6O4HG6S", "eventVersion": 79, "id": "5g2jy9YDy2IwMhIM", "timestamp": "6TCH2n9w1o8vk4q3"}' \
    > test.out 2>&1
eval_tap $? 72 'MockPlayStationStreamEvent' test.out

#- 73 MockXblClawbackEvent
samples/cli/sample-apps Platform mockXblClawbackEvent \
    --namespace $AB_NAMESPACE \
    --body '{"data": {"eventDate": "uA7rkt0AWGHsj7h2", "eventState": "PAlOs1jXFVeExdTl", "lineItemId": "EdyefrOBeV6etg6o", "orderId": "LtfoPCTGlWC2vLt7", "productId": "BPgPaOJ6LP3EqZwm", "productType": "hSKQJbOg6p1ngkFE", "purchasedDate": "zjwKxwBnoEJlBIW0", "sandboxId": "vUzfzepJLUkgxcZM", "skuId": "bcY3ZE5pss6TqxUI", "subscriptionData": {"consumedDurationInDays": 25, "dateTime": "N9B2CPVPQGACMpKg", "durationInDays": 77, "recurrenceId": "BEeiG4xQ8KLe4XFW"}}, "datacontenttype": "OMw6JvJKpO25L2nE", "id": "AKBHMaEgOmIqqJMU", "source": "hZs1D07dpddm6u3D", "specVersion": "SPAd7yyAyFv0mPAo", "subject": "1z9eV2sDR6UwROk6", "time": "HTzQrRRtHC5idyGJ", "traceparent": "7gDwOuGU4LjD1Vpv", "type": "ZZ7QVhrdRzqO7Nka"}' \
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
    --body '{"appAppleId": 52, "bundleId": "V72YnyhRTJUHl6i7", "issuerId": "dPMiKzUvWDA2D4SR", "keyId": "zDcHnelejtmbvQnZ", "password": "ufhuXdFkmpEAvQNM", "version": "V1"}' \
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
    --body '{"sandboxId": "btvb49cm86pQ4Xeg"}' \
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
    --body '{"applicationName": "1TgGiVkwGe0ERTOD", "notificationTokenAudience": "E51opfleXp7OWw0d", "notificationTokenEmail": "xPBld8rWhOK3dB3V", "packageName": "CwMDRCc3I4s21Vk6", "serviceAccountId": "Tvg7B7qSM01m99nG"}' \
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
    --body '{"data": [{"itemIdentity": "Tt37KhuNXQ53FsQL", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"GFiD7PQ5MDHuPO5X": "RUu3NdFi4r33QyIe", "ADiabu67L8ahfs7o": "SoF1oJYknQFH7urb", "tasYQPpwJuwZveIL": "dQ1p44NLDbuLcuDF"}}, {"itemIdentity": "bvzSvIyilzEOQ0Oi", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"YyCJypYjfEAzGkdD": "VKs10Kqz8jcmTtyC", "jFU0M9UykuTGFbqn": "WQyaMrYfdwkze5PG", "Lnf8gtPZcG1JunMz": "GNhwgaxJ66q87fIq"}}, {"itemIdentity": "1zm4DpOVeXsVcLcR", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"mfX3POESL7nJToW9": "pJFKPlC5j7ju9Nvg", "FDL7wS9Hpyinz7dM": "NU3JsEWKWFLwUUNo", "pemXQdRvq9Z9a9Uh": "6P4ZNdlExN6GHmEH"}}]}' \
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
    --body '{"appId": "j8VjfW7LPYbE1CKL", "appSecret": "Sbvhw7Qik6Nmo5fe"}' \
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
    --body '{"backOfficeServerClientId": "MEeey9Fk7McCyeOv", "backOfficeServerClientSecret": "ZZXyuDMTGBukALB8", "enableStreamJob": false, "environment": "kaAcJfLkl3cME67C", "streamName": "d8wACXXKErlEDANI", "streamPartnerName": "ns9ph7ZZP4gtWOgR"}' \
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
    --body '{"backOfficeServerClientId": "fXOp8EafdL58zOZh", "backOfficeServerClientSecret": "1ADxUVhV70IKnuPi", "enableStreamJob": false, "environment": "lYJOj1GAfaRvONC7", "streamName": "ruXZfHqgkafeUdXy", "streamPartnerName": "jYdO1aVfNkEAdkUx"}' \
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
    --body '{"appId": "mrSABF7mdU6wqyDi", "publisherAuthenticationKey": "uCKXFnAFO5qIwcLJ"}' \
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
    --body '{"clientId": "g9mrT5P07TymRJhC", "clientSecret": "RcukkR5hmFVt69PV", "organizationId": "UTzlnQ04VwuTBgqI"}' \
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
    --body '{"enableClawback": true, "entraAppClientId": "Ku3yAjmOHZfKFA75", "entraAppClientSecret": "28nA0paRNeGyqkXm", "entraTenantId": "5VSFCzs6wdEE1D3O", "relyingPartyCert": "75KERBj8YhrtZZRK"}' \
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
    --password 'sPBcNcJgrE870bvJ' \
    > test.out 2>&1
eval_tap $? 105 'UpdateXblBPCertFile' test.out

#- 106 QueryThirdPartyNotifications
samples/cli/sample-apps Platform queryThirdPartyNotifications \
    --namespace $AB_NAMESPACE \
    --endDate 'wifY0k5dzYSc00vF' \
    --externalId '03h91Oo6VWATtauc' \
    --limit '59' \
    --offset '68' \
    --source 'STEAM' \
    --startDate 'ycfGBNrUyq9sLyJU' \
    --status 'IGNORED' \
    --type 'F8DPSSo0d2tfKZzk' \
    > test.out 2>&1
eval_tap $? 106 'QueryThirdPartyNotifications' test.out

#- 107 QueryThirdPartySubscription
samples/cli/sample-apps Platform queryThirdPartySubscription \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --groupId 'w7xkRPx1XOwFCLIs' \
    --limit '0' \
    --offset '28' \
    --platform 'APPLE' \
    --productId 'GTgRKtDcwx4F7yK4' \
    --userId 'ZRjgRZYpogLj6TdT' \
    > test.out 2>&1
eval_tap $? 107 'QueryThirdPartySubscription' test.out

#- 108 GetIAPOrderConsumeDetails
samples/cli/sample-apps Platform getIAPOrderConsumeDetails \
    --iapOrderNo '66P81HXq91QKfxyX' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 108 'GetIAPOrderConsumeDetails' test.out

#- 109 DownloadInvoiceDetails
samples/cli/sample-apps Platform downloadInvoiceDetails \
    --namespace $AB_NAMESPACE \
    --endTime 'fR6wS28ZCYy4lhXx' \
    --feature 'DvEQOWKcktmorgPm' \
    --itemId 'aSqaD64c10YCKzI0' \
    --itemType 'EXTENSION' \
    --startTime 'aVsrdo9jCLbcBszd' \
    > test.out 2>&1
eval_tap $? 109 'DownloadInvoiceDetails' test.out

#- 110 GenerateInvoiceSummary
samples/cli/sample-apps Platform generateInvoiceSummary \
    --namespace $AB_NAMESPACE \
    --endTime 'Z6WzadQ6bI4cP12K' \
    --feature 'Lt7Ua3vjxpYMogvD' \
    --itemId 'S96AtdgVvNzmfWyC' \
    --itemType 'OPTIONBOX' \
    --startTime 'FGKjA5nb6Bhw832j' \
    > test.out 2>&1
eval_tap $? 110 'GenerateInvoiceSummary' test.out

#- 111 SyncInGameItem
samples/cli/sample-apps Platform syncInGameItem \
    --namespace $AB_NAMESPACE \
    --storeId 'RotbpuGUs13Vfpsf' \
    --body '{"categoryPath": "ezAyDnAQ1aZeDXnS", "targetItemId": "1cUicwePrtxSIVMH", "targetNamespace": "CvrkIrGCUkm1EFjy"}' \
    > test.out 2>&1
eval_tap $? 111 'SyncInGameItem' test.out

#- 112 CreateItem
samples/cli/sample-apps Platform createItem \
    --namespace $AB_NAMESPACE \
    --storeId 'oJrerMSnq4DG8SYR' \
    --body '{"appId": "8m436TBLlEcv7IeL", "appType": "SOFTWARE", "baseAppId": "wc4PIqDBh8yv38RA", "boothName": "CS3sjg4TNgUfLxgd", "categoryPath": "TFIj9EHgbDw9vB7Z", "clazz": "ZlV2mfvULuM482pO", "displayOrder": 80, "entitlementType": "CONSUMABLE", "ext": {"txTkY7Xax5PgsQ2E": {}, "bKEGVKiz4ebeQp3H": {}, "7huGkno7APPTTpU6": {}}, "features": ["SkOpGKts9U6iQW2g", "YZxvgnC6ScC2wad3", "4QfHP1aNPSzUMps7"], "flexible": false, "images": [{"as": "jdXNsKL0TOE7pK1T", "caption": "OFL3fm36RcbEifAi", "height": 4, "imageUrl": "048EYsR77rMOJvYw", "smallImageUrl": "d6mJ5hr2sJ9xvi8s", "width": 9}, {"as": "izszER9wAFLLvqZf", "caption": "axnnAT51meRpFMi1", "height": 32, "imageUrl": "W1EpgMcO5qXTJXlk", "smallImageUrl": "43teNEFBqnytQMGm", "width": 27}, {"as": "XYjFTRCVtLl8TLew", "caption": "klXyABSJWM3BhEzk", "height": 28, "imageUrl": "e7RF7XZoKWtcbPFZ", "smallImageUrl": "rIF9LfpU74TSw2d6", "width": 99}], "inventoryConfig": {"customAttributes": {"K6mh5uZQYdgflH3c": {}, "ZYbyp4rv0yzJR2Q4": {}, "i556kAaBqeJZ1wxN": {}}, "serverCustomAttributes": {"KWBvspzMp4MwFkYz": {}, "u6n8rXA2Lip3IvAM": {}, "EwHiBdzYdYJG0dNJ": {}}, "slotUsed": 34}, "itemIds": ["8FpPR3XD0hGLq8iB", "rQNq1iAGijB56iM4", "mAd82mc29AHayCNW"], "itemQty": {"R1g1J0yW6GAiiKrS": 70, "Pv0QO3mBMkwglFGS": 12, "nYxkcgwWbZAuwZyd": 0}, "itemType": "BUNDLE", "listable": false, "localizations": {"iMMgYiDu1hVRxtSB": {"description": "Olfs5TVdkACVCXG0", "localExt": {"iNrw35uRmAyj1ddA": {}, "YAJoqLY1373ng6tf": {}, "FapcXSUgM6AZptR5": {}}, "longDescription": "yhHlPrdx0Mblea5E", "title": "z35lWbfFYCD5uaUw"}, "VD6DeGTjrIYKJoja": {"description": "CaBmRXUUtbRUxksZ", "localExt": {"zTJIxaBJqNwy8scQ": {}, "WudL3EZQ7qaoMv60": {}, "UNvfbjKcAXIAgwIU": {}}, "longDescription": "pvDZi94lPBKgr0MP", "title": "NQ3rcBJ4M8dilqa1"}, "6HS7wDrw1ITj04DH": {"description": "KqXmGQt6vgIBiyts", "localExt": {"TJB6EY7ECfFDBFgU": {}, "KNT52ah9RxTtnGyR": {}, "G8Bq6octnk5Ij7Dz": {}}, "longDescription": "3APV2qgIfItw6OLZ", "title": "OO5i2HiXR5M9MqRn"}}, "lootBoxConfig": {"rewardCount": 81, "rewards": [{"lootBoxItems": [{"count": 70, "duration": 97, "endDate": "1997-05-31T00:00:00Z", "itemId": "Mkm3RvLCCcLgxkKj", "itemSku": "uXqdAHHA7zIK1zK5", "itemType": "VTd0dITEiHop4mag"}, {"count": 75, "duration": 39, "endDate": "1988-06-10T00:00:00Z", "itemId": "TkanNVVe2CDqvEDa", "itemSku": "3OJNbkJXmitibCzl", "itemType": "oXkssHFkJ8CQT1l2"}, {"count": 85, "duration": 34, "endDate": "1995-04-15T00:00:00Z", "itemId": "PGI14vMiFMXHg7lg", "itemSku": "1vkQdKmpqr7MboLH", "itemType": "iykgBAzb8Hclg3rn"}], "name": "oOTeyHMzHtxoDRvM", "odds": 0.3990115094687784, "type": "REWARD", "weight": 34}, {"lootBoxItems": [{"count": 65, "duration": 64, "endDate": "1982-03-19T00:00:00Z", "itemId": "UkwW0dTNVSFBhwdO", "itemSku": "BfbtNOHks3LQzn3G", "itemType": "xkcyv4VZ2x0u2jst"}, {"count": 2, "duration": 56, "endDate": "1986-06-28T00:00:00Z", "itemId": "pDr7gHYjtFZL5rY5", "itemSku": "vecHumlvsxjzJN25", "itemType": "5jtDAJRpAiTwsUT6"}, {"count": 19, "duration": 90, "endDate": "1990-10-20T00:00:00Z", "itemId": "wJS4JDtUYdW2Z3vu", "itemSku": "g1XwDS4t7a5fsDPl", "itemType": "d3g16plftpVZJDCo"}], "name": "chAVmqPwn6BXsHqU", "odds": 0.40242365474122854, "type": "PROBABILITY_GROUP", "weight": 42}, {"lootBoxItems": [{"count": 81, "duration": 13, "endDate": "1979-01-26T00:00:00Z", "itemId": "08V5HN4GQdCySB6m", "itemSku": "OiYIVZDmkvOf0cVy", "itemType": "CtB9JKb0pJYNsuJV"}, {"count": 15, "duration": 75, "endDate": "1989-04-14T00:00:00Z", "itemId": "gH6Jkf6xmG44VRaz", "itemSku": "bX1Kr6FY7X8aKuLM", "itemType": "Y0kpNU0XnHoiWTcH"}, {"count": 34, "duration": 66, "endDate": "1979-10-15T00:00:00Z", "itemId": "1WshWwRrWHwUGnqf", "itemSku": "VSWiRLWvYp942FvE", "itemType": "mHmc4zce5H5aVToc"}], "name": "FWkyqSUDKwQXOuxh", "odds": 0.6470015953051991, "type": "REWARD", "weight": 27}], "rollFunction": "CUSTOM"}, "maxCount": 12, "maxCountPerUser": 80, "name": "kjWCBwGypNle1M0b", "optionBoxConfig": {"boxItems": [{"count": 94, "duration": 80, "endDate": "1984-01-07T00:00:00Z", "itemId": "hX3GZk7sNSu6ek1j", "itemSku": "vhQ1iwwLGHXYdB5x", "itemType": "lEEZTI96xpIOYvTn"}, {"count": 97, "duration": 20, "endDate": "1982-03-17T00:00:00Z", "itemId": "7VB7yOeTs2yiT3V6", "itemSku": "NsGYAasLNWjoMvNn", "itemType": "rkMCxSlJYE7eD9sB"}, {"count": 45, "duration": 23, "endDate": "1996-11-05T00:00:00Z", "itemId": "gK3lxzsvtNscVZpW", "itemSku": "7QsnV4badw3FLgo5", "itemType": "uXFLyg7plbcVMMjt"}]}, "purchasable": false, "recurring": {"cycle": "WEEKLY", "fixedFreeDays": 20, "fixedTrialCycles": 72, "graceDays": 54}, "regionData": {"Q0DBxCD4WaB12DVG": [{"currencyCode": "j348zRRw6qvHognr", "currencyNamespace": "PfFURUWD6Zsj60FE", "currencyType": "VIRTUAL", "discountAmount": 80, "discountExpireAt": "1987-06-02T00:00:00Z", "discountPercentage": 94, "discountPurchaseAt": "1971-03-28T00:00:00Z", "expireAt": "1981-11-07T00:00:00Z", "price": 58, "purchaseAt": "1973-12-12T00:00:00Z", "trialPrice": 2}, {"currencyCode": "c27V5mEReZoL1xaV", "currencyNamespace": "YO6dwmtOCVnm263y", "currencyType": "VIRTUAL", "discountAmount": 56, "discountExpireAt": "1993-07-04T00:00:00Z", "discountPercentage": 68, "discountPurchaseAt": "1995-10-21T00:00:00Z", "expireAt": "1978-04-09T00:00:00Z", "price": 29, "purchaseAt": "1992-01-05T00:00:00Z", "trialPrice": 17}, {"currencyCode": "5kMdS1VYSiTxloD1", "currencyNamespace": "nVri0XCZMJoTQ7Pt", "currencyType": "REAL", "discountAmount": 38, "discountExpireAt": "1995-01-05T00:00:00Z", "discountPercentage": 62, "discountPurchaseAt": "1999-09-14T00:00:00Z", "expireAt": "1979-07-18T00:00:00Z", "price": 27, "purchaseAt": "1987-10-24T00:00:00Z", "trialPrice": 78}], "bX9Y6pFvwDeEbmZZ": [{"currencyCode": "svqvxBab4pBuYy4I", "currencyNamespace": "NU6kMb0kzkC1c0Ef", "currencyType": "VIRTUAL", "discountAmount": 35, "discountExpireAt": "1993-03-06T00:00:00Z", "discountPercentage": 10, "discountPurchaseAt": "1998-10-29T00:00:00Z", "expireAt": "1979-06-15T00:00:00Z", "price": 40, "purchaseAt": "1994-11-23T00:00:00Z", "trialPrice": 15}, {"currencyCode": "I2hTzn0BPYlCBcJN", "currencyNamespace": "kpXLnm8mU7TZBoIi", "currencyType": "REAL", "discountAmount": 98, "discountExpireAt": "1975-12-04T00:00:00Z", "discountPercentage": 13, "discountPurchaseAt": "1988-12-15T00:00:00Z", "expireAt": "1982-04-20T00:00:00Z", "price": 66, "purchaseAt": "1999-10-20T00:00:00Z", "trialPrice": 56}, {"currencyCode": "5HkBkkWgJYNo115j", "currencyNamespace": "ZOOHVbyRb0Suo2RY", "currencyType": "REAL", "discountAmount": 74, "discountExpireAt": "1995-02-07T00:00:00Z", "discountPercentage": 70, "discountPurchaseAt": "1991-10-12T00:00:00Z", "expireAt": "1977-02-27T00:00:00Z", "price": 94, "purchaseAt": "1972-01-01T00:00:00Z", "trialPrice": 58}], "kM1Lq4Zn4o2aUeWH": [{"currencyCode": "hDDjA5IM0PR3MX4q", "currencyNamespace": "qm99bgGOc0EY09DQ", "currencyType": "VIRTUAL", "discountAmount": 50, "discountExpireAt": "1982-08-11T00:00:00Z", "discountPercentage": 78, "discountPurchaseAt": "1975-04-04T00:00:00Z", "expireAt": "1982-04-05T00:00:00Z", "price": 14, "purchaseAt": "1975-03-31T00:00:00Z", "trialPrice": 47}, {"currencyCode": "UKfhqSMdIKR6Cljd", "currencyNamespace": "6yrERv0xISNT7g9K", "currencyType": "VIRTUAL", "discountAmount": 37, "discountExpireAt": "1991-08-05T00:00:00Z", "discountPercentage": 63, "discountPurchaseAt": "1972-09-29T00:00:00Z", "expireAt": "1992-03-13T00:00:00Z", "price": 88, "purchaseAt": "1991-08-17T00:00:00Z", "trialPrice": 38}, {"currencyCode": "tZwQRJeCEoojf4ks", "currencyNamespace": "ARt1p8InYAd0BupH", "currencyType": "VIRTUAL", "discountAmount": 45, "discountExpireAt": "1993-09-27T00:00:00Z", "discountPercentage": 68, "discountPurchaseAt": "1997-04-23T00:00:00Z", "expireAt": "1989-12-08T00:00:00Z", "price": 82, "purchaseAt": "1992-09-30T00:00:00Z", "trialPrice": 54}]}, "saleConfig": {"currencyCode": "uXAHm1KmvqFFVdzP", "price": 51}, "seasonType": "TIER", "sectionExclusive": true, "sellable": true, "sku": "IUgw41dZ4b2ZJdyF", "stackable": true, "status": "INACTIVE", "tags": ["JZ9iMrs9vuArA23n", "B1KM9dgxSpGFeAyR", "dFiWI3GRoIeddoSW"], "targetCurrencyCode": "sWPyeYlu7OLSBkAg", "targetNamespace": "Q2E6nfxUL5dsc1xE", "thumbnailUrl": "W1HuLSvyrx9Hm5mU", "useCount": 23}' \
    > test.out 2>&1
eval_tap $? 112 'CreateItem' test.out

#- 113 GetItemByAppId
samples/cli/sample-apps Platform getItemByAppId \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --storeId 'tPZtiN3Wr7809FUT' \
    --appId 'Zi4FmUsqUbERCRvO' \
    > test.out 2>&1
eval_tap $? 113 'GetItemByAppId' test.out

#- 114 QueryItems
samples/cli/sample-apps Platform queryItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --appType 'GAME' \
    --availableDate '3rmjLa5ekR5ixzdZ' \
    --baseAppId 'jcYg7kQsX32e3z67' \
    --categoryPath '1zqdy2Mu0miNAL8u' \
    --features 'doBFniY9ZuQ6zmPY' \
    --includeSubCategoryItem 'false' \
    --itemType 'APP' \
    --limit '6' \
    --offset '14' \
    --region 's3sOqZ6oWHO1Gylq' \
    --sortBy '["createdAt", "name:asc"]' \
    --storeId 'IMpG9UIvEeVt80kd' \
    --tags 'YtG5XbBqeb6W88dt' \
    --targetNamespace 'EJppSxZStYcidEiG' \
    > test.out 2>&1
eval_tap $? 114 'QueryItems' test.out

#- 115 ListBasicItemsByFeatures
samples/cli/sample-apps Platform listBasicItemsByFeatures \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --features '["DXRpa3yc5NNOl2Z5", "Ex81Bnp42emF4hIf", "B8i4btqJBiZoI3Ie"]' \
    > test.out 2>&1
eval_tap $? 115 'ListBasicItemsByFeatures' test.out

#- 116 GetItems
samples/cli/sample-apps Platform getItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'HlgmO82Bb5iz0PDE' \
    --itemIds 'vlHugBTW3U38M2oM' \
    > test.out 2>&1
eval_tap $? 116 'GetItems' test.out

#- 117 GetItemBySku
samples/cli/sample-apps Platform getItemBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --storeId 'GG9OcOW9ihgWCI0S' \
    --sku 'Vq23rOkKCrPybXuG' \
    > test.out 2>&1
eval_tap $? 117 'GetItemBySku' test.out

#- 118 GetLocaleItemBySku
samples/cli/sample-apps Platform getLocaleItemBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --language '4bO3XSAfDbBQlIjw' \
    --populateBundle 'true' \
    --region 'iuCqAMu3O9pugJZQ' \
    --storeId '5GEcXfNnLxOsnAc6' \
    --sku 'T5sCgdgKqko55ZaO' \
    > test.out 2>&1
eval_tap $? 118 'GetLocaleItemBySku' test.out

#- 119 GetEstimatedPrice
samples/cli/sample-apps Platform getEstimatedPrice \
    --namespace $AB_NAMESPACE \
    --platform 'Jnhpo246OdErOb9T' \
    --region 'bIN89HpNoIrQQAdI' \
    --storeId '7j9NgGZk6UXYhrDh' \
    --itemIds 'vS8HlkC2s9AX6zZp' \
    --userId 'EViXPqsrynWUsbWr' \
    > test.out 2>&1
eval_tap $? 119 'GetEstimatedPrice' test.out

#- 120 GetItemIdBySku
samples/cli/sample-apps Platform getItemIdBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --storeId '8UWFQRSOTXf63IHb' \
    --sku '141kqT5N8Mu7PBHX' \
    > test.out 2>&1
eval_tap $? 120 'GetItemIdBySku' test.out

#- 121 GetBulkItemIdBySkus
samples/cli/sample-apps Platform getBulkItemIdBySkus \
    --namespace $AB_NAMESPACE \
    --sku '["60cFBE8yYY0L5wx4", "7eaCTyUIOBsApEsN", "iYaraaBArLN0DvRC"]' \
    --storeId '0MKf7OcfrIPmHgor' \
    > test.out 2>&1
eval_tap $? 121 'GetBulkItemIdBySkus' test.out

#- 122 BulkGetLocaleItems
samples/cli/sample-apps Platform bulkGetLocaleItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --language 'BbU8LYbk8HcqzsNo' \
    --region 'XUKn64r5Ratolpn2' \
    --storeId '5EwGKnkX7VjfObxl' \
    --itemIds 'kVHWo4q65eitHuxY' \
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
    --platform 'r4wNoPErFdIGzuvy' \
    --userId 'jcG3PX1m0eCzoXBl' \
    --body '{"itemIds": ["H54jkMcnba1vj45A", "eDZdUIFufmQXn9AF", "shMi2bvq9ap7IkQw"]}' \
    > test.out 2>&1
eval_tap $? 124 'ValidateItemPurchaseCondition' test.out

#- 125 BulkUpdateRegionData
samples/cli/sample-apps Platform bulkUpdateRegionData \
    --namespace $AB_NAMESPACE \
    --storeId 'mOwqUzoenAIAxhRG' \
    --body '{"changes": [{"itemIdentities": ["EFkxbH6G8CjdJvgk", "0fVIm8uQzbCUejwD", "3LRnEAMI1LH7UQ6y"], "itemIdentityType": "ITEM_SKU", "regionData": {"hLAl6B6TnNqLIOyR": [{"currencyCode": "lWWDeUmqsvSGjj34", "currencyNamespace": "hXfIFoR7J9Bvo4R4", "currencyType": "VIRTUAL", "discountAmount": 14, "discountExpireAt": "1985-04-29T00:00:00Z", "discountPercentage": 92, "discountPurchaseAt": "1994-09-14T00:00:00Z", "discountedPrice": 42, "expireAt": "1999-11-02T00:00:00Z", "price": 19, "purchaseAt": "1977-06-26T00:00:00Z", "trialPrice": 30}, {"currencyCode": "EWvKfW1dou3Oi5FJ", "currencyNamespace": "2Ri2x3reyrF1fwav", "currencyType": "VIRTUAL", "discountAmount": 98, "discountExpireAt": "1980-05-01T00:00:00Z", "discountPercentage": 79, "discountPurchaseAt": "1986-01-24T00:00:00Z", "discountedPrice": 78, "expireAt": "1988-07-22T00:00:00Z", "price": 82, "purchaseAt": "1982-09-08T00:00:00Z", "trialPrice": 79}, {"currencyCode": "WQrka9cHl0Hav7yx", "currencyNamespace": "3Pe2ZvacfY79SA2L", "currencyType": "VIRTUAL", "discountAmount": 61, "discountExpireAt": "1982-05-24T00:00:00Z", "discountPercentage": 66, "discountPurchaseAt": "1974-12-06T00:00:00Z", "discountedPrice": 37, "expireAt": "1978-06-10T00:00:00Z", "price": 10, "purchaseAt": "1989-05-07T00:00:00Z", "trialPrice": 21}], "Jk9KVshb6YNja0bR": [{"currencyCode": "IHR2GREJ2fEP18UH", "currencyNamespace": "JOBQfGpFq4yjbAsj", "currencyType": "REAL", "discountAmount": 64, "discountExpireAt": "1986-06-14T00:00:00Z", "discountPercentage": 89, "discountPurchaseAt": "1972-11-05T00:00:00Z", "discountedPrice": 60, "expireAt": "1995-04-09T00:00:00Z", "price": 8, "purchaseAt": "1991-04-25T00:00:00Z", "trialPrice": 4}, {"currencyCode": "NyBYWaNxkaK5MGHJ", "currencyNamespace": "RrA24IpJbkVbw3fy", "currencyType": "REAL", "discountAmount": 83, "discountExpireAt": "1987-02-02T00:00:00Z", "discountPercentage": 74, "discountPurchaseAt": "1997-03-21T00:00:00Z", "discountedPrice": 97, "expireAt": "1994-04-01T00:00:00Z", "price": 4, "purchaseAt": "1981-11-18T00:00:00Z", "trialPrice": 93}, {"currencyCode": "9gJink1NGMhLmS3L", "currencyNamespace": "EvT2kHhUVXGJeWxR", "currencyType": "VIRTUAL", "discountAmount": 86, "discountExpireAt": "1980-05-16T00:00:00Z", "discountPercentage": 45, "discountPurchaseAt": "1993-08-03T00:00:00Z", "discountedPrice": 8, "expireAt": "1981-08-02T00:00:00Z", "price": 78, "purchaseAt": "1990-03-10T00:00:00Z", "trialPrice": 45}], "WXcpyV2aKjf5VbzF": [{"currencyCode": "NhiXfMR5uhrC0cVZ", "currencyNamespace": "i6tRHt2ngjlAHobG", "currencyType": "VIRTUAL", "discountAmount": 81, "discountExpireAt": "1975-07-14T00:00:00Z", "discountPercentage": 31, "discountPurchaseAt": "1996-10-06T00:00:00Z", "discountedPrice": 0, "expireAt": "1989-07-27T00:00:00Z", "price": 78, "purchaseAt": "1973-12-13T00:00:00Z", "trialPrice": 11}, {"currencyCode": "YCHrms6zBNDhmX10", "currencyNamespace": "1Z07Un3LGZvwF6KT", "currencyType": "REAL", "discountAmount": 14, "discountExpireAt": "1971-03-24T00:00:00Z", "discountPercentage": 41, "discountPurchaseAt": "1990-05-17T00:00:00Z", "discountedPrice": 45, "expireAt": "1984-02-07T00:00:00Z", "price": 23, "purchaseAt": "1988-03-15T00:00:00Z", "trialPrice": 72}, {"currencyCode": "GJAqslzcizAWeIo7", "currencyNamespace": "wce6HAxUIAORAc4P", "currencyType": "REAL", "discountAmount": 5, "discountExpireAt": "1971-11-19T00:00:00Z", "discountPercentage": 48, "discountPurchaseAt": "1975-08-24T00:00:00Z", "discountedPrice": 3, "expireAt": "1983-12-31T00:00:00Z", "price": 4, "purchaseAt": "1986-06-03T00:00:00Z", "trialPrice": 14}]}}, {"itemIdentities": ["Z3qY4JNqDoGSavYI", "2Jgw0o1LzGRdAH6p", "4Ttl1rfbzL71AOsU"], "itemIdentityType": "ITEM_SKU", "regionData": {"9ZuaNZQFw6CCc6pk": [{"currencyCode": "UXhGH7eCWbAugxol", "currencyNamespace": "MMiirvmvPgmxvBAO", "currencyType": "VIRTUAL", "discountAmount": 4, "discountExpireAt": "1976-07-04T00:00:00Z", "discountPercentage": 85, "discountPurchaseAt": "1991-11-25T00:00:00Z", "discountedPrice": 25, "expireAt": "1995-09-30T00:00:00Z", "price": 12, "purchaseAt": "1983-01-07T00:00:00Z", "trialPrice": 56}, {"currencyCode": "vOK7oQ3HjShcfR7E", "currencyNamespace": "DNZjttRrDV7VrWu3", "currencyType": "VIRTUAL", "discountAmount": 86, "discountExpireAt": "1992-08-02T00:00:00Z", "discountPercentage": 13, "discountPurchaseAt": "1985-10-23T00:00:00Z", "discountedPrice": 5, "expireAt": "1981-07-13T00:00:00Z", "price": 92, "purchaseAt": "1985-05-20T00:00:00Z", "trialPrice": 52}, {"currencyCode": "itPhl9eVNZ1wXLW7", "currencyNamespace": "GIynnMpAGyKzNCDZ", "currencyType": "REAL", "discountAmount": 7, "discountExpireAt": "1991-04-28T00:00:00Z", "discountPercentage": 74, "discountPurchaseAt": "1992-05-22T00:00:00Z", "discountedPrice": 5, "expireAt": "1980-09-01T00:00:00Z", "price": 1, "purchaseAt": "1985-10-27T00:00:00Z", "trialPrice": 3}], "vFcVb6eiTxlNPxhN": [{"currencyCode": "XREAY6aHehForzl0", "currencyNamespace": "YJ7jkuK1BjRXVpYs", "currencyType": "VIRTUAL", "discountAmount": 61, "discountExpireAt": "1990-06-29T00:00:00Z", "discountPercentage": 33, "discountPurchaseAt": "1984-05-04T00:00:00Z", "discountedPrice": 31, "expireAt": "1986-02-28T00:00:00Z", "price": 63, "purchaseAt": "1979-02-06T00:00:00Z", "trialPrice": 46}, {"currencyCode": "eY9n4Jgql575hVmH", "currencyNamespace": "ziD0Ou7vaIRC4qum", "currencyType": "VIRTUAL", "discountAmount": 33, "discountExpireAt": "1974-05-17T00:00:00Z", "discountPercentage": 62, "discountPurchaseAt": "1977-08-16T00:00:00Z", "discountedPrice": 11, "expireAt": "1974-02-21T00:00:00Z", "price": 66, "purchaseAt": "1984-01-14T00:00:00Z", "trialPrice": 69}, {"currencyCode": "MexSXlR7QVTO5C1v", "currencyNamespace": "w1Q4wgGv4vuRKtuh", "currencyType": "VIRTUAL", "discountAmount": 27, "discountExpireAt": "1991-09-08T00:00:00Z", "discountPercentage": 45, "discountPurchaseAt": "1978-09-14T00:00:00Z", "discountedPrice": 77, "expireAt": "1973-11-01T00:00:00Z", "price": 62, "purchaseAt": "1987-10-04T00:00:00Z", "trialPrice": 33}], "GvxCQIqzSjuckUXk": [{"currencyCode": "D1HiGHqwa9XCwe0M", "currencyNamespace": "DJHv73wR7k003TH5", "currencyType": "REAL", "discountAmount": 86, "discountExpireAt": "1984-03-04T00:00:00Z", "discountPercentage": 91, "discountPurchaseAt": "1987-01-13T00:00:00Z", "discountedPrice": 40, "expireAt": "1995-03-24T00:00:00Z", "price": 86, "purchaseAt": "1978-05-18T00:00:00Z", "trialPrice": 40}, {"currencyCode": "rHT0GQRTa330OSut", "currencyNamespace": "o1iTqqTPR0xjNujZ", "currencyType": "REAL", "discountAmount": 34, "discountExpireAt": "1975-12-14T00:00:00Z", "discountPercentage": 86, "discountPurchaseAt": "1995-09-24T00:00:00Z", "discountedPrice": 32, "expireAt": "1972-12-08T00:00:00Z", "price": 25, "purchaseAt": "1996-02-06T00:00:00Z", "trialPrice": 21}, {"currencyCode": "uQ40rWO9VsUzfyED", "currencyNamespace": "fTojaH6mYZKM3nYU", "currencyType": "REAL", "discountAmount": 53, "discountExpireAt": "1992-12-26T00:00:00Z", "discountPercentage": 14, "discountPurchaseAt": "1971-02-22T00:00:00Z", "discountedPrice": 53, "expireAt": "1985-04-16T00:00:00Z", "price": 73, "purchaseAt": "1988-08-26T00:00:00Z", "trialPrice": 40}]}}, {"itemIdentities": ["VUm0dqTgDfqjo1Qa", "3tJLtO6nvGgTwtbI", "aJLXIyLBoqrJ2P4C"], "itemIdentityType": "ITEM_SKU", "regionData": {"6EHnJiBod2DhUGKz": [{"currencyCode": "br2lRGJB8jTzCCzH", "currencyNamespace": "n0ytMbw0EK5aF1ZB", "currencyType": "VIRTUAL", "discountAmount": 90, "discountExpireAt": "1975-05-09T00:00:00Z", "discountPercentage": 95, "discountPurchaseAt": "1997-08-21T00:00:00Z", "discountedPrice": 70, "expireAt": "1993-07-26T00:00:00Z", "price": 53, "purchaseAt": "1984-08-08T00:00:00Z", "trialPrice": 3}, {"currencyCode": "X5QV6SV8BZj2sORf", "currencyNamespace": "BYulUCvkiN3Qbs7L", "currencyType": "REAL", "discountAmount": 45, "discountExpireAt": "1974-10-24T00:00:00Z", "discountPercentage": 85, "discountPurchaseAt": "1994-08-14T00:00:00Z", "discountedPrice": 96, "expireAt": "1979-03-30T00:00:00Z", "price": 71, "purchaseAt": "1983-09-12T00:00:00Z", "trialPrice": 31}, {"currencyCode": "iX8Ek8ssfDoZBwow", "currencyNamespace": "WOhasYygtKEbWW1S", "currencyType": "REAL", "discountAmount": 28, "discountExpireAt": "1997-05-13T00:00:00Z", "discountPercentage": 44, "discountPurchaseAt": "1994-10-09T00:00:00Z", "discountedPrice": 42, "expireAt": "1984-08-22T00:00:00Z", "price": 95, "purchaseAt": "1990-03-16T00:00:00Z", "trialPrice": 44}], "nQ43w2BaflUKzCEF": [{"currencyCode": "PydXngxkeus1CY3i", "currencyNamespace": "05sFpdXWhVyRqrzR", "currencyType": "REAL", "discountAmount": 10, "discountExpireAt": "1997-11-11T00:00:00Z", "discountPercentage": 64, "discountPurchaseAt": "1989-04-07T00:00:00Z", "discountedPrice": 41, "expireAt": "1972-04-22T00:00:00Z", "price": 0, "purchaseAt": "1981-02-11T00:00:00Z", "trialPrice": 57}, {"currencyCode": "R2fXOGNx097sWghA", "currencyNamespace": "vs37QTtwlCowx9qT", "currencyType": "VIRTUAL", "discountAmount": 26, "discountExpireAt": "1977-11-16T00:00:00Z", "discountPercentage": 77, "discountPurchaseAt": "1990-01-27T00:00:00Z", "discountedPrice": 57, "expireAt": "1981-01-04T00:00:00Z", "price": 31, "purchaseAt": "1990-06-29T00:00:00Z", "trialPrice": 96}, {"currencyCode": "wv3YMZ46jimj9dHQ", "currencyNamespace": "gwY5D5F2K2UIe9zT", "currencyType": "REAL", "discountAmount": 17, "discountExpireAt": "1991-02-09T00:00:00Z", "discountPercentage": 44, "discountPurchaseAt": "1994-04-26T00:00:00Z", "discountedPrice": 2, "expireAt": "1998-11-26T00:00:00Z", "price": 5, "purchaseAt": "1992-01-10T00:00:00Z", "trialPrice": 79}], "W8al09wbCuodmAhw": [{"currencyCode": "BiF5Qg1RydSGUtIW", "currencyNamespace": "8OSwgGk3pMMtFy9J", "currencyType": "VIRTUAL", "discountAmount": 88, "discountExpireAt": "1994-09-10T00:00:00Z", "discountPercentage": 68, "discountPurchaseAt": "1977-05-24T00:00:00Z", "discountedPrice": 87, "expireAt": "1993-03-18T00:00:00Z", "price": 99, "purchaseAt": "1985-09-02T00:00:00Z", "trialPrice": 52}, {"currencyCode": "GMkjVJSKnkidht4m", "currencyNamespace": "DuQHjhY2BHOlwd2F", "currencyType": "REAL", "discountAmount": 42, "discountExpireAt": "1993-06-01T00:00:00Z", "discountPercentage": 68, "discountPurchaseAt": "1984-03-26T00:00:00Z", "discountedPrice": 43, "expireAt": "1974-08-29T00:00:00Z", "price": 1, "purchaseAt": "1978-10-12T00:00:00Z", "trialPrice": 100}, {"currencyCode": "ce2eJSrL1ngMBHxF", "currencyNamespace": "3qEsZrFQyxRPePiK", "currencyType": "REAL", "discountAmount": 38, "discountExpireAt": "1985-02-11T00:00:00Z", "discountPercentage": 33, "discountPurchaseAt": "1994-11-03T00:00:00Z", "discountedPrice": 71, "expireAt": "1992-05-23T00:00:00Z", "price": 12, "purchaseAt": "1996-09-15T00:00:00Z", "trialPrice": 18}]}}]}' \
    > test.out 2>&1
eval_tap $? 125 'BulkUpdateRegionData' test.out

#- 126 SearchItems
samples/cli/sample-apps Platform searchItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --itemType 'APP' \
    --limit '30' \
    --offset '28' \
    --sortBy 'f5Sqx8hCYYRIlY9t' \
    --storeId 'SWPhrE65As7J70w3' \
    --keyword 'fHR5GNlWNCsTlpmh' \
    --language 'x1WcnV7P3Vycvbcf' \
    > test.out 2>&1
eval_tap $? 126 'SearchItems' test.out

#- 127 QueryUncategorizedItems
samples/cli/sample-apps Platform queryUncategorizedItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --limit '36' \
    --offset '54' \
    --sortBy '["name:desc", "name:asc"]' \
    --storeId '5L45cWOkS7MLJD6x' \
    > test.out 2>&1
eval_tap $? 127 'QueryUncategorizedItems' test.out

#- 128 GetItem
samples/cli/sample-apps Platform getItem \
    --itemId 'XtO3q8QEPGMgg0Ss' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'BJnwZCvwQReWYx09' \
    > test.out 2>&1
eval_tap $? 128 'GetItem' test.out

#- 129 UpdateItem
samples/cli/sample-apps Platform updateItem \
    --itemId 'yEPxnDjOLqDkghCD' \
    --namespace $AB_NAMESPACE \
    --storeId 'd60gUIChczRtfYsG' \
    --body '{"appId": "MvNS8pY7sAcqq3TC", "appType": "DEMO", "baseAppId": "WBvzpfNfRdUP4ubJ", "boothName": "YacDJnGsrELEysOY", "categoryPath": "XERchpmwZKJHt4UJ", "clazz": "O7ww2NmDwxOnv6mq", "displayOrder": 3, "entitlementType": "CONSUMABLE", "ext": {"pE3Kb5A15BBi4kZX": {}, "6i5bkiwCyWTDCAzb": {}, "OnCs7xH0jQW7SRFl": {}}, "features": ["5bMPmO057KvPFRag", "QDYEIK2MZP8RIzNe", "YwTPDj1tJzpR0W2u"], "flexible": true, "images": [{"as": "lWVQc0AIQn4fP6Wz", "caption": "HzWOojTDJTmW83e0", "height": 3, "imageUrl": "QcAVjte41d4umHUB", "smallImageUrl": "HtjBDFanIYF9kN8v", "width": 83}, {"as": "JxphRnAe9NBAPT3j", "caption": "1xV3pDLDbeg6G2w8", "height": 44, "imageUrl": "V6ZO06iMpyMeGqm8", "smallImageUrl": "2CJiqKCGpCCwPwJK", "width": 90}, {"as": "Wvnza97MgPhCaEsl", "caption": "BZcIYxbwdI2Y5knt", "height": 35, "imageUrl": "SvzIxOgUwrYvdfxf", "smallImageUrl": "SAujKOF13iK0ol61", "width": 99}], "inventoryConfig": {"customAttributes": {"SheLO3vJ14Lg403t": {}, "W58g55uHcS8WDJif": {}, "Vs0eK6x6ZGOeDpV2": {}}, "serverCustomAttributes": {"SLdEUkwfUML4vitU": {}, "Zoxqcu9W4nsI2bu4": {}, "2EsVlgp43wVWibwg": {}}, "slotUsed": 96}, "itemIds": ["xxWD5sLVl1TK7mi8", "aDvoMJ3EpH3ojeMI", "orfqSQUKpIFsc9JA"], "itemQty": {"LeN2gBxzWC5GYwOJ": 67, "3oNg7NrzCW6OLxcl": 10, "FmrO8oN6m28HteEi": 97}, "itemType": "MEDIA", "listable": true, "localizations": {"mnsQ4HHwnGvL4LjT": {"description": "VptwKwv7qapGp3XX", "localExt": {"9v4afQM1RymN8rn1": {}, "LNiOYEMndfU45ICx": {}, "ci9zWqfL3jXl3rzu": {}}, "longDescription": "mi7axW4MOZXA01jE", "title": "6ObLzGvpXEeDHiK5"}, "hluPxRN2rJhrSJYu": {"description": "xQqniNwET7jek1P6", "localExt": {"EwSWvpBoY8C3zIpl": {}, "AQHcoYTJlIk0afRL": {}, "3dfrleNO6HMh1ZG6": {}}, "longDescription": "EglVtlVwAcKQAPrT", "title": "Do18EsoFPmkcPhOB"}, "YqwXIvvF6XCfLViW": {"description": "2GcNmtkKcwQ3lCBG", "localExt": {"mwbES9MvLUKa3m2S": {}, "QqwKXyJaMtJmfoex": {}, "yiIutdb9Q0gRcQJ3": {}}, "longDescription": "vpymZBYYNNRoMdG4", "title": "eFG91w65udhR34NI"}}, "lootBoxConfig": {"rewardCount": 49, "rewards": [{"lootBoxItems": [{"count": 73, "duration": 68, "endDate": "1974-10-22T00:00:00Z", "itemId": "gSRMsm0qSAlRloKW", "itemSku": "kao0FmWT0QEolyMp", "itemType": "ncUlweZIyraTWvC4"}, {"count": 100, "duration": 47, "endDate": "1985-12-27T00:00:00Z", "itemId": "aNxYNG4n88ITk7Ws", "itemSku": "hTH6JvU7zGQlHNlx", "itemType": "A0H64bE2BBJkbueP"}, {"count": 75, "duration": 9, "endDate": "1972-05-06T00:00:00Z", "itemId": "gQe3o8N71sf5R9XZ", "itemSku": "DRg6kum4MLuukLbW", "itemType": "DTqhp0YhyHYf3HyA"}], "name": "GQVq0lFWU81Oenz5", "odds": 0.8402388374278955, "type": "REWARD", "weight": 26}, {"lootBoxItems": [{"count": 52, "duration": 94, "endDate": "1980-03-27T00:00:00Z", "itemId": "7ogEIh1YMiJE12bg", "itemSku": "llKESpWgELjnvA1V", "itemType": "WcARgc7T8OiZ0tnT"}, {"count": 73, "duration": 81, "endDate": "1972-08-27T00:00:00Z", "itemId": "IckZcor4wG0anWof", "itemSku": "c78f7bNZxu5fSorc", "itemType": "QWjh7rb6MQkQY8mz"}, {"count": 83, "duration": 48, "endDate": "1974-05-18T00:00:00Z", "itemId": "np9rRrzWgDWOkocU", "itemSku": "PboyHqFl0G50N79Y", "itemType": "6ynSE62Fgo97eHzi"}], "name": "E0LmZRJip9zN5LNY", "odds": 0.26287145390677413, "type": "REWARD", "weight": 36}, {"lootBoxItems": [{"count": 84, "duration": 91, "endDate": "1998-07-24T00:00:00Z", "itemId": "2C4ITjENm1lvAeLO", "itemSku": "51wPWfz22MwMvU0O", "itemType": "WpuQg6HVHLKavQNc"}, {"count": 100, "duration": 42, "endDate": "1975-01-05T00:00:00Z", "itemId": "2R8oYDWxAxjwnjLn", "itemSku": "jV7ZDAsWapMo3G3r", "itemType": "th80g8SPnGRo7BNx"}, {"count": 24, "duration": 11, "endDate": "1976-07-16T00:00:00Z", "itemId": "IyCz3ZjsYUbPRiSO", "itemSku": "SmONDlck3VMLbfzE", "itemType": "arsUt7z6z4oFAbr5"}], "name": "Nj7KU0LLH3eDsPZl", "odds": 0.1898611224551655, "type": "PROBABILITY_GROUP", "weight": 28}], "rollFunction": "CUSTOM"}, "maxCount": 20, "maxCountPerUser": 53, "name": "RQQNCokSaEOUoATK", "optionBoxConfig": {"boxItems": [{"count": 38, "duration": 47, "endDate": "1983-01-18T00:00:00Z", "itemId": "4puznedhid3UAGlZ", "itemSku": "DUJJvs9w4FSXV3yw", "itemType": "BveWD3DEWg4cQEgW"}, {"count": 62, "duration": 12, "endDate": "1992-07-17T00:00:00Z", "itemId": "FBcAsXFKIXyFCfWk", "itemSku": "1Ky4SxosKlqyI9cN", "itemType": "deRlUNwrdUwEV3sr"}, {"count": 72, "duration": 6, "endDate": "1982-08-25T00:00:00Z", "itemId": "ADKgPOao9HH3EPQU", "itemSku": "kyf71tpKuEPZ42Xm", "itemType": "YRrxXDJ3QqfBId0w"}]}, "purchasable": false, "recurring": {"cycle": "MONTHLY", "fixedFreeDays": 12, "fixedTrialCycles": 57, "graceDays": 55}, "regionData": {"M0olE2jsrFObU7Q8": [{"currencyCode": "KFMmM3ZgGSxFTiWd", "currencyNamespace": "sbZ3bIqNtV7XVliJ", "currencyType": "REAL", "discountAmount": 12, "discountExpireAt": "1971-01-27T00:00:00Z", "discountPercentage": 49, "discountPurchaseAt": "1991-05-23T00:00:00Z", "expireAt": "1995-08-17T00:00:00Z", "price": 95, "purchaseAt": "1977-12-04T00:00:00Z", "trialPrice": 46}, {"currencyCode": "84qdDTp5PLcRZrwp", "currencyNamespace": "TYX0ClsYdOgTTZNq", "currencyType": "REAL", "discountAmount": 70, "discountExpireAt": "1974-07-05T00:00:00Z", "discountPercentage": 23, "discountPurchaseAt": "1975-03-09T00:00:00Z", "expireAt": "1987-10-03T00:00:00Z", "price": 5, "purchaseAt": "1998-04-12T00:00:00Z", "trialPrice": 73}, {"currencyCode": "JS5RAASaQJsSdCtj", "currencyNamespace": "7QBp2OfrRhxWdYLe", "currencyType": "VIRTUAL", "discountAmount": 54, "discountExpireAt": "1990-02-09T00:00:00Z", "discountPercentage": 18, "discountPurchaseAt": "1989-02-17T00:00:00Z", "expireAt": "1992-08-07T00:00:00Z", "price": 38, "purchaseAt": "1985-08-30T00:00:00Z", "trialPrice": 4}], "YwRZmfPLJmHUU6b6": [{"currencyCode": "4l44BvJswedcca9u", "currencyNamespace": "RntV9b3tOext4POj", "currencyType": "REAL", "discountAmount": 65, "discountExpireAt": "1995-02-17T00:00:00Z", "discountPercentage": 60, "discountPurchaseAt": "1986-03-21T00:00:00Z", "expireAt": "1988-05-23T00:00:00Z", "price": 59, "purchaseAt": "1990-09-29T00:00:00Z", "trialPrice": 71}, {"currencyCode": "hRaDHV0sPN472CPG", "currencyNamespace": "STXSzqSQXJVSxZZh", "currencyType": "REAL", "discountAmount": 81, "discountExpireAt": "1982-04-02T00:00:00Z", "discountPercentage": 75, "discountPurchaseAt": "1973-01-09T00:00:00Z", "expireAt": "1994-03-06T00:00:00Z", "price": 96, "purchaseAt": "1992-06-08T00:00:00Z", "trialPrice": 95}, {"currencyCode": "vqco20RVIvOMKY5o", "currencyNamespace": "qER0NMoSDTFFDwPD", "currencyType": "REAL", "discountAmount": 67, "discountExpireAt": "1988-07-12T00:00:00Z", "discountPercentage": 76, "discountPurchaseAt": "1991-08-14T00:00:00Z", "expireAt": "1991-01-04T00:00:00Z", "price": 13, "purchaseAt": "1971-10-02T00:00:00Z", "trialPrice": 36}], "P2tj4SwND0Sy79Kl": [{"currencyCode": "5gRh4qjvYOk4t8Ao", "currencyNamespace": "hy7IF0TWibbcrwyn", "currencyType": "VIRTUAL", "discountAmount": 12, "discountExpireAt": "1982-12-09T00:00:00Z", "discountPercentage": 5, "discountPurchaseAt": "1976-01-26T00:00:00Z", "expireAt": "1995-06-24T00:00:00Z", "price": 62, "purchaseAt": "1977-02-05T00:00:00Z", "trialPrice": 36}, {"currencyCode": "AA82BGi2nx7PiyGy", "currencyNamespace": "MD2TFl44UZiJb7qX", "currencyType": "VIRTUAL", "discountAmount": 84, "discountExpireAt": "1971-03-05T00:00:00Z", "discountPercentage": 10, "discountPurchaseAt": "1997-08-09T00:00:00Z", "expireAt": "1992-01-25T00:00:00Z", "price": 53, "purchaseAt": "1973-04-17T00:00:00Z", "trialPrice": 6}, {"currencyCode": "H1TWv7X3jL7hUiVg", "currencyNamespace": "XIp5zFiwTRKaMZ7w", "currencyType": "REAL", "discountAmount": 43, "discountExpireAt": "1997-09-26T00:00:00Z", "discountPercentage": 97, "discountPurchaseAt": "1993-08-26T00:00:00Z", "expireAt": "1997-08-19T00:00:00Z", "price": 23, "purchaseAt": "1978-01-23T00:00:00Z", "trialPrice": 26}]}, "saleConfig": {"currencyCode": "MEXDcXQ9astkWoQU", "price": 32}, "seasonType": "PASS", "sectionExclusive": false, "sellable": false, "sku": "TL5gEbcjHzwFFKBs", "stackable": false, "status": "ACTIVE", "tags": ["XswLWs85nyNQyins", "gCP2Ihk8j93Qo95a", "vdz2vgqSPDzCh9Uw"], "targetCurrencyCode": "C7BkYznr2iodoO6T", "targetNamespace": "NVzehFrcWIbci7KH", "thumbnailUrl": "C5rfhSDbE0ZUJTks", "useCount": 76}' \
    > test.out 2>&1
eval_tap $? 129 'UpdateItem' test.out

#- 130 DeleteItem
samples/cli/sample-apps Platform deleteItem \
    --itemId 'NVVEPIfBJXfw5L8s' \
    --namespace $AB_NAMESPACE \
    --force 'true' \
    --storeId 'wlmTyS125wOqDV4r' \
    > test.out 2>&1
eval_tap $? 130 'DeleteItem' test.out

#- 131 AcquireItem
samples/cli/sample-apps Platform acquireItem \
    --itemId 'Ip2xaLZkei4v7moD' \
    --namespace $AB_NAMESPACE \
    --body '{"count": 20, "orderNo": "inn4hP7ORbWPUeZ1"}' \
    > test.out 2>&1
eval_tap $? 131 'AcquireItem' test.out

#- 132 GetApp
samples/cli/sample-apps Platform getApp \
    --itemId 'b9C5e8e6JtSYmFNb' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'huql6QP1idkAE5n9' \
    > test.out 2>&1
eval_tap $? 132 'GetApp' test.out

#- 133 UpdateApp
samples/cli/sample-apps Platform updateApp \
    --itemId 'oUPQjjRCAbcbRxz3' \
    --namespace $AB_NAMESPACE \
    --storeId 'DhCfJQE6UXY3n8CH' \
    --body '{"carousel": [{"alt": "m0oEbdnSN8QYsQTa", "previewUrl": "bqv14orFiKPKEeWP", "thumbnailUrl": "TWI7tn7KlGcFEvDd", "type": "image", "url": "IBBjZbz8mVqVYFLS", "videoSource": "youtube"}, {"alt": "zrke3QubsVo4H9xe", "previewUrl": "g331cZGYZeuRBt72", "thumbnailUrl": "n5fkKHxhubSwvTnk", "type": "image", "url": "yBwVakkygSWWIcus", "videoSource": "vimeo"}, {"alt": "OKuN4EmtuGqW8e1Y", "previewUrl": "I1bfI03PDAroQDun", "thumbnailUrl": "RURLtWlsLa8SQXYj", "type": "video", "url": "vxaY0NLtF6eFSjyR", "videoSource": "vimeo"}], "developer": "rJm1K6lskkfMwQeV", "forumUrl": "e9Ypqfm1BiMF5oxp", "genres": ["FreeToPlay", "FreeToPlay", "FreeToPlay"], "localizations": {"bGzwq5pr6HMglUah": {"announcement": "dRO9rB3HUFNnAlO3", "slogan": "Uslys0UX22KQJkaz"}, "EhnqMQrohZq3VD5r": {"announcement": "MTW9SM7QXEg6DACl", "slogan": "1mG9cWPfDyYTwLmw"}, "DgPxhMeO9KKMLQJx": {"announcement": "394BHPB7HNSPudwM", "slogan": "Xey8DVzpkvLExHmW"}}, "platformRequirements": {"LzKRmdTeowFrGPnO": [{"additionals": "YowN3Dxk6G98V3FI", "directXVersion": "psiiTOEL6k6Uig83", "diskSpace": "v91iRBVs97wrgyh3", "graphics": "LDNYMnturPiEtL0H", "label": "JYzGZ1iMQaBtjNaT", "osVersion": "NZ4V7OWJAWauF568", "processor": "hiAzGgCErH1374LO", "ram": "27aTaSJvaJtj8Rp5", "soundCard": "AuISMiNUqat4sd14"}, {"additionals": "xTfQM7878lO4noK0", "directXVersion": "NYmhh5SsCTGf4vyB", "diskSpace": "RtZQMI1yYBIF2G5O", "graphics": "WrBvpmZ2JWCM9bdv", "label": "jxiDhfFn5LFj1zuu", "osVersion": "ZuqFXfkBdOP3moXk", "processor": "hGDaSFWvP61rYSQ4", "ram": "7r6dZuKEMRcmbqad", "soundCard": "W5XU9upfXikbsMWE"}, {"additionals": "eBqkSFuZXTCGnC2W", "directXVersion": "tXavD2GRW3ACwRcJ", "diskSpace": "kYr81nxwNarlXHMb", "graphics": "6rmlxtyE2nbbRjrd", "label": "eKWel1mHKp370LEt", "osVersion": "tU1oByoOJ6LjfQ2l", "processor": "kMarQPhoe7r4kMn1", "ram": "SbApX0jCWh7Q3eOv", "soundCard": "M6XgISftxgiWCMIj"}], "RqUUjCHMhrQJSnkt": [{"additionals": "pDUHhfQzd2CTMrgH", "directXVersion": "tzoyB7z7d5u9LQgR", "diskSpace": "tl7BllhHMiGIdGST", "graphics": "XK34gmwS9mFESRE7", "label": "ikThxjs2ZJgSEdv1", "osVersion": "FAak2ZdITuDSl5Ku", "processor": "jTvCTls8ZjKzFEi3", "ram": "VczUoHA4Q5FaVQjA", "soundCard": "XncqPjcHrlgeljjf"}, {"additionals": "Khl9shSGymQNBx86", "directXVersion": "myRcXUAMFwwEwcV0", "diskSpace": "C1WtGL0lCUHLJfq6", "graphics": "HdULdMhidwmqPBF9", "label": "n7s2IhMZqRDDbW3A", "osVersion": "P1tAk3ZEQclLkyRs", "processor": "9MapGWSELsipnKRp", "ram": "cfY5nw95Kc3KlgVe", "soundCard": "iO4wbPvwG2odC7Zq"}, {"additionals": "wLET7RjGSxYmUGqZ", "directXVersion": "uvsZ2OjRtBk157tM", "diskSpace": "YR5IxF0bs7zmQzz8", "graphics": "NaCaqAnMLUOUFfrv", "label": "ABANIjAJwNGjYu0d", "osVersion": "dp443Jpx44iHjTHn", "processor": "uuAF28r5zIeuSo3y", "ram": "aaPnKgV46Mq9Kcen", "soundCard": "91R8no3HJ7VpYP0V"}], "a2zzYLY5EuNXQuXp": [{"additionals": "ndAI3Y4ZUiL10oOI", "directXVersion": "iJzRpbsLmKqHAC94", "diskSpace": "SwjG0nJl0PuDBw6B", "graphics": "qspuHKhnkyYDN5RZ", "label": "Vtblgzu14CZYqjM4", "osVersion": "InBkN6IAOO3wUfYR", "processor": "dLknTn1xUuGYFHBk", "ram": "ZzbDwtIPcDbq7nje", "soundCard": "4UwHwZQMYjjqFZxQ"}, {"additionals": "6Ti9vdca0XYTodHQ", "directXVersion": "z76Yx1Y5vLVnzAkq", "diskSpace": "vyG5ypu91LUKBVJe", "graphics": "gB3HFzvPcKnHPGRR", "label": "xAolwC3VEtpO8Ts4", "osVersion": "UQvz60cIGEla5XgB", "processor": "yX2pFbBTPmn7DLdf", "ram": "xtfjvpWAW5SbcQrG", "soundCard": "dERWatBe0DFJwhXn"}, {"additionals": "RmZZBTGsrXBuKbf9", "directXVersion": "49m3HUMxruNFYqWe", "diskSpace": "U9nIdVtuEh92iFSu", "graphics": "4KcGjIzjyUtm8hJd", "label": "iQmp7gkRl2E3YzZX", "osVersion": "o2TZwNsP8HJZqj9j", "processor": "JzCxl6MV1xAz9sJj", "ram": "OTZGtyxwNX7vuGD3", "soundCard": "XXZNfo2tSyppPWLR"}]}, "platforms": ["MacOS", "MacOS", "Linux"], "players": ["Single", "Single", "Single"], "primaryGenre": "Adventure", "publisher": "ExZ6iyibUKkfyA8E", "releaseDate": "1971-04-22T00:00:00Z", "websiteUrl": "LpWAIqYNugDCSD73"}' \
    > test.out 2>&1
eval_tap $? 133 'UpdateApp' test.out

#- 134 DisableItem
samples/cli/sample-apps Platform disableItem \
    --itemId 'crr1H30zvEe18686' \
    --namespace $AB_NAMESPACE \
    --storeId 'u8CJ6VgW0bnuiQTz' \
    > test.out 2>&1
eval_tap $? 134 'DisableItem' test.out

#- 135 GetItemDynamicData
samples/cli/sample-apps Platform getItemDynamicData \
    --itemId 'A0WFgAYRkLbrWeMQ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 135 'GetItemDynamicData' test.out

#- 136 EnableItem
samples/cli/sample-apps Platform enableItem \
    --itemId 'ptWSCJk2p9z91VDy' \
    --namespace $AB_NAMESPACE \
    --storeId 'rbQvY21SQRMKdDre' \
    > test.out 2>&1
eval_tap $? 136 'EnableItem' test.out

#- 137 FeatureItem
samples/cli/sample-apps Platform featureItem \
    --feature 'qehn8hf24firQt7C' \
    --itemId 'Y0GBJHgH8xkqmVPO' \
    --namespace $AB_NAMESPACE \
    --storeId 'Jty1i30DzBnd8WEl' \
    > test.out 2>&1
eval_tap $? 137 'FeatureItem' test.out

#- 138 DefeatureItem
samples/cli/sample-apps Platform defeatureItem \
    --feature 'GKJrIBpR47x4FjM0' \
    --itemId 'pE8zbbBWp9GoAnFN' \
    --namespace $AB_NAMESPACE \
    --storeId 'UKNtFLLVbrYeWXFP' \
    > test.out 2>&1
eval_tap $? 138 'DefeatureItem' test.out

#- 139 GetLocaleItem
samples/cli/sample-apps Platform getLocaleItem \
    --itemId '9JS83miw5SmVRHiZ' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --language 'YT2cqodjiR8r12ah' \
    --populateBundle 'true' \
    --region 'kZnahJnRbGCB08XX' \
    --storeId 'zC0vqhtj27fUPqMv' \
    > test.out 2>&1
eval_tap $? 139 'GetLocaleItem' test.out

#- 140 UpdateItemPurchaseCondition
samples/cli/sample-apps Platform updateItemPurchaseCondition \
    --itemId 'sKMCAP28uHRI4fwZ' \
    --namespace $AB_NAMESPACE \
    --storeId 'wlaCgUP5qfjJeunU' \
    --body '{"purchaseCondition": {"conditionGroups": [{"operator": "and", "predicates": [{"anyOf": 66, "code": "4O2f9LRnLz4pjU05", "comparison": "excludes", "name": "0Obx2Sew0MZIihZm", "predicateType": "StatisticCodePredicate", "value": "YUmFgFt0DivKAz5N", "values": ["dhzaqliT3NnnHcTz", "CFQSX9OXwvYGRR7i", "6bWqmJ7fxjzXBcon"]}, {"anyOf": 93, "code": "5vakIhIU06wQbQHa", "comparison": "isNot", "name": "ANiVhAjRYxKL2LhD", "predicateType": "SeasonTierPredicate", "value": "g4jebhxG4M4bkhFZ", "values": ["NDeuYMSIR5QvqOlj", "9Xe27DhGQlLPJJnY", "ACTV1hG6xfoiI7NH"]}, {"anyOf": 8, "code": "q8Oq8ulQNYMe80ws", "comparison": "isGreaterThanOrEqual", "name": "W9uAPcuNn1QASNEU", "predicateType": "SeasonTierPredicate", "value": "ZYoQSK9oWDflJ24o", "values": ["quC9F7gtXuZZGIoj", "EplA1Hg3O0Ao7Egu", "fnXCMNvA39X4PhXi"]}]}, {"operator": "or", "predicates": [{"anyOf": 9, "code": "9EkIVwnGavb7kujA", "comparison": "isLessThanOrEqual", "name": "aXycE9H6goKN4r9h", "predicateType": "SeasonTierPredicate", "value": "2z05tboKIAeqeZd3", "values": ["8IpwXg6hbp3ZCz9r", "imKwqDgOXMdyGpGt", "Z2qsdmiP01ZVammE"]}, {"anyOf": 78, "code": "f2u3Yr5pGOBzXmBV", "comparison": "includes", "name": "HM49B1BV91cPA1hK", "predicateType": "EntitlementPredicate", "value": "s3qgoEhOA1GSFJoK", "values": ["p0JZiadOSJtnR6Vj", "0Z2Q3QisSHbumRJ3", "7vKmhGvNxol4tMIG"]}, {"anyOf": 2, "code": "0h2rmXrIOR9QGKu8", "comparison": "isNot", "name": "66PkdkkZu9zvZI6t", "predicateType": "EntitlementPredicate", "value": "mgilGVRq85Pig7Hi", "values": ["YN0FD1GLFfJrCaOh", "pRSoQ7MYkudsZT1J", "5XWB1oX8t3v3wAlw"]}]}, {"operator": "and", "predicates": [{"anyOf": 73, "code": "GxOzFG65aDco5KxT", "comparison": "excludes", "name": "UqQpfm2LdDl3ar88", "predicateType": "StatisticCodePredicate", "value": "zM8v8tenqKrgqnxN", "values": ["kNKju12JKF0wOUJp", "AiTEn0oBfB93HsPr", "OSjWL7Tym8C4IJDq"]}, {"anyOf": 40, "code": "1mrVuJvQBZ8aIIE3", "comparison": "isLessThan", "name": "pds6yv6pi3HAPB84", "predicateType": "SeasonTierPredicate", "value": "gHotlzkzuUxuRHC2", "values": ["x5cRz9URGT25Vses", "LJltSSFe88Fp4B7T", "GB4nn27Hwnpq1eo6"]}, {"anyOf": 80, "code": "yIzNx0JrbXz7A0oG", "comparison": "isGreaterThan", "name": "m5l6Ix20DMqhPIgC", "predicateType": "SeasonTierPredicate", "value": "7IQjjGXJ5gwdGFsw", "values": ["14Q1HbOulcnkJTpY", "Cg8DuSIEQi92aJbO", "PgTHsYnWpLExNVft"]}]}]}}' \
    > test.out 2>&1
eval_tap $? 140 'UpdateItemPurchaseCondition' test.out

#- 141 ReturnItem
samples/cli/sample-apps Platform returnItem \
    --itemId 'r68gsE7xDKsjtYhS' \
    --namespace $AB_NAMESPACE \
    --body '{"orderNo": "PxDR5cZLIdV2uRMi"}' \
    > test.out 2>&1
eval_tap $? 141 'ReturnItem' test.out

#- 142 QueryKeyGroups
samples/cli/sample-apps Platform queryKeyGroups \
    --namespace $AB_NAMESPACE \
    --limit '17' \
    --name 'hntx55tUDtP68sx6' \
    --offset '1' \
    --tag 'rJPrhPdTX3JfgwTu' \
    > test.out 2>&1
eval_tap $? 142 'QueryKeyGroups' test.out

#- 143 CreateKeyGroup
samples/cli/sample-apps Platform createKeyGroup \
    --namespace $AB_NAMESPACE \
    --body '{"description": "XJ8HWf8BfQKFialx", "name": "WzF1RKeyke5clHxF", "status": "INACTIVE", "tags": ["nnAzkE8duv5aNG3F", "FScMB4055sturFmP", "ybShu9jgRdnTyraC"]}' \
    > test.out 2>&1
eval_tap $? 143 'CreateKeyGroup' test.out

#- 144 GetKeyGroupByBoothName
eval_tap 0 144 'GetKeyGroupByBoothName # SKIP deprecated' test.out

#- 145 GetKeyGroup
samples/cli/sample-apps Platform getKeyGroup \
    --keyGroupId '9gi7Y0z2tw45T92h' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 145 'GetKeyGroup' test.out

#- 146 UpdateKeyGroup
samples/cli/sample-apps Platform updateKeyGroup \
    --keyGroupId 'J483uyRRoeHeDP7Y' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "PikZswtUHxfSQtCg", "name": "iNBmzPTZ8B4145PB", "status": "INACTIVE", "tags": ["dErqIwmYWfaThifi", "WF1HhVgtokCYsnx6", "e41FghvIsjqrpenn"]}' \
    > test.out 2>&1
eval_tap $? 146 'UpdateKeyGroup' test.out

#- 147 GetKeyGroupDynamic
samples/cli/sample-apps Platform getKeyGroupDynamic \
    --keyGroupId 'QnnY2QxR7xytZlUg' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 147 'GetKeyGroupDynamic' test.out

#- 148 ListKeys
samples/cli/sample-apps Platform listKeys \
    --keyGroupId 'BGHe3Ir8jPdFfdaY' \
    --namespace $AB_NAMESPACE \
    --limit '10' \
    --offset '52' \
    --status 'ACQUIRED' \
    > test.out 2>&1
eval_tap $? 148 'ListKeys' test.out

#- 149 UploadKeys
samples/cli/sample-apps Platform uploadKeys \
    --keyGroupId '9wSXgbj5lMr0KqZ4' \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 149 'UploadKeys' test.out

#- 150 QueryOrders
samples/cli/sample-apps Platform queryOrders \
    --namespace $AB_NAMESPACE \
    --endTime 'GsDkzXuy1ab5CiQ3' \
    --limit '98' \
    --offset '32' \
    --orderNos '["snpNIfhYMAu4SAst", "1yU4vNBOjK0gdP0Q", "f1QswAshsOhHQee7"]' \
    --sortBy 'ONDbt63nb9MFWkmY' \
    --startTime 'jruI1aTu39f4wLBg' \
    --status 'CHARGEBACK_REVERSED' \
    --withTotal 'true' \
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
    --orderNo 'OMz41cnbmirR2iD4' \
    > test.out 2>&1
eval_tap $? 152 'GetOrder' test.out

#- 153 RefundOrder
samples/cli/sample-apps Platform refundOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'NbU3TabYir9E08HH' \
    --body '{"description": "oeFPLaH0fUP5s4iI"}' \
    > test.out 2>&1
eval_tap $? 153 'RefundOrder' test.out

#- 154 GetPaymentCallbackConfig
eval_tap 0 154 'GetPaymentCallbackConfig # SKIP deprecated' test.out

#- 155 UpdatePaymentCallbackConfig
eval_tap 0 155 'UpdatePaymentCallbackConfig # SKIP deprecated' test.out

#- 156 GetPaymentMerchantConfig
samples/cli/sample-apps Platform getPaymentMerchantConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 156 'GetPaymentMerchantConfig' test.out

#- 157 UpdatePaymentDomainWhitelistConfig
samples/cli/sample-apps Platform updatePaymentDomainWhitelistConfig \
    --namespace $AB_NAMESPACE \
    --body '{"domains": ["r4zdzfHPqxa5Xmsy", "0YeHCspFaINWwqw5", "oUmvYY4tLLT0WDDN"]}' \
    > test.out 2>&1
eval_tap $? 157 'UpdatePaymentDomainWhitelistConfig' test.out

#- 158 QueryPaymentNotifications
samples/cli/sample-apps Platform queryPaymentNotifications \
    --namespace $AB_NAMESPACE \
    --endDate 'vCzWoN9J8itsTeT0' \
    --externalId '7cBPrsoWeoXQ8uXt' \
    --limit '83' \
    --notificationSource 'XSOLLA' \
    --notificationType '34JNlxcp4yG5SpbD' \
    --offset '100' \
    --paymentOrderNo 'hegye3FpnnJ9wM9C' \
    --startDate 'roZmitllDhdGz9FG' \
    --status 'IGNORED' \
    > test.out 2>&1
eval_tap $? 158 'QueryPaymentNotifications' test.out

#- 159 QueryPaymentOrders
samples/cli/sample-apps Platform queryPaymentOrders \
    --namespace $AB_NAMESPACE \
    --channel 'INTERNAL' \
    --extTxId '1v69JgPt1QTrVmVB' \
    --limit '14' \
    --offset '79' \
    --status 'CHARGEBACK_REVERSED' \
    > test.out 2>&1
eval_tap $? 159 'QueryPaymentOrders' test.out

#- 160 CreatePaymentOrderByDedicated
samples/cli/sample-apps Platform createPaymentOrderByDedicated \
    --namespace $AB_NAMESPACE \
    --body '{"currencyCode": "uqKBRRM1grsmvS2T", "currencyNamespace": "xWiKDsUHU8zhWG77", "customParameters": {"yTVl8wINJAs0AtEO": {}, "kUR6Fj7ry3XF8bJc": {}, "4COqNkNAesZBAoDI": {}}, "description": "BtQlXyM4lS1j44gd", "extOrderNo": "B1MGA5pSGPGYEKIm", "extUserId": "9pPvADvsWYr4IC9C", "itemType": "BUNDLE", "language": "EaaJ_mwUs", "metadata": {"6p3a24SHXaIBCNfr": "yySfL4cR14gtMk5B", "MLVsYa4QGW4Nt09h": "xPRlUZ4OQM5ddwOL", "hRcHn4oCXJam8B0J": "op1xfRHUc1i5dnoY"}, "notifyUrl": "90AEZ6UxXP4jk64i", "omitNotification": false, "platform": "l11rjewvmEhBqzCM", "price": 42, "recurringPaymentOrderNo": "R0xsRsl79pW29fze", "region": "rfW2hDcSFTz90xJK", "returnUrl": "YVVDEYme1cK4pAOP", "sandbox": false, "sku": "gdvsIVjlp5eRBOsG", "subscriptionId": "eKYD2EZsFyShVhnZ", "targetNamespace": "4QqoLouhiHIogWms", "targetUserId": "QQNHCqgteDT1Enng", "title": "Yid7udCWaeq1LaGX"}' \
    > test.out 2>&1
eval_tap $? 160 'CreatePaymentOrderByDedicated' test.out

#- 161 ListExtOrderNoByExtTxId
samples/cli/sample-apps Platform listExtOrderNoByExtTxId \
    --namespace $AB_NAMESPACE \
    --extTxId 's4J5bgDEQ76STmCM' \
    > test.out 2>&1
eval_tap $? 161 'ListExtOrderNoByExtTxId' test.out

#- 162 GetPaymentOrder
samples/cli/sample-apps Platform getPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'e7ilNGpZEBqBaQjO' \
    > test.out 2>&1
eval_tap $? 162 'GetPaymentOrder' test.out

#- 163 ChargePaymentOrder
samples/cli/sample-apps Platform chargePaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'AuknKh24cAbcdcKY' \
    --body '{"extTxId": "71TwfOvV5eoHBwS7", "paymentMethod": "q0vxD49bqvzvRuNk", "paymentProvider": "WALLET"}' \
    > test.out 2>&1
eval_tap $? 163 'ChargePaymentOrder' test.out

#- 164 RefundPaymentOrderByDedicated
samples/cli/sample-apps Platform refundPaymentOrderByDedicated \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'kyw7QSPmJmvqva4R' \
    --body '{"description": "CQ9qgDTcI8pR2KM9"}' \
    > test.out 2>&1
eval_tap $? 164 'RefundPaymentOrderByDedicated' test.out

#- 165 SimulatePaymentOrderNotification
samples/cli/sample-apps Platform simulatePaymentOrderNotification \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'BBVXzc98wKbqoJkc' \
    --body '{"amount": 11, "currencyCode": "LoHvFR4QUy1fxCfp", "notifyType": "REFUND", "paymentProvider": "ADYEN", "salesTax": 43, "vat": 48}' \
    > test.out 2>&1
eval_tap $? 165 'SimulatePaymentOrderNotification' test.out

#- 166 GetPaymentOrderChargeStatus
samples/cli/sample-apps Platform getPaymentOrderChargeStatus \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'cqVPPmLCrgejFHRg' \
    > test.out 2>&1
eval_tap $? 166 'GetPaymentOrderChargeStatus' test.out

#- 167 GetPsnEntitlementOwnership
samples/cli/sample-apps Platform getPsnEntitlementOwnership \
    --entitlementLabel 'vGjFWDuuqzkwufQX' \
    --namespace $AB_NAMESPACE \
    --body '{"accessToken": "W0zSSpfUFw8uDgJZ", "serviceLabel": 100}' \
    > test.out 2>&1
eval_tap $? 167 'GetPsnEntitlementOwnership' test.out

#- 168 GetXboxEntitlementOwnership
samples/cli/sample-apps Platform getXboxEntitlementOwnership \
    --namespace $AB_NAMESPACE \
    --productSku 'iSBFcp4ZJVYxO16j' \
    --body '{"delegationToken": "jiG1LtIA0qDIkayL", "sandboxId": "9rIcdNGmq31pRYyZ"}' \
    > test.out 2>&1
eval_tap $? 168 'GetXboxEntitlementOwnership' test.out

#- 169 GetPlatformEntitlementConfig
samples/cli/sample-apps Platform getPlatformEntitlementConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Oculus' \
    > test.out 2>&1
eval_tap $? 169 'GetPlatformEntitlementConfig' test.out

#- 170 UpdatePlatformEntitlementConfig
samples/cli/sample-apps Platform updatePlatformEntitlementConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Other' \
    --body '{"allowedPlatformOrigins": ["Oculus", "System", "Xbox"]}' \
    > test.out 2>&1
eval_tap $? 170 'UpdatePlatformEntitlementConfig' test.out

#- 171 GetPlatformWalletConfig
samples/cli/sample-apps Platform getPlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Xbox' \
    > test.out 2>&1
eval_tap $? 171 'GetPlatformWalletConfig' test.out

#- 172 UpdatePlatformWalletConfig
samples/cli/sample-apps Platform updatePlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Epic' \
    --body '{"allowedBalanceOrigins": ["IOS", "Nintendo", "Other"]}' \
    > test.out 2>&1
eval_tap $? 172 'UpdatePlatformWalletConfig' test.out

#- 173 ResetPlatformWalletConfig
samples/cli/sample-apps Platform resetPlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Epic' \
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
    --body '{"entitlement": {"consumable": {"enabled": false, "strategy": "REVOKE_OR_REPORT"}, "durable": {"enabled": false, "strategy": "REVOKE_OR_REPORT"}}, "wallet": {"enabled": true, "strategy": "ALWAYS_REVOKE"}}' \
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
    --endTime 'hGuH6bWtzCw5W5M1' \
    --limit '39' \
    --offset '35' \
    --source 'DLC' \
    --startTime 'HSjhJMBCkom6Arj0' \
    --status 'FAIL' \
    --transactionId 'KJ6AZ731rKgevGRv' \
    --userId 'ZMNEc01h9nKIYvJn' \
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
    --body '{"appConfig": {"appName": "p5bLQpAc2acwx0Sn"}, "customConfig": {"connectionType": "TLS", "grpcServerAddress": "MjgbUL4j9Wa0AyST"}, "extendType": "CUSTOM"}' \
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
    --body '{"description": "rmLe5Wu7kBuyhKgh", "eventTopic": "Bs42YMhktpMzx4sL", "maxAwarded": 95, "maxAwardedPerUser": 15, "namespaceExpression": "sQ6EGyY49VWZgOUR", "rewardCode": "1KEr6N185BaAZgXc", "rewardConditions": [{"condition": "nTXJCMdPVeqAJyxb", "conditionName": "Gu4AUhEpzxujpQdf", "eventName": "tADbm6DyVd2xtSu1", "rewardItems": [{"duration": 90, "endDate": "1977-09-11T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "GarDcs6opfsQkqXQ", "quantity": 97, "sku": "hRwmBUFHy7dAXJHw"}, {"duration": 2, "endDate": "1974-07-26T00:00:00Z", "identityType": "ITEM_ID", "itemId": "ENndAJn2Ev3MYO2w", "quantity": 4, "sku": "CauUmWxOWSUE12S7"}, {"duration": 7, "endDate": "1992-08-26T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "5VZaTRt9ji3aIDDg", "quantity": 45, "sku": "lKRLxRFbL46yagoU"}]}, {"condition": "jSbFgqHEqABgQ4g8", "conditionName": "RI5nLiZPPcWwwQYI", "eventName": "2XHwJeZBJZH4laY3", "rewardItems": [{"duration": 23, "endDate": "1997-05-03T00:00:00Z", "identityType": "ITEM_ID", "itemId": "WogqspL0E1RXCw2z", "quantity": 84, "sku": "NBOklhX4zdy24CMZ"}, {"duration": 71, "endDate": "1990-12-18T00:00:00Z", "identityType": "ITEM_ID", "itemId": "qCo6ppZXJXblFvBq", "quantity": 69, "sku": "j2m2OlulXvtXWrfQ"}, {"duration": 47, "endDate": "1999-12-22T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "tmBn2MDQIxi8x8up", "quantity": 68, "sku": "Ne2mfw0XeK172jFp"}]}, {"condition": "RpxuPHM6bzH78iNT", "conditionName": "X5qfzWvpzbtbeHvi", "eventName": "nffaJNMmdo0fJaDT", "rewardItems": [{"duration": 81, "endDate": "1995-02-06T00:00:00Z", "identityType": "ITEM_ID", "itemId": "LfqOxIGqOIpOv6Wf", "quantity": 72, "sku": "9uk4PqScEvh2Artm"}, {"duration": 94, "endDate": "1976-01-19T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "gJfPapaakZSHUFMg", "quantity": 82, "sku": "qw3MgCFxWOyQToRn"}, {"duration": 78, "endDate": "1986-05-01T00:00:00Z", "identityType": "ITEM_ID", "itemId": "Cl43N2DquOqGZoHy", "quantity": 98, "sku": "fsTKJp767CdB3WUk"}]}], "userIdExpression": "wYyGZsyCTL7PAqQa"}' \
    > test.out 2>&1
eval_tap $? 182 'CreateReward' test.out

#- 183 QueryRewards
samples/cli/sample-apps Platform queryRewards \
    --namespace $AB_NAMESPACE \
    --eventTopic 'qwINvzB0M6Nd8HSS' \
    --limit '26' \
    --offset '41' \
    --sortBy '["namespace:desc", "rewardCode"]' \
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
    --replaceExisting 'false' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 185 'ImportRewards' test.out

#- 186 GetReward
samples/cli/sample-apps Platform getReward \
    --namespace $AB_NAMESPACE \
    --rewardId 'xyODFYS3ENczhU0W' \
    > test.out 2>&1
eval_tap $? 186 'GetReward' test.out

#- 187 UpdateReward
samples/cli/sample-apps Platform updateReward \
    --namespace $AB_NAMESPACE \
    --rewardId 'lB4AVcgYN6MdVlDe' \
    --body '{"description": "lDrsNQWs6hnjvgqV", "eventTopic": "Q9pVC3IlgPrNwaRK", "maxAwarded": 61, "maxAwardedPerUser": 3, "namespaceExpression": "xRNo993ULT3safkj", "rewardCode": "xVuHraHIChF1VRIt", "rewardConditions": [{"condition": "Wlgp4nuuYJRubGRl", "conditionName": "lv4qt0kiAGKSSUz7", "eventName": "jo7Jke4cKQqo6fMb", "rewardItems": [{"duration": 48, "endDate": "1974-04-07T00:00:00Z", "identityType": "ITEM_ID", "itemId": "fX82ecVMAAowsMHx", "quantity": 16, "sku": "dDvqRVKXZkwaDfGU"}, {"duration": 47, "endDate": "1977-04-10T00:00:00Z", "identityType": "ITEM_ID", "itemId": "niEy64YR5aRj9GZW", "quantity": 50, "sku": "AZMTJK5aWIZOzrtv"}, {"duration": 15, "endDate": "1988-03-04T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "yFsH2tAcTCqHutpe", "quantity": 24, "sku": "p8FqPoCygTyhrvk9"}]}, {"condition": "QGmlkwtqjnsLmScx", "conditionName": "qsilmNUYPWM8IBWv", "eventName": "ONYKA5wtE2fCFH5d", "rewardItems": [{"duration": 100, "endDate": "1994-10-28T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "bJwYUBzXzcRr6p3K", "quantity": 83, "sku": "CthEDo9Q7VEalZhF"}, {"duration": 28, "endDate": "1976-04-11T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "nrensBvYniEapot2", "quantity": 44, "sku": "8ZKsVYoxslch5zrq"}, {"duration": 8, "endDate": "1996-04-14T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "zRHQvB8xK6CHLdyd", "quantity": 55, "sku": "aleZRXYqN0t67hQR"}]}, {"condition": "dIv0fBB89dC4hv5n", "conditionName": "AdON3N0HJFln88OX", "eventName": "1vsXB23N1NqExajG", "rewardItems": [{"duration": 86, "endDate": "1988-03-25T00:00:00Z", "identityType": "ITEM_ID", "itemId": "VqwvjmokQ4Fe4WRg", "quantity": 73, "sku": "d8lbHTxNrnbziLPF"}, {"duration": 71, "endDate": "1998-11-09T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "xsOxFBGX2SaTUEai", "quantity": 42, "sku": "ws50RRznlbTytvm4"}, {"duration": 59, "endDate": "1999-03-31T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "U48pZFP0b1804eF1", "quantity": 22, "sku": "SJdlm7e2TVo1ajAx"}]}], "userIdExpression": "UIIsd3acpeIVV3MA"}' \
    > test.out 2>&1
eval_tap $? 187 'UpdateReward' test.out

#- 188 DeleteReward
samples/cli/sample-apps Platform deleteReward \
    --namespace $AB_NAMESPACE \
    --rewardId 'j28W8wUIfvVShNmm' \
    > test.out 2>&1
eval_tap $? 188 'DeleteReward' test.out

#- 189 CheckEventCondition
samples/cli/sample-apps Platform checkEventCondition \
    --namespace $AB_NAMESPACE \
    --rewardId 'YZYsKBriw32WCaWt' \
    --body '{"payload": {"4SR0ut8LlrX3Ev44": {}, "MT1UUOvq9TJkk1B4": {}, "465MzK6M2M4SNMmC": {}}}' \
    > test.out 2>&1
eval_tap $? 189 'CheckEventCondition' test.out

#- 190 DeleteRewardConditionRecord
samples/cli/sample-apps Platform deleteRewardConditionRecord \
    --namespace $AB_NAMESPACE \
    --rewardId 'qb4WPKmEbp7RBAnD' \
    --body '{"conditionName": "PyIFckxXWgR48tgM", "userId": "ly7biScuPc2EQ6jQ"}' \
    > test.out 2>&1
eval_tap $? 190 'DeleteRewardConditionRecord' test.out

#- 191 QuerySections
samples/cli/sample-apps Platform querySections \
    --namespace $AB_NAMESPACE \
    --end 'FaozzsbOTePQ7WFf' \
    --limit '15' \
    --offset '50' \
    --start 'FGElgUKR5Pnw2IPd' \
    --storeId 'unaNJgcS04yzj6na' \
    --viewId 'LvtiJYBGTPkrlYXJ' \
    > test.out 2>&1
eval_tap $? 191 'QuerySections' test.out

#- 192 CreateSection
samples/cli/sample-apps Platform createSection \
    --namespace $AB_NAMESPACE \
    --storeId '5AzFfoGiMXCDXvIl' \
    --body '{"active": false, "displayOrder": 70, "endDate": "1973-03-08T00:00:00Z", "ext": {"X5v85jITfDytIVTA": {}, "p0sYUSft8oHhJAwa": {}, "o16ippBH2AKHdJJO": {}}, "fixedPeriodRotationConfig": {"backfillType": "NONE", "duration": 19, "itemCount": 19, "rule": "SEQUENCE"}, "items": [{"id": "JlOlWbjwDk83bwRt", "sku": "2viyO6Ra3fOAhjJS"}, {"id": "3jUOUOAUghv0Meht", "sku": "ZOJ6eu2SBKWd1Q8u"}, {"id": "05HQ8SbOvLwM1GhC", "sku": "07NiXv1RYyDbncJs"}], "localizations": {"D23z5VTTfiEg5mDM": {"description": "j2V8vuo1NN5eTib1", "localExt": {"W9JK1qMlLbPofqug": {}, "932elt3AIOOYhbUi": {}, "3eRA4vTKbiaildm8": {}}, "longDescription": "eu1uwslcjEQzkh2M", "title": "XR3ZDohPWKklGkH2"}, "g6CMqvdK40f8pzFs": {"description": "uQZAmvHmhp8FsYoj", "localExt": {"OOE0oz093lzlZPk3": {}, "FTPnmssYy9hPpOtH": {}, "LuZGLcQRaHbAH0GN": {}}, "longDescription": "VAH3HWf04lvTVV5A", "title": "71HS9hOFsbbMOTyp"}, "wiJqob0qYSiZCI9g": {"description": "nNEixWSovgpm5aRL", "localExt": {"viqAFPp7bD25L7St": {}, "h5eJNghPzTzXZh9K": {}, "SpdgHZusfCckPF10": {}}, "longDescription": "EzgudXLWtW9g5kgs", "title": "GIyCEMdVupnB7RyT"}}, "name": "fr5a3TeNkOhLirEY", "rotationType": "FIXED_PERIOD", "startDate": "1976-05-18T00:00:00Z", "viewId": "RoVbh0Wz63Asr8nZ"}' \
    > test.out 2>&1
eval_tap $? 192 'CreateSection' test.out

#- 193 PurgeExpiredSection
samples/cli/sample-apps Platform purgeExpiredSection \
    --namespace $AB_NAMESPACE \
    --storeId 'saNgbtI2ppqcy3qi' \
    > test.out 2>&1
eval_tap $? 193 'PurgeExpiredSection' test.out

#- 194 GetSection
samples/cli/sample-apps Platform getSection \
    --namespace $AB_NAMESPACE \
    --sectionId '0NYyEY80m5hDpdyV' \
    --storeId '3oy5JsYNZOD7lRjZ' \
    > test.out 2>&1
eval_tap $? 194 'GetSection' test.out

#- 195 UpdateSection
samples/cli/sample-apps Platform updateSection \
    --namespace $AB_NAMESPACE \
    --sectionId 'CGs7LKkLxjBzOjZS' \
    --storeId 'SbJ3MizBHtntnBFt' \
    --body '{"active": true, "displayOrder": 55, "endDate": "1999-08-21T00:00:00Z", "ext": {"QJadMFN8eC1mPp47": {}, "RdQOBmt7nb6noPKS": {}, "plErUa7QFJh2oYDx": {}}, "fixedPeriodRotationConfig": {"backfillType": "NONE", "duration": 23, "itemCount": 74, "rule": "SEQUENCE"}, "items": [{"id": "l8Dejw8XYWicHRdo", "sku": "sdVFlbPlQWFSXXBI"}, {"id": "f1GVyCOlvnL5nO4U", "sku": "0c939TB2e0x9xCXC"}, {"id": "6tKACREeu08EBJu3", "sku": "c2L7yRU9dHtSlIaH"}], "localizations": {"RnqNJuMWsTqep5D2": {"description": "7bS0PjmDuji6RvAp", "localExt": {"XKcocv1VVxBm5Riv": {}, "wGYT2vLSdSqdYxLo": {}, "om7EDhf5ZOnF82yz": {}}, "longDescription": "ubz4beoQKmrZFdw5", "title": "0N8tEoH6LHqY1pbY"}, "uTDcgo0u8r5pKa7i": {"description": "A4RgFuHLx65Fm9FL", "localExt": {"3hxmbgQgFMMTOZha": {}, "0kRrj9Ews5r1F1Zl": {}, "hP2IgGOfJLz9LSR9": {}}, "longDescription": "ItaBIJCU7iD1y2R6", "title": "95aA9reFVNb5rmbq"}, "92pc4ksdJbIdB5VP": {"description": "G4hZrhaOh3K81cws", "localExt": {"c2kqMjr8ErA8oz68": {}, "WFChvUhSwSZzNeOk": {}, "aiy722CSBWgge4Tk": {}}, "longDescription": "nthCRJCdiLx4F7DY", "title": "cVjmWWS1yD60EfXs"}}, "name": "SHmFAAxkVZVy8n7Q", "rotationType": "FIXED_PERIOD", "startDate": "1974-07-09T00:00:00Z", "viewId": "7KW509bxAlokllER"}' \
    > test.out 2>&1
eval_tap $? 195 'UpdateSection' test.out

#- 196 DeleteSection
samples/cli/sample-apps Platform deleteSection \
    --namespace $AB_NAMESPACE \
    --sectionId 'EvFgl5WV4mEhb7XF' \
    --storeId 'ZStsRTAbjhxU3emY' \
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
    --body '{"defaultLanguage": "gOlwjqf0kP2hp7mJ", "defaultRegion": "bUKydN9p4TZ9P6at", "description": "y31FqnVNjw9v51HP", "supportedLanguages": ["o7X5G23G7Lx7SQ3O", "nSeam83M1LGKY9UQ", "0JKh8lQaK3XyVzuz"], "supportedRegions": ["Gr7n82dy8KNUtiDY", "UGxKb4gOOBxP0DE7", "Ve2IacuLWmZf8vtJ"], "title": "T3mYcD7YTgqB0p8k"}' \
    > test.out 2>&1
eval_tap $? 198 'CreateStore' test.out

#- 199 GetCatalogDefinition
samples/cli/sample-apps Platform getCatalogDefinition \
    --namespace $AB_NAMESPACE \
    --catalogType 'ITEM' \
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
    --body '{"catalogType": "APP", "fieldsToBeIncluded": ["BU7yB2DmW0gETmZB", "xE8hhQ3lbcoCLkg9", "omqs0ieHlRgjp4Lx"], "idsToBeExported": ["IvrjXCrpXOFl9F5u", "OCZVipGt7wQ4rMgm", "cLTl38wN6lWittOy"], "storeId": "ZC5ZbUjIbIxHBu0R"}' \
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
    --storeId 'npTWCqwdsK0MTR2K' \
    > test.out 2>&1
eval_tap $? 207 'GetStore' test.out

#- 208 UpdateStore
samples/cli/sample-apps Platform updateStore \
    --namespace $AB_NAMESPACE \
    --storeId 'ze0rA0AKKmnfo2P4' \
    --body '{"defaultLanguage": "oT0yqmXDCNKtzaMi", "defaultRegion": "xQehEddf5EdiPouM", "description": "86pDXnAkwCshraOc", "supportedLanguages": ["7UDzh45uZNtdRKa2", "9EuR4VDm1AFGH79p", "tUsBBIcVvqlQRSdx"], "supportedRegions": ["xrkE53eUzMxPtgoY", "ISias5cgedabd2ZD", "TgT45XcW947I25g7"], "title": "hSKv9S67WV4y21NW"}' \
    > test.out 2>&1
eval_tap $? 208 'UpdateStore' test.out

#- 209 DeleteStore
samples/cli/sample-apps Platform deleteStore \
    --namespace $AB_NAMESPACE \
    --storeId 'F5vhhhZjiM6WgApm' \
    > test.out 2>&1
eval_tap $? 209 'DeleteStore' test.out

#- 210 QueryChanges
samples/cli/sample-apps Platform queryChanges \
    --namespace $AB_NAMESPACE \
    --storeId 'i8F5L3EZvHAJGHxD' \
    --action 'DELETE' \
    --itemSku '8D1ZSOxp3DTPl8aH' \
    --itemType 'LOOTBOX' \
    --limit '8' \
    --offset '65' \
    --selected 'true' \
    --sortBy '["createdAt:asc", "updatedAt"]' \
    --status 'UNPUBLISHED' \
    --type 'VIEW' \
    --updatedAtEnd 'yAvCEGx891D4Ck4p' \
    --updatedAtStart 'ppLpkUN6hZpp0zs2' \
    --withTotal 'true' \
    > test.out 2>&1
eval_tap $? 210 'QueryChanges' test.out

#- 211 PublishAll
samples/cli/sample-apps Platform publishAll \
    --namespace $AB_NAMESPACE \
    --storeId '8DFxIsd2Agym39xh' \
    > test.out 2>&1
eval_tap $? 211 'PublishAll' test.out

#- 212 PublishSelected
samples/cli/sample-apps Platform publishSelected \
    --namespace $AB_NAMESPACE \
    --storeId 'zTP6B01DjkLbHkMq' \
    > test.out 2>&1
eval_tap $? 212 'PublishSelected' test.out

#- 213 SelectAllRecords
samples/cli/sample-apps Platform selectAllRecords \
    --namespace $AB_NAMESPACE \
    --storeId 'EPd4Yj5wlvEpanox' \
    > test.out 2>&1
eval_tap $? 213 'SelectAllRecords' test.out

#- 214 SelectAllRecordsByCriteria
samples/cli/sample-apps Platform selectAllRecordsByCriteria \
    --namespace $AB_NAMESPACE \
    --storeId 'ecaYTLS8NNYzkvfc' \
    --action 'CREATE' \
    --itemSku 'pil42m5QkVBuoNEH' \
    --itemType 'COINS' \
    --selected 'false' \
    --type 'VIEW' \
    --updatedAtEnd 'DchwiNOAQ6frdgjn' \
    --updatedAtStart 'sKg7IDuzX2T54pki' \
    > test.out 2>&1
eval_tap $? 214 'SelectAllRecordsByCriteria' test.out

#- 215 GetStatistic
samples/cli/sample-apps Platform getStatistic \
    --namespace $AB_NAMESPACE \
    --storeId 'mzccNlCBuMr7K3Jp' \
    --action 'CREATE' \
    --itemSku 'fuCkXwyvcimyS65V' \
    --itemType 'SEASON' \
    --type 'STORE' \
    --updatedAtEnd 'c1kELpqKHNV14nLL' \
    --updatedAtStart 'qBPaf0oW5tCOVE47' \
    > test.out 2>&1
eval_tap $? 215 'GetStatistic' test.out

#- 216 UnselectAllRecords
samples/cli/sample-apps Platform unselectAllRecords \
    --namespace $AB_NAMESPACE \
    --storeId 'cp9QneLSWF0amo77' \
    > test.out 2>&1
eval_tap $? 216 'UnselectAllRecords' test.out

#- 217 SelectRecord
samples/cli/sample-apps Platform selectRecord \
    --changeId 'JD0PUXBDvlMS4z1t' \
    --namespace $AB_NAMESPACE \
    --storeId 'xXqzslMpZOdikmdn' \
    > test.out 2>&1
eval_tap $? 217 'SelectRecord' test.out

#- 218 UnselectRecord
samples/cli/sample-apps Platform unselectRecord \
    --changeId 'TdAI3ii5MrjZ6oIR' \
    --namespace $AB_NAMESPACE \
    --storeId 'zB9GfpafrPA9VmbW' \
    > test.out 2>&1
eval_tap $? 218 'UnselectRecord' test.out

#- 219 CloneStore
samples/cli/sample-apps Platform cloneStore \
    --namespace $AB_NAMESPACE \
    --storeId 'KZEmk3qUGIGlYf8H' \
    --targetStoreId 'WBO4zeuNaoamls99' \
    > test.out 2>&1
eval_tap $? 219 'CloneStore' test.out

#- 220 ExportStore
eval_tap 0 220 'ExportStore # SKIP deprecated' test.out

#- 221 QueryImportHistory
samples/cli/sample-apps Platform queryImportHistory \
    --namespace $AB_NAMESPACE \
    --storeId 'wl9PVYailj0oGr8z' \
    --end 'fcHZTzMQQzMNLuIr' \
    --limit '39' \
    --offset '24' \
    --sortBy 'MgyVMtpmzxQobLnI' \
    --start 'mWxKHQzTyO7Ny2It' \
    --success 'true' \
    > test.out 2>&1
eval_tap $? 221 'QueryImportHistory' test.out

#- 222 ImportStoreByCSV
samples/cli/sample-apps Platform importStoreByCSV \
    --namespace $AB_NAMESPACE \
    --storeId 'TaXocay7WZvJDoRa' \
    --category 'tmp.dat' \
    --display 'tmp.dat' \
    --item 'tmp.dat' \
    --notes '5QXzjcCLrloCWdXf' \
    --section 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 222 'ImportStoreByCSV' test.out

#- 223 QuerySubscriptions
samples/cli/sample-apps Platform querySubscriptions \
    --namespace $AB_NAMESPACE \
    --chargeStatus 'CHARGED' \
    --itemId 'bFh3oJfDAb271QSO' \
    --limit '52' \
    --offset '6' \
    --sku 'rsv5Iw4b2Lm82T4i' \
    --status 'EXPIRED' \
    --subscribedBy 'PLATFORM' \
    --userId 'QHcbz2Tx1Imz3TiJ' \
    > test.out 2>&1
eval_tap $? 223 'QuerySubscriptions' test.out

#- 224 RecurringChargeSubscription
samples/cli/sample-apps Platform recurringChargeSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'bBv8IfusERZlAwjr' \
    > test.out 2>&1
eval_tap $? 224 'RecurringChargeSubscription' test.out

#- 225 GetTicketDynamic
samples/cli/sample-apps Platform getTicketDynamic \
    --boothName 'cM8O1y1G2umdnwzw' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 225 'GetTicketDynamic' test.out

#- 226 DecreaseTicketSale
samples/cli/sample-apps Platform decreaseTicketSale \
    --boothName 'nuo2mi1phgmMKwAp' \
    --namespace $AB_NAMESPACE \
    --body '{"orderNo": "9rbVLDPsPYFxR1Cw"}' \
    > test.out 2>&1
eval_tap $? 226 'DecreaseTicketSale' test.out

#- 227 GetTicketBoothID
samples/cli/sample-apps Platform getTicketBoothID \
    --boothName 'ga8XiAHjcBx0uqnu' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 227 'GetTicketBoothID' test.out

#- 228 IncreaseTicketSale
samples/cli/sample-apps Platform increaseTicketSale \
    --boothName '2DFE0kCV5dtoYIRv' \
    --namespace $AB_NAMESPACE \
    --body '{"count": 68, "orderNo": "lJ7XGD8Sdck7aCwf"}' \
    > test.out 2>&1
eval_tap $? 228 'IncreaseTicketSale' test.out

#- 229 Commit
samples/cli/sample-apps Platform commit \
    --namespace $AB_NAMESPACE \
    --body '{"actions": [{"operations": [{"creditPayload": {"balanceOrigin": "Other", "count": 34, "currencyCode": "31u33JVrs3B7pZir", "expireAt": "1987-02-23T00:00:00Z"}, "debitPayload": {"count": 55, "currencyCode": "DUNRpMO5NiGq9i5z", "walletPlatform": "Other"}, "fulFillItemPayload": {"count": 86, "entitlementCollectionId": "FdMdSIBqU85dfxB6", "entitlementOrigin": "Other", "itemIdentity": "oAAV7LcbNEeGNBR5", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 100, "entitlementId": "3CJ8K7lrYh90WVqA"}, "type": "REVOKE_ENTITLEMENT"}, {"creditPayload": {"balanceOrigin": "Playstation", "count": 53, "currencyCode": "2nn4QN9MGPsg2nCA", "expireAt": "1983-02-25T00:00:00Z"}, "debitPayload": {"count": 27, "currencyCode": "vD5GeRBEnRbg0imU", "walletPlatform": "Steam"}, "fulFillItemPayload": {"count": 100, "entitlementCollectionId": "6K3qNUhDRLZaGMGI", "entitlementOrigin": "Steam", "itemIdentity": "EI3gAQFzUgZ0FohH", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 54, "entitlementId": "z2ReeDYr6ZhqHqu0"}, "type": "DEBIT_WALLET"}, {"creditPayload": {"balanceOrigin": "Nintendo", "count": 28, "currencyCode": "4VVJBLgl04rtg6Qy", "expireAt": "1973-06-04T00:00:00Z"}, "debitPayload": {"count": 15, "currencyCode": "0BlPc4tvSphE7xbo", "walletPlatform": "Oculus"}, "fulFillItemPayload": {"count": 49, "entitlementCollectionId": "sJJG4WU2f54Kehas", "entitlementOrigin": "System", "itemIdentity": "QcRbTKvQNGaVn4A7", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 30, "entitlementId": "Z4IO54POo55dsZIn"}, "type": "REVOKE_ENTITLEMENT"}], "userId": "Fec5oMTUuLk4xi2B"}, {"operations": [{"creditPayload": {"balanceOrigin": "Epic", "count": 29, "currencyCode": "gcACVAvqnrvRmmg1", "expireAt": "1975-11-02T00:00:00Z"}, "debitPayload": {"count": 31, "currencyCode": "XIJPeCkszEOItRu2", "walletPlatform": "GooglePlay"}, "fulFillItemPayload": {"count": 83, "entitlementCollectionId": "iRZFpAVl2qJ5Yb7c", "entitlementOrigin": "Epic", "itemIdentity": "7mBfrLpGftGwHfCg", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 52, "entitlementId": "8n0bXuAmULVnVPij"}, "type": "CREDIT_WALLET"}, {"creditPayload": {"balanceOrigin": "Epic", "count": 11, "currencyCode": "MTGMzxVbgsycincg", "expireAt": "1975-09-26T00:00:00Z"}, "debitPayload": {"count": 45, "currencyCode": "liFNCuLfnI7Y3RGF", "walletPlatform": "Xbox"}, "fulFillItemPayload": {"count": 30, "entitlementCollectionId": "0cUtoLxUlb6qOt3H", "entitlementOrigin": "Epic", "itemIdentity": "sQA6a6FVpbeDX8nP", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 10, "entitlementId": "BH6tz8K6V9RjGByt"}, "type": "FULFILL_ITEM"}, {"creditPayload": {"balanceOrigin": "Epic", "count": 2, "currencyCode": "zB3IvmRtk0ZtcE57", "expireAt": "1985-01-03T00:00:00Z"}, "debitPayload": {"count": 36, "currencyCode": "g6495uDHWhe8uXKr", "walletPlatform": "Xbox"}, "fulFillItemPayload": {"count": 72, "entitlementCollectionId": "Uw0oSAxGRLqd0zPs", "entitlementOrigin": "Xbox", "itemIdentity": "whn1z1nJg3rBpWDC", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 35, "entitlementId": "26G7XHMu9Fn2Nhqu"}, "type": "FULFILL_ITEM"}], "userId": "WCxyP7QfdMniKrP7"}, {"operations": [{"creditPayload": {"balanceOrigin": "Xbox", "count": 24, "currencyCode": "tSiECR7ITx4EvjMG", "expireAt": "1979-06-26T00:00:00Z"}, "debitPayload": {"count": 73, "currencyCode": "zJuyp981Vw9gYszp", "walletPlatform": "Playstation"}, "fulFillItemPayload": {"count": 76, "entitlementCollectionId": "pS6zozrp0yGVLcMI", "entitlementOrigin": "Oculus", "itemIdentity": "ttcj1cMUrzQyHU8v", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 43, "entitlementId": "vmf9SsZRiB9g7Si5"}, "type": "CREDIT_WALLET"}, {"creditPayload": {"balanceOrigin": "IOS", "count": 97, "currencyCode": "8kzFl1ZfkfCBcTsr", "expireAt": "1972-09-26T00:00:00Z"}, "debitPayload": {"count": 2, "currencyCode": "enutFmz6wrFKcxjX", "walletPlatform": "Other"}, "fulFillItemPayload": {"count": 90, "entitlementCollectionId": "aTQWxm6uAcnFKhoE", "entitlementOrigin": "Other", "itemIdentity": "FFcAt9bZTdJ016FD", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 39, "entitlementId": "vXU5kZplo4z1Q3zB"}, "type": "CREDIT_WALLET"}, {"creditPayload": {"balanceOrigin": "Nintendo", "count": 21, "currencyCode": "QuEoXK1yhtMjKRNM", "expireAt": "1988-05-28T00:00:00Z"}, "debitPayload": {"count": 99, "currencyCode": "tmAGuQFbBujBMh7S", "walletPlatform": "Playstation"}, "fulFillItemPayload": {"count": 77, "entitlementCollectionId": "nZxKihooVckcjkJJ", "entitlementOrigin": "Xbox", "itemIdentity": "NGypFkmAI2gLDgzf", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 32, "entitlementId": "989oze2gbb9bsQQ9"}, "type": "DEBIT_WALLET"}], "userId": "HCKE2XgHIgdl5gww"}], "metadata": {"vyTOjQaNJSwik9eO": {}, "hb31yj9YMIjHjP9v": {}, "SNzetfu3dTKtraR9": {}}, "needPreCheck": false, "transactionId": "K3aIYpo29E6WT7NN", "type": "p7u4ssh8kU4ZLnE0"}' \
    > test.out 2>&1
eval_tap $? 229 'Commit' test.out

#- 230 GetTradeHistoryByCriteria
samples/cli/sample-apps Platform getTradeHistoryByCriteria \
    --namespace $AB_NAMESPACE \
    --limit '48' \
    --offset '78' \
    --status 'FAILED' \
    --type 'eWDvISi2e9JTjPtM' \
    --userId 'n7mq7kCwfbOyOFhH' \
    > test.out 2>&1
eval_tap $? 230 'GetTradeHistoryByCriteria' test.out

#- 231 GetTradeHistoryByTransactionId
samples/cli/sample-apps Platform getTradeHistoryByTransactionId \
    --namespace $AB_NAMESPACE \
    --transactionId 'T45EfNUDrhOCxJKe' \
    > test.out 2>&1
eval_tap $? 231 'GetTradeHistoryByTransactionId' test.out

#- 232 UnlockSteamUserAchievement
samples/cli/sample-apps Platform unlockSteamUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'WFJlng07wuznboU6' \
    --body '{"achievements": [{"id": "OSYGWXYeGoMV1A3E", "value": 29}, {"id": "BrUMN3YdKziHGqMl", "value": 43}, {"id": "GjJOSktlanXJhyl8", "value": 74}], "steamUserId": "7LAIadqtX3UDZRCK"}' \
    > test.out 2>&1
eval_tap $? 232 'UnlockSteamUserAchievement' test.out

#- 233 GetXblUserAchievements
samples/cli/sample-apps Platform getXblUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId 'GZTLSIEchb4C1nRx' \
    --xboxUserId 'SYwdTL8d5HJJ0cNW' \
    > test.out 2>&1
eval_tap $? 233 'GetXblUserAchievements' test.out

#- 234 UpdateXblUserAchievement
samples/cli/sample-apps Platform updateXblUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId '3e3gDMioSwyw47JR' \
    --body '{"achievements": [{"id": "RC31vN3AtiSZsnMq", "percentComplete": 12}, {"id": "Z30yK6TmqCpjvUqt", "percentComplete": 64}, {"id": "5AY354Il7WPE6nnS", "percentComplete": 63}], "serviceConfigId": "1pqlSAJzPjIgzIFz", "titleId": "fvvirq8pAOKZTDdZ", "xboxUserId": "mxSGzBnmB78ecpIg"}' \
    > test.out 2>&1
eval_tap $? 234 'UpdateXblUserAchievement' test.out

#- 235 AnonymizeCampaign
samples/cli/sample-apps Platform anonymizeCampaign \
    --namespace $AB_NAMESPACE \
    --userId 'bZv6MuQXr9NrCVjt' \
    > test.out 2>&1
eval_tap $? 235 'AnonymizeCampaign' test.out

#- 236 AnonymizeEntitlement
samples/cli/sample-apps Platform anonymizeEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'PEUehampFQLqlVrz' \
    > test.out 2>&1
eval_tap $? 236 'AnonymizeEntitlement' test.out

#- 237 AnonymizeFulfillment
samples/cli/sample-apps Platform anonymizeFulfillment \
    --namespace $AB_NAMESPACE \
    --userId 'W7wPF9tukJUEjpMR' \
    > test.out 2>&1
eval_tap $? 237 'AnonymizeFulfillment' test.out

#- 238 AnonymizeIntegration
samples/cli/sample-apps Platform anonymizeIntegration \
    --namespace $AB_NAMESPACE \
    --userId 'RNcy1u9Om3phTxEN' \
    > test.out 2>&1
eval_tap $? 238 'AnonymizeIntegration' test.out

#- 239 AnonymizeOrder
samples/cli/sample-apps Platform anonymizeOrder \
    --namespace $AB_NAMESPACE \
    --userId '2lZi0laJLeI6whtQ' \
    > test.out 2>&1
eval_tap $? 239 'AnonymizeOrder' test.out

#- 240 AnonymizePayment
samples/cli/sample-apps Platform anonymizePayment \
    --namespace $AB_NAMESPACE \
    --userId 'bsTGtI3jUTXRzYQ4' \
    > test.out 2>&1
eval_tap $? 240 'AnonymizePayment' test.out

#- 241 AnonymizeRevocation
samples/cli/sample-apps Platform anonymizeRevocation \
    --namespace $AB_NAMESPACE \
    --userId '6YvUwzX0Y2QI2FeD' \
    > test.out 2>&1
eval_tap $? 241 'AnonymizeRevocation' test.out

#- 242 AnonymizeSubscription
samples/cli/sample-apps Platform anonymizeSubscription \
    --namespace $AB_NAMESPACE \
    --userId 'mcUYAHck0PyJMTdK' \
    > test.out 2>&1
eval_tap $? 242 'AnonymizeSubscription' test.out

#- 243 AnonymizeWallet
samples/cli/sample-apps Platform anonymizeWallet \
    --namespace $AB_NAMESPACE \
    --userId '2UgyoOuS9kmmKlo9' \
    > test.out 2>&1
eval_tap $? 243 'AnonymizeWallet' test.out

#- 244 GetUserDLCByPlatform
samples/cli/sample-apps Platform getUserDLCByPlatform \
    --namespace $AB_NAMESPACE \
    --userId 'rXpDU0EMOIZYOLPo' \
    --type 'STEAM' \
    > test.out 2>&1
eval_tap $? 244 'GetUserDLCByPlatform' test.out

#- 245 GetUserDLC
samples/cli/sample-apps Platform getUserDLC \
    --namespace $AB_NAMESPACE \
    --userId 'koTQMrPyUMXWAiEA' \
    --includeAllNamespaces 'true' \
    --status 'FULFILLED' \
    --type 'EPICGAMES' \
    > test.out 2>&1
eval_tap $? 245 'GetUserDLC' test.out

#- 246 QueryUserEntitlements
samples/cli/sample-apps Platform queryUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'CwWWKR8AkJzqXqeo' \
    --activeOnly 'false' \
    --appType 'GAME' \
    --collectionId 'MQBP4fEaEWXD4FOp' \
    --entitlementClazz 'ENTITLEMENT' \
    --entitlementName '2TgEmLzG2NPe4bZn' \
    --features '["frVrQl1Pu78r19fS", "digUQ3YSeF7I4v19", "se7XuDD5h5dklQkw"]' \
    --fuzzyMatchName 'false' \
    --ignoreActiveDate 'true' \
    --itemId '["9uCRS4EEDvEt33ek", "lzxhm1PmhkwXvQax", "WJLyfnwsWGaxtQIK"]' \
    --limit '57' \
    --offset '34' \
    --origin 'GooglePlay' \
    > test.out 2>&1
eval_tap $? 246 'QueryUserEntitlements' test.out

#- 247 GrantUserEntitlement
samples/cli/sample-apps Platform grantUserEntitlement \
    --namespace $AB_NAMESPACE \
    --userId '4MaPCiLkbtUAc9LK' \
    --body '[{"collectionId": "286uWa8nKeLipG32", "endDate": "1974-04-21T00:00:00Z", "grantedCode": "b4JxC6Wsn39qTrp0", "itemId": "94QjFBhcTDeFYlE5", "itemNamespace": "SyEMYcLiHSKhrQcO", "language": "rx", "metadata": {"eQ0R3xf3rAGIQabW": {}, "OtOSUYd7uz7KAF1O": {}, "jRp4zAyrw2ZTI5mL": {}}, "origin": "Playstation", "quantity": 27, "region": "7wxzq63sGRdHiiE4", "source": "IAP", "startDate": "1985-07-15T00:00:00Z", "storeId": "w9VBUz8cljIaXcs4"}, {"collectionId": "BmkQre7aXG2QaeRX", "endDate": "1973-09-01T00:00:00Z", "grantedCode": "D9EcR7qSVqSFtJIw", "itemId": "xYVDywD0ZkUNqlXG", "itemNamespace": "wqzN8broX5RIp3rC", "language": "QJK_nAkN-Sb", "metadata": {"ToND9Uxs5JP4HDIE": {}, "tXLR5A7TGxGiOfB0": {}, "AtGwBu7LbnLYnIiH": {}}, "origin": "Nintendo", "quantity": 57, "region": "3nHIff1NNxfOqN6F", "source": "REDEEM_CODE", "startDate": "1996-03-31T00:00:00Z", "storeId": "ZzrkykC1d5eHNG5v"}, {"collectionId": "TNPAG4JfmKdOFlgY", "endDate": "1979-03-09T00:00:00Z", "grantedCode": "Sr4quaVFOhIpKJeX", "itemId": "IfEKbe0EDlQogAKc", "itemNamespace": "NHy3bSDicq8vrGJI", "language": "hY-Tdmx-944", "metadata": {"xZ0IWJPSQsf6iwzb": {}, "P4ViM2IoYec73KpU": {}, "hiwE3YIIgYP8Iu3Y": {}}, "origin": "GooglePlay", "quantity": 5, "region": "Sq69tyYSyAuJY8l7", "source": "REDEEM_CODE", "startDate": "1999-04-09T00:00:00Z", "storeId": "iBwEbiFGeZHdHKPW"}]' \
    > test.out 2>&1
eval_tap $? 247 'GrantUserEntitlement' test.out

#- 248 GetUserAppEntitlementByAppId
samples/cli/sample-apps Platform getUserAppEntitlementByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'Swy4MgAzWOUdFXuq' \
    --activeOnly 'false' \
    --appId 'BJlHzIri1yqAAALb' \
    > test.out 2>&1
eval_tap $? 248 'GetUserAppEntitlementByAppId' test.out

#- 249 QueryUserEntitlementsByAppType
samples/cli/sample-apps Platform queryUserEntitlementsByAppType \
    --namespace $AB_NAMESPACE \
    --userId 'hYNeeDtidMKzEwjY' \
    --activeOnly 'true' \
    --limit '29' \
    --offset '18' \
    --appType 'DEMO' \
    > test.out 2>&1
eval_tap $? 249 'QueryUserEntitlementsByAppType' test.out

#- 250 GetUserEntitlementsByIds
samples/cli/sample-apps Platform getUserEntitlementsByIds \
    --namespace $AB_NAMESPACE \
    --userId 'X3NfTxpKQu9xf4Ej' \
    --ids '["WzaOHFFC3NvGIhWL", "P9u9QrIgWuWWEH2u", "LDjoghcFSugryh27"]' \
    > test.out 2>&1
eval_tap $? 250 'GetUserEntitlementsByIds' test.out

#- 251 GetUserEntitlementByItemId
samples/cli/sample-apps Platform getUserEntitlementByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'BOscmw9s4EyjmEjt' \
    --activeOnly 'true' \
    --entitlementClazz 'MEDIA' \
    --platform 'Je25sz5eyOxLW1Od' \
    --itemId 'uTdxvN3K88v13gA3' \
    > test.out 2>&1
eval_tap $? 251 'GetUserEntitlementByItemId' test.out

#- 252 GetUserActiveEntitlementsByItemIds
samples/cli/sample-apps Platform getUserActiveEntitlementsByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'XDNEd8bxhZxPJkhu' \
    --ids '["PL05c4FRIa06hnPS", "TyfSSXyaCnBENw2V", "tZDKCXZlKsxsL8of"]' \
    --platform '4SWlreKsfBa91wh4' \
    > test.out 2>&1
eval_tap $? 252 'GetUserActiveEntitlementsByItemIds' test.out

#- 253 GetUserEntitlementBySku
samples/cli/sample-apps Platform getUserEntitlementBySku \
    --namespace $AB_NAMESPACE \
    --userId 'WqWg6HQWukdojffn' \
    --activeOnly 'true' \
    --entitlementClazz 'SUBSCRIPTION' \
    --platform '5vOW9zfD9IPYYftt' \
    --sku 'FwxdFEslY7GRVAbC' \
    > test.out 2>&1
eval_tap $? 253 'GetUserEntitlementBySku' test.out

#- 254 ExistsAnyUserActiveEntitlement
samples/cli/sample-apps Platform existsAnyUserActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'dzY6EdSQdoKklkJl' \
    --appIds '["wYE0LCCdFCyJcP2j", "SokZLuvHm0mBwPSb", "BAeFJoD4xgbIO7VP"]' \
    --itemIds '["BJUmc2BtQoWL6HWB", "20fMngVokCsuVc6I", "D8iB88kWftGcYb71"]' \
    --platform 'fdWRoHK79xqT0Iuj' \
    --skus '["oM4qL5tFJVPH8Ho2", "fZSI2ugQrlqf1CoJ", "RqE5e1c965llMrbB"]' \
    > test.out 2>&1
eval_tap $? 254 'ExistsAnyUserActiveEntitlement' test.out

#- 255 ExistsAnyUserActiveEntitlementByItemIds
samples/cli/sample-apps Platform existsAnyUserActiveEntitlementByItemIds \
    --namespace $AB_NAMESPACE \
    --userId '9gL9V01GUthMPyv4' \
    --platform 'Mk8yXCSXeZFHehYy' \
    --itemIds '["Xy5jAP14jQbIn8eH", "yb4MRYacEEcTQYlM", "UskdHGP1vwI5Pune"]' \
    > test.out 2>&1
eval_tap $? 255 'ExistsAnyUserActiveEntitlementByItemIds' test.out

#- 256 GetUserAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform getUserAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'Vy8E80QGVhYXnoTw' \
    --appId '6qSvjK1cnqCAAVX6' \
    > test.out 2>&1
eval_tap $? 256 'GetUserAppEntitlementOwnershipByAppId' test.out

#- 257 GetUserEntitlementOwnershipByItemId
samples/cli/sample-apps Platform getUserEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'kfH7qZ45L34E8oZ0' \
    --entitlementClazz 'CODE' \
    --platform 'ZyHqtZti1TymxxAB' \
    --itemId 'QVfKJ7ijQx8IDYzZ' \
    > test.out 2>&1
eval_tap $? 257 'GetUserEntitlementOwnershipByItemId' test.out

#- 258 GetUserEntitlementOwnershipByItemIds
samples/cli/sample-apps Platform getUserEntitlementOwnershipByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'T1To1wKrpS9C6ZzL' \
    --ids '["pE9UBwY1mzKBxEC0", "uT2XpRM2O88OjId3", "XgcxaG7dlTa0Fw1q"]' \
    --platform 'oOgCspFXHL9AncOK' \
    > test.out 2>&1
eval_tap $? 258 'GetUserEntitlementOwnershipByItemIds' test.out

#- 259 GetUserEntitlementOwnershipBySku
samples/cli/sample-apps Platform getUserEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --userId 'ePrBtBSac7wY9hmd' \
    --entitlementClazz 'SUBSCRIPTION' \
    --platform '81YacC9KoHhvQGYs' \
    --sku 'qInDV8ii1Vi1AFDb' \
    > test.out 2>&1
eval_tap $? 259 'GetUserEntitlementOwnershipBySku' test.out

#- 260 RevokeAllEntitlements
samples/cli/sample-apps Platform revokeAllEntitlements \
    --namespace $AB_NAMESPACE \
    --userId '6xB6O8mOr0u314kN' \
    > test.out 2>&1
eval_tap $? 260 'RevokeAllEntitlements' test.out

#- 261 RevokeUserEntitlements
samples/cli/sample-apps Platform revokeUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId '2g0msw1x08a4Fa9i' \
    --entitlementIds 'X8jXL54TdV96qPaP' \
    > test.out 2>&1
eval_tap $? 261 'RevokeUserEntitlements' test.out

#- 262 GetUserEntitlement
samples/cli/sample-apps Platform getUserEntitlement \
    --entitlementId 'eu0ydt7eLviLq1ZJ' \
    --namespace $AB_NAMESPACE \
    --userId 'VecKOYFacEMiqh4N' \
    > test.out 2>&1
eval_tap $? 262 'GetUserEntitlement' test.out

#- 263 UpdateUserEntitlement
samples/cli/sample-apps Platform updateUserEntitlement \
    --entitlementId 'vRSqoPZaRdME0qu3' \
    --namespace $AB_NAMESPACE \
    --userId 'uhuLDCDvy6kO9MSO' \
    --body '{"collectionId": "XpxySMR591IXGLLZ", "endDate": "1990-10-14T00:00:00Z", "nullFieldList": ["fgJstqEaAHm8UIyF", "dOoIsj6JxovjgA1e", "OAYvnmDT4ipqJXCO"], "origin": "Oculus", "reason": "Lvz48bDg2HI3g3eE", "startDate": "1995-12-30T00:00:00Z", "status": "CONSUMED", "useCount": 26}' \
    > test.out 2>&1
eval_tap $? 263 'UpdateUserEntitlement' test.out

#- 264 ConsumeUserEntitlement
samples/cli/sample-apps Platform consumeUserEntitlement \
    --entitlementId 'MXysdxwDTXia3AOa' \
    --namespace $AB_NAMESPACE \
    --userId 'kueUTh5f0Ymzf6oZ' \
    --body '{"metadata": {"A3WgM36buP9OW5Eh": {}, "GC53RMVkRYn0Cq6H": {}, "jRyzB4iEweiggXtt": {}}, "options": ["DxJC1rJwyR7DN68O", "kzfK6NZMyoUOOgNn", "k6CKVxuttrA2Z8FL"], "platform": "J7awcHABlcohAu69", "requestId": "lO1KDZlMCW0vBtsz", "useCount": 53}' \
    > test.out 2>&1
eval_tap $? 264 'ConsumeUserEntitlement' test.out

#- 265 DisableUserEntitlement
samples/cli/sample-apps Platform disableUserEntitlement \
    --entitlementId 'NoYehcTEwoaklH9P' \
    --namespace $AB_NAMESPACE \
    --userId 'm1J4UItktEbjjO5G' \
    > test.out 2>&1
eval_tap $? 265 'DisableUserEntitlement' test.out

#- 266 EnableUserEntitlement
samples/cli/sample-apps Platform enableUserEntitlement \
    --entitlementId 'ZNkXygAgY167FZhi' \
    --namespace $AB_NAMESPACE \
    --userId 'YdJ7Li7YypiVB2cm' \
    > test.out 2>&1
eval_tap $? 266 'EnableUserEntitlement' test.out

#- 267 GetUserEntitlementHistories
samples/cli/sample-apps Platform getUserEntitlementHistories \
    --entitlementId 'PnC4LVpfAYL1kbTG' \
    --namespace $AB_NAMESPACE \
    --userId 'GUN7l2JdujKo6ZtM' \
    > test.out 2>&1
eval_tap $? 267 'GetUserEntitlementHistories' test.out

#- 268 RevokeUserEntitlement
samples/cli/sample-apps Platform revokeUserEntitlement \
    --entitlementId 'OyRSu9Phaf7JnfJ9' \
    --namespace $AB_NAMESPACE \
    --userId '7e6CWAW3c65wy1Fs' \
    --body '{"metadata": {"YJONcuQwhtfl0640": {}, "UWFPi6PkLYIG2XEn": {}, "SpwwL9d8bGmx1Cmc": {}}}' \
    > test.out 2>&1
eval_tap $? 268 'RevokeUserEntitlement' test.out

#- 269 RevokeUserEntitlementByUseCount
samples/cli/sample-apps Platform revokeUserEntitlementByUseCount \
    --entitlementId 'duRyA5yZCLx3PZ3s' \
    --namespace $AB_NAMESPACE \
    --userId 'sJvexZR5fL7Dg4rP' \
    --body '{"reason": "lFtyKX6nCpQjU8c6", "useCount": 27}' \
    > test.out 2>&1
eval_tap $? 269 'RevokeUserEntitlementByUseCount' test.out

#- 270 PreCheckRevokeUserEntitlementByUseCount
samples/cli/sample-apps Platform preCheckRevokeUserEntitlementByUseCount \
    --entitlementId 'D6r3222t28xJImCO' \
    --namespace $AB_NAMESPACE \
    --userId 'wF0P1KoT6nhYDzyW' \
    --quantity '5' \
    > test.out 2>&1
eval_tap $? 270 'PreCheckRevokeUserEntitlementByUseCount' test.out

#- 271 RevokeUseCount
eval_tap 0 271 'RevokeUseCount # SKIP deprecated' test.out

#- 272 SellUserEntitlement
samples/cli/sample-apps Platform sellUserEntitlement \
    --entitlementId '3m9dTSnbDXMHWA1W' \
    --namespace $AB_NAMESPACE \
    --userId 'IgswwhQI1TeSFFxi' \
    --body '{"platform": "Tpwzn95SqIjnDNdg", "requestId": "Z8p442b1g1IpEE2Z", "useCount": 48}' \
    > test.out 2>&1
eval_tap $? 272 'SellUserEntitlement' test.out

#- 273 FulfillItem
samples/cli/sample-apps Platform fulfillItem \
    --namespace $AB_NAMESPACE \
    --userId 'oPWlm4zXbK83pxq5' \
    --body '{"duration": 78, "endDate": "1987-02-21T00:00:00Z", "entitlementCollectionId": "1my4gbxGDuAgooGl", "entitlementOrigin": "Other", "itemId": "F4pmbEpU97fdONZG", "itemSku": "h5enEUg5iGKcwcS4", "language": "68Ab9ct7ybUzKlF4", "metadata": {"9TmR7lM9VpfnQ7eu": {}, "yRxjXJcxpRMIH7ZW": {}, "bFu5k2KvGkbSMx3k": {}}, "order": {"currency": {"currencyCode": "1Fhdzj7PkQXTFUQF", "currencySymbol": "qtt0FP57YAlUfsgF", "currencyType": "VIRTUAL", "decimals": 82, "namespace": "CTsBNDxJBe6zdHff"}, "ext": {"I1K6HM8Si3yimHsM": {}, "GUUvbMcgYXToZ0kc": {}, "0Wr3VOVPj6UY8beX": {}}, "free": false}, "orderNo": "9gwk8CZElO6S6vPD", "origin": "Playstation", "overrideBundleItemQty": {"PDCWDc1N17eHLirB": 56, "WDnvldNToA7aOBOK": 44, "PGHx6OfoCpPUhoo4": 20}, "quantity": 95, "region": "202LACWZWFzyWhaS", "source": "OTHER", "startDate": "1994-09-27T00:00:00Z", "storeId": "BSSvKovCjj2KxpMz"}' \
    > test.out 2>&1
eval_tap $? 273 'FulfillItem' test.out

#- 274 RedeemCode
samples/cli/sample-apps Platform redeemCode \
    --namespace $AB_NAMESPACE \
    --userId 'VmWKoEa7urOMAkNQ' \
    --body '{"code": "Ts5paeLPPGJXF7oZ", "language": "lHuU_Zxov_638", "region": "GjBGGSEsaJCrEGud"}' \
    > test.out 2>&1
eval_tap $? 274 'RedeemCode' test.out

#- 275 PreCheckFulfillItem
samples/cli/sample-apps Platform preCheckFulfillItem \
    --namespace $AB_NAMESPACE \
    --userId 'LiGZzbTEk9JOxmu8' \
    --body '{"itemId": "Yi20NESD5uBum8we", "itemSku": "Rw9EvvV2aOOPjDZ3", "quantity": 31}' \
    > test.out 2>&1
eval_tap $? 275 'PreCheckFulfillItem' test.out

#- 276 FulfillRewards
samples/cli/sample-apps Platform fulfillRewards \
    --namespace $AB_NAMESPACE \
    --userId 'a6gwZhrMA6oL4mVl' \
    --body '{"entitlementCollectionId": "XdoHcnVq6WAMG8zu", "entitlementOrigin": "Steam", "metadata": {"lR3txx2dsr6SwMRM": {}, "qvxcLST45TDo7M4j": {}, "ieBEYpzMdcHccypQ": {}}, "origin": "Steam", "rewards": [{"currency": {"currencyCode": "KYRru6AUQ3W9TUbx", "namespace": "wm3QPj6fLwc96wHl"}, "item": {"itemId": "pLaTVX6L3iuHjsEB", "itemName": "2N9DLrFZuEMw61Nl", "itemSku": "MNKR2tCXLma5kK1X", "itemType": "CQRmDabFuc0YAr6x"}, "quantity": 62, "type": "CURRENCY"}, {"currency": {"currencyCode": "lyNNK2IF2KbvHlcv", "namespace": "JgFxho8qSBG2Fnay"}, "item": {"itemId": "KVjqf9kqu2hX6fpi", "itemName": "Rp7hQKacqBS23a7k", "itemSku": "WBVKtf2jObMQzRBH", "itemType": "67pA2xAYpZHOLsc9"}, "quantity": 81, "type": "CURRENCY"}, {"currency": {"currencyCode": "eUhBt91ZzKZZB6Tc", "namespace": "XfcJeZOUVdvIy8rs"}, "item": {"itemId": "BuX6mNEKUR67dpVY", "itemName": "BV2Mv11swakR62wH", "itemSku": "urZXyDqHbC7rvnHy", "itemType": "fMvk6EOdelclAjVK"}, "quantity": 79, "type": "CURRENCY"}], "source": "REWARD", "transactionId": "RWuJ7yVmDY76ldrJ"}' \
    > test.out 2>&1
eval_tap $? 276 'FulfillRewards' test.out

#- 277 QueryUserIAPOrders
samples/cli/sample-apps Platform queryUserIAPOrders \
    --namespace $AB_NAMESPACE \
    --userId 'xuAkMP4cc7bKSzI4' \
    --endTime 'x5AGrTPCJRVfniXL' \
    --limit '52' \
    --offset '98' \
    --productId 'wyv8Z52qHctKFvKm' \
    --startTime 'A168zrfSVivpzKBk' \
    --status 'FULFILLED' \
    --type 'EPICGAMES' \
    > test.out 2>&1
eval_tap $? 277 'QueryUserIAPOrders' test.out

#- 278 QueryAllUserIAPOrders
samples/cli/sample-apps Platform queryAllUserIAPOrders \
    --namespace $AB_NAMESPACE \
    --userId '0aNXcWTdrk36kkys' \
    > test.out 2>&1
eval_tap $? 278 'QueryAllUserIAPOrders' test.out

#- 279 QueryUserIAPConsumeHistory
samples/cli/sample-apps Platform queryUserIAPConsumeHistory \
    --namespace $AB_NAMESPACE \
    --userId '8enrFKQgdx64bIVT' \
    --endTime 'TiWiH2C4hBfkFiGN' \
    --limit '59' \
    --offset '98' \
    --startTime 'jO7rd3BBuhNZyI5Q' \
    --status 'SUCCESS' \
    --type 'TWITCH' \
    > test.out 2>&1
eval_tap $? 279 'QueryUserIAPConsumeHistory' test.out

#- 280 MockFulfillIAPItem
samples/cli/sample-apps Platform mockFulfillIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'OBSnKh2YAAeEvyfu' \
    --body '{"itemIdentityType": "ITEM_SKU", "language": "KtG_BjxT-083", "productId": "Cb3ioHqkKQjT8yze", "region": "R2Hd5hqlZ7SzTuLX", "transactionId": "mXHX4CB5vBvCLmhf", "type": "TWITCH"}' \
    > test.out 2>&1
eval_tap $? 280 'MockFulfillIAPItem' test.out

#- 281 QueryUserThirdPartySubscription
samples/cli/sample-apps Platform queryUserThirdPartySubscription \
    --namespace $AB_NAMESPACE \
    --userId 'rJ0E2jEPgOtALdml' \
    --activeOnly 'true' \
    --groupId '7s0OhVtZ1IK9TCHT' \
    --limit '44' \
    --offset '73' \
    --platform 'PLAYSTATION' \
    --productId 'aRi3DpLzmiYJSPPO' \
    > test.out 2>&1
eval_tap $? 281 'QueryUserThirdPartySubscription' test.out

#- 282 GetThirdPartyPlatformSubscriptionOwnershipByGroupId
samples/cli/sample-apps Platform getThirdPartyPlatformSubscriptionOwnershipByGroupId \
    --namespace $AB_NAMESPACE \
    --platform 'OCULUS' \
    --userId 'hnu1lNl4pHMQt8uJ' \
    --groupId 'XnWhM3qiuH9D6E8y' \
    > test.out 2>&1
eval_tap $? 282 'GetThirdPartyPlatformSubscriptionOwnershipByGroupId' test.out

#- 283 GetThirdPartyPlatformSubscriptionOwnershipByProductId
samples/cli/sample-apps Platform getThirdPartyPlatformSubscriptionOwnershipByProductId \
    --namespace $AB_NAMESPACE \
    --platform 'TWITCH' \
    --userId 'Nj3iarifuvLKqLXC' \
    --productId 'Bfh5wzj27QwUCQbP' \
    > test.out 2>&1
eval_tap $? 283 'GetThirdPartyPlatformSubscriptionOwnershipByProductId' test.out

#- 284 QueryUserThirdPartySubscriptionTransactions
samples/cli/sample-apps Platform queryUserThirdPartySubscriptionTransactions \
    --namespace $AB_NAMESPACE \
    --userId 'FQkBSdkP0djXO2La' \
    --activeOnly 'true' \
    --groupId 'JzEPgTd5FxPv3Zwi' \
    --limit '66' \
    --offset '76' \
    --platform 'STADIA' \
    --productId 'kx4OqCX5dyU5YWAb' \
    > test.out 2>&1
eval_tap $? 284 'QueryUserThirdPartySubscriptionTransactions' test.out

#- 285 GetThirdPartySubscriptionDetails
samples/cli/sample-apps Platform getThirdPartySubscriptionDetails \
    --id 'VcjrBGZHtUd1RcVs' \
    --namespace $AB_NAMESPACE \
    --userId 'VPmCO1ncbnuZMX7e' \
    > test.out 2>&1
eval_tap $? 285 'GetThirdPartySubscriptionDetails' test.out

#- 286 GetSubscriptionHistory
samples/cli/sample-apps Platform getSubscriptionHistory \
    --id 'Rp29OEfYEYjspfBn' \
    --namespace $AB_NAMESPACE \
    --userId 'oGlt5AiZccEMSc8F' \
    --limit '39' \
    --offset '30' \
    > test.out 2>&1
eval_tap $? 286 'GetSubscriptionHistory' test.out

#- 287 SyncSubscriptionTransaction
samples/cli/sample-apps Platform syncSubscriptionTransaction \
    --id '79Hc4soF3DXxzBhe' \
    --namespace $AB_NAMESPACE \
    --userId 'hcF1qEwwm6VhM2Pu' \
    > test.out 2>&1
eval_tap $? 287 'SyncSubscriptionTransaction' test.out

#- 288 GetThirdPartyUserSubscriptionDetails
samples/cli/sample-apps Platform getThirdPartyUserSubscriptionDetails \
    --id 'e6E9j0cipKi7WpL7' \
    --namespace $AB_NAMESPACE \
    --userId 'bXedBXSgFnJoXsSe' \
    > test.out 2>&1
eval_tap $? 288 'GetThirdPartyUserSubscriptionDetails' test.out

#- 289 SyncSubscription
samples/cli/sample-apps Platform syncSubscription \
    --id 'SgHYdmDmAmVsbcsp' \
    --namespace $AB_NAMESPACE \
    --userId 'vB8kqh1O7BETekx6' \
    > test.out 2>&1
eval_tap $? 289 'SyncSubscription' test.out

#- 290 QueryUserOrders
samples/cli/sample-apps Platform queryUserOrders \
    --namespace $AB_NAMESPACE \
    --userId 'xi1ehtmIIpJ2PzaX' \
    --discounted 'false' \
    --itemId 'wTpgaL6beAgwkiy2' \
    --limit '21' \
    --offset '59' \
    --status 'DELETED' \
    > test.out 2>&1
eval_tap $? 290 'QueryUserOrders' test.out

#- 291 AdminCreateUserOrder
samples/cli/sample-apps Platform adminCreateUserOrder \
    --namespace $AB_NAMESPACE \
    --userId 'MK0MbtKIn0QHAd9Q' \
    --body '{"currencyCode": "5W3ADhjwbvXqny9m", "currencyNamespace": "ngeWKsxqxFs4jU4v", "discountCodes": ["zDcVUkPvDmu0Y8Mk", "k1y5HiEeXaHfQM7c", "pJn1kgqzDDklS4nH"], "discountedPrice": 19, "entitlementPlatform": "Oculus", "ext": {"sPOoacvcQiSYxUDp": {}, "Wdwpd6u848Cse7Uo": {}, "tfr1wFjdHTlHwyIP": {}}, "itemId": "FJrNCkDCnFwI8zSO", "language": "W6mxVA5V2Xzj8BGQ", "options": {"skipPriceValidation": false}, "platform": "GooglePlay", "price": 54, "quantity": 51, "region": "WNzUvNrIjb8MG79F", "returnUrl": "vFYWcR6l8fNIhBP0", "sandbox": true, "sectionId": "1ab4x7emYv7rGySC"}' \
    > test.out 2>&1
eval_tap $? 291 'AdminCreateUserOrder' test.out

#- 292 CountOfPurchasedItem
samples/cli/sample-apps Platform countOfPurchasedItem \
    --namespace $AB_NAMESPACE \
    --userId 'atipLgbjJQoWf0C3' \
    --itemId 'twwQCq9DmEp6zF1x' \
    > test.out 2>&1
eval_tap $? 292 'CountOfPurchasedItem' test.out

#- 293 GetUserOrder
samples/cli/sample-apps Platform getUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'iAH18dcycOjBnCaF' \
    --userId 'w3XhuXtPVGXSQr2i' \
    > test.out 2>&1
eval_tap $? 293 'GetUserOrder' test.out

#- 294 UpdateUserOrderStatus
samples/cli/sample-apps Platform updateUserOrderStatus \
    --namespace $AB_NAMESPACE \
    --orderNo 'OUz5QICIqigSIRmq' \
    --userId '2TpyjAmNKePROlIU' \
    --body '{"status": "FULFILL_FAILED", "statusReason": "ZfsBHB9w6965Lp0k"}' \
    > test.out 2>&1
eval_tap $? 294 'UpdateUserOrderStatus' test.out

#- 295 FulfillUserOrder
samples/cli/sample-apps Platform fulfillUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'Oyf1Uo2xXX4T29E7' \
    --userId 'QT5hnZXCGsTQ09Tl' \
    > test.out 2>&1
eval_tap $? 295 'FulfillUserOrder' test.out

#- 296 GetUserOrderGrant
eval_tap 0 296 'GetUserOrderGrant # SKIP deprecated' test.out

#- 297 GetUserOrderHistories
samples/cli/sample-apps Platform getUserOrderHistories \
    --namespace $AB_NAMESPACE \
    --orderNo 'Q7Yn1iV7ff4nW7V9' \
    --userId 'fWdHnqGTj9WiXF6N' \
    > test.out 2>&1
eval_tap $? 297 'GetUserOrderHistories' test.out

#- 298 ProcessUserOrderNotification
samples/cli/sample-apps Platform processUserOrderNotification \
    --namespace $AB_NAMESPACE \
    --orderNo 'yfOd4tHUxXDWc6yJ' \
    --userId '6TGOqURxboKohG5w' \
    --body '{"additionalData": {"cardSummary": "PJbETDNYarRwXaQ5"}, "authorisedTime": "1981-11-01T00:00:00Z", "chargebackReversedTime": "1981-11-17T00:00:00Z", "chargebackTime": "1991-11-23T00:00:00Z", "chargedTime": "1972-01-16T00:00:00Z", "createdTime": "1971-05-15T00:00:00Z", "currency": {"currencyCode": "PAcXtRlBJFszZG5L", "currencySymbol": "7x8wYnsc2d9Izmey", "currencyType": "REAL", "decimals": 69, "namespace": "stJNLinY78A0lISX"}, "customParameters": {"JeILbEfqmpTGhOaL": {}, "wpQLXS1UEitsuXQk": {}, "r1hAxvt0k8k47UfJ": {}}, "extOrderNo": "u1hjWAX171kPtQtR", "extTxId": "1xl2DJDwNMOyEAzI", "extUserId": "vFNYcnwU73aHbW2h", "issuedAt": "1996-01-01T00:00:00Z", "metadata": {"44BR6pmeiGbRWI73": "5bXl937m3nC83H51", "5XWhIlsNc5s1wbbi": "BIej0qHBMxc6IpEO", "2BFAwTmxerZ4BNQ8": "ArCuDAVMW8xE5yNT"}, "namespace": "9Qqr2RY3j1mFMkQm", "nonceStr": "dAUDm5RSqE61A77W", "paymentData": {"discountAmount": 3, "discountCode": "ARdgKvnvEPRjcimZ", "subtotalPrice": 85, "tax": 31, "totalPrice": 5}, "paymentMethod": "pxDkchJrEgqgXvIh", "paymentMethodFee": 62, "paymentOrderNo": "6gVC9TPS61aYxH25", "paymentProvider": "ADYEN", "paymentProviderFee": 96, "paymentStationUrl": "PGrP6kDpR0YPWQ0q", "price": 88, "refundedTime": "1975-05-31T00:00:00Z", "salesTax": 63, "sandbox": false, "sku": "X3fEXZHMyez0p0TF", "status": "NOTIFICATION_OF_CHARGEBACK", "statusReason": "JylyDJDCRiQjQb0A", "subscriptionId": "cB5aWeA0baXTZ5ju", "subtotalPrice": 27, "targetNamespace": "Vc0Uiy1NSL2nHmkh", "targetUserId": "tklEdtlX6f87jhsg", "tax": 84, "totalPrice": 60, "totalTax": 64, "txEndTime": "1973-03-29T00:00:00Z", "type": "ezg6J7QdIDRBJjdU", "userId": "ehZ8EhvuUsAEZjgn", "vat": 12}' \
    > test.out 2>&1
eval_tap $? 298 'ProcessUserOrderNotification' test.out

#- 299 DownloadUserOrderReceipt
samples/cli/sample-apps Platform downloadUserOrderReceipt \
    --namespace $AB_NAMESPACE \
    --orderNo '8dqIWeK7hsnAcmOu' \
    --userId 'dFCRvUsn3ZWRTfMR' \
    > test.out 2>&1
eval_tap $? 299 'DownloadUserOrderReceipt' test.out

#- 300 CreateUserPaymentOrder
samples/cli/sample-apps Platform createUserPaymentOrder \
    --namespace $AB_NAMESPACE \
    --userId '1XxyaySC62lfb2zb' \
    --body '{"currencyCode": "2jmw0GBmyEqNEn1v", "currencyNamespace": "JG6HTI1MJFvheKJU", "customParameters": {"u6fqUh3r6eminI5c": {}, "yStFumnurb0fuu6X": {}, "7k3D50y5Fln777Rx": {}}, "description": "Drp4yM3vNFiYuuMT", "extOrderNo": "3VHdwhVaX3m06clw", "extUserId": "vqwBBlVc5B1rM3A0", "itemType": "SUBSCRIPTION", "language": "Tllg", "metadata": {"QPp5PARwnUHQbBN2": "3B4gy1CC3cbjlLAW", "8yjaaM7S6E02PocI": "Qu5qrVtK6eo9pyZX", "7WSgQK7DcoCZkfpn": "5uNIPAKqnxWdgXk4"}, "notifyUrl": "oSnjyVpGMODA1p6g", "omitNotification": true, "platform": "fzSaiZEpaAKwDnV1", "price": 61, "recurringPaymentOrderNo": "oBbTGQzeOjHW4dpB", "region": "rZ2g1guFKVinvsMN", "returnUrl": "j3YyTBUwJRihNAG7", "sandbox": false, "sku": "MMsc0wZgQkpdTDy1", "subscriptionId": "Q2hJTko201cUxKzK", "title": "ejezoCIlFX4luMxj"}' \
    > test.out 2>&1
eval_tap $? 300 'CreateUserPaymentOrder' test.out

#- 301 RefundUserPaymentOrder
samples/cli/sample-apps Platform refundUserPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'J43frnWM4UD1xsSF' \
    --userId 'RnO7p5DhBkrtYxMq' \
    --body '{"description": "3RNefTXHWPfuUTZc"}' \
    > test.out 2>&1
eval_tap $? 301 'RefundUserPaymentOrder' test.out

#- 302 GetUserPlatformAccountClosureHistories
samples/cli/sample-apps Platform getUserPlatformAccountClosureHistories \
    --namespace $AB_NAMESPACE \
    --userId 'PSBV5uABHyc8dZJ4' \
    > test.out 2>&1
eval_tap $? 302 'GetUserPlatformAccountClosureHistories' test.out

#- 303 ApplyUserRedemption
samples/cli/sample-apps Platform applyUserRedemption \
    --namespace $AB_NAMESPACE \
    --userId 'w21z89DARUAdAyz3' \
    --body '{"code": "20V3tATJq5bqcx93", "orderNo": "QTXHC6nz7dyaztma"}' \
    > test.out 2>&1
eval_tap $? 303 'ApplyUserRedemption' test.out

#- 304 DoRevocation
samples/cli/sample-apps Platform doRevocation \
    --namespace $AB_NAMESPACE \
    --userId 'MTEGmDBNkXD6EVy7' \
    --body '{"meta": {"2tAWzrQqvOFBQw83": {}, "vseC8XO23dGu33GR": {}, "rNlFGlmQc9tGNT7x": {}}, "reason": "O8lUU7qFzNkUSRB3", "requestId": "BI0aMJY91Gt8VZfJ", "revokeEntries": [{"currency": {"balanceOrigin": "Playstation", "currencyCode": "8QYnM5lW6BXfwFBf", "namespace": "CwZhyPHMePBM1WLV"}, "entitlement": {"entitlementId": "41KxcIBf1j8kpNe7"}, "item": {"entitlementOrigin": "Twitch", "itemIdentity": "eUyvUJbs44oMaw3a", "itemIdentityType": "ITEM_SKU", "origin": "Nintendo"}, "quantity": 42, "type": "CURRENCY"}, {"currency": {"balanceOrigin": "Xbox", "currencyCode": "0WNcA0T9wZLC2okU", "namespace": "eXK433DYVp5OXuBe"}, "entitlement": {"entitlementId": "KqQhs3bAgCLUBl6Z"}, "item": {"entitlementOrigin": "Steam", "itemIdentity": "gmZsEnHrFNNDR3Jy", "itemIdentityType": "ITEM_ID", "origin": "GooglePlay"}, "quantity": 80, "type": "CURRENCY"}, {"currency": {"balanceOrigin": "Oculus", "currencyCode": "Fn2YIMfCNpCPoIE9", "namespace": "Qmh78nxa6oDDn5D7"}, "entitlement": {"entitlementId": "rAvQsjs39p0ZB4vp"}, "item": {"entitlementOrigin": "Other", "itemIdentity": "W9MzMwvqlyd0VNom", "itemIdentityType": "ITEM_SKU", "origin": "GooglePlay"}, "quantity": 100, "type": "ENTITLEMENT"}], "source": "ORDER", "transactionId": "GGs7Q5mBu9Yp3LM0"}' \
    > test.out 2>&1
eval_tap $? 304 'DoRevocation' test.out

#- 305 RegisterXblSessions
samples/cli/sample-apps Platform registerXblSessions \
    --namespace $AB_NAMESPACE \
    --userId 'xq0GZ7XcONEzEVmr' \
    --body '{"gameSessionId": "nj1PAMN83l0jZOHS", "payload": {"PB5WHkMM9b0uJWXJ": {}, "N1UfFeaHVOrBizpF": {}, "jlmn8WFqlCvmBc1c": {}}, "scid": "ZosRbarkVsY1IV3c", "sessionTemplateName": "RdoAS75yR0KDWLmx"}' \
    > test.out 2>&1
eval_tap $? 305 'RegisterXblSessions' test.out

#- 306 QueryUserSubscriptions
samples/cli/sample-apps Platform queryUserSubscriptions \
    --namespace $AB_NAMESPACE \
    --userId 'LDT19GuhZXnfWVki' \
    --chargeStatus 'RECURRING_CHARGING' \
    --itemId 'j4hB8UbXaEXFfTst' \
    --limit '76' \
    --offset '2' \
    --sku 'zTr8eYlzlnCEPGQj' \
    --status 'EXPIRED' \
    --subscribedBy 'USER' \
    > test.out 2>&1
eval_tap $? 306 'QueryUserSubscriptions' test.out

#- 307 GetUserSubscriptionActivities
samples/cli/sample-apps Platform getUserSubscriptionActivities \
    --namespace $AB_NAMESPACE \
    --userId '1egYNnCY50lfTIu5' \
    --excludeSystem 'true' \
    --limit '59' \
    --offset '89' \
    --subscriptionId 'uAbzfxAGDsWMkteO' \
    > test.out 2>&1
eval_tap $? 307 'GetUserSubscriptionActivities' test.out

#- 308 PlatformSubscribeSubscription
samples/cli/sample-apps Platform platformSubscribeSubscription \
    --namespace $AB_NAMESPACE \
    --userId '2iDCtgeycxnNrTS3' \
    --body '{"grantDays": 66, "itemId": "zJw2sU7XZDuwNKwP", "language": "FDTrKJlNP36BmT74", "reason": "t1zXW3qDnNuRM6kV", "region": "v31f5dEzOsdyUzdq", "source": "UyZlMaUMQA1vtrj2"}' \
    > test.out 2>&1
eval_tap $? 308 'PlatformSubscribeSubscription' test.out

#- 309 CheckUserSubscriptionSubscribableByItemId
samples/cli/sample-apps Platform checkUserSubscriptionSubscribableByItemId \
    --namespace $AB_NAMESPACE \
    --userId '0qXOSIElO4KVdLuy' \
    --itemId '7DHfsqM0ZKDxl9hS' \
    > test.out 2>&1
eval_tap $? 309 'CheckUserSubscriptionSubscribableByItemId' test.out

#- 310 GetUserSubscription
samples/cli/sample-apps Platform getUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'rrFQxt6qZdVMT9Bh' \
    --userId 'rRtsFTAMdVMlOore' \
    > test.out 2>&1
eval_tap $? 310 'GetUserSubscription' test.out

#- 311 DeleteUserSubscription
samples/cli/sample-apps Platform deleteUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'W2ZfhIstmUiHpHjI' \
    --userId 'hKmkaa9QIfDFXNya' \
    > test.out 2>&1
eval_tap $? 311 'DeleteUserSubscription' test.out

#- 312 CancelSubscription
samples/cli/sample-apps Platform cancelSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'YLay57n4F1jZqMn9' \
    --userId 'bDJRGyv65OwLxLUm' \
    --force 'true' \
    --body '{"immediate": true, "reason": "vnBlKjWvqzEC8VAV"}' \
    > test.out 2>&1
eval_tap $? 312 'CancelSubscription' test.out

#- 313 GrantDaysToSubscription
samples/cli/sample-apps Platform grantDaysToSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'hwqMBYgQrXrlbIps' \
    --userId '3045AyhrAfs2cQ2z' \
    --body '{"grantDays": 93, "reason": "ROMtKJbCXXDHZnZI"}' \
    > test.out 2>&1
eval_tap $? 313 'GrantDaysToSubscription' test.out

#- 314 GetUserSubscriptionBillingHistories
samples/cli/sample-apps Platform getUserSubscriptionBillingHistories \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'fqLjnVkecNhsbBjR' \
    --userId 'YmFBOjcB9e2Bt7Ku' \
    --excludeFree 'true' \
    --limit '21' \
    --offset '15' \
    > test.out 2>&1
eval_tap $? 314 'GetUserSubscriptionBillingHistories' test.out

#- 315 ProcessUserSubscriptionNotification
samples/cli/sample-apps Platform processUserSubscriptionNotification \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'gAe0lA4yA9rYgLad' \
    --userId 'RP8YtLVzWahpenyP' \
    --body '{"additionalData": {"cardSummary": "TWFnImmwtRjq9x6o"}, "authorisedTime": "1980-10-08T00:00:00Z", "chargebackReversedTime": "1982-10-17T00:00:00Z", "chargebackTime": "1974-07-04T00:00:00Z", "chargedTime": "1995-12-17T00:00:00Z", "createdTime": "1982-07-02T00:00:00Z", "currency": {"currencyCode": "5WrdBBUbWHVL2TVO", "currencySymbol": "7WkbpcyPJjix8cUk", "currencyType": "VIRTUAL", "decimals": 88, "namespace": "w76KXDlKeKsSJlmo"}, "customParameters": {"DHDjOo5THshV226X": {}, "LnhgYK9lSaEWywYK": {}, "5KL4at4JZ9Opn7fQ": {}}, "extOrderNo": "p5lTvfcSaceUls1l", "extTxId": "b5Rvbg01LZ029v9L", "extUserId": "rYjRd0Qdlm8KGx4u", "issuedAt": "1972-09-13T00:00:00Z", "metadata": {"bhZ0okko7QsxeaOP": "8Iu1C93FAK7EEIYC", "VORrLUqsroXcqloR": "CbDBdWQIfIE49712", "NCXrhVWdBbnw41bW": "hE60oYAsRl2rbApR"}, "namespace": "LRnAl3K8Z0o38IcG", "nonceStr": "zLidFdYXHCdAKMGi", "paymentData": {"discountAmount": 9, "discountCode": "r3JUXgo3B59NTRVd", "subtotalPrice": 11, "tax": 50, "totalPrice": 3}, "paymentMethod": "4ajY8JoG7hwOYCDF", "paymentMethodFee": 64, "paymentOrderNo": "bxTobkcrDgyOGfIh", "paymentProvider": "PAYPAL", "paymentProviderFee": 12, "paymentStationUrl": "2XxJvDT1sg1xNcpz", "price": 2, "refundedTime": "1982-10-07T00:00:00Z", "salesTax": 26, "sandbox": false, "sku": "A6LXIQcpQ45RrAzn", "status": "REFUND_FAILED", "statusReason": "whKeUS7qwgLVZsGh", "subscriptionId": "VJfQD5vqafY0pELL", "subtotalPrice": 50, "targetNamespace": "Uee6BGayB8wKwQL5", "targetUserId": "gzjoiRQEYex8K5la", "tax": 16, "totalPrice": 57, "totalTax": 68, "txEndTime": "1977-08-09T00:00:00Z", "type": "d9QmgjTIcZXNvqqN", "userId": "ctD11EQpMMLinQ85", "vat": 3}' \
    > test.out 2>&1
eval_tap $? 315 'ProcessUserSubscriptionNotification' test.out

#- 316 AcquireUserTicket
samples/cli/sample-apps Platform acquireUserTicket \
    --boothName 'm7MIhQMeg2ZuOXwB' \
    --namespace $AB_NAMESPACE \
    --userId 'tLCiOrDxtJ4wR2w5' \
    --body '{"count": 18, "orderNo": "zzxHr096xMfBq3x8"}' \
    > test.out 2>&1
eval_tap $? 316 'AcquireUserTicket' test.out

#- 317 QueryUserCurrencyWallets
samples/cli/sample-apps Platform queryUserCurrencyWallets \
    --namespace $AB_NAMESPACE \
    --userId '3UwrBbWxaS4eATcq' \
    > test.out 2>&1
eval_tap $? 317 'QueryUserCurrencyWallets' test.out

#- 318 DebitUserWalletByCurrencyCode
samples/cli/sample-apps Platform debitUserWalletByCurrencyCode \
    --currencyCode 'sXqGJ85fvMl5R7SS' \
    --namespace $AB_NAMESPACE \
    --userId 'Q7mMzjkbEiQta0Sy' \
    --body '{"allowOverdraft": true, "amount": 27, "balanceOrigin": "Playstation", "balanceSource": "EXPIRATION", "metadata": {"IN6EvN3UGe8davLQ": {}, "4Hd1VGMSX0vE6iMx": {}, "Q0IZphaNPuQcg3VA": {}}, "reason": "7MTwFRFMQdifhpxc"}' \
    > test.out 2>&1
eval_tap $? 318 'DebitUserWalletByCurrencyCode' test.out

#- 319 ListUserCurrencyTransactions
samples/cli/sample-apps Platform listUserCurrencyTransactions \
    --currencyCode 'ZZGebAxlsU5LuPkt' \
    --namespace $AB_NAMESPACE \
    --userId 'c8YDZ8DEYyAseUlI' \
    --limit '92' \
    --offset '57' \
    > test.out 2>&1
eval_tap $? 319 'ListUserCurrencyTransactions' test.out

#- 320 CheckBalance
samples/cli/sample-apps Platform checkBalance \
    --currencyCode 'NfU6YdG3IlKkqVJy' \
    --namespace $AB_NAMESPACE \
    --userId 'Jz7IcfU8mGAHiQMF' \
    --request '{"amount": 90, "debitBalanceSource": "OTHER", "metadata": {"dS2Kz8zA4qnuyCQH": {}, "Mwr4An20B38nsDsc": {}, "cz1BjwbkWqURVEuZ": {}}, "reason": "QA7MT4nrSSvUMtzp", "walletPlatform": "Nintendo"}' \
    > test.out 2>&1
eval_tap $? 320 'CheckBalance' test.out

#- 321 CheckWallet
eval_tap 0 321 'CheckWallet # SKIP deprecated' test.out

#- 322 CreditUserWallet
samples/cli/sample-apps Platform creditUserWallet \
    --currencyCode '23E76Zbnb7ytQx2e' \
    --namespace $AB_NAMESPACE \
    --userId 'Dm4rLHduRy7efKth' \
    --body '{"amount": 88, "expireAt": "1993-06-27T00:00:00Z", "metadata": {"AF1ToF2DhdGLDcyr": {}, "g4NSuYpPFASP9oXa": {}, "nLdVokHjUnKGsvNM": {}}, "origin": "Epic", "reason": "n5PUw0LrH3ZHgU8O", "source": "IAP_CHARGEBACK_REVERSED"}' \
    > test.out 2>&1
eval_tap $? 322 'CreditUserWallet' test.out

#- 323 DebitByWalletPlatform
samples/cli/sample-apps Platform debitByWalletPlatform \
    --currencyCode 'o7BlQORxQQVgbtg7' \
    --namespace $AB_NAMESPACE \
    --userId 'GUF77mgbQahaoUHa' \
    --request '{"amount": 43, "debitBalanceSource": "EXPIRATION", "metadata": {"oVvtYmt9Tpm9fQ31": {}, "V2VM0VVcQ9LxYCrn": {}, "cRxoDUFbvTWDp8BA": {}}, "reason": "K7qkVNRqlJbpnk72", "walletPlatform": "IOS"}' \
    > test.out 2>&1
eval_tap $? 323 'DebitByWalletPlatform' test.out

#- 324 PayWithUserWallet
samples/cli/sample-apps Platform payWithUserWallet \
    --currencyCode '0aNtCnGpEKG4TbSt' \
    --namespace $AB_NAMESPACE \
    --userId 'pTXCswUcAZOwqEf5' \
    --body '{"amount": 86, "metadata": {"VYotdaFeQ1ojbymi": {}, "hpRVbtXxInStBmKY": {}, "Gbtv7XDYWJWh4dWs": {}}, "walletPlatform": "IOS"}' \
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
    --storeId 'sMQaau1iqySQ9gGJ' \
    > test.out 2>&1
eval_tap $? 330 'ListViews' test.out

#- 331 CreateView
samples/cli/sample-apps Platform createView \
    --namespace $AB_NAMESPACE \
    --storeId 'Bi4gZg0m47skegRy' \
    --body '{"displayOrder": 89, "localizations": {"lSRtnHozgTy3XTjq": {"description": "9iUhUd0ewhyFpASH", "localExt": {"Wb7MREFT4Mn2Hphk": {}, "hdBN6f0nBxbvdLFh": {}, "ILkhusLcun3CnZBd": {}}, "longDescription": "UNVykgF8cJRpQBQw", "title": "b2Qc0v7PtlItQhrm"}, "kGdgkbDM3JBmdjhs": {"description": "B6I3dRDG5BDBkfDR", "localExt": {"HkGJSBcy5K6Aojt0": {}, "2sJ3hSBeFUiNjMJ2": {}, "Lhq5TyB9TIHwhy2p": {}}, "longDescription": "el7VpBZYUk5NgfUH", "title": "jlVgQvdXasHlykyO"}, "r3uAQDNaW32rHUMN": {"description": "KS9K1kvfrx5VdYWE", "localExt": {"V3qea3EBeEX0nidr": {}, "feUuP5AOnPZfzQAT": {}, "7tqHWqR6eXN6KHtx": {}}, "longDescription": "dAo3HzJoBOQUCcbl", "title": "gyTMZB7fRHdFulDD"}}, "name": "tpjinCfLqiT636RV"}' \
    > test.out 2>&1
eval_tap $? 331 'CreateView' test.out

#- 332 GetView
samples/cli/sample-apps Platform getView \
    --namespace $AB_NAMESPACE \
    --viewId 'YbVDKnMeDtsAYsSr' \
    --storeId '4d5vfvHGuTQ3JP5R' \
    > test.out 2>&1
eval_tap $? 332 'GetView' test.out

#- 333 UpdateView
samples/cli/sample-apps Platform updateView \
    --namespace $AB_NAMESPACE \
    --viewId 'R9gfN5COf1Q0RDxB' \
    --storeId 'cRXfgxIQ1enEArW8' \
    --body '{"displayOrder": 9, "localizations": {"UAvGux8Bzr4XNULz": {"description": "wHW63Op8uZr2UbgC", "localExt": {"mar0sSP1jX8qghho": {}, "2IoEb8ZRSo5IfJW3": {}, "S8vTkj53puw3WRqW": {}}, "longDescription": "gfzeNDgFVqPcM0J0", "title": "E3TLY3AIcy3CK5Qr"}, "3GBhAWS8wMjZqUkr": {"description": "xeZu5ZdoWj10OiCF", "localExt": {"Qh4eZnUSXVGJHRmz": {}, "wTa793LADbKFXc2z": {}, "axW8plJJFjni9wQO": {}}, "longDescription": "VaOYwTPjyjiz18zH", "title": "0iUzvDBrllzonrG5"}, "hERJJ73CYTrrwtZX": {"description": "aUI0Oy9WFWw64Zad", "localExt": {"epfG4F3Ba3X3H4Jc": {}, "rSGed62Nud5bYBwO": {}, "khXC0RWLWLiv9t30": {}}, "longDescription": "XelKDJooQgGknD7P", "title": "OcpAy6VILBL7vD27"}}, "name": "RibQvTCzpOFPvILO"}' \
    > test.out 2>&1
eval_tap $? 333 'UpdateView' test.out

#- 334 DeleteView
samples/cli/sample-apps Platform deleteView \
    --namespace $AB_NAMESPACE \
    --viewId 'FF9iq6i8upQiGFH6' \
    --storeId 'EsYDYPnimquBP7I3' \
    > test.out 2>&1
eval_tap $? 334 'DeleteView' test.out

#- 335 QueryWallets
eval_tap 0 335 'QueryWallets # SKIP deprecated' test.out

#- 336 BulkCredit
samples/cli/sample-apps Platform bulkCredit \
    --namespace $AB_NAMESPACE \
    --body '[{"creditRequest": {"amount": 47, "expireAt": "1994-09-14T00:00:00Z", "metadata": {"2MacJp8oY1eSQybE": {}, "aVD3yoBRdoCBeYq5": {}, "ZDBJAIdOKUq8z6wV": {}}, "origin": "Steam", "reason": "MdKxi5XETh27lC0V", "source": "REDEEM_CODE"}, "currencyCode": "L01yVNjPwkVjos0b", "userIds": ["uA9wbXyJDp1mwMEn", "rRKeD6PBZTHWLK4i", "96c8K1XMYI034dmy"]}, {"creditRequest": {"amount": 48, "expireAt": "1973-03-13T00:00:00Z", "metadata": {"ggGkiy9iKC7FoOEM": {}, "qQlqLtrIG1jGvUYq": {}, "MOcoem3uJwGX11Ga": {}}, "origin": "GooglePlay", "reason": "zctsxGK29LHSGYP4", "source": "PROMOTION"}, "currencyCode": "tKUU1bnRZpO3ROZX", "userIds": ["4LhB9WiOl4u2msoG", "ZJGyWlAWDQHihXjf", "ckhZTDBrgH9h6zvN"]}, {"creditRequest": {"amount": 19, "expireAt": "1998-09-26T00:00:00Z", "metadata": {"UnhQSkjE2n6ZfFCf": {}, "AEeTJx9n88nEaqRi": {}, "IBZpK3sXasrZqqGu": {}}, "origin": "Steam", "reason": "XxmUxBDnuQX4YlQR", "source": "OTHER"}, "currencyCode": "xq9VZfcFodJDtCoR", "userIds": ["gJGYLw2cdJoWH7SH", "fhoUmAtXnqge5O73", "Zex77Hl3VVVisrER"]}]' \
    > test.out 2>&1
eval_tap $? 336 'BulkCredit' test.out

#- 337 BulkDebit
samples/cli/sample-apps Platform bulkDebit \
    --namespace $AB_NAMESPACE \
    --body '[{"currencyCode": "eGwKZ4sKFbdhwuHT", "request": {"allowOverdraft": true, "amount": 11, "balanceOrigin": "Playstation", "balanceSource": "EXPIRATION", "metadata": {"YxfzBMH3NrWoRWxF": {}, "wfZN8qyyFPFqUU8K": {}, "rMF5lY4HxhjAwDz4": {}}, "reason": "P2yCU1HIwbjn4FHu"}, "userIds": ["WguIcNanpPikHEG7", "lfAhonvmtdw3eJAQ", "RN1WyZT9PkrP1M4O"]}, {"currencyCode": "8OBSkhAeXTkRSH6D", "request": {"allowOverdraft": true, "amount": 57, "balanceOrigin": "Nintendo", "balanceSource": "ORDER_REVOCATION", "metadata": {"WwInwhLUxumslZCp": {}, "0NEHOYghmJ4FAC3S": {}, "YqzYWcfqH4OGDJbm": {}}, "reason": "MtThbuqLGKH0Wf2J"}, "userIds": ["Y9ql6y4scznb9Mcy", "bOilFPRomLHOhTe3", "laqsvKbbRMdw9NiV"]}, {"currencyCode": "u9IZ7phEJ6c63NMe", "request": {"allowOverdraft": true, "amount": 53, "balanceOrigin": "Epic", "balanceSource": "PAYMENT", "metadata": {"GlhxQhEqfqcA6ZPD": {}, "lD5DVCPrrRA5oWdr": {}, "WEyz8OcDR0TCMJFY": {}}, "reason": "FR5eCvmXv32DDAlr"}, "userIds": ["q3zaGMWReixulHML", "kAU0fuy6YqxexbPU", "lwpYrBTLJgQ87U0P"]}]' \
    > test.out 2>&1
eval_tap $? 337 'BulkDebit' test.out

#- 338 GetWallet
eval_tap 0 338 'GetWallet # SKIP deprecated' test.out

#- 339 SyncOrders
samples/cli/sample-apps Platform syncOrders \
    --nextEvaluatedKey 'oWKd6OvYwHM092lx' \
    --end 'DrARSbsJoUujaI2Q' \
    --start 'FpEUbFTZyNstxHM5' \
    > test.out 2>&1
eval_tap $? 339 'SyncOrders' test.out

#- 340 TestAdyenConfig
samples/cli/sample-apps Platform testAdyenConfig \
    --sandbox 'false' \
    --body '{"allowedPaymentMethods": ["1qmvY9QT7e22QFWu", "NhisZ9u8rF7CYVto", "CzN284xJsxD8Xz2z"], "apiKey": "8t51Chsd7hniINjo", "authoriseAsCapture": false, "blockedPaymentMethods": ["1S9xfwpWkpjldpmF", "QQjLqZXqx0Xpvzti", "itj4eZHp94goU23r"], "clientKey": "aPit6NXbnMRQfgkL", "dropInSettings": "gx0vP1Y7sYXdSb3p", "liveEndpointUrlPrefix": "vPyZZWtnO7BQzopp", "merchantAccount": "LnHMHX8022YkEI6f", "notificationHmacKey": "0zbNn2p05V7cWEXx", "notificationPassword": "BneWketzVdVN5igY", "notificationUsername": "Q1PvBKJm2cs3qFdD", "returnUrl": "13LUI87RgcKCkm6e", "settings": "qwEIYfcXLwnlS3Nc"}' \
    > test.out 2>&1
eval_tap $? 340 'TestAdyenConfig' test.out

#- 341 TestAliPayConfig
samples/cli/sample-apps Platform testAliPayConfig \
    --sandbox 'false' \
    --body '{"appId": "VGH5eFp9kyxSAm4f", "privateKey": "u9ZtFzvlPQOxjGFO", "publicKey": "ivFuLkKEfqsZKZMJ", "returnUrl": "TrlDtu6PC5Lv18Bd"}' \
    > test.out 2>&1
eval_tap $? 341 'TestAliPayConfig' test.out

#- 342 TestCheckoutConfig
samples/cli/sample-apps Platform testCheckoutConfig \
    --sandbox 'false' \
    --body '{"publicKey": "PaqFQkkAIcuDTbpF", "secretKey": "uJIlFn3phoNwudmd"}' \
    > test.out 2>&1
eval_tap $? 342 'TestCheckoutConfig' test.out

#- 343 DebugMatchedPaymentMerchantConfig
samples/cli/sample-apps Platform debugMatchedPaymentMerchantConfig \
    --namespace 'Ck6WNgqxSvykPFt0' \
    --region 'fd2kB49cdZ9vGcoX' \
    > test.out 2>&1
eval_tap $? 343 'DebugMatchedPaymentMerchantConfig' test.out

#- 344 TestNeonPayConfig
samples/cli/sample-apps Platform testNeonPayConfig \
    --sandbox 'false' \
    --body '{"apiKey": "4IHTmjuFI3OQSd8b", "webhookSecretKey": "CWKkjQWd3aMz9Byx"}' \
    > test.out 2>&1
eval_tap $? 344 'TestNeonPayConfig' test.out

#- 345 TestPayPalConfig
samples/cli/sample-apps Platform testPayPalConfig \
    --sandbox 'false' \
    --body '{"clientID": "K1IdcabvRg7Xo0kN", "clientSecret": "RKH7FlxcouDRfthq", "returnUrl": "J2r0l48chy4fFxyq", "webHookId": "uBbj9tlpvkGfKVTs"}' \
    > test.out 2>&1
eval_tap $? 345 'TestPayPalConfig' test.out

#- 346 TestStripeConfig
samples/cli/sample-apps Platform testStripeConfig \
    --sandbox 'true' \
    --body '{"allowedPaymentMethodTypes": ["rxTzav2c3xVLokCN", "i5aJhFZZ2zTonGiS", "n4DNoWc9Tv0ArISa"], "publishableKey": "F4YuaRg5VrteCZak", "secretKey": "spP5cdzZgwMH6yqv", "webhookSecret": "pzV4a0HF8doGHDSP"}' \
    > test.out 2>&1
eval_tap $? 346 'TestStripeConfig' test.out

#- 347 TestWxPayConfig
samples/cli/sample-apps Platform testWxPayConfig \
    --body '{"appId": "ogRxAl711HZdxEsS", "key": "o1gHjS2zOa3Cp4w1", "mchid": "08eXeVTo8pK1jIrz", "returnUrl": "K70NfQiJ6N5sIkTl"}' \
    > test.out 2>&1
eval_tap $? 347 'TestWxPayConfig' test.out

#- 348 TestXsollaConfig
samples/cli/sample-apps Platform testXsollaConfig \
    --body '{"apiKey": "S7lPWWxHWrdC29Bx", "flowCompletionUrl": "ApRoXbXI5zIEB2Q2", "merchantId": 81, "projectId": 82, "projectSecretKey": "xwotJeQgMFA9uiP5"}' \
    > test.out 2>&1
eval_tap $? 348 'TestXsollaConfig' test.out

#- 349 GetPaymentMerchantConfig1
samples/cli/sample-apps Platform getPaymentMerchantConfig1 \
    --id 'kbPSNAsydcsxqLfE' \
    > test.out 2>&1
eval_tap $? 349 'GetPaymentMerchantConfig1' test.out

#- 350 UpdateAdyenConfig
samples/cli/sample-apps Platform updateAdyenConfig \
    --id 'NTTRJ7fW0F7n1vYK' \
    --sandbox 'false' \
    --validate 'true' \
    --body '{"allowedPaymentMethods": ["mTmor7QeZHkQSmMA", "pOBjwOkvcSDqJczK", "z2axaICJvsKu3ElW"], "apiKey": "t7JVn3fNJSk3ESKp", "authoriseAsCapture": false, "blockedPaymentMethods": ["smCOYbLJE9ZL5hjc", "DyeodcAYMCMrq4r2", "uBY1P0TUV5gQoVYB"], "clientKey": "v8fvJ8NiLVFl0XvE", "dropInSettings": "qHL0QcehYzlPHxog", "liveEndpointUrlPrefix": "8QU9xG1pqCEa1qRq", "merchantAccount": "SdX3qLzrkl4G9rkS", "notificationHmacKey": "GCpVDUd7Pcieqji0", "notificationPassword": "nRluHILVx99CDPPk", "notificationUsername": "O21GZilg5aD8KCIv", "returnUrl": "OWOt7OgESqKpDfhM", "settings": "WUGYwZBhugHmBtde"}' \
    > test.out 2>&1
eval_tap $? 350 'UpdateAdyenConfig' test.out

#- 351 TestAdyenConfigById
samples/cli/sample-apps Platform testAdyenConfigById \
    --id 'lOTfdH6RSlyUBVzR' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 351 'TestAdyenConfigById' test.out

#- 352 UpdateAliPayConfig
samples/cli/sample-apps Platform updateAliPayConfig \
    --id 'gjiaUzkqZcBqmBXh' \
    --sandbox 'false' \
    --validate 'false' \
    --body '{"appId": "PCeO0Q7GghH2dmUC", "privateKey": "oWdYr3sDkj8RLhQ0", "publicKey": "P784SGApT8aY0mhb", "returnUrl": "2rbGRBXpUJnvBAV0"}' \
    > test.out 2>&1
eval_tap $? 352 'UpdateAliPayConfig' test.out

#- 353 TestAliPayConfigById
samples/cli/sample-apps Platform testAliPayConfigById \
    --id 'pCxYZ1XMVME3Nqfa' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 353 'TestAliPayConfigById' test.out

#- 354 UpdateCheckoutConfig
samples/cli/sample-apps Platform updateCheckoutConfig \
    --id '0Vh60BJDtoyJkQAX' \
    --sandbox 'false' \
    --validate 'false' \
    --body '{"publicKey": "ZjI1oTEtl6oE98Gq", "secretKey": "GDkuGVFALkjXm88e"}' \
    > test.out 2>&1
eval_tap $? 354 'UpdateCheckoutConfig' test.out

#- 355 TestCheckoutConfigById
samples/cli/sample-apps Platform testCheckoutConfigById \
    --id 'XC2rWblwmB0np8lT' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 355 'TestCheckoutConfigById' test.out

#- 356 UpdateNeonPayConfig
samples/cli/sample-apps Platform updateNeonPayConfig \
    --id 'HGDLM9LQf0yX3Eeu' \
    --sandbox 'true' \
    --validate 'true' \
    --body '{"apiKey": "v7JYme1Qdzx5491t", "webhookSecretKey": "nwqMvD9Uq1a5DrtD"}' \
    > test.out 2>&1
eval_tap $? 356 'UpdateNeonPayConfig' test.out

#- 357 TestNeonPayConfigById
samples/cli/sample-apps Platform testNeonPayConfigById \
    --id '2pTLfDZdkmXIhjBb' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 357 'TestNeonPayConfigById' test.out

#- 358 UpdatePayPalConfig
samples/cli/sample-apps Platform updatePayPalConfig \
    --id 'pMKEpbF98PX3oGW7' \
    --sandbox 'false' \
    --validate 'true' \
    --body '{"clientID": "evego4IeGwohHVhQ", "clientSecret": "7W5abrH4NinzZ0KM", "returnUrl": "3NFZ9spQD5mlkg16", "webHookId": "Y6jgLZ9SiqIE8Qs9"}' \
    > test.out 2>&1
eval_tap $? 358 'UpdatePayPalConfig' test.out

#- 359 TestPayPalConfigById
samples/cli/sample-apps Platform testPayPalConfigById \
    --id 'TBLMJo4OU8B5THi4' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 359 'TestPayPalConfigById' test.out

#- 360 UpdateStripeConfig
samples/cli/sample-apps Platform updateStripeConfig \
    --id 'vYiIrPlPVBoB3XlU' \
    --sandbox 'false' \
    --validate 'false' \
    --body '{"allowedPaymentMethodTypes": ["0R839m3FZGgkBQN6", "oscYWHY2aubyHO90", "1qHlnlz72x8kbAS2"], "publishableKey": "O9yhoDRj9MuljkHi", "secretKey": "BNYY21hcob09uJTz", "webhookSecret": "mK1X1tSzQt7vOkLj"}' \
    > test.out 2>&1
eval_tap $? 360 'UpdateStripeConfig' test.out

#- 361 TestStripeConfigById
samples/cli/sample-apps Platform testStripeConfigById \
    --id 'YNZElANnfHQpAVft' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 361 'TestStripeConfigById' test.out

#- 362 UpdateWxPayConfig
samples/cli/sample-apps Platform updateWxPayConfig \
    --id 'peQghgnmJSnxI1v8' \
    --validate 'true' \
    --body '{"appId": "R7KKYA1M2xP0XGj9", "key": "gZOj6AJnFxWyXA4z", "mchid": "ATEirMUYsFfYnkan", "returnUrl": "AiQW2o2rO0PTLyNG"}' \
    > test.out 2>&1
eval_tap $? 362 'UpdateWxPayConfig' test.out

#- 363 UpdateWxPayConfigCert
samples/cli/sample-apps Platform updateWxPayConfigCert \
    --id '4WBSbKtFv67aVz2X' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 363 'UpdateWxPayConfigCert' test.out

#- 364 TestWxPayConfigById
samples/cli/sample-apps Platform testWxPayConfigById \
    --id 'Y2uPeNIWpePdYqmm' \
    > test.out 2>&1
eval_tap $? 364 'TestWxPayConfigById' test.out

#- 365 UpdateXsollaConfig
samples/cli/sample-apps Platform updateXsollaConfig \
    --id 'RLdEH3z1uThfXMTM' \
    --validate 'false' \
    --body '{"apiKey": "rIS915c7fE5fJsxK", "flowCompletionUrl": "vRE1ye0l2KY4zJnS", "merchantId": 57, "projectId": 97, "projectSecretKey": "NgSgqvYk0d905euZ"}' \
    > test.out 2>&1
eval_tap $? 365 'UpdateXsollaConfig' test.out

#- 366 TestXsollaConfigById
samples/cli/sample-apps Platform testXsollaConfigById \
    --id 'jXY50mnAeh59G3ly' \
    > test.out 2>&1
eval_tap $? 366 'TestXsollaConfigById' test.out

#- 367 UpdateXsollaUIConfig
samples/cli/sample-apps Platform updateXsollaUIConfig \
    --id 'eIa1wbUG3fjMyLuY' \
    --body '{"device": "MOBILE", "showCloseButton": true, "size": "LARGE", "theme": "DEFAULT"}' \
    > test.out 2>&1
eval_tap $? 367 'UpdateXsollaUIConfig' test.out

#- 368 QueryPaymentProviderConfig
samples/cli/sample-apps Platform queryPaymentProviderConfig \
    --limit '70' \
    --namespace '3EOdrmU7HRLCn1mr' \
    --offset '70' \
    --region 'lxjQzPbHMhz4qeLg' \
    > test.out 2>&1
eval_tap $? 368 'QueryPaymentProviderConfig' test.out

#- 369 CreatePaymentProviderConfig
samples/cli/sample-apps Platform createPaymentProviderConfig \
    --body '{"aggregate": "XSOLLA", "namespace": "H1w2lTuOQB2oVOrG", "region": "UPz61cjRTSPME18L", "sandboxTaxJarApiToken": "oimA9nq9lgw66I3k", "specials": ["ADYEN", "ADYEN", "XSOLLA"], "taxJarApiToken": "wvsH9dKNfbMDeC5D", "taxJarEnabled": false, "useGlobalTaxJarApiToken": false}' \
    > test.out 2>&1
eval_tap $? 369 'CreatePaymentProviderConfig' test.out

#- 370 GetAggregatePaymentProviders
samples/cli/sample-apps Platform getAggregatePaymentProviders \
    > test.out 2>&1
eval_tap $? 370 'GetAggregatePaymentProviders' test.out

#- 371 DebugMatchedPaymentProviderConfig
samples/cli/sample-apps Platform debugMatchedPaymentProviderConfig \
    --namespace '7JuaV1iqO7gLaukN' \
    --region '0206TL7lYCLZkq5n' \
    > test.out 2>&1
eval_tap $? 371 'DebugMatchedPaymentProviderConfig' test.out

#- 372 GetSpecialPaymentProviders
samples/cli/sample-apps Platform getSpecialPaymentProviders \
    > test.out 2>&1
eval_tap $? 372 'GetSpecialPaymentProviders' test.out

#- 373 UpdatePaymentProviderConfig
samples/cli/sample-apps Platform updatePaymentProviderConfig \
    --id 'm5TjoduVEQ5HoBjs' \
    --body '{"aggregate": "ADYEN", "namespace": "fwIfJPpxzsaAv24C", "region": "JHnDm5VXSZhGgFna", "sandboxTaxJarApiToken": "hdIMaDx0VhTtj6Va", "specials": ["ADYEN", "WXPAY", "XSOLLA"], "taxJarApiToken": "CL8sO1M6c6qUazDT", "taxJarEnabled": false, "useGlobalTaxJarApiToken": true}' \
    > test.out 2>&1
eval_tap $? 373 'UpdatePaymentProviderConfig' test.out

#- 374 DeletePaymentProviderConfig
samples/cli/sample-apps Platform deletePaymentProviderConfig \
    --id 'ic8md8LZzSYjPdje' \
    > test.out 2>&1
eval_tap $? 374 'DeletePaymentProviderConfig' test.out

#- 375 GetPaymentTaxConfig
samples/cli/sample-apps Platform getPaymentTaxConfig \
    > test.out 2>&1
eval_tap $? 375 'GetPaymentTaxConfig' test.out

#- 376 UpdatePaymentTaxConfig
samples/cli/sample-apps Platform updatePaymentTaxConfig \
    --body '{"sandboxTaxJarApiToken": "3dIDhNG2SOwtmXYB", "taxJarApiToken": "jXN6okFD2aIt9R9N", "taxJarEnabled": true, "taxJarProductCodesMapping": {"BONamYYdMtYsY0NQ": "qyXTffMWJo0k9gJX", "w3aGqOVkMYcZwjRp": "fGmAcXcysGHmZXqU", "eugEZyB5QYcruZHQ": "XlqoHVFKRgn2KFcX"}}' \
    > test.out 2>&1
eval_tap $? 376 'UpdatePaymentTaxConfig' test.out

#- 377 SyncPaymentOrders
samples/cli/sample-apps Platform syncPaymentOrders \
    --nextEvaluatedKey 'r24BJgmYYt80pL8K' \
    --end '4AU0gKynVVTCncH9' \
    --start 'QVEK7BQHIVY0zMPg' \
    > test.out 2>&1
eval_tap $? 377 'SyncPaymentOrders' test.out

#- 378 PublicGetRootCategories
samples/cli/sample-apps Platform publicGetRootCategories \
    --namespace $AB_NAMESPACE \
    --language 'lNjxDR0cfELPR86i' \
    --storeId 'tIF8bJBHpkU5oapd' \
    > test.out 2>&1
eval_tap $? 378 'PublicGetRootCategories' test.out

#- 379 DownloadCategories
samples/cli/sample-apps Platform downloadCategories \
    --namespace $AB_NAMESPACE \
    --language 'leFsCSlVJGV9f6Sd' \
    --storeId 'jvOAI0JJveNEwrxZ' \
    > test.out 2>&1
eval_tap $? 379 'DownloadCategories' test.out

#- 380 PublicGetCategory
samples/cli/sample-apps Platform publicGetCategory \
    --categoryPath 'IpEhHAWCzbqNCfU5' \
    --namespace $AB_NAMESPACE \
    --language 'kGIJIDsFZwV9mhGy' \
    --storeId '8G3Et4NWzPBUC7XZ' \
    > test.out 2>&1
eval_tap $? 380 'PublicGetCategory' test.out

#- 381 PublicGetChildCategories
samples/cli/sample-apps Platform publicGetChildCategories \
    --categoryPath 'eJ2PfkjoKR1crpyO' \
    --namespace $AB_NAMESPACE \
    --language 'O12zjNigXQv0SmfA' \
    --storeId 'xhvAhdSRyZaEzxvt' \
    > test.out 2>&1
eval_tap $? 381 'PublicGetChildCategories' test.out

#- 382 PublicGetDescendantCategories
samples/cli/sample-apps Platform publicGetDescendantCategories \
    --categoryPath 'ctkQXWud5JrRNBST' \
    --namespace $AB_NAMESPACE \
    --language 'zR2yXwCVlcPa4gFf' \
    --storeId 'c1xEBxFg9c9ktvUM' \
    > test.out 2>&1
eval_tap $? 382 'PublicGetDescendantCategories' test.out

#- 383 PublicListCurrencies
samples/cli/sample-apps Platform publicListCurrencies \
    --namespace $AB_NAMESPACE \
    --currencyType 'REAL' \
    > test.out 2>&1
eval_tap $? 383 'PublicListCurrencies' test.out

#- 384 GeDLCDurableRewardShortMap
samples/cli/sample-apps Platform geDLCDurableRewardShortMap \
    --namespace $AB_NAMESPACE \
    --dlcType 'OCULUS' \
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
    --platform 'APPLE' \
    > test.out 2>&1
eval_tap $? 386 'GetIAPItemMapping' test.out

#- 387 PublicGetItemByAppId
samples/cli/sample-apps Platform publicGetItemByAppId \
    --namespace $AB_NAMESPACE \
    --language 'vHaBPc3utj6qyyYs' \
    --region 'NccbcfeOcymkKspq' \
    --storeId 'VbkUqQwUiz06JInd' \
    --appId 'MkpbsI95fiUle63c' \
    > test.out 2>&1
eval_tap $? 387 'PublicGetItemByAppId' test.out

#- 388 PublicQueryItems
samples/cli/sample-apps Platform publicQueryItems \
    --namespace $AB_NAMESPACE \
    --appType 'SOFTWARE' \
    --autoCalcEstimatedPrice 'true' \
    --baseAppId '75IJfV17vhOVdSLO' \
    --categoryPath '23M2pGljIu4OkMRl' \
    --features 'EJdWNK4nKn8fWYTW' \
    --includeSubCategoryItem 'false' \
    --itemType 'EXTENSION' \
    --language 'UbQ7jCaFqWha0piO' \
    --limit '1' \
    --offset '91' \
    --region '7P5P6aRnOtjxHpbq' \
    --sortBy '["updatedAt", "createdAt:desc", "updatedAt:asc"]' \
    --storeId 'qtiUK6maaTPMVOcz' \
    --tags 'z0DWdvPekY1ikQfB' \
    > test.out 2>&1
eval_tap $? 388 'PublicQueryItems' test.out

#- 389 PublicGetItemBySku
samples/cli/sample-apps Platform publicGetItemBySku \
    --namespace $AB_NAMESPACE \
    --autoCalcEstimatedPrice 'true' \
    --language 'BVBp0vhVxfaQ6Ow8' \
    --region '1XpMpVOVpnYG7CAr' \
    --storeId '2L3l4knPk4GY1Lgt' \
    --sku '7aUbNAZhbEuKlf1k' \
    > test.out 2>&1
eval_tap $? 389 'PublicGetItemBySku' test.out

#- 390 PublicGetEstimatedPrice
samples/cli/sample-apps Platform publicGetEstimatedPrice \
    --namespace $AB_NAMESPACE \
    --region 'PDjL0q8J7dwd4Z9S' \
    --storeId 'zwTNdO4wcG3DbhmC' \
    --itemIds 'iVOhBOt4vkqt7KOQ' \
    > test.out 2>&1
eval_tap $? 390 'PublicGetEstimatedPrice' test.out

#- 391 PublicBulkGetItems
samples/cli/sample-apps Platform publicBulkGetItems \
    --namespace $AB_NAMESPACE \
    --autoCalcEstimatedPrice 'true' \
    --language 'Y4z9vulTgMtZ8psn' \
    --region '56y7AKZQA52dKwzz' \
    --storeId 'wCLL7f7wWSToHbI1' \
    --itemIds 'HJH1gQ6gCIWmkm9z' \
    > test.out 2>&1
eval_tap $? 391 'PublicBulkGetItems' test.out

#- 392 PublicValidateItemPurchaseCondition
samples/cli/sample-apps Platform publicValidateItemPurchaseCondition \
    --namespace $AB_NAMESPACE \
    --body '{"itemIds": ["NWnlRi3qgOeJwZRH", "OcvXPimTfXMYrBSy", "GAA9M5dHzzKM9rXX"]}' \
    > test.out 2>&1
eval_tap $? 392 'PublicValidateItemPurchaseCondition' test.out

#- 393 PublicSearchItems
samples/cli/sample-apps Platform publicSearchItems \
    --namespace $AB_NAMESPACE \
    --autoCalcEstimatedPrice 'true' \
    --itemType 'APP' \
    --limit '13' \
    --offset '46' \
    --region 'jKMHzy6jtzbE74Kn' \
    --storeId 'NoBEeE5kzjvWNKw0' \
    --keyword '0kIrWXWSGYPOLBri' \
    --language 'nMyyxd3XJEUg67qU' \
    > test.out 2>&1
eval_tap $? 393 'PublicSearchItems' test.out

#- 394 PublicGetApp
samples/cli/sample-apps Platform publicGetApp \
    --itemId 'UbR34tt6svlRwo9n' \
    --namespace $AB_NAMESPACE \
    --language 'gdCGiVs0Tz6KB0ey' \
    --region 'nnhtYBrlozTogihi' \
    --storeId 'Qk448uDOqIObG026' \
    > test.out 2>&1
eval_tap $? 394 'PublicGetApp' test.out

#- 395 PublicGetItemDynamicData
samples/cli/sample-apps Platform publicGetItemDynamicData \
    --itemId 'kfkrOjKR9hULjw3y' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 395 'PublicGetItemDynamicData' test.out

#- 396 PublicGetItem
samples/cli/sample-apps Platform publicGetItem \
    --itemId '7OxoxKmuFn17n0p2' \
    --namespace $AB_NAMESPACE \
    --autoCalcEstimatedPrice 'true' \
    --language 'JA42TOuwa0AVSeHr' \
    --populateBundle 'true' \
    --region 'wvipgusUBfH0GtLR' \
    --storeId 'fZGcVHxHYMWVwtzT' \
    > test.out 2>&1
eval_tap $? 396 'PublicGetItem' test.out

#- 397 GetPaymentCustomization
eval_tap 0 397 'GetPaymentCustomization # SKIP deprecated' test.out

#- 398 PublicGetPaymentUrl
samples/cli/sample-apps Platform publicGetPaymentUrl \
    --namespace $AB_NAMESPACE \
    --body '{"neonPayConfig": {"cancelUrl": "vMIy53N5mIrEsfKB", "successUrl": "xDDRV9W2XKgW1Tbo"}, "paymentOrderNo": "PiVrtAhKNASJqGiG", "paymentProvider": "WALLET", "returnUrl": "Q3SxZHezaF9H6FL9", "ui": "G9NaSfGAoZwXZzcr", "zipCode": "kJdSUoNP68VsmMnu"}' \
    > test.out 2>&1
eval_tap $? 398 'PublicGetPaymentUrl' test.out

#- 399 PublicGetPaymentMethods
samples/cli/sample-apps Platform publicGetPaymentMethods \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'aqZa5C6lFjwIUY9Y' \
    > test.out 2>&1
eval_tap $? 399 'PublicGetPaymentMethods' test.out

#- 400 PublicGetUnpaidPaymentOrder
samples/cli/sample-apps Platform publicGetUnpaidPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'yFnbfPeOfqT8s2qK' \
    > test.out 2>&1
eval_tap $? 400 'PublicGetUnpaidPaymentOrder' test.out

#- 401 Pay
samples/cli/sample-apps Platform pay \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'fWCQf6PcOY7uiy7L' \
    --paymentProvider 'STRIPE' \
    --zipCode 'j6s5F79LL6rUsEZF' \
    --body '{"token": "A684nHQkEyE0V1aQ"}' \
    > test.out 2>&1
eval_tap $? 401 'Pay' test.out

#- 402 PublicCheckPaymentOrderPaidStatus
samples/cli/sample-apps Platform publicCheckPaymentOrderPaidStatus \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'GVPMb3lZy6GxBJzC' \
    > test.out 2>&1
eval_tap $? 402 'PublicCheckPaymentOrderPaidStatus' test.out

#- 403 GetPaymentPublicConfig
samples/cli/sample-apps Platform getPaymentPublicConfig \
    --namespace $AB_NAMESPACE \
    --sandbox 'true' \
    --paymentProvider 'ADYEN' \
    --region 'BK5PqQ5VqYSyYxcr' \
    > test.out 2>&1
eval_tap $? 403 'GetPaymentPublicConfig' test.out

#- 404 PublicGetQRCode
samples/cli/sample-apps Platform publicGetQRCode \
    --namespace $AB_NAMESPACE \
    --code 'OtXyKk7r3jECPuxP' \
    > test.out 2>&1
eval_tap $? 404 'PublicGetQRCode' test.out

#- 405 PublicNormalizePaymentReturnUrl
samples/cli/sample-apps Platform publicNormalizePaymentReturnUrl \
    --namespace $AB_NAMESPACE \
    --payerID 'gYCdcH85qZCYoQwh' \
    --foreinginvoice 'shjuHukKdc3iZNIa' \
    --invoiceId 'kjMmCXoVg3v2PDqh' \
    --payload 'NQYgd2zuHjQOlraU' \
    --redirectResult 'MXHeF3mshWLm4zkJ' \
    --resultCode 'Rq9sOejhsZBDrnTV' \
    --sessionId 'rBywVDlKudQAGKwK' \
    --status '2KXNQ9xhz0sM76yf' \
    --token '8M4wtpZRQdwxwlTN' \
    --type 'WBImEwbYutB1okxr' \
    --userId 'ezVeSsBeJGVfWyGi' \
    --orderNo 'AbQLUDSgfYu8aJTg' \
    --paymentOrderNo '4foEaT4aaO0EsGMP' \
    --paymentProvider 'XSOLLA' \
    --returnUrl 'xVkUHWiW258CF69f' \
    > test.out 2>&1
eval_tap $? 405 'PublicNormalizePaymentReturnUrl' test.out

#- 406 GetPaymentTaxValue
samples/cli/sample-apps Platform getPaymentTaxValue \
    --namespace $AB_NAMESPACE \
    --zipCode 'NfS3XRwzTzNuSASc' \
    --paymentOrderNo 'HrFh60ndZ0PxK9v9' \
    --paymentProvider 'STRIPE' \
    > test.out 2>&1
eval_tap $? 406 'GetPaymentTaxValue' test.out

#- 407 GetRewardByCode
samples/cli/sample-apps Platform getRewardByCode \
    --namespace $AB_NAMESPACE \
    --rewardCode 'HvvJ5qR5ahscKnYN' \
    > test.out 2>&1
eval_tap $? 407 'GetRewardByCode' test.out

#- 408 QueryRewards1
samples/cli/sample-apps Platform queryRewards1 \
    --namespace $AB_NAMESPACE \
    --eventTopic 'CD8uX22FklwVkIgt' \
    --limit '56' \
    --offset '65' \
    --sortBy '["rewardCode:desc", "namespace"]' \
    > test.out 2>&1
eval_tap $? 408 'QueryRewards1' test.out

#- 409 GetReward1
samples/cli/sample-apps Platform getReward1 \
    --namespace $AB_NAMESPACE \
    --rewardId 'A3RIBkP75tJvBpg4' \
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
    --appIds '["g5XKeWvxV8lUJSE6", "jsgVIRBGpwNGxiAS", "TCEGAjbnngjAqCr1"]' \
    --itemIds '["ubRpJga2ad9yQwW8", "cEh1QHQaqVgD5zFM", "GfRCYiMYczTR2ov5"]' \
    --skus '["BWmOKrMjRDHdDArv", "GUvHUnENGPhfKtvb", "BVxuB9eQdpuVwSeq"]' \
    > test.out 2>&1
eval_tap $? 411 'PublicExistsAnyMyActiveEntitlement' test.out

#- 412 PublicGetMyAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform publicGetMyAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --appId 'edIJwztxH0Uqnb6O' \
    > test.out 2>&1
eval_tap $? 412 'PublicGetMyAppEntitlementOwnershipByAppId' test.out

#- 413 PublicGetMyEntitlementOwnershipByItemId
samples/cli/sample-apps Platform publicGetMyEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --entitlementClazz 'ENTITLEMENT' \
    --itemId 'TFi4dbdbEHzcgOi2' \
    > test.out 2>&1
eval_tap $? 413 'PublicGetMyEntitlementOwnershipByItemId' test.out

#- 414 PublicGetMyEntitlementOwnershipBySku
samples/cli/sample-apps Platform publicGetMyEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --entitlementClazz 'LOOTBOX' \
    --sku 'kpZ2Wsm5s4dwCdR5' \
    > test.out 2>&1
eval_tap $? 414 'PublicGetMyEntitlementOwnershipBySku' test.out

#- 415 PublicGetEntitlementOwnershipToken
samples/cli/sample-apps Platform publicGetEntitlementOwnershipToken \
    --namespace $AB_NAMESPACE \
    --appIds '["GJeI1QrBWHeczMU1", "2Ey0qD2ewMG8Ypnr", "UrMyAsynUM3aEy8b"]' \
    --itemIds '["lyVOhYW6mTOM5wZw", "fn8A5HMUWn3gfurI", "2lSiwswR4rkVX976"]' \
    --skus '["HYULfezWJUlNDaAJ", "V5VctZ3QQJ8T9TiE", "py1PCEBZurlcpJDv"]' \
    > test.out 2>&1
eval_tap $? 415 'PublicGetEntitlementOwnershipToken' test.out

#- 416 SyncTwitchDropsEntitlement
samples/cli/sample-apps Platform syncTwitchDropsEntitlement \
    --namespace $AB_NAMESPACE \
    --body '{"gameId": "5DcroH7qGPaVP9uL", "language": "Jt_uTXs", "region": "D3CRSE0gAyCTJm0B"}' \
    > test.out 2>&1
eval_tap $? 416 'SyncTwitchDropsEntitlement' test.out

#- 417 PublicGetMyWallet
samples/cli/sample-apps Platform publicGetMyWallet \
    --currencyCode 'pEY4sFHDsaYwk9tY' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 417 'PublicGetMyWallet' test.out

#- 418 SyncEpicGameDLC
samples/cli/sample-apps Platform syncEpicGameDLC \
    --namespace $AB_NAMESPACE \
    --userId 'YhF3x3BIVtjrJ73V' \
    --body '{"epicGamesJwtToken": "e9XgKxXGCZb5yjuz"}' \
    > test.out 2>&1
eval_tap $? 418 'SyncEpicGameDLC' test.out

#- 419 SyncOculusDLC
samples/cli/sample-apps Platform syncOculusDLC \
    --namespace $AB_NAMESPACE \
    --userId '3U6y32guQOGRKyK2' \
    > test.out 2>&1
eval_tap $? 419 'SyncOculusDLC' test.out

#- 420 PublicSyncPsnDlcInventory
samples/cli/sample-apps Platform publicSyncPsnDlcInventory \
    --namespace $AB_NAMESPACE \
    --userId 'qhVaS0QlUndyQuZf' \
    --body '{"serviceLabel": 27}' \
    > test.out 2>&1
eval_tap $? 420 'PublicSyncPsnDlcInventory' test.out

#- 421 PublicSyncPsnDlcInventoryWithMultipleServiceLabels
samples/cli/sample-apps Platform publicSyncPsnDlcInventoryWithMultipleServiceLabels \
    --namespace $AB_NAMESPACE \
    --userId 'gSDmVd7I4N8anX6b' \
    --body '{"serviceLabels": [88, 66, 7]}' \
    > test.out 2>&1
eval_tap $? 421 'PublicSyncPsnDlcInventoryWithMultipleServiceLabels' test.out

#- 422 SyncSteamDLC
samples/cli/sample-apps Platform syncSteamDLC \
    --namespace $AB_NAMESPACE \
    --userId 'Wup0QIsO6LSk1dPE' \
    --body '{"appId": "lVrxUnspTBL4seTh", "steamId": "AgagWz5jq5di403C"}' \
    > test.out 2>&1
eval_tap $? 422 'SyncSteamDLC' test.out

#- 423 SyncXboxDLC
samples/cli/sample-apps Platform syncXboxDLC \
    --namespace $AB_NAMESPACE \
    --userId 'BwgksXewLEiUGDI4' \
    --body '{"xstsToken": "DT6OryojH6kE4sPu"}' \
    > test.out 2>&1
eval_tap $? 423 'SyncXboxDLC' test.out

#- 424 PublicQueryUserEntitlements
samples/cli/sample-apps Platform publicQueryUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'UtKMYeNSmqpBPrTy' \
    --appType 'DEMO' \
    --entitlementClazz 'OPTIONBOX' \
    --entitlementName 'KmBCNCfIP9PXurcP' \
    --features '["f0e0zZVOysUSi4pS", "yHObnG1Fi015dCQq", "7I7rl3kqPrkuUeP0"]' \
    --itemId '["MMMNbm4TyefCmQW5", "siSf0r0fWbzg6yPl", "pZ6uc8FjpjJscvMt"]' \
    --limit '27' \
    --offset '60' \
    > test.out 2>&1
eval_tap $? 424 'PublicQueryUserEntitlements' test.out

#- 425 PublicGetUserAppEntitlementByAppId
samples/cli/sample-apps Platform publicGetUserAppEntitlementByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'zDAn85uETekeqym2' \
    --appId 'Tct39kKJ2dPSJdp5' \
    > test.out 2>&1
eval_tap $? 425 'PublicGetUserAppEntitlementByAppId' test.out

#- 426 PublicQueryUserEntitlementsByAppType
samples/cli/sample-apps Platform publicQueryUserEntitlementsByAppType \
    --namespace $AB_NAMESPACE \
    --userId 'EZQhs8jdpfbODcj7' \
    --limit '19' \
    --offset '66' \
    --appType 'GAME' \
    > test.out 2>&1
eval_tap $? 426 'PublicQueryUserEntitlementsByAppType' test.out

#- 427 PublicGetUserEntitlementsByIds
samples/cli/sample-apps Platform publicGetUserEntitlementsByIds \
    --namespace $AB_NAMESPACE \
    --userId 'SpuvS7oRAJ0kWu2W' \
    --availablePlatformOnly 'false' \
    --ids '["T66MizkpbHMZCdD4", "GvxeutiApI19dWe6", "qXoB6LK5qGTL0iq1"]' \
    > test.out 2>&1
eval_tap $? 427 'PublicGetUserEntitlementsByIds' test.out

#- 428 PublicGetUserEntitlementByItemId
eval_tap 0 428 'PublicGetUserEntitlementByItemId # SKIP deprecated' test.out

#- 429 PublicGetUserEntitlementBySku
eval_tap 0 429 'PublicGetUserEntitlementBySku # SKIP deprecated' test.out

#- 430 PublicUserEntitlementHistory
samples/cli/sample-apps Platform publicUserEntitlementHistory \
    --namespace $AB_NAMESPACE \
    --userId 'mEi0sAGakTYwxkN3' \
    --endDate 'aBzlz2aMJqsBZh1l' \
    --entitlementClazz 'ENTITLEMENT' \
    --limit '16' \
    --offset '93' \
    --startDate 'GGdMSWYSebiQtSJV' \
    > test.out 2>&1
eval_tap $? 430 'PublicUserEntitlementHistory' test.out

#- 431 PublicExistsAnyUserActiveEntitlement
samples/cli/sample-apps Platform publicExistsAnyUserActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'jvekMpgtIYSYE5tN' \
    --appIds '["VhSCgKZUDZT61NFb", "0FBJo0GZrAN6gIX1", "SXULTI2Te5UNdOBA"]' \
    --itemIds '["pTixoaiuVBtz1kB2", "0ANGqbBwTckm8c1R", "Brr0qQbFwubTIhag"]' \
    --skus '["Xe209G03DHvoccH6", "h1yMZhsjE7VHEgrq", "gIPRxVTkzgZFZ8uf"]' \
    > test.out 2>&1
eval_tap $? 431 'PublicExistsAnyUserActiveEntitlement' test.out

#- 432 PublicGetUserAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform publicGetUserAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --userId '2PrtJsSmPoPR8JOX' \
    --appId '6MwRjTJqh5SRPTHH' \
    > test.out 2>&1
eval_tap $? 432 'PublicGetUserAppEntitlementOwnershipByAppId' test.out

#- 433 PublicGetUserEntitlementOwnershipByItemId
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'raYJ8K3KWyZyivjd' \
    --entitlementClazz 'LOOTBOX' \
    --itemId 'VyeuoYE85C1Vr0Ui' \
    > test.out 2>&1
eval_tap $? 433 'PublicGetUserEntitlementOwnershipByItemId' test.out

#- 434 PublicGetUserEntitlementOwnershipByItemIds
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'cr2natO7JheCA8lD' \
    --ids '["FnshjeObyum16iH5", "3RMqhrGZbMcwzIcx", "qoAfX4qub7pusX7x"]' \
    > test.out 2>&1
eval_tap $? 434 'PublicGetUserEntitlementOwnershipByItemIds' test.out

#- 435 PublicGetUserEntitlementOwnershipBySku
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --userId 'pNcu62mYZrqDnMGC' \
    --entitlementClazz 'CODE' \
    --sku '5IsafFzDd2Sln4sU' \
    > test.out 2>&1
eval_tap $? 435 'PublicGetUserEntitlementOwnershipBySku' test.out

#- 436 PublicGetUserEntitlement
samples/cli/sample-apps Platform publicGetUserEntitlement \
    --entitlementId 'SxnQgCg0SBHEa0xy' \
    --namespace $AB_NAMESPACE \
    --userId 'MvzYmKQE8PWXhey7' \
    > test.out 2>&1
eval_tap $? 436 'PublicGetUserEntitlement' test.out

#- 437 PublicConsumeUserEntitlement
samples/cli/sample-apps Platform publicConsumeUserEntitlement \
    --entitlementId '51dJJ3eOSwMeoHw1' \
    --namespace $AB_NAMESPACE \
    --userId 'SVpI56h142LsQGsV' \
    --body '{"metadata": {"operationSource": "INVENTORY"}, "options": ["KSLdN7zTpwVD2y5O", "tSt8i4OOjyflvOOX", "0pAjvLiBZHYKKpvh"], "requestId": "WUIE3oERs2gTq3Db", "useCount": 54}' \
    > test.out 2>&1
eval_tap $? 437 'PublicConsumeUserEntitlement' test.out

#- 438 PublicSellUserEntitlement
samples/cli/sample-apps Platform publicSellUserEntitlement \
    --entitlementId 'YAHEtNoyg7e9osl0' \
    --namespace $AB_NAMESPACE \
    --userId 'Jw10mtmoQhBRK8xt' \
    --body '{"requestId": "n9FLaoixTEcEWQHg", "useCount": 61}' \
    > test.out 2>&1
eval_tap $? 438 'PublicSellUserEntitlement' test.out

#- 439 PublicSplitUserEntitlement
samples/cli/sample-apps Platform publicSplitUserEntitlement \
    --entitlementId 'xB6UafGLBT3Y87ty' \
    --namespace $AB_NAMESPACE \
    --userId '9an9fRkCZsNoZQs7' \
    --body '{"metadata": {"operationSource": "INVENTORY"}, "useCount": 19}' \
    > test.out 2>&1
eval_tap $? 439 'PublicSplitUserEntitlement' test.out

#- 440 PublicTransferUserEntitlement
samples/cli/sample-apps Platform publicTransferUserEntitlement \
    --entitlementId 'JqeJFNbIjBiamtSj' \
    --namespace $AB_NAMESPACE \
    --userId 'g88d8ATrgMtVBaU6' \
    --body '{"entitlementId": "hsYzyDhvY5elfGNL", "metadata": {"operationSource": "INVENTORY"}, "useCount": 24}' \
    > test.out 2>&1
eval_tap $? 440 'PublicTransferUserEntitlement' test.out

#- 441 PublicRedeemCode
samples/cli/sample-apps Platform publicRedeemCode \
    --namespace $AB_NAMESPACE \
    --userId 'm0fA18gg0XhCL0FH' \
    --body '{"code": "JqZeWQLvqECUfVzE", "language": "YXKI_YIYH", "region": "KPE4P1HtWO6P8tzR"}' \
    > test.out 2>&1
eval_tap $? 441 'PublicRedeemCode' test.out

#- 442 PublicFulfillAppleIAPItem
samples/cli/sample-apps Platform publicFulfillAppleIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'Q2Ff8ttA48qMxXGe' \
    --body '{"excludeOldTransactions": true, "language": "swDe_xi", "productId": "MJzwqY7PUzNgb1Dg", "receiptData": "PDspzAK0isMGgqJZ", "region": "CSGeJk6a1zWmLwmw", "transactionId": "or8FFFAXtV4owbnE"}' \
    > test.out 2>&1
eval_tap $? 442 'PublicFulfillAppleIAPItem' test.out

#- 443 SyncEpicGamesInventory
samples/cli/sample-apps Platform syncEpicGamesInventory \
    --namespace $AB_NAMESPACE \
    --userId 'Xkb6DvnezC271BKU' \
    --body '{"epicGamesJwtToken": "uYDSCJ3mawMI3cJd"}' \
    > test.out 2>&1
eval_tap $? 443 'SyncEpicGamesInventory' test.out

#- 444 PublicFulfillGoogleIAPItem
samples/cli/sample-apps Platform publicFulfillGoogleIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'UFEoLBSVgcYgZplC' \
    --body '{"autoAck": false, "autoConsume": false, "language": "GlH-ajpj_Nt", "orderId": "A6YSPcaI3toArRkw", "packageName": "gUPoscjPPWkYJqeK", "productId": "unGQ0I0uB6foKS9r", "purchaseTime": 16, "purchaseToken": "g2kVkxyOOzu8ZGwK", "region": "LgdzPoyDrM5JD6Un", "subscriptionPurchase": false}' \
    > test.out 2>&1
eval_tap $? 444 'PublicFulfillGoogleIAPItem' test.out

#- 445 SyncOculusConsumableEntitlements
samples/cli/sample-apps Platform syncOculusConsumableEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'ObGXMqWjY21R7oFk' \
    > test.out 2>&1
eval_tap $? 445 'SyncOculusConsumableEntitlements' test.out

#- 446 PublicReconcilePlayStationStore
samples/cli/sample-apps Platform publicReconcilePlayStationStore \
    --namespace $AB_NAMESPACE \
    --userId 'GIoBmfmgNuMHKBPx' \
    --body '{"currencyCode": "5vtkxqYSReuyvvbO", "price": 0.7326056299430903, "productId": "U0JnoyLkkp7pC4CU", "serviceLabel": 68}' \
    > test.out 2>&1
eval_tap $? 446 'PublicReconcilePlayStationStore' test.out

#- 447 PublicReconcilePlayStationStoreWithMultipleServiceLabels
samples/cli/sample-apps Platform publicReconcilePlayStationStoreWithMultipleServiceLabels \
    --namespace $AB_NAMESPACE \
    --userId 'd5LdfFOF00pcsXOr' \
    --body '{"currencyCode": "ruKELDtvNKjvG0DM", "price": 0.6407253794867016, "productId": "1tVBjjfZzbuEMhNX", "serviceLabels": [25, 3, 17]}' \
    > test.out 2>&1
eval_tap $? 447 'PublicReconcilePlayStationStoreWithMultipleServiceLabels' test.out

#- 448 SyncSteamInventory
samples/cli/sample-apps Platform syncSteamInventory \
    --namespace $AB_NAMESPACE \
    --userId 'mIDd9n9jrOrjWJ5E' \
    --body '{"appId": "EqckrkCZCX36hMf3", "currencyCode": "R9GOAJU4J3gPgeTU", "language": "AmJ_RFyu-201", "price": 0.912467133059154, "productId": "skT3R1pSuoYG9tS3", "region": "R2PBEgeziDyqQBSY", "steamId": "Vcm8GlQgGwETowNl"}' \
    > test.out 2>&1
eval_tap $? 448 'SyncSteamInventory' test.out

#- 449 PublicQueryUserThirdPartySubscription
samples/cli/sample-apps Platform publicQueryUserThirdPartySubscription \
    --namespace $AB_NAMESPACE \
    --platform 'EPICGAMES' \
    --userId 'C5gi1tfHpgyblQtC' \
    --activeOnly 'false' \
    --groupId '36fOu9L9aJAJ8Vj1' \
    --limit '17' \
    --offset '6' \
    --productId 'mUGgax2EPhv3Dpel' \
    > test.out 2>&1
eval_tap $? 449 'PublicQueryUserThirdPartySubscription' test.out

#- 450 SyncTwitchDropsEntitlement1
samples/cli/sample-apps Platform syncTwitchDropsEntitlement1 \
    --namespace $AB_NAMESPACE \
    --userId 'x1TA4BhHUlC7k4cV' \
    --body '{"gameId": "SgOFUd9989ywO616", "language": "lq", "region": "VtDdRfzxj70DBBpp"}' \
    > test.out 2>&1
eval_tap $? 450 'SyncTwitchDropsEntitlement1' test.out

#- 451 SyncXboxInventory
samples/cli/sample-apps Platform syncXboxInventory \
    --namespace $AB_NAMESPACE \
    --userId 'Lk5VU3RGBCjcDbHn' \
    --body '{"currencyCode": "PlptQFf3qf7VT6qL", "price": 0.3232603272458825, "productId": "XZValPBvOqNgdTDt", "xstsToken": "hLuQuV5y7lic1v1C"}' \
    > test.out 2>&1
eval_tap $? 451 'SyncXboxInventory' test.out

#- 452 PublicQueryUserOrders
samples/cli/sample-apps Platform publicQueryUserOrders \
    --namespace $AB_NAMESPACE \
    --userId 'lBe14Y4wEIMUY0CD' \
    --discounted 'true' \
    --itemId 'ArvvLp9m9UMgIWzn' \
    --limit '8' \
    --offset '47' \
    --status 'CHARGEBACK_REVERSED' \
    > test.out 2>&1
eval_tap $? 452 'PublicQueryUserOrders' test.out

#- 453 PublicCreateUserOrder
samples/cli/sample-apps Platform publicCreateUserOrder \
    --namespace $AB_NAMESPACE \
    --userId 'BEOA6IuTwscBlPMS' \
    --body '{"currencyCode": "r6jMF43GdUAPq7KV", "discountCodes": ["Fq4B52glyxcsTMjn", "I08vkP5ZIzgJInd6", "bllqC0f9e3jFj1NV"], "discountedPrice": 84, "ext": {"9oSd5iuB0r6SSAIJ": {}, "PkwTc0sYSG6YR65H": {}, "1NW5rPEI2QEkW2BU": {}}, "itemId": "3zRATSxnnaFFvMW2", "language": "SgA_RkBV-Ed", "price": 54, "quantity": 7, "region": "l9CJL8BaONEigsbj", "returnUrl": "cxegFJKMvRMo7GB5", "sectionId": "FFN1G2x1hMZq9QiM"}' \
    > test.out 2>&1
eval_tap $? 453 'PublicCreateUserOrder' test.out

#- 454 PublicPreviewOrderPrice
samples/cli/sample-apps Platform publicPreviewOrderPrice \
    --namespace $AB_NAMESPACE \
    --userId 'R5F1W6Q1OUfD3w8M' \
    --body '{"currencyCode": "nwB7wEBYPfX53Nak", "discountCodes": ["5XGLhdq8cgwi2PhF", "dc0XYjSmbBLIYdm8", "TpHerq9uW9bW34Tr"], "discountedPrice": 35, "itemId": "bezUmJARAZlb8oXJ", "price": 62, "quantity": 27}' \
    > test.out 2>&1
eval_tap $? 454 'PublicPreviewOrderPrice' test.out

#- 455 PublicGetUserOrder
samples/cli/sample-apps Platform publicGetUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'Hj1Hn5suE86KZdTk' \
    --userId 'd6ewwQPS6Oaofiwb' \
    > test.out 2>&1
eval_tap $? 455 'PublicGetUserOrder' test.out

#- 456 PublicCancelUserOrder
samples/cli/sample-apps Platform publicCancelUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'pvKbwWz4U7k86zka' \
    --userId 'IBiPKyMs6l7CVNDI' \
    > test.out 2>&1
eval_tap $? 456 'PublicCancelUserOrder' test.out

#- 457 PublicGetUserOrderHistories
samples/cli/sample-apps Platform publicGetUserOrderHistories \
    --namespace $AB_NAMESPACE \
    --orderNo 'sL6xYQmvGsc3fhva' \
    --userId 'L7GtYWmcxO9ySLwH' \
    > test.out 2>&1
eval_tap $? 457 'PublicGetUserOrderHistories' test.out

#- 458 PublicDownloadUserOrderReceipt
samples/cli/sample-apps Platform publicDownloadUserOrderReceipt \
    --namespace $AB_NAMESPACE \
    --orderNo 'FuIuCjY6ewSRMI49' \
    --userId 'J3UoKMpWEYkUHDA0' \
    > test.out 2>&1
eval_tap $? 458 'PublicDownloadUserOrderReceipt' test.out

#- 459 PublicGetPaymentAccounts
samples/cli/sample-apps Platform publicGetPaymentAccounts \
    --namespace $AB_NAMESPACE \
    --userId 'TIh9iWD3aTAPNwN2' \
    > test.out 2>&1
eval_tap $? 459 'PublicGetPaymentAccounts' test.out

#- 460 PublicDeletePaymentAccount
samples/cli/sample-apps Platform publicDeletePaymentAccount \
    --id 'PqqvncDDwxstB2eG' \
    --namespace $AB_NAMESPACE \
    --type 'paypal' \
    --userId 'V2oxVctSJiSgv1xF' \
    > test.out 2>&1
eval_tap $? 460 'PublicDeletePaymentAccount' test.out

#- 461 PublicListActiveSections
samples/cli/sample-apps Platform publicListActiveSections \
    --namespace $AB_NAMESPACE \
    --userId 'tfeuE6cHd0bdh1TA' \
    --autoCalcEstimatedPrice 'true' \
    --language 'Kgid0ebhC3qSqGm7' \
    --region 'leF5eFxikVtSPRur' \
    --storeId '8YoZr8mDBqWWbP1D' \
    --viewId '4ELcSwuQpM5SoVbe' \
    > test.out 2>&1
eval_tap $? 461 'PublicListActiveSections' test.out

#- 462 PublicQueryUserSubscriptions
samples/cli/sample-apps Platform publicQueryUserSubscriptions \
    --namespace $AB_NAMESPACE \
    --userId 'I071Tw4UFBwHgpm1' \
    --chargeStatus 'CHARGE_FAILED' \
    --itemId 'e8ThRKTXFOUuJOTK' \
    --limit '42' \
    --offset '77' \
    --sku 'JBOu7pJZmdBg2n8Q' \
    --status 'ACTIVE' \
    --subscribedBy 'USER' \
    > test.out 2>&1
eval_tap $? 462 'PublicQueryUserSubscriptions' test.out

#- 463 PublicSubscribeSubscription
samples/cli/sample-apps Platform publicSubscribeSubscription \
    --namespace $AB_NAMESPACE \
    --userId 'SV4fRup5m5bcTFio' \
    --body '{"currencyCode": "TQ3PsSoJ9sNKXsSk", "itemId": "hA2xFZSgEqZRvhB9", "language": "ayx-NZgn_876", "region": "oM9VLWcLQ7NAbg7N", "returnUrl": "EZPAcF3VnfmWEZG5", "source": "xaDFhnSfiaHizP1n"}' \
    > test.out 2>&1
eval_tap $? 463 'PublicSubscribeSubscription' test.out

#- 464 PublicCheckUserSubscriptionSubscribableByItemId
samples/cli/sample-apps Platform publicCheckUserSubscriptionSubscribableByItemId \
    --namespace $AB_NAMESPACE \
    --userId '1zCCNngj0pY3BBTe' \
    --itemId 'DdMPwLI7aLC6WTQ8' \
    > test.out 2>&1
eval_tap $? 464 'PublicCheckUserSubscriptionSubscribableByItemId' test.out

#- 465 PublicGetUserSubscription
samples/cli/sample-apps Platform publicGetUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'ecLQrGJIF4iZ0Z5c' \
    --userId 'D2LUMVnRxFt0yq7L' \
    > test.out 2>&1
eval_tap $? 465 'PublicGetUserSubscription' test.out

#- 466 PublicChangeSubscriptionBillingAccount
samples/cli/sample-apps Platform publicChangeSubscriptionBillingAccount \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'uwGB8o2FRJX0iVB2' \
    --userId 'VyUNVY4L99S5z5Eu' \
    > test.out 2>&1
eval_tap $? 466 'PublicChangeSubscriptionBillingAccount' test.out

#- 467 PublicCancelSubscription
samples/cli/sample-apps Platform publicCancelSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'AYImZ934E6TBDfg0' \
    --userId 'rwAZQdP27vAqQqYj' \
    --body '{"immediate": true, "reason": "FOGgUeb46t1hgZSm"}' \
    > test.out 2>&1
eval_tap $? 467 'PublicCancelSubscription' test.out

#- 468 PublicGetUserSubscriptionBillingHistories
samples/cli/sample-apps Platform publicGetUserSubscriptionBillingHistories \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'CZsJPmtFIc1qBjlh' \
    --userId 'gZUGnwzc5TWEIA5l' \
    --excludeFree 'true' \
    --limit '53' \
    --offset '75' \
    > test.out 2>&1
eval_tap $? 468 'PublicGetUserSubscriptionBillingHistories' test.out

#- 469 PublicListViews
samples/cli/sample-apps Platform publicListViews \
    --namespace $AB_NAMESPACE \
    --userId 'XrazcnCi7kIZSWa4' \
    --language 'lLjhW9MzmP9D2BJN' \
    --storeId '6wEjHKym7IHXGv4P' \
    > test.out 2>&1
eval_tap $? 469 'PublicListViews' test.out

#- 470 PublicGetWallet
samples/cli/sample-apps Platform publicGetWallet \
    --currencyCode 'dzVXbr03E7dJzowB' \
    --namespace $AB_NAMESPACE \
    --userId 'YGpI5CJknsJ5M9N8' \
    > test.out 2>&1
eval_tap $? 470 'PublicGetWallet' test.out

#- 471 PublicListUserWalletTransactions
samples/cli/sample-apps Platform publicListUserWalletTransactions \
    --currencyCode 'kgeBGpz17I24iSNl' \
    --namespace $AB_NAMESPACE \
    --userId '7q3TU0FRFSnNkdGr' \
    --limit '57' \
    --offset '1' \
    > test.out 2>&1
eval_tap $? 471 'PublicListUserWalletTransactions' test.out

#- 472 PublicGetMyDLCContent
samples/cli/sample-apps Platform publicGetMyDLCContent \
    --includeAllNamespaces 'false' \
    --type 'XBOX' \
    > test.out 2>&1
eval_tap $? 472 'PublicGetMyDLCContent' test.out

#- 473 QueryFulfillments
samples/cli/sample-apps Platform queryFulfillments \
    --namespace $AB_NAMESPACE \
    --endTime 'nE87agCHlvGUTz3N' \
    --limit '83' \
    --offset '27' \
    --startTime 'x3xYcUqop9rYlUne' \
    --state 'FULFILLED' \
    --transactionId 'a8oWrVP9hmnr9CiK' \
    --userId 'ioekppTLuF0glLAa' \
    > test.out 2>&1
eval_tap $? 473 'QueryFulfillments' test.out

#- 474 QueryItemsV2
samples/cli/sample-apps Platform queryItemsV2 \
    --namespace $AB_NAMESPACE \
    --appType 'DLC' \
    --availableDate '645jHHFgWahzZucG' \
    --baseAppId 'bY6h3vWKTgrS6n6i' \
    --categoryPath 'SSq07ZHwLr21QxW0' \
    --features '2psEEUrC7SfUq9UN' \
    --includeSubCategoryItem 'true' \
    --itemName 'oPwgueKikPo48tVj' \
    --itemStatus 'ACTIVE' \
    --itemType '["SUBSCRIPTION", "MEDIA", "EXTENSION"]' \
    --limit '33' \
    --offset '86' \
    --region 'GEeYQpD2XVBiUPAA' \
    --sectionExclusive 'false' \
    --sortBy '["name", "createdAt", "createdAt:desc"]' \
    --storeId 'Nvubo4Ztq9wsWLiA' \
    --tags 'lfSaPo54KtXgMRV7' \
    --targetNamespace 'rIluG0HokQ4MXj2O' \
    --withTotal 'false' \
    > test.out 2>&1
eval_tap $? 474 'QueryItemsV2' test.out

#- 475 ImportStore1
samples/cli/sample-apps Platform importStore1 \
    --namespace $AB_NAMESPACE \
    --storeId 'XupjvzsLJsxb6ZpU' \
    --strictMode 'true' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 475 'ImportStore1' test.out

#- 476 ExportStore1
samples/cli/sample-apps Platform exportStore1 \
    --namespace $AB_NAMESPACE \
    --storeId 'ME3Dug7F675hthTg' \
    --body '{"itemIds": ["ngyj39vMYHo0Zxmj", "LhTFYXRsSQAMBkUP", "839iCIyanTD9re6N"]}' \
    > test.out 2>&1
eval_tap $? 476 'ExportStore1' test.out

#- 477 FulfillRewardsV2
samples/cli/sample-apps Platform fulfillRewardsV2 \
    --namespace $AB_NAMESPACE \
    --userId 'D6lpwdQFygNbZT34' \
    --body '{"entitlementCollectionId": "1ElwQLpnB47DBUjO", "entitlementOrigin": "Oculus", "metadata": {"tbl2eNhcu3hVr5Wj": {}, "G1t70V5tH9Iwosnv": {}, "3wim2pIEFyetxu4g": {}}, "origin": "Other", "rewards": [{"currency": {"currencyCode": "d09ZlDGkPMEaIL25", "namespace": "XfV8KkrAmdMP3Bpl"}, "item": {"itemId": "xmobpqGkEQESAxbb", "itemName": "11szweYv7zmg9cVO", "itemSku": "MBgKSULDyrO3knVc", "itemType": "Zqa1hEfJjOBgnN12"}, "quantity": 53, "type": "ITEM"}, {"currency": {"currencyCode": "RHmUxEKji1vvoFIq", "namespace": "w9o2xAhDyjWG2vdt"}, "item": {"itemId": "M51RRQLXLi1YeYh7", "itemName": "wBWjjfsO1gFLXNVj", "itemSku": "af2ntdlnZDOpsaeW", "itemType": "3Js5cJKrWjyKzrVD"}, "quantity": 87, "type": "ITEM"}, {"currency": {"currencyCode": "qj3iGhNBg8RibTHX", "namespace": "YSiWOkzS8CvARqvh"}, "item": {"itemId": "LntQRSxco0aVpQh9", "itemName": "I19sAbzGvmlJHTj1", "itemSku": "h21VyALIezyxHZDR", "itemType": "4bwhDWwcuU4uWw1h"}, "quantity": 61, "type": "ITEM"}], "source": "PROMOTION", "transactionId": "SMXAHhDeZZumdE5i"}' \
    > test.out 2>&1
eval_tap $? 477 'FulfillRewardsV2' test.out

#- 478 FulfillItems
eval_tap 0 478 'FulfillItems # SKIP deprecated' test.out

#- 479 RetryFulfillItems
eval_tap 0 479 'RetryFulfillItems # SKIP deprecated' test.out

#- 480 RevokeItems
eval_tap 0 480 'RevokeItems # SKIP deprecated' test.out

#- 481 V2PublicFulfillAppleIAPItem
samples/cli/sample-apps Platform v2PublicFulfillAppleIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'hfYDeLduOTLFncj5' \
    --body '{"transactionId": "BUNMSafKCUHoaTho"}' \
    > test.out 2>&1
eval_tap $? 481 'V2PublicFulfillAppleIAPItem' test.out

#- 482 FulfillItemsV3
samples/cli/sample-apps Platform fulfillItemsV3 \
    --namespace $AB_NAMESPACE \
    --transactionId 'RMkR69wlTx1g8GMK' \
    --userId 'SyG57mcKRoLhCMlq' \
    --body '{"items": [{"duration": 7, "endDate": "1998-09-09T00:00:00Z", "entitlementCollectionId": "deC2q4zclbmQ5EJ2", "entitlementOrigin": "GooglePlay", "itemId": "pWnQ3zNueH18DJ4G", "itemSku": "ubBT4wE7c2nin51r", "language": "C7Tt4EGVrItlkInf", "metadata": {"jKy8SVP5F1s0laRG": {}, "T3e10j5H7Tuvy38n": {}, "kgcUJxI0s6hOc12x": {}}, "orderNo": "jcP9up1IYugHjPbt", "origin": "Xbox", "quantity": 36, "region": "DlA7il4ZSP12BAzY", "source": "PROMOTION", "startDate": "1976-09-11T00:00:00Z", "storeId": "v4ZlZQSnWL0M7nmj"}, {"duration": 67, "endDate": "1972-11-09T00:00:00Z", "entitlementCollectionId": "oKcN1WFvZlrwjV6T", "entitlementOrigin": "Steam", "itemId": "POfe6XpuvYT9tNXz", "itemSku": "5lE0qx70JFaHap0C", "language": "OKbceXVq1wZ4zANz", "metadata": {"lQGHZ3GuEQNvCPdb": {}, "2mMopPgV9GkEJXBG": {}, "yMVpwrr5MqaQNa0N": {}}, "orderNo": "m6y7P5ZAs2MDys4y", "origin": "Other", "quantity": 30, "region": "0EB7ZC404J7ODTz0", "source": "PROMOTION", "startDate": "1977-08-11T00:00:00Z", "storeId": "AwMZdrk8DkMxv8BX"}, {"duration": 61, "endDate": "1997-07-06T00:00:00Z", "entitlementCollectionId": "3Qy0lO95ZzdJ9FED", "entitlementOrigin": "GooglePlay", "itemId": "F0TTUuM2IlkkfPmn", "itemSku": "FNRqRUeaFCBw7Oqb", "language": "1BELbGwAhPIX8nbN", "metadata": {"aOa7uj95r7R6S362": {}, "1foXMR2W8j7SwaWV": {}, "ZfNsVGstl1uexyuh": {}}, "orderNo": "s17G1ca1xVJPPJbz", "origin": "Steam", "quantity": 42, "region": "pxIsXTJ1XE27Pkpg", "source": "PROMOTION", "startDate": "1985-05-16T00:00:00Z", "storeId": "ssv4gx0zY8QThOV1"}]}' \
    > test.out 2>&1
eval_tap $? 482 'FulfillItemsV3' test.out

#- 483 RetryFulfillItemsV3
samples/cli/sample-apps Platform retryFulfillItemsV3 \
    --namespace $AB_NAMESPACE \
    --transactionId 'a73uO2zxxbG8BX2W' \
    --userId 'PMLoDZ9VIynlFHYe' \
    > test.out 2>&1
eval_tap $? 483 'RetryFulfillItemsV3' test.out

#- 484 RevokeItemsV3
samples/cli/sample-apps Platform revokeItemsV3 \
    --namespace $AB_NAMESPACE \
    --transactionId 'lRNEnEKs2cWcrCP8' \
    --userId 'LZLUud46VFb4WaIM' \
    > test.out 2>&1
eval_tap $? 484 'RevokeItemsV3' test.out


rm -f "tmp.dat"

exit $EXIT_CODE