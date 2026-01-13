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
    --id 'I12fbkvNX7sw2Yjo' \
    > test.out 2>&1
eval_tap $? 3 'GetFulfillmentScript' test.out

#- 4 CreateFulfillmentScript
samples/cli/sample-apps Platform createFulfillmentScript \
    --id 'dKf4uZuhNMAGkC4B' \
    --body '{"grantDays": "eReD2GDKqwlM98R6"}' \
    > test.out 2>&1
eval_tap $? 4 'CreateFulfillmentScript' test.out

#- 5 DeleteFulfillmentScript
samples/cli/sample-apps Platform deleteFulfillmentScript \
    --id 'cpOD7ciaHBQLz7Xr' \
    > test.out 2>&1
eval_tap $? 5 'DeleteFulfillmentScript' test.out

#- 6 UpdateFulfillmentScript
samples/cli/sample-apps Platform updateFulfillmentScript \
    --id 'eRIO5xUoMqwFWE8P' \
    --body '{"grantDays": "1tdBLnjBFiM5havN"}' \
    > test.out 2>&1
eval_tap $? 6 'UpdateFulfillmentScript' test.out

#- 7 ListItemTypeConfigs
samples/cli/sample-apps Platform listItemTypeConfigs \
    > test.out 2>&1
eval_tap $? 7 'ListItemTypeConfigs' test.out

#- 8 CreateItemTypeConfig
samples/cli/sample-apps Platform createItemTypeConfig \
    --body '{"clazz": "IcAleIkdq0cEwdg2", "dryRun": false, "fulfillmentUrl": "uotYgP77bkQfLL1t", "itemType": "EXTENSION", "purchaseConditionUrl": "6ovHyI3wBoKMnDvm"}' \
    > test.out 2>&1
eval_tap $? 8 'CreateItemTypeConfig' test.out

#- 9 SearchItemTypeConfig
samples/cli/sample-apps Platform searchItemTypeConfig \
    --clazz 'WGbWmRNogQ2rR5pd' \
    --itemType 'SUBSCRIPTION' \
    > test.out 2>&1
eval_tap $? 9 'SearchItemTypeConfig' test.out

#- 10 GetItemTypeConfig
samples/cli/sample-apps Platform getItemTypeConfig \
    --id 'ngtsJc0qXd0xtX6t' \
    > test.out 2>&1
eval_tap $? 10 'GetItemTypeConfig' test.out

#- 11 UpdateItemTypeConfig
samples/cli/sample-apps Platform updateItemTypeConfig \
    --id 'Ck7xUsXyRxP2hvyP' \
    --body '{"clazz": "pfHx1djEw7NhPD7d", "dryRun": true, "fulfillmentUrl": "zxcHhRREonWWeG5R", "purchaseConditionUrl": "BIHv3af6jixoiT5y"}' \
    > test.out 2>&1
eval_tap $? 11 'UpdateItemTypeConfig' test.out

#- 12 DeleteItemTypeConfig
samples/cli/sample-apps Platform deleteItemTypeConfig \
    --id 'pgDGh89VOlW4LAcZ' \
    > test.out 2>&1
eval_tap $? 12 'DeleteItemTypeConfig' test.out

#- 13 QueryCampaigns
samples/cli/sample-apps Platform queryCampaigns \
    --namespace $AB_NAMESPACE \
    --limit '96' \
    --name 'u2rGXOP2Hvvlxjm8' \
    --offset '38' \
    --tag 'XBh4pnGbOCL5pVGt' \
    > test.out 2>&1
eval_tap $? 13 'QueryCampaigns' test.out

#- 14 CreateCampaign
samples/cli/sample-apps Platform createCampaign \
    --namespace $AB_NAMESPACE \
    --body '{"description": "IcxIfWUX7S8lZWrD", "discountConfig": {"categories": [{"categoryPath": "bsMgroaa096S3W5U", "includeSubCategories": true}, {"categoryPath": "UcjEU1m4MQs11grU", "includeSubCategories": false}, {"categoryPath": "DtshqOaOtN6qqAW4", "includeSubCategories": false}], "currencyCode": "CkCvd2Mxj3h6AZWs", "currencyNamespace": "MtbAQjmaKw7V4rHL", "discountAmount": 76, "discountPercentage": 10, "discountType": "AMOUNT", "items": [{"itemId": "XlkDeW6JnPjRI0PV", "itemName": "uoyIb02SHsuTGHrQ"}, {"itemId": "WDCLUn5DVQ5ibXgk", "itemName": "zkaTqpaoNe8U8lxM"}, {"itemId": "afInMsvBmGDI9xJ5", "itemName": "N01JDTXLHbrez1kW"}], "restrictType": "ITEMS_AND_CATEGORIES", "stackable": true}, "items": [{"extraSubscriptionDays": 48, "itemId": "IQr9dtChM7XALT8g", "itemName": "pzlwNMyYWWRRDd62", "quantity": 72}, {"extraSubscriptionDays": 59, "itemId": "MeqqPC0KuznGHXvO", "itemName": "ZME9WIROdw8VN8fL", "quantity": 36}, {"extraSubscriptionDays": 92, "itemId": "50ew0Ha1As9lBFen", "itemName": "k7YZUXb37ww1s9lO", "quantity": 19}], "maxRedeemCountPerCampaignPerUser": 24, "maxRedeemCountPerCode": 10, "maxRedeemCountPerCodePerUser": 10, "maxSaleCount": 28, "name": "UbVM52mOCElk3z0C", "redeemEnd": "1973-12-19T00:00:00Z", "redeemStart": "1997-08-12T00:00:00Z", "redeemType": "DISCOUNT", "status": "INACTIVE", "tags": ["Jal9stCHjl9UELLI", "PZ6QFJjVkrBIMyrm", "dLpH9Ffq2KR6UUbG"], "type": "REDEMPTION"}' \
    > test.out 2>&1
eval_tap $? 14 'CreateCampaign' test.out

#- 15 GetCampaign
samples/cli/sample-apps Platform getCampaign \
    --campaignId 'DkwZ5jtkaJA12pyf' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 15 'GetCampaign' test.out

#- 16 UpdateCampaign
samples/cli/sample-apps Platform updateCampaign \
    --campaignId '6tpdtwy05mPcXiTE' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "RD9fyel7qXHIJmNV", "discountConfig": {"categories": [{"categoryPath": "AiZDdVDP02QOXrE2", "includeSubCategories": true}, {"categoryPath": "tHtATFkf0w9P36QG", "includeSubCategories": true}, {"categoryPath": "gP2nVLlmJXakoCJ7", "includeSubCategories": true}], "currencyCode": "95aJAX8QJT9CiPGU", "currencyNamespace": "vavzdxfabHzziIii", "discountAmount": 13, "discountPercentage": 18, "discountType": "PERCENTAGE", "items": [{"itemId": "6lMJcRu4MwB5Oil3", "itemName": "ZAvET3OFNSJuVZgq"}, {"itemId": "WwaQAVuOXLTUNEd6", "itemName": "oX3svVc1ylONRvPz"}, {"itemId": "7EfwljmLHE5vt47w", "itemName": "wXYEzBekwoVysn1k"}], "restrictType": "NONE", "stackable": false}, "items": [{"extraSubscriptionDays": 32, "itemId": "lOIH9J8kh39942GU", "itemName": "apenBG6diq0MFD4u", "quantity": 46}, {"extraSubscriptionDays": 9, "itemId": "cAKrao904dCFdT1n", "itemName": "aSuDtueCBAgj8bUy", "quantity": 95}, {"extraSubscriptionDays": 87, "itemId": "8xbkgY9LA3aiBMnZ", "itemName": "ejLOmCwszAFwxJ1X", "quantity": 80}], "maxRedeemCountPerCampaignPerUser": 53, "maxRedeemCountPerCode": 46, "maxRedeemCountPerCodePerUser": 75, "maxSaleCount": 66, "name": "YGJN4GIjzWxMsrvy", "redeemEnd": "1981-01-12T00:00:00Z", "redeemStart": "1983-02-15T00:00:00Z", "redeemType": "ITEM", "status": "INACTIVE", "tags": ["JsAWQYR7MikFnLpP", "ddA2koeVU3QHQlzo", "ioS2Df9fAFhPpT0t"]}' \
    > test.out 2>&1
eval_tap $? 16 'UpdateCampaign' test.out

#- 17 RenameBatch
samples/cli/sample-apps Platform renameBatch \
    --campaignId '5NCRtNNZvllcCC41' \
    --namespace $AB_NAMESPACE \
    --body '{"newName": "nkVmfMjVmQojOKyq", "oldName": "mIgqdHx7pFqUGBXN"}' \
    > test.out 2>&1
eval_tap $? 17 'RenameBatch' test.out

#- 18 QueryCampaignBatchNames
samples/cli/sample-apps Platform queryCampaignBatchNames \
    --campaignId '6Blg8SexNH7TFmp5' \
    --namespace $AB_NAMESPACE \
    --batchName 'Fm62NRpb7rwA1e9X' \
    --limit '83' \
    > test.out 2>&1
eval_tap $? 18 'QueryCampaignBatchNames' test.out

#- 19 GetCampaignDynamic
samples/cli/sample-apps Platform getCampaignDynamic \
    --campaignId 'QxGzprNFj8v5jnKl' \
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
    --body '{"enableInventoryCheck": false, "itemDeletionCheckConfig": ["IAP", "CAMPAIGN", "DLC"]}' \
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
    --body '{"appConfig": {"appName": "iug69qD9jZXIZyz7"}, "customConfig": {"connectionType": "INSECURE", "grpcServerAddress": "gcVOPZ3gzeJ6WUUb"}, "extendType": "APP"}' \
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
    --body '{"appConfig": {"appName": "mIDMhQW8jJx02OJm"}, "customConfig": {"connectionType": "TLS", "grpcServerAddress": "oXEuH5Ib57HKyv5S"}, "extendType": "APP"}' \
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
    --storeId 'syAIDheMdOFElROo' \
    > test.out 2>&1
eval_tap $? 31 'GetRootCategories' test.out

#- 32 CreateCategory
samples/cli/sample-apps Platform createCategory \
    --namespace $AB_NAMESPACE \
    --storeId 'YgPcBXc3NI66f2rj' \
    --body '{"categoryPath": "F6kHqnMP4TZQV9Ny", "localizationDisplayNames": {"AQJzSN0xfv371hIB": "mS5WIkddUguLQ9pD", "F5BflJ2UapUlsV4u": "t0EwD8Xl3ozJ7F0a", "4VrJnBFONMpBeoA9": "n8zUm4gni1nAJics"}}' \
    > test.out 2>&1
eval_tap $? 32 'CreateCategory' test.out

#- 33 ListCategoriesBasic
samples/cli/sample-apps Platform listCategoriesBasic \
    --namespace $AB_NAMESPACE \
    --storeId 'lHHZO7IBvrTF9O6y' \
    > test.out 2>&1
eval_tap $? 33 'ListCategoriesBasic' test.out

#- 34 GetCategory
samples/cli/sample-apps Platform getCategory \
    --categoryPath 'Z1UWjjJcTnVwfcJ5' \
    --namespace $AB_NAMESPACE \
    --storeId 'K1gS4rzKF85WBFw6' \
    > test.out 2>&1
eval_tap $? 34 'GetCategory' test.out

#- 35 UpdateCategory
samples/cli/sample-apps Platform updateCategory \
    --categoryPath 'UoKDyO2LXaBtSUY7' \
    --namespace $AB_NAMESPACE \
    --storeId '4LK7eibTzSTvyfIH' \
    --body '{"localizationDisplayNames": {"Km6znc2bFIOwj3wj": "w5g5Xk5Lok8P2SHr", "LmNqdsXpAzjfbuHQ": "w7obQH6GD0VHZjuR", "gg5Jk7A21aRK6nHS": "zgwir9e6vay4HG46"}}' \
    > test.out 2>&1
eval_tap $? 35 'UpdateCategory' test.out

#- 36 DeleteCategory
samples/cli/sample-apps Platform deleteCategory \
    --categoryPath 'D9xfZ7Oc20S3fHMu' \
    --namespace $AB_NAMESPACE \
    --storeId '53TDtJlIvemBJWmT' \
    > test.out 2>&1
eval_tap $? 36 'DeleteCategory' test.out

#- 37 GetChildCategories
samples/cli/sample-apps Platform getChildCategories \
    --categoryPath 'hvpQ5k93UO0pEMq0' \
    --namespace $AB_NAMESPACE \
    --storeId '6lYrY08MUgMhhbdI' \
    > test.out 2>&1
eval_tap $? 37 'GetChildCategories' test.out

#- 38 GetDescendantCategories
samples/cli/sample-apps Platform getDescendantCategories \
    --categoryPath 'meLhe3a4ZEfR7tL2' \
    --namespace $AB_NAMESPACE \
    --storeId 'axu2pUK20Qaso0aB' \
    > test.out 2>&1
eval_tap $? 38 'GetDescendantCategories' test.out

#- 39 QueryCodes
samples/cli/sample-apps Platform queryCodes \
    --campaignId 'zZOeFS14YpJg0fIH' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --batchName 'box6j7mgEoADiBlh' \
    --batchNo '[85, 16, 76]' \
    --code 'W72tArEHARBfxUHw' \
    --limit '97' \
    --offset '50' \
    --withBatchName 'false' \
    > test.out 2>&1
eval_tap $? 39 'QueryCodes' test.out

#- 40 CreateCodes
samples/cli/sample-apps Platform createCodes \
    --campaignId 'ptilkeOdW6CVTOjz' \
    --namespace $AB_NAMESPACE \
    --body '{"batchName": "ysPWxg99cWahJGvA", "codeValue": "bx8Uo1EHInR1M1BM", "quantity": 100}' \
    > test.out 2>&1
eval_tap $? 40 'CreateCodes' test.out

#- 41 Download
samples/cli/sample-apps Platform download \
    --campaignId 'mHJaFEo5CW9yjRPJ' \
    --namespace $AB_NAMESPACE \
    --batchName 'YRU5hzyvqmrCmGmY' \
    --batchNo '[58, 24, 90]' \
    --withBatchName 'false' \
    > test.out 2>&1
eval_tap $? 41 'Download' test.out

#- 42 BulkDisableCodes
samples/cli/sample-apps Platform bulkDisableCodes \
    --campaignId '4GAh6rtdQXrKGHjN' \
    --namespace $AB_NAMESPACE \
    --batchName '87RXiHjVugstu8W0' \
    --batchNo '[89, 64, 74]' \
    > test.out 2>&1
eval_tap $? 42 'BulkDisableCodes' test.out

#- 43 BulkEnableCodes
samples/cli/sample-apps Platform bulkEnableCodes \
    --campaignId 'bzeXyDtJdJZKdW18' \
    --namespace $AB_NAMESPACE \
    --batchName 'IqG8gRKBcqmcDGul' \
    --batchNo '[93, 80, 50]' \
    > test.out 2>&1
eval_tap $? 43 'BulkEnableCodes' test.out

#- 44 QueryRedeemHistory
samples/cli/sample-apps Platform queryRedeemHistory \
    --campaignId 'eGsEcX9G13TeDZJ5' \
    --namespace $AB_NAMESPACE \
    --code 'Q4fiFwHYuHgSbKne' \
    --limit '12' \
    --offset '0' \
    --userId 'qWSvFCGaCvfM4CC6' \
    > test.out 2>&1
eval_tap $? 44 'QueryRedeemHistory' test.out

#- 45 GetCode
samples/cli/sample-apps Platform getCode \
    --code '5ygOJ2XheX7cfxER' \
    --namespace $AB_NAMESPACE \
    --redeemable 'false' \
    --withBatchName 'false' \
    > test.out 2>&1
eval_tap $? 45 'GetCode' test.out

#- 46 DisableCode
samples/cli/sample-apps Platform disableCode \
    --code 'xDjkMkQjJmRddZvV' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 46 'DisableCode' test.out

#- 47 EnableCode
samples/cli/sample-apps Platform enableCode \
    --code 'XOv0ZCzZ1KQvyJz7' \
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
    --body '{"currencyCode": "AyfaQ4S3AK3qzmv9", "currencySymbol": "JBog6R6JfJQxeP05", "currencyType": "REAL", "decimals": 3, "localizationDescriptions": {"3FZDUey8vl1kY6V9": "SDb35UF0VNoC57k4", "uhRQpeVmJkPPkZLq": "YaABYX0ukQXZrmc1", "M2G4tKyXFzwfQa77": "KOaxNu1zq3uqcbRu"}}' \
    > test.out 2>&1
eval_tap $? 52 'CreateCurrency' test.out

#- 53 UpdateCurrency
samples/cli/sample-apps Platform updateCurrency \
    --currencyCode 'aVmwg7eZWG0IxQml' \
    --namespace $AB_NAMESPACE \
    --body '{"localizationDescriptions": {"m1gTyxfVlUVmNgGW": "P6dg0jOZF25NqSfB", "bkeS3YTApAhllBSd": "1P4E4j7Q9bFkg0mD", "YfiadgeVdApk4cB6": "12o2gnor5pwH8JGt"}}' \
    > test.out 2>&1
eval_tap $? 53 'UpdateCurrency' test.out

#- 54 DeleteCurrency
samples/cli/sample-apps Platform deleteCurrency \
    --currencyCode 'pCKWLQuJiutbzmoW' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 54 'DeleteCurrency' test.out

#- 55 GetCurrencyConfig
samples/cli/sample-apps Platform getCurrencyConfig \
    --currencyCode 'rgFIvEJaYB8ugEpj' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 55 'GetCurrencyConfig' test.out

#- 56 GetCurrencySummary
samples/cli/sample-apps Platform getCurrencySummary \
    --currencyCode 'ma9rMim5eeN5LEon' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 56 'GetCurrencySummary' test.out

#- 57 GetDLCItemConfigHistory
samples/cli/sample-apps Platform getDLCItemConfigHistory \
    --namespace $AB_NAMESPACE \
    --dlcId 'IIaxB9kqLRnjt1x9' \
    > test.out 2>&1
eval_tap $? 57 'GetDLCItemConfigHistory' test.out

#- 58 RestoreDLCItemConfigHistory
samples/cli/sample-apps Platform restoreDLCItemConfigHistory \
    --id '4O9YJyxKDASrWh1m' \
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
    --body '{"data": [{"autoUpdate": true, "enableRevocation": true, "id": "5tjoSU7Auh1PTyQo", "rewards": [{"currency": {"currencyCode": "edm73jHygD4PFbMq", "namespace": "knsgtVXVYClKdDIo"}, "item": {"itemId": "BLXSkpG6tp7ow1tX", "itemName": "IOHc0Yqtu1gWZk0a", "itemSku": "uhhPy1OFQ3BVdjAV", "itemType": "T4biywhpVFOrqslL"}, "quantity": 45, "type": "CURRENCY"}, {"currency": {"currencyCode": "z7rZxeMHHFOQoHky", "namespace": "TTaPv3NW1RNkQMJd"}, "item": {"itemId": "iKmrxch0sbypTV3v", "itemName": "PlzGyeBSkTjYtryU", "itemSku": "swfgUXlRgHjJY05c", "itemType": "4TxqBdbxKiAiUa82"}, "quantity": 32, "type": "CURRENCY"}, {"currency": {"currencyCode": "0etT3L2VPInPkhAL", "namespace": "CU2JhuxMk8Eok8sS"}, "item": {"itemId": "agMJs7V2KGP1cqaO", "itemName": "pBYTXq0JVFppKSSu", "itemSku": "RneKIAUzpKkuhX7U", "itemType": "8yVvBhZy9hNhAsrK"}, "quantity": 28, "type": "CURRENCY"}], "rvn": 81}, {"autoUpdate": true, "enableRevocation": false, "id": "893y7MyhuFmKW5hI", "rewards": [{"currency": {"currencyCode": "FZYZXFArHcAdKPi8", "namespace": "3ML1F5pU3Az5DAjn"}, "item": {"itemId": "B5BRafpynpqbZZAt", "itemName": "5qjAMtoVRnQcjiY9", "itemSku": "Z7s2dUEpoJkqWAAw", "itemType": "nu8R1vtrAtX1FSza"}, "quantity": 95, "type": "ITEM"}, {"currency": {"currencyCode": "tnFy7yuEJEiThNDv", "namespace": "9afpMJAjuzPaCwnA"}, "item": {"itemId": "7uVG4Jbu4Boozjyt", "itemName": "SlmVN3tkCqliNnpK", "itemSku": "c4oKav1nZ2oD0HiR", "itemType": "oZYPDgfqoeCM4BJZ"}, "quantity": 85, "type": "ITEM"}, {"currency": {"currencyCode": "7Y1ARbwYfO326MEV", "namespace": "gFUXlLSldHm4mHfW"}, "item": {"itemId": "bdNZnuTWZsBOsqms", "itemName": "faDOabazE7XEeNhc", "itemSku": "1z2K6p4BFJMDnWpT", "itemType": "EYS0RyVLV8t8f9a2"}, "quantity": 40, "type": "CURRENCY"}], "rvn": 6}, {"autoUpdate": true, "enableRevocation": false, "id": "Mv4BdSWlex6z4d01", "rewards": [{"currency": {"currencyCode": "QZl7JpWbrgY0jQ0C", "namespace": "sQyQH3G3FdsYYbca"}, "item": {"itemId": "G2NmFdAsj9b5HrjX", "itemName": "pafFPKaG5iVnK8Mk", "itemSku": "HeRL2xFNWSINDLxw", "itemType": "tAmkJgekqQ5bcMuV"}, "quantity": 30, "type": "CURRENCY"}, {"currency": {"currencyCode": "cCRqV0PQHQJFacY2", "namespace": "uQ0zfSZH0KxSnl08"}, "item": {"itemId": "PtHAjIUvnPWkAwMB", "itemName": "vbMMYDaL3BxelTGc", "itemSku": "7a0ZviKASoaHW5cE", "itemType": "K08EMIKv8Aho9yqx"}, "quantity": 14, "type": "CURRENCY"}, {"currency": {"currencyCode": "8ITLpNwJNDQvCnY5", "namespace": "iPkF6IA964TrV602"}, "item": {"itemId": "tpi7ZpKxmmCOs0QO", "itemName": "bWzYS4plsDxqaSkj", "itemSku": "5lDMyWadkurGOHyh", "itemType": "kv6oEbbSsVQAoC3v"}, "quantity": 59, "type": "ITEM"}], "rvn": 76}]}' \
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
    --body '{"data": [{"platform": "PSN", "platformDlcIdMap": {"GRyVVAbV1E3HuTcd": "aBhY0cUHBDCDl3kw", "jGGKUniR5Old42D3": "MD9YLPnctfjzB3Cb", "FcFUCOsdmY8tQfjQ": "KTS15TiBKx6TC28E"}}, {"platform": "PSN", "platformDlcIdMap": {"DTnduSw8zYRqqKDW": "w0Qk7OakBsYw4ufI", "tO6fiFaq32XxevRg": "ecXKSLCDXfW1KhdV", "zhjon6jyWZyaR3p8": "ssnKLZBvjJZB652u"}}, {"platform": "OCULUS", "platformDlcIdMap": {"VufFEvZfHbtXpDT2": "rYr9ddTFbuXQONaT", "dAnpqAGherCy1PvW": "AMzOu7ncPB1POCRK", "v9DZZcsS15JuHnuG": "pshmXySCAEfuTD0A"}}]}' \
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
    --appType 'DEMO' \
    --entitlementClazz 'APP' \
    --entitlementName 'Eb1Zo3Rf7uSortDT' \
    --itemId '["5AHIKwRDrnfhJqg0", "bH1TxT1mcYlTT47g", "EMclgpKctn4PHBne"]' \
    --limit '9' \
    --offset '71' \
    --origin 'GooglePlay' \
    --userId 'NEIVETXh8yzkah4a' \
    > test.out 2>&1
eval_tap $? 65 'QueryEntitlements' test.out

#- 66 QueryEntitlementsByItemIds
samples/cli/sample-apps Platform queryEntitlementsByItemIds \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --itemIds '["bLOROIUwhhpZW7hf", "1DHNvx9WdkcXvUhg", "pLILGBeJZIi0I5r4"]' \
    --limit '66' \
    --offset '100' \
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
    --body '{"entitlementGrantList": [{"collectionId": "lAhtxvDZjmsNzBHv", "endDate": "1993-01-18T00:00:00Z", "grantedCode": "lyV66pCPWOvCDKpv", "itemId": "t4736NJ33uekayy5", "itemNamespace": "QCHc08sAVKCE0G36", "language": "dvs", "metadata": {"pQrpfx6t3DGhPjn3": {}, "zzGNifYIDKoKY6L8": {}, "xhY1pHHCtSSJr6nl": {}}, "origin": "Twitch", "quantity": 84, "region": "LHBwbYfiWqDtWTeb", "source": "REDEEM_CODE", "startDate": "1984-02-18T00:00:00Z", "storeId": "8S92DuHxybye4PZL"}, {"collectionId": "bXN7f7Wy4ds61591", "endDate": "1982-08-31T00:00:00Z", "grantedCode": "yMfja3zeZPkMQNcX", "itemId": "pFSJsu3ZqJWgmwzH", "itemNamespace": "XnZ1YmdEpdALURae", "language": "DNCz", "metadata": {"VeXAq62psBBk7os0": {}, "nwPHbhr2Kr252WZa": {}, "DkZkTIAbjDQ4LfXa": {}}, "origin": "Oculus", "quantity": 87, "region": "AgxZBkrIeSo1qjLU", "source": "PROMOTION", "startDate": "1987-03-23T00:00:00Z", "storeId": "8DTILe8omxl57i0j"}, {"collectionId": "TnmITBUbUnVBAh0N", "endDate": "1991-02-12T00:00:00Z", "grantedCode": "q4eKNUaqhHYIaeJb", "itemId": "AHKfEsFjl0FyRVNP", "itemNamespace": "eyOMTZIFMHPGFeWM", "language": "fmMU_Dm", "metadata": {"IPgTvtQAvw5DdQ5S": {}, "YkMHJC81Z0bo0O6R": {}, "YvfMDBFq3FvMHVqR": {}}, "origin": "Playstation", "quantity": 22, "region": "b5EB9d7WL244bYgt", "source": "REFERRAL_BONUS", "startDate": "1975-08-28T00:00:00Z", "storeId": "0EJ9kjiimlmRzPSY"}], "userIds": ["ChxvSdFtERpJiauT", "eMGfedmn8S2RxYc3", "UFjlGVBmeB6iDoId"]}' \
    > test.out 2>&1
eval_tap $? 69 'GrantEntitlements' test.out

#- 70 RevokeEntitlements
samples/cli/sample-apps Platform revokeEntitlements \
    --namespace $AB_NAMESPACE \
    --body '["jbk572XpAyflVoIM", "g82YJs18HUTI6Zq0", "OXykbaDGeN0jY3ee"]' \
    > test.out 2>&1
eval_tap $? 70 'RevokeEntitlements' test.out

#- 71 GetEntitlement
samples/cli/sample-apps Platform getEntitlement \
    --entitlementId 'fo5ZRj6QXsNdiryb' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 71 'GetEntitlement' test.out

#- 72 QueryFulfillmentHistories
samples/cli/sample-apps Platform queryFulfillmentHistories \
    --namespace $AB_NAMESPACE \
    --limit '15' \
    --offset '52' \
    --status 'SUCCESS' \
    --userId 'SpSNPEJCfyFC690V' \
    > test.out 2>&1
eval_tap $? 72 'QueryFulfillmentHistories' test.out

#- 73 QueryIAPClawbackHistory
samples/cli/sample-apps Platform queryIAPClawbackHistory \
    --namespace $AB_NAMESPACE \
    --endTime 'S4o1HWSvSwBhK1Zp' \
    --eventType 'OTHER' \
    --externalOrderId 'NVpsqNKrpOj0lgkX' \
    --limit '13' \
    --offset '2' \
    --startTime 'WIDJYa0N7hKIInLe' \
    --status 'FAIL' \
    --userId 'xr8uqT9SjzER2dSM' \
    > test.out 2>&1
eval_tap $? 73 'QueryIAPClawbackHistory' test.out

#- 74 MockPlayStationStreamEvent
samples/cli/sample-apps Platform mockPlayStationStreamEvent \
    --namespace $AB_NAMESPACE \
    --body '{"body": {"account": "GH5Dqr0IEowiSbcN", "additionalData": {"entitlement": [{"clientTransaction": [{"amountConsumed": 80, "clientTransactionId": "HCppSZ9F8ulWwgjk"}, {"amountConsumed": 70, "clientTransactionId": "3s5fnX9noCR64EDa"}, {"amountConsumed": 58, "clientTransactionId": "Nq3WtiiKsQvI18Cx"}], "entitlementId": "tHbv0QG7LimbXRGi", "usageCount": 21}, {"clientTransaction": [{"amountConsumed": 8, "clientTransactionId": "Hv1El2Z8UlCvewyF"}, {"amountConsumed": 79, "clientTransactionId": "ESAGvcAUHzMhdxDn"}, {"amountConsumed": 51, "clientTransactionId": "fyNhMZBKgQOFMh2n"}], "entitlementId": "3EwCw0xtK88dO8jI", "usageCount": 24}, {"clientTransaction": [{"amountConsumed": 49, "clientTransactionId": "pwwrEpiP9yjwLo6o"}, {"amountConsumed": 51, "clientTransactionId": "C0jzE92kglN2tL3A"}, {"amountConsumed": 31, "clientTransactionId": "qgieMaM8jrC2pF3v"}], "entitlementId": "vJKwHAjVHo7tjopD", "usageCount": 63}], "purpose": "ewx8BPek2oH3h07M"}, "originalTitleName": "919lijFhmzpCUQXu", "paymentProductSKU": "jwqUrrawVHY2R9Db", "purchaseDate": "2BcwP9yRE2bxIVT8", "sourceOrderItemId": "7ZNKku3iwrVpNYPO", "titleName": "0Up0CWUHgxJnHlUt"}, "eventDomain": "rpyENCN80JEukXVn", "eventSource": "ZBjJg8Chinx6jLW7", "eventType": "G3gfHO9ZpCgx6PsT", "eventVersion": 57, "id": "8ztbZZrwHOomafQa", "timestamp": "eLxuMKn4NgIzi3YA"}' \
    > test.out 2>&1
eval_tap $? 74 'MockPlayStationStreamEvent' test.out

#- 75 MockXblClawbackEvent
samples/cli/sample-apps Platform mockXblClawbackEvent \
    --namespace $AB_NAMESPACE \
    --body '{"data": {"eventDate": "ptBxqaU4mqCMA2XD", "eventState": "0hJQWbacVxAMMJkH", "lineItemId": "qYoa3eafe1rdAXuE", "orderId": "C9nZX58zoOZoSlLd", "productId": "qVzOfXDSm3xn9Q9h", "productType": "oZpQf4857Kv2twUw", "purchasedDate": "GTTonugkYgJ2PlnO", "sandboxId": "skofxCGzVd7ShiLi", "skuId": "gOqhDJNcyn157Hbl", "subscriptionData": {"consumedDurationInDays": 3, "dateTime": "k0JEbVSnLT5f92Y0", "durationInDays": 17, "recurrenceId": "tZtsvHCvgU8eYVWf"}}, "datacontenttype": "1arU3KMXPgLFFkvg", "id": "GQztv8IEUpEAeaTs", "source": "rJgV8S8lda3K0GA2", "specVersion": "9uZtXZWuUssp7VsX", "subject": "Euxqb2foSZ5BCmti", "time": "pyDpDfG3zhu8hdJl", "traceparent": "p5ThhI2zQnD1hILl", "type": "rpJ3x4hM1kNd0C65"}' \
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
    --body '{"appAppleId": 36, "bundleId": "qgmmJNTIaar2F8B1", "issuerId": "mXOLdZSPYmD4drYM", "keyId": "Hd0eNoAzhQl1XCkt", "password": "9hufAkudrL3tcebO", "version": "V2"}' \
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
    --body '{"sandboxId": "iYDHUVFCYO2LYccp"}' \
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
    --body '{"applicationName": "b1pXFYHaa7xEJ9iz", "notificationTokenAudience": "RdorSZUzwp5kwcdn", "notificationTokenEmail": "LDESsFFoxIqbWlZJ", "packageName": "WO4y0SOxyrgpiJpz", "serviceAccountId": "YTYb2AoD6n3ZDF2d"}' \
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
    --body '{"data": [{"itemIdentity": "8Qg53cURLTmKgdbU", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"Mc9nsXkOAh0OHYU9": "oVo4hoUmCHkhJDl3", "87Ofp2oyyLETPwVk": "ibg3DUGprLMT3FCu", "In9nw283DhElrem9": "DslcvplwVAfeVl3u"}}, {"itemIdentity": "KKchbQZDr4cEfMMU", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"yVFkPcP2v5PGTj3O": "S6HAgujq4AAYwxvu", "gUy5vXJYluDfuUps": "w2cUgJR5NCPaxVcU", "w1wB4ZK2T0rttNYA": "EeNv196sexNntP94"}}, {"itemIdentity": "vp1tS4ku54JH8z6n", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"9FcFU0Kxzh6pl4bk": "lE4pHXcbnX6TJ5qn", "GOojprc4N6IPwqBU": "PV4sphWHQLeejJ9s", "gWgtPaPvqqDIW1qQ": "g5ew089pLgoclJrX"}}]}' \
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
    --body '{"appId": "9bX2kxjGllCZzLgQ", "appSecret": "vZEgsPip46J8cwFi", "webhookVerifyToken": "iswB6kZF2QKVyStb"}' \
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
    --body '{"sku": "1ssUCSJB5kXb2Khl"}' \
    > test.out 2>&1
eval_tap $? 94 'CreateOculusSubscriptionGroup' test.out

#- 95 DeleteOculusSubscriptionGroup
samples/cli/sample-apps Platform deleteOculusSubscriptionGroup \
    --namespace $AB_NAMESPACE \
    --sku 'eTIQKx6lejmHUEyl' \
    > test.out 2>&1
eval_tap $? 95 'DeleteOculusSubscriptionGroup' test.out

#- 96 ListOculusSubscriptionGroupTier
samples/cli/sample-apps Platform listOculusSubscriptionGroupTier \
    --namespace $AB_NAMESPACE \
    --sku 'b2WEenYs5N3u4ZaZ' \
    > test.out 2>&1
eval_tap $? 96 'ListOculusSubscriptionGroupTier' test.out

#- 97 AddTierIntoMetaQuestSubscriptionGroup
samples/cli/sample-apps Platform addTierIntoMetaQuestSubscriptionGroup \
    --namespace $AB_NAMESPACE \
    --body '{"groupSku": "UvQFtIgWDbHDkuS5", "sku": "IbUt1oDq1wb6FOnF"}' \
    > test.out 2>&1
eval_tap $? 97 'AddTierIntoMetaQuestSubscriptionGroup' test.out

#- 98 DeleteOculusSubscriptionTier
samples/cli/sample-apps Platform deleteOculusSubscriptionTier \
    --namespace $AB_NAMESPACE \
    --sku 'hVa904YMGKiIZECn' \
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
    --body '{"backOfficeServerClientId": "bh9bmb6CMMvqpTlg", "backOfficeServerClientSecret": "kYu7vOnL6gptIeNk", "enableStreamJob": true, "environment": "DmNLthVv98PbKjDs", "streamName": "DPD7v7INnoyrdMCW", "streamPartnerName": "UBBDLATI9JIhkaH5"}' \
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
    --body '{"backOfficeServerClientId": "hphEvogivmK2yNPX", "backOfficeServerClientSecret": "7Uo4J336zvTmf5c5", "enableStreamJob": false, "environment": "7VWguhpdce9TYqQI", "streamName": "JwhaykouLh3YmC2l", "streamPartnerName": "qk4zdmy4iyusLOyB"}' \
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
    --body '{"appId": "aYbnFgImkioDQPpl", "env": "LIVE", "publisherAuthenticationKey": "nAVg3cfpCyZCmTZN", "syncMode": "TRANSACTION"}' \
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
    --body '{"clientId": "gEZS5o4PnqASgG2Z", "clientSecret": "Gvb2X67sUubl9aHd", "organizationId": "WCBlGLWVDwuvjH7g"}' \
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
    --body '{"enableClawback": true, "entraAppClientId": "oF928w2eK4VRXCXS", "entraAppClientSecret": "zJCwCTw4cS9fRjCe", "entraTenantId": "wTeJIsYBfaTLrD6c", "relyingPartyCert": "WLYAGJSBFWQTuHPq"}' \
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
    --password 'UxMHjwZgerNh8JlL' \
    > test.out 2>&1
eval_tap $? 113 'UpdateXblBPCertFile' test.out

#- 114 QueryThirdPartyNotifications
samples/cli/sample-apps Platform queryThirdPartyNotifications \
    --namespace $AB_NAMESPACE \
    --endDate '5z7xlZAg1meybggm' \
    --externalId 'AExfB2OVEeXGZUNd' \
    --limit '20' \
    --offset '84' \
    --source 'APPLE' \
    --startDate 'NRoRA7wJ5R8ixeVR' \
    --status 'IGNORED' \
    --type 'LgbuXN8JYEmtGLLU' \
    > test.out 2>&1
eval_tap $? 114 'QueryThirdPartyNotifications' test.out

#- 115 QueryAbnormalTransactions
samples/cli/sample-apps Platform queryAbnormalTransactions \
    --namespace $AB_NAMESPACE \
    --limit '91' \
    --offset '2' \
    --orderId 'suIYgDfoyWFbhpNC' \
    --steamId '6MGaA72YC8G0egCQ' \
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
    --body '{"env": "LIVE", "lastTime": "1974-04-30T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 117 'AdminResetSteamJobTime' test.out

#- 118 AdminRefundIAPOrder
samples/cli/sample-apps Platform adminRefundIAPOrder \
    --iapOrderNo 'EGqBETgjXthD5OKQ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 118 'AdminRefundIAPOrder' test.out

#- 119 QuerySteamReportHistories
samples/cli/sample-apps Platform querySteamReportHistories \
    --namespace $AB_NAMESPACE \
    --limit '25' \
    --offset '2' \
    --orderId 'OLfE1jIDfOhcrnw5' \
    --processStatus 'IGNORED' \
    --steamId 'SfAzu0usHIoFiwoD' \
    > test.out 2>&1
eval_tap $? 119 'QuerySteamReportHistories' test.out

#- 120 QueryThirdPartySubscription
samples/cli/sample-apps Platform queryThirdPartySubscription \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --groupId 'kXUQbCWkMfw2wSbp' \
    --limit '97' \
    --offset '77' \
    --platform 'APPLE' \
    --productId 'T83MR1ouCMFteFxR' \
    --userId 'YPSYikaJqYhE2tzI' \
    > test.out 2>&1
eval_tap $? 120 'QueryThirdPartySubscription' test.out

#- 121 GetIAPOrderConsumeDetails
samples/cli/sample-apps Platform getIAPOrderConsumeDetails \
    --iapOrderNo 'zqL1Z7ZItaUss7N0' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 121 'GetIAPOrderConsumeDetails' test.out

#- 122 DownloadInvoiceDetails
samples/cli/sample-apps Platform downloadInvoiceDetails \
    --namespace $AB_NAMESPACE \
    --endTime 'hSGIFdqjVNZgwNBg' \
    --feature 'viObKqEXI7kM7Uj2' \
    --itemId 'TnYkvNSSE69mYDs5' \
    --itemType 'LOOTBOX' \
    --startTime '3tllpNi86SV9qJkY' \
    > test.out 2>&1
eval_tap $? 122 'DownloadInvoiceDetails' test.out

#- 123 GenerateInvoiceSummary
samples/cli/sample-apps Platform generateInvoiceSummary \
    --namespace $AB_NAMESPACE \
    --endTime 'bl7hGKrYbEsnSoh1' \
    --feature 'RF7N0ViSOPBFbIIT' \
    --itemId '5tNmPMPLTY1cdyyx' \
    --itemType 'COINS' \
    --startTime 'GY2pSGCzgJyNLSnq' \
    > test.out 2>&1
eval_tap $? 123 'GenerateInvoiceSummary' test.out

#- 124 SyncInGameItem
samples/cli/sample-apps Platform syncInGameItem \
    --namespace $AB_NAMESPACE \
    --storeId 'tSqpGhl6DcX6V4pq' \
    --body '{"categoryPath": "SJjRne2gcgeyLMmN", "targetItemId": "GtdUwSkesZVmLQC9", "targetNamespace": "T6SXgUq4jGMxO2ZM"}' \
    > test.out 2>&1
eval_tap $? 124 'SyncInGameItem' test.out

#- 125 CreateItem
samples/cli/sample-apps Platform createItem \
    --namespace $AB_NAMESPACE \
    --storeId '6OK5ejjnHIQBr45H' \
    --body '{"appId": "2dkNMTRhlmTKVCPO", "appType": "DEMO", "baseAppId": "txn2VyqrDBL6zpkz", "boothName": "WDojDNw7GABTpgvs", "categoryPath": "SOa1iYu6HfN5xfoV", "clazz": "4YTHkunQgqzIEaUM", "displayOrder": 24, "entitlementType": "CONSUMABLE", "ext": {"1HY3JBPXc3iNFIXz": {}, "efnbkDBfGwVh9FxZ": {}, "PYSecq0cAjMZImQ2": {}}, "features": ["neQmR7Rwn0GFwVdy", "D6qlt0Vyw06MgX25", "Ed1Dqv96OCz6FQdA"], "flexible": true, "images": [{"as": "ZtrD1nmGCbytLzCD", "caption": "le8d7zj0umxZuxy1", "height": 17, "imageUrl": "fYm0LQoDYfVtY3El", "smallImageUrl": "JtWE4PxYfT7aUPrI", "width": 16}, {"as": "3AwGp5lNmaYTDU4d", "caption": "c6TQMEMqnubX3O0Z", "height": 1, "imageUrl": "sN5rsnxoycU2AaNR", "smallImageUrl": "S294xd1tuPQo8fww", "width": 75}, {"as": "adl9lMtOFZzcKb4U", "caption": "hl8vjkHX7KGP97Ub", "height": 63, "imageUrl": "AkGG8AdxNXbTA0QL", "smallImageUrl": "EKblRNuJvBbrZxlu", "width": 54}], "inventoryConfig": {"customAttributes": {"2Zr65Hjktfr2CxhC": {}, "r55bE6ZGpJXiJf14": {}, "aCS8oscyVbNUUo8B": {}}, "serverCustomAttributes": {"2hyscd6R2crTkWQZ": {}, "YNXBMjYjnKAvxaBk": {}, "arHO2aZsPHsv9WqX": {}}, "slotUsed": 83}, "itemId": "OjHwELPkJnMoQhSL", "itemIds": ["1iNphp8EJuW6mgNH", "kHmOPpwhK3UJZVyM", "npK0zBi0dsXeryyT"], "itemQty": {"DxgXiMzf4ejgQV4A": 0, "iz3eFCjSbe6vsXBo": 21, "BpulRYEr79p7rQWE": 93}, "itemType": "SEASON", "listable": false, "localizations": {"eghq7tFPxhaBX9Oz": {"description": "u1Pnlm7DHOluuw0u", "localExt": {"7s74YPp7mmoVxVps": {}, "SgTQoXyYGgiKaXsA": {}, "GtU00N6RMCIl6Kix": {}}, "longDescription": "qc9Oo0IXutdEursE", "title": "fEQLWaPjH4UVkTjv"}, "eC3aHKXZSjUGTwEf": {"description": "rhMx9ftAaMgCtAF7", "localExt": {"qmzUtHAHrLcvb7Yq": {}, "f1JLeAwyBRgpteyG": {}, "osnAqhT4NPEdoEmo": {}}, "longDescription": "QGzNmD5BOH4t5z2a", "title": "pwcPNeWruqwEcU4f"}, "hW5wgi4UIJkZqvCn": {"description": "REiX9ITAKEhpGbEP", "localExt": {"0hUDXucs6Roju7j1": {}, "QRk97pNmLlffgqzG": {}, "pEDfLvHhZR5k96jw": {}}, "longDescription": "GrxXbTvqaAPb3NIx", "title": "J7RqwYS3kaIQbEDr"}}, "lootBoxConfig": {"rewardCount": 67, "rewards": [{"lootBoxItems": [{"count": 84, "duration": 18, "endDate": "1979-02-24T00:00:00Z", "itemId": "sEsb7UPDVwP6mYxY", "itemSku": "EalzqQ6IaMHltZOS", "itemType": "9MTBvMAyRt3IDqkB"}, {"count": 89, "duration": 31, "endDate": "1987-10-09T00:00:00Z", "itemId": "XxEPzZjbBOXwoK8V", "itemSku": "h24Tr1RftjgMgKNK", "itemType": "YCCYZbnaS6CTxz2r"}, {"count": 38, "duration": 80, "endDate": "1980-09-25T00:00:00Z", "itemId": "fpsBD2MBuRIuZNsW", "itemSku": "ua2mbsF5Vq21kR50", "itemType": "1tUyYA3cDAwT7RgD"}], "name": "ZQYtw8vY2qWCowOB", "odds": 0.04686787756005961, "type": "PROBABILITY_GROUP", "weight": 92}, {"lootBoxItems": [{"count": 58, "duration": 15, "endDate": "1985-02-13T00:00:00Z", "itemId": "TZueG5365wztGok8", "itemSku": "Iu2z4lClu9H1WiF0", "itemType": "SA2QcpwOBPuoGqyh"}, {"count": 37, "duration": 30, "endDate": "1990-07-24T00:00:00Z", "itemId": "CFrI5WtbTNvQbw5f", "itemSku": "oxTIosw6Vw6XkoEZ", "itemType": "MmlSUXqJdUiOoFrB"}, {"count": 66, "duration": 74, "endDate": "1983-08-06T00:00:00Z", "itemId": "lC3ROvwwjRiVffoj", "itemSku": "W1V0V4iFDKmr2CfM", "itemType": "slyxK4w6n88pe6AJ"}], "name": "9tQKRHarKcM6I9RW", "odds": 0.062449469207605635, "type": "REWARD", "weight": 70}, {"lootBoxItems": [{"count": 54, "duration": 49, "endDate": "1993-02-04T00:00:00Z", "itemId": "tU6VI8uDUA86AtDo", "itemSku": "csz3GEuce9DV6Hbk", "itemType": "UvtsyfePfUWc0qa4"}, {"count": 22, "duration": 62, "endDate": "1976-07-26T00:00:00Z", "itemId": "D6nbviMNM1VEJU5n", "itemSku": "EPIJr7YVpslWIdqb", "itemType": "UMh2jiNTt94TGsFq"}, {"count": 55, "duration": 56, "endDate": "1976-05-25T00:00:00Z", "itemId": "3quoDbQWbiuLAqtE", "itemSku": "FpCXOIAxlWmwsrw5", "itemType": "luFMMx1YgLpijlwp"}], "name": "wqxrV2f5sMVRSj9H", "odds": 0.8386847420668921, "type": "PROBABILITY_GROUP", "weight": 89}], "rollFunction": "DEFAULT"}, "maxCount": 28, "maxCountPerUser": 75, "name": "WXCQjnz7VX6iEvuc", "optionBoxConfig": {"boxItems": [{"count": 95, "duration": 35, "endDate": "1971-10-01T00:00:00Z", "itemId": "LTwN0xaki3lxZhDB", "itemSku": "FCI85aNCby5J3a7b", "itemType": "TTV60FFfDM7s8Yb2"}, {"count": 14, "duration": 99, "endDate": "1985-04-30T00:00:00Z", "itemId": "1aHmo4NaEUHEmO7e", "itemSku": "pIk3YX8Ku8QA14Dh", "itemType": "perRjrKK7sLWiNJd"}, {"count": 41, "duration": 47, "endDate": "1988-09-26T00:00:00Z", "itemId": "dP2MtTM28OxbUx10", "itemSku": "ZiomuJ2RE5mMmJDT", "itemType": "ASmIwrUt4XF4l0yY"}]}, "purchasable": true, "recurring": {"cycle": "MONTHLY", "fixedFreeDays": 82, "fixedTrialCycles": 1, "graceDays": 8}, "regionData": {"zOnpkGOUL7eLWsnS": [{"currencyCode": "6WqgLjMdOsAs69r3", "currencyNamespace": "kac5AERdCa5LAMla", "currencyType": "VIRTUAL", "discountAmount": 14, "discountExpireAt": "1974-12-31T00:00:00Z", "discountPercentage": 40, "discountPurchaseAt": "1977-06-25T00:00:00Z", "expireAt": "1977-04-02T00:00:00Z", "price": 58, "purchaseAt": "1991-04-23T00:00:00Z", "trialPrice": 15}, {"currencyCode": "h0NRhGhbkxiCW36F", "currencyNamespace": "VRLPN62hDCki81P8", "currencyType": "REAL", "discountAmount": 66, "discountExpireAt": "1979-02-26T00:00:00Z", "discountPercentage": 6, "discountPurchaseAt": "1989-10-06T00:00:00Z", "expireAt": "1993-12-31T00:00:00Z", "price": 32, "purchaseAt": "1989-04-14T00:00:00Z", "trialPrice": 66}, {"currencyCode": "94eXsBRcnYC07yIe", "currencyNamespace": "xoJQyqnv3py15iLS", "currencyType": "VIRTUAL", "discountAmount": 1, "discountExpireAt": "1977-05-12T00:00:00Z", "discountPercentage": 60, "discountPurchaseAt": "1981-04-28T00:00:00Z", "expireAt": "1980-11-30T00:00:00Z", "price": 45, "purchaseAt": "1981-03-11T00:00:00Z", "trialPrice": 29}], "SzpzLHCofuFe00GU": [{"currencyCode": "MnXJHLF6Zy9RfM4w", "currencyNamespace": "ctqxmDG0OHe48ADf", "currencyType": "REAL", "discountAmount": 33, "discountExpireAt": "1989-09-19T00:00:00Z", "discountPercentage": 92, "discountPurchaseAt": "1985-08-26T00:00:00Z", "expireAt": "1998-03-28T00:00:00Z", "price": 38, "purchaseAt": "1995-08-01T00:00:00Z", "trialPrice": 39}, {"currencyCode": "sPM9Fu9AfYFDDlcR", "currencyNamespace": "HKQF9k4Mad2TTWS3", "currencyType": "VIRTUAL", "discountAmount": 27, "discountExpireAt": "1991-02-20T00:00:00Z", "discountPercentage": 21, "discountPurchaseAt": "1974-06-25T00:00:00Z", "expireAt": "1983-11-30T00:00:00Z", "price": 73, "purchaseAt": "1981-09-14T00:00:00Z", "trialPrice": 39}, {"currencyCode": "IMHENba2ns5xdZqT", "currencyNamespace": "E0skxSOMBFJ9Mnrs", "currencyType": "VIRTUAL", "discountAmount": 45, "discountExpireAt": "1997-08-01T00:00:00Z", "discountPercentage": 54, "discountPurchaseAt": "1975-07-30T00:00:00Z", "expireAt": "1978-07-25T00:00:00Z", "price": 38, "purchaseAt": "1987-12-09T00:00:00Z", "trialPrice": 31}], "zpenGoqufslkURti": [{"currencyCode": "CkkJQfkJqVFb7v6F", "currencyNamespace": "OwBMVLOzRwXmJOPl", "currencyType": "VIRTUAL", "discountAmount": 16, "discountExpireAt": "1981-11-11T00:00:00Z", "discountPercentage": 37, "discountPurchaseAt": "1972-05-25T00:00:00Z", "expireAt": "1992-01-21T00:00:00Z", "price": 52, "purchaseAt": "1979-05-14T00:00:00Z", "trialPrice": 2}, {"currencyCode": "2IQHbatTLrXJYjqa", "currencyNamespace": "vpJNJ50inyoPkuRz", "currencyType": "VIRTUAL", "discountAmount": 7, "discountExpireAt": "1984-11-18T00:00:00Z", "discountPercentage": 21, "discountPurchaseAt": "1976-05-28T00:00:00Z", "expireAt": "1989-03-10T00:00:00Z", "price": 94, "purchaseAt": "1981-05-16T00:00:00Z", "trialPrice": 100}, {"currencyCode": "TEC2xwz9Vit1lBYi", "currencyNamespace": "CoDGsHD10DFjtyqb", "currencyType": "REAL", "discountAmount": 77, "discountExpireAt": "1972-12-19T00:00:00Z", "discountPercentage": 14, "discountPurchaseAt": "1984-01-08T00:00:00Z", "expireAt": "1982-04-19T00:00:00Z", "price": 42, "purchaseAt": "1993-08-05T00:00:00Z", "trialPrice": 91}]}, "saleConfig": {"currencyCode": "LyrWOFVSNl7lj9K2", "price": 27}, "seasonType": "PASS", "sectionExclusive": false, "sellable": false, "sku": "t9dV6sLjxjaLKUrj", "stackable": false, "status": "ACTIVE", "tags": ["xdVFtpqQ07PLWH39", "i8sFOKoyisg4Kaxb", "9o8OuYsXdmTUH1Ur"], "targetCurrencyCode": "iSVAC9alFG21O4Pa", "targetNamespace": "34cVvbBg2b9usfn9", "thumbnailUrl": "oXy24ADvgVOnZ8lm", "useCount": 39}' \
    > test.out 2>&1
eval_tap $? 125 'CreateItem' test.out

#- 126 GetItemByAppId
samples/cli/sample-apps Platform getItemByAppId \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --storeId 'LxdjJzwR5qr1zUqQ' \
    --appId '7Tqt02rXaV8Badbj' \
    > test.out 2>&1
eval_tap $? 126 'GetItemByAppId' test.out

#- 127 QueryItems
samples/cli/sample-apps Platform queryItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --appType 'DEMO' \
    --availableDate 'M3C0GW6zf2aTKs4D' \
    --baseAppId 'egEwzQegDC7e7RUa' \
    --categoryPath 'KVRc5QhvxMm9Z7TX' \
    --features '0HIsObVY29psxh3Y' \
    --includeSubCategoryItem 'true' \
    --itemType 'APP' \
    --limit '70' \
    --offset '54' \
    --region 'FCKH929lLQ5Av04d' \
    --sortBy '["displayOrder:asc", "updatedAt", "name:desc"]' \
    --storeId 'LPfJIcejVrINzbwi' \
    --tags 'ro5FdcHwTKfAfII7' \
    --targetNamespace 'VGaGF8FuHM6WuTWE' \
    > test.out 2>&1
eval_tap $? 127 'QueryItems' test.out

#- 128 ListBasicItemsByFeatures
samples/cli/sample-apps Platform listBasicItemsByFeatures \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --features '["Dh8VibxPNclggq1H", "csgSwsZcfRFl0JEO", "Yjk4J9oPTxpUlrNk"]' \
    > test.out 2>&1
eval_tap $? 128 'ListBasicItemsByFeatures' test.out

#- 129 GetItems
samples/cli/sample-apps Platform getItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 's7JSTPtOHrfilISv' \
    --itemIds 'uU8qEUVe5hXnQa24' \
    > test.out 2>&1
eval_tap $? 129 'GetItems' test.out

#- 130 GetItemBySku
samples/cli/sample-apps Platform getItemBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'qzKDiieAnWqGU4rn' \
    --sku 'TuOIZoKPPOHn3zKl' \
    > test.out 2>&1
eval_tap $? 130 'GetItemBySku' test.out

#- 131 GetLocaleItemBySku
samples/cli/sample-apps Platform getLocaleItemBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --language 'ayxtdQFThw7kNMU0' \
    --populateBundle 'true' \
    --region 'Bc9KLJrXG0g23kLG' \
    --storeId 'BGdHIAxwualDpKeD' \
    --sku 'G3nQIDVhpE5v2Clx' \
    > test.out 2>&1
eval_tap $? 131 'GetLocaleItemBySku' test.out

#- 132 GetEstimatedPrice
samples/cli/sample-apps Platform getEstimatedPrice \
    --namespace $AB_NAMESPACE \
    --platform '32ETLmMQ3dPzXcKJ' \
    --region 'sS3u7E3SUrikTTgA' \
    --storeId 'SX0eVv3XdIiUCkaQ' \
    --itemIds '1dJMJz2qVyBNDYEw' \
    --userId 'nYrlIcBzCogzFHk0' \
    > test.out 2>&1
eval_tap $? 132 'GetEstimatedPrice' test.out

#- 133 GetItemIdBySku
samples/cli/sample-apps Platform getItemIdBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --storeId 'qoE1uR73tni1mRID' \
    --sku 'hWU8BvwUL71zevqM' \
    > test.out 2>&1
eval_tap $? 133 'GetItemIdBySku' test.out

#- 134 GetBulkItemIdBySkus
samples/cli/sample-apps Platform getBulkItemIdBySkus \
    --namespace $AB_NAMESPACE \
    --sku '["mdh0TsQAdDb0bmXZ", "zqEd8EBRWJmKcfGe", "wvpPzRi6qJoVzwtT"]' \
    --storeId 'b3DUy5rRX5h1C9pe' \
    > test.out 2>&1
eval_tap $? 134 'GetBulkItemIdBySkus' test.out

#- 135 BulkGetLocaleItems
samples/cli/sample-apps Platform bulkGetLocaleItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --language 'L4duIVmn0RbrPOlC' \
    --region 'WnVMr0yhvwNL781h' \
    --storeId '4myoes2iXHxPxv2w' \
    --itemIds 'Ezyi1cvNAmXUOFcQ' \
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
    --platform 'hQ8iYbNSe3zGiLoq' \
    --userId 'OlBZNGdLcRPvKDFu' \
    --body '{"itemIds": ["LUFXRq0GrvVAiAKH", "2HsTgKaXpGEwWtFO", "1CFyUoR2WvSZrbfz"]}' \
    > test.out 2>&1
eval_tap $? 137 'ValidateItemPurchaseCondition' test.out

#- 138 BulkUpdateRegionData
samples/cli/sample-apps Platform bulkUpdateRegionData \
    --namespace $AB_NAMESPACE \
    --storeId 'FQTDYEVk9GmufFnW' \
    --body '{"changes": [{"itemIdentities": ["wueX8WWyVqTNfwpn", "3nL0Ld6tfk26x2EO", "QbQdrDaU50QCb9ty"], "itemIdentityType": "ITEM_SKU", "regionData": {"QpSqIDNuqbhiqDnB": [{"currencyCode": "ofPwsGJeer2Tc3o1", "currencyNamespace": "REUJMmKQvUb0VrYD", "currencyType": "REAL", "discountAmount": 58, "discountExpireAt": "1972-05-31T00:00:00Z", "discountPercentage": 54, "discountPurchaseAt": "1975-12-04T00:00:00Z", "discountedPrice": 38, "expireAt": "1979-04-06T00:00:00Z", "price": 5, "purchaseAt": "1972-05-21T00:00:00Z", "trialPrice": 37}, {"currencyCode": "QKElKFjTnGC2U4Tj", "currencyNamespace": "sSM9kVhnkxGH5Eib", "currencyType": "VIRTUAL", "discountAmount": 32, "discountExpireAt": "1999-10-09T00:00:00Z", "discountPercentage": 48, "discountPurchaseAt": "1971-12-25T00:00:00Z", "discountedPrice": 65, "expireAt": "1988-01-07T00:00:00Z", "price": 85, "purchaseAt": "1976-10-16T00:00:00Z", "trialPrice": 94}, {"currencyCode": "H93igbtpZP3aczBK", "currencyNamespace": "JTfGzsUgeKgk1OtL", "currencyType": "VIRTUAL", "discountAmount": 93, "discountExpireAt": "1975-07-22T00:00:00Z", "discountPercentage": 25, "discountPurchaseAt": "1972-05-28T00:00:00Z", "discountedPrice": 92, "expireAt": "1986-02-12T00:00:00Z", "price": 2, "purchaseAt": "1971-02-13T00:00:00Z", "trialPrice": 2}], "ObCLeoba4QIJrDAf": [{"currencyCode": "Fk5HPHo7xHnFEJgV", "currencyNamespace": "WkaJqxTqoXjThTGG", "currencyType": "REAL", "discountAmount": 17, "discountExpireAt": "1978-02-09T00:00:00Z", "discountPercentage": 54, "discountPurchaseAt": "1978-02-25T00:00:00Z", "discountedPrice": 16, "expireAt": "1995-11-25T00:00:00Z", "price": 90, "purchaseAt": "1977-07-31T00:00:00Z", "trialPrice": 75}, {"currencyCode": "1w9aYTNpqRFPr572", "currencyNamespace": "YECyQFyrZWjiOwac", "currencyType": "REAL", "discountAmount": 82, "discountExpireAt": "1984-09-04T00:00:00Z", "discountPercentage": 79, "discountPurchaseAt": "1981-09-07T00:00:00Z", "discountedPrice": 10, "expireAt": "1974-01-24T00:00:00Z", "price": 42, "purchaseAt": "1976-12-24T00:00:00Z", "trialPrice": 73}, {"currencyCode": "AgKVWvA0e98ERQH2", "currencyNamespace": "MJXaMdjKECr97BHO", "currencyType": "VIRTUAL", "discountAmount": 63, "discountExpireAt": "1979-11-20T00:00:00Z", "discountPercentage": 48, "discountPurchaseAt": "1982-06-19T00:00:00Z", "discountedPrice": 10, "expireAt": "1989-06-09T00:00:00Z", "price": 3, "purchaseAt": "1977-09-09T00:00:00Z", "trialPrice": 5}], "qeG8lHQomPOv7VrS": [{"currencyCode": "vpm3dZOghrLrGhLf", "currencyNamespace": "euTdsLh2UpJYYmTN", "currencyType": "REAL", "discountAmount": 77, "discountExpireAt": "1986-11-05T00:00:00Z", "discountPercentage": 45, "discountPurchaseAt": "1995-06-29T00:00:00Z", "discountedPrice": 70, "expireAt": "1999-11-28T00:00:00Z", "price": 39, "purchaseAt": "1997-04-05T00:00:00Z", "trialPrice": 50}, {"currencyCode": "LqA4QGXNYuB1m51O", "currencyNamespace": "xUXvU7WMnMQ9olYu", "currencyType": "REAL", "discountAmount": 0, "discountExpireAt": "1984-07-13T00:00:00Z", "discountPercentage": 13, "discountPurchaseAt": "1976-04-03T00:00:00Z", "discountedPrice": 75, "expireAt": "1978-09-10T00:00:00Z", "price": 47, "purchaseAt": "1984-03-20T00:00:00Z", "trialPrice": 92}, {"currencyCode": "eL35TcJx2YnWj1Kb", "currencyNamespace": "ttLzeYBvVUrQ0Rn9", "currencyType": "REAL", "discountAmount": 12, "discountExpireAt": "1987-09-18T00:00:00Z", "discountPercentage": 8, "discountPurchaseAt": "1999-09-02T00:00:00Z", "discountedPrice": 57, "expireAt": "1992-01-13T00:00:00Z", "price": 47, "purchaseAt": "1990-01-11T00:00:00Z", "trialPrice": 64}]}}, {"itemIdentities": ["ax2lndzdeWecgfU2", "VN14uiclzS8sCJtZ", "ZWof0n4UeXisi8mM"], "itemIdentityType": "ITEM_SKU", "regionData": {"4VJIz8s3B3Zx3qc6": [{"currencyCode": "uHF8VHGkrZTwQ2Sr", "currencyNamespace": "ZKE3NEgMeYiOv3CJ", "currencyType": "VIRTUAL", "discountAmount": 74, "discountExpireAt": "1989-01-15T00:00:00Z", "discountPercentage": 78, "discountPurchaseAt": "1980-09-06T00:00:00Z", "discountedPrice": 72, "expireAt": "1974-12-04T00:00:00Z", "price": 36, "purchaseAt": "1988-03-03T00:00:00Z", "trialPrice": 45}, {"currencyCode": "qER4dIuAyQu7mXSu", "currencyNamespace": "W8fcXdYCVxXL2Jk4", "currencyType": "VIRTUAL", "discountAmount": 0, "discountExpireAt": "1992-04-12T00:00:00Z", "discountPercentage": 100, "discountPurchaseAt": "1999-11-16T00:00:00Z", "discountedPrice": 84, "expireAt": "1974-11-01T00:00:00Z", "price": 67, "purchaseAt": "1993-01-13T00:00:00Z", "trialPrice": 36}, {"currencyCode": "49Fcn9L3zYORIb6i", "currencyNamespace": "OfUyZhtPrv6cgvNi", "currencyType": "VIRTUAL", "discountAmount": 9, "discountExpireAt": "1994-07-18T00:00:00Z", "discountPercentage": 47, "discountPurchaseAt": "1995-02-08T00:00:00Z", "discountedPrice": 82, "expireAt": "1990-02-17T00:00:00Z", "price": 70, "purchaseAt": "1976-05-28T00:00:00Z", "trialPrice": 86}], "SCWjcscg4gGYoRvp": [{"currencyCode": "VJfTnIEut1PCzrmJ", "currencyNamespace": "FQLfPjDd2pbi6vR4", "currencyType": "REAL", "discountAmount": 60, "discountExpireAt": "1993-02-23T00:00:00Z", "discountPercentage": 35, "discountPurchaseAt": "1978-12-14T00:00:00Z", "discountedPrice": 88, "expireAt": "1978-03-23T00:00:00Z", "price": 35, "purchaseAt": "1974-10-27T00:00:00Z", "trialPrice": 76}, {"currencyCode": "IkQRPa6jTskxSB8E", "currencyNamespace": "si8a3bLZkWdt2ktB", "currencyType": "REAL", "discountAmount": 59, "discountExpireAt": "1994-05-09T00:00:00Z", "discountPercentage": 4, "discountPurchaseAt": "1980-05-06T00:00:00Z", "discountedPrice": 17, "expireAt": "1991-02-11T00:00:00Z", "price": 29, "purchaseAt": "1986-11-24T00:00:00Z", "trialPrice": 3}, {"currencyCode": "5KJf12iYUTMpN7VQ", "currencyNamespace": "ihHL0hkRLrmo1NAD", "currencyType": "REAL", "discountAmount": 60, "discountExpireAt": "1978-04-21T00:00:00Z", "discountPercentage": 69, "discountPurchaseAt": "1979-05-20T00:00:00Z", "discountedPrice": 51, "expireAt": "1976-08-16T00:00:00Z", "price": 9, "purchaseAt": "1989-01-28T00:00:00Z", "trialPrice": 5}], "HwkuCkyaKsOdlQ8i": [{"currencyCode": "xQJcVkp4T6sYv83A", "currencyNamespace": "wihSXXb0NydBoiLj", "currencyType": "REAL", "discountAmount": 27, "discountExpireAt": "1994-07-17T00:00:00Z", "discountPercentage": 97, "discountPurchaseAt": "1976-07-01T00:00:00Z", "discountedPrice": 49, "expireAt": "1991-07-08T00:00:00Z", "price": 36, "purchaseAt": "1987-07-15T00:00:00Z", "trialPrice": 3}, {"currencyCode": "C9ab62wQPCD2e2x5", "currencyNamespace": "07AvyTq47HJTVpzQ", "currencyType": "REAL", "discountAmount": 53, "discountExpireAt": "1981-07-15T00:00:00Z", "discountPercentage": 41, "discountPurchaseAt": "1997-09-08T00:00:00Z", "discountedPrice": 25, "expireAt": "1991-02-15T00:00:00Z", "price": 97, "purchaseAt": "1999-03-19T00:00:00Z", "trialPrice": 55}, {"currencyCode": "9U9zMncJfKgTa2qi", "currencyNamespace": "tPomMDJdNQCdberT", "currencyType": "VIRTUAL", "discountAmount": 77, "discountExpireAt": "1992-05-03T00:00:00Z", "discountPercentage": 62, "discountPurchaseAt": "1990-04-04T00:00:00Z", "discountedPrice": 56, "expireAt": "1999-09-11T00:00:00Z", "price": 2, "purchaseAt": "1996-04-15T00:00:00Z", "trialPrice": 62}]}}, {"itemIdentities": ["k9Qf9IEie3BheQGO", "X2WFYWmlDjmxV4gF", "2kVtjs8GZyMMjrqF"], "itemIdentityType": "ITEM_ID", "regionData": {"Wjxglpi9mKH0DvUk": [{"currencyCode": "Pv9jeyVwuBGsYHhQ", "currencyNamespace": "EMhYm3kApzpJ6XDK", "currencyType": "VIRTUAL", "discountAmount": 11, "discountExpireAt": "1979-02-05T00:00:00Z", "discountPercentage": 34, "discountPurchaseAt": "1996-04-06T00:00:00Z", "discountedPrice": 8, "expireAt": "1981-06-27T00:00:00Z", "price": 88, "purchaseAt": "1997-03-15T00:00:00Z", "trialPrice": 74}, {"currencyCode": "JmEWoddoy61dbaPb", "currencyNamespace": "uy691UEh2YHmpbII", "currencyType": "REAL", "discountAmount": 33, "discountExpireAt": "1977-07-21T00:00:00Z", "discountPercentage": 85, "discountPurchaseAt": "1974-10-12T00:00:00Z", "discountedPrice": 57, "expireAt": "1992-02-27T00:00:00Z", "price": 57, "purchaseAt": "1992-07-11T00:00:00Z", "trialPrice": 58}, {"currencyCode": "i5d1RxB2NpMdednb", "currencyNamespace": "5gzOk5egWePXDIBm", "currencyType": "REAL", "discountAmount": 85, "discountExpireAt": "1974-11-27T00:00:00Z", "discountPercentage": 78, "discountPurchaseAt": "1997-07-24T00:00:00Z", "discountedPrice": 21, "expireAt": "1973-05-04T00:00:00Z", "price": 33, "purchaseAt": "1998-09-09T00:00:00Z", "trialPrice": 65}], "MFSeAOyS34BU2GFG": [{"currencyCode": "1cqqFbTMz8aYLpFh", "currencyNamespace": "bm230RFormtuh0ho", "currencyType": "VIRTUAL", "discountAmount": 64, "discountExpireAt": "1972-04-15T00:00:00Z", "discountPercentage": 13, "discountPurchaseAt": "1977-04-20T00:00:00Z", "discountedPrice": 69, "expireAt": "1991-10-09T00:00:00Z", "price": 91, "purchaseAt": "1978-08-05T00:00:00Z", "trialPrice": 65}, {"currencyCode": "afkaDsg7mcqz2DdH", "currencyNamespace": "8IxHovYg0aPKMjMx", "currencyType": "VIRTUAL", "discountAmount": 4, "discountExpireAt": "1983-04-14T00:00:00Z", "discountPercentage": 68, "discountPurchaseAt": "1978-06-05T00:00:00Z", "discountedPrice": 30, "expireAt": "1974-05-30T00:00:00Z", "price": 68, "purchaseAt": "1980-08-25T00:00:00Z", "trialPrice": 37}, {"currencyCode": "eQUAfgNyd1ENL6Cr", "currencyNamespace": "JhyPrFILxhpHRcOi", "currencyType": "REAL", "discountAmount": 79, "discountExpireAt": "1998-02-20T00:00:00Z", "discountPercentage": 97, "discountPurchaseAt": "1975-01-11T00:00:00Z", "discountedPrice": 38, "expireAt": "1974-09-08T00:00:00Z", "price": 92, "purchaseAt": "1988-06-21T00:00:00Z", "trialPrice": 72}], "00b5QQM3dlmItEll": [{"currencyCode": "qNQBjq8qy2f9cEpk", "currencyNamespace": "zmrcgYtkIRBRohlJ", "currencyType": "VIRTUAL", "discountAmount": 25, "discountExpireAt": "1996-04-07T00:00:00Z", "discountPercentage": 17, "discountPurchaseAt": "1992-08-22T00:00:00Z", "discountedPrice": 95, "expireAt": "1971-07-27T00:00:00Z", "price": 11, "purchaseAt": "1974-12-07T00:00:00Z", "trialPrice": 26}, {"currencyCode": "nYmyiliTi8aRTTVI", "currencyNamespace": "YpMbxHEyiTOu4cuD", "currencyType": "REAL", "discountAmount": 46, "discountExpireAt": "1983-02-27T00:00:00Z", "discountPercentage": 45, "discountPurchaseAt": "1983-02-02T00:00:00Z", "discountedPrice": 9, "expireAt": "1988-02-11T00:00:00Z", "price": 11, "purchaseAt": "1981-04-28T00:00:00Z", "trialPrice": 22}, {"currencyCode": "zV4SiQHujvpfhoS3", "currencyNamespace": "6oHOVx1gS7VSFAJh", "currencyType": "VIRTUAL", "discountAmount": 58, "discountExpireAt": "1981-06-20T00:00:00Z", "discountPercentage": 46, "discountPurchaseAt": "1986-08-16T00:00:00Z", "discountedPrice": 54, "expireAt": "1987-10-27T00:00:00Z", "price": 10, "purchaseAt": "1985-12-11T00:00:00Z", "trialPrice": 88}]}}]}' \
    > test.out 2>&1
eval_tap $? 138 'BulkUpdateRegionData' test.out

#- 139 SearchItems
samples/cli/sample-apps Platform searchItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --itemType 'OPTIONBOX' \
    --limit '80' \
    --offset '29' \
    --sortBy 'xPRy7ugqfHcuhzwd' \
    --storeId 'Wd0ivYwJqxzq53Uc' \
    --keyword 'BHQAluJKJJAuV6Wy' \
    --language 'ucI88OwrXMAIy65p' \
    > test.out 2>&1
eval_tap $? 139 'SearchItems' test.out

#- 140 QueryUncategorizedItems
samples/cli/sample-apps Platform queryUncategorizedItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --limit '40' \
    --offset '29' \
    --sortBy '["createdAt", "updatedAt:desc", "name:asc"]' \
    --storeId 'vQwt2lB5tFHBrueG' \
    > test.out 2>&1
eval_tap $? 140 'QueryUncategorizedItems' test.out

#- 141 GetItem
samples/cli/sample-apps Platform getItem \
    --itemId 'uy4IpF24WBN4adgB' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'NJjGBTKepd5dEnd7' \
    > test.out 2>&1
eval_tap $? 141 'GetItem' test.out

#- 142 UpdateItem
samples/cli/sample-apps Platform updateItem \
    --itemId '7FVCFPYUiO4rful4' \
    --namespace $AB_NAMESPACE \
    --storeId 'rY6X5gbnH9iDasQa' \
    --body '{"appId": "tBi7k6XJvyrJjFoj", "appType": "DLC", "baseAppId": "5BpaZPctOEonkuSW", "boothName": "zOkQNk0mz6spnSJa", "categoryPath": "NiSP9PSPy3chxrDx", "clazz": "rI6fS4yQsAopbfHL", "displayOrder": 9, "entitlementType": "DURABLE", "ext": {"BlAQC6DThZwMwmf3": {}, "6mqAN8zA0oEAdU9i": {}, "0kVjw1cf4VWCt59I": {}}, "features": ["GJezdE0zdMX2qxut", "BOlhmwC6diOXHNHx", "GgtY5XOJgVDPmJ5L"], "flexible": false, "images": [{"as": "0I9argpW43cLBRyg", "caption": "zFYJO3T0hJrfqeLU", "height": 39, "imageUrl": "09WPRgojfFMZodDj", "smallImageUrl": "aoMiB4AqulcX1TIZ", "width": 29}, {"as": "BStNgcfBeBrOxKIZ", "caption": "PXLfEET6a6ENfjkm", "height": 14, "imageUrl": "QMgVKihBr581PBIg", "smallImageUrl": "6DpqWbBZ8vmAtmaq", "width": 16}, {"as": "fg5seHsyqtPSU5i4", "caption": "8vW9AYKUeWtLZfrH", "height": 90, "imageUrl": "OG7iFrky9MAkKalw", "smallImageUrl": "WNglf21C7I82mVXD", "width": 54}], "inventoryConfig": {"customAttributes": {"TWrzrg26r0wyRYAP": {}, "WWTyJTma3pfyaLKO": {}, "4CCS559oAmNroryq": {}}, "serverCustomAttributes": {"PEIsKj5ARUEbJKNu": {}, "8iIOwWX2361pIsbG": {}, "CmMZMhf379RvOVtu": {}}, "slotUsed": 33}, "itemIds": ["aoEKunJysZ586PLP", "luLcygfuRxmCH4uW", "M7l1hOaklhWtVD34"], "itemQty": {"uD4XfbqJGC1dQEeX": 97, "PopKKZShdY3mwsCk": 32, "z6HvahxTDc0LAYzT": 18}, "itemType": "SUBSCRIPTION", "listable": false, "localizations": {"iXb6qTujTQd1u04U": {"description": "8M5Az1TQbggXZrFM", "localExt": {"pG1oLPYjVOL4OHa6": {}, "NWTvzBv0Ns6zHktU": {}, "zJr6RWr1AUfvaXLG": {}}, "longDescription": "4Bnd2N8retNeLpy0", "title": "VQ6IiWosp6nkrcYS"}, "KlcRYOf2jSIf26kl": {"description": "GR4mskYAwg1UcxwS", "localExt": {"IuwL5XRAl1wN8npY": {}, "GmH7TuNc5X7s5Ck9": {}, "ilzlW1h8JNWX81oG": {}}, "longDescription": "uQzWe5FGwmViV7r9", "title": "BKBqmMnQRblkvga8"}, "JdmJuJTYzhzWgrvV": {"description": "Z4kUUTxv4aYvyer5", "localExt": {"i1I47YGSIqFd17pO": {}, "l2EgUpd3WGXDlTXp": {}, "HuBYvRC4fOzqgbBG": {}}, "longDescription": "tTjfD7pQ9GnmRUYc", "title": "tiTAuvj4GJJIQCn5"}}, "lootBoxConfig": {"rewardCount": 17, "rewards": [{"lootBoxItems": [{"count": 35, "duration": 3, "endDate": "1983-07-05T00:00:00Z", "itemId": "iF9GJjtuFXrZWecH", "itemSku": "Ynp6pJkaOEHLnoax", "itemType": "Q7qh54KlrKGm3365"}, {"count": 64, "duration": 22, "endDate": "1984-04-23T00:00:00Z", "itemId": "vFrJ9jWQKwYob78M", "itemSku": "tcumTUyK6mECc69h", "itemType": "zQoXWYTaJXvWtzat"}, {"count": 74, "duration": 13, "endDate": "1974-06-20T00:00:00Z", "itemId": "yyfI3AkvgcqntrBD", "itemSku": "QSprDjibuekSjOvg", "itemType": "EDPGq5ma1VJPyeYo"}], "name": "TYlnM6GB8aTv3bKW", "odds": 0.6452291358172837, "type": "REWARD_GROUP", "weight": 16}, {"lootBoxItems": [{"count": 20, "duration": 41, "endDate": "1972-11-15T00:00:00Z", "itemId": "cqKWyJ5w39z09Wnq", "itemSku": "7DqLwUt40jBXSGvX", "itemType": "1BFiGMPsG86uEIOf"}, {"count": 28, "duration": 97, "endDate": "1983-10-28T00:00:00Z", "itemId": "4vc3ehKGa3HOamMz", "itemSku": "NIJc7usL95fXsavW", "itemType": "lOTILlCSQ0VsHl4A"}, {"count": 86, "duration": 43, "endDate": "1980-07-05T00:00:00Z", "itemId": "mjdBAljNWJOMOvwN", "itemSku": "q3fG0g2ZwjKcHtGy", "itemType": "rMuFKTXEEVQLNv9G"}], "name": "Mw8vOzikA9j2cnsp", "odds": 0.4586347472184399, "type": "REWARD_GROUP", "weight": 66}, {"lootBoxItems": [{"count": 47, "duration": 71, "endDate": "1994-12-29T00:00:00Z", "itemId": "1q7DUBY1kB9m7s0w", "itemSku": "8cpHROBI7O3XUFBf", "itemType": "h85EtBlnS5jSCTsM"}, {"count": 15, "duration": 27, "endDate": "1992-06-26T00:00:00Z", "itemId": "kkFzUZBnaeif8KqW", "itemSku": "U9BwuZgEhJYcQhbo", "itemType": "iNweieB9aVEhBT9K"}, {"count": 18, "duration": 7, "endDate": "1973-08-13T00:00:00Z", "itemId": "XnmXozYQZujHkaxr", "itemSku": "C9tfafimNv8xcMQK", "itemType": "GkkcYWNnaSGD1nEs"}], "name": "gY3KrFextG5sD9ts", "odds": 0.642879660101052, "type": "REWARD", "weight": 35}], "rollFunction": "CUSTOM"}, "maxCount": 96, "maxCountPerUser": 84, "name": "4gdaB6N0dQyffsQ6", "optionBoxConfig": {"boxItems": [{"count": 59, "duration": 52, "endDate": "1986-10-17T00:00:00Z", "itemId": "kubDFskJisB5NYbd", "itemSku": "BxCZ6FrnCKW3znm8", "itemType": "lj5awiQ4sJVngEmE"}, {"count": 92, "duration": 68, "endDate": "1987-05-01T00:00:00Z", "itemId": "tw4s718L19aUWm1e", "itemSku": "IajvGF2FcdVtqEN9", "itemType": "KcHHrwinHB37k3n4"}, {"count": 31, "duration": 69, "endDate": "1982-01-14T00:00:00Z", "itemId": "9bqR0XMMOJHnC4HQ", "itemSku": "mmVqOv6cALv3Bi8W", "itemType": "ErKwaUpValuUOx3e"}]}, "purchasable": false, "recurring": {"cycle": "MONTHLY", "fixedFreeDays": 66, "fixedTrialCycles": 72, "graceDays": 66}, "regionData": {"XpWxZZ9WXr2xPJSU": [{"currencyCode": "hR26tS48963GPEe7", "currencyNamespace": "nbU8hknqODH96dql", "currencyType": "REAL", "discountAmount": 44, "discountExpireAt": "1976-07-21T00:00:00Z", "discountPercentage": 14, "discountPurchaseAt": "1985-08-03T00:00:00Z", "expireAt": "1977-11-02T00:00:00Z", "price": 62, "purchaseAt": "1984-09-07T00:00:00Z", "trialPrice": 13}, {"currencyCode": "Tya5uBS5q4NdjlpS", "currencyNamespace": "MVaCIMBGp84LDwFh", "currencyType": "REAL", "discountAmount": 55, "discountExpireAt": "1975-09-17T00:00:00Z", "discountPercentage": 95, "discountPurchaseAt": "1991-05-16T00:00:00Z", "expireAt": "1992-01-17T00:00:00Z", "price": 3, "purchaseAt": "1997-01-14T00:00:00Z", "trialPrice": 46}, {"currencyCode": "SceRkJjsuicLMiiv", "currencyNamespace": "ttcPo2DXsZOdYPyi", "currencyType": "REAL", "discountAmount": 85, "discountExpireAt": "1974-08-12T00:00:00Z", "discountPercentage": 19, "discountPurchaseAt": "1976-04-28T00:00:00Z", "expireAt": "1991-08-13T00:00:00Z", "price": 37, "purchaseAt": "1988-03-25T00:00:00Z", "trialPrice": 74}], "3uAF9fd5a5TkLHs1": [{"currencyCode": "ivAuw8FAaSBYf8cL", "currencyNamespace": "kugDFYfJt7Y18mvn", "currencyType": "VIRTUAL", "discountAmount": 28, "discountExpireAt": "1975-05-26T00:00:00Z", "discountPercentage": 34, "discountPurchaseAt": "1971-05-05T00:00:00Z", "expireAt": "1988-04-08T00:00:00Z", "price": 34, "purchaseAt": "1979-09-27T00:00:00Z", "trialPrice": 75}, {"currencyCode": "Rc3rAXGpBT4DXflI", "currencyNamespace": "tJYxU00gw9gPms2C", "currencyType": "REAL", "discountAmount": 39, "discountExpireAt": "1974-08-29T00:00:00Z", "discountPercentage": 80, "discountPurchaseAt": "1992-08-21T00:00:00Z", "expireAt": "1996-07-14T00:00:00Z", "price": 67, "purchaseAt": "1984-01-17T00:00:00Z", "trialPrice": 32}, {"currencyCode": "NBNK9p1wUhMyonni", "currencyNamespace": "VBFNN7sTtQLBAYED", "currencyType": "REAL", "discountAmount": 38, "discountExpireAt": "1997-09-27T00:00:00Z", "discountPercentage": 3, "discountPurchaseAt": "1992-08-31T00:00:00Z", "expireAt": "1981-02-27T00:00:00Z", "price": 80, "purchaseAt": "1975-09-22T00:00:00Z", "trialPrice": 53}], "eqqE6zvLebLQSoZe": [{"currencyCode": "WCi8mXZqlF5x6L3o", "currencyNamespace": "vsGyTwVIQ5QfDpX9", "currencyType": "REAL", "discountAmount": 17, "discountExpireAt": "1996-05-22T00:00:00Z", "discountPercentage": 93, "discountPurchaseAt": "1980-01-16T00:00:00Z", "expireAt": "1982-11-02T00:00:00Z", "price": 64, "purchaseAt": "1998-07-13T00:00:00Z", "trialPrice": 69}, {"currencyCode": "AiWCE4baUyWDIMDF", "currencyNamespace": "83mOc1wCHXbFVPUj", "currencyType": "VIRTUAL", "discountAmount": 22, "discountExpireAt": "1983-10-10T00:00:00Z", "discountPercentage": 44, "discountPurchaseAt": "1988-12-16T00:00:00Z", "expireAt": "1984-11-24T00:00:00Z", "price": 9, "purchaseAt": "1984-07-11T00:00:00Z", "trialPrice": 96}, {"currencyCode": "GkN4v8JunRmDouP6", "currencyNamespace": "tLBc5gGkm2zOrMy9", "currencyType": "VIRTUAL", "discountAmount": 55, "discountExpireAt": "1975-10-16T00:00:00Z", "discountPercentage": 12, "discountPurchaseAt": "1991-11-30T00:00:00Z", "expireAt": "1997-12-15T00:00:00Z", "price": 62, "purchaseAt": "1997-06-01T00:00:00Z", "trialPrice": 36}]}, "saleConfig": {"currencyCode": "Ujoeo2ivIIw9oTHi", "price": 77}, "seasonType": "TIER", "sectionExclusive": false, "sellable": true, "sku": "hk9ipBBxTvA1HM59", "stackable": true, "status": "ACTIVE", "tags": ["39EQ0k1lUJXXDZMq", "VKCUasjbPNiS953E", "KVRt71ObCWoy3Tky"], "targetCurrencyCode": "VVXkBg3nChFPG42R", "targetNamespace": "tciig79U9K6AFkEF", "thumbnailUrl": "wHN3HlhZwAj5hN6H", "useCount": 78}' \
    > test.out 2>&1
eval_tap $? 142 'UpdateItem' test.out

#- 143 DeleteItem
samples/cli/sample-apps Platform deleteItem \
    --itemId 'vjSPr0BtBPs7NLZS' \
    --namespace $AB_NAMESPACE \
    --featuresToCheck '["ENTITLEMENT", "DLC", "CATALOG"]' \
    --force 'false' \
    --storeId 'LNv70FL2URZMFzow' \
    > test.out 2>&1
eval_tap $? 143 'DeleteItem' test.out

#- 144 AcquireItem
samples/cli/sample-apps Platform acquireItem \
    --itemId 'XqRnyZs3jr7vn7un' \
    --namespace $AB_NAMESPACE \
    --body '{"count": 72, "orderNo": "mMRVGW8dfYfdzwaN"}' \
    > test.out 2>&1
eval_tap $? 144 'AcquireItem' test.out

#- 145 GetApp
samples/cli/sample-apps Platform getApp \
    --itemId 'fPFZPlJp3qPXSMyQ' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --storeId 'dtpBLKHuWKVN30BU' \
    > test.out 2>&1
eval_tap $? 145 'GetApp' test.out

#- 146 UpdateApp
samples/cli/sample-apps Platform updateApp \
    --itemId '0HyCVSM9JybklM0S' \
    --namespace $AB_NAMESPACE \
    --storeId 'uloiNHRMVf8c513x' \
    --body '{"carousel": [{"alt": "WJsVZOqomCwWM8Vj", "previewUrl": "lRwzXO7XAHsozAxa", "thumbnailUrl": "KlsCyFHMamYjTBcA", "type": "image", "url": "S0BvuoT33FkAzTes", "videoSource": "vimeo"}, {"alt": "yyiG6pTCFkUp8Zs9", "previewUrl": "wzDXzD7x7UEkndat", "thumbnailUrl": "lojWL5xdav8FvDzW", "type": "video", "url": "DoESaIrcigeGlydd", "videoSource": "generic"}, {"alt": "IjuILUiP4NgsqTcE", "previewUrl": "3pboDfUFZNsdrrnY", "thumbnailUrl": "v2cmmQoe40U8IxxW", "type": "image", "url": "OFfuIN5RZwKjBTOz", "videoSource": "vimeo"}], "developer": "KDFSy4M7ATheEwKL", "forumUrl": "eJbre1I8FxVgcBse", "genres": ["Adventure", "Casual", "Casual"], "localizations": {"0dTKgMWvgV5jnmjB": {"announcement": "0VAH5wmCehh8xyk7", "slogan": "RGH7MlaVxB77WjUm"}, "UoT9dgzMgAuwnUGE": {"announcement": "ACflxNnp8zpitWl3", "slogan": "AS8U6yG4KTWKBj8b"}, "0KKXMeXC7JHedKRE": {"announcement": "Jz2W3ifiyf8iMAKf", "slogan": "GfkuKSp9uuKJqdza"}}, "platformRequirements": {"P35xCU7zloEFV5Pn": [{"additionals": "ePbnerwAQmXrjz1c", "directXVersion": "raYtsqLC2dROIlQx", "diskSpace": "hTz0nByCjTrC4YYI", "graphics": "7xU0YaGIdTyQoJd5", "label": "lbyvxnceWpctTUOP", "osVersion": "dcqkePRkP9KRjqyO", "processor": "qPbqmcjPPFpkq5tI", "ram": "Cw55hFBzrELxVUw3", "soundCard": "diXLBrBYXwgJ8CDT"}, {"additionals": "y1V8nettbysLJDqF", "directXVersion": "QnLkUPDf02fnfxc8", "diskSpace": "e76riswk5Rp5QCQk", "graphics": "xRkT8EsrYk87rqx5", "label": "QiAxzhBcx11mgdHj", "osVersion": "jUKibnGNZo1TF84D", "processor": "MwiBbeVRCChkEr5n", "ram": "vb2q4ACVHF27B7RD", "soundCard": "2c0pKCjzLJMZt8wB"}, {"additionals": "LBmwwqKEUtLbFY6X", "directXVersion": "JE6bc64ux9onmOwJ", "diskSpace": "B1GmLfFU80wkFRDN", "graphics": "87r0YX05ktzFFBzO", "label": "FGfRPHVo6NClBbb6", "osVersion": "OSixXVRpo1bceIGC", "processor": "55c4owW4Q0wAZFvK", "ram": "lBEC33nYEINIJejN", "soundCard": "9YZuLtG6s9EuvQGN"}], "1BF91hwDP2qvJhEZ": [{"additionals": "2HhbhikJ3kfYDhKT", "directXVersion": "SmOUJ4UDgjTD1pVx", "diskSpace": "mjIfrNDhtg4iuMIA", "graphics": "YxjrspzBQ3YGiWqg", "label": "MHQg1ZqrdbKDRjNK", "osVersion": "frhuy3RemuYm772Q", "processor": "G2BMsBPCqoKIEnKW", "ram": "QhSQGvjuPcLZmacg", "soundCard": "EDH46rq6aIZv7fjr"}, {"additionals": "rhcGVP1gOdRlE7Qd", "directXVersion": "enRZ3OqM9i0gNWxM", "diskSpace": "Ljk1UR77QgnNz4jW", "graphics": "uqCI8wH3TkjiTjXq", "label": "2zzFDM87nRXm9lB7", "osVersion": "eGeS27eUSQBCwL9l", "processor": "zU9vuyIhjyp5ZsH6", "ram": "RXjzSwOMIEzbadpc", "soundCard": "kLMrjWA2Z81oGN5u"}, {"additionals": "CsDz4Tq48ZjrzLxg", "directXVersion": "AHP9HEGWrjrRHc5j", "diskSpace": "HJr0ZVscOCmBHF4w", "graphics": "nu84pC18aZteKjCW", "label": "typh1kXXoiNRS3ao", "osVersion": "70Tje94NC7dLm6TO", "processor": "sLpTHHTXCBI1VZii", "ram": "JFsQc4TDKvPXLVT2", "soundCard": "GDR5eHFKqENkWOSF"}], "g1dkw9rZRD4c8EaX": [{"additionals": "xEoiwwd51kuhhFGJ", "directXVersion": "5e2x3UpYc5u643q2", "diskSpace": "MwIoTiwUx6ip5pDu", "graphics": "RjPGyIsSLzdlWuKL", "label": "wRH4GgYzu0te4pR6", "osVersion": "Rrpig4vyXdjsSJAg", "processor": "09WHFClDvOOrRoso", "ram": "uI0reFcblE9uk6wq", "soundCard": "OnKYdQuMWV4t6fKf"}, {"additionals": "UteABqego6L3CW00", "directXVersion": "OQSojMnLetouLBo2", "diskSpace": "Zg4W7AulqWVswq8o", "graphics": "9u0mvvBil2R5e5If", "label": "cNeknQg6N1Ewqmo8", "osVersion": "TG6Qann1btFbvnW1", "processor": "iQV6Cyd6LKoFpFbn", "ram": "LqPLKcqvNVgNJMT5", "soundCard": "cf12eeqnGqDK90hd"}, {"additionals": "DC4VSMCRoC2bpxqk", "directXVersion": "mpyM2XERSihQFeav", "diskSpace": "pAKB97oHZHaizhoL", "graphics": "qbUCeNbbcgQrAuw1", "label": "dIyhwZ4ZLhZncsTm", "osVersion": "Stj6y9vZRbj5ecPV", "processor": "E1qjZTrGYKtxWhc9", "ram": "cbeuwJsEQiGoirvv", "soundCard": "jUIBz5GtRmXfEJ0v"}]}, "platforms": ["IOS", "Windows", "Windows"], "players": ["Single", "LocalCoop", "MMO"], "primaryGenre": "Strategy", "publisher": "gK70RAaThkAifVp1", "releaseDate": "1986-12-01T00:00:00Z", "websiteUrl": "LsC7oK8gX1vReA3V"}' \
    > test.out 2>&1
eval_tap $? 146 'UpdateApp' test.out

#- 147 DisableItem
samples/cli/sample-apps Platform disableItem \
    --itemId 'DD5iQtXQRMcR5y1T' \
    --namespace $AB_NAMESPACE \
    --storeId '2xS6lK0fN0MWBfzM' \
    --body '{"featuresToCheck": ["DLC", "REWARD", "CATALOG"]}' \
    > test.out 2>&1
eval_tap $? 147 'DisableItem' test.out

#- 148 GetItemDynamicData
samples/cli/sample-apps Platform getItemDynamicData \
    --itemId 'RXt98rU4cOgv56nC' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 148 'GetItemDynamicData' test.out

#- 149 EnableItem
samples/cli/sample-apps Platform enableItem \
    --itemId 'F0G1ld9j00ahIPsW' \
    --namespace $AB_NAMESPACE \
    --storeId 'Og6EuC6NgtZAScYB' \
    > test.out 2>&1
eval_tap $? 149 'EnableItem' test.out

#- 150 FeatureItem
samples/cli/sample-apps Platform featureItem \
    --feature 'mSEPQGb20PeFh5tA' \
    --itemId 'kPPTmk7hnnfyJZk6' \
    --namespace $AB_NAMESPACE \
    --storeId 'N1BZaZl6H9QPluna' \
    > test.out 2>&1
eval_tap $? 150 'FeatureItem' test.out

#- 151 DefeatureItem
samples/cli/sample-apps Platform defeatureItem \
    --feature 'LFU2gCzuvjAfSLdu' \
    --itemId 'x778v7MQJ3rxA3LN' \
    --namespace $AB_NAMESPACE \
    --storeId 'gCoE7m6gluH67AXO' \
    > test.out 2>&1
eval_tap $? 151 'DefeatureItem' test.out

#- 152 GetLocaleItem
samples/cli/sample-apps Platform getLocaleItem \
    --itemId 'mWlFGTsU0jzXY93o' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --language '52zBGWFIR2kTy4SF' \
    --populateBundle 'false' \
    --region '9iDdEkeV1BqGs9N8' \
    --storeId 'F7NDNjaaMWWX7Jq0' \
    > test.out 2>&1
eval_tap $? 152 'GetLocaleItem' test.out

#- 153 UpdateItemPurchaseCondition
samples/cli/sample-apps Platform updateItemPurchaseCondition \
    --itemId 'Ov2bO5tl8mVMiqCj' \
    --namespace $AB_NAMESPACE \
    --storeId '5tfxWzRSpnDEMQWC' \
    --body '{"purchaseCondition": {"conditionGroups": [{"operator": "or", "predicates": [{"anyOf": 32, "code": "c4ONZGwDtpJX35RG", "comparison": "isGreaterThanOrEqual", "name": "sBzncj7QN2K1cnuc", "predicateType": "EntitlementPredicate", "value": "Qs3Z6AWCE8ktQjBx", "values": ["96AWuLJOkcNLqk2t", "a7ZX9DAUYrO34Vn5", "kWCysS4vSUPxfNvr"]}, {"anyOf": 33, "code": "mwhqKdkZueGc4Kn6", "comparison": "isGreaterThanOrEqual", "name": "Ils0Zn9juwLofrXz", "predicateType": "StatisticCodePredicate", "value": "Lmnkfrjqk3KOfvRI", "values": ["kXn9rsPoKgudsaKI", "rTOeXwMXHSkmeMpA", "IP3HaglMpkEILMMN"]}, {"anyOf": 85, "code": "lSGMY4tuUwny0Utt", "comparison": "isGreaterThan", "name": "yESCXFF2XCu9S7sL", "predicateType": "EntitlementPredicate", "value": "ip8UtEt2rI9pnLJs", "values": ["24P5T3MxyZangYJI", "GH0Lo8GiVfhx3dDc", "izpRXhJvkfiphblu"]}]}, {"operator": "and", "predicates": [{"anyOf": 86, "code": "LUvjwjnY4nYmsyIY", "comparison": "excludes", "name": "OKtXf8ZKulAo5i1a", "predicateType": "EntitlementPredicate", "value": "dA8vxyYwYco1ahQN", "values": ["9b5gglU4Hg8TzLGX", "8aDw9gNh2n9EkQgq", "xgLci4DqNzRsY8oM"]}, {"anyOf": 4, "code": "Iwm04ChjbrS0Cisg", "comparison": "isGreaterThanOrEqual", "name": "zitQoAI7divqaRVA", "predicateType": "SeasonPassPredicate", "value": "7Ae96oRPRaDXUiib", "values": ["Xjl0EkQ31s1wqQNU", "qmS7ccz3ogQ1lK4D", "doJ3HSCDBiYFBpST"]}, {"anyOf": 5, "code": "DJWld7SDBHjcIjht", "comparison": "includes", "name": "ClRrsMGYxFDPgpu8", "predicateType": "SeasonPassPredicate", "value": "uN2vmzsJKGcaUoIy", "values": ["LFYECayK96gQyLq3", "xJGBsNuk8yLQonSM", "njmFuU18PLWq3S5i"]}]}, {"operator": "and", "predicates": [{"anyOf": 84, "code": "lggqGX7l8wUFOYRb", "comparison": "isLessThanOrEqual", "name": "Vm7SpBbykHsB6BZ2", "predicateType": "StatisticCodePredicate", "value": "CHuYU4PCdwWDqplu", "values": ["fPf8c6KenAfZBKI6", "8K9aMWIvjKiUdwOi", "R3OTHiS4VxNFPkw7"]}, {"anyOf": 74, "code": "oSlciUJ7pY3OLetI", "comparison": "includes", "name": "5Ir6xc7DpTk3Sxvy", "predicateType": "EntitlementPredicate", "value": "VHEN0w5E8VcdhAGd", "values": ["NyFkzRHvz5HtTw9K", "I2z1kYdxB3pbHDG8", "2MFWHx3lXL8x9pei"]}, {"anyOf": 48, "code": "qwb0rDuH0UJTpIEq", "comparison": "is", "name": "Uvx3kjXhY8j7QpH8", "predicateType": "StatisticCodePredicate", "value": "MohAEpbme3VRp3Td", "values": ["0tU9DOs8I4nKRhAH", "C8mYI1x1IIefjjUq", "RdLxuZYWAzCKAmlE"]}]}]}}' \
    > test.out 2>&1
eval_tap $? 153 'UpdateItemPurchaseCondition' test.out

#- 154 QueryItemReferences
samples/cli/sample-apps Platform queryItemReferences \
    --itemId 'jnQQ45kmFvlxXDB4' \
    --namespace $AB_NAMESPACE \
    --featuresToCheck '["IAP", "DLC", "CAMPAIGN"]' \
    --storeId 'f8ByxNyMe9fYtQEb' \
    > test.out 2>&1
eval_tap $? 154 'QueryItemReferences' test.out

#- 155 ReturnItem
samples/cli/sample-apps Platform returnItem \
    --itemId 'gPU227N4NJmAas9M' \
    --namespace $AB_NAMESPACE \
    --body '{"orderNo": "cc3I5hYDIWeMsK5y"}' \
    > test.out 2>&1
eval_tap $? 155 'ReturnItem' test.out

#- 156 QueryKeyGroups
samples/cli/sample-apps Platform queryKeyGroups \
    --namespace $AB_NAMESPACE \
    --limit '62' \
    --name 'Q8RtvoPtHBuHyVxF' \
    --offset '21' \
    --tag 'JGrrRUEv5PwYi3lt' \
    > test.out 2>&1
eval_tap $? 156 'QueryKeyGroups' test.out

#- 157 CreateKeyGroup
samples/cli/sample-apps Platform createKeyGroup \
    --namespace $AB_NAMESPACE \
    --body '{"description": "s1byoKshblUcKPHY", "name": "DXFTFDYqpE45iqWo", "status": "INACTIVE", "tags": ["TrbSd1PhOI0WZrLM", "zs5HYA4YbaWu4J7J", "VQnR2Apik8OEq1bo"]}' \
    > test.out 2>&1
eval_tap $? 157 'CreateKeyGroup' test.out

#- 158 GetKeyGroupByBoothName
eval_tap 0 158 'GetKeyGroupByBoothName # SKIP deprecated' test.out

#- 159 GetKeyGroup
samples/cli/sample-apps Platform getKeyGroup \
    --keyGroupId 'YA1Q0ojTGt0CjvWq' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 159 'GetKeyGroup' test.out

#- 160 UpdateKeyGroup
samples/cli/sample-apps Platform updateKeyGroup \
    --keyGroupId 'qFAJZlsskqSRV4T2' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "3frLTcqhBFs82LI4", "name": "icOqrV41tvWt0mXx", "status": "INACTIVE", "tags": ["VxIc0KyRTGdenqrc", "FdKfkxvHlpOjBdKe", "Mrzi19AYomu4PbAO"]}' \
    > test.out 2>&1
eval_tap $? 160 'UpdateKeyGroup' test.out

#- 161 GetKeyGroupDynamic
samples/cli/sample-apps Platform getKeyGroupDynamic \
    --keyGroupId 'ChiY2TZ1Kv3EfK7i' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 161 'GetKeyGroupDynamic' test.out

#- 162 ListKeys
samples/cli/sample-apps Platform listKeys \
    --keyGroupId 'urJnpJ7vzDP3XF6f' \
    --namespace $AB_NAMESPACE \
    --limit '10' \
    --offset '32' \
    --status 'ACTIVE' \
    > test.out 2>&1
eval_tap $? 162 'ListKeys' test.out

#- 163 UploadKeys
samples/cli/sample-apps Platform uploadKeys \
    --keyGroupId 'etgZJEkllSG6Q2U1' \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 163 'UploadKeys' test.out

#- 164 QueryOrders
samples/cli/sample-apps Platform queryOrders \
    --namespace $AB_NAMESPACE \
    --endTime 'ZRQRC3kSwPOnc8TC' \
    --limit '45' \
    --offset '5' \
    --orderNos '["yeW2hGug9dlik3F8", "XSdW4G0UCZ0mIH72", "UqAtR5v7I486hYd4"]' \
    --sortBy 'VivgA9HMRfET2005' \
    --startTime 'rWDxe2e3UDMni8Zq' \
    --status 'CHARGEBACK_REVERSED' \
    --withTotal 'false' \
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
    --orderNo 'P1sVCM4OufxY2TMD' \
    > test.out 2>&1
eval_tap $? 166 'GetOrder' test.out

#- 167 RefundOrder
samples/cli/sample-apps Platform refundOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'UfpEqIG05rfx3OKh' \
    --body '{"description": "mSQx36zIdLLTR3Jm"}' \
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
    --body '{"domains": ["8MI5rgtkEAsFW6cZ", "9SNVxC4DzXcNRHDG", "1h7skO3PDdNo1F18"]}' \
    > test.out 2>&1
eval_tap $? 171 'UpdatePaymentDomainWhitelistConfig' test.out

#- 172 QueryPaymentNotifications
samples/cli/sample-apps Platform queryPaymentNotifications \
    --namespace $AB_NAMESPACE \
    --endDate '2xbLJmDVBzHLv8tl' \
    --externalId 'DZH77g2BScWgQt8L' \
    --limit '33' \
    --notificationSource 'PAYPAL' \
    --notificationType 'TC4eZ3MlU6iYX0lM' \
    --offset '41' \
    --paymentOrderNo '0g0S4n2zWw8a9qxo' \
    --startDate 'RCodAXCAChmiHth8' \
    --status 'IGNORED' \
    > test.out 2>&1
eval_tap $? 172 'QueryPaymentNotifications' test.out

#- 173 QueryPaymentOrders
samples/cli/sample-apps Platform queryPaymentOrders \
    --namespace $AB_NAMESPACE \
    --channel 'INTERNAL' \
    --extTxId 'udYsln8n0qVd0D6G' \
    --limit '61' \
    --offset '65' \
    --status 'CHARGED' \
    > test.out 2>&1
eval_tap $? 173 'QueryPaymentOrders' test.out

#- 174 CreatePaymentOrderByDedicated
samples/cli/sample-apps Platform createPaymentOrderByDedicated \
    --namespace $AB_NAMESPACE \
    --body '{"currencyCode": "aev7KkYZt9NkoiYc", "currencyNamespace": "NewVyskwn0AVeMXs", "customParameters": {"xPHxNXiQZHT4R15O": {}, "yuOo8zvLAkDuCfLn": {}, "yWVbVc2K0rhElaVj": {}}, "description": "tU51pECYXLkCEYPG", "extOrderNo": "RgtCCCOn1UvsfTR6", "extUserId": "PfvudyLIEqyZWaEX", "itemType": "BUNDLE", "language": "CnFT-vQzf-322", "metadata": {"wLhKbcTHQ3CVFrzf": "aUYsSU2TXI47eIyK", "98YUCwqT0mG2YLPz": "b9t7iut8oRbMr9px", "s5oi3p0VUuVgEMHN": "qyimjcjlYiYcjF1Y"}, "notifyUrl": "YSFklHy86T7GxNek", "omitNotification": false, "platform": "ZyE0uGMwIhNMGnFK", "price": 41, "recurringPaymentOrderNo": "B7gvr7EaOZcJGyv7", "region": "9yHitzdNG7TLvOLF", "returnUrl": "udZo8Jj4TkOwaRvz", "sandbox": true, "sku": "VdVHvAxZe1TRSxav", "subscriptionId": "ihaHDcmMJg3mnEFn", "targetNamespace": "lvuUJ8FAhWfmjjDI", "targetUserId": "lbP3DmxTr39laFrV", "title": "Pos9h5EijGLuCPUe"}' \
    > test.out 2>&1
eval_tap $? 174 'CreatePaymentOrderByDedicated' test.out

#- 175 ListExtOrderNoByExtTxId
samples/cli/sample-apps Platform listExtOrderNoByExtTxId \
    --namespace $AB_NAMESPACE \
    --extTxId '4sBHwIPM2mpSVRvT' \
    > test.out 2>&1
eval_tap $? 175 'ListExtOrderNoByExtTxId' test.out

#- 176 GetPaymentOrder
samples/cli/sample-apps Platform getPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'iBKCXdjLwuxRq2j1' \
    > test.out 2>&1
eval_tap $? 176 'GetPaymentOrder' test.out

#- 177 ChargePaymentOrder
samples/cli/sample-apps Platform chargePaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'rFyErkCP8s3tD77H' \
    --body '{"extTxId": "IBsljMFpnF0BhiMi", "paymentMethod": "qcahmH0pcKMKBjnP", "paymentProvider": "PAYPAL"}' \
    > test.out 2>&1
eval_tap $? 177 'ChargePaymentOrder' test.out

#- 178 RefundPaymentOrderByDedicated
samples/cli/sample-apps Platform refundPaymentOrderByDedicated \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'oqaYdpMZsDrcHTp6' \
    --body '{"description": "SsdYccZr4FGn4bM6"}' \
    > test.out 2>&1
eval_tap $? 178 'RefundPaymentOrderByDedicated' test.out

#- 179 SimulatePaymentOrderNotification
samples/cli/sample-apps Platform simulatePaymentOrderNotification \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'NVkVlDt4SmHHWdli' \
    --body '{"amount": 15, "currencyCode": "UQIMeanebfL6zup0", "notifyType": "CHARGE", "paymentProvider": "ADYEN", "salesTax": 62, "vat": 15}' \
    > test.out 2>&1
eval_tap $? 179 'SimulatePaymentOrderNotification' test.out

#- 180 GetPaymentOrderChargeStatus
samples/cli/sample-apps Platform getPaymentOrderChargeStatus \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'px8qDSPXG6sVyk19' \
    > test.out 2>&1
eval_tap $? 180 'GetPaymentOrderChargeStatus' test.out

#- 181 GetPsnEntitlementOwnership
samples/cli/sample-apps Platform getPsnEntitlementOwnership \
    --entitlementLabel 'hMhA9i98g6DcFcQt' \
    --namespace $AB_NAMESPACE \
    --body '{"accessToken": "UHWjmQcVOCMRfNKZ", "serviceLabel": 66}' \
    > test.out 2>&1
eval_tap $? 181 'GetPsnEntitlementOwnership' test.out

#- 182 GetXboxEntitlementOwnership
samples/cli/sample-apps Platform getXboxEntitlementOwnership \
    --namespace $AB_NAMESPACE \
    --productSku 'A4tDaWfcwfNhANcI' \
    --body '{"delegationToken": "4KYXScwlQhvsIxKb", "sandboxId": "R4MKKRb3oOOEmYx1"}' \
    > test.out 2>&1
eval_tap $? 182 'GetXboxEntitlementOwnership' test.out

#- 183 GetPlatformEntitlementConfig
samples/cli/sample-apps Platform getPlatformEntitlementConfig \
    --namespace $AB_NAMESPACE \
    --platform 'GooglePlay' \
    > test.out 2>&1
eval_tap $? 183 'GetPlatformEntitlementConfig' test.out

#- 184 UpdatePlatformEntitlementConfig
samples/cli/sample-apps Platform updatePlatformEntitlementConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Nintendo' \
    --body '{"allowedPlatformOrigins": ["Epic", "Other", "GooglePlay"]}' \
    > test.out 2>&1
eval_tap $? 184 'UpdatePlatformEntitlementConfig' test.out

#- 185 GetPlatformWalletConfig
samples/cli/sample-apps Platform getPlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Oculus' \
    > test.out 2>&1
eval_tap $? 185 'GetPlatformWalletConfig' test.out

#- 186 UpdatePlatformWalletConfig
samples/cli/sample-apps Platform updatePlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Nintendo' \
    --body '{"allowedBalanceOrigins": ["Epic", "Steam", "Xbox"]}' \
    > test.out 2>&1
eval_tap $? 186 'UpdatePlatformWalletConfig' test.out

#- 187 ResetPlatformWalletConfig
samples/cli/sample-apps Platform resetPlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Xbox' \
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
    --body '{"entitlement": {"consumable": {"enabled": true, "strategy": "CUSTOM"}, "durable": {"enabled": true, "strategy": "CUSTOM"}}, "wallet": {"enabled": false, "strategy": "CUSTOM"}}' \
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
    --endTime 'zi8hhWwUwoWDlGkn' \
    --limit '86' \
    --offset '9' \
    --source 'IAP' \
    --startTime 'wzGKU9QwQYCclErr' \
    --status 'SUCCESS' \
    --transactionId 'xMxFM3V0DysiwitZ' \
    --userId 'XCzSdtARJ5N4HTwF' \
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
    --body '{"appConfig": {"appName": "FDpggPgoqaiQjY8n"}, "customConfig": {"connectionType": "INSECURE", "grpcServerAddress": "pMxwUkArEZyqTdcR"}, "extendType": "APP"}' \
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
    --body '{"description": "AjG42BHYh6U0W9EG", "eventTopic": "ioT1Acq3aKocdsda", "maxAwarded": 40, "maxAwardedPerUser": 80, "namespaceExpression": "emrg6KBGa5HO0FM0", "rewardCode": "PuauAuxYxHTvSnKl", "rewardConditions": [{"condition": "2E8lLbaDE4ehGO12", "conditionName": "LDCxgGhDnNicy1lq", "eventName": "FumEQ9v0eCv2L8aK", "rewardItems": [{"duration": 61, "endDate": "1976-01-07T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "ufsoLHQWJkYqw3tR", "quantity": 10, "sku": "BgKBzeHfUS6ODuEF"}, {"duration": 44, "endDate": "1989-08-05T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "WBtMcCjmoqKVc3Bm", "quantity": 28, "sku": "u00AP3QECAe6JZTd"}, {"duration": 13, "endDate": "1981-01-30T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "owlJNq5rUCdFzYew", "quantity": 45, "sku": "gZXMhNypKskUheXs"}]}, {"condition": "pmtPQcYs0CIbPcPt", "conditionName": "8AZ5auo8W0uNfnA7", "eventName": "Bk3Y0bObgCPRNCbO", "rewardItems": [{"duration": 9, "endDate": "1979-01-15T00:00:00Z", "identityType": "ITEM_ID", "itemId": "ARe81ZqpoVBIYbQu", "quantity": 100, "sku": "JJwCRD1vejBneKj0"}, {"duration": 97, "endDate": "1988-06-18T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "qaTMtCB8evVjFM7Y", "quantity": 93, "sku": "qaHK9jMdTOKHwYll"}, {"duration": 93, "endDate": "1996-03-03T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "2RxytKEnYblGsQzJ", "quantity": 87, "sku": "UNKCMWNM0MltftEE"}]}, {"condition": "NAGlE8ISGSPiLkQt", "conditionName": "t9FruQ0Zy0HaasEX", "eventName": "UM2VlRIc56duPT4Q", "rewardItems": [{"duration": 49, "endDate": "1982-02-22T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "0oFJcNechzIdNbt6", "quantity": 46, "sku": "wtNYGzgtx9qAeSu5"}, {"duration": 31, "endDate": "1979-06-10T00:00:00Z", "identityType": "ITEM_ID", "itemId": "ahUuBSmMfifwgHnO", "quantity": 51, "sku": "C6vRLMcckw3zUFjU"}, {"duration": 80, "endDate": "1989-11-17T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "3HJmW6bGWzFqYjIA", "quantity": 53, "sku": "daIbCRFQ5ZPM7Upl"}]}], "userIdExpression": "3rLZWaw5oVeF98wT"}' \
    > test.out 2>&1
eval_tap $? 196 'CreateReward' test.out

#- 197 QueryRewards
samples/cli/sample-apps Platform queryRewards \
    --namespace $AB_NAMESPACE \
    --eventTopic 'LmGReA807t67Xj3k' \
    --limit '30' \
    --offset '9' \
    --sortBy '["rewardCode:desc", "namespace:desc", "rewardCode"]' \
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
    --replaceExisting 'false' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 199 'ImportRewards' test.out

#- 200 GetReward
samples/cli/sample-apps Platform getReward \
    --namespace $AB_NAMESPACE \
    --rewardId 'jcPar9IypX1AMWRz' \
    > test.out 2>&1
eval_tap $? 200 'GetReward' test.out

#- 201 UpdateReward
samples/cli/sample-apps Platform updateReward \
    --namespace $AB_NAMESPACE \
    --rewardId 'wxN13aQwC77eZDJe' \
    --body '{"description": "KkVmF9tQ1uGOrQvt", "eventTopic": "rHIYCFE9c9zFrCIL", "maxAwarded": 71, "maxAwardedPerUser": 24, "namespaceExpression": "yefNzrukA7qxiU1h", "rewardCode": "ZfAiSJINHoaHiKM3", "rewardConditions": [{"condition": "ICnTzQfP2lJE6XwZ", "conditionName": "RzmbuxHKJThSZTGS", "eventName": "7xnkY9FtWYQbEnrf", "rewardItems": [{"duration": 29, "endDate": "1990-11-20T00:00:00Z", "identityType": "ITEM_ID", "itemId": "RrWmThP7ND3iEo2X", "quantity": 100, "sku": "BdmVPorZNatMdRkH"}, {"duration": 42, "endDate": "1996-01-26T00:00:00Z", "identityType": "ITEM_ID", "itemId": "FMDVzlPJBxdXtYLZ", "quantity": 14, "sku": "j1nkZtR8CBBZaM57"}, {"duration": 55, "endDate": "1985-08-19T00:00:00Z", "identityType": "ITEM_ID", "itemId": "PlTDEtGzyLh2hQi9", "quantity": 67, "sku": "NooZl5Qm5bJqVmb5"}]}, {"condition": "Y2fblOBeWc6i1LIn", "conditionName": "URwrHyZFvotC9jZV", "eventName": "C3YTzEpQCJwYlRNX", "rewardItems": [{"duration": 73, "endDate": "1979-04-02T00:00:00Z", "identityType": "ITEM_ID", "itemId": "gd7fyDa2Ipvinm85", "quantity": 74, "sku": "kPvyD3cBsUVrDDHu"}, {"duration": 11, "endDate": "1982-04-11T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "yYmWbbY7YIMrrjtu", "quantity": 35, "sku": "G7Trk11AafqNHVri"}, {"duration": 81, "endDate": "1985-07-09T00:00:00Z", "identityType": "ITEM_ID", "itemId": "RyAs1AfTMuJRLKiL", "quantity": 31, "sku": "g7k0ai0l63D539Qv"}]}, {"condition": "gJdBPWeHsUW6nYGC", "conditionName": "wYaVkkSXVeaT26Fu", "eventName": "via0ZjQ5OKWulAK1", "rewardItems": [{"duration": 3, "endDate": "1983-12-24T00:00:00Z", "identityType": "ITEM_ID", "itemId": "R0bwrd0ZrliJsJQq", "quantity": 40, "sku": "mDaFZHmOGLSTS2zr"}, {"duration": 97, "endDate": "1998-09-13T00:00:00Z", "identityType": "ITEM_ID", "itemId": "PHrD8cOUoJPa0xZQ", "quantity": 71, "sku": "hKOlKY3NXksuwWmm"}, {"duration": 85, "endDate": "1975-12-05T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "WVDtaRJTKblB1akp", "quantity": 58, "sku": "ytJyIQLS5csT8VLG"}]}], "userIdExpression": "yInEQHwL4uKTq1Bf"}' \
    > test.out 2>&1
eval_tap $? 201 'UpdateReward' test.out

#- 202 DeleteReward
samples/cli/sample-apps Platform deleteReward \
    --namespace $AB_NAMESPACE \
    --rewardId 'BAaSekW3xGLjNhOc' \
    > test.out 2>&1
eval_tap $? 202 'DeleteReward' test.out

#- 203 CheckEventCondition
samples/cli/sample-apps Platform checkEventCondition \
    --namespace $AB_NAMESPACE \
    --rewardId 'oK0icGYEe6tNMZhB' \
    --body '{"payload": {"UnmsbBOrpsuRdfCF": {}, "0fEhJxW5dniRMDsF": {}, "3zLDMaxk30kVwN4y": {}}}' \
    > test.out 2>&1
eval_tap $? 203 'CheckEventCondition' test.out

#- 204 DeleteRewardConditionRecord
samples/cli/sample-apps Platform deleteRewardConditionRecord \
    --namespace $AB_NAMESPACE \
    --rewardId 'IAZ64G8jC1Pc5nvq' \
    --body '{"conditionName": "YWM73AMpOIEwRLWk", "userId": "6LA1Cwl7CfbLru1d"}' \
    > test.out 2>&1
eval_tap $? 204 'DeleteRewardConditionRecord' test.out

#- 205 QuerySections
samples/cli/sample-apps Platform querySections \
    --namespace $AB_NAMESPACE \
    --end 'KTEetpVkGS1nZg6Z' \
    --limit '79' \
    --offset '14' \
    --start 'F496WUJVrpvmProG' \
    --storeId '4C4yRPNsxBoTkqt9' \
    --viewId '6pypkf8Gp07S8SlC' \
    > test.out 2>&1
eval_tap $? 205 'QuerySections' test.out

#- 206 CreateSection
samples/cli/sample-apps Platform createSection \
    --namespace $AB_NAMESPACE \
    --storeId 'NbgQ2PdhhVRy9gdu' \
    --body '{"active": true, "displayOrder": 99, "endDate": "1978-05-02T00:00:00Z", "ext": {"5a5SodHHCgbt2Zzt": {}, "wF9IaK7IAqLRv0dt": {}, "oYw5GcTCpFRFeelI": {}}, "fixedPeriodRotationConfig": {"backfillType": "NONE", "duration": 57, "itemCount": 42, "rule": "LOOP"}, "items": [{"id": "Nu0wrsGO1ZRusIba", "sku": "2pohJ097tJmTokMo"}, {"id": "T7op17YfZyCWPbbU", "sku": "ce7zbDtGizBx72mB"}, {"id": "48lQqkUUwfURJlSf", "sku": "5gYeuN2jMtOeI2H1"}], "localizations": {"CZ4eanlXsPM4r4vI": {"description": "gRaJeRwHer5lgkGq", "localExt": {"8awD6NffHi4vb0we": {}, "k5ApEPbBTB6gjsQJ": {}, "IohRGZVCz6jkXUky": {}}, "longDescription": "hdhu8NF4d2r59h66", "title": "8ZIdKjuV0BpYEH2i"}, "iGLk4JLtHgrnY4y7": {"description": "I0O2bi2MCFKigvxE", "localExt": {"B32bZnd9FEE4lUzt": {}, "q1RJ31hXJhKEQGAL": {}, "a5ozUn6Vfy7y1WCy": {}}, "longDescription": "AcdOsM8YVMIvnCkU", "title": "AFwFXKOF4lyZBAqA"}, "oxR2XS3Uj1aNwCOM": {"description": "gDOZnNBTXmcNVDp5", "localExt": {"G2rYqOQNSYm4hVuP": {}, "jSomoIWcGNSNzPbD": {}, "riiq2ogqfYh65slG": {}}, "longDescription": "dtMVxta6WEIwru9v", "title": "k0EJuGNTSMQ8qGob"}}, "name": "0ITe72Qp6RsFRoqE", "rotationType": "FIXED_PERIOD", "startDate": "1991-11-23T00:00:00Z", "viewId": "Z9xjlpXs0gLYyohb"}' \
    > test.out 2>&1
eval_tap $? 206 'CreateSection' test.out

#- 207 PurgeExpiredSection
samples/cli/sample-apps Platform purgeExpiredSection \
    --namespace $AB_NAMESPACE \
    --storeId 'jMV98vs1jCGg7mHa' \
    > test.out 2>&1
eval_tap $? 207 'PurgeExpiredSection' test.out

#- 208 GetSection
samples/cli/sample-apps Platform getSection \
    --namespace $AB_NAMESPACE \
    --sectionId 'Wmw0LUGUYDbv2IO2' \
    --storeId 'qWUAzJXfndcbfylb' \
    > test.out 2>&1
eval_tap $? 208 'GetSection' test.out

#- 209 UpdateSection
samples/cli/sample-apps Platform updateSection \
    --namespace $AB_NAMESPACE \
    --sectionId 'DKEuArYEP582cetf' \
    --storeId '2UVDW5MROeuFGuV5' \
    --body '{"active": false, "displayOrder": 24, "endDate": "1999-07-26T00:00:00Z", "ext": {"yd8W8U2GPZ8fWXrC": {}, "Qm4eInuAZP6nlA4W": {}, "OSaktd9E9VmSfMaC": {}}, "fixedPeriodRotationConfig": {"backfillType": "NONE", "duration": 92, "itemCount": 78, "rule": "LOOP"}, "items": [{"id": "7dvWhlIn13RiH07Q", "sku": "Zq8vNcW5LGl3VIqS"}, {"id": "vKIXdSJ4oersjXJE", "sku": "CNaUlX8jBUsxCm3u"}, {"id": "kwsm9rDZSg9QYIgZ", "sku": "HysJyRYnQsAbNiSY"}], "localizations": {"XMbGyNRM9rIopD76": {"description": "SvQB69wzviXpWARZ", "localExt": {"XJnY5cYJoVyF7W9J": {}, "Ya2EKWgtivss5Op5": {}, "8MT1cKc3ivNbzOEZ": {}}, "longDescription": "zZ19CDWCxXdrnOo1", "title": "Tr9oUd9G0qYT1I9L"}, "qekufWIqCjtOkTza": {"description": "xKPimORTke1DX3vS", "localExt": {"iYA0HgmTJE6ZylGN": {}, "jg5N4oTZXFvEYCAD": {}, "fA3yJhQxYzcb6aWs": {}}, "longDescription": "6WjsTXgg5nDqJlii", "title": "GBg7UzYYqqSiq0RH"}, "X5BQGfDI5uXc22E4": {"description": "R8imq46BfkROqhzm", "localExt": {"rFb8JHqZVuwfPHzy": {}, "GLXgyS92q7nBRbeT": {}, "yMX7m146rthsuy6n": {}}, "longDescription": "jA1VElhFCOvWKBRE", "title": "oIn9cCl9hWCc6rSV"}}, "name": "py9eexSIoKCzJBiJ", "rotationType": "CUSTOM", "startDate": "1988-04-17T00:00:00Z", "viewId": "Gbqs2ccK2iLiNpbC"}' \
    > test.out 2>&1
eval_tap $? 209 'UpdateSection' test.out

#- 210 DeleteSection
samples/cli/sample-apps Platform deleteSection \
    --namespace $AB_NAMESPACE \
    --sectionId '9tBSrOyEojnxBY2j' \
    --storeId 'Ohe5mH0nIOida6np' \
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
    --body '{"defaultLanguage": "CzMkiYNDFcYVXZO2", "defaultRegion": "BQM7i8rDvTKYClUQ", "description": "56qZfDIafDvxrxoq", "supportedLanguages": ["A0BWyzn1hrikuCsR", "Rh8Vxj6OBDzCzsAY", "m6jo582Nhq0yOSO0"], "supportedRegions": ["C0q85BkMoFT15zSS", "LP3HPHegT7fhaM4A", "rClccptchPTebFnK"], "title": "qWvGeGPeUW98mkwN"}' \
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
    --body '{"catalogType": "APP", "fieldsToBeIncluded": ["xvVfwTFOs2mz7YVi", "I7chtKDPy0hJOFOa", "oGzgkcKECqDHP6gp"], "idsToBeExported": ["DPvoHlyBybfspkDl", "RryjCTJkKVe0RSOS", "iJF6QPnzgpqCa0H5"], "storeId": "cjDf34qeOWTqVttW"}' \
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
    --storeId 'F7iZ0QKZlDxJIF5M' \
    > test.out 2>&1
eval_tap $? 221 'GetStore' test.out

#- 222 UpdateStore
samples/cli/sample-apps Platform updateStore \
    --namespace $AB_NAMESPACE \
    --storeId '9vT7BG8032eBU9cW' \
    --body '{"defaultLanguage": "GwPOXA2vYgLiCK0o", "defaultRegion": "IVD04NlZYhkN6NW2", "description": "uYX6D6I42fBWiUvs", "supportedLanguages": ["BHOXEbiuRe9jIwS7", "QxtuJ9XXUe6YVKne", "2nt5d7LJXq9TxpOc"], "supportedRegions": ["cRPoqTLZbiYTJig3", "XGO0m9X1GnKjWE39", "NezbnCyJwrIi04AD"], "title": "TuyO4gVPfRvDeTj4"}' \
    > test.out 2>&1
eval_tap $? 222 'UpdateStore' test.out

#- 223 DeleteStore
samples/cli/sample-apps Platform deleteStore \
    --namespace $AB_NAMESPACE \
    --storeId 'a3Q1vPHzL61hHn9Q' \
    > test.out 2>&1
eval_tap $? 223 'DeleteStore' test.out

#- 224 QueryChanges
samples/cli/sample-apps Platform queryChanges \
    --namespace $AB_NAMESPACE \
    --storeId 'nIHdNiuGEj4GjWUZ' \
    --action 'CREATE' \
    --itemSku 'CUgFu37dBypC2jiq' \
    --itemType 'BUNDLE' \
    --limit '40' \
    --offset '92' \
    --selected 'false' \
    --sortBy '["updatedAt", "updatedAt:desc", "createdAt:asc"]' \
    --status 'PUBLISHED' \
    --type 'CATEGORY' \
    --updatedAtEnd 'ydiWWyASWPzHUooH' \
    --updatedAtStart 'VdL2JszDs8nBJnyj' \
    --withTotal 'false' \
    > test.out 2>&1
eval_tap $? 224 'QueryChanges' test.out

#- 225 PublishAll
samples/cli/sample-apps Platform publishAll \
    --namespace $AB_NAMESPACE \
    --storeId 'T7jgeXrutGWfT5be' \
    > test.out 2>&1
eval_tap $? 225 'PublishAll' test.out

#- 226 PublishSelected
samples/cli/sample-apps Platform publishSelected \
    --namespace $AB_NAMESPACE \
    --storeId 'xutea3erKaoeSKMB' \
    > test.out 2>&1
eval_tap $? 226 'PublishSelected' test.out

#- 227 SelectAllRecords
samples/cli/sample-apps Platform selectAllRecords \
    --namespace $AB_NAMESPACE \
    --storeId 'uAO5Q5rUu5VP0mSB' \
    > test.out 2>&1
eval_tap $? 227 'SelectAllRecords' test.out

#- 228 SelectAllRecordsByCriteria
samples/cli/sample-apps Platform selectAllRecordsByCriteria \
    --namespace $AB_NAMESPACE \
    --storeId 't7KLdv23Rgl05sf2' \
    --action 'CREATE' \
    --itemSku 'RO4zIy64MnAqEa89' \
    --itemType 'CODE' \
    --selected 'false' \
    --type 'STORE' \
    --updatedAtEnd 'TS8OzzkPStzDXZwi' \
    --updatedAtStart 'YEJMTK7gNnje4aQC' \
    > test.out 2>&1
eval_tap $? 228 'SelectAllRecordsByCriteria' test.out

#- 229 GetStatistic
samples/cli/sample-apps Platform getStatistic \
    --namespace $AB_NAMESPACE \
    --storeId 'pjT0fxsaxTGQ9vMH' \
    --action 'CREATE' \
    --itemSku 'OVf4Mqn5gmY4WoeX' \
    --itemType 'SUBSCRIPTION' \
    --type 'CATEGORY' \
    --updatedAtEnd 'nQ3bMgqJpLqCXJE9' \
    --updatedAtStart 'ms24l8o66YEqL9qC' \
    > test.out 2>&1
eval_tap $? 229 'GetStatistic' test.out

#- 230 UnselectAllRecords
samples/cli/sample-apps Platform unselectAllRecords \
    --namespace $AB_NAMESPACE \
    --storeId 'GGckeo4ZlPj8iv3P' \
    > test.out 2>&1
eval_tap $? 230 'UnselectAllRecords' test.out

#- 231 SelectRecord
samples/cli/sample-apps Platform selectRecord \
    --changeId 'v9VCnYn1bD4pnuAb' \
    --namespace $AB_NAMESPACE \
    --storeId 'PxUSYS5phLTwDeeq' \
    > test.out 2>&1
eval_tap $? 231 'SelectRecord' test.out

#- 232 UnselectRecord
samples/cli/sample-apps Platform unselectRecord \
    --changeId 'NAmi928yIn4Qfga0' \
    --namespace $AB_NAMESPACE \
    --storeId 'ku0g0CH9dqC6xk3T' \
    > test.out 2>&1
eval_tap $? 232 'UnselectRecord' test.out

#- 233 CloneStore
samples/cli/sample-apps Platform cloneStore \
    --namespace $AB_NAMESPACE \
    --storeId 'uAqUetUGY3Ln2qlB' \
    --targetStoreId 'PQ80N8ahdFEVKOHt' \
    > test.out 2>&1
eval_tap $? 233 'CloneStore' test.out

#- 234 ExportStore
eval_tap 0 234 'ExportStore # SKIP deprecated' test.out

#- 235 QueryImportHistory
samples/cli/sample-apps Platform queryImportHistory \
    --namespace $AB_NAMESPACE \
    --storeId '0G9rM6X7zYKbOnVh' \
    --end 'HoXgUGko9o1vWiqe' \
    --limit '32' \
    --offset '1' \
    --sortBy 'hFYk1xZOP9HyJhBG' \
    --start 'sIuPnBQXez122RoT' \
    --success 'true' \
    > test.out 2>&1
eval_tap $? 235 'QueryImportHistory' test.out

#- 236 ImportStoreByCSV
samples/cli/sample-apps Platform importStoreByCSV \
    --namespace $AB_NAMESPACE \
    --storeId 'UzMNuyAnAFszQpKh' \
    --category 'tmp.dat' \
    --display 'tmp.dat' \
    --item 'tmp.dat' \
    --notes 'wtQIl3wbSRarWslD' \
    --section 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 236 'ImportStoreByCSV' test.out

#- 237 QuerySubscriptions
samples/cli/sample-apps Platform querySubscriptions \
    --namespace $AB_NAMESPACE \
    --chargeStatus 'SETUP' \
    --itemId 'QZm5WuIPijlBGx3u' \
    --limit '95' \
    --offset '54' \
    --sku 'n8s6ct9j1kMsBPy7' \
    --status 'INIT' \
    --subscribedBy 'PLATFORM' \
    --userId 'ziu8yTyKyn2oBqKS' \
    > test.out 2>&1
eval_tap $? 237 'QuerySubscriptions' test.out

#- 238 RecurringChargeSubscription
samples/cli/sample-apps Platform recurringChargeSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'HMpwMJs18ixiXpFc' \
    > test.out 2>&1
eval_tap $? 238 'RecurringChargeSubscription' test.out

#- 239 GetTicketDynamic
samples/cli/sample-apps Platform getTicketDynamic \
    --boothName 'gAFOK8nZqiv7jPiQ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 239 'GetTicketDynamic' test.out

#- 240 DecreaseTicketSale
samples/cli/sample-apps Platform decreaseTicketSale \
    --boothName 'PAMo7j1cSUJd2sfz' \
    --namespace $AB_NAMESPACE \
    --body '{"orderNo": "67ggo5WmTcuVM2C8"}' \
    > test.out 2>&1
eval_tap $? 240 'DecreaseTicketSale' test.out

#- 241 GetTicketBoothID
samples/cli/sample-apps Platform getTicketBoothID \
    --boothName 'fJ11VyCGf9yjyBJp' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 241 'GetTicketBoothID' test.out

#- 242 IncreaseTicketSale
samples/cli/sample-apps Platform increaseTicketSale \
    --boothName '7oonF6K3B1ErcoHY' \
    --namespace $AB_NAMESPACE \
    --body '{"count": 91, "orderNo": "qcLLDGxTGtjvTPwz"}' \
    > test.out 2>&1
eval_tap $? 242 'IncreaseTicketSale' test.out

#- 243 Commit
samples/cli/sample-apps Platform commit \
    --namespace $AB_NAMESPACE \
    --body '{"actions": [{"operations": [{"creditPayload": {"balanceOrigin": "GooglePlay", "count": 17, "currencyCode": "72mhOmkHTWIp0rRE", "expireAt": "1976-09-04T00:00:00Z"}, "debitPayload": {"count": 44, "currencyCode": "7JcabEeoZA8OmC47", "walletPlatform": "GooglePlay"}, "fulFillItemPayload": {"count": 43, "entitlementCollectionId": "3VHQn9EgEwQQSzze", "entitlementOrigin": "GooglePlay", "itemIdentity": "g3sdKfyCz36tuHYB", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 52, "entitlementId": "SEqL2j0fteMa2roJ"}, "type": "REVOKE_ENTITLEMENT"}, {"creditPayload": {"balanceOrigin": "Other", "count": 22, "currencyCode": "5dn1ejjSmBjmyQeu", "expireAt": "1974-09-12T00:00:00Z"}, "debitPayload": {"count": 73, "currencyCode": "A2w0Hfr52Z9IIOvO", "walletPlatform": "Nintendo"}, "fulFillItemPayload": {"count": 52, "entitlementCollectionId": "GWCyy9UhpiLLPxXM", "entitlementOrigin": "Playstation", "itemIdentity": "2unFMyZm6Fu08RYD", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 7, "entitlementId": "1dkdqW0ZLABlhwBS"}, "type": "DEBIT_WALLET"}, {"creditPayload": {"balanceOrigin": "Oculus", "count": 65, "currencyCode": "xmmecA2fFksyeyyz", "expireAt": "1991-06-16T00:00:00Z"}, "debitPayload": {"count": 71, "currencyCode": "bHJH8CNHvnxPIIGu", "walletPlatform": "Other"}, "fulFillItemPayload": {"count": 83, "entitlementCollectionId": "MWe3HOvqJCBnrmhb", "entitlementOrigin": "Oculus", "itemIdentity": "VDpRRp8jMTt76oPi", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 37, "entitlementId": "ROQeEqjvsuXCReVj"}, "type": "DEBIT_WALLET"}], "userId": "KbSeXbhtmCdns0i6"}, {"operations": [{"creditPayload": {"balanceOrigin": "Nintendo", "count": 54, "currencyCode": "Qt9APn7AmZKBXhWh", "expireAt": "1991-05-30T00:00:00Z"}, "debitPayload": {"count": 15, "currencyCode": "sJDGvB9MeHaKAwJr", "walletPlatform": "Xbox"}, "fulFillItemPayload": {"count": 82, "entitlementCollectionId": "r4w6io20N6v9odmy", "entitlementOrigin": "IOS", "itemIdentity": "uzCX1RydZfekaYgB", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 97, "entitlementId": "1WgbBWvTgcN8FBin"}, "type": "CREDIT_WALLET"}, {"creditPayload": {"balanceOrigin": "Other", "count": 54, "currencyCode": "GJwWI3T6f5Ck5Fzv", "expireAt": "1983-05-02T00:00:00Z"}, "debitPayload": {"count": 3, "currencyCode": "nIU8sFag7aUrcqmR", "walletPlatform": "IOS"}, "fulFillItemPayload": {"count": 44, "entitlementCollectionId": "yZ4zmKZX0JEG7LrH", "entitlementOrigin": "Nintendo", "itemIdentity": "ZGWc25s37qn8CARk", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 99, "entitlementId": "fmpyQAD6y3AeiNB7"}, "type": "CREDIT_WALLET"}, {"creditPayload": {"balanceOrigin": "Twitch", "count": 28, "currencyCode": "xnTdkuD105A3dG3v", "expireAt": "1980-08-27T00:00:00Z"}, "debitPayload": {"count": 41, "currencyCode": "Q9F0lJAPe6es48Ub", "walletPlatform": "IOS"}, "fulFillItemPayload": {"count": 47, "entitlementCollectionId": "7CdjPXnS2oEAXEgC", "entitlementOrigin": "IOS", "itemIdentity": "0LucRw1wlFX4UWSJ", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 91, "entitlementId": "CRq3wQhfwNG6do1s"}, "type": "DEBIT_WALLET"}], "userId": "jveULmObH7IeCzYB"}, {"operations": [{"creditPayload": {"balanceOrigin": "Playstation", "count": 21, "currencyCode": "5fmPi9avSZp9ZcKM", "expireAt": "1987-12-27T00:00:00Z"}, "debitPayload": {"count": 51, "currencyCode": "zlBB6LGrLQNFuxnB", "walletPlatform": "Other"}, "fulFillItemPayload": {"count": 27, "entitlementCollectionId": "REinhIbggL1Q8Jcv", "entitlementOrigin": "IOS", "itemIdentity": "YM9LhDaRgqURIeHQ", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 3, "entitlementId": "c6HS5EXzcu0l1YUA"}, "type": "REVOKE_ENTITLEMENT"}, {"creditPayload": {"balanceOrigin": "GooglePlay", "count": 77, "currencyCode": "Q4Xriq8tNCbsH9sQ", "expireAt": "1989-09-28T00:00:00Z"}, "debitPayload": {"count": 86, "currencyCode": "yhehzbLv9hzZJFiD", "walletPlatform": "Xbox"}, "fulFillItemPayload": {"count": 59, "entitlementCollectionId": "jDaNt5mgkZTBy6CE", "entitlementOrigin": "Epic", "itemIdentity": "HbzBjoLRgI1iogL3", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 62, "entitlementId": "YKSUGvd5n0er6yt3"}, "type": "FULFILL_ITEM"}, {"creditPayload": {"balanceOrigin": "Nintendo", "count": 29, "currencyCode": "OCn3htyd4oMwMILU", "expireAt": "1984-06-08T00:00:00Z"}, "debitPayload": {"count": 71, "currencyCode": "B9hl9YHwBezQSBAO", "walletPlatform": "Oculus"}, "fulFillItemPayload": {"count": 54, "entitlementCollectionId": "YbrrgUfMwHP9iDQm", "entitlementOrigin": "IOS", "itemIdentity": "KScJ31dkmmmdfTGa", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 100, "entitlementId": "QytwuX3NjzG4Wa2Q"}, "type": "DEBIT_WALLET"}], "userId": "YtZFm6zfNvnCqi51"}], "metadata": {"SZxnmEOxPct7uCH5": {}, "AXFRuSLB0CUO9Ze1": {}, "vjhlm4UG0TIEPGu7": {}}, "needPreCheck": false, "transactionId": "342hskaB8HlYJYEH", "type": "fr6ADCGwxTfoQjWH"}' \
    > test.out 2>&1
eval_tap $? 243 'Commit' test.out

#- 244 GetTradeHistoryByCriteria
samples/cli/sample-apps Platform getTradeHistoryByCriteria \
    --namespace $AB_NAMESPACE \
    --limit '6' \
    --offset '99' \
    --status 'SUCCESS' \
    --type '8ogNhaVMjpNm88oe' \
    --userId 'u7dtCNYtBWSshCF9' \
    > test.out 2>&1
eval_tap $? 244 'GetTradeHistoryByCriteria' test.out

#- 245 GetTradeHistoryByTransactionId
samples/cli/sample-apps Platform getTradeHistoryByTransactionId \
    --namespace $AB_NAMESPACE \
    --transactionId 'FuUCdcxPEfht2shh' \
    > test.out 2>&1
eval_tap $? 245 'GetTradeHistoryByTransactionId' test.out

#- 246 UnlockSteamUserAchievement
samples/cli/sample-apps Platform unlockSteamUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId '9EHYuuo8bp7vxwl0' \
    --body '{"achievements": [{"id": "4qLmUnAObXgtSUs1", "value": 37}, {"id": "TQ9ntWpplrOX1DhG", "value": 96}, {"id": "5Tf4VHsideEMNPMG", "value": 89}], "steamUserId": "go5pIqM3q1QIZ69v"}' \
    > test.out 2>&1
eval_tap $? 246 'UnlockSteamUserAchievement' test.out

#- 247 GetXblUserAchievements
samples/cli/sample-apps Platform getXblUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId 'CHWKVoERMqNpOy5w' \
    --xboxUserId 'kuNsgJsT6jU0r29q' \
    > test.out 2>&1
eval_tap $? 247 'GetXblUserAchievements' test.out

#- 248 UpdateXblUserAchievement
samples/cli/sample-apps Platform updateXblUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'kxb27ffkjDuIdNhg' \
    --body '{"achievements": [{"id": "j00jGG4rGBWOfxH5", "percentComplete": 7}, {"id": "xzi9BDznSq7SOgWI", "percentComplete": 36}, {"id": "SZFLvjQk9ssfxVlI", "percentComplete": 77}], "serviceConfigId": "i0WsNAREv75yxoGx", "titleId": "CMG7Qomkfnq1Pofg", "xboxUserId": "yYvaJWWjU0Za3bVa"}' \
    > test.out 2>&1
eval_tap $? 248 'UpdateXblUserAchievement' test.out

#- 249 AnonymizeCampaign
samples/cli/sample-apps Platform anonymizeCampaign \
    --namespace $AB_NAMESPACE \
    --userId 'Cj9mEl0SmsuUzIfZ' \
    > test.out 2>&1
eval_tap $? 249 'AnonymizeCampaign' test.out

#- 250 AnonymizeEntitlement
samples/cli/sample-apps Platform anonymizeEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'zMdqSCFb9tUnQmsV' \
    > test.out 2>&1
eval_tap $? 250 'AnonymizeEntitlement' test.out

#- 251 AnonymizeFulfillment
samples/cli/sample-apps Platform anonymizeFulfillment \
    --namespace $AB_NAMESPACE \
    --userId '9x7oPcqvPWn4iOso' \
    > test.out 2>&1
eval_tap $? 251 'AnonymizeFulfillment' test.out

#- 252 AnonymizeIntegration
samples/cli/sample-apps Platform anonymizeIntegration \
    --namespace $AB_NAMESPACE \
    --userId '2gUgD4E7CySf7fCy' \
    > test.out 2>&1
eval_tap $? 252 'AnonymizeIntegration' test.out

#- 253 AnonymizeOrder
samples/cli/sample-apps Platform anonymizeOrder \
    --namespace $AB_NAMESPACE \
    --userId 'pQlr3MIy4Twk4e21' \
    > test.out 2>&1
eval_tap $? 253 'AnonymizeOrder' test.out

#- 254 AnonymizePayment
samples/cli/sample-apps Platform anonymizePayment \
    --namespace $AB_NAMESPACE \
    --userId '4jjqF4PkiFeJpHo1' \
    > test.out 2>&1
eval_tap $? 254 'AnonymizePayment' test.out

#- 255 AnonymizeRevocation
samples/cli/sample-apps Platform anonymizeRevocation \
    --namespace $AB_NAMESPACE \
    --userId '7EtYSnp2KP4KEenY' \
    > test.out 2>&1
eval_tap $? 255 'AnonymizeRevocation' test.out

#- 256 AnonymizeSubscription
samples/cli/sample-apps Platform anonymizeSubscription \
    --namespace $AB_NAMESPACE \
    --userId 'TPsfKdQN3cRhmOt8' \
    > test.out 2>&1
eval_tap $? 256 'AnonymizeSubscription' test.out

#- 257 AnonymizeWallet
samples/cli/sample-apps Platform anonymizeWallet \
    --namespace $AB_NAMESPACE \
    --userId 'hjFofVUhhBcjrqAr' \
    > test.out 2>&1
eval_tap $? 257 'AnonymizeWallet' test.out

#- 258 GetUserDLCByPlatform
samples/cli/sample-apps Platform getUserDLCByPlatform \
    --namespace $AB_NAMESPACE \
    --userId 'pEfQUpk0q7tr6Cte' \
    --type 'XBOX' \
    > test.out 2>&1
eval_tap $? 258 'GetUserDLCByPlatform' test.out

#- 259 GetUserDLC
samples/cli/sample-apps Platform getUserDLC \
    --namespace $AB_NAMESPACE \
    --userId 'UVxSGMD7c7h7J87f' \
    --includeAllNamespaces 'false' \
    --status 'REVOKED' \
    --type 'PSN' \
    > test.out 2>&1
eval_tap $? 259 'GetUserDLC' test.out

#- 260 QueryUserEntitlements
samples/cli/sample-apps Platform queryUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'XEV4LWoibNh0z1tj' \
    --activeOnly 'true' \
    --appType 'DLC' \
    --collectionId 'XzxQLKCjfrtjkxjr' \
    --entitlementClazz 'ENTITLEMENT' \
    --entitlementName '0NUsNVYHNfM1gttU' \
    --features '["6Hqbkd09HJkyDKZp", "9ezVtwliRqKPnT7Q", "ZxiUT41HWKbcqIMd"]' \
    --fuzzyMatchName 'true' \
    --ignoreActiveDate 'true' \
    --itemId '["MqUNqu8JuWuHccZW", "ahTqSoq201R5y8uC", "hMTWS6ADqr80eF3F"]' \
    --limit '89' \
    --offset '96' \
    --origin 'GooglePlay' \
    > test.out 2>&1
eval_tap $? 260 'QueryUserEntitlements' test.out

#- 261 GrantUserEntitlement
samples/cli/sample-apps Platform grantUserEntitlement \
    --namespace $AB_NAMESPACE \
    --userId '27QqIIk3Y4MGQ2vE' \
    --body '[{"collectionId": "VGqELDnVaAraeig4", "endDate": "1996-10-06T00:00:00Z", "grantedCode": "6RH7BpmWF9fwD41W", "itemId": "yv4qZU9NakeNPgQE", "itemNamespace": "NN4CBSP37hZ4Mdk3", "language": "xe", "metadata": {"ATQOspuNeWUW0F0K": {}, "pZ5HRK1fo66w2UzE": {}, "hWO3H3opOl5gRpE9": {}}, "origin": "Oculus", "quantity": 82, "region": "nZc5TeXDnzzfTo6p", "source": "PURCHASE", "startDate": "1971-07-01T00:00:00Z", "storeId": "fMEQgSOpmMgulc1T"}, {"collectionId": "4QlWQnbQpwpIPBb9", "endDate": "1982-07-25T00:00:00Z", "grantedCode": "ELQHAEqOfh8u22yY", "itemId": "nhocWD7uRhTDN7DI", "itemNamespace": "5AmPUI0KD8bajoeq", "language": "CBE-PSnf_853", "metadata": {"vLBZVEDOPji4syVV": {}, "agTbkoKCRILIpquN": {}, "I0uMl3RlsqzaCPe8": {}}, "origin": "Steam", "quantity": 74, "region": "C0hpdycrpUU2gn3f", "source": "REDEEM_CODE", "startDate": "1981-07-10T00:00:00Z", "storeId": "htNkY3E7AH1pY2sV"}, {"collectionId": "d8Md6Q7YGbmlxaCQ", "endDate": "1971-10-31T00:00:00Z", "grantedCode": "mrj39LOKHtymYiGN", "itemId": "DB0lZp4AaDZ9ljsx", "itemNamespace": "0BkD55hZBQsa2T8W", "language": "Bhh-tWDi", "metadata": {"I0EEtMAFc1u9Bd1h": {}, "ijfvgdZXducEHwlm": {}, "rTW5BWfj4DMeqjPb": {}}, "origin": "System", "quantity": 42, "region": "vmytjUEaVFGfdmQI", "source": "PROMOTION", "startDate": "1986-09-07T00:00:00Z", "storeId": "SRi8DaJ1VYPeGyFL"}]' \
    > test.out 2>&1
eval_tap $? 261 'GrantUserEntitlement' test.out

#- 262 GetUserAppEntitlementByAppId
samples/cli/sample-apps Platform getUserAppEntitlementByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'XefwDlOsaaXBWIjd' \
    --activeOnly 'true' \
    --appId 'UzxYRMwhi5QiJYlH' \
    > test.out 2>&1
eval_tap $? 262 'GetUserAppEntitlementByAppId' test.out

#- 263 QueryUserEntitlementsByAppType
samples/cli/sample-apps Platform queryUserEntitlementsByAppType \
    --namespace $AB_NAMESPACE \
    --userId 'orT608p13fO5LCBy' \
    --activeOnly 'false' \
    --limit '31' \
    --offset '79' \
    --appType 'SOFTWARE' \
    > test.out 2>&1
eval_tap $? 263 'QueryUserEntitlementsByAppType' test.out

#- 264 GetUserEntitlementsByIds
samples/cli/sample-apps Platform getUserEntitlementsByIds \
    --namespace $AB_NAMESPACE \
    --userId 'DWfD7T5qoXi2IIYu' \
    --ids '["HXMFI4KAWkN8jGjZ", "BMwx1tj4gr9WUQSh", "aUllxfvuRw5wypA1"]' \
    > test.out 2>&1
eval_tap $? 264 'GetUserEntitlementsByIds' test.out

#- 265 GetUserEntitlementByItemId
samples/cli/sample-apps Platform getUserEntitlementByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'Y4KuYObKqbbafeAX' \
    --activeOnly 'false' \
    --entitlementClazz 'OPTIONBOX' \
    --platform 'xI7EyCRCm7ZTMAQD' \
    --itemId '4Ho4NyiCEjQAn1yc' \
    > test.out 2>&1
eval_tap $? 265 'GetUserEntitlementByItemId' test.out

#- 266 GetUserActiveEntitlementsByItemIds
samples/cli/sample-apps Platform getUserActiveEntitlementsByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'SonjYkeCOoFV0AkV' \
    --ids '["sxqx8BmAhNLIIPUb", "EaKCnyboBIIyfttt", "2uqY4QD24UdqPZ3V"]' \
    --platform 'c5HvmtWE6RGfPNab' \
    > test.out 2>&1
eval_tap $? 266 'GetUserActiveEntitlementsByItemIds' test.out

#- 267 GetUserEntitlementBySku
samples/cli/sample-apps Platform getUserEntitlementBySku \
    --namespace $AB_NAMESPACE \
    --userId 'iyIKNSWGeLpbjBxC' \
    --activeOnly 'false' \
    --entitlementClazz 'APP' \
    --platform '7Ju9PuL2rVAafNW7' \
    --sku 'YNA5oAleQxdUiY3H' \
    > test.out 2>&1
eval_tap $? 267 'GetUserEntitlementBySku' test.out

#- 268 ExistsAnyUserActiveEntitlement
samples/cli/sample-apps Platform existsAnyUserActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'ASiW7RgEOav8sZSw' \
    --appIds '["LcPzv47eAp5r1BC5", "kApTUEGbfrQ5cqHS", "RgOjvERqB8QWtDBV"]' \
    --itemIds '["MdmqV3K7A1yRWxmb", "TV77U7NYlZKtBWGy", "yTNhuqKaUO4t3NPz"]' \
    --platform 'V5xBd3Ccj7EoojWP' \
    --skus '["IlbtA4iR1iCO3duO", "zFFyoROPpymL7BfF", "VYoJkGjRpmWOG0Co"]' \
    > test.out 2>&1
eval_tap $? 268 'ExistsAnyUserActiveEntitlement' test.out

#- 269 ExistsAnyUserActiveEntitlementByItemIds
samples/cli/sample-apps Platform existsAnyUserActiveEntitlementByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'E55Gjz5hcLMLmpbk' \
    --platform 'n3YSh9CpeoXCIpLe' \
    --itemIds '["yXiZ1HUwVQ2vTIKb", "TwX9ConNpBUpUKmC", "J5Sxz6NahIg65yhK"]' \
    > test.out 2>&1
eval_tap $? 269 'ExistsAnyUserActiveEntitlementByItemIds' test.out

#- 270 GetUserAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform getUserAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'eNwxmfbMphMjPIeu' \
    --appId '7iWvu0JjVlAyFKOF' \
    > test.out 2>&1
eval_tap $? 270 'GetUserAppEntitlementOwnershipByAppId' test.out

#- 271 GetUserEntitlementOwnershipByItemId
samples/cli/sample-apps Platform getUserEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'dGiIV3DPhtzZGwLa' \
    --entitlementClazz 'SUBSCRIPTION' \
    --platform '0aIsA9G9QBUVstIz' \
    --itemId 'ceoqVCQIj1GFh3d3' \
    > test.out 2>&1
eval_tap $? 271 'GetUserEntitlementOwnershipByItemId' test.out

#- 272 GetUserEntitlementOwnershipByItemIds
samples/cli/sample-apps Platform getUserEntitlementOwnershipByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'SSGzOgxMcf7a4Kwp' \
    --ids '["xiHmiSR1qhD7OkJu", "Smer0cKgrCEEY71d", "2L0sKA9diLxaUV6I"]' \
    --platform '1KpPEkPwrHiffjhi' \
    > test.out 2>&1
eval_tap $? 272 'GetUserEntitlementOwnershipByItemIds' test.out

#- 273 GetUserEntitlementOwnershipBySku
samples/cli/sample-apps Platform getUserEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --userId 'D4EbLHBQSjIPfxod' \
    --entitlementClazz 'SUBSCRIPTION' \
    --platform '3EsZq7BjOzgOzdr6' \
    --sku '7KO9Cox2bD00wjPQ' \
    > test.out 2>&1
eval_tap $? 273 'GetUserEntitlementOwnershipBySku' test.out

#- 274 RevokeAllEntitlements
samples/cli/sample-apps Platform revokeAllEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'CG9BKrGHw6X0iMZm' \
    > test.out 2>&1
eval_tap $? 274 'RevokeAllEntitlements' test.out

#- 275 RevokeUserEntitlements
samples/cli/sample-apps Platform revokeUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'bMo8R2l6TpL8HtSe' \
    --entitlementIds 'K4Mlx1KcJDowIiRn' \
    > test.out 2>&1
eval_tap $? 275 'RevokeUserEntitlements' test.out

#- 276 GetUserEntitlement
samples/cli/sample-apps Platform getUserEntitlement \
    --entitlementId 'XuzbEPJzienO0FAL' \
    --namespace $AB_NAMESPACE \
    --userId 'pyvWvLmIjb6Xiegc' \
    > test.out 2>&1
eval_tap $? 276 'GetUserEntitlement' test.out

#- 277 UpdateUserEntitlement
samples/cli/sample-apps Platform updateUserEntitlement \
    --entitlementId 'yKMfN3vuDnK2JOT8' \
    --namespace $AB_NAMESPACE \
    --userId 'ECYjdiZdWQKjJEpn' \
    --body '{"collectionId": "cmwpgl9g9ncjYQKY", "endDate": "1976-06-16T00:00:00Z", "nullFieldList": ["gh6HTMdx2k7ReOQR", "o0JVkNzt459lmLQi", "B16c5aEf3krS4cbM"], "origin": "Steam", "reason": "7BMnbbm6wuWZvyJM", "startDate": "1984-03-22T00:00:00Z", "status": "REVOKED", "useCount": 5}' \
    > test.out 2>&1
eval_tap $? 277 'UpdateUserEntitlement' test.out

#- 278 ConsumeUserEntitlement
samples/cli/sample-apps Platform consumeUserEntitlement \
    --entitlementId '6k0P89WpptVaXY3h' \
    --namespace $AB_NAMESPACE \
    --userId 'G2wTFOG5sDuYf0ec' \
    --body '{"metadata": {"jO5ycog4EOqmtSCe": {}, "4xYaWuVdzU8cjH37": {}, "tXEpx4kbmDfUYhdS": {}}, "options": ["0nTk6a7jHXNugHeI", "BUsADPOIHcoVbNQE", "XhT1AhSwIrMvs2Gq"], "platform": "lAaAOD3Wua7AShpA", "requestId": "hIcm4sU3FdksDjeK", "useCount": 32}' \
    > test.out 2>&1
eval_tap $? 278 'ConsumeUserEntitlement' test.out

#- 279 DisableUserEntitlement
samples/cli/sample-apps Platform disableUserEntitlement \
    --entitlementId 'ntoPl2wQYAsa8ove' \
    --namespace $AB_NAMESPACE \
    --userId 'RxCkVVpzVWcjJFUe' \
    > test.out 2>&1
eval_tap $? 279 'DisableUserEntitlement' test.out

#- 280 EnableUserEntitlement
samples/cli/sample-apps Platform enableUserEntitlement \
    --entitlementId '6B0xK9tO1GaFgsKv' \
    --namespace $AB_NAMESPACE \
    --userId 'NFd8ceObQwibM7tC' \
    > test.out 2>&1
eval_tap $? 280 'EnableUserEntitlement' test.out

#- 281 GetUserEntitlementHistories
samples/cli/sample-apps Platform getUserEntitlementHistories \
    --entitlementId 'qjzXHEZHOtfcjqwL' \
    --namespace $AB_NAMESPACE \
    --userId 'rBrz1fXd1IpOWrYl' \
    > test.out 2>&1
eval_tap $? 281 'GetUserEntitlementHistories' test.out

#- 282 RevokeUserEntitlement
samples/cli/sample-apps Platform revokeUserEntitlement \
    --entitlementId 'aUedyLZY0J9tN89d' \
    --namespace $AB_NAMESPACE \
    --userId 'pm5VpL4eoiJ96NAU' \
    --body '{"metadata": {"yGgxqxdgm0hSMLzv": {}, "ZCkbmqKQQ5Zgz3pt": {}, "X5sfhzzIiyhbIt1L": {}}}' \
    > test.out 2>&1
eval_tap $? 282 'RevokeUserEntitlement' test.out

#- 283 RevokeUserEntitlementByUseCount
samples/cli/sample-apps Platform revokeUserEntitlementByUseCount \
    --entitlementId 'K09JSDOyXpBD5UGS' \
    --namespace $AB_NAMESPACE \
    --userId 'MXm4tIn1tcAohzGp' \
    --body '{"reason": "ln31V703HYO9l06G", "useCount": 78}' \
    > test.out 2>&1
eval_tap $? 283 'RevokeUserEntitlementByUseCount' test.out

#- 284 PreCheckRevokeUserEntitlementByUseCount
samples/cli/sample-apps Platform preCheckRevokeUserEntitlementByUseCount \
    --entitlementId 'gIf7iAgWkVD3JuWV' \
    --namespace $AB_NAMESPACE \
    --userId 'J2TYxnuqq7aB6KSN' \
    --quantity '46' \
    > test.out 2>&1
eval_tap $? 284 'PreCheckRevokeUserEntitlementByUseCount' test.out

#- 285 RevokeUseCount
eval_tap 0 285 'RevokeUseCount # SKIP deprecated' test.out

#- 286 SellUserEntitlement
samples/cli/sample-apps Platform sellUserEntitlement \
    --entitlementId 'PNQAyAdspTccaJQM' \
    --namespace $AB_NAMESPACE \
    --userId 'aLd7C3HvEtROfZNR' \
    --body '{"platform": "3RtBkxOoAbuK4xS6", "requestId": "CWdR1B2PJxI8mzsu", "useCount": 76}' \
    > test.out 2>&1
eval_tap $? 286 'SellUserEntitlement' test.out

#- 287 FulfillItem
samples/cli/sample-apps Platform fulfillItem \
    --namespace $AB_NAMESPACE \
    --userId '8AeRIJJqLjikdvvD' \
    --body '{"duration": 19, "endDate": "1981-07-15T00:00:00Z", "entitlementCollectionId": "9fIxAviUCaqkvdLa", "entitlementOrigin": "Xbox", "itemId": "i9BRkSjXE752DwPc", "itemSku": "G7aFKeMMdAlg9d97", "language": "NvKzqJguVFibfMjW", "metadata": {"71ZLLpB466pKdrli": {}, "eoZpYIpcatVvL7oE": {}, "8w8x9qjc068dxrzf": {}}, "order": {"currency": {"currencyCode": "LObNEOAZR23lMvVe", "currencySymbol": "i2RiyxA9gtJJDYmt", "currencyType": "VIRTUAL", "decimals": 56, "namespace": "ur9LMAxdkf8YrOZk"}, "ext": {"4rnR5bqxT3CRCMMm": {}, "wqOTNGX1OWS5rBen": {}, "MCynBXsuSyo4q7Dg": {}}, "free": false}, "orderNo": "8AWfukQ16r879gI9", "origin": "Epic", "overrideBundleItemQty": {"kZ7gURuCGtNZSG7A": 96, "tpYqcMv5ompFvIoO": 32, "h9ykohJs5XrDvILZ": 98}, "quantity": 90, "region": "owdCW3fUyDNTfmY8", "source": "REWARD", "startDate": "1987-03-21T00:00:00Z", "storeId": "ZfBweBEAkROv0k9h"}' \
    > test.out 2>&1
eval_tap $? 287 'FulfillItem' test.out

#- 288 RedeemCode
samples/cli/sample-apps Platform redeemCode \
    --namespace $AB_NAMESPACE \
    --userId 'FWUNunL3bXxIWgo9' \
    --body '{"code": "9EA1C2GeTZVk15Bi", "language": "hye-rwkI-qk", "region": "NPhTvXEjmRpRKZ2b"}' \
    > test.out 2>&1
eval_tap $? 288 'RedeemCode' test.out

#- 289 PreCheckFulfillItem
samples/cli/sample-apps Platform preCheckFulfillItem \
    --namespace $AB_NAMESPACE \
    --userId 'OV9wyHvIh7a5vA4O' \
    --body '{"itemId": "4prk1DwSJBdrzw2D", "itemSku": "383x9HTKwmQSZsNN", "quantity": 96}' \
    > test.out 2>&1
eval_tap $? 289 'PreCheckFulfillItem' test.out

#- 290 FulfillRewards
samples/cli/sample-apps Platform fulfillRewards \
    --namespace $AB_NAMESPACE \
    --userId 'YOOzMINELlBJHVJD' \
    --body '{"entitlementCollectionId": "RlW6reJII76pXY7t", "entitlementOrigin": "Playstation", "metadata": {"6vHVs7HhauMmqf04": {}, "aD273vOc71u2VSIM": {}, "YhQXLjPJWVFpD8xj": {}}, "origin": "GooglePlay", "rewards": [{"currency": {"currencyCode": "oCVIQZ7ajCUjIioo", "namespace": "4gVJF7XOwxfBeAxE"}, "item": {"itemId": "eDxgWDoojkW5Ix0Q", "itemName": "3AM5p9SSICUlirXG", "itemSku": "nmrNg2ieHOXMNLZE", "itemType": "dEsJjk2PfDqYoQyG"}, "quantity": 67, "type": "CURRENCY"}, {"currency": {"currencyCode": "D46mpXQEE3ajIf4m", "namespace": "DoKwdyv68H4q0H97"}, "item": {"itemId": "3SiHWtdGgmAY901q", "itemName": "DtmsfwOzB3C6gj0m", "itemSku": "iU8nYFIEkrbqGfDZ", "itemType": "hMF7xsViHkI1svGS"}, "quantity": 40, "type": "CURRENCY"}, {"currency": {"currencyCode": "gQ9J89FPajA8C9LU", "namespace": "10zDxkLdfw9t8j9n"}, "item": {"itemId": "3yvMBqJiiw5CkIZh", "itemName": "yr6R5RWbrFxsJ198", "itemSku": "c93es4E3hnwriBUm", "itemType": "glJ8hbMFB1yrhZ25"}, "quantity": 50, "type": "ITEM"}], "source": "PURCHASE", "transactionId": "VAhHOfblSjA4mzpB"}' \
    > test.out 2>&1
eval_tap $? 290 'FulfillRewards' test.out

#- 291 QueryUserIAPOrders
samples/cli/sample-apps Platform queryUserIAPOrders \
    --namespace $AB_NAMESPACE \
    --userId '5Fs0vG4MymLldumZ' \
    --endTime '0f0rEdQ5hGM1bVCc' \
    --limit '94' \
    --offset '4' \
    --productId 'Eo7FslN8payR1CWI' \
    --startTime 'pKy0U0nuuhEwAYvC' \
    --status 'FAILED' \
    --type 'GOOGLE' \
    > test.out 2>&1
eval_tap $? 291 'QueryUserIAPOrders' test.out

#- 292 QueryAllUserIAPOrders
samples/cli/sample-apps Platform queryAllUserIAPOrders \
    --namespace $AB_NAMESPACE \
    --userId 'F8m7vACr6btYqVjK' \
    > test.out 2>&1
eval_tap $? 292 'QueryAllUserIAPOrders' test.out

#- 293 QueryUserIAPConsumeHistory
samples/cli/sample-apps Platform queryUserIAPConsumeHistory \
    --namespace $AB_NAMESPACE \
    --userId 'Q9z6jvsoQ4MHmNJN' \
    --endTime 'CUHOw44FbpELceRz' \
    --limit '94' \
    --offset '2' \
    --startTime 'MJfTK2CQlZjVg7Uh' \
    --status 'FAIL' \
    --type 'STEAM' \
    > test.out 2>&1
eval_tap $? 293 'QueryUserIAPConsumeHistory' test.out

#- 294 MockFulfillIAPItem
samples/cli/sample-apps Platform mockFulfillIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'eVeEpfwegKVDnDsK' \
    --body '{"itemIdentityType": "ITEM_SKU", "language": "yd", "productId": "KgORXSjNi4fw7vlo", "region": "5xxbVWfN5ynFR75u", "transactionId": "qBKO8CVAsmphnwhg", "type": "XBOX"}' \
    > test.out 2>&1
eval_tap $? 294 'MockFulfillIAPItem' test.out

#- 295 AdminSyncOculusSubscriptions
samples/cli/sample-apps Platform adminSyncOculusSubscriptions \
    --namespace $AB_NAMESPACE \
    --userId 'dNtW30uKXCXhZKp2' \
    --body '{"skus": ["v0qspaPg23lsiotr", "lvTvevnLyFikRQd6", "YI1bBuJ49bU3HgqR"]}' \
    > test.out 2>&1
eval_tap $? 295 'AdminSyncOculusSubscriptions' test.out

#- 296 AdminGetIAPOrderLineItems
samples/cli/sample-apps Platform adminGetIAPOrderLineItems \
    --iapOrderNo 'uOmPXHtiFuE1kPzl' \
    --namespace $AB_NAMESPACE \
    --userId '6Gjw8k3M7kzWR1xX' \
    > test.out 2>&1
eval_tap $? 296 'AdminGetIAPOrderLineItems' test.out

#- 297 AdminSyncSteamAbnormalTransaction
samples/cli/sample-apps Platform adminSyncSteamAbnormalTransaction \
    --namespace $AB_NAMESPACE \
    --userId 'Kc463h6l25r12UUz' \
    > test.out 2>&1
eval_tap $? 297 'AdminSyncSteamAbnormalTransaction' test.out

#- 298 AdminSyncSteamIAPByTransaction
samples/cli/sample-apps Platform adminSyncSteamIAPByTransaction \
    --namespace $AB_NAMESPACE \
    --userId 'zGPB3CpIEhyPN2D5' \
    --body '{"orderId": "LlWOJewFoQmjdxFH"}' \
    > test.out 2>&1
eval_tap $? 298 'AdminSyncSteamIAPByTransaction' test.out

#- 299 QueryUserThirdPartySubscription
samples/cli/sample-apps Platform queryUserThirdPartySubscription \
    --namespace $AB_NAMESPACE \
    --userId 'dNmCdp69qKbLHv2b' \
    --activeOnly 'false' \
    --groupId 'sJ2fjd39Fos8jMF3' \
    --limit '72' \
    --offset '10' \
    --platform 'TWITCH' \
    --productId 'XzIx11ci3IN5JjBy' \
    > test.out 2>&1
eval_tap $? 299 'QueryUserThirdPartySubscription' test.out

#- 300 GetThirdPartyPlatformSubscriptionOwnershipByGroupId
samples/cli/sample-apps Platform getThirdPartyPlatformSubscriptionOwnershipByGroupId \
    --namespace $AB_NAMESPACE \
    --platform 'PLAYSTATION' \
    --userId 'XHlsCOLuKqYE63pc' \
    --groupId 'DaMIBblrwYdizk8b' \
    > test.out 2>&1
eval_tap $? 300 'GetThirdPartyPlatformSubscriptionOwnershipByGroupId' test.out

#- 301 GetThirdPartyPlatformSubscriptionOwnershipByProductId
samples/cli/sample-apps Platform getThirdPartyPlatformSubscriptionOwnershipByProductId \
    --namespace $AB_NAMESPACE \
    --platform 'OCULUS' \
    --userId 'sdd2drDvRL5VXwfq' \
    --productId 'lw7eUpALCDUgDXvV' \
    > test.out 2>&1
eval_tap $? 301 'GetThirdPartyPlatformSubscriptionOwnershipByProductId' test.out

#- 302 QueryUserThirdPartySubscriptionTransactions
samples/cli/sample-apps Platform queryUserThirdPartySubscriptionTransactions \
    --namespace $AB_NAMESPACE \
    --userId 'xn72670rguqErLbj' \
    --activeOnly 'false' \
    --groupId 'ivfLNwo5MOPz5L63' \
    --limit '78' \
    --offset '93' \
    --platform 'OCULUS' \
    --productId 'mJcHiWrrde9Sf5QB' \
    > test.out 2>&1
eval_tap $? 302 'QueryUserThirdPartySubscriptionTransactions' test.out

#- 303 GetThirdPartySubscriptionDetails
samples/cli/sample-apps Platform getThirdPartySubscriptionDetails \
    --id 'udr8HA2xNxrliPCy' \
    --namespace $AB_NAMESPACE \
    --userId 'LYDZ9TD1Cv60jKYH' \
    > test.out 2>&1
eval_tap $? 303 'GetThirdPartySubscriptionDetails' test.out

#- 304 GetSubscriptionHistory
samples/cli/sample-apps Platform getSubscriptionHistory \
    --id 'EznrlqInSvXzk2NV' \
    --namespace $AB_NAMESPACE \
    --userId 'yZEwLKNEwkYRiDOn' \
    --limit '16' \
    --offset '48' \
    > test.out 2>&1
eval_tap $? 304 'GetSubscriptionHistory' test.out

#- 305 SyncSubscriptionTransaction
samples/cli/sample-apps Platform syncSubscriptionTransaction \
    --id 'qq83Ds7nM9YYV4aI' \
    --namespace $AB_NAMESPACE \
    --userId 'NQJGMwCvaFhP8rXx' \
    > test.out 2>&1
eval_tap $? 305 'SyncSubscriptionTransaction' test.out

#- 306 GetThirdPartyUserSubscriptionDetails
samples/cli/sample-apps Platform getThirdPartyUserSubscriptionDetails \
    --id 's6vdRS3R3K2whCrT' \
    --namespace $AB_NAMESPACE \
    --userId 'atpqkGu1kYyaHhuH' \
    > test.out 2>&1
eval_tap $? 306 'GetThirdPartyUserSubscriptionDetails' test.out

#- 307 SyncSubscription
samples/cli/sample-apps Platform syncSubscription \
    --id 'xVnXWbqqBErEk7gt' \
    --namespace $AB_NAMESPACE \
    --userId 'JdC65mr9O8CGui9u' \
    > test.out 2>&1
eval_tap $? 307 'SyncSubscription' test.out

#- 308 QueryUserOrders
samples/cli/sample-apps Platform queryUserOrders \
    --namespace $AB_NAMESPACE \
    --userId '2KcrqsBq91zoeOLy' \
    --discounted 'true' \
    --itemId 'XU6ex91h7WGGY26I' \
    --limit '57' \
    --offset '16' \
    --status 'CLOSED' \
    > test.out 2>&1
eval_tap $? 308 'QueryUserOrders' test.out

#- 309 AdminCreateUserOrder
samples/cli/sample-apps Platform adminCreateUserOrder \
    --namespace $AB_NAMESPACE \
    --userId 'Cp4uFEamwxkW82YM' \
    --body '{"currencyCode": "4ZxrbzzsCEwIFunN", "currencyNamespace": "3hJ8SEqtnJBlekUl", "discountCodes": ["vnFT4AG8YSqX8Q3K", "IQZODVsatVQvRfvo", "LbmPaEkAWdSE0OpA"], "discountedPrice": 0, "entitlementPlatform": "Oculus", "ext": {"ja6qgz4VSVFatz2u": {}, "S0KEAC6CSrpm2jA0": {}, "6a4kJlH7OKyZpdzk": {}}, "itemId": "VTzf4WEuHlidAncC", "language": "JqEfuyFtHYAVqCVJ", "options": {"skipPriceValidation": false}, "platform": "Nintendo", "price": 60, "quantity": 51, "region": "XfSADDPLfkeTNINm", "returnUrl": "OPU7U53Hate0PXzB", "sandbox": true, "sectionId": "cF6dVXCLB1o0l76H"}' \
    > test.out 2>&1
eval_tap $? 309 'AdminCreateUserOrder' test.out

#- 310 CountOfPurchasedItem
samples/cli/sample-apps Platform countOfPurchasedItem \
    --namespace $AB_NAMESPACE \
    --userId '2cJEHHf6rLItlVQB' \
    --itemId 'oqNKxGMl0baPkHWx' \
    > test.out 2>&1
eval_tap $? 310 'CountOfPurchasedItem' test.out

#- 311 GetUserOrder
samples/cli/sample-apps Platform getUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'CSTRmEoO19PgaBpU' \
    --userId 'nuNubzdYmjGg0v4x' \
    > test.out 2>&1
eval_tap $? 311 'GetUserOrder' test.out

#- 312 UpdateUserOrderStatus
samples/cli/sample-apps Platform updateUserOrderStatus \
    --namespace $AB_NAMESPACE \
    --orderNo 'KKyRqvqkptBALZHT' \
    --userId 'Hx8QnqTN6cjLomQe' \
    --body '{"status": "REFUNDED", "statusReason": "lO3atdw2Y7D1O3LN"}' \
    > test.out 2>&1
eval_tap $? 312 'UpdateUserOrderStatus' test.out

#- 313 FulfillUserOrder
samples/cli/sample-apps Platform fulfillUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'X4QSJihlre5XXaJx' \
    --userId 'akQuhJAc1B9GaND1' \
    > test.out 2>&1
eval_tap $? 313 'FulfillUserOrder' test.out

#- 314 GetUserOrderGrant
eval_tap 0 314 'GetUserOrderGrant # SKIP deprecated' test.out

#- 315 GetUserOrderHistories
samples/cli/sample-apps Platform getUserOrderHistories \
    --namespace $AB_NAMESPACE \
    --orderNo 'I2idF3vaWO1U4lVb' \
    --userId 'nbEaCl3CziNJqXcH' \
    > test.out 2>&1
eval_tap $? 315 'GetUserOrderHistories' test.out

#- 316 ProcessUserOrderNotification
samples/cli/sample-apps Platform processUserOrderNotification \
    --namespace $AB_NAMESPACE \
    --orderNo 'g2aqrQpuCk6xHgBT' \
    --userId 'uhEzT9QVora5eNws' \
    --body '{"additionalData": {"cardSummary": "1MkdA8sD0iujLz4x"}, "authorisedTime": "1976-09-15T00:00:00Z", "chargebackReversedTime": "1975-01-03T00:00:00Z", "chargebackTime": "1994-09-18T00:00:00Z", "chargedTime": "1982-03-22T00:00:00Z", "createdTime": "1986-03-19T00:00:00Z", "currency": {"currencyCode": "iwOVz3vI68LQeu1H", "currencySymbol": "4t9RU0a6YgSpNOlv", "currencyType": "REAL", "decimals": 59, "namespace": "rQ24LTmVaaAVhIbb"}, "customParameters": {"hKtYuV6sueqVb2L6": {}, "wO1VrE9ZJD7T6A9H": {}, "oG8GLpdWDWNUjRXN": {}}, "extOrderNo": "sP2Yplb4TwHBSa7a", "extTxId": "BoYCQsoqH0ktLomL", "extUserId": "SyH5Gb2BhKBV36wi", "issuedAt": "1987-03-13T00:00:00Z", "metadata": {"BC3TI1UseAouFP9X": "nkWR0hum1wJrPJu6", "7C8GD78fwjuMREKk": "jTOA737nNnN4oRol", "uBH5VcAwZg9sOfME": "QhROxTTet3i4UoaO"}, "namespace": "nexEABCNVvPosmvE", "nonceStr": "Hv4AtRTJc2734etO", "paymentData": {"discountAmount": 99, "discountCode": "nbQKeGOqaCVEscsD", "subtotalPrice": 47, "tax": 13, "totalPrice": 77}, "paymentMethod": "eVnPstBwc5FlRmOu", "paymentMethodFee": 89, "paymentOrderNo": "sgB1VTb2X9qGHBqr", "paymentProvider": "NEONPAY", "paymentProviderFee": 52, "paymentStationUrl": "cNyXinaCKRGOV7uR", "price": 47, "refundedTime": "1989-03-17T00:00:00Z", "salesTax": 20, "sandbox": false, "sku": "EJLqPzIobGcOm55x", "status": "CHARGEBACK_REVERSED", "statusReason": "jfMfmpUpltO2GiBt", "subscriptionId": "2xct4ynSNy5UClP4", "subtotalPrice": 8, "targetNamespace": "aZgudvlMs0ltUXRJ", "targetUserId": "I50YdfyhudlCFDzo", "tax": 67, "totalPrice": 72, "totalTax": 57, "txEndTime": "1990-12-03T00:00:00Z", "type": "WcKqsziiQ9AdyFKR", "userId": "qvJs1oSW03jsmxG3", "vat": 15}' \
    > test.out 2>&1
eval_tap $? 316 'ProcessUserOrderNotification' test.out

#- 317 DownloadUserOrderReceipt
samples/cli/sample-apps Platform downloadUserOrderReceipt \
    --namespace $AB_NAMESPACE \
    --orderNo 'Hs6W8DpWpQVcTP2I' \
    --userId 'EXvON4k7kPYmWDEy' \
    > test.out 2>&1
eval_tap $? 317 'DownloadUserOrderReceipt' test.out

#- 318 CreateUserPaymentOrder
samples/cli/sample-apps Platform createUserPaymentOrder \
    --namespace $AB_NAMESPACE \
    --userId '3O9LXtHn6WUdZqNP' \
    --body '{"currencyCode": "Qm1irPonLGJn3gJV", "currencyNamespace": "rsjhhc0KbItFr7Vd", "customParameters": {"jRsvwTAuAMpOhafw": {}, "OjMg4cvGzUubJE4d": {}, "zIlUPLrgN7MfSMbI": {}}, "description": "JfZANFw7rP2HEmzJ", "extOrderNo": "ehRSyDB4a5OoByxh", "extUserId": "6EGG77babASlkejt", "itemType": "INGAMEITEM", "language": "paFc-739", "metadata": {"7fUGK6sJNUQfzN1D": "jkchLqTmsahrSJpc", "G8XLCQPF5rtA40bo": "8DJ1BlzEDGLsIdEJ", "sxuTcVi46FJdNHTj": "JuHK8BrWs5SKmW9y"}, "notifyUrl": "0KNRGnD9n2NtivCK", "omitNotification": false, "platform": "DupYgI7OhQfgnM7k", "price": 68, "recurringPaymentOrderNo": "JWi3spj2j5NdkuJR", "region": "TXhkbFgyRRDVgPeN", "returnUrl": "ubtxoq8jx8gReEwM", "sandbox": false, "sku": "GbXIjxjInN3YCO6t", "subscriptionId": "Au6nKPM9bIii9hfH", "title": "Q1w6pSGYLUkwdS0m"}' \
    > test.out 2>&1
eval_tap $? 318 'CreateUserPaymentOrder' test.out

#- 319 RefundUserPaymentOrder
samples/cli/sample-apps Platform refundUserPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'DqSATSgkAjX0Vesn' \
    --userId 'vmJXuavRY8AfuWRX' \
    --body '{"description": "P3kWhmM7pxpAcpvK"}' \
    > test.out 2>&1
eval_tap $? 319 'RefundUserPaymentOrder' test.out

#- 320 GetUserPlatformAccountClosureHistories
samples/cli/sample-apps Platform getUserPlatformAccountClosureHistories \
    --namespace $AB_NAMESPACE \
    --userId '7aHgiFpmCsziIQTM' \
    > test.out 2>&1
eval_tap $? 320 'GetUserPlatformAccountClosureHistories' test.out

#- 321 ApplyUserRedemption
samples/cli/sample-apps Platform applyUserRedemption \
    --namespace $AB_NAMESPACE \
    --userId 'CUuMAy8K85vImHBJ' \
    --body '{"code": "DPrgjoysTHp5OfoC", "orderNo": "5cP1DXY9tXWJ2nYP"}' \
    > test.out 2>&1
eval_tap $? 321 'ApplyUserRedemption' test.out

#- 322 DoRevocation
samples/cli/sample-apps Platform doRevocation \
    --namespace $AB_NAMESPACE \
    --userId 'rqKZ6eG9MAVkwe3v' \
    --body '{"meta": {"1qapRcH8xRNxs4V4": {}, "0HYzLhaH9JS7GSl0": {}, "vOy8OQvbQa6i2lqj": {}}, "reason": "JxhJj9YMxzzeca4r", "requestId": "MbfxOxUNWxHR7SIS", "revokeEntries": [{"currency": {"balanceOrigin": "Twitch", "currencyCode": "cQPg4QqPE7xKQaHC", "namespace": "BkHMU2FioVw8s8Ej"}, "entitlement": {"entitlementId": "Tu1CyAvsul85xqYD"}, "item": {"entitlementOrigin": "Oculus", "itemIdentity": "2LaCfHdpPYo07utu", "itemIdentityType": "ITEM_ID", "origin": "Twitch"}, "quantity": 72, "type": "CURRENCY"}, {"currency": {"balanceOrigin": "Steam", "currencyCode": "qUQXn7sLUucllWid", "namespace": "u0wOebLPablIias0"}, "entitlement": {"entitlementId": "x3I10v7fWbDFEl0K"}, "item": {"entitlementOrigin": "Twitch", "itemIdentity": "Z18WTehnpHUQ9uDg", "itemIdentityType": "ITEM_SKU", "origin": "GooglePlay"}, "quantity": 39, "type": "ENTITLEMENT"}, {"currency": {"balanceOrigin": "Steam", "currencyCode": "TEcU7xGtQWARBE1v", "namespace": "SBWvZYemNC3zTU7k"}, "entitlement": {"entitlementId": "2Yh6lDhpwW7Jz2ZG"}, "item": {"entitlementOrigin": "Xbox", "itemIdentity": "Uu9Unq8ovXl0y5Ak", "itemIdentityType": "ITEM_SKU", "origin": "Oculus"}, "quantity": 31, "type": "ITEM"}], "source": "ORDER", "transactionId": "Rl1vTUJOZauVd0wQ"}' \
    > test.out 2>&1
eval_tap $? 322 'DoRevocation' test.out

#- 323 RegisterXblSessions
samples/cli/sample-apps Platform registerXblSessions \
    --namespace $AB_NAMESPACE \
    --userId '7qIFG2AalMuwP4tP' \
    --body '{"gameSessionId": "R16K1mbDPjuNCiAd", "payload": {"Z2oWcXqt5CCjAbFR": {}, "h31Drp3TUGeNDR1u": {}, "RFdPnJbZDfjWiYeJ": {}}, "scid": "WcV511eVH7WVBBw8", "sessionTemplateName": "orHxwzSHBvoHNwA5"}' \
    > test.out 2>&1
eval_tap $? 323 'RegisterXblSessions' test.out

#- 324 QueryUserSubscriptions
samples/cli/sample-apps Platform queryUserSubscriptions \
    --namespace $AB_NAMESPACE \
    --userId '6l0yZ2GvljbV4ggy' \
    --chargeStatus 'NEVER' \
    --itemId 'LzXpAs6TKSDbQhYy' \
    --limit '66' \
    --offset '59' \
    --sku 'EXy2zbvlDyGOkbPq' \
    --status 'ACTIVE' \
    --subscribedBy 'USER' \
    > test.out 2>&1
eval_tap $? 324 'QueryUserSubscriptions' test.out

#- 325 GetUserSubscriptionActivities
samples/cli/sample-apps Platform getUserSubscriptionActivities \
    --namespace $AB_NAMESPACE \
    --userId '93z1NzfIa4NlT11y' \
    --excludeSystem 'false' \
    --limit '20' \
    --offset '63' \
    --subscriptionId 'CQLl9h0FQkIiEGgJ' \
    > test.out 2>&1
eval_tap $? 325 'GetUserSubscriptionActivities' test.out

#- 326 PlatformSubscribeSubscription
samples/cli/sample-apps Platform platformSubscribeSubscription \
    --namespace $AB_NAMESPACE \
    --userId '4UdPeNBnjShHYOBP' \
    --body '{"grantDays": 12, "itemId": "b98t3BKob06TfgKV", "language": "eP5wNbKZ83LMOghe", "reason": "Je4PFWQL6qkQME1M", "region": "NLHEgbkCvrmdGFQu", "source": "z53JoTYisiiTMLm7"}' \
    > test.out 2>&1
eval_tap $? 326 'PlatformSubscribeSubscription' test.out

#- 327 CheckUserSubscriptionSubscribableByItemId
samples/cli/sample-apps Platform checkUserSubscriptionSubscribableByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'g3NzHotKTyLHKmTM' \
    --itemId 'fMZwE4rbCFx9htUb' \
    > test.out 2>&1
eval_tap $? 327 'CheckUserSubscriptionSubscribableByItemId' test.out

#- 328 GetUserSubscription
samples/cli/sample-apps Platform getUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'KURLVt507kLZiJ8o' \
    --userId 'oRR7DDAGmZS5Q3QS' \
    > test.out 2>&1
eval_tap $? 328 'GetUserSubscription' test.out

#- 329 DeleteUserSubscription
samples/cli/sample-apps Platform deleteUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'IjZennChEVmOF6IK' \
    --userId 'WrxnAtev0zshGSzr' \
    > test.out 2>&1
eval_tap $? 329 'DeleteUserSubscription' test.out

#- 330 CancelSubscription
samples/cli/sample-apps Platform cancelSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'zLtK07ikYh65NTOU' \
    --userId 'SZiL2DXoT4p4sGb0' \
    --force 'false' \
    --body '{"immediate": false, "reason": "AG6DVu3LUfIAWb96"}' \
    > test.out 2>&1
eval_tap $? 330 'CancelSubscription' test.out

#- 331 GrantDaysToSubscription
samples/cli/sample-apps Platform grantDaysToSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'ioOl9VRXcpHIw8qn' \
    --userId 'kwOOTJ43AjZNA44H' \
    --body '{"grantDays": 39, "reason": "WyvWUaQvDYTewHWa"}' \
    > test.out 2>&1
eval_tap $? 331 'GrantDaysToSubscription' test.out

#- 332 GetUserSubscriptionBillingHistories
samples/cli/sample-apps Platform getUserSubscriptionBillingHistories \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'E8Ko7gEWtXXgKdOW' \
    --userId 'FwdbfooNhHVx90Zd' \
    --excludeFree 'false' \
    --limit '98' \
    --offset '34' \
    > test.out 2>&1
eval_tap $? 332 'GetUserSubscriptionBillingHistories' test.out

#- 333 ProcessUserSubscriptionNotification
samples/cli/sample-apps Platform processUserSubscriptionNotification \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'jtWrnI3XmTqx1YiX' \
    --userId 'nYcEVz8v7uLA5afE' \
    --body '{"additionalData": {"cardSummary": "w6pa9uGQjfjW5pJ9"}, "authorisedTime": "1975-01-28T00:00:00Z", "chargebackReversedTime": "1981-12-04T00:00:00Z", "chargebackTime": "1981-10-15T00:00:00Z", "chargedTime": "1993-11-06T00:00:00Z", "createdTime": "1982-05-17T00:00:00Z", "currency": {"currencyCode": "lCyV6TWjE8RsNBgg", "currencySymbol": "2pDayuN7zfZ7lwR1", "currencyType": "REAL", "decimals": 34, "namespace": "PkkFnN4ioKGxfPGN"}, "customParameters": {"xWDa0tuU6gpW14UB": {}, "5KPVzSTVd33TyEPe": {}, "ddQ0WpVIhlaBo1vU": {}}, "extOrderNo": "DbPWMrK57k2rgK12", "extTxId": "wbIqf2gOigity5SG", "extUserId": "dVdv5koF0VLC9Rfj", "issuedAt": "1994-12-11T00:00:00Z", "metadata": {"LVVviBCkG7sgHFTh": "0CQ7v5cOpfChtAwL", "4Xqf3bFookbgPa2K": "q0FvLevL3hekzm4W", "bRsIVR6RZK6WaVCJ": "yRhuZsLYljiFaq58"}, "namespace": "DmreVKVnAOvMikUe", "nonceStr": "1DHLHASd17pj2Nhp", "paymentData": {"discountAmount": 32, "discountCode": "aZoiCTrwQOSKrHpI", "subtotalPrice": 25, "tax": 5, "totalPrice": 56}, "paymentMethod": "mM9XxGDE3op9EXZU", "paymentMethodFee": 46, "paymentOrderNo": "WBHzLUDSB3r1rRzO", "paymentProvider": "WALLET", "paymentProviderFee": 21, "paymentStationUrl": "vFYD5MgOHG8c1vwg", "price": 42, "refundedTime": "1975-02-05T00:00:00Z", "salesTax": 14, "sandbox": true, "sku": "MnoYdIqLy909eRlH", "status": "CHARGE_FAILED", "statusReason": "eqi5FrXiL7AElmsO", "subscriptionId": "DjDpmoOXeLlwf09u", "subtotalPrice": 29, "targetNamespace": "yzD82mK4CcecaYII", "targetUserId": "VoX63hF11SFwmSpr", "tax": 43, "totalPrice": 37, "totalTax": 19, "txEndTime": "1995-07-29T00:00:00Z", "type": "G56voovXz69VBT4P", "userId": "9pZUeIdBV7AFVBOC", "vat": 28}' \
    > test.out 2>&1
eval_tap $? 333 'ProcessUserSubscriptionNotification' test.out

#- 334 AcquireUserTicket
samples/cli/sample-apps Platform acquireUserTicket \
    --boothName 'nu5jrWGMh4R59pHm' \
    --namespace $AB_NAMESPACE \
    --userId 't7CHSfuE3vUlP5wt' \
    --body '{"count": 7, "orderNo": "YqHD9W5ZkOJBAQ6x"}' \
    > test.out 2>&1
eval_tap $? 334 'AcquireUserTicket' test.out

#- 335 QueryUserCurrencyWallets
samples/cli/sample-apps Platform queryUserCurrencyWallets \
    --namespace $AB_NAMESPACE \
    --userId 'd8I6YHB2XxqiKGt9' \
    > test.out 2>&1
eval_tap $? 335 'QueryUserCurrencyWallets' test.out

#- 336 DebitUserWalletByCurrencyCode
samples/cli/sample-apps Platform debitUserWalletByCurrencyCode \
    --currencyCode 'gnvGRDpR9w6OPvDc' \
    --namespace $AB_NAMESPACE \
    --userId 'UpW4ABL5MPYuIwFx' \
    --body '{"allowOverdraft": true, "amount": 48, "balanceOrigin": "IOS", "balanceSource": "ORDER_REVOCATION", "metadata": {"uIefqmk7NutqWBv2": {}, "keFl3vzwEc6n4QtN": {}, "98i2Y75Jb3Tarwiw": {}}, "reason": "XKXTDZmqkqoisOwA"}' \
    > test.out 2>&1
eval_tap $? 336 'DebitUserWalletByCurrencyCode' test.out

#- 337 ListUserCurrencyTransactions
samples/cli/sample-apps Platform listUserCurrencyTransactions \
    --currencyCode '7RFZH7m1AVak7oSO' \
    --namespace $AB_NAMESPACE \
    --userId 'ufJqd1QfHJa9Nx89' \
    --limit '62' \
    --offset '54' \
    > test.out 2>&1
eval_tap $? 337 'ListUserCurrencyTransactions' test.out

#- 338 CheckBalance
samples/cli/sample-apps Platform checkBalance \
    --currencyCode 'HbDx0Y3xnkmBEiwa' \
    --namespace $AB_NAMESPACE \
    --userId 'TZa3urkI54zdJp2m' \
    --request '{"amount": 2, "debitBalanceSource": "IAP_REVOCATION", "metadata": {"vm1kgxmWbt7wyU4U": {}, "Pro550sELI6QimJP": {}, "MwMxaeqgiLsx3rnM": {}}, "reason": "2ZgHGO9wKpGBirrp", "walletPlatform": "Nintendo"}' \
    > test.out 2>&1
eval_tap $? 338 'CheckBalance' test.out

#- 339 CheckWallet
eval_tap 0 339 'CheckWallet # SKIP deprecated' test.out

#- 340 CreditUserWallet
samples/cli/sample-apps Platform creditUserWallet \
    --currencyCode 'uwERDcFRrH5ujXtf' \
    --namespace $AB_NAMESPACE \
    --userId 'MceHUuiHJzr4HDpZ' \
    --body '{"amount": 38, "expireAt": "1978-12-25T00:00:00Z", "metadata": {"ZD7F6lEaNslcTGa3": {}, "Yg6bZGFcKGxa2tsb": {}, "EvDLFTbaAH1HhfE5": {}}, "origin": "Steam", "reason": "TRKvCVzBdhquKi4z", "source": "PURCHASE"}' \
    > test.out 2>&1
eval_tap $? 340 'CreditUserWallet' test.out

#- 341 DebitByWalletPlatform
samples/cli/sample-apps Platform debitByWalletPlatform \
    --currencyCode 'icfGbqYKOXMv7sF8' \
    --namespace $AB_NAMESPACE \
    --userId 'fK98HFlkX0G2Kuvv' \
    --request '{"amount": 1, "debitBalanceSource": "IAP_REVOCATION", "metadata": {"AKyvtYyQxHGAfFK2": {}, "SE6Cs55uvw6QHAfb": {}, "762OIvYngZMTd7Ws": {}}, "reason": "tTaBrmbNUAdvcSTX", "walletPlatform": "Oculus"}' \
    > test.out 2>&1
eval_tap $? 341 'DebitByWalletPlatform' test.out

#- 342 PayWithUserWallet
samples/cli/sample-apps Platform payWithUserWallet \
    --currencyCode 'aC1UX9Uwusr3lGqp' \
    --namespace $AB_NAMESPACE \
    --userId 'LCB4w8Q8EkLjquWk' \
    --body '{"amount": 87, "metadata": {"hpCHyR6WjtgDLzXH": {}, "5rSFg8mBRYTrYTnz": {}, "ejXzC7KDSQda03ix": {}}, "walletPlatform": "Other"}' \
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
    --storeId 'nPGEIVpHVF7Dkd6d' \
    > test.out 2>&1
eval_tap $? 348 'ListViews' test.out

#- 349 CreateView
samples/cli/sample-apps Platform createView \
    --namespace $AB_NAMESPACE \
    --storeId 'AH8Fz2r7ybTs6o7p' \
    --body '{"displayOrder": 44, "localizations": {"cmQm2OMTNBMqk534": {"description": "pIQH1a4gtZb1DfWu", "localExt": {"tcE9D1b5vx5MAt52": {}, "8wfXLcA0WWvqH6Ty": {}, "nYvT4vY83RHNMWrN": {}}, "longDescription": "KE13qErK8ZPrAhBJ", "title": "k1twkN8YNaV3MRnP"}, "qY9hOFXIRiELd5ey": {"description": "hdMBwoJgxvVyX1qX", "localExt": {"xn8mQq3JvKD2Ycbo": {}, "qdwV3V5RIzKFIfiP": {}, "vC1AIUGcEIOYvmHv": {}}, "longDescription": "p3vCxwCIzIRRSvOb", "title": "7rjqhY2VU2e0ANek"}, "3iVnWNkE9E9dGR1T": {"description": "6AUueCtrxlkzjACm", "localExt": {"eAblqJMBd9QRuC5I": {}, "uP3qScX9L0DJVoFH": {}, "RWU6OgQ2tg3MlRjl": {}}, "longDescription": "R172Km4yBOxsBHZO", "title": "3rqFQhJH4wjmjzYS"}}, "name": "ubecqdIqeAGt1DQ9"}' \
    > test.out 2>&1
eval_tap $? 349 'CreateView' test.out

#- 350 GetView
samples/cli/sample-apps Platform getView \
    --namespace $AB_NAMESPACE \
    --viewId 'p6KEl9DonsjPZ2lw' \
    --storeId 'qcwrediIyXnuF2um' \
    > test.out 2>&1
eval_tap $? 350 'GetView' test.out

#- 351 UpdateView
samples/cli/sample-apps Platform updateView \
    --namespace $AB_NAMESPACE \
    --viewId 'zjAVoP6iNFpIhG3u' \
    --storeId 'XgwQaDuqmZO6DWVD' \
    --body '{"displayOrder": 58, "localizations": {"oQCXVzgV1FYyxtvc": {"description": "Jvy6tFgpcMZpRtsY", "localExt": {"7LG9HIpeKmjb2XxB": {}, "YzKVtP3jAXxQyTh1": {}, "XZbn2wIOvVZ4jw0c": {}}, "longDescription": "1wmTEszSV7fvXoBO", "title": "P2FRXAS2xjGmjIui"}, "iCKZ4Wo8ESVXf82o": {"description": "damps5yRW3ljIxZS", "localExt": {"xADRILM5sD0GBGH6": {}, "hJxzs8jXCNtJd6xB": {}, "JTANlNJNi9oBG2JY": {}}, "longDescription": "9gb5i1Hsl9L9GwQb", "title": "q8daggup5D56QAHZ"}, "UV4eZcsYITjYc3Dw": {"description": "H9pDcTEgEA2Fywft", "localExt": {"aGfHMC3AQSbkucQo": {}, "oofVRvkvZzp3JWiw": {}, "tF9o5AQz12iisdWy": {}}, "longDescription": "4w2binY2MXbOLtlF", "title": "DQqgZyw05jVPA0Xy"}}, "name": "I1jD8RV6SrjxQulM"}' \
    > test.out 2>&1
eval_tap $? 351 'UpdateView' test.out

#- 352 DeleteView
samples/cli/sample-apps Platform deleteView \
    --namespace $AB_NAMESPACE \
    --viewId 'ABqrWyZr9DNtLiiY' \
    --storeId 'FeoWTUbE1jeNnO3j' \
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
    --body '[{"creditRequest": {"amount": 19, "expireAt": "1990-04-13T00:00:00Z", "metadata": {"BeHzrh1Jj9JW00n5": {}, "I8sATm4k9VO6x3WE": {}, "KDbN5kcsehyIcYWg": {}}, "origin": "Xbox", "reason": "juXh1aPnfjtGhf50", "source": "SELL_BACK"}, "currencyCode": "oKHQ8nSUjgBpxBkS", "userIds": ["48upaj6hyragRnR5", "qrZV6ei1Ny4ijZmP", "FJxly1m9GhIjVVuF"]}, {"creditRequest": {"amount": 55, "expireAt": "1975-04-01T00:00:00Z", "metadata": {"lL6jdaVlnVBhtjyv": {}, "89Q3p6S6WlWparaH": {}, "zIVc8r3yMm8aSAjv": {}}, "origin": "Epic", "reason": "QuxlrUwPPjbbVjxb", "source": "DLC"}, "currencyCode": "pqHhrybjEIv8cYzQ", "userIds": ["n2fVJCYhlxDL9f4S", "mpGOkYyjfgIahVpn", "dnMJWScor32LPFtV"]}, {"creditRequest": {"amount": 98, "expireAt": "1987-09-09T00:00:00Z", "metadata": {"lhLv50wcOS0LccUu": {}, "UUmtucomqiLcd8Kc": {}, "BwZVtavE05xXR23p": {}}, "origin": "Steam", "reason": "AGTHX4U47vRrOx4b", "source": "REDEEM_CODE"}, "currencyCode": "cOeclzoCneZnupxm", "userIds": ["sRndcyvAX7h0p0Kb", "Zw9FcpWJ6YuBj5X3", "8k6mjKU3EtUXEFQ2"]}]' \
    > test.out 2>&1
eval_tap $? 356 'BulkCredit' test.out

#- 357 BulkDebit
samples/cli/sample-apps Platform bulkDebit \
    --namespace $AB_NAMESPACE \
    --body '[{"currencyCode": "tXFQbWKG14wjVsTw", "request": {"allowOverdraft": true, "amount": 43, "balanceOrigin": "Nintendo", "balanceSource": "DLC_REVOCATION", "metadata": {"C7884FfDp3JVbDey": {}, "fFOObYDtnswFdeih": {}, "PKh2M0p2Sv88havy": {}}, "reason": "5nA4smNtIALihcJd"}, "userIds": ["3GIejoCi7JC6BWpP", "SdNPlR3QF6hyUl45", "7f1xofOFlzPiWhzS"]}, {"currencyCode": "BnXemZWrfeyJLfKY", "request": {"allowOverdraft": true, "amount": 96, "balanceOrigin": "Xbox", "balanceSource": "IAP_REVOCATION", "metadata": {"WPEBMWmLnsYPVP9z": {}, "n6Pd5QFyGRVBzNIj": {}, "kjuLW9I2OsfODTjr": {}}, "reason": "xLm8l4Zpds1Llsim"}, "userIds": ["pabieLfnlf89bvCB", "A4VI397N7NhTVMBq", "y6wg3mbuWUIYm0Dt"]}, {"currencyCode": "2ylb8w846mEVXauI", "request": {"allowOverdraft": true, "amount": 79, "balanceOrigin": "Xbox", "balanceSource": "TRADE", "metadata": {"bVk5oHP8SNJSdrZm": {}, "YESMwWkoej2woMiv": {}, "gnFjduqZjRPx5zNF": {}}, "reason": "YUddCzBsxzW4EKq5"}, "userIds": ["fFZyJzH0niDVCkNq", "9M2WmPOWGSVkdJhg", "TzcmEjKKPV49DLZR"]}]' \
    > test.out 2>&1
eval_tap $? 357 'BulkDebit' test.out

#- 358 GetWallet
eval_tap 0 358 'GetWallet # SKIP deprecated' test.out

#- 359 SyncOrders
samples/cli/sample-apps Platform syncOrders \
    --nextEvaluatedKey 'qSRqVg341GEohLgt' \
    --end 'iQyPWc67Ac8rrvJU' \
    --start 'YW0KXyEGSha9UNwl' \
    > test.out 2>&1
eval_tap $? 359 'SyncOrders' test.out

#- 360 TestAdyenConfig
samples/cli/sample-apps Platform testAdyenConfig \
    --sandbox 'false' \
    --body '{"allowedPaymentMethods": ["Sor1BHjwWcpF4HoU", "BuVflA53fVrvdzst", "z0wLAvnV75opE53o"], "apiKey": "37Sqa7pdmMjtrIcC", "authoriseAsCapture": true, "blockedPaymentMethods": ["JZ39vKL1L5xjg7MS", "SFKJLDmDuusWIjiW", "sZpwiKKeu2T6rGS8"], "clientKey": "5aV01Y8iRyFIwgkC", "dropInSettings": "q9oFrSNFeP4eDvte", "liveEndpointUrlPrefix": "Hcq2R3tmpRyL6122", "merchantAccount": "jCybZpGUwOAKhFml", "notificationHmacKey": "8dh8WKHdXA4Xeh4M", "notificationPassword": "QpK3s5hD4eoac6aP", "notificationUsername": "OZ64lm9kHnZQl3qe", "returnUrl": "npthcjZBGiPpyO24", "settings": "cZ9wnMv2G1UpYgn7"}' \
    > test.out 2>&1
eval_tap $? 360 'TestAdyenConfig' test.out

#- 361 TestAliPayConfig
samples/cli/sample-apps Platform testAliPayConfig \
    --sandbox 'true' \
    --body '{"appId": "ZJrNHIQ9rA6AfXgA", "privateKey": "vEyUlkol8CBNMb0I", "publicKey": "VyiIAfoTQiz4HQmX", "returnUrl": "DZCWjz6jufVPOqv3"}' \
    > test.out 2>&1
eval_tap $? 361 'TestAliPayConfig' test.out

#- 362 TestCheckoutConfig
samples/cli/sample-apps Platform testCheckoutConfig \
    --sandbox 'false' \
    --body '{"publicKey": "GF8OWECvx6Fcdx1k", "secretKey": "rrRslClWN11ct5UU"}' \
    > test.out 2>&1
eval_tap $? 362 'TestCheckoutConfig' test.out

#- 363 DebugMatchedPaymentMerchantConfig
samples/cli/sample-apps Platform debugMatchedPaymentMerchantConfig \
    --namespace 'luNBm6qUYqfK3nfu' \
    --region 'tF69gUAq2OqTN25d' \
    > test.out 2>&1
eval_tap $? 363 'DebugMatchedPaymentMerchantConfig' test.out

#- 364 TestNeonPayConfig
samples/cli/sample-apps Platform testNeonPayConfig \
    --sandbox 'true' \
    --body '{"apiKey": "d1whCnKF26O0X2rt", "webhookSecretKey": "ZQ9HHQ8eScFmGzLB"}' \
    > test.out 2>&1
eval_tap $? 364 'TestNeonPayConfig' test.out

#- 365 TestPayPalConfig
samples/cli/sample-apps Platform testPayPalConfig \
    --sandbox 'true' \
    --body '{"clientID": "Wi2kZte5I1lloLZK", "clientSecret": "iYRE1aRFCbwRj5s8", "returnUrl": "MoGTMwRTNYsgshZY", "webHookId": "C40vYa8h9krQpZjy"}' \
    > test.out 2>&1
eval_tap $? 365 'TestPayPalConfig' test.out

#- 366 TestStripeConfig
samples/cli/sample-apps Platform testStripeConfig \
    --sandbox 'false' \
    --body '{"allowedPaymentMethodTypes": ["6OuwL0ySrGqY4FGw", "oBVd9Udapy1WYx9B", "DCEJQsHchxdlKMnt"], "publishableKey": "jeudrCQHxsHtn0zQ", "secretKey": "3b2IqiojoRApZsVc", "webhookSecret": "k23rXNKp5RnRusO8"}' \
    > test.out 2>&1
eval_tap $? 366 'TestStripeConfig' test.out

#- 367 TestWxPayConfig
samples/cli/sample-apps Platform testWxPayConfig \
    --body '{"appId": "qSRDmuBFnbA2mIpq", "key": "BgWSoDkYTlpWY6o2", "mchid": "DA248wiOe5hg7s5A", "returnUrl": "nntLAf7pHtjh0hSn"}' \
    > test.out 2>&1
eval_tap $? 367 'TestWxPayConfig' test.out

#- 368 TestXsollaConfig
samples/cli/sample-apps Platform testXsollaConfig \
    --body '{"apiKey": "c6XPV7Blb8FGqzzm", "flowCompletionUrl": "7C279HVl0p7rGMOT", "merchantId": 60, "projectId": 47, "projectSecretKey": "trEQaMMZYrA86xcd"}' \
    > test.out 2>&1
eval_tap $? 368 'TestXsollaConfig' test.out

#- 369 GetPaymentMerchantConfig1
samples/cli/sample-apps Platform getPaymentMerchantConfig1 \
    --id 'RvPihqpTaAs4vN0o' \
    > test.out 2>&1
eval_tap $? 369 'GetPaymentMerchantConfig1' test.out

#- 370 UpdateAdyenConfig
samples/cli/sample-apps Platform updateAdyenConfig \
    --id 'EGM3eswNTkasmqI9' \
    --sandbox 'false' \
    --validate 'false' \
    --body '{"allowedPaymentMethods": ["bfSzCQTCPOHmapQm", "BruraigVI8CYESOw", "HUCKS9sn3kJMKlhi"], "apiKey": "uEVTyr5H93TrT865", "authoriseAsCapture": false, "blockedPaymentMethods": ["mlYS8nbk3yFonRnK", "suIoANmvXmN2sQNp", "6HswDNKLdUsKVx0P"], "clientKey": "fN38DMCeT8Dj5BmR", "dropInSettings": "OZwnNw1v4ynLjm7T", "liveEndpointUrlPrefix": "DieMMXl3xWCdiSsG", "merchantAccount": "ImU9ARGNdn771fpX", "notificationHmacKey": "MFPkDBQSeetLd3cw", "notificationPassword": "FcofJeDhd63mIraD", "notificationUsername": "iDqTosf3OSIldFrN", "returnUrl": "27MJt2lz5yMV14v2", "settings": "eyxZT0plfSF5Q9MS"}' \
    > test.out 2>&1
eval_tap $? 370 'UpdateAdyenConfig' test.out

#- 371 TestAdyenConfigById
samples/cli/sample-apps Platform testAdyenConfigById \
    --id 's2NjjKal4xaDJRtJ' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 371 'TestAdyenConfigById' test.out

#- 372 UpdateAliPayConfig
samples/cli/sample-apps Platform updateAliPayConfig \
    --id 'saa6wJ2My5oZegyZ' \
    --sandbox 'true' \
    --validate 'true' \
    --body '{"appId": "nfBMiZR9DTLxLOc3", "privateKey": "STfGrhSHxz859uws", "publicKey": "itHzXkNWNZjqfCeD", "returnUrl": "lojcDw3jUw7uBI5Y"}' \
    > test.out 2>&1
eval_tap $? 372 'UpdateAliPayConfig' test.out

#- 373 TestAliPayConfigById
samples/cli/sample-apps Platform testAliPayConfigById \
    --id 'kDSnXfN3XQDX2Fbr' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 373 'TestAliPayConfigById' test.out

#- 374 UpdateCheckoutConfig
samples/cli/sample-apps Platform updateCheckoutConfig \
    --id 'vt123VOoxqANQDwq' \
    --sandbox 'true' \
    --validate 'true' \
    --body '{"publicKey": "TxDL52h1AjoxzV6F", "secretKey": "njXwtZiujW6VmZgj"}' \
    > test.out 2>&1
eval_tap $? 374 'UpdateCheckoutConfig' test.out

#- 375 TestCheckoutConfigById
samples/cli/sample-apps Platform testCheckoutConfigById \
    --id 'Zt4Np3fqaK4A2shD' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 375 'TestCheckoutConfigById' test.out

#- 376 UpdateNeonPayConfig
samples/cli/sample-apps Platform updateNeonPayConfig \
    --id 'G8XoXESs2JthtMLu' \
    --sandbox 'true' \
    --validate 'false' \
    --body '{"apiKey": "pcuBGzfbpjmml8v4", "webhookSecretKey": "9WceJpbN4I27soz5"}' \
    > test.out 2>&1
eval_tap $? 376 'UpdateNeonPayConfig' test.out

#- 377 TestNeonPayConfigById
samples/cli/sample-apps Platform testNeonPayConfigById \
    --id 'jc5VWqQyfIXkzefl' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 377 'TestNeonPayConfigById' test.out

#- 378 UpdatePayPalConfig
samples/cli/sample-apps Platform updatePayPalConfig \
    --id 'uMKq1mm6k93Knuj5' \
    --sandbox 'true' \
    --validate 'false' \
    --body '{"clientID": "PxD5AFAxCUFwgHyf", "clientSecret": "Y9m3YijDbynW0wGO", "returnUrl": "UdOYWafgSAW0sU4A", "webHookId": "MYYeww6u8kCNLbIo"}' \
    > test.out 2>&1
eval_tap $? 378 'UpdatePayPalConfig' test.out

#- 379 TestPayPalConfigById
samples/cli/sample-apps Platform testPayPalConfigById \
    --id 'pnltOMPd1XlxMFPr' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 379 'TestPayPalConfigById' test.out

#- 380 UpdateStripeConfig
samples/cli/sample-apps Platform updateStripeConfig \
    --id '18ZcyVabrhkJBCKv' \
    --sandbox 'true' \
    --validate 'true' \
    --body '{"allowedPaymentMethodTypes": ["wTBQpNBXoopCa7ws", "Du7aiQeow5d1cwKu", "lPlLEO52jRBgedSz"], "publishableKey": "tnh4Y1M9BBS0xpL7", "secretKey": "g7EU4H0bFc1ShA1J", "webhookSecret": "kuIBPyPwS6aaOsyD"}' \
    > test.out 2>&1
eval_tap $? 380 'UpdateStripeConfig' test.out

#- 381 TestStripeConfigById
samples/cli/sample-apps Platform testStripeConfigById \
    --id 'nFWiebRuQTf8bJFN' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 381 'TestStripeConfigById' test.out

#- 382 UpdateWxPayConfig
samples/cli/sample-apps Platform updateWxPayConfig \
    --id 'dLV1ql16JvMiHJNE' \
    --validate 'false' \
    --body '{"appId": "c96lx9EghKRZC4eQ", "key": "u0j6CBshBjSvF7oj", "mchid": "5OWoNg3hD69qpOaz", "returnUrl": "C1wfvJnwBdK9rBN7"}' \
    > test.out 2>&1
eval_tap $? 382 'UpdateWxPayConfig' test.out

#- 383 UpdateWxPayConfigCert
samples/cli/sample-apps Platform updateWxPayConfigCert \
    --id 'ybZMFQ7otsZqUQOe' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 383 'UpdateWxPayConfigCert' test.out

#- 384 TestWxPayConfigById
samples/cli/sample-apps Platform testWxPayConfigById \
    --id 'HApdxElxoHY9QHP0' \
    > test.out 2>&1
eval_tap $? 384 'TestWxPayConfigById' test.out

#- 385 UpdateXsollaConfig
samples/cli/sample-apps Platform updateXsollaConfig \
    --id 'K9dRDwbvn9zPNwqj' \
    --validate 'true' \
    --body '{"apiKey": "7hT9r6N1SXf5hiwL", "flowCompletionUrl": "JEc28JKUl6VuGi94", "merchantId": 21, "projectId": 48, "projectSecretKey": "UIduOk4AmHilaAPQ"}' \
    > test.out 2>&1
eval_tap $? 385 'UpdateXsollaConfig' test.out

#- 386 TestXsollaConfigById
samples/cli/sample-apps Platform testXsollaConfigById \
    --id 'Wq5QdZWLTOsGT66m' \
    > test.out 2>&1
eval_tap $? 386 'TestXsollaConfigById' test.out

#- 387 UpdateXsollaUIConfig
samples/cli/sample-apps Platform updateXsollaUIConfig \
    --id 'QgDXbm1048B8nkao' \
    --body '{"device": "MOBILE", "showCloseButton": true, "size": "SMALL", "theme": "DEFAULT_DARK"}' \
    > test.out 2>&1
eval_tap $? 387 'UpdateXsollaUIConfig' test.out

#- 388 QueryPaymentProviderConfig
samples/cli/sample-apps Platform queryPaymentProviderConfig \
    --limit '21' \
    --namespace 'D83uRK623nL75kwA' \
    --offset '97' \
    --region 'a4wtm2iyBP3CfdMJ' \
    > test.out 2>&1
eval_tap $? 388 'QueryPaymentProviderConfig' test.out

#- 389 CreatePaymentProviderConfig
samples/cli/sample-apps Platform createPaymentProviderConfig \
    --body '{"aggregate": "XSOLLA", "namespace": "Y1msTXFOKlstvMGN", "region": "aFA82m1bfnBakn56", "sandboxTaxJarApiToken": "0KgZk7QTx93uWj3P", "specials": ["STRIPE", "XSOLLA", "XSOLLA"], "taxJarApiToken": "DWqp7RpxG1FT6gXz", "taxJarEnabled": true, "useGlobalTaxJarApiToken": false}' \
    > test.out 2>&1
eval_tap $? 389 'CreatePaymentProviderConfig' test.out

#- 390 GetAggregatePaymentProviders
samples/cli/sample-apps Platform getAggregatePaymentProviders \
    > test.out 2>&1
eval_tap $? 390 'GetAggregatePaymentProviders' test.out

#- 391 DebugMatchedPaymentProviderConfig
samples/cli/sample-apps Platform debugMatchedPaymentProviderConfig \
    --namespace 'oxF5XakU7vN7pWbR' \
    --region 'uCRFfA0BqIt5cv4R' \
    > test.out 2>&1
eval_tap $? 391 'DebugMatchedPaymentProviderConfig' test.out

#- 392 GetSpecialPaymentProviders
samples/cli/sample-apps Platform getSpecialPaymentProviders \
    > test.out 2>&1
eval_tap $? 392 'GetSpecialPaymentProviders' test.out

#- 393 UpdatePaymentProviderConfig
samples/cli/sample-apps Platform updatePaymentProviderConfig \
    --id 'r2NEUUvOGhYd13Az' \
    --body '{"aggregate": "NEONPAY", "namespace": "3NygGSQ3WlRRDcYk", "region": "8dVrYeoEG6KHPlFN", "sandboxTaxJarApiToken": "2WAQzhW6mHQHs2kx", "specials": ["ALIPAY", "NEONPAY", "STRIPE"], "taxJarApiToken": "RNcELx0EvzvVbofn", "taxJarEnabled": false, "useGlobalTaxJarApiToken": true}' \
    > test.out 2>&1
eval_tap $? 393 'UpdatePaymentProviderConfig' test.out

#- 394 DeletePaymentProviderConfig
samples/cli/sample-apps Platform deletePaymentProviderConfig \
    --id 'ESSpENKslZlov5ST' \
    > test.out 2>&1
eval_tap $? 394 'DeletePaymentProviderConfig' test.out

#- 395 GetPaymentTaxConfig
samples/cli/sample-apps Platform getPaymentTaxConfig \
    > test.out 2>&1
eval_tap $? 395 'GetPaymentTaxConfig' test.out

#- 396 UpdatePaymentTaxConfig
samples/cli/sample-apps Platform updatePaymentTaxConfig \
    --body '{"sandboxTaxJarApiToken": "ovq0lizsmMTGQu9B", "taxJarApiToken": "O7YzvCdExHehCPq8", "taxJarEnabled": false, "taxJarProductCodesMapping": {"uthb8eukkoB18p7b": "AOuXYEaFDIj4NjnP", "FhR0pvMXs94gUXXw": "xBTDjuv0csGThbzR", "K8bNlNSTASHoqBZj": "CIsD3ZxqyShObs4h"}}' \
    > test.out 2>&1
eval_tap $? 396 'UpdatePaymentTaxConfig' test.out

#- 397 SyncPaymentOrders
samples/cli/sample-apps Platform syncPaymentOrders \
    --nextEvaluatedKey '8AW1igc7lk67nfFq' \
    --end 'HfuKI5CWauNLdRbU' \
    --start '8p5HRCvCsQX9Qd2H' \
    > test.out 2>&1
eval_tap $? 397 'SyncPaymentOrders' test.out

#- 398 PublicGetRootCategories
samples/cli/sample-apps Platform publicGetRootCategories \
    --namespace $AB_NAMESPACE \
    --language '7vqkkD6qIzcz5phx' \
    --storeId 'epkaa2PUhupaD9Rf' \
    > test.out 2>&1
eval_tap $? 398 'PublicGetRootCategories' test.out

#- 399 DownloadCategories
samples/cli/sample-apps Platform downloadCategories \
    --namespace $AB_NAMESPACE \
    --language 'nqH35HZm4krZEC1l' \
    --storeId 'ormK8pc1G5KdZ1DV' \
    > test.out 2>&1
eval_tap $? 399 'DownloadCategories' test.out

#- 400 PublicGetCategory
samples/cli/sample-apps Platform publicGetCategory \
    --categoryPath 'Hjh8hWmOF0VQqX9d' \
    --namespace $AB_NAMESPACE \
    --language 's0YmHyyu2DGuzRND' \
    --storeId 'zJn9eB6XGuyXcEco' \
    > test.out 2>&1
eval_tap $? 400 'PublicGetCategory' test.out

#- 401 PublicGetChildCategories
samples/cli/sample-apps Platform publicGetChildCategories \
    --categoryPath 'R8c0FkN83LgveEmk' \
    --namespace $AB_NAMESPACE \
    --language '81GAKpnTVJd0H22o' \
    --storeId 'FLsocCgfwU8WjJzz' \
    > test.out 2>&1
eval_tap $? 401 'PublicGetChildCategories' test.out

#- 402 PublicGetDescendantCategories
samples/cli/sample-apps Platform publicGetDescendantCategories \
    --categoryPath 'UbT4zJIWsGh1Msbm' \
    --namespace $AB_NAMESPACE \
    --language '0rqdNIG7FKH3E5C6' \
    --storeId '5KzRUfOYxDpx8BW6' \
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
    --dlcType 'STEAM' \
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
    --language 'YcyN8N7k0rjGeNC3' \
    --region 'OtrDvHSwiUkSJsrt' \
    --storeId 'LvYvBi9UK6ev4daX' \
    --appId '3Jy0hypwWkvh03CO' \
    > test.out 2>&1
eval_tap $? 407 'PublicGetItemByAppId' test.out

#- 408 PublicQueryItems
samples/cli/sample-apps Platform publicQueryItems \
    --namespace $AB_NAMESPACE \
    --appType 'DLC' \
    --autoCalcEstimatedPrice 'true' \
    --baseAppId 'HLP0MDtwoyqWQS6f' \
    --categoryPath 'pwLdGflslJhsup0I' \
    --features '2v2HdKogOUz9b2Gi' \
    --includeSubCategoryItem 'true' \
    --itemType 'BUNDLE' \
    --language 'R2mnPSgJpEReFOhp' \
    --limit '4' \
    --offset '74' \
    --region 'bqxNTonSozUTc1oh' \
    --sortBy '["displayOrder:asc", "updatedAt:desc"]' \
    --storeId 'kixYojsuLYrRC9BI' \
    --tags 'vynnUtwoyTFv7eyq' \
    > test.out 2>&1
eval_tap $? 408 'PublicQueryItems' test.out

#- 409 PublicGetItemBySku
samples/cli/sample-apps Platform publicGetItemBySku \
    --namespace $AB_NAMESPACE \
    --autoCalcEstimatedPrice 'true' \
    --language 'IfarvQ5FA3Ouk2Pv' \
    --region 'xDcwj3jOkzg8wVu0' \
    --storeId 'Ok9RfS4YPVxGlhxn' \
    --sku 'l2PZ8J2GIvEiE99t' \
    > test.out 2>&1
eval_tap $? 409 'PublicGetItemBySku' test.out

#- 410 PublicGetEstimatedPrice
samples/cli/sample-apps Platform publicGetEstimatedPrice \
    --namespace $AB_NAMESPACE \
    --region 'tqefNpkwyGsnLG0w' \
    --storeId 'KMWz4fWGMA6nRfbl' \
    --itemIds 'EKc8GweGqy2fFKAj' \
    > test.out 2>&1
eval_tap $? 410 'PublicGetEstimatedPrice' test.out

#- 411 PublicBulkGetItems
samples/cli/sample-apps Platform publicBulkGetItems \
    --namespace $AB_NAMESPACE \
    --autoCalcEstimatedPrice 'true' \
    --language 'CI8P4MjWFmR4CzEW' \
    --region '4Zv9X7mZH9SnEslj' \
    --storeId 'FzqRr13Gg5O26Mvq' \
    --itemIds 's8rjyifW5LjNTQz8' \
    > test.out 2>&1
eval_tap $? 411 'PublicBulkGetItems' test.out

#- 412 PublicValidateItemPurchaseCondition
samples/cli/sample-apps Platform publicValidateItemPurchaseCondition \
    --namespace $AB_NAMESPACE \
    --body '{"itemIds": ["618fW6hMYCCnC0Ps", "m9JPPZTD014OOJDo", "TyB5pnl5AcAIOAqH"]}' \
    > test.out 2>&1
eval_tap $? 412 'PublicValidateItemPurchaseCondition' test.out

#- 413 PublicSearchItems
samples/cli/sample-apps Platform publicSearchItems \
    --namespace $AB_NAMESPACE \
    --autoCalcEstimatedPrice 'true' \
    --itemType 'CODE' \
    --limit '66' \
    --offset '28' \
    --region 'yK23KZxwcVUVEzaF' \
    --storeId 'Cd2Y6pY6ABbxwmKB' \
    --keyword 'SgDGaq4eCUQgxjl8' \
    --language 'YaIcYozkZwtuOx73' \
    > test.out 2>&1
eval_tap $? 413 'PublicSearchItems' test.out

#- 414 PublicGetApp
samples/cli/sample-apps Platform publicGetApp \
    --itemId 'aMhynlJMqB5HNijs' \
    --namespace $AB_NAMESPACE \
    --language 'XrZvqIh531dgsOOK' \
    --region '6J16CSxoJEy4vUNb' \
    --storeId '8Alu6ZEKOL4frdTK' \
    > test.out 2>&1
eval_tap $? 414 'PublicGetApp' test.out

#- 415 PublicGetItemDynamicData
samples/cli/sample-apps Platform publicGetItemDynamicData \
    --itemId 'FylpTGp2BDCA6KZE' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 415 'PublicGetItemDynamicData' test.out

#- 416 PublicGetItem
samples/cli/sample-apps Platform publicGetItem \
    --itemId 'EqLZSOCv5s19FQLw' \
    --namespace $AB_NAMESPACE \
    --autoCalcEstimatedPrice 'false' \
    --language '8LSmGOvLsZDb3Vad' \
    --populateBundle 'false' \
    --region 'GoXOxQXZwLUHLuel' \
    --storeId 'j815OkXxmFcrAxpX' \
    > test.out 2>&1
eval_tap $? 416 'PublicGetItem' test.out

#- 417 GetPaymentCustomization
eval_tap 0 417 'GetPaymentCustomization # SKIP deprecated' test.out

#- 418 PublicGetPaymentUrl
samples/cli/sample-apps Platform publicGetPaymentUrl \
    --namespace $AB_NAMESPACE \
    --body '{"neonPayConfig": {"cancelUrl": "DvsibKqhaT9klDrF", "successUrl": "ey1V90FKXMHW69gr"}, "paymentOrderNo": "KE5ZM3dWAZQUquoY", "paymentProvider": "STRIPE", "returnUrl": "LP5CAdXLKKcSj1LV", "ui": "bOCEDjydLtVSykrG", "zipCode": "37fLcVNDkZQPVBtj"}' \
    > test.out 2>&1
eval_tap $? 418 'PublicGetPaymentUrl' test.out

#- 419 PublicGetPaymentMethods
samples/cli/sample-apps Platform publicGetPaymentMethods \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'U0E2bDXAakbfWeOS' \
    > test.out 2>&1
eval_tap $? 419 'PublicGetPaymentMethods' test.out

#- 420 PublicGetUnpaidPaymentOrder
samples/cli/sample-apps Platform publicGetUnpaidPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'woP9jmX68K7T1pCb' \
    > test.out 2>&1
eval_tap $? 420 'PublicGetUnpaidPaymentOrder' test.out

#- 421 Pay
samples/cli/sample-apps Platform pay \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'sSMUGoWIeH5A8DNg' \
    --paymentProvider 'STRIPE' \
    --zipCode 'pecn7ldUv6YWIiBl' \
    --body '{"token": "Xm3P9MDZGxlC5dNg"}' \
    > test.out 2>&1
eval_tap $? 421 'Pay' test.out

#- 422 PublicCheckPaymentOrderPaidStatus
samples/cli/sample-apps Platform publicCheckPaymentOrderPaidStatus \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'OfNJCf9Xaap4WLmh' \
    > test.out 2>&1
eval_tap $? 422 'PublicCheckPaymentOrderPaidStatus' test.out

#- 423 GetPaymentPublicConfig
samples/cli/sample-apps Platform getPaymentPublicConfig \
    --namespace $AB_NAMESPACE \
    --sandbox 'true' \
    --paymentProvider 'NEONPAY' \
    --region 'GfT6ty4bDKCn7G7r' \
    > test.out 2>&1
eval_tap $? 423 'GetPaymentPublicConfig' test.out

#- 424 PublicGetQRCode
samples/cli/sample-apps Platform publicGetQRCode \
    --namespace $AB_NAMESPACE \
    --code 'JayY5pMTYTXSDq1e' \
    > test.out 2>&1
eval_tap $? 424 'PublicGetQRCode' test.out

#- 425 PublicNormalizePaymentReturnUrl
samples/cli/sample-apps Platform publicNormalizePaymentReturnUrl \
    --namespace $AB_NAMESPACE \
    --payerID 'rKjHFsO49BSGtYl9' \
    --foreinginvoice 'Favyqf4CCRdlldJW' \
    --invoiceId 'B44tZr4QZV5bwrRu' \
    --payload 'HYJlGxwdrTqCwSE0' \
    --redirectResult 'EsAvciuVIZrE0cgn' \
    --resultCode 'LbQsmFiJmU4NS6Ol' \
    --sessionId 'ZXdfLVz2spRYdVfu' \
    --status 'QvzA4nskdllacYzY' \
    --token 'lMa7Q5KTPGxTJXUy' \
    --type 'BYnkTL9LSMFnFFza' \
    --userId 'Uete6qdv5itbKok4' \
    --orderNo 'KqiPZc0aNI9obKqV' \
    --paymentOrderNo 'TvupSVyCtuamHJsb' \
    --paymentProvider 'NEONPAY' \
    --returnUrl 'BZYwgWgdTvjXrOsP' \
    > test.out 2>&1
eval_tap $? 425 'PublicNormalizePaymentReturnUrl' test.out

#- 426 GetPaymentTaxValue
samples/cli/sample-apps Platform getPaymentTaxValue \
    --namespace $AB_NAMESPACE \
    --zipCode 'GkKipSgsw250bNw2' \
    --paymentOrderNo 'lXICRHRvBxvtqVCy' \
    --paymentProvider 'NEONPAY' \
    > test.out 2>&1
eval_tap $? 426 'GetPaymentTaxValue' test.out

#- 427 GetRewardByCode
samples/cli/sample-apps Platform getRewardByCode \
    --namespace $AB_NAMESPACE \
    --rewardCode 'Ig0q8sSvLGi0mVZf' \
    > test.out 2>&1
eval_tap $? 427 'GetRewardByCode' test.out

#- 428 QueryRewards1
samples/cli/sample-apps Platform queryRewards1 \
    --namespace $AB_NAMESPACE \
    --eventTopic 'YPqWAVvVyUtqFiH9' \
    --limit '100' \
    --offset '44' \
    --sortBy '["namespace:asc", "rewardCode:asc"]' \
    > test.out 2>&1
eval_tap $? 428 'QueryRewards1' test.out

#- 429 GetReward1
samples/cli/sample-apps Platform getReward1 \
    --namespace $AB_NAMESPACE \
    --rewardId '4nPf9A6ioWJlt9ME' \
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
    --appIds '["Oemt9NmbTzmDUbH4", "XXBorsCO4l19KlCE", "UNB2bfWawCDDxgXG"]' \
    --itemIds '["X9DGcFoMfVgCcnbN", "iGCwQHGrv8zhQv4t", "kIyNPEyu1NdzQLqm"]' \
    --skus '["0ZQz0HcOieydtdbG", "sJhNSU3lwVlXi9SP", "ynKQKE6h1vNE3n6Q"]' \
    > test.out 2>&1
eval_tap $? 431 'PublicExistsAnyMyActiveEntitlement' test.out

#- 432 PublicGetMyAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform publicGetMyAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --appId 'BXKU41BqS6K8Uzy9' \
    > test.out 2>&1
eval_tap $? 432 'PublicGetMyAppEntitlementOwnershipByAppId' test.out

#- 433 PublicGetMyEntitlementOwnershipByItemId
samples/cli/sample-apps Platform publicGetMyEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --entitlementClazz 'CODE' \
    --itemId 'SORHpwPZB59pediy' \
    > test.out 2>&1
eval_tap $? 433 'PublicGetMyEntitlementOwnershipByItemId' test.out

#- 434 PublicGetMyEntitlementOwnershipBySku
samples/cli/sample-apps Platform publicGetMyEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --entitlementClazz 'ENTITLEMENT' \
    --sku '5X87dd6RMWM5wJUG' \
    > test.out 2>&1
eval_tap $? 434 'PublicGetMyEntitlementOwnershipBySku' test.out

#- 435 PublicGetEntitlementOwnershipToken
samples/cli/sample-apps Platform publicGetEntitlementOwnershipToken \
    --namespace $AB_NAMESPACE \
    --appIds '["BwSsLgAZPmqAU0XQ", "MhfavNYpmqqnC5rl", "dN8276q8uqKo7FWf"]' \
    --itemIds '["h9QdSjEsC0EgbuaH", "pbrFXta5NU0HJMOQ", "Xcl5lqdAM7m1iRLQ"]' \
    --skus '["7YkNzIC8A3akBGtd", "fs9ECnWFwQAX79a3", "3a6VSnyyMNt0w1B4"]' \
    > test.out 2>&1
eval_tap $? 435 'PublicGetEntitlementOwnershipToken' test.out

#- 436 SyncTwitchDropsEntitlement
samples/cli/sample-apps Platform syncTwitchDropsEntitlement \
    --namespace $AB_NAMESPACE \
    --body '{"gameId": "ZHBd39KEJWNcmFM8", "language": "ASU_XoDd", "region": "6ncDXUoWJi1rLuni"}' \
    > test.out 2>&1
eval_tap $? 436 'SyncTwitchDropsEntitlement' test.out

#- 437 PublicGetMyWallet
samples/cli/sample-apps Platform publicGetMyWallet \
    --currencyCode 'iOBttRDsryQj6TdS' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 437 'PublicGetMyWallet' test.out

#- 438 SyncEpicGameDLC
samples/cli/sample-apps Platform syncEpicGameDLC \
    --namespace $AB_NAMESPACE \
    --userId 'KmABjzroV1xzyclK' \
    --body '{"epicGamesJwtToken": "n0pxUOburZg0fdrB"}' \
    > test.out 2>&1
eval_tap $? 438 'SyncEpicGameDLC' test.out

#- 439 SyncOculusDLC
samples/cli/sample-apps Platform syncOculusDLC \
    --namespace $AB_NAMESPACE \
    --userId 'dEh5ZjoDdG1ewNDM' \
    > test.out 2>&1
eval_tap $? 439 'SyncOculusDLC' test.out

#- 440 PublicSyncPsnDlcInventory
samples/cli/sample-apps Platform publicSyncPsnDlcInventory \
    --namespace $AB_NAMESPACE \
    --userId 'kKPQK13fL1qQWomg' \
    --body '{"serviceLabel": 99}' \
    > test.out 2>&1
eval_tap $? 440 'PublicSyncPsnDlcInventory' test.out

#- 441 PublicSyncPsnDlcInventoryWithMultipleServiceLabels
samples/cli/sample-apps Platform publicSyncPsnDlcInventoryWithMultipleServiceLabels \
    --namespace $AB_NAMESPACE \
    --userId '64jwb8M8PWuYsgHH' \
    --body '{"serviceLabels": [65, 36, 94]}' \
    > test.out 2>&1
eval_tap $? 441 'PublicSyncPsnDlcInventoryWithMultipleServiceLabels' test.out

#- 442 SyncSteamDLC
samples/cli/sample-apps Platform syncSteamDLC \
    --namespace $AB_NAMESPACE \
    --userId 'J8jVs9vsrnbdhxNm' \
    --body '{"appId": "ppuhk7GBDqf18m3p", "steamId": "3xwAi3LZk5uLPu5Y"}' \
    > test.out 2>&1
eval_tap $? 442 'SyncSteamDLC' test.out

#- 443 SyncXboxDLC
samples/cli/sample-apps Platform syncXboxDLC \
    --namespace $AB_NAMESPACE \
    --userId '82iekWGWtot0KVKt' \
    --body '{"xstsToken": "YkXOjNNUuWSAPmUf"}' \
    > test.out 2>&1
eval_tap $? 443 'SyncXboxDLC' test.out

#- 444 PublicQueryUserEntitlements
samples/cli/sample-apps Platform publicQueryUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'AOcJu7tY6vv3FeT5' \
    --appType 'GAME' \
    --entitlementClazz 'APP' \
    --entitlementName 'ADYz2XDyqx2SUd2Q' \
    --features '["OqtfQefQ28T0aN82", "WaxvG1VibTrlvbuq", "Ltj7Nb0fAqAQj9sr"]' \
    --itemId '["ZKFEPBRq4WG7U330", "Cu3ZKzLTpShlrZk3", "NII3Kt8AOrTkCNTc"]' \
    --limit '96' \
    --offset '60' \
    > test.out 2>&1
eval_tap $? 444 'PublicQueryUserEntitlements' test.out

#- 445 PublicGetUserAppEntitlementByAppId
samples/cli/sample-apps Platform publicGetUserAppEntitlementByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'KHHo3AZnuMpeWZmh' \
    --appId 'PVjEPQpDoXHmUIHI' \
    > test.out 2>&1
eval_tap $? 445 'PublicGetUserAppEntitlementByAppId' test.out

#- 446 PublicQueryUserEntitlementsByAppType
samples/cli/sample-apps Platform publicQueryUserEntitlementsByAppType \
    --namespace $AB_NAMESPACE \
    --userId 'kRMcOo7GHKev8sip' \
    --limit '18' \
    --offset '70' \
    --appType 'DLC' \
    > test.out 2>&1
eval_tap $? 446 'PublicQueryUserEntitlementsByAppType' test.out

#- 447 PublicGetUserEntitlementsByIds
samples/cli/sample-apps Platform publicGetUserEntitlementsByIds \
    --namespace $AB_NAMESPACE \
    --userId 'w3LQmEXsd3xS0sln' \
    --availablePlatformOnly 'false' \
    --ids '["0RnZaJmCuZZwcq5i", "qB70N2nblOWEvarB", "Tuw1MXir0bch9Kxz"]' \
    > test.out 2>&1
eval_tap $? 447 'PublicGetUserEntitlementsByIds' test.out

#- 448 PublicGetUserEntitlementByItemId
eval_tap 0 448 'PublicGetUserEntitlementByItemId # SKIP deprecated' test.out

#- 449 PublicGetUserEntitlementBySku
eval_tap 0 449 'PublicGetUserEntitlementBySku # SKIP deprecated' test.out

#- 450 PublicUserEntitlementHistory
samples/cli/sample-apps Platform publicUserEntitlementHistory \
    --namespace $AB_NAMESPACE \
    --userId 'p60hARFaaNPHgHWo' \
    --endDate 'cdPQOmYkNiECTfFv' \
    --entitlementClazz 'LOOTBOX' \
    --limit '52' \
    --offset '43' \
    --startDate 'XdtAnpckOvvccJgK' \
    > test.out 2>&1
eval_tap $? 450 'PublicUserEntitlementHistory' test.out

#- 451 PublicExistsAnyUserActiveEntitlement
samples/cli/sample-apps Platform publicExistsAnyUserActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'gQD3yGGUuXFkOXKr' \
    --appIds '["qzikGTkadVDyEUnN", "TUYXTgff2ZcV7qu0", "3DWq0C1N4l9YDngX"]' \
    --itemIds '["cHrbl9tir32Zj1p6", "rJ7RnrkFs21YOib3", "NcExpPWjPfmHvXft"]' \
    --skus '["RRhPSkvBbz0IKcz9", "B3n7rzJcBKB31L2I", "2eFOXQuGyVAYKAjf"]' \
    > test.out 2>&1
eval_tap $? 451 'PublicExistsAnyUserActiveEntitlement' test.out

#- 452 PublicGetUserAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform publicGetUserAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'er1tFj2FCY9LXgXh' \
    --appId 'noDBJufKSLenF48B' \
    > test.out 2>&1
eval_tap $? 452 'PublicGetUserAppEntitlementOwnershipByAppId' test.out

#- 453 PublicGetUserEntitlementOwnershipByItemId
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'lygc8uTD1qkgs9zx' \
    --entitlementClazz 'SUBSCRIPTION' \
    --itemId 'YdwbOASqfDqlleyf' \
    > test.out 2>&1
eval_tap $? 453 'PublicGetUserEntitlementOwnershipByItemId' test.out

#- 454 PublicGetUserEntitlementOwnershipByItemIds
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'NrHRT4KHJePj3adq' \
    --ids '["RG6S86qWG4S0ODWB", "UmPdKK7vMLjGQCl2", "o0T6OqJIdcPTljVP"]' \
    > test.out 2>&1
eval_tap $? 454 'PublicGetUserEntitlementOwnershipByItemIds' test.out

#- 455 PublicGetUserEntitlementOwnershipBySku
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --userId 'P7fbzACoTapQ1Bll' \
    --entitlementClazz 'APP' \
    --sku 'bPr9KJdObqjKaPFj' \
    > test.out 2>&1
eval_tap $? 455 'PublicGetUserEntitlementOwnershipBySku' test.out

#- 456 PublicGetUserEntitlement
samples/cli/sample-apps Platform publicGetUserEntitlement \
    --entitlementId 'GRwJ9xsXT7yLYwcU' \
    --namespace $AB_NAMESPACE \
    --userId '1lRUxi1fgp4G9tlu' \
    > test.out 2>&1
eval_tap $? 456 'PublicGetUserEntitlement' test.out

#- 457 PublicConsumeUserEntitlement
samples/cli/sample-apps Platform publicConsumeUserEntitlement \
    --entitlementId 'VBg15DWrV3VgMYjG' \
    --namespace $AB_NAMESPACE \
    --userId 'U7A5xYVNexDaT4gg' \
    --body '{"metadata": {"operationSource": "INVENTORY"}, "options": ["l4NdQGGNf8u4Lns2", "Gn6Q6HURQAnzsJy1", "yRn6lIHfwy46uQWU"], "requestId": "utwCoDAqAPaRgwQL", "useCount": 80}' \
    > test.out 2>&1
eval_tap $? 457 'PublicConsumeUserEntitlement' test.out

#- 458 PublicSellUserEntitlement
samples/cli/sample-apps Platform publicSellUserEntitlement \
    --entitlementId 'd17dBrtA5icDc5Yp' \
    --namespace $AB_NAMESPACE \
    --userId 'sdgkHIM4xKWEAnRW' \
    --body '{"requestId": "oS1tkPUJ2of4VtCC", "useCount": 1}' \
    > test.out 2>&1
eval_tap $? 458 'PublicSellUserEntitlement' test.out

#- 459 PublicSplitUserEntitlement
samples/cli/sample-apps Platform publicSplitUserEntitlement \
    --entitlementId 'X93r7C7OsN5DGYD2' \
    --namespace $AB_NAMESPACE \
    --userId 'LfoiJhuQ7LodPsnN' \
    --body '{"metadata": {"operationSource": "INVENTORY"}, "useCount": 65}' \
    > test.out 2>&1
eval_tap $? 459 'PublicSplitUserEntitlement' test.out

#- 460 PublicTransferUserEntitlement
samples/cli/sample-apps Platform publicTransferUserEntitlement \
    --entitlementId 'YgbnF1UorUuNCDfE' \
    --namespace $AB_NAMESPACE \
    --userId 'C8NQbz5oEQFHcyDc' \
    --body '{"entitlementId": "nd7qb0OP2J6h9d29", "metadata": {"operationSource": "INVENTORY"}, "useCount": 55}' \
    > test.out 2>&1
eval_tap $? 460 'PublicTransferUserEntitlement' test.out

#- 461 PublicRedeemCode
samples/cli/sample-apps Platform publicRedeemCode \
    --namespace $AB_NAMESPACE \
    --userId 'kzbPwTSqwpGv3mXZ' \
    --body '{"code": "cPgLdtG1yzOnSxjF", "language": "JCAf", "region": "T2BMEUgut1PfqDuw"}' \
    > test.out 2>&1
eval_tap $? 461 'PublicRedeemCode' test.out

#- 462 PublicFulfillAppleIAPItem
samples/cli/sample-apps Platform publicFulfillAppleIAPItem \
    --namespace $AB_NAMESPACE \
    --userId '1tjenna4PutfumVR' \
    --body '{"excludeOldTransactions": false, "language": "pq", "productId": "qzpsaBl2FGGS17v2", "receiptData": "vmfA766zhCNcLtMO", "region": "kPG8omkJ84OlQTty", "transactionId": "iGxNl25R16wv1vSx"}' \
    > test.out 2>&1
eval_tap $? 462 'PublicFulfillAppleIAPItem' test.out

#- 463 SyncEpicGamesInventory
samples/cli/sample-apps Platform syncEpicGamesInventory \
    --namespace $AB_NAMESPACE \
    --userId 'q9bS9JcKXiYySg52' \
    --body '{"epicGamesJwtToken": "7kesAwuEeAvt4ysB"}' \
    > test.out 2>&1
eval_tap $? 463 'SyncEpicGamesInventory' test.out

#- 464 PublicFulfillGoogleIAPItem
samples/cli/sample-apps Platform publicFulfillGoogleIAPItem \
    --namespace $AB_NAMESPACE \
    --userId '9GNzqc0YRMSnGryU' \
    --body '{"autoAck": false, "autoConsume": false, "language": "PZ_SXsI_KK", "orderId": "UYKSVdqXcQvwzXHU", "packageName": "oIhw4hXD94HXtyGT", "productId": "3E7Y6ys2aqQJiFkh", "purchaseTime": 80, "purchaseToken": "o3hSYSDRo34aCdkc", "region": "4r3WrAcpw8Uj2ZCM", "subscriptionPurchase": false}' \
    > test.out 2>&1
eval_tap $? 464 'PublicFulfillGoogleIAPItem' test.out

#- 465 SyncOculusSubscriptions
samples/cli/sample-apps Platform syncOculusSubscriptions \
    --namespace $AB_NAMESPACE \
    --userId 'CZiz6p2BivTexV0l' \
    --body '{"skus": ["TDeM49uvOgDecX4f", "lqSX5AlvHwa9V6rX", "c819MKWK2xUwwPDj"]}' \
    > test.out 2>&1
eval_tap $? 465 'SyncOculusSubscriptions' test.out

#- 466 SyncOculusConsumableEntitlements
samples/cli/sample-apps Platform syncOculusConsumableEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 't8gW6uoRIomVNWoH' \
    > test.out 2>&1
eval_tap $? 466 'SyncOculusConsumableEntitlements' test.out

#- 467 PublicReconcilePlayStationStore
samples/cli/sample-apps Platform publicReconcilePlayStationStore \
    --namespace $AB_NAMESPACE \
    --userId 'W8Nm1eNQB3ZbRQGt' \
    --body '{"currencyCode": "ErgfTMWARAa6bh6V", "price": 0.46096680072959195, "productId": "Ks2LGCH2THLDFg95", "serviceLabel": 0}' \
    > test.out 2>&1
eval_tap $? 467 'PublicReconcilePlayStationStore' test.out

#- 468 PublicReconcilePlayStationStoreWithMultipleServiceLabels
samples/cli/sample-apps Platform publicReconcilePlayStationStoreWithMultipleServiceLabels \
    --namespace $AB_NAMESPACE \
    --userId 'U9wExp4qohzowDHi' \
    --body '{"currencyCode": "bBuF3HC93YRd2cuY", "price": 0.3206173430656465, "productId": "BRjYl21E7Uv01XGb", "serviceLabels": [88, 43, 69]}' \
    > test.out 2>&1
eval_tap $? 468 'PublicReconcilePlayStationStoreWithMultipleServiceLabels' test.out

#- 469 SyncSteamInventory
samples/cli/sample-apps Platform syncSteamInventory \
    --namespace $AB_NAMESPACE \
    --userId '8c1vyASdeG4qsKOx' \
    --body '{"appId": "ZEJNIuYx1UTrHneA", "currencyCode": "CnC9s0noyGnyCMcL", "language": "znb", "price": 0.5264643494110727, "productId": "PmNY8KVrW96sQoax", "region": "gEmVxNviACnXYuKP", "steamId": "sm2o7qqMKMp5KPQG"}' \
    > test.out 2>&1
eval_tap $? 469 'SyncSteamInventory' test.out

#- 470 SyncSteamAbnormalTransaction
samples/cli/sample-apps Platform syncSteamAbnormalTransaction \
    --namespace $AB_NAMESPACE \
    --userId 'SeHLM8gzyQbECg6z' \
    > test.out 2>&1
eval_tap $? 470 'SyncSteamAbnormalTransaction' test.out

#- 471 SyncSteamIAPByTransaction
samples/cli/sample-apps Platform syncSteamIAPByTransaction \
    --namespace $AB_NAMESPACE \
    --userId 'MwcsfmcQVuLiIE9w' \
    --body '{"orderId": "MQko1uTaT5zFpncp"}' \
    > test.out 2>&1
eval_tap $? 471 'SyncSteamIAPByTransaction' test.out

#- 472 PublicQueryUserThirdPartySubscription
samples/cli/sample-apps Platform publicQueryUserThirdPartySubscription \
    --namespace $AB_NAMESPACE \
    --platform 'STEAM' \
    --userId 'evzK8W2wMkciGOPC' \
    --activeOnly 'true' \
    --groupId 'MUOZbIYFKN1ZXzbG' \
    --limit '52' \
    --offset '5' \
    --productId 'YviWMy16yYXUeYdE' \
    > test.out 2>&1
eval_tap $? 472 'PublicQueryUserThirdPartySubscription' test.out

#- 473 SyncTwitchDropsEntitlement1
samples/cli/sample-apps Platform syncTwitchDropsEntitlement1 \
    --namespace $AB_NAMESPACE \
    --userId 'bAml4Aq4FBzGSPWy' \
    --body '{"gameId": "KpsuaQJ41LHQmUJQ", "language": "Stu", "region": "5LD23GbLEaSndhQK"}' \
    > test.out 2>&1
eval_tap $? 473 'SyncTwitchDropsEntitlement1' test.out

#- 474 SyncXboxInventory
samples/cli/sample-apps Platform syncXboxInventory \
    --namespace $AB_NAMESPACE \
    --userId 'gqXDIq9gubArcjy2' \
    --body '{"currencyCode": "a9fSe6O3hF6Hjkuy", "price": 0.550039477985486, "productId": "iFkbnpWpo1YBxd2a", "xstsToken": "Mha45sxTz7bhRkyt"}' \
    > test.out 2>&1
eval_tap $? 474 'SyncXboxInventory' test.out

#- 475 PublicQueryUserOrders
samples/cli/sample-apps Platform publicQueryUserOrders \
    --namespace $AB_NAMESPACE \
    --userId 'G4heUbiRemTIBpuI' \
    --discounted 'false' \
    --itemId 'UuJfXSRbXy7l0ixK' \
    --limit '59' \
    --offset '80' \
    --status 'REFUNDING' \
    > test.out 2>&1
eval_tap $? 475 'PublicQueryUserOrders' test.out

#- 476 PublicCreateUserOrder
samples/cli/sample-apps Platform publicCreateUserOrder \
    --namespace $AB_NAMESPACE \
    --userId 'cEkNp9RhPIc80pl6' \
    --body '{"currencyCode": "oFGm3YF5lZoL4lgs", "discountCodes": ["oIjp6vqOJ7mpyCzL", "ysas99EZadcpAqNd", "E5Cqpb1CxG4l6hS4"], "discountedPrice": 18, "ext": {"wsvryEa4AgxyGweu": {}, "EeeC4RSzILWHvc6c": {}, "WPmfInk2RTQdwKEU": {}}, "itemId": "vdP4I4OjVBuO24P8", "language": "cneY", "price": 67, "quantity": 10, "region": "QhYePQ1n4Soy17hp", "returnUrl": "kQOz2svYmgm1zwoW", "sectionId": "2e7ijh7oGqZGedm6"}' \
    > test.out 2>&1
eval_tap $? 476 'PublicCreateUserOrder' test.out

#- 477 PublicPreviewOrderPrice
samples/cli/sample-apps Platform publicPreviewOrderPrice \
    --namespace $AB_NAMESPACE \
    --userId '05FGlredfXdeVbGr' \
    --body '{"currencyCode": "EAHr6vf01fY5KSJS", "discountCodes": ["7YyopEaNbyB3I9JU", "FNfZg4LxDjMmXfIN", "ixcI8pjtjIUL3aKh"], "discountedPrice": 9, "itemId": "yT4tc2ybpkfWDgxw", "price": 20, "quantity": 13}' \
    > test.out 2>&1
eval_tap $? 477 'PublicPreviewOrderPrice' test.out

#- 478 PublicGetUserOrder
samples/cli/sample-apps Platform publicGetUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'Q0SYp2c5QTRmQuiR' \
    --userId 'mnmATIM5GPX6EvLz' \
    > test.out 2>&1
eval_tap $? 478 'PublicGetUserOrder' test.out

#- 479 PublicCancelUserOrder
samples/cli/sample-apps Platform publicCancelUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'GN5j9IjAXxfB9L2V' \
    --userId 'wMikXW6xmYqJNKCW' \
    > test.out 2>&1
eval_tap $? 479 'PublicCancelUserOrder' test.out

#- 480 PublicGetUserOrderHistories
samples/cli/sample-apps Platform publicGetUserOrderHistories \
    --namespace $AB_NAMESPACE \
    --orderNo 'rvZ9yESKrJDlFBdb' \
    --userId 'm1j5svBDILvOaufj' \
    > test.out 2>&1
eval_tap $? 480 'PublicGetUserOrderHistories' test.out

#- 481 PublicDownloadUserOrderReceipt
samples/cli/sample-apps Platform publicDownloadUserOrderReceipt \
    --namespace $AB_NAMESPACE \
    --orderNo 'lElyOQO7brSweWSu' \
    --userId 'Ma6H5EssgMJCVtCZ' \
    > test.out 2>&1
eval_tap $? 481 'PublicDownloadUserOrderReceipt' test.out

#- 482 PublicGetPaymentAccounts
samples/cli/sample-apps Platform publicGetPaymentAccounts \
    --namespace $AB_NAMESPACE \
    --userId 'hongSo9qtNJXMAqB' \
    > test.out 2>&1
eval_tap $? 482 'PublicGetPaymentAccounts' test.out

#- 483 PublicDeletePaymentAccount
samples/cli/sample-apps Platform publicDeletePaymentAccount \
    --id 'MBW1fPFrvn0vPEIJ' \
    --namespace $AB_NAMESPACE \
    --type 'card' \
    --userId 'pZYhx9qJ5ye4mhyJ' \
    > test.out 2>&1
eval_tap $? 483 'PublicDeletePaymentAccount' test.out

#- 484 PublicListActiveSections
samples/cli/sample-apps Platform publicListActiveSections \
    --namespace $AB_NAMESPACE \
    --userId 'j2gDZwfyzAKBPWBf' \
    --autoCalcEstimatedPrice 'false' \
    --language 'IS0P48bDaEY5JE1H' \
    --region 'sDqaJEMeI94w2ADI' \
    --storeId 'Pg4TUU4gAq0qL7KN' \
    --viewId 'nkc3JNREGc0IM9Au' \
    > test.out 2>&1
eval_tap $? 484 'PublicListActiveSections' test.out

#- 485 PublicQueryUserSubscriptions
samples/cli/sample-apps Platform publicQueryUserSubscriptions \
    --namespace $AB_NAMESPACE \
    --userId '8aEBT71zlwBKiyrO' \
    --chargeStatus 'SETUP' \
    --itemId 'TCO8bwLz5XRiulaH' \
    --limit '24' \
    --offset '48' \
    --sku 'txV1klLQ0qQOsYo8' \
    --status 'EXPIRED' \
    --subscribedBy 'PLATFORM' \
    > test.out 2>&1
eval_tap $? 485 'PublicQueryUserSubscriptions' test.out

#- 486 PublicSubscribeSubscription
samples/cli/sample-apps Platform publicSubscribeSubscription \
    --namespace $AB_NAMESPACE \
    --userId 'i2RybeOoFofwFicS' \
    --body '{"currencyCode": "wmeqR95uRCjumNHx", "itemId": "gcSGElp8T16VE1eH", "language": "XQI_192", "region": "yEDAElIU7rG4HxDc", "returnUrl": "tzSoOXHI3qAMqNop", "source": "oecs61YaU2xDeBAX"}' \
    > test.out 2>&1
eval_tap $? 486 'PublicSubscribeSubscription' test.out

#- 487 PublicCheckUserSubscriptionSubscribableByItemId
samples/cli/sample-apps Platform publicCheckUserSubscriptionSubscribableByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'HiE09O1zk6Bv6gs5' \
    --itemId 'cYnDSkAwRmhPCPW2' \
    > test.out 2>&1
eval_tap $? 487 'PublicCheckUserSubscriptionSubscribableByItemId' test.out

#- 488 PublicGetUserSubscription
samples/cli/sample-apps Platform publicGetUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'sZSrsn4iqZ8rovhm' \
    --userId '7jgw3iKYq7doAMwi' \
    > test.out 2>&1
eval_tap $? 488 'PublicGetUserSubscription' test.out

#- 489 PublicChangeSubscriptionBillingAccount
samples/cli/sample-apps Platform publicChangeSubscriptionBillingAccount \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'rIfFuXmWLzjLGVfD' \
    --userId 'VQkfRWXVdHVNVraO' \
    > test.out 2>&1
eval_tap $? 489 'PublicChangeSubscriptionBillingAccount' test.out

#- 490 PublicCancelSubscription
samples/cli/sample-apps Platform publicCancelSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'ycL9e4b0pym5cPby' \
    --userId 'jVFJLarBRrkgm5yD' \
    --body '{"immediate": true, "reason": "V5AefCGTl2FSDoya"}' \
    > test.out 2>&1
eval_tap $? 490 'PublicCancelSubscription' test.out

#- 491 PublicGetUserSubscriptionBillingHistories
samples/cli/sample-apps Platform publicGetUserSubscriptionBillingHistories \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'uUwsiHvgUA0aO7uQ' \
    --userId '4cRRthwwx7TUEtqH' \
    --excludeFree 'false' \
    --limit '92' \
    --offset '29' \
    > test.out 2>&1
eval_tap $? 491 'PublicGetUserSubscriptionBillingHistories' test.out

#- 492 PublicListViews
samples/cli/sample-apps Platform publicListViews \
    --namespace $AB_NAMESPACE \
    --userId 'Bk4tmeTtSe4dUNlG' \
    --language 'tlzagNaLn1bl5Fxv' \
    --storeId 'Yb2wJ3doARIuR3c8' \
    > test.out 2>&1
eval_tap $? 492 'PublicListViews' test.out

#- 493 PublicGetWallet
samples/cli/sample-apps Platform publicGetWallet \
    --currencyCode 'I7oNai3IBOOHo8f2' \
    --namespace $AB_NAMESPACE \
    --userId '8bvtOmh7o9xbpo4I' \
    > test.out 2>&1
eval_tap $? 493 'PublicGetWallet' test.out

#- 494 PublicListUserWalletTransactions
samples/cli/sample-apps Platform publicListUserWalletTransactions \
    --currencyCode 'OB9xRtmeQ96aFmQU' \
    --namespace $AB_NAMESPACE \
    --userId 'KTZbo7Ygibuhjbnh' \
    --limit '25' \
    --offset '39' \
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
    --endTime 'gs90P6dAh5OlGLqW' \
    --limit '50' \
    --offset '29' \
    --startTime 'lHRCbF2UK5nJwbSK' \
    --state 'FULFILL_FAILED' \
    --transactionId 'ESQBYOyMI0VoK1sW' \
    --userId 'wqaCvLNJcMUr2Vs0' \
    > test.out 2>&1
eval_tap $? 496 'QueryFulfillments' test.out

#- 497 QueryItemsV2
samples/cli/sample-apps Platform queryItemsV2 \
    --namespace $AB_NAMESPACE \
    --appType 'DLC' \
    --availableDate 'cpKaUl6urtW6Tljg' \
    --baseAppId 'E5p79mD7OUidUXHU' \
    --categoryPath 'g7dDG0utaa4RziOc' \
    --features 'vJulLbnDPBkB6JV4' \
    --includeSubCategoryItem 'true' \
    --itemName '66QZsKkBXJIK7nYt' \
    --itemStatus 'ACTIVE' \
    --itemType '["SEASON", "LOOTBOX", "APP"]' \
    --limit '37' \
    --offset '19' \
    --region 'fdG6ElbTDbwmBw2o' \
    --sectionExclusive 'true' \
    --sortBy '["name:desc", "createdAt:asc", "updatedAt:desc"]' \
    --storeId '3a9vS03mNRRLwhkQ' \
    --tags 'ZcDp9eaTRxt7Qfiw' \
    --targetNamespace 'Ol7aZ4wwIPlm16se' \
    --withTotal 'true' \
    > test.out 2>&1
eval_tap $? 497 'QueryItemsV2' test.out

#- 498 ImportStore1
samples/cli/sample-apps Platform importStore1 \
    --namespace $AB_NAMESPACE \
    --storeId 'QB8uxVDtij1kk4dV' \
    --strictMode 'true' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 498 'ImportStore1' test.out

#- 499 ExportStore1
samples/cli/sample-apps Platform exportStore1 \
    --namespace $AB_NAMESPACE \
    --storeId 'a12mdWbqoIPIyxx8' \
    --body '{"itemIds": ["k9scaunbAkeH74O1", "61trWmT9x3UVtvzf", "Tm4Xr0a5n1d8hqGd"]}' \
    > test.out 2>&1
eval_tap $? 499 'ExportStore1' test.out

#- 500 FulfillRewardsV2
samples/cli/sample-apps Platform fulfillRewardsV2 \
    --namespace $AB_NAMESPACE \
    --userId 'L6g1dicwMeOvw7gl' \
    --body '{"entitlementCollectionId": "ziCsJNZKMUvpfFtb", "entitlementOrigin": "IOS", "metadata": {"HWSdto8CNacY8YbI": {}, "2dtHWgjo40GRGBte": {}, "WXbVtxmOBcTuaGNw": {}}, "origin": "Oculus", "rewards": [{"currency": {"currencyCode": "7wp88XYmRqEG48OA", "namespace": "KqLwcpSrxGusxbOD"}, "item": {"itemId": "opbR0FCQe6K6Cp99", "itemName": "VofzpMxYEpfzUEFp", "itemSku": "buTiXDlFSasaBPJd", "itemType": "wdbxGALsLcAtGkM2"}, "quantity": 77, "type": "ITEM"}, {"currency": {"currencyCode": "Ki2QOGbiwl3NydTq", "namespace": "2ZIRh2o86ymNXSYZ"}, "item": {"itemId": "n67UKNftTtYqClm9", "itemName": "DO4M13eVcM0HPpg0", "itemSku": "rYIlO7zkrtOG6XVB", "itemType": "omNpqURLgOoiHP5w"}, "quantity": 90, "type": "CURRENCY"}, {"currency": {"currencyCode": "OhvWjBi3Wpfyew6w", "namespace": "GmqlVcpuH4EvUpyE"}, "item": {"itemId": "dq0ETO7Z3qcoz9YA", "itemName": "4OIHe0oAsPSBnDul", "itemSku": "NspZNbkQsGREEd70", "itemType": "FseZU0NKocXm0gKA"}, "quantity": 18, "type": "CURRENCY"}], "source": "PAYMENT", "transactionId": "dupJd9Nu4m2lsxc0"}' \
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
    --userId 'z10YsrfKDHgaqJT7' \
    --body '{"transactionId": "idgJ5VJtPNtJyh4H"}' \
    > test.out 2>&1
eval_tap $? 504 'V2PublicFulfillAppleIAPItem' test.out

#- 505 FulfillItemsV3
samples/cli/sample-apps Platform fulfillItemsV3 \
    --namespace $AB_NAMESPACE \
    --transactionId 'NccE17Sm8nrS09LQ' \
    --userId '7OHLARI5UiMPPXyj' \
    --body '{"items": [{"duration": 65, "endDate": "1994-01-11T00:00:00Z", "entitlementCollectionId": "weOoAHDKkW2ESBiR", "entitlementOrigin": "Nintendo", "itemId": "sBFlrFG4YdKLFhvY", "itemSku": "1j2EDCFcMRgKvRxw", "language": "DhyHlYHaSJstnHew", "metadata": {"s3pxzLIV068ySq2A": {}, "WjDvvnpVqp4Zb91k": {}, "nXKr47TM4v62MVAr": {}}, "orderNo": "cgy57GY8cZvfRSg0", "origin": "System", "quantity": 36, "region": "GIPAXOeNNNlnWmjn", "source": "PAYMENT", "startDate": "1976-03-11T00:00:00Z", "storeId": "N7udjxyfxoKwzcA6"}, {"duration": 14, "endDate": "1999-12-05T00:00:00Z", "entitlementCollectionId": "MhaZOCjydGHceeyt", "entitlementOrigin": "Steam", "itemId": "R3nQKYQ77qh6Q0e5", "itemSku": "gyn5vYoDamHhuK9x", "language": "VC5PjjCHhWprRtrI", "metadata": {"vCyVZPjqhsD9iJcS": {}, "cDi1aiKCUQ9MABJC": {}, "dc47Afv9rHhWqmYz": {}}, "orderNo": "yQKP9to2tWXbieEQ", "origin": "Xbox", "quantity": 67, "region": "bA5Q4SZVf8grGJW5", "source": "PROMOTION", "startDate": "1991-03-05T00:00:00Z", "storeId": "B6cZIa7OgxlKjdbd"}, {"duration": 14, "endDate": "1979-01-01T00:00:00Z", "entitlementCollectionId": "Qsr8iH37uZ9GqWMV", "entitlementOrigin": "Twitch", "itemId": "44qgza2s7K0vw5kg", "itemSku": "rqmxfuZBlXA835SM", "language": "pPrdVSlfl6Q3HD9p", "metadata": {"N22xBCDq3TFwgKIR": {}, "ncvLy2W8fWwJUQZr": {}, "BWwCaOv0OhQihyAA": {}}, "orderNo": "cqGz4scIbUQkQLp0", "origin": "Steam", "quantity": 18, "region": "8eMRQkPn5kfgkrDh", "source": "IAP", "startDate": "1971-01-07T00:00:00Z", "storeId": "byIkskjCRtcYWQ6h"}]}' \
    > test.out 2>&1
eval_tap $? 505 'FulfillItemsV3' test.out

#- 506 RetryFulfillItemsV3
samples/cli/sample-apps Platform retryFulfillItemsV3 \
    --namespace $AB_NAMESPACE \
    --transactionId 'cPn8DJl1NZJZfvfS' \
    --userId 'i9prfPYlYN2mJktX' \
    > test.out 2>&1
eval_tap $? 506 'RetryFulfillItemsV3' test.out

#- 507 RevokeItemsV3
samples/cli/sample-apps Platform revokeItemsV3 \
    --namespace $AB_NAMESPACE \
    --transactionId 'lgfvMNtSUL1oBoTp' \
    --userId 'zj4Xxyn7R6jYJBFC' \
    > test.out 2>&1
eval_tap $? 507 'RevokeItemsV3' test.out


rm -f "tmp.dat"

exit $EXIT_CODE