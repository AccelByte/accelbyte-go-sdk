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
    --id '2O2mzPVOuagWNnrP' \
    > test.out 2>&1
eval_tap $? 3 'GetFulfillmentScript' test.out

#- 4 CreateFulfillmentScript
samples/cli/sample-apps Platform createFulfillmentScript \
    --id 'lmvtsQyXZQS5m2Wa' \
    --body '{"grantDays": "bJKl3sesISSFYVjL"}' \
    > test.out 2>&1
eval_tap $? 4 'CreateFulfillmentScript' test.out

#- 5 DeleteFulfillmentScript
samples/cli/sample-apps Platform deleteFulfillmentScript \
    --id 'QRWFQdScFbNL1iq0' \
    > test.out 2>&1
eval_tap $? 5 'DeleteFulfillmentScript' test.out

#- 6 UpdateFulfillmentScript
samples/cli/sample-apps Platform updateFulfillmentScript \
    --id 'KWbGqWGl1VNv78NH' \
    --body '{"grantDays": "sL4FNRYFN16HPWLQ"}' \
    > test.out 2>&1
eval_tap $? 6 'UpdateFulfillmentScript' test.out

#- 7 ListItemTypeConfigs
samples/cli/sample-apps Platform listItemTypeConfigs \
    > test.out 2>&1
eval_tap $? 7 'ListItemTypeConfigs' test.out

#- 8 CreateItemTypeConfig
samples/cli/sample-apps Platform createItemTypeConfig \
    --body '{"clazz": "CwIkDPrToVo3qYKn", "dryRun": true, "fulfillmentUrl": "x9pOw61OS4V70ff7", "itemType": "SEASON", "purchaseConditionUrl": "3pU1KR6rhRv2ruN2"}' \
    > test.out 2>&1
eval_tap $? 8 'CreateItemTypeConfig' test.out

#- 9 SearchItemTypeConfig
samples/cli/sample-apps Platform searchItemTypeConfig \
    --clazz 'YYcmLQUlRjcNDVoa' \
    --itemType 'APP' \
    > test.out 2>&1
eval_tap $? 9 'SearchItemTypeConfig' test.out

#- 10 GetItemTypeConfig
samples/cli/sample-apps Platform getItemTypeConfig \
    --id 'ImiGDChyvXXFojhy' \
    > test.out 2>&1
eval_tap $? 10 'GetItemTypeConfig' test.out

#- 11 UpdateItemTypeConfig
samples/cli/sample-apps Platform updateItemTypeConfig \
    --id '1YMI3hg9UxHQvGOC' \
    --body '{"clazz": "iL5eYLVIQ80HQXQr", "dryRun": true, "fulfillmentUrl": "XykscDLS3UeDWt5H", "purchaseConditionUrl": "shXLGUFQvWBjRopg"}' \
    > test.out 2>&1
eval_tap $? 11 'UpdateItemTypeConfig' test.out

#- 12 DeleteItemTypeConfig
samples/cli/sample-apps Platform deleteItemTypeConfig \
    --id 'xTaL0DKIYVlINr2s' \
    > test.out 2>&1
eval_tap $? 12 'DeleteItemTypeConfig' test.out

#- 13 QueryCampaigns
samples/cli/sample-apps Platform queryCampaigns \
    --namespace $AB_NAMESPACE \
    --limit '62' \
    --name 'dz8jqjUf1CFOmlyc' \
    --offset '17' \
    --tag 'g5amirWoxRKfwURy' \
    > test.out 2>&1
eval_tap $? 13 'QueryCampaigns' test.out

#- 14 CreateCampaign
samples/cli/sample-apps Platform createCampaign \
    --namespace $AB_NAMESPACE \
    --body '{"description": "sJ4BnbhBzXmqjutd", "discountConfig": {"categories": [{"categoryPath": "QX9hJ4XjdyOpq3nK", "includeSubCategories": false}, {"categoryPath": "gRhYPPXSSVgCFEM4", "includeSubCategories": true}, {"categoryPath": "k6FavfIZ1g6l5Sva", "includeSubCategories": true}], "currencyCode": "KkZnrxXYy9ez7Og7", "currencyNamespace": "aSnBfmq5D69j8Nhr", "discountAmount": 43, "discountPercentage": 31, "discountType": "AMOUNT", "items": [{"itemId": "yn37YMee5tLiQEzy", "itemName": "K0QHQu9BRcw4ygFN"}, {"itemId": "Gy0IXyQpDTO6kKYI", "itemName": "Wci3L01navb1bmrF"}, {"itemId": "VgD2UbocW6CpxGsA", "itemName": "2WRSUMVGWW2Ysj13"}], "restrictType": "ITEMS_AND_CATEGORIES", "stackable": true}, "items": [{"extraSubscriptionDays": 55, "itemId": "0YjbG5s2uiUQ1jB1", "itemName": "WX5pfotNzMoYkcmi", "quantity": 25}, {"extraSubscriptionDays": 79, "itemId": "SToMkW4EesOlADOI", "itemName": "8nepex3ywOJmrobu", "quantity": 83}, {"extraSubscriptionDays": 95, "itemId": "9MxR3mGsPVaokqRJ", "itemName": "LjaLTj6356Sqcbvv", "quantity": 46}], "maxRedeemCountPerCampaignPerUser": 54, "maxRedeemCountPerCode": 37, "maxRedeemCountPerCodePerUser": 68, "maxSaleCount": 70, "name": "R2R0CZMPtpi45jSI", "redeemEnd": "1991-12-08T00:00:00Z", "redeemStart": "1980-09-04T00:00:00Z", "redeemType": "ITEM", "status": "ACTIVE", "tags": ["QujFHLuQQNf9vsR3", "fgbk0GZLVtvvhVuT", "ocXpXZUKYjf3bP6h"], "type": "REDEMPTION"}' \
    > test.out 2>&1
eval_tap $? 14 'CreateCampaign' test.out

#- 15 GetCampaign
samples/cli/sample-apps Platform getCampaign \
    --campaignId 'vOviJqf1FrgdUyed' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 15 'GetCampaign' test.out

#- 16 UpdateCampaign
samples/cli/sample-apps Platform updateCampaign \
    --campaignId 'zszlOesqFgqwo4dP' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "LjHa2FKPrY9MbXtp", "discountConfig": {"categories": [{"categoryPath": "lQRmtW1cUL95Jc6t", "includeSubCategories": false}, {"categoryPath": "SzRvHkn1YrGwsXf7", "includeSubCategories": false}, {"categoryPath": "LOODXxeREcWaaq4m", "includeSubCategories": false}], "currencyCode": "eIPxUDxvyyB8fkAV", "currencyNamespace": "yLu6kiaanUnUBAng", "discountAmount": 8, "discountPercentage": 23, "discountType": "PERCENTAGE", "items": [{"itemId": "foIXlMUScw3aDPae", "itemName": "37X2WyFXpL9qawTr"}, {"itemId": "dX2s8EcGAN1LO7Yf", "itemName": "RQFKzRM6ik3c5Uz9"}, {"itemId": "lKoEzOpTUFxa7O4m", "itemName": "nCDDCQtLLAbwXQwM"}], "restrictType": "ITEMS_AND_CATEGORIES", "stackable": false}, "items": [{"extraSubscriptionDays": 15, "itemId": "wekbD54GdqgY4KuU", "itemName": "Rkhwt7owMuPaSzan", "quantity": 90}, {"extraSubscriptionDays": 58, "itemId": "8PE7OOCK1rsnymhn", "itemName": "6cU6klrOZbN53IDB", "quantity": 72}, {"extraSubscriptionDays": 9, "itemId": "KAbZOs18O6LAkd1t", "itemName": "LBVmrKlGOWtzsAWo", "quantity": 41}], "maxRedeemCountPerCampaignPerUser": 97, "maxRedeemCountPerCode": 62, "maxRedeemCountPerCodePerUser": 67, "maxSaleCount": 34, "name": "kB6ZlCKlIPFwQAn8", "redeemEnd": "1987-11-05T00:00:00Z", "redeemStart": "1981-04-27T00:00:00Z", "redeemType": "DISCOUNT", "status": "ACTIVE", "tags": ["9WyO25qLkyKybRSa", "ZTNcyMOr2SY4pSBq", "tD54saH3jPrVuanB"]}' \
    > test.out 2>&1
eval_tap $? 16 'UpdateCampaign' test.out

#- 17 RenameBatch
samples/cli/sample-apps Platform renameBatch \
    --campaignId 'DzFsgy7aLfplxUPw' \
    --namespace $AB_NAMESPACE \
    --body '{"newName": "vgjXVigW8TVCsxbZ", "oldName": "3JzLSBwy6SS0zR23"}' \
    > test.out 2>&1
eval_tap $? 17 'RenameBatch' test.out

#- 18 QueryCampaignBatchNames
samples/cli/sample-apps Platform queryCampaignBatchNames \
    --campaignId 'HLgczSdz8Ur94F1o' \
    --namespace $AB_NAMESPACE \
    --batchName '5AnA3ww5dMlBVDAh' \
    --limit '72' \
    > test.out 2>&1
eval_tap $? 18 'QueryCampaignBatchNames' test.out

#- 19 GetCampaignDynamic
samples/cli/sample-apps Platform getCampaignDynamic \
    --campaignId 'ynWZeaueAsVsezBF' \
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
    --body '{"enableInventoryCheck": false, "itemDeletionCheckConfig": ["CATALOG", "DLC"]}' \
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
    --body '{"appConfig": {"appName": "Iu7lIjr7uUiNHoRU"}, "customConfig": {"connectionType": "INSECURE", "grpcServerAddress": "0OaGgWb4Um9tsbS6"}, "extendType": "CUSTOM"}' \
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
    --body '{"appConfig": {"appName": "jwsiiYIbTlrDSfrw"}, "customConfig": {"connectionType": "TLS", "grpcServerAddress": "3P2VOftCEu1v4yDE"}, "extendType": "APP"}' \
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
    --storeId 'tSzgijUWirGckQdE' \
    > test.out 2>&1
eval_tap $? 31 'GetRootCategories' test.out

#- 32 CreateCategory
samples/cli/sample-apps Platform createCategory \
    --namespace $AB_NAMESPACE \
    --storeId 'uQTApQq1QVtiUDZg' \
    --body '{"categoryPath": "sKuvkhkQXaFxQYdg", "localizationDisplayNames": {"pDEBZnZ9aa7So55l": "rRRPRMjhVdEPEdwk", "ZurVWUyoHjCVX7LY": "8PJlUhMv4ZTZCfIA", "SaIIUIvViELEqjSl": "LBEclXkrkJJwyres"}}' \
    > test.out 2>&1
eval_tap $? 32 'CreateCategory' test.out

#- 33 ListCategoriesBasic
samples/cli/sample-apps Platform listCategoriesBasic \
    --namespace $AB_NAMESPACE \
    --storeId 'xMRfJL7rpp1rD37K' \
    > test.out 2>&1
eval_tap $? 33 'ListCategoriesBasic' test.out

#- 34 GetCategory
samples/cli/sample-apps Platform getCategory \
    --categoryPath 'vCNDXiIquFUnb7wf' \
    --namespace $AB_NAMESPACE \
    --storeId 'jMgO2WwkDXOfJqET' \
    > test.out 2>&1
eval_tap $? 34 'GetCategory' test.out

#- 35 UpdateCategory
samples/cli/sample-apps Platform updateCategory \
    --categoryPath 'R9fAcGT9NuuECynq' \
    --namespace $AB_NAMESPACE \
    --storeId 'vO7ZAnV3on5zwxHg' \
    --body '{"localizationDisplayNames": {"tK7DQDDowJuA4vPL": "ZeVDGEqaZtCJLHHP", "3DkZXiJcH9bFFBqJ": "xgki47FnG4uDjKQb", "NkiE7NKSpU7mbL14": "CCHihLyr11EFdg0t"}}' \
    > test.out 2>&1
eval_tap $? 35 'UpdateCategory' test.out

#- 36 DeleteCategory
samples/cli/sample-apps Platform deleteCategory \
    --categoryPath 'MsO5aVz3GuPbqkCm' \
    --namespace $AB_NAMESPACE \
    --storeId 'v6XbKC6ryXjgsSyY' \
    > test.out 2>&1
eval_tap $? 36 'DeleteCategory' test.out

#- 37 GetChildCategories
samples/cli/sample-apps Platform getChildCategories \
    --categoryPath 'RuBcHzle6FWf4LOC' \
    --namespace $AB_NAMESPACE \
    --storeId 'o0sOCk3swhsRvom3' \
    > test.out 2>&1
eval_tap $? 37 'GetChildCategories' test.out

#- 38 GetDescendantCategories
samples/cli/sample-apps Platform getDescendantCategories \
    --categoryPath '5Bh4YriwUpFYepTz' \
    --namespace $AB_NAMESPACE \
    --storeId 'nIvuN8lcuqEaICMQ' \
    > test.out 2>&1
eval_tap $? 38 'GetDescendantCategories' test.out

#- 39 QueryCodes
samples/cli/sample-apps Platform queryCodes \
    --campaignId 'AvoI3Ui457xUaTUZ' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --batchName 'RwzMryJjAiI3boP5' \
    --batchNo '[91, 58, 98]' \
    --code 'UJXCyM5I5GHWgoik' \
    --limit '13' \
    --offset '22' \
    --withBatchName 'true' \
    > test.out 2>&1
eval_tap $? 39 'QueryCodes' test.out

#- 40 CreateCodes
samples/cli/sample-apps Platform createCodes \
    --campaignId 'xYXpQsNybwcWC2QN' \
    --namespace $AB_NAMESPACE \
    --body '{"batchName": "PSIBHXszAhnQwNfs", "codeValue": "k4nszgOjLBSTyvaz", "quantity": 34}' \
    > test.out 2>&1
eval_tap $? 40 'CreateCodes' test.out

#- 41 Download
samples/cli/sample-apps Platform download \
    --campaignId 'R9RLHgJvgmmijfzg' \
    --namespace $AB_NAMESPACE \
    --batchName 'K9JnjNaLdwFLK9Xn' \
    --batchNo '[16, 68, 84]' \
    --withBatchName 'true' \
    > test.out 2>&1
eval_tap $? 41 'Download' test.out

#- 42 BulkDisableCodes
samples/cli/sample-apps Platform bulkDisableCodes \
    --campaignId 'ER9aLoAMI4ix9099' \
    --namespace $AB_NAMESPACE \
    --batchName 'QdSVpDYFmQgrCCzR' \
    --batchNo '[42, 47, 39]' \
    > test.out 2>&1
eval_tap $? 42 'BulkDisableCodes' test.out

#- 43 BulkEnableCodes
samples/cli/sample-apps Platform bulkEnableCodes \
    --campaignId 'LG1gv7z32OIdZ58B' \
    --namespace $AB_NAMESPACE \
    --batchName 'qGnJikwcQlBTdBN1' \
    --batchNo '[40, 16, 97]' \
    > test.out 2>&1
eval_tap $? 43 'BulkEnableCodes' test.out

#- 44 QueryRedeemHistory
samples/cli/sample-apps Platform queryRedeemHistory \
    --campaignId '9Ny55kftGQVqFtYS' \
    --namespace $AB_NAMESPACE \
    --code '3dYRF6FiAyFL2TJn' \
    --limit '23' \
    --offset '68' \
    --userId 'ykItotl6Vh7SfXIx' \
    > test.out 2>&1
eval_tap $? 44 'QueryRedeemHistory' test.out

#- 45 GetCode
samples/cli/sample-apps Platform getCode \
    --code 'v3zknuuOoZvcVRAt' \
    --namespace $AB_NAMESPACE \
    --redeemable 'false' \
    --withBatchName 'false' \
    > test.out 2>&1
eval_tap $? 45 'GetCode' test.out

#- 46 DisableCode
samples/cli/sample-apps Platform disableCode \
    --code 'JNQ04TnSjutqcwXD' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 46 'DisableCode' test.out

#- 47 EnableCode
samples/cli/sample-apps Platform enableCode \
    --code 'GY8LTgLDHo2RlMZH' \
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
    --body '{"currencyCode": "Ryt8RXwTBNXSrsLb", "currencySymbol": "tks882BtRnwqtEBY", "currencyType": "REAL", "decimals": 81, "localizationDescriptions": {"9wl7PK9EIjGpyeYT": "5iwFPk9AoNVa7BFd", "QDWMnkkbOaHjM6G9": "7AmxVdoMTYj5kEgE", "q8FVW9xI5StXVuco": "lrHMEWnXD09kuzWy"}}' \
    > test.out 2>&1
eval_tap $? 52 'CreateCurrency' test.out

#- 53 UpdateCurrency
samples/cli/sample-apps Platform updateCurrency \
    --currencyCode 'tsw3TtEA5BadSaPb' \
    --namespace $AB_NAMESPACE \
    --body '{"localizationDescriptions": {"jreNeBg1bgMEE9aM": "dtBpfjrx48j4JRsG", "JSlK6zkkoLJLcX8R": "QoGaIfncyYly2i8j", "5ivqHqRsgZMOKBjz": "77tZh04xUS5ea7gy"}}' \
    > test.out 2>&1
eval_tap $? 53 'UpdateCurrency' test.out

#- 54 DeleteCurrency
samples/cli/sample-apps Platform deleteCurrency \
    --currencyCode 'edupfZDeVhLLI4L0' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 54 'DeleteCurrency' test.out

#- 55 GetCurrencyConfig
samples/cli/sample-apps Platform getCurrencyConfig \
    --currencyCode 'WWB6KzmCszdg8vph' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 55 'GetCurrencyConfig' test.out

#- 56 GetCurrencySummary
samples/cli/sample-apps Platform getCurrencySummary \
    --currencyCode 'ZjAf4tWnpZpGvBF6' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 56 'GetCurrencySummary' test.out

#- 57 GetDLCItemConfigHistory
samples/cli/sample-apps Platform getDLCItemConfigHistory \
    --namespace $AB_NAMESPACE \
    --dlcId 'whdQHL88PDVRpT29' \
    > test.out 2>&1
eval_tap $? 57 'GetDLCItemConfigHistory' test.out

#- 58 RestoreDLCItemConfigHistory
samples/cli/sample-apps Platform restoreDLCItemConfigHistory \
    --id '5qBrb99v1FJafmAW' \
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
    --body '{"data": [{"autoUpdate": false, "enableRevocation": true, "id": "a1biUUorwSwWt5LY", "rewards": [{"currency": {"currencyCode": "vvuVcwvunB5Z5IOi", "namespace": "l7do90Hp57omIqp1"}, "item": {"itemId": "TtIOmko8JLTz1nWd", "itemName": "16S2mGXBnU4SvTBB", "itemSku": "PEMkCdYfcndTS8nm", "itemType": "mIUcCoBQ3kMA5X5e"}, "quantity": 84, "type": "CURRENCY"}, {"currency": {"currencyCode": "rUqGtoEaL6D1uCXD", "namespace": "UaSLhjDm4NTw1Ax9"}, "item": {"itemId": "oGdCfEsxOGDy9LK7", "itemName": "7vwZeYwl6txuiXxD", "itemSku": "qanMRNu26Tu5EOYh", "itemType": "DXjH3LM8bK9yTmDR"}, "quantity": 17, "type": "CURRENCY"}, {"currency": {"currencyCode": "AKxXJy2jf8mLr8ya", "namespace": "6Zpc9RJ85TMHL9SW"}, "item": {"itemId": "Y3SN4Jc33fcypBdG", "itemName": "dSbOgaUO5qJUd1Xb", "itemSku": "IQ4n2BcK2W2PXzHq", "itemType": "sHdKw5EitE3YS5nM"}, "quantity": 100, "type": "CURRENCY"}], "rvn": 26}, {"autoUpdate": false, "enableRevocation": true, "id": "0n5g0FJEQ6YmmON3", "rewards": [{"currency": {"currencyCode": "MRH9UKjrpJE1mcUS", "namespace": "br4iWuv5sQkx4u2U"}, "item": {"itemId": "lWbfP2QbAJHupnAK", "itemName": "ln5OUABdNOKaqred", "itemSku": "P2y3ByJSiXqgpmYV", "itemType": "YUQxjeHWKurKz017"}, "quantity": 15, "type": "CURRENCY"}, {"currency": {"currencyCode": "NpMN6M6WBOnykMNY", "namespace": "51PoRjj40NaMSqwN"}, "item": {"itemId": "Mma4JYhAN1ruEhDx", "itemName": "8rwUpOJpCuYdhAx5", "itemSku": "99eYBsXnhBd85RZd", "itemType": "n9GPwM1avLYX699d"}, "quantity": 65, "type": "CURRENCY"}, {"currency": {"currencyCode": "Q1sl1TK1S9qVvk9Z", "namespace": "0QMS0cKwNsvVxG3g"}, "item": {"itemId": "HpZKgnCckPY1Urvq", "itemName": "XXMEBetTnjIzlYGj", "itemSku": "KdLKifXqTgGEQMYA", "itemType": "fTiDLgB0fmJzgeBD"}, "quantity": 69, "type": "CURRENCY"}], "rvn": 81}, {"autoUpdate": true, "enableRevocation": false, "id": "GeK4ftjUd89qZ6rk", "rewards": [{"currency": {"currencyCode": "YgDCrouc9kuD9MXz", "namespace": "stbT3WU4UM16kcV7"}, "item": {"itemId": "gJdQ7ThOddqIvZEU", "itemName": "7Ix5FpuBb4biCQNS", "itemSku": "zJhmucNSySLuV5Az", "itemType": "4EktK8UeBFcM5XrH"}, "quantity": 78, "type": "CURRENCY"}, {"currency": {"currencyCode": "Go8Wye2XZrabckOM", "namespace": "Q7f15nr98wh0aI5w"}, "item": {"itemId": "3De4zwAmMmjOkS5L", "itemName": "aVRyBaH7R0YJZbQY", "itemSku": "taxftp8bayPCWJad", "itemType": "MRhAflnjfkuc3zeF"}, "quantity": 36, "type": "CURRENCY"}, {"currency": {"currencyCode": "URkKN4A9tQpcbJOp", "namespace": "p7YiVXl4dB8Xq85R"}, "item": {"itemId": "4oYxWEyRY7ATo6cK", "itemName": "hTF9C7XkM9iyMLyv", "itemSku": "ful5cMI0AfFE9ijd", "itemType": "h2gpMZElRI0t9qr0"}, "quantity": 51, "type": "CURRENCY"}], "rvn": 49}]}' \
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
    --body '{"data": [{"platform": "OCULUS", "platformDlcIdMap": {"KwGoCediY1ZiecTK": "yf8siA46mx1SAhiI", "reGs1O9KpJsgCcy8": "eHCftfza1NHpMEQW", "hStA0cwYKVuiITSk": "Gq46kFstBxFzGs3P"}}, {"platform": "EPICGAMES", "platformDlcIdMap": {"1oWDsUUW0c5n5Tx6": "PwRh9PYeyiRPkL7Q", "BwYSxv5q7CKVSdyM": "JK4uYAGsuHBF7pXv", "vxZw4rSxZsdQ8i3o": "nhuHfV91LJNLUUcj"}}, {"platform": "PSN", "platformDlcIdMap": {"8urRctyQEm3lpRNl": "zb6Cu7GI5AWewCsf", "lFNCflohhrcvaYuX": "wqLwXZBBYdDhnwSO", "7JcIGw6nHzrGOiLH": "S2AlD8VhoWvxnsd1"}}]}' \
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
    --appType 'DEMO' \
    --entitlementClazz 'LOOTBOX' \
    --entitlementName 'b4mjmHyDocqD7bBH' \
    --itemId '["5EyyB5OLAB1OWKDF", "25MJeOEWsd8g42my", "LOO1FQ5DtTNSeA3N"]' \
    --limit '3' \
    --offset '69' \
    --origin 'GooglePlay' \
    --userId '9sVloo4AthzlSu2q' \
    > test.out 2>&1
eval_tap $? 65 'QueryEntitlements' test.out

#- 66 QueryEntitlementsByItemIds
samples/cli/sample-apps Platform queryEntitlementsByItemIds \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --itemIds '["IqbSTVsJMcAmHL2W", "8eTN416E1uyy4Jrj", "xwuhyCbGAjYu4Ch3"]' \
    --limit '69' \
    --offset '26' \
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
    --withoutCache 'true' \
    > test.out 2>&1
eval_tap $? 68 'GetEntitlementConfigInfo' test.out

#- 69 GrantEntitlements
samples/cli/sample-apps Platform grantEntitlements \
    --namespace $AB_NAMESPACE \
    --body '{"entitlementGrantList": [{"collectionId": "B17hN1wHaHkrK4rD", "endDate": "1994-03-29T00:00:00Z", "grantedCode": "80dNtucc6uKP38KQ", "itemId": "0GMyl43xWG7XGhwP", "itemNamespace": "caIO76rIhRk1UAYV", "language": "bWg-372", "metadata": {"AtHWxcqIpgKmztpA": {}, "3tq5FiZoGI6xsLT1": {}, "S2RTpFWOUGFKV58R": {}}, "origin": "System", "quantity": 45, "region": "0jMrXrx0P9SxOVAF", "source": "PROMOTION", "startDate": "1974-02-08T00:00:00Z", "storeId": "a1fPB1lh2iI1M2AG"}, {"collectionId": "9qel78MUFq4HiAWm", "endDate": "1975-05-11T00:00:00Z", "grantedCode": "BO7mLFZfKRBl9NWM", "itemId": "k8zc5MrATojZsgL7", "itemNamespace": "wovS07u9UFSnL0NQ", "language": "sd-ptcs-507", "metadata": {"V5jXrh6CS7X47ekk": {}, "0oMo5iNQAO2ysxFK": {}, "u07mb1EpmgnuBZov": {}}, "origin": "Oculus", "quantity": 44, "region": "yVa76Aq2reeLFM3r", "source": "PURCHASE", "startDate": "1981-02-11T00:00:00Z", "storeId": "n4cRw2eQmRQYwJSw"}, {"collectionId": "33R1DprQxJlgcroK", "endDate": "1999-06-12T00:00:00Z", "grantedCode": "Tphwc1vxb7NJSbks", "itemId": "JQUty3333RXznfEH", "itemNamespace": "gtyhJFBwmvgkYI1N", "language": "wubt", "metadata": {"il0oDJDq6JGZS773": {}, "iGuF3LSvuHstUdGk": {}, "sXB6c67PxRBkhm2I": {}}, "origin": "Steam", "quantity": 84, "region": "FX0dI5WEWk33zFYG", "source": "ACHIEVEMENT", "startDate": "1982-12-15T00:00:00Z", "storeId": "PO9IzUxc8RZs3yAb"}], "userIds": ["8bNEHwMwCKM3CMyB", "Snl3rHakLWTxkuaM", "gLQoWUvovMAWLkwI"]}' \
    > test.out 2>&1
eval_tap $? 69 'GrantEntitlements' test.out

#- 70 RevokeEntitlements
samples/cli/sample-apps Platform revokeEntitlements \
    --namespace $AB_NAMESPACE \
    --body '["csM1DaDI5Fg5HFVL", "y5WLEwtuFjDuladk", "2QdOjvSdoo3YIU0Z"]' \
    > test.out 2>&1
eval_tap $? 70 'RevokeEntitlements' test.out

#- 71 GetEntitlement
samples/cli/sample-apps Platform getEntitlement \
    --entitlementId 'PaGj3BARtC5TPHUl' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 71 'GetEntitlement' test.out

#- 72 QueryFulfillmentHistories
samples/cli/sample-apps Platform queryFulfillmentHistories \
    --namespace $AB_NAMESPACE \
    --limit '92' \
    --offset '44' \
    --status 'SUCCESS' \
    --userId 'CzLQd8iUyfYa5g5A' \
    > test.out 2>&1
eval_tap $? 72 'QueryFulfillmentHistories' test.out

#- 73 QueryIAPClawbackHistory
samples/cli/sample-apps Platform queryIAPClawbackHistory \
    --namespace $AB_NAMESPACE \
    --endTime 'a62M8SnezjCSr1QG' \
    --eventType 'REFUND' \
    --externalOrderId 'h4YGsfbTc19ozAsY' \
    --limit '32' \
    --offset '69' \
    --startTime 'CmO12crgAdPxYmCj' \
    --status 'INIT' \
    --userId '6NucRcDBN3owdfXw' \
    > test.out 2>&1
eval_tap $? 73 'QueryIAPClawbackHistory' test.out

#- 74 MockPlayStationStreamEvent
samples/cli/sample-apps Platform mockPlayStationStreamEvent \
    --namespace $AB_NAMESPACE \
    --body '{"body": {"account": "jkOI3oSSXFREewL1", "additionalData": {"entitlement": [{"clientTransaction": [{"amountConsumed": 39, "clientTransactionId": "cEjMIVNokoBbXUjy"}, {"amountConsumed": 92, "clientTransactionId": "nWwhRdhRKLsFxGSe"}, {"amountConsumed": 9, "clientTransactionId": "Pf3DKNpx05XutaV5"}], "entitlementId": "EQahFjruUJLjYece", "usageCount": 58}, {"clientTransaction": [{"amountConsumed": 41, "clientTransactionId": "gJJYoP6juqHQrDkg"}, {"amountConsumed": 14, "clientTransactionId": "NWd40FSSvhIXG3Gg"}, {"amountConsumed": 94, "clientTransactionId": "dCIIIB4TDaXnGWfc"}], "entitlementId": "AUQS7aqkWX6h2ttJ", "usageCount": 46}, {"clientTransaction": [{"amountConsumed": 1, "clientTransactionId": "TBBR9kfmdCmhKXib"}, {"amountConsumed": 89, "clientTransactionId": "WXlbsy4uBSt1L3rE"}, {"amountConsumed": 42, "clientTransactionId": "YJG9d93Th5LD7RtQ"}], "entitlementId": "D4lPFZtIORa78pdc", "usageCount": 40}], "purpose": "PxFMEfJTpK9nx4to"}, "originalTitleName": "4KqG3xjoiuuiHyjj", "paymentProductSKU": "yXx9tOyEjJtn1G2e", "purchaseDate": "vEqaJF5ghijfEmpd", "sourceOrderItemId": "SNB9Bmai7fmpD4Gn", "titleName": "DXM7UUQRZDswKMx6"}, "eventDomain": "OzklYtIxNOhMK45X", "eventSource": "US74uWbWt2Vn2HNP", "eventType": "PBa1T1kNQayQYSsp", "eventVersion": 1, "id": "YUDC2ACAWwMMWrpL", "timestamp": "dSefxaN1iqEcw4jS"}' \
    > test.out 2>&1
eval_tap $? 74 'MockPlayStationStreamEvent' test.out

#- 75 MockXblClawbackEvent
samples/cli/sample-apps Platform mockXblClawbackEvent \
    --namespace $AB_NAMESPACE \
    --body '{"data": {"eventDate": "82cSKAiZiU2wjlIX", "eventState": "CvVSGxmIZTaA4ZTE", "lineItemId": "lGnQqsoI7KMFicS0", "orderId": "qGIRqKEDkK4lKdQ8", "productId": "t1r103Jutcz9GIuA", "productType": "aQknhYQquOHFG5oI", "purchasedDate": "NYOWu3trptiO4nyd", "sandboxId": "AFX5KCxlE6OnQkQ9", "skuId": "i3DEqLX9PxoWSWUW", "subscriptionData": {"consumedDurationInDays": 85, "dateTime": "WU0qvtIOSm3XtO9X", "durationInDays": 11, "recurrenceId": "HNHg56VnOuYc3Fxg"}}, "datacontenttype": "CGsrU1D6aJEe3MYn", "id": "BMyYeYsirE58raqP", "source": "bJt13kLfidiz6gam", "specVersion": "UTHIMJVWWSl92sIi", "subject": "BuA2vGfks4g4mL9z", "time": "1wsS8cg9YDRchAEq", "traceparent": "jTOPsggu5gKHCb5Q", "type": "2Az6RPjQiDvcy2OX"}' \
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
    --body '{"appAppleId": 66, "bundleId": "hse6oyCzJO6e1lH4", "issuerId": "7rZMgDwPVkgV586Y", "keyId": "v7hyIUZurK3TfRSP", "password": "llzZpCPuuA5uBXfg", "version": "V2"}' \
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
    --body '{"sandboxId": "aAWesk1O0pkKMNLk"}' \
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
    --body '{"applicationName": "2yDljz3PZc9wpaZj", "notificationTokenAudience": "TrRdJDZJtdPa4UHv", "notificationTokenEmail": "wsXtAvIiEOjc6AhG", "packageName": "Cue8ZqHPlw9vUQuk", "serviceAccountId": "zz4igHx9NNFje2mp"}' \
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
    --body '{"data": [{"itemIdentity": "ULUtkMRW7Ovp62wh", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"Seyf3pENNyWZolcj": "ErYr46rdChRPWH4X", "9eHAx0CGJGVVh0rn": "NOtVrdvQWG3J2Jg4", "0NSp3KlTCwlocO4Z": "ELJPxU0sdvV7tI9m"}}, {"itemIdentity": "o6l24qpiqM8jnCmj", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"eNUzHsQmNV6B9Ruv": "p480QvN7Jvr1rEW9", "K23fwBcerRZQmsIx": "IeBaKtsb3rrxgqZx", "6PjpVsNklucXEIhY": "THOZkq6XC1VbIGWP"}}, {"itemIdentity": "OaSJ8s3oW6nIppod", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"l14I8mCmuikRAXWr": "efbbKioqwis7pJRc", "2OhqsWBJ9jJUUQYF": "27ulQxZeg9cmzCBH", "P8nMXExzxII5h0fQ": "HCybxCy9pdzxIKZh"}}]}' \
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
    --body '{"appId": "xr8AW9cRtmkJCLaM", "appSecret": "Q7BjHLZl2qUUMwrE"}' \
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
    --body '{"backOfficeServerClientId": "iarSjTvibGx5c5ad", "backOfficeServerClientSecret": "WhCSX40s2rkoSHb3", "enableStreamJob": false, "environment": "pBKJ1O2b273upGiF", "streamName": "5K3dG5w2Sw7cOh0j", "streamPartnerName": "3seSeXc8jPMgTy7F"}' \
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
    --body '{"backOfficeServerClientId": "cATNMsmx7KPxyoWZ", "backOfficeServerClientSecret": "dXLYufNUr4U067Ji", "enableStreamJob": true, "environment": "KvD5rJd51AFFOCf2", "streamName": "k3pK1rglvn4qNpMd", "streamPartnerName": "NcTv61HLYcPE1WlY"}' \
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
    --body '{"appId": "EiiZsrMAKei3sZNB", "env": "SANDBOX", "publisherAuthenticationKey": "ZtGCExasZm5PVjaE", "syncMode": "TRANSACTION"}' \
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
    --body '{"clientId": "tTMBt2mRAvGq43vF", "clientSecret": "DMKEpCtzS0stIsuH", "organizationId": "jVxfRKCjfPj0UHUF"}' \
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
    --body '{"enableClawback": false, "entraAppClientId": "NFS7rYuofQXrK3Y2", "entraAppClientSecret": "X8D6R1VajZTm1f1o", "entraTenantId": "vMCLjB3qLjrGJAnC", "relyingPartyCert": "wSIw9ijDMwQjDH9M"}' \
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
    --password '8xf3Y9pn9t1IeQfH' \
    > test.out 2>&1
eval_tap $? 107 'UpdateXblBPCertFile' test.out

#- 108 QueryThirdPartyNotifications
samples/cli/sample-apps Platform queryThirdPartyNotifications \
    --namespace $AB_NAMESPACE \
    --endDate 'orzALK0o9iTJAwmE' \
    --externalId 'p4Nyw7fkugXjJazp' \
    --limit '24' \
    --offset '90' \
    --source 'PLAYSTATION' \
    --startDate 'zeuWam6YwmP7igNU' \
    --status 'ERROR' \
    --type '1OlbFKCYuNS71CEC' \
    > test.out 2>&1
eval_tap $? 108 'QueryThirdPartyNotifications' test.out

#- 109 QueryAbnormalTransactions
samples/cli/sample-apps Platform queryAbnormalTransactions \
    --namespace $AB_NAMESPACE \
    --limit '19' \
    --offset '2' \
    --orderId 'iy8zzPtG7ZSWjrnH' \
    --steamId '02OBfWElntUfANFw' \
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
    --body '{"env": "SANDBOX", "lastTime": "1978-06-29T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 111 'AdminResetSteamJobTime' test.out

#- 112 AdminRefundIAPOrder
samples/cli/sample-apps Platform adminRefundIAPOrder \
    --iapOrderNo 'HC1qvD03DSmG4s1z' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 112 'AdminRefundIAPOrder' test.out

#- 113 QuerySteamReportHistories
samples/cli/sample-apps Platform querySteamReportHistories \
    --namespace $AB_NAMESPACE \
    --limit '46' \
    --offset '43' \
    --orderId 'EAD78EyMcKb5TpUO' \
    --processStatus 'IGNORED' \
    --steamId 'Ma6svuXRfJiCkH1c' \
    > test.out 2>&1
eval_tap $? 113 'QuerySteamReportHistories' test.out

#- 114 QueryThirdPartySubscription
samples/cli/sample-apps Platform queryThirdPartySubscription \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --groupId 'wAxXGnjjzckqIVeG' \
    --limit '50' \
    --offset '49' \
    --platform 'STADIA' \
    --productId 'q2pEDekzC7XEL9co' \
    --userId 'YXWLn5P0X1CgXrF5' \
    > test.out 2>&1
eval_tap $? 114 'QueryThirdPartySubscription' test.out

#- 115 GetIAPOrderConsumeDetails
samples/cli/sample-apps Platform getIAPOrderConsumeDetails \
    --iapOrderNo 'eJLvKj3IVlk63iaq' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 115 'GetIAPOrderConsumeDetails' test.out

#- 116 DownloadInvoiceDetails
samples/cli/sample-apps Platform downloadInvoiceDetails \
    --namespace $AB_NAMESPACE \
    --endTime 'bJDa6LWA7q2IfjdC' \
    --feature 'lXhiYQUGUpXkaNSE' \
    --itemId 'VyViu78gloUX9Hwx' \
    --itemType 'APP' \
    --startTime 'vM2H3qET4sykzF5f' \
    > test.out 2>&1
eval_tap $? 116 'DownloadInvoiceDetails' test.out

#- 117 GenerateInvoiceSummary
samples/cli/sample-apps Platform generateInvoiceSummary \
    --namespace $AB_NAMESPACE \
    --endTime 'L0a2Ydm0XxziDMuC' \
    --feature 'fCqAeAYNrXCeXUEm' \
    --itemId 'EXiNGnp21WFm0bIh' \
    --itemType 'APP' \
    --startTime 'kMNu3JjScnKE9Gev' \
    > test.out 2>&1
eval_tap $? 117 'GenerateInvoiceSummary' test.out

#- 118 SyncInGameItem
samples/cli/sample-apps Platform syncInGameItem \
    --namespace $AB_NAMESPACE \
    --storeId 'ErAGtgQb4bhKzeKf' \
    --body '{"categoryPath": "8TA7EdgwDNVYU1IJ", "targetItemId": "RTnAl8Q9IfDbLlE4", "targetNamespace": "tfbDh4DD07NEXpt9"}' \
    > test.out 2>&1
eval_tap $? 118 'SyncInGameItem' test.out

#- 119 CreateItem
samples/cli/sample-apps Platform createItem \
    --namespace $AB_NAMESPACE \
    --storeId 'ts6gR3MiRZAZFoa9' \
    --body '{"appId": "VmWtDQo3bjLzznRs", "appType": "GAME", "baseAppId": "tJcbq1DtkVFLt3qQ", "boothName": "2GdCX9R6n5e7iDJ2", "categoryPath": "tfLc3oFbwleUy8VN", "clazz": "TF5HUckCKpGv8GRW", "displayOrder": 30, "entitlementType": "DURABLE", "ext": {"UapEPu9Q4F6Gxg8X": {}, "pgHF5XE4z6uJsnds": {}, "eDAqYeb4kXaa2mTB": {}}, "features": ["BeJPUDvP7l0pcwqI", "8JNv5bw8D1C1sJzW", "FS58EBbGrXNlfac8"], "flexible": true, "images": [{"as": "KJDo1U00Rmnpt20s", "caption": "8vAeUwycwZ2FOeh0", "height": 36, "imageUrl": "Sj11VoNrjTJNohzB", "smallImageUrl": "JyOO1inrjgZoMWjB", "width": 22}, {"as": "qerloL0JC9iycTJi", "caption": "fJsfZXkDSiwc5qKr", "height": 3, "imageUrl": "sjZNY7uhQSxoWzEv", "smallImageUrl": "vNMijcgQJ2cY2Czl", "width": 15}, {"as": "rdY6BAfpK70Yaze1", "caption": "n11iHRc8SP6xiSA8", "height": 78, "imageUrl": "WEnRjYSVftqZomiM", "smallImageUrl": "0LTNjZyXTMO4HKwT", "width": 32}], "inventoryConfig": {"customAttributes": {"jje3sTqPVc671qQ1": {}, "uQmWbYQtOmMoSdP5": {}, "u4CMREXCcZhRuyju": {}}, "serverCustomAttributes": {"2q9dnZQ4ykoAwTB2": {}, "C1GdQxJ6hx8A5g9X": {}, "T87QqUePdkcn3ZYO": {}}, "slotUsed": 1}, "itemIds": ["STcXFj1FuBVDdIx3", "1dffNyjBGDu23eeM", "w7lS13k0IRfRwUyQ"], "itemQty": {"sTvUvUGMtKFtFh7m": 37, "AxDIfGMieO944C3E": 45, "af8S9SR54XTc5EVY": 38}, "itemType": "BUNDLE", "listable": false, "localizations": {"n7fnxZUWTIBiSs3k": {"description": "kaS5MQ7UXV0cSjsE", "localExt": {"IXgIWLDcPa2Xx9V9": {}, "hYf9IP6XcSfBzWBC": {}, "FYyXxzOcs3t464Av": {}}, "longDescription": "1m7eVf3sSXVmhiyZ", "title": "ONTvQvr9w1fo4740"}, "KK5Qi7lFeRrNLq06": {"description": "b06015qpjEL9lp2b", "localExt": {"r5EO4xr01gV941yB": {}, "17F6MUYqE8T564NB": {}, "fzMeVDuc6MM8rKeH": {}}, "longDescription": "AU2zMsMuHbtZu1Rg", "title": "9ZQyB44vPKvtfxmC"}, "O83wrgHBTSY3hA8X": {"description": "aX4w9yhCpSnpVAag", "localExt": {"8JJc9cqldniOuTNm": {}, "QpIeDkCXPWLJX61a": {}, "NNWme6aWQyDw1sak": {}}, "longDescription": "8loBeWuPmjBt8DHD", "title": "iJ1g3xNf4e2fFsYV"}}, "lootBoxConfig": {"rewardCount": 25, "rewards": [{"lootBoxItems": [{"count": 78, "duration": 42, "endDate": "1986-11-30T00:00:00Z", "itemId": "AO4ZcLSe9tSB0vib", "itemSku": "F4F0k8qgoZzJvkru", "itemType": "X7K1gKZMlJQlOgao"}, {"count": 47, "duration": 47, "endDate": "1971-01-15T00:00:00Z", "itemId": "7lFcr9osXx5OT580", "itemSku": "VN3qFt7DLYHVePEy", "itemType": "uf9h2grRS9t5mhsF"}, {"count": 21, "duration": 19, "endDate": "1977-06-17T00:00:00Z", "itemId": "v4rAKnEl1q4jfSvZ", "itemSku": "PPl27f0qUAYx5HI3", "itemType": "cdsmDcbNKhMO4ey4"}], "name": "52Ck7fzdRKUkd1Ih", "odds": 0.06270903640422665, "type": "REWARD", "weight": 99}, {"lootBoxItems": [{"count": 28, "duration": 39, "endDate": "1977-03-13T00:00:00Z", "itemId": "kBbcj2yHSoG2AE46", "itemSku": "PVyVaaGQnCLziPow", "itemType": "xUJiLSTlWOmCUhwd"}, {"count": 73, "duration": 61, "endDate": "1999-04-13T00:00:00Z", "itemId": "ZidPKKx6NlFLVKoW", "itemSku": "Xr5MEr0AalQqyhbh", "itemType": "MIHvfxBpeqCSc2Xa"}, {"count": 33, "duration": 13, "endDate": "1981-01-27T00:00:00Z", "itemId": "qymRqm9TK4bhgBMt", "itemSku": "joO7VZJjp8Y8h8rQ", "itemType": "BRdblLumPSsBK575"}], "name": "y6nGMywAidjY8iSW", "odds": 0.04157519046972613, "type": "REWARD_GROUP", "weight": 98}, {"lootBoxItems": [{"count": 40, "duration": 60, "endDate": "1992-05-02T00:00:00Z", "itemId": "bo4PADJISbpJPgRp", "itemSku": "mjp7YK3fbrr58nTE", "itemType": "9IbRn6JXajvQMFta"}, {"count": 79, "duration": 99, "endDate": "1990-01-02T00:00:00Z", "itemId": "Tqk73MjLgn89B6Bi", "itemSku": "J8X9xdc9XEwbzPsZ", "itemType": "qO7AZBvCTYWM2J0G"}, {"count": 63, "duration": 44, "endDate": "1971-06-25T00:00:00Z", "itemId": "lVWmFCR73ZfdBePI", "itemSku": "6TeRKKQInwOp6XEI", "itemType": "sIC2wjhJKpcYN95D"}], "name": "EKRgXfHJRrHfVMxN", "odds": 0.5442610220448595, "type": "REWARD", "weight": 22}], "rollFunction": "DEFAULT"}, "maxCount": 76, "maxCountPerUser": 42, "name": "Ds4MUC1B2tAAuHzm", "optionBoxConfig": {"boxItems": [{"count": 50, "duration": 99, "endDate": "1994-04-05T00:00:00Z", "itemId": "cap1KK6wQAeNqW7f", "itemSku": "N6XNc7saVQpoDHYC", "itemType": "tcCN2K69LqiIf3Qg"}, {"count": 36, "duration": 10, "endDate": "1977-04-24T00:00:00Z", "itemId": "GY2q61YLNPFJb4fS", "itemSku": "vJa3PkEHBrsP2e8A", "itemType": "3z8eXh1HkVhQrK3s"}, {"count": 7, "duration": 79, "endDate": "1994-02-15T00:00:00Z", "itemId": "yllRoApoElI0gVvV", "itemSku": "LMnNl8KSnOX24aXU", "itemType": "UFuYQRhsJMyzqAq7"}]}, "purchasable": true, "recurring": {"cycle": "YEARLY", "fixedFreeDays": 85, "fixedTrialCycles": 7, "graceDays": 50}, "regionData": {"ILatd11PpKaOn4fz": [{"currencyCode": "iLCIDA4Wxvu89OHm", "currencyNamespace": "h6iI2AxlcjxtcyHd", "currencyType": "VIRTUAL", "discountAmount": 14, "discountExpireAt": "1993-09-18T00:00:00Z", "discountPercentage": 82, "discountPurchaseAt": "1993-07-27T00:00:00Z", "expireAt": "1986-05-03T00:00:00Z", "price": 72, "purchaseAt": "1994-07-19T00:00:00Z", "trialPrice": 31}, {"currencyCode": "fD9VyOuvhp3pGO6l", "currencyNamespace": "uSNp0Rq3iPHwkXb8", "currencyType": "REAL", "discountAmount": 34, "discountExpireAt": "1977-09-02T00:00:00Z", "discountPercentage": 64, "discountPurchaseAt": "1995-06-14T00:00:00Z", "expireAt": "1996-11-21T00:00:00Z", "price": 50, "purchaseAt": "1975-11-08T00:00:00Z", "trialPrice": 10}, {"currencyCode": "NwceAPY2RTj8iXjP", "currencyNamespace": "UqZpO8mBHLvcxtfT", "currencyType": "VIRTUAL", "discountAmount": 73, "discountExpireAt": "1972-08-30T00:00:00Z", "discountPercentage": 22, "discountPurchaseAt": "1995-06-21T00:00:00Z", "expireAt": "1990-12-13T00:00:00Z", "price": 92, "purchaseAt": "1977-03-21T00:00:00Z", "trialPrice": 7}], "CvR0feSlOX64WSWB": [{"currencyCode": "xpFkFX3XCL0fr267", "currencyNamespace": "tJqaF4Tags86Fezj", "currencyType": "REAL", "discountAmount": 31, "discountExpireAt": "1984-08-25T00:00:00Z", "discountPercentage": 52, "discountPurchaseAt": "1988-10-24T00:00:00Z", "expireAt": "1981-10-11T00:00:00Z", "price": 61, "purchaseAt": "1990-08-19T00:00:00Z", "trialPrice": 38}, {"currencyCode": "OTsSg4I3fZRQS67Q", "currencyNamespace": "IPOUY0Ot3PTdm9oT", "currencyType": "REAL", "discountAmount": 54, "discountExpireAt": "1998-02-16T00:00:00Z", "discountPercentage": 41, "discountPurchaseAt": "1984-10-18T00:00:00Z", "expireAt": "1985-09-29T00:00:00Z", "price": 95, "purchaseAt": "1992-06-28T00:00:00Z", "trialPrice": 70}, {"currencyCode": "MLkQ8U71bIznffqu", "currencyNamespace": "5P3GbcwfCOnKLSZC", "currencyType": "VIRTUAL", "discountAmount": 98, "discountExpireAt": "1991-05-21T00:00:00Z", "discountPercentage": 79, "discountPurchaseAt": "1998-12-22T00:00:00Z", "expireAt": "1982-07-29T00:00:00Z", "price": 39, "purchaseAt": "1984-11-17T00:00:00Z", "trialPrice": 27}], "gAopwdnM6RhEwZWl": [{"currencyCode": "rQibVGZ61xusxwxe", "currencyNamespace": "YOAsS4D28nDPe5xe", "currencyType": "VIRTUAL", "discountAmount": 55, "discountExpireAt": "1991-04-24T00:00:00Z", "discountPercentage": 33, "discountPurchaseAt": "1978-10-20T00:00:00Z", "expireAt": "1976-11-01T00:00:00Z", "price": 46, "purchaseAt": "1976-07-04T00:00:00Z", "trialPrice": 39}, {"currencyCode": "stVBFWRFYChzq0pR", "currencyNamespace": "JGarF23SkCQEqlOJ", "currencyType": "VIRTUAL", "discountAmount": 63, "discountExpireAt": "1991-11-14T00:00:00Z", "discountPercentage": 62, "discountPurchaseAt": "1990-04-15T00:00:00Z", "expireAt": "1983-05-15T00:00:00Z", "price": 33, "purchaseAt": "1992-04-21T00:00:00Z", "trialPrice": 81}, {"currencyCode": "IIQq4MuxUAlL3UeO", "currencyNamespace": "Ft3Ii9te5Bxs3bxm", "currencyType": "VIRTUAL", "discountAmount": 12, "discountExpireAt": "1993-08-16T00:00:00Z", "discountPercentage": 56, "discountPurchaseAt": "1982-09-16T00:00:00Z", "expireAt": "1994-03-31T00:00:00Z", "price": 71, "purchaseAt": "1985-10-16T00:00:00Z", "trialPrice": 33}]}, "saleConfig": {"currencyCode": "EBRtKB1oZbbfWGnu", "price": 67}, "seasonType": "TIER", "sectionExclusive": false, "sellable": false, "sku": "0Wpp0v1vl24T3laR", "stackable": false, "status": "ACTIVE", "tags": ["kcJ3fwNB93yJXi9s", "L1EF7MP4W2gkAcqU", "hf62uD0sfJWMQDpi"], "targetCurrencyCode": "Ud8D5vXB9tQi50t9", "targetNamespace": "egW0ZavAWoZNgp9a", "thumbnailUrl": "7QZcgGduyqFIScIe", "useCount": 91}' \
    > test.out 2>&1
eval_tap $? 119 'CreateItem' test.out

#- 120 GetItemByAppId
samples/cli/sample-apps Platform getItemByAppId \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --storeId 'mUJjW12qPnIuc1Ls' \
    --appId 'Adg3ge3EOUdwu34i' \
    > test.out 2>&1
eval_tap $? 120 'GetItemByAppId' test.out

#- 121 QueryItems
samples/cli/sample-apps Platform queryItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --appType 'DEMO' \
    --availableDate '5UburmOPDW9hu9Te' \
    --baseAppId 'HxCRQ4Tr9skzisOY' \
    --categoryPath 'J7Ip3RzLDUoCFliK' \
    --features 'phKsvutm4YVhXVER' \
    --includeSubCategoryItem 'true' \
    --itemType 'SEASON' \
    --limit '22' \
    --offset '73' \
    --region 'G10mGkc6NKxvqA4z' \
    --sortBy '["updatedAt:desc", "createdAt:desc", "updatedAt"]' \
    --storeId 'MtE4swEq0DuJYICu' \
    --tags 'EGPoaCONdeD2rNVj' \
    --targetNamespace '2GLAZCLbFthvRXQv' \
    > test.out 2>&1
eval_tap $? 121 'QueryItems' test.out

#- 122 ListBasicItemsByFeatures
samples/cli/sample-apps Platform listBasicItemsByFeatures \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --features '["dpz7xXKH0nhHzZL5", "bXOUy6Tkxk5OZGwf", "H4jkoYyThp3J9NI9"]' \
    > test.out 2>&1
eval_tap $? 122 'ListBasicItemsByFeatures' test.out

#- 123 GetItems
samples/cli/sample-apps Platform getItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --storeId 'XkKKAi5LS9P6KNLs' \
    --itemIds 'MWm6TPRgdDMcg6po' \
    > test.out 2>&1
eval_tap $? 123 'GetItems' test.out

#- 124 GetItemBySku
samples/cli/sample-apps Platform getItemBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId '1Zs3F6NrIJXAfGe9' \
    --sku 'QkM5X1vaPpQLcN8P' \
    > test.out 2>&1
eval_tap $? 124 'GetItemBySku' test.out

#- 125 GetLocaleItemBySku
samples/cli/sample-apps Platform getLocaleItemBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --language 'fGPEdfvwvprGcuvP' \
    --populateBundle 'false' \
    --region 'GRnZhxtqEY12SxaM' \
    --storeId 'CBlEE1PFaoNbFDUZ' \
    --sku 'NdgSwkuaXaBndbM6' \
    > test.out 2>&1
eval_tap $? 125 'GetLocaleItemBySku' test.out

#- 126 GetEstimatedPrice
samples/cli/sample-apps Platform getEstimatedPrice \
    --namespace $AB_NAMESPACE \
    --platform 'VqLF7vSIoxzWcyft' \
    --region '1nYybVwHieoaZfiq' \
    --storeId '0bR3HKsWN5yTTGky' \
    --itemIds '3o8eM1y46Q6oai0I' \
    --userId 'TtDe6KNT58mkV9tx' \
    > test.out 2>&1
eval_tap $? 126 'GetEstimatedPrice' test.out

#- 127 GetItemIdBySku
samples/cli/sample-apps Platform getItemIdBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'u53wX11qw9zP35mQ' \
    --sku 'mHG31kIGquecxf2e' \
    > test.out 2>&1
eval_tap $? 127 'GetItemIdBySku' test.out

#- 128 GetBulkItemIdBySkus
samples/cli/sample-apps Platform getBulkItemIdBySkus \
    --namespace $AB_NAMESPACE \
    --sku '["a38TGSQhAZGHmCPB", "o4nOZYMLNSqkAPx8", "NHHexEwXS00njkRL"]' \
    --storeId '3eKnO9WW1jmghZ7J' \
    > test.out 2>&1
eval_tap $? 128 'GetBulkItemIdBySkus' test.out

#- 129 BulkGetLocaleItems
samples/cli/sample-apps Platform bulkGetLocaleItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --language 'xXXfSRtRuyruQJdr' \
    --region '2F12KbuvZUiq2eeL' \
    --storeId 'ohkiOLQ26Cmm2yrU' \
    --itemIds 'Nnr12nNLLIL4TQhr' \
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
    --platform 'Ek7BWKG9MjGp42R4' \
    --userId 'dIxcrRZBGHnnsj2w' \
    --body '{"itemIds": ["Ja25vThJZoR2fx2m", "qAwKNeIQ4pzBpnQV", "ANsAFv27INL0pIKj"]}' \
    > test.out 2>&1
eval_tap $? 131 'ValidateItemPurchaseCondition' test.out

#- 132 BulkUpdateRegionData
samples/cli/sample-apps Platform bulkUpdateRegionData \
    --namespace $AB_NAMESPACE \
    --storeId 'H7iRn6HOkauWyXpu' \
    --body '{"changes": [{"itemIdentities": ["DMrIOuvf20OZykCc", "k9jhQbrQCUg1kV2a", "YrDOca0ssv6WmUwA"], "itemIdentityType": "ITEM_ID", "regionData": {"ExvjzyCUHWtaher1": [{"currencyCode": "PN3mr7rUnYjpIzYR", "currencyNamespace": "wQ6wlrQFeJKf11m8", "currencyType": "REAL", "discountAmount": 53, "discountExpireAt": "1990-10-25T00:00:00Z", "discountPercentage": 30, "discountPurchaseAt": "1999-08-01T00:00:00Z", "discountedPrice": 63, "expireAt": "1978-12-11T00:00:00Z", "price": 18, "purchaseAt": "1975-05-16T00:00:00Z", "trialPrice": 30}, {"currencyCode": "6xbLaX2o3tPkP5Mb", "currencyNamespace": "OlO93OIGBsDSjXcg", "currencyType": "REAL", "discountAmount": 6, "discountExpireAt": "1973-05-14T00:00:00Z", "discountPercentage": 65, "discountPurchaseAt": "1980-10-28T00:00:00Z", "discountedPrice": 45, "expireAt": "1994-07-27T00:00:00Z", "price": 70, "purchaseAt": "1987-04-29T00:00:00Z", "trialPrice": 39}, {"currencyCode": "VXyYG7Zlvh6BQaFe", "currencyNamespace": "z0245MX2F0aHfM3f", "currencyType": "REAL", "discountAmount": 91, "discountExpireAt": "1978-08-11T00:00:00Z", "discountPercentage": 86, "discountPurchaseAt": "1996-02-02T00:00:00Z", "discountedPrice": 49, "expireAt": "1991-11-12T00:00:00Z", "price": 1, "purchaseAt": "1977-07-14T00:00:00Z", "trialPrice": 67}], "giaDgkr0QkmrfX4B": [{"currencyCode": "ertdn8qQopSiqGCv", "currencyNamespace": "zL3hQNkNwGvCtoXA", "currencyType": "REAL", "discountAmount": 47, "discountExpireAt": "1980-12-13T00:00:00Z", "discountPercentage": 26, "discountPurchaseAt": "1976-06-09T00:00:00Z", "discountedPrice": 14, "expireAt": "1995-08-07T00:00:00Z", "price": 48, "purchaseAt": "1992-07-08T00:00:00Z", "trialPrice": 19}, {"currencyCode": "qOXLzPJRXHyH7mK8", "currencyNamespace": "qpWATPbN6aWDK94I", "currencyType": "REAL", "discountAmount": 89, "discountExpireAt": "1990-06-30T00:00:00Z", "discountPercentage": 62, "discountPurchaseAt": "1992-05-22T00:00:00Z", "discountedPrice": 10, "expireAt": "1982-09-02T00:00:00Z", "price": 16, "purchaseAt": "1976-07-10T00:00:00Z", "trialPrice": 43}, {"currencyCode": "oMlNkliYovLiNECu", "currencyNamespace": "B4vpo8BKwCOnlcJq", "currencyType": "REAL", "discountAmount": 55, "discountExpireAt": "1992-01-16T00:00:00Z", "discountPercentage": 79, "discountPurchaseAt": "1995-11-20T00:00:00Z", "discountedPrice": 58, "expireAt": "1988-08-09T00:00:00Z", "price": 16, "purchaseAt": "1974-09-10T00:00:00Z", "trialPrice": 2}], "dRxr5rW8azSgFhSX": [{"currencyCode": "L7gsuAt0emLGOFB0", "currencyNamespace": "jzhdKvl8NzSiehxD", "currencyType": "VIRTUAL", "discountAmount": 77, "discountExpireAt": "1974-04-14T00:00:00Z", "discountPercentage": 90, "discountPurchaseAt": "1977-09-08T00:00:00Z", "discountedPrice": 21, "expireAt": "1975-04-04T00:00:00Z", "price": 77, "purchaseAt": "1976-05-31T00:00:00Z", "trialPrice": 14}, {"currencyCode": "8npK5eWLOiMnSxHB", "currencyNamespace": "aVajTRdnOmt6Xt7o", "currencyType": "REAL", "discountAmount": 45, "discountExpireAt": "1996-01-08T00:00:00Z", "discountPercentage": 19, "discountPurchaseAt": "1994-06-10T00:00:00Z", "discountedPrice": 18, "expireAt": "1976-05-24T00:00:00Z", "price": 75, "purchaseAt": "1988-07-03T00:00:00Z", "trialPrice": 95}, {"currencyCode": "WX3RJy2RoQgEdLV2", "currencyNamespace": "CZtxefTBuNS7NMtH", "currencyType": "VIRTUAL", "discountAmount": 50, "discountExpireAt": "1981-05-19T00:00:00Z", "discountPercentage": 46, "discountPurchaseAt": "1977-11-15T00:00:00Z", "discountedPrice": 25, "expireAt": "1987-09-27T00:00:00Z", "price": 0, "purchaseAt": "1973-02-14T00:00:00Z", "trialPrice": 7}]}}, {"itemIdentities": ["mAH49gCPNMLa15Ie", "xUjoVJWEhWT6m4h2", "NsYdUotaUltPxV9G"], "itemIdentityType": "ITEM_ID", "regionData": {"snOcMYbMvOYpWN81": [{"currencyCode": "QHdDJDHRrp9Zzi4X", "currencyNamespace": "nT0fKbQ2rNQeOy4i", "currencyType": "REAL", "discountAmount": 97, "discountExpireAt": "1999-10-16T00:00:00Z", "discountPercentage": 84, "discountPurchaseAt": "1998-10-05T00:00:00Z", "discountedPrice": 45, "expireAt": "1987-09-19T00:00:00Z", "price": 89, "purchaseAt": "1976-05-06T00:00:00Z", "trialPrice": 0}, {"currencyCode": "gCuqrrx4jXXeUjw1", "currencyNamespace": "rBRDeEtlNHA9yHVG", "currencyType": "REAL", "discountAmount": 59, "discountExpireAt": "1995-11-28T00:00:00Z", "discountPercentage": 75, "discountPurchaseAt": "1979-01-24T00:00:00Z", "discountedPrice": 97, "expireAt": "1986-02-15T00:00:00Z", "price": 33, "purchaseAt": "1982-03-20T00:00:00Z", "trialPrice": 38}, {"currencyCode": "xQzBcD4sCyG4jEoc", "currencyNamespace": "BsTwCWgk1bohdLlt", "currencyType": "REAL", "discountAmount": 26, "discountExpireAt": "1986-11-29T00:00:00Z", "discountPercentage": 88, "discountPurchaseAt": "1981-10-14T00:00:00Z", "discountedPrice": 70, "expireAt": "1988-11-29T00:00:00Z", "price": 45, "purchaseAt": "1994-10-03T00:00:00Z", "trialPrice": 26}], "4ot3z3V5RKb0fAls": [{"currencyCode": "v7AICpSTzgWTxgpl", "currencyNamespace": "rm2jG0drBf8jXohg", "currencyType": "VIRTUAL", "discountAmount": 97, "discountExpireAt": "1980-01-16T00:00:00Z", "discountPercentage": 9, "discountPurchaseAt": "1973-05-05T00:00:00Z", "discountedPrice": 88, "expireAt": "1992-06-16T00:00:00Z", "price": 15, "purchaseAt": "1974-07-08T00:00:00Z", "trialPrice": 56}, {"currencyCode": "yOcNhN4uGmcgec04", "currencyNamespace": "06plS4kTcAplzKdH", "currencyType": "REAL", "discountAmount": 43, "discountExpireAt": "1991-03-05T00:00:00Z", "discountPercentage": 24, "discountPurchaseAt": "1974-06-29T00:00:00Z", "discountedPrice": 24, "expireAt": "1996-06-26T00:00:00Z", "price": 48, "purchaseAt": "1972-10-29T00:00:00Z", "trialPrice": 90}, {"currencyCode": "a95xJUpyh98kuljQ", "currencyNamespace": "vRm3p8SUMsfZvIY9", "currencyType": "REAL", "discountAmount": 84, "discountExpireAt": "1990-02-17T00:00:00Z", "discountPercentage": 38, "discountPurchaseAt": "1981-03-18T00:00:00Z", "discountedPrice": 11, "expireAt": "1985-03-09T00:00:00Z", "price": 39, "purchaseAt": "1982-12-21T00:00:00Z", "trialPrice": 72}], "pUkGFPKDGPGcGbpE": [{"currencyCode": "NQsFF0Ia48s0WSFE", "currencyNamespace": "YW5QsOW0Rmaikn0y", "currencyType": "REAL", "discountAmount": 14, "discountExpireAt": "1994-07-06T00:00:00Z", "discountPercentage": 38, "discountPurchaseAt": "1981-09-03T00:00:00Z", "discountedPrice": 77, "expireAt": "1972-10-18T00:00:00Z", "price": 79, "purchaseAt": "1977-08-12T00:00:00Z", "trialPrice": 42}, {"currencyCode": "mFqMccqVhjwx7lBn", "currencyNamespace": "uey3PCIToaUGEdvA", "currencyType": "VIRTUAL", "discountAmount": 6, "discountExpireAt": "1987-09-12T00:00:00Z", "discountPercentage": 95, "discountPurchaseAt": "1975-03-25T00:00:00Z", "discountedPrice": 48, "expireAt": "1976-07-27T00:00:00Z", "price": 71, "purchaseAt": "1995-07-29T00:00:00Z", "trialPrice": 22}, {"currencyCode": "zgAeQCNSLX06J4ql", "currencyNamespace": "MdAr8rxtC1q3hEHr", "currencyType": "REAL", "discountAmount": 64, "discountExpireAt": "1972-02-12T00:00:00Z", "discountPercentage": 94, "discountPurchaseAt": "1992-11-28T00:00:00Z", "discountedPrice": 43, "expireAt": "1984-03-12T00:00:00Z", "price": 70, "purchaseAt": "1995-03-28T00:00:00Z", "trialPrice": 45}]}}, {"itemIdentities": ["3f5GPRLyQ0uNmins", "tquaEPiw0jzUQERI", "i1b1cQ5dctSvc8uQ"], "itemIdentityType": "ITEM_SKU", "regionData": {"Q3cUHrdHaA0nrqzl": [{"currencyCode": "hD6yxfl4D59bBzd1", "currencyNamespace": "PcTzHn1Z2ecjheJL", "currencyType": "VIRTUAL", "discountAmount": 4, "discountExpireAt": "1981-08-24T00:00:00Z", "discountPercentage": 12, "discountPurchaseAt": "1975-10-21T00:00:00Z", "discountedPrice": 29, "expireAt": "1975-12-07T00:00:00Z", "price": 14, "purchaseAt": "1990-05-12T00:00:00Z", "trialPrice": 27}, {"currencyCode": "oL86FhiDCFpdHyVE", "currencyNamespace": "5V2OrdgG75XH94mC", "currencyType": "VIRTUAL", "discountAmount": 70, "discountExpireAt": "1983-10-23T00:00:00Z", "discountPercentage": 99, "discountPurchaseAt": "1998-07-17T00:00:00Z", "discountedPrice": 0, "expireAt": "1993-04-08T00:00:00Z", "price": 12, "purchaseAt": "1997-11-04T00:00:00Z", "trialPrice": 70}, {"currencyCode": "qVxo6vNraHLNicsE", "currencyNamespace": "QyCKLeqZn3W1RFtm", "currencyType": "REAL", "discountAmount": 57, "discountExpireAt": "1979-12-07T00:00:00Z", "discountPercentage": 93, "discountPurchaseAt": "1999-01-05T00:00:00Z", "discountedPrice": 99, "expireAt": "1979-07-25T00:00:00Z", "price": 37, "purchaseAt": "1982-08-27T00:00:00Z", "trialPrice": 0}], "OufNZ6hIPq6JNbpY": [{"currencyCode": "WuITvrQZsuxsOHWN", "currencyNamespace": "sPZX51pkCpN3bZ8d", "currencyType": "VIRTUAL", "discountAmount": 57, "discountExpireAt": "1977-08-15T00:00:00Z", "discountPercentage": 77, "discountPurchaseAt": "1989-10-19T00:00:00Z", "discountedPrice": 43, "expireAt": "1995-01-10T00:00:00Z", "price": 96, "purchaseAt": "1997-08-22T00:00:00Z", "trialPrice": 96}, {"currencyCode": "3xqJyz0spVx6qNsb", "currencyNamespace": "xt3yYq3mpvaLsOOi", "currencyType": "VIRTUAL", "discountAmount": 9, "discountExpireAt": "1987-07-14T00:00:00Z", "discountPercentage": 95, "discountPurchaseAt": "1991-04-09T00:00:00Z", "discountedPrice": 87, "expireAt": "1996-07-15T00:00:00Z", "price": 44, "purchaseAt": "1984-11-18T00:00:00Z", "trialPrice": 61}, {"currencyCode": "DjvHbyUljQ36nej8", "currencyNamespace": "i3R2jol9l1niJvHH", "currencyType": "VIRTUAL", "discountAmount": 72, "discountExpireAt": "1989-12-25T00:00:00Z", "discountPercentage": 53, "discountPurchaseAt": "1972-12-13T00:00:00Z", "discountedPrice": 53, "expireAt": "1999-01-22T00:00:00Z", "price": 20, "purchaseAt": "1978-11-23T00:00:00Z", "trialPrice": 66}], "1GQcp364GfaBvPZY": [{"currencyCode": "UPLOfvSeQVcFBenR", "currencyNamespace": "KvN5CVbKQkqDA68I", "currencyType": "VIRTUAL", "discountAmount": 88, "discountExpireAt": "1980-05-11T00:00:00Z", "discountPercentage": 23, "discountPurchaseAt": "1993-02-09T00:00:00Z", "discountedPrice": 24, "expireAt": "1986-05-08T00:00:00Z", "price": 38, "purchaseAt": "1980-06-13T00:00:00Z", "trialPrice": 19}, {"currencyCode": "HgZT1qyTBSHhRgFn", "currencyNamespace": "brwYj74UbnV99Cx6", "currencyType": "VIRTUAL", "discountAmount": 5, "discountExpireAt": "1989-07-29T00:00:00Z", "discountPercentage": 99, "discountPurchaseAt": "1997-12-27T00:00:00Z", "discountedPrice": 68, "expireAt": "1972-10-08T00:00:00Z", "price": 33, "purchaseAt": "1987-03-20T00:00:00Z", "trialPrice": 47}, {"currencyCode": "ssixpmqaLTrr5rtj", "currencyNamespace": "WxkXCQPTe5V17sz1", "currencyType": "VIRTUAL", "discountAmount": 89, "discountExpireAt": "1982-11-12T00:00:00Z", "discountPercentage": 32, "discountPurchaseAt": "1990-11-15T00:00:00Z", "discountedPrice": 27, "expireAt": "1995-08-26T00:00:00Z", "price": 75, "purchaseAt": "1990-03-08T00:00:00Z", "trialPrice": 89}]}}]}' \
    > test.out 2>&1
eval_tap $? 132 'BulkUpdateRegionData' test.out

#- 133 SearchItems
samples/cli/sample-apps Platform searchItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --itemType 'OPTIONBOX' \
    --limit '63' \
    --offset '67' \
    --sortBy 'daD2UKk5bD4S6rlQ' \
    --storeId 'fyF19My7LgeHVlYD' \
    --keyword 'QlFo59cTJw8CtSdk' \
    --language '8o1MZDMg821yIUB0' \
    > test.out 2>&1
eval_tap $? 133 'SearchItems' test.out

#- 134 QueryUncategorizedItems
samples/cli/sample-apps Platform queryUncategorizedItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --limit '78' \
    --offset '71' \
    --sortBy '["name:desc", "createdAt:desc", "name:asc"]' \
    --storeId 'QKjqg8hxYUtKlpoJ' \
    > test.out 2>&1
eval_tap $? 134 'QueryUncategorizedItems' test.out

#- 135 GetItem
samples/cli/sample-apps Platform getItem \
    --itemId 'M0gOCeduHTqgDraH' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --storeId 'bdHDccVjDN9ScSB8' \
    > test.out 2>&1
eval_tap $? 135 'GetItem' test.out

#- 136 UpdateItem
samples/cli/sample-apps Platform updateItem \
    --itemId 'f4ptE4XYqtkPt3o6' \
    --namespace $AB_NAMESPACE \
    --storeId 'tgGCQ1gaXbES5cRn' \
    --body '{"appId": "kRfoDChAGYsDTsQS", "appType": "SOFTWARE", "baseAppId": "b637PRisgyYPb0lU", "boothName": "cFRmGev7Jq4Ox6OM", "categoryPath": "aCYBXqmPxFdJOb2u", "clazz": "BYSwhc50MsGOYC6R", "displayOrder": 9, "entitlementType": "CONSUMABLE", "ext": {"s6Qherth0VBr3Hyk": {}, "OyUIQ14wU8mKtRv6": {}, "JzwKaOI79lJ77O2R": {}}, "features": ["rL8uFWGCt10HwRRH", "mxepZTWQqi9ScNzc", "A2EQsk1h5JbbANi1"], "flexible": false, "images": [{"as": "y3ZJxdmQuZSplcbp", "caption": "M8U3ylwVl4ugIddJ", "height": 69, "imageUrl": "kpPDx3VW4iw2R7A4", "smallImageUrl": "R63oK6tjkiycjHWQ", "width": 99}, {"as": "z5Rdi0auD7kc1CbM", "caption": "2jgydrVkur2olq5b", "height": 98, "imageUrl": "EbCfzxDVVv1wWawH", "smallImageUrl": "Rp5ohEvnyGhu9XD6", "width": 60}, {"as": "dxXvjz6YKZWdWjdM", "caption": "T83NNVjeW5IN9UL5", "height": 6, "imageUrl": "OYwBFt1ZRU0NQ4Zb", "smallImageUrl": "PbKwszB8cWSzJgSe", "width": 88}], "inventoryConfig": {"customAttributes": {"0KH4Hbm1liDYcTZs": {}, "DxALdBu1afPfaphy": {}, "8PonLk6QYphpDmi2": {}}, "serverCustomAttributes": {"c6okHmeo27oXtmpG": {}, "T7lUuimjDkhMScEP": {}, "6kt64xC0KgdsOWHT": {}}, "slotUsed": 46}, "itemIds": ["YJXVoOL4mXEFcR8C", "qhNfCA7b13CXBvEe", "dXgIcse41w5TcfpP"], "itemQty": {"oiLNo89E3YkU9z22": 46, "G986ohQWVjc83Icw": 24, "bd8aDOtxbFoH55we": 60}, "itemType": "BUNDLE", "listable": true, "localizations": {"CuvcVKWzE5PIljK0": {"description": "rXnEBTPOYfWLZLwP", "localExt": {"EA7QzIaJV36ztXjv": {}, "tUp8dCQuPEwJoEvS": {}, "KxmueFEMWEwic8fJ": {}}, "longDescription": "w5IKirAmqexJpr9I", "title": "xc6qYBVpR8ITHPMe"}, "8SEbq6GXgd72G7lc": {"description": "o4eXVtS52xKFepOV", "localExt": {"i1Jcsdcw4RKSmSFL": {}, "MI1HlQ5QcCftXDs9": {}, "JZPRHSsgZBcq98X4": {}}, "longDescription": "CgDlnrHclTgKzfU3", "title": "DWQBiAyLck84BBfr"}, "FoflMpOP6GXaANaT": {"description": "YR3U35jMqexPzT7g", "localExt": {"2z3ljw8JtpnASJ01": {}, "0Q7V0t3iA6Rgix3k": {}, "sD91711ajMeyhgOK": {}}, "longDescription": "XlNHZUJTsKVWVovC", "title": "Rnf7y17vocmjSgYJ"}}, "lootBoxConfig": {"rewardCount": 33, "rewards": [{"lootBoxItems": [{"count": 90, "duration": 76, "endDate": "1984-12-20T00:00:00Z", "itemId": "CO3BvRImSMwiJVWh", "itemSku": "FEk9vg9fgMkBn1Uj", "itemType": "HXc6CBhlx8IGiJiL"}, {"count": 70, "duration": 68, "endDate": "1976-10-07T00:00:00Z", "itemId": "IG0C35tz1tEX3Utf", "itemSku": "5IB6Z0tgtIoK5yc5", "itemType": "5DMmqoNpX7OtLG4W"}, {"count": 70, "duration": 56, "endDate": "1978-05-09T00:00:00Z", "itemId": "vpkUEDZ6pS6Ve1eZ", "itemSku": "LepMTomFi7FvtqkU", "itemType": "jkrYKUD8Wfx4T7JD"}], "name": "belPYLckdLHauoH5", "odds": 0.1333995513506675, "type": "REWARD", "weight": 49}, {"lootBoxItems": [{"count": 18, "duration": 3, "endDate": "1982-05-18T00:00:00Z", "itemId": "V9R1NyVduduimNhf", "itemSku": "woucBttiriXhUCnw", "itemType": "o9DCpJOykaOqSidU"}, {"count": 86, "duration": 84, "endDate": "1989-07-31T00:00:00Z", "itemId": "L6IZjqHIw7G8DXjp", "itemSku": "WXDeUl33iuRJNK3x", "itemType": "eheXQ7rLp514kEoQ"}, {"count": 4, "duration": 32, "endDate": "1994-09-01T00:00:00Z", "itemId": "he8IxuIXt4F4mgye", "itemSku": "uxKWzqGAJmvzVNNV", "itemType": "yG0ZLJw2MQHn1CkR"}], "name": "dO3L9QesFFcRF6pm", "odds": 0.3892954467798596, "type": "REWARD", "weight": 80}, {"lootBoxItems": [{"count": 47, "duration": 28, "endDate": "1981-12-25T00:00:00Z", "itemId": "2c2HFWGz3R9O7AOD", "itemSku": "z1vqjVKUEm4tH5Co", "itemType": "UgLSs6yc9vfTUvpx"}, {"count": 46, "duration": 63, "endDate": "1984-11-17T00:00:00Z", "itemId": "C6iTg5vXfKsOZpb4", "itemSku": "KCDLm52G5IGu090h", "itemType": "S5JTF6NaST0JpH1B"}, {"count": 93, "duration": 66, "endDate": "1991-04-04T00:00:00Z", "itemId": "1pzZmRR5Tg0EpXik", "itemSku": "bDRg34iC9Q9qSjEG", "itemType": "IzUddNBDxbixO3Ht"}], "name": "8at0J8tazXFqXsJq", "odds": 0.8021338829102727, "type": "REWARD", "weight": 77}], "rollFunction": "DEFAULT"}, "maxCount": 2, "maxCountPerUser": 79, "name": "80AEpjTgUlOhhqDQ", "optionBoxConfig": {"boxItems": [{"count": 13, "duration": 85, "endDate": "1977-11-01T00:00:00Z", "itemId": "vPsaFbj1OZOnMptR", "itemSku": "lbY2UCnxhRW9k84s", "itemType": "c1OFazSf08abUzHs"}, {"count": 36, "duration": 85, "endDate": "1988-10-20T00:00:00Z", "itemId": "hSm36uNVIwAJunLF", "itemSku": "ZdlZPhIEOv8yZSwu", "itemType": "WIjx80pj0oOt99Zl"}, {"count": 63, "duration": 72, "endDate": "1985-08-27T00:00:00Z", "itemId": "7jCy2VqpCNVOctmI", "itemSku": "9i5saFxAdMLo1SZH", "itemType": "smb5xWLCdObu4QtT"}]}, "purchasable": true, "recurring": {"cycle": "YEARLY", "fixedFreeDays": 32, "fixedTrialCycles": 38, "graceDays": 79}, "regionData": {"t1ZSgXLGZJ9PitpJ": [{"currencyCode": "kWPPMqoCdfYm43n2", "currencyNamespace": "Zj3xpBGWhJNYVlxP", "currencyType": "VIRTUAL", "discountAmount": 25, "discountExpireAt": "1995-08-30T00:00:00Z", "discountPercentage": 82, "discountPurchaseAt": "1991-11-26T00:00:00Z", "expireAt": "1984-08-13T00:00:00Z", "price": 69, "purchaseAt": "1983-10-20T00:00:00Z", "trialPrice": 70}, {"currencyCode": "U5p4XWJ0jdzbtR4m", "currencyNamespace": "9J5WGMSMXml7vTha", "currencyType": "VIRTUAL", "discountAmount": 12, "discountExpireAt": "1981-06-30T00:00:00Z", "discountPercentage": 1, "discountPurchaseAt": "1980-06-20T00:00:00Z", "expireAt": "1994-06-15T00:00:00Z", "price": 39, "purchaseAt": "1977-05-20T00:00:00Z", "trialPrice": 11}, {"currencyCode": "FFJuh48pbULWya7P", "currencyNamespace": "1XOObRHVpJA5zILT", "currencyType": "VIRTUAL", "discountAmount": 61, "discountExpireAt": "1996-12-25T00:00:00Z", "discountPercentage": 27, "discountPurchaseAt": "1985-09-22T00:00:00Z", "expireAt": "1990-09-10T00:00:00Z", "price": 27, "purchaseAt": "1975-08-04T00:00:00Z", "trialPrice": 47}], "mQ7site6pP25aZ4O": [{"currencyCode": "ov0jUc8zCbO2kvKw", "currencyNamespace": "MhnaDbzITxomb0eF", "currencyType": "VIRTUAL", "discountAmount": 45, "discountExpireAt": "1990-10-31T00:00:00Z", "discountPercentage": 33, "discountPurchaseAt": "1978-11-25T00:00:00Z", "expireAt": "1974-07-10T00:00:00Z", "price": 87, "purchaseAt": "1988-05-18T00:00:00Z", "trialPrice": 61}, {"currencyCode": "dFSOc8jaOQVAB2ub", "currencyNamespace": "cBvuJrEzEdCi2Oga", "currencyType": "VIRTUAL", "discountAmount": 49, "discountExpireAt": "1984-03-09T00:00:00Z", "discountPercentage": 8, "discountPurchaseAt": "1991-07-31T00:00:00Z", "expireAt": "1992-12-02T00:00:00Z", "price": 28, "purchaseAt": "1980-08-11T00:00:00Z", "trialPrice": 18}, {"currencyCode": "E9cR31hNrnkaXNmV", "currencyNamespace": "Jm6UOoh5dAJ2sbWu", "currencyType": "VIRTUAL", "discountAmount": 40, "discountExpireAt": "1989-07-28T00:00:00Z", "discountPercentage": 49, "discountPurchaseAt": "1971-10-05T00:00:00Z", "expireAt": "1989-03-30T00:00:00Z", "price": 43, "purchaseAt": "1973-04-02T00:00:00Z", "trialPrice": 44}], "OZmmD8DkmuL9MTxl": [{"currencyCode": "d0znO4zftnZ4dZ7w", "currencyNamespace": "aVjGh5ppp3xOQoeD", "currencyType": "REAL", "discountAmount": 14, "discountExpireAt": "1986-04-15T00:00:00Z", "discountPercentage": 70, "discountPurchaseAt": "1985-08-05T00:00:00Z", "expireAt": "1987-01-01T00:00:00Z", "price": 92, "purchaseAt": "1984-10-11T00:00:00Z", "trialPrice": 25}, {"currencyCode": "vgpSCtEoPt72PEEi", "currencyNamespace": "IwFMQBLlzAcYjApi", "currencyType": "VIRTUAL", "discountAmount": 96, "discountExpireAt": "1979-06-03T00:00:00Z", "discountPercentage": 18, "discountPurchaseAt": "1978-02-07T00:00:00Z", "expireAt": "1987-08-08T00:00:00Z", "price": 38, "purchaseAt": "1996-03-13T00:00:00Z", "trialPrice": 20}, {"currencyCode": "MFbrS55HHytsBGz8", "currencyNamespace": "fuNqy5i17MOLJwoV", "currencyType": "REAL", "discountAmount": 53, "discountExpireAt": "1980-11-06T00:00:00Z", "discountPercentage": 46, "discountPurchaseAt": "1992-08-05T00:00:00Z", "expireAt": "1974-03-29T00:00:00Z", "price": 24, "purchaseAt": "1973-06-27T00:00:00Z", "trialPrice": 64}]}, "saleConfig": {"currencyCode": "fJxfnvMGFsz6IqoK", "price": 6}, "seasonType": "PASS", "sectionExclusive": false, "sellable": true, "sku": "6YKuSZc1Q8ZCwVOb", "stackable": true, "status": "ACTIVE", "tags": ["8xU9CYclraXuFukj", "iX0lPxKM0o7SqGLa", "hFgzUTbCZNNy6kQT"], "targetCurrencyCode": "9ybN6kxfIwvYHejA", "targetNamespace": "2ENXWUpRLTyCo9Fh", "thumbnailUrl": "jxa3iiGToDeJlbEs", "useCount": 98}' \
    > test.out 2>&1
eval_tap $? 136 'UpdateItem' test.out

#- 137 DeleteItem
samples/cli/sample-apps Platform deleteItem \
    --itemId 'rttCnJnDzXN9kmfX' \
    --namespace $AB_NAMESPACE \
    --featuresToCheck '["CAMPAIGN", "DLC", "ENTITLEMENT"]' \
    --force 'true' \
    --storeId 'xVHotvzQipPUEo6o' \
    > test.out 2>&1
eval_tap $? 137 'DeleteItem' test.out

#- 138 AcquireItem
samples/cli/sample-apps Platform acquireItem \
    --itemId '3StJ13VgnC2FzU2R' \
    --namespace $AB_NAMESPACE \
    --body '{"count": 53, "orderNo": "djuGyougEkisaUjJ"}' \
    > test.out 2>&1
eval_tap $? 138 'AcquireItem' test.out

#- 139 GetApp
samples/cli/sample-apps Platform getApp \
    --itemId 'c5vCJ97VfdTp4jdC' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId '6MmsuJosdAD6pc65' \
    > test.out 2>&1
eval_tap $? 139 'GetApp' test.out

#- 140 UpdateApp
samples/cli/sample-apps Platform updateApp \
    --itemId 'AOnXeAjOP4hCcRnX' \
    --namespace $AB_NAMESPACE \
    --storeId 'WOMr3SntmTUR8NeU' \
    --body '{"carousel": [{"alt": "pj4IcAUOvJXZo6l1", "previewUrl": "7TYxYBB53aNZaWcp", "thumbnailUrl": "wemdHchwzWeLGBPd", "type": "image", "url": "07tpHnFgE6Qmxb2Z", "videoSource": "vimeo"}, {"alt": "RKWRRaFGQ5PgQTSP", "previewUrl": "9sEc9AgbMz0HXO5m", "thumbnailUrl": "PbljZMus06PUY5kH", "type": "video", "url": "ukT9FHf9nRL3XwA6", "videoSource": "generic"}, {"alt": "StxuAeD6u1KkuhdW", "previewUrl": "vtHT1f17PgQO5B44", "thumbnailUrl": "C5gjxdNsAfOsQqQK", "type": "image", "url": "VveR6KOJ7LFVKJSk", "videoSource": "vimeo"}], "developer": "Qg0tdQa2lCEftNks", "forumUrl": "zeJ1yuhgAnJOKRzW", "genres": ["Strategy", "RPG", "FreeToPlay"], "localizations": {"HMIchpehHXVDIsy1": {"announcement": "obN2SP0eheDmgHNh", "slogan": "GJHgT1KHFJCTgB8w"}, "A3wBa3Gsm3sq0JLM": {"announcement": "quUzdT4oBb4qIRl1", "slogan": "TaRfheBuk9DTbd2q"}, "jWc7XHZ7rhs0pWYp": {"announcement": "LSZNLrOH2la9eGWO", "slogan": "3uHuTWqGsqENAjRq"}}, "platformRequirements": {"1XrJzmOYwGDYC01s": [{"additionals": "EpxN0rdVePOE2EFm", "directXVersion": "IkA2DPmDHplMng6K", "diskSpace": "AgJJsmQNfwqC9aLX", "graphics": "9dm88AK9qrJfZi0q", "label": "jnYFMw2pzllHujKf", "osVersion": "8yj23qZw12VPNcKb", "processor": "31JxXn6mlIG8jhBz", "ram": "BOnIYGXdGSCgD4sg", "soundCard": "FMiDsh9jIEkCe10U"}, {"additionals": "Nf7os9nhn1BQcATB", "directXVersion": "3QzrW7N8AFcQWMZH", "diskSpace": "7H5O7vv7gB2exVD1", "graphics": "pn9Eg2DiArwlWwMh", "label": "9GNZ9Pzw4uL1coVV", "osVersion": "35N2AbFm6ir1qDZa", "processor": "POMARzPBfrH48GBz", "ram": "mRXChxYEEzqYRd0M", "soundCard": "y4lWYCjKrv9s0J0W"}, {"additionals": "aeEn204fK3gHHWFE", "directXVersion": "L7whqaGOXEhCC4WA", "diskSpace": "g1l9UgzAXcCiZ0E4", "graphics": "GxZhJlDtaSC37HnV", "label": "mBN0rjXkfznUA0O9", "osVersion": "4uqKGu9DepQbdzyO", "processor": "Iwj4TrG5ZG7nC4Be", "ram": "han8xoboHk7n2VjV", "soundCard": "0fOs9AxWSb2TB3gv"}], "A5HuaNknPc7VzFCh": [{"additionals": "NQFgSlaiqAquUaOp", "directXVersion": "qBNJIumxZUxFmtif", "diskSpace": "KcjJiSPlDOFINeSk", "graphics": "baNFHkVWLRoo9mLj", "label": "PiKEmheiMPRhfDan", "osVersion": "Ff15Lz4taeWKM7Ad", "processor": "xAJf31uVyWpke93v", "ram": "EQx0sBzRrbV7uFBP", "soundCard": "fzUav0EcB86ra0oi"}, {"additionals": "9N0RtUB749iGxetC", "directXVersion": "0gg8RDp4IaoBAbJd", "diskSpace": "bYM6ALisS3PO9GhX", "graphics": "Qd4LNVL2Rfm8qZvD", "label": "os9yrhwo3Fhm67OF", "osVersion": "mmybrgsBb63DBXSd", "processor": "SixOaFcFIxtGSo3Z", "ram": "oBmeMGxUiC4Lwb96", "soundCard": "PnuGElLYIVTpcAHX"}, {"additionals": "wTgKuJHcUopOQGz4", "directXVersion": "4VYBPvsZrGypKL6b", "diskSpace": "os2Ebug4UBVpXz55", "graphics": "R9JM2lApZtrZctD1", "label": "6dJjPjz2GoxKvWYT", "osVersion": "14owhMKq3kuLxnwV", "processor": "yqk5EAs61FBlgwew", "ram": "sZ8GUZG23hWcSl2o", "soundCard": "tySTGpo4D4KIXGq8"}], "hVdX4YvH9l3sS6Wo": [{"additionals": "naLKMVOH70mOiZC7", "directXVersion": "Elmy9uaDz4wSt862", "diskSpace": "bfgHDFrS5HKikMDz", "graphics": "gqPJ5SB156tgklJY", "label": "qUMuC192KfCpTj2r", "osVersion": "E8R7zKBz0Add1SQg", "processor": "2O8kWCWRnMvQOskD", "ram": "5JftYTJOWRZ7aTny", "soundCard": "o8DW2z6GQl8LN65q"}, {"additionals": "wPAx5oNqwQOnerot", "directXVersion": "itgOeqsx4Gtj8lvu", "diskSpace": "8ciWnlUZspVk9DV7", "graphics": "s1qUwezbjBwlFzUs", "label": "hsx0f6DP2UkEPJqR", "osVersion": "oLKrc7YAsIXod7JF", "processor": "Z6Md7utMeoB7fioD", "ram": "WOS5CELUzTlzo8ia", "soundCard": "sW0rGlQdWyk1iw47"}, {"additionals": "QBhy0uck5l6DPzFe", "directXVersion": "QyXJKXdpQa203JLW", "diskSpace": "XPfhBOFkezIN5AhF", "graphics": "2FxgftD2JIJOOHSV", "label": "RBs74HGx0zuEa9by", "osVersion": "zN2SNpl3S1rbnGFh", "processor": "rzbFYfDRIgOIZjoI", "ram": "MOg6LcJaCuwsOZ3F", "soundCard": "WcNeFi3egHNd3hwf"}]}, "platforms": ["IOS", "Android", "Windows"], "players": ["LocalCoop", "Single", "LocalCoop"], "primaryGenre": "Casual", "publisher": "rX3vBloaAXl0nXxu", "releaseDate": "1973-09-16T00:00:00Z", "websiteUrl": "tjWrB8fSyYyaVptj"}' \
    > test.out 2>&1
eval_tap $? 140 'UpdateApp' test.out

#- 141 DisableItem
samples/cli/sample-apps Platform disableItem \
    --itemId 'jVDgGR471NPR9gtu' \
    --namespace $AB_NAMESPACE \
    --storeId 'uUHoS7wIsaM6Xo2i' \
    --body '{"featuresToCheck": ["DLC", "ENTITLEMENT", "CAMPAIGN"]}' \
    > test.out 2>&1
eval_tap $? 141 'DisableItem' test.out

#- 142 GetItemDynamicData
samples/cli/sample-apps Platform getItemDynamicData \
    --itemId 'xliaMhsXq16H5Bpp' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 142 'GetItemDynamicData' test.out

#- 143 EnableItem
samples/cli/sample-apps Platform enableItem \
    --itemId 'ZQhFdUpG6QcA0lDX' \
    --namespace $AB_NAMESPACE \
    --storeId 'YdRlsWMBxw70YGdx' \
    > test.out 2>&1
eval_tap $? 143 'EnableItem' test.out

#- 144 FeatureItem
samples/cli/sample-apps Platform featureItem \
    --feature 'vms7H3kIgBBC0rWm' \
    --itemId 'Mm2bHj2SSuoEgvRB' \
    --namespace $AB_NAMESPACE \
    --storeId 'Odlc6w18avfDB8p6' \
    > test.out 2>&1
eval_tap $? 144 'FeatureItem' test.out

#- 145 DefeatureItem
samples/cli/sample-apps Platform defeatureItem \
    --feature 'C8iL5vkOkLdEYNrq' \
    --itemId 'xUnin9XJbjW559d5' \
    --namespace $AB_NAMESPACE \
    --storeId '8DdowPtPr9EBqLdd' \
    > test.out 2>&1
eval_tap $? 145 'DefeatureItem' test.out

#- 146 GetLocaleItem
samples/cli/sample-apps Platform getLocaleItem \
    --itemId 'Q9G6KGWiHwEspwkt' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --language 'JkrYkW4qjkbCjeVC' \
    --populateBundle 'true' \
    --region 'PwacKe0OVGeJFFtn' \
    --storeId '5BZUUgMo6RP5xstc' \
    > test.out 2>&1
eval_tap $? 146 'GetLocaleItem' test.out

#- 147 UpdateItemPurchaseCondition
samples/cli/sample-apps Platform updateItemPurchaseCondition \
    --itemId 'Fj1C1ZyoCxL3hSiV' \
    --namespace $AB_NAMESPACE \
    --storeId 'DA2CbrbZrmh0P875' \
    --body '{"purchaseCondition": {"conditionGroups": [{"operator": "and", "predicates": [{"anyOf": 3, "code": "tlvE6p5javenR9yc", "comparison": "is", "name": "9Te0yitgONrE9E5j", "predicateType": "SeasonTierPredicate", "value": "pweRip3dtvubDhm0", "values": ["399yfrhN7oG1fS5C", "IO5tT72aCrnPAYSn", "Rm8pG36zpBHfcnN4"]}, {"anyOf": 45, "code": "o4e7GXLBoACIBmOA", "comparison": "is", "name": "ePJB67eHlGx3FJYo", "predicateType": "EntitlementPredicate", "value": "iD9nhslFsxWutf2A", "values": ["vYEQIzzboEvuAxDa", "pRIdTFNa2nI5wJJv", "PH59MQuFeXLAQ7Ux"]}, {"anyOf": 37, "code": "WcrjbfKqM8WApqRJ", "comparison": "is", "name": "UYn0G0GSkp3mNmyK", "predicateType": "SeasonPassPredicate", "value": "eXZN92KaiVEdH1cf", "values": ["91hr8J0eBxw31Dj6", "xLIWhhMvLSKyUBlv", "UlfOxnRCHh2ZeFJd"]}]}, {"operator": "or", "predicates": [{"anyOf": 27, "code": "N0tvFZ7YQ71Y6gYw", "comparison": "excludes", "name": "AOK75YYwfPgt0Wtb", "predicateType": "SeasonTierPredicate", "value": "KwufB8BY7uIzeo9T", "values": ["IgmQuceb62INudfp", "KpGDL4xuRGHkmTyv", "kHw42YHvyzpYBird"]}, {"anyOf": 17, "code": "G3rjUKlXbGv71LpR", "comparison": "isGreaterThan", "name": "YHF4AmE3awFuDJTP", "predicateType": "SeasonTierPredicate", "value": "iWKgfrj0w6iqnrES", "values": ["NarZOlJVLMns8Miz", "lsfbCNgSIuO35Hys", "BXwz0S17k2j5gti2"]}, {"anyOf": 7, "code": "KytiTCnNHC7mzzNf", "comparison": "isLessThanOrEqual", "name": "zGt6TTPCD8t2oAPm", "predicateType": "StatisticCodePredicate", "value": "VpIgcW9xuq4IFT9S", "values": ["lFaV4KRid0UiR0fx", "62ePumqlTtSI0lyq", "BEpHZTNf3g0gcsoW"]}]}, {"operator": "and", "predicates": [{"anyOf": 64, "code": "vjSCz9ar5gRvGevD", "comparison": "includes", "name": "uQDqaDUmhAZCOJm3", "predicateType": "SeasonPassPredicate", "value": "PD5m5U6qIBEtG0DA", "values": ["StGBk0AIYn5KW84O", "BcxrzbvBorlfP35E", "nvtRmiiYognXmrDu"]}, {"anyOf": 25, "code": "emoIsqEZUfsWL0NX", "comparison": "is", "name": "VSBEqEFpgr5EhTuK", "predicateType": "StatisticCodePredicate", "value": "oXWiQ83st78scuPK", "values": ["pvhzR06gdOOkyoqW", "COLOVSfGpwTSeDUZ", "cJ8QSaeGgmMJ4nOB"]}, {"anyOf": 58, "code": "9JKTmBNEDSsy2j0H", "comparison": "isGreaterThan", "name": "CKoqjwzrxaZ4NCaH", "predicateType": "StatisticCodePredicate", "value": "v5B2gkExjxQFH9qb", "values": ["BoIkRRGZGG4ND0gz", "bBNFJsSlXLmEKS5K", "yGydRP96PkFh7uYS"]}]}]}}' \
    > test.out 2>&1
eval_tap $? 147 'UpdateItemPurchaseCondition' test.out

#- 148 QueryItemReferences
samples/cli/sample-apps Platform queryItemReferences \
    --itemId 'ldfhgAKyHTXPbEjf' \
    --namespace $AB_NAMESPACE \
    --featuresToCheck '["ENTITLEMENT", "ENTITLEMENT", "ENTITLEMENT"]' \
    --storeId 'guLzmFokLv5FqDA9' \
    > test.out 2>&1
eval_tap $? 148 'QueryItemReferences' test.out

#- 149 ReturnItem
samples/cli/sample-apps Platform returnItem \
    --itemId 'YN4fEZi0fdOtrNQG' \
    --namespace $AB_NAMESPACE \
    --body '{"orderNo": "jdijeBRDoQUtk1FV"}' \
    > test.out 2>&1
eval_tap $? 149 'ReturnItem' test.out

#- 150 QueryKeyGroups
samples/cli/sample-apps Platform queryKeyGroups \
    --namespace $AB_NAMESPACE \
    --limit '12' \
    --name 'bVxQo5hQrjMEkvzL' \
    --offset '73' \
    --tag 'F0j6awxINlUZrZfD' \
    > test.out 2>&1
eval_tap $? 150 'QueryKeyGroups' test.out

#- 151 CreateKeyGroup
samples/cli/sample-apps Platform createKeyGroup \
    --namespace $AB_NAMESPACE \
    --body '{"description": "icavfcSJp1DO53zt", "name": "PVI0s2vpAGHP8Ci2", "status": "INACTIVE", "tags": ["z6iw9GUITpOFYivt", "G7R15nNtyV0uJwsc", "4JJuSOAoR2RrGRpe"]}' \
    > test.out 2>&1
eval_tap $? 151 'CreateKeyGroup' test.out

#- 152 GetKeyGroupByBoothName
eval_tap 0 152 'GetKeyGroupByBoothName # SKIP deprecated' test.out

#- 153 GetKeyGroup
samples/cli/sample-apps Platform getKeyGroup \
    --keyGroupId 'iSqrLN6bpJaXV92n' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 153 'GetKeyGroup' test.out

#- 154 UpdateKeyGroup
samples/cli/sample-apps Platform updateKeyGroup \
    --keyGroupId 'GpDcLZ30Yp1OPkn9' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "D6UrjvhCSALIgHlp", "name": "hiNy8dKY14O5m07N", "status": "ACTIVE", "tags": ["ZjV3vHxnw7ZhXaqi", "V8BVoLkILLd0rFTW", "DhztpsYfSVZGcy1l"]}' \
    > test.out 2>&1
eval_tap $? 154 'UpdateKeyGroup' test.out

#- 155 GetKeyGroupDynamic
samples/cli/sample-apps Platform getKeyGroupDynamic \
    --keyGroupId 'qZR1fUV6GO6KvJGH' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 155 'GetKeyGroupDynamic' test.out

#- 156 ListKeys
samples/cli/sample-apps Platform listKeys \
    --keyGroupId 'PPOdzN6Hvt1h1waN' \
    --namespace $AB_NAMESPACE \
    --limit '28' \
    --offset '63' \
    --status 'ACTIVE' \
    > test.out 2>&1
eval_tap $? 156 'ListKeys' test.out

#- 157 UploadKeys
samples/cli/sample-apps Platform uploadKeys \
    --keyGroupId '8YIySy8jEnUj0K40' \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 157 'UploadKeys' test.out

#- 158 QueryOrders
samples/cli/sample-apps Platform queryOrders \
    --namespace $AB_NAMESPACE \
    --endTime 'HHfOpSogjhgfSILr' \
    --limit '89' \
    --offset '2' \
    --orderNos '["QYVsHD1642vIxrL8", "eqvcuVBS0Cp6HksU", "msdiiiG0jWdxUA3z"]' \
    --sortBy 'x7tQqMQBtAGHvmJK' \
    --startTime 'tHT83ZHBnmhdzB8e' \
    --status 'INIT' \
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
    --orderNo 'XHOfk626yGeHsmiN' \
    > test.out 2>&1
eval_tap $? 160 'GetOrder' test.out

#- 161 RefundOrder
samples/cli/sample-apps Platform refundOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'dTk3KXnxeJBsjr09' \
    --body '{"description": "23vjROT3siBbqozu"}' \
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
    --body '{"domains": ["A0sLJjHrCJOMR38U", "cOCE05Lt5kLaq97c", "Wy2qzzfK3YIeNeII"]}' \
    > test.out 2>&1
eval_tap $? 165 'UpdatePaymentDomainWhitelistConfig' test.out

#- 166 QueryPaymentNotifications
samples/cli/sample-apps Platform queryPaymentNotifications \
    --namespace $AB_NAMESPACE \
    --endDate '32j8y5eRvP7Zm2IW' \
    --externalId 'OksLpX5bSN30agJW' \
    --limit '65' \
    --notificationSource 'ADYEN' \
    --notificationType 'u01C7WJUaPMJdhyL' \
    --offset '51' \
    --paymentOrderNo 'Is5jUYPdzW8DYAoh' \
    --startDate 'FTYqISTPZDxwAYUL' \
    --status 'WARN' \
    > test.out 2>&1
eval_tap $? 166 'QueryPaymentNotifications' test.out

#- 167 QueryPaymentOrders
samples/cli/sample-apps Platform queryPaymentOrders \
    --namespace $AB_NAMESPACE \
    --channel 'INTERNAL' \
    --extTxId 'yDxYeZlRc17V1jQN' \
    --limit '27' \
    --offset '34' \
    --status 'REFUNDED' \
    > test.out 2>&1
eval_tap $? 167 'QueryPaymentOrders' test.out

#- 168 CreatePaymentOrderByDedicated
samples/cli/sample-apps Platform createPaymentOrderByDedicated \
    --namespace $AB_NAMESPACE \
    --body '{"currencyCode": "clZtLtBhrIQBFbds", "currencyNamespace": "6qN26eMxxCoW0on0", "customParameters": {"NfDFBffRG5BojfwH": {}, "dOHaAVOW0Py8hEoM": {}, "x3JWXOmCUFDQFlqV": {}}, "description": "LkpFNDo4Ygo1x4tl", "extOrderNo": "28HzdyZMwwopEf8N", "extUserId": "S4IPcGuYUnQljpMI", "itemType": "SEASON", "language": "Mta_GlHO", "metadata": {"MavT9jDygvxAeaA1": "XZ0zo01LtiSPESCl", "BXCtDZJuCG8gERaB": "XCsIIkyXt32VAshc", "4iSPTzSdEF81Ur3l": "o2ppUlRlVFG9E1rT"}, "notifyUrl": "K1aiqqXshi07QXUx", "omitNotification": false, "platform": "hbFHBGGoQizDigLD", "price": 45, "recurringPaymentOrderNo": "aihtUyUmlXGIrpvB", "region": "8PZL4Pr7U5ANdUnL", "returnUrl": "hiObPna9hkvLsGjD", "sandbox": false, "sku": "W0Ygs6fZulF8m7zb", "subscriptionId": "H592MIqkMCDKMcdA", "targetNamespace": "6fKXQsCYWbC2vWuV", "targetUserId": "KocFd3fqxKlbRjsR", "title": "AiZwp490WGXmzHaq"}' \
    > test.out 2>&1
eval_tap $? 168 'CreatePaymentOrderByDedicated' test.out

#- 169 ListExtOrderNoByExtTxId
samples/cli/sample-apps Platform listExtOrderNoByExtTxId \
    --namespace $AB_NAMESPACE \
    --extTxId 'fyztEc80FQnuvzUa' \
    > test.out 2>&1
eval_tap $? 169 'ListExtOrderNoByExtTxId' test.out

#- 170 GetPaymentOrder
samples/cli/sample-apps Platform getPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'R5uQEHtjctjxhMp4' \
    > test.out 2>&1
eval_tap $? 170 'GetPaymentOrder' test.out

#- 171 ChargePaymentOrder
samples/cli/sample-apps Platform chargePaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'RXMsHB9oXZ0rRB2x' \
    --body '{"extTxId": "PC4SMBpPro29miGR", "paymentMethod": "7zWjA1k0P64bn3JP", "paymentProvider": "ADYEN"}' \
    > test.out 2>&1
eval_tap $? 171 'ChargePaymentOrder' test.out

#- 172 RefundPaymentOrderByDedicated
samples/cli/sample-apps Platform refundPaymentOrderByDedicated \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo '3bRssvaaKtgxruPD' \
    --body '{"description": "tELPSiXmRURdccLl"}' \
    > test.out 2>&1
eval_tap $? 172 'RefundPaymentOrderByDedicated' test.out

#- 173 SimulatePaymentOrderNotification
samples/cli/sample-apps Platform simulatePaymentOrderNotification \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'lAU8xennluzh2ik8' \
    --body '{"amount": 31, "currencyCode": "CzOZ6orIR5ZbBWqX", "notifyType": "REFUND", "paymentProvider": "PAYPAL", "salesTax": 25, "vat": 90}' \
    > test.out 2>&1
eval_tap $? 173 'SimulatePaymentOrderNotification' test.out

#- 174 GetPaymentOrderChargeStatus
samples/cli/sample-apps Platform getPaymentOrderChargeStatus \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'xWAXLWp1LetI73Li' \
    > test.out 2>&1
eval_tap $? 174 'GetPaymentOrderChargeStatus' test.out

#- 175 GetPsnEntitlementOwnership
samples/cli/sample-apps Platform getPsnEntitlementOwnership \
    --entitlementLabel '2Zmf4oHmRWJpbQ9L' \
    --namespace $AB_NAMESPACE \
    --body '{"accessToken": "SnzlYFKoofnam34J", "serviceLabel": 25}' \
    > test.out 2>&1
eval_tap $? 175 'GetPsnEntitlementOwnership' test.out

#- 176 GetXboxEntitlementOwnership
samples/cli/sample-apps Platform getXboxEntitlementOwnership \
    --namespace $AB_NAMESPACE \
    --productSku '9cHAxh8HETistauO' \
    --body '{"delegationToken": "IlR6OJHtEfWpHZpa", "sandboxId": "5dUuay1iyeDbKuC7"}' \
    > test.out 2>&1
eval_tap $? 176 'GetXboxEntitlementOwnership' test.out

#- 177 GetPlatformEntitlementConfig
samples/cli/sample-apps Platform getPlatformEntitlementConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Nintendo' \
    > test.out 2>&1
eval_tap $? 177 'GetPlatformEntitlementConfig' test.out

#- 178 UpdatePlatformEntitlementConfig
samples/cli/sample-apps Platform updatePlatformEntitlementConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Oculus' \
    --body '{"allowedPlatformOrigins": ["Steam", "GooglePlay", "System"]}' \
    > test.out 2>&1
eval_tap $? 178 'UpdatePlatformEntitlementConfig' test.out

#- 179 GetPlatformWalletConfig
samples/cli/sample-apps Platform getPlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Steam' \
    > test.out 2>&1
eval_tap $? 179 'GetPlatformWalletConfig' test.out

#- 180 UpdatePlatformWalletConfig
samples/cli/sample-apps Platform updatePlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Epic' \
    --body '{"allowedBalanceOrigins": ["Playstation", "Epic", "Other"]}' \
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
    --body '{"entitlement": {"consumable": {"enabled": true, "strategy": "REVOKE_OR_REPORT"}, "durable": {"enabled": true, "strategy": "CUSTOM"}}, "wallet": {"enabled": true, "strategy": "ALWAYS_REVOKE"}}' \
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
    --endTime 'OF3tLPEXamA8YpZG' \
    --limit '53' \
    --offset '0' \
    --source 'ORDER' \
    --startTime 'CtFE1T6q59O19in1' \
    --status 'SUCCESS' \
    --transactionId 'yDl1UXlbhIarBVlr' \
    --userId 'OIe5dsFJMK3qZdSZ' \
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
    --body '{"appConfig": {"appName": "2go1BF9AKgCm8Bj1"}, "customConfig": {"connectionType": "INSECURE", "grpcServerAddress": "gjY5woysNnepckdY"}, "extendType": "CUSTOM"}' \
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
    --body '{"description": "aMszLsgQTMSz80p9", "eventTopic": "RQL6NnAYOEW3SxYq", "maxAwarded": 94, "maxAwardedPerUser": 3, "namespaceExpression": "7X4Iax5TtI9XtOYF", "rewardCode": "loy3NaK62ioiruiV", "rewardConditions": [{"condition": "AQrS6Z9NiBvNk6xn", "conditionName": "1JJM2X8Mf6MYdGJ4", "eventName": "ULB4wVCtNC5QFDeG", "rewardItems": [{"duration": 60, "endDate": "1988-01-05T00:00:00Z", "identityType": "ITEM_ID", "itemId": "tInZ8rSBB2uXd7hp", "quantity": 61, "sku": "XFJF95hJes0vFQne"}, {"duration": 93, "endDate": "1986-05-31T00:00:00Z", "identityType": "ITEM_ID", "itemId": "LUdk9XCNrLzxUDbK", "quantity": 90, "sku": "GU1Y1DzOWkwBCbUk"}, {"duration": 70, "endDate": "1978-12-08T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "qMXfWMxsvBldUfxA", "quantity": 75, "sku": "T69wQUiHllDs6AvT"}]}, {"condition": "RvGTtDazkHcJzX67", "conditionName": "1KNDBmsAzpv3904C", "eventName": "Ccb3lLd2X73B1ovP", "rewardItems": [{"duration": 92, "endDate": "1974-03-20T00:00:00Z", "identityType": "ITEM_ID", "itemId": "CZjq3Kt7uQuD0Ygf", "quantity": 80, "sku": "rErZqOndUehgY5Ly"}, {"duration": 14, "endDate": "1984-07-09T00:00:00Z", "identityType": "ITEM_ID", "itemId": "M874qyggN3UWWsZT", "quantity": 56, "sku": "x1SSQ3YrM013U8KP"}, {"duration": 25, "endDate": "1989-06-29T00:00:00Z", "identityType": "ITEM_ID", "itemId": "BaWzE8rIF5mVj466", "quantity": 64, "sku": "oNbobt7BS3r0RM7F"}]}, {"condition": "auaEsqkyMGcg2dlt", "conditionName": "zLTOv3XDlbSVorLn", "eventName": "ukeJFFOrhR3eszWn", "rewardItems": [{"duration": 33, "endDate": "1978-06-22T00:00:00Z", "identityType": "ITEM_ID", "itemId": "OAX6PiLJDtpOEo1H", "quantity": 95, "sku": "uE2cmxxIZStmDi0P"}, {"duration": 91, "endDate": "1996-02-01T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "1sswdXLFNYsnUZkB", "quantity": 40, "sku": "YYM4dS4ZY7HNLnuM"}, {"duration": 74, "endDate": "1983-04-25T00:00:00Z", "identityType": "ITEM_ID", "itemId": "yZm0xT4BVPMB7Zgk", "quantity": 86, "sku": "wiXBqrCZSKERJQB2"}]}], "userIdExpression": "eMQVICTWq4ZiGoaI"}' \
    > test.out 2>&1
eval_tap $? 190 'CreateReward' test.out

#- 191 QueryRewards
samples/cli/sample-apps Platform queryRewards \
    --namespace $AB_NAMESPACE \
    --eventTopic 'pcREAGkXXUzjCXxO' \
    --limit '21' \
    --offset '4' \
    --sortBy '["namespace:asc", "rewardCode:desc", "rewardCode:asc"]' \
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
    --replaceExisting 'false' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 193 'ImportRewards' test.out

#- 194 GetReward
samples/cli/sample-apps Platform getReward \
    --namespace $AB_NAMESPACE \
    --rewardId 'MG12g5nUVidfYlW2' \
    > test.out 2>&1
eval_tap $? 194 'GetReward' test.out

#- 195 UpdateReward
samples/cli/sample-apps Platform updateReward \
    --namespace $AB_NAMESPACE \
    --rewardId 'uzurvhSXpMrbQPpf' \
    --body '{"description": "YMCSYisrJ51wwXbX", "eventTopic": "QGZ8fUc5bgOJ83Hu", "maxAwarded": 84, "maxAwardedPerUser": 42, "namespaceExpression": "5Q6iBZ2Krw1nOJRI", "rewardCode": "JObiHzd8ThyXDjH3", "rewardConditions": [{"condition": "noIzU8zZSC7hQdtw", "conditionName": "SkD3ZjOycn6UTgrF", "eventName": "8tq6qqaJOOdXEHyI", "rewardItems": [{"duration": 31, "endDate": "1986-02-07T00:00:00Z", "identityType": "ITEM_ID", "itemId": "frt7ei7ECTAOJZue", "quantity": 22, "sku": "ICikB4uWFe8g2RZl"}, {"duration": 93, "endDate": "1987-01-08T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "Bzy6ECG7ubGiVYkI", "quantity": 84, "sku": "jqPaOnz5beRZQXSD"}, {"duration": 38, "endDate": "1981-05-23T00:00:00Z", "identityType": "ITEM_ID", "itemId": "qNMHFQHNcv6dQ2Nd", "quantity": 26, "sku": "EZZkP9qHraaO3vM2"}]}, {"condition": "pXNyGbHqnLu9w53a", "conditionName": "k1WvD6i7gVrulDTe", "eventName": "oKfD7fL4WGTS7VZn", "rewardItems": [{"duration": 34, "endDate": "1977-03-19T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "HcgkyrzP6hIEaOec", "quantity": 98, "sku": "BAigpP42TsldRndf"}, {"duration": 87, "endDate": "1999-03-24T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "ev8MvWLIImK9mjKp", "quantity": 89, "sku": "qfHKYvUqQ2SdTtue"}, {"duration": 16, "endDate": "1977-12-27T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "EKencoh2o6PwICWm", "quantity": 48, "sku": "0lwj31HVA9HqM2hY"}]}, {"condition": "J339ah0q1MnoABEk", "conditionName": "sRJL93zmGk42Z7VP", "eventName": "umRczHRtzg0mIA1U", "rewardItems": [{"duration": 92, "endDate": "1998-05-20T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "mjAmHkQUb14EU70D", "quantity": 95, "sku": "n2fWKWNLx6XEp753"}, {"duration": 38, "endDate": "1981-06-29T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "Xyuy3RAuTm2L6fvG", "quantity": 7, "sku": "pVNX60D33ydIeELh"}, {"duration": 33, "endDate": "1976-03-27T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "dDzzxtNy7Pvc9JBr", "quantity": 20, "sku": "Mp0EfaybBKP2d4Cw"}]}], "userIdExpression": "u8hPUWrnhb09yyTd"}' \
    > test.out 2>&1
eval_tap $? 195 'UpdateReward' test.out

#- 196 DeleteReward
samples/cli/sample-apps Platform deleteReward \
    --namespace $AB_NAMESPACE \
    --rewardId 'FbNNymINC6D5wakC' \
    > test.out 2>&1
eval_tap $? 196 'DeleteReward' test.out

#- 197 CheckEventCondition
samples/cli/sample-apps Platform checkEventCondition \
    --namespace $AB_NAMESPACE \
    --rewardId 'wQ1RvVHQ8GBcuBro' \
    --body '{"payload": {"mrJbtluiW1KpSTtf": {}, "egaqc46cIZ4iFBRH": {}, "IICXRqlG2RUb1p6h": {}}}' \
    > test.out 2>&1
eval_tap $? 197 'CheckEventCondition' test.out

#- 198 DeleteRewardConditionRecord
samples/cli/sample-apps Platform deleteRewardConditionRecord \
    --namespace $AB_NAMESPACE \
    --rewardId 'voQ4KT2Ihj9jTOAu' \
    --body '{"conditionName": "FABlStOtRiW90LzJ", "userId": "uK4QA975YnvwUK3H"}' \
    > test.out 2>&1
eval_tap $? 198 'DeleteRewardConditionRecord' test.out

#- 199 QuerySections
samples/cli/sample-apps Platform querySections \
    --namespace $AB_NAMESPACE \
    --end 'LfEdceR8jRrHc24C' \
    --limit '5' \
    --offset '37' \
    --start 'auKAxuVYIk5JtR38' \
    --storeId 'tAnJE6MpH84GENZQ' \
    --viewId '7rtHfAz4XoGwR4At' \
    > test.out 2>&1
eval_tap $? 199 'QuerySections' test.out

#- 200 CreateSection
samples/cli/sample-apps Platform createSection \
    --namespace $AB_NAMESPACE \
    --storeId 'l3lytytZZux94qvm' \
    --body '{"active": false, "displayOrder": 77, "endDate": "1995-11-20T00:00:00Z", "ext": {"5JeX8yBjtw9uOK96": {}, "dK8m7loPwkdaFbJP": {}, "fnDD1eFkilshDbO2": {}}, "fixedPeriodRotationConfig": {"backfillType": "NONE", "duration": 55, "itemCount": 99, "rule": "LOOP"}, "items": [{"id": "UQ4sEOuxqeLbuKTJ", "sku": "gTpMkf5GXhyjbZ9X"}, {"id": "wh22oYO2NKi9mSGN", "sku": "ctmlkL7noxbW2TwX"}, {"id": "vd1HPKfrmLKoZoIW", "sku": "pCMw8SMMkjP4QDSU"}], "localizations": {"WPIaZIzoZR7yZNT7": {"description": "O3EbO2tzDxBSsUht", "localExt": {"RrYwlyw5r4NFQALa": {}, "OXslHBMTTYeyBXzZ": {}, "R8npAT25TalsDmUW": {}}, "longDescription": "YCbPgAYzmZFotPS9", "title": "v7P9u0fU4VJ7J5RF"}, "FlIoFIP2ZWH1TFb0": {"description": "9O8vJRgOMi5EoIKi", "localExt": {"7v0F3S5d6m5eweBd": {}, "4L58uuq12Nli32Uu": {}, "FbBowTiEEA6sd6sq": {}}, "longDescription": "HdYeEQ6kigKJnN4M", "title": "fogLtKJ0kMlLYKX7"}, "Ct0MsVwRSn0XrskJ": {"description": "CSp05IDG4uzZeWj9", "localExt": {"N1SdMPya1cIDgUwn": {}, "fTGBpJIliqk87aPz": {}, "e4E3P41NI3pMvaUj": {}}, "longDescription": "6uDkyWqk4y4WMy7b", "title": "DqyhzUXFksgX6mM6"}}, "name": "8r4o2jzolMDAgbWb", "rotationType": "NONE", "startDate": "1980-12-26T00:00:00Z", "viewId": "Xg5p18UfT0gCPtS0"}' \
    > test.out 2>&1
eval_tap $? 200 'CreateSection' test.out

#- 201 PurgeExpiredSection
samples/cli/sample-apps Platform purgeExpiredSection \
    --namespace $AB_NAMESPACE \
    --storeId 'eCU8AwAt6Q1h2LEm' \
    > test.out 2>&1
eval_tap $? 201 'PurgeExpiredSection' test.out

#- 202 GetSection
samples/cli/sample-apps Platform getSection \
    --namespace $AB_NAMESPACE \
    --sectionId '2oenncga5ek1VsyU' \
    --storeId '1X4t001xTceROT25' \
    > test.out 2>&1
eval_tap $? 202 'GetSection' test.out

#- 203 UpdateSection
samples/cli/sample-apps Platform updateSection \
    --namespace $AB_NAMESPACE \
    --sectionId 'RMLa5J6iUKV1Ds3x' \
    --storeId '0fJdf1iQx3S60aT2' \
    --body '{"active": false, "displayOrder": 93, "endDate": "1993-11-01T00:00:00Z", "ext": {"rAWTyXjyR6f6SIo0": {}, "ocmual08cVcMhFHX": {}, "LdholfblpQqjhjQg": {}}, "fixedPeriodRotationConfig": {"backfillType": "NONE", "duration": 86, "itemCount": 42, "rule": "SEQUENCE"}, "items": [{"id": "ZM6VrB9RvLDleNPN", "sku": "3AGSyIX5PnD1XpRC"}, {"id": "1GYcofUrb5wcNYGZ", "sku": "e9K0S9W7rj029jgF"}, {"id": "V2oO7A3A8Nx9nkAw", "sku": "HNNXLVv9545tuk4m"}], "localizations": {"X2ZOa5K3Hcgz5CW6": {"description": "oj4i4XfPZG82fxDo", "localExt": {"VKhQd5f5rH9v0PVv": {}, "FWZ8CgDvmRSUEJHO": {}, "A7825zy4wbjZavzq": {}}, "longDescription": "gyNu1q0oBnBupkUG", "title": "43uctPWz7VNF8Uy2"}, "lu6rNiCTmuYaREYr": {"description": "xpEMfytiNV3aLC0o", "localExt": {"LBVrZleHxyLSdZMf": {}, "jmc18s5vcVygU455": {}, "hVJ8A4sgXVjD1tOw": {}}, "longDescription": "kwvhLO1hNVRdVg4i", "title": "BnBWTo5WexxmllJt"}, "9gjfcRUzhdMd9ShS": {"description": "tq402aiyNqBhfCvh", "localExt": {"Ka2FtJuE48qY0gWV": {}, "1bZTcVWXdNnkckU3": {}, "7wstG7f27tGFnUR3": {}}, "longDescription": "nL7hiuXhUYyCqJUR", "title": "wgcVcxZnOs79ujos"}}, "name": "nsViiyea2Pl4uBmU", "rotationType": "NONE", "startDate": "1992-11-07T00:00:00Z", "viewId": "MlY5njqccKqZq8SN"}' \
    > test.out 2>&1
eval_tap $? 203 'UpdateSection' test.out

#- 204 DeleteSection
samples/cli/sample-apps Platform deleteSection \
    --namespace $AB_NAMESPACE \
    --sectionId 'FhF13u99PetrlMUP' \
    --storeId 'GzqkV3Nl3obMATXV' \
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
    --body '{"defaultLanguage": "cJx0vRYQ3uvrk0ef", "defaultRegion": "8LzMY1AbnoJw4bpr", "description": "oLmrpF9mgIdFLmwn", "supportedLanguages": ["tBkrgW8dHPpgs6hd", "z1d8JuAhZa3iIeYc", "7sq7Aa8ZAkUIoxqI"], "supportedRegions": ["bAYzSD3Wco2x1o33", "ZfqT8pi3fz9cGBwf", "py68Gkkyihi7g769"], "title": "t0GirFipddyhdjjQ"}' \
    > test.out 2>&1
eval_tap $? 206 'CreateStore' test.out

#- 207 GetCatalogDefinition
samples/cli/sample-apps Platform getCatalogDefinition \
    --namespace $AB_NAMESPACE \
    --catalogType 'VIEW' \
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
    --body '{"catalogType": "APP", "fieldsToBeIncluded": ["h2iRATRAQe2W3zY9", "avHzT6TxyuN970xq", "tjKgVlPUHzgpOacm"], "idsToBeExported": ["PcLsRGP80aypPWvc", "A6WAA009XzPDPB1V", "rhMmo67JQMP5FI2K"], "storeId": "uge9SsW2aUeuZBGX"}' \
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
    --storeId 'NnRwFptG6SYDVqZh' \
    > test.out 2>&1
eval_tap $? 215 'GetStore' test.out

#- 216 UpdateStore
samples/cli/sample-apps Platform updateStore \
    --namespace $AB_NAMESPACE \
    --storeId 'HLE40UMr7EifWAL4' \
    --body '{"defaultLanguage": "oazvEjRtVPd3M21m", "defaultRegion": "h5muT7hAt9SHjK9N", "description": "HwtWAbflDoSCNf3L", "supportedLanguages": ["SODRhznw3wU1qGMX", "N1qrmx1Rpy8rXZyp", "JneKB71Kq53tdQQ7"], "supportedRegions": ["fYxPLh9EYF39Sy1Z", "Ie1FmH7zOJJsNplk", "SHUzG5WtFYp4StLT"], "title": "0HlylJCDBlucmmrz"}' \
    > test.out 2>&1
eval_tap $? 216 'UpdateStore' test.out

#- 217 DeleteStore
samples/cli/sample-apps Platform deleteStore \
    --namespace $AB_NAMESPACE \
    --storeId 'mg7pQbLCjZQQR9Go' \
    > test.out 2>&1
eval_tap $? 217 'DeleteStore' test.out

#- 218 QueryChanges
samples/cli/sample-apps Platform queryChanges \
    --namespace $AB_NAMESPACE \
    --storeId 'vdZ4Rh75Alo5S0HA' \
    --action 'DELETE' \
    --itemSku 'bpAJhO1vErgnyPp7' \
    --itemType 'SEASON' \
    --limit '92' \
    --offset '66' \
    --selected 'false' \
    --sortBy '["updatedAt:asc", "createdAt:desc", "createdAt"]' \
    --status 'UNPUBLISHED' \
    --type 'SECTION' \
    --updatedAtEnd 'm7ikoKlgD2NIMc3u' \
    --updatedAtStart 'OnBBTfvs6utsJZNK' \
    --withTotal 'true' \
    > test.out 2>&1
eval_tap $? 218 'QueryChanges' test.out

#- 219 PublishAll
samples/cli/sample-apps Platform publishAll \
    --namespace $AB_NAMESPACE \
    --storeId 'WkwbxARfkr6KdH7X' \
    > test.out 2>&1
eval_tap $? 219 'PublishAll' test.out

#- 220 PublishSelected
samples/cli/sample-apps Platform publishSelected \
    --namespace $AB_NAMESPACE \
    --storeId 'ti642crN09gUIjgh' \
    > test.out 2>&1
eval_tap $? 220 'PublishSelected' test.out

#- 221 SelectAllRecords
samples/cli/sample-apps Platform selectAllRecords \
    --namespace $AB_NAMESPACE \
    --storeId 'zWLxvBlMY5uWx7rH' \
    > test.out 2>&1
eval_tap $? 221 'SelectAllRecords' test.out

#- 222 SelectAllRecordsByCriteria
samples/cli/sample-apps Platform selectAllRecordsByCriteria \
    --namespace $AB_NAMESPACE \
    --storeId 'v8l0P8kjXzlyoUSM' \
    --action 'DELETE' \
    --itemSku 'q3RZ2EwyYUbWcb0e' \
    --itemType 'CODE' \
    --selected 'true' \
    --type 'CATEGORY' \
    --updatedAtEnd 'C3dJcsisLaKImrf3' \
    --updatedAtStart 'P1PTuiQUAcwdGyEB' \
    > test.out 2>&1
eval_tap $? 222 'SelectAllRecordsByCriteria' test.out

#- 223 GetStatistic
samples/cli/sample-apps Platform getStatistic \
    --namespace $AB_NAMESPACE \
    --storeId 'iiF1HwiBZIabdey1' \
    --action 'CREATE' \
    --itemSku '8mQ7js5QxQl7D90W' \
    --itemType 'OPTIONBOX' \
    --type 'STORE' \
    --updatedAtEnd 'pZ0kiQ6Sv7Cj9Xri' \
    --updatedAtStart 'orzFOcDookSJMXwE' \
    > test.out 2>&1
eval_tap $? 223 'GetStatistic' test.out

#- 224 UnselectAllRecords
samples/cli/sample-apps Platform unselectAllRecords \
    --namespace $AB_NAMESPACE \
    --storeId '7PHorGUNJ8xc7YdU' \
    > test.out 2>&1
eval_tap $? 224 'UnselectAllRecords' test.out

#- 225 SelectRecord
samples/cli/sample-apps Platform selectRecord \
    --changeId '6aS2d1NR2qFpljsK' \
    --namespace $AB_NAMESPACE \
    --storeId 'HPV1gOJZ0xZM40cn' \
    > test.out 2>&1
eval_tap $? 225 'SelectRecord' test.out

#- 226 UnselectRecord
samples/cli/sample-apps Platform unselectRecord \
    --changeId 'do2v1y80X3OEr9Ss' \
    --namespace $AB_NAMESPACE \
    --storeId 'bVV5TaKa5rhW01X9' \
    > test.out 2>&1
eval_tap $? 226 'UnselectRecord' test.out

#- 227 CloneStore
samples/cli/sample-apps Platform cloneStore \
    --namespace $AB_NAMESPACE \
    --storeId 'tKJLRA8BQhNart0P' \
    --targetStoreId 'DNqnayXndzmfJy0H' \
    > test.out 2>&1
eval_tap $? 227 'CloneStore' test.out

#- 228 ExportStore
eval_tap 0 228 'ExportStore # SKIP deprecated' test.out

#- 229 QueryImportHistory
samples/cli/sample-apps Platform queryImportHistory \
    --namespace $AB_NAMESPACE \
    --storeId 'GK6cL8KXdFuAq9ee' \
    --end 'GDwZgGaO97iflZlJ' \
    --limit '16' \
    --offset '17' \
    --sortBy 'chGxDc6xgArPLXhv' \
    --start 'UzF7j35OddQlM1lV' \
    --success 'false' \
    > test.out 2>&1
eval_tap $? 229 'QueryImportHistory' test.out

#- 230 ImportStoreByCSV
samples/cli/sample-apps Platform importStoreByCSV \
    --namespace $AB_NAMESPACE \
    --storeId '9mPhOp0Y61IcG68Z' \
    --category 'tmp.dat' \
    --display 'tmp.dat' \
    --item 'tmp.dat' \
    --notes 'OdWShVmFJplzKtZ6' \
    --section 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 230 'ImportStoreByCSV' test.out

#- 231 QuerySubscriptions
samples/cli/sample-apps Platform querySubscriptions \
    --namespace $AB_NAMESPACE \
    --chargeStatus 'CHARGED' \
    --itemId 'RD3kHOUfeThMjhvu' \
    --limit '29' \
    --offset '1' \
    --sku '8nrkS09ytUMl7UgJ' \
    --status 'EXPIRED' \
    --subscribedBy 'USER' \
    --userId 'zsDSuQ8NONYY6B9D' \
    > test.out 2>&1
eval_tap $? 231 'QuerySubscriptions' test.out

#- 232 RecurringChargeSubscription
samples/cli/sample-apps Platform recurringChargeSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'nNqvrXbAgIK2qC05' \
    > test.out 2>&1
eval_tap $? 232 'RecurringChargeSubscription' test.out

#- 233 GetTicketDynamic
samples/cli/sample-apps Platform getTicketDynamic \
    --boothName 'Mb6q9zccKp47kqRy' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 233 'GetTicketDynamic' test.out

#- 234 DecreaseTicketSale
samples/cli/sample-apps Platform decreaseTicketSale \
    --boothName 'ZLbHAklEifB7g8Q2' \
    --namespace $AB_NAMESPACE \
    --body '{"orderNo": "IZp05p2jf73Efafe"}' \
    > test.out 2>&1
eval_tap $? 234 'DecreaseTicketSale' test.out

#- 235 GetTicketBoothID
samples/cli/sample-apps Platform getTicketBoothID \
    --boothName 'YO4Zwo1J5Bw8n5AH' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 235 'GetTicketBoothID' test.out

#- 236 IncreaseTicketSale
samples/cli/sample-apps Platform increaseTicketSale \
    --boothName 'GZIGtT5MvCPshV8F' \
    --namespace $AB_NAMESPACE \
    --body '{"count": 85, "orderNo": "1aj8GALANUtydf5c"}' \
    > test.out 2>&1
eval_tap $? 236 'IncreaseTicketSale' test.out

#- 237 Commit
samples/cli/sample-apps Platform commit \
    --namespace $AB_NAMESPACE \
    --body '{"actions": [{"operations": [{"creditPayload": {"balanceOrigin": "System", "count": 21, "currencyCode": "Q2hWER9mxFtmgTJ1", "expireAt": "1986-11-09T00:00:00Z"}, "debitPayload": {"count": 0, "currencyCode": "Kcw2YWYnTSKV8UJG", "walletPlatform": "Steam"}, "fulFillItemPayload": {"count": 13, "entitlementCollectionId": "I8hy7a52r6MQcPI1", "entitlementOrigin": "GooglePlay", "itemIdentity": "aeEckzF9CJiEgkC5", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 32, "entitlementId": "Ai7HY8reS8zhtqyz"}, "type": "REVOKE_ENTITLEMENT"}, {"creditPayload": {"balanceOrigin": "Oculus", "count": 25, "currencyCode": "9ztnxTYGnP4ijDyK", "expireAt": "1988-03-21T00:00:00Z"}, "debitPayload": {"count": 33, "currencyCode": "btGje527iVc0qEQS", "walletPlatform": "IOS"}, "fulFillItemPayload": {"count": 85, "entitlementCollectionId": "jETE5GpFVV2iByxF", "entitlementOrigin": "Playstation", "itemIdentity": "JLaGN7gBVwwiIk6Y", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 50, "entitlementId": "bnuX8ucdu5VbDjfm"}, "type": "REVOKE_ENTITLEMENT"}, {"creditPayload": {"balanceOrigin": "IOS", "count": 62, "currencyCode": "WOBvaeBzvhtlig5w", "expireAt": "1983-05-14T00:00:00Z"}, "debitPayload": {"count": 58, "currencyCode": "PlntDY9j1X3JqBRn", "walletPlatform": "GooglePlay"}, "fulFillItemPayload": {"count": 89, "entitlementCollectionId": "mkdu9fs6s0K97zpm", "entitlementOrigin": "GooglePlay", "itemIdentity": "0mYZb9zHVXSPL3Ji", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 93, "entitlementId": "DC0Qb5grm2iTWeob"}, "type": "DEBIT_WALLET"}], "userId": "QmnwyMKTfpe7qh7I"}, {"operations": [{"creditPayload": {"balanceOrigin": "Steam", "count": 42, "currencyCode": "Db4xjhZIdUwoD78S", "expireAt": "1981-06-23T00:00:00Z"}, "debitPayload": {"count": 81, "currencyCode": "6UbJST82HqlPB4U6", "walletPlatform": "Oculus"}, "fulFillItemPayload": {"count": 41, "entitlementCollectionId": "Br7ufu5SbRPEEj6h", "entitlementOrigin": "Playstation", "itemIdentity": "IPzEIUXJHinSNTRq", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 72, "entitlementId": "yFLofhtFxCitX2EG"}, "type": "REVOKE_ENTITLEMENT"}, {"creditPayload": {"balanceOrigin": "Steam", "count": 26, "currencyCode": "8mRTtRz5LtJKrrHC", "expireAt": "1980-10-21T00:00:00Z"}, "debitPayload": {"count": 21, "currencyCode": "ay5Sj6B0DQybNu4y", "walletPlatform": "Playstation"}, "fulFillItemPayload": {"count": 98, "entitlementCollectionId": "4p8qseS6Th8nubhY", "entitlementOrigin": "Playstation", "itemIdentity": "eNdhdFGimaQ054CO", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 67, "entitlementId": "372UX7M4pLMLx8K6"}, "type": "DEBIT_WALLET"}, {"creditPayload": {"balanceOrigin": "Oculus", "count": 61, "currencyCode": "gbiho5TFzk60kkQq", "expireAt": "1985-01-19T00:00:00Z"}, "debitPayload": {"count": 66, "currencyCode": "NvfTKBsUNfGg9OKZ", "walletPlatform": "Playstation"}, "fulFillItemPayload": {"count": 95, "entitlementCollectionId": "4KUeU2JvYOCVj2Sl", "entitlementOrigin": "Other", "itemIdentity": "UPsizcbitG4JYiqT", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 43, "entitlementId": "Xi3CbEfdw0f8rygE"}, "type": "REVOKE_ENTITLEMENT"}], "userId": "xjnMGnnVsTGjHswc"}, {"operations": [{"creditPayload": {"balanceOrigin": "Nintendo", "count": 13, "currencyCode": "9uwRrC3BtGdBuOVb", "expireAt": "1995-06-13T00:00:00Z"}, "debitPayload": {"count": 37, "currencyCode": "xOpFWI86f2S0ug5j", "walletPlatform": "IOS"}, "fulFillItemPayload": {"count": 13, "entitlementCollectionId": "IEgohw5OoGkTt04z", "entitlementOrigin": "Playstation", "itemIdentity": "wBCvrS6cRLJtDzDZ", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 78, "entitlementId": "7msMFsta6O9pH4Ly"}, "type": "CREDIT_WALLET"}, {"creditPayload": {"balanceOrigin": "IOS", "count": 8, "currencyCode": "XiuQTuBaRtXSVm75", "expireAt": "1993-04-09T00:00:00Z"}, "debitPayload": {"count": 30, "currencyCode": "AVpuLbthcVTfz7yZ", "walletPlatform": "Nintendo"}, "fulFillItemPayload": {"count": 85, "entitlementCollectionId": "WDoGNdMe0fyBku01", "entitlementOrigin": "System", "itemIdentity": "wFEMXiY71C8jCgfL", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 64, "entitlementId": "d8PrWqimyexiOR4j"}, "type": "DEBIT_WALLET"}, {"creditPayload": {"balanceOrigin": "Xbox", "count": 75, "currencyCode": "o9aD4Z2nE1oKTN2P", "expireAt": "1975-10-07T00:00:00Z"}, "debitPayload": {"count": 36, "currencyCode": "ZWRlxUi4Twjm75Kv", "walletPlatform": "Oculus"}, "fulFillItemPayload": {"count": 60, "entitlementCollectionId": "PVeLyt7E7kVwUT6m", "entitlementOrigin": "Twitch", "itemIdentity": "3OWKFKqdC5h9yUVV", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 51, "entitlementId": "3xxBvtykTvgLEgbl"}, "type": "REVOKE_ENTITLEMENT"}], "userId": "OMPlppm5VbtOUF28"}], "metadata": {"9HhNsJf5eqJw3bPB": {}, "iYHbYpp2wTsH5J5C": {}, "2V82GpjIxGa46O5U": {}}, "needPreCheck": false, "transactionId": "EXnGKinnchdTAS1N", "type": "I9YS3AgrW6JPjGZ8"}' \
    > test.out 2>&1
eval_tap $? 237 'Commit' test.out

#- 238 GetTradeHistoryByCriteria
samples/cli/sample-apps Platform getTradeHistoryByCriteria \
    --namespace $AB_NAMESPACE \
    --limit '100' \
    --offset '30' \
    --status 'FAILED' \
    --type 'vaT6VqPBBysLhYvL' \
    --userId 'lwq1y3lCMMM9OIYV' \
    > test.out 2>&1
eval_tap $? 238 'GetTradeHistoryByCriteria' test.out

#- 239 GetTradeHistoryByTransactionId
samples/cli/sample-apps Platform getTradeHistoryByTransactionId \
    --namespace $AB_NAMESPACE \
    --transactionId 'nMvkIEWfZDpt12f2' \
    > test.out 2>&1
eval_tap $? 239 'GetTradeHistoryByTransactionId' test.out

#- 240 UnlockSteamUserAchievement
samples/cli/sample-apps Platform unlockSteamUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'HUzCYBwdvzLR6gFu' \
    --body '{"achievements": [{"id": "W1gDPAk1TMPj7ERE", "value": 64}, {"id": "hJwWApWkycrJRcg4", "value": 99}, {"id": "zRmJe9fW1wwAvnET", "value": 43}], "steamUserId": "elE1t7o129vcskvB"}' \
    > test.out 2>&1
eval_tap $? 240 'UnlockSteamUserAchievement' test.out

#- 241 GetXblUserAchievements
samples/cli/sample-apps Platform getXblUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId '5RPO3HfFPj6ji5lx' \
    --xboxUserId 'vCyZmRGMBMevqAC7' \
    > test.out 2>&1
eval_tap $? 241 'GetXblUserAchievements' test.out

#- 242 UpdateXblUserAchievement
samples/cli/sample-apps Platform updateXblUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId '2MGH8FmMvyAEJtGf' \
    --body '{"achievements": [{"id": "UpvJTODlTc3KUZM6", "percentComplete": 9}, {"id": "ekEJly1r59wboPOH", "percentComplete": 5}, {"id": "WxNG5VASfA5gLin0", "percentComplete": 34}], "serviceConfigId": "1aCZwpstNyTC8rZ2", "titleId": "Bcn8BrU1qN7Im3Fj", "xboxUserId": "sKfF4mLg5bNJCW9u"}' \
    > test.out 2>&1
eval_tap $? 242 'UpdateXblUserAchievement' test.out

#- 243 AnonymizeCampaign
samples/cli/sample-apps Platform anonymizeCampaign \
    --namespace $AB_NAMESPACE \
    --userId 'A7H1uYlu50EWt8qo' \
    > test.out 2>&1
eval_tap $? 243 'AnonymizeCampaign' test.out

#- 244 AnonymizeEntitlement
samples/cli/sample-apps Platform anonymizeEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'p6hcMJBiCAshjkB0' \
    > test.out 2>&1
eval_tap $? 244 'AnonymizeEntitlement' test.out

#- 245 AnonymizeFulfillment
samples/cli/sample-apps Platform anonymizeFulfillment \
    --namespace $AB_NAMESPACE \
    --userId 'bk4YYvxb0VRgrRj2' \
    > test.out 2>&1
eval_tap $? 245 'AnonymizeFulfillment' test.out

#- 246 AnonymizeIntegration
samples/cli/sample-apps Platform anonymizeIntegration \
    --namespace $AB_NAMESPACE \
    --userId '7L4Zc28wTXkhfZh1' \
    > test.out 2>&1
eval_tap $? 246 'AnonymizeIntegration' test.out

#- 247 AnonymizeOrder
samples/cli/sample-apps Platform anonymizeOrder \
    --namespace $AB_NAMESPACE \
    --userId 'Eywmi66DKjhGJJsM' \
    > test.out 2>&1
eval_tap $? 247 'AnonymizeOrder' test.out

#- 248 AnonymizePayment
samples/cli/sample-apps Platform anonymizePayment \
    --namespace $AB_NAMESPACE \
    --userId 'TVi9wEtBP3ng4DtL' \
    > test.out 2>&1
eval_tap $? 248 'AnonymizePayment' test.out

#- 249 AnonymizeRevocation
samples/cli/sample-apps Platform anonymizeRevocation \
    --namespace $AB_NAMESPACE \
    --userId 'hNjRixf38GD4M1ag' \
    > test.out 2>&1
eval_tap $? 249 'AnonymizeRevocation' test.out

#- 250 AnonymizeSubscription
samples/cli/sample-apps Platform anonymizeSubscription \
    --namespace $AB_NAMESPACE \
    --userId 'yucyPwI3nKJCUbKw' \
    > test.out 2>&1
eval_tap $? 250 'AnonymizeSubscription' test.out

#- 251 AnonymizeWallet
samples/cli/sample-apps Platform anonymizeWallet \
    --namespace $AB_NAMESPACE \
    --userId 'aLnNkqvaeSAs9CzQ' \
    > test.out 2>&1
eval_tap $? 251 'AnonymizeWallet' test.out

#- 252 GetUserDLCByPlatform
samples/cli/sample-apps Platform getUserDLCByPlatform \
    --namespace $AB_NAMESPACE \
    --userId 'Yq9GyrxEMQo6jMAy' \
    --type 'PSN' \
    > test.out 2>&1
eval_tap $? 252 'GetUserDLCByPlatform' test.out

#- 253 GetUserDLC
samples/cli/sample-apps Platform getUserDLC \
    --namespace $AB_NAMESPACE \
    --userId 'PUqtnZfMpmJWIiaU' \
    --includeAllNamespaces 'true' \
    --status 'FULFILLED' \
    --type 'EPICGAMES' \
    > test.out 2>&1
eval_tap $? 253 'GetUserDLC' test.out

#- 254 QueryUserEntitlements
samples/cli/sample-apps Platform queryUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'ysNvtYkjyIaQJ9x9' \
    --activeOnly 'true' \
    --appType 'GAME' \
    --collectionId 'IlwitTOYDmN878CY' \
    --entitlementClazz 'APP' \
    --entitlementName 'qpTGuDw3xDKPmwuv' \
    --features '["JLfQUuHqNokrsBDJ", "uYBGDNxu0e4jNIue", "S3yFIMbquU5qenDF"]' \
    --fuzzyMatchName 'false' \
    --ignoreActiveDate 'false' \
    --itemId '["WwllAQle4JgnkhcX", "UYPpkO4wGAfISQvF", "HWHHHrLpWhffpWtX"]' \
    --limit '60' \
    --offset '5' \
    --origin 'GooglePlay' \
    > test.out 2>&1
eval_tap $? 254 'QueryUserEntitlements' test.out

#- 255 GrantUserEntitlement
samples/cli/sample-apps Platform grantUserEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'MfU7iTkqHCask7uc' \
    --body '[{"collectionId": "2AQpSKR4cEolqBPD", "endDate": "1985-03-10T00:00:00Z", "grantedCode": "ciZXkNzeC6u0p3aI", "itemId": "7eosNVvjQlF24Sxd", "itemNamespace": "lmeHKCCT7KlUTlam", "language": "KgRO", "metadata": {"bwIZe7GOP0h0d43z": {}, "5rIyR7zTQR7FHmAY": {}, "ZBxwbKUvhuJbkA0d": {}}, "origin": "Twitch", "quantity": 70, "region": "OmUfJdQe04r26wqr", "source": "OTHER", "startDate": "1983-05-26T00:00:00Z", "storeId": "Xa1E8N1rOFc6XZVR"}, {"collectionId": "PEueLpOSzuTTiSCk", "endDate": "1990-05-16T00:00:00Z", "grantedCode": "Mnd8CEIshaqnMsiO", "itemId": "3h0m0eM6qvUMbAgy", "itemNamespace": "uvQMLDhlWlgG02lq", "language": "zuDx_368", "metadata": {"xGLZFFXBmzj1Tpmq": {}, "RmP5eohkyS1jZM0h": {}, "GghsalwZipFQKW7e": {}}, "origin": "Playstation", "quantity": 98, "region": "WI8BxAEVrayUOMvA", "source": "ACHIEVEMENT", "startDate": "1993-03-03T00:00:00Z", "storeId": "CyDXk5FsFl2tJiJU"}, {"collectionId": "Ut2TBlHb46bjabjF", "endDate": "1985-06-24T00:00:00Z", "grantedCode": "vEzjsT0NNv2iU6CU", "itemId": "o5fcnDCrBlNDOuLL", "itemNamespace": "DgdxgGknWrfsFdZw", "language": "exW-ELpV-762", "metadata": {"IjyIRDdYWsLwtra4": {}, "9keKCPHm09l5jQgg": {}, "y6fue3Nh6MjN1YSk": {}}, "origin": "IOS", "quantity": 34, "region": "g09mzEhTbiQkeU6l", "source": "REWARD", "startDate": "1996-07-11T00:00:00Z", "storeId": "HonkztueODLeXpCa"}]' \
    > test.out 2>&1
eval_tap $? 255 'GrantUserEntitlement' test.out

#- 256 GetUserAppEntitlementByAppId
samples/cli/sample-apps Platform getUserAppEntitlementByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'rTsZ2Avk1AnLUJDw' \
    --activeOnly 'false' \
    --appId 'QcD5g2zTChZitGhK' \
    > test.out 2>&1
eval_tap $? 256 'GetUserAppEntitlementByAppId' test.out

#- 257 QueryUserEntitlementsByAppType
samples/cli/sample-apps Platform queryUserEntitlementsByAppType \
    --namespace $AB_NAMESPACE \
    --userId 'Te67EwY5t3rpO342' \
    --activeOnly 'false' \
    --limit '50' \
    --offset '40' \
    --appType 'SOFTWARE' \
    > test.out 2>&1
eval_tap $? 257 'QueryUserEntitlementsByAppType' test.out

#- 258 GetUserEntitlementsByIds
samples/cli/sample-apps Platform getUserEntitlementsByIds \
    --namespace $AB_NAMESPACE \
    --userId 'xPoYoRMv9H8fDNf6' \
    --ids '["MqMoixUaGoGmOUNd", "P2GUnQ7v81BHd8Mv", "rGaflsm8ElqDFHjJ"]' \
    > test.out 2>&1
eval_tap $? 258 'GetUserEntitlementsByIds' test.out

#- 259 GetUserEntitlementByItemId
samples/cli/sample-apps Platform getUserEntitlementByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'fZLoxVLV1EuSvKuw' \
    --activeOnly 'false' \
    --entitlementClazz 'APP' \
    --platform '1QkRmly9V5Ronkcm' \
    --itemId '9VaS9poC2eSfABeR' \
    > test.out 2>&1
eval_tap $? 259 'GetUserEntitlementByItemId' test.out

#- 260 GetUserActiveEntitlementsByItemIds
samples/cli/sample-apps Platform getUserActiveEntitlementsByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'kfV0OK4dUTEyVn0o' \
    --ids '["MdFTqBTke8wybPzw", "0ioK2esr1bszW5K1", "ih9zCnMXRfGfyNJE"]' \
    --platform 'FBDQFXA0RNxl3KO6' \
    > test.out 2>&1
eval_tap $? 260 'GetUserActiveEntitlementsByItemIds' test.out

#- 261 GetUserEntitlementBySku
samples/cli/sample-apps Platform getUserEntitlementBySku \
    --namespace $AB_NAMESPACE \
    --userId '13Zs6Hsi8ygSOYfn' \
    --activeOnly 'false' \
    --entitlementClazz 'SUBSCRIPTION' \
    --platform 'NnVHRdvtQ3PxsSg1' \
    --sku 'uObj7MtuoXfafy2v' \
    > test.out 2>&1
eval_tap $? 261 'GetUserEntitlementBySku' test.out

#- 262 ExistsAnyUserActiveEntitlement
samples/cli/sample-apps Platform existsAnyUserActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'uyQQlFhXopPe6tir' \
    --appIds '["BJfNxJ7xoFtlxPhn", "uZ2jGPr0cvuCp10c", "tGWs2ZHwTD4BXlTi"]' \
    --itemIds '["se4zoPLQf2gsjW4i", "RaUX7zw5R1mi2W6A", "8JUq1thh5vUgwWx0"]' \
    --platform 'REbXPYQhLDzdm8YU' \
    --skus '["NO9D5Bccd4pHLKXE", "IZUDznGi1Mk2467W", "7y1nMnaqAXeg0gRo"]' \
    > test.out 2>&1
eval_tap $? 262 'ExistsAnyUserActiveEntitlement' test.out

#- 263 ExistsAnyUserActiveEntitlementByItemIds
samples/cli/sample-apps Platform existsAnyUserActiveEntitlementByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'lbxQteiZ5AywCGur' \
    --platform 'ptExxjBEAVqzKxHl' \
    --itemIds '["GgusmI3D6RFtMC0n", "PWSAy8Fts4krE8Eg", "oUzViBj28Fe4luqB"]' \
    > test.out 2>&1
eval_tap $? 263 'ExistsAnyUserActiveEntitlementByItemIds' test.out

#- 264 GetUserAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform getUserAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'wE765Q3uEEGQ6jIF' \
    --appId 'tNCJuMsReGgt7ytt' \
    > test.out 2>&1
eval_tap $? 264 'GetUserAppEntitlementOwnershipByAppId' test.out

#- 265 GetUserEntitlementOwnershipByItemId
samples/cli/sample-apps Platform getUserEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'G8nzjY3CubHdm5cM' \
    --entitlementClazz 'OPTIONBOX' \
    --platform 'WBv4mV5R2sst9GAm' \
    --itemId 'D55B9r0cbiIlCA2G' \
    > test.out 2>&1
eval_tap $? 265 'GetUserEntitlementOwnershipByItemId' test.out

#- 266 GetUserEntitlementOwnershipByItemIds
samples/cli/sample-apps Platform getUserEntitlementOwnershipByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'urOzr31BYycZZDsP' \
    --ids '["TihRHP2ENxlDmL5F", "Cx87DjSjPExYcgRp", "zlhyIPyhPOa9ptN0"]' \
    --platform 'zO1bPvLRtuCSaYxI' \
    > test.out 2>&1
eval_tap $? 266 'GetUserEntitlementOwnershipByItemIds' test.out

#- 267 GetUserEntitlementOwnershipBySku
samples/cli/sample-apps Platform getUserEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --userId 's0ogNsaAQTKEVTNZ' \
    --entitlementClazz 'OPTIONBOX' \
    --platform 'xuUUj6j8dtDYgSPg' \
    --sku 'iMwwW8UvGorYfQq1' \
    > test.out 2>&1
eval_tap $? 267 'GetUserEntitlementOwnershipBySku' test.out

#- 268 RevokeAllEntitlements
samples/cli/sample-apps Platform revokeAllEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'PBoodnDL9ELTQ2tt' \
    > test.out 2>&1
eval_tap $? 268 'RevokeAllEntitlements' test.out

#- 269 RevokeUserEntitlements
samples/cli/sample-apps Platform revokeUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'NsdeXkCY9XQ8NfbB' \
    --entitlementIds 'KEytAo8LIKbh2P9w' \
    > test.out 2>&1
eval_tap $? 269 'RevokeUserEntitlements' test.out

#- 270 GetUserEntitlement
samples/cli/sample-apps Platform getUserEntitlement \
    --entitlementId 'eXtF778s1aiTuZj4' \
    --namespace $AB_NAMESPACE \
    --userId 'NLOokzeqvuCxwRda' \
    > test.out 2>&1
eval_tap $? 270 'GetUserEntitlement' test.out

#- 271 UpdateUserEntitlement
samples/cli/sample-apps Platform updateUserEntitlement \
    --entitlementId 'mz5ld4LD3U9eCYVL' \
    --namespace $AB_NAMESPACE \
    --userId 'eAdTzERP4STSk1ez' \
    --body '{"collectionId": "JJP4xpH8brkxsjsx", "endDate": "1980-12-25T00:00:00Z", "nullFieldList": ["nGvWYr4K2rwvlQGE", "7kj2hRqYemKN4O2h", "HymGQfVyT1KKxV4c"], "origin": "Epic", "reason": "VxSE0iIhetF1jUUy", "startDate": "1986-12-31T00:00:00Z", "status": "REVOKED", "useCount": 9}' \
    > test.out 2>&1
eval_tap $? 271 'UpdateUserEntitlement' test.out

#- 272 ConsumeUserEntitlement
samples/cli/sample-apps Platform consumeUserEntitlement \
    --entitlementId 'x2VOd4NBRBpnukyj' \
    --namespace $AB_NAMESPACE \
    --userId 'uEwOWfuyWF8Mf9qY' \
    --body '{"metadata": {"c4FTi6bIqFbe4JNU": {}, "s7Y6kWQOCw5DYSoD": {}, "J9BLj7hUca4ez3Bh": {}}, "options": ["6ggzctmAwxkH5j2b", "v9idefi9MCNdGHCM", "nxS4A5eI12rg9q53"], "platform": "fUUw4ng3Fpgde4Wj", "requestId": "KWPWFIBomYqNZhHN", "useCount": 100}' \
    > test.out 2>&1
eval_tap $? 272 'ConsumeUserEntitlement' test.out

#- 273 DisableUserEntitlement
samples/cli/sample-apps Platform disableUserEntitlement \
    --entitlementId 'kIWu05K65Le6HiMn' \
    --namespace $AB_NAMESPACE \
    --userId 'M7Pe6BXfj8axpxsI' \
    > test.out 2>&1
eval_tap $? 273 'DisableUserEntitlement' test.out

#- 274 EnableUserEntitlement
samples/cli/sample-apps Platform enableUserEntitlement \
    --entitlementId 'mPtoXirMDBABlHqb' \
    --namespace $AB_NAMESPACE \
    --userId 'GPG2S02PcfhlAB4q' \
    > test.out 2>&1
eval_tap $? 274 'EnableUserEntitlement' test.out

#- 275 GetUserEntitlementHistories
samples/cli/sample-apps Platform getUserEntitlementHistories \
    --entitlementId 'iaKEWZAQ9WhHlKCt' \
    --namespace $AB_NAMESPACE \
    --userId '4j5uQIBXAL6HfP3P' \
    > test.out 2>&1
eval_tap $? 275 'GetUserEntitlementHistories' test.out

#- 276 RevokeUserEntitlement
samples/cli/sample-apps Platform revokeUserEntitlement \
    --entitlementId '92RaS0odjzLTDoWk' \
    --namespace $AB_NAMESPACE \
    --userId '5bh97wE5ZqNDOyZe' \
    --body '{"metadata": {"4sM3rsidZKM2ZidK": {}, "kWBFX5U8ryrPUbAc": {}, "KKrb5z0LmlcYOZAp": {}}}' \
    > test.out 2>&1
eval_tap $? 276 'RevokeUserEntitlement' test.out

#- 277 RevokeUserEntitlementByUseCount
samples/cli/sample-apps Platform revokeUserEntitlementByUseCount \
    --entitlementId 'I9NJYIv2WUxsJWfE' \
    --namespace $AB_NAMESPACE \
    --userId 'erAqrY7528q66FuV' \
    --body '{"reason": "NVf6wVSai74iwQaO", "useCount": 79}' \
    > test.out 2>&1
eval_tap $? 277 'RevokeUserEntitlementByUseCount' test.out

#- 278 PreCheckRevokeUserEntitlementByUseCount
samples/cli/sample-apps Platform preCheckRevokeUserEntitlementByUseCount \
    --entitlementId 'TLXvTKqwXBZQm6X2' \
    --namespace $AB_NAMESPACE \
    --userId 'FtQyY552RHW6vUbv' \
    --quantity '27' \
    > test.out 2>&1
eval_tap $? 278 'PreCheckRevokeUserEntitlementByUseCount' test.out

#- 279 RevokeUseCount
eval_tap 0 279 'RevokeUseCount # SKIP deprecated' test.out

#- 280 SellUserEntitlement
samples/cli/sample-apps Platform sellUserEntitlement \
    --entitlementId '1mD4DuOPztMp6koX' \
    --namespace $AB_NAMESPACE \
    --userId 'ksFnvs9XPE9lsjCl' \
    --body '{"platform": "bicQ9fdpxw2Ck3ab", "requestId": "R1NlYa3VeYjpbdcp", "useCount": 95}' \
    > test.out 2>&1
eval_tap $? 280 'SellUserEntitlement' test.out

#- 281 FulfillItem
samples/cli/sample-apps Platform fulfillItem \
    --namespace $AB_NAMESPACE \
    --userId 'rPH3BRii8RtIGhyv' \
    --body '{"duration": 91, "endDate": "1979-09-24T00:00:00Z", "entitlementCollectionId": "CCI6DXQxGE54g6AS", "entitlementOrigin": "Steam", "itemId": "Lvussdz1FxUP5jiM", "itemSku": "nonmZoDFBQqfWCXv", "language": "aK7zNoMlUavz4tvy", "metadata": {"qq1gvZTclUjdCyWe": {}, "JcYjF1TP346bWmSn": {}, "SO5SwYUBdyzv4EgZ": {}}, "order": {"currency": {"currencyCode": "7zTkjQ63mG4D4JUC", "currencySymbol": "9UDNWce5siCndFex", "currencyType": "VIRTUAL", "decimals": 96, "namespace": "bquHk2faRY13aCmG"}, "ext": {"ah7W6j5UZAsNdSoW": {}, "ZcFn9jG42UcESQQY": {}, "8eFW0WeANwEEio1f": {}}, "free": true}, "orderNo": "C5JX2CjITKzalPSR", "origin": "IOS", "overrideBundleItemQty": {"yWn8JyMQgdbvJhlk": 50, "67r1068lxVAXozJE": 53, "roCRyXlpZpK6GPwo": 28}, "quantity": 75, "region": "stk6trMsvxPzWEol", "source": "PURCHASE", "startDate": "1994-06-07T00:00:00Z", "storeId": "Zys1G3v1oa1ln83X"}' \
    > test.out 2>&1
eval_tap $? 281 'FulfillItem' test.out

#- 282 RedeemCode
samples/cli/sample-apps Platform redeemCode \
    --namespace $AB_NAMESPACE \
    --userId 'cASkhA753dNFWa9K' \
    --body '{"code": "yDffLG4wXx38PQpH", "language": "VTZ_yAmL", "region": "o58NyLE0MOabo1nF"}' \
    > test.out 2>&1
eval_tap $? 282 'RedeemCode' test.out

#- 283 PreCheckFulfillItem
samples/cli/sample-apps Platform preCheckFulfillItem \
    --namespace $AB_NAMESPACE \
    --userId 'TGi2DyFmx5IQZzEI' \
    --body '{"itemId": "nzMvKTT0bg5XR7sA", "itemSku": "Pee9XrCHLyZGz3OS", "quantity": 32}' \
    > test.out 2>&1
eval_tap $? 283 'PreCheckFulfillItem' test.out

#- 284 FulfillRewards
samples/cli/sample-apps Platform fulfillRewards \
    --namespace $AB_NAMESPACE \
    --userId 'k72TYQKUQgXO3NMf' \
    --body '{"entitlementCollectionId": "RNBdv6N2pOhDABwx", "entitlementOrigin": "Xbox", "metadata": {"ricGKJEwpClk2RjS": {}, "1D8Ie3iEAqnsMgT7": {}, "305WZlzfzpoTtaG7": {}}, "origin": "Other", "rewards": [{"currency": {"currencyCode": "98sWthkhf6U0G0ZS", "namespace": "Y7pLGFuoT5wZmNR4"}, "item": {"itemId": "sWUsyQdVGJsPfizV", "itemName": "yg8y7kRlKKAYljgY", "itemSku": "2ugyfNUswwU0rT3j", "itemType": "M9iDott7xZjKP60v"}, "quantity": 1, "type": "ITEM"}, {"currency": {"currencyCode": "rm7odzOwdeS5dBJK", "namespace": "pdNRPbwO6ShAXHBh"}, "item": {"itemId": "es357silWDK5nvOF", "itemName": "3OwcmcEoMyItztBZ", "itemSku": "srkK0xDTCjzoH102", "itemType": "t6UyxKvOukPy2VBk"}, "quantity": 45, "type": "ITEM"}, {"currency": {"currencyCode": "NK4eRMrmk08oTOv8", "namespace": "jjOmiV9gBFTpAVpg"}, "item": {"itemId": "hhjupvkx7afZjxQ6", "itemName": "he1S2xPzauUldj3c", "itemSku": "eENiw0zYu0dsatLI", "itemType": "uMGxF4NsVWeySYVE"}, "quantity": 69, "type": "CURRENCY"}], "source": "DLC", "transactionId": "HmzLnMqS0uNe5vae"}' \
    > test.out 2>&1
eval_tap $? 284 'FulfillRewards' test.out

#- 285 QueryUserIAPOrders
samples/cli/sample-apps Platform queryUserIAPOrders \
    --namespace $AB_NAMESPACE \
    --userId 'ovvwrhc1KIky1iU7' \
    --endTime 'qHLBahtgt3QZnqQd' \
    --limit '86' \
    --offset '23' \
    --productId 'fNyaTCLIVOHaozde' \
    --startTime '7PIDLwtcwBIwKQCc' \
    --status 'FAILED' \
    --type 'STADIA' \
    > test.out 2>&1
eval_tap $? 285 'QueryUserIAPOrders' test.out

#- 286 QueryAllUserIAPOrders
samples/cli/sample-apps Platform queryAllUserIAPOrders \
    --namespace $AB_NAMESPACE \
    --userId '34Y0d1eJONUiFFdd' \
    > test.out 2>&1
eval_tap $? 286 'QueryAllUserIAPOrders' test.out

#- 287 QueryUserIAPConsumeHistory
samples/cli/sample-apps Platform queryUserIAPConsumeHistory \
    --namespace $AB_NAMESPACE \
    --userId 'SQOJRdTgfX3Xo9gp' \
    --endTime 'Gjcse2jX7wxGBqrF' \
    --limit '52' \
    --offset '44' \
    --startTime 'rFp5FvacB8lmLJlX' \
    --status 'SUCCESS' \
    --type 'PLAYSTATION' \
    > test.out 2>&1
eval_tap $? 287 'QueryUserIAPConsumeHistory' test.out

#- 288 MockFulfillIAPItem
samples/cli/sample-apps Platform mockFulfillIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'u5LXvWcF9wC09xdF' \
    --body '{"itemIdentityType": "ITEM_ID", "language": "JFCj", "productId": "vAfjc8FTQRNWNPE2", "region": "aOiGZzACUAlCmqQU", "transactionId": "nkN0qjps8ttoNDW0", "type": "XBOX"}' \
    > test.out 2>&1
eval_tap $? 288 'MockFulfillIAPItem' test.out

#- 289 AdminGetIAPOrderLineItems
samples/cli/sample-apps Platform adminGetIAPOrderLineItems \
    --iapOrderNo 'HHhlgqF8GkhZQwpV' \
    --namespace $AB_NAMESPACE \
    --userId 'F7UFIZz0pGIenLXV' \
    > test.out 2>&1
eval_tap $? 289 'AdminGetIAPOrderLineItems' test.out

#- 290 AdminSyncSteamAbnormalTransaction
samples/cli/sample-apps Platform adminSyncSteamAbnormalTransaction \
    --namespace $AB_NAMESPACE \
    --userId 'pKnPKBcBjBO1dwj3' \
    > test.out 2>&1
eval_tap $? 290 'AdminSyncSteamAbnormalTransaction' test.out

#- 291 AdminSyncSteamIAPByTransaction
samples/cli/sample-apps Platform adminSyncSteamIAPByTransaction \
    --namespace $AB_NAMESPACE \
    --userId 'wwi7hh5IOUqiFKx9' \
    --body '{"orderId": "uTyGqkZfmAUawmlY"}' \
    > test.out 2>&1
eval_tap $? 291 'AdminSyncSteamIAPByTransaction' test.out

#- 292 QueryUserThirdPartySubscription
samples/cli/sample-apps Platform queryUserThirdPartySubscription \
    --namespace $AB_NAMESPACE \
    --userId 'z90QzMy0Bp9fcg73' \
    --activeOnly 'true' \
    --groupId 'QpDJ22yXzKNi10RN' \
    --limit '39' \
    --offset '20' \
    --platform 'TWITCH' \
    --productId 'tVdGNslv8v5fk1ZU' \
    > test.out 2>&1
eval_tap $? 292 'QueryUserThirdPartySubscription' test.out

#- 293 GetThirdPartyPlatformSubscriptionOwnershipByGroupId
samples/cli/sample-apps Platform getThirdPartyPlatformSubscriptionOwnershipByGroupId \
    --namespace $AB_NAMESPACE \
    --platform 'STADIA' \
    --userId 'mDPYJXDivRocaU3x' \
    --groupId 'das4NV5uvHbEhJ70' \
    > test.out 2>&1
eval_tap $? 293 'GetThirdPartyPlatformSubscriptionOwnershipByGroupId' test.out

#- 294 GetThirdPartyPlatformSubscriptionOwnershipByProductId
samples/cli/sample-apps Platform getThirdPartyPlatformSubscriptionOwnershipByProductId \
    --namespace $AB_NAMESPACE \
    --platform 'STEAM' \
    --userId 'k1egjcZqFpsqHcFq' \
    --productId 'ySr4XLjDUmbxbJOB' \
    > test.out 2>&1
eval_tap $? 294 'GetThirdPartyPlatformSubscriptionOwnershipByProductId' test.out

#- 295 QueryUserThirdPartySubscriptionTransactions
samples/cli/sample-apps Platform queryUserThirdPartySubscriptionTransactions \
    --namespace $AB_NAMESPACE \
    --userId 't5NeMeB7xi7B5c6B' \
    --activeOnly 'false' \
    --groupId 'ngKsa2778VYFnFxy' \
    --limit '12' \
    --offset '94' \
    --platform 'STADIA' \
    --productId 'Yv3mm7xclN3FJ151' \
    > test.out 2>&1
eval_tap $? 295 'QueryUserThirdPartySubscriptionTransactions' test.out

#- 296 GetThirdPartySubscriptionDetails
samples/cli/sample-apps Platform getThirdPartySubscriptionDetails \
    --id 'J2Otqn4b3EVbHVjN' \
    --namespace $AB_NAMESPACE \
    --userId 'oJmTmHPdbuKVL6j7' \
    > test.out 2>&1
eval_tap $? 296 'GetThirdPartySubscriptionDetails' test.out

#- 297 GetSubscriptionHistory
samples/cli/sample-apps Platform getSubscriptionHistory \
    --id 'BOqCyXn6DgUeeCbO' \
    --namespace $AB_NAMESPACE \
    --userId 'Wx9OWIRrNk5S0x20' \
    --limit '89' \
    --offset '73' \
    > test.out 2>&1
eval_tap $? 297 'GetSubscriptionHistory' test.out

#- 298 SyncSubscriptionTransaction
samples/cli/sample-apps Platform syncSubscriptionTransaction \
    --id 'yCeOB6A44brY2dDr' \
    --namespace $AB_NAMESPACE \
    --userId 'duMGNKNwjVHyLCsO' \
    > test.out 2>&1
eval_tap $? 298 'SyncSubscriptionTransaction' test.out

#- 299 GetThirdPartyUserSubscriptionDetails
samples/cli/sample-apps Platform getThirdPartyUserSubscriptionDetails \
    --id 'HjKiofVR6pRjpcEF' \
    --namespace $AB_NAMESPACE \
    --userId 'RhK9t0FiIM13Ax4H' \
    > test.out 2>&1
eval_tap $? 299 'GetThirdPartyUserSubscriptionDetails' test.out

#- 300 SyncSubscription
samples/cli/sample-apps Platform syncSubscription \
    --id 'nBNaDPzNrwfqIbGh' \
    --namespace $AB_NAMESPACE \
    --userId '22NcMehFlFpN56Gi' \
    > test.out 2>&1
eval_tap $? 300 'SyncSubscription' test.out

#- 301 QueryUserOrders
samples/cli/sample-apps Platform queryUserOrders \
    --namespace $AB_NAMESPACE \
    --userId 'kiaTzYqewk6a1Hxj' \
    --discounted 'false' \
    --itemId 'kHZCUQXAnWh23zww' \
    --limit '80' \
    --offset '99' \
    --status 'CHARGEBACK_REVERSED' \
    > test.out 2>&1
eval_tap $? 301 'QueryUserOrders' test.out

#- 302 AdminCreateUserOrder
samples/cli/sample-apps Platform adminCreateUserOrder \
    --namespace $AB_NAMESPACE \
    --userId '79rgkujVMZLIksvA' \
    --body '{"currencyCode": "r7FRs4Dq2ELpqd7R", "currencyNamespace": "On21lOT7pow8Kc1z", "discountCodes": ["EInIytG4PkZuO5q7", "69pzFSr45z4vTCZe", "Zg44cojVg1rQR16v"], "discountedPrice": 58, "entitlementPlatform": "IOS", "ext": {"z7WgpGBRvrx3IPki": {}, "5fYiC4jGPCHqEnzK": {}, "ompf6ELeJvd6IYGU": {}}, "itemId": "pbFRssTRUDsfxw7v", "language": "aAiFeY3eNi0G6Zs0", "options": {"skipPriceValidation": true}, "platform": "Nintendo", "price": 10, "quantity": 49, "region": "3MpwAPvopRQ6K32t", "returnUrl": "SpubEWPVkZOZcDfv", "sandbox": true, "sectionId": "FvI6o0vNAqOX27ZJ"}' \
    > test.out 2>&1
eval_tap $? 302 'AdminCreateUserOrder' test.out

#- 303 CountOfPurchasedItem
samples/cli/sample-apps Platform countOfPurchasedItem \
    --namespace $AB_NAMESPACE \
    --userId 'bLxeYdO68s7faohz' \
    --itemId 'WzQNxglhRT5aMmmp' \
    > test.out 2>&1
eval_tap $? 303 'CountOfPurchasedItem' test.out

#- 304 GetUserOrder
samples/cli/sample-apps Platform getUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'EDJFVCSsTEJH8Ep3' \
    --userId 'ygPjZCDRyE53ljk0' \
    > test.out 2>&1
eval_tap $? 304 'GetUserOrder' test.out

#- 305 UpdateUserOrderStatus
samples/cli/sample-apps Platform updateUserOrderStatus \
    --namespace $AB_NAMESPACE \
    --orderNo '60fZJ671Z6T5oZNU' \
    --userId 'h0ZX3JhemNTYIQCY' \
    --body '{"status": "CLOSED", "statusReason": "5CNimhXnwFrmFGPh"}' \
    > test.out 2>&1
eval_tap $? 305 'UpdateUserOrderStatus' test.out

#- 306 FulfillUserOrder
samples/cli/sample-apps Platform fulfillUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'o5o7IHMihXwJKrkz' \
    --userId 'c0MLMjL9daB9vCs5' \
    > test.out 2>&1
eval_tap $? 306 'FulfillUserOrder' test.out

#- 307 GetUserOrderGrant
eval_tap 0 307 'GetUserOrderGrant # SKIP deprecated' test.out

#- 308 GetUserOrderHistories
samples/cli/sample-apps Platform getUserOrderHistories \
    --namespace $AB_NAMESPACE \
    --orderNo 'KICOsy63D7E6FsoU' \
    --userId 'm7yxnfDvflo6odbP' \
    > test.out 2>&1
eval_tap $? 308 'GetUserOrderHistories' test.out

#- 309 ProcessUserOrderNotification
samples/cli/sample-apps Platform processUserOrderNotification \
    --namespace $AB_NAMESPACE \
    --orderNo 'S0jcogeS9iGHYo5R' \
    --userId 'inZMv9YtEs1sKRt1' \
    --body '{"additionalData": {"cardSummary": "c1OqYxnp8pjzzuJh"}, "authorisedTime": "1997-02-26T00:00:00Z", "chargebackReversedTime": "1991-01-12T00:00:00Z", "chargebackTime": "1973-06-17T00:00:00Z", "chargedTime": "1976-04-25T00:00:00Z", "createdTime": "1984-09-05T00:00:00Z", "currency": {"currencyCode": "TlfzhdGaGMy067cc", "currencySymbol": "XSLlqySxqV0l5EJR", "currencyType": "VIRTUAL", "decimals": 58, "namespace": "hZWLbgNCXpuREFcf"}, "customParameters": {"Ihlpy9y1Ma1x1K4b": {}, "sejK6uRIdp88vXYk": {}, "Ol4XJbSvUMrcSNNE": {}}, "extOrderNo": "3IuPpVyjI5d8QlPP", "extTxId": "TcyVvOyZTxTmX78a", "extUserId": "e9rmElQQHs4HsKfg", "issuedAt": "1977-05-08T00:00:00Z", "metadata": {"cafZtIuk1MUCRVdO": "VKsTN2eQZQI2gpO0", "NzlE52MmflkU74wd": "QsT7G6QXXUF5VDJB", "oSy0rFzNW6O1mXdV": "KkCmcNT0BkfvEObw"}, "namespace": "fBNhOXGkay6j380z", "nonceStr": "fe6SSfYB82ilbehT", "paymentData": {"discountAmount": 12, "discountCode": "LVKMJmxyxedYjJPl", "subtotalPrice": 18, "tax": 93, "totalPrice": 61}, "paymentMethod": "6QSnLIKQ1ER8BJXt", "paymentMethodFee": 97, "paymentOrderNo": "lpMpSay6SsSqZHjg", "paymentProvider": "ALIPAY", "paymentProviderFee": 57, "paymentStationUrl": "MRipJKRPI49otVw9", "price": 69, "refundedTime": "1989-04-25T00:00:00Z", "salesTax": 9, "sandbox": false, "sku": "elayY4UFsNMm0d1J", "status": "CHARGEBACK", "statusReason": "TJCjHESu8QAxm1jI", "subscriptionId": "F2fckwDQ8WHeZP61", "subtotalPrice": 10, "targetNamespace": "xVCI3yjdfMhWXjE8", "targetUserId": "ITL8FZR7XJTG2iuX", "tax": 29, "totalPrice": 48, "totalTax": 79, "txEndTime": "1997-03-15T00:00:00Z", "type": "B790bcsD0xs7Ev58", "userId": "GdM5cZYT2vJzeVYv", "vat": 15}' \
    > test.out 2>&1
eval_tap $? 309 'ProcessUserOrderNotification' test.out

#- 310 DownloadUserOrderReceipt
samples/cli/sample-apps Platform downloadUserOrderReceipt \
    --namespace $AB_NAMESPACE \
    --orderNo 'mjls5j7BF4fmxHHJ' \
    --userId 'lNy4KCUondIHvC1h' \
    > test.out 2>&1
eval_tap $? 310 'DownloadUserOrderReceipt' test.out

#- 311 CreateUserPaymentOrder
samples/cli/sample-apps Platform createUserPaymentOrder \
    --namespace $AB_NAMESPACE \
    --userId 'OMRelkmuqJmAy5rJ' \
    --body '{"currencyCode": "q6VcINie4xDQIeGo", "currencyNamespace": "kF0xqJqD22iJygsb", "customParameters": {"FPstZPmW2xFnW2uo": {}, "wnG6aidOncNMZTq0": {}, "qhKcls4cZmCrnkLd": {}}, "description": "COkhtSsyyIKA4bkL", "extOrderNo": "SwOevcshCPWGnckh", "extUserId": "yaxR4bX0xAZNJZ9L", "itemType": "EXTENSION", "language": "GJTc-jY", "metadata": {"dOA43pDhXdFPfXYx": "R4d7S2I9GrDvLJG2", "DdPWn3JmvQckNED4": "BL18fjmObcTpDGkh", "m83OwUQZ1qKo7ZSa": "53tZ1XpGxUCXi4HL"}, "notifyUrl": "UxMnBeUtzbYqYMe5", "omitNotification": false, "platform": "RodnG2pI570TEm1J", "price": 78, "recurringPaymentOrderNo": "9njyR2LGSq8WNF21", "region": "Vhrilya4PJTkZu8c", "returnUrl": "jKhfM95ogfIWsSCd", "sandbox": true, "sku": "rxEFFFZL7tmR9xjC", "subscriptionId": "8JUwl7e6wsfKy2HX", "title": "N8pLb3pufRs0xQag"}' \
    > test.out 2>&1
eval_tap $? 311 'CreateUserPaymentOrder' test.out

#- 312 RefundUserPaymentOrder
samples/cli/sample-apps Platform refundUserPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'gIw27GWHrjw9wzeY' \
    --userId 'EA6G34TZXI3oVSVJ' \
    --body '{"description": "GNY7zQMRMSSZwrSp"}' \
    > test.out 2>&1
eval_tap $? 312 'RefundUserPaymentOrder' test.out

#- 313 GetUserPlatformAccountClosureHistories
samples/cli/sample-apps Platform getUserPlatformAccountClosureHistories \
    --namespace $AB_NAMESPACE \
    --userId 'V03x2gLDL63lmKwM' \
    > test.out 2>&1
eval_tap $? 313 'GetUserPlatformAccountClosureHistories' test.out

#- 314 ApplyUserRedemption
samples/cli/sample-apps Platform applyUserRedemption \
    --namespace $AB_NAMESPACE \
    --userId '610cFqpdVxz3RzZ7' \
    --body '{"code": "W03tLlBLXzewDUod", "orderNo": "UwxlVDDGNn3xoVLB"}' \
    > test.out 2>&1
eval_tap $? 314 'ApplyUserRedemption' test.out

#- 315 DoRevocation
samples/cli/sample-apps Platform doRevocation \
    --namespace $AB_NAMESPACE \
    --userId 'Qfq3dx6xXK0zBK3m' \
    --body '{"meta": {"9XJ2pyYD2njTmC7o": {}, "QgZ8zEglHcYP1syH": {}, "UkeJKOilih0lmmxy": {}}, "reason": "0VwVwgfFoPRLICDL", "requestId": "V9ZviUObcdEBnOCf", "revokeEntries": [{"currency": {"balanceOrigin": "IOS", "currencyCode": "kZKRyzjFTuP4PfIX", "namespace": "53A5Q3TU6y0byWq8"}, "entitlement": {"entitlementId": "evSnkiGJVZFPXAMp"}, "item": {"entitlementOrigin": "IOS", "itemIdentity": "dQRNgrL8xPOFYPgN", "itemIdentityType": "ITEM_ID", "origin": "Playstation"}, "quantity": 89, "type": "ITEM"}, {"currency": {"balanceOrigin": "Oculus", "currencyCode": "l3mOaVNC4Gzk3pDB", "namespace": "jMK2mvBpZv4UnZYX"}, "entitlement": {"entitlementId": "LSGwe79X5cjm9bd4"}, "item": {"entitlementOrigin": "System", "itemIdentity": "P3y5xSaLgf3njDvc", "itemIdentityType": "ITEM_ID", "origin": "Epic"}, "quantity": 8, "type": "ITEM"}, {"currency": {"balanceOrigin": "Steam", "currencyCode": "c3BLTIcz0lPFUI2k", "namespace": "AOETLZ8M7a60znSq"}, "entitlement": {"entitlementId": "W8QnIwzoqPd5tfNd"}, "item": {"entitlementOrigin": "Epic", "itemIdentity": "Mo9apeqmtwfFOvrp", "itemIdentityType": "ITEM_SKU", "origin": "Xbox"}, "quantity": 34, "type": "ENTITLEMENT"}], "source": "IAP", "transactionId": "UpfZOZosB2Svw8fj"}' \
    > test.out 2>&1
eval_tap $? 315 'DoRevocation' test.out

#- 316 RegisterXblSessions
samples/cli/sample-apps Platform registerXblSessions \
    --namespace $AB_NAMESPACE \
    --userId 'T6uvuYVGxNpbWEGr' \
    --body '{"gameSessionId": "jc7dSaFV7864jVji", "payload": {"1nom9aVzIHPJoVro": {}, "p5YO1qh1vR4VPcLC": {}, "KjHHmKsoQdegrUws": {}}, "scid": "J1quYtXJcTixgGSl", "sessionTemplateName": "I5kHncA7jovy9kY0"}' \
    > test.out 2>&1
eval_tap $? 316 'RegisterXblSessions' test.out

#- 317 QueryUserSubscriptions
samples/cli/sample-apps Platform queryUserSubscriptions \
    --namespace $AB_NAMESPACE \
    --userId '7gVSeKa72Kco9ikW' \
    --chargeStatus 'SETUP' \
    --itemId 'Y6nlqpDU5QA4QCjC' \
    --limit '75' \
    --offset '39' \
    --sku 'hTcHhXsFrtNAdGTE' \
    --status 'CANCELLED' \
    --subscribedBy 'PLATFORM' \
    > test.out 2>&1
eval_tap $? 317 'QueryUserSubscriptions' test.out

#- 318 GetUserSubscriptionActivities
samples/cli/sample-apps Platform getUserSubscriptionActivities \
    --namespace $AB_NAMESPACE \
    --userId '3VYvzTs1DcMlRBEq' \
    --excludeSystem 'false' \
    --limit '57' \
    --offset '19' \
    --subscriptionId 'UsTapIvMakMZHHhE' \
    > test.out 2>&1
eval_tap $? 318 'GetUserSubscriptionActivities' test.out

#- 319 PlatformSubscribeSubscription
samples/cli/sample-apps Platform platformSubscribeSubscription \
    --namespace $AB_NAMESPACE \
    --userId 'oPW9fRhuo4ZmXx9z' \
    --body '{"grantDays": 44, "itemId": "dAfGl3qAhFIfAAK7", "language": "7cU4i4z9F83ZulQC", "reason": "XNikIvCHejwyv9mh", "region": "C7vBANlyMaQ9c0A6", "source": "B5G9iZktFoFcCrKO"}' \
    > test.out 2>&1
eval_tap $? 319 'PlatformSubscribeSubscription' test.out

#- 320 CheckUserSubscriptionSubscribableByItemId
samples/cli/sample-apps Platform checkUserSubscriptionSubscribableByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'z0Y09Ft4uAgboSzN' \
    --itemId '1B8QznLdafa44gUt' \
    > test.out 2>&1
eval_tap $? 320 'CheckUserSubscriptionSubscribableByItemId' test.out

#- 321 GetUserSubscription
samples/cli/sample-apps Platform getUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'kbPJV1nXF8jWsMoQ' \
    --userId 'wEjOmypnntNtTC1d' \
    > test.out 2>&1
eval_tap $? 321 'GetUserSubscription' test.out

#- 322 DeleteUserSubscription
samples/cli/sample-apps Platform deleteUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'l8wNeI2euPBM4sR6' \
    --userId 'OEt47aCqdCMcxhlU' \
    > test.out 2>&1
eval_tap $? 322 'DeleteUserSubscription' test.out

#- 323 CancelSubscription
samples/cli/sample-apps Platform cancelSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'esDWda1IvKQ4dfpG' \
    --userId 'foIxybSGeBCb11fv' \
    --force 'false' \
    --body '{"immediate": true, "reason": "HHQZtEtONlgmtcfL"}' \
    > test.out 2>&1
eval_tap $? 323 'CancelSubscription' test.out

#- 324 GrantDaysToSubscription
samples/cli/sample-apps Platform grantDaysToSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'KoCNEPRa2WQ4kXGo' \
    --userId 'ubVfn0rA1gPanxA7' \
    --body '{"grantDays": 47, "reason": "wmG9lU9iGBctiZdT"}' \
    > test.out 2>&1
eval_tap $? 324 'GrantDaysToSubscription' test.out

#- 325 GetUserSubscriptionBillingHistories
samples/cli/sample-apps Platform getUserSubscriptionBillingHistories \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'OGPvZYNJwsVngBJv' \
    --userId 'gmZvQFpkq7ZpT4Yb' \
    --excludeFree 'true' \
    --limit '45' \
    --offset '6' \
    > test.out 2>&1
eval_tap $? 325 'GetUserSubscriptionBillingHistories' test.out

#- 326 ProcessUserSubscriptionNotification
samples/cli/sample-apps Platform processUserSubscriptionNotification \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'fqKdlwOvkyaxBgbX' \
    --userId '8QKWzXpTjS1yJhtm' \
    --body '{"additionalData": {"cardSummary": "kkH88qtuHAYK3d8Q"}, "authorisedTime": "1983-01-08T00:00:00Z", "chargebackReversedTime": "1988-04-02T00:00:00Z", "chargebackTime": "1997-11-18T00:00:00Z", "chargedTime": "1992-08-24T00:00:00Z", "createdTime": "1977-05-07T00:00:00Z", "currency": {"currencyCode": "0mv6z0WzhvS9VGHa", "currencySymbol": "7Vjt7oVJsYKMAZ1c", "currencyType": "VIRTUAL", "decimals": 59, "namespace": "yWeNzAbNu6Xu5tkX"}, "customParameters": {"YLzXEeuGWu1AyUTM": {}, "1GdUT9S3gfc0ybJW": {}, "Y30WFkNfWldLvwgy": {}}, "extOrderNo": "vPUT9PGU6PvqWLlU", "extTxId": "uSZAqFe5hVeNaclQ", "extUserId": "tQg5xAOdZXIwuaqj", "issuedAt": "1978-07-02T00:00:00Z", "metadata": {"8IaTBwTICKpDv7b2": "0ySirF7MlblTwAOa", "Gi1O4ISJ1UnwfYWY": "8BCHRJUKkhNTbzyR", "lH7dUaJNXqpsMZCD": "rQklOzRv74r5EuWs"}, "namespace": "slQhU2w0BtXhzcj0", "nonceStr": "yWARPORYsWVf2nu6", "paymentData": {"discountAmount": 83, "discountCode": "tYwEdTKOvKRhr1pA", "subtotalPrice": 82, "tax": 53, "totalPrice": 90}, "paymentMethod": "MtFzklnDg7J5Yx9l", "paymentMethodFee": 40, "paymentOrderNo": "6KORV8P1EocSePOY", "paymentProvider": "XSOLLA", "paymentProviderFee": 93, "paymentStationUrl": "q7RhOIw4wflMo4Ep", "price": 36, "refundedTime": "1980-03-22T00:00:00Z", "salesTax": 0, "sandbox": true, "sku": "2UyIRlTzqpoqCXl4", "status": "CHARGEBACK_REVERSED", "statusReason": "2l7Eu4snbw63zzAY", "subscriptionId": "YMfYnAnhuM8b6pji", "subtotalPrice": 65, "targetNamespace": "xBCvMnUVRdVIPjtJ", "targetUserId": "KeMpr9jASi9JNRoW", "tax": 6, "totalPrice": 88, "totalTax": 64, "txEndTime": "1977-08-16T00:00:00Z", "type": "bUCUCCBui5nJji8p", "userId": "8AVajzzbgDuHjM5t", "vat": 68}' \
    > test.out 2>&1
eval_tap $? 326 'ProcessUserSubscriptionNotification' test.out

#- 327 AcquireUserTicket
samples/cli/sample-apps Platform acquireUserTicket \
    --boothName '15YRWBuPwQkB6wqP' \
    --namespace $AB_NAMESPACE \
    --userId 'CsJZG8CrKgeW3cMe' \
    --body '{"count": 28, "orderNo": "ilMZ7SyJMzuJ1tEf"}' \
    > test.out 2>&1
eval_tap $? 327 'AcquireUserTicket' test.out

#- 328 QueryUserCurrencyWallets
samples/cli/sample-apps Platform queryUserCurrencyWallets \
    --namespace $AB_NAMESPACE \
    --userId 'nrpExnfKPdNdlK7A' \
    > test.out 2>&1
eval_tap $? 328 'QueryUserCurrencyWallets' test.out

#- 329 DebitUserWalletByCurrencyCode
samples/cli/sample-apps Platform debitUserWalletByCurrencyCode \
    --currencyCode 'C8Oh8v1LVZh0lnCg' \
    --namespace $AB_NAMESPACE \
    --userId 'oB08JTMFrorB4qI5' \
    --body '{"allowOverdraft": false, "amount": 44, "balanceOrigin": "Epic", "balanceSource": "TRADE", "metadata": {"ZCSYCRhGQ54KHXge": {}, "eXRF1fArnex1xFDG": {}, "70nBntCyOge7Kbnj": {}}, "reason": "eFUJTAX3GkEQLtzK"}' \
    > test.out 2>&1
eval_tap $? 329 'DebitUserWalletByCurrencyCode' test.out

#- 330 ListUserCurrencyTransactions
samples/cli/sample-apps Platform listUserCurrencyTransactions \
    --currencyCode '0FLTHKpPW8U6m6IA' \
    --namespace $AB_NAMESPACE \
    --userId 'vZKXs7zAnZ6RADfJ' \
    --limit '79' \
    --offset '52' \
    > test.out 2>&1
eval_tap $? 330 'ListUserCurrencyTransactions' test.out

#- 331 CheckBalance
samples/cli/sample-apps Platform checkBalance \
    --currencyCode 'eh98Js47IQBgCOoT' \
    --namespace $AB_NAMESPACE \
    --userId 'RuMgSUocW2MX2E3j' \
    --request '{"amount": 2, "debitBalanceSource": "IAP_REVOCATION", "metadata": {"VtC504o7IknPpfgv": {}, "c4ziEWQJxjHKKrTR": {}, "v6vbwP6d7bBNhKPA": {}}, "reason": "j4K1kRLKN0PHztuB", "walletPlatform": "Nintendo"}' \
    > test.out 2>&1
eval_tap $? 331 'CheckBalance' test.out

#- 332 CheckWallet
eval_tap 0 332 'CheckWallet # SKIP deprecated' test.out

#- 333 CreditUserWallet
samples/cli/sample-apps Platform creditUserWallet \
    --currencyCode 'QPsf7if6e48ErzU4' \
    --namespace $AB_NAMESPACE \
    --userId 'e7eIq4DkKIAIQYJm' \
    --body '{"amount": 91, "expireAt": "1974-11-21T00:00:00Z", "metadata": {"vJuumyla9M4KgqPM": {}, "yyUTFAO0W04dIeYi": {}, "sBQmiTe3xkXVnzk8": {}}, "origin": "GooglePlay", "reason": "8QE9DoJMOKvn1jaZ", "source": "REWARD"}' \
    > test.out 2>&1
eval_tap $? 333 'CreditUserWallet' test.out

#- 334 DebitByWalletPlatform
samples/cli/sample-apps Platform debitByWalletPlatform \
    --currencyCode 'cpIi0Z1MVczmS9Ok' \
    --namespace $AB_NAMESPACE \
    --userId 'O7Xh0kwdDcQtrz7A' \
    --request '{"amount": 46, "debitBalanceSource": "PAYMENT", "metadata": {"Brx7m1wZAG4D1vo0": {}, "QcljpPeY1FYSH6Z8": {}, "wn5aJlQcOL3Az8MB": {}}, "reason": "3IY5b46zo6gEO9bZ", "walletPlatform": "Nintendo"}' \
    > test.out 2>&1
eval_tap $? 334 'DebitByWalletPlatform' test.out

#- 335 PayWithUserWallet
samples/cli/sample-apps Platform payWithUserWallet \
    --currencyCode 'XxO5TsVTQ5c2xRUh' \
    --namespace $AB_NAMESPACE \
    --userId 'AlfmGatzrcE8GHJJ' \
    --body '{"amount": 91, "metadata": {"pi1GY5aaFcDOV7pr": {}, "dT1bAY2bKlmbzDLI": {}, "EfMI4iQYvKtg6zxn": {}}, "walletPlatform": "IOS"}' \
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
    --storeId 'KWvACcXZeVSqN8Fw' \
    > test.out 2>&1
eval_tap $? 341 'ListViews' test.out

#- 342 CreateView
samples/cli/sample-apps Platform createView \
    --namespace $AB_NAMESPACE \
    --storeId 'C6D9g6RNT8lvtbut' \
    --body '{"displayOrder": 69, "localizations": {"L9XgVr7w9MLcKXpR": {"description": "36swzTD9EQPO5OUM", "localExt": {"TOGDiUw2uMZidTTV": {}, "s5Qd9UGrrrooQ7v2": {}, "NGnzbHoVR5BBZwK8": {}}, "longDescription": "tnsIDWvwbl7REV7C", "title": "m7TBZgL9kNbSFEXo"}, "RDO3fq2f5dzDuz8T": {"description": "2a6OjwMmkH1C0LVq", "localExt": {"67LbzmjTNWRi5YU1": {}, "fB4siKIdIG3HnM1t": {}, "b8b2Sem3Q5p7XYVa": {}}, "longDescription": "uNDbXQqVxmC87dXI", "title": "JtirOW8TAAvrXvqm"}, "ymZY2QmPsX56ji1A": {"description": "0KRuoZ2jwPNtOPO7", "localExt": {"fG6RYyPgegLguu34": {}, "tS7GjlvZ83Q1lUNZ": {}, "jTjHTDAt3u1vjxxy": {}}, "longDescription": "XSg2yuqh7CnbC1zk", "title": "M3mhTRNuVuYBSKk4"}}, "name": "ut56478Zp7m2FSYG"}' \
    > test.out 2>&1
eval_tap $? 342 'CreateView' test.out

#- 343 GetView
samples/cli/sample-apps Platform getView \
    --namespace $AB_NAMESPACE \
    --viewId 'XxPPePIPnSd255s1' \
    --storeId 'RX5sR1ROVMJ4nre9' \
    > test.out 2>&1
eval_tap $? 343 'GetView' test.out

#- 344 UpdateView
samples/cli/sample-apps Platform updateView \
    --namespace $AB_NAMESPACE \
    --viewId 'fqryKTeYxSFO6Tg4' \
    --storeId 'E7lXWujhonF6jKiL' \
    --body '{"displayOrder": 55, "localizations": {"OwD94poZKtE6v0pm": {"description": "ODAw4jYGujeaGOLg", "localExt": {"J36iZr02ocln4g2b": {}, "2nWrFH5Y6XjN5dAP": {}, "cuDBfBZwN6y1zLSh": {}}, "longDescription": "EtQHILSSpVx4ildu", "title": "G4NoN4RJuYSLmjhg"}, "qGEyIQAKb82RemX3": {"description": "5O0re7ON5fag432V", "localExt": {"DYCeGW9Iwawu3H1C": {}, "SGD3uaoNqglwcEDT": {}, "TJd1zFYB4PWgshe4": {}}, "longDescription": "iQeb5ovKZhqoQGzN", "title": "fxMu963SjlOaIaXB"}, "S2Kvv3xmRcvczZhc": {"description": "u1LnLX5lCtex9MnG", "localExt": {"55Bj2CKjJ4jQwJEK": {}, "5tVEwerg2SxSAKMy": {}, "wDTOOHFtKe2Xltgu": {}}, "longDescription": "X6lxuH0rPCMkIpgB", "title": "JIoiEiI6xFIPxEcr"}}, "name": "zIbwIwTWDSJ50OMu"}' \
    > test.out 2>&1
eval_tap $? 344 'UpdateView' test.out

#- 345 DeleteView
samples/cli/sample-apps Platform deleteView \
    --namespace $AB_NAMESPACE \
    --viewId 'eaikiS13ORSwi4Fp' \
    --storeId 'WcaOegegKbJSNaOg' \
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
    --body '[{"creditRequest": {"amount": 64, "expireAt": "1983-05-11T00:00:00Z", "metadata": {"AZf8WMNgNqXW4TFd": {}, "vN1c65t5Xlk4elI2": {}, "BOFbSbsrBdVz6TBK": {}}, "origin": "GooglePlay", "reason": "xVJQdOnpQmRftFEs", "source": "GIFT"}, "currencyCode": "MwRhMFGdTrMVqdbI", "userIds": ["ETGDNJTUAdm59Krm", "bFvBtLziqnxBIU9v", "gzLFboecglZSBJuG"]}, {"creditRequest": {"amount": 40, "expireAt": "1980-08-03T00:00:00Z", "metadata": {"CzacYs270P8ztU4s": {}, "5gwT6luvfNQIqNGr": {}, "EY4LkvFPsLoC1h30": {}}, "origin": "System", "reason": "nD6jDfby88l78VDb", "source": "TRADE"}, "currencyCode": "882nNhhk7GcvML3L", "userIds": ["fxJAjqH7XPqqWTL2", "6M1IZ0pPiIPKoiZZ", "yWfFxHPdEUmIqYN7"]}, {"creditRequest": {"amount": 82, "expireAt": "1997-03-27T00:00:00Z", "metadata": {"lwI06noYRMrzz1rE": {}, "jcXnBnMGd0lVOa82": {}, "yLyJb6lmCemMG5Gj": {}}, "origin": "Xbox", "reason": "JclLIQLGMjPeilJR", "source": "REFUND"}, "currencyCode": "agFogOCESXtoZNiy", "userIds": ["X3AilFZjyJtsVsv1", "Zv1EvvjJl07Vocfl", "ty8SlnyczViMuP7D"]}]' \
    > test.out 2>&1
eval_tap $? 349 'BulkCredit' test.out

#- 350 BulkDebit
samples/cli/sample-apps Platform bulkDebit \
    --namespace $AB_NAMESPACE \
    --body '[{"currencyCode": "YCBsz0meejj9pjG6", "request": {"allowOverdraft": true, "amount": 40, "balanceOrigin": "Twitch", "balanceSource": "ORDER_REVOCATION", "metadata": {"ihdTUH2uxDzChHTR": {}, "62WahMAuWDixBNTd": {}, "lkajhtMsJbVNYR3K": {}}, "reason": "GMYjsMvIptyrukco"}, "userIds": ["AG2NPtwo5GyU89Dd", "N82QqLN7wQg58pd3", "FrTmVTtu0yXRMcJ6"]}, {"currencyCode": "E2UclGx50HQfWInE", "request": {"allowOverdraft": false, "amount": 41, "balanceOrigin": "Epic", "balanceSource": "TRADE", "metadata": {"Uvh000ekWQKFU8SB": {}, "LibqAdX2nHr43Iah": {}, "K3r5CTpyl1GN6pZh": {}}, "reason": "AYEhZ9O06gNb1TDY"}, "userIds": ["049gKhgON3oRPijL", "YLNdBGoaiF6eoCOP", "HvXbZngZmbQnUTQ9"]}, {"currencyCode": "slBXEPloc52XEQrb", "request": {"allowOverdraft": false, "amount": 76, "balanceOrigin": "GooglePlay", "balanceSource": "ORDER_REVOCATION", "metadata": {"uRHbCEzeXmzbW1xJ": {}, "HZsfh2IBsD76UPp4": {}, "2ChQ8FJTIXWMpo14": {}}, "reason": "KzAC5GTPhQCBB0rk"}, "userIds": ["G6QbOGbl14rwM6fb", "ItVfN9ZrhdnWSMNa", "LAjNX5wlqDosF3IU"]}]' \
    > test.out 2>&1
eval_tap $? 350 'BulkDebit' test.out

#- 351 GetWallet
eval_tap 0 351 'GetWallet # SKIP deprecated' test.out

#- 352 SyncOrders
samples/cli/sample-apps Platform syncOrders \
    --nextEvaluatedKey 'NbuBWTPYEr1BpMda' \
    --end '1SVWxtsTMJUYGXew' \
    --start '0NbSua1AFVvyqZua' \
    > test.out 2>&1
eval_tap $? 352 'SyncOrders' test.out

#- 353 TestAdyenConfig
samples/cli/sample-apps Platform testAdyenConfig \
    --sandbox 'false' \
    --body '{"allowedPaymentMethods": ["oj08osm940JV6tYb", "KV0JqqB0Z4zMjAFU", "5XbLIB6xIBx8RwIX"], "apiKey": "KSpqxVzgnMRs2hXS", "authoriseAsCapture": false, "blockedPaymentMethods": ["T2I9wNcx8PzCU87m", "kfgkGMoAd0AIDdQ5", "qG2UZLtAiHikTf99"], "clientKey": "lH1ciNeDOed4n0iz", "dropInSettings": "ix9N6lQzRJXMPjeU", "liveEndpointUrlPrefix": "GWkUKC3MjUz2WOCf", "merchantAccount": "ZTuuy1qyASOxlv7Y", "notificationHmacKey": "tkH0HGZfDdFzWlu9", "notificationPassword": "N6m8FreNGld3ugOz", "notificationUsername": "WuNLHUrOacYV2DBg", "returnUrl": "K0Yvj06RpTVV8yoK", "settings": "0ooxAQ4VvecJ04aw"}' \
    > test.out 2>&1
eval_tap $? 353 'TestAdyenConfig' test.out

#- 354 TestAliPayConfig
samples/cli/sample-apps Platform testAliPayConfig \
    --sandbox 'true' \
    --body '{"appId": "L1ybPgw7CFYOIh61", "privateKey": "0vqJ8lFC0ehRZWhy", "publicKey": "lJuQmbS7RcphTxYK", "returnUrl": "eLN0rQwXz9s09rvB"}' \
    > test.out 2>&1
eval_tap $? 354 'TestAliPayConfig' test.out

#- 355 TestCheckoutConfig
samples/cli/sample-apps Platform testCheckoutConfig \
    --sandbox 'true' \
    --body '{"publicKey": "CMmfXI3vyzG3Hi4X", "secretKey": "j807MgyuKL7fnbty"}' \
    > test.out 2>&1
eval_tap $? 355 'TestCheckoutConfig' test.out

#- 356 DebugMatchedPaymentMerchantConfig
samples/cli/sample-apps Platform debugMatchedPaymentMerchantConfig \
    --namespace 'lAaBzJEz31oor8KW' \
    --region 'Kjxio8ZVGNSYCE69' \
    > test.out 2>&1
eval_tap $? 356 'DebugMatchedPaymentMerchantConfig' test.out

#- 357 TestNeonPayConfig
samples/cli/sample-apps Platform testNeonPayConfig \
    --sandbox 'true' \
    --body '{"apiKey": "rvZ1YcSC07aXqJJl", "webhookSecretKey": "uCsGCrzofj9BXzCs"}' \
    > test.out 2>&1
eval_tap $? 357 'TestNeonPayConfig' test.out

#- 358 TestPayPalConfig
samples/cli/sample-apps Platform testPayPalConfig \
    --sandbox 'false' \
    --body '{"clientID": "dwPxlGfMDyDVrBot", "clientSecret": "r9lO60933RVcOgOy", "returnUrl": "hUKexSpkK6lclpyN", "webHookId": "W8dVmEoPUNJq2IRS"}' \
    > test.out 2>&1
eval_tap $? 358 'TestPayPalConfig' test.out

#- 359 TestStripeConfig
samples/cli/sample-apps Platform testStripeConfig \
    --sandbox 'true' \
    --body '{"allowedPaymentMethodTypes": ["ztFZ5ldEMoG3WmP2", "uItes3g559C59f87", "a3aJRMP9NFEPtCzS"], "publishableKey": "W89sBhNFjE6uQB9v", "secretKey": "DmCq5NYHc2KReZCf", "webhookSecret": "WdxcuvLXlysyEJWI"}' \
    > test.out 2>&1
eval_tap $? 359 'TestStripeConfig' test.out

#- 360 TestWxPayConfig
samples/cli/sample-apps Platform testWxPayConfig \
    --body '{"appId": "ZnMnvBT2JuQeVMb7", "key": "wWZA3cF1VOMugRWc", "mchid": "0vYkHf7sE89ksaMu", "returnUrl": "Ne4UBZbd2rO0N9hP"}' \
    > test.out 2>&1
eval_tap $? 360 'TestWxPayConfig' test.out

#- 361 TestXsollaConfig
samples/cli/sample-apps Platform testXsollaConfig \
    --body '{"apiKey": "gf4cAEl1K5l6CJwT", "flowCompletionUrl": "L1BVOe9H5WSSBTup", "merchantId": 30, "projectId": 93, "projectSecretKey": "cRXoP3T8gJWK759L"}' \
    > test.out 2>&1
eval_tap $? 361 'TestXsollaConfig' test.out

#- 362 GetPaymentMerchantConfig1
samples/cli/sample-apps Platform getPaymentMerchantConfig1 \
    --id 'BsAZAXPDS8aeHy04' \
    > test.out 2>&1
eval_tap $? 362 'GetPaymentMerchantConfig1' test.out

#- 363 UpdateAdyenConfig
samples/cli/sample-apps Platform updateAdyenConfig \
    --id '3oHrzGYWwBsiScYj' \
    --sandbox 'false' \
    --validate 'true' \
    --body '{"allowedPaymentMethods": ["uWheeDkonCe4z1rm", "616SKwFf0wcaTqBI", "cdZEVIhoL2nrOEop"], "apiKey": "y3QsakwEzKxmdr79", "authoriseAsCapture": true, "blockedPaymentMethods": ["NKVfZAzxwyk9M2Ba", "0PzHbsfATpTyAyZf", "cQ2g3GMcDzQe9cZu"], "clientKey": "isc0BCswo1OODzqr", "dropInSettings": "G6BfZwIZzWvWHPRj", "liveEndpointUrlPrefix": "JqCKUUapbsjU9j9T", "merchantAccount": "BpSSjCKmeFH4seCI", "notificationHmacKey": "9qOFQ2Xy6RaTL2ch", "notificationPassword": "kzGFnaQemyF2d4VG", "notificationUsername": "hHNIg9MbXEyWyM2a", "returnUrl": "4Uzs6WeBTUBNhgPS", "settings": "Np5gnkZKbmpp1BjM"}' \
    > test.out 2>&1
eval_tap $? 363 'UpdateAdyenConfig' test.out

#- 364 TestAdyenConfigById
samples/cli/sample-apps Platform testAdyenConfigById \
    --id '8hvMecifrVmDkeJC' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 364 'TestAdyenConfigById' test.out

#- 365 UpdateAliPayConfig
samples/cli/sample-apps Platform updateAliPayConfig \
    --id 'nvNRfdIRkfJh1Dp1' \
    --sandbox 'true' \
    --validate 'true' \
    --body '{"appId": "pv5CDW2I8dBFIjqq", "privateKey": "LcGk96O12DAwXPsA", "publicKey": "zFwR6A9o30JqvDQq", "returnUrl": "qB1qUjk8NEJfzeEo"}' \
    > test.out 2>&1
eval_tap $? 365 'UpdateAliPayConfig' test.out

#- 366 TestAliPayConfigById
samples/cli/sample-apps Platform testAliPayConfigById \
    --id 'ur2CAmlxLBmmLnOp' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 366 'TestAliPayConfigById' test.out

#- 367 UpdateCheckoutConfig
samples/cli/sample-apps Platform updateCheckoutConfig \
    --id 'Nmuyyi9Az0Cu85gS' \
    --sandbox 'true' \
    --validate 'true' \
    --body '{"publicKey": "QUk8vPn8yhOPHgdP", "secretKey": "jZdSo5ESzOuFAjmf"}' \
    > test.out 2>&1
eval_tap $? 367 'UpdateCheckoutConfig' test.out

#- 368 TestCheckoutConfigById
samples/cli/sample-apps Platform testCheckoutConfigById \
    --id 'loEg9553m3OCsnwV' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 368 'TestCheckoutConfigById' test.out

#- 369 UpdateNeonPayConfig
samples/cli/sample-apps Platform updateNeonPayConfig \
    --id 'g3dIVGYoWWN6AzmA' \
    --sandbox 'false' \
    --validate 'true' \
    --body '{"apiKey": "CCVA4cm0yTBY9fmh", "webhookSecretKey": "EaqykL6qs2osjEa6"}' \
    > test.out 2>&1
eval_tap $? 369 'UpdateNeonPayConfig' test.out

#- 370 TestNeonPayConfigById
samples/cli/sample-apps Platform testNeonPayConfigById \
    --id 'IVizTUb4CSM20oSB' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 370 'TestNeonPayConfigById' test.out

#- 371 UpdatePayPalConfig
samples/cli/sample-apps Platform updatePayPalConfig \
    --id 'CICNukJVG5jFdMiF' \
    --sandbox 'false' \
    --validate 'true' \
    --body '{"clientID": "cU8uQQUv4VbGjXWA", "clientSecret": "Nz7e3cINQNLGCELk", "returnUrl": "CAjd46M9smiiZkIY", "webHookId": "icY4MfoufnFZgg1d"}' \
    > test.out 2>&1
eval_tap $? 371 'UpdatePayPalConfig' test.out

#- 372 TestPayPalConfigById
samples/cli/sample-apps Platform testPayPalConfigById \
    --id 'vwjIPchQ2rOv5p2s' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 372 'TestPayPalConfigById' test.out

#- 373 UpdateStripeConfig
samples/cli/sample-apps Platform updateStripeConfig \
    --id 'Jms6jEhPTVsNx3VZ' \
    --sandbox 'true' \
    --validate 'true' \
    --body '{"allowedPaymentMethodTypes": ["aXsWrN3nyUvEzjuW", "NZ5Gdn9buLhFHVUh", "QWN5Zl1k9XKGf7wt"], "publishableKey": "Awpz8mu95oq2f2RO", "secretKey": "PneKx9rZzyd2ExVe", "webhookSecret": "83jT3JF2WpYYXr57"}' \
    > test.out 2>&1
eval_tap $? 373 'UpdateStripeConfig' test.out

#- 374 TestStripeConfigById
samples/cli/sample-apps Platform testStripeConfigById \
    --id 'WYQSX9d1xZkANkxu' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 374 'TestStripeConfigById' test.out

#- 375 UpdateWxPayConfig
samples/cli/sample-apps Platform updateWxPayConfig \
    --id 'hkNgd8LYew5XoaDE' \
    --validate 'true' \
    --body '{"appId": "GXqUz80r6xFZBX0Q", "key": "IgZG7RlJQYvQfygK", "mchid": "xyov3VD44nWfORds", "returnUrl": "aDYTrB25HHeNXqGd"}' \
    > test.out 2>&1
eval_tap $? 375 'UpdateWxPayConfig' test.out

#- 376 UpdateWxPayConfigCert
samples/cli/sample-apps Platform updateWxPayConfigCert \
    --id 'iiBIQDbrwd8ajBqI' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 376 'UpdateWxPayConfigCert' test.out

#- 377 TestWxPayConfigById
samples/cli/sample-apps Platform testWxPayConfigById \
    --id 'xNw9ID9vMWK1A499' \
    > test.out 2>&1
eval_tap $? 377 'TestWxPayConfigById' test.out

#- 378 UpdateXsollaConfig
samples/cli/sample-apps Platform updateXsollaConfig \
    --id 'p1pOJqv2ZmVr3Kfj' \
    --validate 'false' \
    --body '{"apiKey": "AbVDP6A7JtgH5Tdt", "flowCompletionUrl": "GIPLBQlAATnPzBaB", "merchantId": 31, "projectId": 3, "projectSecretKey": "EUfT8PPAwFRHBqSr"}' \
    > test.out 2>&1
eval_tap $? 378 'UpdateXsollaConfig' test.out

#- 379 TestXsollaConfigById
samples/cli/sample-apps Platform testXsollaConfigById \
    --id 'GH51JENYMm0rTiaC' \
    > test.out 2>&1
eval_tap $? 379 'TestXsollaConfigById' test.out

#- 380 UpdateXsollaUIConfig
samples/cli/sample-apps Platform updateXsollaUIConfig \
    --id 'CP5hT0B0eQHv33lW' \
    --body '{"device": "MOBILE", "showCloseButton": false, "size": "LARGE", "theme": "DARK"}' \
    > test.out 2>&1
eval_tap $? 380 'UpdateXsollaUIConfig' test.out

#- 381 QueryPaymentProviderConfig
samples/cli/sample-apps Platform queryPaymentProviderConfig \
    --limit '47' \
    --namespace 'hQuBe7BxwAMAyVjw' \
    --offset '66' \
    --region 'fn6VW4VinrPTJQdp' \
    > test.out 2>&1
eval_tap $? 381 'QueryPaymentProviderConfig' test.out

#- 382 CreatePaymentProviderConfig
samples/cli/sample-apps Platform createPaymentProviderConfig \
    --body '{"aggregate": "XSOLLA", "namespace": "HdJ8neVE3ntcyopi", "region": "3u3Nm0ReGc9oQ76V", "sandboxTaxJarApiToken": "8Hqbl3NFBLFbCKr4", "specials": ["ADYEN", "ADYEN", "NEONPAY"], "taxJarApiToken": "AgqzDKG3MCiDtBlg", "taxJarEnabled": false, "useGlobalTaxJarApiToken": false}' \
    > test.out 2>&1
eval_tap $? 382 'CreatePaymentProviderConfig' test.out

#- 383 GetAggregatePaymentProviders
samples/cli/sample-apps Platform getAggregatePaymentProviders \
    > test.out 2>&1
eval_tap $? 383 'GetAggregatePaymentProviders' test.out

#- 384 DebugMatchedPaymentProviderConfig
samples/cli/sample-apps Platform debugMatchedPaymentProviderConfig \
    --namespace 'MEZxUCQUk6jcdVPm' \
    --region '8zCmI9xbA79d4Hq5' \
    > test.out 2>&1
eval_tap $? 384 'DebugMatchedPaymentProviderConfig' test.out

#- 385 GetSpecialPaymentProviders
samples/cli/sample-apps Platform getSpecialPaymentProviders \
    > test.out 2>&1
eval_tap $? 385 'GetSpecialPaymentProviders' test.out

#- 386 UpdatePaymentProviderConfig
samples/cli/sample-apps Platform updatePaymentProviderConfig \
    --id '6StbeOPiVwpUsBRs' \
    --body '{"aggregate": "NEONPAY", "namespace": "8qDW8jvCEtwdr9cs", "region": "jJuQgDYDUL3CMp4d", "sandboxTaxJarApiToken": "uJuJdd7dQk9G8fZ6", "specials": ["WXPAY", "XSOLLA", "WXPAY"], "taxJarApiToken": "WeYYiLAwrPqhfpyn", "taxJarEnabled": true, "useGlobalTaxJarApiToken": true}' \
    > test.out 2>&1
eval_tap $? 386 'UpdatePaymentProviderConfig' test.out

#- 387 DeletePaymentProviderConfig
samples/cli/sample-apps Platform deletePaymentProviderConfig \
    --id 'lapfejGakjUG1ANY' \
    > test.out 2>&1
eval_tap $? 387 'DeletePaymentProviderConfig' test.out

#- 388 GetPaymentTaxConfig
samples/cli/sample-apps Platform getPaymentTaxConfig \
    > test.out 2>&1
eval_tap $? 388 'GetPaymentTaxConfig' test.out

#- 389 UpdatePaymentTaxConfig
samples/cli/sample-apps Platform updatePaymentTaxConfig \
    --body '{"sandboxTaxJarApiToken": "Qjcx73ffCZ2VsgOh", "taxJarApiToken": "ryHNmun5aijVbC8S", "taxJarEnabled": true, "taxJarProductCodesMapping": {"F2sZHb3t30ScAbyM": "HZzvALE9cmQbJNnp", "jDT8V5HApfPf7NgD": "nQV4bbTjR6jigNCp", "6HvOflyKoCnCq6ED": "EU5KzL2E7j3BujZi"}}' \
    > test.out 2>&1
eval_tap $? 389 'UpdatePaymentTaxConfig' test.out

#- 390 SyncPaymentOrders
samples/cli/sample-apps Platform syncPaymentOrders \
    --nextEvaluatedKey 'ZSTN78Gdsmyr8pFU' \
    --end 'PHooaZ07LKsEmE5i' \
    --start 'JQPc7r62tEUbjlQT' \
    > test.out 2>&1
eval_tap $? 390 'SyncPaymentOrders' test.out

#- 391 PublicGetRootCategories
samples/cli/sample-apps Platform publicGetRootCategories \
    --namespace $AB_NAMESPACE \
    --language 'O1x3SQcAbXrMgHyx' \
    --storeId 'TkzOYIiXp8BKG9tP' \
    > test.out 2>&1
eval_tap $? 391 'PublicGetRootCategories' test.out

#- 392 DownloadCategories
samples/cli/sample-apps Platform downloadCategories \
    --namespace $AB_NAMESPACE \
    --language 'tjCXBWKIuS9W2oPM' \
    --storeId '0RHF6BiLCoMU4niJ' \
    > test.out 2>&1
eval_tap $? 392 'DownloadCategories' test.out

#- 393 PublicGetCategory
samples/cli/sample-apps Platform publicGetCategory \
    --categoryPath 'YKAGmlB7cujuUro1' \
    --namespace $AB_NAMESPACE \
    --language '193tbT8YvJ9oPyzD' \
    --storeId 'qU394UFIYlKL1v3D' \
    > test.out 2>&1
eval_tap $? 393 'PublicGetCategory' test.out

#- 394 PublicGetChildCategories
samples/cli/sample-apps Platform publicGetChildCategories \
    --categoryPath '3bXFXCoZiNmo5XAx' \
    --namespace $AB_NAMESPACE \
    --language '75uBKAJwkxtSvwv8' \
    --storeId 'Y3dois1n4p87BDaY' \
    > test.out 2>&1
eval_tap $? 394 'PublicGetChildCategories' test.out

#- 395 PublicGetDescendantCategories
samples/cli/sample-apps Platform publicGetDescendantCategories \
    --categoryPath 'zZ9PqgVuCbv6Nd4A' \
    --namespace $AB_NAMESPACE \
    --language 'd3CazlCEcWrW1SLj' \
    --storeId 'gxQaF7MYkXxBkbNd' \
    > test.out 2>&1
eval_tap $? 395 'PublicGetDescendantCategories' test.out

#- 396 PublicListCurrencies
samples/cli/sample-apps Platform publicListCurrencies \
    --namespace $AB_NAMESPACE \
    --currencyType 'REAL' \
    > test.out 2>&1
eval_tap $? 396 'PublicListCurrencies' test.out

#- 397 GeDLCDurableRewardShortMap
samples/cli/sample-apps Platform geDLCDurableRewardShortMap \
    --namespace $AB_NAMESPACE \
    --dlcType 'OCULUS' \
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
    --platform 'TWITCH' \
    > test.out 2>&1
eval_tap $? 399 'GetIAPItemMapping' test.out

#- 400 PublicGetItemByAppId
samples/cli/sample-apps Platform publicGetItemByAppId \
    --namespace $AB_NAMESPACE \
    --language 'qvNIEBpb1OvZhHmQ' \
    --region 'tQ5XvqPull7fIbEo' \
    --storeId '48GfWQQOfCS3hJf2' \
    --appId '7kVxRGyHxlQnNodv' \
    > test.out 2>&1
eval_tap $? 400 'PublicGetItemByAppId' test.out

#- 401 PublicQueryItems
samples/cli/sample-apps Platform publicQueryItems \
    --namespace $AB_NAMESPACE \
    --appType 'DLC' \
    --autoCalcEstimatedPrice 'true' \
    --baseAppId 'JWrYiLERcuCKFXUi' \
    --categoryPath '9PYnbXn4n2lFTqu2' \
    --features 'Vvg1NeLXFVbsKdy9' \
    --includeSubCategoryItem 'true' \
    --itemType 'CODE' \
    --language 'Otish7w6fHUHTMNW' \
    --limit '46' \
    --offset '15' \
    --region '8aUKyGctNUOM49kU' \
    --sortBy '["name:desc", "name:asc", "createdAt"]' \
    --storeId 'MMNyrKOBHKhNfGxR' \
    --tags 'e6nSDgKpvV7JUEj4' \
    > test.out 2>&1
eval_tap $? 401 'PublicQueryItems' test.out

#- 402 PublicGetItemBySku
samples/cli/sample-apps Platform publicGetItemBySku \
    --namespace $AB_NAMESPACE \
    --autoCalcEstimatedPrice 'true' \
    --language 'rAux7RVXpRtmuvTT' \
    --region 'Oxd08agSARYklWSj' \
    --storeId 'QoCcIpUsIi0Mzqvx' \
    --sku 'rbW7ePsL1l4zsn4F' \
    > test.out 2>&1
eval_tap $? 402 'PublicGetItemBySku' test.out

#- 403 PublicGetEstimatedPrice
samples/cli/sample-apps Platform publicGetEstimatedPrice \
    --namespace $AB_NAMESPACE \
    --region 'ZjoTbiIcn3LCj74B' \
    --storeId 'WhxFZWHikv065Ux0' \
    --itemIds 'q8GtYDTxWsJ5Pg4Q' \
    > test.out 2>&1
eval_tap $? 403 'PublicGetEstimatedPrice' test.out

#- 404 PublicBulkGetItems
samples/cli/sample-apps Platform publicBulkGetItems \
    --namespace $AB_NAMESPACE \
    --autoCalcEstimatedPrice 'false' \
    --language 'K3RYtMSpxoZhWYVK' \
    --region 'd8KWfCczkJIW4HCm' \
    --storeId 'jDtOjT7VNP3pSYj5' \
    --itemIds 'oRjo8n6So9IGTo2z' \
    > test.out 2>&1
eval_tap $? 404 'PublicBulkGetItems' test.out

#- 405 PublicValidateItemPurchaseCondition
samples/cli/sample-apps Platform publicValidateItemPurchaseCondition \
    --namespace $AB_NAMESPACE \
    --body '{"itemIds": ["jSWHbxdtmXdLkG2y", "U4wOhJ401hvmqqhs", "B3zxJnuDckMYAbWL"]}' \
    > test.out 2>&1
eval_tap $? 405 'PublicValidateItemPurchaseCondition' test.out

#- 406 PublicSearchItems
samples/cli/sample-apps Platform publicSearchItems \
    --namespace $AB_NAMESPACE \
    --autoCalcEstimatedPrice 'false' \
    --itemType 'SEASON' \
    --limit '78' \
    --offset '72' \
    --region 'PRNB5Oa8kxYGxUGJ' \
    --storeId 'QU4t1DFIIcH6Ji2N' \
    --keyword 'Hb7Fu7Hc07pahR2c' \
    --language 'aR5ILIT6wiMmJLEe' \
    > test.out 2>&1
eval_tap $? 406 'PublicSearchItems' test.out

#- 407 PublicGetApp
samples/cli/sample-apps Platform publicGetApp \
    --itemId 'Cnm02WNN1P4lw3MH' \
    --namespace $AB_NAMESPACE \
    --language '1MVcZb3pP6wz4DYF' \
    --region 'Xyj5y049XPUhESeT' \
    --storeId 'Rsiclt3HAYwX8NWV' \
    > test.out 2>&1
eval_tap $? 407 'PublicGetApp' test.out

#- 408 PublicGetItemDynamicData
samples/cli/sample-apps Platform publicGetItemDynamicData \
    --itemId 'bOQ4Ui2n7Oxdyibi' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 408 'PublicGetItemDynamicData' test.out

#- 409 PublicGetItem
samples/cli/sample-apps Platform publicGetItem \
    --itemId 'H29LsmqjOsinmEmQ' \
    --namespace $AB_NAMESPACE \
    --autoCalcEstimatedPrice 'false' \
    --language 'E6QTOvoPV93E7BFC' \
    --populateBundle 'false' \
    --region 'QGszqc5TB7MbbTv5' \
    --storeId 'QuOkN9wn6M4dksj7' \
    > test.out 2>&1
eval_tap $? 409 'PublicGetItem' test.out

#- 410 GetPaymentCustomization
eval_tap 0 410 'GetPaymentCustomization # SKIP deprecated' test.out

#- 411 PublicGetPaymentUrl
samples/cli/sample-apps Platform publicGetPaymentUrl \
    --namespace $AB_NAMESPACE \
    --body '{"neonPayConfig": {"cancelUrl": "ZdwXGV27v6PcpFex", "successUrl": "bFZKThdcIwU3cue7"}, "paymentOrderNo": "pbJzVRTpm1sAOTpo", "paymentProvider": "CHECKOUT", "returnUrl": "598vnhQd3XTkfJN5", "ui": "lxUkYdGzhRNLxwyN", "zipCode": "u6khT4JjDOh4H53p"}' \
    > test.out 2>&1
eval_tap $? 411 'PublicGetPaymentUrl' test.out

#- 412 PublicGetPaymentMethods
samples/cli/sample-apps Platform publicGetPaymentMethods \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'f6lr2tXNGITy90aS' \
    > test.out 2>&1
eval_tap $? 412 'PublicGetPaymentMethods' test.out

#- 413 PublicGetUnpaidPaymentOrder
samples/cli/sample-apps Platform publicGetUnpaidPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo '4lgyW9eZW6cP5RrC' \
    > test.out 2>&1
eval_tap $? 413 'PublicGetUnpaidPaymentOrder' test.out

#- 414 Pay
samples/cli/sample-apps Platform pay \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'wBjakDadZTw9TCmb' \
    --paymentProvider 'WALLET' \
    --zipCode 'H2AIJqF9y7Qihhgi' \
    --body '{"token": "PU6JEtKWXokvyTwP"}' \
    > test.out 2>&1
eval_tap $? 414 'Pay' test.out

#- 415 PublicCheckPaymentOrderPaidStatus
samples/cli/sample-apps Platform publicCheckPaymentOrderPaidStatus \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'Q3ed9MNU5MveFlNr' \
    > test.out 2>&1
eval_tap $? 415 'PublicCheckPaymentOrderPaidStatus' test.out

#- 416 GetPaymentPublicConfig
samples/cli/sample-apps Platform getPaymentPublicConfig \
    --namespace $AB_NAMESPACE \
    --sandbox 'true' \
    --paymentProvider 'XSOLLA' \
    --region 'UisAOZpyXresIR3Q' \
    > test.out 2>&1
eval_tap $? 416 'GetPaymentPublicConfig' test.out

#- 417 PublicGetQRCode
samples/cli/sample-apps Platform publicGetQRCode \
    --namespace $AB_NAMESPACE \
    --code 'qnUYgxU6CYrQvfei' \
    > test.out 2>&1
eval_tap $? 417 'PublicGetQRCode' test.out

#- 418 PublicNormalizePaymentReturnUrl
samples/cli/sample-apps Platform publicNormalizePaymentReturnUrl \
    --namespace $AB_NAMESPACE \
    --payerID '470S6xbgoPGQKPYc' \
    --foreinginvoice 'a6KO5Cy7nF3l5n0b' \
    --invoiceId 'E1giTzNQZuapSwiP' \
    --payload 'dVDWwxhotkk94YEo' \
    --redirectResult '2bR4wDPA8g7Q9OvD' \
    --resultCode 'EXjgW2q7SeKWjI1J' \
    --sessionId '7FKHJJODrs96GJqZ' \
    --status 'SSNfZpJq7zkzEiNP' \
    --token '4PAUroygj8eQv6bW' \
    --type 'UqX8yiYBxFYhRXJ8' \
    --userId 'z0D91bfRqJaH2gH8' \
    --orderNo 'qkMxu8dJnRYV12pA' \
    --paymentOrderNo 'pGrqRtTRIQOsbB8c' \
    --paymentProvider 'WALLET' \
    --returnUrl 'JTrJaUNamGFbQxWA' \
    > test.out 2>&1
eval_tap $? 418 'PublicNormalizePaymentReturnUrl' test.out

#- 419 GetPaymentTaxValue
samples/cli/sample-apps Platform getPaymentTaxValue \
    --namespace $AB_NAMESPACE \
    --zipCode 'hvSkUMdo29K6DtOu' \
    --paymentOrderNo 'YTimmnTOcO56rS0L' \
    --paymentProvider 'ADYEN' \
    > test.out 2>&1
eval_tap $? 419 'GetPaymentTaxValue' test.out

#- 420 GetRewardByCode
samples/cli/sample-apps Platform getRewardByCode \
    --namespace $AB_NAMESPACE \
    --rewardCode 'eBIm2oag0oPGt6qh' \
    > test.out 2>&1
eval_tap $? 420 'GetRewardByCode' test.out

#- 421 QueryRewards1
samples/cli/sample-apps Platform queryRewards1 \
    --namespace $AB_NAMESPACE \
    --eventTopic 'Fykl8UYYzEXMZVZ4' \
    --limit '35' \
    --offset '95' \
    --sortBy '["namespace:asc", "rewardCode", "rewardCode:asc"]' \
    > test.out 2>&1
eval_tap $? 421 'QueryRewards1' test.out

#- 422 GetReward1
samples/cli/sample-apps Platform getReward1 \
    --namespace $AB_NAMESPACE \
    --rewardId 'JXMuSVBHDCnpLYdu' \
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
    --appIds '["POL1irX7JqJRqVfZ", "cIxktadzavZkJ1Fc", "08aZ646IEMSm2nbi"]' \
    --itemIds '["k4jKNHwakNijEmkp", "2urxnzl8GIomzMTv", "hzowEV8rk2lhDVjo"]' \
    --skus '["GAs1oKTxU07RQuD8", "2Xyz0f3tbGn1zmDy", "JisnZ6iI2parKVnE"]' \
    > test.out 2>&1
eval_tap $? 424 'PublicExistsAnyMyActiveEntitlement' test.out

#- 425 PublicGetMyAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform publicGetMyAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --appId 'F1T6cyIufvZnDBZJ' \
    > test.out 2>&1
eval_tap $? 425 'PublicGetMyAppEntitlementOwnershipByAppId' test.out

#- 426 PublicGetMyEntitlementOwnershipByItemId
samples/cli/sample-apps Platform publicGetMyEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --entitlementClazz 'MEDIA' \
    --itemId 'HUSg00pVRnK4RTcq' \
    > test.out 2>&1
eval_tap $? 426 'PublicGetMyEntitlementOwnershipByItemId' test.out

#- 427 PublicGetMyEntitlementOwnershipBySku
samples/cli/sample-apps Platform publicGetMyEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --entitlementClazz 'LOOTBOX' \
    --sku 'XLyGDjE6z3ni9WL0' \
    > test.out 2>&1
eval_tap $? 427 'PublicGetMyEntitlementOwnershipBySku' test.out

#- 428 PublicGetEntitlementOwnershipToken
samples/cli/sample-apps Platform publicGetEntitlementOwnershipToken \
    --namespace $AB_NAMESPACE \
    --appIds '["slNWUPs2uRSRx0Pd", "buqxBjzLnwQqS4NP", "7YIWiMO2rr9HxcdT"]' \
    --itemIds '["H5ocCBIrJUXshbAN", "no5y1KgtsSqoYCsK", "Jvh2z5PkSOCexqP5"]' \
    --skus '["BvsKR9m815zVfUwt", "LnS5O5BjprkZVhmR", "ZPjRNdfJ1neIMka0"]' \
    > test.out 2>&1
eval_tap $? 428 'PublicGetEntitlementOwnershipToken' test.out

#- 429 SyncTwitchDropsEntitlement
samples/cli/sample-apps Platform syncTwitchDropsEntitlement \
    --namespace $AB_NAMESPACE \
    --body '{"gameId": "GOIWIWMtFA8ica4n", "language": "OU_iFgC", "region": "kGOQ8m7J37oZ73X1"}' \
    > test.out 2>&1
eval_tap $? 429 'SyncTwitchDropsEntitlement' test.out

#- 430 PublicGetMyWallet
samples/cli/sample-apps Platform publicGetMyWallet \
    --currencyCode 'Vr2Vsb8UAgljr63t' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 430 'PublicGetMyWallet' test.out

#- 431 SyncEpicGameDLC
samples/cli/sample-apps Platform syncEpicGameDLC \
    --namespace $AB_NAMESPACE \
    --userId 'IPx4yImDc2ESb4du' \
    --body '{"epicGamesJwtToken": "pICoS8rHjO9zo4JL"}' \
    > test.out 2>&1
eval_tap $? 431 'SyncEpicGameDLC' test.out

#- 432 SyncOculusDLC
samples/cli/sample-apps Platform syncOculusDLC \
    --namespace $AB_NAMESPACE \
    --userId 'Oxve9ZQ24k5JxHn8' \
    > test.out 2>&1
eval_tap $? 432 'SyncOculusDLC' test.out

#- 433 PublicSyncPsnDlcInventory
samples/cli/sample-apps Platform publicSyncPsnDlcInventory \
    --namespace $AB_NAMESPACE \
    --userId 'kejyyoyS0lSRLjVY' \
    --body '{"serviceLabel": 15}' \
    > test.out 2>&1
eval_tap $? 433 'PublicSyncPsnDlcInventory' test.out

#- 434 PublicSyncPsnDlcInventoryWithMultipleServiceLabels
samples/cli/sample-apps Platform publicSyncPsnDlcInventoryWithMultipleServiceLabels \
    --namespace $AB_NAMESPACE \
    --userId '7xzUJ8hBNeH1gDPx' \
    --body '{"serviceLabels": [32, 41, 62]}' \
    > test.out 2>&1
eval_tap $? 434 'PublicSyncPsnDlcInventoryWithMultipleServiceLabels' test.out

#- 435 SyncSteamDLC
samples/cli/sample-apps Platform syncSteamDLC \
    --namespace $AB_NAMESPACE \
    --userId '2j8dM5K5tgXjgddG' \
    --body '{"appId": "cah4TKYsWCroLudh", "steamId": "w5GDE1TyjXel0hSM"}' \
    > test.out 2>&1
eval_tap $? 435 'SyncSteamDLC' test.out

#- 436 SyncXboxDLC
samples/cli/sample-apps Platform syncXboxDLC \
    --namespace $AB_NAMESPACE \
    --userId 'oHAa6hPc2RLKGj6Z' \
    --body '{"xstsToken": "kHU8Xawfrxya7HVb"}' \
    > test.out 2>&1
eval_tap $? 436 'SyncXboxDLC' test.out

#- 437 PublicQueryUserEntitlements
samples/cli/sample-apps Platform publicQueryUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'QgO2lTx5VRvMbjVA' \
    --appType 'DEMO' \
    --entitlementClazz 'LOOTBOX' \
    --entitlementName '0QyoUxxRcpAWi5Ub' \
    --features '["Je8JUYLu9G9TWol8", "CpRqXdpX1SyzJ8JG", "LPEvBj0YwDcf5Cst"]' \
    --itemId '["qQ274IkSl6Lq35Cm", "I3RXRWH1BnDoTRU6", "ucZPNe1ylN9ZEKQQ"]' \
    --limit '55' \
    --offset '16' \
    > test.out 2>&1
eval_tap $? 437 'PublicQueryUserEntitlements' test.out

#- 438 PublicGetUserAppEntitlementByAppId
samples/cli/sample-apps Platform publicGetUserAppEntitlementByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'HAxSQNgIIAN1zQl4' \
    --appId 'YgUNRTXJkw3dSHke' \
    > test.out 2>&1
eval_tap $? 438 'PublicGetUserAppEntitlementByAppId' test.out

#- 439 PublicQueryUserEntitlementsByAppType
samples/cli/sample-apps Platform publicQueryUserEntitlementsByAppType \
    --namespace $AB_NAMESPACE \
    --userId 'U2ltuiWgfY3MmBpV' \
    --limit '54' \
    --offset '4' \
    --appType 'GAME' \
    > test.out 2>&1
eval_tap $? 439 'PublicQueryUserEntitlementsByAppType' test.out

#- 440 PublicGetUserEntitlementsByIds
samples/cli/sample-apps Platform publicGetUserEntitlementsByIds \
    --namespace $AB_NAMESPACE \
    --userId 'ciG9LiIgyaUbLJE8' \
    --availablePlatformOnly 'false' \
    --ids '["NkhpmG7B9A7QUhOv", "v20zEjdRKEF17mmi", "5BLN4EyhW7OsXzVN"]' \
    > test.out 2>&1
eval_tap $? 440 'PublicGetUserEntitlementsByIds' test.out

#- 441 PublicGetUserEntitlementByItemId
eval_tap 0 441 'PublicGetUserEntitlementByItemId # SKIP deprecated' test.out

#- 442 PublicGetUserEntitlementBySku
eval_tap 0 442 'PublicGetUserEntitlementBySku # SKIP deprecated' test.out

#- 443 PublicUserEntitlementHistory
samples/cli/sample-apps Platform publicUserEntitlementHistory \
    --namespace $AB_NAMESPACE \
    --userId 'ahQVN1TJAWb5m4D6' \
    --endDate 'eEOG0jFb3TcJIy91' \
    --entitlementClazz 'SUBSCRIPTION' \
    --limit '73' \
    --offset '47' \
    --startDate 'SDgleSockn8oAV4h' \
    > test.out 2>&1
eval_tap $? 443 'PublicUserEntitlementHistory' test.out

#- 444 PublicExistsAnyUserActiveEntitlement
samples/cli/sample-apps Platform publicExistsAnyUserActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'tXchibqT47XmEL5y' \
    --appIds '["OmlqMJc3eIZCgev8", "WpxwEjBieSmUcQt6", "Jfir5Rs4wsoNoP88"]' \
    --itemIds '["96YuzVzSkupHFfU3", "Q6JZLo24jCVoPhmZ", "hm9ZM8pPu0zEfcEt"]' \
    --skus '["mWYfZt3HUktXKOvt", "WVvE1B3E2N3eb1oI", "eQZ05XLrXKvv9bfc"]' \
    > test.out 2>&1
eval_tap $? 444 'PublicExistsAnyUserActiveEntitlement' test.out

#- 445 PublicGetUserAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform publicGetUserAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'HhJvqfBAlXpedtum' \
    --appId '9hmlcXplfmuy1LLp' \
    > test.out 2>&1
eval_tap $? 445 'PublicGetUserAppEntitlementOwnershipByAppId' test.out

#- 446 PublicGetUserEntitlementOwnershipByItemId
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'uBsnNhcDsQgi0POF' \
    --entitlementClazz 'OPTIONBOX' \
    --itemId '4SINZEKKF3un400k' \
    > test.out 2>&1
eval_tap $? 446 'PublicGetUserEntitlementOwnershipByItemId' test.out

#- 447 PublicGetUserEntitlementOwnershipByItemIds
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'r9j42WsQ2UdBsqjb' \
    --ids '["DES00uhRIc2ZxoOB", "DNCJNRNxVFVqZCbu", "HBu8gjzCWv8ohhtz"]' \
    > test.out 2>&1
eval_tap $? 447 'PublicGetUserEntitlementOwnershipByItemIds' test.out

#- 448 PublicGetUserEntitlementOwnershipBySku
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --userId 'mvGSJO7gytWKPkqV' \
    --entitlementClazz 'LOOTBOX' \
    --sku '8KwFXOPKy2V7UIcy' \
    > test.out 2>&1
eval_tap $? 448 'PublicGetUserEntitlementOwnershipBySku' test.out

#- 449 PublicGetUserEntitlement
samples/cli/sample-apps Platform publicGetUserEntitlement \
    --entitlementId 'qTAJfRKKl1o9wjrT' \
    --namespace $AB_NAMESPACE \
    --userId 'IbqqodYsToFzTcEO' \
    > test.out 2>&1
eval_tap $? 449 'PublicGetUserEntitlement' test.out

#- 450 PublicConsumeUserEntitlement
samples/cli/sample-apps Platform publicConsumeUserEntitlement \
    --entitlementId 'Qc05MQBEGacorejG' \
    --namespace $AB_NAMESPACE \
    --userId 'qifbaJwX2h2MaMlJ' \
    --body '{"metadata": {"operationSource": "INVENTORY"}, "options": ["LXDZeaWZZWG2pUkb", "R9SlFB95lXerLgZJ", "bKOnBn6MremYzgrO"], "requestId": "0W3Pt05Re2DhjeKa", "useCount": 28}' \
    > test.out 2>&1
eval_tap $? 450 'PublicConsumeUserEntitlement' test.out

#- 451 PublicSellUserEntitlement
samples/cli/sample-apps Platform publicSellUserEntitlement \
    --entitlementId 'qXBPvR4XJLelLCLR' \
    --namespace $AB_NAMESPACE \
    --userId '7fza9B8QXvWTnw89' \
    --body '{"requestId": "sL43j4kvfa7ZvJYi", "useCount": 57}' \
    > test.out 2>&1
eval_tap $? 451 'PublicSellUserEntitlement' test.out

#- 452 PublicSplitUserEntitlement
samples/cli/sample-apps Platform publicSplitUserEntitlement \
    --entitlementId 'vAl7wo7Z9BJp1Fv1' \
    --namespace $AB_NAMESPACE \
    --userId 'RrzWXFMy6Yha4ZzF' \
    --body '{"metadata": {"operationSource": "INVENTORY"}, "useCount": 72}' \
    > test.out 2>&1
eval_tap $? 452 'PublicSplitUserEntitlement' test.out

#- 453 PublicTransferUserEntitlement
samples/cli/sample-apps Platform publicTransferUserEntitlement \
    --entitlementId '7FGdzcuFl8HT3XaJ' \
    --namespace $AB_NAMESPACE \
    --userId 'K0DmPqKp0C3f7hHr' \
    --body '{"entitlementId": "ZMJHw9W8rWOy1HGr", "metadata": {"operationSource": "INVENTORY"}, "useCount": 96}' \
    > test.out 2>&1
eval_tap $? 453 'PublicTransferUserEntitlement' test.out

#- 454 PublicRedeemCode
samples/cli/sample-apps Platform publicRedeemCode \
    --namespace $AB_NAMESPACE \
    --userId 'xAZ0CjWxDuEP9yLY' \
    --body '{"code": "eI4jrUdKCB51hAZS", "language": "PQFb", "region": "ZJz7XaCBBWpwkWmD"}' \
    > test.out 2>&1
eval_tap $? 454 'PublicRedeemCode' test.out

#- 455 PublicFulfillAppleIAPItem
samples/cli/sample-apps Platform publicFulfillAppleIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'Zwmu96IRCbD7ldjY' \
    --body '{"excludeOldTransactions": true, "language": "iGW", "productId": "szPoiQw8pcCLkJFr", "receiptData": "6Fp66clXH1CUrbYb", "region": "9w7F8M8i6ljgAzL0", "transactionId": "qt786emo2EqhPe97"}' \
    > test.out 2>&1
eval_tap $? 455 'PublicFulfillAppleIAPItem' test.out

#- 456 SyncEpicGamesInventory
samples/cli/sample-apps Platform syncEpicGamesInventory \
    --namespace $AB_NAMESPACE \
    --userId 'g6k2hPLKmg15m28m' \
    --body '{"epicGamesJwtToken": "YdWuVMK7jw4LSikh"}' \
    > test.out 2>&1
eval_tap $? 456 'SyncEpicGamesInventory' test.out

#- 457 PublicFulfillGoogleIAPItem
samples/cli/sample-apps Platform publicFulfillGoogleIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'VAt6IPlHVVPqTN07' \
    --body '{"autoAck": true, "autoConsume": true, "language": "vX_906", "orderId": "9skXi9ZKZhZac2dz", "packageName": "8JNtbfGopYEmlHHQ", "productId": "6VQB1up0D7fv4IaM", "purchaseTime": 59, "purchaseToken": "7612rMX3GqHOnMj6", "region": "xot397AwzT7581ay", "subscriptionPurchase": true}' \
    > test.out 2>&1
eval_tap $? 457 'PublicFulfillGoogleIAPItem' test.out

#- 458 SyncOculusConsumableEntitlements
samples/cli/sample-apps Platform syncOculusConsumableEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'WvOnxK7vYfsAiTn2' \
    > test.out 2>&1
eval_tap $? 458 'SyncOculusConsumableEntitlements' test.out

#- 459 PublicReconcilePlayStationStore
samples/cli/sample-apps Platform publicReconcilePlayStationStore \
    --namespace $AB_NAMESPACE \
    --userId 'f0g93brX83YqncJY' \
    --body '{"currencyCode": "LPLfeSquJn6mvVzQ", "price": 0.8096006028014342, "productId": "ct0SOeKtmoFMa0pM", "serviceLabel": 96}' \
    > test.out 2>&1
eval_tap $? 459 'PublicReconcilePlayStationStore' test.out

#- 460 PublicReconcilePlayStationStoreWithMultipleServiceLabels
samples/cli/sample-apps Platform publicReconcilePlayStationStoreWithMultipleServiceLabels \
    --namespace $AB_NAMESPACE \
    --userId 'RLDHOPFAqmATl8Ne' \
    --body '{"currencyCode": "hoEpGJpw1P9FYzqw", "price": 0.7258065610828912, "productId": "bTK1bAJokVzCRkGe", "serviceLabels": [40, 9, 18]}' \
    > test.out 2>&1
eval_tap $? 460 'PublicReconcilePlayStationStoreWithMultipleServiceLabels' test.out

#- 461 SyncSteamInventory
samples/cli/sample-apps Platform syncSteamInventory \
    --namespace $AB_NAMESPACE \
    --userId 'h2jgQykAUoaUMS8o' \
    --body '{"appId": "68RvMgsCEYsKjEmY", "currencyCode": "E0ntUsBMkhW076n7", "language": "jTT-qy", "price": 0.9697678952653386, "productId": "wDbAz58UvIrTVOrf", "region": "OMJbi8vEnPVn65ho", "steamId": "4G0hYu0hRDUQ5xXe"}' \
    > test.out 2>&1
eval_tap $? 461 'SyncSteamInventory' test.out

#- 462 SyncSteamAbnormalTransaction
samples/cli/sample-apps Platform syncSteamAbnormalTransaction \
    --namespace $AB_NAMESPACE \
    --userId 'nap5wzwUCXF9IODo' \
    > test.out 2>&1
eval_tap $? 462 'SyncSteamAbnormalTransaction' test.out

#- 463 SyncSteamIAPByTransaction
samples/cli/sample-apps Platform syncSteamIAPByTransaction \
    --namespace $AB_NAMESPACE \
    --userId 'w3jlRLwCUmoJBRdN' \
    --body '{"orderId": "GsDbz4pJYsdhtymh"}' \
    > test.out 2>&1
eval_tap $? 463 'SyncSteamIAPByTransaction' test.out

#- 464 PublicQueryUserThirdPartySubscription
samples/cli/sample-apps Platform publicQueryUserThirdPartySubscription \
    --namespace $AB_NAMESPACE \
    --platform 'GOOGLE' \
    --userId 'PjtIz3TdGwHfY5Th' \
    --activeOnly 'false' \
    --groupId 'e8qa6jmlXt7N3fGO' \
    --limit '45' \
    --offset '78' \
    --productId 'pj32wKwmDDen5Fvw' \
    > test.out 2>&1
eval_tap $? 464 'PublicQueryUserThirdPartySubscription' test.out

#- 465 SyncTwitchDropsEntitlement1
samples/cli/sample-apps Platform syncTwitchDropsEntitlement1 \
    --namespace $AB_NAMESPACE \
    --userId 'iMkX5LjTJvHzx7Wx' \
    --body '{"gameId": "slBvfIzU6fFCYk4F", "language": "smr-YE", "region": "ROQQqzP0jA0oE0wL"}' \
    > test.out 2>&1
eval_tap $? 465 'SyncTwitchDropsEntitlement1' test.out

#- 466 SyncXboxInventory
samples/cli/sample-apps Platform syncXboxInventory \
    --namespace $AB_NAMESPACE \
    --userId 'XBDSSv7OXMtK0tnz' \
    --body '{"currencyCode": "6X9xXbue3SnOXThe", "price": 0.057503321768539783, "productId": "SVisut9Kpz5fZpRE", "xstsToken": "vIqFx08wk6yo8Vhy"}' \
    > test.out 2>&1
eval_tap $? 466 'SyncXboxInventory' test.out

#- 467 PublicQueryUserOrders
samples/cli/sample-apps Platform publicQueryUserOrders \
    --namespace $AB_NAMESPACE \
    --userId 'owyo7IIQSb7pRDl7' \
    --discounted 'true' \
    --itemId 'roMrI9KQd6IlsRCO' \
    --limit '74' \
    --offset '40' \
    --status 'CLOSED' \
    > test.out 2>&1
eval_tap $? 467 'PublicQueryUserOrders' test.out

#- 468 PublicCreateUserOrder
samples/cli/sample-apps Platform publicCreateUserOrder \
    --namespace $AB_NAMESPACE \
    --userId '3jKBPJr8XAjnFLLs' \
    --body '{"currencyCode": "woCfWKrJ5LWCVkG7", "discountCodes": ["5SbeQkufF2Tp8yVn", "jm8xhmZ6bHDmS2On", "3Rw5c4yZV1ZlpsUl"], "discountedPrice": 78, "ext": {"HcIFkmpFhHTK80Zs": {}, "3hw3E0PsgZLN2liw": {}, "9hBiRQJdFNtaqU3m": {}}, "itemId": "xHONP3KABXz00WCQ", "language": "Pb-741", "price": 84, "quantity": 90, "region": "hyQKq2GTzxooUgot", "returnUrl": "9VysboUQLKCvEaTd", "sectionId": "j8JBMpDrpltj8TAs"}' \
    > test.out 2>&1
eval_tap $? 468 'PublicCreateUserOrder' test.out

#- 469 PublicPreviewOrderPrice
samples/cli/sample-apps Platform publicPreviewOrderPrice \
    --namespace $AB_NAMESPACE \
    --userId '6fMNfA6bsUzjwA6k' \
    --body '{"currencyCode": "n6y9frMxJymNatb6", "discountCodes": ["A1HJcQrc3LJ1AOKt", "bMtWatY76h0f9Lpf", "pYo8KQeNLAZxZyuX"], "discountedPrice": 93, "itemId": "sJ6LjlXdYQyQ1DeF", "price": 32, "quantity": 95}' \
    > test.out 2>&1
eval_tap $? 469 'PublicPreviewOrderPrice' test.out

#- 470 PublicGetUserOrder
samples/cli/sample-apps Platform publicGetUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'smXr8Jhm0cn204Nk' \
    --userId 'ItF3E77vuauvbmYs' \
    > test.out 2>&1
eval_tap $? 470 'PublicGetUserOrder' test.out

#- 471 PublicCancelUserOrder
samples/cli/sample-apps Platform publicCancelUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo '9ssZePRL4KhamBq3' \
    --userId 'Jn04EeLXJTQlyy5d' \
    > test.out 2>&1
eval_tap $? 471 'PublicCancelUserOrder' test.out

#- 472 PublicGetUserOrderHistories
samples/cli/sample-apps Platform publicGetUserOrderHistories \
    --namespace $AB_NAMESPACE \
    --orderNo 'xqSqB6FI1N6z1wlg' \
    --userId '9CbnYK1fniw11mBy' \
    > test.out 2>&1
eval_tap $? 472 'PublicGetUserOrderHistories' test.out

#- 473 PublicDownloadUserOrderReceipt
samples/cli/sample-apps Platform publicDownloadUserOrderReceipt \
    --namespace $AB_NAMESPACE \
    --orderNo 'I2iLcly7aYQBfBYd' \
    --userId 'fCd9LobhfU1efj4R' \
    > test.out 2>&1
eval_tap $? 473 'PublicDownloadUserOrderReceipt' test.out

#- 474 PublicGetPaymentAccounts
samples/cli/sample-apps Platform publicGetPaymentAccounts \
    --namespace $AB_NAMESPACE \
    --userId 'plJPGq6eQHqkQ1AX' \
    > test.out 2>&1
eval_tap $? 474 'PublicGetPaymentAccounts' test.out

#- 475 PublicDeletePaymentAccount
samples/cli/sample-apps Platform publicDeletePaymentAccount \
    --id 'laYEyRLhVTfEKOri' \
    --namespace $AB_NAMESPACE \
    --type 'card' \
    --userId 'mrZXoBwLumVjJS3o' \
    > test.out 2>&1
eval_tap $? 475 'PublicDeletePaymentAccount' test.out

#- 476 PublicListActiveSections
samples/cli/sample-apps Platform publicListActiveSections \
    --namespace $AB_NAMESPACE \
    --userId 'IeLKSaz8fu5KWoIR' \
    --autoCalcEstimatedPrice 'false' \
    --language 'T6LuuLLtwDFd4LZ2' \
    --region 'o6X01bvtXKPP6vyw' \
    --storeId 'AdjkoWwkq52g6uUd' \
    --viewId 'osZhl4neQ5oBearY' \
    > test.out 2>&1
eval_tap $? 476 'PublicListActiveSections' test.out

#- 477 PublicQueryUserSubscriptions
samples/cli/sample-apps Platform publicQueryUserSubscriptions \
    --namespace $AB_NAMESPACE \
    --userId '3xDC9nSffib0AKiK' \
    --chargeStatus 'CHARGED' \
    --itemId 'hekOdkdTpUqZeL7i' \
    --limit '14' \
    --offset '25' \
    --sku 'HodMFMT7HqjkytoU' \
    --status 'ACTIVE' \
    --subscribedBy 'PLATFORM' \
    > test.out 2>&1
eval_tap $? 477 'PublicQueryUserSubscriptions' test.out

#- 478 PublicSubscribeSubscription
samples/cli/sample-apps Platform publicSubscribeSubscription \
    --namespace $AB_NAMESPACE \
    --userId 'fU2j9yKlqSZF7EUk' \
    --body '{"currencyCode": "ltlGYv6QIkLvoAvS", "itemId": "lLmZW7KHo0mjhfHS", "language": "gU-YjBL", "region": "fH6bTRpARa8Hhi99", "returnUrl": "M6b9Xp5R1Oi9Tjnt", "source": "vUHSEKP40RB1HVqa"}' \
    > test.out 2>&1
eval_tap $? 478 'PublicSubscribeSubscription' test.out

#- 479 PublicCheckUserSubscriptionSubscribableByItemId
samples/cli/sample-apps Platform publicCheckUserSubscriptionSubscribableByItemId \
    --namespace $AB_NAMESPACE \
    --userId '32FVV5MAiFw5qlQY' \
    --itemId '0i2ZuyK18MZhV9nN' \
    > test.out 2>&1
eval_tap $? 479 'PublicCheckUserSubscriptionSubscribableByItemId' test.out

#- 480 PublicGetUserSubscription
samples/cli/sample-apps Platform publicGetUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'KOhBAC1znp9jysvf' \
    --userId 'rtPKplawXrIKO7he' \
    > test.out 2>&1
eval_tap $? 480 'PublicGetUserSubscription' test.out

#- 481 PublicChangeSubscriptionBillingAccount
samples/cli/sample-apps Platform publicChangeSubscriptionBillingAccount \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'pdYs8BybVRfcfgps' \
    --userId '00VEziGX0ptRHCrF' \
    > test.out 2>&1
eval_tap $? 481 'PublicChangeSubscriptionBillingAccount' test.out

#- 482 PublicCancelSubscription
samples/cli/sample-apps Platform publicCancelSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId '2VlVrKuKFXPCX239' \
    --userId 'Msd013idRlnEotyB' \
    --body '{"immediate": false, "reason": "sPg8RNBbfa3VZpVu"}' \
    > test.out 2>&1
eval_tap $? 482 'PublicCancelSubscription' test.out

#- 483 PublicGetUserSubscriptionBillingHistories
samples/cli/sample-apps Platform publicGetUserSubscriptionBillingHistories \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'VlqdHJlG9IyV4BSB' \
    --userId 'cYqY7Y4eD0HygWck' \
    --excludeFree 'true' \
    --limit '47' \
    --offset '86' \
    > test.out 2>&1
eval_tap $? 483 'PublicGetUserSubscriptionBillingHistories' test.out

#- 484 PublicListViews
samples/cli/sample-apps Platform publicListViews \
    --namespace $AB_NAMESPACE \
    --userId 'oKxDQb5tpAdgc3hS' \
    --language 'rsCTlkjBAChfG72O' \
    --storeId 'bEbryau0ewFASCfK' \
    > test.out 2>&1
eval_tap $? 484 'PublicListViews' test.out

#- 485 PublicGetWallet
samples/cli/sample-apps Platform publicGetWallet \
    --currencyCode '2qGTrnRLnZsYg2zi' \
    --namespace $AB_NAMESPACE \
    --userId 'WLLmpnMtEa6j53JP' \
    > test.out 2>&1
eval_tap $? 485 'PublicGetWallet' test.out

#- 486 PublicListUserWalletTransactions
samples/cli/sample-apps Platform publicListUserWalletTransactions \
    --currencyCode 'dBVDSFdrsI9dCR4s' \
    --namespace $AB_NAMESPACE \
    --userId 'VMBjZrT5y2kL5AHO' \
    --limit '64' \
    --offset '94' \
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
    --endTime 'ipCbkWWZ9RqF9CXb' \
    --limit '87' \
    --offset '44' \
    --startTime 'Jme33iOCqwSM8SIl' \
    --state 'REVOKE_FAILED' \
    --transactionId 'Pz1FcbipuQgYRrYJ' \
    --userId 'xmDOLdiPgVFuNLTV' \
    > test.out 2>&1
eval_tap $? 488 'QueryFulfillments' test.out

#- 489 QueryItemsV2
samples/cli/sample-apps Platform queryItemsV2 \
    --namespace $AB_NAMESPACE \
    --appType 'GAME' \
    --availableDate 'CibWX0cwSoTWsKpx' \
    --baseAppId 'pqssIXtvqQYbCEao' \
    --categoryPath '8SvcNSKyC9M9F3Jp' \
    --features 'AnSYz1YARhewqPZJ' \
    --includeSubCategoryItem 'false' \
    --itemName 'Ilh6Cg0W3UHWgPgX' \
    --itemStatus 'ACTIVE' \
    --itemType '["OPTIONBOX", "CODE", "MEDIA"]' \
    --limit '18' \
    --offset '73' \
    --region 'tJUYPjPzHnbPSxnn' \
    --sectionExclusive 'false' \
    --sortBy '["name:desc", "displayOrder:desc", "createdAt"]' \
    --storeId 'gfUSjKwCa9UjrS6y' \
    --tags 'Rf1QrjyEBcwri5sw' \
    --targetNamespace 'PT3QmcQagkPasc3B' \
    --withTotal 'false' \
    > test.out 2>&1
eval_tap $? 489 'QueryItemsV2' test.out

#- 490 ImportStore1
samples/cli/sample-apps Platform importStore1 \
    --namespace $AB_NAMESPACE \
    --storeId 'zDUT2po5tSYNtcuu' \
    --strictMode 'true' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 490 'ImportStore1' test.out

#- 491 ExportStore1
samples/cli/sample-apps Platform exportStore1 \
    --namespace $AB_NAMESPACE \
    --storeId '7W1faKRniKo71XFw' \
    --body '{"itemIds": ["EdhoARWPvoYyViGj", "bXEnr5lVuiemXgqd", "46HiZooQsGQKoMaU"]}' \
    > test.out 2>&1
eval_tap $? 491 'ExportStore1' test.out

#- 492 FulfillRewardsV2
samples/cli/sample-apps Platform fulfillRewardsV2 \
    --namespace $AB_NAMESPACE \
    --userId 'kPQAuAFpoLppXYqL' \
    --body '{"entitlementCollectionId": "CVs73yFjQTgnMl8X", "entitlementOrigin": "Nintendo", "metadata": {"VcAv4HfRT89RuyqU": {}, "otojkSt3PMI4vRpV": {}, "x0AWSFvYDpIv5k9L": {}}, "origin": "Other", "rewards": [{"currency": {"currencyCode": "CntCiK4fmqjgouSi", "namespace": "s3RhOezr5OlH8NVh"}, "item": {"itemId": "9BT6LOT8Bx7GlbzU", "itemName": "shfGxWARlvad40tj", "itemSku": "vo1Bg0fjuO4qqpyn", "itemType": "My29ydrQh7R88MTK"}, "quantity": 6, "type": "ITEM"}, {"currency": {"currencyCode": "VgStleJ09xsydjso", "namespace": "wisFxxZSY4YSBm4J"}, "item": {"itemId": "IVQgC5jFipQgYJnA", "itemName": "70MFy7oo9D3O0dSC", "itemSku": "RZSxLfgFiHBHdlVi", "itemType": "L0UwczAdOAXsV0Us"}, "quantity": 68, "type": "CURRENCY"}, {"currency": {"currencyCode": "tZWCBtTdTXHtJX9x", "namespace": "evt1SR5UnBX7gM1d"}, "item": {"itemId": "4fQu8ONYfpCgqLfu", "itemName": "WUOAngfn3sKCmAUl", "itemSku": "kvS5eHLt38Ns7UPX", "itemType": "bQlBUImjEkbU11qy"}, "quantity": 93, "type": "CURRENCY"}], "source": "REWARD", "transactionId": "7bcaliFpdDbCwABI"}' \
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
    --userId 'ClJA3Kvq5ZjVHOGA' \
    --body '{"transactionId": "zlXjva9mf4hEK7XI"}' \
    > test.out 2>&1
eval_tap $? 496 'V2PublicFulfillAppleIAPItem' test.out

#- 497 FulfillItemsV3
samples/cli/sample-apps Platform fulfillItemsV3 \
    --namespace $AB_NAMESPACE \
    --transactionId 'H0DcsO8u3y65D3he' \
    --userId '0JObLcfPLXfWYVXj' \
    --body '{"items": [{"duration": 99, "endDate": "1975-10-02T00:00:00Z", "entitlementCollectionId": "zY9u7ToTP0PLytly", "entitlementOrigin": "IOS", "itemId": "wn6iXEN8xbzBivyb", "itemSku": "XyGV7lg8CFmTpR8E", "language": "ap4ciyHc19BFxNaF", "metadata": {"yuVKcwhQ65K0sWfZ": {}, "RtRGJYIApVgDv5Mm": {}, "wGEpKrUw39W6XUA0": {}}, "orderNo": "xEYucPbmWi99xYge", "origin": "Twitch", "quantity": 7, "region": "1Vd1YIS6igO7j0Jf", "source": "DLC", "startDate": "1974-03-10T00:00:00Z", "storeId": "cHgUBTxdGm2G3nLK"}, {"duration": 14, "endDate": "1985-04-23T00:00:00Z", "entitlementCollectionId": "qjRZ9u3eViD5nS6g", "entitlementOrigin": "Other", "itemId": "Encig1T68Uo5iLxH", "itemSku": "6stWZ4rGzuodjApb", "language": "ghhPvXTEkyckStGv", "metadata": {"20OIsCbDguuQ2tD0": {}, "z40R6UrldC9hw61a": {}, "no5PqCaclFkhEzGn": {}}, "orderNo": "yAa27BPCcDM4qTfV", "origin": "GooglePlay", "quantity": 77, "region": "fxCZxQg7Tj73Y6UO", "source": "PURCHASE", "startDate": "1981-12-21T00:00:00Z", "storeId": "vDIGwSv6QlaIo9VF"}, {"duration": 43, "endDate": "1984-02-03T00:00:00Z", "entitlementCollectionId": "MObis3EdLbPmut4u", "entitlementOrigin": "Epic", "itemId": "zWQ7tq8JxWtxrzD9", "itemSku": "oabM956sIvmQCe4S", "language": "bDpJdzpoHnH6IoAM", "metadata": {"A2g2Y5azsoWYtggI": {}, "9uofknOFCAojf9pW": {}, "prXh2suE3fu8XHwC": {}}, "orderNo": "otB5jXb2GvD6zbH7", "origin": "Twitch", "quantity": 3, "region": "KvjEeEG1Qj8VbatH", "source": "IAP_CHARGEBACK_REVERSED", "startDate": "1973-05-26T00:00:00Z", "storeId": "wC3ZXaKaSNqUqJq2"}]}' \
    > test.out 2>&1
eval_tap $? 497 'FulfillItemsV3' test.out

#- 498 RetryFulfillItemsV3
samples/cli/sample-apps Platform retryFulfillItemsV3 \
    --namespace $AB_NAMESPACE \
    --transactionId 'haqzi8TPB5N1kWib' \
    --userId 'qPdy6UcTKRLjCOPp' \
    > test.out 2>&1
eval_tap $? 498 'RetryFulfillItemsV3' test.out

#- 499 RevokeItemsV3
samples/cli/sample-apps Platform revokeItemsV3 \
    --namespace $AB_NAMESPACE \
    --transactionId 'j97YKs73StTv5PZZ' \
    --userId 'H9gxcVAMdsT3q4Uy' \
    > test.out 2>&1
eval_tap $? 499 'RevokeItemsV3' test.out


rm -f "tmp.dat"

exit $EXIT_CODE