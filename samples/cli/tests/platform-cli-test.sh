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
echo "1..486"

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
    --id '39aEiaOgGtHBKe8i' \
    > test.out 2>&1
eval_tap $? 3 'GetFulfillmentScript' test.out

#- 4 CreateFulfillmentScript
samples/cli/sample-apps Platform createFulfillmentScript \
    --id 'I5ZQ55aAAzd6E8HI' \
    --body '{"grantDays": "z61wDtqguz9VUCgi"}' \
    > test.out 2>&1
eval_tap $? 4 'CreateFulfillmentScript' test.out

#- 5 DeleteFulfillmentScript
samples/cli/sample-apps Platform deleteFulfillmentScript \
    --id 'IPbYB7OPWB0RfcON' \
    > test.out 2>&1
eval_tap $? 5 'DeleteFulfillmentScript' test.out

#- 6 UpdateFulfillmentScript
samples/cli/sample-apps Platform updateFulfillmentScript \
    --id '5tia0YszrBtL4ILZ' \
    --body '{"grantDays": "HNdsj9b5uoNIxbtM"}' \
    > test.out 2>&1
eval_tap $? 6 'UpdateFulfillmentScript' test.out

#- 7 ListItemTypeConfigs
samples/cli/sample-apps Platform listItemTypeConfigs \
    > test.out 2>&1
eval_tap $? 7 'ListItemTypeConfigs' test.out

#- 8 CreateItemTypeConfig
samples/cli/sample-apps Platform createItemTypeConfig \
    --body '{"clazz": "5I9c0GOZuYoedYlw", "dryRun": true, "fulfillmentUrl": "pMex34LQ7mu2BqMA", "itemType": "OPTIONBOX", "purchaseConditionUrl": "vQsn0RBDjc6dApdE"}' \
    > test.out 2>&1
eval_tap $? 8 'CreateItemTypeConfig' test.out

#- 9 SearchItemTypeConfig
samples/cli/sample-apps Platform searchItemTypeConfig \
    --clazz '0XReJ4qfTCsCZx8b' \
    --itemType 'BUNDLE' \
    > test.out 2>&1
eval_tap $? 9 'SearchItemTypeConfig' test.out

#- 10 GetItemTypeConfig
samples/cli/sample-apps Platform getItemTypeConfig \
    --id 'Kf8RYckDIrElkw9H' \
    > test.out 2>&1
eval_tap $? 10 'GetItemTypeConfig' test.out

#- 11 UpdateItemTypeConfig
samples/cli/sample-apps Platform updateItemTypeConfig \
    --id '6D9Xb9wLxe0eCjDX' \
    --body '{"clazz": "YUu9J2fw9pVEeXca", "dryRun": true, "fulfillmentUrl": "L0XPc0UMPa2JNn4k", "purchaseConditionUrl": "TlOU4jOZimhlELJW"}' \
    > test.out 2>&1
eval_tap $? 11 'UpdateItemTypeConfig' test.out

#- 12 DeleteItemTypeConfig
samples/cli/sample-apps Platform deleteItemTypeConfig \
    --id 'xLDTBisgBMa8t7Nm' \
    > test.out 2>&1
eval_tap $? 12 'DeleteItemTypeConfig' test.out

#- 13 QueryCampaigns
samples/cli/sample-apps Platform queryCampaigns \
    --namespace $AB_NAMESPACE \
    --limit '43' \
    --name 'jyq3JlkVqRAKOcO7' \
    --offset '99' \
    --tag 'z2Ra27ySOqXPuHOJ' \
    > test.out 2>&1
eval_tap $? 13 'QueryCampaigns' test.out

#- 14 CreateCampaign
samples/cli/sample-apps Platform createCampaign \
    --namespace $AB_NAMESPACE \
    --body '{"description": "DzjLYbqSU5mkgxLg", "discountConfig": {"categories": [{"categoryPath": "MWCZpge140u2WxCM", "includeSubCategories": true}, {"categoryPath": "srxxfnDHKCRr7VhB", "includeSubCategories": true}, {"categoryPath": "4i2DUovXEmud8EuC", "includeSubCategories": false}], "currencyCode": "mekvEqyI2XezEgJu", "currencyNamespace": "vZlto2VdW5LnWG9q", "discountAmount": 26, "discountPercentage": 50, "discountType": "AMOUNT", "items": [{"itemId": "5W0BxVglYAKOCzka", "itemName": "lmbA1e5Y7di0R34V"}, {"itemId": "KtnAhCPG46qj9cvM", "itemName": "CpppGFQbca3rOVmV"}, {"itemId": "6iMQKvSMwVKlaACB", "itemName": "0dulJUFo7yt0T98f"}], "restrictType": "NONE", "stackable": true}, "items": [{"extraSubscriptionDays": 56, "itemId": "Yt8CeTsI6FJPlbKP", "itemName": "mnKEcErFO7mqzg5K", "quantity": 69}, {"extraSubscriptionDays": 10, "itemId": "Oo6DQBAHAZ06Ztln", "itemName": "u4xzusloWMQsQTNQ", "quantity": 99}, {"extraSubscriptionDays": 85, "itemId": "e0syfdoLItGTKDG8", "itemName": "4Sn8JVU3PthRyNXC", "quantity": 36}], "maxRedeemCountPerCampaignPerUser": 90, "maxRedeemCountPerCode": 27, "maxRedeemCountPerCodePerUser": 11, "maxSaleCount": 29, "name": "zfGZwto6UyoQ7MVc", "redeemEnd": "1975-03-20T00:00:00Z", "redeemStart": "1980-05-13T00:00:00Z", "redeemType": "ITEM", "status": "INACTIVE", "tags": ["kaxVc9xaFwR3auql", "xQp06Zammw2m0zZw", "35txMMLOxYrfT9ct"], "type": "REDEMPTION"}' \
    > test.out 2>&1
eval_tap $? 14 'CreateCampaign' test.out

#- 15 GetCampaign
samples/cli/sample-apps Platform getCampaign \
    --campaignId 'iU3XqUGD6q3n3ZiJ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 15 'GetCampaign' test.out

#- 16 UpdateCampaign
samples/cli/sample-apps Platform updateCampaign \
    --campaignId 'hSU56kQOkEk3m3ym' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "os3M2RGKEZznU2pm", "discountConfig": {"categories": [{"categoryPath": "rQRcM0vUZuC9F62S", "includeSubCategories": false}, {"categoryPath": "Kzurpzb0KykBY89A", "includeSubCategories": false}, {"categoryPath": "2agSPGWVN4ZWbnBh", "includeSubCategories": true}], "currencyCode": "u3UO7cQ6u8eWzGlv", "currencyNamespace": "2m6ZK4yZfoi5yX2a", "discountAmount": 7, "discountPercentage": 64, "discountType": "AMOUNT", "items": [{"itemId": "UM0stV6wu0sHWN6R", "itemName": "xjSsG1QcqITUsrp2"}, {"itemId": "BoqSlZKfyqPUVOTy", "itemName": "ojN3cNnhGy13yzNp"}, {"itemId": "s6sAMw8XNt3CxWMa", "itemName": "OYelY2tv9DPVwbbd"}], "restrictType": "ITEMS_AND_CATEGORIES", "stackable": false}, "items": [{"extraSubscriptionDays": 67, "itemId": "SlaGVMcmw2WJeQ9y", "itemName": "IDIMjPwabJg8mG4n", "quantity": 44}, {"extraSubscriptionDays": 56, "itemId": "gHt2ahpI6DDr1DWz", "itemName": "IhA93h01Cy4TY9XO", "quantity": 39}, {"extraSubscriptionDays": 11, "itemId": "TefMJ5yZ8m2L6Dkj", "itemName": "XatcfUrIDZb5DkLf", "quantity": 94}], "maxRedeemCountPerCampaignPerUser": 95, "maxRedeemCountPerCode": 67, "maxRedeemCountPerCodePerUser": 67, "maxSaleCount": 58, "name": "zZTzIaL36nCsoHCC", "redeemEnd": "1999-11-29T00:00:00Z", "redeemStart": "1971-06-09T00:00:00Z", "redeemType": "ITEM", "status": "INACTIVE", "tags": ["ClNGlgIhtuZizR75", "3PBVnkyk1cSbKint", "WGSp7OWQLBwaQF9m"]}' \
    > test.out 2>&1
eval_tap $? 16 'UpdateCampaign' test.out

#- 17 RenameBatch
samples/cli/sample-apps Platform renameBatch \
    --campaignId '7NuWlNCc8dmyE3xX' \
    --namespace $AB_NAMESPACE \
    --body '{"newName": "BCAWQhWnUz3F95ji", "oldName": "tJ0Z6lnKVRJ6H43s"}' \
    > test.out 2>&1
eval_tap $? 17 'RenameBatch' test.out

#- 18 QueryCampaignBatchNames
samples/cli/sample-apps Platform queryCampaignBatchNames \
    --campaignId '4uTcW0J8y1wwMJO1' \
    --namespace $AB_NAMESPACE \
    --batchName '9ymbuDrwffkg4c2z' \
    --limit '84' \
    > test.out 2>&1
eval_tap $? 18 'QueryCampaignBatchNames' test.out

#- 19 GetCampaignDynamic
samples/cli/sample-apps Platform getCampaignDynamic \
    --campaignId 'rd2alwV2jgg8kGUl' \
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
    --body '{"appConfig": {"appName": "8VZFIBuQ50xela00"}, "customConfig": {"connectionType": "TLS", "grpcServerAddress": "XZPNXnbl88JQSTGE"}, "extendType": "CUSTOM"}' \
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
    --body '{"appConfig": {"appName": "zBEvKkojiHxP1lbv"}, "customConfig": {"connectionType": "INSECURE", "grpcServerAddress": "rdLBls7KqlQEA3Je"}, "extendType": "APP"}' \
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
    --storeId 'b3vfki5AlaZigsNW' \
    > test.out 2>&1
eval_tap $? 31 'GetRootCategories' test.out

#- 32 CreateCategory
samples/cli/sample-apps Platform createCategory \
    --namespace $AB_NAMESPACE \
    --storeId '04p1PFQRZwTbRiCu' \
    --body '{"categoryPath": "5viVVw41c0WWuqeH", "localizationDisplayNames": {"0JLHfAWaQpKXApXv": "XYoj1vM5YAvug5Ix", "vg32L6L9KvYJx903": "u6FwDuPC3OzYUaSn", "UHzQs1Q5Jw7rLCAJ": "dSEQGaRC2S6a6rdB"}}' \
    > test.out 2>&1
eval_tap $? 32 'CreateCategory' test.out

#- 33 ListCategoriesBasic
samples/cli/sample-apps Platform listCategoriesBasic \
    --namespace $AB_NAMESPACE \
    --storeId 'QUlPq9zOeI5kW3ag' \
    > test.out 2>&1
eval_tap $? 33 'ListCategoriesBasic' test.out

#- 34 GetCategory
samples/cli/sample-apps Platform getCategory \
    --categoryPath 'poXNznlQabM87tgg' \
    --namespace $AB_NAMESPACE \
    --storeId '3duZaQTA2bqw4YuI' \
    > test.out 2>&1
eval_tap $? 34 'GetCategory' test.out

#- 35 UpdateCategory
samples/cli/sample-apps Platform updateCategory \
    --categoryPath 'p5aseHkp9c8naR92' \
    --namespace $AB_NAMESPACE \
    --storeId '6JZfNIOdt2PR3OKi' \
    --body '{"localizationDisplayNames": {"En0SbIHzBJAVoqXt": "K4CEJfhs5nCCDQRs", "lFEFOCNF3UHuMaxx": "jXnis9JL1y2w8huW", "jJ9K7jQW8wOxk32o": "kSan3N7q3NkW4Mmr"}}' \
    > test.out 2>&1
eval_tap $? 35 'UpdateCategory' test.out

#- 36 DeleteCategory
samples/cli/sample-apps Platform deleteCategory \
    --categoryPath 'wDj9BtIFa22yW6mX' \
    --namespace $AB_NAMESPACE \
    --storeId 'liQDIjFVaL2gm8a2' \
    > test.out 2>&1
eval_tap $? 36 'DeleteCategory' test.out

#- 37 GetChildCategories
samples/cli/sample-apps Platform getChildCategories \
    --categoryPath 'apcqLjpPyhUTaXks' \
    --namespace $AB_NAMESPACE \
    --storeId 'P0iqOL4OZj2DoWNL' \
    > test.out 2>&1
eval_tap $? 37 'GetChildCategories' test.out

#- 38 GetDescendantCategories
samples/cli/sample-apps Platform getDescendantCategories \
    --categoryPath 'RMObA3088gEiW1eS' \
    --namespace $AB_NAMESPACE \
    --storeId 'MUxApNwMLlt5DRtV' \
    > test.out 2>&1
eval_tap $? 38 'GetDescendantCategories' test.out

#- 39 QueryCodes
samples/cli/sample-apps Platform queryCodes \
    --campaignId 'UqEHvv77iDORrMPp' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --batchName 'wdGGe8o7ED9SYG0y' \
    --batchNo '[74, 81, 23]' \
    --code 'uf8T9uhUMEGVowWd' \
    --limit '34' \
    --offset '68' \
    --withBatchName 'false' \
    > test.out 2>&1
eval_tap $? 39 'QueryCodes' test.out

#- 40 CreateCodes
samples/cli/sample-apps Platform createCodes \
    --campaignId 'hbyA38Z7XIyL2PLn' \
    --namespace $AB_NAMESPACE \
    --body '{"batchName": "suKCtPRicWnYObaV", "codeValue": "12QEYPGwjs26tUgT", "quantity": 3}' \
    > test.out 2>&1
eval_tap $? 40 'CreateCodes' test.out

#- 41 Download
samples/cli/sample-apps Platform download \
    --campaignId 'jzIIxsTfapaV6nqW' \
    --namespace $AB_NAMESPACE \
    --batchName 'YA57NJU65WCGpQKJ' \
    --batchNo '[16, 10, 43]' \
    --withBatchName 'true' \
    > test.out 2>&1
eval_tap $? 41 'Download' test.out

#- 42 BulkDisableCodes
samples/cli/sample-apps Platform bulkDisableCodes \
    --campaignId 'jQSwEJdopKI1ivSe' \
    --namespace $AB_NAMESPACE \
    --batchName 'BMmYQzOfRKsJd5LR' \
    --batchNo '[19, 68, 34]' \
    > test.out 2>&1
eval_tap $? 42 'BulkDisableCodes' test.out

#- 43 BulkEnableCodes
samples/cli/sample-apps Platform bulkEnableCodes \
    --campaignId 'OyKrz5J79Mt1ACDv' \
    --namespace $AB_NAMESPACE \
    --batchName 'yP56u4jnTpx0hRhQ' \
    --batchNo '[49, 29, 25]' \
    > test.out 2>&1
eval_tap $? 43 'BulkEnableCodes' test.out

#- 44 QueryRedeemHistory
samples/cli/sample-apps Platform queryRedeemHistory \
    --campaignId 'ISFOeby3cv26u9ah' \
    --namespace $AB_NAMESPACE \
    --code 'XOGgENyixeeOSxj1' \
    --limit '45' \
    --offset '84' \
    --userId 'PQsez54i8KXUJ0AJ' \
    > test.out 2>&1
eval_tap $? 44 'QueryRedeemHistory' test.out

#- 45 GetCode
samples/cli/sample-apps Platform getCode \
    --code 'EBm7TSFJIlm2t3KC' \
    --namespace $AB_NAMESPACE \
    --redeemable 'false' \
    --withBatchName 'true' \
    > test.out 2>&1
eval_tap $? 45 'GetCode' test.out

#- 46 DisableCode
samples/cli/sample-apps Platform disableCode \
    --code 'cz1Siq44COSRtIC3' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 46 'DisableCode' test.out

#- 47 EnableCode
samples/cli/sample-apps Platform enableCode \
    --code 'cVNr5JwU2VH1PZB4' \
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
    --body '{"currencyCode": "UrWYeiJKlqxTWQop", "currencySymbol": "tTfH6afVRTLpWs3Z", "currencyType": "REAL", "decimals": 55, "localizationDescriptions": {"gHXNKmyY8vQnP72i": "WNso35UJJ4St4eMb", "25Y0tspseYRuCc0v": "5kIuWKXPe5hU3A42", "FYiuEu6vAb2fM1QX": "sxCDOWlDscs6qHSA"}}' \
    > test.out 2>&1
eval_tap $? 52 'CreateCurrency' test.out

#- 53 UpdateCurrency
samples/cli/sample-apps Platform updateCurrency \
    --currencyCode 'KLORMszL8WFKOdkb' \
    --namespace $AB_NAMESPACE \
    --body '{"localizationDescriptions": {"YwpPG1YEo9BfODhS": "ZiyAu11ZKOSlRop1", "T4Vz3i1XISTk7ffB": "d58WFXO34YxwQ73Z", "DN1tadeILKUxdPER": "fGn3H2n5ckXVcoPO"}}' \
    > test.out 2>&1
eval_tap $? 53 'UpdateCurrency' test.out

#- 54 DeleteCurrency
samples/cli/sample-apps Platform deleteCurrency \
    --currencyCode 'e2OWDoVbSSKbnBvI' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 54 'DeleteCurrency' test.out

#- 55 GetCurrencyConfig
samples/cli/sample-apps Platform getCurrencyConfig \
    --currencyCode 's0EZQijAeAIxqWRn' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 55 'GetCurrencyConfig' test.out

#- 56 GetCurrencySummary
samples/cli/sample-apps Platform getCurrencySummary \
    --currencyCode 'DmLU86ygHu8sUXMp' \
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
    --body '{"data": [{"id": "W44xYmjlRg5NC2ww", "rewards": [{"currency": {"currencyCode": "pCUIKxZphUmqmIly", "namespace": "QmlafUL17IYT9oOG"}, "item": {"itemId": "mXvVhmJQUbkmibLk", "itemName": "vQ60SJ2Qd7INdlIM", "itemSku": "isOIZtFz4JVLTz0V", "itemType": "K4xF0IDpYYHuiMiv"}, "quantity": 60, "type": "CURRENCY"}, {"currency": {"currencyCode": "BYMEPsHlZqXPx20v", "namespace": "6hYlW1HDpPT8AUOT"}, "item": {"itemId": "GUCRbdj5Sv0OqaJv", "itemName": "4oTpVWzgpq42je3i", "itemSku": "tH922MvUm74Rx1Li", "itemType": "rgcPL6AE3sYCYPln"}, "quantity": 79, "type": "ITEM"}, {"currency": {"currencyCode": "7NkwJ7zswS27m1Cm", "namespace": "GP85ysc0FyAtsJo4"}, "item": {"itemId": "WDQmDhdwCSBS9Rq0", "itemName": "Dp9Ve2bQezCZqeud", "itemSku": "jxZ1vRtpgVcNVSYO", "itemType": "3dxyz9jQRPdjwNoz"}, "quantity": 35, "type": "CURRENCY"}]}, {"id": "xtD95D4waLDbkzDZ", "rewards": [{"currency": {"currencyCode": "Pqhc6jrZX3k2LlIA", "namespace": "NHFOO176pzeQRKWq"}, "item": {"itemId": "hEl1Rf6euotycu0Q", "itemName": "hMTCRC2qV2c1B843", "itemSku": "LSitFtTqGGTBeObV", "itemType": "8xhKezhbpowUrfIh"}, "quantity": 22, "type": "ITEM"}, {"currency": {"currencyCode": "xHuLmAZIk4M0Yh8L", "namespace": "E7YCzXdAerSfi9HJ"}, "item": {"itemId": "9LCaWNC1Wt9ei9xR", "itemName": "3CPPOGVPTQDmZU43", "itemSku": "RvIOGnFxsNt6h5Zk", "itemType": "ErTIY3Ex9uGbRgVX"}, "quantity": 19, "type": "CURRENCY"}, {"currency": {"currencyCode": "NllgdXD5BPPi4QZA", "namespace": "9IhdXwTImpFmcTBJ"}, "item": {"itemId": "jgsRyBkzvTFgqDzn", "itemName": "qqWne2iTQ3OjSeu9", "itemSku": "dXtv0SEy1Wksank1", "itemType": "fZawtwWW9OpuvCFX"}, "quantity": 45, "type": "CURRENCY"}]}, {"id": "pw8z9J6LVl4SZIMm", "rewards": [{"currency": {"currencyCode": "BTyfwWLCpURLeg5k", "namespace": "doZJEkZXWKj0hWlp"}, "item": {"itemId": "WgSCHprOSEi2pRPM", "itemName": "DYE7Yf9Dzg4nWRWX", "itemSku": "RKNYs0ldJ2d9wBEe", "itemType": "r5TNojKVgRJ5tqcs"}, "quantity": 14, "type": "ITEM"}, {"currency": {"currencyCode": "aIoTZ0HtBK2H6G6g", "namespace": "kidppGyiuHdURLl3"}, "item": {"itemId": "BxS3rGun3yPkjNkM", "itemName": "UTubMOQNRrR3fJp7", "itemSku": "ZpS9fbAt6JDjBjj4", "itemType": "7PvoJTrvkNsJj09d"}, "quantity": 23, "type": "ITEM"}, {"currency": {"currencyCode": "pWFHlr7nzdtvsH7u", "namespace": "pjx38pRm7aHCdpeq"}, "item": {"itemId": "3lmxwPXmvf5RhhoW", "itemName": "fnAVD4NSxXhylv4W", "itemSku": "w0GrkyM5IIamVsR8", "itemType": "P10tMClNseyPL4ZK"}, "quantity": 30, "type": "CURRENCY"}]}]}' \
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
    --body '{"data": [{"platform": "XBOX", "platformDlcIdMap": {"UIxfMoXiPhIGkqUg": "p1NEpNUwBrvLjYCT", "FN4yNzQIRt1s2tpi": "ZwVIQa9qImTwfeu3", "ALljXBA37QWWCjpn": "myoUwQk5NV6dAmWe"}}, {"platform": "EPICGAMES", "platformDlcIdMap": {"8xf875fdeNWsDz3A": "1FiK449cSdoAYsb6", "4XiLYdtbHivXtDNl": "84hpRUxV8VixLH39", "mcSTy6KiA2XghFmI": "AAJslvaeSyyeANpk"}}, {"platform": "OCULUS", "platformDlcIdMap": {"w2VUk72G8S5Uxra5": "y396LCVYoh2w2K3p", "XVLsmUIvzbip7FXl": "pLLMguDBtjVwWFqE", "A4ZFNZJ7HK1kXqTE": "irvyYLXJL41dlAOx"}}]}' \
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
    --activeOnly 'true' \
    --appType 'DEMO' \
    --entitlementClazz 'SUBSCRIPTION' \
    --entitlementName 'RZ1rxAlyk4EGCQW8' \
    --itemId '["LCNU4V7MhSRBjLJ9", "fAWR6mub5DWkDePy", "nyWAmGLogKATCnRG"]' \
    --limit '48' \
    --offset '61' \
    --origin 'Xbox' \
    --userId 'uP0iLm4gw5BgR1y6' \
    > test.out 2>&1
eval_tap $? 63 'QueryEntitlements1' test.out

#- 64 QueryEntitlements
samples/cli/sample-apps Platform queryEntitlements \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --itemIds '["AQs1nS8iiVUMNChY", "w3eFCcmLx6gboIRP", "tuh9G45nDaJp8Jh8"]' \
    --limit '58' \
    --offset '14' \
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
    --body '{"entitlementGrantList": [{"collectionId": "Uw57jC8ZYMQTEGTR", "endDate": "1989-02-17T00:00:00Z", "grantedCode": "CvClxMbyIaFbnS5W", "itemId": "eXrVNI3Piqi8EGGy", "itemNamespace": "rkYwnjhAiBaJosBc", "language": "lLe", "metadata": {"MVYVinKBimoDxClJ": {}, "Y9TjEm4gEXgbUbQd": {}, "uxaCwO2eA2hS2BRR": {}}, "origin": "GooglePlay", "quantity": 34, "region": "Is4qCJNyVhAOUkth", "source": "REDEEM_CODE", "startDate": "1997-07-29T00:00:00Z", "storeId": "CooPMtipk22lzSfX"}, {"collectionId": "pod02ZpDaA7gk8cR", "endDate": "1981-04-29T00:00:00Z", "grantedCode": "6Fx69TghsuInnoHV", "itemId": "2DE9OrbzwUVSFlHG", "itemNamespace": "67WGeG0FXg7BqnlN", "language": "YST-JT", "metadata": {"on8WGXWSXpbGyYmq": {}, "8u09VrL8PbER8uLX": {}, "LV0qE02alLPGvwRa": {}}, "origin": "Twitch", "quantity": 38, "region": "QcAai1Fxij9gVo0W", "source": "REDEEM_CODE", "startDate": "1984-02-10T00:00:00Z", "storeId": "gCZr58U8lkVmQyWd"}, {"collectionId": "xl1H4uHLYO8Ax7ub", "endDate": "1973-02-17T00:00:00Z", "grantedCode": "mUgLPMpGYzKeUfnG", "itemId": "ojj1qbSm6tgEVkYk", "itemNamespace": "jzuIcds9YcWNeQrm", "language": "nmx", "metadata": {"mvhmWpBFNFqtxHuy": {}, "C5CAL3V9fiFAclSf": {}, "x2UFaYPwmGZUTZzH": {}}, "origin": "Twitch", "quantity": 64, "region": "WRdthW9a8CFpT9iG", "source": "OTHER", "startDate": "1977-01-22T00:00:00Z", "storeId": "FgQmp4FgNUXscxHW"}], "userIds": ["r1oxCJBagHyrbEcm", "RQi83OH68hdIyz6c", "Pq4iIadJ9kE0nwzO"]}' \
    > test.out 2>&1
eval_tap $? 67 'GrantEntitlements' test.out

#- 68 RevokeEntitlements
samples/cli/sample-apps Platform revokeEntitlements \
    --namespace $AB_NAMESPACE \
    --body '["JJYhwyPRKoWBCBeX", "hSQCIYmuttQJaIoK", "FU06uEjFfOnSwyod"]' \
    > test.out 2>&1
eval_tap $? 68 'RevokeEntitlements' test.out

#- 69 GetEntitlement
samples/cli/sample-apps Platform getEntitlement \
    --entitlementId 'aubbbs9poccqkpVa' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 69 'GetEntitlement' test.out

#- 70 QueryFulfillmentHistories
samples/cli/sample-apps Platform queryFulfillmentHistories \
    --namespace $AB_NAMESPACE \
    --limit '18' \
    --offset '50' \
    --status 'SUCCESS' \
    --userId 'OCZj9k3wnv1jUwWF' \
    > test.out 2>&1
eval_tap $? 70 'QueryFulfillmentHistories' test.out

#- 71 QueryIAPClawbackHistory
samples/cli/sample-apps Platform queryIAPClawbackHistory \
    --namespace $AB_NAMESPACE \
    --endTime 'pfbx1iJdJ0jsmOJS' \
    --eventType 'CHARGEBACK' \
    --externalOrderId 'QpjgwpT94yXhkJbT' \
    --limit '16' \
    --offset '12' \
    --startTime '7cNtPlwlKaICqfbv' \
    --status 'IGNORED' \
    --userId 'O3p7vbD6ZnPIEttC' \
    > test.out 2>&1
eval_tap $? 71 'QueryIAPClawbackHistory' test.out

#- 72 MockPlayStationStreamEvent
samples/cli/sample-apps Platform mockPlayStationStreamEvent \
    --namespace $AB_NAMESPACE \
    --body '{"body": {"account": "pzjDZKh3sBxMRpBd", "additionalData": {"entitlement": [{"clientTransaction": [{"amountConsumed": 17, "clientTransactionId": "72gSC4wfBZGpNEfU"}, {"amountConsumed": 47, "clientTransactionId": "w0Wom3T79tFp85SK"}, {"amountConsumed": 100, "clientTransactionId": "ACq4R7uqts978Xp4"}], "entitlementId": "mwHW7tBfrioKizAK", "usageCount": 63}, {"clientTransaction": [{"amountConsumed": 63, "clientTransactionId": "bpfD9lQEhG0mtGcI"}, {"amountConsumed": 88, "clientTransactionId": "0Kqje95mvCZznTLh"}, {"amountConsumed": 39, "clientTransactionId": "v0vEWDWM0ajGETxJ"}], "entitlementId": "fkSchWgy3NA3qKEl", "usageCount": 88}, {"clientTransaction": [{"amountConsumed": 80, "clientTransactionId": "qoycabJn5SCoxBuG"}, {"amountConsumed": 72, "clientTransactionId": "oPvOd842YDgf6pke"}, {"amountConsumed": 56, "clientTransactionId": "YD6DobrFnmLiQbpK"}], "entitlementId": "KNeRHDS3ycgBpr3B", "usageCount": 58}], "purpose": "x1QWgjGoMyD0FPAt"}, "originalTitleName": "FDC4PN6LgvWwaqs8", "paymentProductSKU": "mBAk3oICCt9nSBlw", "purchaseDate": "fOQaxmuaEwldKWuQ", "sourceOrderItemId": "AHInc91wb86wVd1g", "titleName": "qUz1DI4fV9CIUoia"}, "eventDomain": "nKfgmLC7i46g52GY", "eventSource": "Dgs6BcF8gUGFVTFd", "eventType": "MLIhFQ7SLPqBWvuD", "eventVersion": 100, "id": "asokovGT6pfmobRf", "timestamp": "Eik1kydVaFI3wGRc"}' \
    > test.out 2>&1
eval_tap $? 72 'MockPlayStationStreamEvent' test.out

#- 73 MockXblClawbackEvent
samples/cli/sample-apps Platform mockXblClawbackEvent \
    --namespace $AB_NAMESPACE \
    --body '{"data": {"eventDate": "3Ek3FQ6nTP8jWqiZ", "eventState": "SVaKH3nOeq9gyo2v", "lineItemId": "GMa6Kn5GkeFKaKM1", "orderId": "5wzVHUn5olk0XlIM", "productId": "CyFZyNjeoRbc7fNL", "productType": "u4YgSntPuFMzN2tr", "purchasedDate": "xqvTvFsIATs9uedI", "sandboxId": "6XB2ipoR7BpA6LKU", "skuId": "yX2qzMBnoyG901W2", "subscriptionData": {"consumedDurationInDays": 1, "dateTime": "7Md3mfncqKVQ1C9v", "durationInDays": 73, "recurrenceId": "zqhH6IeKyfLGrc9m"}}, "datacontenttype": "qdIdBnwvDUpp1Nef", "id": "LZlqvE1BesSrcXnt", "source": "68dl4SqSaZZN5Qsr", "specVersion": "HG1YvhmaED5xCiGB", "subject": "sOaorA9GMjsxWaDx", "time": "Kxoioay6JneO6LoW", "traceparent": "2nB5nxKDa4xaO6dJ", "type": "NW6MQeJDBgkBpPTw"}' \
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
    --body '{"appAppleId": 16, "bundleId": "5a989i9mMq6cAGMJ", "issuerId": "BdaPXr7cdamDjDeI", "keyId": "C2PGljwmNMf2M2p2", "password": "cKIFnQh7Pbcz6Oee", "version": "V1"}' \
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
    --body '{"sandboxId": "51ZIMgEvIvx4BMpu"}' \
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
    --body '{"applicationName": "GVF1a5ajjhS9RkWI", "notificationTokenAudience": "Lz1pqx3csYWGPyBE", "notificationTokenEmail": "JETQUn21CYU8nTQj", "packageName": "W087TREr66idjLOt", "serviceAccountId": "ekvRlJe0C05gBLpC"}' \
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
    --body '{"data": [{"itemIdentity": "PGW6S1lUoCtSajic", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"pe0cPPfLpcTq2kiL": "2iPEnj5AtVu999Ga", "b29AEcg187NpQdpj": "SlkXXaGRS534vC4z", "Srm3Usm6hgEDO4t5": "lYTKTN4NlvI4zaq1"}}, {"itemIdentity": "ick9nqFZm9HTcIl2", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"WGTheHxkTJsG937b": "dco64Yox4ntO4Sms", "FtlDbqplXuFGG8bF": "riMFxLcy13K3wSuD", "d8nrsCQmdVSBKdNR": "UNBonQ8AKwgbYH4A"}}, {"itemIdentity": "znGiGE5pgtimtjDL", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"kmbVvyc5Nz0iz7Gd": "lf69XEeuZjqeAtj6", "1teIFcod1Tcd8qcR": "pr55Imqq5eyUsoLG", "QCnGqdfDwuknYN89": "RHndevDMn3dG7r5N"}}]}' \
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
    --body '{"appId": "GbmTgQBUFBraQMbi", "appSecret": "NzH3klmu6YEHv4E4"}' \
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
    --body '{"backOfficeServerClientId": "LAzlPoNeOJ3gmAjU", "backOfficeServerClientSecret": "AZ7IgCM9DOaWTmDw", "enableStreamJob": true, "environment": "9L6Ls2MpUXw6PKyR", "streamName": "Curv0EhvvWDZaKZU", "streamPartnerName": "RpaTXKrWJiWxQHD6"}' \
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
    --body '{"backOfficeServerClientId": "7lxXX7cH6q29SAa3", "backOfficeServerClientSecret": "mBwP5weOb3Kc34ds", "enableStreamJob": false, "environment": "vubzPkYJ9OCy3sdN", "streamName": "CsNeUgPkAhgJLJHn", "streamPartnerName": "KbmOR0USbLhR6gaf"}' \
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
    --body '{"appId": "6AtPdjmrcxu0F472", "publisherAuthenticationKey": "rytDjCCsQxGqSfXA"}' \
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
    --body '{"clientId": "UG438M0u4dgZmlgP", "clientSecret": "7hMTQmMrPnEcHCKQ", "organizationId": "MNxk43GlpNHnwti1"}' \
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
    --body '{"enableClawback": false, "entraAppClientId": "IDscPRsJnAc7fPo0", "entraAppClientSecret": "4vbthWl67QZUymbN", "entraTenantId": "Relqc3uDI9jAPO4X", "relyingPartyCert": "JzKBaKF0RXwAjrAY"}' \
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
    --password '673DSoX5nC9xpwCv' \
    > test.out 2>&1
eval_tap $? 105 'UpdateXblBPCertFile' test.out

#- 106 QueryThirdPartyNotifications
samples/cli/sample-apps Platform queryThirdPartyNotifications \
    --namespace $AB_NAMESPACE \
    --endDate 'DICitqgEDLhIvH3v' \
    --externalId 'iYEi06n1ehPte7B4' \
    --limit '100' \
    --offset '37' \
    --source 'TWITCH' \
    --startDate '1Y6Da03b1rT7Ay36' \
    --status 'WARN' \
    --type 'xRkR6WwX4xTexHjX' \
    > test.out 2>&1
eval_tap $? 106 'QueryThirdPartyNotifications' test.out

#- 107 QueryThirdPartySubscription
samples/cli/sample-apps Platform queryThirdPartySubscription \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --groupId 'fz4PcEs3BIPdWgZo' \
    --limit '54' \
    --offset '15' \
    --platform 'OCULUS' \
    --productId 'VhtW9xfAZtZSOpVo' \
    --userId 'tMh7LRT1ARlUtPwQ' \
    > test.out 2>&1
eval_tap $? 107 'QueryThirdPartySubscription' test.out

#- 108 GetIAPOrderConsumeDetails
samples/cli/sample-apps Platform getIAPOrderConsumeDetails \
    --iapOrderNo 'VFsdnge2Nchl6gYU' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 108 'GetIAPOrderConsumeDetails' test.out

#- 109 DownloadInvoiceDetails
samples/cli/sample-apps Platform downloadInvoiceDetails \
    --namespace $AB_NAMESPACE \
    --endTime 'densPfqQzs29jWbA' \
    --feature 'jSEf8K3WPjMU5E7F' \
    --itemId 'sZMb9TvvdMNWAx4r' \
    --itemType 'OPTIONBOX' \
    --startTime 'btp3Qeq2jQjeJ3CI' \
    > test.out 2>&1
eval_tap $? 109 'DownloadInvoiceDetails' test.out

#- 110 GenerateInvoiceSummary
samples/cli/sample-apps Platform generateInvoiceSummary \
    --namespace $AB_NAMESPACE \
    --endTime 'bYatLQrLPVvllGtA' \
    --feature 'P4r0ioBxL4pSNgHc' \
    --itemId 'HURZORV7umu4aAcJ' \
    --itemType 'SEASON' \
    --startTime 'iAlxI49UcrU3pd9B' \
    > test.out 2>&1
eval_tap $? 110 'GenerateInvoiceSummary' test.out

#- 111 SyncInGameItem
samples/cli/sample-apps Platform syncInGameItem \
    --namespace $AB_NAMESPACE \
    --storeId '0q4EcdEP7ILdzcBl' \
    --body '{"categoryPath": "BROgdMy7kLYiC2tS", "targetItemId": "hs9tqf2dDpvIcA25", "targetNamespace": "enmcivaKMhvHRsaD"}' \
    > test.out 2>&1
eval_tap $? 111 'SyncInGameItem' test.out

#- 112 CreateItem
samples/cli/sample-apps Platform createItem \
    --namespace $AB_NAMESPACE \
    --storeId 'GwXmm5oHZhdWxVpW' \
    --body '{"appId": "M3PdaBsth3kJhwC2", "appType": "DEMO", "baseAppId": "cDs0SOfDlgViUsWW", "boothName": "wuEQ3BUFbN6ZjCd6", "categoryPath": "3H8pC6i3sW7XZ865", "clazz": "regmCVDd0J4WY5C1", "displayOrder": 95, "entitlementType": "DURABLE", "ext": {"XcpwZLxHpJ8mkd7I": {}, "hCWfFG7Ua8VsYnhB": {}, "ju8bDMYDwYgkZhZX": {}}, "features": ["OYDh3QOInkpGT7Hq", "TccVof1ueqkuEJtA", "H5HhojE58pTTflrk"], "flexible": false, "images": [{"as": "B0FrHEymDs32yieq", "caption": "PgQhc3yq9NDg5KX8", "height": 8, "imageUrl": "G8A4ZZzIeojzPd46", "smallImageUrl": "r5B11DiaBes70zAx", "width": 45}, {"as": "t0rWTz8Kw2occptl", "caption": "xq8YnZTqwNcbqMl8", "height": 26, "imageUrl": "ZXW2IaEv6WiSjiXd", "smallImageUrl": "kg4A6LcUxYJgswhS", "width": 42}, {"as": "rXpHfvKGxrv6sneD", "caption": "fhIpZtrinnD42hqi", "height": 70, "imageUrl": "82EQeRqArFSvFDyW", "smallImageUrl": "zGTqEBFZl4MfEgn9", "width": 61}], "inventoryConfig": {"customAttributes": {"NjZkM4EvxztlxKMQ": {}, "jYdqPzojKdjkFLgU": {}, "uhOr2bP3l44oiXOw": {}}, "serverCustomAttributes": {"jUQw80kUvhyZPYau": {}, "lMydfKwyQQT0ahv9": {}, "IbElUsanll4JuXOx": {}}, "slotUsed": 75}, "itemIds": ["Axtbhjhw1z5XVhyr", "rKN4hsUIE7CuEeWL", "AVkxDxcqnVmol5Ai"], "itemQty": {"hTVqomu0Ov6C2fEU": 43, "bkOobvyNg68TDpjD": 5, "lCpRu0byaLj5PK3l": 86}, "itemType": "SUBSCRIPTION", "listable": false, "localizations": {"gAGwPMgQjPHU57lf": {"description": "XeUcMJ0HGi8Qd8wP", "localExt": {"W1kFslM8qUT3rFwb": {}, "ca6i134AMassanop": {}, "bIUlxEKbBBWT6J0o": {}}, "longDescription": "e67RWs1SR7bkz8o5", "title": "K7DY7LgHcOaxAAyM"}, "mI5rBj5OhbDGaVIY": {"description": "xE7qNJunWu6lTyfy", "localExt": {"inhR6Wv8bkx2a6iX": {}, "9ejOHKPhVcv1Anav": {}, "HmNsi9AANqtyLbdQ": {}}, "longDescription": "g4K4QezEYQ06Ixkn", "title": "NyLi5CdmddeGG2Qf"}, "OEqz0nIJye85u1ls": {"description": "iKl4VaPj4iWQK4ke", "localExt": {"Mqpd3Jlxqb96A2bX": {}, "kPdsYmSA4irLX57X": {}, "YRKAab22xcbrit2X": {}}, "longDescription": "Guog5Sosh45MPqYG", "title": "DkoRyRZjfzkYLj3s"}}, "lootBoxConfig": {"rewardCount": 64, "rewards": [{"lootBoxItems": [{"count": 90, "duration": 11, "endDate": "1978-01-19T00:00:00Z", "itemId": "WnAFKph7fnDnSfEV", "itemSku": "qeMYQ8ozsi3dEWhF", "itemType": "bmUnPXgonHXwp1He"}, {"count": 72, "duration": 28, "endDate": "1991-04-26T00:00:00Z", "itemId": "JUNYjZ08s0KnuAHt", "itemSku": "02tMrk4JKJMqafHV", "itemType": "nXnGkNGzHIZSS0CQ"}, {"count": 88, "duration": 46, "endDate": "1983-12-01T00:00:00Z", "itemId": "Ni2Krmck4c8j3BBO", "itemSku": "YkSwkAU3MPQVCHmX", "itemType": "MtR5GZJGeC3h0MqJ"}], "name": "T26Ez4kfedW8oaXZ", "odds": 0.8514667255958479, "type": "REWARD_GROUP", "weight": 35}, {"lootBoxItems": [{"count": 69, "duration": 22, "endDate": "1991-07-30T00:00:00Z", "itemId": "sO0UISf45HAMGmzZ", "itemSku": "qII6o1tp5kE2xi5n", "itemType": "bnZM0eJrAlHZ6kFk"}, {"count": 22, "duration": 84, "endDate": "1985-02-13T00:00:00Z", "itemId": "UUMycfGvz2QUdEWP", "itemSku": "sLZi70RDWiahgXOX", "itemType": "FEyOKdOV4YL92t9Z"}, {"count": 90, "duration": 55, "endDate": "1998-07-03T00:00:00Z", "itemId": "NccVwJMmbNzVPoB6", "itemSku": "fRcWKdWpZvtH3lgQ", "itemType": "KTXNsQiEKrZQ0SEE"}], "name": "GjnJGZBO5u1D0qxk", "odds": 0.10066001636110189, "type": "REWARD", "weight": 40}, {"lootBoxItems": [{"count": 51, "duration": 80, "endDate": "1973-10-23T00:00:00Z", "itemId": "AZxjOXUQELe1XaEY", "itemSku": "OWTmDLG5MPVqSkUU", "itemType": "DV8FcenN9bf99nuZ"}, {"count": 100, "duration": 39, "endDate": "1991-10-26T00:00:00Z", "itemId": "GYxQkwHfJG07irLS", "itemSku": "613nfPRYEAdcL9iE", "itemType": "qnM9NIwn2YLmYcnP"}, {"count": 34, "duration": 1, "endDate": "1996-10-12T00:00:00Z", "itemId": "EUPwdpagDu9iA9Oi", "itemSku": "IrayV5y7E5AAqOI6", "itemType": "xNRfwAj91yprNbBi"}], "name": "Z2rFQQS1h0uPAyz8", "odds": 0.3241606794892897, "type": "REWARD_GROUP", "weight": 19}], "rollFunction": "CUSTOM"}, "maxCount": 53, "maxCountPerUser": 86, "name": "r3Gs0THVJD5jEncs", "optionBoxConfig": {"boxItems": [{"count": 36, "duration": 82, "endDate": "1973-08-06T00:00:00Z", "itemId": "QDqB5jM49lsfP3DX", "itemSku": "WgoICMQ3V3YD6QxZ", "itemType": "VWTiN7GkULMjeC7b"}, {"count": 87, "duration": 7, "endDate": "1998-06-19T00:00:00Z", "itemId": "VTUKEgSWnddaV3sI", "itemSku": "OXr5sB8JZBlFeptN", "itemType": "f7rFmvAt5zib690o"}, {"count": 43, "duration": 3, "endDate": "1999-03-18T00:00:00Z", "itemId": "b3C5nMkk9E29pOaC", "itemSku": "x4SSo3KQfaLC2zey", "itemType": "LvX153C3TDnp1zoH"}]}, "purchasable": true, "recurring": {"cycle": "YEARLY", "fixedFreeDays": 10, "fixedTrialCycles": 20, "graceDays": 34}, "regionData": {"DzFSKVCbSoa2NbZX": [{"currencyCode": "322MAqVnUvOwN2nt", "currencyNamespace": "3jN8KRqC439JUjlB", "currencyType": "REAL", "discountAmount": 88, "discountExpireAt": "1979-01-20T00:00:00Z", "discountPercentage": 57, "discountPurchaseAt": "1988-11-05T00:00:00Z", "expireAt": "1976-04-30T00:00:00Z", "price": 69, "purchaseAt": "1988-09-29T00:00:00Z", "trialPrice": 49}, {"currencyCode": "05bxOHAyP2lDNtTE", "currencyNamespace": "J0BqhAmbZKfzYzAo", "currencyType": "VIRTUAL", "discountAmount": 24, "discountExpireAt": "1984-09-24T00:00:00Z", "discountPercentage": 56, "discountPurchaseAt": "1994-03-09T00:00:00Z", "expireAt": "1985-02-01T00:00:00Z", "price": 76, "purchaseAt": "1984-06-22T00:00:00Z", "trialPrice": 50}, {"currencyCode": "8WImJsSLDeVq4M1e", "currencyNamespace": "v0UM5ga7r7GjeXwj", "currencyType": "REAL", "discountAmount": 7, "discountExpireAt": "1974-02-09T00:00:00Z", "discountPercentage": 60, "discountPurchaseAt": "1987-11-03T00:00:00Z", "expireAt": "1992-07-05T00:00:00Z", "price": 13, "purchaseAt": "1993-11-22T00:00:00Z", "trialPrice": 36}], "zKYnIibPb3xeXi6I": [{"currencyCode": "1XT5PHhMGmghE8rg", "currencyNamespace": "EAZ3ChPCyGteJ1c4", "currencyType": "REAL", "discountAmount": 76, "discountExpireAt": "1996-04-28T00:00:00Z", "discountPercentage": 72, "discountPurchaseAt": "1992-02-11T00:00:00Z", "expireAt": "1976-03-10T00:00:00Z", "price": 53, "purchaseAt": "1992-06-03T00:00:00Z", "trialPrice": 45}, {"currencyCode": "3jiLAZ4n1HmIZLM5", "currencyNamespace": "tFiSDS7lPYqzPhC5", "currencyType": "VIRTUAL", "discountAmount": 49, "discountExpireAt": "1986-11-17T00:00:00Z", "discountPercentage": 83, "discountPurchaseAt": "1986-05-09T00:00:00Z", "expireAt": "1988-02-18T00:00:00Z", "price": 8, "purchaseAt": "1990-11-10T00:00:00Z", "trialPrice": 91}, {"currencyCode": "2U1a5SIr68Nhn3MC", "currencyNamespace": "IMdxb01qrnLLSeW0", "currencyType": "REAL", "discountAmount": 55, "discountExpireAt": "1985-08-03T00:00:00Z", "discountPercentage": 31, "discountPurchaseAt": "1979-04-26T00:00:00Z", "expireAt": "1983-05-20T00:00:00Z", "price": 69, "purchaseAt": "1999-08-09T00:00:00Z", "trialPrice": 16}], "4zZAUgWb2quAWw4Q": [{"currencyCode": "rJXWJVC4knMGHWvP", "currencyNamespace": "ZwlQVEQQFK6NgwKa", "currencyType": "REAL", "discountAmount": 50, "discountExpireAt": "1985-06-19T00:00:00Z", "discountPercentage": 32, "discountPurchaseAt": "1988-04-13T00:00:00Z", "expireAt": "1992-09-09T00:00:00Z", "price": 31, "purchaseAt": "1986-10-29T00:00:00Z", "trialPrice": 72}, {"currencyCode": "y0wx2kWjRxnkFpOX", "currencyNamespace": "oGKWultbfz9antvk", "currencyType": "VIRTUAL", "discountAmount": 13, "discountExpireAt": "1994-05-07T00:00:00Z", "discountPercentage": 13, "discountPurchaseAt": "1979-12-25T00:00:00Z", "expireAt": "1986-01-10T00:00:00Z", "price": 25, "purchaseAt": "1998-12-12T00:00:00Z", "trialPrice": 34}, {"currencyCode": "u9s9ZMHGMArKQ7xP", "currencyNamespace": "aHgza5aOSHp5UPgS", "currencyType": "REAL", "discountAmount": 11, "discountExpireAt": "1993-11-23T00:00:00Z", "discountPercentage": 27, "discountPurchaseAt": "1993-02-11T00:00:00Z", "expireAt": "1996-11-10T00:00:00Z", "price": 46, "purchaseAt": "1987-03-05T00:00:00Z", "trialPrice": 61}]}, "saleConfig": {"currencyCode": "NKj0lhAlnWEfmOd6", "price": 79}, "seasonType": "TIER", "sectionExclusive": true, "sellable": false, "sku": "i6Z83SOINmfPDkIK", "stackable": false, "status": "ACTIVE", "tags": ["EE4BAXuSnzYK9t51", "TR4yKCHYih8nbjnJ", "zj0G1E5ILrJ15X9c"], "targetCurrencyCode": "Le4aVIcuWQeIAZtW", "targetNamespace": "VWpPqZNcS9u1q3jB", "thumbnailUrl": "9VixBlYXwKSdeYfc", "useCount": 34}' \
    > test.out 2>&1
eval_tap $? 112 'CreateItem' test.out

#- 113 GetItemByAppId
samples/cli/sample-apps Platform getItemByAppId \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId '573EsTDKaPS5LSOz' \
    --appId 'XzXgS7MmsvouHBN5' \
    > test.out 2>&1
eval_tap $? 113 'GetItemByAppId' test.out

#- 114 QueryItems
samples/cli/sample-apps Platform queryItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --appType 'GAME' \
    --availableDate 'odEt3t2HF67FNRLY' \
    --baseAppId 'ojxLa9pSlXLGauPJ' \
    --categoryPath 'pxMxK5oOfG1WZbhP' \
    --features 'ltiXLPVH7BrjjAlx' \
    --includeSubCategoryItem 'true' \
    --itemType 'OPTIONBOX' \
    --limit '9' \
    --offset '22' \
    --region '1XqzsJ9JkhOFIQ0C' \
    --sortBy '["name:asc", "createdAt:asc", "displayOrder"]' \
    --storeId '5s13HlcYueBMrDLV' \
    --tags 'hwZ9hc25RN7YU9Is' \
    --targetNamespace 'd904NlN2dOmA6ez2' \
    > test.out 2>&1
eval_tap $? 114 'QueryItems' test.out

#- 115 ListBasicItemsByFeatures
samples/cli/sample-apps Platform listBasicItemsByFeatures \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --features '["2Ut9pviODNjys77R", "sxYHtjwUHGhVHCKL", "B6BnlNjijJVFab6k"]' \
    > test.out 2>&1
eval_tap $? 115 'ListBasicItemsByFeatures' test.out

#- 116 GetItems
samples/cli/sample-apps Platform getItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'fyEEozEfvfowLmwC' \
    --itemIds 'jedOAMPzK4WJn4ux' \
    > test.out 2>&1
eval_tap $? 116 'GetItems' test.out

#- 117 GetItemBySku
samples/cli/sample-apps Platform getItemBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --storeId 'DFF7YktvnHH6WIJT' \
    --sku 'Wcmle7KNGWwffrHZ' \
    > test.out 2>&1
eval_tap $? 117 'GetItemBySku' test.out

#- 118 GetLocaleItemBySku
samples/cli/sample-apps Platform getLocaleItemBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --language 'GWDYM7i0GQHi4dlz' \
    --populateBundle 'false' \
    --region 'Bhr16UWK7w4K2UJI' \
    --storeId 'eQANmli0ZrTK1MZf' \
    --sku 'cFC51h2O4eCmLA1f' \
    > test.out 2>&1
eval_tap $? 118 'GetLocaleItemBySku' test.out

#- 119 GetEstimatedPrice
samples/cli/sample-apps Platform getEstimatedPrice \
    --namespace $AB_NAMESPACE \
    --platform 'VARIHQIqxqrihhes' \
    --region 'qeCE996oJQxy0OOs' \
    --storeId 'iZQxWz3JosKysPIf' \
    --itemIds 'LRL2j1vsLYoNGt93' \
    --userId 'd8sYXgbl5lTtc3kh' \
    > test.out 2>&1
eval_tap $? 119 'GetEstimatedPrice' test.out

#- 120 GetItemIdBySku
samples/cli/sample-apps Platform getItemIdBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'uubBoBM7ZrQsyhfV' \
    --sku 'DsloGWuV1suahDey' \
    > test.out 2>&1
eval_tap $? 120 'GetItemIdBySku' test.out

#- 121 GetBulkItemIdBySkus
samples/cli/sample-apps Platform getBulkItemIdBySkus \
    --namespace $AB_NAMESPACE \
    --sku '["I0uGJCIxu4jqYg6o", "ApAsUNbPa5ZycCjF", "zae4kLAt7O4RN2BP"]' \
    --storeId '63KZB6nKAPok69J7' \
    > test.out 2>&1
eval_tap $? 121 'GetBulkItemIdBySkus' test.out

#- 122 BulkGetLocaleItems
samples/cli/sample-apps Platform bulkGetLocaleItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --language 'BZUuAau75qgLRbCR' \
    --region 'XDdGlGbZt3RN6why' \
    --storeId 'Xdt94A3zQEbkUswN' \
    --itemIds '9R310mP9NPqbkMl3' \
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
    --platform '2dvbQgEn9j2iqGz6' \
    --userId 'ErJu8EPpgA9TQLBI' \
    --body '{"itemIds": ["E92jYHyUWlKfwZxq", "u6EXaaRF3DRPVEbJ", "bJAco51sDhHMbaA3"]}' \
    > test.out 2>&1
eval_tap $? 124 'ValidateItemPurchaseCondition' test.out

#- 125 BulkUpdateRegionData
samples/cli/sample-apps Platform bulkUpdateRegionData \
    --namespace $AB_NAMESPACE \
    --storeId 'XQqKALC2leKRfW4J' \
    --body '{"changes": [{"itemIdentities": ["p8NinISZrp0WoSgW", "vaAvB78LS0PRQ0TB", "oZWUKTKoWDokxPRx"], "itemIdentityType": "ITEM_ID", "regionData": {"EoLPADYjGzFAdPzo": [{"currencyCode": "25LImhFIeE1XXw92", "currencyNamespace": "A2i15491pVYOUJLU", "currencyType": "REAL", "discountAmount": 11, "discountExpireAt": "1993-07-11T00:00:00Z", "discountPercentage": 3, "discountPurchaseAt": "1993-11-09T00:00:00Z", "discountedPrice": 88, "expireAt": "1998-02-27T00:00:00Z", "price": 24, "purchaseAt": "1976-09-29T00:00:00Z", "trialPrice": 79}, {"currencyCode": "4PKGD8LDcXko2B0z", "currencyNamespace": "5lCL1U705vGnvRpA", "currencyType": "REAL", "discountAmount": 24, "discountExpireAt": "1991-01-03T00:00:00Z", "discountPercentage": 9, "discountPurchaseAt": "1975-02-19T00:00:00Z", "discountedPrice": 43, "expireAt": "1994-12-01T00:00:00Z", "price": 89, "purchaseAt": "1981-08-28T00:00:00Z", "trialPrice": 30}, {"currencyCode": "J3Q5OWNVZlmU9zIF", "currencyNamespace": "1YWnqtjBm7hPjKUZ", "currencyType": "VIRTUAL", "discountAmount": 58, "discountExpireAt": "1987-06-05T00:00:00Z", "discountPercentage": 73, "discountPurchaseAt": "1988-01-11T00:00:00Z", "discountedPrice": 15, "expireAt": "1996-05-12T00:00:00Z", "price": 70, "purchaseAt": "1996-04-14T00:00:00Z", "trialPrice": 14}], "Mytv0nJjkIPQ7qxR": [{"currencyCode": "rvtofPXnF0IPoykN", "currencyNamespace": "yzfqyjrJfcqWd2Ey", "currencyType": "REAL", "discountAmount": 52, "discountExpireAt": "1985-06-26T00:00:00Z", "discountPercentage": 84, "discountPurchaseAt": "1972-04-04T00:00:00Z", "discountedPrice": 35, "expireAt": "1984-03-25T00:00:00Z", "price": 77, "purchaseAt": "1999-11-01T00:00:00Z", "trialPrice": 67}, {"currencyCode": "dGGPLuKzNDljPkKh", "currencyNamespace": "XWwzDZlMap6W8uYA", "currencyType": "VIRTUAL", "discountAmount": 16, "discountExpireAt": "1978-05-13T00:00:00Z", "discountPercentage": 42, "discountPurchaseAt": "1998-05-29T00:00:00Z", "discountedPrice": 91, "expireAt": "1998-10-22T00:00:00Z", "price": 63, "purchaseAt": "1985-04-29T00:00:00Z", "trialPrice": 85}, {"currencyCode": "bj8enqVKS3iyUB40", "currencyNamespace": "nXO5UDUy0dM8nAYx", "currencyType": "VIRTUAL", "discountAmount": 98, "discountExpireAt": "1995-04-27T00:00:00Z", "discountPercentage": 12, "discountPurchaseAt": "1985-04-26T00:00:00Z", "discountedPrice": 3, "expireAt": "1977-03-06T00:00:00Z", "price": 63, "purchaseAt": "1993-06-20T00:00:00Z", "trialPrice": 55}], "JyXuQgst62pgs9Lf": [{"currencyCode": "ALKJttsP1mOUmZI8", "currencyNamespace": "wZlKB8xIomAqJ39y", "currencyType": "REAL", "discountAmount": 25, "discountExpireAt": "1977-04-26T00:00:00Z", "discountPercentage": 51, "discountPurchaseAt": "1980-03-15T00:00:00Z", "discountedPrice": 19, "expireAt": "1984-02-27T00:00:00Z", "price": 81, "purchaseAt": "1981-08-18T00:00:00Z", "trialPrice": 36}, {"currencyCode": "PLTe812S0DqWoxtu", "currencyNamespace": "eZLBGym4f0m1ICh8", "currencyType": "REAL", "discountAmount": 60, "discountExpireAt": "1974-01-21T00:00:00Z", "discountPercentage": 36, "discountPurchaseAt": "1996-11-18T00:00:00Z", "discountedPrice": 0, "expireAt": "1975-04-25T00:00:00Z", "price": 73, "purchaseAt": "1982-08-28T00:00:00Z", "trialPrice": 9}, {"currencyCode": "FAYx8bkPKjwAhvDw", "currencyNamespace": "d01eCeKUhF58N9Dq", "currencyType": "REAL", "discountAmount": 24, "discountExpireAt": "1983-04-03T00:00:00Z", "discountPercentage": 2, "discountPurchaseAt": "1990-12-29T00:00:00Z", "discountedPrice": 65, "expireAt": "1989-08-06T00:00:00Z", "price": 39, "purchaseAt": "1993-08-31T00:00:00Z", "trialPrice": 41}]}}, {"itemIdentities": ["OijxIM0L3dmWtoPR", "Yr0Iwio3BCK03Nax", "xc5sDHU3JEZU5bDw"], "itemIdentityType": "ITEM_SKU", "regionData": {"l2gEsp1msAiGHXT5": [{"currencyCode": "a54LKg24U89kDGXt", "currencyNamespace": "ndWGqAE0lgEfMx9y", "currencyType": "REAL", "discountAmount": 47, "discountExpireAt": "1983-12-19T00:00:00Z", "discountPercentage": 25, "discountPurchaseAt": "1995-08-10T00:00:00Z", "discountedPrice": 41, "expireAt": "1972-05-16T00:00:00Z", "price": 21, "purchaseAt": "1974-05-14T00:00:00Z", "trialPrice": 38}, {"currencyCode": "FzkrbHZ9BXxgaiJV", "currencyNamespace": "wnqop8LA7RoavFpJ", "currencyType": "REAL", "discountAmount": 40, "discountExpireAt": "1998-09-10T00:00:00Z", "discountPercentage": 60, "discountPurchaseAt": "1993-11-10T00:00:00Z", "discountedPrice": 38, "expireAt": "1999-06-03T00:00:00Z", "price": 25, "purchaseAt": "1986-10-06T00:00:00Z", "trialPrice": 48}, {"currencyCode": "5ThwmcJplJWTfB8S", "currencyNamespace": "a8Y6S0w1NwftxVFD", "currencyType": "REAL", "discountAmount": 6, "discountExpireAt": "1983-11-20T00:00:00Z", "discountPercentage": 88, "discountPurchaseAt": "1998-11-29T00:00:00Z", "discountedPrice": 8, "expireAt": "1974-11-08T00:00:00Z", "price": 100, "purchaseAt": "1998-06-02T00:00:00Z", "trialPrice": 69}], "VMX0IiTF3BhfuaKy": [{"currencyCode": "iHzGW40g9j5mIMpM", "currencyNamespace": "npRJ8yWOvDXMcun0", "currencyType": "VIRTUAL", "discountAmount": 26, "discountExpireAt": "1974-11-01T00:00:00Z", "discountPercentage": 22, "discountPurchaseAt": "1995-11-26T00:00:00Z", "discountedPrice": 65, "expireAt": "1973-07-28T00:00:00Z", "price": 79, "purchaseAt": "1973-07-12T00:00:00Z", "trialPrice": 64}, {"currencyCode": "uk3WxsJz297bUtJj", "currencyNamespace": "67Sf4IHEzHYFBGMK", "currencyType": "REAL", "discountAmount": 18, "discountExpireAt": "1998-03-18T00:00:00Z", "discountPercentage": 26, "discountPurchaseAt": "1989-03-03T00:00:00Z", "discountedPrice": 20, "expireAt": "1986-04-04T00:00:00Z", "price": 56, "purchaseAt": "1986-10-18T00:00:00Z", "trialPrice": 61}, {"currencyCode": "MZc8wEnwRbmYGwMz", "currencyNamespace": "L5RZrKuDAz9JdSfB", "currencyType": "REAL", "discountAmount": 1, "discountExpireAt": "1977-07-25T00:00:00Z", "discountPercentage": 36, "discountPurchaseAt": "1978-02-18T00:00:00Z", "discountedPrice": 14, "expireAt": "1996-11-10T00:00:00Z", "price": 72, "purchaseAt": "1990-12-10T00:00:00Z", "trialPrice": 30}], "gS54428pmzTjXXPq": [{"currencyCode": "qYnCK4FfLsXK8SjN", "currencyNamespace": "hSaDWRxPj3LFSWf2", "currencyType": "REAL", "discountAmount": 23, "discountExpireAt": "1971-06-29T00:00:00Z", "discountPercentage": 77, "discountPurchaseAt": "1993-05-28T00:00:00Z", "discountedPrice": 16, "expireAt": "1979-07-19T00:00:00Z", "price": 86, "purchaseAt": "1977-07-29T00:00:00Z", "trialPrice": 37}, {"currencyCode": "DY1Zsb2VEgtzqJyN", "currencyNamespace": "2KLGihpgjQoNpuxR", "currencyType": "VIRTUAL", "discountAmount": 100, "discountExpireAt": "1999-05-14T00:00:00Z", "discountPercentage": 7, "discountPurchaseAt": "1991-12-28T00:00:00Z", "discountedPrice": 34, "expireAt": "1990-05-07T00:00:00Z", "price": 43, "purchaseAt": "1987-01-06T00:00:00Z", "trialPrice": 68}, {"currencyCode": "D1N0GqCxypsLvvf3", "currencyNamespace": "nyNiimyKAYfdv3P8", "currencyType": "VIRTUAL", "discountAmount": 54, "discountExpireAt": "1972-08-14T00:00:00Z", "discountPercentage": 95, "discountPurchaseAt": "1972-08-10T00:00:00Z", "discountedPrice": 94, "expireAt": "1983-02-22T00:00:00Z", "price": 80, "purchaseAt": "1990-12-28T00:00:00Z", "trialPrice": 39}]}}, {"itemIdentities": ["udAxXXLqC4pDQ2g1", "OnkUkJHdKHgInUwR", "pibEDLL9adOCHApU"], "itemIdentityType": "ITEM_SKU", "regionData": {"FDnUym76veBgQWGZ": [{"currencyCode": "aUumU1qdV82Zstz6", "currencyNamespace": "3r2hmlVNn0ivDVcO", "currencyType": "VIRTUAL", "discountAmount": 71, "discountExpireAt": "1978-02-25T00:00:00Z", "discountPercentage": 74, "discountPurchaseAt": "1978-05-15T00:00:00Z", "discountedPrice": 39, "expireAt": "1984-07-30T00:00:00Z", "price": 23, "purchaseAt": "1999-05-24T00:00:00Z", "trialPrice": 84}, {"currencyCode": "F2jRA6tsKFYbXgzI", "currencyNamespace": "djatVefxtDLk3jGD", "currencyType": "REAL", "discountAmount": 0, "discountExpireAt": "1982-06-06T00:00:00Z", "discountPercentage": 18, "discountPurchaseAt": "1981-02-13T00:00:00Z", "discountedPrice": 75, "expireAt": "1973-01-05T00:00:00Z", "price": 15, "purchaseAt": "1980-10-18T00:00:00Z", "trialPrice": 88}, {"currencyCode": "QVNuW0xdOe8NO55i", "currencyNamespace": "wRHflx5Aqxn8vy8t", "currencyType": "VIRTUAL", "discountAmount": 38, "discountExpireAt": "1984-09-26T00:00:00Z", "discountPercentage": 65, "discountPurchaseAt": "1971-07-05T00:00:00Z", "discountedPrice": 55, "expireAt": "1972-05-18T00:00:00Z", "price": 54, "purchaseAt": "1988-03-10T00:00:00Z", "trialPrice": 80}], "0INsbZ4TJSvzujtL": [{"currencyCode": "LPOurKSUdGilCmFF", "currencyNamespace": "GMV3yYTkMcQ2SsBN", "currencyType": "REAL", "discountAmount": 32, "discountExpireAt": "1978-08-19T00:00:00Z", "discountPercentage": 78, "discountPurchaseAt": "1978-05-15T00:00:00Z", "discountedPrice": 63, "expireAt": "1973-03-21T00:00:00Z", "price": 2, "purchaseAt": "1977-09-08T00:00:00Z", "trialPrice": 19}, {"currencyCode": "XnSyjgRuPrtUTbdp", "currencyNamespace": "zB0C0WNdXJU2Pphz", "currencyType": "VIRTUAL", "discountAmount": 42, "discountExpireAt": "1986-02-15T00:00:00Z", "discountPercentage": 64, "discountPurchaseAt": "1976-09-26T00:00:00Z", "discountedPrice": 32, "expireAt": "1993-07-03T00:00:00Z", "price": 95, "purchaseAt": "1994-07-06T00:00:00Z", "trialPrice": 12}, {"currencyCode": "5houGVfiena6TT1a", "currencyNamespace": "ro8NdtrvjO691tRZ", "currencyType": "VIRTUAL", "discountAmount": 20, "discountExpireAt": "1996-06-17T00:00:00Z", "discountPercentage": 53, "discountPurchaseAt": "1993-04-17T00:00:00Z", "discountedPrice": 93, "expireAt": "1978-08-24T00:00:00Z", "price": 83, "purchaseAt": "1992-02-24T00:00:00Z", "trialPrice": 66}], "YtyuL2c7K3WYXoGW": [{"currencyCode": "auryq6GFdE8QV4PP", "currencyNamespace": "B9zuN1GhsLWIkW7d", "currencyType": "VIRTUAL", "discountAmount": 57, "discountExpireAt": "1995-11-20T00:00:00Z", "discountPercentage": 19, "discountPurchaseAt": "1985-08-21T00:00:00Z", "discountedPrice": 91, "expireAt": "1997-06-13T00:00:00Z", "price": 6, "purchaseAt": "1994-01-11T00:00:00Z", "trialPrice": 13}, {"currencyCode": "GBdK9lAUnLQTlz8v", "currencyNamespace": "334EnTGZ3znjwL9W", "currencyType": "REAL", "discountAmount": 74, "discountExpireAt": "1975-08-31T00:00:00Z", "discountPercentage": 68, "discountPurchaseAt": "1993-10-30T00:00:00Z", "discountedPrice": 97, "expireAt": "1998-09-28T00:00:00Z", "price": 21, "purchaseAt": "1976-07-25T00:00:00Z", "trialPrice": 6}, {"currencyCode": "SmV3Hat03MR1rpFz", "currencyNamespace": "nvR2dvTLRSsx55uC", "currencyType": "VIRTUAL", "discountAmount": 93, "discountExpireAt": "1984-05-27T00:00:00Z", "discountPercentage": 83, "discountPurchaseAt": "1973-08-01T00:00:00Z", "discountedPrice": 90, "expireAt": "1988-03-19T00:00:00Z", "price": 70, "purchaseAt": "1987-10-07T00:00:00Z", "trialPrice": 32}]}}]}' \
    > test.out 2>&1
eval_tap $? 125 'BulkUpdateRegionData' test.out

#- 126 SearchItems
samples/cli/sample-apps Platform searchItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --itemType 'LOOTBOX' \
    --limit '65' \
    --offset '50' \
    --sortBy '4eAUdzMD2JNQO0Wu' \
    --storeId 'uJEjx0aEPM5M8N1t' \
    --keyword 'F01bIn6gBNqu3dzO' \
    --language 'GLYmcOlHi7nwk5rF' \
    > test.out 2>&1
eval_tap $? 126 'SearchItems' test.out

#- 127 QueryUncategorizedItems
samples/cli/sample-apps Platform queryUncategorizedItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --limit '5' \
    --offset '73' \
    --sortBy '["displayOrder:desc", "displayOrder:asc", "name:desc"]' \
    --storeId 'Zy27VG1Nld7csmz0' \
    > test.out 2>&1
eval_tap $? 127 'QueryUncategorizedItems' test.out

#- 128 GetItem
samples/cli/sample-apps Platform getItem \
    --itemId 'SuQ7urNLlPjFQ6lv' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'YHsgnsqPFsmFzfCS' \
    > test.out 2>&1
eval_tap $? 128 'GetItem' test.out

#- 129 UpdateItem
samples/cli/sample-apps Platform updateItem \
    --itemId '5ouQ6vAFAf62IC6i' \
    --namespace $AB_NAMESPACE \
    --storeId '7uPJjJrtn0FexmNc' \
    --body '{"appId": "Xy7PASdZsKNvW6zV", "appType": "SOFTWARE", "baseAppId": "qtirPA6WjDNy1Eu5", "boothName": "fdm6bL2nTRCNA2oO", "categoryPath": "vEoNnfscMVE5NeqY", "clazz": "nkpyXXs8PjbFAYnh", "displayOrder": 73, "entitlementType": "CONSUMABLE", "ext": {"AbRo3Bo87Mvi7HLz": {}, "9vlVDnRDluFgSNU0": {}, "yKHZVQFLejLMw5ak": {}}, "features": ["DRxin492Sq7gMXfW", "MbqpnvybYPhomC0a", "hhxOiR03xb6gWW6S"], "flexible": false, "images": [{"as": "hKC2JGza1ytWoBHy", "caption": "J4BhhBtroRSm5MjF", "height": 23, "imageUrl": "A1DlhYpgs9C1FFHi", "smallImageUrl": "bXgMnbu6WsqqN4JN", "width": 71}, {"as": "EFeh8S1BeFsJgkDT", "caption": "K29g5xk3w3F6bBHi", "height": 31, "imageUrl": "DtCN5l3GTTnRX6QT", "smallImageUrl": "6NbgT24lFzDTeEHV", "width": 61}, {"as": "iyCgzfbQb1SOYpHq", "caption": "lICogciyuHH71wcg", "height": 29, "imageUrl": "xKyAKYn8389JcmGl", "smallImageUrl": "aB0P0ze2AufqS1M3", "width": 0}], "inventoryConfig": {"customAttributes": {"CiBd94rgPa8ATaCw": {}, "o0hkFpcfgqtXPNsn": {}, "kJxkAf42RMsbW778": {}}, "serverCustomAttributes": {"7p1MoqNI2E4N3mxI": {}, "mTXcFMSrxJZ6gMPJ": {}, "0OR0qHtrjP32THdg": {}}, "slotUsed": 80}, "itemIds": ["IATM8nMj32JHPWfP", "cgor6vKsvCp3wof4", "Ozwb1OWapWsFUHTk"], "itemQty": {"vpVaRATPK2Za62fD": 79, "oDqW7m47vYWZ3nqU": 51, "J0PPRkcJJokj8pyt": 16}, "itemType": "MEDIA", "listable": true, "localizations": {"Fn7zdOT2TK1emHqR": {"description": "YHzgkrR0Gol7wGRc", "localExt": {"ywCQaZ2NGPV1qMq7": {}, "UkQ9iHy1nf4vAL63": {}, "duG7mtxNkFnYSBcR": {}}, "longDescription": "3AabN5Pg3S1OeqMi", "title": "csnNzXOuAw4LirNz"}, "dSaY0OIgB7GhDbBv": {"description": "vRHXvj2IdUWhjkn7", "localExt": {"lHCHNOhVyAFuX6rq": {}, "O1DQMe8QJKEqUYLg": {}, "i2HRHRfHWQc2CdIa": {}}, "longDescription": "HsHqq0tQFjwfBWVR", "title": "AWODuF2msSvwx4EI"}, "WchDKLADG8pLOuLC": {"description": "inVdIUEunYMXglDA", "localExt": {"A2qJcJv5pcsELh6e": {}, "4TTgZ1d4FzDDL933": {}, "5AGfdctZ0GvOYHkh": {}}, "longDescription": "EIOsfyVV6vINLhIW", "title": "Ih1l7D2y6a0pUREv"}}, "lootBoxConfig": {"rewardCount": 30, "rewards": [{"lootBoxItems": [{"count": 93, "duration": 82, "endDate": "1978-08-31T00:00:00Z", "itemId": "jFUAS1wnBfnKd2Ah", "itemSku": "2BTaSJBwi9JsN1zh", "itemType": "TYUuTWLEtOzcAyI2"}, {"count": 0, "duration": 1, "endDate": "1973-02-09T00:00:00Z", "itemId": "93W1tLpsZGBBfilC", "itemSku": "JuG1R5U7gz1yBu2H", "itemType": "8xa1B4abCiUQnPTO"}, {"count": 82, "duration": 22, "endDate": "1981-10-09T00:00:00Z", "itemId": "Wel2yrsFXbGrXROS", "itemSku": "aduMpoCPipp4QTBz", "itemType": "dEXrKFJckqqzkFCW"}], "name": "ou2SVNZFxKrmi9dG", "odds": 0.7678206579376119, "type": "REWARD_GROUP", "weight": 18}, {"lootBoxItems": [{"count": 98, "duration": 20, "endDate": "1986-06-17T00:00:00Z", "itemId": "vUprvyZw5IgQxX6i", "itemSku": "7X5REqnS6g5l5dM7", "itemType": "jxcrYV6JJ2N1UXSc"}, {"count": 75, "duration": 30, "endDate": "1986-01-25T00:00:00Z", "itemId": "9SqfXzosIUiOPvQW", "itemSku": "Q5oWTbqz7oKRs0Bq", "itemType": "OIoFKHkYware4DjM"}, {"count": 37, "duration": 20, "endDate": "1994-06-12T00:00:00Z", "itemId": "EDdhve9V8kFknaLu", "itemSku": "hmC3kPepxnZTGKho", "itemType": "ZJWx659nInXibbiu"}], "name": "dTdk0q1cLCsy7wO1", "odds": 0.3978902216876613, "type": "PROBABILITY_GROUP", "weight": 94}, {"lootBoxItems": [{"count": 76, "duration": 88, "endDate": "1982-09-02T00:00:00Z", "itemId": "W8XCaAnZ7skU29hG", "itemSku": "lu1NwMRtgQFVG7z2", "itemType": "NhEizHx4b4eUQaFX"}, {"count": 53, "duration": 2, "endDate": "1993-11-30T00:00:00Z", "itemId": "rgmiomtnbIfZnEfy", "itemSku": "fYYRzVzpkSWVqrGo", "itemType": "0rpCberMEbazwlSq"}, {"count": 21, "duration": 24, "endDate": "1973-04-26T00:00:00Z", "itemId": "hWqSxuBFeL2jT6FE", "itemSku": "ywWrc22f9sVgc9Lh", "itemType": "LJUTSfaFMucdrIjs"}], "name": "dY0yu3tE0vabs17F", "odds": 0.9653183207823056, "type": "REWARD_GROUP", "weight": 5}], "rollFunction": "CUSTOM"}, "maxCount": 63, "maxCountPerUser": 75, "name": "4lHPR1jYTQI0rBrD", "optionBoxConfig": {"boxItems": [{"count": 1, "duration": 100, "endDate": "1986-12-21T00:00:00Z", "itemId": "VDJ8HKjK1Fkm9YHO", "itemSku": "joO676niuq6P2XvT", "itemType": "pP03ncaelLySvLk5"}, {"count": 54, "duration": 54, "endDate": "1986-05-03T00:00:00Z", "itemId": "acSsvXeggHFCvux3", "itemSku": "2D8PNYqrRPE5I9WX", "itemType": "gGP16LovtEt3AfuI"}, {"count": 70, "duration": 36, "endDate": "1982-01-21T00:00:00Z", "itemId": "bv1BZALYBicmBBdk", "itemSku": "utK07IvUoNj9o2uM", "itemType": "g1gRoc2JDt7wUCet"}]}, "purchasable": false, "recurring": {"cycle": "MONTHLY", "fixedFreeDays": 7, "fixedTrialCycles": 1, "graceDays": 97}, "regionData": {"MM1SYDTHPDiTWHB0": [{"currencyCode": "v7z4QM4WKRtLbn2R", "currencyNamespace": "i7smiUNXJCXS0zYM", "currencyType": "REAL", "discountAmount": 97, "discountExpireAt": "1992-08-25T00:00:00Z", "discountPercentage": 10, "discountPurchaseAt": "1976-03-25T00:00:00Z", "expireAt": "1983-06-05T00:00:00Z", "price": 16, "purchaseAt": "1983-01-14T00:00:00Z", "trialPrice": 65}, {"currencyCode": "louLsnfagx9yXsoG", "currencyNamespace": "kMSDDWPSecsS8vbz", "currencyType": "VIRTUAL", "discountAmount": 52, "discountExpireAt": "1996-02-01T00:00:00Z", "discountPercentage": 21, "discountPurchaseAt": "1973-05-31T00:00:00Z", "expireAt": "1979-07-23T00:00:00Z", "price": 88, "purchaseAt": "1974-10-09T00:00:00Z", "trialPrice": 87}, {"currencyCode": "oGgBz930HgF3D2Z9", "currencyNamespace": "yAxKDsXSBBp6BWjq", "currencyType": "REAL", "discountAmount": 70, "discountExpireAt": "1973-03-04T00:00:00Z", "discountPercentage": 96, "discountPurchaseAt": "1978-12-06T00:00:00Z", "expireAt": "1994-01-11T00:00:00Z", "price": 14, "purchaseAt": "1985-09-19T00:00:00Z", "trialPrice": 84}], "AQABhaijCx8suSMs": [{"currencyCode": "8yYSIxhmLjbQm277", "currencyNamespace": "W9rejbO6shdCreRk", "currencyType": "VIRTUAL", "discountAmount": 43, "discountExpireAt": "1994-11-07T00:00:00Z", "discountPercentage": 33, "discountPurchaseAt": "1995-10-08T00:00:00Z", "expireAt": "1975-08-22T00:00:00Z", "price": 89, "purchaseAt": "1980-10-22T00:00:00Z", "trialPrice": 13}, {"currencyCode": "zLvqgLHc7M1vgN2C", "currencyNamespace": "jLz9AONtMkbDw5SU", "currencyType": "REAL", "discountAmount": 73, "discountExpireAt": "1972-05-02T00:00:00Z", "discountPercentage": 36, "discountPurchaseAt": "1984-08-01T00:00:00Z", "expireAt": "1996-03-30T00:00:00Z", "price": 85, "purchaseAt": "1971-01-17T00:00:00Z", "trialPrice": 7}, {"currencyCode": "FmH0ZsUuRg8PR3yG", "currencyNamespace": "G1za8cFi93jKUzyA", "currencyType": "VIRTUAL", "discountAmount": 56, "discountExpireAt": "1986-08-28T00:00:00Z", "discountPercentage": 95, "discountPurchaseAt": "1996-07-10T00:00:00Z", "expireAt": "1995-09-02T00:00:00Z", "price": 52, "purchaseAt": "1992-06-07T00:00:00Z", "trialPrice": 81}], "5KqQixE0WpFsAEoT": [{"currencyCode": "ibGfOgMNaFEShRpE", "currencyNamespace": "gS3MuKXcfcwHmK68", "currencyType": "REAL", "discountAmount": 48, "discountExpireAt": "1992-06-12T00:00:00Z", "discountPercentage": 13, "discountPurchaseAt": "1996-10-18T00:00:00Z", "expireAt": "1988-07-21T00:00:00Z", "price": 68, "purchaseAt": "1987-03-09T00:00:00Z", "trialPrice": 84}, {"currencyCode": "OCA3Q6ONykujtGTH", "currencyNamespace": "ersTC6nsbMYvQNT4", "currencyType": "REAL", "discountAmount": 91, "discountExpireAt": "1990-12-09T00:00:00Z", "discountPercentage": 56, "discountPurchaseAt": "1991-11-06T00:00:00Z", "expireAt": "1992-01-04T00:00:00Z", "price": 15, "purchaseAt": "1991-11-23T00:00:00Z", "trialPrice": 41}, {"currencyCode": "lD4rCQ4HRLO3SjLR", "currencyNamespace": "o7vs6XmZ7KxCcbcN", "currencyType": "VIRTUAL", "discountAmount": 94, "discountExpireAt": "1981-11-14T00:00:00Z", "discountPercentage": 28, "discountPurchaseAt": "1989-05-23T00:00:00Z", "expireAt": "1982-05-19T00:00:00Z", "price": 84, "purchaseAt": "1992-02-13T00:00:00Z", "trialPrice": 6}]}, "saleConfig": {"currencyCode": "mLfABftFj5Q5XDA8", "price": 32}, "seasonType": "TIER", "sectionExclusive": true, "sellable": false, "sku": "ZMCZ61dAkR5EaY8w", "stackable": true, "status": "ACTIVE", "tags": ["OxHilBE2eHzYgesU", "YCOpxBwnEwaK1Vks", "vHMhRFFSsraqLVCY"], "targetCurrencyCode": "yVH7xUv3IQ1TIzeq", "targetNamespace": "616qy1VKB3TjL7aQ", "thumbnailUrl": "zTqKGCDN7HcQburD", "useCount": 57}' \
    > test.out 2>&1
eval_tap $? 129 'UpdateItem' test.out

#- 130 DeleteItem
samples/cli/sample-apps Platform deleteItem \
    --itemId 'AySiz69BHqmVyhDt' \
    --namespace $AB_NAMESPACE \
    --force 'true' \
    --storeId 'ZNrLzPrE8IDAZgmE' \
    > test.out 2>&1
eval_tap $? 130 'DeleteItem' test.out

#- 131 AcquireItem
samples/cli/sample-apps Platform acquireItem \
    --itemId 'C6iOpOWCIGjJfmJ2' \
    --namespace $AB_NAMESPACE \
    --body '{"count": 33, "orderNo": "ULrdrUAA7iK6LTS0"}' \
    > test.out 2>&1
eval_tap $? 131 'AcquireItem' test.out

#- 132 GetApp
samples/cli/sample-apps Platform getApp \
    --itemId 'oYE82ce97nnwQIbo' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --storeId 'fT0S4uTAtR4LbaOY' \
    > test.out 2>&1
eval_tap $? 132 'GetApp' test.out

#- 133 UpdateApp
samples/cli/sample-apps Platform updateApp \
    --itemId 'iV8pd2YJWOSpo2q5' \
    --namespace $AB_NAMESPACE \
    --storeId 'Pf34qZ61Rd1b1NIq' \
    --body '{"carousel": [{"alt": "FRDldtUkQzulrqMz", "previewUrl": "6Ggygg4EHblYLmfC", "thumbnailUrl": "juJiFcV0n3IKBlow", "type": "video", "url": "dYfx9ISbiE7PM3h8", "videoSource": "generic"}, {"alt": "N9wtOHBn3EgHwlBV", "previewUrl": "bH6K0KcLjhTJDX4o", "thumbnailUrl": "SCZQ2XjhyIOdrylA", "type": "image", "url": "II8tLd3En6oxo6Ng", "videoSource": "vimeo"}, {"alt": "rkGPrVvms7XdeaPt", "previewUrl": "3vPujbQWfwsKelbb", "thumbnailUrl": "vJDy6vN3fkEQ52LF", "type": "image", "url": "yapVfLjr5Ghlffb0", "videoSource": "generic"}], "developer": "yY8dzaSm8rQY8k9t", "forumUrl": "wHJks5hwTBRQvCrE", "genres": ["RPG", "Racing", "Simulation"], "localizations": {"Q1igREBo3y6wxD3U": {"announcement": "GZBpWRYtxwZdUSiY", "slogan": "jFwjKFN18xhWcWrn"}, "lOy1PvDq1oY8mn7G": {"announcement": "xgi9z3og7XiCXVpS", "slogan": "YyuYzKp0IBcYI6AR"}, "IyimjNmEgtob4YBJ": {"announcement": "iroQdasb545UQjQb", "slogan": "X2N6X6eb5Z0HbOer"}}, "platformRequirements": {"ZEKUKSju4TGFF2fY": [{"additionals": "UaoGGKOZQKttKI0i", "directXVersion": "k3Xs712pBKtsZPuo", "diskSpace": "45GasBSLZNQg9Fvp", "graphics": "pxBteTDJ6F5mRoOP", "label": "0MY5N6soTWy260x8", "osVersion": "N1gqld9FKnBesZ80", "processor": "PcwULFejrNqGIuvH", "ram": "Nv24bUPmXzxvZOOJ", "soundCard": "DqTymAfWj6yOcceP"}, {"additionals": "9140NdpuyiHYVwWU", "directXVersion": "A2zujs5PqnQw9xYo", "diskSpace": "f1MfSKyeX8qjzF4Y", "graphics": "2RfBFb3V1qy5J3BT", "label": "tcpKwlSNvbqf7skN", "osVersion": "QBvsmjV0je9KI2nJ", "processor": "sp0nj9izqH0KDeyt", "ram": "lZUamXejX1w4rOKT", "soundCard": "4Ipk42S01zhGGbjw"}, {"additionals": "s0V8xXu9bkwFU7Cb", "directXVersion": "cZiCHVWX2MEuLI27", "diskSpace": "p6coMPu1Wq6BgbHC", "graphics": "apB1Nx13xjlWcuZ0", "label": "k3v5YSGmMQQQRbio", "osVersion": "dATAnfeSNW728zMl", "processor": "YvgkBhiFfSsjxmZo", "ram": "YIGTVldVYv8UIc5V", "soundCard": "AUEm2eUWGuLogI0z"}], "2YY5CEpNVxgITmfh": [{"additionals": "tvbag7qf7zz0th02", "directXVersion": "ntMxjwtdkFwqZMsw", "diskSpace": "QcBsDG1trV7ZNmRK", "graphics": "eV5Ftk9WhZAgjqgQ", "label": "khSmaV3GBwM2c2c0", "osVersion": "3QRtXra9UKR9OPWm", "processor": "CH6tHZiQzdkkLiWc", "ram": "AfAhYLm2LOFDeHYk", "soundCard": "hZ4B7APT0Ng2priw"}, {"additionals": "P5ROEGN1SHHvbxYw", "directXVersion": "bNHu5t2rSmavUlEY", "diskSpace": "uluiykE2BPdCpAuJ", "graphics": "NSCRqM3kzmEuYS5K", "label": "0CKMnBsElr6Gg9Ml", "osVersion": "er3NrNYxSzCuyScd", "processor": "tih1wf7EbWev5Oai", "ram": "LtLXlgACP8nQ5Ax4", "soundCard": "uEkj1niRV4duASAX"}, {"additionals": "9TvvSsMp1pixk9DJ", "directXVersion": "zeawxit9dUlyDeo6", "diskSpace": "c2V7hSWmqAQJYikM", "graphics": "lWYyUH1LonNGKAM5", "label": "ULZNSGbcVmNdYU4H", "osVersion": "kKsKy2OAYsVlCRdu", "processor": "tUVrUoqzCPBQj7lJ", "ram": "o4wHiqCFFqpfYecJ", "soundCard": "1xZlzxw08T6Jmscc"}], "xKWV53smyea5qjUb": [{"additionals": "vi973D7OXKmkVf7y", "directXVersion": "6hSvvGDJ632NEeE4", "diskSpace": "3gdKrx7vJix17eF7", "graphics": "bmYylo7zvCjpGEGL", "label": "07W22cv6drnV1icp", "osVersion": "QidF9II6NdQEkBEQ", "processor": "cQnZvnuGKmd5CdG4", "ram": "lz29nevOeD00Myic", "soundCard": "UvDLvO0oVAJhzdFn"}, {"additionals": "Hqm2pBr7IK6RqEEs", "directXVersion": "A35Wl7T6EeH4plAD", "diskSpace": "ZY1mHhPcxJo6Ehyk", "graphics": "c4v3amY0VgZFJLH2", "label": "EiHZXwrhOCL2u1cR", "osVersion": "GByctKXCVjCSJk20", "processor": "kxibCL3HuQZNdPV2", "ram": "4Qb9JZh7w51wYasy", "soundCard": "MrUna37mB9T5QwzH"}, {"additionals": "q2QA8DwFs2nxQ7fT", "directXVersion": "p1SkLvtBq2d1IPzH", "diskSpace": "4wWTzevU5LwBBxvV", "graphics": "Mx74tqazXutxGCpR", "label": "0esPgH9uqBWcaywT", "osVersion": "vdEsxWILqOtmAWsd", "processor": "ux1BI5vhu6GIlru3", "ram": "81q9QtDO6Q6PtLEX", "soundCard": "1ZyegQilG1efg3k8"}]}, "platforms": ["IOS", "MacOS", "MacOS"], "players": ["MMO", "Single", "Coop"], "primaryGenre": "Casual", "publisher": "L8SjDuBOSAitgcxB", "releaseDate": "1972-04-12T00:00:00Z", "websiteUrl": "QuC2L32m7rLIXf3n"}' \
    > test.out 2>&1
eval_tap $? 133 'UpdateApp' test.out

#- 134 DisableItem
samples/cli/sample-apps Platform disableItem \
    --itemId 'FVjlI2xQl6eLX7Zz' \
    --namespace $AB_NAMESPACE \
    --storeId 'VPiKuR8HBmWYzFEy' \
    > test.out 2>&1
eval_tap $? 134 'DisableItem' test.out

#- 135 GetItemDynamicData
samples/cli/sample-apps Platform getItemDynamicData \
    --itemId 'ww38FZmrgMY4tc7z' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 135 'GetItemDynamicData' test.out

#- 136 EnableItem
samples/cli/sample-apps Platform enableItem \
    --itemId 'sOZenIRYMV9UzWWt' \
    --namespace $AB_NAMESPACE \
    --storeId 'Sjn29GLz2G8KC8a9' \
    > test.out 2>&1
eval_tap $? 136 'EnableItem' test.out

#- 137 FeatureItem
samples/cli/sample-apps Platform featureItem \
    --feature '8ua014Zy8DLBGkYl' \
    --itemId 'KloBIpVH3YDxu9zv' \
    --namespace $AB_NAMESPACE \
    --storeId 'oK4xQHysl7mr8yQa' \
    > test.out 2>&1
eval_tap $? 137 'FeatureItem' test.out

#- 138 DefeatureItem
samples/cli/sample-apps Platform defeatureItem \
    --feature 'DNXxNvcn0hA8vZtv' \
    --itemId 'Z9fXkjhbnMLc4xe6' \
    --namespace $AB_NAMESPACE \
    --storeId 'GVeUDgP0wfv2gU6u' \
    > test.out 2>&1
eval_tap $? 138 'DefeatureItem' test.out

#- 139 GetLocaleItem
samples/cli/sample-apps Platform getLocaleItem \
    --itemId '4qHaH7Ivl0qbj8Lq' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --language 'ADEcQKtXjzDYIPOZ' \
    --populateBundle 'true' \
    --region 'ayImUUWVqaO7lzSJ' \
    --storeId 'tVEg2x2D0j8CEyNr' \
    > test.out 2>&1
eval_tap $? 139 'GetLocaleItem' test.out

#- 140 UpdateItemPurchaseCondition
samples/cli/sample-apps Platform updateItemPurchaseCondition \
    --itemId 'aOvWeJ2cCwC4eHLp' \
    --namespace $AB_NAMESPACE \
    --storeId 'pVE37OpzhbbF6Wsm' \
    --body '{"purchaseCondition": {"conditionGroups": [{"operator": "or", "predicates": [{"anyOf": 62, "code": "a1c2FAVjLiQobY5o", "comparison": "excludes", "name": "17D7VcE3rrCYqw9g", "predicateType": "SeasonPassPredicate", "value": "u2KeM8xh6nD1Ut07", "values": ["kxGwxl8z9J1vvG8s", "z0SVs9uZvBWQnzW0", "g7eKZSyKBhFlynnT"]}, {"anyOf": 37, "code": "PuVECuDhLMMZVvdO", "comparison": "isGreaterThan", "name": "9032vBuG8JxGioCG", "predicateType": "StatisticCodePredicate", "value": "GdOPCQ4k4kICI9CY", "values": ["rWnayY34uFIV4WWQ", "NLPHH63p4p9DaNt3", "oF5OTzVt1t39Jpl6"]}, {"anyOf": 7, "code": "ni5ltaHrHoJxddSe", "comparison": "excludes", "name": "ztDWtMSREkrwIg1o", "predicateType": "SeasonPassPredicate", "value": "fluX5yjQ8KpAIskB", "values": ["lJZQAlKG33zz7ViC", "F5JF55iyUHP0vKmr", "e1Z9XtIHQGFb2s5S"]}]}, {"operator": "or", "predicates": [{"anyOf": 86, "code": "7g2hpvfxjYgmxE3d", "comparison": "isLessThanOrEqual", "name": "HDBclTj7RcH929YQ", "predicateType": "StatisticCodePredicate", "value": "ygWFGah5ToPCNCPj", "values": ["zwDaXAzpSyw1qMEE", "sFvUV8gZeLikY1oS", "rQQHJzY7dyzugXcA"]}, {"anyOf": 8, "code": "MSl563AmC53MEvNO", "comparison": "isLessThanOrEqual", "name": "i6Wr48g615Dq7Y9k", "predicateType": "SeasonTierPredicate", "value": "MIeHGttoifoqdr3N", "values": ["ZiUjal3Svh0r9jDb", "6bbCuGgjU6VtxXOe", "ywJCT3sOlV0XfxsJ"]}, {"anyOf": 17, "code": "8YWSF6b4U8VMIQr3", "comparison": "isLessThan", "name": "y4mvgCnTmfosKs24", "predicateType": "SeasonTierPredicate", "value": "6A25navw8xQd6aE4", "values": ["yKk2Wsg1p7QtpmNA", "6W0IrXCUHTUhIbL5", "qQEtf23VeS0mjdbK"]}]}, {"operator": "and", "predicates": [{"anyOf": 89, "code": "zEkYISicG2yYt1AE", "comparison": "isGreaterThan", "name": "KOA7VeUr4IjbCVHX", "predicateType": "StatisticCodePredicate", "value": "VldPXIsRYhnKrVtE", "values": ["7URP8rG3iDZ2EeH7", "oytz1tEhdaOuqPCr", "3IIYxkCV2kPw5tgS"]}, {"anyOf": 86, "code": "dVi2JCLQvioadgVP", "comparison": "excludes", "name": "p8EIKVAf0cM0qV80", "predicateType": "SeasonPassPredicate", "value": "9t1Mi38cFoWz4MDo", "values": ["q5Su6QeBCRQOBwLZ", "fBzAVXad0rlG2s2n", "FxcUxHDH2BrPDOg2"]}, {"anyOf": 31, "code": "eCVJwEPobdGOUanx", "comparison": "isLessThanOrEqual", "name": "l9BzdtOK12wTxWwm", "predicateType": "SeasonPassPredicate", "value": "OiuLlbcKSXP4kfw5", "values": ["OH7cfJZdN6GDJ1iU", "H4AUly1m1Jisl9IQ", "7UnD3syFifP0xgMa"]}]}]}}' \
    > test.out 2>&1
eval_tap $? 140 'UpdateItemPurchaseCondition' test.out

#- 141 ReturnItem
samples/cli/sample-apps Platform returnItem \
    --itemId 'NzTwX7jPwL8xjfK7' \
    --namespace $AB_NAMESPACE \
    --body '{"orderNo": "Qlbng3GsvtAZr6pF"}' \
    > test.out 2>&1
eval_tap $? 141 'ReturnItem' test.out

#- 142 QueryKeyGroups
samples/cli/sample-apps Platform queryKeyGroups \
    --namespace $AB_NAMESPACE \
    --limit '41' \
    --name 'yU8lpasTbRrT3Sk9' \
    --offset '16' \
    --tag 'Wwha0hfjht7qhmza' \
    > test.out 2>&1
eval_tap $? 142 'QueryKeyGroups' test.out

#- 143 CreateKeyGroup
samples/cli/sample-apps Platform createKeyGroup \
    --namespace $AB_NAMESPACE \
    --body '{"description": "X2Nnqb32Cojo8F0i", "name": "QwYkI6d4uSyOTchP", "status": "INACTIVE", "tags": ["af85CQdxJ3nsL04m", "6eH8HUlCkXltszC8", "cyPTM4ps7AMemRRs"]}' \
    > test.out 2>&1
eval_tap $? 143 'CreateKeyGroup' test.out

#- 144 GetKeyGroupByBoothName
eval_tap 0 144 'GetKeyGroupByBoothName # SKIP deprecated' test.out

#- 145 GetKeyGroup
samples/cli/sample-apps Platform getKeyGroup \
    --keyGroupId 'qHd9ogp4AYTtUO0g' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 145 'GetKeyGroup' test.out

#- 146 UpdateKeyGroup
samples/cli/sample-apps Platform updateKeyGroup \
    --keyGroupId 'dvFd9xrEKDnqDqTX' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "yb5N1TdoSuFEEMqo", "name": "fMpW3aS43idiP7tb", "status": "INACTIVE", "tags": ["TOtzdWLQwbdNzhZb", "OkPH8851wk9v2tt5", "LCQE23RsBBoT6grQ"]}' \
    > test.out 2>&1
eval_tap $? 146 'UpdateKeyGroup' test.out

#- 147 GetKeyGroupDynamic
samples/cli/sample-apps Platform getKeyGroupDynamic \
    --keyGroupId 'awciKbqofFXXTsXr' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 147 'GetKeyGroupDynamic' test.out

#- 148 ListKeys
samples/cli/sample-apps Platform listKeys \
    --keyGroupId 'lo6eCRvatRGDY1jq' \
    --namespace $AB_NAMESPACE \
    --limit '59' \
    --offset '29' \
    --status 'ACTIVE' \
    > test.out 2>&1
eval_tap $? 148 'ListKeys' test.out

#- 149 UploadKeys
samples/cli/sample-apps Platform uploadKeys \
    --keyGroupId 'An4Cz5VHtmNrw183' \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 149 'UploadKeys' test.out

#- 150 QueryOrders
samples/cli/sample-apps Platform queryOrders \
    --namespace $AB_NAMESPACE \
    --endTime 'Xs12PiGJ5dnknIQb' \
    --limit '39' \
    --offset '4' \
    --orderNos '["oAXq0faAEzMAMYSE", "1qt7nWcSt6Sp8ZwX", "vhqu9JvN9F5dxs64"]' \
    --sortBy 'nmVxPHHWnznyHf2W' \
    --startTime '2HMyTyYlmgWIrF9j' \
    --status 'FULFILL_FAILED' \
    --withTotal 'false' \
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
    --orderNo 'J2r2z5rV375mQTgw' \
    > test.out 2>&1
eval_tap $? 152 'GetOrder' test.out

#- 153 RefundOrder
samples/cli/sample-apps Platform refundOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'KBXMTgyH5aj55xwm' \
    --body '{"description": "G1T0SZD0p8ZnPWYN"}' \
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
    --body '{"domains": ["jmIAEIFkvqhR0sp9", "FmUmSwWESW0e2hqE", "etR5ny5xx8nif2AU"]}' \
    > test.out 2>&1
eval_tap $? 157 'UpdatePaymentDomainWhitelistConfig' test.out

#- 158 QueryPaymentNotifications
samples/cli/sample-apps Platform queryPaymentNotifications \
    --namespace $AB_NAMESPACE \
    --endDate 'biGQ3dlfATvDA70e' \
    --externalId 'buRx6zALvuMpZ0K0' \
    --limit '56' \
    --notificationSource 'WXPAY' \
    --notificationType 'J5W5j9xkmlrBQx5P' \
    --offset '2' \
    --paymentOrderNo 'IOoEjn3a0QQ7jw7A' \
    --startDate 'ukCIP8V0N24amk3c' \
    --status 'PROCESSED' \
    > test.out 2>&1
eval_tap $? 158 'QueryPaymentNotifications' test.out

#- 159 QueryPaymentOrders
samples/cli/sample-apps Platform queryPaymentOrders \
    --namespace $AB_NAMESPACE \
    --channel 'EXTERNAL' \
    --extTxId 'PPuQ7DRzglSF6sJV' \
    --limit '58' \
    --offset '73' \
    --status 'CHARGED' \
    > test.out 2>&1
eval_tap $? 159 'QueryPaymentOrders' test.out

#- 160 CreatePaymentOrderByDedicated
samples/cli/sample-apps Platform createPaymentOrderByDedicated \
    --namespace $AB_NAMESPACE \
    --body '{"currencyCode": "uRo1iVchZOO8vnCN", "currencyNamespace": "lxxt8v9trXtvjpsS", "customParameters": {"M4RtmjOgHd2wOpiC": {}, "FwBD0QWcFbbSlz5U": {}, "3vCpT1atJzdXfUXj": {}}, "description": "xWq6qcvrPNT8HnDW", "extOrderNo": "d9Og5bLbDt7iEv66", "extUserId": "ZuIxdtEOu7GZ4T98", "itemType": "BUNDLE", "language": "XCN_Nl", "metadata": {"h6cueO1GQIsFnmpQ": "UZJjvYHxE8GJreC1", "U0pjrXbYbZxTqry7": "kMAaMeoVK1p9722Z", "eimxUnW0mOLI2zFD": "NkV7KKC7QjdGBeIQ"}, "notifyUrl": "Rvf39HKgFBcZ9k9W", "omitNotification": true, "platform": "Y7PpTaC88xPJ4hpX", "price": 87, "recurringPaymentOrderNo": "PTTePz9nlEPCo6Zi", "region": "vLOvN0yGDJV0u962", "returnUrl": "ewxMBdBaySuQShV1", "sandbox": true, "sku": "bSK7bdiHsBC58j1H", "subscriptionId": "D11pRhiNA77p6iHs", "targetNamespace": "1NZ7zSojiCqtiIyS", "targetUserId": "b0z2HXNBRyQ9pLQG", "title": "zRAjFybjxkCbo8dz"}' \
    > test.out 2>&1
eval_tap $? 160 'CreatePaymentOrderByDedicated' test.out

#- 161 ListExtOrderNoByExtTxId
samples/cli/sample-apps Platform listExtOrderNoByExtTxId \
    --namespace $AB_NAMESPACE \
    --extTxId 'GKyptWaaxFyU6SVM' \
    > test.out 2>&1
eval_tap $? 161 'ListExtOrderNoByExtTxId' test.out

#- 162 GetPaymentOrder
samples/cli/sample-apps Platform getPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'x1mjxqRtvtv8EQOq' \
    > test.out 2>&1
eval_tap $? 162 'GetPaymentOrder' test.out

#- 163 ChargePaymentOrder
samples/cli/sample-apps Platform chargePaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'JH7GfFas4Qxw4XBY' \
    --body '{"extTxId": "NmYvfCxdTlcUmlG1", "paymentMethod": "YAyKCjACfIjAh6v4", "paymentProvider": "STRIPE"}' \
    > test.out 2>&1
eval_tap $? 163 'ChargePaymentOrder' test.out

#- 164 RefundPaymentOrderByDedicated
samples/cli/sample-apps Platform refundPaymentOrderByDedicated \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'IBPWIFkA2XgOV4Yq' \
    --body '{"description": "9xfDjPxPo6l1ub1s"}' \
    > test.out 2>&1
eval_tap $? 164 'RefundPaymentOrderByDedicated' test.out

#- 165 SimulatePaymentOrderNotification
samples/cli/sample-apps Platform simulatePaymentOrderNotification \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'GiTeSmMgYE4Ybnoi' \
    --body '{"amount": 40, "currencyCode": "D0TQkRGZsz9fULfe", "notifyType": "CHARGE", "paymentProvider": "WXPAY", "salesTax": 51, "vat": 11}' \
    > test.out 2>&1
eval_tap $? 165 'SimulatePaymentOrderNotification' test.out

#- 166 GetPaymentOrderChargeStatus
samples/cli/sample-apps Platform getPaymentOrderChargeStatus \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'HfIuWdioSmXgIFro' \
    > test.out 2>&1
eval_tap $? 166 'GetPaymentOrderChargeStatus' test.out

#- 167 GetPsnEntitlementOwnership
samples/cli/sample-apps Platform getPsnEntitlementOwnership \
    --entitlementLabel '5wR3GMd1bDtUH9xw' \
    --namespace $AB_NAMESPACE \
    --body '{"accessToken": "eIQ00sOHsbldY5vF", "serviceLabel": 7}' \
    > test.out 2>&1
eval_tap $? 167 'GetPsnEntitlementOwnership' test.out

#- 168 GetXboxEntitlementOwnership
samples/cli/sample-apps Platform getXboxEntitlementOwnership \
    --namespace $AB_NAMESPACE \
    --productSku 'tMxZ1CJTc4yWEp2i' \
    --body '{"delegationToken": "vvfhlguGQR1q75Jh", "sandboxId": "09nWTTXz5ZCDsoyy"}' \
    > test.out 2>&1
eval_tap $? 168 'GetXboxEntitlementOwnership' test.out

#- 169 GetPlatformEntitlementConfig
samples/cli/sample-apps Platform getPlatformEntitlementConfig \
    --namespace $AB_NAMESPACE \
    --platform 'GooglePlay' \
    > test.out 2>&1
eval_tap $? 169 'GetPlatformEntitlementConfig' test.out

#- 170 UpdatePlatformEntitlementConfig
samples/cli/sample-apps Platform updatePlatformEntitlementConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Xbox' \
    --body '{"allowedPlatformOrigins": ["System", "Playstation", "Epic"]}' \
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
    --platform 'Steam' \
    --body '{"allowedBalanceOrigins": ["Playstation", "Epic", "Nintendo"]}' \
    > test.out 2>&1
eval_tap $? 172 'UpdatePlatformWalletConfig' test.out

#- 173 ResetPlatformWalletConfig
samples/cli/sample-apps Platform resetPlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Oculus' \
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
    --body '{"entitlement": {"consumable": {"enabled": true, "strategy": "REVOKE_OR_REPORT"}, "durable": {"enabled": false, "strategy": "CUSTOM"}}, "wallet": {"enabled": false, "strategy": "REVOKE_OR_REPORT"}}' \
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
    --endTime 'ht2ZXGDH3iuHdLXs' \
    --limit '38' \
    --offset '44' \
    --source 'DLC' \
    --startTime 'hqDdNK4XulgX0J6C' \
    --status 'SUCCESS' \
    --transactionId 'SqoGlfLkvTStdaXM' \
    --userId 'cK5EOaPLkWQTQosF' \
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
    --body '{"appConfig": {"appName": "ixMrn7S7YS9Cp3vl"}, "customConfig": {"connectionType": "TLS", "grpcServerAddress": "lgQNSBfAcyCi4beC"}, "extendType": "CUSTOM"}' \
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
    --body '{"description": "AUVEffKmqNi05Bu2", "eventTopic": "LZPrm0ErOQFfZn7T", "maxAwarded": 40, "maxAwardedPerUser": 73, "namespaceExpression": "EfDO0NcgYLFy9xuy", "rewardCode": "0aCSkq3m57inNKhb", "rewardConditions": [{"condition": "cXbpiWXM6WLmdKXE", "conditionName": "0Da11quHa7fBS3G0", "eventName": "yHtzSDUjXATBpMGV", "rewardItems": [{"duration": 4, "endDate": "1985-08-31T00:00:00Z", "identityType": "ITEM_ID", "itemId": "GlaLVJ6Rczrxnz37", "quantity": 18, "sku": "qw8ydhQ13MugI0Kz"}, {"duration": 56, "endDate": "1999-05-12T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "egFaMW2SN749E3Wh", "quantity": 99, "sku": "ZFvBuHdMmp6ePUs0"}, {"duration": 59, "endDate": "1973-12-06T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "9K8ZmNYqNNdhmT8z", "quantity": 91, "sku": "Mi8HJm7ap6tfH6qI"}]}, {"condition": "OfhoRi7rsZEZC8oe", "conditionName": "y4qgOmIVHgoq2c1U", "eventName": "W3vOhOxbKSZQvW6K", "rewardItems": [{"duration": 11, "endDate": "1991-09-27T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "IdAbIpWxTMXI1Ojn", "quantity": 76, "sku": "BnF1etwonhaLw0tD"}, {"duration": 21, "endDate": "1977-11-25T00:00:00Z", "identityType": "ITEM_ID", "itemId": "l1VXqLCnobBnsN87", "quantity": 66, "sku": "gDJGHz9SYBEyatoq"}, {"duration": 55, "endDate": "1992-07-29T00:00:00Z", "identityType": "ITEM_ID", "itemId": "K3IGxaATmEqGD8Eh", "quantity": 12, "sku": "Dmx5zCviuByRQnVo"}]}, {"condition": "qUoDY2FiqGZMDkGo", "conditionName": "bU0D4pjdJl1Inmij", "eventName": "3FXwe4kC0u2fTCt5", "rewardItems": [{"duration": 15, "endDate": "1987-11-20T00:00:00Z", "identityType": "ITEM_ID", "itemId": "pSXK2jmKevAd26AN", "quantity": 51, "sku": "sZunKkBS6U7GqRYR"}, {"duration": 68, "endDate": "1977-12-21T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "mEPV9DKjAgwoSrCo", "quantity": 91, "sku": "zRnwrSqzWKE0e0MR"}, {"duration": 27, "endDate": "1998-07-21T00:00:00Z", "identityType": "ITEM_ID", "itemId": "bQVBAcSkFz6rluFB", "quantity": 54, "sku": "nTQVoXtwf0ZvPX2z"}]}], "userIdExpression": "GXmkKmgHSTCRI82J"}' \
    > test.out 2>&1
eval_tap $? 182 'CreateReward' test.out

#- 183 QueryRewards
samples/cli/sample-apps Platform queryRewards \
    --namespace $AB_NAMESPACE \
    --eventTopic 'qRgBjIsLuluk6cev' \
    --limit '73' \
    --offset '66' \
    --sortBy '["rewardCode:asc", "namespace", "namespace:asc"]' \
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
    --rewardId 'IpUgAMevEX6vZvPQ' \
    > test.out 2>&1
eval_tap $? 186 'GetReward' test.out

#- 187 UpdateReward
samples/cli/sample-apps Platform updateReward \
    --namespace $AB_NAMESPACE \
    --rewardId 'FQVasYcKx0zbVlaC' \
    --body '{"description": "GeIrijVpFdSTukCb", "eventTopic": "ywg9B98P94bZOZE4", "maxAwarded": 19, "maxAwardedPerUser": 71, "namespaceExpression": "mZEJ2zeG6Ba5DUNU", "rewardCode": "Jys9X8uQ0u42u7FL", "rewardConditions": [{"condition": "lsLxC449p8BijJlq", "conditionName": "jjhw9yAeCzgz9POl", "eventName": "tDc8PWZsLPK0XsT0", "rewardItems": [{"duration": 62, "endDate": "1977-10-20T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "w2bp8HEhQUktNhZH", "quantity": 44, "sku": "6twilCzqTjxZglfW"}, {"duration": 30, "endDate": "1990-11-28T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "8lBilXMLHiX0Ebsv", "quantity": 30, "sku": "x1lUZzk2QkPPJuJa"}, {"duration": 20, "endDate": "1988-11-20T00:00:00Z", "identityType": "ITEM_ID", "itemId": "DrSJSwActVmQc1cr", "quantity": 82, "sku": "3OtkmlB4m3Y1cPLi"}]}, {"condition": "DGEiRmFkjh6FdMrK", "conditionName": "JngwrRIdQ9THWxqJ", "eventName": "hnHp4CDb3etOCM0j", "rewardItems": [{"duration": 79, "endDate": "1971-04-04T00:00:00Z", "identityType": "ITEM_ID", "itemId": "YLmxic4aeXxtBU22", "quantity": 9, "sku": "tah3i8CB8wZDX8bJ"}, {"duration": 38, "endDate": "1997-12-28T00:00:00Z", "identityType": "ITEM_ID", "itemId": "DObkfpwTXfDp5IOP", "quantity": 59, "sku": "yNh2RIWL0ZUsn4ij"}, {"duration": 92, "endDate": "1987-11-27T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "LmiXffuHJDEcK9P1", "quantity": 20, "sku": "tMFoGsmlJGzYiCA1"}]}, {"condition": "L4dlY61pyvAaSOtX", "conditionName": "0VVBlVW8DXoA2bsJ", "eventName": "FjlwL4fJZOjCqgls", "rewardItems": [{"duration": 66, "endDate": "1993-02-01T00:00:00Z", "identityType": "ITEM_ID", "itemId": "wC2vfN2EkOupT7XO", "quantity": 10, "sku": "vXwGMqS62wsmzILC"}, {"duration": 16, "endDate": "1995-02-24T00:00:00Z", "identityType": "ITEM_ID", "itemId": "dGgvxLsdFFjAal9f", "quantity": 26, "sku": "g124bypEp9zoyd7w"}, {"duration": 17, "endDate": "1976-12-05T00:00:00Z", "identityType": "ITEM_ID", "itemId": "Ok02O7BqENJPYJOY", "quantity": 85, "sku": "fztWDFmW3vd40o5z"}]}], "userIdExpression": "PvDfMT0TwerH2WBA"}' \
    > test.out 2>&1
eval_tap $? 187 'UpdateReward' test.out

#- 188 DeleteReward
samples/cli/sample-apps Platform deleteReward \
    --namespace $AB_NAMESPACE \
    --rewardId 'dpHbaQxhWvVTUShR' \
    > test.out 2>&1
eval_tap $? 188 'DeleteReward' test.out

#- 189 CheckEventCondition
samples/cli/sample-apps Platform checkEventCondition \
    --namespace $AB_NAMESPACE \
    --rewardId 'dFlaqUwGUlREqzfq' \
    --body '{"payload": {"6NH3aYrIMSkHBmWw": {}, "fBCp1uwXDTYHNPlL": {}, "ZPRG77nexDXB3Az2": {}}}' \
    > test.out 2>&1
eval_tap $? 189 'CheckEventCondition' test.out

#- 190 DeleteRewardConditionRecord
samples/cli/sample-apps Platform deleteRewardConditionRecord \
    --namespace $AB_NAMESPACE \
    --rewardId '54xeRXitWYPBXSj2' \
    --body '{"conditionName": "yNezaKnNUQOup99e", "userId": "kxYM0axi9XcDugxb"}' \
    > test.out 2>&1
eval_tap $? 190 'DeleteRewardConditionRecord' test.out

#- 191 QuerySections
samples/cli/sample-apps Platform querySections \
    --namespace $AB_NAMESPACE \
    --end '3zNz19Y8Us0LnuAB' \
    --limit '15' \
    --offset '50' \
    --start 'LKyYLhna44DClhYy' \
    --storeId 'd6eHz1ioDLukS65k' \
    --viewId 'cfEmB0kvjahhJyIz' \
    > test.out 2>&1
eval_tap $? 191 'QuerySections' test.out

#- 192 CreateSection
samples/cli/sample-apps Platform createSection \
    --namespace $AB_NAMESPACE \
    --storeId '5Y99nbvIjDZMYyRF' \
    --body '{"active": true, "displayOrder": 96, "endDate": "1997-11-03T00:00:00Z", "ext": {"6LgZdwPqJhy5eAJV": {}, "QG5o4b6uZJPIMkOh": {}, "ARK6bfOkhoemE1pz": {}}, "fixedPeriodRotationConfig": {"backfillType": "NONE", "duration": 28, "itemCount": 27, "rule": "SEQUENCE"}, "items": [{"id": "1l9eBfphTpC1MxyE", "sku": "ukpXuooY4M1jFhSl"}, {"id": "eEa4tjJCfYJ5UmJa", "sku": "b97XQgDrmM4pPgI2"}, {"id": "U28M7YzvQh6cXDIL", "sku": "hsPor4GJd7sD75pq"}], "localizations": {"DSOu1h6F1Wo5BiRI": {"description": "NJbDU0ghI3qZTrBK", "localExt": {"gxlg1faSqLGzNfqH": {}, "zOzFd9cIsEQMcpyN": {}, "ZQzrjIysT0QNitsH": {}}, "longDescription": "7PwMArLu1S1BDzOs", "title": "mvAqFXXeLy8L1CoE"}, "0Q0SUADPoypYcDr5": {"description": "CmJ72dRtFtjw0PHY", "localExt": {"0e78r95OfNFNNRCu": {}, "C1ljUYds5baqIliL": {}, "i99tcqKnt4BWCjpC": {}}, "longDescription": "Mc68bKF4yOG12sRT", "title": "Kemwcnpz7yCklovL"}, "n7JdCLHnAGhoScFW": {"description": "C5y6HouG4BkyBEFy", "localExt": {"2X18OdzbVY8C5mXr": {}, "cl0v7JS69QcMukhG": {}, "qVmzxDTyW4mqDdwd": {}}, "longDescription": "3yj6yVsTb4Y3RaFo", "title": "NSrO51QQdTG5Bbbw"}}, "name": "xStdBMY8xRa88ALj", "rotationType": "FIXED_PERIOD", "startDate": "1974-02-08T00:00:00Z", "viewId": "8pskMz5khyEd30pf"}' \
    > test.out 2>&1
eval_tap $? 192 'CreateSection' test.out

#- 193 PurgeExpiredSection
samples/cli/sample-apps Platform purgeExpiredSection \
    --namespace $AB_NAMESPACE \
    --storeId 'ToMLSknLEa5lcEv8' \
    > test.out 2>&1
eval_tap $? 193 'PurgeExpiredSection' test.out

#- 194 GetSection
samples/cli/sample-apps Platform getSection \
    --namespace $AB_NAMESPACE \
    --sectionId 'DNG3HVlZhdw7XHMK' \
    --storeId '1EVsV2QukKv1iKO0' \
    > test.out 2>&1
eval_tap $? 194 'GetSection' test.out

#- 195 UpdateSection
samples/cli/sample-apps Platform updateSection \
    --namespace $AB_NAMESPACE \
    --sectionId 'HyVjNUw1hbMDgfDi' \
    --storeId 'O2NPRHuB5krLfXQt' \
    --body '{"active": true, "displayOrder": 66, "endDate": "1977-01-23T00:00:00Z", "ext": {"NnvGAcg1jtXCvCOx": {}, "eGFmviIAuVWwH8u4": {}, "ytW62OFTJM2dWBQM": {}}, "fixedPeriodRotationConfig": {"backfillType": "NONE", "duration": 22, "itemCount": 54, "rule": "SEQUENCE"}, "items": [{"id": "G2tLcBV5X4CEQtub", "sku": "FJs2k13fwirKIWjY"}, {"id": "ftdRH14NIdVmRqTl", "sku": "hEGs12uvC9E2WZd5"}, {"id": "lIMguTKLtAOAToGD", "sku": "gh4OMTpgA3uOxfTI"}], "localizations": {"owmTHusHvLBcpRdi": {"description": "4bluH3RdVbK4Hcqs", "localExt": {"DwFjECLx5DyLrDo3": {}, "F7FSoVhXNNK8aQ2X": {}, "uMt2cUloIFhHSbFL": {}}, "longDescription": "6inuPnoV2oGIQDZ8", "title": "Pj0OIO2gLqjRpzkK"}, "UTrEwUsKxFX9yFwn": {"description": "q8SyPQwtAVNKvwPD", "localExt": {"XQlhNs1pdmZVLiGb": {}, "BXsaZIJptaSIGYiy": {}, "4qdLUprKwJHK58IE": {}}, "longDescription": "UyHSkJS4Jq8KJ5WF", "title": "hMWNmSeaz4WSTSLg"}, "mAu6YJbqxzYR9ZEL": {"description": "aHZ1M602fKIkbwOw", "localExt": {"rMKuVbprevqcetkb": {}, "yE9uoYoyG4nfGnh0": {}, "LNBEupdFQeMxbBdE": {}}, "longDescription": "qtJbYscL37qnx0xi", "title": "7cGu3IyW2bIGUOCt"}}, "name": "kOgopvuPfZ7mbLXs", "rotationType": "NONE", "startDate": "1971-07-18T00:00:00Z", "viewId": "tmsCxhonLQkspZGa"}' \
    > test.out 2>&1
eval_tap $? 195 'UpdateSection' test.out

#- 196 DeleteSection
samples/cli/sample-apps Platform deleteSection \
    --namespace $AB_NAMESPACE \
    --sectionId '1XbVTXax9sXpC5Rq' \
    --storeId '3aD88c4brN8tyLhQ' \
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
    --body '{"defaultLanguage": "hMKspofTDFcwaKfA", "defaultRegion": "KbY8rwSkPXh2CuP0", "description": "adU0IgUMGkemcHUT", "supportedLanguages": ["XgqxD4QsnvSW6vyb", "neL1VAzY7fpSpl1s", "MU6VJWujsLA1pP46"], "supportedRegions": ["lP60K06s1TfkUTPL", "7zdLMZevb6eOSnpk", "TeFEqbcCKyGBEx6P"], "title": "uY0yYKYFErIBqghl"}' \
    > test.out 2>&1
eval_tap $? 198 'CreateStore' test.out

#- 199 GetCatalogDefinition
samples/cli/sample-apps Platform getCatalogDefinition \
    --namespace $AB_NAMESPACE \
    --catalogType 'APP' \
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
    --body '{"catalogType": "CATEGORY", "fieldsToBeIncluded": ["CeCfnAtJ7MF3ZeUp", "rdMLHfvv1AjT5VTW", "hY8UHdb7qWaLuwXJ"], "idsToBeExported": ["FMBtEHwCe1xNknqD", "WlhIPHzc17QzLail", "Q19sostGUZA1Dtw7"], "storeId": "fyYZy7A6anEkbeyb"}' \
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
    --storeId 'fDGEUml6zCoddYb7' \
    > test.out 2>&1
eval_tap $? 207 'GetStore' test.out

#- 208 UpdateStore
samples/cli/sample-apps Platform updateStore \
    --namespace $AB_NAMESPACE \
    --storeId 'SmbLdzkbZ8QI5U1X' \
    --body '{"defaultLanguage": "bdLgyZlRC5L3vMSP", "defaultRegion": "CRpb5RyUk0qDoICm", "description": "89fkviYzMin5qypH", "supportedLanguages": ["UvP3rIuh4gs4n4MJ", "Enf8sQuu034n1bYa", "BeHNPbkJE2CafaFg"], "supportedRegions": ["ftg73eXeDp9aUpFp", "bfoOGkgZJTQiqJL6", "Q8D6TnF1mpVLpbWQ"], "title": "2pQPAEsyHCPnz5Bx"}' \
    > test.out 2>&1
eval_tap $? 208 'UpdateStore' test.out

#- 209 DeleteStore
samples/cli/sample-apps Platform deleteStore \
    --namespace $AB_NAMESPACE \
    --storeId 'dWk8ARCBrnE5GADF' \
    > test.out 2>&1
eval_tap $? 209 'DeleteStore' test.out

#- 210 QueryChanges
samples/cli/sample-apps Platform queryChanges \
    --namespace $AB_NAMESPACE \
    --storeId 'UtslMsEOPPe76U3o' \
    --action 'CREATE' \
    --itemSku 'WIs8dWNid3LeHqN7' \
    --itemType 'EXTENSION' \
    --limit '78' \
    --offset '94' \
    --selected 'true' \
    --sortBy '["createdAt", "createdAt:asc", "updatedAt:desc"]' \
    --status 'UNPUBLISHED' \
    --type 'CATEGORY' \
    --updatedAtEnd 'PZQG3urhxuFoJ3Pp' \
    --updatedAtStart 'J7Dg7B8qsmYKfk7U' \
    --withTotal 'false' \
    > test.out 2>&1
eval_tap $? 210 'QueryChanges' test.out

#- 211 PublishAll
samples/cli/sample-apps Platform publishAll \
    --namespace $AB_NAMESPACE \
    --storeId 'HaJhyRDhFIWPwOXk' \
    > test.out 2>&1
eval_tap $? 211 'PublishAll' test.out

#- 212 PublishSelected
samples/cli/sample-apps Platform publishSelected \
    --namespace $AB_NAMESPACE \
    --storeId 'NohpdfQ3CH9VNsRN' \
    > test.out 2>&1
eval_tap $? 212 'PublishSelected' test.out

#- 213 SelectAllRecords
samples/cli/sample-apps Platform selectAllRecords \
    --namespace $AB_NAMESPACE \
    --storeId 'x2FvXQBAhLTBXsY6' \
    > test.out 2>&1
eval_tap $? 213 'SelectAllRecords' test.out

#- 214 SelectAllRecordsByCriteria
samples/cli/sample-apps Platform selectAllRecordsByCriteria \
    --namespace $AB_NAMESPACE \
    --storeId 'K4Kz2qwczrCOqolr' \
    --action 'UPDATE' \
    --itemSku 'yFhwA0Hsx8JxYdJv' \
    --itemType 'OPTIONBOX' \
    --selected 'false' \
    --type 'SECTION' \
    --updatedAtEnd 'J1putn5F0vKa9a0w' \
    --updatedAtStart 'T77wfqwBrbyV0b6X' \
    > test.out 2>&1
eval_tap $? 214 'SelectAllRecordsByCriteria' test.out

#- 215 GetStatistic
samples/cli/sample-apps Platform getStatistic \
    --namespace $AB_NAMESPACE \
    --storeId '3AZtQl9KFrf2DIb5' \
    --action 'CREATE' \
    --itemSku '6WxSqqmHLmBwtkGk' \
    --itemType 'SEASON' \
    --type 'CATEGORY' \
    --updatedAtEnd 'Wl9zc4ScKPSNO86A' \
    --updatedAtStart 'qbUStfRgoy3LsQuS' \
    > test.out 2>&1
eval_tap $? 215 'GetStatistic' test.out

#- 216 UnselectAllRecords
samples/cli/sample-apps Platform unselectAllRecords \
    --namespace $AB_NAMESPACE \
    --storeId 'YrXxFEkZRpzwn1Gs' \
    > test.out 2>&1
eval_tap $? 216 'UnselectAllRecords' test.out

#- 217 SelectRecord
samples/cli/sample-apps Platform selectRecord \
    --changeId 'wpv3SPHqmbTtsiyR' \
    --namespace $AB_NAMESPACE \
    --storeId 'EElLK2rzMP7oV44r' \
    > test.out 2>&1
eval_tap $? 217 'SelectRecord' test.out

#- 218 UnselectRecord
samples/cli/sample-apps Platform unselectRecord \
    --changeId 'RCPjYhgaXFL64kCw' \
    --namespace $AB_NAMESPACE \
    --storeId 'd0Wwi721FTE5T3h1' \
    > test.out 2>&1
eval_tap $? 218 'UnselectRecord' test.out

#- 219 CloneStore
samples/cli/sample-apps Platform cloneStore \
    --namespace $AB_NAMESPACE \
    --storeId 'e2eKImD1w4ki8m2Q' \
    --targetStoreId 'dN1KgkiKQ9TF5fGL' \
    > test.out 2>&1
eval_tap $? 219 'CloneStore' test.out

#- 220 ExportStore
eval_tap 0 220 'ExportStore # SKIP deprecated' test.out

#- 221 QueryImportHistory
samples/cli/sample-apps Platform queryImportHistory \
    --namespace $AB_NAMESPACE \
    --storeId 'sLoR6kcPp71WSDSa' \
    --end 'xZEKG6vJuuRQFwfm' \
    --limit '47' \
    --offset '48' \
    --sortBy 'gBWhOSgkbrwOra17' \
    --start '3Br6FmSoDL4ut1BE' \
    --success 'false' \
    > test.out 2>&1
eval_tap $? 221 'QueryImportHistory' test.out

#- 222 ImportStoreByCSV
samples/cli/sample-apps Platform importStoreByCSV \
    --namespace $AB_NAMESPACE \
    --storeId 'iSs1okwUhaoIlr2W' \
    --category 'tmp.dat' \
    --display 'tmp.dat' \
    --item 'tmp.dat' \
    --notes 'RSw6y98Xv70JEESd' \
    --section 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 222 'ImportStoreByCSV' test.out

#- 223 QuerySubscriptions
samples/cli/sample-apps Platform querySubscriptions \
    --namespace $AB_NAMESPACE \
    --chargeStatus 'CHARGED' \
    --itemId 'T5cgb5maiTbuWvR1' \
    --limit '23' \
    --offset '100' \
    --sku 'rd2xTm7SJggRiVHf' \
    --status 'ACTIVE' \
    --subscribedBy 'USER' \
    --userId 'E2UuXvZdX6QpMruV' \
    > test.out 2>&1
eval_tap $? 223 'QuerySubscriptions' test.out

#- 224 RecurringChargeSubscription
samples/cli/sample-apps Platform recurringChargeSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'RlqCR0LL1nx8ngEh' \
    > test.out 2>&1
eval_tap $? 224 'RecurringChargeSubscription' test.out

#- 225 GetTicketDynamic
samples/cli/sample-apps Platform getTicketDynamic \
    --boothName 'X2KZM2EKyimQnFDn' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 225 'GetTicketDynamic' test.out

#- 226 DecreaseTicketSale
samples/cli/sample-apps Platform decreaseTicketSale \
    --boothName 'KlKZz8fvV4NbrhW3' \
    --namespace $AB_NAMESPACE \
    --body '{"orderNo": "aWy6ExSKpYCMyAms"}' \
    > test.out 2>&1
eval_tap $? 226 'DecreaseTicketSale' test.out

#- 227 GetTicketBoothID
samples/cli/sample-apps Platform getTicketBoothID \
    --boothName 'AXzeyrmCVagNYqhu' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 227 'GetTicketBoothID' test.out

#- 228 IncreaseTicketSale
samples/cli/sample-apps Platform increaseTicketSale \
    --boothName 'hnJJkopIoBzcTifj' \
    --namespace $AB_NAMESPACE \
    --body '{"count": 58, "orderNo": "N1feLsXUNi2SZv3t"}' \
    > test.out 2>&1
eval_tap $? 228 'IncreaseTicketSale' test.out

#- 229 Commit
samples/cli/sample-apps Platform commit \
    --namespace $AB_NAMESPACE \
    --body '{"actions": [{"operations": [{"creditPayload": {"balanceOrigin": "IOS", "count": 42, "currencyCode": "wl5xIg5MU97idxT9", "expireAt": "1971-03-08T00:00:00Z"}, "debitPayload": {"count": 22, "currencyCode": "f5FGAWiQadkaS0lO", "walletPlatform": "IOS"}, "fulFillItemPayload": {"count": 95, "entitlementCollectionId": "g0rJDZilRhnlj59D", "entitlementOrigin": "Nintendo", "itemIdentity": "I3zLUlmTlKgR4gD8", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 81, "entitlementId": "wUmcxT622IRAGUF6"}, "type": "DEBIT_WALLET"}, {"creditPayload": {"balanceOrigin": "Other", "count": 16, "currencyCode": "DD6biTcEUKJN0Rkn", "expireAt": "1990-03-20T00:00:00Z"}, "debitPayload": {"count": 87, "currencyCode": "P3kWDqXH4NrIMCRR", "walletPlatform": "Oculus"}, "fulFillItemPayload": {"count": 97, "entitlementCollectionId": "rxwC7wWoyk08l7HW", "entitlementOrigin": "Epic", "itemIdentity": "GgqSHwJzwT74d2Eg", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 54, "entitlementId": "7lKrnFxn245Lqezi"}, "type": "FULFILL_ITEM"}, {"creditPayload": {"balanceOrigin": "System", "count": 19, "currencyCode": "RbrZkq6KHSGaNXP5", "expireAt": "1985-08-20T00:00:00Z"}, "debitPayload": {"count": 81, "currencyCode": "DkzNiQVswTdHD4Ax", "walletPlatform": "Nintendo"}, "fulFillItemPayload": {"count": 26, "entitlementCollectionId": "g2EWrY9bUVH80ht8", "entitlementOrigin": "Playstation", "itemIdentity": "Y8V9TjEhUQS9lneY", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 74, "entitlementId": "aUmcTTWMZamijUo0"}, "type": "FULFILL_ITEM"}], "userId": "01SyTYfku5rae2VS"}, {"operations": [{"creditPayload": {"balanceOrigin": "System", "count": 87, "currencyCode": "ZM7QgUJFiDwGxeAL", "expireAt": "1992-07-04T00:00:00Z"}, "debitPayload": {"count": 90, "currencyCode": "sIffU4e9hiZMuBMg", "walletPlatform": "Other"}, "fulFillItemPayload": {"count": 14, "entitlementCollectionId": "yqazq6XYtD5YpUTg", "entitlementOrigin": "Other", "itemIdentity": "IayYVezSKJdNubWs", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 48, "entitlementId": "TlYOWuVhYg1Bjdrs"}, "type": "CREDIT_WALLET"}, {"creditPayload": {"balanceOrigin": "Playstation", "count": 76, "currencyCode": "Qlbmu52VbDi4ezWy", "expireAt": "1992-01-18T00:00:00Z"}, "debitPayload": {"count": 7, "currencyCode": "NNFn9MmrBJFscP1L", "walletPlatform": "Other"}, "fulFillItemPayload": {"count": 42, "entitlementCollectionId": "QyRqXuHwuprkXI20", "entitlementOrigin": "IOS", "itemIdentity": "O97kOW5LKJMDoE1R", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 42, "entitlementId": "b9HZVv5dSSQ7rpgv"}, "type": "REVOKE_ENTITLEMENT"}, {"creditPayload": {"balanceOrigin": "Nintendo", "count": 76, "currencyCode": "IacDpQZF814GwaMj", "expireAt": "1977-07-24T00:00:00Z"}, "debitPayload": {"count": 3, "currencyCode": "NBUDqLexYWfeT7yw", "walletPlatform": "Oculus"}, "fulFillItemPayload": {"count": 68, "entitlementCollectionId": "WKf29dIAXW4MXA3I", "entitlementOrigin": "GooglePlay", "itemIdentity": "MxojNlkevxj9JMSe", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 9, "entitlementId": "eY1S2F3K3IPfZkKI"}, "type": "REVOKE_ENTITLEMENT"}], "userId": "IY7gq1JQxq7J54uW"}, {"operations": [{"creditPayload": {"balanceOrigin": "Steam", "count": 70, "currencyCode": "g9URy1ScRmujJFRg", "expireAt": "1996-04-16T00:00:00Z"}, "debitPayload": {"count": 16, "currencyCode": "DBHU1L5exhEP8Ajz", "walletPlatform": "Epic"}, "fulFillItemPayload": {"count": 60, "entitlementCollectionId": "wQA7dqIo9WLrCaca", "entitlementOrigin": "Nintendo", "itemIdentity": "FaCSFHIeoIiYfxym", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 48, "entitlementId": "Mc4qtP798lkUEI8I"}, "type": "DEBIT_WALLET"}, {"creditPayload": {"balanceOrigin": "Xbox", "count": 26, "currencyCode": "S990MlMH3mm1NxId", "expireAt": "1977-10-01T00:00:00Z"}, "debitPayload": {"count": 92, "currencyCode": "vjb4RE5WUOadcFGX", "walletPlatform": "Playstation"}, "fulFillItemPayload": {"count": 64, "entitlementCollectionId": "66teCnPhQtQDugIQ", "entitlementOrigin": "Other", "itemIdentity": "ztnMwRLQ48n3sl6g", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 10, "entitlementId": "3qgTy79sfchthbOW"}, "type": "FULFILL_ITEM"}, {"creditPayload": {"balanceOrigin": "Other", "count": 37, "currencyCode": "lfpy67t2GKC3DH0j", "expireAt": "1978-08-27T00:00:00Z"}, "debitPayload": {"count": 82, "currencyCode": "LzR2MnGLsZcvVtLx", "walletPlatform": "Oculus"}, "fulFillItemPayload": {"count": 46, "entitlementCollectionId": "qzi1ntaIfGfq3Kdr", "entitlementOrigin": "System", "itemIdentity": "PewqJQUKfbcIRVob", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 40, "entitlementId": "y0HPmcCNpZSPoKJe"}, "type": "FULFILL_ITEM"}], "userId": "zeJzMzazOHvlQ0AG"}], "metadata": {"idJJmd1oAm1BmEP5": {}, "6bLB4Cfunwpnh7mQ": {}, "zxHPzNgnyqZp8r8g": {}}, "needPreCheck": false, "transactionId": "2Mq6IuPoTu8zili4", "type": "ar2jZ33LmXeGyFyz"}' \
    > test.out 2>&1
eval_tap $? 229 'Commit' test.out

#- 230 GetTradeHistoryByCriteria
samples/cli/sample-apps Platform getTradeHistoryByCriteria \
    --namespace $AB_NAMESPACE \
    --limit '21' \
    --offset '30' \
    --status 'INIT' \
    --type '9lMxbAYr3Hty9x5d' \
    --userId 'Es3tUO9AdkFi9ZIE' \
    > test.out 2>&1
eval_tap $? 230 'GetTradeHistoryByCriteria' test.out

#- 231 GetTradeHistoryByTransactionId
samples/cli/sample-apps Platform getTradeHistoryByTransactionId \
    --namespace $AB_NAMESPACE \
    --transactionId '5udKnX10vpY3ZXy3' \
    > test.out 2>&1
eval_tap $? 231 'GetTradeHistoryByTransactionId' test.out

#- 232 UnlockSteamUserAchievement
samples/cli/sample-apps Platform unlockSteamUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId '99DqjP2h9FlmtSX3' \
    --body '{"achievements": [{"id": "VVBjWmM3fvbbAQDR", "value": 74}, {"id": "c2vH0c78mu8awlfE", "value": 80}, {"id": "i0kYpOiHJgyT0z3n", "value": 43}], "steamUserId": "pXrJmmaUQUcAgRoU"}' \
    > test.out 2>&1
eval_tap $? 232 'UnlockSteamUserAchievement' test.out

#- 233 GetXblUserAchievements
samples/cli/sample-apps Platform getXblUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId 'GWMPQ2M3WGBBEOVB' \
    --xboxUserId 'VWWjad4pi1M1n7xK' \
    > test.out 2>&1
eval_tap $? 233 'GetXblUserAchievements' test.out

#- 234 UpdateXblUserAchievement
samples/cli/sample-apps Platform updateXblUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'hN7BJCGFnPVZETTo' \
    --body '{"achievements": [{"id": "Ixnj3wmS0uZ3yw5m", "percentComplete": 94}, {"id": "SsdzOpmGF8N3lYY4", "percentComplete": 95}, {"id": "GR3CFDpvlrbRveHf", "percentComplete": 32}], "serviceConfigId": "x01jkQAMxvxaC5sz", "titleId": "5XTYSDsqsxXw9MZI", "xboxUserId": "auHm6Ndq0wmFFkJX"}' \
    > test.out 2>&1
eval_tap $? 234 'UpdateXblUserAchievement' test.out

#- 235 AnonymizeCampaign
samples/cli/sample-apps Platform anonymizeCampaign \
    --namespace $AB_NAMESPACE \
    --userId '5PnL8YAM5utDgpWp' \
    > test.out 2>&1
eval_tap $? 235 'AnonymizeCampaign' test.out

#- 236 AnonymizeEntitlement
samples/cli/sample-apps Platform anonymizeEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'uTSPkxta209MlAct' \
    > test.out 2>&1
eval_tap $? 236 'AnonymizeEntitlement' test.out

#- 237 AnonymizeFulfillment
samples/cli/sample-apps Platform anonymizeFulfillment \
    --namespace $AB_NAMESPACE \
    --userId 'NLFnmwfxZZIJZIFs' \
    > test.out 2>&1
eval_tap $? 237 'AnonymizeFulfillment' test.out

#- 238 AnonymizeIntegration
samples/cli/sample-apps Platform anonymizeIntegration \
    --namespace $AB_NAMESPACE \
    --userId 'GeT6NWydvhglFE4o' \
    > test.out 2>&1
eval_tap $? 238 'AnonymizeIntegration' test.out

#- 239 AnonymizeOrder
samples/cli/sample-apps Platform anonymizeOrder \
    --namespace $AB_NAMESPACE \
    --userId '1WFfyjBx3NOchEvt' \
    > test.out 2>&1
eval_tap $? 239 'AnonymizeOrder' test.out

#- 240 AnonymizePayment
samples/cli/sample-apps Platform anonymizePayment \
    --namespace $AB_NAMESPACE \
    --userId 'CL6pIZ0HRWf6LWnc' \
    > test.out 2>&1
eval_tap $? 240 'AnonymizePayment' test.out

#- 241 AnonymizeRevocation
samples/cli/sample-apps Platform anonymizeRevocation \
    --namespace $AB_NAMESPACE \
    --userId 'Dd7sDE69uHIgj0cK' \
    > test.out 2>&1
eval_tap $? 241 'AnonymizeRevocation' test.out

#- 242 AnonymizeSubscription
samples/cli/sample-apps Platform anonymizeSubscription \
    --namespace $AB_NAMESPACE \
    --userId '0stSZbG8dhvGmIgj' \
    > test.out 2>&1
eval_tap $? 242 'AnonymizeSubscription' test.out

#- 243 AnonymizeWallet
samples/cli/sample-apps Platform anonymizeWallet \
    --namespace $AB_NAMESPACE \
    --userId '8DrmKX7Q6bSLXZdM' \
    > test.out 2>&1
eval_tap $? 243 'AnonymizeWallet' test.out

#- 244 GetUserDLCByPlatform
samples/cli/sample-apps Platform getUserDLCByPlatform \
    --namespace $AB_NAMESPACE \
    --userId 'Q1UcA9GkQkHDJBmr' \
    --type 'PSN' \
    > test.out 2>&1
eval_tap $? 244 'GetUserDLCByPlatform' test.out

#- 245 GetUserDLC
samples/cli/sample-apps Platform getUserDLC \
    --namespace $AB_NAMESPACE \
    --userId '0EqsBgy9Fh2L8CZa' \
    --includeAllNamespaces 'true' \
    --status 'REVOKED' \
    --type 'OCULUS' \
    > test.out 2>&1
eval_tap $? 245 'GetUserDLC' test.out

#- 246 QueryUserEntitlements
samples/cli/sample-apps Platform queryUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'Aq6cpgFxs2ileIDz' \
    --activeOnly 'false' \
    --appType 'GAME' \
    --collectionId 'f9a0Oy6OCoJRI4Xo' \
    --entitlementClazz 'CODE' \
    --entitlementName 'A5IqmFmW4PO20ttU' \
    --features '["SWVnnXYjrtzx0dBi", "OH3eHikLJgIFDai7", "LqzGSx7qDov137Gv"]' \
    --fuzzyMatchName 'true' \
    --ignoreActiveDate 'false' \
    --itemId '["1U6qp0IOIYi0nyIf", "cQ7VlOzDg6OlA8VP", "EmilCGoBu5Ivvgs7"]' \
    --limit '13' \
    --offset '56' \
    --origin 'System' \
    > test.out 2>&1
eval_tap $? 246 'QueryUserEntitlements' test.out

#- 247 GrantUserEntitlement
samples/cli/sample-apps Platform grantUserEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'eFGZlh7bGrFOtNXC' \
    --body '[{"collectionId": "U5oN2vxWfzuIRc1D", "endDate": "1989-11-01T00:00:00Z", "grantedCode": "mtTa6fFVFEVpjGS5", "itemId": "ARdRKCveSvRUhivW", "itemNamespace": "Wh5AeUdZT5wovFut", "language": "FJ", "metadata": {"92JOsVK4LZ05DG02": {}, "TezyRnZjdTWgxewC": {}, "y8Mfib7ZhH29jeo7": {}}, "origin": "Steam", "quantity": 14, "region": "rY8hdU6YLljOmDP2", "source": "IAP", "startDate": "1992-06-11T00:00:00Z", "storeId": "ehGmOOqKzCIm0Ief"}, {"collectionId": "cYwD65TiqkQzHIza", "endDate": "1992-05-25T00:00:00Z", "grantedCode": "ceuH9711qYTc0uiA", "itemId": "WJTSbUvJmRAHC9Cp", "itemNamespace": "XcXEpxZy6q142q8Z", "language": "XJFX_zM", "metadata": {"FiZV5ulh9Ifqwv0A": {}, "8ZdY6wTUzTNQh8u6": {}, "Zpe7CvyLPbL3svDP": {}}, "origin": "Steam", "quantity": 42, "region": "SgtTEBFSMX9Ai7oK", "source": "REFERRAL_BONUS", "startDate": "1980-04-03T00:00:00Z", "storeId": "wSgaAGvyc4TcFNb0"}, {"collectionId": "dDwUidMnZNmjvVEy", "endDate": "1972-11-17T00:00:00Z", "grantedCode": "zvyY4piGvoxguMdA", "itemId": "5RafveCneQKet2ho", "itemNamespace": "IILV3v03ayzBNICB", "language": "BV_Datg-uR", "metadata": {"QQMKOkFTyDJEB4AV": {}, "EnVmkumaQoQb53PV": {}, "l4Qm9S9z9j2DFO8D": {}}, "origin": "Steam", "quantity": 49, "region": "KSjoEzVy1kW5Nt4Z", "source": "OTHER", "startDate": "1973-08-17T00:00:00Z", "storeId": "HTQO7rNmFg52YYHQ"}]' \
    > test.out 2>&1
eval_tap $? 247 'GrantUserEntitlement' test.out

#- 248 GetUserAppEntitlementByAppId
samples/cli/sample-apps Platform getUserAppEntitlementByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'P8iiw8yqxyOFPMM9' \
    --activeOnly 'false' \
    --appId 'CIvze5TJN3PE7hQt' \
    > test.out 2>&1
eval_tap $? 248 'GetUserAppEntitlementByAppId' test.out

#- 249 QueryUserEntitlementsByAppType
samples/cli/sample-apps Platform queryUserEntitlementsByAppType \
    --namespace $AB_NAMESPACE \
    --userId 'DsnE58EL147oFkJf' \
    --activeOnly 'false' \
    --limit '33' \
    --offset '63' \
    --appType 'GAME' \
    > test.out 2>&1
eval_tap $? 249 'QueryUserEntitlementsByAppType' test.out

#- 250 GetUserEntitlementsByIds
samples/cli/sample-apps Platform getUserEntitlementsByIds \
    --namespace $AB_NAMESPACE \
    --userId 'nVa9FkPig3SzxZbU' \
    --ids '["PxWpyYrM00iffkXl", "OphaiylfyZlzqWsD", "Noq4m4GaGecR74FT"]' \
    > test.out 2>&1
eval_tap $? 250 'GetUserEntitlementsByIds' test.out

#- 251 GetUserEntitlementByItemId
samples/cli/sample-apps Platform getUserEntitlementByItemId \
    --namespace $AB_NAMESPACE \
    --userId '1T0C9JX93A17NVz9' \
    --activeOnly 'false' \
    --entitlementClazz 'OPTIONBOX' \
    --platform '9a8SllcOgFKgsmLo' \
    --itemId 'BxO0OqPTX1AfayfW' \
    > test.out 2>&1
eval_tap $? 251 'GetUserEntitlementByItemId' test.out

#- 252 GetUserActiveEntitlementsByItemIds
samples/cli/sample-apps Platform getUserActiveEntitlementsByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'quvmElgQliB5MD0s' \
    --ids '["QSLI35b4K6MlkrmJ", "FRbnpZkiXeF3lSmp", "uKhV1PWfGeGCJHVn"]' \
    --platform 'olPTPpHYYZTjYAiS' \
    > test.out 2>&1
eval_tap $? 252 'GetUserActiveEntitlementsByItemIds' test.out

#- 253 GetUserEntitlementBySku
samples/cli/sample-apps Platform getUserEntitlementBySku \
    --namespace $AB_NAMESPACE \
    --userId 'jmKNEjFSGM09H0PC' \
    --activeOnly 'false' \
    --entitlementClazz 'LOOTBOX' \
    --platform 'XQG372ifdaJMOFGP' \
    --sku 'HINHjE4kWHL8J1IP' \
    > test.out 2>&1
eval_tap $? 253 'GetUserEntitlementBySku' test.out

#- 254 ExistsAnyUserActiveEntitlement
samples/cli/sample-apps Platform existsAnyUserActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --userId '5pnmlSwrESZAGIaN' \
    --appIds '["ysifNGAD3BkegGwS", "Og4XxhLDkID6Bnqg", "1uwup0giNGPO43aG"]' \
    --itemIds '["85iX4RouMD6aSsjc", "rDfvAcxOIcq6m6Bl", "sXMoXPO2YqZwTdfK"]' \
    --platform 'PIm5nZkYJy7GTwEU' \
    --skus '["MU2JviNoKm6qA2gf", "WzaCNxQstXWvePKO", "ivkNa4W6qC9rkmHt"]' \
    > test.out 2>&1
eval_tap $? 254 'ExistsAnyUserActiveEntitlement' test.out

#- 255 ExistsAnyUserActiveEntitlementByItemIds
samples/cli/sample-apps Platform existsAnyUserActiveEntitlementByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'TQWHCQA9Nh4DVcp9' \
    --platform 'BO9wRzjWI6wAhfpo' \
    --itemIds '["k2XrYLe4Ib2kRNqk", "zFY7D8eQib4AUFMT", "Lwedraix2qOohT84"]' \
    > test.out 2>&1
eval_tap $? 255 'ExistsAnyUserActiveEntitlementByItemIds' test.out

#- 256 GetUserAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform getUserAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'EJReIdFVOvhLTDcU' \
    --appId 'GjfnrpFZ12wGDIwT' \
    > test.out 2>&1
eval_tap $? 256 'GetUserAppEntitlementOwnershipByAppId' test.out

#- 257 GetUserEntitlementOwnershipByItemId
samples/cli/sample-apps Platform getUserEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'qQTKuKduAV3mY5Nm' \
    --entitlementClazz 'OPTIONBOX' \
    --platform 'qIBjQMjnyBwSKNE7' \
    --itemId 'syvnPOGsnPyL6HQ4' \
    > test.out 2>&1
eval_tap $? 257 'GetUserEntitlementOwnershipByItemId' test.out

#- 258 GetUserEntitlementOwnershipByItemIds
samples/cli/sample-apps Platform getUserEntitlementOwnershipByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'E45k9ITBDajvpEmG' \
    --ids '["ly25Tne8eenwRvF9", "amFW9mYkkLEOmptP", "O1cXmmxEQ4y7EKYe"]' \
    --platform 'pCWLbrZY9Hf6Iury' \
    > test.out 2>&1
eval_tap $? 258 'GetUserEntitlementOwnershipByItemIds' test.out

#- 259 GetUserEntitlementOwnershipBySku
samples/cli/sample-apps Platform getUserEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --userId 'uRaFd4xDoH3khUQL' \
    --entitlementClazz 'APP' \
    --platform '8mBRggUWG4mDbipW' \
    --sku 'v31foP7ycL71zReV' \
    > test.out 2>&1
eval_tap $? 259 'GetUserEntitlementOwnershipBySku' test.out

#- 260 RevokeAllEntitlements
samples/cli/sample-apps Platform revokeAllEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'ZYjtgEUK9NwEJwqh' \
    > test.out 2>&1
eval_tap $? 260 'RevokeAllEntitlements' test.out

#- 261 RevokeUserEntitlements
samples/cli/sample-apps Platform revokeUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId '9U1Q6ylaoD3ZkGsU' \
    --entitlementIds 'cRus6dRZMSIH1pHM' \
    > test.out 2>&1
eval_tap $? 261 'RevokeUserEntitlements' test.out

#- 262 GetUserEntitlement
samples/cli/sample-apps Platform getUserEntitlement \
    --entitlementId 'zkYODKFC059po77m' \
    --namespace $AB_NAMESPACE \
    --userId 'jssuBhvtjF4HKf9S' \
    > test.out 2>&1
eval_tap $? 262 'GetUserEntitlement' test.out

#- 263 UpdateUserEntitlement
samples/cli/sample-apps Platform updateUserEntitlement \
    --entitlementId 'ZaOPs8RAuL0LyKvH' \
    --namespace $AB_NAMESPACE \
    --userId 'TvANQrBCkhLPAQla' \
    --body '{"collectionId": "IhWvtNaYKfIYOevi", "endDate": "1982-02-25T00:00:00Z", "nullFieldList": ["wdl7LGieuCVpj6QK", "xSAYCqKB2UxjWXFa", "liwsE1XnHbANuAct"], "origin": "Oculus", "reason": "alQYghk0TwdFOF5x", "startDate": "1977-02-27T00:00:00Z", "status": "ACTIVE", "useCount": 18}' \
    > test.out 2>&1
eval_tap $? 263 'UpdateUserEntitlement' test.out

#- 264 ConsumeUserEntitlement
samples/cli/sample-apps Platform consumeUserEntitlement \
    --entitlementId '89iwrzdGoNg8iOig' \
    --namespace $AB_NAMESPACE \
    --userId 'zSIhYjojm1GU2P1I' \
    --body '{"metadata": {"oEYCQ6UmaI3Q8SMu": {}, "1D6gNMiTpuZ8Xpdk": {}, "b39W0Az2gkZL2096": {}}, "options": ["P0LsUMraAO76izv6", "kACbMVHAXPYjDIk2", "Q0MnhmSMY68QGenD"], "platform": "ber8aQ91DY54hcRP", "requestId": "MBpST8nfMn65nxT5", "useCount": 89}' \
    > test.out 2>&1
eval_tap $? 264 'ConsumeUserEntitlement' test.out

#- 265 DisableUserEntitlement
samples/cli/sample-apps Platform disableUserEntitlement \
    --entitlementId 'la23tqnM0tGxcMhH' \
    --namespace $AB_NAMESPACE \
    --userId '8s2leK8twUTnyFpB' \
    > test.out 2>&1
eval_tap $? 265 'DisableUserEntitlement' test.out

#- 266 EnableUserEntitlement
samples/cli/sample-apps Platform enableUserEntitlement \
    --entitlementId 'vizKq4WOMtuw8v3w' \
    --namespace $AB_NAMESPACE \
    --userId 'Q8dydPHGJATWjIPe' \
    > test.out 2>&1
eval_tap $? 266 'EnableUserEntitlement' test.out

#- 267 GetUserEntitlementHistories
samples/cli/sample-apps Platform getUserEntitlementHistories \
    --entitlementId 'FQDxBsLhbwriP6b0' \
    --namespace $AB_NAMESPACE \
    --userId '4OX1LVfNdZMKaPdl' \
    > test.out 2>&1
eval_tap $? 267 'GetUserEntitlementHistories' test.out

#- 268 RevokeUserEntitlement
samples/cli/sample-apps Platform revokeUserEntitlement \
    --entitlementId '3I9KubQzJsHBFdlD' \
    --namespace $AB_NAMESPACE \
    --userId 'tOT3xM55fZYnM35u' \
    --body '{"metadata": {"1QD13cMUPmyzBoKQ": {}, "1Xuu6sr0hP0Ee7d1": {}, "W3TDeBaWsTOzlS82": {}}}' \
    > test.out 2>&1
eval_tap $? 268 'RevokeUserEntitlement' test.out

#- 269 RevokeUserEntitlementByUseCount
samples/cli/sample-apps Platform revokeUserEntitlementByUseCount \
    --entitlementId 'n93IKC0tLJnRw0UW' \
    --namespace $AB_NAMESPACE \
    --userId 'VBikths3Z1kYKD9e' \
    --body '{"reason": "Eogo8BQtUkZxyUtQ", "useCount": 66}' \
    > test.out 2>&1
eval_tap $? 269 'RevokeUserEntitlementByUseCount' test.out

#- 270 PreCheckRevokeUserEntitlementByUseCount
samples/cli/sample-apps Platform preCheckRevokeUserEntitlementByUseCount \
    --entitlementId 'KlRBt0pj7z6eLdy9' \
    --namespace $AB_NAMESPACE \
    --userId 'ISBckwwJE3rTfgKk' \
    --quantity '21' \
    > test.out 2>&1
eval_tap $? 270 'PreCheckRevokeUserEntitlementByUseCount' test.out

#- 271 RevokeUseCount
eval_tap 0 271 'RevokeUseCount # SKIP deprecated' test.out

#- 272 SellUserEntitlement
samples/cli/sample-apps Platform sellUserEntitlement \
    --entitlementId 'zHunH2oobs9VEBaK' \
    --namespace $AB_NAMESPACE \
    --userId 'MVxFJEzsP4w6XgAJ' \
    --body '{"platform": "SZUc5snSCczg8Nx3", "requestId": "FevqtQ67W42IdCMf", "useCount": 21}' \
    > test.out 2>&1
eval_tap $? 272 'SellUserEntitlement' test.out

#- 273 FulfillItem
samples/cli/sample-apps Platform fulfillItem \
    --namespace $AB_NAMESPACE \
    --userId 'DvlrnYliYZJt2iBm' \
    --body '{"duration": 21, "endDate": "1972-01-11T00:00:00Z", "entitlementCollectionId": "KVtDme3B0qLwXLcA", "entitlementOrigin": "Oculus", "itemId": "XS1OXLyanHx1r4nq", "itemSku": "RFLrfNdSxiEVmgmS", "language": "8MjGUjuoxnXkmBie", "metadata": {"3jKfruBVOtVu8mnk": {}, "XW2mBwhznfKhz43l": {}, "NYiHoYaBuGj7n0tq": {}}, "order": {"currency": {"currencyCode": "IlUk09D3R4TB9CK9", "currencySymbol": "JLAgBBOWY9iI7v2y", "currencyType": "REAL", "decimals": 80, "namespace": "UVYj7gq5AB0VQdgl"}, "ext": {"eliI1FAVw4pmRH2R": {}, "zMm6BjtSxeoquoTJ": {}, "9BaVUv7T5X8FZDi6": {}}, "free": false}, "orderNo": "h77zObFmwXQzzzRV", "origin": "Other", "overrideBundleItemQty": {"bdYYJfa2NntuOQKs": 42, "6exHMUCc9JGqNJIH": 71, "EwSmPABPcIIhcAmq": 46}, "quantity": 90, "region": "lUkgmd9ncFkCfLlC", "source": "SELL_BACK", "startDate": "1971-12-24T00:00:00Z", "storeId": "759nvqcjSw31p85g"}' \
    > test.out 2>&1
eval_tap $? 273 'FulfillItem' test.out

#- 274 RedeemCode
samples/cli/sample-apps Platform redeemCode \
    --namespace $AB_NAMESPACE \
    --userId 'wqpBEDkCasi3OAXx' \
    --body '{"code": "9Bja2W8eZ6s1AFYR", "language": "LA_401", "region": "d8F4FUmXHpIrRhUv"}' \
    > test.out 2>&1
eval_tap $? 274 'RedeemCode' test.out

#- 275 PreCheckFulfillItem
samples/cli/sample-apps Platform preCheckFulfillItem \
    --namespace $AB_NAMESPACE \
    --userId 'z0G643WROTgOB3oI' \
    --body '{"itemId": "O8iJQym7tqpx3rl9", "itemSku": "44zypfb7CPzLYjgi", "quantity": 32}' \
    > test.out 2>&1
eval_tap $? 275 'PreCheckFulfillItem' test.out

#- 276 FulfillRewards
samples/cli/sample-apps Platform fulfillRewards \
    --namespace $AB_NAMESPACE \
    --userId 'zsvt7EsQWlTGtci5' \
    --body '{"entitlementCollectionId": "s0l1qV9lk0owBpZS", "entitlementOrigin": "Nintendo", "metadata": {"lR5kmc1ODHMaEA6V": {}, "cTqmVibdKSL4IWrA": {}, "4tVRuYl2vGCnZV6Y": {}}, "origin": "Other", "rewards": [{"currency": {"currencyCode": "M3NoFFaOqcvl2xqJ", "namespace": "RZj3q04uGOZkuWiE"}, "item": {"itemId": "NqvkdtSAM9uu1rKF", "itemName": "Zx3jiAmcJHZsA54J", "itemSku": "lead9f3v96xyvzNU", "itemType": "RQaqiGuOTlUdWUbP"}, "quantity": 79, "type": "ITEM"}, {"currency": {"currencyCode": "DjUGFhPNSBdHH1of", "namespace": "LHjAtDMyqgBNCcFK"}, "item": {"itemId": "xUHSM5PKFMemQwzi", "itemName": "RWrQRhZKsGu78rbv", "itemSku": "5K1n1DgDiAT65Czf", "itemType": "qTWKO68jNYhqmHbk"}, "quantity": 83, "type": "CURRENCY"}, {"currency": {"currencyCode": "vfrFYNUET4psPLFW", "namespace": "bd3t5PuuuhWkqJrO"}, "item": {"itemId": "7tU3kSabz3JY9eZL", "itemName": "Q0S1Mbi2tuXm8ZwX", "itemSku": "npAi71NoQYA9kk9t", "itemType": "HjclXn4pNkTrNVjU"}, "quantity": 3, "type": "ITEM"}], "source": "PAYMENT", "transactionId": "1JWePzsIQhlh9J6A"}' \
    > test.out 2>&1
eval_tap $? 276 'FulfillRewards' test.out

#- 277 QueryUserIAPOrders
samples/cli/sample-apps Platform queryUserIAPOrders \
    --namespace $AB_NAMESPACE \
    --userId 'dX8t5CXWeXVvNIFP' \
    --endTime 'G5OiEEgxkzjPTHHL' \
    --limit '96' \
    --offset '6' \
    --productId 'Bgq4jRFzxxEKa3gj' \
    --startTime 'np7N2pkX5oMYZUxQ' \
    --status 'FULFILLED' \
    --type 'EPICGAMES' \
    > test.out 2>&1
eval_tap $? 277 'QueryUserIAPOrders' test.out

#- 278 QueryAllUserIAPOrders
samples/cli/sample-apps Platform queryAllUserIAPOrders \
    --namespace $AB_NAMESPACE \
    --userId '3LitSRpgQWaXanC5' \
    > test.out 2>&1
eval_tap $? 278 'QueryAllUserIAPOrders' test.out

#- 279 QueryUserIAPConsumeHistory
samples/cli/sample-apps Platform queryUserIAPConsumeHistory \
    --namespace $AB_NAMESPACE \
    --userId 'SQ2YBbRWQZO7DaSu' \
    --endTime 'ugO46RvRcLb6ISmS' \
    --limit '83' \
    --offset '17' \
    --startTime 'l6KXeIYK57wC7eyR' \
    --status 'PENDING' \
    --type 'PLAYSTATION' \
    > test.out 2>&1
eval_tap $? 279 'QueryUserIAPConsumeHistory' test.out

#- 280 MockFulfillIAPItem
samples/cli/sample-apps Platform mockFulfillIAPItem \
    --namespace $AB_NAMESPACE \
    --userId '59JpGhwOtEdYPtCi' \
    --body '{"itemIdentityType": "ITEM_ID", "language": "vV-PcDi", "productId": "yM1ViWoY5x921STU", "region": "O4DEtXyFDdamlyO4", "transactionId": "EOUhZdA5HsYYsY7A", "type": "EPICGAMES"}' \
    > test.out 2>&1
eval_tap $? 280 'MockFulfillIAPItem' test.out

#- 281 QueryUserThirdPartySubscription
samples/cli/sample-apps Platform queryUserThirdPartySubscription \
    --namespace $AB_NAMESPACE \
    --userId 'PwYskoAZPauqOj3l' \
    --activeOnly 'false' \
    --groupId 'qute1sSCNs6z2TBB' \
    --limit '33' \
    --offset '85' \
    --platform 'EPICGAMES' \
    --productId 'qH4psH8XshuKbq5I' \
    > test.out 2>&1
eval_tap $? 281 'QueryUserThirdPartySubscription' test.out

#- 282 GetThirdPartyPlatformSubscriptionOwnershipByGroupId
samples/cli/sample-apps Platform getThirdPartyPlatformSubscriptionOwnershipByGroupId \
    --namespace $AB_NAMESPACE \
    --platform 'EPICGAMES' \
    --userId 'ciVLTGun2bP5XTQ9' \
    --groupId 'xijq4Akr8oBz6dYS' \
    > test.out 2>&1
eval_tap $? 282 'GetThirdPartyPlatformSubscriptionOwnershipByGroupId' test.out

#- 283 GetThirdPartyPlatformSubscriptionOwnershipByProductId
samples/cli/sample-apps Platform getThirdPartyPlatformSubscriptionOwnershipByProductId \
    --namespace $AB_NAMESPACE \
    --platform 'EPICGAMES' \
    --userId 'gE85ABSxzxHD2Q2R' \
    --productId 'HtT7Ohcvthf98LcG' \
    > test.out 2>&1
eval_tap $? 283 'GetThirdPartyPlatformSubscriptionOwnershipByProductId' test.out

#- 284 QueryUserThirdPartySubscriptionTransactions
samples/cli/sample-apps Platform queryUserThirdPartySubscriptionTransactions \
    --namespace $AB_NAMESPACE \
    --userId 'fWcf7QsoV3CtL2Ng' \
    --activeOnly 'false' \
    --groupId 'fwWh3DFyjoRb0Tbs' \
    --limit '73' \
    --offset '69' \
    --platform 'GOOGLE' \
    --productId 'HuFEcAwTraOILtRz' \
    > test.out 2>&1
eval_tap $? 284 'QueryUserThirdPartySubscriptionTransactions' test.out

#- 285 GetThirdPartySubscriptionDetails
samples/cli/sample-apps Platform getThirdPartySubscriptionDetails \
    --id 'c9Fh8a4k0NkzkW1Y' \
    --namespace $AB_NAMESPACE \
    --userId 'z3kylK7iNBHCMPlX' \
    > test.out 2>&1
eval_tap $? 285 'GetThirdPartySubscriptionDetails' test.out

#- 286 GetSubscriptionHistory
samples/cli/sample-apps Platform getSubscriptionHistory \
    --id 'eiEq92jlW2iY7vaK' \
    --namespace $AB_NAMESPACE \
    --userId 'fTuNyG0F8zawhS7z' \
    --limit '14' \
    --offset '23' \
    > test.out 2>&1
eval_tap $? 286 'GetSubscriptionHistory' test.out

#- 287 SyncSubscriptionTransaction
samples/cli/sample-apps Platform syncSubscriptionTransaction \
    --id '22qWExyLSeL3e9zt' \
    --namespace $AB_NAMESPACE \
    --userId 'AwtLCiJ3xPHgIOVS' \
    > test.out 2>&1
eval_tap $? 287 'SyncSubscriptionTransaction' test.out

#- 288 GetThirdPartyUserSubscriptionDetails
samples/cli/sample-apps Platform getThirdPartyUserSubscriptionDetails \
    --id 'FER43aZ9cLFjUuyy' \
    --namespace $AB_NAMESPACE \
    --userId 'S7bQFKghtaojz1Ap' \
    > test.out 2>&1
eval_tap $? 288 'GetThirdPartyUserSubscriptionDetails' test.out

#- 289 SyncSubscription
samples/cli/sample-apps Platform syncSubscription \
    --id 'c13jfYHvh7JBEcnf' \
    --namespace $AB_NAMESPACE \
    --userId 'yH4SylOFZxRjYZij' \
    > test.out 2>&1
eval_tap $? 289 'SyncSubscription' test.out

#- 290 QueryUserOrders
samples/cli/sample-apps Platform queryUserOrders \
    --namespace $AB_NAMESPACE \
    --userId 'MDgS3DrxeWLK3qsa' \
    --discounted 'true' \
    --itemId '5CnbuoweISboZeGT' \
    --limit '68' \
    --offset '1' \
    --status 'INIT' \
    > test.out 2>&1
eval_tap $? 290 'QueryUserOrders' test.out

#- 291 AdminCreateUserOrder
samples/cli/sample-apps Platform adminCreateUserOrder \
    --namespace $AB_NAMESPACE \
    --userId 'KMH4PheJ1gmXw6Ey' \
    --body '{"currencyCode": "RPKqWjvo9lvstEnh", "currencyNamespace": "iszVYSjXnLqKewm0", "discountCodes": ["35Hg0tOS7ccnH7MT", "HDRc6D5h9sgNnSAP", "KmNZYIp3A6geBMGI"], "discountedPrice": 64, "entitlementPlatform": "Other", "ext": {"5lornHCg9FiKFNXO": {}, "8GMdmzBbZOWaptQY": {}, "OWFqrkVvQ5kPpTcy": {}}, "itemId": "yRhKEAXpuKvD5cDE", "language": "zdUoVn7VTxVbJVB2", "options": {"skipPriceValidation": false}, "platform": "GooglePlay", "price": 83, "quantity": 99, "region": "q2PMMNGHH6JFZnSN", "returnUrl": "2GuR70IWvdB5F5J3", "sandbox": false, "sectionId": "NdFepqO8FRbbMgZU"}' \
    > test.out 2>&1
eval_tap $? 291 'AdminCreateUserOrder' test.out

#- 292 CountOfPurchasedItem
samples/cli/sample-apps Platform countOfPurchasedItem \
    --namespace $AB_NAMESPACE \
    --userId 'zAhmwoiweb5shJ7D' \
    --itemId 'BKhIMlBWEzKy5894' \
    > test.out 2>&1
eval_tap $? 292 'CountOfPurchasedItem' test.out

#- 293 GetUserOrder
samples/cli/sample-apps Platform getUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'by080O3qbkVYS9Ny' \
    --userId 'x1LuRbJ4t5fFOi4w' \
    > test.out 2>&1
eval_tap $? 293 'GetUserOrder' test.out

#- 294 UpdateUserOrderStatus
samples/cli/sample-apps Platform updateUserOrderStatus \
    --namespace $AB_NAMESPACE \
    --orderNo 'DvO3E7sW6x8TmKFT' \
    --userId 'SpQ8Fgck3LY39FaJ' \
    --body '{"status": "REFUND_FAILED", "statusReason": "zEFnceW115XD64ZR"}' \
    > test.out 2>&1
eval_tap $? 294 'UpdateUserOrderStatus' test.out

#- 295 FulfillUserOrder
samples/cli/sample-apps Platform fulfillUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'iHv7PqgeS6qSNYiy' \
    --userId 'zUmfvWL0Vf7HRNeJ' \
    > test.out 2>&1
eval_tap $? 295 'FulfillUserOrder' test.out

#- 296 GetUserOrderGrant
eval_tap 0 296 'GetUserOrderGrant # SKIP deprecated' test.out

#- 297 GetUserOrderHistories
samples/cli/sample-apps Platform getUserOrderHistories \
    --namespace $AB_NAMESPACE \
    --orderNo 'oBd2KnDCH89CbYFN' \
    --userId 'W3r2vQlMRhKQVP6V' \
    > test.out 2>&1
eval_tap $? 297 'GetUserOrderHistories' test.out

#- 298 ProcessUserOrderNotification
samples/cli/sample-apps Platform processUserOrderNotification \
    --namespace $AB_NAMESPACE \
    --orderNo 'OpRpVEaXzBxJVS1b' \
    --userId 'Tpy3CMLhfq3uPxwZ' \
    --body '{"additionalData": {"cardSummary": "7FlD3zK5MC0svC5C"}, "authorisedTime": "1988-08-14T00:00:00Z", "chargebackReversedTime": "1994-03-30T00:00:00Z", "chargebackTime": "1976-03-13T00:00:00Z", "chargedTime": "1973-10-30T00:00:00Z", "createdTime": "1972-05-08T00:00:00Z", "currency": {"currencyCode": "CDNfRvyo1apj3nYh", "currencySymbol": "ZlT71vzIW1hVLFvJ", "currencyType": "VIRTUAL", "decimals": 34, "namespace": "JnVb9OJEjGJ9BqBE"}, "customParameters": {"UIz2znpuUxEqOifn": {}, "kxYI6U0KVc3hBPMB": {}, "6UFAOgB2x0mGDPwg": {}}, "extOrderNo": "uTmf2LpJkLMSWdtd", "extTxId": "MqOUzupq5jgAV4Kb", "extUserId": "LINPZSA4f4Js87t3", "issuedAt": "1991-06-19T00:00:00Z", "metadata": {"rVpQbxEpemuAxdKI": "utoIyZ7813QMauln", "F8w94IYJGw6Z3hYj": "rfcEiVyWSGNrMwhG", "MImW9BUvTbPVY8A1": "B0uJGhkmlWGsCtqi"}, "namespace": "SQv8INKEO2xlfiFC", "nonceStr": "aIwcTI4iiiuP1zah", "paymentData": {"discountAmount": 37, "discountCode": "kzUpuuBlqkYEzAi4", "subtotalPrice": 38, "tax": 30, "totalPrice": 70}, "paymentMethod": "i7F7FyvqMYrU6A0t", "paymentMethodFee": 86, "paymentOrderNo": "BUmMdiaLEQXrCjKb", "paymentProvider": "CHECKOUT", "paymentProviderFee": 23, "paymentStationUrl": "xlElVixfv8vlYZsF", "price": 82, "refundedTime": "1990-10-03T00:00:00Z", "salesTax": 62, "sandbox": true, "sku": "XgoUXsjuS5vo9Vnv", "status": "REQUEST_FOR_INFORMATION", "statusReason": "9WEkoHyJKvPGWY7J", "subscriptionId": "ZfCpAXiwQWMVTC7G", "subtotalPrice": 18, "targetNamespace": "aDQtKwOXyhY9bVr2", "targetUserId": "YcVaqTHM9JDfTdPn", "tax": 78, "totalPrice": 86, "totalTax": 51, "txEndTime": "1996-11-16T00:00:00Z", "type": "a4jX63MAQTJsRXVF", "userId": "N4rso16eLyByBI1P", "vat": 37}' \
    > test.out 2>&1
eval_tap $? 298 'ProcessUserOrderNotification' test.out

#- 299 DownloadUserOrderReceipt
samples/cli/sample-apps Platform downloadUserOrderReceipt \
    --namespace $AB_NAMESPACE \
    --orderNo 'hxQzAT4PWQEwLK8V' \
    --userId 'nOyyZCI9xWl935YU' \
    > test.out 2>&1
eval_tap $? 299 'DownloadUserOrderReceipt' test.out

#- 300 CreateUserPaymentOrder
samples/cli/sample-apps Platform createUserPaymentOrder \
    --namespace $AB_NAMESPACE \
    --userId 'iWTP9BZQVtfH3ivb' \
    --body '{"currencyCode": "3fSBTsQzPjA05dIc", "currencyNamespace": "n35pVegBQ6CNYIyP", "customParameters": {"kH38CgEJZPGB9DtD": {}, "uyMU3MeJPbdVtLDU": {}, "Vi6xHQbYYYQPGh1p": {}}, "description": "xQFPea4SWUEij6vG", "extOrderNo": "tHJHMWYfNtOXLmhV", "extUserId": "pO60goC1P7XjuXVN", "itemType": "SEASON", "language": "VxQL", "metadata": {"yazJHZAqbS1LQlvJ": "BneYlrUpNqNl7XSk", "aOxqH1QetzcP4QjK": "zYfeKvms0b6jPmE6", "DorxeAyNQk72NjcF": "SpLNOyTqyKRG7Fzk"}, "notifyUrl": "ZgIHHVo9HgG2tfy4", "omitNotification": true, "platform": "6A3ODaAp8qrVTJEc", "price": 81, "recurringPaymentOrderNo": "HByETeVPuUOOPOcQ", "region": "nSXx9wqWQi4jLXEP", "returnUrl": "KStOaijWWgRJqHfJ", "sandbox": false, "sku": "OVoNGBeqYmt1ujdu", "subscriptionId": "Z7TmnQhE8rMB00ey", "title": "7tbM2sTjDDTQNojt"}' \
    > test.out 2>&1
eval_tap $? 300 'CreateUserPaymentOrder' test.out

#- 301 RefundUserPaymentOrder
samples/cli/sample-apps Platform refundUserPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'ZN1gKOWUc9tJTh1Q' \
    --userId '9ChdaaSBaoJuqx1P' \
    --body '{"description": "tzpRspDTeb1xwjL2"}' \
    > test.out 2>&1
eval_tap $? 301 'RefundUserPaymentOrder' test.out

#- 302 GetUserPlatformAccountClosureHistories
samples/cli/sample-apps Platform getUserPlatformAccountClosureHistories \
    --namespace $AB_NAMESPACE \
    --userId 'iquHSga8PgzriZ8V' \
    > test.out 2>&1
eval_tap $? 302 'GetUserPlatformAccountClosureHistories' test.out

#- 303 ApplyUserRedemption
samples/cli/sample-apps Platform applyUserRedemption \
    --namespace $AB_NAMESPACE \
    --userId 'ZP4Nwdf9etsuNaDV' \
    --body '{"code": "TUxSBc3P5yXEVQ6p", "orderNo": "3skrMVR6xDePuoXn"}' \
    > test.out 2>&1
eval_tap $? 303 'ApplyUserRedemption' test.out

#- 304 DoRevocation
samples/cli/sample-apps Platform doRevocation \
    --namespace $AB_NAMESPACE \
    --userId 'zPo08jJ2CagHQda9' \
    --body '{"meta": {"UwL0wzLAbcHCkHDa": {}, "KXMAA1aLWwVYi8zf": {}, "TDkBJbFXJbK8fGkN": {}}, "reason": "7NJtHI3RCQZTwCvF", "requestId": "jPcwZzLu3Vs10bLP", "revokeEntries": [{"currency": {"balanceOrigin": "Epic", "currencyCode": "FwCU548ZiIxpJzdc", "namespace": "OHtKBEjz13TNT01V"}, "entitlement": {"entitlementId": "8SsUJ9MReHKjbHAf"}, "item": {"entitlementOrigin": "Nintendo", "itemIdentity": "gcgH5SIaFk7MotCN", "itemIdentityType": "ITEM_ID", "origin": "Twitch"}, "quantity": 2, "type": "CURRENCY"}, {"currency": {"balanceOrigin": "Other", "currencyCode": "V0h3bSzTqZUjYIoV", "namespace": "eucygClkZLRd9RhB"}, "entitlement": {"entitlementId": "Uaz960tHiRpnHdpd"}, "item": {"entitlementOrigin": "Xbox", "itemIdentity": "fYgxPkM6XE6S68Gk", "itemIdentityType": "ITEM_SKU", "origin": "System"}, "quantity": 22, "type": "ITEM"}, {"currency": {"balanceOrigin": "Epic", "currencyCode": "D9PBmN2YG6SHfFor", "namespace": "aUtZ0HNseyEWr8Vk"}, "entitlement": {"entitlementId": "R8ARCWIZUf9AgmHv"}, "item": {"entitlementOrigin": "Nintendo", "itemIdentity": "6zfw07P5YQhs5WvY", "itemIdentityType": "ITEM_ID", "origin": "Playstation"}, "quantity": 94, "type": "ITEM"}], "source": "IAP", "transactionId": "KDgeC31rX9eUcPfe"}' \
    > test.out 2>&1
eval_tap $? 304 'DoRevocation' test.out

#- 305 RegisterXblSessions
samples/cli/sample-apps Platform registerXblSessions \
    --namespace $AB_NAMESPACE \
    --userId 'zocxQm3bp2scvH9O' \
    --body '{"gameSessionId": "kiMKnJM9rSgsaYh2", "payload": {"LU8lSorFcg5FzJuo": {}, "NzI4YVcmXkXHXDmi": {}, "OTD1p7c98AHTDmPp": {}}, "scid": "aMMfra6yCVwWTUlX", "sessionTemplateName": "XQw7fMFcaNXrhx43"}' \
    > test.out 2>&1
eval_tap $? 305 'RegisterXblSessions' test.out

#- 306 QueryUserSubscriptions
samples/cli/sample-apps Platform queryUserSubscriptions \
    --namespace $AB_NAMESPACE \
    --userId 'JWubdFJGORMdwUcj' \
    --chargeStatus 'NEVER' \
    --itemId 'KAhoRRlNnGbEYaQk' \
    --limit '6' \
    --offset '35' \
    --sku '0gxSKSnlvOjgSRLF' \
    --status 'EXPIRED' \
    --subscribedBy 'PLATFORM' \
    > test.out 2>&1
eval_tap $? 306 'QueryUserSubscriptions' test.out

#- 307 GetUserSubscriptionActivities
samples/cli/sample-apps Platform getUserSubscriptionActivities \
    --namespace $AB_NAMESPACE \
    --userId 'zYLATYiNdsAVHkew' \
    --excludeSystem 'false' \
    --limit '36' \
    --offset '61' \
    --subscriptionId 'x1XyogHVxSu5ghhH' \
    > test.out 2>&1
eval_tap $? 307 'GetUserSubscriptionActivities' test.out

#- 308 PlatformSubscribeSubscription
samples/cli/sample-apps Platform platformSubscribeSubscription \
    --namespace $AB_NAMESPACE \
    --userId 'Tr5lFveJ6SqvE5E4' \
    --body '{"grantDays": 0, "itemId": "ed38CMqHR9y8mfHb", "language": "0WRtkkZnZGBU5Zvg", "reason": "0g6EWYeiay01TAov", "region": "yhNkB3nyaqUzmoAi", "source": "7dfFvNdJAsa6fTAY"}' \
    > test.out 2>&1
eval_tap $? 308 'PlatformSubscribeSubscription' test.out

#- 309 CheckUserSubscriptionSubscribableByItemId
samples/cli/sample-apps Platform checkUserSubscriptionSubscribableByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'TUuUvFl4AsI394EU' \
    --itemId 'OtZrVqPMwbW47ah8' \
    > test.out 2>&1
eval_tap $? 309 'CheckUserSubscriptionSubscribableByItemId' test.out

#- 310 GetUserSubscription
samples/cli/sample-apps Platform getUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId '3smlUO16WgvasgPW' \
    --userId 'aaKb6ZagNAkRGe9a' \
    > test.out 2>&1
eval_tap $? 310 'GetUserSubscription' test.out

#- 311 DeleteUserSubscription
samples/cli/sample-apps Platform deleteUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'IkneT8Y3KkRaBc5q' \
    --userId 'Sy6vZN0LSy7bwTfD' \
    > test.out 2>&1
eval_tap $? 311 'DeleteUserSubscription' test.out

#- 312 CancelSubscription
samples/cli/sample-apps Platform cancelSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'XeucXvvNZ3qovIDJ' \
    --userId 'WGp5gCe4CHrLu7zm' \
    --force 'false' \
    --body '{"immediate": false, "reason": "cfhoWhG9pewBfmbK"}' \
    > test.out 2>&1
eval_tap $? 312 'CancelSubscription' test.out

#- 313 GrantDaysToSubscription
samples/cli/sample-apps Platform grantDaysToSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'i6j0SMwPkXREJYjj' \
    --userId '3RcXnPdlvXeR0e31' \
    --body '{"grantDays": 29, "reason": "KRLeH9aldOImanHx"}' \
    > test.out 2>&1
eval_tap $? 313 'GrantDaysToSubscription' test.out

#- 314 GetUserSubscriptionBillingHistories
samples/cli/sample-apps Platform getUserSubscriptionBillingHistories \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'fbc2Z4aqRoPrky9i' \
    --userId 'MjCfkpKo2dwdvWu5' \
    --excludeFree 'false' \
    --limit '77' \
    --offset '3' \
    > test.out 2>&1
eval_tap $? 314 'GetUserSubscriptionBillingHistories' test.out

#- 315 ProcessUserSubscriptionNotification
samples/cli/sample-apps Platform processUserSubscriptionNotification \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'x87ckm1QHT2kij69' \
    --userId '8McbzwLUCL65j45G' \
    --body '{"additionalData": {"cardSummary": "BcUlKYzcYSYMp4VP"}, "authorisedTime": "1971-02-02T00:00:00Z", "chargebackReversedTime": "1995-03-19T00:00:00Z", "chargebackTime": "1980-08-04T00:00:00Z", "chargedTime": "1977-11-18T00:00:00Z", "createdTime": "1985-12-13T00:00:00Z", "currency": {"currencyCode": "TAzgLMwDHPtaN7fG", "currencySymbol": "GXoE52UL2SGMMlFH", "currencyType": "VIRTUAL", "decimals": 81, "namespace": "IJ7Qpc8TcRXSCsJ5"}, "customParameters": {"0u4wrxQeUawNNGB8": {}, "MiWtK3Z2waPJE0cN": {}, "zzqp1mzenyHR7uxM": {}}, "extOrderNo": "68noWMvgfUCzSRsJ", "extTxId": "Q8ZQ0Ee8rCj2Zil1", "extUserId": "UuGH8Ep0ZbZEYbjf", "issuedAt": "1995-01-26T00:00:00Z", "metadata": {"X5c3Q5Zt6WhxEBmd": "uEi9LxfenxZvOqRu", "1KKL010fqzN82Iwp": "Z46bDla6RdIIKUnM", "wGxJ3F9kP1XUSw1v": "CvGuIai8Hl5QNyzB"}, "namespace": "v92fdjDL2QSexc0V", "nonceStr": "Ld8G9Y0tKUbd5EXj", "paymentData": {"discountAmount": 5, "discountCode": "Kj5Jm0uZjnHpuWCc", "subtotalPrice": 93, "tax": 88, "totalPrice": 77}, "paymentMethod": "QuTmlEINYuMNb0Eh", "paymentMethodFee": 75, "paymentOrderNo": "MvAqLhcE12AbHRI7", "paymentProvider": "XSOLLA", "paymentProviderFee": 20, "paymentStationUrl": "AHjGOtcrtAVCX1mv", "price": 85, "refundedTime": "1985-06-06T00:00:00Z", "salesTax": 72, "sandbox": false, "sku": "8XsRHwl4mwliMM11", "status": "AUTHORISED", "statusReason": "TUfjyHHhiGQEogxG", "subscriptionId": "DBVnYRlHlrAgPQZC", "subtotalPrice": 79, "targetNamespace": "VeCzfrn8B7TjRR1p", "targetUserId": "5u0UzmcE4JNQQxvP", "tax": 65, "totalPrice": 46, "totalTax": 98, "txEndTime": "1996-09-19T00:00:00Z", "type": "XuhKASy8o1V27LA4", "userId": "SligUpHgY3oinW2U", "vat": 20}' \
    > test.out 2>&1
eval_tap $? 315 'ProcessUserSubscriptionNotification' test.out

#- 316 AcquireUserTicket
samples/cli/sample-apps Platform acquireUserTicket \
    --boothName 'M8SSQrsE0Iu4Ngo2' \
    --namespace $AB_NAMESPACE \
    --userId 'lPugvFyF2UfXN6UZ' \
    --body '{"count": 32, "orderNo": "n2oU2jpMHeodn2x0"}' \
    > test.out 2>&1
eval_tap $? 316 'AcquireUserTicket' test.out

#- 317 QueryUserCurrencyWallets
samples/cli/sample-apps Platform queryUserCurrencyWallets \
    --namespace $AB_NAMESPACE \
    --userId 'RFaDYe9YOmMLqrIc' \
    > test.out 2>&1
eval_tap $? 317 'QueryUserCurrencyWallets' test.out

#- 318 DebitUserWalletByCurrencyCode
samples/cli/sample-apps Platform debitUserWalletByCurrencyCode \
    --currencyCode 'w2q1GkqdthMQ9sSU' \
    --namespace $AB_NAMESPACE \
    --userId 'aGcQ6Wjle17FTP3v' \
    --body '{"allowOverdraft": true, "amount": 9, "balanceOrigin": "Steam", "balanceSource": "PAYMENT", "metadata": {"gXb9RttFKsFzTljt": {}, "ej88tp71iXsaVdFh": {}, "rg1cHNZSTy54ISHA": {}}, "reason": "NA0huvyoAGy6cqBV"}' \
    > test.out 2>&1
eval_tap $? 318 'DebitUserWalletByCurrencyCode' test.out

#- 319 ListUserCurrencyTransactions
samples/cli/sample-apps Platform listUserCurrencyTransactions \
    --currencyCode 'F3EtvfKNQRdY5Cf0' \
    --namespace $AB_NAMESPACE \
    --userId 'iaxA9UcXjzPNQyjh' \
    --limit '60' \
    --offset '76' \
    > test.out 2>&1
eval_tap $? 319 'ListUserCurrencyTransactions' test.out

#- 320 CheckBalance
samples/cli/sample-apps Platform checkBalance \
    --currencyCode 'E8NMfhKwvzSjcY6O' \
    --namespace $AB_NAMESPACE \
    --userId 'rMX6h5plXoMPBOGm' \
    --request '{"amount": 66, "debitBalanceSource": "TRADE", "metadata": {"uKZKIjihgUs9QvKp": {}, "JD9D5f4PvJmLrv2P": {}, "gx0vwPtOM8OFNwHB": {}}, "reason": "kZVXIkQjNakI2PTY", "walletPlatform": "IOS"}' \
    > test.out 2>&1
eval_tap $? 320 'CheckBalance' test.out

#- 321 CheckWallet
eval_tap 0 321 'CheckWallet # SKIP deprecated' test.out

#- 322 CreditUserWallet
samples/cli/sample-apps Platform creditUserWallet \
    --currencyCode 'CkPC86TiaW6LawCy' \
    --namespace $AB_NAMESPACE \
    --userId 'OuxAvCobsOKIea5p' \
    --body '{"amount": 9, "expireAt": "1986-03-11T00:00:00Z", "metadata": {"F5LYIbWrmVQ8g2TP": {}, "oLyv01SUHAT77nPG": {}, "FXSI4lExVztbetFE": {}}, "origin": "IOS", "reason": "jBi1rQVJtEC9wEuU", "source": "REDEEM_CODE"}' \
    > test.out 2>&1
eval_tap $? 322 'CreditUserWallet' test.out

#- 323 DebitByWalletPlatform
samples/cli/sample-apps Platform debitByWalletPlatform \
    --currencyCode 'zRxzM7f9KW7LIByM' \
    --namespace $AB_NAMESPACE \
    --userId 'ZLITmrO5DBd2i7yz' \
    --request '{"amount": 5, "debitBalanceSource": "TRADE", "metadata": {"6kD6fPyAsimlGHFf": {}, "CiSFtyYsYX1Seonb": {}, "N71IzDdPPJhdNL09": {}}, "reason": "7bB60h283iRmM5W5", "walletPlatform": "IOS"}' \
    > test.out 2>&1
eval_tap $? 323 'DebitByWalletPlatform' test.out

#- 324 PayWithUserWallet
samples/cli/sample-apps Platform payWithUserWallet \
    --currencyCode 'RsO13tEESCvGv4R2' \
    --namespace $AB_NAMESPACE \
    --userId 'KDmzizBQ2kaTFnet' \
    --body '{"amount": 64, "metadata": {"Xbotr2JGT4NWh54x": {}, "bkAkeeXBDZ9wO7s8": {}, "rhow8sL5Z7SPRgUm": {}}, "walletPlatform": "Steam"}' \
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
    --storeId 'V1XBcSbbk34uUVFP' \
    > test.out 2>&1
eval_tap $? 330 'ListViews' test.out

#- 331 CreateView
samples/cli/sample-apps Platform createView \
    --namespace $AB_NAMESPACE \
    --storeId 'BYrryFpy9sN0aXv7' \
    --body '{"displayOrder": 27, "localizations": {"0bjxIPKKYm4oqRfM": {"description": "KXtVsggko6Vn4u54", "localExt": {"zCOlLHjLlXLU4w8Z": {}, "X1EEjCYLJKBSIzor": {}, "JoMU8gh1uXpwARVK": {}}, "longDescription": "80W0VJnCfRBoevBe", "title": "swxSVHRs1qOYaEZq"}, "Y4HyHdwITE1hbyY7": {"description": "BlvkoW4vEOUMt1EF", "localExt": {"ZKciRQZauSGPIG21": {}, "GVdR0LHU3uh1YCQ0": {}, "bJHIoFJCW9v9bkAi": {}}, "longDescription": "LgOjLEFWpVo7RieF", "title": "eRxRv2AWkZFnIDVd"}, "GcfNLxb5Vj8RZk6X": {"description": "PqwsINwmHMcukhkt", "localExt": {"P1g1xgMbbxXJgDWr": {}, "d9d9bo4oSaqJix5C": {}, "obuD5LWUCliO6WUG": {}}, "longDescription": "E2ZISWIwY1z8Q9cR", "title": "Yl2yEaRH9yT7wTnt"}}, "name": "c3zRnaTUnWrLDaFt"}' \
    > test.out 2>&1
eval_tap $? 331 'CreateView' test.out

#- 332 GetView
samples/cli/sample-apps Platform getView \
    --namespace $AB_NAMESPACE \
    --viewId 'SwjFSZccmiDieHVc' \
    --storeId 'DctKBkNKK0cnIwPN' \
    > test.out 2>&1
eval_tap $? 332 'GetView' test.out

#- 333 UpdateView
samples/cli/sample-apps Platform updateView \
    --namespace $AB_NAMESPACE \
    --viewId 'qQl5Ll1v6srxIUpx' \
    --storeId 'GZ6SCoUyAb93HVqm' \
    --body '{"displayOrder": 48, "localizations": {"t1hrXyC8hhhRBDGv": {"description": "EXeYoE3jxqSYgs8u", "localExt": {"ApMHldqEBifhPzPa": {}, "7TgWLR28Ayc2kro6": {}, "BdW3g0ZqDVp32OEH": {}}, "longDescription": "5RLgf1eljLCbk2Wr", "title": "NJraNzIhpORMe8Gd"}, "Ci5H9MhcRCw9q5wS": {"description": "kmZuubTGjoJhf7c4", "localExt": {"PdIDisip8YcBjnYB": {}, "6e1rn4XdcJlz93Ay": {}, "03emYbuV7T3cPzak": {}}, "longDescription": "7S8i9HVxqHSyNHpe", "title": "JKPu97plWi1pVfQm"}, "SuvCH8R7bNOgyucD": {"description": "xiitrjqz6ZlslytF", "localExt": {"ejYnUyiHiHJ3RAWM": {}, "L4cdA11IZPSW0bk1": {}, "kxDQByJXrmmhJxpt": {}}, "longDescription": "9VO28aBE6UZSJSfh", "title": "wZukZlzD0qYhj36V"}}, "name": "DR2nQghWgJMXRIZH"}' \
    > test.out 2>&1
eval_tap $? 333 'UpdateView' test.out

#- 334 DeleteView
samples/cli/sample-apps Platform deleteView \
    --namespace $AB_NAMESPACE \
    --viewId 'NjBNvpZbs9OKbI1V' \
    --storeId 'LoCgaHErd0XtdD9e' \
    > test.out 2>&1
eval_tap $? 334 'DeleteView' test.out

#- 335 GetWalletConfig
samples/cli/sample-apps Platform getWalletConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 335 'GetWalletConfig' test.out

#- 336 UpdateWalletConfig
samples/cli/sample-apps Platform updateWalletConfig \
    --namespace $AB_NAMESPACE \
    --body '{"enablePaidForVCExpiration": true}' \
    > test.out 2>&1
eval_tap $? 336 'UpdateWalletConfig' test.out

#- 337 QueryWallets
eval_tap 0 337 'QueryWallets # SKIP deprecated' test.out

#- 338 BulkCredit
samples/cli/sample-apps Platform bulkCredit \
    --namespace $AB_NAMESPACE \
    --body '[{"creditRequest": {"amount": 82, "expireAt": "1973-04-07T00:00:00Z", "metadata": {"LU270A2yKrB4I2N0": {}, "ZYuFY43DU2H3BfBQ": {}, "hiWd6WzLmXy4CbZz": {}}, "origin": "Epic", "reason": "n36O2FHuaGuMjlsR", "source": "OTHER"}, "currencyCode": "Rmvc4TwoYNN1sr9L", "userIds": ["Hj3CI8v7ARYH2z4f", "RE8lpoquTva7E2ys", "Hs2hJKpARACysIlB"]}, {"creditRequest": {"amount": 72, "expireAt": "1974-02-14T00:00:00Z", "metadata": {"oZDK6wnbrEv17TCY": {}, "zSMmPWbxGkfbvtFC": {}, "SACDTm5HsWDTlCnV": {}}, "origin": "Oculus", "reason": "dH6nk1OzmMnBUh8U", "source": "PROMOTION"}, "currencyCode": "Pwj8TZfwM3mbhkVn", "userIds": ["CmIUkF8cGxgLx4vL", "7kPW9yepso8y0Wsl", "yEEZ1A8y2BGWzQeu"]}, {"creditRequest": {"amount": 22, "expireAt": "1975-07-02T00:00:00Z", "metadata": {"i5YBJ3RcEucFX7Cg": {}, "ZevuZya1L6qTP3de": {}, "S1R1iyw36AQAInHR": {}}, "origin": "GooglePlay", "reason": "G1QEJLnLnALeX8Rl", "source": "SELL_BACK"}, "currencyCode": "rt0SSp2XrZ4fs3UT", "userIds": ["MCl0JZaFsZRrfpZU", "xdQCxpOM9YEPMS5L", "Z6ZpyWm2FcrPDfUE"]}]' \
    > test.out 2>&1
eval_tap $? 338 'BulkCredit' test.out

#- 339 BulkDebit
samples/cli/sample-apps Platform bulkDebit \
    --namespace $AB_NAMESPACE \
    --body '[{"currencyCode": "O6SrJA1KHdUeCsZT", "request": {"allowOverdraft": true, "amount": 69, "balanceOrigin": "Epic", "balanceSource": "DLC_REVOCATION", "metadata": {"UwXx7UgbrIcPhttB": {}, "fmln5ozzKCPlESDw": {}, "JBdrubqMOwpX2aUj": {}}, "reason": "egRTpessdZyVVZhb"}, "userIds": ["62xWD3bYxEQH1cW0", "3HfXewXoXqA596Oi", "dYIiTwLIMXV2Ma9t"]}, {"currencyCode": "grrIA86wO8et4BIm", "request": {"allowOverdraft": false, "amount": 14, "balanceOrigin": "IOS", "balanceSource": "OTHER", "metadata": {"xtfxd9vcdviy0Pjs": {}, "AUQj9UxH0bgBoedQ": {}, "R2bdqQEM5yrXDECd": {}}, "reason": "PGTVYGZnYfN2qSzT"}, "userIds": ["hnsjUYIQ4RO7ORcO", "yOxg97Xdwz6W6kJQ", "lMdcFJBrKmVXasgk"]}, {"currencyCode": "X9nvLbb76OvC2MOX", "request": {"allowOverdraft": true, "amount": 84, "balanceOrigin": "Twitch", "balanceSource": "ORDER_REVOCATION", "metadata": {"r0FFTzzu7aIabJSs": {}, "IrlNCFOgIsojGPhq": {}, "jYUzqhPZdwtnpZeK": {}}, "reason": "jP3RNVH9bLllXL9A"}, "userIds": ["2LN5AIcR7tYERLhp", "XEH3Mn9HjLD0jBQf", "1rnG9oHOTltgGtHZ"]}]' \
    > test.out 2>&1
eval_tap $? 339 'BulkDebit' test.out

#- 340 GetWallet
eval_tap 0 340 'GetWallet # SKIP deprecated' test.out

#- 341 SyncOrders
samples/cli/sample-apps Platform syncOrders \
    --nextEvaluatedKey 'MHbJWGslyQhnP6aF' \
    --end 'iiewNedm5T3boMWd' \
    --start 'nGleSkzqZAbMG0NF' \
    > test.out 2>&1
eval_tap $? 341 'SyncOrders' test.out

#- 342 TestAdyenConfig
samples/cli/sample-apps Platform testAdyenConfig \
    --sandbox 'true' \
    --body '{"allowedPaymentMethods": ["1TXoIbi6lhdRtwzj", "LhXsTwkynW9ctgl6", "VNZIxnYqi46gtsPL"], "apiKey": "T3k8cAY79HttmJfR", "authoriseAsCapture": false, "blockedPaymentMethods": ["sBxpyCKpNYm2rAJY", "TdjyV1JAEOcZOsfz", "w0AEYA4qwdJcNFVa"], "clientKey": "F2bUmFVhpsGpffL3", "dropInSettings": "xvuB7IofYiIDqTDJ", "liveEndpointUrlPrefix": "1MCs55JRmLkudFuL", "merchantAccount": "PUg2QYRMvsmg8SZE", "notificationHmacKey": "AWLZAXpu4djLflRM", "notificationPassword": "mCwKmKaqTR4hPXuN", "notificationUsername": "v0ihFuth6GlBJk03", "returnUrl": "qENLbKpBHOcLBS46", "settings": "H3Qd6VgVsZfnYcJW"}' \
    > test.out 2>&1
eval_tap $? 342 'TestAdyenConfig' test.out

#- 343 TestAliPayConfig
samples/cli/sample-apps Platform testAliPayConfig \
    --sandbox 'false' \
    --body '{"appId": "rTuS6T3AmCa0fatw", "privateKey": "iWNhTYaGnjNFSyCW", "publicKey": "Z8oAGaP1tMP1TQlE", "returnUrl": "rNfv7B7EGRO8iCfy"}' \
    > test.out 2>&1
eval_tap $? 343 'TestAliPayConfig' test.out

#- 344 TestCheckoutConfig
samples/cli/sample-apps Platform testCheckoutConfig \
    --sandbox 'false' \
    --body '{"publicKey": "IDO8SF0HwrkWZFQN", "secretKey": "aS3m07YIWlssp9NJ"}' \
    > test.out 2>&1
eval_tap $? 344 'TestCheckoutConfig' test.out

#- 345 DebugMatchedPaymentMerchantConfig
samples/cli/sample-apps Platform debugMatchedPaymentMerchantConfig \
    --namespace '7MTKSGvrIWpUwmyx' \
    --region 'bVhqABy7NDt3zBBT' \
    > test.out 2>&1
eval_tap $? 345 'DebugMatchedPaymentMerchantConfig' test.out

#- 346 TestNeonPayConfig
samples/cli/sample-apps Platform testNeonPayConfig \
    --sandbox 'false' \
    --body '{"apiKey": "0esA6XlX7lQzIMqR", "webhookSecretKey": "CZzts34tdeNgowAE"}' \
    > test.out 2>&1
eval_tap $? 346 'TestNeonPayConfig' test.out

#- 347 TestPayPalConfig
samples/cli/sample-apps Platform testPayPalConfig \
    --sandbox 'true' \
    --body '{"clientID": "XkIgVer1tAaYFWud", "clientSecret": "Z81rbtxFJ8uMxLou", "returnUrl": "BngaPgdSOp3JyxNQ", "webHookId": "wDIef9PMbw6TWeDU"}' \
    > test.out 2>&1
eval_tap $? 347 'TestPayPalConfig' test.out

#- 348 TestStripeConfig
samples/cli/sample-apps Platform testStripeConfig \
    --sandbox 'false' \
    --body '{"allowedPaymentMethodTypes": ["nfeT8s3WC10TEh81", "jwmQ8Ba745gSinhg", "YtPam44iGr6CIYoa"], "publishableKey": "IrJYUHnwRGSoms2h", "secretKey": "up44U4lJZKqTjzsq", "webhookSecret": "S7VxsuhiGrcLhw5U"}' \
    > test.out 2>&1
eval_tap $? 348 'TestStripeConfig' test.out

#- 349 TestWxPayConfig
samples/cli/sample-apps Platform testWxPayConfig \
    --body '{"appId": "1VxbLXy8guAiGRzi", "key": "BtpVWPc9PFcssOA7", "mchid": "Fk1cDhrcG3TUsUfl", "returnUrl": "OtNcaDn1N6YRtnbN"}' \
    > test.out 2>&1
eval_tap $? 349 'TestWxPayConfig' test.out

#- 350 TestXsollaConfig
samples/cli/sample-apps Platform testXsollaConfig \
    --body '{"apiKey": "ppzllrT5pBA45YBY", "flowCompletionUrl": "eNHDcjxjDtXjOI7p", "merchantId": 3, "projectId": 53, "projectSecretKey": "tn1I79tnhmL7NZ02"}' \
    > test.out 2>&1
eval_tap $? 350 'TestXsollaConfig' test.out

#- 351 GetPaymentMerchantConfig1
samples/cli/sample-apps Platform getPaymentMerchantConfig1 \
    --id 'LCuiio3fQx1fNGHa' \
    > test.out 2>&1
eval_tap $? 351 'GetPaymentMerchantConfig1' test.out

#- 352 UpdateAdyenConfig
samples/cli/sample-apps Platform updateAdyenConfig \
    --id 'FuDLDqouT1fCU75d' \
    --sandbox 'false' \
    --validate 'true' \
    --body '{"allowedPaymentMethods": ["ofs4rg7eVNkRImES", "PQNHpdfLcmQx8Dol", "m5iZXfLyN5204U6P"], "apiKey": "MFCzp9QHTIJ9LgOv", "authoriseAsCapture": true, "blockedPaymentMethods": ["bhEpa9YY8T08qxS6", "XhL9kJA2VyucRyg8", "6Un25XgZOGiX28e4"], "clientKey": "R0FObar77HlecuDQ", "dropInSettings": "5wzCL5wU26bQRl6d", "liveEndpointUrlPrefix": "PMRCmM5vAL77uj3v", "merchantAccount": "GXkM04fwJ3MY6HBC", "notificationHmacKey": "V2TqCB9qLcB5k5SZ", "notificationPassword": "JSGqyAi3dW8nMg2D", "notificationUsername": "1v4whTYj9jR4Fdrm", "returnUrl": "MDZqmLWfZ5r8KGG3", "settings": "fHumOOEoGj62VSmN"}' \
    > test.out 2>&1
eval_tap $? 352 'UpdateAdyenConfig' test.out

#- 353 TestAdyenConfigById
samples/cli/sample-apps Platform testAdyenConfigById \
    --id 'ZpLYUfiVGdJJFvIS' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 353 'TestAdyenConfigById' test.out

#- 354 UpdateAliPayConfig
samples/cli/sample-apps Platform updateAliPayConfig \
    --id 'wTNV4y35b0Dmk3wm' \
    --sandbox 'false' \
    --validate 'false' \
    --body '{"appId": "8dYK2d48Q5MpLOMG", "privateKey": "hbY6Vvw0nm5IlhgS", "publicKey": "mTeCHaUVdA7Hpi5r", "returnUrl": "0fFySFGglrZobXcD"}' \
    > test.out 2>&1
eval_tap $? 354 'UpdateAliPayConfig' test.out

#- 355 TestAliPayConfigById
samples/cli/sample-apps Platform testAliPayConfigById \
    --id 'DQodXFlQqRpdSN8h' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 355 'TestAliPayConfigById' test.out

#- 356 UpdateCheckoutConfig
samples/cli/sample-apps Platform updateCheckoutConfig \
    --id 'Oa3Y4b9x4YlIolqX' \
    --sandbox 'false' \
    --validate 'false' \
    --body '{"publicKey": "bZiuazS5HJwrXMDy", "secretKey": "W7fTwo3p8jNdhfng"}' \
    > test.out 2>&1
eval_tap $? 356 'UpdateCheckoutConfig' test.out

#- 357 TestCheckoutConfigById
samples/cli/sample-apps Platform testCheckoutConfigById \
    --id '5XZqBp0XkSBMdCKf' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 357 'TestCheckoutConfigById' test.out

#- 358 UpdateNeonPayConfig
samples/cli/sample-apps Platform updateNeonPayConfig \
    --id 'ExCZvfUisYnXPHzC' \
    --sandbox 'false' \
    --validate 'true' \
    --body '{"apiKey": "FwOdr5Bqi0wRNCXU", "webhookSecretKey": "yc89nRoXc3olOrvq"}' \
    > test.out 2>&1
eval_tap $? 358 'UpdateNeonPayConfig' test.out

#- 359 TestNeonPayConfigById
samples/cli/sample-apps Platform testNeonPayConfigById \
    --id 'CV9lstuSV2Sx0MUB' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 359 'TestNeonPayConfigById' test.out

#- 360 UpdatePayPalConfig
samples/cli/sample-apps Platform updatePayPalConfig \
    --id 'FqnQe11uLO18xvZB' \
    --sandbox 'false' \
    --validate 'false' \
    --body '{"clientID": "vim9jkdUcsVLb73y", "clientSecret": "wY1rQHnoKa5XOKN5", "returnUrl": "RsVAfm2WPqkXtU8G", "webHookId": "z4vxRROX49LhD1Tx"}' \
    > test.out 2>&1
eval_tap $? 360 'UpdatePayPalConfig' test.out

#- 361 TestPayPalConfigById
samples/cli/sample-apps Platform testPayPalConfigById \
    --id 'NH90PtlCQLItVPVU' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 361 'TestPayPalConfigById' test.out

#- 362 UpdateStripeConfig
samples/cli/sample-apps Platform updateStripeConfig \
    --id '6xtKNhx2F0hfTgNS' \
    --sandbox 'true' \
    --validate 'true' \
    --body '{"allowedPaymentMethodTypes": ["jeEDUJhnvIr9q2Us", "YfMCsrmtWlAr25YM", "Oe86FQlniG73Tf7A"], "publishableKey": "kYlDEmvC93LaYK6t", "secretKey": "86I6uFGg5Nnho5Kr", "webhookSecret": "g1yFomjKPkZGzb8j"}' \
    > test.out 2>&1
eval_tap $? 362 'UpdateStripeConfig' test.out

#- 363 TestStripeConfigById
samples/cli/sample-apps Platform testStripeConfigById \
    --id 'mGq81S2hYcV7yJ0c' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 363 'TestStripeConfigById' test.out

#- 364 UpdateWxPayConfig
samples/cli/sample-apps Platform updateWxPayConfig \
    --id 'W81VFRyLuTtiPLdI' \
    --validate 'true' \
    --body '{"appId": "Fb7steQaTYwyTfKf", "key": "GLGx7ZfhykZJAMzi", "mchid": "gs7ULXqoRYfFP4Yl", "returnUrl": "7czurJ362prXS1IE"}' \
    > test.out 2>&1
eval_tap $? 364 'UpdateWxPayConfig' test.out

#- 365 UpdateWxPayConfigCert
samples/cli/sample-apps Platform updateWxPayConfigCert \
    --id '3rsavBA69A1UsBCA' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 365 'UpdateWxPayConfigCert' test.out

#- 366 TestWxPayConfigById
samples/cli/sample-apps Platform testWxPayConfigById \
    --id 'CyXzon5rQBvLbGI4' \
    > test.out 2>&1
eval_tap $? 366 'TestWxPayConfigById' test.out

#- 367 UpdateXsollaConfig
samples/cli/sample-apps Platform updateXsollaConfig \
    --id 'wT2mRONbJZwhAnyI' \
    --validate 'false' \
    --body '{"apiKey": "fkViVgPS2PcRb0EO", "flowCompletionUrl": "Sr9yI2hnzVf3ssIC", "merchantId": 63, "projectId": 47, "projectSecretKey": "VkZZO9tahYRxRz93"}' \
    > test.out 2>&1
eval_tap $? 367 'UpdateXsollaConfig' test.out

#- 368 TestXsollaConfigById
samples/cli/sample-apps Platform testXsollaConfigById \
    --id 'E0oiAbt7MKsjde8e' \
    > test.out 2>&1
eval_tap $? 368 'TestXsollaConfigById' test.out

#- 369 UpdateXsollaUIConfig
samples/cli/sample-apps Platform updateXsollaUIConfig \
    --id 'fA4wHfea4LbFRCLj' \
    --body '{"device": "MOBILE", "showCloseButton": false, "size": "LARGE", "theme": "DARK"}' \
    > test.out 2>&1
eval_tap $? 369 'UpdateXsollaUIConfig' test.out

#- 370 QueryPaymentProviderConfig
samples/cli/sample-apps Platform queryPaymentProviderConfig \
    --limit '58' \
    --namespace 'Mr9UNnWwZTrnfJfd' \
    --offset '4' \
    --region 'qYxXE47KRZFuMGva' \
    > test.out 2>&1
eval_tap $? 370 'QueryPaymentProviderConfig' test.out

#- 371 CreatePaymentProviderConfig
samples/cli/sample-apps Platform createPaymentProviderConfig \
    --body '{"aggregate": "CHECKOUT", "namespace": "5tzpQ7P5CWPa7oJ1", "region": "tIkSk871lfbjQZbs", "sandboxTaxJarApiToken": "5HoClNRmQCrTOxPZ", "specials": ["XSOLLA", "XSOLLA", "WALLET"], "taxJarApiToken": "ToLOGd8NnsAJ4r5r", "taxJarEnabled": false, "useGlobalTaxJarApiToken": true}' \
    > test.out 2>&1
eval_tap $? 371 'CreatePaymentProviderConfig' test.out

#- 372 GetAggregatePaymentProviders
samples/cli/sample-apps Platform getAggregatePaymentProviders \
    > test.out 2>&1
eval_tap $? 372 'GetAggregatePaymentProviders' test.out

#- 373 DebugMatchedPaymentProviderConfig
samples/cli/sample-apps Platform debugMatchedPaymentProviderConfig \
    --namespace 'pi41Mvi1WxYH1YnK' \
    --region 'P1K0C4uj6kAP5uUv' \
    > test.out 2>&1
eval_tap $? 373 'DebugMatchedPaymentProviderConfig' test.out

#- 374 GetSpecialPaymentProviders
samples/cli/sample-apps Platform getSpecialPaymentProviders \
    > test.out 2>&1
eval_tap $? 374 'GetSpecialPaymentProviders' test.out

#- 375 UpdatePaymentProviderConfig
samples/cli/sample-apps Platform updatePaymentProviderConfig \
    --id 'pCmMJqXimUbFgKjj' \
    --body '{"aggregate": "NEONPAY", "namespace": "DXUAUPA08dDZ1KFq", "region": "GqPIuRVXn90kT3Gx", "sandboxTaxJarApiToken": "m9C59Cwasqxb75Tp", "specials": ["CHECKOUT", "WALLET", "ADYEN"], "taxJarApiToken": "Nx7t9DE45xfaTlpA", "taxJarEnabled": true, "useGlobalTaxJarApiToken": true}' \
    > test.out 2>&1
eval_tap $? 375 'UpdatePaymentProviderConfig' test.out

#- 376 DeletePaymentProviderConfig
samples/cli/sample-apps Platform deletePaymentProviderConfig \
    --id 'O8eMTnHj3wVSjW8q' \
    > test.out 2>&1
eval_tap $? 376 'DeletePaymentProviderConfig' test.out

#- 377 GetPaymentTaxConfig
samples/cli/sample-apps Platform getPaymentTaxConfig \
    > test.out 2>&1
eval_tap $? 377 'GetPaymentTaxConfig' test.out

#- 378 UpdatePaymentTaxConfig
samples/cli/sample-apps Platform updatePaymentTaxConfig \
    --body '{"sandboxTaxJarApiToken": "IGcsUExNvwW1DW4u", "taxJarApiToken": "eAXJ2IqVbn438D1t", "taxJarEnabled": true, "taxJarProductCodesMapping": {"FsITsF4LLuUtHvV4": "4vqi5NwJyhWFFZwH", "ZEB0RsXH3S7UpHzp": "bR1MVKfL8kmosfvT", "SikP9IoeWnUbpqQ1": "tipn9q9SH0cSNci4"}}' \
    > test.out 2>&1
eval_tap $? 378 'UpdatePaymentTaxConfig' test.out

#- 379 SyncPaymentOrders
samples/cli/sample-apps Platform syncPaymentOrders \
    --nextEvaluatedKey 'kl2G1esQwDZDaKmC' \
    --end 'VQ4vz6fGaDVqr05m' \
    --start 'eTfUAY2rMtBzJ54i' \
    > test.out 2>&1
eval_tap $? 379 'SyncPaymentOrders' test.out

#- 380 PublicGetRootCategories
samples/cli/sample-apps Platform publicGetRootCategories \
    --namespace $AB_NAMESPACE \
    --language 'N3Y0yHQdj8Sq9vxb' \
    --storeId 'GVnIhwVKAsInpn6c' \
    > test.out 2>&1
eval_tap $? 380 'PublicGetRootCategories' test.out

#- 381 DownloadCategories
samples/cli/sample-apps Platform downloadCategories \
    --namespace $AB_NAMESPACE \
    --language 'viAD30IM0S9XGzJr' \
    --storeId 'ij58h8LYrTCUmXqn' \
    > test.out 2>&1
eval_tap $? 381 'DownloadCategories' test.out

#- 382 PublicGetCategory
samples/cli/sample-apps Platform publicGetCategory \
    --categoryPath 'pFc9FcEmecwREegb' \
    --namespace $AB_NAMESPACE \
    --language 'quRq8xh6s6KHMwyo' \
    --storeId 'iwnHz9HafWRfy9AN' \
    > test.out 2>&1
eval_tap $? 382 'PublicGetCategory' test.out

#- 383 PublicGetChildCategories
samples/cli/sample-apps Platform publicGetChildCategories \
    --categoryPath 'SF5U6d8SVqOUKpYZ' \
    --namespace $AB_NAMESPACE \
    --language '8YjEMxDODcjChKIN' \
    --storeId 'pYhjBqPQxUnR4YsN' \
    > test.out 2>&1
eval_tap $? 383 'PublicGetChildCategories' test.out

#- 384 PublicGetDescendantCategories
samples/cli/sample-apps Platform publicGetDescendantCategories \
    --categoryPath 'pDcsGUJ4iBMMwhyD' \
    --namespace $AB_NAMESPACE \
    --language 'FU81lPGNwUlFxLt7' \
    --storeId 'ONKU1TD7pfwpB9l9' \
    > test.out 2>&1
eval_tap $? 384 'PublicGetDescendantCategories' test.out

#- 385 PublicListCurrencies
samples/cli/sample-apps Platform publicListCurrencies \
    --namespace $AB_NAMESPACE \
    --currencyType 'REAL' \
    > test.out 2>&1
eval_tap $? 385 'PublicListCurrencies' test.out

#- 386 GeDLCDurableRewardShortMap
samples/cli/sample-apps Platform geDLCDurableRewardShortMap \
    --namespace $AB_NAMESPACE \
    --dlcType 'PSN' \
    > test.out 2>&1
eval_tap $? 386 'GeDLCDurableRewardShortMap' test.out

#- 387 GetAppleConfigVersion
samples/cli/sample-apps Platform getAppleConfigVersion \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 387 'GetAppleConfigVersion' test.out

#- 388 GetIAPItemMapping
samples/cli/sample-apps Platform getIAPItemMapping \
    --namespace $AB_NAMESPACE \
    --platform 'XBOX' \
    > test.out 2>&1
eval_tap $? 388 'GetIAPItemMapping' test.out

#- 389 PublicGetItemByAppId
samples/cli/sample-apps Platform publicGetItemByAppId \
    --namespace $AB_NAMESPACE \
    --language 'n67WWobrvTnul1yb' \
    --region 'WH4vOcw8FSejDoYR' \
    --storeId 'qTCMCTQpCLOk5H0P' \
    --appId 'd1jaha8Y1c1zBuhq' \
    > test.out 2>&1
eval_tap $? 389 'PublicGetItemByAppId' test.out

#- 390 PublicQueryItems
samples/cli/sample-apps Platform publicQueryItems \
    --namespace $AB_NAMESPACE \
    --appType 'DEMO' \
    --autoCalcEstimatedPrice 'false' \
    --baseAppId 'ZcJWjrZlpsboSraq' \
    --categoryPath '5a2iIHPQlGuKYntx' \
    --features 'J5MMyn3ybSmduSpE' \
    --includeSubCategoryItem 'false' \
    --itemType 'BUNDLE' \
    --language 'S61IcAPoow1nWkSJ' \
    --limit '73' \
    --offset '86' \
    --region '2pBpZW4EMBcg6sYI' \
    --sortBy '["name:asc", "createdAt:asc", "updatedAt:asc"]' \
    --storeId 'RyYqm5VtMbOnAlgX' \
    --tags 'EDaLtXt3ZBWyX4eo' \
    > test.out 2>&1
eval_tap $? 390 'PublicQueryItems' test.out

#- 391 PublicGetItemBySku
samples/cli/sample-apps Platform publicGetItemBySku \
    --namespace $AB_NAMESPACE \
    --autoCalcEstimatedPrice 'false' \
    --language 'OROAC841lQVn9QxD' \
    --region 'I1yonhSsAJVktVRa' \
    --storeId 'DRSJo2Z04YsDSRpk' \
    --sku '3vgvDMcZeZaJj7BX' \
    > test.out 2>&1
eval_tap $? 391 'PublicGetItemBySku' test.out

#- 392 PublicGetEstimatedPrice
samples/cli/sample-apps Platform publicGetEstimatedPrice \
    --namespace $AB_NAMESPACE \
    --region 'msqDnBPcpXoubuyi' \
    --storeId '9XI3tajHUAPr1Fju' \
    --itemIds 'llF3id1eSCOBlTdx' \
    > test.out 2>&1
eval_tap $? 392 'PublicGetEstimatedPrice' test.out

#- 393 PublicBulkGetItems
samples/cli/sample-apps Platform publicBulkGetItems \
    --namespace $AB_NAMESPACE \
    --autoCalcEstimatedPrice 'false' \
    --language 'i3ytDJJASzGw5IWf' \
    --region 'KOJmPruX93y9i9jE' \
    --storeId '4H97XX2xJP6CkLKr' \
    --itemIds 'DlfQwEDEsVoJkb9m' \
    > test.out 2>&1
eval_tap $? 393 'PublicBulkGetItems' test.out

#- 394 PublicValidateItemPurchaseCondition
samples/cli/sample-apps Platform publicValidateItemPurchaseCondition \
    --namespace $AB_NAMESPACE \
    --body '{"itemIds": ["g7W5Ct3RnozS11Hd", "1tihCa5cPLDETMIW", "hwcQxRaydyT06no8"]}' \
    > test.out 2>&1
eval_tap $? 394 'PublicValidateItemPurchaseCondition' test.out

#- 395 PublicSearchItems
samples/cli/sample-apps Platform publicSearchItems \
    --namespace $AB_NAMESPACE \
    --autoCalcEstimatedPrice 'true' \
    --itemType 'CODE' \
    --limit '45' \
    --offset '14' \
    --region '1eQwxizG0iw37dxU' \
    --storeId 'WJptzKPG4oDISpVB' \
    --keyword 'KHjBHOAeCZwjxTTT' \
    --language 'H6FpA004OdIIfMJS' \
    > test.out 2>&1
eval_tap $? 395 'PublicSearchItems' test.out

#- 396 PublicGetApp
samples/cli/sample-apps Platform publicGetApp \
    --itemId '16CZPPsVtP0MGG0N' \
    --namespace $AB_NAMESPACE \
    --language 'IDtiAFRcWtNFwTc4' \
    --region 'AdGtYu21bwsWvG6n' \
    --storeId 'TEzOiUF3zzEDzdKt' \
    > test.out 2>&1
eval_tap $? 396 'PublicGetApp' test.out

#- 397 PublicGetItemDynamicData
samples/cli/sample-apps Platform publicGetItemDynamicData \
    --itemId 'ZCXaUY1swAHL535r' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 397 'PublicGetItemDynamicData' test.out

#- 398 PublicGetItem
samples/cli/sample-apps Platform publicGetItem \
    --itemId 'IyJNohmWWlANRD6b' \
    --namespace $AB_NAMESPACE \
    --autoCalcEstimatedPrice 'true' \
    --language 'u7uvDM9zIjPfjm0m' \
    --populateBundle 'true' \
    --region 'yOnReJUKHyVr8pf1' \
    --storeId 'CRDtA6Bds1gHg0hr' \
    > test.out 2>&1
eval_tap $? 398 'PublicGetItem' test.out

#- 399 GetPaymentCustomization
eval_tap 0 399 'GetPaymentCustomization # SKIP deprecated' test.out

#- 400 PublicGetPaymentUrl
samples/cli/sample-apps Platform publicGetPaymentUrl \
    --namespace $AB_NAMESPACE \
    --body '{"neonPayConfig": {"cancelUrl": "CMnmDh5XT9WsTZIZ", "successUrl": "9shLYDgXYaaF9awq"}, "paymentOrderNo": "VcEarB59n4mYsUOk", "paymentProvider": "NEONPAY", "returnUrl": "sy9clyiPWYfV5Q7G", "ui": "qG2GMRkproeH7YU9", "zipCode": "dNATacngz1MHxzQV"}' \
    > test.out 2>&1
eval_tap $? 400 'PublicGetPaymentUrl' test.out

#- 401 PublicGetPaymentMethods
samples/cli/sample-apps Platform publicGetPaymentMethods \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'az16GwdxO14AQTGP' \
    > test.out 2>&1
eval_tap $? 401 'PublicGetPaymentMethods' test.out

#- 402 PublicGetUnpaidPaymentOrder
samples/cli/sample-apps Platform publicGetUnpaidPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'IlGsYNMOo0sCTpgt' \
    > test.out 2>&1
eval_tap $? 402 'PublicGetUnpaidPaymentOrder' test.out

#- 403 Pay
samples/cli/sample-apps Platform pay \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'Ttni6nRd7sgx0OmY' \
    --paymentProvider 'XSOLLA' \
    --zipCode 'wP037LDMCUvinnCz' \
    --body '{"token": "elJkHqfaLXk547tO"}' \
    > test.out 2>&1
eval_tap $? 403 'Pay' test.out

#- 404 PublicCheckPaymentOrderPaidStatus
samples/cli/sample-apps Platform publicCheckPaymentOrderPaidStatus \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'SyF8P4zElLuKhFQw' \
    > test.out 2>&1
eval_tap $? 404 'PublicCheckPaymentOrderPaidStatus' test.out

#- 405 GetPaymentPublicConfig
samples/cli/sample-apps Platform getPaymentPublicConfig \
    --namespace $AB_NAMESPACE \
    --sandbox 'false' \
    --paymentProvider 'STRIPE' \
    --region 'EdrnDoLMMG1q9qbf' \
    > test.out 2>&1
eval_tap $? 405 'GetPaymentPublicConfig' test.out

#- 406 PublicGetQRCode
samples/cli/sample-apps Platform publicGetQRCode \
    --namespace $AB_NAMESPACE \
    --code '2EPuhylaEjoBiPsq' \
    > test.out 2>&1
eval_tap $? 406 'PublicGetQRCode' test.out

#- 407 PublicNormalizePaymentReturnUrl
samples/cli/sample-apps Platform publicNormalizePaymentReturnUrl \
    --namespace $AB_NAMESPACE \
    --payerID 'xB2IJpPkTIpghXJt' \
    --foreinginvoice 'jFzaJlYk6m61Cop3' \
    --invoiceId 'uVEbwyAZvWC38gy6' \
    --payload '36NvQTWqd2ZRJNMD' \
    --redirectResult 'zlFHhh1BgzhevsuZ' \
    --resultCode 'S9hElf4mcPwc9kwH' \
    --sessionId 'Jzvv4soE1ukPyx2D' \
    --status 'A8NiMDjwUFgIiDDR' \
    --token '7Z2WRGkXHhdIxjPe' \
    --type 'aqpj9wXRwzBOP6IN' \
    --userId '484ofiuBaDdFxN9y' \
    --orderNo '64T9nG5ZSewHf4V5' \
    --paymentOrderNo 'V3ImJvSCpYTFyTxk' \
    --paymentProvider 'PAYPAL' \
    --returnUrl '2RS52ZCJS9JOXhaz' \
    > test.out 2>&1
eval_tap $? 407 'PublicNormalizePaymentReturnUrl' test.out

#- 408 GetPaymentTaxValue
samples/cli/sample-apps Platform getPaymentTaxValue \
    --namespace $AB_NAMESPACE \
    --zipCode 'um8iVBjms6fR0DKM' \
    --paymentOrderNo 'VEqx5xiEcmqHFNov' \
    --paymentProvider 'PAYPAL' \
    > test.out 2>&1
eval_tap $? 408 'GetPaymentTaxValue' test.out

#- 409 GetRewardByCode
samples/cli/sample-apps Platform getRewardByCode \
    --namespace $AB_NAMESPACE \
    --rewardCode 'b6FC8CGyWtQHuiWM' \
    > test.out 2>&1
eval_tap $? 409 'GetRewardByCode' test.out

#- 410 QueryRewards1
samples/cli/sample-apps Platform queryRewards1 \
    --namespace $AB_NAMESPACE \
    --eventTopic 'YnUk0EBuunSRvrYp' \
    --limit '21' \
    --offset '41' \
    --sortBy '["namespace:desc"]' \
    > test.out 2>&1
eval_tap $? 410 'QueryRewards1' test.out

#- 411 GetReward1
samples/cli/sample-apps Platform getReward1 \
    --namespace $AB_NAMESPACE \
    --rewardId '9aun6YcTaRnrwSXD' \
    > test.out 2>&1
eval_tap $? 411 'GetReward1' test.out

#- 412 PublicListStores
samples/cli/sample-apps Platform publicListStores \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 412 'PublicListStores' test.out

#- 413 PublicExistsAnyMyActiveEntitlement
samples/cli/sample-apps Platform publicExistsAnyMyActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --appIds '["dLZPm71kxRlqz1Um", "dpcxO9l8slSEvZ0G", "wuGqr3ENytYNLGdY"]' \
    --itemIds '["TPrC1aGWQNNbdICe", "8k15CLgeHQM8spoE", "BLAsbmoNRLqiKFxh"]' \
    --skus '["hR7T4XOG0UBX33LG", "qT6iqh1eLLgajb1o", "824Ap88JJAWdxSy3"]' \
    > test.out 2>&1
eval_tap $? 413 'PublicExistsAnyMyActiveEntitlement' test.out

#- 414 PublicGetMyAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform publicGetMyAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --appId '8DriiR7W7xJnSSgr' \
    > test.out 2>&1
eval_tap $? 414 'PublicGetMyAppEntitlementOwnershipByAppId' test.out

#- 415 PublicGetMyEntitlementOwnershipByItemId
samples/cli/sample-apps Platform publicGetMyEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --entitlementClazz 'APP' \
    --itemId 'kK8t8reRiQkTnID6' \
    > test.out 2>&1
eval_tap $? 415 'PublicGetMyEntitlementOwnershipByItemId' test.out

#- 416 PublicGetMyEntitlementOwnershipBySku
samples/cli/sample-apps Platform publicGetMyEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --entitlementClazz 'CODE' \
    --sku 'xvZnjdbb9DOu23dF' \
    > test.out 2>&1
eval_tap $? 416 'PublicGetMyEntitlementOwnershipBySku' test.out

#- 417 PublicGetEntitlementOwnershipToken
samples/cli/sample-apps Platform publicGetEntitlementOwnershipToken \
    --namespace $AB_NAMESPACE \
    --appIds '["USejf8bscpWeKlhX", "FwMqeEQFiuklGKUQ", "A3CrGWBgQMlXKHkh"]' \
    --itemIds '["dmtKqvUhc1D9uiqq", "kMiPUull0H5UeoTv", "OV0qDXLtcz5Rie9s"]' \
    --skus '["SK9mN174E02praab", "G4UpaGNtE8wdpDn2", "hHo0NQ90qv6F35Mz"]' \
    > test.out 2>&1
eval_tap $? 417 'PublicGetEntitlementOwnershipToken' test.out

#- 418 SyncTwitchDropsEntitlement
samples/cli/sample-apps Platform syncTwitchDropsEntitlement \
    --namespace $AB_NAMESPACE \
    --body '{"gameId": "XXwnVX5gLLegYgF2", "language": "HDR_cRKD_MD", "region": "dIUuf01nUEYEtv1C"}' \
    > test.out 2>&1
eval_tap $? 418 'SyncTwitchDropsEntitlement' test.out

#- 419 PublicGetMyWallet
samples/cli/sample-apps Platform publicGetMyWallet \
    --currencyCode 'zoT4MPnNYadn7Dne' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 419 'PublicGetMyWallet' test.out

#- 420 SyncEpicGameDLC
samples/cli/sample-apps Platform syncEpicGameDLC \
    --namespace $AB_NAMESPACE \
    --userId 'HIxIO6f8LQikkYKe' \
    --body '{"epicGamesJwtToken": "9EjS2uboE4fINoV4"}' \
    > test.out 2>&1
eval_tap $? 420 'SyncEpicGameDLC' test.out

#- 421 SyncOculusDLC
samples/cli/sample-apps Platform syncOculusDLC \
    --namespace $AB_NAMESPACE \
    --userId 'NqN5TnLyI0JmMwz9' \
    > test.out 2>&1
eval_tap $? 421 'SyncOculusDLC' test.out

#- 422 PublicSyncPsnDlcInventory
samples/cli/sample-apps Platform publicSyncPsnDlcInventory \
    --namespace $AB_NAMESPACE \
    --userId 'EYhjY6Pxr1NsWGCs' \
    --body '{"serviceLabel": 33}' \
    > test.out 2>&1
eval_tap $? 422 'PublicSyncPsnDlcInventory' test.out

#- 423 PublicSyncPsnDlcInventoryWithMultipleServiceLabels
samples/cli/sample-apps Platform publicSyncPsnDlcInventoryWithMultipleServiceLabels \
    --namespace $AB_NAMESPACE \
    --userId '5qWm1fVmw8c86eNI' \
    --body '{"serviceLabels": [78, 30]}' \
    > test.out 2>&1
eval_tap $? 423 'PublicSyncPsnDlcInventoryWithMultipleServiceLabels' test.out

#- 424 SyncSteamDLC
samples/cli/sample-apps Platform syncSteamDLC \
    --namespace $AB_NAMESPACE \
    --userId 'jACKMmMfB1r42tw1' \
    --body '{"appId": "dmKoSxSv8F3axx0V", "steamId": "JROibusEUzXkHjay"}' \
    > test.out 2>&1
eval_tap $? 424 'SyncSteamDLC' test.out

#- 425 SyncXboxDLC
samples/cli/sample-apps Platform syncXboxDLC \
    --namespace $AB_NAMESPACE \
    --userId '6v74aJVBD2bAsIVW' \
    --body '{"xstsToken": "p8ytyhUr3KWyVw1X"}' \
    > test.out 2>&1
eval_tap $? 425 'SyncXboxDLC' test.out

#- 426 PublicQueryUserEntitlements
samples/cli/sample-apps Platform publicQueryUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'Rt09ioDQd1JNk1IA' \
    --appType 'SOFTWARE' \
    --entitlementClazz 'SUBSCRIPTION' \
    --entitlementName 'bq8BgEfgZN5VX9jS' \
    --features '["9676nXOV3hHuQ7v1", "w5pjl3tyfBNdleGS", "Y1MNh4wbIB8kTr26"]' \
    --itemId '["I373AYqA1BknZVgY", "zpEzq1LNWO0hkqmk", "IWdbymwnwM5qS6Ce"]' \
    --limit '61' \
    --offset '82' \
    > test.out 2>&1
eval_tap $? 426 'PublicQueryUserEntitlements' test.out

#- 427 PublicGetUserAppEntitlementByAppId
samples/cli/sample-apps Platform publicGetUserAppEntitlementByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'GMs7CovJDb4eoN8p' \
    --appId 'UJtoBX1BqFCtYz47' \
    > test.out 2>&1
eval_tap $? 427 'PublicGetUserAppEntitlementByAppId' test.out

#- 428 PublicQueryUserEntitlementsByAppType
samples/cli/sample-apps Platform publicQueryUserEntitlementsByAppType \
    --namespace $AB_NAMESPACE \
    --userId 'VnO6BkOw1cuLrHUi' \
    --limit '88' \
    --offset '57' \
    --appType 'DLC' \
    > test.out 2>&1
eval_tap $? 428 'PublicQueryUserEntitlementsByAppType' test.out

#- 429 PublicGetUserEntitlementsByIds
samples/cli/sample-apps Platform publicGetUserEntitlementsByIds \
    --namespace $AB_NAMESPACE \
    --userId 'ESo35EMcpdPSkCxv' \
    --availablePlatformOnly 'false' \
    --ids '["8E9CMphkG5kgoWGt", "SO2qtIs18IR58fta", "BRckYKSidLLE8Qyj"]' \
    > test.out 2>&1
eval_tap $? 429 'PublicGetUserEntitlementsByIds' test.out

#- 430 PublicGetUserEntitlementByItemId
eval_tap 0 430 'PublicGetUserEntitlementByItemId # SKIP deprecated' test.out

#- 431 PublicGetUserEntitlementBySku
eval_tap 0 431 'PublicGetUserEntitlementBySku # SKIP deprecated' test.out

#- 432 PublicUserEntitlementHistory
samples/cli/sample-apps Platform publicUserEntitlementHistory \
    --namespace $AB_NAMESPACE \
    --userId 'FEipdMg9BQg528Zb' \
    --endDate 'CM4K9tpdJRUyFPs7' \
    --entitlementClazz 'LOOTBOX' \
    --limit '61' \
    --offset '77' \
    --startDate 'EwoFOmrVT4uW329e' \
    > test.out 2>&1
eval_tap $? 432 'PublicUserEntitlementHistory' test.out

#- 433 PublicExistsAnyUserActiveEntitlement
samples/cli/sample-apps Platform publicExistsAnyUserActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'E2HigyNCmfT68xfW' \
    --appIds '["RChHBKzNB05pQIng", "GiZRMnCWJtB3mh76", "4rFRRh8HHy66a9Ux"]' \
    --itemIds '["G3zz3HoOAZm2OLtO", "nUisZNBnJsg4EXA0", "2jgyhDuycCD1oI9d"]' \
    --skus '["OjGYwuHtCmuHRmJb", "kx74AlKecZ0cvBwH", "dR0e9f1bBhCJJORV"]' \
    > test.out 2>&1
eval_tap $? 433 'PublicExistsAnyUserActiveEntitlement' test.out

#- 434 PublicGetUserAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform publicGetUserAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'g26388BwkwoBvyqM' \
    --appId 'NGnyRuXYbbT7cdN7' \
    > test.out 2>&1
eval_tap $? 434 'PublicGetUserAppEntitlementOwnershipByAppId' test.out

#- 435 PublicGetUserEntitlementOwnershipByItemId
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'q3bwnfKdRD7PiI94' \
    --entitlementClazz 'APP' \
    --itemId 'zr2H6HQKCNE22zXv' \
    > test.out 2>&1
eval_tap $? 435 'PublicGetUserEntitlementOwnershipByItemId' test.out

#- 436 PublicGetUserEntitlementOwnershipByItemIds
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'VWV2gfc3IO0G2Dzt' \
    --ids '["nUYI0HIyVR3SIT3L", "r1lcMwO9tkxxfegA", "k0HYJl8zqvyezOoM"]' \
    > test.out 2>&1
eval_tap $? 436 'PublicGetUserEntitlementOwnershipByItemIds' test.out

#- 437 PublicGetUserEntitlementOwnershipBySku
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --userId 'ECblIU4bFOyt7Jwq' \
    --entitlementClazz 'LOOTBOX' \
    --sku 'PQvNzfXBgZFEhJX5' \
    > test.out 2>&1
eval_tap $? 437 'PublicGetUserEntitlementOwnershipBySku' test.out

#- 438 PublicGetUserEntitlement
samples/cli/sample-apps Platform publicGetUserEntitlement \
    --entitlementId 'oiTdDFhlKD3Rzc9o' \
    --namespace $AB_NAMESPACE \
    --userId 'v1WHtA70ss9XFdQh' \
    > test.out 2>&1
eval_tap $? 438 'PublicGetUserEntitlement' test.out

#- 439 PublicConsumeUserEntitlement
samples/cli/sample-apps Platform publicConsumeUserEntitlement \
    --entitlementId '8NdzXBdAEH103Ubs' \
    --namespace $AB_NAMESPACE \
    --userId 'UehUyV4YXtzRthbj' \
    --body '{"metadata": {"operationSource": "INVENTORY"}, "options": ["aAL6WpCoDeqMaqod", "KdowrDTBbAhx4RMq", "G042wuOkmc6LrN1z"], "requestId": "NrHVacz4IarUYAqW", "useCount": 34}' \
    > test.out 2>&1
eval_tap $? 439 'PublicConsumeUserEntitlement' test.out

#- 440 PublicSellUserEntitlement
samples/cli/sample-apps Platform publicSellUserEntitlement \
    --entitlementId 'wdA5a79gxezJjEzq' \
    --namespace $AB_NAMESPACE \
    --userId 'hyz5nsbpDwxk4Bvq' \
    --body '{"requestId": "r5yAxsGLnNe3bppr", "useCount": 92}' \
    > test.out 2>&1
eval_tap $? 440 'PublicSellUserEntitlement' test.out

#- 441 PublicSplitUserEntitlement
samples/cli/sample-apps Platform publicSplitUserEntitlement \
    --entitlementId 'lSq2XapqbJDx3IPK' \
    --namespace $AB_NAMESPACE \
    --userId '6s7UmG0MDebWgyLT' \
    --body '{"metadata": {"operationSource": "INVENTORY"}, "useCount": 74}' \
    > test.out 2>&1
eval_tap $? 441 'PublicSplitUserEntitlement' test.out

#- 442 PublicTransferUserEntitlement
samples/cli/sample-apps Platform publicTransferUserEntitlement \
    --entitlementId '3e55KwvMvlhwtmTR' \
    --namespace $AB_NAMESPACE \
    --userId 'DB5VUV6tBpTavth2' \
    --body '{"entitlementId": "DZ1liuKQQYUDeAFh", "metadata": {"operationSource": "INVENTORY"}, "useCount": 93}' \
    > test.out 2>&1
eval_tap $? 442 'PublicTransferUserEntitlement' test.out

#- 443 PublicRedeemCode
samples/cli/sample-apps Platform publicRedeemCode \
    --namespace $AB_NAMESPACE \
    --userId 'oXF2900PVCzUtsr1' \
    --body '{"code": "DTouxYaJhPLmSJbH", "language": "GPi_GoWu", "region": "7NSKQpOqnSW5D2qj"}' \
    > test.out 2>&1
eval_tap $? 443 'PublicRedeemCode' test.out

#- 444 PublicFulfillAppleIAPItem
samples/cli/sample-apps Platform publicFulfillAppleIAPItem \
    --namespace $AB_NAMESPACE \
    --userId '53ruLPOpKblGmwhD' \
    --body '{"excludeOldTransactions": true, "language": "HEri-583", "productId": "TME5uALJOKFbH0mE", "receiptData": "loFLC7rNms75aaoi", "region": "RByY1upOkv3Ky7ZW", "transactionId": "Ff1WvKehaTb5Cj8P"}' \
    > test.out 2>&1
eval_tap $? 444 'PublicFulfillAppleIAPItem' test.out

#- 445 SyncEpicGamesInventory
samples/cli/sample-apps Platform syncEpicGamesInventory \
    --namespace $AB_NAMESPACE \
    --userId '4drUqxoj2M5td5vi' \
    --body '{"epicGamesJwtToken": "2ee1ioHcXfsSlfuV"}' \
    > test.out 2>&1
eval_tap $? 445 'SyncEpicGamesInventory' test.out

#- 446 PublicFulfillGoogleIAPItem
samples/cli/sample-apps Platform publicFulfillGoogleIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'SvvDDT2C4xUtwNcQ' \
    --body '{"autoAck": false, "autoConsume": false, "language": "Ov_NkDv-ZV", "orderId": "sU0xFWJFwIvFRKcH", "packageName": "QQTYvWkXTO2z1qkX", "productId": "7xZEUHpfPUa2omnm", "purchaseTime": 50, "purchaseToken": "ek125UQ01GnUB5dm", "region": "QEh0TTeHnhRT8PxB", "subscriptionPurchase": false}' \
    > test.out 2>&1
eval_tap $? 446 'PublicFulfillGoogleIAPItem' test.out

#- 447 SyncOculusConsumableEntitlements
samples/cli/sample-apps Platform syncOculusConsumableEntitlements \
    --namespace $AB_NAMESPACE \
    --userId '1MrinxipICl4E3a8' \
    > test.out 2>&1
eval_tap $? 447 'SyncOculusConsumableEntitlements' test.out

#- 448 PublicReconcilePlayStationStore
samples/cli/sample-apps Platform publicReconcilePlayStationStore \
    --namespace $AB_NAMESPACE \
    --userId '0pZoEAZAIYm1Z75x' \
    --body '{"currencyCode": "QVzKEfhtVTYhvPE3", "price": 0.6825777584208942, "productId": "UlCWQMq5kMxJAZkp", "serviceLabel": 57}' \
    > test.out 2>&1
eval_tap $? 448 'PublicReconcilePlayStationStore' test.out

#- 449 PublicReconcilePlayStationStoreWithMultipleServiceLabels
samples/cli/sample-apps Platform publicReconcilePlayStationStoreWithMultipleServiceLabels \
    --namespace $AB_NAMESPACE \
    --userId 'FycH2Tr9AE1dm92z' \
    --body '{"currencyCode": "pXJYFWdyL4kHYSMr", "price": 0.9830607406759199, "productId": "6KTwimcFIYI7HAuG", "serviceLabels": [56, 75, 53]}' \
    > test.out 2>&1
eval_tap $? 449 'PublicReconcilePlayStationStoreWithMultipleServiceLabels' test.out

#- 450 SyncSteamInventory
samples/cli/sample-apps Platform syncSteamInventory \
    --namespace $AB_NAMESPACE \
    --userId 'jYreoQaWsVLMnlkr' \
    --body '{"appId": "io1YUARdwy5qXqmN", "currencyCode": "MjgWPmvUJgLrSMUl", "language": "ZwVd", "price": 0.40618382573438006, "productId": "9iWQatw36J2JuHPg", "region": "dYGmt4Akhnw4vH1B", "steamId": "euZiXheoFquQpmuf"}' \
    > test.out 2>&1
eval_tap $? 450 'SyncSteamInventory' test.out

#- 451 PublicQueryUserThirdPartySubscription
samples/cli/sample-apps Platform publicQueryUserThirdPartySubscription \
    --namespace $AB_NAMESPACE \
    --platform 'STEAM' \
    --userId 'tNpvz7cG1bRMNdtp' \
    --activeOnly 'true' \
    --groupId 'rwnxKzGXYRrx1sz1' \
    --limit '43' \
    --offset '97' \
    --productId 'dVkDPwgSXf3rZmRI' \
    > test.out 2>&1
eval_tap $? 451 'PublicQueryUserThirdPartySubscription' test.out

#- 452 SyncTwitchDropsEntitlement1
samples/cli/sample-apps Platform syncTwitchDropsEntitlement1 \
    --namespace $AB_NAMESPACE \
    --userId '5ElIVIqmDWV2Kp15' \
    --body '{"gameId": "Wcg5uvPaS4CyKTJt", "language": "VBSD-392", "region": "yPuZSDvmQO4NOdkL"}' \
    > test.out 2>&1
eval_tap $? 452 'SyncTwitchDropsEntitlement1' test.out

#- 453 SyncXboxInventory
samples/cli/sample-apps Platform syncXboxInventory \
    --namespace $AB_NAMESPACE \
    --userId 'WPF8OhJR2WNXne3U' \
    --body '{"currencyCode": "UrDeshd9xbyZuPWT", "price": 0.5625270947943012, "productId": "1viPYV57HwcjgEyp", "xstsToken": "9O2ktiSubiyLnVDF"}' \
    > test.out 2>&1
eval_tap $? 453 'SyncXboxInventory' test.out

#- 454 PublicQueryUserOrders
samples/cli/sample-apps Platform publicQueryUserOrders \
    --namespace $AB_NAMESPACE \
    --userId '6V2az3pzuQsJzS7i' \
    --discounted 'false' \
    --itemId '6KFdIK4bbkdl1ojy' \
    --limit '67' \
    --offset '23' \
    --status 'INIT' \
    > test.out 2>&1
eval_tap $? 454 'PublicQueryUserOrders' test.out

#- 455 PublicCreateUserOrder
samples/cli/sample-apps Platform publicCreateUserOrder \
    --namespace $AB_NAMESPACE \
    --userId 'ggGs7UnC02KPFPhz' \
    --body '{"currencyCode": "mqAWYq6h55FQ7rLU", "discountCodes": ["3GXBw7EAfIC1OPv3", "LmRxR9WfuqDVy3Hg", "wtTbkR5AwaYYxan4"], "discountedPrice": 0, "ext": {"ZE8Hu01zTqovgHFe": {}, "9TnNKRjeKNcndzuh": {}, "HToi7hdhTCmjCRJk": {}}, "itemId": "aAMUZRPLQiJDJnrh", "language": "VDes_mzEl_549", "price": 63, "quantity": 98, "region": "g0e88AMQqaV358P7", "returnUrl": "YmZlaoKIZ5DyDJHF", "sectionId": "vmKpXiWrUYDyYWP1"}' \
    > test.out 2>&1
eval_tap $? 455 'PublicCreateUserOrder' test.out

#- 456 PublicPreviewOrderPrice
samples/cli/sample-apps Platform publicPreviewOrderPrice \
    --namespace $AB_NAMESPACE \
    --userId 'dFcVd3d4iBhLu3zy' \
    --body '{"currencyCode": "ESkM851DOquLpHmu", "discountCodes": ["wfjD8Lnnccly44RV", "GEcPn781K2w6KQcs", "PsYeHwwL7MAZmtqu"], "discountedPrice": 40, "itemId": "d2Yxxz6a421QjqXB", "price": 82, "quantity": 58}' \
    > test.out 2>&1
eval_tap $? 456 'PublicPreviewOrderPrice' test.out

#- 457 PublicGetUserOrder
samples/cli/sample-apps Platform publicGetUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'mSVEzyrAAWHQ7Yde' \
    --userId 'yU54MlwaOO2TVcML' \
    > test.out 2>&1
eval_tap $? 457 'PublicGetUserOrder' test.out

#- 458 PublicCancelUserOrder
samples/cli/sample-apps Platform publicCancelUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'l8GpgVeDxwyqwD8v' \
    --userId 'fECU2sGXTN8vAJTt' \
    > test.out 2>&1
eval_tap $? 458 'PublicCancelUserOrder' test.out

#- 459 PublicGetUserOrderHistories
samples/cli/sample-apps Platform publicGetUserOrderHistories \
    --namespace $AB_NAMESPACE \
    --orderNo 'aA7DM27uinZLNQ3w' \
    --userId 'ZTDcR62cdY1VFtcY' \
    > test.out 2>&1
eval_tap $? 459 'PublicGetUserOrderHistories' test.out

#- 460 PublicDownloadUserOrderReceipt
samples/cli/sample-apps Platform publicDownloadUserOrderReceipt \
    --namespace $AB_NAMESPACE \
    --orderNo 'sbTn2q0swFQWiPA3' \
    --userId '8d7xTfbAwmeNSowS' \
    > test.out 2>&1
eval_tap $? 460 'PublicDownloadUserOrderReceipt' test.out

#- 461 PublicGetPaymentAccounts
samples/cli/sample-apps Platform publicGetPaymentAccounts \
    --namespace $AB_NAMESPACE \
    --userId 'kHTx8kP50oGS78AK' \
    > test.out 2>&1
eval_tap $? 461 'PublicGetPaymentAccounts' test.out

#- 462 PublicDeletePaymentAccount
samples/cli/sample-apps Platform publicDeletePaymentAccount \
    --id 'K9recawU2bmTRx5y' \
    --namespace $AB_NAMESPACE \
    --type 'card' \
    --userId 'qAZFWZ9Y6T7090C3' \
    > test.out 2>&1
eval_tap $? 462 'PublicDeletePaymentAccount' test.out

#- 463 PublicListActiveSections
samples/cli/sample-apps Platform publicListActiveSections \
    --namespace $AB_NAMESPACE \
    --userId 'N9FHguYWOoxIiBBK' \
    --autoCalcEstimatedPrice 'true' \
    --language 'h6XrZyFmAQsOOOSS' \
    --region 'AFWeY7cDPMbp1EIK' \
    --storeId 'PncFGctnVq7Oz1cV' \
    --viewId '0XK96TBptlKpDaRn' \
    > test.out 2>&1
eval_tap $? 463 'PublicListActiveSections' test.out

#- 464 PublicQueryUserSubscriptions
samples/cli/sample-apps Platform publicQueryUserSubscriptions \
    --namespace $AB_NAMESPACE \
    --userId 'EGK34y3lMRvJMFI6' \
    --chargeStatus 'CHARGE_FAILED' \
    --itemId 'FApybtkZJfjNP3SH' \
    --limit '93' \
    --offset '48' \
    --sku 'YPvj5c8fjVC0LZGk' \
    --status 'ACTIVE' \
    --subscribedBy 'USER' \
    > test.out 2>&1
eval_tap $? 464 'PublicQueryUserSubscriptions' test.out

#- 465 PublicSubscribeSubscription
samples/cli/sample-apps Platform publicSubscribeSubscription \
    --namespace $AB_NAMESPACE \
    --userId 'Whe6BzG2pPgPG5qW' \
    --body '{"currencyCode": "K71z6wxyuTd3x5UQ", "itemId": "43uPNbgK7IRqpsOB", "language": "KDO-wtEn_TE", "region": "dntLNgsaDDXorph5", "returnUrl": "SvEMLCN3O1C1djL1", "source": "yTy5YkqhCrsWw8U2"}' \
    > test.out 2>&1
eval_tap $? 465 'PublicSubscribeSubscription' test.out

#- 466 PublicCheckUserSubscriptionSubscribableByItemId
samples/cli/sample-apps Platform publicCheckUserSubscriptionSubscribableByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'hCJSLGgBH78jhPqw' \
    --itemId 'Lw3yObkuBNFDsSP0' \
    > test.out 2>&1
eval_tap $? 466 'PublicCheckUserSubscriptionSubscribableByItemId' test.out

#- 467 PublicGetUserSubscription
samples/cli/sample-apps Platform publicGetUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'FA1JWANswc6ybN8K' \
    --userId '87eKYfl8Wd3I0opm' \
    > test.out 2>&1
eval_tap $? 467 'PublicGetUserSubscription' test.out

#- 468 PublicChangeSubscriptionBillingAccount
samples/cli/sample-apps Platform publicChangeSubscriptionBillingAccount \
    --namespace $AB_NAMESPACE \
    --subscriptionId '9KYx3rDVIN3048H0' \
    --userId 'l2FMaC3itTMVfxX2' \
    > test.out 2>&1
eval_tap $? 468 'PublicChangeSubscriptionBillingAccount' test.out

#- 469 PublicCancelSubscription
samples/cli/sample-apps Platform publicCancelSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'UFR7clJAV4x95XBd' \
    --userId 'X2XdtulzYgsKxTi2' \
    --body '{"immediate": false, "reason": "RUAbeKkPl8FBNU3x"}' \
    > test.out 2>&1
eval_tap $? 469 'PublicCancelSubscription' test.out

#- 470 PublicGetUserSubscriptionBillingHistories
samples/cli/sample-apps Platform publicGetUserSubscriptionBillingHistories \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'OXl8E6u3qlLbVqfo' \
    --userId 'd4pqZbw78OLF3XxI' \
    --excludeFree 'true' \
    --limit '1' \
    --offset '52' \
    > test.out 2>&1
eval_tap $? 470 'PublicGetUserSubscriptionBillingHistories' test.out

#- 471 PublicListViews
samples/cli/sample-apps Platform publicListViews \
    --namespace $AB_NAMESPACE \
    --userId 'LrK1IlHfqfcj4uHa' \
    --language 'nlp1ReEHu5b8fLVr' \
    --storeId 'exss8bZA4dF27GJE' \
    > test.out 2>&1
eval_tap $? 471 'PublicListViews' test.out

#- 472 PublicGetWallet
samples/cli/sample-apps Platform publicGetWallet \
    --currencyCode 'PY6ALgZ036hwAfFl' \
    --namespace $AB_NAMESPACE \
    --userId '82Bn3rbT2Z2bwwgn' \
    > test.out 2>&1
eval_tap $? 472 'PublicGetWallet' test.out

#- 473 PublicListUserWalletTransactions
samples/cli/sample-apps Platform publicListUserWalletTransactions \
    --currencyCode 'wdG13JrgpyWsUr2N' \
    --namespace $AB_NAMESPACE \
    --userId 'bRBRTC65UbDnId31' \
    --limit '13' \
    --offset '93' \
    > test.out 2>&1
eval_tap $? 473 'PublicListUserWalletTransactions' test.out

#- 474 PublicGetMyDLCContent
samples/cli/sample-apps Platform publicGetMyDLCContent \
    --includeAllNamespaces 'true' \
    --type 'PSN' \
    > test.out 2>&1
eval_tap $? 474 'PublicGetMyDLCContent' test.out

#- 475 QueryFulfillments
samples/cli/sample-apps Platform queryFulfillments \
    --namespace $AB_NAMESPACE \
    --endTime '3jfeEkidUb6m0yUa' \
    --limit '50' \
    --offset '24' \
    --startTime '5tfLDePy38GKycZg' \
    --state 'REVOKE_FAILED' \
    --transactionId 'dHMbxXA8nzNEWwWK' \
    --userId 'MmuODnYofdzHQuE8' \
    > test.out 2>&1
eval_tap $? 475 'QueryFulfillments' test.out

#- 476 QueryItemsV2
samples/cli/sample-apps Platform queryItemsV2 \
    --namespace $AB_NAMESPACE \
    --appType 'DEMO' \
    --availableDate 'lL5FMBIRm8RQefXa' \
    --baseAppId 'XVdUUsEcwTn92LVf' \
    --categoryPath 'O7271m43OBwQ8rDw' \
    --features 'ro6BZ8eU9KnSlK13' \
    --includeSubCategoryItem 'false' \
    --itemName 'mLeUS1kkST7F36aD' \
    --itemStatus 'INACTIVE' \
    --itemType '["APP", "EXTENSION", "SUBSCRIPTION"]' \
    --limit '11' \
    --offset '3' \
    --region 'NtVf7kxpUBQsUAHn' \
    --sectionExclusive 'false' \
    --sortBy '["createdAt:asc", "updatedAt", "displayOrder:asc"]' \
    --storeId 'BFhxGiZYxjsyMAa7' \
    --tags 'suftRSA8twAs9sJz' \
    --targetNamespace 'NhpZej7QiqC52TXN' \
    --withTotal 'true' \
    > test.out 2>&1
eval_tap $? 476 'QueryItemsV2' test.out

#- 477 ImportStore1
samples/cli/sample-apps Platform importStore1 \
    --namespace $AB_NAMESPACE \
    --storeId 'dTIB5BX18cfzEpcg' \
    --strictMode 'false' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 477 'ImportStore1' test.out

#- 478 ExportStore1
samples/cli/sample-apps Platform exportStore1 \
    --namespace $AB_NAMESPACE \
    --storeId 'JmdUx0RmyaJaJgVe' \
    --body '{"itemIds": ["JjaiTjwC1OfSax9Q", "KB2AurERnbkqCwry", "J6ApoBvfM1NVyIFB"]}' \
    > test.out 2>&1
eval_tap $? 478 'ExportStore1' test.out

#- 479 FulfillRewardsV2
samples/cli/sample-apps Platform fulfillRewardsV2 \
    --namespace $AB_NAMESPACE \
    --userId 'viig9fHfnfTiy4or' \
    --body '{"entitlementCollectionId": "HNSH42yvCdQMhomX", "entitlementOrigin": "Oculus", "metadata": {"FeBsnVPTT7Yov1xE": {}, "N9LoFispJ4g32RRU": {}, "tkVrZwZ2456vmmCv": {}}, "origin": "Other", "rewards": [{"currency": {"currencyCode": "nwgpGHqIsBCMwDNj", "namespace": "638DtTK78WPbRf8L"}, "item": {"itemId": "9uA2GJWNG66sDJA7", "itemName": "ZeGwdAM0YXK2rBhP", "itemSku": "5EC103eAluuoME0a", "itemType": "cuCQ3LRb3lD2MIVw"}, "quantity": 36, "type": "ITEM"}, {"currency": {"currencyCode": "OpxgVgn6jcV3LHod", "namespace": "GKAmpTeSEulGjEUw"}, "item": {"itemId": "EHA536Uc95DYEnKs", "itemName": "IKtJwuHJRzrOlKZh", "itemSku": "olHd8EkJaUM7KEL1", "itemType": "57BnUmsChJgXlQ8V"}, "quantity": 68, "type": "ITEM"}, {"currency": {"currencyCode": "NBlF00ZyQtDMA6vI", "namespace": "6nlJJq2bqi6Jz6dL"}, "item": {"itemId": "8GNOBZOUTOAgqpQs", "itemName": "sMvYGTo50gCznxBY", "itemSku": "LKAQwrbMR3TwVfm7", "itemType": "EhqDxmiz7tKyuG7x"}, "quantity": 41, "type": "CURRENCY"}], "source": "PURCHASE", "transactionId": "CuPYHfcWf5kcuQck"}' \
    > test.out 2>&1
eval_tap $? 479 'FulfillRewardsV2' test.out

#- 480 FulfillItems
eval_tap 0 480 'FulfillItems # SKIP deprecated' test.out

#- 481 RetryFulfillItems
eval_tap 0 481 'RetryFulfillItems # SKIP deprecated' test.out

#- 482 RevokeItems
eval_tap 0 482 'RevokeItems # SKIP deprecated' test.out

#- 483 V2PublicFulfillAppleIAPItem
samples/cli/sample-apps Platform v2PublicFulfillAppleIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'WeQQINS8JoFCt5CW' \
    --body '{"transactionId": "Ywv8NDwNfbHvcR8i"}' \
    > test.out 2>&1
eval_tap $? 483 'V2PublicFulfillAppleIAPItem' test.out

#- 484 FulfillItemsV3
samples/cli/sample-apps Platform fulfillItemsV3 \
    --namespace $AB_NAMESPACE \
    --transactionId 'CsjVuetZcN7kK2Ea' \
    --userId 'fuelNvf9L1d6wOhp' \
    --body '{"items": [{"duration": 14, "endDate": "1973-04-18T00:00:00Z", "entitlementCollectionId": "sdc23VfIAU6E5aGg", "entitlementOrigin": "Playstation", "itemId": "mCWD1TPFvNnYriLF", "itemSku": "1dO7fVmd2nmdWixI", "language": "M2oM09tm9hLZ0PZV", "metadata": {"kw1FtOekcklHHynG": {}, "sU3EgJIZT4S44cCJ": {}, "UOE3n6u3lRo131ZR": {}}, "orderNo": "ShMOH1uXlba0nX66", "origin": "Twitch", "quantity": 85, "region": "v99nKRjL1KSjPWb9", "source": "IAP", "startDate": "1995-06-04T00:00:00Z", "storeId": "hUCaqkBBprYL1Mm1"}, {"duration": 69, "endDate": "1986-01-06T00:00:00Z", "entitlementCollectionId": "XwCqQGntLYcESwrT", "entitlementOrigin": "Other", "itemId": "ut6kjOzHQtCLsCHB", "itemSku": "0j0NfrVJGmWiWHRa", "language": "ajhsiLiLHCTBNBAv", "metadata": {"nc9FzfshGNpCZgJF": {}, "irGeJwZwidvxmEFn": {}, "Sfxr5rFq5ctPXiDD": {}}, "orderNo": "wte5ZJwIE97MOUuT", "origin": "Epic", "quantity": 52, "region": "mMUyyPk5JU5NK74G", "source": "REFERRAL_BONUS", "startDate": "1991-08-21T00:00:00Z", "storeId": "9oJDf9RscfUzzdYM"}, {"duration": 46, "endDate": "1982-02-14T00:00:00Z", "entitlementCollectionId": "sNLp5QmrpOqYplKx", "entitlementOrigin": "IOS", "itemId": "ZFiBIu6x0y1nvFts", "itemSku": "j3ld8RBTt45vrqUW", "language": "cToeVGzobR7jrbS5", "metadata": {"ozEew7zWdYHFQQS3": {}, "LFzIyvgYXx8Sj1Fq": {}, "VU0aDeEzwAVgBZzJ": {}}, "orderNo": "rCGg3vnvv1cGzfAx", "origin": "Epic", "quantity": 23, "region": "0lNF1dGqyefLkwbw", "source": "EXPIRATION", "startDate": "1983-03-16T00:00:00Z", "storeId": "1nUhQj8enUphxBBd"}]}' \
    > test.out 2>&1
eval_tap $? 484 'FulfillItemsV3' test.out

#- 485 RetryFulfillItemsV3
samples/cli/sample-apps Platform retryFulfillItemsV3 \
    --namespace $AB_NAMESPACE \
    --transactionId 'v73ewwzkYzaJdL4W' \
    --userId 'Vzj9E1kMBRU7joIS' \
    > test.out 2>&1
eval_tap $? 485 'RetryFulfillItemsV3' test.out

#- 486 RevokeItemsV3
samples/cli/sample-apps Platform revokeItemsV3 \
    --namespace $AB_NAMESPACE \
    --transactionId 'LxvvR1W0EPVGFUVQ' \
    --userId 'xGb8zKBO435dV56P' \
    > test.out 2>&1
eval_tap $? 486 'RevokeItemsV3' test.out


rm -f "tmp.dat"

exit $EXIT_CODE