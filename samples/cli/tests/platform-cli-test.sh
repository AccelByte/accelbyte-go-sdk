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
echo "1..423"

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
    --id 'zpVa5vNGC1cC8gz3' \
    > test.out 2>&1
eval_tap $? 3 'GetFulfillmentScript' test.out

#- 4 CreateFulfillmentScript
samples/cli/sample-apps Platform createFulfillmentScript \
    --id 'NiGFshqYx4JxPILt' \
    --body '{"grantDays": "9RkwusthcH6BAYjt"}' \
    > test.out 2>&1
eval_tap $? 4 'CreateFulfillmentScript' test.out

#- 5 DeleteFulfillmentScript
samples/cli/sample-apps Platform deleteFulfillmentScript \
    --id 'Kyw8xJCTySq0yJqr' \
    > test.out 2>&1
eval_tap $? 5 'DeleteFulfillmentScript' test.out

#- 6 UpdateFulfillmentScript
samples/cli/sample-apps Platform updateFulfillmentScript \
    --id 'VLLX1O12wS7NdyL1' \
    --body '{"grantDays": "HW0zrcKb1ycNtbJm"}' \
    > test.out 2>&1
eval_tap $? 6 'UpdateFulfillmentScript' test.out

#- 7 ListItemTypeConfigs
samples/cli/sample-apps Platform listItemTypeConfigs \
    > test.out 2>&1
eval_tap $? 7 'ListItemTypeConfigs' test.out

#- 8 CreateItemTypeConfig
samples/cli/sample-apps Platform createItemTypeConfig \
    --body '{"clazz": "2XYeYPOvlbuaOLZI", "dryRun": true, "fulfillmentUrl": "8MzAPsKj11AP92WN", "itemType": "EXTENSION", "purchaseConditionUrl": "xxVXitesmuNoVZGe"}' \
    > test.out 2>&1
eval_tap $? 8 'CreateItemTypeConfig' test.out

#- 9 SearchItemTypeConfig
samples/cli/sample-apps Platform searchItemTypeConfig \
    --clazz 'xxn0tJbfnWGTQGa2' \
    --itemType 'OPTIONBOX' \
    > test.out 2>&1
eval_tap $? 9 'SearchItemTypeConfig' test.out

#- 10 GetItemTypeConfig
samples/cli/sample-apps Platform getItemTypeConfig \
    --id 'JTWkCITKPxd4IPxh' \
    > test.out 2>&1
eval_tap $? 10 'GetItemTypeConfig' test.out

#- 11 UpdateItemTypeConfig
samples/cli/sample-apps Platform updateItemTypeConfig \
    --id '3MwPAb5FrqvLK66L' \
    --body '{"clazz": "iKfPMVVSg1vMYWce", "dryRun": false, "fulfillmentUrl": "NtyyleUoczthqSNJ", "purchaseConditionUrl": "BqX3xgOJR5Ilq6aF"}' \
    > test.out 2>&1
eval_tap $? 11 'UpdateItemTypeConfig' test.out

#- 12 DeleteItemTypeConfig
samples/cli/sample-apps Platform deleteItemTypeConfig \
    --id 'rx4XXW8hLSJQFaG8' \
    > test.out 2>&1
eval_tap $? 12 'DeleteItemTypeConfig' test.out

#- 13 QueryCampaigns
samples/cli/sample-apps Platform queryCampaigns \
    --namespace $AB_NAMESPACE \
    --limit '70' \
    --name '8MStHXW7CdgXukaA' \
    --offset '46' \
    --tag 'wiNnil4xsMCT5OtT' \
    > test.out 2>&1
eval_tap $? 13 'QueryCampaigns' test.out

#- 14 CreateCampaign
samples/cli/sample-apps Platform createCampaign \
    --namespace $AB_NAMESPACE \
    --body '{"description": "pmqd6QlojNeXpJP3", "items": [{"extraSubscriptionDays": 28, "itemId": "hFYWe8oEmn0aX5wT", "itemName": "HGLWWcogDeOA4t1c", "quantity": 69}, {"extraSubscriptionDays": 77, "itemId": "8lM0sbJH6VkuIPK1", "itemName": "GhP7JsuBCzQETeCu", "quantity": 4}, {"extraSubscriptionDays": 65, "itemId": "otAiKMmrV97pwY3S", "itemName": "HglFBRsdR5tXczoi", "quantity": 72}], "maxRedeemCountPerCampaignPerUser": 47, "maxRedeemCountPerCode": 52, "maxRedeemCountPerCodePerUser": 55, "maxSaleCount": 34, "name": "2rN2eihjjPdUGAL4", "redeemEnd": "1982-06-12T00:00:00Z", "redeemStart": "1987-01-25T00:00:00Z", "redeemType": "ITEM", "status": "ACTIVE", "tags": ["w7xNFbiJrXFuUn72", "lBvXYtWOuVldJVQF", "Q1KpvJty1jWaYMph"], "type": "REDEMPTION"}' \
    > test.out 2>&1
eval_tap $? 14 'CreateCampaign' test.out

#- 15 GetCampaign
samples/cli/sample-apps Platform getCampaign \
    --campaignId 'n6VDhDNinFEpIWhT' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 15 'GetCampaign' test.out

#- 16 UpdateCampaign
samples/cli/sample-apps Platform updateCampaign \
    --campaignId 'W0que9HWEbyXUeMx' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "JPQAAIZmhu0VdNLu", "items": [{"extraSubscriptionDays": 87, "itemId": "80CN3i611VJiJaZT", "itemName": "JtYGWhdlOa99Lcnn", "quantity": 0}, {"extraSubscriptionDays": 35, "itemId": "C9lnp7859tkglQAd", "itemName": "Th0ITj6zgou1neST", "quantity": 95}, {"extraSubscriptionDays": 17, "itemId": "MJK61oQcBoCpern2", "itemName": "nUVWTjyywI0C75r4", "quantity": 35}], "maxRedeemCountPerCampaignPerUser": 0, "maxRedeemCountPerCode": 27, "maxRedeemCountPerCodePerUser": 26, "maxSaleCount": 37, "name": "QbRaDKJdZdo9pb7Y", "redeemEnd": "1983-06-01T00:00:00Z", "redeemStart": "1989-01-30T00:00:00Z", "redeemType": "ITEM", "status": "ACTIVE", "tags": ["xQtpdVPbUxwTgZWE", "ONv4TYPD5vHvGoUd", "YbDCxitHRgJEgw1A"]}' \
    > test.out 2>&1
eval_tap $? 16 'UpdateCampaign' test.out

#- 17 GetCampaignDynamic
samples/cli/sample-apps Platform getCampaignDynamic \
    --campaignId 'Hy6FrlsKF2gUXzpi' \
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
    --body '{"appConfig": {"appName": "Tdz5bPN3zjv3YmbJ"}, "customConfig": {"connectionType": "TLS", "grpcServerAddress": "33k1PTEpyugREoxl"}, "extendType": "APP"}' \
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
    --body '{"appConfig": {"appName": "9nithKJvB2jaRNC6"}, "customConfig": {"connectionType": "TLS", "grpcServerAddress": "mWC85eCbOWZFC2X8"}, "extendType": "CUSTOM"}' \
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
    --storeId 'Dkc08zE9gJne9xXW' \
    > test.out 2>&1
eval_tap $? 27 'GetRootCategories' test.out

#- 28 CreateCategory
samples/cli/sample-apps Platform createCategory \
    --namespace $AB_NAMESPACE \
    --storeId 'O9rFpd5XMVdyhlD3' \
    --body '{"categoryPath": "wMwmsx4yCv7V38zT", "localizationDisplayNames": {"ea08GTGGe3c8V5U8": "8iny4xrTl6pbOScy", "8D5meYKiSF0Gmz6b": "MbloF4KvVOdkBMwV", "ynByCckmPcjA73OW": "Y4mpO4QvtfQYHbDQ"}}' \
    > test.out 2>&1
eval_tap $? 28 'CreateCategory' test.out

#- 29 ListCategoriesBasic
samples/cli/sample-apps Platform listCategoriesBasic \
    --namespace $AB_NAMESPACE \
    --storeId 'keBKrAIV1DOKO1p6' \
    > test.out 2>&1
eval_tap $? 29 'ListCategoriesBasic' test.out

#- 30 GetCategory
samples/cli/sample-apps Platform getCategory \
    --categoryPath 'gS8Rfh6UNHqsMxG2' \
    --namespace $AB_NAMESPACE \
    --storeId '1X6grHxIKbRifDGX' \
    > test.out 2>&1
eval_tap $? 30 'GetCategory' test.out

#- 31 UpdateCategory
samples/cli/sample-apps Platform updateCategory \
    --categoryPath 'ywPpr7Gidn0uXDZ5' \
    --namespace $AB_NAMESPACE \
    --storeId '8Iab1Phi90T95pYk' \
    --body '{"localizationDisplayNames": {"qNXHYIHMQCdWNBtm": "bsRZCORnC72ufDpd", "ZsxA7XJQNewlBc4P": "vVKeH0HZNfYW8eI6", "K6VCuksuYSw0Kvbq": "xQOJzCY7l4cL5tST"}}' \
    > test.out 2>&1
eval_tap $? 31 'UpdateCategory' test.out

#- 32 DeleteCategory
samples/cli/sample-apps Platform deleteCategory \
    --categoryPath 'ceNI3qFYVZFFdMqd' \
    --namespace $AB_NAMESPACE \
    --storeId 'F9r0kVPhKj8tgZrD' \
    > test.out 2>&1
eval_tap $? 32 'DeleteCategory' test.out

#- 33 GetChildCategories
samples/cli/sample-apps Platform getChildCategories \
    --categoryPath 'jFDDhy1XCfwIiALZ' \
    --namespace $AB_NAMESPACE \
    --storeId 'hTk0ZSWo2G47g8UI' \
    > test.out 2>&1
eval_tap $? 33 'GetChildCategories' test.out

#- 34 GetDescendantCategories
samples/cli/sample-apps Platform getDescendantCategories \
    --categoryPath '5H2BJD2DrKL1SRXD' \
    --namespace $AB_NAMESPACE \
    --storeId 'neNi4Iy0OcwZ9uVe' \
    > test.out 2>&1
eval_tap $? 34 'GetDescendantCategories' test.out

#- 35 QueryCodes
samples/cli/sample-apps Platform queryCodes \
    --campaignId 'c16NixlBomDjeKen' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --batchNo '9' \
    --code 'sbwn6NJxIjHLSybq' \
    --limit '43' \
    --offset '69' \
    > test.out 2>&1
eval_tap $? 35 'QueryCodes' test.out

#- 36 CreateCodes
samples/cli/sample-apps Platform createCodes \
    --campaignId 'wOiri1uVG3c01H0q' \
    --namespace $AB_NAMESPACE \
    --body '{"quantity": 23}' \
    > test.out 2>&1
eval_tap $? 36 'CreateCodes' test.out

#- 37 Download
samples/cli/sample-apps Platform download \
    --campaignId 'FSYFtyizHZ6rhaQq' \
    --namespace $AB_NAMESPACE \
    --batchNo '99' \
    > test.out 2>&1
eval_tap $? 37 'Download' test.out

#- 38 BulkDisableCodes
samples/cli/sample-apps Platform bulkDisableCodes \
    --campaignId '3309NgxbsYibfGyg' \
    --namespace $AB_NAMESPACE \
    --batchNo '13' \
    > test.out 2>&1
eval_tap $? 38 'BulkDisableCodes' test.out

#- 39 BulkEnableCodes
samples/cli/sample-apps Platform bulkEnableCodes \
    --campaignId 'qXe2GZcZELxcQx8d' \
    --namespace $AB_NAMESPACE \
    --batchNo '36' \
    > test.out 2>&1
eval_tap $? 39 'BulkEnableCodes' test.out

#- 40 QueryRedeemHistory
samples/cli/sample-apps Platform queryRedeemHistory \
    --campaignId 'joDaKTp81nVKHa3F' \
    --namespace $AB_NAMESPACE \
    --code '9NjCzJSSDNrVNzEt' \
    --limit '7' \
    --offset '6' \
    --userId '8JAjrkLAwZysZjeW' \
    > test.out 2>&1
eval_tap $? 40 'QueryRedeemHistory' test.out

#- 41 GetCode
samples/cli/sample-apps Platform getCode \
    --code '95JItuRs2afeGkTX' \
    --namespace $AB_NAMESPACE \
    --redeemable 'false' \
    > test.out 2>&1
eval_tap $? 41 'GetCode' test.out

#- 42 DisableCode
samples/cli/sample-apps Platform disableCode \
    --code 'qJFHJslJsctneiKp' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 42 'DisableCode' test.out

#- 43 EnableCode
samples/cli/sample-apps Platform enableCode \
    --code 'As8BEZeJh74h22CV' \
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
    --currencyType 'VIRTUAL' \
    > test.out 2>&1
eval_tap $? 47 'ListCurrencies' test.out

#- 48 CreateCurrency
samples/cli/sample-apps Platform createCurrency \
    --namespace $AB_NAMESPACE \
    --body '{"currencyCode": "DJBzTIPsH9j1sezb", "currencySymbol": "uj8Fv2nzfRruNAez", "currencyType": "REAL", "decimals": 82, "localizationDescriptions": {"rwgeDYLkmR9Dfe7w": "lNEbaIIsJ1M2oCgm", "WeTQcoVGJa9IkT13": "YIOs5RoDx7IXrKik", "wC82HAyKqTKCgakV": "NTSs9jOGmjwkE1F2"}}' \
    > test.out 2>&1
eval_tap $? 48 'CreateCurrency' test.out

#- 49 UpdateCurrency
samples/cli/sample-apps Platform updateCurrency \
    --currencyCode 'mxeGv2tWuNv3MJXo' \
    --namespace $AB_NAMESPACE \
    --body '{"localizationDescriptions": {"9OwXXEPfTiyQRJWS": "un9b9CovfQhs3vXo", "Qtbmheq203A5LsIq": "K08VJdRKQiIdTnfZ", "pAZVcuwF7biDPgSf": "CB3b1OEqd0r8QDwU"}}' \
    > test.out 2>&1
eval_tap $? 49 'UpdateCurrency' test.out

#- 50 DeleteCurrency
samples/cli/sample-apps Platform deleteCurrency \
    --currencyCode '67dPX0D4N9QUNoqL' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 50 'DeleteCurrency' test.out

#- 51 GetCurrencyConfig
samples/cli/sample-apps Platform getCurrencyConfig \
    --currencyCode 'HvovW69BLju9XwsX' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 51 'GetCurrencyConfig' test.out

#- 52 GetCurrencySummary
samples/cli/sample-apps Platform getCurrencySummary \
    --currencyCode '0cpDQXlq7WCjWlkK' \
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
    --body '{"data": [{"id": "ZtLTeUJ8lNSXugLu", "rewards": [{"currency": {"currencyCode": "rIyBt4k8Wuq2qmKP", "namespace": "94490jFM8DKY5flY"}, "item": {"itemId": "RZ5NYstihPB6CH8o", "itemSku": "M28DND7uakdiJff4", "itemType": "t84XcVNRrdJ3WObC"}, "quantity": 88, "type": "ITEM"}, {"currency": {"currencyCode": "LaKw48xHiDTy9KPk", "namespace": "byLpEGX5BqpH0Nvy"}, "item": {"itemId": "NQlnLTMBeTgpBVnn", "itemSku": "aYKGuq9TivFZ2TPO", "itemType": "GKI698a5kYBKDxTh"}, "quantity": 17, "type": "CURRENCY"}, {"currency": {"currencyCode": "rWHXkEEe3zHOs373", "namespace": "CrbXFJRZmzFUKYtV"}, "item": {"itemId": "0HS3A9qQ1vNaYuCI", "itemSku": "vJyq7wq6VpkFOUYj", "itemType": "BsdSwZgCbTFrwor5"}, "quantity": 3, "type": "ITEM"}]}, {"id": "KQGc8dSsAfFVi7tf", "rewards": [{"currency": {"currencyCode": "wse8jEYrPIlg5xOf", "namespace": "0yjvjzPMSHK7UT7q"}, "item": {"itemId": "9hOUvqImez3uvfJP", "itemSku": "0dI1kWv5IVRYXz9u", "itemType": "e1NhGDvjuvFV86DG"}, "quantity": 55, "type": "ITEM"}, {"currency": {"currencyCode": "Wqh3saQpwo5aznGA", "namespace": "VKM7bGiAtV3itQZb"}, "item": {"itemId": "asp49Mlk7yxleUF7", "itemSku": "ulvYQJ9w8Jsk9Cql", "itemType": "oN223gelN7GTs4rq"}, "quantity": 37, "type": "ITEM"}, {"currency": {"currencyCode": "BssIrhBOyfLnRYAk", "namespace": "fb8UNGeZfCw48bNx"}, "item": {"itemId": "bbRHv8SalEEjcqiH", "itemSku": "n9KLMLkWT77bzul4", "itemType": "f8mgpLcTfin8PGoR"}, "quantity": 95, "type": "CURRENCY"}]}, {"id": "wmUlK3q29WuUY6yU", "rewards": [{"currency": {"currencyCode": "yYLeJl14m5HJqxqI", "namespace": "xqEWPxiqG06zpLCb"}, "item": {"itemId": "JLH9dglmwV3kOQBn", "itemSku": "xVIByFPUeBIYT8kd", "itemType": "FqiQu5Ute6XjAX6s"}, "quantity": 10, "type": "CURRENCY"}, {"currency": {"currencyCode": "Oy14XvxULrUCxnyA", "namespace": "bWUA3dN0vj0gz2eu"}, "item": {"itemId": "59ljEBd0swoS9kjk", "itemSku": "eSlkuzi9yZOgZftl", "itemType": "0up4Xd7u4tVhamwO"}, "quantity": 11, "type": "CURRENCY"}, {"currency": {"currencyCode": "lZ0i6yhB59bfOtBM", "namespace": "lhvCJbNpQ5SWaF6d"}, "item": {"itemId": "t3rywOOY9wTJeJJJ", "itemSku": "EMOnZWWFdH4RMtWO", "itemType": "ZinWu05vmR3BhHVv"}, "quantity": 14, "type": "CURRENCY"}]}]}' \
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
    --body '{"data": [{"platform": "OCULUS", "platformDlcIdMap": {"bDEr9oV3K9PsOc5w": "qTB4L1O1vlmwWQW9", "4NfXCLVkkvgkR1Yn": "cePbIEg0o2v1vADM", "OmkpRV22U85ok3Vc": "WMFqY4T0Evdb9tTR"}}, {"platform": "EPICGAMES", "platformDlcIdMap": {"CbCwhq6QIe8rIomL": "JikwFaYMbyC3A6me", "ANeuOehAowVxnhbh": "BDD8NfD0KQ9idpuY", "etDgbXrOt3VhFl6I": "my3xrCCgieGMNEOm"}}, {"platform": "STEAM", "platformDlcIdMap": {"CmL97fyai8kZ8kSs": "Y2VayV0BlZzdViSR", "42euiZ2fFjczFMJg": "fx4equm8HcPkxFgp", "hUJlpIqPsMkHhG1o": "mn7ttQ4dffKstoBU"}}]}' \
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
    --appType 'DEMO' \
    --entitlementClazz 'MEDIA' \
    --entitlementName '6uvqIThGq0cNIlRv' \
    --itemId '["U7wj0OEmDz85QiDC", "B4pIjncXF31G0fWD", "xe7uRE6jHNfoplEK"]' \
    --limit '42' \
    --offset '55' \
    --userId 'XCGxwIS9Mga13eL2' \
    > test.out 2>&1
eval_tap $? 59 'QueryEntitlements' test.out

#- 60 QueryEntitlements1
samples/cli/sample-apps Platform queryEntitlements1 \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --itemIds '["XRTAWDR7lENf5Wou", "W77ArWPQXjwOpp8r", "kln0J6X9IvBeouoR"]' \
    --limit '66' \
    --offset '74' \
    > test.out 2>&1
eval_tap $? 60 'QueryEntitlements1' test.out

#- 61 GrantEntitlements
samples/cli/sample-apps Platform grantEntitlements \
    --namespace $AB_NAMESPACE \
    --body '{"entitlementGrantList": [{"endDate": "1973-03-08T00:00:00Z", "grantedCode": "ET1L0KNZjihQ7yTb", "itemId": "Wq6YohjFteMUgYuU", "itemNamespace": "0jeCyTRQMpI9wAez", "language": "yXE", "quantity": 31, "region": "gtbLdMynhDcGP7qF", "source": "REWARD", "startDate": "1989-01-25T00:00:00Z", "storeId": "5cmYqopYoFZ8EJV2"}, {"endDate": "1989-12-02T00:00:00Z", "grantedCode": "n2ATKIrnTrlxL7dD", "itemId": "SyOcQ9FqnT3RKqei", "itemNamespace": "PnPcT49EKMESFheA", "language": "CKl", "quantity": 43, "region": "Ci7sVmrwOINsKNlB", "source": "REDEEM_CODE", "startDate": "1995-08-23T00:00:00Z", "storeId": "gSd7a6U98lmjHHpC"}, {"endDate": "1989-09-09T00:00:00Z", "grantedCode": "jaaCMil4OU9rjBD4", "itemId": "jwNyltIi1kLKe6In", "itemNamespace": "94GezWWZgOpWJYqy", "language": "QjY", "quantity": 42, "region": "ohHcT0GgAhRQEYh8", "source": "IAP", "startDate": "1985-08-17T00:00:00Z", "storeId": "XaLtxlfShwSad4t6"}], "userIds": ["UJcOyRDQEiiA3XE0", "ZOBK98GN0W8cY3hm", "47ZcU0uV3KO9gx8J"]}' \
    > test.out 2>&1
eval_tap $? 61 'GrantEntitlements' test.out

#- 62 RevokeEntitlements
samples/cli/sample-apps Platform revokeEntitlements \
    --namespace $AB_NAMESPACE \
    --body '["iLzBTQhZehQ2FHIR", "52F1DyITmL4Fa0su", "BPKYdh7ir33BZqhR"]' \
    > test.out 2>&1
eval_tap $? 62 'RevokeEntitlements' test.out

#- 63 GetEntitlement
samples/cli/sample-apps Platform getEntitlement \
    --entitlementId 'i38WV72zlaJvNqQR' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 63 'GetEntitlement' test.out

#- 64 QueryFulfillmentHistories
samples/cli/sample-apps Platform queryFulfillmentHistories \
    --namespace $AB_NAMESPACE \
    --limit '47' \
    --offset '13' \
    --status 'SUCCESS' \
    --userId '87JTgSWf1D26PMwH' \
    > test.out 2>&1
eval_tap $? 64 'QueryFulfillmentHistories' test.out

#- 65 QueryIAPClawbackHistory
samples/cli/sample-apps Platform queryIAPClawbackHistory \
    --namespace $AB_NAMESPACE \
    --endTime 'eDFh3d8MgSUeYjj3' \
    --eventType 'CHARGEBACK' \
    --externalOrderId 'vQbgI95UiUbptGec' \
    --limit '27' \
    --offset '63' \
    --startTime '6fbvj0X1sYPckuBf' \
    --status 'FAIL' \
    --userId 'jwP9LpjL8b1E6PKN' \
    > test.out 2>&1
eval_tap $? 65 'QueryIAPClawbackHistory' test.out

#- 66 MockPlayStationStreamEvent
samples/cli/sample-apps Platform mockPlayStationStreamEvent \
    --namespace $AB_NAMESPACE \
    --body '{"body": {"account": "GjL9lo2sABn7RRqF", "additionalData": {"entitlement": [{"clientTransaction": [{"amountConsumed": 87, "clientTransactionId": "a1TCDBeuf9yePmTT"}, {"amountConsumed": 23, "clientTransactionId": "f7mYBPli02K8drrh"}, {"amountConsumed": 59, "clientTransactionId": "Mmnbmk0NRJU8zUaI"}], "entitlementId": "bbFbxwJ3VnUu75DZ", "usageCount": 90}, {"clientTransaction": [{"amountConsumed": 14, "clientTransactionId": "bSEuRZttJrh8iE86"}, {"amountConsumed": 35, "clientTransactionId": "UgrQ6HTKWefcJazI"}, {"amountConsumed": 36, "clientTransactionId": "Ar9q8RgYwF2GLIXL"}], "entitlementId": "SZTjeUkT0zkvwuoL", "usageCount": 84}, {"clientTransaction": [{"amountConsumed": 91, "clientTransactionId": "LpY9WfhFsUan4nBN"}, {"amountConsumed": 87, "clientTransactionId": "LJnuQJtZ7fE3pHP6"}, {"amountConsumed": 72, "clientTransactionId": "XEQFX9oT0Z46vNUZ"}], "entitlementId": "40FOXoZfLYko4FaH", "usageCount": 75}], "purpose": "GEWsFPYGjAvdgr5j"}, "originalTitleName": "ArcPEim7vucZV8Ax", "paymentProductSKU": "nZVzd86cQ63rhgWN", "purchaseDate": "9zbMOZQNc0XEK11H", "sourceOrderItemId": "uArY5TeLYAekNhkd", "titleName": "FMGBYtL1d912fena"}, "eventDomain": "Yo2IprIwPInByrU6", "eventSource": "jO2dbljzQj3KENqi", "eventType": "x6bKQ6M4Q0dhsTUh", "eventVersion": 75, "id": "6yg4yJHbqOsk4Uvv", "timestamp": "oX5gqlU2DJRhKljp"}' \
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
    --body '{"bundleId": "z1M0mSoD6JEL8n4q", "password": "VxQWPgdEewJrZwgB"}' \
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
    --body '{"sandboxId": "Xni75wRQn2iXSUKv"}' \
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
    --body '{"applicationName": "UYYvtuMcglZqYoZT", "serviceAccountId": "Fhd806uGC0Zyc3wI"}' \
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
    --body '{"data": [{"itemIdentity": "LXjLZK2s0sDTiJEW", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"rqyrLLLq6M8A9m1c": "CfGxe1zWanDJ5Zus", "rWwK5vGeXQE8NTeH": "8z6Eq7NcLBoiaxNl", "dsfdFFn8TE2OYH1Q": "tmsfLNr5uLXyecPQ"}}, {"itemIdentity": "96LJoU2C1PtrVMtj", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"giFUZsWgSapUtQrX": "ac7w546CYbVhnRTN", "8dnfGfrb0zpYrlp1": "iDSIdAzm0Hb2kx0e", "aZF26ysaS6Vommg0": "epp1fZzNERRd67j2"}}, {"itemIdentity": "UOdlRDyC8aTi43BL", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"6HOEJwkaxHwLf6fI": "jNuzBRWh69kLoqjN", "R5svgiKEFV2IZnGe": "oLO0QULP9GAj9uEr", "J4cLPYpGEbdqGB4L": "yjfgKYS4JPTc9uei"}}]}' \
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
    --body '{"appId": "W2oWyGhbHwoRJGii", "appSecret": "yFcfQJbRiOm3lpko"}' \
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
    --body '{"backOfficeServerClientId": "Psr9ang3fIgjLmX1", "backOfficeServerClientSecret": "Z1zldnWJ42FzEYyL", "enableStreamJob": false, "environment": "ITMXh3bYSnPUuf9j", "streamName": "pp7yuSpqVxCzRjhw", "streamPartnerName": "U6Rrlx16qAy7bc1u"}' \
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
    --body '{"backOfficeServerClientId": "w2DCR0U29FzLUb20", "backOfficeServerClientSecret": "9prp4UWVRuKCvqOk", "enableStreamJob": false, "environment": "CFyAbuiiST4NkjtZ", "streamName": "uPwC7WnMwqs4uXTt", "streamPartnerName": "LXf7WQDXrlGaBUGr"}' \
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
    --body '{"appId": "AQRP53snzhoa0Elh", "publisherAuthenticationKey": "sTN5t18FHXcyFhc1"}' \
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
    --body '{"clientId": "MSegxZihsrpdBxCY", "clientSecret": "9tJofcVyv1yMmoay", "organizationId": "YPhX5HspH2EptP7W"}' \
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
    --body '{"relyingPartyCert": "6mK2RWJHteN25zPX"}' \
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
    --password 'qibxBUnEl0Nu9qyu' \
    > test.out 2>&1
eval_tap $? 97 'UpdateXblBPCertFile' test.out

#- 98 DownloadInvoiceDetails
samples/cli/sample-apps Platform downloadInvoiceDetails \
    --namespace $AB_NAMESPACE \
    --feature 'Y2Zcg2mGDHbKregm' \
    --itemId 'PTPtNLuKMJsipWkr' \
    --itemType 'APP' \
    --endTime 'q1KAdiXg3qmJcwpV' \
    --startTime 'K71x5GufTxwRAePh' \
    > test.out 2>&1
eval_tap $? 98 'DownloadInvoiceDetails' test.out

#- 99 GenerateInvoiceSummary
samples/cli/sample-apps Platform generateInvoiceSummary \
    --namespace $AB_NAMESPACE \
    --feature '8QNuJUeAKBjRUaQb' \
    --itemId 'zSy07GiyyufguyR0' \
    --itemType 'SUBSCRIPTION' \
    --endTime 'iDk6uy3nDaT3p9pY' \
    --startTime 'Ts39MuPfYRfipjMH' \
    > test.out 2>&1
eval_tap $? 99 'GenerateInvoiceSummary' test.out

#- 100 SyncInGameItem
samples/cli/sample-apps Platform syncInGameItem \
    --namespace $AB_NAMESPACE \
    --storeId 'YV3ydGHTJE1t7O2l' \
    --body '{"categoryPath": "55yTVcBKUIV65baw", "targetItemId": "Bv7ue76IN0Hz26TL", "targetNamespace": "N24sLv6NNU8WAXbV"}' \
    > test.out 2>&1
eval_tap $? 100 'SyncInGameItem' test.out

#- 101 CreateItem
samples/cli/sample-apps Platform createItem \
    --namespace $AB_NAMESPACE \
    --storeId 'cKe0044WCrazRLBh' \
    --body '{"appId": "H08s0jGXdvaxfimC", "appType": "SOFTWARE", "baseAppId": "U6S8DWyRS7W4t2db", "boothName": "uosN1He7KIYkod3A", "categoryPath": "6wBVtwYgP9GydsRv", "clazz": "KwAb8EhqZcCpgbik", "displayOrder": 96, "entitlementType": "DURABLE", "ext": {"1LHuJ8JvckNhxQfj": {}, "INP7CQhoyvE5AJBr": {}, "Ejetzm99CqbybHn5": {}}, "features": ["I8IFmaW0UpxErisS", "gONflm3uRZcIzfEj", "hY1yiiKFDXN1eWcz"], "flexible": false, "images": [{"as": "RQA36q3lY1kTpeBk", "caption": "eErGKM68uEIHS8O1", "height": 25, "imageUrl": "NXkFLUsKpZNHQa9Z", "smallImageUrl": "LDCNgX2zrzdiOsSz", "width": 30}, {"as": "7EbeRBB1ScXWXs19", "caption": "KOdUw2eymmtXXtea", "height": 13, "imageUrl": "yioek1ljUxOWejiG", "smallImageUrl": "ggAvGQt2qchz7t9H", "width": 29}, {"as": "qjAqOOQViGecyc0F", "caption": "8G7OEDX7TPB5UFxH", "height": 14, "imageUrl": "3nLfM4vIz4DMfhxg", "smallImageUrl": "ioLS0inOJC50NXjF", "width": 32}], "itemIds": ["yUPvw8n7sT2rhkAN", "fIxiHsk10eSLt9fF", "d5MMEcTAzsIe3SYW"], "itemQty": {"gcPCmHbwmRpy4hqa": 35, "fQXtbxG2jVWHqAec": 79, "GOy7ghZrpEKjhXMd": 81}, "itemType": "OPTIONBOX", "listable": true, "localizations": {"8HPQrBhnRjlrATMg": {"description": "hZb6B2MgbhtPDxGE", "localExt": {"gJiPUnyIAKy3xyJH": {}, "gGs4Cv25tR3S3Mf6": {}, "8C3RNgRaxcX5qpmO": {}}, "longDescription": "J6tDwnl1tJhKE1XE", "title": "VDHCFpIzi6MxC9tR"}, "E0tSKcKVoEWhDYRx": {"description": "9aFF9gAIaJsMGBwz", "localExt": {"zT7eQAAH2ikU82K0": {}, "5rBytRu7p8oeDsCi": {}, "3B2zduK2V3uUhvb3": {}}, "longDescription": "wiorslo4uo3HPQpj", "title": "VeGEgATJUEYeSAxl"}, "35cJ6yY0nhXd1EQM": {"description": "EUOXsWlSuMIqhkTX", "localExt": {"q1QneHuye1hhMcpq": {}, "1t6ILwaXmuVc30qR": {}, "gsVfu2Bc3Y2Wp2Sw": {}}, "longDescription": "CzdlnOD7D9jLzYsn", "title": "VtGZShzuBAqVYnkD"}}, "lootBoxConfig": {"rewardCount": 16, "rewards": [{"lootBoxItems": [{"count": 86, "duration": 1, "endDate": "1993-08-17T00:00:00Z", "itemId": "FwSotQrUyEptBh55", "itemSku": "1heE1OQsw7TepOaU", "itemType": "iaXGgdOR24pcvD5R"}, {"count": 25, "duration": 35, "endDate": "1988-11-28T00:00:00Z", "itemId": "gGnbg19riBHGSoaW", "itemSku": "5EN464GnOXEIIXeW", "itemType": "fwrCsHHBoHrqrBxf"}, {"count": 45, "duration": 73, "endDate": "1994-07-04T00:00:00Z", "itemId": "h59byOVIfpXuC0xZ", "itemSku": "VVCi8cCzhstCllb3", "itemType": "9v97UEvN64UteGzy"}], "name": "HvRnipawslWhogeQ", "odds": 0.6557927976728233, "type": "REWARD_GROUP", "weight": 98}, {"lootBoxItems": [{"count": 50, "duration": 44, "endDate": "1999-05-01T00:00:00Z", "itemId": "JGVnkhwliZUuJUFm", "itemSku": "yi8cNRU2oaN6sZyB", "itemType": "p5pEB1iIVYIDg8oV"}, {"count": 74, "duration": 60, "endDate": "1978-05-17T00:00:00Z", "itemId": "6Kgriff73yLeFmEE", "itemSku": "auvAzT3i5t0qrMn2", "itemType": "6KnwkZbEv9buDlpt"}, {"count": 11, "duration": 28, "endDate": "1995-09-14T00:00:00Z", "itemId": "4v3GUjMu1hJxAQgj", "itemSku": "pCUZXiCWOpG5TzGI", "itemType": "LToaJYEXx5jKB3Pd"}], "name": "gdYPBWz6stjF8HWa", "odds": 0.370900693030094, "type": "REWARD", "weight": 12}, {"lootBoxItems": [{"count": 13, "duration": 82, "endDate": "1983-04-16T00:00:00Z", "itemId": "FE61KX6YvdtwRE8T", "itemSku": "orfuNHIPodD3E1Vt", "itemType": "q4jsyTl3X7ZQC0Gt"}, {"count": 60, "duration": 85, "endDate": "1986-08-15T00:00:00Z", "itemId": "7l9OkLQjPgcflauV", "itemSku": "wQ9EkT4XRIek70zF", "itemType": "GxmM17kra4URDcV8"}, {"count": 69, "duration": 35, "endDate": "1982-04-18T00:00:00Z", "itemId": "qxtPDqV7Bcj5N6kv", "itemSku": "EcfE40ml9n5BLTQZ", "itemType": "IgVMaRq4wafIWLki"}], "name": "Jvwy8wSR7QfWtBHx", "odds": 0.6371172461249379, "type": "REWARD", "weight": 56}], "rollFunction": "DEFAULT"}, "maxCount": 13, "maxCountPerUser": 18, "name": "dOq68P46pDwamjfh", "optionBoxConfig": {"boxItems": [{"count": 84, "duration": 53, "endDate": "1972-03-06T00:00:00Z", "itemId": "gaySBQ6nL1MJm5aK", "itemSku": "Ea08c1UiO9nLtgUr", "itemType": "qolFpwRerDU44wQ4"}, {"count": 92, "duration": 92, "endDate": "1994-09-17T00:00:00Z", "itemId": "T6LSRLupgooeMZVW", "itemSku": "92kTaswzhFZwYSeR", "itemType": "ft8EI1rRwpkD3w4w"}, {"count": 3, "duration": 67, "endDate": "1985-04-11T00:00:00Z", "itemId": "jVqLPLQ2gNCz2spz", "itemSku": "727klDtNIWlJhVhm", "itemType": "fOIUCfIl1J4THaA6"}]}, "purchasable": false, "recurring": {"cycle": "QUARTERLY", "fixedFreeDays": 15, "fixedTrialCycles": 45, "graceDays": 80}, "regionData": {"taRxmad7YmLYTt8l": [{"currencyCode": "R8j7sedkPfQmYF5N", "currencyNamespace": "fCn0dABw3S4dQ2kJ", "currencyType": "REAL", "discountAmount": 65, "discountExpireAt": "1975-12-02T00:00:00Z", "discountPercentage": 50, "discountPurchaseAt": "1971-11-07T00:00:00Z", "expireAt": "1996-10-06T00:00:00Z", "price": 12, "purchaseAt": "1999-11-05T00:00:00Z", "trialPrice": 93}, {"currencyCode": "9ptggSrtIg2cIQnR", "currencyNamespace": "kYxhjf5leNztvaPU", "currencyType": "VIRTUAL", "discountAmount": 29, "discountExpireAt": "1976-02-28T00:00:00Z", "discountPercentage": 32, "discountPurchaseAt": "1994-03-12T00:00:00Z", "expireAt": "1991-11-14T00:00:00Z", "price": 53, "purchaseAt": "1999-07-23T00:00:00Z", "trialPrice": 21}, {"currencyCode": "IW8LIPcs8Ixdpwni", "currencyNamespace": "PaOECK7QTUftwzeg", "currencyType": "VIRTUAL", "discountAmount": 53, "discountExpireAt": "1992-02-08T00:00:00Z", "discountPercentage": 86, "discountPurchaseAt": "1995-10-05T00:00:00Z", "expireAt": "1988-12-09T00:00:00Z", "price": 55, "purchaseAt": "1976-01-07T00:00:00Z", "trialPrice": 95}], "YACxjLQNQmbQ6CHC": [{"currencyCode": "k2WVsXBQ5phjMivV", "currencyNamespace": "EpWC76S62FnOlFRr", "currencyType": "REAL", "discountAmount": 77, "discountExpireAt": "1985-11-08T00:00:00Z", "discountPercentage": 81, "discountPurchaseAt": "1985-01-06T00:00:00Z", "expireAt": "1971-01-29T00:00:00Z", "price": 51, "purchaseAt": "1997-01-31T00:00:00Z", "trialPrice": 71}, {"currencyCode": "xvnHlIx85TjLXCuI", "currencyNamespace": "ptJJxQ8WutXhiHpl", "currencyType": "VIRTUAL", "discountAmount": 74, "discountExpireAt": "1971-02-07T00:00:00Z", "discountPercentage": 75, "discountPurchaseAt": "1992-11-01T00:00:00Z", "expireAt": "1980-12-24T00:00:00Z", "price": 49, "purchaseAt": "1993-06-13T00:00:00Z", "trialPrice": 100}, {"currencyCode": "Gegx9jI3RlLADKlk", "currencyNamespace": "47y2H1ZRNHIKUENK", "currencyType": "REAL", "discountAmount": 2, "discountExpireAt": "1988-11-18T00:00:00Z", "discountPercentage": 42, "discountPurchaseAt": "1985-12-30T00:00:00Z", "expireAt": "1984-03-22T00:00:00Z", "price": 2, "purchaseAt": "1999-08-14T00:00:00Z", "trialPrice": 42}], "sWss8rlXGvBOabb8": [{"currencyCode": "hoyc7aGBzbCoeIXI", "currencyNamespace": "ERfUPmunRDqWAaIC", "currencyType": "VIRTUAL", "discountAmount": 65, "discountExpireAt": "1977-10-20T00:00:00Z", "discountPercentage": 75, "discountPurchaseAt": "1993-09-10T00:00:00Z", "expireAt": "1977-08-31T00:00:00Z", "price": 47, "purchaseAt": "1996-04-20T00:00:00Z", "trialPrice": 50}, {"currencyCode": "siklb91xEA8BNQUe", "currencyNamespace": "GqEYcyblnYvuBFUe", "currencyType": "REAL", "discountAmount": 4, "discountExpireAt": "1973-10-29T00:00:00Z", "discountPercentage": 11, "discountPurchaseAt": "1992-10-25T00:00:00Z", "expireAt": "1988-05-14T00:00:00Z", "price": 95, "purchaseAt": "1981-01-30T00:00:00Z", "trialPrice": 92}, {"currencyCode": "ECnGjO0N9cObKJkh", "currencyNamespace": "gSraCLhjRTQTrUmn", "currencyType": "VIRTUAL", "discountAmount": 15, "discountExpireAt": "1987-02-24T00:00:00Z", "discountPercentage": 13, "discountPurchaseAt": "1986-11-10T00:00:00Z", "expireAt": "1992-05-08T00:00:00Z", "price": 22, "purchaseAt": "1982-08-09T00:00:00Z", "trialPrice": 99}]}, "saleConfig": {"currencyCode": "3yrTCxPkgx2EC7ao", "price": 12}, "seasonType": "TIER", "sectionExclusive": true, "sellable": true, "sku": "TEyAGVjm8FvqyTUi", "stackable": false, "status": "INACTIVE", "tags": ["JJvgtscCghkAjfRk", "CF0AeSSQEOWSvydi", "j80lZpDFaeNV8sRa"], "targetCurrencyCode": "zUPeg1TnDLjXZNJu", "targetNamespace": "KpI8BVhlbYrRASCH", "thumbnailUrl": "C2ODBu1DJfCQnot7", "useCount": 42}' \
    > test.out 2>&1
eval_tap $? 101 'CreateItem' test.out

#- 102 GetItemByAppId
samples/cli/sample-apps Platform getItemByAppId \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --storeId 'laA3bBGG0Bzt6RkR' \
    --appId 'RsHc63ez64yhW6h0' \
    > test.out 2>&1
eval_tap $? 102 'GetItemByAppId' test.out

#- 103 QueryItems
samples/cli/sample-apps Platform queryItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --appType 'SOFTWARE' \
    --availableDate 'PmeYLIVzh7C57EyD' \
    --baseAppId 'bGkJjHIbF68JLex0' \
    --categoryPath '0KR8e0Ta3YfjlZkF' \
    --features 'ttfZTxNexCGGhpvp' \
    --includeSubCategoryItem 'true' \
    --itemType 'LOOTBOX' \
    --limit '39' \
    --offset '32' \
    --region 'z5nmqPUMtxFIbm4P' \
    --sortBy '["createdAt:asc", "name:desc"]' \
    --storeId '3wYhnWKfxVMPNgjL' \
    --tags 'Sf3PsG6YKk4HMqtA' \
    --targetNamespace 'N6DRGhEW9nXX8kpK' \
    > test.out 2>&1
eval_tap $? 103 'QueryItems' test.out

#- 104 ListBasicItemsByFeatures
samples/cli/sample-apps Platform listBasicItemsByFeatures \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --features '["01pFkKMvNfUBlas4", "CpwA05Z8yATjeswD", "NMnPu7lonCOL2ThQ"]' \
    > test.out 2>&1
eval_tap $? 104 'ListBasicItemsByFeatures' test.out

#- 105 GetItems
samples/cli/sample-apps Platform getItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId '4tN4bMF4ztSHvPNN' \
    --itemIds 'BSulF4UppGksiT46' \
    > test.out 2>&1
eval_tap $? 105 'GetItems' test.out

#- 106 GetItemBySku
samples/cli/sample-apps Platform getItemBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --storeId 'kXffEyVNZWZNVQ0B' \
    --sku 'rLWerCt4F667N1aV' \
    > test.out 2>&1
eval_tap $? 106 'GetItemBySku' test.out

#- 107 GetLocaleItemBySku
samples/cli/sample-apps Platform getLocaleItemBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --language '08GRzIgEQKBA4BXb' \
    --populateBundle 'true' \
    --region '07z1OfdeTELHG3Xc' \
    --storeId 'ro2nRw2DmwmAwXyg' \
    --sku 'tEpuLPi1N7fqLgj9' \
    > test.out 2>&1
eval_tap $? 107 'GetLocaleItemBySku' test.out

#- 108 GetEstimatedPrice
samples/cli/sample-apps Platform getEstimatedPrice \
    --namespace $AB_NAMESPACE \
    --region 'aOsu5bEmLK2poT55' \
    --storeId 'C8ZGU5K9diszIRho' \
    --itemIds 'cR8Qtjl1ShjrhKPE' \
    --userId 'M1XL8WVsx6J9LN08' \
    > test.out 2>&1
eval_tap $? 108 'GetEstimatedPrice' test.out

#- 109 GetItemIdBySku
samples/cli/sample-apps Platform getItemIdBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --storeId 'w9smBu8eo7XWHMuc' \
    --sku 'Ojxh6RR94Uf27hXd' \
    > test.out 2>&1
eval_tap $? 109 'GetItemIdBySku' test.out

#- 110 GetBulkItemIdBySkus
samples/cli/sample-apps Platform getBulkItemIdBySkus \
    --namespace $AB_NAMESPACE \
    --sku '["A3w0o0SAbZZ9sdBU", "I5Zj5FwBgbCvyM3n", "hcw8lKUU4pRYacjf"]' \
    --storeId '5Kp896p5Rm6wpno8' \
    > test.out 2>&1
eval_tap $? 110 'GetBulkItemIdBySkus' test.out

#- 111 BulkGetLocaleItems
samples/cli/sample-apps Platform bulkGetLocaleItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --language 'BTtUIKIJPeY3HF9x' \
    --region 'XkAPPI1A5nCpA4ks' \
    --storeId 'yISXaD3BdrONwTn2' \
    --itemIds '4UXZ016OxSbYs5tG' \
    > test.out 2>&1
eval_tap $? 111 'BulkGetLocaleItems' test.out

#- 112 GetAvailablePredicateTypes
samples/cli/sample-apps Platform getAvailablePredicateTypes \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 112 'GetAvailablePredicateTypes' test.out

#- 113 ValidateItemPurchaseCondition
samples/cli/sample-apps Platform validateItemPurchaseCondition \
    --namespace $AB_NAMESPACE \
    --userId '9vJftl4ovOSVjCIu' \
    --body '{"itemIds": ["a9s8fPWdg5166RSQ", "EaV7F9xpy75lUN6S", "IuhgSBW2QajUVBS5"]}' \
    > test.out 2>&1
eval_tap $? 113 'ValidateItemPurchaseCondition' test.out

#- 114 BulkUpdateRegionData
samples/cli/sample-apps Platform bulkUpdateRegionData \
    --namespace $AB_NAMESPACE \
    --storeId 'iidhCJQ9TN0Zwope' \
    --body '{"changes": [{"itemIdentities": ["4D1IZrZWVSY3faVK", "p3i6o6efpQPTp1gD", "jzp2xwNqe1MveqqU"], "itemIdentityType": "ITEM_ID", "regionData": {"GhsOzzeQmA5kZXRZ": [{"currencyCode": "r2TH51sErHH1JB6l", "currencyNamespace": "ZN7XZRzLJZTDKK8U", "currencyType": "REAL", "discountAmount": 51, "discountExpireAt": "1988-09-17T00:00:00Z", "discountPercentage": 96, "discountPurchaseAt": "1977-04-03T00:00:00Z", "discountedPrice": 41, "expireAt": "1983-06-11T00:00:00Z", "price": 79, "purchaseAt": "1982-06-10T00:00:00Z", "trialPrice": 41}, {"currencyCode": "62PwFIXjTzQEWOky", "currencyNamespace": "7S57Qva36njGhQlz", "currencyType": "VIRTUAL", "discountAmount": 25, "discountExpireAt": "1973-05-22T00:00:00Z", "discountPercentage": 47, "discountPurchaseAt": "1973-02-08T00:00:00Z", "discountedPrice": 58, "expireAt": "1982-11-12T00:00:00Z", "price": 67, "purchaseAt": "1974-10-29T00:00:00Z", "trialPrice": 94}, {"currencyCode": "bJVnWniILG8P4KaI", "currencyNamespace": "0TZUOLKWOdrq9z32", "currencyType": "REAL", "discountAmount": 16, "discountExpireAt": "1984-07-21T00:00:00Z", "discountPercentage": 28, "discountPurchaseAt": "1991-11-05T00:00:00Z", "discountedPrice": 16, "expireAt": "1997-05-16T00:00:00Z", "price": 79, "purchaseAt": "1999-02-21T00:00:00Z", "trialPrice": 29}], "N7Sm5Nc6p82pG04u": [{"currencyCode": "fEchFwprXmNZeyGb", "currencyNamespace": "2FuO6UctP4DyD8kY", "currencyType": "REAL", "discountAmount": 7, "discountExpireAt": "1985-06-27T00:00:00Z", "discountPercentage": 23, "discountPurchaseAt": "1978-08-17T00:00:00Z", "discountedPrice": 16, "expireAt": "1997-06-30T00:00:00Z", "price": 40, "purchaseAt": "1993-03-29T00:00:00Z", "trialPrice": 1}, {"currencyCode": "4QhFk6mwLtQrDCLP", "currencyNamespace": "OczJeTHAm34On8Fk", "currencyType": "REAL", "discountAmount": 83, "discountExpireAt": "1973-11-02T00:00:00Z", "discountPercentage": 1, "discountPurchaseAt": "1984-01-28T00:00:00Z", "discountedPrice": 61, "expireAt": "1989-07-05T00:00:00Z", "price": 71, "purchaseAt": "1984-08-20T00:00:00Z", "trialPrice": 38}, {"currencyCode": "wJjw7ruKwIOKRJyS", "currencyNamespace": "VxaObO5hxZ0MJ9u0", "currencyType": "REAL", "discountAmount": 16, "discountExpireAt": "1980-04-11T00:00:00Z", "discountPercentage": 16, "discountPurchaseAt": "1995-05-14T00:00:00Z", "discountedPrice": 90, "expireAt": "1985-10-05T00:00:00Z", "price": 47, "purchaseAt": "1972-11-27T00:00:00Z", "trialPrice": 69}], "UPmhS7netkLNxJZf": [{"currencyCode": "hARgiadnB0xplp78", "currencyNamespace": "nR3zmzYHMiM5WGSn", "currencyType": "REAL", "discountAmount": 36, "discountExpireAt": "1997-12-05T00:00:00Z", "discountPercentage": 92, "discountPurchaseAt": "1983-02-14T00:00:00Z", "discountedPrice": 92, "expireAt": "1971-08-12T00:00:00Z", "price": 85, "purchaseAt": "1984-12-17T00:00:00Z", "trialPrice": 29}, {"currencyCode": "lTUpFSbnhg8BNCs7", "currencyNamespace": "73utNzRfTkS4Drx7", "currencyType": "REAL", "discountAmount": 44, "discountExpireAt": "1978-11-17T00:00:00Z", "discountPercentage": 60, "discountPurchaseAt": "1988-08-20T00:00:00Z", "discountedPrice": 84, "expireAt": "1982-08-12T00:00:00Z", "price": 87, "purchaseAt": "1982-03-04T00:00:00Z", "trialPrice": 13}, {"currencyCode": "f743Ll8DL0QXnK1O", "currencyNamespace": "KK2sZguriRUQvvjY", "currencyType": "REAL", "discountAmount": 21, "discountExpireAt": "1996-05-06T00:00:00Z", "discountPercentage": 94, "discountPurchaseAt": "1986-06-28T00:00:00Z", "discountedPrice": 46, "expireAt": "1988-06-02T00:00:00Z", "price": 76, "purchaseAt": "1989-11-15T00:00:00Z", "trialPrice": 49}]}}, {"itemIdentities": ["uWr4aM0OBDFFc9mp", "HXklXDL4QcPjD2TM", "tjL3T12EXsN2OHO1"], "itemIdentityType": "ITEM_SKU", "regionData": {"HFaetKILajGvKldo": [{"currencyCode": "5zzdW4VlQpj4Xhnu", "currencyNamespace": "Sd96rXANtVTBtP5U", "currencyType": "VIRTUAL", "discountAmount": 88, "discountExpireAt": "1982-02-01T00:00:00Z", "discountPercentage": 0, "discountPurchaseAt": "1999-09-08T00:00:00Z", "discountedPrice": 68, "expireAt": "1982-12-28T00:00:00Z", "price": 33, "purchaseAt": "1979-09-14T00:00:00Z", "trialPrice": 85}, {"currencyCode": "V9BJd02YhmjHcGvU", "currencyNamespace": "NTjBIZM4Nd6uUOT2", "currencyType": "VIRTUAL", "discountAmount": 42, "discountExpireAt": "1975-12-17T00:00:00Z", "discountPercentage": 55, "discountPurchaseAt": "1981-04-26T00:00:00Z", "discountedPrice": 57, "expireAt": "1990-10-18T00:00:00Z", "price": 89, "purchaseAt": "1982-04-30T00:00:00Z", "trialPrice": 96}, {"currencyCode": "9XUgzxxg5tkcgi9z", "currencyNamespace": "qjvLyXCyuwMQHHli", "currencyType": "REAL", "discountAmount": 52, "discountExpireAt": "1975-01-16T00:00:00Z", "discountPercentage": 36, "discountPurchaseAt": "1972-02-23T00:00:00Z", "discountedPrice": 2, "expireAt": "1993-04-08T00:00:00Z", "price": 44, "purchaseAt": "1976-10-07T00:00:00Z", "trialPrice": 2}], "Ffdg0jyxHv73WrKB": [{"currencyCode": "KIFnIcbtGGDXqbGj", "currencyNamespace": "iLWgGX7KHclXFcFp", "currencyType": "VIRTUAL", "discountAmount": 29, "discountExpireAt": "1974-10-19T00:00:00Z", "discountPercentage": 95, "discountPurchaseAt": "1997-05-26T00:00:00Z", "discountedPrice": 75, "expireAt": "1991-05-30T00:00:00Z", "price": 56, "purchaseAt": "1984-02-11T00:00:00Z", "trialPrice": 30}, {"currencyCode": "N8imqnhF6KMeAhrq", "currencyNamespace": "j0P93HTkVUVpc1Dr", "currencyType": "REAL", "discountAmount": 19, "discountExpireAt": "1997-07-02T00:00:00Z", "discountPercentage": 52, "discountPurchaseAt": "1989-03-18T00:00:00Z", "discountedPrice": 3, "expireAt": "1978-08-14T00:00:00Z", "price": 49, "purchaseAt": "1983-03-13T00:00:00Z", "trialPrice": 77}, {"currencyCode": "gSoSpf5qhPsoINYt", "currencyNamespace": "Yb1VbCoAOX0mkQSZ", "currencyType": "VIRTUAL", "discountAmount": 26, "discountExpireAt": "1991-01-04T00:00:00Z", "discountPercentage": 20, "discountPurchaseAt": "1996-11-27T00:00:00Z", "discountedPrice": 28, "expireAt": "1996-08-20T00:00:00Z", "price": 25, "purchaseAt": "1980-10-15T00:00:00Z", "trialPrice": 24}], "gz2LvH3lCJ6eOC9T": [{"currencyCode": "3gwLSRgrgcxw6Upc", "currencyNamespace": "0wzUX6iVBaARvEHM", "currencyType": "REAL", "discountAmount": 80, "discountExpireAt": "1989-11-15T00:00:00Z", "discountPercentage": 35, "discountPurchaseAt": "1983-05-31T00:00:00Z", "discountedPrice": 45, "expireAt": "1983-05-18T00:00:00Z", "price": 42, "purchaseAt": "1971-06-15T00:00:00Z", "trialPrice": 84}, {"currencyCode": "p0tLtOrZrQlKYgxS", "currencyNamespace": "KD4ooSyGJ00EeOpG", "currencyType": "REAL", "discountAmount": 55, "discountExpireAt": "1975-03-21T00:00:00Z", "discountPercentage": 58, "discountPurchaseAt": "1982-03-08T00:00:00Z", "discountedPrice": 65, "expireAt": "1983-02-08T00:00:00Z", "price": 77, "purchaseAt": "1984-09-15T00:00:00Z", "trialPrice": 74}, {"currencyCode": "0ETZ4gy9QaYPHUie", "currencyNamespace": "OSnBWBBfqZbr8t75", "currencyType": "VIRTUAL", "discountAmount": 86, "discountExpireAt": "1981-05-08T00:00:00Z", "discountPercentage": 22, "discountPurchaseAt": "1986-08-22T00:00:00Z", "discountedPrice": 57, "expireAt": "1973-06-10T00:00:00Z", "price": 72, "purchaseAt": "1972-07-17T00:00:00Z", "trialPrice": 77}]}}, {"itemIdentities": ["UjMGeKnBxg8R9eTN", "7T7XaCPtFiiUMEnW", "v7a9r6dRovfUOxCm"], "itemIdentityType": "ITEM_SKU", "regionData": {"ZIwE2lNDKLGwGgh7": [{"currencyCode": "vqgtAX30NZOGOz5b", "currencyNamespace": "LueHDHNf03coTHSC", "currencyType": "VIRTUAL", "discountAmount": 28, "discountExpireAt": "1974-01-21T00:00:00Z", "discountPercentage": 68, "discountPurchaseAt": "1976-05-17T00:00:00Z", "discountedPrice": 44, "expireAt": "1979-06-22T00:00:00Z", "price": 11, "purchaseAt": "1988-12-23T00:00:00Z", "trialPrice": 43}, {"currencyCode": "4MXBomzrSMDNwHXj", "currencyNamespace": "Oi9g0oT2AbncX3ic", "currencyType": "REAL", "discountAmount": 24, "discountExpireAt": "1989-12-02T00:00:00Z", "discountPercentage": 17, "discountPurchaseAt": "1999-09-14T00:00:00Z", "discountedPrice": 1, "expireAt": "1978-03-05T00:00:00Z", "price": 73, "purchaseAt": "1982-09-26T00:00:00Z", "trialPrice": 40}, {"currencyCode": "d0jiJT4IbfPCeZrI", "currencyNamespace": "K2Jtulentclz3etH", "currencyType": "REAL", "discountAmount": 91, "discountExpireAt": "1995-12-09T00:00:00Z", "discountPercentage": 89, "discountPurchaseAt": "1997-01-22T00:00:00Z", "discountedPrice": 15, "expireAt": "1992-09-03T00:00:00Z", "price": 32, "purchaseAt": "1986-08-19T00:00:00Z", "trialPrice": 15}], "y4lo9HUNUROOmGIq": [{"currencyCode": "wxDiz2oyZvuRJ8Ae", "currencyNamespace": "LGxQMi0JUVkCL2JC", "currencyType": "REAL", "discountAmount": 76, "discountExpireAt": "1992-02-08T00:00:00Z", "discountPercentage": 42, "discountPurchaseAt": "1975-08-21T00:00:00Z", "discountedPrice": 44, "expireAt": "1996-07-20T00:00:00Z", "price": 70, "purchaseAt": "1990-05-05T00:00:00Z", "trialPrice": 93}, {"currencyCode": "eeqzNmqOwIBR8CjH", "currencyNamespace": "oJnbEZ2D3YMAH0Sz", "currencyType": "REAL", "discountAmount": 15, "discountExpireAt": "1988-02-01T00:00:00Z", "discountPercentage": 67, "discountPurchaseAt": "1984-12-15T00:00:00Z", "discountedPrice": 90, "expireAt": "1983-05-23T00:00:00Z", "price": 65, "purchaseAt": "1983-09-23T00:00:00Z", "trialPrice": 71}, {"currencyCode": "otFPLXhkvmjBueBI", "currencyNamespace": "JkF8XW2Iud3UZVbQ", "currencyType": "REAL", "discountAmount": 55, "discountExpireAt": "1985-04-07T00:00:00Z", "discountPercentage": 41, "discountPurchaseAt": "1983-07-30T00:00:00Z", "discountedPrice": 8, "expireAt": "1998-01-17T00:00:00Z", "price": 70, "purchaseAt": "1973-02-05T00:00:00Z", "trialPrice": 67}], "xZJajkaa9QBCrBS5": [{"currencyCode": "jSMNXj3fx9oieQ4b", "currencyNamespace": "wjMmUPCBFRPhOP5k", "currencyType": "VIRTUAL", "discountAmount": 22, "discountExpireAt": "1987-11-23T00:00:00Z", "discountPercentage": 84, "discountPurchaseAt": "1972-02-08T00:00:00Z", "discountedPrice": 48, "expireAt": "1973-05-28T00:00:00Z", "price": 70, "purchaseAt": "1981-01-30T00:00:00Z", "trialPrice": 11}, {"currencyCode": "nSHcNb9CA4q3xrWf", "currencyNamespace": "gpVPMmyKLBNxxmKZ", "currencyType": "VIRTUAL", "discountAmount": 9, "discountExpireAt": "1994-11-15T00:00:00Z", "discountPercentage": 22, "discountPurchaseAt": "1993-02-28T00:00:00Z", "discountedPrice": 65, "expireAt": "1976-03-09T00:00:00Z", "price": 66, "purchaseAt": "1985-06-01T00:00:00Z", "trialPrice": 24}, {"currencyCode": "9c4IWqsYsB2QiRvF", "currencyNamespace": "FxfnbRwoejkgv0Fg", "currencyType": "VIRTUAL", "discountAmount": 6, "discountExpireAt": "1994-08-22T00:00:00Z", "discountPercentage": 91, "discountPurchaseAt": "1996-06-05T00:00:00Z", "discountedPrice": 77, "expireAt": "1988-10-28T00:00:00Z", "price": 86, "purchaseAt": "1983-07-03T00:00:00Z", "trialPrice": 40}]}}]}' \
    > test.out 2>&1
eval_tap $? 114 'BulkUpdateRegionData' test.out

#- 115 SearchItems
samples/cli/sample-apps Platform searchItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --itemType 'BUNDLE' \
    --limit '31' \
    --offset '15' \
    --sortBy 'ltddQFEb33VbYiw0' \
    --storeId 'HZEi0pEsGGw9CBLa' \
    --keyword 'q3LZZjTKX7KTYCiM' \
    --language 'kZ6B7OjWM76h2WUV' \
    > test.out 2>&1
eval_tap $? 115 'SearchItems' test.out

#- 116 QueryUncategorizedItems
samples/cli/sample-apps Platform queryUncategorizedItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --limit '21' \
    --offset '97' \
    --sortBy '["createdAt:desc", "name", "displayOrder:asc"]' \
    --storeId 'otFaxWqOxTWerVgc' \
    > test.out 2>&1
eval_tap $? 116 'QueryUncategorizedItems' test.out

#- 117 GetItem
samples/cli/sample-apps Platform getItem \
    --itemId 'qc2IBW5iLJYCrixY' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'ZStNs2LdjT9XgfsY' \
    > test.out 2>&1
eval_tap $? 117 'GetItem' test.out

#- 118 UpdateItem
samples/cli/sample-apps Platform updateItem \
    --itemId '7x5wvs0ymvrAQaLk' \
    --namespace $AB_NAMESPACE \
    --storeId 'TdjHgW3sAsW5DpBW' \
    --body '{"appId": "YD43dcBFXJTyhMpc", "appType": "DEMO", "baseAppId": "QYpT703yvysrFxrJ", "boothName": "VuUKW5QL81h6GZRS", "categoryPath": "jLNGY6Id8zALepZZ", "clazz": "VaQWKI8fXHrZdteu", "displayOrder": 97, "entitlementType": "CONSUMABLE", "ext": {"ZaHHZ9fbSaVM25Kk": {}, "YB8Z26AJ8mNNVcNJ": {}, "68XFus8jZrGcXgMV": {}}, "features": ["YOM7DjY6R5nzBHfR", "1Kcd9M8atFPyOBXG", "I5PIMfIbrxAgqThV"], "flexible": false, "images": [{"as": "hvROKtpDa7R5PUWL", "caption": "X0RExyDHudmu1yPB", "height": 2, "imageUrl": "jumiT7nnTCsuVuqf", "smallImageUrl": "kVylG6wxdoXdEcYt", "width": 11}, {"as": "D6atgHD2n9ZmoWrF", "caption": "4ziJgVWA3RKn5MZx", "height": 57, "imageUrl": "JW2QitxSBh29fs0W", "smallImageUrl": "usCJjA9bBzjuRat0", "width": 14}, {"as": "lYhA0XNCsYgi2OB8", "caption": "2JzF60jmfdxogAbv", "height": 71, "imageUrl": "qJAaxp6tKuRSHlHT", "smallImageUrl": "vsSCurnDO4CoxgtI", "width": 85}], "itemIds": ["VBhDRGif80MHLfmT", "1TkobDFdDu5dbhVf", "rMB34KZ9P016Rjgs"], "itemQty": {"TudwWtKYeOOdKnmA": 29, "J1kdh6f193H0OOML": 32, "eLrIquYRszVZhgUG": 84}, "itemType": "SEASON", "listable": true, "localizations": {"Py4RSYwuBeeY70Zr": {"description": "u9SmuydkbAfyDZRM", "localExt": {"vllmuiklXaoEtZuO": {}, "QozIAisbj3MlJB6Q": {}, "dkIw8dDEIXDEL5eq": {}}, "longDescription": "yN1znLxn064ymaXc", "title": "l7YGgmXTIldCxmOX"}, "KAV4SgFXECGXovja": {"description": "uE6Ts3DUmSwAJdWl", "localExt": {"ffliTTI76BIwPkjg": {}, "3dvwNvownJmrDLIi": {}, "q0kj4XhGZuvHcRKI": {}}, "longDescription": "j69QV1ZE44QQlUjl", "title": "BnTx8ou50WbcW7lR"}, "y4K56kX9atVRhorz": {"description": "hRvsJtbxTqKmkVjp", "localExt": {"xQjOVM7cf0jyBhbu": {}, "CWjzVcVrCeqbgwPY": {}, "LMpoxyQV9KQs28Tu": {}}, "longDescription": "6hU5gHP3sLSed3Js", "title": "WAHTtUj1Sh5p22EZ"}}, "lootBoxConfig": {"rewardCount": 58, "rewards": [{"lootBoxItems": [{"count": 5, "duration": 24, "endDate": "1983-03-26T00:00:00Z", "itemId": "3pAuQaDmVb0OBZ8g", "itemSku": "uA4iyuGaniaOLvCI", "itemType": "vxfGINJNEmMdcbPD"}, {"count": 34, "duration": 77, "endDate": "1981-09-23T00:00:00Z", "itemId": "MjRj38ES7Tk6wqzN", "itemSku": "mvPJrSUfnKGE52Og", "itemType": "2LsHtsYLMtK2Z3hl"}, {"count": 47, "duration": 81, "endDate": "1995-11-10T00:00:00Z", "itemId": "uxeEPQ8c2p4EZ7bY", "itemSku": "kiSpriTM6pRgqiMO", "itemType": "FR5kAzku9aue8PmD"}], "name": "Zo9BMAcvGAU87jxk", "odds": 0.44135484910406575, "type": "REWARD_GROUP", "weight": 20}, {"lootBoxItems": [{"count": 19, "duration": 2, "endDate": "1987-07-20T00:00:00Z", "itemId": "e1ifKFCHlfL2NSil", "itemSku": "SctZ4VV5m5hEieiS", "itemType": "NDuSKlZKj58Hw5gZ"}, {"count": 39, "duration": 79, "endDate": "1990-09-27T00:00:00Z", "itemId": "eHdKNgWtt7x65OKW", "itemSku": "6xnrSqwwUihiyJMy", "itemType": "cikRFezAQao9IQIl"}, {"count": 50, "duration": 32, "endDate": "1983-07-09T00:00:00Z", "itemId": "lb9pxneRL3VCNNt8", "itemSku": "kYqd0RBuuGhvk4V7", "itemType": "NatVRfFPwLhBKrmC"}], "name": "TsyolxB6EqAvsYZ1", "odds": 0.7873544697611264, "type": "REWARD", "weight": 68}, {"lootBoxItems": [{"count": 84, "duration": 40, "endDate": "1981-11-28T00:00:00Z", "itemId": "FZyueh4vs6ofwLnT", "itemSku": "AEykKL02JrMXlOdA", "itemType": "33vfhGbE4aPCfamN"}, {"count": 49, "duration": 14, "endDate": "1998-08-27T00:00:00Z", "itemId": "wMA7ljPGaTInSuns", "itemSku": "NB8m2gyQLv3KD9gm", "itemType": "dqeZ51Fuqi1pkdmF"}, {"count": 87, "duration": 42, "endDate": "1980-08-29T00:00:00Z", "itemId": "GArgWoz6yGGyUm1x", "itemSku": "UL1RMKC6nAnQhGSd", "itemType": "pwR9PISkbvOGJSDE"}], "name": "EjxLaXEaBLZhqwzH", "odds": 0.18104974717212075, "type": "REWARD_GROUP", "weight": 98}], "rollFunction": "DEFAULT"}, "maxCount": 13, "maxCountPerUser": 89, "name": "NxPMPlekKAzZaBsk", "optionBoxConfig": {"boxItems": [{"count": 73, "duration": 45, "endDate": "1990-12-05T00:00:00Z", "itemId": "AXxAWGRo00JsFGj9", "itemSku": "hPFPfH293TrhhYTq", "itemType": "Tl6uaKkuzyPZVaX4"}, {"count": 12, "duration": 32, "endDate": "1976-04-17T00:00:00Z", "itemId": "LLnemndz3QoL48iW", "itemSku": "XVIS2UgRGTkCANR1", "itemType": "Qme1xR67Yapf60nD"}, {"count": 77, "duration": 96, "endDate": "1977-11-19T00:00:00Z", "itemId": "oombICahlUBx7ShK", "itemSku": "lBE6tYzprdvDoJJX", "itemType": "4oZIVY6ErR6fhLQa"}]}, "purchasable": true, "recurring": {"cycle": "MONTHLY", "fixedFreeDays": 28, "fixedTrialCycles": 76, "graceDays": 62}, "regionData": {"NPHu2jJO8KJdG9LA": [{"currencyCode": "yEGEpw2G9VIoWEGD", "currencyNamespace": "R9GWSPRjvZh9XI5p", "currencyType": "VIRTUAL", "discountAmount": 69, "discountExpireAt": "1992-04-02T00:00:00Z", "discountPercentage": 64, "discountPurchaseAt": "1978-06-15T00:00:00Z", "expireAt": "1997-07-02T00:00:00Z", "price": 32, "purchaseAt": "1974-08-29T00:00:00Z", "trialPrice": 100}, {"currencyCode": "aOnDdkOYKNF4zHlc", "currencyNamespace": "Cgd2MX8jOReMjfOO", "currencyType": "VIRTUAL", "discountAmount": 16, "discountExpireAt": "1987-12-24T00:00:00Z", "discountPercentage": 66, "discountPurchaseAt": "1972-08-10T00:00:00Z", "expireAt": "1986-10-20T00:00:00Z", "price": 99, "purchaseAt": "1988-08-29T00:00:00Z", "trialPrice": 11}, {"currencyCode": "bY7Xb9LySseI1Thb", "currencyNamespace": "Hy0fg06HBB8TQ4RI", "currencyType": "REAL", "discountAmount": 28, "discountExpireAt": "1984-08-06T00:00:00Z", "discountPercentage": 8, "discountPurchaseAt": "1973-10-13T00:00:00Z", "expireAt": "1986-09-26T00:00:00Z", "price": 2, "purchaseAt": "1997-03-07T00:00:00Z", "trialPrice": 75}], "zlaaejfHzpU1zKMx": [{"currencyCode": "at2CUhMGip7wHQZZ", "currencyNamespace": "XvWBw83dcTd42hOS", "currencyType": "VIRTUAL", "discountAmount": 97, "discountExpireAt": "1971-05-19T00:00:00Z", "discountPercentage": 32, "discountPurchaseAt": "1991-11-09T00:00:00Z", "expireAt": "1974-06-25T00:00:00Z", "price": 53, "purchaseAt": "1995-08-07T00:00:00Z", "trialPrice": 14}, {"currencyCode": "q2hnakXa9HmFEqD8", "currencyNamespace": "A60Maumf8EHkfmu2", "currencyType": "VIRTUAL", "discountAmount": 45, "discountExpireAt": "1983-11-17T00:00:00Z", "discountPercentage": 63, "discountPurchaseAt": "1985-05-11T00:00:00Z", "expireAt": "1975-07-01T00:00:00Z", "price": 15, "purchaseAt": "1996-11-22T00:00:00Z", "trialPrice": 63}, {"currencyCode": "9CL3l2YQQsJG0QV6", "currencyNamespace": "E8Hyv07OOwlO76DP", "currencyType": "REAL", "discountAmount": 13, "discountExpireAt": "1971-11-22T00:00:00Z", "discountPercentage": 42, "discountPurchaseAt": "1983-10-12T00:00:00Z", "expireAt": "1983-06-14T00:00:00Z", "price": 71, "purchaseAt": "1998-03-26T00:00:00Z", "trialPrice": 61}], "vxUEIgi9hV85tyas": [{"currencyCode": "yRRMQJQu0S9ijyMQ", "currencyNamespace": "hGerQz76gZASUFrh", "currencyType": "VIRTUAL", "discountAmount": 36, "discountExpireAt": "1995-03-13T00:00:00Z", "discountPercentage": 97, "discountPurchaseAt": "1994-08-22T00:00:00Z", "expireAt": "1985-01-26T00:00:00Z", "price": 72, "purchaseAt": "1996-05-17T00:00:00Z", "trialPrice": 87}, {"currencyCode": "ruVhzeJf8PXGAzRn", "currencyNamespace": "KeLNpvWeTDE3UTUk", "currencyType": "VIRTUAL", "discountAmount": 23, "discountExpireAt": "1985-08-10T00:00:00Z", "discountPercentage": 41, "discountPurchaseAt": "1989-04-15T00:00:00Z", "expireAt": "1981-07-07T00:00:00Z", "price": 11, "purchaseAt": "1988-09-25T00:00:00Z", "trialPrice": 8}, {"currencyCode": "zpY0Xu9dLYWcEqLa", "currencyNamespace": "myVJzMHFiY5StOEN", "currencyType": "VIRTUAL", "discountAmount": 67, "discountExpireAt": "1978-02-17T00:00:00Z", "discountPercentage": 44, "discountPurchaseAt": "1994-10-22T00:00:00Z", "expireAt": "1980-02-16T00:00:00Z", "price": 28, "purchaseAt": "1988-06-16T00:00:00Z", "trialPrice": 67}]}, "saleConfig": {"currencyCode": "1UfFnkNwmFxY2oY8", "price": 21}, "seasonType": "PASS", "sectionExclusive": false, "sellable": false, "sku": "mEA51nBAM1ealVYu", "stackable": false, "status": "ACTIVE", "tags": ["E72a4n2VHb04oNHC", "RXS8wM970fH4Q6Yx", "yxlO7GrtpaA4M9RW"], "targetCurrencyCode": "w5jO2KHi7DbTuPNP", "targetNamespace": "eyzRNwmn1Qqht4N4", "thumbnailUrl": "apklLVJ1OxOUcyZ0", "useCount": 27}' \
    > test.out 2>&1
eval_tap $? 118 'UpdateItem' test.out

#- 119 DeleteItem
samples/cli/sample-apps Platform deleteItem \
    --itemId 'uZsI5wsH3hszgX7j' \
    --namespace $AB_NAMESPACE \
    --force 'true' \
    --storeId 'SjIcHLgvJu1NEwpD' \
    > test.out 2>&1
eval_tap $? 119 'DeleteItem' test.out

#- 120 AcquireItem
samples/cli/sample-apps Platform acquireItem \
    --itemId 'NUImBdbP2nfcV9ST' \
    --namespace $AB_NAMESPACE \
    --body '{"count": 65, "orderNo": "akNJIqUlLi9MGBQA"}' \
    > test.out 2>&1
eval_tap $? 120 'AcquireItem' test.out

#- 121 GetApp
samples/cli/sample-apps Platform getApp \
    --itemId 'U0hWAnIDrOmYegh9' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'gWV03DKk4ip2FKmd' \
    > test.out 2>&1
eval_tap $? 121 'GetApp' test.out

#- 122 UpdateApp
samples/cli/sample-apps Platform updateApp \
    --itemId 'ZjPzHAZ1asUsfqvM' \
    --namespace $AB_NAMESPACE \
    --storeId 'KdjNIod4qb1rckoM' \
    --body '{"carousel": [{"alt": "20RGenjGu2NjpGAo", "previewUrl": "cPAq0bMsXJUY2LA8", "thumbnailUrl": "dHtzcG1PHse1W003", "type": "video", "url": "VZfTpCGYds1SX7K4", "videoSource": "generic"}, {"alt": "AwYwg7fNIOIReHTz", "previewUrl": "3OCUU3N5nDHIdJRy", "thumbnailUrl": "IrxMDBUQV6BadNBR", "type": "image", "url": "wOiq2vrRKfneVmhS", "videoSource": "youtube"}, {"alt": "pD1ukO1EqPAQ6Pc9", "previewUrl": "t0T1msWs7azDZwIa", "thumbnailUrl": "rcfHolURhzUmzgLs", "type": "image", "url": "BZ0kMOgKf3mytFR3", "videoSource": "vimeo"}], "developer": "HhFW986XyQ2uhssV", "forumUrl": "0BAqtZwpBF4ZLbjf", "genres": ["Indie", "FreeToPlay", "FreeToPlay"], "localizations": {"vzJjvdoeLT9upZlR": {"announcement": "o4OgkhNRFc3o350z", "slogan": "UH1YHtOkBsaPudpS"}, "YM3QbeDnQ3YEogN2": {"announcement": "k6KIMo2KjEZHT1cW", "slogan": "lyUcZF9DroqaiF3L"}, "3C5txOsXA5EzLdjW": {"announcement": "wVMYvYEcBGuIXBbR", "slogan": "wfg76N5PHB1gLiHO"}}, "platformRequirements": {"wzM7N91uyOUOd8nL": [{"additionals": "yUCqxiUeGfC2r1q7", "directXVersion": "M0uALsXeJbdOZDDl", "diskSpace": "QDSTwiJDJ5HZs28b", "graphics": "1ivNZQKBQQduLzWp", "label": "4H04jKYMh65xF9Id", "osVersion": "tzAPHelcEXH2MN7s", "processor": "H133MeQIkB9PL31X", "ram": "ymJDcuSvpMxg21me", "soundCard": "TjWuwy3QpoFYQOiM"}, {"additionals": "yXSEg1uGvnOpXPu2", "directXVersion": "bdcRJRbHU6df1WIc", "diskSpace": "PHbpBADNrSWI3Bwy", "graphics": "Cd1WJiOTuSoF7p0i", "label": "u3umYcSK7XPMM9cU", "osVersion": "pyUZrjnkYby5HS73", "processor": "w1LhoDTjJg8sm8BT", "ram": "5k6VCzdwIp4TxN7c", "soundCard": "FQHwcsmubrqeNRvo"}, {"additionals": "wwRc3KsrIgGbZ7ve", "directXVersion": "vMLjJ6d2BOHj4NLZ", "diskSpace": "5cEVENJXOHHRiSax", "graphics": "U8BDvZjTNSzmj4ci", "label": "LnK8xnP5WCjqCxQN", "osVersion": "UhuPhc9KZ0CfcxN1", "processor": "O8hu0Ebg0yWSv2lX", "ram": "c1WVoSOrt7stXGcf", "soundCard": "Jh1NE4CWLrQI9uKc"}], "1VlpMNCLMaTt7hoJ": [{"additionals": "Sb1iuLzh7u5zH2ly", "directXVersion": "72DkncKaBVJg7zJq", "diskSpace": "TJl7xJ0AYfkLjPi7", "graphics": "b20zotom3k6CTajc", "label": "fVcpjp1m6NLexWrw", "osVersion": "CKxqxWpyUzqYK5dI", "processor": "6HdaeIeIurd3cQai", "ram": "mEaoEHkFi2KOQsvS", "soundCard": "YjzwGJ92fYTMIPbt"}, {"additionals": "ildJdx7QzLFEsg88", "directXVersion": "T7LDMBmjKhpIqVkK", "diskSpace": "1n36qNjbWLEU0EgH", "graphics": "TdRwEVhqfeFoqTc0", "label": "rjG1xcFNG8Xs1R3w", "osVersion": "WchY5QYox4MoeSxX", "processor": "Xwn83W9ZCBOVShGr", "ram": "UAkDSAlZrnQ80RB8", "soundCard": "xJyWmYoXRIWstTI5"}, {"additionals": "8XnjPqefSx8v4QEj", "directXVersion": "8vUsMetxQdgZEfrH", "diskSpace": "KkgQkcuLHS0UwdeD", "graphics": "4tXRfeEpF3j7kIkg", "label": "aHQVM9ysTE38lRO3", "osVersion": "ON5tusPQPcVf47Ga", "processor": "y1D2WhTHkVIipqY9", "ram": "eYyhWJ7SJuUOzYPX", "soundCard": "7O5E7wo4Tws6yAuA"}], "fpwYzMqC8ifyRYXh": [{"additionals": "ISVbM5z0OoCmFwtS", "directXVersion": "JLwMqnwqiZP9fGaH", "diskSpace": "yXoq7frTDkKd1CwI", "graphics": "3seIxFreHTxRlKGn", "label": "GRwXifRJGlGFb9Bs", "osVersion": "w1ZH9FGMOL7ehYNb", "processor": "VVn82kv6DUlbi4Au", "ram": "Zzdunk3xzMvHLHo0", "soundCard": "CNaFrbptSyhmtzVC"}, {"additionals": "uW4hruQSrDAdtnV3", "directXVersion": "nG2cCcqLnIjjmCFo", "diskSpace": "rN66EgETAFmhKap7", "graphics": "uGBZbeOUoRuuyLFe", "label": "pdULltVYHuCp4iT4", "osVersion": "lFfOv3VOiIPtNNFi", "processor": "qYlZVAZPxbFlIcgH", "ram": "5c7NLtR2hpHknshr", "soundCard": "BNQhpAD8fE5O5eiW"}, {"additionals": "wbngNmh9nRdaiBxE", "directXVersion": "lE8nVwijvpoW3gQa", "diskSpace": "Azr6JjuhwYjcAVfm", "graphics": "pJojrJrjFdLDwLy2", "label": "ih2Z0po2hXaaW3km", "osVersion": "cSPmcqaqziMGWi8t", "processor": "zLtERXigaoLEv7w5", "ram": "zewhjmQfMht5eSua", "soundCard": "bRvtgccmrcVjYNRu"}]}, "platforms": ["Android", "MacOS", "Android"], "players": ["Single", "MMO", "MMO"], "primaryGenre": "Indie", "publisher": "BgWkAulX6X67SB2t", "releaseDate": "1983-11-23T00:00:00Z", "websiteUrl": "2JWklypfSRDSH5ZG"}' \
    > test.out 2>&1
eval_tap $? 122 'UpdateApp' test.out

#- 123 DisableItem
samples/cli/sample-apps Platform disableItem \
    --itemId 'dPB985RvSYVyYodT' \
    --namespace $AB_NAMESPACE \
    --storeId '95Q4BQj1ffE30ANW' \
    > test.out 2>&1
eval_tap $? 123 'DisableItem' test.out

#- 124 GetItemDynamicData
samples/cli/sample-apps Platform getItemDynamicData \
    --itemId '0bV8dluOENedsUbn' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 124 'GetItemDynamicData' test.out

#- 125 EnableItem
samples/cli/sample-apps Platform enableItem \
    --itemId 'v5YAR9aL5r39KW0v' \
    --namespace $AB_NAMESPACE \
    --storeId 'CICgbc8VXmawWrnj' \
    > test.out 2>&1
eval_tap $? 125 'EnableItem' test.out

#- 126 FeatureItem
samples/cli/sample-apps Platform featureItem \
    --feature '5FBKceobAl4sgJU7' \
    --itemId 'wkchNk6iurdHjaq2' \
    --namespace $AB_NAMESPACE \
    --storeId 'O1O7J0lWyYFzXjhK' \
    > test.out 2>&1
eval_tap $? 126 'FeatureItem' test.out

#- 127 DefeatureItem
samples/cli/sample-apps Platform defeatureItem \
    --feature 'r7lmOb8KAcdx22BU' \
    --itemId 'p0nlTBprr52eQN9e' \
    --namespace $AB_NAMESPACE \
    --storeId 'by8c3DhBN3vd5bhq' \
    > test.out 2>&1
eval_tap $? 127 'DefeatureItem' test.out

#- 128 GetLocaleItem
samples/cli/sample-apps Platform getLocaleItem \
    --itemId 'XxQ8UjraChXivoEE' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --language 'TdyTWvpjjnGRdg8w' \
    --populateBundle 'false' \
    --region 'LWIL2q8J31URhf2O' \
    --storeId 'rXbgx4Pd7uOBj2Z2' \
    > test.out 2>&1
eval_tap $? 128 'GetLocaleItem' test.out

#- 129 UpdateItemPurchaseCondition
samples/cli/sample-apps Platform updateItemPurchaseCondition \
    --itemId 'LPUYjd3wAPxqzLcT' \
    --namespace $AB_NAMESPACE \
    --storeId 'QvgGetCEPNZ3ls0N' \
    --body '{"purchaseCondition": {"conditionGroups": [{"operator": "and", "predicates": [{"anyOf": 36, "comparison": "isLessThan", "name": "RlMDu6f1kJur0w0F", "predicateType": "EntitlementPredicate", "value": "uUvqeiYDUeIMg4dW", "values": ["ljIl4hPPy6c0YRAr", "TbF2uUZgRk5mw6Ue", "bYaQkMLrkrwMMmTr"]}, {"anyOf": 32, "comparison": "includes", "name": "vT77EOkWzMgaE6hw", "predicateType": "EntitlementPredicate", "value": "5VXA06aQEoEql4bz", "values": ["1x3cZGl1nRDr40Go", "Osd3iu2jjCquv8MV", "t0myKomgo91ftWfB"]}, {"anyOf": 43, "comparison": "isGreaterThan", "name": "Qs6qLHAvsefqNjWF", "predicateType": "SeasonTierPredicate", "value": "SDujO27y7Bp0vgxz", "values": ["OWG7XY2ephTMfpMP", "POP9he45cGhJBRTe", "VezDy3DSS0csnqQf"]}]}, {"operator": "and", "predicates": [{"anyOf": 72, "comparison": "isNot", "name": "6LEmXMiFOTFULD5i", "predicateType": "EntitlementPredicate", "value": "PoQ9U8vLj2Ybc1u9", "values": ["L7zz7sV2lnvrnRUh", "clMN98lggMNDUouk", "HHeYko3f0otO7eMT"]}, {"anyOf": 10, "comparison": "is", "name": "cC3NA5gjiPT3stnm", "predicateType": "SeasonPassPredicate", "value": "02lHUiAJcMOF6Mv3", "values": ["hP6JWhNh9bQRolMY", "7wK0TdPsdyTZh01i", "DPhAaC3I8JfVAQtW"]}, {"anyOf": 31, "comparison": "isGreaterThan", "name": "vOyVSQ3ZXFqCXsvz", "predicateType": "SeasonPassPredicate", "value": "4bvlvAr1nNnxxmdZ", "values": ["LoONXKGdyrLHqZTm", "bEF7DKTymRcFhxDW", "QTK5DGWOoBaYXxYx"]}]}, {"operator": "and", "predicates": [{"anyOf": 79, "comparison": "isLessThanOrEqual", "name": "WX2ikdbLSFEL8KU9", "predicateType": "SeasonTierPredicate", "value": "eFBKMGQs3FOuF05i", "values": ["qslt5GGtszgSgNw7", "RvNCqDvq8wNduW2E", "TN5AqewjoKTAgJ3w"]}, {"anyOf": 66, "comparison": "isNot", "name": "CkjnunEO122OeblR", "predicateType": "EntitlementPredicate", "value": "6nqIIWjL1F8DWlCe", "values": ["5w1p9JTl1esdBU1n", "Zfu3T3OLvUe4dLV2", "vAyMyt3Fj1Z1SuId"]}, {"anyOf": 29, "comparison": "isGreaterThanOrEqual", "name": "X2WUJW6O2MixeytL", "predicateType": "EntitlementPredicate", "value": "ixdOlyopYuTpTckT", "values": ["AbctomeYopZyUIbt", "wbNNUViZua7ELJlC", "rslurTsY0FeoV0N3"]}]}]}}' \
    > test.out 2>&1
eval_tap $? 129 'UpdateItemPurchaseCondition' test.out

#- 130 ReturnItem
samples/cli/sample-apps Platform returnItem \
    --itemId 'FyqU3mNEzskzJajY' \
    --namespace $AB_NAMESPACE \
    --body '{"orderNo": "tg21WHxYIXdOGGhr"}' \
    > test.out 2>&1
eval_tap $? 130 'ReturnItem' test.out

#- 131 QueryKeyGroups
samples/cli/sample-apps Platform queryKeyGroups \
    --namespace $AB_NAMESPACE \
    --limit '38' \
    --name 'f0A401cB5QEBztiq' \
    --offset '72' \
    --tag 'Olpx30LVBuRKv7tr' \
    > test.out 2>&1
eval_tap $? 131 'QueryKeyGroups' test.out

#- 132 CreateKeyGroup
samples/cli/sample-apps Platform createKeyGroup \
    --namespace $AB_NAMESPACE \
    --body '{"description": "jqUe1xZAPBQa5tZn", "name": "1TDyvSLBSeSNamIQ", "status": "INACTIVE", "tags": ["acQ8rpEllgCBEWw0", "9CdvmE8H6UGd17Ug", "MHKEjzT6V16vfDus"]}' \
    > test.out 2>&1
eval_tap $? 132 'CreateKeyGroup' test.out

#- 133 GetKeyGroupByBoothName
eval_tap 0 133 'GetKeyGroupByBoothName # SKIP deprecated' test.out

#- 134 GetKeyGroup
samples/cli/sample-apps Platform getKeyGroup \
    --keyGroupId 'POPbeAhm2QIINfxC' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 134 'GetKeyGroup' test.out

#- 135 UpdateKeyGroup
samples/cli/sample-apps Platform updateKeyGroup \
    --keyGroupId 'TTTRekzbPiR3Kztl' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "hftCtAFRiVajVG7P", "name": "crKmnJALp9JbAtGV", "status": "ACTIVE", "tags": ["IWZICCucceM76Pf5", "6tXuBcUocqtPnZPD", "rkQizqfWcU6Pou7H"]}' \
    > test.out 2>&1
eval_tap $? 135 'UpdateKeyGroup' test.out

#- 136 GetKeyGroupDynamic
samples/cli/sample-apps Platform getKeyGroupDynamic \
    --keyGroupId '2BiYYFmce8Rl11zv' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 136 'GetKeyGroupDynamic' test.out

#- 137 ListKeys
samples/cli/sample-apps Platform listKeys \
    --keyGroupId '01GpWJ4H2M2XsC2j' \
    --namespace $AB_NAMESPACE \
    --limit '24' \
    --offset '94' \
    --status 'ACQUIRED' \
    > test.out 2>&1
eval_tap $? 137 'ListKeys' test.out

#- 138 UploadKeys
samples/cli/sample-apps Platform uploadKeys \
    --keyGroupId 'i9AhOHmIvpGqK8Jo' \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 138 'UploadKeys' test.out

#- 139 QueryOrders
samples/cli/sample-apps Platform queryOrders \
    --namespace $AB_NAMESPACE \
    --endTime 'AZT3JazWQdl6Mjp5' \
    --limit '1' \
    --offset '10' \
    --orderNos '["A5sKKLfZH9r3uLkN", "iqee08kZ8b8gSJE0", "1pHdtKe4DBo0Ku9y"]' \
    --sortBy '2eD3I1C8ylugRZLJ' \
    --startTime 'E870RExyLEr8xHx8' \
    --status 'DELETED' \
    --withTotal 'false' \
    > test.out 2>&1
eval_tap $? 139 'QueryOrders' test.out

#- 140 GetOrderStatistics
samples/cli/sample-apps Platform getOrderStatistics \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 140 'GetOrderStatistics' test.out

#- 141 GetOrder
samples/cli/sample-apps Platform getOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'BbJa6quIJk0Gsd2O' \
    > test.out 2>&1
eval_tap $? 141 'GetOrder' test.out

#- 142 RefundOrder
samples/cli/sample-apps Platform refundOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'UQ184JGQMjcWtUHS' \
    --body '{"description": "Elj18rfGd868G5dg"}' \
    > test.out 2>&1
eval_tap $? 142 'RefundOrder' test.out

#- 143 GetPaymentCallbackConfig
samples/cli/sample-apps Platform getPaymentCallbackConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 143 'GetPaymentCallbackConfig' test.out

#- 144 UpdatePaymentCallbackConfig
samples/cli/sample-apps Platform updatePaymentCallbackConfig \
    --namespace $AB_NAMESPACE \
    --body '{"dryRun": true, "notifyUrl": "yjS2TDxUnUKNsdxY", "privateKey": "1LiawNBgWmvhiK6C"}' \
    > test.out 2>&1
eval_tap $? 144 'UpdatePaymentCallbackConfig' test.out

#- 145 QueryPaymentNotifications
samples/cli/sample-apps Platform queryPaymentNotifications \
    --namespace $AB_NAMESPACE \
    --endDate 'sPqg6yxI6IVXhvXS' \
    --externalId 'vfSdprUMXLsjK02N' \
    --limit '100' \
    --notificationSource 'CHECKOUT' \
    --notificationType '6WIGg6ickY5RObPC' \
    --offset '56' \
    --paymentOrderNo 'B5cylxc6XfyyLcru' \
    --startDate 'tEhA6qS28s1DvNPJ' \
    --status 'WARN' \
    > test.out 2>&1
eval_tap $? 145 'QueryPaymentNotifications' test.out

#- 146 QueryPaymentOrders
samples/cli/sample-apps Platform queryPaymentOrders \
    --namespace $AB_NAMESPACE \
    --channel 'INTERNAL' \
    --extTxId '4FzTOHq4r4OFuskz' \
    --limit '24' \
    --offset '98' \
    --status 'REQUEST_FOR_INFORMATION' \
    > test.out 2>&1
eval_tap $? 146 'QueryPaymentOrders' test.out

#- 147 CreatePaymentOrderByDedicated
samples/cli/sample-apps Platform createPaymentOrderByDedicated \
    --namespace $AB_NAMESPACE \
    --body '{"currencyCode": "VJCg7fIHLdIx2k9U", "currencyNamespace": "0ToGEZJ7hysqSkbI", "customParameters": {"2Mp9L9wvYUdpMdSN": {}, "PeSd4NVCUkvCZ741": {}, "NLEPCptOu0uBfpFg": {}}, "description": "qtDhUGridW7IrUNw", "extOrderNo": "SyWkSXkdK6KQEtmd", "extUserId": "RnmmM975vkaPn8nv", "itemType": "INGAMEITEM", "language": "Vl-gPgN-625", "metadata": {"Pu0vvMne4s0JxPvW": "LJL3ouvyCpGvbFAe", "dS2XXlvUVUQzwXsm": "0E0760KiacNUWxeK", "Mf2LfiAl5oJcEq5V": "m9sky5C8GirTVQti"}, "notifyUrl": "QiY0BvUQjsuYGiVK", "omitNotification": true, "platform": "ubnBOXRW6jmB2ebh", "price": 17, "recurringPaymentOrderNo": "4FwlLonBHf7xiPZT", "region": "tJudQBzx511vEhj2", "returnUrl": "bVEJSK4EhGk75yz5", "sandbox": false, "sku": "mU3WHD9AoPHVQL8W", "subscriptionId": "uEi1MpRYLcXSahTz", "targetNamespace": "FWsL8DVLYcCcK1pf", "targetUserId": "I6AQrwCMDZZCJ3PB", "title": "2ylFjBj4XhUJuqaK"}' \
    > test.out 2>&1
eval_tap $? 147 'CreatePaymentOrderByDedicated' test.out

#- 148 ListExtOrderNoByExtTxId
samples/cli/sample-apps Platform listExtOrderNoByExtTxId \
    --namespace $AB_NAMESPACE \
    --extTxId 'j6dVtTmmFfvu3aaB' \
    > test.out 2>&1
eval_tap $? 148 'ListExtOrderNoByExtTxId' test.out

#- 149 GetPaymentOrder
samples/cli/sample-apps Platform getPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo '8BVOlsHhKms1bjEu' \
    > test.out 2>&1
eval_tap $? 149 'GetPaymentOrder' test.out

#- 150 ChargePaymentOrder
samples/cli/sample-apps Platform chargePaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'B8fsjbUlv1htpkI2' \
    --body '{"extTxId": "FnF9CjVp8nJYadbk", "paymentMethod": "3QD3GFtm9ARYHaDl", "paymentProvider": "ALIPAY"}' \
    > test.out 2>&1
eval_tap $? 150 'ChargePaymentOrder' test.out

#- 151 RefundPaymentOrderByDedicated
samples/cli/sample-apps Platform refundPaymentOrderByDedicated \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'CypOiBwqx7colG22' \
    --body '{"description": "kyh35DlGZl7WEq2H"}' \
    > test.out 2>&1
eval_tap $? 151 'RefundPaymentOrderByDedicated' test.out

#- 152 SimulatePaymentOrderNotification
samples/cli/sample-apps Platform simulatePaymentOrderNotification \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'Bhfuvz6PVqMlvRGM' \
    --body '{"amount": 60, "currencyCode": "UrLoj93ypjIIAKNP", "notifyType": "REFUND", "paymentProvider": "CHECKOUT", "salesTax": 50, "vat": 10}' \
    > test.out 2>&1
eval_tap $? 152 'SimulatePaymentOrderNotification' test.out

#- 153 GetPaymentOrderChargeStatus
samples/cli/sample-apps Platform getPaymentOrderChargeStatus \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'W4eGBGxYozhVacMD' \
    > test.out 2>&1
eval_tap $? 153 'GetPaymentOrderChargeStatus' test.out

#- 154 GetPlatformWalletConfig
samples/cli/sample-apps Platform getPlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Nintendo' \
    > test.out 2>&1
eval_tap $? 154 'GetPlatformWalletConfig' test.out

#- 155 UpdatePlatformWalletConfig
samples/cli/sample-apps Platform updatePlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'GooglePlay' \
    --body '{"allowedBalanceOrigins": ["IOS", "Epic", "Steam"]}' \
    > test.out 2>&1
eval_tap $? 155 'UpdatePlatformWalletConfig' test.out

#- 156 ResetPlatformWalletConfig
samples/cli/sample-apps Platform resetPlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Playstation' \
    > test.out 2>&1
eval_tap $? 156 'ResetPlatformWalletConfig' test.out

#- 157 GetRevocationConfig
samples/cli/sample-apps Platform getRevocationConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 157 'GetRevocationConfig' test.out

#- 158 UpdateRevocationConfig
samples/cli/sample-apps Platform updateRevocationConfig \
    --namespace $AB_NAMESPACE \
    --body '{"entitlement": {"consumable": {"enabled": false, "strategy": "REVOKE_OR_REPORT"}, "durable": {"enabled": false, "strategy": "REVOKE_OR_REPORT"}}, "wallet": {"enabled": false, "strategy": "REVOKE_OR_REPORT"}}' \
    > test.out 2>&1
eval_tap $? 158 'UpdateRevocationConfig' test.out

#- 159 DeleteRevocationConfig
samples/cli/sample-apps Platform deleteRevocationConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 159 'DeleteRevocationConfig' test.out

#- 160 QueryRevocationHistories
samples/cli/sample-apps Platform queryRevocationHistories \
    --namespace $AB_NAMESPACE \
    --endTime 'exUCipaGpDaruu5A' \
    --limit '21' \
    --offset '79' \
    --source 'DLC' \
    --startTime 'FR5BInkn9t7j6gAB' \
    --status 'FAIL' \
    --transactionId 'AMyFJhByL1zDOUYp' \
    --userId 'u9kX1idWGtoAkQAE' \
    > test.out 2>&1
eval_tap $? 160 'QueryRevocationHistories' test.out

#- 161 GetRevocationPluginConfig
samples/cli/sample-apps Platform getRevocationPluginConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 161 'GetRevocationPluginConfig' test.out

#- 162 UpdateRevocationPluginConfig
samples/cli/sample-apps Platform updateRevocationPluginConfig \
    --namespace $AB_NAMESPACE \
    --body '{"appConfig": {"appName": "TEWVvvJF3pytK1Lm"}, "customConfig": {"connectionType": "INSECURE", "grpcServerAddress": "twfSugOsuwLf0nPW"}, "extendType": "APP"}' \
    > test.out 2>&1
eval_tap $? 162 'UpdateRevocationPluginConfig' test.out

#- 163 DeleteRevocationPluginConfig
samples/cli/sample-apps Platform deleteRevocationPluginConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 163 'DeleteRevocationPluginConfig' test.out

#- 164 UploadRevocationPluginConfigCert
samples/cli/sample-apps Platform uploadRevocationPluginConfigCert \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 164 'UploadRevocationPluginConfigCert' test.out

#- 165 CreateReward
samples/cli/sample-apps Platform createReward \
    --namespace $AB_NAMESPACE \
    --body '{"description": "DFhMUP2t3oF8Fu7t", "eventTopic": "JkTAJiZDboD3PdBN", "maxAwarded": 43, "maxAwardedPerUser": 75, "namespaceExpression": "SE4BenBVfo6TBWvH", "rewardCode": "VFRmokDtRtkJ1ib2", "rewardConditions": [{"condition": "UNBYuQpfDKL41iJa", "conditionName": "Sf44ajeJ38G9AtzD", "eventName": "H8f80MeBXmyJFQF6", "rewardItems": [{"duration": 61, "endDate": "1975-12-07T00:00:00Z", "itemId": "lE6kFn0f928Unlf4", "quantity": 31}, {"duration": 16, "endDate": "1999-05-06T00:00:00Z", "itemId": "Gp38bRchNhEeyjnu", "quantity": 9}, {"duration": 85, "endDate": "1974-09-29T00:00:00Z", "itemId": "KLWrRPZl9UvQg4xQ", "quantity": 10}]}, {"condition": "t52pLSGf7WwtTTO1", "conditionName": "QGIdZCZZkTLSNOLe", "eventName": "eT2CWMNwRJ2lV99d", "rewardItems": [{"duration": 37, "endDate": "1990-10-14T00:00:00Z", "itemId": "kC8AQRocaVMzLY8b", "quantity": 5}, {"duration": 59, "endDate": "1996-08-05T00:00:00Z", "itemId": "f11wbGyUzOGsvdWu", "quantity": 54}, {"duration": 65, "endDate": "1976-08-22T00:00:00Z", "itemId": "9J03RqLx9ZdQfnCM", "quantity": 32}]}, {"condition": "fxpJ2Ma1VA8Peijz", "conditionName": "W0hPk8s7oDf96DEC", "eventName": "8pX5IbY8WHs4inN3", "rewardItems": [{"duration": 39, "endDate": "1981-01-03T00:00:00Z", "itemId": "ywzodez876cWYkK0", "quantity": 64}, {"duration": 90, "endDate": "1985-09-09T00:00:00Z", "itemId": "SRRyV6glZI0IlKNi", "quantity": 20}, {"duration": 9, "endDate": "1983-03-11T00:00:00Z", "itemId": "adiMcmCpnO5W9zny", "quantity": 61}]}], "userIdExpression": "sRQxGWS7eDiPoTwd"}' \
    > test.out 2>&1
eval_tap $? 165 'CreateReward' test.out

#- 166 QueryRewards
samples/cli/sample-apps Platform queryRewards \
    --namespace $AB_NAMESPACE \
    --eventTopic 'aVxqMsymmpZuDCYA' \
    --limit '28' \
    --offset '38' \
    --sortBy '["rewardCode:desc", "namespace:desc", "rewardCode:asc"]' \
    > test.out 2>&1
eval_tap $? 166 'QueryRewards' test.out

#- 167 ExportRewards
samples/cli/sample-apps Platform exportRewards \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 167 'ExportRewards' test.out

#- 168 ImportRewards
samples/cli/sample-apps Platform importRewards \
    --namespace $AB_NAMESPACE \
    --replaceExisting 'false' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 168 'ImportRewards' test.out

#- 169 GetReward
samples/cli/sample-apps Platform getReward \
    --namespace $AB_NAMESPACE \
    --rewardId 'Vza564RxuPtKHB44' \
    > test.out 2>&1
eval_tap $? 169 'GetReward' test.out

#- 170 UpdateReward
samples/cli/sample-apps Platform updateReward \
    --namespace $AB_NAMESPACE \
    --rewardId '9kQBPOpLxySvq2Re' \
    --body '{"description": "xnVttJsvsNJCSY2C", "eventTopic": "sRniNGiXLZNuWLhy", "maxAwarded": 67, "maxAwardedPerUser": 26, "namespaceExpression": "tAhbBdpfaUO4gFls", "rewardCode": "lLM7D3IhblqbIt5C", "rewardConditions": [{"condition": "r0Oubn5o76K95BUl", "conditionName": "2kJQAGsLHdiBI78B", "eventName": "hkDlf8FxVULIuFKm", "rewardItems": [{"duration": 3, "endDate": "1990-09-23T00:00:00Z", "itemId": "TcO5Ad5jvfYAeFQ2", "quantity": 92}, {"duration": 24, "endDate": "1977-12-31T00:00:00Z", "itemId": "LXIzt7b55BRrTrp6", "quantity": 85}, {"duration": 42, "endDate": "1975-02-23T00:00:00Z", "itemId": "qDoeububyKfRPXcj", "quantity": 44}]}, {"condition": "yarnI0zLBBDpD4dN", "conditionName": "UPmj9IkoIk4mJrCs", "eventName": "6mBEvsfikNgUmONS", "rewardItems": [{"duration": 31, "endDate": "1976-11-15T00:00:00Z", "itemId": "vwdPXV9JdbwgKrTk", "quantity": 36}, {"duration": 53, "endDate": "1986-04-21T00:00:00Z", "itemId": "aj1dqNrBCdYatV3O", "quantity": 67}, {"duration": 80, "endDate": "1984-02-03T00:00:00Z", "itemId": "8O03Hc5iMbgDUQci", "quantity": 57}]}, {"condition": "bb873nIBQgjF96bl", "conditionName": "hyI4RBuc66aguYa1", "eventName": "Hje2hw4fnxoT4SWr", "rewardItems": [{"duration": 69, "endDate": "1987-09-10T00:00:00Z", "itemId": "Ymy757yhKTI1JhVO", "quantity": 8}, {"duration": 11, "endDate": "1988-08-15T00:00:00Z", "itemId": "nQehKxxSjMF2QzqW", "quantity": 38}, {"duration": 92, "endDate": "1986-06-19T00:00:00Z", "itemId": "BDFw9lT5wiqXgkYY", "quantity": 32}]}], "userIdExpression": "KH8STUGrHq7YXjLT"}' \
    > test.out 2>&1
eval_tap $? 170 'UpdateReward' test.out

#- 171 DeleteReward
samples/cli/sample-apps Platform deleteReward \
    --namespace $AB_NAMESPACE \
    --rewardId 'vmMZ7r22feFYBcMD' \
    > test.out 2>&1
eval_tap $? 171 'DeleteReward' test.out

#- 172 CheckEventCondition
samples/cli/sample-apps Platform checkEventCondition \
    --namespace $AB_NAMESPACE \
    --rewardId 'SJG5iDUp1Ea1lSVF' \
    --body '{"payload": {"SDzFgUEKzqd7pLsF": {}, "j76E2jXXWaGmUfC9": {}, "IZvrfNuNzQxXllxc": {}}}' \
    > test.out 2>&1
eval_tap $? 172 'CheckEventCondition' test.out

#- 173 DeleteRewardConditionRecord
samples/cli/sample-apps Platform deleteRewardConditionRecord \
    --namespace $AB_NAMESPACE \
    --rewardId 'ni498juxj4PcsQlq' \
    --body '{"conditionName": "5rZM7LT8IbTrS5D8", "userId": "YCdNH50mBmLifJsA"}' \
    > test.out 2>&1
eval_tap $? 173 'DeleteRewardConditionRecord' test.out

#- 174 QuerySections
samples/cli/sample-apps Platform querySections \
    --namespace $AB_NAMESPACE \
    --end 'WngVU08Ko1zkd1Ub' \
    --limit '22' \
    --offset '48' \
    --start '6XXXzQD8jxBSJrP2' \
    --storeId 'nc851hR9IdEGbS3A' \
    --viewId 'qMFD7kBmwpSGgxNl' \
    > test.out 2>&1
eval_tap $? 174 'QuerySections' test.out

#- 175 CreateSection
samples/cli/sample-apps Platform createSection \
    --namespace $AB_NAMESPACE \
    --storeId 'nl0KPvnVuYC9YEuO' \
    --body '{"active": true, "displayOrder": 55, "endDate": "1999-05-22T00:00:00Z", "ext": {"PqOBVoxkLwQlNuDE": {}, "rJIyxWjY2BzjzbKq": {}, "iKw2S2M1X6bEMccg": {}}, "fixedPeriodRotationConfig": {"backfillType": "CUSTOM", "duration": 51, "itemCount": 23, "rule": "SEQUENCE"}, "items": [{"id": "7WmBXkCiLZFnyyNC", "sku": "1W1oGijy7ugtRztb"}, {"id": "0HZ1DgrhBiNU7IqH", "sku": "PCaLJnuHqWOowRsw"}, {"id": "2YQ3DYoVg4QX6d7x", "sku": "FGbPUqcqPvE0FAhz"}], "localizations": {"ugjzatXBUzOeo1FF": {"description": "Cwcupu6SKYbnuaWU", "localExt": {"AmoWqx9OPHUaiTjS": {}, "buOb682ma3BZbJsI": {}, "mxhYBq6fEE8nq5qt": {}}, "longDescription": "QA2qWn7JmTsQGrSI", "title": "Oa4HVDQ7iOvXCrIE"}, "dHoPBvJbaEbbLKtw": {"description": "KWR8YLSgpA6vtHGO", "localExt": {"d3ydpqbp1uOBqo4e": {}, "tJocUEMC4UMs1NM4": {}, "5KsSFvBktTD7ajp3": {}}, "longDescription": "xxqNqBWvGyZ0HLQA", "title": "ter8Tk4qPk2raVbx"}, "vTDqfByotPc3ukLL": {"description": "MElcsfmT3hVoby80", "localExt": {"kHMjKZMKxMCx2uyv": {}, "dxhFVuhrBj0ZC8cT": {}, "sJFGhhWhKJOcMXwO": {}}, "longDescription": "IjTvLRINK3sdBXjj", "title": "5NY4ePVw5UOrr6zV"}}, "name": "wPQVq1yDw40jYHLm", "rotationType": "NONE", "startDate": "1983-11-08T00:00:00Z", "viewId": "bAum9FEMy0YVhENp"}' \
    > test.out 2>&1
eval_tap $? 175 'CreateSection' test.out

#- 176 PurgeExpiredSection
samples/cli/sample-apps Platform purgeExpiredSection \
    --namespace $AB_NAMESPACE \
    --storeId 'mHsdCsp8NjzhCTMe' \
    > test.out 2>&1
eval_tap $? 176 'PurgeExpiredSection' test.out

#- 177 GetSection
samples/cli/sample-apps Platform getSection \
    --namespace $AB_NAMESPACE \
    --sectionId 'hun8BaTNoEjUbYjR' \
    --storeId '4hGTPlOCCde3BBcs' \
    > test.out 2>&1
eval_tap $? 177 'GetSection' test.out

#- 178 UpdateSection
samples/cli/sample-apps Platform updateSection \
    --namespace $AB_NAMESPACE \
    --sectionId 'kQ22irvZwpdWWbIE' \
    --storeId 'Iz3VPP0qD4gFCcnB' \
    --body '{"active": false, "displayOrder": 96, "endDate": "1984-08-31T00:00:00Z", "ext": {"UstZIcvwQifFmcfO": {}, "FB66dpjni7ZlnsI7": {}, "1QQmB8fhWi3NskOc": {}}, "fixedPeriodRotationConfig": {"backfillType": "CUSTOM", "duration": 18, "itemCount": 73, "rule": "SEQUENCE"}, "items": [{"id": "M5b7yXHwQuezMxvN", "sku": "tGNB5wZSqgX4dlqd"}, {"id": "6whpKP9uP1Y85Xjn", "sku": "mb6nqhlLBoMMA8dK"}, {"id": "HyMCm4g2bVzbJwbk", "sku": "0OM4wQ5JhxZROrld"}], "localizations": {"yWQMswKw7Sj0ubms": {"description": "k6vDdEXfGP91zOS7", "localExt": {"oCv4YomWyLNeY6Bh": {}, "wgzvje10Ze5fcl80": {}, "GBb13ayd39qapjHd": {}}, "longDescription": "oqpOYCGJEQtklsJg", "title": "UW6NoSZRaxm37uwG"}, "3IklKtiqDnWBh4P1": {"description": "tGOyj2IdY53zyMPQ", "localExt": {"HTus25GJOqUfhCtQ": {}, "BgPVrpHHVLXH9Wrk": {}, "8lvTOecYnQDZnqxP": {}}, "longDescription": "ySlaDjFoaBh3CAYL", "title": "s61yusaC6W1dPoPF"}, "iER6uBTiF7HnmXaC": {"description": "LhbFYhepgXISuUYW", "localExt": {"0r5orlPrQ0FvfoPm": {}, "b3AaAPDBOqkWCFFA": {}, "n5rLHnieO1zTnBjI": {}}, "longDescription": "zWBXcUEIfTT8a6Re", "title": "TSpKgJ5nUYKcEAW7"}}, "name": "zRSQiL9VhXu2G5iA", "rotationType": "NONE", "startDate": "1999-09-04T00:00:00Z", "viewId": "IEQpMDfEoR62Xd3B"}' \
    > test.out 2>&1
eval_tap $? 178 'UpdateSection' test.out

#- 179 DeleteSection
samples/cli/sample-apps Platform deleteSection \
    --namespace $AB_NAMESPACE \
    --sectionId 'Bib0KAIowlLvmClk' \
    --storeId 'mXUouGkxlIw8MD9H' \
    > test.out 2>&1
eval_tap $? 179 'DeleteSection' test.out

#- 180 ListStores
samples/cli/sample-apps Platform listStores \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 180 'ListStores' test.out

#- 181 CreateStore
samples/cli/sample-apps Platform createStore \
    --namespace $AB_NAMESPACE \
    --body '{"defaultLanguage": "upZhjmEFlE2aEr6Q", "defaultRegion": "jWETskwRNgXhIL7t", "description": "iyeOhLLQcEKkAwba", "supportedLanguages": ["c9HZER6YoF2k2DAt", "7BWRJj8uTdIRhSPJ", "KOfNh3zKaKFSjIvi"], "supportedRegions": ["IeCAptdpv7TgIi7L", "qqebgp6Qw7lQhOrf", "N3oSCWEiCMSnSb9c"], "title": "0I1hdS8NstvRQXj4"}' \
    > test.out 2>&1
eval_tap $? 181 'CreateStore' test.out

#- 182 ImportStore
eval_tap 0 182 'ImportStore # SKIP deprecated' test.out

#- 183 GetPublishedStore
samples/cli/sample-apps Platform getPublishedStore \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 183 'GetPublishedStore' test.out

#- 184 DeletePublishedStore
samples/cli/sample-apps Platform deletePublishedStore \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 184 'DeletePublishedStore' test.out

#- 185 GetPublishedStoreBackup
samples/cli/sample-apps Platform getPublishedStoreBackup \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 185 'GetPublishedStoreBackup' test.out

#- 186 RollbackPublishedStore
samples/cli/sample-apps Platform rollbackPublishedStore \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 186 'RollbackPublishedStore' test.out

#- 187 GetStore
samples/cli/sample-apps Platform getStore \
    --namespace $AB_NAMESPACE \
    --storeId '2hryttmlmH6xSAot' \
    > test.out 2>&1
eval_tap $? 187 'GetStore' test.out

#- 188 UpdateStore
samples/cli/sample-apps Platform updateStore \
    --namespace $AB_NAMESPACE \
    --storeId 'ZMrrszGoNAtbnEfx' \
    --body '{"defaultLanguage": "0qG8fU49Xd79mjAH", "defaultRegion": "20i6ODtrXXsV9RqB", "description": "2XWS4QlrKLEVsTwR", "supportedLanguages": ["qn5dIEp5zVpRiwnI", "Y18gUNevlxfu3dEQ", "7LaXnMUPrE223ilo"], "supportedRegions": ["nnhMwFpveYfhXfyX", "lRw1O05TbHVu4gAM", "jNGoSmX30UN8OGUd"], "title": "QwifT7LRPUX4D0YA"}' \
    > test.out 2>&1
eval_tap $? 188 'UpdateStore' test.out

#- 189 DeleteStore
samples/cli/sample-apps Platform deleteStore \
    --namespace $AB_NAMESPACE \
    --storeId 'v3Vl5vUhsznG5U43' \
    > test.out 2>&1
eval_tap $? 189 'DeleteStore' test.out

#- 190 QueryChanges
samples/cli/sample-apps Platform queryChanges \
    --namespace $AB_NAMESPACE \
    --storeId 'g0rUtxubGzNpXVTJ' \
    --action 'DELETE' \
    --itemSku '8q1OILQxRD2uSAzt' \
    --itemType 'BUNDLE' \
    --limit '89' \
    --offset '11' \
    --selected 'true' \
    --sortBy '["createdAt:asc", "createdAt:desc", "updatedAt:asc"]' \
    --status 'UNPUBLISHED' \
    --type 'ITEM' \
    --updatedAtEnd 'KBZF7dv2G4pa0UjC' \
    --updatedAtStart 'B7IZXOnVHfRp10lL' \
    > test.out 2>&1
eval_tap $? 190 'QueryChanges' test.out

#- 191 PublishAll
samples/cli/sample-apps Platform publishAll \
    --namespace $AB_NAMESPACE \
    --storeId 'pIh3TPkvXuqurB9i' \
    > test.out 2>&1
eval_tap $? 191 'PublishAll' test.out

#- 192 PublishSelected
samples/cli/sample-apps Platform publishSelected \
    --namespace $AB_NAMESPACE \
    --storeId 'W74uKAhYLl4jBYfR' \
    > test.out 2>&1
eval_tap $? 192 'PublishSelected' test.out

#- 193 SelectAllRecords
samples/cli/sample-apps Platform selectAllRecords \
    --namespace $AB_NAMESPACE \
    --storeId 'LNTzo4R0gcKz0SDU' \
    > test.out 2>&1
eval_tap $? 193 'SelectAllRecords' test.out

#- 194 GetStatistic
samples/cli/sample-apps Platform getStatistic \
    --namespace $AB_NAMESPACE \
    --storeId '1kzp1Zblc5uHet2u' \
    --action 'CREATE' \
    --itemSku 'hyLrplleJhuzCfvy' \
    --itemType 'MEDIA' \
    --type 'CATEGORY' \
    --updatedAtEnd 'VbGYXx99MGo5M1j1' \
    --updatedAtStart 'mn0CZFKGpRVNXush' \
    > test.out 2>&1
eval_tap $? 194 'GetStatistic' test.out

#- 195 UnselectAllRecords
samples/cli/sample-apps Platform unselectAllRecords \
    --namespace $AB_NAMESPACE \
    --storeId 'SS1QVM3QBtxIwLkB' \
    > test.out 2>&1
eval_tap $? 195 'UnselectAllRecords' test.out

#- 196 SelectRecord
samples/cli/sample-apps Platform selectRecord \
    --changeId 'R7PRAQ3kKv8jzANn' \
    --namespace $AB_NAMESPACE \
    --storeId 'L9896xVweo7Za9L4' \
    > test.out 2>&1
eval_tap $? 196 'SelectRecord' test.out

#- 197 UnselectRecord
samples/cli/sample-apps Platform unselectRecord \
    --changeId 'uhtAoSPmLGARQoIo' \
    --namespace $AB_NAMESPACE \
    --storeId 'G6x9mLTrnCicPPo3' \
    > test.out 2>&1
eval_tap $? 197 'UnselectRecord' test.out

#- 198 CloneStore
samples/cli/sample-apps Platform cloneStore \
    --namespace $AB_NAMESPACE \
    --storeId '9YJuF4ilo6H0dW69' \
    --targetStoreId 'f4keBVhXvxpttR1f' \
    > test.out 2>&1
eval_tap $? 198 'CloneStore' test.out

#- 199 ExportStore
eval_tap 0 199 'ExportStore # SKIP deprecated' test.out

#- 200 QuerySubscriptions
samples/cli/sample-apps Platform querySubscriptions \
    --namespace $AB_NAMESPACE \
    --chargeStatus 'SETUP' \
    --itemId 'tEVk9r8n50VrI1sy' \
    --limit '36' \
    --offset '26' \
    --sku 'kgUBgiHfdRJZOAOk' \
    --status 'EXPIRED' \
    --subscribedBy 'PLATFORM' \
    --userId 'AigFIxlyUSyNkGgI' \
    > test.out 2>&1
eval_tap $? 200 'QuerySubscriptions' test.out

#- 201 RecurringChargeSubscription
samples/cli/sample-apps Platform recurringChargeSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'VrqFtI2UUpyzeDo1' \
    > test.out 2>&1
eval_tap $? 201 'RecurringChargeSubscription' test.out

#- 202 GetTicketDynamic
samples/cli/sample-apps Platform getTicketDynamic \
    --boothName 'XyKbCsBeQxpLYH3F' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 202 'GetTicketDynamic' test.out

#- 203 DecreaseTicketSale
samples/cli/sample-apps Platform decreaseTicketSale \
    --boothName 'KtYybJz6h61ruyfv' \
    --namespace $AB_NAMESPACE \
    --body '{"orderNo": "N3wWZyytRNd2HBBg"}' \
    > test.out 2>&1
eval_tap $? 203 'DecreaseTicketSale' test.out

#- 204 GetTicketBoothID
samples/cli/sample-apps Platform getTicketBoothID \
    --boothName 'VdaDPmNSCuCYcFfg' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 204 'GetTicketBoothID' test.out

#- 205 IncreaseTicketSale
samples/cli/sample-apps Platform increaseTicketSale \
    --boothName 'mKkXQUnQo2669xja' \
    --namespace $AB_NAMESPACE \
    --body '{"count": 46, "orderNo": "U2NaQEWRnOI62tdv"}' \
    > test.out 2>&1
eval_tap $? 205 'IncreaseTicketSale' test.out

#- 206 UnlockSteamUserAchievement
samples/cli/sample-apps Platform unlockSteamUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'mQgyUT81nrOzx200' \
    --body '{"achievements": [{"id": "NHeP0fCxOW4RL0dE", "value": 61}, {"id": "cuEzU54NJvTOsq42", "value": 11}, {"id": "DdIwsdyXiob7f2P2", "value": 89}], "steamUserId": "lGcNjIqDH0m5Ysa0"}' \
    > test.out 2>&1
eval_tap $? 206 'UnlockSteamUserAchievement' test.out

#- 207 GetXblUserAchievements
samples/cli/sample-apps Platform getXblUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId '8VRnPluxxhPhv1g6' \
    --xboxUserId 'rm7CNwy6cyse5BXU' \
    > test.out 2>&1
eval_tap $? 207 'GetXblUserAchievements' test.out

#- 208 UpdateXblUserAchievement
samples/cli/sample-apps Platform updateXblUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'eSTzFhynfHBTAzLe' \
    --body '{"achievements": [{"id": "LM1kmqpIcLpMlhVD", "percentComplete": 48}, {"id": "mApZ3USA6vXjBNG6", "percentComplete": 18}, {"id": "icl40afjRoPTDKNB", "percentComplete": 59}], "serviceConfigId": "mEbCKAWXIdwXEJGf", "titleId": "h9WbDTNtUz87Tv6S", "xboxUserId": "qm70EtYp0VFdlKHC"}' \
    > test.out 2>&1
eval_tap $? 208 'UpdateXblUserAchievement' test.out

#- 209 AnonymizeCampaign
samples/cli/sample-apps Platform anonymizeCampaign \
    --namespace $AB_NAMESPACE \
    --userId 'VSQiAFVBDfkMnLHw' \
    > test.out 2>&1
eval_tap $? 209 'AnonymizeCampaign' test.out

#- 210 AnonymizeEntitlement
samples/cli/sample-apps Platform anonymizeEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'ZvfNn4FIeCnppcdT' \
    > test.out 2>&1
eval_tap $? 210 'AnonymizeEntitlement' test.out

#- 211 AnonymizeFulfillment
samples/cli/sample-apps Platform anonymizeFulfillment \
    --namespace $AB_NAMESPACE \
    --userId 'NPFFVPv8lWcFqe7S' \
    > test.out 2>&1
eval_tap $? 211 'AnonymizeFulfillment' test.out

#- 212 AnonymizeIntegration
samples/cli/sample-apps Platform anonymizeIntegration \
    --namespace $AB_NAMESPACE \
    --userId '5s1YDEIRCn0fqwNb' \
    > test.out 2>&1
eval_tap $? 212 'AnonymizeIntegration' test.out

#- 213 AnonymizeOrder
samples/cli/sample-apps Platform anonymizeOrder \
    --namespace $AB_NAMESPACE \
    --userId 'BaymDR3WV9g7Njfb' \
    > test.out 2>&1
eval_tap $? 213 'AnonymizeOrder' test.out

#- 214 AnonymizePayment
samples/cli/sample-apps Platform anonymizePayment \
    --namespace $AB_NAMESPACE \
    --userId 'Iyj45Mg2XhTf1eVO' \
    > test.out 2>&1
eval_tap $? 214 'AnonymizePayment' test.out

#- 215 AnonymizeRevocation
samples/cli/sample-apps Platform anonymizeRevocation \
    --namespace $AB_NAMESPACE \
    --userId 'uxGHHWOl0Vof3byf' \
    > test.out 2>&1
eval_tap $? 215 'AnonymizeRevocation' test.out

#- 216 AnonymizeSubscription
samples/cli/sample-apps Platform anonymizeSubscription \
    --namespace $AB_NAMESPACE \
    --userId 'cxUQaCbSq5EdMoPA' \
    > test.out 2>&1
eval_tap $? 216 'AnonymizeSubscription' test.out

#- 217 AnonymizeWallet
samples/cli/sample-apps Platform anonymizeWallet \
    --namespace $AB_NAMESPACE \
    --userId 'sak1xqr4tiokVm65' \
    > test.out 2>&1
eval_tap $? 217 'AnonymizeWallet' test.out

#- 218 GetUserDLCByPlatform
samples/cli/sample-apps Platform getUserDLCByPlatform \
    --namespace $AB_NAMESPACE \
    --userId '5F2bMuQiQFi4k06d' \
    --type 'XBOX' \
    > test.out 2>&1
eval_tap $? 218 'GetUserDLCByPlatform' test.out

#- 219 GetUserDLC
samples/cli/sample-apps Platform getUserDLC \
    --namespace $AB_NAMESPACE \
    --userId '0hWYJRSMRamkfnqb' \
    --type 'XBOX' \
    > test.out 2>&1
eval_tap $? 219 'GetUserDLC' test.out

#- 220 QueryUserEntitlements
samples/cli/sample-apps Platform queryUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'vBBkUTHie8Ejayln' \
    --activeOnly 'false' \
    --appType 'SOFTWARE' \
    --entitlementClazz 'APP' \
    --entitlementName 'oy9uULS1Sj4zmj07' \
    --features '["EJdB4wkya1Du4wcL", "NpuV0A0dDtnQmc4v", "tKRz3pASEa6g7c3y"]' \
    --itemId '["lk3saFnmWEFyzxXi", "YK2fdTKCazX9zu95", "F5BMp3BtYuG0K9D7"]' \
    --limit '72' \
    --offset '38' \
    > test.out 2>&1
eval_tap $? 220 'QueryUserEntitlements' test.out

#- 221 GrantUserEntitlement
samples/cli/sample-apps Platform grantUserEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'UOa70031XlvVft4s' \
    --body '[{"endDate": "1972-09-11T00:00:00Z", "grantedCode": "8DRD1SI2rapXUZtL", "itemId": "SXAgEgI3ZAiG8aTN", "itemNamespace": "5qx8PbXEuiUJEyZG", "language": "JBDc_SgWk", "quantity": 58, "region": "R7eXOjCUwIQ29tzL", "source": "REFERRAL_BONUS", "startDate": "1999-02-01T00:00:00Z", "storeId": "qzz6V5KP1LcUdew1"}, {"endDate": "1989-08-23T00:00:00Z", "grantedCode": "s7vLW5fHL4DUpjG8", "itemId": "6gwoqvE9m9yHTnRv", "itemNamespace": "AEUN5orc7pCIHbtu", "language": "Ko_mnsE", "quantity": 50, "region": "4JDBKgUDohNxRbDI", "source": "REFERRAL_BONUS", "startDate": "1993-12-19T00:00:00Z", "storeId": "IkZjqNDSRqxSvaGf"}, {"endDate": "1973-10-24T00:00:00Z", "grantedCode": "5dwDPvzHaANn6OUK", "itemId": "MuYCTpsPrGabthMQ", "itemNamespace": "Vz4b1Qj2qtdfwGSK", "language": "RuK", "quantity": 4, "region": "TAzrIkGPlXbSzD4R", "source": "IAP", "startDate": "1981-02-06T00:00:00Z", "storeId": "qqxnZoFQHtwjrxCQ"}]' \
    > test.out 2>&1
eval_tap $? 221 'GrantUserEntitlement' test.out

#- 222 GetUserAppEntitlementByAppId
samples/cli/sample-apps Platform getUserAppEntitlementByAppId \
    --namespace $AB_NAMESPACE \
    --userId '05V5kL2vmFGMf02L' \
    --activeOnly 'true' \
    --appId 'XlkU4XF51aCcSqRe' \
    > test.out 2>&1
eval_tap $? 222 'GetUserAppEntitlementByAppId' test.out

#- 223 QueryUserEntitlementsByAppType
samples/cli/sample-apps Platform queryUserEntitlementsByAppType \
    --namespace $AB_NAMESPACE \
    --userId 'g7zMWjSzbeSqgmhZ' \
    --activeOnly 'true' \
    --limit '54' \
    --offset '73' \
    --appType 'GAME' \
    > test.out 2>&1
eval_tap $? 223 'QueryUserEntitlementsByAppType' test.out

#- 224 GetUserEntitlementByItemId
samples/cli/sample-apps Platform getUserEntitlementByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'dkblWTqxaeBO4f00' \
    --activeOnly 'false' \
    --entitlementClazz 'SUBSCRIPTION' \
    --itemId 'HFFh8MpIh86AkFM7' \
    > test.out 2>&1
eval_tap $? 224 'GetUserEntitlementByItemId' test.out

#- 225 GetUserActiveEntitlementsByItemIds
samples/cli/sample-apps Platform getUserActiveEntitlementsByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'drAErHLBQlF4BekR' \
    --ids '["c9fgM5MFRUDHyBoE", "RcdOSWOgEs3jdU8U", "NeIGxcdqiC2lKcc2"]' \
    > test.out 2>&1
eval_tap $? 225 'GetUserActiveEntitlementsByItemIds' test.out

#- 226 GetUserEntitlementBySku
samples/cli/sample-apps Platform getUserEntitlementBySku \
    --namespace $AB_NAMESPACE \
    --userId 'yQdMo8oGaqYGiCOG' \
    --activeOnly 'true' \
    --entitlementClazz 'CODE' \
    --sku 'UMECd5iGdv38Z3h6' \
    > test.out 2>&1
eval_tap $? 226 'GetUserEntitlementBySku' test.out

#- 227 ExistsAnyUserActiveEntitlement
samples/cli/sample-apps Platform existsAnyUserActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'QDR54oywDfElru6e' \
    --appIds '["PSdf2mcscAD2o0u3", "1TVvQbTJRy21toTn", "eva2y6OmpHqc6Vbx"]' \
    --itemIds '["qVJ2xg8emy4pWn99", "zskgwkCDDHFelLSY", "K4cTcL1ev4uUl7Ph"]' \
    --skus '["CPGlWgZbwNuxTgLp", "2q7XwUqhQJFadI6g", "2fbs6YO2r9rWzUlV"]' \
    > test.out 2>&1
eval_tap $? 227 'ExistsAnyUserActiveEntitlement' test.out

#- 228 ExistsAnyUserActiveEntitlementByItemIds
samples/cli/sample-apps Platform existsAnyUserActiveEntitlementByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'yhzYnzaRdsofVjZq' \
    --itemIds '["fsFoOUfWbJHSYJJd", "2e1wXDsj0kChKXte", "59aqDVMPCOk2Vfhg"]' \
    > test.out 2>&1
eval_tap $? 228 'ExistsAnyUserActiveEntitlementByItemIds' test.out

#- 229 GetUserAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform getUserAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'rKPX4M1tWC6ePFms' \
    --appId 'iP3B1UzNIHY9G714' \
    > test.out 2>&1
eval_tap $? 229 'GetUserAppEntitlementOwnershipByAppId' test.out

#- 230 GetUserEntitlementOwnershipByItemId
samples/cli/sample-apps Platform getUserEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'YsE9C4n0eBQZhvnk' \
    --entitlementClazz 'ENTITLEMENT' \
    --itemId 'wt8xgeEa6KoL90ER' \
    > test.out 2>&1
eval_tap $? 230 'GetUserEntitlementOwnershipByItemId' test.out

#- 231 GetUserEntitlementOwnershipByItemIds
samples/cli/sample-apps Platform getUserEntitlementOwnershipByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'yJpjz3lKmq4kkw3h' \
    --ids '["QCUHMzfvzBbxmnsH", "n4T0hV69bKqxukbJ", "C4h9ckEcTrq6TMp0"]' \
    > test.out 2>&1
eval_tap $? 231 'GetUserEntitlementOwnershipByItemIds' test.out

#- 232 GetUserEntitlementOwnershipBySku
samples/cli/sample-apps Platform getUserEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --userId 'oDqoSqXZUnf7D51b' \
    --entitlementClazz 'SUBSCRIPTION' \
    --sku 'rcECHD0ViN6r9eNV' \
    > test.out 2>&1
eval_tap $? 232 'GetUserEntitlementOwnershipBySku' test.out

#- 233 RevokeAllEntitlements
samples/cli/sample-apps Platform revokeAllEntitlements \
    --namespace $AB_NAMESPACE \
    --userId '9zO4Oa3vJKwVsOSZ' \
    > test.out 2>&1
eval_tap $? 233 'RevokeAllEntitlements' test.out

#- 234 RevokeUserEntitlements
samples/cli/sample-apps Platform revokeUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'PCxzNzDYTslmUtoW' \
    --entitlementIds 'kn7XYdv7WHnTK4Ei' \
    > test.out 2>&1
eval_tap $? 234 'RevokeUserEntitlements' test.out

#- 235 GetUserEntitlement
samples/cli/sample-apps Platform getUserEntitlement \
    --entitlementId 'XnFoYqpu3MoB2lCm' \
    --namespace $AB_NAMESPACE \
    --userId 'RpDA9ZzphdXxuYQt' \
    > test.out 2>&1
eval_tap $? 235 'GetUserEntitlement' test.out

#- 236 UpdateUserEntitlement
samples/cli/sample-apps Platform updateUserEntitlement \
    --entitlementId 'nW7VvgSgEo360lsj' \
    --namespace $AB_NAMESPACE \
    --userId 'PSwz8ChZGtI4bZn6' \
    --body '{"endDate": "1995-10-11T00:00:00Z", "nullFieldList": ["ur1j6TSzfL3aLmKJ", "rqaWTbCKkOpIB2ma", "UNrJ1MupMjnXQplL"], "startDate": "1995-12-06T00:00:00Z", "status": "REVOKED", "useCount": 97}' \
    > test.out 2>&1
eval_tap $? 236 'UpdateUserEntitlement' test.out

#- 237 ConsumeUserEntitlement
samples/cli/sample-apps Platform consumeUserEntitlement \
    --entitlementId '4bpU5ZVISXpdFYaS' \
    --namespace $AB_NAMESPACE \
    --userId 'f66RlqjZd8cEZtch' \
    --body '{"options": ["zOJrxo4IXuFRHs21", "xadaTovL2p8yntRS", "OD57x7vEmStSp7RZ"], "requestId": "oXMBcoufiAJGObND", "useCount": 6}' \
    > test.out 2>&1
eval_tap $? 237 'ConsumeUserEntitlement' test.out

#- 238 DisableUserEntitlement
samples/cli/sample-apps Platform disableUserEntitlement \
    --entitlementId 'WRwDlThx54y1rvXV' \
    --namespace $AB_NAMESPACE \
    --userId '4jDcBCK6ltL2qvf4' \
    > test.out 2>&1
eval_tap $? 238 'DisableUserEntitlement' test.out

#- 239 EnableUserEntitlement
samples/cli/sample-apps Platform enableUserEntitlement \
    --entitlementId 'rmNkgdauwffUQoob' \
    --namespace $AB_NAMESPACE \
    --userId 'uTzDzL8hRTXnDRHh' \
    > test.out 2>&1
eval_tap $? 239 'EnableUserEntitlement' test.out

#- 240 GetUserEntitlementHistories
samples/cli/sample-apps Platform getUserEntitlementHistories \
    --entitlementId 'w4Imo0uQn0F938mZ' \
    --namespace $AB_NAMESPACE \
    --userId 'Z9qkSyLdgCEYxwpt' \
    > test.out 2>&1
eval_tap $? 240 'GetUserEntitlementHistories' test.out

#- 241 RevokeUserEntitlement
samples/cli/sample-apps Platform revokeUserEntitlement \
    --entitlementId 'gJU3T4dqRVxjRhys' \
    --namespace $AB_NAMESPACE \
    --userId 'EnyyZtKKzYDdT28V' \
    > test.out 2>&1
eval_tap $? 241 'RevokeUserEntitlement' test.out

#- 242 RevokeUseCount
samples/cli/sample-apps Platform revokeUseCount \
    --entitlementId 'NK1ZHQg4PPeFMNlX' \
    --namespace $AB_NAMESPACE \
    --userId 'XdGIDa2P7DR0VcSN' \
    --body '{"reason": "a9MbwxqhLMdEEEQU", "useCount": 47}' \
    > test.out 2>&1
eval_tap $? 242 'RevokeUseCount' test.out

#- 243 SellUserEntitlement
samples/cli/sample-apps Platform sellUserEntitlement \
    --entitlementId 'Gb9yshnKZH1Frq43' \
    --namespace $AB_NAMESPACE \
    --userId 'UaSnIxdmQUmUZjrC' \
    --body '{"requestId": "GZ7ZX80w3rxDuzlM", "useCount": 28}' \
    > test.out 2>&1
eval_tap $? 243 'SellUserEntitlement' test.out

#- 244 FulfillItem
samples/cli/sample-apps Platform fulfillItem \
    --namespace $AB_NAMESPACE \
    --userId 'dSbxEygWl4Xh2zmq' \
    --body '{"duration": 87, "endDate": "1998-07-27T00:00:00Z", "itemId": "fzki59xHlWGleani", "itemSku": "lzO7w1SxeGmJ1swv", "language": "vUGP93sthFkmFmVT", "metadata": {"ZVWrBooEJ44yOCri": {}, "VcizKaamMkZiKESf": {}, "8us4PmXei7dp8vDE": {}}, "order": {"currency": {"currencyCode": "FmyyNWR0dcdYiWxu", "currencySymbol": "NmnBS6iBo5MwSAaT", "currencyType": "VIRTUAL", "decimals": 54, "namespace": "PrLVzrTTt5vkOz8G"}, "ext": {"E4YTRmkTvYMrIpWi": {}, "jfALOtsi4CnnpJRl": {}, "fObszC6W5r1jb3W9": {}}, "free": true}, "orderNo": "SQTpWoCuYw7LwnKq", "origin": "Xbox", "overrideBundleItemQty": {"37EtEV3Tkd3JyFvP": 81, "UegbvA28zDyqkQbi": 7, "YKRpJtDUARxRO5xl": 3}, "quantity": 34, "region": "K5fIkaEwbYSVhUGJ", "source": "CONSUME_ENTITLEMENT", "startDate": "1988-08-29T00:00:00Z", "storeId": "2wF3GvjdtzJZt0ud"}' \
    > test.out 2>&1
eval_tap $? 244 'FulfillItem' test.out

#- 245 RedeemCode
samples/cli/sample-apps Platform redeemCode \
    --namespace $AB_NAMESPACE \
    --userId 'jMiyT8JX1vCSs9ww' \
    --body '{"code": "SE1ZPH2aQemKfV1S", "language": "guDx", "region": "kz2co1CqW8vdQWc3"}' \
    > test.out 2>&1
eval_tap $? 245 'RedeemCode' test.out

#- 246 FulfillRewards
samples/cli/sample-apps Platform fulfillRewards \
    --namespace $AB_NAMESPACE \
    --userId 'KcJ1BcDEagH1GXZ2' \
    --body '{"metadata": {"I29IkqOy1nGC7S1d": {}, "BStF1Pa71EXliphY": {}, "sqyiQJOYLfYb2klN": {}}, "origin": "Oculus", "rewards": [{"currency": {"currencyCode": "7SH16VOHga5koEHx", "namespace": "6E4f6StEE9JxAze7"}, "item": {"itemId": "cgfWn1OYiiPJz5cT", "itemSku": "3JwPA03MoaJENGiu", "itemType": "1GcxTm5S4JpVrBkU"}, "quantity": 59, "type": "ITEM"}, {"currency": {"currencyCode": "6wwnfrAX77fBqWVB", "namespace": "p3WiostJsWDnczeN"}, "item": {"itemId": "QiYc6Um29uDpdGhR", "itemSku": "kFthxXjC1Pt3LGMA", "itemType": "jdEVbI2G5suq6cDU"}, "quantity": 93, "type": "CURRENCY"}, {"currency": {"currencyCode": "KIxAgBNs1s3Cprzd", "namespace": "vDG1PGJc1aHhetJs"}, "item": {"itemId": "ma1lVTH84v4wC7MK", "itemSku": "9olL29sTB1MLhRVa", "itemType": "FXfpTn8MZkRpAntd"}, "quantity": 98, "type": "CURRENCY"}], "source": "DLC", "transactionId": "sjs75SdxAUEScCCh"}' \
    > test.out 2>&1
eval_tap $? 246 'FulfillRewards' test.out

#- 247 QueryUserIAPOrders
samples/cli/sample-apps Platform queryUserIAPOrders \
    --namespace $AB_NAMESPACE \
    --userId 'iQXEyjHCX2zhpVSA' \
    --endTime 'LVcHpzpH937lPpYV' \
    --limit '94' \
    --offset '78' \
    --productId '7zRw324XxXm8dOQM' \
    --startTime 'LX2LsxxiIEmrikig' \
    --status 'VERIFIED' \
    --type 'XBOX' \
    > test.out 2>&1
eval_tap $? 247 'QueryUserIAPOrders' test.out

#- 248 QueryAllUserIAPOrders
samples/cli/sample-apps Platform queryAllUserIAPOrders \
    --namespace $AB_NAMESPACE \
    --userId 'BLr0p4FiMR5IaxeJ' \
    > test.out 2>&1
eval_tap $? 248 'QueryAllUserIAPOrders' test.out

#- 249 QueryUserIAPConsumeHistory
samples/cli/sample-apps Platform queryUserIAPConsumeHistory \
    --namespace $AB_NAMESPACE \
    --userId 'eWlXp9E0LwHlLnJp' \
    --endTime 'iIOR9QJe31OCGAZQ' \
    --limit '41' \
    --offset '25' \
    --startTime 'q69Yyx3LShvIkxbG' \
    --status 'PENDING' \
    --type 'GOOGLE' \
    > test.out 2>&1
eval_tap $? 249 'QueryUserIAPConsumeHistory' test.out

#- 250 MockFulfillIAPItem
samples/cli/sample-apps Platform mockFulfillIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'YOkMwWnToTUpG9id' \
    --body '{"itemIdentityType": "ITEM_ID", "language": "OVI_671", "productId": "wXwpOiVE4Blukn0E", "region": "Xfk5XiSsw8CgYQP0", "transactionId": "SHV1LRQUU07Py8Vj", "type": "STADIA"}' \
    > test.out 2>&1
eval_tap $? 250 'MockFulfillIAPItem' test.out

#- 251 QueryUserOrders
samples/cli/sample-apps Platform queryUserOrders \
    --namespace $AB_NAMESPACE \
    --userId 'hF0Fvta4fgHiWopm' \
    --itemId 'Qh6J992yjB0sL1rC' \
    --limit '77' \
    --offset '59' \
    --status 'REFUND_FAILED' \
    > test.out 2>&1
eval_tap $? 251 'QueryUserOrders' test.out

#- 252 AdminCreateUserOrder
samples/cli/sample-apps Platform adminCreateUserOrder \
    --namespace $AB_NAMESPACE \
    --userId 'MZROpXNRbMLTnu7Z' \
    --body '{"currencyCode": "l139SQuHcflXZnCJ", "currencyNamespace": "iWT2icXjTlvik37H", "discountedPrice": 16, "ext": {"cZzouiliTqH20flS": {}, "gRaNkbowzHeeFsna": {}, "F2X6LwS1J80JmH9g": {}}, "itemId": "544oWIeLL5u1Cbbq", "language": "QOBkKvlhRt0CRLzb", "options": {"skipPriceValidation": false}, "platform": "Oculus", "price": 43, "quantity": 13, "region": "c0FE5lldk0uR0SN7", "returnUrl": "2llA7jUmGzIfyFSV", "sandbox": true, "sectionId": "QrZKJfkCwPYXyMeU"}' \
    > test.out 2>&1
eval_tap $? 252 'AdminCreateUserOrder' test.out

#- 253 CountOfPurchasedItem
samples/cli/sample-apps Platform countOfPurchasedItem \
    --namespace $AB_NAMESPACE \
    --userId 'elgStZzCCQcyA2I5' \
    --itemId 'P4p8l81FrKsgcEv6' \
    > test.out 2>&1
eval_tap $? 253 'CountOfPurchasedItem' test.out

#- 254 GetUserOrder
samples/cli/sample-apps Platform getUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'z4fp4SWLMIeAZ8Zh' \
    --userId '3uoi4Kz1FrjXGYhH' \
    > test.out 2>&1
eval_tap $? 254 'GetUserOrder' test.out

#- 255 UpdateUserOrderStatus
samples/cli/sample-apps Platform updateUserOrderStatus \
    --namespace $AB_NAMESPACE \
    --orderNo 'FnDa3vAfnM9aOjx6' \
    --userId 'qzACp2btIJ3Z9q5q' \
    --body '{"status": "DELETED", "statusReason": "0nKHIY99LXBrCdwa"}' \
    > test.out 2>&1
eval_tap $? 255 'UpdateUserOrderStatus' test.out

#- 256 FulfillUserOrder
samples/cli/sample-apps Platform fulfillUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'tZqm2fvpl1xtzysL' \
    --userId 'Zh2vpMBWM7aDUuvn' \
    > test.out 2>&1
eval_tap $? 256 'FulfillUserOrder' test.out

#- 257 GetUserOrderGrant
samples/cli/sample-apps Platform getUserOrderGrant \
    --namespace $AB_NAMESPACE \
    --orderNo 'v11jPIkkV6CSpkSE' \
    --userId 'WYO6pln9uqkpJtEV' \
    > test.out 2>&1
eval_tap $? 257 'GetUserOrderGrant' test.out

#- 258 GetUserOrderHistories
samples/cli/sample-apps Platform getUserOrderHistories \
    --namespace $AB_NAMESPACE \
    --orderNo 'LyrD9uvY3MrWVViz' \
    --userId 'Bp3EexgtDppzXOzR' \
    > test.out 2>&1
eval_tap $? 258 'GetUserOrderHistories' test.out

#- 259 ProcessUserOrderNotification
samples/cli/sample-apps Platform processUserOrderNotification \
    --namespace $AB_NAMESPACE \
    --orderNo 'mC7sdrj6WHkHeWom' \
    --userId '9jgnhp8S1iftaclZ' \
    --body '{"additionalData": {"cardSummary": "Q3mYjSmGcH7l6SHX"}, "authorisedTime": "1996-07-19T00:00:00Z", "chargebackReversedTime": "1996-12-29T00:00:00Z", "chargebackTime": "1972-10-04T00:00:00Z", "chargedTime": "1971-07-28T00:00:00Z", "createdTime": "1997-03-25T00:00:00Z", "currency": {"currencyCode": "NJoLdX9BpxCxhcqt", "currencySymbol": "viOC0TlkfaJJVm4P", "currencyType": "REAL", "decimals": 24, "namespace": "Ido61ikC8fc7znu7"}, "customParameters": {"D1MEx8c30Rn1JpH6": {}, "hSRpNiFcVFhiQfpX": {}, "JnGJlKXp1Qcqpmhk": {}}, "extOrderNo": "4QSzv6a1PZknTj0d", "extTxId": "doW0yUCsj8abUgFw", "extUserId": "SjscgMT49YGAwdRE", "issuedAt": "1997-08-16T00:00:00Z", "metadata": {"K17cAru0hCte2cH2": "rx1Dn2Yvy0iI86eg", "lRu2vr1ZmlEUgLj6": "ZyRDmdh7VgX16jz7", "UF8jL450znIBxa97": "Q8hNTnSB9YeKF6i5"}, "namespace": "GGXwimLPhfDafEMp", "nonceStr": "7hnyJQsgDh1PCKS9", "paymentMethod": "kUrirhg7unRgP0yi", "paymentMethodFee": 16, "paymentOrderNo": "a7eYnzc099u9WnhR", "paymentProvider": "ADYEN", "paymentProviderFee": 65, "paymentStationUrl": "MPgdl51OrZoUOBk7", "price": 74, "refundedTime": "1988-11-25T00:00:00Z", "salesTax": 58, "sandbox": true, "sku": "aa6pbAIDOyCih7W0", "status": "CHARGE_FAILED", "statusReason": "fi7SL9gxXiDlCND3", "subscriptionId": "dUm9C8AoAQaFcJNd", "subtotalPrice": 64, "targetNamespace": "8FgLRMi4pkFPGxIe", "targetUserId": "06DGFtABHiCxAaSq", "tax": 32, "totalPrice": 90, "totalTax": 14, "txEndTime": "1973-12-14T00:00:00Z", "type": "ZG3BkHXqfZuJkEfK", "userId": "WNw09MJlwBmeuXqZ", "vat": 89}' \
    > test.out 2>&1
eval_tap $? 259 'ProcessUserOrderNotification' test.out

#- 260 DownloadUserOrderReceipt
samples/cli/sample-apps Platform downloadUserOrderReceipt \
    --namespace $AB_NAMESPACE \
    --orderNo 'YS5YlrwbOpB2Mu06' \
    --userId 'zI9hJqD4FH7M4y0Y' \
    > test.out 2>&1
eval_tap $? 260 'DownloadUserOrderReceipt' test.out

#- 261 CreateUserPaymentOrder
samples/cli/sample-apps Platform createUserPaymentOrder \
    --namespace $AB_NAMESPACE \
    --userId 't0lPpwiInkL9lzrK' \
    --body '{"currencyCode": "y9RzeLJdONLwCkcE", "currencyNamespace": "e8rbGP3lfONzJ895", "customParameters": {"19FudGU4gnwHuUtV": {}, "BdP8qsKhDASvtT6X": {}, "IrZ1CF8CY4qRrk7D": {}}, "description": "qDaIHjZjh25kh5JN", "extOrderNo": "XGZNUxD3IYQjVfbU", "extUserId": "zecAYnFxqNJfRqkO", "itemType": "OPTIONBOX", "language": "BoA-jT", "metadata": {"57dyUemBfzoyshuE": "SWe6xNtTfV4Yg7YZ", "OIKp6ENjqYbw7nyH": "Y3n4YhFEZF2BnhN2", "AAcTkgDtqocZPC7U": "TbX48IY7ZjblXXDU"}, "notifyUrl": "yE6wp93BZn88cPYR", "omitNotification": false, "platform": "UnDdFADbKhPYkked", "price": 24, "recurringPaymentOrderNo": "zJOYxasLIUwv98Q0", "region": "g3ZEejwqwFQyUVNM", "returnUrl": "POUKIp6462HqJWta", "sandbox": false, "sku": "bWTBxcAGjDMJcUun", "subscriptionId": "Qh9Kd74jN35NzYpH", "title": "AWArKEYEl3Tw1QDp"}' \
    > test.out 2>&1
eval_tap $? 261 'CreateUserPaymentOrder' test.out

#- 262 RefundUserPaymentOrder
samples/cli/sample-apps Platform refundUserPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo '2CybVp6d6uXWjl73' \
    --userId 'gJkqynPRXIexUZ3a' \
    --body '{"description": "cN2eKwMVEKEQJOZX"}' \
    > test.out 2>&1
eval_tap $? 262 'RefundUserPaymentOrder' test.out

#- 263 ApplyUserRedemption
samples/cli/sample-apps Platform applyUserRedemption \
    --namespace $AB_NAMESPACE \
    --userId 't6eyp38DGnT1q9yf' \
    --body '{"code": "cW3aEmjWYCjKLjK9", "orderNo": "sjE0FrEZRsPJg4RC"}' \
    > test.out 2>&1
eval_tap $? 263 'ApplyUserRedemption' test.out

#- 264 DoRevocation
samples/cli/sample-apps Platform doRevocation \
    --namespace $AB_NAMESPACE \
    --userId 'KEJhzfr6b4g2dZ39' \
    --body '{"meta": {"npo1tHdud74a1O9e": {}, "jeJwA2CtmYNpZC7v": {}, "72hfLsD6rG4ovymO": {}}, "revokeEntries": [{"currency": {"balanceOrigin": "IOS", "currencyCode": "t7zsUynj2C3UO7f5", "namespace": "DnXsa6P7w3yRjfaH"}, "entitlement": {"entitlementId": "3gldUkV1Lr4PE8x1"}, "item": {"itemIdentity": "2B8shJzutu7QqezR", "itemIdentityType": "ITEM_SKU", "origin": "Steam"}, "quantity": 86, "type": "CURRENCY"}, {"currency": {"balanceOrigin": "Other", "currencyCode": "jjN4TsnvE2vuXqrm", "namespace": "0kQhEdBmhKoV33Wn"}, "entitlement": {"entitlementId": "N8MC8M6V7r0JUVpl"}, "item": {"itemIdentity": "swO79NrpQrndaufn", "itemIdentityType": "ITEM_SKU", "origin": "Xbox"}, "quantity": 4, "type": "ENTITLEMENT"}, {"currency": {"balanceOrigin": "Nintendo", "currencyCode": "Nk8OKycrJPYT9r3y", "namespace": "Fj3o74GgQ6sUc3xc"}, "entitlement": {"entitlementId": "9PdIHPA4ET6eyDdI"}, "item": {"itemIdentity": "ICca7S375S85pqS9", "itemIdentityType": "ITEM_SKU", "origin": "Xbox"}, "quantity": 65, "type": "CURRENCY"}], "source": "OTHER", "transactionId": "Mbc7IKMQj9SHvxUk"}' \
    > test.out 2>&1
eval_tap $? 264 'DoRevocation' test.out

#- 265 RegisterXblSessions
samples/cli/sample-apps Platform registerXblSessions \
    --namespace $AB_NAMESPACE \
    --userId 'TnaInEh37lTAzlEh' \
    --body '{"gameSessionId": "lu3LGK85iEhXlMWm", "payload": {"vZl16xVCiqCTI0Ve": {}, "uuCVgKI5yfzlRFrK": {}, "1lAGYWmOZDDCCEJt": {}}, "scid": "KhvMOEeju6vvQlAO", "sessionTemplateName": "knoyhVqPDAtDcFPX"}' \
    > test.out 2>&1
eval_tap $? 265 'RegisterXblSessions' test.out

#- 266 QueryUserSubscriptions
samples/cli/sample-apps Platform queryUserSubscriptions \
    --namespace $AB_NAMESPACE \
    --userId 'vj2XOaLfYioSgkvu' \
    --chargeStatus 'SETUP' \
    --itemId 'xhQyBPlj4LYlkPNu' \
    --limit '6' \
    --offset '43' \
    --sku 'drufEc4BHgO9oacV' \
    --status 'INIT' \
    --subscribedBy 'USER' \
    > test.out 2>&1
eval_tap $? 266 'QueryUserSubscriptions' test.out

#- 267 GetUserSubscriptionActivities
samples/cli/sample-apps Platform getUserSubscriptionActivities \
    --namespace $AB_NAMESPACE \
    --userId 'WRfgbS7Dla0GnijN' \
    --excludeSystem 'false' \
    --limit '83' \
    --offset '0' \
    --subscriptionId 'FRLyQSEH0nJeuAPR' \
    > test.out 2>&1
eval_tap $? 267 'GetUserSubscriptionActivities' test.out

#- 268 PlatformSubscribeSubscription
samples/cli/sample-apps Platform platformSubscribeSubscription \
    --namespace $AB_NAMESPACE \
    --userId 'BwHYQ3ab3o03zLSK' \
    --body '{"grantDays": 55, "itemId": "l8G1qTKMpkrcRndx", "language": "mxsDzmwQRrYekMZn", "reason": "XV8tPkCrZCB55L89", "region": "RTSOQc2zbrubbnBC", "source": "IALXYXreWe4zLZIg"}' \
    > test.out 2>&1
eval_tap $? 268 'PlatformSubscribeSubscription' test.out

#- 269 CheckUserSubscriptionSubscribableByItemId
samples/cli/sample-apps Platform checkUserSubscriptionSubscribableByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'udvSEk6RzRMq7MBt' \
    --itemId 'YctRM3dDHhjlppDg' \
    > test.out 2>&1
eval_tap $? 269 'CheckUserSubscriptionSubscribableByItemId' test.out

#- 270 GetUserSubscription
samples/cli/sample-apps Platform getUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'qj9BSenAybl24mHI' \
    --userId 'qlgMESJpfpotvHGA' \
    > test.out 2>&1
eval_tap $? 270 'GetUserSubscription' test.out

#- 271 DeleteUserSubscription
samples/cli/sample-apps Platform deleteUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'Oue9O6jKFcgzNwET' \
    --userId 'jQgIf02sYr0D00Vf' \
    > test.out 2>&1
eval_tap $? 271 'DeleteUserSubscription' test.out

#- 272 CancelSubscription
samples/cli/sample-apps Platform cancelSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'sjbvvBtE8CfKfswr' \
    --userId 'D6LHHruti8QVAr8C' \
    --force 'true' \
    --body '{"immediate": true, "reason": "ajyXPDvmSXKvhhtz"}' \
    > test.out 2>&1
eval_tap $? 272 'CancelSubscription' test.out

#- 273 GrantDaysToSubscription
samples/cli/sample-apps Platform grantDaysToSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId '4emgrPMc7Ia2CKQ2' \
    --userId 'jLDjVmbfUk1T2f1z' \
    --body '{"grantDays": 42, "reason": "74HO59WHZVy5BT2f"}' \
    > test.out 2>&1
eval_tap $? 273 'GrantDaysToSubscription' test.out

#- 274 GetUserSubscriptionBillingHistories
samples/cli/sample-apps Platform getUserSubscriptionBillingHistories \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'YqGlZIvBrtNn8ZYc' \
    --userId 'sqCiNJRVtuJqemwg' \
    --excludeFree 'false' \
    --limit '98' \
    --offset '55' \
    > test.out 2>&1
eval_tap $? 274 'GetUserSubscriptionBillingHistories' test.out

#- 275 ProcessUserSubscriptionNotification
samples/cli/sample-apps Platform processUserSubscriptionNotification \
    --namespace $AB_NAMESPACE \
    --subscriptionId '0aoAzngqeAnuGsmM' \
    --userId 'jr5sBvv1npYEFGBi' \
    --body '{"additionalData": {"cardSummary": "VfFMz5qErehQ8mCq"}, "authorisedTime": "1982-08-25T00:00:00Z", "chargebackReversedTime": "1977-10-17T00:00:00Z", "chargebackTime": "1979-08-24T00:00:00Z", "chargedTime": "1972-07-20T00:00:00Z", "createdTime": "1983-10-15T00:00:00Z", "currency": {"currencyCode": "GyWtL6hwLHFHpmD2", "currencySymbol": "XRIFpLDOOehpEgoo", "currencyType": "VIRTUAL", "decimals": 13, "namespace": "VUj5XtqbJQdtK2Gd"}, "customParameters": {"nYxnDPsxwVqLQkK6": {}, "SPAi24N6NvFSEX3s": {}, "S8wqxVtNBqXPMKs3": {}}, "extOrderNo": "OZHOO31mNJMhelak", "extTxId": "fJ17dLCETJ62zCVF", "extUserId": "8fTE6XtApqIunDCG", "issuedAt": "1984-05-19T00:00:00Z", "metadata": {"rvuKk7XZgRJ9W6ts": "gLVcNhwKtXO71YEO", "8fi9OyYUIlxsJWJB": "GZJwTOpxwfSMzxj9", "GSHQLMtA1eIilVwM": "ozmOF7PPRpBMWLFn"}, "namespace": "Epj8wkg8s9HEawH6", "nonceStr": "BSp9WWi0m1cHgeqX", "paymentMethod": "PxQD2tOwHD7xQgL2", "paymentMethodFee": 34, "paymentOrderNo": "Kdho2j2bfZty9HIt", "paymentProvider": "WXPAY", "paymentProviderFee": 70, "paymentStationUrl": "YyxTel80qYmYy8fl", "price": 64, "refundedTime": "1977-09-17T00:00:00Z", "salesTax": 54, "sandbox": true, "sku": "5aH4jUb9Jq3wYMs2", "status": "AUTHORISED", "statusReason": "8e7VSIBXH0N693o1", "subscriptionId": "k0g0LjFqfCjAUaVa", "subtotalPrice": 65, "targetNamespace": "647VFT8JOXxxEyGz", "targetUserId": "6cqWYvlvvfgJTOkz", "tax": 14, "totalPrice": 41, "totalTax": 97, "txEndTime": "1996-07-10T00:00:00Z", "type": "MSYckZlVmJxeA4M8", "userId": "pkqJr26R8FTBBADX", "vat": 77}' \
    > test.out 2>&1
eval_tap $? 275 'ProcessUserSubscriptionNotification' test.out

#- 276 AcquireUserTicket
samples/cli/sample-apps Platform acquireUserTicket \
    --boothName 'FmLbxBBm1GU6i8wp' \
    --namespace $AB_NAMESPACE \
    --userId '8GsrNGpDbkA5M3Ex' \
    --body '{"count": 32, "orderNo": "8atA1VdokfYTJ5Zp"}' \
    > test.out 2>&1
eval_tap $? 276 'AcquireUserTicket' test.out

#- 277 QueryUserCurrencyWallets
samples/cli/sample-apps Platform queryUserCurrencyWallets \
    --namespace $AB_NAMESPACE \
    --userId 'U9qk484ZLQAeL3jT' \
    > test.out 2>&1
eval_tap $? 277 'QueryUserCurrencyWallets' test.out

#- 278 DebitUserWalletByCurrencyCode
samples/cli/sample-apps Platform debitUserWalletByCurrencyCode \
    --currencyCode 'p0NfFELwBfLcbqUh' \
    --namespace $AB_NAMESPACE \
    --userId 'IolpxhjLD3fhj102' \
    --body '{"allowOverdraft": false, "amount": 97, "balanceOrigin": "Xbox", "balanceSource": "PAYMENT", "metadata": {"TPPuXoOgXEbCd8MV": {}, "Bq1IFRaF2uCfQz4M": {}, "jyeDRgbfjxO4O18i": {}}, "reason": "2vTmcg9pnYeDGcgj"}' \
    > test.out 2>&1
eval_tap $? 278 'DebitUserWalletByCurrencyCode' test.out

#- 279 ListUserCurrencyTransactions
samples/cli/sample-apps Platform listUserCurrencyTransactions \
    --currencyCode 'fKAZs1vKCRS6ksD5' \
    --namespace $AB_NAMESPACE \
    --userId 'vBv1KC1eCiStyxQF' \
    --limit '14' \
    --offset '11' \
    > test.out 2>&1
eval_tap $? 279 'ListUserCurrencyTransactions' test.out

#- 280 CheckWallet
eval_tap 0 280 'CheckWallet # SKIP deprecated' test.out

#- 281 CreditUserWallet
samples/cli/sample-apps Platform creditUserWallet \
    --currencyCode 'z5Kr35vjVH8UChwV' \
    --namespace $AB_NAMESPACE \
    --userId '3VNkWOG3cOsB1s7M' \
    --body '{"amount": 16, "expireAt": "1971-07-11T00:00:00Z", "metadata": {"GaZaBqlrrLqgdcjC": {}, "6orXJQC09pOCzTxv": {}, "rtS1AiINDQhRSES0": {}}, "origin": "Oculus", "reason": "0gXdRTYbbt7NK5rC", "source": "OTHER"}' \
    > test.out 2>&1
eval_tap $? 281 'CreditUserWallet' test.out

#- 282 PayWithUserWallet
samples/cli/sample-apps Platform payWithUserWallet \
    --currencyCode 'zKJIlPg9L5wH5RPf' \
    --namespace $AB_NAMESPACE \
    --userId '33E79mocYDWJbpkS' \
    --body '{"amount": 92, "metadata": {"cvbiawo7Kz0t8rjR": {}, "D1R3Jhj5VOzCOscw": {}, "VuFkgt8Ogbxx0c9x": {}}, "walletPlatform": "Playstation"}' \
    > test.out 2>&1
eval_tap $? 282 'PayWithUserWallet' test.out

#- 283 GetUserWallet
eval_tap 0 283 'GetUserWallet # SKIP deprecated' test.out

#- 284 DebitUserWallet
eval_tap 0 284 'DebitUserWallet # SKIP deprecated' test.out

#- 285 DisableUserWallet
eval_tap 0 285 'DisableUserWallet # SKIP deprecated' test.out

#- 286 EnableUserWallet
eval_tap 0 286 'EnableUserWallet # SKIP deprecated' test.out

#- 287 ListUserWalletTransactions
eval_tap 0 287 'ListUserWalletTransactions # SKIP deprecated' test.out

#- 288 ListViews
samples/cli/sample-apps Platform listViews \
    --namespace $AB_NAMESPACE \
    --storeId '0oOHHs3q4xKEnyOX' \
    > test.out 2>&1
eval_tap $? 288 'ListViews' test.out

#- 289 CreateView
samples/cli/sample-apps Platform createView \
    --namespace $AB_NAMESPACE \
    --storeId 'UzpWl7kXmvaCjBpZ' \
    --body '{"displayOrder": 92, "localizations": {"1Y9mKzF9xsHjrN1v": {"description": "knxth6zhafagYkCX", "localExt": {"ufHxb2jSbPMGh78B": {}, "mNsdEK6oXMQTL0e4": {}, "FEsR2JlAtxOtIttd": {}}, "longDescription": "YIiKoaUfCc6nEPjO", "title": "DBfw1cS0krjiEa4r"}, "JsV9Xe4qmUSrY5Go": {"description": "YBWzOz6zHyf6Y2D6", "localExt": {"I14xUpWb8uhycOBo": {}, "akIsSPu97MV4bEzM": {}, "wJ6cxmH8OZLl6Uof": {}}, "longDescription": "a1cv4VNxs0FRVVAe", "title": "T6i48rTJZ3tvCltW"}, "vlgtwKMLHuLib3H0": {"description": "MbbpHQ1pEhOQbTQZ", "localExt": {"rBfLgXZLkf8PtVGl": {}, "a2lz6JBsqeELuhvC": {}, "ZHtD1CGKtJRkZGQR": {}}, "longDescription": "r5RhWSRiIP4SnRbl", "title": "FeLegwzaTewuswU3"}}, "name": "1Uunep3ehDZ52UR2"}' \
    > test.out 2>&1
eval_tap $? 289 'CreateView' test.out

#- 290 GetView
samples/cli/sample-apps Platform getView \
    --namespace $AB_NAMESPACE \
    --viewId 'xygHM8zgf8PGL5a8' \
    --storeId 'lJOC9OfiL7Ne3aAk' \
    > test.out 2>&1
eval_tap $? 290 'GetView' test.out

#- 291 UpdateView
samples/cli/sample-apps Platform updateView \
    --namespace $AB_NAMESPACE \
    --viewId 'OtteYRemZK2ElPa9' \
    --storeId 'ZLTJLQUViNZAclma' \
    --body '{"displayOrder": 64, "localizations": {"qcsDc73199sW1p8G": {"description": "TaO1AeBbXO2XS29J", "localExt": {"9qmDs5zQXOaKMwBj": {}, "lLFuPbtnIH1NgaJc": {}, "fW5pwOnuQ1V3et2T": {}}, "longDescription": "ORvauzL1HqHel42v", "title": "MC3MjMcgsCX1jxwi"}, "nXkLYhW9llx4VL9B": {"description": "Bb9PJZCxWadrK1z1", "localExt": {"p5xTBPwOynojf3VB": {}, "SQ34o1Y9KmspwFzE": {}, "BtnZtNnmPMESh6Uu": {}}, "longDescription": "1Q3W9gBVuqS1WPIf", "title": "1dMT4afnfZrmJlAO"}, "JvNSAyO6TEtHcxiQ": {"description": "zES6kioItmUbDmtB", "localExt": {"aoFGHQ7OsxpJjgjm": {}, "kJLI6l9dyNfC3inr": {}, "Ki5trbWHWVkJw3WT": {}}, "longDescription": "yJbwVADEklv2Tvev", "title": "A7EMmZa4Jxrowca7"}}, "name": "KleRwRgrDNvvorXf"}' \
    > test.out 2>&1
eval_tap $? 291 'UpdateView' test.out

#- 292 DeleteView
samples/cli/sample-apps Platform deleteView \
    --namespace $AB_NAMESPACE \
    --viewId 'lXXBUWIzFNcf1018' \
    --storeId 'mrj3uZYDO5NZMsNU' \
    > test.out 2>&1
eval_tap $? 292 'DeleteView' test.out

#- 293 QueryWallets
eval_tap 0 293 'QueryWallets # SKIP deprecated' test.out

#- 294 BulkCredit
samples/cli/sample-apps Platform bulkCredit \
    --namespace $AB_NAMESPACE \
    --body '[{"creditRequest": {"amount": 46, "expireAt": "1977-09-02T00:00:00Z", "metadata": {"xvMEMaa1nzvD6Vsy": {}, "RrTEE3QxlyP3cALC": {}, "DBNGxWxF4bOMY2zF": {}}, "origin": "Epic", "reason": "5KhoMzBadSYd996Y", "source": "REFUND"}, "currencyCode": "jGdOV0qqFRAfkdVX", "userIds": ["w7FdTQyg9NVYbiGQ", "XgMsaJYYUE1Ney2N", "uQ8fNhg0OV4N5dqH"]}, {"creditRequest": {"amount": 52, "expireAt": "1984-03-18T00:00:00Z", "metadata": {"OEMvlBSp9teupL08": {}, "m251tUKtOTH6stWB": {}, "7caucblg7ejNCCV2": {}}, "origin": "Xbox", "reason": "aL2NmnodWB3q1zkS", "source": "REWARD"}, "currencyCode": "r5amBH6XhGzw7FOT", "userIds": ["zP9CNFMKvGoCgWG1", "02ksyqQXHrH7rvsL", "0OP9z5tMZSidayIQ"]}, {"creditRequest": {"amount": 54, "expireAt": "1986-05-25T00:00:00Z", "metadata": {"XQhVQoCu7rWAFqbX": {}, "8bwTDZ6lIMQq55Ia": {}, "Zd2S2QdFYEfIlWBx": {}}, "origin": "Epic", "reason": "deLjVCTcrvivjHTX", "source": "REFUND"}, "currencyCode": "xRugYAdDR5wH3CWu", "userIds": ["bKnpLAVlBUf5XpE5", "3bRq8OQ5if2WEYoV", "syD2Xdrz01QzoCuy"]}]' \
    > test.out 2>&1
eval_tap $? 294 'BulkCredit' test.out

#- 295 BulkDebit
samples/cli/sample-apps Platform bulkDebit \
    --namespace $AB_NAMESPACE \
    --body '[{"currencyCode": "2rOLx5S93BFugzpW", "request": {"allowOverdraft": true, "amount": 29, "balanceOrigin": "Nintendo", "balanceSource": "DLC_REVOCATION", "metadata": {"9sa2ocebdbLWKF4V": {}, "oTTx8prDykfcMuhh": {}, "7Ny4vNLKNPEUNYxj": {}}, "reason": "kMIMKsN1qT06ooms"}, "userIds": ["NWITSbZyARhSMA7V", "49QkTF0MnTxt0mZf", "te0sZNh3J4tmEniI"]}, {"currencyCode": "tRdgdc8lPiRILsqt", "request": {"allowOverdraft": true, "amount": 64, "balanceOrigin": "GooglePlay", "balanceSource": "PAYMENT", "metadata": {"59aQfjixspbxFNbD": {}, "s67wOcjLctfLG4Hi": {}, "xDrjPlygTLniLFze": {}}, "reason": "RP9UK60XswhAIxKf"}, "userIds": ["q9zvtCvSDFgVsyGJ", "Xo4H9j2Sw6lGK0K0", "Ua6eva0wZm4Y1jM1"]}, {"currencyCode": "BB2wKYBW7HBUhzF3", "request": {"allowOverdraft": false, "amount": 27, "balanceOrigin": "Oculus", "balanceSource": "IAP_REVOCATION", "metadata": {"8SqdMtX7FrsVQYDz": {}, "XR7YzU2mvYkYSJQY": {}, "zGjmh3YmMU4HrSHj": {}}, "reason": "LjR9pdblDhy5bdsy"}, "userIds": ["8Nohqqx4axNTnyXQ", "ty4CCQf6op8NSSrT", "wAu2vF1G0xBH7zlO"]}]' \
    > test.out 2>&1
eval_tap $? 295 'BulkDebit' test.out

#- 296 GetWallet
eval_tap 0 296 'GetWallet # SKIP deprecated' test.out

#- 297 SyncOrders
samples/cli/sample-apps Platform syncOrders \
    --nextEvaluatedKey 'sTel6eDq1cXkPd1e' \
    --end 'C8aSi7ifIKBHaTM8' \
    --start '1kDwJM92ePerdqZk' \
    > test.out 2>&1
eval_tap $? 297 'SyncOrders' test.out

#- 298 TestAdyenConfig
samples/cli/sample-apps Platform testAdyenConfig \
    --sandbox 'false' \
    --body '{"allowedPaymentMethods": ["iVgd7Wn0SscyQ3SE", "PCtqqKy47Ko3G4tB", "5IXW9nMJA7TjAB1i"], "apiKey": "rXueHBCQ25kkAgdc", "authoriseAsCapture": true, "blockedPaymentMethods": ["rporJYoJkaL8Lay8", "bvS6FgR6YVcq25TO", "FnvsW6yRfioPy7x6"], "clientKey": "mqRuwCZHaQG6TIKH", "dropInSettings": "gZxLZLenAHN4Q1Bc", "liveEndpointUrlPrefix": "sPEJVZZjGhBUMN6X", "merchantAccount": "pGgQFXbHLVPSpkKo", "notificationHmacKey": "uFg9GHTfPpCWwwCl", "notificationPassword": "vVUJrQqvAFb0K9z5", "notificationUsername": "FwKjoMg3UQS1IXCr", "returnUrl": "VmdxgiHnDQ3QdYke", "settings": "5N4Im1Cb8CRL6OXu"}' \
    > test.out 2>&1
eval_tap $? 298 'TestAdyenConfig' test.out

#- 299 TestAliPayConfig
samples/cli/sample-apps Platform testAliPayConfig \
    --sandbox 'false' \
    --body '{"appId": "geOuLFza6jN8YnLk", "privateKey": "RmjLGX30dMiBEpY6", "publicKey": "vB7DpJAuqtDrpYnr", "returnUrl": "tc3hbReHSPU5Vwt3"}' \
    > test.out 2>&1
eval_tap $? 299 'TestAliPayConfig' test.out

#- 300 TestCheckoutConfig
samples/cli/sample-apps Platform testCheckoutConfig \
    --sandbox 'true' \
    --body '{"publicKey": "apJxSOuhmKp2FXQf", "secretKey": "DWbgszvJsDIX5jn3"}' \
    > test.out 2>&1
eval_tap $? 300 'TestCheckoutConfig' test.out

#- 301 DebugMatchedPaymentMerchantConfig
samples/cli/sample-apps Platform debugMatchedPaymentMerchantConfig \
    --namespace 'aMHsNuwlXEq7bgb5' \
    --region 'iYJl6fg3vKmKuN5F' \
    > test.out 2>&1
eval_tap $? 301 'DebugMatchedPaymentMerchantConfig' test.out

#- 302 TestPayPalConfig
samples/cli/sample-apps Platform testPayPalConfig \
    --sandbox 'true' \
    --body '{"clientID": "N1seUXB2cw0kr03e", "clientSecret": "XY7q9A9GTRdHvmhb", "returnUrl": "lkZmo9FVMaYwXz6Z", "webHookId": "YnQIiiAKGTuL8lJR"}' \
    > test.out 2>&1
eval_tap $? 302 'TestPayPalConfig' test.out

#- 303 TestStripeConfig
samples/cli/sample-apps Platform testStripeConfig \
    --sandbox 'true' \
    --body '{"allowedPaymentMethodTypes": ["hMcxDzypPxX859N1", "ZHT8F0MvvUa3riBw", "Qbl9Gx19aABcfiY0"], "publishableKey": "m1Lv6otT3o4dfFAm", "secretKey": "OYzq9dQ7rI8FoNfL", "webhookSecret": "LPc68GUHrZs8TF0w"}' \
    > test.out 2>&1
eval_tap $? 303 'TestStripeConfig' test.out

#- 304 TestWxPayConfig
samples/cli/sample-apps Platform testWxPayConfig \
    --body '{"appId": "BEegHj4J8bRz41gX", "key": "WUpzOpcr4qJSZnaf", "mchid": "qeH24cW3JRuniZ9U", "returnUrl": "rSP5StpiSWZxRtaS"}' \
    > test.out 2>&1
eval_tap $? 304 'TestWxPayConfig' test.out

#- 305 TestXsollaConfig
samples/cli/sample-apps Platform testXsollaConfig \
    --body '{"apiKey": "Aj52J7d8DN8FCOaX", "flowCompletionUrl": "X29mYoybybw6rC71", "merchantId": 26, "projectId": 58, "projectSecretKey": "TxTMESlVU8AwrrAk"}' \
    > test.out 2>&1
eval_tap $? 305 'TestXsollaConfig' test.out

#- 306 GetPaymentMerchantConfig
samples/cli/sample-apps Platform getPaymentMerchantConfig \
    --id 'cozCmA7ZjjQg4iAS' \
    > test.out 2>&1
eval_tap $? 306 'GetPaymentMerchantConfig' test.out

#- 307 UpdateAdyenConfig
samples/cli/sample-apps Platform updateAdyenConfig \
    --id 'HNS3xdCGBjVargOp' \
    --sandbox 'false' \
    --validate 'false' \
    --body '{"allowedPaymentMethods": ["xPHF4mfAnmGPbJht", "EhbSVbNCbKDWdj32", "qU1gxolYOW1CKkJE"], "apiKey": "J8lhjshAG2HDinRi", "authoriseAsCapture": false, "blockedPaymentMethods": ["BuaB7glJYquexO21", "SwTERicU1k0p5aDc", "TcpE1Ewfq3yTbgXo"], "clientKey": "0q2M5eAVBF57zVYj", "dropInSettings": "OFbcQwjdO8jghzQD", "liveEndpointUrlPrefix": "KPixu0ef6D5AL2qK", "merchantAccount": "YepmQoXn75amboQJ", "notificationHmacKey": "CJS39nmtvOkQRyGe", "notificationPassword": "y7SJr6niFWWdVGZJ", "notificationUsername": "GnUB1IwL8Uu0t1DO", "returnUrl": "9H0YUaR7ktsmYG5V", "settings": "9PE2aigUInBgdxSW"}' \
    > test.out 2>&1
eval_tap $? 307 'UpdateAdyenConfig' test.out

#- 308 TestAdyenConfigById
samples/cli/sample-apps Platform testAdyenConfigById \
    --id 'ymrvVsRvWufgG4Hy' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 308 'TestAdyenConfigById' test.out

#- 309 UpdateAliPayConfig
samples/cli/sample-apps Platform updateAliPayConfig \
    --id 'PXoZI5dpoSheCaQO' \
    --sandbox 'true' \
    --validate 'false' \
    --body '{"appId": "fwPE97CizOuXhswe", "privateKey": "MSeRthtkunz9Xh0H", "publicKey": "tfdCmkOiDTsUkR95", "returnUrl": "Q4vv30VenLBVQfxd"}' \
    > test.out 2>&1
eval_tap $? 309 'UpdateAliPayConfig' test.out

#- 310 TestAliPayConfigById
samples/cli/sample-apps Platform testAliPayConfigById \
    --id 'IKKE4XDbwyyf9WQM' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 310 'TestAliPayConfigById' test.out

#- 311 UpdateCheckoutConfig
samples/cli/sample-apps Platform updateCheckoutConfig \
    --id 'QES94xwa41tgS2N4' \
    --sandbox 'true' \
    --validate 'false' \
    --body '{"publicKey": "rV8IcRZxntZxFCDh", "secretKey": "HzIfi5iXPoQZ9Wcn"}' \
    > test.out 2>&1
eval_tap $? 311 'UpdateCheckoutConfig' test.out

#- 312 TestCheckoutConfigById
samples/cli/sample-apps Platform testCheckoutConfigById \
    --id 'sOnyscUdaH97dUF4' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 312 'TestCheckoutConfigById' test.out

#- 313 UpdatePayPalConfig
samples/cli/sample-apps Platform updatePayPalConfig \
    --id 'FoWZoXIvlP12jmuO' \
    --sandbox 'false' \
    --validate 'true' \
    --body '{"clientID": "3kqy1lChsBigkaj1", "clientSecret": "E4CJGuXCFCDFSwVr", "returnUrl": "ZdOqoXMrtj9gr8xg", "webHookId": "sTMtCbHYelvLZGYX"}' \
    > test.out 2>&1
eval_tap $? 313 'UpdatePayPalConfig' test.out

#- 314 TestPayPalConfigById
samples/cli/sample-apps Platform testPayPalConfigById \
    --id 'Qmd39z9SwltF0fWN' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 314 'TestPayPalConfigById' test.out

#- 315 UpdateStripeConfig
samples/cli/sample-apps Platform updateStripeConfig \
    --id 'DAUyCFd7Tdg500N6' \
    --sandbox 'false' \
    --validate 'true' \
    --body '{"allowedPaymentMethodTypes": ["GuYJ4abrhNP8dpcG", "vMEhYgvg3Me5DFaX", "8qo9Q0wTQJ98rJMD"], "publishableKey": "MkpbvcvjNrGPJJPP", "secretKey": "EZmKKQjAoA1UIctL", "webhookSecret": "vi5T97fsBPT00n68"}' \
    > test.out 2>&1
eval_tap $? 315 'UpdateStripeConfig' test.out

#- 316 TestStripeConfigById
samples/cli/sample-apps Platform testStripeConfigById \
    --id 'Yu29S9vdCsoogXbO' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 316 'TestStripeConfigById' test.out

#- 317 UpdateWxPayConfig
samples/cli/sample-apps Platform updateWxPayConfig \
    --id 'VSnqmA1a5sj4IbX9' \
    --validate 'false' \
    --body '{"appId": "WSsPfo1fZPr1RDM3", "key": "dAthI1x2KDCrvIEg", "mchid": "Q5BeOB6bNNFZScJP", "returnUrl": "bkRGBmTThAzIGMOS"}' \
    > test.out 2>&1
eval_tap $? 317 'UpdateWxPayConfig' test.out

#- 318 UpdateWxPayConfigCert
samples/cli/sample-apps Platform updateWxPayConfigCert \
    --id 'FsBG8mXyClWoUrjp' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 318 'UpdateWxPayConfigCert' test.out

#- 319 TestWxPayConfigById
samples/cli/sample-apps Platform testWxPayConfigById \
    --id 'IzRDGVU2W4q3KKYt' \
    > test.out 2>&1
eval_tap $? 319 'TestWxPayConfigById' test.out

#- 320 UpdateXsollaConfig
samples/cli/sample-apps Platform updateXsollaConfig \
    --id 'RyDBhYFyOL1quo5O' \
    --validate 'false' \
    --body '{"apiKey": "6BQ1W0IuX5GZr7Zw", "flowCompletionUrl": "YvhT6c8fSfWOAr95", "merchantId": 64, "projectId": 8, "projectSecretKey": "hIMg6hmRHQjPy4ci"}' \
    > test.out 2>&1
eval_tap $? 320 'UpdateXsollaConfig' test.out

#- 321 TestXsollaConfigById
samples/cli/sample-apps Platform testXsollaConfigById \
    --id 'nyKSoDkpbztOhYWC' \
    > test.out 2>&1
eval_tap $? 321 'TestXsollaConfigById' test.out

#- 322 UpdateXsollaUIConfig
samples/cli/sample-apps Platform updateXsollaUIConfig \
    --id 'FnllF6uKIYerzwHp' \
    --body '{"device": "DESKTOP", "showCloseButton": false, "size": "LARGE", "theme": "DEFAULT"}' \
    > test.out 2>&1
eval_tap $? 322 'UpdateXsollaUIConfig' test.out

#- 323 QueryPaymentProviderConfig
samples/cli/sample-apps Platform queryPaymentProviderConfig \
    --limit '45' \
    --namespace '47jFXQwAV8BIf9Bq' \
    --offset '91' \
    --region '8gMqt7N6PLKmAk9V' \
    > test.out 2>&1
eval_tap $? 323 'QueryPaymentProviderConfig' test.out

#- 324 CreatePaymentProviderConfig
samples/cli/sample-apps Platform createPaymentProviderConfig \
    --body '{"aggregate": "ADYEN", "namespace": "DcC7OHxtuFZk3Rrb", "region": "EnF3mcrWIKtpgnjx", "sandboxTaxJarApiToken": "vypMBQKNVZFxQn3K", "specials": ["CHECKOUT", "WALLET", "XSOLLA"], "taxJarApiToken": "RV7lhryt3AaWPtpF", "taxJarEnabled": true, "useGlobalTaxJarApiToken": true}' \
    > test.out 2>&1
eval_tap $? 324 'CreatePaymentProviderConfig' test.out

#- 325 GetAggregatePaymentProviders
samples/cli/sample-apps Platform getAggregatePaymentProviders \
    > test.out 2>&1
eval_tap $? 325 'GetAggregatePaymentProviders' test.out

#- 326 DebugMatchedPaymentProviderConfig
samples/cli/sample-apps Platform debugMatchedPaymentProviderConfig \
    --namespace 'Dm0VWr67r3Dj2pXI' \
    --region 'mhLitBSXn5gkCLPZ' \
    > test.out 2>&1
eval_tap $? 326 'DebugMatchedPaymentProviderConfig' test.out

#- 327 GetSpecialPaymentProviders
samples/cli/sample-apps Platform getSpecialPaymentProviders \
    > test.out 2>&1
eval_tap $? 327 'GetSpecialPaymentProviders' test.out

#- 328 UpdatePaymentProviderConfig
samples/cli/sample-apps Platform updatePaymentProviderConfig \
    --id '0LqryfE2JimSJE8c' \
    --body '{"aggregate": "ADYEN", "namespace": "YNGJaA6aJGlTH6MV", "region": "L8iRCSKl1unPoxNQ", "sandboxTaxJarApiToken": "Aa5feTi572uJTpT9", "specials": ["PAYPAL", "ALIPAY", "XSOLLA"], "taxJarApiToken": "AHZHHkDNpF65RpL6", "taxJarEnabled": false, "useGlobalTaxJarApiToken": false}' \
    > test.out 2>&1
eval_tap $? 328 'UpdatePaymentProviderConfig' test.out

#- 329 DeletePaymentProviderConfig
samples/cli/sample-apps Platform deletePaymentProviderConfig \
    --id 'EF7U9A4MyBI0W150' \
    > test.out 2>&1
eval_tap $? 329 'DeletePaymentProviderConfig' test.out

#- 330 GetPaymentTaxConfig
samples/cli/sample-apps Platform getPaymentTaxConfig \
    > test.out 2>&1
eval_tap $? 330 'GetPaymentTaxConfig' test.out

#- 331 UpdatePaymentTaxConfig
samples/cli/sample-apps Platform updatePaymentTaxConfig \
    --body '{"sandboxTaxJarApiToken": "O1EP4U6G2HMhzHiE", "taxJarApiToken": "r7XE7wAV10ziW6WP", "taxJarEnabled": false, "taxJarProductCodesMapping": {"mksokfdnGRejP2cG": "46TeQlniK7a6Y8KF", "K9CQOigGD77eBLno": "mR5B9p0d2wdv9RuM", "lvUBYoI2zQ2j3yPW": "5exB5eRp42FXA6Fw"}}' \
    > test.out 2>&1
eval_tap $? 331 'UpdatePaymentTaxConfig' test.out

#- 332 SyncPaymentOrders
samples/cli/sample-apps Platform syncPaymentOrders \
    --nextEvaluatedKey '8HyEe26gMewYmmAa' \
    --end 'KuFzNRvjqCBxWo41' \
    --start 'ruAkRHXbeEa3w1Qd' \
    > test.out 2>&1
eval_tap $? 332 'SyncPaymentOrders' test.out

#- 333 PublicGetRootCategories
samples/cli/sample-apps Platform publicGetRootCategories \
    --namespace $AB_NAMESPACE \
    --language '7cbSw18qZ396ooSV' \
    --storeId 'e8HTtFY6bZUGilok' \
    > test.out 2>&1
eval_tap $? 333 'PublicGetRootCategories' test.out

#- 334 DownloadCategories
samples/cli/sample-apps Platform downloadCategories \
    --namespace $AB_NAMESPACE \
    --language 'yMFFrOumH6gIv91O' \
    --storeId 'WGgxOqeXPtLdZYQP' \
    > test.out 2>&1
eval_tap $? 334 'DownloadCategories' test.out

#- 335 PublicGetCategory
samples/cli/sample-apps Platform publicGetCategory \
    --categoryPath 'Oh6UcnVE8RAnWqDO' \
    --namespace $AB_NAMESPACE \
    --language 'htn5X2Eo7y9yDv8P' \
    --storeId 'uqho2w4uwkYYdVXd' \
    > test.out 2>&1
eval_tap $? 335 'PublicGetCategory' test.out

#- 336 PublicGetChildCategories
samples/cli/sample-apps Platform publicGetChildCategories \
    --categoryPath 'xcRcWZeqi1NDA5D6' \
    --namespace $AB_NAMESPACE \
    --language 'WJXnJfikL4O9Ropp' \
    --storeId 'pCGyBoXcIAYVcgpg' \
    > test.out 2>&1
eval_tap $? 336 'PublicGetChildCategories' test.out

#- 337 PublicGetDescendantCategories
samples/cli/sample-apps Platform publicGetDescendantCategories \
    --categoryPath 'REGiNboTBdHOoS5b' \
    --namespace $AB_NAMESPACE \
    --language 'UntPWfIGj5N9rBOf' \
    --storeId '04PA9nfHJl9Iy0vN' \
    > test.out 2>&1
eval_tap $? 337 'PublicGetDescendantCategories' test.out

#- 338 PublicListCurrencies
samples/cli/sample-apps Platform publicListCurrencies \
    --namespace $AB_NAMESPACE \
    --currencyType 'VIRTUAL' \
    > test.out 2>&1
eval_tap $? 338 'PublicListCurrencies' test.out

#- 339 GeDLCDurableRewardShortMap
samples/cli/sample-apps Platform geDLCDurableRewardShortMap \
    --namespace $AB_NAMESPACE \
    --dlcType 'PSN' \
    > test.out 2>&1
eval_tap $? 339 'GeDLCDurableRewardShortMap' test.out

#- 340 GetIAPItemMapping
samples/cli/sample-apps Platform getIAPItemMapping \
    --namespace $AB_NAMESPACE \
    --platform 'GOOGLE' \
    > test.out 2>&1
eval_tap $? 340 'GetIAPItemMapping' test.out

#- 341 PublicGetItemByAppId
samples/cli/sample-apps Platform publicGetItemByAppId \
    --namespace $AB_NAMESPACE \
    --language 'E9i5Ip18oGnJ41Pm' \
    --region 'ndP2T8a1zesjKizb' \
    --storeId 'EJXqaKymxJlCwdFe' \
    --appId '89WTka0ogD2Z5Aa7' \
    > test.out 2>&1
eval_tap $? 341 'PublicGetItemByAppId' test.out

#- 342 PublicQueryItems
samples/cli/sample-apps Platform publicQueryItems \
    --namespace $AB_NAMESPACE \
    --appType 'DLC' \
    --baseAppId 'HZOCXzpnrhcyNaKl' \
    --categoryPath 'Dbmxl4fGEdCQ2a3l' \
    --features 'U8zX2WqoDw4vKNhQ' \
    --includeSubCategoryItem 'true' \
    --itemType 'APP' \
    --language 'l1yzrQ6qvH4AVYtR' \
    --limit '19' \
    --offset '44' \
    --region '8cKco8gLhwXbN7ao' \
    --sortBy '["updatedAt", "displayOrder", "name:asc"]' \
    --storeId 'd6sootZD8efcIGMi' \
    --tags 'QoGjZxvjj5MOYRVS' \
    > test.out 2>&1
eval_tap $? 342 'PublicQueryItems' test.out

#- 343 PublicGetItemBySku
samples/cli/sample-apps Platform publicGetItemBySku \
    --namespace $AB_NAMESPACE \
    --language 'JrDSHKqbSoQrXZeP' \
    --region 'cijhIS3866Op9NYZ' \
    --storeId '8ZlClAtosPA13ast' \
    --sku 'cCeJV7yqPVdEGx8H' \
    > test.out 2>&1
eval_tap $? 343 'PublicGetItemBySku' test.out

#- 344 PublicGetEstimatedPrice
samples/cli/sample-apps Platform publicGetEstimatedPrice \
    --namespace $AB_NAMESPACE \
    --region '3w4BCP342HZjA4Rr' \
    --storeId 'bYNC4bwwctsfc7Lk' \
    --itemIds 'BUSwfcXHQ4rjLfnp' \
    > test.out 2>&1
eval_tap $? 344 'PublicGetEstimatedPrice' test.out

#- 345 PublicBulkGetItems
samples/cli/sample-apps Platform publicBulkGetItems \
    --namespace $AB_NAMESPACE \
    --language '0zSwAXyZYFya76at' \
    --region 'DzKUqfo9qymyEHLK' \
    --storeId 'bt1g8SJNliCh9wwI' \
    --itemIds '6zakDwolf9E6l4Gq' \
    > test.out 2>&1
eval_tap $? 345 'PublicBulkGetItems' test.out

#- 346 PublicValidateItemPurchaseCondition
samples/cli/sample-apps Platform publicValidateItemPurchaseCondition \
    --namespace $AB_NAMESPACE \
    --body '{"itemIds": ["L6aDhZDoBKGmM5zR", "ziNUA1Ps47gp10Pr", "Omv9877P067ocFeX"]}' \
    > test.out 2>&1
eval_tap $? 346 'PublicValidateItemPurchaseCondition' test.out

#- 347 PublicSearchItems
samples/cli/sample-apps Platform publicSearchItems \
    --namespace $AB_NAMESPACE \
    --itemType 'EXTENSION' \
    --limit '10' \
    --offset '69' \
    --region 'e8OaYMsBSUcpFHco' \
    --storeId 'nU5a1N2ybSg0Kygd' \
    --keyword 'L2YcUXeyr2lZfd6n' \
    --language 'sB2EgDFTWnRHkIdO' \
    > test.out 2>&1
eval_tap $? 347 'PublicSearchItems' test.out

#- 348 PublicGetApp
samples/cli/sample-apps Platform publicGetApp \
    --itemId 'VNFBTtWGFAOyaFxZ' \
    --namespace $AB_NAMESPACE \
    --language 'xAnU03aQ3lqeHAn0' \
    --region 'YWEeefY5U4K4ZX8o' \
    --storeId 'APYc6U7III1lSpCq' \
    > test.out 2>&1
eval_tap $? 348 'PublicGetApp' test.out

#- 349 PublicGetItemDynamicData
samples/cli/sample-apps Platform publicGetItemDynamicData \
    --itemId 'jd2f1YGrUXyw5J6r' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 349 'PublicGetItemDynamicData' test.out

#- 350 PublicGetItem
samples/cli/sample-apps Platform publicGetItem \
    --itemId 'yT05gOBH8Ch1R4cj' \
    --namespace $AB_NAMESPACE \
    --language 'bAM6fMBhe2JwTOP0' \
    --populateBundle 'false' \
    --region 'dj8WCNd5sXRvyYKJ' \
    --storeId '9oCdaQHaJBYXe93a' \
    > test.out 2>&1
eval_tap $? 350 'PublicGetItem' test.out

#- 351 GetPaymentCustomization
eval_tap 0 351 'GetPaymentCustomization # SKIP deprecated' test.out

#- 352 PublicGetPaymentUrl
samples/cli/sample-apps Platform publicGetPaymentUrl \
    --namespace $AB_NAMESPACE \
    --body '{"paymentOrderNo": "jsjdVCVFJT8uIzqf", "paymentProvider": "CHECKOUT", "returnUrl": "GBumFohSlIwhHyr7", "ui": "YfBf0UhTEJhfTz35", "zipCode": "dQOZqUMRvWAgDwRJ"}' \
    > test.out 2>&1
eval_tap $? 352 'PublicGetPaymentUrl' test.out

#- 353 PublicGetPaymentMethods
samples/cli/sample-apps Platform publicGetPaymentMethods \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'NN5KvKIx8evIG0Zh' \
    > test.out 2>&1
eval_tap $? 353 'PublicGetPaymentMethods' test.out

#- 354 PublicGetUnpaidPaymentOrder
samples/cli/sample-apps Platform publicGetUnpaidPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'XI23zMK6WfgDmkQs' \
    > test.out 2>&1
eval_tap $? 354 'PublicGetUnpaidPaymentOrder' test.out

#- 355 Pay
samples/cli/sample-apps Platform pay \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo '8OqR5wAu5Jhw8e9L' \
    --paymentProvider 'ALIPAY' \
    --zipCode 'RYgQ7X0ez8ryMwxa' \
    --body '{"token": "RvyNECtOx7XY1e5w"}' \
    > test.out 2>&1
eval_tap $? 355 'Pay' test.out

#- 356 PublicCheckPaymentOrderPaidStatus
samples/cli/sample-apps Platform publicCheckPaymentOrderPaidStatus \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'juoGNIgKARAPRXd5' \
    > test.out 2>&1
eval_tap $? 356 'PublicCheckPaymentOrderPaidStatus' test.out

#- 357 GetPaymentPublicConfig
samples/cli/sample-apps Platform getPaymentPublicConfig \
    --namespace $AB_NAMESPACE \
    --sandbox 'true' \
    --paymentProvider 'ADYEN' \
    --region '4Va5SKGgWPZ9af7H' \
    > test.out 2>&1
eval_tap $? 357 'GetPaymentPublicConfig' test.out

#- 358 PublicGetQRCode
samples/cli/sample-apps Platform publicGetQRCode \
    --namespace $AB_NAMESPACE \
    --code 'UpUlVHa6h3h6dMhp' \
    > test.out 2>&1
eval_tap $? 358 'PublicGetQRCode' test.out

#- 359 PublicNormalizePaymentReturnUrl
samples/cli/sample-apps Platform publicNormalizePaymentReturnUrl \
    --namespace $AB_NAMESPACE \
    --payerID 'TECdtL5qaKydU296' \
    --foreinginvoice '6BofwlaxpJJd1F78' \
    --invoiceId 'gDKH3BShmfGwstYk' \
    --payload 'N5D32mdKnW4LRjNh' \
    --redirectResult 'moXIMDTeJbXokuzI' \
    --resultCode 'dk4XQLMYXKAzzjrW' \
    --sessionId 'LSILJWB1Y1ODr3cn' \
    --status 'kATcnevhVAtOdP3E' \
    --token 'z22uO0uAKaHYFhh4' \
    --type '5wE5f3FlrxthV6KS' \
    --userId '5CQifBIyAWSa0hUZ' \
    --orderNo 'UYE613HJ0k4LnW5q' \
    --paymentOrderNo '9kbqfKUS62p0Lzz4' \
    --paymentProvider 'WXPAY' \
    --returnUrl '5KXTv08wPaRULtef' \
    > test.out 2>&1
eval_tap $? 359 'PublicNormalizePaymentReturnUrl' test.out

#- 360 GetPaymentTaxValue
samples/cli/sample-apps Platform getPaymentTaxValue \
    --namespace $AB_NAMESPACE \
    --zipCode '6wYLmR9KuDPUTCFQ' \
    --paymentOrderNo 'j1IqWKraAA62FFx8' \
    --paymentProvider 'XSOLLA' \
    > test.out 2>&1
eval_tap $? 360 'GetPaymentTaxValue' test.out

#- 361 GetRewardByCode
samples/cli/sample-apps Platform getRewardByCode \
    --namespace $AB_NAMESPACE \
    --rewardCode '6rM7JIiiuSEO5a1M' \
    > test.out 2>&1
eval_tap $? 361 'GetRewardByCode' test.out

#- 362 QueryRewards1
samples/cli/sample-apps Platform queryRewards1 \
    --namespace $AB_NAMESPACE \
    --eventTopic 'KyHoGKcZbwLlIne3' \
    --limit '47' \
    --offset '60' \
    --sortBy '["namespace:asc", "namespace", "rewardCode:asc"]' \
    > test.out 2>&1
eval_tap $? 362 'QueryRewards1' test.out

#- 363 GetReward1
samples/cli/sample-apps Platform getReward1 \
    --namespace $AB_NAMESPACE \
    --rewardId 'Ffn0p0Ltqs4YlsWx' \
    > test.out 2>&1
eval_tap $? 363 'GetReward1' test.out

#- 364 PublicListStores
samples/cli/sample-apps Platform publicListStores \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 364 'PublicListStores' test.out

#- 365 PublicExistsAnyMyActiveEntitlement
samples/cli/sample-apps Platform publicExistsAnyMyActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --appIds '["JZ5Kj23zoN5DDdod", "fMRNoaJszuQlGXqc", "jQuQ5KCMxXI88uxK"]' \
    --itemIds '["LWBeEZzaUnkisPnu", "bLPsSZKhix5X0ESz", "1lWNqTo7kliQI6TX"]' \
    --skus '["xqJFnNvoUIaDA8bA", "LAPmoJyzUaZKwHZX", "RJULDOVf0Sfkc3SY"]' \
    > test.out 2>&1
eval_tap $? 365 'PublicExistsAnyMyActiveEntitlement' test.out

#- 366 PublicGetMyAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform publicGetMyAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --appId 'OMtUzfJDzZ3T0jEy' \
    > test.out 2>&1
eval_tap $? 366 'PublicGetMyAppEntitlementOwnershipByAppId' test.out

#- 367 PublicGetMyEntitlementOwnershipByItemId
samples/cli/sample-apps Platform publicGetMyEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --entitlementClazz 'CODE' \
    --itemId 'jiiPMmMAdkFosmaS' \
    > test.out 2>&1
eval_tap $? 367 'PublicGetMyEntitlementOwnershipByItemId' test.out

#- 368 PublicGetMyEntitlementOwnershipBySku
samples/cli/sample-apps Platform publicGetMyEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --entitlementClazz 'SUBSCRIPTION' \
    --sku 'kfL6LHU4FfTilml8' \
    > test.out 2>&1
eval_tap $? 368 'PublicGetMyEntitlementOwnershipBySku' test.out

#- 369 PublicGetEntitlementOwnershipToken
samples/cli/sample-apps Platform publicGetEntitlementOwnershipToken \
    --namespace $AB_NAMESPACE \
    --appIds '["bMzVPLCIQIhIh0qn", "3q5YkFBRmZoySU9r", "5KU3F9fJwZjoFixg"]' \
    --itemIds '["kNBfegWO5fANnBzE", "NUJtERXlzP8HBq5T", "NNeUTtor1h0RDCHc"]' \
    --skus '["4OSn0t6uCIW4Padn", "PdAU1AjGxlz8v6qo", "Mqkwe8QYP1BZtgIJ"]' \
    > test.out 2>&1
eval_tap $? 369 'PublicGetEntitlementOwnershipToken' test.out

#- 370 SyncTwitchDropsEntitlement
samples/cli/sample-apps Platform syncTwitchDropsEntitlement \
    --namespace $AB_NAMESPACE \
    --body '{"gameId": "r7dEy2W48SDZH1uG", "language": "hFm-TMVf_725", "region": "IDiT0lbasKxJb7HB"}' \
    > test.out 2>&1
eval_tap $? 370 'SyncTwitchDropsEntitlement' test.out

#- 371 PublicGetMyWallet
samples/cli/sample-apps Platform publicGetMyWallet \
    --currencyCode 'CkfZD825QzlKmAkR' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 371 'PublicGetMyWallet' test.out

#- 372 SyncEpicGameDLC
samples/cli/sample-apps Platform syncEpicGameDLC \
    --namespace $AB_NAMESPACE \
    --userId '8w15xxr7ByFN9Iyr' \
    --body '{"epicGamesJwtToken": "qFn0RsmcllPNeubx"}' \
    > test.out 2>&1
eval_tap $? 372 'SyncEpicGameDLC' test.out

#- 373 SyncOculusDLC
samples/cli/sample-apps Platform syncOculusDLC \
    --namespace $AB_NAMESPACE \
    --userId 'kdQH2vay8vZQY5SV' \
    > test.out 2>&1
eval_tap $? 373 'SyncOculusDLC' test.out

#- 374 PublicSyncPsnDlcInventory
samples/cli/sample-apps Platform publicSyncPsnDlcInventory \
    --namespace $AB_NAMESPACE \
    --userId 'SwlESd6shzz29RGn' \
    --body '{"serviceLabel": 75}' \
    > test.out 2>&1
eval_tap $? 374 'PublicSyncPsnDlcInventory' test.out

#- 375 PublicSyncPsnDlcInventoryWithMultipleServiceLabels
samples/cli/sample-apps Platform publicSyncPsnDlcInventoryWithMultipleServiceLabels \
    --namespace $AB_NAMESPACE \
    --userId 'wyRvDbwNRDnqeuND' \
    --body '{"serviceLabels": [8, 27, 71]}' \
    > test.out 2>&1
eval_tap $? 375 'PublicSyncPsnDlcInventoryWithMultipleServiceLabels' test.out

#- 376 SyncSteamDLC
samples/cli/sample-apps Platform syncSteamDLC \
    --namespace $AB_NAMESPACE \
    --userId 'mnZkUqI0LQw8vCLO' \
    --body '{"appId": "pAfZIzrXgKYczoSk", "steamId": "dAXRz6OU9Dln6enh"}' \
    > test.out 2>&1
eval_tap $? 376 'SyncSteamDLC' test.out

#- 377 SyncXboxDLC
samples/cli/sample-apps Platform syncXboxDLC \
    --namespace $AB_NAMESPACE \
    --userId 'LkDwCotwTxTDj134' \
    --body '{"xstsToken": "L4sfhG2yQMPCLzzx"}' \
    > test.out 2>&1
eval_tap $? 377 'SyncXboxDLC' test.out

#- 378 PublicQueryUserEntitlements
samples/cli/sample-apps Platform publicQueryUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'udupWt4GLMN9Rc1h' \
    --appType 'DEMO' \
    --entitlementClazz 'OPTIONBOX' \
    --entitlementName 'JvduiEw0ohUSCUL2' \
    --features '["sNoqG7myPSeRfl65", "tZBiTqrXgEahBRCi", "JAVFOehy59yeKoFH"]' \
    --itemId '["vINckuTS2mbNNQDN", "5PfDLqnI4ZAGI3Ga", "N19PvD1cvYPVytM5"]' \
    --limit '5' \
    --offset '76' \
    > test.out 2>&1
eval_tap $? 378 'PublicQueryUserEntitlements' test.out

#- 379 PublicGetUserAppEntitlementByAppId
samples/cli/sample-apps Platform publicGetUserAppEntitlementByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'Abv1dmha5Plenqvc' \
    --appId 'ljfHJzzOLcRtRXNh' \
    > test.out 2>&1
eval_tap $? 379 'PublicGetUserAppEntitlementByAppId' test.out

#- 380 PublicQueryUserEntitlementsByAppType
samples/cli/sample-apps Platform publicQueryUserEntitlementsByAppType \
    --namespace $AB_NAMESPACE \
    --userId '69l3EAkghAScDcl7' \
    --limit '59' \
    --offset '58' \
    --appType 'GAME' \
    > test.out 2>&1
eval_tap $? 380 'PublicQueryUserEntitlementsByAppType' test.out

#- 381 PublicGetUserEntitlementByItemId
samples/cli/sample-apps Platform publicGetUserEntitlementByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'QWFdQr7em8tkA6GF' \
    --entitlementClazz 'LOOTBOX' \
    --itemId 'AyBrJII4p5P4NiMO' \
    > test.out 2>&1
eval_tap $? 381 'PublicGetUserEntitlementByItemId' test.out

#- 382 PublicGetUserEntitlementBySku
samples/cli/sample-apps Platform publicGetUserEntitlementBySku \
    --namespace $AB_NAMESPACE \
    --userId 'VetH55dX2svaH05J' \
    --entitlementClazz 'APP' \
    --sku '6eyEeMgBE5fjRelp' \
    > test.out 2>&1
eval_tap $? 382 'PublicGetUserEntitlementBySku' test.out

#- 383 PublicExistsAnyUserActiveEntitlement
samples/cli/sample-apps Platform publicExistsAnyUserActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'LKLz8dn7lXSFXFUD' \
    --appIds '["YgNVJydI35itaZYH", "Jiy1MRk65jtJh0F0", "mFuCm1UWQG1Z5Y9e"]' \
    --itemIds '["GaAQTe7Pe5mVI6Fs", "1jNOYGgkVcKInm8O", "3tFIKggxwZn8UPIO"]' \
    --skus '["6WhHQrjZfn22LiGY", "3gpYlejL9wjL4JHy", "kAovSEvNHTJuWfJL"]' \
    > test.out 2>&1
eval_tap $? 383 'PublicExistsAnyUserActiveEntitlement' test.out

#- 384 PublicGetUserAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform publicGetUserAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'sY88yoZb1hMhGlPF' \
    --appId '3ZLruWIyeekqVzfn' \
    > test.out 2>&1
eval_tap $? 384 'PublicGetUserAppEntitlementOwnershipByAppId' test.out

#- 385 PublicGetUserEntitlementOwnershipByItemId
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'I89e1CgFvt17gKOU' \
    --entitlementClazz 'CODE' \
    --itemId 'SKEODEgn4eiMKYPI' \
    > test.out 2>&1
eval_tap $? 385 'PublicGetUserEntitlementOwnershipByItemId' test.out

#- 386 PublicGetUserEntitlementOwnershipByItemIds
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'X0P0Lvc2mzCr0tSD' \
    --ids '["xvZMfcy17GQ2sll3", "fu8hUELmX2ZY6NtX", "EAigQ5r3d4hQuPv9"]' \
    > test.out 2>&1
eval_tap $? 386 'PublicGetUserEntitlementOwnershipByItemIds' test.out

#- 387 PublicGetUserEntitlementOwnershipBySku
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --userId 'ph5ARmTpfKKJbOei' \
    --entitlementClazz 'LOOTBOX' \
    --sku 'MxOvsIinBszvONs0' \
    > test.out 2>&1
eval_tap $? 387 'PublicGetUserEntitlementOwnershipBySku' test.out

#- 388 PublicGetUserEntitlement
samples/cli/sample-apps Platform publicGetUserEntitlement \
    --entitlementId '3OU59AxwHT6LyTik' \
    --namespace $AB_NAMESPACE \
    --userId 'PNg36fvpKyoYO8KP' \
    > test.out 2>&1
eval_tap $? 388 'PublicGetUserEntitlement' test.out

#- 389 PublicConsumeUserEntitlement
samples/cli/sample-apps Platform publicConsumeUserEntitlement \
    --entitlementId 'LKiuHS7YMUvY2PJd' \
    --namespace $AB_NAMESPACE \
    --userId 'nfq4Nhgq7zWlxPnr' \
    --body '{"options": ["4nHk5QQDM1eqrcIe", "whRnQzcsGlV4LNmU", "druqJ6pDdtCLCkoU"], "requestId": "ES3FfN5uI7ASm7vz", "useCount": 52}' \
    > test.out 2>&1
eval_tap $? 389 'PublicConsumeUserEntitlement' test.out

#- 390 PublicSellUserEntitlement
samples/cli/sample-apps Platform publicSellUserEntitlement \
    --entitlementId 'b0wgSwkLBiZAvgni' \
    --namespace $AB_NAMESPACE \
    --userId 'KugNlmGcYaui2l1Y' \
    --body '{"requestId": "C9csLnFChy8Ha25p", "useCount": 43}' \
    > test.out 2>&1
eval_tap $? 390 'PublicSellUserEntitlement' test.out

#- 391 PublicRedeemCode
samples/cli/sample-apps Platform publicRedeemCode \
    --namespace $AB_NAMESPACE \
    --userId 'hypjmmODMVUB7w0A' \
    --body '{"code": "4neNva4lSV1BwUWS", "language": "DPXS-lU", "region": "osMIHy86Ltdw2PBg"}' \
    > test.out 2>&1
eval_tap $? 391 'PublicRedeemCode' test.out

#- 392 PublicFulfillAppleIAPItem
samples/cli/sample-apps Platform publicFulfillAppleIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'W5AWniMbVoio8fAG' \
    --body '{"excludeOldTransactions": false, "language": "bxCO", "productId": "KAa6ZmJTUC7VgwKy", "receiptData": "ESWu7jknbSoagLZ2", "region": "xMBCeshHUt08EtNb", "transactionId": "gtuqbrjWN6TyrJOR"}' \
    > test.out 2>&1
eval_tap $? 392 'PublicFulfillAppleIAPItem' test.out

#- 393 SyncEpicGamesInventory
samples/cli/sample-apps Platform syncEpicGamesInventory \
    --namespace $AB_NAMESPACE \
    --userId 'HDwMNllOC0omUYHB' \
    --body '{"epicGamesJwtToken": "OAluJQW5QHPrx6iD"}' \
    > test.out 2>&1
eval_tap $? 393 'SyncEpicGamesInventory' test.out

#- 394 PublicFulfillGoogleIAPItem
samples/cli/sample-apps Platform publicFulfillGoogleIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'JxgLDkarNwrrqPj4' \
    --body '{"autoAck": true, "language": "qL-970", "orderId": "YBNolnz4N5ex6N6q", "packageName": "VrJ8hXzVxEyxhDtk", "productId": "WVgH2hDHSi2Fmsew", "purchaseTime": 88, "purchaseToken": "jF5sFWwLb6wpAY0r", "region": "PBP8K2HiJ5vIfGGZ"}' \
    > test.out 2>&1
eval_tap $? 394 'PublicFulfillGoogleIAPItem' test.out

#- 395 SyncOculusConsumableEntitlements
samples/cli/sample-apps Platform syncOculusConsumableEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'U4mSyEwCNoLPWqtH' \
    > test.out 2>&1
eval_tap $? 395 'SyncOculusConsumableEntitlements' test.out

#- 396 PublicReconcilePlayStationStore
samples/cli/sample-apps Platform publicReconcilePlayStationStore \
    --namespace $AB_NAMESPACE \
    --userId 'AxhTAWcoK6pC6tnY' \
    --body '{"currencyCode": "enbvv3Vx683jmcBs", "price": 0.6775168183081622, "productId": "8dKhtmHRutjpjXF9", "serviceLabel": 59}' \
    > test.out 2>&1
eval_tap $? 396 'PublicReconcilePlayStationStore' test.out

#- 397 PublicReconcilePlayStationStoreWithMultipleServiceLabels
samples/cli/sample-apps Platform publicReconcilePlayStationStoreWithMultipleServiceLabels \
    --namespace $AB_NAMESPACE \
    --userId 'YwJV9GfJUdaFexLV' \
    --body '{"currencyCode": "tbvPDSiP5MHXdGwN", "price": 0.29386567538362873, "productId": "mRp8Fo3vyyJ9jcW6", "serviceLabels": [11, 26, 83]}' \
    > test.out 2>&1
eval_tap $? 397 'PublicReconcilePlayStationStoreWithMultipleServiceLabels' test.out

#- 398 SyncSteamInventory
samples/cli/sample-apps Platform syncSteamInventory \
    --namespace $AB_NAMESPACE \
    --userId 'Tylfgn4Ei6EcU5vM' \
    --body '{"appId": "sbvcMHZrxigrgrAf", "currencyCode": "FbyZ0YAnRGbwfVgc", "language": "Pyk_758", "price": 0.067288277327196, "productId": "6vKzuvZRkRUNoz72", "region": "Zlht4V5gdWNlXoBm", "steamId": "Fi6fxRqQtRJJhM0R"}' \
    > test.out 2>&1
eval_tap $? 398 'SyncSteamInventory' test.out

#- 399 SyncTwitchDropsEntitlement1
samples/cli/sample-apps Platform syncTwitchDropsEntitlement1 \
    --namespace $AB_NAMESPACE \
    --userId 'dT5GECKMEH5uPudC' \
    --body '{"gameId": "fRKfY9T4b34U6Wt3", "language": "WZy_bhKm", "region": "sgMibgW6sZuP7TWe"}' \
    > test.out 2>&1
eval_tap $? 399 'SyncTwitchDropsEntitlement1' test.out

#- 400 SyncXboxInventory
samples/cli/sample-apps Platform syncXboxInventory \
    --namespace $AB_NAMESPACE \
    --userId 'bH7zDXuCFHZf4jul' \
    --body '{"currencyCode": "dWCu9vakuVgyJ533", "price": 0.5912832855294659, "productId": "yAbvZ1ygek7PCKLU", "xstsToken": "6EMWwCRMEXbFRHZy"}' \
    > test.out 2>&1
eval_tap $? 400 'SyncXboxInventory' test.out

#- 401 PublicQueryUserOrders
samples/cli/sample-apps Platform publicQueryUserOrders \
    --namespace $AB_NAMESPACE \
    --userId '24srrNfecWD4VKII' \
    --itemId '1z5Z70f64BYP7SUc' \
    --limit '93' \
    --offset '44' \
    --status 'REFUNDING' \
    > test.out 2>&1
eval_tap $? 401 'PublicQueryUserOrders' test.out

#- 402 PublicCreateUserOrder
samples/cli/sample-apps Platform publicCreateUserOrder \
    --namespace $AB_NAMESPACE \
    --userId 'SWXkVGdxnYT0XkZZ' \
    --body '{"currencyCode": "z5OI5kcOqN2VetsU", "discountedPrice": 70, "ext": {"KECsDQsDW3EDKsBz": {}, "bVMT5AHS9QJN1zWf": {}, "vdsnGamq0k5v2Clk": {}}, "itemId": "6dmaQolG1n97erU2", "language": "Ssy", "price": 74, "quantity": 32, "region": "j3MGMXSl8mZJxPAb", "returnUrl": "1PQ54yXSc2KtpciI", "sectionId": "lNd6MaVuzYyNYDUG"}' \
    > test.out 2>&1
eval_tap $? 402 'PublicCreateUserOrder' test.out

#- 403 PublicGetUserOrder
samples/cli/sample-apps Platform publicGetUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'Q4S1VQ5ar2sJg5U2' \
    --userId 'lCZrvzabPzV038cX' \
    > test.out 2>&1
eval_tap $? 403 'PublicGetUserOrder' test.out

#- 404 PublicCancelUserOrder
samples/cli/sample-apps Platform publicCancelUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'gO10paDwuhTbws03' \
    --userId 'dUcbg05H49ZPAAcs' \
    > test.out 2>&1
eval_tap $? 404 'PublicCancelUserOrder' test.out

#- 405 PublicGetUserOrderHistories
samples/cli/sample-apps Platform publicGetUserOrderHistories \
    --namespace $AB_NAMESPACE \
    --orderNo 'oDtxDaAgkFJfdXsq' \
    --userId 'ooEKItMxIhIp82Qr' \
    > test.out 2>&1
eval_tap $? 405 'PublicGetUserOrderHistories' test.out

#- 406 PublicDownloadUserOrderReceipt
samples/cli/sample-apps Platform publicDownloadUserOrderReceipt \
    --namespace $AB_NAMESPACE \
    --orderNo 'f0gZOMN4XtuaMMYz' \
    --userId 'tTtVRaNJlHTqV9lp' \
    > test.out 2>&1
eval_tap $? 406 'PublicDownloadUserOrderReceipt' test.out

#- 407 PublicGetPaymentAccounts
samples/cli/sample-apps Platform publicGetPaymentAccounts \
    --namespace $AB_NAMESPACE \
    --userId 'rSVsuPfC8wnyKkgN' \
    > test.out 2>&1
eval_tap $? 407 'PublicGetPaymentAccounts' test.out

#- 408 PublicDeletePaymentAccount
samples/cli/sample-apps Platform publicDeletePaymentAccount \
    --id 'r8Ah3NXqmxiARq8x' \
    --namespace $AB_NAMESPACE \
    --type 'card' \
    --userId 'nqTDV9znNzQHWrTo' \
    > test.out 2>&1
eval_tap $? 408 'PublicDeletePaymentAccount' test.out

#- 409 PublicListActiveSections
samples/cli/sample-apps Platform publicListActiveSections \
    --namespace $AB_NAMESPACE \
    --userId 'AOWpMJdvv1EyRKf7' \
    --language 'SkULkOh9QahZUSmz' \
    --region 'Eo3woKlwLRAwqaw4' \
    --storeId 'gdm2kLKHJyxhNaeZ' \
    --viewId 'iOvv4iAeVjp13Dac' \
    > test.out 2>&1
eval_tap $? 409 'PublicListActiveSections' test.out

#- 410 PublicQueryUserSubscriptions
samples/cli/sample-apps Platform publicQueryUserSubscriptions \
    --namespace $AB_NAMESPACE \
    --userId 'YAH4IW66rG5EY7HK' \
    --chargeStatus 'SETUP' \
    --itemId 'oIF7R7DmSmVErzw8' \
    --limit '40' \
    --offset '36' \
    --sku 'GcK5FIoJxTJUqlhk' \
    --status 'ACTIVE' \
    --subscribedBy 'USER' \
    > test.out 2>&1
eval_tap $? 410 'PublicQueryUserSubscriptions' test.out

#- 411 PublicSubscribeSubscription
samples/cli/sample-apps Platform publicSubscribeSubscription \
    --namespace $AB_NAMESPACE \
    --userId 't5Te7rOkamdNXd4o' \
    --body '{"currencyCode": "vXWn0aInHTXsoSoG", "itemId": "LK0dxqZnUNuppIg8", "language": "lBd_ivmE_072", "region": "Vj8QyiyHn8QQlMcW", "returnUrl": "hLwjXoBHn188CghG", "source": "YUiliLLa6jL99dQX"}' \
    > test.out 2>&1
eval_tap $? 411 'PublicSubscribeSubscription' test.out

#- 412 PublicCheckUserSubscriptionSubscribableByItemId
samples/cli/sample-apps Platform publicCheckUserSubscriptionSubscribableByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'lSUXOmh7aI4W5NXV' \
    --itemId 'kHI4AC3uB7Mo6Lgv' \
    > test.out 2>&1
eval_tap $? 412 'PublicCheckUserSubscriptionSubscribableByItemId' test.out

#- 413 PublicGetUserSubscription
samples/cli/sample-apps Platform publicGetUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'qRSMPaFfYUs1pUe4' \
    --userId 'e2be16YTcwKWkvbz' \
    > test.out 2>&1
eval_tap $? 413 'PublicGetUserSubscription' test.out

#- 414 PublicChangeSubscriptionBillingAccount
samples/cli/sample-apps Platform publicChangeSubscriptionBillingAccount \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'V5ziI7lBdd0I0Nd8' \
    --userId 'ApmjzWhIeACseHog' \
    > test.out 2>&1
eval_tap $? 414 'PublicChangeSubscriptionBillingAccount' test.out

#- 415 PublicCancelSubscription
samples/cli/sample-apps Platform publicCancelSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'wWmSTBygJl0p5jpp' \
    --userId '0ZBFzwYYszXX3GGk' \
    --body '{"immediate": true, "reason": "7J5LETxoHdAcSmGe"}' \
    > test.out 2>&1
eval_tap $? 415 'PublicCancelSubscription' test.out

#- 416 PublicGetUserSubscriptionBillingHistories
samples/cli/sample-apps Platform publicGetUserSubscriptionBillingHistories \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'b8HwXVfllQughKNm' \
    --userId 'sjUmzcIsFz8s7Hoi' \
    --excludeFree 'false' \
    --limit '42' \
    --offset '26' \
    > test.out 2>&1
eval_tap $? 416 'PublicGetUserSubscriptionBillingHistories' test.out

#- 417 PublicListViews
samples/cli/sample-apps Platform publicListViews \
    --namespace $AB_NAMESPACE \
    --userId 'TshIvY11QFxxHJTb' \
    --language 'c2aF1CSD0Ug0y1L2' \
    --storeId 'Jd2g25mh84uL3Dmo' \
    > test.out 2>&1
eval_tap $? 417 'PublicListViews' test.out

#- 418 PublicGetWallet
samples/cli/sample-apps Platform publicGetWallet \
    --currencyCode 'u3nr3a5NXM32g3EM' \
    --namespace $AB_NAMESPACE \
    --userId 'Railf7JjLmw6Dp86' \
    > test.out 2>&1
eval_tap $? 418 'PublicGetWallet' test.out

#- 419 PublicListUserWalletTransactions
samples/cli/sample-apps Platform publicListUserWalletTransactions \
    --currencyCode 'we02SfAVo0l5Iray' \
    --namespace $AB_NAMESPACE \
    --userId 'gS57BnC4D8FYGXT1' \
    --limit '71' \
    --offset '60' \
    > test.out 2>&1
eval_tap $? 419 'PublicListUserWalletTransactions' test.out

#- 420 QueryItems1
samples/cli/sample-apps Platform queryItems1 \
    --namespace $AB_NAMESPACE \
    --appType 'SOFTWARE' \
    --availableDate 'HxMfQLCacXwBiKyz' \
    --baseAppId 'FXhZZBCng7bQijgH' \
    --categoryPath 'whZ5esaqBlzlFzaX' \
    --features 'OerrVSwlRdTd296B' \
    --includeSubCategoryItem 'false' \
    --itemName 'ruSJdfpDpyaiasjx' \
    --itemStatus 'INACTIVE' \
    --itemType 'CODE' \
    --limit '1' \
    --offset '57' \
    --region 'zWOWvYEodinsAYAk' \
    --sectionExclusive 'true' \
    --sortBy '["displayOrder:desc", "name:desc"]' \
    --storeId 'DnrdURvbqmlKLLEs' \
    --tags 'eHNca7NWo0MzeIR8' \
    --targetNamespace '4AjJY1BNzmvo6wPr' \
    > test.out 2>&1
eval_tap $? 420 'QueryItems1' test.out

#- 421 ImportStore1
samples/cli/sample-apps Platform importStore1 \
    --namespace $AB_NAMESPACE \
    --storeId 'm2pZXr3qQ6xJGRiF' \
    --strictMode 'true' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 421 'ImportStore1' test.out

#- 422 ExportStore1
samples/cli/sample-apps Platform exportStore1 \
    --namespace $AB_NAMESPACE \
    --storeId 'pFXSX1tMcqY2BmeX' \
    --body '{"itemIds": ["NAjCjtSmupgdB5A1", "epCieDvLm1jaoMVY", "PmouWeRK2uS1C1OI"]}' \
    > test.out 2>&1
eval_tap $? 422 'ExportStore1' test.out

#- 423 FulfillRewardsV2
samples/cli/sample-apps Platform fulfillRewardsV2 \
    --namespace $AB_NAMESPACE \
    --userId 'H4OAWknDimQVeVCN' \
    --body '{"metadata": {"r1wVAZceoJbGlwmY": {}, "teYNB5GyGGHPxVuT": {}, "RgA9mbTOHUFgBguE": {}}, "origin": "System", "rewards": [{"currency": {"currencyCode": "jGguwaFso8bscnnt", "namespace": "Xt9pqwRgUtZdWpKB"}, "item": {"itemId": "e1xsGivu6o6KfSuB", "itemSku": "OZ3fDoQw4h6m85W8", "itemType": "YcGjTM5KeK1al8kh"}, "quantity": 66, "type": "ITEM"}, {"currency": {"currencyCode": "zzPlV1QL7R6kayG2", "namespace": "HJGg4PTjRtjADvYf"}, "item": {"itemId": "1axiQg10eFtECL2Q", "itemSku": "qeyecJyaKpGPjKCJ", "itemType": "TjptowdbWSJUSrFg"}, "quantity": 38, "type": "ITEM"}, {"currency": {"currencyCode": "ij1bzEE5QH6oR0Un", "namespace": "wFQl07ZLXPoZxGEB"}, "item": {"itemId": "gALeU76Bs1yqq8rr", "itemSku": "TAXc4txkvdXdabwO", "itemType": "TC5fScmgIxSwUyQi"}, "quantity": 20, "type": "ITEM"}], "source": "OTHER", "transactionId": "k4zfADWq7xZ5QrVV"}' \
    > test.out 2>&1
eval_tap $? 423 'FulfillRewardsV2' test.out


rm -f "tmp.dat"

exit $EXIT_CODE