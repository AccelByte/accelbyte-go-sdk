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
echo "1..462"

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
    --id 'KoSeGstaurVzUYMc' \
    > test.out 2>&1
eval_tap $? 3 'GetFulfillmentScript' test.out

#- 4 CreateFulfillmentScript
samples/cli/sample-apps Platform createFulfillmentScript \
    --id 'cMLrIipKvcZi5sF0' \
    --body '{"grantDays": "b6aLqqJmBDvNVwkq"}' \
    > test.out 2>&1
eval_tap $? 4 'CreateFulfillmentScript' test.out

#- 5 DeleteFulfillmentScript
samples/cli/sample-apps Platform deleteFulfillmentScript \
    --id 'oj9rRH2if5aBVBcH' \
    > test.out 2>&1
eval_tap $? 5 'DeleteFulfillmentScript' test.out

#- 6 UpdateFulfillmentScript
samples/cli/sample-apps Platform updateFulfillmentScript \
    --id 'FCgDxpXyzGsJmBJz' \
    --body '{"grantDays": "RnMt1U7vxtePVx6j"}' \
    > test.out 2>&1
eval_tap $? 6 'UpdateFulfillmentScript' test.out

#- 7 ListItemTypeConfigs
samples/cli/sample-apps Platform listItemTypeConfigs \
    > test.out 2>&1
eval_tap $? 7 'ListItemTypeConfigs' test.out

#- 8 CreateItemTypeConfig
samples/cli/sample-apps Platform createItemTypeConfig \
    --body '{"clazz": "kmPCjKiFC58zYfMA", "dryRun": true, "fulfillmentUrl": "RWGXBavUzK0aJEez", "itemType": "LOOTBOX", "purchaseConditionUrl": "7iZmXkjXDVyCG83p"}' \
    > test.out 2>&1
eval_tap $? 8 'CreateItemTypeConfig' test.out

#- 9 SearchItemTypeConfig
samples/cli/sample-apps Platform searchItemTypeConfig \
    --clazz 'c3Xc3P8RfyCk3bqA' \
    --itemType 'APP' \
    > test.out 2>&1
eval_tap $? 9 'SearchItemTypeConfig' test.out

#- 10 GetItemTypeConfig
samples/cli/sample-apps Platform getItemTypeConfig \
    --id 'HOnhu6kNey1SW78n' \
    > test.out 2>&1
eval_tap $? 10 'GetItemTypeConfig' test.out

#- 11 UpdateItemTypeConfig
samples/cli/sample-apps Platform updateItemTypeConfig \
    --id 'WptV9uGTRC4GphQQ' \
    --body '{"clazz": "rjhuE2bUesKfcyTY", "dryRun": true, "fulfillmentUrl": "tsNHCKaFckTLalZS", "purchaseConditionUrl": "6W7Xz1GH0EOLR9jK"}' \
    > test.out 2>&1
eval_tap $? 11 'UpdateItemTypeConfig' test.out

#- 12 DeleteItemTypeConfig
samples/cli/sample-apps Platform deleteItemTypeConfig \
    --id 'qhHKjNDDrWO5wSfL' \
    > test.out 2>&1
eval_tap $? 12 'DeleteItemTypeConfig' test.out

#- 13 QueryCampaigns
samples/cli/sample-apps Platform queryCampaigns \
    --namespace $AB_NAMESPACE \
    --limit '88' \
    --name '30gL61qhGtH7ksP7' \
    --offset '84' \
    --tag 'HgnWR6FFBj2GFnFS' \
    > test.out 2>&1
eval_tap $? 13 'QueryCampaigns' test.out

#- 14 CreateCampaign
samples/cli/sample-apps Platform createCampaign \
    --namespace $AB_NAMESPACE \
    --body '{"description": "VVHjCH8pQa9xiqVN", "discountConfig": {"categories": [{"categoryPath": "Yeorh8UXO4Y8Q7aB", "includeSubCategories": false}, {"categoryPath": "00bKK3Ud5nfc6M52", "includeSubCategories": false}, {"categoryPath": "SWI3KkhNNMyWv58A", "includeSubCategories": true}], "currencyCode": "8lRiJPu4QJROR3lq", "currencyNamespace": "FUCAHSMQXVe06QF7", "discountAmount": 71, "discountPercentage": 23, "discountType": "AMOUNT", "items": [{"itemId": "bVBMO9kXfa9qXTlC", "itemName": "qV9usEoDFi29gQm7"}, {"itemId": "gHCYDYrwENY9ZTN1", "itemName": "XRpQrtDYzCYLR64A"}, {"itemId": "ygaDcW4pU9wD2szf", "itemName": "xJiAjQ7YyIYvtsz5"}], "restrictType": "NONE", "stackable": true}, "items": [{"extraSubscriptionDays": 15, "itemId": "3nISb6Eg3PUkBIVx", "itemName": "0xm267CWE7pgLLvp", "quantity": 84}, {"extraSubscriptionDays": 52, "itemId": "7KoYrmljFOHjQJwq", "itemName": "z0W6JSWMazhNg9TM", "quantity": 9}, {"extraSubscriptionDays": 91, "itemId": "5mTjIvoPE0zQ6Eev", "itemName": "JCsrCuqrsRrEJK60", "quantity": 31}], "maxRedeemCountPerCampaignPerUser": 71, "maxRedeemCountPerCode": 92, "maxRedeemCountPerCodePerUser": 44, "maxSaleCount": 56, "name": "PZPO3E0BdB8dhdvo", "redeemEnd": "1973-05-18T00:00:00Z", "redeemStart": "1988-03-06T00:00:00Z", "redeemType": "DISCOUNT", "status": "ACTIVE", "tags": ["JpYrVzbbzMjwumZa", "8bsfBdb2Khgyxcos", "2esehdikoTGHawxk"], "type": "REDEMPTION"}' \
    > test.out 2>&1
eval_tap $? 14 'CreateCampaign' test.out

#- 15 GetCampaign
samples/cli/sample-apps Platform getCampaign \
    --campaignId 'J7zoK1Jblec2JVZP' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 15 'GetCampaign' test.out

#- 16 UpdateCampaign
samples/cli/sample-apps Platform updateCampaign \
    --campaignId 'ZiUbvG20h7SkSt8Y' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "rGMAdq4gnGtEbjln", "discountConfig": {"categories": [{"categoryPath": "yPqJs2jIjXGz7kxs", "includeSubCategories": true}, {"categoryPath": "axo5GHCLSP6gqDFl", "includeSubCategories": false}, {"categoryPath": "9QEVWvzU1aAe6Yr5", "includeSubCategories": false}], "currencyCode": "0T8odgteGk9kpqhW", "currencyNamespace": "3L1rusmqGvtVTZTt", "discountAmount": 95, "discountPercentage": 100, "discountType": "PERCENTAGE", "items": [{"itemId": "EPVZKsvhiUlBHNUY", "itemName": "NfZEb6Kh44XpcKFI"}, {"itemId": "HO46xmREupi3Y1R1", "itemName": "Sqvk0hmDCdGAsa1L"}, {"itemId": "qFyKA89Mgujie0U5", "itemName": "H5TrPz5rlJfLub58"}], "restrictType": "ITEMS_AND_CATEGORIES", "stackable": false}, "items": [{"extraSubscriptionDays": 12, "itemId": "zwc6s4VJB7PUZXj6", "itemName": "vhgBQ9d4b64AbEwL", "quantity": 67}, {"extraSubscriptionDays": 49, "itemId": "Iio4hwl9w8y5okJ2", "itemName": "DxjpMQLAK1QjzN9o", "quantity": 60}, {"extraSubscriptionDays": 44, "itemId": "SBjY0T3ad1SglXsC", "itemName": "xeN3IgW6QvJylhUo", "quantity": 42}], "maxRedeemCountPerCampaignPerUser": 3, "maxRedeemCountPerCode": 91, "maxRedeemCountPerCodePerUser": 13, "maxSaleCount": 95, "name": "dgwSeHXddudQh3UX", "redeemEnd": "1997-05-02T00:00:00Z", "redeemStart": "1990-06-24T00:00:00Z", "redeemType": "DISCOUNT", "status": "INACTIVE", "tags": ["EoqJDpPUb9XhqRjs", "Mxe5jGAl4D0PRkFZ", "oDPkQ89VKQfKhneY"]}' \
    > test.out 2>&1
eval_tap $? 16 'UpdateCampaign' test.out

#- 17 RenameBatch
samples/cli/sample-apps Platform renameBatch \
    --campaignId 'qJoNOj9n8FU3bcnq' \
    --namespace $AB_NAMESPACE \
    --body '{"newName": "yWJ3qd9Oygo4waq7", "oldName": "daW1xg3SpdMCR3aj"}' \
    > test.out 2>&1
eval_tap $? 17 'RenameBatch' test.out

#- 18 QueryCampaignBatchNames
samples/cli/sample-apps Platform queryCampaignBatchNames \
    --campaignId 'JTu2XMWa513Bq0j9' \
    --namespace $AB_NAMESPACE \
    --batchName 'zNbbqswZ9SEftsr7' \
    --limit '19' \
    > test.out 2>&1
eval_tap $? 18 'QueryCampaignBatchNames' test.out

#- 19 GetCampaignDynamic
samples/cli/sample-apps Platform getCampaignDynamic \
    --campaignId 'KzKAgzGomtsmdepZ' \
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
    --body '{"appConfig": {"appName": "Hi3OG1IgiY3M8sGb"}, "customConfig": {"connectionType": "INSECURE", "grpcServerAddress": "Q5m4I2wajqJfGnJp"}, "extendType": "CUSTOM"}' \
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
    --body '{"appConfig": {"appName": "GQ9FbvdTSqwEKxZy"}, "customConfig": {"connectionType": "TLS", "grpcServerAddress": "Bu1jq3NAXTvKRDNY"}, "extendType": "APP"}' \
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
    --storeId 'F5n6SkhMvS8GAITx' \
    > test.out 2>&1
eval_tap $? 31 'GetRootCategories' test.out

#- 32 CreateCategory
samples/cli/sample-apps Platform createCategory \
    --namespace $AB_NAMESPACE \
    --storeId 'gc77dUjk0IgfaRBI' \
    --body '{"categoryPath": "4fgKaJANiwpUvJgk", "localizationDisplayNames": {"lq5Ld0s1u93TBxBa": "iWKNCWyzQjDFTBdX", "XX3oGLMSKwuIE9Yc": "MNSiS9CpzHYaRQRS", "JKbux04MNzdeESsm": "AVGXpY4GbTR6c4Qr"}}' \
    > test.out 2>&1
eval_tap $? 32 'CreateCategory' test.out

#- 33 ListCategoriesBasic
samples/cli/sample-apps Platform listCategoriesBasic \
    --namespace $AB_NAMESPACE \
    --storeId 'Iv08SWlhBttxU7c3' \
    > test.out 2>&1
eval_tap $? 33 'ListCategoriesBasic' test.out

#- 34 GetCategory
samples/cli/sample-apps Platform getCategory \
    --categoryPath 'UNzGKXf2BgsSABWm' \
    --namespace $AB_NAMESPACE \
    --storeId 'YQoe11MqyJ6dvSOQ' \
    > test.out 2>&1
eval_tap $? 34 'GetCategory' test.out

#- 35 UpdateCategory
samples/cli/sample-apps Platform updateCategory \
    --categoryPath 'fvgg9JTrJdxqKrBV' \
    --namespace $AB_NAMESPACE \
    --storeId 'jtIMvnrhc9EoFKYb' \
    --body '{"localizationDisplayNames": {"QCtz52PCnVU3fEAr": "5BzhTyRAMODhJ26z", "IzOSBwQraxHDPBeO": "tgapIAISS5fJds5i", "PI5iNjauZB8P2LFM": "UBBrE0tH3lVXeCBF"}}' \
    > test.out 2>&1
eval_tap $? 35 'UpdateCategory' test.out

#- 36 DeleteCategory
samples/cli/sample-apps Platform deleteCategory \
    --categoryPath 'ntkxQhVpyD3tX2Mr' \
    --namespace $AB_NAMESPACE \
    --storeId 'SN2LDEtaJC1DNbDZ' \
    > test.out 2>&1
eval_tap $? 36 'DeleteCategory' test.out

#- 37 GetChildCategories
samples/cli/sample-apps Platform getChildCategories \
    --categoryPath 'hiN6nK2EsHND5YV9' \
    --namespace $AB_NAMESPACE \
    --storeId 'cDtu0XTGry4lEk0E' \
    > test.out 2>&1
eval_tap $? 37 'GetChildCategories' test.out

#- 38 GetDescendantCategories
samples/cli/sample-apps Platform getDescendantCategories \
    --categoryPath 'iqZfvlLU30MXefGZ' \
    --namespace $AB_NAMESPACE \
    --storeId 'bDVjZtqLyVzxlQCB' \
    > test.out 2>&1
eval_tap $? 38 'GetDescendantCategories' test.out

#- 39 QueryCodes
samples/cli/sample-apps Platform queryCodes \
    --campaignId 'gBNHuA7rvl5QUnCv' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --batchName 'kHzNVUjICy7idDXW' \
    --batchNo '[19, 57, 33]' \
    --code 'bnF0Y9VfcxhaECxk' \
    --limit '75' \
    --offset '95' \
    --withBatchName 'false' \
    > test.out 2>&1
eval_tap $? 39 'QueryCodes' test.out

#- 40 CreateCodes
samples/cli/sample-apps Platform createCodes \
    --campaignId 'JuIhFWX4aU59UmWU' \
    --namespace $AB_NAMESPACE \
    --body '{"batchName": "yhsb7MxsEU7EFybE", "codeValue": "pcc3QJCv7QiRV4Jf", "quantity": 44}' \
    > test.out 2>&1
eval_tap $? 40 'CreateCodes' test.out

#- 41 Download
samples/cli/sample-apps Platform download \
    --campaignId 'u0waTNdh3nfhxDUF' \
    --namespace $AB_NAMESPACE \
    --batchName 'ylItPazreyFh48UF' \
    --batchNo '[9, 83, 43]' \
    --withBatchName 'true' \
    > test.out 2>&1
eval_tap $? 41 'Download' test.out

#- 42 BulkDisableCodes
samples/cli/sample-apps Platform bulkDisableCodes \
    --campaignId 'AjRWysvvuwkBqlZv' \
    --namespace $AB_NAMESPACE \
    --batchName 'Bfb5NiPlmgS9kDem' \
    --batchNo '[16, 14, 14]' \
    > test.out 2>&1
eval_tap $? 42 'BulkDisableCodes' test.out

#- 43 BulkEnableCodes
samples/cli/sample-apps Platform bulkEnableCodes \
    --campaignId 'r9kgRsfRyIwr6rpR' \
    --namespace $AB_NAMESPACE \
    --batchName 'en29rnlqlmS24mw8' \
    --batchNo '[91, 79, 75]' \
    > test.out 2>&1
eval_tap $? 43 'BulkEnableCodes' test.out

#- 44 QueryRedeemHistory
samples/cli/sample-apps Platform queryRedeemHistory \
    --campaignId '42cWJUavEvM5Ix34' \
    --namespace $AB_NAMESPACE \
    --code 'KG9pw43RCJJquh4Y' \
    --limit '95' \
    --offset '14' \
    --userId '529U3wEDG3PsRx72' \
    > test.out 2>&1
eval_tap $? 44 'QueryRedeemHistory' test.out

#- 45 GetCode
samples/cli/sample-apps Platform getCode \
    --code 'z79zXTuzv6PBjZAZ' \
    --namespace $AB_NAMESPACE \
    --redeemable 'false' \
    --withBatchName 'false' \
    > test.out 2>&1
eval_tap $? 45 'GetCode' test.out

#- 46 DisableCode
samples/cli/sample-apps Platform disableCode \
    --code 'lJUFDWLt5vVetVGL' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 46 'DisableCode' test.out

#- 47 EnableCode
samples/cli/sample-apps Platform enableCode \
    --code 'tarPUlKuYMmMl0jq' \
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
    --body '{"currencyCode": "aUi7trLrv491rEKj", "currencySymbol": "LqUYdhcAWS92Yk9a", "currencyType": "REAL", "decimals": 15, "localizationDescriptions": {"PYz1IotZYDhc4trf": "Urizvq4npE9San9X", "kzH8XRulD6AWYTdm": "jvy7pZW1Yxpi8smZ", "A8K7Uf1w4u0wWdi6": "FJC2YJbQnVbjWwfH"}}' \
    > test.out 2>&1
eval_tap $? 52 'CreateCurrency' test.out

#- 53 UpdateCurrency
samples/cli/sample-apps Platform updateCurrency \
    --currencyCode 'DDsYtmktGZzpr1Yo' \
    --namespace $AB_NAMESPACE \
    --body '{"localizationDescriptions": {"aeLV36e3xi6rqb9a": "bju1G1o3Ox1LKk6l", "9cPRrC7r9Ccl1P2E": "naZ23tYviqr2vTXx", "NJ86rGdMJhK1WeBH": "0unsDxJgpSE5OWbP"}}' \
    > test.out 2>&1
eval_tap $? 53 'UpdateCurrency' test.out

#- 54 DeleteCurrency
samples/cli/sample-apps Platform deleteCurrency \
    --currencyCode '1L12yYcfqjt3LLp5' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 54 'DeleteCurrency' test.out

#- 55 GetCurrencyConfig
samples/cli/sample-apps Platform getCurrencyConfig \
    --currencyCode 'kn2Ses68FS0EJH75' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 55 'GetCurrencyConfig' test.out

#- 56 GetCurrencySummary
samples/cli/sample-apps Platform getCurrencySummary \
    --currencyCode 'gwxp8VdvmgPJ3e0p' \
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
    --body '{"data": [{"id": "oUjLB15je8CFDm6A", "rewards": [{"currency": {"currencyCode": "HaTUzbyjbkzkofgC", "namespace": "rtf47uHgREmSqgTR"}, "item": {"itemId": "jXDXAe0sxpBN7Q5b", "itemName": "25umGcdAzkpk9mKw", "itemSku": "9jGtQBJZ6zFbrINK", "itemType": "4IrZfffcs3fm7VJa"}, "quantity": 18, "type": "CURRENCY"}, {"currency": {"currencyCode": "mIK3xDxnJYy8Qun0", "namespace": "nU1ZJF9kSGjj7GdA"}, "item": {"itemId": "2cA8Y4EyY1FFOJWA", "itemName": "XuLDeI1dl7vA7cuP", "itemSku": "S7Tx5JX3hrShoSYq", "itemType": "6BrpzvFngRvl2VhE"}, "quantity": 46, "type": "ITEM"}, {"currency": {"currencyCode": "0TdcqJd2PxaMkYaj", "namespace": "eHsPH75EtsOPvpAh"}, "item": {"itemId": "y6Bb3NPP9eEpobD0", "itemName": "eqKEaovHpjcWVi7j", "itemSku": "VuJjchSmQycASrDG", "itemType": "qyiWS024jJ01JwTC"}, "quantity": 30, "type": "ITEM"}]}, {"id": "MLoxF1IpyEaFa0TH", "rewards": [{"currency": {"currencyCode": "rElMZ9NFQLaJK5Iz", "namespace": "fpvdTYn4toA64tEW"}, "item": {"itemId": "of8Cijdgrf0QS5xL", "itemName": "VeeDts4owl764RSb", "itemSku": "KD5XQ1Y6P3e2CTXt", "itemType": "GFplWwQlf8pjkC5k"}, "quantity": 77, "type": "CURRENCY"}, {"currency": {"currencyCode": "mcfZn7SPYNDS6HhF", "namespace": "Omhfvh22lrM3NltH"}, "item": {"itemId": "Klq2vRwzaXb9Gqii", "itemName": "YqhMLXtNONUzQ48t", "itemSku": "XZMxZ3OawBQh6cUB", "itemType": "hdSUqWiNOKEorOJN"}, "quantity": 78, "type": "CURRENCY"}, {"currency": {"currencyCode": "b8gynVJsSw1fLqfy", "namespace": "VaGvq71YEjwNeCHY"}, "item": {"itemId": "avNxuKXl7iOdgSQo", "itemName": "ST9P9EtN5VjMEzku", "itemSku": "QHw6moBKTRs4W1Xs", "itemType": "wvWx1TNIb7NPFid5"}, "quantity": 48, "type": "CURRENCY"}]}, {"id": "89OMMYF4zCincHaJ", "rewards": [{"currency": {"currencyCode": "7BiKyNQ53CekdcUg", "namespace": "7o4nqAlTErA7biw8"}, "item": {"itemId": "I2cmFvv73Du5SuPQ", "itemName": "vqkr6pXEGGaWqtua", "itemSku": "7JMcGXp0gnEPKuLh", "itemType": "UQ8LnGvrTD1WezgL"}, "quantity": 78, "type": "ITEM"}, {"currency": {"currencyCode": "247kj4TNrDsz064p", "namespace": "VoVqNioWGadXiK2U"}, "item": {"itemId": "txV9SQwihmR7XiVc", "itemName": "UrF0VUhURYxB2h5p", "itemSku": "QCI4CyaPIoUn6SYs", "itemType": "mBIVKRYsatEHXjzJ"}, "quantity": 89, "type": "CURRENCY"}, {"currency": {"currencyCode": "uMQigCdKht1IxTcU", "namespace": "BWbpsKfklibJCmy6"}, "item": {"itemId": "5Mqjmn1FHNl4mX9T", "itemName": "pBBM3nB81BTgXwC8", "itemSku": "ygw7JWMrP9gLzpAv", "itemType": "7Ri8ofcYqnOxXKbc"}, "quantity": 67, "type": "ITEM"}]}]}' \
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
    --body '{"data": [{"platform": "STEAM", "platformDlcIdMap": {"0VrKrsOGZavvPuQ6": "WyKoQYJldgGK31Hd", "ZGzwwDlZXuYweWkX": "N5qPbJ5eNSuxbsJu", "AhuLoaYZaOM0uGFi": "kKfZq9MmePwZmW07"}}, {"platform": "OCULUS", "platformDlcIdMap": {"H3LKlw15wRhp9xgi": "AFg7b62ttVLuJpVY", "1KWaH4NcxTSWHoO2": "JKyMlcaXRbIjloDV", "F84XvRYbKoasbn5w": "wdkU9lhXBHrSXD7g"}}, {"platform": "XBOX", "platformDlcIdMap": {"24pH8rPmuaRVTkEr": "JmE4wtE0TrzmhpqC", "G0FGmH0ipKmbZ3Y2": "I6uTd7OittLRjJuK", "u15QRxYDzWMKqQBp": "Q7Dnx617aJp3okZT"}}]}' \
    > test.out 2>&1
eval_tap $? 61 'UpdatePlatformDLCConfig' test.out

#- 62 DeletePlatformDLCConfig
samples/cli/sample-apps Platform deletePlatformDLCConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 62 'DeletePlatformDLCConfig' test.out

#- 63 QueryEntitlements
samples/cli/sample-apps Platform queryEntitlements \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --appType 'DEMO' \
    --entitlementClazz 'OPTIONBOX' \
    --entitlementName 'yWs4lPgT6eKtkHYx' \
    --itemId '["waxAewj0JnkMvgGB", "d8SahSMEEoaq1LjF", "Q7Naz2dhF6jDNsga"]' \
    --limit '22' \
    --offset '63' \
    --origin 'Twitch' \
    --userId 'xLr3HZJmroZG5CJI' \
    > test.out 2>&1
eval_tap $? 63 'QueryEntitlements' test.out

#- 64 QueryEntitlements1
samples/cli/sample-apps Platform queryEntitlements1 \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --itemIds '["hc5bY6NVxzArqXHP", "5kowtTjS8g8qrU6a", "xtqYX23VhmLhSXHt"]' \
    --limit '92' \
    --offset '86' \
    > test.out 2>&1
eval_tap $? 64 'QueryEntitlements1' test.out

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
    --body '{"entitlementGrantList": [{"collectionId": "42kkciGAhVJpab0r", "endDate": "1997-01-04T00:00:00Z", "grantedCode": "IVJwQfFEkk1ZiniU", "itemId": "GnLayyr5FdgAyQeI", "itemNamespace": "7cHPvaxMuQ44670W", "language": "WptW_tOYe-793", "metadata": {"Jj8Y0203IvE75DdB": {}, "C48xRSjJRwKsaiw5": {}, "4VwCphGi8LCEF8yD": {}}, "origin": "Twitch", "quantity": 95, "region": "b9NABYZSoyw7yJFE", "source": "IAP", "startDate": "1994-01-11T00:00:00Z", "storeId": "tdFv9MKDuCbgiQVk"}, {"collectionId": "SC5wcBHqpm6OlfJK", "endDate": "1974-07-27T00:00:00Z", "grantedCode": "9WKAfWH1nWVOWDiM", "itemId": "MxzFL5eTJfpL1BVm", "itemNamespace": "eoYXOGXubOauguWX", "language": "BXyG-yM", "metadata": {"vip5oRKDsSWHcaYk": {}, "Xsyx1vAdRrAckFSl": {}, "0vM2SHMKBUNBPt3f": {}}, "origin": "GooglePlay", "quantity": 30, "region": "wUwePXMMIXOvYRYz", "source": "IAP", "startDate": "1991-07-14T00:00:00Z", "storeId": "jhRn2Y8z6oMwVbdO"}, {"collectionId": "4DL2dQwVtJEppJ0w", "endDate": "1977-08-25T00:00:00Z", "grantedCode": "ZcyMapGCibP7Pt9H", "itemId": "BrqHtAdQ2wiRsl1n", "itemNamespace": "W8dMkEpkamvlG08M", "language": "ITc", "metadata": {"Og1aMP6cGyydOjPu": {}, "Oa4lviSs4EAdo7Rc": {}, "yUDzpaEXxbaQdpm3": {}}, "origin": "Steam", "quantity": 6, "region": "G7l1vZdNFYhmWlck", "source": "REWARD", "startDate": "1986-05-20T00:00:00Z", "storeId": "kXzax98XLk1lqaLK"}], "userIds": ["gzDjbPxQJOMJyf0A", "MmdMUeaHefvZHPDk", "6ug5HJwFXh3gf6em"]}' \
    > test.out 2>&1
eval_tap $? 67 'GrantEntitlements' test.out

#- 68 RevokeEntitlements
samples/cli/sample-apps Platform revokeEntitlements \
    --namespace $AB_NAMESPACE \
    --body '["klS9au0XH2kWxsNK", "JyBLxE4P6vKz3Jmy", "FBlyMqkuqPDy4RHV"]' \
    > test.out 2>&1
eval_tap $? 68 'RevokeEntitlements' test.out

#- 69 GetEntitlement
samples/cli/sample-apps Platform getEntitlement \
    --entitlementId 'm1LmSl4q6TItmeBB' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 69 'GetEntitlement' test.out

#- 70 QueryFulfillmentHistories
samples/cli/sample-apps Platform queryFulfillmentHistories \
    --namespace $AB_NAMESPACE \
    --limit '38' \
    --offset '13' \
    --status 'FAIL' \
    --userId '5qfquol9xICqCOiW' \
    > test.out 2>&1
eval_tap $? 70 'QueryFulfillmentHistories' test.out

#- 71 QueryIAPClawbackHistory
samples/cli/sample-apps Platform queryIAPClawbackHistory \
    --namespace $AB_NAMESPACE \
    --endTime 'HzvjCtM1UFJF0I0E' \
    --eventType 'CHARGEBACK_REVERSED' \
    --externalOrderId 'AcHMRtDJiQvT2FF1' \
    --limit '39' \
    --offset '15' \
    --startTime 'RJ6bnM7P79HbmJ4X' \
    --status 'FAIL' \
    --userId 'Xe5aFyfyfDivDwYT' \
    > test.out 2>&1
eval_tap $? 71 'QueryIAPClawbackHistory' test.out

#- 72 MockPlayStationStreamEvent
samples/cli/sample-apps Platform mockPlayStationStreamEvent \
    --namespace $AB_NAMESPACE \
    --body '{"body": {"account": "Q3qrJT7MLg5e0Dkg", "additionalData": {"entitlement": [{"clientTransaction": [{"amountConsumed": 9, "clientTransactionId": "FI8UFOupIL0rrseN"}, {"amountConsumed": 99, "clientTransactionId": "8CobvDS58CaXJLrA"}, {"amountConsumed": 48, "clientTransactionId": "DI1y5loSWgKx3rm6"}], "entitlementId": "jR2SxNDiyDPpyzti", "usageCount": 40}, {"clientTransaction": [{"amountConsumed": 21, "clientTransactionId": "hWEtWdzG5TesppMw"}, {"amountConsumed": 6, "clientTransactionId": "MdX3hzcazh05qUrK"}, {"amountConsumed": 80, "clientTransactionId": "94pqlPAKMjjaOiWI"}], "entitlementId": "opjGuDNYxuolqNF1", "usageCount": 14}, {"clientTransaction": [{"amountConsumed": 41, "clientTransactionId": "jJ42Z7prb6O5Ooyv"}, {"amountConsumed": 19, "clientTransactionId": "12H36aLV5ovKkxOh"}, {"amountConsumed": 25, "clientTransactionId": "vbvhCdN2oGODUG9D"}], "entitlementId": "vlJjlLTrkGYEpxZa", "usageCount": 10}], "purpose": "NXfrpoSHJqPvna2U"}, "originalTitleName": "uiUFm67FpFVEEyxm", "paymentProductSKU": "qgX1KiCx7rO8y1CL", "purchaseDate": "mtpt5xnYmDSqrCc2", "sourceOrderItemId": "BF1ZtxMFD0KTaPoC", "titleName": "IBrEwCkvE6DaHT14"}, "eventDomain": "cI2Vzo3SDYKB2yUQ", "eventSource": "gGNy1auzV6twUMdq", "eventType": "ufw5JCkWNRWSoVoI", "eventVersion": 24, "id": "hpV3NtBzitaHQVD9", "timestamp": "ucJZ0fmH4RQEMDtH"}' \
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
    --body '{"bundleId": "2o01dJzCdv0yKVdj", "password": "GENz0Wkfpx7NwRR9"}' \
    > test.out 2>&1
eval_tap $? 74 'UpdateAppleIAPConfig' test.out

#- 75 DeleteAppleIAPConfig
samples/cli/sample-apps Platform deleteAppleIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 75 'DeleteAppleIAPConfig' test.out

#- 76 GetEpicGamesIAPConfig
samples/cli/sample-apps Platform getEpicGamesIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 76 'GetEpicGamesIAPConfig' test.out

#- 77 UpdateEpicGamesIAPConfig
samples/cli/sample-apps Platform updateEpicGamesIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"sandboxId": "K5eYkMP8KoFVcjYC"}' \
    > test.out 2>&1
eval_tap $? 77 'UpdateEpicGamesIAPConfig' test.out

#- 78 DeleteEpicGamesIAPConfig
samples/cli/sample-apps Platform deleteEpicGamesIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 78 'DeleteEpicGamesIAPConfig' test.out

#- 79 GetGoogleIAPConfig
samples/cli/sample-apps Platform getGoogleIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 79 'GetGoogleIAPConfig' test.out

#- 80 UpdateGoogleIAPConfig
samples/cli/sample-apps Platform updateGoogleIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"applicationName": "IWKz1USJGCL1IRMx", "serviceAccountId": "E7Kz29qt5DxYiL6u"}' \
    > test.out 2>&1
eval_tap $? 80 'UpdateGoogleIAPConfig' test.out

#- 81 DeleteGoogleIAPConfig
samples/cli/sample-apps Platform deleteGoogleIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 81 'DeleteGoogleIAPConfig' test.out

#- 82 UpdateGoogleP12File
samples/cli/sample-apps Platform updateGoogleP12File \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 82 'UpdateGoogleP12File' test.out

#- 83 GetIAPItemConfig
samples/cli/sample-apps Platform getIAPItemConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 83 'GetIAPItemConfig' test.out

#- 84 UpdateIAPItemConfig
samples/cli/sample-apps Platform updateIAPItemConfig \
    --namespace $AB_NAMESPACE \
    --body '{"data": [{"itemIdentity": "5fQWf9MnVLLAHcob", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"uigjDQEqi5WgmxXP": "prqdXkNuXoXqUYzK", "99VGdUdy1Ddu7Wy3": "A7AJ6xVnt4OrBDtp", "UzA7TzZSWPFoJUCu": "bwuuG1ovsnZHiqnf"}}, {"itemIdentity": "eyP8tactDEXtiY0n", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"T8eyUyenllIar5Sm": "8ra8sBwZyVt5CTSS", "MuuHFDlGA7YjRMPf": "noxKXq47HfoAjiaf", "hFSZmfet9SM8H3KN": "2sCX2e0O231ca3hW"}}, {"itemIdentity": "PhXmIbJlxz4Qw3BN", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"4NEGl8j2pOAlsmhu": "Ssnhuff4lEmJiIPQ", "ft008jqHHTFvVFaq": "zylIdPTFHEU1gtK3", "DHXQqtzIIbSiF7Vl": "qNAMMNPGM658xg7z"}}]}' \
    > test.out 2>&1
eval_tap $? 84 'UpdateIAPItemConfig' test.out

#- 85 DeleteIAPItemConfig
samples/cli/sample-apps Platform deleteIAPItemConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 85 'DeleteIAPItemConfig' test.out

#- 86 GetOculusIAPConfig
samples/cli/sample-apps Platform getOculusIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 86 'GetOculusIAPConfig' test.out

#- 87 UpdateOculusIAPConfig
samples/cli/sample-apps Platform updateOculusIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"appId": "zbk1TddFKjGjoYj9", "appSecret": "RyoEzi1uXOMTI3e8"}' \
    > test.out 2>&1
eval_tap $? 87 'UpdateOculusIAPConfig' test.out

#- 88 DeleteOculusIAPConfig
samples/cli/sample-apps Platform deleteOculusIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 88 'DeleteOculusIAPConfig' test.out

#- 89 GetPlayStationIAPConfig
samples/cli/sample-apps Platform getPlayStationIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 89 'GetPlayStationIAPConfig' test.out

#- 90 UpdatePlaystationIAPConfig
samples/cli/sample-apps Platform updatePlaystationIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"backOfficeServerClientId": "WLSdnhdvpdQCpGrO", "backOfficeServerClientSecret": "xqM0a8z3BK3GwyKL", "enableStreamJob": false, "environment": "zVF9C68aZRC6LrWF", "streamName": "WW3ArgyCXTjZkPTl", "streamPartnerName": "cvfDbCFmnbgqTB1w"}' \
    > test.out 2>&1
eval_tap $? 90 'UpdatePlaystationIAPConfig' test.out

#- 91 DeletePlaystationIAPConfig
samples/cli/sample-apps Platform deletePlaystationIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 91 'DeletePlaystationIAPConfig' test.out

#- 92 ValidateExistedPlaystationIAPConfig
samples/cli/sample-apps Platform validateExistedPlaystationIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 92 'ValidateExistedPlaystationIAPConfig' test.out

#- 93 ValidatePlaystationIAPConfig
samples/cli/sample-apps Platform validatePlaystationIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"backOfficeServerClientId": "b8Auf3Py1aRkwmi8", "backOfficeServerClientSecret": "Q0ZngXbZ3XNywFw1", "enableStreamJob": true, "environment": "6poIe0XpVBnP9gDi", "streamName": "UKdNYosaNC6uNo7v", "streamPartnerName": "FlhcSfPuQtNuDbQ4"}' \
    > test.out 2>&1
eval_tap $? 93 'ValidatePlaystationIAPConfig' test.out

#- 94 GetSteamIAPConfig
samples/cli/sample-apps Platform getSteamIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 94 'GetSteamIAPConfig' test.out

#- 95 UpdateSteamIAPConfig
samples/cli/sample-apps Platform updateSteamIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"appId": "gGnwoYa2UeZlH4cd", "publisherAuthenticationKey": "L8PyFgYkDPKQ2MhD"}' \
    > test.out 2>&1
eval_tap $? 95 'UpdateSteamIAPConfig' test.out

#- 96 DeleteSteamIAPConfig
samples/cli/sample-apps Platform deleteSteamIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 96 'DeleteSteamIAPConfig' test.out

#- 97 GetTwitchIAPConfig
samples/cli/sample-apps Platform getTwitchIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 97 'GetTwitchIAPConfig' test.out

#- 98 UpdateTwitchIAPConfig
samples/cli/sample-apps Platform updateTwitchIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"clientId": "zyMLuUteBDb1yNOE", "clientSecret": "Mw5zleSebu0MhrEW", "organizationId": "pmHZGmvxyTHhoUCv"}' \
    > test.out 2>&1
eval_tap $? 98 'UpdateTwitchIAPConfig' test.out

#- 99 DeleteTwitchIAPConfig
samples/cli/sample-apps Platform deleteTwitchIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 99 'DeleteTwitchIAPConfig' test.out

#- 100 GetXblIAPConfig
samples/cli/sample-apps Platform getXblIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 100 'GetXblIAPConfig' test.out

#- 101 UpdateXblIAPConfig
samples/cli/sample-apps Platform updateXblIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"relyingPartyCert": "8zaEmdjQ62yqWQDz"}' \
    > test.out 2>&1
eval_tap $? 101 'UpdateXblIAPConfig' test.out

#- 102 DeleteXblAPConfig
samples/cli/sample-apps Platform deleteXblAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 102 'DeleteXblAPConfig' test.out

#- 103 UpdateXblBPCertFile
samples/cli/sample-apps Platform updateXblBPCertFile \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    --password '2xkk9ZOQ3y5xCU8r' \
    > test.out 2>&1
eval_tap $? 103 'UpdateXblBPCertFile' test.out

#- 104 DownloadInvoiceDetails
samples/cli/sample-apps Platform downloadInvoiceDetails \
    --namespace $AB_NAMESPACE \
    --endTime 'GMw2ZphCTAgSgNRd' \
    --feature 'Pcrr1viGQaI5Fw5o' \
    --itemId 'KO2ui9Ju3vpdgpkE' \
    --itemType 'EXTENSION' \
    --startTime 'izXN5mqYAxNRMRqs' \
    > test.out 2>&1
eval_tap $? 104 'DownloadInvoiceDetails' test.out

#- 105 GenerateInvoiceSummary
samples/cli/sample-apps Platform generateInvoiceSummary \
    --namespace $AB_NAMESPACE \
    --endTime '5pEs1QToCzdYXjZq' \
    --feature 'QUPsxjI49JAu1EGr' \
    --itemId 'fl6UBUcDvJHBDvjp' \
    --itemType 'SEASON' \
    --startTime 'rAICfrJI03gl816v' \
    > test.out 2>&1
eval_tap $? 105 'GenerateInvoiceSummary' test.out

#- 106 SyncInGameItem
samples/cli/sample-apps Platform syncInGameItem \
    --namespace $AB_NAMESPACE \
    --storeId 'BGD9GXnTAEzx22hU' \
    --body '{"categoryPath": "64ZT0PWGY2dCIser", "targetItemId": "9c1RuzfrsxaIC8tU", "targetNamespace": "usJoJVekZSjDeyCM"}' \
    > test.out 2>&1
eval_tap $? 106 'SyncInGameItem' test.out

#- 107 CreateItem
samples/cli/sample-apps Platform createItem \
    --namespace $AB_NAMESPACE \
    --storeId 'uJyUunYJAHcqJ4Am' \
    --body '{"appId": "gyzrJSwlNWqRwz2x", "appType": "DLC", "baseAppId": "qYVCyQHzhoQretr1", "boothName": "fdznkw6bqHc9bWrt", "categoryPath": "Y7mkiudnFZmiZ410", "clazz": "fCRc9BG0pl1GY97L", "displayOrder": 84, "entitlementType": "CONSUMABLE", "ext": {"diear7s2zEVxcmfG": {}, "ePIdTz1690JVXwHZ": {}, "bK9qcQybIkOtn1Bi": {}}, "features": ["t71iyYCL2X42wMj6", "ABs0wZrK0a7TECvT", "FGZ5BWr0YRmZjkY5"], "flexible": true, "images": [{"as": "syyOgyIAoeflylbf", "caption": "jKHD0X8yWtl1BpNS", "height": 20, "imageUrl": "CVqHrJIhp2f9Xmv3", "smallImageUrl": "yeprrXy295zYuvrA", "width": 87}, {"as": "2LcNF4JQnzODeBR5", "caption": "8q0GknKoDxVMxsoh", "height": 41, "imageUrl": "6A4txPDQVeME5JZ1", "smallImageUrl": "GSf7rmD46OpeEA3Q", "width": 64}, {"as": "8vXCJuJoQjZgFIiA", "caption": "LGQR5NJcCYiuz4pO", "height": 53, "imageUrl": "sSKQtCaCpexbjdpJ", "smallImageUrl": "CzRUUKc3lTiEexdq", "width": 58}], "inventoryConfig": {"customAttributes": {"KfEqsGkBMUlaMOTN": {}, "IN6CzFsK1dsVQGyw": {}, "YJtSJdzqgcP99KpK": {}}, "serverCustomAttributes": {"OMd8RDZQ8WrRQcEi": {}, "z5xAMj8WXwImPVmT": {}, "5O3HayVUH8bTcuOF": {}}, "slotUsed": 70}, "itemIds": ["T1yYi4csf0Qrq7Aa", "9bQf3q5lPR4tQNsy", "vSOHxgjVO15OBCEa"], "itemQty": {"yfvDeCDkwJRHlIKt": 71, "sH32hGFJVLehWWCZ": 51, "kRnVrWVWKzK6t9RC": 8}, "itemType": "SEASON", "listable": false, "localizations": {"2uGyCzyQOGrGBYqd": {"description": "jRsADLVTIyWgty84", "localExt": {"juR7LqEyu6QnVWLb": {}, "LtEFKxrBN7WFOdtN": {}, "ij3OYgT6FNBUWsdx": {}}, "longDescription": "pCqYLCuNlgrsPBei", "title": "k6I3rvNZlHR9DJGY"}, "ZplPqZamSmKhvXpt": {"description": "7GmvnQaoufk425ut", "localExt": {"vxjWmmAIWlQaU7mx": {}, "Kvc4OuY92wxKP1Pj": {}, "Ht9axsBiHtnh0M4O": {}}, "longDescription": "4Gqd8K12sTNsQaOp", "title": "v3PkO9kQV5sbnrgm"}, "LMHDOlc2ydQYvZoK": {"description": "0fqeeRxpzT1zWz4r", "localExt": {"iWOPQFMM4zA4y3jJ": {}, "VcdMmS89Qc7Fn1JB": {}, "LSi5deEvP1gmOH29": {}}, "longDescription": "wNXIkxFE6spNhLLd", "title": "aNCUXCnu0x7FESwP"}}, "lootBoxConfig": {"rewardCount": 62, "rewards": [{"lootBoxItems": [{"count": 17, "duration": 83, "endDate": "1996-09-15T00:00:00Z", "itemId": "1AlgkaA2zvzp4zJu", "itemSku": "RltBojzzirG459nK", "itemType": "ZvRkejUubPijlAen"}, {"count": 78, "duration": 55, "endDate": "1992-01-09T00:00:00Z", "itemId": "rxseGUAHdkhpbBsu", "itemSku": "qglHmPszxxyxq0q4", "itemType": "gGYy77oEmVrM46sA"}, {"count": 45, "duration": 56, "endDate": "1997-11-29T00:00:00Z", "itemId": "lqyUPuOcX2bBNgVt", "itemSku": "XDGDbMI2Y0CqdWgh", "itemType": "5X1JYE5Xdb1FNRbd"}], "name": "ArfQwzwr6lQ2bcsR", "odds": 0.1247599207763791, "type": "REWARD_GROUP", "weight": 72}, {"lootBoxItems": [{"count": 70, "duration": 64, "endDate": "1975-06-11T00:00:00Z", "itemId": "DHuKvtb4LO33Axst", "itemSku": "E7rbpeI6s1SJ4YVl", "itemType": "9FJizSzMF1SHuPbH"}, {"count": 37, "duration": 57, "endDate": "1975-07-16T00:00:00Z", "itemId": "Qz3nHpvgfX2tPKkp", "itemSku": "x9wa1XDg0ZIo8xh4", "itemType": "FRHRVt6GaxuNew2i"}, {"count": 54, "duration": 92, "endDate": "1974-09-28T00:00:00Z", "itemId": "PyhOZ93hn3trTwny", "itemSku": "rET45ZXtpiP33drE", "itemType": "YpkR8aQh7Wz50ZNE"}], "name": "Q3I85sbGn30aPeoP", "odds": 0.3561564391006077, "type": "REWARD", "weight": 13}, {"lootBoxItems": [{"count": 58, "duration": 27, "endDate": "1976-10-17T00:00:00Z", "itemId": "K2rrSTGZWpp5vV6G", "itemSku": "O9j83KxfKf9qUYfQ", "itemType": "mDMg48KqabSv4Lx9"}, {"count": 80, "duration": 52, "endDate": "1998-09-02T00:00:00Z", "itemId": "Xz2m8PSkMhzNb2fJ", "itemSku": "GyCBKfl8IPuvcuuI", "itemType": "z3MCRkEsFGoosNYR"}, {"count": 80, "duration": 9, "endDate": "1988-05-05T00:00:00Z", "itemId": "hd6KDoCFMWHtLiol", "itemSku": "0Z9Zwl7WEkfqfMoj", "itemType": "EQvE3STvlyvCqL7L"}], "name": "zBu2BrF7TwMCVSzc", "odds": 0.4763797179521194, "type": "REWARD_GROUP", "weight": 2}], "rollFunction": "DEFAULT"}, "maxCount": 77, "maxCountPerUser": 74, "name": "seS0FtEwQZBNvzA0", "optionBoxConfig": {"boxItems": [{"count": 8, "duration": 36, "endDate": "1974-09-03T00:00:00Z", "itemId": "jhh69u758B1veUJq", "itemSku": "GAQz93kysQvghuCz", "itemType": "YkY3QcasoQHO41jP"}, {"count": 83, "duration": 30, "endDate": "1989-02-28T00:00:00Z", "itemId": "syOHa14nWhmTfKTT", "itemSku": "ZDRXwCyOqoN3hyhv", "itemType": "LuxDPYgrWCgQcwRA"}, {"count": 52, "duration": 74, "endDate": "1983-03-27T00:00:00Z", "itemId": "V3wsH2rpdn1GnDQM", "itemSku": "3BmKPfGuD5k4Hi2i", "itemType": "47MCZLrn7qhG0hP2"}]}, "purchasable": false, "recurring": {"cycle": "MONTHLY", "fixedFreeDays": 21, "fixedTrialCycles": 51, "graceDays": 98}, "regionData": {"cNgzQrYC6Fg2NMgl": [{"currencyCode": "WAJYnAZYEbNn8uED", "currencyNamespace": "ANqWh2EibTWyUfsV", "currencyType": "VIRTUAL", "discountAmount": 78, "discountExpireAt": "1987-02-05T00:00:00Z", "discountPercentage": 52, "discountPurchaseAt": "1996-05-07T00:00:00Z", "expireAt": "1995-12-26T00:00:00Z", "price": 40, "purchaseAt": "1988-01-13T00:00:00Z", "trialPrice": 35}, {"currencyCode": "ajTHPMkZVLyVsw1C", "currencyNamespace": "xxH0zIB7MgDKZupB", "currencyType": "REAL", "discountAmount": 84, "discountExpireAt": "1987-10-04T00:00:00Z", "discountPercentage": 79, "discountPurchaseAt": "1974-01-06T00:00:00Z", "expireAt": "1994-07-04T00:00:00Z", "price": 69, "purchaseAt": "1988-06-09T00:00:00Z", "trialPrice": 46}, {"currencyCode": "xJp9cXhhLY31lcyN", "currencyNamespace": "yA5EIGFMt1QWO2Fe", "currencyType": "VIRTUAL", "discountAmount": 34, "discountExpireAt": "1978-09-22T00:00:00Z", "discountPercentage": 10, "discountPurchaseAt": "1985-02-18T00:00:00Z", "expireAt": "1996-05-08T00:00:00Z", "price": 14, "purchaseAt": "1988-09-21T00:00:00Z", "trialPrice": 96}], "UKyoebF4xCH962Iw": [{"currencyCode": "jo15U6MvMAcMMd86", "currencyNamespace": "ccdrjky7gsuFFIwb", "currencyType": "VIRTUAL", "discountAmount": 72, "discountExpireAt": "1999-09-11T00:00:00Z", "discountPercentage": 51, "discountPurchaseAt": "1986-06-22T00:00:00Z", "expireAt": "1973-06-21T00:00:00Z", "price": 20, "purchaseAt": "1995-01-29T00:00:00Z", "trialPrice": 30}, {"currencyCode": "SSL0LlFSeAvIxnGN", "currencyNamespace": "z0OIHeNx8wxcNhSA", "currencyType": "VIRTUAL", "discountAmount": 75, "discountExpireAt": "1975-02-23T00:00:00Z", "discountPercentage": 16, "discountPurchaseAt": "1974-05-29T00:00:00Z", "expireAt": "1998-05-13T00:00:00Z", "price": 14, "purchaseAt": "1989-09-25T00:00:00Z", "trialPrice": 48}, {"currencyCode": "SXfP0wYCe4rc9jPD", "currencyNamespace": "tbhif2RlMbHlYW2V", "currencyType": "REAL", "discountAmount": 17, "discountExpireAt": "1982-08-02T00:00:00Z", "discountPercentage": 13, "discountPurchaseAt": "1986-12-24T00:00:00Z", "expireAt": "1976-07-24T00:00:00Z", "price": 99, "purchaseAt": "1994-06-07T00:00:00Z", "trialPrice": 43}], "ky5gnFGge3P0Axus": [{"currencyCode": "Goehz6nleLA3SZHk", "currencyNamespace": "NigKJtIK1jS0B5lf", "currencyType": "VIRTUAL", "discountAmount": 53, "discountExpireAt": "1997-07-22T00:00:00Z", "discountPercentage": 66, "discountPurchaseAt": "1984-06-09T00:00:00Z", "expireAt": "1984-01-02T00:00:00Z", "price": 42, "purchaseAt": "1982-10-14T00:00:00Z", "trialPrice": 20}, {"currencyCode": "y9TwTA9JPDGXdjDJ", "currencyNamespace": "6hPJECzrxyby8vAy", "currencyType": "VIRTUAL", "discountAmount": 52, "discountExpireAt": "1993-05-01T00:00:00Z", "discountPercentage": 54, "discountPurchaseAt": "1988-07-20T00:00:00Z", "expireAt": "1971-05-08T00:00:00Z", "price": 79, "purchaseAt": "1994-11-05T00:00:00Z", "trialPrice": 22}, {"currencyCode": "cIsFruUdiU4kwZH5", "currencyNamespace": "C8cKkr5eGstnuDbk", "currencyType": "REAL", "discountAmount": 47, "discountExpireAt": "1997-06-24T00:00:00Z", "discountPercentage": 45, "discountPurchaseAt": "1994-03-13T00:00:00Z", "expireAt": "1993-11-06T00:00:00Z", "price": 18, "purchaseAt": "1994-01-29T00:00:00Z", "trialPrice": 91}]}, "saleConfig": {"currencyCode": "MgVWmSsn3PeqwZyg", "price": 76}, "seasonType": "PASS", "sectionExclusive": false, "sellable": true, "sku": "bKMmvN49CwR1eGSQ", "stackable": true, "status": "INACTIVE", "tags": ["6CGkPuKWiYu3Ovln", "b4wdmNDjmweQpnZc", "JbA6nFGEkTURw0Ie"], "targetCurrencyCode": "VYcHHjArDnBWiCh3", "targetNamespace": "EKDjnsaAFhaLHImH", "thumbnailUrl": "N13wRPAgVwjVXeeG", "useCount": 11}' \
    > test.out 2>&1
eval_tap $? 107 'CreateItem' test.out

#- 108 GetItemByAppId
samples/cli/sample-apps Platform getItemByAppId \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'kjRPkuEpqVjKnsuQ' \
    --appId '5RwlDMu35TF4dqbo' \
    > test.out 2>&1
eval_tap $? 108 'GetItemByAppId' test.out

#- 109 QueryItems
samples/cli/sample-apps Platform queryItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --appType 'DEMO' \
    --availableDate 'THGwDODm6h7XrNkg' \
    --baseAppId '627flHsIYjNjg3a9' \
    --categoryPath 'DTlBcch0hfVkR5uZ' \
    --features 'zBdZfKewrBb0S1za' \
    --includeSubCategoryItem 'true' \
    --itemType 'OPTIONBOX' \
    --limit '66' \
    --offset '13' \
    --region '6BQdLSKgUUs1jcj6' \
    --sortBy '["displayOrder:asc", "createdAt", "displayOrder"]' \
    --storeId 'ss87jNJ5vERdTAbl' \
    --tags 'aShwqmTyzEpylrkT' \
    --targetNamespace 'rxBzFJ8QfkN24LEL' \
    > test.out 2>&1
eval_tap $? 109 'QueryItems' test.out

#- 110 ListBasicItemsByFeatures
samples/cli/sample-apps Platform listBasicItemsByFeatures \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --features '["audfhimr21C9IstD", "7ZYGebyroVfjMJ5A", "W2n4wCRGYzIF1x5d"]' \
    > test.out 2>&1
eval_tap $? 110 'ListBasicItemsByFeatures' test.out

#- 111 GetItems
samples/cli/sample-apps Platform getItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --storeId '4b5OWGGoqfalYPWP' \
    --itemIds 'J7xctYJE1S4Cynk4' \
    > test.out 2>&1
eval_tap $? 111 'GetItems' test.out

#- 112 GetItemBySku
samples/cli/sample-apps Platform getItemBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --storeId 'I5RtTzNTiWgQTb6t' \
    --sku 'JNQSU3oQUvYjvW5M' \
    > test.out 2>&1
eval_tap $? 112 'GetItemBySku' test.out

#- 113 GetLocaleItemBySku
samples/cli/sample-apps Platform getLocaleItemBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --language 'd4laXAfirSRGMYAq' \
    --populateBundle 'false' \
    --region 'dCv6Dg4q3Oe5fhhn' \
    --storeId '6Im15yU4edT1ovkf' \
    --sku 'hr6qT3mctdlBbeSQ' \
    > test.out 2>&1
eval_tap $? 113 'GetLocaleItemBySku' test.out

#- 114 GetEstimatedPrice
samples/cli/sample-apps Platform getEstimatedPrice \
    --namespace $AB_NAMESPACE \
    --platform '8mF7xrHMQFxKAFlN' \
    --region 'y1xhX2WMEfduQyka' \
    --storeId 'yBa2AbIh6Woarki5' \
    --itemIds '6QLNQiZhLwoWlMgt' \
    --userId 'UAAEWPmNHC33KYPn' \
    > test.out 2>&1
eval_tap $? 114 'GetEstimatedPrice' test.out

#- 115 GetItemIdBySku
samples/cli/sample-apps Platform getItemIdBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'Ics83zlAbLt9a7WY' \
    --sku 'jUjqPF0EycDmRdS3' \
    > test.out 2>&1
eval_tap $? 115 'GetItemIdBySku' test.out

#- 116 GetBulkItemIdBySkus
samples/cli/sample-apps Platform getBulkItemIdBySkus \
    --namespace $AB_NAMESPACE \
    --sku '["GPgJqIqGX9nSor4r", "kY5bcf3t9QS2R4co", "BjdIwEXPII0VSxEo"]' \
    --storeId 'JXAffc7sYxllcPC6' \
    > test.out 2>&1
eval_tap $? 116 'GetBulkItemIdBySkus' test.out

#- 117 BulkGetLocaleItems
samples/cli/sample-apps Platform bulkGetLocaleItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --language 'F9KYVcWUu7yCuGMP' \
    --region 'Y3k184PRGmaEhCwB' \
    --storeId 'a6Aye0qb0gHhdAV1' \
    --itemIds 'dqy9i0zDJ5DhgnYH' \
    > test.out 2>&1
eval_tap $? 117 'BulkGetLocaleItems' test.out

#- 118 GetAvailablePredicateTypes
samples/cli/sample-apps Platform getAvailablePredicateTypes \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 118 'GetAvailablePredicateTypes' test.out

#- 119 ValidateItemPurchaseCondition
samples/cli/sample-apps Platform validateItemPurchaseCondition \
    --namespace $AB_NAMESPACE \
    --platform 'X4Pra0OZTjRvYlFt' \
    --userId 'HyQQPApwaATMexD3' \
    --body '{"itemIds": ["rjDsNmLp7CHJyie7", "rL2X27U74TBMAdHy", "oeKElUcIXVEylqKF"]}' \
    > test.out 2>&1
eval_tap $? 119 'ValidateItemPurchaseCondition' test.out

#- 120 BulkUpdateRegionData
samples/cli/sample-apps Platform bulkUpdateRegionData \
    --namespace $AB_NAMESPACE \
    --storeId 'IBPnAwXjLzBYiXZT' \
    --body '{"changes": [{"itemIdentities": ["baY08MsWpKPX9ybV", "7XWF26RhaXhg1s4a", "5iixr2BZB0CK8LdX"], "itemIdentityType": "ITEM_SKU", "regionData": {"0dt0m8jt7deUA5Y9": [{"currencyCode": "OJeJr2xJsKcLewaC", "currencyNamespace": "2vwuBxeuShvdNzOf", "currencyType": "REAL", "discountAmount": 25, "discountExpireAt": "1971-02-23T00:00:00Z", "discountPercentage": 85, "discountPurchaseAt": "1983-11-15T00:00:00Z", "discountedPrice": 97, "expireAt": "1996-02-11T00:00:00Z", "price": 41, "purchaseAt": "1988-07-22T00:00:00Z", "trialPrice": 36}, {"currencyCode": "8vIKpOEG26ROmTKc", "currencyNamespace": "5Bb5yS6lyAgmw7dH", "currencyType": "VIRTUAL", "discountAmount": 75, "discountExpireAt": "1972-04-17T00:00:00Z", "discountPercentage": 73, "discountPurchaseAt": "1995-02-20T00:00:00Z", "discountedPrice": 52, "expireAt": "1989-09-14T00:00:00Z", "price": 63, "purchaseAt": "1982-12-22T00:00:00Z", "trialPrice": 34}, {"currencyCode": "1s0iUiEQXDcZsfvL", "currencyNamespace": "vZNfk8O0QtagfIuQ", "currencyType": "REAL", "discountAmount": 76, "discountExpireAt": "1996-03-12T00:00:00Z", "discountPercentage": 49, "discountPurchaseAt": "1997-11-30T00:00:00Z", "discountedPrice": 21, "expireAt": "1990-08-23T00:00:00Z", "price": 35, "purchaseAt": "1979-02-04T00:00:00Z", "trialPrice": 57}], "D4ubFoNffxUCqD4B": [{"currencyCode": "2D33VUcX7lHuHOL4", "currencyNamespace": "f8QGZGMEqmnsgdMz", "currencyType": "VIRTUAL", "discountAmount": 29, "discountExpireAt": "1999-08-26T00:00:00Z", "discountPercentage": 57, "discountPurchaseAt": "1995-04-19T00:00:00Z", "discountedPrice": 30, "expireAt": "1994-04-29T00:00:00Z", "price": 15, "purchaseAt": "1992-10-11T00:00:00Z", "trialPrice": 40}, {"currencyCode": "pRxJWzp7WGvqluvi", "currencyNamespace": "eAl8X1iNbVU9sTdb", "currencyType": "VIRTUAL", "discountAmount": 87, "discountExpireAt": "1991-04-03T00:00:00Z", "discountPercentage": 93, "discountPurchaseAt": "1984-10-21T00:00:00Z", "discountedPrice": 13, "expireAt": "1994-09-24T00:00:00Z", "price": 12, "purchaseAt": "1993-03-23T00:00:00Z", "trialPrice": 99}, {"currencyCode": "7xQnYMoMC3AfNPT0", "currencyNamespace": "j6x8Dusefh9UAvFA", "currencyType": "REAL", "discountAmount": 25, "discountExpireAt": "1983-06-20T00:00:00Z", "discountPercentage": 20, "discountPurchaseAt": "1984-06-16T00:00:00Z", "discountedPrice": 96, "expireAt": "1981-08-02T00:00:00Z", "price": 3, "purchaseAt": "1997-01-19T00:00:00Z", "trialPrice": 58}], "xTNgarDj6jss3xy9": [{"currencyCode": "3HboLCIMeO8fDITI", "currencyNamespace": "rqI4TtlW44vHFir4", "currencyType": "VIRTUAL", "discountAmount": 71, "discountExpireAt": "1984-11-23T00:00:00Z", "discountPercentage": 75, "discountPurchaseAt": "1999-03-17T00:00:00Z", "discountedPrice": 1, "expireAt": "1982-07-29T00:00:00Z", "price": 19, "purchaseAt": "1977-11-27T00:00:00Z", "trialPrice": 69}, {"currencyCode": "DBVE2pgZt4jd8PdR", "currencyNamespace": "I51dymR2bR2xg8L6", "currencyType": "VIRTUAL", "discountAmount": 100, "discountExpireAt": "1995-09-02T00:00:00Z", "discountPercentage": 8, "discountPurchaseAt": "1980-02-01T00:00:00Z", "discountedPrice": 96, "expireAt": "1983-11-07T00:00:00Z", "price": 93, "purchaseAt": "1995-02-10T00:00:00Z", "trialPrice": 40}, {"currencyCode": "Smcxc8Zq4Wv2CVGf", "currencyNamespace": "piNUAwfUKHbm0zIx", "currencyType": "REAL", "discountAmount": 75, "discountExpireAt": "1997-08-29T00:00:00Z", "discountPercentage": 65, "discountPurchaseAt": "1977-03-28T00:00:00Z", "discountedPrice": 61, "expireAt": "1989-05-11T00:00:00Z", "price": 16, "purchaseAt": "1989-09-18T00:00:00Z", "trialPrice": 55}]}}, {"itemIdentities": ["RYbhGYMGSNdiqryr", "bb4LHdlqxvzUjv1b", "FP4oGcixy7q4xtnk"], "itemIdentityType": "ITEM_SKU", "regionData": {"F3Q1AuZDzmsn24Ii": [{"currencyCode": "S6kq0stqFO10lha8", "currencyNamespace": "WDLOX7FT7DKZUGJg", "currencyType": "VIRTUAL", "discountAmount": 3, "discountExpireAt": "1988-10-23T00:00:00Z", "discountPercentage": 39, "discountPurchaseAt": "1987-11-07T00:00:00Z", "discountedPrice": 82, "expireAt": "1999-05-21T00:00:00Z", "price": 44, "purchaseAt": "1994-01-10T00:00:00Z", "trialPrice": 74}, {"currencyCode": "LglYb9ulupZRqdfS", "currencyNamespace": "M0xhSm25Ngp0QD2j", "currencyType": "REAL", "discountAmount": 26, "discountExpireAt": "1980-01-10T00:00:00Z", "discountPercentage": 93, "discountPurchaseAt": "1999-06-28T00:00:00Z", "discountedPrice": 90, "expireAt": "1976-02-15T00:00:00Z", "price": 79, "purchaseAt": "1992-02-28T00:00:00Z", "trialPrice": 47}, {"currencyCode": "RdsRrzmG5F1eJUKR", "currencyNamespace": "zqc85kgqr4Ix14ii", "currencyType": "VIRTUAL", "discountAmount": 10, "discountExpireAt": "1990-07-13T00:00:00Z", "discountPercentage": 88, "discountPurchaseAt": "1991-05-26T00:00:00Z", "discountedPrice": 54, "expireAt": "1999-11-19T00:00:00Z", "price": 0, "purchaseAt": "1975-04-29T00:00:00Z", "trialPrice": 52}], "qNcoA4Kz4uPfOMZR": [{"currencyCode": "qef3H1zxR5AgKb8E", "currencyNamespace": "ZyRa9iuFJipLngSp", "currencyType": "REAL", "discountAmount": 87, "discountExpireAt": "1978-04-24T00:00:00Z", "discountPercentage": 35, "discountPurchaseAt": "1990-09-12T00:00:00Z", "discountedPrice": 74, "expireAt": "1990-08-22T00:00:00Z", "price": 19, "purchaseAt": "1977-10-22T00:00:00Z", "trialPrice": 50}, {"currencyCode": "hfc8SyXpGUdY4y5U", "currencyNamespace": "9EOYcZKof1lrWRMR", "currencyType": "VIRTUAL", "discountAmount": 6, "discountExpireAt": "1980-04-02T00:00:00Z", "discountPercentage": 93, "discountPurchaseAt": "1992-01-22T00:00:00Z", "discountedPrice": 25, "expireAt": "1990-05-10T00:00:00Z", "price": 95, "purchaseAt": "1992-09-02T00:00:00Z", "trialPrice": 68}, {"currencyCode": "eT5IZ1vl2u3J9dvp", "currencyNamespace": "OaVqvdRAhjSAGLzX", "currencyType": "REAL", "discountAmount": 30, "discountExpireAt": "1992-05-08T00:00:00Z", "discountPercentage": 6, "discountPurchaseAt": "1992-01-13T00:00:00Z", "discountedPrice": 84, "expireAt": "1973-11-30T00:00:00Z", "price": 100, "purchaseAt": "1988-10-14T00:00:00Z", "trialPrice": 35}], "hwwConuTWJ8qz2nk": [{"currencyCode": "PGknZVne9UTunLlC", "currencyNamespace": "BEB9aLpy8g7KH89b", "currencyType": "VIRTUAL", "discountAmount": 22, "discountExpireAt": "1986-10-27T00:00:00Z", "discountPercentage": 44, "discountPurchaseAt": "1991-03-18T00:00:00Z", "discountedPrice": 0, "expireAt": "1980-07-12T00:00:00Z", "price": 79, "purchaseAt": "1990-11-05T00:00:00Z", "trialPrice": 82}, {"currencyCode": "YD14NwjK7sqsKmon", "currencyNamespace": "zWq02Fb52VkgKdry", "currencyType": "VIRTUAL", "discountAmount": 76, "discountExpireAt": "1983-11-20T00:00:00Z", "discountPercentage": 70, "discountPurchaseAt": "1978-08-25T00:00:00Z", "discountedPrice": 70, "expireAt": "1991-06-06T00:00:00Z", "price": 67, "purchaseAt": "1978-05-29T00:00:00Z", "trialPrice": 1}, {"currencyCode": "yIsRle6fqIrM28HX", "currencyNamespace": "MTViS5HslOXfSx26", "currencyType": "VIRTUAL", "discountAmount": 33, "discountExpireAt": "1995-10-12T00:00:00Z", "discountPercentage": 19, "discountPurchaseAt": "1997-06-20T00:00:00Z", "discountedPrice": 69, "expireAt": "1976-04-16T00:00:00Z", "price": 67, "purchaseAt": "1994-12-17T00:00:00Z", "trialPrice": 30}]}}, {"itemIdentities": ["I79hWybAQ4zRSccq", "VYU7VKcjCoXTfQcq", "UoECsAWtslk6l4HB"], "itemIdentityType": "ITEM_SKU", "regionData": {"bylxRXglZHgIoAXP": [{"currencyCode": "WrCovdjD4N49rAk3", "currencyNamespace": "PTDc6bhYNZ6nh4wp", "currencyType": "REAL", "discountAmount": 97, "discountExpireAt": "1996-08-12T00:00:00Z", "discountPercentage": 85, "discountPurchaseAt": "1982-02-21T00:00:00Z", "discountedPrice": 79, "expireAt": "1987-01-09T00:00:00Z", "price": 79, "purchaseAt": "1981-01-12T00:00:00Z", "trialPrice": 69}, {"currencyCode": "qV48bcCXeyFAKisw", "currencyNamespace": "U7a8CmJcdqaBTfse", "currencyType": "VIRTUAL", "discountAmount": 99, "discountExpireAt": "1991-09-24T00:00:00Z", "discountPercentage": 62, "discountPurchaseAt": "1996-07-10T00:00:00Z", "discountedPrice": 48, "expireAt": "1991-01-08T00:00:00Z", "price": 45, "purchaseAt": "1980-12-30T00:00:00Z", "trialPrice": 19}, {"currencyCode": "p9FclMQrszWOzxXd", "currencyNamespace": "HITliTNG4X5dmndv", "currencyType": "REAL", "discountAmount": 45, "discountExpireAt": "1996-08-22T00:00:00Z", "discountPercentage": 98, "discountPurchaseAt": "1997-11-25T00:00:00Z", "discountedPrice": 97, "expireAt": "1992-06-22T00:00:00Z", "price": 78, "purchaseAt": "1989-07-14T00:00:00Z", "trialPrice": 48}], "p9Ql9eptPa2rcAnu": [{"currencyCode": "u2pN6rA5qIprWMTE", "currencyNamespace": "aoKu6qiJA6mPul8b", "currencyType": "REAL", "discountAmount": 30, "discountExpireAt": "1997-03-31T00:00:00Z", "discountPercentage": 42, "discountPurchaseAt": "1973-11-15T00:00:00Z", "discountedPrice": 45, "expireAt": "1995-08-27T00:00:00Z", "price": 74, "purchaseAt": "1986-03-29T00:00:00Z", "trialPrice": 45}, {"currencyCode": "ThxltjS3bwZ0FLQv", "currencyNamespace": "4Xp44dAnedDSOHzR", "currencyType": "VIRTUAL", "discountAmount": 20, "discountExpireAt": "1975-03-30T00:00:00Z", "discountPercentage": 62, "discountPurchaseAt": "1979-02-11T00:00:00Z", "discountedPrice": 73, "expireAt": "1983-10-14T00:00:00Z", "price": 23, "purchaseAt": "1976-04-15T00:00:00Z", "trialPrice": 16}, {"currencyCode": "uzM9hyTMBvEB399X", "currencyNamespace": "quBaVUe8ZnpGTcXk", "currencyType": "REAL", "discountAmount": 48, "discountExpireAt": "1974-08-23T00:00:00Z", "discountPercentage": 81, "discountPurchaseAt": "1994-11-01T00:00:00Z", "discountedPrice": 90, "expireAt": "1979-04-21T00:00:00Z", "price": 16, "purchaseAt": "1982-01-31T00:00:00Z", "trialPrice": 59}], "7nMDtFjNDxy3HALF": [{"currencyCode": "AzlHoB8HlsWuyVRO", "currencyNamespace": "BwJrz7gWY2cpRhh0", "currencyType": "REAL", "discountAmount": 64, "discountExpireAt": "1994-06-10T00:00:00Z", "discountPercentage": 84, "discountPurchaseAt": "1975-03-02T00:00:00Z", "discountedPrice": 26, "expireAt": "1996-10-26T00:00:00Z", "price": 2, "purchaseAt": "1979-10-26T00:00:00Z", "trialPrice": 69}, {"currencyCode": "JA8JzaCWfrqfpCUR", "currencyNamespace": "oPpMKjwOZHzIcwcW", "currencyType": "REAL", "discountAmount": 78, "discountExpireAt": "1989-02-24T00:00:00Z", "discountPercentage": 45, "discountPurchaseAt": "1980-01-18T00:00:00Z", "discountedPrice": 83, "expireAt": "1999-09-27T00:00:00Z", "price": 59, "purchaseAt": "1977-11-24T00:00:00Z", "trialPrice": 90}, {"currencyCode": "9DfMjFrwx7lwbgW7", "currencyNamespace": "lvv8V3WuQYRHDyyv", "currencyType": "VIRTUAL", "discountAmount": 79, "discountExpireAt": "1994-09-17T00:00:00Z", "discountPercentage": 61, "discountPurchaseAt": "1991-03-25T00:00:00Z", "discountedPrice": 79, "expireAt": "1993-01-07T00:00:00Z", "price": 65, "purchaseAt": "1989-12-29T00:00:00Z", "trialPrice": 78}]}}]}' \
    > test.out 2>&1
eval_tap $? 120 'BulkUpdateRegionData' test.out

#- 121 SearchItems
samples/cli/sample-apps Platform searchItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --itemType 'CODE' \
    --limit '3' \
    --offset '75' \
    --sortBy '5RCtF7jrOl19xwq1' \
    --storeId 'ALPWjAmRva7fBzRo' \
    --keyword 'ULBrPPXAgrSuEHIE' \
    --language 'IRVUYraXaF7FGEX8' \
    > test.out 2>&1
eval_tap $? 121 'SearchItems' test.out

#- 122 QueryUncategorizedItems
samples/cli/sample-apps Platform queryUncategorizedItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --limit '83' \
    --offset '39' \
    --sortBy '["createdAt:asc", "displayOrder", "displayOrder:desc"]' \
    --storeId 'tJ1X87yqxAmzFDy4' \
    > test.out 2>&1
eval_tap $? 122 'QueryUncategorizedItems' test.out

#- 123 GetItem
samples/cli/sample-apps Platform getItem \
    --itemId 'o9C7KjfuBV9TXNMD' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'tw24tXMxfzXKBfCQ' \
    > test.out 2>&1
eval_tap $? 123 'GetItem' test.out

#- 124 UpdateItem
samples/cli/sample-apps Platform updateItem \
    --itemId 'BWijzuOLdzNnmdm2' \
    --namespace $AB_NAMESPACE \
    --storeId 'NMpyugpiQ2CqmzXw' \
    --body '{"appId": "lkNyU47dvDm9yBQy", "appType": "DLC", "baseAppId": "Wm7VJFoZ6O9J2cup", "boothName": "qgA0tBzSnVXqgYHe", "categoryPath": "0dE4bvIyGWLh7TMh", "clazz": "zyp9yLO9DSxgHUCI", "displayOrder": 30, "entitlementType": "CONSUMABLE", "ext": {"F7TmxnZL9dhok5ka": {}, "6XOJWJ6jAYwQz8Sy": {}, "rzmsQlHYwOLWeHvV": {}}, "features": ["BtsgVgbJFUarZCC6", "c0s9lW2ab37yeqCJ", "tceczSlywoCV3KcV"], "flexible": true, "images": [{"as": "7kFoHtqc9MgZrTmy", "caption": "eGZkuRQv8AhukJO3", "height": 11, "imageUrl": "lor75E75NVgIMrkU", "smallImageUrl": "KRVTF6Vh6h5G1huI", "width": 64}, {"as": "4BMgqMnI90cCa35N", "caption": "NU0TK1Tsm2eArUgh", "height": 66, "imageUrl": "VjO6QhapdByyVHsq", "smallImageUrl": "ehudkyB2luQf63C3", "width": 12}, {"as": "uuPKYBiROWPlofvx", "caption": "V5LWGHLt0iQ0qMYh", "height": 57, "imageUrl": "omDVNip7P7L2zTgx", "smallImageUrl": "xaBiR0X2G6LcXMPH", "width": 69}], "inventoryConfig": {"customAttributes": {"OPexifPcAuMKXgPv": {}, "7OBDg8ZlwtGdIpYv": {}, "kPtOTVfeotwhbVPu": {}}, "serverCustomAttributes": {"DofMaZk5mbzHZDas": {}, "Ts9eQoe9y9CY0CrU": {}, "3ABIDq3emk01GT1G": {}}, "slotUsed": 21}, "itemIds": ["a7mkf1XdrE6ANdPJ", "jHAM2NiIUibX5tUc", "OT8t7qGjT0t7ysWk"], "itemQty": {"JMb2MpwH2hLrpfpb": 71, "ILj9fL6dbmI9wEhP": 99, "QOC2Mfss6K5iy9aD": 50}, "itemType": "MEDIA", "listable": false, "localizations": {"7cDBiSNqRw9BFGAA": {"description": "uZ0iXCcylh6stXsf", "localExt": {"uXX4d9WNhwdshcr4": {}, "BrpNvpqBjQx6SFcK": {}, "Jf8fcrmuBZAJVjtP": {}}, "longDescription": "NGcopTyPjBZjkhBT", "title": "uhAHcCp2tzy84ukU"}, "s04apfZtVD5LMxMy": {"description": "JpzrqNLbQ0FQdlXD", "localExt": {"qLQQH6smZW8XuIIN": {}, "xe68SB4XWPBXLWfg": {}, "hTtwu6JhFt3RZFPN": {}}, "longDescription": "q2biqSbWq0slgqiL", "title": "OxFTJoBC4foALx2G"}, "j9q3o99rZU7gG8a7": {"description": "0kNwykMOle65DUk4", "localExt": {"tT3EHfVTkspwO98z": {}, "yYTWQmLdSFJw5w4w": {}, "qgpep0RiQJr16Jq1": {}}, "longDescription": "kmcsvfw2CEcpnvpX", "title": "ggsJQqRVdcKKB6Eg"}}, "lootBoxConfig": {"rewardCount": 14, "rewards": [{"lootBoxItems": [{"count": 23, "duration": 79, "endDate": "1997-08-03T00:00:00Z", "itemId": "uKNQYoIGiWsazWgR", "itemSku": "l2D9HMF536Ev63zm", "itemType": "NTdocWfI2EYfAzzh"}, {"count": 41, "duration": 23, "endDate": "1975-03-11T00:00:00Z", "itemId": "5kv60jBK9wm4fXEV", "itemSku": "2eI53v9gRJohSBHt", "itemType": "EOTX6o5LnnKOncmA"}, {"count": 3, "duration": 41, "endDate": "1990-12-07T00:00:00Z", "itemId": "cHbJ0PIWY8V4vZ5H", "itemSku": "qMnndjbErtP7gQ5i", "itemType": "UJ6jHqzlas8dsUpV"}], "name": "C5r07SApBAgbDJfo", "odds": 0.6865391870413092, "type": "REWARD_GROUP", "weight": 42}, {"lootBoxItems": [{"count": 65, "duration": 18, "endDate": "1983-09-15T00:00:00Z", "itemId": "iw4OJjYbBapHGMEY", "itemSku": "1dm477yYEHtFuiuS", "itemType": "QkgksnSxFB3gynl8"}, {"count": 74, "duration": 91, "endDate": "1971-04-22T00:00:00Z", "itemId": "j9vmDGc4BD4DjAiD", "itemSku": "J18AwgHcKCryxO8g", "itemType": "cQyFX0RjKy0CsvdL"}, {"count": 48, "duration": 64, "endDate": "1986-09-25T00:00:00Z", "itemId": "JxxdFlDtzqfvr2hZ", "itemSku": "rZANAUlkf3sFPCLA", "itemType": "3VqkFAF59Lz5xJFP"}], "name": "aWhHSTBS2hKg1odi", "odds": 0.33845827533852757, "type": "PROBABILITY_GROUP", "weight": 78}, {"lootBoxItems": [{"count": 50, "duration": 88, "endDate": "1995-03-06T00:00:00Z", "itemId": "Vv1hao3cJuWWdLcP", "itemSku": "T2Os7uY6XXKg9nmd", "itemType": "no5yedRNB8leAgZb"}, {"count": 91, "duration": 78, "endDate": "1971-07-18T00:00:00Z", "itemId": "WbOjC3hsjaz14nhQ", "itemSku": "fJ5nEpFJXYWgYLNU", "itemType": "GbObaTbQkhWnsVf2"}, {"count": 16, "duration": 16, "endDate": "1994-03-24T00:00:00Z", "itemId": "rt9hkp8nmYcvmSCM", "itemSku": "XQoYrJkWkQXn7zf5", "itemType": "HDtRYlUsqr8KsOcU"}], "name": "5qcPd3hTqRZNgbnh", "odds": 0.15547715162922948, "type": "REWARD", "weight": 86}], "rollFunction": "CUSTOM"}, "maxCount": 41, "maxCountPerUser": 99, "name": "7USC8osiSe7UHynA", "optionBoxConfig": {"boxItems": [{"count": 21, "duration": 5, "endDate": "1999-11-30T00:00:00Z", "itemId": "BAft50bqsNeOHpVY", "itemSku": "yNpH1LwatDfehnEX", "itemType": "7nVXLevatQE4qTGA"}, {"count": 64, "duration": 14, "endDate": "1982-06-29T00:00:00Z", "itemId": "rBzgeT6IG99vFVAS", "itemSku": "PPiaVnRRKzAgema3", "itemType": "vLOcKuY3d0qqyVz7"}, {"count": 14, "duration": 26, "endDate": "1986-09-29T00:00:00Z", "itemId": "LbrgzCLqLPdRsTxy", "itemSku": "rDPmM5ScIuHL5tXE", "itemType": "lBYyPUE1s9yz2kGc"}]}, "purchasable": false, "recurring": {"cycle": "MONTHLY", "fixedFreeDays": 45, "fixedTrialCycles": 30, "graceDays": 75}, "regionData": {"2iLgBcaQa365I97a": [{"currencyCode": "WS7ZlAhtrP52K7jj", "currencyNamespace": "YmqKOOqhRwFMtDit", "currencyType": "VIRTUAL", "discountAmount": 10, "discountExpireAt": "1979-03-08T00:00:00Z", "discountPercentage": 12, "discountPurchaseAt": "1993-08-31T00:00:00Z", "expireAt": "1990-07-26T00:00:00Z", "price": 8, "purchaseAt": "1975-09-12T00:00:00Z", "trialPrice": 20}, {"currencyCode": "P64ZCK2hDg9Vnbh8", "currencyNamespace": "HBDRh8A9kfEltU73", "currencyType": "REAL", "discountAmount": 0, "discountExpireAt": "1991-04-01T00:00:00Z", "discountPercentage": 72, "discountPurchaseAt": "1971-09-12T00:00:00Z", "expireAt": "1988-08-13T00:00:00Z", "price": 69, "purchaseAt": "1987-06-30T00:00:00Z", "trialPrice": 72}, {"currencyCode": "eaxYdFOSl6PiBJDX", "currencyNamespace": "7puDvxsfAx3ztzZU", "currencyType": "VIRTUAL", "discountAmount": 53, "discountExpireAt": "1982-06-19T00:00:00Z", "discountPercentage": 100, "discountPurchaseAt": "1994-12-24T00:00:00Z", "expireAt": "1985-04-03T00:00:00Z", "price": 98, "purchaseAt": "1976-01-27T00:00:00Z", "trialPrice": 55}], "im5wCXbmyP9dOhw5": [{"currencyCode": "FUK65Bn2jfs7rSnS", "currencyNamespace": "2HdmR244Ncttu3LN", "currencyType": "VIRTUAL", "discountAmount": 6, "discountExpireAt": "1998-02-24T00:00:00Z", "discountPercentage": 16, "discountPurchaseAt": "1977-07-19T00:00:00Z", "expireAt": "1975-05-15T00:00:00Z", "price": 33, "purchaseAt": "1972-03-15T00:00:00Z", "trialPrice": 54}, {"currencyCode": "lq8H08cLHdHxwlrY", "currencyNamespace": "GRithnrIcGhb3HuW", "currencyType": "REAL", "discountAmount": 46, "discountExpireAt": "1980-10-06T00:00:00Z", "discountPercentage": 93, "discountPurchaseAt": "1971-07-25T00:00:00Z", "expireAt": "1972-03-03T00:00:00Z", "price": 83, "purchaseAt": "1984-05-13T00:00:00Z", "trialPrice": 57}, {"currencyCode": "duRdZi0vszNkAWfR", "currencyNamespace": "5XRaCnAtAOA5G3xb", "currencyType": "VIRTUAL", "discountAmount": 55, "discountExpireAt": "1971-05-01T00:00:00Z", "discountPercentage": 84, "discountPurchaseAt": "1981-03-03T00:00:00Z", "expireAt": "1998-07-14T00:00:00Z", "price": 6, "purchaseAt": "1994-07-28T00:00:00Z", "trialPrice": 91}], "hL3VgQxhhIOzFIva": [{"currencyCode": "gH6EdEqWYZRpO6Tf", "currencyNamespace": "Jqj8U9MD5mCijzTc", "currencyType": "VIRTUAL", "discountAmount": 11, "discountExpireAt": "1979-06-27T00:00:00Z", "discountPercentage": 27, "discountPurchaseAt": "1989-01-13T00:00:00Z", "expireAt": "1999-11-15T00:00:00Z", "price": 70, "purchaseAt": "1989-10-08T00:00:00Z", "trialPrice": 3}, {"currencyCode": "waivbem0sm2Nv4xj", "currencyNamespace": "aPC1doLOFzT3rhGj", "currencyType": "REAL", "discountAmount": 99, "discountExpireAt": "1995-09-28T00:00:00Z", "discountPercentage": 68, "discountPurchaseAt": "1982-03-30T00:00:00Z", "expireAt": "1997-08-16T00:00:00Z", "price": 56, "purchaseAt": "1980-12-08T00:00:00Z", "trialPrice": 68}, {"currencyCode": "tEodTCZsfmudOaUM", "currencyNamespace": "bChfjDbvINpIu3ez", "currencyType": "VIRTUAL", "discountAmount": 29, "discountExpireAt": "1993-11-28T00:00:00Z", "discountPercentage": 21, "discountPurchaseAt": "1992-03-27T00:00:00Z", "expireAt": "1971-06-03T00:00:00Z", "price": 44, "purchaseAt": "1984-12-02T00:00:00Z", "trialPrice": 53}]}, "saleConfig": {"currencyCode": "KN4EfLdKywDrQKAX", "price": 70}, "seasonType": "TIER", "sectionExclusive": false, "sellable": false, "sku": "v3cB6I7kyL7XSPqG", "stackable": true, "status": "ACTIVE", "tags": ["Je9K4dLDocGkK0bR", "K6FOywbVS6C7tCZQ", "OdjRLGVFP6nEVTGX"], "targetCurrencyCode": "dPlHZrATG58ZaJaQ", "targetNamespace": "mjc1jyMbERUa6r1u", "thumbnailUrl": "jJIckDWu7VPUSN8m", "useCount": 74}' \
    > test.out 2>&1
eval_tap $? 124 'UpdateItem' test.out

#- 125 DeleteItem
samples/cli/sample-apps Platform deleteItem \
    --itemId 'YmaRDzzvESqZMG9g' \
    --namespace $AB_NAMESPACE \
    --force 'false' \
    --storeId 'atRBistx85Bp6Rm2' \
    > test.out 2>&1
eval_tap $? 125 'DeleteItem' test.out

#- 126 AcquireItem
samples/cli/sample-apps Platform acquireItem \
    --itemId 'AnMZwoXKh3kc7sj7' \
    --namespace $AB_NAMESPACE \
    --body '{"count": 69, "orderNo": "wGRzQB2s2yfO4Nll"}' \
    > test.out 2>&1
eval_tap $? 126 'AcquireItem' test.out

#- 127 GetApp
samples/cli/sample-apps Platform getApp \
    --itemId 'ATAkjaB6j2mYfkZ1' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'h4AMfUZKzwCprnMo' \
    > test.out 2>&1
eval_tap $? 127 'GetApp' test.out

#- 128 UpdateApp
samples/cli/sample-apps Platform updateApp \
    --itemId 'SqUwxOsGKmcxLJxS' \
    --namespace $AB_NAMESPACE \
    --storeId 'SXTATDeEs26qwZAN' \
    --body '{"carousel": [{"alt": "FqnEpXOdxl2x2l7T", "previewUrl": "8aL03g2D0dHS6vBH", "thumbnailUrl": "aFKeWsqw4dEL7NKT", "type": "image", "url": "9WCOPKVG5sFacEi5", "videoSource": "generic"}, {"alt": "wbU1oDUFi00FIAqD", "previewUrl": "W1Znye0UpSBAVUmS", "thumbnailUrl": "blvZajpRZlPtEaW1", "type": "video", "url": "96Bo3RUOLV7JqCkS", "videoSource": "vimeo"}, {"alt": "0PViDD47cLcWfQJj", "previewUrl": "che2FfYsTEVetVmN", "thumbnailUrl": "TaGkuoxLAzjmsNps", "type": "video", "url": "jn0C158Ijn9kBRCR", "videoSource": "youtube"}], "developer": "hKzkaxVfHMkntZVc", "forumUrl": "hPvnK02wyu8Kp7l6", "genres": ["MassivelyMultiplayer", "Sports", "Simulation"], "localizations": {"uSmHNFFvVofmB0d9": {"announcement": "KDLiZQL02U9qHUWF", "slogan": "GZVYOia2bVPObb5g"}, "cJPBD3QWi01cyhOe": {"announcement": "AWmf7ofseUEozy0B", "slogan": "1mY57RttHVG05IMc"}, "ptecIwHPzpBJ2YCW": {"announcement": "O5NyMC0bxC8w4Cse", "slogan": "E35UB2eXoXXX8h8C"}}, "platformRequirements": {"SEINy3tfOZRSKGgV": [{"additionals": "VmFPh5KCjtV7SaEz", "directXVersion": "dlu4LutZykVCLLnT", "diskSpace": "lLtU4sCLrZLexhJR", "graphics": "p8EV0ducHnk9Ygl8", "label": "wMX9RPuzg901pt2g", "osVersion": "MLn6Ih6emoaMtUAP", "processor": "t5jAU4CZz99xtptp", "ram": "6xc8z1FdfSSLB6nA", "soundCard": "YLABYr3ZsCN3UUEF"}, {"additionals": "1EtwqNAqG22arch4", "directXVersion": "Iiztr9dy2vDzcpgq", "diskSpace": "NH3QTF7R6t5dBr1d", "graphics": "GaeQ1r8qjwPLwb5j", "label": "o8BsH8V0ZTk2mWbz", "osVersion": "Ltzvm08nryVYgcWo", "processor": "u4mSe3mESIvtymQa", "ram": "yHOsR9GhV5tf1G03", "soundCard": "VIkTelDPAtFK33qx"}, {"additionals": "DssVplwSbRoqps3r", "directXVersion": "MoIVK1hQqZwJEk7o", "diskSpace": "jX8JILtsAN1RWqEq", "graphics": "FOjZyKk6dkA9mgjn", "label": "L5EWFihdPjm2uPUx", "osVersion": "5fi7Iu0Y0Z4blWLb", "processor": "DQypodukXJe20EHx", "ram": "NgaS5BrejCkarf0U", "soundCard": "Kbrl8NG1tIEydlzZ"}], "Ub4QVIwuGKOKnK95": [{"additionals": "OkT2n0wSGJzCRlzP", "directXVersion": "VhcPQXNOBfDh57Lk", "diskSpace": "plYOeYjEDEsMRnFJ", "graphics": "Ag8qG74z5oFjv8bU", "label": "NJl1dDyZXQSUhTPh", "osVersion": "a8tfBQ7GX2DpTyAg", "processor": "XoCQ3rALsm4nBdA3", "ram": "rAGIUcnF2tBwDaoM", "soundCard": "qpM5IZjN0c2QK5WG"}, {"additionals": "2VesNM3bQyeqUWuh", "directXVersion": "GpzULMdUqnTSCDjE", "diskSpace": "MfKiUhO76t9O3iNz", "graphics": "bFUc3WZylWuzm8lT", "label": "NcCQl9OElKc2G53T", "osVersion": "NfpUi1QPP3A2zxwF", "processor": "HEGt6RlFgp0DDlhb", "ram": "XJYD8P24nypFJ1Ao", "soundCard": "4gA57hNtMhLscKUF"}, {"additionals": "i4mqNCV9XOhMzGSb", "directXVersion": "id5DYSACASRR2UZ1", "diskSpace": "yyXdDiI3WaKfR0hd", "graphics": "cDoputxWSDw2ygzJ", "label": "SQh98SdjVrRpVT8H", "osVersion": "r2nGwd9S30WGEuju", "processor": "LkaZi8JELBYgtwKH", "ram": "10m9CRE3BspfJpSk", "soundCard": "T8J0L9NcYyg3Z6mu"}], "8Ezrp7hz4lhcL3fy": [{"additionals": "e5Fe6WjcUldehTBJ", "directXVersion": "phD1gUQ96zWrvcE3", "diskSpace": "qh49Bkxi91fquYNf", "graphics": "C37ugI80QsDxDglG", "label": "Pi48URspTI1pe6m4", "osVersion": "zjCsYDU26Qoa9K8f", "processor": "792NIsocTaqjCfAW", "ram": "0dI1cdSTOs49Bw9j", "soundCard": "YgrD1BSTYWhMfCuq"}, {"additionals": "bZyQl0d5lTQU1cCM", "directXVersion": "FyYg4i5ziBhkPFQC", "diskSpace": "A6x9u0091oUIYI7X", "graphics": "3VVBTzl4MclnncvE", "label": "cPLhmceyfuBBFL76", "osVersion": "P6qOwWhWffIjoj5d", "processor": "KHaIB0TnNthzpSZ8", "ram": "MW0lFjYP5DgvNjZp", "soundCard": "NgiY5AGcHtKXpuXM"}, {"additionals": "sxWdf6q9UNjSdH0W", "directXVersion": "HcuZmnBeGu5jjkgy", "diskSpace": "hB2liiLjgRYDqh0b", "graphics": "hGOzVcGDU7fNihWw", "label": "8XDEytERpV90Eg9R", "osVersion": "oMwvWH4WXsULmwPO", "processor": "t2AaXa2TsvshgdyK", "ram": "dxSYVNmhADdHHU0n", "soundCard": "8xUI8HSaiUaWxe0o"}]}, "platforms": ["MacOS", "Android", "IOS"], "players": ["Coop", "MMO", "Multi"], "primaryGenre": "RPG", "publisher": "jAdcuxTwTp6JI0A2", "releaseDate": "1975-07-02T00:00:00Z", "websiteUrl": "bJHs1PlzoD9rROzc"}' \
    > test.out 2>&1
eval_tap $? 128 'UpdateApp' test.out

#- 129 DisableItem
samples/cli/sample-apps Platform disableItem \
    --itemId 'O181uqKfUMclCUmO' \
    --namespace $AB_NAMESPACE \
    --storeId 'S1Hx6EdK4OApiDFa' \
    > test.out 2>&1
eval_tap $? 129 'DisableItem' test.out

#- 130 GetItemDynamicData
samples/cli/sample-apps Platform getItemDynamicData \
    --itemId 'NOgiy9D7Q2COYUNw' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 130 'GetItemDynamicData' test.out

#- 131 EnableItem
samples/cli/sample-apps Platform enableItem \
    --itemId 'CoOETEGmBGHS4sfE' \
    --namespace $AB_NAMESPACE \
    --storeId 'VbiHf8S0rS9vj8aL' \
    > test.out 2>&1
eval_tap $? 131 'EnableItem' test.out

#- 132 FeatureItem
samples/cli/sample-apps Platform featureItem \
    --feature '03rr1N7yDA07nYrG' \
    --itemId '9bLGdU0Fe8wdUNcV' \
    --namespace $AB_NAMESPACE \
    --storeId 'T1IyDASyrdWFRNNs' \
    > test.out 2>&1
eval_tap $? 132 'FeatureItem' test.out

#- 133 DefeatureItem
samples/cli/sample-apps Platform defeatureItem \
    --feature 'wDKXJlVPd8BOFL62' \
    --itemId 'hL7S2vEFTJwDpIvy' \
    --namespace $AB_NAMESPACE \
    --storeId 'ayY50tihHvW8zkYU' \
    > test.out 2>&1
eval_tap $? 133 'DefeatureItem' test.out

#- 134 GetLocaleItem
samples/cli/sample-apps Platform getLocaleItem \
    --itemId 'MdL1lyMzBbPgXkmn' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --language 'GegZJPIyP9YpFNrV' \
    --populateBundle 'true' \
    --region 'qjD5k2SPoWxLAIss' \
    --storeId 'XKxm0gSnNDLnb1I2' \
    > test.out 2>&1
eval_tap $? 134 'GetLocaleItem' test.out

#- 135 UpdateItemPurchaseCondition
samples/cli/sample-apps Platform updateItemPurchaseCondition \
    --itemId 'vGM8qtkWAvoqAZfZ' \
    --namespace $AB_NAMESPACE \
    --storeId 'GGZSgsqShMEqSnsN' \
    --body '{"purchaseCondition": {"conditionGroups": [{"operator": "and", "predicates": [{"anyOf": 27, "code": "EURvRby5Ft1GJvzd", "comparison": "includes", "name": "haIYl4WLnJz3ndqV", "predicateType": "SeasonTierPredicate", "value": "hgU8CRJh5E0OUPcf", "values": ["i4qjqhMkZLPvrsuB", "Yj0DYbXUAykBLuPn", "MZOXmiVdPYCwhHc8"]}, {"anyOf": 93, "code": "HpnqjSwgjoSno0DD", "comparison": "isGreaterThanOrEqual", "name": "Rzmdj6vTgEtw46ws", "predicateType": "SeasonTierPredicate", "value": "FPajAoAWFKZikHMr", "values": ["bWTQRZ3GvULk60YD", "p2llLqH0GeLneSOa", "vCXLtfRTFh7RRGf7"]}, {"anyOf": 41, "code": "GZkadvwXHIxzZoUz", "comparison": "excludes", "name": "amXCh1BJasvhjgp8", "predicateType": "EntitlementPredicate", "value": "YwwgtTq6jiTUrCSQ", "values": ["8K84wg11HyWRgJb0", "kq4ZTNSd2onjsiU4", "FpUTFwPA7xTG0Mzm"]}]}, {"operator": "and", "predicates": [{"anyOf": 18, "code": "VIm6SsLiNU9gdMcj", "comparison": "isGreaterThan", "name": "Op6pd42T2nVaLyru", "predicateType": "StatisticCodePredicate", "value": "kGWqLS9DysLNYMME", "values": ["cPJbFLrJZv0sogVB", "VUs1e2cVCmRXnHao", "R7nTNmN5CmpCtKjA"]}, {"anyOf": 91, "code": "y86yVeGsIWml4zQH", "comparison": "isNot", "name": "PfndZ5Y134iUQSr4", "predicateType": "SeasonTierPredicate", "value": "5ViM2v4cHg406M4u", "values": ["60ARF28P0p1QFLRh", "WyZCzUSJkWGXNlaJ", "9HqG2Ql07RJaq3zB"]}, {"anyOf": 3, "code": "1iF4OtvseXqFOsUO", "comparison": "excludes", "name": "r8XnfQXeI2OSVTpR", "predicateType": "SeasonTierPredicate", "value": "x6hNsY0awtlAvWgz", "values": ["D6R09cQdA5BivD1Q", "zDJ8hYGPcPLetkv4", "m23wW0rYT32hNu8J"]}]}, {"operator": "and", "predicates": [{"anyOf": 42, "code": "E10hbGwgmdSnVyqc", "comparison": "is", "name": "liGDQlq5F9RBbI9e", "predicateType": "SeasonTierPredicate", "value": "fWG3XOwnqjyurN3v", "values": ["jqrLmA6JNUc8qLSy", "m5MCdyXhHH7yAHqU", "8aEzbY5p3ydS3ucN"]}, {"anyOf": 76, "code": "wwv2gavuSG379atl", "comparison": "isNot", "name": "6VDO2mVjdU7UAblD", "predicateType": "SeasonPassPredicate", "value": "wSNYsHgvfc56nH7x", "values": ["T2Eie39Sc88T86e2", "KBmvyxtR0xGzLOqM", "85sAzqPJJOPVzwQ7"]}, {"anyOf": 65, "code": "Ym2x3qUvD7KU6Hhw", "comparison": "is", "name": "1QAqeQfy39e3udjt", "predicateType": "EntitlementPredicate", "value": "he0VYFi85voWtAIe", "values": ["FJ5v0HHgyJBi2rez", "3T520MqPsARCTuTJ", "GsbdZi0nW9fUJada"]}]}]}}' \
    > test.out 2>&1
eval_tap $? 135 'UpdateItemPurchaseCondition' test.out

#- 136 ReturnItem
samples/cli/sample-apps Platform returnItem \
    --itemId 'y0H2QMhG3nDWimc8' \
    --namespace $AB_NAMESPACE \
    --body '{"orderNo": "nvBGkesBXkkyvzL9"}' \
    > test.out 2>&1
eval_tap $? 136 'ReturnItem' test.out

#- 137 QueryKeyGroups
samples/cli/sample-apps Platform queryKeyGroups \
    --namespace $AB_NAMESPACE \
    --limit '23' \
    --name 'aZgnHGmS62rRs6uQ' \
    --offset '25' \
    --tag 'BEWKxfQDBdYXNPva' \
    > test.out 2>&1
eval_tap $? 137 'QueryKeyGroups' test.out

#- 138 CreateKeyGroup
samples/cli/sample-apps Platform createKeyGroup \
    --namespace $AB_NAMESPACE \
    --body '{"description": "e6wwZfbF6Gozvpw7", "name": "2KEr8PIalxHnYfTA", "status": "INACTIVE", "tags": ["HVO0cm9KiJ2l0UwS", "W5AooBLIOenFzHwi", "AB2SG2lTRsEmOGgg"]}' \
    > test.out 2>&1
eval_tap $? 138 'CreateKeyGroup' test.out

#- 139 GetKeyGroupByBoothName
eval_tap 0 139 'GetKeyGroupByBoothName # SKIP deprecated' test.out

#- 140 GetKeyGroup
samples/cli/sample-apps Platform getKeyGroup \
    --keyGroupId '6oLfqOx3lzLnkK6V' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 140 'GetKeyGroup' test.out

#- 141 UpdateKeyGroup
samples/cli/sample-apps Platform updateKeyGroup \
    --keyGroupId '2JYN3kvlaMsTMpGl' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "DCP2tLwgydEwVfKQ", "name": "F6awvrCwShWokO8Z", "status": "ACTIVE", "tags": ["Ipn8CkTQ8H8t059G", "0uAYQKGzzQo9dRsI", "o0f02VpceHjZiFL5"]}' \
    > test.out 2>&1
eval_tap $? 141 'UpdateKeyGroup' test.out

#- 142 GetKeyGroupDynamic
samples/cli/sample-apps Platform getKeyGroupDynamic \
    --keyGroupId 'NmqQbSGFO0o4Z6pg' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 142 'GetKeyGroupDynamic' test.out

#- 143 ListKeys
samples/cli/sample-apps Platform listKeys \
    --keyGroupId '8OoPyW5mX1ZPuYlm' \
    --namespace $AB_NAMESPACE \
    --limit '0' \
    --offset '0' \
    --status 'ACQUIRED' \
    > test.out 2>&1
eval_tap $? 143 'ListKeys' test.out

#- 144 UploadKeys
samples/cli/sample-apps Platform uploadKeys \
    --keyGroupId 'dSUxNRaZ4BdnmgaR' \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 144 'UploadKeys' test.out

#- 145 QueryOrders
samples/cli/sample-apps Platform queryOrders \
    --namespace $AB_NAMESPACE \
    --endTime 'A0whFzvyPFyakwy2' \
    --limit '50' \
    --offset '15' \
    --orderNos '["I0jgG35RW89qC9f6", "e57RSlwMd9GIy9mj", "GTAbZkGa5jRJvvun"]' \
    --sortBy 'PQygaI5YDRspVdJs' \
    --startTime 'YVB3HFC0bBqQRSve' \
    --status 'CHARGEBACK_REVERSED' \
    --withTotal 'false' \
    > test.out 2>&1
eval_tap $? 145 'QueryOrders' test.out

#- 146 GetOrderStatistics
samples/cli/sample-apps Platform getOrderStatistics \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 146 'GetOrderStatistics' test.out

#- 147 GetOrder
samples/cli/sample-apps Platform getOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'dhugcYrSFMyPdw4L' \
    > test.out 2>&1
eval_tap $? 147 'GetOrder' test.out

#- 148 RefundOrder
samples/cli/sample-apps Platform refundOrder \
    --namespace $AB_NAMESPACE \
    --orderNo '0FKv7LV35I7VRbxG' \
    --body '{"description": "cOGiwi5TBkrmQGE6"}' \
    > test.out 2>&1
eval_tap $? 148 'RefundOrder' test.out

#- 149 GetPaymentCallbackConfig
samples/cli/sample-apps Platform getPaymentCallbackConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 149 'GetPaymentCallbackConfig' test.out

#- 150 UpdatePaymentCallbackConfig
samples/cli/sample-apps Platform updatePaymentCallbackConfig \
    --namespace $AB_NAMESPACE \
    --body '{"dryRun": true, "notifyUrl": "PetHhdkp8oD0xGPG", "privateKey": "MVsnhJOgI5cwYozx"}' \
    > test.out 2>&1
eval_tap $? 150 'UpdatePaymentCallbackConfig' test.out

#- 151 GetPaymentMerchantConfig
samples/cli/sample-apps Platform getPaymentMerchantConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 151 'GetPaymentMerchantConfig' test.out

#- 152 UpdatePaymentDomainWhitelistConfig
samples/cli/sample-apps Platform updatePaymentDomainWhitelistConfig \
    --namespace $AB_NAMESPACE \
    --body '{"domains": ["lpNXoECQ0qXgw08K", "9rvGfMVLOQ1LaYEh", "vYsXFMMOqsoVHfTQ"]}' \
    > test.out 2>&1
eval_tap $? 152 'UpdatePaymentDomainWhitelistConfig' test.out

#- 153 QueryPaymentNotifications
samples/cli/sample-apps Platform queryPaymentNotifications \
    --namespace $AB_NAMESPACE \
    --endDate 'sJRkrFoQP2OoGDTT' \
    --externalId 'dlioTxTt99aU4kL1' \
    --limit '61' \
    --notificationSource 'WALLET' \
    --notificationType 'rwXQga6UqthTNvlY' \
    --offset '15' \
    --paymentOrderNo 'YVsZZDvBBkvFXPHV' \
    --startDate 'cd0pgJ181zzhjg9f' \
    --status 'WARN' \
    > test.out 2>&1
eval_tap $? 153 'QueryPaymentNotifications' test.out

#- 154 QueryPaymentOrders
samples/cli/sample-apps Platform queryPaymentOrders \
    --namespace $AB_NAMESPACE \
    --channel 'EXTERNAL' \
    --extTxId 'QQtLZ7lUWsf7fS0Q' \
    --limit '51' \
    --offset '23' \
    --status 'DELETED' \
    > test.out 2>&1
eval_tap $? 154 'QueryPaymentOrders' test.out

#- 155 CreatePaymentOrderByDedicated
samples/cli/sample-apps Platform createPaymentOrderByDedicated \
    --namespace $AB_NAMESPACE \
    --body '{"currencyCode": "fPS0DrxI9n54yj6D", "currencyNamespace": "1IHbXeFLDHxPbJSl", "customParameters": {"9CNfpLB6nMnhjMDH": {}, "yUQfObwTpG8067Y9": {}, "pWzQN6s9A8dr9h0w": {}}, "description": "nIyGcpubDLY8GMCk", "extOrderNo": "gywPPSVsox1EDTRQ", "extUserId": "j7o019iVnv3YjoQ4", "itemType": "COINS", "language": "HbUA", "metadata": {"M0BhXH8gXRV37wHA": "oy4BNEMtQLDOc3Mm", "FYStaRHtc5hQEdAK": "SYmsqNl7baI4iCSy", "5sJ8GsvXc3pUUa6U": "iklzgSXRvD8qqm47"}, "notifyUrl": "r9kCP4fRW61azQep", "omitNotification": false, "platform": "YulXJb7NLBvFIz2k", "price": 63, "recurringPaymentOrderNo": "wMm4gwyZ62kJv4Vb", "region": "CcbfTkoFZ4I2YW4i", "returnUrl": "UFTJ4EUF0go8SlXB", "sandbox": false, "sku": "aYMl53wMXS05Kyjk", "subscriptionId": "2SNQcquKif1QAbOX", "targetNamespace": "8HDTgRiIxDXgMz09", "targetUserId": "A7MUMwVKyjKiIFHV", "title": "gKmerzaFTeQYAb3m"}' \
    > test.out 2>&1
eval_tap $? 155 'CreatePaymentOrderByDedicated' test.out

#- 156 ListExtOrderNoByExtTxId
samples/cli/sample-apps Platform listExtOrderNoByExtTxId \
    --namespace $AB_NAMESPACE \
    --extTxId '4mSfsaFbhbd0eHJW' \
    > test.out 2>&1
eval_tap $? 156 'ListExtOrderNoByExtTxId' test.out

#- 157 GetPaymentOrder
samples/cli/sample-apps Platform getPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'OTSyl1y7V648iiTJ' \
    > test.out 2>&1
eval_tap $? 157 'GetPaymentOrder' test.out

#- 158 ChargePaymentOrder
samples/cli/sample-apps Platform chargePaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'cyhA9kplw2CpxtPP' \
    --body '{"extTxId": "fzkBHPj3ZxeFFkpe", "paymentMethod": "iPvJTrXIVO1yzuWf", "paymentProvider": "PAYPAL"}' \
    > test.out 2>&1
eval_tap $? 158 'ChargePaymentOrder' test.out

#- 159 RefundPaymentOrderByDedicated
samples/cli/sample-apps Platform refundPaymentOrderByDedicated \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'NlPfu7CAO0MPKQ0E' \
    --body '{"description": "zUjDuS9SKHC3201H"}' \
    > test.out 2>&1
eval_tap $? 159 'RefundPaymentOrderByDedicated' test.out

#- 160 SimulatePaymentOrderNotification
samples/cli/sample-apps Platform simulatePaymentOrderNotification \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'y0rVKxapZSbXJ9oT' \
    --body '{"amount": 14, "currencyCode": "LFeIFT8PZwMmub9F", "notifyType": "REFUND", "paymentProvider": "WALLET", "salesTax": 80, "vat": 9}' \
    > test.out 2>&1
eval_tap $? 160 'SimulatePaymentOrderNotification' test.out

#- 161 GetPaymentOrderChargeStatus
samples/cli/sample-apps Platform getPaymentOrderChargeStatus \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'jZsh9oZFnL2bbKeo' \
    > test.out 2>&1
eval_tap $? 161 'GetPaymentOrderChargeStatus' test.out

#- 162 GetPsnEntitlementOwnership
samples/cli/sample-apps Platform getPsnEntitlementOwnership \
    --entitlementLabel '6tS3XUuKWNYEYCzO' \
    --namespace $AB_NAMESPACE \
    --body '{"accessToken": "y1g6xfFgjQFyb2GE", "serviceLabel": 19}' \
    > test.out 2>&1
eval_tap $? 162 'GetPsnEntitlementOwnership' test.out

#- 163 GetXboxEntitlementOwnership
samples/cli/sample-apps Platform getXboxEntitlementOwnership \
    --namespace $AB_NAMESPACE \
    --productSku '300MLM9S1h51oxeH' \
    --body '{"delegationToken": "YgGN6etceoWO8YtX", "sandboxId": "w3gDZK05h7aT3j3p"}' \
    > test.out 2>&1
eval_tap $? 163 'GetXboxEntitlementOwnership' test.out

#- 164 GetPlatformEntitlementConfig
samples/cli/sample-apps Platform getPlatformEntitlementConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Oculus' \
    > test.out 2>&1
eval_tap $? 164 'GetPlatformEntitlementConfig' test.out

#- 165 UpdatePlatformEntitlementConfig
samples/cli/sample-apps Platform updatePlatformEntitlementConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Epic' \
    --body '{"allowedPlatformOrigins": ["Epic", "Epic", "Nintendo"]}' \
    > test.out 2>&1
eval_tap $? 165 'UpdatePlatformEntitlementConfig' test.out

#- 166 GetPlatformWalletConfig
samples/cli/sample-apps Platform getPlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Nintendo' \
    > test.out 2>&1
eval_tap $? 166 'GetPlatformWalletConfig' test.out

#- 167 UpdatePlatformWalletConfig
samples/cli/sample-apps Platform updatePlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'IOS' \
    --body '{"allowedBalanceOrigins": ["IOS", "Xbox", "Nintendo"]}' \
    > test.out 2>&1
eval_tap $? 167 'UpdatePlatformWalletConfig' test.out

#- 168 ResetPlatformWalletConfig
samples/cli/sample-apps Platform resetPlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Other' \
    > test.out 2>&1
eval_tap $? 168 'ResetPlatformWalletConfig' test.out

#- 169 GetRevocationConfig
samples/cli/sample-apps Platform getRevocationConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 169 'GetRevocationConfig' test.out

#- 170 UpdateRevocationConfig
samples/cli/sample-apps Platform updateRevocationConfig \
    --namespace $AB_NAMESPACE \
    --body '{"entitlement": {"consumable": {"enabled": true, "strategy": "CUSTOM"}, "durable": {"enabled": true, "strategy": "REVOKE_OR_REPORT"}}, "wallet": {"enabled": true, "strategy": "REVOKE_OR_REPORT"}}' \
    > test.out 2>&1
eval_tap $? 170 'UpdateRevocationConfig' test.out

#- 171 DeleteRevocationConfig
samples/cli/sample-apps Platform deleteRevocationConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 171 'DeleteRevocationConfig' test.out

#- 172 QueryRevocationHistories
samples/cli/sample-apps Platform queryRevocationHistories \
    --namespace $AB_NAMESPACE \
    --endTime 'WNFZx6zz1hQsTBJB' \
    --limit '53' \
    --offset '37' \
    --source 'OTHER' \
    --startTime 'zh1zAlVnQWDEgYlF' \
    --status 'FAIL' \
    --transactionId 'fo4qX64LfKfruBaB' \
    --userId 'ORvKQY2CLSfaPztv' \
    > test.out 2>&1
eval_tap $? 172 'QueryRevocationHistories' test.out

#- 173 GetRevocationPluginConfig
samples/cli/sample-apps Platform getRevocationPluginConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 173 'GetRevocationPluginConfig' test.out

#- 174 UpdateRevocationPluginConfig
samples/cli/sample-apps Platform updateRevocationPluginConfig \
    --namespace $AB_NAMESPACE \
    --body '{"appConfig": {"appName": "6kS6MZF3GjEK0Wq0"}, "customConfig": {"connectionType": "INSECURE", "grpcServerAddress": "DuuoG1PUZkt9zLkm"}, "extendType": "CUSTOM"}' \
    > test.out 2>&1
eval_tap $? 174 'UpdateRevocationPluginConfig' test.out

#- 175 DeleteRevocationPluginConfig
samples/cli/sample-apps Platform deleteRevocationPluginConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 175 'DeleteRevocationPluginConfig' test.out

#- 176 UploadRevocationPluginConfigCert
samples/cli/sample-apps Platform uploadRevocationPluginConfigCert \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 176 'UploadRevocationPluginConfigCert' test.out

#- 177 CreateReward
samples/cli/sample-apps Platform createReward \
    --namespace $AB_NAMESPACE \
    --body '{"description": "IHb9Gv0DfFBSaYyk", "eventTopic": "u4c0b294CGTWyczT", "maxAwarded": 75, "maxAwardedPerUser": 12, "namespaceExpression": "vwkBFcf47XCKCbFf", "rewardCode": "CLU9s942zYOJHlrw", "rewardConditions": [{"condition": "IBvtyaTuIC88yk2p", "conditionName": "D2FpNYoLXkplU3rr", "eventName": "unyiCGALu908ZaFu", "rewardItems": [{"duration": 45, "endDate": "1979-01-21T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "gRQrfa02bNdoh12B", "quantity": 91, "sku": "mkvn2jPID3e3yHzj"}, {"duration": 60, "endDate": "1977-08-10T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "rfi9T13h6wpwlLTi", "quantity": 56, "sku": "qWZgCxAUvKpVb2yq"}, {"duration": 22, "endDate": "1981-11-05T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "hmms20nUpNTpoQFm", "quantity": 75, "sku": "aMeaIhWfvNv9ZJTI"}]}, {"condition": "G5LnItjPAfcvxTm7", "conditionName": "qRDea6Ud1gNNwzaC", "eventName": "G18WJvtZcbMHLkIH", "rewardItems": [{"duration": 9, "endDate": "1975-11-22T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "3NsfAC0tG5kq5uGU", "quantity": 42, "sku": "PU8dlolFZoWAdDIG"}, {"duration": 25, "endDate": "1998-07-07T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "S2oODrvH9P4hqB8u", "quantity": 76, "sku": "PLmJ69PBePLT8F9V"}, {"duration": 25, "endDate": "1986-12-05T00:00:00Z", "identityType": "ITEM_ID", "itemId": "f43qyEU0ZNsu0zIJ", "quantity": 76, "sku": "6McWCSpZNalWotEu"}]}, {"condition": "X5QI0c6VU11TcMB8", "conditionName": "EvrlvzM5gRNoQcG3", "eventName": "TKUoflga5dmyfhdO", "rewardItems": [{"duration": 49, "endDate": "1986-05-01T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "jsiVWQx5ZkAnf9yE", "quantity": 6, "sku": "wuYkip9nJKbvU9Ad"}, {"duration": 17, "endDate": "1974-05-20T00:00:00Z", "identityType": "ITEM_ID", "itemId": "BfcLcR7aUAvwVTyo", "quantity": 4, "sku": "MWu0ANXmgm5qe9ty"}, {"duration": 10, "endDate": "1988-07-15T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "0utnTQMiy4NPTNv2", "quantity": 36, "sku": "3OUHkavvhiTOxp7e"}]}], "userIdExpression": "9w8Ehwc8xq7Lar7d"}' \
    > test.out 2>&1
eval_tap $? 177 'CreateReward' test.out

#- 178 QueryRewards
samples/cli/sample-apps Platform queryRewards \
    --namespace $AB_NAMESPACE \
    --eventTopic 'roGn4yZiLcROBhm5' \
    --limit '94' \
    --offset '60' \
    --sortBy '["rewardCode:desc", "namespace:asc"]' \
    > test.out 2>&1
eval_tap $? 178 'QueryRewards' test.out

#- 179 ExportRewards
samples/cli/sample-apps Platform exportRewards \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 179 'ExportRewards' test.out

#- 180 ImportRewards
samples/cli/sample-apps Platform importRewards \
    --namespace $AB_NAMESPACE \
    --replaceExisting 'false' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 180 'ImportRewards' test.out

#- 181 GetReward
samples/cli/sample-apps Platform getReward \
    --namespace $AB_NAMESPACE \
    --rewardId 'Sq8YcJvRa7tbNypr' \
    > test.out 2>&1
eval_tap $? 181 'GetReward' test.out

#- 182 UpdateReward
samples/cli/sample-apps Platform updateReward \
    --namespace $AB_NAMESPACE \
    --rewardId 'MrPhihQVMnNX5e4k' \
    --body '{"description": "TDwCZDt8JP38PgZ9", "eventTopic": "nGjKWy2nfvpxoet9", "maxAwarded": 75, "maxAwardedPerUser": 79, "namespaceExpression": "fFSPNi6ZYrTkuhmS", "rewardCode": "lpg0U1T6zFyoEiyU", "rewardConditions": [{"condition": "bfGUZPBswzReBlZN", "conditionName": "LxjEOCYCqVIPCCpy", "eventName": "AUz7WTBdLjO8a15s", "rewardItems": [{"duration": 92, "endDate": "1982-08-25T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "W5RVlgPSPAXIR4Zj", "quantity": 65, "sku": "UprR51Jhp247Ak8p"}, {"duration": 85, "endDate": "1987-01-20T00:00:00Z", "identityType": "ITEM_ID", "itemId": "4gmjrgUxcvgzLRe2", "quantity": 31, "sku": "S76ZPlWBXjWp2wGN"}, {"duration": 8, "endDate": "1992-07-16T00:00:00Z", "identityType": "ITEM_ID", "itemId": "SWG8ALsVqQDDVcRp", "quantity": 17, "sku": "t0bxVc9PKUcilB7I"}]}, {"condition": "39W8eOcGuOJ8bwJ9", "conditionName": "lGMigRydRGOP97lt", "eventName": "JwDHCc4c0H176mxz", "rewardItems": [{"duration": 31, "endDate": "1996-07-06T00:00:00Z", "identityType": "ITEM_ID", "itemId": "4YuYqj53TAoo1XyC", "quantity": 8, "sku": "EbimuoQONMut2iYv"}, {"duration": 58, "endDate": "1973-05-03T00:00:00Z", "identityType": "ITEM_ID", "itemId": "97Ll0vPZRZF0O8v2", "quantity": 68, "sku": "mytmgDiNKtyLLiqk"}, {"duration": 78, "endDate": "1991-08-28T00:00:00Z", "identityType": "ITEM_ID", "itemId": "bzhZim9Kwacstv5I", "quantity": 40, "sku": "U9z4FceeojG7xLlb"}]}, {"condition": "MYGaxQPU2W5oR8Of", "conditionName": "fwtld26jkyp5fIpm", "eventName": "M6jBH2KK2Et6sTJ7", "rewardItems": [{"duration": 93, "endDate": "1974-08-24T00:00:00Z", "identityType": "ITEM_ID", "itemId": "uI8XeiOhRBxeqP7i", "quantity": 38, "sku": "O3G7RCbMceqHNwHG"}, {"duration": 98, "endDate": "1979-07-22T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "6rljEHxw6D6KZS7X", "quantity": 45, "sku": "48VbSEokhD3I8pb4"}, {"duration": 98, "endDate": "1979-06-29T00:00:00Z", "identityType": "ITEM_ID", "itemId": "LJjiuhl8C9PS0XeH", "quantity": 98, "sku": "2xQsGlaYdTx8aZGF"}]}], "userIdExpression": "CVcnuHl7oCQntTqM"}' \
    > test.out 2>&1
eval_tap $? 182 'UpdateReward' test.out

#- 183 DeleteReward
samples/cli/sample-apps Platform deleteReward \
    --namespace $AB_NAMESPACE \
    --rewardId 'ekpJg3jdDhaqesig' \
    > test.out 2>&1
eval_tap $? 183 'DeleteReward' test.out

#- 184 CheckEventCondition
samples/cli/sample-apps Platform checkEventCondition \
    --namespace $AB_NAMESPACE \
    --rewardId 'wtWdS7HmuohuVRbZ' \
    --body '{"payload": {"2jXHWMXlfSUmnglr": {}, "LDWiZ6CvWUvhiR8e": {}, "8L8t7mDaPYfFCn9k": {}}}' \
    > test.out 2>&1
eval_tap $? 184 'CheckEventCondition' test.out

#- 185 DeleteRewardConditionRecord
samples/cli/sample-apps Platform deleteRewardConditionRecord \
    --namespace $AB_NAMESPACE \
    --rewardId 'PYffuzHmgIq1s7Ok' \
    --body '{"conditionName": "YLiS0YxCHRijEAFN", "userId": "Axltnu4n0vzcls1j"}' \
    > test.out 2>&1
eval_tap $? 185 'DeleteRewardConditionRecord' test.out

#- 186 QuerySections
samples/cli/sample-apps Platform querySections \
    --namespace $AB_NAMESPACE \
    --end 'lk9CHsIRqqAZZbnH' \
    --limit '59' \
    --offset '85' \
    --start 'agepzwM6l0lDJZoT' \
    --storeId 'p6ToALziyouSGdte' \
    --viewId 'D8oen9uZirMLOmUX' \
    > test.out 2>&1
eval_tap $? 186 'QuerySections' test.out

#- 187 CreateSection
samples/cli/sample-apps Platform createSection \
    --namespace $AB_NAMESPACE \
    --storeId 'mjK6m5fXWirySq3p' \
    --body '{"active": false, "displayOrder": 84, "endDate": "1990-03-08T00:00:00Z", "ext": {"Dppaeeg83a6h8rPP": {}, "ZEWGTiLBhmLw9wGY": {}, "6pQAtPzPK4djjyzR": {}}, "fixedPeriodRotationConfig": {"backfillType": "NONE", "duration": 55, "itemCount": 63, "rule": "SEQUENCE"}, "items": [{"id": "E0Y5DEBBWIL06BDs", "sku": "lZFZ1WtYMcIHAZV0"}, {"id": "pYMQ4bz9pWrTcuVg", "sku": "7DxPJlCC3VNJBlB4"}, {"id": "zuzsZtrBdhjNiH4p", "sku": "kACf7soPSij6iy3S"}], "localizations": {"wXB1aKNNbfZADVwt": {"description": "CKBzdv8iseJUbBzG", "localExt": {"Fivi6VwbIsQHZJPj": {}, "QaswE7y1xqmtJ9j0": {}, "eCzdwokzrO4O29u5": {}}, "longDescription": "ebFFYHsUKQYtNe53", "title": "WOOHfm23NEpsdqA7"}, "eWOWRwNF2PWEJAmy": {"description": "3aHmb9wtmmrkLeQe", "localExt": {"ks4sQ59JAhKF8ZEK": {}, "3sYZaSYxSKAeuVjY": {}, "a20bUMDC96xl28EO": {}}, "longDescription": "OW66KxJ3ts1Xp0b1", "title": "OAtAEPnA1Iqsr3Lp"}, "Zlvp0SDncYBfhVdD": {"description": "m4OrqJvwo3idSqzq", "localExt": {"gNKgyuvY9uVezXe3": {}, "1MVy9eMyyHRhAlbA": {}, "SUrUBW0W32mrD6zg": {}}, "longDescription": "5tYwFBbbVjtNLgJk", "title": "bntNqHnRlCqx2iwU"}}, "name": "jx2saEOKyk4xZln9", "rotationType": "CUSTOM", "startDate": "1989-01-09T00:00:00Z", "viewId": "tte2yQQ2mlW2cikz"}' \
    > test.out 2>&1
eval_tap $? 187 'CreateSection' test.out

#- 188 PurgeExpiredSection
samples/cli/sample-apps Platform purgeExpiredSection \
    --namespace $AB_NAMESPACE \
    --storeId '2XvtMRBgALwgxPwe' \
    > test.out 2>&1
eval_tap $? 188 'PurgeExpiredSection' test.out

#- 189 GetSection
samples/cli/sample-apps Platform getSection \
    --namespace $AB_NAMESPACE \
    --sectionId 'xIZy03jY6eUZ37P1' \
    --storeId 'sQkq8siF8Nq2Eiho' \
    > test.out 2>&1
eval_tap $? 189 'GetSection' test.out

#- 190 UpdateSection
samples/cli/sample-apps Platform updateSection \
    --namespace $AB_NAMESPACE \
    --sectionId 'CXGiFT1SAxXEQ6Xm' \
    --storeId 'BGpLeuM6tAYIZOM4' \
    --body '{"active": true, "displayOrder": 21, "endDate": "1997-05-07T00:00:00Z", "ext": {"7gfFzVmHlhs3NFBl": {}, "x0n2rK4gg1KpJ2qd": {}, "iAQmi1WjpEK9BIqD": {}}, "fixedPeriodRotationConfig": {"backfillType": "NONE", "duration": 65, "itemCount": 17, "rule": "SEQUENCE"}, "items": [{"id": "d7OOiEOQd8VmmZ5p", "sku": "UYCAqx3OuqI7bZl6"}, {"id": "vQZwdhhG9aLR44I7", "sku": "JeB8ghbI0QjbDfRh"}, {"id": "Pb9VT7Le7EuQRkMT", "sku": "qgMpDp8iMqNYDsv9"}], "localizations": {"GthHPGsYVFBT9RHm": {"description": "udnvwwwDyRoYaaXF", "localExt": {"ORmKNteoLG2z1Hhn": {}, "NrlUdj60kXT7cF4X": {}, "0qcjgLZcW96AqU89": {}}, "longDescription": "p6eS14xFh1KwsSeJ", "title": "OSpnP4JihB3OCwZP"}, "UKsXffcic68iUbgq": {"description": "jrw1qEtar2wSYaEd", "localExt": {"uCCXuJCOzbfjOWKS": {}, "UCDuOjngOdfsxa09": {}, "hpQTltEJbMdv1QvR": {}}, "longDescription": "yMdjBfXtFt9kxU5s", "title": "lX3PMfpsv6dpfpMD"}, "Y7ltzR94p4nTxIF9": {"description": "v4zY2x2TIWuryZVT", "localExt": {"EkRM9sE5O47Q3HhH": {}, "pirNlUak1W19Mcm4": {}, "epugDQX9tVN3GzT9": {}}, "longDescription": "E61ZzG52Fb9Jh5kK", "title": "ccdyL5WgOjuC0qXv"}}, "name": "r0wFw7JxdChsINZC", "rotationType": "FIXED_PERIOD", "startDate": "1981-07-28T00:00:00Z", "viewId": "UHlzDlUagoheSfJb"}' \
    > test.out 2>&1
eval_tap $? 190 'UpdateSection' test.out

#- 191 DeleteSection
samples/cli/sample-apps Platform deleteSection \
    --namespace $AB_NAMESPACE \
    --sectionId 'ZF38RqXSEQxjUDWl' \
    --storeId 'o38btA4T4DJD86cz' \
    > test.out 2>&1
eval_tap $? 191 'DeleteSection' test.out

#- 192 ListStores
samples/cli/sample-apps Platform listStores \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 192 'ListStores' test.out

#- 193 CreateStore
samples/cli/sample-apps Platform createStore \
    --namespace $AB_NAMESPACE \
    --body '{"defaultLanguage": "WK15WW5Dnw92L9S9", "defaultRegion": "BdvctLuIvSe0uI1T", "description": "BhbOa0WwLvlyVplm", "supportedLanguages": ["OKYdoVvQNiyCV879", "Ny4f4vWGDeCWhg9M", "YpXHqLO1mWg9Y05U"], "supportedRegions": ["jGoqy835fDKGuqOB", "l6WUz3iwR5Hu7Irs", "QXCWaEpn0130BHx9"], "title": "bNpAMc5aWhg05cM7"}' \
    > test.out 2>&1
eval_tap $? 193 'CreateStore' test.out

#- 194 GetCatalogDefinition
samples/cli/sample-apps Platform getCatalogDefinition \
    --namespace $AB_NAMESPACE \
    --catalogType 'APP' \
    > test.out 2>&1
eval_tap $? 194 'GetCatalogDefinition' test.out

#- 195 DownloadCSVTemplates
samples/cli/sample-apps Platform downloadCSVTemplates \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 195 'DownloadCSVTemplates' test.out

#- 196 ExportStoreByCSV
samples/cli/sample-apps Platform exportStoreByCSV \
    --namespace $AB_NAMESPACE \
    --body '{"catalogType": "ITEM", "fieldsToBeIncluded": ["GYCOmOgb4Mbzzxwr", "7OGV7J04pQhSvjql", "CY0bvKJNhRTej0HS"], "idsToBeExported": ["HwsS8allSzHmpNrj", "t9IQXwxnFzo2OXqa", "MLN0XvsyGNaGkwL1"], "storeId": "PXGO2n8nD9pmPuUZ"}' \
    > test.out 2>&1
eval_tap $? 196 'ExportStoreByCSV' test.out

#- 197 ImportStore
eval_tap 0 197 'ImportStore # SKIP deprecated' test.out

#- 198 GetPublishedStore
samples/cli/sample-apps Platform getPublishedStore \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 198 'GetPublishedStore' test.out

#- 199 DeletePublishedStore
samples/cli/sample-apps Platform deletePublishedStore \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 199 'DeletePublishedStore' test.out

#- 200 GetPublishedStoreBackup
samples/cli/sample-apps Platform getPublishedStoreBackup \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 200 'GetPublishedStoreBackup' test.out

#- 201 RollbackPublishedStore
samples/cli/sample-apps Platform rollbackPublishedStore \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 201 'RollbackPublishedStore' test.out

#- 202 GetStore
samples/cli/sample-apps Platform getStore \
    --namespace $AB_NAMESPACE \
    --storeId 'YmJiXeZXwSAW5VGp' \
    > test.out 2>&1
eval_tap $? 202 'GetStore' test.out

#- 203 UpdateStore
samples/cli/sample-apps Platform updateStore \
    --namespace $AB_NAMESPACE \
    --storeId 'Bnk0naH3BAC8nAMP' \
    --body '{"defaultLanguage": "HtVITe3e7wKUYGt8", "defaultRegion": "zV6Jsb5WW4gqdKEd", "description": "PbtizrZInqeCPOXN", "supportedLanguages": ["Z8uwcIMDLosKP0FR", "1rgFWQwoPJ8ORwSL", "bWpS6pG01Kx02uGG"], "supportedRegions": ["ePEB0z8AXPZUBb9Q", "fSbU4wI8V6FzUxlL", "JH25vVHbx4rQOABa"], "title": "9ug2cLDBcbNRyv0g"}' \
    > test.out 2>&1
eval_tap $? 203 'UpdateStore' test.out

#- 204 DeleteStore
samples/cli/sample-apps Platform deleteStore \
    --namespace $AB_NAMESPACE \
    --storeId 'UY4n7DgcaAgX7Ste' \
    > test.out 2>&1
eval_tap $? 204 'DeleteStore' test.out

#- 205 QueryChanges
samples/cli/sample-apps Platform queryChanges \
    --namespace $AB_NAMESPACE \
    --storeId 'CbAe1Fez5u9jQ7RL' \
    --action 'UPDATE' \
    --itemSku '9dFtTHJmUMueWKHf' \
    --itemType 'MEDIA' \
    --limit '49' \
    --offset '61' \
    --selected 'true' \
    --sortBy '["updatedAt:asc", "updatedAt:desc"]' \
    --status 'UNPUBLISHED' \
    --type 'VIEW' \
    --updatedAtEnd 'qzR9JMeVXcBaWbYk' \
    --updatedAtStart 'cskonIeBLv8QBKsZ' \
    --withTotal 'false' \
    > test.out 2>&1
eval_tap $? 205 'QueryChanges' test.out

#- 206 PublishAll
samples/cli/sample-apps Platform publishAll \
    --namespace $AB_NAMESPACE \
    --storeId 'BWO2gAPyfVxROYj9' \
    > test.out 2>&1
eval_tap $? 206 'PublishAll' test.out

#- 207 PublishSelected
samples/cli/sample-apps Platform publishSelected \
    --namespace $AB_NAMESPACE \
    --storeId 'Pevblkpjm13eZger' \
    > test.out 2>&1
eval_tap $? 207 'PublishSelected' test.out

#- 208 SelectAllRecords
samples/cli/sample-apps Platform selectAllRecords \
    --namespace $AB_NAMESPACE \
    --storeId 'NgNWk5kdIFsbXRSB' \
    > test.out 2>&1
eval_tap $? 208 'SelectAllRecords' test.out

#- 209 SelectAllRecordsByCriteria
samples/cli/sample-apps Platform selectAllRecordsByCriteria \
    --namespace $AB_NAMESPACE \
    --storeId 'lfEMOoJ4GqYLghY6' \
    --action 'DELETE' \
    --itemSku 'nzDvk3EJlnRcyMno' \
    --itemType 'COINS' \
    --selected 'true' \
    --type 'ITEM' \
    --updatedAtEnd 'l8skBqowclaKweug' \
    --updatedAtStart '5VhZxN5bZx7Ei5QX' \
    > test.out 2>&1
eval_tap $? 209 'SelectAllRecordsByCriteria' test.out

#- 210 GetStatistic
samples/cli/sample-apps Platform getStatistic \
    --namespace $AB_NAMESPACE \
    --storeId 'oxJ0yNfrvEkMmSmj' \
    --action 'CREATE' \
    --itemSku 'fx21PJq04ZklFPfv' \
    --itemType 'CODE' \
    --type 'SECTION' \
    --updatedAtEnd 'FxqhMMaqyJx21uzw' \
    --updatedAtStart 'EC9cHU3agJudO0YB' \
    > test.out 2>&1
eval_tap $? 210 'GetStatistic' test.out

#- 211 UnselectAllRecords
samples/cli/sample-apps Platform unselectAllRecords \
    --namespace $AB_NAMESPACE \
    --storeId 'ue5zMWiYZQWToZbb' \
    > test.out 2>&1
eval_tap $? 211 'UnselectAllRecords' test.out

#- 212 SelectRecord
samples/cli/sample-apps Platform selectRecord \
    --changeId 'MoXGGlsOY3wrAlkr' \
    --namespace $AB_NAMESPACE \
    --storeId 'X6H8AD9AemsIjhBL' \
    > test.out 2>&1
eval_tap $? 212 'SelectRecord' test.out

#- 213 UnselectRecord
samples/cli/sample-apps Platform unselectRecord \
    --changeId 's6CECj3ZPArcHBq0' \
    --namespace $AB_NAMESPACE \
    --storeId 'Hcv0vPfVJnSGccG2' \
    > test.out 2>&1
eval_tap $? 213 'UnselectRecord' test.out

#- 214 CloneStore
samples/cli/sample-apps Platform cloneStore \
    --namespace $AB_NAMESPACE \
    --storeId '6zAHDNnN71URD4CF' \
    --targetStoreId 'X8n481wKS3ep89U2' \
    > test.out 2>&1
eval_tap $? 214 'CloneStore' test.out

#- 215 ExportStore
eval_tap 0 215 'ExportStore # SKIP deprecated' test.out

#- 216 QueryImportHistory
samples/cli/sample-apps Platform queryImportHistory \
    --namespace $AB_NAMESPACE \
    --storeId 'OHkupaQ4Fz6iiTkF' \
    --end '0gyOxtbkVlnuu2R7' \
    --limit '59' \
    --offset '44' \
    --sortBy 'eWgmzc0Ka2qTeXGf' \
    --start '38PmORddYbnQxnyM' \
    --success 'false' \
    > test.out 2>&1
eval_tap $? 216 'QueryImportHistory' test.out

#- 217 ImportStoreByCSV
samples/cli/sample-apps Platform importStoreByCSV \
    --namespace $AB_NAMESPACE \
    --storeId 'X7VGewpbNISaDbZT' \
    --category 'tmp.dat' \
    --display 'tmp.dat' \
    --item 'tmp.dat' \
    --notes 'XdCoDkm4T5dMCXT5' \
    --section 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 217 'ImportStoreByCSV' test.out

#- 218 QuerySubscriptions
samples/cli/sample-apps Platform querySubscriptions \
    --namespace $AB_NAMESPACE \
    --chargeStatus 'CHARGED' \
    --itemId 'xwyE3uLPgFGeWwGh' \
    --limit '12' \
    --offset '4' \
    --sku 'Gh0joG54KwNqFpPX' \
    --status 'INIT' \
    --subscribedBy 'PLATFORM' \
    --userId '28h4dOs4PHOcRhcl' \
    > test.out 2>&1
eval_tap $? 218 'QuerySubscriptions' test.out

#- 219 RecurringChargeSubscription
samples/cli/sample-apps Platform recurringChargeSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'NZ6qAAlFD1EwckQ5' \
    > test.out 2>&1
eval_tap $? 219 'RecurringChargeSubscription' test.out

#- 220 GetTicketDynamic
samples/cli/sample-apps Platform getTicketDynamic \
    --boothName 'As4NQEgaX72WRYat' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 220 'GetTicketDynamic' test.out

#- 221 DecreaseTicketSale
samples/cli/sample-apps Platform decreaseTicketSale \
    --boothName 'XVw0jCwlfKDqaLbk' \
    --namespace $AB_NAMESPACE \
    --body '{"orderNo": "fflpuJMQlNpvQAOQ"}' \
    > test.out 2>&1
eval_tap $? 221 'DecreaseTicketSale' test.out

#- 222 GetTicketBoothID
samples/cli/sample-apps Platform getTicketBoothID \
    --boothName 'Td6phX94Pe5lBsne' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 222 'GetTicketBoothID' test.out

#- 223 IncreaseTicketSale
samples/cli/sample-apps Platform increaseTicketSale \
    --boothName 'jzq59YPwL1RcspTQ' \
    --namespace $AB_NAMESPACE \
    --body '{"count": 68, "orderNo": "GXPFmvwfD8oaU3kG"}' \
    > test.out 2>&1
eval_tap $? 223 'IncreaseTicketSale' test.out

#- 224 Commit
samples/cli/sample-apps Platform commit \
    --namespace $AB_NAMESPACE \
    --body '{"actions": [{"operations": [{"creditPayload": {"balanceOrigin": "Other", "count": 55, "currencyCode": "b4Vkn61uZprFlJIG", "expireAt": "1991-10-03T00:00:00Z"}, "debitPayload": {"count": 89, "currencyCode": "dGK4psLjbfCirGuF", "walletPlatform": "Playstation"}, "fulFillItemPayload": {"count": 54, "entitlementCollectionId": "UNiUYVt77dZZsgcm", "entitlementOrigin": "Steam", "itemIdentity": "HrkszUtyoMBuoPpL", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 81, "entitlementId": "7KMAjpug5mniwQxA"}, "type": "DEBIT_WALLET"}, {"creditPayload": {"balanceOrigin": "Epic", "count": 9, "currencyCode": "ljNQ5XBE2J6IeZlo", "expireAt": "1992-03-18T00:00:00Z"}, "debitPayload": {"count": 66, "currencyCode": "5vamqQXlFfdyv2NW", "walletPlatform": "Steam"}, "fulFillItemPayload": {"count": 99, "entitlementCollectionId": "m8gVBtAPuxUsdiOk", "entitlementOrigin": "IOS", "itemIdentity": "LwcARbkfJuzNrLI3", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 83, "entitlementId": "AHs3vX1JvE44G5FG"}, "type": "FULFILL_ITEM"}, {"creditPayload": {"balanceOrigin": "GooglePlay", "count": 11, "currencyCode": "xaJDAIr3TZkE9c0G", "expireAt": "1987-05-14T00:00:00Z"}, "debitPayload": {"count": 67, "currencyCode": "xgaoI8sacOF5NpSL", "walletPlatform": "Epic"}, "fulFillItemPayload": {"count": 41, "entitlementCollectionId": "zZWUkHuPyqR3cCDs", "entitlementOrigin": "Steam", "itemIdentity": "bEzpHuShkqDkUr9Q", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 100, "entitlementId": "cAU4OqlTPdU4Vgzm"}, "type": "DEBIT_WALLET"}], "userId": "Y2zaXLTdsHFjJcti"}, {"operations": [{"creditPayload": {"balanceOrigin": "GooglePlay", "count": 89, "currencyCode": "rKpwjFHL4ikwo6NG", "expireAt": "1990-07-16T00:00:00Z"}, "debitPayload": {"count": 38, "currencyCode": "CV83aR5FbfJ2uEfj", "walletPlatform": "IOS"}, "fulFillItemPayload": {"count": 3, "entitlementCollectionId": "Cj5YPrlyN2M5jDqy", "entitlementOrigin": "System", "itemIdentity": "eHWovvMW54YFPLfT", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 44, "entitlementId": "6ZWg5lI43X1mH26R"}, "type": "FULFILL_ITEM"}, {"creditPayload": {"balanceOrigin": "Epic", "count": 27, "currencyCode": "w0JtZV3ucgU7zZhi", "expireAt": "1998-11-23T00:00:00Z"}, "debitPayload": {"count": 54, "currencyCode": "N5x83lGv81HOgloF", "walletPlatform": "Xbox"}, "fulFillItemPayload": {"count": 49, "entitlementCollectionId": "sVVGoaEu2HIS7tW9", "entitlementOrigin": "IOS", "itemIdentity": "MPAfDfPwOGUERojN", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 96, "entitlementId": "PZS7dfxV5H3CNY8g"}, "type": "CREDIT_WALLET"}, {"creditPayload": {"balanceOrigin": "Playstation", "count": 79, "currencyCode": "COhVrtHm1KRkcagK", "expireAt": "1997-09-19T00:00:00Z"}, "debitPayload": {"count": 26, "currencyCode": "BuZvRHJRnM95hWoN", "walletPlatform": "GooglePlay"}, "fulFillItemPayload": {"count": 76, "entitlementCollectionId": "EgfpxpZ4BgNIsGwn", "entitlementOrigin": "Xbox", "itemIdentity": "hwsvkWQzwlVUcy2Z", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 84, "entitlementId": "M7slR1Dnr45UgIYl"}, "type": "CREDIT_WALLET"}], "userId": "fxcFx4UqgGAOFQMb"}, {"operations": [{"creditPayload": {"balanceOrigin": "Nintendo", "count": 78, "currencyCode": "jwgHAxckqzpRWkWK", "expireAt": "1992-06-08T00:00:00Z"}, "debitPayload": {"count": 39, "currencyCode": "fCSTh9W4YKnl5GUB", "walletPlatform": "Playstation"}, "fulFillItemPayload": {"count": 93, "entitlementCollectionId": "Cj5e8cdo95bP4VlB", "entitlementOrigin": "IOS", "itemIdentity": "X5vN8fsMyDe00RwD", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 15, "entitlementId": "ojZg2kbEY2dHwExp"}, "type": "CREDIT_WALLET"}, {"creditPayload": {"balanceOrigin": "Epic", "count": 26, "currencyCode": "BpfNCNeYwSIds6rv", "expireAt": "1999-06-19T00:00:00Z"}, "debitPayload": {"count": 48, "currencyCode": "P7u8aTikONKmRQb6", "walletPlatform": "Epic"}, "fulFillItemPayload": {"count": 42, "entitlementCollectionId": "1DNfdkTuUSlpkYvV", "entitlementOrigin": "Nintendo", "itemIdentity": "zztxZrhSUNfOlJn2", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 9, "entitlementId": "3EYm5DV37kAIgGO9"}, "type": "FULFILL_ITEM"}, {"creditPayload": {"balanceOrigin": "GooglePlay", "count": 89, "currencyCode": "LHi0wEwQJPGAOs0o", "expireAt": "1988-06-16T00:00:00Z"}, "debitPayload": {"count": 36, "currencyCode": "2c9rOTirp0ynDDzq", "walletPlatform": "IOS"}, "fulFillItemPayload": {"count": 9, "entitlementCollectionId": "FYS7yFOSuqmvMEuW", "entitlementOrigin": "Nintendo", "itemIdentity": "cpIKS8xIJvyolQRx", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 44, "entitlementId": "vRcSI8IIj9lsNcnj"}, "type": "DEBIT_WALLET"}], "userId": "MvKYJpJJcCm908F6"}], "metadata": {"LVFvOj3FLk36ErKY": {}, "9DYJDwkOJUedKnJk": {}, "aZWVEleky0OElbPj": {}}, "needPreCheck": false, "transactionId": "O4RwlP0ioTEIm6Jr", "type": "rvgxOlT9p7yhM1bx"}' \
    > test.out 2>&1
eval_tap $? 224 'Commit' test.out

#- 225 GetTradeHistoryByCriteria
samples/cli/sample-apps Platform getTradeHistoryByCriteria \
    --namespace $AB_NAMESPACE \
    --limit '99' \
    --offset '95' \
    --status 'SUCCESS' \
    --type 'rz037I3HX1CfoaHY' \
    --userId 'WGLhizoRdCFnqPxn' \
    > test.out 2>&1
eval_tap $? 225 'GetTradeHistoryByCriteria' test.out

#- 226 GetTradeHistoryByTransactionId
samples/cli/sample-apps Platform getTradeHistoryByTransactionId \
    --namespace $AB_NAMESPACE \
    --transactionId 'ZnayomAXDJ8k6zEG' \
    > test.out 2>&1
eval_tap $? 226 'GetTradeHistoryByTransactionId' test.out

#- 227 UnlockSteamUserAchievement
samples/cli/sample-apps Platform unlockSteamUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'JZRWJ2frNMcx5VQT' \
    --body '{"achievements": [{"id": "g4NhDiQ9Qn4We1Af", "value": 19}, {"id": "TaIMZLUGDVEFXi2D", "value": 54}, {"id": "ay6Z8zsLTi1d1o6j", "value": 69}], "steamUserId": "vQbQS5fAj3Pqk8S7"}' \
    > test.out 2>&1
eval_tap $? 227 'UnlockSteamUserAchievement' test.out

#- 228 GetXblUserAchievements
samples/cli/sample-apps Platform getXblUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId 'p3oDJeJJtRJ9gRbr' \
    --xboxUserId 'oIlm1DaUVShTM2BR' \
    > test.out 2>&1
eval_tap $? 228 'GetXblUserAchievements' test.out

#- 229 UpdateXblUserAchievement
samples/cli/sample-apps Platform updateXblUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'k7baK5TQPtZnyTKH' \
    --body '{"achievements": [{"id": "ijgIvd0YYNOGEBq3", "percentComplete": 19}, {"id": "kO86lcn143jiBBrk", "percentComplete": 61}, {"id": "G5IuRktoxU0LDzyk", "percentComplete": 6}], "serviceConfigId": "VqMnnKDte2vTKkV9", "titleId": "0enwaNsI2E1e1oVL", "xboxUserId": "RE4GDL91sQV7nyPu"}' \
    > test.out 2>&1
eval_tap $? 229 'UpdateXblUserAchievement' test.out

#- 230 AnonymizeCampaign
samples/cli/sample-apps Platform anonymizeCampaign \
    --namespace $AB_NAMESPACE \
    --userId 'JosVMxhcI5OOkVli' \
    > test.out 2>&1
eval_tap $? 230 'AnonymizeCampaign' test.out

#- 231 AnonymizeEntitlement
samples/cli/sample-apps Platform anonymizeEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'HY4SAQd4KkOsSj7r' \
    > test.out 2>&1
eval_tap $? 231 'AnonymizeEntitlement' test.out

#- 232 AnonymizeFulfillment
samples/cli/sample-apps Platform anonymizeFulfillment \
    --namespace $AB_NAMESPACE \
    --userId 'UKgUfbGs8XieilU1' \
    > test.out 2>&1
eval_tap $? 232 'AnonymizeFulfillment' test.out

#- 233 AnonymizeIntegration
samples/cli/sample-apps Platform anonymizeIntegration \
    --namespace $AB_NAMESPACE \
    --userId 'HOfLbd2iIKbUrO9t' \
    > test.out 2>&1
eval_tap $? 233 'AnonymizeIntegration' test.out

#- 234 AnonymizeOrder
samples/cli/sample-apps Platform anonymizeOrder \
    --namespace $AB_NAMESPACE \
    --userId 'wa0TXDVat0AOYFD9' \
    > test.out 2>&1
eval_tap $? 234 'AnonymizeOrder' test.out

#- 235 AnonymizePayment
samples/cli/sample-apps Platform anonymizePayment \
    --namespace $AB_NAMESPACE \
    --userId 'k1kHZtp5WyGCdn0P' \
    > test.out 2>&1
eval_tap $? 235 'AnonymizePayment' test.out

#- 236 AnonymizeRevocation
samples/cli/sample-apps Platform anonymizeRevocation \
    --namespace $AB_NAMESPACE \
    --userId 'J0g4vi3Q3lyaZbn2' \
    > test.out 2>&1
eval_tap $? 236 'AnonymizeRevocation' test.out

#- 237 AnonymizeSubscription
samples/cli/sample-apps Platform anonymizeSubscription \
    --namespace $AB_NAMESPACE \
    --userId 'ldtWEMUxpnDLJtlu' \
    > test.out 2>&1
eval_tap $? 237 'AnonymizeSubscription' test.out

#- 238 AnonymizeWallet
samples/cli/sample-apps Platform anonymizeWallet \
    --namespace $AB_NAMESPACE \
    --userId 'ps5SskICyNhefMhT' \
    > test.out 2>&1
eval_tap $? 238 'AnonymizeWallet' test.out

#- 239 GetUserDLCByPlatform
samples/cli/sample-apps Platform getUserDLCByPlatform \
    --namespace $AB_NAMESPACE \
    --userId 'vsWW5NUMtgpYCilO' \
    --type 'EPICGAMES' \
    > test.out 2>&1
eval_tap $? 239 'GetUserDLCByPlatform' test.out

#- 240 GetUserDLC
samples/cli/sample-apps Platform getUserDLC \
    --namespace $AB_NAMESPACE \
    --userId 'h76x0EeXDyBLzpyq' \
    --includeAllNamespaces 'true' \
    --status 'FULFILLED' \
    --type 'EPICGAMES' \
    > test.out 2>&1
eval_tap $? 240 'GetUserDLC' test.out

#- 241 QueryUserEntitlements
samples/cli/sample-apps Platform queryUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId '56QMnns97Bt3Ej8b' \
    --activeOnly 'true' \
    --appType 'DEMO' \
    --collectionId 'HGQi2SG0sy3vxb1K' \
    --entitlementClazz 'SUBSCRIPTION' \
    --entitlementName 'TXYM9ZTuxPgSNOVD' \
    --features '["43fnK7PGCw8669hG", "vBF1Y21XCyyLjj5c", "XPDxAR1IqCJAgY14"]' \
    --fuzzyMatchName 'true' \
    --itemId '["WtOCRN2u1wK2F6MA", "PxhBwsxW2Tx2F6bV", "OwUF6SoZGDAzmyXx"]' \
    --limit '89' \
    --offset '2' \
    --origin 'Oculus' \
    > test.out 2>&1
eval_tap $? 241 'QueryUserEntitlements' test.out

#- 242 GrantUserEntitlement
samples/cli/sample-apps Platform grantUserEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'z4OoHooOGDuq1goU' \
    --body '[{"collectionId": "PQxqFb0QTqXzjCIF", "endDate": "1996-03-24T00:00:00Z", "grantedCode": "iOwe9Ehn5dwyEs8i", "itemId": "cS4hNAYuWFjhXfbe", "itemNamespace": "mGkSxMzS99E1tNs1", "language": "Sv", "metadata": {"IkXYlei2MXQWA4zW": {}, "nGCw6xtHe2p5LIQC": {}, "ZzJLgI3SIfKgBY8c": {}}, "origin": "Epic", "quantity": 61, "region": "zlfPIf02MPxkwOfq", "source": "REFERRAL_BONUS", "startDate": "1994-08-29T00:00:00Z", "storeId": "2RQN0Tu8m2NwWvRs"}, {"collectionId": "syhslqgN5oqu2ebq", "endDate": "1994-08-30T00:00:00Z", "grantedCode": "p76N20xPPoyBS9Lc", "itemId": "B2Gop7PaEiR39hD5", "itemNamespace": "y4CK3Ch0yEGdXX9r", "language": "rGx_npMV_nZ", "metadata": {"A1RxDN19uJNbXIb7": {}, "hn7khrZGDXl3lcI4": {}, "1YwUalyHx4y9cTzf": {}}, "origin": "System", "quantity": 92, "region": "yoKBB0XlOpfY8Jn5", "source": "ACHIEVEMENT", "startDate": "1991-04-03T00:00:00Z", "storeId": "sjE5s6ZZ2P6Oc0ZH"}, {"collectionId": "BWmgaBJeUfkEWrLU", "endDate": "1996-04-17T00:00:00Z", "grantedCode": "88mcLfYLTeNGQUns", "itemId": "emhPIQUYP89OErH0", "itemNamespace": "VptvSfeOIVbPL2jo", "language": "uvj", "metadata": {"cabxeYG2AT6ClFMw": {}, "2XKyybZFQ21Z3w3s": {}, "ZOq1bG10YpROKK6N": {}}, "origin": "Playstation", "quantity": 34, "region": "UVHg26sDiNdCJjIV", "source": "REDEEM_CODE", "startDate": "1993-02-03T00:00:00Z", "storeId": "gxMLvtyZ2ScObQGC"}]' \
    > test.out 2>&1
eval_tap $? 242 'GrantUserEntitlement' test.out

#- 243 GetUserAppEntitlementByAppId
samples/cli/sample-apps Platform getUserAppEntitlementByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'ZUeeMzk29LqemhEA' \
    --activeOnly 'false' \
    --appId 'Svjk1g69EB7qBi3T' \
    > test.out 2>&1
eval_tap $? 243 'GetUserAppEntitlementByAppId' test.out

#- 244 QueryUserEntitlementsByAppType
samples/cli/sample-apps Platform queryUserEntitlementsByAppType \
    --namespace $AB_NAMESPACE \
    --userId 'JE38DqKnoCRfwNLp' \
    --activeOnly 'false' \
    --limit '66' \
    --offset '54' \
    --appType 'DEMO' \
    > test.out 2>&1
eval_tap $? 244 'QueryUserEntitlementsByAppType' test.out

#- 245 GetUserEntitlementByItemId
samples/cli/sample-apps Platform getUserEntitlementByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'GyTrMjr791ebRiRU' \
    --activeOnly 'true' \
    --entitlementClazz 'LOOTBOX' \
    --platform 'sgr2ePNsNyOCg458' \
    --itemId 'fW6pIH4LzYrf2Hfi' \
    > test.out 2>&1
eval_tap $? 245 'GetUserEntitlementByItemId' test.out

#- 246 GetUserActiveEntitlementsByItemIds
samples/cli/sample-apps Platform getUserActiveEntitlementsByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'HzAVm0e6CRdqvov1' \
    --ids '["aFaPdBRzWBEm2Afx", "xFlG1n5UQeU9OXDL", "nsVSOCNcEigBbWmu"]' \
    --platform '5CaSoWzRi20Vwl3x' \
    > test.out 2>&1
eval_tap $? 246 'GetUserActiveEntitlementsByItemIds' test.out

#- 247 GetUserEntitlementBySku
samples/cli/sample-apps Platform getUserEntitlementBySku \
    --namespace $AB_NAMESPACE \
    --userId '42oaAQsN05GltEJh' \
    --activeOnly 'true' \
    --entitlementClazz 'MEDIA' \
    --platform '7hnK9lrX0NFC9of5' \
    --sku 'Zdk75ZiQonQ7XlYd' \
    > test.out 2>&1
eval_tap $? 247 'GetUserEntitlementBySku' test.out

#- 248 ExistsAnyUserActiveEntitlement
samples/cli/sample-apps Platform existsAnyUserActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'r8f1vrAyVvvO8sJz' \
    --appIds '["q2zSpURNgl3nf64r", "eLEBTWB2TuxgmfT9", "xpkeun94rLz8bDQa"]' \
    --itemIds '["hZKWMoqQzAgPE8E1", "YcAGjtAQd6Uh7ljz", "dhnDTl8DLfrOSLWs"]' \
    --platform 'Eyo5fOJlvEh8H9AU' \
    --skus '["kD2w2KymrJvVBIFr", "wVLbg76BZo3BCNhb", "ycf7lxev6hNKQ18H"]' \
    > test.out 2>&1
eval_tap $? 248 'ExistsAnyUserActiveEntitlement' test.out

#- 249 ExistsAnyUserActiveEntitlementByItemIds
samples/cli/sample-apps Platform existsAnyUserActiveEntitlementByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'UpQjAHc5ZqCUIB8H' \
    --platform 'dvhy8Rvne6cvAUBM' \
    --itemIds '["1wRZcHjSJdw2KAGq", "9bYy58fYW5lXdoMq", "wOklny6DaoFsE8O0"]' \
    > test.out 2>&1
eval_tap $? 249 'ExistsAnyUserActiveEntitlementByItemIds' test.out

#- 250 GetUserAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform getUserAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'uAWUXyZasMjauqG6' \
    --appId 'bo1CWRUDd1AxqO5W' \
    > test.out 2>&1
eval_tap $? 250 'GetUserAppEntitlementOwnershipByAppId' test.out

#- 251 GetUserEntitlementOwnershipByItemId
samples/cli/sample-apps Platform getUserEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'hT9w4EotojN6vUBu' \
    --entitlementClazz 'ENTITLEMENT' \
    --platform 'XZJoZv905CEIOfKk' \
    --itemId 'fvLKdDBS7EIDqVRu' \
    > test.out 2>&1
eval_tap $? 251 'GetUserEntitlementOwnershipByItemId' test.out

#- 252 GetUserEntitlementOwnershipByItemIds
samples/cli/sample-apps Platform getUserEntitlementOwnershipByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'cWT6KnUCUJIl8QTH' \
    --ids '["gTS74bTR3SlHhujL", "Zn71iMQThdYq6puh", "qg2C0tHgQAtpYUBH"]' \
    --platform 'gSmFL86PUV0XhxN5' \
    > test.out 2>&1
eval_tap $? 252 'GetUserEntitlementOwnershipByItemIds' test.out

#- 253 GetUserEntitlementOwnershipBySku
samples/cli/sample-apps Platform getUserEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --userId 'kKMjoiw6xZqDYdwp' \
    --entitlementClazz 'ENTITLEMENT' \
    --platform 'HLZ3jMCCmEf8pKh8' \
    --sku 'i8qbOcwdxbi8lj0d' \
    > test.out 2>&1
eval_tap $? 253 'GetUserEntitlementOwnershipBySku' test.out

#- 254 RevokeAllEntitlements
samples/cli/sample-apps Platform revokeAllEntitlements \
    --namespace $AB_NAMESPACE \
    --userId '8lTT7hjdNQTIwfcy' \
    > test.out 2>&1
eval_tap $? 254 'RevokeAllEntitlements' test.out

#- 255 RevokeUserEntitlements
samples/cli/sample-apps Platform revokeUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'by4olFkvylFoZTIH' \
    --entitlementIds '0WTz0sXL7qrk8ibH' \
    > test.out 2>&1
eval_tap $? 255 'RevokeUserEntitlements' test.out

#- 256 GetUserEntitlement
samples/cli/sample-apps Platform getUserEntitlement \
    --entitlementId 'z6NtddWNSqI1ceWl' \
    --namespace $AB_NAMESPACE \
    --userId 'Sb8Hu0C47mxkuUCD' \
    > test.out 2>&1
eval_tap $? 256 'GetUserEntitlement' test.out

#- 257 UpdateUserEntitlement
samples/cli/sample-apps Platform updateUserEntitlement \
    --entitlementId 'AvJXZatQOrMBGHM7' \
    --namespace $AB_NAMESPACE \
    --userId 'r1wrhHFoqogWOfbV' \
    --body '{"collectionId": "PuxXvnIDivLF1fUc", "endDate": "1978-06-20T00:00:00Z", "nullFieldList": ["orz8F5hXwoElME2U", "LlVnrrva3KGECmT6", "g9He1DidYfvCqbtI"], "origin": "Oculus", "reason": "SbT07htATdATi2Km", "startDate": "1993-10-25T00:00:00Z", "status": "ACTIVE", "useCount": 38}' \
    > test.out 2>&1
eval_tap $? 257 'UpdateUserEntitlement' test.out

#- 258 ConsumeUserEntitlement
samples/cli/sample-apps Platform consumeUserEntitlement \
    --entitlementId 'JI1SSbABA3xjUtr6' \
    --namespace $AB_NAMESPACE \
    --userId 'JYxsovP9Zw6acbrA' \
    --body '{"metadata": {"OXEoHb9bnANs4DIU": {}, "Bc7LXx00GhlMvuk1": {}, "Wcur9DeFYDXVTX67": {}}, "options": ["jkaXOiAFcO0QsRMM", "hpcFzcAHw74boAbQ", "o6UkMHA2dWwRNNIX"], "platform": "ql2Z6ZDbJiLZTwk2", "requestId": "QdrD6wO8PzxTt9ef", "useCount": 43}' \
    > test.out 2>&1
eval_tap $? 258 'ConsumeUserEntitlement' test.out

#- 259 DisableUserEntitlement
samples/cli/sample-apps Platform disableUserEntitlement \
    --entitlementId 'UncrL5FmNtBxie4d' \
    --namespace $AB_NAMESPACE \
    --userId 'XUMrAvnDhcjoirRo' \
    > test.out 2>&1
eval_tap $? 259 'DisableUserEntitlement' test.out

#- 260 EnableUserEntitlement
samples/cli/sample-apps Platform enableUserEntitlement \
    --entitlementId 'BEEQmkmZuSkWmXq1' \
    --namespace $AB_NAMESPACE \
    --userId 'saVXzFiUgkLtMPBq' \
    > test.out 2>&1
eval_tap $? 260 'EnableUserEntitlement' test.out

#- 261 GetUserEntitlementHistories
samples/cli/sample-apps Platform getUserEntitlementHistories \
    --entitlementId 'E2Tmph1LiXf6zGE3' \
    --namespace $AB_NAMESPACE \
    --userId 'XfKzA5RXL6iDVkD6' \
    > test.out 2>&1
eval_tap $? 261 'GetUserEntitlementHistories' test.out

#- 262 RevokeUserEntitlement
samples/cli/sample-apps Platform revokeUserEntitlement \
    --entitlementId 'SgyozH4z52A7bDBo' \
    --namespace $AB_NAMESPACE \
    --userId 'pH2vdqSlJGBOaU0r' \
    --body '{"metadata": {"gzodID573Cv6zl5p": {}, "LtEHfUgCTFHQLMwM": {}, "RSPz01lsAB40wiDM": {}}}' \
    > test.out 2>&1
eval_tap $? 262 'RevokeUserEntitlement' test.out

#- 263 RevokeUserEntitlementByUseCount
samples/cli/sample-apps Platform revokeUserEntitlementByUseCount \
    --entitlementId 'PyYYN3CavDpydtzP' \
    --namespace $AB_NAMESPACE \
    --userId 'wzW4WhYohHPftHS6' \
    --body '{"reason": "YvHtrh83IbGbGnyH", "useCount": 3}' \
    > test.out 2>&1
eval_tap $? 263 'RevokeUserEntitlementByUseCount' test.out

#- 264 PreCheckRevokeUserEntitlementByUseCount
samples/cli/sample-apps Platform preCheckRevokeUserEntitlementByUseCount \
    --entitlementId 'DCUsMkBwOKYeO4Oa' \
    --namespace $AB_NAMESPACE \
    --userId 'zTCcnc35eoDRyict' \
    --quantity '39' \
    > test.out 2>&1
eval_tap $? 264 'PreCheckRevokeUserEntitlementByUseCount' test.out

#- 265 RevokeUseCount
eval_tap 0 265 'RevokeUseCount # SKIP deprecated' test.out

#- 266 SellUserEntitlement
samples/cli/sample-apps Platform sellUserEntitlement \
    --entitlementId 'BRu5DI4wANfQYGfm' \
    --namespace $AB_NAMESPACE \
    --userId 'kItbOCYvDMI3HDM6' \
    --body '{"platform": "mouaaYJs2Ztu5LfQ", "requestId": "M1FVDEiOv1isiULh", "useCount": 18}' \
    > test.out 2>&1
eval_tap $? 266 'SellUserEntitlement' test.out

#- 267 FulfillItem
samples/cli/sample-apps Platform fulfillItem \
    --namespace $AB_NAMESPACE \
    --userId 'cMBYE2PY7nBkoSe2' \
    --body '{"duration": 56, "endDate": "1975-05-28T00:00:00Z", "entitlementCollectionId": "sIkpEd8HEVu4vCrI", "entitlementOrigin": "Xbox", "itemId": "3sdT7IkMzCuMT3Ge", "itemSku": "7s6yjCM6MLmNKoYJ", "language": "NM3njIHYbpijT622", "metadata": {"bSEYEuRZirDh4ZAB": {}, "GycbMAVEUeh6ae8I": {}, "Hni72PXmiSu6Mb5K": {}}, "order": {"currency": {"currencyCode": "xC5kPcetOkIepVCO", "currencySymbol": "afpw0XfpO2byVqiG", "currencyType": "VIRTUAL", "decimals": 59, "namespace": "zUFIAjQQp3inHqwK"}, "ext": {"WJ8VlWFEy1AyNk1G": {}, "xtWre4BIOluDvdvN": {}, "wTJ4mlXTxCfHNyzj": {}}, "free": false}, "orderNo": "9v9OnewB6TqSNGw4", "origin": "Twitch", "overrideBundleItemQty": {"RJRsioJaiqxV7bCH": 60, "FVYPCXvr44r3lykF": 27, "E49XbVV8n7gf7E6x": 57}, "quantity": 47, "region": "QuI3jYyAt6XY9DHT", "source": "REWARD", "startDate": "1971-12-31T00:00:00Z", "storeId": "I5GuijKcI45VZNY8"}' \
    > test.out 2>&1
eval_tap $? 267 'FulfillItem' test.out

#- 268 RedeemCode
samples/cli/sample-apps Platform redeemCode \
    --namespace $AB_NAMESPACE \
    --userId '15CpPoOzN6xKoLjN' \
    --body '{"code": "wjZs7LrgcxQgE4Oe", "language": "jEm_wLLL-wt", "region": "UVFNVN5zLB3aUqx2"}' \
    > test.out 2>&1
eval_tap $? 268 'RedeemCode' test.out

#- 269 PreCheckFulfillItem
samples/cli/sample-apps Platform preCheckFulfillItem \
    --namespace $AB_NAMESPACE \
    --userId 'xyTwJyq3Pe5a8Eoq' \
    --body '{"itemId": "O5Z5nxjCSSZK7s0x", "itemSku": "ER8NFnJ2YRipy3R0", "quantity": 70}' \
    > test.out 2>&1
eval_tap $? 269 'PreCheckFulfillItem' test.out

#- 270 FulfillRewards
samples/cli/sample-apps Platform fulfillRewards \
    --namespace $AB_NAMESPACE \
    --userId 'pGCbWRCU6sEtyVSM' \
    --body '{"entitlementCollectionId": "iKDhdT6tLq6nbGO8", "entitlementOrigin": "System", "metadata": {"b9rpEl6Ks1otOPzW": {}, "LObx0bx9iyyVPKMV": {}, "LoGDF7ugL9VuEYro": {}}, "origin": "Xbox", "rewards": [{"currency": {"currencyCode": "HPjueWgYaXtoddTn", "namespace": "MdVsNEGrN5z0wpCB"}, "item": {"itemId": "jBsPSyc46zqpfTPf", "itemName": "uaa32Palj2LgHJOh", "itemSku": "F9SDV4cBY7Fq1Lim", "itemType": "WfXf54MaojqtRhFe"}, "quantity": 70, "type": "CURRENCY"}, {"currency": {"currencyCode": "i0VP0o03ju529l59", "namespace": "A4aMH3GrAubbqQ36"}, "item": {"itemId": "UyIBu99CMuYARu48", "itemName": "ssfLF8UU6Shx73dn", "itemSku": "TbfHh178oGgOWe8H", "itemType": "GfHEjEBysn82xCVs"}, "quantity": 70, "type": "CURRENCY"}, {"currency": {"currencyCode": "9o2xKqMjXWC6d1o4", "namespace": "od4ycses04bQJNL9"}, "item": {"itemId": "g5LCuVfOvb1fYUL0", "itemName": "oLsBBiYxtQrAxBiu", "itemSku": "WzFID4JsRqBJQEBF", "itemType": "AstOhTb7PU2dHCcN"}, "quantity": 50, "type": "CURRENCY"}], "source": "IAP_CHARGEBACK_REVERSED", "transactionId": "hjbcosEVn5Nieefy"}' \
    > test.out 2>&1
eval_tap $? 270 'FulfillRewards' test.out

#- 271 QueryUserIAPOrders
samples/cli/sample-apps Platform queryUserIAPOrders \
    --namespace $AB_NAMESPACE \
    --userId 'SYbTIoIrhZzAUnyb' \
    --endTime '60mLnM2ciRJuYEcl' \
    --limit '55' \
    --offset '85' \
    --productId 'S4sUr9JQibBwXqxN' \
    --startTime 'SnaQfr6MOYvNWgDW' \
    --status 'FULFILLED' \
    --type 'EPICGAMES' \
    > test.out 2>&1
eval_tap $? 271 'QueryUserIAPOrders' test.out

#- 272 QueryAllUserIAPOrders
samples/cli/sample-apps Platform queryAllUserIAPOrders \
    --namespace $AB_NAMESPACE \
    --userId 'm1eezVfIUuOG2VQn' \
    > test.out 2>&1
eval_tap $? 272 'QueryAllUserIAPOrders' test.out

#- 273 QueryUserIAPConsumeHistory
samples/cli/sample-apps Platform queryUserIAPConsumeHistory \
    --namespace $AB_NAMESPACE \
    --userId 'L5RjZxMuuwUbrGtT' \
    --endTime '3VYphG8zmj2rsqPb' \
    --limit '69' \
    --offset '70' \
    --startTime 'EdDwhPVZ8yc9eP6o' \
    --status 'SUCCESS' \
    --type 'PLAYSTATION' \
    > test.out 2>&1
eval_tap $? 273 'QueryUserIAPConsumeHistory' test.out

#- 274 MockFulfillIAPItem
samples/cli/sample-apps Platform mockFulfillIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'uldk2811smiFSH8j' \
    --body '{"itemIdentityType": "ITEM_ID", "language": "ncx", "productId": "lClGv9Kg0I5XVOS8", "region": "zXCle5tfKy0E9Dh4", "transactionId": "cHxha6WbSaQlipdT", "type": "XBOX"}' \
    > test.out 2>&1
eval_tap $? 274 'MockFulfillIAPItem' test.out

#- 275 QueryUserOrders
samples/cli/sample-apps Platform queryUserOrders \
    --namespace $AB_NAMESPACE \
    --userId 'xZZjpKUBN5mFWNNf' \
    --discounted 'false' \
    --itemId 'eZgaEWubiOnIsyZI' \
    --limit '25' \
    --offset '69' \
    --status 'CLOSED' \
    > test.out 2>&1
eval_tap $? 275 'QueryUserOrders' test.out

#- 276 AdminCreateUserOrder
samples/cli/sample-apps Platform adminCreateUserOrder \
    --namespace $AB_NAMESPACE \
    --userId 'tcjiLRicZdYXQWdy' \
    --body '{"currencyCode": "f6nHtpRIx0K2iHbR", "currencyNamespace": "GzUhn7XvnUiFCZbg", "discountCodes": ["zX4UAhYxty794NS6", "IyMu0p5VlhaIlGnW", "M74rFhKE5fCrR6Gq"], "discountedPrice": 36, "entitlementPlatform": "Nintendo", "ext": {"x4FCKcyhdQ7H5Nao": {}, "nBGmJEhk7RrScl8E": {}, "VSY025kqtowFPdA4": {}}, "itemId": "EO0i11X0fqhwY6Xy", "language": "ZIhOxOKRC4yKdqqZ", "options": {"skipPriceValidation": true}, "platform": "GooglePlay", "price": 60, "quantity": 47, "region": "U5YNsF2HYkRy8xot", "returnUrl": "KFtNvqXTTgRxLAFH", "sandbox": true, "sectionId": "I1uPrnMv4UKlvVKo"}' \
    > test.out 2>&1
eval_tap $? 276 'AdminCreateUserOrder' test.out

#- 277 CountOfPurchasedItem
samples/cli/sample-apps Platform countOfPurchasedItem \
    --namespace $AB_NAMESPACE \
    --userId 'ELVYyTMkYXwHeXvJ' \
    --itemId 'ccj301A8kciOHI3u' \
    > test.out 2>&1
eval_tap $? 277 'CountOfPurchasedItem' test.out

#- 278 GetUserOrder
samples/cli/sample-apps Platform getUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'yr3LfaSBFdnyNlUu' \
    --userId 'iM8cTl2bK0BmZ0MZ' \
    > test.out 2>&1
eval_tap $? 278 'GetUserOrder' test.out

#- 279 UpdateUserOrderStatus
samples/cli/sample-apps Platform updateUserOrderStatus \
    --namespace $AB_NAMESPACE \
    --orderNo 'RWG5IUqScqDbk8Jq' \
    --userId 'HtuykCgzSgYJCqyO' \
    --body '{"status": "CHARGED", "statusReason": "sUBzqLbgmLAMDyle"}' \
    > test.out 2>&1
eval_tap $? 279 'UpdateUserOrderStatus' test.out

#- 280 FulfillUserOrder
samples/cli/sample-apps Platform fulfillUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'jQkXCdxw5dl76sLF' \
    --userId 'jBHpk082FUc0AmgJ' \
    > test.out 2>&1
eval_tap $? 280 'FulfillUserOrder' test.out

#- 281 GetUserOrderGrant
eval_tap 0 281 'GetUserOrderGrant # SKIP deprecated' test.out

#- 282 GetUserOrderHistories
samples/cli/sample-apps Platform getUserOrderHistories \
    --namespace $AB_NAMESPACE \
    --orderNo 'UnLGTRSmdRMwC67p' \
    --userId 'G59q4qrviAbKsuZE' \
    > test.out 2>&1
eval_tap $? 282 'GetUserOrderHistories' test.out

#- 283 ProcessUserOrderNotification
samples/cli/sample-apps Platform processUserOrderNotification \
    --namespace $AB_NAMESPACE \
    --orderNo 'pRCThbLQDmFHhlaT' \
    --userId 'Rkevy6gMXDplkq0d' \
    --body '{"additionalData": {"cardSummary": "ssM6UWYq9YiVqxqn"}, "authorisedTime": "1980-05-01T00:00:00Z", "chargebackReversedTime": "1992-12-03T00:00:00Z", "chargebackTime": "1987-05-10T00:00:00Z", "chargedTime": "1984-09-13T00:00:00Z", "createdTime": "1984-01-27T00:00:00Z", "currency": {"currencyCode": "YTZxRP3Y4MJWQD1r", "currencySymbol": "jHiXrZ5eFLjDQnnx", "currencyType": "VIRTUAL", "decimals": 91, "namespace": "i0MoIFN7tn1dOyqW"}, "customParameters": {"VWF0jephhiyrDZPx": {}, "eIENGBO06lizAXOp": {}, "ptjYFO78jead9vrf": {}}, "extOrderNo": "RH1i9OhsiEYqPpUP", "extTxId": "GoBnJVktX5vIAg6G", "extUserId": "K28Pzf2cQ2C8wpwV", "issuedAt": "1993-11-11T00:00:00Z", "metadata": {"jHg785yeBOYJDIiR": "h5IcTz3ezc22PQXL", "4xiMIFJYrsi0YkBI": "6TSA9TNA3ak0FGXc", "NgJP2OkrPQkl7gsE": "sASEOQYM2VAjxzJI"}, "namespace": "tikwJC0Fm6hcBxEG", "nonceStr": "cJmAG1R1D57UVSrn", "paymentData": {"discountAmount": 80, "discountCode": "FLoAdZsZNCqMbvja", "subtotalPrice": 13, "tax": 18, "totalPrice": 59}, "paymentMethod": "hEj1htBamzPeOyYi", "paymentMethodFee": 24, "paymentOrderNo": "Umw52UwaTlVOmSwY", "paymentProvider": "NEONPAY", "paymentProviderFee": 2, "paymentStationUrl": "55N653efttvhRfem", "price": 20, "refundedTime": "1993-08-06T00:00:00Z", "salesTax": 22, "sandbox": true, "sku": "odZXNTACgaG0ywYz", "status": "INIT", "statusReason": "l8QWzvdlOx5Jevby", "subscriptionId": "c56vDjcCbC4xtzWB", "subtotalPrice": 99, "targetNamespace": "ZHrC0Ta14kATUnW7", "targetUserId": "TQogy9KEFcc3WXNR", "tax": 99, "totalPrice": 27, "totalTax": 95, "txEndTime": "1973-11-03T00:00:00Z", "type": "umRSMlGiEvP3m3bF", "userId": "4D49PgkKNWm1Ae0m", "vat": 85}' \
    > test.out 2>&1
eval_tap $? 283 'ProcessUserOrderNotification' test.out

#- 284 DownloadUserOrderReceipt
samples/cli/sample-apps Platform downloadUserOrderReceipt \
    --namespace $AB_NAMESPACE \
    --orderNo 'jQRhTjntCPOp1Y6n' \
    --userId 'Dw9r8e5d9y4zzmSN' \
    > test.out 2>&1
eval_tap $? 284 'DownloadUserOrderReceipt' test.out

#- 285 CreateUserPaymentOrder
samples/cli/sample-apps Platform createUserPaymentOrder \
    --namespace $AB_NAMESPACE \
    --userId '9H9cLuPiG9Eboy7n' \
    --body '{"currencyCode": "UsfV8FPsIg02JuNy", "currencyNamespace": "NxIq79O8xaSUotGt", "customParameters": {"xVPJuU6TA3ODFUuc": {}, "UNYHGQhi1DuIPytQ": {}, "2C7B5yVW5DyIeuWG": {}}, "description": "IhNEvdwPoDQxQxsF", "extOrderNo": "9SvfbitqLgT8gMdR", "extUserId": "TkE5f41XkAJOYoFy", "itemType": "COINS", "language": "JaxA_NHZp_187", "metadata": {"xQfsIuscXK3HhIJD": "QkxRK88Yxq5rRCRi", "sLAgna8PyVBJR2Qt": "HXzOXGXihpCAnQNg", "4oGMyJ4JUQCJCXp2": "F3QmdFs9C66ETpRs"}, "notifyUrl": "y9ai1lwsPnoeJv6y", "omitNotification": false, "platform": "B5w6sfJLVHjBqXgY", "price": 95, "recurringPaymentOrderNo": "oYQDtGktqElgTxM6", "region": "1JMfyNjsdgyXHzHS", "returnUrl": "G4JkdhCQyZpXH7y9", "sandbox": false, "sku": "ll6o0oD9fI0ucvUu", "subscriptionId": "X7R6rmzN9bXB0xjR", "title": "gWlJ03K5qqwlFVDF"}' \
    > test.out 2>&1
eval_tap $? 285 'CreateUserPaymentOrder' test.out

#- 286 RefundUserPaymentOrder
samples/cli/sample-apps Platform refundUserPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'GgjSNeN9e0wBvu46' \
    --userId 'gvGMgemKgyJpeprQ' \
    --body '{"description": "roXxR9bgjLTO9mAZ"}' \
    > test.out 2>&1
eval_tap $? 286 'RefundUserPaymentOrder' test.out

#- 287 GetUserPlatformAccountClosureHistories
samples/cli/sample-apps Platform getUserPlatformAccountClosureHistories \
    --namespace $AB_NAMESPACE \
    --userId 'PTpbOCt3Ulg6hglu' \
    > test.out 2>&1
eval_tap $? 287 'GetUserPlatformAccountClosureHistories' test.out

#- 288 ApplyUserRedemption
samples/cli/sample-apps Platform applyUserRedemption \
    --namespace $AB_NAMESPACE \
    --userId '9Y3EAwJBodh9rZyy' \
    --body '{"code": "fKqnZFyfrpVcBFx6", "orderNo": "Ud5RcnYRBNg1Z8qa"}' \
    > test.out 2>&1
eval_tap $? 288 'ApplyUserRedemption' test.out

#- 289 DoRevocation
samples/cli/sample-apps Platform doRevocation \
    --namespace $AB_NAMESPACE \
    --userId 'Y0Yfs5UFTz1l8TBM' \
    --body '{"meta": {"mMDNIqx2nTEBjWOk": {}, "irRzdrsUeNT6Exz4": {}, "6fQUsX3njDYpwPiH": {}}, "reason": "NtEFXMB8PP88T2jI", "revokeEntries": [{"currency": {"balanceOrigin": "Other", "currencyCode": "hf6A2fBvbmbtTXKr", "namespace": "K3o8MuobS9U15HhL"}, "entitlement": {"entitlementId": "YM1rzTHbjwXVgI4Y"}, "item": {"entitlementOrigin": "System", "itemIdentity": "01emoKF9yA4K0VnU", "itemIdentityType": "ITEM_ID", "origin": "Epic"}, "quantity": 38, "type": "ENTITLEMENT"}, {"currency": {"balanceOrigin": "Playstation", "currencyCode": "qnkvUts0F6BltUhA", "namespace": "pkMM6cLyliTTGkAL"}, "entitlement": {"entitlementId": "LBsmByymRP66r8Od"}, "item": {"entitlementOrigin": "IOS", "itemIdentity": "1TGWWuZDiI7hfUlz", "itemIdentityType": "ITEM_ID", "origin": "Nintendo"}, "quantity": 55, "type": "ENTITLEMENT"}, {"currency": {"balanceOrigin": "Xbox", "currencyCode": "LEHzqb0Zx79kpUsB", "namespace": "4coovkWYT2T2WsOI"}, "entitlement": {"entitlementId": "iWIyXieH7f2yxyBW"}, "item": {"entitlementOrigin": "GooglePlay", "itemIdentity": "eclFHkmSYYv413VO", "itemIdentityType": "ITEM_SKU", "origin": "IOS"}, "quantity": 5, "type": "ITEM"}], "source": "OTHER", "transactionId": "MJlUM5CE2dBMnlyt"}' \
    > test.out 2>&1
eval_tap $? 289 'DoRevocation' test.out

#- 290 RegisterXblSessions
samples/cli/sample-apps Platform registerXblSessions \
    --namespace $AB_NAMESPACE \
    --userId 'FR30j9aCDr4GsCSN' \
    --body '{"gameSessionId": "2LyN21TW5UknFZKs", "payload": {"GdjT2MMudUOEpCN3": {}, "koEy7E3sKL1dIy4s": {}, "GO0tUTomXQYlN79r": {}}, "scid": "2C16jOSnall3xnzi", "sessionTemplateName": "HtbukNauYOTuGFP8"}' \
    > test.out 2>&1
eval_tap $? 290 'RegisterXblSessions' test.out

#- 291 QueryUserSubscriptions
samples/cli/sample-apps Platform queryUserSubscriptions \
    --namespace $AB_NAMESPACE \
    --userId 'Qp9nBT5NHEdnbIBQ' \
    --chargeStatus 'RECURRING_CHARGING' \
    --itemId 'Hp8ZGw67s1IVnxE4' \
    --limit '37' \
    --offset '66' \
    --sku 'qdJSYwuSwBxh5fsx' \
    --status 'CANCELLED' \
    --subscribedBy 'USER' \
    > test.out 2>&1
eval_tap $? 291 'QueryUserSubscriptions' test.out

#- 292 GetUserSubscriptionActivities
samples/cli/sample-apps Platform getUserSubscriptionActivities \
    --namespace $AB_NAMESPACE \
    --userId 'sUUNBEsfnWawyesx' \
    --excludeSystem 'true' \
    --limit '76' \
    --offset '37' \
    --subscriptionId 'nRgtINsAyEQ4D40q' \
    > test.out 2>&1
eval_tap $? 292 'GetUserSubscriptionActivities' test.out

#- 293 PlatformSubscribeSubscription
samples/cli/sample-apps Platform platformSubscribeSubscription \
    --namespace $AB_NAMESPACE \
    --userId 'MAj1RWRe4GSrVCbu' \
    --body '{"grantDays": 61, "itemId": "59i54aBI40fj5s2e", "language": "e6aZ8yuqx4KyVLgw", "reason": "uo7kSFGmgLeMjyWh", "region": "yMholMnL1mkt1R7Y", "source": "gixE5050ziXtTaIw"}' \
    > test.out 2>&1
eval_tap $? 293 'PlatformSubscribeSubscription' test.out

#- 294 CheckUserSubscriptionSubscribableByItemId
samples/cli/sample-apps Platform checkUserSubscriptionSubscribableByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'Q1SenUrEgKKvaBXZ' \
    --itemId 'zpyXOnrTMeKlDqMP' \
    > test.out 2>&1
eval_tap $? 294 'CheckUserSubscriptionSubscribableByItemId' test.out

#- 295 GetUserSubscription
samples/cli/sample-apps Platform getUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'ZcgZAGDVD9c4ss29' \
    --userId 'baISjCW2shYsgI6i' \
    > test.out 2>&1
eval_tap $? 295 'GetUserSubscription' test.out

#- 296 DeleteUserSubscription
samples/cli/sample-apps Platform deleteUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'pgNrxQ64FTS8lPRJ' \
    --userId 'VHhGZcfvbPiJzGY0' \
    > test.out 2>&1
eval_tap $? 296 'DeleteUserSubscription' test.out

#- 297 CancelSubscription
samples/cli/sample-apps Platform cancelSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'QIyDl5q9oKZIqHNH' \
    --userId 'txxHWFCdHeo78Ckt' \
    --force 'false' \
    --body '{"immediate": false, "reason": "AWSBqfgRrWu1dlp1"}' \
    > test.out 2>&1
eval_tap $? 297 'CancelSubscription' test.out

#- 298 GrantDaysToSubscription
samples/cli/sample-apps Platform grantDaysToSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'hhbob9iCcyYB6LzN' \
    --userId 'l5TZW53TUGmsnjwf' \
    --body '{"grantDays": 23, "reason": "hVM9UhwdfrP6uaBU"}' \
    > test.out 2>&1
eval_tap $? 298 'GrantDaysToSubscription' test.out

#- 299 GetUserSubscriptionBillingHistories
samples/cli/sample-apps Platform getUserSubscriptionBillingHistories \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'CyTAx8MsqsT4E1gM' \
    --userId 'tA7IyDUxifkBexVX' \
    --excludeFree 'false' \
    --limit '90' \
    --offset '2' \
    > test.out 2>&1
eval_tap $? 299 'GetUserSubscriptionBillingHistories' test.out

#- 300 ProcessUserSubscriptionNotification
samples/cli/sample-apps Platform processUserSubscriptionNotification \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'ZZYAxFGjhDehM5PI' \
    --userId '15RVRPPVnAc5myw9' \
    --body '{"additionalData": {"cardSummary": "qkPiGCHBLT81jW8q"}, "authorisedTime": "1973-06-30T00:00:00Z", "chargebackReversedTime": "1981-02-01T00:00:00Z", "chargebackTime": "1971-01-09T00:00:00Z", "chargedTime": "1997-04-07T00:00:00Z", "createdTime": "1993-12-24T00:00:00Z", "currency": {"currencyCode": "EEZWrlOfZAwcFFyT", "currencySymbol": "RQtFVGKzfG53WWSU", "currencyType": "REAL", "decimals": 66, "namespace": "3LigRhLC28ECWbVh"}, "customParameters": {"VdHx27Kg5kHr5d9X": {}, "b22y1D4AI2KRy6kE": {}, "BTb4MQ6uvWTHH9sf": {}}, "extOrderNo": "UKyxiVk53mRIQPbF", "extTxId": "Y5ACBJphSPauIRhf", "extUserId": "tdA9xjDzDn5OvZP0", "issuedAt": "1989-12-27T00:00:00Z", "metadata": {"HCvPHQbKOMWGfSRZ": "yMrY9tmXKXg6eU1E", "DPXwp8CeAOkQeb7G": "qQwJdTM8J5kD7LFC", "NvcPVOCaFlQBiKhH": "U4uciQzo9nlO6l2S"}, "namespace": "9GTTq9kyTty5LdmE", "nonceStr": "k87UXDJhUVQp8hrM", "paymentData": {"discountAmount": 64, "discountCode": "UuBq4Ra2ipAs5bX9", "subtotalPrice": 10, "tax": 15, "totalPrice": 6}, "paymentMethod": "R44qCqeLL36S7VqY", "paymentMethodFee": 1, "paymentOrderNo": "HkzCSWOOD8cE5BP2", "paymentProvider": "WXPAY", "paymentProviderFee": 92, "paymentStationUrl": "nkPxWpgGFrh82YrV", "price": 72, "refundedTime": "1990-01-13T00:00:00Z", "salesTax": 94, "sandbox": false, "sku": "XKklppWIFS3KD8uc", "status": "CHARGED", "statusReason": "vUFHnxlwt7aRiFAt", "subscriptionId": "DCys7Q9Ee7Gk95GK", "subtotalPrice": 37, "targetNamespace": "TkoBPVgTOwTJQMaA", "targetUserId": "KLuFYVIKcdKAx9W4", "tax": 35, "totalPrice": 73, "totalTax": 89, "txEndTime": "1984-04-02T00:00:00Z", "type": "Ie9NWSDQOOWDSo2R", "userId": "q89QuQfiRXer9Pmy", "vat": 57}' \
    > test.out 2>&1
eval_tap $? 300 'ProcessUserSubscriptionNotification' test.out

#- 301 AcquireUserTicket
samples/cli/sample-apps Platform acquireUserTicket \
    --boothName 'DZebZv0VYUzI69lF' \
    --namespace $AB_NAMESPACE \
    --userId '1dD0yszi9oB261Xd' \
    --body '{"count": 76, "orderNo": "mr2D4TpfyRtlrXLa"}' \
    > test.out 2>&1
eval_tap $? 301 'AcquireUserTicket' test.out

#- 302 QueryUserCurrencyWallets
samples/cli/sample-apps Platform queryUserCurrencyWallets \
    --namespace $AB_NAMESPACE \
    --userId 'XYCIHCCCk55WsK0g' \
    > test.out 2>&1
eval_tap $? 302 'QueryUserCurrencyWallets' test.out

#- 303 DebitUserWalletByCurrencyCode
samples/cli/sample-apps Platform debitUserWalletByCurrencyCode \
    --currencyCode 'RZbyLhWulg6s08Ne' \
    --namespace $AB_NAMESPACE \
    --userId '90Z7SygP17xvsIzm' \
    --body '{"allowOverdraft": false, "amount": 98, "balanceOrigin": "Playstation", "balanceSource": "EXPIRATION", "metadata": {"pJq8gCtaUT5GaQQ4": {}, "9JXvx4BucRPWMqwL": {}, "aObNQCZG2UW9GrG4": {}}, "reason": "dHK8qLrzuT6buwKy"}' \
    > test.out 2>&1
eval_tap $? 303 'DebitUserWalletByCurrencyCode' test.out

#- 304 ListUserCurrencyTransactions
samples/cli/sample-apps Platform listUserCurrencyTransactions \
    --currencyCode '0leYOC0uWlydHxKw' \
    --namespace $AB_NAMESPACE \
    --userId 'IxR6z5fltuD7DWyj' \
    --limit '16' \
    --offset '41' \
    > test.out 2>&1
eval_tap $? 304 'ListUserCurrencyTransactions' test.out

#- 305 CheckBalance
samples/cli/sample-apps Platform checkBalance \
    --currencyCode 'bGD0BLhloR6CZ2dk' \
    --namespace $AB_NAMESPACE \
    --userId '1MR2fqSGEgSUVzDG' \
    --request '{"amount": 22, "debitBalanceSource": "EXPIRATION", "metadata": {"wYRxErxRZOvHoy7w": {}, "5soejKMUAivFoPiO": {}, "6fezOMaSdCaWy0Yl": {}}, "reason": "YRdGFMJSxuZeXElY", "walletPlatform": "Xbox"}' \
    > test.out 2>&1
eval_tap $? 305 'CheckBalance' test.out

#- 306 CheckWallet
eval_tap 0 306 'CheckWallet # SKIP deprecated' test.out

#- 307 CreditUserWallet
samples/cli/sample-apps Platform creditUserWallet \
    --currencyCode 'qf4ggiOFdHcWXO3i' \
    --namespace $AB_NAMESPACE \
    --userId 'xLD46DRhS8s7cl1M' \
    --body '{"amount": 8, "expireAt": "1996-08-26T00:00:00Z", "metadata": {"tPDBEvDaArH0jbUp": {}, "gUCGLEJcybWoHGRs": {}, "SladR9RUrvImNivU": {}}, "origin": "Playstation", "reason": "iJ3uKH41FyOFakl9", "source": "DLC"}' \
    > test.out 2>&1
eval_tap $? 307 'CreditUserWallet' test.out

#- 308 DebitByWalletPlatform
samples/cli/sample-apps Platform debitByWalletPlatform \
    --currencyCode 'wqttu8AZlZkb3a1D' \
    --namespace $AB_NAMESPACE \
    --userId 'rHRjjOpGS4ziYGND' \
    --request '{"amount": 80, "debitBalanceSource": "TRADE", "metadata": {"RJP35Yw3YYIfODku": {}, "GGhREe2TnL4ePOQO": {}, "sOUPsf3RIrJnjAYL": {}}, "reason": "rXGzEPDtFgZhVeJY", "walletPlatform": "Oculus"}' \
    > test.out 2>&1
eval_tap $? 308 'DebitByWalletPlatform' test.out

#- 309 PayWithUserWallet
samples/cli/sample-apps Platform payWithUserWallet \
    --currencyCode 'Cv2gvXHbSCxzr7qR' \
    --namespace $AB_NAMESPACE \
    --userId 'YPoVkeGjTNKCraZ0' \
    --body '{"amount": 35, "metadata": {"F7QRFjEwz4l2HJCF": {}, "TqHTXZpgxD3Isz1a": {}, "vvZgc3M55PAWT8zK": {}}, "walletPlatform": "GooglePlay"}' \
    > test.out 2>&1
eval_tap $? 309 'PayWithUserWallet' test.out

#- 310 GetUserWallet
eval_tap 0 310 'GetUserWallet # SKIP deprecated' test.out

#- 311 DebitUserWallet
eval_tap 0 311 'DebitUserWallet # SKIP deprecated' test.out

#- 312 DisableUserWallet
eval_tap 0 312 'DisableUserWallet # SKIP deprecated' test.out

#- 313 EnableUserWallet
eval_tap 0 313 'EnableUserWallet # SKIP deprecated' test.out

#- 314 ListUserWalletTransactions
eval_tap 0 314 'ListUserWalletTransactions # SKIP deprecated' test.out

#- 315 ListViews
samples/cli/sample-apps Platform listViews \
    --namespace $AB_NAMESPACE \
    --storeId 'TQzsIYa7qgoRLVV1' \
    > test.out 2>&1
eval_tap $? 315 'ListViews' test.out

#- 316 CreateView
samples/cli/sample-apps Platform createView \
    --namespace $AB_NAMESPACE \
    --storeId 'S1EtY6WT947K1VMr' \
    --body '{"displayOrder": 77, "localizations": {"CI29RWJ8EGDF9GKU": {"description": "SRLO6kcXlSwxBGS0", "localExt": {"WFSEdFzuzFDaBFes": {}, "SMBT6aUwes4rDAeh": {}, "KsqzCO711Y5n5LXy": {}}, "longDescription": "sbaZ3dnJHCtqb2E3", "title": "9GDaybhqsS0HD8WU"}, "8XjQyjwd628RZXXF": {"description": "IncMrjL67Ue72wys", "localExt": {"aHiiNNpZv3eek5V1": {}, "RkOJ1IfQhSNezuuu": {}, "TCWWfHA1yDFjxpcY": {}}, "longDescription": "XcfwW88DJiBmvNhN", "title": "HUxyaaQTzetUl4Nm"}, "pOUH9dosNwOH1Gb2": {"description": "3uoYs1uXhUb1Ooed", "localExt": {"fvi3SndgXLSy4Z4r": {}, "mNnjX9vyswe0mJ5w": {}, "LwR7Elfh6G7nECss": {}}, "longDescription": "XoGuP3Iv4HTEV7y7", "title": "YEfLlgacjH5Zoj88"}}, "name": "zsgnmT586J0YG4do"}' \
    > test.out 2>&1
eval_tap $? 316 'CreateView' test.out

#- 317 GetView
samples/cli/sample-apps Platform getView \
    --namespace $AB_NAMESPACE \
    --viewId 'gf1pck4vqD35ylHB' \
    --storeId 'CJQnQ2Ya7cO3gDHX' \
    > test.out 2>&1
eval_tap $? 317 'GetView' test.out

#- 318 UpdateView
samples/cli/sample-apps Platform updateView \
    --namespace $AB_NAMESPACE \
    --viewId 'JoocMbXNkXk4p9I2' \
    --storeId 'RCFl2hMHWfmwXLdj' \
    --body '{"displayOrder": 35, "localizations": {"B6ayvLa4hCTy8nuq": {"description": "myo2gRCii3n97iyt", "localExt": {"LdzEecbyzzbJbWAi": {}, "p2mo4tEqc032otj6": {}, "yxzGcdrm2LfbFUTT": {}}, "longDescription": "cTbvK3HzFt5D7OhL", "title": "FdWLCznq3zah3l4Y"}, "FgYNja6HOXGV6Fn6": {"description": "Ixf4k7RNW1raD13j", "localExt": {"y6uBK6M7e3LAmC2y": {}, "gsH20i2ThUDAtAas": {}, "ud7jV2oRtp2Tt4Nw": {}}, "longDescription": "NHdAyJaSJtIQG9Ds", "title": "wC30RWZJDLuxoSEa"}, "DxwY8E51L2fny1Lb": {"description": "uD6ZhzTLj3s03kil", "localExt": {"Gkz6KzPWtSWaFIBS": {}, "262iWHVFDgrKnbOQ": {}, "3HYHew5zjnrE0KWC": {}}, "longDescription": "8FXzXOohVY9trC5F", "title": "bkn80FEWW8tlv8Qj"}}, "name": "ricoZYT3RuUkDrR6"}' \
    > test.out 2>&1
eval_tap $? 318 'UpdateView' test.out

#- 319 DeleteView
samples/cli/sample-apps Platform deleteView \
    --namespace $AB_NAMESPACE \
    --viewId 'J0SNTHFUNJcye3i2' \
    --storeId 'xfdcTMX8QspEbWQS' \
    > test.out 2>&1
eval_tap $? 319 'DeleteView' test.out

#- 320 QueryWallets
eval_tap 0 320 'QueryWallets # SKIP deprecated' test.out

#- 321 BulkCredit
samples/cli/sample-apps Platform bulkCredit \
    --namespace $AB_NAMESPACE \
    --body '[{"creditRequest": {"amount": 77, "expireAt": "1999-02-10T00:00:00Z", "metadata": {"yu0hiPmU10etv5Zh": {}, "veFKNN5aOD5LUbyQ": {}, "KmyJGqk3EhkK7xnM": {}}, "origin": "IOS", "reason": "xC20GYwUYqNrRq3b", "source": "REFUND"}, "currencyCode": "CnWpJY6WS6sU3ssA", "userIds": ["pOq7MONzwvrHoF1w", "AX1QMrdL8M0qN0Ld", "JZUesIGUV4KAuFQP"]}, {"creditRequest": {"amount": 40, "expireAt": "1973-05-23T00:00:00Z", "metadata": {"RwozqP3hZQMhnJaX": {}, "q5aFwDeHWsZvKYqW": {}, "y8lmK3HiHjIgXPra": {}}, "origin": "System", "reason": "NiDeVgwPgaK1nzBl", "source": "IAP_CHARGEBACK_REVERSED"}, "currencyCode": "fYyDY8cClkLCfKX0", "userIds": ["regVaQrSVKo5Ot0h", "8bBxM2GnViODEAOF", "8fBA8Dx1HWGIBcqb"]}, {"creditRequest": {"amount": 78, "expireAt": "1981-01-12T00:00:00Z", "metadata": {"s9XYwKHRXGFW7FEW": {}, "AnYtRo1nN38J8jxE": {}, "8wh6LFlKL37mDSZV": {}}, "origin": "Steam", "reason": "8HqUmPsqMznWJPu1", "source": "GIFT"}, "currencyCode": "V7v4OMxkID9voOGK", "userIds": ["e3pvsFy3gfGNY5kB", "DHzv6u3LD4dhcYU0", "3AeAQ6MhelwYEF8r"]}]' \
    > test.out 2>&1
eval_tap $? 321 'BulkCredit' test.out

#- 322 BulkDebit
samples/cli/sample-apps Platform bulkDebit \
    --namespace $AB_NAMESPACE \
    --body '[{"currencyCode": "Xy5uzolo69j9FHst", "request": {"allowOverdraft": true, "amount": 25, "balanceOrigin": "Twitch", "balanceSource": "DLC_REVOCATION", "metadata": {"7XkvWox3GwDcTmZa": {}, "swzzuvgLIWfBJR0g": {}, "Sqyc8uAvarEwPsHF": {}}, "reason": "HgF5ViwVrXgoUhdX"}, "userIds": ["KW49RajUtolv25pH", "FBvEib1R8pOczoNW", "kIH9sxl6PK4uVo3A"]}, {"currencyCode": "XYEE5QveoVRX1UxM", "request": {"allowOverdraft": false, "amount": 92, "balanceOrigin": "Xbox", "balanceSource": "TRADE", "metadata": {"Ggefod1hUDXK58X7": {}, "gWdrYpkhvKAHecR8": {}, "Gs1nKEaEjiy1W97x": {}}, "reason": "re3dRFpeMACF3LxL"}, "userIds": ["8nxMlWgNWjPdF5Wo", "8J5pc26fuwloE9Wv", "urLCHcapah6G2kI8"]}, {"currencyCode": "QdofBZ6NJBzxdIzn", "request": {"allowOverdraft": true, "amount": 22, "balanceOrigin": "Steam", "balanceSource": "OTHER", "metadata": {"PUBCT874CkyFjlg5": {}, "lmsWvigIbzUf8WkG": {}, "QGrYcHNCjYv9QBY5": {}}, "reason": "3BzIO1QghYpA9AvP"}, "userIds": ["zBTqSZpySWzbo13j", "PzpqTFdBiAB5m3cb", "ortvys6vZMlp4KFR"]}]' \
    > test.out 2>&1
eval_tap $? 322 'BulkDebit' test.out

#- 323 GetWallet
eval_tap 0 323 'GetWallet # SKIP deprecated' test.out

#- 324 SyncOrders
samples/cli/sample-apps Platform syncOrders \
    --nextEvaluatedKey '8ADlM7wcfT2zZlXW' \
    --end 'oSJCwI5GYaty7kIQ' \
    --start 'GDEZg1RRCTXVZMTh' \
    > test.out 2>&1
eval_tap $? 324 'SyncOrders' test.out

#- 325 TestAdyenConfig
samples/cli/sample-apps Platform testAdyenConfig \
    --sandbox 'false' \
    --body '{"allowedPaymentMethods": ["wC1cga0rZtqh7you", "EsMyr3FzKbzjhLZj", "jqYBxfTJOA0ya9zw"], "apiKey": "y2up1ifwOJEX4niM", "authoriseAsCapture": true, "blockedPaymentMethods": ["xNQnaXmjXucO1vak", "MljPpv5bKhRnP4V4", "SfSOMkg5J8FVqMZG"], "clientKey": "HQUDYtGnYVb4oxlZ", "dropInSettings": "3z0Nkb0zRgKAkbgD", "liveEndpointUrlPrefix": "zz8QKM2b1xJoBtzg", "merchantAccount": "UlaStbazZzv66vv2", "notificationHmacKey": "yzIrIL1LnTJgZHPt", "notificationPassword": "MNRXzKeBhnI7GzRB", "notificationUsername": "sg2B4zHYnLbNUu3E", "returnUrl": "8BFAfzR6RsN1mOaK", "settings": "YtFlrVDqu02bjNwF"}' \
    > test.out 2>&1
eval_tap $? 325 'TestAdyenConfig' test.out

#- 326 TestAliPayConfig
samples/cli/sample-apps Platform testAliPayConfig \
    --sandbox 'false' \
    --body '{"appId": "nWFnnHhhX4usxiE5", "privateKey": "Se57eNYh7v1tSs2b", "publicKey": "fmwjCa1DKN0aN6Cd", "returnUrl": "b9SySrUAZfzB8tYa"}' \
    > test.out 2>&1
eval_tap $? 326 'TestAliPayConfig' test.out

#- 327 TestCheckoutConfig
samples/cli/sample-apps Platform testCheckoutConfig \
    --sandbox 'false' \
    --body '{"publicKey": "lIE4GR3Ugoa32fQK", "secretKey": "eHMi5tTv47C0EIFo"}' \
    > test.out 2>&1
eval_tap $? 327 'TestCheckoutConfig' test.out

#- 328 DebugMatchedPaymentMerchantConfig
samples/cli/sample-apps Platform debugMatchedPaymentMerchantConfig \
    --namespace 'D30hsEWp46MZNIdu' \
    --region 'Gtv1PVp2Y93SrVRF' \
    > test.out 2>&1
eval_tap $? 328 'DebugMatchedPaymentMerchantConfig' test.out

#- 329 TestNeonPayConfig
samples/cli/sample-apps Platform testNeonPayConfig \
    --sandbox 'false' \
    --body '{"apiKey": "auSDFiioNO9KNAF7", "webhookSecretKey": "aUbVnvu1IcjJMhDp"}' \
    > test.out 2>&1
eval_tap $? 329 'TestNeonPayConfig' test.out

#- 330 TestPayPalConfig
samples/cli/sample-apps Platform testPayPalConfig \
    --sandbox 'false' \
    --body '{"clientID": "nikYVImJjhCjEyu9", "clientSecret": "PqgZqKzu4cykajfl", "returnUrl": "iXYvWhK6uSDL7YIy", "webHookId": "xgBooOYJIm5UP4HN"}' \
    > test.out 2>&1
eval_tap $? 330 'TestPayPalConfig' test.out

#- 331 TestStripeConfig
samples/cli/sample-apps Platform testStripeConfig \
    --sandbox 'true' \
    --body '{"allowedPaymentMethodTypes": ["U8Fw4CQrA6f4iWzP", "TbgYFDdrVNYQIytQ", "J3d5fe0JFX19EAUW"], "publishableKey": "VhPvobqtPUirLSHH", "secretKey": "Z4oLewG5IsIwidVi", "webhookSecret": "6IFE3cwQKAKMlNvH"}' \
    > test.out 2>&1
eval_tap $? 331 'TestStripeConfig' test.out

#- 332 TestWxPayConfig
samples/cli/sample-apps Platform testWxPayConfig \
    --body '{"appId": "bRTmLyLNefwX93Gd", "key": "KPgoDRUPEWpdQq4d", "mchid": "zhdnvPQhTPjjlKHV", "returnUrl": "xU0RpmQmWhdj3TkO"}' \
    > test.out 2>&1
eval_tap $? 332 'TestWxPayConfig' test.out

#- 333 TestXsollaConfig
samples/cli/sample-apps Platform testXsollaConfig \
    --body '{"apiKey": "rP9UBU3vG5y8KvjC", "flowCompletionUrl": "DpZoH1WJ3MO8Qigy", "merchantId": 4, "projectId": 87, "projectSecretKey": "VnPkurhYFGAN1Uo0"}' \
    > test.out 2>&1
eval_tap $? 333 'TestXsollaConfig' test.out

#- 334 GetPaymentMerchantConfig1
samples/cli/sample-apps Platform getPaymentMerchantConfig1 \
    --id '15U1ntcCranyV9zh' \
    > test.out 2>&1
eval_tap $? 334 'GetPaymentMerchantConfig1' test.out

#- 335 UpdateAdyenConfig
samples/cli/sample-apps Platform updateAdyenConfig \
    --id 'u45pFRAbP4c3omaC' \
    --sandbox 'false' \
    --validate 'false' \
    --body '{"allowedPaymentMethods": ["8naUnWa58iOPm7k0", "XaAGy9NqSVKnC2EN", "PiLUoFWieiZLbHJM"], "apiKey": "Ebnsc1DFBReWjaTO", "authoriseAsCapture": false, "blockedPaymentMethods": ["SFoHitj8qItEanGB", "a0fAxXiSOqQ6si9K", "QFluq4atJm45lYZg"], "clientKey": "5FFzZBJIUd9zW7lT", "dropInSettings": "xVly0owO6mks77JU", "liveEndpointUrlPrefix": "kh1w4gh3EnrvZENK", "merchantAccount": "ujEVg4ZTQ1th63vP", "notificationHmacKey": "GBUzbS8ek0N5XObd", "notificationPassword": "Bs4pnoNW5n7ec4CB", "notificationUsername": "C16MJ5xHjzxCvCll", "returnUrl": "zLhk1EQpWFFxHRcR", "settings": "Ra5I6kgvuXZZUrZn"}' \
    > test.out 2>&1
eval_tap $? 335 'UpdateAdyenConfig' test.out

#- 336 TestAdyenConfigById
samples/cli/sample-apps Platform testAdyenConfigById \
    --id 'Q3ggxzwo7LzbwVCC' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 336 'TestAdyenConfigById' test.out

#- 337 UpdateAliPayConfig
samples/cli/sample-apps Platform updateAliPayConfig \
    --id 'nozOPMyAhChQ6Box' \
    --sandbox 'false' \
    --validate 'true' \
    --body '{"appId": "oe0FgcgLBu507uWX", "privateKey": "c0hhoTDvpf5uVCex", "publicKey": "3Rm6ptXYBhtVasFp", "returnUrl": "pmYT70tMkYyYtOtO"}' \
    > test.out 2>&1
eval_tap $? 337 'UpdateAliPayConfig' test.out

#- 338 TestAliPayConfigById
samples/cli/sample-apps Platform testAliPayConfigById \
    --id '7EsrjhWtupC7t3HG' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 338 'TestAliPayConfigById' test.out

#- 339 UpdateCheckoutConfig
samples/cli/sample-apps Platform updateCheckoutConfig \
    --id 'BPg8vJCOPxJyhb8D' \
    --sandbox 'false' \
    --validate 'false' \
    --body '{"publicKey": "A2sR8Ju00tDhwnzy", "secretKey": "P9pZI5mQX2wPxL9o"}' \
    > test.out 2>&1
eval_tap $? 339 'UpdateCheckoutConfig' test.out

#- 340 TestCheckoutConfigById
samples/cli/sample-apps Platform testCheckoutConfigById \
    --id 'JZOu5xARpjBi1EKo' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 340 'TestCheckoutConfigById' test.out

#- 341 UpdateNeonPayConfig
samples/cli/sample-apps Platform updateNeonPayConfig \
    --id 'cFdYcfS05RPCBREg' \
    --sandbox 'false' \
    --validate 'true' \
    --body '{"apiKey": "hgDTcvcKprEAboaL", "webhookSecretKey": "8f8JTsqM6P1zyyHb"}' \
    > test.out 2>&1
eval_tap $? 341 'UpdateNeonPayConfig' test.out

#- 342 TestNeonPayConfigById
samples/cli/sample-apps Platform testNeonPayConfigById \
    --id 'yuSqtSX8vjIW4YHz' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 342 'TestNeonPayConfigById' test.out

#- 343 UpdatePayPalConfig
samples/cli/sample-apps Platform updatePayPalConfig \
    --id 'apm5XrMtR0fXE4Q1' \
    --sandbox 'false' \
    --validate 'true' \
    --body '{"clientID": "2ZlCWlK83nwtkqwy", "clientSecret": "PgvAHeZEVSyXND3x", "returnUrl": "YAMRNmJrgisesYUU", "webHookId": "WTznfCFtaIwQnSoV"}' \
    > test.out 2>&1
eval_tap $? 343 'UpdatePayPalConfig' test.out

#- 344 TestPayPalConfigById
samples/cli/sample-apps Platform testPayPalConfigById \
    --id 'Wel1UA6O255wrgaZ' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 344 'TestPayPalConfigById' test.out

#- 345 UpdateStripeConfig
samples/cli/sample-apps Platform updateStripeConfig \
    --id '3oB7DErliAgWRcHW' \
    --sandbox 'false' \
    --validate 'false' \
    --body '{"allowedPaymentMethodTypes": ["05UrheF3SWCNUG5j", "SjtkEzKwuJudu88C", "C64vcPxjo2gycmTU"], "publishableKey": "RSftzqS2UNYKKtxG", "secretKey": "9GtDAU4dj00OmvYk", "webhookSecret": "ZzdzlN66M4eqERBG"}' \
    > test.out 2>&1
eval_tap $? 345 'UpdateStripeConfig' test.out

#- 346 TestStripeConfigById
samples/cli/sample-apps Platform testStripeConfigById \
    --id 'vtPtZSqcy7HBEkmh' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 346 'TestStripeConfigById' test.out

#- 347 UpdateWxPayConfig
samples/cli/sample-apps Platform updateWxPayConfig \
    --id 'EYJwB7ip6vlX7jlF' \
    --validate 'false' \
    --body '{"appId": "pYOp6puOLUoOTXnt", "key": "aCeLFnxDPcIMfky8", "mchid": "Lg2Yd4B4ebt07ZOp", "returnUrl": "WzEdHZkx5XZcs4pw"}' \
    > test.out 2>&1
eval_tap $? 347 'UpdateWxPayConfig' test.out

#- 348 UpdateWxPayConfigCert
samples/cli/sample-apps Platform updateWxPayConfigCert \
    --id 'fwCD4xYEEF18jy2N' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 348 'UpdateWxPayConfigCert' test.out

#- 349 TestWxPayConfigById
samples/cli/sample-apps Platform testWxPayConfigById \
    --id 'qysEaM7rrsQJad7k' \
    > test.out 2>&1
eval_tap $? 349 'TestWxPayConfigById' test.out

#- 350 UpdateXsollaConfig
samples/cli/sample-apps Platform updateXsollaConfig \
    --id 'X8C7kq8oDGPoL805' \
    --validate 'false' \
    --body '{"apiKey": "78hEZ97yghSeYXQO", "flowCompletionUrl": "w3RRMpT2LOehlwVn", "merchantId": 51, "projectId": 71, "projectSecretKey": "eFds5tufbTO1gSl9"}' \
    > test.out 2>&1
eval_tap $? 350 'UpdateXsollaConfig' test.out

#- 351 TestXsollaConfigById
samples/cli/sample-apps Platform testXsollaConfigById \
    --id 'NETjr6YOcZ5IXk9a' \
    > test.out 2>&1
eval_tap $? 351 'TestXsollaConfigById' test.out

#- 352 UpdateXsollaUIConfig
samples/cli/sample-apps Platform updateXsollaUIConfig \
    --id 'Iq2CYFGYZNMFscUe' \
    --body '{"device": "DESKTOP", "showCloseButton": true, "size": "LARGE", "theme": "DEFAULT_DARK"}' \
    > test.out 2>&1
eval_tap $? 352 'UpdateXsollaUIConfig' test.out

#- 353 QueryPaymentProviderConfig
samples/cli/sample-apps Platform queryPaymentProviderConfig \
    --limit '68' \
    --namespace 'oxGu07gy9qpTk8yE' \
    --offset '91' \
    --region 'Gabvic9VbP6d3L5t' \
    > test.out 2>&1
eval_tap $? 353 'QueryPaymentProviderConfig' test.out

#- 354 CreatePaymentProviderConfig
samples/cli/sample-apps Platform createPaymentProviderConfig \
    --body '{"aggregate": "CHECKOUT", "namespace": "QqbaB1C73Doj81Xu", "region": "b6yAjTLG7lUAREHr", "sandboxTaxJarApiToken": "h2IeP5RpELuUvhBn", "specials": ["WALLET", "ADYEN", "WXPAY"], "taxJarApiToken": "vnLq8znaY4368cMy", "taxJarEnabled": false, "useGlobalTaxJarApiToken": false}' \
    > test.out 2>&1
eval_tap $? 354 'CreatePaymentProviderConfig' test.out

#- 355 GetAggregatePaymentProviders
samples/cli/sample-apps Platform getAggregatePaymentProviders \
    > test.out 2>&1
eval_tap $? 355 'GetAggregatePaymentProviders' test.out

#- 356 DebugMatchedPaymentProviderConfig
samples/cli/sample-apps Platform debugMatchedPaymentProviderConfig \
    --namespace 'Xwm9ULVA8PxgtmGx' \
    --region 'XAMQE0684E3hOIgW' \
    > test.out 2>&1
eval_tap $? 356 'DebugMatchedPaymentProviderConfig' test.out

#- 357 GetSpecialPaymentProviders
samples/cli/sample-apps Platform getSpecialPaymentProviders \
    > test.out 2>&1
eval_tap $? 357 'GetSpecialPaymentProviders' test.out

#- 358 UpdatePaymentProviderConfig
samples/cli/sample-apps Platform updatePaymentProviderConfig \
    --id 'arGEqLH2QYfW243K' \
    --body '{"aggregate": "ADYEN", "namespace": "KQAWtIrmVKfxfNNT", "region": "CWcA579RKGKdF1u8", "sandboxTaxJarApiToken": "IfGnUGx9cD7hGbg0", "specials": ["XSOLLA", "XSOLLA", "XSOLLA"], "taxJarApiToken": "hDWXOhrYIvVlI3pM", "taxJarEnabled": true, "useGlobalTaxJarApiToken": true}' \
    > test.out 2>&1
eval_tap $? 358 'UpdatePaymentProviderConfig' test.out

#- 359 DeletePaymentProviderConfig
samples/cli/sample-apps Platform deletePaymentProviderConfig \
    --id 'ZiZbjAm3tCi2VMKx' \
    > test.out 2>&1
eval_tap $? 359 'DeletePaymentProviderConfig' test.out

#- 360 GetPaymentTaxConfig
samples/cli/sample-apps Platform getPaymentTaxConfig \
    > test.out 2>&1
eval_tap $? 360 'GetPaymentTaxConfig' test.out

#- 361 UpdatePaymentTaxConfig
samples/cli/sample-apps Platform updatePaymentTaxConfig \
    --body '{"sandboxTaxJarApiToken": "J43vu68rOlC3nxUc", "taxJarApiToken": "8klrVYVFB3rOsk0v", "taxJarEnabled": false, "taxJarProductCodesMapping": {"1PyYtMkRDild9aif": "vRhJ5NLKpSpR31Gn", "zwr4fP7KF8NCMyuY": "EBQ7dXmyGRhRG3WP", "RQ1hjgidipBaRmDK": "wcrDNGwUErnTADhd"}}' \
    > test.out 2>&1
eval_tap $? 361 'UpdatePaymentTaxConfig' test.out

#- 362 SyncPaymentOrders
samples/cli/sample-apps Platform syncPaymentOrders \
    --nextEvaluatedKey 'R3bG4Yzf2ckljPhC' \
    --end 'x1JYSgMUHL6Fqq6y' \
    --start '8GjPvBHy8pO8wisi' \
    > test.out 2>&1
eval_tap $? 362 'SyncPaymentOrders' test.out

#- 363 PublicGetRootCategories
samples/cli/sample-apps Platform publicGetRootCategories \
    --namespace $AB_NAMESPACE \
    --language 'OLOrsoOMylNihI1c' \
    --storeId 'YBWDP6zBiw93mymf' \
    > test.out 2>&1
eval_tap $? 363 'PublicGetRootCategories' test.out

#- 364 DownloadCategories
samples/cli/sample-apps Platform downloadCategories \
    --namespace $AB_NAMESPACE \
    --language 'YKj4q9ex99QmFu4w' \
    --storeId 'cuWjTbLtLU5FRUMt' \
    > test.out 2>&1
eval_tap $? 364 'DownloadCategories' test.out

#- 365 PublicGetCategory
samples/cli/sample-apps Platform publicGetCategory \
    --categoryPath 'Ax3gxHJVwm9A0wbX' \
    --namespace $AB_NAMESPACE \
    --language 'S312StTZkdkqTjA1' \
    --storeId 'hRdAKr0lMGDmOSGI' \
    > test.out 2>&1
eval_tap $? 365 'PublicGetCategory' test.out

#- 366 PublicGetChildCategories
samples/cli/sample-apps Platform publicGetChildCategories \
    --categoryPath 'sthxYCCRROb8zxxD' \
    --namespace $AB_NAMESPACE \
    --language 'wFvLzMBtlNILrVRU' \
    --storeId 'zkKOUFVR4gkHC0hx' \
    > test.out 2>&1
eval_tap $? 366 'PublicGetChildCategories' test.out

#- 367 PublicGetDescendantCategories
samples/cli/sample-apps Platform publicGetDescendantCategories \
    --categoryPath 'KFm2Os5uJY34Eihm' \
    --namespace $AB_NAMESPACE \
    --language 'sVEH1jRE3zbVYHD7' \
    --storeId 'oG5KShpuH5TlVXvw' \
    > test.out 2>&1
eval_tap $? 367 'PublicGetDescendantCategories' test.out

#- 368 PublicListCurrencies
samples/cli/sample-apps Platform publicListCurrencies \
    --namespace $AB_NAMESPACE \
    --currencyType 'REAL' \
    > test.out 2>&1
eval_tap $? 368 'PublicListCurrencies' test.out

#- 369 GeDLCDurableRewardShortMap
samples/cli/sample-apps Platform geDLCDurableRewardShortMap \
    --namespace $AB_NAMESPACE \
    --dlcType 'PSN' \
    > test.out 2>&1
eval_tap $? 369 'GeDLCDurableRewardShortMap' test.out

#- 370 GetIAPItemMapping
samples/cli/sample-apps Platform getIAPItemMapping \
    --namespace $AB_NAMESPACE \
    --platform 'PLAYSTATION' \
    > test.out 2>&1
eval_tap $? 370 'GetIAPItemMapping' test.out

#- 371 PublicGetItemByAppId
samples/cli/sample-apps Platform publicGetItemByAppId \
    --namespace $AB_NAMESPACE \
    --language 'AmnZ2D0kY9lYCPQc' \
    --region 'F84u0jHNEt7sNwrF' \
    --storeId '9PfAS8uZv7CfNTis' \
    --appId '314lgLS6E8G75Wc3' \
    > test.out 2>&1
eval_tap $? 371 'PublicGetItemByAppId' test.out

#- 372 PublicQueryItems
samples/cli/sample-apps Platform publicQueryItems \
    --namespace $AB_NAMESPACE \
    --appType 'DEMO' \
    --autoCalcEstimatedPrice 'false' \
    --baseAppId 'pcrpDGpXZ35NkVYJ' \
    --categoryPath 'st8woW9cEOC2GhUn' \
    --features 'QIkcYy9GJCFozY6d' \
    --includeSubCategoryItem 'false' \
    --itemType 'OPTIONBOX' \
    --language '8deW44JLgXbd40T6' \
    --limit '51' \
    --offset '48' \
    --region 'SV95dHe4VzZ65IIC' \
    --sortBy '["createdAt:asc", "displayOrder:asc", "displayOrder:desc"]' \
    --storeId '5QNeAPXhbX6nwkv0' \
    --tags 'ezFzQXOzydhVW11L' \
    > test.out 2>&1
eval_tap $? 372 'PublicQueryItems' test.out

#- 373 PublicGetItemBySku
samples/cli/sample-apps Platform publicGetItemBySku \
    --namespace $AB_NAMESPACE \
    --autoCalcEstimatedPrice 'true' \
    --language '26Ei1l9htp21UzAy' \
    --region 'e4Gp6BnSJrRBDnYz' \
    --storeId 'SORl9giTAYXeBRJL' \
    --sku 'aNd0SccUYfjdfVPJ' \
    > test.out 2>&1
eval_tap $? 373 'PublicGetItemBySku' test.out

#- 374 PublicGetEstimatedPrice
samples/cli/sample-apps Platform publicGetEstimatedPrice \
    --namespace $AB_NAMESPACE \
    --region 'qrIFssLObyCm4KAT' \
    --storeId 'dtjdmKLFReA6KfJN' \
    --itemIds 'cwDZjiH4woq44oku' \
    > test.out 2>&1
eval_tap $? 374 'PublicGetEstimatedPrice' test.out

#- 375 PublicBulkGetItems
samples/cli/sample-apps Platform publicBulkGetItems \
    --namespace $AB_NAMESPACE \
    --autoCalcEstimatedPrice 'true' \
    --language '0gY4pXplWVj7C0La' \
    --region 'pffxAgBavqraqHPf' \
    --storeId 'PHaQyxEpI9vCqVkz' \
    --itemIds 'xOJEj6u3yoWE0wzt' \
    > test.out 2>&1
eval_tap $? 375 'PublicBulkGetItems' test.out

#- 376 PublicValidateItemPurchaseCondition
samples/cli/sample-apps Platform publicValidateItemPurchaseCondition \
    --namespace $AB_NAMESPACE \
    --body '{"itemIds": ["ZUjWi85lSDS9ZAFe", "nne6An02ROn082u8", "bRNazN4MQWBM6caS"]}' \
    > test.out 2>&1
eval_tap $? 376 'PublicValidateItemPurchaseCondition' test.out

#- 377 PublicSearchItems
samples/cli/sample-apps Platform publicSearchItems \
    --namespace $AB_NAMESPACE \
    --autoCalcEstimatedPrice 'false' \
    --itemType 'SUBSCRIPTION' \
    --limit '55' \
    --offset '11' \
    --region 'yeOcY0u5sXJXWfXW' \
    --storeId 'EEbXwmAhi1eNamms' \
    --keyword 'wmJlwBZOxfOb4MNj' \
    --language '6bj0C53RpZBUnm3q' \
    > test.out 2>&1
eval_tap $? 377 'PublicSearchItems' test.out

#- 378 PublicGetApp
samples/cli/sample-apps Platform publicGetApp \
    --itemId 'Mg7GzTrOP5PzNqqf' \
    --namespace $AB_NAMESPACE \
    --language 'u6ifBwV4axepXYHd' \
    --region 'T2bvdWsnjJpTYW2M' \
    --storeId 'aJZ7OonruQwjIMtc' \
    > test.out 2>&1
eval_tap $? 378 'PublicGetApp' test.out

#- 379 PublicGetItemDynamicData
samples/cli/sample-apps Platform publicGetItemDynamicData \
    --itemId 'WggJMunzZgTuDzZt' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 379 'PublicGetItemDynamicData' test.out

#- 380 PublicGetItem
samples/cli/sample-apps Platform publicGetItem \
    --itemId '5RrLCgI4Ks0iuyPJ' \
    --namespace $AB_NAMESPACE \
    --autoCalcEstimatedPrice 'false' \
    --language 'BFjHJsDkRvrXqXpS' \
    --populateBundle 'true' \
    --region 'UsyEhCfZJkM91Msc' \
    --storeId 'Gs0HqDLPYeOLrUi7' \
    > test.out 2>&1
eval_tap $? 380 'PublicGetItem' test.out

#- 381 GetPaymentCustomization
eval_tap 0 381 'GetPaymentCustomization # SKIP deprecated' test.out

#- 382 PublicGetPaymentUrl
samples/cli/sample-apps Platform publicGetPaymentUrl \
    --namespace $AB_NAMESPACE \
    --body '{"neonPayConfig": {"cancelUrl": "TnLy3nzgNpepEP0E", "successUrl": "ZGEcOKYCckgETAbw"}, "paymentOrderNo": "buW4BDMiWlyzOU10", "paymentProvider": "WALLET", "returnUrl": "4BncsAFWOvbUSYAn", "ui": "yWopt3RshUslThdK", "zipCode": "y6J3YEJnXaqdY457"}' \
    > test.out 2>&1
eval_tap $? 382 'PublicGetPaymentUrl' test.out

#- 383 PublicGetPaymentMethods
samples/cli/sample-apps Platform publicGetPaymentMethods \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'a9oKzUQhaZmVHjT3' \
    > test.out 2>&1
eval_tap $? 383 'PublicGetPaymentMethods' test.out

#- 384 PublicGetUnpaidPaymentOrder
samples/cli/sample-apps Platform publicGetUnpaidPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'zLcKUVq6pY83Qmjk' \
    > test.out 2>&1
eval_tap $? 384 'PublicGetUnpaidPaymentOrder' test.out

#- 385 Pay
samples/cli/sample-apps Platform pay \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'BHNXu4xA6E3qWudE' \
    --paymentProvider 'WALLET' \
    --zipCode 'hEHOQl1LHlVWfweq' \
    --body '{"token": "glcq9Sz8IPsbAXEt"}' \
    > test.out 2>&1
eval_tap $? 385 'Pay' test.out

#- 386 PublicCheckPaymentOrderPaidStatus
samples/cli/sample-apps Platform publicCheckPaymentOrderPaidStatus \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo '9sqHlDCo2txmylNC' \
    > test.out 2>&1
eval_tap $? 386 'PublicCheckPaymentOrderPaidStatus' test.out

#- 387 GetPaymentPublicConfig
samples/cli/sample-apps Platform getPaymentPublicConfig \
    --namespace $AB_NAMESPACE \
    --sandbox 'false' \
    --paymentProvider 'PAYPAL' \
    --region 'RuWtjQAeCy9tPTPa' \
    > test.out 2>&1
eval_tap $? 387 'GetPaymentPublicConfig' test.out

#- 388 PublicGetQRCode
samples/cli/sample-apps Platform publicGetQRCode \
    --namespace $AB_NAMESPACE \
    --code 'WakeBs963ds3xQpT' \
    > test.out 2>&1
eval_tap $? 388 'PublicGetQRCode' test.out

#- 389 PublicNormalizePaymentReturnUrl
samples/cli/sample-apps Platform publicNormalizePaymentReturnUrl \
    --namespace $AB_NAMESPACE \
    --payerID 'dlxS6R4VXOv8U03y' \
    --foreinginvoice 'J4wgWn8a6U0qq0b5' \
    --invoiceId 'esFXfgRbJT2aEbB7' \
    --payload 'xExAEOKnvaZEatRB' \
    --redirectResult 'B3UhjlbYF4vYcXpv' \
    --resultCode '2M7SyQJZ3bAXWXPD' \
    --sessionId 'JX56BUPMF3knhYrt' \
    --status 'J5uOJwwX5YNfSMDa' \
    --token 'hChUduAL2Sid6DEF' \
    --type 'vkjBHuzcyis99OFM' \
    --userId 'F4PWh84KI0VNn7bo' \
    --orderNo 'XXZpOk0QKKLH0bKG' \
    --paymentOrderNo 'rsNnRbISFPnMB0p3' \
    --paymentProvider 'ALIPAY' \
    --returnUrl 'UTcvZEGvMQiygRtR' \
    > test.out 2>&1
eval_tap $? 389 'PublicNormalizePaymentReturnUrl' test.out

#- 390 GetPaymentTaxValue
samples/cli/sample-apps Platform getPaymentTaxValue \
    --namespace $AB_NAMESPACE \
    --zipCode 'ZsHTyeIm9d27mahA' \
    --paymentOrderNo 'O1iK1dvsXEHcd9mV' \
    --paymentProvider 'PAYPAL' \
    > test.out 2>&1
eval_tap $? 390 'GetPaymentTaxValue' test.out

#- 391 GetRewardByCode
samples/cli/sample-apps Platform getRewardByCode \
    --namespace $AB_NAMESPACE \
    --rewardCode 'oE5pkAtxUVEnbIjT' \
    > test.out 2>&1
eval_tap $? 391 'GetRewardByCode' test.out

#- 392 QueryRewards1
samples/cli/sample-apps Platform queryRewards1 \
    --namespace $AB_NAMESPACE \
    --eventTopic 'N7ev614cR5L3wlFD' \
    --limit '84' \
    --offset '77' \
    --sortBy '["rewardCode:asc", "namespace", "namespace:desc"]' \
    > test.out 2>&1
eval_tap $? 392 'QueryRewards1' test.out

#- 393 GetReward1
samples/cli/sample-apps Platform getReward1 \
    --namespace $AB_NAMESPACE \
    --rewardId 'iY6flpc8KzVJo7w2' \
    > test.out 2>&1
eval_tap $? 393 'GetReward1' test.out

#- 394 PublicListStores
samples/cli/sample-apps Platform publicListStores \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 394 'PublicListStores' test.out

#- 395 PublicExistsAnyMyActiveEntitlement
samples/cli/sample-apps Platform publicExistsAnyMyActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --appIds '["yHHvmpfKvW9W5PJQ", "PusERcmlr8jRglbD", "ZB2LTawQo9RRkzok"]' \
    --itemIds '["lwTyxUu35qbNFLb4", "JakQQaduvDHxDCz9", "bbSVYDjAypBKpJ89"]' \
    --skus '["rgMniQXTx4xYTK9F", "ywhDII95Wb6iUY7T", "DRaxuvkRQvCs5Kga"]' \
    > test.out 2>&1
eval_tap $? 395 'PublicExistsAnyMyActiveEntitlement' test.out

#- 396 PublicGetMyAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform publicGetMyAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --appId 'QnCRTstN0zKueQmT' \
    > test.out 2>&1
eval_tap $? 396 'PublicGetMyAppEntitlementOwnershipByAppId' test.out

#- 397 PublicGetMyEntitlementOwnershipByItemId
samples/cli/sample-apps Platform publicGetMyEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --entitlementClazz 'ENTITLEMENT' \
    --itemId 'vft3c6xatcpe9wOU' \
    > test.out 2>&1
eval_tap $? 397 'PublicGetMyEntitlementOwnershipByItemId' test.out

#- 398 PublicGetMyEntitlementOwnershipBySku
samples/cli/sample-apps Platform publicGetMyEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --entitlementClazz 'SUBSCRIPTION' \
    --sku 'Lu2CGVhMFtlCzSdT' \
    > test.out 2>&1
eval_tap $? 398 'PublicGetMyEntitlementOwnershipBySku' test.out

#- 399 PublicGetEntitlementOwnershipToken
samples/cli/sample-apps Platform publicGetEntitlementOwnershipToken \
    --namespace $AB_NAMESPACE \
    --appIds '["WoaL4O8NN08kbI65", "VGYxhCgiCwirk0Xc", "aOKyu8WBRWPaXW8C"]' \
    --itemIds '["2NRRbIrP2KdcFv9C", "fnuE6g20AtN1iYm1", "KdEe4P4KwC7daYfB"]' \
    --skus '["2IIUQBd0fuNjrFp9", "U5lRI3kkRtm4NMmN", "RpFjELLTFWTtz5EM"]' \
    > test.out 2>&1
eval_tap $? 399 'PublicGetEntitlementOwnershipToken' test.out

#- 400 SyncTwitchDropsEntitlement
samples/cli/sample-apps Platform syncTwitchDropsEntitlement \
    --namespace $AB_NAMESPACE \
    --body '{"gameId": "8CZV1WWUS72P9vbU", "language": "VE_EhQq-843", "region": "gWz19DJ5lAxCk2Dm"}' \
    > test.out 2>&1
eval_tap $? 400 'SyncTwitchDropsEntitlement' test.out

#- 401 PublicGetMyWallet
samples/cli/sample-apps Platform publicGetMyWallet \
    --currencyCode 'zWNcCBMVK3uOiuF5' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 401 'PublicGetMyWallet' test.out

#- 402 SyncEpicGameDLC
samples/cli/sample-apps Platform syncEpicGameDLC \
    --namespace $AB_NAMESPACE \
    --userId 'LSJ3Vv4ipV1VkAhq' \
    --body '{"epicGamesJwtToken": "fpgduqIVOgqnIDEs"}' \
    > test.out 2>&1
eval_tap $? 402 'SyncEpicGameDLC' test.out

#- 403 SyncOculusDLC
samples/cli/sample-apps Platform syncOculusDLC \
    --namespace $AB_NAMESPACE \
    --userId 'c5r4ZTkBtEI5PmuW' \
    > test.out 2>&1
eval_tap $? 403 'SyncOculusDLC' test.out

#- 404 PublicSyncPsnDlcInventory
samples/cli/sample-apps Platform publicSyncPsnDlcInventory \
    --namespace $AB_NAMESPACE \
    --userId 'pr014ikkERvRAL98' \
    --body '{"serviceLabel": 35}' \
    > test.out 2>&1
eval_tap $? 404 'PublicSyncPsnDlcInventory' test.out

#- 405 PublicSyncPsnDlcInventoryWithMultipleServiceLabels
samples/cli/sample-apps Platform publicSyncPsnDlcInventoryWithMultipleServiceLabels \
    --namespace $AB_NAMESPACE \
    --userId 'yzUBqrsCqKjoMsgU' \
    --body '{"serviceLabels": [97, 4, 46]}' \
    > test.out 2>&1
eval_tap $? 405 'PublicSyncPsnDlcInventoryWithMultipleServiceLabels' test.out

#- 406 SyncSteamDLC
samples/cli/sample-apps Platform syncSteamDLC \
    --namespace $AB_NAMESPACE \
    --userId '3SNEHM9LaSD0XN76' \
    --body '{"appId": "HBuMBUsa6kwWw43n", "steamId": "4KmPQe9Lk1j6JXgk"}' \
    > test.out 2>&1
eval_tap $? 406 'SyncSteamDLC' test.out

#- 407 SyncXboxDLC
samples/cli/sample-apps Platform syncXboxDLC \
    --namespace $AB_NAMESPACE \
    --userId 'U0EaBWHmMcU0xFaI' \
    --body '{"xstsToken": "PFRovPTyGl4lwCOC"}' \
    > test.out 2>&1
eval_tap $? 407 'SyncXboxDLC' test.out

#- 408 PublicQueryUserEntitlements
samples/cli/sample-apps Platform publicQueryUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'H1HA7QEyXKPxyJ5Z' \
    --appType 'DEMO' \
    --entitlementClazz 'CODE' \
    --entitlementName 'LcDp983d2B3MjXLv' \
    --features '["Sb2AucQJcrPB4uvA", "79UsrvLZi3d8c1u2", "9xTD7EqFJwXwuIsJ"]' \
    --itemId '["kETsFPWlzL1fGq99", "ZlakndR1SLyZO3GT", "JuXad05IfFPyHJcj"]' \
    --limit '93' \
    --offset '64' \
    > test.out 2>&1
eval_tap $? 408 'PublicQueryUserEntitlements' test.out

#- 409 PublicGetUserAppEntitlementByAppId
samples/cli/sample-apps Platform publicGetUserAppEntitlementByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'MUOabpmaFo8TIPwa' \
    --appId 'xzkZlZeQk2fqifYD' \
    > test.out 2>&1
eval_tap $? 409 'PublicGetUserAppEntitlementByAppId' test.out

#- 410 PublicQueryUserEntitlementsByAppType
samples/cli/sample-apps Platform publicQueryUserEntitlementsByAppType \
    --namespace $AB_NAMESPACE \
    --userId 'tDJUiMGdQ1rbHPA5' \
    --limit '28' \
    --offset '38' \
    --appType 'SOFTWARE' \
    > test.out 2>&1
eval_tap $? 410 'PublicQueryUserEntitlementsByAppType' test.out

#- 411 PublicGetUserEntitlementsByIds
samples/cli/sample-apps Platform publicGetUserEntitlementsByIds \
    --namespace $AB_NAMESPACE \
    --userId 'wxzOcwAtiUktJ8Nf' \
    --availablePlatformOnly 'true' \
    --ids '["z5eYQGbsnc8TWwH5", "Iksqt6iTCBLM6XGv", "EltSilRNqguOMTc1"]' \
    > test.out 2>&1
eval_tap $? 411 'PublicGetUserEntitlementsByIds' test.out

#- 412 PublicGetUserEntitlementByItemId
eval_tap 0 412 'PublicGetUserEntitlementByItemId # SKIP deprecated' test.out

#- 413 PublicGetUserEntitlementBySku
eval_tap 0 413 'PublicGetUserEntitlementBySku # SKIP deprecated' test.out

#- 414 PublicUserEntitlementHistory
samples/cli/sample-apps Platform publicUserEntitlementHistory \
    --namespace $AB_NAMESPACE \
    --userId 'DTRfgPnMVAoyy1wu' \
    --endDate 'J1mtkXogUjao5B2o' \
    --entitlementClazz 'APP' \
    --limit '47' \
    --offset '84' \
    --startDate '9JimzoX3fgIr3GnP' \
    > test.out 2>&1
eval_tap $? 414 'PublicUserEntitlementHistory' test.out

#- 415 PublicExistsAnyUserActiveEntitlement
samples/cli/sample-apps Platform publicExistsAnyUserActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --userId '5c8kudwTtONsftyA' \
    --appIds '["7PvZbmmYZDsRkNa1", "SJxII3TLcU0mCFNS", "dwm2YdiPc3OowhIw"]' \
    --itemIds '["LW7WgXwDU1EQhPL7", "9RRXUAiDZSCqWADs", "oc6KELzp6KYfLEdm"]' \
    --skus '["NSnyjWNb2II2DHpp", "SZHhRq3hibMJBk8A", "E8ibqVg8K20Agut5"]' \
    > test.out 2>&1
eval_tap $? 415 'PublicExistsAnyUserActiveEntitlement' test.out

#- 416 PublicGetUserAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform publicGetUserAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'OOOG8r68fG3VoSAz' \
    --appId 'KeeLoqYktJTcnyAr' \
    > test.out 2>&1
eval_tap $? 416 'PublicGetUserAppEntitlementOwnershipByAppId' test.out

#- 417 PublicGetUserEntitlementOwnershipByItemId
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'GlpjRqNtrhgukh6K' \
    --entitlementClazz 'MEDIA' \
    --itemId 'E0SuSW0HQujkmO9V' \
    > test.out 2>&1
eval_tap $? 417 'PublicGetUserEntitlementOwnershipByItemId' test.out

#- 418 PublicGetUserEntitlementOwnershipByItemIds
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'Kz7IuCd7BL5J5isP' \
    --ids '["1l7jOZ9gzKLDpqwz", "VufkeHx1EsAJRYZS", "kehzAk8Sbnm1jjET"]' \
    > test.out 2>&1
eval_tap $? 418 'PublicGetUserEntitlementOwnershipByItemIds' test.out

#- 419 PublicGetUserEntitlementOwnershipBySku
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --userId 't00JDTVwpLlSRylv' \
    --entitlementClazz 'OPTIONBOX' \
    --sku '8GexjuLLBC846HCL' \
    > test.out 2>&1
eval_tap $? 419 'PublicGetUserEntitlementOwnershipBySku' test.out

#- 420 PublicGetUserEntitlement
samples/cli/sample-apps Platform publicGetUserEntitlement \
    --entitlementId 'KjVpOckToaJ1eJwj' \
    --namespace $AB_NAMESPACE \
    --userId '37J7AIuev4Jaja91' \
    > test.out 2>&1
eval_tap $? 420 'PublicGetUserEntitlement' test.out

#- 421 PublicConsumeUserEntitlement
samples/cli/sample-apps Platform publicConsumeUserEntitlement \
    --entitlementId 'PPQwr5bMX7iqMljG' \
    --namespace $AB_NAMESPACE \
    --userId 'R2CzUu6APsspyDMX' \
    --body '{"metadata": {"operationSource": "INVENTORY"}, "options": ["bfZDs8HTcpXtjGTs", "kOZtj1qfED7Dpmxk", "sxnUtc8PCTNDRQ8E"], "requestId": "TR3IEHEDFaAxpMc3", "useCount": 33}' \
    > test.out 2>&1
eval_tap $? 421 'PublicConsumeUserEntitlement' test.out

#- 422 PublicSellUserEntitlement
samples/cli/sample-apps Platform publicSellUserEntitlement \
    --entitlementId 'dI83SV2XuydDbloP' \
    --namespace $AB_NAMESPACE \
    --userId 'mjhIaAcvr8ImhomI' \
    --body '{"requestId": "l3wsZ8UeTvcOOukJ", "useCount": 70}' \
    > test.out 2>&1
eval_tap $? 422 'PublicSellUserEntitlement' test.out

#- 423 PublicSplitUserEntitlement
samples/cli/sample-apps Platform publicSplitUserEntitlement \
    --entitlementId '24ASTVgwHYm8CexF' \
    --namespace $AB_NAMESPACE \
    --userId 'S2Icv9SnZqylwszL' \
    --body '{"metadata": {"operationSource": "INVENTORY"}, "useCount": 53}' \
    > test.out 2>&1
eval_tap $? 423 'PublicSplitUserEntitlement' test.out

#- 424 PublicTransferUserEntitlement
samples/cli/sample-apps Platform publicTransferUserEntitlement \
    --entitlementId 'GGLiTZMX0hQbVF8K' \
    --namespace $AB_NAMESPACE \
    --userId 'dwsG6abYVGXUfTEL' \
    --body '{"entitlementId": "PXcM92FjpjUR8jOX", "metadata": {"operationSource": "INVENTORY"}, "useCount": 56}' \
    > test.out 2>&1
eval_tap $? 424 'PublicTransferUserEntitlement' test.out

#- 425 PublicRedeemCode
samples/cli/sample-apps Platform publicRedeemCode \
    --namespace $AB_NAMESPACE \
    --userId 'uW4aW5Bf4LG0OsD5' \
    --body '{"code": "dUrl341hfqZYIAHE", "language": "XrH_Vpvz", "region": "k7rDHIA4itbPbWFV"}' \
    > test.out 2>&1
eval_tap $? 425 'PublicRedeemCode' test.out

#- 426 PublicFulfillAppleIAPItem
samples/cli/sample-apps Platform publicFulfillAppleIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'GCwR0aaWcQyGP55g' \
    --body '{"excludeOldTransactions": true, "language": "jzAB", "productId": "XcugbvfYjR37hA1G", "receiptData": "YTID9i0cUepYgFVn", "region": "eqOu4m0YKYd3pPZ9", "transactionId": "HGl0vzWWFCDcSi76"}' \
    > test.out 2>&1
eval_tap $? 426 'PublicFulfillAppleIAPItem' test.out

#- 427 SyncEpicGamesInventory
samples/cli/sample-apps Platform syncEpicGamesInventory \
    --namespace $AB_NAMESPACE \
    --userId 'KtAuZY2JOSiqePex' \
    --body '{"epicGamesJwtToken": "30fMQg8GieLbcyzi"}' \
    > test.out 2>&1
eval_tap $? 427 'SyncEpicGamesInventory' test.out

#- 428 PublicFulfillGoogleIAPItem
samples/cli/sample-apps Platform publicFulfillGoogleIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'M5us0pepsTQEksgQ' \
    --body '{"autoAck": true, "language": "EUe", "orderId": "oIvXMtR3vNHBxd5R", "packageName": "PXaDDjkOEzL2nVgU", "productId": "0TulILqD7W92gAb8", "purchaseTime": 11, "purchaseToken": "o9foOUhz14adRS14", "region": "BRs2HKdUWBl2D2Vr"}' \
    > test.out 2>&1
eval_tap $? 428 'PublicFulfillGoogleIAPItem' test.out

#- 429 SyncOculusConsumableEntitlements
samples/cli/sample-apps Platform syncOculusConsumableEntitlements \
    --namespace $AB_NAMESPACE \
    --userId '2piSimkWjP4aBnk1' \
    > test.out 2>&1
eval_tap $? 429 'SyncOculusConsumableEntitlements' test.out

#- 430 PublicReconcilePlayStationStore
samples/cli/sample-apps Platform publicReconcilePlayStationStore \
    --namespace $AB_NAMESPACE \
    --userId '90ZHAOzMUthRtcGV' \
    --body '{"currencyCode": "yIkR0XGyAXchqy2z", "price": 0.41348090738793475, "productId": "KkLos3z1HHtI8MGn", "serviceLabel": 92}' \
    > test.out 2>&1
eval_tap $? 430 'PublicReconcilePlayStationStore' test.out

#- 431 PublicReconcilePlayStationStoreWithMultipleServiceLabels
samples/cli/sample-apps Platform publicReconcilePlayStationStoreWithMultipleServiceLabels \
    --namespace $AB_NAMESPACE \
    --userId 'pz4WmhfZnUznbJNT' \
    --body '{"currencyCode": "zLOCjosLQzi42g0L", "price": 0.6267213202865488, "productId": "Kek9YFWbssHeAoP8", "serviceLabels": [58, 27, 15]}' \
    > test.out 2>&1
eval_tap $? 431 'PublicReconcilePlayStationStoreWithMultipleServiceLabels' test.out

#- 432 SyncSteamInventory
samples/cli/sample-apps Platform syncSteamInventory \
    --namespace $AB_NAMESPACE \
    --userId 'ioZpnftVX2ChQjHO' \
    --body '{"appId": "5IoVCWpcjnw6sSFp", "currencyCode": "9yyEBQNwDZc22T8W", "language": "oCm_AAyR", "price": 0.3458785200936142, "productId": "CibdJZ5wksOha5kk", "region": "L4dhwfMhLNrMBlb4", "steamId": "i9M0XUlHw7YYa0eY"}' \
    > test.out 2>&1
eval_tap $? 432 'SyncSteamInventory' test.out

#- 433 SyncTwitchDropsEntitlement1
samples/cli/sample-apps Platform syncTwitchDropsEntitlement1 \
    --namespace $AB_NAMESPACE \
    --userId '997NwgXg1dIQnM28' \
    --body '{"gameId": "6AOKgJ2Gl6OhVDWZ", "language": "ns-Xg", "region": "h4LVwhNMs4jtKHKb"}' \
    > test.out 2>&1
eval_tap $? 433 'SyncTwitchDropsEntitlement1' test.out

#- 434 SyncXboxInventory
samples/cli/sample-apps Platform syncXboxInventory \
    --namespace $AB_NAMESPACE \
    --userId 'r3pDHujPWeJpGYkN' \
    --body '{"currencyCode": "Hu6tdv1dzfmRWxPi", "price": 0.2716840423042063, "productId": "zvwEoJz3WPC110Mr", "xstsToken": "TBlQjx8C4EL0CsWg"}' \
    > test.out 2>&1
eval_tap $? 434 'SyncXboxInventory' test.out

#- 435 PublicQueryUserOrders
samples/cli/sample-apps Platform publicQueryUserOrders \
    --namespace $AB_NAMESPACE \
    --userId '26F3ueUWHp3XxrQ9' \
    --discounted 'true' \
    --itemId 'FzV5WGq6uapt8N2I' \
    --limit '89' \
    --offset '71' \
    --status 'REFUND_FAILED' \
    > test.out 2>&1
eval_tap $? 435 'PublicQueryUserOrders' test.out

#- 436 PublicCreateUserOrder
samples/cli/sample-apps Platform publicCreateUserOrder \
    --namespace $AB_NAMESPACE \
    --userId 'UHulwhGvyWeer7ON' \
    --body '{"currencyCode": "uen0gBYqN2B0yl9S", "discountCodes": ["QjfMrrpDkJ8cXd1X", "To3aQThSpBxCJAfD", "Kn9n4LTTozfFbnSU"], "discountedPrice": 81, "ext": {"I65CLy7uqmEj5mYd": {}, "LqgRswva8PD71hMm": {}, "TeeeSvo4rtSaejEX": {}}, "itemId": "mrYeAeSNcGLUi96g", "language": "nG_MkMp-WQ", "price": 43, "quantity": 76, "region": "hfQQ0tfg7a2PRNAM", "returnUrl": "6szN5ClXSTbSqyKn", "sectionId": "ybniOyf0QQjjmpdl"}' \
    > test.out 2>&1
eval_tap $? 436 'PublicCreateUserOrder' test.out

#- 437 PublicPreviewOrderPrice
samples/cli/sample-apps Platform publicPreviewOrderPrice \
    --namespace $AB_NAMESPACE \
    --userId 'zD03Tr1P3PJLa7vH' \
    --body '{"currencyCode": "KevPLPL4wFfMgjV6", "discountCodes": ["tZzQt5KBLNA56RwT", "6WlSTbREHrKyGAHI", "pBKzoNADM0VPQAIy"], "discountedPrice": 35, "itemId": "RnwetxpjPXXNxGOm", "price": 87, "quantity": 0}' \
    > test.out 2>&1
eval_tap $? 437 'PublicPreviewOrderPrice' test.out

#- 438 PublicGetUserOrder
samples/cli/sample-apps Platform publicGetUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'lYZ3KA6riOx15iVC' \
    --userId 'wggSs3BNYrz4gwU0' \
    > test.out 2>&1
eval_tap $? 438 'PublicGetUserOrder' test.out

#- 439 PublicCancelUserOrder
samples/cli/sample-apps Platform publicCancelUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'OcrSarE73tapTjh3' \
    --userId '3M0VRcxg6Hav68JY' \
    > test.out 2>&1
eval_tap $? 439 'PublicCancelUserOrder' test.out

#- 440 PublicGetUserOrderHistories
samples/cli/sample-apps Platform publicGetUserOrderHistories \
    --namespace $AB_NAMESPACE \
    --orderNo 'bdaTpDjItMhgLeSH' \
    --userId 'jCxLPLEhuGZ1fQeT' \
    > test.out 2>&1
eval_tap $? 440 'PublicGetUserOrderHistories' test.out

#- 441 PublicDownloadUserOrderReceipt
samples/cli/sample-apps Platform publicDownloadUserOrderReceipt \
    --namespace $AB_NAMESPACE \
    --orderNo 'phEOR0YpiXj0c0vp' \
    --userId 'mqFE4gG2rTvYC3U3' \
    > test.out 2>&1
eval_tap $? 441 'PublicDownloadUserOrderReceipt' test.out

#- 442 PublicGetPaymentAccounts
samples/cli/sample-apps Platform publicGetPaymentAccounts \
    --namespace $AB_NAMESPACE \
    --userId '2h5Tzbb9N83xHTxS' \
    > test.out 2>&1
eval_tap $? 442 'PublicGetPaymentAccounts' test.out

#- 443 PublicDeletePaymentAccount
samples/cli/sample-apps Platform publicDeletePaymentAccount \
    --id 'ZH4KtXqLtYBFpwtS' \
    --namespace $AB_NAMESPACE \
    --type 'card' \
    --userId 'krXdKWjQ9D4p32PF' \
    > test.out 2>&1
eval_tap $? 443 'PublicDeletePaymentAccount' test.out

#- 444 PublicListActiveSections
samples/cli/sample-apps Platform publicListActiveSections \
    --namespace $AB_NAMESPACE \
    --userId 'xo746WSttEKOvo9s' \
    --autoCalcEstimatedPrice 'true' \
    --language '1VFKWLLFdhIHmTlt' \
    --region 'eqejy1yVCNm4TtgB' \
    --storeId 'DlPb2ga2RAU28V0J' \
    --viewId 'gtu5sih7lmuphzf5' \
    > test.out 2>&1
eval_tap $? 444 'PublicListActiveSections' test.out

#- 445 PublicQueryUserSubscriptions
samples/cli/sample-apps Platform publicQueryUserSubscriptions \
    --namespace $AB_NAMESPACE \
    --userId 'DMPz9rFmIBE4zc7F' \
    --chargeStatus 'NEVER' \
    --itemId 'neoEqJKOt25HPB4K' \
    --limit '17' \
    --offset '73' \
    --sku '2iMrSEr6oS4x8xmQ' \
    --status 'ACTIVE' \
    --subscribedBy 'PLATFORM' \
    > test.out 2>&1
eval_tap $? 445 'PublicQueryUserSubscriptions' test.out

#- 446 PublicSubscribeSubscription
samples/cli/sample-apps Platform publicSubscribeSubscription \
    --namespace $AB_NAMESPACE \
    --userId 's1H846F0gVvOjPjm' \
    --body '{"currencyCode": "eJKkygNguOKMauRi", "itemId": "PIAJItmUBdpoxWlc", "language": "CP-341", "region": "i81kol10eRJmsHjk", "returnUrl": "N1cSb4AkqDOvKUMi", "source": "2zqkgInAMj6fYpr6"}' \
    > test.out 2>&1
eval_tap $? 446 'PublicSubscribeSubscription' test.out

#- 447 PublicCheckUserSubscriptionSubscribableByItemId
samples/cli/sample-apps Platform publicCheckUserSubscriptionSubscribableByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'CuT4PJrFSkFyfUwU' \
    --itemId 'jDt8L9HCFIhyAXQ7' \
    > test.out 2>&1
eval_tap $? 447 'PublicCheckUserSubscriptionSubscribableByItemId' test.out

#- 448 PublicGetUserSubscription
samples/cli/sample-apps Platform publicGetUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'eqJ4pZYOWCBS7MGb' \
    --userId 'VV4jUO5AyJevTDrZ' \
    > test.out 2>&1
eval_tap $? 448 'PublicGetUserSubscription' test.out

#- 449 PublicChangeSubscriptionBillingAccount
samples/cli/sample-apps Platform publicChangeSubscriptionBillingAccount \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'l30G3BTYWFLhCRzI' \
    --userId 'cRuVnyCcghsa3Q20' \
    > test.out 2>&1
eval_tap $? 449 'PublicChangeSubscriptionBillingAccount' test.out

#- 450 PublicCancelSubscription
samples/cli/sample-apps Platform publicCancelSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'nBhXfJaTJGPzIJez' \
    --userId '1p1TCpuOEylOvd9W' \
    --body '{"immediate": true, "reason": "gK2ZZbfBHjjh6kR8"}' \
    > test.out 2>&1
eval_tap $? 450 'PublicCancelSubscription' test.out

#- 451 PublicGetUserSubscriptionBillingHistories
samples/cli/sample-apps Platform publicGetUserSubscriptionBillingHistories \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'GXP3J1Sxh0DzcQ7q' \
    --userId 'yhR2LIATgjtZ5XHf' \
    --excludeFree 'true' \
    --limit '67' \
    --offset '84' \
    > test.out 2>&1
eval_tap $? 451 'PublicGetUserSubscriptionBillingHistories' test.out

#- 452 PublicListViews
samples/cli/sample-apps Platform publicListViews \
    --namespace $AB_NAMESPACE \
    --userId '15SH8Xzcv7H72CaC' \
    --language 'KDSL7VTHGGlIPyeD' \
    --storeId 'WqbnlDmBltOoeOuZ' \
    > test.out 2>&1
eval_tap $? 452 'PublicListViews' test.out

#- 453 PublicGetWallet
samples/cli/sample-apps Platform publicGetWallet \
    --currencyCode 'fNCBZTxp7cim6uvH' \
    --namespace $AB_NAMESPACE \
    --userId 'ZtCnHHyYdhwLES2A' \
    > test.out 2>&1
eval_tap $? 453 'PublicGetWallet' test.out

#- 454 PublicListUserWalletTransactions
samples/cli/sample-apps Platform publicListUserWalletTransactions \
    --currencyCode '8JSK0RdgVDnBoEpo' \
    --namespace $AB_NAMESPACE \
    --userId 'lXLJf1QIx5aqJFDP' \
    --limit '35' \
    --offset '4' \
    > test.out 2>&1
eval_tap $? 454 'PublicListUserWalletTransactions' test.out

#- 455 PublicGetMyDLCContent
samples/cli/sample-apps Platform publicGetMyDLCContent \
    --includeAllNamespaces 'true' \
    --type 'XBOX' \
    > test.out 2>&1
eval_tap $? 455 'PublicGetMyDLCContent' test.out

#- 456 QueryFulfillments
samples/cli/sample-apps Platform queryFulfillments \
    --namespace $AB_NAMESPACE \
    --endTime 'TCep1BRVI2Y10vAP' \
    --limit '41' \
    --offset '49' \
    --startTime 'cNi5WjSXX6kywQcv' \
    --state 'FULFILL_FAILED' \
    --transactionId 'LZMiL2XBoRPk59Aa' \
    --userId 'n1STeOUKkJitMEbF' \
    > test.out 2>&1
eval_tap $? 456 'QueryFulfillments' test.out

#- 457 QueryItemsV2
samples/cli/sample-apps Platform queryItemsV2 \
    --namespace $AB_NAMESPACE \
    --appType 'GAME' \
    --availableDate 'FacvYVvwGM6fT1hS' \
    --baseAppId 'LwQNXzdIlNPyT9ME' \
    --categoryPath '3zhcRojLPen8TWXP' \
    --features '5iFOcgEBwg8sA2CF' \
    --includeSubCategoryItem 'true' \
    --itemName 'c1Y66whzWJnLHkES' \
    --itemStatus 'ACTIVE' \
    --itemType '["COINS", "LOOTBOX", "BUNDLE"]' \
    --limit '95' \
    --offset '39' \
    --region 'yDOvLyNTsOuwO077' \
    --sectionExclusive 'true' \
    --sortBy '["updatedAt", "name:desc", "displayOrder"]' \
    --storeId '0rUd80aeFm99mLfZ' \
    --tags 'JjTkQFNHueXiOFeI' \
    --targetNamespace 'RbEqhyFgvg8FTmEm' \
    --withTotal 'false' \
    > test.out 2>&1
eval_tap $? 457 'QueryItemsV2' test.out

#- 458 ImportStore1
samples/cli/sample-apps Platform importStore1 \
    --namespace $AB_NAMESPACE \
    --storeId 'GOyUtckbqUKsLl5v' \
    --strictMode 'true' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 458 'ImportStore1' test.out

#- 459 ExportStore1
samples/cli/sample-apps Platform exportStore1 \
    --namespace $AB_NAMESPACE \
    --storeId 'LqIxSHNH7KJjF7Tz' \
    --body '{"itemIds": ["zEGWohNHydq5kcIX", "X2eLA7d8JhbLu6Lf", "BrCBTiSBqdBmGJFG"]}' \
    > test.out 2>&1
eval_tap $? 459 'ExportStore1' test.out

#- 460 FulfillRewardsV2
samples/cli/sample-apps Platform fulfillRewardsV2 \
    --namespace $AB_NAMESPACE \
    --userId 'BJwVuWUOVA4bhSRd' \
    --body '{"entitlementCollectionId": "qQLLnRt8WtI8RhMj", "entitlementOrigin": "Nintendo", "metadata": {"Dm0QTbp7L3aszSAb": {}, "3jQrGWC3f9VxKPcn": {}, "orDHmtyDjFYkqaMY": {}}, "origin": "Steam", "rewards": [{"currency": {"currencyCode": "bEwYTSUg2iO3yGHi", "namespace": "WtbiReGZYu7SolzQ"}, "item": {"itemId": "H2sPeWbCFSVxsw67", "itemName": "QOvBZlz7uQ0zvpdD", "itemSku": "b9EOsKdxzGN04VbL", "itemType": "DUzJlpy4MV38CG7E"}, "quantity": 83, "type": "ITEM"}, {"currency": {"currencyCode": "VQv5AXd95L65iq6S", "namespace": "QZQjBB2xlT7lvkkp"}, "item": {"itemId": "z6nmPjJsFpO2xSPA", "itemName": "SNhRpUqg0msT7Kpo", "itemSku": "QKXRxS6pTihlurMX", "itemType": "kvg0R3UvrgppoO0h"}, "quantity": 93, "type": "CURRENCY"}, {"currency": {"currencyCode": "vYWoNGnrOgFAZMDg", "namespace": "v6ywKBJeaAJfx8vd"}, "item": {"itemId": "DHFmPwRsLGF6vkHF", "itemName": "lABqXcQMWNX7T8fQ", "itemSku": "NbqaAVKCXIvCQETb", "itemType": "XE8XPtT9H2f1ddd7"}, "quantity": 47, "type": "ITEM"}], "source": "REWARD", "transactionId": "RH9FQbikJOLqyrmw"}' \
    > test.out 2>&1
eval_tap $? 460 'FulfillRewardsV2' test.out

#- 461 FulfillItems
samples/cli/sample-apps Platform fulfillItems \
    --namespace $AB_NAMESPACE \
    --transactionId 'MqUEGkaRf4lDPoDl' \
    --userId 'AJBpFkavlD1lzMBL' \
    --body '{"items": [{"duration": 54, "endDate": "1989-05-26T00:00:00Z", "entitlementCollectionId": "40R3Tuyr1uHGRERM", "entitlementOrigin": "GooglePlay", "itemId": "HPClQfKThwtn3zWm", "itemSku": "UFqT4A6bbtkoZ14d", "language": "H6rWoV8i1zWcJngc", "metadata": {"uAz1jrTncQfI7amO": {}, "7XWnJheN3MsGUJ9F": {}, "nDv4a1T6eTrSFYAk": {}}, "orderNo": "JRblOJMOhyQWvIIi", "origin": "IOS", "quantity": 59, "region": "5nbxTyIGby2FzV3m", "source": "PROMOTION", "startDate": "1993-03-24T00:00:00Z", "storeId": "cH8UAnowVkkHBO5m"}, {"duration": 54, "endDate": "1988-04-08T00:00:00Z", "entitlementCollectionId": "nBhTmzj43e01fpB9", "entitlementOrigin": "Oculus", "itemId": "ZEtyC2c6kLZygxkz", "itemSku": "FyqFCsiDUzOZk7w4", "language": "NMUtzItqrTzDoUvr", "metadata": {"hsVrbhTrMznQq8K7": {}, "CgqDR0bmsz7Oy34K": {}, "e7NCaNGImBg4tSes": {}}, "orderNo": "U1oR7BAvzai3jhSx", "origin": "Other", "quantity": 67, "region": "5IuX5EosLgtkyyRs", "source": "REWARD", "startDate": "1971-02-11T00:00:00Z", "storeId": "Q7kpvDrxdDQQX8yv"}, {"duration": 16, "endDate": "1988-06-08T00:00:00Z", "entitlementCollectionId": "rJTmlZXAVLmZfy9q", "entitlementOrigin": "Twitch", "itemId": "c2WIWH2mt2Ajpfu4", "itemSku": "AbIMK4sRaJiSVscm", "language": "WxkZHspZOD4q7YCi", "metadata": {"MtJwwljJNIV2ieBi": {}, "3FFMFn2O2m7NxmZn": {}, "O9cqaN5AcnB0Vb3j": {}}, "orderNo": "EsQeAO1CKk1rEUMV", "origin": "Twitch", "quantity": 18, "region": "8GBoNsRhsAvGk7zr", "source": "REFERRAL_BONUS", "startDate": "1996-11-17T00:00:00Z", "storeId": "N14qI1V1oWHmeVvh"}]}' \
    > test.out 2>&1
eval_tap $? 461 'FulfillItems' test.out

#- 462 RevokeItems
samples/cli/sample-apps Platform revokeItems \
    --namespace $AB_NAMESPACE \
    --transactionId 'QZK7b6GRbUr3MeTg' \
    --userId 'JLHA9IXyq0t2D8Eg' \
    > test.out 2>&1
eval_tap $? 462 'RevokeItems' test.out


rm -f "tmp.dat"

exit $EXIT_CODE