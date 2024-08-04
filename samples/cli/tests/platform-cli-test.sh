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
echo "1..460"

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
    --id 'ljGhbzjtR6NeMxff' \
    > test.out 2>&1
eval_tap $? 3 'GetFulfillmentScript' test.out

#- 4 CreateFulfillmentScript
samples/cli/sample-apps Platform createFulfillmentScript \
    --id '5tXmA4BYMWaxJBmU' \
    --body '{"grantDays": "My6jQHiULBofK2J2"}' \
    > test.out 2>&1
eval_tap $? 4 'CreateFulfillmentScript' test.out

#- 5 DeleteFulfillmentScript
samples/cli/sample-apps Platform deleteFulfillmentScript \
    --id 'hwAzkaJfrCUsVQeE' \
    > test.out 2>&1
eval_tap $? 5 'DeleteFulfillmentScript' test.out

#- 6 UpdateFulfillmentScript
samples/cli/sample-apps Platform updateFulfillmentScript \
    --id 'IzqeETGWMR0WSiTm' \
    --body '{"grantDays": "G1g1kBVmsFf2jsH0"}' \
    > test.out 2>&1
eval_tap $? 6 'UpdateFulfillmentScript' test.out

#- 7 ListItemTypeConfigs
samples/cli/sample-apps Platform listItemTypeConfigs \
    > test.out 2>&1
eval_tap $? 7 'ListItemTypeConfigs' test.out

#- 8 CreateItemTypeConfig
samples/cli/sample-apps Platform createItemTypeConfig \
    --body '{"clazz": "wisjh1jTExjcAVXT", "dryRun": true, "fulfillmentUrl": "2mrY4aAvB4cun35o", "itemType": "CODE", "purchaseConditionUrl": "EmVMOXEOME8sOctC"}' \
    > test.out 2>&1
eval_tap $? 8 'CreateItemTypeConfig' test.out

#- 9 SearchItemTypeConfig
samples/cli/sample-apps Platform searchItemTypeConfig \
    --clazz '3X9BKnbnqCgBulNo' \
    --itemType 'CODE' \
    > test.out 2>&1
eval_tap $? 9 'SearchItemTypeConfig' test.out

#- 10 GetItemTypeConfig
samples/cli/sample-apps Platform getItemTypeConfig \
    --id 'oLDLDHbIY6soIJfC' \
    > test.out 2>&1
eval_tap $? 10 'GetItemTypeConfig' test.out

#- 11 UpdateItemTypeConfig
samples/cli/sample-apps Platform updateItemTypeConfig \
    --id 'iWZamWozMBEou2Gv' \
    --body '{"clazz": "ktqAeIpzHOf2BiVS", "dryRun": false, "fulfillmentUrl": "NMIDCM4wWHN8S9gk", "purchaseConditionUrl": "p69l3TbufHUeKtGs"}' \
    > test.out 2>&1
eval_tap $? 11 'UpdateItemTypeConfig' test.out

#- 12 DeleteItemTypeConfig
samples/cli/sample-apps Platform deleteItemTypeConfig \
    --id 'WFprvu9xXfIA2FhK' \
    > test.out 2>&1
eval_tap $? 12 'DeleteItemTypeConfig' test.out

#- 13 QueryCampaigns
samples/cli/sample-apps Platform queryCampaigns \
    --namespace $AB_NAMESPACE \
    --limit '5' \
    --name 'YxSeP5YMs4AUSqlo' \
    --offset '12' \
    --tag 'V50SUE7BbvBzfgFP' \
    > test.out 2>&1
eval_tap $? 13 'QueryCampaigns' test.out

#- 14 CreateCampaign
samples/cli/sample-apps Platform createCampaign \
    --namespace $AB_NAMESPACE \
    --body '{"description": "Yhlmi2tyrTgEFvG7", "discountConfig": {"categories": [{"categoryPath": "7cYKb6Ne24bGQz9j", "includeSubCategories": false}, {"categoryPath": "UrSlHSn6SGHIPY4h", "includeSubCategories": false}, {"categoryPath": "AUoL5qloMKAmOg7F", "includeSubCategories": false}], "currencyCode": "4iG9E1qqoPJP9GCU", "currencyNamespace": "dCburT1TCVJzDPYF", "discountAmount": 7, "discountPercentage": 57, "discountType": "PERCENTAGE", "items": [{"itemId": "NnGEklyiweEjkGrs", "itemName": "sQ6EarpCnnZoTZBk"}, {"itemId": "gUxgtUz2MJUt8D7p", "itemName": "LeYgGBcfMUo9AlSP"}, {"itemId": "dfrBlKE9MU18I1n6", "itemName": "ILMYbeRwFtm94mhp"}], "restrictType": "NONE", "stackable": false}, "items": [{"extraSubscriptionDays": 49, "itemId": "DSgPTGZVU9UUj3d0", "itemName": "A7MdVHHx2oMfoRc5", "quantity": 94}, {"extraSubscriptionDays": 82, "itemId": "eChhgMgd646nry1C", "itemName": "3dlUq4fxYSdsUxy8", "quantity": 1}, {"extraSubscriptionDays": 97, "itemId": "qSXB9e2rpbFhcFK0", "itemName": "2bNP98kSRnQfDPD1", "quantity": 42}], "maxRedeemCountPerCampaignPerUser": 2, "maxRedeemCountPerCode": 52, "maxRedeemCountPerCodePerUser": 67, "maxSaleCount": 5, "name": "oMynozZeyYiicnBT", "redeemEnd": "1987-03-27T00:00:00Z", "redeemStart": "1985-03-17T00:00:00Z", "redeemType": "DISCOUNT", "status": "INACTIVE", "tags": ["BLC9tZ51vV3Dx11t", "x0kie8e1iTOxJHpK", "K28wuEyzwdi2OYEK"], "type": "REDEMPTION"}' \
    > test.out 2>&1
eval_tap $? 14 'CreateCampaign' test.out

#- 15 GetCampaign
samples/cli/sample-apps Platform getCampaign \
    --campaignId 'y43TLrsh3avYWCc7' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 15 'GetCampaign' test.out

#- 16 UpdateCampaign
samples/cli/sample-apps Platform updateCampaign \
    --campaignId 'Qgd2HHbL261g3D0i' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "dN2nqx6u1sSnLyuH", "discountConfig": {"categories": [{"categoryPath": "nvTvWpoLnRH9fg8k", "includeSubCategories": false}, {"categoryPath": "nYAlkcGzaikn0hzi", "includeSubCategories": false}, {"categoryPath": "jZxDQ8xk2upIsKJW", "includeSubCategories": true}], "currencyCode": "nATA6ZDfzqnVCHJA", "currencyNamespace": "hifiHtjOILO0vNy3", "discountAmount": 19, "discountPercentage": 49, "discountType": "PERCENTAGE", "items": [{"itemId": "bQ1PbwX3kJmxY9Xd", "itemName": "79fMarkoZmPct462"}, {"itemId": "4U7iQEkhGoQ05OXM", "itemName": "dw7NlkFyseawgLK9"}, {"itemId": "nnIHYYtfGfl8a9UE", "itemName": "Tpui3AJOehrLVZgF"}], "restrictType": "ITEMS_AND_CATEGORIES", "stackable": false}, "items": [{"extraSubscriptionDays": 92, "itemId": "XAWRpWHVPglNVZgI", "itemName": "MPrx4MiXybrqic6s", "quantity": 35}, {"extraSubscriptionDays": 98, "itemId": "p6eYMILSXy001AbG", "itemName": "kMqKKsdHQm4IuNL8", "quantity": 76}, {"extraSubscriptionDays": 40, "itemId": "aAne9RgPhv6QFqwY", "itemName": "NOcjmlikuT1h6u81", "quantity": 85}], "maxRedeemCountPerCampaignPerUser": 98, "maxRedeemCountPerCode": 8, "maxRedeemCountPerCodePerUser": 72, "maxSaleCount": 93, "name": "bCS7aQsHNRrrAuqR", "redeemEnd": "1993-06-16T00:00:00Z", "redeemStart": "1981-01-31T00:00:00Z", "redeemType": "ITEM", "status": "INACTIVE", "tags": ["jaPkjr3RovhJCoe6", "GkSk8vGuN3Gd63WJ", "dBcOR4FAuoEhR3Fr"]}' \
    > test.out 2>&1
eval_tap $? 16 'UpdateCampaign' test.out

#- 17 GetCampaignDynamic
samples/cli/sample-apps Platform getCampaignDynamic \
    --campaignId 'MAlvXlb0lXApLRZi' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'GetCampaignDynamic' test.out

#- 18 GetCatalogConfig
samples/cli/sample-apps Platform getCatalogConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'GetCatalogConfig' test.out

#- 19 UpdateCatalogConfig
samples/cli/sample-apps Platform updateCatalogConfig \
    --namespace $AB_NAMESPACE \
    --body '{"enableInventoryCheck": true}' \
    > test.out 2>&1
eval_tap $? 19 'UpdateCatalogConfig' test.out

#- 20 GetLootBoxPluginConfig
samples/cli/sample-apps Platform getLootBoxPluginConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 20 'GetLootBoxPluginConfig' test.out

#- 21 UpdateLootBoxPluginConfig
samples/cli/sample-apps Platform updateLootBoxPluginConfig \
    --namespace $AB_NAMESPACE \
    --body '{"appConfig": {"appName": "NzXZZ4d03tX1ivQL"}, "customConfig": {"connectionType": "INSECURE", "grpcServerAddress": "geJme0h9UHtS7vkk"}, "extendType": "APP"}' \
    > test.out 2>&1
eval_tap $? 21 'UpdateLootBoxPluginConfig' test.out

#- 22 DeleteLootBoxPluginConfig
samples/cli/sample-apps Platform deleteLootBoxPluginConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 22 'DeleteLootBoxPluginConfig' test.out

#- 23 UplodLootBoxPluginConfigCert
samples/cli/sample-apps Platform uplodLootBoxPluginConfigCert \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 23 'UplodLootBoxPluginConfigCert' test.out

#- 24 GetLootBoxGrpcInfo
samples/cli/sample-apps Platform getLootBoxGrpcInfo \
    --namespace $AB_NAMESPACE \
    --force 'true' \
    > test.out 2>&1
eval_tap $? 24 'GetLootBoxGrpcInfo' test.out

#- 25 GetSectionPluginConfig
samples/cli/sample-apps Platform getSectionPluginConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 25 'GetSectionPluginConfig' test.out

#- 26 UpdateSectionPluginConfig
samples/cli/sample-apps Platform updateSectionPluginConfig \
    --namespace $AB_NAMESPACE \
    --body '{"appConfig": {"appName": "JjGABQBgIGeqcxJo"}, "customConfig": {"connectionType": "INSECURE", "grpcServerAddress": "nxq5zDrEsimlOLHv"}, "extendType": "APP"}' \
    > test.out 2>&1
eval_tap $? 26 'UpdateSectionPluginConfig' test.out

#- 27 DeleteSectionPluginConfig
samples/cli/sample-apps Platform deleteSectionPluginConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 27 'DeleteSectionPluginConfig' test.out

#- 28 UploadSectionPluginConfigCert
samples/cli/sample-apps Platform uploadSectionPluginConfigCert \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 28 'UploadSectionPluginConfigCert' test.out

#- 29 GetRootCategories
samples/cli/sample-apps Platform getRootCategories \
    --namespace $AB_NAMESPACE \
    --storeId 'qm94gs6L0ne5UOZG' \
    > test.out 2>&1
eval_tap $? 29 'GetRootCategories' test.out

#- 30 CreateCategory
samples/cli/sample-apps Platform createCategory \
    --namespace $AB_NAMESPACE \
    --storeId 'BN45sckowrJke0o4' \
    --body '{"categoryPath": "9TSu0MVOKWJ900Me", "localizationDisplayNames": {"62kVXSFyh8aJ2Rjo": "N2VJ1qPDRc9W0xMM", "Pjbt3WA8mbtOt3ra": "S8oVDQXHxDt8baFl", "Gkga1DNVI0slajUp": "qFmGnNYRbHY9xa1T"}}' \
    > test.out 2>&1
eval_tap $? 30 'CreateCategory' test.out

#- 31 ListCategoriesBasic
samples/cli/sample-apps Platform listCategoriesBasic \
    --namespace $AB_NAMESPACE \
    --storeId 'kNmwzPTJsP1y7vxG' \
    > test.out 2>&1
eval_tap $? 31 'ListCategoriesBasic' test.out

#- 32 GetCategory
samples/cli/sample-apps Platform getCategory \
    --categoryPath 'SHM2kbrNhbBi46q5' \
    --namespace $AB_NAMESPACE \
    --storeId 'Xf22wRpbAJowaRA5' \
    > test.out 2>&1
eval_tap $? 32 'GetCategory' test.out

#- 33 UpdateCategory
samples/cli/sample-apps Platform updateCategory \
    --categoryPath 'nxD8Q9gOLLbiShgP' \
    --namespace $AB_NAMESPACE \
    --storeId 'oyTSKe99sj2nif3K' \
    --body '{"localizationDisplayNames": {"tt0Y46hvgZ94HxGO": "eC8WzIHnx1AfyCFa", "HbQD2zg5EVSN1Y0E": "TXtuxgME6BaK8XKD", "i08vHKt8bbnyT17g": "9vO6XBEwMNu4bBK3"}}' \
    > test.out 2>&1
eval_tap $? 33 'UpdateCategory' test.out

#- 34 DeleteCategory
samples/cli/sample-apps Platform deleteCategory \
    --categoryPath 'SdmXVcyVDJHruH7w' \
    --namespace $AB_NAMESPACE \
    --storeId 'Lq8KZoJ6Nh5vYKNJ' \
    > test.out 2>&1
eval_tap $? 34 'DeleteCategory' test.out

#- 35 GetChildCategories
samples/cli/sample-apps Platform getChildCategories \
    --categoryPath 'oCrOBDK0gxLWdJv8' \
    --namespace $AB_NAMESPACE \
    --storeId 'AHBcqy4XKeEG7WgF' \
    > test.out 2>&1
eval_tap $? 35 'GetChildCategories' test.out

#- 36 GetDescendantCategories
samples/cli/sample-apps Platform getDescendantCategories \
    --categoryPath 'ocDqHm61xA2Ih2Ms' \
    --namespace $AB_NAMESPACE \
    --storeId '4YPJmpP1aDVWu9wh' \
    > test.out 2>&1
eval_tap $? 36 'GetDescendantCategories' test.out

#- 37 QueryCodes
samples/cli/sample-apps Platform queryCodes \
    --campaignId '1XzStDYzbsu2aIHU' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --batchNo '52' \
    --code 'x3lpUSqEcKmc77Lh' \
    --limit '2' \
    --offset '53' \
    > test.out 2>&1
eval_tap $? 37 'QueryCodes' test.out

#- 38 CreateCodes
samples/cli/sample-apps Platform createCodes \
    --campaignId 'a3HZx4VAqp6BMpZq' \
    --namespace $AB_NAMESPACE \
    --body '{"codeValue": "6nXWci1WE0IG8Oua", "quantity": 69}' \
    > test.out 2>&1
eval_tap $? 38 'CreateCodes' test.out

#- 39 Download
samples/cli/sample-apps Platform download \
    --campaignId 'Ij15vHMBmmNaySvy' \
    --namespace $AB_NAMESPACE \
    --batchNo '52' \
    > test.out 2>&1
eval_tap $? 39 'Download' test.out

#- 40 BulkDisableCodes
samples/cli/sample-apps Platform bulkDisableCodes \
    --campaignId 'qHheM9g5xIJatPYt' \
    --namespace $AB_NAMESPACE \
    --batchNo '7' \
    > test.out 2>&1
eval_tap $? 40 'BulkDisableCodes' test.out

#- 41 BulkEnableCodes
samples/cli/sample-apps Platform bulkEnableCodes \
    --campaignId 'EgxGCQk8updgC5Xu' \
    --namespace $AB_NAMESPACE \
    --batchNo '61' \
    > test.out 2>&1
eval_tap $? 41 'BulkEnableCodes' test.out

#- 42 QueryRedeemHistory
samples/cli/sample-apps Platform queryRedeemHistory \
    --campaignId '0PjRtmDECur0klaJ' \
    --namespace $AB_NAMESPACE \
    --code 'Cn9MjM787K0twUG7' \
    --limit '87' \
    --offset '73' \
    --userId 'cC4hDlgT0ZERcZAo' \
    > test.out 2>&1
eval_tap $? 42 'QueryRedeemHistory' test.out

#- 43 GetCode
samples/cli/sample-apps Platform getCode \
    --code '7F6sAvrNPGaAmBC6' \
    --namespace $AB_NAMESPACE \
    --redeemable 'true' \
    > test.out 2>&1
eval_tap $? 43 'GetCode' test.out

#- 44 DisableCode
samples/cli/sample-apps Platform disableCode \
    --code 'd4SLzSw54vxGcElg' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 44 'DisableCode' test.out

#- 45 EnableCode
samples/cli/sample-apps Platform enableCode \
    --code 'VPH5gJHfWp5j3Ea3' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 45 'EnableCode' test.out

#- 46 GetServicePluginConfig
eval_tap 0 46 'GetServicePluginConfig # SKIP deprecated' test.out

#- 47 UpdateServicePluginConfig
eval_tap 0 47 'UpdateServicePluginConfig # SKIP deprecated' test.out

#- 48 DeleteServicePluginConfig
eval_tap 0 48 'DeleteServicePluginConfig # SKIP deprecated' test.out

#- 49 ListCurrencies
samples/cli/sample-apps Platform listCurrencies \
    --namespace $AB_NAMESPACE \
    --currencyType 'REAL' \
    > test.out 2>&1
eval_tap $? 49 'ListCurrencies' test.out

#- 50 CreateCurrency
samples/cli/sample-apps Platform createCurrency \
    --namespace $AB_NAMESPACE \
    --body '{"currencyCode": "Chw2gWc0IxOGpMAW", "currencySymbol": "LZqns8UoktSrSYVy", "currencyType": "REAL", "decimals": 30, "localizationDescriptions": {"SZHsa1dlTBFC8u6w": "4xsz5s3vCNgdFRj8", "jlwMMgPSXgtTMINs": "yBmbkP5BNdqxSqhX", "R8gXKbDBpcNNwxyd": "Vf1pF5ogi7R4DOe4"}}' \
    > test.out 2>&1
eval_tap $? 50 'CreateCurrency' test.out

#- 51 UpdateCurrency
samples/cli/sample-apps Platform updateCurrency \
    --currencyCode 'A3JwYgTZESHaOJJT' \
    --namespace $AB_NAMESPACE \
    --body '{"localizationDescriptions": {"3sEaRlZhLmTGG1gK": "yZpuZNSmLG7qoTlJ", "hmql8VVd2gya6PT8": "z0aBpdTBoYscaCUW", "R3FQnTEibMUGg39M": "QpOLyPta0iVXejXX"}}' \
    > test.out 2>&1
eval_tap $? 51 'UpdateCurrency' test.out

#- 52 DeleteCurrency
samples/cli/sample-apps Platform deleteCurrency \
    --currencyCode 'VUblMmUxQ1HZmWXG' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 52 'DeleteCurrency' test.out

#- 53 GetCurrencyConfig
samples/cli/sample-apps Platform getCurrencyConfig \
    --currencyCode 'Lk9edql0iorrP9wl' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 53 'GetCurrencyConfig' test.out

#- 54 GetCurrencySummary
samples/cli/sample-apps Platform getCurrencySummary \
    --currencyCode 'n2g0AO9pB3HZn7HS' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 54 'GetCurrencySummary' test.out

#- 55 GetDLCItemConfig
samples/cli/sample-apps Platform getDLCItemConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 55 'GetDLCItemConfig' test.out

#- 56 UpdateDLCItemConfig
samples/cli/sample-apps Platform updateDLCItemConfig \
    --namespace $AB_NAMESPACE \
    --body '{"data": [{"id": "axeIltwHvPOQ88WZ", "rewards": [{"currency": {"currencyCode": "pDefZcxr6g6hakOe", "namespace": "IhcvvasTnzK2FeZV"}, "item": {"itemId": "OqBD7lypcQ8DPnGP", "itemName": "3A4ZGyopY36xYXZE", "itemSku": "WcY6EiZwwhVz3S0b", "itemType": "wzeSU4ES6UjvSL5A"}, "quantity": 96, "type": "ITEM"}, {"currency": {"currencyCode": "5Pci6kaVWv4tpIRu", "namespace": "G0XV4mEl4uU6s2T4"}, "item": {"itemId": "vGFFBLkR0VfOCp41", "itemName": "cSAIKiagGefqCXtv", "itemSku": "s3y8G72nz9jJGsEQ", "itemType": "W5ArHszQeJGxgQFr"}, "quantity": 8, "type": "ITEM"}, {"currency": {"currencyCode": "Mm0V8YuWfAGj5IAu", "namespace": "eUP0Ixl7aZModCet"}, "item": {"itemId": "Z1dH1inffjCgjpeL", "itemName": "DyYhJZ6J3MnKG9go", "itemSku": "cOPKz0AoO835c9cB", "itemType": "3h9t0ZNXLuL4eiRG"}, "quantity": 59, "type": "ITEM"}]}, {"id": "CtSekvCPmZqxwjGA", "rewards": [{"currency": {"currencyCode": "lNFNK83hd5QZkpQG", "namespace": "1XLy5GJZnj62UF4U"}, "item": {"itemId": "JtcTSu7v66jIry3b", "itemName": "fmHtum87soo2CgQH", "itemSku": "jbnejgXXiZJME7uU", "itemType": "5LCGBKuVWOZslmkA"}, "quantity": 75, "type": "CURRENCY"}, {"currency": {"currencyCode": "iRebZfcilNw9lu6h", "namespace": "ipXz48qGDF4MA0SE"}, "item": {"itemId": "s9uJvjm2YPclx0fK", "itemName": "XG6KNbsT1MCldBSa", "itemSku": "XJt9i1TaqSeR8atL", "itemType": "8d16hL0itv45B1Lb"}, "quantity": 34, "type": "ITEM"}, {"currency": {"currencyCode": "ZF0WQ3zjWkA6lpRR", "namespace": "M3MWVZKYgUHsJmaH"}, "item": {"itemId": "C0fiZpTLjyv6swSc", "itemName": "UqTBippH79zJ9uBi", "itemSku": "RQuPcO2sHcBZ3A15", "itemType": "ehadAQaMTo6Rzg2A"}, "quantity": 90, "type": "ITEM"}]}, {"id": "Ns33V4nuSCiG6zrC", "rewards": [{"currency": {"currencyCode": "H4ZkZ1GCvsvq4gtt", "namespace": "L6Hu9vKwdIRpdAgq"}, "item": {"itemId": "1waJfKRCqSUSFYLg", "itemName": "9bzeXuRCry47EPeg", "itemSku": "ObEUMl0c48cu3g6c", "itemType": "r4NrKKFcIkmJItOw"}, "quantity": 34, "type": "ITEM"}, {"currency": {"currencyCode": "WpXFcNWGa4BLeNUa", "namespace": "eyDOC2cg2HEWWVHd"}, "item": {"itemId": "oMcSuP0LS95FxOxT", "itemName": "Ndce4hE9Cl0WTda3", "itemSku": "QRjhRg8jWz4FBrfc", "itemType": "cAvxuqz495zq6T08"}, "quantity": 40, "type": "ITEM"}, {"currency": {"currencyCode": "VC2qQvoVLTOaSUg3", "namespace": "U9SUdpkonaE70C1e"}, "item": {"itemId": "SjBZcA88Llq0kPcX", "itemName": "xCQNSTynqYa5r18g", "itemSku": "XpJTgXhsNalxmK9P", "itemType": "pcWtaXKCbqLPNVMj"}, "quantity": 31, "type": "CURRENCY"}]}]}' \
    > test.out 2>&1
eval_tap $? 56 'UpdateDLCItemConfig' test.out

#- 57 DeleteDLCItemConfig
samples/cli/sample-apps Platform deleteDLCItemConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 57 'DeleteDLCItemConfig' test.out

#- 58 GetPlatformDLCConfig
samples/cli/sample-apps Platform getPlatformDLCConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 58 'GetPlatformDLCConfig' test.out

#- 59 UpdatePlatformDLCConfig
samples/cli/sample-apps Platform updatePlatformDLCConfig \
    --namespace $AB_NAMESPACE \
    --body '{"data": [{"platform": "PSN", "platformDlcIdMap": {"FlwI94W614NCLQlD": "QKbsap9w5jTOZMUR", "JOnr6IpSumPcyo0i": "63tuxAYExxPJrMBJ", "LG6JiDfMv3ft7IZQ": "p4uDIvewbHw1JpZ3"}}, {"platform": "EPICGAMES", "platformDlcIdMap": {"rlHgKr6o9dPPkdY5": "Hvk54CbU5XZ4lFPF", "NK3xGNFk2GeUPIrM": "kCYgw0DUmX5ZAgau", "yjvgd3QLbIN6prVT": "jIcJJPdhEdUhIwZd"}}, {"platform": "STEAM", "platformDlcIdMap": {"wVplcQUCdao5tECR": "SGZNW3cdF7lQ04QN", "UCmrJM09yn6rxLGc": "QT3pyvdb45YPQu7b", "Ryjre0wKcRW6DDTb": "L2l06QfWPBbj4psE"}}]}' \
    > test.out 2>&1
eval_tap $? 59 'UpdatePlatformDLCConfig' test.out

#- 60 DeletePlatformDLCConfig
samples/cli/sample-apps Platform deletePlatformDLCConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 60 'DeletePlatformDLCConfig' test.out

#- 61 QueryEntitlements
samples/cli/sample-apps Platform queryEntitlements \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --appType 'DLC' \
    --entitlementClazz 'APP' \
    --entitlementName 'eHJHdfkqFARF6ixI' \
    --itemId '["FMyE8IgPm9ik6Osz", "NFRPVJ2nSmS47nlB", "Rz8XcVuxdDtn1edh"]' \
    --limit '97' \
    --offset '24' \
    --origin 'GooglePlay' \
    --userId 'utzIYvCApFR8shP8' \
    > test.out 2>&1
eval_tap $? 61 'QueryEntitlements' test.out

#- 62 QueryEntitlements1
samples/cli/sample-apps Platform queryEntitlements1 \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --itemIds '["C1pGkZMUYZh8HNvq", "NkOrKlNQ1Sx73zXq", "6ssc5oMvV5Wxi9uV"]' \
    --limit '84' \
    --offset '41' \
    > test.out 2>&1
eval_tap $? 62 'QueryEntitlements1' test.out

#- 63 EnableEntitlementOriginFeature
samples/cli/sample-apps Platform enableEntitlementOriginFeature \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 63 'EnableEntitlementOriginFeature' test.out

#- 64 GetEntitlementConfigInfo
samples/cli/sample-apps Platform getEntitlementConfigInfo \
    --namespace $AB_NAMESPACE \
    --withoutCache 'true' \
    > test.out 2>&1
eval_tap $? 64 'GetEntitlementConfigInfo' test.out

#- 65 GrantEntitlements
samples/cli/sample-apps Platform grantEntitlements \
    --namespace $AB_NAMESPACE \
    --body '{"entitlementGrantList": [{"collectionId": "NEe2eVvIsDQcdVYc", "endDate": "1978-01-08T00:00:00Z", "grantedCode": "Fz6m6KffC9L2ASPk", "itemId": "oN1P4KmnHXMfjIO7", "itemNamespace": "YBm7h62RSePZNRWK", "language": "CVC-oTuc_561", "origin": "System", "quantity": 18, "region": "RN1mKmqdrqNd9dMP", "source": "IAP", "startDate": "1989-05-18T00:00:00Z", "storeId": "0507it5QhDUYd1bO"}, {"collectionId": "FelX9BAVBo7KbNmv", "endDate": "1978-10-22T00:00:00Z", "grantedCode": "JGUuSHWXP62u8mqW", "itemId": "pz0x1fx3frkTW7Z7", "itemNamespace": "GQuahSbWTDMgDKEq", "language": "vkq-kHqD", "origin": "Oculus", "quantity": 5, "region": "kSck82ZaKMrO74pG", "source": "REWARD", "startDate": "1999-11-28T00:00:00Z", "storeId": "q0woKEykH97wlZ1w"}, {"collectionId": "l85UFxvbOZ0kd6ec", "endDate": "1991-10-22T00:00:00Z", "grantedCode": "QvhbsvmUiOG2YPLn", "itemId": "DWMV8jZQLn98sb2W", "itemNamespace": "VWRM0ENBijL4JMbH", "language": "JYq-huoD", "origin": "Other", "quantity": 35, "region": "2KkgvDETrD8YQ034", "source": "GIFT", "startDate": "1990-06-30T00:00:00Z", "storeId": "ZWacoDl5G64x7c93"}], "userIds": ["2kntJDuODSKPe40I", "mLrCL1QIZ0VtRbZN", "8YRKgDbcG0Vh8GEs"]}' \
    > test.out 2>&1
eval_tap $? 65 'GrantEntitlements' test.out

#- 66 RevokeEntitlements
samples/cli/sample-apps Platform revokeEntitlements \
    --namespace $AB_NAMESPACE \
    --body '["vAlrIUOSJ82Atp3V", "WOWjb2KTcuXahq6E", "AzWhsciWk5oPN4VS"]' \
    > test.out 2>&1
eval_tap $? 66 'RevokeEntitlements' test.out

#- 67 GetEntitlement
samples/cli/sample-apps Platform getEntitlement \
    --entitlementId 'yFxIaFvmi9Mfk7Xt' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 67 'GetEntitlement' test.out

#- 68 QueryFulfillmentHistories
samples/cli/sample-apps Platform queryFulfillmentHistories \
    --namespace $AB_NAMESPACE \
    --limit '40' \
    --offset '78' \
    --status 'FAIL' \
    --userId 'cg0pj2PQB4hjqlEC' \
    > test.out 2>&1
eval_tap $? 68 'QueryFulfillmentHistories' test.out

#- 69 QueryIAPClawbackHistory
samples/cli/sample-apps Platform queryIAPClawbackHistory \
    --namespace $AB_NAMESPACE \
    --endTime 'JwTfp7NdMzhg8OE0' \
    --eventType 'CHARGEBACK_REVERSED' \
    --externalOrderId 'bwPs4NRDrAt3zMkF' \
    --limit '72' \
    --offset '88' \
    --startTime 'tx1jcqfHKw03egPy' \
    --status 'SUCCESS' \
    --userId 'XlJpfrpGGpxic8V1' \
    > test.out 2>&1
eval_tap $? 69 'QueryIAPClawbackHistory' test.out

#- 70 MockPlayStationStreamEvent
samples/cli/sample-apps Platform mockPlayStationStreamEvent \
    --namespace $AB_NAMESPACE \
    --body '{"body": {"account": "an6aQ6uB1A5gL8VE", "additionalData": {"entitlement": [{"clientTransaction": [{"amountConsumed": 44, "clientTransactionId": "mKndrXbydSBsvxth"}, {"amountConsumed": 74, "clientTransactionId": "xYNFMId9Bv3rt9um"}, {"amountConsumed": 73, "clientTransactionId": "LzCF4wqSCBLrMAwu"}], "entitlementId": "7ytXST8kmJuscliu", "usageCount": 66}, {"clientTransaction": [{"amountConsumed": 46, "clientTransactionId": "GtWluW7ySXh8jXG3"}, {"amountConsumed": 36, "clientTransactionId": "GXBHkC13LDZ7wV7Z"}, {"amountConsumed": 51, "clientTransactionId": "0TT53XmVkzt8DPDI"}], "entitlementId": "oWBX16VfE3j0NuRZ", "usageCount": 59}, {"clientTransaction": [{"amountConsumed": 2, "clientTransactionId": "cOkgz8BFrD6QU7yS"}, {"amountConsumed": 86, "clientTransactionId": "UbLEvJf2rWbPHGPb"}, {"amountConsumed": 74, "clientTransactionId": "mebUrph0MfUTMXif"}], "entitlementId": "kfFow81mgGeLJ49d", "usageCount": 7}], "purpose": "UqHmVBToop3qutPO"}, "originalTitleName": "sofyrcfz8yndK4gT", "paymentProductSKU": "mWuQbLXIzzg1aeqC", "purchaseDate": "BSAXFALqEbgT1Vdc", "sourceOrderItemId": "OYTrgySrk9qwVMyh", "titleName": "QOwvYXGjJGFI4NMy"}, "eventDomain": "8XG2nGJLHqIjiwha", "eventSource": "2KiBEYIYC3PLhnFR", "eventType": "ysCbU5E4Vd8x5o6j", "eventVersion": 53, "id": "cYUajOrz9ah5Mkkt", "timestamp": "dQtRqIJrFiHeinHF"}' \
    > test.out 2>&1
eval_tap $? 70 'MockPlayStationStreamEvent' test.out

#- 71 GetAppleIAPConfig
samples/cli/sample-apps Platform getAppleIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 71 'GetAppleIAPConfig' test.out

#- 72 UpdateAppleIAPConfig
samples/cli/sample-apps Platform updateAppleIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"bundleId": "lLa3h57j5bdLZ4K2", "password": "rF42mXCy8Z97G09y"}' \
    > test.out 2>&1
eval_tap $? 72 'UpdateAppleIAPConfig' test.out

#- 73 DeleteAppleIAPConfig
samples/cli/sample-apps Platform deleteAppleIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 73 'DeleteAppleIAPConfig' test.out

#- 74 GetEpicGamesIAPConfig
samples/cli/sample-apps Platform getEpicGamesIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 74 'GetEpicGamesIAPConfig' test.out

#- 75 UpdateEpicGamesIAPConfig
samples/cli/sample-apps Platform updateEpicGamesIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"sandboxId": "tMCaUQDVgTsJQde9"}' \
    > test.out 2>&1
eval_tap $? 75 'UpdateEpicGamesIAPConfig' test.out

#- 76 DeleteEpicGamesIAPConfig
samples/cli/sample-apps Platform deleteEpicGamesIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 76 'DeleteEpicGamesIAPConfig' test.out

#- 77 GetGoogleIAPConfig
samples/cli/sample-apps Platform getGoogleIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 77 'GetGoogleIAPConfig' test.out

#- 78 UpdateGoogleIAPConfig
samples/cli/sample-apps Platform updateGoogleIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"applicationName": "B4IWIh4Irqo1334D", "serviceAccountId": "FZKCc2wHUHLMDdE7"}' \
    > test.out 2>&1
eval_tap $? 78 'UpdateGoogleIAPConfig' test.out

#- 79 DeleteGoogleIAPConfig
samples/cli/sample-apps Platform deleteGoogleIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 79 'DeleteGoogleIAPConfig' test.out

#- 80 UpdateGoogleP12File
samples/cli/sample-apps Platform updateGoogleP12File \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 80 'UpdateGoogleP12File' test.out

#- 81 GetIAPItemConfig
samples/cli/sample-apps Platform getIAPItemConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 81 'GetIAPItemConfig' test.out

#- 82 UpdateIAPItemConfig
samples/cli/sample-apps Platform updateIAPItemConfig \
    --namespace $AB_NAMESPACE \
    --body '{"data": [{"itemIdentity": "oW6URZWaIGSnmPdH", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"9wB654KBHpLZawBs": "RdLTVTvT0an6Ipl8", "FGxNscmtkmvpRQ7M": "ybajzXE33ZTUM9rL", "EKQYUDtFcljPhBf4": "qDffu8JxGhyFF7ys"}}, {"itemIdentity": "aqEyqUMKEjCIpAYy", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"i88IldAu0r4Jski6": "PHkK7BKZ5eKzjOZp", "oWQXUevqdE48sysd": "efCBuOOCkbc8ZwLg", "MCUcoR6rGpCujyOi": "jmh9kS0qTgA7Wjri"}}, {"itemIdentity": "AIaDk2zsEflKBifv", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"B0tEQXvaTyADuNsF": "xS3BbOEa4ZzxPnBC", "GV2GlZLo1yGCvNXL": "TzTgecAke7BbvklD", "HRAlfPeXF3Ph1hF2": "xUrteJ8538vkkJWw"}}]}' \
    > test.out 2>&1
eval_tap $? 82 'UpdateIAPItemConfig' test.out

#- 83 DeleteIAPItemConfig
samples/cli/sample-apps Platform deleteIAPItemConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 83 'DeleteIAPItemConfig' test.out

#- 84 GetOculusIAPConfig
samples/cli/sample-apps Platform getOculusIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 84 'GetOculusIAPConfig' test.out

#- 85 UpdateOculusIAPConfig
samples/cli/sample-apps Platform updateOculusIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"appId": "c6Tef6UhP9Iu8jRF", "appSecret": "pe1Hr1gtlbMz3sOy"}' \
    > test.out 2>&1
eval_tap $? 85 'UpdateOculusIAPConfig' test.out

#- 86 DeleteOculusIAPConfig
samples/cli/sample-apps Platform deleteOculusIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 86 'DeleteOculusIAPConfig' test.out

#- 87 GetPlayStationIAPConfig
samples/cli/sample-apps Platform getPlayStationIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 87 'GetPlayStationIAPConfig' test.out

#- 88 UpdatePlaystationIAPConfig
samples/cli/sample-apps Platform updatePlaystationIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"backOfficeServerClientId": "Br8InFakF568IvmQ", "backOfficeServerClientSecret": "CSZivh7cKFXPzJRR", "enableStreamJob": true, "environment": "FfD1Qtq7cxsfhfyC", "streamName": "Z7MZ9Dv011xAcln5", "streamPartnerName": "Cek1pexlJni9IMvk"}' \
    > test.out 2>&1
eval_tap $? 88 'UpdatePlaystationIAPConfig' test.out

#- 89 DeletePlaystationIAPConfig
samples/cli/sample-apps Platform deletePlaystationIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 89 'DeletePlaystationIAPConfig' test.out

#- 90 ValidateExistedPlaystationIAPConfig
samples/cli/sample-apps Platform validateExistedPlaystationIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 90 'ValidateExistedPlaystationIAPConfig' test.out

#- 91 ValidatePlaystationIAPConfig
samples/cli/sample-apps Platform validatePlaystationIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"backOfficeServerClientId": "zKhwxedzNt2UXdPv", "backOfficeServerClientSecret": "qU68TDQjqrUfAJs3", "enableStreamJob": false, "environment": "KxZAN8cckZVQidnZ", "streamName": "2K6mZA0rJ3XhlOeB", "streamPartnerName": "07iafWRnXjBoiklV"}' \
    > test.out 2>&1
eval_tap $? 91 'ValidatePlaystationIAPConfig' test.out

#- 92 GetSteamIAPConfig
samples/cli/sample-apps Platform getSteamIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 92 'GetSteamIAPConfig' test.out

#- 93 UpdateSteamIAPConfig
samples/cli/sample-apps Platform updateSteamIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"appId": "OsC7waLBnM8DfHJG", "publisherAuthenticationKey": "XraETc7eokbqBPf1"}' \
    > test.out 2>&1
eval_tap $? 93 'UpdateSteamIAPConfig' test.out

#- 94 DeleteSteamIAPConfig
samples/cli/sample-apps Platform deleteSteamIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 94 'DeleteSteamIAPConfig' test.out

#- 95 GetTwitchIAPConfig
samples/cli/sample-apps Platform getTwitchIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 95 'GetTwitchIAPConfig' test.out

#- 96 UpdateTwitchIAPConfig
samples/cli/sample-apps Platform updateTwitchIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"clientId": "K9LK3pmop32S65y0", "clientSecret": "LOJ3Him4tPipHeot", "organizationId": "a6e4n4l04WCBDx2u"}' \
    > test.out 2>&1
eval_tap $? 96 'UpdateTwitchIAPConfig' test.out

#- 97 DeleteTwitchIAPConfig
samples/cli/sample-apps Platform deleteTwitchIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 97 'DeleteTwitchIAPConfig' test.out

#- 98 GetXblIAPConfig
samples/cli/sample-apps Platform getXblIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 98 'GetXblIAPConfig' test.out

#- 99 UpdateXblIAPConfig
samples/cli/sample-apps Platform updateXblIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"relyingPartyCert": "z4ktFEnX4ptEfBT2"}' \
    > test.out 2>&1
eval_tap $? 99 'UpdateXblIAPConfig' test.out

#- 100 DeleteXblAPConfig
samples/cli/sample-apps Platform deleteXblAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 100 'DeleteXblAPConfig' test.out

#- 101 UpdateXblBPCertFile
samples/cli/sample-apps Platform updateXblBPCertFile \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    --password 'wOlopE0HuyksS49s' \
    > test.out 2>&1
eval_tap $? 101 'UpdateXblBPCertFile' test.out

#- 102 DownloadInvoiceDetails
samples/cli/sample-apps Platform downloadInvoiceDetails \
    --namespace $AB_NAMESPACE \
    --feature 'hUIzr9csaTrVeN4M' \
    --itemId 'Krv9xa0bHLrOi9OZ' \
    --itemType 'SEASON' \
    --endTime '88pBiJa72vD0s57B' \
    --startTime 'yOcw2mkfujJJWJAb' \
    > test.out 2>&1
eval_tap $? 102 'DownloadInvoiceDetails' test.out

#- 103 GenerateInvoiceSummary
samples/cli/sample-apps Platform generateInvoiceSummary \
    --namespace $AB_NAMESPACE \
    --feature 'tvv48JXAbjK2nSOC' \
    --itemId 'UMNXDd1mFEuYIhRl' \
    --itemType 'SEASON' \
    --endTime 'R9K8ADQEXEFV7R9L' \
    --startTime 'pxrItNgscWlKZDY6' \
    > test.out 2>&1
eval_tap $? 103 'GenerateInvoiceSummary' test.out

#- 104 SyncInGameItem
samples/cli/sample-apps Platform syncInGameItem \
    --namespace $AB_NAMESPACE \
    --storeId 'vgEyFyNCX7nh3AEr' \
    --body '{"categoryPath": "icM2V98IzKlphLlX", "targetItemId": "LR7EzRwZifq6d0Qf", "targetNamespace": "QoZ92rVo0n2U2ivw"}' \
    > test.out 2>&1
eval_tap $? 104 'SyncInGameItem' test.out

#- 105 CreateItem
samples/cli/sample-apps Platform createItem \
    --namespace $AB_NAMESPACE \
    --storeId '4nR6T7l1sTl8cgSF' \
    --body '{"appId": "Gzb4dwrj91me5fM5", "appType": "GAME", "baseAppId": "zD6GFgPSSSVIXD3J", "boothName": "Eju3F5xBsVAlf7P0", "categoryPath": "svyQp1dF7nmZ6bPh", "clazz": "2xTuQsBSZfcYTXnc", "displayOrder": 29, "entitlementType": "DURABLE", "ext": {"9s95YGwq8A6UJXQC": {}, "CmEFcuXC56XiZM3Z": {}, "KLbUgNgU53AGCPZr": {}}, "features": ["wsTpyQUnwCozLsv4", "TVmWDAKnyRCHnErw", "pe5TeOPGXVcLdWYh"], "flexible": false, "images": [{"as": "N7J2crkLHzAB8JAu", "caption": "gs9anIedvCmPAunL", "height": 7, "imageUrl": "njFHy6BcYF3Cinyf", "smallImageUrl": "x8QreStdabP9etqM", "width": 22}, {"as": "xDYksUd64Lo7euK4", "caption": "yzYoOIR06zcn4JSt", "height": 20, "imageUrl": "WpEvaC004sI8iGwQ", "smallImageUrl": "HNvFkVI9DuPyntmR", "width": 43}, {"as": "9PfY4BqTO2rmd7uv", "caption": "sgJhwPUWMMvRtWWd", "height": 1, "imageUrl": "ATyh8IV3yTsozEwo", "smallImageUrl": "RnGgQfNaSDr29t0s", "width": 33}], "inventoryConfig": {"customAttributes": {"yXantQyOnNHPy1eD": {}, "3FPWpQEblbrZVpVy": {}, "TGDZ4KesbgbjPwfg": {}}, "serverCustomAttributes": {"PY4iIXG4OtRZfYgY": {}, "czjIYYoWBaqYkmML": {}, "dJHGd3ZvZrPRd0eg": {}}, "slotUsed": 21}, "itemIds": ["t2dYDbnisvrYoOCh", "6JUk5An5dnjnccrG", "30xrGRuEzx0y9Pki"], "itemQty": {"BVgIW3rgNG8oet4k": 53, "q0jNnhHW6EVAKBdG": 94, "c8m7DYOgok8lpKUh": 26}, "itemType": "CODE", "listable": false, "localizations": {"ZJuAaijmBuw95Rt9": {"description": "0KRcfxWuXFsjS0i3", "localExt": {"ZusgUodVvHxE2wA7": {}, "gz3kRaqc7VVEDVia": {}, "TBwirdZ2zvde3x8C": {}}, "longDescription": "7FaFHKZ0N6QERJep", "title": "NrK5XAQHbgpeEhIr"}, "RjdF0orM1Wddmtmt": {"description": "QR6KuosNBfI8AjOw", "localExt": {"DELL2s5maE2lFneS": {}, "RQWKHoUC0g7Nknlu": {}, "ejGUqqjy5wqGdekO": {}}, "longDescription": "LGnQrw3NSnUgVV9w", "title": "hB739N9cntDGCT1y"}, "FiGvyRBzdiypB7K8": {"description": "TNR30K8JqSRq0S2W", "localExt": {"NVSC3jwk6nM8qoVf": {}, "OKLKTMS8dmMh3Jn0": {}, "9rmbpEqyqUvdBLRy": {}}, "longDescription": "WhHgrokYRNFCw4fe", "title": "03p1R3SdgwuAqUS2"}}, "lootBoxConfig": {"rewardCount": 55, "rewards": [{"lootBoxItems": [{"count": 61, "duration": 8, "endDate": "1984-10-02T00:00:00Z", "itemId": "XgxeTrhxszyJfOGc", "itemSku": "goBJHOAJOrI2IsHF", "itemType": "WE1IqC41hcS11l4R"}, {"count": 83, "duration": 94, "endDate": "1972-04-08T00:00:00Z", "itemId": "wcIAzazv9IZosmcb", "itemSku": "ozDOVPfCsxJGeCL4", "itemType": "BM1ZAo3REjmd72x0"}, {"count": 18, "duration": 22, "endDate": "1973-10-12T00:00:00Z", "itemId": "01sQ4BilaEEvLBnW", "itemSku": "8NS7rgJJwaLyCDHF", "itemType": "IGaw42bv8BXumGRc"}], "name": "t5EgERmXgGUsY829", "odds": 0.7688518651802496, "type": "REWARD", "weight": 58}, {"lootBoxItems": [{"count": 24, "duration": 96, "endDate": "1987-04-12T00:00:00Z", "itemId": "biSuNcbAKFStnNeJ", "itemSku": "RSy6T72cvgSlYG0W", "itemType": "2p2CUCHkwEWZmV1P"}, {"count": 23, "duration": 58, "endDate": "1986-12-03T00:00:00Z", "itemId": "ldp7O2Nkarhu7Dxw", "itemSku": "bahW8wvb1xzCNSYQ", "itemType": "6dfTGKOhgq7ez6FS"}, {"count": 27, "duration": 52, "endDate": "1979-04-10T00:00:00Z", "itemId": "CpZXdWhNDdgdUVBS", "itemSku": "HKlhAA5V17W2X6c2", "itemType": "y23iZFwvzco8DXm1"}], "name": "ca7Kl6IGa4dGQaNY", "odds": 0.06772393783502617, "type": "REWARD", "weight": 97}, {"lootBoxItems": [{"count": 20, "duration": 99, "endDate": "1983-12-25T00:00:00Z", "itemId": "L5dMP4vSUiaLjEzy", "itemSku": "mOsIJmFuxdbucWW3", "itemType": "B7Ie3aRwVNboTlAe"}, {"count": 47, "duration": 62, "endDate": "1976-04-23T00:00:00Z", "itemId": "GB8HfmsbJVcScCVl", "itemSku": "UsULPblc81Oea3Ag", "itemType": "zZRzWpJ8eCKGxxWt"}, {"count": 40, "duration": 89, "endDate": "1993-09-13T00:00:00Z", "itemId": "HVaXsRIAdUv3VNYW", "itemSku": "z9jU1Veqmo0rcunq", "itemType": "BolP40Xbn3ztmG0j"}], "name": "5ui8qUcMuI1NXTYP", "odds": 0.08563677244601642, "type": "REWARD", "weight": 25}], "rollFunction": "DEFAULT"}, "maxCount": 52, "maxCountPerUser": 29, "name": "UUOHcUVc1H5OMK1V", "optionBoxConfig": {"boxItems": [{"count": 85, "duration": 86, "endDate": "1990-11-01T00:00:00Z", "itemId": "WvtonHU0PCfcfOtt", "itemSku": "9C4t9IiI5NaBT3qt", "itemType": "pDLUv4RB8UP67ES7"}, {"count": 87, "duration": 80, "endDate": "1974-08-08T00:00:00Z", "itemId": "15uIJ0ZirItuTBuR", "itemSku": "V2nqGa9xTVcb0VYy", "itemType": "1uYionCz6wVQ2KLn"}, {"count": 15, "duration": 20, "endDate": "1980-01-09T00:00:00Z", "itemId": "4lw6zYkNA7Obky6E", "itemSku": "q9L779KSCvqMbdXB", "itemType": "y3WMXDDyDY0VwTNJ"}]}, "purchasable": false, "recurring": {"cycle": "YEARLY", "fixedFreeDays": 58, "fixedTrialCycles": 51, "graceDays": 79}, "regionData": {"qEn5NRNw21CJGrp5": [{"currencyCode": "tmpwMw8l72JTvkTG", "currencyNamespace": "LSsuqWN3Yhj6h0Bk", "currencyType": "VIRTUAL", "discountAmount": 95, "discountExpireAt": "1977-09-24T00:00:00Z", "discountPercentage": 12, "discountPurchaseAt": "1978-04-11T00:00:00Z", "expireAt": "1976-06-14T00:00:00Z", "price": 88, "purchaseAt": "1983-11-22T00:00:00Z", "trialPrice": 1}, {"currencyCode": "TZ2zwXRZKtHkIQxa", "currencyNamespace": "vKPrwqpYiNp6BtIz", "currencyType": "VIRTUAL", "discountAmount": 50, "discountExpireAt": "1973-06-24T00:00:00Z", "discountPercentage": 81, "discountPurchaseAt": "1984-04-19T00:00:00Z", "expireAt": "1996-12-12T00:00:00Z", "price": 97, "purchaseAt": "1990-07-06T00:00:00Z", "trialPrice": 22}, {"currencyCode": "zCo4wWE1qknRt0C7", "currencyNamespace": "FEmeEiAPVB2PcpsY", "currencyType": "VIRTUAL", "discountAmount": 79, "discountExpireAt": "1998-10-07T00:00:00Z", "discountPercentage": 78, "discountPurchaseAt": "1982-03-20T00:00:00Z", "expireAt": "1989-03-12T00:00:00Z", "price": 44, "purchaseAt": "1977-03-22T00:00:00Z", "trialPrice": 70}], "srsbe4zWEzmmOeZY": [{"currencyCode": "sI2IGXNPRe2ZraWn", "currencyNamespace": "FhdOSAkRQR7WKwh8", "currencyType": "VIRTUAL", "discountAmount": 6, "discountExpireAt": "1993-01-19T00:00:00Z", "discountPercentage": 88, "discountPurchaseAt": "1981-02-21T00:00:00Z", "expireAt": "1980-08-08T00:00:00Z", "price": 68, "purchaseAt": "1987-03-23T00:00:00Z", "trialPrice": 43}, {"currencyCode": "y0Qygs8lMfxqGGov", "currencyNamespace": "Tx44w9MKS99rUpmn", "currencyType": "VIRTUAL", "discountAmount": 95, "discountExpireAt": "1974-04-10T00:00:00Z", "discountPercentage": 80, "discountPurchaseAt": "1991-10-12T00:00:00Z", "expireAt": "1987-03-17T00:00:00Z", "price": 100, "purchaseAt": "1981-07-27T00:00:00Z", "trialPrice": 4}, {"currencyCode": "fptahiZTrEmD4TfW", "currencyNamespace": "4wWRXCNxj04xxu2L", "currencyType": "VIRTUAL", "discountAmount": 89, "discountExpireAt": "1991-05-29T00:00:00Z", "discountPercentage": 85, "discountPurchaseAt": "1983-06-19T00:00:00Z", "expireAt": "1986-12-12T00:00:00Z", "price": 91, "purchaseAt": "1971-08-13T00:00:00Z", "trialPrice": 17}], "0D2EOZFepnoLJFsq": [{"currencyCode": "zWOxI5u6tLiTQVGv", "currencyNamespace": "NVonVo54VX03C9LU", "currencyType": "REAL", "discountAmount": 68, "discountExpireAt": "1988-05-08T00:00:00Z", "discountPercentage": 44, "discountPurchaseAt": "1977-01-25T00:00:00Z", "expireAt": "1996-11-07T00:00:00Z", "price": 73, "purchaseAt": "1978-09-02T00:00:00Z", "trialPrice": 9}, {"currencyCode": "7JRfqOGjA0Ua1nuQ", "currencyNamespace": "f83N2MNLkSLWPdlR", "currencyType": "REAL", "discountAmount": 53, "discountExpireAt": "1998-09-29T00:00:00Z", "discountPercentage": 53, "discountPurchaseAt": "1976-07-24T00:00:00Z", "expireAt": "1978-03-20T00:00:00Z", "price": 59, "purchaseAt": "1981-09-04T00:00:00Z", "trialPrice": 53}, {"currencyCode": "bdrS3ZBH4S45MdZu", "currencyNamespace": "VuIXap87BPSdyWal", "currencyType": "VIRTUAL", "discountAmount": 59, "discountExpireAt": "1992-06-28T00:00:00Z", "discountPercentage": 43, "discountPurchaseAt": "1999-12-01T00:00:00Z", "expireAt": "1995-12-21T00:00:00Z", "price": 87, "purchaseAt": "1986-03-03T00:00:00Z", "trialPrice": 21}]}, "saleConfig": {"currencyCode": "blyymMjSgjyP30jA", "price": 5}, "seasonType": "PASS", "sectionExclusive": false, "sellable": true, "sku": "uoR2QJAGmNdTa3D7", "stackable": true, "status": "ACTIVE", "tags": ["V6O5O1yxNdzy7jFY", "bsZZpiAlHi2araa0", "CAwBKv1cc2Q8Yb5I"], "targetCurrencyCode": "zfj4S3JNftk1xz11", "targetNamespace": "P1nLrYjgh0s09iKq", "thumbnailUrl": "J0xWTNNikrE6QATh", "useCount": 9}' \
    > test.out 2>&1
eval_tap $? 105 'CreateItem' test.out

#- 106 GetItemByAppId
samples/cli/sample-apps Platform getItemByAppId \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId '2ooL3PaX0Asdvma1' \
    --appId 'HJTPyYBrqFRiDzeP' \
    > test.out 2>&1
eval_tap $? 106 'GetItemByAppId' test.out

#- 107 QueryItems
samples/cli/sample-apps Platform queryItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --appType 'DLC' \
    --availableDate '98JpidxTxXCWccur' \
    --baseAppId 'CbDmd3jhYUpN1eAT' \
    --categoryPath 'KilCby0O8QUdUt9F' \
    --features '7EzQydWITU5l0OKG' \
    --includeSubCategoryItem 'true' \
    --itemType 'EXTENSION' \
    --limit '8' \
    --offset '45' \
    --region 'tnJAt3GfZqqvyvy2' \
    --sortBy '["name:desc", "updatedAt:asc", "name:asc"]' \
    --storeId '5Q5bdvK3sXlmJRiz' \
    --tags 'LE85nnrlQK10VqN5' \
    --targetNamespace '6VS5srqzKXoRFyW4' \
    > test.out 2>&1
eval_tap $? 107 'QueryItems' test.out

#- 108 ListBasicItemsByFeatures
samples/cli/sample-apps Platform listBasicItemsByFeatures \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --features '["cWqaekstcXpwVZ0G", "ZWzvsSCl19AZ9bxR", "Mcf7aPQ4cMWrYdLo"]' \
    > test.out 2>&1
eval_tap $? 108 'ListBasicItemsByFeatures' test.out

#- 109 GetItems
samples/cli/sample-apps Platform getItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --storeId 'wPpW2nIflDJOlm6y' \
    --itemIds '7QlEOgVVrM6idwNM' \
    > test.out 2>&1
eval_tap $? 109 'GetItems' test.out

#- 110 GetItemBySku
samples/cli/sample-apps Platform getItemBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId '1dZGaaO9i8hP5Fcn' \
    --sku 'l2oxg3UfA7QHScd7' \
    > test.out 2>&1
eval_tap $? 110 'GetItemBySku' test.out

#- 111 GetLocaleItemBySku
samples/cli/sample-apps Platform getLocaleItemBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --language 'D64ojFbGgSecimwr' \
    --populateBundle 'true' \
    --region 'kFCweW8wpsTI1OWR' \
    --storeId 'Io4bBIs2ppicJbH2' \
    --sku 'rGqGn1H9uMwUSUOt' \
    > test.out 2>&1
eval_tap $? 111 'GetLocaleItemBySku' test.out

#- 112 GetEstimatedPrice
samples/cli/sample-apps Platform getEstimatedPrice \
    --namespace $AB_NAMESPACE \
    --platform 'gcT1MsRhJVTJS5Vc' \
    --region 'FEfJNRc1C91gdzEa' \
    --storeId 'WInSF8DRbta9NgZ4' \
    --itemIds 'Z6HZDNEb1Jpd8PHP' \
    --userId 'i9sLcVW0sqlzgyCd' \
    > test.out 2>&1
eval_tap $? 112 'GetEstimatedPrice' test.out

#- 113 GetItemIdBySku
samples/cli/sample-apps Platform getItemIdBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --storeId 'BSiBaQ0ROpVICSvh' \
    --sku '124pJ0bDaClh0CA4' \
    > test.out 2>&1
eval_tap $? 113 'GetItemIdBySku' test.out

#- 114 GetBulkItemIdBySkus
samples/cli/sample-apps Platform getBulkItemIdBySkus \
    --namespace $AB_NAMESPACE \
    --sku '["tdgzgboKtJFg14wO", "yxTNL0X54erxk7j7", "t6fnPIIHbl0AD86V"]' \
    --storeId 't1oa0HaLerCEShoC' \
    > test.out 2>&1
eval_tap $? 114 'GetBulkItemIdBySkus' test.out

#- 115 BulkGetLocaleItems
samples/cli/sample-apps Platform bulkGetLocaleItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --language 'lflFRBlfqNTJc1vR' \
    --region 'VFtvIxP9j2o0EQmW' \
    --storeId 'XGRfqO6athdHlsAx' \
    --itemIds '4WxZdmSv3IIeBK8W' \
    > test.out 2>&1
eval_tap $? 115 'BulkGetLocaleItems' test.out

#- 116 GetAvailablePredicateTypes
samples/cli/sample-apps Platform getAvailablePredicateTypes \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 116 'GetAvailablePredicateTypes' test.out

#- 117 ValidateItemPurchaseCondition
samples/cli/sample-apps Platform validateItemPurchaseCondition \
    --namespace $AB_NAMESPACE \
    --platform 'qn9vrbSr7Qs9Rk11' \
    --userId '33v8uHinUVRH1Tw4' \
    --body '{"itemIds": ["hgPXt4FNNHI7P8aS", "CqUnODfEAPiwTUby", "l4uss87SJriWeLHh"]}' \
    > test.out 2>&1
eval_tap $? 117 'ValidateItemPurchaseCondition' test.out

#- 118 BulkUpdateRegionData
samples/cli/sample-apps Platform bulkUpdateRegionData \
    --namespace $AB_NAMESPACE \
    --storeId '9qqJ0h4at2qdSzVz' \
    --body '{"changes": [{"itemIdentities": ["b0Lpi2yrLID9FurQ", "NlTzxTZu8LmeEd5f", "nY4DMVccUXh5F8DW"], "itemIdentityType": "ITEM_ID", "regionData": {"jFRSaZWnGqTC5uio": [{"currencyCode": "cIeceutouorh56R5", "currencyNamespace": "d21QoGuHOquP47mC", "currencyType": "VIRTUAL", "discountAmount": 76, "discountExpireAt": "1993-01-19T00:00:00Z", "discountPercentage": 94, "discountPurchaseAt": "1992-07-07T00:00:00Z", "discountedPrice": 81, "expireAt": "1990-03-23T00:00:00Z", "price": 53, "purchaseAt": "1972-07-10T00:00:00Z", "trialPrice": 27}, {"currencyCode": "HfcQ4qRZcjw7TZet", "currencyNamespace": "Uu61Pxsu4ei6sITc", "currencyType": "REAL", "discountAmount": 33, "discountExpireAt": "1972-08-02T00:00:00Z", "discountPercentage": 82, "discountPurchaseAt": "1985-03-15T00:00:00Z", "discountedPrice": 84, "expireAt": "1979-06-19T00:00:00Z", "price": 59, "purchaseAt": "1992-02-07T00:00:00Z", "trialPrice": 5}, {"currencyCode": "AUg534tnJm0Cpr1t", "currencyNamespace": "E7EDPQm5nMFlgdBJ", "currencyType": "REAL", "discountAmount": 13, "discountExpireAt": "1987-02-17T00:00:00Z", "discountPercentage": 15, "discountPurchaseAt": "1981-02-10T00:00:00Z", "discountedPrice": 90, "expireAt": "1988-03-14T00:00:00Z", "price": 27, "purchaseAt": "1999-03-06T00:00:00Z", "trialPrice": 45}], "sur6y7lukTXdMXk2": [{"currencyCode": "g5vToL98McJiPDbF", "currencyNamespace": "LkRvDHP4KMS3CxUv", "currencyType": "REAL", "discountAmount": 22, "discountExpireAt": "1999-04-01T00:00:00Z", "discountPercentage": 27, "discountPurchaseAt": "1979-07-31T00:00:00Z", "discountedPrice": 31, "expireAt": "1985-02-28T00:00:00Z", "price": 46, "purchaseAt": "1977-10-13T00:00:00Z", "trialPrice": 9}, {"currencyCode": "B51JMbgskEoPSrIr", "currencyNamespace": "ZvI7KTW6q0YRBFxV", "currencyType": "VIRTUAL", "discountAmount": 49, "discountExpireAt": "1984-05-10T00:00:00Z", "discountPercentage": 0, "discountPurchaseAt": "1997-04-19T00:00:00Z", "discountedPrice": 57, "expireAt": "1978-02-15T00:00:00Z", "price": 11, "purchaseAt": "1988-10-26T00:00:00Z", "trialPrice": 62}, {"currencyCode": "epLOVf4A023IzYtk", "currencyNamespace": "NBhOjKlaNPvapzxw", "currencyType": "VIRTUAL", "discountAmount": 3, "discountExpireAt": "1996-02-29T00:00:00Z", "discountPercentage": 11, "discountPurchaseAt": "1975-11-21T00:00:00Z", "discountedPrice": 34, "expireAt": "1974-11-24T00:00:00Z", "price": 50, "purchaseAt": "1993-11-21T00:00:00Z", "trialPrice": 93}], "BsKQTokDx1mXu1RO": [{"currencyCode": "zmQNlP4YvS50d8Ci", "currencyNamespace": "quAQv9J9xmyspQdz", "currencyType": "VIRTUAL", "discountAmount": 100, "discountExpireAt": "1972-06-17T00:00:00Z", "discountPercentage": 14, "discountPurchaseAt": "1976-10-05T00:00:00Z", "discountedPrice": 82, "expireAt": "1976-02-18T00:00:00Z", "price": 82, "purchaseAt": "1988-12-30T00:00:00Z", "trialPrice": 59}, {"currencyCode": "3isYzL9nY6MVkgwi", "currencyNamespace": "31pGuNOsCVEiDOcd", "currencyType": "VIRTUAL", "discountAmount": 80, "discountExpireAt": "1979-06-13T00:00:00Z", "discountPercentage": 72, "discountPurchaseAt": "1993-03-09T00:00:00Z", "discountedPrice": 32, "expireAt": "1980-11-04T00:00:00Z", "price": 51, "purchaseAt": "1974-05-03T00:00:00Z", "trialPrice": 31}, {"currencyCode": "7RPO4KJW7wpCfJrN", "currencyNamespace": "bERxVbJ1TAT5pmmL", "currencyType": "REAL", "discountAmount": 55, "discountExpireAt": "1971-06-10T00:00:00Z", "discountPercentage": 90, "discountPurchaseAt": "1973-12-05T00:00:00Z", "discountedPrice": 83, "expireAt": "1973-05-08T00:00:00Z", "price": 6, "purchaseAt": "1993-01-28T00:00:00Z", "trialPrice": 53}]}}, {"itemIdentities": ["hEyX6AvKwXGluJM4", "aGZGXfpiQnSqUpL5", "Fxn9PtHOphkHBNsK"], "itemIdentityType": "ITEM_SKU", "regionData": {"7iefH7vNj9Kz4smh": [{"currencyCode": "a2CObF3gTOfVdxPs", "currencyNamespace": "WkJdgPpZhXxasSfT", "currencyType": "VIRTUAL", "discountAmount": 53, "discountExpireAt": "1985-08-28T00:00:00Z", "discountPercentage": 22, "discountPurchaseAt": "1978-04-09T00:00:00Z", "discountedPrice": 76, "expireAt": "1971-06-03T00:00:00Z", "price": 70, "purchaseAt": "1998-07-15T00:00:00Z", "trialPrice": 25}, {"currencyCode": "yuL8T91LncRO9caw", "currencyNamespace": "ca6eVQ90SDtUwa2E", "currencyType": "REAL", "discountAmount": 35, "discountExpireAt": "1994-07-08T00:00:00Z", "discountPercentage": 39, "discountPurchaseAt": "1985-05-25T00:00:00Z", "discountedPrice": 8, "expireAt": "1992-02-01T00:00:00Z", "price": 32, "purchaseAt": "1992-06-20T00:00:00Z", "trialPrice": 10}, {"currencyCode": "5TvvaL0IqXehRL0K", "currencyNamespace": "Znirn3RhXTTcP0wy", "currencyType": "VIRTUAL", "discountAmount": 62, "discountExpireAt": "1998-06-11T00:00:00Z", "discountPercentage": 32, "discountPurchaseAt": "1971-08-28T00:00:00Z", "discountedPrice": 5, "expireAt": "1988-04-24T00:00:00Z", "price": 60, "purchaseAt": "1980-07-22T00:00:00Z", "trialPrice": 8}], "TjON7uKWQ8uGQT60": [{"currencyCode": "iaGIlTLFKsWamioi", "currencyNamespace": "GjWzjZ7Zw3bvWWi1", "currencyType": "VIRTUAL", "discountAmount": 42, "discountExpireAt": "1987-01-08T00:00:00Z", "discountPercentage": 97, "discountPurchaseAt": "1983-12-12T00:00:00Z", "discountedPrice": 61, "expireAt": "1988-06-02T00:00:00Z", "price": 12, "purchaseAt": "1992-10-05T00:00:00Z", "trialPrice": 94}, {"currencyCode": "Q93hv754uMTsoB4P", "currencyNamespace": "DuWSvUPOuuUfP3Bo", "currencyType": "REAL", "discountAmount": 2, "discountExpireAt": "1990-03-31T00:00:00Z", "discountPercentage": 86, "discountPurchaseAt": "1976-02-01T00:00:00Z", "discountedPrice": 1, "expireAt": "1983-01-17T00:00:00Z", "price": 21, "purchaseAt": "1989-01-22T00:00:00Z", "trialPrice": 57}, {"currencyCode": "epOt9akkaqiChTYW", "currencyNamespace": "BdLdN8lF1Z6aAfUu", "currencyType": "VIRTUAL", "discountAmount": 9, "discountExpireAt": "1988-10-29T00:00:00Z", "discountPercentage": 51, "discountPurchaseAt": "1974-01-03T00:00:00Z", "discountedPrice": 61, "expireAt": "1972-11-04T00:00:00Z", "price": 22, "purchaseAt": "1973-02-15T00:00:00Z", "trialPrice": 88}], "9K98nrjQ43vZFHwY": [{"currencyCode": "UuIPzNFPw2xEKE83", "currencyNamespace": "sehbipWHp4eVnIUC", "currencyType": "REAL", "discountAmount": 22, "discountExpireAt": "1986-11-25T00:00:00Z", "discountPercentage": 5, "discountPurchaseAt": "1977-04-06T00:00:00Z", "discountedPrice": 81, "expireAt": "1998-01-17T00:00:00Z", "price": 23, "purchaseAt": "1982-02-16T00:00:00Z", "trialPrice": 95}, {"currencyCode": "aTBq6ZdC9tBzZd7q", "currencyNamespace": "gOUksaBzxlmFqUIT", "currencyType": "REAL", "discountAmount": 40, "discountExpireAt": "1974-01-23T00:00:00Z", "discountPercentage": 8, "discountPurchaseAt": "1997-04-13T00:00:00Z", "discountedPrice": 13, "expireAt": "1998-10-06T00:00:00Z", "price": 3, "purchaseAt": "1976-11-09T00:00:00Z", "trialPrice": 60}, {"currencyCode": "GJk8ECFJfQsPQPnz", "currencyNamespace": "OWTKGvxlTKLnAvAE", "currencyType": "REAL", "discountAmount": 100, "discountExpireAt": "1983-11-27T00:00:00Z", "discountPercentage": 55, "discountPurchaseAt": "1990-06-27T00:00:00Z", "discountedPrice": 31, "expireAt": "1986-12-10T00:00:00Z", "price": 62, "purchaseAt": "1985-09-19T00:00:00Z", "trialPrice": 91}]}}, {"itemIdentities": ["Sut9mM5JJfEFdv9C", "DqVq3OeOtqpCL1cl", "m4kugBpJXXQQSHvc"], "itemIdentityType": "ITEM_ID", "regionData": {"xSmpljEEL2jh0sNF": [{"currencyCode": "7DUCvA7Xdn7F1DiU", "currencyNamespace": "2hOEviv2BLKRS2MW", "currencyType": "VIRTUAL", "discountAmount": 84, "discountExpireAt": "1973-12-01T00:00:00Z", "discountPercentage": 86, "discountPurchaseAt": "1981-01-03T00:00:00Z", "discountedPrice": 100, "expireAt": "1991-02-24T00:00:00Z", "price": 94, "purchaseAt": "1987-05-02T00:00:00Z", "trialPrice": 30}, {"currencyCode": "ZViGTIthVdKtFtRR", "currencyNamespace": "0KL3i7vuWaRr5x9U", "currencyType": "REAL", "discountAmount": 9, "discountExpireAt": "1988-08-20T00:00:00Z", "discountPercentage": 54, "discountPurchaseAt": "1983-03-20T00:00:00Z", "discountedPrice": 7, "expireAt": "1984-06-29T00:00:00Z", "price": 45, "purchaseAt": "1987-04-17T00:00:00Z", "trialPrice": 26}, {"currencyCode": "5Z8Ldus0g67239rN", "currencyNamespace": "Z66BnTJYLx32b8rx", "currencyType": "REAL", "discountAmount": 98, "discountExpireAt": "1977-03-15T00:00:00Z", "discountPercentage": 14, "discountPurchaseAt": "1974-01-27T00:00:00Z", "discountedPrice": 27, "expireAt": "1989-04-04T00:00:00Z", "price": 97, "purchaseAt": "1986-01-05T00:00:00Z", "trialPrice": 86}], "IXrJU9gmH1ZzwA7X": [{"currencyCode": "Yz6AobZlzdaUANy6", "currencyNamespace": "d95C8JGUy75tZarn", "currencyType": "VIRTUAL", "discountAmount": 46, "discountExpireAt": "1998-11-06T00:00:00Z", "discountPercentage": 78, "discountPurchaseAt": "1978-01-21T00:00:00Z", "discountedPrice": 45, "expireAt": "1975-06-14T00:00:00Z", "price": 82, "purchaseAt": "1991-09-03T00:00:00Z", "trialPrice": 96}, {"currencyCode": "XUZONfTTZc9msJWa", "currencyNamespace": "s3E5YhI99EGwehke", "currencyType": "REAL", "discountAmount": 18, "discountExpireAt": "1976-07-15T00:00:00Z", "discountPercentage": 1, "discountPurchaseAt": "1982-10-18T00:00:00Z", "discountedPrice": 33, "expireAt": "1973-03-11T00:00:00Z", "price": 37, "purchaseAt": "1998-12-16T00:00:00Z", "trialPrice": 72}, {"currencyCode": "GKoIPnbaTqEcARuA", "currencyNamespace": "2M2Kx1uvsNQLLQVP", "currencyType": "VIRTUAL", "discountAmount": 79, "discountExpireAt": "1987-01-18T00:00:00Z", "discountPercentage": 89, "discountPurchaseAt": "1981-10-08T00:00:00Z", "discountedPrice": 65, "expireAt": "1991-11-16T00:00:00Z", "price": 88, "purchaseAt": "1996-07-18T00:00:00Z", "trialPrice": 95}], "Qc1IBSuuKc6gJkub": [{"currencyCode": "36tJLDnYXC3f4Efk", "currencyNamespace": "CwcVK3hQ1bFF1avR", "currencyType": "REAL", "discountAmount": 22, "discountExpireAt": "1984-09-26T00:00:00Z", "discountPercentage": 85, "discountPurchaseAt": "1991-01-13T00:00:00Z", "discountedPrice": 24, "expireAt": "1995-02-07T00:00:00Z", "price": 43, "purchaseAt": "1989-09-09T00:00:00Z", "trialPrice": 42}, {"currencyCode": "TszyLhRzasRZW1vS", "currencyNamespace": "MStsz7L94C5LeXWZ", "currencyType": "VIRTUAL", "discountAmount": 1, "discountExpireAt": "1999-05-20T00:00:00Z", "discountPercentage": 5, "discountPurchaseAt": "1975-09-08T00:00:00Z", "discountedPrice": 90, "expireAt": "1999-06-01T00:00:00Z", "price": 63, "purchaseAt": "1992-11-24T00:00:00Z", "trialPrice": 45}, {"currencyCode": "UuyIEGX7Hzlk3qQN", "currencyNamespace": "1gx0Ye6L8lHULZ5m", "currencyType": "REAL", "discountAmount": 85, "discountExpireAt": "1977-01-09T00:00:00Z", "discountPercentage": 3, "discountPurchaseAt": "1985-08-16T00:00:00Z", "discountedPrice": 74, "expireAt": "1983-03-15T00:00:00Z", "price": 13, "purchaseAt": "1993-12-26T00:00:00Z", "trialPrice": 55}]}}]}' \
    > test.out 2>&1
eval_tap $? 118 'BulkUpdateRegionData' test.out

#- 119 SearchItems
samples/cli/sample-apps Platform searchItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --itemType 'OPTIONBOX' \
    --limit '88' \
    --offset '30' \
    --sortBy 'M2sTlOaw2CTM1oKs' \
    --storeId '2dIbiwVFSHrQMdtY' \
    --keyword 'nj7UMy5pFrh9Vaev' \
    --language 'Mg2pVZxXgY0BOMxG' \
    > test.out 2>&1
eval_tap $? 119 'SearchItems' test.out

#- 120 QueryUncategorizedItems
samples/cli/sample-apps Platform queryUncategorizedItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --limit '42' \
    --offset '61' \
    --sortBy '["createdAt", "updatedAt:desc", "displayOrder:desc"]' \
    --storeId 'NfU0I8BSPSKQ6dkI' \
    > test.out 2>&1
eval_tap $? 120 'QueryUncategorizedItems' test.out

#- 121 GetItem
samples/cli/sample-apps Platform getItem \
    --itemId 'pyU5Hs4YO72ByB1C' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --storeId 'x7Nn26Ekxc3DmPuM' \
    > test.out 2>&1
eval_tap $? 121 'GetItem' test.out

#- 122 UpdateItem
samples/cli/sample-apps Platform updateItem \
    --itemId 't9rhJ0L5QLNU4K3k' \
    --namespace $AB_NAMESPACE \
    --storeId 'mCGZ6ibVAtgjWy7r' \
    --body '{"appId": "JsHZQETEMW3Wa41J", "appType": "GAME", "baseAppId": "FMvd1C7YE3AIulbB", "boothName": "CLzeY21bB1vVCzhU", "categoryPath": "wa4KzHuuo7Z66l6Y", "clazz": "vunDSKtaD2buQvVd", "displayOrder": 88, "entitlementType": "DURABLE", "ext": {"ffvSOxX3VtzTg8Vb": {}, "Fj3G7ictCkDQ8KSt": {}, "07dMybJk5LtdmDMJ": {}}, "features": ["ElV5zzBqxuoqDqWl", "naQbmRqLxrGYoKYC", "2X4XB1o58lF9ID5N"], "flexible": false, "images": [{"as": "QTj4nPsvcMEOzHWx", "caption": "4SU1wXQYREZWDyDn", "height": 7, "imageUrl": "pzXEyzf7YlCOUn6j", "smallImageUrl": "LOD9MXZuuWz7UeIU", "width": 20}, {"as": "kszHomLF7FCWQu37", "caption": "qNxo2xRsMAmKFqAi", "height": 78, "imageUrl": "Smh32HveJS2kpViB", "smallImageUrl": "wsJlRYBl6Dg2RVfV", "width": 99}, {"as": "kGoRUWi9sdxlguUU", "caption": "n70E37UhqZAUJJj2", "height": 6, "imageUrl": "uFZkwaPg0bMk1AAj", "smallImageUrl": "He3gt8Ch2jLTXuvQ", "width": 0}], "inventoryConfig": {"customAttributes": {"fQQIHB0UyHiXXBxo": {}, "svSEkp0gDnowk9i1": {}, "cnXjajwPgCHc4FKn": {}}, "serverCustomAttributes": {"NKFFRVywElRsLJSG": {}, "9ej3x2aM0QVZiTKn": {}, "a8KZaGU9rSUiU6gR": {}}, "slotUsed": 58}, "itemIds": ["vFxTbjzoapiPb7gk", "JPPWPfB3pT24YQF3", "wESGOy2anZfcDchM"], "itemQty": {"4reoOKJN8A0Q60I3": 46, "ZXWQS3p0K4fW8yas": 65, "5dr0r5RRFFKNpecd": 65}, "itemType": "COINS", "listable": true, "localizations": {"SCzgcZ7WVtRzp4dC": {"description": "1jkNG8SSTg1f16f7", "localExt": {"0SR43M9R4q2GzYce": {}, "rgxd5Ibj6TQvK2PV": {}, "z0XUnTDRRjizEA4Q": {}}, "longDescription": "QfgnYjEAWBI5AwYd", "title": "u6WgTfdlatpZxA0X"}, "VR8LR8RnqQl9oHe2": {"description": "FHZiVtf9ocYblClI", "localExt": {"K3rHqdvh7uEjlQp9": {}, "dEOBJSrvvl4kB3SO": {}, "Eg85Lvb5frYunVkS": {}}, "longDescription": "1diOdg0e3v4VMJns", "title": "QSSaPpM382D8V4zN"}, "8sERcaTSUyxhfJ3i": {"description": "mQ3hhVO6fmNcbt1f", "localExt": {"B6WGqWY5GSHFI41M": {}, "7XOKjXLzTyRDZXTA": {}, "5th00juuTdddLdaW": {}}, "longDescription": "BQ3iYkmHU8YyGmRk", "title": "Z74nps8wo0Z66iLk"}}, "lootBoxConfig": {"rewardCount": 3, "rewards": [{"lootBoxItems": [{"count": 28, "duration": 40, "endDate": "1976-04-29T00:00:00Z", "itemId": "ECEHbadTOEaOg6TN", "itemSku": "59yRBgXoSmf1EjMv", "itemType": "yAsJTRueLc8H3F96"}, {"count": 5, "duration": 17, "endDate": "1975-07-01T00:00:00Z", "itemId": "IR0cvZMxnyMfUdvQ", "itemSku": "IF3eZvcg9HgbpNln", "itemType": "riUXQoMBZZEfaM6K"}, {"count": 22, "duration": 65, "endDate": "1990-04-27T00:00:00Z", "itemId": "nYO8OdhZ609bF86r", "itemSku": "FekI8dmmqJyyFPcN", "itemType": "6RDgWmTHF7OkrOed"}], "name": "sgRYpovjUdGm1tdI", "odds": 0.08600476959426517, "type": "PROBABILITY_GROUP", "weight": 1}, {"lootBoxItems": [{"count": 80, "duration": 5, "endDate": "1980-09-12T00:00:00Z", "itemId": "QJzBOGP1Ayo9cEsl", "itemSku": "SVWtLdQYBP2eUL2R", "itemType": "7MlnpVpyJ58kZGS3"}, {"count": 57, "duration": 17, "endDate": "1976-10-27T00:00:00Z", "itemId": "C0SdVAwEClQlplOL", "itemSku": "3N9Ct2dIB4I84zYA", "itemType": "840kDQhIRbE2J3do"}, {"count": 53, "duration": 87, "endDate": "1973-07-22T00:00:00Z", "itemId": "CmiertFTvexIVCmX", "itemSku": "Oss1MWjtje7b3orY", "itemType": "fGK5orrZ1QKJjjnq"}], "name": "yZYvezIkboHZX5bx", "odds": 0.626781058644759, "type": "PROBABILITY_GROUP", "weight": 30}, {"lootBoxItems": [{"count": 18, "duration": 51, "endDate": "1981-04-14T00:00:00Z", "itemId": "dKKPp4jnZGnBuvwG", "itemSku": "b9p6CBBBiDK9DjXG", "itemType": "RcIsDXMH7O8ZEyWE"}, {"count": 4, "duration": 88, "endDate": "1985-11-03T00:00:00Z", "itemId": "HQ7dEPAOV35LCPeJ", "itemSku": "jqpW50oId2JEDbUz", "itemType": "iNj6WYaNpg3PjOzs"}, {"count": 97, "duration": 11, "endDate": "1998-05-31T00:00:00Z", "itemId": "Ajg0Di9Oz0vjztRa", "itemSku": "WahgVVAQEffVskq2", "itemType": "duyeizem1kkK3Ohc"}], "name": "2XsTU4oISSMTSpKG", "odds": 0.07278926301034472, "type": "REWARD", "weight": 10}], "rollFunction": "CUSTOM"}, "maxCount": 12, "maxCountPerUser": 84, "name": "FJ211RsUGdsOFSKS", "optionBoxConfig": {"boxItems": [{"count": 1, "duration": 13, "endDate": "1991-09-14T00:00:00Z", "itemId": "PG0T5yqIo2geQvpw", "itemSku": "ZXaLQaG98GxNrVUI", "itemType": "MkHH8Q3eTRgBRIVl"}, {"count": 58, "duration": 36, "endDate": "1975-06-18T00:00:00Z", "itemId": "kaXHE0rEeyezonEO", "itemSku": "Dj6QvzbKgmaDZ1bB", "itemType": "ml6cjHGfVEgoQKyD"}, {"count": 32, "duration": 70, "endDate": "1988-12-20T00:00:00Z", "itemId": "TW9PGRMcMQEoTBlQ", "itemSku": "9du28r5OCjvVZ3lB", "itemType": "UAyYTQmdVlecVvqO"}]}, "purchasable": true, "recurring": {"cycle": "MONTHLY", "fixedFreeDays": 69, "fixedTrialCycles": 91, "graceDays": 6}, "regionData": {"x3t2DRuGdAnPKxnE": [{"currencyCode": "J5Ky3vzvTNNYCCZ4", "currencyNamespace": "8RmOyCU4UZdIynAf", "currencyType": "VIRTUAL", "discountAmount": 9, "discountExpireAt": "1999-05-13T00:00:00Z", "discountPercentage": 48, "discountPurchaseAt": "1972-01-27T00:00:00Z", "expireAt": "1998-08-30T00:00:00Z", "price": 25, "purchaseAt": "1976-10-23T00:00:00Z", "trialPrice": 31}, {"currencyCode": "ChlaV6zZUfbAkZVD", "currencyNamespace": "Abp228a8XjOJUgRG", "currencyType": "VIRTUAL", "discountAmount": 100, "discountExpireAt": "1973-02-14T00:00:00Z", "discountPercentage": 43, "discountPurchaseAt": "1993-11-19T00:00:00Z", "expireAt": "1989-02-26T00:00:00Z", "price": 11, "purchaseAt": "1983-06-13T00:00:00Z", "trialPrice": 85}, {"currencyCode": "x3KUvalgLHpeRBdY", "currencyNamespace": "akfOyPxe8CjAsT22", "currencyType": "REAL", "discountAmount": 89, "discountExpireAt": "1972-02-29T00:00:00Z", "discountPercentage": 89, "discountPurchaseAt": "1976-02-03T00:00:00Z", "expireAt": "1978-01-15T00:00:00Z", "price": 73, "purchaseAt": "1993-09-24T00:00:00Z", "trialPrice": 22}], "fjIH85C23jYmbc9z": [{"currencyCode": "LZYWkHeMwkw8Towy", "currencyNamespace": "PVluo58n1IhRyab6", "currencyType": "REAL", "discountAmount": 2, "discountExpireAt": "1976-11-01T00:00:00Z", "discountPercentage": 23, "discountPurchaseAt": "1977-06-29T00:00:00Z", "expireAt": "1987-07-03T00:00:00Z", "price": 41, "purchaseAt": "1986-07-17T00:00:00Z", "trialPrice": 25}, {"currencyCode": "TlY47pcg4W8mmVpj", "currencyNamespace": "q6VrSa96s0diot5N", "currencyType": "REAL", "discountAmount": 47, "discountExpireAt": "1972-05-02T00:00:00Z", "discountPercentage": 11, "discountPurchaseAt": "1979-01-12T00:00:00Z", "expireAt": "1985-02-24T00:00:00Z", "price": 41, "purchaseAt": "1990-05-18T00:00:00Z", "trialPrice": 30}, {"currencyCode": "RaBomrGHqHMXFXmU", "currencyNamespace": "9J7ozUTWMAEt8Thu", "currencyType": "VIRTUAL", "discountAmount": 44, "discountExpireAt": "1991-06-21T00:00:00Z", "discountPercentage": 6, "discountPurchaseAt": "1975-11-19T00:00:00Z", "expireAt": "1971-10-19T00:00:00Z", "price": 82, "purchaseAt": "1975-07-06T00:00:00Z", "trialPrice": 36}], "VZwV4INGh2cAuz01": [{"currencyCode": "RmPb48MtHNAvMxRA", "currencyNamespace": "xSSvGetzezFC6uwq", "currencyType": "REAL", "discountAmount": 97, "discountExpireAt": "1995-07-20T00:00:00Z", "discountPercentage": 48, "discountPurchaseAt": "1992-11-02T00:00:00Z", "expireAt": "1982-10-10T00:00:00Z", "price": 15, "purchaseAt": "1981-09-22T00:00:00Z", "trialPrice": 97}, {"currencyCode": "oVJESd69MaDuuwyV", "currencyNamespace": "YLirZ3KpdTyDf1o6", "currencyType": "VIRTUAL", "discountAmount": 21, "discountExpireAt": "1999-05-09T00:00:00Z", "discountPercentage": 63, "discountPurchaseAt": "1975-05-28T00:00:00Z", "expireAt": "1984-10-08T00:00:00Z", "price": 0, "purchaseAt": "1995-09-08T00:00:00Z", "trialPrice": 24}, {"currencyCode": "kIoGzY9glpwhcSSd", "currencyNamespace": "5TIl9COgzgWKUwig", "currencyType": "REAL", "discountAmount": 5, "discountExpireAt": "1989-04-29T00:00:00Z", "discountPercentage": 54, "discountPurchaseAt": "1972-01-08T00:00:00Z", "expireAt": "1991-03-23T00:00:00Z", "price": 78, "purchaseAt": "1993-04-30T00:00:00Z", "trialPrice": 32}]}, "saleConfig": {"currencyCode": "85yQxH08kcJc0H62", "price": 94}, "seasonType": "PASS", "sectionExclusive": false, "sellable": false, "sku": "TIIveNQyIch3NORB", "stackable": true, "status": "INACTIVE", "tags": ["pbxXsa5SBuAeTltN", "1nrBjerJHoyT7HLq", "OuuvnUnlZTqJCI6W"], "targetCurrencyCode": "BkfB6EdTf38pDSHZ", "targetNamespace": "PyPC8fzB5G3t88Gl", "thumbnailUrl": "QSZdh9K1n5VOBLTB", "useCount": 25}' \
    > test.out 2>&1
eval_tap $? 122 'UpdateItem' test.out

#- 123 DeleteItem
samples/cli/sample-apps Platform deleteItem \
    --itemId 'Lh4KoWobu5JEtRZT' \
    --namespace $AB_NAMESPACE \
    --force 'true' \
    --storeId 'DRZ9M37vF0gOughG' \
    > test.out 2>&1
eval_tap $? 123 'DeleteItem' test.out

#- 124 AcquireItem
samples/cli/sample-apps Platform acquireItem \
    --itemId 'WAa7SjNIWlo52oWY' \
    --namespace $AB_NAMESPACE \
    --body '{"count": 60, "orderNo": "I1hKYQV7GAEwxknw"}' \
    > test.out 2>&1
eval_tap $? 124 'AcquireItem' test.out

#- 125 GetApp
samples/cli/sample-apps Platform getApp \
    --itemId 'CAxI38sfQJgcLt13' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --storeId 'YFROXUNGrHzTBGql' \
    > test.out 2>&1
eval_tap $? 125 'GetApp' test.out

#- 126 UpdateApp
samples/cli/sample-apps Platform updateApp \
    --itemId 'HJiTtG1AyeYtPYW1' \
    --namespace $AB_NAMESPACE \
    --storeId 'zCLDpP52qQNwgePZ' \
    --body '{"carousel": [{"alt": "4dhncLlJ5KNzlOmn", "previewUrl": "qTk7CVsKby4fVNn6", "thumbnailUrl": "yq9oea64Y6wWMOuG", "type": "image", "url": "bZUR0khFFCtzLDAw", "videoSource": "generic"}, {"alt": "x0y1halCgKrszIAC", "previewUrl": "HiorK0wEjOJixyir", "thumbnailUrl": "GdMLx3TiyleLoCZl", "type": "video", "url": "MLW1uwovZ3SA23hX", "videoSource": "vimeo"}, {"alt": "UF4B1XfaquDyUPjw", "previewUrl": "cLsUZoGcBhfKmY2j", "thumbnailUrl": "zrl3YZMg4Ms8Xqmv", "type": "video", "url": "SFf0w1MZ9OlI214H", "videoSource": "youtube"}], "developer": "EnGirWPrP4XSfucl", "forumUrl": "bPNLVYBwtxOH4wRn", "genres": ["Strategy", "RPG", "RPG"], "localizations": {"TViP74LWshG6qY6t": {"announcement": "eKpWirypA8XE0THk", "slogan": "ehNkOUj12MF1nkWy"}, "4FT7BEt1mvBT90nl": {"announcement": "Xi5OK3vpC2fyLewl", "slogan": "3ctcmedswpCaBGze"}, "3zwy0ahRwoaFdyfr": {"announcement": "ysDBbrrMiSf2akFS", "slogan": "NTyqQTRc9IxnCHcz"}}, "platformRequirements": {"6XzTXUYFrHpv3HWD": [{"additionals": "RHANQQ2QL3ZvCrB4", "directXVersion": "CCRMXp9wjU106Eto", "diskSpace": "zrNiK2yYzy90KBUq", "graphics": "0mkBhB7bW467yBo6", "label": "osHkp8VhxeQEuMyQ", "osVersion": "DUfq7Si572opqceJ", "processor": "RnqCzGmKWj6nTX4O", "ram": "myOCbPX15tpZw4xL", "soundCard": "oTblmYS2Z1j3bY6W"}, {"additionals": "wZjiMZPgcOJGSsTo", "directXVersion": "rglFpwSLGCBE9jQF", "diskSpace": "o5Z2G8TS8dOJYpNC", "graphics": "OpW3nqE0Wx7tynaK", "label": "xNqQRYZmPIfxHmhz", "osVersion": "MUXOtpuDMEwk0ZfU", "processor": "iGccXggi6swvFOy0", "ram": "BhlqmUnyTLYe22Xk", "soundCard": "WtkJg3tWPu7jEfEm"}, {"additionals": "8vJ5R5HeKsA726zD", "directXVersion": "QibEHcEHj6ZmUFxH", "diskSpace": "rAoLEeBLEQStBRpn", "graphics": "QxJ9XPnRE1MMZSyy", "label": "IpD2EEg4EwrJDb0f", "osVersion": "EcqtmnTdyojfbDZR", "processor": "TUJJh3BvWxs4sWxj", "ram": "bgMPIu43E3smyzkB", "soundCard": "BOo1w0aSKYxaZrTw"}], "wmajmvEjy0rNuUDH": [{"additionals": "nc7V86W5JGZyJ3lb", "directXVersion": "srYAyVDkmbdbrodq", "diskSpace": "KA6aXxHnafrvIwXQ", "graphics": "yeXyMILDDlcvGbaU", "label": "qFlQ0cbGHplr3F0U", "osVersion": "VGRQ12GY5GlAXyhg", "processor": "il2w2q2XtCa87ItL", "ram": "KydAb5zF8H6EGTeA", "soundCard": "b1sbwFOwX4EZFPZ3"}, {"additionals": "fz9GZLBSOhFn51M2", "directXVersion": "GY7GDcfVjaZlio3U", "diskSpace": "sXBp0ahmWUNowztd", "graphics": "bsW7bxQ5Ef7M9wkp", "label": "Y724GoGXdHRQdCgy", "osVersion": "l0M2rV28uDKhiDZg", "processor": "WSl3nA3TBu8Q3cE7", "ram": "REToMZYlZSme8zzu", "soundCard": "fSBCrOemGh0EbCJd"}, {"additionals": "iRKxLosGKdXRnkvv", "directXVersion": "FqlzzNgngNQTZNYh", "diskSpace": "71GJullLih80laXI", "graphics": "ogPVgkbtaT52aBLL", "label": "8MprX20aDv9XWIJW", "osVersion": "WfJAMcOcvc0dMwIS", "processor": "ilBV1Yy5bMi7JTfY", "ram": "R44Hj49KKIO6ezg9", "soundCard": "L3GROGAwdEaBR3rb"}], "nIwuxlQKUpqBZBcN": [{"additionals": "aBQ1cS3SKEHjhsr3", "directXVersion": "xQkm4SOusur40Vi7", "diskSpace": "w582WFQjlBUKm0ls", "graphics": "R0oT9rgVkxzDeWOT", "label": "Y312arVtawSkTPlw", "osVersion": "DLJbnxaPP2N86wR7", "processor": "fngmuShq4iBaBKSU", "ram": "kdIPGZw7ihT4pXFb", "soundCard": "hDG9fIjjIAtc1WkX"}, {"additionals": "ZYozIDWbysG8lBx9", "directXVersion": "B2PCvkKmW6zliHHp", "diskSpace": "PfgHZOHAqRXZXfsq", "graphics": "WbBu4U8IwCF3u2Lc", "label": "PPIimQjYoamSNIGZ", "osVersion": "1YLMCffMJP61bQnK", "processor": "L3mWqZfwX7pYxGKF", "ram": "ZTHE1NVtl2weWNcU", "soundCard": "8RWKFpVhkNErUEp5"}, {"additionals": "mLoPttEeQVqHnz6F", "directXVersion": "qvlyneF3ZmXzNuNd", "diskSpace": "X6prj7lNJVxkh6ag", "graphics": "YecyoxMH2qSze1nZ", "label": "HjKZKqfvcL3SCwa0", "osVersion": "AYkQXXTaUo4eaVyL", "processor": "fCiSoZgHG74jSEOo", "ram": "VuqsM2mCZQo7fg65", "soundCard": "1OYLI1IAb3fpMZ8B"}]}, "platforms": ["MacOS", "Windows", "Windows"], "players": ["MMO", "LocalCoop", "Coop"], "primaryGenre": "Simulation", "publisher": "KtZICpL4zgYNVS8U", "releaseDate": "1978-12-09T00:00:00Z", "websiteUrl": "1dFTykVETfYjxhlR"}' \
    > test.out 2>&1
eval_tap $? 126 'UpdateApp' test.out

#- 127 DisableItem
samples/cli/sample-apps Platform disableItem \
    --itemId 'sqyMTpbAbZ3xnbcr' \
    --namespace $AB_NAMESPACE \
    --storeId 'JLUt1uV5UmjKwolF' \
    > test.out 2>&1
eval_tap $? 127 'DisableItem' test.out

#- 128 GetItemDynamicData
samples/cli/sample-apps Platform getItemDynamicData \
    --itemId 'Ryv4iFdU8sdUOWke' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 128 'GetItemDynamicData' test.out

#- 129 EnableItem
samples/cli/sample-apps Platform enableItem \
    --itemId 'eEojqk0zytZXzalA' \
    --namespace $AB_NAMESPACE \
    --storeId 'qkbXN6AqSbBcGkte' \
    > test.out 2>&1
eval_tap $? 129 'EnableItem' test.out

#- 130 FeatureItem
samples/cli/sample-apps Platform featureItem \
    --feature 'k3oOq53fY5Eprzh4' \
    --itemId 'oekdlUgN4CwMUwsJ' \
    --namespace $AB_NAMESPACE \
    --storeId 'gHYQyHqh7NdcljVE' \
    > test.out 2>&1
eval_tap $? 130 'FeatureItem' test.out

#- 131 DefeatureItem
samples/cli/sample-apps Platform defeatureItem \
    --feature 'e8FeYSUd0NVEKoNh' \
    --itemId '4tdsan8RkvHYrK56' \
    --namespace $AB_NAMESPACE \
    --storeId '8hfkguUJE1kFpFMp' \
    > test.out 2>&1
eval_tap $? 131 'DefeatureItem' test.out

#- 132 GetLocaleItem
samples/cli/sample-apps Platform getLocaleItem \
    --itemId 'UqBpyoKMuvF2bjy0' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --language '4xXumwGpUJKBPQLT' \
    --populateBundle 'true' \
    --region '34vloNUSfJ53p6k1' \
    --storeId 'GaMMoyfcEmQDDizK' \
    > test.out 2>&1
eval_tap $? 132 'GetLocaleItem' test.out

#- 133 UpdateItemPurchaseCondition
samples/cli/sample-apps Platform updateItemPurchaseCondition \
    --itemId '2mfBxWvM43W93hYJ' \
    --namespace $AB_NAMESPACE \
    --storeId 'jggk3w0hxIokSAxy' \
    --body '{"purchaseCondition": {"conditionGroups": [{"operator": "and", "predicates": [{"anyOf": 81, "code": "txAnsFbQ28Z5xkd6", "comparison": "isGreaterThan", "name": "NVtM54Mn08e8LzP9", "predicateType": "EntitlementPredicate", "value": "QFTQt6vvCQcwKZiU", "values": ["7nIJkwJ9K9RElXZ8", "mRNyRpfE7JcFRmws", "pOOPFbrLZ8gImJFh"]}, {"anyOf": 79, "code": "N1evMc2koXbW8yYJ", "comparison": "isNot", "name": "VEspk6dkbxacgtZK", "predicateType": "SeasonTierPredicate", "value": "aknKm47qjQ7oTkr9", "values": ["KKLgZc7FUhREzWFj", "DHYGNBupa4ZujwVt", "NsTM2rMW8f5UMAIl"]}, {"anyOf": 61, "code": "9hFUkVrPQgV9oHaK", "comparison": "isLessThanOrEqual", "name": "jAuXlKeSp6syX6FI", "predicateType": "SeasonPassPredicate", "value": "w547NpmyquVUPatg", "values": ["VAvA5VjMsTez8v0K", "vQLjegvgIFLCI0cc", "cjb7qvdiugsaAMUm"]}]}, {"operator": "and", "predicates": [{"anyOf": 22, "code": "c8CjQHl9i4KrcftT", "comparison": "isLessThanOrEqual", "name": "UPBMzd4SrVbubJA0", "predicateType": "EntitlementPredicate", "value": "6YsQ0khj2WbA5pqS", "values": ["545pILF8u5E3L2B8", "Pdf1bk5MLlHxzl2a", "hvjR0oGbd5PFGGVF"]}, {"anyOf": 3, "code": "hyjEvhV6URWbfDEe", "comparison": "isGreaterThanOrEqual", "name": "KcJmTa1LAJBYQgHa", "predicateType": "SeasonPassPredicate", "value": "qxLSr466no0OfBvG", "values": ["RWwsxysvFiNh43Ln", "hPzXUwSjVnkaYqLA", "JVxQonrdqaKAFa7d"]}, {"anyOf": 87, "code": "62L8aznE2Zl8RJ0Z", "comparison": "includes", "name": "LEZYjiePp7kDo7i1", "predicateType": "StatisticCodePredicate", "value": "Ufs5ZCcX8c6mtMaa", "values": ["raaGnNpT2ifFgp17", "jQlXmx3SjWv8fW0X", "GrSjS3BChgJS7JTl"]}]}, {"operator": "or", "predicates": [{"anyOf": 10, "code": "LoBpdz2Yk3KmWF6O", "comparison": "is", "name": "qlpP9YWNcHjzp2JP", "predicateType": "EntitlementPredicate", "value": "T9JqTMvC3if3SeJH", "values": ["EfRWTMFmyb97uz3v", "3QiwE5P7lLErnWkk", "OnpabMFza84emmSM"]}, {"anyOf": 43, "code": "hOoXmmYbO845UkQp", "comparison": "isLessThan", "name": "aIlXf6rujNWrV0du", "predicateType": "StatisticCodePredicate", "value": "vhxE4XEguj0vASlJ", "values": ["CW70mZd7mh9jgBMV", "hXBTUcxNDwguI7Qj", "38WhMLPk5uXzSFUv"]}, {"anyOf": 90, "code": "Oro4S2yFcYMHAXOE", "comparison": "isGreaterThan", "name": "fvFsocrqxjd9pfdj", "predicateType": "StatisticCodePredicate", "value": "4Lm1XbtQOnwRCyOw", "values": ["mu9hPuZzApCQcwZo", "RLlUNLZGSRerTl6L", "bCeTKvtcfSTTG0f6"]}]}]}}' \
    > test.out 2>&1
eval_tap $? 133 'UpdateItemPurchaseCondition' test.out

#- 134 ReturnItem
samples/cli/sample-apps Platform returnItem \
    --itemId 'FSnzQQJCcApA68tW' \
    --namespace $AB_NAMESPACE \
    --body '{"orderNo": "31ejO39wkLG5dkEl"}' \
    > test.out 2>&1
eval_tap $? 134 'ReturnItem' test.out

#- 135 QueryKeyGroups
samples/cli/sample-apps Platform queryKeyGroups \
    --namespace $AB_NAMESPACE \
    --limit '96' \
    --name '9N9oOZ8DhnbWoU20' \
    --offset '98' \
    --tag 'VwnB9mHMJZiQ38l4' \
    > test.out 2>&1
eval_tap $? 135 'QueryKeyGroups' test.out

#- 136 CreateKeyGroup
samples/cli/sample-apps Platform createKeyGroup \
    --namespace $AB_NAMESPACE \
    --body '{"description": "RmZodx1NfuTN7tgQ", "name": "QSMnbT1CxhJggwuP", "status": "INACTIVE", "tags": ["h38zRnUPkfus9yZs", "P38qikFon52VHDrm", "FjitsphtY7VzYYDD"]}' \
    > test.out 2>&1
eval_tap $? 136 'CreateKeyGroup' test.out

#- 137 GetKeyGroupByBoothName
eval_tap 0 137 'GetKeyGroupByBoothName # SKIP deprecated' test.out

#- 138 GetKeyGroup
samples/cli/sample-apps Platform getKeyGroup \
    --keyGroupId 'qSA3v6pyVMR920Vl' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 138 'GetKeyGroup' test.out

#- 139 UpdateKeyGroup
samples/cli/sample-apps Platform updateKeyGroup \
    --keyGroupId 'LhGvGyWKDA4pRC04' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "vckrd0MksYePFmyf", "name": "jyxY9mpPW9H0OSTn", "status": "ACTIVE", "tags": ["9KxyNfW6lBQltonc", "dCOaPyaBdtyR06JJ", "ertSEvNgBcashL7d"]}' \
    > test.out 2>&1
eval_tap $? 139 'UpdateKeyGroup' test.out

#- 140 GetKeyGroupDynamic
samples/cli/sample-apps Platform getKeyGroupDynamic \
    --keyGroupId 'hTXb9CI9BnlYWhFm' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 140 'GetKeyGroupDynamic' test.out

#- 141 ListKeys
samples/cli/sample-apps Platform listKeys \
    --keyGroupId 'rj4secI9PwRtc9ZD' \
    --namespace $AB_NAMESPACE \
    --limit '78' \
    --offset '50' \
    --status 'ACQUIRED' \
    > test.out 2>&1
eval_tap $? 141 'ListKeys' test.out

#- 142 UploadKeys
samples/cli/sample-apps Platform uploadKeys \
    --keyGroupId 'Wb8LMwFNH4n9Xljk' \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 142 'UploadKeys' test.out

#- 143 QueryOrders
samples/cli/sample-apps Platform queryOrders \
    --namespace $AB_NAMESPACE \
    --endTime 'CRO1OdOCYt9gEXOd' \
    --limit '14' \
    --offset '65' \
    --orderNos '["lHQhINlzrAWfMbZi", "xq1jHHGenPKN9GYZ", "vRZnmQBd4mDYuP48"]' \
    --sortBy '1XtGpLU1o6LP9Gnc' \
    --startTime 'Py4lhdreGh3BbOxE' \
    --status 'INIT' \
    --withTotal 'false' \
    > test.out 2>&1
eval_tap $? 143 'QueryOrders' test.out

#- 144 GetOrderStatistics
samples/cli/sample-apps Platform getOrderStatistics \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 144 'GetOrderStatistics' test.out

#- 145 GetOrder
samples/cli/sample-apps Platform getOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'hSL1fLo1BCq0nSLk' \
    > test.out 2>&1
eval_tap $? 145 'GetOrder' test.out

#- 146 RefundOrder
samples/cli/sample-apps Platform refundOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'NVQurewEmfWdKVEK' \
    --body '{"description": "DYto4FNMVZ2iA8fs"}' \
    > test.out 2>&1
eval_tap $? 146 'RefundOrder' test.out

#- 147 GetPaymentCallbackConfig
samples/cli/sample-apps Platform getPaymentCallbackConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 147 'GetPaymentCallbackConfig' test.out

#- 148 UpdatePaymentCallbackConfig
samples/cli/sample-apps Platform updatePaymentCallbackConfig \
    --namespace $AB_NAMESPACE \
    --body '{"dryRun": false, "notifyUrl": "15ShG6pzzNE1pBDG", "privateKey": "HI4ieH3aIjom2Lmd"}' \
    > test.out 2>&1
eval_tap $? 148 'UpdatePaymentCallbackConfig' test.out

#- 149 GetPaymentMerchantConfig
samples/cli/sample-apps Platform getPaymentMerchantConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 149 'GetPaymentMerchantConfig' test.out

#- 150 UpdatePaymentDomainWhitelistConfig
samples/cli/sample-apps Platform updatePaymentDomainWhitelistConfig \
    --namespace $AB_NAMESPACE \
    --body '{"domains": ["q71eyHtPrMJ7vDgm", "FQM5CtbunPn5t5SK", "nniDP5enP2f5wX8p"]}' \
    > test.out 2>&1
eval_tap $? 150 'UpdatePaymentDomainWhitelistConfig' test.out

#- 151 QueryPaymentNotifications
samples/cli/sample-apps Platform queryPaymentNotifications \
    --namespace $AB_NAMESPACE \
    --endDate 'hR4v5nRWjpYRYyRF' \
    --externalId 'e3QajKNJKUfuc52u' \
    --limit '30' \
    --notificationSource 'XSOLLA' \
    --notificationType 'ONWFFw9bLq21udD8' \
    --offset '26' \
    --paymentOrderNo 'OxyJWboGQQJXq6m6' \
    --startDate 'BQUmrWdpZAjsUG6Q' \
    --status 'WARN' \
    > test.out 2>&1
eval_tap $? 151 'QueryPaymentNotifications' test.out

#- 152 QueryPaymentOrders
samples/cli/sample-apps Platform queryPaymentOrders \
    --namespace $AB_NAMESPACE \
    --channel 'EXTERNAL' \
    --extTxId 'cTG9YCfuRfoKWrok' \
    --limit '74' \
    --offset '94' \
    --status 'CHARGE_FAILED' \
    > test.out 2>&1
eval_tap $? 152 'QueryPaymentOrders' test.out

#- 153 CreatePaymentOrderByDedicated
samples/cli/sample-apps Platform createPaymentOrderByDedicated \
    --namespace $AB_NAMESPACE \
    --body '{"currencyCode": "bxXMOkzE8vd8CsTb", "currencyNamespace": "acjaBjb7LUxTeOtB", "customParameters": {"PIK4GvVnoEYh8cG1": {}, "mxXfHjhKZMRnNxIe": {}, "c5uikScJqymXyrlY": {}}, "description": "o5P19dLKXGX5e7tR", "extOrderNo": "Yb9WHB1pFZOe1cqw", "extUserId": "zdvbXKoQWkiXGnp6", "itemType": "APP", "language": "aTi", "metadata": {"BwcN3AYdEODUXjEt": "tXwWOffOm7AIPbpt", "yXTmOQz4icyyAPAQ": "DuDjb07DDx9X5K4U", "ivmOV2DJjP2chRHH": "OfAAR9Y2w6NdwGVm"}, "notifyUrl": "S6BjL6fORZk2xrJ4", "omitNotification": true, "platform": "MxNi26ZdRgmcCvSG", "price": 11, "recurringPaymentOrderNo": "S1hrq1t6iqRRv2pn", "region": "mFogqCuzPVnzzGsY", "returnUrl": "nndHFoVOKYQksPRG", "sandbox": true, "sku": "RDmgJtzoomMzdyee", "subscriptionId": "UFwf3lhd0wTpY0Tq", "targetNamespace": "bsimatAbBQVQkAdx", "targetUserId": "NnziGX4Qufnwc5MH", "title": "I52Qsb9yDBORpv6r"}' \
    > test.out 2>&1
eval_tap $? 153 'CreatePaymentOrderByDedicated' test.out

#- 154 ListExtOrderNoByExtTxId
samples/cli/sample-apps Platform listExtOrderNoByExtTxId \
    --namespace $AB_NAMESPACE \
    --extTxId 'W3kE3z4iyRRTJhaI' \
    > test.out 2>&1
eval_tap $? 154 'ListExtOrderNoByExtTxId' test.out

#- 155 GetPaymentOrder
samples/cli/sample-apps Platform getPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'wFKZjl0JCYcWqLZy' \
    > test.out 2>&1
eval_tap $? 155 'GetPaymentOrder' test.out

#- 156 ChargePaymentOrder
samples/cli/sample-apps Platform chargePaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'KYs7TGe7ADEbZ6Q2' \
    --body '{"extTxId": "U3JzqkTylp2oJxYK", "paymentMethod": "Ngk3sj5XOhcqJMtx", "paymentProvider": "ADYEN"}' \
    > test.out 2>&1
eval_tap $? 156 'ChargePaymentOrder' test.out

#- 157 RefundPaymentOrderByDedicated
samples/cli/sample-apps Platform refundPaymentOrderByDedicated \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo '0QIMLN2aiQh5IIUX' \
    --body '{"description": "0J0oyPF0l1FrfsVs"}' \
    > test.out 2>&1
eval_tap $? 157 'RefundPaymentOrderByDedicated' test.out

#- 158 SimulatePaymentOrderNotification
samples/cli/sample-apps Platform simulatePaymentOrderNotification \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo '7oIHBKIdA9fUZzLq' \
    --body '{"amount": 55, "currencyCode": "oImuhtbhf73qZUxr", "notifyType": "CHARGE", "paymentProvider": "XSOLLA", "salesTax": 16, "vat": 2}' \
    > test.out 2>&1
eval_tap $? 158 'SimulatePaymentOrderNotification' test.out

#- 159 GetPaymentOrderChargeStatus
samples/cli/sample-apps Platform getPaymentOrderChargeStatus \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'oYgs1d1zifnd2oj1' \
    > test.out 2>&1
eval_tap $? 159 'GetPaymentOrderChargeStatus' test.out

#- 160 GetPsnEntitlementOwnership
samples/cli/sample-apps Platform getPsnEntitlementOwnership \
    --entitlementLabel 'Ri2YPX6ZsWQhcAnJ' \
    --namespace $AB_NAMESPACE \
    --body '{"accessToken": "x44iy0LQEAzjgdgz", "serviceLabel": 24}' \
    > test.out 2>&1
eval_tap $? 160 'GetPsnEntitlementOwnership' test.out

#- 161 GetXboxEntitlementOwnership
samples/cli/sample-apps Platform getXboxEntitlementOwnership \
    --namespace $AB_NAMESPACE \
    --productSku 'nnuGCtgax6RjEKM6' \
    --body '{"delegationToken": "pWAGS4Eo2TzKQhip", "sandboxId": "PJkVx5fyb3ofD642"}' \
    > test.out 2>&1
eval_tap $? 161 'GetXboxEntitlementOwnership' test.out

#- 162 GetPlatformEntitlementConfig
samples/cli/sample-apps Platform getPlatformEntitlementConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Xbox' \
    > test.out 2>&1
eval_tap $? 162 'GetPlatformEntitlementConfig' test.out

#- 163 UpdatePlatformEntitlementConfig
samples/cli/sample-apps Platform updatePlatformEntitlementConfig \
    --namespace $AB_NAMESPACE \
    --platform 'IOS' \
    --body '{"allowedPlatformOrigins": ["Steam", "IOS", "Xbox"]}' \
    > test.out 2>&1
eval_tap $? 163 'UpdatePlatformEntitlementConfig' test.out

#- 164 GetPlatformWalletConfig
samples/cli/sample-apps Platform getPlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Playstation' \
    > test.out 2>&1
eval_tap $? 164 'GetPlatformWalletConfig' test.out

#- 165 UpdatePlatformWalletConfig
samples/cli/sample-apps Platform updatePlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Epic' \
    --body '{"allowedBalanceOrigins": ["Oculus", "Nintendo", "Oculus"]}' \
    > test.out 2>&1
eval_tap $? 165 'UpdatePlatformWalletConfig' test.out

#- 166 ResetPlatformWalletConfig
samples/cli/sample-apps Platform resetPlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Oculus' \
    > test.out 2>&1
eval_tap $? 166 'ResetPlatformWalletConfig' test.out

#- 167 GetRevocationConfig
samples/cli/sample-apps Platform getRevocationConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 167 'GetRevocationConfig' test.out

#- 168 UpdateRevocationConfig
samples/cli/sample-apps Platform updateRevocationConfig \
    --namespace $AB_NAMESPACE \
    --body '{"entitlement": {"consumable": {"enabled": true, "strategy": "REVOKE_OR_REPORT"}, "durable": {"enabled": false, "strategy": "CUSTOM"}}, "wallet": {"enabled": false, "strategy": "REVOKE_OR_REPORT"}}' \
    > test.out 2>&1
eval_tap $? 168 'UpdateRevocationConfig' test.out

#- 169 DeleteRevocationConfig
samples/cli/sample-apps Platform deleteRevocationConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 169 'DeleteRevocationConfig' test.out

#- 170 QueryRevocationHistories
samples/cli/sample-apps Platform queryRevocationHistories \
    --namespace $AB_NAMESPACE \
    --endTime '3h5DRn5flo3CEn1i' \
    --limit '48' \
    --offset '69' \
    --source 'OTHER' \
    --startTime 'ZvDWT0mQFpCJcj1G' \
    --status 'SUCCESS' \
    --transactionId 'xrMtPPNq1lBvk1Jg' \
    --userId 'l3GZDUvjvnoY0k7S' \
    > test.out 2>&1
eval_tap $? 170 'QueryRevocationHistories' test.out

#- 171 GetRevocationPluginConfig
samples/cli/sample-apps Platform getRevocationPluginConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 171 'GetRevocationPluginConfig' test.out

#- 172 UpdateRevocationPluginConfig
samples/cli/sample-apps Platform updateRevocationPluginConfig \
    --namespace $AB_NAMESPACE \
    --body '{"appConfig": {"appName": "dfNSgCSR0U2iTr7f"}, "customConfig": {"connectionType": "INSECURE", "grpcServerAddress": "hgbDvTFLU1BaL7Kq"}, "extendType": "APP"}' \
    > test.out 2>&1
eval_tap $? 172 'UpdateRevocationPluginConfig' test.out

#- 173 DeleteRevocationPluginConfig
samples/cli/sample-apps Platform deleteRevocationPluginConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 173 'DeleteRevocationPluginConfig' test.out

#- 174 UploadRevocationPluginConfigCert
samples/cli/sample-apps Platform uploadRevocationPluginConfigCert \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 174 'UploadRevocationPluginConfigCert' test.out

#- 175 CreateReward
samples/cli/sample-apps Platform createReward \
    --namespace $AB_NAMESPACE \
    --body '{"description": "5IXsvISgVwp7M2KP", "eventTopic": "FWRxcvxPQlicu07y", "maxAwarded": 1, "maxAwardedPerUser": 96, "namespaceExpression": "63r75kM6n2KcV2Yb", "rewardCode": "9lPKANoWrVfvHT4n", "rewardConditions": [{"condition": "1vD4VqzeLHTguWnI", "conditionName": "HSHweY8cGR8oBkpA", "eventName": "0gRpjWLSFe7f5cHH", "rewardItems": [{"duration": 36, "endDate": "1993-02-17T00:00:00Z", "identityType": "ITEM_ID", "itemId": "Ot9iHeoMqQtWTgkL", "quantity": 8, "sku": "py1v4RajxgGZNSJn"}, {"duration": 3, "endDate": "1971-11-09T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "qXCxhcXA4kXahSiI", "quantity": 37, "sku": "vMS7CM8C5eAAMIH6"}, {"duration": 24, "endDate": "1972-05-22T00:00:00Z", "identityType": "ITEM_ID", "itemId": "jw7Z2Lxd1rnQwovz", "quantity": 60, "sku": "JyhWfmGlocQBXfBE"}]}, {"condition": "XL4h7PFdcA0wbNZ9", "conditionName": "d1cLZTiCfdPCFuAZ", "eventName": "7CvPmirWbPhgwbDs", "rewardItems": [{"duration": 82, "endDate": "1974-08-29T00:00:00Z", "identityType": "ITEM_ID", "itemId": "EmJl47nTMOpdEAh9", "quantity": 82, "sku": "65tOJP1XRN3rcKS1"}, {"duration": 56, "endDate": "1996-01-02T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "uBbgQrcRIKeNyvmB", "quantity": 12, "sku": "3v6mRpb7IaNDbhqz"}, {"duration": 13, "endDate": "1992-08-28T00:00:00Z", "identityType": "ITEM_ID", "itemId": "sc6Ojp3zk0zbKeSk", "quantity": 86, "sku": "i77jqnAen0gV06P5"}]}, {"condition": "8k5HeDYjOBn7GLh3", "conditionName": "zDDg020UiQedpsY3", "eventName": "e3D1sarh8LIc45DW", "rewardItems": [{"duration": 33, "endDate": "1973-04-12T00:00:00Z", "identityType": "ITEM_ID", "itemId": "URJkSArlP560Hzx3", "quantity": 86, "sku": "ap4LUTBUuk2jRi1q"}, {"duration": 65, "endDate": "1985-07-20T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "1KISdCU2F9Fromv8", "quantity": 37, "sku": "mOY20dDYhwjjrxet"}, {"duration": 25, "endDate": "1972-07-25T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "LQ3A4aQEOz4ScxGs", "quantity": 6, "sku": "qfia0iub8eMANnin"}]}], "userIdExpression": "EoPXRP7gfBySnlCx"}' \
    > test.out 2>&1
eval_tap $? 175 'CreateReward' test.out

#- 176 QueryRewards
samples/cli/sample-apps Platform queryRewards \
    --namespace $AB_NAMESPACE \
    --eventTopic '8yL7uADw1F9XOJHd' \
    --limit '72' \
    --offset '65' \
    --sortBy '["rewardCode:desc", "rewardCode", "rewardCode:asc"]' \
    > test.out 2>&1
eval_tap $? 176 'QueryRewards' test.out

#- 177 ExportRewards
samples/cli/sample-apps Platform exportRewards \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 177 'ExportRewards' test.out

#- 178 ImportRewards
samples/cli/sample-apps Platform importRewards \
    --namespace $AB_NAMESPACE \
    --replaceExisting 'true' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 178 'ImportRewards' test.out

#- 179 GetReward
samples/cli/sample-apps Platform getReward \
    --namespace $AB_NAMESPACE \
    --rewardId '3OeyoGihxwJimPma' \
    > test.out 2>&1
eval_tap $? 179 'GetReward' test.out

#- 180 UpdateReward
samples/cli/sample-apps Platform updateReward \
    --namespace $AB_NAMESPACE \
    --rewardId 'fsNLJ74vvUKevkDT' \
    --body '{"description": "PyT6ZnTb8JonJ0Tz", "eventTopic": "gy0E1gBHUcRWb2Vo", "maxAwarded": 82, "maxAwardedPerUser": 65, "namespaceExpression": "4clavlq8OTg8Z6dd", "rewardCode": "2RxgPy9gk6v5cXyY", "rewardConditions": [{"condition": "DQLfUGueNVEotK9F", "conditionName": "hjI6bAS22ACjwDmK", "eventName": "fUElE3LcbyYR0PQa", "rewardItems": [{"duration": 24, "endDate": "1987-01-07T00:00:00Z", "identityType": "ITEM_ID", "itemId": "6uCnZKYhjK7X39JF", "quantity": 24, "sku": "7GVczWmySjc398ab"}, {"duration": 43, "endDate": "1990-06-12T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "Tfur2KqFmIQqIOWm", "quantity": 14, "sku": "5biQ0crI2ZLfJR8O"}, {"duration": 28, "endDate": "1987-07-04T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "xmKmBNGn2lUa9DDi", "quantity": 86, "sku": "y1oTomOULxJeEOSZ"}]}, {"condition": "7aZ93gH9WyoHrJGR", "conditionName": "ph2ynYZor3hKENeW", "eventName": "y4ogukkTi83WBJsx", "rewardItems": [{"duration": 55, "endDate": "1992-07-17T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "KIZAz4MRuUOgcspZ", "quantity": 42, "sku": "NzXdnYT6lGOMraau"}, {"duration": 49, "endDate": "1999-05-18T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "Z5Z4om2TApOamxBV", "quantity": 21, "sku": "DgAxYKkXlmYw3JBb"}, {"duration": 0, "endDate": "1979-07-25T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "N5LCcCJ5WB0t5Rlz", "quantity": 74, "sku": "lAnJWFTTuKD3jPf6"}]}, {"condition": "2M6CfRKuUtAWl71s", "conditionName": "EbkC7Zss0kg7pHe9", "eventName": "TD6CvK3BsEd5yp8P", "rewardItems": [{"duration": 36, "endDate": "1974-11-23T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "QnQlWSLpgPSMyspZ", "quantity": 15, "sku": "qcTyPx0mub3DmrwA"}, {"duration": 54, "endDate": "1995-12-27T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "LfxCL4WdTSS43NG2", "quantity": 97, "sku": "r7uurkdGAftJGoyx"}, {"duration": 56, "endDate": "1972-11-04T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "j6FPV6y3hyDBGC0c", "quantity": 7, "sku": "ArGf5LkT7ampXpiK"}]}], "userIdExpression": "mXAWC9x9lqgEx4nb"}' \
    > test.out 2>&1
eval_tap $? 180 'UpdateReward' test.out

#- 181 DeleteReward
samples/cli/sample-apps Platform deleteReward \
    --namespace $AB_NAMESPACE \
    --rewardId '6K8Rc3dR3tSmKjQS' \
    > test.out 2>&1
eval_tap $? 181 'DeleteReward' test.out

#- 182 CheckEventCondition
samples/cli/sample-apps Platform checkEventCondition \
    --namespace $AB_NAMESPACE \
    --rewardId 'E1khh0InMMvsAIU6' \
    --body '{"payload": {"5sOFUviPDQP2XRPR": {}, "sowShnyiIXBpmZ1Z": {}, "QZ5omk8c3xotnsDF": {}}}' \
    > test.out 2>&1
eval_tap $? 182 'CheckEventCondition' test.out

#- 183 DeleteRewardConditionRecord
samples/cli/sample-apps Platform deleteRewardConditionRecord \
    --namespace $AB_NAMESPACE \
    --rewardId 'DvSJjAwNDtSEp3Cc' \
    --body '{"conditionName": "I90W9jmriJWbP5Y7", "userId": "53nfgaAM2FgIwLXR"}' \
    > test.out 2>&1
eval_tap $? 183 'DeleteRewardConditionRecord' test.out

#- 184 QuerySections
samples/cli/sample-apps Platform querySections \
    --namespace $AB_NAMESPACE \
    --end 'qxY3kTiUM3Yp4P7k' \
    --limit '37' \
    --offset '99' \
    --start 'wudWAZs30mHZKCtx' \
    --storeId 'j7qYF0P6WPABya8z' \
    --viewId 'G76GQ7gT8E93r4f5' \
    > test.out 2>&1
eval_tap $? 184 'QuerySections' test.out

#- 185 CreateSection
samples/cli/sample-apps Platform createSection \
    --namespace $AB_NAMESPACE \
    --storeId 'zfaKxyCPd181skR0' \
    --body '{"active": true, "displayOrder": 55, "endDate": "1988-07-01T00:00:00Z", "ext": {"2UsBDRR2IeFWzDRt": {}, "V8pPZpNuBGxcnI5s": {}, "iRqXHKUz9U15Zl1N": {}}, "fixedPeriodRotationConfig": {"backfillType": "NONE", "duration": 25, "itemCount": 15, "rule": "SEQUENCE"}, "items": [{"id": "X6yR1It3Mtevgk7L", "sku": "cXffEXHGCqVJtD3B"}, {"id": "bImxEhbnGRXd8wlJ", "sku": "nDfpbTtjy9q6hZm2"}, {"id": "avbj4qotedRXKfUa", "sku": "n9d5ze6i1J9b7l1n"}], "localizations": {"rg1Gr7DdIdScgFqx": {"description": "wRFzuWq9sCl2oHzi", "localExt": {"3a6IeMF2S8TqnlNC": {}, "qWkwMKfOvIR8tz37": {}, "uydGcq8mEymXpFmF": {}}, "longDescription": "i7Pwl7el0tMgOvDI", "title": "9ZQ1JEWHEVUt998i"}, "Unwz3cYs5Tw2hJLQ": {"description": "MmZYWaWU2Hzwr6ZH", "localExt": {"xoDu4hMjxSUjuOF8": {}, "wUBG78rurL4XetSe": {}, "mynRnWWH9NhdJlAB": {}}, "longDescription": "Esg57GF6OjgcsNRr", "title": "tv9oyVB5dDZVy6Kz"}, "woeCqAobuDaDuuR4": {"description": "bEOd0Tycc8iperuY", "localExt": {"baRQrdz8cq2Hzp6K": {}, "LrV8L4QVHivkoaFN": {}, "ZWjJ3EZk0zvZ8EFl": {}}, "longDescription": "rMcnLgqg0bDFqIZw", "title": "22LVFqM2RDd6xZTd"}}, "name": "YQewfYBCKalqmySx", "rotationType": "CUSTOM", "startDate": "1992-04-25T00:00:00Z", "viewId": "F2G5qh3DyF272eKf"}' \
    > test.out 2>&1
eval_tap $? 185 'CreateSection' test.out

#- 186 PurgeExpiredSection
samples/cli/sample-apps Platform purgeExpiredSection \
    --namespace $AB_NAMESPACE \
    --storeId 'IH2cKuvFAQ0ZObRv' \
    > test.out 2>&1
eval_tap $? 186 'PurgeExpiredSection' test.out

#- 187 GetSection
samples/cli/sample-apps Platform getSection \
    --namespace $AB_NAMESPACE \
    --sectionId 'UMRzPv5PzUTX3FgO' \
    --storeId 'OSye229BzjG5SELV' \
    > test.out 2>&1
eval_tap $? 187 'GetSection' test.out

#- 188 UpdateSection
samples/cli/sample-apps Platform updateSection \
    --namespace $AB_NAMESPACE \
    --sectionId 'Bz6bVhaC0OUxgNZp' \
    --storeId 'lyb5PfrJA4EWYDzd' \
    --body '{"active": true, "displayOrder": 81, "endDate": "1986-05-03T00:00:00Z", "ext": {"UpfwMj9aqobYOzWf": {}, "jpO2fcSwLo5LU96l": {}, "95QYK7ap588wGcYP": {}}, "fixedPeriodRotationConfig": {"backfillType": "NONE", "duration": 4, "itemCount": 62, "rule": "SEQUENCE"}, "items": [{"id": "9QyQidXXzrdGAVwA", "sku": "7mtQEglDyN36hYdm"}, {"id": "q0HPG7CqDUcGXWXv", "sku": "YnQVq1Fnfh4J6bHl"}, {"id": "yMDNXwa3yEaiYOPS", "sku": "HQYrdlZxX63r5XMj"}], "localizations": {"0HEk8TObOmYZVUDT": {"description": "89ftnTEaEnW62aXH", "localExt": {"K1UzwVPrSakGX0wQ": {}, "breda8782p7lMu67": {}, "4cXeM1gpB6A0YfWi": {}}, "longDescription": "gQacd0HNW9QkNChD", "title": "x6kXcwU9HaObsqIX"}, "jj4iWooTS7XaHiV3": {"description": "HjtOg3qca15NXmsA", "localExt": {"G0prRk2IuZxkIq5d": {}, "OJf7IOXIVmyojnoL": {}, "5uIdeZpaWcwfVcCg": {}}, "longDescription": "5mPzGB3f5fVywkmE", "title": "LWcuJf4e5UVfYOJj"}, "hJQfDTG3lmAs5zHh": {"description": "YdT0eV3v3G7Cdf7J", "localExt": {"HPhHe8TEvFscg3lQ": {}, "pxxknUEYl20QSstW": {}, "DA6IJGMKdlBT5ohN": {}}, "longDescription": "DymM4y0GFAwNQyIe", "title": "UBAzEoGwXscdW3Z2"}}, "name": "5kC1NiaNY4o7Lsd2", "rotationType": "NONE", "startDate": "1998-09-17T00:00:00Z", "viewId": "r3kwttcTlLqqnHcp"}' \
    > test.out 2>&1
eval_tap $? 188 'UpdateSection' test.out

#- 189 DeleteSection
samples/cli/sample-apps Platform deleteSection \
    --namespace $AB_NAMESPACE \
    --sectionId 'hQCv77IiWDCCPOMd' \
    --storeId 'VIXjWJfOL7m6eNJy' \
    > test.out 2>&1
eval_tap $? 189 'DeleteSection' test.out

#- 190 ListStores
samples/cli/sample-apps Platform listStores \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 190 'ListStores' test.out

#- 191 CreateStore
samples/cli/sample-apps Platform createStore \
    --namespace $AB_NAMESPACE \
    --body '{"defaultLanguage": "ksmSTNqQC2fqUVAp", "defaultRegion": "N0vqyds3K7FrchaD", "description": "Bwt2NZG7AwQAzzUX", "supportedLanguages": ["R7yXCAtsNc5Y23aV", "i85lzucUYiYjknq9", "mygp2pD8AgK5YqSt"], "supportedRegions": ["j6DsbkO5AsHZvh2R", "D6cG8m2UHB3MMk5e", "SdR8PSAfgTjPvt4B"], "title": "YoHm9hZh0408JREc"}' \
    > test.out 2>&1
eval_tap $? 191 'CreateStore' test.out

#- 192 GetCatalogDefinition
samples/cli/sample-apps Platform getCatalogDefinition \
    --namespace $AB_NAMESPACE \
    --catalogType 'APP' \
    > test.out 2>&1
eval_tap $? 192 'GetCatalogDefinition' test.out

#- 193 DownloadCSVTemplates
samples/cli/sample-apps Platform downloadCSVTemplates \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 193 'DownloadCSVTemplates' test.out

#- 194 ExportStoreByCSV
samples/cli/sample-apps Platform exportStoreByCSV \
    --namespace $AB_NAMESPACE \
    --body '{"catalogType": "VIEW", "fieldsToBeIncluded": ["G0cgYL8BlMILcVwa", "YTExkJg9XU10SOcv", "l67klmhhia1WU4VI"], "idsToBeExported": ["OUCwgkf8Dz94OiRh", "VV4PtYPAmumdL5DP", "8AHV0vW6UJHpUNEx"], "storeId": "sdnDQlug1dZHcTKr"}' \
    > test.out 2>&1
eval_tap $? 194 'ExportStoreByCSV' test.out

#- 195 ImportStore
eval_tap 0 195 'ImportStore # SKIP deprecated' test.out

#- 196 GetPublishedStore
samples/cli/sample-apps Platform getPublishedStore \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 196 'GetPublishedStore' test.out

#- 197 DeletePublishedStore
samples/cli/sample-apps Platform deletePublishedStore \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 197 'DeletePublishedStore' test.out

#- 198 GetPublishedStoreBackup
samples/cli/sample-apps Platform getPublishedStoreBackup \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 198 'GetPublishedStoreBackup' test.out

#- 199 RollbackPublishedStore
samples/cli/sample-apps Platform rollbackPublishedStore \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 199 'RollbackPublishedStore' test.out

#- 200 GetStore
samples/cli/sample-apps Platform getStore \
    --namespace $AB_NAMESPACE \
    --storeId '0vao0LxAfb7by9L9' \
    > test.out 2>&1
eval_tap $? 200 'GetStore' test.out

#- 201 UpdateStore
samples/cli/sample-apps Platform updateStore \
    --namespace $AB_NAMESPACE \
    --storeId 'MAWIHKSnGM0MlnJm' \
    --body '{"defaultLanguage": "e5REnjjkqVlz6Ctn", "defaultRegion": "xk40xOjKew1xPXU5", "description": "h2U3PmqwArk9IQp4", "supportedLanguages": ["O8dTCjvy8wswZrde", "Dc7HtDOKUyBVWa0Z", "htKvIJjzoOMOsOzY"], "supportedRegions": ["Rllp30fyOnLMMFSY", "NtObXih2LuanawDZ", "fvSDEcGA60lyNYn0"], "title": "yXHMtQLjVNcfRLAf"}' \
    > test.out 2>&1
eval_tap $? 201 'UpdateStore' test.out

#- 202 DeleteStore
samples/cli/sample-apps Platform deleteStore \
    --namespace $AB_NAMESPACE \
    --storeId 'AP5IBxQLrORvtTwJ' \
    > test.out 2>&1
eval_tap $? 202 'DeleteStore' test.out

#- 203 QueryChanges
samples/cli/sample-apps Platform queryChanges \
    --namespace $AB_NAMESPACE \
    --storeId 'YYO86CEXkWTH9OzY' \
    --action 'DELETE' \
    --itemSku 'THzjQmwZYIXsfke2' \
    --itemType 'BUNDLE' \
    --limit '61' \
    --offset '2' \
    --selected 'false' \
    --sortBy '["createdAt", "updatedAt:desc", "createdAt:asc"]' \
    --status 'PUBLISHED' \
    --type 'ITEM' \
    --updatedAtEnd 'DTJOBWKmZcrAMQMl' \
    --updatedAtStart 'WRZycvIga4lotIjD' \
    --withTotal 'true' \
    > test.out 2>&1
eval_tap $? 203 'QueryChanges' test.out

#- 204 PublishAll
samples/cli/sample-apps Platform publishAll \
    --namespace $AB_NAMESPACE \
    --storeId 'odnL0vgRPfLcxDly' \
    > test.out 2>&1
eval_tap $? 204 'PublishAll' test.out

#- 205 PublishSelected
samples/cli/sample-apps Platform publishSelected \
    --namespace $AB_NAMESPACE \
    --storeId 'JeghXFgExyWgbd3o' \
    > test.out 2>&1
eval_tap $? 205 'PublishSelected' test.out

#- 206 SelectAllRecords
samples/cli/sample-apps Platform selectAllRecords \
    --namespace $AB_NAMESPACE \
    --storeId 'SxbY4hnTDIQdAQkX' \
    > test.out 2>&1
eval_tap $? 206 'SelectAllRecords' test.out

#- 207 SelectAllRecordsByCriteria
samples/cli/sample-apps Platform selectAllRecordsByCriteria \
    --namespace $AB_NAMESPACE \
    --storeId 'C0ZUapEfyLIzMvMn' \
    --action 'UPDATE' \
    --itemSku '79jTXPDl6rdNI1ut' \
    --itemType 'APP' \
    --selected 'false' \
    --type 'CATEGORY' \
    --updatedAtEnd 'nQ9RvQgVyXj9xqgJ' \
    --updatedAtStart 'OnqgDJh2zhQCY9nJ' \
    > test.out 2>&1
eval_tap $? 207 'SelectAllRecordsByCriteria' test.out

#- 208 GetStatistic
samples/cli/sample-apps Platform getStatistic \
    --namespace $AB_NAMESPACE \
    --storeId '8dfxFE5L2ogp7AQq' \
    --action 'UPDATE' \
    --itemSku 'oPDBOhnunTuT3nEG' \
    --itemType 'APP' \
    --type 'CATEGORY' \
    --updatedAtEnd 'uw4kDtCEbs7ClHgh' \
    --updatedAtStart 'OdRwG1y11CPuyDgY' \
    > test.out 2>&1
eval_tap $? 208 'GetStatistic' test.out

#- 209 UnselectAllRecords
samples/cli/sample-apps Platform unselectAllRecords \
    --namespace $AB_NAMESPACE \
    --storeId '2ECDceakdfNWFlYm' \
    > test.out 2>&1
eval_tap $? 209 'UnselectAllRecords' test.out

#- 210 SelectRecord
samples/cli/sample-apps Platform selectRecord \
    --changeId 'eHzlCfu2QTzJEzrN' \
    --namespace $AB_NAMESPACE \
    --storeId 'imFTOqxbtYFwrIHc' \
    > test.out 2>&1
eval_tap $? 210 'SelectRecord' test.out

#- 211 UnselectRecord
samples/cli/sample-apps Platform unselectRecord \
    --changeId '9GT6FnOrub8TudPT' \
    --namespace $AB_NAMESPACE \
    --storeId 'iMad9TY6ZKQ3hAyN' \
    > test.out 2>&1
eval_tap $? 211 'UnselectRecord' test.out

#- 212 CloneStore
samples/cli/sample-apps Platform cloneStore \
    --namespace $AB_NAMESPACE \
    --storeId 'Lpi494KRoIG875kD' \
    --targetStoreId 'MqfVBhgG4SNXlqnV' \
    > test.out 2>&1
eval_tap $? 212 'CloneStore' test.out

#- 213 ExportStore
eval_tap 0 213 'ExportStore # SKIP deprecated' test.out

#- 214 QueryImportHistory
samples/cli/sample-apps Platform queryImportHistory \
    --namespace $AB_NAMESPACE \
    --storeId 'b2Ha1iYvtRid6irP' \
    --end 'eM9lYL8z8A5iWvd7' \
    --limit '83' \
    --offset '54' \
    --sortBy 'cAPST7mD1JIldTr5' \
    --start '5EgZ8sFxNIdDX3ZY' \
    --success 'true' \
    > test.out 2>&1
eval_tap $? 214 'QueryImportHistory' test.out

#- 215 ImportStoreByCSV
samples/cli/sample-apps Platform importStoreByCSV \
    --namespace $AB_NAMESPACE \
    --storeId 'DZLBMqjjflkqSa5O' \
    --category 'tmp.dat' \
    --display 'tmp.dat' \
    --item 'tmp.dat' \
    --notes 'YwrE191EPQJd1ZaS' \
    --section 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 215 'ImportStoreByCSV' test.out

#- 216 QuerySubscriptions
samples/cli/sample-apps Platform querySubscriptions \
    --namespace $AB_NAMESPACE \
    --chargeStatus 'SETUP' \
    --itemId '6WY7XmG7mXgCJ4OO' \
    --limit '23' \
    --offset '65' \
    --sku 'qcqyiDS9mrrIyUjt' \
    --status 'EXPIRED' \
    --subscribedBy 'USER' \
    --userId 'koNgYHXYulNIIAGW' \
    > test.out 2>&1
eval_tap $? 216 'QuerySubscriptions' test.out

#- 217 RecurringChargeSubscription
samples/cli/sample-apps Platform recurringChargeSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'i4v3MhX2POKNstzu' \
    > test.out 2>&1
eval_tap $? 217 'RecurringChargeSubscription' test.out

#- 218 GetTicketDynamic
samples/cli/sample-apps Platform getTicketDynamic \
    --boothName 'XCypBaHxDZLuAffP' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 218 'GetTicketDynamic' test.out

#- 219 DecreaseTicketSale
samples/cli/sample-apps Platform decreaseTicketSale \
    --boothName '1IqgA4k8wuZWvegT' \
    --namespace $AB_NAMESPACE \
    --body '{"orderNo": "vPil11nzCjrgQ6qV"}' \
    > test.out 2>&1
eval_tap $? 219 'DecreaseTicketSale' test.out

#- 220 GetTicketBoothID
samples/cli/sample-apps Platform getTicketBoothID \
    --boothName 'Q7jyR1KYYjXJ5PfX' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 220 'GetTicketBoothID' test.out

#- 221 IncreaseTicketSale
samples/cli/sample-apps Platform increaseTicketSale \
    --boothName 'vSINUCYhc9Cv9OOs' \
    --namespace $AB_NAMESPACE \
    --body '{"count": 3, "orderNo": "L236g04Kx3BGBJEw"}' \
    > test.out 2>&1
eval_tap $? 221 'IncreaseTicketSale' test.out

#- 222 Commit
samples/cli/sample-apps Platform commit \
    --namespace $AB_NAMESPACE \
    --body '{"actions": [{"operations": [{"creditPayload": {"balanceOrigin": "Oculus", "count": 43, "currencyCode": "ooHjwC6pc8O6EPcO", "expireAt": "1977-05-23T00:00:00Z"}, "debitPayload": {"count": 21, "currencyCode": "82k9SiSFYMCAkjBP", "walletPlatform": "Steam"}, "fulFillItemPayload": {"count": 19, "entitlementCollectionId": "XvngJhsEkGu088NG", "entitlementOrigin": "Epic", "itemIdentity": "NEhkJ8VYgQdCKgGz", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 100, "entitlementId": "7NVQcevQKi1W0hXe"}, "type": "REVOKE_ENTITLEMENT"}, {"creditPayload": {"balanceOrigin": "Epic", "count": 60, "currencyCode": "zpAqESqdoJog0DxG", "expireAt": "1984-11-06T00:00:00Z"}, "debitPayload": {"count": 36, "currencyCode": "5NBY4dG4dKzQyGoP", "walletPlatform": "Xbox"}, "fulFillItemPayload": {"count": 19, "entitlementCollectionId": "2d17qZn2WZtERyEm", "entitlementOrigin": "Nintendo", "itemIdentity": "zc42NRKjg8HsSzdo", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 16, "entitlementId": "kOECc2bnqMz6IOXu"}, "type": "DEBIT_WALLET"}, {"creditPayload": {"balanceOrigin": "GooglePlay", "count": 23, "currencyCode": "W5hiRoMkqUnjQIzD", "expireAt": "1980-08-07T00:00:00Z"}, "debitPayload": {"count": 81, "currencyCode": "Kg5Dy1XrR72W7qk6", "walletPlatform": "Steam"}, "fulFillItemPayload": {"count": 64, "entitlementCollectionId": "hbQ8BY8xbZRYZoal", "entitlementOrigin": "Xbox", "itemIdentity": "GxmDQcWie1954z4O", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 24, "entitlementId": "C0neSI5S4hgHOuL4"}, "type": "DEBIT_WALLET"}], "userId": "wjtkT2jTG3xYF8c2"}, {"operations": [{"creditPayload": {"balanceOrigin": "IOS", "count": 80, "currencyCode": "wgESVHR6SB8qUQ8z", "expireAt": "1996-05-10T00:00:00Z"}, "debitPayload": {"count": 81, "currencyCode": "CCCPlb6h06LCbTBj", "walletPlatform": "Nintendo"}, "fulFillItemPayload": {"count": 55, "entitlementCollectionId": "hMCe9MKhy1L1vFEy", "entitlementOrigin": "Other", "itemIdentity": "T0KsZTYCuStDWPY1", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 26, "entitlementId": "QcUN62KLRgsLhvTy"}, "type": "REVOKE_ENTITLEMENT"}, {"creditPayload": {"balanceOrigin": "Playstation", "count": 59, "currencyCode": "GTxSufiMf4WGDEFE", "expireAt": "1999-07-04T00:00:00Z"}, "debitPayload": {"count": 62, "currencyCode": "enuRNqmCeRDoJKmz", "walletPlatform": "Xbox"}, "fulFillItemPayload": {"count": 26, "entitlementCollectionId": "4ppRw8AKQUM0jkFk", "entitlementOrigin": "GooglePlay", "itemIdentity": "8N0QlYogsTWwAsNO", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 49, "entitlementId": "vadkxrRr5gERROjO"}, "type": "REVOKE_ENTITLEMENT"}, {"creditPayload": {"balanceOrigin": "Oculus", "count": 47, "currencyCode": "J9lavjqjxoibMujd", "expireAt": "1989-01-22T00:00:00Z"}, "debitPayload": {"count": 62, "currencyCode": "J9LlCBCTbcpqymXq", "walletPlatform": "GooglePlay"}, "fulFillItemPayload": {"count": 56, "entitlementCollectionId": "jlllxnzYKMoGJ3cs", "entitlementOrigin": "GooglePlay", "itemIdentity": "sMO0SsebulpuirQ0", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 6, "entitlementId": "7pswbEGFDXbCCkWO"}, "type": "DEBIT_WALLET"}], "userId": "eAMq2DNPeI22CWJG"}, {"operations": [{"creditPayload": {"balanceOrigin": "Playstation", "count": 40, "currencyCode": "riHWmzGsrJXR5bol", "expireAt": "1971-07-25T00:00:00Z"}, "debitPayload": {"count": 95, "currencyCode": "skntQfTA3IgSMGQv", "walletPlatform": "IOS"}, "fulFillItemPayload": {"count": 38, "entitlementCollectionId": "ExJIE2VFsQ9myWZz", "entitlementOrigin": "Epic", "itemIdentity": "VwqOoV2hryvlEsUJ", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 8, "entitlementId": "tAlF6dBRE4PX9tyJ"}, "type": "CREDIT_WALLET"}, {"creditPayload": {"balanceOrigin": "System", "count": 14, "currencyCode": "TkuNTq8d7tQ9DgoO", "expireAt": "1992-12-31T00:00:00Z"}, "debitPayload": {"count": 35, "currencyCode": "vaUbg94hepeqjF0z", "walletPlatform": "Xbox"}, "fulFillItemPayload": {"count": 63, "entitlementCollectionId": "wg5A8x8W0FOXA7Oz", "entitlementOrigin": "Steam", "itemIdentity": "UwrNptUs89n9Cf5A", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 6, "entitlementId": "VfXqn2Oyo8WeQ2uR"}, "type": "CREDIT_WALLET"}, {"creditPayload": {"balanceOrigin": "Steam", "count": 2, "currencyCode": "Bq0RZTDowCKmav8j", "expireAt": "1980-11-07T00:00:00Z"}, "debitPayload": {"count": 42, "currencyCode": "fn0PbpTDbLxjIc8H", "walletPlatform": "GooglePlay"}, "fulFillItemPayload": {"count": 25, "entitlementCollectionId": "4nPQwKhoaOvl5AGS", "entitlementOrigin": "GooglePlay", "itemIdentity": "Vzw6X1D8Zll6v0ty", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 25, "entitlementId": "kfemhXaGuKtoyvoL"}, "type": "DEBIT_WALLET"}], "userId": "qogiyRtSwmJQABM8"}], "metadata": {"KYgl4mMPPQy6ZnZC": {}, "IuDACcH1uVPNjtjn": {}, "g0QT4VpE0YJfBPbz": {}}, "needPreCheck": true, "transactionId": "uD2kFzKTIKwmiQxf", "type": "zPNrP7onV3d9PRVr"}' \
    > test.out 2>&1
eval_tap $? 222 'Commit' test.out

#- 223 GetTradeHistoryByCriteria
samples/cli/sample-apps Platform getTradeHistoryByCriteria \
    --namespace $AB_NAMESPACE \
    --limit '11' \
    --offset '99' \
    --status 'INIT' \
    --type '3AkkZaSrsk2N0MO7' \
    --userId 'ETtp3Gnv8ZUplUuk' \
    > test.out 2>&1
eval_tap $? 223 'GetTradeHistoryByCriteria' test.out

#- 224 GetTradeHistoryByTransactionId
samples/cli/sample-apps Platform getTradeHistoryByTransactionId \
    --namespace $AB_NAMESPACE \
    --transactionId 'srHzTluyRUIurmBu' \
    > test.out 2>&1
eval_tap $? 224 'GetTradeHistoryByTransactionId' test.out

#- 225 UnlockSteamUserAchievement
samples/cli/sample-apps Platform unlockSteamUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'XlaESaa6pHTwsZuE' \
    --body '{"achievements": [{"id": "yFRVJelMS5dAfTIo", "value": 49}, {"id": "WZT5zsBvVgTvKNkq", "value": 97}, {"id": "US7fPmvISuVuvJbf", "value": 20}], "steamUserId": "kSe2kNkEwA9T254q"}' \
    > test.out 2>&1
eval_tap $? 225 'UnlockSteamUserAchievement' test.out

#- 226 GetXblUserAchievements
samples/cli/sample-apps Platform getXblUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId 'VuS1IwVZgTNITFnC' \
    --xboxUserId 'EEXmezXrrR0zQp0Z' \
    > test.out 2>&1
eval_tap $? 226 'GetXblUserAchievements' test.out

#- 227 UpdateXblUserAchievement
samples/cli/sample-apps Platform updateXblUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'DMwW900wt4lDQYUI' \
    --body '{"achievements": [{"id": "7RPFWnFd9Znte2kY", "percentComplete": 58}, {"id": "IyY6WG7R6bjdzIGb", "percentComplete": 58}, {"id": "6otPJ8sBot7kviV3", "percentComplete": 69}], "serviceConfigId": "4zPgvJU7xebYklSj", "titleId": "NmtzgOtvQU3Yed0G", "xboxUserId": "Ii9Ez9AGwhtYmTYd"}' \
    > test.out 2>&1
eval_tap $? 227 'UpdateXblUserAchievement' test.out

#- 228 AnonymizeCampaign
samples/cli/sample-apps Platform anonymizeCampaign \
    --namespace $AB_NAMESPACE \
    --userId 'HuaCyAbFXGQYrRY9' \
    > test.out 2>&1
eval_tap $? 228 'AnonymizeCampaign' test.out

#- 229 AnonymizeEntitlement
samples/cli/sample-apps Platform anonymizeEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'DVr2SMHeSKBe6S5I' \
    > test.out 2>&1
eval_tap $? 229 'AnonymizeEntitlement' test.out

#- 230 AnonymizeFulfillment
samples/cli/sample-apps Platform anonymizeFulfillment \
    --namespace $AB_NAMESPACE \
    --userId 'E88hj3TlQetT28Bs' \
    > test.out 2>&1
eval_tap $? 230 'AnonymizeFulfillment' test.out

#- 231 AnonymizeIntegration
samples/cli/sample-apps Platform anonymizeIntegration \
    --namespace $AB_NAMESPACE \
    --userId 'eozQbGEZY9uS7tow' \
    > test.out 2>&1
eval_tap $? 231 'AnonymizeIntegration' test.out

#- 232 AnonymizeOrder
samples/cli/sample-apps Platform anonymizeOrder \
    --namespace $AB_NAMESPACE \
    --userId 'wrQFbyu207DLVVYT' \
    > test.out 2>&1
eval_tap $? 232 'AnonymizeOrder' test.out

#- 233 AnonymizePayment
samples/cli/sample-apps Platform anonymizePayment \
    --namespace $AB_NAMESPACE \
    --userId 'wDcg4PDL1ijjoJAW' \
    > test.out 2>&1
eval_tap $? 233 'AnonymizePayment' test.out

#- 234 AnonymizeRevocation
samples/cli/sample-apps Platform anonymizeRevocation \
    --namespace $AB_NAMESPACE \
    --userId 'O4bs3NcyrJ96jzPB' \
    > test.out 2>&1
eval_tap $? 234 'AnonymizeRevocation' test.out

#- 235 AnonymizeSubscription
samples/cli/sample-apps Platform anonymizeSubscription \
    --namespace $AB_NAMESPACE \
    --userId 'jHjuGQBl5woFF1Lf' \
    > test.out 2>&1
eval_tap $? 235 'AnonymizeSubscription' test.out

#- 236 AnonymizeWallet
samples/cli/sample-apps Platform anonymizeWallet \
    --namespace $AB_NAMESPACE \
    --userId 'FQjbiMIx4Z2NNA6U' \
    > test.out 2>&1
eval_tap $? 236 'AnonymizeWallet' test.out

#- 237 GetUserDLCByPlatform
samples/cli/sample-apps Platform getUserDLCByPlatform \
    --namespace $AB_NAMESPACE \
    --userId 'CS0fIC1nbd4Z0gSC' \
    --type 'OCULUS' \
    > test.out 2>&1
eval_tap $? 237 'GetUserDLCByPlatform' test.out

#- 238 GetUserDLC
samples/cli/sample-apps Platform getUserDLC \
    --namespace $AB_NAMESPACE \
    --userId 'unbt6r0VKaeliIjR' \
    --includeAllNamespaces 'true' \
    --status 'FULFILLED' \
    --type 'STEAM' \
    > test.out 2>&1
eval_tap $? 238 'GetUserDLC' test.out

#- 239 QueryUserEntitlements
samples/cli/sample-apps Platform queryUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'ScR5wfkMO8EHEdfH' \
    --activeOnly 'true' \
    --appType 'DLC' \
    --collectionId 'txge7OxdmZx6jBEf' \
    --entitlementClazz 'APP' \
    --entitlementName 'mY46gndTBipY8x3t' \
    --features '["GWHQEVxu2YvTmkum", "UYnBA2GU2Ly3tb9A", "Y880U3BlDZdg0IBj"]' \
    --fuzzyMatchName 'false' \
    --itemId '["Zm31NpsRtqcz3kus", "xc3akfGFAQqMkTQ9", "D8O8M8y3nMd8AxQx"]' \
    --limit '79' \
    --offset '81' \
    --origin 'IOS' \
    > test.out 2>&1
eval_tap $? 239 'QueryUserEntitlements' test.out

#- 240 GrantUserEntitlement
samples/cli/sample-apps Platform grantUserEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'WPy9MllLZSF644ZM' \
    --body '[{"collectionId": "q8DTCmKMxWDqLEPP", "endDate": "1999-11-24T00:00:00Z", "grantedCode": "uYCMz6pOwdiZTzUO", "itemId": "vw4Q8psY48j5QlmR", "itemNamespace": "MyKBDLZ3GTuTZnT4", "language": "djnY-229", "origin": "Epic", "quantity": 62, "region": "0Ord9OZjOtFPqqrB", "source": "REWARD", "startDate": "1997-08-25T00:00:00Z", "storeId": "K0xTb6WZyArgNo6p"}, {"collectionId": "lc9eA5WDVh43HMuo", "endDate": "1997-03-08T00:00:00Z", "grantedCode": "jUzwhHgCXgOKE9SF", "itemId": "PJ5y3OjCMQRzh5yy", "itemNamespace": "HJ0kH8BWJETmq570", "language": "LNwp-ppRb-as", "origin": "Twitch", "quantity": 86, "region": "kpgZQoQ0ToAYCraC", "source": "IAP", "startDate": "1977-07-17T00:00:00Z", "storeId": "QVoHoWf2e1E07k3F"}, {"collectionId": "6Jg7B64aelZrkzOM", "endDate": "1971-01-13T00:00:00Z", "grantedCode": "5RAgd6Nfqe8D4Bl9", "itemId": "yp3a8ma9WQqOaTpP", "itemNamespace": "23x2fwybwtc6YSrK", "language": "PvY_391", "origin": "System", "quantity": 92, "region": "L1W80jOsHfE2cV0a", "source": "REWARD", "startDate": "1994-08-16T00:00:00Z", "storeId": "9ldR3UUcuwGf4M72"}]' \
    > test.out 2>&1
eval_tap $? 240 'GrantUserEntitlement' test.out

#- 241 GetUserAppEntitlementByAppId
samples/cli/sample-apps Platform getUserAppEntitlementByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'BOjyfLN0mk7Q3hNl' \
    --activeOnly 'false' \
    --appId '22SbE9Bqm32k8Iaq' \
    > test.out 2>&1
eval_tap $? 241 'GetUserAppEntitlementByAppId' test.out

#- 242 QueryUserEntitlementsByAppType
samples/cli/sample-apps Platform queryUserEntitlementsByAppType \
    --namespace $AB_NAMESPACE \
    --userId 'm1DSpYhmTcM53vob' \
    --activeOnly 'true' \
    --limit '95' \
    --offset '95' \
    --appType 'SOFTWARE' \
    > test.out 2>&1
eval_tap $? 242 'QueryUserEntitlementsByAppType' test.out

#- 243 GetUserEntitlementByItemId
samples/cli/sample-apps Platform getUserEntitlementByItemId \
    --namespace $AB_NAMESPACE \
    --userId '5XOsYyKDmpvzG64B' \
    --activeOnly 'false' \
    --entitlementClazz 'CODE' \
    --platform 'F3RHstL9uenRp0wQ' \
    --itemId 'mvdAb55UhBcZIijf' \
    > test.out 2>&1
eval_tap $? 243 'GetUserEntitlementByItemId' test.out

#- 244 GetUserActiveEntitlementsByItemIds
samples/cli/sample-apps Platform getUserActiveEntitlementsByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'M0Ms1fkxk8mscr7j' \
    --ids '["ViulQ7D4XL1nEws9", "hVSVHC8X8u1Tlne1", "uKlc0c7rGo723Aaq"]' \
    --platform 'mVizSVYpJmmQVi5l' \
    > test.out 2>&1
eval_tap $? 244 'GetUserActiveEntitlementsByItemIds' test.out

#- 245 GetUserEntitlementBySku
samples/cli/sample-apps Platform getUserEntitlementBySku \
    --namespace $AB_NAMESPACE \
    --userId 'nk1xxYgxelPDpzCM' \
    --activeOnly 'true' \
    --entitlementClazz 'MEDIA' \
    --platform 'HYB4LxbecCDGyOax' \
    --sku 'vbIQsoOdOnyD3q4m' \
    > test.out 2>&1
eval_tap $? 245 'GetUserEntitlementBySku' test.out

#- 246 ExistsAnyUserActiveEntitlement
samples/cli/sample-apps Platform existsAnyUserActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'GDkOg76jlsuXv6pT' \
    --appIds '["t8wyFa2wtwd5oj4G", "1XwnAPW4zHEY4xm4", "FhTEldOlVj6qPuOX"]' \
    --itemIds '["Fnr3QNAcAgcw0COW", "ZHA1U5EDlAD4IDd1", "8vYrTklfp3ctI9rJ"]' \
    --platform 'W6JKE5eNvjBawuKP' \
    --skus '["SDlH7xSzTOrL0Cml", "KO50TBgeDDTwt8GP", "8WvW9nOVvjk0IJUt"]' \
    > test.out 2>&1
eval_tap $? 246 'ExistsAnyUserActiveEntitlement' test.out

#- 247 ExistsAnyUserActiveEntitlementByItemIds
samples/cli/sample-apps Platform existsAnyUserActiveEntitlementByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'IPRRtKWVSTa0n6gp' \
    --platform 'nb1OxEA8KqenwE9D' \
    --itemIds '["88QwmImt3M0W9pZI", "uGUZUoezPDJfbbtn", "n8pdkm2LECf6uNzp"]' \
    > test.out 2>&1
eval_tap $? 247 'ExistsAnyUserActiveEntitlementByItemIds' test.out

#- 248 GetUserAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform getUserAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'UWEczaQkuKmtbUB5' \
    --appId 'BpY8U9YeWmnjDSrU' \
    > test.out 2>&1
eval_tap $? 248 'GetUserAppEntitlementOwnershipByAppId' test.out

#- 249 GetUserEntitlementOwnershipByItemId
samples/cli/sample-apps Platform getUserEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --userId '2KV3nFdjPW7Z1uif' \
    --entitlementClazz 'ENTITLEMENT' \
    --platform 'agco0nmhVgdm8ywt' \
    --itemId 'isppL1gND0fGJp2w' \
    > test.out 2>&1
eval_tap $? 249 'GetUserEntitlementOwnershipByItemId' test.out

#- 250 GetUserEntitlementOwnershipByItemIds
samples/cli/sample-apps Platform getUserEntitlementOwnershipByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'rAgkEL1uUnr9n8wl' \
    --ids '["Khqwd1CFgCkMXDym", "p96kT1d3gXk1sgtV", "4eyaSmfzoqH2Stm1"]' \
    --platform 'rhcftgjYSUl7Z2Ge' \
    > test.out 2>&1
eval_tap $? 250 'GetUserEntitlementOwnershipByItemIds' test.out

#- 251 GetUserEntitlementOwnershipBySku
samples/cli/sample-apps Platform getUserEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --userId 'k5Bg4o62NH5n6pIG' \
    --entitlementClazz 'OPTIONBOX' \
    --platform 'xZ3TGcw1EDUJG2Tc' \
    --sku 'QvuvI5KeVOqC2WYu' \
    > test.out 2>&1
eval_tap $? 251 'GetUserEntitlementOwnershipBySku' test.out

#- 252 RevokeAllEntitlements
samples/cli/sample-apps Platform revokeAllEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'noWc0Km0jMpm0cz5' \
    > test.out 2>&1
eval_tap $? 252 'RevokeAllEntitlements' test.out

#- 253 RevokeUserEntitlements
samples/cli/sample-apps Platform revokeUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'L3dApmu9bOG7CEiq' \
    --entitlementIds '7Vu5sml5KrBSrtLu' \
    > test.out 2>&1
eval_tap $? 253 'RevokeUserEntitlements' test.out

#- 254 GetUserEntitlement
samples/cli/sample-apps Platform getUserEntitlement \
    --entitlementId '3HB0S14Qs6hLmiqM' \
    --namespace $AB_NAMESPACE \
    --userId '6ZTJDbekXXfPAc2E' \
    > test.out 2>&1
eval_tap $? 254 'GetUserEntitlement' test.out

#- 255 UpdateUserEntitlement
samples/cli/sample-apps Platform updateUserEntitlement \
    --entitlementId 'l0d4QRbyFK4rp5ji' \
    --namespace $AB_NAMESPACE \
    --userId 'cPGxULS5T4cczDzC' \
    --body '{"collectionId": "Hc5StZxhQIARGIjx", "endDate": "1979-08-20T00:00:00Z", "nullFieldList": ["bvBRCJvn19efBHnh", "k23BndjOpsQiKFcL", "73Bg7Vjqme1WAAGl"], "origin": "System", "reason": "y4SHpkESUfydl5tJ", "startDate": "1976-02-23T00:00:00Z", "status": "ACTIVE", "useCount": 14}' \
    > test.out 2>&1
eval_tap $? 255 'UpdateUserEntitlement' test.out

#- 256 ConsumeUserEntitlement
samples/cli/sample-apps Platform consumeUserEntitlement \
    --entitlementId 'KuNDslSuZgjreVPs' \
    --namespace $AB_NAMESPACE \
    --userId 'cx7l5qEnxaRyYTxv' \
    --body '{"options": ["lVrPeGZiF61RpqQC", "Z7juJbd30gBWVN06", "SV89QrTui32u9uBI"], "platform": "scX8HcUP2dNNkPMy", "requestId": "k56oJe5AbUN4XB9d", "useCount": 34}' \
    > test.out 2>&1
eval_tap $? 256 'ConsumeUserEntitlement' test.out

#- 257 DisableUserEntitlement
samples/cli/sample-apps Platform disableUserEntitlement \
    --entitlementId 'CQ8VoyQu1fYPyfYJ' \
    --namespace $AB_NAMESPACE \
    --userId 'jarnQ3BgihoDybwu' \
    > test.out 2>&1
eval_tap $? 257 'DisableUserEntitlement' test.out

#- 258 EnableUserEntitlement
samples/cli/sample-apps Platform enableUserEntitlement \
    --entitlementId 'q6oE6XgJdbquL81V' \
    --namespace $AB_NAMESPACE \
    --userId 'Ntu8LIgm1uEY2AOK' \
    > test.out 2>&1
eval_tap $? 258 'EnableUserEntitlement' test.out

#- 259 GetUserEntitlementHistories
samples/cli/sample-apps Platform getUserEntitlementHistories \
    --entitlementId 'mT4GVZhbUH5yl4BX' \
    --namespace $AB_NAMESPACE \
    --userId '7wvTHAwQrHeLx73z' \
    > test.out 2>&1
eval_tap $? 259 'GetUserEntitlementHistories' test.out

#- 260 RevokeUserEntitlement
samples/cli/sample-apps Platform revokeUserEntitlement \
    --entitlementId 'ycusUB1w6MoUEZkK' \
    --namespace $AB_NAMESPACE \
    --userId 'r52FZUlNOLI3S2eY' \
    > test.out 2>&1
eval_tap $? 260 'RevokeUserEntitlement' test.out

#- 261 RevokeUserEntitlementByUseCount
samples/cli/sample-apps Platform revokeUserEntitlementByUseCount \
    --entitlementId '2pw9MVIRJqhwC7BQ' \
    --namespace $AB_NAMESPACE \
    --userId 'fXdDCWrDjh3cbwm3' \
    --body '{"reason": "3wiGClEEKqaNiST5", "useCount": 20}' \
    > test.out 2>&1
eval_tap $? 261 'RevokeUserEntitlementByUseCount' test.out

#- 262 PreCheckRevokeUserEntitlementByUseCount
samples/cli/sample-apps Platform preCheckRevokeUserEntitlementByUseCount \
    --entitlementId 'a5AZdHkJ2fTB4kPO' \
    --namespace $AB_NAMESPACE \
    --userId 'TLSTjH1CNpSOTDDp' \
    --quantity '12' \
    > test.out 2>&1
eval_tap $? 262 'PreCheckRevokeUserEntitlementByUseCount' test.out

#- 263 RevokeUseCount
eval_tap 0 263 'RevokeUseCount # SKIP deprecated' test.out

#- 264 SellUserEntitlement
samples/cli/sample-apps Platform sellUserEntitlement \
    --entitlementId 'bAr5fm2KbNHGjLKv' \
    --namespace $AB_NAMESPACE \
    --userId '40npNzK9dHgQzlG6' \
    --body '{"platform": "iumx1aPJutKCGpq7", "requestId": "b7sYidQwM8J5P0oW", "useCount": 63}' \
    > test.out 2>&1
eval_tap $? 264 'SellUserEntitlement' test.out

#- 265 FulfillItem
samples/cli/sample-apps Platform fulfillItem \
    --namespace $AB_NAMESPACE \
    --userId '7yWbGxc1ET10UV0r' \
    --body '{"duration": 48, "endDate": "1992-05-06T00:00:00Z", "entitlementCollectionId": "4Z8M9YkaWMNoFkgf", "entitlementOrigin": "System", "itemId": "C2WjynYah2RU9ZBs", "itemSku": "stWupWCHAsVwUMmv", "language": "Bca4GcAiOBZlKrsM", "metadata": {"V490p6MX5bNYbLwo": {}, "SO8rOji0UXndF8Xx": {}, "hnlE2zKs6vSmvhb6": {}}, "order": {"currency": {"currencyCode": "OsrKEd6N6ppJyEkW", "currencySymbol": "U25SQznIocmEFAnr", "currencyType": "VIRTUAL", "decimals": 91, "namespace": "YC1hr3jqQbb8uM7M"}, "ext": {"3c0SLMrhByiS0dE8": {}, "qzUIuNuchTKZV816": {}, "J5ECg9ODqQVXDX8p": {}}, "free": true}, "orderNo": "LLGCIs4XPNY0qJXo", "origin": "Playstation", "overrideBundleItemQty": {"upUYmncpU4honNVP": 18, "znMQ1E9BLCxL4XeL": 58, "d5anbtEGO23IEDL4": 49}, "quantity": 86, "region": "WC04d3OHWtoWDS4f", "source": "SELL_BACK", "startDate": "1982-05-01T00:00:00Z", "storeId": "GRBK9ISIqV61FNkl"}' \
    > test.out 2>&1
eval_tap $? 265 'FulfillItem' test.out

#- 266 RedeemCode
samples/cli/sample-apps Platform redeemCode \
    --namespace $AB_NAMESPACE \
    --userId '8JYPDVZ8YUcHkJ0Z' \
    --body '{"code": "a2uJwvBaFAnisscI", "language": "RBgo_243", "region": "jVpLnIFfY9mgS0cV"}' \
    > test.out 2>&1
eval_tap $? 266 'RedeemCode' test.out

#- 267 PreCheckFulfillItem
samples/cli/sample-apps Platform preCheckFulfillItem \
    --namespace $AB_NAMESPACE \
    --userId 'jiejY5U0fIQy8gQZ' \
    --body '{"itemId": "QHauMYu5tP46gRTf", "itemSku": "TocC1iiYRR5n3luw", "quantity": 98}' \
    > test.out 2>&1
eval_tap $? 267 'PreCheckFulfillItem' test.out

#- 268 FulfillRewards
samples/cli/sample-apps Platform fulfillRewards \
    --namespace $AB_NAMESPACE \
    --userId 'j2LBfJjewpIujP87' \
    --body '{"entitlementCollectionId": "kfVOcuLrIqmITN8a", "entitlementOrigin": "Steam", "metadata": {"BbfoPHLyLa585Yuc": {}, "aoXkAiPFfcsEA4Np": {}, "oenGeLhZrIkSL2FC": {}}, "origin": "Other", "rewards": [{"currency": {"currencyCode": "tMjqWxFZRMJzSUUa", "namespace": "rKzl7LhwCHhfHtUu"}, "item": {"itemId": "5eXGuL2Ngng1SGzK", "itemName": "ZPkIVk7jrM6MjixP", "itemSku": "nf9Pj3HRZqtedmou", "itemType": "LINK1R5VTyXR6Z94"}, "quantity": 12, "type": "ITEM"}, {"currency": {"currencyCode": "nxCZQIgd9XwuwKR0", "namespace": "dPcw2qo2ZCBCUkJk"}, "item": {"itemId": "vgY5Ey50lgqhmKhE", "itemName": "JgugYCNHknMJh6yp", "itemSku": "LN3NnMj8enC0lYOA", "itemType": "Vt5YBLhY1txiE9O9"}, "quantity": 57, "type": "CURRENCY"}, {"currency": {"currencyCode": "a8w3P2MO1WPKSssB", "namespace": "FNhgElAnD2oEbO7S"}, "item": {"itemId": "i5k0gs3qAWQp6FgS", "itemName": "v6hhoAuOE3oy7euU", "itemSku": "nM55QWpYJthqVgF3", "itemType": "HymZJJpQc7WyjiZO"}, "quantity": 6, "type": "CURRENCY"}], "source": "IAP_CHARGEBACK_REVERSED", "transactionId": "TZxxeHIeMLT7o0HW"}' \
    > test.out 2>&1
eval_tap $? 268 'FulfillRewards' test.out

#- 269 QueryUserIAPOrders
samples/cli/sample-apps Platform queryUserIAPOrders \
    --namespace $AB_NAMESPACE \
    --userId 'ECOW5HecYdENmhX6' \
    --endTime 'uYWG6wIyoIj8jFGB' \
    --limit '22' \
    --offset '0' \
    --productId 'i94WppQ7DOr0JRIm' \
    --startTime 'e54Zv1gNyFbOQjF1' \
    --status 'FAILED' \
    --type 'OCULUS' \
    > test.out 2>&1
eval_tap $? 269 'QueryUserIAPOrders' test.out

#- 270 QueryAllUserIAPOrders
samples/cli/sample-apps Platform queryAllUserIAPOrders \
    --namespace $AB_NAMESPACE \
    --userId 'IlDDVXW6GaS469DC' \
    > test.out 2>&1
eval_tap $? 270 'QueryAllUserIAPOrders' test.out

#- 271 QueryUserIAPConsumeHistory
samples/cli/sample-apps Platform queryUserIAPConsumeHistory \
    --namespace $AB_NAMESPACE \
    --userId 'KdK9DUL2Yj4uC0r2' \
    --endTime 'JsFi9a81U9nN7m3I' \
    --limit '90' \
    --offset '72' \
    --startTime 'tITQ2oQtwq70dUPo' \
    --status 'SUCCESS' \
    --type 'APPLE' \
    > test.out 2>&1
eval_tap $? 271 'QueryUserIAPConsumeHistory' test.out

#- 272 MockFulfillIAPItem
samples/cli/sample-apps Platform mockFulfillIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'ZaC9ltzG5TvZaTiI' \
    --body '{"itemIdentityType": "ITEM_ID", "language": "Vy", "productId": "Ig939FrFxjCZ2JsR", "region": "Qp2ic3vsfebziV1r", "transactionId": "JwSDMXaxdFTOBttV", "type": "TWITCH"}' \
    > test.out 2>&1
eval_tap $? 272 'MockFulfillIAPItem' test.out

#- 273 QueryUserOrders
samples/cli/sample-apps Platform queryUserOrders \
    --namespace $AB_NAMESPACE \
    --userId 'wK00L4dqbOkpEobK' \
    --discounted 'false' \
    --itemId 'QYk6QWOXEW9TPZVQ' \
    --limit '9' \
    --offset '19' \
    --status 'FULFILLED' \
    > test.out 2>&1
eval_tap $? 273 'QueryUserOrders' test.out

#- 274 AdminCreateUserOrder
samples/cli/sample-apps Platform adminCreateUserOrder \
    --namespace $AB_NAMESPACE \
    --userId 'vQOg7uIwp8cCmiuF' \
    --body '{"currencyCode": "PPheJILVwGb2yJhk", "currencyNamespace": "FWSNW1zaMa4lvxyD", "discountCodes": ["BSQhhHG5xPIy7noW", "GCoMDMlr3FVkcvC7", "rqmfmA63aAbbZVKU"], "discountedPrice": 46, "entitlementPlatform": "Nintendo", "ext": {"WuKBXvMJcvvdzwDx": {}, "LkLwmjPWjSxpnEhS": {}, "9YC4Zf2qCdNWPmP4": {}}, "itemId": "11TwXO7uEcLQny2C", "language": "X3EcbuBbu8v5LNE3", "options": {"skipPriceValidation": false}, "platform": "Nintendo", "price": 48, "quantity": 7, "region": "tDU8WbW889gLVdl3", "returnUrl": "WT1yad4MeextvXq2", "sandbox": false, "sectionId": "ICjk8oQJcAhAnuhk"}' \
    > test.out 2>&1
eval_tap $? 274 'AdminCreateUserOrder' test.out

#- 275 CountOfPurchasedItem
samples/cli/sample-apps Platform countOfPurchasedItem \
    --namespace $AB_NAMESPACE \
    --userId 'A0isrhgYscEP1ArJ' \
    --itemId 'kCI9yj3NDwoIMDmk' \
    > test.out 2>&1
eval_tap $? 275 'CountOfPurchasedItem' test.out

#- 276 GetUserOrder
samples/cli/sample-apps Platform getUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'IFS4IQqhFbY035q3' \
    --userId '8TJ4QZEfLm82CYYY' \
    > test.out 2>&1
eval_tap $? 276 'GetUserOrder' test.out

#- 277 UpdateUserOrderStatus
samples/cli/sample-apps Platform updateUserOrderStatus \
    --namespace $AB_NAMESPACE \
    --orderNo 'D7uvKJ2Ptkf6C9XB' \
    --userId 'N7F6iRscgq6hSxZ9' \
    --body '{"status": "DELETED", "statusReason": "zmIyFQ2CbikJXYAf"}' \
    > test.out 2>&1
eval_tap $? 277 'UpdateUserOrderStatus' test.out

#- 278 FulfillUserOrder
samples/cli/sample-apps Platform fulfillUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'gpc8MigQXFbA7B2X' \
    --userId 'hPTxAXSbfQnJR1uh' \
    > test.out 2>&1
eval_tap $? 278 'FulfillUserOrder' test.out

#- 279 GetUserOrderGrant
eval_tap 0 279 'GetUserOrderGrant # SKIP deprecated' test.out

#- 280 GetUserOrderHistories
samples/cli/sample-apps Platform getUserOrderHistories \
    --namespace $AB_NAMESPACE \
    --orderNo 'qYiyTnlaVdN52PKG' \
    --userId 'rlETHdrY1OtuZlWg' \
    > test.out 2>&1
eval_tap $? 280 'GetUserOrderHistories' test.out

#- 281 ProcessUserOrderNotification
samples/cli/sample-apps Platform processUserOrderNotification \
    --namespace $AB_NAMESPACE \
    --orderNo 'UtH4cC4zMAU4M5qN' \
    --userId 'h7tN1HP2YwYklbdB' \
    --body '{"additionalData": {"cardSummary": "ZOEzoMHIz5bbtAVR"}, "authorisedTime": "1974-11-03T00:00:00Z", "chargebackReversedTime": "1992-11-19T00:00:00Z", "chargebackTime": "1998-08-19T00:00:00Z", "chargedTime": "1996-03-01T00:00:00Z", "createdTime": "1983-03-21T00:00:00Z", "currency": {"currencyCode": "A1HkRBbXiAM4nM7o", "currencySymbol": "PvQ17Xh8UIWGesNs", "currencyType": "VIRTUAL", "decimals": 14, "namespace": "0CtuYIq0QYVveMjj"}, "customParameters": {"U2L48FH4g9V5a13P": {}, "lLNsQLLscyDhAzGl": {}, "ktDy6F5n2ZNCN4ii": {}}, "extOrderNo": "k65T5xxewgaz4q55", "extTxId": "kbXPXPN5RJLCDLGi", "extUserId": "4yq7y4GrGeWnoQZZ", "issuedAt": "1983-10-11T00:00:00Z", "metadata": {"orm7hIXyf25AOAYV": "NZ5POnUgCjRB9OHc", "C7imbsksQi9l8AEt": "GI00eOXgSMuv88T1", "3Ap0akAWWLBihV6G": "chKKxQveEPRZPCCv"}, "namespace": "zgsCYtF3YNZiLaPf", "nonceStr": "R2K7nDxHtZ3jwIUA", "paymentData": {"discountAmount": 65, "discountCode": "CA23uHT3Q5GEGT4c", "subtotalPrice": 88, "tax": 82, "totalPrice": 71}, "paymentMethod": "FM2dyogJ2DmcdyCg", "paymentMethodFee": 52, "paymentOrderNo": "EF44eJXcIO1IU00v", "paymentProvider": "WXPAY", "paymentProviderFee": 4, "paymentStationUrl": "6nBHPNYy4kwv5dUq", "price": 72, "refundedTime": "1971-10-28T00:00:00Z", "salesTax": 57, "sandbox": false, "sku": "LKrQdHw2R689wlXW", "status": "AUTHORISE_FAILED", "statusReason": "Nx10aFtUNLItaYzn", "subscriptionId": "cRb1XRbeKAZObHch", "subtotalPrice": 17, "targetNamespace": "BMtT6kO8IGNzVHJL", "targetUserId": "uGegu9Aaoc0AZ3Xa", "tax": 47, "totalPrice": 57, "totalTax": 32, "txEndTime": "1980-07-02T00:00:00Z", "type": "WIr7aqrdOJ7ctQ0F", "userId": "2csEoMpKHzJxf90B", "vat": 64}' \
    > test.out 2>&1
eval_tap $? 281 'ProcessUserOrderNotification' test.out

#- 282 DownloadUserOrderReceipt
samples/cli/sample-apps Platform downloadUserOrderReceipt \
    --namespace $AB_NAMESPACE \
    --orderNo 'EhF2ivognnnqdFXz' \
    --userId 'NEEEuwlopnJNhdpv' \
    > test.out 2>&1
eval_tap $? 282 'DownloadUserOrderReceipt' test.out

#- 283 CreateUserPaymentOrder
samples/cli/sample-apps Platform createUserPaymentOrder \
    --namespace $AB_NAMESPACE \
    --userId 'VtJi9FOarOn0crkC' \
    --body '{"currencyCode": "wrwDx3JReTJNYy3L", "currencyNamespace": "GbbO6dyx79V8dQyl", "customParameters": {"yHPlK6VACJSP1hoe": {}, "BV3rzyhWg4l47SeA": {}, "fk9sDJiXz8VeMbRf": {}}, "description": "0cJefPsAvs1Dzne2", "extOrderNo": "bR9ALRvlYwbU5YWW", "extUserId": "nndrrlydVa3gurTR", "itemType": "MEDIA", "language": "hXg_YyRo", "metadata": {"vbotpnqSOWyxuW37": "Uyky7wo9ida6EqRE", "Mb85j6QENqbJOYt6": "XXgiKCmqfbp4Msjs", "QfaEMkcgC4jqXvP7": "i8ZPfNRUSdxZh5t2"}, "notifyUrl": "2MFpV1g4i59AXMIm", "omitNotification": false, "platform": "2AA0F8umGZQPYfbm", "price": 44, "recurringPaymentOrderNo": "bRZAAObniraRCMpG", "region": "SdMm3RDdxS8IPimZ", "returnUrl": "entI4DHRN6ZovC4c", "sandbox": true, "sku": "sVDTXBxjl3z3YHtu", "subscriptionId": "vKC6h6ktnryKNTsU", "title": "w0ABT2sfuMYKsaGh"}' \
    > test.out 2>&1
eval_tap $? 283 'CreateUserPaymentOrder' test.out

#- 284 RefundUserPaymentOrder
samples/cli/sample-apps Platform refundUserPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'qIAvK7l1JJ7C2MTK' \
    --userId 'AwJJ5VY0JWXpZ8oD' \
    --body '{"description": "ZxhMxRECfC0X83Av"}' \
    > test.out 2>&1
eval_tap $? 284 'RefundUserPaymentOrder' test.out

#- 285 GetUserPlatformAccountClosureHistories
samples/cli/sample-apps Platform getUserPlatformAccountClosureHistories \
    --namespace $AB_NAMESPACE \
    --userId 'EDPKpaMMLvW85UGl' \
    > test.out 2>&1
eval_tap $? 285 'GetUserPlatformAccountClosureHistories' test.out

#- 286 ApplyUserRedemption
samples/cli/sample-apps Platform applyUserRedemption \
    --namespace $AB_NAMESPACE \
    --userId 'PhvMWFoSc4vwZa1H' \
    --body '{"code": "E2FCpJ2taXZb3mZg", "orderNo": "6AxZpFNuPp1DN0Ws"}' \
    > test.out 2>&1
eval_tap $? 286 'ApplyUserRedemption' test.out

#- 287 DoRevocation
samples/cli/sample-apps Platform doRevocation \
    --namespace $AB_NAMESPACE \
    --userId 'tT7ZlRBfLDAoEcvx' \
    --body '{"meta": {"rjtqE7IGFBz1SPOQ": {}, "xbJalVe5KoyWm87O": {}, "N8RCojI5igfIkLft": {}}, "reason": "fIp92rP8lBpAJuLk", "revokeEntries": [{"currency": {"balanceOrigin": "GooglePlay", "currencyCode": "b3EDEHTUpPBhs89Q", "namespace": "eOI8pE1BYZOgta9H"}, "entitlement": {"entitlementId": "xgm46gXzIoJkj0jp"}, "item": {"entitlementOrigin": "Nintendo", "itemIdentity": "g6iuTQITZtTxHRh1", "itemIdentityType": "ITEM_ID", "origin": "System"}, "quantity": 35, "type": "CURRENCY"}, {"currency": {"balanceOrigin": "Epic", "currencyCode": "BHgnMHlTgZ8YmkI0", "namespace": "ANQJ3fFIyQMwK6iL"}, "entitlement": {"entitlementId": "FYaCNfzzTbjLyTFP"}, "item": {"entitlementOrigin": "Nintendo", "itemIdentity": "ee1MGfuGtRlhqC8P", "itemIdentityType": "ITEM_SKU", "origin": "Twitch"}, "quantity": 61, "type": "CURRENCY"}, {"currency": {"balanceOrigin": "System", "currencyCode": "ywJb8W7TQn4YzGvn", "namespace": "33HjZOw7prMqaAsl"}, "entitlement": {"entitlementId": "1F3vrKfwyRSI2FTY"}, "item": {"entitlementOrigin": "Xbox", "itemIdentity": "C4eRP6zNojk6KxQf", "itemIdentityType": "ITEM_ID", "origin": "Xbox"}, "quantity": 68, "type": "ENTITLEMENT"}], "source": "OTHER", "transactionId": "QUHa6WSryNAGKJF8"}' \
    > test.out 2>&1
eval_tap $? 287 'DoRevocation' test.out

#- 288 RegisterXblSessions
samples/cli/sample-apps Platform registerXblSessions \
    --namespace $AB_NAMESPACE \
    --userId '2cMkhgeP3LBPk2FN' \
    --body '{"gameSessionId": "gCJphXBB3wSOo8gO", "payload": {"2jDdXVW3Zl92kVXV": {}, "pIkjTfaDXhTG6QJh": {}, "XWhqtxbHszM6eDeo": {}}, "scid": "AckHZD3ehcBON3MW", "sessionTemplateName": "AwpgXlY0CmVQs3Gm"}' \
    > test.out 2>&1
eval_tap $? 288 'RegisterXblSessions' test.out

#- 289 QueryUserSubscriptions
samples/cli/sample-apps Platform queryUserSubscriptions \
    --namespace $AB_NAMESPACE \
    --userId 'NyurSxfCyIbJzu7l' \
    --chargeStatus 'CHARGE_FAILED' \
    --itemId 'L6VP5fmSm7CcfA12' \
    --limit '34' \
    --offset '73' \
    --sku 'vZ4YpZkSh7xO3D1c' \
    --status 'ACTIVE' \
    --subscribedBy 'PLATFORM' \
    > test.out 2>&1
eval_tap $? 289 'QueryUserSubscriptions' test.out

#- 290 GetUserSubscriptionActivities
samples/cli/sample-apps Platform getUserSubscriptionActivities \
    --namespace $AB_NAMESPACE \
    --userId 'FJaFwJ8Cm69zzZiU' \
    --excludeSystem 'true' \
    --limit '99' \
    --offset '69' \
    --subscriptionId '5RSoUiThDsrbvCUr' \
    > test.out 2>&1
eval_tap $? 290 'GetUserSubscriptionActivities' test.out

#- 291 PlatformSubscribeSubscription
samples/cli/sample-apps Platform platformSubscribeSubscription \
    --namespace $AB_NAMESPACE \
    --userId 'wRUnTGbOf0mpn4NY' \
    --body '{"grantDays": 60, "itemId": "qaE0P7XMHaWn2xoy", "language": "kz1OT7LVUNCdNAEK", "reason": "54q6aq1GIAJm5hU5", "region": "wzgVrAKcJj1hZbUB", "source": "5ciOndXq79LXxzHI"}' \
    > test.out 2>&1
eval_tap $? 291 'PlatformSubscribeSubscription' test.out

#- 292 CheckUserSubscriptionSubscribableByItemId
samples/cli/sample-apps Platform checkUserSubscriptionSubscribableByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'WKpk1EidRHpiSxCS' \
    --itemId 'n4jF9lFFy13uUHQa' \
    > test.out 2>&1
eval_tap $? 292 'CheckUserSubscriptionSubscribableByItemId' test.out

#- 293 GetUserSubscription
samples/cli/sample-apps Platform getUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'ydBJKH1Vmvw1uwua' \
    --userId 'j4qaUA1OYTT35mss' \
    > test.out 2>&1
eval_tap $? 293 'GetUserSubscription' test.out

#- 294 DeleteUserSubscription
samples/cli/sample-apps Platform deleteUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId '0gnoDz3vf1qO4zJg' \
    --userId 'DbWldiiI37OoFE0g' \
    > test.out 2>&1
eval_tap $? 294 'DeleteUserSubscription' test.out

#- 295 CancelSubscription
samples/cli/sample-apps Platform cancelSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId '3fxd146LIkjGEQtT' \
    --userId 'lltQtZ7jzwApNp7p' \
    --force 'true' \
    --body '{"immediate": false, "reason": "jmUtq251Tav0QI1G"}' \
    > test.out 2>&1
eval_tap $? 295 'CancelSubscription' test.out

#- 296 GrantDaysToSubscription
samples/cli/sample-apps Platform grantDaysToSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'O08jLiEvSprRuMAb' \
    --userId 'MaIaI4Ivi7CIIjIN' \
    --body '{"grantDays": 88, "reason": "BIR5wxWnx75fZmS2"}' \
    > test.out 2>&1
eval_tap $? 296 'GrantDaysToSubscription' test.out

#- 297 GetUserSubscriptionBillingHistories
samples/cli/sample-apps Platform getUserSubscriptionBillingHistories \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'Kp6kaoMx8YbzrZMt' \
    --userId 'Aq8222BRBC1T2PrR' \
    --excludeFree 'true' \
    --limit '27' \
    --offset '15' \
    > test.out 2>&1
eval_tap $? 297 'GetUserSubscriptionBillingHistories' test.out

#- 298 ProcessUserSubscriptionNotification
samples/cli/sample-apps Platform processUserSubscriptionNotification \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'kDu6l8Qwt2pzetUM' \
    --userId 'i2MxPztnUn7aTnAM' \
    --body '{"additionalData": {"cardSummary": "epU67v0GO5MTP3hz"}, "authorisedTime": "1999-05-08T00:00:00Z", "chargebackReversedTime": "1997-05-22T00:00:00Z", "chargebackTime": "1971-08-14T00:00:00Z", "chargedTime": "1990-07-22T00:00:00Z", "createdTime": "1993-08-12T00:00:00Z", "currency": {"currencyCode": "YBtDoCPj6A7Y1FXD", "currencySymbol": "Jk3rpfNXyOWJdhqd", "currencyType": "VIRTUAL", "decimals": 29, "namespace": "lAFq1wsrr5svkrSW"}, "customParameters": {"U5uLktrNsg6D4FNm": {}, "k4w5I2cxXdnzK81c": {}, "4Mljwx7az0269KDo": {}}, "extOrderNo": "rmmS6hqnuKV6sIbl", "extTxId": "2lM6JGl3Nk0UJDVN", "extUserId": "PiS0wWBqSVi7N5l8", "issuedAt": "1995-04-07T00:00:00Z", "metadata": {"P1831u1pJzXk6Zz9": "srWJk2xYHCIs3d1p", "XvwgWotvpRxJk3xw": "LG6wQCIZ8MbTCXJM", "HdkPwf6LAMCT11TR": "bQKpze7roFXM6sGm"}, "namespace": "QxcFUcefLlW8pna5", "nonceStr": "9XzjGmln48lsJRqd", "paymentData": {"discountAmount": 46, "discountCode": "htZrcXZSHeM2sj7Q", "subtotalPrice": 37, "tax": 84, "totalPrice": 14}, "paymentMethod": "cQXfRIvgyufNeb0Q", "paymentMethodFee": 88, "paymentOrderNo": "xIFsqdLQBAQWys52", "paymentProvider": "ADYEN", "paymentProviderFee": 19, "paymentStationUrl": "odiOaD7hCt58Ezsu", "price": 100, "refundedTime": "1977-04-09T00:00:00Z", "salesTax": 52, "sandbox": true, "sku": "h2zNp43nbyNBgAvG", "status": "AUTHORISE_FAILED", "statusReason": "WypxxQPkssDNbQRj", "subscriptionId": "2j5nhqU3gFMklcAu", "subtotalPrice": 85, "targetNamespace": "ZvP2qx8a0p9sgzGs", "targetUserId": "3VfTrDNDIEZQMTX7", "tax": 82, "totalPrice": 58, "totalTax": 46, "txEndTime": "1976-01-20T00:00:00Z", "type": "ChY75Cvwp4iVNhzu", "userId": "vBhBn21M7e1KKXi5", "vat": 62}' \
    > test.out 2>&1
eval_tap $? 298 'ProcessUserSubscriptionNotification' test.out

#- 299 AcquireUserTicket
samples/cli/sample-apps Platform acquireUserTicket \
    --boothName 'wU8r5XX384sCGxT4' \
    --namespace $AB_NAMESPACE \
    --userId 'eBAUc0mhzILXBM1e' \
    --body '{"count": 3, "orderNo": "qFqCvmF13B4ccm4n"}' \
    > test.out 2>&1
eval_tap $? 299 'AcquireUserTicket' test.out

#- 300 QueryUserCurrencyWallets
samples/cli/sample-apps Platform queryUserCurrencyWallets \
    --namespace $AB_NAMESPACE \
    --userId 'NX7uYJgB7AObgvSG' \
    > test.out 2>&1
eval_tap $? 300 'QueryUserCurrencyWallets' test.out

#- 301 DebitUserWalletByCurrencyCode
samples/cli/sample-apps Platform debitUserWalletByCurrencyCode \
    --currencyCode 'QtdFmWSqqbiG18Iw' \
    --namespace $AB_NAMESPACE \
    --userId 'ZPmX9REuntKcVoxj' \
    --body '{"allowOverdraft": true, "amount": 58, "balanceOrigin": "Steam", "balanceSource": "ORDER_REVOCATION", "metadata": {"IFrqYwg00NPcFbux": {}, "PXfWximlRGVhP29q": {}, "sMfkYLo3v0mbK5Zu": {}}, "reason": "Qkgk3ri1UyqRGTdb"}' \
    > test.out 2>&1
eval_tap $? 301 'DebitUserWalletByCurrencyCode' test.out

#- 302 ListUserCurrencyTransactions
samples/cli/sample-apps Platform listUserCurrencyTransactions \
    --currencyCode '73HOUnE3SVxeMbGP' \
    --namespace $AB_NAMESPACE \
    --userId 'SLAQ5wJtxxornDtK' \
    --limit '3' \
    --offset '34' \
    > test.out 2>&1
eval_tap $? 302 'ListUserCurrencyTransactions' test.out

#- 303 CheckBalance
samples/cli/sample-apps Platform checkBalance \
    --currencyCode '8exrWbXXXDSJUwzq' \
    --namespace $AB_NAMESPACE \
    --userId 'CEcRMEahHg3CXfxI' \
    --request '{"amount": 68, "debitBalanceSource": "PAYMENT", "metadata": {"bPid8QYHNToDOUKJ": {}, "lpsnDizsGLlrqIIY": {}, "1CSVm8MuQbuW0lYy": {}}, "reason": "sRpY886BXSFD99F5", "walletPlatform": "Nintendo"}' \
    > test.out 2>&1
eval_tap $? 303 'CheckBalance' test.out

#- 304 CheckWallet
eval_tap 0 304 'CheckWallet # SKIP deprecated' test.out

#- 305 CreditUserWallet
samples/cli/sample-apps Platform creditUserWallet \
    --currencyCode 'k2ePpA5FjFj9VBmF' \
    --namespace $AB_NAMESPACE \
    --userId '0I1IewNdqjAfkrA9' \
    --body '{"amount": 26, "expireAt": "1996-09-08T00:00:00Z", "metadata": {"DJnhBHm60T0PUKMv": {}, "d1U08M5ePG2Uqnv1": {}, "XiHDLxGeSbnys0SS": {}}, "origin": "GooglePlay", "reason": "in4hz0dL7M2abxKj", "source": "REWARD"}' \
    > test.out 2>&1
eval_tap $? 305 'CreditUserWallet' test.out

#- 306 DebitByWalletPlatform
samples/cli/sample-apps Platform debitByWalletPlatform \
    --currencyCode 'vD8A4ocdQAIZUkZ8' \
    --namespace $AB_NAMESPACE \
    --userId '5VF3nssz12lKHBLL' \
    --request '{"amount": 34, "debitBalanceSource": "EXPIRATION", "metadata": {"QdkuOjA85qauwpUX": {}, "e689gMxZ70fa3ZrO": {}, "uB8QTpg2R6zIxc0B": {}}, "reason": "9BfhO4ZP1JWXi0wF", "walletPlatform": "Steam"}' \
    > test.out 2>&1
eval_tap $? 306 'DebitByWalletPlatform' test.out

#- 307 PayWithUserWallet
samples/cli/sample-apps Platform payWithUserWallet \
    --currencyCode '7rzD95VKW83sxZYY' \
    --namespace $AB_NAMESPACE \
    --userId 'xioY5ExomvKATXVc' \
    --body '{"amount": 73, "metadata": {"SRulI1GwAgwo8Ado": {}, "old6lmpZdJYawDVm": {}, "ij8JvsmuRH5KRvLL": {}}, "walletPlatform": "GooglePlay"}' \
    > test.out 2>&1
eval_tap $? 307 'PayWithUserWallet' test.out

#- 308 GetUserWallet
eval_tap 0 308 'GetUserWallet # SKIP deprecated' test.out

#- 309 DebitUserWallet
eval_tap 0 309 'DebitUserWallet # SKIP deprecated' test.out

#- 310 DisableUserWallet
eval_tap 0 310 'DisableUserWallet # SKIP deprecated' test.out

#- 311 EnableUserWallet
eval_tap 0 311 'EnableUserWallet # SKIP deprecated' test.out

#- 312 ListUserWalletTransactions
eval_tap 0 312 'ListUserWalletTransactions # SKIP deprecated' test.out

#- 313 ListViews
samples/cli/sample-apps Platform listViews \
    --namespace $AB_NAMESPACE \
    --storeId 'REdnzrdrLw0IXt56' \
    > test.out 2>&1
eval_tap $? 313 'ListViews' test.out

#- 314 CreateView
samples/cli/sample-apps Platform createView \
    --namespace $AB_NAMESPACE \
    --storeId '1oPS1JjDzI3eXfVJ' \
    --body '{"displayOrder": 8, "localizations": {"q4SgDFIoNC89m3kN": {"description": "idqnzY93jJI0cDDJ", "localExt": {"eIN4NxRiq7viQ97h": {}, "Jrh0NAEO7Et84JxB": {}, "ULZsGNmCphWyCyQ0": {}}, "longDescription": "guF5MExAJZ2ZQm3Q", "title": "eg2ZXXaWOmEI38L2"}, "xKQcOYOPTOGZUMQJ": {"description": "WO2MFcAbtNE4CMo0", "localExt": {"F9RceudAZZKW6q0Z": {}, "YYpQpQS3YFyOsBCa": {}, "gx3x0Je9gdpGzaO0": {}}, "longDescription": "yRkPKz3DTyFQVmKY", "title": "rfv5p2KwpsupP839"}, "LLQMkN3VDuhbkhfC": {"description": "rHj7KUt4zB17kAXn", "localExt": {"po4riZB0mjsQVYzE": {}, "6SpM3NyRDqawrfno": {}, "D5KLZDcP7dDJ8G67": {}}, "longDescription": "YWuiBPvbumkkyvRg", "title": "ysAqQbSPy3r6Q5xO"}}, "name": "HAQXtqKlrY1WptXr"}' \
    > test.out 2>&1
eval_tap $? 314 'CreateView' test.out

#- 315 GetView
samples/cli/sample-apps Platform getView \
    --namespace $AB_NAMESPACE \
    --viewId 'ieODuHNImNVTuVGW' \
    --storeId 'a2qzRY0sb9YtvpN2' \
    > test.out 2>&1
eval_tap $? 315 'GetView' test.out

#- 316 UpdateView
samples/cli/sample-apps Platform updateView \
    --namespace $AB_NAMESPACE \
    --viewId 'o6ebAe4IvyHwhtUC' \
    --storeId '6mANn8JO7z6ZAeb6' \
    --body '{"displayOrder": 15, "localizations": {"l1yTDusUTMRtERqp": {"description": "8hwprjAm2pRE3laj", "localExt": {"loDISO08EYwQePPZ": {}, "pnq6sfeVLdbSO1py": {}, "E8NenUvljasZC77y": {}}, "longDescription": "lv8sGRgM2MGGTI6F", "title": "sEBEexgCXjtvlpFT"}, "iCEmtcXHYURo50bw": {"description": "YVKgSr7x6eQnnPAx", "localExt": {"dfqiMbopEkiOszMB": {}, "GN3oPNnFr3YEWSDU": {}, "PVaeHOXHLxpmOP1m": {}}, "longDescription": "UCYSexOBHPBI6SV0", "title": "Y4MTFE1kQWlwFQit"}, "n8uz4egID0hTIT6s": {"description": "THDaDbBBMzhtik8S", "localExt": {"ZKZtfImbvDTu93mz": {}, "0CgBRiDIEb5TpBj7": {}, "XWAjKEI3q5LqPVtT": {}}, "longDescription": "guLpT7Po514zJdGi", "title": "MrOGdhQJMxHCucao"}}, "name": "nLgSzMZ82RTNIkad"}' \
    > test.out 2>&1
eval_tap $? 316 'UpdateView' test.out

#- 317 DeleteView
samples/cli/sample-apps Platform deleteView \
    --namespace $AB_NAMESPACE \
    --viewId 'pCjiCAWC3AYuse9s' \
    --storeId 'VZ7Ai4pe6qG6HxDd' \
    > test.out 2>&1
eval_tap $? 317 'DeleteView' test.out

#- 318 QueryWallets
eval_tap 0 318 'QueryWallets # SKIP deprecated' test.out

#- 319 BulkCredit
samples/cli/sample-apps Platform bulkCredit \
    --namespace $AB_NAMESPACE \
    --body '[{"creditRequest": {"amount": 85, "expireAt": "1988-01-13T00:00:00Z", "metadata": {"fvd4eCHC9zjKifQ7": {}, "XRJyMQNMtT7f9Cu0": {}, "GF5qN82odzyeWI2Y": {}}, "origin": "Nintendo", "reason": "ze4n3uTUdwWwafEz", "source": "REFERRAL_BONUS"}, "currencyCode": "YOnYPUTBDSPUoNhl", "userIds": ["ikDcejGhOi7z9HR1", "qFasLWXYQ00btjIr", "J4GNqW6KplXLmbOr"]}, {"creditRequest": {"amount": 76, "expireAt": "1987-01-30T00:00:00Z", "metadata": {"jDJ958QRvb6QREPx": {}, "6BgLzHkjO1oJMR9p": {}, "jghoib2lu0FkZshT": {}}, "origin": "Nintendo", "reason": "LXerNpeCwMAsAnzm", "source": "REDEEM_CODE"}, "currencyCode": "5BM7wJMqwi8cVUqi", "userIds": ["ZpF8ffmfGFHz7JDu", "CNb59WXw3sxnrfNi", "RNM4i8y5NIh2UE9U"]}, {"creditRequest": {"amount": 79, "expireAt": "1982-07-03T00:00:00Z", "metadata": {"q2oHSdjsXNOQipLl": {}, "AKIw2KS2hgh1bQgX": {}, "pqV0BaY6BtgBcQEq": {}}, "origin": "Steam", "reason": "rskvJ5UOzDUBHPnD", "source": "GIFT"}, "currencyCode": "nfpYZVWbTSP7CyoN", "userIds": ["LHr5SJxvoPEF5AKb", "zVMMYqU3pPBlhNS6", "STqNdE44J21XIVUQ"]}]' \
    > test.out 2>&1
eval_tap $? 319 'BulkCredit' test.out

#- 320 BulkDebit
samples/cli/sample-apps Platform bulkDebit \
    --namespace $AB_NAMESPACE \
    --body '[{"currencyCode": "dVdBgQwzndnWlsgd", "request": {"allowOverdraft": true, "amount": 17, "balanceOrigin": "IOS", "balanceSource": "IAP_REVOCATION", "metadata": {"XmAh9SZf1tczptem": {}, "mSEcNrXUVZhx0iyz": {}, "lklZURdog9GuOfOW": {}}, "reason": "2Ej9XPv9W8TVHI1X"}, "userIds": ["L6eSDdOvVvKegdXR", "r9FAawIFQLNH7Xli", "bGBEpP0SClCA5ewS"]}, {"currencyCode": "SArsplpahXJJ7Mm6", "request": {"allowOverdraft": true, "amount": 68, "balanceOrigin": "Xbox", "balanceSource": "EXPIRATION", "metadata": {"LLfRKHWiYDrVb5lv": {}, "LvYNGSbrMpYj1WrB": {}, "9nxOVM5incn10L7E": {}}, "reason": "UuMRdP2gDjKy26AR"}, "userIds": ["4eoiTCj0fCB9ieYj", "YVAn4chxpvwMctgB", "vj2fppFyaY2GeWsl"]}, {"currencyCode": "D8t2y50P7xJksZ1Y", "request": {"allowOverdraft": true, "amount": 61, "balanceOrigin": "Nintendo", "balanceSource": "IAP_REVOCATION", "metadata": {"KMTA2mP5elWM7naH": {}, "KWq0BOWpyy7IY1Oz": {}, "c6Xpq9KOsDBSVjg5": {}}, "reason": "7aYV4ocNSPWKum9l"}, "userIds": ["DjHIOnAMbUmKgmEd", "kjEIJOVnDPHWd5RL", "uLTWOQ8DdcCHCUmN"]}]' \
    > test.out 2>&1
eval_tap $? 320 'BulkDebit' test.out

#- 321 GetWallet
eval_tap 0 321 'GetWallet # SKIP deprecated' test.out

#- 322 SyncOrders
samples/cli/sample-apps Platform syncOrders \
    --nextEvaluatedKey 'JDIFWmOBF644oEiV' \
    --end '9NlNbycZVgFaIEJr' \
    --start 'EMFdD7sQppSQDAQh' \
    > test.out 2>&1
eval_tap $? 322 'SyncOrders' test.out

#- 323 TestAdyenConfig
samples/cli/sample-apps Platform testAdyenConfig \
    --sandbox 'true' \
    --body '{"allowedPaymentMethods": ["UIpAaAYi8PPjklED", "ZTZLaU1Qb2OSm4Bh", "3dOZBMqCdH2T9NKR"], "apiKey": "EDh7G2ZoZVrk6APQ", "authoriseAsCapture": true, "blockedPaymentMethods": ["w29XgtGxawbggIcz", "XsNF3HYJKV9SY3UX", "UPYcB0Vl2biEHftD"], "clientKey": "2Gn5zCN3jnY60e6J", "dropInSettings": "2IJ5GYwVNT2XAzGY", "liveEndpointUrlPrefix": "2coXeLBDoXQY3ceL", "merchantAccount": "ouGPbA4lZajGXVyf", "notificationHmacKey": "b3oBUkrGMXwONdDI", "notificationPassword": "VfFvpNI1BqUCV8gN", "notificationUsername": "x5a4FOr0b3b4tyP3", "returnUrl": "t4iB3GneVfV6cOGt", "settings": "ZzPBM5A8Vi8bi358"}' \
    > test.out 2>&1
eval_tap $? 323 'TestAdyenConfig' test.out

#- 324 TestAliPayConfig
samples/cli/sample-apps Platform testAliPayConfig \
    --sandbox 'false' \
    --body '{"appId": "GAEgPzUvwv7ihoKW", "privateKey": "NcaALGzP3vAqPq1w", "publicKey": "Ga8GkFIjeJSWolXS", "returnUrl": "I7iCBh71S92pXkUl"}' \
    > test.out 2>&1
eval_tap $? 324 'TestAliPayConfig' test.out

#- 325 TestCheckoutConfig
samples/cli/sample-apps Platform testCheckoutConfig \
    --sandbox 'true' \
    --body '{"publicKey": "5cujG1ZE86NcPZLY", "secretKey": "NkCHWL2NEyqdwOQ9"}' \
    > test.out 2>&1
eval_tap $? 325 'TestCheckoutConfig' test.out

#- 326 DebugMatchedPaymentMerchantConfig
samples/cli/sample-apps Platform debugMatchedPaymentMerchantConfig \
    --namespace '3cyK1N5j9p9rQYUW' \
    --region 'KPJ7Xpump9MgeXWZ' \
    > test.out 2>&1
eval_tap $? 326 'DebugMatchedPaymentMerchantConfig' test.out

#- 327 TestNeonPayConfig
samples/cli/sample-apps Platform testNeonPayConfig \
    --sandbox 'true' \
    --body '{"apiKey": "IOdDkLgk93sSgiJd", "webhookSecretKey": "SXuVx5vDiiSZWRla"}' \
    > test.out 2>&1
eval_tap $? 327 'TestNeonPayConfig' test.out

#- 328 TestPayPalConfig
samples/cli/sample-apps Platform testPayPalConfig \
    --sandbox 'false' \
    --body '{"clientID": "iYDt2TG3D2KML3Mw", "clientSecret": "hT8yPlcJkgCNHWli", "returnUrl": "1NS87DxQKFS4sBWm", "webHookId": "ikFylVviFPLsY8fK"}' \
    > test.out 2>&1
eval_tap $? 328 'TestPayPalConfig' test.out

#- 329 TestStripeConfig
samples/cli/sample-apps Platform testStripeConfig \
    --sandbox 'true' \
    --body '{"allowedPaymentMethodTypes": ["spE6gpFaRRyNpSaF", "g6WgnlLaN1eO7IhY", "YqohQM86jdN47Qrq"], "publishableKey": "BYMHy6RvHPx2qoSy", "secretKey": "x7qVIGq3j5a3FO64", "webhookSecret": "nTqmfoFNNzox0sXo"}' \
    > test.out 2>&1
eval_tap $? 329 'TestStripeConfig' test.out

#- 330 TestWxPayConfig
samples/cli/sample-apps Platform testWxPayConfig \
    --body '{"appId": "0XB8EKoUF6l6xlfA", "key": "bnqcivEKHRNFpOFs", "mchid": "lct3qTOCVsFNHAxE", "returnUrl": "dHvGNemvjr7fMq9r"}' \
    > test.out 2>&1
eval_tap $? 330 'TestWxPayConfig' test.out

#- 331 TestXsollaConfig
samples/cli/sample-apps Platform testXsollaConfig \
    --body '{"apiKey": "AbJYMwoLnO7YfWjM", "flowCompletionUrl": "aqP1w4mwDmkcMY07", "merchantId": 21, "projectId": 29, "projectSecretKey": "2r9XfNf0ovjNlE7p"}' \
    > test.out 2>&1
eval_tap $? 331 'TestXsollaConfig' test.out

#- 332 GetPaymentMerchantConfig1
samples/cli/sample-apps Platform getPaymentMerchantConfig1 \
    --id 'Ww4X4tIdgFIDLXUb' \
    > test.out 2>&1
eval_tap $? 332 'GetPaymentMerchantConfig1' test.out

#- 333 UpdateAdyenConfig
samples/cli/sample-apps Platform updateAdyenConfig \
    --id 'ns56S4fE1YQpZaCO' \
    --sandbox 'true' \
    --validate 'false' \
    --body '{"allowedPaymentMethods": ["nSN2xoM4tH73hl9r", "Auths5KPgcRv5mcs", "VtalfXTUWMdFXsXX"], "apiKey": "MZI3PZv6gMDm6O3T", "authoriseAsCapture": false, "blockedPaymentMethods": ["YZLdN6tll2BixPbd", "qQBBAlmVK28jHT1W", "s9GwqAose5Wa68Sh"], "clientKey": "DyrwMogjgk5YWIyp", "dropInSettings": "f464tPoYYLuC1ShH", "liveEndpointUrlPrefix": "DU9TAbVNTH0jdVOE", "merchantAccount": "A7qBGEBaraYHzrKb", "notificationHmacKey": "4IUPrAMK5p8o2ZnI", "notificationPassword": "vBUzThAosun1lyA5", "notificationUsername": "8YPXzypE2NGWoufk", "returnUrl": "qvasveeUL5Ps0i5t", "settings": "GqO91TFlm8KaDddJ"}' \
    > test.out 2>&1
eval_tap $? 333 'UpdateAdyenConfig' test.out

#- 334 TestAdyenConfigById
samples/cli/sample-apps Platform testAdyenConfigById \
    --id 'gabrlPWqT0HaEenD' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 334 'TestAdyenConfigById' test.out

#- 335 UpdateAliPayConfig
samples/cli/sample-apps Platform updateAliPayConfig \
    --id 'Fz6nDbO2Y3hBBSHN' \
    --sandbox 'false' \
    --validate 'false' \
    --body '{"appId": "Tdnm9INdf3L1r8gA", "privateKey": "F3VlUhtJbSWuwNdh", "publicKey": "sjDe8Q0V0elOLAfW", "returnUrl": "MGtmhF991LGX4rTq"}' \
    > test.out 2>&1
eval_tap $? 335 'UpdateAliPayConfig' test.out

#- 336 TestAliPayConfigById
samples/cli/sample-apps Platform testAliPayConfigById \
    --id 'spxriDNTy1tBBMMC' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 336 'TestAliPayConfigById' test.out

#- 337 UpdateCheckoutConfig
samples/cli/sample-apps Platform updateCheckoutConfig \
    --id 'hEmyUOMMuipi5KoG' \
    --sandbox 'false' \
    --validate 'false' \
    --body '{"publicKey": "4SEVclOiC8tNcToz", "secretKey": "SZQ4oxNi4qgrLj5O"}' \
    > test.out 2>&1
eval_tap $? 337 'UpdateCheckoutConfig' test.out

#- 338 TestCheckoutConfigById
samples/cli/sample-apps Platform testCheckoutConfigById \
    --id 'axigNr87tk53FrXe' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 338 'TestCheckoutConfigById' test.out

#- 339 UpdateNeonPayConfig
samples/cli/sample-apps Platform updateNeonPayConfig \
    --id 'RaqlE2t815RnhyPD' \
    --sandbox 'false' \
    --validate 'false' \
    --body '{"apiKey": "wCaiyTT2PxT1yJC3", "webhookSecretKey": "lnRZuonEW55NoOLg"}' \
    > test.out 2>&1
eval_tap $? 339 'UpdateNeonPayConfig' test.out

#- 340 TestNeonPayConfigById
samples/cli/sample-apps Platform testNeonPayConfigById \
    --id 'WMGAqKxOcF0ycDXZ' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 340 'TestNeonPayConfigById' test.out

#- 341 UpdatePayPalConfig
samples/cli/sample-apps Platform updatePayPalConfig \
    --id 'CRRJzWqezp8Q94ms' \
    --sandbox 'true' \
    --validate 'true' \
    --body '{"clientID": "JLeteSz939w73Odl", "clientSecret": "oKd2Qkek5P9fGVIw", "returnUrl": "2ekESG171YEyCatt", "webHookId": "BF74MySEt8dqI7hq"}' \
    > test.out 2>&1
eval_tap $? 341 'UpdatePayPalConfig' test.out

#- 342 TestPayPalConfigById
samples/cli/sample-apps Platform testPayPalConfigById \
    --id 'MpndIERJmnYSyugy' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 342 'TestPayPalConfigById' test.out

#- 343 UpdateStripeConfig
samples/cli/sample-apps Platform updateStripeConfig \
    --id 'nApq5yamTh6BLA3Q' \
    --sandbox 'true' \
    --validate 'false' \
    --body '{"allowedPaymentMethodTypes": ["lCklL6ocbT6orQHm", "EFxpoF8bd8OtNPHN", "59eOJw15DSLx8h4W"], "publishableKey": "BEItfoO9Fsy0EeZV", "secretKey": "4Wo6tt3nfKa5RDYB", "webhookSecret": "0krBeEvXmAc8f2jQ"}' \
    > test.out 2>&1
eval_tap $? 343 'UpdateStripeConfig' test.out

#- 344 TestStripeConfigById
samples/cli/sample-apps Platform testStripeConfigById \
    --id 'zDxEgIuMOiA7rHtO' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 344 'TestStripeConfigById' test.out

#- 345 UpdateWxPayConfig
samples/cli/sample-apps Platform updateWxPayConfig \
    --id 'xNaiaqP8yIx324zf' \
    --validate 'false' \
    --body '{"appId": "Y5aPuhIyfrqTCdj1", "key": "5TSRfZNrT1rMSN6u", "mchid": "Kpdes7pxE25QmZ49", "returnUrl": "TWGPSAGgzlOeu3qM"}' \
    > test.out 2>&1
eval_tap $? 345 'UpdateWxPayConfig' test.out

#- 346 UpdateWxPayConfigCert
samples/cli/sample-apps Platform updateWxPayConfigCert \
    --id 'lgj07BOPZ4GNLO24' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 346 'UpdateWxPayConfigCert' test.out

#- 347 TestWxPayConfigById
samples/cli/sample-apps Platform testWxPayConfigById \
    --id 'jfUHWaxiuXtYGHyK' \
    > test.out 2>&1
eval_tap $? 347 'TestWxPayConfigById' test.out

#- 348 UpdateXsollaConfig
samples/cli/sample-apps Platform updateXsollaConfig \
    --id '0acF3zRbVHhRxzlH' \
    --validate 'false' \
    --body '{"apiKey": "KlfmBgwCAd6ZFXpr", "flowCompletionUrl": "AKN8clc8cwOmhZXL", "merchantId": 18, "projectId": 48, "projectSecretKey": "HmSnVjVILHs21ItZ"}' \
    > test.out 2>&1
eval_tap $? 348 'UpdateXsollaConfig' test.out

#- 349 TestXsollaConfigById
samples/cli/sample-apps Platform testXsollaConfigById \
    --id 'Bsboxh8eU5TNnnEE' \
    > test.out 2>&1
eval_tap $? 349 'TestXsollaConfigById' test.out

#- 350 UpdateXsollaUIConfig
samples/cli/sample-apps Platform updateXsollaUIConfig \
    --id 'e6MNJlacq1zfyNP3' \
    --body '{"device": "DESKTOP", "showCloseButton": true, "size": "LARGE", "theme": "DARK"}' \
    > test.out 2>&1
eval_tap $? 350 'UpdateXsollaUIConfig' test.out

#- 351 QueryPaymentProviderConfig
samples/cli/sample-apps Platform queryPaymentProviderConfig \
    --limit '60' \
    --namespace 'Z9F46cfzWeNid69H' \
    --offset '31' \
    --region 'VE4VsXoQEaMczu9S' \
    > test.out 2>&1
eval_tap $? 351 'QueryPaymentProviderConfig' test.out

#- 352 CreatePaymentProviderConfig
samples/cli/sample-apps Platform createPaymentProviderConfig \
    --body '{"aggregate": "STRIPE", "namespace": "1F9M3bSFhzmuexEt", "region": "ZdP1LX3fcLwrkhzK", "sandboxTaxJarApiToken": "x9mrsGPGAtFg3afD", "specials": ["WALLET", "NEONPAY", "WXPAY"], "taxJarApiToken": "HpjCK7kpWkTKH3qn", "taxJarEnabled": false, "useGlobalTaxJarApiToken": false}' \
    > test.out 2>&1
eval_tap $? 352 'CreatePaymentProviderConfig' test.out

#- 353 GetAggregatePaymentProviders
samples/cli/sample-apps Platform getAggregatePaymentProviders \
    > test.out 2>&1
eval_tap $? 353 'GetAggregatePaymentProviders' test.out

#- 354 DebugMatchedPaymentProviderConfig
samples/cli/sample-apps Platform debugMatchedPaymentProviderConfig \
    --namespace 'forXGvEsuBILZTtI' \
    --region 'YTSf84pJXHxJIixt' \
    > test.out 2>&1
eval_tap $? 354 'DebugMatchedPaymentProviderConfig' test.out

#- 355 GetSpecialPaymentProviders
samples/cli/sample-apps Platform getSpecialPaymentProviders \
    > test.out 2>&1
eval_tap $? 355 'GetSpecialPaymentProviders' test.out

#- 356 UpdatePaymentProviderConfig
samples/cli/sample-apps Platform updatePaymentProviderConfig \
    --id 'Uzj8zvI6Kd9zEZoS' \
    --body '{"aggregate": "CHECKOUT", "namespace": "IrYk4js4nhLfwwss", "region": "7RgVZ9wFiyXFmYnC", "sandboxTaxJarApiToken": "xRsUtW88ZzIGUIUb", "specials": ["NEONPAY", "XSOLLA", "ADYEN"], "taxJarApiToken": "mxvWX633LXeUe8DW", "taxJarEnabled": false, "useGlobalTaxJarApiToken": false}' \
    > test.out 2>&1
eval_tap $? 356 'UpdatePaymentProviderConfig' test.out

#- 357 DeletePaymentProviderConfig
samples/cli/sample-apps Platform deletePaymentProviderConfig \
    --id '2OlMvGq7DCE3CNIF' \
    > test.out 2>&1
eval_tap $? 357 'DeletePaymentProviderConfig' test.out

#- 358 GetPaymentTaxConfig
samples/cli/sample-apps Platform getPaymentTaxConfig \
    > test.out 2>&1
eval_tap $? 358 'GetPaymentTaxConfig' test.out

#- 359 UpdatePaymentTaxConfig
samples/cli/sample-apps Platform updatePaymentTaxConfig \
    --body '{"sandboxTaxJarApiToken": "w5jlzUd6UTuUIYBy", "taxJarApiToken": "2etXCkS7a9IG0oco", "taxJarEnabled": true, "taxJarProductCodesMapping": {"9FOuO83vs4kBGuxq": "v7666iExHkQah1ru", "VdmX4NrUMwfq8Esx": "nsYAdgDswe03pEfI", "ReHveNRNb6ERkolw": "EW2eBQL4qd6EqQ5B"}}' \
    > test.out 2>&1
eval_tap $? 359 'UpdatePaymentTaxConfig' test.out

#- 360 SyncPaymentOrders
samples/cli/sample-apps Platform syncPaymentOrders \
    --nextEvaluatedKey 'rswEIlKXbSmOsdIa' \
    --end 'P3Qhp7OzAXYmOYym' \
    --start 'g95722eU9D1hA9Eu' \
    > test.out 2>&1
eval_tap $? 360 'SyncPaymentOrders' test.out

#- 361 PublicGetRootCategories
samples/cli/sample-apps Platform publicGetRootCategories \
    --namespace $AB_NAMESPACE \
    --language 'RK8tjCmxAWu7ZBRZ' \
    --storeId 'jsvT19ikcBwdKWKk' \
    > test.out 2>&1
eval_tap $? 361 'PublicGetRootCategories' test.out

#- 362 DownloadCategories
samples/cli/sample-apps Platform downloadCategories \
    --namespace $AB_NAMESPACE \
    --language '3b7RwYXwGXaqaefu' \
    --storeId 'A6XLxJVuCI1Z9Gda' \
    > test.out 2>&1
eval_tap $? 362 'DownloadCategories' test.out

#- 363 PublicGetCategory
samples/cli/sample-apps Platform publicGetCategory \
    --categoryPath 'QZJUS43FtyXG70bA' \
    --namespace $AB_NAMESPACE \
    --language '6DUNMWxCIP2SOqrc' \
    --storeId 'jZi4mn5OaST2OkOE' \
    > test.out 2>&1
eval_tap $? 363 'PublicGetCategory' test.out

#- 364 PublicGetChildCategories
samples/cli/sample-apps Platform publicGetChildCategories \
    --categoryPath '3F0mZ0jCuT82FJze' \
    --namespace $AB_NAMESPACE \
    --language 'YlBtvUN2dOx3epX2' \
    --storeId 'D1aSEJwPvHOh81Bf' \
    > test.out 2>&1
eval_tap $? 364 'PublicGetChildCategories' test.out

#- 365 PublicGetDescendantCategories
samples/cli/sample-apps Platform publicGetDescendantCategories \
    --categoryPath 'Izo32n18Jn7cFBWP' \
    --namespace $AB_NAMESPACE \
    --language '5jWD5csRqXLY1p70' \
    --storeId 'XQCjDxfkbEwDprqC' \
    > test.out 2>&1
eval_tap $? 365 'PublicGetDescendantCategories' test.out

#- 366 PublicListCurrencies
samples/cli/sample-apps Platform publicListCurrencies \
    --namespace $AB_NAMESPACE \
    --currencyType 'REAL' \
    > test.out 2>&1
eval_tap $? 366 'PublicListCurrencies' test.out

#- 367 GeDLCDurableRewardShortMap
samples/cli/sample-apps Platform geDLCDurableRewardShortMap \
    --namespace $AB_NAMESPACE \
    --dlcType 'OCULUS' \
    > test.out 2>&1
eval_tap $? 367 'GeDLCDurableRewardShortMap' test.out

#- 368 GetIAPItemMapping
samples/cli/sample-apps Platform getIAPItemMapping \
    --namespace $AB_NAMESPACE \
    --platform 'EPICGAMES' \
    > test.out 2>&1
eval_tap $? 368 'GetIAPItemMapping' test.out

#- 369 PublicGetItemByAppId
samples/cli/sample-apps Platform publicGetItemByAppId \
    --namespace $AB_NAMESPACE \
    --language '6v4TNc6EJ6mQhG1l' \
    --region 'rlYzcj6i5Hta6KGa' \
    --storeId 'hd4fBhdwepASnxQq' \
    --appId 'RrbDFWgLIF2lZaAK' \
    > test.out 2>&1
eval_tap $? 369 'PublicGetItemByAppId' test.out

#- 370 PublicQueryItems
samples/cli/sample-apps Platform publicQueryItems \
    --namespace $AB_NAMESPACE \
    --appType 'DLC' \
    --autoCalcEstimatedPrice 'true' \
    --baseAppId '2m4RxKzjBOMZSRfp' \
    --categoryPath 'Pt5eoAnZnHQz5DaP' \
    --features '2IQbilmRYmM0aK8V' \
    --includeSubCategoryItem 'true' \
    --itemType 'APP' \
    --language '1DoSdVqQt7UHrUEq' \
    --limit '18' \
    --offset '29' \
    --region 'navwVbBpdozw6tHL' \
    --sortBy '["updatedAt:asc", "name", "updatedAt"]' \
    --storeId '8aYig6SYFkDPp2yJ' \
    --tags 'HuBW5tVIzCc9Fg0a' \
    > test.out 2>&1
eval_tap $? 370 'PublicQueryItems' test.out

#- 371 PublicGetItemBySku
samples/cli/sample-apps Platform publicGetItemBySku \
    --namespace $AB_NAMESPACE \
    --autoCalcEstimatedPrice 'false' \
    --language '9dtHItnnSJ0SSmt5' \
    --region '6qhU2PndcJQ59BmI' \
    --storeId 'xdtMRktsegOnNfRI' \
    --sku 'tQXfT7PZE72563bJ' \
    > test.out 2>&1
eval_tap $? 371 'PublicGetItemBySku' test.out

#- 372 PublicGetEstimatedPrice
samples/cli/sample-apps Platform publicGetEstimatedPrice \
    --namespace $AB_NAMESPACE \
    --region '40cslZubIz6JVx3I' \
    --storeId 'mhoPJH9LGefuidU2' \
    --itemIds 'oXD3EVG9XPNxUbIk' \
    > test.out 2>&1
eval_tap $? 372 'PublicGetEstimatedPrice' test.out

#- 373 PublicBulkGetItems
samples/cli/sample-apps Platform publicBulkGetItems \
    --namespace $AB_NAMESPACE \
    --autoCalcEstimatedPrice 'false' \
    --language 'oC0VlRqUErwage24' \
    --region 'PTH2NWEGU2kgjP6W' \
    --storeId 'X7IVBGEwLOv47O2w' \
    --itemIds 'Ieb6922fpufZsTBd' \
    > test.out 2>&1
eval_tap $? 373 'PublicBulkGetItems' test.out

#- 374 PublicValidateItemPurchaseCondition
samples/cli/sample-apps Platform publicValidateItemPurchaseCondition \
    --namespace $AB_NAMESPACE \
    --body '{"itemIds": ["YcXutmIWhPCqvNLX", "T9URkkFdF5RCU5Vb", "I1toSCahlKvVWyPk"]}' \
    > test.out 2>&1
eval_tap $? 374 'PublicValidateItemPurchaseCondition' test.out

#- 375 PublicSearchItems
samples/cli/sample-apps Platform publicSearchItems \
    --namespace $AB_NAMESPACE \
    --autoCalcEstimatedPrice 'true' \
    --itemType 'APP' \
    --limit '70' \
    --offset '70' \
    --region 'aMK3jF0XIyUsVZPB' \
    --storeId 'ekZvaGgxk4Ov3jnV' \
    --keyword 'wDmOEZtHoCxNB4UH' \
    --language 'AGUDXMYZi4ZaK0XB' \
    > test.out 2>&1
eval_tap $? 375 'PublicSearchItems' test.out

#- 376 PublicGetApp
samples/cli/sample-apps Platform publicGetApp \
    --itemId 'akWvDevrddlbgro7' \
    --namespace $AB_NAMESPACE \
    --language '7m8n7soXEkhedxB6' \
    --region 'k1tZ0jvLkklFmJ0F' \
    --storeId 'RhXvpDfnVyvcalSj' \
    > test.out 2>&1
eval_tap $? 376 'PublicGetApp' test.out

#- 377 PublicGetItemDynamicData
samples/cli/sample-apps Platform publicGetItemDynamicData \
    --itemId 'YbAcomaYidwxbCv0' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 377 'PublicGetItemDynamicData' test.out

#- 378 PublicGetItem
samples/cli/sample-apps Platform publicGetItem \
    --itemId '05PweB8Yjh0qBiZt' \
    --namespace $AB_NAMESPACE \
    --autoCalcEstimatedPrice 'true' \
    --language 'Fg4V54K0WjHQZwdc' \
    --populateBundle 'true' \
    --region '7Q3qDSP26pnf5sCl' \
    --storeId 'l866LAp8XM0EkLb6' \
    > test.out 2>&1
eval_tap $? 378 'PublicGetItem' test.out

#- 379 GetPaymentCustomization
eval_tap 0 379 'GetPaymentCustomization # SKIP deprecated' test.out

#- 380 PublicGetPaymentUrl
samples/cli/sample-apps Platform publicGetPaymentUrl \
    --namespace $AB_NAMESPACE \
    --body '{"neonPayConfig": {"cancelUrl": "Dqn2zFU0eFCaw3Qd", "successUrl": "xFQrYZ6gEeTeaprF"}, "paymentOrderNo": "PpbU5OxDTcmJ877i", "paymentProvider": "XSOLLA", "returnUrl": "b3q26rGI3iWBKhEI", "ui": "gaPofxZMNw7OwfPy", "zipCode": "dBTbdQqA2syu1bAd"}' \
    > test.out 2>&1
eval_tap $? 380 'PublicGetPaymentUrl' test.out

#- 381 PublicGetPaymentMethods
samples/cli/sample-apps Platform publicGetPaymentMethods \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'CSvf6ZEbHzzlnOgN' \
    > test.out 2>&1
eval_tap $? 381 'PublicGetPaymentMethods' test.out

#- 382 PublicGetUnpaidPaymentOrder
samples/cli/sample-apps Platform publicGetUnpaidPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'qts3QeLfhzT1BLzq' \
    > test.out 2>&1
eval_tap $? 382 'PublicGetUnpaidPaymentOrder' test.out

#- 383 Pay
samples/cli/sample-apps Platform pay \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'jf49V7xLyeMNLvdq' \
    --paymentProvider 'ADYEN' \
    --zipCode 'xKNGeeFEy2u8hz6P' \
    --body '{"token": "MkXHdkMLCSbE8EKf"}' \
    > test.out 2>&1
eval_tap $? 383 'Pay' test.out

#- 384 PublicCheckPaymentOrderPaidStatus
samples/cli/sample-apps Platform publicCheckPaymentOrderPaidStatus \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'NkOELl77zsMoWKGE' \
    > test.out 2>&1
eval_tap $? 384 'PublicCheckPaymentOrderPaidStatus' test.out

#- 385 GetPaymentPublicConfig
samples/cli/sample-apps Platform getPaymentPublicConfig \
    --namespace $AB_NAMESPACE \
    --sandbox 'true' \
    --paymentProvider 'WXPAY' \
    --region 'rFnOn6QxLGr9Av90' \
    > test.out 2>&1
eval_tap $? 385 'GetPaymentPublicConfig' test.out

#- 386 PublicGetQRCode
samples/cli/sample-apps Platform publicGetQRCode \
    --namespace $AB_NAMESPACE \
    --code 'OI5JwIua3oGSICKW' \
    > test.out 2>&1
eval_tap $? 386 'PublicGetQRCode' test.out

#- 387 PublicNormalizePaymentReturnUrl
samples/cli/sample-apps Platform publicNormalizePaymentReturnUrl \
    --namespace $AB_NAMESPACE \
    --payerID 'X0tiZ9au8FEoXWXl' \
    --foreinginvoice 'ZkRyHtxaT7tVUcaU' \
    --invoiceId 'V9JWtqYBPNORqpIA' \
    --payload 'KK1kB6FluRwUv4TG' \
    --redirectResult 'mbbRPSuxc8JgsLyU' \
    --resultCode 'e8YXEzwHJU1WkAY0' \
    --sessionId 'OdZzqm8CNKCsAfK5' \
    --status 'KuFSUaZD23Jj2TxG' \
    --token 'oTISX9rkWXPgcKRW' \
    --type 'AJOI5Pyrt31GH7bU' \
    --userId 'CVNAvJl5l4i3K2nr' \
    --orderNo 'IlKKnwgqCW2QOFrH' \
    --paymentOrderNo 'cgKjddNZLxBAKgkZ' \
    --paymentProvider 'PAYPAL' \
    --returnUrl 'yk6xi1dDpGPuto0y' \
    > test.out 2>&1
eval_tap $? 387 'PublicNormalizePaymentReturnUrl' test.out

#- 388 GetPaymentTaxValue
samples/cli/sample-apps Platform getPaymentTaxValue \
    --namespace $AB_NAMESPACE \
    --zipCode 'YazP44DtdcIEe9FT' \
    --paymentOrderNo 'VTvw2l2y4edyDLln' \
    --paymentProvider 'ALIPAY' \
    > test.out 2>&1
eval_tap $? 388 'GetPaymentTaxValue' test.out

#- 389 GetRewardByCode
samples/cli/sample-apps Platform getRewardByCode \
    --namespace $AB_NAMESPACE \
    --rewardCode '63LfCFb8xKzgHs8n' \
    > test.out 2>&1
eval_tap $? 389 'GetRewardByCode' test.out

#- 390 QueryRewards1
samples/cli/sample-apps Platform queryRewards1 \
    --namespace $AB_NAMESPACE \
    --eventTopic 'c6nHypTwnUGaHMYQ' \
    --limit '89' \
    --offset '73' \
    --sortBy '["rewardCode:desc"]' \
    > test.out 2>&1
eval_tap $? 390 'QueryRewards1' test.out

#- 391 GetReward1
samples/cli/sample-apps Platform getReward1 \
    --namespace $AB_NAMESPACE \
    --rewardId 'N79HmD7bQSnRHue6' \
    > test.out 2>&1
eval_tap $? 391 'GetReward1' test.out

#- 392 PublicListStores
samples/cli/sample-apps Platform publicListStores \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 392 'PublicListStores' test.out

#- 393 PublicExistsAnyMyActiveEntitlement
samples/cli/sample-apps Platform publicExistsAnyMyActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --appIds '["1p38KVlkhWvJhSsD", "wN5ewrVb6PG8veg6", "n2M1kAmlMkfsq5H1"]' \
    --itemIds '["ruzcg4ER5SP88HGS", "oAoZ4zivA4m1VIsJ", "Vz1kY09hyiubI79P"]' \
    --skus '["tCtNGhnxGOuO8TlD", "2JEep7tn1rCu2c6y", "JpgJu6AvXu6fDz1W"]' \
    > test.out 2>&1
eval_tap $? 393 'PublicExistsAnyMyActiveEntitlement' test.out

#- 394 PublicGetMyAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform publicGetMyAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --appId 'Gj8MGa7IMVs9z3XJ' \
    > test.out 2>&1
eval_tap $? 394 'PublicGetMyAppEntitlementOwnershipByAppId' test.out

#- 395 PublicGetMyEntitlementOwnershipByItemId
samples/cli/sample-apps Platform publicGetMyEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --entitlementClazz 'OPTIONBOX' \
    --itemId 'o1x1rlcBUey77f9v' \
    > test.out 2>&1
eval_tap $? 395 'PublicGetMyEntitlementOwnershipByItemId' test.out

#- 396 PublicGetMyEntitlementOwnershipBySku
samples/cli/sample-apps Platform publicGetMyEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --entitlementClazz 'OPTIONBOX' \
    --sku 'rJdBVIRDNGD3Ekef' \
    > test.out 2>&1
eval_tap $? 396 'PublicGetMyEntitlementOwnershipBySku' test.out

#- 397 PublicGetEntitlementOwnershipToken
samples/cli/sample-apps Platform publicGetEntitlementOwnershipToken \
    --namespace $AB_NAMESPACE \
    --appIds '["qq5YxLCqHMvg9u0x", "rewNZmBm5vCx4R5O", "PeEHQ9ImGGMSNWm8"]' \
    --itemIds '["MjR0wrURCgkTWamL", "Mn7X5Grj6unRADdL", "1jXpyahH4ewrJdRQ"]' \
    --skus '["xM1KSrskGjlyoDoE", "FrnnDZuwDOtRbVEV", "ztv55B3cfjjG5oiC"]' \
    > test.out 2>&1
eval_tap $? 397 'PublicGetEntitlementOwnershipToken' test.out

#- 398 SyncTwitchDropsEntitlement
samples/cli/sample-apps Platform syncTwitchDropsEntitlement \
    --namespace $AB_NAMESPACE \
    --body '{"gameId": "mE4myaxZrhi3Lj7Z", "language": "Nas_ntLj_qy", "region": "cfBhYrM4OofcIe91"}' \
    > test.out 2>&1
eval_tap $? 398 'SyncTwitchDropsEntitlement' test.out

#- 399 PublicGetMyWallet
samples/cli/sample-apps Platform publicGetMyWallet \
    --currencyCode 'KbwiuImnkEF4T80r' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 399 'PublicGetMyWallet' test.out

#- 400 SyncEpicGameDLC
samples/cli/sample-apps Platform syncEpicGameDLC \
    --namespace $AB_NAMESPACE \
    --userId 'aCpDTYw8J95AAJFU' \
    --body '{"epicGamesJwtToken": "n8VhZTwucpQRQqsm"}' \
    > test.out 2>&1
eval_tap $? 400 'SyncEpicGameDLC' test.out

#- 401 SyncOculusDLC
samples/cli/sample-apps Platform syncOculusDLC \
    --namespace $AB_NAMESPACE \
    --userId 'G2ddOjRy9944cgkc' \
    > test.out 2>&1
eval_tap $? 401 'SyncOculusDLC' test.out

#- 402 PublicSyncPsnDlcInventory
samples/cli/sample-apps Platform publicSyncPsnDlcInventory \
    --namespace $AB_NAMESPACE \
    --userId 'xYNgGgcvMf50iqZ1' \
    --body '{"serviceLabel": 88}' \
    > test.out 2>&1
eval_tap $? 402 'PublicSyncPsnDlcInventory' test.out

#- 403 PublicSyncPsnDlcInventoryWithMultipleServiceLabels
samples/cli/sample-apps Platform publicSyncPsnDlcInventoryWithMultipleServiceLabels \
    --namespace $AB_NAMESPACE \
    --userId 'KNwAutQHMKZXlCbb' \
    --body '{"serviceLabels": [26, 10, 69]}' \
    > test.out 2>&1
eval_tap $? 403 'PublicSyncPsnDlcInventoryWithMultipleServiceLabels' test.out

#- 404 SyncSteamDLC
samples/cli/sample-apps Platform syncSteamDLC \
    --namespace $AB_NAMESPACE \
    --userId '9Fy4J7OI7dsfpSNU' \
    --body '{"appId": "o4TdvMolqNM3FauW", "steamId": "bmRS3FButDEUatZJ"}' \
    > test.out 2>&1
eval_tap $? 404 'SyncSteamDLC' test.out

#- 405 SyncXboxDLC
samples/cli/sample-apps Platform syncXboxDLC \
    --namespace $AB_NAMESPACE \
    --userId 'CuWGl42F2h5SAXTW' \
    --body '{"xstsToken": "dCGzfYQmDyjYpKTc"}' \
    > test.out 2>&1
eval_tap $? 405 'SyncXboxDLC' test.out

#- 406 PublicQueryUserEntitlements
samples/cli/sample-apps Platform publicQueryUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'gY05afVqBdTxnfD6' \
    --appType 'GAME' \
    --entitlementClazz 'ENTITLEMENT' \
    --entitlementName 'AKzJ7QYCeJ4ztYq9' \
    --features '["Eq1Hgbut2q6XrSrA", "HamSfPv2IUUHTNHd", "XWDDJlzvaCzzZaLV"]' \
    --itemId '["R0fRhaKdOah68yrt", "5sOPtS3jUsSzxkLB", "WTvos2BpN7TljVPd"]' \
    --limit '12' \
    --offset '58' \
    > test.out 2>&1
eval_tap $? 406 'PublicQueryUserEntitlements' test.out

#- 407 PublicGetUserAppEntitlementByAppId
samples/cli/sample-apps Platform publicGetUserAppEntitlementByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'jABeTA41tEjmCAQH' \
    --appId 'e4fNMJ7ujflFVx15' \
    > test.out 2>&1
eval_tap $? 407 'PublicGetUserAppEntitlementByAppId' test.out

#- 408 PublicQueryUserEntitlementsByAppType
samples/cli/sample-apps Platform publicQueryUserEntitlementsByAppType \
    --namespace $AB_NAMESPACE \
    --userId 'lo6kDvE7TdtzYtQ6' \
    --limit '35' \
    --offset '54' \
    --appType 'DEMO' \
    > test.out 2>&1
eval_tap $? 408 'PublicQueryUserEntitlementsByAppType' test.out

#- 409 PublicGetUserEntitlementsByIds
samples/cli/sample-apps Platform publicGetUserEntitlementsByIds \
    --namespace $AB_NAMESPACE \
    --userId 'nQHJ6xulsBVdvE4r' \
    --availablePlatformOnly 'false' \
    --ids '["Q0ouxKwHuMzSVcTI", "K9j9TzcIgaaGem5B", "v0wflyhPgkJ6doSY"]' \
    > test.out 2>&1
eval_tap $? 409 'PublicGetUserEntitlementsByIds' test.out

#- 410 PublicGetUserEntitlementByItemId
eval_tap 0 410 'PublicGetUserEntitlementByItemId # SKIP deprecated' test.out

#- 411 PublicGetUserEntitlementBySku
eval_tap 0 411 'PublicGetUserEntitlementBySku # SKIP deprecated' test.out

#- 412 PublicUserEntitlementHistory
samples/cli/sample-apps Platform publicUserEntitlementHistory \
    --namespace $AB_NAMESPACE \
    --userId 'b42O402cD5r43YAT' \
    --endDate 'Oqa86tL3LV2hAN7D' \
    --entitlementClazz 'LOOTBOX' \
    --limit '98' \
    --offset '78' \
    --startDate 'ALSw1IUMoQ19bkfO' \
    > test.out 2>&1
eval_tap $? 412 'PublicUserEntitlementHistory' test.out

#- 413 PublicExistsAnyUserActiveEntitlement
samples/cli/sample-apps Platform publicExistsAnyUserActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'x6rYvrKeUKH6y3Ip' \
    --appIds '["olr2y8T7i4WLMnXw", "VqAbUfKdrzMSkNlD", "7SeJCkGmfU48WgXC"]' \
    --itemIds '["2bYdhgWvv6sUW7Yu", "RHpg69AbXFnEtIbd", "ESvpHMQX3Iii8nFs"]' \
    --skus '["zw76REAqf6kb0sx3", "ruM0SQnYzFYO5fAn", "lueAIHqN1U8QlwTZ"]' \
    > test.out 2>&1
eval_tap $? 413 'PublicExistsAnyUserActiveEntitlement' test.out

#- 414 PublicGetUserAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform publicGetUserAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'nDnx31lSqscFHQME' \
    --appId 'xp62y5m6flzrwPQu' \
    > test.out 2>&1
eval_tap $? 414 'PublicGetUserAppEntitlementOwnershipByAppId' test.out

#- 415 PublicGetUserEntitlementOwnershipByItemId
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'MrgtqsYe7M5xq71Q' \
    --entitlementClazz 'ENTITLEMENT' \
    --itemId 'FKhmo7Lek36qOvtW' \
    > test.out 2>&1
eval_tap $? 415 'PublicGetUserEntitlementOwnershipByItemId' test.out

#- 416 PublicGetUserEntitlementOwnershipByItemIds
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'voR9b7vUrg2Fj2Zy' \
    --ids '["KzuSL4XMEHYHe2do", "JdspvxEVsixu1pSj", "XSGov6O3A5TEcWLX"]' \
    > test.out 2>&1
eval_tap $? 416 'PublicGetUserEntitlementOwnershipByItemIds' test.out

#- 417 PublicGetUserEntitlementOwnershipBySku
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --userId 'zuK3M0Vch0Doz6lI' \
    --entitlementClazz 'LOOTBOX' \
    --sku 'vpNglpWv5XyAlCak' \
    > test.out 2>&1
eval_tap $? 417 'PublicGetUserEntitlementOwnershipBySku' test.out

#- 418 PublicGetUserEntitlement
samples/cli/sample-apps Platform publicGetUserEntitlement \
    --entitlementId 'nBKX1fuJnKFlXQ4h' \
    --namespace $AB_NAMESPACE \
    --userId 'XnrKf9aCAYgL59wg' \
    > test.out 2>&1
eval_tap $? 418 'PublicGetUserEntitlement' test.out

#- 419 PublicConsumeUserEntitlement
samples/cli/sample-apps Platform publicConsumeUserEntitlement \
    --entitlementId 'bKRa8YACYCezm33D' \
    --namespace $AB_NAMESPACE \
    --userId 'BKRKzICf6b87rpYb' \
    --body '{"options": ["8Tj2tNl9lk66PKJj", "x9fStHDcX8QptLAM", "0giBa9ufAtKdmATy"], "requestId": "TYT17cFQ48bZOICV", "useCount": 41}' \
    > test.out 2>&1
eval_tap $? 419 'PublicConsumeUserEntitlement' test.out

#- 420 PublicSellUserEntitlement
samples/cli/sample-apps Platform publicSellUserEntitlement \
    --entitlementId 'vsQngP0NxKJbnZwh' \
    --namespace $AB_NAMESPACE \
    --userId 'eZjmsaF813gjEhlb' \
    --body '{"requestId": "W82I6qsfnBuCA0IH", "useCount": 61}' \
    > test.out 2>&1
eval_tap $? 420 'PublicSellUserEntitlement' test.out

#- 421 PublicSplitUserEntitlement
samples/cli/sample-apps Platform publicSplitUserEntitlement \
    --entitlementId 'CTDczRrEw0KGW9dt' \
    --namespace $AB_NAMESPACE \
    --userId 'hsyzcV99YmmyTXgO' \
    --body '{"useCount": 36}' \
    > test.out 2>&1
eval_tap $? 421 'PublicSplitUserEntitlement' test.out

#- 422 PublicTransferUserEntitlement
samples/cli/sample-apps Platform publicTransferUserEntitlement \
    --entitlementId '2rNkWU2O6UWga1k1' \
    --namespace $AB_NAMESPACE \
    --userId 'TKr3lfOIFg4dBM4G' \
    --body '{"entitlementId": "Cql87VeQoiwfngBJ", "useCount": 36}' \
    > test.out 2>&1
eval_tap $? 422 'PublicTransferUserEntitlement' test.out

#- 423 PublicRedeemCode
samples/cli/sample-apps Platform publicRedeemCode \
    --namespace $AB_NAMESPACE \
    --userId '1F2mbrOaQr1SSQT5' \
    --body '{"code": "cGdJ8ZI3L8K9Gaq8", "language": "rd-cKBy", "region": "W5pCEhgk2FApNpEj"}' \
    > test.out 2>&1
eval_tap $? 423 'PublicRedeemCode' test.out

#- 424 PublicFulfillAppleIAPItem
samples/cli/sample-apps Platform publicFulfillAppleIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'SNAUKwzXRAeKeWdd' \
    --body '{"excludeOldTransactions": true, "language": "yM", "productId": "8Q2iBQOpqtkEc9H1", "receiptData": "78Hc7Bc8iAxffXO1", "region": "uoyw17c5tuvM8UGd", "transactionId": "EzwB4UwSaTrdFKyx"}' \
    > test.out 2>&1
eval_tap $? 424 'PublicFulfillAppleIAPItem' test.out

#- 425 SyncEpicGamesInventory
samples/cli/sample-apps Platform syncEpicGamesInventory \
    --namespace $AB_NAMESPACE \
    --userId 'jSqSUUkqxxfc30J0' \
    --body '{"epicGamesJwtToken": "ycvlknA26Z2f6Mfe"}' \
    > test.out 2>&1
eval_tap $? 425 'SyncEpicGamesInventory' test.out

#- 426 PublicFulfillGoogleIAPItem
samples/cli/sample-apps Platform publicFulfillGoogleIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'TtsNPMzrzCzdVmBw' \
    --body '{"autoAck": true, "language": "sn_GXAD-jD", "orderId": "KF8OxqHNh4Lm1UiO", "packageName": "bgf2rKoGyf6NaDNC", "productId": "UGQ4MlbFuuAwiIXU", "purchaseTime": 31, "purchaseToken": "LCYobGtZeRL9Xe4W", "region": "iWRwCPioShYT8Cd7"}' \
    > test.out 2>&1
eval_tap $? 426 'PublicFulfillGoogleIAPItem' test.out

#- 427 SyncOculusConsumableEntitlements
samples/cli/sample-apps Platform syncOculusConsumableEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'MrGDvnlvkaLRNz6q' \
    > test.out 2>&1
eval_tap $? 427 'SyncOculusConsumableEntitlements' test.out

#- 428 PublicReconcilePlayStationStore
samples/cli/sample-apps Platform publicReconcilePlayStationStore \
    --namespace $AB_NAMESPACE \
    --userId '4BVyWzzeRJ4cgBoy' \
    --body '{"currencyCode": "kCBU4Vz0qoiFgjXo", "price": 0.5847528545097539, "productId": "bUTuon5V3iWHEG2t", "serviceLabel": 100}' \
    > test.out 2>&1
eval_tap $? 428 'PublicReconcilePlayStationStore' test.out

#- 429 PublicReconcilePlayStationStoreWithMultipleServiceLabels
samples/cli/sample-apps Platform publicReconcilePlayStationStoreWithMultipleServiceLabels \
    --namespace $AB_NAMESPACE \
    --userId 'dt4gNS9RgGrw70E7' \
    --body '{"currencyCode": "A5Ow0OItSSPMkstm", "price": 0.038238407992836065, "productId": "aG7GaOQieDftQIWz", "serviceLabels": [50, 44, 22]}' \
    > test.out 2>&1
eval_tap $? 429 'PublicReconcilePlayStationStoreWithMultipleServiceLabels' test.out

#- 430 SyncSteamInventory
samples/cli/sample-apps Platform syncSteamInventory \
    --namespace $AB_NAMESPACE \
    --userId '6SunHv0Rox4BRDao' \
    --body '{"appId": "xdQL3xmS7s3tbm4r", "currencyCode": "KEUtKS5MEqSvpa2f", "language": "ywJp-botb_696", "price": 0.18113659801967696, "productId": "YDVAP9cDzEoHaueF", "region": "PCinugkgOO5lJjMv", "steamId": "BMB6hFYEnb5EVk1Q"}' \
    > test.out 2>&1
eval_tap $? 430 'SyncSteamInventory' test.out

#- 431 SyncTwitchDropsEntitlement1
samples/cli/sample-apps Platform syncTwitchDropsEntitlement1 \
    --namespace $AB_NAMESPACE \
    --userId 'E0BWuy2spUWgCSH9' \
    --body '{"gameId": "Cw673UIpxAS6ImX0", "language": "ED", "region": "MBP10MFMuj49JcxA"}' \
    > test.out 2>&1
eval_tap $? 431 'SyncTwitchDropsEntitlement1' test.out

#- 432 SyncXboxInventory
samples/cli/sample-apps Platform syncXboxInventory \
    --namespace $AB_NAMESPACE \
    --userId 'g680BXs70DNFTnF2' \
    --body '{"currencyCode": "wWreyWhXOxCp56gA", "price": 0.0589438335953113, "productId": "GHaQ1fP9hF2MhWWK", "xstsToken": "jJ31Y5mdemJv3snW"}' \
    > test.out 2>&1
eval_tap $? 432 'SyncXboxInventory' test.out

#- 433 PublicQueryUserOrders
samples/cli/sample-apps Platform publicQueryUserOrders \
    --namespace $AB_NAMESPACE \
    --userId '5BSS1ddzK2nkkG8s' \
    --discounted 'true' \
    --itemId 'BzumL6DP1EAoZB5q' \
    --limit '77' \
    --offset '55' \
    --status 'INIT' \
    > test.out 2>&1
eval_tap $? 433 'PublicQueryUserOrders' test.out

#- 434 PublicCreateUserOrder
samples/cli/sample-apps Platform publicCreateUserOrder \
    --namespace $AB_NAMESPACE \
    --userId 'lLpy1ro7t7u3FFD2' \
    --body '{"currencyCode": "OXPSTGbL2u2BpmLd", "discountCodes": ["Rk1sPVltmYchRsIc", "Bs84Hg69XCXAOSQe", "rsoh85Lxe8G2v5Wm"], "discountedPrice": 69, "ext": {"91GUL2gszN41ySMJ": {}, "IZG8pSuqPMP3mfQh": {}, "CGPM9OKasAgPzy5Z": {}}, "itemId": "jf2nlruoC323oAYO", "language": "VaY_dOEl", "price": 44, "quantity": 71, "region": "gB50zgC0zoaY866d", "returnUrl": "OC9kzz75skKOe0Au", "sectionId": "o9wNATRg3INCuLDW"}' \
    > test.out 2>&1
eval_tap $? 434 'PublicCreateUserOrder' test.out

#- 435 PublicPreviewOrderPrice
samples/cli/sample-apps Platform publicPreviewOrderPrice \
    --namespace $AB_NAMESPACE \
    --userId 'wi9F0HHiPL1PGfa8' \
    --body '{"currencyCode": "RTc2wBEoGtyF2usq", "discountCodes": ["LzUZNBDi7Gbz1eWT", "aa9zqSgVnB80mIFR", "9vzcdnx6SS2bZx14"], "discountedPrice": 14, "itemId": "y6gc337IFNgHt7RD", "price": 4, "quantity": 33}' \
    > test.out 2>&1
eval_tap $? 435 'PublicPreviewOrderPrice' test.out

#- 436 PublicGetUserOrder
samples/cli/sample-apps Platform publicGetUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'JWNI4eh27Z5suX73' \
    --userId 'TOZMLajmPJB5ro8O' \
    > test.out 2>&1
eval_tap $? 436 'PublicGetUserOrder' test.out

#- 437 PublicCancelUserOrder
samples/cli/sample-apps Platform publicCancelUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'TnUE5kYVV2BQKMWY' \
    --userId 't9LCciqCms2PFUN0' \
    > test.out 2>&1
eval_tap $? 437 'PublicCancelUserOrder' test.out

#- 438 PublicGetUserOrderHistories
samples/cli/sample-apps Platform publicGetUserOrderHistories \
    --namespace $AB_NAMESPACE \
    --orderNo 'OcpOTY8NW1s0oHur' \
    --userId 'szzq4wKWhauEZKKP' \
    > test.out 2>&1
eval_tap $? 438 'PublicGetUserOrderHistories' test.out

#- 439 PublicDownloadUserOrderReceipt
samples/cli/sample-apps Platform publicDownloadUserOrderReceipt \
    --namespace $AB_NAMESPACE \
    --orderNo 'Yq8RS6NJhG0IliX2' \
    --userId '9Xgny7lBUrvwRKz5' \
    > test.out 2>&1
eval_tap $? 439 'PublicDownloadUserOrderReceipt' test.out

#- 440 PublicGetPaymentAccounts
samples/cli/sample-apps Platform publicGetPaymentAccounts \
    --namespace $AB_NAMESPACE \
    --userId 'TuI5IQKi1lIK3Pc2' \
    > test.out 2>&1
eval_tap $? 440 'PublicGetPaymentAccounts' test.out

#- 441 PublicDeletePaymentAccount
samples/cli/sample-apps Platform publicDeletePaymentAccount \
    --id 'YUrktyMiam0FMoDI' \
    --namespace $AB_NAMESPACE \
    --type 'card' \
    --userId 'rnhY6DyqnTNCh2XR' \
    > test.out 2>&1
eval_tap $? 441 'PublicDeletePaymentAccount' test.out

#- 442 PublicListActiveSections
samples/cli/sample-apps Platform publicListActiveSections \
    --namespace $AB_NAMESPACE \
    --userId 'gXnC0x3doWBWtQnh' \
    --autoCalcEstimatedPrice 'false' \
    --language 'iyXgoR0onMWJoS0C' \
    --region 'WwfJ2OSvZeTV9A3Z' \
    --storeId 'pPblTa2ijdvYg5zI' \
    --viewId 'aSUgVR8feKyclmnW' \
    > test.out 2>&1
eval_tap $? 442 'PublicListActiveSections' test.out

#- 443 PublicQueryUserSubscriptions
samples/cli/sample-apps Platform publicQueryUserSubscriptions \
    --namespace $AB_NAMESPACE \
    --userId 'bMqCAfrXO77FrdGX' \
    --chargeStatus 'CHARGED' \
    --itemId 'j3x647xX8Vns2Shq' \
    --limit '78' \
    --offset '63' \
    --sku 'EsdcyL9szv378PXk' \
    --status 'CANCELLED' \
    --subscribedBy 'USER' \
    > test.out 2>&1
eval_tap $? 443 'PublicQueryUserSubscriptions' test.out

#- 444 PublicSubscribeSubscription
samples/cli/sample-apps Platform publicSubscribeSubscription \
    --namespace $AB_NAMESPACE \
    --userId 'frzpg3jk2aYMiWBl' \
    --body '{"currencyCode": "VHOLSkkpP2MXwrm9", "itemId": "fcOwQafCMsnQ7BNS", "language": "RDU-VjCl", "region": "LY6m9WSlERzsmxyc", "returnUrl": "dGMGzSbnDbqPH2Od", "source": "JKhIBMji1XQnHYYj"}' \
    > test.out 2>&1
eval_tap $? 444 'PublicSubscribeSubscription' test.out

#- 445 PublicCheckUserSubscriptionSubscribableByItemId
samples/cli/sample-apps Platform publicCheckUserSubscriptionSubscribableByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'XbuHmqPUJCNlSMPP' \
    --itemId 'w8uHo3iNb9ujkg6F' \
    > test.out 2>&1
eval_tap $? 445 'PublicCheckUserSubscriptionSubscribableByItemId' test.out

#- 446 PublicGetUserSubscription
samples/cli/sample-apps Platform publicGetUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'XiXucPLjtvWGe7Ch' \
    --userId 'GCG0CtDPNz6E02Dx' \
    > test.out 2>&1
eval_tap $? 446 'PublicGetUserSubscription' test.out

#- 447 PublicChangeSubscriptionBillingAccount
samples/cli/sample-apps Platform publicChangeSubscriptionBillingAccount \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'wwhlfSPYzxyBj26I' \
    --userId 'TyNgGstbmC9hWAcT' \
    > test.out 2>&1
eval_tap $? 447 'PublicChangeSubscriptionBillingAccount' test.out

#- 448 PublicCancelSubscription
samples/cli/sample-apps Platform publicCancelSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'aOb8oOwXk4zSZPbf' \
    --userId '7oFO6zbcdOyWcB25' \
    --body '{"immediate": true, "reason": "myiFi9KgEDLkfYT8"}' \
    > test.out 2>&1
eval_tap $? 448 'PublicCancelSubscription' test.out

#- 449 PublicGetUserSubscriptionBillingHistories
samples/cli/sample-apps Platform publicGetUserSubscriptionBillingHistories \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'Xm2eHblDHA6tTmiS' \
    --userId 'APnzEdxvZDwN977s' \
    --excludeFree 'true' \
    --limit '50' \
    --offset '5' \
    > test.out 2>&1
eval_tap $? 449 'PublicGetUserSubscriptionBillingHistories' test.out

#- 450 PublicListViews
samples/cli/sample-apps Platform publicListViews \
    --namespace $AB_NAMESPACE \
    --userId 'xRG4Xv8oEqXdjtN5' \
    --language 'xz4Vu9qMe0tcvpdr' \
    --storeId 'nsFHIIysSpbXR9vt' \
    > test.out 2>&1
eval_tap $? 450 'PublicListViews' test.out

#- 451 PublicGetWallet
samples/cli/sample-apps Platform publicGetWallet \
    --currencyCode 'kQxyAk7aTIGB5fHZ' \
    --namespace $AB_NAMESPACE \
    --userId 'hnTx6iHAESaKQGqz' \
    > test.out 2>&1
eval_tap $? 451 'PublicGetWallet' test.out

#- 452 PublicListUserWalletTransactions
samples/cli/sample-apps Platform publicListUserWalletTransactions \
    --currencyCode 'mhuWZ5v7ZcsYQrIh' \
    --namespace $AB_NAMESPACE \
    --userId 'FJbLAz6wOeQUmM4A' \
    --limit '17' \
    --offset '88' \
    > test.out 2>&1
eval_tap $? 452 'PublicListUserWalletTransactions' test.out

#- 453 PublicGetMyDLCContent
samples/cli/sample-apps Platform publicGetMyDLCContent \
    --includeAllNamespaces 'false' \
    --type 'XBOX' \
    > test.out 2>&1
eval_tap $? 453 'PublicGetMyDLCContent' test.out

#- 454 QueryFulfillments
samples/cli/sample-apps Platform queryFulfillments \
    --namespace $AB_NAMESPACE \
    --endTime 'uxln1AJSZXvUU9lI' \
    --limit '53' \
    --offset '50' \
    --startTime '3WzTEL02TlzFLhbp' \
    --state 'REVOKE_FAILED' \
    --transactionId 'ItUrp21Lmg55djmW' \
    --userId 'y9ZZvn2uFeEmemy9' \
    > test.out 2>&1
eval_tap $? 454 'QueryFulfillments' test.out

#- 455 QueryItemsV2
samples/cli/sample-apps Platform queryItemsV2 \
    --namespace $AB_NAMESPACE \
    --appType 'GAME' \
    --availableDate 'hfi6LkcFfSz8HBeo' \
    --baseAppId 'hGsYuziDH9tdzj9X' \
    --categoryPath 'oJXwvM0gClMyZ8tS' \
    --features 'CVdlt771JII6DU8z' \
    --includeSubCategoryItem 'false' \
    --itemName 'AYdbjJd2rZmRQJdt' \
    --itemStatus 'INACTIVE' \
    --itemType '["LOOTBOX", "MEDIA", "INGAMEITEM"]' \
    --limit '78' \
    --offset '3' \
    --region 'lgkKBlYTLSlXBklW' \
    --sectionExclusive 'false' \
    --sortBy '["updatedAt:desc", "createdAt:asc"]' \
    --storeId 'aGtnKIpdRq46svKz' \
    --tags 'NF41XhlJqsJW8sbY' \
    --targetNamespace 'UTqC9jgp0YKChWxh' \
    --withTotal 'true' \
    > test.out 2>&1
eval_tap $? 455 'QueryItemsV2' test.out

#- 456 ImportStore1
samples/cli/sample-apps Platform importStore1 \
    --namespace $AB_NAMESPACE \
    --storeId 'eMux3ZRriXKWj4VI' \
    --strictMode 'true' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 456 'ImportStore1' test.out

#- 457 ExportStore1
samples/cli/sample-apps Platform exportStore1 \
    --namespace $AB_NAMESPACE \
    --storeId '2orptlu0DyNyoD8t' \
    --body '{"itemIds": ["ioMOwXEJurnf01eg", "mnW1oUXrphkqE2jn", "ToPI8OenzuVl6d1e"]}' \
    > test.out 2>&1
eval_tap $? 457 'ExportStore1' test.out

#- 458 FulfillRewardsV2
samples/cli/sample-apps Platform fulfillRewardsV2 \
    --namespace $AB_NAMESPACE \
    --userId 'c4weg29kZaJD3YbA' \
    --body '{"entitlementCollectionId": "jyzuJHlzVZzxJzsB", "entitlementOrigin": "Xbox", "metadata": {"7k1kUeNnEcRgKcP1": {}, "F0qk7RCu2hiKweLz": {}, "EKBcjUGyrEjS8u33": {}}, "origin": "Xbox", "rewards": [{"currency": {"currencyCode": "q5se5hgdf8LKyKPJ", "namespace": "wn0M1N9dhBMZqhYH"}, "item": {"itemId": "lV2rt0PcCg8dWqw3", "itemName": "DHR2vtUHm0xGcZaF", "itemSku": "4pAFHwmX7BCg6OVT", "itemType": "MqH3w4WUD7dvKd4D"}, "quantity": 39, "type": "CURRENCY"}, {"currency": {"currencyCode": "mnlGSGvNGUG8bkjT", "namespace": "lN49Svj90sYklZdF"}, "item": {"itemId": "6T3GizphXu5uNsNw", "itemName": "2ZV3k61wglOdWsiG", "itemSku": "7NW747bmg6Y6fq6w", "itemType": "3WRrnz6W2xuGii35"}, "quantity": 91, "type": "ITEM"}, {"currency": {"currencyCode": "OzvYHQrUAHGey0dv", "namespace": "y6HjKLumdEtzJdjq"}, "item": {"itemId": "bvF1JgaT4Tyvc1e6", "itemName": "WaBKyVpmbqM1z7fG", "itemSku": "RCG8J0UG2hazoox1", "itemType": "3dlumBos7fmYA6IC"}, "quantity": 7, "type": "ITEM"}], "source": "DLC", "transactionId": "lhMoIzRKUzmkoZ7K"}' \
    > test.out 2>&1
eval_tap $? 458 'FulfillRewardsV2' test.out

#- 459 FulfillItems
samples/cli/sample-apps Platform fulfillItems \
    --namespace $AB_NAMESPACE \
    --transactionId 'TXtSDyEtKSiArXXP' \
    --userId 'UuXZC1dwDS3aK0eq' \
    --body '{"items": [{"duration": 39, "endDate": "1973-05-20T00:00:00Z", "entitlementCollectionId": "25a1gxzCCm6nFoFb", "entitlementOrigin": "Other", "itemId": "V9Wpiwg1FVyEiG4Q", "itemSku": "YxQtUblyFX4m7oJ5", "language": "GS3pMPjtmHrsaClh", "metadata": {"evEM2gHgKl62F3I2": {}, "qHPxE6NZz2FGmURw": {}, "VQgFUTEElqmF3ijX": {}}, "orderNo": "l2wdSZyjtNbaFAwm", "origin": "IOS", "quantity": 11, "region": "tfg7d50RUrtsPQ1N", "source": "PAYMENT", "startDate": "1986-06-23T00:00:00Z", "storeId": "mzwmuyQqgLnOC2Rm"}, {"duration": 87, "endDate": "1985-08-23T00:00:00Z", "entitlementCollectionId": "TQtggzpeSQIVQv76", "entitlementOrigin": "Epic", "itemId": "jdmcCpBSNsESWma9", "itemSku": "UMhZGCmhpfB7qLjK", "language": "eGq2WxEEWYsQruQo", "metadata": {"u6uJZQbCgJT5zFPr": {}, "AflwSEGe6X42uurG": {}, "AEmhmJvuTODaLYzw": {}}, "orderNo": "57LSsEE4Ltd4tVgQ", "origin": "IOS", "quantity": 67, "region": "5u9VN79nHOSA7n8h", "source": "REFERRAL_BONUS", "startDate": "1990-05-03T00:00:00Z", "storeId": "Gd3V5v1AOAppxjhp"}, {"duration": 73, "endDate": "1997-06-26T00:00:00Z", "entitlementCollectionId": "yfe5fjtSfVk7nKZ7", "entitlementOrigin": "Oculus", "itemId": "Xib38ByBquUMKitt", "itemSku": "ZlrfH0iSYp0fJZdN", "language": "l4rgKRqrPiC3nhK6", "metadata": {"44lRLZpwgxHfBd0W": {}, "igk2f8kLsTVoPQmR": {}, "bv2t6N4qZb0sFukI": {}}, "orderNo": "iiZH9ghn7WCMd4XU", "origin": "Epic", "quantity": 90, "region": "LE7OPNV0VRGYmKEN", "source": "REFERRAL_BONUS", "startDate": "1976-07-26T00:00:00Z", "storeId": "FOkhljBGFWOkhRWX"}]}' \
    > test.out 2>&1
eval_tap $? 459 'FulfillItems' test.out

#- 460 RevokeItems
samples/cli/sample-apps Platform revokeItems \
    --namespace $AB_NAMESPACE \
    --transactionId 'QX8YK9DQEj3NdFmS' \
    --userId 'SZj1XqM3sj8WypPg' \
    > test.out 2>&1
eval_tap $? 460 'RevokeItems' test.out


rm -f "tmp.dat"

exit $EXIT_CODE