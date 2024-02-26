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
echo "1..444"

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
    --id 'RkJo7P6mMutCU0Ps' \
    > test.out 2>&1
eval_tap $? 3 'GetFulfillmentScript' test.out

#- 4 CreateFulfillmentScript
samples/cli/sample-apps Platform createFulfillmentScript \
    --id 'EN4nCsyrIXHgXi8I' \
    --body '{"grantDays": "kRs0xkJt5LgCaa1p"}' \
    > test.out 2>&1
eval_tap $? 4 'CreateFulfillmentScript' test.out

#- 5 DeleteFulfillmentScript
samples/cli/sample-apps Platform deleteFulfillmentScript \
    --id 'mTSkWRgufV8lPC79' \
    > test.out 2>&1
eval_tap $? 5 'DeleteFulfillmentScript' test.out

#- 6 UpdateFulfillmentScript
samples/cli/sample-apps Platform updateFulfillmentScript \
    --id '8OwKMhgNZVjjr12b' \
    --body '{"grantDays": "Gc5athpiN8AiP1fu"}' \
    > test.out 2>&1
eval_tap $? 6 'UpdateFulfillmentScript' test.out

#- 7 ListItemTypeConfigs
samples/cli/sample-apps Platform listItemTypeConfigs \
    > test.out 2>&1
eval_tap $? 7 'ListItemTypeConfigs' test.out

#- 8 CreateItemTypeConfig
samples/cli/sample-apps Platform createItemTypeConfig \
    --body '{"clazz": "TVH7bSfrvKmVeqRd", "dryRun": true, "fulfillmentUrl": "Sgo4HoflLL8GooBw", "itemType": "MEDIA", "purchaseConditionUrl": "0jiWArxb0OZMRhB2"}' \
    > test.out 2>&1
eval_tap $? 8 'CreateItemTypeConfig' test.out

#- 9 SearchItemTypeConfig
samples/cli/sample-apps Platform searchItemTypeConfig \
    --clazz '1NYyI4TLrOHnOukx' \
    --itemType 'EXTENSION' \
    > test.out 2>&1
eval_tap $? 9 'SearchItemTypeConfig' test.out

#- 10 GetItemTypeConfig
samples/cli/sample-apps Platform getItemTypeConfig \
    --id 'xW1OZnEEjXBtzsjl' \
    > test.out 2>&1
eval_tap $? 10 'GetItemTypeConfig' test.out

#- 11 UpdateItemTypeConfig
samples/cli/sample-apps Platform updateItemTypeConfig \
    --id 'r6pf4pKWcvax4wEp' \
    --body '{"clazz": "emL1CxvGHFv023rK", "dryRun": true, "fulfillmentUrl": "VAU9qSLHK06TKT9q", "purchaseConditionUrl": "AkfkfdOFMj0ySWO8"}' \
    > test.out 2>&1
eval_tap $? 11 'UpdateItemTypeConfig' test.out

#- 12 DeleteItemTypeConfig
samples/cli/sample-apps Platform deleteItemTypeConfig \
    --id '4DJ3wu4hIIVopVR8' \
    > test.out 2>&1
eval_tap $? 12 'DeleteItemTypeConfig' test.out

#- 13 QueryCampaigns
samples/cli/sample-apps Platform queryCampaigns \
    --namespace $AB_NAMESPACE \
    --limit '91' \
    --name 'PaQNJH1symXeSLlr' \
    --offset '52' \
    --tag 'G6Ol1UemTQg0ulPj' \
    > test.out 2>&1
eval_tap $? 13 'QueryCampaigns' test.out

#- 14 CreateCampaign
samples/cli/sample-apps Platform createCampaign \
    --namespace $AB_NAMESPACE \
    --body '{"description": "HGbar7y6jUJsLcml", "items": [{"extraSubscriptionDays": 88, "itemId": "q9lkwM0KQapIdFCw", "itemName": "YjiptBGffYIUhxMz", "quantity": 87}, {"extraSubscriptionDays": 37, "itemId": "w3wHEK2BhnmmZX9N", "itemName": "slYunwck7KClxdRq", "quantity": 14}, {"extraSubscriptionDays": 86, "itemId": "QuthBH5uC6wYa18y", "itemName": "gSmnIPCvCdtqaxKh", "quantity": 34}], "maxRedeemCountPerCampaignPerUser": 16, "maxRedeemCountPerCode": 19, "maxRedeemCountPerCodePerUser": 74, "maxSaleCount": 4, "name": "NMWIcsoIgzCIZYq3", "redeemEnd": "1985-10-25T00:00:00Z", "redeemStart": "1992-03-31T00:00:00Z", "redeemType": "ITEM", "status": "ACTIVE", "tags": ["3pIUKekrsS7q1bnE", "VNuMuLY20iryDD85", "QxB4Vu8avSNR2ZI8"], "type": "REDEMPTION"}' \
    > test.out 2>&1
eval_tap $? 14 'CreateCampaign' test.out

#- 15 GetCampaign
samples/cli/sample-apps Platform getCampaign \
    --campaignId 'FfCKas7kp0iys5vZ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 15 'GetCampaign' test.out

#- 16 UpdateCampaign
samples/cli/sample-apps Platform updateCampaign \
    --campaignId 'gr2im5Qz4tKrOD0P' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "KsquhmmzZ0wdKqS7", "items": [{"extraSubscriptionDays": 34, "itemId": "rqwYlefshddUxEIl", "itemName": "MembhB5aGldE0G2z", "quantity": 56}, {"extraSubscriptionDays": 4, "itemId": "aUPrceLi47t4nlL9", "itemName": "tCpqDmTeMPe80cCG", "quantity": 71}, {"extraSubscriptionDays": 80, "itemId": "CviHzWtm84phXAe5", "itemName": "9oXKHbEd4D0m4RUe", "quantity": 70}], "maxRedeemCountPerCampaignPerUser": 43, "maxRedeemCountPerCode": 62, "maxRedeemCountPerCodePerUser": 74, "maxSaleCount": 2, "name": "TazrZHJ2IVvS0ke0", "redeemEnd": "1996-04-06T00:00:00Z", "redeemStart": "1990-01-11T00:00:00Z", "redeemType": "ITEM", "status": "ACTIVE", "tags": ["zz9cvEzvkf1HPNVO", "55Aqi4clWfRnWIev", "H9DOY1EG7K2QMtha"]}' \
    > test.out 2>&1
eval_tap $? 16 'UpdateCampaign' test.out

#- 17 GetCampaignDynamic
samples/cli/sample-apps Platform getCampaignDynamic \
    --campaignId 'tchIBQtdVeE7saMK' \
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
    --body '{"appConfig": {"appName": "XZzXzqAmOTEJPTEC"}, "customConfig": {"connectionType": "TLS", "grpcServerAddress": "dxwhG7nUF3f6yftl"}, "extendType": "CUSTOM"}' \
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
    --body '{"appConfig": {"appName": "JVJYWa9Eq8a00md0"}, "customConfig": {"connectionType": "INSECURE", "grpcServerAddress": "R2xTUfXq2tdCoCbu"}, "extendType": "APP"}' \
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
    --storeId 'CuKZOLd6xynWzgTf' \
    > test.out 2>&1
eval_tap $? 27 'GetRootCategories' test.out

#- 28 CreateCategory
samples/cli/sample-apps Platform createCategory \
    --namespace $AB_NAMESPACE \
    --storeId 'P3xtmpq9WY1Pefcx' \
    --body '{"categoryPath": "WdMWCl7JoqSggDtI", "localizationDisplayNames": {"z5pWHA8ymvKrkVGL": "DuHrVN4aUQGnWyr3", "XnYCu2aaSQlImg52": "shXUXmd88V5nB1nV", "JE726BeX4vCtLUUF": "oizaoTSoFL03aFzd"}}' \
    > test.out 2>&1
eval_tap $? 28 'CreateCategory' test.out

#- 29 ListCategoriesBasic
samples/cli/sample-apps Platform listCategoriesBasic \
    --namespace $AB_NAMESPACE \
    --storeId 'o6kWNDq5IjrOfGVE' \
    > test.out 2>&1
eval_tap $? 29 'ListCategoriesBasic' test.out

#- 30 GetCategory
samples/cli/sample-apps Platform getCategory \
    --categoryPath 'mgS0DFASA0gnVlhw' \
    --namespace $AB_NAMESPACE \
    --storeId 'EUDCsSJA9zw54hj0' \
    > test.out 2>&1
eval_tap $? 30 'GetCategory' test.out

#- 31 UpdateCategory
samples/cli/sample-apps Platform updateCategory \
    --categoryPath 'TEd6v7M1bsIUZvwG' \
    --namespace $AB_NAMESPACE \
    --storeId 'pbVe6ap8P7p4EKL9' \
    --body '{"localizationDisplayNames": {"LElv2o15kgSWao60": "ZNOwOeWnV0bI62cR", "NNR1ZZoWIgxZ2nvo": "tgex68iMLS3VxyJo", "vjYgNnjSdjKQzFPV": "ORrnr4gW7XXj9mXk"}}' \
    > test.out 2>&1
eval_tap $? 31 'UpdateCategory' test.out

#- 32 DeleteCategory
samples/cli/sample-apps Platform deleteCategory \
    --categoryPath 'bo15SJu4g5MfRtN7' \
    --namespace $AB_NAMESPACE \
    --storeId '8qBTLZ2x7mSjIK8S' \
    > test.out 2>&1
eval_tap $? 32 'DeleteCategory' test.out

#- 33 GetChildCategories
samples/cli/sample-apps Platform getChildCategories \
    --categoryPath 'cPVpu3PFOKU0l9dC' \
    --namespace $AB_NAMESPACE \
    --storeId 'AxFh2hDcmlmi3cmg' \
    > test.out 2>&1
eval_tap $? 33 'GetChildCategories' test.out

#- 34 GetDescendantCategories
samples/cli/sample-apps Platform getDescendantCategories \
    --categoryPath 'saundUeW48ts3XFR' \
    --namespace $AB_NAMESPACE \
    --storeId 'IamaBUluUJC5FOnk' \
    > test.out 2>&1
eval_tap $? 34 'GetDescendantCategories' test.out

#- 35 QueryCodes
samples/cli/sample-apps Platform queryCodes \
    --campaignId 'lV5QxSAb1k6TNa1z' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --batchNo '42' \
    --code 'nNNn3LpJDilrpqck' \
    --limit '95' \
    --offset '87' \
    > test.out 2>&1
eval_tap $? 35 'QueryCodes' test.out

#- 36 CreateCodes
samples/cli/sample-apps Platform createCodes \
    --campaignId 'U4G11AyUAJQYkttM' \
    --namespace $AB_NAMESPACE \
    --body '{"quantity": 1}' \
    > test.out 2>&1
eval_tap $? 36 'CreateCodes' test.out

#- 37 Download
samples/cli/sample-apps Platform download \
    --campaignId 'ByZptkYhsUTkc3ta' \
    --namespace $AB_NAMESPACE \
    --batchNo '85' \
    > test.out 2>&1
eval_tap $? 37 'Download' test.out

#- 38 BulkDisableCodes
samples/cli/sample-apps Platform bulkDisableCodes \
    --campaignId 'gAcYh2MIbGm5Lff6' \
    --namespace $AB_NAMESPACE \
    --batchNo '31' \
    > test.out 2>&1
eval_tap $? 38 'BulkDisableCodes' test.out

#- 39 BulkEnableCodes
samples/cli/sample-apps Platform bulkEnableCodes \
    --campaignId 'L2qixWycLxXahFiC' \
    --namespace $AB_NAMESPACE \
    --batchNo '38' \
    > test.out 2>&1
eval_tap $? 39 'BulkEnableCodes' test.out

#- 40 QueryRedeemHistory
samples/cli/sample-apps Platform queryRedeemHistory \
    --campaignId 'QklaDHERbhNnnSzY' \
    --namespace $AB_NAMESPACE \
    --code 'qVM0ZR6AjSYUjo8y' \
    --limit '80' \
    --offset '26' \
    --userId 'vFukV8xN0nlgmEtF' \
    > test.out 2>&1
eval_tap $? 40 'QueryRedeemHistory' test.out

#- 41 GetCode
samples/cli/sample-apps Platform getCode \
    --code 'iCldwsTiE4mUDhKu' \
    --namespace $AB_NAMESPACE \
    --redeemable 'false' \
    > test.out 2>&1
eval_tap $? 41 'GetCode' test.out

#- 42 DisableCode
samples/cli/sample-apps Platform disableCode \
    --code '7BkOHkNbyMDrYSHF' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 42 'DisableCode' test.out

#- 43 EnableCode
samples/cli/sample-apps Platform enableCode \
    --code '8JgeQh3QCr6HqVas' \
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
    --body '{"currencyCode": "rbfkfm5bzS4wwLiD", "currencySymbol": "LfcASYP1KmexwxwN", "currencyType": "REAL", "decimals": 94, "localizationDescriptions": {"jg2ii4aViXvpdZiD": "d7HQRIP4uDtq8RP2", "iBruH6vY7l88c5yd": "VjGmxzfmskDfNmM5", "N09jiDVgTozmkOm1": "QFS64pcCgU620riU"}}' \
    > test.out 2>&1
eval_tap $? 48 'CreateCurrency' test.out

#- 49 UpdateCurrency
samples/cli/sample-apps Platform updateCurrency \
    --currencyCode 'kYDpw1zStathy81x' \
    --namespace $AB_NAMESPACE \
    --body '{"localizationDescriptions": {"sndgZsSEHNbp6m6D": "9NstUo106lPE2X9u", "p2uzo8uB8CelJdo3": "lMwGP1v0FUUCadrI", "pwhqd02Zdmp26ejK": "7w3P1TlD1AvcKSsl"}}' \
    > test.out 2>&1
eval_tap $? 49 'UpdateCurrency' test.out

#- 50 DeleteCurrency
samples/cli/sample-apps Platform deleteCurrency \
    --currencyCode 'snXkW1Atmbued5cG' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 50 'DeleteCurrency' test.out

#- 51 GetCurrencyConfig
samples/cli/sample-apps Platform getCurrencyConfig \
    --currencyCode 'awu6YQECLmpLqeRM' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 51 'GetCurrencyConfig' test.out

#- 52 GetCurrencySummary
samples/cli/sample-apps Platform getCurrencySummary \
    --currencyCode 'erLRFpLL1HAeMtqQ' \
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
    --body '{"data": [{"id": "C8varu2o2FMd2WTq", "rewards": [{"currency": {"currencyCode": "Y5B0TftEfK2pEFNs", "namespace": "Jh0BYo7H8Jnk2VQb"}, "item": {"itemId": "znQ4hKtwvUPJ5xE2", "itemSku": "nytrfOQxdwiQKH1c", "itemType": "UNucz1wuqU4EmX0P"}, "quantity": 72, "type": "CURRENCY"}, {"currency": {"currencyCode": "DVuDydJ4fuZMEyUO", "namespace": "MR7mR2HPwCgksIcM"}, "item": {"itemId": "hxVLiXnBkvSvre0w", "itemSku": "1JbZMUJtI5U9xxmy", "itemType": "TsCiuiQaV8EMYlso"}, "quantity": 27, "type": "CURRENCY"}, {"currency": {"currencyCode": "6zYgippnadRKWxeh", "namespace": "U9gu8sRJOtQbpzLs"}, "item": {"itemId": "ki31aPo91X8J0BJs", "itemSku": "9sgvTQ5vJ54yP2g3", "itemType": "gL4Mrsj2dq2gQya3"}, "quantity": 44, "type": "ITEM"}]}, {"id": "HCgkMAxiU74cdRBu", "rewards": [{"currency": {"currencyCode": "HLt58s9CIOayCqOD", "namespace": "yA9mgzMJSDhjHe1n"}, "item": {"itemId": "ngcxT3cRlBB3cmGD", "itemSku": "pW6zoX8a4fAAI3I2", "itemType": "dTAzwMXH9jYmWQmx"}, "quantity": 56, "type": "ITEM"}, {"currency": {"currencyCode": "87MN5JyzaLiDE7ho", "namespace": "mTqpYoGJIjNvX2Gr"}, "item": {"itemId": "G7riitBN5JASxj2m", "itemSku": "F1WccZqzQBkQAMe0", "itemType": "Nwtlox3PobA9BE4Q"}, "quantity": 54, "type": "CURRENCY"}, {"currency": {"currencyCode": "FzTXwrNNbYHrBj5G", "namespace": "0BYFz72F3OXiWAVF"}, "item": {"itemId": "Q2kIEwYzYJoUgbAN", "itemSku": "m3VJOrecxjT6mQRp", "itemType": "H2b7u9k0BLEOu88i"}, "quantity": 53, "type": "CURRENCY"}]}, {"id": "D37gO4Z1fkgNCqnq", "rewards": [{"currency": {"currencyCode": "gU15tBUcDDUFh6FL", "namespace": "D7NKJ5kss1TeFoav"}, "item": {"itemId": "5PZofVN0TxX5qjSt", "itemSku": "jGGYOzZ2ghz0fHpz", "itemType": "mvNz9yUoC5nEvE8C"}, "quantity": 77, "type": "ITEM"}, {"currency": {"currencyCode": "ndziiUjS9AUkSTuo", "namespace": "93a6ZLh85KaAViR8"}, "item": {"itemId": "wwZnAcvrVN4tSbs4", "itemSku": "kBLWbcqzrsTvOjXA", "itemType": "ufXyPxQi9sbS8R8a"}, "quantity": 31, "type": "ITEM"}, {"currency": {"currencyCode": "GXi0GiDSNdo6UHP6", "namespace": "bpus8WnmBSEhG0d4"}, "item": {"itemId": "COz1mLjAFVBJPrKc", "itemSku": "M3zie4Om8KF3y8t6", "itemType": "7Q6Lmg3W9AGc26XX"}, "quantity": 53, "type": "CURRENCY"}]}]}' \
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
    --body '{"data": [{"platform": "PSN", "platformDlcIdMap": {"qVwOXIEmNlKvm53P": "kPJa6H3WUaqxFYnw", "rrW1lk240SvzqQ6R": "F5n1GqhXwenaEjfN", "u0nyrTCEy5Ez8Alx": "2NtWesRjSUQs6kho"}}, {"platform": "OCULUS", "platformDlcIdMap": {"n2BuO0oUWQpaeT7y": "zXlJVfehk1yhlBG9", "YdaLjCrofutOlu3w": "BpLWoPZiG5Qu1tdU", "DndIgpU1rPB539t1": "Ybnw8M83rsVH2NF8"}}, {"platform": "OCULUS", "platformDlcIdMap": {"6zDZxfb00Zls2myR": "7HMcXdCL2gg6K1wo", "8xJRJPaGUwK1R4ko": "uXYpF155zRit4t4s", "2qQzrDk1aoh5HifL": "TRtDkuqX1W09djGX"}}]}' \
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
    --activeOnly 'false' \
    --appType 'GAME' \
    --entitlementClazz 'CODE' \
    --entitlementName 'TEn0TxnwyYLU2Y7U' \
    --itemId '["d9eGWHgJ9gtE98Uo", "SHLBpXSvmspsAKeo", "KuPX0jaNwiAPMB4H"]' \
    --limit '29' \
    --offset '2' \
    --origin 'Nintendo' \
    --userId 'aGQFzcrQKV6dG0R7' \
    > test.out 2>&1
eval_tap $? 59 'QueryEntitlements' test.out

#- 60 QueryEntitlements1
samples/cli/sample-apps Platform queryEntitlements1 \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --itemIds '["eFo91caJeAXdjWl6", "4E2bzT3tVvH5pRhw", "4b4QlsyuPLO9xQ6t"]' \
    --limit '15' \
    --offset '45' \
    > test.out 2>&1
eval_tap $? 60 'QueryEntitlements1' test.out

#- 61 EnableEntitlementOriginFeature
samples/cli/sample-apps Platform enableEntitlementOriginFeature \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 61 'EnableEntitlementOriginFeature' test.out

#- 62 GetEntitlementConfigInfo
samples/cli/sample-apps Platform getEntitlementConfigInfo \
    --namespace $AB_NAMESPACE \
    --withoutCache 'false' \
    > test.out 2>&1
eval_tap $? 62 'GetEntitlementConfigInfo' test.out

#- 63 GrantEntitlements
samples/cli/sample-apps Platform grantEntitlements \
    --namespace $AB_NAMESPACE \
    --body '{"entitlementGrantList": [{"collectionId": "IUffsZKRPtKTZI9H", "endDate": "1986-02-13T00:00:00Z", "grantedCode": "Mt3L8evTsma6igyh", "itemId": "AKOdaqfOPKtHXby1", "itemNamespace": "HNBDkSaknVUPCwzo", "language": "MK-Kw", "origin": "Epic", "quantity": 53, "region": "rRKeVxvdQtER1bxv", "source": "REWARD", "startDate": "1973-12-17T00:00:00Z", "storeId": "XxApgZ3ExugSvHtv"}, {"collectionId": "qXQCnZgLcg3eRHpK", "endDate": "1976-09-24T00:00:00Z", "grantedCode": "BdTbn9a6jCQZ2dTk", "itemId": "eLHlbgt5BImGAMdl", "itemNamespace": "D6Ba9G7uBsjOWilj", "language": "kF-KS", "origin": "Other", "quantity": 69, "region": "9WeBV7kK2UdBJc3z", "source": "REWARD", "startDate": "1988-10-28T00:00:00Z", "storeId": "olhTNcJsXSmJ0Qh1"}, {"collectionId": "IOCja16o42sFQv71", "endDate": "1993-06-13T00:00:00Z", "grantedCode": "zBHjyZc5VLIYHJyv", "itemId": "S43yUkC3InKO7U8W", "itemNamespace": "GCaxd8DYhQfqE5Xo", "language": "Ztyp", "origin": "Oculus", "quantity": 23, "region": "ly3JooYnGTWYUmqd", "source": "PURCHASE", "startDate": "1998-10-09T00:00:00Z", "storeId": "SR4vypo0zoy1AF1H"}], "userIds": ["sLRF525scF2mXq76", "Y9g1VnkpsGNtFEHS", "Ya80ujkB5iIFxQXV"]}' \
    > test.out 2>&1
eval_tap $? 63 'GrantEntitlements' test.out

#- 64 RevokeEntitlements
samples/cli/sample-apps Platform revokeEntitlements \
    --namespace $AB_NAMESPACE \
    --body '["dlbGVv0awLd2lHPs", "cPnUIWn7edJoy9NH", "AcXN6Rv5lVc6Qfcd"]' \
    > test.out 2>&1
eval_tap $? 64 'RevokeEntitlements' test.out

#- 65 GetEntitlement
samples/cli/sample-apps Platform getEntitlement \
    --entitlementId 'M3KhRNJR7JsERmpg' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 65 'GetEntitlement' test.out

#- 66 QueryFulfillmentHistories
samples/cli/sample-apps Platform queryFulfillmentHistories \
    --namespace $AB_NAMESPACE \
    --limit '19' \
    --offset '5' \
    --status 'SUCCESS' \
    --userId 'oEwyUdnGhXgyOMGG' \
    > test.out 2>&1
eval_tap $? 66 'QueryFulfillmentHistories' test.out

#- 67 QueryIAPClawbackHistory
samples/cli/sample-apps Platform queryIAPClawbackHistory \
    --namespace $AB_NAMESPACE \
    --endTime 'uo4Wc1g6nZuO3bu9' \
    --eventType 'CHARGEBACK' \
    --externalOrderId 'phV1JEkHhKU8TQml' \
    --limit '13' \
    --offset '47' \
    --startTime 'ByO8Yhtn3LK5nRdK' \
    --status 'SUCCESS' \
    --userId '9RH2Xifu2kVdabKK' \
    > test.out 2>&1
eval_tap $? 67 'QueryIAPClawbackHistory' test.out

#- 68 MockPlayStationStreamEvent
samples/cli/sample-apps Platform mockPlayStationStreamEvent \
    --namespace $AB_NAMESPACE \
    --body '{"body": {"account": "K16sG7rTB1A4utDL", "additionalData": {"entitlement": [{"clientTransaction": [{"amountConsumed": 97, "clientTransactionId": "57b9WMrMsuQscqWb"}, {"amountConsumed": 32, "clientTransactionId": "5wofTObHsZdJIS2q"}, {"amountConsumed": 94, "clientTransactionId": "B4fLWtB5suLWaqo5"}], "entitlementId": "eFBmauSsxWxdjPXn", "usageCount": 22}, {"clientTransaction": [{"amountConsumed": 19, "clientTransactionId": "DOGyJMZKAfUZKciX"}, {"amountConsumed": 7, "clientTransactionId": "TqaKVgQjCiBlW1QX"}, {"amountConsumed": 3, "clientTransactionId": "hetOZIZuIYVxZdVD"}], "entitlementId": "jQEnJU9CmmKgnbY3", "usageCount": 7}, {"clientTransaction": [{"amountConsumed": 85, "clientTransactionId": "2uyUoUzKHzLdicQQ"}, {"amountConsumed": 54, "clientTransactionId": "koBhFRVbtGVcWzfV"}, {"amountConsumed": 6, "clientTransactionId": "bdfK7bRYqmaplO2L"}], "entitlementId": "xkGBdpNUs1IdMJg5", "usageCount": 21}], "purpose": "Vkh0K9IN1uDkWmYc"}, "originalTitleName": "tR7WH59gy09WO8ff", "paymentProductSKU": "IxeaqE01aWvj0Qt5", "purchaseDate": "tJAA6fGwrpp1998w", "sourceOrderItemId": "j4YxmHKf9CCGuODR", "titleName": "KCSrAd98MULb0Fov"}, "eventDomain": "XtenkUGmGWn3fWY9", "eventSource": "17pjwxUdxKl5xSiB", "eventType": "e70lIlqXC2TZlDfO", "eventVersion": 98, "id": "fzeGEjmCLbrnGBQl", "timestamp": "vPd3WPGZBLYNxSqL"}' \
    > test.out 2>&1
eval_tap $? 68 'MockPlayStationStreamEvent' test.out

#- 69 GetAppleIAPConfig
samples/cli/sample-apps Platform getAppleIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 69 'GetAppleIAPConfig' test.out

#- 70 UpdateAppleIAPConfig
samples/cli/sample-apps Platform updateAppleIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"bundleId": "BmhezsNbkA9DEQBp", "password": "9tTEjZljudTJ6t76"}' \
    > test.out 2>&1
eval_tap $? 70 'UpdateAppleIAPConfig' test.out

#- 71 DeleteAppleIAPConfig
samples/cli/sample-apps Platform deleteAppleIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 71 'DeleteAppleIAPConfig' test.out

#- 72 GetEpicGamesIAPConfig
samples/cli/sample-apps Platform getEpicGamesIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 72 'GetEpicGamesIAPConfig' test.out

#- 73 UpdateEpicGamesIAPConfig
samples/cli/sample-apps Platform updateEpicGamesIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"sandboxId": "vcjigozAtKJRQ55G"}' \
    > test.out 2>&1
eval_tap $? 73 'UpdateEpicGamesIAPConfig' test.out

#- 74 DeleteEpicGamesIAPConfig
samples/cli/sample-apps Platform deleteEpicGamesIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 74 'DeleteEpicGamesIAPConfig' test.out

#- 75 GetGoogleIAPConfig
samples/cli/sample-apps Platform getGoogleIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 75 'GetGoogleIAPConfig' test.out

#- 76 UpdateGoogleIAPConfig
samples/cli/sample-apps Platform updateGoogleIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"applicationName": "RsoomNQneBCkLxMk", "serviceAccountId": "6CNv78e9gvJI00zz"}' \
    > test.out 2>&1
eval_tap $? 76 'UpdateGoogleIAPConfig' test.out

#- 77 DeleteGoogleIAPConfig
samples/cli/sample-apps Platform deleteGoogleIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 77 'DeleteGoogleIAPConfig' test.out

#- 78 UpdateGoogleP12File
samples/cli/sample-apps Platform updateGoogleP12File \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 78 'UpdateGoogleP12File' test.out

#- 79 GetIAPItemConfig
samples/cli/sample-apps Platform getIAPItemConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 79 'GetIAPItemConfig' test.out

#- 80 UpdateIAPItemConfig
samples/cli/sample-apps Platform updateIAPItemConfig \
    --namespace $AB_NAMESPACE \
    --body '{"data": [{"itemIdentity": "gXktR7xVcZ7JK0YF", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"MQBIhN9sdDqQQ4me": "o2NBj3pHHEqM8r9K", "hzjlMbNpKgByJwPB": "LfkprV4N5kDbD8o2", "orixHli1n4dEWjNB": "1xCWWKMi0wwDMRoq"}}, {"itemIdentity": "c7bcjv6h0rYaw5Du", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"xC5eOpepAB9y89IT": "ocuXH3mo949JT4WV", "LNURq4Wknu5Jy2Zb": "dzd4hJRM8po3byag", "caqsC8PwD9gCtMIg": "fEX22qoA6h0ycDZ5"}}, {"itemIdentity": "525tj9Jz7vU8KQBH", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"uKFAnRYfP0y3qFrm": "hBfHZlUQzA7BUGZ8", "qAYTSs1Ec11XPpGD": "3o9NoVPkP9u6I0iP", "jrWBbyggluEzeD35": "ckXtAg7gnh5XHdxN"}}]}' \
    > test.out 2>&1
eval_tap $? 80 'UpdateIAPItemConfig' test.out

#- 81 DeleteIAPItemConfig
samples/cli/sample-apps Platform deleteIAPItemConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 81 'DeleteIAPItemConfig' test.out

#- 82 GetOculusIAPConfig
samples/cli/sample-apps Platform getOculusIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 82 'GetOculusIAPConfig' test.out

#- 83 UpdateOculusIAPConfig
samples/cli/sample-apps Platform updateOculusIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"appId": "0EY3pQnzf6fpb1MQ", "appSecret": "Mdd8IllBoTXoILVo"}' \
    > test.out 2>&1
eval_tap $? 83 'UpdateOculusIAPConfig' test.out

#- 84 DeleteOculusIAPConfig
samples/cli/sample-apps Platform deleteOculusIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 84 'DeleteOculusIAPConfig' test.out

#- 85 GetPlayStationIAPConfig
samples/cli/sample-apps Platform getPlayStationIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 85 'GetPlayStationIAPConfig' test.out

#- 86 UpdatePlaystationIAPConfig
samples/cli/sample-apps Platform updatePlaystationIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"backOfficeServerClientId": "EnKz7zuocgV6044V", "backOfficeServerClientSecret": "Xz6AywUdgIOZoWZA", "enableStreamJob": true, "environment": "doeX7YqmRXFG0ais", "streamName": "0T4jaQP2hhUVcige", "streamPartnerName": "amBYUrnyGeGOjf0k"}' \
    > test.out 2>&1
eval_tap $? 86 'UpdatePlaystationIAPConfig' test.out

#- 87 DeletePlaystationIAPConfig
samples/cli/sample-apps Platform deletePlaystationIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 87 'DeletePlaystationIAPConfig' test.out

#- 88 ValidateExistedPlaystationIAPConfig
samples/cli/sample-apps Platform validateExistedPlaystationIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 88 'ValidateExistedPlaystationIAPConfig' test.out

#- 89 ValidatePlaystationIAPConfig
samples/cli/sample-apps Platform validatePlaystationIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"backOfficeServerClientId": "7no6uWrcKU5GjxNO", "backOfficeServerClientSecret": "BtshqCumdhrN8kpY", "enableStreamJob": true, "environment": "nCIG2WBni4h3qGOM", "streamName": "UK3J57Dbbo8IfIR2", "streamPartnerName": "LsbA2Z0cA4ZcbDTc"}' \
    > test.out 2>&1
eval_tap $? 89 'ValidatePlaystationIAPConfig' test.out

#- 90 GetSteamIAPConfig
samples/cli/sample-apps Platform getSteamIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 90 'GetSteamIAPConfig' test.out

#- 91 UpdateSteamIAPConfig
samples/cli/sample-apps Platform updateSteamIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"appId": "WEymwyctKhPIh8eu", "publisherAuthenticationKey": "TvaGmSbC1hTHUUTU"}' \
    > test.out 2>&1
eval_tap $? 91 'UpdateSteamIAPConfig' test.out

#- 92 DeleteSteamIAPConfig
samples/cli/sample-apps Platform deleteSteamIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 92 'DeleteSteamIAPConfig' test.out

#- 93 GetTwitchIAPConfig
samples/cli/sample-apps Platform getTwitchIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 93 'GetTwitchIAPConfig' test.out

#- 94 UpdateTwitchIAPConfig
samples/cli/sample-apps Platform updateTwitchIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"clientId": "XYz0140Sb1zIQ81Q", "clientSecret": "FahPebMLBVTool40", "organizationId": "CvJqOXd7tyNwZRTR"}' \
    > test.out 2>&1
eval_tap $? 94 'UpdateTwitchIAPConfig' test.out

#- 95 DeleteTwitchIAPConfig
samples/cli/sample-apps Platform deleteTwitchIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 95 'DeleteTwitchIAPConfig' test.out

#- 96 GetXblIAPConfig
samples/cli/sample-apps Platform getXblIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 96 'GetXblIAPConfig' test.out

#- 97 UpdateXblIAPConfig
samples/cli/sample-apps Platform updateXblIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"relyingPartyCert": "xsg8nuyWTCpluiVN"}' \
    > test.out 2>&1
eval_tap $? 97 'UpdateXblIAPConfig' test.out

#- 98 DeleteXblAPConfig
samples/cli/sample-apps Platform deleteXblAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 98 'DeleteXblAPConfig' test.out

#- 99 UpdateXblBPCertFile
samples/cli/sample-apps Platform updateXblBPCertFile \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    --password 'V1pKgUs7WmbdBAMB' \
    > test.out 2>&1
eval_tap $? 99 'UpdateXblBPCertFile' test.out

#- 100 DownloadInvoiceDetails
samples/cli/sample-apps Platform downloadInvoiceDetails \
    --namespace $AB_NAMESPACE \
    --feature '1oXjOagduPh9QFst' \
    --itemId 'BUAuzKTeiHmVq6hn' \
    --itemType 'INGAMEITEM' \
    --endTime 'KMKCrPJZeDzLrcCj' \
    --startTime 'RZor11W8KNNTNoku' \
    > test.out 2>&1
eval_tap $? 100 'DownloadInvoiceDetails' test.out

#- 101 GenerateInvoiceSummary
samples/cli/sample-apps Platform generateInvoiceSummary \
    --namespace $AB_NAMESPACE \
    --feature 'Xndd3IWZmFZjfncv' \
    --itemId 'pkwKSN83FA0G8lrH' \
    --itemType 'SUBSCRIPTION' \
    --endTime 'xzTdMXaNcANqKmB3' \
    --startTime 'peIYiJURyvxYrvDH' \
    > test.out 2>&1
eval_tap $? 101 'GenerateInvoiceSummary' test.out

#- 102 SyncInGameItem
samples/cli/sample-apps Platform syncInGameItem \
    --namespace $AB_NAMESPACE \
    --storeId 'gBcjCQ69sXWvYQ5f' \
    --body '{"categoryPath": "0d3fEQXHlPF0GYwJ", "targetItemId": "LE7eCcaJoH6qH446", "targetNamespace": "docR6wSkCB4CFQ5s"}' \
    > test.out 2>&1
eval_tap $? 102 'SyncInGameItem' test.out

#- 103 CreateItem
samples/cli/sample-apps Platform createItem \
    --namespace $AB_NAMESPACE \
    --storeId 'yFVI3jIToPRlrUbr' \
    --body '{"appId": "BXdaCZRplfIgK1TO", "appType": "GAME", "baseAppId": "dpyRzOfB8jRWD0kJ", "boothName": "sxC8ptQwxPw8u8Hn", "categoryPath": "qJ1AEYvjX7DoTk10", "clazz": "0K2RGFtIZ88Klj9S", "displayOrder": 30, "entitlementType": "CONSUMABLE", "ext": {"nBuUulbkUgMsiZVB": {}, "baVXdKaEcIBHXIgY": {}, "O9YxcApdJUIuE388": {}}, "features": ["0FnB2oCSk20mus5L", "bPVkKZLzVhRDkNIT", "YebSK4q2vjLcXRYX"], "flexible": false, "images": [{"as": "VKQsWlHUIGFjXJQ5", "caption": "xZksb1if5o4fncE5", "height": 6, "imageUrl": "IvSQWxEnEJiLpWNN", "smallImageUrl": "lkxpBLqTYeua6Gd7", "width": 83}, {"as": "jJ2nTYJYoLeic53g", "caption": "36zGlCC5JKCE7NcO", "height": 90, "imageUrl": "lZd8RrGAkVI9HjwO", "smallImageUrl": "ojNavF8pmuLjkdgl", "width": 22}, {"as": "V1wbAY3xM1bx2qHw", "caption": "XwPJMk21gUr5W5bs", "height": 49, "imageUrl": "t480VXDHHiTu57IM", "smallImageUrl": "97CjxnzBhYlzDi5j", "width": 91}], "inventoryConfig": {"customAttributes": {"LzfzC5h5cWO6ou4W": {}, "4Wd2ZnUv7rPfnZHn": {}, "8hz2uNDRRo7RUavb": {}}, "serverCustomAttributes": {"1wLeMnQujkQWhEw5": {}, "n12h4Elfl3efBwdb": {}, "Agm99c7vljX0pHDy": {}}, "slotUsed": 2}, "itemIds": ["WfebL0g5csss40Lq", "xhGHwU1KLuIAOrDb", "juyOAdBt4uFL5OhW"], "itemQty": {"9sxuT7siQNsWQA0m": 94, "GnFck0udFc3yl0e7": 23, "3tUNRRgJNmkw9AZR": 76}, "itemType": "EXTENSION", "listable": false, "localizations": {"apqnYD4Q5W4zf06O": {"description": "xH1tJFWWGgMjufWb", "localExt": {"sGrBDun4NBtJlNxP": {}, "d8c3pizf1a4aW84E": {}, "gMnd7VzZnjBfRx1r": {}}, "longDescription": "d7gNZsVlUWwpERmg", "title": "BlOQikOVqSTVnsGe"}, "Gv764QwlLfKM50lj": {"description": "32yMTZ9M9y576hsg", "localExt": {"sWtXeeAVjYJBu74A": {}, "CjNejbibdW4iLtd8": {}, "6ccxwdaWa7toekiY": {}}, "longDescription": "fBqbAM42xX4uj3MA", "title": "KKSSAhXBVO7e9NY8"}, "87qbmJqZp2y9OulA": {"description": "guNJF2YrtbMU2bLD", "localExt": {"ZvukxWIz5AcK0Kqy": {}, "RGAZwyIkFKdnJmo3": {}, "D1EruKAl1XbygzTA": {}}, "longDescription": "C92Bot2keLv9YH42", "title": "i1VfxYkluNTqOdGl"}}, "lootBoxConfig": {"rewardCount": 49, "rewards": [{"lootBoxItems": [{"count": 59, "duration": 18, "endDate": "1993-08-09T00:00:00Z", "itemId": "mvxeQc3e586GGhgd", "itemSku": "UZ1sfqrgvsx9l36N", "itemType": "7ewJeEEhLhXfNoRb"}, {"count": 38, "duration": 68, "endDate": "1971-03-09T00:00:00Z", "itemId": "e4nkMIA9DkUGgLct", "itemSku": "BrsBqq6c4Pgu2Zun", "itemType": "91EhV1wa1h1Nb1vN"}, {"count": 7, "duration": 35, "endDate": "1974-09-19T00:00:00Z", "itemId": "r9iSPiI8kZ1hZL6U", "itemSku": "uhvT2QouyacYDARM", "itemType": "bgufTFsJS8cDNyJs"}], "name": "LB8kiAzNQdExDr6o", "odds": 0.35062328362929296, "type": "PROBABILITY_GROUP", "weight": 44}, {"lootBoxItems": [{"count": 97, "duration": 78, "endDate": "1974-05-28T00:00:00Z", "itemId": "UxjAYvKNzq3W2FpJ", "itemSku": "qGw1nBc7C1F7WqPD", "itemType": "tLjpZ0UPvMxBod52"}, {"count": 27, "duration": 69, "endDate": "1990-02-17T00:00:00Z", "itemId": "0u3cHCIV698xUrJQ", "itemSku": "uYoRj5huWqTHVCdd", "itemType": "bjzRKsEEweKwEERf"}, {"count": 8, "duration": 25, "endDate": "1992-08-23T00:00:00Z", "itemId": "vk1D8K3QylbGuq3Y", "itemSku": "CH4LNXXSsysgQFBp", "itemType": "mGTV31oE97WJH8In"}], "name": "ZWAnXEISqXzYTFrb", "odds": 0.7837013538828496, "type": "PROBABILITY_GROUP", "weight": 64}, {"lootBoxItems": [{"count": 26, "duration": 15, "endDate": "1979-02-23T00:00:00Z", "itemId": "iBy92UJtnnoFyMb2", "itemSku": "jsSH81ENZ0pIJ5vG", "itemType": "2Y65R14h5y9ExrBE"}, {"count": 100, "duration": 78, "endDate": "1979-11-02T00:00:00Z", "itemId": "WyvzL3G98FIWACxi", "itemSku": "7ZoqlOl7OoD85cZP", "itemType": "cwQbZpwiQVVOnSEf"}, {"count": 11, "duration": 61, "endDate": "1986-09-06T00:00:00Z", "itemId": "iMTXW6WtZabDFdfc", "itemSku": "YpSvZG05z2YDHdxd", "itemType": "ZN34950lIDaVzLRd"}], "name": "uYPEZqTK193CvWpw", "odds": 0.18108751220831076, "type": "PROBABILITY_GROUP", "weight": 100}], "rollFunction": "CUSTOM"}, "maxCount": 66, "maxCountPerUser": 19, "name": "eFGg0arSn0KiDuFJ", "optionBoxConfig": {"boxItems": [{"count": 60, "duration": 20, "endDate": "1979-01-05T00:00:00Z", "itemId": "PJ7lByuHAoyB63Ne", "itemSku": "aIViAyvMfRE5Z579", "itemType": "GwaDisfWwjYmoDFC"}, {"count": 71, "duration": 88, "endDate": "1973-04-15T00:00:00Z", "itemId": "WxYwqN71iwAKD666", "itemSku": "JwS4AXBGh0ljq7Td", "itemType": "BHVwIU6KcXJUpcuU"}, {"count": 89, "duration": 35, "endDate": "1983-07-06T00:00:00Z", "itemId": "KgWms4FxsLEigGHr", "itemSku": "g9MDGAcUEiX7st0U", "itemType": "f0h5W2n1U6Up4wiE"}]}, "purchasable": true, "recurring": {"cycle": "WEEKLY", "fixedFreeDays": 94, "fixedTrialCycles": 37, "graceDays": 29}, "regionData": {"B8ASk8xGIN6LjuVz": [{"currencyCode": "5gum9zU27fp4EHfU", "currencyNamespace": "bmt29uwOhucLFTIg", "currencyType": "REAL", "discountAmount": 77, "discountExpireAt": "1980-03-26T00:00:00Z", "discountPercentage": 60, "discountPurchaseAt": "1991-10-27T00:00:00Z", "expireAt": "1996-03-28T00:00:00Z", "price": 55, "purchaseAt": "1975-06-27T00:00:00Z", "trialPrice": 0}, {"currencyCode": "93IT3rN8KYwQNeuA", "currencyNamespace": "afjQI2iiICHuxscf", "currencyType": "REAL", "discountAmount": 40, "discountExpireAt": "1990-05-14T00:00:00Z", "discountPercentage": 80, "discountPurchaseAt": "1997-08-02T00:00:00Z", "expireAt": "1976-01-14T00:00:00Z", "price": 6, "purchaseAt": "1985-10-30T00:00:00Z", "trialPrice": 98}, {"currencyCode": "mj2Ssj3GIlz2KGQ6", "currencyNamespace": "v5RTm8A8ZgfvRFZh", "currencyType": "REAL", "discountAmount": 91, "discountExpireAt": "1971-12-26T00:00:00Z", "discountPercentage": 9, "discountPurchaseAt": "1995-07-28T00:00:00Z", "expireAt": "1992-01-30T00:00:00Z", "price": 100, "purchaseAt": "1978-11-29T00:00:00Z", "trialPrice": 37}], "O4NujfmoVj6NftQa": [{"currencyCode": "wBaTWS6pMKKItMsE", "currencyNamespace": "6Vxc31BlBC5mOLJH", "currencyType": "REAL", "discountAmount": 33, "discountExpireAt": "1985-09-25T00:00:00Z", "discountPercentage": 73, "discountPurchaseAt": "1985-03-05T00:00:00Z", "expireAt": "1994-03-20T00:00:00Z", "price": 42, "purchaseAt": "1991-10-08T00:00:00Z", "trialPrice": 68}, {"currencyCode": "Kkl2ug5lJ7kqnQvX", "currencyNamespace": "Z9A1RVTkB0RL7kKD", "currencyType": "VIRTUAL", "discountAmount": 30, "discountExpireAt": "1975-09-29T00:00:00Z", "discountPercentage": 15, "discountPurchaseAt": "1999-10-01T00:00:00Z", "expireAt": "1972-08-23T00:00:00Z", "price": 24, "purchaseAt": "1983-02-20T00:00:00Z", "trialPrice": 11}, {"currencyCode": "r8jSHMQOkq30vUkG", "currencyNamespace": "YaziLLeX26Kdd8Q5", "currencyType": "REAL", "discountAmount": 22, "discountExpireAt": "1977-07-21T00:00:00Z", "discountPercentage": 83, "discountPurchaseAt": "1998-12-14T00:00:00Z", "expireAt": "1997-03-14T00:00:00Z", "price": 73, "purchaseAt": "1998-06-27T00:00:00Z", "trialPrice": 83}], "TpCtoWXY5ImidAHs": [{"currencyCode": "ui5CZCj20iMBjPiI", "currencyNamespace": "l8laAKzh8IGXjaOg", "currencyType": "VIRTUAL", "discountAmount": 34, "discountExpireAt": "1999-06-02T00:00:00Z", "discountPercentage": 33, "discountPurchaseAt": "1991-01-26T00:00:00Z", "expireAt": "1987-09-03T00:00:00Z", "price": 89, "purchaseAt": "1988-07-18T00:00:00Z", "trialPrice": 85}, {"currencyCode": "bAxDewD7ZKYUbZuM", "currencyNamespace": "8AQlMrfTyJE4qMHu", "currencyType": "VIRTUAL", "discountAmount": 38, "discountExpireAt": "1987-07-02T00:00:00Z", "discountPercentage": 15, "discountPurchaseAt": "1986-02-16T00:00:00Z", "expireAt": "1999-05-01T00:00:00Z", "price": 86, "purchaseAt": "1997-07-02T00:00:00Z", "trialPrice": 90}, {"currencyCode": "62ncZfADJDTtIFcj", "currencyNamespace": "9GPkyRVrw9rEvB2X", "currencyType": "VIRTUAL", "discountAmount": 90, "discountExpireAt": "1974-03-31T00:00:00Z", "discountPercentage": 82, "discountPurchaseAt": "1990-03-13T00:00:00Z", "expireAt": "1997-05-13T00:00:00Z", "price": 15, "purchaseAt": "1985-08-27T00:00:00Z", "trialPrice": 80}]}, "saleConfig": {"currencyCode": "fUM8CKBC4Y2Znq5r", "price": 1}, "seasonType": "PASS", "sectionExclusive": false, "sellable": true, "sku": "SJgXFrA9ZyRFprrN", "stackable": true, "status": "INACTIVE", "tags": ["wSFTIRBOQQvkhg1T", "NVCh1h9rDvFCnLMx", "Ec8vIknLvX83mKlI"], "targetCurrencyCode": "ayJ61PpPivdDdChG", "targetNamespace": "Ol8LrkR24H1kKKqi", "thumbnailUrl": "WK3mDUQndC9di48Y", "useCount": 36}' \
    > test.out 2>&1
eval_tap $? 103 'CreateItem' test.out

#- 104 GetItemByAppId
samples/cli/sample-apps Platform getItemByAppId \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --storeId 'TbmjJaNiEo4bHU8j' \
    --appId 'yExN9ibsIy6vpoPi' \
    > test.out 2>&1
eval_tap $? 104 'GetItemByAppId' test.out

#- 105 QueryItems
samples/cli/sample-apps Platform queryItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --appType 'DLC' \
    --availableDate 'VD1LkSlxefHgRKcC' \
    --baseAppId 'Np2egMk9UdL33na5' \
    --categoryPath 'VEgbBjP4aaOY3KN0' \
    --features 'lS2VlKBlYasSZE5G' \
    --includeSubCategoryItem 'false' \
    --itemType 'SEASON' \
    --limit '9' \
    --offset '89' \
    --region 'hTZnczaLDNzOdSg1' \
    --sortBy '["createdAt:desc", "displayOrder", "createdAt:asc"]' \
    --storeId 'Ty2OrAGGgVG2dDe6' \
    --tags 'TJ88Hw6PyryU27eA' \
    --targetNamespace 'EL9H4MZP2I56Sxoe' \
    > test.out 2>&1
eval_tap $? 105 'QueryItems' test.out

#- 106 ListBasicItemsByFeatures
samples/cli/sample-apps Platform listBasicItemsByFeatures \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --features '["1oKq0AvBBuIxAsNO", "UwsX9LlXg76QxmDO", "wHNoJSFwEC1068yI"]' \
    > test.out 2>&1
eval_tap $? 106 'ListBasicItemsByFeatures' test.out

#- 107 GetItems
samples/cli/sample-apps Platform getItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'rGAnguMRFYiLuBk1' \
    --itemIds 'sYo2mYQ747MIyO2f' \
    > test.out 2>&1
eval_tap $? 107 'GetItems' test.out

#- 108 GetItemBySku
samples/cli/sample-apps Platform getItemBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'gwjBe7FlmxQw1kAN' \
    --sku 'jcekdWys9NbGZH0z' \
    > test.out 2>&1
eval_tap $? 108 'GetItemBySku' test.out

#- 109 GetLocaleItemBySku
samples/cli/sample-apps Platform getLocaleItemBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --language 'eifDopuJR9SHJn4q' \
    --populateBundle 'true' \
    --region 'RWPqnQ3wKHkcgPM4' \
    --storeId 'dWjunogUr4pcUwmb' \
    --sku 'iNfNJZOOmQRXLsYA' \
    > test.out 2>&1
eval_tap $? 109 'GetLocaleItemBySku' test.out

#- 110 GetEstimatedPrice
samples/cli/sample-apps Platform getEstimatedPrice \
    --namespace $AB_NAMESPACE \
    --platform 'baxMdeWLNCTifEJ2' \
    --region '8R8jyPIupR3oSyV4' \
    --storeId 'xtfLBAvQZ8A1prDM' \
    --itemIds 'SrmV6c3zs7OpCx7g' \
    --userId '2Nqqu1Dr4iEiIUXY' \
    > test.out 2>&1
eval_tap $? 110 'GetEstimatedPrice' test.out

#- 111 GetItemIdBySku
samples/cli/sample-apps Platform getItemIdBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --storeId '6i1kmT1SPJJaJH3m' \
    --sku '1xyb1PRcpBReI0hk' \
    > test.out 2>&1
eval_tap $? 111 'GetItemIdBySku' test.out

#- 112 GetBulkItemIdBySkus
samples/cli/sample-apps Platform getBulkItemIdBySkus \
    --namespace $AB_NAMESPACE \
    --sku '["t7uBth6eWHZiOK0r", "uRAtPVirrYfLWFLH", "EjwnAWOQ9ZXghuYx"]' \
    --storeId 'zczzSRheg2Q10GKb' \
    > test.out 2>&1
eval_tap $? 112 'GetBulkItemIdBySkus' test.out

#- 113 BulkGetLocaleItems
samples/cli/sample-apps Platform bulkGetLocaleItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --language 'QKVdNCOsbn5XStoe' \
    --region 'dAfLjiFfFOzRN5ok' \
    --storeId 'rhrlFo2EwF3IwD41' \
    --itemIds 'bFsncNY9wRi1WktV' \
    > test.out 2>&1
eval_tap $? 113 'BulkGetLocaleItems' test.out

#- 114 GetAvailablePredicateTypes
samples/cli/sample-apps Platform getAvailablePredicateTypes \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 114 'GetAvailablePredicateTypes' test.out

#- 115 ValidateItemPurchaseCondition
samples/cli/sample-apps Platform validateItemPurchaseCondition \
    --namespace $AB_NAMESPACE \
    --platform 'GVVWEuOxl3JoAXsL' \
    --userId 'wKNpxfDhf51uFCEL' \
    --body '{"itemIds": ["CkGPYAakenLWq2pR", "mlYQEUomlsAh5Bbs", "jsmw7DlwMaEfxEOY"]}' \
    > test.out 2>&1
eval_tap $? 115 'ValidateItemPurchaseCondition' test.out

#- 116 BulkUpdateRegionData
samples/cli/sample-apps Platform bulkUpdateRegionData \
    --namespace $AB_NAMESPACE \
    --storeId 'l3P7XSYIjQHN451K' \
    --body '{"changes": [{"itemIdentities": ["1XbP9KXN3aLwFLXW", "D6eCUTr47h2otKBy", "lF3kQqRAGoWQDOWL"], "itemIdentityType": "ITEM_SKU", "regionData": {"gPigxcxfFXni3A9L": [{"currencyCode": "LQoPevOvtO1ZVUlX", "currencyNamespace": "C0sxaxnXzKpKLJqm", "currencyType": "VIRTUAL", "discountAmount": 91, "discountExpireAt": "1980-10-30T00:00:00Z", "discountPercentage": 36, "discountPurchaseAt": "1995-10-26T00:00:00Z", "discountedPrice": 1, "expireAt": "1980-11-18T00:00:00Z", "price": 70, "purchaseAt": "1998-03-19T00:00:00Z", "trialPrice": 96}, {"currencyCode": "WJ04d9VWbTs2qXIG", "currencyNamespace": "E3CtBfDjtb1WwCHb", "currencyType": "VIRTUAL", "discountAmount": 12, "discountExpireAt": "1977-04-29T00:00:00Z", "discountPercentage": 44, "discountPurchaseAt": "1988-04-02T00:00:00Z", "discountedPrice": 55, "expireAt": "1989-04-12T00:00:00Z", "price": 18, "purchaseAt": "1991-06-13T00:00:00Z", "trialPrice": 15}, {"currencyCode": "Z0q0lO6SDlAne6Dd", "currencyNamespace": "2vxHyy99Kmd5TDJo", "currencyType": "REAL", "discountAmount": 47, "discountExpireAt": "1998-12-03T00:00:00Z", "discountPercentage": 39, "discountPurchaseAt": "1984-03-20T00:00:00Z", "discountedPrice": 30, "expireAt": "1996-04-25T00:00:00Z", "price": 27, "purchaseAt": "1985-08-08T00:00:00Z", "trialPrice": 6}], "cenjBJOMgWlCsur7": [{"currencyCode": "7dXjdBkAF5q9EysN", "currencyNamespace": "53g1JBGI3wZdQQ2Y", "currencyType": "VIRTUAL", "discountAmount": 48, "discountExpireAt": "1982-02-21T00:00:00Z", "discountPercentage": 66, "discountPurchaseAt": "1998-07-05T00:00:00Z", "discountedPrice": 42, "expireAt": "1987-03-23T00:00:00Z", "price": 1, "purchaseAt": "1985-02-25T00:00:00Z", "trialPrice": 56}, {"currencyCode": "UdTTWHeLlEjYvuyA", "currencyNamespace": "L9hs3xde76dtgkTE", "currencyType": "REAL", "discountAmount": 45, "discountExpireAt": "1987-01-08T00:00:00Z", "discountPercentage": 11, "discountPurchaseAt": "1988-06-24T00:00:00Z", "discountedPrice": 40, "expireAt": "1984-01-07T00:00:00Z", "price": 0, "purchaseAt": "1975-01-25T00:00:00Z", "trialPrice": 37}, {"currencyCode": "E9ByUUG67433VbTZ", "currencyNamespace": "x4kNuSvdGcKq3VsA", "currencyType": "REAL", "discountAmount": 80, "discountExpireAt": "1977-10-15T00:00:00Z", "discountPercentage": 7, "discountPurchaseAt": "1993-03-12T00:00:00Z", "discountedPrice": 44, "expireAt": "1972-01-02T00:00:00Z", "price": 67, "purchaseAt": "1978-04-23T00:00:00Z", "trialPrice": 43}], "6gtueO8lqqatGh6c": [{"currencyCode": "gb7kAYzokccnXl7U", "currencyNamespace": "gfpAtN8aP2N7nDFj", "currencyType": "VIRTUAL", "discountAmount": 8, "discountExpireAt": "1979-12-01T00:00:00Z", "discountPercentage": 98, "discountPurchaseAt": "1979-09-12T00:00:00Z", "discountedPrice": 28, "expireAt": "1979-05-17T00:00:00Z", "price": 23, "purchaseAt": "1996-08-09T00:00:00Z", "trialPrice": 67}, {"currencyCode": "txQiMrgndcR16xXO", "currencyNamespace": "ZKkBlAYOOe9TE4nr", "currencyType": "VIRTUAL", "discountAmount": 40, "discountExpireAt": "1997-06-10T00:00:00Z", "discountPercentage": 69, "discountPurchaseAt": "1975-01-04T00:00:00Z", "discountedPrice": 28, "expireAt": "1971-06-23T00:00:00Z", "price": 24, "purchaseAt": "1979-10-06T00:00:00Z", "trialPrice": 89}, {"currencyCode": "wIWcWXJwWAv4qyGm", "currencyNamespace": "VJ6iKEeCpwHmyXTy", "currencyType": "REAL", "discountAmount": 19, "discountExpireAt": "1986-12-09T00:00:00Z", "discountPercentage": 77, "discountPurchaseAt": "1994-11-01T00:00:00Z", "discountedPrice": 94, "expireAt": "1979-04-16T00:00:00Z", "price": 55, "purchaseAt": "1973-05-21T00:00:00Z", "trialPrice": 18}]}}, {"itemIdentities": ["lo3IxBjs5vgh4G8x", "MU2e536kCgT0lpIQ", "ui2n7wUO1rhsDGar"], "itemIdentityType": "ITEM_SKU", "regionData": {"rVLKnkuEk9tPaP4q": [{"currencyCode": "AlaHJd6VfYbCEXsM", "currencyNamespace": "bt67GAmndROWajAp", "currencyType": "REAL", "discountAmount": 54, "discountExpireAt": "1978-08-25T00:00:00Z", "discountPercentage": 2, "discountPurchaseAt": "1995-11-03T00:00:00Z", "discountedPrice": 83, "expireAt": "1974-08-16T00:00:00Z", "price": 15, "purchaseAt": "1977-11-09T00:00:00Z", "trialPrice": 23}, {"currencyCode": "qGT1usKVrDMr20Qa", "currencyNamespace": "gFnZpbkNCVXQgq0T", "currencyType": "VIRTUAL", "discountAmount": 34, "discountExpireAt": "1982-05-26T00:00:00Z", "discountPercentage": 10, "discountPurchaseAt": "1996-11-24T00:00:00Z", "discountedPrice": 22, "expireAt": "1994-03-30T00:00:00Z", "price": 32, "purchaseAt": "1974-05-06T00:00:00Z", "trialPrice": 27}, {"currencyCode": "ZI1CadVEo1V5cXw5", "currencyNamespace": "iet04x59QfJxu6WB", "currencyType": "VIRTUAL", "discountAmount": 73, "discountExpireAt": "1985-05-06T00:00:00Z", "discountPercentage": 28, "discountPurchaseAt": "1982-08-27T00:00:00Z", "discountedPrice": 56, "expireAt": "1997-09-04T00:00:00Z", "price": 0, "purchaseAt": "1995-09-16T00:00:00Z", "trialPrice": 96}], "CaoxNUtsEMeNI5tq": [{"currencyCode": "PcbLc1VrhFeXdt9Q", "currencyNamespace": "7MNOk2w66C0baqgS", "currencyType": "REAL", "discountAmount": 58, "discountExpireAt": "1995-11-30T00:00:00Z", "discountPercentage": 36, "discountPurchaseAt": "1987-10-03T00:00:00Z", "discountedPrice": 89, "expireAt": "1999-07-08T00:00:00Z", "price": 2, "purchaseAt": "1978-08-02T00:00:00Z", "trialPrice": 65}, {"currencyCode": "Pp0xo2fdBS0MKrdp", "currencyNamespace": "aDuQM6Dj2yZJf7s6", "currencyType": "REAL", "discountAmount": 53, "discountExpireAt": "1997-03-09T00:00:00Z", "discountPercentage": 84, "discountPurchaseAt": "1999-03-24T00:00:00Z", "discountedPrice": 1, "expireAt": "1997-10-12T00:00:00Z", "price": 57, "purchaseAt": "1989-02-18T00:00:00Z", "trialPrice": 19}, {"currencyCode": "OQL6O6dciAcizik5", "currencyNamespace": "k69klYVqfFjLeQfm", "currencyType": "REAL", "discountAmount": 69, "discountExpireAt": "1996-10-23T00:00:00Z", "discountPercentage": 65, "discountPurchaseAt": "1982-06-22T00:00:00Z", "discountedPrice": 71, "expireAt": "1975-09-13T00:00:00Z", "price": 7, "purchaseAt": "1998-12-02T00:00:00Z", "trialPrice": 56}], "xXdaM3rTmUDx5LLp": [{"currencyCode": "dArwYCAgPKIsE92A", "currencyNamespace": "NOmtWkoMgkZCsAER", "currencyType": "REAL", "discountAmount": 17, "discountExpireAt": "1985-04-03T00:00:00Z", "discountPercentage": 65, "discountPurchaseAt": "1983-01-29T00:00:00Z", "discountedPrice": 89, "expireAt": "1989-05-25T00:00:00Z", "price": 83, "purchaseAt": "1975-07-12T00:00:00Z", "trialPrice": 38}, {"currencyCode": "gd3D9jIlsQAVYd5x", "currencyNamespace": "CO9TSprzElVpSZhQ", "currencyType": "VIRTUAL", "discountAmount": 16, "discountExpireAt": "1989-08-06T00:00:00Z", "discountPercentage": 35, "discountPurchaseAt": "1996-09-24T00:00:00Z", "discountedPrice": 40, "expireAt": "1975-09-29T00:00:00Z", "price": 51, "purchaseAt": "1984-08-10T00:00:00Z", "trialPrice": 21}, {"currencyCode": "Wz2tdL1TzUZyqyKc", "currencyNamespace": "iYShhCSO6OmHpK6R", "currencyType": "REAL", "discountAmount": 72, "discountExpireAt": "1987-10-14T00:00:00Z", "discountPercentage": 78, "discountPurchaseAt": "1973-10-09T00:00:00Z", "discountedPrice": 8, "expireAt": "1990-03-24T00:00:00Z", "price": 6, "purchaseAt": "1997-09-20T00:00:00Z", "trialPrice": 57}]}}, {"itemIdentities": ["JnxhXMRMIFu8PAWz", "jBapCb7v0faxskP4", "EaJA6DTJryxfp8AN"], "itemIdentityType": "ITEM_ID", "regionData": {"DZU0VnEgxaA4hcR3": [{"currencyCode": "K5bOej2ryBArR90i", "currencyNamespace": "ORmarLkBLiELsDO3", "currencyType": "REAL", "discountAmount": 4, "discountExpireAt": "1985-04-03T00:00:00Z", "discountPercentage": 84, "discountPurchaseAt": "1993-10-27T00:00:00Z", "discountedPrice": 64, "expireAt": "1986-06-02T00:00:00Z", "price": 72, "purchaseAt": "1978-04-20T00:00:00Z", "trialPrice": 84}, {"currencyCode": "QX4eKpPvhTEeojAE", "currencyNamespace": "1OQizaP6IDdawJBp", "currencyType": "REAL", "discountAmount": 97, "discountExpireAt": "1990-02-14T00:00:00Z", "discountPercentage": 44, "discountPurchaseAt": "1997-10-25T00:00:00Z", "discountedPrice": 35, "expireAt": "1976-06-19T00:00:00Z", "price": 94, "purchaseAt": "1998-01-05T00:00:00Z", "trialPrice": 75}, {"currencyCode": "tk8owdaUxNTJ0qew", "currencyNamespace": "D3PpyPNGcADbujlr", "currencyType": "VIRTUAL", "discountAmount": 76, "discountExpireAt": "1994-10-23T00:00:00Z", "discountPercentage": 48, "discountPurchaseAt": "1992-04-23T00:00:00Z", "discountedPrice": 65, "expireAt": "1992-07-18T00:00:00Z", "price": 92, "purchaseAt": "1974-04-22T00:00:00Z", "trialPrice": 56}], "oiv7KWbEI9y5yGpS": [{"currencyCode": "6FFg28YRQWM4l471", "currencyNamespace": "w8YFcSETUoCFGlA6", "currencyType": "VIRTUAL", "discountAmount": 85, "discountExpireAt": "1979-07-08T00:00:00Z", "discountPercentage": 36, "discountPurchaseAt": "1990-02-20T00:00:00Z", "discountedPrice": 62, "expireAt": "1972-10-09T00:00:00Z", "price": 45, "purchaseAt": "1998-04-09T00:00:00Z", "trialPrice": 27}, {"currencyCode": "1LgX9PEDyHO29l2I", "currencyNamespace": "nodB40gWmBm9awto", "currencyType": "REAL", "discountAmount": 39, "discountExpireAt": "1996-03-08T00:00:00Z", "discountPercentage": 12, "discountPurchaseAt": "1982-08-07T00:00:00Z", "discountedPrice": 77, "expireAt": "1984-11-20T00:00:00Z", "price": 94, "purchaseAt": "1982-12-15T00:00:00Z", "trialPrice": 66}, {"currencyCode": "2hxsp4LInhoDBgoI", "currencyNamespace": "xyMLEDm76x2uxrKN", "currencyType": "VIRTUAL", "discountAmount": 23, "discountExpireAt": "1997-03-16T00:00:00Z", "discountPercentage": 53, "discountPurchaseAt": "1985-05-14T00:00:00Z", "discountedPrice": 15, "expireAt": "1981-05-20T00:00:00Z", "price": 41, "purchaseAt": "1988-06-06T00:00:00Z", "trialPrice": 59}], "kjSlGORNUEIDGEzc": [{"currencyCode": "Y2ULxEm5HeuGGSsU", "currencyNamespace": "mPk0j5BlVadbdNCX", "currencyType": "REAL", "discountAmount": 80, "discountExpireAt": "1992-04-04T00:00:00Z", "discountPercentage": 72, "discountPurchaseAt": "1990-01-18T00:00:00Z", "discountedPrice": 77, "expireAt": "1975-01-25T00:00:00Z", "price": 26, "purchaseAt": "1988-08-02T00:00:00Z", "trialPrice": 71}, {"currencyCode": "6K75FayNWAGrw38a", "currencyNamespace": "yWf18JBIsZvQrnn8", "currencyType": "VIRTUAL", "discountAmount": 42, "discountExpireAt": "1986-02-07T00:00:00Z", "discountPercentage": 70, "discountPurchaseAt": "1986-10-09T00:00:00Z", "discountedPrice": 40, "expireAt": "1972-03-07T00:00:00Z", "price": 21, "purchaseAt": "1991-07-04T00:00:00Z", "trialPrice": 15}, {"currencyCode": "qo1iP1fORYYE8oI3", "currencyNamespace": "CTCIMirptGgJZplE", "currencyType": "REAL", "discountAmount": 50, "discountExpireAt": "1998-01-08T00:00:00Z", "discountPercentage": 1, "discountPurchaseAt": "1996-04-24T00:00:00Z", "discountedPrice": 18, "expireAt": "1992-01-12T00:00:00Z", "price": 77, "purchaseAt": "1984-08-27T00:00:00Z", "trialPrice": 38}]}}]}' \
    > test.out 2>&1
eval_tap $? 116 'BulkUpdateRegionData' test.out

#- 117 SearchItems
samples/cli/sample-apps Platform searchItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --itemType 'APP' \
    --limit '27' \
    --offset '13' \
    --sortBy 'zlVhhWPwUQShCoT2' \
    --storeId 'KNMv5QCt938lLxw6' \
    --keyword 'zhVM4XMoIJ4iWMWj' \
    --language 'QvZYfD00VJYV3pkx' \
    > test.out 2>&1
eval_tap $? 117 'SearchItems' test.out

#- 118 QueryUncategorizedItems
samples/cli/sample-apps Platform queryUncategorizedItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --limit '73' \
    --offset '20' \
    --sortBy '["createdAt:desc", "name", "displayOrder:desc"]' \
    --storeId '4praIi7IMyoLTnwx' \
    > test.out 2>&1
eval_tap $? 118 'QueryUncategorizedItems' test.out

#- 119 GetItem
samples/cli/sample-apps Platform getItem \
    --itemId 'XUWp9DvkgvtObZno' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --storeId 'HuvEdIN0KWotej1G' \
    > test.out 2>&1
eval_tap $? 119 'GetItem' test.out

#- 120 UpdateItem
samples/cli/sample-apps Platform updateItem \
    --itemId 'XQlkmSxVBOOIc2Kd' \
    --namespace $AB_NAMESPACE \
    --storeId 'xlhNHSxcRRRssug3' \
    --body '{"appId": "G5aXciKDes9p8XxR", "appType": "SOFTWARE", "baseAppId": "7PyrOBkDARAHK83q", "boothName": "Y4H7SJxcxTK3jErr", "categoryPath": "XP7jyoYemTp6ywkC", "clazz": "9SPy6JFnp2uEkzk0", "displayOrder": 49, "entitlementType": "CONSUMABLE", "ext": {"IYe7f5ZY57ROjB8k": {}, "ersHZMt7bVdSj25e": {}, "n7akxslL9r6b9hrr": {}}, "features": ["V7v87YaKYEtlU9oj", "ouDef26g5fKvJZXo", "HJ48Emt4oUgX6ywH"], "flexible": true, "images": [{"as": "vjT3eOl4TJnWPMPQ", "caption": "iaFCLdaMNuJvzDWJ", "height": 12, "imageUrl": "gTz3gQfa2dqTtoAz", "smallImageUrl": "CNsX5lggGldW1Ntv", "width": 81}, {"as": "VifQ2Sd56bPOxpuv", "caption": "xy5Ty7DBb4noBboX", "height": 22, "imageUrl": "U98UDGQzw5S4HGKS", "smallImageUrl": "zXkiXIehEGz2KZM6", "width": 36}, {"as": "zQkpaGZuExJ01iHZ", "caption": "vdXho7QUhW65TwYE", "height": 37, "imageUrl": "iRRZDuCLNBsJELHk", "smallImageUrl": "lZACsTXadRaxN193", "width": 66}], "inventoryConfig": {"customAttributes": {"ED9TvjIz3HqyDg5C": {}, "jEWIbYNVD8cSAU6k": {}, "t8vjX4kp9A8q4XCb": {}}, "serverCustomAttributes": {"vtFdb4IPHRvrEliP": {}, "PeSmcTnC8XWsdMt6": {}, "nY1atARJKOOahYAW": {}}, "slotUsed": 42}, "itemIds": ["EAKVI0nROJZrEgNm", "eBX7uLqKKGkEc0eu", "J0zbms2yhiVJBNLm"], "itemQty": {"c4NexyO4UbLBxqKN": 28, "Dlrb6oCQhvWwZfZT": 42, "wXXj4mRsasxuqZW9": 29}, "itemType": "COINS", "listable": true, "localizations": {"zduj8vG2DSyJbUwU": {"description": "FUMPxdCzfyw9kQ1p", "localExt": {"yAL7LGy0akxh5GXG": {}, "PedNoxtLduseu2PM": {}, "lT6es8KEd4ujZu1J": {}}, "longDescription": "qhnJbnSqlYBgKqZb", "title": "7U3thgp16khnVQy9"}, "UnJxKB8Xk9B6q7wj": {"description": "rBp1o6I63B9i27sZ", "localExt": {"GKbrrfHFCrRMBvB3": {}, "no0U1BZ0fX6fd7Ko": {}, "QLdmiNhmmwZTNFmU": {}}, "longDescription": "FgGysqQXi7yVFnyJ", "title": "H5VKjGT1WuVi7dPW"}, "ayRotmxEH8JpNKFG": {"description": "lwKBuBhTVihvQM0y", "localExt": {"NerJCsRQpKz5ASmz": {}, "rJ1ED1fUZJ6FXeQf": {}, "Menh7gN7ypXWES3U": {}}, "longDescription": "cPfd9QYH9dkjob85", "title": "P3Sz8mA0izbm8Tlr"}}, "lootBoxConfig": {"rewardCount": 0, "rewards": [{"lootBoxItems": [{"count": 82, "duration": 9, "endDate": "1995-10-28T00:00:00Z", "itemId": "hRUHzU2DgTZPnauj", "itemSku": "l2E3nBPHFpqX5Ggl", "itemType": "xLvgsOMPLalWwFQ2"}, {"count": 35, "duration": 93, "endDate": "1971-05-17T00:00:00Z", "itemId": "0Tp9PqLG4xLto2xB", "itemSku": "FAAQnjgWBSUSGXk8", "itemType": "rCFimb8bDsQETNNZ"}, {"count": 4, "duration": 65, "endDate": "1972-06-06T00:00:00Z", "itemId": "SgXUHtkdFc6ocFiw", "itemSku": "NL8hlmcKRYWxdSOj", "itemType": "kn3Mlgo5aiTOLEqc"}], "name": "nMZTmIkCbVzuyBQu", "odds": 0.789866261408379, "type": "PROBABILITY_GROUP", "weight": 97}, {"lootBoxItems": [{"count": 5, "duration": 15, "endDate": "1988-03-23T00:00:00Z", "itemId": "5QqU8EuGQruwRrSu", "itemSku": "dnZTMQh2IDKJKqAy", "itemType": "d8Us7sgaAcgo6nQc"}, {"count": 3, "duration": 55, "endDate": "1979-02-21T00:00:00Z", "itemId": "FMEhH2NbMg8mtU81", "itemSku": "p128rkJbzKTEvjvr", "itemType": "ODycak3XIpp6IqFL"}, {"count": 30, "duration": 62, "endDate": "1986-09-06T00:00:00Z", "itemId": "2Pa4ubeiir617em1", "itemSku": "WygKMzKxDfhgwPiw", "itemType": "cfhzaVwfbU3i9DWR"}], "name": "AJ2oBf7QojSE87DM", "odds": 0.8545889102492729, "type": "PROBABILITY_GROUP", "weight": 76}, {"lootBoxItems": [{"count": 52, "duration": 57, "endDate": "1978-05-24T00:00:00Z", "itemId": "lkRZTjGQrVVL3zZh", "itemSku": "LCAZArhIzfEJkkdf", "itemType": "5aR6mcTM3LeeBZeo"}, {"count": 93, "duration": 100, "endDate": "1998-12-24T00:00:00Z", "itemId": "jhlSixCAdNle5jUs", "itemSku": "ZgGgmqruF4WxDiYU", "itemType": "hnQeULV1YFa9b64E"}, {"count": 23, "duration": 33, "endDate": "1978-07-05T00:00:00Z", "itemId": "CuiM8u8rfKeU4Etk", "itemSku": "dwbaGSFRxHJEeZks", "itemType": "a0EJqgHsvVfW3PlF"}], "name": "7LWpjxSJ2CV5WShV", "odds": 0.7630404107824958, "type": "PROBABILITY_GROUP", "weight": 82}], "rollFunction": "CUSTOM"}, "maxCount": 20, "maxCountPerUser": 51, "name": "rL7zDKEKuYZTJS9U", "optionBoxConfig": {"boxItems": [{"count": 76, "duration": 94, "endDate": "1977-06-21T00:00:00Z", "itemId": "4CtDjy3OoO393V7u", "itemSku": "dBhyXn98cysF0UeA", "itemType": "etqY5rlleldHml43"}, {"count": 2, "duration": 63, "endDate": "1989-04-21T00:00:00Z", "itemId": "9Dl89rMrRX1OJxhT", "itemSku": "CxqYorvdt3wpTeUZ", "itemType": "Nebfb4p6Yb0QCmBx"}, {"count": 40, "duration": 16, "endDate": "1978-12-15T00:00:00Z", "itemId": "0nC1HxjxLoYZ7ujZ", "itemSku": "MJ9S0jmcc1BG2sow", "itemType": "zcV7nPxhNNzKtiCr"}]}, "purchasable": false, "recurring": {"cycle": "QUARTERLY", "fixedFreeDays": 97, "fixedTrialCycles": 76, "graceDays": 31}, "regionData": {"8s84XwPgI9KiuiUA": [{"currencyCode": "YvApMU96idyPziVV", "currencyNamespace": "CkMJQPvEbGVegdnk", "currencyType": "VIRTUAL", "discountAmount": 51, "discountExpireAt": "1993-09-12T00:00:00Z", "discountPercentage": 33, "discountPurchaseAt": "1995-05-24T00:00:00Z", "expireAt": "1982-09-04T00:00:00Z", "price": 8, "purchaseAt": "1976-12-22T00:00:00Z", "trialPrice": 61}, {"currencyCode": "XFSCvOTtXa2sZaiq", "currencyNamespace": "vfUZt25mFOMf31Fx", "currencyType": "VIRTUAL", "discountAmount": 40, "discountExpireAt": "1994-09-01T00:00:00Z", "discountPercentage": 41, "discountPurchaseAt": "1988-06-17T00:00:00Z", "expireAt": "1994-10-09T00:00:00Z", "price": 36, "purchaseAt": "1990-08-17T00:00:00Z", "trialPrice": 73}, {"currencyCode": "3zJTUgEANcyL3ObU", "currencyNamespace": "J3vi2wB3akdTxIsx", "currencyType": "REAL", "discountAmount": 55, "discountExpireAt": "1995-03-22T00:00:00Z", "discountPercentage": 55, "discountPurchaseAt": "1998-04-14T00:00:00Z", "expireAt": "1982-11-19T00:00:00Z", "price": 29, "purchaseAt": "1988-09-04T00:00:00Z", "trialPrice": 32}], "VZDi0ePAfgIcmpBH": [{"currencyCode": "Rnz4Phmkt08wXWAE", "currencyNamespace": "5iWUccsZaYCeYKbC", "currencyType": "VIRTUAL", "discountAmount": 74, "discountExpireAt": "1992-01-12T00:00:00Z", "discountPercentage": 1, "discountPurchaseAt": "1993-12-15T00:00:00Z", "expireAt": "1986-06-17T00:00:00Z", "price": 80, "purchaseAt": "1997-03-26T00:00:00Z", "trialPrice": 36}, {"currencyCode": "XYsEGnGTVfLrjbgS", "currencyNamespace": "XSFMGKdjboddBTUD", "currencyType": "VIRTUAL", "discountAmount": 12, "discountExpireAt": "1990-08-24T00:00:00Z", "discountPercentage": 93, "discountPurchaseAt": "1990-03-02T00:00:00Z", "expireAt": "1980-09-15T00:00:00Z", "price": 10, "purchaseAt": "1987-02-05T00:00:00Z", "trialPrice": 80}, {"currencyCode": "4YLVWhGLAsZYoxJ7", "currencyNamespace": "pWXtTURYA8fe3uLj", "currencyType": "VIRTUAL", "discountAmount": 57, "discountExpireAt": "1993-01-02T00:00:00Z", "discountPercentage": 4, "discountPurchaseAt": "1991-10-17T00:00:00Z", "expireAt": "1987-03-17T00:00:00Z", "price": 65, "purchaseAt": "1974-03-26T00:00:00Z", "trialPrice": 99}], "WkIU0A2NOk01gLXT": [{"currencyCode": "hfoKbJGd6WH7QQ8g", "currencyNamespace": "ngcCCP0ISVU8PyW4", "currencyType": "REAL", "discountAmount": 1, "discountExpireAt": "1999-07-13T00:00:00Z", "discountPercentage": 76, "discountPurchaseAt": "1977-06-20T00:00:00Z", "expireAt": "1996-05-15T00:00:00Z", "price": 15, "purchaseAt": "1997-06-23T00:00:00Z", "trialPrice": 41}, {"currencyCode": "4EopRtEDFxfXA3ov", "currencyNamespace": "RPh72EXAqb22Fb6j", "currencyType": "REAL", "discountAmount": 48, "discountExpireAt": "1982-10-10T00:00:00Z", "discountPercentage": 28, "discountPurchaseAt": "1991-07-03T00:00:00Z", "expireAt": "1988-01-25T00:00:00Z", "price": 17, "purchaseAt": "1988-07-29T00:00:00Z", "trialPrice": 80}, {"currencyCode": "js2KUITAk8tvzGdM", "currencyNamespace": "BNpxuT9A2sDVeN3t", "currencyType": "REAL", "discountAmount": 72, "discountExpireAt": "1983-02-01T00:00:00Z", "discountPercentage": 73, "discountPurchaseAt": "1999-06-11T00:00:00Z", "expireAt": "1992-11-09T00:00:00Z", "price": 99, "purchaseAt": "1998-02-04T00:00:00Z", "trialPrice": 67}]}, "saleConfig": {"currencyCode": "V6uadSWnUM4UIBTF", "price": 81}, "seasonType": "TIER", "sectionExclusive": false, "sellable": true, "sku": "OQriOFx6raT2e7BO", "stackable": true, "status": "ACTIVE", "tags": ["eaDiYkp6ujoHjThY", "w11q142paMljfaii", "5wIQfjUJHg0iBLRG"], "targetCurrencyCode": "tU1R1uKoz8WGRQUB", "targetNamespace": "SWlrM2N8uipxZ0DD", "thumbnailUrl": "1h6M6Qv24kqD93Jy", "useCount": 10}' \
    > test.out 2>&1
eval_tap $? 120 'UpdateItem' test.out

#- 121 DeleteItem
samples/cli/sample-apps Platform deleteItem \
    --itemId 'V8bnUWVQ6m822UJt' \
    --namespace $AB_NAMESPACE \
    --force 'false' \
    --storeId 'sHYTfQ0i7ZBgqdux' \
    > test.out 2>&1
eval_tap $? 121 'DeleteItem' test.out

#- 122 AcquireItem
samples/cli/sample-apps Platform acquireItem \
    --itemId 'DCnA4P9FgDi7qKOY' \
    --namespace $AB_NAMESPACE \
    --body '{"count": 75, "orderNo": "CHGku0EKiUdRdjOW"}' \
    > test.out 2>&1
eval_tap $? 122 'AcquireItem' test.out

#- 123 GetApp
samples/cli/sample-apps Platform getApp \
    --itemId '7IBeCPkJLpKgaJQ1' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --storeId 'rK0qPbOToDfFnMhw' \
    > test.out 2>&1
eval_tap $? 123 'GetApp' test.out

#- 124 UpdateApp
samples/cli/sample-apps Platform updateApp \
    --itemId 'PtFnkoqXp5nUDEq6' \
    --namespace $AB_NAMESPACE \
    --storeId 'cmlUx4Ckw4y9u2h4' \
    --body '{"carousel": [{"alt": "6PKrhWQpoYArWRM3", "previewUrl": "ApCl6bAmigzJS2OK", "thumbnailUrl": "QVsvy8L6XbFf3z1U", "type": "video", "url": "VrVGzv5X2YhD4RuT", "videoSource": "youtube"}, {"alt": "6XiVmERiPxBOSWs6", "previewUrl": "gTz7ZPiDYmzpAblW", "thumbnailUrl": "T7ApRjRZHbpRPm2c", "type": "video", "url": "QsgPvqxQj96X7cNW", "videoSource": "vimeo"}, {"alt": "SOUagDx1hv2DClig", "previewUrl": "acyMPbO8jjjxV86j", "thumbnailUrl": "4EyeB2WLEY6mCVvp", "type": "video", "url": "R1tDqWYbXzS7aSzV", "videoSource": "youtube"}], "developer": "BTIzkkBVnqeJmAnE", "forumUrl": "b6H69rSMUqALcfHh", "genres": ["Adventure", "Adventure", "Action"], "localizations": {"LyOLGmCl2jihAiQ2": {"announcement": "yYi8nqmmhxpC0VZg", "slogan": "cvVA73hcXP01duiD"}, "Qpue1w6KEn8hAS66": {"announcement": "5hmDpzL56sfXBwbI", "slogan": "7I8rZC0aIyfUcU91"}, "Mjhm3xJgZrM3jOmH": {"announcement": "jCfgiouQDwCNHN6O", "slogan": "ukrVNUbu9dOdYvQ0"}}, "platformRequirements": {"gDDZBpvL9mJZN9Dd": [{"additionals": "fOWeM8jOebAyiL9q", "directXVersion": "9eTDh8XDWEwn0D9b", "diskSpace": "hez4Irh6PE4Mztx5", "graphics": "DDGsLEkRoAooPd0p", "label": "T1dDmNssPes2spGs", "osVersion": "F11ZnxXMrNv5LKux", "processor": "SdK590e19LFD0ihx", "ram": "Et559PFZyLjLamFC", "soundCard": "R0ExpHqMc0mT0QbW"}, {"additionals": "4voNmSrcXVsxXAqM", "directXVersion": "FaH8TdtyPO9YuvNU", "diskSpace": "gJxajMn5aFbbDmd1", "graphics": "quVPTDH3jzSTfV0v", "label": "zOJyCEH07rMZeXgd", "osVersion": "RYa9zJ5wBx4a2Szo", "processor": "nbn7qpIOnTSF454f", "ram": "3ElIefmRsX5HkRbP", "soundCard": "sfbFloYqjwSeFP6W"}, {"additionals": "xx9umbBGnmJ7tLxQ", "directXVersion": "FENPE0p8sSI4cfIm", "diskSpace": "rXQPjchu6vegCFQ2", "graphics": "JZRETUjGqJXRCl5R", "label": "EIze0GpXNRaQyPOL", "osVersion": "UzgAvFAThpqu3UnY", "processor": "lvdpZ37PwbRG50wP", "ram": "Q3vyDpWd3mvdEvQU", "soundCard": "mMlStAnQVeVUh970"}], "EIZuaG9bnYg1qWhe": [{"additionals": "mI64jSbVekrm3e0O", "directXVersion": "D3IMhMo4wNtVQUtt", "diskSpace": "lpzr1VoeLW9qE5e6", "graphics": "SdRUlJV62ARmVKGw", "label": "pTyd7b4ZYKzYcuTl", "osVersion": "9IUXWsRPLs7bT4vC", "processor": "5wgbnVlYOeXUS22X", "ram": "WYuzzmME49z0Htuv", "soundCard": "KnNSMNk6xOk0fETE"}, {"additionals": "qhtyUbZGmm5v9fvE", "directXVersion": "U7oQ29q9BmwRxQ7Z", "diskSpace": "hNO8cDE7dHgCJzwC", "graphics": "iN6qS8fkcNloOBcu", "label": "wm84RmBvWLLHDkFE", "osVersion": "Qkbg9bk9aC2KdA9q", "processor": "DxzCRKBhYrWPZz0N", "ram": "oDz7Y5pOcW5MBNf5", "soundCard": "bwf1p1lLeTCwVSQ7"}, {"additionals": "IeABt5VybsnPF4O2", "directXVersion": "LsLQ4xtNpRVvBLDB", "diskSpace": "VwcOJVpR4iyQUqVH", "graphics": "ZdJQt5iNSk2wfTYj", "label": "jPHjCNvoO0MM2m1k", "osVersion": "Z9rfWEvXATRj2uhg", "processor": "hk1Y7fHsyVg8SzFX", "ram": "GvycM0qgHbB7WDMn", "soundCard": "OSYXfm8bVtg88L7k"}], "FidK4EGzdzJ4CgJo": [{"additionals": "WL0MxI8JdXzmoEu1", "directXVersion": "ncYdEBTKSITGhFOU", "diskSpace": "eu5Vwwd07TNTPqhv", "graphics": "QZxaaun60CTCkoG9", "label": "TIatlRyUZFxxtkvL", "osVersion": "csmvSb2ytR8xPI5r", "processor": "xOQonyd0zbYzU4dH", "ram": "KDFm4HfZYr5hkTk1", "soundCard": "aRg5iA4GVY5I5BGW"}, {"additionals": "FlkEo3ZNgc6CoANI", "directXVersion": "jWdYiqUesh1J8Ase", "diskSpace": "ywLjLcXh4gmqHS2V", "graphics": "EHy1jt3e8hBTi1GF", "label": "VPShW4CZFi0K0u9T", "osVersion": "Z2or2irQXsFKuP49", "processor": "EGYGPCLJmOtQrt1I", "ram": "Pxt10ceAg8fBGinu", "soundCard": "c3F2pKLROu8okk5h"}, {"additionals": "V0tEoaWld6HhaP1y", "directXVersion": "zCRfUKhULM2uML5f", "diskSpace": "PQZ9SJpBr77T93wP", "graphics": "WXfSzWhnaDWQHlcT", "label": "wcInFhcynsbWJIic", "osVersion": "TkGCdODe8SNdeNep", "processor": "OVtpUCq2ldN6Tuk1", "ram": "LpKACehis30kGco3", "soundCard": "zfpjBSCJXIcfP2Mx"}]}, "platforms": ["Windows", "IOS", "Linux"], "players": ["Multi", "MMO", "MMO"], "primaryGenre": "Action", "publisher": "hVpSx7cG91BZWfVt", "releaseDate": "1994-03-19T00:00:00Z", "websiteUrl": "vfd2r2XTNvM2Z3Fj"}' \
    > test.out 2>&1
eval_tap $? 124 'UpdateApp' test.out

#- 125 DisableItem
samples/cli/sample-apps Platform disableItem \
    --itemId 'valD1U1pcKpZuCyl' \
    --namespace $AB_NAMESPACE \
    --storeId 'VmhyysghOgsBOMKP' \
    > test.out 2>&1
eval_tap $? 125 'DisableItem' test.out

#- 126 GetItemDynamicData
samples/cli/sample-apps Platform getItemDynamicData \
    --itemId 'H5xm3uN8ssLF2Iy8' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 126 'GetItemDynamicData' test.out

#- 127 EnableItem
samples/cli/sample-apps Platform enableItem \
    --itemId 'ug4azUbk2Amn82LN' \
    --namespace $AB_NAMESPACE \
    --storeId '3iNQroR8blmtKeI0' \
    > test.out 2>&1
eval_tap $? 127 'EnableItem' test.out

#- 128 FeatureItem
samples/cli/sample-apps Platform featureItem \
    --feature 'bQbRNG0MUxwwI9ZC' \
    --itemId 'ReGps0XFNC8ARohr' \
    --namespace $AB_NAMESPACE \
    --storeId 'Ahukj33aLzOig8kz' \
    > test.out 2>&1
eval_tap $? 128 'FeatureItem' test.out

#- 129 DefeatureItem
samples/cli/sample-apps Platform defeatureItem \
    --feature 'UF2OTeEEXH4O1v3s' \
    --itemId 'kyEhzBFiQGmpcXuB' \
    --namespace $AB_NAMESPACE \
    --storeId 'Kf8dm1GjxV9xUK1T' \
    > test.out 2>&1
eval_tap $? 129 'DefeatureItem' test.out

#- 130 GetLocaleItem
samples/cli/sample-apps Platform getLocaleItem \
    --itemId 'yRIAiW1vlO4miHB6' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --language 'BMbCJ9SMZxIOga8m' \
    --populateBundle 'false' \
    --region 'xhsA15SHihxqcAbp' \
    --storeId 'OWGeqyDKzcGbgPBl' \
    > test.out 2>&1
eval_tap $? 130 'GetLocaleItem' test.out

#- 131 UpdateItemPurchaseCondition
samples/cli/sample-apps Platform updateItemPurchaseCondition \
    --itemId 'D9EGMeWrsieUmnEi' \
    --namespace $AB_NAMESPACE \
    --storeId '5vvY06jPdcmEdOsp' \
    --body '{"purchaseCondition": {"conditionGroups": [{"operator": "or", "predicates": [{"anyOf": 32, "comparison": "includes", "name": "SIf0EPrDcWTaO2jH", "predicateType": "SeasonPassPredicate", "value": "YYp49KQy0jSWNQyk", "values": ["2C7F8elxreq91XDc", "JvEn8FKQbVAQdJTd", "NUB20G9WiSHh5lnv"]}, {"anyOf": 7, "comparison": "isLessThanOrEqual", "name": "JVucztLTWiKGK6iK", "predicateType": "SeasonPassPredicate", "value": "sVDUiR75nMSNazCN", "values": ["8Ir31duvdxHfPmGD", "UmJMg2k6MWOXgXx5", "O2B6Mi8PBAn6NNG0"]}, {"anyOf": 86, "comparison": "isLessThan", "name": "0WBUqxZKY4XAx0Mm", "predicateType": "EntitlementPredicate", "value": "KJbowDOeEwAggqMl", "values": ["sHU1Ya7WMGW1A1BP", "NDAis6xhsZ6mCDvo", "VpxUmIKaMukgKhjb"]}]}, {"operator": "and", "predicates": [{"anyOf": 92, "comparison": "excludes", "name": "FA4q2RKXzF1E6VW6", "predicateType": "SeasonTierPredicate", "value": "rIf5h9LWYOjjLbWV", "values": ["vkWsT7vqGqFJ2xlc", "tAFpDVesN19W6AzO", "Poyzv3MwUVp84zd9"]}, {"anyOf": 62, "comparison": "excludes", "name": "k8XTJVBd7Q0jXcfe", "predicateType": "SeasonTierPredicate", "value": "E1M5XgxeyMgMM6Gn", "values": ["PfAa619OCEAJmSnx", "BbV7vQml2YeZKfmB", "YpmiiQP6QlY74qJu"]}, {"anyOf": 40, "comparison": "isGreaterThan", "name": "MjPl3ogLMdyELN7m", "predicateType": "EntitlementPredicate", "value": "h5myavrzHxL1cgn9", "values": ["zUMCy5khMkdXV9Hp", "JG7uMozMgD0Aeyei", "kPA8v6SnGhg5MaEy"]}]}, {"operator": "and", "predicates": [{"anyOf": 76, "comparison": "isNot", "name": "TX8cQP6Dzx1Ee5Ch", "predicateType": "SeasonPassPredicate", "value": "YyzWiTkFphStZAkC", "values": ["brcG0XAb04Y2ceiN", "i5E9t8tsYq2AZPKK", "U9xiE9e4U0jTFazC"]}, {"anyOf": 22, "comparison": "includes", "name": "jsTW4fIg5AwLlhcL", "predicateType": "SeasonPassPredicate", "value": "KSuC4yJTo6I9ZFRP", "values": ["Sz01KJvziYBZeSSE", "dPFusJHT6un34aDS", "ti4FjgN4HxkUlybg"]}, {"anyOf": 18, "comparison": "excludes", "name": "BoNsmgMlFKrQMaRN", "predicateType": "SeasonPassPredicate", "value": "6ybIkINcLSHylwQA", "values": ["YGFbTIKLo7vGigX9", "aml21cyqe45ndwR0", "uVD1YtuMEW0vbNMm"]}]}]}}' \
    > test.out 2>&1
eval_tap $? 131 'UpdateItemPurchaseCondition' test.out

#- 132 ReturnItem
samples/cli/sample-apps Platform returnItem \
    --itemId 'CG8RX6XqrgTe0b2j' \
    --namespace $AB_NAMESPACE \
    --body '{"orderNo": "CIgFGq1TSSWx4WOP"}' \
    > test.out 2>&1
eval_tap $? 132 'ReturnItem' test.out

#- 133 QueryKeyGroups
samples/cli/sample-apps Platform queryKeyGroups \
    --namespace $AB_NAMESPACE \
    --limit '25' \
    --name 'VGxiM4JhWF3hD9bK' \
    --offset '39' \
    --tag 'ytR5Xybf6aDn7WY1' \
    > test.out 2>&1
eval_tap $? 133 'QueryKeyGroups' test.out

#- 134 CreateKeyGroup
samples/cli/sample-apps Platform createKeyGroup \
    --namespace $AB_NAMESPACE \
    --body '{"description": "oCeJUJwhvQTfncEe", "name": "V9czuEHgWHdF3zJd", "status": "ACTIVE", "tags": ["s9eDcFIdyYR1jKtc", "PRwcPWriZdu3158F", "1SayqNR2G5Iv5tLf"]}' \
    > test.out 2>&1
eval_tap $? 134 'CreateKeyGroup' test.out

#- 135 GetKeyGroupByBoothName
eval_tap 0 135 'GetKeyGroupByBoothName # SKIP deprecated' test.out

#- 136 GetKeyGroup
samples/cli/sample-apps Platform getKeyGroup \
    --keyGroupId 'aSP61VBGjUPxajcZ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 136 'GetKeyGroup' test.out

#- 137 UpdateKeyGroup
samples/cli/sample-apps Platform updateKeyGroup \
    --keyGroupId 'Gf9av6cSn2l8v2bo' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "X1E7u6br9fq0OZiI", "name": "m4LkG5zzcq9iTGxI", "status": "ACTIVE", "tags": ["1oAh1TXsOSeEUhRx", "p5pDeSAdAe3pDq6n", "gOy75DMdFoqoZDae"]}' \
    > test.out 2>&1
eval_tap $? 137 'UpdateKeyGroup' test.out

#- 138 GetKeyGroupDynamic
samples/cli/sample-apps Platform getKeyGroupDynamic \
    --keyGroupId 'OGIt3YEdr2CJxAPe' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 138 'GetKeyGroupDynamic' test.out

#- 139 ListKeys
samples/cli/sample-apps Platform listKeys \
    --keyGroupId '8b6fn9gTv7wy6lbR' \
    --namespace $AB_NAMESPACE \
    --limit '35' \
    --offset '37' \
    --status 'ACQUIRED' \
    > test.out 2>&1
eval_tap $? 139 'ListKeys' test.out

#- 140 UploadKeys
samples/cli/sample-apps Platform uploadKeys \
    --keyGroupId 'NXlxgQJsOY6dLSy7' \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 140 'UploadKeys' test.out

#- 141 QueryOrders
samples/cli/sample-apps Platform queryOrders \
    --namespace $AB_NAMESPACE \
    --endTime 'VL08YzGhO5rUO5mg' \
    --limit '39' \
    --offset '37' \
    --orderNos '["j2W6gOcJjpjdU0la", "UOxCdxoP7sFboHZD", "Wey9vxobOikpSaso"]' \
    --sortBy 'AMIVGUoaqVpWoroH' \
    --startTime 'ood76Spq6f7rlFoV' \
    --status 'FULFILL_FAILED' \
    --withTotal 'true' \
    > test.out 2>&1
eval_tap $? 141 'QueryOrders' test.out

#- 142 GetOrderStatistics
samples/cli/sample-apps Platform getOrderStatistics \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 142 'GetOrderStatistics' test.out

#- 143 GetOrder
samples/cli/sample-apps Platform getOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'D5hdUoEBgOhb1HyV' \
    > test.out 2>&1
eval_tap $? 143 'GetOrder' test.out

#- 144 RefundOrder
samples/cli/sample-apps Platform refundOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'NfCZAXKg9CY0jhel' \
    --body '{"description": "Hl1ATZLRbhsgipv5"}' \
    > test.out 2>&1
eval_tap $? 144 'RefundOrder' test.out

#- 145 GetPaymentCallbackConfig
samples/cli/sample-apps Platform getPaymentCallbackConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 145 'GetPaymentCallbackConfig' test.out

#- 146 UpdatePaymentCallbackConfig
samples/cli/sample-apps Platform updatePaymentCallbackConfig \
    --namespace $AB_NAMESPACE \
    --body '{"dryRun": false, "notifyUrl": "wZTYzmfk2bI6Y5vI", "privateKey": "93v0gmsuNxJmQj6i"}' \
    > test.out 2>&1
eval_tap $? 146 'UpdatePaymentCallbackConfig' test.out

#- 147 QueryPaymentNotifications
samples/cli/sample-apps Platform queryPaymentNotifications \
    --namespace $AB_NAMESPACE \
    --endDate 'ZVeHDqWd4KyDcf9b' \
    --externalId 'l1nNtpT2vfeQB4Cq' \
    --limit '84' \
    --notificationSource 'ADYEN' \
    --notificationType 'VLiQYJDYVy1bi5Y8' \
    --offset '89' \
    --paymentOrderNo 'WbxLJ8A60KcCw6jQ' \
    --startDate 'xHNFJrObYNSyJMEO' \
    --status 'IGNORED' \
    > test.out 2>&1
eval_tap $? 147 'QueryPaymentNotifications' test.out

#- 148 QueryPaymentOrders
samples/cli/sample-apps Platform queryPaymentOrders \
    --namespace $AB_NAMESPACE \
    --channel 'INTERNAL' \
    --extTxId 'KQ6rPOVzvY6TYJML' \
    --limit '59' \
    --offset '98' \
    --status 'AUTHORISED' \
    > test.out 2>&1
eval_tap $? 148 'QueryPaymentOrders' test.out

#- 149 CreatePaymentOrderByDedicated
samples/cli/sample-apps Platform createPaymentOrderByDedicated \
    --namespace $AB_NAMESPACE \
    --body '{"currencyCode": "RmMJuDAvHgacWJvg", "currencyNamespace": "OSSOCIdPU2E4npCV", "customParameters": {"2L4OsDloj8NG8fa8": {}, "G9KE7U8hqOUF3NZQ": {}, "jKMw9itDCpsLFiP0": {}}, "description": "cu0WCv6FIlBCamLb", "extOrderNo": "BbqfkX2OwUTwcbpO", "extUserId": "vLEk0UJ2RWbWlsbY", "itemType": "EXTENSION", "language": "Wuk-PhlT-557", "metadata": {"D4N5Li3REcIpjpUu": "b3H0jWVHZLt3ptuz", "DbQsdpu2VEwkYyi1": "UcELqPdgxIpmYStx", "rHRjhbagYAGdEYRo": "7xPeCp25q8xagQzC"}, "notifyUrl": "o6ptE40d2pEIwFqx", "omitNotification": true, "platform": "h6N09slK2bT1lU7r", "price": 19, "recurringPaymentOrderNo": "ZO7YiW9cGv0UA65I", "region": "v2qdvSSU7KYyyPrC", "returnUrl": "NXdo0Rh4LCjwM8Ih", "sandbox": true, "sku": "J2w9YzwxDkIY3M4N", "subscriptionId": "hzIET08e0dTJOPSK", "targetNamespace": "Olxq1r20M0u5r00g", "targetUserId": "Psj5BLtOdCfe6cCn", "title": "d0irYZafquQWpwq1"}' \
    > test.out 2>&1
eval_tap $? 149 'CreatePaymentOrderByDedicated' test.out

#- 150 ListExtOrderNoByExtTxId
samples/cli/sample-apps Platform listExtOrderNoByExtTxId \
    --namespace $AB_NAMESPACE \
    --extTxId 'BUAdidBptRdnnBGQ' \
    > test.out 2>&1
eval_tap $? 150 'ListExtOrderNoByExtTxId' test.out

#- 151 GetPaymentOrder
samples/cli/sample-apps Platform getPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'd0lepjj3EbNkOGNW' \
    > test.out 2>&1
eval_tap $? 151 'GetPaymentOrder' test.out

#- 152 ChargePaymentOrder
samples/cli/sample-apps Platform chargePaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo '8mrtkgYSJYMdcwbz' \
    --body '{"extTxId": "x2Y7LMjBXhcRQNeH", "paymentMethod": "l24RiNvg0IkPz5cf", "paymentProvider": "XSOLLA"}' \
    > test.out 2>&1
eval_tap $? 152 'ChargePaymentOrder' test.out

#- 153 RefundPaymentOrderByDedicated
samples/cli/sample-apps Platform refundPaymentOrderByDedicated \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'QCAdSIWfYbMvlS2M' \
    --body '{"description": "V6noIetfpAGGA3bL"}' \
    > test.out 2>&1
eval_tap $? 153 'RefundPaymentOrderByDedicated' test.out

#- 154 SimulatePaymentOrderNotification
samples/cli/sample-apps Platform simulatePaymentOrderNotification \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'JXXeVBwlQbClVAaO' \
    --body '{"amount": 64, "currencyCode": "ymDSDUhVNmMkLoNe", "notifyType": "REFUND", "paymentProvider": "ADYEN", "salesTax": 83, "vat": 98}' \
    > test.out 2>&1
eval_tap $? 154 'SimulatePaymentOrderNotification' test.out

#- 155 GetPaymentOrderChargeStatus
samples/cli/sample-apps Platform getPaymentOrderChargeStatus \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 't9zClvhhrvj5REAZ' \
    > test.out 2>&1
eval_tap $? 155 'GetPaymentOrderChargeStatus' test.out

#- 156 GetPlatformEntitlementConfig
samples/cli/sample-apps Platform getPlatformEntitlementConfig \
    --namespace $AB_NAMESPACE \
    --platform 'GooglePlay' \
    > test.out 2>&1
eval_tap $? 156 'GetPlatformEntitlementConfig' test.out

#- 157 UpdatePlatformEntitlementConfig
samples/cli/sample-apps Platform updatePlatformEntitlementConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Xbox' \
    --body '{"allowedPlatformOrigins": ["Oculus", "Xbox", "IOS"]}' \
    > test.out 2>&1
eval_tap $? 157 'UpdatePlatformEntitlementConfig' test.out

#- 158 GetPlatformWalletConfig
samples/cli/sample-apps Platform getPlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'IOS' \
    > test.out 2>&1
eval_tap $? 158 'GetPlatformWalletConfig' test.out

#- 159 UpdatePlatformWalletConfig
samples/cli/sample-apps Platform updatePlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Other' \
    --body '{"allowedBalanceOrigins": ["Playstation", "Twitch", "Other"]}' \
    > test.out 2>&1
eval_tap $? 159 'UpdatePlatformWalletConfig' test.out

#- 160 ResetPlatformWalletConfig
samples/cli/sample-apps Platform resetPlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Epic' \
    > test.out 2>&1
eval_tap $? 160 'ResetPlatformWalletConfig' test.out

#- 161 GetRevocationConfig
samples/cli/sample-apps Platform getRevocationConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 161 'GetRevocationConfig' test.out

#- 162 UpdateRevocationConfig
samples/cli/sample-apps Platform updateRevocationConfig \
    --namespace $AB_NAMESPACE \
    --body '{"entitlement": {"consumable": {"enabled": true, "strategy": "REVOKE_OR_REPORT"}, "durable": {"enabled": false, "strategy": "CUSTOM"}}, "wallet": {"enabled": true, "strategy": "CUSTOM"}}' \
    > test.out 2>&1
eval_tap $? 162 'UpdateRevocationConfig' test.out

#- 163 DeleteRevocationConfig
samples/cli/sample-apps Platform deleteRevocationConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 163 'DeleteRevocationConfig' test.out

#- 164 QueryRevocationHistories
samples/cli/sample-apps Platform queryRevocationHistories \
    --namespace $AB_NAMESPACE \
    --endTime '1V1KeroElTRuJqxi' \
    --limit '46' \
    --offset '55' \
    --source 'IAP' \
    --startTime 'fGPHK8r4HIQT0ddR' \
    --status 'FAIL' \
    --transactionId 'xr2ojbMTqYKi81rw' \
    --userId 'C51ctzUQgic2bKaN' \
    > test.out 2>&1
eval_tap $? 164 'QueryRevocationHistories' test.out

#- 165 GetRevocationPluginConfig
samples/cli/sample-apps Platform getRevocationPluginConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 165 'GetRevocationPluginConfig' test.out

#- 166 UpdateRevocationPluginConfig
samples/cli/sample-apps Platform updateRevocationPluginConfig \
    --namespace $AB_NAMESPACE \
    --body '{"appConfig": {"appName": "1ik7sDVcb3yGJzzV"}, "customConfig": {"connectionType": "TLS", "grpcServerAddress": "atdaG4jkYsetR2Qs"}, "extendType": "CUSTOM"}' \
    > test.out 2>&1
eval_tap $? 166 'UpdateRevocationPluginConfig' test.out

#- 167 DeleteRevocationPluginConfig
samples/cli/sample-apps Platform deleteRevocationPluginConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 167 'DeleteRevocationPluginConfig' test.out

#- 168 UploadRevocationPluginConfigCert
samples/cli/sample-apps Platform uploadRevocationPluginConfigCert \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 168 'UploadRevocationPluginConfigCert' test.out

#- 169 CreateReward
samples/cli/sample-apps Platform createReward \
    --namespace $AB_NAMESPACE \
    --body '{"description": "9LSLGu1Trasa9SNG", "eventTopic": "WwOt8Qyznv4ZWxYw", "maxAwarded": 78, "maxAwardedPerUser": 35, "namespaceExpression": "eDEOVHPe7hu4NpK6", "rewardCode": "jdLnAH155ygozCjx", "rewardConditions": [{"condition": "IseQMzSZEX0oV95S", "conditionName": "Lt7juH9NcgxUqKyB", "eventName": "rjAYFqizFilXWUBw", "rewardItems": [{"duration": 52, "endDate": "1988-05-20T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "nQr1fjiI4rKGVjSO", "quantity": 82, "sku": "OmJOyZ0EQ0OXhPcG"}, {"duration": 49, "endDate": "1988-06-05T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "8dmWwuKXdAjwmwSk", "quantity": 73, "sku": "kI8FokDo4G6x9Lf6"}, {"duration": 99, "endDate": "1973-10-01T00:00:00Z", "identityType": "ITEM_ID", "itemId": "ZfOwwv6NY0vq1R5G", "quantity": 26, "sku": "aiJvEGfaFu0PRoeL"}]}, {"condition": "vebJog8LdnU820rm", "conditionName": "2OP1JqZBsKJdNHE7", "eventName": "MEJySqPvN0r0qyup", "rewardItems": [{"duration": 21, "endDate": "1996-03-11T00:00:00Z", "identityType": "ITEM_ID", "itemId": "E8nIVEapQdVZ9sOc", "quantity": 11, "sku": "5PZN1EzKVWRukgwP"}, {"duration": 95, "endDate": "1974-12-19T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "xZ39cXfiI6GYmkmf", "quantity": 95, "sku": "HkQDxKVOxf6gPPhG"}, {"duration": 55, "endDate": "1981-01-26T00:00:00Z", "identityType": "ITEM_ID", "itemId": "vYZYrY0bQPiDJQri", "quantity": 97, "sku": "Ml9cVnjOpar9c0vI"}]}, {"condition": "lNDnJeIiIvITLW9X", "conditionName": "Kp4whzcpfnTyKWCs", "eventName": "nHEqBIB9phigJeME", "rewardItems": [{"duration": 89, "endDate": "1985-06-11T00:00:00Z", "identityType": "ITEM_ID", "itemId": "DosX3Bv9hLQyk4nJ", "quantity": 24, "sku": "Z0RHHkIB1fl6LIpG"}, {"duration": 80, "endDate": "1997-09-27T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "kmPcDoJYWp6YLoPg", "quantity": 24, "sku": "qvtLme5F42F7hION"}, {"duration": 34, "endDate": "1986-05-09T00:00:00Z", "identityType": "ITEM_ID", "itemId": "8HZjOc2QNsQyA3Av", "quantity": 39, "sku": "LiyV6sbDiFUvjuu5"}]}], "userIdExpression": "tqyJRzpy4GT9OJWC"}' \
    > test.out 2>&1
eval_tap $? 169 'CreateReward' test.out

#- 170 QueryRewards
samples/cli/sample-apps Platform queryRewards \
    --namespace $AB_NAMESPACE \
    --eventTopic '3ulcpsAT42ZPMf14' \
    --limit '50' \
    --offset '0' \
    --sortBy '["namespace:desc", "rewardCode:asc", "rewardCode"]' \
    > test.out 2>&1
eval_tap $? 170 'QueryRewards' test.out

#- 171 ExportRewards
samples/cli/sample-apps Platform exportRewards \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 171 'ExportRewards' test.out

#- 172 ImportRewards
samples/cli/sample-apps Platform importRewards \
    --namespace $AB_NAMESPACE \
    --replaceExisting 'false' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 172 'ImportRewards' test.out

#- 173 GetReward
samples/cli/sample-apps Platform getReward \
    --namespace $AB_NAMESPACE \
    --rewardId 'Avy1BwYF9RVwere2' \
    > test.out 2>&1
eval_tap $? 173 'GetReward' test.out

#- 174 UpdateReward
samples/cli/sample-apps Platform updateReward \
    --namespace $AB_NAMESPACE \
    --rewardId 'PDiDtYl1VzM0z03Z' \
    --body '{"description": "IQYpNU0I3mv2i8Of", "eventTopic": "ARjCZ2fS3LUeW6fv", "maxAwarded": 100, "maxAwardedPerUser": 17, "namespaceExpression": "LFYNd14YCftdXph1", "rewardCode": "ttMWZ3CfpiUG8d5d", "rewardConditions": [{"condition": "gaZxgTc1nWvH1WAB", "conditionName": "SbhcI1QFanyPyjVq", "eventName": "V7udMFoi5XqVELPL", "rewardItems": [{"duration": 89, "endDate": "1998-06-01T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "LGkgoqb3ojwv0fVq", "quantity": 59, "sku": "MviCFIlBBiUQiUF0"}, {"duration": 33, "endDate": "1984-01-01T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "UWRXdQYV1MpVOmMw", "quantity": 31, "sku": "OZv4qs337gK3oYxP"}, {"duration": 41, "endDate": "1992-06-05T00:00:00Z", "identityType": "ITEM_ID", "itemId": "tTWSZtDrvf9clzI7", "quantity": 90, "sku": "RBO5d2Mj41beXBiU"}]}, {"condition": "H6WKR08uJH6Fz0bK", "conditionName": "C6IhwtVY3aOV7YzI", "eventName": "NdFPH6ybVmdmIEDK", "rewardItems": [{"duration": 15, "endDate": "1992-01-11T00:00:00Z", "identityType": "ITEM_ID", "itemId": "WSwqpVr47OuMYq2j", "quantity": 86, "sku": "lIkBDr7blTWRzClQ"}, {"duration": 5, "endDate": "1972-03-05T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "rFWr923j9KJKAqjh", "quantity": 12, "sku": "4xORvM1bMgwRa3tt"}, {"duration": 76, "endDate": "1995-07-27T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "eAiCHbh8Ip2QU19i", "quantity": 39, "sku": "FzTw3qwJ76sVaXWP"}]}, {"condition": "kEDArxNFu0pWBh0A", "conditionName": "tU9kYplOyLPn3Rn0", "eventName": "dZglg1vMbP9qXxlM", "rewardItems": [{"duration": 33, "endDate": "1987-06-20T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "ECHsjzneR5y65nux", "quantity": 17, "sku": "iPz4cjUXunpfD0bM"}, {"duration": 78, "endDate": "1991-06-28T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "cTg5FCDuCcLQTjUO", "quantity": 23, "sku": "gZukmAWI4goH56y0"}, {"duration": 76, "endDate": "1989-03-22T00:00:00Z", "identityType": "ITEM_ID", "itemId": "sunOtwlUoaoeogNv", "quantity": 39, "sku": "tZkF49bHsAWE1ug0"}]}], "userIdExpression": "henDIFcTlYshJHhO"}' \
    > test.out 2>&1
eval_tap $? 174 'UpdateReward' test.out

#- 175 DeleteReward
samples/cli/sample-apps Platform deleteReward \
    --namespace $AB_NAMESPACE \
    --rewardId 'Q1b8W2x0MkbTb97f' \
    > test.out 2>&1
eval_tap $? 175 'DeleteReward' test.out

#- 176 CheckEventCondition
samples/cli/sample-apps Platform checkEventCondition \
    --namespace $AB_NAMESPACE \
    --rewardId 'iVuOrEXE9TdcARUr' \
    --body '{"payload": {"Fg03S3WVBelJaNJ6": {}, "JxFAMvVy3lHiGTNY": {}, "iKYw395Ba9uMlVOX": {}}}' \
    > test.out 2>&1
eval_tap $? 176 'CheckEventCondition' test.out

#- 177 DeleteRewardConditionRecord
samples/cli/sample-apps Platform deleteRewardConditionRecord \
    --namespace $AB_NAMESPACE \
    --rewardId 'TqPskGXe3znnhEyL' \
    --body '{"conditionName": "HpZODKOercoGYhFI", "userId": "G8SwDTopHyokuEtq"}' \
    > test.out 2>&1
eval_tap $? 177 'DeleteRewardConditionRecord' test.out

#- 178 QuerySections
samples/cli/sample-apps Platform querySections \
    --namespace $AB_NAMESPACE \
    --end 'x60Xx8W6k0oD2Ams' \
    --limit '52' \
    --offset '59' \
    --start 'BZ67b5LHr5gK42bc' \
    --storeId '1OCxBMkuaeAySZ38' \
    --viewId 'bRSNgnBNsENjsPN8' \
    > test.out 2>&1
eval_tap $? 178 'QuerySections' test.out

#- 179 CreateSection
samples/cli/sample-apps Platform createSection \
    --namespace $AB_NAMESPACE \
    --storeId '4PgX0M8rg9MmzolI' \
    --body '{"active": true, "displayOrder": 63, "endDate": "1974-01-31T00:00:00Z", "ext": {"97iqBclKApKrxrGp": {}, "gksYLrQpqbNJciCk": {}, "hgCOaqpc2tl6yxLd": {}}, "fixedPeriodRotationConfig": {"backfillType": "NONE", "duration": 33, "itemCount": 72, "rule": "SEQUENCE"}, "items": [{"id": "OfVvsVBbUfdXfKsr", "sku": "M39LXQv6FEkh2FB3"}, {"id": "lp7D7auyUJF84Kap", "sku": "Hp7FIIrPjFxgvw3q"}, {"id": "zLsIShE0lUm52YA3", "sku": "BZu7qYjZ5XiQq05G"}], "localizations": {"U5IClF0GLCszZAd9": {"description": "kSYITOY8M8IQ0Mxh", "localExt": {"dDXsjLPYjuSL8zyi": {}, "FAFEXRrkZcwwtSid": {}, "qAneBusBGPgvavFs": {}}, "longDescription": "lDyBDv9lJnJkOwoB", "title": "9aw5TLrzc4UvpaDn"}, "KPeGui0cwAXn4JNj": {"description": "MO6xojmFGc8QoOUQ", "localExt": {"2nfJ04PGuCDbGnq7": {}, "1jT6WyKnMen04X7O": {}, "E2kfImg6oiDCfmfs": {}}, "longDescription": "thi6Pg6bupY9PvOq", "title": "gabQOZPKHRWrrAlW"}, "wXhYVTCj38jg2CLS": {"description": "u8jg0YhLykmMW44E", "localExt": {"12IbXWZmBLAnyZPf": {}, "yQb0RhYLLi70XkYn": {}, "Xyp6F1xk5Sz1Zhjy": {}}, "longDescription": "tIx71QZNPkcMJlXG", "title": "NQjQv2WOYrOLr6uf"}}, "name": "qUAevFhQhZjqissH", "rotationType": "FIXED_PERIOD", "startDate": "1976-09-21T00:00:00Z", "viewId": "FN9uF5LrbquzASnp"}' \
    > test.out 2>&1
eval_tap $? 179 'CreateSection' test.out

#- 180 PurgeExpiredSection
samples/cli/sample-apps Platform purgeExpiredSection \
    --namespace $AB_NAMESPACE \
    --storeId 'RYqDzBQjMOoth26m' \
    > test.out 2>&1
eval_tap $? 180 'PurgeExpiredSection' test.out

#- 181 GetSection
samples/cli/sample-apps Platform getSection \
    --namespace $AB_NAMESPACE \
    --sectionId 'DmgHIRQSODOhtNTt' \
    --storeId 'hZKr9HMFTiuo8t1l' \
    > test.out 2>&1
eval_tap $? 181 'GetSection' test.out

#- 182 UpdateSection
samples/cli/sample-apps Platform updateSection \
    --namespace $AB_NAMESPACE \
    --sectionId 'kJhnW04emdO4dYgj' \
    --storeId '53Ys4PjmXVzrP75n' \
    --body '{"active": true, "displayOrder": 43, "endDate": "1999-08-17T00:00:00Z", "ext": {"VrQa80wYr2ZfY98D": {}, "3LY1KKEWdEO09DwC": {}, "oCwI9w1EVvVYPmM6": {}}, "fixedPeriodRotationConfig": {"backfillType": "CUSTOM", "duration": 48, "itemCount": 74, "rule": "SEQUENCE"}, "items": [{"id": "0kJELZytMgt0TSVa", "sku": "qmdGXr2UTa6sk5EH"}, {"id": "kpjjlEue9VE7HApN", "sku": "qnYafqgE5YgNS477"}, {"id": "NtAgJc7XsK6MCPn4", "sku": "8RUNBWmCr4WQmtYA"}], "localizations": {"oMCqZu5Atg0qQsYV": {"description": "T0WrYS5FpczLX4vo", "localExt": {"9cVzl7prLZl4FqEB": {}, "oCfu2FTlSDqbes5W": {}, "gZ9hokOfzCNeCLmj": {}}, "longDescription": "4g8gCLh0MdmG0DPK", "title": "0d0tgf9XSs7m2Txh"}, "e8RZvTRJHNVsFBGQ": {"description": "XuXrvHqYjjq6WL38", "localExt": {"HXh9yH3Qjfx9iJIc": {}, "qZRQU6KNQtlHDm6Y": {}, "FAfecgg5zj0C4GCM": {}}, "longDescription": "GS0qU8ygjJzGXzpU", "title": "09KEvzAM3Z7s5Hb3"}, "eortkyS1jzDpVkue": {"description": "W2QaKrYfXy3IspBK", "localExt": {"OqBNCeYfgMUczX8y": {}, "mwkRi5CEqtkaneya": {}, "Lvk7mgeGvEECk3cN": {}}, "longDescription": "DZFNpYK2CTYMvVwI", "title": "F9vmjm3CeYFdygnv"}}, "name": "Bm48J8WxZ9gmiyNW", "rotationType": "CUSTOM", "startDate": "1991-10-09T00:00:00Z", "viewId": "5lIFQniXthv2Ze5B"}' \
    > test.out 2>&1
eval_tap $? 182 'UpdateSection' test.out

#- 183 DeleteSection
samples/cli/sample-apps Platform deleteSection \
    --namespace $AB_NAMESPACE \
    --sectionId 'K9JB0mCYpR5gpfmr' \
    --storeId 'T85uwjhl3TRJnbeH' \
    > test.out 2>&1
eval_tap $? 183 'DeleteSection' test.out

#- 184 ListStores
samples/cli/sample-apps Platform listStores \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 184 'ListStores' test.out

#- 185 CreateStore
samples/cli/sample-apps Platform createStore \
    --namespace $AB_NAMESPACE \
    --body '{"defaultLanguage": "oZK1cH0V9q5Ze6jv", "defaultRegion": "uFp7LD2GNKzlJvoe", "description": "BLNTj4LGcRpdnS1D", "supportedLanguages": ["Cincr21TS9vDGWZp", "qI6m7pUP67oR5r7h", "vhVN29xjC1XD6MnK"], "supportedRegions": ["M5G5mhsroI7HRnfn", "mLoSNJALID2aS451", "Kl12j3E3TH5z0XNJ"], "title": "zE4h16VZJsU0j2TH"}' \
    > test.out 2>&1
eval_tap $? 185 'CreateStore' test.out

#- 186 GetCatalogDefinition
samples/cli/sample-apps Platform getCatalogDefinition \
    --namespace $AB_NAMESPACE \
    --catalogType 'APP' \
    > test.out 2>&1
eval_tap $? 186 'GetCatalogDefinition' test.out

#- 187 DownloadCSVTemplates
samples/cli/sample-apps Platform downloadCSVTemplates \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 187 'DownloadCSVTemplates' test.out

#- 188 ExportStoreByCSV
samples/cli/sample-apps Platform exportStoreByCSV \
    --namespace $AB_NAMESPACE \
    --body '{"catalogType": "ITEM", "fieldsToBeIncluded": ["BUdy2LbAUhlcG0fI", "BTNGO3VyUbburCDd", "8uMQg3M1pMHWxUgZ"], "idsToBeExported": ["NtPKts1ee9ql6FkE", "BNwCGO9vJj2ZzGwj", "9JmReJ62xykmZsvv"], "storeId": "kzWEwQuIkxwk82VS"}' \
    > test.out 2>&1
eval_tap $? 188 'ExportStoreByCSV' test.out

#- 189 ImportStore
eval_tap 0 189 'ImportStore # SKIP deprecated' test.out

#- 190 GetPublishedStore
samples/cli/sample-apps Platform getPublishedStore \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 190 'GetPublishedStore' test.out

#- 191 DeletePublishedStore
samples/cli/sample-apps Platform deletePublishedStore \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 191 'DeletePublishedStore' test.out

#- 192 GetPublishedStoreBackup
samples/cli/sample-apps Platform getPublishedStoreBackup \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 192 'GetPublishedStoreBackup' test.out

#- 193 RollbackPublishedStore
samples/cli/sample-apps Platform rollbackPublishedStore \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 193 'RollbackPublishedStore' test.out

#- 194 GetStore
samples/cli/sample-apps Platform getStore \
    --namespace $AB_NAMESPACE \
    --storeId 'LE73ycwD2G004w5j' \
    > test.out 2>&1
eval_tap $? 194 'GetStore' test.out

#- 195 UpdateStore
samples/cli/sample-apps Platform updateStore \
    --namespace $AB_NAMESPACE \
    --storeId 'PUcuMZ9CBkI5EFle' \
    --body '{"defaultLanguage": "MqU0jmInAMzSQ9MV", "defaultRegion": "zudFejLDZcc4vRMD", "description": "6ksXvFlYjI8r5S6L", "supportedLanguages": ["YQzix9pzYZ9mtAYe", "1mKDlIu0HGjJvc21", "qDlFbY3qp3TQEh3h"], "supportedRegions": ["4YZOtI3lR2GyeCMB", "hFuahAs3035S2fXW", "yMobB9lo5zMQIa0O"], "title": "JzxdBoA2vxW3f95Y"}' \
    > test.out 2>&1
eval_tap $? 195 'UpdateStore' test.out

#- 196 DeleteStore
samples/cli/sample-apps Platform deleteStore \
    --namespace $AB_NAMESPACE \
    --storeId '5LnME5BOiwWxWYAz' \
    > test.out 2>&1
eval_tap $? 196 'DeleteStore' test.out

#- 197 QueryChanges
samples/cli/sample-apps Platform queryChanges \
    --namespace $AB_NAMESPACE \
    --storeId 'rDMpFf3HAQc2twty' \
    --action 'CREATE' \
    --itemSku 'wP3VZTDrjoc6PJ0j' \
    --itemType 'INGAMEITEM' \
    --limit '70' \
    --offset '46' \
    --selected 'true' \
    --sortBy '["updatedAt:desc", "updatedAt", "createdAt"]' \
    --status 'PUBLISHED' \
    --type 'SECTION' \
    --updatedAtEnd 'NlFR4AIcvCqQTIWT' \
    --updatedAtStart 'ZbpXdY36zsXVRkr3' \
    --withTotal 'true' \
    > test.out 2>&1
eval_tap $? 197 'QueryChanges' test.out

#- 198 PublishAll
samples/cli/sample-apps Platform publishAll \
    --namespace $AB_NAMESPACE \
    --storeId 'ab0jrlXNmv2tZsX2' \
    > test.out 2>&1
eval_tap $? 198 'PublishAll' test.out

#- 199 PublishSelected
samples/cli/sample-apps Platform publishSelected \
    --namespace $AB_NAMESPACE \
    --storeId 'eh9503nfxI2eP7UQ' \
    > test.out 2>&1
eval_tap $? 199 'PublishSelected' test.out

#- 200 SelectAllRecords
samples/cli/sample-apps Platform selectAllRecords \
    --namespace $AB_NAMESPACE \
    --storeId 'iIs9PDmUPfsGCh78' \
    > test.out 2>&1
eval_tap $? 200 'SelectAllRecords' test.out

#- 201 SelectAllRecordsByCriteria
samples/cli/sample-apps Platform selectAllRecordsByCriteria \
    --namespace $AB_NAMESPACE \
    --storeId '7o6sMQy8gLw8OB9N' \
    --action 'CREATE' \
    --itemSku 'U9uiwBB58Wy8oQe9' \
    --itemType 'SEASON' \
    --selected 'true' \
    --type 'SECTION' \
    --updatedAtEnd 'uiiqZPtO01T45svq' \
    --updatedAtStart 'ZaEUOq78jv6zM4kc' \
    > test.out 2>&1
eval_tap $? 201 'SelectAllRecordsByCriteria' test.out

#- 202 GetStatistic
samples/cli/sample-apps Platform getStatistic \
    --namespace $AB_NAMESPACE \
    --storeId 'gfaln3YuvFHHpB0M' \
    --action 'CREATE' \
    --itemSku 'OCIp3d3sQquZl07Z' \
    --itemType 'OPTIONBOX' \
    --type 'CATEGORY' \
    --updatedAtEnd 'EOPMzgWDeHmuftod' \
    --updatedAtStart '12o8zOm8gctKxMoG' \
    > test.out 2>&1
eval_tap $? 202 'GetStatistic' test.out

#- 203 UnselectAllRecords
samples/cli/sample-apps Platform unselectAllRecords \
    --namespace $AB_NAMESPACE \
    --storeId 'SJrJ7Cp2bpDbgqj8' \
    > test.out 2>&1
eval_tap $? 203 'UnselectAllRecords' test.out

#- 204 SelectRecord
samples/cli/sample-apps Platform selectRecord \
    --changeId 'xcciPV4mZv40aupJ' \
    --namespace $AB_NAMESPACE \
    --storeId 'dzIKDuS7zoHT4ell' \
    > test.out 2>&1
eval_tap $? 204 'SelectRecord' test.out

#- 205 UnselectRecord
samples/cli/sample-apps Platform unselectRecord \
    --changeId 'Qgur14VSpwezNQcW' \
    --namespace $AB_NAMESPACE \
    --storeId 'V81bTis3rNJ6l0EL' \
    > test.out 2>&1
eval_tap $? 205 'UnselectRecord' test.out

#- 206 CloneStore
samples/cli/sample-apps Platform cloneStore \
    --namespace $AB_NAMESPACE \
    --storeId 'rwTNcZSR4tj5cDq2' \
    --targetStoreId 'bwtyQAVpaRs3i0gj' \
    > test.out 2>&1
eval_tap $? 206 'CloneStore' test.out

#- 207 ExportStore
eval_tap 0 207 'ExportStore # SKIP deprecated' test.out

#- 208 QueryImportHistory
samples/cli/sample-apps Platform queryImportHistory \
    --namespace $AB_NAMESPACE \
    --storeId 'ApCkBrFagy0Vjp9M' \
    --end 'iLU0d6BeE4L3CPWS' \
    --limit '96' \
    --offset '51' \
    --sortBy 'TPV33Ub50C0cVPn3' \
    --start '2QoxntkBZYJnnlXC' \
    --success 'false' \
    > test.out 2>&1
eval_tap $? 208 'QueryImportHistory' test.out

#- 209 ImportStoreByCSV
samples/cli/sample-apps Platform importStoreByCSV \
    --namespace $AB_NAMESPACE \
    --storeId 'vlpRmIOOBS76MjxJ' \
    --category 'tmp.dat' \
    --display 'tmp.dat' \
    --item 'tmp.dat' \
    --notes 'IVgXcYRRokWFIfJl' \
    --section 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 209 'ImportStoreByCSV' test.out

#- 210 QuerySubscriptions
samples/cli/sample-apps Platform querySubscriptions \
    --namespace $AB_NAMESPACE \
    --chargeStatus 'CHARGE_FAILED' \
    --itemId 'Qt7pqqUviqxcvNZ7' \
    --limit '26' \
    --offset '46' \
    --sku 'vU4flIgGsahsaBQh' \
    --status 'CANCELLED' \
    --subscribedBy 'PLATFORM' \
    --userId 'OhvbEsxm8hhJHmU2' \
    > test.out 2>&1
eval_tap $? 210 'QuerySubscriptions' test.out

#- 211 RecurringChargeSubscription
samples/cli/sample-apps Platform recurringChargeSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'CRt3r59sruemp6tx' \
    > test.out 2>&1
eval_tap $? 211 'RecurringChargeSubscription' test.out

#- 212 GetTicketDynamic
samples/cli/sample-apps Platform getTicketDynamic \
    --boothName 'YsSAjKl18tJKTqbK' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 212 'GetTicketDynamic' test.out

#- 213 DecreaseTicketSale
samples/cli/sample-apps Platform decreaseTicketSale \
    --boothName 'pkU8FIPvFVjX6odK' \
    --namespace $AB_NAMESPACE \
    --body '{"orderNo": "IPDyxyT41A9OleIQ"}' \
    > test.out 2>&1
eval_tap $? 213 'DecreaseTicketSale' test.out

#- 214 GetTicketBoothID
samples/cli/sample-apps Platform getTicketBoothID \
    --boothName 'RhHEWVjr7iPGreTf' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 214 'GetTicketBoothID' test.out

#- 215 IncreaseTicketSale
samples/cli/sample-apps Platform increaseTicketSale \
    --boothName 'i0xnXsELbohKK5No' \
    --namespace $AB_NAMESPACE \
    --body '{"count": 72, "orderNo": "N3OV1BZ5bLgRKnA0"}' \
    > test.out 2>&1
eval_tap $? 215 'IncreaseTicketSale' test.out

#- 216 Commit
samples/cli/sample-apps Platform commit \
    --namespace $AB_NAMESPACE \
    --body '{"actions": [{"operations": [{"creditPayload": {"balanceOrigin": "Other", "count": 51, "currencyCode": "iTJPkVpOxtJviVt3", "expireAt": "1992-06-26T00:00:00Z"}, "debitPayload": {"count": 36, "currencyCode": "Po2z7TGqNpervdk6", "walletPlatform": "GooglePlay"}, "fulFillItemPayload": {"count": 67, "entitlementCollectionId": "FtujUj6MmaVc9bNG", "entitlementOrigin": "Playstation", "itemIdentity": "tPPC8Msk6sNT1hPU", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 40, "entitlementId": "EtM8uHuQXmMtutjo"}, "type": "CREDIT_WALLET"}, {"creditPayload": {"balanceOrigin": "Xbox", "count": 26, "currencyCode": "WlGNPvi07XrJ5ahA", "expireAt": "1997-09-22T00:00:00Z"}, "debitPayload": {"count": 33, "currencyCode": "xvVEUDZWSJgMw01K", "walletPlatform": "Nintendo"}, "fulFillItemPayload": {"count": 100, "entitlementCollectionId": "wtD6MvDbhAxNueSz", "entitlementOrigin": "Oculus", "itemIdentity": "hxYVMK5P3l5M3zGR", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 70, "entitlementId": "IuJNOvr7I6ozDJGt"}, "type": "CREDIT_WALLET"}, {"creditPayload": {"balanceOrigin": "Nintendo", "count": 60, "currencyCode": "QSOit0WumE8nKIup", "expireAt": "1996-03-16T00:00:00Z"}, "debitPayload": {"count": 53, "currencyCode": "sP619afUc0l6kwqi", "walletPlatform": "Epic"}, "fulFillItemPayload": {"count": 64, "entitlementCollectionId": "XDlwcW7FYLa2CyxK", "entitlementOrigin": "Xbox", "itemIdentity": "I2GO9MVTDPaPeCcZ", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 51, "entitlementId": "7JK6zmP4YULEynqF"}, "type": "CREDIT_WALLET"}], "userId": "zVjRE3ZhggjGyrOP"}, {"operations": [{"creditPayload": {"balanceOrigin": "Nintendo", "count": 38, "currencyCode": "Rt93Is1bJDonT4Hb", "expireAt": "1989-12-20T00:00:00Z"}, "debitPayload": {"count": 15, "currencyCode": "xBFC9BT397nOvRjx", "walletPlatform": "IOS"}, "fulFillItemPayload": {"count": 38, "entitlementCollectionId": "e5BPV3qyZIn1Hfhz", "entitlementOrigin": "Playstation", "itemIdentity": "yNFBVqL84qjqTey8", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 68, "entitlementId": "aXBo0OxDS1OBAY87"}, "type": "REVOKE_ENTITLEMENT"}, {"creditPayload": {"balanceOrigin": "System", "count": 13, "currencyCode": "Dv5XpO3kqInGhcWN", "expireAt": "1987-11-07T00:00:00Z"}, "debitPayload": {"count": 45, "currencyCode": "wf3psm2JRWr6MmLj", "walletPlatform": "Nintendo"}, "fulFillItemPayload": {"count": 93, "entitlementCollectionId": "3dhpe2g3bx5Qu5Yi", "entitlementOrigin": "Oculus", "itemIdentity": "k1cFeZKjLytNcxRV", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 34, "entitlementId": "zU0Cbc4B2RMtTpYQ"}, "type": "FULFILL_ITEM"}, {"creditPayload": {"balanceOrigin": "GooglePlay", "count": 85, "currencyCode": "xyfQInBvj4s5jTSn", "expireAt": "1986-01-28T00:00:00Z"}, "debitPayload": {"count": 75, "currencyCode": "CXGvvyY8fZTlSHYD", "walletPlatform": "Epic"}, "fulFillItemPayload": {"count": 44, "entitlementCollectionId": "TrEWEb4ri5AzYFZy", "entitlementOrigin": "Other", "itemIdentity": "vyAHaZlZb2SOPOAj", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 7, "entitlementId": "hYddeaYSgdd666ai"}, "type": "REVOKE_ENTITLEMENT"}], "userId": "IhMRF6Meh8fhOOXj"}, {"operations": [{"creditPayload": {"balanceOrigin": "Twitch", "count": 86, "currencyCode": "KCdugxIba47Ru0Mp", "expireAt": "1979-06-25T00:00:00Z"}, "debitPayload": {"count": 96, "currencyCode": "wluCLpNIOXmgPblb", "walletPlatform": "Steam"}, "fulFillItemPayload": {"count": 51, "entitlementCollectionId": "7xyVHfIfre2MkdIF", "entitlementOrigin": "Playstation", "itemIdentity": "uS2xy5VvYKnPlO0R", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 13, "entitlementId": "wJT9PZTVI5GSmYSB"}, "type": "CREDIT_WALLET"}, {"creditPayload": {"balanceOrigin": "Twitch", "count": 14, "currencyCode": "CGnZUYYCyEIgzASo", "expireAt": "1983-09-09T00:00:00Z"}, "debitPayload": {"count": 20, "currencyCode": "5vJh51OoxBKK9poa", "walletPlatform": "Nintendo"}, "fulFillItemPayload": {"count": 90, "entitlementCollectionId": "pcjCceUW049Sbp8m", "entitlementOrigin": "System", "itemIdentity": "pNMYP7H0wmXJb3YG", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 62, "entitlementId": "f6e6ve2Remun0XSy"}, "type": "CREDIT_WALLET"}, {"creditPayload": {"balanceOrigin": "Steam", "count": 65, "currencyCode": "YC1JHB3MxF708Ycj", "expireAt": "1986-05-19T00:00:00Z"}, "debitPayload": {"count": 89, "currencyCode": "PN2ijEzYfhfyOF3H", "walletPlatform": "Other"}, "fulFillItemPayload": {"count": 78, "entitlementCollectionId": "GSZOGdglt5I5Len0", "entitlementOrigin": "Epic", "itemIdentity": "iNqThwgC5h3nn9Dq", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 87, "entitlementId": "e7xFhyA4zd65aQyR"}, "type": "FULFILL_ITEM"}], "userId": "IrBapceLYQk1eZvE"}], "metadata": {"nq17uTp9HvxLELYa": {}, "9MuW7POOKvk2wXWO": {}, "ewhTMWgwsaAAA9X6": {}}, "needPreCheck": true, "transactionId": "MUSwadc5tbpYJRn9", "type": "4JZbc7cWaoJ6vjcb"}' \
    > test.out 2>&1
eval_tap $? 216 'Commit' test.out

#- 217 GetTradeHistoryByCriteria
samples/cli/sample-apps Platform getTradeHistoryByCriteria \
    --namespace $AB_NAMESPACE \
    --limit '80' \
    --offset '46' \
    --status 'INIT' \
    --type '0QRsZ2szNheqsAwC' \
    --userId 'hbQHBuWte24fplaK' \
    > test.out 2>&1
eval_tap $? 217 'GetTradeHistoryByCriteria' test.out

#- 218 GetTradeHistoryByTransactionId
samples/cli/sample-apps Platform getTradeHistoryByTransactionId \
    --namespace $AB_NAMESPACE \
    --transactionId 'D9XwEuweLj75u2fj' \
    > test.out 2>&1
eval_tap $? 218 'GetTradeHistoryByTransactionId' test.out

#- 219 UnlockSteamUserAchievement
samples/cli/sample-apps Platform unlockSteamUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'KrEm4zLz0f5Z501x' \
    --body '{"achievements": [{"id": "yCFxjAnax8cpUqrp", "value": 82}, {"id": "OczQ7Aci5f8yX5te", "value": 90}, {"id": "tIrMh9CKwVClTe6u", "value": 39}], "steamUserId": "A4xw6CNBXuivdyFv"}' \
    > test.out 2>&1
eval_tap $? 219 'UnlockSteamUserAchievement' test.out

#- 220 GetXblUserAchievements
samples/cli/sample-apps Platform getXblUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId 'NU4pWRoaoF2BaiEK' \
    --xboxUserId 'zljZ4Bdvgv8V4SVq' \
    > test.out 2>&1
eval_tap $? 220 'GetXblUserAchievements' test.out

#- 221 UpdateXblUserAchievement
samples/cli/sample-apps Platform updateXblUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'knk5QhCl1X5sal7y' \
    --body '{"achievements": [{"id": "PY1pvHop3HeaCznk", "percentComplete": 98}, {"id": "OXhBO0pIbPsojC72", "percentComplete": 59}, {"id": "q8vlAj4MkeWhQS7y", "percentComplete": 31}], "serviceConfigId": "huZtR28XR2GWTsoX", "titleId": "sgREigDjPpcWrPQj", "xboxUserId": "wrgFWoT0SMbpU9qL"}' \
    > test.out 2>&1
eval_tap $? 221 'UpdateXblUserAchievement' test.out

#- 222 AnonymizeCampaign
samples/cli/sample-apps Platform anonymizeCampaign \
    --namespace $AB_NAMESPACE \
    --userId 'tk1sZkMBxBHegGoY' \
    > test.out 2>&1
eval_tap $? 222 'AnonymizeCampaign' test.out

#- 223 AnonymizeEntitlement
samples/cli/sample-apps Platform anonymizeEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'ICWg844nAQSGdfJr' \
    > test.out 2>&1
eval_tap $? 223 'AnonymizeEntitlement' test.out

#- 224 AnonymizeFulfillment
samples/cli/sample-apps Platform anonymizeFulfillment \
    --namespace $AB_NAMESPACE \
    --userId 'nxLhFHfeIWOo6FzZ' \
    > test.out 2>&1
eval_tap $? 224 'AnonymizeFulfillment' test.out

#- 225 AnonymizeIntegration
samples/cli/sample-apps Platform anonymizeIntegration \
    --namespace $AB_NAMESPACE \
    --userId 'itFUkxCjTAEkx5El' \
    > test.out 2>&1
eval_tap $? 225 'AnonymizeIntegration' test.out

#- 226 AnonymizeOrder
samples/cli/sample-apps Platform anonymizeOrder \
    --namespace $AB_NAMESPACE \
    --userId 'XzTKosf7PA3ef5LS' \
    > test.out 2>&1
eval_tap $? 226 'AnonymizeOrder' test.out

#- 227 AnonymizePayment
samples/cli/sample-apps Platform anonymizePayment \
    --namespace $AB_NAMESPACE \
    --userId 'Wz3lm6HCBOiELso2' \
    > test.out 2>&1
eval_tap $? 227 'AnonymizePayment' test.out

#- 228 AnonymizeRevocation
samples/cli/sample-apps Platform anonymizeRevocation \
    --namespace $AB_NAMESPACE \
    --userId '9DaLFq2M4ypx8GPu' \
    > test.out 2>&1
eval_tap $? 228 'AnonymizeRevocation' test.out

#- 229 AnonymizeSubscription
samples/cli/sample-apps Platform anonymizeSubscription \
    --namespace $AB_NAMESPACE \
    --userId 'rCD2gCIh2CrNzhSf' \
    > test.out 2>&1
eval_tap $? 229 'AnonymizeSubscription' test.out

#- 230 AnonymizeWallet
samples/cli/sample-apps Platform anonymizeWallet \
    --namespace $AB_NAMESPACE \
    --userId 'pEG29ZzZqhIWSe0d' \
    > test.out 2>&1
eval_tap $? 230 'AnonymizeWallet' test.out

#- 231 GetUserDLCByPlatform
samples/cli/sample-apps Platform getUserDLCByPlatform \
    --namespace $AB_NAMESPACE \
    --userId '11W8J9M5uEOZHM3F' \
    --type 'PSN' \
    > test.out 2>&1
eval_tap $? 231 'GetUserDLCByPlatform' test.out

#- 232 GetUserDLC
samples/cli/sample-apps Platform getUserDLC \
    --namespace $AB_NAMESPACE \
    --userId 'PaA9V3CWPIp8CruI' \
    --type 'STEAM' \
    > test.out 2>&1
eval_tap $? 232 'GetUserDLC' test.out

#- 233 QueryUserEntitlements
samples/cli/sample-apps Platform queryUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'ukdtfSu2ECHPlxeZ' \
    --activeOnly 'true' \
    --appType 'GAME' \
    --collectionId '4Bv2R7uRB6qh4FSf' \
    --entitlementClazz 'LOOTBOX' \
    --entitlementName '0t9ofWyPhKEt6Wxe' \
    --features '["EbeyajMv8z27svtN", "BUtY7hXyC69GuMVV", "NsQz8HqV9yqYbh4y"]' \
    --fuzzyMatchName 'true' \
    --itemId '["zzbNWw7VRPtYwXyM", "GvD449Khd505KJaV", "xc7pxgInz029ZT5F"]' \
    --limit '61' \
    --offset '48' \
    --origin 'Oculus' \
    > test.out 2>&1
eval_tap $? 233 'QueryUserEntitlements' test.out

#- 234 GrantUserEntitlement
samples/cli/sample-apps Platform grantUserEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'ZZJJr11JDAOqGx3K' \
    --body '[{"collectionId": "U7XucE3s6ghx1MfM", "endDate": "1984-10-30T00:00:00Z", "grantedCode": "kmzbUsNJ9q0bsLVX", "itemId": "4VZbZF4JrO9lk8GW", "itemNamespace": "XNkgj48wHIbFn9Tc", "language": "puI_567", "origin": "Nintendo", "quantity": 86, "region": "tivUltBQdLTA9jNT", "source": "ACHIEVEMENT", "startDate": "1979-04-07T00:00:00Z", "storeId": "r426H9UOi1HxzZyG"}, {"collectionId": "5cU970aX3wYatCtq", "endDate": "1986-02-16T00:00:00Z", "grantedCode": "YYOMeFbACs0ESags", "itemId": "SoEoXP1uB6wZZSzp", "itemNamespace": "QpUsuocDwLWMRo2Z", "language": "BVtV-606", "origin": "Playstation", "quantity": 43, "region": "YonIFN4GVXYWNA0X", "source": "REWARD", "startDate": "1993-05-03T00:00:00Z", "storeId": "dd5xtsMqoYNZkRkS"}, {"collectionId": "zWfF3KQmDnt35xJ5", "endDate": "1978-10-28T00:00:00Z", "grantedCode": "s82TzV0eOCFJv5C2", "itemId": "tO4i5XTuKRMqmKhh", "itemNamespace": "9SFiPJUNbwlHIuW6", "language": "DVB-gdei", "origin": "System", "quantity": 27, "region": "tdzXHsGAR1cMvx7W", "source": "GIFT", "startDate": "1987-01-19T00:00:00Z", "storeId": "zsEE0Y6uQ9TENqSf"}]' \
    > test.out 2>&1
eval_tap $? 234 'GrantUserEntitlement' test.out

#- 235 GetUserAppEntitlementByAppId
samples/cli/sample-apps Platform getUserAppEntitlementByAppId \
    --namespace $AB_NAMESPACE \
    --userId '6tbo5WWMWLohNCxF' \
    --activeOnly 'false' \
    --appId 'USDJEorkOkdpDuuk' \
    > test.out 2>&1
eval_tap $? 235 'GetUserAppEntitlementByAppId' test.out

#- 236 QueryUserEntitlementsByAppType
samples/cli/sample-apps Platform queryUserEntitlementsByAppType \
    --namespace $AB_NAMESPACE \
    --userId 'vrvwEdUTNE19SCQG' \
    --activeOnly 'true' \
    --limit '42' \
    --offset '26' \
    --appType 'DEMO' \
    > test.out 2>&1
eval_tap $? 236 'QueryUserEntitlementsByAppType' test.out

#- 237 GetUserEntitlementByItemId
samples/cli/sample-apps Platform getUserEntitlementByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'QI2PreLmS9krzoHs' \
    --activeOnly 'true' \
    --entitlementClazz 'MEDIA' \
    --platform '7CjJQuQ07H09JUdg' \
    --itemId 'nkCxJHLCq2B22yVJ' \
    > test.out 2>&1
eval_tap $? 237 'GetUserEntitlementByItemId' test.out

#- 238 GetUserActiveEntitlementsByItemIds
samples/cli/sample-apps Platform getUserActiveEntitlementsByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'ryKRTLcMBVC5hJJz' \
    --ids '["Q1YgxYnXUBhGUiIO", "Mr5GxbCG4wbpn0zp", "ZMgf0RAF7x0MNQIy"]' \
    --platform '2VzipTlBrYHlff0p' \
    > test.out 2>&1
eval_tap $? 238 'GetUserActiveEntitlementsByItemIds' test.out

#- 239 GetUserEntitlementBySku
samples/cli/sample-apps Platform getUserEntitlementBySku \
    --namespace $AB_NAMESPACE \
    --userId 'jK4q0EkeuEHCDXrg' \
    --activeOnly 'false' \
    --entitlementClazz 'SUBSCRIPTION' \
    --platform 'gPgdKFCE3ucvv20x' \
    --sku '6P2PR4lp4wteJd3y' \
    > test.out 2>&1
eval_tap $? 239 'GetUserEntitlementBySku' test.out

#- 240 ExistsAnyUserActiveEntitlement
samples/cli/sample-apps Platform existsAnyUserActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --userId '6MMoRmEyacoZ9nbR' \
    --appIds '["yZuTBePoYtB9b7c5", "B8wuZw9FWE9jNO4a", "wrse7QmMP1V7WWjM"]' \
    --itemIds '["gXzhM4qJuRhDmOMS", "a4BauYrkYf57oWQM", "ZwxREAgviJFmPJpu"]' \
    --platform '22UrWKWXZ4SguHUC' \
    --skus '["GVVAubKboZFwsFEU", "c22jROs43JO8oS0T", "gV2BpQUjnCMlDai9"]' \
    > test.out 2>&1
eval_tap $? 240 'ExistsAnyUserActiveEntitlement' test.out

#- 241 ExistsAnyUserActiveEntitlementByItemIds
samples/cli/sample-apps Platform existsAnyUserActiveEntitlementByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'b6OUxnpkefCOTa0l' \
    --platform 'IbBJO7pAvJ9u8e0P' \
    --itemIds '["6TiqTkvAH3HjUbST", "PXjnrxEq1VQeUtPZ", "VyuWhg94x1cc6uPJ"]' \
    > test.out 2>&1
eval_tap $? 241 'ExistsAnyUserActiveEntitlementByItemIds' test.out

#- 242 GetUserAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform getUserAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'cGEj2R2AHolXh08c' \
    --appId 'e339jS6SQhsy7lfA' \
    > test.out 2>&1
eval_tap $? 242 'GetUserAppEntitlementOwnershipByAppId' test.out

#- 243 GetUserEntitlementOwnershipByItemId
samples/cli/sample-apps Platform getUserEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'eWOtxswY39iIKRnW' \
    --entitlementClazz 'CODE' \
    --platform 'oVYgAhDaS5VmUbLy' \
    --itemId 'PrSGWOFBOcgKEPTH' \
    > test.out 2>&1
eval_tap $? 243 'GetUserEntitlementOwnershipByItemId' test.out

#- 244 GetUserEntitlementOwnershipByItemIds
samples/cli/sample-apps Platform getUserEntitlementOwnershipByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'bI6BVMwa2vzXP6yt' \
    --ids '["gVKdyuk2UBV0EKwc", "p9BvxPSmdXA5b5aH", "Rdq2gpQiPFRif9Qa"]' \
    --platform 'WwasyvVBETknESjQ' \
    > test.out 2>&1
eval_tap $? 244 'GetUserEntitlementOwnershipByItemIds' test.out

#- 245 GetUserEntitlementOwnershipBySku
samples/cli/sample-apps Platform getUserEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --userId 'aiDhVq2Cv2T6N7c0' \
    --entitlementClazz 'SUBSCRIPTION' \
    --platform 'tsSewpi3I3LOAzmA' \
    --sku '0cLsTYqkVMbS0Wk6' \
    > test.out 2>&1
eval_tap $? 245 'GetUserEntitlementOwnershipBySku' test.out

#- 246 RevokeAllEntitlements
samples/cli/sample-apps Platform revokeAllEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'PngjmSUS5Gr44a36' \
    > test.out 2>&1
eval_tap $? 246 'RevokeAllEntitlements' test.out

#- 247 RevokeUserEntitlements
samples/cli/sample-apps Platform revokeUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'szfQBI3TimPyDibT' \
    --entitlementIds 'tZa7rdgRvCMlFTm3' \
    > test.out 2>&1
eval_tap $? 247 'RevokeUserEntitlements' test.out

#- 248 GetUserEntitlement
samples/cli/sample-apps Platform getUserEntitlement \
    --entitlementId 'lbIogKi6t3CvzHNA' \
    --namespace $AB_NAMESPACE \
    --userId '75yA4Y1Hn2YV42XJ' \
    > test.out 2>&1
eval_tap $? 248 'GetUserEntitlement' test.out

#- 249 UpdateUserEntitlement
samples/cli/sample-apps Platform updateUserEntitlement \
    --entitlementId 'nTvN1oAtshBsbl0A' \
    --namespace $AB_NAMESPACE \
    --userId 'BrgTPB8wY9dnqGf8' \
    --body '{"collectionId": "PvEOI21F0RIL2ZMa", "endDate": "1978-03-02T00:00:00Z", "nullFieldList": ["NRNKVvAcXuwxMmZ5", "ERnHgTKRrARRf6Q5", "1dUjYwlVx7U2fUNr"], "origin": "Epic", "reason": "ussGmhtDuOWlHWfn", "startDate": "1977-03-28T00:00:00Z", "status": "INACTIVE", "useCount": 1}' \
    > test.out 2>&1
eval_tap $? 249 'UpdateUserEntitlement' test.out

#- 250 ConsumeUserEntitlement
samples/cli/sample-apps Platform consumeUserEntitlement \
    --entitlementId 'hsfgF5hQzlMgLKw0' \
    --namespace $AB_NAMESPACE \
    --userId 'Aa6mQqiIUSc37YE6' \
    --body '{"options": ["DQMoWFWqv09qTVVx", "NxuMyd9FtCRd2yoY", "qi9ZRaTshxRbeWer"], "platform": "PS2g20CURJrRYKia", "requestId": "FvdxntTbo5aQXvhA", "useCount": 4}' \
    > test.out 2>&1
eval_tap $? 250 'ConsumeUserEntitlement' test.out

#- 251 DisableUserEntitlement
samples/cli/sample-apps Platform disableUserEntitlement \
    --entitlementId 'gRrJiaUB0WmByT7j' \
    --namespace $AB_NAMESPACE \
    --userId 'QpWbCTbvHTD16vZh' \
    > test.out 2>&1
eval_tap $? 251 'DisableUserEntitlement' test.out

#- 252 EnableUserEntitlement
samples/cli/sample-apps Platform enableUserEntitlement \
    --entitlementId 'vJodmp1pHCzbwspm' \
    --namespace $AB_NAMESPACE \
    --userId 'WtCYHuikG3tAjEtt' \
    > test.out 2>&1
eval_tap $? 252 'EnableUserEntitlement' test.out

#- 253 GetUserEntitlementHistories
samples/cli/sample-apps Platform getUserEntitlementHistories \
    --entitlementId 'BmZgoCLbHZliCBuO' \
    --namespace $AB_NAMESPACE \
    --userId 'CJPXEmexTPCWba41' \
    > test.out 2>&1
eval_tap $? 253 'GetUserEntitlementHistories' test.out

#- 254 RevokeUserEntitlement
samples/cli/sample-apps Platform revokeUserEntitlement \
    --entitlementId 'LQaHHlRbelDxrgKi' \
    --namespace $AB_NAMESPACE \
    --userId 'MvnsYyZBa0s1L5VO' \
    > test.out 2>&1
eval_tap $? 254 'RevokeUserEntitlement' test.out

#- 255 RevokeUserEntitlementByUseCount
samples/cli/sample-apps Platform revokeUserEntitlementByUseCount \
    --entitlementId 'GfXUM2rGNgowYcbz' \
    --namespace $AB_NAMESPACE \
    --userId 'rL031q2FGweq2Usc' \
    --body '{"reason": "xbAV19rS0fRo3Dn0", "useCount": 12}' \
    > test.out 2>&1
eval_tap $? 255 'RevokeUserEntitlementByUseCount' test.out

#- 256 PreCheckRevokeUserEntitlementByUseCount
samples/cli/sample-apps Platform preCheckRevokeUserEntitlementByUseCount \
    --entitlementId 'QN7u73Ovbh66ptfp' \
    --namespace $AB_NAMESPACE \
    --userId 'kiCbBnhy7BDs4l5u' \
    --quantity '85' \
    > test.out 2>&1
eval_tap $? 256 'PreCheckRevokeUserEntitlementByUseCount' test.out

#- 257 RevokeUseCount
eval_tap 0 257 'RevokeUseCount # SKIP deprecated' test.out

#- 258 SellUserEntitlement
samples/cli/sample-apps Platform sellUserEntitlement \
    --entitlementId 'my0011skWa8GnuOo' \
    --namespace $AB_NAMESPACE \
    --userId 'wOmoQVJ0xeDpKANK' \
    --body '{"platform": "KBQvtaPnVJHNqhJT", "requestId": "gsxuDhnKWnoF7UPv", "useCount": 33}' \
    > test.out 2>&1
eval_tap $? 258 'SellUserEntitlement' test.out

#- 259 FulfillItem
samples/cli/sample-apps Platform fulfillItem \
    --namespace $AB_NAMESPACE \
    --userId '63e0EcZvrpIUonck' \
    --body '{"duration": 11, "endDate": "1971-12-22T00:00:00Z", "entitlementCollectionId": "K6NMO6ltgDgErmzR", "entitlementOrigin": "IOS", "itemId": "T3jrejY1Q2BmAtgi", "itemSku": "mkCfD7iaPvxQGC5c", "language": "apLgCnKic8uwl0Mn", "metadata": {"pAkVQPnt3l2mlDCj": {}, "nzQHeEaEqVqkfXFp": {}, "Gy7EDLU6c0pEeRxA": {}}, "order": {"currency": {"currencyCode": "3XIRFP2ol7oZvNbo", "currencySymbol": "ljj3FNpePFqvqueR", "currencyType": "VIRTUAL", "decimals": 7, "namespace": "eKX3FSBrfk3yHGIL"}, "ext": {"px8PKTS0Q14oiNRn": {}, "h0rLdqUQT8JIivMx": {}, "KdSBvFQfaIuEJ5bL": {}}, "free": true}, "orderNo": "xIHqS35PuEpWX7nl", "origin": "Epic", "overrideBundleItemQty": {"7OQvFUAvSGdH4MS2": 98, "ei2dAk42ZNxZK92k": 72, "6h8BLsmklaoxCe6u": 54}, "quantity": 87, "region": "hKInjbNdnCiLY8xh", "source": "CONSUME_ENTITLEMENT", "startDate": "1971-12-24T00:00:00Z", "storeId": "VHcXW2sT5mIqMfJb"}' \
    > test.out 2>&1
eval_tap $? 259 'FulfillItem' test.out

#- 260 RedeemCode
samples/cli/sample-apps Platform redeemCode \
    --namespace $AB_NAMESPACE \
    --userId '8ta3JZEhRgHNwLII' \
    --body '{"code": "XKL8exEdPURwEbUa", "language": "HjrE-msZA-LG", "region": "pBOTe4G6U4fvAd9f"}' \
    > test.out 2>&1
eval_tap $? 260 'RedeemCode' test.out

#- 261 PreCheckFulfillItem
samples/cli/sample-apps Platform preCheckFulfillItem \
    --namespace $AB_NAMESPACE \
    --userId 'Ol3EzmBe0okuwdsd' \
    --body '{"itemId": "co7kziXIo8w6YLvF", "itemSku": "LzI7H37YFy2Aio1E", "quantity": 15}' \
    > test.out 2>&1
eval_tap $? 261 'PreCheckFulfillItem' test.out

#- 262 FulfillRewards
samples/cli/sample-apps Platform fulfillRewards \
    --namespace $AB_NAMESPACE \
    --userId '8o897F4UF15F2E74' \
    --body '{"entitlementCollectionId": "UxDtSZxWvRlG53OU", "entitlementOrigin": "Twitch", "metadata": {"MsnOWc5Mk9yxna9B": {}, "DNeDhXV4iFR9ZXhX": {}, "VvthKyY744eoxzVN": {}}, "origin": "Twitch", "rewards": [{"currency": {"currencyCode": "vwkkJ0T3ATmL7p2g", "namespace": "iMgDVEfU7Nl8SrP3"}, "item": {"itemId": "y2toiPbMPOBvMoet", "itemSku": "MyuSsEcVP65zHLKr", "itemType": "GVwbnlk8yTInGVyE"}, "quantity": 85, "type": "CURRENCY"}, {"currency": {"currencyCode": "icJODHFJ9bVAKwiG", "namespace": "Y1jYVwsRTLdsTzeb"}, "item": {"itemId": "njduoLzbSM5HANRR", "itemSku": "qEBTTSLfTWAUWpvx", "itemType": "BHklO0KCSZ39i6CN"}, "quantity": 45, "type": "CURRENCY"}, {"currency": {"currencyCode": "yBEY9IVlN5pKS53Z", "namespace": "pXzTEtjGtlSqHHFg"}, "item": {"itemId": "7A1mjZuEJZvH1ixd", "itemSku": "r5yfi9W2qk9pSSuJ", "itemType": "FUXMLjgvwNwvLfvb"}, "quantity": 48, "type": "ITEM"}], "source": "CONSUME_ENTITLEMENT", "transactionId": "Zl4qXAQr8acL0LQ4"}' \
    > test.out 2>&1
eval_tap $? 262 'FulfillRewards' test.out

#- 263 QueryUserIAPOrders
samples/cli/sample-apps Platform queryUserIAPOrders \
    --namespace $AB_NAMESPACE \
    --userId 'M21ba4mrlTOrNKI2' \
    --endTime 'IYkBtDIgH6fTsIzG' \
    --limit '19' \
    --offset '27' \
    --productId 'LQoysZiwYyGdXxbG' \
    --startTime 'NWIwZ9oKutGemjMb' \
    --status 'FULFILLED' \
    --type 'GOOGLE' \
    > test.out 2>&1
eval_tap $? 263 'QueryUserIAPOrders' test.out

#- 264 QueryAllUserIAPOrders
samples/cli/sample-apps Platform queryAllUserIAPOrders \
    --namespace $AB_NAMESPACE \
    --userId 'vpv9ut9pSyAIKxiN' \
    > test.out 2>&1
eval_tap $? 264 'QueryAllUserIAPOrders' test.out

#- 265 QueryUserIAPConsumeHistory
samples/cli/sample-apps Platform queryUserIAPConsumeHistory \
    --namespace $AB_NAMESPACE \
    --userId 'vmOJDZgLMerzh2OY' \
    --endTime 'f0tv4YcC0HNfvZqU' \
    --limit '58' \
    --offset '31' \
    --startTime 'bLmYtvTWUEHqzroB' \
    --status 'FAIL' \
    --type 'GOOGLE' \
    > test.out 2>&1
eval_tap $? 265 'QueryUserIAPConsumeHistory' test.out

#- 266 MockFulfillIAPItem
samples/cli/sample-apps Platform mockFulfillIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'Z7mUtEsfBVO2HJHt' \
    --body '{"itemIdentityType": "ITEM_SKU", "language": "HmOL", "productId": "QyAUDIlSVfKw3HUS", "region": "NQY9JOdJ0FZwklfv", "transactionId": "41zLbeJJIb9RYiPp", "type": "EPICGAMES"}' \
    > test.out 2>&1
eval_tap $? 266 'MockFulfillIAPItem' test.out

#- 267 QueryUserOrders
samples/cli/sample-apps Platform queryUserOrders \
    --namespace $AB_NAMESPACE \
    --userId 'Nh0bSLzQUyxUBUkg' \
    --itemId '4SzT8VvqzZJ7aAgw' \
    --limit '39' \
    --offset '24' \
    --status 'REFUNDED' \
    > test.out 2>&1
eval_tap $? 267 'QueryUserOrders' test.out

#- 268 AdminCreateUserOrder
samples/cli/sample-apps Platform adminCreateUserOrder \
    --namespace $AB_NAMESPACE \
    --userId 'KS0s3Pob6CV56l6J' \
    --body '{"currencyCode": "O995s4ed6QaBF1Ld", "currencyNamespace": "z631cdyE1Q5d7JiL", "discountedPrice": 41, "entitlementPlatform": "Other", "ext": {"kVTDZalHsr8dSKJ5": {}, "iVoSoKp5gi6c5Pcg": {}, "z9jfbbUD8LUE2zhK": {}}, "itemId": "fUbLaPjzDc6rRjT9", "language": "ry0MajDMHIx3DXHP", "options": {"skipPriceValidation": false}, "platform": "Other", "price": 3, "quantity": 61, "region": "eH2cBTAH2HlET1k0", "returnUrl": "ru37EdSUhNBVdbRl", "sandbox": false, "sectionId": "0Wa8hD5xoM08IjN9"}' \
    > test.out 2>&1
eval_tap $? 268 'AdminCreateUserOrder' test.out

#- 269 CountOfPurchasedItem
samples/cli/sample-apps Platform countOfPurchasedItem \
    --namespace $AB_NAMESPACE \
    --userId 'jdPxFyvPvKyG1H8K' \
    --itemId 'eat9W001kbpsvuug' \
    > test.out 2>&1
eval_tap $? 269 'CountOfPurchasedItem' test.out

#- 270 GetUserOrder
samples/cli/sample-apps Platform getUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'tFqCip462LnVLuFe' \
    --userId '0yn96ec3aL8Xr4CT' \
    > test.out 2>&1
eval_tap $? 270 'GetUserOrder' test.out

#- 271 UpdateUserOrderStatus
samples/cli/sample-apps Platform updateUserOrderStatus \
    --namespace $AB_NAMESPACE \
    --orderNo 'atF7ZKzB7o1VqeAt' \
    --userId 'bpsdrLCow1IDkrv4' \
    --body '{"status": "INIT", "statusReason": "UNt6Vt9dSPgAkr5j"}' \
    > test.out 2>&1
eval_tap $? 271 'UpdateUserOrderStatus' test.out

#- 272 FulfillUserOrder
samples/cli/sample-apps Platform fulfillUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo '4BVz6BoBI6JfDUxR' \
    --userId 'Nwba1zMT9xWEX7dz' \
    > test.out 2>&1
eval_tap $? 272 'FulfillUserOrder' test.out

#- 273 GetUserOrderGrant
samples/cli/sample-apps Platform getUserOrderGrant \
    --namespace $AB_NAMESPACE \
    --orderNo 'tVTFEb44s2kpcoPa' \
    --userId '7iJHhX8F9Z6Xf7rA' \
    > test.out 2>&1
eval_tap $? 273 'GetUserOrderGrant' test.out

#- 274 GetUserOrderHistories
samples/cli/sample-apps Platform getUserOrderHistories \
    --namespace $AB_NAMESPACE \
    --orderNo 'MUkkuwFRrxYMumHJ' \
    --userId 'C4zrfTPPxyYOYjoX' \
    > test.out 2>&1
eval_tap $? 274 'GetUserOrderHistories' test.out

#- 275 ProcessUserOrderNotification
samples/cli/sample-apps Platform processUserOrderNotification \
    --namespace $AB_NAMESPACE \
    --orderNo 'xpYtywazA3h6AQF6' \
    --userId 'DCDjrz87j0YmkAi4' \
    --body '{"additionalData": {"cardSummary": "Unl3GZkvY5sWPzCu"}, "authorisedTime": "1993-05-23T00:00:00Z", "chargebackReversedTime": "1987-02-25T00:00:00Z", "chargebackTime": "1980-04-16T00:00:00Z", "chargedTime": "1974-02-15T00:00:00Z", "createdTime": "1993-05-08T00:00:00Z", "currency": {"currencyCode": "DfmCPC74JeUMFAWZ", "currencySymbol": "7F52STqHVp5iC7mA", "currencyType": "REAL", "decimals": 1, "namespace": "jPJCtL8uCZe8UjeI"}, "customParameters": {"JvqEBSF1Esd0zBrj": {}, "Cx0QavR3UCZccueD": {}, "pdpOs1kAqRvRCpdk": {}}, "extOrderNo": "rEIEMt35HTxV1B1W", "extTxId": "QNcgmoerpC8VGynG", "extUserId": "HnIAlaSKiLDcipNe", "issuedAt": "1974-04-27T00:00:00Z", "metadata": {"FtSXvf9ysewE4B3n": "OsryNiyIglN4b9RE", "jndqBQjoWuoWAkTL": "qntanw0YEfqF4loH", "d5P0pMMKdLticPpw": "uuHdw9NcpNJEOqbn"}, "namespace": "fGuJ1wvkcUbbZ8SB", "nonceStr": "3wHjBXOhEPBoEwY2", "paymentMethod": "QroqFKPNJeMgQAcq", "paymentMethodFee": 12, "paymentOrderNo": "HIhLHwsdV7aWh0eu", "paymentProvider": "WALLET", "paymentProviderFee": 44, "paymentStationUrl": "3hRgLO4agTCPVZQi", "price": 70, "refundedTime": "1992-06-29T00:00:00Z", "salesTax": 76, "sandbox": false, "sku": "BhdpDT0SlSMNukgR", "status": "AUTHORISED", "statusReason": "l3TrhQWDXzwHbGai", "subscriptionId": "imLn06Bo6JNVMwAb", "subtotalPrice": 3, "targetNamespace": "V3B28g2NqlYD7kTk", "targetUserId": "XMJcRhK4EDwOcDiL", "tax": 11, "totalPrice": 97, "totalTax": 92, "txEndTime": "1977-02-23T00:00:00Z", "type": "hle3xkQXEXF56PPt", "userId": "VsHOrQ6GHZUdUtsR", "vat": 65}' \
    > test.out 2>&1
eval_tap $? 275 'ProcessUserOrderNotification' test.out

#- 276 DownloadUserOrderReceipt
samples/cli/sample-apps Platform downloadUserOrderReceipt \
    --namespace $AB_NAMESPACE \
    --orderNo 'EGsKud4A9q92uJAt' \
    --userId 'FODYKQD9x2PbBGBN' \
    > test.out 2>&1
eval_tap $? 276 'DownloadUserOrderReceipt' test.out

#- 277 CreateUserPaymentOrder
samples/cli/sample-apps Platform createUserPaymentOrder \
    --namespace $AB_NAMESPACE \
    --userId '5wqv63PjGa7FfJ2H' \
    --body '{"currencyCode": "GZ2Mycg4spe8Koiy", "currencyNamespace": "DR5ukDAY8nZ9QM3a", "customParameters": {"5WJMH5RocTXYhjyg": {}, "dtV6XswkVGLrc855": {}, "VTi1TbOJ3i1Un0cV": {}}, "description": "qmxLMqhMI2XyAVSZ", "extOrderNo": "grpE1XfLBUCjO1Ta", "extUserId": "HU46TEHWJCXXGlPb", "itemType": "CODE", "language": "HYH_033", "metadata": {"SWFXp032t0PFp7F1": "9IrwTQrGIECBnvN7", "u1JCtgHbxRQxhaka": "diV35B6NsPeh27Bm", "hWNjaLMD6CvTlFuq": "f8k3IyOkFKhSKQf5"}, "notifyUrl": "oNS8D7MlGeZSOdN5", "omitNotification": false, "platform": "JyUfF6k8MD5lKWDY", "price": 32, "recurringPaymentOrderNo": "LfvInOFHHrCc5xP7", "region": "kPpIAecNor5wwmOe", "returnUrl": "TsPn66kGt5jvyFr2", "sandbox": false, "sku": "dOYpip8INZIiSK1V", "subscriptionId": "xhKS2I6Cc6obNtsd", "title": "Zr9LY24T3qiwuiqi"}' \
    > test.out 2>&1
eval_tap $? 277 'CreateUserPaymentOrder' test.out

#- 278 RefundUserPaymentOrder
samples/cli/sample-apps Platform refundUserPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'GNHn3Kz3WGEvBpnn' \
    --userId 'ZRBIw510SQylXw4X' \
    --body '{"description": "dheCT1Er8nX3Qwc1"}' \
    > test.out 2>&1
eval_tap $? 278 'RefundUserPaymentOrder' test.out

#- 279 ApplyUserRedemption
samples/cli/sample-apps Platform applyUserRedemption \
    --namespace $AB_NAMESPACE \
    --userId 'rzbgTbuVp3z5xd0C' \
    --body '{"code": "WSGXqECWLvOiGeBm", "orderNo": "ZjpV21zuOWIAmTmR"}' \
    > test.out 2>&1
eval_tap $? 279 'ApplyUserRedemption' test.out

#- 280 DoRevocation
samples/cli/sample-apps Platform doRevocation \
    --namespace $AB_NAMESPACE \
    --userId 'sLvuwMhDRDgxhCx5' \
    --body '{"meta": {"noM3Cm8i95wRrSb1": {}, "2qGQM9elZ98iFr3B": {}, "bumcUM8xGzwX6VTE": {}}, "revokeEntries": [{"currency": {"balanceOrigin": "Playstation", "currencyCode": "Eivj2QHMGOcr8GO5", "namespace": "CepIDG3DYsWdCrUd"}, "entitlement": {"entitlementId": "8USu6zN9WRjC3mQg"}, "item": {"entitlementOrigin": "Playstation", "itemIdentity": "XefLTKrtkrauN266", "itemIdentityType": "ITEM_SKU", "origin": "GooglePlay"}, "quantity": 4, "type": "CURRENCY"}, {"currency": {"balanceOrigin": "Other", "currencyCode": "zTvF361lscoxLJI5", "namespace": "hRFKaFQJDtcqA7mW"}, "entitlement": {"entitlementId": "py52NMq6hpPmHMke"}, "item": {"entitlementOrigin": "GooglePlay", "itemIdentity": "roPkpBzvK1SEcKqx", "itemIdentityType": "ITEM_ID", "origin": "Other"}, "quantity": 80, "type": "CURRENCY"}, {"currency": {"balanceOrigin": "Nintendo", "currencyCode": "hVfq5q3oOju36Ut3", "namespace": "6QhQK8PeEtNQWikh"}, "entitlement": {"entitlementId": "B49slL0edmfkOQXZ"}, "item": {"entitlementOrigin": "GooglePlay", "itemIdentity": "joSc6obT4gyHHNh8", "itemIdentityType": "ITEM_ID", "origin": "Other"}, "quantity": 16, "type": "ITEM"}], "source": "IAP", "transactionId": "F1MhsVXBHOzOKoZ3"}' \
    > test.out 2>&1
eval_tap $? 280 'DoRevocation' test.out

#- 281 RegisterXblSessions
samples/cli/sample-apps Platform registerXblSessions \
    --namespace $AB_NAMESPACE \
    --userId 'eTsDrwir5yScDx4L' \
    --body '{"gameSessionId": "HMgmIXMS2Apx8fCy", "payload": {"ziam1kIT9bBquSPX": {}, "oobRlcfp02zu2lb8": {}, "rAczINZ0pb7RcNil": {}}, "scid": "0sHrX4FNRiTwkaRW", "sessionTemplateName": "BBLpjBYG69myYkMD"}' \
    > test.out 2>&1
eval_tap $? 281 'RegisterXblSessions' test.out

#- 282 QueryUserSubscriptions
samples/cli/sample-apps Platform queryUserSubscriptions \
    --namespace $AB_NAMESPACE \
    --userId 'klc5SWj2tf4HT9E8' \
    --chargeStatus 'CHARGE_FAILED' \
    --itemId 'mgLcpripTGg42Ayg' \
    --limit '48' \
    --offset '72' \
    --sku 'OXRKgvQk7cA4XV2Y' \
    --status 'EXPIRED' \
    --subscribedBy 'PLATFORM' \
    > test.out 2>&1
eval_tap $? 282 'QueryUserSubscriptions' test.out

#- 283 GetUserSubscriptionActivities
samples/cli/sample-apps Platform getUserSubscriptionActivities \
    --namespace $AB_NAMESPACE \
    --userId 'aZxUJHLzmjcAGiqx' \
    --excludeSystem 'true' \
    --limit '94' \
    --offset '47' \
    --subscriptionId 'a5JJ6eU5oP2iJpDt' \
    > test.out 2>&1
eval_tap $? 283 'GetUserSubscriptionActivities' test.out

#- 284 PlatformSubscribeSubscription
samples/cli/sample-apps Platform platformSubscribeSubscription \
    --namespace $AB_NAMESPACE \
    --userId '5rJGj4BOllazSf2K' \
    --body '{"grantDays": 2, "itemId": "1csOfWG5TwkaWEER", "language": "3k1cBccavFhUQ7jx", "reason": "915PUbj8alNckE6z", "region": "YB5admE93y2KJk1F", "source": "20xq1JZKbV8IAFyi"}' \
    > test.out 2>&1
eval_tap $? 284 'PlatformSubscribeSubscription' test.out

#- 285 CheckUserSubscriptionSubscribableByItemId
samples/cli/sample-apps Platform checkUserSubscriptionSubscribableByItemId \
    --namespace $AB_NAMESPACE \
    --userId '2BshOGuBjte4bubA' \
    --itemId '9YyNBJRCrwN3BScU' \
    > test.out 2>&1
eval_tap $? 285 'CheckUserSubscriptionSubscribableByItemId' test.out

#- 286 GetUserSubscription
samples/cli/sample-apps Platform getUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'hJ1V1JepHryDV8Sy' \
    --userId 'JRKU8xxPK2OucYZZ' \
    > test.out 2>&1
eval_tap $? 286 'GetUserSubscription' test.out

#- 287 DeleteUserSubscription
samples/cli/sample-apps Platform deleteUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'vYdpgjuxnYfPvcku' \
    --userId 'BC6mC6LCZoR4tzmf' \
    > test.out 2>&1
eval_tap $? 287 'DeleteUserSubscription' test.out

#- 288 CancelSubscription
samples/cli/sample-apps Platform cancelSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'Ws3uQjwPVC5OV3fI' \
    --userId 'TALHiYtR2vDiAe2Q' \
    --force 'false' \
    --body '{"immediate": true, "reason": "NAMmeszfwslfYtsk"}' \
    > test.out 2>&1
eval_tap $? 288 'CancelSubscription' test.out

#- 289 GrantDaysToSubscription
samples/cli/sample-apps Platform grantDaysToSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId '7MbRbEgDb8pRTxhb' \
    --userId '5wofIPz8yYOpCgO0' \
    --body '{"grantDays": 2, "reason": "PLJigmFTcDuG5AzV"}' \
    > test.out 2>&1
eval_tap $? 289 'GrantDaysToSubscription' test.out

#- 290 GetUserSubscriptionBillingHistories
samples/cli/sample-apps Platform getUserSubscriptionBillingHistories \
    --namespace $AB_NAMESPACE \
    --subscriptionId '6BrcL22BOQ3tG3cF' \
    --userId 'WHkSfPaBw5IF5FPa' \
    --excludeFree 'true' \
    --limit '48' \
    --offset '38' \
    > test.out 2>&1
eval_tap $? 290 'GetUserSubscriptionBillingHistories' test.out

#- 291 ProcessUserSubscriptionNotification
samples/cli/sample-apps Platform processUserSubscriptionNotification \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'tSOj1PwJ3CgBeF2Z' \
    --userId 'TCQnYMx8nHlvOB2y' \
    --body '{"additionalData": {"cardSummary": "xoPFOFqKsMtlc1if"}, "authorisedTime": "1979-08-25T00:00:00Z", "chargebackReversedTime": "1978-10-01T00:00:00Z", "chargebackTime": "1993-07-20T00:00:00Z", "chargedTime": "1986-08-03T00:00:00Z", "createdTime": "1997-02-09T00:00:00Z", "currency": {"currencyCode": "NYYnArvoRaN1Ddqi", "currencySymbol": "xfymGC3H2eE1nGDy", "currencyType": "REAL", "decimals": 87, "namespace": "GhAfI2O6DEnDcYUX"}, "customParameters": {"FslEEEOTEPWcK626": {}, "7zLxrFQV6KCaOTu1": {}, "EUCYIdpBBIz0KbCB": {}}, "extOrderNo": "arFOQtWUqf0Ys5aY", "extTxId": "OHSBdVsM6jqwl3UM", "extUserId": "ZvNKLeesftLhZD34", "issuedAt": "1998-08-24T00:00:00Z", "metadata": {"JZMwHXE6TTuOsRDq": "ELQQb4jSwMv0zOTs", "iBtizs5b08uSbFox": "3PnB8Q5EvMdCdfJE", "U7uSbv4uL3wleRrQ": "J4bw4R0GuiQBjszV"}, "namespace": "IXbrMWZeqaye37qA", "nonceStr": "CrAuj4xPxNtEhKo0", "paymentMethod": "n7SaGfUEHK6xBMEc", "paymentMethodFee": 75, "paymentOrderNo": "srklS2gCVLCN95yw", "paymentProvider": "WALLET", "paymentProviderFee": 18, "paymentStationUrl": "YRlVfcz6lSmN6x4d", "price": 86, "refundedTime": "1982-04-15T00:00:00Z", "salesTax": 29, "sandbox": false, "sku": "A54gfquWdPnV6tzu", "status": "CHARGED", "statusReason": "ljqE8hjIXTQ412h4", "subscriptionId": "5AKU5pwPJ4nIFUJ0", "subtotalPrice": 21, "targetNamespace": "7jPDmzBwTiDrYCvr", "targetUserId": "MuQjxENaj5Ubpj08", "tax": 12, "totalPrice": 31, "totalTax": 61, "txEndTime": "1978-11-17T00:00:00Z", "type": "dXX7fZgzEX8O0QZR", "userId": "OvTCAEVaXOygyJNU", "vat": 60}' \
    > test.out 2>&1
eval_tap $? 291 'ProcessUserSubscriptionNotification' test.out

#- 292 AcquireUserTicket
samples/cli/sample-apps Platform acquireUserTicket \
    --boothName 'SrJON3aXWkYwXXfA' \
    --namespace $AB_NAMESPACE \
    --userId 'tN1W1jQBPdqS7owN' \
    --body '{"count": 37, "orderNo": "ceihsKHl5tbHeOY4"}' \
    > test.out 2>&1
eval_tap $? 292 'AcquireUserTicket' test.out

#- 293 QueryUserCurrencyWallets
samples/cli/sample-apps Platform queryUserCurrencyWallets \
    --namespace $AB_NAMESPACE \
    --userId 'VDMrLJmAI5DWGlIn' \
    > test.out 2>&1
eval_tap $? 293 'QueryUserCurrencyWallets' test.out

#- 294 DebitUserWalletByCurrencyCode
samples/cli/sample-apps Platform debitUserWalletByCurrencyCode \
    --currencyCode '4faIVSQYfzH2cl5b' \
    --namespace $AB_NAMESPACE \
    --userId 'ncUdIFWIzIVQa0rM' \
    --body '{"allowOverdraft": true, "amount": 83, "balanceOrigin": "Steam", "balanceSource": "PAYMENT", "metadata": {"OvXsQIeW8oYypgUH": {}, "jF3V0YKZpZupSwcW": {}, "EJH1R2flcIEtuhpt": {}}, "reason": "b7dD9cZgdmj8byLk"}' \
    > test.out 2>&1
eval_tap $? 294 'DebitUserWalletByCurrencyCode' test.out

#- 295 ListUserCurrencyTransactions
samples/cli/sample-apps Platform listUserCurrencyTransactions \
    --currencyCode 'U1iuVr5bEt0CuMYy' \
    --namespace $AB_NAMESPACE \
    --userId 'I5nd9v31XVUp8TiU' \
    --limit '84' \
    --offset '72' \
    > test.out 2>&1
eval_tap $? 295 'ListUserCurrencyTransactions' test.out

#- 296 CheckBalance
samples/cli/sample-apps Platform checkBalance \
    --currencyCode 'F7VzsYDktrVIGN3g' \
    --namespace $AB_NAMESPACE \
    --userId 'N6VdMD1Mnpx3iBqQ' \
    --request '{"amount": 61, "debitBalanceSource": "TRADE", "metadata": {"8bZ4UpaBNbsuTtfv": {}, "5wg33KPd2bUUKQbk": {}, "HJHnW6dZ4Xazeeyg": {}}, "reason": "r3Av37WNCptwJYt3", "walletPlatform": "Nintendo"}' \
    > test.out 2>&1
eval_tap $? 296 'CheckBalance' test.out

#- 297 CheckWallet
eval_tap 0 297 'CheckWallet # SKIP deprecated' test.out

#- 298 CreditUserWallet
samples/cli/sample-apps Platform creditUserWallet \
    --currencyCode 'dcObBNyKCbbsfGFg' \
    --namespace $AB_NAMESPACE \
    --userId 'i0JY4O6ytSNQbwS5' \
    --body '{"amount": 60, "expireAt": "1974-07-13T00:00:00Z", "metadata": {"DciyaSJnfq4405DL": {}, "OkclDotdw9xu71Xs": {}, "lbYoPH6YM04FMAfW": {}}, "origin": "GooglePlay", "reason": "XlLsXZDcsucoqtMA", "source": "OTHER"}' \
    > test.out 2>&1
eval_tap $? 298 'CreditUserWallet' test.out

#- 299 DebitByWalletPlatform
samples/cli/sample-apps Platform debitByWalletPlatform \
    --currencyCode 'TqylX2pe0qF5RUYJ' \
    --namespace $AB_NAMESPACE \
    --userId 'lfZ9iIVzS5ZqN9V4' \
    --request '{"amount": 79, "debitBalanceSource": "ORDER_REVOCATION", "metadata": {"PXWGUqifyO9mcIiI": {}, "Yn2GEbCihzb6loP2": {}, "FFIr9T3EjCYY7nI3": {}}, "reason": "mEx2Gd8VHf5RthQi", "walletPlatform": "Playstation"}' \
    > test.out 2>&1
eval_tap $? 299 'DebitByWalletPlatform' test.out

#- 300 PayWithUserWallet
samples/cli/sample-apps Platform payWithUserWallet \
    --currencyCode 'uTcl46HdYK9IiDS0' \
    --namespace $AB_NAMESPACE \
    --userId 'gOdEtYaENet8QR6F' \
    --body '{"amount": 70, "metadata": {"NS8n9RVHm7MQ1qQn": {}, "KNgA63vLJM2NLhqj": {}, "6TfPBJ1OwQoSiMUZ": {}}, "walletPlatform": "Nintendo"}' \
    > test.out 2>&1
eval_tap $? 300 'PayWithUserWallet' test.out

#- 301 GetUserWallet
eval_tap 0 301 'GetUserWallet # SKIP deprecated' test.out

#- 302 DebitUserWallet
eval_tap 0 302 'DebitUserWallet # SKIP deprecated' test.out

#- 303 DisableUserWallet
eval_tap 0 303 'DisableUserWallet # SKIP deprecated' test.out

#- 304 EnableUserWallet
eval_tap 0 304 'EnableUserWallet # SKIP deprecated' test.out

#- 305 ListUserWalletTransactions
eval_tap 0 305 'ListUserWalletTransactions # SKIP deprecated' test.out

#- 306 ListViews
samples/cli/sample-apps Platform listViews \
    --namespace $AB_NAMESPACE \
    --storeId 'tpq1zRnm9wWqOtgl' \
    > test.out 2>&1
eval_tap $? 306 'ListViews' test.out

#- 307 CreateView
samples/cli/sample-apps Platform createView \
    --namespace $AB_NAMESPACE \
    --storeId 'pEnAmeOmE7CUA4iG' \
    --body '{"displayOrder": 57, "localizations": {"rR2n3Y68n0QZ6g5c": {"description": "JTpT9ElQppwnpyUg", "localExt": {"P3cIdmVzs9yMCJNH": {}, "uiyco4z5qM9IUZXN": {}, "kVqnnpbq5xAf1g9A": {}}, "longDescription": "5QTObugYR1xUUiZ0", "title": "uWJhymCkOBco2gPi"}, "rZkmsA7WIYg6rDF2": {"description": "Hv5uO9W31gHlkF4D", "localExt": {"FPWoMzrGQxwrMfLf": {}, "oiZTn9l9fFdLJde2": {}, "1M0shzNf0mOhyvsz": {}}, "longDescription": "MHdRHkbbG0XoFy1h", "title": "QdJ1Aqn8SBdQWEnm"}, "uMGLnyPId2j3y5Gm": {"description": "25eO1TJXlH3I4qYS", "localExt": {"HHpFSvVd316nQIwy": {}, "xH8ZuYAWtwyJbOS1": {}, "QSSVdGhxGB3Nt03k": {}}, "longDescription": "crMgeB1m8TInIuBY", "title": "ChZ90pqMSrXtxagC"}}, "name": "gU0DACvgcbOJyeSO"}' \
    > test.out 2>&1
eval_tap $? 307 'CreateView' test.out

#- 308 GetView
samples/cli/sample-apps Platform getView \
    --namespace $AB_NAMESPACE \
    --viewId 'UCzJHTeQeylMiSnx' \
    --storeId 'frlN7Xh0IAKxLhtf' \
    > test.out 2>&1
eval_tap $? 308 'GetView' test.out

#- 309 UpdateView
samples/cli/sample-apps Platform updateView \
    --namespace $AB_NAMESPACE \
    --viewId 'Ok10BZt11MtAgML5' \
    --storeId 'xsljD6X7W42sZzUj' \
    --body '{"displayOrder": 79, "localizations": {"lT3POnoDu8EDbW81": {"description": "oHJLpHbIECKwFdqM", "localExt": {"HwZSoKuVqYCFmddE": {}, "mIKHlhBzUSqcnPhY": {}, "qxDFdnVuErjjKvLt": {}}, "longDescription": "IDzFYSW9xj1Wfi6y", "title": "5dzphJCmbabSUhWS"}, "oOfh1hlJydJwVfPB": {"description": "JeKN0hk6i5T8g3WL", "localExt": {"8vXxyvlr1bhN56SE": {}, "LJmTlXw8XiI9ku84": {}, "3oGKZGJrLYwDWOGj": {}}, "longDescription": "HdzdXrFCNMqsDOHm", "title": "2nmp97NiRoanQnCY"}, "LpVZuRtsMU71ULON": {"description": "VNIKZ1cn1ubJvui1", "localExt": {"uS3zyC2eSnLtMDiM": {}, "0flKyfMo87BigejZ": {}, "FchLvnGLjj75yX3T": {}}, "longDescription": "dqyd5L2XT8PpTKMJ", "title": "kBQlC5kkAM4cvYpy"}}, "name": "KH7vFhevbi9EAdyG"}' \
    > test.out 2>&1
eval_tap $? 309 'UpdateView' test.out

#- 310 DeleteView
samples/cli/sample-apps Platform deleteView \
    --namespace $AB_NAMESPACE \
    --viewId '9TlgArKdhBViVmLR' \
    --storeId 'Y6pQAqlNn9xxPs28' \
    > test.out 2>&1
eval_tap $? 310 'DeleteView' test.out

#- 311 QueryWallets
eval_tap 0 311 'QueryWallets # SKIP deprecated' test.out

#- 312 BulkCredit
samples/cli/sample-apps Platform bulkCredit \
    --namespace $AB_NAMESPACE \
    --body '[{"creditRequest": {"amount": 78, "expireAt": "1975-04-03T00:00:00Z", "metadata": {"O2PvcHMAG3x8YctK": {}, "rwcAlLt0Om1jMNZx": {}, "3TYAgWWCyDzMGBu1": {}}, "origin": "Twitch", "reason": "bJl3u9SJmBgXIbND", "source": "REFERRAL_BONUS"}, "currencyCode": "vh8MntQy2HqZoX2b", "userIds": ["EuGd3ZeundmveOIn", "qCRoLfKxBQifThLF", "dqjn3aDD9kmtB7vV"]}, {"creditRequest": {"amount": 82, "expireAt": "1986-03-18T00:00:00Z", "metadata": {"JfakuUMtOnnOJmne": {}, "hqOdAB4YD9gIUwSA": {}, "6ylgmP0z2xpFlZjF": {}}, "origin": "IOS", "reason": "o0ugaPbhrY1IGzLx", "source": "CONSUME_ENTITLEMENT"}, "currencyCode": "RHHUQc2zViboadyC", "userIds": ["qishvqnmi9nzqYoN", "LugM8d1QnSgtITTC", "xvErzN7UYdQQnmZ0"]}, {"creditRequest": {"amount": 25, "expireAt": "1999-10-03T00:00:00Z", "metadata": {"F4wj2xUR3L9Vqcly": {}, "9uXQQTRUoe3DvmWq": {}, "rkywacNqXzYCHzMO": {}}, "origin": "Xbox", "reason": "o71THFbzV6ueRaXb", "source": "REFUND"}, "currencyCode": "Dr4vJvMG8aPBnToP", "userIds": ["laSgZWOBxRr8ljDm", "gkPo6oBnMpSnZOqU", "9WIBtd6PTVIe8UNd"]}]' \
    > test.out 2>&1
eval_tap $? 312 'BulkCredit' test.out

#- 313 BulkDebit
samples/cli/sample-apps Platform bulkDebit \
    --namespace $AB_NAMESPACE \
    --body '[{"currencyCode": "85ODZLAHGiE7hpQ5", "request": {"allowOverdraft": true, "amount": 69, "balanceOrigin": "Steam", "balanceSource": "ORDER_REVOCATION", "metadata": {"mEV7PB9sEOF5a6b6": {}, "u9Adnl5APQQ2k4nZ": {}, "aR7ZxOH9jJGrKOi8": {}}, "reason": "B8Syhnec28Gbd6Mo"}, "userIds": ["Fe9wUuziXuJ8fX8W", "ToUCRbkP32RsEUl9", "4AyhIpVX5M29xNbX"]}, {"currencyCode": "nzBFyk62A5YFvqLj", "request": {"allowOverdraft": false, "amount": 30, "balanceOrigin": "Steam", "balanceSource": "TRADE", "metadata": {"zBRALJpHWswKpk2n": {}, "Vv9IvVICjB6vp2f3": {}, "buNm1MShbU2Iksn9": {}}, "reason": "smmBKNfTuxiaLY5g"}, "userIds": ["44opandos0yCvbBg", "CeXtOGVAfhuWhJ0D", "IlTwjf6ii3J6o2yS"]}, {"currencyCode": "mkdVkBbcgCrlla8F", "request": {"allowOverdraft": true, "amount": 57, "balanceOrigin": "Epic", "balanceSource": "DLC_REVOCATION", "metadata": {"PC7VybVRTnAtZrug": {}, "lRvNEuAqeTzvTLwA": {}, "43ZwwBzzrqtQnJdt": {}}, "reason": "cYOoiSBU8LXd2yGw"}, "userIds": ["DE9m3oZ734OAUhMR", "hoxdQJoaWAkxSyH2", "IlzS328aVEIbEggF"]}]' \
    > test.out 2>&1
eval_tap $? 313 'BulkDebit' test.out

#- 314 GetWallet
eval_tap 0 314 'GetWallet # SKIP deprecated' test.out

#- 315 SyncOrders
samples/cli/sample-apps Platform syncOrders \
    --nextEvaluatedKey 'd9uahjoHyrPl87q9' \
    --end '5aPkYGYXvz6vp0h7' \
    --start '9FnCSjSRiVUiZcq9' \
    > test.out 2>&1
eval_tap $? 315 'SyncOrders' test.out

#- 316 TestAdyenConfig
samples/cli/sample-apps Platform testAdyenConfig \
    --sandbox 'false' \
    --body '{"allowedPaymentMethods": ["nABa42P86KpuPAf1", "1o5mzNJl4vDySAIF", "1vzoVPTKuTIBERYp"], "apiKey": "u5MPMczQSWN1yIwC", "authoriseAsCapture": false, "blockedPaymentMethods": ["Gd5Q8ZZGw2lgLtfN", "sPU5LFDHL1b8omyw", "VSCC8fZoOvAEzFyf"], "clientKey": "Y7ezJrfr0zBj0A0Z", "dropInSettings": "YiNpw4CmUU85tMeO", "liveEndpointUrlPrefix": "hC2vw6aDby4kL0I2", "merchantAccount": "bmfb0UJvEUjIMav0", "notificationHmacKey": "BQZSFXTeejEZ8UkL", "notificationPassword": "YmfS8qfO59zyhGMM", "notificationUsername": "Ga0xuSchgp3rY8ny", "returnUrl": "WGwzYphHSrjfRHxk", "settings": "oEgdLwtu6e6RHbrf"}' \
    > test.out 2>&1
eval_tap $? 316 'TestAdyenConfig' test.out

#- 317 TestAliPayConfig
samples/cli/sample-apps Platform testAliPayConfig \
    --sandbox 'false' \
    --body '{"appId": "Pzwf4CzVdy6ZoAua", "privateKey": "5DHF9fFo8yQn07K6", "publicKey": "pW1wyWKU0mVFGWuy", "returnUrl": "08BT5Fxd4wKFWXna"}' \
    > test.out 2>&1
eval_tap $? 317 'TestAliPayConfig' test.out

#- 318 TestCheckoutConfig
samples/cli/sample-apps Platform testCheckoutConfig \
    --sandbox 'false' \
    --body '{"publicKey": "Gpm1AMC4V77sbhFw", "secretKey": "OT1RzbzE1qpje4ML"}' \
    > test.out 2>&1
eval_tap $? 318 'TestCheckoutConfig' test.out

#- 319 DebugMatchedPaymentMerchantConfig
samples/cli/sample-apps Platform debugMatchedPaymentMerchantConfig \
    --namespace 'luVLJ0WRpFr3M5Qd' \
    --region 'h6eICNQtKsxmLLx9' \
    > test.out 2>&1
eval_tap $? 319 'DebugMatchedPaymentMerchantConfig' test.out

#- 320 TestPayPalConfig
samples/cli/sample-apps Platform testPayPalConfig \
    --sandbox 'true' \
    --body '{"clientID": "7kdp4lrPGzZcdVQb", "clientSecret": "YhMhzyz7HbXxUd1K", "returnUrl": "ua6aBHqN3OAgvetu", "webHookId": "wc96dvQMCMOyWxQ8"}' \
    > test.out 2>&1
eval_tap $? 320 'TestPayPalConfig' test.out

#- 321 TestStripeConfig
samples/cli/sample-apps Platform testStripeConfig \
    --sandbox 'false' \
    --body '{"allowedPaymentMethodTypes": ["dSA7FcOAAOsCv23S", "3LDsXWG4c1sVgCU4", "DpBs4tWHkCoQ9YxU"], "publishableKey": "kDFwdQMoIgQdE0ac", "secretKey": "4nN4eElkTaVw79YD", "webhookSecret": "iAhSPwvSsDXUcHTu"}' \
    > test.out 2>&1
eval_tap $? 321 'TestStripeConfig' test.out

#- 322 TestWxPayConfig
samples/cli/sample-apps Platform testWxPayConfig \
    --body '{"appId": "BMBwfqsRB8wHeo1p", "key": "OtjSItWuFiWRdA5n", "mchid": "dGUhajQrI0Z9YJ4a", "returnUrl": "NniM9uMLabigxZi7"}' \
    > test.out 2>&1
eval_tap $? 322 'TestWxPayConfig' test.out

#- 323 TestXsollaConfig
samples/cli/sample-apps Platform testXsollaConfig \
    --body '{"apiKey": "5cbVvXqCwSWekxV3", "flowCompletionUrl": "kQBNCG6mI3nxdA2v", "merchantId": 25, "projectId": 71, "projectSecretKey": "heCu3SiGI700ZcLZ"}' \
    > test.out 2>&1
eval_tap $? 323 'TestXsollaConfig' test.out

#- 324 GetPaymentMerchantConfig
samples/cli/sample-apps Platform getPaymentMerchantConfig \
    --id '5PIL0E9A2VGwtOEy' \
    > test.out 2>&1
eval_tap $? 324 'GetPaymentMerchantConfig' test.out

#- 325 UpdateAdyenConfig
samples/cli/sample-apps Platform updateAdyenConfig \
    --id 'yD9HCku46JqqErOM' \
    --sandbox 'false' \
    --validate 'false' \
    --body '{"allowedPaymentMethods": ["aHbk1tuAi0pUJv1O", "fpBjaGG1RnTrxIVK", "G2jyuB7P5eVAKB86"], "apiKey": "E9xQG6JLFmz5n16K", "authoriseAsCapture": true, "blockedPaymentMethods": ["1wHs4SVjUyr5Xhx2", "VCAH1WDpFswm3YKX", "wuArkl4qCTOqIQqj"], "clientKey": "6ay1uxjh6yuU17KJ", "dropInSettings": "j9gfPjl2pGGXHqSR", "liveEndpointUrlPrefix": "gnADrJ2qV63t1FzI", "merchantAccount": "fVeMhKt7vAxaAEQ9", "notificationHmacKey": "4L5AL02XilIZ4Xsq", "notificationPassword": "pinHzte25eP3iPdU", "notificationUsername": "DQtcGHbg5Ofj5VMR", "returnUrl": "xGBar5sLIOk7EIhB", "settings": "e63WXdCM3vT3PT6o"}' \
    > test.out 2>&1
eval_tap $? 325 'UpdateAdyenConfig' test.out

#- 326 TestAdyenConfigById
samples/cli/sample-apps Platform testAdyenConfigById \
    --id '3t26UYhCHR34GXYK' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 326 'TestAdyenConfigById' test.out

#- 327 UpdateAliPayConfig
samples/cli/sample-apps Platform updateAliPayConfig \
    --id 'qjtS46HgB6v6xD16' \
    --sandbox 'true' \
    --validate 'false' \
    --body '{"appId": "QfOoV9iwxtFfAW1m", "privateKey": "EpcAVFLUIxqjQ6Pb", "publicKey": "6E8coFOUkKsuKVXQ", "returnUrl": "lPjOmBsJbpenrZyO"}' \
    > test.out 2>&1
eval_tap $? 327 'UpdateAliPayConfig' test.out

#- 328 TestAliPayConfigById
samples/cli/sample-apps Platform testAliPayConfigById \
    --id 'ZcN6XVnvbt64JxVF' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 328 'TestAliPayConfigById' test.out

#- 329 UpdateCheckoutConfig
samples/cli/sample-apps Platform updateCheckoutConfig \
    --id 'UsIjQxE2ztFkXE8O' \
    --sandbox 'false' \
    --validate 'true' \
    --body '{"publicKey": "Resr2jJGycYRdet0", "secretKey": "G7s4rxwHR1q0I4bo"}' \
    > test.out 2>&1
eval_tap $? 329 'UpdateCheckoutConfig' test.out

#- 330 TestCheckoutConfigById
samples/cli/sample-apps Platform testCheckoutConfigById \
    --id 'bc1055rOrNJVt8NG' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 330 'TestCheckoutConfigById' test.out

#- 331 UpdatePayPalConfig
samples/cli/sample-apps Platform updatePayPalConfig \
    --id 'VcN86uS5CD3aC0tl' \
    --sandbox 'false' \
    --validate 'false' \
    --body '{"clientID": "xLgx48r3kr3K7VnM", "clientSecret": "tTU8xv1t8v5OK1vZ", "returnUrl": "2JD25TiTg7HHLeas", "webHookId": "H5DWTuY1HctXcFN0"}' \
    > test.out 2>&1
eval_tap $? 331 'UpdatePayPalConfig' test.out

#- 332 TestPayPalConfigById
samples/cli/sample-apps Platform testPayPalConfigById \
    --id '2Q3eTCaF4ci4OQgT' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 332 'TestPayPalConfigById' test.out

#- 333 UpdateStripeConfig
samples/cli/sample-apps Platform updateStripeConfig \
    --id 'xWHQcqecO0VJKRTQ' \
    --sandbox 'true' \
    --validate 'true' \
    --body '{"allowedPaymentMethodTypes": ["JFzeafktYz4XcOwp", "KZYXW5Ou81RuJYJi", "S4aikZbdsSUyhpUl"], "publishableKey": "eYRKC0eKXEwkk01L", "secretKey": "l9pcgljB28fKTAWV", "webhookSecret": "L95oZNLSX4HOjisC"}' \
    > test.out 2>&1
eval_tap $? 333 'UpdateStripeConfig' test.out

#- 334 TestStripeConfigById
samples/cli/sample-apps Platform testStripeConfigById \
    --id 'jldhCYw2iUTSbAo7' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 334 'TestStripeConfigById' test.out

#- 335 UpdateWxPayConfig
samples/cli/sample-apps Platform updateWxPayConfig \
    --id 'wyRmIApjBvfHgjhq' \
    --validate 'true' \
    --body '{"appId": "1ivaAu3IAA9oAKXV", "key": "FHNsVAH0t3KtZ1BW", "mchid": "edUH9b6ZLY64j6ix", "returnUrl": "Pl5TA2ODwhBhEggR"}' \
    > test.out 2>&1
eval_tap $? 335 'UpdateWxPayConfig' test.out

#- 336 UpdateWxPayConfigCert
samples/cli/sample-apps Platform updateWxPayConfigCert \
    --id 'jtc2ybpTvPBRqRS5' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 336 'UpdateWxPayConfigCert' test.out

#- 337 TestWxPayConfigById
samples/cli/sample-apps Platform testWxPayConfigById \
    --id 'YcKXlnT9bvWz4EMg' \
    > test.out 2>&1
eval_tap $? 337 'TestWxPayConfigById' test.out

#- 338 UpdateXsollaConfig
samples/cli/sample-apps Platform updateXsollaConfig \
    --id 'T11C7z593BRC3f5i' \
    --validate 'false' \
    --body '{"apiKey": "qKJdqObYvsfFmUtM", "flowCompletionUrl": "CsBzqQa5HWTmleTO", "merchantId": 69, "projectId": 91, "projectSecretKey": "VDio3K7JRhmPpIgu"}' \
    > test.out 2>&1
eval_tap $? 338 'UpdateXsollaConfig' test.out

#- 339 TestXsollaConfigById
samples/cli/sample-apps Platform testXsollaConfigById \
    --id 'W6mMJTAfpFCTrlP1' \
    > test.out 2>&1
eval_tap $? 339 'TestXsollaConfigById' test.out

#- 340 UpdateXsollaUIConfig
samples/cli/sample-apps Platform updateXsollaUIConfig \
    --id '8ownM3VP2XohqzUz' \
    --body '{"device": "DESKTOP", "showCloseButton": false, "size": "SMALL", "theme": "DEFAULT_DARK"}' \
    > test.out 2>&1
eval_tap $? 340 'UpdateXsollaUIConfig' test.out

#- 341 QueryPaymentProviderConfig
samples/cli/sample-apps Platform queryPaymentProviderConfig \
    --limit '97' \
    --namespace 'WTbo062EiK2QGkD4' \
    --offset '21' \
    --region 'vINjInUVqi70wM6F' \
    > test.out 2>&1
eval_tap $? 341 'QueryPaymentProviderConfig' test.out

#- 342 CreatePaymentProviderConfig
samples/cli/sample-apps Platform createPaymentProviderConfig \
    --body '{"aggregate": "ADYEN", "namespace": "jYxp0BRV1e7BTLCB", "region": "2Pn0Pli3mSm4wIGL", "sandboxTaxJarApiToken": "JPYk9H0JLNq2KPJS", "specials": ["STRIPE", "PAYPAL", "ADYEN"], "taxJarApiToken": "UFHnukxIjilEEIN4", "taxJarEnabled": false, "useGlobalTaxJarApiToken": false}' \
    > test.out 2>&1
eval_tap $? 342 'CreatePaymentProviderConfig' test.out

#- 343 GetAggregatePaymentProviders
samples/cli/sample-apps Platform getAggregatePaymentProviders \
    > test.out 2>&1
eval_tap $? 343 'GetAggregatePaymentProviders' test.out

#- 344 DebugMatchedPaymentProviderConfig
samples/cli/sample-apps Platform debugMatchedPaymentProviderConfig \
    --namespace 'QdKj03BBS6Kr0mEy' \
    --region 'GajHXCIY73BmDjLY' \
    > test.out 2>&1
eval_tap $? 344 'DebugMatchedPaymentProviderConfig' test.out

#- 345 GetSpecialPaymentProviders
samples/cli/sample-apps Platform getSpecialPaymentProviders \
    > test.out 2>&1
eval_tap $? 345 'GetSpecialPaymentProviders' test.out

#- 346 UpdatePaymentProviderConfig
samples/cli/sample-apps Platform updatePaymentProviderConfig \
    --id 'nLtYFQdEVF4e5vN1' \
    --body '{"aggregate": "XSOLLA", "namespace": "mT4loIUV0JBW4hWj", "region": "AMtlriR2buLxriBX", "sandboxTaxJarApiToken": "YKKuqkUlX6ICJAuI", "specials": ["CHECKOUT", "PAYPAL", "WALLET"], "taxJarApiToken": "zy3aMHof6mnkKVNd", "taxJarEnabled": true, "useGlobalTaxJarApiToken": false}' \
    > test.out 2>&1
eval_tap $? 346 'UpdatePaymentProviderConfig' test.out

#- 347 DeletePaymentProviderConfig
samples/cli/sample-apps Platform deletePaymentProviderConfig \
    --id '0KHHQE0EfCfco3SF' \
    > test.out 2>&1
eval_tap $? 347 'DeletePaymentProviderConfig' test.out

#- 348 GetPaymentTaxConfig
samples/cli/sample-apps Platform getPaymentTaxConfig \
    > test.out 2>&1
eval_tap $? 348 'GetPaymentTaxConfig' test.out

#- 349 UpdatePaymentTaxConfig
samples/cli/sample-apps Platform updatePaymentTaxConfig \
    --body '{"sandboxTaxJarApiToken": "Nrve22AkZEFHIuOr", "taxJarApiToken": "9QSbYEyqHeA4wInJ", "taxJarEnabled": false, "taxJarProductCodesMapping": {"cCfh26B08yilm3nC": "JsMQhjY1Wu7jFOTc", "640rbqoQp6tgnUdM": "vTB6jzr65YxTPdOE", "sEQsJPDscpWU6ANo": "tVA71UBpqgtxTKEQ"}}' \
    > test.out 2>&1
eval_tap $? 349 'UpdatePaymentTaxConfig' test.out

#- 350 SyncPaymentOrders
samples/cli/sample-apps Platform syncPaymentOrders \
    --nextEvaluatedKey 'K3aLRe6JjOi3Vlry' \
    --end 'krtwHW1BnjBNpK1K' \
    --start '5iQO6EJFexupTUQB' \
    > test.out 2>&1
eval_tap $? 350 'SyncPaymentOrders' test.out

#- 351 PublicGetRootCategories
samples/cli/sample-apps Platform publicGetRootCategories \
    --namespace $AB_NAMESPACE \
    --language 'KJCghIg6lOsqDWbA' \
    --storeId 'Makxg9EB5W4UwIBm' \
    > test.out 2>&1
eval_tap $? 351 'PublicGetRootCategories' test.out

#- 352 DownloadCategories
samples/cli/sample-apps Platform downloadCategories \
    --namespace $AB_NAMESPACE \
    --language '6w1g0jOXOCLb2YzP' \
    --storeId 'wbXZ1CLDuMHH4bc7' \
    > test.out 2>&1
eval_tap $? 352 'DownloadCategories' test.out

#- 353 PublicGetCategory
samples/cli/sample-apps Platform publicGetCategory \
    --categoryPath 'w2v4vZ58dPaPlYLR' \
    --namespace $AB_NAMESPACE \
    --language 'ZJmf5oJv70H2LNkg' \
    --storeId 'x76lfO8hz9goYKmO' \
    > test.out 2>&1
eval_tap $? 353 'PublicGetCategory' test.out

#- 354 PublicGetChildCategories
samples/cli/sample-apps Platform publicGetChildCategories \
    --categoryPath 'u0zv2Hs1Af2pZz7M' \
    --namespace $AB_NAMESPACE \
    --language 'ZgcCOYdt1a2vOegV' \
    --storeId '0kpn2PlAg1axGisy' \
    > test.out 2>&1
eval_tap $? 354 'PublicGetChildCategories' test.out

#- 355 PublicGetDescendantCategories
samples/cli/sample-apps Platform publicGetDescendantCategories \
    --categoryPath 'vCOmhKvpbnM8OsUN' \
    --namespace $AB_NAMESPACE \
    --language 'lpaS3jF2ZIIR3v3W' \
    --storeId 'BFNrjl3Jsepr7eLF' \
    > test.out 2>&1
eval_tap $? 355 'PublicGetDescendantCategories' test.out

#- 356 PublicListCurrencies
samples/cli/sample-apps Platform publicListCurrencies \
    --namespace $AB_NAMESPACE \
    --currencyType 'REAL' \
    > test.out 2>&1
eval_tap $? 356 'PublicListCurrencies' test.out

#- 357 GeDLCDurableRewardShortMap
samples/cli/sample-apps Platform geDLCDurableRewardShortMap \
    --namespace $AB_NAMESPACE \
    --dlcType 'PSN' \
    > test.out 2>&1
eval_tap $? 357 'GeDLCDurableRewardShortMap' test.out

#- 358 GetIAPItemMapping
samples/cli/sample-apps Platform getIAPItemMapping \
    --namespace $AB_NAMESPACE \
    --platform 'APPLE' \
    > test.out 2>&1
eval_tap $? 358 'GetIAPItemMapping' test.out

#- 359 PublicGetItemByAppId
samples/cli/sample-apps Platform publicGetItemByAppId \
    --namespace $AB_NAMESPACE \
    --language 'CkgwTqOUlsWbe6cb' \
    --region 'qIPKXbm4uVPhUnjS' \
    --storeId '1IT1jleI619kip5Z' \
    --appId 'm6hUe2VQtypOXZEZ' \
    > test.out 2>&1
eval_tap $? 359 'PublicGetItemByAppId' test.out

#- 360 PublicQueryItems
samples/cli/sample-apps Platform publicQueryItems \
    --namespace $AB_NAMESPACE \
    --appType 'DLC' \
    --autoCalcEstimatedPrice 'true' \
    --baseAppId 'O4658jBE9JPD0Aly' \
    --categoryPath 'pOjEjv201C1JIJAI' \
    --features 'wmd7V5Ay0VrMQKgl' \
    --includeSubCategoryItem 'false' \
    --itemType 'INGAMEITEM' \
    --language 'ZSBbwbOMfqWI0bJX' \
    --limit '33' \
    --offset '48' \
    --region 'EpJxHFeViPXGTX7c' \
    --sortBy '["displayOrder:desc", "name", "createdAt:asc"]' \
    --storeId 'tOCyQ6Bxv5jVLg6e' \
    --tags '4L3RoBfb4KVd1PK2' \
    > test.out 2>&1
eval_tap $? 360 'PublicQueryItems' test.out

#- 361 PublicGetItemBySku
samples/cli/sample-apps Platform publicGetItemBySku \
    --namespace $AB_NAMESPACE \
    --autoCalcEstimatedPrice 'true' \
    --language 'UQd7OLP7w1K9VYmf' \
    --region 'eN7LupghZkViWQKq' \
    --storeId 'Q25N3c9CJOpwx30T' \
    --sku '1n8B3yHQAOH6iMQG' \
    > test.out 2>&1
eval_tap $? 361 'PublicGetItemBySku' test.out

#- 362 PublicGetEstimatedPrice
samples/cli/sample-apps Platform publicGetEstimatedPrice \
    --namespace $AB_NAMESPACE \
    --region 'Ug0HT8tv0TAs180j' \
    --storeId '29HteG1aCZQ19us3' \
    --itemIds '9O4cVMTlTycr8x85' \
    > test.out 2>&1
eval_tap $? 362 'PublicGetEstimatedPrice' test.out

#- 363 PublicBulkGetItems
samples/cli/sample-apps Platform publicBulkGetItems \
    --namespace $AB_NAMESPACE \
    --autoCalcEstimatedPrice 'false' \
    --language 'TvOroGgGdJBvuWq8' \
    --region 'GC9trRcKsQjMVZKv' \
    --storeId '1TYhPLSGXfRsNXaH' \
    --itemIds 'ueyfPM2pi6ZBeJo5' \
    > test.out 2>&1
eval_tap $? 363 'PublicBulkGetItems' test.out

#- 364 PublicValidateItemPurchaseCondition
samples/cli/sample-apps Platform publicValidateItemPurchaseCondition \
    --namespace $AB_NAMESPACE \
    --body '{"itemIds": ["zOTVwzTmjEuZN2WC", "OJqFzt237kZ2l5G7", "AR7XR1llnWulDMci"]}' \
    > test.out 2>&1
eval_tap $? 364 'PublicValidateItemPurchaseCondition' test.out

#- 365 PublicSearchItems
samples/cli/sample-apps Platform publicSearchItems \
    --namespace $AB_NAMESPACE \
    --autoCalcEstimatedPrice 'true' \
    --itemType 'BUNDLE' \
    --limit '89' \
    --offset '9' \
    --region '1F0ZU2rJFqaOzUg6' \
    --storeId 'ANoQJwa5rRppmYZw' \
    --keyword 'lPnsLh6I4VIUgcAD' \
    --language 'ENGsg60lgPrssshM' \
    > test.out 2>&1
eval_tap $? 365 'PublicSearchItems' test.out

#- 366 PublicGetApp
samples/cli/sample-apps Platform publicGetApp \
    --itemId 'Bp1cFAGzoTixhKWo' \
    --namespace $AB_NAMESPACE \
    --language 'jqtin6A9oIOQl8B3' \
    --region 'KGtriEasMdf9z49e' \
    --storeId 'mkvmXU6tBcfeglnt' \
    > test.out 2>&1
eval_tap $? 366 'PublicGetApp' test.out

#- 367 PublicGetItemDynamicData
samples/cli/sample-apps Platform publicGetItemDynamicData \
    --itemId 'skdv1CUwUgKvjwEz' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 367 'PublicGetItemDynamicData' test.out

#- 368 PublicGetItem
samples/cli/sample-apps Platform publicGetItem \
    --itemId '6NHwUsP4vO47lcG1' \
    --namespace $AB_NAMESPACE \
    --autoCalcEstimatedPrice 'true' \
    --language 'ldtEPPcnLEf83eVA' \
    --populateBundle 'false' \
    --region '5VmvzwUjsUiFAwaK' \
    --storeId 'oJWFsub4SyYGgiZg' \
    > test.out 2>&1
eval_tap $? 368 'PublicGetItem' test.out

#- 369 GetPaymentCustomization
eval_tap 0 369 'GetPaymentCustomization # SKIP deprecated' test.out

#- 370 PublicGetPaymentUrl
samples/cli/sample-apps Platform publicGetPaymentUrl \
    --namespace $AB_NAMESPACE \
    --body '{"paymentOrderNo": "TRKM8w6LWvtmcZKr", "paymentProvider": "ALIPAY", "returnUrl": "OEzW8hmejEk5KbIq", "ui": "bF6ext2mDHCIjBqT", "zipCode": "v9BX4wn1xUcYcGWt"}' \
    > test.out 2>&1
eval_tap $? 370 'PublicGetPaymentUrl' test.out

#- 371 PublicGetPaymentMethods
samples/cli/sample-apps Platform publicGetPaymentMethods \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo '2Vnfkwgtz7xkqyy1' \
    > test.out 2>&1
eval_tap $? 371 'PublicGetPaymentMethods' test.out

#- 372 PublicGetUnpaidPaymentOrder
samples/cli/sample-apps Platform publicGetUnpaidPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'QuIUjPlKxseKaUKV' \
    > test.out 2>&1
eval_tap $? 372 'PublicGetUnpaidPaymentOrder' test.out

#- 373 Pay
samples/cli/sample-apps Platform pay \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'z8zDmEqVyOLRM1sC' \
    --paymentProvider 'STRIPE' \
    --zipCode 'pfmvyfxG3oFWJd4N' \
    --body '{"token": "VcrHEKCskXu9qXZc"}' \
    > test.out 2>&1
eval_tap $? 373 'Pay' test.out

#- 374 PublicCheckPaymentOrderPaidStatus
samples/cli/sample-apps Platform publicCheckPaymentOrderPaidStatus \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'A9COTGkD1Wu6mIlO' \
    > test.out 2>&1
eval_tap $? 374 'PublicCheckPaymentOrderPaidStatus' test.out

#- 375 GetPaymentPublicConfig
samples/cli/sample-apps Platform getPaymentPublicConfig \
    --namespace $AB_NAMESPACE \
    --sandbox 'true' \
    --paymentProvider 'PAYPAL' \
    --region 'wZ8zAkq9kf1XBsX8' \
    > test.out 2>&1
eval_tap $? 375 'GetPaymentPublicConfig' test.out

#- 376 PublicGetQRCode
samples/cli/sample-apps Platform publicGetQRCode \
    --namespace $AB_NAMESPACE \
    --code 'RyFhK8oDyxxHsJnq' \
    > test.out 2>&1
eval_tap $? 376 'PublicGetQRCode' test.out

#- 377 PublicNormalizePaymentReturnUrl
samples/cli/sample-apps Platform publicNormalizePaymentReturnUrl \
    --namespace $AB_NAMESPACE \
    --payerID 'vFNJY4mQLLDNknJu' \
    --foreinginvoice '6tkBPfk6sMxT2cMJ' \
    --invoiceId 'YnmovbHc5xQimbWX' \
    --payload 'o6UjRmcqr40HsgKv' \
    --redirectResult 'YcAgDfzDZiK4m0kA' \
    --resultCode '75qjnariLBCdoDlp' \
    --sessionId 'CZ83WS1LMM0FMcp8' \
    --status 'SliAM0ADBxn7BJff' \
    --token '3S38VUUGddYMk3T4' \
    --type 'b9PiMSKuhdX2k1vH' \
    --userId 'O6lZLw8pgOneakDd' \
    --orderNo 'IHfEVy8cc3O25prq' \
    --paymentOrderNo 'YteGsKogr6d0s25i' \
    --paymentProvider 'XSOLLA' \
    --returnUrl 'HM3ZIc7o7ruKopCk' \
    > test.out 2>&1
eval_tap $? 377 'PublicNormalizePaymentReturnUrl' test.out

#- 378 GetPaymentTaxValue
samples/cli/sample-apps Platform getPaymentTaxValue \
    --namespace $AB_NAMESPACE \
    --zipCode 'AdbtPNzDYGaV9UVW' \
    --paymentOrderNo 'bzeHMc9Mp6ceXvDw' \
    --paymentProvider 'STRIPE' \
    > test.out 2>&1
eval_tap $? 378 'GetPaymentTaxValue' test.out

#- 379 GetRewardByCode
samples/cli/sample-apps Platform getRewardByCode \
    --namespace $AB_NAMESPACE \
    --rewardCode 'TZAQOXmNQxPvGPEr' \
    > test.out 2>&1
eval_tap $? 379 'GetRewardByCode' test.out

#- 380 QueryRewards1
samples/cli/sample-apps Platform queryRewards1 \
    --namespace $AB_NAMESPACE \
    --eventTopic '2ocO3dEC6jxEkfUC' \
    --limit '74' \
    --offset '59' \
    --sortBy '["rewardCode:desc", "rewardCode:asc", "namespace:desc"]' \
    > test.out 2>&1
eval_tap $? 380 'QueryRewards1' test.out

#- 381 GetReward1
samples/cli/sample-apps Platform getReward1 \
    --namespace $AB_NAMESPACE \
    --rewardId 'MlgGaY3brZhYC4QE' \
    > test.out 2>&1
eval_tap $? 381 'GetReward1' test.out

#- 382 PublicListStores
samples/cli/sample-apps Platform publicListStores \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 382 'PublicListStores' test.out

#- 383 PublicExistsAnyMyActiveEntitlement
samples/cli/sample-apps Platform publicExistsAnyMyActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --appIds '["ZQV9L6tj1vOoL5u1", "aDHhqTw4qGoXGg9S", "NllLbDsM550e0CNj"]' \
    --itemIds '["MDbBVDI919wwBXSd", "mrEJfUyYFRrjEATl", "ChDTU3r2jl38NIC4"]' \
    --skus '["0JwgSQ0NhK2QwOwX", "6ekCnckDnDcCa995", "SEDaAhcIIgJxkX7N"]' \
    > test.out 2>&1
eval_tap $? 383 'PublicExistsAnyMyActiveEntitlement' test.out

#- 384 PublicGetMyAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform publicGetMyAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --appId '0XOp6u3GVmyaMI5s' \
    > test.out 2>&1
eval_tap $? 384 'PublicGetMyAppEntitlementOwnershipByAppId' test.out

#- 385 PublicGetMyEntitlementOwnershipByItemId
samples/cli/sample-apps Platform publicGetMyEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --entitlementClazz 'MEDIA' \
    --itemId 'PllnqPJp6EVs175g' \
    > test.out 2>&1
eval_tap $? 385 'PublicGetMyEntitlementOwnershipByItemId' test.out

#- 386 PublicGetMyEntitlementOwnershipBySku
samples/cli/sample-apps Platform publicGetMyEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --entitlementClazz 'CODE' \
    --sku 'ccRpyVf5QZN3kfSd' \
    > test.out 2>&1
eval_tap $? 386 'PublicGetMyEntitlementOwnershipBySku' test.out

#- 387 PublicGetEntitlementOwnershipToken
samples/cli/sample-apps Platform publicGetEntitlementOwnershipToken \
    --namespace $AB_NAMESPACE \
    --appIds '["XJ8P3qofP4IO1C9p", "1VVTYJ2q6VE8UyRu", "wPPcb6WYSX4eyrDK"]' \
    --itemIds '["jiGQYyYJVL3IhCD2", "qCywpaNyNVAEFJY5", "lMZby3bfmv2qBHrU"]' \
    --skus '["LwyLJJc8xpkiaGL5", "NYWNJ6RZSm2mMZsu", "c8BrZUYRCH7ysFKh"]' \
    > test.out 2>&1
eval_tap $? 387 'PublicGetEntitlementOwnershipToken' test.out

#- 388 SyncTwitchDropsEntitlement
samples/cli/sample-apps Platform syncTwitchDropsEntitlement \
    --namespace $AB_NAMESPACE \
    --body '{"gameId": "X34qr4DDgivadplV", "language": "JvB_dYEZ-DJ", "region": "QKnNJjVG9wSOcNza"}' \
    > test.out 2>&1
eval_tap $? 388 'SyncTwitchDropsEntitlement' test.out

#- 389 PublicGetMyWallet
samples/cli/sample-apps Platform publicGetMyWallet \
    --currencyCode 'r4JDzlr9J6jD4sSS' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 389 'PublicGetMyWallet' test.out

#- 390 SyncEpicGameDLC
samples/cli/sample-apps Platform syncEpicGameDLC \
    --namespace $AB_NAMESPACE \
    --userId 'JnzwNCGcoGWqeVi5' \
    --body '{"epicGamesJwtToken": "cObi1xZxRJ1T5MX6"}' \
    > test.out 2>&1
eval_tap $? 390 'SyncEpicGameDLC' test.out

#- 391 SyncOculusDLC
samples/cli/sample-apps Platform syncOculusDLC \
    --namespace $AB_NAMESPACE \
    --userId 'aSjTdoliiiQkeP68' \
    > test.out 2>&1
eval_tap $? 391 'SyncOculusDLC' test.out

#- 392 PublicSyncPsnDlcInventory
samples/cli/sample-apps Platform publicSyncPsnDlcInventory \
    --namespace $AB_NAMESPACE \
    --userId 'iGbayiZy433C96g5' \
    --body '{"serviceLabel": 54}' \
    > test.out 2>&1
eval_tap $? 392 'PublicSyncPsnDlcInventory' test.out

#- 393 PublicSyncPsnDlcInventoryWithMultipleServiceLabels
samples/cli/sample-apps Platform publicSyncPsnDlcInventoryWithMultipleServiceLabels \
    --namespace $AB_NAMESPACE \
    --userId 'soHJVhhUoigdGhHC' \
    --body '{"serviceLabels": [34, 42, 55]}' \
    > test.out 2>&1
eval_tap $? 393 'PublicSyncPsnDlcInventoryWithMultipleServiceLabels' test.out

#- 394 SyncSteamDLC
samples/cli/sample-apps Platform syncSteamDLC \
    --namespace $AB_NAMESPACE \
    --userId 'KK16PargKJ9QgQ9U' \
    --body '{"appId": "Cz5Pbrf3IVIkCWwi", "steamId": "T5F9eYg0qi8nx3QQ"}' \
    > test.out 2>&1
eval_tap $? 394 'SyncSteamDLC' test.out

#- 395 SyncXboxDLC
samples/cli/sample-apps Platform syncXboxDLC \
    --namespace $AB_NAMESPACE \
    --userId 'HjFdcioO5FnMDbZx' \
    --body '{"xstsToken": "sDUWd1VgQBbOq93I"}' \
    > test.out 2>&1
eval_tap $? 395 'SyncXboxDLC' test.out

#- 396 PublicQueryUserEntitlements
samples/cli/sample-apps Platform publicQueryUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'r94YfFIsxP8jh1gW' \
    --appType 'DEMO' \
    --entitlementClazz 'OPTIONBOX' \
    --entitlementName 'K13pFLsQdXFTufS1' \
    --features '["FEBc5MRivCHYOX6Z", "8L4ptsI5MrMzE7zH", "XmbgfTKXKX1XqO7p"]' \
    --itemId '["cFkRXsIBLz7W5Vue", "V2h4C836wF1p3eOs", "NdtkPqUU5wkbORl4"]' \
    --limit '96' \
    --offset '88' \
    > test.out 2>&1
eval_tap $? 396 'PublicQueryUserEntitlements' test.out

#- 397 PublicGetUserAppEntitlementByAppId
samples/cli/sample-apps Platform publicGetUserAppEntitlementByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'flzoOEpnqjm4aW8a' \
    --appId 'x3AgnxbRCBN0qji8' \
    > test.out 2>&1
eval_tap $? 397 'PublicGetUserAppEntitlementByAppId' test.out

#- 398 PublicQueryUserEntitlementsByAppType
samples/cli/sample-apps Platform publicQueryUserEntitlementsByAppType \
    --namespace $AB_NAMESPACE \
    --userId '7E9TFW8EJzbBYsfu' \
    --limit '23' \
    --offset '0' \
    --appType 'DLC' \
    > test.out 2>&1
eval_tap $? 398 'PublicQueryUserEntitlementsByAppType' test.out

#- 399 PublicGetUserEntitlementsByIds
samples/cli/sample-apps Platform publicGetUserEntitlementsByIds \
    --namespace $AB_NAMESPACE \
    --userId 'Ow5FNBRLoen3mDdF' \
    --availablePlatformOnly 'true' \
    --ids '["iwt0tqXZfWTXpAwP", "JdSA4cHgmO1vPyyh", "qvqNPSDpO6nowU18"]' \
    > test.out 2>&1
eval_tap $? 399 'PublicGetUserEntitlementsByIds' test.out

#- 400 PublicGetUserEntitlementByItemId
eval_tap 0 400 'PublicGetUserEntitlementByItemId # SKIP deprecated' test.out

#- 401 PublicGetUserEntitlementBySku
eval_tap 0 401 'PublicGetUserEntitlementBySku # SKIP deprecated' test.out

#- 402 PublicExistsAnyUserActiveEntitlement
samples/cli/sample-apps Platform publicExistsAnyUserActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'c93gtpAB3yXh4pk2' \
    --appIds '["DOCOk8hO6MwITzjn", "3QOlFJ9CyCr8KRpl", "A9KjvtN8B1LSzMEs"]' \
    --itemIds '["u0M655EBdxru4yy2", "kDy0JfLrgIzNRZlr", "uvKVZcAtQDs11D7m"]' \
    --skus '["zds3UXyjKL74xx0y", "YTnFwnb6Ya8s4y0E", "q4KKFpkPmKe3DSdp"]' \
    > test.out 2>&1
eval_tap $? 402 'PublicExistsAnyUserActiveEntitlement' test.out

#- 403 PublicGetUserAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform publicGetUserAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'BNuAVOKzExcXAUF3' \
    --appId 'uYUHOSkHiClnl9dd' \
    > test.out 2>&1
eval_tap $? 403 'PublicGetUserAppEntitlementOwnershipByAppId' test.out

#- 404 PublicGetUserEntitlementOwnershipByItemId
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'TLnkfSASMHZxIbMj' \
    --entitlementClazz 'CODE' \
    --itemId '4Ac6VVsU0cgbphNo' \
    > test.out 2>&1
eval_tap $? 404 'PublicGetUserEntitlementOwnershipByItemId' test.out

#- 405 PublicGetUserEntitlementOwnershipByItemIds
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipByItemIds \
    --namespace $AB_NAMESPACE \
    --userId '4AyM6fqAdM3LfHE0' \
    --ids '["gxbqNwvXq5cjZE7C", "CgiexlC3QSa4hcOJ", "0OR6uRwbUYj19U1q"]' \
    > test.out 2>&1
eval_tap $? 405 'PublicGetUserEntitlementOwnershipByItemIds' test.out

#- 406 PublicGetUserEntitlementOwnershipBySku
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --userId 'mDDiA5s6GDZvXe3f' \
    --entitlementClazz 'CODE' \
    --sku 'uiLmOrjedfsOO1ot' \
    > test.out 2>&1
eval_tap $? 406 'PublicGetUserEntitlementOwnershipBySku' test.out

#- 407 PublicGetUserEntitlement
samples/cli/sample-apps Platform publicGetUserEntitlement \
    --entitlementId 'Z83NSc8QdJNecawZ' \
    --namespace $AB_NAMESPACE \
    --userId 'rknZeneVE4wRfL1j' \
    > test.out 2>&1
eval_tap $? 407 'PublicGetUserEntitlement' test.out

#- 408 PublicConsumeUserEntitlement
samples/cli/sample-apps Platform publicConsumeUserEntitlement \
    --entitlementId 'Z2gWeOhyyb9wgoZ9' \
    --namespace $AB_NAMESPACE \
    --userId '4DCWVSHtHSt45tep' \
    --body '{"options": ["WFXNPxiorNdsBtFt", "94zwBGITwoYtCAzk", "LbuxHJPjDRycfh5I"], "requestId": "HX5ELn57Y6HOdMhK", "useCount": 87}' \
    > test.out 2>&1
eval_tap $? 408 'PublicConsumeUserEntitlement' test.out

#- 409 PublicSellUserEntitlement
samples/cli/sample-apps Platform publicSellUserEntitlement \
    --entitlementId 'tlEFbqPpopoDq1Qh' \
    --namespace $AB_NAMESPACE \
    --userId 'X2FRaPF1qXN6KdvM' \
    --body '{"requestId": "JLiv2m7X3JnYH5jA", "useCount": 79}' \
    > test.out 2>&1
eval_tap $? 409 'PublicSellUserEntitlement' test.out

#- 410 PublicSplitUserEntitlement
samples/cli/sample-apps Platform publicSplitUserEntitlement \
    --entitlementId '4MYg9Fuo8eQA3gsN' \
    --namespace $AB_NAMESPACE \
    --userId 'mOikoa5OOA8xtHl7' \
    --body '{"useCount": 36}' \
    > test.out 2>&1
eval_tap $? 410 'PublicSplitUserEntitlement' test.out

#- 411 PublicTransferUserEntitlement
samples/cli/sample-apps Platform publicTransferUserEntitlement \
    --entitlementId 'pt70uxgwcJKE9rGs' \
    --namespace $AB_NAMESPACE \
    --userId 'HTprlNc4Ihc2y4Hc' \
    --body '{"entitlementId": "Atgy0XTwrLLIkKNj", "useCount": 63}' \
    > test.out 2>&1
eval_tap $? 411 'PublicTransferUserEntitlement' test.out

#- 412 PublicRedeemCode
samples/cli/sample-apps Platform publicRedeemCode \
    --namespace $AB_NAMESPACE \
    --userId 'ssoSOTZ2rB1HBThi' \
    --body '{"code": "rKEFHgQy1KDon6Qa", "language": "vQm-993", "region": "6dQa6nyC7bkcXME8"}' \
    > test.out 2>&1
eval_tap $? 412 'PublicRedeemCode' test.out

#- 413 PublicFulfillAppleIAPItem
samples/cli/sample-apps Platform publicFulfillAppleIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'VQ5J494tkSDHV1Nh' \
    --body '{"excludeOldTransactions": false, "language": "lsjV", "productId": "qY1q5tjvhFF5a23D", "receiptData": "XXY4oe8laHlSpmVT", "region": "gDKv8b5hL51zBOgh", "transactionId": "G5T4XX9udAiSEUOB"}' \
    > test.out 2>&1
eval_tap $? 413 'PublicFulfillAppleIAPItem' test.out

#- 414 SyncEpicGamesInventory
samples/cli/sample-apps Platform syncEpicGamesInventory \
    --namespace $AB_NAMESPACE \
    --userId 'UA42W5icgWsXEIjV' \
    --body '{"epicGamesJwtToken": "rKB3SCrY6byfFZmF"}' \
    > test.out 2>&1
eval_tap $? 414 'SyncEpicGamesInventory' test.out

#- 415 PublicFulfillGoogleIAPItem
samples/cli/sample-apps Platform publicFulfillGoogleIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'xitMm4ibMxxfdJyx' \
    --body '{"autoAck": true, "language": "qk_ZyuX_Dy", "orderId": "KMmO3RZ7Q6wW5TNG", "packageName": "5nBbFpuaMoGMbHTz", "productId": "xtxZZ83BeTtxuQZv", "purchaseTime": 95, "purchaseToken": "8ululbTQATl9jGR6", "region": "xxGafFlKypybtpst"}' \
    > test.out 2>&1
eval_tap $? 415 'PublicFulfillGoogleIAPItem' test.out

#- 416 SyncOculusConsumableEntitlements
samples/cli/sample-apps Platform syncOculusConsumableEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'HvYscHIXEwvVdyaV' \
    > test.out 2>&1
eval_tap $? 416 'SyncOculusConsumableEntitlements' test.out

#- 417 PublicReconcilePlayStationStore
samples/cli/sample-apps Platform publicReconcilePlayStationStore \
    --namespace $AB_NAMESPACE \
    --userId 'DowoFd6ixz5iGByZ' \
    --body '{"currencyCode": "48V3O7R1RmrsOHKB", "price": 0.6810023814469375, "productId": "wnD0pMJzJu4GPQRx", "serviceLabel": 24}' \
    > test.out 2>&1
eval_tap $? 417 'PublicReconcilePlayStationStore' test.out

#- 418 PublicReconcilePlayStationStoreWithMultipleServiceLabels
samples/cli/sample-apps Platform publicReconcilePlayStationStoreWithMultipleServiceLabels \
    --namespace $AB_NAMESPACE \
    --userId 'Ht0q7bTQbIIBpvJU' \
    --body '{"currencyCode": "lPAcyLL6hbi2PkoH", "price": 0.2749110686786961, "productId": "yz27iqtduMhcaate", "serviceLabels": [11, 63, 55]}' \
    > test.out 2>&1
eval_tap $? 418 'PublicReconcilePlayStationStoreWithMultipleServiceLabels' test.out

#- 419 SyncSteamInventory
samples/cli/sample-apps Platform syncSteamInventory \
    --namespace $AB_NAMESPACE \
    --userId 'i197gxsTyXtpEwgs' \
    --body '{"appId": "Bf0JlGtlAl5tomi1", "currencyCode": "IAft69r9yr9GtR3N", "language": "zvdy-CcwJ_008", "price": 0.01389104065553104, "productId": "Lyayh4Y8T6BOw7tz", "region": "Mmzd0fkoXNh6IQdx", "steamId": "vaLVvx2F9qXxqMKQ"}' \
    > test.out 2>&1
eval_tap $? 419 'SyncSteamInventory' test.out

#- 420 SyncTwitchDropsEntitlement1
samples/cli/sample-apps Platform syncTwitchDropsEntitlement1 \
    --namespace $AB_NAMESPACE \
    --userId 'NXZQd6kVzhEPDaeI' \
    --body '{"gameId": "tVXi8FX6O6jDoonn", "language": "Czj", "region": "opSezXonRezk2rRS"}' \
    > test.out 2>&1
eval_tap $? 420 'SyncTwitchDropsEntitlement1' test.out

#- 421 SyncXboxInventory
samples/cli/sample-apps Platform syncXboxInventory \
    --namespace $AB_NAMESPACE \
    --userId 'FwSSrsTTacEhCEys' \
    --body '{"currencyCode": "6ExjtIdVLv9jhAgU", "price": 0.06936017458665045, "productId": "zJbqQBGS1oskZAqM", "xstsToken": "YzegMAslP2xj6WiU"}' \
    > test.out 2>&1
eval_tap $? 421 'SyncXboxInventory' test.out

#- 422 PublicQueryUserOrders
samples/cli/sample-apps Platform publicQueryUserOrders \
    --namespace $AB_NAMESPACE \
    --userId 'Wx2iOL8L57K5SLt7' \
    --itemId 'll7vo1RiRTHjHGL8' \
    --limit '92' \
    --offset '83' \
    --status 'CLOSED' \
    > test.out 2>&1
eval_tap $? 422 'PublicQueryUserOrders' test.out

#- 423 PublicCreateUserOrder
samples/cli/sample-apps Platform publicCreateUserOrder \
    --namespace $AB_NAMESPACE \
    --userId '2LS23du65OhFIg6M' \
    --body '{"currencyCode": "evAoGgTuIxtCpWFn", "discountedPrice": 46, "ext": {"0kSKDWhI7cGtkXHF": {}, "tRvalXtZCri4Uprc": {}, "8BLYOttXBTxP4SxT": {}}, "itemId": "F7aMTbejUsfRQ337", "language": "qDR_HCYv-GQ", "price": 71, "quantity": 17, "region": "CrKwOaHZqkfhDHSL", "returnUrl": "7cDfP2ZMtvftBli4", "sectionId": "KuDG0oyYdrzbTF2i"}' \
    > test.out 2>&1
eval_tap $? 423 'PublicCreateUserOrder' test.out

#- 424 PublicGetUserOrder
samples/cli/sample-apps Platform publicGetUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'sBILnFyCWDyUbmlR' \
    --userId 'yTNiTgms5martPB1' \
    > test.out 2>&1
eval_tap $? 424 'PublicGetUserOrder' test.out

#- 425 PublicCancelUserOrder
samples/cli/sample-apps Platform publicCancelUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'yqu1lXoBA7qwLEGj' \
    --userId 'jwC6EIMaxxwb4lp9' \
    > test.out 2>&1
eval_tap $? 425 'PublicCancelUserOrder' test.out

#- 426 PublicGetUserOrderHistories
samples/cli/sample-apps Platform publicGetUserOrderHistories \
    --namespace $AB_NAMESPACE \
    --orderNo '381h2EUkOp0uxXUx' \
    --userId 'W6ujiHcpX20zgWyZ' \
    > test.out 2>&1
eval_tap $? 426 'PublicGetUserOrderHistories' test.out

#- 427 PublicDownloadUserOrderReceipt
samples/cli/sample-apps Platform publicDownloadUserOrderReceipt \
    --namespace $AB_NAMESPACE \
    --orderNo 'HeVlvW2zlFB4cbwN' \
    --userId '5nAbU1Pf2ytYdPQI' \
    > test.out 2>&1
eval_tap $? 427 'PublicDownloadUserOrderReceipt' test.out

#- 428 PublicGetPaymentAccounts
samples/cli/sample-apps Platform publicGetPaymentAccounts \
    --namespace $AB_NAMESPACE \
    --userId 'ysnYUUdMKU9me2nF' \
    > test.out 2>&1
eval_tap $? 428 'PublicGetPaymentAccounts' test.out

#- 429 PublicDeletePaymentAccount
samples/cli/sample-apps Platform publicDeletePaymentAccount \
    --id 'VZyISgNSiLvwNZc3' \
    --namespace $AB_NAMESPACE \
    --type 'card' \
    --userId 'TcO1w7nFptBW7J1p' \
    > test.out 2>&1
eval_tap $? 429 'PublicDeletePaymentAccount' test.out

#- 430 PublicListActiveSections
samples/cli/sample-apps Platform publicListActiveSections \
    --namespace $AB_NAMESPACE \
    --userId 'bpczlmB8Q5k023CS' \
    --autoCalcEstimatedPrice 'true' \
    --language 'hvGm4JCqMChPSF5O' \
    --region '529UeO3EWWQIFQLh' \
    --storeId 'vYgcQhnbibWYfFdN' \
    --viewId 'pas0OOThpDxV0ZhO' \
    > test.out 2>&1
eval_tap $? 430 'PublicListActiveSections' test.out

#- 431 PublicQueryUserSubscriptions
samples/cli/sample-apps Platform publicQueryUserSubscriptions \
    --namespace $AB_NAMESPACE \
    --userId 'Sq0YvKZAoPC2jpWz' \
    --chargeStatus 'NEVER' \
    --itemId 'Jeu0JPq9grUZipbv' \
    --limit '42' \
    --offset '30' \
    --sku 'Rgw1dV8136SRrrE2' \
    --status 'CANCELLED' \
    --subscribedBy 'USER' \
    > test.out 2>&1
eval_tap $? 431 'PublicQueryUserSubscriptions' test.out

#- 432 PublicSubscribeSubscription
samples/cli/sample-apps Platform publicSubscribeSubscription \
    --namespace $AB_NAMESPACE \
    --userId 'PvSGXE4prd2ya1uX' \
    --body '{"currencyCode": "fcpHF23Xea17DwW6", "itemId": "x2SuGn2AEwdbDof0", "language": "XC-YrfZ", "region": "Uwb2qMce9E4neR6P", "returnUrl": "WK1lg241sYvNVbWl", "source": "X7OehXvFVgOcQObY"}' \
    > test.out 2>&1
eval_tap $? 432 'PublicSubscribeSubscription' test.out

#- 433 PublicCheckUserSubscriptionSubscribableByItemId
samples/cli/sample-apps Platform publicCheckUserSubscriptionSubscribableByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'YpZSeJN6w0oTZ0aq' \
    --itemId '44OBxwXbXVqTairx' \
    > test.out 2>&1
eval_tap $? 433 'PublicCheckUserSubscriptionSubscribableByItemId' test.out

#- 434 PublicGetUserSubscription
samples/cli/sample-apps Platform publicGetUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'ftGxo4kwxtoOR6xH' \
    --userId 'I2E1egP5UlA7CxOT' \
    > test.out 2>&1
eval_tap $? 434 'PublicGetUserSubscription' test.out

#- 435 PublicChangeSubscriptionBillingAccount
samples/cli/sample-apps Platform publicChangeSubscriptionBillingAccount \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'yc4itCSp37kJ0079' \
    --userId 'WWlDWDsP5WJGP3hN' \
    > test.out 2>&1
eval_tap $? 435 'PublicChangeSubscriptionBillingAccount' test.out

#- 436 PublicCancelSubscription
samples/cli/sample-apps Platform publicCancelSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'BrCqCuCw66Bo2jiC' \
    --userId 'zQK7TOTDFZUB4pH4' \
    --body '{"immediate": true, "reason": "36XZJ8D1vlzYPNRJ"}' \
    > test.out 2>&1
eval_tap $? 436 'PublicCancelSubscription' test.out

#- 437 PublicGetUserSubscriptionBillingHistories
samples/cli/sample-apps Platform publicGetUserSubscriptionBillingHistories \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'aofAoKar7b5l0nmW' \
    --userId 'JUrguiQzi4YObkNS' \
    --excludeFree 'false' \
    --limit '6' \
    --offset '62' \
    > test.out 2>&1
eval_tap $? 437 'PublicGetUserSubscriptionBillingHistories' test.out

#- 438 PublicListViews
samples/cli/sample-apps Platform publicListViews \
    --namespace $AB_NAMESPACE \
    --userId 'mZX2q6TF7fF7P2lX' \
    --language '7l0gyk9JTsM76N2t' \
    --storeId 'PBHEEAVA8w8O1FXw' \
    > test.out 2>&1
eval_tap $? 438 'PublicListViews' test.out

#- 439 PublicGetWallet
samples/cli/sample-apps Platform publicGetWallet \
    --currencyCode 'xWdgWpl57F7I53BK' \
    --namespace $AB_NAMESPACE \
    --userId 'CSH1eL5ytkhuQWAw' \
    > test.out 2>&1
eval_tap $? 439 'PublicGetWallet' test.out

#- 440 PublicListUserWalletTransactions
samples/cli/sample-apps Platform publicListUserWalletTransactions \
    --currencyCode '5m1sZdQytQegcKlh' \
    --namespace $AB_NAMESPACE \
    --userId '5Q5uoHtgPaUuSaGw' \
    --limit '84' \
    --offset '32' \
    > test.out 2>&1
eval_tap $? 440 'PublicListUserWalletTransactions' test.out

#- 441 QueryItems1
samples/cli/sample-apps Platform queryItems1 \
    --namespace $AB_NAMESPACE \
    --appType 'DLC' \
    --availableDate 'iF2ry4mhecdAWLHY' \
    --baseAppId '3n3Vh1m76KnDPxLx' \
    --categoryPath '2xkaNAdkZiA9PGZp' \
    --features 'edtXMFgiEBGtbNLq' \
    --includeSubCategoryItem 'false' \
    --itemName 'o8iuppAmAv00tpoU' \
    --itemStatus 'INACTIVE' \
    --itemType 'EXTENSION' \
    --limit '45' \
    --offset '45' \
    --region '6yqWFW5olq6iCUmR' \
    --sectionExclusive 'false' \
    --sortBy '["updatedAt", "updatedAt:asc"]' \
    --storeId 'XYVT5EF5LgXe0fFc' \
    --tags 'VhxugrfM7Zrt1x5e' \
    --targetNamespace 'hemnBbCKF7ECgsAy' \
    --withTotal 'false' \
    > test.out 2>&1
eval_tap $? 441 'QueryItems1' test.out

#- 442 ImportStore1
samples/cli/sample-apps Platform importStore1 \
    --namespace $AB_NAMESPACE \
    --storeId 'xtsfvmftW1GRez9b' \
    --strictMode 'true' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 442 'ImportStore1' test.out

#- 443 ExportStore1
samples/cli/sample-apps Platform exportStore1 \
    --namespace $AB_NAMESPACE \
    --storeId 'l1YvTNto4I4ffOMs' \
    --body '{"itemIds": ["QuTWuUrcR3aNKZ71", "M3At2vh0Ypyx8iZv", "ewXpKoonw5pXYNKJ"]}' \
    > test.out 2>&1
eval_tap $? 443 'ExportStore1' test.out

#- 444 FulfillRewardsV2
samples/cli/sample-apps Platform fulfillRewardsV2 \
    --namespace $AB_NAMESPACE \
    --userId 'lt0GAaTmDGHcL9rz' \
    --body '{"entitlementCollectionId": "Xtgedz90UWRkb2aJ", "entitlementOrigin": "GooglePlay", "metadata": {"7UXW68UHueyrETYO": {}, "c3qF8iOtI0lrJuqD": {}, "5Wz5yaRFItIzxnBJ": {}}, "origin": "Epic", "rewards": [{"currency": {"currencyCode": "ovHU4u8LVtFMJOUl", "namespace": "GAeNgj3KkExS5daA"}, "item": {"itemId": "2BpFlZG0rq0AcivD", "itemSku": "CmfyS2L1EJH3D5W1", "itemType": "NiuOvG1H62LTKhvY"}, "quantity": 42, "type": "ITEM"}, {"currency": {"currencyCode": "XdrrjSWa1ZFu4CJx", "namespace": "aAcxoJlyVgDGlRqa"}, "item": {"itemId": "vtY52pjxZE9L0MSf", "itemSku": "IyBFtwB7oklXAExk", "itemType": "uCLEcA3ig8CPXcpW"}, "quantity": 32, "type": "ITEM"}, {"currency": {"currencyCode": "QsIjFZ0PYhB8ftfw", "namespace": "9cpZEmPFCOJss8R3"}, "item": {"itemId": "x7wjFCQvOy8TrGFl", "itemSku": "9TYFgoD1k6ccG5uL", "itemType": "fb7DL8L9iYT02oNR"}, "quantity": 62, "type": "CURRENCY"}], "source": "PAYMENT", "transactionId": "kefigIzIsnxeCW2H"}' \
    > test.out 2>&1
eval_tap $? 444 'FulfillRewardsV2' test.out


rm -f "tmp.dat"

exit $EXIT_CODE