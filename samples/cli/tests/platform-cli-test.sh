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
echo "1..499"

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
    --id 'vz1yEMOctVKymZze' \
    > test.out 2>&1
eval_tap $? 3 'GetFulfillmentScript' test.out

#- 4 CreateFulfillmentScript
samples/cli/sample-apps Platform createFulfillmentScript \
    --id 'nYvESFZLfVLnEsrf' \
    --body '{"grantDays": "cncbNRpWNAT3PAnj"}' \
    > test.out 2>&1
eval_tap $? 4 'CreateFulfillmentScript' test.out

#- 5 DeleteFulfillmentScript
samples/cli/sample-apps Platform deleteFulfillmentScript \
    --id 'wTVU0FW3O5yECgmi' \
    > test.out 2>&1
eval_tap $? 5 'DeleteFulfillmentScript' test.out

#- 6 UpdateFulfillmentScript
samples/cli/sample-apps Platform updateFulfillmentScript \
    --id 'b6v1RsyTA0aP18Nw' \
    --body '{"grantDays": "W0iD9ToCM9dIkszO"}' \
    > test.out 2>&1
eval_tap $? 6 'UpdateFulfillmentScript' test.out

#- 7 ListItemTypeConfigs
samples/cli/sample-apps Platform listItemTypeConfigs \
    > test.out 2>&1
eval_tap $? 7 'ListItemTypeConfigs' test.out

#- 8 CreateItemTypeConfig
samples/cli/sample-apps Platform createItemTypeConfig \
    --body '{"clazz": "xkqW5UdACfdGi7PX", "dryRun": false, "fulfillmentUrl": "h6DAROLIye7CJzCO", "itemType": "BUNDLE", "purchaseConditionUrl": "5xQuFTCSHeEQp5Jf"}' \
    > test.out 2>&1
eval_tap $? 8 'CreateItemTypeConfig' test.out

#- 9 SearchItemTypeConfig
samples/cli/sample-apps Platform searchItemTypeConfig \
    --clazz 'wMbFqGSNQE5JThv0' \
    --itemType 'OPTIONBOX' \
    > test.out 2>&1
eval_tap $? 9 'SearchItemTypeConfig' test.out

#- 10 GetItemTypeConfig
samples/cli/sample-apps Platform getItemTypeConfig \
    --id 'c6eVkwroFjqZaN6x' \
    > test.out 2>&1
eval_tap $? 10 'GetItemTypeConfig' test.out

#- 11 UpdateItemTypeConfig
samples/cli/sample-apps Platform updateItemTypeConfig \
    --id 'gcsPyz9ZqyEATmsl' \
    --body '{"clazz": "RWMXohyzptXKBFiH", "dryRun": true, "fulfillmentUrl": "U0f00SGzDHkAZjmI", "purchaseConditionUrl": "mPjLwespDjnVzlh7"}' \
    > test.out 2>&1
eval_tap $? 11 'UpdateItemTypeConfig' test.out

#- 12 DeleteItemTypeConfig
samples/cli/sample-apps Platform deleteItemTypeConfig \
    --id 'OizY3tJOnZlntyUQ' \
    > test.out 2>&1
eval_tap $? 12 'DeleteItemTypeConfig' test.out

#- 13 QueryCampaigns
samples/cli/sample-apps Platform queryCampaigns \
    --namespace $AB_NAMESPACE \
    --limit '3' \
    --name 'vC1R3otTB9X6gKHl' \
    --offset '99' \
    --tag '4wS5KQVXjAz55E8J' \
    > test.out 2>&1
eval_tap $? 13 'QueryCampaigns' test.out

#- 14 CreateCampaign
samples/cli/sample-apps Platform createCampaign \
    --namespace $AB_NAMESPACE \
    --body '{"description": "Gk9t5OlCnhMEnX42", "discountConfig": {"categories": [{"categoryPath": "hgZHkynG1fKXpWsp", "includeSubCategories": true}, {"categoryPath": "zDVAVuQJmQaKPtFC", "includeSubCategories": true}, {"categoryPath": "GLMJyweKebuHhDxJ", "includeSubCategories": true}], "currencyCode": "wh4oUxUrTmaL1ffU", "currencyNamespace": "la2xWjtUSE8aSXNX", "discountAmount": 56, "discountPercentage": 47, "discountType": "AMOUNT", "items": [{"itemId": "WpOWUnd9324pGXN2", "itemName": "q5LTuQhVebRRZTX7"}, {"itemId": "SJ9rFA15xBOzJi8z", "itemName": "Rm4PVTVpvNW04SdM"}, {"itemId": "1s6xBSN9pHmjmzCS", "itemName": "uuETgptOYThS9fSr"}], "restrictType": "NONE", "stackable": false}, "items": [{"extraSubscriptionDays": 6, "itemId": "ytLXoysB5xAsUCGf", "itemName": "H1b3I2UttvWUYNOh", "quantity": 95}, {"extraSubscriptionDays": 92, "itemId": "VAi6SI0HnGapsQwb", "itemName": "5g3ZBX0Xdus9Fy5W", "quantity": 44}, {"extraSubscriptionDays": 45, "itemId": "6kf8Op5X5lgpuedy", "itemName": "501sqklL9dUrs0iD", "quantity": 47}], "maxRedeemCountPerCampaignPerUser": 13, "maxRedeemCountPerCode": 56, "maxRedeemCountPerCodePerUser": 44, "maxSaleCount": 64, "name": "UDr02encYsVQpG4Z", "redeemEnd": "1992-07-03T00:00:00Z", "redeemStart": "1976-07-25T00:00:00Z", "redeemType": "DISCOUNT", "status": "INACTIVE", "tags": ["gcyg1govw3cZQPrb", "jGrbic5xj3dADc7Y", "qswek8aHE4ETgJOK"], "type": "REDEMPTION"}' \
    > test.out 2>&1
eval_tap $? 14 'CreateCampaign' test.out

#- 15 GetCampaign
samples/cli/sample-apps Platform getCampaign \
    --campaignId 'sPXOWJ7NWN6eAdkz' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 15 'GetCampaign' test.out

#- 16 UpdateCampaign
samples/cli/sample-apps Platform updateCampaign \
    --campaignId '2je9Vl6cQ9ijixsZ' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "ghBDQSgNCbzHsaFE", "discountConfig": {"categories": [{"categoryPath": "cStuHYKk3Wp2w7kB", "includeSubCategories": true}, {"categoryPath": "pS0HtHOdYAI7rTQU", "includeSubCategories": true}, {"categoryPath": "T9qn18leR0I4KUyx", "includeSubCategories": false}], "currencyCode": "CmoclS6RVzD0gQSH", "currencyNamespace": "r0T1pf7hlC5AAII0", "discountAmount": 89, "discountPercentage": 32, "discountType": "AMOUNT", "items": [{"itemId": "WQnT8HukmCzNUaUR", "itemName": "jTlAkDJsV84W8Jfb"}, {"itemId": "2tDqmG4cY4AokozP", "itemName": "SV1xXjSXi3POz3W0"}, {"itemId": "JL9ztQqnNoXaOoTS", "itemName": "L1febKMVFacn9ODY"}], "restrictType": "ITEMS_AND_CATEGORIES", "stackable": false}, "items": [{"extraSubscriptionDays": 55, "itemId": "Unr0xoMwIVLHFZ4p", "itemName": "gtfpmU772KU2Nzd6", "quantity": 54}, {"extraSubscriptionDays": 0, "itemId": "rY01V4pdWOrhyvL0", "itemName": "ST7HN4YbLweRCVUa", "quantity": 71}, {"extraSubscriptionDays": 92, "itemId": "MdQ9wTJDD0Rp3Ezn", "itemName": "RLe7tJAxxVF3dyTw", "quantity": 93}], "maxRedeemCountPerCampaignPerUser": 20, "maxRedeemCountPerCode": 55, "maxRedeemCountPerCodePerUser": 47, "maxSaleCount": 65, "name": "im2NJPTrZQi9Ronk", "redeemEnd": "1981-09-05T00:00:00Z", "redeemStart": "1985-03-09T00:00:00Z", "redeemType": "ITEM", "status": "ACTIVE", "tags": ["VM9yFbkL0mu0QKIk", "wHmoDbpWHwcrY8wO", "hNgF8FmshG2pEnZy"]}' \
    > test.out 2>&1
eval_tap $? 16 'UpdateCampaign' test.out

#- 17 RenameBatch
samples/cli/sample-apps Platform renameBatch \
    --campaignId 'F9WgfuiNonu4PFhx' \
    --namespace $AB_NAMESPACE \
    --body '{"newName": "CLheCHQ41YNxULR1", "oldName": "EFiErsstyBz681NK"}' \
    > test.out 2>&1
eval_tap $? 17 'RenameBatch' test.out

#- 18 QueryCampaignBatchNames
samples/cli/sample-apps Platform queryCampaignBatchNames \
    --campaignId 'sUYcJit2xNP4ZKRS' \
    --namespace $AB_NAMESPACE \
    --batchName 'iksvjALQiHpdPrvL' \
    --limit '99' \
    > test.out 2>&1
eval_tap $? 18 'QueryCampaignBatchNames' test.out

#- 19 GetCampaignDynamic
samples/cli/sample-apps Platform getCampaignDynamic \
    --campaignId 'G9C4OE6A7Waub1B6' \
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
    --body '{"enableInventoryCheck": false, "itemDeletionCheckConfig": ["ENTITLEMENT", "CATALOG", "IAP"]}' \
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
    --body '{"appConfig": {"appName": "ylbvYahPSUSquSxd"}, "customConfig": {"connectionType": "TLS", "grpcServerAddress": "U13Zv32nl948hAAR"}, "extendType": "CUSTOM"}' \
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
    --body '{"appConfig": {"appName": "vkmkQAXeaSjfGr5O"}, "customConfig": {"connectionType": "TLS", "grpcServerAddress": "mv6DuBND3x3kKEk8"}, "extendType": "APP"}' \
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
    --storeId 'AGqmYMIVyzrPZD39' \
    > test.out 2>&1
eval_tap $? 31 'GetRootCategories' test.out

#- 32 CreateCategory
samples/cli/sample-apps Platform createCategory \
    --namespace $AB_NAMESPACE \
    --storeId 'mKHEl1Xe4tI96eRb' \
    --body '{"categoryPath": "brLPpNgOTKSTHYgm", "localizationDisplayNames": {"vKyv04MdO6UG9pur": "AtZ6FrAXyryGMFfK", "eF4oc8J9zHNWgpWJ": "52OkN0cBPaSxCmJW", "OW2KASBEmpjMk6B5": "sN2mOKv1K4Ty7WoG"}}' \
    > test.out 2>&1
eval_tap $? 32 'CreateCategory' test.out

#- 33 ListCategoriesBasic
samples/cli/sample-apps Platform listCategoriesBasic \
    --namespace $AB_NAMESPACE \
    --storeId 'O8xQ2Jbo5YTZxx2H' \
    > test.out 2>&1
eval_tap $? 33 'ListCategoriesBasic' test.out

#- 34 GetCategory
samples/cli/sample-apps Platform getCategory \
    --categoryPath 'fN805SkzFPyFIi3N' \
    --namespace $AB_NAMESPACE \
    --storeId 'lzyKAOcGdBzlWIOX' \
    > test.out 2>&1
eval_tap $? 34 'GetCategory' test.out

#- 35 UpdateCategory
samples/cli/sample-apps Platform updateCategory \
    --categoryPath 'GNRjWyw2o9uht9Cw' \
    --namespace $AB_NAMESPACE \
    --storeId 'T3KY1BZS6JscvWqT' \
    --body '{"localizationDisplayNames": {"uGec6W6UtAnvTH9R": "HNYfxcY2rXnr1BsU", "EtzUzEWSue34bLSu": "ME97d0aLsMI8NYIB", "JawvJJCfVqo4RRbx": "HxiwRwCTxiEQgy0F"}}' \
    > test.out 2>&1
eval_tap $? 35 'UpdateCategory' test.out

#- 36 DeleteCategory
samples/cli/sample-apps Platform deleteCategory \
    --categoryPath 'BWny9ziqkc9XuSSi' \
    --namespace $AB_NAMESPACE \
    --storeId 'ji4H7hXOqxXaUWPa' \
    > test.out 2>&1
eval_tap $? 36 'DeleteCategory' test.out

#- 37 GetChildCategories
samples/cli/sample-apps Platform getChildCategories \
    --categoryPath '3EaIPG8I7mshcIZt' \
    --namespace $AB_NAMESPACE \
    --storeId '6ntS3rC62RpxcRPz' \
    > test.out 2>&1
eval_tap $? 37 'GetChildCategories' test.out

#- 38 GetDescendantCategories
samples/cli/sample-apps Platform getDescendantCategories \
    --categoryPath 'fFaUhUuapLb28W9x' \
    --namespace $AB_NAMESPACE \
    --storeId 'VVRYwBqfDiVstddw' \
    > test.out 2>&1
eval_tap $? 38 'GetDescendantCategories' test.out

#- 39 QueryCodes
samples/cli/sample-apps Platform queryCodes \
    --campaignId 'MZMoVafsdUwHpNVk' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --batchName 'aOPBUkYlWK4diZ03' \
    --batchNo '[35, 77, 9]' \
    --code '0bKh9h9zr3MtBbh0' \
    --limit '17' \
    --offset '80' \
    --withBatchName 'false' \
    > test.out 2>&1
eval_tap $? 39 'QueryCodes' test.out

#- 40 CreateCodes
samples/cli/sample-apps Platform createCodes \
    --campaignId '7clPfpwQAdEBmWcc' \
    --namespace $AB_NAMESPACE \
    --body '{"batchName": "Acgwp3k828U9EcLm", "codeValue": "qHQl0sdDp9wYm9ao", "quantity": 81}' \
    > test.out 2>&1
eval_tap $? 40 'CreateCodes' test.out

#- 41 Download
samples/cli/sample-apps Platform download \
    --campaignId 'cDfpmw3yvVYyZ7Xl' \
    --namespace $AB_NAMESPACE \
    --batchName 'DdiujPasskJa7x5X' \
    --batchNo '[30, 77, 48]' \
    --withBatchName 'true' \
    > test.out 2>&1
eval_tap $? 41 'Download' test.out

#- 42 BulkDisableCodes
samples/cli/sample-apps Platform bulkDisableCodes \
    --campaignId 'zAt1iP7ClW5tf56b' \
    --namespace $AB_NAMESPACE \
    --batchName 'pH6vphXV0u28AraD' \
    --batchNo '[24, 65, 53]' \
    > test.out 2>&1
eval_tap $? 42 'BulkDisableCodes' test.out

#- 43 BulkEnableCodes
samples/cli/sample-apps Platform bulkEnableCodes \
    --campaignId 'WJ8jJl59aq0mK6NU' \
    --namespace $AB_NAMESPACE \
    --batchName 'NWvbYBT23N0iGBth' \
    --batchNo '[78, 95, 18]' \
    > test.out 2>&1
eval_tap $? 43 'BulkEnableCodes' test.out

#- 44 QueryRedeemHistory
samples/cli/sample-apps Platform queryRedeemHistory \
    --campaignId 'W7YyZTQFvKkjyxGG' \
    --namespace $AB_NAMESPACE \
    --code '0o4Tw10GNt66zVdg' \
    --limit '81' \
    --offset '12' \
    --userId 'U9H9DOAy7G9Z6tNT' \
    > test.out 2>&1
eval_tap $? 44 'QueryRedeemHistory' test.out

#- 45 GetCode
samples/cli/sample-apps Platform getCode \
    --code 'TZsU0JGqUhbafx4Z' \
    --namespace $AB_NAMESPACE \
    --redeemable 'true' \
    --withBatchName 'true' \
    > test.out 2>&1
eval_tap $? 45 'GetCode' test.out

#- 46 DisableCode
samples/cli/sample-apps Platform disableCode \
    --code 'xWgohxq4RQGuif3r' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 46 'DisableCode' test.out

#- 47 EnableCode
samples/cli/sample-apps Platform enableCode \
    --code 'FlVVW2RQa9DBoxF5' \
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
    --body '{"currencyCode": "yOrIQ7fCAqsokln3", "currencySymbol": "29TCrf4ksqgmMzGm", "currencyType": "REAL", "decimals": 52, "localizationDescriptions": {"TYyUeIL6qoTRcuPA": "VysAsuDnFGOkeqYh", "ctEMQHEktBlWtMYH": "yaowYksg0GlGriU9", "eKVNWxWHD97iqGmh": "tjDWo032s0FNUPU6"}}' \
    > test.out 2>&1
eval_tap $? 52 'CreateCurrency' test.out

#- 53 UpdateCurrency
samples/cli/sample-apps Platform updateCurrency \
    --currencyCode 'lzLcgTcK4WQPHw7y' \
    --namespace $AB_NAMESPACE \
    --body '{"localizationDescriptions": {"8r6hpZmzuUJQAuH2": "8K9yoCYlhsLbpISg", "sfDvD5MY8uF24H8w": "YGBrjtlF7mhQihKW", "fapYoItyt2vDMmyi": "c12yOgcFmb6JcM96"}}' \
    > test.out 2>&1
eval_tap $? 53 'UpdateCurrency' test.out

#- 54 DeleteCurrency
samples/cli/sample-apps Platform deleteCurrency \
    --currencyCode 'sgvGFfODIF7xywYn' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 54 'DeleteCurrency' test.out

#- 55 GetCurrencyConfig
samples/cli/sample-apps Platform getCurrencyConfig \
    --currencyCode '7g2VHpJChrpnldse' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 55 'GetCurrencyConfig' test.out

#- 56 GetCurrencySummary
samples/cli/sample-apps Platform getCurrencySummary \
    --currencyCode 'K2yqBlVKUDfOQXmC' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 56 'GetCurrencySummary' test.out

#- 57 GetDLCItemConfigHistory
samples/cli/sample-apps Platform getDLCItemConfigHistory \
    --namespace $AB_NAMESPACE \
    --dlcId 'pUAnYP38pkED4aGw' \
    > test.out 2>&1
eval_tap $? 57 'GetDLCItemConfigHistory' test.out

#- 58 RestoreDLCItemConfigHistory
samples/cli/sample-apps Platform restoreDLCItemConfigHistory \
    --id 'Ah0wjjVAu40B7xbU' \
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
    --body '{"data": [{"autoUpdate": false, "enableRevocation": false, "id": "iW1Mm2EzyKKr6Sym", "rewards": [{"currency": {"currencyCode": "i6doY7u9gPqWBZRf", "namespace": "ASC4js7km1VsGR6m"}, "item": {"itemId": "I9ipYOQ9NhknkypM", "itemName": "Jwsq813RP4EgRwKM", "itemSku": "EKg7b5FnWkYL1urn", "itemType": "nBXPImGjAnAlqwZF"}, "quantity": 5, "type": "ITEM"}, {"currency": {"currencyCode": "znE5pZFKTU5dLa1k", "namespace": "J9RjulYPQ6Bkzwn1"}, "item": {"itemId": "czQdBIgQ5darLHKL", "itemName": "fBvuyBvl4LLJiWOO", "itemSku": "JZrOlhx0HKrPZmoO", "itemType": "p9amG43C52X6EQ4L"}, "quantity": 42, "type": "CURRENCY"}, {"currency": {"currencyCode": "srJyzeAQRevMhq7P", "namespace": "sII3jY4woHQOSSL6"}, "item": {"itemId": "7xB4hZT8ZKtl24oP", "itemName": "mALiuVRmuEAvC7lH", "itemSku": "fdXiDKWRwuy9DLId", "itemType": "5wcqQOnIyDSD4yRM"}, "quantity": 67, "type": "ITEM"}], "rvn": 77}, {"autoUpdate": true, "enableRevocation": true, "id": "kig9vFsIBJECQ8qq", "rewards": [{"currency": {"currencyCode": "o8sOy6a4OGLswVq1", "namespace": "8Q4xGmerUkJx2VD7"}, "item": {"itemId": "1LrwkKLlICnez1EL", "itemName": "Ser4tAwfiV1upLyP", "itemSku": "Wl9LbW78oRgk2JnR", "itemType": "hMK5yY2uRIp4fh99"}, "quantity": 17, "type": "CURRENCY"}, {"currency": {"currencyCode": "EOJwxpN2GGLO7sP7", "namespace": "ugaXQnoKmLTwfKzW"}, "item": {"itemId": "TdMXiDQDMBZVPJRG", "itemName": "7y6LdhKqebqgwUEV", "itemSku": "255kxQoAF3VBeetb", "itemType": "ts3872W3pLCjy234"}, "quantity": 11, "type": "ITEM"}, {"currency": {"currencyCode": "C5u2i4b8r3zZni3W", "namespace": "H2X0IQCdjGq1AIJp"}, "item": {"itemId": "cRkFYDyAwjLjjN8h", "itemName": "Lwy9XozQyMyLzdFv", "itemSku": "oDTHAq83t5y1djS9", "itemType": "wwl8vfHjvHc357U9"}, "quantity": 91, "type": "CURRENCY"}], "rvn": 23}, {"autoUpdate": false, "enableRevocation": false, "id": "0ePJo3GMhxK2EGGE", "rewards": [{"currency": {"currencyCode": "dYogg7PqdmjznMIH", "namespace": "zNYCKQQ0Dd2A1XXb"}, "item": {"itemId": "9IuCfptpQ413Yv7V", "itemName": "eDmCsdIkZ8E4SzCF", "itemSku": "wupjMTBa1h6geqeN", "itemType": "Yn8OmyASAVJyOsiP"}, "quantity": 97, "type": "ITEM"}, {"currency": {"currencyCode": "CudRXnOWgy0U2CIX", "namespace": "ZmB8GrjLGaCTUu1W"}, "item": {"itemId": "PFkZMc96DPPb1sh7", "itemName": "sJc8sSE7p9HNF1nx", "itemSku": "yZVV6DiciIrfDAjJ", "itemType": "PLmSqnK9E24DvfHp"}, "quantity": 45, "type": "CURRENCY"}, {"currency": {"currencyCode": "V6ZVSHZmVyb5E120", "namespace": "BeJ6htiZ6y2AM39b"}, "item": {"itemId": "exoCGudksJtXpvyk", "itemName": "atx2Th6X36DpQCGs", "itemSku": "GU6HhjmgRW9zbTiO", "itemType": "oPM6zyrvt1abjG33"}, "quantity": 79, "type": "ITEM"}], "rvn": 30}]}' \
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
    --body '{"data": [{"platform": "PSN", "platformDlcIdMap": {"o8hWabvIdkG6repl": "RgDyYSvkhSgFnugG", "7ii26dy3gs9b9POZ": "WHpEAsf742wV1IXa", "Oyt1BC6ajpwGvzU6": "c1yvj2LT6X7zWSzf"}}, {"platform": "XBOX", "platformDlcIdMap": {"yinQe8VlcDAszJCx": "lyM6YnOBMkQSToFo", "J6mhEwb4pf2VyXPo": "COT0lBRJihdYKl6d", "WJQzDduX6wZqw9a0": "xbKvdqIWfGqjL9pF"}}, {"platform": "EPICGAMES", "platformDlcIdMap": {"eV1046El8fxMNdH9": "18Iy744yTBA5kqrW", "37qOgfLjCQUT8ZJY": "MeaeR22HfeiuYlm4", "3cTCstZcFpej9eIe": "mSgnZbMjDlBqIXE9"}}]}' \
    > test.out 2>&1
eval_tap $? 63 'UpdatePlatformDLCConfig' test.out

#- 64 DeletePlatformDLCConfig
samples/cli/sample-apps Platform deletePlatformDLCConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 64 'DeletePlatformDLCConfig' test.out

#- 65 QueryEntitlements1
samples/cli/sample-apps Platform queryEntitlements1 \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --appType 'GAME' \
    --entitlementClazz 'ENTITLEMENT' \
    --entitlementName 'P5tlJ4hq7Cfu8uFt' \
    --itemId '["PbUX4MROBrRpkOaO", "3o1zhEsVJFjv99dp", "IKm2q5eQXqZ5r5QK"]' \
    --limit '69' \
    --offset '30' \
    --origin 'Xbox' \
    --userId 'UMO55Ru5z4pvuiuD' \
    > test.out 2>&1
eval_tap $? 65 'QueryEntitlements1' test.out

#- 66 QueryEntitlements
samples/cli/sample-apps Platform queryEntitlements \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --itemIds '["pUjkWhXpthUFymKT", "NOAh0vc24NqQYN8l", "g0c1vZP1yxcEttnq"]' \
    --limit '82' \
    --offset '82' \
    > test.out 2>&1
eval_tap $? 66 'QueryEntitlements' test.out

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
    --body '{"entitlementGrantList": [{"collectionId": "D9vW5qoJ5q1dQIdd", "endDate": "1981-12-08T00:00:00Z", "grantedCode": "oX1cOlSLqeZ7Bh9o", "itemId": "41GrmRjQcxU7qkLG", "itemNamespace": "1ERQtadhmkn8u5P4", "language": "btA_mN", "metadata": {"qXkAPq7sdQygA0xA": {}, "Zr68q5Hi7hfsDU5e": {}, "2iFhJ9dfUNpZsgYI": {}}, "origin": "Xbox", "quantity": 72, "region": "10EQi3Kq4bhN1FXB", "source": "PROMOTION", "startDate": "1982-05-12T00:00:00Z", "storeId": "lQsFlTCce6wR2Qah"}, {"collectionId": "lqX75I32Fnad2t0s", "endDate": "1985-06-05T00:00:00Z", "grantedCode": "K3ml7xE34C3meQHj", "itemId": "1vhF5Ipl6Mbbxhcv", "itemNamespace": "QDzbRlrMma2Q2B29", "language": "IO-qRnT-Hj", "metadata": {"PmssS1shlAoj4euy": {}, "M1iVAAD3yD9WI1T8": {}, "NUwHOEYwxELJ6FA2": {}}, "origin": "Playstation", "quantity": 97, "region": "9rfnCzjjSE4bZA6U", "source": "GIFT", "startDate": "1989-08-30T00:00:00Z", "storeId": "8tM64eZ2muub3MIR"}, {"collectionId": "gEXQnQhQv2aaF7xa", "endDate": "1974-02-23T00:00:00Z", "grantedCode": "PrVABSwuXBdzCenm", "itemId": "EOKwXLELSFPf9agF", "itemNamespace": "EdsBBlG6g2jYN6x5", "language": "hrV", "metadata": {"kjtCB9N56rxr4qHL": {}, "SXWV7DNyZu5asLb1": {}, "0MAXYqSM3yBlHW2X": {}}, "origin": "Other", "quantity": 10, "region": "AZeSkeTdApg3VB2X", "source": "REDEEM_CODE", "startDate": "1998-05-12T00:00:00Z", "storeId": "moDkjcq05gsMi8G0"}], "userIds": ["gXvMMWlrQQ40HNiB", "jbtE4byf6BDn71O6", "eXP111jLcrHfOk1G"]}' \
    > test.out 2>&1
eval_tap $? 69 'GrantEntitlements' test.out

#- 70 RevokeEntitlements
samples/cli/sample-apps Platform revokeEntitlements \
    --namespace $AB_NAMESPACE \
    --body '["uJDLnbSigbtJsuNA", "UENxSg8MiXi7nDlW", "QbsxbEDwyFplnduY"]' \
    > test.out 2>&1
eval_tap $? 70 'RevokeEntitlements' test.out

#- 71 GetEntitlement
samples/cli/sample-apps Platform getEntitlement \
    --entitlementId 'J2lLdzEGkyGEHGlV' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 71 'GetEntitlement' test.out

#- 72 QueryFulfillmentHistories
samples/cli/sample-apps Platform queryFulfillmentHistories \
    --namespace $AB_NAMESPACE \
    --limit '74' \
    --offset '61' \
    --status 'FAIL' \
    --userId 'rj5QAVcqx6MDOEXD' \
    > test.out 2>&1
eval_tap $? 72 'QueryFulfillmentHistories' test.out

#- 73 QueryIAPClawbackHistory
samples/cli/sample-apps Platform queryIAPClawbackHistory \
    --namespace $AB_NAMESPACE \
    --endTime 'U0yYNwkWC3fFWhVq' \
    --eventType 'CHARGEBACK_REVERSED' \
    --externalOrderId 'uXU5J57bnxoXhafl' \
    --limit '49' \
    --offset '78' \
    --startTime 'QFGcs9ImpCFxMFLD' \
    --status 'FAIL' \
    --userId 'PnrHdh0kGZeKROhs' \
    > test.out 2>&1
eval_tap $? 73 'QueryIAPClawbackHistory' test.out

#- 74 MockPlayStationStreamEvent
samples/cli/sample-apps Platform mockPlayStationStreamEvent \
    --namespace $AB_NAMESPACE \
    --body '{"body": {"account": "3r3f1lkUD0jWNjTv", "additionalData": {"entitlement": [{"clientTransaction": [{"amountConsumed": 91, "clientTransactionId": "RfXgaEaT1nbTTb4N"}, {"amountConsumed": 5, "clientTransactionId": "PNzoAK5NoDeeN4DL"}, {"amountConsumed": 46, "clientTransactionId": "SA7aDeMoe8Ui1pc6"}], "entitlementId": "Pk126imQmbi5iHPj", "usageCount": 9}, {"clientTransaction": [{"amountConsumed": 81, "clientTransactionId": "PcGGmVWqxR7gDBA4"}, {"amountConsumed": 61, "clientTransactionId": "c3r64R8iUrZQPaD7"}, {"amountConsumed": 13, "clientTransactionId": "pzshnAtKY1xeAkth"}], "entitlementId": "vXPRs4Iah2Tm3OnI", "usageCount": 59}, {"clientTransaction": [{"amountConsumed": 91, "clientTransactionId": "VMGmMdcs7eYTOtT9"}, {"amountConsumed": 65, "clientTransactionId": "zqDI2yi5ZRgfTy7g"}, {"amountConsumed": 89, "clientTransactionId": "6qyRO7yUiZgcmH1Q"}], "entitlementId": "pEy5kpaydeSwuQak", "usageCount": 25}], "purpose": "3ry7hRn5jBcIO8f5"}, "originalTitleName": "fwXaapD1wjGYMBCA", "paymentProductSKU": "96l7CGo3oySsEu00", "purchaseDate": "Eos0fyyiynRQJ7er", "sourceOrderItemId": "yDoeu7p4rFD2ueuJ", "titleName": "b4XHw2VZHYsww7EC"}, "eventDomain": "QahxvVJ21FWynEAb", "eventSource": "Ub6w0zXNxtWofPyq", "eventType": "v0gNiSx7sm6x7fnO", "eventVersion": 11, "id": "KNIAOlO2dQnt9cjK", "timestamp": "8aL80fJO9OR43fgc"}' \
    > test.out 2>&1
eval_tap $? 74 'MockPlayStationStreamEvent' test.out

#- 75 MockXblClawbackEvent
samples/cli/sample-apps Platform mockXblClawbackEvent \
    --namespace $AB_NAMESPACE \
    --body '{"data": {"eventDate": "Z5BmMpMFmNg4Qzlw", "eventState": "lzqmMDEzq5uFtjjy", "lineItemId": "8udb2K3R13wfflPh", "orderId": "henFsRtpRR9vZLUm", "productId": "1in4OrbSQ7pP2RFx", "productType": "2A7XOKWlMzwI7wzz", "purchasedDate": "Zx42BkwfuELqMpAV", "sandboxId": "3qQ4aTmOFkEBjVPG", "skuId": "T0OH3opkopTpEPGd", "subscriptionData": {"consumedDurationInDays": 48, "dateTime": "NOpXTczGCvFWvJOj", "durationInDays": 65, "recurrenceId": "2qDIjFW9dCzMgXWo"}}, "datacontenttype": "zlh14PNzMEx1hln2", "id": "ZPRbZqtQ0QzqxHK9", "source": "QR3IPnRY5nHQkFk7", "specVersion": "MHdOUUgPGyWnrOEi", "subject": "7xlVn4eCtdObJ4YI", "time": "Uhl0Q0jMrWUNPowW", "traceparent": "fqMN6iomoxV9k38h", "type": "CCxD1AVadNMX3O6f"}' \
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
    --body '{"appAppleId": 71, "bundleId": "KuRyVzlN2bdNRM5I", "issuerId": "wU6dHZCuMH2znrpw", "keyId": "ZM4ueTGp7iG1zOGT", "password": "I9XqNrzFHXQoaKIC", "version": "V1"}' \
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
    --body '{"sandboxId": "X3Zj7EUWFjrwCDy8"}' \
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
    --body '{"applicationName": "g0A96zdwzmBk1qM2", "notificationTokenAudience": "EVo4tWHlOiBgkFsW", "notificationTokenEmail": "82XFyNKFQk1QdwGY", "packageName": "CtN2zwSUHdQf9rV7", "serviceAccountId": "0V7BNwakiJW6v1Qb"}' \
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
    --body '{"data": [{"itemIdentity": "lADmgh9D1Z9uFIRu", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"7CnBv3ZoF8Q0ZUML": "tYWt5qcJmRmsDvH1", "kYzVXNKU9cWZfG9g": "K7mm14hg3uV3jeYl", "r9pVLJhUmXDXpNwn": "o0awzVex2koEuTp5"}}, {"itemIdentity": "3Yq8jIXZMK4dl5qZ", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"fTCNIPxBcNYNkNhE": "FkJE3WUA5RvZBXzh", "3iCLLJbAt2F20InT": "oI2eXseEpjjFOuaK", "36fDdBDN80xV9dn9": "v9Leokv9b2GVjfHq"}}, {"itemIdentity": "OmzECfXWRZLeAFFi", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"EQgs1QGySr4PAORb": "BGtD0IBA1f612k51", "QZtyTPDY6D3aJKAi": "sDAZSUaFQk8Vcxrj", "6BNmKESCSDO2E1nX": "SoR3FRy1VfPwvKCo"}}]}' \
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
    --body '{"appId": "EtMaklfZzxV2R00t", "appSecret": "sW3ani10Ku8TNhOi"}' \
    > test.out 2>&1
eval_tap $? 91 'UpdateOculusIAPConfig' test.out

#- 92 DeleteOculusIAPConfig
samples/cli/sample-apps Platform deleteOculusIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 92 'DeleteOculusIAPConfig' test.out

#- 93 GetPlayStationIAPConfig
samples/cli/sample-apps Platform getPlayStationIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 93 'GetPlayStationIAPConfig' test.out

#- 94 UpdatePlaystationIAPConfig
samples/cli/sample-apps Platform updatePlaystationIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"backOfficeServerClientId": "1IKa5pvrz3EwsH0p", "backOfficeServerClientSecret": "KPkn40kOaVEhEJ6k", "enableStreamJob": true, "environment": "YoulopGOwrwSBjXa", "streamName": "ghfhrkcu3BVONDC8", "streamPartnerName": "4Y2RQlKJFxbf0fEa"}' \
    > test.out 2>&1
eval_tap $? 94 'UpdatePlaystationIAPConfig' test.out

#- 95 DeletePlaystationIAPConfig
samples/cli/sample-apps Platform deletePlaystationIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 95 'DeletePlaystationIAPConfig' test.out

#- 96 ValidateExistedPlaystationIAPConfig
samples/cli/sample-apps Platform validateExistedPlaystationIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 96 'ValidateExistedPlaystationIAPConfig' test.out

#- 97 ValidatePlaystationIAPConfig
samples/cli/sample-apps Platform validatePlaystationIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"backOfficeServerClientId": "gWyz5hKI3lk98git", "backOfficeServerClientSecret": "Va2tLjAFfcE8zZi4", "enableStreamJob": true, "environment": "chStQ51FMZKPCFFX", "streamName": "aN8CKMQbIunr3ABO", "streamPartnerName": "RPBf6hibu5mgJCfE"}' \
    > test.out 2>&1
eval_tap $? 97 'ValidatePlaystationIAPConfig' test.out

#- 98 GetSteamIAPConfig
samples/cli/sample-apps Platform getSteamIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 98 'GetSteamIAPConfig' test.out

#- 99 UpdateSteamIAPConfig
samples/cli/sample-apps Platform updateSteamIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"appId": "ZhEv1ldE2cnU4BHa", "env": "LIVE", "publisherAuthenticationKey": "J0A9rvhsjYPuoq7v", "syncMode": "TRANSACTION"}' \
    > test.out 2>&1
eval_tap $? 99 'UpdateSteamIAPConfig' test.out

#- 100 DeleteSteamIAPConfig
samples/cli/sample-apps Platform deleteSteamIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 100 'DeleteSteamIAPConfig' test.out

#- 101 GetTwitchIAPConfig
samples/cli/sample-apps Platform getTwitchIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 101 'GetTwitchIAPConfig' test.out

#- 102 UpdateTwitchIAPConfig
samples/cli/sample-apps Platform updateTwitchIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"clientId": "e58zVHIqEkwEdTgy", "clientSecret": "wGLpdlYX5S96rIUS", "organizationId": "1HoujDS5wavcpQKj"}' \
    > test.out 2>&1
eval_tap $? 102 'UpdateTwitchIAPConfig' test.out

#- 103 DeleteTwitchIAPConfig
samples/cli/sample-apps Platform deleteTwitchIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 103 'DeleteTwitchIAPConfig' test.out

#- 104 GetXblIAPConfig
samples/cli/sample-apps Platform getXblIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 104 'GetXblIAPConfig' test.out

#- 105 UpdateXblIAPConfig
samples/cli/sample-apps Platform updateXblIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"enableClawback": false, "entraAppClientId": "h1K0c2qNPPm2Vbvt", "entraAppClientSecret": "k3ZKaSTu2AMRBMKp", "entraTenantId": "H8Rcq7ErDOgXTE9n", "relyingPartyCert": "tmd8GR4OsEpQWrAJ"}' \
    > test.out 2>&1
eval_tap $? 105 'UpdateXblIAPConfig' test.out

#- 106 DeleteXblAPConfig
samples/cli/sample-apps Platform deleteXblAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 106 'DeleteXblAPConfig' test.out

#- 107 UpdateXblBPCertFile
samples/cli/sample-apps Platform updateXblBPCertFile \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    --password 'uB1C7uMytP4ZcK2b' \
    > test.out 2>&1
eval_tap $? 107 'UpdateXblBPCertFile' test.out

#- 108 QueryThirdPartyNotifications
samples/cli/sample-apps Platform queryThirdPartyNotifications \
    --namespace $AB_NAMESPACE \
    --endDate 'be5n1CMBNC7FR5E9' \
    --externalId '291K7UU02tdb8e4s' \
    --limit '50' \
    --offset '8' \
    --source 'XBOX' \
    --startDate 'SJgnFOhgv4kl5CjK' \
    --status 'IGNORED' \
    --type '0BKbraqg0JAa9V25' \
    > test.out 2>&1
eval_tap $? 108 'QueryThirdPartyNotifications' test.out

#- 109 QueryAbnormalTransactions
samples/cli/sample-apps Platform queryAbnormalTransactions \
    --namespace $AB_NAMESPACE \
    --limit '50' \
    --offset '98' \
    --orderId 'OA5cXPxfcmt3GIfF' \
    --steamId 'nFaa19nNsYz3Aydt' \
    > test.out 2>&1
eval_tap $? 109 'QueryAbnormalTransactions' test.out

#- 110 AdminGetSteamJobInfo
samples/cli/sample-apps Platform adminGetSteamJobInfo \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 110 'AdminGetSteamJobInfo' test.out

#- 111 AdminResetSteamJobTime
samples/cli/sample-apps Platform adminResetSteamJobTime \
    --namespace $AB_NAMESPACE \
    --body '{"env": "SANDBOX", "lastTime": "1982-09-29T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 111 'AdminResetSteamJobTime' test.out

#- 112 AdminRefundIAPOrder
samples/cli/sample-apps Platform adminRefundIAPOrder \
    --iapOrderNo 'Xo2K933bmUQdzLfW' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 112 'AdminRefundIAPOrder' test.out

#- 113 QuerySteamReportHistories
samples/cli/sample-apps Platform querySteamReportHistories \
    --namespace $AB_NAMESPACE \
    --limit '53' \
    --offset '100' \
    --orderId 'v7lmoUqxx9H7AjYA' \
    --processStatus 'ERROR' \
    --steamId 'Zs3DOi2JvRU6Qv6K' \
    > test.out 2>&1
eval_tap $? 113 'QuerySteamReportHistories' test.out

#- 114 QueryThirdPartySubscription
samples/cli/sample-apps Platform queryThirdPartySubscription \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --groupId 'AKd5KuaybBH4mufT' \
    --limit '43' \
    --offset '68' \
    --platform 'XBOX' \
    --productId 'jvhcXYhjP0mAh5xV' \
    --userId 'f0i0hRMSCuYHko0k' \
    > test.out 2>&1
eval_tap $? 114 'QueryThirdPartySubscription' test.out

#- 115 GetIAPOrderConsumeDetails
samples/cli/sample-apps Platform getIAPOrderConsumeDetails \
    --iapOrderNo 'rQYTFg5AzM5RPjPq' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 115 'GetIAPOrderConsumeDetails' test.out

#- 116 DownloadInvoiceDetails
samples/cli/sample-apps Platform downloadInvoiceDetails \
    --namespace $AB_NAMESPACE \
    --endTime '9UXu2ZM3zbwXviPN' \
    --feature 'PaHG7mB5FRIeAhrd' \
    --itemId 'ixdVjCP0ah4QZ37F' \
    --itemType 'CODE' \
    --startTime 'UEQCdKes4fZgVn8Z' \
    > test.out 2>&1
eval_tap $? 116 'DownloadInvoiceDetails' test.out

#- 117 GenerateInvoiceSummary
samples/cli/sample-apps Platform generateInvoiceSummary \
    --namespace $AB_NAMESPACE \
    --endTime 'k2NOVOvDHh67Ba6A' \
    --feature 'nzotXd7CIdby1E2y' \
    --itemId 'zHI24xjosEfKFMIl' \
    --itemType 'COINS' \
    --startTime '4lm5cne9gz4kLAzl' \
    > test.out 2>&1
eval_tap $? 117 'GenerateInvoiceSummary' test.out

#- 118 SyncInGameItem
samples/cli/sample-apps Platform syncInGameItem \
    --namespace $AB_NAMESPACE \
    --storeId '2kTTeesUgdyBUzPK' \
    --body '{"categoryPath": "ELGkuwCOEHllY3Dt", "targetItemId": "61Vlv2NVxZfac5yx", "targetNamespace": "OtBlvp3ZBNRI49ky"}' \
    > test.out 2>&1
eval_tap $? 118 'SyncInGameItem' test.out

#- 119 CreateItem
samples/cli/sample-apps Platform createItem \
    --namespace $AB_NAMESPACE \
    --storeId 'IQKAqyOvqNvdxgbL' \
    --body '{"appId": "voUin6RFvnsrXZlI", "appType": "GAME", "baseAppId": "PYcJJaJkHx1mxNJv", "boothName": "sAzNEH4B05CrubLs", "categoryPath": "1qzMsJsr7L5aFypk", "clazz": "0aDdW1ipqZUI3Cih", "displayOrder": 76, "entitlementType": "DURABLE", "ext": {"g5NkQYrv9ck2d5Fy": {}, "MNZzu7LLULTmGtUa": {}, "m8eRFbm2k1QEDpiV": {}}, "features": ["Y6ZGkGppNbfehw7n", "xwBmfEdab2J5s4BM", "KJplIwEGgUYqdQfN"], "flexible": true, "images": [{"as": "6IBn8l0E6utnmw6U", "caption": "E1Ih9WKjbrMwgnAw", "height": 26, "imageUrl": "cSZMkn3e0Y4PgLSw", "smallImageUrl": "th2AGGk7H10PPxH6", "width": 59}, {"as": "YdKrp5p2SVlzONQR", "caption": "jxOQmXRid9zrzTty", "height": 47, "imageUrl": "vILxsL06iNxA30UX", "smallImageUrl": "CttTm7ZSUwVZx38y", "width": 64}, {"as": "aqzcx7U4ISOkmabx", "caption": "5DqMavIxm2DIqpxs", "height": 0, "imageUrl": "ihuHyQGro1tjH5xE", "smallImageUrl": "QwaOOIeZ86QodFu8", "width": 7}], "inventoryConfig": {"customAttributes": {"qnZrWl0xDnUOdVAc": {}, "YR8fl9PTjWSe5Iu9": {}, "5aPk9UhjyGEXlIF2": {}}, "serverCustomAttributes": {"jKI6QZEUbL3KR0PJ": {}, "29PdXVewndU2zN5J": {}, "S94qcjl3PC2E8LB9": {}}, "slotUsed": 69}, "itemIds": ["QGoB9cVMin7ecNXm", "bx9ogPojwaTAmrkp", "5AZJkBeuwnrOPEVI"], "itemQty": {"SIHmQtaF642Ef9uf": 65, "dUmBO6Aw2rsCIAKh": 47, "2TCGWlzHYh1UDke9": 2}, "itemType": "SEASON", "listable": false, "localizations": {"TFp9caOVxio0qW1k": {"description": "aYyXpJUE7xS2Rc6R", "localExt": {"Og2dqhdibRu9yWIR": {}, "sJbUQin3bbO6pwWI": {}, "mDXS6QxDy60ZLv0t": {}}, "longDescription": "bbcWQTlZAj92gUUu", "title": "uJZonR5NhCOUhzQ7"}, "iIhrl2YbGpspngrO": {"description": "3flzf7tYojpW8mgX", "localExt": {"EswhVLPqop7mJNZT": {}, "jJVEyWaKV8jGqQB7": {}, "XwcJ3B9BQESOJwJD": {}}, "longDescription": "ngu74mka5wnMuPNx", "title": "QOWL8C6NwbjpldAS"}, "NMbwj6kST4YWIaFu": {"description": "0LZ48yYDDlyaiBhX", "localExt": {"Us4Up125uAvbT8fS": {}, "ptCYK8LIRGnoN5mg": {}, "hxrjyoYAZXbDLqqH": {}}, "longDescription": "uyldxmBLmtCkEYHw", "title": "CAnP3KX5PrR1PHuW"}}, "lootBoxConfig": {"rewardCount": 89, "rewards": [{"lootBoxItems": [{"count": 8, "duration": 54, "endDate": "1983-10-30T00:00:00Z", "itemId": "klM8pmT0zRhlIXVJ", "itemSku": "sC6QchAlcf79xZDW", "itemType": "1xrzycwfhB64VfGg"}, {"count": 3, "duration": 64, "endDate": "1998-05-28T00:00:00Z", "itemId": "jr1MCLSiX7XYpEAv", "itemSku": "IXsI1JAy64urGHjB", "itemType": "K6kpS09dCtFhC1cC"}, {"count": 49, "duration": 43, "endDate": "1987-11-12T00:00:00Z", "itemId": "aD8r6JMySbScM4Ey", "itemSku": "sRR4H3Gu0ud430ko", "itemType": "C8w2yX509q4XSCLg"}], "name": "xbrHBc91GHh2Tq3E", "odds": 0.5041563477286506, "type": "REWARD", "weight": 13}, {"lootBoxItems": [{"count": 81, "duration": 34, "endDate": "1993-03-13T00:00:00Z", "itemId": "nAv0pHiLnnaudLZ2", "itemSku": "xCJw3NhfddK1yd2C", "itemType": "8hPSER4mSLwI74mc"}, {"count": 15, "duration": 42, "endDate": "1982-06-21T00:00:00Z", "itemId": "31dbIce6t0l5xWT5", "itemSku": "HLzubSHacwff7xt9", "itemType": "Ej07YGTOAlFxM90G"}, {"count": 86, "duration": 69, "endDate": "1981-08-22T00:00:00Z", "itemId": "Iz32R0lCvA5ko5jQ", "itemSku": "uCfuno8Gr2sbJRB0", "itemType": "Qdzffn7KqoiHRyeD"}], "name": "tcSyvY9icQm9ljK0", "odds": 0.8083165017429196, "type": "PROBABILITY_GROUP", "weight": 45}, {"lootBoxItems": [{"count": 99, "duration": 58, "endDate": "1986-07-07T00:00:00Z", "itemId": "gPWaKPD3uSjWsBCN", "itemSku": "rkwCoGZZP77mxzXc", "itemType": "Z4Zqsxl51llQiYTa"}, {"count": 84, "duration": 63, "endDate": "1994-09-09T00:00:00Z", "itemId": "WsWROUUUakzX7VkQ", "itemSku": "y2BgRqUTnGGH9IHX", "itemType": "mldgMBC5DVmpCQud"}, {"count": 78, "duration": 10, "endDate": "1986-11-07T00:00:00Z", "itemId": "6JP2LzeRYvMo6Z2e", "itemSku": "1KqarNqeP3tDKIfD", "itemType": "yZZ9fh1aRZq5hAZY"}], "name": "ypIx7SdbgK4W9h7r", "odds": 0.8490842361714344, "type": "REWARD", "weight": 19}], "rollFunction": "CUSTOM"}, "maxCount": 17, "maxCountPerUser": 9, "name": "RS0QWgqeeVTJ4QSx", "optionBoxConfig": {"boxItems": [{"count": 29, "duration": 42, "endDate": "1971-06-07T00:00:00Z", "itemId": "ZH9gE4Gixsr1YAQK", "itemSku": "4iPCDZySEk5bdAfE", "itemType": "ea3ef5SyEz0mrM2g"}, {"count": 62, "duration": 66, "endDate": "1971-07-29T00:00:00Z", "itemId": "yFINQFHJVxWp4DPg", "itemSku": "wB3XUWGHntDsgOkK", "itemType": "Np5Z6paC9PU5BYK5"}, {"count": 54, "duration": 53, "endDate": "1983-03-08T00:00:00Z", "itemId": "7lUYyhKiZPVov66X", "itemSku": "UllKpobGj3SKnFKH", "itemType": "HYsqJElYZFm9qHIv"}]}, "purchasable": false, "recurring": {"cycle": "MONTHLY", "fixedFreeDays": 85, "fixedTrialCycles": 78, "graceDays": 9}, "regionData": {"drrQw5yisQRwne1m": [{"currencyCode": "HbQAxtDGX919OEo1", "currencyNamespace": "fEvqnHDWTirYJAB2", "currencyType": "VIRTUAL", "discountAmount": 44, "discountExpireAt": "1977-04-13T00:00:00Z", "discountPercentage": 31, "discountPurchaseAt": "1993-10-08T00:00:00Z", "expireAt": "1990-05-07T00:00:00Z", "price": 92, "purchaseAt": "1996-02-12T00:00:00Z", "trialPrice": 64}, {"currencyCode": "gUPIWXkJ40FsU5AY", "currencyNamespace": "CpiFzyxw7MyMVx9I", "currencyType": "REAL", "discountAmount": 87, "discountExpireAt": "1996-03-11T00:00:00Z", "discountPercentage": 63, "discountPurchaseAt": "1980-07-20T00:00:00Z", "expireAt": "1994-06-09T00:00:00Z", "price": 17, "purchaseAt": "1988-12-28T00:00:00Z", "trialPrice": 96}, {"currencyCode": "5asLMZxc7RVE8C5r", "currencyNamespace": "wLYdke2K5LipCIom", "currencyType": "VIRTUAL", "discountAmount": 31, "discountExpireAt": "1999-11-27T00:00:00Z", "discountPercentage": 12, "discountPurchaseAt": "1976-04-11T00:00:00Z", "expireAt": "1985-12-29T00:00:00Z", "price": 92, "purchaseAt": "1998-05-28T00:00:00Z", "trialPrice": 57}], "5fIDnoAZ6pT6M8Qt": [{"currencyCode": "v2bcPxITmFbggMyF", "currencyNamespace": "2kJKXnQEmG7zoQUi", "currencyType": "VIRTUAL", "discountAmount": 34, "discountExpireAt": "1992-02-28T00:00:00Z", "discountPercentage": 79, "discountPurchaseAt": "1973-10-06T00:00:00Z", "expireAt": "1995-04-07T00:00:00Z", "price": 30, "purchaseAt": "1977-10-15T00:00:00Z", "trialPrice": 40}, {"currencyCode": "3LpoHXg8H6Gm9I42", "currencyNamespace": "TecQwhNv7m9hg9bw", "currencyType": "VIRTUAL", "discountAmount": 25, "discountExpireAt": "1992-08-26T00:00:00Z", "discountPercentage": 4, "discountPurchaseAt": "1984-11-02T00:00:00Z", "expireAt": "1973-10-03T00:00:00Z", "price": 47, "purchaseAt": "1977-07-29T00:00:00Z", "trialPrice": 47}, {"currencyCode": "ZOEvN3XxVSecG5Z3", "currencyNamespace": "IP83NoxUYS64upuB", "currencyType": "VIRTUAL", "discountAmount": 11, "discountExpireAt": "1979-12-06T00:00:00Z", "discountPercentage": 75, "discountPurchaseAt": "1980-02-13T00:00:00Z", "expireAt": "1996-06-19T00:00:00Z", "price": 56, "purchaseAt": "1993-10-17T00:00:00Z", "trialPrice": 23}], "hiPfkCbR5cRJ0YAi": [{"currencyCode": "Ao5DVdusoh6fEb4F", "currencyNamespace": "40QDEcsIwz7G9nT5", "currencyType": "REAL", "discountAmount": 18, "discountExpireAt": "1978-12-26T00:00:00Z", "discountPercentage": 3, "discountPurchaseAt": "1975-09-12T00:00:00Z", "expireAt": "1996-05-24T00:00:00Z", "price": 61, "purchaseAt": "1983-03-25T00:00:00Z", "trialPrice": 69}, {"currencyCode": "YM4v0L3y97BQPhtO", "currencyNamespace": "yrnjM70Xomn0dtjU", "currencyType": "REAL", "discountAmount": 6, "discountExpireAt": "1977-12-17T00:00:00Z", "discountPercentage": 42, "discountPurchaseAt": "1993-10-13T00:00:00Z", "expireAt": "1995-05-10T00:00:00Z", "price": 60, "purchaseAt": "1977-02-20T00:00:00Z", "trialPrice": 63}, {"currencyCode": "3tGmANuEODVRnTQk", "currencyNamespace": "ZEu7CZ0rNXRdrTwg", "currencyType": "VIRTUAL", "discountAmount": 59, "discountExpireAt": "1985-10-29T00:00:00Z", "discountPercentage": 4, "discountPurchaseAt": "1995-07-16T00:00:00Z", "expireAt": "1991-12-07T00:00:00Z", "price": 90, "purchaseAt": "1989-06-14T00:00:00Z", "trialPrice": 1}]}, "saleConfig": {"currencyCode": "J9mUOMDeajBZeatl", "price": 19}, "seasonType": "PASS", "sectionExclusive": false, "sellable": false, "sku": "9oSAvXaE7j1nHiWA", "stackable": false, "status": "ACTIVE", "tags": ["G7u3NWNESvcevBao", "mFZUkSF241Rkrifo", "2l0janwGP7iBetCd"], "targetCurrencyCode": "YJsg1E0Nzd22Xjdq", "targetNamespace": "YQLChomr9lnOmLN7", "thumbnailUrl": "C98OhviwysNIALjY", "useCount": 97}' \
    > test.out 2>&1
eval_tap $? 119 'CreateItem' test.out

#- 120 GetItemByAppId
samples/cli/sample-apps Platform getItemByAppId \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --storeId 'xnmxQsVC1Qtnq7lp' \
    --appId 'PUqKdIEBbhSsgBhs' \
    > test.out 2>&1
eval_tap $? 120 'GetItemByAppId' test.out

#- 121 QueryItems
samples/cli/sample-apps Platform queryItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --appType 'DEMO' \
    --availableDate 'BZPuutvRiUysg8h0' \
    --baseAppId 'NYckK697BYWFmjx9' \
    --categoryPath 'VzfuwMYZlXzwNAJB' \
    --features 'uTUWnzFtAJ3mPTBX' \
    --includeSubCategoryItem 'true' \
    --itemType 'EXTENSION' \
    --limit '52' \
    --offset '80' \
    --region 'ERITlcSaknS4OqLp' \
    --sortBy '["displayOrder:desc", "updatedAt", "createdAt:asc"]' \
    --storeId 'BnRJDBsN7KwhxY8g' \
    --tags 'SiZlARVxK7r3RRoI' \
    --targetNamespace 'wKseAIm5oaYK3zSu' \
    > test.out 2>&1
eval_tap $? 121 'QueryItems' test.out

#- 122 ListBasicItemsByFeatures
samples/cli/sample-apps Platform listBasicItemsByFeatures \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --features '["WKB0pXZyXyT3RHiw", "sGNiu5GH2MnCsMaB", "3fwji6zJl1ecHOWz"]' \
    > test.out 2>&1
eval_tap $? 122 'ListBasicItemsByFeatures' test.out

#- 123 GetItems
samples/cli/sample-apps Platform getItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'gy5RdfULsISDksIC' \
    --itemIds 'aRrL3yOVJQYucq3O' \
    > test.out 2>&1
eval_tap $? 123 'GetItems' test.out

#- 124 GetItemBySku
samples/cli/sample-apps Platform getItemBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --storeId 'abdk4spJ3hN1oteT' \
    --sku 'Er9vvMfyCh9qqrGK' \
    > test.out 2>&1
eval_tap $? 124 'GetItemBySku' test.out

#- 125 GetLocaleItemBySku
samples/cli/sample-apps Platform getLocaleItemBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --language 'sN31kKNYONzv9I1b' \
    --populateBundle 'true' \
    --region 'YVc7MIptskMvEmF3' \
    --storeId 'G5FFUISiSyo6HHAD' \
    --sku 'b9BuypkYaK7KwoZn' \
    > test.out 2>&1
eval_tap $? 125 'GetLocaleItemBySku' test.out

#- 126 GetEstimatedPrice
samples/cli/sample-apps Platform getEstimatedPrice \
    --namespace $AB_NAMESPACE \
    --platform 'jSjPanISaXB0r9Ya' \
    --region 'DG5YJifwFAuZhgln' \
    --storeId 'xuM8NKcrmWSss2Aw' \
    --itemIds 'fMyVYvurrWYV0SPo' \
    --userId 'HOUAhxyzqZ8QNjDA' \
    > test.out 2>&1
eval_tap $? 126 'GetEstimatedPrice' test.out

#- 127 GetItemIdBySku
samples/cli/sample-apps Platform getItemIdBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'NjVgOY0kTvQtSR7I' \
    --sku 'RStcyDlsAr439AA5' \
    > test.out 2>&1
eval_tap $? 127 'GetItemIdBySku' test.out

#- 128 GetBulkItemIdBySkus
samples/cli/sample-apps Platform getBulkItemIdBySkus \
    --namespace $AB_NAMESPACE \
    --sku '["412keF2f8ezoRht4", "E0a90IEiV2AwD5pS", "MctZG0i3WPoOUsAL"]' \
    --storeId 'NkoAvhltBAkRkQ81' \
    > test.out 2>&1
eval_tap $? 128 'GetBulkItemIdBySkus' test.out

#- 129 BulkGetLocaleItems
samples/cli/sample-apps Platform bulkGetLocaleItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --language 'KIQ75Xv6e7NqZSEf' \
    --region 'Ow6C4lJCJaKM04rA' \
    --storeId 'wuZyRCDHC4IxNiWX' \
    --itemIds 'r2ulsJcXOzJvK0gQ' \
    > test.out 2>&1
eval_tap $? 129 'BulkGetLocaleItems' test.out

#- 130 GetAvailablePredicateTypes
samples/cli/sample-apps Platform getAvailablePredicateTypes \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 130 'GetAvailablePredicateTypes' test.out

#- 131 ValidateItemPurchaseCondition
samples/cli/sample-apps Platform validateItemPurchaseCondition \
    --namespace $AB_NAMESPACE \
    --platform 'n1P6iaMfZUIxJBzM' \
    --userId 'ZMfezOJsIF9PxJv8' \
    --body '{"itemIds": ["69RFKKnKwGV78oTK", "HHfyVpTQkKvTzlgl", "Mmn1DnCtjHVd4WfV"]}' \
    > test.out 2>&1
eval_tap $? 131 'ValidateItemPurchaseCondition' test.out

#- 132 BulkUpdateRegionData
samples/cli/sample-apps Platform bulkUpdateRegionData \
    --namespace $AB_NAMESPACE \
    --storeId 'dJ7WyMkERd5xRPjV' \
    --body '{"changes": [{"itemIdentities": ["Zf1IG6cKslthYmQl", "z4ORLA7Gy5fOt9ET", "ZRVlgmrk3fEpiaqI"], "itemIdentityType": "ITEM_ID", "regionData": {"4VpBBNgm8h4Mrnp1": [{"currencyCode": "W0XVspjxlY7Hf9LW", "currencyNamespace": "PNMpscPS9yiLYyv8", "currencyType": "REAL", "discountAmount": 93, "discountExpireAt": "1987-02-04T00:00:00Z", "discountPercentage": 91, "discountPurchaseAt": "1979-02-03T00:00:00Z", "discountedPrice": 55, "expireAt": "1991-01-26T00:00:00Z", "price": 46, "purchaseAt": "1975-01-25T00:00:00Z", "trialPrice": 35}, {"currencyCode": "x6wVOvMmKoaiLxrS", "currencyNamespace": "cF4rw41S0CGFDaFd", "currencyType": "REAL", "discountAmount": 94, "discountExpireAt": "1987-11-19T00:00:00Z", "discountPercentage": 11, "discountPurchaseAt": "1984-05-04T00:00:00Z", "discountedPrice": 84, "expireAt": "1974-12-29T00:00:00Z", "price": 92, "purchaseAt": "1975-09-16T00:00:00Z", "trialPrice": 17}, {"currencyCode": "Rx7aWc5AwqTUhFWS", "currencyNamespace": "OfQY9L3LBoMphPDs", "currencyType": "VIRTUAL", "discountAmount": 59, "discountExpireAt": "1999-07-10T00:00:00Z", "discountPercentage": 68, "discountPurchaseAt": "1978-07-23T00:00:00Z", "discountedPrice": 95, "expireAt": "1994-03-12T00:00:00Z", "price": 5, "purchaseAt": "1997-01-09T00:00:00Z", "trialPrice": 84}], "DOMRttS13sj12lUE": [{"currencyCode": "ELvGhOkNI5kAB9sS", "currencyNamespace": "Z8rYUxSIt8SwLxMH", "currencyType": "VIRTUAL", "discountAmount": 77, "discountExpireAt": "1981-10-30T00:00:00Z", "discountPercentage": 11, "discountPurchaseAt": "1994-06-05T00:00:00Z", "discountedPrice": 64, "expireAt": "1991-01-30T00:00:00Z", "price": 87, "purchaseAt": "1975-10-07T00:00:00Z", "trialPrice": 95}, {"currencyCode": "3XTxsSMiTTatgR77", "currencyNamespace": "XOPzKmxXYoZnA6xo", "currencyType": "VIRTUAL", "discountAmount": 13, "discountExpireAt": "1984-11-23T00:00:00Z", "discountPercentage": 88, "discountPurchaseAt": "1987-06-12T00:00:00Z", "discountedPrice": 18, "expireAt": "1974-03-24T00:00:00Z", "price": 54, "purchaseAt": "1994-08-25T00:00:00Z", "trialPrice": 83}, {"currencyCode": "9TRIeKsMHjx5WMim", "currencyNamespace": "Uyca4fKrsvqU9Cri", "currencyType": "REAL", "discountAmount": 23, "discountExpireAt": "1973-02-01T00:00:00Z", "discountPercentage": 1, "discountPurchaseAt": "1984-06-08T00:00:00Z", "discountedPrice": 26, "expireAt": "1997-07-14T00:00:00Z", "price": 86, "purchaseAt": "1989-10-20T00:00:00Z", "trialPrice": 63}], "0D6oIyCV7nlqFJZV": [{"currencyCode": "zyrdCjoc7GOZ3lIc", "currencyNamespace": "fuoqq3eIOGMaI1rz", "currencyType": "REAL", "discountAmount": 89, "discountExpireAt": "1976-01-27T00:00:00Z", "discountPercentage": 42, "discountPurchaseAt": "1975-02-13T00:00:00Z", "discountedPrice": 63, "expireAt": "1999-10-13T00:00:00Z", "price": 92, "purchaseAt": "1994-03-29T00:00:00Z", "trialPrice": 4}, {"currencyCode": "E4ElfQL9lyInwodE", "currencyNamespace": "wdjspAe9RFgVH913", "currencyType": "VIRTUAL", "discountAmount": 27, "discountExpireAt": "1992-01-13T00:00:00Z", "discountPercentage": 22, "discountPurchaseAt": "1997-12-18T00:00:00Z", "discountedPrice": 93, "expireAt": "1995-12-07T00:00:00Z", "price": 97, "purchaseAt": "1978-07-18T00:00:00Z", "trialPrice": 73}, {"currencyCode": "66vLgjXUsyQvah5r", "currencyNamespace": "tXYhWk5IgrvwfXbw", "currencyType": "REAL", "discountAmount": 90, "discountExpireAt": "1975-12-25T00:00:00Z", "discountPercentage": 95, "discountPurchaseAt": "1973-01-02T00:00:00Z", "discountedPrice": 59, "expireAt": "1996-11-22T00:00:00Z", "price": 94, "purchaseAt": "1981-08-01T00:00:00Z", "trialPrice": 79}]}}, {"itemIdentities": ["kZXP430OMQ3Pjhcy", "yHPCM1ye2f9Sm9yu", "ikGpPsEz1roFB7p4"], "itemIdentityType": "ITEM_ID", "regionData": {"kSwTFENhgmF4x3eY": [{"currencyCode": "R4ey3Q3uG1yCDPJa", "currencyNamespace": "xb21wfTge22Ci48C", "currencyType": "REAL", "discountAmount": 13, "discountExpireAt": "1973-05-16T00:00:00Z", "discountPercentage": 42, "discountPurchaseAt": "1990-11-11T00:00:00Z", "discountedPrice": 47, "expireAt": "1978-04-20T00:00:00Z", "price": 23, "purchaseAt": "1993-12-20T00:00:00Z", "trialPrice": 47}, {"currencyCode": "Sc3OsnXBELAF7M9L", "currencyNamespace": "wava9yoEOdtp8yNC", "currencyType": "REAL", "discountAmount": 21, "discountExpireAt": "1998-12-22T00:00:00Z", "discountPercentage": 24, "discountPurchaseAt": "1986-07-18T00:00:00Z", "discountedPrice": 41, "expireAt": "1999-06-06T00:00:00Z", "price": 79, "purchaseAt": "1994-09-10T00:00:00Z", "trialPrice": 5}, {"currencyCode": "ME3ZFfu3GzrzwRms", "currencyNamespace": "btNGdVU9N1wXl0VR", "currencyType": "VIRTUAL", "discountAmount": 53, "discountExpireAt": "1972-04-23T00:00:00Z", "discountPercentage": 7, "discountPurchaseAt": "1972-10-10T00:00:00Z", "discountedPrice": 88, "expireAt": "1985-08-18T00:00:00Z", "price": 75, "purchaseAt": "1987-02-07T00:00:00Z", "trialPrice": 4}], "XDxRr8NmEnAy8Vyb": [{"currencyCode": "gZ0NXfZI0zfluvO3", "currencyNamespace": "vTjBQ8wqS7ls4pQo", "currencyType": "REAL", "discountAmount": 30, "discountExpireAt": "1985-05-27T00:00:00Z", "discountPercentage": 85, "discountPurchaseAt": "1978-12-03T00:00:00Z", "discountedPrice": 93, "expireAt": "1997-12-07T00:00:00Z", "price": 2, "purchaseAt": "1997-11-14T00:00:00Z", "trialPrice": 14}, {"currencyCode": "dL2pvspjQxF0oUxx", "currencyNamespace": "0rhGLacZlcFlgsyh", "currencyType": "VIRTUAL", "discountAmount": 48, "discountExpireAt": "1973-03-22T00:00:00Z", "discountPercentage": 32, "discountPurchaseAt": "1975-07-08T00:00:00Z", "discountedPrice": 46, "expireAt": "1996-05-18T00:00:00Z", "price": 47, "purchaseAt": "1993-03-20T00:00:00Z", "trialPrice": 97}, {"currencyCode": "jE1tbixidLqqvRHc", "currencyNamespace": "nbTm3LFHTXwwFXI1", "currencyType": "REAL", "discountAmount": 100, "discountExpireAt": "1981-12-21T00:00:00Z", "discountPercentage": 40, "discountPurchaseAt": "1977-04-28T00:00:00Z", "discountedPrice": 77, "expireAt": "1987-12-11T00:00:00Z", "price": 85, "purchaseAt": "1996-01-17T00:00:00Z", "trialPrice": 80}], "XsTYpCgThVHefPlL": [{"currencyCode": "BTr6mMSpakNVIanI", "currencyNamespace": "puEgCU4cEqaqJZR0", "currencyType": "REAL", "discountAmount": 75, "discountExpireAt": "1971-04-26T00:00:00Z", "discountPercentage": 72, "discountPurchaseAt": "1994-03-25T00:00:00Z", "discountedPrice": 95, "expireAt": "1984-05-12T00:00:00Z", "price": 34, "purchaseAt": "1997-11-14T00:00:00Z", "trialPrice": 64}, {"currencyCode": "sGIvn4arY3OKa7KT", "currencyNamespace": "4bvUbzTphDPwCYnb", "currencyType": "VIRTUAL", "discountAmount": 2, "discountExpireAt": "1985-05-20T00:00:00Z", "discountPercentage": 38, "discountPurchaseAt": "1984-04-03T00:00:00Z", "discountedPrice": 32, "expireAt": "1973-10-14T00:00:00Z", "price": 26, "purchaseAt": "1989-10-29T00:00:00Z", "trialPrice": 13}, {"currencyCode": "Veiu0XYXJs2cwa9r", "currencyNamespace": "zbFsekvDwC3W2SIk", "currencyType": "VIRTUAL", "discountAmount": 61, "discountExpireAt": "1980-07-04T00:00:00Z", "discountPercentage": 52, "discountPurchaseAt": "1982-12-01T00:00:00Z", "discountedPrice": 84, "expireAt": "1999-12-14T00:00:00Z", "price": 34, "purchaseAt": "1992-07-24T00:00:00Z", "trialPrice": 30}]}}, {"itemIdentities": ["TYIMReSV1kcCzXpu", "n3s71BTiKpezyU97", "9MuGMnwMzxJFtU4M"], "itemIdentityType": "ITEM_ID", "regionData": {"QKFKmxELjmuQRrxq": [{"currencyCode": "u4FEK7m7N3tiLSj9", "currencyNamespace": "ozld9Ee6wW0JHZFL", "currencyType": "REAL", "discountAmount": 75, "discountExpireAt": "1996-03-18T00:00:00Z", "discountPercentage": 67, "discountPurchaseAt": "1998-04-01T00:00:00Z", "discountedPrice": 34, "expireAt": "1977-06-21T00:00:00Z", "price": 98, "purchaseAt": "1999-02-09T00:00:00Z", "trialPrice": 66}, {"currencyCode": "5XRz9YlKx2XRoiVp", "currencyNamespace": "1RGYc9gkrUihgxKh", "currencyType": "VIRTUAL", "discountAmount": 95, "discountExpireAt": "1981-12-18T00:00:00Z", "discountPercentage": 26, "discountPurchaseAt": "1997-03-18T00:00:00Z", "discountedPrice": 56, "expireAt": "1977-08-17T00:00:00Z", "price": 34, "purchaseAt": "1982-01-18T00:00:00Z", "trialPrice": 91}, {"currencyCode": "yrPyU1ueydAuSI40", "currencyNamespace": "qWTEs5yUaLBLXxJv", "currencyType": "VIRTUAL", "discountAmount": 97, "discountExpireAt": "1974-10-23T00:00:00Z", "discountPercentage": 5, "discountPurchaseAt": "1996-04-03T00:00:00Z", "discountedPrice": 86, "expireAt": "1980-09-13T00:00:00Z", "price": 43, "purchaseAt": "1971-08-19T00:00:00Z", "trialPrice": 57}], "NQbvaQIyFHBpWGD0": [{"currencyCode": "LW18kLpBf0iVFw18", "currencyNamespace": "IV2cecQMR8BKZrny", "currencyType": "VIRTUAL", "discountAmount": 89, "discountExpireAt": "1989-10-02T00:00:00Z", "discountPercentage": 17, "discountPurchaseAt": "1984-12-11T00:00:00Z", "discountedPrice": 20, "expireAt": "1988-05-19T00:00:00Z", "price": 97, "purchaseAt": "1997-11-16T00:00:00Z", "trialPrice": 70}, {"currencyCode": "5u5KsUu2jBSW3tJg", "currencyNamespace": "C20Zyo8ww0p4Vpwx", "currencyType": "REAL", "discountAmount": 14, "discountExpireAt": "1989-02-09T00:00:00Z", "discountPercentage": 47, "discountPurchaseAt": "1976-06-26T00:00:00Z", "discountedPrice": 71, "expireAt": "1983-12-12T00:00:00Z", "price": 51, "purchaseAt": "1978-03-21T00:00:00Z", "trialPrice": 41}, {"currencyCode": "jffOWKxdNpXnGTG8", "currencyNamespace": "qCcdtCvAnQJP46hu", "currencyType": "VIRTUAL", "discountAmount": 18, "discountExpireAt": "1990-03-03T00:00:00Z", "discountPercentage": 58, "discountPurchaseAt": "1994-02-05T00:00:00Z", "discountedPrice": 97, "expireAt": "1984-06-02T00:00:00Z", "price": 45, "purchaseAt": "1971-06-01T00:00:00Z", "trialPrice": 94}], "XfyKviHtGa2t4P82": [{"currencyCode": "9hgZVnlVA4Be1O5X", "currencyNamespace": "Kl3fi8Li7IVL0eRo", "currencyType": "REAL", "discountAmount": 3, "discountExpireAt": "1995-02-04T00:00:00Z", "discountPercentage": 18, "discountPurchaseAt": "1971-02-18T00:00:00Z", "discountedPrice": 78, "expireAt": "1971-06-02T00:00:00Z", "price": 34, "purchaseAt": "1981-06-05T00:00:00Z", "trialPrice": 60}, {"currencyCode": "GSLM0S3Qe7ChpOoF", "currencyNamespace": "4DcztGGpEbdQyaCm", "currencyType": "VIRTUAL", "discountAmount": 28, "discountExpireAt": "1991-10-16T00:00:00Z", "discountPercentage": 94, "discountPurchaseAt": "1993-08-02T00:00:00Z", "discountedPrice": 53, "expireAt": "1971-01-07T00:00:00Z", "price": 11, "purchaseAt": "1996-12-23T00:00:00Z", "trialPrice": 70}, {"currencyCode": "VOayY6vWHoA6mezU", "currencyNamespace": "OZ5jUv9OpJO8C797", "currencyType": "REAL", "discountAmount": 58, "discountExpireAt": "1997-07-20T00:00:00Z", "discountPercentage": 35, "discountPurchaseAt": "1986-03-31T00:00:00Z", "discountedPrice": 34, "expireAt": "1971-06-08T00:00:00Z", "price": 1, "purchaseAt": "1988-08-21T00:00:00Z", "trialPrice": 30}]}}]}' \
    > test.out 2>&1
eval_tap $? 132 'BulkUpdateRegionData' test.out

#- 133 SearchItems
samples/cli/sample-apps Platform searchItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --itemType 'MEDIA' \
    --limit '55' \
    --offset '73' \
    --sortBy 'RNz3igiXFn5gj6ZH' \
    --storeId 'WCupBEdBTnHkTF2d' \
    --keyword 'wthZlJh8jtlpbu0Z' \
    --language 'zjLRF8Hlazm92LR7' \
    > test.out 2>&1
eval_tap $? 133 'SearchItems' test.out

#- 134 QueryUncategorizedItems
samples/cli/sample-apps Platform queryUncategorizedItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --limit '44' \
    --offset '84' \
    --sortBy '["name:asc", "updatedAt:asc", "updatedAt:desc"]' \
    --storeId 'BOJ8gu9Z9Fe5bkBy' \
    > test.out 2>&1
eval_tap $? 134 'QueryUncategorizedItems' test.out

#- 135 GetItem
samples/cli/sample-apps Platform getItem \
    --itemId 'AGBpJREFr3p0Dr2D' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'HM3MgWZR5BTFpKik' \
    > test.out 2>&1
eval_tap $? 135 'GetItem' test.out

#- 136 UpdateItem
samples/cli/sample-apps Platform updateItem \
    --itemId 'd8lEn3NJqz1x1QWK' \
    --namespace $AB_NAMESPACE \
    --storeId 'Bm2qWJlPIMQiKae8' \
    --body '{"appId": "QWZzFh2ygIMZ3Me3", "appType": "DEMO", "baseAppId": "G80i5qdkvLO42oEO", "boothName": "AG0ssVLsNsuacvVm", "categoryPath": "vKfXwwMebgB5azlN", "clazz": "cUhPaO6V10OWWz8G", "displayOrder": 36, "entitlementType": "CONSUMABLE", "ext": {"dwCTCEawgAu2yfCm": {}, "SjJTESABHMB2fQkM": {}, "dYScVyOwpIZmPHMt": {}}, "features": ["IJqcsaV4CiLXqEub", "GyeJRJF6XJvTJ7yK", "lTRJWjsrKzZ1lCsu"], "flexible": false, "images": [{"as": "yXxT2i36XxPXCYNE", "caption": "vD51rFMf6VPs0MdG", "height": 8, "imageUrl": "2KXxAgwj3y2vm4W6", "smallImageUrl": "sKNVDVNrmULQtDFM", "width": 12}, {"as": "H78a8hTeSHPokzfk", "caption": "RTOUA53mzRzDr7dQ", "height": 44, "imageUrl": "sNMmuKWvM3bWfa8B", "smallImageUrl": "SGNesUICU6HH6Zr2", "width": 18}, {"as": "vHDNfyAmdSkRI3XB", "caption": "3ZntTpN4Yp58jTZh", "height": 87, "imageUrl": "3PD6CgdBzhEzYhCn", "smallImageUrl": "glpqmLemE9FRkr19", "width": 63}], "inventoryConfig": {"customAttributes": {"3n09008Yv8MjggIQ": {}, "hh542njIfajfzKzX": {}, "0liC1bR4pZ4NQM07": {}}, "serverCustomAttributes": {"KtSPWtuoZ3HCE9Qn": {}, "I70VPYKm2FtcpTyR": {}, "agZ0pU0IicL2ZWLM": {}}, "slotUsed": 45}, "itemIds": ["TVrSk7EjzNtjj2EE", "mp29lPkFX4ywTmyI", "RvvMd84Umuxf4sgk"], "itemQty": {"asPMnaI37NkoZ7ex": 21, "uIgWQJanrAa9LBdb": 71, "w7xv1lcOd7sgqsoI": 37}, "itemType": "INGAMEITEM", "listable": false, "localizations": {"apCYfXkXtU6jguhI": {"description": "CPzGmzGrgpCqBaMH", "localExt": {"iNSrQhMGIMhqSFlT": {}, "6VF9Ry2hQey6aWqj": {}, "GDYfuKQYnr2B47wT": {}}, "longDescription": "1kbAALTiFw9lUIyX", "title": "mdLg51PbMHkDRFy9"}, "N1S5QAe8pGLkUasJ": {"description": "2J84YAyj3YRXxORv", "localExt": {"8SnksVa02wunTkhM": {}, "53HoJfrxC0iIyzUh": {}, "iMyNCfqixTLRkUFa": {}}, "longDescription": "O9zGALy8xPgGoHjb", "title": "8RBgQOD4FebsJFaB"}, "LuaTsT76ABMOLzNK": {"description": "CO7RkBi0P4eMflTd", "localExt": {"SQaAvtnqAuBu8q34": {}, "OS3al5ADpdbAoXF2": {}, "8MlAMqqdU9TmmtNi": {}}, "longDescription": "JRj71mGFvqhWquCs", "title": "Fq316684cJgJSdC6"}}, "lootBoxConfig": {"rewardCount": 1, "rewards": [{"lootBoxItems": [{"count": 19, "duration": 58, "endDate": "1988-08-02T00:00:00Z", "itemId": "i7GZpJ8I0AsgQ5M0", "itemSku": "skLDfDGcgb56kzOK", "itemType": "2TrlUUto3XNcOdmd"}, {"count": 83, "duration": 65, "endDate": "1988-11-20T00:00:00Z", "itemId": "aZDebjVnnfEhmD3T", "itemSku": "7lkgpVvyl2f1K43K", "itemType": "Fj08956LDuU00BaS"}, {"count": 26, "duration": 29, "endDate": "1983-06-10T00:00:00Z", "itemId": "OCdTElk3lDdvlhGX", "itemSku": "V2mhDi9nNMQowzAv", "itemType": "TagtHPk9D0SXp21j"}], "name": "3If1316YoP3a2ehk", "odds": 0.8652225280144232, "type": "PROBABILITY_GROUP", "weight": 74}, {"lootBoxItems": [{"count": 96, "duration": 13, "endDate": "1972-09-17T00:00:00Z", "itemId": "zrCJtQzpfm2f12yH", "itemSku": "prG3bwFnwQ9zV8Zv", "itemType": "jMGbrCRGHNL40IDg"}, {"count": 97, "duration": 64, "endDate": "1990-03-19T00:00:00Z", "itemId": "CCLb8QVZq7exmIvq", "itemSku": "KJSAABiZSBejvjmV", "itemType": "ZMgTLSHLMWUeVlOZ"}, {"count": 89, "duration": 8, "endDate": "1987-11-12T00:00:00Z", "itemId": "AD5VTaBxgizDlHvg", "itemSku": "HLTR9XXY846jFNls", "itemType": "An55jsKVqIfE8Tvn"}], "name": "b7x6nG7uAzs1gWq6", "odds": 0.44382579141272416, "type": "REWARD", "weight": 15}, {"lootBoxItems": [{"count": 81, "duration": 1, "endDate": "1974-10-15T00:00:00Z", "itemId": "yngCtwxQziu8xCqZ", "itemSku": "ynOwKJOmWxVTEmvg", "itemType": "AHC50zPwpkjyUmg2"}, {"count": 38, "duration": 92, "endDate": "1994-09-28T00:00:00Z", "itemId": "39zhJaYFrW2uHzng", "itemSku": "JZ3PBRCVdzgLZAKh", "itemType": "yyG7NdVXxTrDFYDV"}, {"count": 46, "duration": 94, "endDate": "1999-06-06T00:00:00Z", "itemId": "orVU9F5ByZ8u5wVZ", "itemSku": "p0MRbRqyCsW42TEi", "itemType": "27Uy1CkWV09qV6pe"}], "name": "OY1mxmOOSooS4TzC", "odds": 0.5785841045852262, "type": "REWARD_GROUP", "weight": 36}], "rollFunction": "CUSTOM"}, "maxCount": 99, "maxCountPerUser": 65, "name": "jZZnrB5t1Wo776k3", "optionBoxConfig": {"boxItems": [{"count": 57, "duration": 13, "endDate": "1999-08-06T00:00:00Z", "itemId": "ZbB6QepdkMFFcuU2", "itemSku": "hRFLr3kJG7WSSVvC", "itemType": "TwOEztrmwg21DELU"}, {"count": 1, "duration": 6, "endDate": "1974-12-01T00:00:00Z", "itemId": "VVUcE6bnXzQeIY2L", "itemSku": "wUpKFLoQcxeYmKr2", "itemType": "yTVasiYrxJzQKJrm"}, {"count": 7, "duration": 94, "endDate": "1972-11-04T00:00:00Z", "itemId": "ylcPN6U2sWFhGHrt", "itemSku": "ThpJQsC2tMiSI0CY", "itemType": "q7e8lWQLaAZmdACc"}]}, "purchasable": true, "recurring": {"cycle": "YEARLY", "fixedFreeDays": 86, "fixedTrialCycles": 16, "graceDays": 16}, "regionData": {"sz2QZwnXWnY90JZQ": [{"currencyCode": "hC6TQHjUjJCFwm3q", "currencyNamespace": "Pn8JPLvAkFkHC2Mt", "currencyType": "VIRTUAL", "discountAmount": 48, "discountExpireAt": "1994-11-20T00:00:00Z", "discountPercentage": 50, "discountPurchaseAt": "1984-08-30T00:00:00Z", "expireAt": "1989-10-11T00:00:00Z", "price": 83, "purchaseAt": "1971-06-04T00:00:00Z", "trialPrice": 10}, {"currencyCode": "pqY2xIZ5wLdQgirF", "currencyNamespace": "sGTtP9ZOyIz1yW1J", "currencyType": "REAL", "discountAmount": 97, "discountExpireAt": "1980-08-20T00:00:00Z", "discountPercentage": 37, "discountPurchaseAt": "1983-02-25T00:00:00Z", "expireAt": "1985-05-27T00:00:00Z", "price": 46, "purchaseAt": "1997-06-23T00:00:00Z", "trialPrice": 9}, {"currencyCode": "h7wZmrFZz5JbCC5x", "currencyNamespace": "NKTabLzV8GTn5CMQ", "currencyType": "REAL", "discountAmount": 13, "discountExpireAt": "1992-08-17T00:00:00Z", "discountPercentage": 59, "discountPurchaseAt": "1971-02-08T00:00:00Z", "expireAt": "1994-06-23T00:00:00Z", "price": 24, "purchaseAt": "1974-07-24T00:00:00Z", "trialPrice": 99}], "eJNA3o8kX9TvTvbj": [{"currencyCode": "C2gnLdYrpxJD7xXh", "currencyNamespace": "ncqrQ1uUNZUMbz9W", "currencyType": "REAL", "discountAmount": 24, "discountExpireAt": "1988-11-16T00:00:00Z", "discountPercentage": 14, "discountPurchaseAt": "1995-01-09T00:00:00Z", "expireAt": "1983-11-07T00:00:00Z", "price": 53, "purchaseAt": "1989-02-07T00:00:00Z", "trialPrice": 5}, {"currencyCode": "hQd4KjbNvhaFRIwx", "currencyNamespace": "zcNRV1NkSIm7u1BX", "currencyType": "VIRTUAL", "discountAmount": 22, "discountExpireAt": "1999-05-20T00:00:00Z", "discountPercentage": 7, "discountPurchaseAt": "1998-05-10T00:00:00Z", "expireAt": "1978-07-18T00:00:00Z", "price": 6, "purchaseAt": "1984-09-03T00:00:00Z", "trialPrice": 7}, {"currencyCode": "UXQY8wCKmBxTlKub", "currencyNamespace": "nusXYwuO5WDgmNrQ", "currencyType": "REAL", "discountAmount": 75, "discountExpireAt": "1985-08-03T00:00:00Z", "discountPercentage": 30, "discountPurchaseAt": "1991-06-14T00:00:00Z", "expireAt": "1987-11-23T00:00:00Z", "price": 91, "purchaseAt": "1996-11-18T00:00:00Z", "trialPrice": 80}], "wRWk77tKmVrwYdbe": [{"currencyCode": "xulvbxPkiJTFwglS", "currencyNamespace": "QedfGpS1hqSiV1z7", "currencyType": "REAL", "discountAmount": 74, "discountExpireAt": "1972-04-14T00:00:00Z", "discountPercentage": 39, "discountPurchaseAt": "1977-06-16T00:00:00Z", "expireAt": "1981-12-17T00:00:00Z", "price": 84, "purchaseAt": "1975-10-17T00:00:00Z", "trialPrice": 1}, {"currencyCode": "UdHAVDBKpFpP8KSv", "currencyNamespace": "PNuYfFoD4Ry1CtYz", "currencyType": "REAL", "discountAmount": 41, "discountExpireAt": "1973-11-14T00:00:00Z", "discountPercentage": 60, "discountPurchaseAt": "1999-08-15T00:00:00Z", "expireAt": "1993-11-13T00:00:00Z", "price": 59, "purchaseAt": "1983-11-19T00:00:00Z", "trialPrice": 31}, {"currencyCode": "uPK3aim6Y3m8y5VP", "currencyNamespace": "zSM4KFowgl4WyJrI", "currencyType": "VIRTUAL", "discountAmount": 31, "discountExpireAt": "1980-11-18T00:00:00Z", "discountPercentage": 92, "discountPurchaseAt": "1971-02-05T00:00:00Z", "expireAt": "1993-04-04T00:00:00Z", "price": 28, "purchaseAt": "1978-01-20T00:00:00Z", "trialPrice": 48}]}, "saleConfig": {"currencyCode": "AXNrQIR4GQLcabSz", "price": 1}, "seasonType": "PASS", "sectionExclusive": false, "sellable": false, "sku": "Y5EmSntsTgLXD3hG", "stackable": false, "status": "ACTIVE", "tags": ["Y3NwjjDPKKz4lU9k", "DrrPwNeHpTD1BipG", "F7GWSxZnGP0MEGXw"], "targetCurrencyCode": "7hKsvdA02mfzPDiz", "targetNamespace": "cSmgCqmU7amdudRy", "thumbnailUrl": "S07nov8oYJLGgGov", "useCount": 45}' \
    > test.out 2>&1
eval_tap $? 136 'UpdateItem' test.out

#- 137 DeleteItem
samples/cli/sample-apps Platform deleteItem \
    --itemId 'te38CGsJDCyYg4Ts' \
    --namespace $AB_NAMESPACE \
    --featuresToCheck '["CAMPAIGN", "DLC", "ENTITLEMENT"]' \
    --force 'false' \
    --storeId 'BUmBGS8CJhY6xlUZ' \
    > test.out 2>&1
eval_tap $? 137 'DeleteItem' test.out

#- 138 AcquireItem
samples/cli/sample-apps Platform acquireItem \
    --itemId 'ONgkYPQp6CE4is4I' \
    --namespace $AB_NAMESPACE \
    --body '{"count": 47, "orderNo": "TX571I2toCYz7qyl"}' \
    > test.out 2>&1
eval_tap $? 138 'AcquireItem' test.out

#- 139 GetApp
samples/cli/sample-apps Platform getApp \
    --itemId 'SBxb3BscyKspkd3H' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --storeId 'mEwF2LSpmQe5VxaY' \
    > test.out 2>&1
eval_tap $? 139 'GetApp' test.out

#- 140 UpdateApp
samples/cli/sample-apps Platform updateApp \
    --itemId 'bJ6zOQKvjnfMUDzD' \
    --namespace $AB_NAMESPACE \
    --storeId 'a6qMMysXdIF3xCvS' \
    --body '{"carousel": [{"alt": "lSX1mZ0WFFyUE5BJ", "previewUrl": "1hAfXunFXcljfNUU", "thumbnailUrl": "kVRTQTgi35JF6ilV", "type": "video", "url": "MK4qaeSJJalDAhwC", "videoSource": "youtube"}, {"alt": "gWZTtMnClkDB8nxk", "previewUrl": "5EcZUizx4N3B1mwI", "thumbnailUrl": "Mrt7UDf4jTp57eSW", "type": "video", "url": "Ir4i4hwLxceJCbij", "videoSource": "generic"}, {"alt": "jx5slxhQFbP42ubX", "previewUrl": "aSzBO3OdDO0ZBC4L", "thumbnailUrl": "cVltjmWxgatsSyUq", "type": "image", "url": "lsNKy4OtjvciAT5u", "videoSource": "generic"}], "developer": "oUo2rJ5W7pEj4Njg", "forumUrl": "YpOnhvY9RUHcn0Yf", "genres": ["Casual", "Indie", "MassivelyMultiplayer"], "localizations": {"1eyaEwsUxx1rHZ7m": {"announcement": "yaTSdnG3Qiho3AMl", "slogan": "rejzRXBdqYEu7fm6"}, "NXfXU4wbml0hOOGY": {"announcement": "B9N2uoWzBoeWSuly", "slogan": "WHIFwW6ES0pcQ6LP"}, "4fYAMoplKlkZTj1R": {"announcement": "8bv6bIbJ30hs0HnQ", "slogan": "1jsJnc8rnxv8qpC2"}}, "platformRequirements": {"k4fBTbXY9zrQUc8L": [{"additionals": "zBzGZI71qhPdFVuQ", "directXVersion": "CYfSmI1Ilzrbs96n", "diskSpace": "6gpyFgdxAPw8H97W", "graphics": "G8AnzkikOWG5UvYn", "label": "SE3Y0N1nTNdSAXFe", "osVersion": "zPdlJMKPDXy1q8JO", "processor": "biXAaq87amvYZ1no", "ram": "KI5RCtv7wBtVDynM", "soundCard": "LjjbEpUQqYotrsYK"}, {"additionals": "CJQnrO6htiorg7vI", "directXVersion": "fnk2J0jrN24kqv5v", "diskSpace": "dWoHSXGMEi7Vjwsp", "graphics": "LS88SRK53pr2eJ6d", "label": "lj3iKMnvAuQxkqev", "osVersion": "fgwFWpiGgkxWH5GF", "processor": "TJJQZegqgdTFiRIM", "ram": "eX2F2MOjGLGOJMFC", "soundCard": "9BIRuMAzqTSSc8jr"}, {"additionals": "4G30KpPn6mBlGMN9", "directXVersion": "t1kDHzsJLNzZJCXD", "diskSpace": "fihaN1y7CX6gNBD5", "graphics": "RPSQ0fcRDFBaYmh3", "label": "MUgV4mXJ0sHedlCR", "osVersion": "4VK75iwnvGgYY5ED", "processor": "ufJXD4ze0ndsMlRf", "ram": "jT5ilYvZyY1azfNj", "soundCard": "t5AKcUSAl6jkqZAp"}], "anGOZy7mJT1EwF79": [{"additionals": "wD2VaN3nZobTCcu5", "directXVersion": "BRWpWZbuFne1vfu1", "diskSpace": "lWdi8nk2bW0xp5hm", "graphics": "YmQHP3wDVWh8vbhw", "label": "lcsyEGT0vNHGwvcX", "osVersion": "Yv2wbVZiFpkOwBxY", "processor": "DJKeTwpsznZz7MXf", "ram": "ixL5HPBZVVMVK6uj", "soundCard": "8Lwc8FiFzM49l3RD"}, {"additionals": "87RKABcSnDhpcu0J", "directXVersion": "P19bDVzyllVkfyQl", "diskSpace": "anslnBGBFVgbANk1", "graphics": "sNEmZYMpadgAciHF", "label": "W7MyhDpHAilJGSq5", "osVersion": "qjM6DzXajl5QMflK", "processor": "N0P8hEoukuuelXAV", "ram": "M8SG9Zm5cx2exSq8", "soundCard": "2Ef2KMpANb0JtxVi"}, {"additionals": "dPeZ1xJLeYRlMFBf", "directXVersion": "a1EYYqAopWUmMha5", "diskSpace": "w5Jku26FWO6ru1ry", "graphics": "Dd0Rx8gaACp25RO4", "label": "0ibsK9DGUL5WfLhQ", "osVersion": "w9nLLSGoDQDTNkWL", "processor": "PVwBt9dJ7O1ZRIA7", "ram": "SjoE5X7LvsQhvaMu", "soundCard": "CE5zw14Vtq66XGVG"}], "X8qGevg2DVc8ezvU": [{"additionals": "86rtnckYf3jq43dE", "directXVersion": "UJXxuSMjtNS5Opof", "diskSpace": "RBgYwiLNSZCj15Le", "graphics": "llg1DTRpRixGQOT6", "label": "Kvud4YXqPcbPTMCn", "osVersion": "hDOfmAWZEbskyKAV", "processor": "SMeTNG1GY1Bh43cM", "ram": "nDVaFY2BzzpcmLoF", "soundCard": "ya2a1Hjuc8nffyhi"}, {"additionals": "QnjnYSi7A4R72CqZ", "directXVersion": "nBAGl2ZhrtJVOBDz", "diskSpace": "kA9mABnjdHzSFfP2", "graphics": "Xcoxi478wNXc9v7L", "label": "cpG1HeV3MJtrGA19", "osVersion": "bqp99lZNtm5FHkq1", "processor": "Pn6rET6tHNapZobr", "ram": "KCsaE7RjY0g4BZBq", "soundCard": "i6qjbB3JwwQhWlke"}, {"additionals": "56IAPfmPWprjX4Dp", "directXVersion": "lo21tm5AHoM6GfEW", "diskSpace": "ZB9A0g3NWzpkGKat", "graphics": "eE9KVA9o0J04NsFW", "label": "geTFbugjmPpEBeyw", "osVersion": "cCtqLWcX1mjuJwFF", "processor": "2khCDpUncWwoBHlU", "ram": "QPzERpkMUJSPeqpD", "soundCard": "qBF546Y9v9PL6T5d"}]}, "platforms": ["IOS", "Linux", "IOS"], "players": ["MMO", "Coop", "Multi"], "primaryGenre": "Sports", "publisher": "VXlylzhfvathJRF2", "releaseDate": "1988-06-04T00:00:00Z", "websiteUrl": "3olMAzEltAnri9ph"}' \
    > test.out 2>&1
eval_tap $? 140 'UpdateApp' test.out

#- 141 DisableItem
samples/cli/sample-apps Platform disableItem \
    --itemId 'KyZCkbvdDx5hWo93' \
    --namespace $AB_NAMESPACE \
    --storeId '0Ia3ZVmC9LbXt0dI' \
    --body '{"featuresToCheck": ["IAP", "DLC"]}' \
    > test.out 2>&1
eval_tap $? 141 'DisableItem' test.out

#- 142 GetItemDynamicData
samples/cli/sample-apps Platform getItemDynamicData \
    --itemId 'vMLiJsYTfeRbd9QE' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 142 'GetItemDynamicData' test.out

#- 143 EnableItem
samples/cli/sample-apps Platform enableItem \
    --itemId 'u2tdU5mk1KeiTUWE' \
    --namespace $AB_NAMESPACE \
    --storeId 'uk3T3fTJqQk08ZL1' \
    > test.out 2>&1
eval_tap $? 143 'EnableItem' test.out

#- 144 FeatureItem
samples/cli/sample-apps Platform featureItem \
    --feature '6ZjzkkNtPPnHGi1w' \
    --itemId 'zuF3VeWvmCujNVIB' \
    --namespace $AB_NAMESPACE \
    --storeId 'GxoDFddF6W7RYZWI' \
    > test.out 2>&1
eval_tap $? 144 'FeatureItem' test.out

#- 145 DefeatureItem
samples/cli/sample-apps Platform defeatureItem \
    --feature 'zunNEgX4j8RqvJuw' \
    --itemId 'wsf1Ric61UfEHqhi' \
    --namespace $AB_NAMESPACE \
    --storeId 'hEnPxNvFeLEjsEP5' \
    > test.out 2>&1
eval_tap $? 145 'DefeatureItem' test.out

#- 146 GetLocaleItem
samples/cli/sample-apps Platform getLocaleItem \
    --itemId 'kQbfUIFD1frNbjWG' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --language '0k91yNcBxVyRmbiE' \
    --populateBundle 'false' \
    --region 'ayUwxGTXeHAd5vSf' \
    --storeId 'BS9ZcU3JYCUf9yDV' \
    > test.out 2>&1
eval_tap $? 146 'GetLocaleItem' test.out

#- 147 UpdateItemPurchaseCondition
samples/cli/sample-apps Platform updateItemPurchaseCondition \
    --itemId 'xjYj0bM1dZvGZgMc' \
    --namespace $AB_NAMESPACE \
    --storeId 'izXtDScxX7xmArIa' \
    --body '{"purchaseCondition": {"conditionGroups": [{"operator": "or", "predicates": [{"anyOf": 27, "code": "X0UwrWfVfF6adUWM", "comparison": "isNot", "name": "9mDENoLi0wdJtdyW", "predicateType": "EntitlementPredicate", "value": "zc3wkLXLjK5K0bF5", "values": ["LDkt7bVuqgCyLhlc", "4UwIE8IGF9FxXcBO", "inLkbooYdK2gF3xG"]}, {"anyOf": 31, "code": "xGXvqx3DvKj87yGr", "comparison": "is", "name": "6DqxaohL8FTgVHR5", "predicateType": "SeasonTierPredicate", "value": "c2Y3dgzjZXepkhBd", "values": ["aWwQwZTaaUff13X0", "tiXDCli7CgJildJZ", "5geFcBhWbewPq7XJ"]}, {"anyOf": 90, "code": "Qvvb2sJiMSd0qpAV", "comparison": "is", "name": "EcscTzY1K4Ie0pFF", "predicateType": "EntitlementPredicate", "value": "f8fejhol7ut4Wx0R", "values": ["NjJz53igJ2O6xQUV", "izuQNgqpoLMGQFMG", "iyZ4swNPJZ4Q68Tp"]}]}, {"operator": "and", "predicates": [{"anyOf": 8, "code": "F0TgRQpYxgTkW5zS", "comparison": "isGreaterThanOrEqual", "name": "afiny8gpdrKtxATg", "predicateType": "SeasonPassPredicate", "value": "RiNhaepSBDFHtCkr", "values": ["8gIUNGkoc5vgvn9g", "Gs90AAMPLS5tw1EL", "gYtnuSTtNYEFXGOW"]}, {"anyOf": 49, "code": "sElBh8A7a1ngJVxf", "comparison": "isLessThanOrEqual", "name": "WeDFi06FyF1OKZGQ", "predicateType": "EntitlementPredicate", "value": "Wtx5CHunYWTLPpYW", "values": ["4z7BtzyzzyiueH5E", "QPvVHqFeNPcmpjUe", "i2yIlJyRFq6xHhei"]}, {"anyOf": 78, "code": "LXk2GTSC5EgqIwCc", "comparison": "isLessThan", "name": "ebM9kEVltiUIOKpX", "predicateType": "SeasonPassPredicate", "value": "DNmaQuOIuUzZubJW", "values": ["fZcm5MosuiDC6JtQ", "mGdxwMcSt9fe94S1", "udt0paLb5AaiDbIN"]}]}, {"operator": "or", "predicates": [{"anyOf": 73, "code": "dV35Cz7m9aMuvFB9", "comparison": "is", "name": "TlJ8T2seMFAEQHhk", "predicateType": "EntitlementPredicate", "value": "L0kr7pYCTtm9MSdS", "values": ["ypiUuITBIqJwUYk9", "91FHPGSAXImEC54n", "Ju9LsihpSNHiVWJD"]}, {"anyOf": 67, "code": "Q0pk120iSo7AaMjI", "comparison": "isLessThan", "name": "aU8Z2yLhfrDmEYmj", "predicateType": "SeasonTierPredicate", "value": "gYw27wBGue5Vrd01", "values": ["LD5U52BYYr8eoyQ9", "TiIpFgtssmSmx9K8", "tTu8rilcfoG8efHp"]}, {"anyOf": 34, "code": "irwqYTOz6csTKTSE", "comparison": "isNot", "name": "4NRCAvBoDsKvifzE", "predicateType": "SeasonPassPredicate", "value": "VYGobKtQ1259Ba7S", "values": ["Sqpq0gvjdFoJGiSH", "78IKEjtqB0TKrLge", "jYZutUPgaUIjhiDI"]}]}]}}' \
    > test.out 2>&1
eval_tap $? 147 'UpdateItemPurchaseCondition' test.out

#- 148 QueryItemReferences
samples/cli/sample-apps Platform queryItemReferences \
    --itemId 'pxphF08biI6XXT7d' \
    --namespace $AB_NAMESPACE \
    --featuresToCheck '["ENTITLEMENT", "CAMPAIGN", "CATALOG"]' \
    --storeId 'LXLmGA1rnwQgA0Sm' \
    > test.out 2>&1
eval_tap $? 148 'QueryItemReferences' test.out

#- 149 ReturnItem
samples/cli/sample-apps Platform returnItem \
    --itemId 'GTHuaYjxtfEIMoq3' \
    --namespace $AB_NAMESPACE \
    --body '{"orderNo": "oKGraQORxCDt1fuD"}' \
    > test.out 2>&1
eval_tap $? 149 'ReturnItem' test.out

#- 150 QueryKeyGroups
samples/cli/sample-apps Platform queryKeyGroups \
    --namespace $AB_NAMESPACE \
    --limit '42' \
    --name 'YSCBbNtuff9dmP9Z' \
    --offset '79' \
    --tag 'hk7x5wu9apOFmuEp' \
    > test.out 2>&1
eval_tap $? 150 'QueryKeyGroups' test.out

#- 151 CreateKeyGroup
samples/cli/sample-apps Platform createKeyGroup \
    --namespace $AB_NAMESPACE \
    --body '{"description": "bg2tulNbNuoAm9rK", "name": "wZ5U3cm2Jht7KH3M", "status": "ACTIVE", "tags": ["yKNyc1ZPnoUfY1yO", "QCefQHZc8wtBn3N5", "7ekvmr0OrsS0EUwp"]}' \
    > test.out 2>&1
eval_tap $? 151 'CreateKeyGroup' test.out

#- 152 GetKeyGroupByBoothName
eval_tap 0 152 'GetKeyGroupByBoothName # SKIP deprecated' test.out

#- 153 GetKeyGroup
samples/cli/sample-apps Platform getKeyGroup \
    --keyGroupId 'BtwWLiZ7iWyKy08H' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 153 'GetKeyGroup' test.out

#- 154 UpdateKeyGroup
samples/cli/sample-apps Platform updateKeyGroup \
    --keyGroupId 'dwZ9mtwu6dEZPwPi' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "gWmEneIED5eMwLic", "name": "3RZIUWunpofyLMNu", "status": "ACTIVE", "tags": ["44q5K0qk0UXefofy", "yBAGMmn0Fbe1njHm", "84unz7nkuF11U6Mv"]}' \
    > test.out 2>&1
eval_tap $? 154 'UpdateKeyGroup' test.out

#- 155 GetKeyGroupDynamic
samples/cli/sample-apps Platform getKeyGroupDynamic \
    --keyGroupId '7jaCWfgTxDuA4h0E' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 155 'GetKeyGroupDynamic' test.out

#- 156 ListKeys
samples/cli/sample-apps Platform listKeys \
    --keyGroupId 'ChBm7rhsTvs05ED9' \
    --namespace $AB_NAMESPACE \
    --limit '27' \
    --offset '64' \
    --status 'ACQUIRED' \
    > test.out 2>&1
eval_tap $? 156 'ListKeys' test.out

#- 157 UploadKeys
samples/cli/sample-apps Platform uploadKeys \
    --keyGroupId 'fmGpgV6NUSzADO8l' \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 157 'UploadKeys' test.out

#- 158 QueryOrders
samples/cli/sample-apps Platform queryOrders \
    --namespace $AB_NAMESPACE \
    --endTime 'vyv0HZg0UBJl1zsD' \
    --limit '86' \
    --offset '47' \
    --orderNos '["yce38hF2J1DFRqp5", "2QJnf25sQLkFgdlm", "3cnCJY1OCYu4RzYc"]' \
    --sortBy 'uKaoH82GEficAkKh' \
    --startTime 'WlwtvEW8PTUxg3w3' \
    --status 'REFUNDING' \
    --withTotal 'true' \
    > test.out 2>&1
eval_tap $? 158 'QueryOrders' test.out

#- 159 GetOrderStatistics
samples/cli/sample-apps Platform getOrderStatistics \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 159 'GetOrderStatistics' test.out

#- 160 GetOrder
samples/cli/sample-apps Platform getOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'x5DPTWhYAh5U2ruD' \
    > test.out 2>&1
eval_tap $? 160 'GetOrder' test.out

#- 161 RefundOrder
samples/cli/sample-apps Platform refundOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'AbABvto73Nd0YjZe' \
    --body '{"description": "9k4HAl3G4q8Yf4Aq"}' \
    > test.out 2>&1
eval_tap $? 161 'RefundOrder' test.out

#- 162 GetPaymentCallbackConfig
eval_tap 0 162 'GetPaymentCallbackConfig # SKIP deprecated' test.out

#- 163 UpdatePaymentCallbackConfig
eval_tap 0 163 'UpdatePaymentCallbackConfig # SKIP deprecated' test.out

#- 164 GetPaymentMerchantConfig
samples/cli/sample-apps Platform getPaymentMerchantConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 164 'GetPaymentMerchantConfig' test.out

#- 165 UpdatePaymentDomainWhitelistConfig
samples/cli/sample-apps Platform updatePaymentDomainWhitelistConfig \
    --namespace $AB_NAMESPACE \
    --body '{"domains": ["MJ9VYsWSxZjxIk0r", "711CI6yW62Czixgl", "4iy1EjYFP76X5Nnc"]}' \
    > test.out 2>&1
eval_tap $? 165 'UpdatePaymentDomainWhitelistConfig' test.out

#- 166 QueryPaymentNotifications
samples/cli/sample-apps Platform queryPaymentNotifications \
    --namespace $AB_NAMESPACE \
    --endDate 'C9Hkk21OtIbmQ0RQ' \
    --externalId 'PNx0d2mlaWYG81f9' \
    --limit '63' \
    --notificationSource 'NEONPAY' \
    --notificationType 'ZJtKJE6k13EKkgNb' \
    --offset '30' \
    --paymentOrderNo 'qk79qBa4R1fxVfG1' \
    --startDate 'iM0S7Fiw6PrGi3DR' \
    --status 'IGNORED' \
    > test.out 2>&1
eval_tap $? 166 'QueryPaymentNotifications' test.out

#- 167 QueryPaymentOrders
samples/cli/sample-apps Platform queryPaymentOrders \
    --namespace $AB_NAMESPACE \
    --channel 'EXTERNAL' \
    --extTxId 'M7yXz2bugGkUvfxg' \
    --limit '68' \
    --offset '62' \
    --status 'CHARGED' \
    > test.out 2>&1
eval_tap $? 167 'QueryPaymentOrders' test.out

#- 168 CreatePaymentOrderByDedicated
samples/cli/sample-apps Platform createPaymentOrderByDedicated \
    --namespace $AB_NAMESPACE \
    --body '{"currencyCode": "W2mtPffzrPWqeAjW", "currencyNamespace": "ZHNEHWpB40TPthSj", "customParameters": {"ERJWeD2VwMSarEXD": {}, "Xx0VZZqTHIzJIV27": {}, "0EBKli3z6281L8Ry": {}}, "description": "EBUJWbUQqbxBVkDQ", "extOrderNo": "JVutrGaShBIGJOJy", "extUserId": "pSxfpzVP8kGT5JAn", "itemType": "BUNDLE", "language": "AF_bNMp-133", "metadata": {"7z24YgCVZ6OIGAEK": "vGFFJvCTidZZKq7d", "A5x8rQG1N0nEWfuY": "0iO4vRX0VSD9uojQ", "DBglYgQrkOtsF0aR": "OphdKcR6qx7gzMFa"}, "notifyUrl": "gNjoGkfHkEZf11pg", "omitNotification": true, "platform": "MfS9aBqYiBhpsK1D", "price": 0, "recurringPaymentOrderNo": "khADLZooIYHUuUiL", "region": "Fvlpo3JuXix03W7W", "returnUrl": "hbNJ9dS8ynwVH9ds", "sandbox": true, "sku": "QewrNfGOgdcd2Nw6", "subscriptionId": "b55GJf4zuS0nWRcV", "targetNamespace": "kpIHiIVgCQbYSMru", "targetUserId": "XdbHjEl3htxcsRq8", "title": "9JrHcRpBBI1KSva7"}' \
    > test.out 2>&1
eval_tap $? 168 'CreatePaymentOrderByDedicated' test.out

#- 169 ListExtOrderNoByExtTxId
samples/cli/sample-apps Platform listExtOrderNoByExtTxId \
    --namespace $AB_NAMESPACE \
    --extTxId 'TfzuGNcoVZAhDm4P' \
    > test.out 2>&1
eval_tap $? 169 'ListExtOrderNoByExtTxId' test.out

#- 170 GetPaymentOrder
samples/cli/sample-apps Platform getPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'ehIgKcqGKO3xOThp' \
    > test.out 2>&1
eval_tap $? 170 'GetPaymentOrder' test.out

#- 171 ChargePaymentOrder
samples/cli/sample-apps Platform chargePaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo '27kdr1WyKcxD18xN' \
    --body '{"extTxId": "3N6tg3TH3mmYd3q6", "paymentMethod": "XWv96twYyvrPKjEs", "paymentProvider": "ADYEN"}' \
    > test.out 2>&1
eval_tap $? 171 'ChargePaymentOrder' test.out

#- 172 RefundPaymentOrderByDedicated
samples/cli/sample-apps Platform refundPaymentOrderByDedicated \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo '43HrSlVxFDK9IX8O' \
    --body '{"description": "Btk4RsyDPYVEOX6k"}' \
    > test.out 2>&1
eval_tap $? 172 'RefundPaymentOrderByDedicated' test.out

#- 173 SimulatePaymentOrderNotification
samples/cli/sample-apps Platform simulatePaymentOrderNotification \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'GvsRW7FiEbqDTdin' \
    --body '{"amount": 53, "currencyCode": "VPYoWtV7P6d7Gvpi", "notifyType": "REFUND", "paymentProvider": "PAYPAL", "salesTax": 94, "vat": 99}' \
    > test.out 2>&1
eval_tap $? 173 'SimulatePaymentOrderNotification' test.out

#- 174 GetPaymentOrderChargeStatus
samples/cli/sample-apps Platform getPaymentOrderChargeStatus \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'fJXDFqlBcra4AjTn' \
    > test.out 2>&1
eval_tap $? 174 'GetPaymentOrderChargeStatus' test.out

#- 175 GetPsnEntitlementOwnership
samples/cli/sample-apps Platform getPsnEntitlementOwnership \
    --entitlementLabel 'ObZu4w7jFHAWSqKw' \
    --namespace $AB_NAMESPACE \
    --body '{"accessToken": "YY7T8ibA7FNyhust", "serviceLabel": 93}' \
    > test.out 2>&1
eval_tap $? 175 'GetPsnEntitlementOwnership' test.out

#- 176 GetXboxEntitlementOwnership
samples/cli/sample-apps Platform getXboxEntitlementOwnership \
    --namespace $AB_NAMESPACE \
    --productSku 'TkPEsWmnH13YtSY6' \
    --body '{"delegationToken": "xQmLlJj7p8QjA535", "sandboxId": "jz1wqle1aXHscktK"}' \
    > test.out 2>&1
eval_tap $? 176 'GetXboxEntitlementOwnership' test.out

#- 177 GetPlatformEntitlementConfig
samples/cli/sample-apps Platform getPlatformEntitlementConfig \
    --namespace $AB_NAMESPACE \
    --platform 'GooglePlay' \
    > test.out 2>&1
eval_tap $? 177 'GetPlatformEntitlementConfig' test.out

#- 178 UpdatePlatformEntitlementConfig
samples/cli/sample-apps Platform updatePlatformEntitlementConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Playstation' \
    --body '{"allowedPlatformOrigins": ["GooglePlay", "Epic", "Epic"]}' \
    > test.out 2>&1
eval_tap $? 178 'UpdatePlatformEntitlementConfig' test.out

#- 179 GetPlatformWalletConfig
samples/cli/sample-apps Platform getPlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Oculus' \
    > test.out 2>&1
eval_tap $? 179 'GetPlatformWalletConfig' test.out

#- 180 UpdatePlatformWalletConfig
samples/cli/sample-apps Platform updatePlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Other' \
    --body '{"allowedBalanceOrigins": ["GooglePlay", "Epic", "Oculus"]}' \
    > test.out 2>&1
eval_tap $? 180 'UpdatePlatformWalletConfig' test.out

#- 181 ResetPlatformWalletConfig
samples/cli/sample-apps Platform resetPlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Playstation' \
    > test.out 2>&1
eval_tap $? 181 'ResetPlatformWalletConfig' test.out

#- 182 GetRevocationConfig
samples/cli/sample-apps Platform getRevocationConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 182 'GetRevocationConfig' test.out

#- 183 UpdateRevocationConfig
samples/cli/sample-apps Platform updateRevocationConfig \
    --namespace $AB_NAMESPACE \
    --body '{"entitlement": {"consumable": {"enabled": false, "strategy": "REVOKE_OR_REPORT"}, "durable": {"enabled": false, "strategy": "REVOKE_OR_REPORT"}}, "wallet": {"enabled": true, "strategy": "ALWAYS_REVOKE"}}' \
    > test.out 2>&1
eval_tap $? 183 'UpdateRevocationConfig' test.out

#- 184 DeleteRevocationConfig
samples/cli/sample-apps Platform deleteRevocationConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 184 'DeleteRevocationConfig' test.out

#- 185 QueryRevocationHistories
samples/cli/sample-apps Platform queryRevocationHistories \
    --namespace $AB_NAMESPACE \
    --endTime 'TxcgTYQ1Ukvz21Nc' \
    --limit '25' \
    --offset '82' \
    --source 'OTHER' \
    --startTime '2qoP6Ey7dLHyDxvh' \
    --status 'FAIL' \
    --transactionId 'jwRihRNhN5UJZmzI' \
    --userId '812cm9OYVFOPI8LU' \
    > test.out 2>&1
eval_tap $? 185 'QueryRevocationHistories' test.out

#- 186 GetRevocationPluginConfig
samples/cli/sample-apps Platform getRevocationPluginConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 186 'GetRevocationPluginConfig' test.out

#- 187 UpdateRevocationPluginConfig
samples/cli/sample-apps Platform updateRevocationPluginConfig \
    --namespace $AB_NAMESPACE \
    --body '{"appConfig": {"appName": "GFAnZ0a7Oh8Z0bdN"}, "customConfig": {"connectionType": "TLS", "grpcServerAddress": "podv75PGup6ncA4N"}, "extendType": "CUSTOM"}' \
    > test.out 2>&1
eval_tap $? 187 'UpdateRevocationPluginConfig' test.out

#- 188 DeleteRevocationPluginConfig
samples/cli/sample-apps Platform deleteRevocationPluginConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 188 'DeleteRevocationPluginConfig' test.out

#- 189 UploadRevocationPluginConfigCert
samples/cli/sample-apps Platform uploadRevocationPluginConfigCert \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 189 'UploadRevocationPluginConfigCert' test.out

#- 190 CreateReward
samples/cli/sample-apps Platform createReward \
    --namespace $AB_NAMESPACE \
    --body '{"description": "Zp2uMiS1bFYs38xS", "eventTopic": "S8KK1ewGg3qu0mKS", "maxAwarded": 56, "maxAwardedPerUser": 37, "namespaceExpression": "cwCYobdipTiNvMgH", "rewardCode": "z4XlYHmOSECVWLfk", "rewardConditions": [{"condition": "Vy1lldQNkzzOxQtS", "conditionName": "NFjwYZEktMHuTXLF", "eventName": "5V9XCpe2mKNLXGJk", "rewardItems": [{"duration": 19, "endDate": "1996-06-04T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "oS9gsHASnUsMcGpv", "quantity": 83, "sku": "eh1jgTGeGkwHOIwI"}, {"duration": 38, "endDate": "1977-11-15T00:00:00Z", "identityType": "ITEM_ID", "itemId": "Bj4MZ8zsU57hvfAI", "quantity": 49, "sku": "6qTkBOgyRDlggydI"}, {"duration": 100, "endDate": "1988-12-10T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "001uYQmM9hmsjwzc", "quantity": 71, "sku": "R9pNnKCWY2wyEZ56"}]}, {"condition": "Iyezs2SJXsSOJpA5", "conditionName": "2q2Zjt0wERiV116h", "eventName": "9W2vg1CyDkMtkC0e", "rewardItems": [{"duration": 60, "endDate": "1999-07-06T00:00:00Z", "identityType": "ITEM_ID", "itemId": "YnJ7Uj4r10dNc8lC", "quantity": 12, "sku": "Mx5BT4IlPTwsv98e"}, {"duration": 16, "endDate": "1981-04-20T00:00:00Z", "identityType": "ITEM_ID", "itemId": "WwwEHCuZDkYTaaH9", "quantity": 65, "sku": "acbFIz4tjtYphbtf"}, {"duration": 30, "endDate": "1987-08-02T00:00:00Z", "identityType": "ITEM_ID", "itemId": "y9P2aRgLzSvWOIed", "quantity": 9, "sku": "eurcyAyNUJuGzJIe"}]}, {"condition": "AYwrfqfrLRIgk1SC", "conditionName": "ftVIZdqpO3aDck1o", "eventName": "HjfuQPEqk11Rm5Z6", "rewardItems": [{"duration": 13, "endDate": "1978-08-27T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "he1FlmFmEqmVXvwF", "quantity": 14, "sku": "TKYZ9avUZoognlmJ"}, {"duration": 25, "endDate": "1990-12-10T00:00:00Z", "identityType": "ITEM_ID", "itemId": "GvxRy5Ok6VKckz4R", "quantity": 14, "sku": "j1U77utGBOU3R9mH"}, {"duration": 13, "endDate": "1986-06-12T00:00:00Z", "identityType": "ITEM_ID", "itemId": "hFpavqqWFhnInJbU", "quantity": 44, "sku": "HM1cbncWt1e1SR4R"}]}], "userIdExpression": "Dzu5ivwCxSdavpTA"}' \
    > test.out 2>&1
eval_tap $? 190 'CreateReward' test.out

#- 191 QueryRewards
samples/cli/sample-apps Platform queryRewards \
    --namespace $AB_NAMESPACE \
    --eventTopic 'km180I6osl9cgsUc' \
    --limit '15' \
    --offset '22' \
    --sortBy '["rewardCode:asc"]' \
    > test.out 2>&1
eval_tap $? 191 'QueryRewards' test.out

#- 192 ExportRewards
samples/cli/sample-apps Platform exportRewards \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 192 'ExportRewards' test.out

#- 193 ImportRewards
samples/cli/sample-apps Platform importRewards \
    --namespace $AB_NAMESPACE \
    --replaceExisting 'true' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 193 'ImportRewards' test.out

#- 194 GetReward
samples/cli/sample-apps Platform getReward \
    --namespace $AB_NAMESPACE \
    --rewardId 'taMpXSql8BVspqnP' \
    > test.out 2>&1
eval_tap $? 194 'GetReward' test.out

#- 195 UpdateReward
samples/cli/sample-apps Platform updateReward \
    --namespace $AB_NAMESPACE \
    --rewardId '1JCLgHLHpRgzdk89' \
    --body '{"description": "hFWkEg5iHTryP26x", "eventTopic": "6uR4zEO5J2yoFOyg", "maxAwarded": 3, "maxAwardedPerUser": 21, "namespaceExpression": "kczNSHZGYEnoL6bU", "rewardCode": "gFYKAGo3v9B6LWQL", "rewardConditions": [{"condition": "lRT2ItXnnCH9HREt", "conditionName": "omokzOTm4MyIxjDp", "eventName": "GLnft8aVqHxEIg23", "rewardItems": [{"duration": 21, "endDate": "1983-12-07T00:00:00Z", "identityType": "ITEM_ID", "itemId": "M6CukR3L2H4Q1CaN", "quantity": 44, "sku": "Rrm3TYKHyQIvjFsk"}, {"duration": 11, "endDate": "1999-02-12T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "P2Sm0Fq8voKJUXhq", "quantity": 84, "sku": "7FnoYWnaMXVxvg8Y"}, {"duration": 70, "endDate": "1987-07-12T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "hNb7wL9tkYompRNO", "quantity": 89, "sku": "H962xzBNCMzRHkab"}]}, {"condition": "lf9f48EGtGN5YcRj", "conditionName": "THYzODhyxrk96WnO", "eventName": "wkAtwEFPVv2Tlmic", "rewardItems": [{"duration": 76, "endDate": "1994-04-14T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "yM52JJaMjLHzQlnQ", "quantity": 52, "sku": "8yzrgnfC6vxmw8cc"}, {"duration": 22, "endDate": "1997-02-09T00:00:00Z", "identityType": "ITEM_ID", "itemId": "J2SlI28LzWEnoiOA", "quantity": 29, "sku": "OXQW46Vkyl14VG4M"}, {"duration": 1, "endDate": "1972-08-29T00:00:00Z", "identityType": "ITEM_ID", "itemId": "JqGz1rJxmzLJPQK1", "quantity": 21, "sku": "TwniU8728QCf8uef"}]}, {"condition": "mFiWV7LD5Etu9Cwt", "conditionName": "pZcM9wJoLAIrSbmC", "eventName": "AYL402XEINEFVZWV", "rewardItems": [{"duration": 39, "endDate": "1979-07-12T00:00:00Z", "identityType": "ITEM_ID", "itemId": "sL2oOlkT7AGRULMw", "quantity": 92, "sku": "k5l944heoy03khQM"}, {"duration": 29, "endDate": "1985-11-08T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "XfkO2mdJq4Mt1FrN", "quantity": 69, "sku": "s0vh3v2OYRMNaXQl"}, {"duration": 29, "endDate": "1981-04-01T00:00:00Z", "identityType": "ITEM_ID", "itemId": "cR3f8o5lkTUTXCtW", "quantity": 32, "sku": "ysXvejcxTbMVLkUn"}]}], "userIdExpression": "Zk1GHNVloOVttFFR"}' \
    > test.out 2>&1
eval_tap $? 195 'UpdateReward' test.out

#- 196 DeleteReward
samples/cli/sample-apps Platform deleteReward \
    --namespace $AB_NAMESPACE \
    --rewardId 'lrSna4gRTt1Lwp6G' \
    > test.out 2>&1
eval_tap $? 196 'DeleteReward' test.out

#- 197 CheckEventCondition
samples/cli/sample-apps Platform checkEventCondition \
    --namespace $AB_NAMESPACE \
    --rewardId 'B4tARwLppW3rXpYz' \
    --body '{"payload": {"dYFa2KvymicY9Olu": {}, "EdJpxXJcTBx7ZHao": {}, "4yjJvMjYzOzGY2YC": {}}}' \
    > test.out 2>&1
eval_tap $? 197 'CheckEventCondition' test.out

#- 198 DeleteRewardConditionRecord
samples/cli/sample-apps Platform deleteRewardConditionRecord \
    --namespace $AB_NAMESPACE \
    --rewardId 'pY8sLu4Ug2X6W3kA' \
    --body '{"conditionName": "BvbA6VPWLdYkzuji", "userId": "ODlAOqgHZYIdSkDz"}' \
    > test.out 2>&1
eval_tap $? 198 'DeleteRewardConditionRecord' test.out

#- 199 QuerySections
samples/cli/sample-apps Platform querySections \
    --namespace $AB_NAMESPACE \
    --end 'zvLDrCF0ZULBnX8U' \
    --limit '97' \
    --offset '7' \
    --start '6ZJX3GWXCXqKaP1q' \
    --storeId '4Sv5ChofuSArFlgt' \
    --viewId '6H6m5qyDJMr5TK3l' \
    > test.out 2>&1
eval_tap $? 199 'QuerySections' test.out

#- 200 CreateSection
samples/cli/sample-apps Platform createSection \
    --namespace $AB_NAMESPACE \
    --storeId '7xj6iY5rM3LSoFW0' \
    --body '{"active": true, "displayOrder": 84, "endDate": "1996-11-18T00:00:00Z", "ext": {"Jb822jy2chyabPoP": {}, "HKGtpItcK27CEkxv": {}, "UIJhIAsbh43FHgPj": {}}, "fixedPeriodRotationConfig": {"backfillType": "CUSTOM", "duration": 35, "itemCount": 65, "rule": "SEQUENCE"}, "items": [{"id": "i6GKZ0cEi2eXxH7g", "sku": "VWocBcObRWku0TsJ"}, {"id": "fcZdvG5VBLBO6UZB", "sku": "6yT3hO402Gf6TPqa"}, {"id": "T1W60FT0hgoSoOR7", "sku": "ubIdAuRKPxq6JWV6"}], "localizations": {"SMeLgvupH6DEPlXT": {"description": "K55gizddeZaXDgiE", "localExt": {"splpgmID4BQHaD04": {}, "P5GJEH4C2MWnVd5o": {}, "t26Mh305H3LYoM5v": {}}, "longDescription": "QfUYeBj3QdF3mqXx", "title": "1K3lX9kYZjwLEYyO"}, "7gp1egSRiL6Vz4xO": {"description": "pCaiBeFLMcGLBRpw", "localExt": {"uedbJENKU6tAzT82": {}, "s3U9VrcwsNcWSItf": {}, "AKTipcg5rBuaSg55": {}}, "longDescription": "t2wGJQJIVGm1zT6h", "title": "77oeaoQkKmbBkJ7k"}, "Ga9rNBLDhNEA4YaI": {"description": "w0iU9NOtmFhTNZNn", "localExt": {"zrGyYQNie745cgWE": {}, "RMQqYvjzdwyc06OS": {}, "ZxfQd7GTjjdcJCEk": {}}, "longDescription": "7WJabCLVnbSjwTuX", "title": "B5MifhEch6k1Hi1E"}}, "name": "PQN0OQf0OvopI2ib", "rotationType": "NONE", "startDate": "1973-02-10T00:00:00Z", "viewId": "qmBsMFd0x0E3NGMa"}' \
    > test.out 2>&1
eval_tap $? 200 'CreateSection' test.out

#- 201 PurgeExpiredSection
samples/cli/sample-apps Platform purgeExpiredSection \
    --namespace $AB_NAMESPACE \
    --storeId 'ar4768n3Jlh155WZ' \
    > test.out 2>&1
eval_tap $? 201 'PurgeExpiredSection' test.out

#- 202 GetSection
samples/cli/sample-apps Platform getSection \
    --namespace $AB_NAMESPACE \
    --sectionId 'QWyJkZaGbpgqjY5N' \
    --storeId 'ZDi4dqOYQ6k5Klf6' \
    > test.out 2>&1
eval_tap $? 202 'GetSection' test.out

#- 203 UpdateSection
samples/cli/sample-apps Platform updateSection \
    --namespace $AB_NAMESPACE \
    --sectionId 'lELH76nIAsDHcNdb' \
    --storeId 'e70jc9D1MscXPhAZ' \
    --body '{"active": false, "displayOrder": 77, "endDate": "1974-01-29T00:00:00Z", "ext": {"gcRkkFMFh9EupLNd": {}, "tqnRyMlKA3hqsOG4": {}, "VH8yJV8LHteAftud": {}}, "fixedPeriodRotationConfig": {"backfillType": "NONE", "duration": 100, "itemCount": 60, "rule": "SEQUENCE"}, "items": [{"id": "tD3yo5VjZkcGRXJG", "sku": "zl7HHobrYZxaMZko"}, {"id": "uU28nNq46MS2fTj4", "sku": "p6yq2gScrxS0Q8zf"}, {"id": "NwQDjI5xRhlLieZO", "sku": "EpWt2B80cqqE3gXi"}], "localizations": {"PyzR71rw0OWpz4xJ": {"description": "t11jt6ensZCZ5K2B", "localExt": {"6BbAs6bYNxeJQJpT": {}, "LXTGdOFn2MmVgxpM": {}, "gxnCCJU1Q6ORyIN9": {}}, "longDescription": "kXpTtwTl5z0uhWPE", "title": "XNXE5kqYiV53SuQL"}, "5pt4Eedfj9edjN8o": {"description": "4Fydpf7x6Lr2zomT", "localExt": {"kr7x0y3ow6jJwc64": {}, "nakIItl6NTo6tnPv": {}, "SFbgL3QrhBlK9K5x": {}}, "longDescription": "StQjtXvPlPyhL037", "title": "JPmB4XVLiq12BlTO"}, "4PitkdAFlkng1uNx": {"description": "SHc2zn5uVxLod1xT", "localExt": {"xleJbCYP8T6pFuc4": {}, "YxXtJNDD1MeEjZtg": {}, "WR6lsMzt747ZzE0C": {}}, "longDescription": "tNuiSNn6pgL4JIEs", "title": "a4nxB4jTbWcoJfPs"}}, "name": "ls2vaN2S0uRfDdl2", "rotationType": "CUSTOM", "startDate": "1981-12-28T00:00:00Z", "viewId": "HxOKzywzNpNHeyTW"}' \
    > test.out 2>&1
eval_tap $? 203 'UpdateSection' test.out

#- 204 DeleteSection
samples/cli/sample-apps Platform deleteSection \
    --namespace $AB_NAMESPACE \
    --sectionId '13TG0VEiktS4G5Nm' \
    --storeId 'BvOiuFx6XY7odIdm' \
    > test.out 2>&1
eval_tap $? 204 'DeleteSection' test.out

#- 205 ListStores
samples/cli/sample-apps Platform listStores \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 205 'ListStores' test.out

#- 206 CreateStore
samples/cli/sample-apps Platform createStore \
    --namespace $AB_NAMESPACE \
    --body '{"defaultLanguage": "G1wRRvnUUYPYymGz", "defaultRegion": "C9oJsPTAR7fRzQmM", "description": "rzey8i64eDXkPs11", "supportedLanguages": ["d1BO0qrQRgLoLcL7", "w7DTFJDk7W1oKIH6", "evHkVSL4kdQlDnzO"], "supportedRegions": ["dKCrxrxOQeLYt5z9", "AEjxFZiX0iQWcq4J", "3naGeVlTW6v42wPJ"], "title": "7dLMayFbiqe9qksV"}' \
    > test.out 2>&1
eval_tap $? 206 'CreateStore' test.out

#- 207 GetCatalogDefinition
samples/cli/sample-apps Platform getCatalogDefinition \
    --namespace $AB_NAMESPACE \
    --catalogType 'APP' \
    > test.out 2>&1
eval_tap $? 207 'GetCatalogDefinition' test.out

#- 208 DownloadCSVTemplates
samples/cli/sample-apps Platform downloadCSVTemplates \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 208 'DownloadCSVTemplates' test.out

#- 209 ExportStoreByCSV
samples/cli/sample-apps Platform exportStoreByCSV \
    --namespace $AB_NAMESPACE \
    --body '{"catalogType": "SECTION", "fieldsToBeIncluded": ["fZyq1nAt7jlTNU06", "Co7ECkWdGx89O8g8", "BiyRXp1GwCqBh5P0"], "idsToBeExported": ["78Vt2fY1KHhIY0R9", "eFqZyHJbjpgVvd3n", "tui04CxQTAd8ugKS"], "storeId": "FjONAVe7dwTb8vD0"}' \
    > test.out 2>&1
eval_tap $? 209 'ExportStoreByCSV' test.out

#- 210 ImportStore
eval_tap 0 210 'ImportStore # SKIP deprecated' test.out

#- 211 GetPublishedStore
samples/cli/sample-apps Platform getPublishedStore \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 211 'GetPublishedStore' test.out

#- 212 DeletePublishedStore
samples/cli/sample-apps Platform deletePublishedStore \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 212 'DeletePublishedStore' test.out

#- 213 GetPublishedStoreBackup
samples/cli/sample-apps Platform getPublishedStoreBackup \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 213 'GetPublishedStoreBackup' test.out

#- 214 RollbackPublishedStore
samples/cli/sample-apps Platform rollbackPublishedStore \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 214 'RollbackPublishedStore' test.out

#- 215 GetStore
samples/cli/sample-apps Platform getStore \
    --namespace $AB_NAMESPACE \
    --storeId 'tnaR47Uc9yhJvtoL' \
    > test.out 2>&1
eval_tap $? 215 'GetStore' test.out

#- 216 UpdateStore
samples/cli/sample-apps Platform updateStore \
    --namespace $AB_NAMESPACE \
    --storeId 'xQVOrxam4vstNOlE' \
    --body '{"defaultLanguage": "90moUPrlY9fQsKMU", "defaultRegion": "f6KH4saJQomBMFLM", "description": "GEPLanLv4HLe8H3I", "supportedLanguages": ["Hcgr669qit4NsuXY", "96mcmtZyKA9vS7aR", "kvg5FKA9WwY7qpMn"], "supportedRegions": ["g1XbUzWXqk5vaSkS", "BSNWRrMSjpfLBRHQ", "A1HMzymq3mXnnvIx"], "title": "oJ0Cj79HOvWJMCig"}' \
    > test.out 2>&1
eval_tap $? 216 'UpdateStore' test.out

#- 217 DeleteStore
samples/cli/sample-apps Platform deleteStore \
    --namespace $AB_NAMESPACE \
    --storeId 'qVOK00OGreolyCNg' \
    > test.out 2>&1
eval_tap $? 217 'DeleteStore' test.out

#- 218 QueryChanges
samples/cli/sample-apps Platform queryChanges \
    --namespace $AB_NAMESPACE \
    --storeId 'QngYfjXauSGuyyXy' \
    --action 'CREATE' \
    --itemSku 'Nj8kmD4hZKuCfYK9' \
    --itemType 'EXTENSION' \
    --limit '41' \
    --offset '100' \
    --selected 'false' \
    --sortBy '["createdAt:asc", "createdAt:desc"]' \
    --status 'PUBLISHED' \
    --type 'ITEM' \
    --updatedAtEnd 'PLCZdJvRX2pwbHN9' \
    --updatedAtStart '9mkQEPdDyG6uYx7y' \
    --withTotal 'false' \
    > test.out 2>&1
eval_tap $? 218 'QueryChanges' test.out

#- 219 PublishAll
samples/cli/sample-apps Platform publishAll \
    --namespace $AB_NAMESPACE \
    --storeId 'NBcbDuOQc9k6bilV' \
    > test.out 2>&1
eval_tap $? 219 'PublishAll' test.out

#- 220 PublishSelected
samples/cli/sample-apps Platform publishSelected \
    --namespace $AB_NAMESPACE \
    --storeId 'eeRpxa7kHWDHU4iv' \
    > test.out 2>&1
eval_tap $? 220 'PublishSelected' test.out

#- 221 SelectAllRecords
samples/cli/sample-apps Platform selectAllRecords \
    --namespace $AB_NAMESPACE \
    --storeId 'axP3YsYAwUNfmEwt' \
    > test.out 2>&1
eval_tap $? 221 'SelectAllRecords' test.out

#- 222 SelectAllRecordsByCriteria
samples/cli/sample-apps Platform selectAllRecordsByCriteria \
    --namespace $AB_NAMESPACE \
    --storeId 'pHWeIEXCylIwb1YP' \
    --action 'CREATE' \
    --itemSku 'jWBgKGYdDiKJWr4B' \
    --itemType 'MEDIA' \
    --selected 'true' \
    --type 'SECTION' \
    --updatedAtEnd 'm3T8eEbjAeX6WoN7' \
    --updatedAtStart 'TuZwkBYFzvyjBkjt' \
    > test.out 2>&1
eval_tap $? 222 'SelectAllRecordsByCriteria' test.out

#- 223 GetStatistic
samples/cli/sample-apps Platform getStatistic \
    --namespace $AB_NAMESPACE \
    --storeId 'U7KARJssEddsBhrD' \
    --action 'DELETE' \
    --itemSku 'PkCJCWcgFLxmCQTx' \
    --itemType 'SUBSCRIPTION' \
    --type 'SECTION' \
    --updatedAtEnd 'ZpMDvrUB8jCys2bz' \
    --updatedAtStart 'lP2ardDXdSCukpMD' \
    > test.out 2>&1
eval_tap $? 223 'GetStatistic' test.out

#- 224 UnselectAllRecords
samples/cli/sample-apps Platform unselectAllRecords \
    --namespace $AB_NAMESPACE \
    --storeId 'yCQn1RB7Tl8eusfd' \
    > test.out 2>&1
eval_tap $? 224 'UnselectAllRecords' test.out

#- 225 SelectRecord
samples/cli/sample-apps Platform selectRecord \
    --changeId 'MXR9yj585x4xajn6' \
    --namespace $AB_NAMESPACE \
    --storeId 'kBHadgR7CkJr7iyr' \
    > test.out 2>&1
eval_tap $? 225 'SelectRecord' test.out

#- 226 UnselectRecord
samples/cli/sample-apps Platform unselectRecord \
    --changeId 'XDWo4gHMNeuMxFNV' \
    --namespace $AB_NAMESPACE \
    --storeId 'NVNDaMkDIdka5JSB' \
    > test.out 2>&1
eval_tap $? 226 'UnselectRecord' test.out

#- 227 CloneStore
samples/cli/sample-apps Platform cloneStore \
    --namespace $AB_NAMESPACE \
    --storeId 'u0onfRWMzhqayWWj' \
    --targetStoreId 'VafnhuWWoHQHd9Re' \
    > test.out 2>&1
eval_tap $? 227 'CloneStore' test.out

#- 228 ExportStore
eval_tap 0 228 'ExportStore # SKIP deprecated' test.out

#- 229 QueryImportHistory
samples/cli/sample-apps Platform queryImportHistory \
    --namespace $AB_NAMESPACE \
    --storeId '0LL3KnjkOQjJx4MS' \
    --end 'LKayLGp8VPAuob8I' \
    --limit '44' \
    --offset '11' \
    --sortBy 'ZPyggIzSG0FtVR7w' \
    --start '9sHr7BqdFagDAHEH' \
    --success 'true' \
    > test.out 2>&1
eval_tap $? 229 'QueryImportHistory' test.out

#- 230 ImportStoreByCSV
samples/cli/sample-apps Platform importStoreByCSV \
    --namespace $AB_NAMESPACE \
    --storeId 'QifCnPpHppk5aotg' \
    --category 'tmp.dat' \
    --display 'tmp.dat' \
    --item 'tmp.dat' \
    --notes 'uzTJ0O9qbLAjDwdu' \
    --section 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 230 'ImportStoreByCSV' test.out

#- 231 QuerySubscriptions
samples/cli/sample-apps Platform querySubscriptions \
    --namespace $AB_NAMESPACE \
    --chargeStatus 'SETUP' \
    --itemId 'xbteHJi1xNbBaBJL' \
    --limit '80' \
    --offset '9' \
    --sku 'rgqn0ZHHD5Hlt32u' \
    --status 'EXPIRED' \
    --subscribedBy 'USER' \
    --userId 'XNwCneG8AtMxYK0H' \
    > test.out 2>&1
eval_tap $? 231 'QuerySubscriptions' test.out

#- 232 RecurringChargeSubscription
samples/cli/sample-apps Platform recurringChargeSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'EKXueEoyGHXW16cG' \
    > test.out 2>&1
eval_tap $? 232 'RecurringChargeSubscription' test.out

#- 233 GetTicketDynamic
samples/cli/sample-apps Platform getTicketDynamic \
    --boothName '4m4HcIUufCwNFGtp' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 233 'GetTicketDynamic' test.out

#- 234 DecreaseTicketSale
samples/cli/sample-apps Platform decreaseTicketSale \
    --boothName 'inhdHPkdln5IEozS' \
    --namespace $AB_NAMESPACE \
    --body '{"orderNo": "cl7VM1jUu9Cwy3wW"}' \
    > test.out 2>&1
eval_tap $? 234 'DecreaseTicketSale' test.out

#- 235 GetTicketBoothID
samples/cli/sample-apps Platform getTicketBoothID \
    --boothName 'PgVFHWdZs4WAejol' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 235 'GetTicketBoothID' test.out

#- 236 IncreaseTicketSale
samples/cli/sample-apps Platform increaseTicketSale \
    --boothName 'HACYYuQG81TMcBil' \
    --namespace $AB_NAMESPACE \
    --body '{"count": 11, "orderNo": "Nssb8uJrHDJbCk96"}' \
    > test.out 2>&1
eval_tap $? 236 'IncreaseTicketSale' test.out

#- 237 Commit
samples/cli/sample-apps Platform commit \
    --namespace $AB_NAMESPACE \
    --body '{"actions": [{"operations": [{"creditPayload": {"balanceOrigin": "Epic", "count": 23, "currencyCode": "eAhywJ1NHGY1Y79v", "expireAt": "1973-08-03T00:00:00Z"}, "debitPayload": {"count": 71, "currencyCode": "nBzRAbqke7hfLjR1", "walletPlatform": "Nintendo"}, "fulFillItemPayload": {"count": 1, "entitlementCollectionId": "DP8b4KwO26z9nUn8", "entitlementOrigin": "Twitch", "itemIdentity": "7XsrY7zAb0TrCQli", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 11, "entitlementId": "uUW25bB3o26xrIzL"}, "type": "DEBIT_WALLET"}, {"creditPayload": {"balanceOrigin": "GooglePlay", "count": 10, "currencyCode": "IqgLto7euFJN1SmA", "expireAt": "1979-02-13T00:00:00Z"}, "debitPayload": {"count": 82, "currencyCode": "PI7xWcJIvCNAlLQd", "walletPlatform": "Steam"}, "fulFillItemPayload": {"count": 63, "entitlementCollectionId": "pmr4S5xq8d0Byj0p", "entitlementOrigin": "IOS", "itemIdentity": "It21dhK6H9Nrfy6i", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 40, "entitlementId": "SfBFjDKK6WCm41Yj"}, "type": "DEBIT_WALLET"}, {"creditPayload": {"balanceOrigin": "Playstation", "count": 26, "currencyCode": "vELTvIC126P4Cmtu", "expireAt": "1974-04-24T00:00:00Z"}, "debitPayload": {"count": 75, "currencyCode": "LipmmYZAFJmjsssb", "walletPlatform": "IOS"}, "fulFillItemPayload": {"count": 19, "entitlementCollectionId": "u5Q4d6cOREQofcIh", "entitlementOrigin": "GooglePlay", "itemIdentity": "4wRaOLDkYTRccAre", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 90, "entitlementId": "bYi6vAJ71rqxlPXa"}, "type": "DEBIT_WALLET"}], "userId": "QcQAiJBHfMFvCV8l"}, {"operations": [{"creditPayload": {"balanceOrigin": "Playstation", "count": 3, "currencyCode": "tAWEunMQVPNbqtql", "expireAt": "1975-03-19T00:00:00Z"}, "debitPayload": {"count": 69, "currencyCode": "w9HVOuRTPceF6ikW", "walletPlatform": "Nintendo"}, "fulFillItemPayload": {"count": 67, "entitlementCollectionId": "f4q1zRgZzhzzgUAJ", "entitlementOrigin": "Nintendo", "itemIdentity": "nkZoS58EQ6XTHGKY", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 45, "entitlementId": "F3LAjEsVPrgz0mwM"}, "type": "DEBIT_WALLET"}, {"creditPayload": {"balanceOrigin": "GooglePlay", "count": 66, "currencyCode": "FEmT7IWcvh8sdSg6", "expireAt": "1978-05-04T00:00:00Z"}, "debitPayload": {"count": 0, "currencyCode": "RzheF7Hp3eLS8SO9", "walletPlatform": "IOS"}, "fulFillItemPayload": {"count": 12, "entitlementCollectionId": "XzOKRjzGV1NB4qmQ", "entitlementOrigin": "Playstation", "itemIdentity": "cXxmie5FeYMEBMz2", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 85, "entitlementId": "TJn2qhz5KjqiTBTD"}, "type": "CREDIT_WALLET"}, {"creditPayload": {"balanceOrigin": "IOS", "count": 68, "currencyCode": "pNnHgylDeKCkMTXD", "expireAt": "1989-11-24T00:00:00Z"}, "debitPayload": {"count": 24, "currencyCode": "AmgXftIR5GVjIbmM", "walletPlatform": "Epic"}, "fulFillItemPayload": {"count": 24, "entitlementCollectionId": "2KcxYh6eummZGvo6", "entitlementOrigin": "Nintendo", "itemIdentity": "n1BzzmTyl7U2FyaM", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 72, "entitlementId": "PzrVxtkk1XoWg4fA"}, "type": "DEBIT_WALLET"}], "userId": "qkNmc0tB6U6yFqlC"}, {"operations": [{"creditPayload": {"balanceOrigin": "Oculus", "count": 47, "currencyCode": "6Xei2zPSUrfhupH1", "expireAt": "1985-02-15T00:00:00Z"}, "debitPayload": {"count": 82, "currencyCode": "JAUc339FYzbbSUxy", "walletPlatform": "Nintendo"}, "fulFillItemPayload": {"count": 91, "entitlementCollectionId": "re2PHLbWS7AqSEHp", "entitlementOrigin": "GooglePlay", "itemIdentity": "lLGbnRPjbACBXZ5M", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 21, "entitlementId": "WsA3Nc9h2Gj4PL0I"}, "type": "CREDIT_WALLET"}, {"creditPayload": {"balanceOrigin": "Other", "count": 37, "currencyCode": "TAT3lJ275phCZhcw", "expireAt": "1989-08-03T00:00:00Z"}, "debitPayload": {"count": 88, "currencyCode": "k9YJ3gB8oYXUFToz", "walletPlatform": "Xbox"}, "fulFillItemPayload": {"count": 62, "entitlementCollectionId": "DBvHBNvmFtuCd86i", "entitlementOrigin": "Xbox", "itemIdentity": "9sIseRzYjDVaPEHZ", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 67, "entitlementId": "8p9oTwVhdsZaukxG"}, "type": "REVOKE_ENTITLEMENT"}, {"creditPayload": {"balanceOrigin": "Steam", "count": 71, "currencyCode": "2IOMQir2VoLhtUrg", "expireAt": "1976-03-08T00:00:00Z"}, "debitPayload": {"count": 28, "currencyCode": "OQQAeVfEKZAhmdJ6", "walletPlatform": "Other"}, "fulFillItemPayload": {"count": 12, "entitlementCollectionId": "PZng1YbhxDZSVzo6", "entitlementOrigin": "Oculus", "itemIdentity": "bbl9Z4o5sRWj14TM", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 87, "entitlementId": "dG97D9E3eFYNLHzi"}, "type": "FULFILL_ITEM"}], "userId": "kjXGTaJLA7svr7vq"}], "metadata": {"SVoSJeXVUZfU9jdo": {}, "wDklUml3aHqCqVby": {}, "pzQC8C9BiFrg3qPb": {}}, "needPreCheck": true, "transactionId": "S4txIm3bV9wdeEX1", "type": "fVWgmrAii39lnlmb"}' \
    > test.out 2>&1
eval_tap $? 237 'Commit' test.out

#- 238 GetTradeHistoryByCriteria
samples/cli/sample-apps Platform getTradeHistoryByCriteria \
    --namespace $AB_NAMESPACE \
    --limit '58' \
    --offset '28' \
    --status 'FAILED' \
    --type 'ki9suNi2Yvy0tYq0' \
    --userId 'aYtTYAwbiKHLS1RQ' \
    > test.out 2>&1
eval_tap $? 238 'GetTradeHistoryByCriteria' test.out

#- 239 GetTradeHistoryByTransactionId
samples/cli/sample-apps Platform getTradeHistoryByTransactionId \
    --namespace $AB_NAMESPACE \
    --transactionId '3xSJET5vbIskJEP9' \
    > test.out 2>&1
eval_tap $? 239 'GetTradeHistoryByTransactionId' test.out

#- 240 UnlockSteamUserAchievement
samples/cli/sample-apps Platform unlockSteamUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'DJWo6QnojlBqBfPU' \
    --body '{"achievements": [{"id": "3yb0NJ9wzB0Ybi2q", "value": 14}, {"id": "m5izrFAPEaLP9hQR", "value": 98}, {"id": "OsDdrHuw8sre3Szb", "value": 63}], "steamUserId": "x02jSZUXw2i9tPPJ"}' \
    > test.out 2>&1
eval_tap $? 240 'UnlockSteamUserAchievement' test.out

#- 241 GetXblUserAchievements
samples/cli/sample-apps Platform getXblUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId 'HZnpA7zUl4s8ZS93' \
    --xboxUserId 'uK2ZW7cLZ3QLfRTh' \
    > test.out 2>&1
eval_tap $? 241 'GetXblUserAchievements' test.out

#- 242 UpdateXblUserAchievement
samples/cli/sample-apps Platform updateXblUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'dx6hFIgDSkEeaq8N' \
    --body '{"achievements": [{"id": "r86gogTKGmssUCrt", "percentComplete": 37}, {"id": "TkMWz1z92mEFM1P1", "percentComplete": 16}, {"id": "3dLyDq1T2SQloBMZ", "percentComplete": 89}], "serviceConfigId": "QVVvfDGHcp3lnBqb", "titleId": "MoaKcy53vwHHthUw", "xboxUserId": "woysUCo8yRto4t6F"}' \
    > test.out 2>&1
eval_tap $? 242 'UpdateXblUserAchievement' test.out

#- 243 AnonymizeCampaign
samples/cli/sample-apps Platform anonymizeCampaign \
    --namespace $AB_NAMESPACE \
    --userId 'VNs4Z0p6XfblVSOo' \
    > test.out 2>&1
eval_tap $? 243 'AnonymizeCampaign' test.out

#- 244 AnonymizeEntitlement
samples/cli/sample-apps Platform anonymizeEntitlement \
    --namespace $AB_NAMESPACE \
    --userId '17gxk7qGg3RN4tjB' \
    > test.out 2>&1
eval_tap $? 244 'AnonymizeEntitlement' test.out

#- 245 AnonymizeFulfillment
samples/cli/sample-apps Platform anonymizeFulfillment \
    --namespace $AB_NAMESPACE \
    --userId 'yS7dmPey5HBZJ1DQ' \
    > test.out 2>&1
eval_tap $? 245 'AnonymizeFulfillment' test.out

#- 246 AnonymizeIntegration
samples/cli/sample-apps Platform anonymizeIntegration \
    --namespace $AB_NAMESPACE \
    --userId 'bZLeXYWGSTMfqx4r' \
    > test.out 2>&1
eval_tap $? 246 'AnonymizeIntegration' test.out

#- 247 AnonymizeOrder
samples/cli/sample-apps Platform anonymizeOrder \
    --namespace $AB_NAMESPACE \
    --userId '2eXjuXc0cArYxUrK' \
    > test.out 2>&1
eval_tap $? 247 'AnonymizeOrder' test.out

#- 248 AnonymizePayment
samples/cli/sample-apps Platform anonymizePayment \
    --namespace $AB_NAMESPACE \
    --userId 'yjrNwTeL4gDXouYD' \
    > test.out 2>&1
eval_tap $? 248 'AnonymizePayment' test.out

#- 249 AnonymizeRevocation
samples/cli/sample-apps Platform anonymizeRevocation \
    --namespace $AB_NAMESPACE \
    --userId '4B4EY89rhwFg6NOs' \
    > test.out 2>&1
eval_tap $? 249 'AnonymizeRevocation' test.out

#- 250 AnonymizeSubscription
samples/cli/sample-apps Platform anonymizeSubscription \
    --namespace $AB_NAMESPACE \
    --userId 'oZcoonRixEF55z67' \
    > test.out 2>&1
eval_tap $? 250 'AnonymizeSubscription' test.out

#- 251 AnonymizeWallet
samples/cli/sample-apps Platform anonymizeWallet \
    --namespace $AB_NAMESPACE \
    --userId '19gHXRKvfolJdhro' \
    > test.out 2>&1
eval_tap $? 251 'AnonymizeWallet' test.out

#- 252 GetUserDLCByPlatform
samples/cli/sample-apps Platform getUserDLCByPlatform \
    --namespace $AB_NAMESPACE \
    --userId 'AI22psYBu6Aa25wW' \
    --type 'OCULUS' \
    > test.out 2>&1
eval_tap $? 252 'GetUserDLCByPlatform' test.out

#- 253 GetUserDLC
samples/cli/sample-apps Platform getUserDLC \
    --namespace $AB_NAMESPACE \
    --userId 'ZW9NyUHbKVmvz9Pu' \
    --includeAllNamespaces 'false' \
    --status 'REVOKED' \
    --type 'EPICGAMES' \
    > test.out 2>&1
eval_tap $? 253 'GetUserDLC' test.out

#- 254 QueryUserEntitlements
samples/cli/sample-apps Platform queryUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'KLZ25hPTWWBmWi4g' \
    --activeOnly 'false' \
    --appType 'DLC' \
    --collectionId 'QiNrbN7ZCuVch3i1' \
    --entitlementClazz 'OPTIONBOX' \
    --entitlementName '76sWcgBSYRlui82j' \
    --features '["Ay5TtTRhaaXKky2z", "lD4dWzeNrhQTBkpr", "N7FiQWMQx50OrYTs"]' \
    --fuzzyMatchName 'false' \
    --ignoreActiveDate 'false' \
    --itemId '["929fJ2AbfM2ArJ78", "BUvRmtdlZ5MTTsjr", "zKixCyi8N37fALCc"]' \
    --limit '0' \
    --offset '23' \
    --origin 'Twitch' \
    > test.out 2>&1
eval_tap $? 254 'QueryUserEntitlements' test.out

#- 255 GrantUserEntitlement
samples/cli/sample-apps Platform grantUserEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'Iw82F5kMehnDAO5r' \
    --body '[{"collectionId": "vOb4b4FMKt3yFpu8", "endDate": "1975-02-23T00:00:00Z", "grantedCode": "4zZviMPbR5nADurJ", "itemId": "QvWM3AimNZQL4yKZ", "itemNamespace": "wIlu4pPRltBe9PVY", "language": "Yi-615", "metadata": {"ESDnnssaDsNN7sL1": {}, "Y25q5YJUHu9KBM9F": {}, "PiVg1Shk5CGW2p3p": {}}, "origin": "Nintendo", "quantity": 6, "region": "HXY0xNnPDWRd19fr", "source": "GIFT", "startDate": "1988-01-17T00:00:00Z", "storeId": "m21QghYTZ2WLdoBF"}, {"collectionId": "TotXMG0DsCm9kG3j", "endDate": "1975-02-09T00:00:00Z", "grantedCode": "VeWvXG9gbklt6OPe", "itemId": "b3rVliTtcheC3UTm", "itemNamespace": "jR5dBzoIhf78lNHP", "language": "rnbW", "metadata": {"QZCK4hN45aRKeX54": {}, "k4D3zM0u98ammvVp": {}, "wG2ITBtZPyZ5ME0i": {}}, "origin": "System", "quantity": 50, "region": "o1J1ASrspbQ0OKYq", "source": "ACHIEVEMENT", "startDate": "1985-04-18T00:00:00Z", "storeId": "gLBWnLmBOur0H8pm"}, {"collectionId": "lA1TVLWtbWbiq1Pm", "endDate": "1986-08-23T00:00:00Z", "grantedCode": "MhIU8DxLVXAhsBH7", "itemId": "wtBU6Zs5FweknHX1", "itemNamespace": "DevSstHIm2fS8Wnm", "language": "tA", "metadata": {"gFRhisVpR6z7tYzE": {}, "VfPEjJNqGApRODnr": {}, "Vi5SEBJ7WUlGeQIj": {}}, "origin": "Other", "quantity": 53, "region": "VDBS9KkRgrCAw0WA", "source": "REWARD", "startDate": "1991-01-31T00:00:00Z", "storeId": "sqBa3HInHtio5QQ2"}]' \
    > test.out 2>&1
eval_tap $? 255 'GrantUserEntitlement' test.out

#- 256 GetUserAppEntitlementByAppId
samples/cli/sample-apps Platform getUserAppEntitlementByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'wwujsWxFzg64Tl21' \
    --activeOnly 'false' \
    --appId '09moKwTjhKoYImi2' \
    > test.out 2>&1
eval_tap $? 256 'GetUserAppEntitlementByAppId' test.out

#- 257 QueryUserEntitlementsByAppType
samples/cli/sample-apps Platform queryUserEntitlementsByAppType \
    --namespace $AB_NAMESPACE \
    --userId 'bzOMIfFFdIFid4xb' \
    --activeOnly 'false' \
    --limit '49' \
    --offset '100' \
    --appType 'SOFTWARE' \
    > test.out 2>&1
eval_tap $? 257 'QueryUserEntitlementsByAppType' test.out

#- 258 GetUserEntitlementsByIds
samples/cli/sample-apps Platform getUserEntitlementsByIds \
    --namespace $AB_NAMESPACE \
    --userId 'qcdjE1SbUNjADscr' \
    --ids '["6pHuav9Z7kGpF5Ma", "nbjTSfpJ8DlFssQp", "FDMOPI149iP6JJyv"]' \
    > test.out 2>&1
eval_tap $? 258 'GetUserEntitlementsByIds' test.out

#- 259 GetUserEntitlementByItemId
samples/cli/sample-apps Platform getUserEntitlementByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'VP2oDXKKqrzBJdJa' \
    --activeOnly 'true' \
    --entitlementClazz 'SUBSCRIPTION' \
    --platform 'O197NkKy76J7wngk' \
    --itemId 'lJovHJ4LpJvMHxZq' \
    > test.out 2>&1
eval_tap $? 259 'GetUserEntitlementByItemId' test.out

#- 260 GetUserActiveEntitlementsByItemIds
samples/cli/sample-apps Platform getUserActiveEntitlementsByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'whxxCiWOVEwrPRTC' \
    --ids '["1y92W5PxLE7EEC1c", "jpvJNkRhEf45wZDu", "J07Q6KUa5F3wACrp"]' \
    --platform 'iu8dWblZHoqifj1A' \
    > test.out 2>&1
eval_tap $? 260 'GetUserActiveEntitlementsByItemIds' test.out

#- 261 GetUserEntitlementBySku
samples/cli/sample-apps Platform getUserEntitlementBySku \
    --namespace $AB_NAMESPACE \
    --userId 'kk22rX45P5hvzAdL' \
    --activeOnly 'true' \
    --entitlementClazz 'LOOTBOX' \
    --platform 'xdUh3MxIVqjnuOzV' \
    --sku 'zP3mi2bmRujPO75s' \
    > test.out 2>&1
eval_tap $? 261 'GetUserEntitlementBySku' test.out

#- 262 ExistsAnyUserActiveEntitlement
samples/cli/sample-apps Platform existsAnyUserActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'zGjT9ZZHOCnRq6mA' \
    --appIds '["laiFK3E1dlqWFHuK", "7zmvFUl3Mf12OQQh", "AIARDBkBlSYfeBJz"]' \
    --itemIds '["EGjZLwGYF8rjQPWA", "HyGbfVDlmRIFp8Zz", "vd0mYNfdL5VoeXrZ"]' \
    --platform 'gJ1Qz3Yo7XUSoGxR' \
    --skus '["AWEMDQROiKTIwMod", "z2OMthdK9UVmyxqn", "uh4hyp4CJQbbGKIj"]' \
    > test.out 2>&1
eval_tap $? 262 'ExistsAnyUserActiveEntitlement' test.out

#- 263 ExistsAnyUserActiveEntitlementByItemIds
samples/cli/sample-apps Platform existsAnyUserActiveEntitlementByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'qJTPVoxCzHURChPb' \
    --platform 'G7mEOBai1p5j1v8e' \
    --itemIds '["VOfX8Gso9EA1oqgk", "rNsbySvz1D97iDk7", "EZVgwXglHppBtDPc"]' \
    > test.out 2>&1
eval_tap $? 263 'ExistsAnyUserActiveEntitlementByItemIds' test.out

#- 264 GetUserAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform getUserAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'X8VWdJoYFGcEUPW6' \
    --appId 'WTL6H0so7wSuyGCw' \
    > test.out 2>&1
eval_tap $? 264 'GetUserAppEntitlementOwnershipByAppId' test.out

#- 265 GetUserEntitlementOwnershipByItemId
samples/cli/sample-apps Platform getUserEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'wwYYWWKCS95lTIa3' \
    --entitlementClazz 'LOOTBOX' \
    --platform 'CV6t4KlnlW3lZJdq' \
    --itemId 'h3M501KcztCw0qnP' \
    > test.out 2>&1
eval_tap $? 265 'GetUserEntitlementOwnershipByItemId' test.out

#- 266 GetUserEntitlementOwnershipByItemIds
samples/cli/sample-apps Platform getUserEntitlementOwnershipByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'JuaJlxkpOXbahn5y' \
    --ids '["zdJ9pB1Adu3kTphA", "BklV81SSbA9dK7Mw", "QF9vAUFmbimKHlJo"]' \
    --platform 'R7yTrCUQf34TkeNH' \
    > test.out 2>&1
eval_tap $? 266 'GetUserEntitlementOwnershipByItemIds' test.out

#- 267 GetUserEntitlementOwnershipBySku
samples/cli/sample-apps Platform getUserEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --userId 'r6PMwYfRFMe1yhgO' \
    --entitlementClazz 'OPTIONBOX' \
    --platform 'j90q7IwDEhOKiey3' \
    --sku 'VULNvwIWoaO0Cc4Q' \
    > test.out 2>&1
eval_tap $? 267 'GetUserEntitlementOwnershipBySku' test.out

#- 268 RevokeAllEntitlements
samples/cli/sample-apps Platform revokeAllEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'adJ0F8zQCI7mQydA' \
    > test.out 2>&1
eval_tap $? 268 'RevokeAllEntitlements' test.out

#- 269 RevokeUserEntitlements
samples/cli/sample-apps Platform revokeUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'wkHBv5qFvl9ChscT' \
    --entitlementIds '7hBGf9Zzx2Y6eAhg' \
    > test.out 2>&1
eval_tap $? 269 'RevokeUserEntitlements' test.out

#- 270 GetUserEntitlement
samples/cli/sample-apps Platform getUserEntitlement \
    --entitlementId 'ucqaD5q5m4cgweka' \
    --namespace $AB_NAMESPACE \
    --userId 'nnGNRfXORQfppZx0' \
    > test.out 2>&1
eval_tap $? 270 'GetUserEntitlement' test.out

#- 271 UpdateUserEntitlement
samples/cli/sample-apps Platform updateUserEntitlement \
    --entitlementId '7J81tcAEKqLabYgr' \
    --namespace $AB_NAMESPACE \
    --userId '9KhpEedi6FkA3L4B' \
    --body '{"collectionId": "eb4P5NMLLlTO5AHs", "endDate": "1996-02-11T00:00:00Z", "nullFieldList": ["xiVksev5ycGqkfTS", "0ZRaLgeGmcBo2EVt", "EFV6bzDHue7yAKSD"], "origin": "GooglePlay", "reason": "DRgDSpxdI3j9VfUo", "startDate": "1988-03-20T00:00:00Z", "status": "SOLD", "useCount": 64}' \
    > test.out 2>&1
eval_tap $? 271 'UpdateUserEntitlement' test.out

#- 272 ConsumeUserEntitlement
samples/cli/sample-apps Platform consumeUserEntitlement \
    --entitlementId 'vYpdY6ZRLKZAloz4' \
    --namespace $AB_NAMESPACE \
    --userId 'uxGJYSRInjwmnCwL' \
    --body '{"metadata": {"iBmsGfnCBpGq6vYj": {}, "op8i1PRxW0QtB9gy": {}, "ZZCFmRKWq5gak8f7": {}}, "options": ["ZdQYVK9jqqa5uuYG", "LdesLBoIaWMRYvyv", "QEjjRT4OgoO5ezQF"], "platform": "4nfa6vztZbzDxUYi", "requestId": "9BpP0OuuO11fpVHy", "useCount": 85}' \
    > test.out 2>&1
eval_tap $? 272 'ConsumeUserEntitlement' test.out

#- 273 DisableUserEntitlement
samples/cli/sample-apps Platform disableUserEntitlement \
    --entitlementId 'zme986JNulOAI1nL' \
    --namespace $AB_NAMESPACE \
    --userId '0jo6MnG3qq9KzmQQ' \
    > test.out 2>&1
eval_tap $? 273 'DisableUserEntitlement' test.out

#- 274 EnableUserEntitlement
samples/cli/sample-apps Platform enableUserEntitlement \
    --entitlementId 'bXjzZ7SwrhlOiXuR' \
    --namespace $AB_NAMESPACE \
    --userId '45cOWaO4zRbPiMoS' \
    > test.out 2>&1
eval_tap $? 274 'EnableUserEntitlement' test.out

#- 275 GetUserEntitlementHistories
samples/cli/sample-apps Platform getUserEntitlementHistories \
    --entitlementId 'SM2vlqWktrPWvQwh' \
    --namespace $AB_NAMESPACE \
    --userId 'BwUrNN2UuPz19wtn' \
    > test.out 2>&1
eval_tap $? 275 'GetUserEntitlementHistories' test.out

#- 276 RevokeUserEntitlement
samples/cli/sample-apps Platform revokeUserEntitlement \
    --entitlementId '3P8f9dEUcflbdkRb' \
    --namespace $AB_NAMESPACE \
    --userId 'PFuyMKy7qThPtNfK' \
    --body '{"metadata": {"asNN1KCh9rXeUqzS": {}, "Ow5smwuz0ryjCcxW": {}, "rfhnbIvqZgi7enhn": {}}}' \
    > test.out 2>&1
eval_tap $? 276 'RevokeUserEntitlement' test.out

#- 277 RevokeUserEntitlementByUseCount
samples/cli/sample-apps Platform revokeUserEntitlementByUseCount \
    --entitlementId 'ZM16TukTzPbUFZD6' \
    --namespace $AB_NAMESPACE \
    --userId 'OccrONeG9VkMfMzw' \
    --body '{"reason": "gwVs0gxl9PySHbtB", "useCount": 60}' \
    > test.out 2>&1
eval_tap $? 277 'RevokeUserEntitlementByUseCount' test.out

#- 278 PreCheckRevokeUserEntitlementByUseCount
samples/cli/sample-apps Platform preCheckRevokeUserEntitlementByUseCount \
    --entitlementId 'LDYY0oYkl1usaeNe' \
    --namespace $AB_NAMESPACE \
    --userId 'L4FFFpaRw6vi2P0s' \
    --quantity '86' \
    > test.out 2>&1
eval_tap $? 278 'PreCheckRevokeUserEntitlementByUseCount' test.out

#- 279 RevokeUseCount
eval_tap 0 279 'RevokeUseCount # SKIP deprecated' test.out

#- 280 SellUserEntitlement
samples/cli/sample-apps Platform sellUserEntitlement \
    --entitlementId 'MRNGVhVMIVkhGpT5' \
    --namespace $AB_NAMESPACE \
    --userId 'Dklt0S27DQNFCTub' \
    --body '{"platform": "jiMfF0DMtQMViIff", "requestId": "Sk7HX7TRip6iUWWw", "useCount": 36}' \
    > test.out 2>&1
eval_tap $? 280 'SellUserEntitlement' test.out

#- 281 FulfillItem
samples/cli/sample-apps Platform fulfillItem \
    --namespace $AB_NAMESPACE \
    --userId 'THABlRDJEyLhFZZv' \
    --body '{"duration": 38, "endDate": "1992-09-12T00:00:00Z", "entitlementCollectionId": "SfE6pGJQrdqoGBgm", "entitlementOrigin": "Steam", "itemId": "XGf2s5zxzZYKyiBg", "itemSku": "0FeQt7fVgjyrLd5J", "language": "xm7XtDMdkRG4W87G", "metadata": {"iNoJBiyrNKB7eOvt": {}, "Hs2JDAif1Rsxr7HD": {}, "om1p4wfbHQStYJTJ": {}}, "order": {"currency": {"currencyCode": "EumzcFg2HhmH2dxZ", "currencySymbol": "cVneiiMNrJPQfMEB", "currencyType": "VIRTUAL", "decimals": 0, "namespace": "Xnj3gJVfxebPGkfO"}, "ext": {"AK89e0pjZpGYF8l9": {}, "KyWjCbrtxNOmhLEz": {}, "QGrdjIKGlYHDAnso": {}}, "free": true}, "orderNo": "yTj04Z6806iBiVhW", "origin": "Oculus", "overrideBundleItemQty": {"AZPBW7w0cfInUniv": 29, "5HPE0Nlad7maUZuQ": 9, "lXE793URnKUhGdlz": 98}, "quantity": 39, "region": "S5s3XIIi9N7vzyaF", "source": "REWARD", "startDate": "1974-03-06T00:00:00Z", "storeId": "GFxrdL66xF4sYPPz"}' \
    > test.out 2>&1
eval_tap $? 281 'FulfillItem' test.out

#- 282 RedeemCode
samples/cli/sample-apps Platform redeemCode \
    --namespace $AB_NAMESPACE \
    --userId 'VPbzZZL4oUa3lwEJ' \
    --body '{"code": "MXZ0AfzCvtv4F7lc", "language": "mEej", "region": "VyXGQrxz6hAnNDgs"}' \
    > test.out 2>&1
eval_tap $? 282 'RedeemCode' test.out

#- 283 PreCheckFulfillItem
samples/cli/sample-apps Platform preCheckFulfillItem \
    --namespace $AB_NAMESPACE \
    --userId '0XvYRN42qm57hWjl' \
    --body '{"itemId": "GUkstDA5N8xdjJrG", "itemSku": "sH0I6gdR69L2p0jp", "quantity": 94}' \
    > test.out 2>&1
eval_tap $? 283 'PreCheckFulfillItem' test.out

#- 284 FulfillRewards
samples/cli/sample-apps Platform fulfillRewards \
    --namespace $AB_NAMESPACE \
    --userId 'WHV06hjzFzSFR1V6' \
    --body '{"entitlementCollectionId": "5CNkd1XQFfgwM6xN", "entitlementOrigin": "IOS", "metadata": {"a1rEaR2gqrFtU7qZ": {}, "A9NYLySUWBfhAaTI": {}, "5l6YmNTjlump5Jen": {}}, "origin": "GooglePlay", "rewards": [{"currency": {"currencyCode": "eoQNqsx4k1i7EByF", "namespace": "yyjUfjMKmbFHOKaJ"}, "item": {"itemId": "iiBAJUXebmnZF4RN", "itemName": "KBdCNk1vXaOpbYAJ", "itemSku": "NtPZ6sMwjrFphli2", "itemType": "J6PFQ5k03QgLcVMP"}, "quantity": 83, "type": "CURRENCY"}, {"currency": {"currencyCode": "qqsJPxBmtEYJMytH", "namespace": "8ypTolbQT4uearOO"}, "item": {"itemId": "TcBMLULG05qgvxb4", "itemName": "DCvSyGJsjpwDionr", "itemSku": "dU16J0Bh9DL7oGjb", "itemType": "pYi5LKmszv7Kbqez"}, "quantity": 1, "type": "CURRENCY"}, {"currency": {"currencyCode": "8U1hGw2h5xurfjEr", "namespace": "6LO5lOcB2EmIqrKj"}, "item": {"itemId": "O80MWLtBgkESgQcO", "itemName": "dIYbWDzLjCTHfmqj", "itemSku": "4ORcGWTwHmqFEkjh", "itemType": "gqQJlmKf1NwStlLf"}, "quantity": 69, "type": "CURRENCY"}], "source": "IAP_CHARGEBACK_REVERSED", "transactionId": "8SnmQgxNllvZdmsZ"}' \
    > test.out 2>&1
eval_tap $? 284 'FulfillRewards' test.out

#- 285 QueryUserIAPOrders
samples/cli/sample-apps Platform queryUserIAPOrders \
    --namespace $AB_NAMESPACE \
    --userId 'C1rwDfmjs076Mwuf' \
    --endTime 'Qk0IlUAfdgR5ETzy' \
    --limit '27' \
    --offset '8' \
    --productId 'q30qx5RMzmRqU7ZQ' \
    --startTime 'Umo1SsChateg3whp' \
    --status 'VERIFIED' \
    --type 'XBOX' \
    > test.out 2>&1
eval_tap $? 285 'QueryUserIAPOrders' test.out

#- 286 QueryAllUserIAPOrders
samples/cli/sample-apps Platform queryAllUserIAPOrders \
    --namespace $AB_NAMESPACE \
    --userId '7d9SwhS2e4ehJ3ii' \
    > test.out 2>&1
eval_tap $? 286 'QueryAllUserIAPOrders' test.out

#- 287 QueryUserIAPConsumeHistory
samples/cli/sample-apps Platform queryUserIAPConsumeHistory \
    --namespace $AB_NAMESPACE \
    --userId '9gOn6tFsU7vI41Tl' \
    --endTime 'qEd9wh3XImQE85Py' \
    --limit '9' \
    --offset '77' \
    --startTime 'G3Q1NhvYLJrlovRp' \
    --status 'FAIL' \
    --type 'XBOX' \
    > test.out 2>&1
eval_tap $? 287 'QueryUserIAPConsumeHistory' test.out

#- 288 MockFulfillIAPItem
samples/cli/sample-apps Platform mockFulfillIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'JStm4ahKMa8L5Xfz' \
    --body '{"itemIdentityType": "ITEM_SKU", "language": "bSxi_gcrE", "productId": "YD75Gfll5Oj3dEof", "region": "p2Q6bgvmz3uaQoth", "transactionId": "QkZb748dYi1xd65M", "type": "APPLE"}' \
    > test.out 2>&1
eval_tap $? 288 'MockFulfillIAPItem' test.out

#- 289 AdminGetIAPOrderLineItems
samples/cli/sample-apps Platform adminGetIAPOrderLineItems \
    --iapOrderNo 'Vwd03Tat1O5hIiF8' \
    --namespace $AB_NAMESPACE \
    --userId 'ysbUK4foTgEyC5RE' \
    > test.out 2>&1
eval_tap $? 289 'AdminGetIAPOrderLineItems' test.out

#- 290 AdminSyncSteamAbnormalTransaction
samples/cli/sample-apps Platform adminSyncSteamAbnormalTransaction \
    --namespace $AB_NAMESPACE \
    --userId 'M8zf1K0FUmZ0Egzd' \
    > test.out 2>&1
eval_tap $? 290 'AdminSyncSteamAbnormalTransaction' test.out

#- 291 AdminSyncSteamIAPByTransaction
samples/cli/sample-apps Platform adminSyncSteamIAPByTransaction \
    --namespace $AB_NAMESPACE \
    --userId '74TOKyaZ2nC19bQP' \
    --body '{"orderId": "vy0hGIfP62KtiiF2"}' \
    > test.out 2>&1
eval_tap $? 291 'AdminSyncSteamIAPByTransaction' test.out

#- 292 QueryUserThirdPartySubscription
samples/cli/sample-apps Platform queryUserThirdPartySubscription \
    --namespace $AB_NAMESPACE \
    --userId 'SyumLbki9nJ6zyLc' \
    --activeOnly 'true' \
    --groupId 'XEPsvcCbpubaVBve' \
    --limit '44' \
    --offset '7' \
    --platform 'GOOGLE' \
    --productId 'd91bMFLpDqmvlpWH' \
    > test.out 2>&1
eval_tap $? 292 'QueryUserThirdPartySubscription' test.out

#- 293 GetThirdPartyPlatformSubscriptionOwnershipByGroupId
samples/cli/sample-apps Platform getThirdPartyPlatformSubscriptionOwnershipByGroupId \
    --namespace $AB_NAMESPACE \
    --platform 'PLAYSTATION' \
    --userId 'aMgASR0hxX426V4D' \
    --groupId 'MzaLvEYy4YL5WPcw' \
    > test.out 2>&1
eval_tap $? 293 'GetThirdPartyPlatformSubscriptionOwnershipByGroupId' test.out

#- 294 GetThirdPartyPlatformSubscriptionOwnershipByProductId
samples/cli/sample-apps Platform getThirdPartyPlatformSubscriptionOwnershipByProductId \
    --namespace $AB_NAMESPACE \
    --platform 'STEAM' \
    --userId 'M9CQepaoNcUOOeCA' \
    --productId 'qWFPvUpDFJOKOuNr' \
    > test.out 2>&1
eval_tap $? 294 'GetThirdPartyPlatformSubscriptionOwnershipByProductId' test.out

#- 295 QueryUserThirdPartySubscriptionTransactions
samples/cli/sample-apps Platform queryUserThirdPartySubscriptionTransactions \
    --namespace $AB_NAMESPACE \
    --userId 'mM8Pe8l0UuK8l22M' \
    --activeOnly 'false' \
    --groupId 'pzQdrBX2WzQ5saqM' \
    --limit '27' \
    --offset '81' \
    --platform 'STEAM' \
    --productId '6uWlvbjTiBWh9Mz5' \
    > test.out 2>&1
eval_tap $? 295 'QueryUserThirdPartySubscriptionTransactions' test.out

#- 296 GetThirdPartySubscriptionDetails
samples/cli/sample-apps Platform getThirdPartySubscriptionDetails \
    --id 'cUlMufMnLZqRkVLm' \
    --namespace $AB_NAMESPACE \
    --userId 'aiqGGgOAQmOxeMgq' \
    > test.out 2>&1
eval_tap $? 296 'GetThirdPartySubscriptionDetails' test.out

#- 297 GetSubscriptionHistory
samples/cli/sample-apps Platform getSubscriptionHistory \
    --id 'oVh2MLzui6NZp59u' \
    --namespace $AB_NAMESPACE \
    --userId 'NcwYxCG0mxM6FvFo' \
    --limit '42' \
    --offset '69' \
    > test.out 2>&1
eval_tap $? 297 'GetSubscriptionHistory' test.out

#- 298 SyncSubscriptionTransaction
samples/cli/sample-apps Platform syncSubscriptionTransaction \
    --id 'bBJ8ExqAjT2qy3Tp' \
    --namespace $AB_NAMESPACE \
    --userId 'weMASffNl1ZJ4v0l' \
    > test.out 2>&1
eval_tap $? 298 'SyncSubscriptionTransaction' test.out

#- 299 GetThirdPartyUserSubscriptionDetails
samples/cli/sample-apps Platform getThirdPartyUserSubscriptionDetails \
    --id 'iCIFo7oZT15Pr2ZZ' \
    --namespace $AB_NAMESPACE \
    --userId 'HRfhSNXD1MiV86Mj' \
    > test.out 2>&1
eval_tap $? 299 'GetThirdPartyUserSubscriptionDetails' test.out

#- 300 SyncSubscription
samples/cli/sample-apps Platform syncSubscription \
    --id 'ROe3HGgtrqG1peJj' \
    --namespace $AB_NAMESPACE \
    --userId '3wYVNE0cHmEkM5HT' \
    > test.out 2>&1
eval_tap $? 300 'SyncSubscription' test.out

#- 301 QueryUserOrders
samples/cli/sample-apps Platform queryUserOrders \
    --namespace $AB_NAMESPACE \
    --userId 'FoRAFPYHDy9Wi2Bc' \
    --discounted 'false' \
    --itemId 'Q1CLyRGP5eGXVtEl' \
    --limit '53' \
    --offset '5' \
    --status 'INIT' \
    > test.out 2>&1
eval_tap $? 301 'QueryUserOrders' test.out

#- 302 AdminCreateUserOrder
samples/cli/sample-apps Platform adminCreateUserOrder \
    --namespace $AB_NAMESPACE \
    --userId '9xcsowRjpvG9E49B' \
    --body '{"currencyCode": "ATD9awSsR6ff4SSu", "currencyNamespace": "xFrmuQnm4AaZmRfo", "discountCodes": ["OpjFs9sQfkyVWbsK", "5leMtYnpcPmDDApJ", "uOdT2JIMXookSvuY"], "discountedPrice": 8, "entitlementPlatform": "Xbox", "ext": {"ymUFSSV6e25XMfmo": {}, "dAdz2hwcJnvqFXqx": {}, "RUEBlBfKhf5xeD0Z": {}}, "itemId": "8aHxAxD5V2eF4PBD", "language": "26YtljdYwjZNRjvy", "options": {"skipPriceValidation": true}, "platform": "Steam", "price": 73, "quantity": 26, "region": "I8yNPbNJSvFKStHP", "returnUrl": "rV2UpuU5JRhyF4sb", "sandbox": true, "sectionId": "1QmEm0a17gD5bXZD"}' \
    > test.out 2>&1
eval_tap $? 302 'AdminCreateUserOrder' test.out

#- 303 CountOfPurchasedItem
samples/cli/sample-apps Platform countOfPurchasedItem \
    --namespace $AB_NAMESPACE \
    --userId 'oAELlvNSAlSH2Ksy' \
    --itemId 'nqi4OlIEFWts94Fu' \
    > test.out 2>&1
eval_tap $? 303 'CountOfPurchasedItem' test.out

#- 304 GetUserOrder
samples/cli/sample-apps Platform getUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'CALLKXPtfyT96zs1' \
    --userId 'PYUS7zLg7h28BGBD' \
    > test.out 2>&1
eval_tap $? 304 'GetUserOrder' test.out

#- 305 UpdateUserOrderStatus
samples/cli/sample-apps Platform updateUserOrderStatus \
    --namespace $AB_NAMESPACE \
    --orderNo 'SDiulyAhpe3dDjIM' \
    --userId 'fI5COSXRwnm5jX6S' \
    --body '{"status": "CHARGEBACK", "statusReason": "vMyyR4ut2dZGZHbu"}' \
    > test.out 2>&1
eval_tap $? 305 'UpdateUserOrderStatus' test.out

#- 306 FulfillUserOrder
samples/cli/sample-apps Platform fulfillUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'fqxecyEmp0ILCGlM' \
    --userId 'zeo71uphjQeOErAQ' \
    > test.out 2>&1
eval_tap $? 306 'FulfillUserOrder' test.out

#- 307 GetUserOrderGrant
eval_tap 0 307 'GetUserOrderGrant # SKIP deprecated' test.out

#- 308 GetUserOrderHistories
samples/cli/sample-apps Platform getUserOrderHistories \
    --namespace $AB_NAMESPACE \
    --orderNo 'U57wFI3tGVkIzJUb' \
    --userId 'Ga6R0AzyNziajjrk' \
    > test.out 2>&1
eval_tap $? 308 'GetUserOrderHistories' test.out

#- 309 ProcessUserOrderNotification
samples/cli/sample-apps Platform processUserOrderNotification \
    --namespace $AB_NAMESPACE \
    --orderNo 'zpxrRkASdD9KmhHw' \
    --userId 'ZZU4pShnCGkBwXP0' \
    --body '{"additionalData": {"cardSummary": "6oVtkwKydPOpL49Y"}, "authorisedTime": "1973-11-10T00:00:00Z", "chargebackReversedTime": "1998-04-22T00:00:00Z", "chargebackTime": "1974-11-04T00:00:00Z", "chargedTime": "1979-12-18T00:00:00Z", "createdTime": "1994-07-26T00:00:00Z", "currency": {"currencyCode": "MEkC6ZPU2YQhDjbv", "currencySymbol": "RGHtEOxImaoydZD6", "currencyType": "VIRTUAL", "decimals": 39, "namespace": "wropo6BWwp7BQLzq"}, "customParameters": {"p0uZfpRVYL0OJway": {}, "oipWPcmseD1GJOXw": {}, "zfhMw52qBZh7F5HB": {}}, "extOrderNo": "Z5It5UoKiItOtkwa", "extTxId": "ESYqn6qHJtJcQnjM", "extUserId": "iAeHHQkMiRHnD1TY", "issuedAt": "1973-09-16T00:00:00Z", "metadata": {"7P6LMBKyF9hUVM7K": "NWGbhIQLAsEdTtv6", "74irTya2NmkrBQTE": "z3g1TLSQA9jvFfhr", "hQr0F2o9BRgDtc8F": "wFmDed22p5uxL9s3"}, "namespace": "dwnhnfyi4yigEeUa", "nonceStr": "4XY59OXxCFOUfTP8", "paymentData": {"discountAmount": 2, "discountCode": "PX2RbIpIPXEL5Q5t", "subtotalPrice": 26, "tax": 2, "totalPrice": 89}, "paymentMethod": "iGUge1prqCpvEGGd", "paymentMethodFee": 65, "paymentOrderNo": "e5THoO3YcyiVmunq", "paymentProvider": "ALIPAY", "paymentProviderFee": 79, "paymentStationUrl": "K8YR7bBRtEviZPxe", "price": 52, "refundedTime": "1980-12-25T00:00:00Z", "salesTax": 100, "sandbox": false, "sku": "9pbJtmXC3B6qPUmH", "status": "INIT", "statusReason": "KZSKG7tVJ3g2sT9m", "subscriptionId": "H7ASrq7mVdvLDZwV", "subtotalPrice": 26, "targetNamespace": "8jLfPKdLDsVLu53H", "targetUserId": "l3CQ2qcVjBicaqaS", "tax": 50, "totalPrice": 0, "totalTax": 57, "txEndTime": "1990-06-04T00:00:00Z", "type": "sRU3SIG2AbNeg2dl", "userId": "XjHav037l59PISk2", "vat": 73}' \
    > test.out 2>&1
eval_tap $? 309 'ProcessUserOrderNotification' test.out

#- 310 DownloadUserOrderReceipt
samples/cli/sample-apps Platform downloadUserOrderReceipt \
    --namespace $AB_NAMESPACE \
    --orderNo '5e14JiTViFw4iowB' \
    --userId 'xuxvZknjaNe1pcyN' \
    > test.out 2>&1
eval_tap $? 310 'DownloadUserOrderReceipt' test.out

#- 311 CreateUserPaymentOrder
samples/cli/sample-apps Platform createUserPaymentOrder \
    --namespace $AB_NAMESPACE \
    --userId 'NdV0DveMlx7Iwlwa' \
    --body '{"currencyCode": "Yat1GsJLZIYbIeyr", "currencyNamespace": "9ABf7ERI9GDcoYju", "customParameters": {"FIqBS69EIpWQnrp0": {}, "pECiWQWCqts3foHu": {}, "APHO6XoLOQRP8SNM": {}}, "description": "WjL2rN2nNOMJgcol", "extOrderNo": "nhBdRblXApYcQuc3", "extUserId": "EIPEbWmYlGCh5Xpv", "itemType": "BUNDLE", "language": "Ldpi-lsad_AE", "metadata": {"xKwbNGZqEs1tO6Rt": "b0w7xUzjIBuRAbMy", "8nnUinEMSNTHnCZ5": "QvIKTLdcUjGFR3Ac", "kd0MkiZykQ4ymfBU": "sAm0p9fQuVsqNUnB"}, "notifyUrl": "D01FV8pYrxfOrGfL", "omitNotification": true, "platform": "vu0vcFnX1RdnTRAQ", "price": 42, "recurringPaymentOrderNo": "YM1fmEkvvqUQF31u", "region": "VwbVaaeLipc88gKR", "returnUrl": "jhoFmBAIKL7itOp5", "sandbox": false, "sku": "lkkQh2PhnVwBBDSy", "subscriptionId": "q6vWl7XDfiWZPwGC", "title": "aJhWz6aAgfOJ645t"}' \
    > test.out 2>&1
eval_tap $? 311 'CreateUserPaymentOrder' test.out

#- 312 RefundUserPaymentOrder
samples/cli/sample-apps Platform refundUserPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'RF1z8V7OEhVIsqrx' \
    --userId 'AUxjYG6MWNsWH01b' \
    --body '{"description": "C0EgVDnzCwlwUSEP"}' \
    > test.out 2>&1
eval_tap $? 312 'RefundUserPaymentOrder' test.out

#- 313 GetUserPlatformAccountClosureHistories
samples/cli/sample-apps Platform getUserPlatformAccountClosureHistories \
    --namespace $AB_NAMESPACE \
    --userId 'y5NpOkq77FvH5cDl' \
    > test.out 2>&1
eval_tap $? 313 'GetUserPlatformAccountClosureHistories' test.out

#- 314 ApplyUserRedemption
samples/cli/sample-apps Platform applyUserRedemption \
    --namespace $AB_NAMESPACE \
    --userId '6snDVbQ0pzizaOkK' \
    --body '{"code": "GE94JJFi4dad6k1T", "orderNo": "VCGkBTSgMhbZB7RY"}' \
    > test.out 2>&1
eval_tap $? 314 'ApplyUserRedemption' test.out

#- 315 DoRevocation
samples/cli/sample-apps Platform doRevocation \
    --namespace $AB_NAMESPACE \
    --userId 'dBPNWPtLyTOvvcUS' \
    --body '{"meta": {"W5ywUieOJI3ZYz5V": {}, "bYko7C3Z9t5hbhSv": {}, "X5kp2v6Edn0sQ7wO": {}}, "reason": "kJIAxd7w09SXEBMb", "requestId": "GwGQtq60hE553R8w", "revokeEntries": [{"currency": {"balanceOrigin": "Playstation", "currencyCode": "DDeKaSnzSWpGvrTd", "namespace": "lfPOsKro1qzd83hX"}, "entitlement": {"entitlementId": "ceEwPbvH9XgUoGmq"}, "item": {"entitlementOrigin": "GooglePlay", "itemIdentity": "51Z8yFq2Saywfv5y", "itemIdentityType": "ITEM_ID", "origin": "System"}, "quantity": 83, "type": "ENTITLEMENT"}, {"currency": {"balanceOrigin": "Nintendo", "currencyCode": "6Jz8sVJcpce0HKpH", "namespace": "nkV7OPuSzTk4pTuU"}, "entitlement": {"entitlementId": "AO9UJ2wfmtMd69G6"}, "item": {"entitlementOrigin": "Steam", "itemIdentity": "z1AjyGnoSSATGx8E", "itemIdentityType": "ITEM_SKU", "origin": "Epic"}, "quantity": 16, "type": "ITEM"}, {"currency": {"balanceOrigin": "Steam", "currencyCode": "5VfpqUKJD7rgFcA7", "namespace": "GTHJQkqwhPMPRa3n"}, "entitlement": {"entitlementId": "YT8mTKkYpkuRldbv"}, "item": {"entitlementOrigin": "Xbox", "itemIdentity": "938JHomluPygQJqj", "itemIdentityType": "ITEM_SKU", "origin": "Epic"}, "quantity": 93, "type": "ENTITLEMENT"}], "source": "IAP", "transactionId": "lTUn9cRVO76dF8md"}' \
    > test.out 2>&1
eval_tap $? 315 'DoRevocation' test.out

#- 316 RegisterXblSessions
samples/cli/sample-apps Platform registerXblSessions \
    --namespace $AB_NAMESPACE \
    --userId 'BvaxLebeoY6fx00Q' \
    --body '{"gameSessionId": "hCgS4o9UzsreZY4m", "payload": {"Tos1meRumozWhjqB": {}, "JaD1vZPyC9vrB6ZA": {}, "dTLSLLggHlcCsgwS": {}}, "scid": "SnfpIhAzulIw5VTt", "sessionTemplateName": "DGbYYGGdPp0HMXCj"}' \
    > test.out 2>&1
eval_tap $? 316 'RegisterXblSessions' test.out

#- 317 QueryUserSubscriptions
samples/cli/sample-apps Platform queryUserSubscriptions \
    --namespace $AB_NAMESPACE \
    --userId '6BKmladQFUxzNNfb' \
    --chargeStatus 'NEVER' \
    --itemId '3YhEHO2UfgowbGwe' \
    --limit '73' \
    --offset '44' \
    --sku 'zuHvkM92nRV6jDMr' \
    --status 'INIT' \
    --subscribedBy 'PLATFORM' \
    > test.out 2>&1
eval_tap $? 317 'QueryUserSubscriptions' test.out

#- 318 GetUserSubscriptionActivities
samples/cli/sample-apps Platform getUserSubscriptionActivities \
    --namespace $AB_NAMESPACE \
    --userId 'EhMORmqL1NyBdrVu' \
    --excludeSystem 'true' \
    --limit '77' \
    --offset '28' \
    --subscriptionId '6VL9y8EZYWrDMRv6' \
    > test.out 2>&1
eval_tap $? 318 'GetUserSubscriptionActivities' test.out

#- 319 PlatformSubscribeSubscription
samples/cli/sample-apps Platform platformSubscribeSubscription \
    --namespace $AB_NAMESPACE \
    --userId 'm2B2wpkX00SW0WLg' \
    --body '{"grantDays": 88, "itemId": "bOozpXioLzYK6cXH", "language": "5oTt3BDUSGxPd9ui", "reason": "0EfRpxrZOe8dwKbY", "region": "ahd0W8x5MDLI03qm", "source": "PJim7JGSY8pcd5nD"}' \
    > test.out 2>&1
eval_tap $? 319 'PlatformSubscribeSubscription' test.out

#- 320 CheckUserSubscriptionSubscribableByItemId
samples/cli/sample-apps Platform checkUserSubscriptionSubscribableByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'hRFspJNxxTxWp4Qg' \
    --itemId 'QTsIIiCF9gHvRUwE' \
    > test.out 2>&1
eval_tap $? 320 'CheckUserSubscriptionSubscribableByItemId' test.out

#- 321 GetUserSubscription
samples/cli/sample-apps Platform getUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'lHHlCgSs1kNHDxNv' \
    --userId 'DynqgiJQAKWZJJ4P' \
    > test.out 2>&1
eval_tap $? 321 'GetUserSubscription' test.out

#- 322 DeleteUserSubscription
samples/cli/sample-apps Platform deleteUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'rgzLKxy9ImdVglwd' \
    --userId 'UXXiypNICIDxZY6v' \
    > test.out 2>&1
eval_tap $? 322 'DeleteUserSubscription' test.out

#- 323 CancelSubscription
samples/cli/sample-apps Platform cancelSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'p0k7lAvLjBdnG0n6' \
    --userId 'OgWuU5PaSsAqX2Fm' \
    --force 'true' \
    --body '{"immediate": true, "reason": "I1V8Fk3TbiAZ6guv"}' \
    > test.out 2>&1
eval_tap $? 323 'CancelSubscription' test.out

#- 324 GrantDaysToSubscription
samples/cli/sample-apps Platform grantDaysToSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'dceiRUMKtuQUSKj2' \
    --userId 'x9CTG9XuAaJHTng0' \
    --body '{"grantDays": 55, "reason": "XsPGs2fEtJmuxIAt"}' \
    > test.out 2>&1
eval_tap $? 324 'GrantDaysToSubscription' test.out

#- 325 GetUserSubscriptionBillingHistories
samples/cli/sample-apps Platform getUserSubscriptionBillingHistories \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'GJ62hchfYlPDkGTf' \
    --userId 'BvbG96T87XopseJl' \
    --excludeFree 'true' \
    --limit '34' \
    --offset '10' \
    > test.out 2>&1
eval_tap $? 325 'GetUserSubscriptionBillingHistories' test.out

#- 326 ProcessUserSubscriptionNotification
samples/cli/sample-apps Platform processUserSubscriptionNotification \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'LBcBSoRgDMIhAQF0' \
    --userId '30JxcbwF4N8z1fWh' \
    --body '{"additionalData": {"cardSummary": "mqelwvW3EipNK2hH"}, "authorisedTime": "1981-10-07T00:00:00Z", "chargebackReversedTime": "1981-03-23T00:00:00Z", "chargebackTime": "1992-05-14T00:00:00Z", "chargedTime": "1976-12-16T00:00:00Z", "createdTime": "1981-05-09T00:00:00Z", "currency": {"currencyCode": "7UfMyXBoHyRe5bZ5", "currencySymbol": "5in1vH3bRyXqGQhr", "currencyType": "REAL", "decimals": 53, "namespace": "oRWiETpfADUO308b"}, "customParameters": {"P5FC3Z1U8HkXc2JE": {}, "t8dtjml1boBjpbqS": {}, "zfNsdqd2RbNaQDla": {}}, "extOrderNo": "NbbL82K8xqCWwpTj", "extTxId": "4QbFXDdqD8gqzOPM", "extUserId": "JVN6FBTQvsxma0kn", "issuedAt": "1979-09-14T00:00:00Z", "metadata": {"rm3IamQrTSgUBPwB": "OqlUzASbLkqJg37j", "9OUdCiF9xfQRzrO7": "ZPf4gBWsUu66HZOQ", "d1d3TjonAmTUoqvG": "gjpgWtPpMwysHQ3o"}, "namespace": "WJRulf5g44UfYtS9", "nonceStr": "LSB12luuWzwT9UpE", "paymentData": {"discountAmount": 5, "discountCode": "hXcNQLg1aLC5hTL7", "subtotalPrice": 12, "tax": 40, "totalPrice": 51}, "paymentMethod": "L1X4GyfjDzLBctP9", "paymentMethodFee": 91, "paymentOrderNo": "C1XUVL7AHhOIHnq5", "paymentProvider": "XSOLLA", "paymentProviderFee": 2, "paymentStationUrl": "4I1ARLdRMQoi9aX7", "price": 13, "refundedTime": "1971-11-08T00:00:00Z", "salesTax": 89, "sandbox": false, "sku": "aKYgm3CSSNhYIg4c", "status": "CHARGEBACK", "statusReason": "X3chuI8Dr5nrZjGi", "subscriptionId": "81LtkexXjYokGFjI", "subtotalPrice": 51, "targetNamespace": "L2TWopDcxitXO0ly", "targetUserId": "5GTifJB8Jp3XpOfR", "tax": 5, "totalPrice": 55, "totalTax": 96, "txEndTime": "1997-09-23T00:00:00Z", "type": "1GznjDqnyvZOeZXT", "userId": "j1kkDLZCdt2i9FpJ", "vat": 18}' \
    > test.out 2>&1
eval_tap $? 326 'ProcessUserSubscriptionNotification' test.out

#- 327 AcquireUserTicket
samples/cli/sample-apps Platform acquireUserTicket \
    --boothName 'oV57iZbzABIjaoxF' \
    --namespace $AB_NAMESPACE \
    --userId 'ZevPOv9NPcsfCw6X' \
    --body '{"count": 5, "orderNo": "JRyUCtPcW9WtnGug"}' \
    > test.out 2>&1
eval_tap $? 327 'AcquireUserTicket' test.out

#- 328 QueryUserCurrencyWallets
samples/cli/sample-apps Platform queryUserCurrencyWallets \
    --namespace $AB_NAMESPACE \
    --userId 'W2w2ec0DhLDZLco5' \
    > test.out 2>&1
eval_tap $? 328 'QueryUserCurrencyWallets' test.out

#- 329 DebitUserWalletByCurrencyCode
samples/cli/sample-apps Platform debitUserWalletByCurrencyCode \
    --currencyCode 'z2HjOODkEobIG57P' \
    --namespace $AB_NAMESPACE \
    --userId 'EbuemR0ogv6jXqv7' \
    --body '{"allowOverdraft": true, "amount": 40, "balanceOrigin": "Xbox", "balanceSource": "OTHER", "metadata": {"x4ceOPx3NO0uDrCm": {}, "oQloKlm1mnXAAr7D": {}, "lSmeKyOaA6wlspiP": {}}, "reason": "xu7wvd5LGTo1cQNx"}' \
    > test.out 2>&1
eval_tap $? 329 'DebitUserWalletByCurrencyCode' test.out

#- 330 ListUserCurrencyTransactions
samples/cli/sample-apps Platform listUserCurrencyTransactions \
    --currencyCode 'FoPg7eDCMDRPYgWw' \
    --namespace $AB_NAMESPACE \
    --userId '9Cb5WKBtr634SrIv' \
    --limit '84' \
    --offset '98' \
    > test.out 2>&1
eval_tap $? 330 'ListUserCurrencyTransactions' test.out

#- 331 CheckBalance
samples/cli/sample-apps Platform checkBalance \
    --currencyCode 'VG5i8P9Bbcp8rC0p' \
    --namespace $AB_NAMESPACE \
    --userId '8xYu4CphKSd8IYlt' \
    --request '{"amount": 2, "debitBalanceSource": "PAYMENT", "metadata": {"zE8nJXXshQ1hUnLP": {}, "Yc0zSXGxEXKruaUJ": {}, "uoQ1Udnqf6TX8vor": {}}, "reason": "Zxv0C42T5sKOFWkJ", "walletPlatform": "IOS"}' \
    > test.out 2>&1
eval_tap $? 331 'CheckBalance' test.out

#- 332 CheckWallet
eval_tap 0 332 'CheckWallet # SKIP deprecated' test.out

#- 333 CreditUserWallet
samples/cli/sample-apps Platform creditUserWallet \
    --currencyCode 'FFsER0fpOtY2h6YL' \
    --namespace $AB_NAMESPACE \
    --userId 'xpgeli5mY640bsxu' \
    --body '{"amount": 82, "expireAt": "1971-11-11T00:00:00Z", "metadata": {"Wgq9OecX3rhjvVVJ": {}, "wld5jtklYVi1KunD": {}, "45AeDPA2FTIfg3hd": {}}, "origin": "Xbox", "reason": "IRfk66ESfkSnco6i", "source": "IAP_CHARGEBACK_REVERSED"}' \
    > test.out 2>&1
eval_tap $? 333 'CreditUserWallet' test.out

#- 334 DebitByWalletPlatform
samples/cli/sample-apps Platform debitByWalletPlatform \
    --currencyCode 'bbmwphnI0yBtMBYJ' \
    --namespace $AB_NAMESPACE \
    --userId 'GXp6wq24f2Ib4bx3' \
    --request '{"amount": 50, "debitBalanceSource": "TRADE", "metadata": {"KYz7JWnxbyqS7fli": {}, "2EIF5JebsHY1dPxH": {}, "3yqYBt1R6AvuEPvH": {}}, "reason": "9wWWoZ4LBvZyhS2r", "walletPlatform": "Epic"}' \
    > test.out 2>&1
eval_tap $? 334 'DebitByWalletPlatform' test.out

#- 335 PayWithUserWallet
samples/cli/sample-apps Platform payWithUserWallet \
    --currencyCode 'CqchkPmZBmbTHdpd' \
    --namespace $AB_NAMESPACE \
    --userId 'KdmslITx5CCX7RNK' \
    --body '{"amount": 73, "metadata": {"T8i61D5EKSVbtYML": {}, "Q05WKcJF5mq2gMfC": {}, "ZSya4OhxX3Pvz1Gx": {}}, "walletPlatform": "Xbox"}' \
    > test.out 2>&1
eval_tap $? 335 'PayWithUserWallet' test.out

#- 336 GetUserWallet
eval_tap 0 336 'GetUserWallet # SKIP deprecated' test.out

#- 337 DebitUserWallet
eval_tap 0 337 'DebitUserWallet # SKIP deprecated' test.out

#- 338 DisableUserWallet
eval_tap 0 338 'DisableUserWallet # SKIP deprecated' test.out

#- 339 EnableUserWallet
eval_tap 0 339 'EnableUserWallet # SKIP deprecated' test.out

#- 340 ListUserWalletTransactions
eval_tap 0 340 'ListUserWalletTransactions # SKIP deprecated' test.out

#- 341 ListViews
samples/cli/sample-apps Platform listViews \
    --namespace $AB_NAMESPACE \
    --storeId 'ilKn3zdXZMXa3jsK' \
    > test.out 2>&1
eval_tap $? 341 'ListViews' test.out

#- 342 CreateView
samples/cli/sample-apps Platform createView \
    --namespace $AB_NAMESPACE \
    --storeId 'lvNy3B8qUc5UkAWz' \
    --body '{"displayOrder": 30, "localizations": {"IhzRz3ccFwNYVwxM": {"description": "s5RKI9Si5UQ18OG5", "localExt": {"mNYBv4zfHkLZjCfd": {}, "qF2TmNlp0LPTamE5": {}, "r2RbGhF7NoaUmZjE": {}}, "longDescription": "ne5tm2n2HZZu0CrN", "title": "2I5oSHx66DOFH4gr"}, "jyh4wYJ9OUa3C1oj": {"description": "l7M6bYjRvCwY46HE", "localExt": {"z6WPbYuHzIFkkaix": {}, "qAHwrFwiSHYzvrUl": {}, "pTLDm2Zzvp66iOvL": {}}, "longDescription": "JVcgiuBrQULfp0UB", "title": "mXJbQDMAw7AbxCJH"}, "RupBUqqEcIMbJRls": {"description": "4BIRPodbyDT8Ae89", "localExt": {"8ldfgQViLAmJcYV1": {}, "9GCr5d4w7EYZI7bZ": {}, "B215IHAxqBz8uSYU": {}}, "longDescription": "jd9ZPNnD2rgMD0BI", "title": "kdxOwvaxdNMIBN7v"}}, "name": "cr8Cyg8s6M0cntN3"}' \
    > test.out 2>&1
eval_tap $? 342 'CreateView' test.out

#- 343 GetView
samples/cli/sample-apps Platform getView \
    --namespace $AB_NAMESPACE \
    --viewId 'J8olZ7fR3fANkX5T' \
    --storeId '9ml2cEgS0sk67WbX' \
    > test.out 2>&1
eval_tap $? 343 'GetView' test.out

#- 344 UpdateView
samples/cli/sample-apps Platform updateView \
    --namespace $AB_NAMESPACE \
    --viewId 'LD8fMnYTtNbWWrwH' \
    --storeId '7MtioaAOCFxyGbmC' \
    --body '{"displayOrder": 67, "localizations": {"lZnZ9znnfDegEN49": {"description": "4rDVeklXG06aelxz", "localExt": {"cYVX6MCNfzQNNVR1": {}, "LIlQgheaeM7mAKWq": {}, "azNYvJrD7arqWUTX": {}}, "longDescription": "xk6eT57l1rJLQJBO", "title": "V7Wce31uwEhjGrRN"}, "SeRrRvbiack9TYXB": {"description": "IYP6uLQTgv1WPOtX", "localExt": {"lNk7zKFbxozuDYmJ": {}, "u5LKxSigx9hxpI3M": {}, "5f2mDx9to5ieVCx0": {}}, "longDescription": "58UkdLVkAm0mGvyy", "title": "5y2pLmV2JIW6e0IC"}, "koRZ4rDHxWYsjLMi": {"description": "gMD2zGBHz9XoyD2N", "localExt": {"WKRxenNJUkdG41qc": {}, "DNNzc1Zr4tfrdwk5": {}, "FjcWa0wZrYB7jE8B": {}}, "longDescription": "LvQTKc71Rc3ozWwL", "title": "qthCcjoq1HcQWIrC"}}, "name": "OTOUx4z5OT6UA7KW"}' \
    > test.out 2>&1
eval_tap $? 344 'UpdateView' test.out

#- 345 DeleteView
samples/cli/sample-apps Platform deleteView \
    --namespace $AB_NAMESPACE \
    --viewId 'BB74x2vpWhSmPkZO' \
    --storeId 'mMYSncQjahAvCEY2' \
    > test.out 2>&1
eval_tap $? 345 'DeleteView' test.out

#- 346 GetWalletConfig
samples/cli/sample-apps Platform getWalletConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 346 'GetWalletConfig' test.out

#- 347 UpdateWalletConfig
samples/cli/sample-apps Platform updateWalletConfig \
    --namespace $AB_NAMESPACE \
    --body '{"enablePaidForVCExpiration": true}' \
    > test.out 2>&1
eval_tap $? 347 'UpdateWalletConfig' test.out

#- 348 QueryWallets
eval_tap 0 348 'QueryWallets # SKIP deprecated' test.out

#- 349 BulkCredit
samples/cli/sample-apps Platform bulkCredit \
    --namespace $AB_NAMESPACE \
    --body '[{"creditRequest": {"amount": 61, "expireAt": "1995-07-02T00:00:00Z", "metadata": {"82lClByU8dw6VyVB": {}, "9z5fF7kfDVkOwKtB": {}, "I0to2y74tBXOf06j": {}}, "origin": "Twitch", "reason": "aTF5pSKXkxz2WQaf", "source": "IAP"}, "currencyCode": "89cyNaIVHDDgkLPb", "userIds": ["62CzAiX1F9GrrvAk", "781w1pVYvV3l1XPK", "Km9W8ytFcSizKgID"]}, {"creditRequest": {"amount": 56, "expireAt": "1983-01-25T00:00:00Z", "metadata": {"zVGhvl2LzoKnxi8q": {}, "TtrRKlDLMwcSgbJn": {}, "qPyETmJo1Ub2qPlS": {}}, "origin": "GooglePlay", "reason": "oplnt5n90nzl1tE3", "source": "REFUND"}, "currencyCode": "nWfQP3nJR54P4Jdm", "userIds": ["usCX08wYDhhyZtQw", "AcS7dAakYtfqv7Uu", "FvEgMGJKUgm07MaH"]}, {"creditRequest": {"amount": 12, "expireAt": "1977-03-16T00:00:00Z", "metadata": {"rtbGpMinHPPLet8C": {}, "IxFt4qD2sNdaXBWc": {}, "REJStFW9kLxd8cpE": {}}, "origin": "Nintendo", "reason": "c8qszJXtDMAGuiP7", "source": "REDEEM_CODE"}, "currencyCode": "3B9NlH9RDdxvlpkG", "userIds": ["UqJx04NeT3hXYvGb", "EyAJ1znKre5ov6OI", "0v3rWU3Mi1SIBO62"]}]' \
    > test.out 2>&1
eval_tap $? 349 'BulkCredit' test.out

#- 350 BulkDebit
samples/cli/sample-apps Platform bulkDebit \
    --namespace $AB_NAMESPACE \
    --body '[{"currencyCode": "7MCGqRDHZDoDmlhM", "request": {"allowOverdraft": false, "amount": 82, "balanceOrigin": "GooglePlay", "balanceSource": "EXPIRATION", "metadata": {"qYpjTnB2qsnGHsOI": {}, "msFGLpPDpWHjkbHc": {}, "LaCzsZ2hyXGLOOpm": {}}, "reason": "4gQwmJMIYCO51fpH"}, "userIds": ["8dm68djuMBQFUesI", "HUCIx4lPpyiavp2q", "Q6QBp59TtvfA7zpr"]}, {"currencyCode": "O6mXIAHwASf1hDli", "request": {"allowOverdraft": true, "amount": 72, "balanceOrigin": "Twitch", "balanceSource": "OTHER", "metadata": {"KxWVnjSNrBswvTfD": {}, "a0KF5nlowlrJu2TG": {}, "5SWAdzhyks0eHtbA": {}}, "reason": "wExx5zWJKvEIdHEy"}, "userIds": ["PA2YcNaXdzOXZgOQ", "TlmdZmtLwQWtuH6v", "xfQMAde1qXnDZgTw"]}, {"currencyCode": "jhNFAhKwrBBkgBGb", "request": {"allowOverdraft": true, "amount": 33, "balanceOrigin": "System", "balanceSource": "ORDER_REVOCATION", "metadata": {"g4phH6nk6tqFORaw": {}, "mpGfLEGcTDsLBAgX": {}, "EKCyfmXvfFE88q33": {}}, "reason": "jGyCGdnFPay2gjmX"}, "userIds": ["cVCnTe1ayCZSEt4L", "QbC3fDK3yRewmqIA", "4fV8HSPjgK7ypoqG"]}]' \
    > test.out 2>&1
eval_tap $? 350 'BulkDebit' test.out

#- 351 GetWallet
eval_tap 0 351 'GetWallet # SKIP deprecated' test.out

#- 352 SyncOrders
samples/cli/sample-apps Platform syncOrders \
    --nextEvaluatedKey 'wK1UzBW7oslS3NR5' \
    --end 'S2OMrOSR6IrKDqK3' \
    --start 'UF64vLIwsZTPoCKr' \
    > test.out 2>&1
eval_tap $? 352 'SyncOrders' test.out

#- 353 TestAdyenConfig
samples/cli/sample-apps Platform testAdyenConfig \
    --sandbox 'false' \
    --body '{"allowedPaymentMethods": ["LHEjdvfi2QenXCLy", "yhaSGfdhLKnkxoSR", "PStWfbNqQ3lQCsdn"], "apiKey": "CagQDvI30mlEijUL", "authoriseAsCapture": false, "blockedPaymentMethods": ["UYJV4WtEisz9a7vk", "YmpuQt4ggrgO2D0v", "q7Juabof2i96BwiG"], "clientKey": "6C5ENd8Jm8JBJaM8", "dropInSettings": "DhQXctkXxqf4mvGg", "liveEndpointUrlPrefix": "FNkC9jVbagJHw554", "merchantAccount": "TRIJ1RwRwmIwgkHY", "notificationHmacKey": "wlB2qdI6V4psAs5m", "notificationPassword": "GFs2y4FQhTWd25pU", "notificationUsername": "XleYHpwVwyyNDlZ9", "returnUrl": "kaHIpGJUhpEGqWif", "settings": "lXV8J29Ltl1B0J6a"}' \
    > test.out 2>&1
eval_tap $? 353 'TestAdyenConfig' test.out

#- 354 TestAliPayConfig
samples/cli/sample-apps Platform testAliPayConfig \
    --sandbox 'true' \
    --body '{"appId": "0G4I6dmIp4dYAs41", "privateKey": "lJjRDhTzM1c0jDvC", "publicKey": "2QCB6Mg7CjsiUi3X", "returnUrl": "sePiJL18nzLhqRZ4"}' \
    > test.out 2>&1
eval_tap $? 354 'TestAliPayConfig' test.out

#- 355 TestCheckoutConfig
samples/cli/sample-apps Platform testCheckoutConfig \
    --sandbox 'false' \
    --body '{"publicKey": "efi3l8pFZI3i6pyT", "secretKey": "EAIqubPSO41GfSEP"}' \
    > test.out 2>&1
eval_tap $? 355 'TestCheckoutConfig' test.out

#- 356 DebugMatchedPaymentMerchantConfig
samples/cli/sample-apps Platform debugMatchedPaymentMerchantConfig \
    --namespace 'kS30ZIdcwHpDrN0t' \
    --region '9cHBOurlNGiDLYpz' \
    > test.out 2>&1
eval_tap $? 356 'DebugMatchedPaymentMerchantConfig' test.out

#- 357 TestNeonPayConfig
samples/cli/sample-apps Platform testNeonPayConfig \
    --sandbox 'false' \
    --body '{"apiKey": "867hIsnYtEt7ATxa", "webhookSecretKey": "AHu8mXDQPt0fLhKu"}' \
    > test.out 2>&1
eval_tap $? 357 'TestNeonPayConfig' test.out

#- 358 TestPayPalConfig
samples/cli/sample-apps Platform testPayPalConfig \
    --sandbox 'true' \
    --body '{"clientID": "g1ZkSjL6JmCOMlSN", "clientSecret": "ISGMDnLAyuaWQMT6", "returnUrl": "7SPdrUYm91rnXhyU", "webHookId": "n706YobRSHZdIH01"}' \
    > test.out 2>&1
eval_tap $? 358 'TestPayPalConfig' test.out

#- 359 TestStripeConfig
samples/cli/sample-apps Platform testStripeConfig \
    --sandbox 'false' \
    --body '{"allowedPaymentMethodTypes": ["1u8CwZvO2An61Mi6", "hfViG1spZktWLqee", "hGYlLrrRcUjvr0Aw"], "publishableKey": "RmLhs420T2udABTk", "secretKey": "dqj6rJaBL1b7BPgK", "webhookSecret": "VD77taWJzDA9D5rp"}' \
    > test.out 2>&1
eval_tap $? 359 'TestStripeConfig' test.out

#- 360 TestWxPayConfig
samples/cli/sample-apps Platform testWxPayConfig \
    --body '{"appId": "r2BNXRNpIALrNSM2", "key": "vkr6RysDqYv2x5qf", "mchid": "7jgaUZbjBbiZiS7c", "returnUrl": "T4Cc0ChDDUji2Ikl"}' \
    > test.out 2>&1
eval_tap $? 360 'TestWxPayConfig' test.out

#- 361 TestXsollaConfig
samples/cli/sample-apps Platform testXsollaConfig \
    --body '{"apiKey": "qrF5ORiSuhmlASbp", "flowCompletionUrl": "u2S2Ymx6bUvryKYs", "merchantId": 96, "projectId": 75, "projectSecretKey": "dq5aNLwogm5rHJkc"}' \
    > test.out 2>&1
eval_tap $? 361 'TestXsollaConfig' test.out

#- 362 GetPaymentMerchantConfig1
samples/cli/sample-apps Platform getPaymentMerchantConfig1 \
    --id 'TbOxQpqxuHKsQKTQ' \
    > test.out 2>&1
eval_tap $? 362 'GetPaymentMerchantConfig1' test.out

#- 363 UpdateAdyenConfig
samples/cli/sample-apps Platform updateAdyenConfig \
    --id '2Jv7rojgB3R1W8rB' \
    --sandbox 'false' \
    --validate 'true' \
    --body '{"allowedPaymentMethods": ["O5OQ38Fn8JDB72LY", "sLp5cbQV3dcpQ9yQ", "sgXrFkuNna4WGk7d"], "apiKey": "N5IbvqEjdUTi54si", "authoriseAsCapture": false, "blockedPaymentMethods": ["j6BPfpuebAbgVwNg", "2TUkNEOumA9c5yE4", "PXPDdoOhPl1vekQh"], "clientKey": "hfOSdM5wydjteEdU", "dropInSettings": "qiSpnvqukygWjA6M", "liveEndpointUrlPrefix": "9GaFMCe38FBWUHpb", "merchantAccount": "k3PYDBN1zLw7hPSl", "notificationHmacKey": "W7Z4dbn3B0F14Nib", "notificationPassword": "u1isE3QoqIWt83rd", "notificationUsername": "RnIFREcsGTdtm92a", "returnUrl": "Wn7r82rg9e87FeV0", "settings": "mmNk7OYAk5fH1wEn"}' \
    > test.out 2>&1
eval_tap $? 363 'UpdateAdyenConfig' test.out

#- 364 TestAdyenConfigById
samples/cli/sample-apps Platform testAdyenConfigById \
    --id '8aKbNI4CbkC66oLx' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 364 'TestAdyenConfigById' test.out

#- 365 UpdateAliPayConfig
samples/cli/sample-apps Platform updateAliPayConfig \
    --id 'BltNZYUtwHtLG5mX' \
    --sandbox 'false' \
    --validate 'false' \
    --body '{"appId": "yEvRSiWHS7ymJqQv", "privateKey": "oh9nUwLwGG8bzQyA", "publicKey": "ttn1b4tE3TfbNnlQ", "returnUrl": "CJqp4d2r76Ll4gf9"}' \
    > test.out 2>&1
eval_tap $? 365 'UpdateAliPayConfig' test.out

#- 366 TestAliPayConfigById
samples/cli/sample-apps Platform testAliPayConfigById \
    --id 'ux9aTA3yG2rUR0QC' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 366 'TestAliPayConfigById' test.out

#- 367 UpdateCheckoutConfig
samples/cli/sample-apps Platform updateCheckoutConfig \
    --id 'YedmoghRbyVue337' \
    --sandbox 'true' \
    --validate 'false' \
    --body '{"publicKey": "0ZA0zbczLZO9CxYu", "secretKey": "2kFNL5jFyQNanPtO"}' \
    > test.out 2>&1
eval_tap $? 367 'UpdateCheckoutConfig' test.out

#- 368 TestCheckoutConfigById
samples/cli/sample-apps Platform testCheckoutConfigById \
    --id 'II5scOrcN0KfrUgv' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 368 'TestCheckoutConfigById' test.out

#- 369 UpdateNeonPayConfig
samples/cli/sample-apps Platform updateNeonPayConfig \
    --id 'oaDoJA62K9Tsf7ox' \
    --sandbox 'false' \
    --validate 'true' \
    --body '{"apiKey": "BE4FmR8BGUBWGvRI", "webhookSecretKey": "85fQaBj8KAI0Ihat"}' \
    > test.out 2>&1
eval_tap $? 369 'UpdateNeonPayConfig' test.out

#- 370 TestNeonPayConfigById
samples/cli/sample-apps Platform testNeonPayConfigById \
    --id 'Lakw4Bd8ukqQRyVc' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 370 'TestNeonPayConfigById' test.out

#- 371 UpdatePayPalConfig
samples/cli/sample-apps Platform updatePayPalConfig \
    --id 'A4x7uPclHzOZ05aU' \
    --sandbox 'false' \
    --validate 'false' \
    --body '{"clientID": "yjUTaLnNYlHBaRhZ", "clientSecret": "m8M2464EN3hSuiyw", "returnUrl": "UD4dHJLSzMQpjpOM", "webHookId": "pexVPIyTyMfcQc7m"}' \
    > test.out 2>&1
eval_tap $? 371 'UpdatePayPalConfig' test.out

#- 372 TestPayPalConfigById
samples/cli/sample-apps Platform testPayPalConfigById \
    --id 'P5UYyYYELv1WKOvI' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 372 'TestPayPalConfigById' test.out

#- 373 UpdateStripeConfig
samples/cli/sample-apps Platform updateStripeConfig \
    --id 'dGb1umdHiXI2O2MO' \
    --sandbox 'true' \
    --validate 'true' \
    --body '{"allowedPaymentMethodTypes": ["rBe4rszqcoBtSwrN", "1WcAUZM7C0w2XsrQ", "oO0yKnDGWEIUybyF"], "publishableKey": "0jdFn5yDfz8jkqn7", "secretKey": "iNU7NHB6YrEuA4ZV", "webhookSecret": "jTcbks6AwZpckdhL"}' \
    > test.out 2>&1
eval_tap $? 373 'UpdateStripeConfig' test.out

#- 374 TestStripeConfigById
samples/cli/sample-apps Platform testStripeConfigById \
    --id 'RhyfaE3wuVnZVzND' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 374 'TestStripeConfigById' test.out

#- 375 UpdateWxPayConfig
samples/cli/sample-apps Platform updateWxPayConfig \
    --id 'xXkC6hr288qVZXT1' \
    --validate 'false' \
    --body '{"appId": "BxwnkvHglKktUXuR", "key": "xE4UTm5OCG6OBw7r", "mchid": "vVFYxWPIafCgpTGB", "returnUrl": "qodoGHqU3S2vMtfR"}' \
    > test.out 2>&1
eval_tap $? 375 'UpdateWxPayConfig' test.out

#- 376 UpdateWxPayConfigCert
samples/cli/sample-apps Platform updateWxPayConfigCert \
    --id '73Oc1cYMB4ANyTAw' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 376 'UpdateWxPayConfigCert' test.out

#- 377 TestWxPayConfigById
samples/cli/sample-apps Platform testWxPayConfigById \
    --id '1BXwgrd1ijtwG6OG' \
    > test.out 2>&1
eval_tap $? 377 'TestWxPayConfigById' test.out

#- 378 UpdateXsollaConfig
samples/cli/sample-apps Platform updateXsollaConfig \
    --id 'u3GDwJHME4srBWAH' \
    --validate 'true' \
    --body '{"apiKey": "vJv2T6yNsxYofYMI", "flowCompletionUrl": "iVdruUPKlwkm3kck", "merchantId": 42, "projectId": 11, "projectSecretKey": "3wPS7N9pRyE78Mns"}' \
    > test.out 2>&1
eval_tap $? 378 'UpdateXsollaConfig' test.out

#- 379 TestXsollaConfigById
samples/cli/sample-apps Platform testXsollaConfigById \
    --id 'pZJbDReZF80DlE0f' \
    > test.out 2>&1
eval_tap $? 379 'TestXsollaConfigById' test.out

#- 380 UpdateXsollaUIConfig
samples/cli/sample-apps Platform updateXsollaUIConfig \
    --id 's7UxFChuaulR8eqT' \
    --body '{"device": "DESKTOP", "showCloseButton": true, "size": "LARGE", "theme": "DEFAULT"}' \
    > test.out 2>&1
eval_tap $? 380 'UpdateXsollaUIConfig' test.out

#- 381 QueryPaymentProviderConfig
samples/cli/sample-apps Platform queryPaymentProviderConfig \
    --limit '38' \
    --namespace '8K37jzckYljIsMjw' \
    --offset '45' \
    --region '13xX9tABHCD9V02w' \
    > test.out 2>&1
eval_tap $? 381 'QueryPaymentProviderConfig' test.out

#- 382 CreatePaymentProviderConfig
samples/cli/sample-apps Platform createPaymentProviderConfig \
    --body '{"aggregate": "STRIPE", "namespace": "BBQUIQwSSEiQES3k", "region": "nPbPvUvmpy8qnGnn", "sandboxTaxJarApiToken": "dhuRjHPI6x1aprjg", "specials": ["CHECKOUT", "NEONPAY", "CHECKOUT"], "taxJarApiToken": "qXcjQBjbwpIhZfLf", "taxJarEnabled": false, "useGlobalTaxJarApiToken": false}' \
    > test.out 2>&1
eval_tap $? 382 'CreatePaymentProviderConfig' test.out

#- 383 GetAggregatePaymentProviders
samples/cli/sample-apps Platform getAggregatePaymentProviders \
    > test.out 2>&1
eval_tap $? 383 'GetAggregatePaymentProviders' test.out

#- 384 DebugMatchedPaymentProviderConfig
samples/cli/sample-apps Platform debugMatchedPaymentProviderConfig \
    --namespace 'pOJ3JWRA6E8hqvBw' \
    --region 'w6pZSq4hrs28iN6p' \
    > test.out 2>&1
eval_tap $? 384 'DebugMatchedPaymentProviderConfig' test.out

#- 385 GetSpecialPaymentProviders
samples/cli/sample-apps Platform getSpecialPaymentProviders \
    > test.out 2>&1
eval_tap $? 385 'GetSpecialPaymentProviders' test.out

#- 386 UpdatePaymentProviderConfig
samples/cli/sample-apps Platform updatePaymentProviderConfig \
    --id 'tD5qI7jNiIrubRGN' \
    --body '{"aggregate": "CHECKOUT", "namespace": "x9SZakqDNUhxsxnz", "region": "upRXae7GfO73D5jD", "sandboxTaxJarApiToken": "UBL1wHYT2P191YM3", "specials": ["XSOLLA", "XSOLLA", "ADYEN"], "taxJarApiToken": "dD4sOAVFlTMD2zxv", "taxJarEnabled": true, "useGlobalTaxJarApiToken": true}' \
    > test.out 2>&1
eval_tap $? 386 'UpdatePaymentProviderConfig' test.out

#- 387 DeletePaymentProviderConfig
samples/cli/sample-apps Platform deletePaymentProviderConfig \
    --id '1TZm3cDxCTAJiNXo' \
    > test.out 2>&1
eval_tap $? 387 'DeletePaymentProviderConfig' test.out

#- 388 GetPaymentTaxConfig
samples/cli/sample-apps Platform getPaymentTaxConfig \
    > test.out 2>&1
eval_tap $? 388 'GetPaymentTaxConfig' test.out

#- 389 UpdatePaymentTaxConfig
samples/cli/sample-apps Platform updatePaymentTaxConfig \
    --body '{"sandboxTaxJarApiToken": "kSuLCiFV2idgDWXX", "taxJarApiToken": "hxzX4oAE1HTJfRqy", "taxJarEnabled": false, "taxJarProductCodesMapping": {"irgs4VD31g80szx3": "OhPLypMmpwMTx7Wd", "mU55gyxydPq3TSYM": "VnIIdCGPg0WfIRop", "METZ7Uo6yila508C": "KvAtaaa1RknZNkyC"}}' \
    > test.out 2>&1
eval_tap $? 389 'UpdatePaymentTaxConfig' test.out

#- 390 SyncPaymentOrders
samples/cli/sample-apps Platform syncPaymentOrders \
    --nextEvaluatedKey 'FuAygEpXabxZyRqk' \
    --end 'UPvXwNKacX920f1L' \
    --start 'BwgAihjGRIvaMgny' \
    > test.out 2>&1
eval_tap $? 390 'SyncPaymentOrders' test.out

#- 391 PublicGetRootCategories
samples/cli/sample-apps Platform publicGetRootCategories \
    --namespace $AB_NAMESPACE \
    --language 'iFbmtUKWaQMBXVko' \
    --storeId 't0fiPj4qKEHhDQCS' \
    > test.out 2>&1
eval_tap $? 391 'PublicGetRootCategories' test.out

#- 392 DownloadCategories
samples/cli/sample-apps Platform downloadCategories \
    --namespace $AB_NAMESPACE \
    --language 'sC1ugaZNDSeLA4OW' \
    --storeId 'aZRPbTeMu21uBBG3' \
    > test.out 2>&1
eval_tap $? 392 'DownloadCategories' test.out

#- 393 PublicGetCategory
samples/cli/sample-apps Platform publicGetCategory \
    --categoryPath 'KCadEK6mpHmuGycG' \
    --namespace $AB_NAMESPACE \
    --language '56ro804nwE1rWQTc' \
    --storeId 'XmcaS7Xby9jC1puB' \
    > test.out 2>&1
eval_tap $? 393 'PublicGetCategory' test.out

#- 394 PublicGetChildCategories
samples/cli/sample-apps Platform publicGetChildCategories \
    --categoryPath '2NsgDyp3ZxSBZkuf' \
    --namespace $AB_NAMESPACE \
    --language 'X5oaDDEWJKEoWQsU' \
    --storeId '08B92lkle9adDvN5' \
    > test.out 2>&1
eval_tap $? 394 'PublicGetChildCategories' test.out

#- 395 PublicGetDescendantCategories
samples/cli/sample-apps Platform publicGetDescendantCategories \
    --categoryPath 'OVvgFELpZY5E7dZq' \
    --namespace $AB_NAMESPACE \
    --language '0b2h46ivNv6X4jnw' \
    --storeId 'kFxgMaIhDGmMI2zz' \
    > test.out 2>&1
eval_tap $? 395 'PublicGetDescendantCategories' test.out

#- 396 PublicListCurrencies
samples/cli/sample-apps Platform publicListCurrencies \
    --namespace $AB_NAMESPACE \
    --currencyType 'VIRTUAL' \
    > test.out 2>&1
eval_tap $? 396 'PublicListCurrencies' test.out

#- 397 GeDLCDurableRewardShortMap
samples/cli/sample-apps Platform geDLCDurableRewardShortMap \
    --namespace $AB_NAMESPACE \
    --dlcType 'PSN' \
    > test.out 2>&1
eval_tap $? 397 'GeDLCDurableRewardShortMap' test.out

#- 398 GetAppleConfigVersion
samples/cli/sample-apps Platform getAppleConfigVersion \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 398 'GetAppleConfigVersion' test.out

#- 399 GetIAPItemMapping
samples/cli/sample-apps Platform getIAPItemMapping \
    --namespace $AB_NAMESPACE \
    --platform 'APPLE' \
    > test.out 2>&1
eval_tap $? 399 'GetIAPItemMapping' test.out

#- 400 PublicGetItemByAppId
samples/cli/sample-apps Platform publicGetItemByAppId \
    --namespace $AB_NAMESPACE \
    --language 'MexT1BOfZ5sh9fD5' \
    --region 'FcATo0PzMz8Qh1VQ' \
    --storeId 'Rt8K7cd7Lg1dtgZj' \
    --appId 'SB0x5f5k2hjzdlsi' \
    > test.out 2>&1
eval_tap $? 400 'PublicGetItemByAppId' test.out

#- 401 PublicQueryItems
samples/cli/sample-apps Platform publicQueryItems \
    --namespace $AB_NAMESPACE \
    --appType 'DLC' \
    --autoCalcEstimatedPrice 'true' \
    --baseAppId '3dTfo5mjgsQBvqaW' \
    --categoryPath 'WuVwXe6y5XEBamHr' \
    --features 'FeI1QVg20XXVXCAC' \
    --includeSubCategoryItem 'true' \
    --itemType 'APP' \
    --language 'VQR09vWJ2RC7o8wW' \
    --limit '42' \
    --offset '18' \
    --region 'qSwKQnUNOUFDmTeZ' \
    --sortBy '["updatedAt", "name", "displayOrder:asc"]' \
    --storeId 'drktwMR4s5ycEikF' \
    --tags 'BubtUXkxNlOg3UDx' \
    > test.out 2>&1
eval_tap $? 401 'PublicQueryItems' test.out

#- 402 PublicGetItemBySku
samples/cli/sample-apps Platform publicGetItemBySku \
    --namespace $AB_NAMESPACE \
    --autoCalcEstimatedPrice 'true' \
    --language '2kFKLDU4N33ErAGO' \
    --region 'La9rRPhaeDXEYdc9' \
    --storeId 'kBa4wC4YvzdFD0Vq' \
    --sku 'lZEk3fvdvWMoM79T' \
    > test.out 2>&1
eval_tap $? 402 'PublicGetItemBySku' test.out

#- 403 PublicGetEstimatedPrice
samples/cli/sample-apps Platform publicGetEstimatedPrice \
    --namespace $AB_NAMESPACE \
    --region 'guLiKwsu1V5bDfjX' \
    --storeId '27fUoZOCTJWQWytZ' \
    --itemIds 'ewTcRi5bm8Vrru97' \
    > test.out 2>&1
eval_tap $? 403 'PublicGetEstimatedPrice' test.out

#- 404 PublicBulkGetItems
samples/cli/sample-apps Platform publicBulkGetItems \
    --namespace $AB_NAMESPACE \
    --autoCalcEstimatedPrice 'true' \
    --language 'BpitNAqpXobk7TnQ' \
    --region '0kvokeCzTvDIa5mR' \
    --storeId 'jRUR2u1ak7M1GYpu' \
    --itemIds 'HnRZXFbJsUFBAKXv' \
    > test.out 2>&1
eval_tap $? 404 'PublicBulkGetItems' test.out

#- 405 PublicValidateItemPurchaseCondition
samples/cli/sample-apps Platform publicValidateItemPurchaseCondition \
    --namespace $AB_NAMESPACE \
    --body '{"itemIds": ["AL8pYfYXBLjltKnb", "sZGL5LERwr4uCvru", "aada1VNFLa2zJug1"]}' \
    > test.out 2>&1
eval_tap $? 405 'PublicValidateItemPurchaseCondition' test.out

#- 406 PublicSearchItems
samples/cli/sample-apps Platform publicSearchItems \
    --namespace $AB_NAMESPACE \
    --autoCalcEstimatedPrice 'false' \
    --itemType 'LOOTBOX' \
    --limit '95' \
    --offset '60' \
    --region 'pLYBTcmfYuW3kEy6' \
    --storeId 'DExmAZTlPrk952nk' \
    --keyword 'tDizn5tEAHls89Fy' \
    --language 'L8wdl9bbtpER04XJ' \
    > test.out 2>&1
eval_tap $? 406 'PublicSearchItems' test.out

#- 407 PublicGetApp
samples/cli/sample-apps Platform publicGetApp \
    --itemId '8ZNRRluv0p2tq7bV' \
    --namespace $AB_NAMESPACE \
    --language 'HAKc4HHYbT00k6OL' \
    --region 'rx1ksv7tQxoLvVPz' \
    --storeId 'Dloa42wHXr0LS4dG' \
    > test.out 2>&1
eval_tap $? 407 'PublicGetApp' test.out

#- 408 PublicGetItemDynamicData
samples/cli/sample-apps Platform publicGetItemDynamicData \
    --itemId 'DaA8wJwsX22mOs8s' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 408 'PublicGetItemDynamicData' test.out

#- 409 PublicGetItem
samples/cli/sample-apps Platform publicGetItem \
    --itemId 'poTJ8aNzePU4Hnta' \
    --namespace $AB_NAMESPACE \
    --autoCalcEstimatedPrice 'true' \
    --language 'DCtYn2hGC4xHgTNa' \
    --populateBundle 'false' \
    --region '30fPvlwFHaTdT1ij' \
    --storeId 'xPHgPQO6xOIHTWpB' \
    > test.out 2>&1
eval_tap $? 409 'PublicGetItem' test.out

#- 410 GetPaymentCustomization
eval_tap 0 410 'GetPaymentCustomization # SKIP deprecated' test.out

#- 411 PublicGetPaymentUrl
samples/cli/sample-apps Platform publicGetPaymentUrl \
    --namespace $AB_NAMESPACE \
    --body '{"neonPayConfig": {"cancelUrl": "E3ghlepYWUMaQY1K", "successUrl": "aY1bz7Re2ELdBM3r"}, "paymentOrderNo": "uinBqYEJIYU7gG7j", "paymentProvider": "WXPAY", "returnUrl": "TM27ySJIPFdGaCk6", "ui": "doXp9utxoTmNY74W", "zipCode": "Z72lfATvjqxxaGYs"}' \
    > test.out 2>&1
eval_tap $? 411 'PublicGetPaymentUrl' test.out

#- 412 PublicGetPaymentMethods
samples/cli/sample-apps Platform publicGetPaymentMethods \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'xt07AKZEbxSvE912' \
    > test.out 2>&1
eval_tap $? 412 'PublicGetPaymentMethods' test.out

#- 413 PublicGetUnpaidPaymentOrder
samples/cli/sample-apps Platform publicGetUnpaidPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'l97swfvPtdm4GKZZ' \
    > test.out 2>&1
eval_tap $? 413 'PublicGetUnpaidPaymentOrder' test.out

#- 414 Pay
samples/cli/sample-apps Platform pay \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'f2LNmyKemq3kOPO2' \
    --paymentProvider 'ADYEN' \
    --zipCode 'xm2Db24g9dMLf1hq' \
    --body '{"token": "H1U6OGvekm69ERud"}' \
    > test.out 2>&1
eval_tap $? 414 'Pay' test.out

#- 415 PublicCheckPaymentOrderPaidStatus
samples/cli/sample-apps Platform publicCheckPaymentOrderPaidStatus \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'nnmefU3aKhYV7qum' \
    > test.out 2>&1
eval_tap $? 415 'PublicCheckPaymentOrderPaidStatus' test.out

#- 416 GetPaymentPublicConfig
samples/cli/sample-apps Platform getPaymentPublicConfig \
    --namespace $AB_NAMESPACE \
    --sandbox 'false' \
    --paymentProvider 'CHECKOUT' \
    --region '3NNIyGWsW4XHrHRT' \
    > test.out 2>&1
eval_tap $? 416 'GetPaymentPublicConfig' test.out

#- 417 PublicGetQRCode
samples/cli/sample-apps Platform publicGetQRCode \
    --namespace $AB_NAMESPACE \
    --code 'IIwfpW0gZSyz0Blj' \
    > test.out 2>&1
eval_tap $? 417 'PublicGetQRCode' test.out

#- 418 PublicNormalizePaymentReturnUrl
samples/cli/sample-apps Platform publicNormalizePaymentReturnUrl \
    --namespace $AB_NAMESPACE \
    --payerID 'NzDH1Vopy0gxEr7n' \
    --foreinginvoice 'lVaeVFGA7ah3UftP' \
    --invoiceId 'f7j0CrWBnKELUa5H' \
    --payload 'xVmIl1JNZ4jasJKT' \
    --redirectResult 'OxvGwxq5kmDf1xNZ' \
    --resultCode 'kgUgC5UnJoNfDj7J' \
    --sessionId 'ZKjqQAtJLrWxRFXz' \
    --status '9C1J06WrP0hcKwmV' \
    --token 'SqthcPvFOIKug4Ib' \
    --type 'cxV93TA6hQVcgTSR' \
    --userId 'dsrx2IMxGUEJy2Mx' \
    --orderNo '3dpcRgBCOq0NP9K7' \
    --paymentOrderNo '0kdOK8dQ6J85KyzV' \
    --paymentProvider 'WXPAY' \
    --returnUrl '3xVv8DJMiRgepFfa' \
    > test.out 2>&1
eval_tap $? 418 'PublicNormalizePaymentReturnUrl' test.out

#- 419 GetPaymentTaxValue
samples/cli/sample-apps Platform getPaymentTaxValue \
    --namespace $AB_NAMESPACE \
    --zipCode 'jaQWlsuEAtn6YBGD' \
    --paymentOrderNo 'FeqWkOuuZCxcqx9g' \
    --paymentProvider 'XSOLLA' \
    > test.out 2>&1
eval_tap $? 419 'GetPaymentTaxValue' test.out

#- 420 GetRewardByCode
samples/cli/sample-apps Platform getRewardByCode \
    --namespace $AB_NAMESPACE \
    --rewardCode 'g6T0LbwG48F3Zr1E' \
    > test.out 2>&1
eval_tap $? 420 'GetRewardByCode' test.out

#- 421 QueryRewards1
samples/cli/sample-apps Platform queryRewards1 \
    --namespace $AB_NAMESPACE \
    --eventTopic 'RCzf0LZTWR9O7IYv' \
    --limit '99' \
    --offset '68' \
    --sortBy '["namespace:asc", "namespace:desc", "rewardCode"]' \
    > test.out 2>&1
eval_tap $? 421 'QueryRewards1' test.out

#- 422 GetReward1
samples/cli/sample-apps Platform getReward1 \
    --namespace $AB_NAMESPACE \
    --rewardId 'NKRcFqzH2NjcMRZO' \
    > test.out 2>&1
eval_tap $? 422 'GetReward1' test.out

#- 423 PublicListStores
samples/cli/sample-apps Platform publicListStores \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 423 'PublicListStores' test.out

#- 424 PublicExistsAnyMyActiveEntitlement
samples/cli/sample-apps Platform publicExistsAnyMyActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --appIds '["UIBwCgwsSRFYnQX9", "eHykgMVQVJHqMCqu", "ZNjr2wVe4rFpxp2I"]' \
    --itemIds '["lKeDBn9qRODRCo0W", "8E5uYftTlsfNGfaK", "28IDTpJS60nonziH"]' \
    --skus '["AnoZIhhw0TAOOktp", "gNQfWHo4hLuCZ7T5", "6BJeUo3yl0LrofxY"]' \
    > test.out 2>&1
eval_tap $? 424 'PublicExistsAnyMyActiveEntitlement' test.out

#- 425 PublicGetMyAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform publicGetMyAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --appId 'U6MOVv1YznWVUgk9' \
    > test.out 2>&1
eval_tap $? 425 'PublicGetMyAppEntitlementOwnershipByAppId' test.out

#- 426 PublicGetMyEntitlementOwnershipByItemId
samples/cli/sample-apps Platform publicGetMyEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --entitlementClazz 'ENTITLEMENT' \
    --itemId 'zozt6Hb3OZDWpFko' \
    > test.out 2>&1
eval_tap $? 426 'PublicGetMyEntitlementOwnershipByItemId' test.out

#- 427 PublicGetMyEntitlementOwnershipBySku
samples/cli/sample-apps Platform publicGetMyEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --entitlementClazz 'APP' \
    --sku 'HZ1tZB8OUYOlUq9I' \
    > test.out 2>&1
eval_tap $? 427 'PublicGetMyEntitlementOwnershipBySku' test.out

#- 428 PublicGetEntitlementOwnershipToken
samples/cli/sample-apps Platform publicGetEntitlementOwnershipToken \
    --namespace $AB_NAMESPACE \
    --appIds '["Px7G6KrugCr2ZGxr", "mSUMbeSghaa6EDPe", "lGlkDGZhdAH4khCo"]' \
    --itemIds '["yrDNcu6PDLu1watW", "WkCtGby2jSGmLsx6", "ub00xGCT0utXqMn7"]' \
    --skus '["AQngeKgrNpeNtKJl", "dejWmyAu2idMIk8u", "YWorbpOgvoeeVBKk"]' \
    > test.out 2>&1
eval_tap $? 428 'PublicGetEntitlementOwnershipToken' test.out

#- 429 SyncTwitchDropsEntitlement
samples/cli/sample-apps Platform syncTwitchDropsEntitlement \
    --namespace $AB_NAMESPACE \
    --body '{"gameId": "LvaBGfpQ5hYbPalR", "language": "Mo_Mk", "region": "74goNyqvLA4W7I97"}' \
    > test.out 2>&1
eval_tap $? 429 'SyncTwitchDropsEntitlement' test.out

#- 430 PublicGetMyWallet
samples/cli/sample-apps Platform publicGetMyWallet \
    --currencyCode 'lZaQ9MIG2Y0cuIQX' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 430 'PublicGetMyWallet' test.out

#- 431 SyncEpicGameDLC
samples/cli/sample-apps Platform syncEpicGameDLC \
    --namespace $AB_NAMESPACE \
    --userId 'RV2m81hMaTXH1yJK' \
    --body '{"epicGamesJwtToken": "7mj83zLfynsILmrY"}' \
    > test.out 2>&1
eval_tap $? 431 'SyncEpicGameDLC' test.out

#- 432 SyncOculusDLC
samples/cli/sample-apps Platform syncOculusDLC \
    --namespace $AB_NAMESPACE \
    --userId 'CBCq9Y3yrVfFNPHk' \
    > test.out 2>&1
eval_tap $? 432 'SyncOculusDLC' test.out

#- 433 PublicSyncPsnDlcInventory
samples/cli/sample-apps Platform publicSyncPsnDlcInventory \
    --namespace $AB_NAMESPACE \
    --userId 'JMcIKNwCOSoXYLYM' \
    --body '{"serviceLabel": 15}' \
    > test.out 2>&1
eval_tap $? 433 'PublicSyncPsnDlcInventory' test.out

#- 434 PublicSyncPsnDlcInventoryWithMultipleServiceLabels
samples/cli/sample-apps Platform publicSyncPsnDlcInventoryWithMultipleServiceLabels \
    --namespace $AB_NAMESPACE \
    --userId 'zroSaofDlJgMSK9y' \
    --body '{"serviceLabels": [18, 84, 61]}' \
    > test.out 2>&1
eval_tap $? 434 'PublicSyncPsnDlcInventoryWithMultipleServiceLabels' test.out

#- 435 SyncSteamDLC
samples/cli/sample-apps Platform syncSteamDLC \
    --namespace $AB_NAMESPACE \
    --userId 'zpwhXPKG29c8szJq' \
    --body '{"appId": "SomEDMtqmUNVr3XX", "steamId": "rAlxEjBiMaKkkU79"}' \
    > test.out 2>&1
eval_tap $? 435 'SyncSteamDLC' test.out

#- 436 SyncXboxDLC
samples/cli/sample-apps Platform syncXboxDLC \
    --namespace $AB_NAMESPACE \
    --userId 'w3hofzVV10UPgLu7' \
    --body '{"xstsToken": "QhLVQTfSSGTUeJAK"}' \
    > test.out 2>&1
eval_tap $? 436 'SyncXboxDLC' test.out

#- 437 PublicQueryUserEntitlements
samples/cli/sample-apps Platform publicQueryUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'Bl72q1mhiRpcFhn0' \
    --appType 'GAME' \
    --entitlementClazz 'MEDIA' \
    --entitlementName 'x934xNhKsl7q9pGW' \
    --features '["Hza7yEHFzNSzJihF", "lJbsiZKJm5Gdf4ft", "FJ9OSIWuyTShlctx"]' \
    --itemId '["V33beTcAQ1kIt82m", "hVOuZnRTKn6bHeGr", "dEv0EFoSDMsWimgI"]' \
    --limit '66' \
    --offset '19' \
    > test.out 2>&1
eval_tap $? 437 'PublicQueryUserEntitlements' test.out

#- 438 PublicGetUserAppEntitlementByAppId
samples/cli/sample-apps Platform publicGetUserAppEntitlementByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'k8sEFA2GqglXxeuR' \
    --appId 'WZYERnFrk9JZhjBB' \
    > test.out 2>&1
eval_tap $? 438 'PublicGetUserAppEntitlementByAppId' test.out

#- 439 PublicQueryUserEntitlementsByAppType
samples/cli/sample-apps Platform publicQueryUserEntitlementsByAppType \
    --namespace $AB_NAMESPACE \
    --userId '1U6LbpLPGuvHXowo' \
    --limit '59' \
    --offset '54' \
    --appType 'DEMO' \
    > test.out 2>&1
eval_tap $? 439 'PublicQueryUserEntitlementsByAppType' test.out

#- 440 PublicGetUserEntitlementsByIds
samples/cli/sample-apps Platform publicGetUserEntitlementsByIds \
    --namespace $AB_NAMESPACE \
    --userId 'cZ7mGx6m86jiGqNf' \
    --availablePlatformOnly 'true' \
    --ids '["pWtwcXVSIVgj4nYn", "4rZG2MMoUfRpYrkk", "pR4th7ATcof5nrsp"]' \
    > test.out 2>&1
eval_tap $? 440 'PublicGetUserEntitlementsByIds' test.out

#- 441 PublicGetUserEntitlementByItemId
eval_tap 0 441 'PublicGetUserEntitlementByItemId # SKIP deprecated' test.out

#- 442 PublicGetUserEntitlementBySku
eval_tap 0 442 'PublicGetUserEntitlementBySku # SKIP deprecated' test.out

#- 443 PublicUserEntitlementHistory
samples/cli/sample-apps Platform publicUserEntitlementHistory \
    --namespace $AB_NAMESPACE \
    --userId 'jzuZ6pOIRrfXyfLb' \
    --endDate 'dToTJfrCkoWHP3pJ' \
    --entitlementClazz 'ENTITLEMENT' \
    --limit '87' \
    --offset '59' \
    --startDate 'Mou8wz8rQljGhCTw' \
    > test.out 2>&1
eval_tap $? 443 'PublicUserEntitlementHistory' test.out

#- 444 PublicExistsAnyUserActiveEntitlement
samples/cli/sample-apps Platform publicExistsAnyUserActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'gqtViB0mTb9VUpFc' \
    --appIds '["iAu4nCk0B8Bko4e2", "8NiXAmeEmNhn9uvw", "waocHcgMF5fGWVTR"]' \
    --itemIds '["13wiLlXKHLZ03LS1", "srF8xjw1sYrk7mx5", "6eHHKcAh2gNloKdJ"]' \
    --skus '["SPayhJFdWUmmFEtk", "d1pdwZ1EkPQXMo3Y", "QNkbJgzBJvkYn7oM"]' \
    > test.out 2>&1
eval_tap $? 444 'PublicExistsAnyUserActiveEntitlement' test.out

#- 445 PublicGetUserAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform publicGetUserAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'xpl0I9HFjbrGKAEf' \
    --appId 'p3mNdAK1j8qsBhqn' \
    > test.out 2>&1
eval_tap $? 445 'PublicGetUserAppEntitlementOwnershipByAppId' test.out

#- 446 PublicGetUserEntitlementOwnershipByItemId
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'u7X4c1hcTWPilCJn' \
    --entitlementClazz 'SUBSCRIPTION' \
    --itemId '57CrqzxPwlhQfEcP' \
    > test.out 2>&1
eval_tap $? 446 'PublicGetUserEntitlementOwnershipByItemId' test.out

#- 447 PublicGetUserEntitlementOwnershipByItemIds
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'rcvUh6MJpRIHuLse' \
    --ids '["5828qQVPbLgIwDoE", "N1TQeZxAToJeug0N", "7V5Z927lZv7Yjwp5"]' \
    > test.out 2>&1
eval_tap $? 447 'PublicGetUserEntitlementOwnershipByItemIds' test.out

#- 448 PublicGetUserEntitlementOwnershipBySku
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --userId 't6mka0voQoSfQqRJ' \
    --entitlementClazz 'CODE' \
    --sku 'YkOSYqW4Ezmdl7e3' \
    > test.out 2>&1
eval_tap $? 448 'PublicGetUserEntitlementOwnershipBySku' test.out

#- 449 PublicGetUserEntitlement
samples/cli/sample-apps Platform publicGetUserEntitlement \
    --entitlementId 'adGR0UQHBM1AibFY' \
    --namespace $AB_NAMESPACE \
    --userId '4FUFHwoBXzsX4wMk' \
    > test.out 2>&1
eval_tap $? 449 'PublicGetUserEntitlement' test.out

#- 450 PublicConsumeUserEntitlement
samples/cli/sample-apps Platform publicConsumeUserEntitlement \
    --entitlementId 'dqP0GDaaTaXgGg76' \
    --namespace $AB_NAMESPACE \
    --userId 'SATMPKrqmtIB86jA' \
    --body '{"metadata": {"operationSource": "INVENTORY"}, "options": ["j4xEt9oJxTlFg04R", "Bk5o9Fi77xoQ5LFD", "q9XxiSzbfo1uCtsh"], "requestId": "aQWNuyGaxx5FJd8D", "useCount": 8}' \
    > test.out 2>&1
eval_tap $? 450 'PublicConsumeUserEntitlement' test.out

#- 451 PublicSellUserEntitlement
samples/cli/sample-apps Platform publicSellUserEntitlement \
    --entitlementId 'IcTJOcx8XZUOms7n' \
    --namespace $AB_NAMESPACE \
    --userId 'Qg0gJWGtK042sAqr' \
    --body '{"requestId": "vwn6YdJmgATIkuxv", "useCount": 99}' \
    > test.out 2>&1
eval_tap $? 451 'PublicSellUserEntitlement' test.out

#- 452 PublicSplitUserEntitlement
samples/cli/sample-apps Platform publicSplitUserEntitlement \
    --entitlementId 'Np8N7smqN9GQ0Ug8' \
    --namespace $AB_NAMESPACE \
    --userId '5W2PJzz1VPT3x4OP' \
    --body '{"metadata": {"operationSource": "INVENTORY"}, "useCount": 48}' \
    > test.out 2>&1
eval_tap $? 452 'PublicSplitUserEntitlement' test.out

#- 453 PublicTransferUserEntitlement
samples/cli/sample-apps Platform publicTransferUserEntitlement \
    --entitlementId 'akDLS9mawJktcTIv' \
    --namespace $AB_NAMESPACE \
    --userId 'QdBhoCCi3oLqXrdg' \
    --body '{"entitlementId": "2JuviNk9uoxrMD3T", "metadata": {"operationSource": "INVENTORY"}, "useCount": 94}' \
    > test.out 2>&1
eval_tap $? 453 'PublicTransferUserEntitlement' test.out

#- 454 PublicRedeemCode
samples/cli/sample-apps Platform publicRedeemCode \
    --namespace $AB_NAMESPACE \
    --userId 'ZZNGy26kKfSw6ufM' \
    --body '{"code": "r3xy08f6m5fS7gwa", "language": "iZI", "region": "5M2pOkPxMCc9i29O"}' \
    > test.out 2>&1
eval_tap $? 454 'PublicRedeemCode' test.out

#- 455 PublicFulfillAppleIAPItem
samples/cli/sample-apps Platform publicFulfillAppleIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'QxEVtPQzvCmm4DGG' \
    --body '{"excludeOldTransactions": true, "language": "Uk-869", "productId": "7MonlGH84JPbjzNA", "receiptData": "XtoV0v0K77M7Msw2", "region": "OIoJcGbSlvBLcs6A", "transactionId": "S4BulKF1fguh5sfx"}' \
    > test.out 2>&1
eval_tap $? 455 'PublicFulfillAppleIAPItem' test.out

#- 456 SyncEpicGamesInventory
samples/cli/sample-apps Platform syncEpicGamesInventory \
    --namespace $AB_NAMESPACE \
    --userId 'eUX0RlYBsqnYPSpd' \
    --body '{"epicGamesJwtToken": "9oSEsM6i6ITtwJiA"}' \
    > test.out 2>&1
eval_tap $? 456 'SyncEpicGamesInventory' test.out

#- 457 PublicFulfillGoogleIAPItem
samples/cli/sample-apps Platform publicFulfillGoogleIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'aC52TsYjJO6NuX9H' \
    --body '{"autoAck": false, "autoConsume": false, "language": "pkCq", "orderId": "eW8zrTMLfVtZWJ9U", "packageName": "furfif9yNSSLTBVo", "productId": "8cEQGWRi3WK7iVLr", "purchaseTime": 64, "purchaseToken": "X11jxbjdUvPyIuhq", "region": "C5YLey0IylPIXMlK", "subscriptionPurchase": false}' \
    > test.out 2>&1
eval_tap $? 457 'PublicFulfillGoogleIAPItem' test.out

#- 458 SyncOculusConsumableEntitlements
samples/cli/sample-apps Platform syncOculusConsumableEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'i87port97Ty97Ges' \
    > test.out 2>&1
eval_tap $? 458 'SyncOculusConsumableEntitlements' test.out

#- 459 PublicReconcilePlayStationStore
samples/cli/sample-apps Platform publicReconcilePlayStationStore \
    --namespace $AB_NAMESPACE \
    --userId 'z7JO0daqgX60Khsw' \
    --body '{"currencyCode": "VCE8pcvez1BhMtz7", "price": 0.48221321433059905, "productId": "l23XYUEYJfak0hVF", "serviceLabel": 67}' \
    > test.out 2>&1
eval_tap $? 459 'PublicReconcilePlayStationStore' test.out

#- 460 PublicReconcilePlayStationStoreWithMultipleServiceLabels
samples/cli/sample-apps Platform publicReconcilePlayStationStoreWithMultipleServiceLabels \
    --namespace $AB_NAMESPACE \
    --userId 'v0j3R6ZwnwhSnOm2' \
    --body '{"currencyCode": "cKI4L33AgvK7kCyB", "price": 0.9315510227334797, "productId": "fJ4m6SydsFQZFUS6", "serviceLabels": [27, 44, 53]}' \
    > test.out 2>&1
eval_tap $? 460 'PublicReconcilePlayStationStoreWithMultipleServiceLabels' test.out

#- 461 SyncSteamInventory
samples/cli/sample-apps Platform syncSteamInventory \
    --namespace $AB_NAMESPACE \
    --userId 'Gy5BfuDVnAPBFzWl' \
    --body '{"appId": "mBoFSHGVenWCJjR9", "currencyCode": "HQdpjY35Ti6SAfIL", "language": "qMbh_480", "price": 0.09880805902399492, "productId": "VQJMRMZA8ch1xU7Y", "region": "ygddiSzHC4cltF0K", "steamId": "3stCQeR3pasZSiqI"}' \
    > test.out 2>&1
eval_tap $? 461 'SyncSteamInventory' test.out

#- 462 SyncSteamAbnormalTransaction
samples/cli/sample-apps Platform syncSteamAbnormalTransaction \
    --namespace $AB_NAMESPACE \
    --userId 'WwpgxYlJRyXveeXM' \
    > test.out 2>&1
eval_tap $? 462 'SyncSteamAbnormalTransaction' test.out

#- 463 SyncSteamIAPByTransaction
samples/cli/sample-apps Platform syncSteamIAPByTransaction \
    --namespace $AB_NAMESPACE \
    --userId 'CxqZKDFtW9u8tRbK' \
    --body '{"orderId": "hLbTzBbZpJna0LsF"}' \
    > test.out 2>&1
eval_tap $? 463 'SyncSteamIAPByTransaction' test.out

#- 464 PublicQueryUserThirdPartySubscription
samples/cli/sample-apps Platform publicQueryUserThirdPartySubscription \
    --namespace $AB_NAMESPACE \
    --platform 'PLAYSTATION' \
    --userId '4PSmUaVIz2U16Wy6' \
    --activeOnly 'false' \
    --groupId '5iB95hHozAtGxsAl' \
    --limit '2' \
    --offset '88' \
    --productId '3qksNz0ShS0eXOUK' \
    > test.out 2>&1
eval_tap $? 464 'PublicQueryUserThirdPartySubscription' test.out

#- 465 SyncTwitchDropsEntitlement1
samples/cli/sample-apps Platform syncTwitchDropsEntitlement1 \
    --namespace $AB_NAMESPACE \
    --userId '8o6XkkkYdB9v9Ypr' \
    --body '{"gameId": "bOnMQjAoOGtXBelI", "language": "BL", "region": "oCqZinQSN35tTTQc"}' \
    > test.out 2>&1
eval_tap $? 465 'SyncTwitchDropsEntitlement1' test.out

#- 466 SyncXboxInventory
samples/cli/sample-apps Platform syncXboxInventory \
    --namespace $AB_NAMESPACE \
    --userId 'KsqmYDFjYp7tLvRo' \
    --body '{"currencyCode": "P7zExiBycV1OSFZA", "price": 0.5786750934713271, "productId": "YyzocX3J5k7eP1a8", "xstsToken": "AYf1TI9wM2lTQ2Fx"}' \
    > test.out 2>&1
eval_tap $? 466 'SyncXboxInventory' test.out

#- 467 PublicQueryUserOrders
samples/cli/sample-apps Platform publicQueryUserOrders \
    --namespace $AB_NAMESPACE \
    --userId '0L74Q0Yd1DIQa0So' \
    --discounted 'false' \
    --itemId 'WzSNfaB312r4mm3V' \
    --limit '58' \
    --offset '50' \
    --status 'REFUNDING' \
    > test.out 2>&1
eval_tap $? 467 'PublicQueryUserOrders' test.out

#- 468 PublicCreateUserOrder
samples/cli/sample-apps Platform publicCreateUserOrder \
    --namespace $AB_NAMESPACE \
    --userId 'MqN4dnBsCsvfgo2u' \
    --body '{"currencyCode": "Yj71lRZkE7MESoOw", "discountCodes": ["U6rS43kw2PcCL3oH", "6KEqAEBZm2AqB0lb", "g4XPdToLE1Os18Dj"], "discountedPrice": 84, "ext": {"j0FZ2noVHfkwCID1": {}, "wg6Ybt6RspHsYplq": {}, "chzGE7pm05zMSRRA": {}}, "itemId": "gfDSRyqFpqcbWsOb", "language": "YZA_PG", "price": 10, "quantity": 34, "region": "axNXrPSHMz1MEK2s", "returnUrl": "u2ZqGxSmKQm8rkq8", "sectionId": "qh4BkZP1p7nreve7"}' \
    > test.out 2>&1
eval_tap $? 468 'PublicCreateUserOrder' test.out

#- 469 PublicPreviewOrderPrice
samples/cli/sample-apps Platform publicPreviewOrderPrice \
    --namespace $AB_NAMESPACE \
    --userId 'geaNI5SFNo2lu6rx' \
    --body '{"currencyCode": "7htIqffOyHRJOE74", "discountCodes": ["cOYwzidwgLw2QqjD", "DaKSWl7HtfCT9pZT", "2lTPDBlZxvUNYP8h"], "discountedPrice": 39, "itemId": "p2WJpqkD5czXJtLk", "price": 48, "quantity": 83}' \
    > test.out 2>&1
eval_tap $? 469 'PublicPreviewOrderPrice' test.out

#- 470 PublicGetUserOrder
samples/cli/sample-apps Platform publicGetUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'uatoeIhfO9QNl1lw' \
    --userId 'BR5nJiWQ5IbTfZ5p' \
    > test.out 2>&1
eval_tap $? 470 'PublicGetUserOrder' test.out

#- 471 PublicCancelUserOrder
samples/cli/sample-apps Platform publicCancelUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'u5Lyg1iQz74WHtiu' \
    --userId 'DnOkawgmzrHH0r2F' \
    > test.out 2>&1
eval_tap $? 471 'PublicCancelUserOrder' test.out

#- 472 PublicGetUserOrderHistories
samples/cli/sample-apps Platform publicGetUserOrderHistories \
    --namespace $AB_NAMESPACE \
    --orderNo '8BddTo2JKwpErvri' \
    --userId 'OrprUxjnDHnOPBlX' \
    > test.out 2>&1
eval_tap $? 472 'PublicGetUserOrderHistories' test.out

#- 473 PublicDownloadUserOrderReceipt
samples/cli/sample-apps Platform publicDownloadUserOrderReceipt \
    --namespace $AB_NAMESPACE \
    --orderNo 'Uj26G6ouX7l1Bhr8' \
    --userId 'ntfIjIApTJZ9BlbS' \
    > test.out 2>&1
eval_tap $? 473 'PublicDownloadUserOrderReceipt' test.out

#- 474 PublicGetPaymentAccounts
samples/cli/sample-apps Platform publicGetPaymentAccounts \
    --namespace $AB_NAMESPACE \
    --userId '9SsjTe9OFNpfHHJz' \
    > test.out 2>&1
eval_tap $? 474 'PublicGetPaymentAccounts' test.out

#- 475 PublicDeletePaymentAccount
samples/cli/sample-apps Platform publicDeletePaymentAccount \
    --id 'Pf8UoISTnGvmaBXN' \
    --namespace $AB_NAMESPACE \
    --type 'card' \
    --userId 'zaUKNGTgJKgownwq' \
    > test.out 2>&1
eval_tap $? 475 'PublicDeletePaymentAccount' test.out

#- 476 PublicListActiveSections
samples/cli/sample-apps Platform publicListActiveSections \
    --namespace $AB_NAMESPACE \
    --userId 'BZduXygAGZKWdZlY' \
    --autoCalcEstimatedPrice 'true' \
    --language 'nFs6J3jemAmI5uXe' \
    --region 'nPos7UiHXsu1QrSb' \
    --storeId 'pIEgT83uTZal7Cws' \
    --viewId 'tQt3oDYx3U26s8fk' \
    > test.out 2>&1
eval_tap $? 476 'PublicListActiveSections' test.out

#- 477 PublicQueryUserSubscriptions
samples/cli/sample-apps Platform publicQueryUserSubscriptions \
    --namespace $AB_NAMESPACE \
    --userId 'j27oofo7lmRpG5Z8' \
    --chargeStatus 'NEVER' \
    --itemId '7nGxTfT3HGe2gY00' \
    --limit '85' \
    --offset '16' \
    --sku 'nlfYwXBS36gombpF' \
    --status 'INIT' \
    --subscribedBy 'USER' \
    > test.out 2>&1
eval_tap $? 477 'PublicQueryUserSubscriptions' test.out

#- 478 PublicSubscribeSubscription
samples/cli/sample-apps Platform publicSubscribeSubscription \
    --namespace $AB_NAMESPACE \
    --userId 'Z85yvxZVh6YDLBVC' \
    --body '{"currencyCode": "wbqBrzq3euryLK33", "itemId": "cQOib6HXts9L7en8", "language": "QBP", "region": "aIcnMyO5SkzgRIan", "returnUrl": "bHQIobbHwABQBrjp", "source": "ulIBHpoVTDUyMS5W"}' \
    > test.out 2>&1
eval_tap $? 478 'PublicSubscribeSubscription' test.out

#- 479 PublicCheckUserSubscriptionSubscribableByItemId
samples/cli/sample-apps Platform publicCheckUserSubscriptionSubscribableByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'Coplnave0nlNtFNx' \
    --itemId 'fkIPo1PeIsGgvvdZ' \
    > test.out 2>&1
eval_tap $? 479 'PublicCheckUserSubscriptionSubscribableByItemId' test.out

#- 480 PublicGetUserSubscription
samples/cli/sample-apps Platform publicGetUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'SZ26z3e1I75OQUbL' \
    --userId 'GjzA3QaKOeWbkzKK' \
    > test.out 2>&1
eval_tap $? 480 'PublicGetUserSubscription' test.out

#- 481 PublicChangeSubscriptionBillingAccount
samples/cli/sample-apps Platform publicChangeSubscriptionBillingAccount \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'jvV9zEiAGNHkyvzm' \
    --userId 'ewlmJ4h4kyga0NyS' \
    > test.out 2>&1
eval_tap $? 481 'PublicChangeSubscriptionBillingAccount' test.out

#- 482 PublicCancelSubscription
samples/cli/sample-apps Platform publicCancelSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'J2gAUcLU5IX5wnCL' \
    --userId 'p8U2a1ggzUGYek8Z' \
    --body '{"immediate": false, "reason": "iFJ2otckmSnSHtOd"}' \
    > test.out 2>&1
eval_tap $? 482 'PublicCancelSubscription' test.out

#- 483 PublicGetUserSubscriptionBillingHistories
samples/cli/sample-apps Platform publicGetUserSubscriptionBillingHistories \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'yOXCmhekHxDKJv8E' \
    --userId 'ylPaDdw377piLtXX' \
    --excludeFree 'true' \
    --limit '57' \
    --offset '42' \
    > test.out 2>&1
eval_tap $? 483 'PublicGetUserSubscriptionBillingHistories' test.out

#- 484 PublicListViews
samples/cli/sample-apps Platform publicListViews \
    --namespace $AB_NAMESPACE \
    --userId 'iFi7cBDvWR5Rmmp0' \
    --language 'OPtXvyaHookOXezc' \
    --storeId 'Bchx8Y3czazYEePm' \
    > test.out 2>&1
eval_tap $? 484 'PublicListViews' test.out

#- 485 PublicGetWallet
samples/cli/sample-apps Platform publicGetWallet \
    --currencyCode 'SOwzw5ZpKw2VnQhL' \
    --namespace $AB_NAMESPACE \
    --userId 'kt4dvFngzxSkFbZF' \
    > test.out 2>&1
eval_tap $? 485 'PublicGetWallet' test.out

#- 486 PublicListUserWalletTransactions
samples/cli/sample-apps Platform publicListUserWalletTransactions \
    --currencyCode 'WPnZCjdgi9jeYnDR' \
    --namespace $AB_NAMESPACE \
    --userId 'oa9rp8axwDeKoW4T' \
    --limit '81' \
    --offset '46' \
    > test.out 2>&1
eval_tap $? 486 'PublicListUserWalletTransactions' test.out

#- 487 PublicGetMyDLCContent
samples/cli/sample-apps Platform publicGetMyDLCContent \
    --includeAllNamespaces 'false' \
    --type 'OCULUS' \
    > test.out 2>&1
eval_tap $? 487 'PublicGetMyDLCContent' test.out

#- 488 QueryFulfillments
samples/cli/sample-apps Platform queryFulfillments \
    --namespace $AB_NAMESPACE \
    --endTime '9XmY1P6e8GClqW2u' \
    --limit '35' \
    --offset '39' \
    --startTime 'k8PumNHtW7sgPck2' \
    --state 'REVOKE_FAILED' \
    --transactionId 'gMj4w69ejTgGriU7' \
    --userId 'ecenNx1x2LWype0c' \
    > test.out 2>&1
eval_tap $? 488 'QueryFulfillments' test.out

#- 489 QueryItemsV2
samples/cli/sample-apps Platform queryItemsV2 \
    --namespace $AB_NAMESPACE \
    --appType 'GAME' \
    --availableDate '9LgBByODhDxIhPil' \
    --baseAppId 'gLaISkuKQ36sSkoN' \
    --categoryPath '46EHYxwdX6p8YAML' \
    --features '0xHl2RcZr5UZbXDZ' \
    --includeSubCategoryItem 'true' \
    --itemName 'I9G2CJkUeOJJsthE' \
    --itemStatus 'ACTIVE' \
    --itemType '["COINS", "SUBSCRIPTION", "OPTIONBOX"]' \
    --limit '66' \
    --offset '36' \
    --region 'DO2pQQbSnSGJxfuH' \
    --sectionExclusive 'true' \
    --sortBy '["updatedAt", "createdAt", "createdAt:desc"]' \
    --storeId 'EyEuM3aMFKPan1qS' \
    --tags 'KH3QUMcMUVLVelDa' \
    --targetNamespace 'dPzZCD2bEQTfEoTH' \
    --withTotal 'false' \
    > test.out 2>&1
eval_tap $? 489 'QueryItemsV2' test.out

#- 490 ImportStore1
samples/cli/sample-apps Platform importStore1 \
    --namespace $AB_NAMESPACE \
    --storeId 'qGKPzwHiykv0SBu8' \
    --strictMode 'false' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 490 'ImportStore1' test.out

#- 491 ExportStore1
samples/cli/sample-apps Platform exportStore1 \
    --namespace $AB_NAMESPACE \
    --storeId 'Zsg9fkiZMLNG3RIV' \
    --body '{"itemIds": ["fADuISI9uQT6oGAH", "fFCeLRAHm0C2upWP", "eYBFcjxV28TBTTJC"]}' \
    > test.out 2>&1
eval_tap $? 491 'ExportStore1' test.out

#- 492 FulfillRewardsV2
samples/cli/sample-apps Platform fulfillRewardsV2 \
    --namespace $AB_NAMESPACE \
    --userId 'j9x3ESMVPBuD6iok' \
    --body '{"entitlementCollectionId": "ObH1bA3AEfZ1QiEz", "entitlementOrigin": "IOS", "metadata": {"vckk3YblnmZdkMG1": {}, "ZNu5JAoFJR06UVVX": {}, "nqeDeXzBDpxGUidN": {}}, "origin": "Epic", "rewards": [{"currency": {"currencyCode": "H8QzaCaUI2JhbGgj", "namespace": "wGRIi1LAB2zAOMfB"}, "item": {"itemId": "snNyHhiyXu957Tjx", "itemName": "Cfd9MO4NZQVBl0FO", "itemSku": "4Yh80ss0WcKEePB6", "itemType": "6uu6X20cgmugkdsK"}, "quantity": 74, "type": "ITEM"}, {"currency": {"currencyCode": "gbusewfrA5QZTTHK", "namespace": "FVL1Lf0QSTW4bz9Z"}, "item": {"itemId": "3QzoZ2cize7APF9j", "itemName": "gz9WacQ9JowSah7F", "itemSku": "TNhoEp6qQfd9CIyb", "itemType": "ieF2vtjoV14AuDT3"}, "quantity": 13, "type": "ITEM"}, {"currency": {"currencyCode": "oD7mtr0u6oDeKjdt", "namespace": "BEATZqOUq1yyiOo3"}, "item": {"itemId": "o5cPkBxin6JMVH5k", "itemName": "qdjfqHSqyoOFv1l2", "itemSku": "3Nuvc8pLttCtAGXL", "itemType": "YuP2MoUF2iLK6vhS"}, "quantity": 65, "type": "ITEM"}], "source": "EXPIRATION", "transactionId": "W20osnVevWZdvGee"}' \
    > test.out 2>&1
eval_tap $? 492 'FulfillRewardsV2' test.out

#- 493 FulfillItems
eval_tap 0 493 'FulfillItems # SKIP deprecated' test.out

#- 494 RetryFulfillItems
eval_tap 0 494 'RetryFulfillItems # SKIP deprecated' test.out

#- 495 RevokeItems
eval_tap 0 495 'RevokeItems # SKIP deprecated' test.out

#- 496 V2PublicFulfillAppleIAPItem
samples/cli/sample-apps Platform v2PublicFulfillAppleIAPItem \
    --namespace $AB_NAMESPACE \
    --userId '31uYXKaSj5ha1FwM' \
    --body '{"transactionId": "CqW1GQCeuSMBBdj4"}' \
    > test.out 2>&1
eval_tap $? 496 'V2PublicFulfillAppleIAPItem' test.out

#- 497 FulfillItemsV3
samples/cli/sample-apps Platform fulfillItemsV3 \
    --namespace $AB_NAMESPACE \
    --transactionId 'eWMV6phPcOGEqjFB' \
    --userId '0pW7dSsDabKShZ2l' \
    --body '{"items": [{"duration": 51, "endDate": "1975-06-14T00:00:00Z", "entitlementCollectionId": "BqIpPQuLPd1tkKCw", "entitlementOrigin": "Nintendo", "itemId": "acQe8hs0VxKMq1iY", "itemSku": "JR3GCDqeV5c7cm9E", "language": "tLOUTFJIqyZyJTNi", "metadata": {"nRgjebMoFxXBswqQ": {}, "C1saU1chMjEKSJNG": {}, "ul6GEsyLSywGMQRs": {}}, "orderNo": "nYyc6fCCqu14Anq9", "origin": "Oculus", "quantity": 58, "region": "ca6XTXeCo0JlKLJy", "source": "ACHIEVEMENT", "startDate": "1987-02-28T00:00:00Z", "storeId": "OZzRaUnDLJe7McEl"}, {"duration": 76, "endDate": "1997-12-10T00:00:00Z", "entitlementCollectionId": "XmWfDTkiUhVlkgan", "entitlementOrigin": "Nintendo", "itemId": "raW5wWNrc82YkyW5", "itemSku": "mNn5i6yqfJHn9rE8", "language": "9EK32f0JUX8iUM1O", "metadata": {"uLqX2iAWK02a8yCr": {}, "KjLO23qHyIUwdi41": {}, "4hrrzwyiuttkpMkm": {}}, "orderNo": "JDO74Wgn3Gh5Zl32", "origin": "GooglePlay", "quantity": 94, "region": "6LG9p8o05jCGOldh", "source": "EXPIRATION", "startDate": "1972-01-24T00:00:00Z", "storeId": "K9rzzbBbwPSSavFg"}, {"duration": 60, "endDate": "1984-01-13T00:00:00Z", "entitlementCollectionId": "pbD0d4n8xit0cT76", "entitlementOrigin": "Playstation", "itemId": "sYOR3YpW3rE8OTrh", "itemSku": "5PeYDUQnBfUROy9R", "language": "4CGGLxuI2RwDk8eW", "metadata": {"aSUNA0XHhR7geIDN": {}, "jp1nGsg7aIbRnxAj": {}, "SvVzFGlAieyQAueg": {}}, "orderNo": "vwM2CP9qliWyYKFR", "origin": "Playstation", "quantity": 18, "region": "5xRFZQeQwWYqoEfv", "source": "PROMOTION", "startDate": "1996-06-30T00:00:00Z", "storeId": "FpVWYY4bgJOhyLcr"}]}' \
    > test.out 2>&1
eval_tap $? 497 'FulfillItemsV3' test.out

#- 498 RetryFulfillItemsV3
samples/cli/sample-apps Platform retryFulfillItemsV3 \
    --namespace $AB_NAMESPACE \
    --transactionId 'WCDMW4oiSWSEIdy0' \
    --userId 'OHVxo1k6v45248HR' \
    > test.out 2>&1
eval_tap $? 498 'RetryFulfillItemsV3' test.out

#- 499 RevokeItemsV3
samples/cli/sample-apps Platform revokeItemsV3 \
    --namespace $AB_NAMESPACE \
    --transactionId 'ZZO8jW0fyNcYXZov' \
    --userId 'fR6W3f4AC2s5OXSX' \
    > test.out 2>&1
eval_tap $? 499 'RevokeItemsV3' test.out


rm -f "tmp.dat"

exit $EXIT_CODE