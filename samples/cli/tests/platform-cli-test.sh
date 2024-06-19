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
echo "1..456"

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
    --id 'K47w1sGh13xb1bYI' \
    > test.out 2>&1
eval_tap $? 3 'GetFulfillmentScript' test.out

#- 4 CreateFulfillmentScript
samples/cli/sample-apps Platform createFulfillmentScript \
    --id 'dsCesXD3XFRbGsls' \
    --body '{"grantDays": "UdSOMeboOleib55v"}' \
    > test.out 2>&1
eval_tap $? 4 'CreateFulfillmentScript' test.out

#- 5 DeleteFulfillmentScript
samples/cli/sample-apps Platform deleteFulfillmentScript \
    --id 'cw4LMFhnBhQc1XRg' \
    > test.out 2>&1
eval_tap $? 5 'DeleteFulfillmentScript' test.out

#- 6 UpdateFulfillmentScript
samples/cli/sample-apps Platform updateFulfillmentScript \
    --id 'MSNLrDtUkmY8iXsR' \
    --body '{"grantDays": "iUHIuXl08GHS5lNQ"}' \
    > test.out 2>&1
eval_tap $? 6 'UpdateFulfillmentScript' test.out

#- 7 ListItemTypeConfigs
samples/cli/sample-apps Platform listItemTypeConfigs \
    > test.out 2>&1
eval_tap $? 7 'ListItemTypeConfigs' test.out

#- 8 CreateItemTypeConfig
samples/cli/sample-apps Platform createItemTypeConfig \
    --body '{"clazz": "wbIk29KmNlyyh4Zd", "dryRun": true, "fulfillmentUrl": "cQXuPcPDwSsqdgtJ", "itemType": "MEDIA", "purchaseConditionUrl": "2I3rIm46OAAoLUOF"}' \
    > test.out 2>&1
eval_tap $? 8 'CreateItemTypeConfig' test.out

#- 9 SearchItemTypeConfig
samples/cli/sample-apps Platform searchItemTypeConfig \
    --clazz '7Qjv8pgdNPBgBB47' \
    --itemType 'OPTIONBOX' \
    > test.out 2>&1
eval_tap $? 9 'SearchItemTypeConfig' test.out

#- 10 GetItemTypeConfig
samples/cli/sample-apps Platform getItemTypeConfig \
    --id 'Hzvjx8adGzvQ26ne' \
    > test.out 2>&1
eval_tap $? 10 'GetItemTypeConfig' test.out

#- 11 UpdateItemTypeConfig
samples/cli/sample-apps Platform updateItemTypeConfig \
    --id 'zExxy5Nx0zCbtNqj' \
    --body '{"clazz": "cHCjNNIX9UER6Qsa", "dryRun": true, "fulfillmentUrl": "8d1d4KfsnWJVTGoq", "purchaseConditionUrl": "2VGKVUnijfNyZrrF"}' \
    > test.out 2>&1
eval_tap $? 11 'UpdateItemTypeConfig' test.out

#- 12 DeleteItemTypeConfig
samples/cli/sample-apps Platform deleteItemTypeConfig \
    --id 'Y3AOpxyT4gMoTtQm' \
    > test.out 2>&1
eval_tap $? 12 'DeleteItemTypeConfig' test.out

#- 13 QueryCampaigns
samples/cli/sample-apps Platform queryCampaigns \
    --namespace $AB_NAMESPACE \
    --limit '59' \
    --name 'lnFn9PRG8j7F0VES' \
    --offset '63' \
    --tag 'AZGCaxbgFpP4698L' \
    > test.out 2>&1
eval_tap $? 13 'QueryCampaigns' test.out

#- 14 CreateCampaign
samples/cli/sample-apps Platform createCampaign \
    --namespace $AB_NAMESPACE \
    --body '{"description": "K7mhiIuJIdTf8dKq", "discountConfig": {"categories": [{"categoryPath": "xAvmCF5qEsb1aMou", "includeSubCategories": false}, {"categoryPath": "tfzT234ouFRDwYVL", "includeSubCategories": false}, {"categoryPath": "nBt7gKBQBlybQQBa", "includeSubCategories": true}], "currencyCode": "GOLjTkFWpVhJaoje", "currencyNamespace": "23D3D5vvLaEFG4gR", "discountAmount": 32, "discountPercentage": 67, "discountType": "AMOUNT", "items": [{"itemId": "BsVTy3GV3V5rHpyz", "itemName": "2N9BD9RJmljPRMOW"}, {"itemId": "7cZQ1hRUaO3Gs5t3", "itemName": "Ff8luMXaY7zBKUyz"}, {"itemId": "OtgPgteO20XoUl0K", "itemName": "3CxfHkOLgG68VmLB"}], "restrictType": "ITEMS_AND_CATEGORIES", "stackable": true}, "items": [{"extraSubscriptionDays": 46, "itemId": "JJuktgsqHv2VLKBA", "itemName": "XnzazoddypUGNqp2", "quantity": 15}, {"extraSubscriptionDays": 22, "itemId": "Y0F9QnH9XtSahjSY", "itemName": "405OAFdMAA6KZTjF", "quantity": 76}, {"extraSubscriptionDays": 47, "itemId": "M94Cl2avvFRDc9dZ", "itemName": "2rbbbrOs8r1pHGJY", "quantity": 72}], "maxRedeemCountPerCampaignPerUser": 87, "maxRedeemCountPerCode": 39, "maxRedeemCountPerCodePerUser": 70, "maxSaleCount": 80, "name": "zCnT55bR1PD4Elng", "redeemEnd": "1989-08-19T00:00:00Z", "redeemStart": "1983-03-22T00:00:00Z", "redeemType": "DISCOUNT", "status": "ACTIVE", "tags": ["Bsl26l7vpLdNGfzb", "Bf2hanme5msjZxCr", "IQQk4OKevkpa63CG"], "type": "REDEMPTION"}' \
    > test.out 2>&1
eval_tap $? 14 'CreateCampaign' test.out

#- 15 GetCampaign
samples/cli/sample-apps Platform getCampaign \
    --campaignId 'BEIilBnKF9VNUu3Q' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 15 'GetCampaign' test.out

#- 16 UpdateCampaign
samples/cli/sample-apps Platform updateCampaign \
    --campaignId 'NyBiEdYFoHCOWcQy' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "A1lYlxuOploguL4j", "discountConfig": {"categories": [{"categoryPath": "OIOChTiLREVthtsD", "includeSubCategories": true}, {"categoryPath": "iDGbeMjYQduT8rlc", "includeSubCategories": true}, {"categoryPath": "5BqKW6EtXMkbTbDm", "includeSubCategories": false}], "currencyCode": "YMdmBOGCRZshjnQ1", "currencyNamespace": "oZUNLMGbpbJzn1UK", "discountAmount": 67, "discountPercentage": 63, "discountType": "AMOUNT", "items": [{"itemId": "YGGAJEvM3ubo9Ht1", "itemName": "tBefpLgFIPuaC3Lp"}, {"itemId": "h0MxkGNgFY7muGFt", "itemName": "pBrmQOdYHMTH1JIL"}, {"itemId": "JDnRPqoUHawbImq0", "itemName": "JKALzioLLmASLNMG"}], "restrictType": "ITEMS_AND_CATEGORIES", "stackable": false}, "items": [{"extraSubscriptionDays": 30, "itemId": "OaXqajn3T9iESIqo", "itemName": "QtvjtwfCzFF7LPMS", "quantity": 81}, {"extraSubscriptionDays": 23, "itemId": "VDqGnisLD4sVIYd2", "itemName": "dcbPOyGDB8dkocCh", "quantity": 37}, {"extraSubscriptionDays": 72, "itemId": "iTwTV9HnWYlO7cbc", "itemName": "uYdjIN2GZxX7wiQr", "quantity": 33}], "maxRedeemCountPerCampaignPerUser": 89, "maxRedeemCountPerCode": 68, "maxRedeemCountPerCodePerUser": 50, "maxSaleCount": 57, "name": "DY4Qy8bFOJ5oDcAY", "redeemEnd": "1979-08-31T00:00:00Z", "redeemStart": "1985-06-07T00:00:00Z", "redeemType": "ITEM", "status": "ACTIVE", "tags": ["25LFTr6seowQbuLs", "pzI1AHBuq0qcybTc", "ckLmch3qb7kqBmwt"]}' \
    > test.out 2>&1
eval_tap $? 16 'UpdateCampaign' test.out

#- 17 GetCampaignDynamic
samples/cli/sample-apps Platform getCampaignDynamic \
    --campaignId 'TZ6oDIbvykWeBeaK' \
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
    --body '{"enableInventoryCheck": false}' \
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
    --body '{"appConfig": {"appName": "YjnWLQ1QtblzB4IX"}, "customConfig": {"connectionType": "INSECURE", "grpcServerAddress": "MhpyIOe5tis8oGb6"}, "extendType": "CUSTOM"}' \
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
    --body '{"appConfig": {"appName": "g8i37ASfGcMzcQHA"}, "customConfig": {"connectionType": "INSECURE", "grpcServerAddress": "1UvD2ncz6Mps5JcK"}, "extendType": "APP"}' \
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
    --storeId 'tDOzNL0yzZtx4vgh' \
    > test.out 2>&1
eval_tap $? 29 'GetRootCategories' test.out

#- 30 CreateCategory
samples/cli/sample-apps Platform createCategory \
    --namespace $AB_NAMESPACE \
    --storeId '6glCsJlqys43RklL' \
    --body '{"categoryPath": "9jcna9m1FGeshqSh", "localizationDisplayNames": {"M0dnm1DCOkxWF8YP": "ecwE9Mm1XToqEBLy", "35HEqcCHumwC1Hb9": "qNRiAJpwyzkDHfhw", "xP7AqswfdSKJ8iiS": "mbiYjSdcsHHuWjm7"}}' \
    > test.out 2>&1
eval_tap $? 30 'CreateCategory' test.out

#- 31 ListCategoriesBasic
samples/cli/sample-apps Platform listCategoriesBasic \
    --namespace $AB_NAMESPACE \
    --storeId 'L8YF4jhj2Fhe5iYq' \
    > test.out 2>&1
eval_tap $? 31 'ListCategoriesBasic' test.out

#- 32 GetCategory
samples/cli/sample-apps Platform getCategory \
    --categoryPath '1PpFudtYoBro1R1m' \
    --namespace $AB_NAMESPACE \
    --storeId 'LRAnOPZMqmRBHkW7' \
    > test.out 2>&1
eval_tap $? 32 'GetCategory' test.out

#- 33 UpdateCategory
samples/cli/sample-apps Platform updateCategory \
    --categoryPath 'u4JxkRiPVIVTzB4j' \
    --namespace $AB_NAMESPACE \
    --storeId 'mdAfo3fjnKNZ49go' \
    --body '{"localizationDisplayNames": {"DXDI3u9g1kU7m2Cl": "UBPSKd2kCbXPpoAL", "V6byaqPUukhNJBow": "6gK1dCXsbVCP3PYj", "p9V72K2byi1cVtKh": "x2gVvmx1TpDaNCRy"}}' \
    > test.out 2>&1
eval_tap $? 33 'UpdateCategory' test.out

#- 34 DeleteCategory
samples/cli/sample-apps Platform deleteCategory \
    --categoryPath 'IP4e8Sw7Ex48NaeH' \
    --namespace $AB_NAMESPACE \
    --storeId 'hWV6cjkRaE39X19g' \
    > test.out 2>&1
eval_tap $? 34 'DeleteCategory' test.out

#- 35 GetChildCategories
samples/cli/sample-apps Platform getChildCategories \
    --categoryPath 'jSEqyDcDtamVJZyO' \
    --namespace $AB_NAMESPACE \
    --storeId 'm3mVoqnKQtOta9kn' \
    > test.out 2>&1
eval_tap $? 35 'GetChildCategories' test.out

#- 36 GetDescendantCategories
samples/cli/sample-apps Platform getDescendantCategories \
    --categoryPath 'ETayu8PHhSnj3JSR' \
    --namespace $AB_NAMESPACE \
    --storeId 'YcVvXLUmrTMfXxkK' \
    > test.out 2>&1
eval_tap $? 36 'GetDescendantCategories' test.out

#- 37 QueryCodes
samples/cli/sample-apps Platform queryCodes \
    --campaignId 'c1iAkk1qPkMWDArx' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --batchNo '65' \
    --code 'bMyNORTcghqr21Xu' \
    --limit '48' \
    --offset '43' \
    > test.out 2>&1
eval_tap $? 37 'QueryCodes' test.out

#- 38 CreateCodes
samples/cli/sample-apps Platform createCodes \
    --campaignId 'SuvcX0ukbz0KDBiw' \
    --namespace $AB_NAMESPACE \
    --body '{"codeValue": "7JNZRmor872kS7tw", "quantity": 88}' \
    > test.out 2>&1
eval_tap $? 38 'CreateCodes' test.out

#- 39 Download
samples/cli/sample-apps Platform download \
    --campaignId 'd2x5Dv8A0G0alJxU' \
    --namespace $AB_NAMESPACE \
    --batchNo '45' \
    > test.out 2>&1
eval_tap $? 39 'Download' test.out

#- 40 BulkDisableCodes
samples/cli/sample-apps Platform bulkDisableCodes \
    --campaignId 'dg60afJBUraF5hm9' \
    --namespace $AB_NAMESPACE \
    --batchNo '45' \
    > test.out 2>&1
eval_tap $? 40 'BulkDisableCodes' test.out

#- 41 BulkEnableCodes
samples/cli/sample-apps Platform bulkEnableCodes \
    --campaignId '11v4MF0KpQiVuhrE' \
    --namespace $AB_NAMESPACE \
    --batchNo '15' \
    > test.out 2>&1
eval_tap $? 41 'BulkEnableCodes' test.out

#- 42 QueryRedeemHistory
samples/cli/sample-apps Platform queryRedeemHistory \
    --campaignId '3b9KxQfB2YDMcUFU' \
    --namespace $AB_NAMESPACE \
    --code '3SyOR4otjy1yFCfQ' \
    --limit '82' \
    --offset '86' \
    --userId '6XmYG8VnEB5INaTL' \
    > test.out 2>&1
eval_tap $? 42 'QueryRedeemHistory' test.out

#- 43 GetCode
samples/cli/sample-apps Platform getCode \
    --code '1JVglQPpJAZnOXSg' \
    --namespace $AB_NAMESPACE \
    --redeemable 'false' \
    > test.out 2>&1
eval_tap $? 43 'GetCode' test.out

#- 44 DisableCode
samples/cli/sample-apps Platform disableCode \
    --code 'PK6PEpu1Ovn9WTlz' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 44 'DisableCode' test.out

#- 45 EnableCode
samples/cli/sample-apps Platform enableCode \
    --code 'AyVEaTf9HuAU9DHD' \
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
    --body '{"currencyCode": "2ZMjqDKqupqxlcis", "currencySymbol": "gMhScTUWyQKNoTkj", "currencyType": "REAL", "decimals": 79, "localizationDescriptions": {"pK1MoaKnbULcDs62": "Hb2wqS9hKOCRTVrK", "R0ySOP5dsoVT9K3F": "0aUZb13bk8AUiHPo", "2IEgZ1tcFVfiuaal": "C7rvtq3i7QCQL3Gr"}}' \
    > test.out 2>&1
eval_tap $? 50 'CreateCurrency' test.out

#- 51 UpdateCurrency
samples/cli/sample-apps Platform updateCurrency \
    --currencyCode 'k32nO2X8PqTEHuxU' \
    --namespace $AB_NAMESPACE \
    --body '{"localizationDescriptions": {"jpmfDtXfDFEWkCEf": "kcywr4TOB34obinp", "ahjDuRVdscwlYa2v": "FcsTmeGvGF7J261Q", "ZmWrpzaIRsVR521Q": "FafSagQDEVcqLqj4"}}' \
    > test.out 2>&1
eval_tap $? 51 'UpdateCurrency' test.out

#- 52 DeleteCurrency
samples/cli/sample-apps Platform deleteCurrency \
    --currencyCode 'R6zZHr8w8WHDMrH8' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 52 'DeleteCurrency' test.out

#- 53 GetCurrencyConfig
samples/cli/sample-apps Platform getCurrencyConfig \
    --currencyCode 'pdVNuZEYmMq9CEyk' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 53 'GetCurrencyConfig' test.out

#- 54 GetCurrencySummary
samples/cli/sample-apps Platform getCurrencySummary \
    --currencyCode 'na1mfIvQzVsJVQg0' \
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
    --body '{"data": [{"id": "PcdUtIZNaF7vNk9G", "rewards": [{"currency": {"currencyCode": "KXKOslOnUpJYBwSZ", "namespace": "qpT9XudH4ta8E9qu"}, "item": {"itemId": "4GAbKGQI6UEXYMgq", "itemSku": "lGhhX4wR9WgSgVfu", "itemType": "XiD0iWrGfx16zoBS"}, "quantity": 86, "type": "ITEM"}, {"currency": {"currencyCode": "QMyLAUWUcYPefYjh", "namespace": "zTw8O7WILVa3WjhJ"}, "item": {"itemId": "VvnwDhDvwHc7vIG5", "itemSku": "X84EsWrbzDwMHmvP", "itemType": "2v64fvxMSyRZE40f"}, "quantity": 52, "type": "CURRENCY"}, {"currency": {"currencyCode": "yfztQ49259mbVbfZ", "namespace": "jCvKeSztsiJLzGzT"}, "item": {"itemId": "gI9UULmdE9pDOO3q", "itemSku": "cpwbx9K9Te43kRvM", "itemType": "lf8nclTbJtErLyXu"}, "quantity": 9, "type": "CURRENCY"}]}, {"id": "FSmm93HiQqvFuHXd", "rewards": [{"currency": {"currencyCode": "PAjMmxjEi1dBbFQb", "namespace": "HbKQw9o8549xStWA"}, "item": {"itemId": "Dk01SRLDelRo3k8e", "itemSku": "GTUs1BNAVUI61Gam", "itemType": "Xo65VNh3uXSfhoJx"}, "quantity": 61, "type": "ITEM"}, {"currency": {"currencyCode": "ln9vJ2EXgWpxK7zc", "namespace": "wku9LJNUz4by8EV9"}, "item": {"itemId": "eHcecdntMHfd2F1K", "itemSku": "yzsbCmc0LyTkSiin", "itemType": "y2Wf8a1wvawYgb7z"}, "quantity": 10, "type": "ITEM"}, {"currency": {"currencyCode": "URu1cQuOOeWjfvma", "namespace": "gP3lozuiCNL9bAIz"}, "item": {"itemId": "8tKfFWUuF00Vnk29", "itemSku": "HUDSTaRmdY5zb5N3", "itemType": "wfBa9UAhxX6niTe2"}, "quantity": 95, "type": "ITEM"}]}, {"id": "DkPNw1w4g9C1GOGU", "rewards": [{"currency": {"currencyCode": "q29Qgbd9LKirznSR", "namespace": "YbZq8AXdnCzjuOeO"}, "item": {"itemId": "6EESbuAGGRarHU5k", "itemSku": "nDJGLILjI1RplpCC", "itemType": "PXJUXfYy7abSJVDU"}, "quantity": 51, "type": "CURRENCY"}, {"currency": {"currencyCode": "j3opulQl9lyCevNi", "namespace": "2I433cOhnwoiqa3W"}, "item": {"itemId": "qs0z2aTMvJ3NHvAh", "itemSku": "M0Q4QKBORMyzN5pm", "itemType": "5qDFsAABE9vUDhIN"}, "quantity": 4, "type": "ITEM"}, {"currency": {"currencyCode": "btWNcbkbHjHSapzJ", "namespace": "ibo2aiK4GOT5tctA"}, "item": {"itemId": "GrjZlW1p8fwhoyXS", "itemSku": "C6Tk4wu3P8z3dZLH", "itemType": "2riXtCj7RJDSg7WL"}, "quantity": 13, "type": "ITEM"}]}]}' \
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
    --body '{"data": [{"platform": "OCULUS", "platformDlcIdMap": {"oddeQ9zkGOTeHf24": "DnlkEktujohbHYBS", "Nii5IAPYvFJYEnnV": "BYKUGkGmlUZbRFeW", "msQMRrN7IYsd46LE": "Gxkmn2s541fV10BG"}}, {"platform": "PSN", "platformDlcIdMap": {"vxKYyciwCvhQWdNj": "pi5xqL6P5VOI4xMX", "g17GqWbOUtTcnzTn": "vb4T8Hhgq9j3HGED", "XL7UJjfgBUo31JK8": "OCQELoEtyjbxSTpF"}}, {"platform": "PSN", "platformDlcIdMap": {"Uu7vrB0DejxU9O5o": "pKxFyVVgLniBRJxf", "652EzEtBYCulZ42b": "noZFgtkAdiM2VPXs", "ywTIzmeliHuGy5PC": "eu4SEbsN4LPBlYZi"}}]}' \
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
    --entitlementClazz 'MEDIA' \
    --entitlementName '38Npq7YvyEhsMzBm' \
    --itemId '["zKvblFsG32WYg6hY", "KU8u02G95JiWCdxa", "QYzXfVy8NNeRp42z"]' \
    --limit '9' \
    --offset '69' \
    --origin 'Twitch' \
    --userId 'TYePXWOxbzWDbGjF' \
    > test.out 2>&1
eval_tap $? 61 'QueryEntitlements' test.out

#- 62 QueryEntitlements1
samples/cli/sample-apps Platform queryEntitlements1 \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --itemIds '["D2BP9I3DzyxSqjPl", "ctXNH2zPG8kqKQn8", "9qqjPXbryOzkdSVW"]' \
    --limit '6' \
    --offset '8' \
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
    --withoutCache 'false' \
    > test.out 2>&1
eval_tap $? 64 'GetEntitlementConfigInfo' test.out

#- 65 GrantEntitlements
samples/cli/sample-apps Platform grantEntitlements \
    --namespace $AB_NAMESPACE \
    --body '{"entitlementGrantList": [{"collectionId": "619Ns8YDsYNvTTcY", "endDate": "1984-09-14T00:00:00Z", "grantedCode": "ODEAuYGHu7pcewiV", "itemId": "Kfer08F1M5RdWvse", "itemNamespace": "hsWeH5iUB2nSVV85", "language": "hcQ_DlOK", "origin": "Playstation", "quantity": 68, "region": "8CAr47ZnXZJfthlC", "source": "OTHER", "startDate": "1976-09-21T00:00:00Z", "storeId": "ErYN42fkmbmpXt2m"}, {"collectionId": "K1t21kOAbIxhTyC1", "endDate": "1982-11-17T00:00:00Z", "grantedCode": "hy7L65QmAVHvHBhb", "itemId": "C7yWNZmPjCFoHh9f", "itemNamespace": "feSapQ3U4yYcyXIN", "language": "xDRi", "origin": "Steam", "quantity": 18, "region": "hbVa1sV3M5Al9CRF", "source": "REWARD", "startDate": "1997-04-17T00:00:00Z", "storeId": "tlidujFtanZ9D3TV"}, {"collectionId": "jy57dl5mcpFk5JGo", "endDate": "1985-09-29T00:00:00Z", "grantedCode": "DeFWob6HMtsXUmsE", "itemId": "G4PWQ19uwhBpd30r", "itemNamespace": "aytjQlhOQMSNBIpG", "language": "xmv_Vusg_704", "origin": "Steam", "quantity": 7, "region": "bXkDedgJlwVZW3EM", "source": "GIFT", "startDate": "1986-01-06T00:00:00Z", "storeId": "5Nfevq493Zvku7vk"}], "userIds": ["ILrCC2tYnNfqRWEP", "stbWijvyj7GEkl49", "YFEGaZrnK5ISqEmE"]}' \
    > test.out 2>&1
eval_tap $? 65 'GrantEntitlements' test.out

#- 66 RevokeEntitlements
samples/cli/sample-apps Platform revokeEntitlements \
    --namespace $AB_NAMESPACE \
    --body '["riv1wmUvWNAH1e2J", "HIkur72WNVIyOkoX", "nqH2XqQnJB9gfRHP"]' \
    > test.out 2>&1
eval_tap $? 66 'RevokeEntitlements' test.out

#- 67 GetEntitlement
samples/cli/sample-apps Platform getEntitlement \
    --entitlementId 'gSSrRkdEEtIAWXv8' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 67 'GetEntitlement' test.out

#- 68 QueryFulfillmentHistories
samples/cli/sample-apps Platform queryFulfillmentHistories \
    --namespace $AB_NAMESPACE \
    --limit '95' \
    --offset '78' \
    --status 'SUCCESS' \
    --userId '7xGAtrEY3VNinXss' \
    > test.out 2>&1
eval_tap $? 68 'QueryFulfillmentHistories' test.out

#- 69 QueryIAPClawbackHistory
samples/cli/sample-apps Platform queryIAPClawbackHistory \
    --namespace $AB_NAMESPACE \
    --endTime 'qPe694ljR4i1cPPs' \
    --eventType 'OTHER' \
    --externalOrderId 'nuFNVbMn2bJFo7MA' \
    --limit '24' \
    --offset '84' \
    --startTime 'PzPI8qV2OznJEIe6' \
    --status 'FAIL' \
    --userId 'X9SwViezmEnHn29e' \
    > test.out 2>&1
eval_tap $? 69 'QueryIAPClawbackHistory' test.out

#- 70 MockPlayStationStreamEvent
samples/cli/sample-apps Platform mockPlayStationStreamEvent \
    --namespace $AB_NAMESPACE \
    --body '{"body": {"account": "tHROSdBhbs61Xqpt", "additionalData": {"entitlement": [{"clientTransaction": [{"amountConsumed": 9, "clientTransactionId": "Sr9GJ0HOGl4q3mcw"}, {"amountConsumed": 48, "clientTransactionId": "AE8eEAox9RafcSlD"}, {"amountConsumed": 88, "clientTransactionId": "f0vOStRSmF7D825S"}], "entitlementId": "AyBJBb8LZQ1NL4E5", "usageCount": 34}, {"clientTransaction": [{"amountConsumed": 8, "clientTransactionId": "pjgQxmxgmTjDDuEZ"}, {"amountConsumed": 95, "clientTransactionId": "OKLoSyUftkNm8RtW"}, {"amountConsumed": 75, "clientTransactionId": "tLukSZIkkMxGe3In"}], "entitlementId": "XTJYtsBA3PHPql6q", "usageCount": 16}, {"clientTransaction": [{"amountConsumed": 27, "clientTransactionId": "czPj62AXIkNuXEwd"}, {"amountConsumed": 25, "clientTransactionId": "fUeejCVpmpIcRqQt"}, {"amountConsumed": 88, "clientTransactionId": "hohrw5YG2z5KDplH"}], "entitlementId": "3ZNsdDkEWybzMREW", "usageCount": 50}], "purpose": "vhwbI2a9fmrgeBXo"}, "originalTitleName": "de0Ou8VFOEz8NeEf", "paymentProductSKU": "iSfL5ga88cdwtIw4", "purchaseDate": "c66LTgcUir2URX4G", "sourceOrderItemId": "7FnyHP1ifP7sK05c", "titleName": "EoEHI9dS1V97319g"}, "eventDomain": "OKHOJT5mUeQ0ltct", "eventSource": "7j78IP2ZWEv3NMKc", "eventType": "yDupM1HNgDpLoGjJ", "eventVersion": 23, "id": "y2qMzqwgdzEXM5CN", "timestamp": "NmQdnTQcBaFUWaxI"}' \
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
    --body '{"bundleId": "6XCysJ8eQ2YJheBp", "password": "CFHhjeMYmBDahNJn"}' \
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
    --body '{"sandboxId": "lIAJrCTPEnQBzGvM"}' \
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
    --body '{"applicationName": "RVI2fDW7Uv22FFzy", "serviceAccountId": "5f8wcfAJz0QpjLTS"}' \
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
    --body '{"data": [{"itemIdentity": "dUJBB1mAV7je8EVW", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"mpte7X2K28u11EHp": "2Fnxb5TxFxtEQ9vs", "HeNvDAx1W2NWo5XR": "ekmP4kJLugoL6jFX", "jt5j0DjZUNrPjwov": "KCkPaZ2gIOVs6X5i"}}, {"itemIdentity": "qpZionsLIWp786vQ", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"4FB4463vzJghpUwD": "G6tvgEcNO4bTR7GS", "pmBd2MP28E3ksTEX": "tt0ks7mzPweJqWXq", "cEiD7eBmNZN4bjmZ": "GMsjTDuen4LNC24U"}}, {"itemIdentity": "iW21X9vz6mpDY7X2", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"0AkJet23z6MKB16k": "nQOz45Uj82uukZXc", "0ylvqwpYVQs43SBZ": "UobI066SfQZHIt4O", "9xCFKswvswzObewR": "xiy4SNcvcED26L5B"}}]}' \
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
    --body '{"appId": "xYTuzxhU3XtboBfQ", "appSecret": "15mTgRyRqyBDocKj"}' \
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
    --body '{"backOfficeServerClientId": "XXJ0TRPlAhDpn90R", "backOfficeServerClientSecret": "3tKN4z4rZaKRQ8rX", "enableStreamJob": false, "environment": "EhdJE3oksyp3gSrE", "streamName": "gRzTzZPjd0YfvuNw", "streamPartnerName": "amwrXmtGIYrh2Yt3"}' \
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
    --body '{"backOfficeServerClientId": "ndFhFpWj1AQ0rJPs", "backOfficeServerClientSecret": "eeQITa87z3ozaJAD", "enableStreamJob": false, "environment": "PzNaJjNFvhDRY1Dz", "streamName": "VBriH4702nw4Oxm9", "streamPartnerName": "pOJF3vaO9sj7mx99"}' \
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
    --body '{"appId": "uj69efsw8m2GXg6m", "publisherAuthenticationKey": "TTd0cs0BOlnmkw09"}' \
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
    --body '{"clientId": "pvnA9U1IRFbe1O6f", "clientSecret": "Jia86kTfMToR2x34", "organizationId": "P5lzCOpVcZvGtz9Y"}' \
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
    --body '{"relyingPartyCert": "BZqtNrd33xI51Pff"}' \
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
    --password 'JQGgJ3hICR9QluwR' \
    > test.out 2>&1
eval_tap $? 101 'UpdateXblBPCertFile' test.out

#- 102 DownloadInvoiceDetails
samples/cli/sample-apps Platform downloadInvoiceDetails \
    --namespace $AB_NAMESPACE \
    --feature 'EXqn2kYTHbtVZT6F' \
    --itemId 'ugofzaj25UobKBp4' \
    --itemType 'EXTENSION' \
    --endTime 'xnsC8D7xdc4MEvvm' \
    --startTime 'EymQagKZk0PAIQ8F' \
    > test.out 2>&1
eval_tap $? 102 'DownloadInvoiceDetails' test.out

#- 103 GenerateInvoiceSummary
samples/cli/sample-apps Platform generateInvoiceSummary \
    --namespace $AB_NAMESPACE \
    --feature 'B4o1qUtqOwuvnhwj' \
    --itemId 'Q6yGTlJbsbRmlMaL' \
    --itemType 'OPTIONBOX' \
    --endTime 'FwAVbwmFzkhPYXDv' \
    --startTime 'TIL5YG1LWcXCe2lF' \
    > test.out 2>&1
eval_tap $? 103 'GenerateInvoiceSummary' test.out

#- 104 SyncInGameItem
samples/cli/sample-apps Platform syncInGameItem \
    --namespace $AB_NAMESPACE \
    --storeId 'lTGwXi0fgtfzDsfM' \
    --body '{"categoryPath": "bgPg6vvmigODfZH9", "targetItemId": "Mlz49gDKb7AYJd7W", "targetNamespace": "ReRVqRAaMM3sqQqv"}' \
    > test.out 2>&1
eval_tap $? 104 'SyncInGameItem' test.out

#- 105 CreateItem
samples/cli/sample-apps Platform createItem \
    --namespace $AB_NAMESPACE \
    --storeId '1GUMHYRrNiWr6Y8w' \
    --body '{"appId": "7khaZq67ZSRke3FX", "appType": "GAME", "baseAppId": "lLqTpJv9bzw1ONFF", "boothName": "nVjb7dWBgHqryoIU", "categoryPath": "RXxnwhZVhZCJzcU7", "clazz": "QxlCO0iLySjxe1Tc", "displayOrder": 50, "entitlementType": "DURABLE", "ext": {"fpGSQ4dAz9Ro0XK3": {}, "iMHmeBykOgsDOWkj": {}, "CmZ63tfw9qpFlan2": {}}, "features": ["XnNvVkyrcuuWUzWx", "q7HLIB8TgBfQ8pVw", "qhWItFs7QrdGPlji"], "flexible": true, "images": [{"as": "LV2KYW2fe11agWcf", "caption": "kKi5C6O3RFZoTMI5", "height": 40, "imageUrl": "X13yJw8nFJ6JaZgM", "smallImageUrl": "wDK6YkNrloy2DNpi", "width": 83}, {"as": "Gvr83vcYbSAGJZod", "caption": "Xw7F80ivi5NpX3fD", "height": 24, "imageUrl": "eE4ct7G1rOHeKKp6", "smallImageUrl": "PaO8lAoFLlJaCVoQ", "width": 93}, {"as": "r2JKkZRs2N71khiJ", "caption": "551kYOJkuFEwVZKn", "height": 23, "imageUrl": "iHAyA5Si0TGWr4BY", "smallImageUrl": "E8VQX7WzvHlkb1aQ", "width": 87}], "inventoryConfig": {"customAttributes": {"ideqtcs2mKb3IrL8": {}, "MnQOse1xlauDLGu6": {}, "eLtp6WpuWX69Y6YU": {}}, "serverCustomAttributes": {"9pjXkGyYgxEcjSgr": {}, "Ce1aYCmRZ0kqiLr1": {}, "8hsmZOFF9lRpAktq": {}}, "slotUsed": 32}, "itemIds": ["yR6cB6lVikv1Swjz", "crI4B2OlqFqjZ88d", "2zfm6r06DQrKDTgq"], "itemQty": {"TuLHR4YAd9EeLZwg": 92, "P32tlSzDLcWM3VLE": 20, "k48iOx4h6DNItIbh": 3}, "itemType": "APP", "listable": false, "localizations": {"YCJIqOnulsgUdor3": {"description": "zkVyUasUKOIDHEiQ", "localExt": {"8p3wJkcGEFTVlDfS": {}, "BsxNeW6mABAmrsll": {}, "TAp10c6cCLQZ8lKM": {}}, "longDescription": "sgsc2yOMEiu00ZvO", "title": "OC0luUWsaxtjNvmr"}, "epEUC0lnghMigQm7": {"description": "05VxpcgTJBKOVMuz", "localExt": {"zWgfVvYV31SRtDKh": {}, "j3ctAwa6YBGdm6k0": {}, "VOxwLJcwTWTdZg2q": {}}, "longDescription": "5ttmZTBWhAWqBrK9", "title": "AkYpVbVepAFLLafF"}, "8a1foTRv6X6q7JdD": {"description": "oXyX5vxrmG0hedBe", "localExt": {"mF3Mvbzp4ZP3I4Dj": {}, "Iw9Cstuz0VW6YQxk": {}, "GEEPebHPBmp1V4br": {}}, "longDescription": "CVhe3LhsSPCaiEGJ", "title": "pP1AKlvEikmCmGpM"}}, "lootBoxConfig": {"rewardCount": 22, "rewards": [{"lootBoxItems": [{"count": 13, "duration": 24, "endDate": "1984-02-19T00:00:00Z", "itemId": "NTjJZDDguBUqFBNA", "itemSku": "GXZZL0Ht9vigKDpN", "itemType": "R5hkdyopc8kL1Ccj"}, {"count": 71, "duration": 55, "endDate": "1996-03-11T00:00:00Z", "itemId": "cCwNgcbR3aIDWIZD", "itemSku": "zlzVrnwaETnNlcDl", "itemType": "Hd9fon6UTzmvZQxN"}, {"count": 11, "duration": 93, "endDate": "1989-01-11T00:00:00Z", "itemId": "FdZtNNLfudBApfaM", "itemSku": "T0DG5KhwtmuIXx09", "itemType": "m3ZfCf5lJ75HA8wN"}], "name": "HTuO284xcE09vtiq", "odds": 0.01873607643927655, "type": "REWARD_GROUP", "weight": 0}, {"lootBoxItems": [{"count": 79, "duration": 10, "endDate": "1983-08-06T00:00:00Z", "itemId": "aOUTRIs3VnkDGCyr", "itemSku": "H3Uq8oBmy26GB8MO", "itemType": "NELlK2ZlOMyiqlvU"}, {"count": 58, "duration": 29, "endDate": "1984-06-07T00:00:00Z", "itemId": "12Fr0gbCbKoEpuKd", "itemSku": "BCnUXSrdIxdGEhNy", "itemType": "ozfKqY7mhRGAbczY"}, {"count": 48, "duration": 27, "endDate": "1989-12-14T00:00:00Z", "itemId": "q6ifPq8kRyTsHf15", "itemSku": "JFrtsUDUuQIjJ6O0", "itemType": "F8p3WM3BXxaTwwDz"}], "name": "VspaVxUgHCMUpe8V", "odds": 0.5770475747426366, "type": "PROBABILITY_GROUP", "weight": 12}, {"lootBoxItems": [{"count": 83, "duration": 58, "endDate": "1993-10-01T00:00:00Z", "itemId": "ImrPTNpEyiD9OBpJ", "itemSku": "MNYqIDSKZHwGAm9F", "itemType": "Lk0k1I9jdOERnE56"}, {"count": 57, "duration": 55, "endDate": "1983-06-21T00:00:00Z", "itemId": "gbZXIMX3sutREosV", "itemSku": "zPvpa0UWrMDkbKtW", "itemType": "qGfrOZb8aCPSPmyS"}, {"count": 85, "duration": 23, "endDate": "1971-03-12T00:00:00Z", "itemId": "3RJ6CYXiiWaGLjbs", "itemSku": "XjO97Z0pA9UKrb72", "itemType": "r1hYCQ5n89XljcQ4"}], "name": "4qWAu4YeiDLTb3tB", "odds": 0.8553876334969426, "type": "REWARD", "weight": 90}], "rollFunction": "DEFAULT"}, "maxCount": 48, "maxCountPerUser": 56, "name": "QERnru9VSBbTVKLc", "optionBoxConfig": {"boxItems": [{"count": 6, "duration": 20, "endDate": "1985-03-06T00:00:00Z", "itemId": "5ci3DnJVjFRv2YCU", "itemSku": "DccsAxe7tQjHxTey", "itemType": "MqiuF8OUckeHXFk3"}, {"count": 94, "duration": 78, "endDate": "1982-11-07T00:00:00Z", "itemId": "0qLGzUVaK8pP08c4", "itemSku": "uJfdIM3l8dWIs6cW", "itemType": "94JY4qdA3KVDsf20"}, {"count": 53, "duration": 36, "endDate": "1995-06-06T00:00:00Z", "itemId": "dJeEjk1qMsyyMGhT", "itemSku": "TCiAyXfqCfBxJXjH", "itemType": "l99ecW9Iyr7xm9Xo"}]}, "purchasable": false, "recurring": {"cycle": "WEEKLY", "fixedFreeDays": 78, "fixedTrialCycles": 32, "graceDays": 70}, "regionData": {"uBNBE0QZW3S4nqwa": [{"currencyCode": "VaQJtYkii1VcJolE", "currencyNamespace": "X4WBR4H7qpjpDBVi", "currencyType": "REAL", "discountAmount": 100, "discountExpireAt": "1973-08-21T00:00:00Z", "discountPercentage": 13, "discountPurchaseAt": "1988-08-15T00:00:00Z", "expireAt": "1985-02-07T00:00:00Z", "price": 79, "purchaseAt": "1990-07-26T00:00:00Z", "trialPrice": 53}, {"currencyCode": "H0qO596ljnalM7VI", "currencyNamespace": "ODmUAaEDfamJPVOo", "currencyType": "VIRTUAL", "discountAmount": 50, "discountExpireAt": "1985-06-07T00:00:00Z", "discountPercentage": 45, "discountPurchaseAt": "1971-05-01T00:00:00Z", "expireAt": "1987-05-08T00:00:00Z", "price": 94, "purchaseAt": "1972-12-25T00:00:00Z", "trialPrice": 17}, {"currencyCode": "XBHyGEXwvkOFw9Xh", "currencyNamespace": "rSqCOYkH7uQp4lv1", "currencyType": "VIRTUAL", "discountAmount": 23, "discountExpireAt": "1999-12-22T00:00:00Z", "discountPercentage": 50, "discountPurchaseAt": "1983-09-16T00:00:00Z", "expireAt": "1982-01-03T00:00:00Z", "price": 19, "purchaseAt": "1974-11-06T00:00:00Z", "trialPrice": 32}], "zARGA2EEoY0oILsm": [{"currencyCode": "e7Qv9738SZE5bMHY", "currencyNamespace": "QtaASrFFINkuhf83", "currencyType": "REAL", "discountAmount": 44, "discountExpireAt": "1976-12-05T00:00:00Z", "discountPercentage": 67, "discountPurchaseAt": "1978-09-06T00:00:00Z", "expireAt": "1996-03-18T00:00:00Z", "price": 26, "purchaseAt": "1974-02-01T00:00:00Z", "trialPrice": 59}, {"currencyCode": "Ile8K0gi6OQ2uGUG", "currencyNamespace": "c3JpVSHt3Dndey0s", "currencyType": "REAL", "discountAmount": 28, "discountExpireAt": "1999-07-25T00:00:00Z", "discountPercentage": 89, "discountPurchaseAt": "1999-04-30T00:00:00Z", "expireAt": "1997-07-03T00:00:00Z", "price": 86, "purchaseAt": "1973-05-09T00:00:00Z", "trialPrice": 75}, {"currencyCode": "FzLXNKlYDbOGsy6L", "currencyNamespace": "Z5AqRZSrDlaM2dqL", "currencyType": "REAL", "discountAmount": 44, "discountExpireAt": "1994-07-05T00:00:00Z", "discountPercentage": 100, "discountPurchaseAt": "1987-12-15T00:00:00Z", "expireAt": "1998-05-30T00:00:00Z", "price": 99, "purchaseAt": "1975-02-03T00:00:00Z", "trialPrice": 97}], "cwBDggTTDAjMAuiI": [{"currencyCode": "xtR1MEfcaOs8VXsu", "currencyNamespace": "vFNWjEvpTPZBbD9o", "currencyType": "VIRTUAL", "discountAmount": 21, "discountExpireAt": "1994-02-05T00:00:00Z", "discountPercentage": 9, "discountPurchaseAt": "1979-06-13T00:00:00Z", "expireAt": "1977-03-02T00:00:00Z", "price": 41, "purchaseAt": "1996-11-18T00:00:00Z", "trialPrice": 35}, {"currencyCode": "lRPxlDU3S4CgJ9kC", "currencyNamespace": "Td6L5jGHtQkGplId", "currencyType": "VIRTUAL", "discountAmount": 23, "discountExpireAt": "1997-06-08T00:00:00Z", "discountPercentage": 24, "discountPurchaseAt": "1989-11-06T00:00:00Z", "expireAt": "1983-03-11T00:00:00Z", "price": 77, "purchaseAt": "1981-12-20T00:00:00Z", "trialPrice": 14}, {"currencyCode": "N9QJ6oyj62LZMmgh", "currencyNamespace": "DmrehKksCeMKrXMM", "currencyType": "REAL", "discountAmount": 7, "discountExpireAt": "1973-09-02T00:00:00Z", "discountPercentage": 77, "discountPurchaseAt": "1997-07-29T00:00:00Z", "expireAt": "1979-08-17T00:00:00Z", "price": 22, "purchaseAt": "1978-07-17T00:00:00Z", "trialPrice": 56}]}, "saleConfig": {"currencyCode": "Wc5Pqo4xoLnQQ3bF", "price": 34}, "seasonType": "TIER", "sectionExclusive": false, "sellable": false, "sku": "GpysNM73Ij2I5n3Y", "stackable": true, "status": "ACTIVE", "tags": ["Tq8c47b6g53Hcgcm", "SpfA3YY9GT08Sane", "zHqxKWighYP9bT5p"], "targetCurrencyCode": "BhYBYEw7EXts7XAj", "targetNamespace": "qLEkAo7ZEuHaBxg6", "thumbnailUrl": "ejhRWf7ivyT4rYQP", "useCount": 91}' \
    > test.out 2>&1
eval_tap $? 105 'CreateItem' test.out

#- 106 GetItemByAppId
samples/cli/sample-apps Platform getItemByAppId \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'AEl4u3ZV9atg3m0t' \
    --appId 'IXvg6DwdUWBIHoJ5' \
    > test.out 2>&1
eval_tap $? 106 'GetItemByAppId' test.out

#- 107 QueryItems
samples/cli/sample-apps Platform queryItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --appType 'DEMO' \
    --availableDate 'tQhPP64uDFdleHfn' \
    --baseAppId '3NtF5MltLpxwyDxH' \
    --categoryPath 'u4wB5yUvw4ImJogt' \
    --features 'j1ABzQ6JMp6Aao9s' \
    --includeSubCategoryItem 'true' \
    --itemType 'OPTIONBOX' \
    --limit '81' \
    --offset '37' \
    --region 'qMoCwWDxzOXWshmu' \
    --sortBy '["updatedAt", "createdAt:asc", "updatedAt:asc"]' \
    --storeId 'BlULeQmlQSp6HAFB' \
    --tags 'eeyZoUYM7NOJKl68' \
    --targetNamespace 'eqOKfUnGRD5rud1g' \
    > test.out 2>&1
eval_tap $? 107 'QueryItems' test.out

#- 108 ListBasicItemsByFeatures
samples/cli/sample-apps Platform listBasicItemsByFeatures \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --features '["JI62noe2BMT4X0yt", "7oSd1lRVb34m7ebP", "oBKxipOvVEPh8Roh"]' \
    > test.out 2>&1
eval_tap $? 108 'ListBasicItemsByFeatures' test.out

#- 109 GetItems
samples/cli/sample-apps Platform getItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --storeId 'UIpdoucBVcksMDs7' \
    --itemIds 'aBCLPhsnwFvLVLMm' \
    > test.out 2>&1
eval_tap $? 109 'GetItems' test.out

#- 110 GetItemBySku
samples/cli/sample-apps Platform getItemBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --storeId 'rGGN2In1M8Jt2y0c' \
    --sku 'Wf7zJx2LZ3kLiUIm' \
    > test.out 2>&1
eval_tap $? 110 'GetItemBySku' test.out

#- 111 GetLocaleItemBySku
samples/cli/sample-apps Platform getLocaleItemBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --language 'r9tLmlLN9zEyUjl2' \
    --populateBundle 'true' \
    --region 'vz1ckdC0wqee9jxI' \
    --storeId 'IxWTA3JuVlkzxaAG' \
    --sku 'bUiUgIlDHCHkDd97' \
    > test.out 2>&1
eval_tap $? 111 'GetLocaleItemBySku' test.out

#- 112 GetEstimatedPrice
samples/cli/sample-apps Platform getEstimatedPrice \
    --namespace $AB_NAMESPACE \
    --platform 'neQR6adKUiqR4j5o' \
    --region 'kLUFklHa5mPEEwsh' \
    --storeId 'axenP8g1IynQlS1j' \
    --itemIds 'C9RBigfCBlu6fS9Z' \
    --userId 'Yo60ASqV4FcXpyDn' \
    > test.out 2>&1
eval_tap $? 112 'GetEstimatedPrice' test.out

#- 113 GetItemIdBySku
samples/cli/sample-apps Platform getItemIdBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --storeId '4crRpMnTBbWdTcyR' \
    --sku 'NxyfJQ36MMpbkNo4' \
    > test.out 2>&1
eval_tap $? 113 'GetItemIdBySku' test.out

#- 114 GetBulkItemIdBySkus
samples/cli/sample-apps Platform getBulkItemIdBySkus \
    --namespace $AB_NAMESPACE \
    --sku '["gS0LkRdHlfxFMkXl", "B0ZwSYeJ414tHpLU", "QAvMyQCbhjQJGRgA"]' \
    --storeId 'KT6JmrFeBYSXgWUM' \
    > test.out 2>&1
eval_tap $? 114 'GetBulkItemIdBySkus' test.out

#- 115 BulkGetLocaleItems
samples/cli/sample-apps Platform bulkGetLocaleItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --language 'mWhz5rDesHuSB8J4' \
    --region '9qSkMU6NrnLph9F2' \
    --storeId 'ALDm27aSwJWghRa0' \
    --itemIds 'mQJw7gO7eZSGY85A' \
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
    --platform '85UDCdvvKOrxZQnj' \
    --userId 'UKedbcBGmxo3ufu0' \
    --body '{"itemIds": ["KpoyQELOdIdoPZtY", "tVF6ITe9wG2e0had", "bDwMs3KTQqH7DiCc"]}' \
    > test.out 2>&1
eval_tap $? 117 'ValidateItemPurchaseCondition' test.out

#- 118 BulkUpdateRegionData
samples/cli/sample-apps Platform bulkUpdateRegionData \
    --namespace $AB_NAMESPACE \
    --storeId 'NqGWzUyo9dm9FVlr' \
    --body '{"changes": [{"itemIdentities": ["O4yaLIL7GWAJy9JM", "d3Qlw119kffSaplX", "WPpNET9eymqv8f8M"], "itemIdentityType": "ITEM_SKU", "regionData": {"ZHJ9MAA2EnieRhKw": [{"currencyCode": "CST2z6V6EAQXdbqx", "currencyNamespace": "8U7wSnKESNcv5CCE", "currencyType": "REAL", "discountAmount": 68, "discountExpireAt": "1990-07-20T00:00:00Z", "discountPercentage": 21, "discountPurchaseAt": "1975-11-26T00:00:00Z", "discountedPrice": 62, "expireAt": "1979-07-07T00:00:00Z", "price": 41, "purchaseAt": "1980-01-16T00:00:00Z", "trialPrice": 65}, {"currencyCode": "ZBQDhFlKH4ZczMzO", "currencyNamespace": "8BGzWFSHQtG84IsV", "currencyType": "REAL", "discountAmount": 3, "discountExpireAt": "1992-10-14T00:00:00Z", "discountPercentage": 52, "discountPurchaseAt": "1971-11-11T00:00:00Z", "discountedPrice": 97, "expireAt": "1994-12-28T00:00:00Z", "price": 84, "purchaseAt": "1987-06-03T00:00:00Z", "trialPrice": 87}, {"currencyCode": "yvGpK1sJJOSAp1Dk", "currencyNamespace": "JEdOXUwqo58NPk99", "currencyType": "VIRTUAL", "discountAmount": 66, "discountExpireAt": "1999-07-18T00:00:00Z", "discountPercentage": 57, "discountPurchaseAt": "1973-05-12T00:00:00Z", "discountedPrice": 14, "expireAt": "1974-06-07T00:00:00Z", "price": 95, "purchaseAt": "1996-02-26T00:00:00Z", "trialPrice": 34}], "luXmAbNFEOJRr8Id": [{"currencyCode": "JJP0SK1nzoEBjPb6", "currencyNamespace": "HgfL6rre05FqfdGt", "currencyType": "REAL", "discountAmount": 24, "discountExpireAt": "1983-05-17T00:00:00Z", "discountPercentage": 91, "discountPurchaseAt": "1999-10-25T00:00:00Z", "discountedPrice": 25, "expireAt": "1994-05-15T00:00:00Z", "price": 0, "purchaseAt": "1993-08-19T00:00:00Z", "trialPrice": 28}, {"currencyCode": "COVfcAopEqeSVaPr", "currencyNamespace": "fsOeEYuXCn9CNTLu", "currencyType": "VIRTUAL", "discountAmount": 60, "discountExpireAt": "1982-12-07T00:00:00Z", "discountPercentage": 15, "discountPurchaseAt": "1987-07-24T00:00:00Z", "discountedPrice": 96, "expireAt": "1984-08-05T00:00:00Z", "price": 84, "purchaseAt": "1997-11-27T00:00:00Z", "trialPrice": 82}, {"currencyCode": "G9ldLqLT7l18zvxd", "currencyNamespace": "MDZlxEwAcZPYwI2I", "currencyType": "VIRTUAL", "discountAmount": 85, "discountExpireAt": "1975-06-15T00:00:00Z", "discountPercentage": 96, "discountPurchaseAt": "1981-06-13T00:00:00Z", "discountedPrice": 61, "expireAt": "1980-06-12T00:00:00Z", "price": 2, "purchaseAt": "1997-10-19T00:00:00Z", "trialPrice": 63}], "euSFHai477FI1t5Z": [{"currencyCode": "DooqBfqc4zJxU30g", "currencyNamespace": "mG0muYrfQMw4B1To", "currencyType": "REAL", "discountAmount": 82, "discountExpireAt": "1972-09-24T00:00:00Z", "discountPercentage": 89, "discountPurchaseAt": "1985-12-02T00:00:00Z", "discountedPrice": 93, "expireAt": "1990-08-27T00:00:00Z", "price": 80, "purchaseAt": "1972-07-30T00:00:00Z", "trialPrice": 50}, {"currencyCode": "L99Ifrp67OXAr1sx", "currencyNamespace": "D2otHAENRiOYIYIE", "currencyType": "REAL", "discountAmount": 2, "discountExpireAt": "1988-02-17T00:00:00Z", "discountPercentage": 24, "discountPurchaseAt": "1999-03-02T00:00:00Z", "discountedPrice": 9, "expireAt": "1971-08-21T00:00:00Z", "price": 2, "purchaseAt": "1976-02-28T00:00:00Z", "trialPrice": 66}, {"currencyCode": "b7EHjxRVABTVAqXs", "currencyNamespace": "PhjKUnRTUlc4U5u2", "currencyType": "VIRTUAL", "discountAmount": 98, "discountExpireAt": "1989-08-17T00:00:00Z", "discountPercentage": 48, "discountPurchaseAt": "1988-12-28T00:00:00Z", "discountedPrice": 1, "expireAt": "1984-10-26T00:00:00Z", "price": 65, "purchaseAt": "1990-10-15T00:00:00Z", "trialPrice": 82}]}}, {"itemIdentities": ["pLPNzFocvTJBIq6n", "mXM25716X3XgNlZq", "9NMFKenYYJE5BsG7"], "itemIdentityType": "ITEM_ID", "regionData": {"2fwgJdb7BgeMUtp5": [{"currencyCode": "WhJmgmTl5Dlbopqj", "currencyNamespace": "oS86uUPnMz6RaM6M", "currencyType": "VIRTUAL", "discountAmount": 3, "discountExpireAt": "1978-06-03T00:00:00Z", "discountPercentage": 95, "discountPurchaseAt": "1974-01-10T00:00:00Z", "discountedPrice": 12, "expireAt": "1979-12-19T00:00:00Z", "price": 0, "purchaseAt": "1985-07-23T00:00:00Z", "trialPrice": 0}, {"currencyCode": "85O3NnKI3v2T10D5", "currencyNamespace": "742nVGDNvzviGDWp", "currencyType": "REAL", "discountAmount": 42, "discountExpireAt": "1988-04-21T00:00:00Z", "discountPercentage": 25, "discountPurchaseAt": "1978-12-17T00:00:00Z", "discountedPrice": 65, "expireAt": "1982-02-25T00:00:00Z", "price": 96, "purchaseAt": "1974-05-31T00:00:00Z", "trialPrice": 99}, {"currencyCode": "kY64TovS94bEpdGr", "currencyNamespace": "YqGmX0SnohqRg37g", "currencyType": "VIRTUAL", "discountAmount": 7, "discountExpireAt": "1979-02-14T00:00:00Z", "discountPercentage": 15, "discountPurchaseAt": "1987-06-20T00:00:00Z", "discountedPrice": 57, "expireAt": "1987-09-25T00:00:00Z", "price": 46, "purchaseAt": "1991-08-24T00:00:00Z", "trialPrice": 79}], "6lSrsVMwmJIn99Bi": [{"currencyCode": "YazjaptBjLiuRWD3", "currencyNamespace": "gZvlO19gZysJV6Ww", "currencyType": "REAL", "discountAmount": 16, "discountExpireAt": "1974-05-23T00:00:00Z", "discountPercentage": 54, "discountPurchaseAt": "1978-12-07T00:00:00Z", "discountedPrice": 32, "expireAt": "1995-07-30T00:00:00Z", "price": 36, "purchaseAt": "1997-03-20T00:00:00Z", "trialPrice": 14}, {"currencyCode": "oQmLvHmat3qOe185", "currencyNamespace": "H4WgHuY263S6Wb25", "currencyType": "VIRTUAL", "discountAmount": 57, "discountExpireAt": "1993-04-18T00:00:00Z", "discountPercentage": 87, "discountPurchaseAt": "1980-07-15T00:00:00Z", "discountedPrice": 98, "expireAt": "1971-12-05T00:00:00Z", "price": 97, "purchaseAt": "1979-02-28T00:00:00Z", "trialPrice": 1}, {"currencyCode": "1Q07Rr3PVcUoblQ4", "currencyNamespace": "sH6IO1MH6PrU6Ak8", "currencyType": "REAL", "discountAmount": 3, "discountExpireAt": "1981-01-05T00:00:00Z", "discountPercentage": 0, "discountPurchaseAt": "1981-06-30T00:00:00Z", "discountedPrice": 60, "expireAt": "1998-02-27T00:00:00Z", "price": 95, "purchaseAt": "1997-07-06T00:00:00Z", "trialPrice": 74}], "WhpJgW6cFG7kD5Ow": [{"currencyCode": "QZUH0O30U9LZ1wkh", "currencyNamespace": "4rLuw2VtWFl0p3r2", "currencyType": "REAL", "discountAmount": 49, "discountExpireAt": "1989-12-06T00:00:00Z", "discountPercentage": 1, "discountPurchaseAt": "1998-02-12T00:00:00Z", "discountedPrice": 16, "expireAt": "1971-09-11T00:00:00Z", "price": 37, "purchaseAt": "1993-08-22T00:00:00Z", "trialPrice": 20}, {"currencyCode": "Oe1DzgaTd2SKTxaG", "currencyNamespace": "ZK8QX6eT4Eo0B4TX", "currencyType": "REAL", "discountAmount": 76, "discountExpireAt": "1995-07-19T00:00:00Z", "discountPercentage": 95, "discountPurchaseAt": "1996-04-23T00:00:00Z", "discountedPrice": 28, "expireAt": "1999-11-30T00:00:00Z", "price": 61, "purchaseAt": "1993-10-13T00:00:00Z", "trialPrice": 39}, {"currencyCode": "92lM5dNBnUnofywb", "currencyNamespace": "AWETBfiUF0dOmTIA", "currencyType": "REAL", "discountAmount": 13, "discountExpireAt": "1975-05-28T00:00:00Z", "discountPercentage": 2, "discountPurchaseAt": "1997-11-09T00:00:00Z", "discountedPrice": 63, "expireAt": "1985-01-31T00:00:00Z", "price": 45, "purchaseAt": "1996-03-16T00:00:00Z", "trialPrice": 68}]}}, {"itemIdentities": ["tRkxu0KrhlabE8tK", "RYRC0AUj7edeDLc0", "bBBtGoUF6AR1R6oA"], "itemIdentityType": "ITEM_SKU", "regionData": {"zEb6FkhxB0Nzxpe0": [{"currencyCode": "LGBd9BmVleqmjWzr", "currencyNamespace": "Zzn9o2ukUjilkOL6", "currencyType": "REAL", "discountAmount": 45, "discountExpireAt": "1989-10-11T00:00:00Z", "discountPercentage": 9, "discountPurchaseAt": "1996-08-18T00:00:00Z", "discountedPrice": 3, "expireAt": "1990-09-29T00:00:00Z", "price": 20, "purchaseAt": "1976-04-30T00:00:00Z", "trialPrice": 66}, {"currencyCode": "BBtxa14Vy2nEQUWi", "currencyNamespace": "bngYT1hekgmXd3Pw", "currencyType": "VIRTUAL", "discountAmount": 48, "discountExpireAt": "1977-01-12T00:00:00Z", "discountPercentage": 14, "discountPurchaseAt": "1985-05-23T00:00:00Z", "discountedPrice": 8, "expireAt": "1987-03-12T00:00:00Z", "price": 93, "purchaseAt": "1999-10-11T00:00:00Z", "trialPrice": 13}, {"currencyCode": "WbqY3XaTnO3Ls0La", "currencyNamespace": "r2pBXwT01zDA7y1t", "currencyType": "VIRTUAL", "discountAmount": 29, "discountExpireAt": "1984-03-19T00:00:00Z", "discountPercentage": 38, "discountPurchaseAt": "1999-06-24T00:00:00Z", "discountedPrice": 3, "expireAt": "1998-08-21T00:00:00Z", "price": 51, "purchaseAt": "1972-12-07T00:00:00Z", "trialPrice": 98}], "sNaNxipDmmqruAIo": [{"currencyCode": "XZrLYtiCR9pbtsJ2", "currencyNamespace": "APbCG7MxpRRiwcCK", "currencyType": "REAL", "discountAmount": 4, "discountExpireAt": "1985-05-19T00:00:00Z", "discountPercentage": 21, "discountPurchaseAt": "1998-09-10T00:00:00Z", "discountedPrice": 58, "expireAt": "1986-05-23T00:00:00Z", "price": 14, "purchaseAt": "1998-04-10T00:00:00Z", "trialPrice": 75}, {"currencyCode": "N5zLZ0UlQG5UKWQc", "currencyNamespace": "6gl0kTlrU0l595P2", "currencyType": "VIRTUAL", "discountAmount": 70, "discountExpireAt": "1989-06-26T00:00:00Z", "discountPercentage": 29, "discountPurchaseAt": "1982-10-18T00:00:00Z", "discountedPrice": 57, "expireAt": "1980-12-09T00:00:00Z", "price": 27, "purchaseAt": "1996-07-27T00:00:00Z", "trialPrice": 42}, {"currencyCode": "CcFlDmfnEpEBVhr2", "currencyNamespace": "XdG97zc5PSE9Dhcx", "currencyType": "REAL", "discountAmount": 40, "discountExpireAt": "1998-12-23T00:00:00Z", "discountPercentage": 100, "discountPurchaseAt": "1984-07-31T00:00:00Z", "discountedPrice": 59, "expireAt": "1991-03-05T00:00:00Z", "price": 21, "purchaseAt": "1990-10-31T00:00:00Z", "trialPrice": 100}], "X5EWJpSVf9HxbXvW": [{"currencyCode": "XUTQYF5qQH9CCbno", "currencyNamespace": "uBenLvTmqRwdDHeJ", "currencyType": "REAL", "discountAmount": 83, "discountExpireAt": "1978-01-15T00:00:00Z", "discountPercentage": 48, "discountPurchaseAt": "1999-02-28T00:00:00Z", "discountedPrice": 3, "expireAt": "1989-04-15T00:00:00Z", "price": 85, "purchaseAt": "1996-09-29T00:00:00Z", "trialPrice": 81}, {"currencyCode": "eG243933wTz4VTHv", "currencyNamespace": "qF7m6c31jrGRiMff", "currencyType": "REAL", "discountAmount": 27, "discountExpireAt": "1994-04-27T00:00:00Z", "discountPercentage": 26, "discountPurchaseAt": "1992-08-06T00:00:00Z", "discountedPrice": 57, "expireAt": "1981-05-15T00:00:00Z", "price": 91, "purchaseAt": "1994-04-14T00:00:00Z", "trialPrice": 23}, {"currencyCode": "KoCr2SxdZsWBQdcp", "currencyNamespace": "LvHdYp3DOsIarqPm", "currencyType": "VIRTUAL", "discountAmount": 64, "discountExpireAt": "1997-11-17T00:00:00Z", "discountPercentage": 93, "discountPurchaseAt": "1999-02-03T00:00:00Z", "discountedPrice": 23, "expireAt": "1995-02-04T00:00:00Z", "price": 22, "purchaseAt": "1977-06-28T00:00:00Z", "trialPrice": 46}]}}]}' \
    > test.out 2>&1
eval_tap $? 118 'BulkUpdateRegionData' test.out

#- 119 SearchItems
samples/cli/sample-apps Platform searchItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --itemType 'CODE' \
    --limit '17' \
    --offset '99' \
    --sortBy 'WSBeOeQz66bYva4D' \
    --storeId '6ypGpZyPE1ATUl5H' \
    --keyword 'fbskXqS47P3QtA3r' \
    --language 'shdjeCxzxwahiYbL' \
    > test.out 2>&1
eval_tap $? 119 'SearchItems' test.out

#- 120 QueryUncategorizedItems
samples/cli/sample-apps Platform queryUncategorizedItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --limit '54' \
    --offset '42' \
    --sortBy '["updatedAt:desc", "name:asc"]' \
    --storeId 'dvRH9nm0AnX4PCC3' \
    > test.out 2>&1
eval_tap $? 120 'QueryUncategorizedItems' test.out

#- 121 GetItem
samples/cli/sample-apps Platform getItem \
    --itemId 'Cy9CxeYuMkHOJYIo' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId '6ZVT4pNj1AJBcIpT' \
    > test.out 2>&1
eval_tap $? 121 'GetItem' test.out

#- 122 UpdateItem
samples/cli/sample-apps Platform updateItem \
    --itemId 'qgrM1MbkWR7BOZXV' \
    --namespace $AB_NAMESPACE \
    --storeId '1eUiM9nb9U3x862p' \
    --body '{"appId": "ECjLBwf8fBdNwbQv", "appType": "GAME", "baseAppId": "M9KIe9XivTeOUVVW", "boothName": "z8aHmlPsfJSvvFrq", "categoryPath": "EVJ7jVC9VKFubJ76", "clazz": "14jb2zqQtJz2sL8W", "displayOrder": 99, "entitlementType": "DURABLE", "ext": {"vbx1TEsyyovdMUVQ": {}, "WrLCGKbhlNfyM29L": {}, "ckb2D0pFdbgoiGk1": {}}, "features": ["nX4Rbjp7EO7RojI6", "aBcHcsuabRCttuoI", "15TO3pqU5oDPfZHT"], "flexible": true, "images": [{"as": "KttQYmHgPLnTPaAD", "caption": "m998WTesO0vRM5DU", "height": 22, "imageUrl": "l8cspubv8zXVlgTB", "smallImageUrl": "b605ybSFGuyYQw2u", "width": 30}, {"as": "SeqjnaOHOgOj5OkL", "caption": "OyP5s8iIYJkHbfac", "height": 85, "imageUrl": "hzxc4HaF39Gf8jGG", "smallImageUrl": "RJIhaakCmCJCZzsr", "width": 67}, {"as": "UfFQWezampNYhmUt", "caption": "b2IsbAhzvAzp0VkU", "height": 26, "imageUrl": "IoTphiFP8dseGKuJ", "smallImageUrl": "sJwK4ceZat80OF5U", "width": 15}], "inventoryConfig": {"customAttributes": {"909S8NAtV9feEcmK": {}, "2GdBzSd7MUrPzgrQ": {}, "Zov39jon031nyYOa": {}}, "serverCustomAttributes": {"pkG8ZimXAloofer8": {}, "vYZXclWzl0MTgt6H": {}, "pdHjFg9OqE5AdhQV": {}}, "slotUsed": 7}, "itemIds": ["lGNzVo4pqw5rfbfn", "X5HCTLXPmjkpPJfp", "kxq11yGBDDxgPp9c"], "itemQty": {"Gst5GsCkhjEL6mVY": 84, "NB8kU6DuLvZZEMGr": 35, "Br4w0SQOw4R8ohjn": 89}, "itemType": "EXTENSION", "listable": true, "localizations": {"vvVhjru6bgVjbAkB": {"description": "JoF8AeGAloZYrC1L", "localExt": {"EsnofAjqQIDYZ0fA": {}, "TC6ldYGZBQ8xMZ37": {}, "wxzuZmu5pGkUSyET": {}}, "longDescription": "uaNzfmW4SeBmAxU3", "title": "pRBuZ5PvwXnYhcWm"}, "bsblWxYQQ12e0TQT": {"description": "uziY4UsA2mT89RxJ", "localExt": {"tSg3CySAks23qxs6": {}, "5Q9pYMvl3ONtLID6": {}, "0OgNri6txNxILJsn": {}}, "longDescription": "cZsf6G8oknI1pm4e", "title": "T0kypaQDQUgPrA40"}, "UiDMIbN4fRRldOz1": {"description": "bzadqeGdx15fzN5m", "localExt": {"BeuiFnzMtByScmd3": {}, "c2YDtW61JSnNx1jC": {}, "qFK89gevYGjsrwEG": {}}, "longDescription": "fWp8bUvmBGxzbuWl", "title": "rb8BSky1OBdwsmGB"}}, "lootBoxConfig": {"rewardCount": 20, "rewards": [{"lootBoxItems": [{"count": 40, "duration": 36, "endDate": "1997-04-21T00:00:00Z", "itemId": "uYv2qAQ7TxU6m9uE", "itemSku": "QiP1gKHvT42HaYQy", "itemType": "SewiiwfcUsF70YEG"}, {"count": 49, "duration": 65, "endDate": "1999-10-01T00:00:00Z", "itemId": "Sbv5cqcQALbaHW9c", "itemSku": "7mEtL6oMXA3KfjEn", "itemType": "WXKrTZdtL26ql4lZ"}, {"count": 53, "duration": 79, "endDate": "1984-06-22T00:00:00Z", "itemId": "dKfAtkJzvsQWIrXT", "itemSku": "AhZ3sDDzRWNPUEXj", "itemType": "hLIrm3mT4a3FdGgc"}], "name": "dEPLtjaa9hPTxTmS", "odds": 0.24010228168729164, "type": "PROBABILITY_GROUP", "weight": 86}, {"lootBoxItems": [{"count": 85, "duration": 17, "endDate": "1974-05-19T00:00:00Z", "itemId": "xbXYFMXYM0IPPEWU", "itemSku": "4aTAgrhvimofHZEY", "itemType": "0T3LD9rJvHCf7hmJ"}, {"count": 85, "duration": 95, "endDate": "1998-11-27T00:00:00Z", "itemId": "VCKfbeAooRRmoeym", "itemSku": "4UgAoAEG1iHiUh4N", "itemType": "JPySJcBYQyjNsZI3"}, {"count": 28, "duration": 96, "endDate": "1995-02-13T00:00:00Z", "itemId": "BIGmXHVPGCDhmNYA", "itemSku": "dneeBo8j0po2UjAL", "itemType": "qYMukkifPRHo8Hsa"}], "name": "VaD5GWA5VhI5B2rI", "odds": 0.7552075026912426, "type": "REWARD", "weight": 35}, {"lootBoxItems": [{"count": 8, "duration": 23, "endDate": "1974-08-07T00:00:00Z", "itemId": "xbBvRcwV0AjlsUod", "itemSku": "a2b1gUOHyuqGKXHj", "itemType": "M9UQZzBzTj7g7QaO"}, {"count": 98, "duration": 47, "endDate": "1971-05-18T00:00:00Z", "itemId": "rtJNe5x30sTO6LfU", "itemSku": "8TASo4TKPpslR7Ce", "itemType": "GqR269kLiJ9GYlM2"}, {"count": 70, "duration": 60, "endDate": "1982-11-23T00:00:00Z", "itemId": "ULyllR59SiESrqb3", "itemSku": "paRuriIgcMO2Wtoh", "itemType": "9ATlQGB4iqjXPpAV"}], "name": "sDrA4FYfVCjRnQQU", "odds": 0.6762327911691097, "type": "REWARD", "weight": 44}], "rollFunction": "DEFAULT"}, "maxCount": 95, "maxCountPerUser": 1, "name": "q2Zx7pU4DxnN4X4Z", "optionBoxConfig": {"boxItems": [{"count": 9, "duration": 15, "endDate": "1973-09-18T00:00:00Z", "itemId": "tKD661QEmbmc5JVr", "itemSku": "Hyw9okT3nGiQOEDO", "itemType": "LktSPX9u4lh78LgZ"}, {"count": 45, "duration": 60, "endDate": "1971-10-20T00:00:00Z", "itemId": "tGcoUBRr8B0a9oab", "itemSku": "hgn6b1hceObZwOLG", "itemType": "WKKiqRUSdRr8sjHf"}, {"count": 22, "duration": 60, "endDate": "1971-09-22T00:00:00Z", "itemId": "Z0dUxSZXtjW3Af2o", "itemSku": "kSA4Ea0gnJsL8AIL", "itemType": "N9xp7Ys5XOyKpwEC"}]}, "purchasable": false, "recurring": {"cycle": "MONTHLY", "fixedFreeDays": 80, "fixedTrialCycles": 80, "graceDays": 45}, "regionData": {"BxAVnTraBxmABhDG": [{"currencyCode": "JOfjyFraMwwWeNC7", "currencyNamespace": "lqy3wqAEcBxTdgPn", "currencyType": "REAL", "discountAmount": 78, "discountExpireAt": "1979-05-31T00:00:00Z", "discountPercentage": 86, "discountPurchaseAt": "1973-05-14T00:00:00Z", "expireAt": "1972-08-10T00:00:00Z", "price": 72, "purchaseAt": "1977-10-19T00:00:00Z", "trialPrice": 41}, {"currencyCode": "PutgFih2bqm6FRYt", "currencyNamespace": "boqRU0Gp4MTdolOJ", "currencyType": "REAL", "discountAmount": 4, "discountExpireAt": "1996-01-31T00:00:00Z", "discountPercentage": 52, "discountPurchaseAt": "1981-11-30T00:00:00Z", "expireAt": "1987-11-14T00:00:00Z", "price": 29, "purchaseAt": "1979-05-14T00:00:00Z", "trialPrice": 32}, {"currencyCode": "2SVNEJDZeWGsRAn1", "currencyNamespace": "p4XyNGCc6HHs62ZC", "currencyType": "VIRTUAL", "discountAmount": 5, "discountExpireAt": "1978-10-20T00:00:00Z", "discountPercentage": 55, "discountPurchaseAt": "1987-01-21T00:00:00Z", "expireAt": "1982-02-05T00:00:00Z", "price": 72, "purchaseAt": "1995-02-07T00:00:00Z", "trialPrice": 80}], "XAd9Pb3GfixJl205": [{"currencyCode": "MHYU7HcXaLcLJVwD", "currencyNamespace": "6UgCJ2aaZD3tkrdH", "currencyType": "REAL", "discountAmount": 4, "discountExpireAt": "1982-08-27T00:00:00Z", "discountPercentage": 10, "discountPurchaseAt": "1992-04-07T00:00:00Z", "expireAt": "1989-11-02T00:00:00Z", "price": 47, "purchaseAt": "1995-05-29T00:00:00Z", "trialPrice": 91}, {"currencyCode": "F8LjJIqiAhhAfs8W", "currencyNamespace": "OP4SZpzkFdqxnG2s", "currencyType": "VIRTUAL", "discountAmount": 26, "discountExpireAt": "1977-09-12T00:00:00Z", "discountPercentage": 97, "discountPurchaseAt": "1988-10-06T00:00:00Z", "expireAt": "1993-02-28T00:00:00Z", "price": 31, "purchaseAt": "1977-03-15T00:00:00Z", "trialPrice": 3}, {"currencyCode": "W0Rp83HWpSG9ndYd", "currencyNamespace": "ZkIU5rEvF4dAu58t", "currencyType": "REAL", "discountAmount": 43, "discountExpireAt": "1981-07-05T00:00:00Z", "discountPercentage": 59, "discountPurchaseAt": "1974-10-12T00:00:00Z", "expireAt": "1973-07-10T00:00:00Z", "price": 7, "purchaseAt": "1993-08-15T00:00:00Z", "trialPrice": 39}], "WzJidhlxfg7QxJuD": [{"currencyCode": "j4VobdzLo9sprrPI", "currencyNamespace": "dsDwj6mymnEyIbmQ", "currencyType": "VIRTUAL", "discountAmount": 12, "discountExpireAt": "1975-06-17T00:00:00Z", "discountPercentage": 99, "discountPurchaseAt": "1991-02-19T00:00:00Z", "expireAt": "1997-12-23T00:00:00Z", "price": 97, "purchaseAt": "1991-09-21T00:00:00Z", "trialPrice": 93}, {"currencyCode": "Q7s9pnu26JGLG8BX", "currencyNamespace": "dLu5VpEA2C2ePtl4", "currencyType": "VIRTUAL", "discountAmount": 26, "discountExpireAt": "1986-02-18T00:00:00Z", "discountPercentage": 92, "discountPurchaseAt": "1993-02-20T00:00:00Z", "expireAt": "1980-09-30T00:00:00Z", "price": 98, "purchaseAt": "1989-06-27T00:00:00Z", "trialPrice": 14}, {"currencyCode": "f5qy8kvSZb94XqeP", "currencyNamespace": "IIOr9kDDSAVH1hPU", "currencyType": "VIRTUAL", "discountAmount": 49, "discountExpireAt": "1973-01-25T00:00:00Z", "discountPercentage": 49, "discountPurchaseAt": "1979-12-16T00:00:00Z", "expireAt": "1976-02-03T00:00:00Z", "price": 91, "purchaseAt": "1980-10-23T00:00:00Z", "trialPrice": 75}]}, "saleConfig": {"currencyCode": "IlcmtwoPZ2V3XwhU", "price": 44}, "seasonType": "TIER", "sectionExclusive": true, "sellable": false, "sku": "B4jieVciWpOqeQJA", "stackable": false, "status": "ACTIVE", "tags": ["u0GFZ1IVBQdEvsrt", "fuTGCBl39LNYTLCs", "rHdB5O6v2fF7PbKl"], "targetCurrencyCode": "k5WULbOUnqiL08DM", "targetNamespace": "cdrl2ukMKNWMMWxk", "thumbnailUrl": "l8lDitiBFDSqwamg", "useCount": 44}' \
    > test.out 2>&1
eval_tap $? 122 'UpdateItem' test.out

#- 123 DeleteItem
samples/cli/sample-apps Platform deleteItem \
    --itemId 'lVgWVvdOAwg5kyjd' \
    --namespace $AB_NAMESPACE \
    --force 'true' \
    --storeId 'yRpbzqCHi1JK7dTU' \
    > test.out 2>&1
eval_tap $? 123 'DeleteItem' test.out

#- 124 AcquireItem
samples/cli/sample-apps Platform acquireItem \
    --itemId 'TIQqnqgaQHSfdOSc' \
    --namespace $AB_NAMESPACE \
    --body '{"count": 20, "orderNo": "EENUcBeEBqu1tl5o"}' \
    > test.out 2>&1
eval_tap $? 124 'AcquireItem' test.out

#- 125 GetApp
samples/cli/sample-apps Platform getApp \
    --itemId '9qZTFpDRfs2qai0i' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'm9aWNoWmfNw2H9ll' \
    > test.out 2>&1
eval_tap $? 125 'GetApp' test.out

#- 126 UpdateApp
samples/cli/sample-apps Platform updateApp \
    --itemId '5nWdXQTdyrZOZEiF' \
    --namespace $AB_NAMESPACE \
    --storeId 'DrL4hwOw1UNZDjr0' \
    --body '{"carousel": [{"alt": "p8Kvtnat4me2TaIj", "previewUrl": "nlWwRhOntEUa1KA1", "thumbnailUrl": "88W4nI6xy43kTJnU", "type": "image", "url": "9WjDXfyAO8BSBJmk", "videoSource": "generic"}, {"alt": "ZUZZYtICxFjtJYYD", "previewUrl": "qZC28Lp6rIaw2dIb", "thumbnailUrl": "NEEgsJdzB3UqdHS6", "type": "image", "url": "L42FCwjBBDOiYpDR", "videoSource": "vimeo"}, {"alt": "jQT5Z1Tkn8BOJf24", "previewUrl": "K3h8AxREbC63tmzJ", "thumbnailUrl": "5ZD8eYEtrQ9VVbqg", "type": "image", "url": "zl1VpY4IBogmG1Gh", "videoSource": "youtube"}], "developer": "FhkfW689eJEB5lGo", "forumUrl": "Grm6MGjI94L9xIFN", "genres": ["Casual", "Indie", "Sports"], "localizations": {"xe21Jh6X71ikuk8m": {"announcement": "QFML4IuEou9eMrOE", "slogan": "UUF5qZvx8Ue4w4g1"}, "A0vwtXTFb7NYn4Pc": {"announcement": "bbu46BsmuYRlEKtC", "slogan": "Qp0qiVgVEjH2swp0"}, "segkoEnZlsMvJnXm": {"announcement": "GgILG04d46ElNwVv", "slogan": "3fB61571WUVWpGjk"}}, "platformRequirements": {"fBnISn4lneay1SdW": [{"additionals": "S6DPWSeoU5RdkRZS", "directXVersion": "nrENA7n6wkbc0MYX", "diskSpace": "n2fnowPNTzDVWBll", "graphics": "D6hJTrdd0trWsRXn", "label": "w60R3BfOQjifHYP3", "osVersion": "kxKn85jIj5zMKF9f", "processor": "721UH5VjWx3m5kk2", "ram": "PMEvFSgKojhG7nGd", "soundCard": "75HNr31r9mLqImDQ"}, {"additionals": "0FXUb5zSUwt45fCj", "directXVersion": "FKiEvjxGZUB7WVev", "diskSpace": "80Pf1WR8KC7rmxcA", "graphics": "p4Y3w4qFos5nW2ha", "label": "cD5GyaxlTm7XKNjf", "osVersion": "KzMDpGdZV79n2f0W", "processor": "IOiCp32qQhCuMsH3", "ram": "8TmGo32mz17FE8Gv", "soundCard": "kwydWWE9cODo15Eh"}, {"additionals": "CLk9bELUq5AjzETL", "directXVersion": "fR1DmqkIy1lM4ScA", "diskSpace": "aoBPeOsbhKZCHmmV", "graphics": "3rgS9PsMqf21zAo0", "label": "nXjI5OlVhUpS6AxV", "osVersion": "OeIsIIrHNuXTzsAI", "processor": "yICtGRUQ04IEb4lE", "ram": "MYcKz5Fv3QQxrPss", "soundCard": "S9baitPuQdxT3fCK"}], "x8ZsIQ0tuGSTVTn8": [{"additionals": "dAMlfDWcpNBdwAYG", "directXVersion": "z8UtEHV2yzMb5dxt", "diskSpace": "61CJu8XB7qXqFNxP", "graphics": "sNGgHtD3tE7ffzxf", "label": "q04dxwukmqAlf1pA", "osVersion": "WjpJ7abdQgB3zPXG", "processor": "bI6tCgudzPF8lctc", "ram": "jgmYl0VzSt0rVGiT", "soundCard": "bWgwLxy9vgfG9hCj"}, {"additionals": "HVvUe7pxSOKp4MT6", "directXVersion": "UY7DF5Qq8SnSMtG0", "diskSpace": "ha1yDigCW50gNvDS", "graphics": "PlOsszl0r1fsLmSh", "label": "AGms2SdqEIxEP4aQ", "osVersion": "gNgTybYW1zc41kBO", "processor": "AjoyvX6yN5SF5kJA", "ram": "fnEKZtb02wkKoiVf", "soundCard": "bbxxCtPoKUmwUnVI"}, {"additionals": "6xYjlwtCI0wOUhaV", "directXVersion": "WnonMU60SiH8B8CO", "diskSpace": "xHs2vqRfO4vcc6Ep", "graphics": "lpu0XprjRtILL74T", "label": "CvBwprbqvmGQxFug", "osVersion": "g4wMNYMAw9ADERDV", "processor": "PtQAcRcQ2FCIfjIC", "ram": "C6b0SVdedewTOxV3", "soundCard": "QiLDGmclf0kb0yrM"}], "TrDt6TrTCl2UP9sG": [{"additionals": "rLilSzFblDDOmxkW", "directXVersion": "LCwXWeaJzEn8oRKB", "diskSpace": "IZy38kufzErhRQ1y", "graphics": "yxAoGf8EAGtmA1fs", "label": "SLv1w3XzfVvtYw0E", "osVersion": "IvjyCzcj26Dt3q8R", "processor": "vxVfkjlLvn3maxLu", "ram": "JymijRDY6GTIxY9b", "soundCard": "3rw1ncEKs9OZmoWK"}, {"additionals": "DFplsK5ovET5sLwZ", "directXVersion": "hZ084ZOmGVfNYMQO", "diskSpace": "qWmKNa9Y9g1MCHzC", "graphics": "1fkdG1hV0UBc9Kb9", "label": "RWn0hF8cWey77ciI", "osVersion": "F7b4ph1Z7GDAL8P9", "processor": "0qTonfZe9hEkjs8T", "ram": "TLaI5gbum6H8NQWs", "soundCard": "2z8OeQAklsVCfrMS"}, {"additionals": "2lzreRUfKwzY49It", "directXVersion": "BVKSESapmnmwitOz", "diskSpace": "jowT6gXEOXoU2p5Z", "graphics": "BcWpcT3TfJ0eI2w9", "label": "4zIaIPeksoOMqabH", "osVersion": "zC8nPXTTa6a0P2yS", "processor": "zQGqI6C2xgX4i0Nd", "ram": "ruksJTR9s6lfDApg", "soundCard": "IvX0rrWvOdiZB2oO"}]}, "platforms": ["Windows", "IOS", "IOS"], "players": ["Coop", "MMO", "LocalCoop"], "primaryGenre": "MassivelyMultiplayer", "publisher": "LXeLj3a1HNQY4fCY", "releaseDate": "1983-07-18T00:00:00Z", "websiteUrl": "tv4mhtFzbIl4KJvB"}' \
    > test.out 2>&1
eval_tap $? 126 'UpdateApp' test.out

#- 127 DisableItem
samples/cli/sample-apps Platform disableItem \
    --itemId 'H1y4vSZbwg8dDiND' \
    --namespace $AB_NAMESPACE \
    --storeId 'Ou7eHNvT8fyqhrFT' \
    > test.out 2>&1
eval_tap $? 127 'DisableItem' test.out

#- 128 GetItemDynamicData
samples/cli/sample-apps Platform getItemDynamicData \
    --itemId 'wQvY6YUsfA4G2gSw' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 128 'GetItemDynamicData' test.out

#- 129 EnableItem
samples/cli/sample-apps Platform enableItem \
    --itemId 'gXk4XhZ4VZKrEQGf' \
    --namespace $AB_NAMESPACE \
    --storeId 'LjwF3sljfUnZGPBu' \
    > test.out 2>&1
eval_tap $? 129 'EnableItem' test.out

#- 130 FeatureItem
samples/cli/sample-apps Platform featureItem \
    --feature 'AQPBcSyjc78Qi2na' \
    --itemId 'cqswXNQ5HckHM7S5' \
    --namespace $AB_NAMESPACE \
    --storeId '6gXZccDntCpcfOwX' \
    > test.out 2>&1
eval_tap $? 130 'FeatureItem' test.out

#- 131 DefeatureItem
samples/cli/sample-apps Platform defeatureItem \
    --feature 'cRVk1nOs0ox0IZ0B' \
    --itemId 'QJ6NVQqzFgae9rIf' \
    --namespace $AB_NAMESPACE \
    --storeId '9DQad1bop5aFwRyt' \
    > test.out 2>&1
eval_tap $? 131 'DefeatureItem' test.out

#- 132 GetLocaleItem
samples/cli/sample-apps Platform getLocaleItem \
    --itemId '3HkKdonES2K2xldv' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --language 'UYjo299QXRSbJZHo' \
    --populateBundle 'false' \
    --region 'zEO7ynNgrDflf6ht' \
    --storeId 'CHEmN8UnYpHYxBqT' \
    > test.out 2>&1
eval_tap $? 132 'GetLocaleItem' test.out

#- 133 UpdateItemPurchaseCondition
samples/cli/sample-apps Platform updateItemPurchaseCondition \
    --itemId '9B6fcBLlNstcUm8k' \
    --namespace $AB_NAMESPACE \
    --storeId '8bMeCNv90FkMWAcm' \
    --body '{"purchaseCondition": {"conditionGroups": [{"operator": "and", "predicates": [{"anyOf": 63, "comparison": "is", "name": "rUPKJ0sIeBUzGolg", "predicateType": "SeasonPassPredicate", "value": "f40I6c67uesmkUmB", "values": ["oxhxnnX98PDlSOBd", "eqg6wxE7vzCFU16c", "Da5nNwdsSYMnNvGZ"]}, {"anyOf": 42, "comparison": "isGreaterThanOrEqual", "name": "4YC7QSosvwchvO0t", "predicateType": "SeasonTierPredicate", "value": "rDBCWZpJfMck7Xzo", "values": ["NkOx7qx9vRvYpxpG", "WFGffYOUfIGx5OaH", "S1SIiBzAvAPffqUU"]}, {"anyOf": 88, "comparison": "is", "name": "GBD38ZeSc6n6g6l0", "predicateType": "SeasonPassPredicate", "value": "ZsVGp9hk6FHPhaF3", "values": ["Np2w1o9NL2CNpB7I", "IsUA6rZSVQv4EYFh", "SmKqAlwjGVE9fDvj"]}]}, {"operator": "or", "predicates": [{"anyOf": 65, "comparison": "isNot", "name": "5VvB06tk9YEF0MZz", "predicateType": "SeasonTierPredicate", "value": "9ICipnDTi0I7lQCv", "values": ["eTY3aoX43QOxp10p", "bxogQT2kMJiwOGba", "WcKJKU7y4ydBsXrs"]}, {"anyOf": 3, "comparison": "includes", "name": "fKMPAzX1IgPbfMqs", "predicateType": "EntitlementPredicate", "value": "3CD8zGi8CTrvBXuk", "values": ["IVgE2IHcCPBz0DNf", "A2knNViKjPB85fTx", "YExFLB9fjlDpCEFo"]}, {"anyOf": 58, "comparison": "isLessThan", "name": "FKmrtpFk1Us0tNYQ", "predicateType": "SeasonTierPredicate", "value": "sI4aSi44PzV1srVk", "values": ["2vDCqvPK7ly24c43", "D5jnwhDhmLCUEh37", "PYrkcw2c7cdV92df"]}]}, {"operator": "or", "predicates": [{"anyOf": 71, "comparison": "isLessThan", "name": "2g2Z3iU9BBNVdfvV", "predicateType": "SeasonTierPredicate", "value": "TVnYR1Hx9H9ag7tN", "values": ["sboWw6PYM31QCWjD", "CtkBYpx7RVzULxPX", "sOZwQI4ciAlJgMXi"]}, {"anyOf": 14, "comparison": "includes", "name": "sIo7TGC98S12buAt", "predicateType": "EntitlementPredicate", "value": "rgh3pbYAJHLiyD7g", "values": ["73ggMB4JhNIIukNA", "qBhuPxAJocWPDpsV", "frzu0gSLtSUCEzNc"]}, {"anyOf": 12, "comparison": "is", "name": "D6W7bzph6Cg4ayJd", "predicateType": "SeasonTierPredicate", "value": "ugMaGeEpdWEQrjUo", "values": ["tX1VBF2mV7qlrqP6", "keASbCgQbmnv4YQf", "JPGnZUuC6OcKeb5o"]}]}]}}' \
    > test.out 2>&1
eval_tap $? 133 'UpdateItemPurchaseCondition' test.out

#- 134 ReturnItem
samples/cli/sample-apps Platform returnItem \
    --itemId 'qwnNhEcdyGCjZqqc' \
    --namespace $AB_NAMESPACE \
    --body '{"orderNo": "QFODkzgJzdE4F95P"}' \
    > test.out 2>&1
eval_tap $? 134 'ReturnItem' test.out

#- 135 QueryKeyGroups
samples/cli/sample-apps Platform queryKeyGroups \
    --namespace $AB_NAMESPACE \
    --limit '20' \
    --name '6XXmB56Ti1N0dLc8' \
    --offset '29' \
    --tag '8mTctSh3MTGliLDw' \
    > test.out 2>&1
eval_tap $? 135 'QueryKeyGroups' test.out

#- 136 CreateKeyGroup
samples/cli/sample-apps Platform createKeyGroup \
    --namespace $AB_NAMESPACE \
    --body '{"description": "6H4XztwTUUlBjnyU", "name": "VZVRQfoXPj80SNxr", "status": "INACTIVE", "tags": ["ZfqPRYc73uzl0JSA", "i0z72VcHiI9MFriG", "2Itzlo0lRrBlReU8"]}' \
    > test.out 2>&1
eval_tap $? 136 'CreateKeyGroup' test.out

#- 137 GetKeyGroupByBoothName
eval_tap 0 137 'GetKeyGroupByBoothName # SKIP deprecated' test.out

#- 138 GetKeyGroup
samples/cli/sample-apps Platform getKeyGroup \
    --keyGroupId 'fDuW1uI6rD7BMB8Q' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 138 'GetKeyGroup' test.out

#- 139 UpdateKeyGroup
samples/cli/sample-apps Platform updateKeyGroup \
    --keyGroupId '1yr0LzGk9jDRBvbq' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "8jLgz8YFqw1Vq5wY", "name": "D4vgDfNBEE2tI3vm", "status": "INACTIVE", "tags": ["qGA4A9rYHMa7vavK", "9LE2mEnwCbpxLWJ4", "Yi8piFkXjTkgT5eg"]}' \
    > test.out 2>&1
eval_tap $? 139 'UpdateKeyGroup' test.out

#- 140 GetKeyGroupDynamic
samples/cli/sample-apps Platform getKeyGroupDynamic \
    --keyGroupId 'nCjB2OpCjET0arE6' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 140 'GetKeyGroupDynamic' test.out

#- 141 ListKeys
samples/cli/sample-apps Platform listKeys \
    --keyGroupId 'aBXXeJ8QpIXKVsMj' \
    --namespace $AB_NAMESPACE \
    --limit '13' \
    --offset '31' \
    --status 'ACQUIRED' \
    > test.out 2>&1
eval_tap $? 141 'ListKeys' test.out

#- 142 UploadKeys
samples/cli/sample-apps Platform uploadKeys \
    --keyGroupId 'ChfkM6FWYLWu7FoC' \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 142 'UploadKeys' test.out

#- 143 QueryOrders
samples/cli/sample-apps Platform queryOrders \
    --namespace $AB_NAMESPACE \
    --endTime 'ZnEGyqBzSy7sAtyW' \
    --limit '66' \
    --offset '39' \
    --orderNos '["18J94AdBc46zSvk1", "RJzO4kDON9ylfhyw", "FVyvBf6pA5JtDTXc"]' \
    --sortBy 'fqvLFfgxYIZVl46P' \
    --startTime 'edQW0w9tk4mQf2sj' \
    --status 'CHARGED' \
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
    --orderNo 'spVFWZbSmFBUe84V' \
    > test.out 2>&1
eval_tap $? 145 'GetOrder' test.out

#- 146 RefundOrder
samples/cli/sample-apps Platform refundOrder \
    --namespace $AB_NAMESPACE \
    --orderNo '1tdcHwKqql4yetxS' \
    --body '{"description": "4IgG0ET6wg5HmZlZ"}' \
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
    --body '{"dryRun": false, "notifyUrl": "PCj394xZCjKZRGjb", "privateKey": "oeVNezPJB8aMJp73"}' \
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
    --body '{"domains": ["zr3v8VSDJ4VAZgyd", "4xKNzGWQz8DUHyxw", "k6lf6B4eu6KSDq9R"]}' \
    > test.out 2>&1
eval_tap $? 150 'UpdatePaymentDomainWhitelistConfig' test.out

#- 151 QueryPaymentNotifications
samples/cli/sample-apps Platform queryPaymentNotifications \
    --namespace $AB_NAMESPACE \
    --endDate 'QicvKxEIe6GBVkXQ' \
    --externalId 'Joer2HqHEFXGS0YH' \
    --limit '39' \
    --notificationSource 'ADYEN' \
    --notificationType 'vBOer4eFkTSGTpxt' \
    --offset '81' \
    --paymentOrderNo 'kl8ZGlsYkijUQXMg' \
    --startDate 'hiELCUvV27K3Xgyx' \
    --status 'PROCESSED' \
    > test.out 2>&1
eval_tap $? 151 'QueryPaymentNotifications' test.out

#- 152 QueryPaymentOrders
samples/cli/sample-apps Platform queryPaymentOrders \
    --namespace $AB_NAMESPACE \
    --channel 'EXTERNAL' \
    --extTxId 'yiSvM7BeNABmb90a' \
    --limit '32' \
    --offset '34' \
    --status 'CHARGEBACK_REVERSED' \
    > test.out 2>&1
eval_tap $? 152 'QueryPaymentOrders' test.out

#- 153 CreatePaymentOrderByDedicated
samples/cli/sample-apps Platform createPaymentOrderByDedicated \
    --namespace $AB_NAMESPACE \
    --body '{"currencyCode": "4jrKip9ujLlSPbvc", "currencyNamespace": "66MizeP0fQFnrtMS", "customParameters": {"TI1z5XD1ATbxwqkD": {}, "wUXqI9cJsIV2IQLG": {}, "nZnzgVBy5Z3nvfLY": {}}, "description": "iMsojmWjUssqtWWT", "extOrderNo": "lC5Qzt8NzodToS7F", "extUserId": "XPfJNkmS7KR1ggjf", "itemType": "LOOTBOX", "language": "nS-yzlG", "metadata": {"7D9EhAW6JNbDQY6v": "KxHWyLif6pFJ8dQs", "K0dqA1tdmK2fgGZ1": "wK3kg28m8Y2clzZm", "9gVA24xSmwqOkgYh": "BU7VMXpEsKNkoBR3"}, "notifyUrl": "LYmgbJBssMAcA1Q5", "omitNotification": true, "platform": "1AWkIBwaXMNjYGx9", "price": 18, "recurringPaymentOrderNo": "ymRHgXukYdtGuGKw", "region": "Aai1h3LCMjwW2abu", "returnUrl": "gfZ8UgAiHqUAIGQz", "sandbox": false, "sku": "Y1bYLN7oOW5KrSuo", "subscriptionId": "UhDBeB5vA2jiAdC2", "targetNamespace": "LnS7lyJi3uyWxRa2", "targetUserId": "Uxk6WGrXmKKb32tn", "title": "XjHWSIxGe2BnQtyA"}' \
    > test.out 2>&1
eval_tap $? 153 'CreatePaymentOrderByDedicated' test.out

#- 154 ListExtOrderNoByExtTxId
samples/cli/sample-apps Platform listExtOrderNoByExtTxId \
    --namespace $AB_NAMESPACE \
    --extTxId '2OxHZexKAwEtA3SI' \
    > test.out 2>&1
eval_tap $? 154 'ListExtOrderNoByExtTxId' test.out

#- 155 GetPaymentOrder
samples/cli/sample-apps Platform getPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'YThi8f0tUFfEQPFb' \
    > test.out 2>&1
eval_tap $? 155 'GetPaymentOrder' test.out

#- 156 ChargePaymentOrder
samples/cli/sample-apps Platform chargePaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo '2i8iQO9RgKZVa1Ks' \
    --body '{"extTxId": "no4cTrQOkTbvTsUC", "paymentMethod": "LDzrRUqk2low9Rs2", "paymentProvider": "PAYPAL"}' \
    > test.out 2>&1
eval_tap $? 156 'ChargePaymentOrder' test.out

#- 157 RefundPaymentOrderByDedicated
samples/cli/sample-apps Platform refundPaymentOrderByDedicated \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'KsRsXgGwzTwErm8U' \
    --body '{"description": "3DClxYpxO93cb5cC"}' \
    > test.out 2>&1
eval_tap $? 157 'RefundPaymentOrderByDedicated' test.out

#- 158 SimulatePaymentOrderNotification
samples/cli/sample-apps Platform simulatePaymentOrderNotification \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'uz0nYcUXvo6dGjY2' \
    --body '{"amount": 43, "currencyCode": "2qHSeOpykm4xaKYI", "notifyType": "CHARGE", "paymentProvider": "XSOLLA", "salesTax": 97, "vat": 93}' \
    > test.out 2>&1
eval_tap $? 158 'SimulatePaymentOrderNotification' test.out

#- 159 GetPaymentOrderChargeStatus
samples/cli/sample-apps Platform getPaymentOrderChargeStatus \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'Zn9HowYy4v0sjgUA' \
    > test.out 2>&1
eval_tap $? 159 'GetPaymentOrderChargeStatus' test.out

#- 160 GetPsnEntitlementOwnership
samples/cli/sample-apps Platform getPsnEntitlementOwnership \
    --entitlementLabel 'mm99Fu5X63lxDmzZ' \
    --namespace $AB_NAMESPACE \
    --body '{"accessToken": "72u8tLNA9Y4bArUW", "serviceLabel": 68}' \
    > test.out 2>&1
eval_tap $? 160 'GetPsnEntitlementOwnership' test.out

#- 161 GetXboxEntitlementOwnership
samples/cli/sample-apps Platform getXboxEntitlementOwnership \
    --namespace $AB_NAMESPACE \
    --productSku '8c8BRIGTi8xlqGqf' \
    --body '{"delegationToken": "vsWPk1zLeEPuOInn", "sandboxId": "92WgCeqKFcYY609u"}' \
    > test.out 2>&1
eval_tap $? 161 'GetXboxEntitlementOwnership' test.out

#- 162 GetPlatformEntitlementConfig
samples/cli/sample-apps Platform getPlatformEntitlementConfig \
    --namespace $AB_NAMESPACE \
    --platform 'GooglePlay' \
    > test.out 2>&1
eval_tap $? 162 'GetPlatformEntitlementConfig' test.out

#- 163 UpdatePlatformEntitlementConfig
samples/cli/sample-apps Platform updatePlatformEntitlementConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Epic' \
    --body '{"allowedPlatformOrigins": ["Oculus", "System", "Nintendo"]}' \
    > test.out 2>&1
eval_tap $? 163 'UpdatePlatformEntitlementConfig' test.out

#- 164 GetPlatformWalletConfig
samples/cli/sample-apps Platform getPlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'GooglePlay' \
    > test.out 2>&1
eval_tap $? 164 'GetPlatformWalletConfig' test.out

#- 165 UpdatePlatformWalletConfig
samples/cli/sample-apps Platform updatePlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Nintendo' \
    --body '{"allowedBalanceOrigins": ["IOS", "Steam", "System"]}' \
    > test.out 2>&1
eval_tap $? 165 'UpdatePlatformWalletConfig' test.out

#- 166 ResetPlatformWalletConfig
samples/cli/sample-apps Platform resetPlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'IOS' \
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
    --body '{"entitlement": {"consumable": {"enabled": true, "strategy": "REVOKE_OR_REPORT"}, "durable": {"enabled": true, "strategy": "CUSTOM"}}, "wallet": {"enabled": true, "strategy": "REVOKE_OR_REPORT"}}' \
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
    --endTime 'KasG5jBG5AxNWKAL' \
    --limit '88' \
    --offset '25' \
    --source 'IAP' \
    --startTime '4XWKlFVoVCNivxCZ' \
    --status 'FAIL' \
    --transactionId 'dW0am1jlNQQGUmrj' \
    --userId 'qSa3cNZ111CysRE3' \
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
    --body '{"appConfig": {"appName": "3WTrcRklWcnloQhb"}, "customConfig": {"connectionType": "INSECURE", "grpcServerAddress": "b6TewadE9RLtETWs"}, "extendType": "APP"}' \
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
    --body '{"description": "cQqcg1IJqeMMXP6y", "eventTopic": "tAB3ZvjHOe8fRLWF", "maxAwarded": 52, "maxAwardedPerUser": 62, "namespaceExpression": "9jQdkMc0fTZWcsRd", "rewardCode": "gu0WIonYXFkEmSg1", "rewardConditions": [{"condition": "nrODQSUZloNSPOEw", "conditionName": "Ji9plS2zY4LQQdlY", "eventName": "FaCrdJGJvXObmpMH", "rewardItems": [{"duration": 33, "endDate": "1976-12-10T00:00:00Z", "identityType": "ITEM_ID", "itemId": "gR36RUeoxXEeu3LR", "quantity": 93, "sku": "rjDQSS6LseTaHyzU"}, {"duration": 89, "endDate": "1980-03-20T00:00:00Z", "identityType": "ITEM_ID", "itemId": "hMXHTrvk1PS8CADT", "quantity": 50, "sku": "SE7QhB41M6BH65ij"}, {"duration": 23, "endDate": "1977-06-08T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "W0W8S7V0nR2SxI6h", "quantity": 1, "sku": "hPBgWyoRx7YY17DG"}]}, {"condition": "LwLrGO0WGR2VpOH4", "conditionName": "ndHdFpX2N3aqhHdZ", "eventName": "w40Dk1Lqb720I2GK", "rewardItems": [{"duration": 33, "endDate": "1997-08-21T00:00:00Z", "identityType": "ITEM_ID", "itemId": "VnBcYvFaiVc1aN27", "quantity": 46, "sku": "3a8k14Unq3allyQn"}, {"duration": 10, "endDate": "1985-05-03T00:00:00Z", "identityType": "ITEM_ID", "itemId": "O7SFgD8S1loUKvyg", "quantity": 23, "sku": "wNYyvRIzcomnh4fU"}, {"duration": 83, "endDate": "1995-10-17T00:00:00Z", "identityType": "ITEM_ID", "itemId": "sU2TD42SWZ5Kb1uD", "quantity": 12, "sku": "SQmYol2g4X8fr03H"}]}, {"condition": "v1kix5T07oznxDZu", "conditionName": "jPu0zM5MVccRMWM8", "eventName": "JKhZo2DfQYYvUkGt", "rewardItems": [{"duration": 12, "endDate": "1972-04-22T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "WZbgnHkE2OKUC1rX", "quantity": 29, "sku": "ZOZh1UN2OiwikS0B"}, {"duration": 84, "endDate": "1982-05-18T00:00:00Z", "identityType": "ITEM_ID", "itemId": "XWSgomoll4TXBn7o", "quantity": 74, "sku": "BDuZ1axcmY1VTyA1"}, {"duration": 44, "endDate": "1995-04-14T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "LoGDyuMuWpqsorbs", "quantity": 67, "sku": "hpqIeqsczTrbshYG"}]}], "userIdExpression": "7J1i3cC11oAroR8C"}' \
    > test.out 2>&1
eval_tap $? 175 'CreateReward' test.out

#- 176 QueryRewards
samples/cli/sample-apps Platform queryRewards \
    --namespace $AB_NAMESPACE \
    --eventTopic 'RWIdidnXOqv1FzS9' \
    --limit '26' \
    --offset '58' \
    --sortBy '["rewardCode:desc", "namespace:desc"]' \
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
    --rewardId 'ZLAnC3aILzIcDVam' \
    > test.out 2>&1
eval_tap $? 179 'GetReward' test.out

#- 180 UpdateReward
samples/cli/sample-apps Platform updateReward \
    --namespace $AB_NAMESPACE \
    --rewardId 'QPP5sxFE3XItF3Li' \
    --body '{"description": "R5vpQsV1qwWQ7LA5", "eventTopic": "0OAKLSe9U8ZbpGt1", "maxAwarded": 29, "maxAwardedPerUser": 4, "namespaceExpression": "FUzo88T3ev8KUdpb", "rewardCode": "m9q1QkwbwFUlEyoG", "rewardConditions": [{"condition": "m8fTq94gN0dByrPd", "conditionName": "64unJCrPwxPnmXTA", "eventName": "skkZrSrOuM2QnJNR", "rewardItems": [{"duration": 92, "endDate": "1990-03-08T00:00:00Z", "identityType": "ITEM_ID", "itemId": "oZjFL7voJsdh9keA", "quantity": 90, "sku": "fBJBbxfL4bpqW6wm"}, {"duration": 42, "endDate": "1991-01-21T00:00:00Z", "identityType": "ITEM_ID", "itemId": "PZHZwMdHTRTeQsRs", "quantity": 74, "sku": "nDKNk8ZwE2KiM9jf"}, {"duration": 19, "endDate": "1981-05-11T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "eBtyJnKn3OpLCroX", "quantity": 32, "sku": "2LXCaPwxdHEaz70K"}]}, {"condition": "GEwF1rXF0ROvKSrz", "conditionName": "u1D2JfZnhOk9vvNf", "eventName": "Bw6zNUeoBr6y3kOr", "rewardItems": [{"duration": 60, "endDate": "1998-10-07T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "DINXspiQyGGKLjZT", "quantity": 12, "sku": "iCGJD3zp9wry8w7P"}, {"duration": 43, "endDate": "1999-01-30T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "VDePInu7mhTW3yc3", "quantity": 22, "sku": "bnFMcLDGn0vTumR8"}, {"duration": 7, "endDate": "1988-03-02T00:00:00Z", "identityType": "ITEM_ID", "itemId": "XAk1IhIDzgMgXuuQ", "quantity": 61, "sku": "2DKtgl5nXP1jN9R5"}]}, {"condition": "N5G4WF30EDxXtmtr", "conditionName": "2t59tsbz2sM3fAeL", "eventName": "CSz33FeYJGhGYkJk", "rewardItems": [{"duration": 56, "endDate": "1989-02-07T00:00:00Z", "identityType": "ITEM_ID", "itemId": "gDPSNfo4BUjMGzBG", "quantity": 0, "sku": "lDcqZobnA0xCWm6l"}, {"duration": 83, "endDate": "1973-03-11T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "6LFISxeYYi7cqb8Q", "quantity": 11, "sku": "TPA0zTmSMJl0Q2Ia"}, {"duration": 25, "endDate": "1999-01-11T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "h8RUtFfb235L27gv", "quantity": 26, "sku": "ULZSGKzVZETulL1u"}]}], "userIdExpression": "5MKFZvXQvuUAiLIY"}' \
    > test.out 2>&1
eval_tap $? 180 'UpdateReward' test.out

#- 181 DeleteReward
samples/cli/sample-apps Platform deleteReward \
    --namespace $AB_NAMESPACE \
    --rewardId '35xNve3sDdn9zIpU' \
    > test.out 2>&1
eval_tap $? 181 'DeleteReward' test.out

#- 182 CheckEventCondition
samples/cli/sample-apps Platform checkEventCondition \
    --namespace $AB_NAMESPACE \
    --rewardId '8xkaotpC4jJt0i2e' \
    --body '{"payload": {"0p2cJHsiQQpIlA2J": {}, "8u1qJE492lhFtwfC": {}, "wkdi4GIsyd4KW0mn": {}}}' \
    > test.out 2>&1
eval_tap $? 182 'CheckEventCondition' test.out

#- 183 DeleteRewardConditionRecord
samples/cli/sample-apps Platform deleteRewardConditionRecord \
    --namespace $AB_NAMESPACE \
    --rewardId 'b6cwZSowou2JOlnB' \
    --body '{"conditionName": "zrnx6nAlcoCzHSBb", "userId": "vHoxSSyijVUWKumk"}' \
    > test.out 2>&1
eval_tap $? 183 'DeleteRewardConditionRecord' test.out

#- 184 QuerySections
samples/cli/sample-apps Platform querySections \
    --namespace $AB_NAMESPACE \
    --end 'KCj9eawRtQ6EgsFB' \
    --limit '100' \
    --offset '37' \
    --start 'nein9iTUZT8zrObL' \
    --storeId 'wzXnaL7FblxQlJeE' \
    --viewId 'Z5NCShP6BCGSU34h' \
    > test.out 2>&1
eval_tap $? 184 'QuerySections' test.out

#- 185 CreateSection
samples/cli/sample-apps Platform createSection \
    --namespace $AB_NAMESPACE \
    --storeId 'HYl6w0HbEaOUjRUB' \
    --body '{"active": false, "displayOrder": 80, "endDate": "1994-10-15T00:00:00Z", "ext": {"GbP5PaYkmmgbl381": {}, "WePZwQ801KDyWZ4n": {}, "6OrTglWjQ7eimRaN": {}}, "fixedPeriodRotationConfig": {"backfillType": "CUSTOM", "duration": 10, "itemCount": 55, "rule": "SEQUENCE"}, "items": [{"id": "MlabeFibCeWre8HV", "sku": "z8S2odJTcH3khqgp"}, {"id": "yJXU2XEDfhbIwGg1", "sku": "eQF92WMPgdLZ9Mgt"}, {"id": "2I4hgN2v6IapMzCI", "sku": "NOF0MzXQoNZtKN1p"}], "localizations": {"RrbR0PtKBk6ENaZh": {"description": "R0eaDvXCmjuqRsIU", "localExt": {"6AaQ5OjIBJ2c0L3W": {}, "uyGtyLRqmcQ5AM9r": {}, "1ujFUijT8oQiajm7": {}}, "longDescription": "nbP43dfftzc9bBU1", "title": "sW8vlBjVehGOPfGj"}, "ZnhlIAZyGXkKu7jl": {"description": "wI78WkEQi83zrxPD", "localExt": {"jxfQvYuqvoMzqiX3": {}, "G4tMjwQsGU0ZSvG0": {}, "k02m1FoSKOsXN81x": {}}, "longDescription": "orY8R5GP3sNHfrdW", "title": "VfzZqnXuYOA1OVDX"}, "kl9pJ5fofLTWMNB6": {"description": "sk4c9DtLYfUYm0pt", "localExt": {"O5V6KotVPFnF0pDs": {}, "GhUBVwxuaZpscZXl": {}, "In0fHbNE52wE29TD": {}}, "longDescription": "Dn8SRqtgFAofHXZk", "title": "Ib22v19YWNdnmGwl"}}, "name": "RLwwdFWTCQbwUIJs", "rotationType": "FIXED_PERIOD", "startDate": "1980-04-12T00:00:00Z", "viewId": "tkB6EqIVgGHFfbaW"}' \
    > test.out 2>&1
eval_tap $? 185 'CreateSection' test.out

#- 186 PurgeExpiredSection
samples/cli/sample-apps Platform purgeExpiredSection \
    --namespace $AB_NAMESPACE \
    --storeId 'SvvuvyLdHBrDGf66' \
    > test.out 2>&1
eval_tap $? 186 'PurgeExpiredSection' test.out

#- 187 GetSection
samples/cli/sample-apps Platform getSection \
    --namespace $AB_NAMESPACE \
    --sectionId 'LkzCkufzPomptkK5' \
    --storeId 'Oj4UIwd7MBBNuaXn' \
    > test.out 2>&1
eval_tap $? 187 'GetSection' test.out

#- 188 UpdateSection
samples/cli/sample-apps Platform updateSection \
    --namespace $AB_NAMESPACE \
    --sectionId 'rARHtKDL3oP1eHCW' \
    --storeId 'KwB2VldlytSxrQMW' \
    --body '{"active": true, "displayOrder": 90, "endDate": "1976-11-11T00:00:00Z", "ext": {"hDPrHG1CPtzgQt1w": {}, "pOSWclE08EdwAW3k": {}, "2xgjbzNyNmXId9GS": {}}, "fixedPeriodRotationConfig": {"backfillType": "CUSTOM", "duration": 3, "itemCount": 76, "rule": "SEQUENCE"}, "items": [{"id": "2Ub5ghcq71s3WuRZ", "sku": "AmIiHAKbONhfvb1S"}, {"id": "7d27gYSYnQkp7ZYe", "sku": "g9wUmfU5lTxcxMjq"}, {"id": "xiDEoz5RbKEehO1O", "sku": "IIRAny734EqZRVue"}], "localizations": {"QPZzzUnpR5TfDRsI": {"description": "dvIBIF2b9AnZ1eV0", "localExt": {"3I6B825HUuPi3U3H": {}, "J1XM65OVpMY9YGf1": {}, "FfDA8pbBIHVDd7Qf": {}}, "longDescription": "BzRghrlrorZOo179", "title": "C6NwI54oOUVY88Q4"}, "FJizB9V7VVfne8jJ": {"description": "5xQMgrQSRSsuWX73", "localExt": {"DGLoztY3XQwWifeC": {}, "iiRMCybN3ZpYoHSt": {}, "22Avbyt97eqHg6ds": {}}, "longDescription": "1ZKGqVLDz5oW2HyI", "title": "sa6Pt1mFYHf1SddI"}, "wsFQEFoNcj1p08hr": {"description": "0O2olIHP9ekLcp2l", "localExt": {"aj7pRHW2bcF0Icuv": {}, "x9kQaebtOAkVNa3G": {}, "fhzVPr2DSgW8BUgJ": {}}, "longDescription": "w4VYbUTtKr0AonBz", "title": "hL1Jg9F0JUs9R94c"}}, "name": "eb7F7G4pRUn1jBqz", "rotationType": "NONE", "startDate": "1997-04-12T00:00:00Z", "viewId": "YYmTg6njyQ0zOXlv"}' \
    > test.out 2>&1
eval_tap $? 188 'UpdateSection' test.out

#- 189 DeleteSection
samples/cli/sample-apps Platform deleteSection \
    --namespace $AB_NAMESPACE \
    --sectionId 'Ky6m0AdFNDXaVDYQ' \
    --storeId 'G7kk7AP5rUI3GtRs' \
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
    --body '{"defaultLanguage": "n3I3Ix27X0r2juu3", "defaultRegion": "U3fwrwMm8Q6WK8r7", "description": "TVnyVqF4l8E1gKcQ", "supportedLanguages": ["5ikTXruKu8uV3JmE", "ihcbBOCYG7egiTba", "dFtazxfnZw5HCV0Z"], "supportedRegions": ["lttD5RGcn9mty9Q3", "IL67u90pBjTBFSge", "ENRZCd4u0bP7ibmR"], "title": "Cme6gukHbKGCcmhW"}' \
    > test.out 2>&1
eval_tap $? 191 'CreateStore' test.out

#- 192 GetCatalogDefinition
samples/cli/sample-apps Platform getCatalogDefinition \
    --namespace $AB_NAMESPACE \
    --catalogType 'SECTION' \
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
    --body '{"catalogType": "CATEGORY", "fieldsToBeIncluded": ["IvW25dWvmMqrHDpR", "FLo6MWiQ4eSwx71A", "FQ7bOWjnt6cCIqS6"], "idsToBeExported": ["lX0pdd2jbByr9ERC", "LOEUoqOuqxeEaxTA", "UP6OwGzorobFpB0n"], "storeId": "G9214HKVjOFBcJKI"}' \
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
    --storeId 'IeNXq4KNifJoeSMt' \
    > test.out 2>&1
eval_tap $? 200 'GetStore' test.out

#- 201 UpdateStore
samples/cli/sample-apps Platform updateStore \
    --namespace $AB_NAMESPACE \
    --storeId 'RRRbZjKmGGnLvjUm' \
    --body '{"defaultLanguage": "AylrFTPhoJNbRN9P", "defaultRegion": "hm8q6w1XQoej0gl4", "description": "CxUlmh4ojPqIsPam", "supportedLanguages": ["5RIlFabTecmYLWMl", "oxbzhudwsjlGBXQX", "GeNygse7Wx7PeMr0"], "supportedRegions": ["ZaA5yjq0BK2nz2aL", "JJlNBezicFeXQPNK", "dxqlrzyAkRejMVBB"], "title": "H7x9oZC9fJSjlyng"}' \
    > test.out 2>&1
eval_tap $? 201 'UpdateStore' test.out

#- 202 DeleteStore
samples/cli/sample-apps Platform deleteStore \
    --namespace $AB_NAMESPACE \
    --storeId 'trz13bJ6fuCqvJKO' \
    > test.out 2>&1
eval_tap $? 202 'DeleteStore' test.out

#- 203 QueryChanges
samples/cli/sample-apps Platform queryChanges \
    --namespace $AB_NAMESPACE \
    --storeId 'Zk8u3DssjSDiRk2e' \
    --action 'CREATE' \
    --itemSku 'C12f2jyIGuRCxX3y' \
    --itemType 'APP' \
    --limit '88' \
    --offset '94' \
    --selected 'false' \
    --sortBy '["updatedAt", "createdAt"]' \
    --status 'PUBLISHED' \
    --type 'ITEM' \
    --updatedAtEnd 'BjfeUhlyGcesxUeE' \
    --updatedAtStart 'LQN4XgOT7tZZ1nyu' \
    --withTotal 'true' \
    > test.out 2>&1
eval_tap $? 203 'QueryChanges' test.out

#- 204 PublishAll
samples/cli/sample-apps Platform publishAll \
    --namespace $AB_NAMESPACE \
    --storeId 'KLEKhCsVU1pWYEOu' \
    > test.out 2>&1
eval_tap $? 204 'PublishAll' test.out

#- 205 PublishSelected
samples/cli/sample-apps Platform publishSelected \
    --namespace $AB_NAMESPACE \
    --storeId 'mZfXM4QiTNTRacdQ' \
    > test.out 2>&1
eval_tap $? 205 'PublishSelected' test.out

#- 206 SelectAllRecords
samples/cli/sample-apps Platform selectAllRecords \
    --namespace $AB_NAMESPACE \
    --storeId 'eVUmcmQWVqmf2eFU' \
    > test.out 2>&1
eval_tap $? 206 'SelectAllRecords' test.out

#- 207 SelectAllRecordsByCriteria
samples/cli/sample-apps Platform selectAllRecordsByCriteria \
    --namespace $AB_NAMESPACE \
    --storeId 'Fr7tvJ7aNYyFwtr4' \
    --action 'UPDATE' \
    --itemSku '61Sng6CDAEDjY6C4' \
    --itemType 'EXTENSION' \
    --selected 'true' \
    --type 'CATEGORY' \
    --updatedAtEnd 'a9qw0lQ3OilHaGAa' \
    --updatedAtStart 'rkJA88AQQC5ogZSZ' \
    > test.out 2>&1
eval_tap $? 207 'SelectAllRecordsByCriteria' test.out

#- 208 GetStatistic
samples/cli/sample-apps Platform getStatistic \
    --namespace $AB_NAMESPACE \
    --storeId 'p9Slq7D5Ic80NFWp' \
    --action 'UPDATE' \
    --itemSku 'gRvKmgkwqsiAg1nT' \
    --itemType 'BUNDLE' \
    --type 'CATEGORY' \
    --updatedAtEnd 'JbXvTPWgrO9TU00a' \
    --updatedAtStart 'cNhFV1MykSvnPUTP' \
    > test.out 2>&1
eval_tap $? 208 'GetStatistic' test.out

#- 209 UnselectAllRecords
samples/cli/sample-apps Platform unselectAllRecords \
    --namespace $AB_NAMESPACE \
    --storeId 'wX3xCtKr0EMlDV4l' \
    > test.out 2>&1
eval_tap $? 209 'UnselectAllRecords' test.out

#- 210 SelectRecord
samples/cli/sample-apps Platform selectRecord \
    --changeId '7nlL9F59OELImtCv' \
    --namespace $AB_NAMESPACE \
    --storeId 'wZwYbjDO4qWZZg1c' \
    > test.out 2>&1
eval_tap $? 210 'SelectRecord' test.out

#- 211 UnselectRecord
samples/cli/sample-apps Platform unselectRecord \
    --changeId 'UAmtxMkCDOT6WJBQ' \
    --namespace $AB_NAMESPACE \
    --storeId 'vMNl0M9qddHVVMuU' \
    > test.out 2>&1
eval_tap $? 211 'UnselectRecord' test.out

#- 212 CloneStore
samples/cli/sample-apps Platform cloneStore \
    --namespace $AB_NAMESPACE \
    --storeId 'smBfznxPj3u14r9B' \
    --targetStoreId 'c0OcdXBjk1Xk0fEC' \
    > test.out 2>&1
eval_tap $? 212 'CloneStore' test.out

#- 213 ExportStore
eval_tap 0 213 'ExportStore # SKIP deprecated' test.out

#- 214 QueryImportHistory
samples/cli/sample-apps Platform queryImportHistory \
    --namespace $AB_NAMESPACE \
    --storeId 'Gotld1RWUrTVNgak' \
    --end 'FfGTaWzYu26x3XXG' \
    --limit '76' \
    --offset '67' \
    --sortBy 'Etbs9LNIZV8DjJgP' \
    --start 'FovzvWz7t5JVzh4n' \
    --success 'false' \
    > test.out 2>&1
eval_tap $? 214 'QueryImportHistory' test.out

#- 215 ImportStoreByCSV
samples/cli/sample-apps Platform importStoreByCSV \
    --namespace $AB_NAMESPACE \
    --storeId 'KsmcJC6Rhsdx7WnB' \
    --category 'tmp.dat' \
    --display 'tmp.dat' \
    --item 'tmp.dat' \
    --notes 'xfOlurTzaPo91lrv' \
    --section 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 215 'ImportStoreByCSV' test.out

#- 216 QuerySubscriptions
samples/cli/sample-apps Platform querySubscriptions \
    --namespace $AB_NAMESPACE \
    --chargeStatus 'CHARGED' \
    --itemId 'wYfVIjgfRlV7gymp' \
    --limit '96' \
    --offset '84' \
    --sku '9Bvu62j9oB8b6cSS' \
    --status 'INIT' \
    --subscribedBy 'PLATFORM' \
    --userId 'gQ3RT1opkKlrnJEc' \
    > test.out 2>&1
eval_tap $? 216 'QuerySubscriptions' test.out

#- 217 RecurringChargeSubscription
samples/cli/sample-apps Platform recurringChargeSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'pYV4AKxTursTpbY2' \
    > test.out 2>&1
eval_tap $? 217 'RecurringChargeSubscription' test.out

#- 218 GetTicketDynamic
samples/cli/sample-apps Platform getTicketDynamic \
    --boothName 'mhwffc6vv09XfFDS' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 218 'GetTicketDynamic' test.out

#- 219 DecreaseTicketSale
samples/cli/sample-apps Platform decreaseTicketSale \
    --boothName '4MLAhcSCwGOeSI1V' \
    --namespace $AB_NAMESPACE \
    --body '{"orderNo": "dJ959k2vHL8Em19u"}' \
    > test.out 2>&1
eval_tap $? 219 'DecreaseTicketSale' test.out

#- 220 GetTicketBoothID
samples/cli/sample-apps Platform getTicketBoothID \
    --boothName 'pUx54MuPLbq0uMf7' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 220 'GetTicketBoothID' test.out

#- 221 IncreaseTicketSale
samples/cli/sample-apps Platform increaseTicketSale \
    --boothName 'gBbo9BX2zoaQarGy' \
    --namespace $AB_NAMESPACE \
    --body '{"count": 36, "orderNo": "I7yzRp0SisW7OABw"}' \
    > test.out 2>&1
eval_tap $? 221 'IncreaseTicketSale' test.out

#- 222 Commit
samples/cli/sample-apps Platform commit \
    --namespace $AB_NAMESPACE \
    --body '{"actions": [{"operations": [{"creditPayload": {"balanceOrigin": "GooglePlay", "count": 99, "currencyCode": "ATgsq24GPRpGIhLr", "expireAt": "1991-04-26T00:00:00Z"}, "debitPayload": {"count": 57, "currencyCode": "OiS0Ahhvb4c2t4c2", "walletPlatform": "Steam"}, "fulFillItemPayload": {"count": 46, "entitlementCollectionId": "A3n1GQCQoQ5vffJg", "entitlementOrigin": "Oculus", "itemIdentity": "gjXQIspuyedXTpce", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 26, "entitlementId": "qB063tLVFGwjNFIH"}, "type": "CREDIT_WALLET"}, {"creditPayload": {"balanceOrigin": "Playstation", "count": 32, "currencyCode": "5KMxu1vdgyLOMXXy", "expireAt": "1986-12-11T00:00:00Z"}, "debitPayload": {"count": 32, "currencyCode": "WSai5NNuHs3VZOTs", "walletPlatform": "Other"}, "fulFillItemPayload": {"count": 73, "entitlementCollectionId": "Lbzq0W3uAriyYya1", "entitlementOrigin": "Nintendo", "itemIdentity": "2QMjkk3duVkY7O3k", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 40, "entitlementId": "nquJSdaVl1Z4ytWM"}, "type": "CREDIT_WALLET"}, {"creditPayload": {"balanceOrigin": "GooglePlay", "count": 7, "currencyCode": "Glfmfeq9aS0kxXI5", "expireAt": "1989-01-26T00:00:00Z"}, "debitPayload": {"count": 85, "currencyCode": "4OElWw22ScnADfMP", "walletPlatform": "Playstation"}, "fulFillItemPayload": {"count": 72, "entitlementCollectionId": "BfNFzH7X73tTM5IX", "entitlementOrigin": "Nintendo", "itemIdentity": "0KRJDEpxIBcw8MAG", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 80, "entitlementId": "1f9XhlEEJazbM2Qq"}, "type": "REVOKE_ENTITLEMENT"}], "userId": "RsQoVuozYDPhGF8U"}, {"operations": [{"creditPayload": {"balanceOrigin": "Nintendo", "count": 70, "currencyCode": "zsqeCNjmg8ANChjm", "expireAt": "1985-08-17T00:00:00Z"}, "debitPayload": {"count": 72, "currencyCode": "HYUlzQodgBIPWwlA", "walletPlatform": "Oculus"}, "fulFillItemPayload": {"count": 21, "entitlementCollectionId": "bORRRdPQ1f6Rs8Nx", "entitlementOrigin": "Twitch", "itemIdentity": "a8lUqQqPcHwpEYBs", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 70, "entitlementId": "A4bJTJzAkylDWj0X"}, "type": "REVOKE_ENTITLEMENT"}, {"creditPayload": {"balanceOrigin": "Other", "count": 48, "currencyCode": "vE9JN9kde5WMZoOe", "expireAt": "1983-09-07T00:00:00Z"}, "debitPayload": {"count": 83, "currencyCode": "ypL4wqLkKINrGUcH", "walletPlatform": "GooglePlay"}, "fulFillItemPayload": {"count": 34, "entitlementCollectionId": "gtSEDJiRJu9KUhxi", "entitlementOrigin": "Epic", "itemIdentity": "maPhotTekvGZe65Q", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 9, "entitlementId": "B8mjaQY71AdyRkdx"}, "type": "REVOKE_ENTITLEMENT"}, {"creditPayload": {"balanceOrigin": "Xbox", "count": 73, "currencyCode": "kMtUFBzUGixvWP77", "expireAt": "1978-04-30T00:00:00Z"}, "debitPayload": {"count": 5, "currencyCode": "HjZ2UBYDPYThCCuh", "walletPlatform": "Nintendo"}, "fulFillItemPayload": {"count": 76, "entitlementCollectionId": "PNPNZtlAF6pDiSZF", "entitlementOrigin": "System", "itemIdentity": "tKlR7Wc3iz8dDZXv", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 46, "entitlementId": "8UG5OMjWbbsWFhs0"}, "type": "DEBIT_WALLET"}], "userId": "f9C0ECbaVHcRtGbL"}, {"operations": [{"creditPayload": {"balanceOrigin": "Playstation", "count": 62, "currencyCode": "qFkQuhAP7ZMtHhJy", "expireAt": "1979-09-23T00:00:00Z"}, "debitPayload": {"count": 81, "currencyCode": "6cBcQ4EP52LkLCXe", "walletPlatform": "Steam"}, "fulFillItemPayload": {"count": 30, "entitlementCollectionId": "srOBXF0Diiaeo85x", "entitlementOrigin": "Oculus", "itemIdentity": "KM6F36oyD7iR89es", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 78, "entitlementId": "SfgDbhhFUFekQPBe"}, "type": "CREDIT_WALLET"}, {"creditPayload": {"balanceOrigin": "Other", "count": 52, "currencyCode": "uNdVJAIsCAuSn9oe", "expireAt": "1993-03-10T00:00:00Z"}, "debitPayload": {"count": 18, "currencyCode": "q5D8hanjeRHj4Qhc", "walletPlatform": "Xbox"}, "fulFillItemPayload": {"count": 22, "entitlementCollectionId": "TXwhrjU4GhyZyyRi", "entitlementOrigin": "Steam", "itemIdentity": "bViVUElnckWXvHyg", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 53, "entitlementId": "PC8T4VLBy1KSdHPk"}, "type": "REVOKE_ENTITLEMENT"}, {"creditPayload": {"balanceOrigin": "GooglePlay", "count": 81, "currencyCode": "xHfZ3ETJ4ZLSFIJx", "expireAt": "1981-03-10T00:00:00Z"}, "debitPayload": {"count": 27, "currencyCode": "dZy6L11FJx13IFec", "walletPlatform": "GooglePlay"}, "fulFillItemPayload": {"count": 28, "entitlementCollectionId": "k5nmFWyoPcMZ2p69", "entitlementOrigin": "System", "itemIdentity": "ZyBdMagx69k11SvD", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 0, "entitlementId": "junxeYtDHt6ETyg8"}, "type": "DEBIT_WALLET"}], "userId": "QHx2JDnkd1SqpBXo"}], "metadata": {"5DDFPCRa6SPlE2qM": {}, "zaalj7CYZ3GngpJu": {}, "wISjnvUuWQ3avTpL": {}}, "needPreCheck": true, "transactionId": "UYwbLUo3jHXLy8rZ", "type": "ZRtufnVhcAjXbRCp"}' \
    > test.out 2>&1
eval_tap $? 222 'Commit' test.out

#- 223 GetTradeHistoryByCriteria
samples/cli/sample-apps Platform getTradeHistoryByCriteria \
    --namespace $AB_NAMESPACE \
    --limit '51' \
    --offset '16' \
    --status 'FAILED' \
    --type 'dOyV5OW9UxcxIuTV' \
    --userId 'ocQEJzrQTUxtENbU' \
    > test.out 2>&1
eval_tap $? 223 'GetTradeHistoryByCriteria' test.out

#- 224 GetTradeHistoryByTransactionId
samples/cli/sample-apps Platform getTradeHistoryByTransactionId \
    --namespace $AB_NAMESPACE \
    --transactionId 'oGqVAxszUCPRh0Qi' \
    > test.out 2>&1
eval_tap $? 224 'GetTradeHistoryByTransactionId' test.out

#- 225 UnlockSteamUserAchievement
samples/cli/sample-apps Platform unlockSteamUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId '9bhNuhlPBR26Q1Mp' \
    --body '{"achievements": [{"id": "LaH8ltupDpNqYNW8", "value": 16}, {"id": "A4zrkza5b3s1sTiU", "value": 19}, {"id": "zTEAGSgtUn4n9RPR", "value": 65}], "steamUserId": "dUNDbioHym7JG7mG"}' \
    > test.out 2>&1
eval_tap $? 225 'UnlockSteamUserAchievement' test.out

#- 226 GetXblUserAchievements
samples/cli/sample-apps Platform getXblUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId 'NodG2Y2BxdWuqsyJ' \
    --xboxUserId 'tnCQc0NWWeNrxVIy' \
    > test.out 2>&1
eval_tap $? 226 'GetXblUserAchievements' test.out

#- 227 UpdateXblUserAchievement
samples/cli/sample-apps Platform updateXblUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'V8WoYG0CsKUz1NUA' \
    --body '{"achievements": [{"id": "aK6CENKCalD1v4zp", "percentComplete": 91}, {"id": "oQqopOTfQTx7E1rF", "percentComplete": 75}, {"id": "bq5hxFlek7Ftrdbg", "percentComplete": 87}], "serviceConfigId": "DFSVP7g0Rg5F7D2l", "titleId": "dx5qiQHsRKlMiH9N", "xboxUserId": "UgniPlgJbDM8qRAk"}' \
    > test.out 2>&1
eval_tap $? 227 'UpdateXblUserAchievement' test.out

#- 228 AnonymizeCampaign
samples/cli/sample-apps Platform anonymizeCampaign \
    --namespace $AB_NAMESPACE \
    --userId 'GXmC9G4afNDtiNkS' \
    > test.out 2>&1
eval_tap $? 228 'AnonymizeCampaign' test.out

#- 229 AnonymizeEntitlement
samples/cli/sample-apps Platform anonymizeEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'udlqLWTmmEoVwtcQ' \
    > test.out 2>&1
eval_tap $? 229 'AnonymizeEntitlement' test.out

#- 230 AnonymizeFulfillment
samples/cli/sample-apps Platform anonymizeFulfillment \
    --namespace $AB_NAMESPACE \
    --userId 'ma4D9kzIzRrZ59sn' \
    > test.out 2>&1
eval_tap $? 230 'AnonymizeFulfillment' test.out

#- 231 AnonymizeIntegration
samples/cli/sample-apps Platform anonymizeIntegration \
    --namespace $AB_NAMESPACE \
    --userId 'iMcWuYX3x4ZKYtP7' \
    > test.out 2>&1
eval_tap $? 231 'AnonymizeIntegration' test.out

#- 232 AnonymizeOrder
samples/cli/sample-apps Platform anonymizeOrder \
    --namespace $AB_NAMESPACE \
    --userId 'rA0DnCj96nXwKWRR' \
    > test.out 2>&1
eval_tap $? 232 'AnonymizeOrder' test.out

#- 233 AnonymizePayment
samples/cli/sample-apps Platform anonymizePayment \
    --namespace $AB_NAMESPACE \
    --userId 'n9xcWlxN0c1V2i14' \
    > test.out 2>&1
eval_tap $? 233 'AnonymizePayment' test.out

#- 234 AnonymizeRevocation
samples/cli/sample-apps Platform anonymizeRevocation \
    --namespace $AB_NAMESPACE \
    --userId 'zjigpTxT7jM1sAa4' \
    > test.out 2>&1
eval_tap $? 234 'AnonymizeRevocation' test.out

#- 235 AnonymizeSubscription
samples/cli/sample-apps Platform anonymizeSubscription \
    --namespace $AB_NAMESPACE \
    --userId 'm8EumMFY69pWrZEj' \
    > test.out 2>&1
eval_tap $? 235 'AnonymizeSubscription' test.out

#- 236 AnonymizeWallet
samples/cli/sample-apps Platform anonymizeWallet \
    --namespace $AB_NAMESPACE \
    --userId 'HQHiC6CKtlqSZmuu' \
    > test.out 2>&1
eval_tap $? 236 'AnonymizeWallet' test.out

#- 237 GetUserDLCByPlatform
samples/cli/sample-apps Platform getUserDLCByPlatform \
    --namespace $AB_NAMESPACE \
    --userId 'U8jdUHDVqhv6HTIH' \
    --type 'PSN' \
    > test.out 2>&1
eval_tap $? 237 'GetUserDLCByPlatform' test.out

#- 238 GetUserDLC
samples/cli/sample-apps Platform getUserDLC \
    --namespace $AB_NAMESPACE \
    --userId 'Qv72cTR5B0XE9Uoy' \
    --type 'OCULUS' \
    > test.out 2>&1
eval_tap $? 238 'GetUserDLC' test.out

#- 239 QueryUserEntitlements
samples/cli/sample-apps Platform queryUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'eg9Q5rEaK0TzIeGE' \
    --activeOnly 'true' \
    --appType 'DLC' \
    --collectionId '2HjlYO85QsSEjqJa' \
    --entitlementClazz 'SUBSCRIPTION' \
    --entitlementName '2YYVfgJ1K9Yeeyfl' \
    --features '["YulMwEN4m3YA7OVp", "kowKevPGpRVyhiW9", "o0gpciJxpZ3rvVtf"]' \
    --fuzzyMatchName 'false' \
    --itemId '["AlNws9buza2uZMrf", "OQ9PVgmyumVELs2s", "SUxiHzJm7f8J8O2y"]' \
    --limit '1' \
    --offset '54' \
    --origin 'Playstation' \
    > test.out 2>&1
eval_tap $? 239 'QueryUserEntitlements' test.out

#- 240 GrantUserEntitlement
samples/cli/sample-apps Platform grantUserEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'd1QDj9qcDcnpXSmF' \
    --body '[{"collectionId": "r8hk4lsyO5IAAxgc", "endDate": "1976-03-24T00:00:00Z", "grantedCode": "OdRXOUzxSjH4y0ch", "itemId": "nAzPWXPpQ7OYb8kz", "itemNamespace": "ONkI7tjHa4HniGvD", "language": "CjW", "origin": "System", "quantity": 85, "region": "NzCI2NUbfFrMBd1r", "source": "OTHER", "startDate": "1989-10-21T00:00:00Z", "storeId": "k2Q81qjSQEXOlPZC"}, {"collectionId": "qUc9to9vWj4y31Mw", "endDate": "1993-01-29T00:00:00Z", "grantedCode": "fY6tsRpJ9myZNFfs", "itemId": "X5w92HfXv5ZEBBTA", "itemNamespace": "DCrJF6CQzrcx4gwU", "language": "zu_Gt", "origin": "Steam", "quantity": 27, "region": "VNJ6Rl9Dwf6aKlgh", "source": "GIFT", "startDate": "1996-10-07T00:00:00Z", "storeId": "ITZeKilkKqX1E6rK"}, {"collectionId": "mtJEpL74X137lyMo", "endDate": "1978-10-05T00:00:00Z", "grantedCode": "WKiEUEIZGodLMhMj", "itemId": "OioVctCa58e5PjRP", "itemNamespace": "cjGzieg5INcWtKpe", "language": "nRBb-lYae-267", "origin": "Twitch", "quantity": 21, "region": "a0x7jbsZkfzfFKla", "source": "PURCHASE", "startDate": "1985-08-22T00:00:00Z", "storeId": "idEBXVDEDmNjELwq"}]' \
    > test.out 2>&1
eval_tap $? 240 'GrantUserEntitlement' test.out

#- 241 GetUserAppEntitlementByAppId
samples/cli/sample-apps Platform getUserAppEntitlementByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'dgTzryEz2ftheRtd' \
    --activeOnly 'true' \
    --appId 'jtQyxA4X6E7dEHps' \
    > test.out 2>&1
eval_tap $? 241 'GetUserAppEntitlementByAppId' test.out

#- 242 QueryUserEntitlementsByAppType
samples/cli/sample-apps Platform queryUserEntitlementsByAppType \
    --namespace $AB_NAMESPACE \
    --userId 'DbxINstAWly2JCSU' \
    --activeOnly 'false' \
    --limit '67' \
    --offset '52' \
    --appType 'GAME' \
    > test.out 2>&1
eval_tap $? 242 'QueryUserEntitlementsByAppType' test.out

#- 243 GetUserEntitlementByItemId
samples/cli/sample-apps Platform getUserEntitlementByItemId \
    --namespace $AB_NAMESPACE \
    --userId '1A30fCuvONz6lMQ7' \
    --activeOnly 'true' \
    --entitlementClazz 'MEDIA' \
    --platform 'AMDfiyjreLlhFNSY' \
    --itemId 'fTuxVFCltMSyhw1b' \
    > test.out 2>&1
eval_tap $? 243 'GetUserEntitlementByItemId' test.out

#- 244 GetUserActiveEntitlementsByItemIds
samples/cli/sample-apps Platform getUserActiveEntitlementsByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'VDHNmt8plI7cKh3g' \
    --ids '["krRtYvmae7VHhAvT", "BbeoIWlHtjwb12ht", "vGPbCAPWYvRje9Of"]' \
    --platform 'KtelCdAtdWUygVi8' \
    > test.out 2>&1
eval_tap $? 244 'GetUserActiveEntitlementsByItemIds' test.out

#- 245 GetUserEntitlementBySku
samples/cli/sample-apps Platform getUserEntitlementBySku \
    --namespace $AB_NAMESPACE \
    --userId 'Zgu9Sd3RGJEjd6NE' \
    --activeOnly 'false' \
    --entitlementClazz 'SUBSCRIPTION' \
    --platform 'JhW4EVbiWwCZI8zL' \
    --sku 'H2aD3c9lfgBi2Jml' \
    > test.out 2>&1
eval_tap $? 245 'GetUserEntitlementBySku' test.out

#- 246 ExistsAnyUserActiveEntitlement
samples/cli/sample-apps Platform existsAnyUserActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --userId '8JbYX1iqyPmznNek' \
    --appIds '["Xv7pCKyAKf08UONX", "xX9uMK2Elr3pK66Q", "o4rKAVmXdFjzjS91"]' \
    --itemIds '["A53uXqKuuNBGo3g2", "4saD0LJVU8IYylp1", "xJODMGs8E3fIz69a"]' \
    --platform 'YwyYOFgIYWFn0tIL' \
    --skus '["AX7O32cnSFJ2MJtU", "dlxznPHjwtB3LwxO", "YHgu3cdSmIZ5NdMs"]' \
    > test.out 2>&1
eval_tap $? 246 'ExistsAnyUserActiveEntitlement' test.out

#- 247 ExistsAnyUserActiveEntitlementByItemIds
samples/cli/sample-apps Platform existsAnyUserActiveEntitlementByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'FShddsovSkIiWA8C' \
    --platform 'U6pGdML7F1ABJz51' \
    --itemIds '["86efPlA1lZQvVGHX", "GntvUBaYWeeApGMe", "a8bWEp4WC4tBYdSa"]' \
    > test.out 2>&1
eval_tap $? 247 'ExistsAnyUserActiveEntitlementByItemIds' test.out

#- 248 GetUserAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform getUserAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --userId '68djdoyUos6zOB1O' \
    --appId 'xAsWKQA9QNnDizaJ' \
    > test.out 2>&1
eval_tap $? 248 'GetUserAppEntitlementOwnershipByAppId' test.out

#- 249 GetUserEntitlementOwnershipByItemId
samples/cli/sample-apps Platform getUserEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'rJQvtpDfTxi6qHOm' \
    --entitlementClazz 'LOOTBOX' \
    --platform 'QVtzXZ8A5P1haLT1' \
    --itemId 'juacsybqukqPRCzs' \
    > test.out 2>&1
eval_tap $? 249 'GetUserEntitlementOwnershipByItemId' test.out

#- 250 GetUserEntitlementOwnershipByItemIds
samples/cli/sample-apps Platform getUserEntitlementOwnershipByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'IfRDgwS0LsdZxHUO' \
    --ids '["PcBMM3kkGkSbiFYT", "UopXKRDju9TFHISp", "kIhNpNzTKtSrkPyR"]' \
    --platform 'q1gqyH3kIpczSC7Y' \
    > test.out 2>&1
eval_tap $? 250 'GetUserEntitlementOwnershipByItemIds' test.out

#- 251 GetUserEntitlementOwnershipBySku
samples/cli/sample-apps Platform getUserEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --userId 'jlvDbRaTvqnZHMmm' \
    --entitlementClazz 'OPTIONBOX' \
    --platform 'DkEWwU9zrSGGUosh' \
    --sku 'EkcNaxjYjuFwLW2D' \
    > test.out 2>&1
eval_tap $? 251 'GetUserEntitlementOwnershipBySku' test.out

#- 252 RevokeAllEntitlements
samples/cli/sample-apps Platform revokeAllEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'aCTdyB6iSiV6DIZ5' \
    > test.out 2>&1
eval_tap $? 252 'RevokeAllEntitlements' test.out

#- 253 RevokeUserEntitlements
samples/cli/sample-apps Platform revokeUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId '5cDzZKqABXmFN9pS' \
    --entitlementIds 'okbOnItV4tcAxGmm' \
    > test.out 2>&1
eval_tap $? 253 'RevokeUserEntitlements' test.out

#- 254 GetUserEntitlement
samples/cli/sample-apps Platform getUserEntitlement \
    --entitlementId '0FQ4iVCySvAT9GXs' \
    --namespace $AB_NAMESPACE \
    --userId 'wyhXYsqncJqiFTVA' \
    > test.out 2>&1
eval_tap $? 254 'GetUserEntitlement' test.out

#- 255 UpdateUserEntitlement
samples/cli/sample-apps Platform updateUserEntitlement \
    --entitlementId 'IjF4MuerHi4Fns8M' \
    --namespace $AB_NAMESPACE \
    --userId 'eX9BcCU82pHfElYn' \
    --body '{"collectionId": "E3Ihq1yKOnRmFL7X", "endDate": "1994-11-03T00:00:00Z", "nullFieldList": ["l3WBWKn1BBhTCnYm", "k0VVGFgIHznsNyOj", "xiT0er7lctopoXV5"], "origin": "Steam", "reason": "H0BUsIm7qKsfMOQo", "startDate": "1974-02-28T00:00:00Z", "status": "ACTIVE", "useCount": 91}' \
    > test.out 2>&1
eval_tap $? 255 'UpdateUserEntitlement' test.out

#- 256 ConsumeUserEntitlement
samples/cli/sample-apps Platform consumeUserEntitlement \
    --entitlementId '17md8MC4to5f0UqV' \
    --namespace $AB_NAMESPACE \
    --userId 'z8jRlYhLlGHfmw3O' \
    --body '{"options": ["sJmW1jsXRw9hzW7q", "xYKPitsSVWDixOg6", "Fk5Uhx3RVnxdGFJs"], "platform": "PangxAu8YRXdJfPD", "requestId": "jUVmUeb8fftxZ9Mu", "useCount": 17}' \
    > test.out 2>&1
eval_tap $? 256 'ConsumeUserEntitlement' test.out

#- 257 DisableUserEntitlement
samples/cli/sample-apps Platform disableUserEntitlement \
    --entitlementId 'Kkln5r4kzBE25bfo' \
    --namespace $AB_NAMESPACE \
    --userId '5Yhk14WI0mJAWbBE' \
    > test.out 2>&1
eval_tap $? 257 'DisableUserEntitlement' test.out

#- 258 EnableUserEntitlement
samples/cli/sample-apps Platform enableUserEntitlement \
    --entitlementId 'QtgmvYfFqmuhEzne' \
    --namespace $AB_NAMESPACE \
    --userId '0RGDxsbxT1mps0Fw' \
    > test.out 2>&1
eval_tap $? 258 'EnableUserEntitlement' test.out

#- 259 GetUserEntitlementHistories
samples/cli/sample-apps Platform getUserEntitlementHistories \
    --entitlementId '4nOrSpI2eMHkTZVu' \
    --namespace $AB_NAMESPACE \
    --userId 'FpBbr6rYnU2dX8Uy' \
    > test.out 2>&1
eval_tap $? 259 'GetUserEntitlementHistories' test.out

#- 260 RevokeUserEntitlement
samples/cli/sample-apps Platform revokeUserEntitlement \
    --entitlementId 'WXBaxEQh8NKedAHl' \
    --namespace $AB_NAMESPACE \
    --userId 'kXTo9yN5KrG9f99q' \
    > test.out 2>&1
eval_tap $? 260 'RevokeUserEntitlement' test.out

#- 261 RevokeUserEntitlementByUseCount
samples/cli/sample-apps Platform revokeUserEntitlementByUseCount \
    --entitlementId 'xIj5jZ8BurZvCzOj' \
    --namespace $AB_NAMESPACE \
    --userId 'kqbpSEknsRcFFlsY' \
    --body '{"reason": "8AEHADz2qpXsnRSQ", "useCount": 65}' \
    > test.out 2>&1
eval_tap $? 261 'RevokeUserEntitlementByUseCount' test.out

#- 262 PreCheckRevokeUserEntitlementByUseCount
samples/cli/sample-apps Platform preCheckRevokeUserEntitlementByUseCount \
    --entitlementId 'G5VKom08ll5rXc51' \
    --namespace $AB_NAMESPACE \
    --userId 'FLAoqzHYJVFAd2KT' \
    --quantity '52' \
    > test.out 2>&1
eval_tap $? 262 'PreCheckRevokeUserEntitlementByUseCount' test.out

#- 263 RevokeUseCount
eval_tap 0 263 'RevokeUseCount # SKIP deprecated' test.out

#- 264 SellUserEntitlement
samples/cli/sample-apps Platform sellUserEntitlement \
    --entitlementId 'NQIYl5qk9k4oJ2xJ' \
    --namespace $AB_NAMESPACE \
    --userId 'qx3Bco0h2Xlk9MmH' \
    --body '{"platform": "fL5Z3JweA7Y6QzZP", "requestId": "cq61PMa7mHvA7jUC", "useCount": 81}' \
    > test.out 2>&1
eval_tap $? 264 'SellUserEntitlement' test.out

#- 265 FulfillItem
samples/cli/sample-apps Platform fulfillItem \
    --namespace $AB_NAMESPACE \
    --userId 'bwIPqkskooPWwRTq' \
    --body '{"duration": 36, "endDate": "1988-08-05T00:00:00Z", "entitlementCollectionId": "NUanYtnYh1zoQ6vP", "entitlementOrigin": "Nintendo", "itemId": "YoaQ5B6JXM44paqa", "itemSku": "NbchgTT0kWEC5rCy", "language": "imMtVF1VR0zVyR1H", "metadata": {"P4NKGUh45VRKonNi": {}, "QFYdTQUucncWPJyE": {}, "R0ApHOP9lAIAdmnC": {}}, "order": {"currency": {"currencyCode": "n0V2WHy5oWCsbibB", "currencySymbol": "BTMrjyYD7yN7HUlk", "currencyType": "REAL", "decimals": 44, "namespace": "8wL7bXetAtSRWYF3"}, "ext": {"0tgw0rJJRetF0FM8": {}, "L8amsQrxJ5Esurt1": {}, "d5BEX4YazHnFDVJu": {}}, "free": true}, "orderNo": "F04RpH5ozu6aUki5", "origin": "Nintendo", "overrideBundleItemQty": {"xtzFV9o8DRhcAj4d": 6, "Rc1dn53EePlQsrOo": 74, "EIfWYDZGDSIxbmob": 84}, "quantity": 39, "region": "aEI635Y1BiYfeE7R", "source": "CONSUME_ENTITLEMENT", "startDate": "1971-12-27T00:00:00Z", "storeId": "xjtWW13zZxLdaPQx"}' \
    > test.out 2>&1
eval_tap $? 265 'FulfillItem' test.out

#- 266 RedeemCode
samples/cli/sample-apps Platform redeemCode \
    --namespace $AB_NAMESPACE \
    --userId '6Ct5LqjVXyFdv3kA' \
    --body '{"code": "lcEoEvqG3a6rkXT9", "language": "bn-TqQf", "region": "rgvv464frH8P2HTj"}' \
    > test.out 2>&1
eval_tap $? 266 'RedeemCode' test.out

#- 267 PreCheckFulfillItem
samples/cli/sample-apps Platform preCheckFulfillItem \
    --namespace $AB_NAMESPACE \
    --userId 'YMZSjrLjgf0zDz19' \
    --body '{"itemId": "CPzfAQ5PFOqn41q3", "itemSku": "K2x4E4GAc2V4TVPQ", "quantity": 67}' \
    > test.out 2>&1
eval_tap $? 267 'PreCheckFulfillItem' test.out

#- 268 FulfillRewards
samples/cli/sample-apps Platform fulfillRewards \
    --namespace $AB_NAMESPACE \
    --userId 'qGtaxgWw0uj1OmeP' \
    --body '{"entitlementCollectionId": "2vDAOnLCybQnFa8i", "entitlementOrigin": "Other", "metadata": {"BplQRNbIzOOkUMun": {}, "mHQTQPhrYOaZUVV7": {}, "yQrnrZghPwn26KVO": {}}, "origin": "Oculus", "rewards": [{"currency": {"currencyCode": "IA97vOWlnLweXZk0", "namespace": "pqZTliGsPtywSYR0"}, "item": {"itemId": "UtiZcaWgf40Esnx5", "itemSku": "uMRfRQTtkDHK32Zd", "itemType": "krPmSkg3TCHCuLzb"}, "quantity": 78, "type": "CURRENCY"}, {"currency": {"currencyCode": "BFsWqR3K84Bukv5i", "namespace": "vq2BFTv6EiJz4dzA"}, "item": {"itemId": "xoO5tRmB1hFT4kfL", "itemSku": "xP7Rw1dG1UZKa1ZJ", "itemType": "1PBNUkvjPClI0Zzy"}, "quantity": 87, "type": "CURRENCY"}, {"currency": {"currencyCode": "vs2SFRzRPpwxJDyW", "namespace": "SkGsAEEF2IxbZ16m"}, "item": {"itemId": "YFPSFGwpDMir3GFO", "itemSku": "od2NSTX0ZL2LMun2", "itemType": "eS5QcYDKQooqpkSN"}, "quantity": 21, "type": "CURRENCY"}], "source": "IAP_CHARGEBACK_REVERSED", "transactionId": "Jwjx9KkLOweh3ABd"}' \
    > test.out 2>&1
eval_tap $? 268 'FulfillRewards' test.out

#- 269 QueryUserIAPOrders
samples/cli/sample-apps Platform queryUserIAPOrders \
    --namespace $AB_NAMESPACE \
    --userId 'uo6QEyrOFKcsGERs' \
    --endTime 'QoupaxTIC6Dl86so' \
    --limit '7' \
    --offset '33' \
    --productId 'nAchB77jPR6BlKm4' \
    --startTime 'K2ee47ZoNKp5MCR9' \
    --status 'FAILED' \
    --type 'TWITCH' \
    > test.out 2>&1
eval_tap $? 269 'QueryUserIAPOrders' test.out

#- 270 QueryAllUserIAPOrders
samples/cli/sample-apps Platform queryAllUserIAPOrders \
    --namespace $AB_NAMESPACE \
    --userId 'iba1X06JEjCKW9du' \
    > test.out 2>&1
eval_tap $? 270 'QueryAllUserIAPOrders' test.out

#- 271 QueryUserIAPConsumeHistory
samples/cli/sample-apps Platform queryUserIAPConsumeHistory \
    --namespace $AB_NAMESPACE \
    --userId 'TQreRluYoELbi54g' \
    --endTime 'YDMr3NzQ4reVxOge' \
    --limit '89' \
    --offset '63' \
    --startTime '7qZrrlS2tqdA7Hh6' \
    --status 'SUCCESS' \
    --type 'TWITCH' \
    > test.out 2>&1
eval_tap $? 271 'QueryUserIAPConsumeHistory' test.out

#- 272 MockFulfillIAPItem
samples/cli/sample-apps Platform mockFulfillIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'Dupg6ipFbA5w34PF' \
    --body '{"itemIdentityType": "ITEM_SKU", "language": "Ff_OLCl_649", "productId": "mqoHJEnQbIv5N5JJ", "region": "LR2xMSbqWGzVsMMy", "transactionId": "xC7uOPYrjlluQL8G", "type": "APPLE"}' \
    > test.out 2>&1
eval_tap $? 272 'MockFulfillIAPItem' test.out

#- 273 QueryUserOrders
samples/cli/sample-apps Platform queryUserOrders \
    --namespace $AB_NAMESPACE \
    --userId 'c0DNHJ1EAQQJCSOw' \
    --discounted 'false' \
    --itemId 'pIVxq08jD2YsGzDF' \
    --limit '81' \
    --offset '51' \
    --status 'CHARGED' \
    > test.out 2>&1
eval_tap $? 273 'QueryUserOrders' test.out

#- 274 AdminCreateUserOrder
samples/cli/sample-apps Platform adminCreateUserOrder \
    --namespace $AB_NAMESPACE \
    --userId 'qOBA41ntctJfxoCd' \
    --body '{"currencyCode": "wjlcfRPVMf4g7iie", "currencyNamespace": "zBH94GbsGvcpIjKd", "discountCodes": ["trXbzxSzBsAcDCpr", "jWyoXCkmlZpIlC6S", "9PBMlnp3gp6Uxuru"], "discountedPrice": 93, "entitlementPlatform": "Steam", "ext": {"LrCO8fkeK2npLUEm": {}, "hXiIvLP4WeCxRJC2": {}, "vHp5EicjeAXxu7oe": {}}, "itemId": "JEKqzhBWjC1HaN86", "language": "0dksKh988to0h3f7", "options": {"skipPriceValidation": true}, "platform": "Nintendo", "price": 0, "quantity": 79, "region": "kD2gKW2pDe2SUElN", "returnUrl": "83xdeujjXMHPyh1q", "sandbox": true, "sectionId": "idmvmQJuyRoNA6eZ"}' \
    > test.out 2>&1
eval_tap $? 274 'AdminCreateUserOrder' test.out

#- 275 CountOfPurchasedItem
samples/cli/sample-apps Platform countOfPurchasedItem \
    --namespace $AB_NAMESPACE \
    --userId 'nw11xR1BuKXi1SmB' \
    --itemId '268srGw5mDlJwAyY' \
    > test.out 2>&1
eval_tap $? 275 'CountOfPurchasedItem' test.out

#- 276 GetUserOrder
samples/cli/sample-apps Platform getUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'GHu0spcsq6mm3dtj' \
    --userId 'ZxLNXUNfFyLPo8SH' \
    > test.out 2>&1
eval_tap $? 276 'GetUserOrder' test.out

#- 277 UpdateUserOrderStatus
samples/cli/sample-apps Platform updateUserOrderStatus \
    --namespace $AB_NAMESPACE \
    --orderNo 'VGgcwRAQ1LCXoOvN' \
    --userId '3OCuSrBodKcJPmNz' \
    --body '{"status": "CHARGEBACK", "statusReason": "utmyqwH8Pi8ZNRKo"}' \
    > test.out 2>&1
eval_tap $? 277 'UpdateUserOrderStatus' test.out

#- 278 FulfillUserOrder
samples/cli/sample-apps Platform fulfillUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo '94YBMZk379mYnLVn' \
    --userId 'GnhkW5fLdtLPA484' \
    > test.out 2>&1
eval_tap $? 278 'FulfillUserOrder' test.out

#- 279 GetUserOrderGrant
eval_tap 0 279 'GetUserOrderGrant # SKIP deprecated' test.out

#- 280 GetUserOrderHistories
samples/cli/sample-apps Platform getUserOrderHistories \
    --namespace $AB_NAMESPACE \
    --orderNo 'XOIj0EiJBtGRcDQg' \
    --userId 'wxHysqDxM6yJnnlH' \
    > test.out 2>&1
eval_tap $? 280 'GetUserOrderHistories' test.out

#- 281 ProcessUserOrderNotification
samples/cli/sample-apps Platform processUserOrderNotification \
    --namespace $AB_NAMESPACE \
    --orderNo 'JEOKRM9uTYeJ9wuP' \
    --userId 'SMNJUnrTSrxXAICS' \
    --body '{"additionalData": {"cardSummary": "xHDz7KjsMIfzRMNG"}, "authorisedTime": "1971-02-11T00:00:00Z", "chargebackReversedTime": "1996-03-20T00:00:00Z", "chargebackTime": "1976-06-23T00:00:00Z", "chargedTime": "1976-10-25T00:00:00Z", "createdTime": "1995-09-05T00:00:00Z", "currency": {"currencyCode": "wRzK4ZqiocJhKDZK", "currencySymbol": "HCzwMRzvKqoLiwOv", "currencyType": "REAL", "decimals": 80, "namespace": "o4uewDIbEn4eN3iY"}, "customParameters": {"Z7s9tzFDj9k4qXbH": {}, "ROZPZEasjIlbpCnW": {}, "YyXYV2175yHU2j76": {}}, "extOrderNo": "ocfX5sCVfY9F8weI", "extTxId": "u42zW4DhhezqL97h", "extUserId": "foLx2dPih4E0SRbo", "issuedAt": "1974-10-24T00:00:00Z", "metadata": {"Pcak4obg8xke2Ept": "EIbtrnlLIV674KXa", "8um01TDoiWSwoDwA": "77p0awaljS0QFTjW", "xbw5P8O7HKBFzikT": "B1q4Pqumgnzdd87a"}, "namespace": "JCagtmYnVfEvKlQd", "nonceStr": "zErxXFY4iwPRH3Hf", "paymentData": {"subtotalPrice": 5, "tax": 16, "totalPrice": 84}, "paymentMethod": "jie2JD6AEx1jaDFE", "paymentMethodFee": 42, "paymentOrderNo": "RzoLg71deM4Xrbu1", "paymentProvider": "STRIPE", "paymentProviderFee": 3, "paymentStationUrl": "2qVL1ssYYmw0Kg96", "price": 7, "refundedTime": "1991-02-09T00:00:00Z", "salesTax": 77, "sandbox": false, "sku": "KyuZttFG4VPM3ywm", "status": "AUTHORISE_FAILED", "statusReason": "VeVTcxyFClH5WgEH", "subscriptionId": "eZ53wfivNC86N48C", "subtotalPrice": 15, "targetNamespace": "83WLkmI6bU5yuPac", "targetUserId": "D2ksjVjtHec4Gtzx", "tax": 77, "totalPrice": 67, "totalTax": 61, "txEndTime": "1987-09-04T00:00:00Z", "type": "9QThAYWOof98AE7E", "userId": "quPSMrMYtOdZog37", "vat": 39}' \
    > test.out 2>&1
eval_tap $? 281 'ProcessUserOrderNotification' test.out

#- 282 DownloadUserOrderReceipt
samples/cli/sample-apps Platform downloadUserOrderReceipt \
    --namespace $AB_NAMESPACE \
    --orderNo 'nRW1TklgsOnkKO7k' \
    --userId '3vKa79N41hlHe9Uk' \
    > test.out 2>&1
eval_tap $? 282 'DownloadUserOrderReceipt' test.out

#- 283 CreateUserPaymentOrder
samples/cli/sample-apps Platform createUserPaymentOrder \
    --namespace $AB_NAMESPACE \
    --userId 'ji98rvFVrL1UhktU' \
    --body '{"currencyCode": "3kvdsvaoUpDNuDYD", "currencyNamespace": "OZkdbF0Me8CmUzHG", "customParameters": {"MnIhOAzsOjtm8C5C": {}, "nCB11CYpmkbEOF5n": {}, "9kr67NSTi3x0XdLL": {}}, "description": "Oc5fwixmxN2yCaT3", "extOrderNo": "F62qUgldVS1l0tVZ", "extUserId": "iBTmtk5O7OMTjJJ5", "itemType": "BUNDLE", "language": "ADe-Hlro-122", "metadata": {"BnsKKVAFBknn0QTV": "j1ThR6ccXKEAxTyq", "IAYxtzu5pfy1fB71": "AmHMOSVTlqOrWuLd", "FFUe6umkQd2XDdcg": "eNpEunGZQ877QfOI"}, "notifyUrl": "elBV0k46QoGrLb02", "omitNotification": false, "platform": "viD29YGNCwhc2FQT", "price": 50, "recurringPaymentOrderNo": "D59SMFnWdBl7r1hb", "region": "A3hJuvPZrsTbPZVW", "returnUrl": "Dsqj0dHrRwalbFYE", "sandbox": true, "sku": "hAd702SoiGGgBrl0", "subscriptionId": "qtzcXNGdvjCPHwjq", "title": "z3grNedaJadbXbZF"}' \
    > test.out 2>&1
eval_tap $? 283 'CreateUserPaymentOrder' test.out

#- 284 RefundUserPaymentOrder
samples/cli/sample-apps Platform refundUserPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'HQ4FJN5gRbPZwzsa' \
    --userId '7QTDOSzQiUDneURx' \
    --body '{"description": "W0rlrZqcETXq5iEO"}' \
    > test.out 2>&1
eval_tap $? 284 'RefundUserPaymentOrder' test.out

#- 285 GetUserPlatformAccountClosureHistories
samples/cli/sample-apps Platform getUserPlatformAccountClosureHistories \
    --namespace $AB_NAMESPACE \
    --userId 'hnE37xzS3GsXiDGa' \
    > test.out 2>&1
eval_tap $? 285 'GetUserPlatformAccountClosureHistories' test.out

#- 286 ApplyUserRedemption
samples/cli/sample-apps Platform applyUserRedemption \
    --namespace $AB_NAMESPACE \
    --userId 'vFrRnChSNwL6fYhd' \
    --body '{"code": "WaRazGQPoapGvKZ5", "orderNo": "5F8HwOWlzDIccTUr"}' \
    > test.out 2>&1
eval_tap $? 286 'ApplyUserRedemption' test.out

#- 287 DoRevocation
samples/cli/sample-apps Platform doRevocation \
    --namespace $AB_NAMESPACE \
    --userId '7d4LX64VrDqS7csR' \
    --body '{"meta": {"qpn8TuLKcAwj0KNN": {}, "dwFSHZo3Pc0DqWSs": {}, "CiZjKQ2EY9QdVDTF": {}}, "revokeEntries": [{"currency": {"balanceOrigin": "Steam", "currencyCode": "yXcxrfPutK3PjeRb", "namespace": "Qksf9ucadVr34SSv"}, "entitlement": {"entitlementId": "mjG1S2t7LY8d313i"}, "item": {"entitlementOrigin": "Xbox", "itemIdentity": "BDH0nwIQpYJO5acA", "itemIdentityType": "ITEM_ID", "origin": "IOS"}, "quantity": 1, "type": "CURRENCY"}, {"currency": {"balanceOrigin": "Oculus", "currencyCode": "XxXoH79PH6P9GTwc", "namespace": "fqVU6BbOBsa3emrZ"}, "entitlement": {"entitlementId": "0Zw95Ev2A8EwoOFh"}, "item": {"entitlementOrigin": "Other", "itemIdentity": "GxkDvTXFmm0JEfuZ", "itemIdentityType": "ITEM_SKU", "origin": "Playstation"}, "quantity": 68, "type": "ENTITLEMENT"}, {"currency": {"balanceOrigin": "Nintendo", "currencyCode": "y1x1J15EhsMR0kyq", "namespace": "9RCcWo9RUOyAt1W3"}, "entitlement": {"entitlementId": "BEGCCaQXbBzLcGaL"}, "item": {"entitlementOrigin": "GooglePlay", "itemIdentity": "jnG4hr49LjqXqxxi", "itemIdentityType": "ITEM_ID", "origin": "Other"}, "quantity": 1, "type": "CURRENCY"}], "source": "ORDER", "transactionId": "rf7pEMvWXvvYU48q"}' \
    > test.out 2>&1
eval_tap $? 287 'DoRevocation' test.out

#- 288 RegisterXblSessions
samples/cli/sample-apps Platform registerXblSessions \
    --namespace $AB_NAMESPACE \
    --userId 'qHkA0jnzX13uTEtD' \
    --body '{"gameSessionId": "61khPXKOk0hPCOmU", "payload": {"vtBgnhADXOR6T2Cc": {}, "gWOxfvEKwoyKim0m": {}, "m93JOCoz4R2ZLg7I": {}}, "scid": "Y5ljsiRQK1W3upFw", "sessionTemplateName": "8JKtJ5iDqKf7RMIC"}' \
    > test.out 2>&1
eval_tap $? 288 'RegisterXblSessions' test.out

#- 289 QueryUserSubscriptions
samples/cli/sample-apps Platform queryUserSubscriptions \
    --namespace $AB_NAMESPACE \
    --userId '7cLJZx630HScwiS4' \
    --chargeStatus 'CHARGED' \
    --itemId 'MyKU9OVX3E0ouYG6' \
    --limit '5' \
    --offset '14' \
    --sku 'stLrop2f5zV6Xff9' \
    --status 'ACTIVE' \
    --subscribedBy 'USER' \
    > test.out 2>&1
eval_tap $? 289 'QueryUserSubscriptions' test.out

#- 290 GetUserSubscriptionActivities
samples/cli/sample-apps Platform getUserSubscriptionActivities \
    --namespace $AB_NAMESPACE \
    --userId 'ExoU68sYJcFRduNd' \
    --excludeSystem 'true' \
    --limit '50' \
    --offset '21' \
    --subscriptionId 'pE8yXh4SQeHxnQGh' \
    > test.out 2>&1
eval_tap $? 290 'GetUserSubscriptionActivities' test.out

#- 291 PlatformSubscribeSubscription
samples/cli/sample-apps Platform platformSubscribeSubscription \
    --namespace $AB_NAMESPACE \
    --userId 'OHkqOJhXr1cZbmNE' \
    --body '{"grantDays": 44, "itemId": "HkEdLanCRwamrsOE", "language": "LTLwruZiBE5DWqhl", "reason": "BM4raeOCXKpIPNxJ", "region": "VsDCcyLpwEEdEPXq", "source": "N0xw4V9fX1Yh5KEO"}' \
    > test.out 2>&1
eval_tap $? 291 'PlatformSubscribeSubscription' test.out

#- 292 CheckUserSubscriptionSubscribableByItemId
samples/cli/sample-apps Platform checkUserSubscriptionSubscribableByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'fHZOYzBiTM2vSY0z' \
    --itemId '30jL45y5VuGMUfUR' \
    > test.out 2>&1
eval_tap $? 292 'CheckUserSubscriptionSubscribableByItemId' test.out

#- 293 GetUserSubscription
samples/cli/sample-apps Platform getUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'n0qdPn7yQTvVYNb2' \
    --userId 'L7cUbKvRGoaY611T' \
    > test.out 2>&1
eval_tap $? 293 'GetUserSubscription' test.out

#- 294 DeleteUserSubscription
samples/cli/sample-apps Platform deleteUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'T8OTpxVqmmfSwVcN' \
    --userId 'V6Fd7nPFrlbv6Zfr' \
    > test.out 2>&1
eval_tap $? 294 'DeleteUserSubscription' test.out

#- 295 CancelSubscription
samples/cli/sample-apps Platform cancelSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId '3cfDOAtOTscEhNBy' \
    --userId 'Nq8cROvAbfAEeqZG' \
    --force 'true' \
    --body '{"immediate": true, "reason": "WRfKNJdppqpUygj1"}' \
    > test.out 2>&1
eval_tap $? 295 'CancelSubscription' test.out

#- 296 GrantDaysToSubscription
samples/cli/sample-apps Platform grantDaysToSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'alann9gRusPKe262' \
    --userId 'pWEd26N6aOtc31qS' \
    --body '{"grantDays": 99, "reason": "yNteHQxo0A8m9oTV"}' \
    > test.out 2>&1
eval_tap $? 296 'GrantDaysToSubscription' test.out

#- 297 GetUserSubscriptionBillingHistories
samples/cli/sample-apps Platform getUserSubscriptionBillingHistories \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'S9ruF05oH3f0UIKR' \
    --userId 'iSoYD8VKEWyHGYBt' \
    --excludeFree 'false' \
    --limit '52' \
    --offset '47' \
    > test.out 2>&1
eval_tap $? 297 'GetUserSubscriptionBillingHistories' test.out

#- 298 ProcessUserSubscriptionNotification
samples/cli/sample-apps Platform processUserSubscriptionNotification \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'Gr0Uj9sP50HtJbxY' \
    --userId '1reXa51I1vzn4ZOh' \
    --body '{"additionalData": {"cardSummary": "zoIUoIOwqMxHmeVB"}, "authorisedTime": "1997-05-29T00:00:00Z", "chargebackReversedTime": "1982-09-26T00:00:00Z", "chargebackTime": "1976-05-25T00:00:00Z", "chargedTime": "1989-07-07T00:00:00Z", "createdTime": "1978-12-09T00:00:00Z", "currency": {"currencyCode": "Izu9NtroCf6uKVQO", "currencySymbol": "BP8gmvKGA29qGcVq", "currencyType": "VIRTUAL", "decimals": 76, "namespace": "vNCOkhKqLGgY4xzM"}, "customParameters": {"6ppUBJbinSjHpQY4": {}, "Smt3NfD2x3TmSCKc": {}, "36QSnzBz1Sn8sM8i": {}}, "extOrderNo": "oDtcBEGYnNzhL88z", "extTxId": "TwpOxrq1wyEUOOWs", "extUserId": "avf1FgQVFrYEfR3n", "issuedAt": "1975-02-05T00:00:00Z", "metadata": {"IWMlil14kyEmM3Nn": "n4FoNacPvg6guyJr", "HUHDs2agGmVXCw7A": "RH7ngvqvtnA7xgRx", "3Uj4QKQElSwUX02D": "qdp4QDkcrRwIRDYA"}, "namespace": "d7JMzvmxKRUkPlht", "nonceStr": "fw07LLZZT1kQDiGJ", "paymentData": {"subtotalPrice": 37, "tax": 53, "totalPrice": 84}, "paymentMethod": "leO3xjuNTcIO3Rh9", "paymentMethodFee": 19, "paymentOrderNo": "WfvIbg4hDqm8sMKI", "paymentProvider": "XSOLLA", "paymentProviderFee": 20, "paymentStationUrl": "wV1NqDplRZqbcoVL", "price": 70, "refundedTime": "1976-12-24T00:00:00Z", "salesTax": 75, "sandbox": true, "sku": "IY1CSsG2XJJ53Nvf", "status": "CHARGE_FAILED", "statusReason": "CEtV1SwpwLNdRG0q", "subscriptionId": "KnpuW3IcLMUKRgaB", "subtotalPrice": 46, "targetNamespace": "DN7FMLCoWlqo2CYR", "targetUserId": "bXNPYX5CaUDIWQtY", "tax": 52, "totalPrice": 29, "totalTax": 46, "txEndTime": "1988-06-07T00:00:00Z", "type": "eSARFeBCsOrbYE1v", "userId": "3fQXlEGPjaBoNkWt", "vat": 39}' \
    > test.out 2>&1
eval_tap $? 298 'ProcessUserSubscriptionNotification' test.out

#- 299 AcquireUserTicket
samples/cli/sample-apps Platform acquireUserTicket \
    --boothName 'qPHBuU9CApE8KK3S' \
    --namespace $AB_NAMESPACE \
    --userId '2Huban8mMTnI31wm' \
    --body '{"count": 28, "orderNo": "wPlkF2LPlAP7QSXl"}' \
    > test.out 2>&1
eval_tap $? 299 'AcquireUserTicket' test.out

#- 300 QueryUserCurrencyWallets
samples/cli/sample-apps Platform queryUserCurrencyWallets \
    --namespace $AB_NAMESPACE \
    --userId 'XXkSPFQXEuYU8RvB' \
    > test.out 2>&1
eval_tap $? 300 'QueryUserCurrencyWallets' test.out

#- 301 DebitUserWalletByCurrencyCode
samples/cli/sample-apps Platform debitUserWalletByCurrencyCode \
    --currencyCode 'fPPJZhB3ElGwpN7M' \
    --namespace $AB_NAMESPACE \
    --userId 'tHGdrTAOvNwlAiIi' \
    --body '{"allowOverdraft": true, "amount": 71, "balanceOrigin": "Epic", "balanceSource": "PAYMENT", "metadata": {"pC82lVIdYmNVv4Rs": {}, "4Gbbe5u1UXwr2kAN": {}, "kCJk2F3WfbHTg2KS": {}}, "reason": "KH3zpTkFGnYUMZXp"}' \
    > test.out 2>&1
eval_tap $? 301 'DebitUserWalletByCurrencyCode' test.out

#- 302 ListUserCurrencyTransactions
samples/cli/sample-apps Platform listUserCurrencyTransactions \
    --currencyCode 'tWMBd0KOYE0FWH6n' \
    --namespace $AB_NAMESPACE \
    --userId '8mIpvT1awdOlZxia' \
    --limit '37' \
    --offset '72' \
    > test.out 2>&1
eval_tap $? 302 'ListUserCurrencyTransactions' test.out

#- 303 CheckBalance
samples/cli/sample-apps Platform checkBalance \
    --currencyCode 'RUySXYGHbopW8oKr' \
    --namespace $AB_NAMESPACE \
    --userId 'qLhfxxmCPzyr66S9' \
    --request '{"amount": 37, "debitBalanceSource": "ORDER_REVOCATION", "metadata": {"JRsXPzLbfP3m5RzT": {}, "Rem54hFoYFbJ4XPW": {}, "HuNJGUuufxdM1ifB": {}}, "reason": "iVlqp6LdhO6KbWE9", "walletPlatform": "Playstation"}' \
    > test.out 2>&1
eval_tap $? 303 'CheckBalance' test.out

#- 304 CheckWallet
eval_tap 0 304 'CheckWallet # SKIP deprecated' test.out

#- 305 CreditUserWallet
samples/cli/sample-apps Platform creditUserWallet \
    --currencyCode 'Ynl7S6OHXPx9Qt6Y' \
    --namespace $AB_NAMESPACE \
    --userId 'hrFKDL5pYwIwfHXR' \
    --body '{"amount": 86, "expireAt": "1982-02-20T00:00:00Z", "metadata": {"Ad5YCUhFIhkjej9O": {}, "6N7mI64S6t6siqVC": {}, "nrVqsShfpiKrItva": {}}, "origin": "IOS", "reason": "uKwPjnt5tiF79CW3", "source": "SELL_BACK"}' \
    > test.out 2>&1
eval_tap $? 305 'CreditUserWallet' test.out

#- 306 DebitByWalletPlatform
samples/cli/sample-apps Platform debitByWalletPlatform \
    --currencyCode 'aXx4BRYOnVbfKH7v' \
    --namespace $AB_NAMESPACE \
    --userId 'kGAT4ft1AomoGmpd' \
    --request '{"amount": 29, "debitBalanceSource": "TRADE", "metadata": {"EElSaMbYJYgCcuii": {}, "F3etq4KLZi1Hdig0": {}, "JqQmNl2GHS75Jj7u": {}}, "reason": "MBntI3p1R80Quhnm", "walletPlatform": "IOS"}' \
    > test.out 2>&1
eval_tap $? 306 'DebitByWalletPlatform' test.out

#- 307 PayWithUserWallet
samples/cli/sample-apps Platform payWithUserWallet \
    --currencyCode 'AsCAy3ziQq9EmBAF' \
    --namespace $AB_NAMESPACE \
    --userId '6eE0kqqGmBs3plYA' \
    --body '{"amount": 37, "metadata": {"cJOiBJKfcQKDzck8": {}, "bO7bV6q5jSzKVf28": {}, "q3ngjrtRtgVWWJvg": {}}, "walletPlatform": "Epic"}' \
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
    --storeId 'FSABAlrivj60Amg1' \
    > test.out 2>&1
eval_tap $? 313 'ListViews' test.out

#- 314 CreateView
samples/cli/sample-apps Platform createView \
    --namespace $AB_NAMESPACE \
    --storeId 'ZE9uS34YLs268dIF' \
    --body '{"displayOrder": 6, "localizations": {"KuPAtLiNLHmQslKU": {"description": "cekFLnpiMDCM4cAB", "localExt": {"1zK1uAEdbLxU5Wvq": {}, "9QL3uKaKvVJQvG6P": {}, "UQjxUu1a4CMYZI2y": {}}, "longDescription": "1zZrgxI2wDG5ZLdk", "title": "HF5WbmUNOqKmyaaM"}, "wgVntCUwR1QxvXtc": {"description": "KBDs5hNBqgynuqPS", "localExt": {"vqIDAoqMSvCmAFUZ": {}, "6J4EePZtPOa2wqce": {}, "9qoWCYZkmJr2qqWv": {}}, "longDescription": "a9gHb5ziQkXFu0f0", "title": "C7GQcCQp4zg0MD5O"}, "KIkwRUoBwuc0rR9Q": {"description": "8TcnlM0QtBW0or8f", "localExt": {"Dwg7xus81hIbNlar": {}, "XNa28uARe38bXrKp": {}, "Mt1wiSXfNkKHl41A": {}}, "longDescription": "VN9qVRuZlvggJVGM", "title": "CDfLXU4jY6PFuBDw"}}, "name": "aHIoiJOByU1bc9EV"}' \
    > test.out 2>&1
eval_tap $? 314 'CreateView' test.out

#- 315 GetView
samples/cli/sample-apps Platform getView \
    --namespace $AB_NAMESPACE \
    --viewId 'xOM4LJbmj0kIJWSv' \
    --storeId '9eMtEwwb3BV0WEcz' \
    > test.out 2>&1
eval_tap $? 315 'GetView' test.out

#- 316 UpdateView
samples/cli/sample-apps Platform updateView \
    --namespace $AB_NAMESPACE \
    --viewId 'rRvsUiYd0ODHyHsw' \
    --storeId 'MrRiEHPOQwPZEmMW' \
    --body '{"displayOrder": 53, "localizations": {"syg3orlwIBRgzYbM": {"description": "Yq8VdrjiopI4gDB5", "localExt": {"O06C3BvLyKcFGjSI": {}, "Cp4NiwebzylDbyTA": {}, "98gHIyLAZpObf33L": {}}, "longDescription": "ijYZVJ295QuCFhRD", "title": "gDjbXDIlEMdyfN6v"}, "PWkNOzeSsoxXHnrc": {"description": "YD4ooqZFHx5K0gl4", "localExt": {"3T6QUCSktJ9NnL8N": {}, "Zdy05fP4JOr1xfn0": {}, "6HF0EW0NgYQ4UYEj": {}}, "longDescription": "thYHlF6t9QLvH72a", "title": "0c461qGO2zHcG9Fd"}, "zJoQWnURaJJboXA9": {"description": "N8wiuBLKsib1mXhx", "localExt": {"R0vJOr1hecNiCYN5": {}, "7j56ZAXbFApSiedC": {}, "RJ5od0IhbryFByCt": {}}, "longDescription": "eqllQjbUoMeiapYt", "title": "yNXxtFtf5CTx4QwS"}}, "name": "Mz0Nk9cL2DAKu5hl"}' \
    > test.out 2>&1
eval_tap $? 316 'UpdateView' test.out

#- 317 DeleteView
samples/cli/sample-apps Platform deleteView \
    --namespace $AB_NAMESPACE \
    --viewId 'ccWHEmVjn72pl2rt' \
    --storeId 'yOaks19bxqMioHNS' \
    > test.out 2>&1
eval_tap $? 317 'DeleteView' test.out

#- 318 QueryWallets
eval_tap 0 318 'QueryWallets # SKIP deprecated' test.out

#- 319 BulkCredit
samples/cli/sample-apps Platform bulkCredit \
    --namespace $AB_NAMESPACE \
    --body '[{"creditRequest": {"amount": 14, "expireAt": "1994-12-14T00:00:00Z", "metadata": {"6YbgaCmPMO8oZ3jG": {}, "vOvhgJzcYt17gd9m": {}, "0yqHWjox9hV7459g": {}}, "origin": "Nintendo", "reason": "0KRJjReHkxD2UCwB", "source": "IAP_CHARGEBACK_REVERSED"}, "currencyCode": "bEnAJ6F9F2SVHQLc", "userIds": ["HH9gDxRjUO10RUA8", "tRqmGBp55Ouyo2XH", "bIk8Wo5IGDUGO5Ll"]}, {"creditRequest": {"amount": 32, "expireAt": "1990-03-11T00:00:00Z", "metadata": {"jlALcCwqfeXgC2f0": {}, "PEI2YeoEMrZPcBEc": {}, "JXpF2dvQCqeM6p8J": {}}, "origin": "Twitch", "reason": "ln6WPnfYNf7KnfVD", "source": "CONSUME_ENTITLEMENT"}, "currencyCode": "u5dFBn14UJz7lcxh", "userIds": ["vzLDvhVr54V5klxP", "C1nFHDOpado3rxb5", "rG0XnYXBPL0m0QF4"]}, {"creditRequest": {"amount": 12, "expireAt": "1986-05-14T00:00:00Z", "metadata": {"PGQIphMZHPDM0Bl2": {}, "gXVNRxXrs8rnIzZD": {}, "jYEpyOjT2TrAHEj2": {}}, "origin": "Playstation", "reason": "STom5wO8qKXVwfSE", "source": "PURCHASE"}, "currencyCode": "vdZLoyJOWoVk66Ql", "userIds": ["W7sm0lYsgb5gyEmf", "nKtTBN6ELfi953ul", "Ta5g0OMY5NMjN3cG"]}]' \
    > test.out 2>&1
eval_tap $? 319 'BulkCredit' test.out

#- 320 BulkDebit
samples/cli/sample-apps Platform bulkDebit \
    --namespace $AB_NAMESPACE \
    --body '[{"currencyCode": "6mitdPlUcvmiErBg", "request": {"allowOverdraft": false, "amount": 56, "balanceOrigin": "Epic", "balanceSource": "EXPIRATION", "metadata": {"gy7WrV208BQgmkFr": {}, "czw5OUj5ZyVGRhdN": {}, "8gtnEGoRohSpQLaT": {}}, "reason": "bawzFH07xl3ZQjD8"}, "userIds": ["xgICJZs6CTptF4iO", "oMRiGLnOMAatH2Bi", "E8xdZLwkX0Sgw3lT"]}, {"currencyCode": "y3cJJhsA9QuLzIKA", "request": {"allowOverdraft": true, "amount": 49, "balanceOrigin": "Playstation", "balanceSource": "ORDER_REVOCATION", "metadata": {"O78XeM3Lblgk5BSd": {}, "8S6zl2CkZQCXPkit": {}, "oO18JreTFvJH2PS3": {}}, "reason": "doNZ7khk4DNv5qF4"}, "userIds": ["QL1MSSwg5aq82c4Z", "l7QTLeI68Qo7oT6m", "92Zpe8mxz8wPRz0Z"]}, {"currencyCode": "7t7mv3n1nCib2XAp", "request": {"allowOverdraft": true, "amount": 78, "balanceOrigin": "System", "balanceSource": "TRADE", "metadata": {"ZzpRmjxh5PK4BCNS": {}, "n8j3cXndkaRlYy2P": {}, "FxeuHZS4m3aUajLZ": {}}, "reason": "F1K5ScVOvAKbNEl4"}, "userIds": ["tbnrCvSIYv31wXt6", "XP5boEEaezLdFoCw", "zNhHdv829XdqAGUW"]}]' \
    > test.out 2>&1
eval_tap $? 320 'BulkDebit' test.out

#- 321 GetWallet
eval_tap 0 321 'GetWallet # SKIP deprecated' test.out

#- 322 SyncOrders
samples/cli/sample-apps Platform syncOrders \
    --nextEvaluatedKey 'iZnXHZ1PaMtfAN3S' \
    --end 'CfbZYVCtiZVl4mRY' \
    --start 'J9L586KNVYlYIUQD' \
    > test.out 2>&1
eval_tap $? 322 'SyncOrders' test.out

#- 323 TestAdyenConfig
samples/cli/sample-apps Platform testAdyenConfig \
    --sandbox 'true' \
    --body '{"allowedPaymentMethods": ["xv1I8jIspD9d64pN", "V0eWjkrsFMiw2ioo", "RjuwRvXdGWNfAXMI"], "apiKey": "gh3TGhj42V3p7p2B", "authoriseAsCapture": true, "blockedPaymentMethods": ["pzd9EurX71yxSfWv", "8UZOx3l4Zn0eFDnx", "IDeVBsIRrPSfTMjj"], "clientKey": "T8S5hWUXIBhH4saN", "dropInSettings": "X4ONnjfMYlklmXdI", "liveEndpointUrlPrefix": "pIzwjf3IYPKhoLl3", "merchantAccount": "YxBvYcYxYpqNzkTo", "notificationHmacKey": "JbnuCygTzg4FEtJP", "notificationPassword": "XjxkCCeAM7Fizsg8", "notificationUsername": "Ti6WRHubC5ZXiBGO", "returnUrl": "2e0PoqQhs1q2vrMU", "settings": "OaxFBSApnOrhXQGa"}' \
    > test.out 2>&1
eval_tap $? 323 'TestAdyenConfig' test.out

#- 324 TestAliPayConfig
samples/cli/sample-apps Platform testAliPayConfig \
    --sandbox 'true' \
    --body '{"appId": "wo1bdeL9MZNdAhr8", "privateKey": "uHGm1qdkIAttvgsI", "publicKey": "SvGTnkIIKuSN3cIG", "returnUrl": "G64m7yN19tCLiIr5"}' \
    > test.out 2>&1
eval_tap $? 324 'TestAliPayConfig' test.out

#- 325 TestCheckoutConfig
samples/cli/sample-apps Platform testCheckoutConfig \
    --sandbox 'false' \
    --body '{"publicKey": "dLJ0n3jBErqRg81L", "secretKey": "TyEWwkHVNry3gqpa"}' \
    > test.out 2>&1
eval_tap $? 325 'TestCheckoutConfig' test.out

#- 326 DebugMatchedPaymentMerchantConfig
samples/cli/sample-apps Platform debugMatchedPaymentMerchantConfig \
    --namespace '1mlwLI2FCbWZFUvX' \
    --region 'R2XcoAFJjAss0S74' \
    > test.out 2>&1
eval_tap $? 326 'DebugMatchedPaymentMerchantConfig' test.out

#- 327 TestNeonPayConfig
samples/cli/sample-apps Platform testNeonPayConfig \
    --sandbox 'true' \
    --body '{"apiKey": "a0f8DOb6lJ6UHvWr", "webhookSecretKey": "L6Zy87C8u9Eo8GJi"}' \
    > test.out 2>&1
eval_tap $? 327 'TestNeonPayConfig' test.out

#- 328 TestPayPalConfig
samples/cli/sample-apps Platform testPayPalConfig \
    --sandbox 'true' \
    --body '{"clientID": "e625orA2vwAAcDw0", "clientSecret": "0Tr4G1dUoPPVvPS4", "returnUrl": "jY9X8Vot3f2ttEVk", "webHookId": "3nc6jpWHTujHjVf9"}' \
    > test.out 2>&1
eval_tap $? 328 'TestPayPalConfig' test.out

#- 329 TestStripeConfig
samples/cli/sample-apps Platform testStripeConfig \
    --sandbox 'true' \
    --body '{"allowedPaymentMethodTypes": ["WEogqBDt19TiSXUC", "KK63u9xQwdOFDakM", "IqZ2Rc55762RusQl"], "publishableKey": "EdhcVJ2ObhNqxRwE", "secretKey": "PhAQXm1H1Ji3EN0s", "webhookSecret": "fiECe5HoNLSVvwcW"}' \
    > test.out 2>&1
eval_tap $? 329 'TestStripeConfig' test.out

#- 330 TestWxPayConfig
samples/cli/sample-apps Platform testWxPayConfig \
    --body '{"appId": "lmcu0g0DXsku9orq", "key": "jueLm2epqHs3GtgP", "mchid": "flpKdJoVtTGfCsZK", "returnUrl": "WCbUmYQ1PwYlu7VO"}' \
    > test.out 2>&1
eval_tap $? 330 'TestWxPayConfig' test.out

#- 331 TestXsollaConfig
samples/cli/sample-apps Platform testXsollaConfig \
    --body '{"apiKey": "xYCsC9tm1ZuHoOxU", "flowCompletionUrl": "0VCBSJr9PCz9JBE1", "merchantId": 24, "projectId": 11, "projectSecretKey": "Td4jhXwlSpfLGoOi"}' \
    > test.out 2>&1
eval_tap $? 331 'TestXsollaConfig' test.out

#- 332 GetPaymentMerchantConfig1
samples/cli/sample-apps Platform getPaymentMerchantConfig1 \
    --id 'xxpKOXRBOsxkdefD' \
    > test.out 2>&1
eval_tap $? 332 'GetPaymentMerchantConfig1' test.out

#- 333 UpdateAdyenConfig
samples/cli/sample-apps Platform updateAdyenConfig \
    --id 'ziGGs2XBlc7sZF5o' \
    --sandbox 'false' \
    --validate 'false' \
    --body '{"allowedPaymentMethods": ["4FeAAHiCv7RIa8Ya", "i1CxGczUsZwqlhJZ", "JivmMVim1y31kzcq"], "apiKey": "aZShAlRKNSHGEK4e", "authoriseAsCapture": true, "blockedPaymentMethods": ["siJgmk26EJD6llZe", "Or3FG4BoNTRiSBPz", "vdRkQfuLUoE3RbHO"], "clientKey": "EfnAp0TGIoHBBqcX", "dropInSettings": "nLdescaHOBHDasuM", "liveEndpointUrlPrefix": "ZRtICX7n55abPyiL", "merchantAccount": "tYnWbb5mj7AsAtwC", "notificationHmacKey": "cGTtJkRROyAtViq7", "notificationPassword": "einXhTfUc3xV1MEx", "notificationUsername": "EFpVyxjpNrQHnktV", "returnUrl": "JJQ1z0fFo8HlQeT2", "settings": "3HMrUZwTLObk6bAl"}' \
    > test.out 2>&1
eval_tap $? 333 'UpdateAdyenConfig' test.out

#- 334 TestAdyenConfigById
samples/cli/sample-apps Platform testAdyenConfigById \
    --id '6dyse1auiJwvQqsM' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 334 'TestAdyenConfigById' test.out

#- 335 UpdateAliPayConfig
samples/cli/sample-apps Platform updateAliPayConfig \
    --id 'ZMJWuQPa7vNAd5Nj' \
    --sandbox 'false' \
    --validate 'true' \
    --body '{"appId": "efqnCPGfR0HTEcHQ", "privateKey": "Y6t1I8oLv9H6r4F3", "publicKey": "GpDgkNgTtRYYYu3B", "returnUrl": "kpeFwloPVZjZqh5T"}' \
    > test.out 2>&1
eval_tap $? 335 'UpdateAliPayConfig' test.out

#- 336 TestAliPayConfigById
samples/cli/sample-apps Platform testAliPayConfigById \
    --id 'akZKhJ1JaWtbN8hq' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 336 'TestAliPayConfigById' test.out

#- 337 UpdateCheckoutConfig
samples/cli/sample-apps Platform updateCheckoutConfig \
    --id 'ogXzIaQQ1h8OUnCP' \
    --sandbox 'true' \
    --validate 'false' \
    --body '{"publicKey": "GZeCou5vHhevuQq7", "secretKey": "ARt2KchoEBIUaUPr"}' \
    > test.out 2>&1
eval_tap $? 337 'UpdateCheckoutConfig' test.out

#- 338 TestCheckoutConfigById
samples/cli/sample-apps Platform testCheckoutConfigById \
    --id '64gDZaBPoMPyYNyw' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 338 'TestCheckoutConfigById' test.out

#- 339 UpdateNeonPayConfig
samples/cli/sample-apps Platform updateNeonPayConfig \
    --id 'qxc7flf3GTjKVuQJ' \
    --sandbox 'true' \
    --validate 'true' \
    --body '{"apiKey": "xEGZnMZ2NuD0Fho4", "webhookSecretKey": "3c9ayhyq7YecqJ03"}' \
    > test.out 2>&1
eval_tap $? 339 'UpdateNeonPayConfig' test.out

#- 340 TestNeonPayConfigById
samples/cli/sample-apps Platform testNeonPayConfigById \
    --id 'CZ58NkTS7yBj9WQf' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 340 'TestNeonPayConfigById' test.out

#- 341 UpdatePayPalConfig
samples/cli/sample-apps Platform updatePayPalConfig \
    --id 'AEokmN9eznd8CU44' \
    --sandbox 'true' \
    --validate 'true' \
    --body '{"clientID": "eVr4LGH4RXwx8TPJ", "clientSecret": "cd59z6pKmbXao4xJ", "returnUrl": "5b98P22vdwRtnIx7", "webHookId": "Q9llJlpPC9F0ZK7C"}' \
    > test.out 2>&1
eval_tap $? 341 'UpdatePayPalConfig' test.out

#- 342 TestPayPalConfigById
samples/cli/sample-apps Platform testPayPalConfigById \
    --id 'OhgjyEZxRdGHjC7S' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 342 'TestPayPalConfigById' test.out

#- 343 UpdateStripeConfig
samples/cli/sample-apps Platform updateStripeConfig \
    --id 'EwhirNdd0Smz1DBO' \
    --sandbox 'true' \
    --validate 'true' \
    --body '{"allowedPaymentMethodTypes": ["ntA652iFpzy7vnWb", "BgRNGXsZYTvHY4Yu", "xULb0Ych2mXspjua"], "publishableKey": "tIgTfvgy1LbilD0B", "secretKey": "suoheEh4uMnyDkaE", "webhookSecret": "7iYhgF3C30k4NjSP"}' \
    > test.out 2>&1
eval_tap $? 343 'UpdateStripeConfig' test.out

#- 344 TestStripeConfigById
samples/cli/sample-apps Platform testStripeConfigById \
    --id 'JXzvlpCKoBXoW95d' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 344 'TestStripeConfigById' test.out

#- 345 UpdateWxPayConfig
samples/cli/sample-apps Platform updateWxPayConfig \
    --id 'XziOf3kJSuO2bRAs' \
    --validate 'true' \
    --body '{"appId": "KLd61cvCL7xdunwP", "key": "seSD7uHzSRSreTZZ", "mchid": "a3ZuT9VXouyqqXgX", "returnUrl": "IJ5okzWDbJABaalI"}' \
    > test.out 2>&1
eval_tap $? 345 'UpdateWxPayConfig' test.out

#- 346 UpdateWxPayConfigCert
samples/cli/sample-apps Platform updateWxPayConfigCert \
    --id 'zZJCFjr6DQnHGO2g' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 346 'UpdateWxPayConfigCert' test.out

#- 347 TestWxPayConfigById
samples/cli/sample-apps Platform testWxPayConfigById \
    --id 'knMW1jboee5JD8K0' \
    > test.out 2>&1
eval_tap $? 347 'TestWxPayConfigById' test.out

#- 348 UpdateXsollaConfig
samples/cli/sample-apps Platform updateXsollaConfig \
    --id 'YodJlkQJ5gcIW76L' \
    --validate 'false' \
    --body '{"apiKey": "jzWdXwucnSY1NQaK", "flowCompletionUrl": "Uiwefp2aEFdNK3JF", "merchantId": 42, "projectId": 90, "projectSecretKey": "c15oZX2vHU0LxhKf"}' \
    > test.out 2>&1
eval_tap $? 348 'UpdateXsollaConfig' test.out

#- 349 TestXsollaConfigById
samples/cli/sample-apps Platform testXsollaConfigById \
    --id 'nVXhrPbs1qZwpyxZ' \
    > test.out 2>&1
eval_tap $? 349 'TestXsollaConfigById' test.out

#- 350 UpdateXsollaUIConfig
samples/cli/sample-apps Platform updateXsollaUIConfig \
    --id '2SPAgl2jJdy5pB8b' \
    --body '{"device": "DESKTOP", "showCloseButton": true, "size": "LARGE", "theme": "DARK"}' \
    > test.out 2>&1
eval_tap $? 350 'UpdateXsollaUIConfig' test.out

#- 351 QueryPaymentProviderConfig
samples/cli/sample-apps Platform queryPaymentProviderConfig \
    --limit '81' \
    --namespace 'hkMd8Pbyh2gh2Gal' \
    --offset '14' \
    --region 'VoCyyRIRyiAG54Gj' \
    > test.out 2>&1
eval_tap $? 351 'QueryPaymentProviderConfig' test.out

#- 352 CreatePaymentProviderConfig
samples/cli/sample-apps Platform createPaymentProviderConfig \
    --body '{"aggregate": "XSOLLA", "namespace": "dFvZTxMJoygMJV7E", "region": "bOkaQn7HZbZUB15t", "sandboxTaxJarApiToken": "jO3I09HHlGoEviTL", "specials": ["WXPAY", "ALIPAY", "ADYEN"], "taxJarApiToken": "JbMoP4py2XzchdTr", "taxJarEnabled": true, "useGlobalTaxJarApiToken": false}' \
    > test.out 2>&1
eval_tap $? 352 'CreatePaymentProviderConfig' test.out

#- 353 GetAggregatePaymentProviders
samples/cli/sample-apps Platform getAggregatePaymentProviders \
    > test.out 2>&1
eval_tap $? 353 'GetAggregatePaymentProviders' test.out

#- 354 DebugMatchedPaymentProviderConfig
samples/cli/sample-apps Platform debugMatchedPaymentProviderConfig \
    --namespace '9g0stNC3e2g3mceq' \
    --region 'mpgCmgiaxw6R7J6d' \
    > test.out 2>&1
eval_tap $? 354 'DebugMatchedPaymentProviderConfig' test.out

#- 355 GetSpecialPaymentProviders
samples/cli/sample-apps Platform getSpecialPaymentProviders \
    > test.out 2>&1
eval_tap $? 355 'GetSpecialPaymentProviders' test.out

#- 356 UpdatePaymentProviderConfig
samples/cli/sample-apps Platform updatePaymentProviderConfig \
    --id 'edPKSTvoeMBnkp4P' \
    --body '{"aggregate": "NEONPAY", "namespace": "zewUP29Nfube6bl3", "region": "sFPTDWNu1Qts8WdX", "sandboxTaxJarApiToken": "Wr62WsAexVn0zyiX", "specials": ["ALIPAY", "WXPAY", "XSOLLA"], "taxJarApiToken": "d6UwQ4EEMAj4LXI7", "taxJarEnabled": false, "useGlobalTaxJarApiToken": true}' \
    > test.out 2>&1
eval_tap $? 356 'UpdatePaymentProviderConfig' test.out

#- 357 DeletePaymentProviderConfig
samples/cli/sample-apps Platform deletePaymentProviderConfig \
    --id '2KJQKPhrVX1NMBLi' \
    > test.out 2>&1
eval_tap $? 357 'DeletePaymentProviderConfig' test.out

#- 358 GetPaymentTaxConfig
samples/cli/sample-apps Platform getPaymentTaxConfig \
    > test.out 2>&1
eval_tap $? 358 'GetPaymentTaxConfig' test.out

#- 359 UpdatePaymentTaxConfig
samples/cli/sample-apps Platform updatePaymentTaxConfig \
    --body '{"sandboxTaxJarApiToken": "siATLRZVNtLXigvL", "taxJarApiToken": "PFRuRllAzE0VeH5M", "taxJarEnabled": true, "taxJarProductCodesMapping": {"FIhIuwAqsPmgHYkV": "MrDp6wUTt8Zele5x", "zvYzHf0g4KrMDUId": "paOHJqzcqAEk7OGO", "8uLLlvfiLt7WVGXe": "BoPSJa1QHkPCOYkf"}}' \
    > test.out 2>&1
eval_tap $? 359 'UpdatePaymentTaxConfig' test.out

#- 360 SyncPaymentOrders
samples/cli/sample-apps Platform syncPaymentOrders \
    --nextEvaluatedKey 'FmkXyIDFlEidPuiT' \
    --end 'AJCNEgEaQu1row7L' \
    --start 'X8dqy6s2G0kEUbvz' \
    > test.out 2>&1
eval_tap $? 360 'SyncPaymentOrders' test.out

#- 361 PublicGetRootCategories
samples/cli/sample-apps Platform publicGetRootCategories \
    --namespace $AB_NAMESPACE \
    --language 'niesWCcMa1iSnyQo' \
    --storeId '5vIp5BmulcmmKrsH' \
    > test.out 2>&1
eval_tap $? 361 'PublicGetRootCategories' test.out

#- 362 DownloadCategories
samples/cli/sample-apps Platform downloadCategories \
    --namespace $AB_NAMESPACE \
    --language 'JN5FxdXAKtv1Swz7' \
    --storeId 'CRV7eMbvIeEVyzVx' \
    > test.out 2>&1
eval_tap $? 362 'DownloadCategories' test.out

#- 363 PublicGetCategory
samples/cli/sample-apps Platform publicGetCategory \
    --categoryPath 'sgubNfwNxLl7BDNN' \
    --namespace $AB_NAMESPACE \
    --language 'PfvAqy3QfR4OADbd' \
    --storeId 'B8754oXgll6ln16k' \
    > test.out 2>&1
eval_tap $? 363 'PublicGetCategory' test.out

#- 364 PublicGetChildCategories
samples/cli/sample-apps Platform publicGetChildCategories \
    --categoryPath 'nFp47OTOFcpzfuPr' \
    --namespace $AB_NAMESPACE \
    --language '01y62W95vGwnCmi2' \
    --storeId 'orAtN9iYUhlOlwxX' \
    > test.out 2>&1
eval_tap $? 364 'PublicGetChildCategories' test.out

#- 365 PublicGetDescendantCategories
samples/cli/sample-apps Platform publicGetDescendantCategories \
    --categoryPath 'vwWGMGqaJnhLUAJH' \
    --namespace $AB_NAMESPACE \
    --language 'HmvzUvvm3qCr1ejv' \
    --storeId 'hW3p5lhuSXLgyHu1' \
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
    --dlcType 'EPICGAMES' \
    > test.out 2>&1
eval_tap $? 367 'GeDLCDurableRewardShortMap' test.out

#- 368 GetIAPItemMapping
samples/cli/sample-apps Platform getIAPItemMapping \
    --namespace $AB_NAMESPACE \
    --platform 'APPLE' \
    > test.out 2>&1
eval_tap $? 368 'GetIAPItemMapping' test.out

#- 369 PublicGetItemByAppId
samples/cli/sample-apps Platform publicGetItemByAppId \
    --namespace $AB_NAMESPACE \
    --language 'l6Id4A6HLQFCKw7J' \
    --region 'OFoaNHoX3KRJhGlh' \
    --storeId 'NPECdeGST62oLJQN' \
    --appId 'QR6bKbDhHz1DSZAr' \
    > test.out 2>&1
eval_tap $? 369 'PublicGetItemByAppId' test.out

#- 370 PublicQueryItems
samples/cli/sample-apps Platform publicQueryItems \
    --namespace $AB_NAMESPACE \
    --appType 'SOFTWARE' \
    --autoCalcEstimatedPrice 'false' \
    --baseAppId 'B7UsFqvmWXJhqjO9' \
    --categoryPath 'st6erBhxsl8ZQitS' \
    --features 'f8Feu0fM0exEm6tD' \
    --includeSubCategoryItem 'false' \
    --itemType 'COINS' \
    --language '0TgX9CDk2TQxgOC4' \
    --limit '91' \
    --offset '56' \
    --region 'eqFd8JQi3L17FeRs' \
    --sortBy '["name:desc", "displayOrder", "displayOrder:desc"]' \
    --storeId 'bLKAK23MoFmyyCfd' \
    --tags 'e9H5Vaa6Ur9KapZV' \
    > test.out 2>&1
eval_tap $? 370 'PublicQueryItems' test.out

#- 371 PublicGetItemBySku
samples/cli/sample-apps Platform publicGetItemBySku \
    --namespace $AB_NAMESPACE \
    --autoCalcEstimatedPrice 'true' \
    --language 'DPTfb5kmRIKL5qSm' \
    --region 'XkL8iD4y0BXRaijf' \
    --storeId 'qRfFjJBwCE6GjmGm' \
    --sku 'mmQgDemqdqgH2L7b' \
    > test.out 2>&1
eval_tap $? 371 'PublicGetItemBySku' test.out

#- 372 PublicGetEstimatedPrice
samples/cli/sample-apps Platform publicGetEstimatedPrice \
    --namespace $AB_NAMESPACE \
    --region 'eRWNrdzxHPlQp9PD' \
    --storeId 'TBobJcObwcVOkxwJ' \
    --itemIds 'aHtM2qLFd3pDmBnG' \
    > test.out 2>&1
eval_tap $? 372 'PublicGetEstimatedPrice' test.out

#- 373 PublicBulkGetItems
samples/cli/sample-apps Platform publicBulkGetItems \
    --namespace $AB_NAMESPACE \
    --autoCalcEstimatedPrice 'false' \
    --language 'm8GvP0RLckvCPmei' \
    --region 'DLNKUBeKIU3A37HI' \
    --storeId 'RVQQOMJLnOTVFtH8' \
    --itemIds 'dnkuK8TRsAKc4Z1I' \
    > test.out 2>&1
eval_tap $? 373 'PublicBulkGetItems' test.out

#- 374 PublicValidateItemPurchaseCondition
samples/cli/sample-apps Platform publicValidateItemPurchaseCondition \
    --namespace $AB_NAMESPACE \
    --body '{"itemIds": ["jxBaKzOVvSAKWean", "jtSQswvCZrEcmlWL", "q0xoUySACqPxXIaV"]}' \
    > test.out 2>&1
eval_tap $? 374 'PublicValidateItemPurchaseCondition' test.out

#- 375 PublicSearchItems
samples/cli/sample-apps Platform publicSearchItems \
    --namespace $AB_NAMESPACE \
    --autoCalcEstimatedPrice 'true' \
    --itemType 'LOOTBOX' \
    --limit '25' \
    --offset '28' \
    --region 'iKo9ALTvD5WFisKc' \
    --storeId 'i2oJf9e6iLwJMIfN' \
    --keyword 'FJqzghykTKHWIe2G' \
    --language 'FWGnGT2b8IGPkxRQ' \
    > test.out 2>&1
eval_tap $? 375 'PublicSearchItems' test.out

#- 376 PublicGetApp
samples/cli/sample-apps Platform publicGetApp \
    --itemId 'Fh4XwmUxRvcpeHwu' \
    --namespace $AB_NAMESPACE \
    --language 'XVV5BmF0IiMUks1n' \
    --region 'l113784e0KREvXDk' \
    --storeId '8GrlZ4BtXCFNn6NL' \
    > test.out 2>&1
eval_tap $? 376 'PublicGetApp' test.out

#- 377 PublicGetItemDynamicData
samples/cli/sample-apps Platform publicGetItemDynamicData \
    --itemId 'UqNggvrexGXzTXLh' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 377 'PublicGetItemDynamicData' test.out

#- 378 PublicGetItem
samples/cli/sample-apps Platform publicGetItem \
    --itemId 'AF2humYfXKRpwjyM' \
    --namespace $AB_NAMESPACE \
    --autoCalcEstimatedPrice 'true' \
    --language 'SGjCUzMr28UFnEMa' \
    --populateBundle 'true' \
    --region 'j078IJPQ9BR9ErcN' \
    --storeId 'ttwTmY1qKsjc3ziW' \
    > test.out 2>&1
eval_tap $? 378 'PublicGetItem' test.out

#- 379 GetPaymentCustomization
eval_tap 0 379 'GetPaymentCustomization # SKIP deprecated' test.out

#- 380 PublicGetPaymentUrl
samples/cli/sample-apps Platform publicGetPaymentUrl \
    --namespace $AB_NAMESPACE \
    --body '{"neonPayConfig": {"cancelUrl": "d2l6c3T4f2i1CDiU", "successUrl": "W2K9xSKeEbuEwMB1"}, "paymentOrderNo": "ka9zlsww71wWoWWz", "paymentProvider": "STRIPE", "returnUrl": "UYIglgpcZeMia4e3", "ui": "9Bwxpud9idnSY8Ky", "zipCode": "oXqf3ZRQjLMlm2WM"}' \
    > test.out 2>&1
eval_tap $? 380 'PublicGetPaymentUrl' test.out

#- 381 PublicGetPaymentMethods
samples/cli/sample-apps Platform publicGetPaymentMethods \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo '2Wmpx6ZyTwJO7XEg' \
    > test.out 2>&1
eval_tap $? 381 'PublicGetPaymentMethods' test.out

#- 382 PublicGetUnpaidPaymentOrder
samples/cli/sample-apps Platform publicGetUnpaidPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo '2lc3Yw3u4PeLgqiQ' \
    > test.out 2>&1
eval_tap $? 382 'PublicGetUnpaidPaymentOrder' test.out

#- 383 Pay
samples/cli/sample-apps Platform pay \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'QH1JMsRyicKgFvOh' \
    --paymentProvider 'ADYEN' \
    --zipCode '566eFXVxO0cJrIix' \
    --body '{"token": "YFy1TZx8mj9AaYTL"}' \
    > test.out 2>&1
eval_tap $? 383 'Pay' test.out

#- 384 PublicCheckPaymentOrderPaidStatus
samples/cli/sample-apps Platform publicCheckPaymentOrderPaidStatus \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'sZ4RWVbrFxQLuBKP' \
    > test.out 2>&1
eval_tap $? 384 'PublicCheckPaymentOrderPaidStatus' test.out

#- 385 GetPaymentPublicConfig
samples/cli/sample-apps Platform getPaymentPublicConfig \
    --namespace $AB_NAMESPACE \
    --sandbox 'false' \
    --paymentProvider 'NEONPAY' \
    --region 'c8au5rdaSfHdtAyY' \
    > test.out 2>&1
eval_tap $? 385 'GetPaymentPublicConfig' test.out

#- 386 PublicGetQRCode
samples/cli/sample-apps Platform publicGetQRCode \
    --namespace $AB_NAMESPACE \
    --code '8TGRut1I7HqoV3KM' \
    > test.out 2>&1
eval_tap $? 386 'PublicGetQRCode' test.out

#- 387 PublicNormalizePaymentReturnUrl
samples/cli/sample-apps Platform publicNormalizePaymentReturnUrl \
    --namespace $AB_NAMESPACE \
    --payerID '0aJ6RUHQJb0K081h' \
    --foreinginvoice 'Eg52TC8dTdrJifb8' \
    --invoiceId 'Go1BCd6lnHo29AQC' \
    --payload '5pkOKo8FcrByvnUK' \
    --redirectResult 'OFCMSupTCdcYwkPL' \
    --resultCode '46VBVwfR6U9jYjBo' \
    --sessionId '0gU9uIAIvWpfRlHD' \
    --status 'B4DZniinm6kV0qST' \
    --token '7gxV5wP6a3KHKhFH' \
    --type 'SEJj10UCM3F8m4Zh' \
    --userId '638pdfsBlPDQhX5j' \
    --orderNo 'PiUjJHajFnnmDj6y' \
    --paymentOrderNo 'j9xbyat8GHXywIbP' \
    --paymentProvider 'STRIPE' \
    --returnUrl '2dd9bnAf4UtsiEmU' \
    > test.out 2>&1
eval_tap $? 387 'PublicNormalizePaymentReturnUrl' test.out

#- 388 GetPaymentTaxValue
samples/cli/sample-apps Platform getPaymentTaxValue \
    --namespace $AB_NAMESPACE \
    --zipCode '0pNluydNLqVjTxvO' \
    --paymentOrderNo 'yVh6B9d7kijOriBF' \
    --paymentProvider 'CHECKOUT' \
    > test.out 2>&1
eval_tap $? 388 'GetPaymentTaxValue' test.out

#- 389 GetRewardByCode
samples/cli/sample-apps Platform getRewardByCode \
    --namespace $AB_NAMESPACE \
    --rewardCode 'rJ3fxGk3UBO9xh2A' \
    > test.out 2>&1
eval_tap $? 389 'GetRewardByCode' test.out

#- 390 QueryRewards1
samples/cli/sample-apps Platform queryRewards1 \
    --namespace $AB_NAMESPACE \
    --eventTopic '2e8CiHTWDXasqSKH' \
    --limit '16' \
    --offset '81' \
    --sortBy '["rewardCode:desc", "namespace:desc", "rewardCode"]' \
    > test.out 2>&1
eval_tap $? 390 'QueryRewards1' test.out

#- 391 GetReward1
samples/cli/sample-apps Platform getReward1 \
    --namespace $AB_NAMESPACE \
    --rewardId 'UbwChdDnGCPoGD1L' \
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
    --appIds '["frYqKikze6cHAhqm", "8MORbTlAJq8q3HKE", "VEhrfFrYiIAcy5iP"]' \
    --itemIds '["RUk63BOGphAipEhx", "OfBdd7SWtVtXysbI", "Q8ZkyhDd3EZRDvmu"]' \
    --skus '["x9hV1LKikjgR4W4b", "KbBRbqhpvIeg7FqP", "pv5eZdfSCM8D8qfX"]' \
    > test.out 2>&1
eval_tap $? 393 'PublicExistsAnyMyActiveEntitlement' test.out

#- 394 PublicGetMyAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform publicGetMyAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --appId '9u5bjftb8Y1Lipxq' \
    > test.out 2>&1
eval_tap $? 394 'PublicGetMyAppEntitlementOwnershipByAppId' test.out

#- 395 PublicGetMyEntitlementOwnershipByItemId
samples/cli/sample-apps Platform publicGetMyEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --entitlementClazz 'OPTIONBOX' \
    --itemId 'WGIT0dy94Ch6pSqv' \
    > test.out 2>&1
eval_tap $? 395 'PublicGetMyEntitlementOwnershipByItemId' test.out

#- 396 PublicGetMyEntitlementOwnershipBySku
samples/cli/sample-apps Platform publicGetMyEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --entitlementClazz 'LOOTBOX' \
    --sku 'a5s9sIelweds6ORu' \
    > test.out 2>&1
eval_tap $? 396 'PublicGetMyEntitlementOwnershipBySku' test.out

#- 397 PublicGetEntitlementOwnershipToken
samples/cli/sample-apps Platform publicGetEntitlementOwnershipToken \
    --namespace $AB_NAMESPACE \
    --appIds '["gtmpLK8F6BEzxemu", "KYzKr3mQFlPNRqTZ", "3ul2iobV58zgAWtk"]' \
    --itemIds '["xMUHJzbxr118qz1q", "tfMFKswollYLerqN", "re7Gt1Pe3gbC0X2M"]' \
    --skus '["ADn8JtyhMtpcCMKb", "CC2rq90RqCyifUsF", "zvpQsIVuqidYK0Ty"]' \
    > test.out 2>&1
eval_tap $? 397 'PublicGetEntitlementOwnershipToken' test.out

#- 398 SyncTwitchDropsEntitlement
samples/cli/sample-apps Platform syncTwitchDropsEntitlement \
    --namespace $AB_NAMESPACE \
    --body '{"gameId": "L5yQWzEjXmA9BNZF", "language": "fso_ra", "region": "R7NGi0QPVwR8lE87"}' \
    > test.out 2>&1
eval_tap $? 398 'SyncTwitchDropsEntitlement' test.out

#- 399 PublicGetMyWallet
samples/cli/sample-apps Platform publicGetMyWallet \
    --currencyCode 'BMSdObvaAlouDJpD' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 399 'PublicGetMyWallet' test.out

#- 400 SyncEpicGameDLC
samples/cli/sample-apps Platform syncEpicGameDLC \
    --namespace $AB_NAMESPACE \
    --userId 'ouQgTgq7DwvRfLwH' \
    --body '{"epicGamesJwtToken": "iN4HAilz888vvMJL"}' \
    > test.out 2>&1
eval_tap $? 400 'SyncEpicGameDLC' test.out

#- 401 SyncOculusDLC
samples/cli/sample-apps Platform syncOculusDLC \
    --namespace $AB_NAMESPACE \
    --userId 'd3MKSx0jlky8J8zY' \
    > test.out 2>&1
eval_tap $? 401 'SyncOculusDLC' test.out

#- 402 PublicSyncPsnDlcInventory
samples/cli/sample-apps Platform publicSyncPsnDlcInventory \
    --namespace $AB_NAMESPACE \
    --userId 'jk5lebUQg3MCe9Vi' \
    --body '{"serviceLabel": 91}' \
    > test.out 2>&1
eval_tap $? 402 'PublicSyncPsnDlcInventory' test.out

#- 403 PublicSyncPsnDlcInventoryWithMultipleServiceLabels
samples/cli/sample-apps Platform publicSyncPsnDlcInventoryWithMultipleServiceLabels \
    --namespace $AB_NAMESPACE \
    --userId 'eQvNaMJtuu1Iykm0' \
    --body '{"serviceLabels": [63, 21, 15]}' \
    > test.out 2>&1
eval_tap $? 403 'PublicSyncPsnDlcInventoryWithMultipleServiceLabels' test.out

#- 404 SyncSteamDLC
samples/cli/sample-apps Platform syncSteamDLC \
    --namespace $AB_NAMESPACE \
    --userId 'ivp6SI9ibm8aDdmH' \
    --body '{"appId": "M6yF7K8P786sv939", "steamId": "BRDJE7roiuUvZstt"}' \
    > test.out 2>&1
eval_tap $? 404 'SyncSteamDLC' test.out

#- 405 SyncXboxDLC
samples/cli/sample-apps Platform syncXboxDLC \
    --namespace $AB_NAMESPACE \
    --userId 'kmOIDxl3mCj1gSLs' \
    --body '{"xstsToken": "HuKaEIxXHHiSatPO"}' \
    > test.out 2>&1
eval_tap $? 405 'SyncXboxDLC' test.out

#- 406 PublicQueryUserEntitlements
samples/cli/sample-apps Platform publicQueryUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'av8JV1tzBfjZp13e' \
    --appType 'GAME' \
    --entitlementClazz 'APP' \
    --entitlementName 'k1zKLGikdhhbqZCw' \
    --features '["W8RPiK5K8LJubFON", "Vo2wmO9o6HLlWARR", "OGCr51nDqOn2IoLM"]' \
    --itemId '["opJeOZFTM86425rF", "6afz6kULbBQDD18c", "WSQL8f9KtQSB3hXN"]' \
    --limit '33' \
    --offset '83' \
    > test.out 2>&1
eval_tap $? 406 'PublicQueryUserEntitlements' test.out

#- 407 PublicGetUserAppEntitlementByAppId
samples/cli/sample-apps Platform publicGetUserAppEntitlementByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'nrPEdTWWAsyuk4pY' \
    --appId 'sVFow3pY1C0amY3W' \
    > test.out 2>&1
eval_tap $? 407 'PublicGetUserAppEntitlementByAppId' test.out

#- 408 PublicQueryUserEntitlementsByAppType
samples/cli/sample-apps Platform publicQueryUserEntitlementsByAppType \
    --namespace $AB_NAMESPACE \
    --userId 'Ezjw3GI3vZaimh1M' \
    --limit '73' \
    --offset '96' \
    --appType 'SOFTWARE' \
    > test.out 2>&1
eval_tap $? 408 'PublicQueryUserEntitlementsByAppType' test.out

#- 409 PublicGetUserEntitlementsByIds
samples/cli/sample-apps Platform publicGetUserEntitlementsByIds \
    --namespace $AB_NAMESPACE \
    --userId '3dSk8J6aK3yj7Y7D' \
    --availablePlatformOnly 'false' \
    --ids '["LTvJ0fCHBgyYOo3q", "rtSCPaluo3w2rdVK", "g8ZXZNTvWCN2fmS4"]' \
    > test.out 2>&1
eval_tap $? 409 'PublicGetUserEntitlementsByIds' test.out

#- 410 PublicGetUserEntitlementByItemId
eval_tap 0 410 'PublicGetUserEntitlementByItemId # SKIP deprecated' test.out

#- 411 PublicGetUserEntitlementBySku
eval_tap 0 411 'PublicGetUserEntitlementBySku # SKIP deprecated' test.out

#- 412 PublicUserEntitlementHistory
samples/cli/sample-apps Platform publicUserEntitlementHistory \
    --namespace $AB_NAMESPACE \
    --userId 'mV9z4kFff09J6xic' \
    --endDate '6YEUnZAUhgiukrTk' \
    --entitlementClazz 'ENTITLEMENT' \
    --limit '97' \
    --offset '55' \
    --startDate 'LxRUJNnDnBpnLLII' \
    > test.out 2>&1
eval_tap $? 412 'PublicUserEntitlementHistory' test.out

#- 413 PublicExistsAnyUserActiveEntitlement
samples/cli/sample-apps Platform publicExistsAnyUserActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --userId '0ZExn07rCPwP0Erg' \
    --appIds '["HUJZl1kAgbo1eLgC", "N6zNqG93eQOfdoru", "qk6mihIyBd8QLbdY"]' \
    --itemIds '["zU4lvrvxnw5aBqKm", "HFCp5gYYgyNQ9gch", "URuF0PZmVTeDKv5x"]' \
    --skus '["BWmHO21f8AXjAXHx", "iBBEqsdzBcYzCu5A", "xF768imGxYpr0LJi"]' \
    > test.out 2>&1
eval_tap $? 413 'PublicExistsAnyUserActiveEntitlement' test.out

#- 414 PublicGetUserAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform publicGetUserAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'ZcuAwyvt1qe11FdE' \
    --appId 'jB2h9d3DdBwJ5zqw' \
    > test.out 2>&1
eval_tap $? 414 'PublicGetUserAppEntitlementOwnershipByAppId' test.out

#- 415 PublicGetUserEntitlementOwnershipByItemId
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'rvdTN9d1oi2DpDH6' \
    --entitlementClazz 'SUBSCRIPTION' \
    --itemId 'JVWYbriRGKGKqPGT' \
    > test.out 2>&1
eval_tap $? 415 'PublicGetUserEntitlementOwnershipByItemId' test.out

#- 416 PublicGetUserEntitlementOwnershipByItemIds
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'x7rpFez1B1dKTDyw' \
    --ids '["GshM9Z8KhYLsMIfX", "Wm8HbG7zXj3cCqvF", "olmdJDxUcdteb5vj"]' \
    > test.out 2>&1
eval_tap $? 416 'PublicGetUserEntitlementOwnershipByItemIds' test.out

#- 417 PublicGetUserEntitlementOwnershipBySku
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --userId 'kPZtpPg05KjceWQm' \
    --entitlementClazz 'ENTITLEMENT' \
    --sku 'XIfqMajLYiJMWR4I' \
    > test.out 2>&1
eval_tap $? 417 'PublicGetUserEntitlementOwnershipBySku' test.out

#- 418 PublicGetUserEntitlement
samples/cli/sample-apps Platform publicGetUserEntitlement \
    --entitlementId 'go2pxBCzzWRsPkNm' \
    --namespace $AB_NAMESPACE \
    --userId 'yuFgtG5SWkgu9VcU' \
    > test.out 2>&1
eval_tap $? 418 'PublicGetUserEntitlement' test.out

#- 419 PublicConsumeUserEntitlement
samples/cli/sample-apps Platform publicConsumeUserEntitlement \
    --entitlementId 'scnscg6KTE3XNIA8' \
    --namespace $AB_NAMESPACE \
    --userId 'NMhxdIeHVewTf6m0' \
    --body '{"options": ["Y1FjCo9pxhy3agz5", "WX8eOdxDo5rH9MB8", "a57Fq7zOGFtIHEO8"], "requestId": "10mp0XP9qwkUyoce", "useCount": 27}' \
    > test.out 2>&1
eval_tap $? 419 'PublicConsumeUserEntitlement' test.out

#- 420 PublicSellUserEntitlement
samples/cli/sample-apps Platform publicSellUserEntitlement \
    --entitlementId 'h2TMoMiktqKSPUsn' \
    --namespace $AB_NAMESPACE \
    --userId 'fQakx9oMpByxrcoX' \
    --body '{"requestId": "6doxzoqcgmWwX9ZO", "useCount": 72}' \
    > test.out 2>&1
eval_tap $? 420 'PublicSellUserEntitlement' test.out

#- 421 PublicSplitUserEntitlement
samples/cli/sample-apps Platform publicSplitUserEntitlement \
    --entitlementId '7SuFYrnjak0rpbsJ' \
    --namespace $AB_NAMESPACE \
    --userId 'cTrUiSiQEVJavIQM' \
    --body '{"useCount": 90}' \
    > test.out 2>&1
eval_tap $? 421 'PublicSplitUserEntitlement' test.out

#- 422 PublicTransferUserEntitlement
samples/cli/sample-apps Platform publicTransferUserEntitlement \
    --entitlementId 'kpWmmeTjkb9OyEEm' \
    --namespace $AB_NAMESPACE \
    --userId '0nqIa9biu5VqoQfT' \
    --body '{"entitlementId": "kuGv2LV7R1apoh8n", "useCount": 68}' \
    > test.out 2>&1
eval_tap $? 422 'PublicTransferUserEntitlement' test.out

#- 423 PublicRedeemCode
samples/cli/sample-apps Platform publicRedeemCode \
    --namespace $AB_NAMESPACE \
    --userId 'rYJlSnb3o6W06gQD' \
    --body '{"code": "r4f8BVZp1v9Nnpug", "language": "Fmo_UDlH-876", "region": "dCYThO3W66XTDA1T"}' \
    > test.out 2>&1
eval_tap $? 423 'PublicRedeemCode' test.out

#- 424 PublicFulfillAppleIAPItem
samples/cli/sample-apps Platform publicFulfillAppleIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'SAhyuX1MlNseJ92u' \
    --body '{"excludeOldTransactions": false, "language": "zN-IE", "productId": "09yZcz9aOiifZTEm", "receiptData": "rGr5h1EdN0f5ZIhM", "region": "vWrHjFHgBKmdwvvC", "transactionId": "nPwN7be86BTkd10k"}' \
    > test.out 2>&1
eval_tap $? 424 'PublicFulfillAppleIAPItem' test.out

#- 425 SyncEpicGamesInventory
samples/cli/sample-apps Platform syncEpicGamesInventory \
    --namespace $AB_NAMESPACE \
    --userId 'Np6U3BmvJro0cgBt' \
    --body '{"epicGamesJwtToken": "UVZfZUNGUruxSMbN"}' \
    > test.out 2>&1
eval_tap $? 425 'SyncEpicGamesInventory' test.out

#- 426 PublicFulfillGoogleIAPItem
samples/cli/sample-apps Platform publicFulfillGoogleIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'arHIlSHnk2BAWPcl' \
    --body '{"autoAck": false, "language": "xdwi-WzCc-376", "orderId": "kxLHxGM4rNwIhTa5", "packageName": "hSIoBAzzgTWBO7p4", "productId": "M4Rze8tm5FNZeAnz", "purchaseTime": 96, "purchaseToken": "NUFfSZsjKQaOBMbR", "region": "iAVDEbqxQy4y4CRY"}' \
    > test.out 2>&1
eval_tap $? 426 'PublicFulfillGoogleIAPItem' test.out

#- 427 SyncOculusConsumableEntitlements
samples/cli/sample-apps Platform syncOculusConsumableEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'wAZk885HLnWp0dTT' \
    > test.out 2>&1
eval_tap $? 427 'SyncOculusConsumableEntitlements' test.out

#- 428 PublicReconcilePlayStationStore
samples/cli/sample-apps Platform publicReconcilePlayStationStore \
    --namespace $AB_NAMESPACE \
    --userId 'YAdl9dOsTT8IFbHO' \
    --body '{"currencyCode": "6p9T8wzHH242ux0C", "price": 0.6924738539628135, "productId": "N6labQ4K7M1uiITR", "serviceLabel": 90}' \
    > test.out 2>&1
eval_tap $? 428 'PublicReconcilePlayStationStore' test.out

#- 429 PublicReconcilePlayStationStoreWithMultipleServiceLabels
samples/cli/sample-apps Platform publicReconcilePlayStationStoreWithMultipleServiceLabels \
    --namespace $AB_NAMESPACE \
    --userId '7C46TmruHsExTHvH' \
    --body '{"currencyCode": "TRvWUsbVg6ibAybh", "price": 0.2835839101159271, "productId": "1CUJt39hpWgzxTPZ", "serviceLabels": [34, 5, 62]}' \
    > test.out 2>&1
eval_tap $? 429 'PublicReconcilePlayStationStoreWithMultipleServiceLabels' test.out

#- 430 SyncSteamInventory
samples/cli/sample-apps Platform syncSteamInventory \
    --namespace $AB_NAMESPACE \
    --userId 'TYhoJLfwpOPORSpu' \
    --body '{"appId": "iV5ilN6tqGfTvOJt", "currencyCode": "Nc9KRrhaV7jadm6J", "language": "IdYJ_cChY-NO", "price": 0.583454140191583, "productId": "dTc6VszuwDKzpfCw", "region": "fp6WFnew7ioC84aa", "steamId": "lCjJZ3hIYmbiAEBI"}' \
    > test.out 2>&1
eval_tap $? 430 'SyncSteamInventory' test.out

#- 431 SyncTwitchDropsEntitlement1
samples/cli/sample-apps Platform syncTwitchDropsEntitlement1 \
    --namespace $AB_NAMESPACE \
    --userId 'W4Za7IF4WtgMaWfq' \
    --body '{"gameId": "pGibNXWg1rjX8HNP", "language": "Up_BxVP_774", "region": "fOKCFw0hTpzXmksi"}' \
    > test.out 2>&1
eval_tap $? 431 'SyncTwitchDropsEntitlement1' test.out

#- 432 SyncXboxInventory
samples/cli/sample-apps Platform syncXboxInventory \
    --namespace $AB_NAMESPACE \
    --userId 'CcHIQCisoB9hg61z' \
    --body '{"currencyCode": "kFAcyM8qCcahpHlS", "price": 0.23230701534861609, "productId": "pgIUxHdEEHF5WNX5", "xstsToken": "wKWh9f8FdLUY2bNh"}' \
    > test.out 2>&1
eval_tap $? 432 'SyncXboxInventory' test.out

#- 433 PublicQueryUserOrders
samples/cli/sample-apps Platform publicQueryUserOrders \
    --namespace $AB_NAMESPACE \
    --userId 'oHab6vTH5Epd5ATQ' \
    --discounted 'true' \
    --itemId 'VGnbi8PpeHDLou9i' \
    --limit '19' \
    --offset '40' \
    --status 'CHARGEBACK_REVERSED' \
    > test.out 2>&1
eval_tap $? 433 'PublicQueryUserOrders' test.out

#- 434 PublicCreateUserOrder
samples/cli/sample-apps Platform publicCreateUserOrder \
    --namespace $AB_NAMESPACE \
    --userId 'v2sLl9EiJlMTwPod' \
    --body '{"currencyCode": "bJBLsXBNd4AFuVVl", "discountCodes": ["2uGdOVB0pnswnP86", "ZVn00zEuokv28tqd", "yHcJKmF1M0EtGmsl"], "discountedPrice": 75, "ext": {"yWRhUB1tihwMPRNC": {}, "7jakxFmHpXc8Wier": {}, "ixF2G5d33leyTQIE": {}}, "itemId": "xKTOSzRUXQFSbPpM", "language": "pQqK_UmIR", "price": 80, "quantity": 13, "region": "3k5GyLZl3gbF4HoS", "returnUrl": "jHYzZ3snwo9qkqbW", "sectionId": "emYJITnC85TS12mc"}' \
    > test.out 2>&1
eval_tap $? 434 'PublicCreateUserOrder' test.out

#- 435 PublicPreviewOrderPrice
samples/cli/sample-apps Platform publicPreviewOrderPrice \
    --namespace $AB_NAMESPACE \
    --userId '44BGt1G34mWhMDZh' \
    --body '{"currencyCode": "oM2LoYCkPjzOI5FX", "discountCodes": ["TAsFSkdrcG3m5mWX", "OqGDQNuKgpGcCBWv", "CyzZoiVTZKERXk6w"], "discountedPrice": 21, "itemId": "Y1CqUPZ1d5DChqNX", "price": 86, "quantity": 63}' \
    > test.out 2>&1
eval_tap $? 435 'PublicPreviewOrderPrice' test.out

#- 436 PublicGetUserOrder
samples/cli/sample-apps Platform publicGetUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'rQpjvCyrfviS9A0g' \
    --userId '3W5i7ecgCSZpjD9V' \
    > test.out 2>&1
eval_tap $? 436 'PublicGetUserOrder' test.out

#- 437 PublicCancelUserOrder
samples/cli/sample-apps Platform publicCancelUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'EFIO1fDQkUs8zCf5' \
    --userId 'O3yb0TEc69uwnG9f' \
    > test.out 2>&1
eval_tap $? 437 'PublicCancelUserOrder' test.out

#- 438 PublicGetUserOrderHistories
samples/cli/sample-apps Platform publicGetUserOrderHistories \
    --namespace $AB_NAMESPACE \
    --orderNo '5mBjLdWrfGndDpH5' \
    --userId 'KPviLNePvz1wCOMe' \
    > test.out 2>&1
eval_tap $? 438 'PublicGetUserOrderHistories' test.out

#- 439 PublicDownloadUserOrderReceipt
samples/cli/sample-apps Platform publicDownloadUserOrderReceipt \
    --namespace $AB_NAMESPACE \
    --orderNo 'FsSKQRctI5YnCggD' \
    --userId 'zOJk9JCWEEVzZmUG' \
    > test.out 2>&1
eval_tap $? 439 'PublicDownloadUserOrderReceipt' test.out

#- 440 PublicGetPaymentAccounts
samples/cli/sample-apps Platform publicGetPaymentAccounts \
    --namespace $AB_NAMESPACE \
    --userId 'LTCvke6qqMT3zKR8' \
    > test.out 2>&1
eval_tap $? 440 'PublicGetPaymentAccounts' test.out

#- 441 PublicDeletePaymentAccount
samples/cli/sample-apps Platform publicDeletePaymentAccount \
    --id 'FCb2qHXEB8AFUpos' \
    --namespace $AB_NAMESPACE \
    --type 'card' \
    --userId 'GnrJmCoxOqB1JTfk' \
    > test.out 2>&1
eval_tap $? 441 'PublicDeletePaymentAccount' test.out

#- 442 PublicListActiveSections
samples/cli/sample-apps Platform publicListActiveSections \
    --namespace $AB_NAMESPACE \
    --userId 'fq9LBsZ6lfa2QO2J' \
    --autoCalcEstimatedPrice 'true' \
    --language 'bgc2iuHMyAqGTfKe' \
    --region 'F0gZCF8KVJ6nSS5J' \
    --storeId 'yF117OE2rsIwzpKf' \
    --viewId 'C09zYNTMiKhVlwBq' \
    > test.out 2>&1
eval_tap $? 442 'PublicListActiveSections' test.out

#- 443 PublicQueryUserSubscriptions
samples/cli/sample-apps Platform publicQueryUserSubscriptions \
    --namespace $AB_NAMESPACE \
    --userId 'WIJj3GHJHNS2wfyY' \
    --chargeStatus 'NEVER' \
    --itemId 'ZynQFL0xBlYroyBe' \
    --limit '62' \
    --offset '12' \
    --sku 'mVAep6ZDqMmD7lkS' \
    --status 'CANCELLED' \
    --subscribedBy 'USER' \
    > test.out 2>&1
eval_tap $? 443 'PublicQueryUserSubscriptions' test.out

#- 444 PublicSubscribeSubscription
samples/cli/sample-apps Platform publicSubscribeSubscription \
    --namespace $AB_NAMESPACE \
    --userId '40FsHjfqhbAXF0mC' \
    --body '{"currencyCode": "g5szWzonSSgS0fjT", "itemId": "mySXwvGRpcMLAiMl", "language": "oj", "region": "aAz2WaQIC55us6FE", "returnUrl": "SLubAgXspcUWBClT", "source": "ehrzhIfNYESD4JBC"}' \
    > test.out 2>&1
eval_tap $? 444 'PublicSubscribeSubscription' test.out

#- 445 PublicCheckUserSubscriptionSubscribableByItemId
samples/cli/sample-apps Platform publicCheckUserSubscriptionSubscribableByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'eY5nyhqFDak2vzrC' \
    --itemId 'FZyqCzYYSzhXNaLY' \
    > test.out 2>&1
eval_tap $? 445 'PublicCheckUserSubscriptionSubscribableByItemId' test.out

#- 446 PublicGetUserSubscription
samples/cli/sample-apps Platform publicGetUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'NNkFXbtSgXYjQM2d' \
    --userId '3UB56FeIh2ZE0mg7' \
    > test.out 2>&1
eval_tap $? 446 'PublicGetUserSubscription' test.out

#- 447 PublicChangeSubscriptionBillingAccount
samples/cli/sample-apps Platform publicChangeSubscriptionBillingAccount \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'UnoCj5jvnGIEMrNI' \
    --userId 'MGyyLd7ysrAaKApH' \
    > test.out 2>&1
eval_tap $? 447 'PublicChangeSubscriptionBillingAccount' test.out

#- 448 PublicCancelSubscription
samples/cli/sample-apps Platform publicCancelSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'shx8aTbpuyIKuRHi' \
    --userId 'QKFYLxUPCodsstJA' \
    --body '{"immediate": true, "reason": "1uSjj1NeroA1AgHH"}' \
    > test.out 2>&1
eval_tap $? 448 'PublicCancelSubscription' test.out

#- 449 PublicGetUserSubscriptionBillingHistories
samples/cli/sample-apps Platform publicGetUserSubscriptionBillingHistories \
    --namespace $AB_NAMESPACE \
    --subscriptionId '9Dsi0YhIohIaF3fH' \
    --userId 'QoNOizolYksJoktu' \
    --excludeFree 'true' \
    --limit '81' \
    --offset '79' \
    > test.out 2>&1
eval_tap $? 449 'PublicGetUserSubscriptionBillingHistories' test.out

#- 450 PublicListViews
samples/cli/sample-apps Platform publicListViews \
    --namespace $AB_NAMESPACE \
    --userId 'FyTG7zRhaDcl1eCK' \
    --language 'pNOpRXFZP5vZVHkG' \
    --storeId 'Vwxi2PhBcWx6EkWX' \
    > test.out 2>&1
eval_tap $? 450 'PublicListViews' test.out

#- 451 PublicGetWallet
samples/cli/sample-apps Platform publicGetWallet \
    --currencyCode '6zQW8FHwilnQuOtZ' \
    --namespace $AB_NAMESPACE \
    --userId 'NMn2sDqzM4lxHabt' \
    > test.out 2>&1
eval_tap $? 451 'PublicGetWallet' test.out

#- 452 PublicListUserWalletTransactions
samples/cli/sample-apps Platform publicListUserWalletTransactions \
    --currencyCode '8YK87vos9xCRVqqc' \
    --namespace $AB_NAMESPACE \
    --userId '8xq8tunlxTg5CC2C' \
    --limit '20' \
    --offset '85' \
    > test.out 2>&1
eval_tap $? 452 'PublicListUserWalletTransactions' test.out

#- 453 QueryItemsV2
samples/cli/sample-apps Platform queryItemsV2 \
    --namespace $AB_NAMESPACE \
    --appType 'DEMO' \
    --availableDate 'iwsCjXNy3QLFpCTK' \
    --baseAppId 'K2yzC3qfbMTEx5g2' \
    --categoryPath 'NpzXupGZgMUqwT93' \
    --features '9pFE9MLvp787YX8J' \
    --includeSubCategoryItem 'false' \
    --itemName 'aYo7DaxuEFI4NeCo' \
    --itemStatus 'ACTIVE' \
    --itemType '["LOOTBOX", "BUNDLE", "OPTIONBOX"]' \
    --limit '94' \
    --offset '81' \
    --region 'VabvVoOI2q1U7ox2' \
    --sectionExclusive 'false' \
    --sortBy '["updatedAt", "createdAt:desc", "updatedAt:asc"]' \
    --storeId '9RFtCBsv6rDlrNbw' \
    --tags '3q1XX8rmrLTyYATY' \
    --targetNamespace 'RQauqzGRz8q6wFMb' \
    --withTotal 'false' \
    > test.out 2>&1
eval_tap $? 453 'QueryItemsV2' test.out

#- 454 ImportStore1
samples/cli/sample-apps Platform importStore1 \
    --namespace $AB_NAMESPACE \
    --storeId 'cKwQhKxCyvuycoiP' \
    --strictMode 'false' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 454 'ImportStore1' test.out

#- 455 ExportStore1
samples/cli/sample-apps Platform exportStore1 \
    --namespace $AB_NAMESPACE \
    --storeId 'DZjHeQIt5j7jPymz' \
    --body '{"itemIds": ["1zOUme69HRbTZ9oh", "5Cn7BRLh2ZzLsvZy", "2X44sWPkFbfzCSKz"]}' \
    > test.out 2>&1
eval_tap $? 455 'ExportStore1' test.out

#- 456 FulfillRewardsV2
samples/cli/sample-apps Platform fulfillRewardsV2 \
    --namespace $AB_NAMESPACE \
    --userId '1EJyfOBffzFsXjqy' \
    --body '{"entitlementCollectionId": "CJ1aRsydjljJKJMw", "entitlementOrigin": "Xbox", "metadata": {"93yoPsWW9GVIHD2g": {}, "8tDu5ONFAwzV0sW5": {}, "dLRD38iw0Jhs0cFe": {}}, "origin": "Nintendo", "rewards": [{"currency": {"currencyCode": "iNJTn2Kf9xu4Hmjn", "namespace": "4ArANwjMGp5NSiys"}, "item": {"itemId": "uNPaIcBLSKkKr1WZ", "itemSku": "7Xnn1GBp6bpOimRg", "itemType": "1ToH6v24byElO6f3"}, "quantity": 0, "type": "ITEM"}, {"currency": {"currencyCode": "VbY821qT9opdYq38", "namespace": "ZEi919lclr6ZoSKo"}, "item": {"itemId": "9PPrYeZ6w2iVxacs", "itemSku": "oGYW11RrExspUYg8", "itemType": "fD5Efk33HGntbO1P"}, "quantity": 44, "type": "ITEM"}, {"currency": {"currencyCode": "BG6OxQ7zgsydvIpP", "namespace": "OBmQ70KBzTCBHlcm"}, "item": {"itemId": "9tXo4wD8urJZfkQF", "itemSku": "kNOk5U8RwnI34nhM", "itemType": "M3fXudUl16SnQ7KH"}, "quantity": 84, "type": "ITEM"}], "source": "PURCHASE", "transactionId": "TBjrFGCpMSPbtSHR"}' \
    > test.out 2>&1
eval_tap $? 456 'FulfillRewardsV2' test.out


rm -f "tmp.dat"

exit $EXIT_CODE