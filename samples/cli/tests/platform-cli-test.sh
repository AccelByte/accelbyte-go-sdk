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
echo "1..419"

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
    --id 'z2c82xZOjYpTPe9G' \
    > test.out 2>&1
eval_tap $? 3 'GetFulfillmentScript' test.out

#- 4 CreateFulfillmentScript
samples/cli/sample-apps Platform createFulfillmentScript \
    --id 'PetH1RHsW0pXaznW' \
    --body '{"grantDays": "5mayDoNtfABKGFON"}' \
    > test.out 2>&1
eval_tap $? 4 'CreateFulfillmentScript' test.out

#- 5 DeleteFulfillmentScript
samples/cli/sample-apps Platform deleteFulfillmentScript \
    --id 'RlQWl26sFJDxnTcv' \
    > test.out 2>&1
eval_tap $? 5 'DeleteFulfillmentScript' test.out

#- 6 UpdateFulfillmentScript
samples/cli/sample-apps Platform updateFulfillmentScript \
    --id 'ZJwkjOVXxAlSAlcP' \
    --body '{"grantDays": "sNhCgbEG5a1S5R3J"}' \
    > test.out 2>&1
eval_tap $? 6 'UpdateFulfillmentScript' test.out

#- 7 ListItemTypeConfigs
samples/cli/sample-apps Platform listItemTypeConfigs \
    > test.out 2>&1
eval_tap $? 7 'ListItemTypeConfigs' test.out

#- 8 CreateItemTypeConfig
samples/cli/sample-apps Platform createItemTypeConfig \
    --body '{"clazz": "Va7EZrmTno8rvz5j", "dryRun": false, "fulfillmentUrl": "cupx7KI6wVUhbfQ0", "itemType": "SUBSCRIPTION", "purchaseConditionUrl": "f1yzTu02fN3OfsvB"}' \
    > test.out 2>&1
eval_tap $? 8 'CreateItemTypeConfig' test.out

#- 9 SearchItemTypeConfig
samples/cli/sample-apps Platform searchItemTypeConfig \
    --clazz 'S1sa7TC4T8AfazCF' \
    --itemType 'INGAMEITEM' \
    > test.out 2>&1
eval_tap $? 9 'SearchItemTypeConfig' test.out

#- 10 GetItemTypeConfig
samples/cli/sample-apps Platform getItemTypeConfig \
    --id 'SYln3o49FqTjHnfa' \
    > test.out 2>&1
eval_tap $? 10 'GetItemTypeConfig' test.out

#- 11 UpdateItemTypeConfig
samples/cli/sample-apps Platform updateItemTypeConfig \
    --id 'mVabu2hc3M3mmBIl' \
    --body '{"clazz": "OSIDs6TUjiXGXboa", "dryRun": false, "fulfillmentUrl": "s5ll6k8xB7UZWPB6", "purchaseConditionUrl": "aY5y4aOqWaYcz6xg"}' \
    > test.out 2>&1
eval_tap $? 11 'UpdateItemTypeConfig' test.out

#- 12 DeleteItemTypeConfig
samples/cli/sample-apps Platform deleteItemTypeConfig \
    --id 'Gng66k2MuZDAdTiq' \
    > test.out 2>&1
eval_tap $? 12 'DeleteItemTypeConfig' test.out

#- 13 QueryCampaigns
samples/cli/sample-apps Platform queryCampaigns \
    --namespace $AB_NAMESPACE \
    --limit '91' \
    --name 'zHagRqwOrvCSvSxn' \
    --offset '42' \
    --tag 'D937qMNEhMUO5LIv' \
    > test.out 2>&1
eval_tap $? 13 'QueryCampaigns' test.out

#- 14 CreateCampaign
samples/cli/sample-apps Platform createCampaign \
    --namespace $AB_NAMESPACE \
    --body '{"description": "EHeFSyEz6z0PLwVX", "items": [{"extraSubscriptionDays": 86, "itemId": "KtPW9qZ9yXY0QtR6", "itemName": "cER6mlChn67MKPLT", "quantity": 38}, {"extraSubscriptionDays": 31, "itemId": "gPO0cB21XuZPSsXX", "itemName": "pFIyh1Lrc3rA7Vrj", "quantity": 98}, {"extraSubscriptionDays": 54, "itemId": "TYfmscD8UkGiatth", "itemName": "5JZE7K2Yw3yLshC5", "quantity": 51}], "maxRedeemCountPerCampaignPerUser": 42, "maxRedeemCountPerCode": 33, "maxRedeemCountPerCodePerUser": 93, "maxSaleCount": 91, "name": "FERkaxVvqCzCj6ij", "redeemEnd": "1984-11-10T00:00:00Z", "redeemStart": "1978-11-24T00:00:00Z", "redeemType": "ITEM", "status": "ACTIVE", "tags": ["32y4mYRWmN1gBVn6", "w5IHp8fDpNmh5RCw", "IoYpPkCZkWtpflMr"], "type": "REDEMPTION"}' \
    > test.out 2>&1
eval_tap $? 14 'CreateCampaign' test.out

#- 15 GetCampaign
samples/cli/sample-apps Platform getCampaign \
    --campaignId 'tRdHsasD2slY5zXv' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 15 'GetCampaign' test.out

#- 16 UpdateCampaign
samples/cli/sample-apps Platform updateCampaign \
    --campaignId 'i4DDtGDKzahJvJbO' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "HHbpYUE9yx3AvUl4", "items": [{"extraSubscriptionDays": 13, "itemId": "MfjUIKwO1T0KhtNv", "itemName": "pNrkvhFpUEBxZ4Tg", "quantity": 14}, {"extraSubscriptionDays": 74, "itemId": "qR76eplu9N3OUb3A", "itemName": "KZSjtdryMM4iMnjN", "quantity": 88}, {"extraSubscriptionDays": 20, "itemId": "bjkBKWcgWCkcZjsr", "itemName": "LCTTHWeD20C7Y05D", "quantity": 14}], "maxRedeemCountPerCampaignPerUser": 100, "maxRedeemCountPerCode": 97, "maxRedeemCountPerCodePerUser": 37, "maxSaleCount": 36, "name": "sUEovUl9KqsuBX0E", "redeemEnd": "1984-09-21T00:00:00Z", "redeemStart": "1991-02-05T00:00:00Z", "redeemType": "ITEM", "status": "INACTIVE", "tags": ["RTSw3i7lIpPn8qKy", "bLSOO0x72z3VWH8Y", "6rUHYvF4R6AzfqpO"]}' \
    > test.out 2>&1
eval_tap $? 16 'UpdateCampaign' test.out

#- 17 GetCampaignDynamic
samples/cli/sample-apps Platform getCampaignDynamic \
    --campaignId 'adhgVI55sOaXecjk' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'GetCampaignDynamic' test.out

#- 18 GetLootBoxPluginConfig
samples/cli/sample-apps Platform getLootBoxPluginConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'GetLootBoxPluginConfig' test.out

#- 19 UpdateLootBoxPluginConfig
samples/cli/sample-apps Platform updateLootBoxPluginConfig \
    --namespace $AB_NAMESPACE \
    --body '{"appConfig": {"appName": "QvCcUhJjG3hU50vv"}, "customConfig": {"connectionType": "TLS", "grpcServerAddress": "ForBcNQWI5i5CFZ8"}, "extendType": "APP"}' \
    > test.out 2>&1
eval_tap $? 19 'UpdateLootBoxPluginConfig' test.out

#- 20 DeleteLootBoxPluginConfig
samples/cli/sample-apps Platform deleteLootBoxPluginConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 20 'DeleteLootBoxPluginConfig' test.out

#- 21 UplodLootBoxPluginConfigCert
samples/cli/sample-apps Platform uplodLootBoxPluginConfigCert \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 21 'UplodLootBoxPluginConfigCert' test.out

#- 22 GetLootBoxGrpcInfo
samples/cli/sample-apps Platform getLootBoxGrpcInfo \
    --namespace $AB_NAMESPACE \
    --force 'true' \
    > test.out 2>&1
eval_tap $? 22 'GetLootBoxGrpcInfo' test.out

#- 23 GetSectionPluginConfig
samples/cli/sample-apps Platform getSectionPluginConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 23 'GetSectionPluginConfig' test.out

#- 24 UpdateSectionPluginConfig
samples/cli/sample-apps Platform updateSectionPluginConfig \
    --namespace $AB_NAMESPACE \
    --body '{"appConfig": {"appName": "Bq2y4vihnmRG0JFq"}, "customConfig": {"connectionType": "INSECURE", "grpcServerAddress": "pxTd1nKTPyELHQIN"}, "extendType": "CUSTOM"}' \
    > test.out 2>&1
eval_tap $? 24 'UpdateSectionPluginConfig' test.out

#- 25 DeleteSectionPluginConfig
samples/cli/sample-apps Platform deleteSectionPluginConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 25 'DeleteSectionPluginConfig' test.out

#- 26 UploadSectionPluginConfigCert
samples/cli/sample-apps Platform uploadSectionPluginConfigCert \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 26 'UploadSectionPluginConfigCert' test.out

#- 27 GetRootCategories
samples/cli/sample-apps Platform getRootCategories \
    --namespace $AB_NAMESPACE \
    --storeId 'PQDN92dWFvVRnWg5' \
    > test.out 2>&1
eval_tap $? 27 'GetRootCategories' test.out

#- 28 CreateCategory
samples/cli/sample-apps Platform createCategory \
    --namespace $AB_NAMESPACE \
    --storeId 'ValNzdSH7ZAAlqad' \
    --body '{"categoryPath": "UA8zRK6SIQtHAlip", "localizationDisplayNames": {"6Lel1b0fR5IKHiZN": "DdSXD3EFZl7FGGoA", "kXJKPaXjCEoG2Qtk": "sF1cPZqdaVjyGLQs", "MmGUMSWDSrL0V7D3": "8ywmvJfTgRKItzgr"}}' \
    > test.out 2>&1
eval_tap $? 28 'CreateCategory' test.out

#- 29 ListCategoriesBasic
samples/cli/sample-apps Platform listCategoriesBasic \
    --namespace $AB_NAMESPACE \
    --storeId 'YiUF9OO4Hu9out6k' \
    > test.out 2>&1
eval_tap $? 29 'ListCategoriesBasic' test.out

#- 30 GetCategory
samples/cli/sample-apps Platform getCategory \
    --categoryPath 'HmnSu2XPIENwlxzR' \
    --namespace $AB_NAMESPACE \
    --storeId '1vWevhr4z4GbovWt' \
    > test.out 2>&1
eval_tap $? 30 'GetCategory' test.out

#- 31 UpdateCategory
samples/cli/sample-apps Platform updateCategory \
    --categoryPath 'Mr7ZPbr9Ak7awvNJ' \
    --namespace $AB_NAMESPACE \
    --storeId 'uehhLA3qSvK92vda' \
    --body '{"localizationDisplayNames": {"D27HbjdJKHPQglKu": "MQ3BJEUjOMNWrsDb", "zNyWqzUnfpPnQctm": "XBbY3L4HvAHRiBTd", "21u8X9bH9dSsCXe6": "q0yAFSDqAVqsJESy"}}' \
    > test.out 2>&1
eval_tap $? 31 'UpdateCategory' test.out

#- 32 DeleteCategory
samples/cli/sample-apps Platform deleteCategory \
    --categoryPath '7erNg5mASOIA833G' \
    --namespace $AB_NAMESPACE \
    --storeId 'BC3JAfJvclMdPOJ4' \
    > test.out 2>&1
eval_tap $? 32 'DeleteCategory' test.out

#- 33 GetChildCategories
samples/cli/sample-apps Platform getChildCategories \
    --categoryPath 'FdyczeTgQ2zkr5hf' \
    --namespace $AB_NAMESPACE \
    --storeId 'tKcpshObxXCYvORh' \
    > test.out 2>&1
eval_tap $? 33 'GetChildCategories' test.out

#- 34 GetDescendantCategories
samples/cli/sample-apps Platform getDescendantCategories \
    --categoryPath 'Sd0upG61deBvRqfM' \
    --namespace $AB_NAMESPACE \
    --storeId 'N17RttOCmoVOK5OF' \
    > test.out 2>&1
eval_tap $? 34 'GetDescendantCategories' test.out

#- 35 QueryCodes
samples/cli/sample-apps Platform queryCodes \
    --campaignId 'pXMWniP2Zjv8tV4L' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --batchNo '55' \
    --code 'X9JXtd219xXzaMrv' \
    --limit '19' \
    --offset '28' \
    > test.out 2>&1
eval_tap $? 35 'QueryCodes' test.out

#- 36 CreateCodes
samples/cli/sample-apps Platform createCodes \
    --campaignId 'Ig68plOGpVA3A1Vk' \
    --namespace $AB_NAMESPACE \
    --body '{"quantity": 15}' \
    > test.out 2>&1
eval_tap $? 36 'CreateCodes' test.out

#- 37 Download
samples/cli/sample-apps Platform download \
    --campaignId 'b9GyMtltLiflHVkN' \
    --namespace $AB_NAMESPACE \
    --batchNo '90' \
    > test.out 2>&1
eval_tap $? 37 'Download' test.out

#- 38 BulkDisableCodes
samples/cli/sample-apps Platform bulkDisableCodes \
    --campaignId 'En68tnpsBxkpZRZs' \
    --namespace $AB_NAMESPACE \
    --batchNo '39' \
    > test.out 2>&1
eval_tap $? 38 'BulkDisableCodes' test.out

#- 39 BulkEnableCodes
samples/cli/sample-apps Platform bulkEnableCodes \
    --campaignId '6id0YcKTQagVKIk3' \
    --namespace $AB_NAMESPACE \
    --batchNo '30' \
    > test.out 2>&1
eval_tap $? 39 'BulkEnableCodes' test.out

#- 40 QueryRedeemHistory
samples/cli/sample-apps Platform queryRedeemHistory \
    --campaignId 'LlvCkKoUnbiI4MtL' \
    --namespace $AB_NAMESPACE \
    --code 't6SZTN1Nl20Pibsv' \
    --limit '58' \
    --offset '81' \
    --userId 'Qa4T9C7snfouXUJZ' \
    > test.out 2>&1
eval_tap $? 40 'QueryRedeemHistory' test.out

#- 41 GetCode
samples/cli/sample-apps Platform getCode \
    --code 'MsuE84RVfW5yPVhG' \
    --namespace $AB_NAMESPACE \
    --redeemable 'false' \
    > test.out 2>&1
eval_tap $? 41 'GetCode' test.out

#- 42 DisableCode
samples/cli/sample-apps Platform disableCode \
    --code 'uje1faKL08I9Pivq' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 42 'DisableCode' test.out

#- 43 EnableCode
samples/cli/sample-apps Platform enableCode \
    --code '9pAY3O6yvYJtsq9L' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 43 'EnableCode' test.out

#- 44 GetServicePluginConfig
eval_tap 0 44 'GetServicePluginConfig # SKIP deprecated' test.out

#- 45 UpdateServicePluginConfig
eval_tap 0 45 'UpdateServicePluginConfig # SKIP deprecated' test.out

#- 46 DeleteServicePluginConfig
eval_tap 0 46 'DeleteServicePluginConfig # SKIP deprecated' test.out

#- 47 ListCurrencies
samples/cli/sample-apps Platform listCurrencies \
    --namespace $AB_NAMESPACE \
    --currencyType 'REAL' \
    > test.out 2>&1
eval_tap $? 47 'ListCurrencies' test.out

#- 48 CreateCurrency
samples/cli/sample-apps Platform createCurrency \
    --namespace $AB_NAMESPACE \
    --body '{"currencyCode": "maOGjD0B5voXWwjb", "currencySymbol": "SbuQE3fXQvqBujeI", "currencyType": "VIRTUAL", "decimals": 25, "localizationDescriptions": {"bVJEUFcYqVsVPLE3": "MfXU7Oj8v5L1Qook", "F3QLPEDdXJEvSCM0": "ElHiSnuPwrl2Ujd0", "ImqZ7CNeKqrZHh9K": "0EuIQ5ft7hbbd1Vj"}}' \
    > test.out 2>&1
eval_tap $? 48 'CreateCurrency' test.out

#- 49 UpdateCurrency
samples/cli/sample-apps Platform updateCurrency \
    --currencyCode '2kzSWZBHqFhT4sCi' \
    --namespace $AB_NAMESPACE \
    --body '{"localizationDescriptions": {"Rw4TLGuauXO4THM3": "Hga1wfZrp8J9iQGa", "3zmHSHXZrnAlyztS": "W8W3dHwjV98Kl69B", "IE6UdPVqSesfhuIH": "HE5vBJR6DNQhcSVj"}}' \
    > test.out 2>&1
eval_tap $? 49 'UpdateCurrency' test.out

#- 50 DeleteCurrency
samples/cli/sample-apps Platform deleteCurrency \
    --currencyCode 'gz5vccZCX2e1jwHw' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 50 'DeleteCurrency' test.out

#- 51 GetCurrencyConfig
samples/cli/sample-apps Platform getCurrencyConfig \
    --currencyCode 'spS6ro3CdhidUk23' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 51 'GetCurrencyConfig' test.out

#- 52 GetCurrencySummary
samples/cli/sample-apps Platform getCurrencySummary \
    --currencyCode 'B3LYy4CYjwZLv9fa' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 52 'GetCurrencySummary' test.out

#- 53 GetDLCItemConfig
samples/cli/sample-apps Platform getDLCItemConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 53 'GetDLCItemConfig' test.out

#- 54 UpdateDLCItemConfig
samples/cli/sample-apps Platform updateDLCItemConfig \
    --namespace $AB_NAMESPACE \
    --body '{"data": [{"id": "ioJ9D3kl0DEoqFFQ", "rewards": [{"currency": {"currencyCode": "jEV89eyvJRRbWKDj", "namespace": "QkjbXPsnqbX1eCzS"}, "item": {"itemId": "w8vn8jZUIddxIsah", "itemSku": "3KsbjrWYndOJpyeb", "itemType": "GWDi1VzwGhDqre5k"}, "quantity": 0, "type": "ITEM"}, {"currency": {"currencyCode": "1EB097qA1j8aPkMV", "namespace": "WcvRV6fHlJtwSkh2"}, "item": {"itemId": "GUPCvSaHI9uvHbxq", "itemSku": "M6zpHkJxcZrPpZVN", "itemType": "Dhl3LQCnXI8Zsl1L"}, "quantity": 73, "type": "ITEM"}, {"currency": {"currencyCode": "P3mdJapezNHvCGuY", "namespace": "egSqgBBUabCXxeAz"}, "item": {"itemId": "4CYvr96StQG9ZGs4", "itemSku": "SrnuxpiktSHf4S47", "itemType": "ztVp8K13AFh6Zads"}, "quantity": 36, "type": "ITEM"}]}, {"id": "0i41fFytNSYzZ6yu", "rewards": [{"currency": {"currencyCode": "Chau0Mz9iDUtH8xn", "namespace": "Dwqgi1aI43VAI3PD"}, "item": {"itemId": "xOA1fwnpNcYtF34p", "itemSku": "72pdQQEoQnGtbikE", "itemType": "89V3h5fKzD8OLP1k"}, "quantity": 58, "type": "CURRENCY"}, {"currency": {"currencyCode": "7Vjbt0s3cb0Q3uCw", "namespace": "20YYImOQRUzbX5cK"}, "item": {"itemId": "6bftcid1ow0ukEkY", "itemSku": "7tdP8pAJyeyTPVSP", "itemType": "14sO4s1Xi0dDNFWC"}, "quantity": 83, "type": "ITEM"}, {"currency": {"currencyCode": "5J8phA18dzE8yqhj", "namespace": "z6XdqZgN1aoC2Gyj"}, "item": {"itemId": "W1VF1808uiIPplsb", "itemSku": "iMFNHHL5RjiLEA14", "itemType": "RFvEYrNXtTaAZyje"}, "quantity": 17, "type": "CURRENCY"}]}, {"id": "37PhS5Bmq09g1tvN", "rewards": [{"currency": {"currencyCode": "U5NjU3Mz8QXx2lqV", "namespace": "GAf7zP97owVdtoWT"}, "item": {"itemId": "ohKeidrPevTZjwOC", "itemSku": "Pava4NdfJdB0xdZR", "itemType": "H8gtFNN38iUcI1GT"}, "quantity": 57, "type": "CURRENCY"}, {"currency": {"currencyCode": "Ccuu6HOSpvm2csVG", "namespace": "Ka7bDczh41P99Gm6"}, "item": {"itemId": "TO7OvSGA79DID2Ya", "itemSku": "S63tlb1WYUf9u270", "itemType": "FiYgwqKSaKINSDnK"}, "quantity": 59, "type": "CURRENCY"}, {"currency": {"currencyCode": "CBUOT6l1svgo184v", "namespace": "GnggPS3wx7DHsFbC"}, "item": {"itemId": "eidPCdUObw8v0FoU", "itemSku": "3e0dcKVTG1IaUENP", "itemType": "Qi6JwRFMuig8oh2F"}, "quantity": 35, "type": "ITEM"}]}]}' \
    > test.out 2>&1
eval_tap $? 54 'UpdateDLCItemConfig' test.out

#- 55 DeleteDLCItemConfig
samples/cli/sample-apps Platform deleteDLCItemConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 55 'DeleteDLCItemConfig' test.out

#- 56 GetPlatformDLCConfig
samples/cli/sample-apps Platform getPlatformDLCConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 56 'GetPlatformDLCConfig' test.out

#- 57 UpdatePlatformDLCConfig
samples/cli/sample-apps Platform updatePlatformDLCConfig \
    --namespace $AB_NAMESPACE \
    --body '{"data": [{"platform": "OCULUS", "platformDlcIdMap": {"jxh884hxkSQbxscv": "J4NkWkj23h4xrgPE", "1PnFpeVq7cxMbQpd": "7eYgV87KGmNpJhZE", "9pfQhnCT8OSSKe9g": "BqTnitXI7AVl60pV"}}, {"platform": "STEAM", "platformDlcIdMap": {"fjkS6BtjBtrA1tWW": "IgB9r7CSCs0xcpsd", "jwK2G4gWLnxy8uIE": "gRelQgRlfgnULL5g", "Zjb2y0egZ7WalmPT": "OyVt8JWgDGwcYLMp"}}, {"platform": "PSN", "platformDlcIdMap": {"c5BuFTJ1uc1EHY0S": "6AwvtJSWNgttxlJZ", "FUAXcy2fkndH9GMP": "ZY88dDEXXcRxV0lZ", "3LBPD51p1VXm6g4u": "sc639HuZH54zKJb8"}}]}' \
    > test.out 2>&1
eval_tap $? 57 'UpdatePlatformDLCConfig' test.out

#- 58 DeletePlatformDLCConfig
samples/cli/sample-apps Platform deletePlatformDLCConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 58 'DeletePlatformDLCConfig' test.out

#- 59 QueryEntitlements
samples/cli/sample-apps Platform queryEntitlements \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --appType 'DLC' \
    --entitlementClazz 'ENTITLEMENT' \
    --entitlementName '2VCGnFYYsV5OJtvd' \
    --itemId '["eOW9o09r4q68TiMQ", "lFZqwdQr2PAlrGBR", "7cIERec4rWTmSCQu"]' \
    --limit '53' \
    --offset '79' \
    --userId 'UXeK2luc9z312uv5' \
    > test.out 2>&1
eval_tap $? 59 'QueryEntitlements' test.out

#- 60 QueryEntitlements1
samples/cli/sample-apps Platform queryEntitlements1 \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --itemIds '["VKxQmlMOWU1xa4Yp", "DhiDYyldYwQU176a", "uAYtF3QRDgs5u4cu"]' \
    --limit '73' \
    --offset '9' \
    > test.out 2>&1
eval_tap $? 60 'QueryEntitlements1' test.out

#- 61 GrantEntitlements
samples/cli/sample-apps Platform grantEntitlements \
    --namespace $AB_NAMESPACE \
    --body '{"entitlementGrantList": [{"endDate": "1999-08-21T00:00:00Z", "grantedCode": "NouOlPZbFuVEoxN1", "itemId": "DdUhvrr5UVZIMfEJ", "itemNamespace": "mxrOqzaOkdgvoNZc", "language": "up", "quantity": 64, "region": "UiOpuhJJNGRQcSz8", "source": "REWARD", "startDate": "1996-11-09T00:00:00Z", "storeId": "ZNVKdTtql64bMnbB"}, {"endDate": "1992-08-27T00:00:00Z", "grantedCode": "AKIhiZryox6yznoo", "itemId": "yQTVFDl5TP6Lhmue", "itemNamespace": "roEZ67n8FdAXd6ih", "language": "Ph", "quantity": 90, "region": "LN8F4OOdF03cXSH4", "source": "OTHER", "startDate": "1979-12-06T00:00:00Z", "storeId": "9Uom4SZr7Dsq86wc"}, {"endDate": "1986-12-26T00:00:00Z", "grantedCode": "ZL5tW8tEKQi3aWzf", "itemId": "r26bGa6akmI7WgpW", "itemNamespace": "WrpuQ7w3rh3nERPE", "language": "MRGT-tjUw_339", "quantity": 10, "region": "jKQiTwOpe3oovHi3", "source": "OTHER", "startDate": "1986-07-21T00:00:00Z", "storeId": "uafhIjHvo4YWas04"}], "userIds": ["NmkFCWcqJa4RIZIr", "YOxTdqbgBtqadlCw", "gtNgk90dD9BAm42N"]}' \
    > test.out 2>&1
eval_tap $? 61 'GrantEntitlements' test.out

#- 62 RevokeEntitlements
samples/cli/sample-apps Platform revokeEntitlements \
    --namespace $AB_NAMESPACE \
    --body '["FOhDoAesMCV2O96M", "41fWk2fH93lPi08V", "iK76OTwVeJMz8gYl"]' \
    > test.out 2>&1
eval_tap $? 62 'RevokeEntitlements' test.out

#- 63 GetEntitlement
samples/cli/sample-apps Platform getEntitlement \
    --entitlementId 'WJ1Owx2y8pAP4vHq' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 63 'GetEntitlement' test.out

#- 64 QueryFulfillmentHistories
samples/cli/sample-apps Platform queryFulfillmentHistories \
    --namespace $AB_NAMESPACE \
    --limit '1' \
    --offset '6' \
    --status 'SUCCESS' \
    --userId 'hgg1aLeHCYaHstoy' \
    > test.out 2>&1
eval_tap $? 64 'QueryFulfillmentHistories' test.out

#- 65 QueryIAPClawbackHistory
samples/cli/sample-apps Platform queryIAPClawbackHistory \
    --namespace $AB_NAMESPACE \
    --endTime 'UyCrfCnY0Zq27lT1' \
    --eventType 'CHARGEBACK_REVERSED' \
    --externalOrderId 'qeA4WwNOyEklWh5n' \
    --limit '57' \
    --offset '78' \
    --startTime 'OW8qetes1AnxA4uv' \
    --status 'INIT' \
    --userId 'L6ciqDYK5PVXSfUK' \
    > test.out 2>&1
eval_tap $? 65 'QueryIAPClawbackHistory' test.out

#- 66 MockPlayStationStreamEvent
samples/cli/sample-apps Platform mockPlayStationStreamEvent \
    --namespace $AB_NAMESPACE \
    --body '{"body": {"account": "VeyKzksOwpud1leV", "additionalData": {"entitlement": [{"clientTransaction": [{"amountConsumed": 20, "clientTransactionId": "HkAD6oPlLnhBAftZ"}, {"amountConsumed": 97, "clientTransactionId": "ftRFoKQEDCPcL9qQ"}, {"amountConsumed": 36, "clientTransactionId": "fE2TejMmpct4Ldvq"}], "entitlementId": "1fRPleKeGqlq8cJj", "usageCount": 14}, {"clientTransaction": [{"amountConsumed": 33, "clientTransactionId": "TrMwETERftSAAG0h"}, {"amountConsumed": 67, "clientTransactionId": "AAhhrmOAOdpdRKB1"}, {"amountConsumed": 95, "clientTransactionId": "N6Ybvc18Y1IJOkbi"}], "entitlementId": "qJPXb0lpAAlLeofq", "usageCount": 27}, {"clientTransaction": [{"amountConsumed": 10, "clientTransactionId": "THZugtxVBNiJD6hC"}, {"amountConsumed": 35, "clientTransactionId": "ZCzeU80ncPYCtYqQ"}, {"amountConsumed": 5, "clientTransactionId": "Y8x4sdYQHqrRHOyv"}], "entitlementId": "Rkv90WtEtOGyBlB6", "usageCount": 59}], "purpose": "iotxdwF7qhKFYJUp"}, "originalTitleName": "5xPoyreCXgKl1zIS", "paymentProductSKU": "hyjDVprKNk7fB4TU", "purchaseDate": "U3PAnivStpJFYvlp", "sourceOrderItemId": "q9jzouR0g3Qh2Cfa", "titleName": "OqYVMHF4lq9abfla"}, "eventDomain": "KOg0nXR7lnlvWlMx", "eventSource": "MlrFwHIDXzgnpCkg", "eventType": "SjW5dbIWoUQR05Fn", "eventVersion": 54, "id": "vpC9LyzApSIoRxsX", "timestamp": "46TGldplELFl8U1o"}' \
    > test.out 2>&1
eval_tap $? 66 'MockPlayStationStreamEvent' test.out

#- 67 GetAppleIAPConfig
samples/cli/sample-apps Platform getAppleIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 67 'GetAppleIAPConfig' test.out

#- 68 UpdateAppleIAPConfig
samples/cli/sample-apps Platform updateAppleIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"bundleId": "AduvnI1sRjQSwYOJ", "password": "XdkzrxWmJBk3FKDp"}' \
    > test.out 2>&1
eval_tap $? 68 'UpdateAppleIAPConfig' test.out

#- 69 DeleteAppleIAPConfig
samples/cli/sample-apps Platform deleteAppleIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 69 'DeleteAppleIAPConfig' test.out

#- 70 GetEpicGamesIAPConfig
samples/cli/sample-apps Platform getEpicGamesIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 70 'GetEpicGamesIAPConfig' test.out

#- 71 UpdateEpicGamesIAPConfig
samples/cli/sample-apps Platform updateEpicGamesIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"sandboxId": "ww8L0GTnZ83tZq7F"}' \
    > test.out 2>&1
eval_tap $? 71 'UpdateEpicGamesIAPConfig' test.out

#- 72 DeleteEpicGamesIAPConfig
samples/cli/sample-apps Platform deleteEpicGamesIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 72 'DeleteEpicGamesIAPConfig' test.out

#- 73 GetGoogleIAPConfig
samples/cli/sample-apps Platform getGoogleIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 73 'GetGoogleIAPConfig' test.out

#- 74 UpdateGoogleIAPConfig
samples/cli/sample-apps Platform updateGoogleIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"applicationName": "9o31wfsk3ZSbjZJI", "serviceAccountId": "rjEw1ZyC01WV7QTz"}' \
    > test.out 2>&1
eval_tap $? 74 'UpdateGoogleIAPConfig' test.out

#- 75 DeleteGoogleIAPConfig
samples/cli/sample-apps Platform deleteGoogleIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 75 'DeleteGoogleIAPConfig' test.out

#- 76 UpdateGoogleP12File
samples/cli/sample-apps Platform updateGoogleP12File \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 76 'UpdateGoogleP12File' test.out

#- 77 GetIAPItemConfig
samples/cli/sample-apps Platform getIAPItemConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 77 'GetIAPItemConfig' test.out

#- 78 UpdateIAPItemConfig
samples/cli/sample-apps Platform updateIAPItemConfig \
    --namespace $AB_NAMESPACE \
    --body '{"data": [{"itemIdentity": "qqlmoteWfxsqpt0b", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"9m8pilF4noQEPwyO": "9ai7Jc8VYlhg8F7m", "9VrfvJvoPOGZtl1f": "lVi7EgU1gAkHL9V7", "r5rdgmldnsTJEOqL": "dJU7r5NyK276hWu7"}}, {"itemIdentity": "fAH4IEcdcOKWP4V2", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"nPo3Ja2pfx4RoSbO": "bsWhqr5Uyk9F6N4z", "1kBqk9elmyELQYn0": "MKpIslBXkoAkok28", "nLQEqSznDyeoWISB": "LQ1UMygBvdbGegVB"}}, {"itemIdentity": "4olU0EyUMaGtIukt", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"klNeg9l7UulC5gFf": "ke0J8u1oWsIkSenJ", "Yuv0KUFKWTEhb7g5": "hnOQ8iKujtWubTIq", "rKq1aJgfEieT7ATu": "EEQCNzeCY5C0N1wt"}}]}' \
    > test.out 2>&1
eval_tap $? 78 'UpdateIAPItemConfig' test.out

#- 79 DeleteIAPItemConfig
samples/cli/sample-apps Platform deleteIAPItemConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 79 'DeleteIAPItemConfig' test.out

#- 80 GetOculusIAPConfig
samples/cli/sample-apps Platform getOculusIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 80 'GetOculusIAPConfig' test.out

#- 81 UpdateOculusIAPConfig
samples/cli/sample-apps Platform updateOculusIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"appId": "XPXn8iWwjPML1fxt", "appSecret": "AnBxYtmYYXqG8XGx"}' \
    > test.out 2>&1
eval_tap $? 81 'UpdateOculusIAPConfig' test.out

#- 82 DeleteOculusIAPConfig
samples/cli/sample-apps Platform deleteOculusIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 82 'DeleteOculusIAPConfig' test.out

#- 83 GetPlayStationIAPConfig
samples/cli/sample-apps Platform getPlayStationIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 83 'GetPlayStationIAPConfig' test.out

#- 84 UpdatePlaystationIAPConfig
samples/cli/sample-apps Platform updatePlaystationIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"backOfficeServerClientId": "7nXgsI6KubnMIw0L", "backOfficeServerClientSecret": "YHZS4b3Ico4ca9Ou", "enableStreamJob": false, "environment": "TWVyuDHoIEdip5GX", "streamName": "Uo1LWeQjlod1j5sr", "streamPartnerName": "nPNTN62m4O5MXTXM"}' \
    > test.out 2>&1
eval_tap $? 84 'UpdatePlaystationIAPConfig' test.out

#- 85 DeletePlaystationIAPConfig
samples/cli/sample-apps Platform deletePlaystationIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 85 'DeletePlaystationIAPConfig' test.out

#- 86 ValidateExistedPlaystationIAPConfig
samples/cli/sample-apps Platform validateExistedPlaystationIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 86 'ValidateExistedPlaystationIAPConfig' test.out

#- 87 ValidatePlaystationIAPConfig
samples/cli/sample-apps Platform validatePlaystationIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"backOfficeServerClientId": "kYV4QIVl5RkqoET5", "backOfficeServerClientSecret": "c9npRMSZ1wjoK1Re", "enableStreamJob": true, "environment": "LPUviiL0LbfSrM17", "streamName": "twKoXjQx0E1cqIgI", "streamPartnerName": "02UlBw4lUn5YfYYj"}' \
    > test.out 2>&1
eval_tap $? 87 'ValidatePlaystationIAPConfig' test.out

#- 88 GetSteamIAPConfig
samples/cli/sample-apps Platform getSteamIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 88 'GetSteamIAPConfig' test.out

#- 89 UpdateSteamIAPConfig
samples/cli/sample-apps Platform updateSteamIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"appId": "HMghF7zZh7hF3R9K", "publisherAuthenticationKey": "jcqIBTXxRgHgugV3"}' \
    > test.out 2>&1
eval_tap $? 89 'UpdateSteamIAPConfig' test.out

#- 90 DeleteSteamIAPConfig
samples/cli/sample-apps Platform deleteSteamIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 90 'DeleteSteamIAPConfig' test.out

#- 91 GetTwitchIAPConfig
samples/cli/sample-apps Platform getTwitchIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 91 'GetTwitchIAPConfig' test.out

#- 92 UpdateTwitchIAPConfig
samples/cli/sample-apps Platform updateTwitchIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"clientId": "NvsGuaNv78RvmxYS", "clientSecret": "sHnRpXcKzxwvV3Nq", "organizationId": "ucRTDeo7JQjM8Cnw"}' \
    > test.out 2>&1
eval_tap $? 92 'UpdateTwitchIAPConfig' test.out

#- 93 DeleteTwitchIAPConfig
samples/cli/sample-apps Platform deleteTwitchIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 93 'DeleteTwitchIAPConfig' test.out

#- 94 GetXblIAPConfig
samples/cli/sample-apps Platform getXblIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 94 'GetXblIAPConfig' test.out

#- 95 UpdateXblIAPConfig
samples/cli/sample-apps Platform updateXblIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"relyingPartyCert": "vZWNucQZOhDyapzP"}' \
    > test.out 2>&1
eval_tap $? 95 'UpdateXblIAPConfig' test.out

#- 96 DeleteXblAPConfig
samples/cli/sample-apps Platform deleteXblAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 96 'DeleteXblAPConfig' test.out

#- 97 UpdateXblBPCertFile
samples/cli/sample-apps Platform updateXblBPCertFile \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    --password 'w64hzRUuw6Ac9YA5' \
    > test.out 2>&1
eval_tap $? 97 'UpdateXblBPCertFile' test.out

#- 98 DownloadInvoiceDetails
samples/cli/sample-apps Platform downloadInvoiceDetails \
    --namespace $AB_NAMESPACE \
    --feature 'V3SeIKVbExmqJhVi' \
    --itemId 'nXHTonLqxcf5ZVGn' \
    --itemType 'MEDIA' \
    --endTime 'IEvDyGr5UvyyWFSx' \
    --startTime 'Vak5Vp9ddiD2pp5D' \
    > test.out 2>&1
eval_tap $? 98 'DownloadInvoiceDetails' test.out

#- 99 GenerateInvoiceSummary
samples/cli/sample-apps Platform generateInvoiceSummary \
    --namespace $AB_NAMESPACE \
    --feature 'XQ1SryqnrRhGTkBD' \
    --itemId 'EEOcNMNMLrgHlO2t' \
    --itemType 'MEDIA' \
    --endTime 'HcIYpQkY3eckcAjL' \
    --startTime 'gp3mg8e3Z29xp0Ha' \
    > test.out 2>&1
eval_tap $? 99 'GenerateInvoiceSummary' test.out

#- 100 SyncInGameItem
samples/cli/sample-apps Platform syncInGameItem \
    --namespace $AB_NAMESPACE \
    --storeId '4Bc5mHaQl6FT5VmL' \
    --body '{"categoryPath": "3Qa3C8FEf61uyQyr", "targetItemId": "ufZxLEu8ahgZOvwE", "targetNamespace": "0ZJI4TjjXjVan6Ld"}' \
    > test.out 2>&1
eval_tap $? 100 'SyncInGameItem' test.out

#- 101 CreateItem
samples/cli/sample-apps Platform createItem \
    --namespace $AB_NAMESPACE \
    --storeId 'Y1KvB0USskWuRLlZ' \
    --body '{"appId": "bHiWcUYx20VkywuU", "appType": "DLC", "baseAppId": "aEFJR7DTXln6MarR", "boothName": "w7BZGK71HQgDUkSb", "categoryPath": "Jco97KdRBHWCeYQB", "clazz": "JP6Y2kq8azK9ZhZT", "displayOrder": 46, "entitlementType": "DURABLE", "ext": {"11YS8J8N8uaz48ZL": {}, "P7dCkoCbw7wGLRRc": {}, "LhGISxdtLEMNiG74": {}}, "features": ["CQXLVwS5fREewO76", "5tQej4DQjKfzVgX4", "lYNLGwYcF8f9wrHO"], "images": [{"as": "sXiv2BB9HUENXCc9", "caption": "yWQvuOPzm9JbyRhU", "height": 53, "imageUrl": "EuSLKnlSqXfPQUCK", "smallImageUrl": "n1OKn43UwElF4GIi", "width": 69}, {"as": "dHBRsqVe3q5I0DCA", "caption": "I6K5sCSUc5pmj5dp", "height": 6, "imageUrl": "qnU4osKSKVHieKz2", "smallImageUrl": "sNB8eaABxsgcBV3L", "width": 31}, {"as": "xKlR4r3B7Ws24Bpv", "caption": "vQYdPbFfURnAj65d", "height": 73, "imageUrl": "QkHY287c8hYlFuBY", "smallImageUrl": "whAsbmOCzqpKQ7sI", "width": 90}], "itemIds": ["J6KHOvCAahJfWpSs", "reLuTIJeOJhiTHV0", "PmldeO8qy6SNdOBH"], "itemQty": {"kQaftklOURUJAPIJ": 13, "ubOYdJBjL5VKrxEi": 69, "hIEmarA3TG8HhayU": 49}, "itemType": "APP", "listable": false, "localizations": {"ARmPNq5nZNIuCBKL": {"description": "qRk2oWBSYM4ffUJG", "localExt": {"q79q1rXFQAzeLTAE": {}, "MYFuW3XlxNWCr1YN": {}, "8PRHyn36Bs8RUQZ9": {}}, "longDescription": "7E5dbYXg0i8kz4Ic", "title": "9B5diH9MohZzJMj1"}, "JWMzJA81NmuGTAfW": {"description": "NT288MJILVlStrNa", "localExt": {"mL9V1cOLBEv1I76C": {}, "o0purtJsqmq4ERwZ": {}, "UYpdkfZrCX7z29SF": {}}, "longDescription": "swKWNbnriDYsK7KM", "title": "N0yP9nAoyjYf2Doe"}, "GD4vNKvxOc7JPl94": {"description": "tWgvXVUcFjzQCefF", "localExt": {"9gm0iMbZYUUFV7Hy": {}, "7ASpazkjLJikCZO2": {}, "zflxBG4sEQsEZ9KQ": {}}, "longDescription": "BssQVlZv7cOvMkOs", "title": "hnwiXgtHtYewmYFn"}}, "lootBoxConfig": {"rewardCount": 51, "rewards": [{"lootBoxItems": [{"count": 64, "duration": 78, "endDate": "1988-11-29T00:00:00Z", "itemId": "Zr24QxJSHHSVupo0", "itemSku": "fEs4rQNYTbFoieVV", "itemType": "9HYqCZmDbap6FtVp"}, {"count": 76, "duration": 50, "endDate": "1985-05-28T00:00:00Z", "itemId": "VPvY2DfAT8fyKORZ", "itemSku": "QmaAPE5Q0UGebBMO", "itemType": "BMCWFWPEbxoV7EW3"}, {"count": 99, "duration": 58, "endDate": "1981-04-02T00:00:00Z", "itemId": "RLQQrkk5PJDNcUO8", "itemSku": "fa7XoR12RaK13ZJf", "itemType": "yUWNk7sCfT7IjD36"}], "name": "vIiE0U0jjVbar3mo", "odds": 0.12763538771314853, "type": "REWARD", "weight": 65}, {"lootBoxItems": [{"count": 11, "duration": 7, "endDate": "1993-04-16T00:00:00Z", "itemId": "a13D1vBIqJ7pOr2o", "itemSku": "HVra25ZjDOM0zhs3", "itemType": "vR6KIQdakGF9NtFm"}, {"count": 44, "duration": 45, "endDate": "1982-03-08T00:00:00Z", "itemId": "ujsKxbDkzCDG9cDe", "itemSku": "kuaGZO7cKo59XYgW", "itemType": "f34zuPqT2Otk25Ef"}, {"count": 75, "duration": 68, "endDate": "1995-02-04T00:00:00Z", "itemId": "csQzrv9gePlPlvjS", "itemSku": "3WxWSvwBjTKVoUUm", "itemType": "hrYSTiggzZaw87LG"}], "name": "UCogbemxQBWZjiuB", "odds": 0.35739649715062505, "type": "PROBABILITY_GROUP", "weight": 61}, {"lootBoxItems": [{"count": 71, "duration": 31, "endDate": "1991-01-19T00:00:00Z", "itemId": "aG14qWtc9DTOut9Q", "itemSku": "fSFzJqSzx0LCP7Mp", "itemType": "14gvkO5SFtyVkZjd"}, {"count": 95, "duration": 40, "endDate": "1977-09-22T00:00:00Z", "itemId": "8ykkZJtuZk5CsShN", "itemSku": "laQ7Y24mYFUQT7kF", "itemType": "q33GHKUWaPaW3fDK"}, {"count": 77, "duration": 34, "endDate": "1984-04-02T00:00:00Z", "itemId": "6pxWnsjghE7nJDeI", "itemSku": "nffGHKSjfDdV1G9V", "itemType": "iL47s5dGnXoYVrLE"}], "name": "XIxy4I51sSt3Zoda", "odds": 0.15131914662094015, "type": "REWARD_GROUP", "weight": 49}], "rollFunction": "DEFAULT"}, "maxCount": 37, "maxCountPerUser": 69, "name": "skMfrf00fZzQ7Xmb", "optionBoxConfig": {"boxItems": [{"count": 1, "duration": 27, "endDate": "1996-01-11T00:00:00Z", "itemId": "gIj3CWpEBbn4jiDB", "itemSku": "rc2k7v9emhqO1HJj", "itemType": "7i2ZaCuH7vClMgPC"}, {"count": 28, "duration": 29, "endDate": "1974-04-24T00:00:00Z", "itemId": "7MGNbOH4jKhygmcO", "itemSku": "LQzuoyBoCQQaWZRo", "itemType": "wBv8ihHeccDGTvFL"}, {"count": 86, "duration": 83, "endDate": "1973-12-11T00:00:00Z", "itemId": "45lpHoNzyrB7kVVZ", "itemSku": "zkjoWTKljOdP1Rlx", "itemType": "9UAbFJw4KHyNfFm8"}]}, "purchasable": false, "recurring": {"cycle": "QUARTERLY", "fixedFreeDays": 93, "fixedTrialCycles": 84, "graceDays": 94}, "regionData": {"emKftC45Y5Lcj0Vo": [{"currencyCode": "cKIlI5zLUiXixZQP", "currencyNamespace": "MsCu0MEH9EspLrOE", "currencyType": "REAL", "discountAmount": 60, "discountExpireAt": "1984-04-10T00:00:00Z", "discountPercentage": 41, "discountPurchaseAt": "1999-09-04T00:00:00Z", "expireAt": "1982-10-06T00:00:00Z", "price": 70, "purchaseAt": "1984-12-27T00:00:00Z", "trialPrice": 12}, {"currencyCode": "e87hwgQ29ur6g5N3", "currencyNamespace": "fGCXVUuBSuAOqrjI", "currencyType": "VIRTUAL", "discountAmount": 76, "discountExpireAt": "1985-05-19T00:00:00Z", "discountPercentage": 86, "discountPurchaseAt": "1971-11-19T00:00:00Z", "expireAt": "1994-12-23T00:00:00Z", "price": 82, "purchaseAt": "1982-05-10T00:00:00Z", "trialPrice": 59}, {"currencyCode": "dg0UYHh7oPgaSrxH", "currencyNamespace": "TpVpGoLxWBjAKEkS", "currencyType": "VIRTUAL", "discountAmount": 64, "discountExpireAt": "1987-12-10T00:00:00Z", "discountPercentage": 62, "discountPurchaseAt": "1978-01-23T00:00:00Z", "expireAt": "1994-04-16T00:00:00Z", "price": 96, "purchaseAt": "1981-07-11T00:00:00Z", "trialPrice": 95}], "47JdYMp2mw3kwZ81": [{"currencyCode": "U6hVdI1QioGLTftE", "currencyNamespace": "hZkRwyF7eNDwDgjk", "currencyType": "REAL", "discountAmount": 99, "discountExpireAt": "1995-12-02T00:00:00Z", "discountPercentage": 71, "discountPurchaseAt": "1980-08-08T00:00:00Z", "expireAt": "1974-11-12T00:00:00Z", "price": 35, "purchaseAt": "1986-04-29T00:00:00Z", "trialPrice": 47}, {"currencyCode": "dNQAZ1LPjJDc6MYN", "currencyNamespace": "KrNEqjuMtOAX1Wpj", "currencyType": "REAL", "discountAmount": 25, "discountExpireAt": "1990-12-19T00:00:00Z", "discountPercentage": 18, "discountPurchaseAt": "1972-10-26T00:00:00Z", "expireAt": "1979-08-29T00:00:00Z", "price": 92, "purchaseAt": "1995-11-27T00:00:00Z", "trialPrice": 14}, {"currencyCode": "RaTZaXfZhJrIQXmZ", "currencyNamespace": "4BRv4hIO3WS0clfy", "currencyType": "VIRTUAL", "discountAmount": 75, "discountExpireAt": "1974-07-25T00:00:00Z", "discountPercentage": 28, "discountPurchaseAt": "1992-10-23T00:00:00Z", "expireAt": "1975-01-27T00:00:00Z", "price": 54, "purchaseAt": "1991-02-08T00:00:00Z", "trialPrice": 19}], "6rFzIg0W7HP2MpuQ": [{"currencyCode": "crlRbcu4uvqDfEMp", "currencyNamespace": "eDrFNL5L5wOTeh0W", "currencyType": "REAL", "discountAmount": 34, "discountExpireAt": "1999-02-02T00:00:00Z", "discountPercentage": 63, "discountPurchaseAt": "1986-05-06T00:00:00Z", "expireAt": "1998-09-14T00:00:00Z", "price": 77, "purchaseAt": "1980-12-24T00:00:00Z", "trialPrice": 56}, {"currencyCode": "C4IBXXJIauHR9iHP", "currencyNamespace": "vQT6cKVNPQ4tfXFo", "currencyType": "REAL", "discountAmount": 48, "discountExpireAt": "1987-09-18T00:00:00Z", "discountPercentage": 32, "discountPurchaseAt": "1976-07-09T00:00:00Z", "expireAt": "1984-11-09T00:00:00Z", "price": 32, "purchaseAt": "1999-12-15T00:00:00Z", "trialPrice": 16}, {"currencyCode": "Y9JwemJwGyJt4gW5", "currencyNamespace": "vyZQVP1u6Bz3gwA4", "currencyType": "REAL", "discountAmount": 37, "discountExpireAt": "1996-08-26T00:00:00Z", "discountPercentage": 6, "discountPurchaseAt": "1978-05-19T00:00:00Z", "expireAt": "1973-05-01T00:00:00Z", "price": 88, "purchaseAt": "1983-03-22T00:00:00Z", "trialPrice": 65}]}, "saleConfig": {"currencyCode": "GVrw8F46SgH9hx8R", "price": 49}, "seasonType": "TIER", "sectionExclusive": true, "sellable": true, "sku": "zCtuW8FAzx4vgbXY", "stackable": true, "status": "ACTIVE", "tags": ["3BfAUdD7m0xGpsX0", "s5YOrf94qMofCgfc", "tfhL8NJ5KSRzTXHw"], "targetCurrencyCode": "Z9fbFXjBpLpWJWn8", "targetNamespace": "m3QJoG4aKGSu9l6l", "thumbnailUrl": "Xr4vn3U3NT2tAhuP", "useCount": 59}' \
    > test.out 2>&1
eval_tap $? 101 'CreateItem' test.out

#- 102 GetItemByAppId
samples/cli/sample-apps Platform getItemByAppId \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'dg8EPWQkPlx8fnaI' \
    --appId 'BYhmuTXZdFeSDNvo' \
    > test.out 2>&1
eval_tap $? 102 'GetItemByAppId' test.out

#- 103 QueryItems
samples/cli/sample-apps Platform queryItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --appType 'DLC' \
    --availableDate 'RJKbxqeQMqpGlYTa' \
    --baseAppId 'AEIQp71HxOIuXYWx' \
    --categoryPath 'hyBvD30pGmhqmbI8' \
    --features 'N33n1aoz0bGUyY8h' \
    --includeSubCategoryItem 'true' \
    --itemType 'OPTIONBOX' \
    --limit '59' \
    --offset '36' \
    --region '5DsIDqLC0xUiXGcN' \
    --sortBy '["updatedAt:asc", "name:desc", "name"]' \
    --storeId '4MEKvHfR6zcvsZoD' \
    --tags 'b35FV5YvFr29ABnk' \
    --targetNamespace 'PiT2UCo8sdFLdqt4' \
    > test.out 2>&1
eval_tap $? 103 'QueryItems' test.out

#- 104 ListBasicItemsByFeatures
samples/cli/sample-apps Platform listBasicItemsByFeatures \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --features '["pBmLtFPq3vXnw06T", "oWRRSiAOsFgYfnr1", "dZla6E0fj4QhjIO4"]' \
    > test.out 2>&1
eval_tap $? 104 'ListBasicItemsByFeatures' test.out

#- 105 GetItemBySku
samples/cli/sample-apps Platform getItemBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --storeId 'Nozy54k7zgHVe4UX' \
    --sku 'O0tYSfudSbvH7MhC' \
    > test.out 2>&1
eval_tap $? 105 'GetItemBySku' test.out

#- 106 GetLocaleItemBySku
samples/cli/sample-apps Platform getLocaleItemBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --language 'sILtbdY14cYINbie' \
    --populateBundle 'false' \
    --region 'w2d28RCpX2yo9hXv' \
    --storeId 'e0GnzQSDHCiYIaZB' \
    --sku 'rQztuZwE5mORpVhO' \
    > test.out 2>&1
eval_tap $? 106 'GetLocaleItemBySku' test.out

#- 107 GetItemIdBySku
samples/cli/sample-apps Platform getItemIdBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --storeId 'woR3d3CZt4yyr4dJ' \
    --sku '1Oj2ry9a608sP09y' \
    > test.out 2>&1
eval_tap $? 107 'GetItemIdBySku' test.out

#- 108 GetBulkItemIdBySkus
samples/cli/sample-apps Platform getBulkItemIdBySkus \
    --namespace $AB_NAMESPACE \
    --sku '["omPna7S1xENKIr7E", "GYNiCgQE9eFmxWAl", "HdR1ADUCuq55uagg"]' \
    --storeId 'qqwHgSjFPjZI1OP2' \
    > test.out 2>&1
eval_tap $? 108 'GetBulkItemIdBySkus' test.out

#- 109 BulkGetLocaleItems
samples/cli/sample-apps Platform bulkGetLocaleItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --language 'DxE7W4X8y3MAIRV9' \
    --region 'ZRwqzghJgI6Rot1s' \
    --storeId 'nX7QjPrUKSND6x0r' \
    --itemIds 'SXS6NmLevhq8xHy7' \
    > test.out 2>&1
eval_tap $? 109 'BulkGetLocaleItems' test.out

#- 110 GetAvailablePredicateTypes
samples/cli/sample-apps Platform getAvailablePredicateTypes \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 110 'GetAvailablePredicateTypes' test.out

#- 111 ValidateItemPurchaseCondition
samples/cli/sample-apps Platform validateItemPurchaseCondition \
    --namespace $AB_NAMESPACE \
    --userId 'xVmW4jPs4X3qnzEL' \
    --body '{"itemIds": ["M1n9GCh7Jz1tzxKf", "il3tOKKhAlxqxaan", "bDeSsf7ttvrdNfAT"]}' \
    > test.out 2>&1
eval_tap $? 111 'ValidateItemPurchaseCondition' test.out

#- 112 BulkUpdateRegionData
samples/cli/sample-apps Platform bulkUpdateRegionData \
    --namespace $AB_NAMESPACE \
    --storeId 'oJKRh4xhYIsMZxd0' \
    --body '{"changes": [{"itemIdentities": ["TMAr6KbXFOTQmDDm", "grZsDysKa7fI4HVK", "cAuaD59zM4JMeRln"], "itemIdentityType": "ITEM_ID", "regionData": {"OhHtWF3t2UIwnGOP": [{"currencyCode": "FHq2kJgwPlFApEx8", "currencyNamespace": "qqCPUaafD2vI7dzH", "currencyType": "VIRTUAL", "discountAmount": 37, "discountExpireAt": "1997-01-09T00:00:00Z", "discountPercentage": 30, "discountPurchaseAt": "1976-09-25T00:00:00Z", "discountedPrice": 67, "expireAt": "1974-07-11T00:00:00Z", "price": 96, "purchaseAt": "1994-10-25T00:00:00Z", "trialPrice": 38}, {"currencyCode": "ZDVHB1ydEdQbjVzk", "currencyNamespace": "rFVescDxHzpY3Mau", "currencyType": "REAL", "discountAmount": 65, "discountExpireAt": "1998-01-24T00:00:00Z", "discountPercentage": 31, "discountPurchaseAt": "1971-02-11T00:00:00Z", "discountedPrice": 89, "expireAt": "1985-08-17T00:00:00Z", "price": 80, "purchaseAt": "1974-11-29T00:00:00Z", "trialPrice": 21}, {"currencyCode": "TAObVf70kx1IVCCx", "currencyNamespace": "ngL5wAXhsJl6XOLC", "currencyType": "VIRTUAL", "discountAmount": 74, "discountExpireAt": "1987-05-01T00:00:00Z", "discountPercentage": 65, "discountPurchaseAt": "1982-12-02T00:00:00Z", "discountedPrice": 82, "expireAt": "1986-12-09T00:00:00Z", "price": 10, "purchaseAt": "1994-01-20T00:00:00Z", "trialPrice": 12}], "FwN4NJS6TSN77qNG": [{"currencyCode": "DQAWJwLcyA8wqQzE", "currencyNamespace": "5z6miiho9JmdfHOt", "currencyType": "REAL", "discountAmount": 81, "discountExpireAt": "1997-11-01T00:00:00Z", "discountPercentage": 36, "discountPurchaseAt": "1987-01-13T00:00:00Z", "discountedPrice": 98, "expireAt": "1993-04-07T00:00:00Z", "price": 30, "purchaseAt": "1982-05-04T00:00:00Z", "trialPrice": 73}, {"currencyCode": "QhGQGcKPf4U8k4Zn", "currencyNamespace": "uwC3eo5u6Moy5ckG", "currencyType": "REAL", "discountAmount": 59, "discountExpireAt": "1982-04-21T00:00:00Z", "discountPercentage": 24, "discountPurchaseAt": "1978-12-01T00:00:00Z", "discountedPrice": 22, "expireAt": "1989-10-08T00:00:00Z", "price": 29, "purchaseAt": "1980-07-29T00:00:00Z", "trialPrice": 47}, {"currencyCode": "hkPTj4ZtEMPkBFa3", "currencyNamespace": "B9Ze14cMloeeZIXB", "currencyType": "VIRTUAL", "discountAmount": 12, "discountExpireAt": "1997-01-05T00:00:00Z", "discountPercentage": 12, "discountPurchaseAt": "1985-07-30T00:00:00Z", "discountedPrice": 81, "expireAt": "1990-09-08T00:00:00Z", "price": 13, "purchaseAt": "1976-01-03T00:00:00Z", "trialPrice": 68}], "2FjqFFzpTiIsLUoI": [{"currencyCode": "v1GzkVEPHwyi4zul", "currencyNamespace": "2a7QFEM3ymCDQPTw", "currencyType": "VIRTUAL", "discountAmount": 86, "discountExpireAt": "1995-08-01T00:00:00Z", "discountPercentage": 10, "discountPurchaseAt": "1995-01-31T00:00:00Z", "discountedPrice": 90, "expireAt": "1988-11-21T00:00:00Z", "price": 31, "purchaseAt": "1987-07-31T00:00:00Z", "trialPrice": 97}, {"currencyCode": "53Qveij3ued4POw1", "currencyNamespace": "ZwYkvMFi0I3JrSCr", "currencyType": "VIRTUAL", "discountAmount": 71, "discountExpireAt": "1972-04-16T00:00:00Z", "discountPercentage": 83, "discountPurchaseAt": "1983-01-09T00:00:00Z", "discountedPrice": 35, "expireAt": "1985-01-23T00:00:00Z", "price": 59, "purchaseAt": "1992-04-26T00:00:00Z", "trialPrice": 94}, {"currencyCode": "kfldci6Gxp2uoPsW", "currencyNamespace": "uVhj6LX1jvA3StMb", "currencyType": "REAL", "discountAmount": 60, "discountExpireAt": "1972-12-28T00:00:00Z", "discountPercentage": 90, "discountPurchaseAt": "1989-05-10T00:00:00Z", "discountedPrice": 51, "expireAt": "1993-02-14T00:00:00Z", "price": 71, "purchaseAt": "1983-06-27T00:00:00Z", "trialPrice": 53}]}}, {"itemIdentities": ["W9Migbkboq78dNI6", "hwTHSambIEgkaDsO", "I1phTqWddcDcR7HD"], "itemIdentityType": "ITEM_ID", "regionData": {"aPpwaZu772yajmez": [{"currencyCode": "ieJW4mf9Hv11nqcC", "currencyNamespace": "RzcTsAWXWfk6VhZr", "currencyType": "REAL", "discountAmount": 46, "discountExpireAt": "1978-01-15T00:00:00Z", "discountPercentage": 33, "discountPurchaseAt": "1997-03-18T00:00:00Z", "discountedPrice": 44, "expireAt": "1999-07-12T00:00:00Z", "price": 38, "purchaseAt": "1975-02-19T00:00:00Z", "trialPrice": 34}, {"currencyCode": "aYAWxnHdp9WIhTfj", "currencyNamespace": "cJR84jg3MStV1Zy5", "currencyType": "VIRTUAL", "discountAmount": 89, "discountExpireAt": "1998-05-06T00:00:00Z", "discountPercentage": 33, "discountPurchaseAt": "1984-07-17T00:00:00Z", "discountedPrice": 91, "expireAt": "1992-01-23T00:00:00Z", "price": 92, "purchaseAt": "1998-11-25T00:00:00Z", "trialPrice": 41}, {"currencyCode": "ad6OX7paRslznFdk", "currencyNamespace": "8zsCz9F4fJPyA6tv", "currencyType": "REAL", "discountAmount": 2, "discountExpireAt": "1996-09-02T00:00:00Z", "discountPercentage": 44, "discountPurchaseAt": "1989-08-22T00:00:00Z", "discountedPrice": 12, "expireAt": "1981-05-27T00:00:00Z", "price": 95, "purchaseAt": "1992-01-25T00:00:00Z", "trialPrice": 71}], "kKs6mmpSc3E7Y8BO": [{"currencyCode": "GAQTMtKoAV0gC1Uu", "currencyNamespace": "SI7nydFvB7M0SLGw", "currencyType": "REAL", "discountAmount": 39, "discountExpireAt": "1979-06-26T00:00:00Z", "discountPercentage": 52, "discountPurchaseAt": "1978-07-01T00:00:00Z", "discountedPrice": 13, "expireAt": "1993-11-03T00:00:00Z", "price": 1, "purchaseAt": "1993-11-29T00:00:00Z", "trialPrice": 67}, {"currencyCode": "tKuFLUDYXhmWdmGZ", "currencyNamespace": "na7c5NDaPF64AaJV", "currencyType": "REAL", "discountAmount": 94, "discountExpireAt": "1987-04-04T00:00:00Z", "discountPercentage": 62, "discountPurchaseAt": "1977-04-06T00:00:00Z", "discountedPrice": 30, "expireAt": "1972-07-06T00:00:00Z", "price": 41, "purchaseAt": "1998-03-17T00:00:00Z", "trialPrice": 55}, {"currencyCode": "QhgqrFSoIqbhNX7I", "currencyNamespace": "wf16aJ8EZigB9Qvk", "currencyType": "REAL", "discountAmount": 93, "discountExpireAt": "1979-02-14T00:00:00Z", "discountPercentage": 100, "discountPurchaseAt": "1992-03-21T00:00:00Z", "discountedPrice": 47, "expireAt": "1993-03-08T00:00:00Z", "price": 18, "purchaseAt": "1999-01-02T00:00:00Z", "trialPrice": 47}], "xvvBOOtUlaYzSibK": [{"currencyCode": "pRGoGE5iGPdykEbX", "currencyNamespace": "eI2r4L6M4IA6M87T", "currencyType": "VIRTUAL", "discountAmount": 90, "discountExpireAt": "1990-08-31T00:00:00Z", "discountPercentage": 25, "discountPurchaseAt": "1994-03-03T00:00:00Z", "discountedPrice": 32, "expireAt": "1982-08-20T00:00:00Z", "price": 33, "purchaseAt": "1983-02-14T00:00:00Z", "trialPrice": 95}, {"currencyCode": "AQXpcwUNhH1lN0Aa", "currencyNamespace": "gmGgj8fUpI8xfpgb", "currencyType": "REAL", "discountAmount": 75, "discountExpireAt": "1986-02-09T00:00:00Z", "discountPercentage": 78, "discountPurchaseAt": "1993-07-28T00:00:00Z", "discountedPrice": 21, "expireAt": "1981-01-28T00:00:00Z", "price": 82, "purchaseAt": "1972-07-16T00:00:00Z", "trialPrice": 39}, {"currencyCode": "4CiDl7zzowBdTWUe", "currencyNamespace": "o7eMybP72C53pkKI", "currencyType": "REAL", "discountAmount": 64, "discountExpireAt": "1994-12-04T00:00:00Z", "discountPercentage": 32, "discountPurchaseAt": "1979-11-22T00:00:00Z", "discountedPrice": 32, "expireAt": "1988-03-24T00:00:00Z", "price": 50, "purchaseAt": "1971-05-12T00:00:00Z", "trialPrice": 13}]}}, {"itemIdentities": ["h5gfMerKYvKO3oNz", "YXi9w0gvG24plMD1", "lEY7plo8RJg6M3gG"], "itemIdentityType": "ITEM_ID", "regionData": {"YViI8fPN0IBJdnlU": [{"currencyCode": "YRDFZDX4l9p2UuJu", "currencyNamespace": "0IfazTPq7jtyppcC", "currencyType": "VIRTUAL", "discountAmount": 74, "discountExpireAt": "1972-04-16T00:00:00Z", "discountPercentage": 2, "discountPurchaseAt": "1990-03-22T00:00:00Z", "discountedPrice": 99, "expireAt": "1989-01-26T00:00:00Z", "price": 42, "purchaseAt": "1999-12-18T00:00:00Z", "trialPrice": 88}, {"currencyCode": "Do4avNqTo1IlKEq0", "currencyNamespace": "GapGssvA8iVwo0Zk", "currencyType": "VIRTUAL", "discountAmount": 81, "discountExpireAt": "1988-05-06T00:00:00Z", "discountPercentage": 69, "discountPurchaseAt": "1984-04-15T00:00:00Z", "discountedPrice": 18, "expireAt": "1983-06-24T00:00:00Z", "price": 57, "purchaseAt": "1989-12-24T00:00:00Z", "trialPrice": 27}, {"currencyCode": "HDCtnsRIzR0dBte0", "currencyNamespace": "AMR9RTogYk1PeQdR", "currencyType": "VIRTUAL", "discountAmount": 99, "discountExpireAt": "1979-07-17T00:00:00Z", "discountPercentage": 95, "discountPurchaseAt": "1980-11-14T00:00:00Z", "discountedPrice": 67, "expireAt": "1980-05-29T00:00:00Z", "price": 67, "purchaseAt": "1998-12-03T00:00:00Z", "trialPrice": 74}], "jV41CYV2GFYEHmA6": [{"currencyCode": "wIWJETPCl3P4TNmA", "currencyNamespace": "O0iUkwNheMBENhQn", "currencyType": "VIRTUAL", "discountAmount": 74, "discountExpireAt": "1994-06-02T00:00:00Z", "discountPercentage": 26, "discountPurchaseAt": "1996-11-16T00:00:00Z", "discountedPrice": 75, "expireAt": "1974-10-17T00:00:00Z", "price": 14, "purchaseAt": "1989-06-16T00:00:00Z", "trialPrice": 12}, {"currencyCode": "BGefh4TVpVoNYKzZ", "currencyNamespace": "MXQrfKGD8ml4j9rI", "currencyType": "VIRTUAL", "discountAmount": 91, "discountExpireAt": "1988-11-24T00:00:00Z", "discountPercentage": 82, "discountPurchaseAt": "1985-04-24T00:00:00Z", "discountedPrice": 13, "expireAt": "1975-03-12T00:00:00Z", "price": 55, "purchaseAt": "1992-11-15T00:00:00Z", "trialPrice": 77}, {"currencyCode": "TyhrNxshwsQwveU1", "currencyNamespace": "vppBDCuLEEDZezsU", "currencyType": "VIRTUAL", "discountAmount": 88, "discountExpireAt": "1992-05-07T00:00:00Z", "discountPercentage": 16, "discountPurchaseAt": "1989-11-01T00:00:00Z", "discountedPrice": 6, "expireAt": "1977-07-28T00:00:00Z", "price": 82, "purchaseAt": "1977-04-27T00:00:00Z", "trialPrice": 44}], "fwU4YaWpYQgaBEuv": [{"currencyCode": "gGAkj01B8AFyxMDh", "currencyNamespace": "HUzG9QoK6QSsz5pZ", "currencyType": "REAL", "discountAmount": 7, "discountExpireAt": "1975-10-08T00:00:00Z", "discountPercentage": 33, "discountPurchaseAt": "1979-04-29T00:00:00Z", "discountedPrice": 97, "expireAt": "1983-01-18T00:00:00Z", "price": 74, "purchaseAt": "1985-10-01T00:00:00Z", "trialPrice": 75}, {"currencyCode": "8rB5Wn7OHSnA2XIu", "currencyNamespace": "cIRKIwOZi14wTxUO", "currencyType": "REAL", "discountAmount": 64, "discountExpireAt": "1988-03-12T00:00:00Z", "discountPercentage": 21, "discountPurchaseAt": "1978-05-16T00:00:00Z", "discountedPrice": 38, "expireAt": "1984-12-08T00:00:00Z", "price": 64, "purchaseAt": "1974-11-14T00:00:00Z", "trialPrice": 55}, {"currencyCode": "6lOr6zaNokc9eNem", "currencyNamespace": "VDVOKiVHrhWjTC7K", "currencyType": "VIRTUAL", "discountAmount": 71, "discountExpireAt": "1974-11-28T00:00:00Z", "discountPercentage": 74, "discountPurchaseAt": "1984-01-26T00:00:00Z", "discountedPrice": 74, "expireAt": "1995-06-06T00:00:00Z", "price": 96, "purchaseAt": "1977-03-05T00:00:00Z", "trialPrice": 33}]}}]}' \
    > test.out 2>&1
eval_tap $? 112 'BulkUpdateRegionData' test.out

#- 113 SearchItems
samples/cli/sample-apps Platform searchItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --itemType 'SEASON' \
    --limit '22' \
    --offset '69' \
    --sortBy 'c9SMNgskRCamau4r' \
    --storeId 'eSB1kYtg6WfH7BcG' \
    --keyword 'NoSNeETVGSpsuQcQ' \
    --language 'bKgLvHQhTKHOoZz3' \
    > test.out 2>&1
eval_tap $? 113 'SearchItems' test.out

#- 114 QueryUncategorizedItems
samples/cli/sample-apps Platform queryUncategorizedItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --limit '7' \
    --offset '63' \
    --sortBy '["createdAt:asc", "name"]' \
    --storeId '0B8WtG9o6WycDQKk' \
    > test.out 2>&1
eval_tap $? 114 'QueryUncategorizedItems' test.out

#- 115 GetItem
samples/cli/sample-apps Platform getItem \
    --itemId 'mtJip7PpfqYNNwo3' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'XYiNhty8gmaq1rDo' \
    > test.out 2>&1
eval_tap $? 115 'GetItem' test.out

#- 116 UpdateItem
samples/cli/sample-apps Platform updateItem \
    --itemId 'cgoOxCOkZyRpcTCD' \
    --namespace $AB_NAMESPACE \
    --storeId '26vRYR87x5PtKojy' \
    --body '{"appId": "TaYFHbcnBBB2XQw4", "appType": "SOFTWARE", "baseAppId": "5fzJscnqFyMu5Hi8", "boothName": "175aguFJBxemIYYR", "categoryPath": "1I18Is4AGS4NXxgl", "clazz": "WXsZJ8Bmntfm29YH", "displayOrder": 31, "entitlementType": "CONSUMABLE", "ext": {"OSjXNkpp5MzqAa9I": {}, "O4t5YWICiXzEov8U": {}, "FyTMLee7Wozynews": {}}, "features": ["jFh4tJ3w1AbaB2ZO", "NI8gY1fdxgOozUDY", "VcmlWm9p8F90oqOs"], "images": [{"as": "Wj5dnjXRUzHn3xoI", "caption": "eRn0q5ZjYobDl3SH", "height": 29, "imageUrl": "KlR2pEU5tPkpJ0Di", "smallImageUrl": "Cp7WvOvc4SNFX4TP", "width": 39}, {"as": "oJlU3aoDdpzo3TkF", "caption": "hPuG9orAO0MR851i", "height": 75, "imageUrl": "8jlWWhfZMjAZHBio", "smallImageUrl": "C0maaHOQbMJSeFxl", "width": 48}, {"as": "MrmMdjoCaxsnbBEC", "caption": "ljzOlMaeuzovxIQT", "height": 53, "imageUrl": "yOOTv3gFUH9TXjrP", "smallImageUrl": "scX2IUnlrW6XGotG", "width": 56}], "itemIds": ["eFDDCDcSUvk1wDCo", "vYcXFyrkkStGDOEp", "q6q5QdEG8uJU94kk"], "itemQty": {"Nfl2a6damAK5mBTz": 82, "1zkYWYOvxE3GFw9w": 18, "lgPzCsF4dn4RguOV": 12}, "itemType": "BUNDLE", "listable": false, "localizations": {"svnY4VmY036V4Lcm": {"description": "jllXugt08ZMInPYN", "localExt": {"q5uPF8BL07V1XrK4": {}, "N5rQXUdXSqSPlOMF": {}, "GnBgEv2VO6RpkqTb": {}}, "longDescription": "78OUc7pvpBgAxIxz", "title": "09f8vNgOqQnHkbX9"}, "5YwI2bRzg1XKAkq7": {"description": "iMi9JYc5OfTNrMnf", "localExt": {"gI993jxNBtrglafe": {}, "nAZvpkYNkhqBUtoL": {}, "tevju9zQY38liziI": {}}, "longDescription": "CZFDJ0YQrKxDPlap", "title": "da24uIAVP51zxooC"}, "PwP87me4ik01CMM6": {"description": "G6vNOnPkesM3C2ut", "localExt": {"Yu8w66PAn0yBmpHA": {}, "u1ptU0iRjPVMLMch": {}, "W28oSVY8aXHuHaQ8": {}}, "longDescription": "rTywl7YqZYglpcmt", "title": "HBxmQ3uKU8vpS2uD"}}, "lootBoxConfig": {"rewardCount": 79, "rewards": [{"lootBoxItems": [{"count": 28, "duration": 79, "endDate": "1980-11-07T00:00:00Z", "itemId": "aWnNlPhJizajS3xU", "itemSku": "fiDnrCWpWRksyLXP", "itemType": "JK83iydp2dEmZxhv"}, {"count": 3, "duration": 13, "endDate": "1988-06-11T00:00:00Z", "itemId": "XPx1ITZ6uxWfBdMT", "itemSku": "lLsufr7Y7JMnK67N", "itemType": "zwLFhlV7qUUVe75N"}, {"count": 15, "duration": 67, "endDate": "1995-10-31T00:00:00Z", "itemId": "ExgTZc88SlDeRctW", "itemSku": "MMJkhRG5fNzXm6yF", "itemType": "hUI0mdEkMc7GfU8r"}], "name": "jhan76RKJGoTMHbU", "odds": 0.03431857073765332, "type": "REWARD_GROUP", "weight": 31}, {"lootBoxItems": [{"count": 93, "duration": 46, "endDate": "1993-09-11T00:00:00Z", "itemId": "DkYeYVzdOuYoPkG4", "itemSku": "avXUEuLrL5J7iNA9", "itemType": "Q690Vzbvqzt601Py"}, {"count": 64, "duration": 78, "endDate": "1978-09-24T00:00:00Z", "itemId": "rCTwudoGIg2mUJus", "itemSku": "Mi3CrkOF7MOqAaOO", "itemType": "GNJq4IFcOxQtFsun"}, {"count": 25, "duration": 11, "endDate": "1979-01-13T00:00:00Z", "itemId": "7BFiGXirTSrTH73b", "itemSku": "MG56BmD90JoGRWL9", "itemType": "Ak6obCxuK4MO799d"}], "name": "B5dKhK0u8ocGmGDf", "odds": 0.9590519995114071, "type": "PROBABILITY_GROUP", "weight": 69}, {"lootBoxItems": [{"count": 50, "duration": 14, "endDate": "1991-02-18T00:00:00Z", "itemId": "YxHRTlI4uZCbg6ct", "itemSku": "f3BSWkLP3ec5tiwE", "itemType": "8kVayXd854Qy8qMb"}, {"count": 52, "duration": 30, "endDate": "1996-03-13T00:00:00Z", "itemId": "KBthfJJVG8PzmMUE", "itemSku": "HkoFcmJbBPsoNLU2", "itemType": "9QPqfBFkwKcS8kGA"}, {"count": 15, "duration": 60, "endDate": "1997-02-26T00:00:00Z", "itemId": "hN5eGQvptxojIkLq", "itemSku": "801a25YiPFY11vVp", "itemType": "JgcHaRH0vEbX1jDM"}], "name": "Xw8lr0MemcsvIHam", "odds": 0.7815649228466993, "type": "REWARD_GROUP", "weight": 37}], "rollFunction": "CUSTOM"}, "maxCount": 50, "maxCountPerUser": 83, "name": "Wgx8xMMx23QhVEUk", "optionBoxConfig": {"boxItems": [{"count": 93, "duration": 81, "endDate": "1986-01-06T00:00:00Z", "itemId": "3mtTirQBmXLLoo7U", "itemSku": "9T1UAfx2vQZ0hR8Z", "itemType": "Wz1XYeSpjxdocCXQ"}, {"count": 61, "duration": 49, "endDate": "1998-04-14T00:00:00Z", "itemId": "XMBuwx0TfJxYRbOg", "itemSku": "nsBZPZB8RQROZ0aU", "itemType": "1WcHxYyTYbd7Q0BY"}, {"count": 52, "duration": 73, "endDate": "1976-02-19T00:00:00Z", "itemId": "ps7iDzdQLclgwL55", "itemSku": "jAETFed0UfsD72fB", "itemType": "e2EZISL97oSIb7Fq"}]}, "purchasable": true, "recurring": {"cycle": "MONTHLY", "fixedFreeDays": 100, "fixedTrialCycles": 42, "graceDays": 49}, "regionData": {"aw6EmRlVeEqSkgrK": [{"currencyCode": "Hs0T9y3FGVC1cq1H", "currencyNamespace": "0ul0VudnF1PdH0oU", "currencyType": "VIRTUAL", "discountAmount": 88, "discountExpireAt": "1971-09-25T00:00:00Z", "discountPercentage": 88, "discountPurchaseAt": "1993-09-07T00:00:00Z", "expireAt": "1973-07-01T00:00:00Z", "price": 27, "purchaseAt": "1981-11-23T00:00:00Z", "trialPrice": 52}, {"currencyCode": "wByNHizmCrqWDuHF", "currencyNamespace": "wXYiiIogG8YJmnpu", "currencyType": "VIRTUAL", "discountAmount": 64, "discountExpireAt": "1991-12-18T00:00:00Z", "discountPercentage": 58, "discountPurchaseAt": "1993-03-11T00:00:00Z", "expireAt": "1972-08-01T00:00:00Z", "price": 14, "purchaseAt": "1978-04-18T00:00:00Z", "trialPrice": 6}, {"currencyCode": "YtYENyg4fqv5kjIW", "currencyNamespace": "MqcGadf8vBPExb7U", "currencyType": "REAL", "discountAmount": 40, "discountExpireAt": "1972-06-09T00:00:00Z", "discountPercentage": 94, "discountPurchaseAt": "1979-12-25T00:00:00Z", "expireAt": "1999-12-10T00:00:00Z", "price": 53, "purchaseAt": "1990-07-20T00:00:00Z", "trialPrice": 59}], "kBqlKt4nNAwFxKlU": [{"currencyCode": "ffzh7arHQed5XNPF", "currencyNamespace": "cq5sOXq3qxazJlUX", "currencyType": "REAL", "discountAmount": 81, "discountExpireAt": "1978-07-26T00:00:00Z", "discountPercentage": 19, "discountPurchaseAt": "1981-11-30T00:00:00Z", "expireAt": "1974-07-15T00:00:00Z", "price": 74, "purchaseAt": "1990-10-25T00:00:00Z", "trialPrice": 62}, {"currencyCode": "ofatTGzmVgv8zXpZ", "currencyNamespace": "Blt4pcXApA8QJBiv", "currencyType": "REAL", "discountAmount": 45, "discountExpireAt": "1979-03-06T00:00:00Z", "discountPercentage": 63, "discountPurchaseAt": "1979-12-31T00:00:00Z", "expireAt": "1992-10-16T00:00:00Z", "price": 62, "purchaseAt": "1996-08-10T00:00:00Z", "trialPrice": 32}, {"currencyCode": "hhKHsrvpUiZXj5N7", "currencyNamespace": "oq25FwizEjbIdbT3", "currencyType": "VIRTUAL", "discountAmount": 21, "discountExpireAt": "1983-12-19T00:00:00Z", "discountPercentage": 37, "discountPurchaseAt": "1997-06-26T00:00:00Z", "expireAt": "1982-11-08T00:00:00Z", "price": 64, "purchaseAt": "1981-09-23T00:00:00Z", "trialPrice": 19}], "die54M6DYeGZcMW9": [{"currencyCode": "3Fflvy5mIMzWX3jZ", "currencyNamespace": "rCeMa1X1dQo0ud6P", "currencyType": "VIRTUAL", "discountAmount": 32, "discountExpireAt": "1987-11-16T00:00:00Z", "discountPercentage": 96, "discountPurchaseAt": "1976-03-26T00:00:00Z", "expireAt": "1976-01-29T00:00:00Z", "price": 28, "purchaseAt": "1975-02-13T00:00:00Z", "trialPrice": 61}, {"currencyCode": "ASb6BJjGtAF4zsW0", "currencyNamespace": "wvQ9uI6HwJuM7MqC", "currencyType": "VIRTUAL", "discountAmount": 78, "discountExpireAt": "1996-03-26T00:00:00Z", "discountPercentage": 82, "discountPurchaseAt": "1983-07-07T00:00:00Z", "expireAt": "1999-05-14T00:00:00Z", "price": 14, "purchaseAt": "1976-01-20T00:00:00Z", "trialPrice": 25}, {"currencyCode": "l51OnOHIUAdtqJHx", "currencyNamespace": "D94Mb4Uit0ECESNY", "currencyType": "REAL", "discountAmount": 36, "discountExpireAt": "1993-11-27T00:00:00Z", "discountPercentage": 57, "discountPurchaseAt": "1997-09-16T00:00:00Z", "expireAt": "1977-10-27T00:00:00Z", "price": 46, "purchaseAt": "1993-04-06T00:00:00Z", "trialPrice": 69}]}, "saleConfig": {"currencyCode": "xdwq8FOd5S9fGQ9F", "price": 77}, "seasonType": "PASS", "sectionExclusive": false, "sellable": true, "sku": "1Ly5ldxcAVcU74FQ", "stackable": true, "status": "INACTIVE", "tags": ["nu25XStJMxZIEkcw", "EnGkgbkjOqI8hkxo", "v368wSabq8ZwR2Dn"], "targetCurrencyCode": "OLRxZ0sSLfmOSHa5", "targetNamespace": "HsmwHkzDLkfJs4tD", "thumbnailUrl": "ESy8TLDpbHzyBLAp", "useCount": 64}' \
    > test.out 2>&1
eval_tap $? 116 'UpdateItem' test.out

#- 117 DeleteItem
samples/cli/sample-apps Platform deleteItem \
    --itemId 'bI8KmEN1YpJxI7Ti' \
    --namespace $AB_NAMESPACE \
    --force 'false' \
    --storeId 'kVvcKivksDZf4KH5' \
    > test.out 2>&1
eval_tap $? 117 'DeleteItem' test.out

#- 118 AcquireItem
samples/cli/sample-apps Platform acquireItem \
    --itemId 'HNnYlvyDBR9mW5Ni' \
    --namespace $AB_NAMESPACE \
    --body '{"count": 61, "orderNo": "3Q9YvlzCSMer32r5"}' \
    > test.out 2>&1
eval_tap $? 118 'AcquireItem' test.out

#- 119 GetApp
samples/cli/sample-apps Platform getApp \
    --itemId 'jgri10NNmwpWvJOw' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --storeId '69SbaJ8itCAiI1qI' \
    > test.out 2>&1
eval_tap $? 119 'GetApp' test.out

#- 120 UpdateApp
samples/cli/sample-apps Platform updateApp \
    --itemId '2uGxIG7R9UfqvIvN' \
    --namespace $AB_NAMESPACE \
    --storeId '2mjSvVyWpbJ7gIGC' \
    --body '{"carousel": [{"alt": "j6rwIN4ptjw7jrTn", "previewUrl": "KMFoNyzuquH0Grhw", "thumbnailUrl": "ifEJm0JfBmDzX9LR", "type": "video", "url": "e7b00pUfYhU3RbCS", "videoSource": "generic"}, {"alt": "gpwHoxykKbndIhlI", "previewUrl": "o2KFM9qPXObUSN4x", "thumbnailUrl": "NlqXqJEVqsrrbxW5", "type": "video", "url": "kE15KA77SGWcgsCZ", "videoSource": "vimeo"}, {"alt": "TnD2xkfkt8cs4rJw", "previewUrl": "IGWOXKdk1PUwQmyr", "thumbnailUrl": "VIddRh1yzIZrIgW4", "type": "video", "url": "vh00HUaTd6VH2sAX", "videoSource": "youtube"}], "developer": "AaxQLbPOnb1Gecv3", "forumUrl": "VZqvkMg8ieINcXPL", "genres": ["Sports", "Indie", "Racing"], "localizations": {"HXS1mySRLRVdvawj": {"announcement": "tJh3WLGagK8xUOU1", "slogan": "0clGWkado5e5YALJ"}, "BwJpXXt8YY9Laoa7": {"announcement": "pHSHOWcjtqaAp7HI", "slogan": "od1Z8broK7FapZZk"}, "1olDQ5lvH2Kqdl8p": {"announcement": "NJqT9NEm0Lilggxt", "slogan": "ljFQPc9e4z3ruGsQ"}}, "platformRequirements": {"RG7HrfQ8K4Pv8DSW": [{"additionals": "v6k9xtY9sYSoBmjD", "directXVersion": "OmAxjyuqYzfZYE8w", "diskSpace": "3WJlaRdAiNscV35M", "graphics": "t9xeEciDKG3NLsmf", "label": "1aAK7c7ZRUY0o96f", "osVersion": "bwQ9TwGAuId1Ch5c", "processor": "YDBw21VGUmyAJgRJ", "ram": "ZRZvkUrzDp4zsOrO", "soundCard": "qbCwYxoqu5Wbawwb"}, {"additionals": "TyHdU3EJ6olyf0cq", "directXVersion": "TbRxGh7qlVpTNuvC", "diskSpace": "bbyAuriN21o9GqlA", "graphics": "OB0JzEBxMIAtWBkw", "label": "8oBVXQ1OAdiHDK9c", "osVersion": "cNdOy7vrYGyUjavJ", "processor": "6w7AIaJStrF1Rci3", "ram": "dLkqHidTl66EBzts", "soundCard": "mHZnUX4pUNe0RSAX"}, {"additionals": "KVjVExaWXXBLW0B5", "directXVersion": "3glOkivWuGNK5HA5", "diskSpace": "nH7thcsPLQZb8Wwu", "graphics": "FmhjUe2eDRZS9ZmM", "label": "PyxhASFEcQKjk5yX", "osVersion": "1xOpAn4LzdPCpb6w", "processor": "9SzBJV4wkp8bnoDb", "ram": "YJITRFpMuE1KVSJB", "soundCard": "DTgpZ3rAUpdofrnY"}], "CH0UOEngJ8PPlsL6": [{"additionals": "neSfCydPYT94f2pu", "directXVersion": "7xKcnzpYF283sJdC", "diskSpace": "26dLvdiQDEWKGFuw", "graphics": "58A0PkpduulnUWM6", "label": "l5e0PhXYCrZFaARg", "osVersion": "dWCHR3l6VlOVVWLi", "processor": "dwXKmwy1zy7DoLek", "ram": "d7kIA3K87d7w0NXE", "soundCard": "K7jxTTrPqB3ngLHr"}, {"additionals": "Pb9td4f4VBXxVsgt", "directXVersion": "RVA9LyYTmCNgSUkk", "diskSpace": "nxG3pS9nWudxDAzq", "graphics": "AdiQfUqdMoDtPGwt", "label": "lPju6iV9a7Ufom2T", "osVersion": "ybOlhKYrUc0ExlK4", "processor": "yWminXuFXei6xEYF", "ram": "G6cLG0G77YqzTDoN", "soundCard": "Ficf0flWWpwAFypt"}, {"additionals": "IshV7TnG5LXio8Ui", "directXVersion": "TCpZjeZMkefMs930", "diskSpace": "2HUYBwYnnI95tmkY", "graphics": "BCE6OVoxGUU7ixhO", "label": "Ybt6YnZSjMZE5uXe", "osVersion": "0uG9YxGiDoQkucVD", "processor": "w5vl9idbzfhQwNeu", "ram": "bcOltmmH4DCPQ2xc", "soundCard": "AkKvazQrSn2Ile9M"}], "Flq1SM45Za2qBBCb": [{"additionals": "B4DMjTJSnAuylVOo", "directXVersion": "Y4siD9sq8ldwgFsC", "diskSpace": "iKI4mh8KBJcrdLVf", "graphics": "I8QQmJTfvXC6GOZ7", "label": "w78u0HAPTVvgfM1F", "osVersion": "zO7pkwvEQOjkuiad", "processor": "RA8RhsfUig6muwGr", "ram": "h9CAdORFfWffh9VK", "soundCard": "JsQzmTvMPbTfIEDj"}, {"additionals": "JPHvvCiSGFb3heSS", "directXVersion": "rgkXa2IwhRgU7J0m", "diskSpace": "FexFyyEIqrPffgqZ", "graphics": "Z5nv7nQxgDjIJtMy", "label": "iFTDzO71jNCYTyt0", "osVersion": "UwDfEvQsCHWAOS0C", "processor": "RgoA7abGGx6gFDXX", "ram": "HYjDY8W0NWwkFued", "soundCard": "tttinI98segdzaif"}, {"additionals": "n0qodcJHUcE5Sgal", "directXVersion": "BpNxJCMvTJGqQdND", "diskSpace": "hB7yT1yWf2S5kMgc", "graphics": "y5U3Kl2MBtazrGPy", "label": "uc3steFAsZINKLpC", "osVersion": "5OxfwQgC3Gv60Cj8", "processor": "MFYAzV6cr4690Uh8", "ram": "tDGBoczW0VicPlyK", "soundCard": "rEOOOYp4JhGadHGC"}]}, "platforms": ["Android", "MacOS", "IOS"], "players": ["Coop", "CrossPlatformMulti", "Coop"], "primaryGenre": "Simulation", "publisher": "aPHruZfO3jnNogvD", "releaseDate": "1978-07-05T00:00:00Z", "websiteUrl": "Wiz2fnm4BwC5ki4S"}' \
    > test.out 2>&1
eval_tap $? 120 'UpdateApp' test.out

#- 121 DisableItem
samples/cli/sample-apps Platform disableItem \
    --itemId 'wRNWPixg6akjxT3h' \
    --namespace $AB_NAMESPACE \
    --storeId 'XXFZ5klKyUK31sUW' \
    > test.out 2>&1
eval_tap $? 121 'DisableItem' test.out

#- 122 GetItemDynamicData
samples/cli/sample-apps Platform getItemDynamicData \
    --itemId 'q8CEoL4NJyFZcI18' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 122 'GetItemDynamicData' test.out

#- 123 EnableItem
samples/cli/sample-apps Platform enableItem \
    --itemId 'ay5Qy1l6z3Dlb5lJ' \
    --namespace $AB_NAMESPACE \
    --storeId 'aoI9zLn8jdi6awKC' \
    > test.out 2>&1
eval_tap $? 123 'EnableItem' test.out

#- 124 FeatureItem
samples/cli/sample-apps Platform featureItem \
    --feature 'M0GOcQWXHPKgQjw1' \
    --itemId 'cLrhcJJOBo1Bt5y8' \
    --namespace $AB_NAMESPACE \
    --storeId 'dCa4UDTEn6uGMpSP' \
    > test.out 2>&1
eval_tap $? 124 'FeatureItem' test.out

#- 125 DefeatureItem
samples/cli/sample-apps Platform defeatureItem \
    --feature 'x2za7M9VbNXVtbWs' \
    --itemId 'SkmdT4qlI0YWhvQI' \
    --namespace $AB_NAMESPACE \
    --storeId 'UgOgcnX3b7Vw00kd' \
    > test.out 2>&1
eval_tap $? 125 'DefeatureItem' test.out

#- 126 GetLocaleItem
samples/cli/sample-apps Platform getLocaleItem \
    --itemId 'wlz7abBLsRwKrZp6' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --language 'eQHkNmCelBD2l8Ub' \
    --populateBundle 'true' \
    --region 'kGzJmc4JGwtOsPKN' \
    --storeId '8fEgkjh8W1IBA8kB' \
    > test.out 2>&1
eval_tap $? 126 'GetLocaleItem' test.out

#- 127 UpdateItemPurchaseCondition
samples/cli/sample-apps Platform updateItemPurchaseCondition \
    --itemId 'zwaLGOW2NxMv1fyk' \
    --namespace $AB_NAMESPACE \
    --storeId 'VW1hjck0tmvxTUxm' \
    --body '{"purchaseCondition": {"conditionGroups": [{"operator": "and", "predicates": [{"anyOf": 29, "comparison": "isGreaterThanOrEqual", "name": "eWGgIBKSZyc4zXQO", "predicateType": "SeasonPassPredicate", "value": "qR7NyK06nfYCwNFe", "values": ["OPo7HWjMH3DAAOto", "LyyRoGNRDH9qe5Ja", "GBszLL248Qmu9fZo"]}, {"anyOf": 88, "comparison": "excludes", "name": "5tuzxk6v6ZO3SBXk", "predicateType": "EntitlementPredicate", "value": "0IwwXHOMJxELEKA9", "values": ["HCRaOTVjMvh5HOBQ", "4KXrguP3irl9ipRC", "BqXReY6IZc7QhnJH"]}, {"anyOf": 2, "comparison": "isGreaterThanOrEqual", "name": "Gz8ok73IDpeNtMA4", "predicateType": "SeasonPassPredicate", "value": "4EiPZcTSp87vmuru", "values": ["egg5qXwOKWNeH0S3", "vVMBadLEF4xIoUv9", "B7zKbLq4AokcjqeY"]}]}, {"operator": "and", "predicates": [{"anyOf": 17, "comparison": "isNot", "name": "YOIIhnYHTYR3RUBb", "predicateType": "SeasonTierPredicate", "value": "RJJDL8N3Gt3x2wa5", "values": ["hYSDyF7QAaOVbLed", "VdW2KApeptYeJee2", "ngNKlFjR3RKfv6ew"]}, {"anyOf": 51, "comparison": "includes", "name": "w9oBjJkpJVGcEJ1Z", "predicateType": "SeasonTierPredicate", "value": "ALuXvh17eYt9Dq3N", "values": ["50ogOTNfeXQoWHXr", "xl6tjHxciL1CiHac", "XDHyi2h9jw6AYWTw"]}, {"anyOf": 15, "comparison": "isGreaterThanOrEqual", "name": "lXtDL6wyU73o7uIB", "predicateType": "SeasonTierPredicate", "value": "DjzZu7EwfHEteqna", "values": ["G75aS3SLtNJOYhEW", "m4AYKCn0x5Je5FBD", "nQFwJGbEhhz80OrU"]}]}, {"operator": "and", "predicates": [{"anyOf": 16, "comparison": "isGreaterThan", "name": "vt5TWjOE5jRRD22K", "predicateType": "EntitlementPredicate", "value": "ewBdL6RvsOHOYOfW", "values": ["akffKfKPrU0FT7kb", "XqtNjcallZqYbcaZ", "goXlG9cwTqT7RfVw"]}, {"anyOf": 27, "comparison": "excludes", "name": "HveZc1w3tf9OXSNN", "predicateType": "SeasonTierPredicate", "value": "rh9ColwyfbWwzN60", "values": ["yBrqFxH9hmd1uWVa", "h8XZNh23oa16s2JI", "jCV75lXJcOFJ2Q4r"]}, {"anyOf": 94, "comparison": "excludes", "name": "MCQ43bELEsxaQP1p", "predicateType": "SeasonPassPredicate", "value": "NNVHXeW7bmpjdKs5", "values": ["pHnKGSCjWIeOTJbD", "jTSKZs3K11X0PxnW", "3anlhaIVuz8QWD0M"]}]}]}}' \
    > test.out 2>&1
eval_tap $? 127 'UpdateItemPurchaseCondition' test.out

#- 128 ReturnItem
samples/cli/sample-apps Platform returnItem \
    --itemId 'eEAjVzR28rEVH0KE' \
    --namespace $AB_NAMESPACE \
    --body '{"orderNo": "Ns6NzmhDRTYaOxSC"}' \
    > test.out 2>&1
eval_tap $? 128 'ReturnItem' test.out

#- 129 QueryKeyGroups
samples/cli/sample-apps Platform queryKeyGroups \
    --namespace $AB_NAMESPACE \
    --limit '97' \
    --name 't98vN4WfLqzPGh6f' \
    --offset '16' \
    --tag 'GfOj1d3CElPazKzL' \
    > test.out 2>&1
eval_tap $? 129 'QueryKeyGroups' test.out

#- 130 CreateKeyGroup
samples/cli/sample-apps Platform createKeyGroup \
    --namespace $AB_NAMESPACE \
    --body '{"description": "2Sn7tuz5DV0ozjBZ", "name": "INcbyNf6lTru7Gaj", "status": "INACTIVE", "tags": ["eLKa3oGqqlJsnkOl", "j7AaWOkS4mrPzZKJ", "WvpIOuZB5QlF5Lm3"]}' \
    > test.out 2>&1
eval_tap $? 130 'CreateKeyGroup' test.out

#- 131 GetKeyGroupByBoothName
eval_tap 0 131 'GetKeyGroupByBoothName # SKIP deprecated' test.out

#- 132 GetKeyGroup
samples/cli/sample-apps Platform getKeyGroup \
    --keyGroupId '3LBx73cr52UP7RtX' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 132 'GetKeyGroup' test.out

#- 133 UpdateKeyGroup
samples/cli/sample-apps Platform updateKeyGroup \
    --keyGroupId 'KPfySUruHhAHeeoh' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "UHEIeNOq2XXbko5W", "name": "Q9v8cJzTR7QD2Rtb", "status": "INACTIVE", "tags": ["8XvxIme7nGhyHqhT", "LuwhFvQ2NMgAkOuU", "JJ7iS39VEKcCdEPq"]}' \
    > test.out 2>&1
eval_tap $? 133 'UpdateKeyGroup' test.out

#- 134 GetKeyGroupDynamic
samples/cli/sample-apps Platform getKeyGroupDynamic \
    --keyGroupId '2dIBsTwPkdxWmcfr' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 134 'GetKeyGroupDynamic' test.out

#- 135 ListKeys
samples/cli/sample-apps Platform listKeys \
    --keyGroupId 'dCvK50w3DVZIUflT' \
    --namespace $AB_NAMESPACE \
    --limit '100' \
    --offset '59' \
    --status 'ACTIVE' \
    > test.out 2>&1
eval_tap $? 135 'ListKeys' test.out

#- 136 UploadKeys
samples/cli/sample-apps Platform uploadKeys \
    --keyGroupId '4HMsqqePj1FGfIUQ' \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 136 'UploadKeys' test.out

#- 137 QueryOrders
samples/cli/sample-apps Platform queryOrders \
    --namespace $AB_NAMESPACE \
    --endTime 'PZkzB5g0pkAQMCBY' \
    --limit '74' \
    --offset '4' \
    --orderNos '["I16B5ORecdvsE1KE", "wxz20TNil98wwkt7", "Ul070CIDDD4w0oOa"]' \
    --sortBy '91fSYf5NmGhnoSXk' \
    --startTime 'eyJF7stgQpPlCM5C' \
    --status 'CHARGEBACK_REVERSED' \
    --withTotal 'false' \
    > test.out 2>&1
eval_tap $? 137 'QueryOrders' test.out

#- 138 GetOrderStatistics
samples/cli/sample-apps Platform getOrderStatistics \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 138 'GetOrderStatistics' test.out

#- 139 GetOrder
samples/cli/sample-apps Platform getOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'uXnnugNAA6uWZ1XD' \
    > test.out 2>&1
eval_tap $? 139 'GetOrder' test.out

#- 140 RefundOrder
samples/cli/sample-apps Platform refundOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'yOX2PpazqtkxH9Wx' \
    --body '{"description": "qCPTxFLjidoW9pQI"}' \
    > test.out 2>&1
eval_tap $? 140 'RefundOrder' test.out

#- 141 GetPaymentCallbackConfig
samples/cli/sample-apps Platform getPaymentCallbackConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 141 'GetPaymentCallbackConfig' test.out

#- 142 UpdatePaymentCallbackConfig
samples/cli/sample-apps Platform updatePaymentCallbackConfig \
    --namespace $AB_NAMESPACE \
    --body '{"dryRun": false, "notifyUrl": "9Ape6h5P7L379stU", "privateKey": "O9f0ZcPJdpyJf8wF"}' \
    > test.out 2>&1
eval_tap $? 142 'UpdatePaymentCallbackConfig' test.out

#- 143 QueryPaymentNotifications
samples/cli/sample-apps Platform queryPaymentNotifications \
    --namespace $AB_NAMESPACE \
    --endDate 'CmleVZR5ROKPPiF5' \
    --externalId 'eZjmxhpFmCt5Vf7t' \
    --limit '33' \
    --notificationSource 'PAYPAL' \
    --notificationType 'n4flVhRsffufoEba' \
    --offset '80' \
    --paymentOrderNo 'ZUxY4cbe8ylaIgu4' \
    --startDate 'q6DDc6eYGvwBQvSk' \
    --status 'IGNORED' \
    > test.out 2>&1
eval_tap $? 143 'QueryPaymentNotifications' test.out

#- 144 QueryPaymentOrders
samples/cli/sample-apps Platform queryPaymentOrders \
    --namespace $AB_NAMESPACE \
    --channel 'INTERNAL' \
    --extTxId '5pBF6O6FqzPAjuge' \
    --limit '91' \
    --offset '38' \
    --status 'CHARGEBACK' \
    > test.out 2>&1
eval_tap $? 144 'QueryPaymentOrders' test.out

#- 145 CreatePaymentOrderByDedicated
samples/cli/sample-apps Platform createPaymentOrderByDedicated \
    --namespace $AB_NAMESPACE \
    --body '{"currencyCode": "vRuL8baGbmx9andP", "currencyNamespace": "11hEf1RbDBT6MDU0", "customParameters": {"wOHIimD2dm53Tf6C": {}, "aM7bjJIPYGvyhdfw": {}, "bWPJk79xHzEVVEV0": {}}, "description": "awkAnRt8hpCXPbs2", "extOrderNo": "0zgYKXfc18DYXhxl", "extUserId": "FvAQxqIyGc7JIXPe", "itemType": "SEASON", "language": "qDC-oQvp_284", "metadata": {"s4OmYxpanvtyz9MK": "d9f5w3DwLkzr2kYS", "dupblugubOlrIxlH": "b6goUB71jZyF7rNA", "TAK6kFUNMz8wSaCz": "VkxMSJSckujmXPOK"}, "notifyUrl": "ZBhblZmaLXihJ845", "omitNotification": false, "platform": "Vl3JIo5FBVEGdwx2", "price": 8, "recurringPaymentOrderNo": "WTi4TvNJ8mhkvLfn", "region": "oIqJhQh2H6dskNc2", "returnUrl": "XoRfdFhmsj7ZFIR4", "sandbox": false, "sku": "rrYWRRTEOCjDqHfB", "subscriptionId": "EprTy7EEZvGOSWjH", "targetNamespace": "XxoEdne535aOx2pQ", "targetUserId": "uwkdtncZigsYg4uM", "title": "Bwsg8bX6tiVobAYY"}' \
    > test.out 2>&1
eval_tap $? 145 'CreatePaymentOrderByDedicated' test.out

#- 146 ListExtOrderNoByExtTxId
samples/cli/sample-apps Platform listExtOrderNoByExtTxId \
    --namespace $AB_NAMESPACE \
    --extTxId 'NN48jfdUqBoh3b66' \
    > test.out 2>&1
eval_tap $? 146 'ListExtOrderNoByExtTxId' test.out

#- 147 GetPaymentOrder
samples/cli/sample-apps Platform getPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'mL6t9mNF3Ebn4uTX' \
    > test.out 2>&1
eval_tap $? 147 'GetPaymentOrder' test.out

#- 148 ChargePaymentOrder
samples/cli/sample-apps Platform chargePaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'uAO71x8VA5qyYGp6' \
    --body '{"extTxId": "mdn39reILDqAms9H", "paymentMethod": "gs9UXwtu8lkUCR5Q", "paymentProvider": "CHECKOUT"}' \
    > test.out 2>&1
eval_tap $? 148 'ChargePaymentOrder' test.out

#- 149 RefundPaymentOrderByDedicated
samples/cli/sample-apps Platform refundPaymentOrderByDedicated \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'wABrYCrSk8llUJCU' \
    --body '{"description": "MvDVgmBFz1NV74lM"}' \
    > test.out 2>&1
eval_tap $? 149 'RefundPaymentOrderByDedicated' test.out

#- 150 SimulatePaymentOrderNotification
samples/cli/sample-apps Platform simulatePaymentOrderNotification \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'eYdVVNlewafC8Swp' \
    --body '{"amount": 33, "currencyCode": "lzKfU2QZrenduvOd", "notifyType": "CHARGE", "paymentProvider": "XSOLLA", "salesTax": 33, "vat": 61}' \
    > test.out 2>&1
eval_tap $? 150 'SimulatePaymentOrderNotification' test.out

#- 151 GetPaymentOrderChargeStatus
samples/cli/sample-apps Platform getPaymentOrderChargeStatus \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'KUDqvqfl0VUK9FDL' \
    > test.out 2>&1
eval_tap $? 151 'GetPaymentOrderChargeStatus' test.out

#- 152 GetPlatformWalletConfig
samples/cli/sample-apps Platform getPlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'GooglePlay' \
    > test.out 2>&1
eval_tap $? 152 'GetPlatformWalletConfig' test.out

#- 153 UpdatePlatformWalletConfig
samples/cli/sample-apps Platform updatePlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Xbox' \
    --body '{"allowedBalanceOrigins": ["Oculus", "IOS", "System"]}' \
    > test.out 2>&1
eval_tap $? 153 'UpdatePlatformWalletConfig' test.out

#- 154 ResetPlatformWalletConfig
samples/cli/sample-apps Platform resetPlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'IOS' \
    > test.out 2>&1
eval_tap $? 154 'ResetPlatformWalletConfig' test.out

#- 155 GetRevocationConfig
samples/cli/sample-apps Platform getRevocationConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 155 'GetRevocationConfig' test.out

#- 156 UpdateRevocationConfig
samples/cli/sample-apps Platform updateRevocationConfig \
    --namespace $AB_NAMESPACE \
    --body '{"entitlement": {"consumable": {"enabled": false, "strategy": "REVOKE_OR_REPORT"}, "durable": {"enabled": true, "strategy": "REVOKE_OR_REPORT"}}, "wallet": {"enabled": false, "strategy": "REVOKE_OR_REPORT"}}' \
    > test.out 2>&1
eval_tap $? 156 'UpdateRevocationConfig' test.out

#- 157 DeleteRevocationConfig
samples/cli/sample-apps Platform deleteRevocationConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 157 'DeleteRevocationConfig' test.out

#- 158 QueryRevocationHistories
samples/cli/sample-apps Platform queryRevocationHistories \
    --namespace $AB_NAMESPACE \
    --endTime 'vJyflN6y2gvYO6VR' \
    --limit '29' \
    --offset '33' \
    --source 'OTHER' \
    --startTime 'hNjkAuonrvclGixg' \
    --status 'SUCCESS' \
    --transactionId 'BJB3WgM6YVYjbPkB' \
    --userId '2BQp24Bms96QuNEp' \
    > test.out 2>&1
eval_tap $? 158 'QueryRevocationHistories' test.out

#- 159 GetRevocationPluginConfig
samples/cli/sample-apps Platform getRevocationPluginConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 159 'GetRevocationPluginConfig' test.out

#- 160 UpdateRevocationPluginConfig
samples/cli/sample-apps Platform updateRevocationPluginConfig \
    --namespace $AB_NAMESPACE \
    --body '{"appConfig": {"appName": "dTmNmDEQVz0KrqQC"}, "customConfig": {"connectionType": "TLS", "grpcServerAddress": "XeRIkPAZxfBMyZz8"}, "extendType": "APP"}' \
    > test.out 2>&1
eval_tap $? 160 'UpdateRevocationPluginConfig' test.out

#- 161 DeleteRevocationPluginConfig
samples/cli/sample-apps Platform deleteRevocationPluginConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 161 'DeleteRevocationPluginConfig' test.out

#- 162 UploadRevocationPluginConfigCert
samples/cli/sample-apps Platform uploadRevocationPluginConfigCert \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 162 'UploadRevocationPluginConfigCert' test.out

#- 163 CreateReward
samples/cli/sample-apps Platform createReward \
    --namespace $AB_NAMESPACE \
    --body '{"description": "lAIYQL9xrveDGwDZ", "eventTopic": "rJYiYbKIsLfOECso", "maxAwarded": 70, "maxAwardedPerUser": 55, "namespaceExpression": "RlXP8MN7x1tcOFVP", "rewardCode": "OhUMSHheejF5thNW", "rewardConditions": [{"condition": "gt9kBFp7xO20EyZ8", "conditionName": "ohz0WS0QaMiwVsQA", "eventName": "u5dVetMvaQVkdWji", "rewardItems": [{"duration": 15, "endDate": "1988-04-17T00:00:00Z", "itemId": "pi1rN5CADoGXs5B8", "quantity": 36}, {"duration": 25, "endDate": "1994-01-29T00:00:00Z", "itemId": "DyJqbuLqj7a3Vr82", "quantity": 30}, {"duration": 75, "endDate": "1974-10-20T00:00:00Z", "itemId": "eVrWYQRe3XYAsYBu", "quantity": 45}]}, {"condition": "hE24JuFGFZvm1fI1", "conditionName": "yjn1c4p2kUIq6Zmr", "eventName": "lCCnuRpUkKGy48OW", "rewardItems": [{"duration": 44, "endDate": "1996-02-27T00:00:00Z", "itemId": "hpfGfoxXc6XZeQVW", "quantity": 52}, {"duration": 95, "endDate": "1984-12-13T00:00:00Z", "itemId": "QSNBK8cYln5SUWmf", "quantity": 39}, {"duration": 59, "endDate": "1971-03-28T00:00:00Z", "itemId": "FmDMb6TY0F0WI5ag", "quantity": 9}]}, {"condition": "BW08HBwGuKCqt3yj", "conditionName": "NVg3p6HmOpBzYU3A", "eventName": "q6NvLrKSO3gdM8X6", "rewardItems": [{"duration": 29, "endDate": "1980-10-14T00:00:00Z", "itemId": "taArTI7k5Vio7yxk", "quantity": 34}, {"duration": 16, "endDate": "1978-01-14T00:00:00Z", "itemId": "iX4iqjcgecOtGpFI", "quantity": 30}, {"duration": 71, "endDate": "1986-10-10T00:00:00Z", "itemId": "oKYQIao7CjyjJUYf", "quantity": 46}]}], "userIdExpression": "GktvsD5l8No0t1fQ"}' \
    > test.out 2>&1
eval_tap $? 163 'CreateReward' test.out

#- 164 QueryRewards
samples/cli/sample-apps Platform queryRewards \
    --namespace $AB_NAMESPACE \
    --eventTopic 'Cz3n2N0O8upqMwh4' \
    --limit '11' \
    --offset '76' \
    --sortBy '["namespace", "namespace:desc", "rewardCode:asc"]' \
    > test.out 2>&1
eval_tap $? 164 'QueryRewards' test.out

#- 165 ExportRewards
samples/cli/sample-apps Platform exportRewards \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 165 'ExportRewards' test.out

#- 166 ImportRewards
samples/cli/sample-apps Platform importRewards \
    --namespace $AB_NAMESPACE \
    --replaceExisting 'false' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 166 'ImportRewards' test.out

#- 167 GetReward
samples/cli/sample-apps Platform getReward \
    --namespace $AB_NAMESPACE \
    --rewardId 'x2E0zwYDzsBYCd8j' \
    > test.out 2>&1
eval_tap $? 167 'GetReward' test.out

#- 168 UpdateReward
samples/cli/sample-apps Platform updateReward \
    --namespace $AB_NAMESPACE \
    --rewardId 'RKNgOnbLtCZ6q1Uh' \
    --body '{"description": "aBSmLZtJgtVLkbwv", "eventTopic": "JR2Oaofl8Gf8sjHd", "maxAwarded": 6, "maxAwardedPerUser": 67, "namespaceExpression": "iMLF9fEiuZQPBucD", "rewardCode": "w9AfUnuKN98wO2Bn", "rewardConditions": [{"condition": "aE714cs8hYwRB0s2", "conditionName": "ZCPV3ymNFQCNXD3S", "eventName": "Wv7DIiMnhYtt8C4B", "rewardItems": [{"duration": 77, "endDate": "1974-01-05T00:00:00Z", "itemId": "k0IRoEgAoa7E1lrP", "quantity": 73}, {"duration": 39, "endDate": "1986-10-10T00:00:00Z", "itemId": "8N0E2iblZHpCQAYy", "quantity": 11}, {"duration": 71, "endDate": "1979-04-16T00:00:00Z", "itemId": "2X1qGTpxK9JAHR1e", "quantity": 35}]}, {"condition": "9gtXmlO4l8ifDgGy", "conditionName": "bBe9YZi9AjD3KH07", "eventName": "kEiUVDBrrxIfwkXn", "rewardItems": [{"duration": 17, "endDate": "1985-07-20T00:00:00Z", "itemId": "q7iw6VjNEqdMvTjq", "quantity": 85}, {"duration": 13, "endDate": "1984-06-05T00:00:00Z", "itemId": "zq7jzFxF19iRVysz", "quantity": 9}, {"duration": 24, "endDate": "1989-09-23T00:00:00Z", "itemId": "MitRQNn7B5Lelfy3", "quantity": 23}]}, {"condition": "2DVdUsSlVojTpLty", "conditionName": "Fd4CQveWubv3Xlwd", "eventName": "06rSkRzWXduWHJDJ", "rewardItems": [{"duration": 33, "endDate": "1971-06-30T00:00:00Z", "itemId": "cxwAj9T6VpfbYI39", "quantity": 58}, {"duration": 16, "endDate": "1985-12-06T00:00:00Z", "itemId": "IiR0HscMdIkVRXa3", "quantity": 31}, {"duration": 31, "endDate": "1997-10-05T00:00:00Z", "itemId": "VIAbkUY5wwJlQqMX", "quantity": 57}]}], "userIdExpression": "z8oS1C59Xwi5deAT"}' \
    > test.out 2>&1
eval_tap $? 168 'UpdateReward' test.out

#- 169 DeleteReward
samples/cli/sample-apps Platform deleteReward \
    --namespace $AB_NAMESPACE \
    --rewardId 'Rs3zIOEQ8YHbQE4N' \
    > test.out 2>&1
eval_tap $? 169 'DeleteReward' test.out

#- 170 CheckEventCondition
samples/cli/sample-apps Platform checkEventCondition \
    --namespace $AB_NAMESPACE \
    --rewardId '2515WgUExlkFMsUm' \
    --body '{"payload": {"o9bYk8CNXuRrPgx0": {}, "jJug8jDUrNJ605Ry": {}, "bdLpH9FDUqGT72rz": {}}}' \
    > test.out 2>&1
eval_tap $? 170 'CheckEventCondition' test.out

#- 171 DeleteRewardConditionRecord
samples/cli/sample-apps Platform deleteRewardConditionRecord \
    --namespace $AB_NAMESPACE \
    --rewardId '3Aai36qycJgbkULn' \
    --body '{"conditionName": "hKWT01QqghFYajuf", "userId": "lv7WEuIBRokD19gR"}' \
    > test.out 2>&1
eval_tap $? 171 'DeleteRewardConditionRecord' test.out

#- 172 QuerySections
samples/cli/sample-apps Platform querySections \
    --namespace $AB_NAMESPACE \
    --end 'f0PGBbHNs6vKssIb' \
    --limit '38' \
    --offset '18' \
    --start 'CPA2SwAirwkRmqwp' \
    --storeId 'vQFVahQISBT8ZpBd' \
    --viewId 'NesLPtSiYzEEfFJQ' \
    > test.out 2>&1
eval_tap $? 172 'QuerySections' test.out

#- 173 CreateSection
samples/cli/sample-apps Platform createSection \
    --namespace $AB_NAMESPACE \
    --storeId 'GC0Q0KgOQfNMp5Dp' \
    --body '{"active": false, "displayOrder": 45, "endDate": "1986-06-17T00:00:00Z", "ext": {"2B3ZK6GV9rV4vrud": {}, "nXxwOPXDr0Dm0FpV": {}, "4TEFKxmbMLW18CX8": {}}, "fixedPeriodRotationConfig": {"backfillType": "NONE", "duration": 27, "itemCount": 39, "rule": "SEQUENCE"}, "items": [{"id": "yR12yaQtGFb401bR", "sku": "nAIEntYwcorlIj1G"}, {"id": "eKgpjke8d1H2U4A8", "sku": "tsplvfNRMizbrqe0"}, {"id": "fLTJKJW0vOoC3DLK", "sku": "x0MEXFuXqiUcFvnk"}], "localizations": {"7qz1ay4TMJhYdQ9T": {"description": "dnKLwjrr4UiW5rhY", "localExt": {"izhDD8uE1OLn1vkb": {}, "HJUQppRnqbxRr4KB": {}, "z7LJnohd6XUWLNGG": {}}, "longDescription": "RykXV05K6v2vdQv6", "title": "mtmX1FmmtK20GKT6"}, "dEjM5zjG8yYxgvKi": {"description": "DFAPiBGTpSe0whmk", "localExt": {"wyfBALai2TAWml9t": {}, "7NhfNWESbsdUinCl": {}, "bzN9DgXWsbCg5gJr": {}}, "longDescription": "p1nrpl26EoZiLgoz", "title": "OZHHCc4xKzcjg2x1"}, "vAsBMWjRJYuM9KDg": {"description": "gTmDagGit27eywyy", "localExt": {"K0kbCQf4UunmkOdM": {}, "4jEh6T7FLoJVxBiV": {}, "tu4P48qkWOr8w1B3": {}}, "longDescription": "STR8kyvviV17epxY", "title": "qN8mB3V2aHz6m3VH"}}, "name": "AZVu3BzEbWCWKUH2", "rotationType": "NONE", "startDate": "1976-09-14T00:00:00Z", "viewId": "c3mUYX6lNI2VEZg9"}' \
    > test.out 2>&1
eval_tap $? 173 'CreateSection' test.out

#- 174 PurgeExpiredSection
samples/cli/sample-apps Platform purgeExpiredSection \
    --namespace $AB_NAMESPACE \
    --storeId 'f6RnNf1VZIwoh7v7' \
    > test.out 2>&1
eval_tap $? 174 'PurgeExpiredSection' test.out

#- 175 GetSection
samples/cli/sample-apps Platform getSection \
    --namespace $AB_NAMESPACE \
    --sectionId 'qop6MvTnLHgsxZyE' \
    --storeId 'vhDOYDXq2hNb20PD' \
    > test.out 2>&1
eval_tap $? 175 'GetSection' test.out

#- 176 UpdateSection
samples/cli/sample-apps Platform updateSection \
    --namespace $AB_NAMESPACE \
    --sectionId 'OiLX88kGQ5DsdR9O' \
    --storeId 'qTmfhGBbIMbSMtgH' \
    --body '{"active": false, "displayOrder": 87, "endDate": "1986-05-30T00:00:00Z", "ext": {"PfTMyFCRFIa88X5g": {}, "iILHLVWPduW1TlI7": {}, "YOy1OLD0dqE7QwLM": {}}, "fixedPeriodRotationConfig": {"backfillType": "CUSTOM", "duration": 85, "itemCount": 44, "rule": "SEQUENCE"}, "items": [{"id": "Mf5VbKiJfwcQh2WW", "sku": "DJ7jxIbeH19wLZco"}, {"id": "XqDiQAFIurf9Hdfx", "sku": "YiNJJxStoo42iLSh"}, {"id": "U8h8UVwddJVxRTiH", "sku": "MPHUbMv8SVYk2Lps"}], "localizations": {"mU0fVww4BmtO8uBj": {"description": "vbmsmE2iZgTZ5IKm", "localExt": {"hijRfVJVybAfDaJq": {}, "Ni8CF4FIzWEP3z8V": {}, "dwvFUOo4n54rA2n9": {}}, "longDescription": "AB0YpWuDF5kdZOkY", "title": "Pix8xIRyZ6LuB9oF"}, "vLTl37YbXqwxdOl1": {"description": "ybctaXGvGan0Ro2y", "localExt": {"3mtMBX8LWzPkldE8": {}, "zqUFWnkHCa7EQMB9": {}, "9zvFCfitAqsT9MAn": {}}, "longDescription": "fuKSs8H2ebyPpeP2", "title": "ioW3DxALuGVDzKY7"}, "r2Z1VVnFxdprIVFc": {"description": "NVOgf4js309nM2Hl", "localExt": {"YUtSC7tmR5ad1JZa": {}, "KxspsnoNKrOeMNgt": {}, "UxcYJ0ZvlTiUIW0J": {}}, "longDescription": "9vCw68XfTTldDbGJ", "title": "K4cDRa8bloWzpydo"}}, "name": "z5Rj6EpgNjWZAwna", "rotationType": "NONE", "startDate": "1988-09-24T00:00:00Z", "viewId": "QaGXUAKqTrRTXVBv"}' \
    > test.out 2>&1
eval_tap $? 176 'UpdateSection' test.out

#- 177 DeleteSection
samples/cli/sample-apps Platform deleteSection \
    --namespace $AB_NAMESPACE \
    --sectionId 'sYilI7wvYta2VRRf' \
    --storeId 'sAHJUH4annfC2Mzx' \
    > test.out 2>&1
eval_tap $? 177 'DeleteSection' test.out

#- 178 ListStores
samples/cli/sample-apps Platform listStores \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 178 'ListStores' test.out

#- 179 CreateStore
samples/cli/sample-apps Platform createStore \
    --namespace $AB_NAMESPACE \
    --body '{"defaultLanguage": "h9N0NVJwvpUWWRzc", "defaultRegion": "KfLXJR6VovUKrJqu", "description": "cXG5RdAF1NuVGEix", "supportedLanguages": ["np9LUX10GsM5z96I", "03yznSbDoRa9neFS", "tT1y33kXU32PF5vM"], "supportedRegions": ["tLWbhdUKbSplL0L0", "hC43RPUVjcbf8DJO", "Zeea9bcczYWqu94M"], "title": "LtHY6n2d3GHH7WgP"}' \
    > test.out 2>&1
eval_tap $? 179 'CreateStore' test.out

#- 180 ImportStore
eval_tap 0 180 'ImportStore # SKIP deprecated' test.out

#- 181 GetPublishedStore
samples/cli/sample-apps Platform getPublishedStore \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 181 'GetPublishedStore' test.out

#- 182 DeletePublishedStore
samples/cli/sample-apps Platform deletePublishedStore \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 182 'DeletePublishedStore' test.out

#- 183 GetPublishedStoreBackup
samples/cli/sample-apps Platform getPublishedStoreBackup \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 183 'GetPublishedStoreBackup' test.out

#- 184 RollbackPublishedStore
samples/cli/sample-apps Platform rollbackPublishedStore \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 184 'RollbackPublishedStore' test.out

#- 185 GetStore
samples/cli/sample-apps Platform getStore \
    --namespace $AB_NAMESPACE \
    --storeId 'Sa0TFrgAjM0VZkxf' \
    > test.out 2>&1
eval_tap $? 185 'GetStore' test.out

#- 186 UpdateStore
samples/cli/sample-apps Platform updateStore \
    --namespace $AB_NAMESPACE \
    --storeId 'dAkRc1uDZLuOnUJU' \
    --body '{"defaultLanguage": "C8IFGiUpQjBtSOeg", "defaultRegion": "m3fF2gArQobUowBx", "description": "skOInbYdaiRrvIx9", "supportedLanguages": ["U0gfQxU9RuWQcRkN", "kzcEf4cFTogkt4cS", "IbgJoYPBRbLs6Uop"], "supportedRegions": ["bJ8warQYxNx92GzG", "LAkDv1GEA7ElZO67", "LHIiqk3BoP6yYf0D"], "title": "KexseI3lKX3x2iWD"}' \
    > test.out 2>&1
eval_tap $? 186 'UpdateStore' test.out

#- 187 DeleteStore
samples/cli/sample-apps Platform deleteStore \
    --namespace $AB_NAMESPACE \
    --storeId 'Ijum0kACyKRpnclS' \
    > test.out 2>&1
eval_tap $? 187 'DeleteStore' test.out

#- 188 QueryChanges
samples/cli/sample-apps Platform queryChanges \
    --namespace $AB_NAMESPACE \
    --storeId '0jM7iYFDwEaacXvW' \
    --action 'UPDATE' \
    --itemSku 'FA81PzkBALqjbaU1' \
    --itemType 'APP' \
    --limit '41' \
    --offset '94' \
    --selected 'true' \
    --sortBy '["createdAt:desc", "updatedAt:asc", "createdAt"]' \
    --status 'PUBLISHED' \
    --type 'ITEM' \
    --updatedAtEnd 'byjDYXOLOAMvfkb9' \
    --updatedAtStart 'tW8sVAupOZDhj6fk' \
    > test.out 2>&1
eval_tap $? 188 'QueryChanges' test.out

#- 189 PublishAll
samples/cli/sample-apps Platform publishAll \
    --namespace $AB_NAMESPACE \
    --storeId 'Tq2ydUVihk1eHTBe' \
    > test.out 2>&1
eval_tap $? 189 'PublishAll' test.out

#- 190 PublishSelected
samples/cli/sample-apps Platform publishSelected \
    --namespace $AB_NAMESPACE \
    --storeId 'XprPUaGYYFOGlnhz' \
    > test.out 2>&1
eval_tap $? 190 'PublishSelected' test.out

#- 191 SelectAllRecords
samples/cli/sample-apps Platform selectAllRecords \
    --namespace $AB_NAMESPACE \
    --storeId 'NPjWjGKFiB7meDxK' \
    > test.out 2>&1
eval_tap $? 191 'SelectAllRecords' test.out

#- 192 GetStatistic
samples/cli/sample-apps Platform getStatistic \
    --namespace $AB_NAMESPACE \
    --storeId 'aWNiy3aAXnkDbZas' \
    --action 'DELETE' \
    --itemSku '6t97kX2l9AchZC3F' \
    --itemType 'APP' \
    --type 'ITEM' \
    --updatedAtEnd 'ZNpbOYgBV2BPB70c' \
    --updatedAtStart 'nJwedbL31LVPFxvn' \
    > test.out 2>&1
eval_tap $? 192 'GetStatistic' test.out

#- 193 UnselectAllRecords
samples/cli/sample-apps Platform unselectAllRecords \
    --namespace $AB_NAMESPACE \
    --storeId 'dUiNlkxRVnhJufwh' \
    > test.out 2>&1
eval_tap $? 193 'UnselectAllRecords' test.out

#- 194 SelectRecord
samples/cli/sample-apps Platform selectRecord \
    --changeId 'zRKgGMTPHtVv29Fs' \
    --namespace $AB_NAMESPACE \
    --storeId '9iKmEDv6IKpBTR47' \
    > test.out 2>&1
eval_tap $? 194 'SelectRecord' test.out

#- 195 UnselectRecord
samples/cli/sample-apps Platform unselectRecord \
    --changeId 'sj6Ppeic4MaRoadW' \
    --namespace $AB_NAMESPACE \
    --storeId 'rL3cXsF3PHwMtJZI' \
    > test.out 2>&1
eval_tap $? 195 'UnselectRecord' test.out

#- 196 CloneStore
samples/cli/sample-apps Platform cloneStore \
    --namespace $AB_NAMESPACE \
    --storeId 'p2Rl4WYpzZHO5lTF' \
    --targetStoreId 'llBZudaXYtVUdfgS' \
    > test.out 2>&1
eval_tap $? 196 'CloneStore' test.out

#- 197 ExportStore
eval_tap 0 197 'ExportStore # SKIP deprecated' test.out

#- 198 QuerySubscriptions
samples/cli/sample-apps Platform querySubscriptions \
    --namespace $AB_NAMESPACE \
    --chargeStatus 'CHARGE_FAILED' \
    --itemId 'DCzv2Dl8eD8bhug8' \
    --limit '49' \
    --offset '11' \
    --sku 'yooijr2dBQ3cqG8F' \
    --status 'INIT' \
    --subscribedBy 'USER' \
    --userId 'qr2WSk3ZIpkjaYdB' \
    > test.out 2>&1
eval_tap $? 198 'QuerySubscriptions' test.out

#- 199 RecurringChargeSubscription
samples/cli/sample-apps Platform recurringChargeSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId '4wrZOS1ZBgTMu4BV' \
    > test.out 2>&1
eval_tap $? 199 'RecurringChargeSubscription' test.out

#- 200 GetTicketDynamic
samples/cli/sample-apps Platform getTicketDynamic \
    --boothName 'lBNUQIC0HXUo2lta' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 200 'GetTicketDynamic' test.out

#- 201 DecreaseTicketSale
samples/cli/sample-apps Platform decreaseTicketSale \
    --boothName '6ORBNRlYbRW7gCzp' \
    --namespace $AB_NAMESPACE \
    --body '{"orderNo": "VISAovJMeekxkG8N"}' \
    > test.out 2>&1
eval_tap $? 201 'DecreaseTicketSale' test.out

#- 202 GetTicketBoothID
samples/cli/sample-apps Platform getTicketBoothID \
    --boothName 'iiwKZNwxNyX6LhUq' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 202 'GetTicketBoothID' test.out

#- 203 IncreaseTicketSale
samples/cli/sample-apps Platform increaseTicketSale \
    --boothName '3u8V5TidIZacGYR6' \
    --namespace $AB_NAMESPACE \
    --body '{"count": 22, "orderNo": "dJH5V5IvoTMkdQah"}' \
    > test.out 2>&1
eval_tap $? 203 'IncreaseTicketSale' test.out

#- 204 UnlockSteamUserAchievement
samples/cli/sample-apps Platform unlockSteamUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'r8oJOnIMRle8l13C' \
    --body '{"achievements": [{"id": "lPTax6esSlpdQCNo", "value": 4}, {"id": "eoqTFK1OhHNCV3jB", "value": 71}, {"id": "kqiVr1MFtboN6SgK", "value": 37}], "steamUserId": "o1pVqxFYu9LP2eIK"}' \
    > test.out 2>&1
eval_tap $? 204 'UnlockSteamUserAchievement' test.out

#- 205 GetXblUserAchievements
samples/cli/sample-apps Platform getXblUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId 'tQvpwjJPd4HnKY6U' \
    --xboxUserId 'nqSnFY7uvU1YEONo' \
    > test.out 2>&1
eval_tap $? 205 'GetXblUserAchievements' test.out

#- 206 UpdateXblUserAchievement
samples/cli/sample-apps Platform updateXblUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'pBKaNZEEHGBlFGt1' \
    --body '{"achievements": [{"id": "iQc0KFP3RHESEJg1", "percentComplete": 84}, {"id": "F9nbA08ENE57USXW", "percentComplete": 71}, {"id": "1lBEAv43PR8yqu5S", "percentComplete": 66}], "serviceConfigId": "Sfsj3cxu4OTAlw8o", "titleId": "rnOvn17j2Ykob5iL", "xboxUserId": "ccqDW2PxUWT7cB8Z"}' \
    > test.out 2>&1
eval_tap $? 206 'UpdateXblUserAchievement' test.out

#- 207 AnonymizeCampaign
samples/cli/sample-apps Platform anonymizeCampaign \
    --namespace $AB_NAMESPACE \
    --userId '7PEWQ9nvnMHUqV8G' \
    > test.out 2>&1
eval_tap $? 207 'AnonymizeCampaign' test.out

#- 208 AnonymizeEntitlement
samples/cli/sample-apps Platform anonymizeEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'KP2tntAQLqxswmkf' \
    > test.out 2>&1
eval_tap $? 208 'AnonymizeEntitlement' test.out

#- 209 AnonymizeFulfillment
samples/cli/sample-apps Platform anonymizeFulfillment \
    --namespace $AB_NAMESPACE \
    --userId 'aKwsUG2DsmkTDYaV' \
    > test.out 2>&1
eval_tap $? 209 'AnonymizeFulfillment' test.out

#- 210 AnonymizeIntegration
samples/cli/sample-apps Platform anonymizeIntegration \
    --namespace $AB_NAMESPACE \
    --userId 'f01UNpKmvApHfBwA' \
    > test.out 2>&1
eval_tap $? 210 'AnonymizeIntegration' test.out

#- 211 AnonymizeOrder
samples/cli/sample-apps Platform anonymizeOrder \
    --namespace $AB_NAMESPACE \
    --userId '8xVfRhnVXFdf3Q6U' \
    > test.out 2>&1
eval_tap $? 211 'AnonymizeOrder' test.out

#- 212 AnonymizePayment
samples/cli/sample-apps Platform anonymizePayment \
    --namespace $AB_NAMESPACE \
    --userId 'delHBf25BSDn9yiU' \
    > test.out 2>&1
eval_tap $? 212 'AnonymizePayment' test.out

#- 213 AnonymizeRevocation
samples/cli/sample-apps Platform anonymizeRevocation \
    --namespace $AB_NAMESPACE \
    --userId 'diCdYgFjvHctjjuR' \
    > test.out 2>&1
eval_tap $? 213 'AnonymizeRevocation' test.out

#- 214 AnonymizeSubscription
samples/cli/sample-apps Platform anonymizeSubscription \
    --namespace $AB_NAMESPACE \
    --userId 'LQmeHUNeAIneiMid' \
    > test.out 2>&1
eval_tap $? 214 'AnonymizeSubscription' test.out

#- 215 AnonymizeWallet
samples/cli/sample-apps Platform anonymizeWallet \
    --namespace $AB_NAMESPACE \
    --userId 'RXR87C8m6Eeakvvf' \
    > test.out 2>&1
eval_tap $? 215 'AnonymizeWallet' test.out

#- 216 GetUserDLCByPlatform
samples/cli/sample-apps Platform getUserDLCByPlatform \
    --namespace $AB_NAMESPACE \
    --userId '6krnzLOIv32K113k' \
    --type 'XBOX' \
    > test.out 2>&1
eval_tap $? 216 'GetUserDLCByPlatform' test.out

#- 217 GetUserDLC
samples/cli/sample-apps Platform getUserDLC \
    --namespace $AB_NAMESPACE \
    --userId 'i1wcfrMd7L8zcYdJ' \
    --type 'PSN' \
    > test.out 2>&1
eval_tap $? 217 'GetUserDLC' test.out

#- 218 QueryUserEntitlements
samples/cli/sample-apps Platform queryUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'mwJUBtlxslJy7LY8' \
    --activeOnly 'false' \
    --appType 'GAME' \
    --entitlementClazz 'ENTITLEMENT' \
    --entitlementName 'MvFrca7TFJFK7G22' \
    --features '["ERmsZaFDKN4cTamV", "mUoezKQUb1NPcRvH", "Y6K3fZ3vSvQSIkdX"]' \
    --itemId '["Io01VLl7z3xRPpe8", "wyLBqbZcKRKpXk6u", "Jrsn2emmPeICMoyO"]' \
    --limit '90' \
    --offset '89' \
    > test.out 2>&1
eval_tap $? 218 'QueryUserEntitlements' test.out

#- 219 GrantUserEntitlement
samples/cli/sample-apps Platform grantUserEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'ZPnG2X6wwvADK9Y1' \
    --body '[{"endDate": "1993-10-17T00:00:00Z", "grantedCode": "c1ojsfqQv7S4EaoF", "itemId": "2CRCdaaYcpJKqO5M", "itemNamespace": "5ru3dR6mrSRkvFB1", "language": "nyys-TPvf_WJ", "quantity": 14, "region": "0elMaOfzMiP6biKa", "source": "IAP", "startDate": "1987-04-28T00:00:00Z", "storeId": "XDtlDvVQwMAQA3Kf"}, {"endDate": "1994-08-09T00:00:00Z", "grantedCode": "QVQUhrjdsZd1jarq", "itemId": "bQeDUvfVeSlFAd1p", "itemNamespace": "eRK5QAj6GjQeHZmQ", "language": "Li_Ywqw_aY", "quantity": 92, "region": "FGzoAgyzjgrrKsff", "source": "ACHIEVEMENT", "startDate": "1999-01-03T00:00:00Z", "storeId": "jobcGb7Kd3VikwgI"}, {"endDate": "1991-02-02T00:00:00Z", "grantedCode": "zmQDwnzpGYo515qD", "itemId": "hSCLMkjCqdnHfzzo", "itemNamespace": "rS5umbpiXfWn78fH", "language": "nNB-092", "quantity": 26, "region": "wfMw9cPhQeoB6uWl", "source": "ACHIEVEMENT", "startDate": "1982-09-25T00:00:00Z", "storeId": "zVyFuxafIcPhpQBu"}]' \
    > test.out 2>&1
eval_tap $? 219 'GrantUserEntitlement' test.out

#- 220 GetUserAppEntitlementByAppId
samples/cli/sample-apps Platform getUserAppEntitlementByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'O6s71efD0zkpsFWP' \
    --activeOnly 'false' \
    --appId 'ZxLir2NjVjxpNhW7' \
    > test.out 2>&1
eval_tap $? 220 'GetUserAppEntitlementByAppId' test.out

#- 221 QueryUserEntitlementsByAppType
samples/cli/sample-apps Platform queryUserEntitlementsByAppType \
    --namespace $AB_NAMESPACE \
    --userId 'rqe8PJkW3l3Fs846' \
    --activeOnly 'false' \
    --limit '95' \
    --offset '70' \
    --appType 'DEMO' \
    > test.out 2>&1
eval_tap $? 221 'QueryUserEntitlementsByAppType' test.out

#- 222 GetUserEntitlementByItemId
samples/cli/sample-apps Platform getUserEntitlementByItemId \
    --namespace $AB_NAMESPACE \
    --userId '9bmk0NhDnMEX7bu0' \
    --activeOnly 'false' \
    --entitlementClazz 'ENTITLEMENT' \
    --itemId 'xtKOWHZ0KPcoArzh' \
    > test.out 2>&1
eval_tap $? 222 'GetUserEntitlementByItemId' test.out

#- 223 GetUserActiveEntitlementsByItemIds
samples/cli/sample-apps Platform getUserActiveEntitlementsByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'sFDsDe8bKPl8qElv' \
    --ids '["3keNz3ZRAQ2Tw77q", "Up4zd45Gn39DrzPq", "WlJ7NStUAK7MshPo"]' \
    > test.out 2>&1
eval_tap $? 223 'GetUserActiveEntitlementsByItemIds' test.out

#- 224 GetUserEntitlementBySku
samples/cli/sample-apps Platform getUserEntitlementBySku \
    --namespace $AB_NAMESPACE \
    --userId 'ubY9XOIHMkgzol5o' \
    --activeOnly 'true' \
    --entitlementClazz 'APP' \
    --sku '4GTnmKQRqEKgxHID' \
    > test.out 2>&1
eval_tap $? 224 'GetUserEntitlementBySku' test.out

#- 225 ExistsAnyUserActiveEntitlement
samples/cli/sample-apps Platform existsAnyUserActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'aMojGyYKa3Mlmsw8' \
    --appIds '["wq63eYA7khePdaWc", "TooWwEBxjtPRzHVd", "bI9ON2dUSOXxMR9D"]' \
    --itemIds '["MKQBWtYCmoqi843X", "uMij4ERWjY9C3aRj", "31qYKDYZ8KofUG8t"]' \
    --skus '["MqXzGG8qLM27LBoL", "grgu0n966LTXlbT4", "WPKHEZV55rPzmudh"]' \
    > test.out 2>&1
eval_tap $? 225 'ExistsAnyUserActiveEntitlement' test.out

#- 226 ExistsAnyUserActiveEntitlementByItemIds
samples/cli/sample-apps Platform existsAnyUserActiveEntitlementByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'hSZtdUBHqS52XG8w' \
    --itemIds '["1ne6RzkTmQYT3eER", "oxMSK5vJ2JSZx72p", "DZwiThANn4cDAZEj"]' \
    > test.out 2>&1
eval_tap $? 226 'ExistsAnyUserActiveEntitlementByItemIds' test.out

#- 227 GetUserAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform getUserAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'LWeBQlQiOunzfUU3' \
    --appId 'TfI8cNoZr5kOg61Z' \
    > test.out 2>&1
eval_tap $? 227 'GetUserAppEntitlementOwnershipByAppId' test.out

#- 228 GetUserEntitlementOwnershipByItemId
samples/cli/sample-apps Platform getUserEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'mtIAhBAPdxjsOnkj' \
    --entitlementClazz 'MEDIA' \
    --itemId 'yHYSfUJ2sL6M1H9r' \
    > test.out 2>&1
eval_tap $? 228 'GetUserEntitlementOwnershipByItemId' test.out

#- 229 GetUserEntitlementOwnershipByItemIds
samples/cli/sample-apps Platform getUserEntitlementOwnershipByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'Y6crV9JxtGXUDG9M' \
    --ids '["0xInl0lQish0MVHQ", "ARPALCIuXGdUPsCH", "j6qHUctBRh6eROTj"]' \
    > test.out 2>&1
eval_tap $? 229 'GetUserEntitlementOwnershipByItemIds' test.out

#- 230 GetUserEntitlementOwnershipBySku
samples/cli/sample-apps Platform getUserEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --userId 'PTEQtZDvD0L2p7Du' \
    --entitlementClazz 'ENTITLEMENT' \
    --sku '7Cb5vUdTkg7lJKU4' \
    > test.out 2>&1
eval_tap $? 230 'GetUserEntitlementOwnershipBySku' test.out

#- 231 RevokeAllEntitlements
samples/cli/sample-apps Platform revokeAllEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'dyFACNdqf3A1HKgW' \
    > test.out 2>&1
eval_tap $? 231 'RevokeAllEntitlements' test.out

#- 232 RevokeUserEntitlements
samples/cli/sample-apps Platform revokeUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'Wd9DWH8J5xBnEcVq' \
    --entitlementIds 'ZZnPnUDsln6DXywY' \
    > test.out 2>&1
eval_tap $? 232 'RevokeUserEntitlements' test.out

#- 233 GetUserEntitlement
samples/cli/sample-apps Platform getUserEntitlement \
    --entitlementId 'u279LSXYKAceRCTX' \
    --namespace $AB_NAMESPACE \
    --userId 'G8vVCiWicb9oL4pD' \
    > test.out 2>&1
eval_tap $? 233 'GetUserEntitlement' test.out

#- 234 UpdateUserEntitlement
samples/cli/sample-apps Platform updateUserEntitlement \
    --entitlementId 'cfI8sLbURRtIdzYW' \
    --namespace $AB_NAMESPACE \
    --userId 'CtZ6tMuWnQa36Zq0' \
    --body '{"endDate": "1998-07-10T00:00:00Z", "nullFieldList": ["Ynl56LznoEJluHJT", "XPqVvJZu9Dm3AWhi", "31Hgu4CiwOoFpWkU"], "startDate": "1978-05-03T00:00:00Z", "status": "REVOKED", "useCount": 94}' \
    > test.out 2>&1
eval_tap $? 234 'UpdateUserEntitlement' test.out

#- 235 ConsumeUserEntitlement
samples/cli/sample-apps Platform consumeUserEntitlement \
    --entitlementId '2lOEmNwSgCKicZyR' \
    --namespace $AB_NAMESPACE \
    --userId 'DVZxRVB7Rsv14jEC' \
    --body '{"options": ["GvqTnva0lDPgBAlk", "4E36cXceklZduHxn", "dQJLBgyskZhkdocL"], "requestId": "4eoskgb66zThyXQz", "useCount": 19}' \
    > test.out 2>&1
eval_tap $? 235 'ConsumeUserEntitlement' test.out

#- 236 DisableUserEntitlement
samples/cli/sample-apps Platform disableUserEntitlement \
    --entitlementId 'beGdiUpwTPlch1PU' \
    --namespace $AB_NAMESPACE \
    --userId 'TPKLBAJWSMcGI8cj' \
    > test.out 2>&1
eval_tap $? 236 'DisableUserEntitlement' test.out

#- 237 EnableUserEntitlement
samples/cli/sample-apps Platform enableUserEntitlement \
    --entitlementId 'cn6CXGRme1GZjnTT' \
    --namespace $AB_NAMESPACE \
    --userId 'AIoruyTvvVzuLR9F' \
    > test.out 2>&1
eval_tap $? 237 'EnableUserEntitlement' test.out

#- 238 GetUserEntitlementHistories
samples/cli/sample-apps Platform getUserEntitlementHistories \
    --entitlementId 'sDQvh5616tUEiBil' \
    --namespace $AB_NAMESPACE \
    --userId 'yfMEBGMXPzqbwMH0' \
    > test.out 2>&1
eval_tap $? 238 'GetUserEntitlementHistories' test.out

#- 239 RevokeUserEntitlement
samples/cli/sample-apps Platform revokeUserEntitlement \
    --entitlementId 'n9zM3O4mGK1NjmVr' \
    --namespace $AB_NAMESPACE \
    --userId 'QG03UJ3Btsn7X0KB' \
    > test.out 2>&1
eval_tap $? 239 'RevokeUserEntitlement' test.out

#- 240 RevokeUseCount
samples/cli/sample-apps Platform revokeUseCount \
    --entitlementId 'xEJmQa8IhUCVbcwQ' \
    --namespace $AB_NAMESPACE \
    --userId 'jy5RdNS5S1zTNeWm' \
    --body '{"reason": "IO6qSDAxR2ZpTEHj", "useCount": 38}' \
    > test.out 2>&1
eval_tap $? 240 'RevokeUseCount' test.out

#- 241 SellUserEntitlement
samples/cli/sample-apps Platform sellUserEntitlement \
    --entitlementId 'dqSDYFX31k28J5vJ' \
    --namespace $AB_NAMESPACE \
    --userId '4ubAbmFxDzeWQNcN' \
    --body '{"requestId": "VERVQP4Lj0dHXwDO", "useCount": 66}' \
    > test.out 2>&1
eval_tap $? 241 'SellUserEntitlement' test.out

#- 242 FulfillItem
samples/cli/sample-apps Platform fulfillItem \
    --namespace $AB_NAMESPACE \
    --userId 'Q36aYvPrK7GXfIW2' \
    --body '{"duration": 31, "endDate": "1974-08-20T00:00:00Z", "itemId": "0c5vNnIPhJBthXfJ", "itemSku": "li6Ti9xNIR4Rf1rD", "language": "DH3uaXnG8WWrn4f5", "metadata": {"IHB5Suk3rFT1yooQ": {}, "DV8UepF5qoBkUPPh": {}, "kBqBIy0bspKlIur6": {}}, "order": {"currency": {"currencyCode": "hLAuptLpm6sg88ws", "currencySymbol": "ZSRnNc3MgpzNTiXF", "currencyType": "REAL", "decimals": 52, "namespace": "YQQ1ylplITt0waFc"}, "ext": {"8RmDK797aAY67Tcx": {}, "dQ4v7ocQThD5r2jf": {}, "juZjPvGam6oZPL6Q": {}}, "free": false}, "orderNo": "kJCEEwXBcMcmElpS", "origin": "Other", "quantity": 1, "region": "1meXWDiN1eBJZO2y", "source": "IAP", "startDate": "1977-01-12T00:00:00Z", "storeId": "RaR2riggNkhZuwJ0"}' \
    > test.out 2>&1
eval_tap $? 242 'FulfillItem' test.out

#- 243 RedeemCode
samples/cli/sample-apps Platform redeemCode \
    --namespace $AB_NAMESPACE \
    --userId 'O12YhU2Ggw8rvWuw' \
    --body '{"code": "VBboDKgBvIJ51jRl", "language": "wm-Leyq", "region": "Ww5pFH55IgCcDHEM"}' \
    > test.out 2>&1
eval_tap $? 243 'RedeemCode' test.out

#- 244 FulfillRewards
samples/cli/sample-apps Platform fulfillRewards \
    --namespace $AB_NAMESPACE \
    --userId 'ZmHQ0T5lTwpjn3Uj' \
    --body '{"metadata": {"7LMTor2WwKm01QSJ": {}, "lRHRQDddXyEpwZhX": {}, "6ufwVUwWJCBtsgPb": {}}, "origin": "Oculus", "rewards": [{"currency": {"currencyCode": "ycEhcPBefGgKCxHo", "namespace": "h1hrvnSi9hXsW2ro"}, "item": {"itemId": "pHTGkr12iu41fnL8", "itemSku": "mE2ENAhRCmjFKqDP", "itemType": "MuoDVPUE40qeRzqf"}, "quantity": 20, "type": "CURRENCY"}, {"currency": {"currencyCode": "RmMcHrTLRX7y6Cs6", "namespace": "QreomMqJZ7ljmFtR"}, "item": {"itemId": "Urzwc3I1Uld7rRUk", "itemSku": "5wzlqEmvbjk44oKP", "itemType": "dRCnUsxMWKbl2Cf3"}, "quantity": 72, "type": "CURRENCY"}, {"currency": {"currencyCode": "X7y7rjEcbDH6E1YW", "namespace": "Or4bEcC4PZ0KYs6H"}, "item": {"itemId": "fNgEssntlSbLDICV", "itemSku": "I3DKjEuOQOhRWHFS", "itemType": "Q6Y1Atf1EWKu0Qnu"}, "quantity": 27, "type": "ITEM"}], "source": "ACHIEVEMENT", "transactionId": "QUH6w5YP2baEaKa4"}' \
    > test.out 2>&1
eval_tap $? 244 'FulfillRewards' test.out

#- 245 QueryUserIAPOrders
samples/cli/sample-apps Platform queryUserIAPOrders \
    --namespace $AB_NAMESPACE \
    --userId 'DWsqkDylfIfpnxk9' \
    --endTime '7gKkBcQMZDJ2Duxt' \
    --limit '42' \
    --offset '36' \
    --productId 'EpN0Zxy1nZA5y3xS' \
    --startTime 'oW1QPVKPqlP5VLdi' \
    --status 'VERIFIED' \
    --type 'GOOGLE' \
    > test.out 2>&1
eval_tap $? 245 'QueryUserIAPOrders' test.out

#- 246 QueryAllUserIAPOrders
samples/cli/sample-apps Platform queryAllUserIAPOrders \
    --namespace $AB_NAMESPACE \
    --userId 'tYn1H5Wq0SQqIriR' \
    > test.out 2>&1
eval_tap $? 246 'QueryAllUserIAPOrders' test.out

#- 247 QueryUserIAPConsumeHistory
samples/cli/sample-apps Platform queryUserIAPConsumeHistory \
    --namespace $AB_NAMESPACE \
    --userId 'Sf2LDftvox860vv1' \
    --endTime 'Rffpy7buvTBvgu65' \
    --limit '97' \
    --offset '100' \
    --startTime 'eOJ0kLKBAhywRHqY' \
    --status 'PENDING' \
    --type 'GOOGLE' \
    > test.out 2>&1
eval_tap $? 247 'QueryUserIAPConsumeHistory' test.out

#- 248 MockFulfillIAPItem
samples/cli/sample-apps Platform mockFulfillIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'exAIm6WCFfPB78ml' \
    --body '{"itemIdentityType": "ITEM_ID", "language": "qlUD-BYMT", "productId": "oAy7m9GkQLypHLF1", "region": "Oh5erEAIbl4eoueo", "transactionId": "4qV3Ej1kWWTl6G4Z", "type": "XBOX"}' \
    > test.out 2>&1
eval_tap $? 248 'MockFulfillIAPItem' test.out

#- 249 QueryUserOrders
samples/cli/sample-apps Platform queryUserOrders \
    --namespace $AB_NAMESPACE \
    --userId 'WDHUQEOVsoFrteSj' \
    --itemId 'DaWIGtq7cwynMDf4' \
    --limit '98' \
    --offset '97' \
    --status 'FULFILL_FAILED' \
    > test.out 2>&1
eval_tap $? 249 'QueryUserOrders' test.out

#- 250 AdminCreateUserOrder
samples/cli/sample-apps Platform adminCreateUserOrder \
    --namespace $AB_NAMESPACE \
    --userId '6DIi48IR9Z3kO3QT' \
    --body '{"currencyCode": "MsLkmmpzt4n3wGqg", "currencyNamespace": "DqhNFSMLKcGO7yic", "discountedPrice": 1, "ext": {"8l2rOk6B7NUaAkDc": {}, "gBo3UGumdHinfXbY": {}, "RdhdGRWwp7MxUn7T": {}}, "itemId": "8CfvlBmjf2MCtcLU", "language": "wASJxpAEXQDeO6sk", "options": {"skipPriceValidation": false}, "platform": "Nintendo", "price": 85, "quantity": 56, "region": "S1nul7bsDAKFKCR2", "returnUrl": "HrxDHS2GkzOb4qhh", "sandbox": true, "sectionId": "DZ54yemJYB9WNXPN"}' \
    > test.out 2>&1
eval_tap $? 250 'AdminCreateUserOrder' test.out

#- 251 CountOfPurchasedItem
samples/cli/sample-apps Platform countOfPurchasedItem \
    --namespace $AB_NAMESPACE \
    --userId 'keTSkoaGO6b90cog' \
    --itemId 'UOhUlK3WQENJcW2x' \
    > test.out 2>&1
eval_tap $? 251 'CountOfPurchasedItem' test.out

#- 252 GetUserOrder
samples/cli/sample-apps Platform getUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'VoYKvcEmqW3mqWY8' \
    --userId 'qoBssC7SOZHz0Ifs' \
    > test.out 2>&1
eval_tap $? 252 'GetUserOrder' test.out

#- 253 UpdateUserOrderStatus
samples/cli/sample-apps Platform updateUserOrderStatus \
    --namespace $AB_NAMESPACE \
    --orderNo 'N8iquO8XG6vdFZms' \
    --userId 'XwuLKcYvJGIs3Vwc' \
    --body '{"status": "FULFILLED", "statusReason": "J8cS6FcgyQ2ktIDK"}' \
    > test.out 2>&1
eval_tap $? 253 'UpdateUserOrderStatus' test.out

#- 254 FulfillUserOrder
samples/cli/sample-apps Platform fulfillUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'vwS5mUGSkeKyIyII' \
    --userId 'dQYbgz4Y9kfv44Qa' \
    > test.out 2>&1
eval_tap $? 254 'FulfillUserOrder' test.out

#- 255 GetUserOrderGrant
samples/cli/sample-apps Platform getUserOrderGrant \
    --namespace $AB_NAMESPACE \
    --orderNo '6DwMCOOH6uRxhJf4' \
    --userId '76GulEudTkrrypwl' \
    > test.out 2>&1
eval_tap $? 255 'GetUserOrderGrant' test.out

#- 256 GetUserOrderHistories
samples/cli/sample-apps Platform getUserOrderHistories \
    --namespace $AB_NAMESPACE \
    --orderNo 'gmPhQEyRETuKekji' \
    --userId 'sK4PcqcOfmSBKtUh' \
    > test.out 2>&1
eval_tap $? 256 'GetUserOrderHistories' test.out

#- 257 ProcessUserOrderNotification
samples/cli/sample-apps Platform processUserOrderNotification \
    --namespace $AB_NAMESPACE \
    --orderNo '7MZFwEezisyUs6e8' \
    --userId '8VBxzLmJ5Yf3lAKR' \
    --body '{"additionalData": {"cardSummary": "vlieTTuNNm2SNE2d"}, "authorisedTime": "1973-11-06T00:00:00Z", "chargebackReversedTime": "1986-01-14T00:00:00Z", "chargebackTime": "1981-04-08T00:00:00Z", "chargedTime": "1988-08-08T00:00:00Z", "createdTime": "1973-07-24T00:00:00Z", "currency": {"currencyCode": "b61hGAVuz81DrY6B", "currencySymbol": "a8ljNCF7KKnZ38VZ", "currencyType": "REAL", "decimals": 100, "namespace": "UBKaJrQzshjtHHLZ"}, "customParameters": {"QFrWbxdvLV8ieDBE": {}, "Ta6mc6jQwyrWbBd7": {}, "gYBqVfpfvxarQ5UP": {}}, "extOrderNo": "Aj2reoVA1LUZ8tFh", "extTxId": "tIBqIEL5FzKTw4WH", "extUserId": "JYsDE35aVqjLQt8s", "issuedAt": "1999-10-04T00:00:00Z", "metadata": {"lvzP7zirSqVOeDkK": "cu3sSdpjQzOBtho7", "6VggooUl6RJCeMtD": "Hi0MF0fkJFedwAKi", "QTMX0kF7D7U2YEqO": "KQn9kLdPWBC48cYz"}, "namespace": "4eh2W0f0d2fWZ0Vy", "nonceStr": "tYSWLT1x3W3oG1lr", "paymentMethod": "zBHyC2BkKT6hjfY4", "paymentMethodFee": 41, "paymentOrderNo": "fFIFkuTAN49bakTb", "paymentProvider": "PAYPAL", "paymentProviderFee": 38, "paymentStationUrl": "7kOIdS9tbIWb3aT1", "price": 39, "refundedTime": "1989-04-14T00:00:00Z", "salesTax": 35, "sandbox": false, "sku": "YUuHmy4AuIqzBZN2", "status": "CHARGEBACK", "statusReason": "2Qhp8xPuUq5CxXwW", "subscriptionId": "r7QQW6iqmfyHLqvU", "subtotalPrice": 31, "targetNamespace": "DKtszr68nCb9GJKd", "targetUserId": "7l4urVbQRMPFR1cA", "tax": 24, "totalPrice": 62, "totalTax": 33, "txEndTime": "1978-08-25T00:00:00Z", "type": "uv3SeqzmRL4NeygI", "userId": "yqVFR4G9S6olvqQC", "vat": 89}' \
    > test.out 2>&1
eval_tap $? 257 'ProcessUserOrderNotification' test.out

#- 258 DownloadUserOrderReceipt
samples/cli/sample-apps Platform downloadUserOrderReceipt \
    --namespace $AB_NAMESPACE \
    --orderNo 'CsmnRe4AWji0RLrS' \
    --userId 'vDI0182DmCF0eon2' \
    > test.out 2>&1
eval_tap $? 258 'DownloadUserOrderReceipt' test.out

#- 259 CreateUserPaymentOrder
samples/cli/sample-apps Platform createUserPaymentOrder \
    --namespace $AB_NAMESPACE \
    --userId '5DkgucpUaNznKtHf' \
    --body '{"currencyCode": "U01ZqUkZzlKERJKa", "currencyNamespace": "1ypO90EcnV02xIX0", "customParameters": {"meX2NMHs15Wa4ecd": {}, "cPekIDINdiuBS3pU": {}, "vA41x8HhZSJvbFe1": {}}, "description": "P4cbAoFKwi2BJpgE", "extOrderNo": "rrHrWXbRaXEUwsXJ", "extUserId": "rWTIk2ONMmo2EA7R", "itemType": "BUNDLE", "language": "DhJ-HufA_Gz", "metadata": {"iUdnyRWOuOulBTm0": "uo6YYsVgBoc4hFcN", "G94UCOWrJn3fpdSe": "rkdWLOVyER4WjoKW", "oJlFmVH0VmGvqVss": "W2Cp8O4KHza05DVV"}, "notifyUrl": "T091LfIVexJH83Tv", "omitNotification": true, "platform": "YyYAHHvS4HR2jWKr", "price": 72, "recurringPaymentOrderNo": "DoM2DLQlOR8eYRH5", "region": "KUclf4IVzPWDlF4C", "returnUrl": "XqcAxLbjjTFHPSab", "sandbox": false, "sku": "mgnsKkzP2nYGgY7y", "subscriptionId": "UKuvIw4jSjmMsdIm", "title": "NQKX3ZWnkq5v1x4o"}' \
    > test.out 2>&1
eval_tap $? 259 'CreateUserPaymentOrder' test.out

#- 260 RefundUserPaymentOrder
samples/cli/sample-apps Platform refundUserPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'KCC1EtL81oOTjWGj' \
    --userId '0qwrhpvedbrYzTbm' \
    --body '{"description": "RQDUxUTlTIbk12wY"}' \
    > test.out 2>&1
eval_tap $? 260 'RefundUserPaymentOrder' test.out

#- 261 ApplyUserRedemption
samples/cli/sample-apps Platform applyUserRedemption \
    --namespace $AB_NAMESPACE \
    --userId 'BDg1lFgegYlG4Nq0' \
    --body '{"code": "UUbVFSvqknZkiAk2", "orderNo": "VULnGx9b1KxHH58d"}' \
    > test.out 2>&1
eval_tap $? 261 'ApplyUserRedemption' test.out

#- 262 DoRevocation
samples/cli/sample-apps Platform doRevocation \
    --namespace $AB_NAMESPACE \
    --userId 'Gxe1kysAE7OxhOR0' \
    --body '{"meta": {"r4DrYDKaCfjrrpJm": {}, "Y9y087dZtWPZ2yXx": {}, "OodmYG26hMVgPETf": {}}, "revokeEntries": [{"currency": {"balanceOrigin": "IOS", "currencyCode": "Tfgc5QRZmNuoRp8X", "namespace": "YOtFhsRRSOiPDXmv"}, "entitlement": {"entitlementId": "Xtb6HpGHU84kx5Zf"}, "item": {"itemIdentity": "O1mbXzXNGPWwDVhk", "itemIdentityType": "ITEM_SKU", "origin": "IOS"}, "quantity": 56, "type": "ENTITLEMENT"}, {"currency": {"balanceOrigin": "Twitch", "currencyCode": "NpD5F16vkOgPOaRT", "namespace": "WMKpwMTCeeCuDUcZ"}, "entitlement": {"entitlementId": "1pavRZSkloKfoLvz"}, "item": {"itemIdentity": "oNUuYkV9vh3wECa5", "itemIdentityType": "ITEM_SKU", "origin": "Twitch"}, "quantity": 88, "type": "ENTITLEMENT"}, {"currency": {"balanceOrigin": "Twitch", "currencyCode": "jMV3iln2XMMa168C", "namespace": "SbLz1Ig3cy07qCxP"}, "entitlement": {"entitlementId": "zrBOoGCBFzDkXnGY"}, "item": {"itemIdentity": "xcdmZihJcmCHlE94", "itemIdentityType": "ITEM_SKU", "origin": "Nintendo"}, "quantity": 44, "type": "ENTITLEMENT"}], "source": "DLC", "transactionId": "VpAHbF9iv65kqYts"}' \
    > test.out 2>&1
eval_tap $? 262 'DoRevocation' test.out

#- 263 RegisterXblSessions
samples/cli/sample-apps Platform registerXblSessions \
    --namespace $AB_NAMESPACE \
    --userId 'dt1VFfYbCY2jsEth' \
    --body '{"gameSessionId": "oQMr9w5lckSAUjbw", "payload": {"v6wnRTG3w4vigkcV": {}, "TpePnUYfN9alCcXA": {}, "M9dsLdp6oa5a57Jv": {}}, "scid": "Hct7HI3DKjyVgYb1", "sessionTemplateName": "AaTtw5VNMAnWQLqx"}' \
    > test.out 2>&1
eval_tap $? 263 'RegisterXblSessions' test.out

#- 264 QueryUserSubscriptions
samples/cli/sample-apps Platform queryUserSubscriptions \
    --namespace $AB_NAMESPACE \
    --userId 'rC9v2mQA6oobv8Bv' \
    --chargeStatus 'CHARGED' \
    --itemId 'Ik6L4euO3tN7vbRH' \
    --limit '99' \
    --offset '68' \
    --sku 'jjAnbJYLZEyqeKrs' \
    --status 'INIT' \
    --subscribedBy 'USER' \
    > test.out 2>&1
eval_tap $? 264 'QueryUserSubscriptions' test.out

#- 265 GetUserSubscriptionActivities
samples/cli/sample-apps Platform getUserSubscriptionActivities \
    --namespace $AB_NAMESPACE \
    --userId 'a1aCJdbKankaYfHO' \
    --excludeSystem 'false' \
    --limit '17' \
    --offset '63' \
    --subscriptionId '9uBar0Htis5fXYXo' \
    > test.out 2>&1
eval_tap $? 265 'GetUserSubscriptionActivities' test.out

#- 266 PlatformSubscribeSubscription
samples/cli/sample-apps Platform platformSubscribeSubscription \
    --namespace $AB_NAMESPACE \
    --userId 'jwe8yK0Zwd3fuvnX' \
    --body '{"grantDays": 38, "itemId": "KN89KkabDen8MG9n", "language": "PZGP7kPknBnzFiXO", "reason": "GzSlJyRc27nyEKgZ", "region": "jMMmvQB3B4PFUe5X", "source": "kswryB9HBtCmJgYx"}' \
    > test.out 2>&1
eval_tap $? 266 'PlatformSubscribeSubscription' test.out

#- 267 CheckUserSubscriptionSubscribableByItemId
samples/cli/sample-apps Platform checkUserSubscriptionSubscribableByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'dD3Ensu6yZ1dWeDw' \
    --itemId 'LigapQGTCZuwMZzd' \
    > test.out 2>&1
eval_tap $? 267 'CheckUserSubscriptionSubscribableByItemId' test.out

#- 268 GetUserSubscription
samples/cli/sample-apps Platform getUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'EfWmGau0QgUtjVLh' \
    --userId 'ZyOuD4PlIUkK6zmY' \
    > test.out 2>&1
eval_tap $? 268 'GetUserSubscription' test.out

#- 269 DeleteUserSubscription
samples/cli/sample-apps Platform deleteUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'zfDCuWi3kLbPlqrF' \
    --userId 'FRew5j4pZ4mq1l2g' \
    > test.out 2>&1
eval_tap $? 269 'DeleteUserSubscription' test.out

#- 270 CancelSubscription
samples/cli/sample-apps Platform cancelSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId '3gL7s41MGaUEHaxT' \
    --userId 'BXYIFrPTWnCRr1Xn' \
    --force 'false' \
    --body '{"immediate": false, "reason": "qStMZ7cOervjxMmk"}' \
    > test.out 2>&1
eval_tap $? 270 'CancelSubscription' test.out

#- 271 GrantDaysToSubscription
samples/cli/sample-apps Platform grantDaysToSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'wOZDsUvLUabRWSlg' \
    --userId 'L8vNlmgqK9iY2DZb' \
    --body '{"grantDays": 4, "reason": "OPhWQr28vqLarTXs"}' \
    > test.out 2>&1
eval_tap $? 271 'GrantDaysToSubscription' test.out

#- 272 GetUserSubscriptionBillingHistories
samples/cli/sample-apps Platform getUserSubscriptionBillingHistories \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'oGQWkUbSLfSGToue' \
    --userId 'fn2rpgDzcHj4y2ET' \
    --excludeFree 'false' \
    --limit '93' \
    --offset '77' \
    > test.out 2>&1
eval_tap $? 272 'GetUserSubscriptionBillingHistories' test.out

#- 273 ProcessUserSubscriptionNotification
samples/cli/sample-apps Platform processUserSubscriptionNotification \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'HIX9xpXMVoUVg11N' \
    --userId 'dF30ynnijCgg6nCK' \
    --body '{"additionalData": {"cardSummary": "K5EKiN1RFchy13B1"}, "authorisedTime": "1979-04-15T00:00:00Z", "chargebackReversedTime": "1996-03-12T00:00:00Z", "chargebackTime": "1975-03-04T00:00:00Z", "chargedTime": "1971-11-30T00:00:00Z", "createdTime": "1997-09-25T00:00:00Z", "currency": {"currencyCode": "MdmxT9sjd1ebHL19", "currencySymbol": "MjwGx8jrTNHRlA1Z", "currencyType": "VIRTUAL", "decimals": 83, "namespace": "oKHuYjGNMboYwdcZ"}, "customParameters": {"QAM2Krqfe9Uzh1L3": {}, "FUYnoIXlDM7ggicu": {}, "VOydwNwW1aUj6uUA": {}}, "extOrderNo": "YcTNbYsNbcsE36yZ", "extTxId": "fkvSi9nHMcOmOaER", "extUserId": "JaR77Xe138U9QoDm", "issuedAt": "1971-01-08T00:00:00Z", "metadata": {"NVuVGsw66kK8TlEb": "8SfJ51VeG5vRgBbu", "QXzUXkXYveF0CGrj": "RIulZ3VAOT9kwuuz", "PsxHZhr1oE6ID2lb": "7dMr1MOjXvpeo0wE"}, "namespace": "wMoIBOtxNroG165p", "nonceStr": "WX3KE6uNi9MWIrBR", "paymentMethod": "lv1up9K5bMQqM4Rn", "paymentMethodFee": 96, "paymentOrderNo": "Vb69LrPS1g9Da0dQ", "paymentProvider": "STRIPE", "paymentProviderFee": 73, "paymentStationUrl": "zxFK4fLK0WOzuR7V", "price": 3, "refundedTime": "1973-05-30T00:00:00Z", "salesTax": 75, "sandbox": true, "sku": "76Db3J96JwcL4l0I", "status": "NOTIFICATION_OF_CHARGEBACK", "statusReason": "ENY9PVL9z1WyJPC6", "subscriptionId": "YsDHWesYsz6IZjXI", "subtotalPrice": 37, "targetNamespace": "dN5mPIPLUikTgsU3", "targetUserId": "8hqQa5nS0xqvAJzE", "tax": 5, "totalPrice": 60, "totalTax": 64, "txEndTime": "1977-05-02T00:00:00Z", "type": "wP0dngcJsKrq60hp", "userId": "uvOcpCn9RjAOoQVY", "vat": 74}' \
    > test.out 2>&1
eval_tap $? 273 'ProcessUserSubscriptionNotification' test.out

#- 274 AcquireUserTicket
samples/cli/sample-apps Platform acquireUserTicket \
    --boothName '7LMxmMmMDvMfkC62' \
    --namespace $AB_NAMESPACE \
    --userId 'hL6JNePaSffx9Pfc' \
    --body '{"count": 53, "orderNo": "inALcne6ApIlSN6B"}' \
    > test.out 2>&1
eval_tap $? 274 'AcquireUserTicket' test.out

#- 275 QueryUserCurrencyWallets
samples/cli/sample-apps Platform queryUserCurrencyWallets \
    --namespace $AB_NAMESPACE \
    --userId 'FMw5VLFIS3lMxTqZ' \
    > test.out 2>&1
eval_tap $? 275 'QueryUserCurrencyWallets' test.out

#- 276 DebitUserWalletByCurrencyCode
samples/cli/sample-apps Platform debitUserWalletByCurrencyCode \
    --currencyCode 'l0X7muFFgASh31Or' \
    --namespace $AB_NAMESPACE \
    --userId 'I5ijWgTRuWp4Vmu9' \
    --body '{"allowOverdraft": false, "amount": 64, "balanceOrigin": "Playstation", "balanceSource": "IAP_REVOCATION", "metadata": {"Lx8rbJoCBYWakMcZ": {}, "meSTucSQcottO5Py": {}, "MMSGOGnxGNZsB4vv": {}}, "reason": "KFLBL9o3my0pDlq0"}' \
    > test.out 2>&1
eval_tap $? 276 'DebitUserWalletByCurrencyCode' test.out

#- 277 ListUserCurrencyTransactions
samples/cli/sample-apps Platform listUserCurrencyTransactions \
    --currencyCode 'tevilAmvHDk1LPkC' \
    --namespace $AB_NAMESPACE \
    --userId 'XYm0Qwn57i8Qkylj' \
    --limit '80' \
    --offset '10' \
    > test.out 2>&1
eval_tap $? 277 'ListUserCurrencyTransactions' test.out

#- 278 CheckWallet
eval_tap 0 278 'CheckWallet # SKIP deprecated' test.out

#- 279 CreditUserWallet
samples/cli/sample-apps Platform creditUserWallet \
    --currencyCode 'PSB465lbGNS6CBdW' \
    --namespace $AB_NAMESPACE \
    --userId 'btBgBp5jqOYWK7kw' \
    --body '{"amount": 49, "expireAt": "1993-01-23T00:00:00Z", "metadata": {"URj0JwHzLofW9WfM": {}, "jeNTsCpyRcE92trR": {}, "nrLVXBS0qsugQF41": {}}, "origin": "Twitch", "reason": "3b1JzaHgIY7Fpct1", "source": "PURCHASE"}' \
    > test.out 2>&1
eval_tap $? 279 'CreditUserWallet' test.out

#- 280 PayWithUserWallet
samples/cli/sample-apps Platform payWithUserWallet \
    --currencyCode 'xmUG9ZcgBeZqPMZE' \
    --namespace $AB_NAMESPACE \
    --userId 'STbD1VMcDxJeR4NT' \
    --body '{"amount": 27, "metadata": {"quWbK5KSahfsv028": {}, "EFydkSH61WPTeYNl": {}, "wh51DMup7cdkUA6C": {}}, "walletPlatform": "Nintendo"}' \
    > test.out 2>&1
eval_tap $? 280 'PayWithUserWallet' test.out

#- 281 GetUserWallet
eval_tap 0 281 'GetUserWallet # SKIP deprecated' test.out

#- 282 DebitUserWallet
eval_tap 0 282 'DebitUserWallet # SKIP deprecated' test.out

#- 283 DisableUserWallet
eval_tap 0 283 'DisableUserWallet # SKIP deprecated' test.out

#- 284 EnableUserWallet
eval_tap 0 284 'EnableUserWallet # SKIP deprecated' test.out

#- 285 ListUserWalletTransactions
eval_tap 0 285 'ListUserWalletTransactions # SKIP deprecated' test.out

#- 286 ListViews
samples/cli/sample-apps Platform listViews \
    --namespace $AB_NAMESPACE \
    --storeId 'YOeNBnQWIQllk1TF' \
    > test.out 2>&1
eval_tap $? 286 'ListViews' test.out

#- 287 CreateView
samples/cli/sample-apps Platform createView \
    --namespace $AB_NAMESPACE \
    --storeId 'b8zWiPK4fNKYwFPP' \
    --body '{"displayOrder": 13, "localizations": {"oU1VTNhNU5Mvm8yl": {"description": "vFeSEZLfNzdSVez5", "localExt": {"6J8VxbgavSFnaoJo": {}, "ICwXyERp1HELAQje": {}, "gZkDzoZKDR8dXmzo": {}}, "longDescription": "Bki6XLGMkN7OJhbB", "title": "MuzrswQdNdnl4YxI"}, "qyv9r1oDHYs2teBW": {"description": "2wKWdbQyexe8aRqv", "localExt": {"nzNIuctt7styy6uo": {}, "M6TTvzd7H544nbNG": {}, "d72he6bcqbONQHdF": {}}, "longDescription": "wtoSYVGxhhNXoS52", "title": "A9zlvwpptzj6MyKr"}, "j5SKpTwFuTC0dCHV": {"description": "6ez32ySBjaWRFVur", "localExt": {"Ogqwasr5Pb3fNNjE": {}, "jBvSrXgjIhBUokZ1": {}, "fCqUbXdFDz6BBHl6": {}}, "longDescription": "xlrbpz4kYRu4v6cz", "title": "0Q6vHI2va5y9qsNW"}}, "name": "0BCJ7ox1IQjE2fRE"}' \
    > test.out 2>&1
eval_tap $? 287 'CreateView' test.out

#- 288 GetView
samples/cli/sample-apps Platform getView \
    --namespace $AB_NAMESPACE \
    --viewId 'xcKht7asYh9k3IHn' \
    --storeId 'TTXMWcKkMF8xGI1U' \
    > test.out 2>&1
eval_tap $? 288 'GetView' test.out

#- 289 UpdateView
samples/cli/sample-apps Platform updateView \
    --namespace $AB_NAMESPACE \
    --viewId 'AKObyYpMb5RCXxvQ' \
    --storeId 'zq0z6lGoLQ5G5HvM' \
    --body '{"displayOrder": 95, "localizations": {"27d3eyIa6OhSew5X": {"description": "dYQGR85TeslV8Q3l", "localExt": {"odoFL0SLaVURUvWt": {}, "nNRhzvNyJGQFKvv9": {}, "10kMV8YxVjXwVkeV": {}}, "longDescription": "P8KCb1Z2BENy6tzU", "title": "OztBf6jYd8hb6PSS"}, "GYQowhFpPUacmNCI": {"description": "8LuMzxw6dNDq1GZO", "localExt": {"UUeIYDgLrUDBoLgx": {}, "pGymiItbPBSpw5zH": {}, "qybiCQPuWFeagze6": {}}, "longDescription": "3xrM83cHSklNhVh9", "title": "vbdA1RRcpEOhC6a2"}, "ts6BzkE8hDGgzDh6": {"description": "ioQgHDvuHCHD2EMH", "localExt": {"l7pPSp9TAiUtXHd3": {}, "FyvlomBrxV2GZK2v": {}, "oT8fGNQMNDNzW7K5": {}}, "longDescription": "j862RGyNmCN5um02", "title": "Mg295LLyE0y40KGs"}}, "name": "AFBwtTWs3fesUBVU"}' \
    > test.out 2>&1
eval_tap $? 289 'UpdateView' test.out

#- 290 DeleteView
samples/cli/sample-apps Platform deleteView \
    --namespace $AB_NAMESPACE \
    --viewId '4xXF6B9LKn0bvXWc' \
    --storeId '9AcUgnB2EcIQl4fO' \
    > test.out 2>&1
eval_tap $? 290 'DeleteView' test.out

#- 291 QueryWallets
eval_tap 0 291 'QueryWallets # SKIP deprecated' test.out

#- 292 BulkCredit
samples/cli/sample-apps Platform bulkCredit \
    --namespace $AB_NAMESPACE \
    --body '[{"creditRequest": {"amount": 3, "expireAt": "1984-08-29T00:00:00Z", "metadata": {"qp4V0uugpPFF5lFN": {}, "Xn0GLRDcrlIGUlmt": {}, "9zpKPuQcTp9AFXlQ": {}}, "origin": "Xbox", "reason": "94HOJ9AXKUEpEjDv", "source": "IAP_CHARGEBACK_REVERSED"}, "currencyCode": "grUa6hJwQt77SYK8", "userIds": ["b3pnTDBzWCxWmIvE", "RQq9yhayyDSIzl30", "QRLUdMscbq3sx1MA"]}, {"creditRequest": {"amount": 30, "expireAt": "1987-05-22T00:00:00Z", "metadata": {"1HBxMoD2XyCPwBXr": {}, "c7ntHzyELCKJ3GH8": {}, "Q9Q6L0gn8CbnQwqS": {}}, "origin": "Steam", "reason": "r8Du3n8osgjMHXJf", "source": "IAP_CHARGEBACK_REVERSED"}, "currencyCode": "9rD4CLWASuONXQzW", "userIds": ["com8cuVLCuU0aEd2", "GyOYnFUVR9fEW3BO", "sxCvcwVtsuRq0m0t"]}, {"creditRequest": {"amount": 99, "expireAt": "1974-12-15T00:00:00Z", "metadata": {"5Q20Q4DzhxUkCZBR": {}, "NP4kkpYfyLwUtf9X": {}, "locClUhzR72M6R5f": {}}, "origin": "Epic", "reason": "qkEJnYtMOKaWgO8o", "source": "ACHIEVEMENT"}, "currencyCode": "uST5TeGA4DN4wEdA", "userIds": ["nfAx3p7CueGgicIo", "dpqVHYC3uwiAc0VM", "a5ouUIB7Ettvli5w"]}]' \
    > test.out 2>&1
eval_tap $? 292 'BulkCredit' test.out

#- 293 BulkDebit
samples/cli/sample-apps Platform bulkDebit \
    --namespace $AB_NAMESPACE \
    --body '[{"currencyCode": "JP2aZvg9AaIVESis", "request": {"allowOverdraft": true, "amount": 6, "balanceOrigin": "System", "balanceSource": "DLC_REVOCATION", "metadata": {"BxOR3s051ERHazD6": {}, "2f8FomA8JymcVgNu": {}, "NcgjnWG2VtCZYb0s": {}}, "reason": "lONQLPSTRWwPQcSy"}, "userIds": ["NHfoXJA7thOUBqo7", "uUThkwLQSVc2UcNZ", "CAekr7ex0qeO6KuH"]}, {"currencyCode": "hgnQ8nqVFwtuAoYK", "request": {"allowOverdraft": false, "amount": 97, "balanceOrigin": "IOS", "balanceSource": "PAYMENT", "metadata": {"01RqTORqHsTUp1T9": {}, "PvabWt9jwF1MHb5y": {}, "wMY30JBBmHjiuxnh": {}}, "reason": "iQeqLvOtsjxYM2V2"}, "userIds": ["K4qnaGg5afwDFVTA", "BMsF6nMD8hh4EONj", "mFYYcHXw7AIJRLIX"]}, {"currencyCode": "9irOunfw50MVFC9j", "request": {"allowOverdraft": true, "amount": 100, "balanceOrigin": "Other", "balanceSource": "DLC_REVOCATION", "metadata": {"0t4gD13wIFpVfwr1": {}, "36vhd4jS5rb0QJBM": {}, "DQOKrCK429pXt24s": {}}, "reason": "qFjscqKZGwxqdHwQ"}, "userIds": ["Da90XbyViKa0QV4b", "NGYqq2G0yuH4IyPx", "rDcwC25nyp70Xj64"]}]' \
    > test.out 2>&1
eval_tap $? 293 'BulkDebit' test.out

#- 294 GetWallet
eval_tap 0 294 'GetWallet # SKIP deprecated' test.out

#- 295 SyncOrders
samples/cli/sample-apps Platform syncOrders \
    --nextEvaluatedKey '8uGFpY4E2FGB0tIl' \
    --end 'EZqHbPQE7Ow9loLn' \
    --start 'STZHLZDHeZwZBpDL' \
    > test.out 2>&1
eval_tap $? 295 'SyncOrders' test.out

#- 296 TestAdyenConfig
samples/cli/sample-apps Platform testAdyenConfig \
    --sandbox 'false' \
    --body '{"allowedPaymentMethods": ["tNAAt5PwkZZP8RmC", "ngdC6ajKmrWhJXEG", "cuaUpHH8qgxj1xGe"], "apiKey": "Teg837VFzHJV0Iys", "authoriseAsCapture": false, "blockedPaymentMethods": ["9xog8s837AZ8W1Wq", "DNPFViRToWwGo738", "YymARS0H9QE8AeRt"], "clientKey": "F0D0uX7qFVZsCfiM", "dropInSettings": "8i2SMXpmtYFYxhVt", "liveEndpointUrlPrefix": "3V2DICrX3gmHkrHG", "merchantAccount": "gXNHW96gFDycwYzK", "notificationHmacKey": "CqyBhwI6swr0DiLk", "notificationPassword": "iEjV3tVfvZOiP7Ha", "notificationUsername": "JEA77OsxEnDixbgt", "returnUrl": "AEQg7vkwC8AnWptt", "settings": "Mvj49KLc28XTZ6JK"}' \
    > test.out 2>&1
eval_tap $? 296 'TestAdyenConfig' test.out

#- 297 TestAliPayConfig
samples/cli/sample-apps Platform testAliPayConfig \
    --sandbox 'true' \
    --body '{"appId": "GPsCdhluhMfeJikk", "privateKey": "D5cdFHuwscR5M7WS", "publicKey": "ObLgeijgKXVuewGS", "returnUrl": "ADLh6XzMuU2GA7mW"}' \
    > test.out 2>&1
eval_tap $? 297 'TestAliPayConfig' test.out

#- 298 TestCheckoutConfig
samples/cli/sample-apps Platform testCheckoutConfig \
    --sandbox 'true' \
    --body '{"publicKey": "9cxSKxijL5HlamCd", "secretKey": "dOleMJerV4WuyEn9"}' \
    > test.out 2>&1
eval_tap $? 298 'TestCheckoutConfig' test.out

#- 299 DebugMatchedPaymentMerchantConfig
samples/cli/sample-apps Platform debugMatchedPaymentMerchantConfig \
    --namespace 'inZVKEIqkTwlAZfT' \
    --region '2XkBHxNpccpV9ghq' \
    > test.out 2>&1
eval_tap $? 299 'DebugMatchedPaymentMerchantConfig' test.out

#- 300 TestPayPalConfig
samples/cli/sample-apps Platform testPayPalConfig \
    --sandbox 'false' \
    --body '{"clientID": "hMxCXnDhJTWvoFx2", "clientSecret": "CwkFE4p9YLFdHVvu", "returnUrl": "j0y5IUmr0Ok4CHUJ", "webHookId": "DrRv8mloMSeFqb6U"}' \
    > test.out 2>&1
eval_tap $? 300 'TestPayPalConfig' test.out

#- 301 TestStripeConfig
samples/cli/sample-apps Platform testStripeConfig \
    --sandbox 'true' \
    --body '{"allowedPaymentMethodTypes": ["X6p1K3C8nMa4B5Qn", "VjQFcBV4Bi5WtiOH", "4h6YlaGojUf0kqKH"], "publishableKey": "cTkFAZIiVI4kDtvP", "secretKey": "M77wvTer8UKejuQm", "webhookSecret": "K12VAuiDQuZTH0uc"}' \
    > test.out 2>&1
eval_tap $? 301 'TestStripeConfig' test.out

#- 302 TestWxPayConfig
samples/cli/sample-apps Platform testWxPayConfig \
    --body '{"appId": "HedOmFDPaTtXb8XI", "key": "KAEFGCTxOF59a2pi", "mchid": "OyJpoapGPoXtN70f", "returnUrl": "SChcv4usej9IMK05"}' \
    > test.out 2>&1
eval_tap $? 302 'TestWxPayConfig' test.out

#- 303 TestXsollaConfig
samples/cli/sample-apps Platform testXsollaConfig \
    --body '{"apiKey": "Kg0rTygJr1cxkN3P", "flowCompletionUrl": "FPxFveQ2rfTmBYa6", "merchantId": 27, "projectId": 40, "projectSecretKey": "jKiNkw88ZxB8nDCQ"}' \
    > test.out 2>&1
eval_tap $? 303 'TestXsollaConfig' test.out

#- 304 GetPaymentMerchantConfig
samples/cli/sample-apps Platform getPaymentMerchantConfig \
    --id 'FZpCo4RCYaJBWysk' \
    > test.out 2>&1
eval_tap $? 304 'GetPaymentMerchantConfig' test.out

#- 305 UpdateAdyenConfig
samples/cli/sample-apps Platform updateAdyenConfig \
    --id 'ToXaiWCe0lFehE9g' \
    --sandbox 'false' \
    --validate 'true' \
    --body '{"allowedPaymentMethods": ["shLvhcHr7y4GD1hW", "SRl5bqUNblt0S3aT", "xrHej52pRCOuQXRd"], "apiKey": "0lLFXTQicjCTYvCW", "authoriseAsCapture": true, "blockedPaymentMethods": ["Mt6MWWdgPEWcqUOj", "EzR5moLXKi91uHDz", "OrtQBhQ5kxc2Yy3B"], "clientKey": "uobLbD3zsntslUqX", "dropInSettings": "kV3B5WjxlLKu1R3V", "liveEndpointUrlPrefix": "wsqJ7EVMRxCYKxab", "merchantAccount": "u9jpiDQcZotyF5jg", "notificationHmacKey": "mY0ontNlcLXtex4m", "notificationPassword": "5eowhH6wfM5v9VGb", "notificationUsername": "Zzw7afJ1lEhMNL1B", "returnUrl": "erTF8mcbdQdCLcL1", "settings": "V0HRvPrjBvSHDPgO"}' \
    > test.out 2>&1
eval_tap $? 305 'UpdateAdyenConfig' test.out

#- 306 TestAdyenConfigById
samples/cli/sample-apps Platform testAdyenConfigById \
    --id 'iR4WuyVgztDrktve' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 306 'TestAdyenConfigById' test.out

#- 307 UpdateAliPayConfig
samples/cli/sample-apps Platform updateAliPayConfig \
    --id '3MyPvoUBpEfEjuLV' \
    --sandbox 'false' \
    --validate 'true' \
    --body '{"appId": "szY0KpY2Xd1xd2Q9", "privateKey": "FlDT9UT7AmEIm42I", "publicKey": "ygyIq7XGOZd1GIXg", "returnUrl": "Z1IjPtBOgUdzOx8s"}' \
    > test.out 2>&1
eval_tap $? 307 'UpdateAliPayConfig' test.out

#- 308 TestAliPayConfigById
samples/cli/sample-apps Platform testAliPayConfigById \
    --id 'CeVHT7wlHAeCxooK' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 308 'TestAliPayConfigById' test.out

#- 309 UpdateCheckoutConfig
samples/cli/sample-apps Platform updateCheckoutConfig \
    --id '5wSOOQOorUbrFl3P' \
    --sandbox 'false' \
    --validate 'false' \
    --body '{"publicKey": "D3t1y8pVkcn4JOZp", "secretKey": "lgCTPXveAvneRNHd"}' \
    > test.out 2>&1
eval_tap $? 309 'UpdateCheckoutConfig' test.out

#- 310 TestCheckoutConfigById
samples/cli/sample-apps Platform testCheckoutConfigById \
    --id 'PvuAFTvIGg89qSAI' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 310 'TestCheckoutConfigById' test.out

#- 311 UpdatePayPalConfig
samples/cli/sample-apps Platform updatePayPalConfig \
    --id 'vNehH2dphgb06WOR' \
    --sandbox 'true' \
    --validate 'true' \
    --body '{"clientID": "WAiTIyoo8yqCgeMB", "clientSecret": "AKtv05RaGSgpdtG8", "returnUrl": "2rMZnxYmqVscSYK0", "webHookId": "YusF03s8q1Mo8eHr"}' \
    > test.out 2>&1
eval_tap $? 311 'UpdatePayPalConfig' test.out

#- 312 TestPayPalConfigById
samples/cli/sample-apps Platform testPayPalConfigById \
    --id '99pWyviyJkvSudPr' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 312 'TestPayPalConfigById' test.out

#- 313 UpdateStripeConfig
samples/cli/sample-apps Platform updateStripeConfig \
    --id '86nrY8WUT9pJxO9U' \
    --sandbox 'true' \
    --validate 'true' \
    --body '{"allowedPaymentMethodTypes": ["It2Z6HptsiUGeE4k", "plC72AZcRclyRjl7", "oM0gJXg9lCAu55YX"], "publishableKey": "wOamgGc6XpAHIpzw", "secretKey": "VA9B3HHwbl1HmdQO", "webhookSecret": "0s1KlHMevbKEO6sl"}' \
    > test.out 2>&1
eval_tap $? 313 'UpdateStripeConfig' test.out

#- 314 TestStripeConfigById
samples/cli/sample-apps Platform testStripeConfigById \
    --id 'ZNwzXyq77WmwBYct' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 314 'TestStripeConfigById' test.out

#- 315 UpdateWxPayConfig
samples/cli/sample-apps Platform updateWxPayConfig \
    --id 'HMQ2Vzdixe8sRJEB' \
    --validate 'true' \
    --body '{"appId": "kyH0e9QK7OhYrrGf", "key": "o8X64oHH4g2GxVAn", "mchid": "Zv4y7k4TAnwHwkt8", "returnUrl": "84SVI8y8p6gQKZi5"}' \
    > test.out 2>&1
eval_tap $? 315 'UpdateWxPayConfig' test.out

#- 316 UpdateWxPayConfigCert
samples/cli/sample-apps Platform updateWxPayConfigCert \
    --id 'NDWq4kZ7omRbeyi3' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 316 'UpdateWxPayConfigCert' test.out

#- 317 TestWxPayConfigById
samples/cli/sample-apps Platform testWxPayConfigById \
    --id 'IwYQyRBr5I3gvndK' \
    > test.out 2>&1
eval_tap $? 317 'TestWxPayConfigById' test.out

#- 318 UpdateXsollaConfig
samples/cli/sample-apps Platform updateXsollaConfig \
    --id 'nM1iMwo9sJdwRh0I' \
    --validate 'false' \
    --body '{"apiKey": "705jb9LQnbIhUFBJ", "flowCompletionUrl": "BwngOwTneAckPRp9", "merchantId": 6, "projectId": 27, "projectSecretKey": "facGJFzXc7vA5f6s"}' \
    > test.out 2>&1
eval_tap $? 318 'UpdateXsollaConfig' test.out

#- 319 TestXsollaConfigById
samples/cli/sample-apps Platform testXsollaConfigById \
    --id 'VZ2NIFzpSJ0J8yM7' \
    > test.out 2>&1
eval_tap $? 319 'TestXsollaConfigById' test.out

#- 320 UpdateXsollaUIConfig
samples/cli/sample-apps Platform updateXsollaUIConfig \
    --id 'yDXfnzVyvcvV5fQF' \
    --body '{"device": "MOBILE", "showCloseButton": false, "size": "LARGE", "theme": "DARK"}' \
    > test.out 2>&1
eval_tap $? 320 'UpdateXsollaUIConfig' test.out

#- 321 QueryPaymentProviderConfig
samples/cli/sample-apps Platform queryPaymentProviderConfig \
    --limit '5' \
    --namespace 'KP2eugvK0X8TObPG' \
    --offset '83' \
    --region 'II8QuaSdRkneZWSl' \
    > test.out 2>&1
eval_tap $? 321 'QueryPaymentProviderConfig' test.out

#- 322 CreatePaymentProviderConfig
samples/cli/sample-apps Platform createPaymentProviderConfig \
    --body '{"aggregate": "XSOLLA", "namespace": "lN35oYWmG8JzWK86", "region": "kaL7Gc9JsToXyfJm", "sandboxTaxJarApiToken": "iDqyD42lJslYV9DV", "specials": ["ALIPAY", "STRIPE", "ADYEN"], "taxJarApiToken": "jivEJgWZfz4wv2dh", "taxJarEnabled": true, "useGlobalTaxJarApiToken": false}' \
    > test.out 2>&1
eval_tap $? 322 'CreatePaymentProviderConfig' test.out

#- 323 GetAggregatePaymentProviders
samples/cli/sample-apps Platform getAggregatePaymentProviders \
    > test.out 2>&1
eval_tap $? 323 'GetAggregatePaymentProviders' test.out

#- 324 DebugMatchedPaymentProviderConfig
samples/cli/sample-apps Platform debugMatchedPaymentProviderConfig \
    --namespace 'LPxaoYAbPkvTKhZK' \
    --region 'ZrODunQ8eI3uKljv' \
    > test.out 2>&1
eval_tap $? 324 'DebugMatchedPaymentProviderConfig' test.out

#- 325 GetSpecialPaymentProviders
samples/cli/sample-apps Platform getSpecialPaymentProviders \
    > test.out 2>&1
eval_tap $? 325 'GetSpecialPaymentProviders' test.out

#- 326 UpdatePaymentProviderConfig
samples/cli/sample-apps Platform updatePaymentProviderConfig \
    --id 'rqJzlQvxFT8quuCG' \
    --body '{"aggregate": "ADYEN", "namespace": "hdn1flYEEYDs0SwE", "region": "dnwHDpz2RPUdZQER", "sandboxTaxJarApiToken": "KOvioQ2NtVgPH96A", "specials": ["XSOLLA", "STRIPE", "XSOLLA"], "taxJarApiToken": "qWC9B5FMDSD1lGjb", "taxJarEnabled": false, "useGlobalTaxJarApiToken": true}' \
    > test.out 2>&1
eval_tap $? 326 'UpdatePaymentProviderConfig' test.out

#- 327 DeletePaymentProviderConfig
samples/cli/sample-apps Platform deletePaymentProviderConfig \
    --id 'TkvmJjFIpHAV7rVA' \
    > test.out 2>&1
eval_tap $? 327 'DeletePaymentProviderConfig' test.out

#- 328 GetPaymentTaxConfig
samples/cli/sample-apps Platform getPaymentTaxConfig \
    > test.out 2>&1
eval_tap $? 328 'GetPaymentTaxConfig' test.out

#- 329 UpdatePaymentTaxConfig
samples/cli/sample-apps Platform updatePaymentTaxConfig \
    --body '{"sandboxTaxJarApiToken": "d4CyaNAoURohkuCH", "taxJarApiToken": "7LsBNCa5mGzH6R6j", "taxJarEnabled": true, "taxJarProductCodesMapping": {"lkdMiDv0YgdR43uh": "tPrqz57FN8tlpx4W", "6pyOJUF37gd6YlB3": "G7PT2P04Ufc5oycH", "UZNytUkkLaQTjKF9": "CgtPIOUcpB5DynUj"}}' \
    > test.out 2>&1
eval_tap $? 329 'UpdatePaymentTaxConfig' test.out

#- 330 SyncPaymentOrders
samples/cli/sample-apps Platform syncPaymentOrders \
    --nextEvaluatedKey 'dTOUqWclrhPumfOt' \
    --end 'UQrBRvjnicjyOQ22' \
    --start 'U7JFl62EQJZjeI5T' \
    > test.out 2>&1
eval_tap $? 330 'SyncPaymentOrders' test.out

#- 331 PublicGetRootCategories
samples/cli/sample-apps Platform publicGetRootCategories \
    --namespace $AB_NAMESPACE \
    --language 'sieAlN1HQGpkDb5U' \
    --storeId '1Dwt7BJ9pfxZRINE' \
    > test.out 2>&1
eval_tap $? 331 'PublicGetRootCategories' test.out

#- 332 DownloadCategories
samples/cli/sample-apps Platform downloadCategories \
    --namespace $AB_NAMESPACE \
    --language 'ygOaTByitrbN9Nl5' \
    --storeId 'xKq4emTH5T0tRotv' \
    > test.out 2>&1
eval_tap $? 332 'DownloadCategories' test.out

#- 333 PublicGetCategory
samples/cli/sample-apps Platform publicGetCategory \
    --categoryPath 'vflN5djSXiOEIhkW' \
    --namespace $AB_NAMESPACE \
    --language '2DVY0cpNf6NBtwpy' \
    --storeId 'SeIMNe1Q8mB1Gf2X' \
    > test.out 2>&1
eval_tap $? 333 'PublicGetCategory' test.out

#- 334 PublicGetChildCategories
samples/cli/sample-apps Platform publicGetChildCategories \
    --categoryPath 'UYNw650FruF0MXer' \
    --namespace $AB_NAMESPACE \
    --language 'N0tLtJHcx3OnaAgG' \
    --storeId 'sdpdnyJBNr6DJT6j' \
    > test.out 2>&1
eval_tap $? 334 'PublicGetChildCategories' test.out

#- 335 PublicGetDescendantCategories
samples/cli/sample-apps Platform publicGetDescendantCategories \
    --categoryPath 'kHjAW4rPwGWxpkJg' \
    --namespace $AB_NAMESPACE \
    --language '92YrkfRkldrX0joe' \
    --storeId 'jeyuxYomSWW7P29g' \
    > test.out 2>&1
eval_tap $? 335 'PublicGetDescendantCategories' test.out

#- 336 PublicListCurrencies
samples/cli/sample-apps Platform publicListCurrencies \
    --namespace $AB_NAMESPACE \
    --currencyType 'VIRTUAL' \
    > test.out 2>&1
eval_tap $? 336 'PublicListCurrencies' test.out

#- 337 GetIAPItemMapping
samples/cli/sample-apps Platform getIAPItemMapping \
    --namespace $AB_NAMESPACE \
    --platform 'APPLE' \
    > test.out 2>&1
eval_tap $? 337 'GetIAPItemMapping' test.out

#- 338 PublicGetItemByAppId
samples/cli/sample-apps Platform publicGetItemByAppId \
    --namespace $AB_NAMESPACE \
    --language 'DW0B2Qwm0RGEJjJw' \
    --region 'X8KFG2EjWpgjmO0X' \
    --storeId 'OcJ2YaYrURQA1HoD' \
    --appId 'wXXmaGaXpTufOzik' \
    > test.out 2>&1
eval_tap $? 338 'PublicGetItemByAppId' test.out

#- 339 PublicQueryItems
samples/cli/sample-apps Platform publicQueryItems \
    --namespace $AB_NAMESPACE \
    --appType 'DLC' \
    --baseAppId 'lM1r8uXORpf1b42N' \
    --categoryPath 'PH6TQYXScciQFGxy' \
    --features 'YEuyKKkQhOSMXu0d' \
    --includeSubCategoryItem 'false' \
    --itemType 'OPTIONBOX' \
    --language 'ZEwU1uhPY9XHv0rq' \
    --limit '38' \
    --offset '100' \
    --region 'GyKgnJVV41YbQZK5' \
    --sortBy '["displayOrder", "updatedAt:desc", "name:desc"]' \
    --storeId 'xYoSWv9k0oDp8v0s' \
    --tags 'PzMat78UOfoPvYuD' \
    > test.out 2>&1
eval_tap $? 339 'PublicQueryItems' test.out

#- 340 PublicGetItemBySku
samples/cli/sample-apps Platform publicGetItemBySku \
    --namespace $AB_NAMESPACE \
    --language 'SKPdETB4Hxnb4Vg3' \
    --region 'QYMK6P3U58teIBFB' \
    --storeId '2CWsXqkFT2bWpwxN' \
    --sku 'qmLssQq6PVBagxSb' \
    > test.out 2>&1
eval_tap $? 340 'PublicGetItemBySku' test.out

#- 341 PublicBulkGetItems
samples/cli/sample-apps Platform publicBulkGetItems \
    --namespace $AB_NAMESPACE \
    --language 'nez1JBYZNeA8Khvv' \
    --region 'EW8WRVToxANMjjF6' \
    --storeId 'EGpCDg1eQIN6tDi1' \
    --itemIds '8XkH4ntrxBd1oo5y' \
    > test.out 2>&1
eval_tap $? 341 'PublicBulkGetItems' test.out

#- 342 PublicValidateItemPurchaseCondition
samples/cli/sample-apps Platform publicValidateItemPurchaseCondition \
    --namespace $AB_NAMESPACE \
    --body '{"itemIds": ["TEPJcHioY3DPCXSm", "rVHIaFdaJvVqLh3Q", "4EPfdmxcxkaBtyBh"]}' \
    > test.out 2>&1
eval_tap $? 342 'PublicValidateItemPurchaseCondition' test.out

#- 343 PublicSearchItems
samples/cli/sample-apps Platform publicSearchItems \
    --namespace $AB_NAMESPACE \
    --itemType 'CODE' \
    --limit '48' \
    --offset '41' \
    --region '12JwAkZbtzxxK6My' \
    --storeId 'lFO9mQiEeQRZwnpb' \
    --keyword 'MHYVOFQy3CbqzL1Y' \
    --language 'JdHgnVm6R06yDBuO' \
    > test.out 2>&1
eval_tap $? 343 'PublicSearchItems' test.out

#- 344 PublicGetApp
samples/cli/sample-apps Platform publicGetApp \
    --itemId '8sgd0EATBFtjCI8T' \
    --namespace $AB_NAMESPACE \
    --language 'PTSCnI49ytzObztE' \
    --region 'wvSOYJsOMR2FJYJJ' \
    --storeId 'ZdiGqdSz4ncDWrMn' \
    > test.out 2>&1
eval_tap $? 344 'PublicGetApp' test.out

#- 345 PublicGetItemDynamicData
samples/cli/sample-apps Platform publicGetItemDynamicData \
    --itemId 't9pfb4LeC98NmVLc' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 345 'PublicGetItemDynamicData' test.out

#- 346 PublicGetItem
samples/cli/sample-apps Platform publicGetItem \
    --itemId 'nN5VJKlhOkSgalBy' \
    --namespace $AB_NAMESPACE \
    --language 'fjUIXmDSW5ky0oPQ' \
    --populateBundle 'false' \
    --region 'Jd0kJzLm6qNXKpRg' \
    --storeId 'uM6KYeG7dliqnv3U' \
    > test.out 2>&1
eval_tap $? 346 'PublicGetItem' test.out

#- 347 GetPaymentCustomization
eval_tap 0 347 'GetPaymentCustomization # SKIP deprecated' test.out

#- 348 PublicGetPaymentUrl
samples/cli/sample-apps Platform publicGetPaymentUrl \
    --namespace $AB_NAMESPACE \
    --body '{"paymentOrderNo": "WMIJV9YOgjDYwS8J", "paymentProvider": "WXPAY", "returnUrl": "1AkzZKuk8muz4XlC", "ui": "YG7UJNc6AgpEW43x", "zipCode": "bN7fAQbCuGTi2HAy"}' \
    > test.out 2>&1
eval_tap $? 348 'PublicGetPaymentUrl' test.out

#- 349 PublicGetPaymentMethods
samples/cli/sample-apps Platform publicGetPaymentMethods \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo '4EesgPobCyymilAC' \
    > test.out 2>&1
eval_tap $? 349 'PublicGetPaymentMethods' test.out

#- 350 PublicGetUnpaidPaymentOrder
samples/cli/sample-apps Platform publicGetUnpaidPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'f6x0hlcvHVvtR7x9' \
    > test.out 2>&1
eval_tap $? 350 'PublicGetUnpaidPaymentOrder' test.out

#- 351 Pay
samples/cli/sample-apps Platform pay \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'HZT0buL0IIS7aXFv' \
    --paymentProvider 'CHECKOUT' \
    --zipCode 'rSFJjP9uLfeHjHir' \
    --body '{"token": "nQ5HmK9A9PZGe8YH"}' \
    > test.out 2>&1
eval_tap $? 351 'Pay' test.out

#- 352 PublicCheckPaymentOrderPaidStatus
samples/cli/sample-apps Platform publicCheckPaymentOrderPaidStatus \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'fI7li45YKXKgY3om' \
    > test.out 2>&1
eval_tap $? 352 'PublicCheckPaymentOrderPaidStatus' test.out

#- 353 GetPaymentPublicConfig
samples/cli/sample-apps Platform getPaymentPublicConfig \
    --namespace $AB_NAMESPACE \
    --sandbox 'false' \
    --paymentProvider 'CHECKOUT' \
    --region '8z9LuIi4t7DKdrQw' \
    > test.out 2>&1
eval_tap $? 353 'GetPaymentPublicConfig' test.out

#- 354 PublicGetQRCode
samples/cli/sample-apps Platform publicGetQRCode \
    --namespace $AB_NAMESPACE \
    --code 'UrZC5nOR4li2eNvM' \
    > test.out 2>&1
eval_tap $? 354 'PublicGetQRCode' test.out

#- 355 PublicNormalizePaymentReturnUrl
samples/cli/sample-apps Platform publicNormalizePaymentReturnUrl \
    --namespace $AB_NAMESPACE \
    --payerID 'esMpJaVoQtHiik6f' \
    --foreinginvoice '6x9i1W6Amsn5Ldeb' \
    --invoiceId 'gakJlGHUka930WA4' \
    --payload 'Vb5nGbN4DYoVBlRW' \
    --redirectResult 'vSGfQuYkMxbzXhtU' \
    --resultCode 'zGLBnPKSFcVU7kU6' \
    --sessionId 'ZVQv8Dnrg6HrcKG7' \
    --status 'ZDLcKXgcsCRLvZsk' \
    --token 'bWLBGlDhnWiKCy56' \
    --type 'uOudh15hkJjFCDFS' \
    --userId 'KKRPpr2s6OZsDFSr' \
    --orderNo 'AjcMf7gk8hLboPAs' \
    --paymentOrderNo 'loxDiWPkyOFwtj4T' \
    --paymentProvider 'WXPAY' \
    --returnUrl 'EyWksLUmBUjQJBch' \
    > test.out 2>&1
eval_tap $? 355 'PublicNormalizePaymentReturnUrl' test.out

#- 356 GetPaymentTaxValue
samples/cli/sample-apps Platform getPaymentTaxValue \
    --namespace $AB_NAMESPACE \
    --zipCode 'iJWKylhActZSYUzQ' \
    --paymentOrderNo 'QhVtsD0B39bhmnPx' \
    --paymentProvider 'XSOLLA' \
    > test.out 2>&1
eval_tap $? 356 'GetPaymentTaxValue' test.out

#- 357 GetRewardByCode
samples/cli/sample-apps Platform getRewardByCode \
    --namespace $AB_NAMESPACE \
    --rewardCode 'tTNzfyYSLQNvp62w' \
    > test.out 2>&1
eval_tap $? 357 'GetRewardByCode' test.out

#- 358 QueryRewards1
samples/cli/sample-apps Platform queryRewards1 \
    --namespace $AB_NAMESPACE \
    --eventTopic 'F0Iy0kMUPLY6Rq6j' \
    --limit '10' \
    --offset '99' \
    --sortBy '["namespace:asc", "namespace", "rewardCode:asc"]' \
    > test.out 2>&1
eval_tap $? 358 'QueryRewards1' test.out

#- 359 GetReward1
samples/cli/sample-apps Platform getReward1 \
    --namespace $AB_NAMESPACE \
    --rewardId 'xgYHrVlyGAeYRT9t' \
    > test.out 2>&1
eval_tap $? 359 'GetReward1' test.out

#- 360 PublicListStores
samples/cli/sample-apps Platform publicListStores \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 360 'PublicListStores' test.out

#- 361 PublicExistsAnyMyActiveEntitlement
samples/cli/sample-apps Platform publicExistsAnyMyActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --appIds '["qcpJWWFaTwoQNHgU", "qvxwkgaEFNbqBjHc", "6r4CWl17bIQC77Ro"]' \
    --itemIds '["ZRbqanqkyT5wPZhc", "PfW1OZm5wbEguoxC", "yr2SH7ehbni5yzQ4"]' \
    --skus '["Ki6HJQwH0lD6AOaj", "gFDfMMJL8fgf3UvJ", "HeKyzNfxuqOoCOHa"]' \
    > test.out 2>&1
eval_tap $? 361 'PublicExistsAnyMyActiveEntitlement' test.out

#- 362 PublicGetMyAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform publicGetMyAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --appId 'fbs2MJsmMgWlVx8X' \
    > test.out 2>&1
eval_tap $? 362 'PublicGetMyAppEntitlementOwnershipByAppId' test.out

#- 363 PublicGetMyEntitlementOwnershipByItemId
samples/cli/sample-apps Platform publicGetMyEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --entitlementClazz 'MEDIA' \
    --itemId 'NxmaUHuXgMUvlfK9' \
    > test.out 2>&1
eval_tap $? 363 'PublicGetMyEntitlementOwnershipByItemId' test.out

#- 364 PublicGetMyEntitlementOwnershipBySku
samples/cli/sample-apps Platform publicGetMyEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --entitlementClazz 'MEDIA' \
    --sku '41CusoUssohrJnVR' \
    > test.out 2>&1
eval_tap $? 364 'PublicGetMyEntitlementOwnershipBySku' test.out

#- 365 PublicGetEntitlementOwnershipToken
samples/cli/sample-apps Platform publicGetEntitlementOwnershipToken \
    --namespace $AB_NAMESPACE \
    --appIds '["5vlfjwvPme5Dv1O7", "FWZ9jgiWsKYFXyhS", "rpygE08mWQElP1RY"]' \
    --itemIds '["1g8m25FLDQkbSZA6", "S42B8qLn0g4LmOG7", "E1hmzV3WelPGTXkC"]' \
    --skus '["PD1kLK9kuw88jnnr", "GwxLgS3V3zGpyERi", "P4bZo5oKO1msM7vq"]' \
    > test.out 2>&1
eval_tap $? 365 'PublicGetEntitlementOwnershipToken' test.out

#- 366 SyncTwitchDropsEntitlement
samples/cli/sample-apps Platform syncTwitchDropsEntitlement \
    --namespace $AB_NAMESPACE \
    --body '{"gameId": "ahl9A4kftqwYBsbj", "language": "TjF-RRPh", "region": "yL4cg5LbCizK49X4"}' \
    > test.out 2>&1
eval_tap $? 366 'SyncTwitchDropsEntitlement' test.out

#- 367 PublicGetMyWallet
samples/cli/sample-apps Platform publicGetMyWallet \
    --currencyCode 'CSpFEJ77pHg5JLsi' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 367 'PublicGetMyWallet' test.out

#- 368 SyncEpicGameDLC
samples/cli/sample-apps Platform syncEpicGameDLC \
    --namespace $AB_NAMESPACE \
    --userId 'b7evSaIoncmlToak' \
    --body '{"epicGamesJwtToken": "ou9mjhzxzrHg6iTw"}' \
    > test.out 2>&1
eval_tap $? 368 'SyncEpicGameDLC' test.out

#- 369 SyncOculusDLC
samples/cli/sample-apps Platform syncOculusDLC \
    --namespace $AB_NAMESPACE \
    --userId 'f5o9uTgHrp1cdN4g' \
    > test.out 2>&1
eval_tap $? 369 'SyncOculusDLC' test.out

#- 370 PublicSyncPsnDlcInventory
samples/cli/sample-apps Platform publicSyncPsnDlcInventory \
    --namespace $AB_NAMESPACE \
    --userId 'lrG5VHcSE0Uq8PC8' \
    --body '{"serviceLabel": 23}' \
    > test.out 2>&1
eval_tap $? 370 'PublicSyncPsnDlcInventory' test.out

#- 371 PublicSyncPsnDlcInventoryWithMultipleServiceLabels
samples/cli/sample-apps Platform publicSyncPsnDlcInventoryWithMultipleServiceLabels \
    --namespace $AB_NAMESPACE \
    --userId 'blVjIlVjzMByI4Hx' \
    --body '{"serviceLabels": [91, 83, 79]}' \
    > test.out 2>&1
eval_tap $? 371 'PublicSyncPsnDlcInventoryWithMultipleServiceLabels' test.out

#- 372 SyncSteamDLC
samples/cli/sample-apps Platform syncSteamDLC \
    --namespace $AB_NAMESPACE \
    --userId 'fwuqekSp3pYkTemY' \
    --body '{"appId": "65ObTmYVeDIw7cTS", "steamId": "5rwW8zG4NmHXF62o"}' \
    > test.out 2>&1
eval_tap $? 372 'SyncSteamDLC' test.out

#- 373 SyncXboxDLC
samples/cli/sample-apps Platform syncXboxDLC \
    --namespace $AB_NAMESPACE \
    --userId 'qWYgE1n59grKDykq' \
    --body '{"xstsToken": "osRtMD1y8lrpmqlV"}' \
    > test.out 2>&1
eval_tap $? 373 'SyncXboxDLC' test.out

#- 374 PublicQueryUserEntitlements
samples/cli/sample-apps Platform publicQueryUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'htYZttnFHiCM5K1d' \
    --appType 'GAME' \
    --entitlementClazz 'LOOTBOX' \
    --entitlementName 'UefuKIHM2HSqyz3d' \
    --features '["BjDJOuwlLG6XQxzi", "4a6XrHrdQCSOoLdI", "8qwsspjJ569WgTRG"]' \
    --itemId '["XIyfnxHTCVR3q3S1", "wrppj90QASv1Wamy", "YZLqnb8j2JpaNMwp"]' \
    --limit '84' \
    --offset '12' \
    > test.out 2>&1
eval_tap $? 374 'PublicQueryUserEntitlements' test.out

#- 375 PublicGetUserAppEntitlementByAppId
samples/cli/sample-apps Platform publicGetUserAppEntitlementByAppId \
    --namespace $AB_NAMESPACE \
    --userId '4inyvVw2nn25r37g' \
    --appId '3xJzIRzZc2tAnJNd' \
    > test.out 2>&1
eval_tap $? 375 'PublicGetUserAppEntitlementByAppId' test.out

#- 376 PublicQueryUserEntitlementsByAppType
samples/cli/sample-apps Platform publicQueryUserEntitlementsByAppType \
    --namespace $AB_NAMESPACE \
    --userId 'VugxWDkKGxStJsfc' \
    --limit '6' \
    --offset '61' \
    --appType 'GAME' \
    > test.out 2>&1
eval_tap $? 376 'PublicQueryUserEntitlementsByAppType' test.out

#- 377 PublicGetUserEntitlementByItemId
samples/cli/sample-apps Platform publicGetUserEntitlementByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'Tk7yi8J5e303vlHf' \
    --entitlementClazz 'APP' \
    --itemId '0byNnBG4McHRLzIP' \
    > test.out 2>&1
eval_tap $? 377 'PublicGetUserEntitlementByItemId' test.out

#- 378 PublicGetUserEntitlementBySku
samples/cli/sample-apps Platform publicGetUserEntitlementBySku \
    --namespace $AB_NAMESPACE \
    --userId 'R6CWZqLFZqgF3b1d' \
    --entitlementClazz 'APP' \
    --sku 'D0p9vtGg0Nhm16Rj' \
    > test.out 2>&1
eval_tap $? 378 'PublicGetUserEntitlementBySku' test.out

#- 379 PublicExistsAnyUserActiveEntitlement
samples/cli/sample-apps Platform publicExistsAnyUserActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'eO91DOdJTxIhtfcu' \
    --appIds '["ep3Xg6Zgd2iI3eUr", "LBBMhVv6JFZFWFyj", "DFxKGz6zuXNUGuJ9"]' \
    --itemIds '["HYTuLpAdHYm3e6VY", "MLM8oE89b74kFb88", "mlzEOAwZ3chZMXrR"]' \
    --skus '["fHP5aO6ih7TVrnNd", "gbROKdCUEq4ZNW0q", "5UmAstzZd7rOkpOD"]' \
    > test.out 2>&1
eval_tap $? 379 'PublicExistsAnyUserActiveEntitlement' test.out

#- 380 PublicGetUserAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform publicGetUserAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'VjazRGBfcQyOUukC' \
    --appId 'heE47wx84lr4bE4Y' \
    > test.out 2>&1
eval_tap $? 380 'PublicGetUserAppEntitlementOwnershipByAppId' test.out

#- 381 PublicGetUserEntitlementOwnershipByItemId
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'HItOUBe1hpTvWWaM' \
    --entitlementClazz 'APP' \
    --itemId 'KvDnf6dYEoMcFoqi' \
    > test.out 2>&1
eval_tap $? 381 'PublicGetUserEntitlementOwnershipByItemId' test.out

#- 382 PublicGetUserEntitlementOwnershipByItemIds
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'fqkpZ9p498j2fBaL' \
    --ids '["9Kg7079fXqNQfiC3", "0nxpU207oqoy2rOW", "GBrWIDu3nlCLDp6T"]' \
    > test.out 2>&1
eval_tap $? 382 'PublicGetUserEntitlementOwnershipByItemIds' test.out

#- 383 PublicGetUserEntitlementOwnershipBySku
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --userId '61E6Ztz5GoXyhioI' \
    --entitlementClazz 'ENTITLEMENT' \
    --sku '9YdFdl3IUfIC5nG3' \
    > test.out 2>&1
eval_tap $? 383 'PublicGetUserEntitlementOwnershipBySku' test.out

#- 384 PublicGetUserEntitlement
samples/cli/sample-apps Platform publicGetUserEntitlement \
    --entitlementId 'SfcqhdakFPM5MLZL' \
    --namespace $AB_NAMESPACE \
    --userId 'K4oang3mPu7EDCVF' \
    > test.out 2>&1
eval_tap $? 384 'PublicGetUserEntitlement' test.out

#- 385 PublicConsumeUserEntitlement
samples/cli/sample-apps Platform publicConsumeUserEntitlement \
    --entitlementId 'hO0LAmpwLxdnc9Pb' \
    --namespace $AB_NAMESPACE \
    --userId '2t8ZY7ratRwWRDBq' \
    --body '{"options": ["KrXdDuEkgMTY2KXG", "oHSZgJSpkGZS1l4W", "AUOtyNCPklaD8QVv"], "requestId": "8bkNO3CT918piBn6", "useCount": 27}' \
    > test.out 2>&1
eval_tap $? 385 'PublicConsumeUserEntitlement' test.out

#- 386 PublicSellUserEntitlement
samples/cli/sample-apps Platform publicSellUserEntitlement \
    --entitlementId 'uZxwleZ7Eh1Fqv4b' \
    --namespace $AB_NAMESPACE \
    --userId 'EhAl3QesDzHauFHi' \
    --body '{"requestId": "x34IOGpgar5HnEtc", "useCount": 65}' \
    > test.out 2>&1
eval_tap $? 386 'PublicSellUserEntitlement' test.out

#- 387 PublicRedeemCode
samples/cli/sample-apps Platform publicRedeemCode \
    --namespace $AB_NAMESPACE \
    --userId 'c4XEODDYWWmpr7Xy' \
    --body '{"code": "aDsxjU5OstI2ryKe", "language": "DwI", "region": "y0KfmRysZM0o5bmJ"}' \
    > test.out 2>&1
eval_tap $? 387 'PublicRedeemCode' test.out

#- 388 PublicFulfillAppleIAPItem
samples/cli/sample-apps Platform publicFulfillAppleIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'aEL1VTbPf9CtYi2V' \
    --body '{"excludeOldTransactions": true, "language": "fvEY_hTFF", "productId": "piC6kIX8b7xQX84u", "receiptData": "O1vbRqMz4l9EpQiT", "region": "Fe3TNK0H83owbU16", "transactionId": "2OEuiCqLd9OIZSEl"}' \
    > test.out 2>&1
eval_tap $? 388 'PublicFulfillAppleIAPItem' test.out

#- 389 SyncEpicGamesInventory
samples/cli/sample-apps Platform syncEpicGamesInventory \
    --namespace $AB_NAMESPACE \
    --userId 'qNMbxxZSRDcFG7H4' \
    --body '{"epicGamesJwtToken": "4lkL5koIhnPs80ku"}' \
    > test.out 2>&1
eval_tap $? 389 'SyncEpicGamesInventory' test.out

#- 390 PublicFulfillGoogleIAPItem
samples/cli/sample-apps Platform publicFulfillGoogleIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'ryBBY7qgTx3vgbCJ' \
    --body '{"autoAck": true, "language": "yvT-Av", "orderId": "ZCto0Ke1sotPuL1y", "packageName": "oBz9fmBbzBvZH83D", "productId": "L8GRhZ9RDMnm4vPQ", "purchaseTime": 15, "purchaseToken": "Mj70pYfabCItwBIi", "region": "jq4t3g9QfpJj6Gn2"}' \
    > test.out 2>&1
eval_tap $? 390 'PublicFulfillGoogleIAPItem' test.out

#- 391 SyncOculusConsumableEntitlements
samples/cli/sample-apps Platform syncOculusConsumableEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'Gz27fVZWjVpmujyC' \
    > test.out 2>&1
eval_tap $? 391 'SyncOculusConsumableEntitlements' test.out

#- 392 PublicReconcilePlayStationStore
samples/cli/sample-apps Platform publicReconcilePlayStationStore \
    --namespace $AB_NAMESPACE \
    --userId 'hGQOYU1Fjixw8PSM' \
    --body '{"currencyCode": "1wTwO8Ybf2TrWGax", "price": 0.12208062854409829, "productId": "a0E9i18p0bjHQthh", "serviceLabel": 9}' \
    > test.out 2>&1
eval_tap $? 392 'PublicReconcilePlayStationStore' test.out

#- 393 PublicReconcilePlayStationStoreWithMultipleServiceLabels
samples/cli/sample-apps Platform publicReconcilePlayStationStoreWithMultipleServiceLabels \
    --namespace $AB_NAMESPACE \
    --userId 'qMZLhBk3gsTlaTtB' \
    --body '{"currencyCode": "2eUrtRyojUoY5fpj", "price": 0.7958129755185718, "productId": "xfXEExwayC4JTc9b", "serviceLabels": [68, 47, 7]}' \
    > test.out 2>&1
eval_tap $? 393 'PublicReconcilePlayStationStoreWithMultipleServiceLabels' test.out

#- 394 SyncSteamInventory
samples/cli/sample-apps Platform syncSteamInventory \
    --namespace $AB_NAMESPACE \
    --userId 'Cgex4QrwgXyuHLu1' \
    --body '{"appId": "8Od65uaYckzMvzN3", "currencyCode": "OlpCaDVrY6qwfLif", "language": "UH", "price": 0.1374844272973148, "productId": "Jh7K1nKsu67brxcV", "region": "vBzKHo20ZtHHLO9F", "steamId": "jMiDPIYIApa9bFwv"}' \
    > test.out 2>&1
eval_tap $? 394 'SyncSteamInventory' test.out

#- 395 SyncTwitchDropsEntitlement1
samples/cli/sample-apps Platform syncTwitchDropsEntitlement1 \
    --namespace $AB_NAMESPACE \
    --userId 'VCTLBlzkvV3KjsBk' \
    --body '{"gameId": "Vjji2ioDte6F8SAr", "language": "sUyT", "region": "MGYIky8GuEixJbJ8"}' \
    > test.out 2>&1
eval_tap $? 395 'SyncTwitchDropsEntitlement1' test.out

#- 396 SyncXboxInventory
samples/cli/sample-apps Platform syncXboxInventory \
    --namespace $AB_NAMESPACE \
    --userId 'caI3YfziLPfURQFK' \
    --body '{"currencyCode": "Gf7TmQ2XsjKFhbEX", "price": 0.7699775870111274, "productId": "9F6kKM0rTRdeTHCv", "xstsToken": "py5jKj4eQy7ikFII"}' \
    > test.out 2>&1
eval_tap $? 396 'SyncXboxInventory' test.out

#- 397 PublicQueryUserOrders
samples/cli/sample-apps Platform publicQueryUserOrders \
    --namespace $AB_NAMESPACE \
    --userId 'WGqGUDIRJUrjWxOB' \
    --itemId 'pgucXgcsLTYHTMrN' \
    --limit '4' \
    --offset '32' \
    --status 'DELETED' \
    > test.out 2>&1
eval_tap $? 397 'PublicQueryUserOrders' test.out

#- 398 PublicCreateUserOrder
samples/cli/sample-apps Platform publicCreateUserOrder \
    --namespace $AB_NAMESPACE \
    --userId 'N1yyGFLw1aY60QEw' \
    --body '{"currencyCode": "9S2okd8bQx8L527C", "discountedPrice": 50, "ext": {"SwykMEiF0mxSfHB6": {}, "iA4rueSPvePQrOn8": {}, "taeyoTwplc824puC": {}}, "itemId": "0iqWqTD7sPXqz4tJ", "language": "RJ-mxdm", "price": 72, "quantity": 66, "region": "0MxkTad1jztoJTbk", "returnUrl": "H3BqT6XvF6CdYEs6", "sectionId": "e4bq2L7hrulOovw3"}' \
    > test.out 2>&1
eval_tap $? 398 'PublicCreateUserOrder' test.out

#- 399 PublicGetUserOrder
samples/cli/sample-apps Platform publicGetUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'eLBcjtoj8ONQlNl8' \
    --userId 'kufGve77Il1vkA1o' \
    > test.out 2>&1
eval_tap $? 399 'PublicGetUserOrder' test.out

#- 400 PublicCancelUserOrder
samples/cli/sample-apps Platform publicCancelUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'F5y21l3jctkJleSq' \
    --userId 'e53O0HcKs0QoTo2j' \
    > test.out 2>&1
eval_tap $? 400 'PublicCancelUserOrder' test.out

#- 401 PublicGetUserOrderHistories
samples/cli/sample-apps Platform publicGetUserOrderHistories \
    --namespace $AB_NAMESPACE \
    --orderNo 'JWyM8SsmN5U6OdSO' \
    --userId 'Kmy1pqO4iDtrlyGK' \
    > test.out 2>&1
eval_tap $? 401 'PublicGetUserOrderHistories' test.out

#- 402 PublicDownloadUserOrderReceipt
samples/cli/sample-apps Platform publicDownloadUserOrderReceipt \
    --namespace $AB_NAMESPACE \
    --orderNo 'ferSNKEtavxWecdI' \
    --userId 'o5RG34MMo5yjLOmI' \
    > test.out 2>&1
eval_tap $? 402 'PublicDownloadUserOrderReceipt' test.out

#- 403 PublicGetPaymentAccounts
samples/cli/sample-apps Platform publicGetPaymentAccounts \
    --namespace $AB_NAMESPACE \
    --userId 'OLX2rR4sG4AqCCrL' \
    > test.out 2>&1
eval_tap $? 403 'PublicGetPaymentAccounts' test.out

#- 404 PublicDeletePaymentAccount
samples/cli/sample-apps Platform publicDeletePaymentAccount \
    --id 'BpSrsZ4XN7ZOyQuS' \
    --namespace $AB_NAMESPACE \
    --type 'paypal' \
    --userId 'y6SvDRixfhlKNouq' \
    > test.out 2>&1
eval_tap $? 404 'PublicDeletePaymentAccount' test.out

#- 405 PublicListActiveSections
samples/cli/sample-apps Platform publicListActiveSections \
    --namespace $AB_NAMESPACE \
    --userId '5KIqtxPGcD12Qind' \
    --language 'D3EvxHL58Y6XsqAW' \
    --region 'vaX63WF4pts4Oe07' \
    --storeId 'dBmvIFaVDDKJuRyh' \
    --viewId 'BlzO9FDef7ZfqTat' \
    > test.out 2>&1
eval_tap $? 405 'PublicListActiveSections' test.out

#- 406 PublicQueryUserSubscriptions
samples/cli/sample-apps Platform publicQueryUserSubscriptions \
    --namespace $AB_NAMESPACE \
    --userId 'PGd0IFUqEkClYwSY' \
    --chargeStatus 'CHARGED' \
    --itemId 'VwbmRRMtffMRqzG8' \
    --limit '17' \
    --offset '2' \
    --sku 'gS6huFiTepU06K4x' \
    --status 'EXPIRED' \
    --subscribedBy 'USER' \
    > test.out 2>&1
eval_tap $? 406 'PublicQueryUserSubscriptions' test.out

#- 407 PublicSubscribeSubscription
samples/cli/sample-apps Platform publicSubscribeSubscription \
    --namespace $AB_NAMESPACE \
    --userId '3wJuvkttmo0shZqM' \
    --body '{"currencyCode": "54Z11dwC04IRvBxE", "itemId": "7A8nuMn3X0hsewRa", "language": "iSwo_wGrh", "region": "ChhbTGOTaVNxj4GH", "returnUrl": "rD3HgiQS5fLt2UWG", "source": "NPFbDp7YTPHSQlAH"}' \
    > test.out 2>&1
eval_tap $? 407 'PublicSubscribeSubscription' test.out

#- 408 PublicCheckUserSubscriptionSubscribableByItemId
samples/cli/sample-apps Platform publicCheckUserSubscriptionSubscribableByItemId \
    --namespace $AB_NAMESPACE \
    --userId '1v68UtzHAjUoVGrG' \
    --itemId 'Wdphw5cpVNxe3Tet' \
    > test.out 2>&1
eval_tap $? 408 'PublicCheckUserSubscriptionSubscribableByItemId' test.out

#- 409 PublicGetUserSubscription
samples/cli/sample-apps Platform publicGetUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'M5wnmnNoi4QRO08e' \
    --userId 'xrhOSw6yhe4l1hCV' \
    > test.out 2>&1
eval_tap $? 409 'PublicGetUserSubscription' test.out

#- 410 PublicChangeSubscriptionBillingAccount
samples/cli/sample-apps Platform publicChangeSubscriptionBillingAccount \
    --namespace $AB_NAMESPACE \
    --subscriptionId '7QSxopuglbSvhWYB' \
    --userId '5oQjz2vUhzKybvfD' \
    > test.out 2>&1
eval_tap $? 410 'PublicChangeSubscriptionBillingAccount' test.out

#- 411 PublicCancelSubscription
samples/cli/sample-apps Platform publicCancelSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'RdnOiv9lyfi7dXOS' \
    --userId '2MfGMLRwxRV8LzLd' \
    --body '{"immediate": false, "reason": "Hr6p4StSawoNYwZ9"}' \
    > test.out 2>&1
eval_tap $? 411 'PublicCancelSubscription' test.out

#- 412 PublicGetUserSubscriptionBillingHistories
samples/cli/sample-apps Platform publicGetUserSubscriptionBillingHistories \
    --namespace $AB_NAMESPACE \
    --subscriptionId '6Y8vBOD6feDVyzno' \
    --userId '4BYwljV9acEHMQe7' \
    --excludeFree 'true' \
    --limit '77' \
    --offset '82' \
    > test.out 2>&1
eval_tap $? 412 'PublicGetUserSubscriptionBillingHistories' test.out

#- 413 PublicListViews
samples/cli/sample-apps Platform publicListViews \
    --namespace $AB_NAMESPACE \
    --userId '6qR7hKYYWdAJFcud' \
    --language 'PX0ftLiG84jtJMrA' \
    --storeId 'FvZ2if5LKxi7uqDK' \
    > test.out 2>&1
eval_tap $? 413 'PublicListViews' test.out

#- 414 PublicGetWallet
samples/cli/sample-apps Platform publicGetWallet \
    --currencyCode 'NIJjvelFZdK1l6kr' \
    --namespace $AB_NAMESPACE \
    --userId 'XaQ5LnN8gIfFaRpO' \
    > test.out 2>&1
eval_tap $? 414 'PublicGetWallet' test.out

#- 415 PublicListUserWalletTransactions
samples/cli/sample-apps Platform publicListUserWalletTransactions \
    --currencyCode 'frLI4V4jqApftiVX' \
    --namespace $AB_NAMESPACE \
    --userId 'GxjJFDEP8JhGggca' \
    --limit '46' \
    --offset '9' \
    > test.out 2>&1
eval_tap $? 415 'PublicListUserWalletTransactions' test.out

#- 416 QueryItems1
samples/cli/sample-apps Platform queryItems1 \
    --namespace $AB_NAMESPACE \
    --appType 'DEMO' \
    --availableDate 'ZhFjJyc9XB0uZwEz' \
    --baseAppId 'GMqV8nLeBwZZIkwH' \
    --categoryPath 'KpX8zwlIxuJxhvFg' \
    --features 'SOS41fhgts5tbdsv' \
    --includeSubCategoryItem 'true' \
    --itemName 'nsFQG4oTjyMPhPhq' \
    --itemStatus 'ACTIVE' \
    --itemType 'MEDIA' \
    --limit '48' \
    --offset '67' \
    --region '8pbgdQ8Blj7tIz3J' \
    --sectionExclusive 'true' \
    --sortBy '["createdAt:asc", "updatedAt:asc", "createdAt"]' \
    --storeId 'caUU0TpVn05lXv1X' \
    --tags 'GpwVfCfZGNlajVbq' \
    --targetNamespace 'CZgboOFxv4wAVKX3' \
    > test.out 2>&1
eval_tap $? 416 'QueryItems1' test.out

#- 417 ImportStore1
samples/cli/sample-apps Platform importStore1 \
    --namespace $AB_NAMESPACE \
    --storeId 'mPlLxmIymOd0Uj0k' \
    --strictMode 'false' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 417 'ImportStore1' test.out

#- 418 ExportStore1
samples/cli/sample-apps Platform exportStore1 \
    --namespace $AB_NAMESPACE \
    --storeId 'kHsqwc9nhrMj6E7U' \
    --body '{"itemIds": ["kr7G0lX2QzQPSUnj", "pQhwIJCOT9BbhDZb", "vZSpdxAxqTzlXJLO"]}' \
    > test.out 2>&1
eval_tap $? 418 'ExportStore1' test.out

#- 419 FulfillRewardsV2
samples/cli/sample-apps Platform fulfillRewardsV2 \
    --namespace $AB_NAMESPACE \
    --userId 'jtbxekXfjaXifRrT' \
    --body '{"metadata": {"MbXQIYM88QbaqBw5": {}, "YJMsPKD9Gc8Btysj": {}, "ZIO2mNLY27jnBOGB": {}}, "origin": "Other", "rewards": [{"currency": {"currencyCode": "sQcVRa0rOaRo9FPY", "namespace": "biH4hLG13jPZ8E3i"}, "item": {"itemId": "9cuW6GagCQYBrdzP", "itemSku": "urpmuJJC3qFqn2WV", "itemType": "M7snpUxOF1IybwHe"}, "quantity": 95, "type": "ITEM"}, {"currency": {"currencyCode": "hSyNeQoZi7LLNcyI", "namespace": "MmT6YqkUQALklH5K"}, "item": {"itemId": "LfKjPcPwQo6waZtf", "itemSku": "0JabdlNkKBkQ1rj2", "itemType": "LjHPpj8E8Tr3VgjL"}, "quantity": 83, "type": "ITEM"}, {"currency": {"currencyCode": "l7O4MOYM503QRuid", "namespace": "nAr1KydLOh6jzvNX"}, "item": {"itemId": "pW7O5tbtQmubsfsb", "itemSku": "0N9bX3zIHD6y262r", "itemType": "BQUVRyjmVey1i32u"}, "quantity": 97, "type": "CURRENCY"}], "source": "PAYMENT", "transactionId": "CN4ZoFUS1hoQBZ7t"}' \
    > test.out 2>&1
eval_tap $? 419 'FulfillRewardsV2' test.out


rm -f "tmp.dat"

exit $EXIT_CODE