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
echo "1..449"

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
    --id 'ogRZiffXybOMkijx' \
    > test.out 2>&1
eval_tap $? 3 'GetFulfillmentScript' test.out

#- 4 CreateFulfillmentScript
samples/cli/sample-apps Platform createFulfillmentScript \
    --id 'uZA4ZK3MsT6Iv8Db' \
    --body '{"grantDays": "gMzbmgd8dbT2Az6i"}' \
    > test.out 2>&1
eval_tap $? 4 'CreateFulfillmentScript' test.out

#- 5 DeleteFulfillmentScript
samples/cli/sample-apps Platform deleteFulfillmentScript \
    --id 'WkVQDdHxMkb2ztSw' \
    > test.out 2>&1
eval_tap $? 5 'DeleteFulfillmentScript' test.out

#- 6 UpdateFulfillmentScript
samples/cli/sample-apps Platform updateFulfillmentScript \
    --id 'sLEMr0eHgyeKmOyQ' \
    --body '{"grantDays": "YuHzFa2MT98dBPLN"}' \
    > test.out 2>&1
eval_tap $? 6 'UpdateFulfillmentScript' test.out

#- 7 ListItemTypeConfigs
samples/cli/sample-apps Platform listItemTypeConfigs \
    > test.out 2>&1
eval_tap $? 7 'ListItemTypeConfigs' test.out

#- 8 CreateItemTypeConfig
samples/cli/sample-apps Platform createItemTypeConfig \
    --body '{"clazz": "DLtLvAek4tYwN2sE", "dryRun": false, "fulfillmentUrl": "ek3YbByEFYywBK6q", "itemType": "INGAMEITEM", "purchaseConditionUrl": "yXNi4e1rnufp60fp"}' \
    > test.out 2>&1
eval_tap $? 8 'CreateItemTypeConfig' test.out

#- 9 SearchItemTypeConfig
samples/cli/sample-apps Platform searchItemTypeConfig \
    --clazz 'ENjsrh8F9BDkV2Md' \
    --itemType 'OPTIONBOX' \
    > test.out 2>&1
eval_tap $? 9 'SearchItemTypeConfig' test.out

#- 10 GetItemTypeConfig
samples/cli/sample-apps Platform getItemTypeConfig \
    --id 'v5wiAvelsl11K6TN' \
    > test.out 2>&1
eval_tap $? 10 'GetItemTypeConfig' test.out

#- 11 UpdateItemTypeConfig
samples/cli/sample-apps Platform updateItemTypeConfig \
    --id '9HueN2JNx13ZS6Jd' \
    --body '{"clazz": "nvKbGbJtAQ6egEUC", "dryRun": true, "fulfillmentUrl": "Jb5pXkZzNIDbflbp", "purchaseConditionUrl": "vu0BodDKkMsXqLZc"}' \
    > test.out 2>&1
eval_tap $? 11 'UpdateItemTypeConfig' test.out

#- 12 DeleteItemTypeConfig
samples/cli/sample-apps Platform deleteItemTypeConfig \
    --id 'URzLe8AiW7i3rsNA' \
    > test.out 2>&1
eval_tap $? 12 'DeleteItemTypeConfig' test.out

#- 13 QueryCampaigns
samples/cli/sample-apps Platform queryCampaigns \
    --namespace $AB_NAMESPACE \
    --limit '63' \
    --name 'Xp3DFeo5ItgtLXIb' \
    --offset '80' \
    --tag 'Ek7NjICvVAf3vKmi' \
    > test.out 2>&1
eval_tap $? 13 'QueryCampaigns' test.out

#- 14 CreateCampaign
samples/cli/sample-apps Platform createCampaign \
    --namespace $AB_NAMESPACE \
    --body '{"description": "MQOQHyfbeHlEw6FF", "discountConfig": {"categories": [{"categoryPath": "VHzo4uweJlSs4Cyc", "includeSubCategories": false}, {"categoryPath": "EAhBgFtR9aOJrFMB", "includeSubCategories": false}, {"categoryPath": "JRj4gHKM72M3j7Xu", "includeSubCategories": true}], "currencyCode": "dXXlsUBb7NYhUHpd", "currencyNamespace": "k26yJq3brp85no79", "discountAmount": 9, "discountPercentage": 66, "discountType": "PERCENTAGE", "items": [{"itemId": "W0fxUf1OXuiUP27R", "itemName": "I2dvIQQdksB3IQ0J"}, {"itemId": "sUoPwMY8xGW9WHE5", "itemName": "XCCweDTWoIOLBiEX"}, {"itemId": "6zoBVg5r7l0ti0Rz", "itemName": "TqhNs9zMgycIKE3M"}], "restrictType": "NONE", "stackable": false}, "items": [{"extraSubscriptionDays": 25, "itemId": "eDZmZXZpW6AjZ8tE", "itemName": "IvmmKoze6qruSHye", "quantity": 44}, {"extraSubscriptionDays": 25, "itemId": "APPJlmzDguuMPZXC", "itemName": "qdfb74vjiW8gdoft", "quantity": 12}, {"extraSubscriptionDays": 56, "itemId": "Zyl4v03pTQcNZetb", "itemName": "xK3O9oVK13YYbjos", "quantity": 8}], "maxRedeemCountPerCampaignPerUser": 12, "maxRedeemCountPerCode": 31, "maxRedeemCountPerCodePerUser": 52, "maxSaleCount": 91, "name": "xdWX2EDcaWXQwQeJ", "redeemEnd": "1988-12-31T00:00:00Z", "redeemStart": "1988-09-12T00:00:00Z", "redeemType": "ITEM", "status": "INACTIVE", "tags": ["TxSwZjBkS6W2cGsx", "8FMuyTzIUvtqrKro", "GGg00Nnmc2QSXhV9"], "type": "REDEMPTION"}' \
    > test.out 2>&1
eval_tap $? 14 'CreateCampaign' test.out

#- 15 GetCampaign
samples/cli/sample-apps Platform getCampaign \
    --campaignId 'LXfnghEQSyBNLFfj' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 15 'GetCampaign' test.out

#- 16 UpdateCampaign
samples/cli/sample-apps Platform updateCampaign \
    --campaignId '9g5gMWxtTmDzBbPL' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "XhxBfzOWKpu8XU4I", "discountConfig": {"categories": [{"categoryPath": "RHHiX8i5W173bkFm", "includeSubCategories": true}, {"categoryPath": "uDvV3IMFARkMGpYD", "includeSubCategories": true}, {"categoryPath": "bJ8hM82oJSRtlyBk", "includeSubCategories": false}], "currencyCode": "Tgr9Syzv1UXVwCwO", "currencyNamespace": "8WvDfReYpPoqiMkM", "discountAmount": 95, "discountPercentage": 47, "discountType": "PERCENTAGE", "items": [{"itemId": "iBchB6KFQvREq44K", "itemName": "6ssy0NE7BOSVmiyQ"}, {"itemId": "ndcjHpMhk66ZkDAq", "itemName": "5TvBvNDxPH4gd2le"}, {"itemId": "3n17WMi31NaWA20X", "itemName": "On3zO8IfQZm2TlLh"}], "restrictType": "ITEMS_AND_CATEGORIES", "stackable": true}, "items": [{"extraSubscriptionDays": 94, "itemId": "YqUHD5wM0e5nQGfn", "itemName": "33fFYXyxLqdcpfkQ", "quantity": 25}, {"extraSubscriptionDays": 22, "itemId": "rElsrpnJAFSxuFt0", "itemName": "R13fNT6ZE3oHxoUK", "quantity": 8}, {"extraSubscriptionDays": 55, "itemId": "D2Js6xh6f74vs72J", "itemName": "1y1CskmVxtl9UTxM", "quantity": 23}], "maxRedeemCountPerCampaignPerUser": 75, "maxRedeemCountPerCode": 13, "maxRedeemCountPerCodePerUser": 16, "maxSaleCount": 86, "name": "xn1pohnk1SKtfl97", "redeemEnd": "1979-12-31T00:00:00Z", "redeemStart": "1995-08-18T00:00:00Z", "redeemType": "DISCOUNT", "status": "ACTIVE", "tags": ["aCuoPLo7EKkQZQgh", "fqoEBsSUOjfxUEON", "9pFlwBM8e2wbO3yB"]}' \
    > test.out 2>&1
eval_tap $? 16 'UpdateCampaign' test.out

#- 17 GetCampaignDynamic
samples/cli/sample-apps Platform getCampaignDynamic \
    --campaignId 'EPJQJCbjrd8R49eB' \
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
    --body '{"appConfig": {"appName": "O66zp8hHbZzh7Ogt"}, "customConfig": {"connectionType": "TLS", "grpcServerAddress": "WYF12dqMNc0cCq3U"}, "extendType": "CUSTOM"}' \
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
    --force 'false' \
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
    --body '{"appConfig": {"appName": "Jj2n1vMy7ODGwBup"}, "customConfig": {"connectionType": "INSECURE", "grpcServerAddress": "KQC46xRFmpoxZpNj"}, "extendType": "CUSTOM"}' \
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
    --storeId 'aLpjgfUnNbXylWjm' \
    > test.out 2>&1
eval_tap $? 29 'GetRootCategories' test.out

#- 30 CreateCategory
samples/cli/sample-apps Platform createCategory \
    --namespace $AB_NAMESPACE \
    --storeId '8qDJfiDTFSKH5NWC' \
    --body '{"categoryPath": "T6nt5ocz43u7H3sr", "localizationDisplayNames": {"l6sACeFN3864azwZ": "7w50Oq3ivhQCKPpF", "wgMwauocKSEDnZNg": "cYVUMV9ORyv4AGBG", "c6APoTRNsuv7LAbb": "bulKj00xkB5Vu3xE"}}' \
    > test.out 2>&1
eval_tap $? 30 'CreateCategory' test.out

#- 31 ListCategoriesBasic
samples/cli/sample-apps Platform listCategoriesBasic \
    --namespace $AB_NAMESPACE \
    --storeId 'QscLBLFWPllmRuGP' \
    > test.out 2>&1
eval_tap $? 31 'ListCategoriesBasic' test.out

#- 32 GetCategory
samples/cli/sample-apps Platform getCategory \
    --categoryPath 'qhfRpx0I8czE73nS' \
    --namespace $AB_NAMESPACE \
    --storeId 'q7dOSmbzEOooce9o' \
    > test.out 2>&1
eval_tap $? 32 'GetCategory' test.out

#- 33 UpdateCategory
samples/cli/sample-apps Platform updateCategory \
    --categoryPath '3JOwZN9HHjWtjIBY' \
    --namespace $AB_NAMESPACE \
    --storeId 'jxqsjFQ0WgCsL8D9' \
    --body '{"localizationDisplayNames": {"HXVsO00c3lBHD1oi": "2DfJ7GEr3TOzNVNd", "NSZP9v5WfwmJhubt": "XKszJiQqM9pZAIou", "jX75k8EvVm74rWZ0": "BZ1FS7HX3JorATdV"}}' \
    > test.out 2>&1
eval_tap $? 33 'UpdateCategory' test.out

#- 34 DeleteCategory
samples/cli/sample-apps Platform deleteCategory \
    --categoryPath 'C9fQKi7ugRkrpd2d' \
    --namespace $AB_NAMESPACE \
    --storeId 'IggP0XPlNsnmL6Ks' \
    > test.out 2>&1
eval_tap $? 34 'DeleteCategory' test.out

#- 35 GetChildCategories
samples/cli/sample-apps Platform getChildCategories \
    --categoryPath '0JBAASr5hW4rUNwT' \
    --namespace $AB_NAMESPACE \
    --storeId 'esoSpQClPgoZR303' \
    > test.out 2>&1
eval_tap $? 35 'GetChildCategories' test.out

#- 36 GetDescendantCategories
samples/cli/sample-apps Platform getDescendantCategories \
    --categoryPath 'Jy69fKlGHoNcvg3b' \
    --namespace $AB_NAMESPACE \
    --storeId 'jkC9YpyiQbyvQtdJ' \
    > test.out 2>&1
eval_tap $? 36 'GetDescendantCategories' test.out

#- 37 QueryCodes
samples/cli/sample-apps Platform queryCodes \
    --campaignId 'abpK8pkiaERMuDAM' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --batchNo '7' \
    --code 'giPm9AH2hLlwse6k' \
    --limit '60' \
    --offset '80' \
    > test.out 2>&1
eval_tap $? 37 'QueryCodes' test.out

#- 38 CreateCodes
samples/cli/sample-apps Platform createCodes \
    --campaignId 'Z9o73ytfcGSapJfK' \
    --namespace $AB_NAMESPACE \
    --body '{"codeValue": "EinszUnJLMwvqDi1", "quantity": 49}' \
    > test.out 2>&1
eval_tap $? 38 'CreateCodes' test.out

#- 39 Download
samples/cli/sample-apps Platform download \
    --campaignId 'DP4sEqo22jfdmASV' \
    --namespace $AB_NAMESPACE \
    --batchNo '32' \
    > test.out 2>&1
eval_tap $? 39 'Download' test.out

#- 40 BulkDisableCodes
samples/cli/sample-apps Platform bulkDisableCodes \
    --campaignId 'MZe22Vr2SYV1wGQo' \
    --namespace $AB_NAMESPACE \
    --batchNo '45' \
    > test.out 2>&1
eval_tap $? 40 'BulkDisableCodes' test.out

#- 41 BulkEnableCodes
samples/cli/sample-apps Platform bulkEnableCodes \
    --campaignId 'USEQbUN4tUUT3OY6' \
    --namespace $AB_NAMESPACE \
    --batchNo '52' \
    > test.out 2>&1
eval_tap $? 41 'BulkEnableCodes' test.out

#- 42 QueryRedeemHistory
samples/cli/sample-apps Platform queryRedeemHistory \
    --campaignId '7G77XqFkedu4uCDW' \
    --namespace $AB_NAMESPACE \
    --code 'rhQh7tpBRul0s5XP' \
    --limit '0' \
    --offset '56' \
    --userId 'BodR1aL1yLrw3S5O' \
    > test.out 2>&1
eval_tap $? 42 'QueryRedeemHistory' test.out

#- 43 GetCode
samples/cli/sample-apps Platform getCode \
    --code 'X4DPOpnNsjT1Duwu' \
    --namespace $AB_NAMESPACE \
    --redeemable 'true' \
    > test.out 2>&1
eval_tap $? 43 'GetCode' test.out

#- 44 DisableCode
samples/cli/sample-apps Platform disableCode \
    --code 'I1C8ZoXzuTM0BmDA' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 44 'DisableCode' test.out

#- 45 EnableCode
samples/cli/sample-apps Platform enableCode \
    --code 'gXgrlFkH7a4fjejY' \
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
    --body '{"currencyCode": "CDDAcJHsIEQwa4K0", "currencySymbol": "5dSr9N1lNvYSyz2M", "currencyType": "REAL", "decimals": 55, "localizationDescriptions": {"yCVQWRXiFuwzetiD": "CFsfzVK4OenEr8RX", "cWW5B5MrmzqJps5n": "jzRYUE89AmVf86Ap", "miJS5KZWtOFJ767b": "TkeQnsZD6iv20gMS"}}' \
    > test.out 2>&1
eval_tap $? 50 'CreateCurrency' test.out

#- 51 UpdateCurrency
samples/cli/sample-apps Platform updateCurrency \
    --currencyCode 'xTG2tFQRmn8Ib3x6' \
    --namespace $AB_NAMESPACE \
    --body '{"localizationDescriptions": {"f7D6nABL6b2KROZu": "aFWyamP6i3RnRJMy", "GRVzfgf7SWrZYj7f": "iLMkAMJyoZmvjslA", "GYR70RiWSU7miPY0": "OiJgxkIuF4B8MPrC"}}' \
    > test.out 2>&1
eval_tap $? 51 'UpdateCurrency' test.out

#- 52 DeleteCurrency
samples/cli/sample-apps Platform deleteCurrency \
    --currencyCode 'EG7ZXVGX0y5SXax6' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 52 'DeleteCurrency' test.out

#- 53 GetCurrencyConfig
samples/cli/sample-apps Platform getCurrencyConfig \
    --currencyCode '5WXb1T1lpSneBAkc' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 53 'GetCurrencyConfig' test.out

#- 54 GetCurrencySummary
samples/cli/sample-apps Platform getCurrencySummary \
    --currencyCode 'B1u7YDVxMsIxxflg' \
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
    --body '{"data": [{"id": "inwbjAvAVlpBmsGV", "rewards": [{"currency": {"currencyCode": "xW7W8BGyx36y5T1E", "namespace": "D907Jy6FwGDpLCa7"}, "item": {"itemId": "0fVevYz8EjEXrAxj", "itemSku": "SaHITiHdtQu1GqMS", "itemType": "B75gz78reP2lCL0V"}, "quantity": 13, "type": "ITEM"}, {"currency": {"currencyCode": "MHip88y9lP8bf8lR", "namespace": "M2jo6ROh1FEoHmAy"}, "item": {"itemId": "QjoAGO6Xbh1WJ2S0", "itemSku": "tB0gWmDFxr3NqtOe", "itemType": "I35tjHLlsSkaPnne"}, "quantity": 7, "type": "ITEM"}, {"currency": {"currencyCode": "B9khOsV935eWS7w5", "namespace": "NskC1FZ9UowhgyGO"}, "item": {"itemId": "Le3MfIgJJWGDCNvv", "itemSku": "KGk2409b9VrL1dnh", "itemType": "FeKvKVTaf19y9G23"}, "quantity": 73, "type": "ITEM"}]}, {"id": "00FrdjZQMdDWx71W", "rewards": [{"currency": {"currencyCode": "HUkIC12GI7BBhQdY", "namespace": "aUBgUrLxScf24oU0"}, "item": {"itemId": "WqJ9L0jMwLJRDcvr", "itemSku": "adLXKboKK596ViU6", "itemType": "1F7T7X7nUG5UHgsN"}, "quantity": 97, "type": "ITEM"}, {"currency": {"currencyCode": "6yVbFVz0PfAO3eLs", "namespace": "7mj2EJ1zzWPNwNMp"}, "item": {"itemId": "W87Lh0niFMLJnwJY", "itemSku": "nGCGGpYWzgO1nIn3", "itemType": "VlvpAiFuKvMHjnrv"}, "quantity": 25, "type": "CURRENCY"}, {"currency": {"currencyCode": "dYZFg7lQurgtDW0t", "namespace": "grzJm0Yh2hiCONEc"}, "item": {"itemId": "tgN31UDrgyRBgHri", "itemSku": "cpz6m8cTzEG7LipJ", "itemType": "lCsPUlPtifrmXA3i"}, "quantity": 84, "type": "CURRENCY"}]}, {"id": "IPEXB08RcdMyeVRi", "rewards": [{"currency": {"currencyCode": "E2QmniT3AIxBOTID", "namespace": "ecq4hut1mIyLjlcW"}, "item": {"itemId": "MNMB6CGQdjAoeBbh", "itemSku": "VuD5UPULBHhIQ5Cu", "itemType": "cLV49FhENZuj6S7F"}, "quantity": 64, "type": "ITEM"}, {"currency": {"currencyCode": "WA7khJLA83xGlV7K", "namespace": "6YfN4g8XQeUJQtT7"}, "item": {"itemId": "LtiCAbKDtoegBlyN", "itemSku": "zTBHmoM9TBbIOerR", "itemType": "qIjF2PgKnXN20hx6"}, "quantity": 75, "type": "CURRENCY"}, {"currency": {"currencyCode": "OFYr14WdY1maqQYM", "namespace": "fn6z67Qn9srLEqgK"}, "item": {"itemId": "eDnJDVk4Ov5xvnuM", "itemSku": "j9QZD89or7uplQtk", "itemType": "vompMPJRFEJoDmIf"}, "quantity": 69, "type": "ITEM"}]}]}' \
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
    --body '{"data": [{"platform": "XBOX", "platformDlcIdMap": {"xotAfOdrLyATeJ1r": "2ChdXDL9L6r4Fb7C", "FiMX9oUB8QG79bUE": "C1CvVvbraBmNpW4w", "XA2eXMyv2aqHIhMS": "Wi6XqCD4xuxx3CPO"}}, {"platform": "STEAM", "platformDlcIdMap": {"Yn7cq5VLHP16cst9": "J7V0FsnIenlvUFc1", "ocWKUJyr10qb7GCd": "nGUQRQSFK1I6mots", "FLd6gpTfaA0PT2ZB": "9i8XnadFZLXEo7xC"}}, {"platform": "PSN", "platformDlcIdMap": {"hfY7O710e0EE2Fz2": "Qud38gbu0rpL8imr", "yIvqfUossCAugQBT": "rpMRBlHRBC8EEcQk", "I7vyanDGaPOvHsmJ": "Ugb1dh5SgPnRaOK5"}}]}' \
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
    --activeOnly 'true' \
    --appType 'GAME' \
    --entitlementClazz 'CODE' \
    --entitlementName 'KE4860mwADub33Xd' \
    --itemId '["ycn93cjd8MK3bE6E", "45oLJZZIIa2EI5Up", "PqqbaC1vwuJvKWim"]' \
    --limit '96' \
    --offset '78' \
    --origin 'Playstation' \
    --userId 'e0InipDFWzQ4iFP1' \
    > test.out 2>&1
eval_tap $? 61 'QueryEntitlements' test.out

#- 62 QueryEntitlements1
samples/cli/sample-apps Platform queryEntitlements1 \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --itemIds '["UKul1SXFINManWi5", "Yvg1pHHVD0SNgpKT", "NgAy3coIH5bKr8w3"]' \
    --limit '86' \
    --offset '35' \
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
    --body '{"entitlementGrantList": [{"collectionId": "BMbZmoTZoTYb4ClM", "endDate": "1975-01-20T00:00:00Z", "grantedCode": "6qU1eAfB8JxlnQee", "itemId": "ciMGiVpd8mp96LQi", "itemNamespace": "5Fc6cSBv3aMdjWhy", "language": "QshY_wJ", "origin": "System", "quantity": 46, "region": "hpD2QLx3nxQOlaoR", "source": "PROMOTION", "startDate": "1983-12-02T00:00:00Z", "storeId": "kp2hLgZKDUggJZg2"}, {"collectionId": "qXBiJoNWydYDibso", "endDate": "1979-02-02T00:00:00Z", "grantedCode": "B7FanTvigfyssTj8", "itemId": "N5om22fmq87JX1hf", "itemNamespace": "n8c9NcZSS63KwH0a", "language": "ho_aJUt_jy", "origin": "GooglePlay", "quantity": 89, "region": "3G4maXmREUftzXrA", "source": "PURCHASE", "startDate": "1983-06-17T00:00:00Z", "storeId": "HWQwGJIXDjqa4kqY"}, {"collectionId": "W49sTKlqPOASsQrW", "endDate": "1991-05-07T00:00:00Z", "grantedCode": "Zttly1JS0fS2BQkY", "itemId": "kpIWNoCxmIrhfQA7", "itemNamespace": "sqbrx3aaXA4Wg69n", "language": "Yg_wPCW-232", "origin": "Oculus", "quantity": 93, "region": "hRd7tnbTPT0b3exx", "source": "PURCHASE", "startDate": "1998-06-01T00:00:00Z", "storeId": "KWGxVAXytEBAsXeO"}], "userIds": ["nm8Vy8PkJ4OiJ91O", "sksLsBCfBExENqM4", "DnFrgFUmrAJZ40ev"]}' \
    > test.out 2>&1
eval_tap $? 65 'GrantEntitlements' test.out

#- 66 RevokeEntitlements
samples/cli/sample-apps Platform revokeEntitlements \
    --namespace $AB_NAMESPACE \
    --body '["VPOc2NOQjsYCl6kx", "6xgQfApK3lbwnota", "jhEQixCQhNjxvxcQ"]' \
    > test.out 2>&1
eval_tap $? 66 'RevokeEntitlements' test.out

#- 67 GetEntitlement
samples/cli/sample-apps Platform getEntitlement \
    --entitlementId 'nJHRP1HF2HV8ZwCS' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 67 'GetEntitlement' test.out

#- 68 QueryFulfillmentHistories
samples/cli/sample-apps Platform queryFulfillmentHistories \
    --namespace $AB_NAMESPACE \
    --limit '45' \
    --offset '52' \
    --status 'SUCCESS' \
    --userId 'PxiAbNRRiUohzepO' \
    > test.out 2>&1
eval_tap $? 68 'QueryFulfillmentHistories' test.out

#- 69 QueryIAPClawbackHistory
samples/cli/sample-apps Platform queryIAPClawbackHistory \
    --namespace $AB_NAMESPACE \
    --endTime 'NVdRKNYwGmWmbl8j' \
    --eventType 'CHARGEBACK_REVERSED' \
    --externalOrderId 'fR49BaCUgktysL1r' \
    --limit '32' \
    --offset '62' \
    --startTime 'KeAmlB7L1vnGplEA' \
    --status 'IGNORED' \
    --userId 'OV7ZwFff0KefBstA' \
    > test.out 2>&1
eval_tap $? 69 'QueryIAPClawbackHistory' test.out

#- 70 MockPlayStationStreamEvent
samples/cli/sample-apps Platform mockPlayStationStreamEvent \
    --namespace $AB_NAMESPACE \
    --body '{"body": {"account": "lJwVMZmKYHFYvFIF", "additionalData": {"entitlement": [{"clientTransaction": [{"amountConsumed": 98, "clientTransactionId": "wTyxxJQRjoeQzYw5"}, {"amountConsumed": 90, "clientTransactionId": "8Dse9ZhRXV83zYtq"}, {"amountConsumed": 12, "clientTransactionId": "OmLdaPWic8R17t74"}], "entitlementId": "AGbbMLSs7A2yau1j", "usageCount": 27}, {"clientTransaction": [{"amountConsumed": 59, "clientTransactionId": "mfTbK82iOCd24Lmg"}, {"amountConsumed": 32, "clientTransactionId": "AcVcvZIva0ZUtlqt"}, {"amountConsumed": 41, "clientTransactionId": "oPYpQS3esiRDORPc"}], "entitlementId": "UPLm9SM7UwMLsJ94", "usageCount": 82}, {"clientTransaction": [{"amountConsumed": 90, "clientTransactionId": "DlBKHHrC9BipvFBF"}, {"amountConsumed": 10, "clientTransactionId": "0cKxOrLwDFlkMRM3"}, {"amountConsumed": 29, "clientTransactionId": "7ucENWzY9Ma0cp8c"}], "entitlementId": "d0kMIIKCBylk2ROX", "usageCount": 28}], "purpose": "PRzi49oxbu7orKjg"}, "originalTitleName": "UQPg5GAMMGyrDTYK", "paymentProductSKU": "9UJmqeceAppImhd8", "purchaseDate": "PrQzEhXfudeJBsnY", "sourceOrderItemId": "chKTWURfb5PcTHdS", "titleName": "gjZHd4Kbmo4DRCwz"}, "eventDomain": "ZYTI6Y1lxOEZR1Kl", "eventSource": "U4wrdflXUF6rpv3m", "eventType": "tx2a51IbyQprmgTV", "eventVersion": 88, "id": "Az9zEdgLzmTBGCex", "timestamp": "6ORx0wqcALVMkt8W"}' \
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
    --body '{"bundleId": "kQuhXJvVTYOjmpED", "password": "Cl8uQxmyy5lqUnwZ"}' \
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
    --body '{"sandboxId": "noij2O90KlmrUPzT"}' \
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
    --body '{"applicationName": "eflDjtyblgM67wb6", "serviceAccountId": "W6p10K48oyK5w9w9"}' \
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
    --body '{"data": [{"itemIdentity": "QdBwJiykjazVnGEP", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"ajeXnilWaw8YArO3": "RKWbusZYHVkvMDYY", "SoCFCMHd1T7fU4dm": "acphzJ4X0zYQGdrW", "rrl1Rx87SoBxy6fp": "2PJ5Qan8RbNCL9hQ"}}, {"itemIdentity": "VqlOx8vgO9ILl2Nl", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"CkOjaYqTRQ5VxUac": "1lTZyMeQx5mkvUXX", "icLvmDLAGaxUqx69": "qbMrYfK5H76v9TUM", "RCHZ34hCzXKSOyde": "7nCTctbPCH2wN3p1"}}, {"itemIdentity": "R7Df6IPIFWCLHAcE", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"OrgpnfXDzaUqMKZ1": "ykViqaNQu6V9bN4m", "oB83Qvhp7sYTDHQr": "ui5ndIH0SqJlmth3", "J2Be1GlES89Yj6QO": "PiCnatcJuki0eIBQ"}}]}' \
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
    --body '{"appId": "Mc6uGZQ6lyUsDFNp", "appSecret": "S1Ffx2H5pBNlhCfY"}' \
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
    --body '{"backOfficeServerClientId": "Nx71wTu57AoqvHl9", "backOfficeServerClientSecret": "MhjLuDMajwDDeKG9", "enableStreamJob": false, "environment": "bwiZFjjqaIwWk07V", "streamName": "5fg6HsMNkA98thL0", "streamPartnerName": "aysr8cjalxwt2ZAi"}' \
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
    --body '{"backOfficeServerClientId": "sR2z6IeKagfbcoQ5", "backOfficeServerClientSecret": "vhuvdIXLlpe8L2K0", "enableStreamJob": true, "environment": "rvg9sC33U6MBKrvG", "streamName": "KNjUxT5BvN0MX6al", "streamPartnerName": "tUpAjCKwdlPQTm4n"}' \
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
    --body '{"appId": "fpgjEfFoIyw4vKS9", "publisherAuthenticationKey": "dgTKTg4i3DcALOr2"}' \
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
    --body '{"clientId": "1TuswwxXnpDh85TM", "clientSecret": "JNHp7Pm4TUHpZ4Zw", "organizationId": "Hsj6hp956CCWLPmH"}' \
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
    --body '{"relyingPartyCert": "H8qu6VLMP8dTFDPi"}' \
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
    --password 'uWrboedlHzsM1e4t' \
    > test.out 2>&1
eval_tap $? 101 'UpdateXblBPCertFile' test.out

#- 102 DownloadInvoiceDetails
samples/cli/sample-apps Platform downloadInvoiceDetails \
    --namespace $AB_NAMESPACE \
    --feature '8XWfuapKoDx4WJE9' \
    --itemId '8MgEZBaGjRQJWfEC' \
    --itemType 'SUBSCRIPTION' \
    --endTime '6VBsZjma5jgnC4NK' \
    --startTime 'W7QuEnqjC4bSfe1z' \
    > test.out 2>&1
eval_tap $? 102 'DownloadInvoiceDetails' test.out

#- 103 GenerateInvoiceSummary
samples/cli/sample-apps Platform generateInvoiceSummary \
    --namespace $AB_NAMESPACE \
    --feature 'JZ7Bi3Qy1maU8t2s' \
    --itemId 'UuPnWAKk6IyGl0sq' \
    --itemType 'OPTIONBOX' \
    --endTime 'ardXPmqXM4UJJPX0' \
    --startTime 'bbNolr3cM5RV8g3I' \
    > test.out 2>&1
eval_tap $? 103 'GenerateInvoiceSummary' test.out

#- 104 SyncInGameItem
samples/cli/sample-apps Platform syncInGameItem \
    --namespace $AB_NAMESPACE \
    --storeId 'GZXUpfQdvFg4fpzU' \
    --body '{"categoryPath": "8G5aFSbRaO0yk4u1", "targetItemId": "hQycx3NxSh3zKT5I", "targetNamespace": "LjHp8ulvKVVeLMcU"}' \
    > test.out 2>&1
eval_tap $? 104 'SyncInGameItem' test.out

#- 105 CreateItem
samples/cli/sample-apps Platform createItem \
    --namespace $AB_NAMESPACE \
    --storeId '03epDruSEsO9mHfM' \
    --body '{"appId": "mtaxsogsJmnn29MA", "appType": "DLC", "baseAppId": "Gmpv5odrSmFwW6a8", "boothName": "NjPkbY5YUykA3cJh", "categoryPath": "iL43yIS09DMKb05M", "clazz": "wL95x6JjpnVCVb3U", "displayOrder": 75, "entitlementType": "DURABLE", "ext": {"RPHDIDwVAOuvfUdz": {}, "6JqlT5lyHWaCm41L": {}, "zaDO9gkoZPKEWxxc": {}}, "features": ["aarTl1LO1JD2BIEl", "yk931SDmccABrKUH", "f3EsX1fc2wX9gXAu"], "flexible": true, "images": [{"as": "DpumKP8wiivxL2Nu", "caption": "eM35N6BUgmoLfF1V", "height": 6, "imageUrl": "xpWaMVIiy4NPBHqY", "smallImageUrl": "91UhPpSSlwqsfOXs", "width": 32}, {"as": "yZRUMxh5YZ6gkaJ0", "caption": "4cLIecyK0VNsRyTz", "height": 62, "imageUrl": "qwBUqOCa2p0Zn7jJ", "smallImageUrl": "MHCxHRFpCbQYfxJR", "width": 92}, {"as": "YshhsrWXS4pXwEr0", "caption": "mQx9X4zUV4B5BEcE", "height": 45, "imageUrl": "qKQr8CTohMGvHuaz", "smallImageUrl": "9k3VVg0oP24i1GmU", "width": 29}], "inventoryConfig": {"customAttributes": {"6ay7eRvygbdlYOrO": {}, "QH9Y4SFAhGii3T2n": {}, "36oOGagxWpLJrZ6I": {}}, "serverCustomAttributes": {"MNOQDlVEIbO5dN2M": {}, "eqv9SOLEbt5iyqlB": {}, "EhnhY62j0dZe5wpG": {}}, "slotUsed": 96}, "itemIds": ["hQlqIWyHhKdbIhYV", "LZ0Yyu9ziimFaagk", "l804xs5QwxPrBzES"], "itemQty": {"Xf6v5yPgvFNYAplF": 79, "CRRWjF5Z6R0vPBMe": 61, "XMHW2lsCFa2tbqHF": 93}, "itemType": "CODE", "listable": true, "localizations": {"wRNwxNMGVftOTG54": {"description": "UOubp6hLJSBJDd86", "localExt": {"nNzVCv9975D1tMc7": {}, "ZvUgmkNykPdeH8mZ": {}, "IVBtKP53OCw3hwJv": {}}, "longDescription": "SHMXVrewKn3Tlg8H", "title": "gHnNbsYnqNh6fcZ6"}, "ihvjAHO4YoMGSwHw": {"description": "1jMGmHSeKoYzvsvC", "localExt": {"amTgCddLlLgbrZtN": {}, "CL6oQv29Etz2vJVz": {}, "YedRoMTtdzolVevA": {}}, "longDescription": "SnXCtlC90vuqeKJA", "title": "bEmH9I1J6Jh6TeEp"}, "vpOCeV86Ar6noDTt": {"description": "rltGyrbCwFh71SpO", "localExt": {"ybRtOVM0YpqFjfPL": {}, "pVf8DiHlev7AKdS6": {}, "GHGIUo2eu4rfNcb6": {}}, "longDescription": "VzolLYs5T4f7w1wZ", "title": "qDDe9fcoC7Y5WPpT"}}, "lootBoxConfig": {"rewardCount": 35, "rewards": [{"lootBoxItems": [{"count": 27, "duration": 45, "endDate": "1998-05-23T00:00:00Z", "itemId": "FTlYHkoQF8a9qD0z", "itemSku": "wvX0HKpsgWWj1EkX", "itemType": "tRGjEsSLOeXRWJeE"}, {"count": 39, "duration": 98, "endDate": "1971-02-08T00:00:00Z", "itemId": "4BEogTNBYsGxaypl", "itemSku": "NQOujqE2EMyoe8ai", "itemType": "hF4qUQaYwv24jM4b"}, {"count": 70, "duration": 95, "endDate": "1976-01-31T00:00:00Z", "itemId": "Udyzbov5OksYfdeU", "itemSku": "kibyKlQfMNYtiSin", "itemType": "awgyJQPR58DuMBLH"}], "name": "wLl6A8UlElxSZ7VT", "odds": 0.3113821897494047, "type": "REWARD", "weight": 53}, {"lootBoxItems": [{"count": 15, "duration": 16, "endDate": "1979-11-23T00:00:00Z", "itemId": "dnSxEQoBQiKoPG64", "itemSku": "y9NMkZWu6p0OloRZ", "itemType": "0kkV68u4Dc6zAa5F"}, {"count": 52, "duration": 68, "endDate": "1995-04-02T00:00:00Z", "itemId": "330EWT7K3VsDOrGV", "itemSku": "nbAa2h8cl6SFq92W", "itemType": "phLuqZ8uRHsBMZfV"}, {"count": 28, "duration": 19, "endDate": "1975-03-28T00:00:00Z", "itemId": "Qdt3vpsFS4SL2uHj", "itemSku": "FurNutBtoGCWirzO", "itemType": "eQhgbGe8rW52Y6el"}], "name": "qCqHmzuIvg9QZv6i", "odds": 0.24172970402737226, "type": "REWARD_GROUP", "weight": 45}, {"lootBoxItems": [{"count": 66, "duration": 74, "endDate": "1975-10-13T00:00:00Z", "itemId": "z1e5MskS9hcrVD6a", "itemSku": "nBYdOuzl4XPLqCJa", "itemType": "BSxvWNJlpfqLbmkd"}, {"count": 6, "duration": 73, "endDate": "1997-03-25T00:00:00Z", "itemId": "Uys3A6yP4vwdEJOe", "itemSku": "VqsxVicdL7lqpYTK", "itemType": "H52u5dWI29b5Przx"}, {"count": 20, "duration": 39, "endDate": "1988-04-16T00:00:00Z", "itemId": "LQeDYpKSL9oVCjqy", "itemSku": "TCw7jSs05mlguqrF", "itemType": "OklManLlu8rJIMWa"}], "name": "G6E5RmHWlezv4VCw", "odds": 0.46297008877310375, "type": "REWARD_GROUP", "weight": 35}], "rollFunction": "CUSTOM"}, "maxCount": 98, "maxCountPerUser": 18, "name": "oxnqGh4VfHxJq0JS", "optionBoxConfig": {"boxItems": [{"count": 5, "duration": 86, "endDate": "1974-10-26T00:00:00Z", "itemId": "EnRpUmrpisjMmB6r", "itemSku": "WuZHU2olPlc5Q04f", "itemType": "UScZOQdsz64ZapIe"}, {"count": 44, "duration": 83, "endDate": "1983-04-10T00:00:00Z", "itemId": "JPmTAByzLe6qgdws", "itemSku": "MU8SZzEnCKYei7oi", "itemType": "OfcBEAMcb75DKMox"}, {"count": 32, "duration": 92, "endDate": "1994-01-02T00:00:00Z", "itemId": "ng1ofVJlx4XsG63a", "itemSku": "UWftvV7VHZRpPsFu", "itemType": "6xzD5kXgm1xqVT6w"}]}, "purchasable": false, "recurring": {"cycle": "YEARLY", "fixedFreeDays": 44, "fixedTrialCycles": 12, "graceDays": 34}, "regionData": {"jfjxs8aQOhdsmC2z": [{"currencyCode": "WSe0DX8BaWugWwxC", "currencyNamespace": "V40LXH0p8qPruj3i", "currencyType": "VIRTUAL", "discountAmount": 75, "discountExpireAt": "1986-11-05T00:00:00Z", "discountPercentage": 16, "discountPurchaseAt": "1992-10-10T00:00:00Z", "expireAt": "1973-08-14T00:00:00Z", "price": 43, "purchaseAt": "1996-03-10T00:00:00Z", "trialPrice": 4}, {"currencyCode": "NxtB77z82EJv4mZ7", "currencyNamespace": "ftaVzYJy7V3oknRZ", "currencyType": "REAL", "discountAmount": 1, "discountExpireAt": "1974-07-21T00:00:00Z", "discountPercentage": 35, "discountPurchaseAt": "1984-06-23T00:00:00Z", "expireAt": "1982-02-25T00:00:00Z", "price": 1, "purchaseAt": "1989-08-07T00:00:00Z", "trialPrice": 98}, {"currencyCode": "PD00bO398DQiqWHt", "currencyNamespace": "DLeU5I2PXJvEydJo", "currencyType": "VIRTUAL", "discountAmount": 66, "discountExpireAt": "1978-12-26T00:00:00Z", "discountPercentage": 59, "discountPurchaseAt": "1985-11-03T00:00:00Z", "expireAt": "1995-03-15T00:00:00Z", "price": 33, "purchaseAt": "1972-11-30T00:00:00Z", "trialPrice": 79}], "6MCRKVEVTOzNLGOR": [{"currencyCode": "VZqYI0sRbGTXyAb6", "currencyNamespace": "jNhGqCxbRWfA5eIn", "currencyType": "VIRTUAL", "discountAmount": 25, "discountExpireAt": "1993-09-25T00:00:00Z", "discountPercentage": 98, "discountPurchaseAt": "1995-12-23T00:00:00Z", "expireAt": "1974-03-19T00:00:00Z", "price": 40, "purchaseAt": "1980-08-03T00:00:00Z", "trialPrice": 86}, {"currencyCode": "geVN5U8zjprsva3i", "currencyNamespace": "60utAd4AE7KpwCRV", "currencyType": "REAL", "discountAmount": 92, "discountExpireAt": "1986-12-25T00:00:00Z", "discountPercentage": 90, "discountPurchaseAt": "1972-08-21T00:00:00Z", "expireAt": "1973-02-02T00:00:00Z", "price": 63, "purchaseAt": "1992-11-12T00:00:00Z", "trialPrice": 74}, {"currencyCode": "Uu3mRGR93oricOvO", "currencyNamespace": "bZqDZEgA7J7vUaww", "currencyType": "VIRTUAL", "discountAmount": 34, "discountExpireAt": "1974-01-26T00:00:00Z", "discountPercentage": 38, "discountPurchaseAt": "1993-04-02T00:00:00Z", "expireAt": "1972-12-03T00:00:00Z", "price": 6, "purchaseAt": "1989-03-17T00:00:00Z", "trialPrice": 4}], "ORJLDEhtCOfingfz": [{"currencyCode": "czdaZWBFK6TGCWfI", "currencyNamespace": "gOy8OaYB0WmGth6l", "currencyType": "VIRTUAL", "discountAmount": 80, "discountExpireAt": "1990-10-26T00:00:00Z", "discountPercentage": 11, "discountPurchaseAt": "1987-09-11T00:00:00Z", "expireAt": "1976-03-24T00:00:00Z", "price": 77, "purchaseAt": "1981-10-07T00:00:00Z", "trialPrice": 46}, {"currencyCode": "tH0y7BVqrJNMfffW", "currencyNamespace": "vHV1QarJWhd2Pvo0", "currencyType": "REAL", "discountAmount": 71, "discountExpireAt": "1973-01-30T00:00:00Z", "discountPercentage": 1, "discountPurchaseAt": "1999-11-23T00:00:00Z", "expireAt": "1986-12-16T00:00:00Z", "price": 35, "purchaseAt": "1972-01-02T00:00:00Z", "trialPrice": 10}, {"currencyCode": "Hxp8JVjlMC14ZKLV", "currencyNamespace": "mm0nPGKiB02aNg3l", "currencyType": "REAL", "discountAmount": 81, "discountExpireAt": "1996-09-23T00:00:00Z", "discountPercentage": 8, "discountPurchaseAt": "1993-10-10T00:00:00Z", "expireAt": "1978-02-05T00:00:00Z", "price": 85, "purchaseAt": "1984-02-04T00:00:00Z", "trialPrice": 6}]}, "saleConfig": {"currencyCode": "9XDLs9UtLoYRzx3J", "price": 72}, "seasonType": "TIER", "sectionExclusive": false, "sellable": false, "sku": "Zytv2FRR66AuP7z2", "stackable": false, "status": "INACTIVE", "tags": ["lJXjdYUIIOuwO4dq", "LYAUb1DB68Y0q7jv", "CzZY1uKnz2GSBb5J"], "targetCurrencyCode": "7M7iKdMbz5N11J9A", "targetNamespace": "ZfHrijqUuxo4kCcJ", "thumbnailUrl": "qTNDsNV5wMs2LshC", "useCount": 72}' \
    > test.out 2>&1
eval_tap $? 105 'CreateItem' test.out

#- 106 GetItemByAppId
samples/cli/sample-apps Platform getItemByAppId \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'TkxkNlgzUOP5HHDF' \
    --appId 'rPptWFvsscDzCdAF' \
    > test.out 2>&1
eval_tap $? 106 'GetItemByAppId' test.out

#- 107 QueryItems
samples/cli/sample-apps Platform queryItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --appType 'DEMO' \
    --availableDate '9E2CubIiUGF7jFxN' \
    --baseAppId '6gvdjAIqjSIipYfF' \
    --categoryPath 'l373910s9HHoGvv0' \
    --features 'Nesbq9Eq0GU0gux2' \
    --includeSubCategoryItem 'false' \
    --itemType 'APP' \
    --limit '41' \
    --offset '96' \
    --region 'lpGlO8JNpcInRnWs' \
    --sortBy '["createdAt:desc", "displayOrder", "updatedAt:desc"]' \
    --storeId 'bedjRzyZcIUfQTqB' \
    --tags 's34u2Q1KtI5EkxDj' \
    --targetNamespace 'Y1Jl2hwEeZurnxe4' \
    > test.out 2>&1
eval_tap $? 107 'QueryItems' test.out

#- 108 ListBasicItemsByFeatures
samples/cli/sample-apps Platform listBasicItemsByFeatures \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --features '["GDK24syvgh5CWgSA", "qUTZK9Del8O6FP0r", "TgU7dahduHR1Juyl"]' \
    > test.out 2>&1
eval_tap $? 108 'ListBasicItemsByFeatures' test.out

#- 109 GetItems
samples/cli/sample-apps Platform getItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --storeId 'zrDuUWp4ToeflJCN' \
    --itemIds 'eYYWEu77eVpplrRC' \
    > test.out 2>&1
eval_tap $? 109 'GetItems' test.out

#- 110 GetItemBySku
samples/cli/sample-apps Platform getItemBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'inOWBgzd51NK71o3' \
    --sku '9PcRyE07RJYQaTA5' \
    > test.out 2>&1
eval_tap $? 110 'GetItemBySku' test.out

#- 111 GetLocaleItemBySku
samples/cli/sample-apps Platform getLocaleItemBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --language 'TkcyI1WCIpWQf2Pl' \
    --populateBundle 'true' \
    --region 'CvoHe3jYftWJ7kML' \
    --storeId 'dkFz20nd6CPCwwEn' \
    --sku 'io7yhtrRnRHxwU8y' \
    > test.out 2>&1
eval_tap $? 111 'GetLocaleItemBySku' test.out

#- 112 GetEstimatedPrice
samples/cli/sample-apps Platform getEstimatedPrice \
    --namespace $AB_NAMESPACE \
    --platform 'CJDoeRiM7P1mzcoY' \
    --region 'YkzGxxt2orIvwjJW' \
    --storeId '6Bw0ZkEKcUA01RHf' \
    --itemIds 'BhVlAsjpXeKvYrET' \
    --userId 'zX0AkFx1bCRBcbej' \
    > test.out 2>&1
eval_tap $? 112 'GetEstimatedPrice' test.out

#- 113 GetItemIdBySku
samples/cli/sample-apps Platform getItemIdBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId '0GiCpL2Sjp7pP2lQ' \
    --sku '0mwHloVVMn2zs7fJ' \
    > test.out 2>&1
eval_tap $? 113 'GetItemIdBySku' test.out

#- 114 GetBulkItemIdBySkus
samples/cli/sample-apps Platform getBulkItemIdBySkus \
    --namespace $AB_NAMESPACE \
    --sku '["XtlOGfjK0ihQ2wLq", "Zwb2rLtGSCn0h73a", "kDi2za6HcWghhqP2"]' \
    --storeId 'mTmvLZopaHKaVzw8' \
    > test.out 2>&1
eval_tap $? 114 'GetBulkItemIdBySkus' test.out

#- 115 BulkGetLocaleItems
samples/cli/sample-apps Platform bulkGetLocaleItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --language 'ASRwfUVgnWtevOhh' \
    --region 'izkp6MKLPtPSHShp' \
    --storeId '1yxzpniffs2KHF7R' \
    --itemIds 'w0ZTcnxcpQTq1M9f' \
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
    --platform 'vfLdECHdeajomoWF' \
    --userId 'PFBhVaeZiPii6ANN' \
    --body '{"itemIds": ["0KDfxTdEmkUgdHiF", "mpc58PN2U5l7ibvo", "gkmaqmHsA1lPKRAp"]}' \
    > test.out 2>&1
eval_tap $? 117 'ValidateItemPurchaseCondition' test.out

#- 118 BulkUpdateRegionData
samples/cli/sample-apps Platform bulkUpdateRegionData \
    --namespace $AB_NAMESPACE \
    --storeId 'wpYt2IXAyjfpWxb1' \
    --body '{"changes": [{"itemIdentities": ["M0QoH957oXKt110L", "jKP2TeXB1PUCiG9r", "5jWCZwdOupMfNcJX"], "itemIdentityType": "ITEM_ID", "regionData": {"bAWH0k4rdEwE9gVH": [{"currencyCode": "rKemBPVyiJcE6snc", "currencyNamespace": "TcxQyGhYHVRpnhdI", "currencyType": "REAL", "discountAmount": 37, "discountExpireAt": "1980-05-10T00:00:00Z", "discountPercentage": 59, "discountPurchaseAt": "1983-07-21T00:00:00Z", "discountedPrice": 60, "expireAt": "1985-01-28T00:00:00Z", "price": 45, "purchaseAt": "1977-05-19T00:00:00Z", "trialPrice": 97}, {"currencyCode": "6EKzPMe8JMw8TNhK", "currencyNamespace": "drPAo7Ca3FlQmFl2", "currencyType": "REAL", "discountAmount": 7, "discountExpireAt": "1976-06-27T00:00:00Z", "discountPercentage": 45, "discountPurchaseAt": "1999-12-17T00:00:00Z", "discountedPrice": 53, "expireAt": "1993-05-13T00:00:00Z", "price": 92, "purchaseAt": "1995-11-08T00:00:00Z", "trialPrice": 37}, {"currencyCode": "L8RcczHia1fN1Xcv", "currencyNamespace": "dYP4opqC9kSbK2tH", "currencyType": "REAL", "discountAmount": 2, "discountExpireAt": "1973-06-07T00:00:00Z", "discountPercentage": 35, "discountPurchaseAt": "1978-08-10T00:00:00Z", "discountedPrice": 66, "expireAt": "1974-01-31T00:00:00Z", "price": 95, "purchaseAt": "1977-12-09T00:00:00Z", "trialPrice": 47}], "TJQ1IujE0LoQAJp4": [{"currencyCode": "GSh8zXPFnJ4LUW02", "currencyNamespace": "exGI4092eyyakkug", "currencyType": "REAL", "discountAmount": 42, "discountExpireAt": "1982-06-04T00:00:00Z", "discountPercentage": 73, "discountPurchaseAt": "1995-06-24T00:00:00Z", "discountedPrice": 90, "expireAt": "1983-10-07T00:00:00Z", "price": 8, "purchaseAt": "1973-03-13T00:00:00Z", "trialPrice": 37}, {"currencyCode": "kWnMHspTWPmWUYff", "currencyNamespace": "aCRLIDA1ee8DYsrE", "currencyType": "VIRTUAL", "discountAmount": 31, "discountExpireAt": "1980-05-16T00:00:00Z", "discountPercentage": 45, "discountPurchaseAt": "1985-10-12T00:00:00Z", "discountedPrice": 57, "expireAt": "1973-08-26T00:00:00Z", "price": 87, "purchaseAt": "1999-02-12T00:00:00Z", "trialPrice": 21}, {"currencyCode": "RhIhGpdVP3Aovryh", "currencyNamespace": "rpeFDYphoUGbvjlM", "currencyType": "VIRTUAL", "discountAmount": 59, "discountExpireAt": "1975-02-06T00:00:00Z", "discountPercentage": 35, "discountPurchaseAt": "1977-10-10T00:00:00Z", "discountedPrice": 64, "expireAt": "1995-09-09T00:00:00Z", "price": 22, "purchaseAt": "1984-05-14T00:00:00Z", "trialPrice": 1}], "fsRIngbcZMJeQXy7": [{"currencyCode": "VQ3k2RXbe10K2F4u", "currencyNamespace": "zyr6U7Bq5QiqibPL", "currencyType": "REAL", "discountAmount": 38, "discountExpireAt": "1975-02-28T00:00:00Z", "discountPercentage": 3, "discountPurchaseAt": "1978-07-03T00:00:00Z", "discountedPrice": 25, "expireAt": "1983-08-07T00:00:00Z", "price": 14, "purchaseAt": "1978-04-28T00:00:00Z", "trialPrice": 29}, {"currencyCode": "CGueZDWY157U6PG4", "currencyNamespace": "GW1Dvs41IEVdyPka", "currencyType": "REAL", "discountAmount": 79, "discountExpireAt": "1978-08-12T00:00:00Z", "discountPercentage": 45, "discountPurchaseAt": "1973-06-16T00:00:00Z", "discountedPrice": 27, "expireAt": "1991-01-09T00:00:00Z", "price": 87, "purchaseAt": "1984-11-20T00:00:00Z", "trialPrice": 47}, {"currencyCode": "XjSA5Yv99z6KSTxL", "currencyNamespace": "AOVthuRndZfBHz81", "currencyType": "REAL", "discountAmount": 77, "discountExpireAt": "1980-05-30T00:00:00Z", "discountPercentage": 24, "discountPurchaseAt": "1998-12-24T00:00:00Z", "discountedPrice": 92, "expireAt": "1990-07-17T00:00:00Z", "price": 0, "purchaseAt": "1975-02-08T00:00:00Z", "trialPrice": 5}]}}, {"itemIdentities": ["KvYAyuMtB8g3ubzU", "zCm4TeNqOOsO06nr", "c0d9DsU0fexEsUfW"], "itemIdentityType": "ITEM_ID", "regionData": {"ON63zyqueSCukp1B": [{"currencyCode": "2m73TuJOv9llmfds", "currencyNamespace": "exX1kYzyFZyX1mkf", "currencyType": "VIRTUAL", "discountAmount": 93, "discountExpireAt": "1992-09-10T00:00:00Z", "discountPercentage": 63, "discountPurchaseAt": "1974-05-25T00:00:00Z", "discountedPrice": 24, "expireAt": "1992-09-17T00:00:00Z", "price": 34, "purchaseAt": "1993-02-01T00:00:00Z", "trialPrice": 67}, {"currencyCode": "J3LlwEwc9JorKg5i", "currencyNamespace": "eE0eKA45Kamg0wCO", "currencyType": "REAL", "discountAmount": 67, "discountExpireAt": "1971-01-31T00:00:00Z", "discountPercentage": 31, "discountPurchaseAt": "1971-08-22T00:00:00Z", "discountedPrice": 46, "expireAt": "1993-01-04T00:00:00Z", "price": 43, "purchaseAt": "1983-12-25T00:00:00Z", "trialPrice": 81}, {"currencyCode": "b3pGtHYSymfK3LcS", "currencyNamespace": "VAaaw22rXkQY6rNy", "currencyType": "REAL", "discountAmount": 1, "discountExpireAt": "1975-08-06T00:00:00Z", "discountPercentage": 16, "discountPurchaseAt": "1984-06-14T00:00:00Z", "discountedPrice": 25, "expireAt": "1978-04-15T00:00:00Z", "price": 13, "purchaseAt": "1981-01-28T00:00:00Z", "trialPrice": 50}], "Ql6OraEw33xMT02v": [{"currencyCode": "dpfF9GgT150BsvkO", "currencyNamespace": "RcfBkSLvAqFA7Oag", "currencyType": "VIRTUAL", "discountAmount": 21, "discountExpireAt": "1985-12-29T00:00:00Z", "discountPercentage": 74, "discountPurchaseAt": "1982-10-06T00:00:00Z", "discountedPrice": 4, "expireAt": "1996-11-24T00:00:00Z", "price": 55, "purchaseAt": "1971-04-25T00:00:00Z", "trialPrice": 76}, {"currencyCode": "cl4mxitl2ShBetQD", "currencyNamespace": "amm6Lmlt6aOlJKJI", "currencyType": "REAL", "discountAmount": 41, "discountExpireAt": "1991-06-25T00:00:00Z", "discountPercentage": 0, "discountPurchaseAt": "1995-03-27T00:00:00Z", "discountedPrice": 75, "expireAt": "1997-08-24T00:00:00Z", "price": 54, "purchaseAt": "1989-12-22T00:00:00Z", "trialPrice": 100}, {"currencyCode": "U57rhsYsMiZz6PCm", "currencyNamespace": "7M4xrEuL1FsIjiqv", "currencyType": "VIRTUAL", "discountAmount": 7, "discountExpireAt": "1972-10-06T00:00:00Z", "discountPercentage": 56, "discountPurchaseAt": "1997-11-02T00:00:00Z", "discountedPrice": 61, "expireAt": "1977-12-25T00:00:00Z", "price": 24, "purchaseAt": "1982-05-13T00:00:00Z", "trialPrice": 67}], "8eDFRzNjCxlWEbA4": [{"currencyCode": "KmlrCO2ORhV12eu7", "currencyNamespace": "iWtrFxj1Q9f3GlZ5", "currencyType": "REAL", "discountAmount": 5, "discountExpireAt": "1980-08-05T00:00:00Z", "discountPercentage": 28, "discountPurchaseAt": "1984-06-17T00:00:00Z", "discountedPrice": 96, "expireAt": "1982-01-26T00:00:00Z", "price": 84, "purchaseAt": "1988-12-29T00:00:00Z", "trialPrice": 48}, {"currencyCode": "lU4fTEjOMEP89dEQ", "currencyNamespace": "xgXqnROB2OhcwDOT", "currencyType": "VIRTUAL", "discountAmount": 24, "discountExpireAt": "1980-02-21T00:00:00Z", "discountPercentage": 78, "discountPurchaseAt": "1997-11-20T00:00:00Z", "discountedPrice": 57, "expireAt": "1986-01-06T00:00:00Z", "price": 9, "purchaseAt": "1997-04-30T00:00:00Z", "trialPrice": 86}, {"currencyCode": "izw302AyU7ZlS03C", "currencyNamespace": "9zF0XGiIRU90ggYV", "currencyType": "VIRTUAL", "discountAmount": 13, "discountExpireAt": "1981-07-23T00:00:00Z", "discountPercentage": 2, "discountPurchaseAt": "1982-04-19T00:00:00Z", "discountedPrice": 3, "expireAt": "1977-09-10T00:00:00Z", "price": 14, "purchaseAt": "1976-05-29T00:00:00Z", "trialPrice": 40}]}}, {"itemIdentities": ["s3k1Tpa1mZFQgw66", "GBsvCX4p95sGaAAN", "aiPIl9rIIeApUYF0"], "itemIdentityType": "ITEM_ID", "regionData": {"FoE3OmH0li3fup91": [{"currencyCode": "Ve2zR1iQT5Gj9Xgk", "currencyNamespace": "1LScPUCFQHdU5RVb", "currencyType": "VIRTUAL", "discountAmount": 21, "discountExpireAt": "1975-03-11T00:00:00Z", "discountPercentage": 100, "discountPurchaseAt": "1974-06-09T00:00:00Z", "discountedPrice": 80, "expireAt": "1987-09-18T00:00:00Z", "price": 62, "purchaseAt": "1976-07-20T00:00:00Z", "trialPrice": 33}, {"currencyCode": "pP3MYnX7FZ9FcY0r", "currencyNamespace": "P8v8828GAzTQzoqD", "currencyType": "VIRTUAL", "discountAmount": 48, "discountExpireAt": "1976-03-24T00:00:00Z", "discountPercentage": 83, "discountPurchaseAt": "1979-10-04T00:00:00Z", "discountedPrice": 73, "expireAt": "1975-05-02T00:00:00Z", "price": 84, "purchaseAt": "1973-11-16T00:00:00Z", "trialPrice": 10}, {"currencyCode": "qNb7kEPDJQ1TqNnM", "currencyNamespace": "dTysbWsitXoFNGU7", "currencyType": "VIRTUAL", "discountAmount": 96, "discountExpireAt": "1986-07-22T00:00:00Z", "discountPercentage": 72, "discountPurchaseAt": "1997-09-10T00:00:00Z", "discountedPrice": 49, "expireAt": "1978-05-18T00:00:00Z", "price": 30, "purchaseAt": "1977-07-15T00:00:00Z", "trialPrice": 73}], "Hes6GVu2OameMUHY": [{"currencyCode": "X1QKcc21OYSecrqr", "currencyNamespace": "ybrUHIi7RmqwCEij", "currencyType": "REAL", "discountAmount": 15, "discountExpireAt": "1971-01-17T00:00:00Z", "discountPercentage": 53, "discountPurchaseAt": "1992-05-19T00:00:00Z", "discountedPrice": 27, "expireAt": "1980-10-22T00:00:00Z", "price": 57, "purchaseAt": "1971-09-18T00:00:00Z", "trialPrice": 45}, {"currencyCode": "ZuJloNX1l14Riaid", "currencyNamespace": "G0Ogm7CHJAvhI6ay", "currencyType": "VIRTUAL", "discountAmount": 29, "discountExpireAt": "1980-01-20T00:00:00Z", "discountPercentage": 24, "discountPurchaseAt": "1978-04-25T00:00:00Z", "discountedPrice": 21, "expireAt": "1983-12-23T00:00:00Z", "price": 61, "purchaseAt": "1988-09-15T00:00:00Z", "trialPrice": 68}, {"currencyCode": "StNo27Fha60ITSNr", "currencyNamespace": "JdJhpkIJGqVt4WsP", "currencyType": "VIRTUAL", "discountAmount": 1, "discountExpireAt": "1979-01-27T00:00:00Z", "discountPercentage": 7, "discountPurchaseAt": "1988-05-03T00:00:00Z", "discountedPrice": 27, "expireAt": "1987-06-11T00:00:00Z", "price": 92, "purchaseAt": "1995-10-27T00:00:00Z", "trialPrice": 53}], "al8EUlR9c5rcoroq": [{"currencyCode": "hRhBxBbFunloOpvh", "currencyNamespace": "nIh2gu06Lg3qBZKU", "currencyType": "REAL", "discountAmount": 85, "discountExpireAt": "1973-02-27T00:00:00Z", "discountPercentage": 46, "discountPurchaseAt": "1972-06-09T00:00:00Z", "discountedPrice": 22, "expireAt": "1988-04-12T00:00:00Z", "price": 1, "purchaseAt": "1982-01-29T00:00:00Z", "trialPrice": 2}, {"currencyCode": "ucwWAhgHSC17r9DG", "currencyNamespace": "PdTw5fTPRO6GfvVk", "currencyType": "REAL", "discountAmount": 70, "discountExpireAt": "1995-06-09T00:00:00Z", "discountPercentage": 4, "discountPurchaseAt": "1978-06-20T00:00:00Z", "discountedPrice": 84, "expireAt": "1989-07-31T00:00:00Z", "price": 18, "purchaseAt": "1985-04-21T00:00:00Z", "trialPrice": 7}, {"currencyCode": "SmrRhW7cxxJ97SLz", "currencyNamespace": "GY92FmmhpBx7qMZw", "currencyType": "VIRTUAL", "discountAmount": 19, "discountExpireAt": "1973-05-10T00:00:00Z", "discountPercentage": 71, "discountPurchaseAt": "1984-07-12T00:00:00Z", "discountedPrice": 62, "expireAt": "1986-05-27T00:00:00Z", "price": 13, "purchaseAt": "1974-01-26T00:00:00Z", "trialPrice": 99}]}}]}' \
    > test.out 2>&1
eval_tap $? 118 'BulkUpdateRegionData' test.out

#- 119 SearchItems
samples/cli/sample-apps Platform searchItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --itemType 'MEDIA' \
    --limit '40' \
    --offset '79' \
    --sortBy '0ZKhm8DbEXxuWzJf' \
    --storeId 'okp3IPp5SLrj6DQR' \
    --keyword 'U22MWdiv11H9TpiI' \
    --language '73dqgkKQ9Zo3crR9' \
    > test.out 2>&1
eval_tap $? 119 'SearchItems' test.out

#- 120 QueryUncategorizedItems
samples/cli/sample-apps Platform queryUncategorizedItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --limit '10' \
    --offset '9' \
    --sortBy '["createdAt:asc", "displayOrder:asc", "updatedAt:asc"]' \
    --storeId '6bbhDQFdqSBu9xHA' \
    > test.out 2>&1
eval_tap $? 120 'QueryUncategorizedItems' test.out

#- 121 GetItem
samples/cli/sample-apps Platform getItem \
    --itemId 'drjUYo2u3OH9UbFG' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --storeId 'G57cXelMHlOItNoY' \
    > test.out 2>&1
eval_tap $? 121 'GetItem' test.out

#- 122 UpdateItem
samples/cli/sample-apps Platform updateItem \
    --itemId 'Su5vNnArbY965cWO' \
    --namespace $AB_NAMESPACE \
    --storeId 'cbLmh3YD28uRZtIi' \
    --body '{"appId": "gHo8dG4Y59qyHYQZ", "appType": "GAME", "baseAppId": "WFLBS7b5CtdUisH5", "boothName": "NCFos25VxJRfwTzo", "categoryPath": "4qDuTk4T5tJiHkVi", "clazz": "TuQQGrwc4NpmeCsS", "displayOrder": 86, "entitlementType": "DURABLE", "ext": {"LUdlutDF0c3IP132": {}, "nZAL98VoZ2OIrA2V": {}, "YSvyHV5zQkBCnPq2": {}}, "features": ["YKl4a39iabFH3QQM", "aafUHJp99WrOaJHU", "WXM2C6rAtAJwiOos"], "flexible": false, "images": [{"as": "weJfIgb30zPS9NpY", "caption": "McxZemIizVDDIISJ", "height": 67, "imageUrl": "BMtGBbzdtksrHZTZ", "smallImageUrl": "Jfj5AoM0r31itRVt", "width": 29}, {"as": "kFaciOenkjSFcmB8", "caption": "Nyypeix8OkTf2dr7", "height": 75, "imageUrl": "hCa4g828sacdjRaE", "smallImageUrl": "gCJkS1gWLYLiBbbi", "width": 89}, {"as": "iOHKDx5T5FwWeMcr", "caption": "wcnU9PZPLFptateg", "height": 84, "imageUrl": "ynctJmnlWCiqcDRX", "smallImageUrl": "gnl1lbgzWDv5Spej", "width": 91}], "inventoryConfig": {"customAttributes": {"h9VimhMSlSivVgHN": {}, "SWApmMOfaQsgNIsV": {}, "HqkGTtYuLMTTI8hc": {}}, "serverCustomAttributes": {"lPS9KU4PrjkrhhqF": {}, "VqFFvcuZNO2WSTxa": {}, "DT8Elyb2IbyVcFdr": {}}, "slotUsed": 74}, "itemIds": ["iEzERfCrVCxWWUYW", "TQHY8f2G2LqdBzbN", "9xQmzqH9TDYeCiDB"], "itemQty": {"qj0ELVtajEQElVuw": 75, "tnRCmnX48aIAADZt": 44, "tAj6cFaLp4mFC63R": 23}, "itemType": "EXTENSION", "listable": true, "localizations": {"2MoYX1Zh93UTwNov": {"description": "Bc1WCbmjiZzHE45r", "localExt": {"g9wZyXF0uI0YwV1M": {}, "lDEMWokm4XkeOE4y": {}, "hxJkwtNKjqJgFAUS": {}}, "longDescription": "UNQKfTFrfTqC0Ujj", "title": "6VVTBHja5beYDnoY"}, "QmSBQzsPXaDTLbJ4": {"description": "PeTQbMO2bACfRBwO", "localExt": {"PZbboeq0cOx3s8nv": {}, "F8fz85catHbwQsEi": {}, "OmGIbMbmsVfPcsJR": {}}, "longDescription": "nnJo56Tl1SXfnwHQ", "title": "pG62R4viLK4Uflue"}, "yvS3jh27gvD8FER5": {"description": "2WdGWrFYnnBU81WX", "localExt": {"M6Kr0toFG2XSU31M": {}, "tuxMaPktpxQbfNUY": {}, "CwWN7xDwV7dJYbIX": {}}, "longDescription": "5x0kEMhOCQXwUSB3", "title": "cJWediDifYGDisNe"}}, "lootBoxConfig": {"rewardCount": 45, "rewards": [{"lootBoxItems": [{"count": 22, "duration": 26, "endDate": "1972-03-01T00:00:00Z", "itemId": "bvYIyMvHHjdv7dQD", "itemSku": "ZTBrb8PloElAOJ7E", "itemType": "beEYJL5NSrm3XKpU"}, {"count": 17, "duration": 51, "endDate": "1992-10-21T00:00:00Z", "itemId": "7WUyRW9a1U0Y06Ug", "itemSku": "yQNozgwnlylObGlb", "itemType": "5QOqwZI5bf4sgsLW"}, {"count": 0, "duration": 36, "endDate": "1994-08-15T00:00:00Z", "itemId": "Ou6wZIT61XggxBhU", "itemSku": "XJXu2bZPReci4Pw6", "itemType": "hCUOtTrKjAKm7l1o"}], "name": "30YAHLz85RMLTHQT", "odds": 0.6939535624858945, "type": "REWARD", "weight": 51}, {"lootBoxItems": [{"count": 48, "duration": 83, "endDate": "1992-01-17T00:00:00Z", "itemId": "uTKE3zpkXWjFcc81", "itemSku": "t0rNNaYswVt1YfCf", "itemType": "jyR5zDNs2ShNyPf9"}, {"count": 7, "duration": 41, "endDate": "1992-07-30T00:00:00Z", "itemId": "bghEIeY0o1hlUEyY", "itemSku": "TbriQIZEAy3YTBrn", "itemType": "GTVkxrNczG4JvUiw"}, {"count": 77, "duration": 19, "endDate": "1982-03-28T00:00:00Z", "itemId": "fAUrHVGH1RlKGs1a", "itemSku": "fiwDiNBHqzWz09z6", "itemType": "7YqqMFybDC5UlRZq"}], "name": "CHWDl6y2OtX0rPus", "odds": 0.6711443655901057, "type": "REWARD", "weight": 24}, {"lootBoxItems": [{"count": 85, "duration": 6, "endDate": "1997-07-27T00:00:00Z", "itemId": "pECIeQBLBIaDs60t", "itemSku": "NClkwj89zul8OeXv", "itemType": "tQueUsM67tuFL3hU"}, {"count": 62, "duration": 63, "endDate": "1975-08-25T00:00:00Z", "itemId": "0zvCgc2P98sl7zdq", "itemSku": "KVgpVU3V6MAQd8JK", "itemType": "JwpisA4xJIVMSErR"}, {"count": 19, "duration": 83, "endDate": "1982-06-18T00:00:00Z", "itemId": "DqCegAgCXyFZU4FM", "itemSku": "ivRCvhvASD9C29na", "itemType": "vdemnPiqBvNVKCRv"}], "name": "7VvU7Bb03981AX6v", "odds": 0.8315049665263363, "type": "REWARD_GROUP", "weight": 89}], "rollFunction": "DEFAULT"}, "maxCount": 5, "maxCountPerUser": 3, "name": "VZRboJpWacxXElPv", "optionBoxConfig": {"boxItems": [{"count": 65, "duration": 79, "endDate": "1974-03-19T00:00:00Z", "itemId": "hRT4nZDLGqoSPYyC", "itemSku": "zrgMDnka1gYrTJyt", "itemType": "SVc4eoH8uP7AwDdI"}, {"count": 38, "duration": 86, "endDate": "1997-05-26T00:00:00Z", "itemId": "QfmkyWXgl2LXZseh", "itemSku": "KvJ3qBWZQc682bgN", "itemType": "3yEuYvA0VyaWlFwZ"}, {"count": 17, "duration": 98, "endDate": "1976-11-10T00:00:00Z", "itemId": "VUTOr8no8HQtCQ48", "itemSku": "izoBJbLuiOfeB3uC", "itemType": "JZgbw1IeJzX9Dryq"}]}, "purchasable": true, "recurring": {"cycle": "QUARTERLY", "fixedFreeDays": 42, "fixedTrialCycles": 27, "graceDays": 22}, "regionData": {"2TEsJUq3pq77MeuB": [{"currencyCode": "3XPT1ITM88uB7X13", "currencyNamespace": "b8LOsfOr14jnrw2U", "currencyType": "VIRTUAL", "discountAmount": 25, "discountExpireAt": "1998-09-03T00:00:00Z", "discountPercentage": 58, "discountPurchaseAt": "1990-04-01T00:00:00Z", "expireAt": "1982-07-16T00:00:00Z", "price": 27, "purchaseAt": "1987-08-06T00:00:00Z", "trialPrice": 61}, {"currencyCode": "iI5f9kYzCxMIYLHt", "currencyNamespace": "JZGcKtkErT2xaVYT", "currencyType": "REAL", "discountAmount": 72, "discountExpireAt": "1995-11-08T00:00:00Z", "discountPercentage": 24, "discountPurchaseAt": "1995-09-29T00:00:00Z", "expireAt": "1975-07-10T00:00:00Z", "price": 43, "purchaseAt": "1993-01-02T00:00:00Z", "trialPrice": 0}, {"currencyCode": "I3f1eUnrHH70JhDN", "currencyNamespace": "Kfw0vQKAC3KtrFYJ", "currencyType": "REAL", "discountAmount": 17, "discountExpireAt": "1985-04-16T00:00:00Z", "discountPercentage": 96, "discountPurchaseAt": "1989-11-09T00:00:00Z", "expireAt": "1980-05-10T00:00:00Z", "price": 7, "purchaseAt": "1980-09-30T00:00:00Z", "trialPrice": 28}], "6aAcHANpkhoeqnFr": [{"currencyCode": "gU58f7jjW0jfkgHo", "currencyNamespace": "WCRPphIoMcVKsV8D", "currencyType": "VIRTUAL", "discountAmount": 7, "discountExpireAt": "1983-09-18T00:00:00Z", "discountPercentage": 55, "discountPurchaseAt": "1978-02-22T00:00:00Z", "expireAt": "1992-05-30T00:00:00Z", "price": 99, "purchaseAt": "1972-04-20T00:00:00Z", "trialPrice": 4}, {"currencyCode": "zKlEgeyWKrfxP2Da", "currencyNamespace": "fzAc8GcZF11iz9wT", "currencyType": "REAL", "discountAmount": 65, "discountExpireAt": "1982-03-07T00:00:00Z", "discountPercentage": 37, "discountPurchaseAt": "1985-11-02T00:00:00Z", "expireAt": "1995-08-16T00:00:00Z", "price": 47, "purchaseAt": "1974-11-29T00:00:00Z", "trialPrice": 51}, {"currencyCode": "uYeydyD1Nmvw1V0W", "currencyNamespace": "8oVeM7QXLOAB2BH9", "currencyType": "VIRTUAL", "discountAmount": 3, "discountExpireAt": "1999-10-22T00:00:00Z", "discountPercentage": 79, "discountPurchaseAt": "1972-06-23T00:00:00Z", "expireAt": "1991-08-02T00:00:00Z", "price": 13, "purchaseAt": "1993-12-28T00:00:00Z", "trialPrice": 79}], "mzANylbEfAJB0V6y": [{"currencyCode": "ZHv73LpD288lmPo7", "currencyNamespace": "bYlDOi9MKIKjhuZL", "currencyType": "REAL", "discountAmount": 60, "discountExpireAt": "1992-02-26T00:00:00Z", "discountPercentage": 35, "discountPurchaseAt": "1992-09-16T00:00:00Z", "expireAt": "1999-12-22T00:00:00Z", "price": 48, "purchaseAt": "1993-04-26T00:00:00Z", "trialPrice": 89}, {"currencyCode": "wKUtPWqZJOg6Kwea", "currencyNamespace": "rrtl3ofjzL4jaOx1", "currencyType": "REAL", "discountAmount": 87, "discountExpireAt": "1976-09-20T00:00:00Z", "discountPercentage": 13, "discountPurchaseAt": "1992-07-14T00:00:00Z", "expireAt": "1980-02-16T00:00:00Z", "price": 8, "purchaseAt": "1988-08-02T00:00:00Z", "trialPrice": 5}, {"currencyCode": "V4mPFyz2l5lUtrq9", "currencyNamespace": "neN6nyPUbczIWOi4", "currencyType": "REAL", "discountAmount": 84, "discountExpireAt": "1993-04-28T00:00:00Z", "discountPercentage": 36, "discountPurchaseAt": "1984-10-14T00:00:00Z", "expireAt": "1975-09-14T00:00:00Z", "price": 13, "purchaseAt": "1988-10-31T00:00:00Z", "trialPrice": 63}]}, "saleConfig": {"currencyCode": "ovlVKMumqV8HhYsx", "price": 44}, "seasonType": "TIER", "sectionExclusive": true, "sellable": false, "sku": "tjFK54up9bzr3sBi", "stackable": false, "status": "ACTIVE", "tags": ["gYWDDQ8qa13WJHGL", "RqxlY19p8H6aTElN", "6O3txdWv6v2BVAZW"], "targetCurrencyCode": "n4D2QPB9d22GH90L", "targetNamespace": "CFd4XItPmYtVlFen", "thumbnailUrl": "L7imdHnLuJ8Dw26U", "useCount": 91}' \
    > test.out 2>&1
eval_tap $? 122 'UpdateItem' test.out

#- 123 DeleteItem
samples/cli/sample-apps Platform deleteItem \
    --itemId 'NxA7hG7GK3fvF0NI' \
    --namespace $AB_NAMESPACE \
    --force 'true' \
    --storeId 'CcFBjw5YmAZTjjgE' \
    > test.out 2>&1
eval_tap $? 123 'DeleteItem' test.out

#- 124 AcquireItem
samples/cli/sample-apps Platform acquireItem \
    --itemId 'IYXYHqZsQod9C0LH' \
    --namespace $AB_NAMESPACE \
    --body '{"count": 39, "orderNo": "39T9eSD2NqtVdUwM"}' \
    > test.out 2>&1
eval_tap $? 124 'AcquireItem' test.out

#- 125 GetApp
samples/cli/sample-apps Platform getApp \
    --itemId 'pJLb5CCCKhaSdtdB' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --storeId 'VKUlM2hZZbh0YhMn' \
    > test.out 2>&1
eval_tap $? 125 'GetApp' test.out

#- 126 UpdateApp
samples/cli/sample-apps Platform updateApp \
    --itemId 'jJO82DtP4rjLfIeB' \
    --namespace $AB_NAMESPACE \
    --storeId 'sieDRSTt2UdJVINF' \
    --body '{"carousel": [{"alt": "0V530oT7Rw9eyxV9", "previewUrl": "Nnxtmmo4paUx5bw4", "thumbnailUrl": "uZ6hJCtXbuTM51Ro", "type": "image", "url": "3yACZdsq7f016JnO", "videoSource": "vimeo"}, {"alt": "VP3QBAbq782YHvdS", "previewUrl": "m31BOM6DfOt7yKIA", "thumbnailUrl": "BokETGDIHRZzJpCO", "type": "image", "url": "pTRW4nYOe9OT3KpW", "videoSource": "youtube"}, {"alt": "SSBxrfpYdl7l3VoX", "previewUrl": "31rKbsd0mJYw2k1p", "thumbnailUrl": "V0HUohnCcd2ZRmUl", "type": "image", "url": "HG6Q91dXvWAONRdE", "videoSource": "generic"}], "developer": "0R7ffEoMevKsDm4m", "forumUrl": "Hz0ezcXqc0Hgvomp", "genres": ["Action", "Indie", "Sports"], "localizations": {"nMh3Rke6dSGmSrnS": {"announcement": "o9Exs0vorJXWsVPS", "slogan": "JdID6L1ILK6b2vgA"}, "6h1YZ0HMu8E0rgn8": {"announcement": "iKGoZJJ2fGxt1Xlm", "slogan": "kMtI9EAFF7uMJUxA"}, "eJpg43GoCboBEU0n": {"announcement": "BEyCAYO86aeLVbP6", "slogan": "x7f4Un4Y4z8sRjDT"}}, "platformRequirements": {"w1F9qDHgaErw4CwU": [{"additionals": "5oV7ViXh8rFQd7DB", "directXVersion": "idSbSAp65Fx9yJr0", "diskSpace": "hiKvouX3PVa5ULdG", "graphics": "mB8ox0E8vyUYXJs5", "label": "KJbdEbHcjEwlHAzL", "osVersion": "16DKQ20BBQzXQ7Em", "processor": "blVkuAHF0hkGZsJk", "ram": "rqkGfvPfxoFKRmVo", "soundCard": "lPzqN9gtKbKgSafZ"}, {"additionals": "paxomAAq5BLTIdTI", "directXVersion": "bznp9jBePNAMj3uK", "diskSpace": "CTSL8B3pLlCnBWus", "graphics": "Z8K1Odg1NL6yKely", "label": "x2qaZqOiEq4jyzTj", "osVersion": "tngRn4L5AAH7RZkN", "processor": "CmICVQvbRLI4oHjb", "ram": "SktBwqiSy4zVVNdj", "soundCard": "mDbPsuoJVzgzbvZI"}, {"additionals": "nXyC446p972Pze2y", "directXVersion": "3OnWqnxDHMMlAhNk", "diskSpace": "MoMiA6251MOxXXS7", "graphics": "rS3HC0fPx7lPt6EM", "label": "iTQJqH8puFspJXSE", "osVersion": "GD7Z6qOitXWeiov4", "processor": "FnMNv7uBATnGfHs9", "ram": "IhJsDwhVaBKA8IUI", "soundCard": "XknkOP0C0WbUHsaU"}], "kKArWksYDTCO1mxT": [{"additionals": "bxEEoMSGqFXILPhI", "directXVersion": "BUoGnnoPxdGj0Hkg", "diskSpace": "POlFCooljybwbD5N", "graphics": "K6ZtWbZZ5kVsipHm", "label": "3ndN7kHHUvZsPjxj", "osVersion": "Qn3Rv91zNGH0s0lX", "processor": "dxScl6fBLOWXqn1O", "ram": "ZljsGcslffo7Y3EL", "soundCard": "195lRkMkc38qu4BA"}, {"additionals": "mPcQsIguvzqIhiBd", "directXVersion": "aUUh85EFoqnO5NYK", "diskSpace": "KQ04C4oEMOS31Z9C", "graphics": "Y4eqOVIHRrdjI8Z5", "label": "dEMr6fq1fSGhqXeI", "osVersion": "62G3nByq16ryfDln", "processor": "mLoYNBhgiV685Ca3", "ram": "ZCRwqgHaYKn9ZHRQ", "soundCard": "NtlDEr2WmrXLODtG"}, {"additionals": "6ZiySu90o7u0Nnqt", "directXVersion": "4eP1ifjuxRQac3ue", "diskSpace": "oeivu5oJRC3TTZd7", "graphics": "qz74FC3xrvj5sG07", "label": "PHcW1D1eYsSCCxT6", "osVersion": "c75YMNNZhjylNi9D", "processor": "y7lWChPGKssVnY8K", "ram": "zSfeb9mBpPHr2OgR", "soundCard": "Vn9mtBnZZALXwvWq"}], "3Ydj3oVvD66C6pxv": [{"additionals": "WLhmQXCvWmABmwVY", "directXVersion": "bcRnoHNzdpxAdZnj", "diskSpace": "3abPonZnJquJBrmG", "graphics": "w5Go93gwyDHKCiK2", "label": "JVyWDJvvd8MTySF2", "osVersion": "kcOS737kJHGzlaXu", "processor": "OwXcrNIJPcn2U4CY", "ram": "JPw88iRevQVPZNmu", "soundCard": "FiNL8zH5DSqso4uj"}, {"additionals": "nSb4CLzIRKTTZpbK", "directXVersion": "e7njspJjkXLZ9I2t", "diskSpace": "3hBSa3yl106wCWws", "graphics": "Oug00cYV7vnWpVCn", "label": "svZ32fCPBY9FQhRJ", "osVersion": "1KijSdeSRdafu4DM", "processor": "NaKJp4Bx5VEzfYq5", "ram": "Rl0ZiUjauL8hjnjn", "soundCard": "W1MNf1WNxDa4Drcc"}, {"additionals": "IdwmliUuu7ummgcL", "directXVersion": "I0GHXSDWOrFOuhe4", "diskSpace": "QTDmy6xDjZxyN4wb", "graphics": "A9ZUUO8qEZsFSVoX", "label": "PriBXKfNFbjkEPM5", "osVersion": "mAumn9i8APXq9j72", "processor": "pnRudlPo2u3DM17K", "ram": "oBaQOmbWwgmLuH8V", "soundCard": "SbQ3yQ2yFlRP9eVT"}]}, "platforms": ["IOS", "Windows", "Android"], "players": ["LocalCoop", "Single", "MMO"], "primaryGenre": "Sports", "publisher": "VJH0Cbp5N7Hbyuhg", "releaseDate": "1994-07-04T00:00:00Z", "websiteUrl": "Ze4we1JJsa72EK1c"}' \
    > test.out 2>&1
eval_tap $? 126 'UpdateApp' test.out

#- 127 DisableItem
samples/cli/sample-apps Platform disableItem \
    --itemId 'laMu8OObuyEth9pa' \
    --namespace $AB_NAMESPACE \
    --storeId 'd0iRfGVvrC8yO7Bo' \
    > test.out 2>&1
eval_tap $? 127 'DisableItem' test.out

#- 128 GetItemDynamicData
samples/cli/sample-apps Platform getItemDynamicData \
    --itemId 'E4Fku0kiT0obiM97' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 128 'GetItemDynamicData' test.out

#- 129 EnableItem
samples/cli/sample-apps Platform enableItem \
    --itemId 'vE7cKHjNMWI1ELlt' \
    --namespace $AB_NAMESPACE \
    --storeId 'kBJgWAhozS83x2Hj' \
    > test.out 2>&1
eval_tap $? 129 'EnableItem' test.out

#- 130 FeatureItem
samples/cli/sample-apps Platform featureItem \
    --feature 'vQint9sgPnu2Phel' \
    --itemId '6lwP9yNEW82BspFR' \
    --namespace $AB_NAMESPACE \
    --storeId 'i3IGFu4i2inpHsfV' \
    > test.out 2>&1
eval_tap $? 130 'FeatureItem' test.out

#- 131 DefeatureItem
samples/cli/sample-apps Platform defeatureItem \
    --feature '44zvHirXoohGFXin' \
    --itemId '9yvPnYUxieWYM8MJ' \
    --namespace $AB_NAMESPACE \
    --storeId 'VBz2m9bZRvseWKLq' \
    > test.out 2>&1
eval_tap $? 131 'DefeatureItem' test.out

#- 132 GetLocaleItem
samples/cli/sample-apps Platform getLocaleItem \
    --itemId 'nHuulsCY21eHzYIx' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --language 'QL62nMoYkJnNI89z' \
    --populateBundle 'true' \
    --region '0Q6xFtd0esFvQf2i' \
    --storeId 'Gbndi7RerkqxkyOC' \
    > test.out 2>&1
eval_tap $? 132 'GetLocaleItem' test.out

#- 133 UpdateItemPurchaseCondition
samples/cli/sample-apps Platform updateItemPurchaseCondition \
    --itemId '7QMqxkDexLuHW7m2' \
    --namespace $AB_NAMESPACE \
    --storeId 'C90rffnUhIOffKaO' \
    --body '{"purchaseCondition": {"conditionGroups": [{"operator": "and", "predicates": [{"anyOf": 14, "comparison": "isGreaterThan", "name": "te7iXZA0w3piHV7F", "predicateType": "SeasonPassPredicate", "value": "lBmOGzj9SkmBmmFp", "values": ["IXkaKTgLSVpS7Xlf", "iCzwTDxLdeDR52QB", "rOzwPgIiJ7Lr31gj"]}, {"anyOf": 38, "comparison": "isGreaterThan", "name": "WKsMSSHDjCyCiwoO", "predicateType": "SeasonPassPredicate", "value": "GDCukeVBynegLMFB", "values": ["VX5EgVS6ckXs3DAW", "wvGETymkOXwajFgv", "nqEkmFCaUA8X2lao"]}, {"anyOf": 69, "comparison": "isLessThan", "name": "1LOmO16Tme5Bzx7w", "predicateType": "SeasonTierPredicate", "value": "lO5eXf0srvzVio13", "values": ["VVmhbVsTj2pyShah", "HA7drg23O4CFdlWr", "gdWaskpjwMVskeij"]}]}, {"operator": "or", "predicates": [{"anyOf": 66, "comparison": "includes", "name": "CGYPjtauFdG10iX7", "predicateType": "SeasonTierPredicate", "value": "tmK4ABPpN0W2sLYP", "values": ["GTWYfBZIYlYVxRWG", "yh19XNeA4PACYopi", "iXXdAKgwrmxXJKmr"]}, {"anyOf": 37, "comparison": "isLessThanOrEqual", "name": "LsRnHSixQv0zjKjN", "predicateType": "SeasonPassPredicate", "value": "cxLuNl1MreZV9Dq4", "values": ["3RSOmDxrxtfiPW0v", "6rDZpIJ3ADGd9Ijc", "OhrbkG98lFcylDVW"]}, {"anyOf": 98, "comparison": "is", "name": "Zv5db8ZoYhxbRsrT", "predicateType": "EntitlementPredicate", "value": "RwlkrvUH10dk7yBn", "values": ["rvk669kf8OWXya6K", "IXBnZHn019BXG06C", "FqTgYw9VlhhZLgZI"]}]}, {"operator": "or", "predicates": [{"anyOf": 69, "comparison": "isGreaterThanOrEqual", "name": "DjRpmSJtBoN4rjHO", "predicateType": "EntitlementPredicate", "value": "G7lnb3xWONfcfPbk", "values": ["b5D5G0NQqwGClJ5T", "Bls6Nws1fk6t7NzE", "LsYFJ7dIyiINYsvI"]}, {"anyOf": 89, "comparison": "is", "name": "h1i1AZEIE1l2PU5u", "predicateType": "SeasonTierPredicate", "value": "RCdHmeb4lKZSYY4w", "values": ["RdWDNr5bawxVVGuQ", "uCiKqAXG8ALMmDe5", "QTScWmism1ft6UqR"]}, {"anyOf": 33, "comparison": "includes", "name": "OYozi0mVRdTVrrLK", "predicateType": "SeasonTierPredicate", "value": "nWbEmTju5VHLjMuX", "values": ["YvePjG6hP11Fdx5P", "d5gUv4JQcJNC3mMS", "BLaRHfXXPTVZ56my"]}]}]}}' \
    > test.out 2>&1
eval_tap $? 133 'UpdateItemPurchaseCondition' test.out

#- 134 ReturnItem
samples/cli/sample-apps Platform returnItem \
    --itemId 'nAs9y7pvyelyKFLR' \
    --namespace $AB_NAMESPACE \
    --body '{"orderNo": "Xb6BrFv2wss62T4g"}' \
    > test.out 2>&1
eval_tap $? 134 'ReturnItem' test.out

#- 135 QueryKeyGroups
samples/cli/sample-apps Platform queryKeyGroups \
    --namespace $AB_NAMESPACE \
    --limit '28' \
    --name 'XvHhLbnvxVz7D1hd' \
    --offset '83' \
    --tag 'gczxg4o5Ehubv4yI' \
    > test.out 2>&1
eval_tap $? 135 'QueryKeyGroups' test.out

#- 136 CreateKeyGroup
samples/cli/sample-apps Platform createKeyGroup \
    --namespace $AB_NAMESPACE \
    --body '{"description": "TrN1tmdYi8vzCmUv", "name": "MNcL9HwhpwBeSkOW", "status": "ACTIVE", "tags": ["E3k66DvB6eMWdFIS", "FCvTGYJOjHp2SCvo", "guxo2nJc1pWSRReC"]}' \
    > test.out 2>&1
eval_tap $? 136 'CreateKeyGroup' test.out

#- 137 GetKeyGroupByBoothName
eval_tap 0 137 'GetKeyGroupByBoothName # SKIP deprecated' test.out

#- 138 GetKeyGroup
samples/cli/sample-apps Platform getKeyGroup \
    --keyGroupId '6Z6Tq1bJ7Fuxq0Sw' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 138 'GetKeyGroup' test.out

#- 139 UpdateKeyGroup
samples/cli/sample-apps Platform updateKeyGroup \
    --keyGroupId 'tAwcFYicZ9uVsTLW' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "iqpfmiicl4bVJvD5", "name": "eQjcQ7xrO4gPa9kr", "status": "INACTIVE", "tags": ["57utCe4Ns4mSfWTW", "4ie4lbVtHB690vc2", "4vMAxTN3qlRj2cZC"]}' \
    > test.out 2>&1
eval_tap $? 139 'UpdateKeyGroup' test.out

#- 140 GetKeyGroupDynamic
samples/cli/sample-apps Platform getKeyGroupDynamic \
    --keyGroupId 'noBQSnb2YlzkRI9H' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 140 'GetKeyGroupDynamic' test.out

#- 141 ListKeys
samples/cli/sample-apps Platform listKeys \
    --keyGroupId 'Bk7OtVTaO049nsVZ' \
    --namespace $AB_NAMESPACE \
    --limit '68' \
    --offset '23' \
    --status 'ACTIVE' \
    > test.out 2>&1
eval_tap $? 141 'ListKeys' test.out

#- 142 UploadKeys
samples/cli/sample-apps Platform uploadKeys \
    --keyGroupId 'zuEVyo2p834T1vdb' \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 142 'UploadKeys' test.out

#- 143 QueryOrders
samples/cli/sample-apps Platform queryOrders \
    --namespace $AB_NAMESPACE \
    --endTime 'Yl9AaITHJGiFcEY7' \
    --limit '32' \
    --offset '50' \
    --orderNos '["2CQhnprd5Bf0Rziv", "fN5bRLjiUmoJzmGw", "f8iM9r9xQ1hQMMGp"]' \
    --sortBy 'ScyDdt36F3wxIWAO' \
    --startTime 'n6VrKXBKIEiZWgQ7' \
    --status 'CHARGEBACK' \
    --withTotal 'true' \
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
    --orderNo 'dEu6v1qy2Dg6aIgY' \
    > test.out 2>&1
eval_tap $? 145 'GetOrder' test.out

#- 146 RefundOrder
samples/cli/sample-apps Platform refundOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'p5I3z3vtlkuioDVf' \
    --body '{"description": "I0Zo5d3Kclp7HgMY"}' \
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
    --body '{"dryRun": false, "notifyUrl": "mNJHvtOzUhkyT6za", "privateKey": "gk6ygP5Kn0xq1NXB"}' \
    > test.out 2>&1
eval_tap $? 148 'UpdatePaymentCallbackConfig' test.out

#- 149 QueryPaymentNotifications
samples/cli/sample-apps Platform queryPaymentNotifications \
    --namespace $AB_NAMESPACE \
    --endDate '0caFQ0SuxiuP9DW3' \
    --externalId 'FN3DtVgOeQkGULqJ' \
    --limit '21' \
    --notificationSource 'STRIPE' \
    --notificationType 'IqJ1GXdwav9mJmeI' \
    --offset '46' \
    --paymentOrderNo 'N5H7pjLDFtTNRDl2' \
    --startDate 'aemjkqjERm0IwPCs' \
    --status 'WARN' \
    > test.out 2>&1
eval_tap $? 149 'QueryPaymentNotifications' test.out

#- 150 QueryPaymentOrders
samples/cli/sample-apps Platform queryPaymentOrders \
    --namespace $AB_NAMESPACE \
    --channel 'INTERNAL' \
    --extTxId 'H69mvDUfG8WXcE5B' \
    --limit '29' \
    --offset '28' \
    --status 'REFUNDING' \
    > test.out 2>&1
eval_tap $? 150 'QueryPaymentOrders' test.out

#- 151 CreatePaymentOrderByDedicated
samples/cli/sample-apps Platform createPaymentOrderByDedicated \
    --namespace $AB_NAMESPACE \
    --body '{"currencyCode": "OCM7UkmAOT8yQKgd", "currencyNamespace": "TeC9ZzbKStYoaZfI", "customParameters": {"BtHtvVsmo91ZckGz": {}, "D93WzptVGkNhKRZm": {}, "LuJ9Xcr7uZdAgper": {}}, "description": "zwac3t0U0kHtLVlm", "extOrderNo": "L27beAGvbKF3oiCT", "extUserId": "3XslMAuKLdWITgyG", "itemType": "MEDIA", "language": "oW", "metadata": {"A33I93hxo2UkbvTT": "8cllzkVkfEESj6xw", "1Fa3xMB3uoKlPSbS": "Ngmx4b7jp2lBGZKt", "nppRWu7yEPzKreiV": "TlFFL6ziXZNl7vAg"}, "notifyUrl": "cCh6n8q4tiX1y1YM", "omitNotification": true, "platform": "qKMaQRhT3DPJPtZz", "price": 24, "recurringPaymentOrderNo": "Lpmdbu5hF94VwwUq", "region": "3r8dY1jFkPr6dVGG", "returnUrl": "N7Npnk32u7eeq4Sc", "sandbox": false, "sku": "9m5O7ifU5qRFdBgK", "subscriptionId": "z3sNxYoGkXZKdA6s", "targetNamespace": "BRHMEwikqdhsq76K", "targetUserId": "YXjmxwDc5CzbT4Rr", "title": "11r310KDemSKlHzY"}' \
    > test.out 2>&1
eval_tap $? 151 'CreatePaymentOrderByDedicated' test.out

#- 152 ListExtOrderNoByExtTxId
samples/cli/sample-apps Platform listExtOrderNoByExtTxId \
    --namespace $AB_NAMESPACE \
    --extTxId 'lRGlyEbbVpT0oRNQ' \
    > test.out 2>&1
eval_tap $? 152 'ListExtOrderNoByExtTxId' test.out

#- 153 GetPaymentOrder
samples/cli/sample-apps Platform getPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'DorNbUPD2f2bMFl7' \
    > test.out 2>&1
eval_tap $? 153 'GetPaymentOrder' test.out

#- 154 ChargePaymentOrder
samples/cli/sample-apps Platform chargePaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo '22Q71x8bHxfgdryp' \
    --body '{"extTxId": "iUbseHFONbEW8KtQ", "paymentMethod": "IXC1Wx8gYvFCfvBw", "paymentProvider": "WALLET"}' \
    > test.out 2>&1
eval_tap $? 154 'ChargePaymentOrder' test.out

#- 155 RefundPaymentOrderByDedicated
samples/cli/sample-apps Platform refundPaymentOrderByDedicated \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'uuM2cnSKqV78MXF2' \
    --body '{"description": "4OJRRDwyRBrPg2ap"}' \
    > test.out 2>&1
eval_tap $? 155 'RefundPaymentOrderByDedicated' test.out

#- 156 SimulatePaymentOrderNotification
samples/cli/sample-apps Platform simulatePaymentOrderNotification \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'VZVkrBQqMP9VD2My' \
    --body '{"amount": 53, "currencyCode": "eJnD4WXt5d6XhLLd", "notifyType": "REFUND", "paymentProvider": "CHECKOUT", "salesTax": 96, "vat": 27}' \
    > test.out 2>&1
eval_tap $? 156 'SimulatePaymentOrderNotification' test.out

#- 157 GetPaymentOrderChargeStatus
samples/cli/sample-apps Platform getPaymentOrderChargeStatus \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'dcJcrdFjeBHEhQiL' \
    > test.out 2>&1
eval_tap $? 157 'GetPaymentOrderChargeStatus' test.out

#- 158 GetPlatformEntitlementConfig
samples/cli/sample-apps Platform getPlatformEntitlementConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Playstation' \
    > test.out 2>&1
eval_tap $? 158 'GetPlatformEntitlementConfig' test.out

#- 159 UpdatePlatformEntitlementConfig
samples/cli/sample-apps Platform updatePlatformEntitlementConfig \
    --namespace $AB_NAMESPACE \
    --platform 'IOS' \
    --body '{"allowedPlatformOrigins": ["System", "Xbox", "Other"]}' \
    > test.out 2>&1
eval_tap $? 159 'UpdatePlatformEntitlementConfig' test.out

#- 160 GetPlatformWalletConfig
samples/cli/sample-apps Platform getPlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Oculus' \
    > test.out 2>&1
eval_tap $? 160 'GetPlatformWalletConfig' test.out

#- 161 UpdatePlatformWalletConfig
samples/cli/sample-apps Platform updatePlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Nintendo' \
    --body '{"allowedBalanceOrigins": ["System", "GooglePlay", "Oculus"]}' \
    > test.out 2>&1
eval_tap $? 161 'UpdatePlatformWalletConfig' test.out

#- 162 ResetPlatformWalletConfig
samples/cli/sample-apps Platform resetPlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Nintendo' \
    > test.out 2>&1
eval_tap $? 162 'ResetPlatformWalletConfig' test.out

#- 163 GetRevocationConfig
samples/cli/sample-apps Platform getRevocationConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 163 'GetRevocationConfig' test.out

#- 164 UpdateRevocationConfig
samples/cli/sample-apps Platform updateRevocationConfig \
    --namespace $AB_NAMESPACE \
    --body '{"entitlement": {"consumable": {"enabled": false, "strategy": "CUSTOM"}, "durable": {"enabled": false, "strategy": "CUSTOM"}}, "wallet": {"enabled": true, "strategy": "CUSTOM"}}' \
    > test.out 2>&1
eval_tap $? 164 'UpdateRevocationConfig' test.out

#- 165 DeleteRevocationConfig
samples/cli/sample-apps Platform deleteRevocationConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 165 'DeleteRevocationConfig' test.out

#- 166 QueryRevocationHistories
samples/cli/sample-apps Platform queryRevocationHistories \
    --namespace $AB_NAMESPACE \
    --endTime 'SthJlLFQLyP62LzQ' \
    --limit '77' \
    --offset '15' \
    --source 'OTHER' \
    --startTime '2Veq1X2ZDHSuqm2T' \
    --status 'SUCCESS' \
    --transactionId 'Ylbh7ROA5N2ssGG9' \
    --userId 'bDxaluIKOLSzZYdz' \
    > test.out 2>&1
eval_tap $? 166 'QueryRevocationHistories' test.out

#- 167 GetRevocationPluginConfig
samples/cli/sample-apps Platform getRevocationPluginConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 167 'GetRevocationPluginConfig' test.out

#- 168 UpdateRevocationPluginConfig
samples/cli/sample-apps Platform updateRevocationPluginConfig \
    --namespace $AB_NAMESPACE \
    --body '{"appConfig": {"appName": "gJBpJUOFO22BaOcd"}, "customConfig": {"connectionType": "TLS", "grpcServerAddress": "Tu3htA6Tb5PLDAc5"}, "extendType": "CUSTOM"}' \
    > test.out 2>&1
eval_tap $? 168 'UpdateRevocationPluginConfig' test.out

#- 169 DeleteRevocationPluginConfig
samples/cli/sample-apps Platform deleteRevocationPluginConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 169 'DeleteRevocationPluginConfig' test.out

#- 170 UploadRevocationPluginConfigCert
samples/cli/sample-apps Platform uploadRevocationPluginConfigCert \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 170 'UploadRevocationPluginConfigCert' test.out

#- 171 CreateReward
samples/cli/sample-apps Platform createReward \
    --namespace $AB_NAMESPACE \
    --body '{"description": "hs5b2r5vR4g9vyWf", "eventTopic": "nJcPxBivzN3OAk8B", "maxAwarded": 37, "maxAwardedPerUser": 17, "namespaceExpression": "3CafJbsxm7BFIHHO", "rewardCode": "fbHHWw0bOkyraQcH", "rewardConditions": [{"condition": "WuLzVUjXv6Hpen3I", "conditionName": "igIaoTiOnPacwiGA", "eventName": "Es4tcHdjd2gXwGQ4", "rewardItems": [{"duration": 76, "endDate": "1983-09-19T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "ds01y0eQfQkWYD3I", "quantity": 45, "sku": "xJoyDRNxPWwJ6PHo"}, {"duration": 97, "endDate": "1975-07-03T00:00:00Z", "identityType": "ITEM_ID", "itemId": "xqH09iQ9iIQlU7qI", "quantity": 64, "sku": "ydmIccjeCXgI6zUk"}, {"duration": 77, "endDate": "1986-10-05T00:00:00Z", "identityType": "ITEM_ID", "itemId": "TVP2pd9N6NuRg2Yt", "quantity": 11, "sku": "nZZY6xoQNg7O6dyF"}]}, {"condition": "gOBlI8oEjOFzSyqG", "conditionName": "hRxdfZcjfiBxdjUU", "eventName": "v57Iru22SFKnZ8VD", "rewardItems": [{"duration": 24, "endDate": "1996-10-18T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "VQJPNAG4RqkqXEa3", "quantity": 75, "sku": "3uaIOsCZrkhCTHAo"}, {"duration": 100, "endDate": "1973-08-05T00:00:00Z", "identityType": "ITEM_ID", "itemId": "ZeKAomK3mDy6GhRm", "quantity": 76, "sku": "nYczBbpCcLMzSeFy"}, {"duration": 74, "endDate": "1981-08-21T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "pd90o7LHjASEU0mf", "quantity": 46, "sku": "19cgnuwDRGymWkdX"}]}, {"condition": "BqIMLRMjc9SCUGu9", "conditionName": "XuT6yy4eeLwlLp9e", "eventName": "yADwMKgk6kDRssCd", "rewardItems": [{"duration": 62, "endDate": "1991-12-22T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "9JBauoOZAZEKJZhK", "quantity": 10, "sku": "hyabDkqPrRtwDRP9"}, {"duration": 70, "endDate": "1993-01-13T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "vVpLmwqha72su2Np", "quantity": 14, "sku": "djG7zgpFsHL6AmuQ"}, {"duration": 21, "endDate": "1980-08-15T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "AMt0BUiw3DsdZ3ZH", "quantity": 60, "sku": "CNfmb4zNe30S6z2D"}]}], "userIdExpression": "Cw0iKMTtcX6fGHmi"}' \
    > test.out 2>&1
eval_tap $? 171 'CreateReward' test.out

#- 172 QueryRewards
samples/cli/sample-apps Platform queryRewards \
    --namespace $AB_NAMESPACE \
    --eventTopic 'd7A717Hgk07asZEb' \
    --limit '32' \
    --offset '31' \
    --sortBy '["rewardCode:desc", "namespace:asc"]' \
    > test.out 2>&1
eval_tap $? 172 'QueryRewards' test.out

#- 173 ExportRewards
samples/cli/sample-apps Platform exportRewards \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 173 'ExportRewards' test.out

#- 174 ImportRewards
samples/cli/sample-apps Platform importRewards \
    --namespace $AB_NAMESPACE \
    --replaceExisting 'true' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 174 'ImportRewards' test.out

#- 175 GetReward
samples/cli/sample-apps Platform getReward \
    --namespace $AB_NAMESPACE \
    --rewardId 'RsR8xai9OGhD5bCY' \
    > test.out 2>&1
eval_tap $? 175 'GetReward' test.out

#- 176 UpdateReward
samples/cli/sample-apps Platform updateReward \
    --namespace $AB_NAMESPACE \
    --rewardId 'jMS2gyo0HXNFpZkT' \
    --body '{"description": "KFkJ7Oi9nV8lqr5N", "eventTopic": "3Yp65Vurc8iRJ3yS", "maxAwarded": 30, "maxAwardedPerUser": 77, "namespaceExpression": "NNbEsbvEKG4apkQ6", "rewardCode": "DPss8nGLKV3jYgBr", "rewardConditions": [{"condition": "8PK0wQRygvJXgLcM", "conditionName": "8lEMMx0odLC9YkCM", "eventName": "Uc5YWawQ4d4pqVux", "rewardItems": [{"duration": 62, "endDate": "1971-04-11T00:00:00Z", "identityType": "ITEM_ID", "itemId": "Crm50utTqaCLA2Ru", "quantity": 71, "sku": "3EhV4D16X0WVvYBX"}, {"duration": 95, "endDate": "1993-10-28T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "R1H65xa0G1WMXII1", "quantity": 99, "sku": "JHsLIVEgidJfl67B"}, {"duration": 8, "endDate": "1974-05-17T00:00:00Z", "identityType": "ITEM_ID", "itemId": "6fzd9DDaeY8A1uTO", "quantity": 55, "sku": "O2kQBXyeK96WBW6l"}]}, {"condition": "8u9p9589wonFVbml", "conditionName": "Yxqx5llh3hqBssT5", "eventName": "oaXrl0PyfFT7La1c", "rewardItems": [{"duration": 33, "endDate": "1985-06-25T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "8VrYO4TkoVgrmnsi", "quantity": 98, "sku": "t9LmKiWHavgd2wUv"}, {"duration": 12, "endDate": "1995-04-08T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "OcroQvcmY49Ww6V1", "quantity": 72, "sku": "LvT9MANrc8M3PvwP"}, {"duration": 13, "endDate": "1977-03-22T00:00:00Z", "identityType": "ITEM_ID", "itemId": "9o42dduRlsofDt0F", "quantity": 5, "sku": "L7uUiD1D66nkzgdi"}]}, {"condition": "Dyk2YY9J7PogvI7k", "conditionName": "gMpCSIOAI48nhm5m", "eventName": "p43c57xO9OGje25w", "rewardItems": [{"duration": 64, "endDate": "1978-06-30T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "bkkh4P5XKtRFSFkE", "quantity": 78, "sku": "Wa0PhoGU8a8TBw0l"}, {"duration": 4, "endDate": "1981-01-07T00:00:00Z", "identityType": "ITEM_ID", "itemId": "j8zyWA7htitzcqh4", "quantity": 54, "sku": "f7dSrUZhlMj2psl9"}, {"duration": 62, "endDate": "1989-07-24T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "dcsXmavlpnwSs7kR", "quantity": 94, "sku": "r2UGYjbmIxnDDWMM"}]}], "userIdExpression": "UbXvnoQHe53QJPII"}' \
    > test.out 2>&1
eval_tap $? 176 'UpdateReward' test.out

#- 177 DeleteReward
samples/cli/sample-apps Platform deleteReward \
    --namespace $AB_NAMESPACE \
    --rewardId '8hOeFP6qJon4cu6D' \
    > test.out 2>&1
eval_tap $? 177 'DeleteReward' test.out

#- 178 CheckEventCondition
samples/cli/sample-apps Platform checkEventCondition \
    --namespace $AB_NAMESPACE \
    --rewardId 'dWiKDGhcq2lqgQ9o' \
    --body '{"payload": {"JY4nzx4I9RMSAyaN": {}, "GKl6s3AUN9ty9AxM": {}, "pcnsPx01BteyqadA": {}}}' \
    > test.out 2>&1
eval_tap $? 178 'CheckEventCondition' test.out

#- 179 DeleteRewardConditionRecord
samples/cli/sample-apps Platform deleteRewardConditionRecord \
    --namespace $AB_NAMESPACE \
    --rewardId 'McYtvcNmAnWsXhju' \
    --body '{"conditionName": "34WhAnv6WlmcMJ3h", "userId": "zYnY3fJkSFTllDYa"}' \
    > test.out 2>&1
eval_tap $? 179 'DeleteRewardConditionRecord' test.out

#- 180 QuerySections
samples/cli/sample-apps Platform querySections \
    --namespace $AB_NAMESPACE \
    --end 'FlYjM7ytPP2IZwgw' \
    --limit '39' \
    --offset '44' \
    --start 'cRP7zIyb2C0XqKzp' \
    --storeId '6EY1CVbDfeFS0Dlz' \
    --viewId 'cdVQi5cQN34mMH5p' \
    > test.out 2>&1
eval_tap $? 180 'QuerySections' test.out

#- 181 CreateSection
samples/cli/sample-apps Platform createSection \
    --namespace $AB_NAMESPACE \
    --storeId 'Kck1WlvuHIHVKUpO' \
    --body '{"active": false, "displayOrder": 21, "endDate": "1989-02-16T00:00:00Z", "ext": {"7aDhv0JSJRlRbbvs": {}, "OI2nZDjfmRkWsxFH": {}, "YfCXYHY2Fhb0WSoO": {}}, "fixedPeriodRotationConfig": {"backfillType": "NONE", "duration": 29, "itemCount": 99, "rule": "SEQUENCE"}, "items": [{"id": "LgCbsTNGgiImGJtl", "sku": "kOwY7F8zucPg5C8X"}, {"id": "rbRWVva6T4kEHtUH", "sku": "wx5izNc7v8izggJz"}, {"id": "nbL98yE6h5nfWR9W", "sku": "pcWOC9P3RaukdpEF"}], "localizations": {"K5XqxRqJs1gPFg7M": {"description": "KAowEFwS0Xa3oyR6", "localExt": {"wM4VZevgv4PYtKq3": {}, "bEk7dXhBrH88Q3gX": {}, "qid1WPmI1W9tUkse": {}}, "longDescription": "Bakgt6US1yFKvdbe", "title": "AmSjj7eM0buty4rD"}, "CCEUboC8P62YTTpW": {"description": "VWwq4ut3s7tS3jb4", "localExt": {"za7K6xnCjAyrZPOk": {}, "qQS2QFfbHjMcrGfP": {}, "z2ck0By0mL3qdY1k": {}}, "longDescription": "L8cSvZMdwg0zRifz", "title": "0wpB5fcWJ9EKBdwd"}, "33AoDTs4TCPb62wR": {"description": "FtmjUd1dRzXcQy7t", "localExt": {"BVrckxYDq5svsHyy": {}, "jFkiixOpxQr1s4zz": {}, "SIz6fI9C1woHj3BK": {}}, "longDescription": "qNmu8d6O4bBaJ17j", "title": "1alT3NclV0wcQxlo"}}, "name": "ufezi2xaBB2OiwqK", "rotationType": "CUSTOM", "startDate": "1979-05-21T00:00:00Z", "viewId": "XbcBhA6CqM1ioHVH"}' \
    > test.out 2>&1
eval_tap $? 181 'CreateSection' test.out

#- 182 PurgeExpiredSection
samples/cli/sample-apps Platform purgeExpiredSection \
    --namespace $AB_NAMESPACE \
    --storeId 'ZnbgaAIzajeymroX' \
    > test.out 2>&1
eval_tap $? 182 'PurgeExpiredSection' test.out

#- 183 GetSection
samples/cli/sample-apps Platform getSection \
    --namespace $AB_NAMESPACE \
    --sectionId 'Wh3n8QNikMkuEBlt' \
    --storeId 'zCZpGJH94asivc07' \
    > test.out 2>&1
eval_tap $? 183 'GetSection' test.out

#- 184 UpdateSection
samples/cli/sample-apps Platform updateSection \
    --namespace $AB_NAMESPACE \
    --sectionId 'AYvRTgEYUpjePzew' \
    --storeId 'e44hiPXS79AEwKXs' \
    --body '{"active": true, "displayOrder": 42, "endDate": "1988-04-16T00:00:00Z", "ext": {"ozb4KDQ7dDZfZab2": {}, "XNDm1If7uEqYbtXx": {}, "h0aH3n4eNcVpUSdl": {}}, "fixedPeriodRotationConfig": {"backfillType": "NONE", "duration": 2, "itemCount": 36, "rule": "SEQUENCE"}, "items": [{"id": "948tS6PC6tQgvWeE", "sku": "7PLA3qvLT4Hk9kEl"}, {"id": "JSHiwYhRQrt7NCjV", "sku": "6bBGlzpKgguFhuDU"}, {"id": "WB9AFrnfUCAZgi8t", "sku": "xyTzWlbLIacCQ9Ns"}], "localizations": {"jD9lsQ3QtwDhSQ5w": {"description": "Wk3AwoFM2mpGCwaP", "localExt": {"2bMde29H4LkeYk42": {}, "diJ1fXUM4vJhspId": {}, "xXcE2JTTZjBa6DCo": {}}, "longDescription": "6iRyr7mZmvTVp1ox", "title": "dLpvo8pkAO7scC08"}, "lnTVx7eLqTl1lO8p": {"description": "k9zQacTtV44eQtzi", "localExt": {"rqCcoe8eKfSct8H5": {}, "uVopB6qJE5rPoTAP": {}, "lgph7uIFnu11fYGx": {}}, "longDescription": "1LSKZTFmmoxD5Xwp", "title": "y4TGszQbz0j4D72S"}, "rRGOoZw7fCpP0Zab": {"description": "20592rLHlRUI1Jac", "localExt": {"4ZecHemJRbCxpTFA": {}, "krp3VTqrkG8S3LWF": {}, "YZYa69PCFHWelsbu": {}}, "longDescription": "niF7QGMctpoLadCd", "title": "YYUBr4Vyr49YYfXI"}}, "name": "AhHJWSdL91Z4qU2L", "rotationType": "CUSTOM", "startDate": "1979-07-11T00:00:00Z", "viewId": "wGdvKnbXZmeDxQY3"}' \
    > test.out 2>&1
eval_tap $? 184 'UpdateSection' test.out

#- 185 DeleteSection
samples/cli/sample-apps Platform deleteSection \
    --namespace $AB_NAMESPACE \
    --sectionId 'MFTVokhxqtvZmUDI' \
    --storeId 'miBcqN0Q441cd59Y' \
    > test.out 2>&1
eval_tap $? 185 'DeleteSection' test.out

#- 186 ListStores
samples/cli/sample-apps Platform listStores \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 186 'ListStores' test.out

#- 187 CreateStore
samples/cli/sample-apps Platform createStore \
    --namespace $AB_NAMESPACE \
    --body '{"defaultLanguage": "rs7CE1fvrpU66nyv", "defaultRegion": "8lho0BBT6nCHm2q8", "description": "evhhmK6IhpRSmdSA", "supportedLanguages": ["qiBpkHDKknmwEcYs", "I14r7C6Q2cDaKtiA", "ZMQ62FEYfTkJWWgd"], "supportedRegions": ["b3UAoFRDuDcygxX8", "B2qffvNtXCAv0hBC", "sQRBPrlDfYJ4aqit"], "title": "xPXlPDCy0fii1egb"}' \
    > test.out 2>&1
eval_tap $? 187 'CreateStore' test.out

#- 188 GetCatalogDefinition
samples/cli/sample-apps Platform getCatalogDefinition \
    --namespace $AB_NAMESPACE \
    --catalogType 'VIEW' \
    > test.out 2>&1
eval_tap $? 188 'GetCatalogDefinition' test.out

#- 189 DownloadCSVTemplates
samples/cli/sample-apps Platform downloadCSVTemplates \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 189 'DownloadCSVTemplates' test.out

#- 190 ExportStoreByCSV
samples/cli/sample-apps Platform exportStoreByCSV \
    --namespace $AB_NAMESPACE \
    --body '{"catalogType": "CATEGORY", "fieldsToBeIncluded": ["avL9otyGZz7dIJPw", "eTohz9HEbtA43Ws6", "YBg1srM4PPzKxtGf"], "idsToBeExported": ["4vsjmIUvt9mbzy1m", "hylJYAXVgcoQjqOU", "Cnz9wDthBOXjKoOD"], "storeId": "xkqtHXrDB6BRmBiw"}' \
    > test.out 2>&1
eval_tap $? 190 'ExportStoreByCSV' test.out

#- 191 ImportStore
eval_tap 0 191 'ImportStore # SKIP deprecated' test.out

#- 192 GetPublishedStore
samples/cli/sample-apps Platform getPublishedStore \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 192 'GetPublishedStore' test.out

#- 193 DeletePublishedStore
samples/cli/sample-apps Platform deletePublishedStore \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 193 'DeletePublishedStore' test.out

#- 194 GetPublishedStoreBackup
samples/cli/sample-apps Platform getPublishedStoreBackup \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 194 'GetPublishedStoreBackup' test.out

#- 195 RollbackPublishedStore
samples/cli/sample-apps Platform rollbackPublishedStore \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 195 'RollbackPublishedStore' test.out

#- 196 GetStore
samples/cli/sample-apps Platform getStore \
    --namespace $AB_NAMESPACE \
    --storeId 'lsEFN5426EG2YyGQ' \
    > test.out 2>&1
eval_tap $? 196 'GetStore' test.out

#- 197 UpdateStore
samples/cli/sample-apps Platform updateStore \
    --namespace $AB_NAMESPACE \
    --storeId 'GUacNgNjuZjHa9TP' \
    --body '{"defaultLanguage": "IIp74Bt0FkTswlEa", "defaultRegion": "9QHuol6pz5ESg3Rv", "description": "7TLjGQoWAafkb3m1", "supportedLanguages": ["1efnwDGMmmFWSrUV", "2daaQRproUWh3DnQ", "x1JdjS0XISK8hOp1"], "supportedRegions": ["Jt39MDcOKTdONm6i", "JO5lOy6nY2pIwEWC", "Goc840aSTVjgTJCI"], "title": "FE6h1rpUPmGHeF67"}' \
    > test.out 2>&1
eval_tap $? 197 'UpdateStore' test.out

#- 198 DeleteStore
samples/cli/sample-apps Platform deleteStore \
    --namespace $AB_NAMESPACE \
    --storeId 'S2wD9yA2HfINzzbG' \
    > test.out 2>&1
eval_tap $? 198 'DeleteStore' test.out

#- 199 QueryChanges
samples/cli/sample-apps Platform queryChanges \
    --namespace $AB_NAMESPACE \
    --storeId 'vgDG0oTkdtlwrAc8' \
    --action 'DELETE' \
    --itemSku 'MpKbSysZFC31WE4R' \
    --itemType 'APP' \
    --limit '90' \
    --offset '35' \
    --selected 'false' \
    --sortBy '["createdAt:asc", "updatedAt", "updatedAt:asc"]' \
    --status 'PUBLISHED' \
    --type 'CATEGORY' \
    --updatedAtEnd 'CTXStFSaSm9mPr0n' \
    --updatedAtStart '5b1jDYSnihNcwSs5' \
    --withTotal 'true' \
    > test.out 2>&1
eval_tap $? 199 'QueryChanges' test.out

#- 200 PublishAll
samples/cli/sample-apps Platform publishAll \
    --namespace $AB_NAMESPACE \
    --storeId 'BoR3gFDyWssFkg5k' \
    > test.out 2>&1
eval_tap $? 200 'PublishAll' test.out

#- 201 PublishSelected
samples/cli/sample-apps Platform publishSelected \
    --namespace $AB_NAMESPACE \
    --storeId 'CAPSOHKPhRIFxKaF' \
    > test.out 2>&1
eval_tap $? 201 'PublishSelected' test.out

#- 202 SelectAllRecords
samples/cli/sample-apps Platform selectAllRecords \
    --namespace $AB_NAMESPACE \
    --storeId 'Y1VMS23vtFNvr5EN' \
    > test.out 2>&1
eval_tap $? 202 'SelectAllRecords' test.out

#- 203 SelectAllRecordsByCriteria
samples/cli/sample-apps Platform selectAllRecordsByCriteria \
    --namespace $AB_NAMESPACE \
    --storeId 'KQiwe03Tasxm8i32' \
    --action 'DELETE' \
    --itemSku 'PI2p4eicJOIurVmA' \
    --itemType 'SUBSCRIPTION' \
    --selected 'false' \
    --type 'ITEM' \
    --updatedAtEnd 'eH5vgeFTrkcGPMkx' \
    --updatedAtStart '7V447iHPjqDzrJ7q' \
    > test.out 2>&1
eval_tap $? 203 'SelectAllRecordsByCriteria' test.out

#- 204 GetStatistic
samples/cli/sample-apps Platform getStatistic \
    --namespace $AB_NAMESPACE \
    --storeId 'VbkljhfaqU7IRu7N' \
    --action 'UPDATE' \
    --itemSku 'YNvOzk9f31WIMNb8' \
    --itemType 'SUBSCRIPTION' \
    --type 'SECTION' \
    --updatedAtEnd 'woku3Ne7ILd8BDWH' \
    --updatedAtStart '9ZriJ6LzQchj8epH' \
    > test.out 2>&1
eval_tap $? 204 'GetStatistic' test.out

#- 205 UnselectAllRecords
samples/cli/sample-apps Platform unselectAllRecords \
    --namespace $AB_NAMESPACE \
    --storeId 'AG4JE5lWAGLyEtTb' \
    > test.out 2>&1
eval_tap $? 205 'UnselectAllRecords' test.out

#- 206 SelectRecord
samples/cli/sample-apps Platform selectRecord \
    --changeId '2hiJYMnYo1QAMRJ7' \
    --namespace $AB_NAMESPACE \
    --storeId 'ouRjevJ51gXc0eY2' \
    > test.out 2>&1
eval_tap $? 206 'SelectRecord' test.out

#- 207 UnselectRecord
samples/cli/sample-apps Platform unselectRecord \
    --changeId 'sJKSiRiUeSMqStuX' \
    --namespace $AB_NAMESPACE \
    --storeId '2eHyjx5KjxQTpLBw' \
    > test.out 2>&1
eval_tap $? 207 'UnselectRecord' test.out

#- 208 CloneStore
samples/cli/sample-apps Platform cloneStore \
    --namespace $AB_NAMESPACE \
    --storeId 'kNRIiKvRcC9inGCF' \
    --targetStoreId 'K0plK3fI2zNr3KP5' \
    > test.out 2>&1
eval_tap $? 208 'CloneStore' test.out

#- 209 ExportStore
eval_tap 0 209 'ExportStore # SKIP deprecated' test.out

#- 210 QueryImportHistory
samples/cli/sample-apps Platform queryImportHistory \
    --namespace $AB_NAMESPACE \
    --storeId 'jxtv0mpkEYM9lbsA' \
    --end 'iiHUeCQBi2N3PZJE' \
    --limit '13' \
    --offset '55' \
    --sortBy 'TH0oJISoMSQFpgrJ' \
    --start 'tSMB8sGULPP7FwS5' \
    --success 'true' \
    > test.out 2>&1
eval_tap $? 210 'QueryImportHistory' test.out

#- 211 ImportStoreByCSV
samples/cli/sample-apps Platform importStoreByCSV \
    --namespace $AB_NAMESPACE \
    --storeId '0yMhfkO86ztwvaA8' \
    --category 'tmp.dat' \
    --display 'tmp.dat' \
    --item 'tmp.dat' \
    --notes 'V7o66gYb6ba8OVLr' \
    --section 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 211 'ImportStoreByCSV' test.out

#- 212 QuerySubscriptions
samples/cli/sample-apps Platform querySubscriptions \
    --namespace $AB_NAMESPACE \
    --chargeStatus 'RECURRING_CHARGING' \
    --itemId 'ii4CwuS6gPjhVSME' \
    --limit '97' \
    --offset '59' \
    --sku 'UMeIrnb752Yxq6dc' \
    --status 'INIT' \
    --subscribedBy 'PLATFORM' \
    --userId 'g6pWRpyYI7F6TOe7' \
    > test.out 2>&1
eval_tap $? 212 'QuerySubscriptions' test.out

#- 213 RecurringChargeSubscription
samples/cli/sample-apps Platform recurringChargeSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'XLmWQxIfeqIUL8dJ' \
    > test.out 2>&1
eval_tap $? 213 'RecurringChargeSubscription' test.out

#- 214 GetTicketDynamic
samples/cli/sample-apps Platform getTicketDynamic \
    --boothName 'ugDeBV3YiK2hsZt0' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 214 'GetTicketDynamic' test.out

#- 215 DecreaseTicketSale
samples/cli/sample-apps Platform decreaseTicketSale \
    --boothName '4oJnyROxYlM2dDIM' \
    --namespace $AB_NAMESPACE \
    --body '{"orderNo": "aaRejG9akeEa0zfv"}' \
    > test.out 2>&1
eval_tap $? 215 'DecreaseTicketSale' test.out

#- 216 GetTicketBoothID
samples/cli/sample-apps Platform getTicketBoothID \
    --boothName 'dqdng6clQngZ9KRi' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 216 'GetTicketBoothID' test.out

#- 217 IncreaseTicketSale
samples/cli/sample-apps Platform increaseTicketSale \
    --boothName 'velujBFd6YSkQFPC' \
    --namespace $AB_NAMESPACE \
    --body '{"count": 58, "orderNo": "qvsDRZWZSEpXahkc"}' \
    > test.out 2>&1
eval_tap $? 217 'IncreaseTicketSale' test.out

#- 218 Commit
samples/cli/sample-apps Platform commit \
    --namespace $AB_NAMESPACE \
    --body '{"actions": [{"operations": [{"creditPayload": {"balanceOrigin": "Xbox", "count": 42, "currencyCode": "Btj7HQZBmUPK4pDd", "expireAt": "1974-09-14T00:00:00Z"}, "debitPayload": {"count": 58, "currencyCode": "FHV26G2M0ySukpM2", "walletPlatform": "Playstation"}, "fulFillItemPayload": {"count": 62, "entitlementCollectionId": "EUkffuMgjuiGCjaW", "entitlementOrigin": "IOS", "itemIdentity": "59op7rVyiTqdbLy4", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 82, "entitlementId": "f2KNorTh1jxu4Z14"}, "type": "FULFILL_ITEM"}, {"creditPayload": {"balanceOrigin": "Nintendo", "count": 38, "currencyCode": "OZsJ5QDOJVk7yaCW", "expireAt": "1984-06-29T00:00:00Z"}, "debitPayload": {"count": 41, "currencyCode": "kGX0Ar2z99Aujbu7", "walletPlatform": "Xbox"}, "fulFillItemPayload": {"count": 8, "entitlementCollectionId": "tH33lXZFMw05dhOj", "entitlementOrigin": "GooglePlay", "itemIdentity": "0BSkkDhV6NiDyn5n", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 58, "entitlementId": "KW2Y9MwAxZDkynMm"}, "type": "REVOKE_ENTITLEMENT"}, {"creditPayload": {"balanceOrigin": "Twitch", "count": 24, "currencyCode": "fTBI33Gujz4FByYQ", "expireAt": "1987-04-23T00:00:00Z"}, "debitPayload": {"count": 44, "currencyCode": "Gl8sPVCkIIaiNJjW", "walletPlatform": "Oculus"}, "fulFillItemPayload": {"count": 44, "entitlementCollectionId": "7OZVPI854CkvyBpB", "entitlementOrigin": "Twitch", "itemIdentity": "yDhCM3L3BNJCnqrN", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 19, "entitlementId": "9n9w991GMfvWPLBX"}, "type": "DEBIT_WALLET"}], "userId": "WUig8XWfh4U8qjP9"}, {"operations": [{"creditPayload": {"balanceOrigin": "System", "count": 59, "currencyCode": "BuudjqKb69UuL07Z", "expireAt": "1997-08-03T00:00:00Z"}, "debitPayload": {"count": 75, "currencyCode": "5iEuamHEmNsHlVUN", "walletPlatform": "GooglePlay"}, "fulFillItemPayload": {"count": 100, "entitlementCollectionId": "JMNEvBj9gFmpfS2d", "entitlementOrigin": "Nintendo", "itemIdentity": "PZVLNxApAAkkpCzF", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 89, "entitlementId": "usYxqKKX7ALT9389"}, "type": "REVOKE_ENTITLEMENT"}, {"creditPayload": {"balanceOrigin": "Playstation", "count": 61, "currencyCode": "FoROmGs2LRUUCLaW", "expireAt": "1993-04-09T00:00:00Z"}, "debitPayload": {"count": 28, "currencyCode": "jcZXuMegmU6HofQP", "walletPlatform": "GooglePlay"}, "fulFillItemPayload": {"count": 95, "entitlementCollectionId": "8VgDJXTDOdSz0fcr", "entitlementOrigin": "Steam", "itemIdentity": "VHqvjf1pPmgulxF8", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 76, "entitlementId": "hkGBr2LaJbCYosjc"}, "type": "REVOKE_ENTITLEMENT"}, {"creditPayload": {"balanceOrigin": "Playstation", "count": 2, "currencyCode": "CC7N3nJD9hyFNw5S", "expireAt": "1990-10-12T00:00:00Z"}, "debitPayload": {"count": 66, "currencyCode": "3ZKGQWssy4Rb89fh", "walletPlatform": "Playstation"}, "fulFillItemPayload": {"count": 67, "entitlementCollectionId": "zeTwqkIERrZMfRHI", "entitlementOrigin": "System", "itemIdentity": "hNvNYGTsHdlZoAID", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 39, "entitlementId": "iQJc6kvfkTEfP9br"}, "type": "REVOKE_ENTITLEMENT"}], "userId": "OppzfWps7efZ6uCq"}, {"operations": [{"creditPayload": {"balanceOrigin": "Oculus", "count": 43, "currencyCode": "7IonxZEqC6duD8E4", "expireAt": "1995-09-25T00:00:00Z"}, "debitPayload": {"count": 48, "currencyCode": "2kV6ImkYDoQk3Zhr", "walletPlatform": "GooglePlay"}, "fulFillItemPayload": {"count": 48, "entitlementCollectionId": "bFgNw9usPa63y21V", "entitlementOrigin": "Oculus", "itemIdentity": "NoPctQTHyxMReyyE", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 47, "entitlementId": "rpavlNv93trJxiSt"}, "type": "DEBIT_WALLET"}, {"creditPayload": {"balanceOrigin": "Oculus", "count": 48, "currencyCode": "wl5HZTLpr9NGDabe", "expireAt": "1971-06-07T00:00:00Z"}, "debitPayload": {"count": 88, "currencyCode": "blw8KNGAJwaWRXGM", "walletPlatform": "Steam"}, "fulFillItemPayload": {"count": 28, "entitlementCollectionId": "KWX03I52NjIyVTVD", "entitlementOrigin": "IOS", "itemIdentity": "8Y6kMr2SXR5JdEO3", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 44, "entitlementId": "Livqkrmwqxsle7oY"}, "type": "REVOKE_ENTITLEMENT"}, {"creditPayload": {"balanceOrigin": "Steam", "count": 76, "currencyCode": "JuQKFeHziceHghKh", "expireAt": "1986-04-04T00:00:00Z"}, "debitPayload": {"count": 42, "currencyCode": "2YlfzrSmm3dIrDEA", "walletPlatform": "Oculus"}, "fulFillItemPayload": {"count": 16, "entitlementCollectionId": "Uffp1zKDBsOKQl6E", "entitlementOrigin": "IOS", "itemIdentity": "yCeXP67OvzAVWym1", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 31, "entitlementId": "ZyWreulC9IQFLBRG"}, "type": "FULFILL_ITEM"}], "userId": "4gheoDw23alCE2z2"}], "metadata": {"bNlQ33QtM354r2UY": {}, "IT1Bo442KlmMZhr1": {}, "0bKZxiAS6eQOUMzt": {}}, "needPreCheck": true, "transactionId": "FzTqWF6HZUIqv4E4", "type": "AYcNAA4l980BA0kg"}' \
    > test.out 2>&1
eval_tap $? 218 'Commit' test.out

#- 219 GetTradeHistoryByCriteria
samples/cli/sample-apps Platform getTradeHistoryByCriteria \
    --namespace $AB_NAMESPACE \
    --limit '18' \
    --offset '97' \
    --status 'FAILED' \
    --type 'CKMaoj8X0JnADUXq' \
    --userId 'DhkYERm72yHcFWYR' \
    > test.out 2>&1
eval_tap $? 219 'GetTradeHistoryByCriteria' test.out

#- 220 GetTradeHistoryByTransactionId
samples/cli/sample-apps Platform getTradeHistoryByTransactionId \
    --namespace $AB_NAMESPACE \
    --transactionId 'H91CKpR7dK3DSPMm' \
    > test.out 2>&1
eval_tap $? 220 'GetTradeHistoryByTransactionId' test.out

#- 221 UnlockSteamUserAchievement
samples/cli/sample-apps Platform unlockSteamUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'DlU7MWrLgB6WZHWA' \
    --body '{"achievements": [{"id": "KzmhT7jJgcnHPbEg", "value": 66}, {"id": "LnZV3MbognXA7ZIy", "value": 31}, {"id": "7qCS7wAvAtQPIuVs", "value": 39}], "steamUserId": "2Bwp89ave3GZ0wPl"}' \
    > test.out 2>&1
eval_tap $? 221 'UnlockSteamUserAchievement' test.out

#- 222 GetXblUserAchievements
samples/cli/sample-apps Platform getXblUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId 'msRGam5dA3mT698o' \
    --xboxUserId 'wVJca3Lp76XTIlcB' \
    > test.out 2>&1
eval_tap $? 222 'GetXblUserAchievements' test.out

#- 223 UpdateXblUserAchievement
samples/cli/sample-apps Platform updateXblUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'tadNusMNPg8wk3HA' \
    --body '{"achievements": [{"id": "jMeHIlHag4Crrtma", "percentComplete": 92}, {"id": "EWue93ochrezfHms", "percentComplete": 10}, {"id": "xXNLDer1ITwEBuWi", "percentComplete": 19}], "serviceConfigId": "rDkMs8VowuqveIjx", "titleId": "7A9tQOX0xKJNZDAY", "xboxUserId": "v23xEPz0rMFhP5aq"}' \
    > test.out 2>&1
eval_tap $? 223 'UpdateXblUserAchievement' test.out

#- 224 AnonymizeCampaign
samples/cli/sample-apps Platform anonymizeCampaign \
    --namespace $AB_NAMESPACE \
    --userId '9WWfMsRHN5YhAofe' \
    > test.out 2>&1
eval_tap $? 224 'AnonymizeCampaign' test.out

#- 225 AnonymizeEntitlement
samples/cli/sample-apps Platform anonymizeEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'Rwn070zHDLJbmoc8' \
    > test.out 2>&1
eval_tap $? 225 'AnonymizeEntitlement' test.out

#- 226 AnonymizeFulfillment
samples/cli/sample-apps Platform anonymizeFulfillment \
    --namespace $AB_NAMESPACE \
    --userId 'wlyAekxQUjnydx66' \
    > test.out 2>&1
eval_tap $? 226 'AnonymizeFulfillment' test.out

#- 227 AnonymizeIntegration
samples/cli/sample-apps Platform anonymizeIntegration \
    --namespace $AB_NAMESPACE \
    --userId 'xoWnkxkriMbkfsKG' \
    > test.out 2>&1
eval_tap $? 227 'AnonymizeIntegration' test.out

#- 228 AnonymizeOrder
samples/cli/sample-apps Platform anonymizeOrder \
    --namespace $AB_NAMESPACE \
    --userId 'jx5di2Bj3dwXk7jj' \
    > test.out 2>&1
eval_tap $? 228 'AnonymizeOrder' test.out

#- 229 AnonymizePayment
samples/cli/sample-apps Platform anonymizePayment \
    --namespace $AB_NAMESPACE \
    --userId 'pjlVOlMjBWMygJSr' \
    > test.out 2>&1
eval_tap $? 229 'AnonymizePayment' test.out

#- 230 AnonymizeRevocation
samples/cli/sample-apps Platform anonymizeRevocation \
    --namespace $AB_NAMESPACE \
    --userId 'YMLMI6RVRmcHoZ5o' \
    > test.out 2>&1
eval_tap $? 230 'AnonymizeRevocation' test.out

#- 231 AnonymizeSubscription
samples/cli/sample-apps Platform anonymizeSubscription \
    --namespace $AB_NAMESPACE \
    --userId 'bC2XaL3xchNlCavJ' \
    > test.out 2>&1
eval_tap $? 231 'AnonymizeSubscription' test.out

#- 232 AnonymizeWallet
samples/cli/sample-apps Platform anonymizeWallet \
    --namespace $AB_NAMESPACE \
    --userId 'Uajtcxn3SXz4vQtg' \
    > test.out 2>&1
eval_tap $? 232 'AnonymizeWallet' test.out

#- 233 GetUserDLCByPlatform
samples/cli/sample-apps Platform getUserDLCByPlatform \
    --namespace $AB_NAMESPACE \
    --userId 'l6nfGTm7YjNTbPoT' \
    --type 'PSN' \
    > test.out 2>&1
eval_tap $? 233 'GetUserDLCByPlatform' test.out

#- 234 GetUserDLC
samples/cli/sample-apps Platform getUserDLC \
    --namespace $AB_NAMESPACE \
    --userId 'cAR2diofkA4Hc9ES' \
    --type 'OCULUS' \
    > test.out 2>&1
eval_tap $? 234 'GetUserDLC' test.out

#- 235 QueryUserEntitlements
samples/cli/sample-apps Platform queryUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'k9ulvrc3re4WyWtH' \
    --activeOnly 'false' \
    --appType 'GAME' \
    --collectionId 'XyNLq7AmeolEGe8m' \
    --entitlementClazz 'APP' \
    --entitlementName 'aUSRguzBsUanYmCW' \
    --features '["bg0m9rZLqgVc1KL3", "791pG8y36KtBV1Gi", "D09Y9ovDF6fqvDex"]' \
    --fuzzyMatchName 'false' \
    --itemId '["m9TkqQ8POqx745gM", "hu1oz0hYe7YZmFY9", "MFNX5oAL31ghmMwf"]' \
    --limit '13' \
    --offset '91' \
    --origin 'GooglePlay' \
    > test.out 2>&1
eval_tap $? 235 'QueryUserEntitlements' test.out

#- 236 GrantUserEntitlement
samples/cli/sample-apps Platform grantUserEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'KalKnu6Lji0KW81e' \
    --body '[{"collectionId": "iLJ8mKcnweLb7rQZ", "endDate": "1997-04-15T00:00:00Z", "grantedCode": "TigJjoOAmPExMiTI", "itemId": "1k1KJ9kiBBs1eitL", "itemNamespace": "TUOxtZgHPesxVhF5", "language": "fzB", "origin": "Other", "quantity": 43, "region": "cD1JW4ntECPBy3pv", "source": "GIFT", "startDate": "1991-08-18T00:00:00Z", "storeId": "JIIxyz04RD692Wp4"}, {"collectionId": "LzsNnfmSLsi7R4xk", "endDate": "1978-08-30T00:00:00Z", "grantedCode": "roF3tnNNpeS4Cvmj", "itemId": "e8TmCKpwS5AXgXQG", "itemNamespace": "bH0gpVqJK2qXbwbb", "language": "tp_jErh_Gw", "origin": "Steam", "quantity": 51, "region": "ctt4bYeRFFOY9e90", "source": "ACHIEVEMENT", "startDate": "1999-10-19T00:00:00Z", "storeId": "A3HaZs7kftOWcTs7"}, {"collectionId": "u20EIJf3hOUjL88N", "endDate": "1972-07-07T00:00:00Z", "grantedCode": "0GxCA5mXEjIYuKo6", "itemId": "HSzFwOXUZyGKpA7d", "itemNamespace": "3ce7vsaMd6yy3W3f", "language": "zYf", "origin": "GooglePlay", "quantity": 34, "region": "6f88aqFkcdYVQrLb", "source": "PURCHASE", "startDate": "1993-08-18T00:00:00Z", "storeId": "xuKSe60bI6uqnO8v"}]' \
    > test.out 2>&1
eval_tap $? 236 'GrantUserEntitlement' test.out

#- 237 GetUserAppEntitlementByAppId
samples/cli/sample-apps Platform getUserAppEntitlementByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'XLAcc3X6x62bJa5Z' \
    --activeOnly 'true' \
    --appId 'dHhpRRQCy5I0IkPl' \
    > test.out 2>&1
eval_tap $? 237 'GetUserAppEntitlementByAppId' test.out

#- 238 QueryUserEntitlementsByAppType
samples/cli/sample-apps Platform queryUserEntitlementsByAppType \
    --namespace $AB_NAMESPACE \
    --userId 'bNPereejlYMDVJ8K' \
    --activeOnly 'true' \
    --limit '81' \
    --offset '88' \
    --appType 'DEMO' \
    > test.out 2>&1
eval_tap $? 238 'QueryUserEntitlementsByAppType' test.out

#- 239 GetUserEntitlementByItemId
samples/cli/sample-apps Platform getUserEntitlementByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'h1Y8cMcm2TpMOpj1' \
    --activeOnly 'true' \
    --entitlementClazz 'CODE' \
    --platform '0z0Q3PxupWpLoVaW' \
    --itemId 'VRhma7ewz0CNbxNL' \
    > test.out 2>&1
eval_tap $? 239 'GetUserEntitlementByItemId' test.out

#- 240 GetUserActiveEntitlementsByItemIds
samples/cli/sample-apps Platform getUserActiveEntitlementsByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'SaNCmKlPOljudLot' \
    --ids '["DHemx4WAwNOzK8d5", "qGgMPREE6CZZgjkt", "Q2uaeCX9k0l5rkMY"]' \
    --platform 'QGqC9bQkIpf5IJcE' \
    > test.out 2>&1
eval_tap $? 240 'GetUserActiveEntitlementsByItemIds' test.out

#- 241 GetUserEntitlementBySku
samples/cli/sample-apps Platform getUserEntitlementBySku \
    --namespace $AB_NAMESPACE \
    --userId 'uRl3duU6gFeQ6rfr' \
    --activeOnly 'true' \
    --entitlementClazz 'APP' \
    --platform 'njqcXd1XFBZqU4FN' \
    --sku 'WvaktGBfSiGtoDG9' \
    > test.out 2>&1
eval_tap $? 241 'GetUserEntitlementBySku' test.out

#- 242 ExistsAnyUserActiveEntitlement
samples/cli/sample-apps Platform existsAnyUserActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'hOa0eopCEH0ZscDQ' \
    --appIds '["NLv5wipbCNQAtNoW", "B3uh6miBQOYSwEkl", "j0zmNG7GMpyPufq6"]' \
    --itemIds '["JckfyOWCtVHQUAGr", "APN5mp2t81c6XL2A", "zl5DJym0tyZ0a7O7"]' \
    --platform 'SAZkSoEx2fJwYlG5' \
    --skus '["ENZDzJyqeB7l93sa", "iCagpD2mBbxHJyI9", "FiYlvExXGfGh9tVv"]' \
    > test.out 2>&1
eval_tap $? 242 'ExistsAnyUserActiveEntitlement' test.out

#- 243 ExistsAnyUserActiveEntitlementByItemIds
samples/cli/sample-apps Platform existsAnyUserActiveEntitlementByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'bYocTcs5Zvls948S' \
    --platform 'YzVeFgivwJfdH8Y7' \
    --itemIds '["f9tghvDa3hQv2SP4", "G5UjEtl68sSd8wAf", "XRTsDdwaoGbqW9q9"]' \
    > test.out 2>&1
eval_tap $? 243 'ExistsAnyUserActiveEntitlementByItemIds' test.out

#- 244 GetUserAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform getUserAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'wGBkFpmv5cEZqaLx' \
    --appId 'KKfcuqXxv3EVkdUM' \
    > test.out 2>&1
eval_tap $? 244 'GetUserAppEntitlementOwnershipByAppId' test.out

#- 245 GetUserEntitlementOwnershipByItemId
samples/cli/sample-apps Platform getUserEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'z8DEDwmtOydbEzwH' \
    --entitlementClazz 'OPTIONBOX' \
    --platform '3WMZvivTIuAKkffg' \
    --itemId 'aDoEqxNMpqvvel80' \
    > test.out 2>&1
eval_tap $? 245 'GetUserEntitlementOwnershipByItemId' test.out

#- 246 GetUserEntitlementOwnershipByItemIds
samples/cli/sample-apps Platform getUserEntitlementOwnershipByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'Hs0e1m3akqfv2NLH' \
    --ids '["cul8JhjZt9UurvuJ", "cajnuxDTRYG5zQvi", "EoFe1K9sG4n7CwfZ"]' \
    --platform 'bog4Mk4Had6XLaTj' \
    > test.out 2>&1
eval_tap $? 246 'GetUserEntitlementOwnershipByItemIds' test.out

#- 247 GetUserEntitlementOwnershipBySku
samples/cli/sample-apps Platform getUserEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --userId 'AzwbiwFcRheCUODw' \
    --entitlementClazz 'SUBSCRIPTION' \
    --platform 'du46kAQwMuFskZb8' \
    --sku 'imZyy4UxJIZdzDSX' \
    > test.out 2>&1
eval_tap $? 247 'GetUserEntitlementOwnershipBySku' test.out

#- 248 RevokeAllEntitlements
samples/cli/sample-apps Platform revokeAllEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'pvvIqVjIVchBSMYD' \
    > test.out 2>&1
eval_tap $? 248 'RevokeAllEntitlements' test.out

#- 249 RevokeUserEntitlements
samples/cli/sample-apps Platform revokeUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId '8ftQf5VKK92xWKnl' \
    --entitlementIds 'SEsQox6NL4TFlkpW' \
    > test.out 2>&1
eval_tap $? 249 'RevokeUserEntitlements' test.out

#- 250 GetUserEntitlement
samples/cli/sample-apps Platform getUserEntitlement \
    --entitlementId 'Zdfm6yty7rb3Bddn' \
    --namespace $AB_NAMESPACE \
    --userId 'kpmZfeDmmUmXJ1Wv' \
    > test.out 2>&1
eval_tap $? 250 'GetUserEntitlement' test.out

#- 251 UpdateUserEntitlement
samples/cli/sample-apps Platform updateUserEntitlement \
    --entitlementId 'Cj1EodsHN9JzBsL7' \
    --namespace $AB_NAMESPACE \
    --userId 'hGsn4sL7p8JvzRTM' \
    --body '{"collectionId": "vPWwG2EFQ8YZFeZS", "endDate": "1980-11-22T00:00:00Z", "nullFieldList": ["xJL7NIo7VRXQoAND", "xhJvoTpBlHvPjsyK", "pJniJxFp7eIvqqpa"], "origin": "System", "reason": "3UMzhoCkdeNGs9pU", "startDate": "1985-01-14T00:00:00Z", "status": "INACTIVE", "useCount": 41}' \
    > test.out 2>&1
eval_tap $? 251 'UpdateUserEntitlement' test.out

#- 252 ConsumeUserEntitlement
samples/cli/sample-apps Platform consumeUserEntitlement \
    --entitlementId 'j7gmwwNrWqZ7I65M' \
    --namespace $AB_NAMESPACE \
    --userId 'TJBK6pMneAvmtOtP' \
    --body '{"options": ["a2uC7Sv9fLeQe7qx", "vZLN476zp7sVFZIS", "MBnQHbvwTk9Iu9M7"], "platform": "HYGTm53qcGsrHJZc", "requestId": "0Ae4Ucuobc93Uqse", "useCount": 15}' \
    > test.out 2>&1
eval_tap $? 252 'ConsumeUserEntitlement' test.out

#- 253 DisableUserEntitlement
samples/cli/sample-apps Platform disableUserEntitlement \
    --entitlementId 'bBcsQkIDtlNhROMb' \
    --namespace $AB_NAMESPACE \
    --userId '5Se0OEIUjlB4px5y' \
    > test.out 2>&1
eval_tap $? 253 'DisableUserEntitlement' test.out

#- 254 EnableUserEntitlement
samples/cli/sample-apps Platform enableUserEntitlement \
    --entitlementId 'OlStVvqBXvsxK2Ct' \
    --namespace $AB_NAMESPACE \
    --userId '0cQ35IcFChOy925e' \
    > test.out 2>&1
eval_tap $? 254 'EnableUserEntitlement' test.out

#- 255 GetUserEntitlementHistories
samples/cli/sample-apps Platform getUserEntitlementHistories \
    --entitlementId 'YTOZIjMNYzWNSb4q' \
    --namespace $AB_NAMESPACE \
    --userId 'jp7RWUU0p0PGBoyn' \
    > test.out 2>&1
eval_tap $? 255 'GetUserEntitlementHistories' test.out

#- 256 RevokeUserEntitlement
samples/cli/sample-apps Platform revokeUserEntitlement \
    --entitlementId 'kP5syJTwO4KLwHwq' \
    --namespace $AB_NAMESPACE \
    --userId 'wtd2VOKEQfc8HswZ' \
    > test.out 2>&1
eval_tap $? 256 'RevokeUserEntitlement' test.out

#- 257 RevokeUserEntitlementByUseCount
samples/cli/sample-apps Platform revokeUserEntitlementByUseCount \
    --entitlementId 'yujPDCBZVFYL9RPE' \
    --namespace $AB_NAMESPACE \
    --userId 'O2I9ITHmrQIdqBJb' \
    --body '{"reason": "dhPoGhFfM5Voo2Yp", "useCount": 96}' \
    > test.out 2>&1
eval_tap $? 257 'RevokeUserEntitlementByUseCount' test.out

#- 258 PreCheckRevokeUserEntitlementByUseCount
samples/cli/sample-apps Platform preCheckRevokeUserEntitlementByUseCount \
    --entitlementId 'twF2EU59Fx9pTobq' \
    --namespace $AB_NAMESPACE \
    --userId 'LLXzI4hv7cwvLpGS' \
    --quantity '56' \
    > test.out 2>&1
eval_tap $? 258 'PreCheckRevokeUserEntitlementByUseCount' test.out

#- 259 RevokeUseCount
eval_tap 0 259 'RevokeUseCount # SKIP deprecated' test.out

#- 260 SellUserEntitlement
samples/cli/sample-apps Platform sellUserEntitlement \
    --entitlementId 'y2W9Q0iLodRRmG9M' \
    --namespace $AB_NAMESPACE \
    --userId 'a6595Gmoo9ZVqwqO' \
    --body '{"platform": "LaG74biIhDK3Eg3G", "requestId": "yE9lSGhaJzvrkYik", "useCount": 37}' \
    > test.out 2>&1
eval_tap $? 260 'SellUserEntitlement' test.out

#- 261 FulfillItem
samples/cli/sample-apps Platform fulfillItem \
    --namespace $AB_NAMESPACE \
    --userId 'iMoheA66fu80mJUP' \
    --body '{"duration": 96, "endDate": "1982-08-22T00:00:00Z", "entitlementCollectionId": "iAN1NaY0UGyfPffV", "entitlementOrigin": "Epic", "itemId": "rejMSX1XmKzyQE2p", "itemSku": "Z0nm1QQPnNevnFxw", "language": "TxwNBUhCmKCPLQ2a", "metadata": {"SYtqjsTpHdzFk22h": {}, "N7lQCMLMHo1srpc5": {}, "Ix6flArnNxrG0ZOY": {}}, "order": {"currency": {"currencyCode": "CZzzUw6SXUvYaZcc", "currencySymbol": "ofvoiX1QXD4iwniw", "currencyType": "REAL", "decimals": 43, "namespace": "y3P8IsxhrBhVii69"}, "ext": {"DWkBmsN6mBHWj6rD": {}, "3CgeSGh6b8rw4cB9": {}, "nzDQnle8ylJbRTeD": {}}, "free": true}, "orderNo": "kFs3swEWDF0A5ztr", "origin": "Twitch", "overrideBundleItemQty": {"umVQ4ebOmePJ6yK1": 30, "xrYWx2pE5cwzGrFm": 5, "IVTDTDSjcJBJEI07": 8}, "quantity": 57, "region": "XDD75dGhVuCDxNo4", "source": "ORDER_REVOCATION", "startDate": "1993-10-18T00:00:00Z", "storeId": "K7FS7tPiKLDvX7PK"}' \
    > test.out 2>&1
eval_tap $? 261 'FulfillItem' test.out

#- 262 RedeemCode
samples/cli/sample-apps Platform redeemCode \
    --namespace $AB_NAMESPACE \
    --userId '1Z5AgL0dpaBCfALT' \
    --body '{"code": "kNIF4w4SfvpCdrAr", "language": "gfJ-Xakn_cO", "region": "QpQI7CMGLuz8sr3m"}' \
    > test.out 2>&1
eval_tap $? 262 'RedeemCode' test.out

#- 263 PreCheckFulfillItem
samples/cli/sample-apps Platform preCheckFulfillItem \
    --namespace $AB_NAMESPACE \
    --userId 'JhKDqq3V7fuTSl33' \
    --body '{"itemId": "tPM9iaYCZTLu1uyk", "itemSku": "h8wd5mZYqiUS6ZWu", "quantity": 50}' \
    > test.out 2>&1
eval_tap $? 263 'PreCheckFulfillItem' test.out

#- 264 FulfillRewards
samples/cli/sample-apps Platform fulfillRewards \
    --namespace $AB_NAMESPACE \
    --userId 'Pk9eCzuvxwhUZ3Xm' \
    --body '{"entitlementCollectionId": "QjHXKPkv208LcMnc", "entitlementOrigin": "GooglePlay", "metadata": {"BZuTr5CQKOUYwvdr": {}, "QOnVODmPUgiHSxwu": {}, "GYpszUUQP7LtsRSQ": {}}, "origin": "Playstation", "rewards": [{"currency": {"currencyCode": "uwV9xdoPAidZvMu7", "namespace": "Mu5C3XwAmzRM8prZ"}, "item": {"itemId": "3u3lnE1RSs2vfC36", "itemSku": "wnwmbHKPS2qdfBFM", "itemType": "ZTu9wu3nCihCGP6U"}, "quantity": 20, "type": "CURRENCY"}, {"currency": {"currencyCode": "QU8SvsyIMyGc6pWH", "namespace": "k7z3Zb9NczARagu5"}, "item": {"itemId": "tz1S7zUSRPMlTNiq", "itemSku": "16fE3rbsIEDFzuhH", "itemType": "aujrVtLP6w2lUidb"}, "quantity": 70, "type": "CURRENCY"}, {"currency": {"currencyCode": "YTCLYeTnXuAwCRvC", "namespace": "fKFtfbXC3InaDUZR"}, "item": {"itemId": "LO9U8NNO9N7JpDMz", "itemSku": "7Hfm3v639Lpwqia1", "itemType": "oJZ4pTHpEAdwJcx6"}, "quantity": 30, "type": "CURRENCY"}], "source": "REWARD", "transactionId": "jqYH62cTk2CtmLD7"}' \
    > test.out 2>&1
eval_tap $? 264 'FulfillRewards' test.out

#- 265 QueryUserIAPOrders
samples/cli/sample-apps Platform queryUserIAPOrders \
    --namespace $AB_NAMESPACE \
    --userId '8SeuqSpd7u6uAte1' \
    --endTime 'BFji8NOncUZIiqhO' \
    --limit '47' \
    --offset '62' \
    --productId '3gChEm6aHI4cIMpA' \
    --startTime 'ySDJXkIFD7G2WgfO' \
    --status 'FULFILLED' \
    --type 'TWITCH' \
    > test.out 2>&1
eval_tap $? 265 'QueryUserIAPOrders' test.out

#- 266 QueryAllUserIAPOrders
samples/cli/sample-apps Platform queryAllUserIAPOrders \
    --namespace $AB_NAMESPACE \
    --userId 'mtJekhVt3O4z31oe' \
    > test.out 2>&1
eval_tap $? 266 'QueryAllUserIAPOrders' test.out

#- 267 QueryUserIAPConsumeHistory
samples/cli/sample-apps Platform queryUserIAPConsumeHistory \
    --namespace $AB_NAMESPACE \
    --userId 'Gv0AueGlMjIvD9T2' \
    --endTime 'z3oaD6xvcvZvtMAh' \
    --limit '100' \
    --offset '55' \
    --startTime 'QWyVCtgcbMKfP5Ur' \
    --status 'PENDING' \
    --type 'STEAM' \
    > test.out 2>&1
eval_tap $? 267 'QueryUserIAPConsumeHistory' test.out

#- 268 MockFulfillIAPItem
samples/cli/sample-apps Platform mockFulfillIAPItem \
    --namespace $AB_NAMESPACE \
    --userId '57yiPZ0XoeeVm1Sd' \
    --body '{"itemIdentityType": "ITEM_SKU", "language": "aCCe_536", "productId": "eVtNyvfu69mws9SD", "region": "aBEEU8SIpPOOdvXV", "transactionId": "uo9oE2E3Eds0akGq", "type": "TWITCH"}' \
    > test.out 2>&1
eval_tap $? 268 'MockFulfillIAPItem' test.out

#- 269 QueryUserOrders
samples/cli/sample-apps Platform queryUserOrders \
    --namespace $AB_NAMESPACE \
    --userId 'TKJFfWNi8t3sBkcd' \
    --discounted 'true' \
    --itemId 'JtC400WHPnHXK4Vo' \
    --limit '3' \
    --offset '66' \
    --status 'REFUNDING' \
    > test.out 2>&1
eval_tap $? 269 'QueryUserOrders' test.out

#- 270 AdminCreateUserOrder
samples/cli/sample-apps Platform adminCreateUserOrder \
    --namespace $AB_NAMESPACE \
    --userId '8i5mfvc8mZiTnuU1' \
    --body '{"currencyCode": "gjbg02Ul5069mTCw", "currencyNamespace": "ojsbexpE6NO7BGQW", "discountCodes": ["scrE10rq6onPLZbA", "iQ9Y5eFqIHu0UYSE", "FsJEM01kLkQZX8Rs"], "discountedPrice": 21, "entitlementPlatform": "GooglePlay", "ext": {"bHuJRZaqfCjLhnx9": {}, "mPvAs4rBlBRpEY2u": {}, "8GYdrAFGxCjHBGEZ": {}}, "itemId": "qOGuYaQLnetbqBzv", "language": "G8h4yrwkE1FTWHay", "options": {"skipPriceValidation": false}, "platform": "Oculus", "price": 33, "quantity": 8, "region": "P4J9CVWKXa00hMGG", "returnUrl": "qKsq3zyn9gqaOT0K", "sandbox": false, "sectionId": "dEKvTPhamanGPTD3"}' \
    > test.out 2>&1
eval_tap $? 270 'AdminCreateUserOrder' test.out

#- 271 CountOfPurchasedItem
samples/cli/sample-apps Platform countOfPurchasedItem \
    --namespace $AB_NAMESPACE \
    --userId '1eM7PI2Ba4N8Bdf3' \
    --itemId '84tbZypaPs6DTG3W' \
    > test.out 2>&1
eval_tap $? 271 'CountOfPurchasedItem' test.out

#- 272 GetUserOrder
samples/cli/sample-apps Platform getUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'll3swOkbdMWnWoxb' \
    --userId 'INEfHoXE3ryrMJdw' \
    > test.out 2>&1
eval_tap $? 272 'GetUserOrder' test.out

#- 273 UpdateUserOrderStatus
samples/cli/sample-apps Platform updateUserOrderStatus \
    --namespace $AB_NAMESPACE \
    --orderNo 'Ve7ChaVoEFwcKABN' \
    --userId '82aez7GyNb1EJKfH' \
    --body '{"status": "CHARGEBACK", "statusReason": "VRtj4kasAbGtuJ2e"}' \
    > test.out 2>&1
eval_tap $? 273 'UpdateUserOrderStatus' test.out

#- 274 FulfillUserOrder
samples/cli/sample-apps Platform fulfillUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo '9oKWGhwi31Ngzuio' \
    --userId '7I5ePJPDrRmkgTVs' \
    > test.out 2>&1
eval_tap $? 274 'FulfillUserOrder' test.out

#- 275 GetUserOrderGrant
eval_tap 0 275 'GetUserOrderGrant # SKIP deprecated' test.out

#- 276 GetUserOrderHistories
samples/cli/sample-apps Platform getUserOrderHistories \
    --namespace $AB_NAMESPACE \
    --orderNo 'Sv4p7qRAx4KpQ7x8' \
    --userId 'c5Drx1MMJXtU2yjP' \
    > test.out 2>&1
eval_tap $? 276 'GetUserOrderHistories' test.out

#- 277 ProcessUserOrderNotification
samples/cli/sample-apps Platform processUserOrderNotification \
    --namespace $AB_NAMESPACE \
    --orderNo 'QZHig4JvxZqOaUe5' \
    --userId 'VOTLK6H4O6HsWfmf' \
    --body '{"additionalData": {"cardSummary": "K5xmfQnD3ARPVAvt"}, "authorisedTime": "1984-10-27T00:00:00Z", "chargebackReversedTime": "1997-12-01T00:00:00Z", "chargebackTime": "1998-08-22T00:00:00Z", "chargedTime": "1972-07-21T00:00:00Z", "createdTime": "1999-01-31T00:00:00Z", "currency": {"currencyCode": "SV0IY5j1RUsJaEdK", "currencySymbol": "4RxfafGIIYCVyxIK", "currencyType": "REAL", "decimals": 95, "namespace": "h9XJgvDN5l3l2ovv"}, "customParameters": {"CHVg9K7GoBW0a7L3": {}, "cAZ49ud5pVkShcVz": {}, "JmPUXcjoacNdrnPL": {}}, "extOrderNo": "oXjBRmMHPYApcNLI", "extTxId": "jMooCqou3dfyDuWq", "extUserId": "zflZ1N3Hg8lIyiDM", "issuedAt": "1982-04-06T00:00:00Z", "metadata": {"5bDIGRvsNLTCyoM5": "IyulkURiVKAXaHOi", "glaEdLiohvibk5t3": "Ue1gCq4J7wU70zdv", "c1LNdIieuJwKoUMG": "J41AMG1HX9XSlfhX"}, "namespace": "S9Iat0EO9AjQwecR", "nonceStr": "8ClWkC7TQDoS9kmF", "paymentMethod": "Oo7fiyAsadXDgZRx", "paymentMethodFee": 78, "paymentOrderNo": "2J46klnE7P8HqKIi", "paymentProvider": "STRIPE", "paymentProviderFee": 90, "paymentStationUrl": "fRUKaM8Fximn74FH", "price": 62, "refundedTime": "1986-03-25T00:00:00Z", "salesTax": 75, "sandbox": true, "sku": "gBOcQelL0Nyg3pbF", "status": "DELETED", "statusReason": "xbW6ZpNR1w7yxEIU", "subscriptionId": "IRHoxLLQrYF6ItuE", "subtotalPrice": 47, "targetNamespace": "PLTXzmcp66F9Jjis", "targetUserId": "QfLxscf3RT8ybTrh", "tax": 28, "totalPrice": 89, "totalTax": 72, "txEndTime": "1993-08-01T00:00:00Z", "type": "gvwdZH1lEKUVEq1k", "userId": "MFXpvkYZtTfiYrdm", "vat": 18}' \
    > test.out 2>&1
eval_tap $? 277 'ProcessUserOrderNotification' test.out

#- 278 DownloadUserOrderReceipt
samples/cli/sample-apps Platform downloadUserOrderReceipt \
    --namespace $AB_NAMESPACE \
    --orderNo 'EF6MbNQk323bRXA6' \
    --userId 'UTLYYXiqrEHKaPo5' \
    > test.out 2>&1
eval_tap $? 278 'DownloadUserOrderReceipt' test.out

#- 279 CreateUserPaymentOrder
samples/cli/sample-apps Platform createUserPaymentOrder \
    --namespace $AB_NAMESPACE \
    --userId 'M0MHD9FLDYb0pSAO' \
    --body '{"currencyCode": "B9XvDhQoZ1mtHZcX", "currencyNamespace": "rYInZ4qzWVsFGN2u", "customParameters": {"A1kQnPbfvkQkgtJ1": {}, "xYxlXcwDggDWdn8K": {}, "84PylgvUC5u27gJ4": {}}, "description": "MxwgZrDRSTvnVe2g", "extOrderNo": "83DLxJDfIGTqoEEV", "extUserId": "Hl5IZv8NWrQ1wqtF", "itemType": "APP", "language": "yy-KDtE_147", "metadata": {"CJEnctuoYhjJveoQ": "UkqkMUawNvvIj6LH", "rEJOkwOWf4rvl965": "1LWIEnB0uOl5JDgs", "EXnc2C7UFKBGo5WT": "1lBdlNnE2zEtldJe"}, "notifyUrl": "ckai8rQsYbVuWCUF", "omitNotification": false, "platform": "G8tzd2yWvugArfYG", "price": 29, "recurringPaymentOrderNo": "uCt9TDUgBJJrJuNA", "region": "8lja79wxZG09Pdo2", "returnUrl": "zps0CvvW7fBG4RQv", "sandbox": true, "sku": "oZZ1ztYdWEq7A9K2", "subscriptionId": "BkdvjPniclEaCii6", "title": "WIXWJmw5e1ut361O"}' \
    > test.out 2>&1
eval_tap $? 279 'CreateUserPaymentOrder' test.out

#- 280 RefundUserPaymentOrder
samples/cli/sample-apps Platform refundUserPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'h1l4XSv9cL8OJft1' \
    --userId 'bPnzvUyn1MzdR5pr' \
    --body '{"description": "tDGjtoySIIzxNSuo"}' \
    > test.out 2>&1
eval_tap $? 280 'RefundUserPaymentOrder' test.out

#- 281 GetUserPlatformAccountClosureHistories
samples/cli/sample-apps Platform getUserPlatformAccountClosureHistories \
    --namespace $AB_NAMESPACE \
    --userId 'orhFSZ9tob0f11jn' \
    > test.out 2>&1
eval_tap $? 281 'GetUserPlatformAccountClosureHistories' test.out

#- 282 ApplyUserRedemption
samples/cli/sample-apps Platform applyUserRedemption \
    --namespace $AB_NAMESPACE \
    --userId '2tlVk1G7G7kVl9uY' \
    --body '{"code": "o4K6fd4m9daqGIvr", "orderNo": "9GPne4bRa0kZ8Orw"}' \
    > test.out 2>&1
eval_tap $? 282 'ApplyUserRedemption' test.out

#- 283 DoRevocation
samples/cli/sample-apps Platform doRevocation \
    --namespace $AB_NAMESPACE \
    --userId 'YOPpHGuOHSb9rBUi' \
    --body '{"meta": {"kFXccnsFvF9zqwUn": {}, "uDp5NSu2DkC7z37x": {}, "etmIr1zRSW5hqktl": {}}, "revokeEntries": [{"currency": {"balanceOrigin": "System", "currencyCode": "NuiOnrUAcX7rgYbQ", "namespace": "hYoReAPAHJ36xaDu"}, "entitlement": {"entitlementId": "4Uta7L1qa4TFfz9x"}, "item": {"entitlementOrigin": "Oculus", "itemIdentity": "5fXorVurAttBKZQr", "itemIdentityType": "ITEM_ID", "origin": "Epic"}, "quantity": 61, "type": "ENTITLEMENT"}, {"currency": {"balanceOrigin": "Playstation", "currencyCode": "13phXZr1lxiL54CX", "namespace": "lynqH3cZU2JVIB8r"}, "entitlement": {"entitlementId": "Qb7hKvvCJWgqGkKX"}, "item": {"entitlementOrigin": "Other", "itemIdentity": "XXnF69IfIsOcnH38", "itemIdentityType": "ITEM_SKU", "origin": "IOS"}, "quantity": 6, "type": "CURRENCY"}, {"currency": {"balanceOrigin": "Xbox", "currencyCode": "VxEcb91W62FZh8qQ", "namespace": "0jidyN6nG7D1sx6e"}, "entitlement": {"entitlementId": "SYaTV3mQx9Y5sfbB"}, "item": {"entitlementOrigin": "Twitch", "itemIdentity": "nDkXlyiuDGJxXwL1", "itemIdentityType": "ITEM_SKU", "origin": "Xbox"}, "quantity": 33, "type": "ITEM"}], "source": "DLC", "transactionId": "gNJSVQsriGzoHXSA"}' \
    > test.out 2>&1
eval_tap $? 283 'DoRevocation' test.out

#- 284 RegisterXblSessions
samples/cli/sample-apps Platform registerXblSessions \
    --namespace $AB_NAMESPACE \
    --userId '4wAKA706ETlYXnAE' \
    --body '{"gameSessionId": "TJIODkUNMp4WJFDI", "payload": {"h7FdKZAkS993ceE7": {}, "CpbZW7hfFmwlcI49": {}, "CyZKv8LWpxPRmpui": {}}, "scid": "0uKhFq2b8cuizgfM", "sessionTemplateName": "tnUpZGlRZG43b01s"}' \
    > test.out 2>&1
eval_tap $? 284 'RegisterXblSessions' test.out

#- 285 QueryUserSubscriptions
samples/cli/sample-apps Platform queryUserSubscriptions \
    --namespace $AB_NAMESPACE \
    --userId 'naucnlBXyWg55Gia' \
    --chargeStatus 'RECURRING_CHARGING' \
    --itemId 'oa7Uco8Hcow9vInU' \
    --limit '20' \
    --offset '68' \
    --sku 'NstilrRmS3xvOMFP' \
    --status 'INIT' \
    --subscribedBy 'USER' \
    > test.out 2>&1
eval_tap $? 285 'QueryUserSubscriptions' test.out

#- 286 GetUserSubscriptionActivities
samples/cli/sample-apps Platform getUserSubscriptionActivities \
    --namespace $AB_NAMESPACE \
    --userId 'Mrh2cKwX2w0H673y' \
    --excludeSystem 'true' \
    --limit '21' \
    --offset '34' \
    --subscriptionId 'sxkrfTzlrS3n1w9i' \
    > test.out 2>&1
eval_tap $? 286 'GetUserSubscriptionActivities' test.out

#- 287 PlatformSubscribeSubscription
samples/cli/sample-apps Platform platformSubscribeSubscription \
    --namespace $AB_NAMESPACE \
    --userId 'bkdsERdmB0rnYICb' \
    --body '{"grantDays": 74, "itemId": "FIkHpiGc8VpgEGss", "language": "I8iQ1Z3FH8ax6AUJ", "reason": "r7NuUFhlWf6v2Hvp", "region": "5H7egGB2Yae0U33N", "source": "W8J14xnNbj7OeNgT"}' \
    > test.out 2>&1
eval_tap $? 287 'PlatformSubscribeSubscription' test.out

#- 288 CheckUserSubscriptionSubscribableByItemId
samples/cli/sample-apps Platform checkUserSubscriptionSubscribableByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'LNFNAkR8BzL4a0vz' \
    --itemId 'yBbn2kx0pwbxI5hI' \
    > test.out 2>&1
eval_tap $? 288 'CheckUserSubscriptionSubscribableByItemId' test.out

#- 289 GetUserSubscription
samples/cli/sample-apps Platform getUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId '8DbcRsI7hFHKd8LA' \
    --userId 'XlKqUdWYYHIMN2OV' \
    > test.out 2>&1
eval_tap $? 289 'GetUserSubscription' test.out

#- 290 DeleteUserSubscription
samples/cli/sample-apps Platform deleteUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'L1rRi5tidc0Ujq2c' \
    --userId 'Kg96vADFAzZHRlhL' \
    > test.out 2>&1
eval_tap $? 290 'DeleteUserSubscription' test.out

#- 291 CancelSubscription
samples/cli/sample-apps Platform cancelSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId '9dKiNQxJPyj3kShn' \
    --userId 'rYWMPu47UedgEObN' \
    --force 'true' \
    --body '{"immediate": true, "reason": "6ZV1keiuLlaxfgKO"}' \
    > test.out 2>&1
eval_tap $? 291 'CancelSubscription' test.out

#- 292 GrantDaysToSubscription
samples/cli/sample-apps Platform grantDaysToSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId '96oYuoYUsRxR567o' \
    --userId 'BuTErqdNUtYCIyNl' \
    --body '{"grantDays": 54, "reason": "xFTi0r7qZUujZlFX"}' \
    > test.out 2>&1
eval_tap $? 292 'GrantDaysToSubscription' test.out

#- 293 GetUserSubscriptionBillingHistories
samples/cli/sample-apps Platform getUserSubscriptionBillingHistories \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'OS4LGAzo08unTY8p' \
    --userId '9SgVbzOMSDmDPbjR' \
    --excludeFree 'false' \
    --limit '83' \
    --offset '46' \
    > test.out 2>&1
eval_tap $? 293 'GetUserSubscriptionBillingHistories' test.out

#- 294 ProcessUserSubscriptionNotification
samples/cli/sample-apps Platform processUserSubscriptionNotification \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'dLE7FxZXFp5dCxUS' \
    --userId 'DGJe1njgZAU23sD0' \
    --body '{"additionalData": {"cardSummary": "NAEoud6GgBfIBP11"}, "authorisedTime": "1989-07-21T00:00:00Z", "chargebackReversedTime": "1994-07-05T00:00:00Z", "chargebackTime": "1990-08-27T00:00:00Z", "chargedTime": "1981-08-10T00:00:00Z", "createdTime": "1971-03-31T00:00:00Z", "currency": {"currencyCode": "Eb90OxESzyiXmvOq", "currencySymbol": "bkIAeG1IbIftI2ju", "currencyType": "REAL", "decimals": 81, "namespace": "ixF6KZ8ayow8kKBg"}, "customParameters": {"lxcGeDS1SquJSaSZ": {}, "AWSlGFKfJEcqqaQ8": {}, "fp5HI16f6Lr6iU5I": {}}, "extOrderNo": "pb14ByLaPXawGOWu", "extTxId": "cEMWNlpXkHJeFDjx", "extUserId": "qpZHs2EYhhakrmiG", "issuedAt": "1989-11-26T00:00:00Z", "metadata": {"54CXFSMJkFQptYgI": "pC95myeIqpCdaerO", "uE1mFSEuFeHmEAwm": "j94Vn2nARG2Jw7Fi", "RHrH4GHwLcKCxbLL": "cMcrwGtViEGYJYmp"}, "namespace": "EJaOE9EbWL2uh5tU", "nonceStr": "lGN6algpPap1qnCg", "paymentMethod": "luZIdP65yuHmE6nm", "paymentMethodFee": 25, "paymentOrderNo": "hNMR9x1ZFOZ5L7QQ", "paymentProvider": "CHECKOUT", "paymentProviderFee": 64, "paymentStationUrl": "cAYIeLMR87RUzlAs", "price": 91, "refundedTime": "1986-06-19T00:00:00Z", "salesTax": 66, "sandbox": true, "sku": "8GKLERvSdingzAHk", "status": "REQUEST_FOR_INFORMATION", "statusReason": "JCnUwNPEMojx1Stb", "subscriptionId": "0fM3s4FzyRUi2ufR", "subtotalPrice": 59, "targetNamespace": "sU3EU8KSVnLPr9Ec", "targetUserId": "NJVNVbClVM7xMUzZ", "tax": 40, "totalPrice": 66, "totalTax": 35, "txEndTime": "1996-11-24T00:00:00Z", "type": "0yFJfT64q8MbrnDm", "userId": "wnjq9u0yShZ6hlHS", "vat": 34}' \
    > test.out 2>&1
eval_tap $? 294 'ProcessUserSubscriptionNotification' test.out

#- 295 AcquireUserTicket
samples/cli/sample-apps Platform acquireUserTicket \
    --boothName '4jI9eToyzJP29zid' \
    --namespace $AB_NAMESPACE \
    --userId 'x7eEks8Bw3kQRPMC' \
    --body '{"count": 98, "orderNo": "bjtLiyqXBGZ3Curj"}' \
    > test.out 2>&1
eval_tap $? 295 'AcquireUserTicket' test.out

#- 296 QueryUserCurrencyWallets
samples/cli/sample-apps Platform queryUserCurrencyWallets \
    --namespace $AB_NAMESPACE \
    --userId 'AdCqSNixVJEfayiK' \
    > test.out 2>&1
eval_tap $? 296 'QueryUserCurrencyWallets' test.out

#- 297 DebitUserWalletByCurrencyCode
samples/cli/sample-apps Platform debitUserWalletByCurrencyCode \
    --currencyCode 'X0I9ITaAR4NFhyXo' \
    --namespace $AB_NAMESPACE \
    --userId 'd4qTlaApV80LvGt2' \
    --body '{"allowOverdraft": true, "amount": 18, "balanceOrigin": "Playstation", "balanceSource": "OTHER", "metadata": {"0RcAfV0ZViCS22j3": {}, "5gzHjNhkbxlZRYDX": {}, "WH9tgMSLwzxF4FfQ": {}}, "reason": "SCewf6Qanp71emkU"}' \
    > test.out 2>&1
eval_tap $? 297 'DebitUserWalletByCurrencyCode' test.out

#- 298 ListUserCurrencyTransactions
samples/cli/sample-apps Platform listUserCurrencyTransactions \
    --currencyCode '3S24dTQJ6lBtU86r' \
    --namespace $AB_NAMESPACE \
    --userId 'Nnzf5izzc2TVo6lZ' \
    --limit '56' \
    --offset '90' \
    > test.out 2>&1
eval_tap $? 298 'ListUserCurrencyTransactions' test.out

#- 299 CheckBalance
samples/cli/sample-apps Platform checkBalance \
    --currencyCode 'GE32znqXFu4dTY3I' \
    --namespace $AB_NAMESPACE \
    --userId 'Tq8ysqLsXW0LhE1d' \
    --request '{"amount": 67, "debitBalanceSource": "PAYMENT", "metadata": {"3avqOPr6nTeH7ZPF": {}, "KLjc1BcXxB2ac63w": {}, "8qLqHN8uZpWvpYuO": {}}, "reason": "UU08NlGVho4sdOjl", "walletPlatform": "Epic"}' \
    > test.out 2>&1
eval_tap $? 299 'CheckBalance' test.out

#- 300 CheckWallet
eval_tap 0 300 'CheckWallet # SKIP deprecated' test.out

#- 301 CreditUserWallet
samples/cli/sample-apps Platform creditUserWallet \
    --currencyCode 'UqXJ4hRmQBQ99Xvq' \
    --namespace $AB_NAMESPACE \
    --userId 'XjrWi5CaWMJ9Ffbx' \
    --body '{"amount": 68, "expireAt": "1991-06-10T00:00:00Z", "metadata": {"0HZ6PbTRVbcgnjme": {}, "sMIuBokYhaghIm2f": {}, "OzwgOGp0KHRijwoR": {}}, "origin": "IOS", "reason": "zCLSWXNL0AAJ8RoU", "source": "REFERRAL_BONUS"}' \
    > test.out 2>&1
eval_tap $? 301 'CreditUserWallet' test.out

#- 302 DebitByWalletPlatform
samples/cli/sample-apps Platform debitByWalletPlatform \
    --currencyCode 'Y6ixPvgBVcOoLGQ6' \
    --namespace $AB_NAMESPACE \
    --userId 'lq95cgEkx9lzjyEM' \
    --request '{"amount": 35, "debitBalanceSource": "TRADE", "metadata": {"vugx7sIrn7AaZrrx": {}, "BxN03v6GQOgxrubw": {}, "evqd1nTztqksz5Y5": {}}, "reason": "MMjPgKYFiRcfEEDw", "walletPlatform": "IOS"}' \
    > test.out 2>&1
eval_tap $? 302 'DebitByWalletPlatform' test.out

#- 303 PayWithUserWallet
samples/cli/sample-apps Platform payWithUserWallet \
    --currencyCode 'SpgKr71ADZA27YlF' \
    --namespace $AB_NAMESPACE \
    --userId 'DuRkXFEUrmtXe2hW' \
    --body '{"amount": 20, "metadata": {"hpscDuHNd1W5tIFt": {}, "HASrmzSB92BesYcO": {}, "BHMOBHoGqy95gLxI": {}}, "walletPlatform": "Nintendo"}' \
    > test.out 2>&1
eval_tap $? 303 'PayWithUserWallet' test.out

#- 304 GetUserWallet
eval_tap 0 304 'GetUserWallet # SKIP deprecated' test.out

#- 305 DebitUserWallet
eval_tap 0 305 'DebitUserWallet # SKIP deprecated' test.out

#- 306 DisableUserWallet
eval_tap 0 306 'DisableUserWallet # SKIP deprecated' test.out

#- 307 EnableUserWallet
eval_tap 0 307 'EnableUserWallet # SKIP deprecated' test.out

#- 308 ListUserWalletTransactions
eval_tap 0 308 'ListUserWalletTransactions # SKIP deprecated' test.out

#- 309 ListViews
samples/cli/sample-apps Platform listViews \
    --namespace $AB_NAMESPACE \
    --storeId 'X22HRacfm0LCxJSx' \
    > test.out 2>&1
eval_tap $? 309 'ListViews' test.out

#- 310 CreateView
samples/cli/sample-apps Platform createView \
    --namespace $AB_NAMESPACE \
    --storeId 'foacwKI4VvpcePWP' \
    --body '{"displayOrder": 64, "localizations": {"TXVKkbFqEnlHYYSI": {"description": "MjkuOyqeASb3I4qz", "localExt": {"rWck2UZijasfjUfu": {}, "3b8JuptGrRc6xcax": {}, "FxDrMLTeNOtwWbdw": {}}, "longDescription": "M65LdjiRY9v2IgF8", "title": "kZdBvrSsxfIYmR7j"}, "JULe0E7sSBBggdIY": {"description": "X4s69qpfZQgh6876", "localExt": {"2k5W7ETOgyZYUNbL": {}, "4vzlMtIg0MnObjya": {}, "4cQB2NDMzQHmh0hF": {}}, "longDescription": "eKgmcjBlkenODE18", "title": "10KCMh2ehtGogiPO"}, "dkmkVVwYItGwD1K5": {"description": "ZUqKvLUlTRf1E9Ka", "localExt": {"vwSar7yLbd2iFvmV": {}, "604hxoascgJlc1wM": {}, "tAzgvPQIEU4MNPME": {}}, "longDescription": "4RtRuDmpFO3SKxMi", "title": "gkc3EWQBydq3HEDL"}}, "name": "YG4jGg3QCITcrylt"}' \
    > test.out 2>&1
eval_tap $? 310 'CreateView' test.out

#- 311 GetView
samples/cli/sample-apps Platform getView \
    --namespace $AB_NAMESPACE \
    --viewId 'JqX6pIce86Cb8hIt' \
    --storeId 'OlNYENZDnHfOAIgK' \
    > test.out 2>&1
eval_tap $? 311 'GetView' test.out

#- 312 UpdateView
samples/cli/sample-apps Platform updateView \
    --namespace $AB_NAMESPACE \
    --viewId 'gfdLtNzFNFmInzsO' \
    --storeId 'a39ZXeVedSTWpqwD' \
    --body '{"displayOrder": 35, "localizations": {"WLnqaO4fz3l1tRIw": {"description": "Mytmb1MzKSFv9yRu", "localExt": {"6uePcYwfg9YdbjA3": {}, "gxcOOEFku1I6ntLS": {}, "mlWaZrGpbFwvLvbv": {}}, "longDescription": "OICDNs2ZE78vEbya", "title": "bKeumHdCOKgNd2fY"}, "eJux5lbRhCsqXb5d": {"description": "ntfeQJ3aQDu8jUMG", "localExt": {"Krx8ZIPa9N36avp5": {}, "B60DDmUX3sPFr3gX": {}, "CWUcCznYTIY5DE3i": {}}, "longDescription": "LZODB54b7oAvSnHR", "title": "zQ869M61bjeg76UD"}, "I5W86wru8CZDjOAK": {"description": "t6BRLqm60LOL30mJ", "localExt": {"fgmofAZRfW4kpEDT": {}, "H1CWvZdrKF9D6j96": {}, "SzlN2VAR5LiNtyCk": {}}, "longDescription": "4kgKQPYwHcI4Kkum", "title": "1DLyrQSQ8znzIvuv"}}, "name": "sxL2yDt5U0o0WZ6F"}' \
    > test.out 2>&1
eval_tap $? 312 'UpdateView' test.out

#- 313 DeleteView
samples/cli/sample-apps Platform deleteView \
    --namespace $AB_NAMESPACE \
    --viewId 'js9eCF1vrZY2YYzR' \
    --storeId 'LFnx6gXSdI392KTM' \
    > test.out 2>&1
eval_tap $? 313 'DeleteView' test.out

#- 314 QueryWallets
eval_tap 0 314 'QueryWallets # SKIP deprecated' test.out

#- 315 BulkCredit
samples/cli/sample-apps Platform bulkCredit \
    --namespace $AB_NAMESPACE \
    --body '[{"creditRequest": {"amount": 94, "expireAt": "1983-05-15T00:00:00Z", "metadata": {"nmFgLPdxEJlrxqGs": {}, "v0E4bDhLOuEpzPwL": {}, "Tew8TH12OVrn6MnG": {}}, "origin": "Epic", "reason": "ES4YfyHjLmjNrXl6", "source": "OTHER"}, "currencyCode": "o92FPkdnUEnQy0eW", "userIds": ["gksZM6MMN3k9btnl", "hc8Twipg3HKK3fA9", "LheElrUpk86dtQNA"]}, {"creditRequest": {"amount": 5, "expireAt": "1977-01-17T00:00:00Z", "metadata": {"wpq3SKc8BjXV03Nd": {}, "K5EKMdUFbVG6ySGv": {}, "qfOxp5uOB75tIiB5": {}}, "origin": "Twitch", "reason": "EVsRWXaGLxC1xeWm", "source": "REDEEM_CODE"}, "currencyCode": "vK1TBHGCmde58EQd", "userIds": ["ewU5O9InaloYpl5L", "l98mB9XZj5QRzt98", "9aR5RRlJJPKMSnSQ"]}, {"creditRequest": {"amount": 62, "expireAt": "1989-12-20T00:00:00Z", "metadata": {"t2dy8x9WYeYTnBVz": {}, "B1TwQJjvMvpODCce": {}, "1ex43kZ21gXkRFnm": {}}, "origin": "Xbox", "reason": "GSBO00SmbvMecGrG", "source": "DLC"}, "currencyCode": "PomffhpEESC3PEz5", "userIds": ["0Ur1ZgmKBRGFDxga", "EUjobXEJz9Nksx9N", "E3BPzQgKxesjYyZL"]}]' \
    > test.out 2>&1
eval_tap $? 315 'BulkCredit' test.out

#- 316 BulkDebit
samples/cli/sample-apps Platform bulkDebit \
    --namespace $AB_NAMESPACE \
    --body '[{"currencyCode": "dM3KXxXPvcEZtqyJ", "request": {"allowOverdraft": false, "amount": 83, "balanceOrigin": "Steam", "balanceSource": "IAP_REVOCATION", "metadata": {"fyZ1O3hQsHPqQYXm": {}, "0253qXUZtogMc3fA": {}, "44A9cibJkkVsZ1ML": {}}, "reason": "Wm3D5q6cJLeQvlib"}, "userIds": ["nMkNFsKj8qqKYbUy", "zbjgvNhtpROOakKi", "6qmURGSD3Qr1sbzv"]}, {"currencyCode": "Ga1aQZWyCay8Ba17", "request": {"allowOverdraft": true, "amount": 12, "balanceOrigin": "IOS", "balanceSource": "ORDER_REVOCATION", "metadata": {"XWFoPqxwlwbh0mo8": {}, "6mI1BUpS7zTrWWJL": {}, "UvImdT4vqeliqYQT": {}}, "reason": "lFXwgerWeQqKscqU"}, "userIds": ["wm2cs5xfRsRbYvhR", "ctqaYPmvOLJkS2wM", "640XJiW2fJ9oUXOb"]}, {"currencyCode": "dXbu05oagCe41Thx", "request": {"allowOverdraft": true, "amount": 63, "balanceOrigin": "GooglePlay", "balanceSource": "DLC_REVOCATION", "metadata": {"4OyMcgf8LAsPBD0D": {}, "hg9elYz7aDrr4Ztp": {}, "xPcIkZ4WAjIRjlGh": {}}, "reason": "qPR7UP4EiozaBXIJ"}, "userIds": ["4twNHCPjx3X5COWO", "Wb9LTqxdNYiuPpSh", "htBTIMugjv1oYszN"]}]' \
    > test.out 2>&1
eval_tap $? 316 'BulkDebit' test.out

#- 317 GetWallet
eval_tap 0 317 'GetWallet # SKIP deprecated' test.out

#- 318 SyncOrders
samples/cli/sample-apps Platform syncOrders \
    --nextEvaluatedKey 'uVa60CtqqRg4WwJ7' \
    --end 'CWE2DuJc3XOivKpQ' \
    --start 'ioeetmvZPjTERJql' \
    > test.out 2>&1
eval_tap $? 318 'SyncOrders' test.out

#- 319 TestAdyenConfig
samples/cli/sample-apps Platform testAdyenConfig \
    --sandbox 'false' \
    --body '{"allowedPaymentMethods": ["D7vFATqToZj9Ovbw", "aYxcxJawzJI7N9KV", "B7lNfsDBO5aQrOJf"], "apiKey": "SGqqC5HSUftHisjj", "authoriseAsCapture": true, "blockedPaymentMethods": ["Ioks4NAdHLQ0BS7a", "iZVtAfn4u1VplR18", "pIJlhSKrONGRLFDR"], "clientKey": "R9nlwf9N0IT1Lrz2", "dropInSettings": "2KuRZ1kVzQnuC2HW", "liveEndpointUrlPrefix": "MQX6VY5YXe74Mdrm", "merchantAccount": "BewhAQmLbfzcf2rq", "notificationHmacKey": "9gUdJR1Ift6xJeo6", "notificationPassword": "CLvjcCMuXwR7Elsq", "notificationUsername": "CdHQWOEpH0UteqT7", "returnUrl": "1g5oVdoqyfjVLJEF", "settings": "alHf1WWWHwvVPrjJ"}' \
    > test.out 2>&1
eval_tap $? 319 'TestAdyenConfig' test.out

#- 320 TestAliPayConfig
samples/cli/sample-apps Platform testAliPayConfig \
    --sandbox 'false' \
    --body '{"appId": "S5pIGvRAsPg5jOv1", "privateKey": "8GQXJKmLlujJWseP", "publicKey": "FTgOa8TSViRoM4vs", "returnUrl": "qyoK9SPZ00uzEHjm"}' \
    > test.out 2>&1
eval_tap $? 320 'TestAliPayConfig' test.out

#- 321 TestCheckoutConfig
samples/cli/sample-apps Platform testCheckoutConfig \
    --sandbox 'false' \
    --body '{"publicKey": "vbWYdLeq9pyokiFC", "secretKey": "5eZh7SevFnihMPzV"}' \
    > test.out 2>&1
eval_tap $? 321 'TestCheckoutConfig' test.out

#- 322 DebugMatchedPaymentMerchantConfig
samples/cli/sample-apps Platform debugMatchedPaymentMerchantConfig \
    --namespace 'lvg73CTVXz7FPScY' \
    --region 'rlXSw0i9JlcFhERo' \
    > test.out 2>&1
eval_tap $? 322 'DebugMatchedPaymentMerchantConfig' test.out

#- 323 TestPayPalConfig
samples/cli/sample-apps Platform testPayPalConfig \
    --sandbox 'false' \
    --body '{"clientID": "x1d7mGP2kARwXQMj", "clientSecret": "r0cRNBHMby7nO2yA", "returnUrl": "zJ4vmD5eUpEJevpK", "webHookId": "ECdqt8IHPEiGoiLy"}' \
    > test.out 2>&1
eval_tap $? 323 'TestPayPalConfig' test.out

#- 324 TestStripeConfig
samples/cli/sample-apps Platform testStripeConfig \
    --sandbox 'false' \
    --body '{"allowedPaymentMethodTypes": ["yK2PgfBvqSucgXig", "kErtxjkYdwqr995p", "BOBuDtnaAdzFRrct"], "publishableKey": "rUqi7yN9yYGSQ1dK", "secretKey": "rccSZvYmUzZI5Fe2", "webhookSecret": "bbKHno9RdB15YuWp"}' \
    > test.out 2>&1
eval_tap $? 324 'TestStripeConfig' test.out

#- 325 TestWxPayConfig
samples/cli/sample-apps Platform testWxPayConfig \
    --body '{"appId": "hOSmYkCVilBAWJYe", "key": "CkCAih6eegkwNXip", "mchid": "QF9PUTeTqxHC66Pb", "returnUrl": "Xo0Ai57wZTM7tN1x"}' \
    > test.out 2>&1
eval_tap $? 325 'TestWxPayConfig' test.out

#- 326 TestXsollaConfig
samples/cli/sample-apps Platform testXsollaConfig \
    --body '{"apiKey": "79TfvOlhq4HnZW6w", "flowCompletionUrl": "3UBkCpx0jYo4Ai6Y", "merchantId": 10, "projectId": 20, "projectSecretKey": "3EOfXzdSqU4kPHPw"}' \
    > test.out 2>&1
eval_tap $? 326 'TestXsollaConfig' test.out

#- 327 GetPaymentMerchantConfig
samples/cli/sample-apps Platform getPaymentMerchantConfig \
    --id 'hksjbTNolMASnaL0' \
    > test.out 2>&1
eval_tap $? 327 'GetPaymentMerchantConfig' test.out

#- 328 UpdateAdyenConfig
samples/cli/sample-apps Platform updateAdyenConfig \
    --id 'IRaj8i8AKZ8Ij4qQ' \
    --sandbox 'true' \
    --validate 'true' \
    --body '{"allowedPaymentMethods": ["IMfSTY97KxKHwdFz", "lr7VAHIdSyICQFKu", "UVIayaNmHObFeLIK"], "apiKey": "JDFexMpmmgCxkotY", "authoriseAsCapture": false, "blockedPaymentMethods": ["ZAc46eAtWNlsJWpV", "gmdSJHVb4pLyJXcy", "XQqp1v6ckUlCAYOh"], "clientKey": "Dm1RaG36fVUh93O4", "dropInSettings": "zABwJQhyOhhssLti", "liveEndpointUrlPrefix": "KpdjKjvuwfd0YQo2", "merchantAccount": "3bd8qSRWriTbyDSR", "notificationHmacKey": "MEPkykLnkdsN05Zw", "notificationPassword": "JZALVuHr6x4ek2ru", "notificationUsername": "6Q3i4NlecZZZ2dgO", "returnUrl": "LvLPwE7ZqWLcpAB0", "settings": "7h0OylRL8UD5Ahd3"}' \
    > test.out 2>&1
eval_tap $? 328 'UpdateAdyenConfig' test.out

#- 329 TestAdyenConfigById
samples/cli/sample-apps Platform testAdyenConfigById \
    --id 'nfaVhyjOrT9ScXet' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 329 'TestAdyenConfigById' test.out

#- 330 UpdateAliPayConfig
samples/cli/sample-apps Platform updateAliPayConfig \
    --id 'Fl1HW6zFvnWYwZhs' \
    --sandbox 'true' \
    --validate 'true' \
    --body '{"appId": "93CDeFZLNgc1mGdz", "privateKey": "Oiigcj8vk161ikG4", "publicKey": "OTd7rw4dJIrV4QAS", "returnUrl": "eYXWnHFwQQvmQ7Qp"}' \
    > test.out 2>&1
eval_tap $? 330 'UpdateAliPayConfig' test.out

#- 331 TestAliPayConfigById
samples/cli/sample-apps Platform testAliPayConfigById \
    --id '3vFU7iTsRsYXzhE6' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 331 'TestAliPayConfigById' test.out

#- 332 UpdateCheckoutConfig
samples/cli/sample-apps Platform updateCheckoutConfig \
    --id 'DQj10yM24qECH3qA' \
    --sandbox 'true' \
    --validate 'false' \
    --body '{"publicKey": "6nkUBG3sgKesw237", "secretKey": "AJ9gSezcG22dbzjl"}' \
    > test.out 2>&1
eval_tap $? 332 'UpdateCheckoutConfig' test.out

#- 333 TestCheckoutConfigById
samples/cli/sample-apps Platform testCheckoutConfigById \
    --id 'XJqxJhXOgr09l1lt' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 333 'TestCheckoutConfigById' test.out

#- 334 UpdatePayPalConfig
samples/cli/sample-apps Platform updatePayPalConfig \
    --id 'BvDxYt6L8jUBMVlr' \
    --sandbox 'true' \
    --validate 'false' \
    --body '{"clientID": "nT9aX831OybIHNgC", "clientSecret": "IMvCJ634iKylFA2J", "returnUrl": "bFxnZDwZ894GmUjz", "webHookId": "CqiOXJNAtARN1FFL"}' \
    > test.out 2>&1
eval_tap $? 334 'UpdatePayPalConfig' test.out

#- 335 TestPayPalConfigById
samples/cli/sample-apps Platform testPayPalConfigById \
    --id 'lcZwmNJ0kdCoEDV4' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 335 'TestPayPalConfigById' test.out

#- 336 UpdateStripeConfig
samples/cli/sample-apps Platform updateStripeConfig \
    --id '91ubnt0gz7mIZNyk' \
    --sandbox 'true' \
    --validate 'false' \
    --body '{"allowedPaymentMethodTypes": ["nHxBN57rgiNRyItK", "86pib9b9Z273Bw9w", "q2NUOJbuJ9ZkmpE9"], "publishableKey": "aamhiyeYO4OwSq73", "secretKey": "FItZxlT3M7HIiTdQ", "webhookSecret": "MHTXLlSRR9PycvHS"}' \
    > test.out 2>&1
eval_tap $? 336 'UpdateStripeConfig' test.out

#- 337 TestStripeConfigById
samples/cli/sample-apps Platform testStripeConfigById \
    --id 'L2L0qDCsVVFHsLQf' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 337 'TestStripeConfigById' test.out

#- 338 UpdateWxPayConfig
samples/cli/sample-apps Platform updateWxPayConfig \
    --id 'lFETLV4nh2S1vPBi' \
    --validate 'true' \
    --body '{"appId": "s1BZph9eCF4dZPrH", "key": "N8m55mLihoANDvMz", "mchid": "y2dEi1DB8DddqktM", "returnUrl": "GHFinyNKEULkeP8w"}' \
    > test.out 2>&1
eval_tap $? 338 'UpdateWxPayConfig' test.out

#- 339 UpdateWxPayConfigCert
samples/cli/sample-apps Platform updateWxPayConfigCert \
    --id 'b96qz914w5bA520g' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 339 'UpdateWxPayConfigCert' test.out

#- 340 TestWxPayConfigById
samples/cli/sample-apps Platform testWxPayConfigById \
    --id 'obDIM94Tl4ssWF89' \
    > test.out 2>&1
eval_tap $? 340 'TestWxPayConfigById' test.out

#- 341 UpdateXsollaConfig
samples/cli/sample-apps Platform updateXsollaConfig \
    --id 'olpIqlGUnRLfAQxl' \
    --validate 'true' \
    --body '{"apiKey": "ivZMXl4zpfSUoEyV", "flowCompletionUrl": "h8PH83zRKOqd7OCU", "merchantId": 42, "projectId": 2, "projectSecretKey": "vCQUU0RViFWoCJiP"}' \
    > test.out 2>&1
eval_tap $? 341 'UpdateXsollaConfig' test.out

#- 342 TestXsollaConfigById
samples/cli/sample-apps Platform testXsollaConfigById \
    --id 'tMQUlQ8iZa1CTk1F' \
    > test.out 2>&1
eval_tap $? 342 'TestXsollaConfigById' test.out

#- 343 UpdateXsollaUIConfig
samples/cli/sample-apps Platform updateXsollaUIConfig \
    --id '8Ps5LEDi2UKDxEIc' \
    --body '{"device": "DESKTOP", "showCloseButton": false, "size": "LARGE", "theme": "DEFAULT_DARK"}' \
    > test.out 2>&1
eval_tap $? 343 'UpdateXsollaUIConfig' test.out

#- 344 QueryPaymentProviderConfig
samples/cli/sample-apps Platform queryPaymentProviderConfig \
    --limit '65' \
    --namespace 'WbiSfJddAoKU5Jf2' \
    --offset '63' \
    --region 'bTXGroX7TTbeJNoa' \
    > test.out 2>&1
eval_tap $? 344 'QueryPaymentProviderConfig' test.out

#- 345 CreatePaymentProviderConfig
samples/cli/sample-apps Platform createPaymentProviderConfig \
    --body '{"aggregate": "ADYEN", "namespace": "BxKhEiZIAYoAjL4g", "region": "a7EJdwzgFUmanVDC", "sandboxTaxJarApiToken": "4pNgOZh21pWuaOqG", "specials": ["WALLET", "CHECKOUT", "WALLET"], "taxJarApiToken": "wVKijCjDQq0bu7By", "taxJarEnabled": false, "useGlobalTaxJarApiToken": true}' \
    > test.out 2>&1
eval_tap $? 345 'CreatePaymentProviderConfig' test.out

#- 346 GetAggregatePaymentProviders
samples/cli/sample-apps Platform getAggregatePaymentProviders \
    > test.out 2>&1
eval_tap $? 346 'GetAggregatePaymentProviders' test.out

#- 347 DebugMatchedPaymentProviderConfig
samples/cli/sample-apps Platform debugMatchedPaymentProviderConfig \
    --namespace 'hH11S70X48KnxCE2' \
    --region '4Dgzv8RPqp8EingG' \
    > test.out 2>&1
eval_tap $? 347 'DebugMatchedPaymentProviderConfig' test.out

#- 348 GetSpecialPaymentProviders
samples/cli/sample-apps Platform getSpecialPaymentProviders \
    > test.out 2>&1
eval_tap $? 348 'GetSpecialPaymentProviders' test.out

#- 349 UpdatePaymentProviderConfig
samples/cli/sample-apps Platform updatePaymentProviderConfig \
    --id 'qUcqhD2bwO7EJ5M1' \
    --body '{"aggregate": "ADYEN", "namespace": "k3iSjUKC2peFgacy", "region": "UkOJmJYbzV2jpxAE", "sandboxTaxJarApiToken": "Y8WR99ocdXSLHnV3", "specials": ["CHECKOUT", "WALLET", "WALLET"], "taxJarApiToken": "sJBlb1hWdLO2UgQA", "taxJarEnabled": true, "useGlobalTaxJarApiToken": false}' \
    > test.out 2>&1
eval_tap $? 349 'UpdatePaymentProviderConfig' test.out

#- 350 DeletePaymentProviderConfig
samples/cli/sample-apps Platform deletePaymentProviderConfig \
    --id 'lRI3Xi19EnIivbUc' \
    > test.out 2>&1
eval_tap $? 350 'DeletePaymentProviderConfig' test.out

#- 351 GetPaymentTaxConfig
samples/cli/sample-apps Platform getPaymentTaxConfig \
    > test.out 2>&1
eval_tap $? 351 'GetPaymentTaxConfig' test.out

#- 352 UpdatePaymentTaxConfig
samples/cli/sample-apps Platform updatePaymentTaxConfig \
    --body '{"sandboxTaxJarApiToken": "O7jhbjYUKHXn267m", "taxJarApiToken": "OTuS0MUeOyhNuOKx", "taxJarEnabled": false, "taxJarProductCodesMapping": {"0A2xEdDZ75MQHXvb": "1jErzLklVQvI337U", "afrICTCzmI2ky4Bk": "XGqij0XVnF6mGoSA", "hn7QXJJb8TYKJd4j": "I0MtL2r7DBTo1jW0"}}' \
    > test.out 2>&1
eval_tap $? 352 'UpdatePaymentTaxConfig' test.out

#- 353 SyncPaymentOrders
samples/cli/sample-apps Platform syncPaymentOrders \
    --nextEvaluatedKey '3XQHruFnytVNfiN2' \
    --end '5ZFolFjqueWksUAY' \
    --start '9942kLxAGq7k0IJJ' \
    > test.out 2>&1
eval_tap $? 353 'SyncPaymentOrders' test.out

#- 354 PublicGetRootCategories
samples/cli/sample-apps Platform publicGetRootCategories \
    --namespace $AB_NAMESPACE \
    --language 'eWRsBfaPTEk4ff2y' \
    --storeId 'hKJXm7clRfTcITFc' \
    > test.out 2>&1
eval_tap $? 354 'PublicGetRootCategories' test.out

#- 355 DownloadCategories
samples/cli/sample-apps Platform downloadCategories \
    --namespace $AB_NAMESPACE \
    --language 'WCRCcJzA36Rot2e4' \
    --storeId 'jK7Tyw3cPLilNN8j' \
    > test.out 2>&1
eval_tap $? 355 'DownloadCategories' test.out

#- 356 PublicGetCategory
samples/cli/sample-apps Platform publicGetCategory \
    --categoryPath '8IRFU4mVwbBcvgv5' \
    --namespace $AB_NAMESPACE \
    --language 'ttONKtScxlKTTel5' \
    --storeId 'NpQGuvzQdCvoWCgo' \
    > test.out 2>&1
eval_tap $? 356 'PublicGetCategory' test.out

#- 357 PublicGetChildCategories
samples/cli/sample-apps Platform publicGetChildCategories \
    --categoryPath 'DYq4PBwNPTHrXOsr' \
    --namespace $AB_NAMESPACE \
    --language 'wxRYB401ktboybGL' \
    --storeId 'jp0Aq4Cvot150siK' \
    > test.out 2>&1
eval_tap $? 357 'PublicGetChildCategories' test.out

#- 358 PublicGetDescendantCategories
samples/cli/sample-apps Platform publicGetDescendantCategories \
    --categoryPath 'w1R7vNWN3zBO5DFv' \
    --namespace $AB_NAMESPACE \
    --language 'ZDHGyuiNxeWFz1tM' \
    --storeId 'E69QguGn97RzlcBR' \
    > test.out 2>&1
eval_tap $? 358 'PublicGetDescendantCategories' test.out

#- 359 PublicListCurrencies
samples/cli/sample-apps Platform publicListCurrencies \
    --namespace $AB_NAMESPACE \
    --currencyType 'VIRTUAL' \
    > test.out 2>&1
eval_tap $? 359 'PublicListCurrencies' test.out

#- 360 GeDLCDurableRewardShortMap
samples/cli/sample-apps Platform geDLCDurableRewardShortMap \
    --namespace $AB_NAMESPACE \
    --dlcType 'STEAM' \
    > test.out 2>&1
eval_tap $? 360 'GeDLCDurableRewardShortMap' test.out

#- 361 GetIAPItemMapping
samples/cli/sample-apps Platform getIAPItemMapping \
    --namespace $AB_NAMESPACE \
    --platform 'STADIA' \
    > test.out 2>&1
eval_tap $? 361 'GetIAPItemMapping' test.out

#- 362 PublicGetItemByAppId
samples/cli/sample-apps Platform publicGetItemByAppId \
    --namespace $AB_NAMESPACE \
    --language 'IcRcsWeTxPoIJni4' \
    --region '4IoLbQGTPD8zis9c' \
    --storeId 'GAwxrUtxYMDnFPie' \
    --appId 'L9qNfmMQQoHOAQTW' \
    > test.out 2>&1
eval_tap $? 362 'PublicGetItemByAppId' test.out

#- 363 PublicQueryItems
samples/cli/sample-apps Platform publicQueryItems \
    --namespace $AB_NAMESPACE \
    --appType 'GAME' \
    --autoCalcEstimatedPrice 'false' \
    --baseAppId 'pryvPGJ3E8h3nM4D' \
    --categoryPath '8DFF7HBCjPsg452T' \
    --features 'XJlCZcWhR9zdpoFR' \
    --includeSubCategoryItem 'false' \
    --itemType 'MEDIA' \
    --language '3Ae1fY7QkCLeUeON' \
    --limit '14' \
    --offset '24' \
    --region 'X6Sq3tl0ScdtZSc6' \
    --sortBy '["createdAt:asc", "updatedAt:asc", "displayOrder:asc"]' \
    --storeId 'heeqlnrN0VLF2DzP' \
    --tags '59q5KXRQPaiR2rus' \
    > test.out 2>&1
eval_tap $? 363 'PublicQueryItems' test.out

#- 364 PublicGetItemBySku
samples/cli/sample-apps Platform publicGetItemBySku \
    --namespace $AB_NAMESPACE \
    --autoCalcEstimatedPrice 'false' \
    --language 'UooVolnTFiy1vei8' \
    --region 'tDpWShFfvLIfGStO' \
    --storeId 'cMMf0BoroUoHyUhQ' \
    --sku 'x8N97vpwFaUXRCj7' \
    > test.out 2>&1
eval_tap $? 364 'PublicGetItemBySku' test.out

#- 365 PublicGetEstimatedPrice
samples/cli/sample-apps Platform publicGetEstimatedPrice \
    --namespace $AB_NAMESPACE \
    --region 'rt4Wa7MzQozcfynb' \
    --storeId '4DeJ2VI7Ogyu4Lz9' \
    --itemIds '5f8BkA7cVxFhNOWA' \
    > test.out 2>&1
eval_tap $? 365 'PublicGetEstimatedPrice' test.out

#- 366 PublicBulkGetItems
samples/cli/sample-apps Platform publicBulkGetItems \
    --namespace $AB_NAMESPACE \
    --autoCalcEstimatedPrice 'false' \
    --language 'o4p6L4DVx9RWRbeS' \
    --region 'oJGB2B2mlQuIlXmM' \
    --storeId 'gWieYfxOB4NmgLi1' \
    --itemIds 'mKnlRhaiq1KhOhom' \
    > test.out 2>&1
eval_tap $? 366 'PublicBulkGetItems' test.out

#- 367 PublicValidateItemPurchaseCondition
samples/cli/sample-apps Platform publicValidateItemPurchaseCondition \
    --namespace $AB_NAMESPACE \
    --body '{"itemIds": ["qPrRRdayrTZe1CdN", "zZYmVqqrTbkPukv1", "A3RmBOvUWqOGe6KT"]}' \
    > test.out 2>&1
eval_tap $? 367 'PublicValidateItemPurchaseCondition' test.out

#- 368 PublicSearchItems
samples/cli/sample-apps Platform publicSearchItems \
    --namespace $AB_NAMESPACE \
    --autoCalcEstimatedPrice 'true' \
    --itemType 'LOOTBOX' \
    --limit '87' \
    --offset '43' \
    --region 'dyVRM5XsJYJLRSPQ' \
    --storeId 's1Bw6db0ULwtL0di' \
    --keyword 'tAYDTi7o6dsEQIXT' \
    --language 'WKgGuPEJXJ0Ms7zd' \
    > test.out 2>&1
eval_tap $? 368 'PublicSearchItems' test.out

#- 369 PublicGetApp
samples/cli/sample-apps Platform publicGetApp \
    --itemId 'j2dZZnTvntOZvozH' \
    --namespace $AB_NAMESPACE \
    --language 'AbIpeGLUSJTyzJtI' \
    --region 'tIRhTK4YZ8ZcRIQU' \
    --storeId 'OqLB7gHjMNebIJzJ' \
    > test.out 2>&1
eval_tap $? 369 'PublicGetApp' test.out

#- 370 PublicGetItemDynamicData
samples/cli/sample-apps Platform publicGetItemDynamicData \
    --itemId '8mgUyiWzXznrQgDt' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 370 'PublicGetItemDynamicData' test.out

#- 371 PublicGetItem
samples/cli/sample-apps Platform publicGetItem \
    --itemId 'o1Xta6VZVlbbaCT9' \
    --namespace $AB_NAMESPACE \
    --autoCalcEstimatedPrice 'false' \
    --language 'HIhgJado7Rn6GUU9' \
    --populateBundle 'false' \
    --region 'yNDn0r8U6eiyXnSD' \
    --storeId 'C23xw9JQuEMV9jMk' \
    > test.out 2>&1
eval_tap $? 371 'PublicGetItem' test.out

#- 372 GetPaymentCustomization
eval_tap 0 372 'GetPaymentCustomization # SKIP deprecated' test.out

#- 373 PublicGetPaymentUrl
samples/cli/sample-apps Platform publicGetPaymentUrl \
    --namespace $AB_NAMESPACE \
    --body '{"paymentOrderNo": "V3cPFZ7JMWaOmtl7", "paymentProvider": "WXPAY", "returnUrl": "YWFyvxFDAQRFtNSQ", "ui": "H5ohPLqhc2XyHNgW", "zipCode": "4EG4BUMFC1VA9Mmr"}' \
    > test.out 2>&1
eval_tap $? 373 'PublicGetPaymentUrl' test.out

#- 374 PublicGetPaymentMethods
samples/cli/sample-apps Platform publicGetPaymentMethods \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'BXItfdTmF5mxB8KK' \
    > test.out 2>&1
eval_tap $? 374 'PublicGetPaymentMethods' test.out

#- 375 PublicGetUnpaidPaymentOrder
samples/cli/sample-apps Platform publicGetUnpaidPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'V9G8xEut4lIXKlGY' \
    > test.out 2>&1
eval_tap $? 375 'PublicGetUnpaidPaymentOrder' test.out

#- 376 Pay
samples/cli/sample-apps Platform pay \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'J6BxpHJNvMurmfyx' \
    --paymentProvider 'XSOLLA' \
    --zipCode 'EsB1GNmzcxaHKDn0' \
    --body '{"token": "ZZ21nml32qWQwWP4"}' \
    > test.out 2>&1
eval_tap $? 376 'Pay' test.out

#- 377 PublicCheckPaymentOrderPaidStatus
samples/cli/sample-apps Platform publicCheckPaymentOrderPaidStatus \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'alB02svobrx7ypCz' \
    > test.out 2>&1
eval_tap $? 377 'PublicCheckPaymentOrderPaidStatus' test.out

#- 378 GetPaymentPublicConfig
samples/cli/sample-apps Platform getPaymentPublicConfig \
    --namespace $AB_NAMESPACE \
    --sandbox 'false' \
    --paymentProvider 'WXPAY' \
    --region '26WqtVSZJYQ2Lkqz' \
    > test.out 2>&1
eval_tap $? 378 'GetPaymentPublicConfig' test.out

#- 379 PublicGetQRCode
samples/cli/sample-apps Platform publicGetQRCode \
    --namespace $AB_NAMESPACE \
    --code '028u6MCAFr3cF3Rp' \
    > test.out 2>&1
eval_tap $? 379 'PublicGetQRCode' test.out

#- 380 PublicNormalizePaymentReturnUrl
samples/cli/sample-apps Platform publicNormalizePaymentReturnUrl \
    --namespace $AB_NAMESPACE \
    --payerID 'xnKaCKnTqCmnnQUc' \
    --foreinginvoice 'whdeQujUc5wCANDm' \
    --invoiceId 'B4IswE0z8d12QSW6' \
    --payload '7r1lxJahm0Jqidzl' \
    --redirectResult '4TryNnGUPodMMBoi' \
    --resultCode 'wBaLNb7Bquun7s22' \
    --sessionId 'lEb816jYeyhMBUtx' \
    --status 'pSXtTBPPU7CGgffZ' \
    --token '00mhRiiHj25Kj0JW' \
    --type 'u15QSzotPTbnZ27C' \
    --userId 'WIM4OoOZGE4BHA5R' \
    --orderNo '9JkhulZexBjEp9pE' \
    --paymentOrderNo 'g42knlHHVnTlhkq5' \
    --paymentProvider 'WALLET' \
    --returnUrl 'nicCbfPqT2gXxjod' \
    > test.out 2>&1
eval_tap $? 380 'PublicNormalizePaymentReturnUrl' test.out

#- 381 GetPaymentTaxValue
samples/cli/sample-apps Platform getPaymentTaxValue \
    --namespace $AB_NAMESPACE \
    --zipCode 'rAfoAB5iQR3SsLxV' \
    --paymentOrderNo 'uXVm1ovjVIgO0nuR' \
    --paymentProvider 'WXPAY' \
    > test.out 2>&1
eval_tap $? 381 'GetPaymentTaxValue' test.out

#- 382 GetRewardByCode
samples/cli/sample-apps Platform getRewardByCode \
    --namespace $AB_NAMESPACE \
    --rewardCode 'B3SlYsdsagKmHg4V' \
    > test.out 2>&1
eval_tap $? 382 'GetRewardByCode' test.out

#- 383 QueryRewards1
samples/cli/sample-apps Platform queryRewards1 \
    --namespace $AB_NAMESPACE \
    --eventTopic '7qQk3RVStkYrkRqU' \
    --limit '84' \
    --offset '63' \
    --sortBy '["rewardCode:desc", "rewardCode"]' \
    > test.out 2>&1
eval_tap $? 383 'QueryRewards1' test.out

#- 384 GetReward1
samples/cli/sample-apps Platform getReward1 \
    --namespace $AB_NAMESPACE \
    --rewardId 'daMGcnKweIPcSRYB' \
    > test.out 2>&1
eval_tap $? 384 'GetReward1' test.out

#- 385 PublicListStores
samples/cli/sample-apps Platform publicListStores \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 385 'PublicListStores' test.out

#- 386 PublicExistsAnyMyActiveEntitlement
samples/cli/sample-apps Platform publicExistsAnyMyActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --appIds '["a5B5sUM0aDPeYLDK", "eLDpTMQueMrSGfOe", "zXQCLF0Q6HH0JBaY"]' \
    --itemIds '["xp1OhHk9it6QYWCZ", "Kw6KBIZIt7V30yUH", "3OMpzMstcHkj0Uk7"]' \
    --skus '["ewTfJ8LhYyHO1970", "56U1RtIAsbGVGUbi", "yCOzd238YDEwlJOq"]' \
    > test.out 2>&1
eval_tap $? 386 'PublicExistsAnyMyActiveEntitlement' test.out

#- 387 PublicGetMyAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform publicGetMyAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --appId 'pdUDDuoNfRoFDSZm' \
    > test.out 2>&1
eval_tap $? 387 'PublicGetMyAppEntitlementOwnershipByAppId' test.out

#- 388 PublicGetMyEntitlementOwnershipByItemId
samples/cli/sample-apps Platform publicGetMyEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --entitlementClazz 'CODE' \
    --itemId '7uxEYr9Z8R6p6eB6' \
    > test.out 2>&1
eval_tap $? 388 'PublicGetMyEntitlementOwnershipByItemId' test.out

#- 389 PublicGetMyEntitlementOwnershipBySku
samples/cli/sample-apps Platform publicGetMyEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --entitlementClazz 'SUBSCRIPTION' \
    --sku 'ldcWBEKwXbodpoZe' \
    > test.out 2>&1
eval_tap $? 389 'PublicGetMyEntitlementOwnershipBySku' test.out

#- 390 PublicGetEntitlementOwnershipToken
samples/cli/sample-apps Platform publicGetEntitlementOwnershipToken \
    --namespace $AB_NAMESPACE \
    --appIds '["BMmZbIxewztPLwsW", "cLlix51DMeLXtlT1", "e6mjlXxlvbOd1RiV"]' \
    --itemIds '["1Ugd1U2rRktzFsif", "8iWYWMWMxxk6nT1R", "eYM99je1QztWg5Lb"]' \
    --skus '["vvgEgAw6RJTrVVkk", "PHkQ1GZxY1AHfFU8", "RKc3Is5buiKKqaDJ"]' \
    > test.out 2>&1
eval_tap $? 390 'PublicGetEntitlementOwnershipToken' test.out

#- 391 SyncTwitchDropsEntitlement
samples/cli/sample-apps Platform syncTwitchDropsEntitlement \
    --namespace $AB_NAMESPACE \
    --body '{"gameId": "KkxhE7EKQ4IRZBYl", "language": "ieh_kkcu", "region": "DmHY9VpWHjZYGMEb"}' \
    > test.out 2>&1
eval_tap $? 391 'SyncTwitchDropsEntitlement' test.out

#- 392 PublicGetMyWallet
samples/cli/sample-apps Platform publicGetMyWallet \
    --currencyCode 'Yw7VRa8cJOIsHdfR' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 392 'PublicGetMyWallet' test.out

#- 393 SyncEpicGameDLC
samples/cli/sample-apps Platform syncEpicGameDLC \
    --namespace $AB_NAMESPACE \
    --userId 'CHadbhdDkupuvthv' \
    --body '{"epicGamesJwtToken": "fJUz6XJgrMBKojpt"}' \
    > test.out 2>&1
eval_tap $? 393 'SyncEpicGameDLC' test.out

#- 394 SyncOculusDLC
samples/cli/sample-apps Platform syncOculusDLC \
    --namespace $AB_NAMESPACE \
    --userId 'YxcgidKQLNZed2G0' \
    > test.out 2>&1
eval_tap $? 394 'SyncOculusDLC' test.out

#- 395 PublicSyncPsnDlcInventory
samples/cli/sample-apps Platform publicSyncPsnDlcInventory \
    --namespace $AB_NAMESPACE \
    --userId 'WcKVwuwa2JXRKmye' \
    --body '{"serviceLabel": 13}' \
    > test.out 2>&1
eval_tap $? 395 'PublicSyncPsnDlcInventory' test.out

#- 396 PublicSyncPsnDlcInventoryWithMultipleServiceLabels
samples/cli/sample-apps Platform publicSyncPsnDlcInventoryWithMultipleServiceLabels \
    --namespace $AB_NAMESPACE \
    --userId 'RTOl7byCJF5RiKjM' \
    --body '{"serviceLabels": [98, 83, 62]}' \
    > test.out 2>&1
eval_tap $? 396 'PublicSyncPsnDlcInventoryWithMultipleServiceLabels' test.out

#- 397 SyncSteamDLC
samples/cli/sample-apps Platform syncSteamDLC \
    --namespace $AB_NAMESPACE \
    --userId 'isxCphOQ6p1Gnsro' \
    --body '{"appId": "YcgSgdzLs6lfcLuW", "steamId": "QMTRfM6Jj16Xyvna"}' \
    > test.out 2>&1
eval_tap $? 397 'SyncSteamDLC' test.out

#- 398 SyncXboxDLC
samples/cli/sample-apps Platform syncXboxDLC \
    --namespace $AB_NAMESPACE \
    --userId '4uxuHLZTEbZGa2Bh' \
    --body '{"xstsToken": "YD2krQbLrbuGtrXX"}' \
    > test.out 2>&1
eval_tap $? 398 'SyncXboxDLC' test.out

#- 399 PublicQueryUserEntitlements
samples/cli/sample-apps Platform publicQueryUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId '3zt8Gzxqge5EeqXt' \
    --appType 'GAME' \
    --entitlementClazz 'APP' \
    --entitlementName '7yzfZOuIbhqB2gEP' \
    --features '["m5MZskGqlhy0d7z5", "K4eYaEdU71ng34o3", "NkcnbemGl8qrqlru"]' \
    --itemId '["4z4iVQclBqHB45N3", "qW5TIikHWReAHDTs", "TNUdfFlOyw40rJom"]' \
    --limit '37' \
    --offset '83' \
    > test.out 2>&1
eval_tap $? 399 'PublicQueryUserEntitlements' test.out

#- 400 PublicGetUserAppEntitlementByAppId
samples/cli/sample-apps Platform publicGetUserAppEntitlementByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'hukulhrsS1tgW8OZ' \
    --appId 'eYKvKHS2xucODnEi' \
    > test.out 2>&1
eval_tap $? 400 'PublicGetUserAppEntitlementByAppId' test.out

#- 401 PublicQueryUserEntitlementsByAppType
samples/cli/sample-apps Platform publicQueryUserEntitlementsByAppType \
    --namespace $AB_NAMESPACE \
    --userId 'JqDFE1jTP7cMTvxr' \
    --limit '80' \
    --offset '21' \
    --appType 'GAME' \
    > test.out 2>&1
eval_tap $? 401 'PublicQueryUserEntitlementsByAppType' test.out

#- 402 PublicGetUserEntitlementsByIds
samples/cli/sample-apps Platform publicGetUserEntitlementsByIds \
    --namespace $AB_NAMESPACE \
    --userId 'dSFwNWJCrKvp8M34' \
    --availablePlatformOnly 'false' \
    --ids '["BUyowDDQudB145yi", "OC3ZDry6S5MQAB0t", "g7bjkg21ABDLTsd0"]' \
    > test.out 2>&1
eval_tap $? 402 'PublicGetUserEntitlementsByIds' test.out

#- 403 PublicGetUserEntitlementByItemId
eval_tap 0 403 'PublicGetUserEntitlementByItemId # SKIP deprecated' test.out

#- 404 PublicGetUserEntitlementBySku
eval_tap 0 404 'PublicGetUserEntitlementBySku # SKIP deprecated' test.out

#- 405 PublicUserEntitlementHistory
samples/cli/sample-apps Platform publicUserEntitlementHistory \
    --namespace $AB_NAMESPACE \
    --userId 'Vnw3dnOdZw6Qn8hk' \
    --endDate '2Eeo1wwYSkHdyTV5' \
    --entitlementClazz 'ENTITLEMENT' \
    --limit '18' \
    --offset '55' \
    --startDate 'sODHtIfes9ktqxyd' \
    > test.out 2>&1
eval_tap $? 405 'PublicUserEntitlementHistory' test.out

#- 406 PublicExistsAnyUserActiveEntitlement
samples/cli/sample-apps Platform publicExistsAnyUserActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'jvt9rjEgSLbYUPqW' \
    --appIds '["YWgbVUJVzJPJa3wC", "FwGQHC8JstnlLD4w", "2iqyrnmyNtrvKQLw"]' \
    --itemIds '["fyYTmzABT2AKjsEA", "MZixXUj1XZf2vRF5", "KzXFUb3r7VSdAtlp"]' \
    --skus '["iyTbqFzGiNjRefkK", "R7m3WSZo3JOoalUQ", "4sVKgJ3f3kDRdxjN"]' \
    > test.out 2>&1
eval_tap $? 406 'PublicExistsAnyUserActiveEntitlement' test.out

#- 407 PublicGetUserAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform publicGetUserAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'jVHdCdRp4BQM3tPS' \
    --appId 'RSkrkAD0GxMdyrtI' \
    > test.out 2>&1
eval_tap $? 407 'PublicGetUserAppEntitlementOwnershipByAppId' test.out

#- 408 PublicGetUserEntitlementOwnershipByItemId
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --userId '2unqiuqwiQDeLI4v' \
    --entitlementClazz 'ENTITLEMENT' \
    --itemId 'RNRhn0I4e101OWuv' \
    > test.out 2>&1
eval_tap $? 408 'PublicGetUserEntitlementOwnershipByItemId' test.out

#- 409 PublicGetUserEntitlementOwnershipByItemIds
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'Q9IKDCKaNwdSo90q' \
    --ids '["UAkYOCJ2WkaRAC0o", "FaViDPizcvWCzhKf", "22TMzJJqnEtPlswl"]' \
    > test.out 2>&1
eval_tap $? 409 'PublicGetUserEntitlementOwnershipByItemIds' test.out

#- 410 PublicGetUserEntitlementOwnershipBySku
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --userId 'JyZZEKiZJ7DZLtYV' \
    --entitlementClazz 'CODE' \
    --sku 'WjQf2G4Y72n2qcpO' \
    > test.out 2>&1
eval_tap $? 410 'PublicGetUserEntitlementOwnershipBySku' test.out

#- 411 PublicGetUserEntitlement
samples/cli/sample-apps Platform publicGetUserEntitlement \
    --entitlementId '6ccvQYiRRZ5a1I8r' \
    --namespace $AB_NAMESPACE \
    --userId 'jjZr3qHaBnVPCaYB' \
    > test.out 2>&1
eval_tap $? 411 'PublicGetUserEntitlement' test.out

#- 412 PublicConsumeUserEntitlement
samples/cli/sample-apps Platform publicConsumeUserEntitlement \
    --entitlementId 'GE6eUzK7n6rLLnm7' \
    --namespace $AB_NAMESPACE \
    --userId 'FFarfS1reo9xKNnj' \
    --body '{"options": ["0IiY8ktP3cqZggCB", "4BApKN669fBRHGXm", "bwiyWpNdCJyOHxsP"], "requestId": "uzsAAhHLjTG9cLLD", "useCount": 51}' \
    > test.out 2>&1
eval_tap $? 412 'PublicConsumeUserEntitlement' test.out

#- 413 PublicSellUserEntitlement
samples/cli/sample-apps Platform publicSellUserEntitlement \
    --entitlementId 'hzi7gMrYxSxocqDi' \
    --namespace $AB_NAMESPACE \
    --userId 'BkOHdrWTkaiXc09K' \
    --body '{"requestId": "MiEQFDvXsfi9SdHs", "useCount": 81}' \
    > test.out 2>&1
eval_tap $? 413 'PublicSellUserEntitlement' test.out

#- 414 PublicSplitUserEntitlement
samples/cli/sample-apps Platform publicSplitUserEntitlement \
    --entitlementId 'wDaOmNqd6cjVBjfH' \
    --namespace $AB_NAMESPACE \
    --userId 'DM8ZJyCsHjuKEFTW' \
    --body '{"useCount": 36}' \
    > test.out 2>&1
eval_tap $? 414 'PublicSplitUserEntitlement' test.out

#- 415 PublicTransferUserEntitlement
samples/cli/sample-apps Platform publicTransferUserEntitlement \
    --entitlementId 'wu9AI4Z2heslTVpl' \
    --namespace $AB_NAMESPACE \
    --userId 'bwur55RUHVEoUz0t' \
    --body '{"entitlementId": "PbdgCrUEqBeQuvlW", "useCount": 55}' \
    > test.out 2>&1
eval_tap $? 415 'PublicTransferUserEntitlement' test.out

#- 416 PublicRedeemCode
samples/cli/sample-apps Platform publicRedeemCode \
    --namespace $AB_NAMESPACE \
    --userId 'bmS9xjXbsU2574Rr' \
    --body '{"code": "bmotasGi9tN4YqRa", "language": "PkK-kyHe", "region": "GAYYO1H6EJWdhEFL"}' \
    > test.out 2>&1
eval_tap $? 416 'PublicRedeemCode' test.out

#- 417 PublicFulfillAppleIAPItem
samples/cli/sample-apps Platform publicFulfillAppleIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'qnZWbYeXQaNc02Fr' \
    --body '{"excludeOldTransactions": false, "language": "KPjd_Xw", "productId": "vTgcheNRJq7sgUcS", "receiptData": "me5DBBjxTucrWThz", "region": "k30eUKaa8Uk3mB0O", "transactionId": "C0b0AnpPsqMDRGDZ"}' \
    > test.out 2>&1
eval_tap $? 417 'PublicFulfillAppleIAPItem' test.out

#- 418 SyncEpicGamesInventory
samples/cli/sample-apps Platform syncEpicGamesInventory \
    --namespace $AB_NAMESPACE \
    --userId 'ksgB5K2tzr2i8ks0' \
    --body '{"epicGamesJwtToken": "sf0pBgvkNU0aFK3I"}' \
    > test.out 2>&1
eval_tap $? 418 'SyncEpicGamesInventory' test.out

#- 419 PublicFulfillGoogleIAPItem
samples/cli/sample-apps Platform publicFulfillGoogleIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'LMHrZCODtphpbR3U' \
    --body '{"autoAck": false, "language": "amef_029", "orderId": "Ctt3OkJDdwgaf3xF", "packageName": "huDA0J3R0xdBpCmW", "productId": "rTKTAFICPeIaKQ8b", "purchaseTime": 85, "purchaseToken": "MYWKVQifAEKTWRsO", "region": "Hm2hdyjlmSVAOyOh"}' \
    > test.out 2>&1
eval_tap $? 419 'PublicFulfillGoogleIAPItem' test.out

#- 420 SyncOculusConsumableEntitlements
samples/cli/sample-apps Platform syncOculusConsumableEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'n2PEqc8WcFIA4Mat' \
    > test.out 2>&1
eval_tap $? 420 'SyncOculusConsumableEntitlements' test.out

#- 421 PublicReconcilePlayStationStore
samples/cli/sample-apps Platform publicReconcilePlayStationStore \
    --namespace $AB_NAMESPACE \
    --userId 'A0DPS4dgFK2gs7qd' \
    --body '{"currencyCode": "WdDdbLAmJDldR1W8", "price": 0.9358168377386598, "productId": "Yg5tjcIifznXlueh", "serviceLabel": 49}' \
    > test.out 2>&1
eval_tap $? 421 'PublicReconcilePlayStationStore' test.out

#- 422 PublicReconcilePlayStationStoreWithMultipleServiceLabels
samples/cli/sample-apps Platform publicReconcilePlayStationStoreWithMultipleServiceLabels \
    --namespace $AB_NAMESPACE \
    --userId 'yAv2aplsU7yjbqIr' \
    --body '{"currencyCode": "eYhcJtWXGyyZxAfW", "price": 0.7191579923628959, "productId": "u07dtvsjOabuFdNi", "serviceLabels": [88, 5, 46]}' \
    > test.out 2>&1
eval_tap $? 422 'PublicReconcilePlayStationStoreWithMultipleServiceLabels' test.out

#- 423 SyncSteamInventory
samples/cli/sample-apps Platform syncSteamInventory \
    --namespace $AB_NAMESPACE \
    --userId '9wkMpluH0v50NlJ4' \
    --body '{"appId": "rWSWKglNfdoFZpJm", "currencyCode": "koEiv3IJI2uKJfLm", "language": "jDF_118", "price": 0.9997071356673317, "productId": "njP97dEcBRfINKpB", "region": "xkQ0hVvbQoj7J96F", "steamId": "upeuSrTc44p3fAat"}' \
    > test.out 2>&1
eval_tap $? 423 'SyncSteamInventory' test.out

#- 424 SyncTwitchDropsEntitlement1
samples/cli/sample-apps Platform syncTwitchDropsEntitlement1 \
    --namespace $AB_NAMESPACE \
    --userId 'e3ZRst5zDjmJ2EfT' \
    --body '{"gameId": "DAPZIJaJu2lM1MEe", "language": "GXV_lvfi", "region": "4Ymq0omr0AN5YWl5"}' \
    > test.out 2>&1
eval_tap $? 424 'SyncTwitchDropsEntitlement1' test.out

#- 425 SyncXboxInventory
samples/cli/sample-apps Platform syncXboxInventory \
    --namespace $AB_NAMESPACE \
    --userId 'HNMM4wJqL4vYVpmA' \
    --body '{"currencyCode": "rT1wSav2FsHFP1eR", "price": 0.4549795710137742, "productId": "L8ExNNA64ZmoqBqd", "xstsToken": "P5RSxtelfARPEjT0"}' \
    > test.out 2>&1
eval_tap $? 425 'SyncXboxInventory' test.out

#- 426 PublicQueryUserOrders
samples/cli/sample-apps Platform publicQueryUserOrders \
    --namespace $AB_NAMESPACE \
    --userId 'db3TtJ1EEKTncOY3' \
    --discounted 'false' \
    --itemId 'NYWDTnyZcLKsggRr' \
    --limit '1' \
    --offset '61' \
    --status 'CHARGEBACK_REVERSED' \
    > test.out 2>&1
eval_tap $? 426 'PublicQueryUserOrders' test.out

#- 427 PublicCreateUserOrder
samples/cli/sample-apps Platform publicCreateUserOrder \
    --namespace $AB_NAMESPACE \
    --userId 'iECdKXFF9v2c5LvM' \
    --body '{"currencyCode": "G7a5dsmQvTFIpZ6R", "discountCodes": ["PexOdNSldANMJJLs", "u3xFAEyyPvF65Fvq", "D0cAR9KilNqqrdAS"], "discountedPrice": 85, "ext": {"qJTk6HhaCqZFl6ax": {}, "dTvE7w5DOo0NW563": {}, "aFt4Htej7zEJrgNz": {}}, "itemId": "b7qwZ8uuZAlMSpB3", "language": "zd_885", "price": 74, "quantity": 10, "region": "Wby8kWuuve1v8XVa", "returnUrl": "CpUCYdcMjVfKgT1Y", "sectionId": "BKocmUfYRV0a07KF"}' \
    > test.out 2>&1
eval_tap $? 427 'PublicCreateUserOrder' test.out

#- 428 PublicPreviewOrderPrice
samples/cli/sample-apps Platform publicPreviewOrderPrice \
    --namespace $AB_NAMESPACE \
    --userId 'iLLoFigp6Xnz6RSa' \
    --body '{"currencyCode": "1zT0bgxCu3nOzO8W", "discountCodes": ["trZvCPmcebCeyJM0", "No4hd6DNCpV9xwXz", "1aqbxtUnbOAj55sf"], "discountedPrice": 55, "itemId": "krcueKYNRZMHu2ji", "price": 0, "quantity": 32}' \
    > test.out 2>&1
eval_tap $? 428 'PublicPreviewOrderPrice' test.out

#- 429 PublicGetUserOrder
samples/cli/sample-apps Platform publicGetUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'y6NKI9xMpAN9lhJC' \
    --userId '9oIZilRxV6zaiZI9' \
    > test.out 2>&1
eval_tap $? 429 'PublicGetUserOrder' test.out

#- 430 PublicCancelUserOrder
samples/cli/sample-apps Platform publicCancelUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'ZewQJjreE0o88ocu' \
    --userId 'W5453tNGy3zlNfQ6' \
    > test.out 2>&1
eval_tap $? 430 'PublicCancelUserOrder' test.out

#- 431 PublicGetUserOrderHistories
samples/cli/sample-apps Platform publicGetUserOrderHistories \
    --namespace $AB_NAMESPACE \
    --orderNo 'J9iahueHK7XIqRss' \
    --userId 'eISHOfHNC9N3j5Ax' \
    > test.out 2>&1
eval_tap $? 431 'PublicGetUserOrderHistories' test.out

#- 432 PublicDownloadUserOrderReceipt
samples/cli/sample-apps Platform publicDownloadUserOrderReceipt \
    --namespace $AB_NAMESPACE \
    --orderNo 'oRVHc70S3r2RtqBn' \
    --userId 'vxiCOJkGLr1PqecC' \
    > test.out 2>&1
eval_tap $? 432 'PublicDownloadUserOrderReceipt' test.out

#- 433 PublicGetPaymentAccounts
samples/cli/sample-apps Platform publicGetPaymentAccounts \
    --namespace $AB_NAMESPACE \
    --userId 'i9UywvJAUQ3Io1MU' \
    > test.out 2>&1
eval_tap $? 433 'PublicGetPaymentAccounts' test.out

#- 434 PublicDeletePaymentAccount
samples/cli/sample-apps Platform publicDeletePaymentAccount \
    --id '71Bnxw3l7ud2wJuH' \
    --namespace $AB_NAMESPACE \
    --type 'paypal' \
    --userId 'VNhCC8oAHcFPBwJj' \
    > test.out 2>&1
eval_tap $? 434 'PublicDeletePaymentAccount' test.out

#- 435 PublicListActiveSections
samples/cli/sample-apps Platform publicListActiveSections \
    --namespace $AB_NAMESPACE \
    --userId 'KB9AGYzPonawc04b' \
    --autoCalcEstimatedPrice 'true' \
    --language 'ErZIDZLjZ70JBkOF' \
    --region 'URVtMjlJRIRsIg7m' \
    --storeId '6SsOkvQhMcQOPrgH' \
    --viewId 'xRIXqpAnMo2HCCrQ' \
    > test.out 2>&1
eval_tap $? 435 'PublicListActiveSections' test.out

#- 436 PublicQueryUserSubscriptions
samples/cli/sample-apps Platform publicQueryUserSubscriptions \
    --namespace $AB_NAMESPACE \
    --userId 'aQ2S2RoRWZiYKh2h' \
    --chargeStatus 'SETUP' \
    --itemId '1W8f0pdjUBBVizc1' \
    --limit '99' \
    --offset '8' \
    --sku 'waM4dgvFDEyeX7Ih' \
    --status 'ACTIVE' \
    --subscribedBy 'USER' \
    > test.out 2>&1
eval_tap $? 436 'PublicQueryUserSubscriptions' test.out

#- 437 PublicSubscribeSubscription
samples/cli/sample-apps Platform publicSubscribeSubscription \
    --namespace $AB_NAMESPACE \
    --userId 'RgcK6QUlbC0TsxcT' \
    --body '{"currencyCode": "ym65ZBmdR24fwvvf", "itemId": "hqf4xdsPHwvJV97n", "language": "Jj_zQJl-Aa", "region": "inXLRkGIYFOQE7Fs", "returnUrl": "RVRdv0xbWWh46NQU", "source": "x1AZYwN1UMI6i5LY"}' \
    > test.out 2>&1
eval_tap $? 437 'PublicSubscribeSubscription' test.out

#- 438 PublicCheckUserSubscriptionSubscribableByItemId
samples/cli/sample-apps Platform publicCheckUserSubscriptionSubscribableByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'N5ahhrpRi6x2gm7J' \
    --itemId '3ycWDe8iygssRn7F' \
    > test.out 2>&1
eval_tap $? 438 'PublicCheckUserSubscriptionSubscribableByItemId' test.out

#- 439 PublicGetUserSubscription
samples/cli/sample-apps Platform publicGetUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'gCXkUkUSqo0lFh6A' \
    --userId '1FeuLGugVmRXDYKQ' \
    > test.out 2>&1
eval_tap $? 439 'PublicGetUserSubscription' test.out

#- 440 PublicChangeSubscriptionBillingAccount
samples/cli/sample-apps Platform publicChangeSubscriptionBillingAccount \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'x42rbAOEK8USLHSu' \
    --userId 'X2zgTKoNof4sLa6x' \
    > test.out 2>&1
eval_tap $? 440 'PublicChangeSubscriptionBillingAccount' test.out

#- 441 PublicCancelSubscription
samples/cli/sample-apps Platform publicCancelSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'M1EgkvLE2Qn3ppTq' \
    --userId 'x6DCtJVJiFEtNTSi' \
    --body '{"immediate": false, "reason": "Vprglp6ispcpxizB"}' \
    > test.out 2>&1
eval_tap $? 441 'PublicCancelSubscription' test.out

#- 442 PublicGetUserSubscriptionBillingHistories
samples/cli/sample-apps Platform publicGetUserSubscriptionBillingHistories \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'JXEjkTG1YdNu49b6' \
    --userId 'YpGS0OVb2efhtocF' \
    --excludeFree 'false' \
    --limit '9' \
    --offset '13' \
    > test.out 2>&1
eval_tap $? 442 'PublicGetUserSubscriptionBillingHistories' test.out

#- 443 PublicListViews
samples/cli/sample-apps Platform publicListViews \
    --namespace $AB_NAMESPACE \
    --userId 'tUacRJefBZCo5BTU' \
    --language 'Fvfd9D4K0ReEqfzK' \
    --storeId '69QX9pU17YDHjBSt' \
    > test.out 2>&1
eval_tap $? 443 'PublicListViews' test.out

#- 444 PublicGetWallet
samples/cli/sample-apps Platform publicGetWallet \
    --currencyCode 'SQ8p8jag6K7S0SjX' \
    --namespace $AB_NAMESPACE \
    --userId 'PRgyV3lSUvn7ty6j' \
    > test.out 2>&1
eval_tap $? 444 'PublicGetWallet' test.out

#- 445 PublicListUserWalletTransactions
samples/cli/sample-apps Platform publicListUserWalletTransactions \
    --currencyCode '9AI8Jk2Op996QIBo' \
    --namespace $AB_NAMESPACE \
    --userId 'OWuIs9tPBzoKVsvG' \
    --limit '37' \
    --offset '81' \
    > test.out 2>&1
eval_tap $? 445 'PublicListUserWalletTransactions' test.out

#- 446 QueryItems1
samples/cli/sample-apps Platform queryItems1 \
    --namespace $AB_NAMESPACE \
    --appType 'GAME' \
    --availableDate 'UWicVhdTyDQCkIhx' \
    --baseAppId 'zcdtPVOWx89mTfIt' \
    --categoryPath 'efwox3AyxqSYW8mM' \
    --features 'W2klGF622oj47AX1' \
    --includeSubCategoryItem 'true' \
    --itemName '5KdIFgYy29BNNEEh' \
    --itemStatus 'INACTIVE' \
    --itemType 'EXTENSION' \
    --limit '11' \
    --offset '20' \
    --region 'yrTQ3AFBy5cBOkLf' \
    --sectionExclusive 'true' \
    --sortBy '["createdAt:asc", "createdAt:desc", "displayOrder:desc"]' \
    --storeId 'Lvdh0vplcUVCHnga' \
    --tags 'fkFuZgtevfpYgudx' \
    --targetNamespace '8rmB5NIi7C9SXSWq' \
    --withTotal 'false' \
    > test.out 2>&1
eval_tap $? 446 'QueryItems1' test.out

#- 447 ImportStore1
samples/cli/sample-apps Platform importStore1 \
    --namespace $AB_NAMESPACE \
    --storeId 'xXXvpDqeFTLHvLWT' \
    --strictMode 'false' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 447 'ImportStore1' test.out

#- 448 ExportStore1
samples/cli/sample-apps Platform exportStore1 \
    --namespace $AB_NAMESPACE \
    --storeId '48PSwZzZxGeeFyhz' \
    --body '{"itemIds": ["TwRtxHq03u5D24jh", "pF7bAMW9O1m3NSrd", "nKyz0KnG8A8bGVxX"]}' \
    > test.out 2>&1
eval_tap $? 448 'ExportStore1' test.out

#- 449 FulfillRewardsV2
samples/cli/sample-apps Platform fulfillRewardsV2 \
    --namespace $AB_NAMESPACE \
    --userId 'n5OAJPFbNx2029EP' \
    --body '{"entitlementCollectionId": "kALdKd6WpprxvYZo", "entitlementOrigin": "Playstation", "metadata": {"lLTUx8NnWeZxkHiy": {}, "WG1trcm3CU5wgnfw": {}, "uOQPq46u4MBoaXZ5": {}}, "origin": "System", "rewards": [{"currency": {"currencyCode": "hd5UdkBx3EybU6H3", "namespace": "YY2lIlSc2cDdkSUH"}, "item": {"itemId": "j1EAmv00Mb2KqwDP", "itemSku": "bcRAaFsBw0REeenc", "itemType": "Ir7iV1eqOMVu8vUM"}, "quantity": 9, "type": "ITEM"}, {"currency": {"currencyCode": "tsUShQD35itUuwXq", "namespace": "TtoLJhf40IRJrfbQ"}, "item": {"itemId": "gJApIBC39Xl61JU0", "itemSku": "ZZAYppT8fdX7wKw4", "itemType": "sdfdL5ZQNo1tdUYd"}, "quantity": 3, "type": "ITEM"}, {"currency": {"currencyCode": "bCzDuKJsv2rRlI9E", "namespace": "gF1l6Vwh2mh8dJxQ"}, "item": {"itemId": "gL2GONbugMJnCj8U", "itemSku": "VdYkZGEQheEvaW1j", "itemType": "WbUbHtD0zgozIQ7F"}, "quantity": 88, "type": "ITEM"}], "source": "ORDER_REVOCATION", "transactionId": "3m6BarBzbxlt1jpr"}' \
    > test.out 2>&1
eval_tap $? 449 'FulfillRewardsV2' test.out


rm -f "tmp.dat"

exit $EXIT_CODE