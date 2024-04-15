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
echo "1..445"

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
    --id 'V1lTnbMzBtRkqclt' \
    > test.out 2>&1
eval_tap $? 3 'GetFulfillmentScript' test.out

#- 4 CreateFulfillmentScript
samples/cli/sample-apps Platform createFulfillmentScript \
    --id 'fLqSCY9x1ZIXRemC' \
    --body '{"grantDays": "ZknzszR9RT5h1VbF"}' \
    > test.out 2>&1
eval_tap $? 4 'CreateFulfillmentScript' test.out

#- 5 DeleteFulfillmentScript
samples/cli/sample-apps Platform deleteFulfillmentScript \
    --id 'q1GejOzHpRkl5uQE' \
    > test.out 2>&1
eval_tap $? 5 'DeleteFulfillmentScript' test.out

#- 6 UpdateFulfillmentScript
samples/cli/sample-apps Platform updateFulfillmentScript \
    --id 'ZWpbNR3DgXtvnl32' \
    --body '{"grantDays": "mVHjnVoyij86GBCn"}' \
    > test.out 2>&1
eval_tap $? 6 'UpdateFulfillmentScript' test.out

#- 7 ListItemTypeConfigs
samples/cli/sample-apps Platform listItemTypeConfigs \
    > test.out 2>&1
eval_tap $? 7 'ListItemTypeConfigs' test.out

#- 8 CreateItemTypeConfig
samples/cli/sample-apps Platform createItemTypeConfig \
    --body '{"clazz": "uD74cVs00znY0CMA", "dryRun": true, "fulfillmentUrl": "jpqFf7iFsX4rDVZq", "itemType": "COINS", "purchaseConditionUrl": "qrQ5W83jVFiRgp7E"}' \
    > test.out 2>&1
eval_tap $? 8 'CreateItemTypeConfig' test.out

#- 9 SearchItemTypeConfig
samples/cli/sample-apps Platform searchItemTypeConfig \
    --clazz 'nWerGB1gRw1ipNHm' \
    --itemType 'SEASON' \
    > test.out 2>&1
eval_tap $? 9 'SearchItemTypeConfig' test.out

#- 10 GetItemTypeConfig
samples/cli/sample-apps Platform getItemTypeConfig \
    --id '0L4HYjgEYJygqKN7' \
    > test.out 2>&1
eval_tap $? 10 'GetItemTypeConfig' test.out

#- 11 UpdateItemTypeConfig
samples/cli/sample-apps Platform updateItemTypeConfig \
    --id 'IWF6qh0q0NLKyeAD' \
    --body '{"clazz": "B42OkZ7Mz8xsHzmB", "dryRun": false, "fulfillmentUrl": "OSqtkO6aTiMGrBX4", "purchaseConditionUrl": "OE53TBAga0z6tx02"}' \
    > test.out 2>&1
eval_tap $? 11 'UpdateItemTypeConfig' test.out

#- 12 DeleteItemTypeConfig
samples/cli/sample-apps Platform deleteItemTypeConfig \
    --id 'fDbRSMDRm98TMhD8' \
    > test.out 2>&1
eval_tap $? 12 'DeleteItemTypeConfig' test.out

#- 13 QueryCampaigns
samples/cli/sample-apps Platform queryCampaigns \
    --namespace $AB_NAMESPACE \
    --limit '51' \
    --name 'mbsyZelerOmonyLJ' \
    --offset '61' \
    --tag '34GVFy069uhd3Owa' \
    > test.out 2>&1
eval_tap $? 13 'QueryCampaigns' test.out

#- 14 CreateCampaign
samples/cli/sample-apps Platform createCampaign \
    --namespace $AB_NAMESPACE \
    --body '{"description": "zfSrij7G9V7AJzkj", "items": [{"extraSubscriptionDays": 3, "itemId": "qrXadAJQ87JpOPJO", "itemName": "0r0yMdF3B0tArocH", "quantity": 96}, {"extraSubscriptionDays": 26, "itemId": "o8Ei3WsvWPHl1gh8", "itemName": "5wFL9fpNNRVHxYpM", "quantity": 41}, {"extraSubscriptionDays": 93, "itemId": "riYOSe1ooEHQK0Uf", "itemName": "TXW8e4ytG5kho8XG", "quantity": 79}], "maxRedeemCountPerCampaignPerUser": 29, "maxRedeemCountPerCode": 70, "maxRedeemCountPerCodePerUser": 57, "maxSaleCount": 96, "name": "DGI4wRiPclFbupFP", "redeemEnd": "1990-02-15T00:00:00Z", "redeemStart": "1992-02-19T00:00:00Z", "redeemType": "ITEM", "status": "INACTIVE", "tags": ["MPTpSfEYcYvrR9ek", "QdBqpmCJs71oVETU", "t5ta1sTpfcnUFSiS"], "type": "REDEMPTION"}' \
    > test.out 2>&1
eval_tap $? 14 'CreateCampaign' test.out

#- 15 GetCampaign
samples/cli/sample-apps Platform getCampaign \
    --campaignId 'p7FmwZ9BTFilsk1F' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 15 'GetCampaign' test.out

#- 16 UpdateCampaign
samples/cli/sample-apps Platform updateCampaign \
    --campaignId '1RIfClFMTwbb8lny' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "zt9TJHcq1MdUDzdm", "items": [{"extraSubscriptionDays": 24, "itemId": "iSPulwhz3YaQbb50", "itemName": "rrLR2tixHIfe8YFt", "quantity": 10}, {"extraSubscriptionDays": 8, "itemId": "qoURvyzfimu6i1e4", "itemName": "PYjbYmhN8wQsEFoh", "quantity": 59}, {"extraSubscriptionDays": 95, "itemId": "xOCQ6XQNAQgLUlwY", "itemName": "lFAjq6nYN3rjTYx7", "quantity": 56}], "maxRedeemCountPerCampaignPerUser": 75, "maxRedeemCountPerCode": 29, "maxRedeemCountPerCodePerUser": 92, "maxSaleCount": 0, "name": "z0pq78mjfOF9bIBI", "redeemEnd": "1981-09-08T00:00:00Z", "redeemStart": "1989-04-01T00:00:00Z", "redeemType": "ITEM", "status": "INACTIVE", "tags": ["GmgbTJqk9hDsnNoh", "NqEWLklmSa3XBS1U", "4IJoN0R1ABA7AuPi"]}' \
    > test.out 2>&1
eval_tap $? 16 'UpdateCampaign' test.out

#- 17 GetCampaignDynamic
samples/cli/sample-apps Platform getCampaignDynamic \
    --campaignId 'Jw7xNwdHo871Vx31' \
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
    --body '{"appConfig": {"appName": "z1OvuZYzYnx89TO1"}, "customConfig": {"connectionType": "INSECURE", "grpcServerAddress": "90EylzUWe58y5Zw9"}, "extendType": "APP"}' \
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
    --force 'false' \
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
    --body '{"appConfig": {"appName": "ZD5qiPxifJqFAQKM"}, "customConfig": {"connectionType": "TLS", "grpcServerAddress": "bQ81cI93urFxhBAH"}, "extendType": "APP"}' \
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
    --storeId 'zxpY4AKSsCSkt5wC' \
    > test.out 2>&1
eval_tap $? 27 'GetRootCategories' test.out

#- 28 CreateCategory
samples/cli/sample-apps Platform createCategory \
    --namespace $AB_NAMESPACE \
    --storeId 'keDkIGPaNZZpHXy5' \
    --body '{"categoryPath": "ZNbJ9ehwJBTAAtxu", "localizationDisplayNames": {"1NxS0a0o4nqcahnP": "Av4trpuFymU9d8lM", "UsCIgq5NNoPCnNhj": "BW6faSlLw5P9crun", "Aiviyobem5ZLszrx": "S4xzIwidjfQUMbjA"}}' \
    > test.out 2>&1
eval_tap $? 28 'CreateCategory' test.out

#- 29 ListCategoriesBasic
samples/cli/sample-apps Platform listCategoriesBasic \
    --namespace $AB_NAMESPACE \
    --storeId 'bBBXDz0DUfUi3Gnd' \
    > test.out 2>&1
eval_tap $? 29 'ListCategoriesBasic' test.out

#- 30 GetCategory
samples/cli/sample-apps Platform getCategory \
    --categoryPath 'uu2v6EjIFN3OVY74' \
    --namespace $AB_NAMESPACE \
    --storeId 'yaQpb7TCgXhKNh2b' \
    > test.out 2>&1
eval_tap $? 30 'GetCategory' test.out

#- 31 UpdateCategory
samples/cli/sample-apps Platform updateCategory \
    --categoryPath 'vuTSinsSTqpxhtH9' \
    --namespace $AB_NAMESPACE \
    --storeId 'w6qvBE3MsI0Bswih' \
    --body '{"localizationDisplayNames": {"1bsyopQPlqpGqMKS": "0wMHgtOv8SNS7QYp", "bZHgTupHBHD33FuC": "eegt0FEKtAKVNKOH", "3j8b73lViiTF6lWo": "FEy79fEt2BuHsbpu"}}' \
    > test.out 2>&1
eval_tap $? 31 'UpdateCategory' test.out

#- 32 DeleteCategory
samples/cli/sample-apps Platform deleteCategory \
    --categoryPath 'FxrwzXJXWzMwzJjU' \
    --namespace $AB_NAMESPACE \
    --storeId 'GLmz80hVQ96NiM1T' \
    > test.out 2>&1
eval_tap $? 32 'DeleteCategory' test.out

#- 33 GetChildCategories
samples/cli/sample-apps Platform getChildCategories \
    --categoryPath 't1ncoLodvc21uoSS' \
    --namespace $AB_NAMESPACE \
    --storeId 'GmEFVEDBcIIYQSzr' \
    > test.out 2>&1
eval_tap $? 33 'GetChildCategories' test.out

#- 34 GetDescendantCategories
samples/cli/sample-apps Platform getDescendantCategories \
    --categoryPath 'LEobNXGwa2CmgWwu' \
    --namespace $AB_NAMESPACE \
    --storeId 'DviCtTIY2CjNFkro' \
    > test.out 2>&1
eval_tap $? 34 'GetDescendantCategories' test.out

#- 35 QueryCodes
samples/cli/sample-apps Platform queryCodes \
    --campaignId 'CRXReu0IciVSpLbZ' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --batchNo '54' \
    --code '1jwqpyjnzd2IsQea' \
    --limit '15' \
    --offset '20' \
    > test.out 2>&1
eval_tap $? 35 'QueryCodes' test.out

#- 36 CreateCodes
samples/cli/sample-apps Platform createCodes \
    --campaignId 'QR7xdPQuIbupL1XF' \
    --namespace $AB_NAMESPACE \
    --body '{"quantity": 88}' \
    > test.out 2>&1
eval_tap $? 36 'CreateCodes' test.out

#- 37 Download
samples/cli/sample-apps Platform download \
    --campaignId 'gM8CWNXQ5v5LkUIW' \
    --namespace $AB_NAMESPACE \
    --batchNo '13' \
    > test.out 2>&1
eval_tap $? 37 'Download' test.out

#- 38 BulkDisableCodes
samples/cli/sample-apps Platform bulkDisableCodes \
    --campaignId 'NnZaD9O4tcR4lOH7' \
    --namespace $AB_NAMESPACE \
    --batchNo '29' \
    > test.out 2>&1
eval_tap $? 38 'BulkDisableCodes' test.out

#- 39 BulkEnableCodes
samples/cli/sample-apps Platform bulkEnableCodes \
    --campaignId 'aCg4y78BykafCRPL' \
    --namespace $AB_NAMESPACE \
    --batchNo '35' \
    > test.out 2>&1
eval_tap $? 39 'BulkEnableCodes' test.out

#- 40 QueryRedeemHistory
samples/cli/sample-apps Platform queryRedeemHistory \
    --campaignId 'zpDrBAL8BTV5pRhh' \
    --namespace $AB_NAMESPACE \
    --code 'wZH8t2s4Jm08qUKl' \
    --limit '84' \
    --offset '46' \
    --userId 'LttmI6RovPXlGaEo' \
    > test.out 2>&1
eval_tap $? 40 'QueryRedeemHistory' test.out

#- 41 GetCode
samples/cli/sample-apps Platform getCode \
    --code 'dNlckrUDUE95INEP' \
    --namespace $AB_NAMESPACE \
    --redeemable 'true' \
    > test.out 2>&1
eval_tap $? 41 'GetCode' test.out

#- 42 DisableCode
samples/cli/sample-apps Platform disableCode \
    --code 'y5AneUalf8GOYsho' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 42 'DisableCode' test.out

#- 43 EnableCode
samples/cli/sample-apps Platform enableCode \
    --code 'w2NBKdaflQHcB6Sz' \
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
    --body '{"currencyCode": "IettBnGtY4GVhcpf", "currencySymbol": "Utl4kpQdy4AlSggV", "currencyType": "REAL", "decimals": 34, "localizationDescriptions": {"CRWULbMk2xqHs2Ky": "juKJ9pVZ9ujTU5is", "xkaT111V1i9dTDSE": "0WKTpHFeqLs4wtO7", "8v0Y4s1kMC6oAbH8": "1fq1VO4cMhpXOxD9"}}' \
    > test.out 2>&1
eval_tap $? 48 'CreateCurrency' test.out

#- 49 UpdateCurrency
samples/cli/sample-apps Platform updateCurrency \
    --currencyCode '77kBhJn1IL1lMPOG' \
    --namespace $AB_NAMESPACE \
    --body '{"localizationDescriptions": {"9D3w2zbZ3V04sqCn": "v8xe06gWgc6nJe06", "u0HVm23gfEkxvblG": "qYEOwleHxDZmLqHf", "PTXwZUoaOiNwmBQy": "RVlZZiHrEqVsLJwK"}}' \
    > test.out 2>&1
eval_tap $? 49 'UpdateCurrency' test.out

#- 50 DeleteCurrency
samples/cli/sample-apps Platform deleteCurrency \
    --currencyCode 'R9EiayTL0FvTAyBd' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 50 'DeleteCurrency' test.out

#- 51 GetCurrencyConfig
samples/cli/sample-apps Platform getCurrencyConfig \
    --currencyCode 'Rp7m2Xvw1zjW6laD' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 51 'GetCurrencyConfig' test.out

#- 52 GetCurrencySummary
samples/cli/sample-apps Platform getCurrencySummary \
    --currencyCode 'vJl9FOik5uDVFQM3' \
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
    --body '{"data": [{"id": "lzxUwYoFTg1r4U9e", "rewards": [{"currency": {"currencyCode": "oiIkEfzT1gf4XjQ0", "namespace": "k2tpA7lgt0dWSjCd"}, "item": {"itemId": "ZViJ5iwjaGw8nJgY", "itemSku": "WJ8dWuVzu79lXPeU", "itemType": "EcAoySNV9JpbUsud"}, "quantity": 70, "type": "CURRENCY"}, {"currency": {"currencyCode": "xnHJN5VcOmc8y9sJ", "namespace": "RMh87ELkWeyZZyIZ"}, "item": {"itemId": "pLS3arcTLkAaSMLy", "itemSku": "AWSUv6NKNeWvWk2c", "itemType": "onnPqbhHFLgeIPYE"}, "quantity": 37, "type": "CURRENCY"}, {"currency": {"currencyCode": "I9oDv8oIdsD11ouA", "namespace": "XgAKlpF1kMhZc8wa"}, "item": {"itemId": "JAMezrsSq9Lpc7qz", "itemSku": "ody9XF2oiK7qYEKL", "itemType": "CZxfs7bBCPKTKLLO"}, "quantity": 6, "type": "ITEM"}]}, {"id": "vlLc9TCPlCzXjhdD", "rewards": [{"currency": {"currencyCode": "He89b4DuM0a1yk1j", "namespace": "Ljj1MulcsNoyh7Lj"}, "item": {"itemId": "MRztlQPKGpwRUVPw", "itemSku": "plEOnaGddJrM1Hq1", "itemType": "fjM86GkvNPp8Oeye"}, "quantity": 99, "type": "CURRENCY"}, {"currency": {"currencyCode": "0YNt0rIZYPZKGqbO", "namespace": "A9Z8vAbSdU6ysyIe"}, "item": {"itemId": "W1lYbRWQ0VBGjjHn", "itemSku": "xJQIfzR09EjE1lam", "itemType": "DIafH8Wzj6uAFoY4"}, "quantity": 56, "type": "ITEM"}, {"currency": {"currencyCode": "9gbMlB8kHXTKDpbN", "namespace": "hrtrfF69kKXIWXtQ"}, "item": {"itemId": "UDNnCrmWkNIzlRvT", "itemSku": "TbsdqlxZdpeA53mM", "itemType": "0iDKYSvjjYcp7j6i"}, "quantity": 31, "type": "CURRENCY"}]}, {"id": "Vt0YcGUHoc9UAmnq", "rewards": [{"currency": {"currencyCode": "qTBTBuWouE9ts5bp", "namespace": "bc8xoeYchfPnr4Ok"}, "item": {"itemId": "pZEGNS0kJwfxUgaV", "itemSku": "e3qnCqVfPT3lAq3z", "itemType": "s024Hexb7LAuhoKc"}, "quantity": 14, "type": "CURRENCY"}, {"currency": {"currencyCode": "DwSPd5wut3HUZE5D", "namespace": "TVTsVXNGNkoV3UV4"}, "item": {"itemId": "M1hX47kJvHyphtKA", "itemSku": "SaQ9SyGtpQ1CzqbP", "itemType": "TfVmT8zg847iCG5O"}, "quantity": 89, "type": "ITEM"}, {"currency": {"currencyCode": "HvV7UhmofVHWem7w", "namespace": "DEpuqAiSbBKREXeo"}, "item": {"itemId": "fjROepwo33PFNDCe", "itemSku": "n5kSik8W2z2nWkmB", "itemType": "1QQ0rOYPwvkQM4MO"}, "quantity": 71, "type": "ITEM"}]}]}' \
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
    --body '{"data": [{"platform": "EPICGAMES", "platformDlcIdMap": {"Rd46h9IUyBt76XVz": "CWuEUF5LRRjrlqa4", "jhaODlB531aevVbQ": "27ANgWHeKWtjd2T7", "TabSOqgRDmdD7col": "Yj6TT0hIB4BpBQGJ"}}, {"platform": "EPICGAMES", "platformDlcIdMap": {"PAO9kaD31Z9VYwRw": "88ATEsSNzcF7Hb4M", "Vg5AVBCOZTJQChrN": "PFH5EnptF83zlNJf", "KqcCIXMaQSU6eVya": "20hZIU0RyeYSFHWJ"}}, {"platform": "XBOX", "platformDlcIdMap": {"Nx4K0PeBdjoT1x7n": "lU0N4ouSJ8LYVP3r", "AAPO7U3cC01Cq3Pq": "UMwezU28FwoMmW00", "daCkXi38kTsx1FXs": "RyChyO0yLZaB1H2Z"}}]}' \
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
    --activeOnly 'true' \
    --appType 'SOFTWARE' \
    --entitlementClazz 'OPTIONBOX' \
    --entitlementName '2rOVGrkRxjgvyX6i' \
    --itemId '["k5vDn3v2FCTh1AOL", "YXWBUYo1jgOqsJ9H", "MrF36o1LNaEpp8MD"]' \
    --limit '24' \
    --offset '20' \
    --origin 'Oculus' \
    --userId 'Xmpu79DWp7mz2wJe' \
    > test.out 2>&1
eval_tap $? 59 'QueryEntitlements' test.out

#- 60 QueryEntitlements1
samples/cli/sample-apps Platform queryEntitlements1 \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --itemIds '["Eb1sGPhbc8q7uZiL", "rv5gkPiR58bAVtLr", "ii7DLoXqHyplcNCE"]' \
    --limit '46' \
    --offset '69' \
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
    --body '{"entitlementGrantList": [{"collectionId": "kU6TJgzMHnj2IQFM", "endDate": "1980-11-13T00:00:00Z", "grantedCode": "vM231ZetL7LFNBsy", "itemId": "BdavrqTBCPg1Rjv5", "itemNamespace": "zdmqzcUBUnyDmtNF", "language": "xZ_LCga", "origin": "IOS", "quantity": 74, "region": "qX5FuPwd9XsTkCdP", "source": "GIFT", "startDate": "1987-08-19T00:00:00Z", "storeId": "F08Q3cO784OhXKs1"}, {"collectionId": "Y3YE3VaBOQAcv1uU", "endDate": "1995-07-23T00:00:00Z", "grantedCode": "PChCTbfHAn0d5DFO", "itemId": "819eIb2JApN9toII", "itemNamespace": "0DLwJIFNiyF7R0wF", "language": "vb-bjvg", "origin": "Nintendo", "quantity": 70, "region": "SgpvVIzVWOgxxDVS", "source": "OTHER", "startDate": "1998-05-14T00:00:00Z", "storeId": "LV8q5PAB3JsMNFX3"}, {"collectionId": "qAPQWBZAXUenSVmB", "endDate": "1992-02-29T00:00:00Z", "grantedCode": "DxcDt5EhrMHWFOZe", "itemId": "bXPj2tjcR9F6Ol16", "itemNamespace": "JHQCQPWuhr4Woeu1", "language": "XpVX_UECU", "origin": "Nintendo", "quantity": 36, "region": "7zIK4CdgzFzd9yxp", "source": "IAP", "startDate": "1981-03-08T00:00:00Z", "storeId": "O7Olwxi8l9Kt98dG"}], "userIds": ["qVMLjUbZ0AIh8GYe", "6MigaheNLT9rOynq", "kfQfTi5gZ55oXj4L"]}' \
    > test.out 2>&1
eval_tap $? 63 'GrantEntitlements' test.out

#- 64 RevokeEntitlements
samples/cli/sample-apps Platform revokeEntitlements \
    --namespace $AB_NAMESPACE \
    --body '["l1F0NQqCQJvyoEM2", "EJZ5W9YulqKXu1qG", "Etd40P3tS1BPDcHm"]' \
    > test.out 2>&1
eval_tap $? 64 'RevokeEntitlements' test.out

#- 65 GetEntitlement
samples/cli/sample-apps Platform getEntitlement \
    --entitlementId 'jV4CFvju8eUPj39d' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 65 'GetEntitlement' test.out

#- 66 QueryFulfillmentHistories
samples/cli/sample-apps Platform queryFulfillmentHistories \
    --namespace $AB_NAMESPACE \
    --limit '13' \
    --offset '12' \
    --status 'FAIL' \
    --userId 'EVwXi2h5lQovnc3H' \
    > test.out 2>&1
eval_tap $? 66 'QueryFulfillmentHistories' test.out

#- 67 QueryIAPClawbackHistory
samples/cli/sample-apps Platform queryIAPClawbackHistory \
    --namespace $AB_NAMESPACE \
    --endTime 'r2cVM01TgO5tQ5qN' \
    --eventType 'CHARGEBACK' \
    --externalOrderId 'w6dhrPUmIcVTKZMb' \
    --limit '98' \
    --offset '86' \
    --startTime 'cvYXG2UBLDIlw8Q7' \
    --status 'SUCCESS' \
    --userId 'M0ILnhRbii6pnsaT' \
    > test.out 2>&1
eval_tap $? 67 'QueryIAPClawbackHistory' test.out

#- 68 MockPlayStationStreamEvent
samples/cli/sample-apps Platform mockPlayStationStreamEvent \
    --namespace $AB_NAMESPACE \
    --body '{"body": {"account": "es3zvQiDNDVBZdf5", "additionalData": {"entitlement": [{"clientTransaction": [{"amountConsumed": 42, "clientTransactionId": "o276akjywXzyvFqm"}, {"amountConsumed": 56, "clientTransactionId": "xAJ1eGDGAdu9oPlS"}, {"amountConsumed": 9, "clientTransactionId": "CLelYhYyqsNHDjnn"}], "entitlementId": "F53IK9b887dWALOh", "usageCount": 92}, {"clientTransaction": [{"amountConsumed": 53, "clientTransactionId": "frHMBnSgTJgm0lYZ"}, {"amountConsumed": 61, "clientTransactionId": "w8Geqf1AYx52uMcb"}, {"amountConsumed": 32, "clientTransactionId": "O0roGNAOy6hUIrbB"}], "entitlementId": "xrYzAmuEPtkmshBP", "usageCount": 88}, {"clientTransaction": [{"amountConsumed": 10, "clientTransactionId": "Y5HB9kmGKjkZTy7L"}, {"amountConsumed": 43, "clientTransactionId": "9zeosQPso4QvGmp5"}, {"amountConsumed": 9, "clientTransactionId": "5r57g9aZSvjkPI49"}], "entitlementId": "SNIxtVmv2Z8sTBeL", "usageCount": 40}], "purpose": "RAZvkAzsABFKN7A2"}, "originalTitleName": "KjWYtu35W1mZ5WuF", "paymentProductSKU": "HfgRNfJkXddgSM5T", "purchaseDate": "U1SejpIC7po7PgGG", "sourceOrderItemId": "nm9XjFSb2qe6Pt9G", "titleName": "J61is2ZLnioTVdVd"}, "eventDomain": "IyyOPYYs4GMCNgK7", "eventSource": "yBAHt24OWs8z5GNE", "eventType": "y5Kc3fbzfd5uONOX", "eventVersion": 24, "id": "jSjvEqmitBgS6jTc", "timestamp": "7NiHphLCA8pnwp8u"}' \
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
    --body '{"bundleId": "DrryZNWpa0zvxFHO", "password": "N2HmJn6xvS8xKWMy"}' \
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
    --body '{"sandboxId": "Ym5c4wY6ohGHa11I"}' \
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
    --body '{"applicationName": "yefV5BJ9bxbBBAnL", "serviceAccountId": "muUtXfbzKMnVR4pJ"}' \
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
    --body '{"data": [{"itemIdentity": "5KPJLXQxduWMzAr9", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"yjH58sBCg7DeXHXo": "ohI0caJp7n28YXPk", "DjanuSpmJ5hVh3fO": "l4Fls4Vt8irRSZUF", "BTdbxToNZIlAKQJ5": "SrBu1JSFTNdzdr7u"}}, {"itemIdentity": "w1KK2JQKV16h9XCb", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"iFEe62hOdwLuT1i0": "AYFz85tSgbs5GbMT", "1lqyOp8N5FJslaL4": "EyKz4TIi3Ph90Xok", "3OoALwqNls4w3wg6": "nhEsJIe3aDWi8Kxx"}}, {"itemIdentity": "m3oY9bdNYRdvET7L", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"q86z24ybVrSx1OyK": "HbyEoa0oUJd9FSfj", "bTuEJdQSUcYD6IPy": "TDDkijMTTryOYyeA", "QmDBYb1RY1QRclg4": "rt74vCxubJJZDk9t"}}]}' \
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
    --body '{"appId": "RCXMMbnlKS2VpSx9", "appSecret": "wDwaI3zfoFq7u0GF"}' \
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
    --body '{"backOfficeServerClientId": "mshPZ03njFyYTGq9", "backOfficeServerClientSecret": "HFifS8dPysdeS0CD", "enableStreamJob": true, "environment": "bEJRJeTfnBj4e3XM", "streamName": "yYF3h6B05RknKbpX", "streamPartnerName": "gf8ZJmfzSItzFfUA"}' \
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
    --body '{"backOfficeServerClientId": "y7wUdI7Z33eMkHFB", "backOfficeServerClientSecret": "nj4o9VEoYTvzdjYk", "enableStreamJob": true, "environment": "DL3qUpwIzk1BSjx5", "streamName": "OdBcNgo41otHKApD", "streamPartnerName": "J5xN343C1x1VApiY"}' \
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
    --body '{"appId": "4hKR4uuPwKdpjgMH", "publisherAuthenticationKey": "i21XwSusAqWb4ODj"}' \
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
    --body '{"clientId": "WknmX0yjifbcEziH", "clientSecret": "8MerD30FPPagEWjB", "organizationId": "JJguVdgXDXwO1QBb"}' \
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
    --body '{"relyingPartyCert": "27yxpegLkFUyXsUc"}' \
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
    --password 'r8fSCXIPmCvJbmDV' \
    > test.out 2>&1
eval_tap $? 99 'UpdateXblBPCertFile' test.out

#- 100 DownloadInvoiceDetails
samples/cli/sample-apps Platform downloadInvoiceDetails \
    --namespace $AB_NAMESPACE \
    --feature 'xiycZAL2DDnsrsj5' \
    --itemId 'tWp9UDCLm1TrPwd7' \
    --itemType 'APP' \
    --endTime 'UfREVpInAa1wggO0' \
    --startTime 'QZn5S2i3VXDfV3GV' \
    > test.out 2>&1
eval_tap $? 100 'DownloadInvoiceDetails' test.out

#- 101 GenerateInvoiceSummary
samples/cli/sample-apps Platform generateInvoiceSummary \
    --namespace $AB_NAMESPACE \
    --feature '20Kv89vwdDjODBBb' \
    --itemId 'qw0AuaWEaBUqGWiQ' \
    --itemType 'SEASON' \
    --endTime 'QL7he850qD7XZ9t0' \
    --startTime 'LWW23LkMlFADGX40' \
    > test.out 2>&1
eval_tap $? 101 'GenerateInvoiceSummary' test.out

#- 102 SyncInGameItem
samples/cli/sample-apps Platform syncInGameItem \
    --namespace $AB_NAMESPACE \
    --storeId 'PJ4hZqgEhVGkYG0Y' \
    --body '{"categoryPath": "R9JEYVtdHVjKZhJH", "targetItemId": "jGXk563j8EUk4Ops", "targetNamespace": "FRyyQNwailNToQCk"}' \
    > test.out 2>&1
eval_tap $? 102 'SyncInGameItem' test.out

#- 103 CreateItem
samples/cli/sample-apps Platform createItem \
    --namespace $AB_NAMESPACE \
    --storeId 'sIKAMCHAmJvbL1ZH' \
    --body '{"appId": "HrmRBhFeQ9xzOGJV", "appType": "GAME", "baseAppId": "eSLf2h07rf1k1WQe", "boothName": "DnX1PWwNvFUFwgLJ", "categoryPath": "jqe6IWMKVbSyGvyi", "clazz": "KQN7GJCL4Xx1lieq", "displayOrder": 42, "entitlementType": "CONSUMABLE", "ext": {"IUMzhtoWsU2WXOyU": {}, "Xq2r3ULabgF4kw0l": {}, "guu7EcXdPbNBbzrl": {}}, "features": ["tzMix1ohWizdCqtT", "WwYlmjvkOvQxrhie", "a4EiJSj37QrziAEU"], "flexible": false, "images": [{"as": "p4Gzorq705A8Tgzs", "caption": "bdIt1AZuehxbGdJC", "height": 33, "imageUrl": "BbYPWBqaukIzXAHO", "smallImageUrl": "ClFM6hVBloKVaiT7", "width": 12}, {"as": "KOx0WZ82Kqefa17b", "caption": "7VNj2mVFfNXT5TeW", "height": 62, "imageUrl": "9gqGMvImPUVtscmm", "smallImageUrl": "8t4kHnbl7yckjBKj", "width": 11}, {"as": "nQ8oUuIb9Gp52Hjj", "caption": "tix8cHgdSXWa5Ecd", "height": 49, "imageUrl": "bkbIgiMDtUYvgc3m", "smallImageUrl": "TSTlcRlJAMcfgu1R", "width": 14}], "inventoryConfig": {"customAttributes": {"evhP4QbtVimClAgd": {}, "BzNtcFg3jgqYxUOY": {}, "5EbFHjZuwuiuWZhv": {}}, "serverCustomAttributes": {"9k1eiETJW0ecXTKm": {}, "ithxWJFUXCIgLNIt": {}, "U7uXKK8UkGw8qvry": {}}, "slotUsed": 57}, "itemIds": ["0mZayRGMUX1Tehn5", "50YtgFcJlAiRy9Vb", "HtA9bu7egEq4zIK6"], "itemQty": {"wDAyRXcT8WO9M6Z4": 43, "M9bAneMiNeIJXJmT": 31, "snseqr1bDARiuaYB": 57}, "itemType": "INGAMEITEM", "listable": true, "localizations": {"ZBk4Rl7C3z08GkVT": {"description": "ppJbHl1N01brrGwE", "localExt": {"QmSo37FDP9gCBMjW": {}, "PKuTv2NU3oPPdplu": {}, "jNCGoxOXUszAW3YJ": {}}, "longDescription": "mc9biCIFDzokcmgz", "title": "n9BkUxbixwMsyoca"}, "nXiGY7seLlN8zOq4": {"description": "tjxy82Vr62heyCz9", "localExt": {"pcdoJngmbmMnSCEJ": {}, "7F9f02yAlumHqKsM": {}, "SMMCMgWOUvLFdwPx": {}}, "longDescription": "R63f4cwaxdgw7brm", "title": "3t1kydZjd59wuPpn"}, "BJqhy3ab3efRqL8X": {"description": "bossPsm5BkdUvnmU", "localExt": {"VmP7X3OnT04G3MYS": {}, "DO54uWWSQGUSPLnY": {}, "KIBhw8YSazNCX2nr": {}}, "longDescription": "SwAqSiwjQpRDF9CQ", "title": "n13xLk3I3kYgQGDS"}}, "lootBoxConfig": {"rewardCount": 90, "rewards": [{"lootBoxItems": [{"count": 63, "duration": 31, "endDate": "1993-07-01T00:00:00Z", "itemId": "e9JtMxrf8ctFfwKl", "itemSku": "aOTOEjIszGLkTs9r", "itemType": "xZz5hQ1GdcmjKKhW"}, {"count": 86, "duration": 95, "endDate": "1973-01-18T00:00:00Z", "itemId": "YOnin9AaaOZFdZzc", "itemSku": "OypJaGK4CWh5RO9r", "itemType": "2XSoZGzCQFX3T8PH"}, {"count": 67, "duration": 19, "endDate": "1992-03-13T00:00:00Z", "itemId": "KNfO2XcMfLi11iyO", "itemSku": "n7I67ANuSt6IQd93", "itemType": "4355aV9Hg0J7gS0E"}], "name": "E08ifSTh3kz2nMZq", "odds": 0.14217588213529964, "type": "REWARD", "weight": 89}, {"lootBoxItems": [{"count": 46, "duration": 0, "endDate": "1979-04-06T00:00:00Z", "itemId": "LfUEIk06XUVkxzry", "itemSku": "QTtun5ZqCjE9u5AB", "itemType": "fINuWDedSBMB5cGO"}, {"count": 73, "duration": 91, "endDate": "1983-05-11T00:00:00Z", "itemId": "Yr5wBmpjxwZIUzeu", "itemSku": "E1VkbXwmWB8xA3KM", "itemType": "RYbEtm7fQTDCUcDS"}, {"count": 74, "duration": 2, "endDate": "1992-03-04T00:00:00Z", "itemId": "ejpCcUCE78zrTZKO", "itemSku": "Pd4LyvMxGZWk4l4f", "itemType": "AZqQIQTRaDqzQdwg"}], "name": "2RKpyimB5SIZAuBK", "odds": 0.5398996011250022, "type": "REWARD_GROUP", "weight": 66}, {"lootBoxItems": [{"count": 46, "duration": 13, "endDate": "1999-07-28T00:00:00Z", "itemId": "B8WdqXOEAsy4cwXg", "itemSku": "LEBOVQZm28PaZeht", "itemType": "ANyY1vvvFB8inc3W"}, {"count": 37, "duration": 26, "endDate": "1975-11-22T00:00:00Z", "itemId": "gFKjl4KqK3ypr9PN", "itemSku": "uhtE48pgXw3dtxal", "itemType": "qzbcgkTjZHPatdwG"}, {"count": 29, "duration": 25, "endDate": "1974-01-18T00:00:00Z", "itemId": "mkAdD4pu4uMozbFS", "itemSku": "Fm2dQq8STrdEh0yq", "itemType": "qrTwRcmRLgW72B1A"}], "name": "b6mQ39Kun7sn5uv4", "odds": 0.1469849293510045, "type": "REWARD_GROUP", "weight": 100}], "rollFunction": "DEFAULT"}, "maxCount": 80, "maxCountPerUser": 87, "name": "iF3Geqb1Zvk8vjPg", "optionBoxConfig": {"boxItems": [{"count": 79, "duration": 25, "endDate": "1974-09-29T00:00:00Z", "itemId": "Y6ARfduqi8ZyK8Qu", "itemSku": "ka4nX7ZaLxGmGCRA", "itemType": "ruoZTuujC04jNcmK"}, {"count": 39, "duration": 37, "endDate": "1979-03-22T00:00:00Z", "itemId": "OCjvWuqnjlFXy2Hv", "itemSku": "HToKME0RZ2vUSteN", "itemType": "qX9ymHf6KVuRttvk"}, {"count": 73, "duration": 8, "endDate": "1975-07-31T00:00:00Z", "itemId": "9ngiuvTbcqvtoefF", "itemSku": "esxQ8smNvjaYVxA5", "itemType": "cyWglbBXgTiGTmMQ"}]}, "purchasable": true, "recurring": {"cycle": "MONTHLY", "fixedFreeDays": 65, "fixedTrialCycles": 47, "graceDays": 39}, "regionData": {"MCd9Dhzbqc61mONd": [{"currencyCode": "znqfKxHhmwMsHeiw", "currencyNamespace": "l1O9s8p7F5KSRsGF", "currencyType": "REAL", "discountAmount": 81, "discountExpireAt": "1990-08-02T00:00:00Z", "discountPercentage": 55, "discountPurchaseAt": "1985-07-09T00:00:00Z", "expireAt": "1972-03-03T00:00:00Z", "price": 88, "purchaseAt": "1996-09-03T00:00:00Z", "trialPrice": 53}, {"currencyCode": "fiVcMbtYYIyuWEfD", "currencyNamespace": "Y00rECi3W8XXRhJE", "currencyType": "REAL", "discountAmount": 86, "discountExpireAt": "1997-06-09T00:00:00Z", "discountPercentage": 9, "discountPurchaseAt": "1998-12-02T00:00:00Z", "expireAt": "1991-08-25T00:00:00Z", "price": 88, "purchaseAt": "1972-06-21T00:00:00Z", "trialPrice": 3}, {"currencyCode": "ZpncZpndf4ij5jWb", "currencyNamespace": "4PJQbbvygRHrvMIA", "currencyType": "VIRTUAL", "discountAmount": 65, "discountExpireAt": "1985-11-03T00:00:00Z", "discountPercentage": 46, "discountPurchaseAt": "1998-09-06T00:00:00Z", "expireAt": "1974-01-18T00:00:00Z", "price": 83, "purchaseAt": "1988-04-20T00:00:00Z", "trialPrice": 11}], "eUU6s50QbmuhNVYa": [{"currencyCode": "xfE9JBqCYSkqgt8e", "currencyNamespace": "xUi8cnonjTVwgSTx", "currencyType": "REAL", "discountAmount": 94, "discountExpireAt": "1997-06-21T00:00:00Z", "discountPercentage": 49, "discountPurchaseAt": "1986-04-11T00:00:00Z", "expireAt": "1971-08-15T00:00:00Z", "price": 85, "purchaseAt": "1996-01-18T00:00:00Z", "trialPrice": 57}, {"currencyCode": "nZtS8jnTIFSBdyBE", "currencyNamespace": "dnFjKcINn5xswsPC", "currencyType": "REAL", "discountAmount": 33, "discountExpireAt": "1977-10-29T00:00:00Z", "discountPercentage": 29, "discountPurchaseAt": "1978-07-29T00:00:00Z", "expireAt": "1983-06-11T00:00:00Z", "price": 95, "purchaseAt": "1994-12-27T00:00:00Z", "trialPrice": 65}, {"currencyCode": "zmb5d2i8lZkrrJ8k", "currencyNamespace": "qWDOJNs8KtNgCb2c", "currencyType": "VIRTUAL", "discountAmount": 90, "discountExpireAt": "1990-12-03T00:00:00Z", "discountPercentage": 4, "discountPurchaseAt": "1995-04-22T00:00:00Z", "expireAt": "1990-10-26T00:00:00Z", "price": 60, "purchaseAt": "1982-11-27T00:00:00Z", "trialPrice": 59}], "hySIk7TZOzSDzms4": [{"currencyCode": "VkNrp5hTpMZCmhVH", "currencyNamespace": "p5GupY7fOYhnuuM1", "currencyType": "REAL", "discountAmount": 47, "discountExpireAt": "1971-09-14T00:00:00Z", "discountPercentage": 12, "discountPurchaseAt": "1995-03-05T00:00:00Z", "expireAt": "1998-09-06T00:00:00Z", "price": 70, "purchaseAt": "1976-08-07T00:00:00Z", "trialPrice": 11}, {"currencyCode": "Puy3AZSoTjbach4j", "currencyNamespace": "lwBy22RjbmUhSiCJ", "currencyType": "VIRTUAL", "discountAmount": 90, "discountExpireAt": "1983-10-27T00:00:00Z", "discountPercentage": 53, "discountPurchaseAt": "1996-10-03T00:00:00Z", "expireAt": "1976-02-07T00:00:00Z", "price": 64, "purchaseAt": "1979-10-07T00:00:00Z", "trialPrice": 98}, {"currencyCode": "Mh4plrgRAxl4nfOx", "currencyNamespace": "8dShcMUKb2eKLkwf", "currencyType": "REAL", "discountAmount": 95, "discountExpireAt": "1977-12-19T00:00:00Z", "discountPercentage": 34, "discountPurchaseAt": "1993-10-11T00:00:00Z", "expireAt": "1973-07-24T00:00:00Z", "price": 71, "purchaseAt": "1985-10-04T00:00:00Z", "trialPrice": 30}]}, "saleConfig": {"currencyCode": "oTASG9VWPPMhZTmW", "price": 56}, "seasonType": "PASS", "sectionExclusive": false, "sellable": false, "sku": "rdDwYw64s9umHY9m", "stackable": false, "status": "INACTIVE", "tags": ["SCW5XvNYcvYWkDrX", "h2hRo0lnn3Hg7Xaw", "Z3m0m1KTM2ir2x2F"], "targetCurrencyCode": "vSMSGJeDbXJF0NMM", "targetNamespace": "Djyd5JgsbGNmBYE8", "thumbnailUrl": "mFV4KCDf0Ywu8L9Z", "useCount": 71}' \
    > test.out 2>&1
eval_tap $? 103 'CreateItem' test.out

#- 104 GetItemByAppId
samples/cli/sample-apps Platform getItemByAppId \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId '4C8DH1RsDj0q5Zp7' \
    --appId 'QTBOEhdJK0c7cdya' \
    > test.out 2>&1
eval_tap $? 104 'GetItemByAppId' test.out

#- 105 QueryItems
samples/cli/sample-apps Platform queryItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --appType 'GAME' \
    --availableDate 'lZNcviiP9gu7aiHx' \
    --baseAppId 'A23ly6Cwlul8SRJX' \
    --categoryPath '1tov4RdVMUDauw0D' \
    --features 'TBzt05vBc09i5GIh' \
    --includeSubCategoryItem 'true' \
    --itemType 'COINS' \
    --limit '67' \
    --offset '69' \
    --region 'DbgbGHnoL7fdHqGZ' \
    --sortBy '["name", "name:desc", "updatedAt:asc"]' \
    --storeId 'ED4kJ7DZLx8YjogC' \
    --tags 'JI3GQruVcgVTquMA' \
    --targetNamespace 'h9l3tqetDyQrPawv' \
    > test.out 2>&1
eval_tap $? 105 'QueryItems' test.out

#- 106 ListBasicItemsByFeatures
samples/cli/sample-apps Platform listBasicItemsByFeatures \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --features '["OhX5vJLmixFlFEpr", "sh1UP3p3zD0ocz55", "0yW6rNlLIQ9gIdOs"]' \
    > test.out 2>&1
eval_tap $? 106 'ListBasicItemsByFeatures' test.out

#- 107 GetItems
samples/cli/sample-apps Platform getItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'QRhdWfbQouWYza9E' \
    --itemIds '7wApyu9jF0AE4eXu' \
    > test.out 2>&1
eval_tap $? 107 'GetItems' test.out

#- 108 GetItemBySku
samples/cli/sample-apps Platform getItemBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --storeId '2pKSDCBlvxh6s9IU' \
    --sku 'WbZkap1X0e0HLGww' \
    > test.out 2>&1
eval_tap $? 108 'GetItemBySku' test.out

#- 109 GetLocaleItemBySku
samples/cli/sample-apps Platform getLocaleItemBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --language 'PKly0M92YU6IAAcu' \
    --populateBundle 'true' \
    --region 'LHIDHyaDQMVCj34x' \
    --storeId 'G6rObsSbQKjV4WYV' \
    --sku 'hGOBWmmbuY5HNqDh' \
    > test.out 2>&1
eval_tap $? 109 'GetLocaleItemBySku' test.out

#- 110 GetEstimatedPrice
samples/cli/sample-apps Platform getEstimatedPrice \
    --namespace $AB_NAMESPACE \
    --platform 'ZuFl2qn5AMdMQ06B' \
    --region '2DrcfLyjCwHLNZtL' \
    --storeId 'uZsl11PR2d7Bq6yO' \
    --itemIds 'dOiJOpskoCLrqWeE' \
    --userId 'HcPACC9oPTt1inMi' \
    > test.out 2>&1
eval_tap $? 110 'GetEstimatedPrice' test.out

#- 111 GetItemIdBySku
samples/cli/sample-apps Platform getItemIdBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --storeId 'Ck6m4cf0uvJgBHPF' \
    --sku 'kot7HZk83PsO0sjj' \
    > test.out 2>&1
eval_tap $? 111 'GetItemIdBySku' test.out

#- 112 GetBulkItemIdBySkus
samples/cli/sample-apps Platform getBulkItemIdBySkus \
    --namespace $AB_NAMESPACE \
    --sku '["n6mtxJvSVog4LJuh", "pasHUg4Sk55l6XNu", "JwtHmbVbZidpeSVB"]' \
    --storeId 'PAKnZLA6Nvuw2B1b' \
    > test.out 2>&1
eval_tap $? 112 'GetBulkItemIdBySkus' test.out

#- 113 BulkGetLocaleItems
samples/cli/sample-apps Platform bulkGetLocaleItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --language 'MfWzj4WZWWCMFjod' \
    --region 'd1tcngOkQYPR1pdo' \
    --storeId 'MKkREHIZsx5mC4Ps' \
    --itemIds 'O8saAOzIcjMYcnl9' \
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
    --platform '6Z3mphIaJ9RdWq3b' \
    --userId '5i8I7lQDHgZgipXx' \
    --body '{"itemIds": ["Bf6LhttZ7hREGQxN", "XzsT6jRkvU3c7zDN", "OAYXo78W8aqR2KAa"]}' \
    > test.out 2>&1
eval_tap $? 115 'ValidateItemPurchaseCondition' test.out

#- 116 BulkUpdateRegionData
samples/cli/sample-apps Platform bulkUpdateRegionData \
    --namespace $AB_NAMESPACE \
    --storeId 'VX7wPqsBVUGNu9vw' \
    --body '{"changes": [{"itemIdentities": ["8k3yY2miirvd9u6f", "sFAJ0DcWL4RMfFAs", "wC14zdhZk6E1zJ10"], "itemIdentityType": "ITEM_SKU", "regionData": {"qKL699QbmxXNGwSV": [{"currencyCode": "LsTufTURbDgunM8I", "currencyNamespace": "O4YM1LJOev4lrue1", "currencyType": "REAL", "discountAmount": 71, "discountExpireAt": "1979-12-18T00:00:00Z", "discountPercentage": 83, "discountPurchaseAt": "1986-09-11T00:00:00Z", "discountedPrice": 80, "expireAt": "1978-02-26T00:00:00Z", "price": 13, "purchaseAt": "1986-05-13T00:00:00Z", "trialPrice": 82}, {"currencyCode": "wM91M5Ah7rekSRbZ", "currencyNamespace": "IaBZrPlbKftfg1qj", "currencyType": "REAL", "discountAmount": 87, "discountExpireAt": "1984-06-13T00:00:00Z", "discountPercentage": 16, "discountPurchaseAt": "1984-07-15T00:00:00Z", "discountedPrice": 8, "expireAt": "1991-04-07T00:00:00Z", "price": 77, "purchaseAt": "1988-10-08T00:00:00Z", "trialPrice": 20}, {"currencyCode": "1mwDqaJOsLghkeOH", "currencyNamespace": "oBhl0YG4TKN6Hu7A", "currencyType": "VIRTUAL", "discountAmount": 73, "discountExpireAt": "1987-04-20T00:00:00Z", "discountPercentage": 83, "discountPurchaseAt": "1973-07-13T00:00:00Z", "discountedPrice": 73, "expireAt": "1991-05-25T00:00:00Z", "price": 18, "purchaseAt": "1976-05-09T00:00:00Z", "trialPrice": 83}], "fpFun0jEbkOXftcp": [{"currencyCode": "v6Ur8OaVCDFpPyjp", "currencyNamespace": "aeSZrQakPW0xkTCO", "currencyType": "REAL", "discountAmount": 81, "discountExpireAt": "1991-04-08T00:00:00Z", "discountPercentage": 85, "discountPurchaseAt": "1977-05-06T00:00:00Z", "discountedPrice": 13, "expireAt": "1972-02-08T00:00:00Z", "price": 24, "purchaseAt": "1989-03-14T00:00:00Z", "trialPrice": 72}, {"currencyCode": "SiWidzRRNybMPUUl", "currencyNamespace": "nv6nlh9nYhC5zIML", "currencyType": "VIRTUAL", "discountAmount": 96, "discountExpireAt": "1999-04-08T00:00:00Z", "discountPercentage": 39, "discountPurchaseAt": "1972-07-01T00:00:00Z", "discountedPrice": 13, "expireAt": "1988-04-16T00:00:00Z", "price": 51, "purchaseAt": "1980-12-04T00:00:00Z", "trialPrice": 95}, {"currencyCode": "LKxqDReMZn99A6Vu", "currencyNamespace": "uKSUFmQfRRFSNY71", "currencyType": "REAL", "discountAmount": 73, "discountExpireAt": "1987-06-01T00:00:00Z", "discountPercentage": 13, "discountPurchaseAt": "1980-09-16T00:00:00Z", "discountedPrice": 22, "expireAt": "1978-11-04T00:00:00Z", "price": 41, "purchaseAt": "1991-06-05T00:00:00Z", "trialPrice": 17}], "yQVRMwBuOsRn46zw": [{"currencyCode": "1hvEDs0H21WwoNsZ", "currencyNamespace": "wJM0nMA3shh2i6J8", "currencyType": "REAL", "discountAmount": 31, "discountExpireAt": "1984-02-10T00:00:00Z", "discountPercentage": 44, "discountPurchaseAt": "1997-04-30T00:00:00Z", "discountedPrice": 84, "expireAt": "1988-05-08T00:00:00Z", "price": 14, "purchaseAt": "1986-06-11T00:00:00Z", "trialPrice": 33}, {"currencyCode": "Au0biFWRO3AXcdLq", "currencyNamespace": "yrfkB1qi1s5h5dyP", "currencyType": "REAL", "discountAmount": 28, "discountExpireAt": "1981-06-20T00:00:00Z", "discountPercentage": 95, "discountPurchaseAt": "1987-11-04T00:00:00Z", "discountedPrice": 27, "expireAt": "1997-01-14T00:00:00Z", "price": 85, "purchaseAt": "1973-08-01T00:00:00Z", "trialPrice": 2}, {"currencyCode": "ccn1YaStpi5TkcpO", "currencyNamespace": "fKb4uXABxDmfZInM", "currencyType": "VIRTUAL", "discountAmount": 38, "discountExpireAt": "1997-12-26T00:00:00Z", "discountPercentage": 3, "discountPurchaseAt": "1983-12-03T00:00:00Z", "discountedPrice": 14, "expireAt": "1975-04-26T00:00:00Z", "price": 17, "purchaseAt": "1974-01-02T00:00:00Z", "trialPrice": 29}]}}, {"itemIdentities": ["e4iqwYFsseljoUaG", "jbDdNiTHH8aAXUD1", "bFzFMm2JXvDHi1Tw"], "itemIdentityType": "ITEM_SKU", "regionData": {"ezn7NcjZ8EHcVl6c": [{"currencyCode": "MZGFsVnAE8xqH6if", "currencyNamespace": "0VgNCwCp2aRNAGoK", "currencyType": "REAL", "discountAmount": 5, "discountExpireAt": "1971-11-11T00:00:00Z", "discountPercentage": 46, "discountPurchaseAt": "1996-08-03T00:00:00Z", "discountedPrice": 53, "expireAt": "1996-12-23T00:00:00Z", "price": 81, "purchaseAt": "1992-11-14T00:00:00Z", "trialPrice": 78}, {"currencyCode": "fX1KdUEaEuo2cEyz", "currencyNamespace": "75aohf17tKqjjwQZ", "currencyType": "VIRTUAL", "discountAmount": 75, "discountExpireAt": "1979-07-25T00:00:00Z", "discountPercentage": 24, "discountPurchaseAt": "1997-08-14T00:00:00Z", "discountedPrice": 13, "expireAt": "1987-01-10T00:00:00Z", "price": 34, "purchaseAt": "1973-10-04T00:00:00Z", "trialPrice": 63}, {"currencyCode": "X8nDXdccMRY6y6ub", "currencyNamespace": "Q8KzZpmzJAIq6zfk", "currencyType": "REAL", "discountAmount": 7, "discountExpireAt": "1971-06-11T00:00:00Z", "discountPercentage": 69, "discountPurchaseAt": "1979-04-28T00:00:00Z", "discountedPrice": 49, "expireAt": "1980-07-03T00:00:00Z", "price": 91, "purchaseAt": "1973-06-14T00:00:00Z", "trialPrice": 79}], "BDs1QcAS571bAIig": [{"currencyCode": "NapjOAtdzgWhZ5AH", "currencyNamespace": "peVssiK31yBLUS4r", "currencyType": "REAL", "discountAmount": 90, "discountExpireAt": "1992-05-25T00:00:00Z", "discountPercentage": 7, "discountPurchaseAt": "1998-06-18T00:00:00Z", "discountedPrice": 48, "expireAt": "1976-10-25T00:00:00Z", "price": 7, "purchaseAt": "1985-04-23T00:00:00Z", "trialPrice": 52}, {"currencyCode": "ni2D2170FAPqvIpg", "currencyNamespace": "v6cwdL8jWxCLukQr", "currencyType": "REAL", "discountAmount": 60, "discountExpireAt": "1974-05-04T00:00:00Z", "discountPercentage": 28, "discountPurchaseAt": "1996-03-16T00:00:00Z", "discountedPrice": 28, "expireAt": "1992-06-29T00:00:00Z", "price": 82, "purchaseAt": "1991-07-04T00:00:00Z", "trialPrice": 92}, {"currencyCode": "WtJ7ijaksrZ7g7IH", "currencyNamespace": "bKXE3E4G0dZiGCnl", "currencyType": "REAL", "discountAmount": 17, "discountExpireAt": "1995-06-07T00:00:00Z", "discountPercentage": 46, "discountPurchaseAt": "1974-07-21T00:00:00Z", "discountedPrice": 92, "expireAt": "1979-12-07T00:00:00Z", "price": 25, "purchaseAt": "1978-09-11T00:00:00Z", "trialPrice": 40}], "bZSywpZLQDcbqsDB": [{"currencyCode": "mbHhloELZVDm4p9b", "currencyNamespace": "VClnxcL63jvviK7D", "currencyType": "REAL", "discountAmount": 56, "discountExpireAt": "1990-01-06T00:00:00Z", "discountPercentage": 66, "discountPurchaseAt": "1980-06-15T00:00:00Z", "discountedPrice": 64, "expireAt": "1971-05-10T00:00:00Z", "price": 63, "purchaseAt": "1979-06-17T00:00:00Z", "trialPrice": 65}, {"currencyCode": "9foNjFIBIkKJeesi", "currencyNamespace": "3GJmwQrS13lEwmBm", "currencyType": "VIRTUAL", "discountAmount": 12, "discountExpireAt": "1999-04-12T00:00:00Z", "discountPercentage": 99, "discountPurchaseAt": "1997-01-06T00:00:00Z", "discountedPrice": 44, "expireAt": "1996-02-10T00:00:00Z", "price": 55, "purchaseAt": "1975-01-21T00:00:00Z", "trialPrice": 81}, {"currencyCode": "mWhCH4Pf2ql6nW06", "currencyNamespace": "96Z79jMJLxoxed1E", "currencyType": "REAL", "discountAmount": 78, "discountExpireAt": "1986-11-07T00:00:00Z", "discountPercentage": 1, "discountPurchaseAt": "1992-08-27T00:00:00Z", "discountedPrice": 26, "expireAt": "1983-11-13T00:00:00Z", "price": 18, "purchaseAt": "1971-06-12T00:00:00Z", "trialPrice": 46}]}}, {"itemIdentities": ["UOhcn0YIXC88irXh", "kksCxT1xO2kK4Vwm", "aB0EHkBiOYDQQIVa"], "itemIdentityType": "ITEM_SKU", "regionData": {"KXjQFfF499KEOmup": [{"currencyCode": "nSX1wefyNe57ZO25", "currencyNamespace": "LcvFGS8YZEH76PIF", "currencyType": "REAL", "discountAmount": 48, "discountExpireAt": "1994-01-27T00:00:00Z", "discountPercentage": 27, "discountPurchaseAt": "1975-07-02T00:00:00Z", "discountedPrice": 11, "expireAt": "1979-07-04T00:00:00Z", "price": 49, "purchaseAt": "1992-06-12T00:00:00Z", "trialPrice": 46}, {"currencyCode": "ZVpxIRZgpD79RrEi", "currencyNamespace": "dCZNlXVDk4yewLYD", "currencyType": "VIRTUAL", "discountAmount": 66, "discountExpireAt": "1997-09-20T00:00:00Z", "discountPercentage": 49, "discountPurchaseAt": "1974-09-06T00:00:00Z", "discountedPrice": 76, "expireAt": "1974-07-19T00:00:00Z", "price": 53, "purchaseAt": "1999-07-11T00:00:00Z", "trialPrice": 28}, {"currencyCode": "4k22kkAyIokgB8zD", "currencyNamespace": "hns9hLyCUemngzek", "currencyType": "REAL", "discountAmount": 26, "discountExpireAt": "1972-10-02T00:00:00Z", "discountPercentage": 62, "discountPurchaseAt": "1977-12-12T00:00:00Z", "discountedPrice": 30, "expireAt": "1975-06-26T00:00:00Z", "price": 83, "purchaseAt": "1999-04-12T00:00:00Z", "trialPrice": 66}], "kKsyASgz0wQgE3SY": [{"currencyCode": "brAuCNMMy7T4uwks", "currencyNamespace": "7TsUlvizgkwT0yfY", "currencyType": "REAL", "discountAmount": 84, "discountExpireAt": "1982-05-09T00:00:00Z", "discountPercentage": 69, "discountPurchaseAt": "1974-05-30T00:00:00Z", "discountedPrice": 56, "expireAt": "1985-06-11T00:00:00Z", "price": 9, "purchaseAt": "1973-01-17T00:00:00Z", "trialPrice": 12}, {"currencyCode": "Ax65CVLkySyvvrE8", "currencyNamespace": "a97QlM61BWJbcYyA", "currencyType": "REAL", "discountAmount": 27, "discountExpireAt": "1974-09-27T00:00:00Z", "discountPercentage": 42, "discountPurchaseAt": "1974-12-20T00:00:00Z", "discountedPrice": 23, "expireAt": "1979-11-19T00:00:00Z", "price": 71, "purchaseAt": "1982-11-08T00:00:00Z", "trialPrice": 16}, {"currencyCode": "fWKHbWDbLxG5E5FA", "currencyNamespace": "gHcF5b04m591bNqU", "currencyType": "REAL", "discountAmount": 67, "discountExpireAt": "1990-01-18T00:00:00Z", "discountPercentage": 91, "discountPurchaseAt": "1995-08-25T00:00:00Z", "discountedPrice": 72, "expireAt": "1982-07-11T00:00:00Z", "price": 92, "purchaseAt": "1988-07-30T00:00:00Z", "trialPrice": 50}], "FWyEQSyq8sVHqW9E": [{"currencyCode": "N2ehp5ZLg3Q2kZT1", "currencyNamespace": "khuJXk0GWjLTPbRn", "currencyType": "REAL", "discountAmount": 85, "discountExpireAt": "1975-04-11T00:00:00Z", "discountPercentage": 34, "discountPurchaseAt": "1975-04-29T00:00:00Z", "discountedPrice": 6, "expireAt": "1977-11-18T00:00:00Z", "price": 11, "purchaseAt": "1992-09-14T00:00:00Z", "trialPrice": 95}, {"currencyCode": "xeuo8IYaBOkRJZqb", "currencyNamespace": "viGUAApjtnMKT9IZ", "currencyType": "VIRTUAL", "discountAmount": 59, "discountExpireAt": "1979-07-30T00:00:00Z", "discountPercentage": 21, "discountPurchaseAt": "1981-07-29T00:00:00Z", "discountedPrice": 34, "expireAt": "1994-09-03T00:00:00Z", "price": 13, "purchaseAt": "1979-05-29T00:00:00Z", "trialPrice": 12}, {"currencyCode": "oYhHggRaM9arn9u9", "currencyNamespace": "DkJm97GwcHOMyi8C", "currencyType": "REAL", "discountAmount": 67, "discountExpireAt": "1984-09-03T00:00:00Z", "discountPercentage": 12, "discountPurchaseAt": "1991-02-05T00:00:00Z", "discountedPrice": 27, "expireAt": "1996-09-12T00:00:00Z", "price": 59, "purchaseAt": "1974-03-09T00:00:00Z", "trialPrice": 63}]}}]}' \
    > test.out 2>&1
eval_tap $? 116 'BulkUpdateRegionData' test.out

#- 117 SearchItems
samples/cli/sample-apps Platform searchItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --itemType 'SUBSCRIPTION' \
    --limit '46' \
    --offset '61' \
    --sortBy '0buPJLAku8wRl1wy' \
    --storeId 'tdrakAFpezsDP0Cq' \
    --keyword 'Ajgr9GWRFTs5bLYd' \
    --language 'j2dHwB5e89pqPB0Z' \
    > test.out 2>&1
eval_tap $? 117 'SearchItems' test.out

#- 118 QueryUncategorizedItems
samples/cli/sample-apps Platform queryUncategorizedItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --limit '94' \
    --offset '92' \
    --sortBy '["createdAt:desc", "name:desc", "displayOrder:desc"]' \
    --storeId 'epdBvrDhgy9PwJ7v' \
    > test.out 2>&1
eval_tap $? 118 'QueryUncategorizedItems' test.out

#- 119 GetItem
samples/cli/sample-apps Platform getItem \
    --itemId '9Uq5X5PKgOChIgww' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'IN3LZtAVjYSRHdsE' \
    > test.out 2>&1
eval_tap $? 119 'GetItem' test.out

#- 120 UpdateItem
samples/cli/sample-apps Platform updateItem \
    --itemId '4TXYRpjoyjGQB1JH' \
    --namespace $AB_NAMESPACE \
    --storeId 'd5PeIzCQC7TO2Xjp' \
    --body '{"appId": "uHhIrKmyu6oZsobs", "appType": "DEMO", "baseAppId": "6pd53D9FaSoJVUN4", "boothName": "34wbmdRRQvbnKrsJ", "categoryPath": "qPUJl7fAYCDkEE7O", "clazz": "TXxZ04sdcioqMRwi", "displayOrder": 16, "entitlementType": "CONSUMABLE", "ext": {"ryD0Cc8p0hmVZ2s6": {}, "YUjjoMXE9ZUe3C54": {}, "nB5tvLXs38WRKNi9": {}}, "features": ["jMtJnKSOnsHMaZ9f", "StKAQ14SRMD8xhfr", "ZEBPHiRDIcbZuQhS"], "flexible": true, "images": [{"as": "5DPtrpGCIAA9EEGk", "caption": "epq6HaVlrztTBPdj", "height": 3, "imageUrl": "q83I67W0fpL8D7MH", "smallImageUrl": "rO0Mw2GgxhBt3xM1", "width": 6}, {"as": "LvQgq1BlHHq2vE3Q", "caption": "BqlnIKzSBSyi2ErK", "height": 82, "imageUrl": "wUt7GkVJOQRJAB2R", "smallImageUrl": "VfHrx2IM0SG0XgTV", "width": 89}, {"as": "AOxxNkPJRx3CsuPb", "caption": "dKt9OegGj2Ke3qcy", "height": 60, "imageUrl": "bDEpJkI0fCHrl3sr", "smallImageUrl": "W2pNIJXXXvTw00L2", "width": 94}], "inventoryConfig": {"customAttributes": {"pSwDbURsFxMmGdTt": {}, "7aePvwwR6AiTccF4": {}, "4MxqyOdfPivpr1fy": {}}, "serverCustomAttributes": {"upflu2xHXpz9cbPy": {}, "DM9zOvLJ2ikPFVaX": {}, "iNxF9ya5Gkvfxayo": {}}, "slotUsed": 97}, "itemIds": ["IP7OyvgPBfiligLF", "sPeji6wfpbBSy79m", "3qXoiLY3FtQAxRka"], "itemQty": {"vB01klZQ0pCbJE4v": 46, "qmEMsvoz76iBJ7Jl": 74, "kOsVpYQNLr9uRhIx": 45}, "itemType": "CODE", "listable": true, "localizations": {"n3i6tyZF18f00Vkm": {"description": "yc9Zhc255ve8s6PU", "localExt": {"2cyl8DB8P0nAKWbO": {}, "7ZljR5PfMWxFRzoX": {}, "gzVMaPCjakAK7v0l": {}}, "longDescription": "gEDxwljBVWculOvY", "title": "iqJ0Mn7RTKWgh3UQ"}, "8E8WeKtI16ShSPZ4": {"description": "R8umnnaV7Nf59OlT", "localExt": {"NmQpU4QaAQCIIUpa": {}, "vzfchwFr0Y8LIwvX": {}, "xhGdRAT8SWiUnrZR": {}}, "longDescription": "0T5ymg7CoHPccgwl", "title": "TBx7zBFW09SE2MpO"}, "HvD06JcBWCD4ESvp": {"description": "zT9eWWeugrOLJ2IB", "localExt": {"Pz56SYgxRawb91ZY": {}, "sjYNslZMK1lpV5Ye": {}, "pFUMcdMKv599IUlD": {}}, "longDescription": "QB3WoEbUEeYpg46A", "title": "iIX1Sh1Q5V81IZ9i"}}, "lootBoxConfig": {"rewardCount": 17, "rewards": [{"lootBoxItems": [{"count": 85, "duration": 39, "endDate": "1974-11-01T00:00:00Z", "itemId": "9nmBPeowl5bRNOv1", "itemSku": "ar1apVQrY1kLmbvM", "itemType": "osvXjdZIYqtOc89k"}, {"count": 30, "duration": 10, "endDate": "1989-11-23T00:00:00Z", "itemId": "GkPs1r5AMgrpgIHC", "itemSku": "GfEhxgiKYxrWjfcU", "itemType": "JpkQILtF4DN1aAB2"}, {"count": 37, "duration": 71, "endDate": "1991-06-23T00:00:00Z", "itemId": "NDu9HPLFSOolvD7A", "itemSku": "opD6dB2OPXpWaiTU", "itemType": "pL7ZNf9OGrTYxyBJ"}], "name": "tyOzak0RlUQfT7CZ", "odds": 0.6015208816559674, "type": "PROBABILITY_GROUP", "weight": 26}, {"lootBoxItems": [{"count": 96, "duration": 40, "endDate": "1972-02-09T00:00:00Z", "itemId": "jeYInL5RIP7mxBfF", "itemSku": "R943kvWjsHDVrEQC", "itemType": "PJjMP6MBzsgu3PWe"}, {"count": 22, "duration": 82, "endDate": "1987-04-04T00:00:00Z", "itemId": "7RECz55ToMNgrGft", "itemSku": "VKL9UqqcMSBTyzAF", "itemType": "VnXzmg5WeVAPlkNb"}, {"count": 3, "duration": 34, "endDate": "1974-10-08T00:00:00Z", "itemId": "MaPQxZk1fUhLNyWs", "itemSku": "HNd5yNtxaLyA7eJM", "itemType": "vyeO5wXs3i8uPTl5"}], "name": "WDNvqsY00p9CK1u5", "odds": 0.3692942873927536, "type": "REWARD", "weight": 66}, {"lootBoxItems": [{"count": 43, "duration": 51, "endDate": "1974-05-03T00:00:00Z", "itemId": "9VlIwFyJy2HLoVea", "itemSku": "bNCvN5l48Wg08nVO", "itemType": "Yjmdyh5lLsPERu2m"}, {"count": 15, "duration": 78, "endDate": "1999-03-25T00:00:00Z", "itemId": "Zo6pLUzo1qOg8Y9s", "itemSku": "Ld1pUeDu0lcHoNcl", "itemType": "SgPM6KgSyez4hHtz"}, {"count": 29, "duration": 81, "endDate": "1982-02-23T00:00:00Z", "itemId": "4gKIl6kBBlK7Ka9Y", "itemSku": "CJdFGYOjTSuu9qZW", "itemType": "5PpBPO6oAQ3oBYIF"}], "name": "z3RelasfTf4A2YlZ", "odds": 0.019240174015208167, "type": "REWARD_GROUP", "weight": 97}], "rollFunction": "DEFAULT"}, "maxCount": 55, "maxCountPerUser": 43, "name": "tY6shW0i41gLI8Rq", "optionBoxConfig": {"boxItems": [{"count": 98, "duration": 79, "endDate": "1978-07-09T00:00:00Z", "itemId": "Eob2zCAE3IagTtVI", "itemSku": "q345ibZz1X9Zo7D3", "itemType": "tTRyF7Sxit5EoTAZ"}, {"count": 35, "duration": 88, "endDate": "1985-11-06T00:00:00Z", "itemId": "TnGRp8U12t8boJwl", "itemSku": "yL5OJGumPQnPB9qJ", "itemType": "Zf6YDvAkMPenrjqZ"}, {"count": 76, "duration": 56, "endDate": "1985-02-05T00:00:00Z", "itemId": "6iQ5y842Zgx5LYMH", "itemSku": "semeYmqJOmV8ILWD", "itemType": "3d7wFCiX7gQpi1nx"}]}, "purchasable": false, "recurring": {"cycle": "WEEKLY", "fixedFreeDays": 37, "fixedTrialCycles": 59, "graceDays": 54}, "regionData": {"HXmMoqBVYZon7WYp": [{"currencyCode": "LTHNdMMPVERZFIFj", "currencyNamespace": "YMutJlfE6xfXQOhc", "currencyType": "REAL", "discountAmount": 87, "discountExpireAt": "1988-02-16T00:00:00Z", "discountPercentage": 53, "discountPurchaseAt": "1979-07-02T00:00:00Z", "expireAt": "1999-07-20T00:00:00Z", "price": 65, "purchaseAt": "1994-03-05T00:00:00Z", "trialPrice": 29}, {"currencyCode": "9ZLVweRaOK4q82Hb", "currencyNamespace": "IQGZEPNWnQZn526y", "currencyType": "REAL", "discountAmount": 32, "discountExpireAt": "1993-03-06T00:00:00Z", "discountPercentage": 58, "discountPurchaseAt": "1998-09-10T00:00:00Z", "expireAt": "1995-09-11T00:00:00Z", "price": 3, "purchaseAt": "1982-10-13T00:00:00Z", "trialPrice": 87}, {"currencyCode": "kcM6tKwYBrYVQnu7", "currencyNamespace": "cKKyByb5pNsrLByj", "currencyType": "VIRTUAL", "discountAmount": 49, "discountExpireAt": "1996-04-02T00:00:00Z", "discountPercentage": 66, "discountPurchaseAt": "1973-11-20T00:00:00Z", "expireAt": "1987-10-29T00:00:00Z", "price": 80, "purchaseAt": "1996-04-19T00:00:00Z", "trialPrice": 98}], "S4uDD2KsgEVFMMAs": [{"currencyCode": "2gpqVGKcI3hyR0zH", "currencyNamespace": "71jKBoKVUL8ycIOi", "currencyType": "VIRTUAL", "discountAmount": 5, "discountExpireAt": "1987-09-28T00:00:00Z", "discountPercentage": 0, "discountPurchaseAt": "1995-07-08T00:00:00Z", "expireAt": "1973-03-12T00:00:00Z", "price": 87, "purchaseAt": "1996-04-30T00:00:00Z", "trialPrice": 7}, {"currencyCode": "1J2emiW38CaKMnPN", "currencyNamespace": "iFcZCxFvRyLyFskh", "currencyType": "VIRTUAL", "discountAmount": 68, "discountExpireAt": "1985-01-27T00:00:00Z", "discountPercentage": 23, "discountPurchaseAt": "1978-06-26T00:00:00Z", "expireAt": "1971-06-08T00:00:00Z", "price": 53, "purchaseAt": "1984-06-18T00:00:00Z", "trialPrice": 95}, {"currencyCode": "R99Y7btVfM81Kxch", "currencyNamespace": "2VE58rK44BrtflQc", "currencyType": "REAL", "discountAmount": 64, "discountExpireAt": "1987-12-25T00:00:00Z", "discountPercentage": 79, "discountPurchaseAt": "1976-10-04T00:00:00Z", "expireAt": "1990-08-26T00:00:00Z", "price": 40, "purchaseAt": "1988-11-21T00:00:00Z", "trialPrice": 85}], "XBhldJeYQCH4x5PP": [{"currencyCode": "la0ivgIYelP3hE1V", "currencyNamespace": "0r6Co1huryeO98vf", "currencyType": "VIRTUAL", "discountAmount": 56, "discountExpireAt": "1991-06-26T00:00:00Z", "discountPercentage": 25, "discountPurchaseAt": "1971-06-08T00:00:00Z", "expireAt": "1990-01-24T00:00:00Z", "price": 27, "purchaseAt": "1988-09-25T00:00:00Z", "trialPrice": 80}, {"currencyCode": "Td7clW78waoDQkEs", "currencyNamespace": "5kq5zuIpSto9ypHk", "currencyType": "REAL", "discountAmount": 20, "discountExpireAt": "1979-07-21T00:00:00Z", "discountPercentage": 2, "discountPurchaseAt": "1978-12-02T00:00:00Z", "expireAt": "1992-02-03T00:00:00Z", "price": 3, "purchaseAt": "1989-09-04T00:00:00Z", "trialPrice": 62}, {"currencyCode": "pxuNizQMKe3JDtHe", "currencyNamespace": "5nT15ItfZaQ49g2X", "currencyType": "REAL", "discountAmount": 2, "discountExpireAt": "1982-05-22T00:00:00Z", "discountPercentage": 36, "discountPurchaseAt": "1972-08-02T00:00:00Z", "expireAt": "1981-05-19T00:00:00Z", "price": 63, "purchaseAt": "1998-07-14T00:00:00Z", "trialPrice": 66}]}, "saleConfig": {"currencyCode": "NKdBq0BXVzZiquYp", "price": 56}, "seasonType": "PASS", "sectionExclusive": false, "sellable": true, "sku": "ByqH1C6xiRbpx5PT", "stackable": false, "status": "ACTIVE", "tags": ["bjgI3Ic1GQJxxNGV", "4IAUKy6oWdR4GIdh", "pXtZTMf83kaUxINQ"], "targetCurrencyCode": "fXDUc2OEiy4bDKIn", "targetNamespace": "qe2YVsG9v4b1mdQ4", "thumbnailUrl": "LVO7vyD6b4tvv5VJ", "useCount": 1}' \
    > test.out 2>&1
eval_tap $? 120 'UpdateItem' test.out

#- 121 DeleteItem
samples/cli/sample-apps Platform deleteItem \
    --itemId 'hu2mrkLLJmUWGGyn' \
    --namespace $AB_NAMESPACE \
    --force 'true' \
    --storeId '0tMbDMwaxIWyvoIf' \
    > test.out 2>&1
eval_tap $? 121 'DeleteItem' test.out

#- 122 AcquireItem
samples/cli/sample-apps Platform acquireItem \
    --itemId 'wUYEIKQRErz1QGhJ' \
    --namespace $AB_NAMESPACE \
    --body '{"count": 95, "orderNo": "rvNmkMBcS27hCTuO"}' \
    > test.out 2>&1
eval_tap $? 122 'AcquireItem' test.out

#- 123 GetApp
samples/cli/sample-apps Platform getApp \
    --itemId 'qKsff8IIGe0Kv3bg' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --storeId '5dtjP0EN3cLvBjd2' \
    > test.out 2>&1
eval_tap $? 123 'GetApp' test.out

#- 124 UpdateApp
samples/cli/sample-apps Platform updateApp \
    --itemId '3KxPlJ1TmrBsxhmD' \
    --namespace $AB_NAMESPACE \
    --storeId 'Nzn2WlwTZkeghS1c' \
    --body '{"carousel": [{"alt": "1VOwq4lwuiYyLv4w", "previewUrl": "CSAg8jhMjeEHYCXv", "thumbnailUrl": "48GebyoljBiVNRrf", "type": "video", "url": "LXWyHNJISPjHpgGB", "videoSource": "youtube"}, {"alt": "JeGzdhJvpaYlAKVb", "previewUrl": "cpxeZ5jGiqKG5MkB", "thumbnailUrl": "FczB1R4ZrAOzkqqS", "type": "video", "url": "CdkP0G2UNl32cKC6", "videoSource": "generic"}, {"alt": "OFLLEdZajtXaTaX1", "previewUrl": "P1JtYLVvkb8NZW78", "thumbnailUrl": "wOk95BL6E0TudpYM", "type": "image", "url": "0MX6pREo5Djn9D7X", "videoSource": "vimeo"}], "developer": "ejqTowBpYW3GneZN", "forumUrl": "FCdcrHdMrF2TOcqE", "genres": ["Casual", "MassivelyMultiplayer", "Sports"], "localizations": {"sMCA949Cb6iOA7UN": {"announcement": "xjxLViG50o1h0STw", "slogan": "omSSspGMBuH9NepA"}, "o7A0bbHYB5ZFzd6Y": {"announcement": "EvfmlvLHKlibW1q0", "slogan": "MV6hO0E19X8V1Gmy"}, "2ZIp8h5Lfy9p2hWm": {"announcement": "TD09tc9Q5pAxmH1X", "slogan": "uZhav275i1EqZNSR"}}, "platformRequirements": {"jns10wJipznnq8aO": [{"additionals": "iyDHqkKMNsanyhm5", "directXVersion": "atlBaaenrDJJdRuU", "diskSpace": "JbLI7Q0sfEy2snMW", "graphics": "nnuhiBtGWwCQbq7M", "label": "D7TSJMv1cgygUnrq", "osVersion": "HMhWzrIbUFYdzmMj", "processor": "wnb43ElsgmAklPA6", "ram": "zwkqxaKJf3ZxUJeT", "soundCard": "UmS58QdWb9q5RZJw"}, {"additionals": "47DDkaI0HEGKEcEg", "directXVersion": "fadyuQO64z4sT7l6", "diskSpace": "m1FuZGcXNz9N3Sfo", "graphics": "38I1PH6OD1FlAkjq", "label": "QWBy5yZbyNk8u3pa", "osVersion": "WYlZqc38KtcuRAnT", "processor": "gHF2rgUnuOR7kGiP", "ram": "RcqWMmj5jVrLyNnX", "soundCard": "4uYQraT9g01pnOGk"}, {"additionals": "cOR6hfhz6TPAE7H6", "directXVersion": "9cuIfqn5TrP1RvNl", "diskSpace": "Z8rjRYbNxsp4bbGW", "graphics": "spUiR8m9wqb5VLFY", "label": "wHKxJ9uAiXEKERUd", "osVersion": "FJ5GMCAdaScpuCTv", "processor": "PcotOHxDkgJhpNtn", "ram": "BQdydMUNpBpxBrKx", "soundCard": "fJLPnREEvCqKAPGg"}], "4CUls23zCctDPwv4": [{"additionals": "PwElD8EImqrkFtQk", "directXVersion": "aZ94iWMf7EkHTyxK", "diskSpace": "4mYZZxREvozUxowa", "graphics": "7pl4k3HtOzygQ4UO", "label": "jTvxEIfqiehjb5Jj", "osVersion": "C5hdHjyt4ziKDXL3", "processor": "Va2qP1HqOTGuzs5H", "ram": "MTtVDKJTSEE0k5DY", "soundCard": "qJsshgj5kUOzZcKY"}, {"additionals": "ZXyhe5mjkvjVCQ60", "directXVersion": "mwwbdbRxoK86JwYK", "diskSpace": "dFfs5ojybJYXSYKj", "graphics": "AvxxsV0eWSrwX1il", "label": "7VIoHSHmWIeKzCsX", "osVersion": "Zc5QruFVz33KhV8x", "processor": "lRN4v00kiQGIhKl2", "ram": "uN6Y993WQwP5lc9U", "soundCard": "fhErYgHad6pFPGMu"}, {"additionals": "GMkN0MY3MtpiC7RZ", "directXVersion": "LS8THzjEj5ssy0AM", "diskSpace": "7ckv9Xk7H3c9pm8D", "graphics": "h6i7RK3DI3vybAuv", "label": "wR6QOLUsz3rlVJzk", "osVersion": "PSBbs1OwQR5ItsdA", "processor": "Mj0662dDpBFdmxA4", "ram": "BlbzDbpNoZ92smix", "soundCard": "mEpCXgFLtsPS3K4B"}], "KqtG3gjwOTiCxR4I": [{"additionals": "bR6SkP9xnHaOPNaf", "directXVersion": "aGszQU9UJhI27VU4", "diskSpace": "79D6YmXowtmxMBKY", "graphics": "603LdXCEkxyI2h4b", "label": "w0mnhLK4dU19XipD", "osVersion": "DFSShGC41STMCreF", "processor": "UByN5NqT4G5VRZpO", "ram": "ZfLhhI2kH9pzzmvi", "soundCard": "xqCX2DDD3cQNsVGq"}, {"additionals": "p3pN2suO8PCpG0nB", "directXVersion": "9dZl08Lu8c6QnNFv", "diskSpace": "Z5r7TZpRpEYwYDrM", "graphics": "L1Fph870NT3XBTru", "label": "BqVSBxBYDMPqYdy9", "osVersion": "ElvBxoR1Fwkiqd2Z", "processor": "zP1oYd0qhjPViso5", "ram": "aPXv3GUFlj3kMMRq", "soundCard": "TjX0hJl0MJgQVp1O"}, {"additionals": "xyr8CpJYHJ7v9nbi", "directXVersion": "OWmyhAI1g5ScpIbC", "diskSpace": "4y652pcGu2EL1TSM", "graphics": "yQsIUHCNGgUtGRjO", "label": "y55cp8ymUOQi1CYu", "osVersion": "9k9QTWk5r1WFzOWE", "processor": "cJB7qy7Ei0WL72bC", "ram": "RU78IZwEB9YCQKT7", "soundCard": "cb5pBavN4JLBu1lP"}]}, "platforms": ["Windows", "MacOS", "Windows"], "players": ["MMO", "Single", "LocalCoop"], "primaryGenre": "RPG", "publisher": "tUPxTeFpfzB2xWLJ", "releaseDate": "1989-11-17T00:00:00Z", "websiteUrl": "D6f1yQeNke7M2HjV"}' \
    > test.out 2>&1
eval_tap $? 124 'UpdateApp' test.out

#- 125 DisableItem
samples/cli/sample-apps Platform disableItem \
    --itemId '2xXyW3bC63VNWtXW' \
    --namespace $AB_NAMESPACE \
    --storeId 'NwkY5nuoBj6YMiId' \
    > test.out 2>&1
eval_tap $? 125 'DisableItem' test.out

#- 126 GetItemDynamicData
samples/cli/sample-apps Platform getItemDynamicData \
    --itemId '7MPniwOR3F5fhucG' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 126 'GetItemDynamicData' test.out

#- 127 EnableItem
samples/cli/sample-apps Platform enableItem \
    --itemId 'B70G1xpaQ1jeEA4w' \
    --namespace $AB_NAMESPACE \
    --storeId 'yphWyXqwjJpoafvv' \
    > test.out 2>&1
eval_tap $? 127 'EnableItem' test.out

#- 128 FeatureItem
samples/cli/sample-apps Platform featureItem \
    --feature 'UDYrVrAKp3LAoQqm' \
    --itemId '9YH1O2ErFS8gRfNY' \
    --namespace $AB_NAMESPACE \
    --storeId 'XbUybrXt9Uc6F5rQ' \
    > test.out 2>&1
eval_tap $? 128 'FeatureItem' test.out

#- 129 DefeatureItem
samples/cli/sample-apps Platform defeatureItem \
    --feature 'eQwOcwfxtj1sPvTm' \
    --itemId 'tLwx4Mmho6WUlfB1' \
    --namespace $AB_NAMESPACE \
    --storeId '3D5Qv0I7u2ycgdep' \
    > test.out 2>&1
eval_tap $? 129 'DefeatureItem' test.out

#- 130 GetLocaleItem
samples/cli/sample-apps Platform getLocaleItem \
    --itemId 'd8mmRmZDMsjd8hEP' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --language 'PWUM7mZZUKVnjHwo' \
    --populateBundle 'false' \
    --region 'rHX4FfRBL7NlwIUK' \
    --storeId 'ANRn4X0UzhzPjVxR' \
    > test.out 2>&1
eval_tap $? 130 'GetLocaleItem' test.out

#- 131 UpdateItemPurchaseCondition
samples/cli/sample-apps Platform updateItemPurchaseCondition \
    --itemId 't9YXObUCLJcZycRT' \
    --namespace $AB_NAMESPACE \
    --storeId 'Bv5wKH1jMae342UO' \
    --body '{"purchaseCondition": {"conditionGroups": [{"operator": "and", "predicates": [{"anyOf": 31, "comparison": "isLessThanOrEqual", "name": "2lyGtfCGlA4QqG2l", "predicateType": "EntitlementPredicate", "value": "vhO9DCPRgZyfQkbL", "values": ["ucMpQxQjsXKy4K8K", "AOy3mVCAWiVXvhLQ", "aeAje3jFS9W9CnfB"]}, {"anyOf": 70, "comparison": "is", "name": "twhUlTdFGM4HWdOi", "predicateType": "SeasonTierPredicate", "value": "aEoLoRtoCVJQxTM6", "values": ["Pall6tCPTVPsjfQL", "Sb8Vh98Ed9U22e2U", "rYWgXws7B4VfmJ0l"]}, {"anyOf": 80, "comparison": "isGreaterThanOrEqual", "name": "zTpGnZYzurxUydJF", "predicateType": "SeasonTierPredicate", "value": "f4q0OgqSKDN2tSgB", "values": ["SxXQV84VNxbxhVuf", "bZkOfqEEdI5a9m32", "np9w6wIeDgo6RJo3"]}]}, {"operator": "or", "predicates": [{"anyOf": 86, "comparison": "isLessThan", "name": "FhFKKsmK9sZbx1Tl", "predicateType": "EntitlementPredicate", "value": "4A6jreMeDqquf4N9", "values": ["oePREPdmnukUwp3W", "Xb2r1usITja0MzJA", "DLksFihlEFQCd3hF"]}, {"anyOf": 18, "comparison": "isLessThanOrEqual", "name": "nSwFFhsyjx1laStk", "predicateType": "EntitlementPredicate", "value": "Z5K1lk8iwfSee6tv", "values": ["YO2IEaG3onyx0Y39", "wIXOK7xmOdAFCS1O", "Ac2wDfodpjofF2rp"]}, {"anyOf": 52, "comparison": "is", "name": "hz3R9qdup9Jeq44D", "predicateType": "EntitlementPredicate", "value": "Pedy1TRYHDlDAZtu", "values": ["nCsEdz27BP8yjzYM", "ZmMcvHOFH1zfVkfz", "UXBNMbROefcHOJUO"]}]}, {"operator": "or", "predicates": [{"anyOf": 84, "comparison": "isLessThan", "name": "4qXmABfE6SIw7efq", "predicateType": "SeasonTierPredicate", "value": "D7Vamr1oizeosPp8", "values": ["9OroW2YEimLRrUNO", "xH0V43V4ayK8o59N", "utOEulL5pZteFvqq"]}, {"anyOf": 79, "comparison": "isGreaterThan", "name": "raFariWwun8NQGzt", "predicateType": "SeasonTierPredicate", "value": "25brbyeea79yUAgo", "values": ["sWIaT3SIEOmUQtdh", "Q97d7YpVgxSadOfv", "ZCJ7nOGCtPvAVs8w"]}, {"anyOf": 11, "comparison": "isNot", "name": "DRtmUnLSFVmkdlB1", "predicateType": "EntitlementPredicate", "value": "6dnf5NyeMOxHOhSs", "values": ["KpLNd0UFDeZJQ75s", "SUMdL5wkiO8I7Y9a", "7cLuT8atJS1myCMs"]}]}]}}' \
    > test.out 2>&1
eval_tap $? 131 'UpdateItemPurchaseCondition' test.out

#- 132 ReturnItem
samples/cli/sample-apps Platform returnItem \
    --itemId '0dQMxO2FG6P9pVVZ' \
    --namespace $AB_NAMESPACE \
    --body '{"orderNo": "ugK5Lu4xzC6kRSHi"}' \
    > test.out 2>&1
eval_tap $? 132 'ReturnItem' test.out

#- 133 QueryKeyGroups
samples/cli/sample-apps Platform queryKeyGroups \
    --namespace $AB_NAMESPACE \
    --limit '83' \
    --name 'S01UqcwQvkbGpWaU' \
    --offset '92' \
    --tag 'Fj3HHLuqZpDZ3Tm1' \
    > test.out 2>&1
eval_tap $? 133 'QueryKeyGroups' test.out

#- 134 CreateKeyGroup
samples/cli/sample-apps Platform createKeyGroup \
    --namespace $AB_NAMESPACE \
    --body '{"description": "iSylF0IhXzhtnJyr", "name": "0CRjPfAY7n6pjc23", "status": "ACTIVE", "tags": ["6AfgcPZZrOCw1t3k", "3EfIVL6RvPWggy5g", "lp21Dz2hJAgvwEZW"]}' \
    > test.out 2>&1
eval_tap $? 134 'CreateKeyGroup' test.out

#- 135 GetKeyGroupByBoothName
eval_tap 0 135 'GetKeyGroupByBoothName # SKIP deprecated' test.out

#- 136 GetKeyGroup
samples/cli/sample-apps Platform getKeyGroup \
    --keyGroupId 'DTEISxEgHSbEiml8' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 136 'GetKeyGroup' test.out

#- 137 UpdateKeyGroup
samples/cli/sample-apps Platform updateKeyGroup \
    --keyGroupId 'PXH4xHHoK2vYCMCZ' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "tqlGZZ4zNg319CSr", "name": "SYjMRObLcCemgm7y", "status": "ACTIVE", "tags": ["VrcnC7EJ3ueQLcnz", "4yRvKGaEN6K0MKKN", "buaTuqMxQgAkuLRr"]}' \
    > test.out 2>&1
eval_tap $? 137 'UpdateKeyGroup' test.out

#- 138 GetKeyGroupDynamic
samples/cli/sample-apps Platform getKeyGroupDynamic \
    --keyGroupId 'JhUFVL3mL1m2LBC4' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 138 'GetKeyGroupDynamic' test.out

#- 139 ListKeys
samples/cli/sample-apps Platform listKeys \
    --keyGroupId 'kS1mKLeU53KXMNTu' \
    --namespace $AB_NAMESPACE \
    --limit '81' \
    --offset '82' \
    --status 'ACQUIRED' \
    > test.out 2>&1
eval_tap $? 139 'ListKeys' test.out

#- 140 UploadKeys
samples/cli/sample-apps Platform uploadKeys \
    --keyGroupId 'p0qiQIwYGD0KFi3T' \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 140 'UploadKeys' test.out

#- 141 QueryOrders
samples/cli/sample-apps Platform queryOrders \
    --namespace $AB_NAMESPACE \
    --endTime 'td62EJcXIsdjtN0v' \
    --limit '2' \
    --offset '26' \
    --orderNos '["iH4bn5gHAIUW2yyV", "ylWj1m0fswkUJTJ3", "qQ1rUniYz2klUYO1"]' \
    --sortBy 'FIxS1De7jo5e80l3' \
    --startTime 'GwhjTAqoWD6YcUaJ' \
    --status 'DELETED' \
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
    --orderNo 'd3yuGRAzxBJU5xOY' \
    > test.out 2>&1
eval_tap $? 143 'GetOrder' test.out

#- 144 RefundOrder
samples/cli/sample-apps Platform refundOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'CYH5KnB6PUVkPPfB' \
    --body '{"description": "ZoUbtXJMaUfEChal"}' \
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
    --body '{"dryRun": false, "notifyUrl": "sRZodW1vTpTVdeA6", "privateKey": "7qkKh4R4hEFOi9vB"}' \
    > test.out 2>&1
eval_tap $? 146 'UpdatePaymentCallbackConfig' test.out

#- 147 QueryPaymentNotifications
samples/cli/sample-apps Platform queryPaymentNotifications \
    --namespace $AB_NAMESPACE \
    --endDate 'LP3oVCXzCCp0lPwg' \
    --externalId '7N3RKmXGfPbM8AMY' \
    --limit '74' \
    --notificationSource 'WXPAY' \
    --notificationType 'PM0Gr7F5Jd4fTJgZ' \
    --offset '10' \
    --paymentOrderNo '9PYhQNcXjmIoAnyC' \
    --startDate 'qweOc7sz2fcvVkLr' \
    --status 'ERROR' \
    > test.out 2>&1
eval_tap $? 147 'QueryPaymentNotifications' test.out

#- 148 QueryPaymentOrders
samples/cli/sample-apps Platform queryPaymentOrders \
    --namespace $AB_NAMESPACE \
    --channel 'EXTERNAL' \
    --extTxId 'UUxDoSIQ9cMS1hz8' \
    --limit '28' \
    --offset '4' \
    --status 'REFUNDING' \
    > test.out 2>&1
eval_tap $? 148 'QueryPaymentOrders' test.out

#- 149 CreatePaymentOrderByDedicated
samples/cli/sample-apps Platform createPaymentOrderByDedicated \
    --namespace $AB_NAMESPACE \
    --body '{"currencyCode": "ypDAA2uL2BPDgc8i", "currencyNamespace": "pLHo96zwH4X1NmPm", "customParameters": {"egLyr7w9JKhJT7Jm": {}, "sReEhU5u36TPbe3g": {}, "91Ljton3I8yvAAs6": {}}, "description": "w3ATx2M2H9lTX2Zc", "extOrderNo": "dmWzxldEwbrr6BDj", "extUserId": "LPta0GxleiuLETOe", "itemType": "EXTENSION", "language": "oz-cU", "metadata": {"GXB89nRJfvpgH9h3": "05GplC3rX1137jBQ", "cibbBKZ5rnljN4LQ": "umUhzcB4IaiAg9C0", "YO0t3dFXMb4bGe1j": "f4gYysYF3KsdktKS"}, "notifyUrl": "lkBt9fj4hECLkDJr", "omitNotification": false, "platform": "htT2dN8mrTgn6HDj", "price": 80, "recurringPaymentOrderNo": "EVcddtKYfCh4QxW3", "region": "v68QcnMvliPGoCBA", "returnUrl": "rLuQs05NxXQAF6yM", "sandbox": true, "sku": "nzC5l7aCi8VQQNw0", "subscriptionId": "q9wFSklk8sNIXkHB", "targetNamespace": "vDUHMuZZRDHvtosi", "targetUserId": "ko6X6Op57RHMQb5H", "title": "SDvGYBScRonDhCJQ"}' \
    > test.out 2>&1
eval_tap $? 149 'CreatePaymentOrderByDedicated' test.out

#- 150 ListExtOrderNoByExtTxId
samples/cli/sample-apps Platform listExtOrderNoByExtTxId \
    --namespace $AB_NAMESPACE \
    --extTxId 'ZH3zIwEjtPrIVciQ' \
    > test.out 2>&1
eval_tap $? 150 'ListExtOrderNoByExtTxId' test.out

#- 151 GetPaymentOrder
samples/cli/sample-apps Platform getPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'Q80kWSwHGq4qqjxt' \
    > test.out 2>&1
eval_tap $? 151 'GetPaymentOrder' test.out

#- 152 ChargePaymentOrder
samples/cli/sample-apps Platform chargePaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'pBRJnk8v1DKR2ZZc' \
    --body '{"extTxId": "cNifEo2HuocWUuvw", "paymentMethod": "xlByzbqEBtUBUZiL", "paymentProvider": "WALLET"}' \
    > test.out 2>&1
eval_tap $? 152 'ChargePaymentOrder' test.out

#- 153 RefundPaymentOrderByDedicated
samples/cli/sample-apps Platform refundPaymentOrderByDedicated \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'T9Hh4MsSPQfM1K2Q' \
    --body '{"description": "q1w8KQCHQWYqW5nC"}' \
    > test.out 2>&1
eval_tap $? 153 'RefundPaymentOrderByDedicated' test.out

#- 154 SimulatePaymentOrderNotification
samples/cli/sample-apps Platform simulatePaymentOrderNotification \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'I9GknjJa2ymNLPfz' \
    --body '{"amount": 0, "currencyCode": "aLmNRnqyJferQlqi", "notifyType": "REFUND", "paymentProvider": "PAYPAL", "salesTax": 0, "vat": 76}' \
    > test.out 2>&1
eval_tap $? 154 'SimulatePaymentOrderNotification' test.out

#- 155 GetPaymentOrderChargeStatus
samples/cli/sample-apps Platform getPaymentOrderChargeStatus \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'JybfeGAMb88EXnnY' \
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
    --platform 'IOS' \
    --body '{"allowedPlatformOrigins": ["Steam", "Steam", "Oculus"]}' \
    > test.out 2>&1
eval_tap $? 157 'UpdatePlatformEntitlementConfig' test.out

#- 158 GetPlatformWalletConfig
samples/cli/sample-apps Platform getPlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'GooglePlay' \
    > test.out 2>&1
eval_tap $? 158 'GetPlatformWalletConfig' test.out

#- 159 UpdatePlatformWalletConfig
samples/cli/sample-apps Platform updatePlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'GooglePlay' \
    --body '{"allowedBalanceOrigins": ["Playstation", "Xbox", "Playstation"]}' \
    > test.out 2>&1
eval_tap $? 159 'UpdatePlatformWalletConfig' test.out

#- 160 ResetPlatformWalletConfig
samples/cli/sample-apps Platform resetPlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Oculus' \
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
    --body '{"entitlement": {"consumable": {"enabled": true, "strategy": "CUSTOM"}, "durable": {"enabled": true, "strategy": "REVOKE_OR_REPORT"}}, "wallet": {"enabled": true, "strategy": "REVOKE_OR_REPORT"}}' \
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
    --endTime 'sLdBHNTNEz83dCIh' \
    --limit '92' \
    --offset '82' \
    --source 'IAP' \
    --startTime 'Pbz4XLQeYvUnRJ5R' \
    --status 'FAIL' \
    --transactionId '2PeisitFVtY80QWk' \
    --userId 'MtH5tdtLDSI0XfCN' \
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
    --body '{"appConfig": {"appName": "2DkxhlgSJkIEbD0J"}, "customConfig": {"connectionType": "INSECURE", "grpcServerAddress": "dYYr6nJZKtkLNc5Q"}, "extendType": "CUSTOM"}' \
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
    --body '{"description": "ZbyeBe7ACQGvCH4c", "eventTopic": "XxvvU4xJkJovtvmx", "maxAwarded": 46, "maxAwardedPerUser": 11, "namespaceExpression": "Pd0DzP3tte8MYMKV", "rewardCode": "mgmZkx68mTmaFFXv", "rewardConditions": [{"condition": "Gw2GUrj6BAdmNtiF", "conditionName": "SUTeApy5YIzrY1ol", "eventName": "NZ5xlZC3gr2FvjPA", "rewardItems": [{"duration": 64, "endDate": "1986-12-23T00:00:00Z", "identityType": "ITEM_ID", "itemId": "bbZ43vRAXRYF4LFb", "quantity": 39, "sku": "rUzNRQFvIxWCFiuf"}, {"duration": 3, "endDate": "1988-04-19T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "zbKisEqBzUbA828V", "quantity": 90, "sku": "lKZOaEIng5s6VSRR"}, {"duration": 82, "endDate": "1991-05-04T00:00:00Z", "identityType": "ITEM_ID", "itemId": "r6d6k8rYI1f1aRw0", "quantity": 35, "sku": "EQGRfIKgJnJOekBT"}]}, {"condition": "QLCDIKpm4MI45HWm", "conditionName": "9fH6DEprsQjVfzaP", "eventName": "fhwR2QQaNTsWqfd6", "rewardItems": [{"duration": 96, "endDate": "1996-01-30T00:00:00Z", "identityType": "ITEM_ID", "itemId": "fvZl5NXiNKslZyxi", "quantity": 82, "sku": "ztNN58ldmyNAWFrQ"}, {"duration": 47, "endDate": "1991-03-19T00:00:00Z", "identityType": "ITEM_ID", "itemId": "GFURDvS8wDbQX6Hn", "quantity": 55, "sku": "S2Eg51pQKjEADfLP"}, {"duration": 30, "endDate": "1985-04-13T00:00:00Z", "identityType": "ITEM_ID", "itemId": "o9WSpFjMLJaG7LAO", "quantity": 98, "sku": "f3XKA4n94DBKIWua"}]}, {"condition": "WH5GIduoV0JwazhD", "conditionName": "IpLOSTAZc98Dz9uP", "eventName": "snjIzNUu0eHNhNkW", "rewardItems": [{"duration": 38, "endDate": "1999-04-15T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "lFeuRAlwdwHgbCbN", "quantity": 10, "sku": "ytgHGx5Ox6sOrW2h"}, {"duration": 35, "endDate": "1990-05-16T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "ji4ehb2eMD3WzP8S", "quantity": 43, "sku": "6P80nWAcLoOPonNh"}, {"duration": 72, "endDate": "1983-03-26T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "TKBVHSIGJAc61xqJ", "quantity": 46, "sku": "5VYtw5dIopnXv9n3"}]}], "userIdExpression": "Iy5k7EdeP5qeFH5O"}' \
    > test.out 2>&1
eval_tap $? 169 'CreateReward' test.out

#- 170 QueryRewards
samples/cli/sample-apps Platform queryRewards \
    --namespace $AB_NAMESPACE \
    --eventTopic 'ZjJw2jQ5PjifnvMe' \
    --limit '20' \
    --offset '79' \
    --sortBy '["rewardCode", "namespace", "namespace:desc"]' \
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
    --replaceExisting 'true' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 172 'ImportRewards' test.out

#- 173 GetReward
samples/cli/sample-apps Platform getReward \
    --namespace $AB_NAMESPACE \
    --rewardId '4S4ckNNZNcoBzhCy' \
    > test.out 2>&1
eval_tap $? 173 'GetReward' test.out

#- 174 UpdateReward
samples/cli/sample-apps Platform updateReward \
    --namespace $AB_NAMESPACE \
    --rewardId 'MdNnIzA1oMt408Xu' \
    --body '{"description": "ZbwFPYXED6qIhoLR", "eventTopic": "TYBUXcQFllcFum4v", "maxAwarded": 21, "maxAwardedPerUser": 77, "namespaceExpression": "hnxjNYtv9KxVWbhn", "rewardCode": "qK1CrhH7fbvDWG4O", "rewardConditions": [{"condition": "piIql8PTfsQiTCl4", "conditionName": "qwDWRbjxYZaJKRpO", "eventName": "LtFtI0uRw4WSgq1l", "rewardItems": [{"duration": 54, "endDate": "1992-09-08T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "V5iZHNA6ZWHKuq85", "quantity": 31, "sku": "Z6JlGPAE0K1BeAZ8"}, {"duration": 12, "endDate": "1993-07-27T00:00:00Z", "identityType": "ITEM_ID", "itemId": "Ueu8P6jl8K26lwGZ", "quantity": 73, "sku": "W19wMryOpfGOQhen"}, {"duration": 51, "endDate": "1987-08-02T00:00:00Z", "identityType": "ITEM_ID", "itemId": "GYHin1d9YFbAVo17", "quantity": 73, "sku": "VObikvJOnYUdXXus"}]}, {"condition": "EFQxwqTAZF8bJTDf", "conditionName": "sxeqiI2PsdLtrd1o", "eventName": "1tK9rUBKUsFDMJGm", "rewardItems": [{"duration": 74, "endDate": "1989-08-04T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "ncMakTh2fFWJ9Acn", "quantity": 62, "sku": "lwPHDqO4kReQrMF7"}, {"duration": 32, "endDate": "1975-01-18T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "JjTPWltW2IgDzbtO", "quantity": 61, "sku": "B2A3BsxjPsnE7jhI"}, {"duration": 3, "endDate": "1997-08-29T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "r1SAwAGACyCqR1xo", "quantity": 83, "sku": "Oes0IINSbbwd2EH8"}]}, {"condition": "K1wYZKXYbRiRFdw8", "conditionName": "epFS5fa0KkbOiX1C", "eventName": "N1PEOwQ4mscM47hy", "rewardItems": [{"duration": 37, "endDate": "1972-12-20T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "oqbpCxrEVU0izW9e", "quantity": 26, "sku": "NeGDiEAs2enInepR"}, {"duration": 44, "endDate": "1991-03-06T00:00:00Z", "identityType": "ITEM_ID", "itemId": "CcwdtUqFj9ixGQTU", "quantity": 90, "sku": "6GgTDlOUAY3a6r89"}, {"duration": 90, "endDate": "1999-12-10T00:00:00Z", "identityType": "ITEM_ID", "itemId": "jnroJv7e1bIRAZCM", "quantity": 77, "sku": "Vk2FexbxyhK1qV25"}]}], "userIdExpression": "uKjFPGjakRE0pnlT"}' \
    > test.out 2>&1
eval_tap $? 174 'UpdateReward' test.out

#- 175 DeleteReward
samples/cli/sample-apps Platform deleteReward \
    --namespace $AB_NAMESPACE \
    --rewardId 'RRUKAkShskQ4qPCf' \
    > test.out 2>&1
eval_tap $? 175 'DeleteReward' test.out

#- 176 CheckEventCondition
samples/cli/sample-apps Platform checkEventCondition \
    --namespace $AB_NAMESPACE \
    --rewardId 'oO3SfessDAGWo5gj' \
    --body '{"payload": {"GcSInYWDWTUcJo0u": {}, "uOsCqjtmCAU6HJk6": {}, "WDIVbzTllwIKX9eg": {}}}' \
    > test.out 2>&1
eval_tap $? 176 'CheckEventCondition' test.out

#- 177 DeleteRewardConditionRecord
samples/cli/sample-apps Platform deleteRewardConditionRecord \
    --namespace $AB_NAMESPACE \
    --rewardId 'vQttkjJLquOCSTSO' \
    --body '{"conditionName": "MUs5EHCnnneCpI5H", "userId": "h2bDWGZgC1BqTUPm"}' \
    > test.out 2>&1
eval_tap $? 177 'DeleteRewardConditionRecord' test.out

#- 178 QuerySections
samples/cli/sample-apps Platform querySections \
    --namespace $AB_NAMESPACE \
    --end 'CwdyVRv99u7vxwEs' \
    --limit '63' \
    --offset '76' \
    --start 'l5HLfyUC4KpUz4uu' \
    --storeId 'G5NTQlB2PFzKiJuE' \
    --viewId 'xcwTFeLyc0wdwlmH' \
    > test.out 2>&1
eval_tap $? 178 'QuerySections' test.out

#- 179 CreateSection
samples/cli/sample-apps Platform createSection \
    --namespace $AB_NAMESPACE \
    --storeId '3YA5nT5yka2fbynh' \
    --body '{"active": false, "displayOrder": 30, "endDate": "1990-09-24T00:00:00Z", "ext": {"TFL8eN6YsWe3mc0M": {}, "rlUuTnghxoq6KdIL": {}, "wWAgtPGLbPVTmIOs": {}}, "fixedPeriodRotationConfig": {"backfillType": "NONE", "duration": 95, "itemCount": 83, "rule": "SEQUENCE"}, "items": [{"id": "gXzV9WbPtJjLqejE", "sku": "MWFzX2J5SWMgwYWd"}, {"id": "70ikS20RfTMiExqm", "sku": "cjbcT91jBgyNvMri"}, {"id": "5htfMLCDxKMgoRmE", "sku": "HTXwuAcNCaGqAiX1"}], "localizations": {"VEhmGD8FxWAskGZA": {"description": "4tqv3JvvvUZieWcr", "localExt": {"VAp6kBm61SYkSP4a": {}, "1yPWASVTSB10pcL4": {}, "UsygK8eUYXqwBYqa": {}}, "longDescription": "Nze54lxTIFNNQYdY", "title": "Nt5CQpwd67WUhiyz"}, "f28X3e4tqRO8q3QB": {"description": "OcpbtnzqyVR2inNI", "localExt": {"kzI1rhWpR6X2FHUL": {}, "wtOpHG4VD6DtvsAI": {}, "J9wcCZnO5oPjm1XM": {}}, "longDescription": "b9MvWGLJVCybMQIv", "title": "TmmfJexTXSf2CiCn"}, "x3ccGEBggWbTT7Oe": {"description": "1aGkDASvDhQbh1fY", "localExt": {"TV08BgqQarH03auK": {}, "73j90ZAZ7IRlBvae": {}, "a2QImdIRa3qCm2T2": {}}, "longDescription": "GL3PbvUD6hj8qsWu", "title": "O29DGEZNEdRhwy8I"}}, "name": "Pa4gypgppaIt4apW", "rotationType": "FIXED_PERIOD", "startDate": "1971-04-14T00:00:00Z", "viewId": "lJHthTbkWVTV5E9g"}' \
    > test.out 2>&1
eval_tap $? 179 'CreateSection' test.out

#- 180 PurgeExpiredSection
samples/cli/sample-apps Platform purgeExpiredSection \
    --namespace $AB_NAMESPACE \
    --storeId 'rM8RHkXn8q19jRA3' \
    > test.out 2>&1
eval_tap $? 180 'PurgeExpiredSection' test.out

#- 181 GetSection
samples/cli/sample-apps Platform getSection \
    --namespace $AB_NAMESPACE \
    --sectionId 'ZXFpWsPR5WCkUxa7' \
    --storeId 'uDapYpcvHrhh4NHo' \
    > test.out 2>&1
eval_tap $? 181 'GetSection' test.out

#- 182 UpdateSection
samples/cli/sample-apps Platform updateSection \
    --namespace $AB_NAMESPACE \
    --sectionId 'XL0SmhEoezyP7zbv' \
    --storeId 'wQqPOP3q1vyt4wdp' \
    --body '{"active": false, "displayOrder": 26, "endDate": "1987-02-09T00:00:00Z", "ext": {"2DkQ714ObcBk55hf": {}, "tGyQGjAdDKM3fZXt": {}, "c2MrzPv2pSgzF20i": {}}, "fixedPeriodRotationConfig": {"backfillType": "NONE", "duration": 56, "itemCount": 71, "rule": "SEQUENCE"}, "items": [{"id": "iw387pb9DmgPLPHB", "sku": "pSdADggRc1a9HDs5"}, {"id": "ujWQcItAQfM39YUh", "sku": "ZtSs00e8WBPv1lcL"}, {"id": "JUGLZiZ796mKq7fW", "sku": "lqnDq4a6W8U4bFTT"}], "localizations": {"jIggK9Xr2XMrIbF9": {"description": "yHqEL5t6j6WGtxYM", "localExt": {"cpn5lsE1zO3cm1Pl": {}, "imdUDYE0TRQvFzGA": {}, "E5vDZG4TZn3bDZLS": {}}, "longDescription": "CZXonFciUGQeXEBq", "title": "iGAZMgcwuA3OZGyE"}, "z0uqKNEMa4QCZh3B": {"description": "6ZVUVyDnhQnX30dR", "localExt": {"9ykOnLNSBixMbfuk": {}, "9zhNfw3JSuZ7ZW98": {}, "KX57SdMEZMi13zWW": {}}, "longDescription": "zn8Gk4Ag6psKFPR0", "title": "jQJ77RsAI4uu0NBy"}, "H03PPjgUPZXrDy6w": {"description": "xbhIUZ5llpqWUVpk", "localExt": {"VyKPnnPIKIibNzCO": {}, "m7X4vtA3Ja16Nvvb": {}, "pguROWvyzlTT1CmS": {}}, "longDescription": "OTr7l6wBezbVIoJy", "title": "DoYjtvgTzbGNPUgw"}}, "name": "FlIr3ZIufuSBpvAx", "rotationType": "CUSTOM", "startDate": "1990-11-28T00:00:00Z", "viewId": "vCFc0bYK9XV2QUwg"}' \
    > test.out 2>&1
eval_tap $? 182 'UpdateSection' test.out

#- 183 DeleteSection
samples/cli/sample-apps Platform deleteSection \
    --namespace $AB_NAMESPACE \
    --sectionId 'UCqyI16ZBxhOTav7' \
    --storeId 'xnU5hBXHdnnr1Vk1' \
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
    --body '{"defaultLanguage": "cPQMEtabHyHI5iDq", "defaultRegion": "Q1QmWS5285VCURsN", "description": "C90kQlrPxG8ebQfR", "supportedLanguages": ["A13sldK8eyTS0BQM", "w3AzPoHBWLkMXGa8", "3l0SL7HA0MnCJmPS"], "supportedRegions": ["KUctuQHsGI37F02E", "MBLuVL2VrJggpgbs", "607VloUCgll7b6ns"], "title": "cvXx3NmvgodBaj1q"}' \
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
    --body '{"catalogType": "APP", "fieldsToBeIncluded": ["pnPNt93IsaXeNwWp", "FRGQACqmRdXuWrBq", "VycpJb8fg3tioqlH"], "idsToBeExported": ["Qy5zDNBudcDB9iMZ", "VnmZKLlPUB58pF3y", "LizNxkZrZ0Az39jH"], "storeId": "Tps3cLa5VqDDQEqi"}' \
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
    --storeId 'aL1vyhRtq7q4RiCR' \
    > test.out 2>&1
eval_tap $? 194 'GetStore' test.out

#- 195 UpdateStore
samples/cli/sample-apps Platform updateStore \
    --namespace $AB_NAMESPACE \
    --storeId 'kd1myeUD2mKiLa2W' \
    --body '{"defaultLanguage": "VNJa0yaNmxptZvCN", "defaultRegion": "D9h54cwE6EoXKuLp", "description": "MIpVhVw4Tbku0fL8", "supportedLanguages": ["YXF3iTg0JEF80gS4", "iZSsBfJXjpGwWxpb", "2Uxta99mcVl0TASx"], "supportedRegions": ["kWjaYaxZVyNRJDhX", "nBomIszHJLZJWdJD", "1MgWsG0Z4TT1Zt6P"], "title": "mHW2iJyceS6JrpTo"}' \
    > test.out 2>&1
eval_tap $? 195 'UpdateStore' test.out

#- 196 DeleteStore
samples/cli/sample-apps Platform deleteStore \
    --namespace $AB_NAMESPACE \
    --storeId 'PKqGdkhR7zn75yn6' \
    > test.out 2>&1
eval_tap $? 196 'DeleteStore' test.out

#- 197 QueryChanges
samples/cli/sample-apps Platform queryChanges \
    --namespace $AB_NAMESPACE \
    --storeId 'i2ZB9AvuZG8sdVq2' \
    --action 'CREATE' \
    --itemSku 'ZN0EpOT0vW3MUOQj' \
    --itemType 'MEDIA' \
    --limit '27' \
    --offset '76' \
    --selected 'true' \
    --sortBy '["createdAt:desc", "updatedAt:asc", "createdAt"]' \
    --status 'PUBLISHED' \
    --type 'ITEM' \
    --updatedAtEnd 'n17cbNTgFxguQAOm' \
    --updatedAtStart 'R1LtHmuOxPwtC4iS' \
    --withTotal 'true' \
    > test.out 2>&1
eval_tap $? 197 'QueryChanges' test.out

#- 198 PublishAll
samples/cli/sample-apps Platform publishAll \
    --namespace $AB_NAMESPACE \
    --storeId '8OhHF6T1kEyHwO2g' \
    > test.out 2>&1
eval_tap $? 198 'PublishAll' test.out

#- 199 PublishSelected
samples/cli/sample-apps Platform publishSelected \
    --namespace $AB_NAMESPACE \
    --storeId 'mpmvWNVyvjSU4r1J' \
    > test.out 2>&1
eval_tap $? 199 'PublishSelected' test.out

#- 200 SelectAllRecords
samples/cli/sample-apps Platform selectAllRecords \
    --namespace $AB_NAMESPACE \
    --storeId 'AUbbYIGm0Z4s5NDQ' \
    > test.out 2>&1
eval_tap $? 200 'SelectAllRecords' test.out

#- 201 SelectAllRecordsByCriteria
samples/cli/sample-apps Platform selectAllRecordsByCriteria \
    --namespace $AB_NAMESPACE \
    --storeId '4AGjVHdpR2u8GkTj' \
    --action 'UPDATE' \
    --itemSku 'VmAwC8AilPpBxdlJ' \
    --itemType 'EXTENSION' \
    --selected 'true' \
    --type 'ITEM' \
    --updatedAtEnd 'y0tJuNkKM65RYgjz' \
    --updatedAtStart 'WnrxyiMNYHejHg1h' \
    > test.out 2>&1
eval_tap $? 201 'SelectAllRecordsByCriteria' test.out

#- 202 GetStatistic
samples/cli/sample-apps Platform getStatistic \
    --namespace $AB_NAMESPACE \
    --storeId 'vVEreT7OJ17T59ng' \
    --action 'DELETE' \
    --itemSku 'taaPzJUMMsSytrvb' \
    --itemType 'EXTENSION' \
    --type 'STORE' \
    --updatedAtEnd '19kYh142P390mQWK' \
    --updatedAtStart 'TkH9goiFYFo24dbP' \
    > test.out 2>&1
eval_tap $? 202 'GetStatistic' test.out

#- 203 UnselectAllRecords
samples/cli/sample-apps Platform unselectAllRecords \
    --namespace $AB_NAMESPACE \
    --storeId 'OxlTc3ir1j7yVOKK' \
    > test.out 2>&1
eval_tap $? 203 'UnselectAllRecords' test.out

#- 204 SelectRecord
samples/cli/sample-apps Platform selectRecord \
    --changeId 'N6IGYBRsxKXLxJpI' \
    --namespace $AB_NAMESPACE \
    --storeId 'C5tIFzvxKGkolH1Q' \
    > test.out 2>&1
eval_tap $? 204 'SelectRecord' test.out

#- 205 UnselectRecord
samples/cli/sample-apps Platform unselectRecord \
    --changeId 'anRnKHLJN2n7GMFB' \
    --namespace $AB_NAMESPACE \
    --storeId 'KYYpSbzpGY2SRfSQ' \
    > test.out 2>&1
eval_tap $? 205 'UnselectRecord' test.out

#- 206 CloneStore
samples/cli/sample-apps Platform cloneStore \
    --namespace $AB_NAMESPACE \
    --storeId 'LP0fGoQdQFtVN6ul' \
    --targetStoreId 'oIWJWMQmkoR0xNKx' \
    > test.out 2>&1
eval_tap $? 206 'CloneStore' test.out

#- 207 ExportStore
eval_tap 0 207 'ExportStore # SKIP deprecated' test.out

#- 208 QueryImportHistory
samples/cli/sample-apps Platform queryImportHistory \
    --namespace $AB_NAMESPACE \
    --storeId '0Eb4xudEGBTo5aFC' \
    --end 'yH2a0uaHjnipg3kv' \
    --limit '55' \
    --offset '64' \
    --sortBy 'XTRf3g3KwFzhqz0C' \
    --start 'DYc8wkCwoYeKSF7k' \
    --success 'true' \
    > test.out 2>&1
eval_tap $? 208 'QueryImportHistory' test.out

#- 209 ImportStoreByCSV
samples/cli/sample-apps Platform importStoreByCSV \
    --namespace $AB_NAMESPACE \
    --storeId 'YCEzoUpwjp98VDKS' \
    --category 'tmp.dat' \
    --display 'tmp.dat' \
    --item 'tmp.dat' \
    --notes '1wHJpvF94DCbVOZa' \
    --section 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 209 'ImportStoreByCSV' test.out

#- 210 QuerySubscriptions
samples/cli/sample-apps Platform querySubscriptions \
    --namespace $AB_NAMESPACE \
    --chargeStatus 'SETUP' \
    --itemId 'SIV7h1arw8MIncJQ' \
    --limit '8' \
    --offset '63' \
    --sku 'hF7ZDPCZvZxpmLEl' \
    --status 'ACTIVE' \
    --subscribedBy 'USER' \
    --userId 'U5tD3FV0Qwg8gXCS' \
    > test.out 2>&1
eval_tap $? 210 'QuerySubscriptions' test.out

#- 211 RecurringChargeSubscription
samples/cli/sample-apps Platform recurringChargeSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'nnEfEmaTxLTArcz6' \
    > test.out 2>&1
eval_tap $? 211 'RecurringChargeSubscription' test.out

#- 212 GetTicketDynamic
samples/cli/sample-apps Platform getTicketDynamic \
    --boothName 'U7JPi1xs9ZLUaU2F' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 212 'GetTicketDynamic' test.out

#- 213 DecreaseTicketSale
samples/cli/sample-apps Platform decreaseTicketSale \
    --boothName 'QU9THamx3QgUZ305' \
    --namespace $AB_NAMESPACE \
    --body '{"orderNo": "SSwVK0I9ZZTWTrcx"}' \
    > test.out 2>&1
eval_tap $? 213 'DecreaseTicketSale' test.out

#- 214 GetTicketBoothID
samples/cli/sample-apps Platform getTicketBoothID \
    --boothName 'uPNaXlFnxIXQsQfW' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 214 'GetTicketBoothID' test.out

#- 215 IncreaseTicketSale
samples/cli/sample-apps Platform increaseTicketSale \
    --boothName '2lc44EmXCUr8k0Qc' \
    --namespace $AB_NAMESPACE \
    --body '{"count": 27, "orderNo": "FsiGw5Ih1LOPIaE8"}' \
    > test.out 2>&1
eval_tap $? 215 'IncreaseTicketSale' test.out

#- 216 Commit
samples/cli/sample-apps Platform commit \
    --namespace $AB_NAMESPACE \
    --body '{"actions": [{"operations": [{"creditPayload": {"balanceOrigin": "System", "count": 97, "currencyCode": "UOb12Kea6Xg4wHYR", "expireAt": "1999-10-07T00:00:00Z"}, "debitPayload": {"count": 87, "currencyCode": "PVSkeyVXg6g7RBuI", "walletPlatform": "Nintendo"}, "fulFillItemPayload": {"count": 9, "entitlementCollectionId": "PhWMPDrS3Xznx3Jb", "entitlementOrigin": "Twitch", "itemIdentity": "4llrsAnay67Jp64o", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 33, "entitlementId": "YWRrY32HSpg7MzEu"}, "type": "DEBIT_WALLET"}, {"creditPayload": {"balanceOrigin": "Playstation", "count": 63, "currencyCode": "i4JSzYQKAnkpo8iB", "expireAt": "1986-03-25T00:00:00Z"}, "debitPayload": {"count": 90, "currencyCode": "UVRVLebEmeCuZW0t", "walletPlatform": "Epic"}, "fulFillItemPayload": {"count": 7, "entitlementCollectionId": "ZwnCf4096x0nm0QU", "entitlementOrigin": "GooglePlay", "itemIdentity": "lQbtUcSwy69uh6FW", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 24, "entitlementId": "tOjXGu1m2W2b5QWG"}, "type": "DEBIT_WALLET"}, {"creditPayload": {"balanceOrigin": "Steam", "count": 31, "currencyCode": "11onjjphsc8knJ13", "expireAt": "1989-01-24T00:00:00Z"}, "debitPayload": {"count": 99, "currencyCode": "x0FqnNudVnIZjjAH", "walletPlatform": "Playstation"}, "fulFillItemPayload": {"count": 91, "entitlementCollectionId": "MCM2bvVMY77Iw59h", "entitlementOrigin": "Twitch", "itemIdentity": "uyyNtJUpGHhPQxkv", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 37, "entitlementId": "5hW0otcoH8TzaBP2"}, "type": "CREDIT_WALLET"}], "userId": "yByMUAgn9uX2atnG"}, {"operations": [{"creditPayload": {"balanceOrigin": "Other", "count": 53, "currencyCode": "wqHV64B2g4EMPVzt", "expireAt": "1981-03-06T00:00:00Z"}, "debitPayload": {"count": 75, "currencyCode": "o3qOqHSR900RzVXM", "walletPlatform": "Epic"}, "fulFillItemPayload": {"count": 73, "entitlementCollectionId": "RM6X4ZukK4WDkAOa", "entitlementOrigin": "Xbox", "itemIdentity": "0S6lFpRfeDuRGsnY", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 76, "entitlementId": "I5qzM4Wx5RuScu21"}, "type": "FULFILL_ITEM"}, {"creditPayload": {"balanceOrigin": "Playstation", "count": 29, "currencyCode": "dbTUP8ktmRhlthQB", "expireAt": "1979-09-24T00:00:00Z"}, "debitPayload": {"count": 96, "currencyCode": "1ucljo4flu2z3Kkd", "walletPlatform": "Other"}, "fulFillItemPayload": {"count": 27, "entitlementCollectionId": "N6ptVlkknitV2PHI", "entitlementOrigin": "Playstation", "itemIdentity": "rIXcEfuDEGDFF1Ux", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 40, "entitlementId": "qSqBZEVehOs0Ngwv"}, "type": "CREDIT_WALLET"}, {"creditPayload": {"balanceOrigin": "Epic", "count": 43, "currencyCode": "C3Vrl4hQiwOElTxp", "expireAt": "1994-07-09T00:00:00Z"}, "debitPayload": {"count": 92, "currencyCode": "Fh5sy9luqELsiP0B", "walletPlatform": "Nintendo"}, "fulFillItemPayload": {"count": 62, "entitlementCollectionId": "PjhETGKGtvX09Mfz", "entitlementOrigin": "Playstation", "itemIdentity": "0Fx7TZ4xJSiOltJY", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 48, "entitlementId": "BFna9p6Cn3GJeGpp"}, "type": "DEBIT_WALLET"}], "userId": "bbfR7ZXMzBNd0efU"}, {"operations": [{"creditPayload": {"balanceOrigin": "Nintendo", "count": 13, "currencyCode": "48qUWivYRqyW4QNN", "expireAt": "1990-10-13T00:00:00Z"}, "debitPayload": {"count": 59, "currencyCode": "j7xbSJfAtGSwcYqA", "walletPlatform": "Oculus"}, "fulFillItemPayload": {"count": 81, "entitlementCollectionId": "aM8YlvI1MaghmMMG", "entitlementOrigin": "System", "itemIdentity": "Fm6Bp6anW8pvzzUl", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 79, "entitlementId": "dMihu0P6AbWVnimN"}, "type": "FULFILL_ITEM"}, {"creditPayload": {"balanceOrigin": "Steam", "count": 75, "currencyCode": "xgUVtaodnV6HTIfy", "expireAt": "1983-11-03T00:00:00Z"}, "debitPayload": {"count": 14, "currencyCode": "esyTIGY2kIYTs4uu", "walletPlatform": "Playstation"}, "fulFillItemPayload": {"count": 64, "entitlementCollectionId": "xE42H1D8CHfpRANq", "entitlementOrigin": "GooglePlay", "itemIdentity": "zjiHeElNVoFkD6r5", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 97, "entitlementId": "wUq5ZTTex2SeFJEw"}, "type": "REVOKE_ENTITLEMENT"}, {"creditPayload": {"balanceOrigin": "GooglePlay", "count": 30, "currencyCode": "Ky3IsrKdyIAumIMK", "expireAt": "1996-04-18T00:00:00Z"}, "debitPayload": {"count": 50, "currencyCode": "4NBeFk5KRa937h1I", "walletPlatform": "Xbox"}, "fulFillItemPayload": {"count": 14, "entitlementCollectionId": "QNo1YBmbTxstGqT8", "entitlementOrigin": "Other", "itemIdentity": "QosX3XIowqqlaa11", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 34, "entitlementId": "ZOwEpgJTzxVQzhrr"}, "type": "DEBIT_WALLET"}], "userId": "xubKJoEAAeH7eG3m"}], "metadata": {"vLUniu9ytMTdjoKb": {}, "VPqAe4NRJEULgVXP": {}, "4OGIn55juuusI7vp": {}}, "needPreCheck": false, "transactionId": "dKio35VdqLe9WpRk", "type": "KNLS2Chde9DzvUKQ"}' \
    > test.out 2>&1
eval_tap $? 216 'Commit' test.out

#- 217 GetTradeHistoryByCriteria
samples/cli/sample-apps Platform getTradeHistoryByCriteria \
    --namespace $AB_NAMESPACE \
    --limit '41' \
    --offset '56' \
    --status 'FAILED' \
    --type 'ZNOxsKhCC1oaLTVW' \
    --userId 'pXlP5UWgnC6w9e7i' \
    > test.out 2>&1
eval_tap $? 217 'GetTradeHistoryByCriteria' test.out

#- 218 GetTradeHistoryByTransactionId
samples/cli/sample-apps Platform getTradeHistoryByTransactionId \
    --namespace $AB_NAMESPACE \
    --transactionId 'Am2gyxrLwWgQAPcU' \
    > test.out 2>&1
eval_tap $? 218 'GetTradeHistoryByTransactionId' test.out

#- 219 UnlockSteamUserAchievement
samples/cli/sample-apps Platform unlockSteamUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId '442YBfA9YKltyups' \
    --body '{"achievements": [{"id": "BPeEoTZbejQiqSTV", "value": 28}, {"id": "sxHZTMBvR6r5F1dO", "value": 30}, {"id": "w10k1X0BCSOjbqNT", "value": 86}], "steamUserId": "gLXOzOl8trhLBPJt"}' \
    > test.out 2>&1
eval_tap $? 219 'UnlockSteamUserAchievement' test.out

#- 220 GetXblUserAchievements
samples/cli/sample-apps Platform getXblUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId 'qhROf5htPXRZz67N' \
    --xboxUserId '9u0nZglSOgS7Tept' \
    > test.out 2>&1
eval_tap $? 220 'GetXblUserAchievements' test.out

#- 221 UpdateXblUserAchievement
samples/cli/sample-apps Platform updateXblUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'XX7pFlEHxZdXcA9n' \
    --body '{"achievements": [{"id": "LeRgCJHdxTsotEsE", "percentComplete": 5}, {"id": "tSMiw00STdoMdFlg", "percentComplete": 59}, {"id": "3nQpNjGKF4seqFRr", "percentComplete": 13}], "serviceConfigId": "LINo10a1kpqC9rw9", "titleId": "gxwztUBZdRLUFUdy", "xboxUserId": "dIpUdiowHoLMzqIf"}' \
    > test.out 2>&1
eval_tap $? 221 'UpdateXblUserAchievement' test.out

#- 222 AnonymizeCampaign
samples/cli/sample-apps Platform anonymizeCampaign \
    --namespace $AB_NAMESPACE \
    --userId 'DO2Cny39FLQWYI7I' \
    > test.out 2>&1
eval_tap $? 222 'AnonymizeCampaign' test.out

#- 223 AnonymizeEntitlement
samples/cli/sample-apps Platform anonymizeEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'Ekj74D2awyy25kEW' \
    > test.out 2>&1
eval_tap $? 223 'AnonymizeEntitlement' test.out

#- 224 AnonymizeFulfillment
samples/cli/sample-apps Platform anonymizeFulfillment \
    --namespace $AB_NAMESPACE \
    --userId 'g0OEuzLiFoVvRYqf' \
    > test.out 2>&1
eval_tap $? 224 'AnonymizeFulfillment' test.out

#- 225 AnonymizeIntegration
samples/cli/sample-apps Platform anonymizeIntegration \
    --namespace $AB_NAMESPACE \
    --userId 'AFSIdtihHiHfN8FU' \
    > test.out 2>&1
eval_tap $? 225 'AnonymizeIntegration' test.out

#- 226 AnonymizeOrder
samples/cli/sample-apps Platform anonymizeOrder \
    --namespace $AB_NAMESPACE \
    --userId 'ABQtbc1Fz2M1PlZ8' \
    > test.out 2>&1
eval_tap $? 226 'AnonymizeOrder' test.out

#- 227 AnonymizePayment
samples/cli/sample-apps Platform anonymizePayment \
    --namespace $AB_NAMESPACE \
    --userId 't24nyJ54MwyA5zjS' \
    > test.out 2>&1
eval_tap $? 227 'AnonymizePayment' test.out

#- 228 AnonymizeRevocation
samples/cli/sample-apps Platform anonymizeRevocation \
    --namespace $AB_NAMESPACE \
    --userId '8J9JAKGPr5G6g7pk' \
    > test.out 2>&1
eval_tap $? 228 'AnonymizeRevocation' test.out

#- 229 AnonymizeSubscription
samples/cli/sample-apps Platform anonymizeSubscription \
    --namespace $AB_NAMESPACE \
    --userId 'KWOOAfTtJoyXyEVG' \
    > test.out 2>&1
eval_tap $? 229 'AnonymizeSubscription' test.out

#- 230 AnonymizeWallet
samples/cli/sample-apps Platform anonymizeWallet \
    --namespace $AB_NAMESPACE \
    --userId 'ssZVAr8A5StTtaMd' \
    > test.out 2>&1
eval_tap $? 230 'AnonymizeWallet' test.out

#- 231 GetUserDLCByPlatform
samples/cli/sample-apps Platform getUserDLCByPlatform \
    --namespace $AB_NAMESPACE \
    --userId '1i48KKGTDoC8GFoz' \
    --type 'OCULUS' \
    > test.out 2>&1
eval_tap $? 231 'GetUserDLCByPlatform' test.out

#- 232 GetUserDLC
samples/cli/sample-apps Platform getUserDLC \
    --namespace $AB_NAMESPACE \
    --userId 'wTrkSZNYhb58xOTh' \
    --type 'OCULUS' \
    > test.out 2>&1
eval_tap $? 232 'GetUserDLC' test.out

#- 233 QueryUserEntitlements
samples/cli/sample-apps Platform queryUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'SrTJPcV6lsD8zGpe' \
    --activeOnly 'false' \
    --appType 'SOFTWARE' \
    --collectionId 'JaP97mREUEcUcceu' \
    --entitlementClazz 'OPTIONBOX' \
    --entitlementName 'IAmQdRCBwFEUzkGI' \
    --features '["yurDC3CXAKtzdyit", "bZwEz6ogn1gVAMUr", "04rWZ11Ti0iu9lHo"]' \
    --fuzzyMatchName 'false' \
    --itemId '["hlwtyozXOlo7mUSr", "XNOJOmOsmMUH1wcK", "MLCfpzVL1swQCUgN"]' \
    --limit '49' \
    --offset '14' \
    --origin 'Oculus' \
    > test.out 2>&1
eval_tap $? 233 'QueryUserEntitlements' test.out

#- 234 GrantUserEntitlement
samples/cli/sample-apps Platform grantUserEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'R3jzwA56zkSrV5Zb' \
    --body '[{"collectionId": "hOTpSOSDPjfgmE2r", "endDate": "1982-09-23T00:00:00Z", "grantedCode": "zNJhoYcnsi7toxAf", "itemId": "mUrTI8fRd4PGVm4x", "itemNamespace": "i7oO32Vm5sEmdj5o", "language": "RhY_DeTf_BI", "origin": "IOS", "quantity": 72, "region": "Yaz6NEs2xb0bhIav", "source": "REFERRAL_BONUS", "startDate": "1986-11-18T00:00:00Z", "storeId": "Ehjv2d7H6ZwhLt6k"}, {"collectionId": "pTkvXsQL81nI6EO0", "endDate": "1984-12-31T00:00:00Z", "grantedCode": "7Fcw8p4uuJtECHB5", "itemId": "VCiEv7SIewOPpby7", "itemNamespace": "t5sZrnZs2XJnnzyy", "language": "guR-JefY_Yr", "origin": "Playstation", "quantity": 37, "region": "hF4rjfVpYvipT38u", "source": "IAP", "startDate": "1981-11-09T00:00:00Z", "storeId": "KqPwEauJon7p0sW8"}, {"collectionId": "T6RnX28Zqhsb1709", "endDate": "1985-07-13T00:00:00Z", "grantedCode": "hhbzIamWl1yKl8PR", "itemId": "otuohrN36EPHPHku", "itemNamespace": "wurfTCYI3Y3zpCno", "language": "uY", "origin": "Nintendo", "quantity": 88, "region": "3L5DdtRXEZ6R1q8b", "source": "REWARD", "startDate": "1971-04-04T00:00:00Z", "storeId": "dcTadydEOiW9gyOX"}]' \
    > test.out 2>&1
eval_tap $? 234 'GrantUserEntitlement' test.out

#- 235 GetUserAppEntitlementByAppId
samples/cli/sample-apps Platform getUserAppEntitlementByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'ACSpoW4cPFT7ESPR' \
    --activeOnly 'true' \
    --appId '0TcKBdQNglxnFBhy' \
    > test.out 2>&1
eval_tap $? 235 'GetUserAppEntitlementByAppId' test.out

#- 236 QueryUserEntitlementsByAppType
samples/cli/sample-apps Platform queryUserEntitlementsByAppType \
    --namespace $AB_NAMESPACE \
    --userId 'd9zXSgJyc9W7JlYE' \
    --activeOnly 'false' \
    --limit '28' \
    --offset '9' \
    --appType 'SOFTWARE' \
    > test.out 2>&1
eval_tap $? 236 'QueryUserEntitlementsByAppType' test.out

#- 237 GetUserEntitlementByItemId
samples/cli/sample-apps Platform getUserEntitlementByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'a6ATswBzXSOOY8fm' \
    --activeOnly 'false' \
    --entitlementClazz 'ENTITLEMENT' \
    --platform 'DqfJ11XHisdSJNJq' \
    --itemId 'PqSR5Jp1EkpBQqwZ' \
    > test.out 2>&1
eval_tap $? 237 'GetUserEntitlementByItemId' test.out

#- 238 GetUserActiveEntitlementsByItemIds
samples/cli/sample-apps Platform getUserActiveEntitlementsByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'nSiSfL502izAIh4Y' \
    --ids '["3QAwoeoumoqLRaF8", "MZsn4Fkwjlu9oRVX", "UYp80dNcPQY4L61s"]' \
    --platform 'xSsZUsBs7vxIK3R4' \
    > test.out 2>&1
eval_tap $? 238 'GetUserActiveEntitlementsByItemIds' test.out

#- 239 GetUserEntitlementBySku
samples/cli/sample-apps Platform getUserEntitlementBySku \
    --namespace $AB_NAMESPACE \
    --userId 'szhO5rqv0D6nGhzX' \
    --activeOnly 'true' \
    --entitlementClazz 'CODE' \
    --platform 'yoq1DbzOjZx5QSL0' \
    --sku 'z07WUfTryRY5EtYW' \
    > test.out 2>&1
eval_tap $? 239 'GetUserEntitlementBySku' test.out

#- 240 ExistsAnyUserActiveEntitlement
samples/cli/sample-apps Platform existsAnyUserActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'V2c9B2wiVWQKD5gP' \
    --appIds '["cnj6YJodA0NNl5Uw", "c1k1zd35fV9WZKAT", "lqtapZq0nnTGFKrX"]' \
    --itemIds '["CGQ9sQzDYmXhpQZM", "4hzi47FB7nSKlu42", "1DXU86B8Vx8rbARr"]' \
    --platform 'y261AoWJxZDrP52H' \
    --skus '["zIYIOqHE0dL0BFve", "XXTyyoJHEbvpHOza", "eZ9KSBRb7dvBFUW7"]' \
    > test.out 2>&1
eval_tap $? 240 'ExistsAnyUserActiveEntitlement' test.out

#- 241 ExistsAnyUserActiveEntitlementByItemIds
samples/cli/sample-apps Platform existsAnyUserActiveEntitlementByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'kGAEAmyXqS33M5Fy' \
    --platform 'VILAZJjX2vsdkN4H' \
    --itemIds '["TERqbh7MdqtcDQGO", "l0SmuQEVnS3IYoyC", "mibgDnfNvBkYiYe5"]' \
    > test.out 2>&1
eval_tap $? 241 'ExistsAnyUserActiveEntitlementByItemIds' test.out

#- 242 GetUserAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform getUserAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'JqglvOgtZLN8XPIN' \
    --appId 'dyaKbYA19VrSmOSF' \
    > test.out 2>&1
eval_tap $? 242 'GetUserAppEntitlementOwnershipByAppId' test.out

#- 243 GetUserEntitlementOwnershipByItemId
samples/cli/sample-apps Platform getUserEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --userId '7YWVonsviLGo7m1k' \
    --entitlementClazz 'SUBSCRIPTION' \
    --platform 'AKJKppJbgmFRCB7V' \
    --itemId 'UCpS1VIbxOFE9gsT' \
    > test.out 2>&1
eval_tap $? 243 'GetUserEntitlementOwnershipByItemId' test.out

#- 244 GetUserEntitlementOwnershipByItemIds
samples/cli/sample-apps Platform getUserEntitlementOwnershipByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'pYHXMzMAKLoAES4w' \
    --ids '["jw7Em3zGN0W8lv74", "3DhX4tzk0SwFlVz0", "sRzcR7dZCH8t1eqW"]' \
    --platform 'm021hx65NSCnDsSm' \
    > test.out 2>&1
eval_tap $? 244 'GetUserEntitlementOwnershipByItemIds' test.out

#- 245 GetUserEntitlementOwnershipBySku
samples/cli/sample-apps Platform getUserEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --userId 'L9OXZVfu8E1xZnC7' \
    --entitlementClazz 'SUBSCRIPTION' \
    --platform 'lHYCHfVnYENRcnqb' \
    --sku '4p6GcEpwLIHswxmZ' \
    > test.out 2>&1
eval_tap $? 245 'GetUserEntitlementOwnershipBySku' test.out

#- 246 RevokeAllEntitlements
samples/cli/sample-apps Platform revokeAllEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'eq0x40dbhcaRumcc' \
    > test.out 2>&1
eval_tap $? 246 'RevokeAllEntitlements' test.out

#- 247 RevokeUserEntitlements
samples/cli/sample-apps Platform revokeUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'l4KnbaEpR71KVC29' \
    --entitlementIds 'KyK0gUEB5ardfpGh' \
    > test.out 2>&1
eval_tap $? 247 'RevokeUserEntitlements' test.out

#- 248 GetUserEntitlement
samples/cli/sample-apps Platform getUserEntitlement \
    --entitlementId 'WvJOFTZrhaW4MhGa' \
    --namespace $AB_NAMESPACE \
    --userId 'wL8HKH5VM3kccjgL' \
    > test.out 2>&1
eval_tap $? 248 'GetUserEntitlement' test.out

#- 249 UpdateUserEntitlement
samples/cli/sample-apps Platform updateUserEntitlement \
    --entitlementId 'ia0FpwbaEpeA2sp0' \
    --namespace $AB_NAMESPACE \
    --userId 'rRymbKnJYni2rXeR' \
    --body '{"collectionId": "Qx7kd7ZOUtO4gbad", "endDate": "1995-08-12T00:00:00Z", "nullFieldList": ["XUlZpsWOUC2m9i3h", "GKtsWcXrjvETkYWV", "YDU6Y0UDkEJsdh6y"], "origin": "Epic", "reason": "NvJKXGGIK7nw4hfd", "startDate": "1982-07-27T00:00:00Z", "status": "REVOKED", "useCount": 59}' \
    > test.out 2>&1
eval_tap $? 249 'UpdateUserEntitlement' test.out

#- 250 ConsumeUserEntitlement
samples/cli/sample-apps Platform consumeUserEntitlement \
    --entitlementId 'eFXqyLSKhR1HAW3N' \
    --namespace $AB_NAMESPACE \
    --userId '43WpTrRs2pbp3TLK' \
    --body '{"options": ["61IdoEphOK43faEI", "aTtXBfeoPanUmROE", "8RztB3VwpvkwEf65"], "platform": "WuGQ5PoT1mNxw6PW", "requestId": "f45kCJmXnvzMyXbD", "useCount": 94}' \
    > test.out 2>&1
eval_tap $? 250 'ConsumeUserEntitlement' test.out

#- 251 DisableUserEntitlement
samples/cli/sample-apps Platform disableUserEntitlement \
    --entitlementId '7YGrY8xKDkrB4o9i' \
    --namespace $AB_NAMESPACE \
    --userId 'seX2kV5UxI2uImdf' \
    > test.out 2>&1
eval_tap $? 251 'DisableUserEntitlement' test.out

#- 252 EnableUserEntitlement
samples/cli/sample-apps Platform enableUserEntitlement \
    --entitlementId 'KrgPyS6IfrhidjZP' \
    --namespace $AB_NAMESPACE \
    --userId 'pyWDzLbf0sxOlTuv' \
    > test.out 2>&1
eval_tap $? 252 'EnableUserEntitlement' test.out

#- 253 GetUserEntitlementHistories
samples/cli/sample-apps Platform getUserEntitlementHistories \
    --entitlementId 'sUnWFRiywQok6ttc' \
    --namespace $AB_NAMESPACE \
    --userId '2wN45Qi7nQHLh4RN' \
    > test.out 2>&1
eval_tap $? 253 'GetUserEntitlementHistories' test.out

#- 254 RevokeUserEntitlement
samples/cli/sample-apps Platform revokeUserEntitlement \
    --entitlementId 'D9LC12E0NEnZscQD' \
    --namespace $AB_NAMESPACE \
    --userId '2wPtE74U0XiEOF8P' \
    > test.out 2>&1
eval_tap $? 254 'RevokeUserEntitlement' test.out

#- 255 RevokeUserEntitlementByUseCount
samples/cli/sample-apps Platform revokeUserEntitlementByUseCount \
    --entitlementId '4f53D2imIMqMSy2i' \
    --namespace $AB_NAMESPACE \
    --userId 'ElhnkNXnfNeLKwMZ' \
    --body '{"reason": "BIw69JLLO9QAKnRN", "useCount": 8}' \
    > test.out 2>&1
eval_tap $? 255 'RevokeUserEntitlementByUseCount' test.out

#- 256 PreCheckRevokeUserEntitlementByUseCount
samples/cli/sample-apps Platform preCheckRevokeUserEntitlementByUseCount \
    --entitlementId 'oSHNd6StdjkxgjNY' \
    --namespace $AB_NAMESPACE \
    --userId 'AF8KL2RdAhexLQNu' \
    --quantity '21' \
    > test.out 2>&1
eval_tap $? 256 'PreCheckRevokeUserEntitlementByUseCount' test.out

#- 257 RevokeUseCount
eval_tap 0 257 'RevokeUseCount # SKIP deprecated' test.out

#- 258 SellUserEntitlement
samples/cli/sample-apps Platform sellUserEntitlement \
    --entitlementId 'UBHfKupMqjM9ulRf' \
    --namespace $AB_NAMESPACE \
    --userId 'Lv8NjYdguWAWiQRV' \
    --body '{"platform": "3AskPQZG53u1LtW2", "requestId": "RhtLVeCHWQwYSrJj", "useCount": 3}' \
    > test.out 2>&1
eval_tap $? 258 'SellUserEntitlement' test.out

#- 259 FulfillItem
samples/cli/sample-apps Platform fulfillItem \
    --namespace $AB_NAMESPACE \
    --userId 'elRdH3bs44gB18ap' \
    --body '{"duration": 21, "endDate": "1974-06-25T00:00:00Z", "entitlementCollectionId": "wzyhhVidlQlEYFJu", "entitlementOrigin": "Epic", "itemId": "WHms2Qh3mCY8AX49", "itemSku": "pQsNATPGybXUD67t", "language": "qpYfi6k4Pz2Zo3ZK", "metadata": {"NkoamMojZM4KWEwb": {}, "AdATMPv3Kz5frj62": {}, "aPEBLcTTOeAlQH4p": {}}, "order": {"currency": {"currencyCode": "1F2LQqjhHrwmTHI0", "currencySymbol": "I6naILowvn73M3ik", "currencyType": "REAL", "decimals": 83, "namespace": "Ls7JCGFAVpmschAM"}, "ext": {"eupsUVJ6ZQgev61v": {}, "IN6WB3VFs8zyaDmA": {}, "zBXpqhSG0IrHhIcM": {}}, "free": true}, "orderNo": "qU4NEvzkvRNXoslT", "origin": "Other", "overrideBundleItemQty": {"rsL1k5wtKNY20gBr": 52, "vOth8xbRVrEs0kad": 38, "pkHSt8Vm0ApNyg4w": 11}, "quantity": 100, "region": "8f6JKZ9atJy5vgm3", "source": "ACHIEVEMENT", "startDate": "1995-03-14T00:00:00Z", "storeId": "lBtANOZ4Zc9ahHHi"}' \
    > test.out 2>&1
eval_tap $? 259 'FulfillItem' test.out

#- 260 RedeemCode
samples/cli/sample-apps Platform redeemCode \
    --namespace $AB_NAMESPACE \
    --userId 'NFaU2pr7xzrgBSvj' \
    --body '{"code": "TgYI0CMlnV0y9WsK", "language": "JdW_Beeu-zb", "region": "BlhleG46gCmAHKUU"}' \
    > test.out 2>&1
eval_tap $? 260 'RedeemCode' test.out

#- 261 PreCheckFulfillItem
samples/cli/sample-apps Platform preCheckFulfillItem \
    --namespace $AB_NAMESPACE \
    --userId 'G7QY0shWHcbHORJg' \
    --body '{"itemId": "H59z5wM28FUD1UMF", "itemSku": "grhNlAJYmdiQH4yi", "quantity": 79}' \
    > test.out 2>&1
eval_tap $? 261 'PreCheckFulfillItem' test.out

#- 262 FulfillRewards
samples/cli/sample-apps Platform fulfillRewards \
    --namespace $AB_NAMESPACE \
    --userId 'rlWcNtzJUSAAXMpY' \
    --body '{"entitlementCollectionId": "bzbUhvJQ0YlzPjzJ", "entitlementOrigin": "GooglePlay", "metadata": {"jXQDIZy6TjfblLsZ": {}, "8sfANpBssuavZZBI": {}, "0VyRbAXntgVgIJON": {}}, "origin": "Steam", "rewards": [{"currency": {"currencyCode": "n8TIzU4eQZyOemE5", "namespace": "HxfPh2qFj8UsnZoh"}, "item": {"itemId": "Ax0rPJhy1ka4UMvP", "itemSku": "7CHldMkzMOCTAQwC", "itemType": "cniysL3P4u0hI9V3"}, "quantity": 30, "type": "CURRENCY"}, {"currency": {"currencyCode": "2NtO7GMzsRqpt4EE", "namespace": "IOdhdi5jRVe7uj02"}, "item": {"itemId": "rtRfv8vGBjQRLmlh", "itemSku": "ZqtFgl1QrEV5XqHS", "itemType": "IWwzC0ScsETXSswP"}, "quantity": 46, "type": "CURRENCY"}, {"currency": {"currencyCode": "py5hcn5XzU3Z8sZK", "namespace": "xubXwSeGyPbzunur"}, "item": {"itemId": "M40vaFS0Ne7vgjdf", "itemSku": "scR5OEI0yxGDd7da", "itemType": "NXDprdOC5bP5ZpSe"}, "quantity": 75, "type": "ITEM"}], "source": "REWARD", "transactionId": "zCYOc0ldaxqnGZIk"}' \
    > test.out 2>&1
eval_tap $? 262 'FulfillRewards' test.out

#- 263 QueryUserIAPOrders
samples/cli/sample-apps Platform queryUserIAPOrders \
    --namespace $AB_NAMESPACE \
    --userId 'tuu0DSNFR0UyYFXy' \
    --endTime '1C5YfuUS2PJz0pw8' \
    --limit '35' \
    --offset '29' \
    --productId 'PnQaj0IFYjk3kuec' \
    --startTime '7qM3paNTMH7B6QdR' \
    --status 'FAILED' \
    --type 'STEAM' \
    > test.out 2>&1
eval_tap $? 263 'QueryUserIAPOrders' test.out

#- 264 QueryAllUserIAPOrders
samples/cli/sample-apps Platform queryAllUserIAPOrders \
    --namespace $AB_NAMESPACE \
    --userId 'sVuD2SfI399rvntZ' \
    > test.out 2>&1
eval_tap $? 264 'QueryAllUserIAPOrders' test.out

#- 265 QueryUserIAPConsumeHistory
samples/cli/sample-apps Platform queryUserIAPConsumeHistory \
    --namespace $AB_NAMESPACE \
    --userId 'tEhrS0cuPFM6kaNP' \
    --endTime '9WUwSnX4LvuTJOJb' \
    --limit '42' \
    --offset '76' \
    --startTime 'x3qNLqovqADXP47C' \
    --status 'SUCCESS' \
    --type 'XBOX' \
    > test.out 2>&1
eval_tap $? 265 'QueryUserIAPConsumeHistory' test.out

#- 266 MockFulfillIAPItem
samples/cli/sample-apps Platform mockFulfillIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'qK3GIVdFGxr0Xt5I' \
    --body '{"itemIdentityType": "ITEM_SKU", "language": "PHlW-yuqi", "productId": "lDl0Nt8OGBoa1q12", "region": "byxLNZtgdLzAf7Hu", "transactionId": "c7z1FSWh9HA3EQdQ", "type": "TWITCH"}' \
    > test.out 2>&1
eval_tap $? 266 'MockFulfillIAPItem' test.out

#- 267 QueryUserOrders
samples/cli/sample-apps Platform queryUserOrders \
    --namespace $AB_NAMESPACE \
    --userId 'HBO7SISUiAgGoc4H' \
    --itemId 'k9gRTxbLM9ZIww5p' \
    --limit '42' \
    --offset '84' \
    --status 'REFUNDED' \
    > test.out 2>&1
eval_tap $? 267 'QueryUserOrders' test.out

#- 268 AdminCreateUserOrder
samples/cli/sample-apps Platform adminCreateUserOrder \
    --namespace $AB_NAMESPACE \
    --userId 'cfwWhwN4nFgtSWrV' \
    --body '{"currencyCode": "E9oi7fGoWTMcFsR9", "currencyNamespace": "t5PxnRA6Y8gLPE33", "discountedPrice": 67, "entitlementPlatform": "Oculus", "ext": {"rkPK22U2AmrFMlt9": {}, "fGLsCwQzi0u9Z8jA": {}, "CF3y7p0UlOG3WGK2": {}}, "itemId": "Zpe5lhJqcrmmApGn", "language": "yDoekHAuGZ2FG3Ji", "options": {"skipPriceValidation": false}, "platform": "GooglePlay", "price": 61, "quantity": 28, "region": "zH3ycgHl4JVy7L0e", "returnUrl": "DJ1y5kEDRyO6mbHA", "sandbox": false, "sectionId": "z9bD81obCzPWkLNl"}' \
    > test.out 2>&1
eval_tap $? 268 'AdminCreateUserOrder' test.out

#- 269 CountOfPurchasedItem
samples/cli/sample-apps Platform countOfPurchasedItem \
    --namespace $AB_NAMESPACE \
    --userId 'jzz2KnUICkQaP5sh' \
    --itemId 'VKtf44VQmmCaSBpa' \
    > test.out 2>&1
eval_tap $? 269 'CountOfPurchasedItem' test.out

#- 270 GetUserOrder
samples/cli/sample-apps Platform getUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'oxFjkVjfNsWEtcnR' \
    --userId '9ThkIXpiHX0UeWuC' \
    > test.out 2>&1
eval_tap $? 270 'GetUserOrder' test.out

#- 271 UpdateUserOrderStatus
samples/cli/sample-apps Platform updateUserOrderStatus \
    --namespace $AB_NAMESPACE \
    --orderNo '837A28XFkz6X2awN' \
    --userId 'WhI2FHQN6OyQOqrJ' \
    --body '{"status": "DELETED", "statusReason": "iaiMXjirf5Zxp4HD"}' \
    > test.out 2>&1
eval_tap $? 271 'UpdateUserOrderStatus' test.out

#- 272 FulfillUserOrder
samples/cli/sample-apps Platform fulfillUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'wmS40aESN5svTXja' \
    --userId 'ZX7w9UNzWGoolkSI' \
    > test.out 2>&1
eval_tap $? 272 'FulfillUserOrder' test.out

#- 273 GetUserOrderGrant
samples/cli/sample-apps Platform getUserOrderGrant \
    --namespace $AB_NAMESPACE \
    --orderNo 'BcGkEzjFxJWbWF4D' \
    --userId 'ncXHxKANDiyHhzbi' \
    > test.out 2>&1
eval_tap $? 273 'GetUserOrderGrant' test.out

#- 274 GetUserOrderHistories
samples/cli/sample-apps Platform getUserOrderHistories \
    --namespace $AB_NAMESPACE \
    --orderNo 'KHj75DGlvtJpbu9B' \
    --userId 'Xr7309OwZPebJJiA' \
    > test.out 2>&1
eval_tap $? 274 'GetUserOrderHistories' test.out

#- 275 ProcessUserOrderNotification
samples/cli/sample-apps Platform processUserOrderNotification \
    --namespace $AB_NAMESPACE \
    --orderNo 'R7KFcn07slKhfvAw' \
    --userId 'iFECXKn89kqUE0xj' \
    --body '{"additionalData": {"cardSummary": "IhSEXvICyhhCfcPU"}, "authorisedTime": "1999-09-09T00:00:00Z", "chargebackReversedTime": "1973-11-06T00:00:00Z", "chargebackTime": "1994-06-19T00:00:00Z", "chargedTime": "1998-10-09T00:00:00Z", "createdTime": "1999-05-04T00:00:00Z", "currency": {"currencyCode": "bN08034h5lxe2Xp1", "currencySymbol": "Eu492rRggsdhoySh", "currencyType": "VIRTUAL", "decimals": 28, "namespace": "B2oEzTojlaeSXjHI"}, "customParameters": {"wYnSIuimfgJzOTMo": {}, "0F8yDOh2HkFvN4mr": {}, "kDFlfW4PnBUJbijS": {}}, "extOrderNo": "rk843V0A1i4nt44v", "extTxId": "Xk9DqDmF3ORn21y9", "extUserId": "yzSuUrz25pTwHKGA", "issuedAt": "1983-02-20T00:00:00Z", "metadata": {"o5NZ032mHVml5mjp": "anxbV87S0UlFqZ9U", "d4ABANKkv5eqMjip": "NhH6RXdJdijCM6u0", "4NPh52D7cSI9p3f8": "WLshOVK20pR9iBJQ"}, "namespace": "EA8kzRP7NyzAuCVE", "nonceStr": "J9V9q5J3Ge1vNAIx", "paymentMethod": "x71jSGMjBSu0FmKh", "paymentMethodFee": 68, "paymentOrderNo": "egp9ZC4hwU6dHQPa", "paymentProvider": "PAYPAL", "paymentProviderFee": 95, "paymentStationUrl": "HAn9WmoXIZCJWMo0", "price": 9, "refundedTime": "1980-07-18T00:00:00Z", "salesTax": 59, "sandbox": false, "sku": "kIR1C6T71pxYe99V", "status": "INIT", "statusReason": "GPfv1zShXGq0dd7l", "subscriptionId": "ytMK2jpiGIDy0exR", "subtotalPrice": 57, "targetNamespace": "PtYm5wQv3HsTieVA", "targetUserId": "xI0LG2bln2bc732G", "tax": 36, "totalPrice": 13, "totalTax": 92, "txEndTime": "1996-07-11T00:00:00Z", "type": "qhO1kbDWQImz3ho4", "userId": "BkwxskBfzV76x8YJ", "vat": 43}' \
    > test.out 2>&1
eval_tap $? 275 'ProcessUserOrderNotification' test.out

#- 276 DownloadUserOrderReceipt
samples/cli/sample-apps Platform downloadUserOrderReceipt \
    --namespace $AB_NAMESPACE \
    --orderNo 'xrvZZUepADQhwtdi' \
    --userId 'JQ1z3PlC4Ke2P89S' \
    > test.out 2>&1
eval_tap $? 276 'DownloadUserOrderReceipt' test.out

#- 277 CreateUserPaymentOrder
samples/cli/sample-apps Platform createUserPaymentOrder \
    --namespace $AB_NAMESPACE \
    --userId 'Z39lKVc4JDzomTXK' \
    --body '{"currencyCode": "4cnPt7MnV7IMoscg", "currencyNamespace": "aWocoSrNvpUnRpg0", "customParameters": {"B9fklqOjewySfUwd": {}, "HD8tQig1mlJhQCNw": {}, "mkSRmH8cMPEIo2GI": {}}, "description": "tukX8Mm72PVrg4eM", "extOrderNo": "MgcEtjHhd7TScrLQ", "extUserId": "vuOaTrfvGg4QEo4v", "itemType": "SUBSCRIPTION", "language": "Fo", "metadata": {"xqydXJURnF4gxgjn": "Zp5Kg2Z1vxnMN3Ir", "viVhA40nKAcdlkzA": "zFnhX0SqY6B45Or1", "RYql1WpFBk0njJDy": "qBwIxNSj1yzfHuO8"}, "notifyUrl": "YMhEOmVi3xdsuyww", "omitNotification": true, "platform": "aUAtU20ysZs5ueKy", "price": 85, "recurringPaymentOrderNo": "EiHlPk765sYQNVpf", "region": "U4iHC4q14TATT0nS", "returnUrl": "L4SCXeS2d5U3dwr3", "sandbox": true, "sku": "1c4JKbjpB22IvtQY", "subscriptionId": "G8rsAO9DK3bYMRyU", "title": "mK0sddHjvAhJe6O5"}' \
    > test.out 2>&1
eval_tap $? 277 'CreateUserPaymentOrder' test.out

#- 278 RefundUserPaymentOrder
samples/cli/sample-apps Platform refundUserPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo '4u8DHqfCfdaqf0Wl' \
    --userId 'PynFzwjrrv8lDkSV' \
    --body '{"description": "jSxnnhOss48cZokY"}' \
    > test.out 2>&1
eval_tap $? 278 'RefundUserPaymentOrder' test.out

#- 279 ApplyUserRedemption
samples/cli/sample-apps Platform applyUserRedemption \
    --namespace $AB_NAMESPACE \
    --userId 'a2PtO8gDAO3mSvdH' \
    --body '{"code": "AG6TSMrgwuS7zxJw", "orderNo": "Xl5g9iQGIGGPVwkg"}' \
    > test.out 2>&1
eval_tap $? 279 'ApplyUserRedemption' test.out

#- 280 DoRevocation
samples/cli/sample-apps Platform doRevocation \
    --namespace $AB_NAMESPACE \
    --userId 'o40m8s5OLGyQYERm' \
    --body '{"meta": {"YFUMcH1EHG3JPhTF": {}, "5jGhpWXFNQJiZVQx": {}, "9LPHPUeKlgFxWzfh": {}}, "revokeEntries": [{"currency": {"balanceOrigin": "Steam", "currencyCode": "VXylJJdhxG6Jg1q3", "namespace": "ZDxLNBRkBq3IndUM"}, "entitlement": {"entitlementId": "NhDGuerfd4IM2SQi"}, "item": {"entitlementOrigin": "Other", "itemIdentity": "QTtjpcEOFM3cRKPJ", "itemIdentityType": "ITEM_ID", "origin": "System"}, "quantity": 96, "type": "ITEM"}, {"currency": {"balanceOrigin": "Playstation", "currencyCode": "csRKbWNkC6nq9b7l", "namespace": "zbrLeTO1ZxKuapMn"}, "entitlement": {"entitlementId": "nxezfMgTpeXzWlN0"}, "item": {"entitlementOrigin": "System", "itemIdentity": "tWIZvPMKRkCRpY1F", "itemIdentityType": "ITEM_SKU", "origin": "GooglePlay"}, "quantity": 35, "type": "CURRENCY"}, {"currency": {"balanceOrigin": "Steam", "currencyCode": "LjpnhKduTnaGimae", "namespace": "GwWVNkdwvl76CEoB"}, "entitlement": {"entitlementId": "9DPGMYiUfReVVzRI"}, "item": {"entitlementOrigin": "Nintendo", "itemIdentity": "kppVS47KM5Uh5xFa", "itemIdentityType": "ITEM_SKU", "origin": "IOS"}, "quantity": 42, "type": "ENTITLEMENT"}], "source": "ORDER", "transactionId": "R7WMZEln6y3S4xK5"}' \
    > test.out 2>&1
eval_tap $? 280 'DoRevocation' test.out

#- 281 RegisterXblSessions
samples/cli/sample-apps Platform registerXblSessions \
    --namespace $AB_NAMESPACE \
    --userId 'AUB7iquUeRSqdPz1' \
    --body '{"gameSessionId": "xLAu2R5vlPD6D3k8", "payload": {"8SqfT41eCG58HwRL": {}, "rGkMV9ewyrq0Ezzv": {}, "hXb6vFWfJYb32bwc": {}}, "scid": "FGN3GkrIHdAxxxAp", "sessionTemplateName": "gw6kFyvBdbCQ6S4i"}' \
    > test.out 2>&1
eval_tap $? 281 'RegisterXblSessions' test.out

#- 282 QueryUserSubscriptions
samples/cli/sample-apps Platform queryUserSubscriptions \
    --namespace $AB_NAMESPACE \
    --userId 'FL9MmCQdjiYg1hQn' \
    --chargeStatus 'NEVER' \
    --itemId 'btRdJdiskj9R07OM' \
    --limit '69' \
    --offset '45' \
    --sku 'sJSYKvpbdhK9M4Tt' \
    --status 'CANCELLED' \
    --subscribedBy 'PLATFORM' \
    > test.out 2>&1
eval_tap $? 282 'QueryUserSubscriptions' test.out

#- 283 GetUserSubscriptionActivities
samples/cli/sample-apps Platform getUserSubscriptionActivities \
    --namespace $AB_NAMESPACE \
    --userId 'NCfh4lGbjQCe8TCo' \
    --excludeSystem 'true' \
    --limit '85' \
    --offset '12' \
    --subscriptionId 'Yjz2fHHbLtHdMamy' \
    > test.out 2>&1
eval_tap $? 283 'GetUserSubscriptionActivities' test.out

#- 284 PlatformSubscribeSubscription
samples/cli/sample-apps Platform platformSubscribeSubscription \
    --namespace $AB_NAMESPACE \
    --userId 'f9foo82XeMCKUZxa' \
    --body '{"grantDays": 34, "itemId": "R0lKSoWhdlaJRNBF", "language": "jpRgaDxEKLvfn1Z0", "reason": "7LOLelx3nNJ3EVoE", "region": "m20ZdfqmHxAMEgn1", "source": "kb3waDOKLgqeVlX8"}' \
    > test.out 2>&1
eval_tap $? 284 'PlatformSubscribeSubscription' test.out

#- 285 CheckUserSubscriptionSubscribableByItemId
samples/cli/sample-apps Platform checkUserSubscriptionSubscribableByItemId \
    --namespace $AB_NAMESPACE \
    --userId '0l3uz78xdL87eQhi' \
    --itemId 'UUR4FX7Q6eDnURtf' \
    > test.out 2>&1
eval_tap $? 285 'CheckUserSubscriptionSubscribableByItemId' test.out

#- 286 GetUserSubscription
samples/cli/sample-apps Platform getUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'Fe2LHCnowdXKj147' \
    --userId 'FDVHDl3PKX8vyvBq' \
    > test.out 2>&1
eval_tap $? 286 'GetUserSubscription' test.out

#- 287 DeleteUserSubscription
samples/cli/sample-apps Platform deleteUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'dljS0rD5wp3U6P9g' \
    --userId 'IITpTWw6wVGXl4Bs' \
    > test.out 2>&1
eval_tap $? 287 'DeleteUserSubscription' test.out

#- 288 CancelSubscription
samples/cli/sample-apps Platform cancelSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'ddPhkcvb78iVgq8M' \
    --userId 'rkGuNvJAlhEBTwrz' \
    --force 'true' \
    --body '{"immediate": false, "reason": "MuzbZcoPIT30gXpw"}' \
    > test.out 2>&1
eval_tap $? 288 'CancelSubscription' test.out

#- 289 GrantDaysToSubscription
samples/cli/sample-apps Platform grantDaysToSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId '9xWULq0qU7TKHNbN' \
    --userId 'gxSUrbny6jkgNAti' \
    --body '{"grantDays": 26, "reason": "7iYUFzpc739zH3JC"}' \
    > test.out 2>&1
eval_tap $? 289 'GrantDaysToSubscription' test.out

#- 290 GetUserSubscriptionBillingHistories
samples/cli/sample-apps Platform getUserSubscriptionBillingHistories \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'lIyiFXidDuzFznHH' \
    --userId 'DDU3KQwHAlhlHi9Y' \
    --excludeFree 'true' \
    --limit '19' \
    --offset '16' \
    > test.out 2>&1
eval_tap $? 290 'GetUserSubscriptionBillingHistories' test.out

#- 291 ProcessUserSubscriptionNotification
samples/cli/sample-apps Platform processUserSubscriptionNotification \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'bqhc93HgEVHSZFXP' \
    --userId 'iGac0driTWHNA7au' \
    --body '{"additionalData": {"cardSummary": "onFFzSIBwwfIxYg8"}, "authorisedTime": "1976-07-11T00:00:00Z", "chargebackReversedTime": "1992-08-06T00:00:00Z", "chargebackTime": "1997-03-13T00:00:00Z", "chargedTime": "1984-01-25T00:00:00Z", "createdTime": "1985-09-09T00:00:00Z", "currency": {"currencyCode": "Gf1y5IJe8azYZeZf", "currencySymbol": "5Mm75eoRa1S10MK0", "currencyType": "VIRTUAL", "decimals": 39, "namespace": "r01Dw1Ez8rOrCF8I"}, "customParameters": {"ZM9Fx9G4zTJMkny3": {}, "p8GfxsUzyKlrHJA8": {}, "s8g58LJUh6mK6vDF": {}}, "extOrderNo": "jfvDlu1uGuvO7vvt", "extTxId": "HQzSH7cDjwGbchOe", "extUserId": "zUus1Roe2zRaPqXT", "issuedAt": "1998-04-29T00:00:00Z", "metadata": {"2dSmoP5EDF90vnxa": "D9ItESdwNKut4hqM", "JDBxVJTkz8pFW4VE": "UpgZFj9j4dxFMt6O", "GjwALZlBWtshciZ7": "zkIMh3QZbGocPhAp"}, "namespace": "pvIlTwShiaoDuMoL", "nonceStr": "6fqdF8VhEU3LOvM0", "paymentMethod": "hYEeKODvMSBC61BA", "paymentMethodFee": 12, "paymentOrderNo": "gb7aAQogOaNaveIA", "paymentProvider": "PAYPAL", "paymentProviderFee": 71, "paymentStationUrl": "f2U8GcMeyl0NyR7o", "price": 81, "refundedTime": "1997-12-06T00:00:00Z", "salesTax": 48, "sandbox": false, "sku": "2a4VoqUP6KQmK2qN", "status": "REFUND_FAILED", "statusReason": "shlFkFJzfwsLmi0x", "subscriptionId": "AzzI0JgSVUAHUL8E", "subtotalPrice": 24, "targetNamespace": "vcX7hhr3Oyg84cGC", "targetUserId": "p56IXoCN9IU0bkLs", "tax": 51, "totalPrice": 81, "totalTax": 49, "txEndTime": "1983-03-01T00:00:00Z", "type": "wPaXEgooEtRHV3oY", "userId": "WYoIOXE1LMIIpzQe", "vat": 11}' \
    > test.out 2>&1
eval_tap $? 291 'ProcessUserSubscriptionNotification' test.out

#- 292 AcquireUserTicket
samples/cli/sample-apps Platform acquireUserTicket \
    --boothName '5mJIulOr5xIl0xhG' \
    --namespace $AB_NAMESPACE \
    --userId 'IiTL7d5vW7RYgkAZ' \
    --body '{"count": 75, "orderNo": "6kUbLHWVOEbv9lIH"}' \
    > test.out 2>&1
eval_tap $? 292 'AcquireUserTicket' test.out

#- 293 QueryUserCurrencyWallets
samples/cli/sample-apps Platform queryUserCurrencyWallets \
    --namespace $AB_NAMESPACE \
    --userId 'VxeVOY3TVVM0w8Pi' \
    > test.out 2>&1
eval_tap $? 293 'QueryUserCurrencyWallets' test.out

#- 294 DebitUserWalletByCurrencyCode
samples/cli/sample-apps Platform debitUserWalletByCurrencyCode \
    --currencyCode 'Xa6ZKuh0dYSYBTrm' \
    --namespace $AB_NAMESPACE \
    --userId 'Nee3CvnC5lE15YMl' \
    --body '{"allowOverdraft": false, "amount": 83, "balanceOrigin": "Xbox", "balanceSource": "PAYMENT", "metadata": {"edc1tFw23E4XnmwV": {}, "uF2mz5SGUN7gCQOE": {}, "1Ss5GwP4YVbfOTsL": {}}, "reason": "D43btBiRrPlIOCYw"}' \
    > test.out 2>&1
eval_tap $? 294 'DebitUserWalletByCurrencyCode' test.out

#- 295 ListUserCurrencyTransactions
samples/cli/sample-apps Platform listUserCurrencyTransactions \
    --currencyCode '0RKKHfw0oVLT6SHV' \
    --namespace $AB_NAMESPACE \
    --userId 'F944FO8vaAcG8QiR' \
    --limit '57' \
    --offset '69' \
    > test.out 2>&1
eval_tap $? 295 'ListUserCurrencyTransactions' test.out

#- 296 CheckBalance
samples/cli/sample-apps Platform checkBalance \
    --currencyCode 'N3cEmBH8giiLB0xn' \
    --namespace $AB_NAMESPACE \
    --userId 'Helr2NOq3vcFTwct' \
    --request '{"amount": 4, "debitBalanceSource": "IAP_REVOCATION", "metadata": {"3NSoECwRfNevvu2R": {}, "Sob76pRKMADojhdo": {}, "jsYrLL6kUNGUW7WI": {}}, "reason": "senlftnhbSh2sUjB", "walletPlatform": "Nintendo"}' \
    > test.out 2>&1
eval_tap $? 296 'CheckBalance' test.out

#- 297 CheckWallet
eval_tap 0 297 'CheckWallet # SKIP deprecated' test.out

#- 298 CreditUserWallet
samples/cli/sample-apps Platform creditUserWallet \
    --currencyCode 'nxPHGKvTyxSJds4e' \
    --namespace $AB_NAMESPACE \
    --userId 'kvVG6KtKQUWRAIkn' \
    --body '{"amount": 10, "expireAt": "1980-06-02T00:00:00Z", "metadata": {"htIRuJIXQKT68KvS": {}, "aD7wXgLrU0ctfaKI": {}, "gvJ3WgiLWYUL4Qg3": {}}, "origin": "Xbox", "reason": "8lc0JYn4myxQ9X5W", "source": "TRADE"}' \
    > test.out 2>&1
eval_tap $? 298 'CreditUserWallet' test.out

#- 299 DebitByWalletPlatform
samples/cli/sample-apps Platform debitByWalletPlatform \
    --currencyCode 'm8rj2CpeBTEr1xgx' \
    --namespace $AB_NAMESPACE \
    --userId 'VeCcE59EHvCJvYC3' \
    --request '{"amount": 11, "debitBalanceSource": "ORDER_REVOCATION", "metadata": {"n5ru3LLpAWZVVt41": {}, "qSFy1nbT8usI5eIW": {}, "HvdZknBFN7n77aJX": {}}, "reason": "Kt5f0IoPWiA19Dy7", "walletPlatform": "Other"}' \
    > test.out 2>&1
eval_tap $? 299 'DebitByWalletPlatform' test.out

#- 300 PayWithUserWallet
samples/cli/sample-apps Platform payWithUserWallet \
    --currencyCode 'X8qg35wGEvYTjiW1' \
    --namespace $AB_NAMESPACE \
    --userId '5ywmQqLZjH45wemB' \
    --body '{"amount": 52, "metadata": {"zkvy9FBLqYde9fIB": {}, "383oMw9St508kbrC": {}, "SIK532ExO0d0I2yg": {}}, "walletPlatform": "Epic"}' \
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
    --storeId 'r8Vha28AlNsdUh3D' \
    > test.out 2>&1
eval_tap $? 306 'ListViews' test.out

#- 307 CreateView
samples/cli/sample-apps Platform createView \
    --namespace $AB_NAMESPACE \
    --storeId 'GxR0gt1CnNpn2HYZ' \
    --body '{"displayOrder": 6, "localizations": {"xYhE78aNXTRb64ao": {"description": "i5QzmeqL3suzZ9to", "localExt": {"cT1DTAeGoUN5t1U0": {}, "VKXlVRMa906FOcbe": {}, "LMysYRgJhtMpJiRB": {}}, "longDescription": "hjXTBkhR3vEBcwsL", "title": "jvSw3e9gzDuXPfk0"}, "Wy3a7QHIRJw37gFQ": {"description": "EBMi8yzbJpX5yYHM", "localExt": {"80hOPJpBaQHF0tCA": {}, "kZZG8ZUAa7fGomH5": {}, "eaecK3omyiT7iEWE": {}}, "longDescription": "F0LJZaLmKVYDGurt", "title": "hgakgduUhNhJGd0V"}, "b1U1PZxP55ZKYNY9": {"description": "PWlQSn3EJ2FhNgHF", "localExt": {"xyVPxbAExBle7Qbh": {}, "ngZYbr7jVRsMR8pG": {}, "MBz2PWvNcrFMB8Tm": {}}, "longDescription": "KWShTeI74zQl3IcR", "title": "UT9YNMEOs1THZpYY"}}, "name": "sBb5e25Is6fBZNbT"}' \
    > test.out 2>&1
eval_tap $? 307 'CreateView' test.out

#- 308 GetView
samples/cli/sample-apps Platform getView \
    --namespace $AB_NAMESPACE \
    --viewId 'YvVrwuHzcAclY7Dv' \
    --storeId 'eVcLhffsi3gIp4V3' \
    > test.out 2>&1
eval_tap $? 308 'GetView' test.out

#- 309 UpdateView
samples/cli/sample-apps Platform updateView \
    --namespace $AB_NAMESPACE \
    --viewId 'WBof5ZvjYWCOpGqv' \
    --storeId 'pNIDWvg9A8cYPTr4' \
    --body '{"displayOrder": 49, "localizations": {"8YV64MuMzxzypJF6": {"description": "qPZtypujPSDyfBVw", "localExt": {"s1zI6wZtk1JnMWE4": {}, "pv1JZljU8yXooAnY": {}, "XYAEDpLFntqA2xPJ": {}}, "longDescription": "oV7blORzR5jvHcXc", "title": "G9eMdOOqO7MEpI1G"}, "2UlNacmi2bCFYmKH": {"description": "uwTxQic56IlTFfJD", "localExt": {"jS9N7fzhZq7fle24": {}, "tsvyFXLAhSLAo0aG": {}, "F9Ax29XP8TBEaDoR": {}}, "longDescription": "55MqRRG1VZiRbJ56", "title": "u2TRBhnpCMjK9fZa"}, "iHUFLwutrEFt01rH": {"description": "3AnTcP80QQq7ht19", "localExt": {"PVt2N6TuVIrl4925": {}, "TCeN7Hn2dkBK0MeM": {}, "kUBMY6LSHMXe9nH2": {}}, "longDescription": "sDlYUt2z6IKQrU64", "title": "EmIfC7awqZd9FZjB"}}, "name": "OtoGfhzJD0agv3Gx"}' \
    > test.out 2>&1
eval_tap $? 309 'UpdateView' test.out

#- 310 DeleteView
samples/cli/sample-apps Platform deleteView \
    --namespace $AB_NAMESPACE \
    --viewId 't2QOUTGoHHoAd2NZ' \
    --storeId 'deDDW6XBzbODRdxo' \
    > test.out 2>&1
eval_tap $? 310 'DeleteView' test.out

#- 311 QueryWallets
eval_tap 0 311 'QueryWallets # SKIP deprecated' test.out

#- 312 BulkCredit
samples/cli/sample-apps Platform bulkCredit \
    --namespace $AB_NAMESPACE \
    --body '[{"creditRequest": {"amount": 25, "expireAt": "1996-08-13T00:00:00Z", "metadata": {"e1tFO0VKoUHv4HBd": {}, "wGI53Pj0TmhcM3e8": {}, "WebZsxDJN1KNjkIz": {}}, "origin": "Nintendo", "reason": "EaoASt1P9cx1yPt5", "source": "REFERRAL_BONUS"}, "currencyCode": "k7T8z6UkwlwWBF2p", "userIds": ["KSFjmedsChLTkWG3", "6DS7kADszYGrpZ7l", "mzjtsYLnkgcDwqJP"]}, {"creditRequest": {"amount": 89, "expireAt": "1998-11-06T00:00:00Z", "metadata": {"PXwjbgpU0SObwkYd": {}, "k9kINd9X08R8BEcs": {}, "dULfiP0IYOp4tmmJ": {}}, "origin": "Steam", "reason": "PcXaybBMMs2hPj62", "source": "SELL_BACK"}, "currencyCode": "MLr4AnbWTDAq5cvH", "userIds": ["WAgoxaNu042ERm4w", "flElT7cUOvIkoryt", "oACyr5N3fUxMe2yb"]}, {"creditRequest": {"amount": 52, "expireAt": "1988-03-25T00:00:00Z", "metadata": {"luSZdFWOPKNDm4tC": {}, "rGssM33LhJFZ5CWA": {}, "hiKQOy4cKVLHLq4F": {}}, "origin": "Nintendo", "reason": "sbITlQ1y2vKnhUZj", "source": "REDEEM_CODE"}, "currencyCode": "5pt6IHDsd5lZ8ZZi", "userIds": ["Un37tYpSg3NuWxZu", "jqRV3B8mVoBHukvq", "IYJtwtj8JKgRD14c"]}]' \
    > test.out 2>&1
eval_tap $? 312 'BulkCredit' test.out

#- 313 BulkDebit
samples/cli/sample-apps Platform bulkDebit \
    --namespace $AB_NAMESPACE \
    --body '[{"currencyCode": "GjiJCopGUra4nYSN", "request": {"allowOverdraft": false, "amount": 32, "balanceOrigin": "Epic", "balanceSource": "OTHER", "metadata": {"nlTdd1LOYTbapnxV": {}, "UUUWezasNtmsFIzt": {}, "IrVQmJY3LtZulj2M": {}}, "reason": "S2afp1dzOQp7OaKl"}, "userIds": ["1hECQTb97hQuDEfl", "ibSQ1VC2DlAtlb1g", "VAcwc7CJ0hSMDfsz"]}, {"currencyCode": "wwcyVU5clKMnbaCz", "request": {"allowOverdraft": false, "amount": 80, "balanceOrigin": "Steam", "balanceSource": "ORDER_REVOCATION", "metadata": {"soXPxIhQGTlqR7Bt": {}, "0dLDKihjiHzc6ng4": {}, "8AsfJeU3wc9f4wQY": {}}, "reason": "Awg1akiAkBtj7gSu"}, "userIds": ["RCLk6kG88pohuC7m", "REhxnZqv4ZC4jldy", "M6papRfAiqECjQKt"]}, {"currencyCode": "SRANKnfp9yN1xetf", "request": {"allowOverdraft": true, "amount": 14, "balanceOrigin": "System", "balanceSource": "PAYMENT", "metadata": {"MTVcFQfXgHwhaiw7": {}, "LtalHG6VUBSuDsnE": {}, "Us0oeC7PW8GwIedv": {}}, "reason": "Jb4bVpzm28tbehM0"}, "userIds": ["NqTxQ7i5poptaIc3", "MREGaeUhjzXqly44", "5Wp8mdARgjCkdfLU"]}]' \
    > test.out 2>&1
eval_tap $? 313 'BulkDebit' test.out

#- 314 GetWallet
eval_tap 0 314 'GetWallet # SKIP deprecated' test.out

#- 315 SyncOrders
samples/cli/sample-apps Platform syncOrders \
    --nextEvaluatedKey 'zw6J0Ey25WsUbPLV' \
    --end 'v67gi579WjTZ8sWi' \
    --start '42iKvBt8ZChyvNK3' \
    > test.out 2>&1
eval_tap $? 315 'SyncOrders' test.out

#- 316 TestAdyenConfig
samples/cli/sample-apps Platform testAdyenConfig \
    --sandbox 'true' \
    --body '{"allowedPaymentMethods": ["witFaTpyGt5AYoxD", "RCNeI2MjecFxD6Bp", "x615hourql2yT48m"], "apiKey": "T0Tx9JaHAkQz9g1j", "authoriseAsCapture": false, "blockedPaymentMethods": ["DuungJWnLsfCpJmq", "6z4aiPJirXNMt7zy", "kAPiOZ0rF86WrebJ"], "clientKey": "Ey8qZEtdO8kKorQN", "dropInSettings": "m1gyvv0JngMxu79N", "liveEndpointUrlPrefix": "GnhcbVKkt1g4NL1w", "merchantAccount": "fcg1FmKkHcfUhYkp", "notificationHmacKey": "bAxLu584SbNJBwQM", "notificationPassword": "LW56D3VzrwSvx17E", "notificationUsername": "VNRt14pBUll1VSlV", "returnUrl": "kJCU7ziVobxvxz9Q", "settings": "cOpFbIel1Ojo0BKi"}' \
    > test.out 2>&1
eval_tap $? 316 'TestAdyenConfig' test.out

#- 317 TestAliPayConfig
samples/cli/sample-apps Platform testAliPayConfig \
    --sandbox 'false' \
    --body '{"appId": "3OrAI3mN55NKPGNF", "privateKey": "qrmfyAqCX5fnp4KI", "publicKey": "s9uevT9RtxdGawaO", "returnUrl": "pNPbRYc7UQmiUtij"}' \
    > test.out 2>&1
eval_tap $? 317 'TestAliPayConfig' test.out

#- 318 TestCheckoutConfig
samples/cli/sample-apps Platform testCheckoutConfig \
    --sandbox 'true' \
    --body '{"publicKey": "xHLDGAJib0bAfmPg", "secretKey": "rjOO72Ct5wrxywRl"}' \
    > test.out 2>&1
eval_tap $? 318 'TestCheckoutConfig' test.out

#- 319 DebugMatchedPaymentMerchantConfig
samples/cli/sample-apps Platform debugMatchedPaymentMerchantConfig \
    --namespace 'SdjJV7l8AgVXcMd5' \
    --region 'Jl77FzEzj347xKDH' \
    > test.out 2>&1
eval_tap $? 319 'DebugMatchedPaymentMerchantConfig' test.out

#- 320 TestPayPalConfig
samples/cli/sample-apps Platform testPayPalConfig \
    --sandbox 'false' \
    --body '{"clientID": "ZWveLgu6SZku0sey", "clientSecret": "xldosCDvQ0srmlSx", "returnUrl": "D50SWHTWo6rH9zwR", "webHookId": "WmEwn8pBT9ftwjQL"}' \
    > test.out 2>&1
eval_tap $? 320 'TestPayPalConfig' test.out

#- 321 TestStripeConfig
samples/cli/sample-apps Platform testStripeConfig \
    --sandbox 'true' \
    --body '{"allowedPaymentMethodTypes": ["R50qT7bApm5h63PJ", "t9gVtLhdbeRgNdGs", "PgHuWx8b7xsD4mY2"], "publishableKey": "Gt3Td8YV4rULzYj5", "secretKey": "Yn58rmml5p7O74Wr", "webhookSecret": "nIMRNSnMcQeqthWv"}' \
    > test.out 2>&1
eval_tap $? 321 'TestStripeConfig' test.out

#- 322 TestWxPayConfig
samples/cli/sample-apps Platform testWxPayConfig \
    --body '{"appId": "YVE9InMgix0ZbtYZ", "key": "2k5mg93pxI0kb7T0", "mchid": "hR7fMWcttJnNeJC8", "returnUrl": "8CiolE9624kfZAOe"}' \
    > test.out 2>&1
eval_tap $? 322 'TestWxPayConfig' test.out

#- 323 TestXsollaConfig
samples/cli/sample-apps Platform testXsollaConfig \
    --body '{"apiKey": "uBhcWsQdl6gRfI9d", "flowCompletionUrl": "lCh6C1Al3vnHHdir", "merchantId": 100, "projectId": 48, "projectSecretKey": "edoR3WU9A49mMbyX"}' \
    > test.out 2>&1
eval_tap $? 323 'TestXsollaConfig' test.out

#- 324 GetPaymentMerchantConfig
samples/cli/sample-apps Platform getPaymentMerchantConfig \
    --id 'jhQWY4zl8TQNdH5U' \
    > test.out 2>&1
eval_tap $? 324 'GetPaymentMerchantConfig' test.out

#- 325 UpdateAdyenConfig
samples/cli/sample-apps Platform updateAdyenConfig \
    --id 'vVYSvUStcKcLNf3Q' \
    --sandbox 'false' \
    --validate 'false' \
    --body '{"allowedPaymentMethods": ["5yCWzoMDuzpoGKuq", "KszGsdZQPadKyAww", "0Iz5vg8DMU1M3o0j"], "apiKey": "bXXP2eyCQSdNd1mz", "authoriseAsCapture": true, "blockedPaymentMethods": ["wBr3R4M6l2VceDRC", "vcmHWUIuPQHtmdkY", "qtLaFZMiRYHNEJEU"], "clientKey": "DGg49IkEyPwUCetB", "dropInSettings": "0roynj89Y4CQeyon", "liveEndpointUrlPrefix": "l45N3wbkHBpIac34", "merchantAccount": "zboJ0Gxv5SAHJqvc", "notificationHmacKey": "tAqGHeyFLKH5N9Z8", "notificationPassword": "zx9qsq3OSRiaJVOA", "notificationUsername": "XyxlzdiyXK9ZSL83", "returnUrl": "Q0AljMI4jDR2JQL4", "settings": "23MFJfv1NekFkQEi"}' \
    > test.out 2>&1
eval_tap $? 325 'UpdateAdyenConfig' test.out

#- 326 TestAdyenConfigById
samples/cli/sample-apps Platform testAdyenConfigById \
    --id '5c0cwmZIXAWDydlC' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 326 'TestAdyenConfigById' test.out

#- 327 UpdateAliPayConfig
samples/cli/sample-apps Platform updateAliPayConfig \
    --id 'i07sZ4azDH1kPi6s' \
    --sandbox 'true' \
    --validate 'false' \
    --body '{"appId": "KDf3GO1wJS8n4J3U", "privateKey": "01W67oJZRY8P7v6D", "publicKey": "IDBrcSzZE5Ej4Y2w", "returnUrl": "Q4zQxW6ntGvKEabQ"}' \
    > test.out 2>&1
eval_tap $? 327 'UpdateAliPayConfig' test.out

#- 328 TestAliPayConfigById
samples/cli/sample-apps Platform testAliPayConfigById \
    --id 'VTIRscraSB4jMMDB' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 328 'TestAliPayConfigById' test.out

#- 329 UpdateCheckoutConfig
samples/cli/sample-apps Platform updateCheckoutConfig \
    --id 'rT1NH0dkcSSsb3vr' \
    --sandbox 'true' \
    --validate 'false' \
    --body '{"publicKey": "DTCAzhXOGf1Zf4gw", "secretKey": "6MR9YHLIRvZhpLYR"}' \
    > test.out 2>&1
eval_tap $? 329 'UpdateCheckoutConfig' test.out

#- 330 TestCheckoutConfigById
samples/cli/sample-apps Platform testCheckoutConfigById \
    --id '0i1afnG29K3OOt1Y' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 330 'TestCheckoutConfigById' test.out

#- 331 UpdatePayPalConfig
samples/cli/sample-apps Platform updatePayPalConfig \
    --id 'fEyqBB6J4EIt71Af' \
    --sandbox 'false' \
    --validate 'false' \
    --body '{"clientID": "fPGwtT0tMptsrAAx", "clientSecret": "YULXwHYBnLr4O8o3", "returnUrl": "jmtX0CqQiOguNMgT", "webHookId": "lV8dDJ80OzIzAWSc"}' \
    > test.out 2>&1
eval_tap $? 331 'UpdatePayPalConfig' test.out

#- 332 TestPayPalConfigById
samples/cli/sample-apps Platform testPayPalConfigById \
    --id '23AzkD88i04d1MrW' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 332 'TestPayPalConfigById' test.out

#- 333 UpdateStripeConfig
samples/cli/sample-apps Platform updateStripeConfig \
    --id '3QkRgw3uIQQpGLRE' \
    --sandbox 'true' \
    --validate 'false' \
    --body '{"allowedPaymentMethodTypes": ["WX8fgOIrmZ9Bznvh", "ycWWOASFT6vnQzLS", "W7mkYlPx0YAwAHeF"], "publishableKey": "C1TDrwVFlp6YeaQ3", "secretKey": "0TdneZ46Nw4gEJ8X", "webhookSecret": "HetyXqb0ZEfgtELd"}' \
    > test.out 2>&1
eval_tap $? 333 'UpdateStripeConfig' test.out

#- 334 TestStripeConfigById
samples/cli/sample-apps Platform testStripeConfigById \
    --id 'uvb4S2JaEk5oeKin' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 334 'TestStripeConfigById' test.out

#- 335 UpdateWxPayConfig
samples/cli/sample-apps Platform updateWxPayConfig \
    --id 'YW4mtnakECQ38NZj' \
    --validate 'false' \
    --body '{"appId": "zdrxYy2XF00tGybp", "key": "q7eGtPQHHGUgwMSp", "mchid": "VqKfZtYLdd809ayN", "returnUrl": "ZtZ4LIQpfXcQhtSC"}' \
    > test.out 2>&1
eval_tap $? 335 'UpdateWxPayConfig' test.out

#- 336 UpdateWxPayConfigCert
samples/cli/sample-apps Platform updateWxPayConfigCert \
    --id 'wMww0N4cDh5v9pgA' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 336 'UpdateWxPayConfigCert' test.out

#- 337 TestWxPayConfigById
samples/cli/sample-apps Platform testWxPayConfigById \
    --id 'ByOmgNH9nz1A8jq3' \
    > test.out 2>&1
eval_tap $? 337 'TestWxPayConfigById' test.out

#- 338 UpdateXsollaConfig
samples/cli/sample-apps Platform updateXsollaConfig \
    --id '5N3asUWAQDcpciu3' \
    --validate 'true' \
    --body '{"apiKey": "7b7GyNkrZjEBtBHX", "flowCompletionUrl": "RQj5y7xr5798hTKQ", "merchantId": 37, "projectId": 37, "projectSecretKey": "rRvvKNt7o6ssTNbY"}' \
    > test.out 2>&1
eval_tap $? 338 'UpdateXsollaConfig' test.out

#- 339 TestXsollaConfigById
samples/cli/sample-apps Platform testXsollaConfigById \
    --id 'qOYPTomvMPYd7J54' \
    > test.out 2>&1
eval_tap $? 339 'TestXsollaConfigById' test.out

#- 340 UpdateXsollaUIConfig
samples/cli/sample-apps Platform updateXsollaUIConfig \
    --id '9nhvSAchHZpAe960' \
    --body '{"device": "MOBILE", "showCloseButton": true, "size": "MEDIUM", "theme": "DARK"}' \
    > test.out 2>&1
eval_tap $? 340 'UpdateXsollaUIConfig' test.out

#- 341 QueryPaymentProviderConfig
samples/cli/sample-apps Platform queryPaymentProviderConfig \
    --limit '58' \
    --namespace 'B7ikDoh5vmSXeVSg' \
    --offset '24' \
    --region 'Vlhtw2eGVgpHTuxi' \
    > test.out 2>&1
eval_tap $? 341 'QueryPaymentProviderConfig' test.out

#- 342 CreatePaymentProviderConfig
samples/cli/sample-apps Platform createPaymentProviderConfig \
    --body '{"aggregate": "ADYEN", "namespace": "faexMvNQVm1PUmvB", "region": "SRjvi9MPHGA2aXWq", "sandboxTaxJarApiToken": "bSlKjqT8XOLFn5LJ", "specials": ["WALLET", "WALLET", "STRIPE"], "taxJarApiToken": "zXl3LJWKCG97KXCK", "taxJarEnabled": false, "useGlobalTaxJarApiToken": false}' \
    > test.out 2>&1
eval_tap $? 342 'CreatePaymentProviderConfig' test.out

#- 343 GetAggregatePaymentProviders
samples/cli/sample-apps Platform getAggregatePaymentProviders \
    > test.out 2>&1
eval_tap $? 343 'GetAggregatePaymentProviders' test.out

#- 344 DebugMatchedPaymentProviderConfig
samples/cli/sample-apps Platform debugMatchedPaymentProviderConfig \
    --namespace 'Ia6g2bHmDbuELUPl' \
    --region 'pIpCQcdVIO1XOqsJ' \
    > test.out 2>&1
eval_tap $? 344 'DebugMatchedPaymentProviderConfig' test.out

#- 345 GetSpecialPaymentProviders
samples/cli/sample-apps Platform getSpecialPaymentProviders \
    > test.out 2>&1
eval_tap $? 345 'GetSpecialPaymentProviders' test.out

#- 346 UpdatePaymentProviderConfig
samples/cli/sample-apps Platform updatePaymentProviderConfig \
    --id '3bJHzzlE3ap9JbjV' \
    --body '{"aggregate": "ADYEN", "namespace": "o7lueEEtEufdndQH", "region": "HCfAIvqDAgrVvfmc", "sandboxTaxJarApiToken": "h8twG0lNs7UTsJuL", "specials": ["PAYPAL", "STRIPE", "PAYPAL"], "taxJarApiToken": "Jl0LECedqIgovLA0", "taxJarEnabled": false, "useGlobalTaxJarApiToken": true}' \
    > test.out 2>&1
eval_tap $? 346 'UpdatePaymentProviderConfig' test.out

#- 347 DeletePaymentProviderConfig
samples/cli/sample-apps Platform deletePaymentProviderConfig \
    --id '97Mwz1hIiubIfgAv' \
    > test.out 2>&1
eval_tap $? 347 'DeletePaymentProviderConfig' test.out

#- 348 GetPaymentTaxConfig
samples/cli/sample-apps Platform getPaymentTaxConfig \
    > test.out 2>&1
eval_tap $? 348 'GetPaymentTaxConfig' test.out

#- 349 UpdatePaymentTaxConfig
samples/cli/sample-apps Platform updatePaymentTaxConfig \
    --body '{"sandboxTaxJarApiToken": "zH3SqyFQi9YBo7Iq", "taxJarApiToken": "L94yYfyKQszc5VU6", "taxJarEnabled": false, "taxJarProductCodesMapping": {"CNMnILzGIwj2s7bY": "wixVfZc7f9XC4gRs", "xnk5ul7qjqSLrWnD": "3oU9GTqydfJpTFSZ", "GAhjZunhc4JcGWry": "GrUGbYceVW3VJZBh"}}' \
    > test.out 2>&1
eval_tap $? 349 'UpdatePaymentTaxConfig' test.out

#- 350 SyncPaymentOrders
samples/cli/sample-apps Platform syncPaymentOrders \
    --nextEvaluatedKey 'UbBRGVB6jLlJxgfT' \
    --end 'gYy5MaYCOG4UM1lt' \
    --start 'gQP4obR2LkVzVMac' \
    > test.out 2>&1
eval_tap $? 350 'SyncPaymentOrders' test.out

#- 351 PublicGetRootCategories
samples/cli/sample-apps Platform publicGetRootCategories \
    --namespace $AB_NAMESPACE \
    --language 'bMSfsVWreY3m4Xu8' \
    --storeId 'ZdwbRBhXt0b4p9LJ' \
    > test.out 2>&1
eval_tap $? 351 'PublicGetRootCategories' test.out

#- 352 DownloadCategories
samples/cli/sample-apps Platform downloadCategories \
    --namespace $AB_NAMESPACE \
    --language '0BJpJ8WmUWT7yMyO' \
    --storeId 'dv8fEnlgVRDD7eZS' \
    > test.out 2>&1
eval_tap $? 352 'DownloadCategories' test.out

#- 353 PublicGetCategory
samples/cli/sample-apps Platform publicGetCategory \
    --categoryPath 'fPTnulr4CTi03ous' \
    --namespace $AB_NAMESPACE \
    --language 'uTmGH3tRJCRm1OXQ' \
    --storeId 'ugPzteQHzbpBYuf5' \
    > test.out 2>&1
eval_tap $? 353 'PublicGetCategory' test.out

#- 354 PublicGetChildCategories
samples/cli/sample-apps Platform publicGetChildCategories \
    --categoryPath 'TGKUvT2KKdFoXGAh' \
    --namespace $AB_NAMESPACE \
    --language 'epfsEIfY6C1l0p1e' \
    --storeId 'uhGuWuCyweg8reRl' \
    > test.out 2>&1
eval_tap $? 354 'PublicGetChildCategories' test.out

#- 355 PublicGetDescendantCategories
samples/cli/sample-apps Platform publicGetDescendantCategories \
    --categoryPath 'ajsT7a9hnW6tlu4I' \
    --namespace $AB_NAMESPACE \
    --language 'jNaH3g0jDlDZ2KAB' \
    --storeId 'jWbv6pftrQojr8PJ' \
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
    --dlcType 'OCULUS' \
    > test.out 2>&1
eval_tap $? 357 'GeDLCDurableRewardShortMap' test.out

#- 358 GetIAPItemMapping
samples/cli/sample-apps Platform getIAPItemMapping \
    --namespace $AB_NAMESPACE \
    --platform 'PLAYSTATION' \
    > test.out 2>&1
eval_tap $? 358 'GetIAPItemMapping' test.out

#- 359 PublicGetItemByAppId
samples/cli/sample-apps Platform publicGetItemByAppId \
    --namespace $AB_NAMESPACE \
    --language 'rXkXmYKoVcs3dHCH' \
    --region 'wRivRuzVHzddIz24' \
    --storeId '9e0keIDJ9hwjXRFS' \
    --appId 'OgrHj4O65CSXZOJ2' \
    > test.out 2>&1
eval_tap $? 359 'PublicGetItemByAppId' test.out

#- 360 PublicQueryItems
samples/cli/sample-apps Platform publicQueryItems \
    --namespace $AB_NAMESPACE \
    --appType 'DEMO' \
    --autoCalcEstimatedPrice 'false' \
    --baseAppId 'JsQoYLm3ENCWbFS2' \
    --categoryPath 'qwxhcr0IptJMkto6' \
    --features 'n5fPLJqiRDHzpHDJ' \
    --includeSubCategoryItem 'false' \
    --itemType 'OPTIONBOX' \
    --language 'yVKpnqOgTRq55uGk' \
    --limit '2' \
    --offset '24' \
    --region 'wynNX42hNWGx0imd' \
    --sortBy '["displayOrder:asc", "createdAt:asc", "displayOrder"]' \
    --storeId '6358xnsrvfLTvlG5' \
    --tags '7S4yXM4a2md2ZMZl' \
    > test.out 2>&1
eval_tap $? 360 'PublicQueryItems' test.out

#- 361 PublicGetItemBySku
samples/cli/sample-apps Platform publicGetItemBySku \
    --namespace $AB_NAMESPACE \
    --autoCalcEstimatedPrice 'false' \
    --language '3nMV5Pc7SFuqsDgk' \
    --region 'ic8lQBigkhP5h2WA' \
    --storeId 'GHn6jQw9LCcw5jOD' \
    --sku 'EWcP3gPR0uAk07Ge' \
    > test.out 2>&1
eval_tap $? 361 'PublicGetItemBySku' test.out

#- 362 PublicGetEstimatedPrice
samples/cli/sample-apps Platform publicGetEstimatedPrice \
    --namespace $AB_NAMESPACE \
    --region 'VdUjWQaddiYu3pyb' \
    --storeId 'qTRzvLDBz5A2QMoY' \
    --itemIds 'IIMZ2HRBcDrA52Ye' \
    > test.out 2>&1
eval_tap $? 362 'PublicGetEstimatedPrice' test.out

#- 363 PublicBulkGetItems
samples/cli/sample-apps Platform publicBulkGetItems \
    --namespace $AB_NAMESPACE \
    --autoCalcEstimatedPrice 'false' \
    --language 'MD2TSIHD0jW9y4zr' \
    --region '0Vo1dLT7hQbIoHR3' \
    --storeId 'x0C0hSoz5FVugnO6' \
    --itemIds 'vrrxmHB1i1JCZ5ed' \
    > test.out 2>&1
eval_tap $? 363 'PublicBulkGetItems' test.out

#- 364 PublicValidateItemPurchaseCondition
samples/cli/sample-apps Platform publicValidateItemPurchaseCondition \
    --namespace $AB_NAMESPACE \
    --body '{"itemIds": ["NJerNJBDK88o1rah", "Gs1qMNbPaXIfovmj", "6fkTBZjOV2OfoHPR"]}' \
    > test.out 2>&1
eval_tap $? 364 'PublicValidateItemPurchaseCondition' test.out

#- 365 PublicSearchItems
samples/cli/sample-apps Platform publicSearchItems \
    --namespace $AB_NAMESPACE \
    --autoCalcEstimatedPrice 'true' \
    --itemType 'SEASON' \
    --limit '27' \
    --offset '23' \
    --region 'H4gKEf0HNyMFWoW8' \
    --storeId 'IlyvK9vd487jkTZ4' \
    --keyword 'VjisfX6jZePAVJnV' \
    --language '6H2qns8Oi8j6NXRd' \
    > test.out 2>&1
eval_tap $? 365 'PublicSearchItems' test.out

#- 366 PublicGetApp
samples/cli/sample-apps Platform publicGetApp \
    --itemId 'EFCHDQhO8DmRXodn' \
    --namespace $AB_NAMESPACE \
    --language 'ToAmnZYCjdVP131q' \
    --region 'SE2RZcdV1Gw73agP' \
    --storeId 'GXKXel2UKRp4NBSd' \
    > test.out 2>&1
eval_tap $? 366 'PublicGetApp' test.out

#- 367 PublicGetItemDynamicData
samples/cli/sample-apps Platform publicGetItemDynamicData \
    --itemId 'FXGj0KTlhkcv5q0J' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 367 'PublicGetItemDynamicData' test.out

#- 368 PublicGetItem
samples/cli/sample-apps Platform publicGetItem \
    --itemId 'jim0y0KCND8eFRQC' \
    --namespace $AB_NAMESPACE \
    --autoCalcEstimatedPrice 'false' \
    --language '1xKN0C0uN8v5wv4t' \
    --populateBundle 'false' \
    --region 'NvgV6ExvM4bRDbLZ' \
    --storeId 'uzKWHZ835bRf8TCz' \
    > test.out 2>&1
eval_tap $? 368 'PublicGetItem' test.out

#- 369 GetPaymentCustomization
eval_tap 0 369 'GetPaymentCustomization # SKIP deprecated' test.out

#- 370 PublicGetPaymentUrl
samples/cli/sample-apps Platform publicGetPaymentUrl \
    --namespace $AB_NAMESPACE \
    --body '{"paymentOrderNo": "EkkqBevkiXyJRfKh", "paymentProvider": "ADYEN", "returnUrl": "YYSXTkbvmjU3nkQv", "ui": "QGhXYborMnuewfvU", "zipCode": "0rVxsrtVXq08HGsN"}' \
    > test.out 2>&1
eval_tap $? 370 'PublicGetPaymentUrl' test.out

#- 371 PublicGetPaymentMethods
samples/cli/sample-apps Platform publicGetPaymentMethods \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'mgrMoWu6H2S65a20' \
    > test.out 2>&1
eval_tap $? 371 'PublicGetPaymentMethods' test.out

#- 372 PublicGetUnpaidPaymentOrder
samples/cli/sample-apps Platform publicGetUnpaidPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'bUCstXdBQb8A2AMo' \
    > test.out 2>&1
eval_tap $? 372 'PublicGetUnpaidPaymentOrder' test.out

#- 373 Pay
samples/cli/sample-apps Platform pay \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'm0AXtFxr7nCOIPaG' \
    --paymentProvider 'XSOLLA' \
    --zipCode 'Sq0FuFu7D0paLYlW' \
    --body '{"token": "pI1x1KRpijTkADnN"}' \
    > test.out 2>&1
eval_tap $? 373 'Pay' test.out

#- 374 PublicCheckPaymentOrderPaidStatus
samples/cli/sample-apps Platform publicCheckPaymentOrderPaidStatus \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'D9KhPxnfmVemlqRp' \
    > test.out 2>&1
eval_tap $? 374 'PublicCheckPaymentOrderPaidStatus' test.out

#- 375 GetPaymentPublicConfig
samples/cli/sample-apps Platform getPaymentPublicConfig \
    --namespace $AB_NAMESPACE \
    --sandbox 'false' \
    --paymentProvider 'XSOLLA' \
    --region 'u2eX2s80rMoRCjJ7' \
    > test.out 2>&1
eval_tap $? 375 'GetPaymentPublicConfig' test.out

#- 376 PublicGetQRCode
samples/cli/sample-apps Platform publicGetQRCode \
    --namespace $AB_NAMESPACE \
    --code 'CWr7LMe4mmaooMbW' \
    > test.out 2>&1
eval_tap $? 376 'PublicGetQRCode' test.out

#- 377 PublicNormalizePaymentReturnUrl
samples/cli/sample-apps Platform publicNormalizePaymentReturnUrl \
    --namespace $AB_NAMESPACE \
    --payerID 'UCBEHN1n3ogUqU02' \
    --foreinginvoice 'XJ6IiUGFMCWZJnOA' \
    --invoiceId 'sguJmq7PzqNIjlmb' \
    --payload 'YlrqaydqbVaK4koj' \
    --redirectResult 'b2fndhw7uuAJ7UPf' \
    --resultCode 'cKYoH1WMaPUmHAQN' \
    --sessionId 'PODKLMmBQW2nkery' \
    --status 'Vw0O60CFn2CkQC5G' \
    --token 'Bx476g33VvCvw0sl' \
    --type 'fG2YQpJm0hNhsNGW' \
    --userId 'XtZJ3Lgdt1SKPj1o' \
    --orderNo 'yEiPyEYHDUKPsWPL' \
    --paymentOrderNo 'ZWgGMznmY2mlMyr7' \
    --paymentProvider 'STRIPE' \
    --returnUrl 'ZGXquyWysjy6Z5LF' \
    > test.out 2>&1
eval_tap $? 377 'PublicNormalizePaymentReturnUrl' test.out

#- 378 GetPaymentTaxValue
samples/cli/sample-apps Platform getPaymentTaxValue \
    --namespace $AB_NAMESPACE \
    --zipCode 'R6USEsnRVWhTO75O' \
    --paymentOrderNo 'sjNHcqdh84xLcwIA' \
    --paymentProvider 'WXPAY' \
    > test.out 2>&1
eval_tap $? 378 'GetPaymentTaxValue' test.out

#- 379 GetRewardByCode
samples/cli/sample-apps Platform getRewardByCode \
    --namespace $AB_NAMESPACE \
    --rewardCode 'GqHTGDiaIrJx32Mb' \
    > test.out 2>&1
eval_tap $? 379 'GetRewardByCode' test.out

#- 380 QueryRewards1
samples/cli/sample-apps Platform queryRewards1 \
    --namespace $AB_NAMESPACE \
    --eventTopic 'LI8xMZaMM2qrZnQb' \
    --limit '20' \
    --offset '65' \
    --sortBy '["rewardCode:asc", "namespace"]' \
    > test.out 2>&1
eval_tap $? 380 'QueryRewards1' test.out

#- 381 GetReward1
samples/cli/sample-apps Platform getReward1 \
    --namespace $AB_NAMESPACE \
    --rewardId 'EwmIZ346wNHGkK20' \
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
    --appIds '["aeRx0PWErMsPP7WY", "7oUFpqqkhnhUksf6", "hP1yeEflLFhgZGJ2"]' \
    --itemIds '["Iz9zH5Mmt2lVE3Cq", "Cqn5xiZcYQFKubLh", "RYEH2NZHyCei4uiH"]' \
    --skus '["dk7F43lT2TWYpsNg", "8ChNH7LlyG23dgDc", "fe5VU2t3ENgRYvXB"]' \
    > test.out 2>&1
eval_tap $? 383 'PublicExistsAnyMyActiveEntitlement' test.out

#- 384 PublicGetMyAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform publicGetMyAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --appId '4svPX1hmAnOAk2EI' \
    > test.out 2>&1
eval_tap $? 384 'PublicGetMyAppEntitlementOwnershipByAppId' test.out

#- 385 PublicGetMyEntitlementOwnershipByItemId
samples/cli/sample-apps Platform publicGetMyEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --entitlementClazz 'OPTIONBOX' \
    --itemId 'plgVX9CXzAQPzcML' \
    > test.out 2>&1
eval_tap $? 385 'PublicGetMyEntitlementOwnershipByItemId' test.out

#- 386 PublicGetMyEntitlementOwnershipBySku
samples/cli/sample-apps Platform publicGetMyEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --entitlementClazz 'APP' \
    --sku 'NvUQCv8KmGFm3PDT' \
    > test.out 2>&1
eval_tap $? 386 'PublicGetMyEntitlementOwnershipBySku' test.out

#- 387 PublicGetEntitlementOwnershipToken
samples/cli/sample-apps Platform publicGetEntitlementOwnershipToken \
    --namespace $AB_NAMESPACE \
    --appIds '["p2dCCHo8oBGkKcAz", "hIxmXYY7kOJ99bkj", "YG5dRbr8xiZ4DWXe"]' \
    --itemIds '["bSIYok8KtbzGZQvD", "Dnj3Pf4CR50PwJro", "pOlGLGOVRpydnjWI"]' \
    --skus '["cS1eloobdsCKTgvk", "TzCEFChPymIpkj6t", "vPAkuDUiv1P8UMCm"]' \
    > test.out 2>&1
eval_tap $? 387 'PublicGetEntitlementOwnershipToken' test.out

#- 388 SyncTwitchDropsEntitlement
samples/cli/sample-apps Platform syncTwitchDropsEntitlement \
    --namespace $AB_NAMESPACE \
    --body '{"gameId": "2Hf6jhc7TpACVD9o", "language": "hqjG_oGrQ", "region": "dSmcUUSSoFW11YXG"}' \
    > test.out 2>&1
eval_tap $? 388 'SyncTwitchDropsEntitlement' test.out

#- 389 PublicGetMyWallet
samples/cli/sample-apps Platform publicGetMyWallet \
    --currencyCode 'LmeEKaZXhWQ3EMZX' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 389 'PublicGetMyWallet' test.out

#- 390 SyncEpicGameDLC
samples/cli/sample-apps Platform syncEpicGameDLC \
    --namespace $AB_NAMESPACE \
    --userId 'gUtHwOgZJ9kY86BV' \
    --body '{"epicGamesJwtToken": "LtKlpFCPO04ZMvHV"}' \
    > test.out 2>&1
eval_tap $? 390 'SyncEpicGameDLC' test.out

#- 391 SyncOculusDLC
samples/cli/sample-apps Platform syncOculusDLC \
    --namespace $AB_NAMESPACE \
    --userId '0ikVwSvr6jZbHBHI' \
    > test.out 2>&1
eval_tap $? 391 'SyncOculusDLC' test.out

#- 392 PublicSyncPsnDlcInventory
samples/cli/sample-apps Platform publicSyncPsnDlcInventory \
    --namespace $AB_NAMESPACE \
    --userId '34NMI0VytugmxP6Z' \
    --body '{"serviceLabel": 73}' \
    > test.out 2>&1
eval_tap $? 392 'PublicSyncPsnDlcInventory' test.out

#- 393 PublicSyncPsnDlcInventoryWithMultipleServiceLabels
samples/cli/sample-apps Platform publicSyncPsnDlcInventoryWithMultipleServiceLabels \
    --namespace $AB_NAMESPACE \
    --userId 'BNe27xwvX6ZzI0dc' \
    --body '{"serviceLabels": [27, 37, 47]}' \
    > test.out 2>&1
eval_tap $? 393 'PublicSyncPsnDlcInventoryWithMultipleServiceLabels' test.out

#- 394 SyncSteamDLC
samples/cli/sample-apps Platform syncSteamDLC \
    --namespace $AB_NAMESPACE \
    --userId 'e4SZbscnRmBEXEoO' \
    --body '{"appId": "JwLEwfLGY8QBudRP", "steamId": "wshmDg3Qgw9kQkmZ"}' \
    > test.out 2>&1
eval_tap $? 394 'SyncSteamDLC' test.out

#- 395 SyncXboxDLC
samples/cli/sample-apps Platform syncXboxDLC \
    --namespace $AB_NAMESPACE \
    --userId 'gnynKSLuAMvdcEJM' \
    --body '{"xstsToken": "b5Q2onKys4PeRtuo"}' \
    > test.out 2>&1
eval_tap $? 395 'SyncXboxDLC' test.out

#- 396 PublicQueryUserEntitlements
samples/cli/sample-apps Platform publicQueryUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId '6u7oXJcV2ObL0Qht' \
    --appType 'DLC' \
    --entitlementClazz 'OPTIONBOX' \
    --entitlementName '8DirCi5Ggn1j0UIm' \
    --features '["dcXmkhZnZn0KMIFU", "TwIaWbOwHO6KHu42", "sQXWaATd36SmaZ4u"]' \
    --itemId '["qXyXWX1W9k7Oc8G3", "uCALXCQmR6UEpiXc", "qMFIpcFf3pjDRIrt"]' \
    --limit '84' \
    --offset '53' \
    > test.out 2>&1
eval_tap $? 396 'PublicQueryUserEntitlements' test.out

#- 397 PublicGetUserAppEntitlementByAppId
samples/cli/sample-apps Platform publicGetUserAppEntitlementByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'IMlguB9l3uAhBtp7' \
    --appId 'nrO3VyXIRVQtAkVR' \
    > test.out 2>&1
eval_tap $? 397 'PublicGetUserAppEntitlementByAppId' test.out

#- 398 PublicQueryUserEntitlementsByAppType
samples/cli/sample-apps Platform publicQueryUserEntitlementsByAppType \
    --namespace $AB_NAMESPACE \
    --userId '50i9XIIKPk4J0Obb' \
    --limit '63' \
    --offset '100' \
    --appType 'SOFTWARE' \
    > test.out 2>&1
eval_tap $? 398 'PublicQueryUserEntitlementsByAppType' test.out

#- 399 PublicGetUserEntitlementsByIds
samples/cli/sample-apps Platform publicGetUserEntitlementsByIds \
    --namespace $AB_NAMESPACE \
    --userId '5K76GzIHDx0Pu0G7' \
    --availablePlatformOnly 'true' \
    --ids '["c9gcapf7fqBeNaR8", "zwxEenOYG4o4TkJQ", "v5yLLHxgHGxTYnCm"]' \
    > test.out 2>&1
eval_tap $? 399 'PublicGetUserEntitlementsByIds' test.out

#- 400 PublicGetUserEntitlementByItemId
eval_tap 0 400 'PublicGetUserEntitlementByItemId # SKIP deprecated' test.out

#- 401 PublicGetUserEntitlementBySku
eval_tap 0 401 'PublicGetUserEntitlementBySku # SKIP deprecated' test.out

#- 402 PublicUserEntitlementHistory
samples/cli/sample-apps Platform publicUserEntitlementHistory \
    --namespace $AB_NAMESPACE \
    --userId 'EROliwiLxfho1WJP' \
    --endDate 'n4LIQ9vduJzIhAAv' \
    --entitlementClazz 'SUBSCRIPTION' \
    --limit '37' \
    --offset '22' \
    --startDate 'aWh9UfetO431qnw7' \
    > test.out 2>&1
eval_tap $? 402 'PublicUserEntitlementHistory' test.out

#- 403 PublicExistsAnyUserActiveEntitlement
samples/cli/sample-apps Platform publicExistsAnyUserActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'KiKVQ3nyK1fIrMZE' \
    --appIds '["CpaKthhYk4i51RQ9", "pePZtElWl5x2As82", "GR5m9s90T8vpNzyE"]' \
    --itemIds '["PMKAHW2TnAOlH7ZS", "cFap37bvFqb6ny1h", "iygAc0Ra7JHGMIc8"]' \
    --skus '["Y0Kq5VUw6bFX6xJ0", "9EzcxpoeWuIVrIiw", "zmjcINWADd3Rlr79"]' \
    > test.out 2>&1
eval_tap $? 403 'PublicExistsAnyUserActiveEntitlement' test.out

#- 404 PublicGetUserAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform publicGetUserAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --userId '1x3FXRfNxCWBUQej' \
    --appId 'hMLv3zlkN1wGNXIU' \
    > test.out 2>&1
eval_tap $? 404 'PublicGetUserAppEntitlementOwnershipByAppId' test.out

#- 405 PublicGetUserEntitlementOwnershipByItemId
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'SKKxhkAD9L6IGE4w' \
    --entitlementClazz 'ENTITLEMENT' \
    --itemId 'HnxIODmuhaqVG6Sv' \
    > test.out 2>&1
eval_tap $? 405 'PublicGetUserEntitlementOwnershipByItemId' test.out

#- 406 PublicGetUserEntitlementOwnershipByItemIds
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'hnLAkP7A6OwKFQzu' \
    --ids '["fTX8QvIOXuedV9nT", "qfgnZOFpnaNnYgnz", "kvrVlULntwgtPIqr"]' \
    > test.out 2>&1
eval_tap $? 406 'PublicGetUserEntitlementOwnershipByItemIds' test.out

#- 407 PublicGetUserEntitlementOwnershipBySku
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --userId 'UchJHc3dG29YNHYM' \
    --entitlementClazz 'MEDIA' \
    --sku 'KZNftzJ3OW2pOvHQ' \
    > test.out 2>&1
eval_tap $? 407 'PublicGetUserEntitlementOwnershipBySku' test.out

#- 408 PublicGetUserEntitlement
samples/cli/sample-apps Platform publicGetUserEntitlement \
    --entitlementId 'i14veRTEqQ1SYlew' \
    --namespace $AB_NAMESPACE \
    --userId 'bCKz3bwx0tPDROWQ' \
    > test.out 2>&1
eval_tap $? 408 'PublicGetUserEntitlement' test.out

#- 409 PublicConsumeUserEntitlement
samples/cli/sample-apps Platform publicConsumeUserEntitlement \
    --entitlementId '0QwLgJ8C6ZVNnxWA' \
    --namespace $AB_NAMESPACE \
    --userId 'GUuRRFUwPXCxSxLl' \
    --body '{"options": ["UocLCF6SSaBaa87w", "SvxFTTUGPoHbQbaT", "pExev88khqG6GFxN"], "requestId": "a8SuXMEQNYv0ssAQ", "useCount": 36}' \
    > test.out 2>&1
eval_tap $? 409 'PublicConsumeUserEntitlement' test.out

#- 410 PublicSellUserEntitlement
samples/cli/sample-apps Platform publicSellUserEntitlement \
    --entitlementId 'YosPKdrc9HuIltJL' \
    --namespace $AB_NAMESPACE \
    --userId 'gomYJp7bjCln5d8b' \
    --body '{"requestId": "08vY5NU7eCGzYbYJ", "useCount": 20}' \
    > test.out 2>&1
eval_tap $? 410 'PublicSellUserEntitlement' test.out

#- 411 PublicSplitUserEntitlement
samples/cli/sample-apps Platform publicSplitUserEntitlement \
    --entitlementId 'xwUGNkbts4lO82lB' \
    --namespace $AB_NAMESPACE \
    --userId '0PpGCKX3mCTzCWcT' \
    --body '{"useCount": 41}' \
    > test.out 2>&1
eval_tap $? 411 'PublicSplitUserEntitlement' test.out

#- 412 PublicTransferUserEntitlement
samples/cli/sample-apps Platform publicTransferUserEntitlement \
    --entitlementId 'JMbsR5aLq5pDfqZf' \
    --namespace $AB_NAMESPACE \
    --userId 'PupvE227ZnHdftbI' \
    --body '{"entitlementId": "9SLwlrwvodJA1MtK", "useCount": 16}' \
    > test.out 2>&1
eval_tap $? 412 'PublicTransferUserEntitlement' test.out

#- 413 PublicRedeemCode
samples/cli/sample-apps Platform publicRedeemCode \
    --namespace $AB_NAMESPACE \
    --userId 'SNEViYuf95m7RUgu' \
    --body '{"code": "MrkaU2HjEOYafrBf", "language": "gun-OLlf", "region": "CMdLHEO1vYOxlLCO"}' \
    > test.out 2>&1
eval_tap $? 413 'PublicRedeemCode' test.out

#- 414 PublicFulfillAppleIAPItem
samples/cli/sample-apps Platform publicFulfillAppleIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'TqlVmf9GkvnmLDe1' \
    --body '{"excludeOldTransactions": true, "language": "Yvl_BT", "productId": "FioUpuyTsy7uYtAa", "receiptData": "OHS8brXCoPhF2EQk", "region": "REoLHwdkfY4wP6we", "transactionId": "oVStpmOqHBqeMIRT"}' \
    > test.out 2>&1
eval_tap $? 414 'PublicFulfillAppleIAPItem' test.out

#- 415 SyncEpicGamesInventory
samples/cli/sample-apps Platform syncEpicGamesInventory \
    --namespace $AB_NAMESPACE \
    --userId 'ObFWgusXGYZkiEJh' \
    --body '{"epicGamesJwtToken": "KPlJNNm1gjkuD0VF"}' \
    > test.out 2>&1
eval_tap $? 415 'SyncEpicGamesInventory' test.out

#- 416 PublicFulfillGoogleIAPItem
samples/cli/sample-apps Platform publicFulfillGoogleIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'QCEzDXLcjfJZHWja' \
    --body '{"autoAck": true, "language": "rL-tdNx", "orderId": "fN2lqwIikbDqCFtY", "packageName": "P1LPH7QmZrEUQWrT", "productId": "S9GThDEFU7grHyGy", "purchaseTime": 5, "purchaseToken": "IjgML3dX4opRPzBg", "region": "BSsFeZkrFIKJVXEU"}' \
    > test.out 2>&1
eval_tap $? 416 'PublicFulfillGoogleIAPItem' test.out

#- 417 SyncOculusConsumableEntitlements
samples/cli/sample-apps Platform syncOculusConsumableEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'Gm71wn8HIlT91w1R' \
    > test.out 2>&1
eval_tap $? 417 'SyncOculusConsumableEntitlements' test.out

#- 418 PublicReconcilePlayStationStore
samples/cli/sample-apps Platform publicReconcilePlayStationStore \
    --namespace $AB_NAMESPACE \
    --userId 'dVejOXzMN9LklQIh' \
    --body '{"currencyCode": "X4IYvsG0R4MKpq98", "price": 0.49253709976539295, "productId": "zQ2IFKsoNTplcBTU", "serviceLabel": 43}' \
    > test.out 2>&1
eval_tap $? 418 'PublicReconcilePlayStationStore' test.out

#- 419 PublicReconcilePlayStationStoreWithMultipleServiceLabels
samples/cli/sample-apps Platform publicReconcilePlayStationStoreWithMultipleServiceLabels \
    --namespace $AB_NAMESPACE \
    --userId 'HG9guArkcMTckY0Y' \
    --body '{"currencyCode": "ILO6zweVQgFuWSZs", "price": 0.7001199395433392, "productId": "WoeDEVRMCAC8Lfij", "serviceLabels": [84, 62, 7]}' \
    > test.out 2>&1
eval_tap $? 419 'PublicReconcilePlayStationStoreWithMultipleServiceLabels' test.out

#- 420 SyncSteamInventory
samples/cli/sample-apps Platform syncSteamInventory \
    --namespace $AB_NAMESPACE \
    --userId 'UypHE6VneI117Phm' \
    --body '{"appId": "jrJXNgfM9yqUFtMk", "currencyCode": "N9MJbbQtv0tRzxh1", "language": "zr", "price": 0.6373194670096168, "productId": "LD8B9r4xlcwBzQtw", "region": "6L9u6DEuZA83sQqh", "steamId": "2D3yMl7xod8QLgeG"}' \
    > test.out 2>&1
eval_tap $? 420 'SyncSteamInventory' test.out

#- 421 SyncTwitchDropsEntitlement1
samples/cli/sample-apps Platform syncTwitchDropsEntitlement1 \
    --namespace $AB_NAMESPACE \
    --userId 'J44WA4UYru0W7e2p' \
    --body '{"gameId": "Aw91jMdJzEVvlwC6", "language": "usIM_WwsS_mk", "region": "Aa8E1uX0CZZaneHb"}' \
    > test.out 2>&1
eval_tap $? 421 'SyncTwitchDropsEntitlement1' test.out

#- 422 SyncXboxInventory
samples/cli/sample-apps Platform syncXboxInventory \
    --namespace $AB_NAMESPACE \
    --userId 'RhUFpB8KB9OmUZGC' \
    --body '{"currencyCode": "wjog8nLqYMusHbSD", "price": 0.5832851829075639, "productId": "nCXgadWzuwOD1BoB", "xstsToken": "NdO3f4FPSfy1n0Bu"}' \
    > test.out 2>&1
eval_tap $? 422 'SyncXboxInventory' test.out

#- 423 PublicQueryUserOrders
samples/cli/sample-apps Platform publicQueryUserOrders \
    --namespace $AB_NAMESPACE \
    --userId 'KVM1ZwemrBEDQEuz' \
    --itemId '5pjPpe1PM1uOC1ki' \
    --limit '1' \
    --offset '13' \
    --status 'CHARGEBACK_REVERSED' \
    > test.out 2>&1
eval_tap $? 423 'PublicQueryUserOrders' test.out

#- 424 PublicCreateUserOrder
samples/cli/sample-apps Platform publicCreateUserOrder \
    --namespace $AB_NAMESPACE \
    --userId 'zmpEBFPKm9sWrnUX' \
    --body '{"currencyCode": "t2MGndv8R1gGzUs7", "discountedPrice": 30, "ext": {"cWB0DZATdEbWBQg0": {}, "Ei0hkpXcoLHdWEIp": {}, "MxC7pF7poG0qaFP8": {}}, "itemId": "AWeODT3ISsqV4PkN", "language": "Jaa_CC", "price": 48, "quantity": 58, "region": "E94mFEcBDLxbkIU4", "returnUrl": "GHnZqLDmN3284DVu", "sectionId": "5LIh7Tkxs98qvKdP"}' \
    > test.out 2>&1
eval_tap $? 424 'PublicCreateUserOrder' test.out

#- 425 PublicGetUserOrder
samples/cli/sample-apps Platform publicGetUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'fPVvTmPT5CCDtXtI' \
    --userId 'gAwBCQNtsle8ZLh0' \
    > test.out 2>&1
eval_tap $? 425 'PublicGetUserOrder' test.out

#- 426 PublicCancelUserOrder
samples/cli/sample-apps Platform publicCancelUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'vvmnZm3MJSaFFg68' \
    --userId '8loGNMaN0Hhc5uS9' \
    > test.out 2>&1
eval_tap $? 426 'PublicCancelUserOrder' test.out

#- 427 PublicGetUserOrderHistories
samples/cli/sample-apps Platform publicGetUserOrderHistories \
    --namespace $AB_NAMESPACE \
    --orderNo 'oXg0UG49huthHRAe' \
    --userId 'dBAQfF9WKmscpdC5' \
    > test.out 2>&1
eval_tap $? 427 'PublicGetUserOrderHistories' test.out

#- 428 PublicDownloadUserOrderReceipt
samples/cli/sample-apps Platform publicDownloadUserOrderReceipt \
    --namespace $AB_NAMESPACE \
    --orderNo '5iuxcyapFn0GrCNg' \
    --userId 'JLZjuAdPNuWToldV' \
    > test.out 2>&1
eval_tap $? 428 'PublicDownloadUserOrderReceipt' test.out

#- 429 PublicGetPaymentAccounts
samples/cli/sample-apps Platform publicGetPaymentAccounts \
    --namespace $AB_NAMESPACE \
    --userId 'esQrE4WeUgZp8THE' \
    > test.out 2>&1
eval_tap $? 429 'PublicGetPaymentAccounts' test.out

#- 430 PublicDeletePaymentAccount
samples/cli/sample-apps Platform publicDeletePaymentAccount \
    --id '3Y7wDALuleoMbb3a' \
    --namespace $AB_NAMESPACE \
    --type 'card' \
    --userId 'rU7n6g94OWRoEKMM' \
    > test.out 2>&1
eval_tap $? 430 'PublicDeletePaymentAccount' test.out

#- 431 PublicListActiveSections
samples/cli/sample-apps Platform publicListActiveSections \
    --namespace $AB_NAMESPACE \
    --userId 'oDfIidqm6Lq3VKXq' \
    --autoCalcEstimatedPrice 'false' \
    --language 'ItwRxlmNDrjssL6T' \
    --region 'lFItswnV6kUgSjao' \
    --storeId 'c9Nmf52O1z0ME28S' \
    --viewId 'qEXPAFYNZ91muaad' \
    > test.out 2>&1
eval_tap $? 431 'PublicListActiveSections' test.out

#- 432 PublicQueryUserSubscriptions
samples/cli/sample-apps Platform publicQueryUserSubscriptions \
    --namespace $AB_NAMESPACE \
    --userId 'OFc8tFzodpomk5nH' \
    --chargeStatus 'CHARGE_FAILED' \
    --itemId '0UYLP9CfMI59WoA5' \
    --limit '79' \
    --offset '71' \
    --sku 'DjX8FIDkw5QBisYg' \
    --status 'INIT' \
    --subscribedBy 'USER' \
    > test.out 2>&1
eval_tap $? 432 'PublicQueryUserSubscriptions' test.out

#- 433 PublicSubscribeSubscription
samples/cli/sample-apps Platform publicSubscribeSubscription \
    --namespace $AB_NAMESPACE \
    --userId '3uir4dGtNOVnvWcj' \
    --body '{"currencyCode": "nW3Bq3UjUwzOsF1U", "itemId": "2gUgJBkXjrnHWvFL", "language": "EclO_KI", "region": "Bgem03cA0V9lEu64", "returnUrl": "FU8HaLl04DzkEYYT", "source": "Sg8ejVEWYoOu087C"}' \
    > test.out 2>&1
eval_tap $? 433 'PublicSubscribeSubscription' test.out

#- 434 PublicCheckUserSubscriptionSubscribableByItemId
samples/cli/sample-apps Platform publicCheckUserSubscriptionSubscribableByItemId \
    --namespace $AB_NAMESPACE \
    --userId '5JFeLbJP7fZvUnWg' \
    --itemId 'BGxNA5Ops3I7hnGA' \
    > test.out 2>&1
eval_tap $? 434 'PublicCheckUserSubscriptionSubscribableByItemId' test.out

#- 435 PublicGetUserSubscription
samples/cli/sample-apps Platform publicGetUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'xJpmrYnD7EMoaLSw' \
    --userId 'bIyDprkCyEv4MVPG' \
    > test.out 2>&1
eval_tap $? 435 'PublicGetUserSubscription' test.out

#- 436 PublicChangeSubscriptionBillingAccount
samples/cli/sample-apps Platform publicChangeSubscriptionBillingAccount \
    --namespace $AB_NAMESPACE \
    --subscriptionId '4AcuoOZSw3XBmgCC' \
    --userId '7cSoIH0wR4soBNxu' \
    > test.out 2>&1
eval_tap $? 436 'PublicChangeSubscriptionBillingAccount' test.out

#- 437 PublicCancelSubscription
samples/cli/sample-apps Platform publicCancelSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'lzl3lRENpJI4YxLO' \
    --userId '9jJgOWcsGpYD3u0I' \
    --body '{"immediate": false, "reason": "YfoYgWAMDkHIW69Z"}' \
    > test.out 2>&1
eval_tap $? 437 'PublicCancelSubscription' test.out

#- 438 PublicGetUserSubscriptionBillingHistories
samples/cli/sample-apps Platform publicGetUserSubscriptionBillingHistories \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'LNzLifbJYSG3g2Ln' \
    --userId '1XJ1Ry4vLplIZFrP' \
    --excludeFree 'false' \
    --limit '63' \
    --offset '37' \
    > test.out 2>&1
eval_tap $? 438 'PublicGetUserSubscriptionBillingHistories' test.out

#- 439 PublicListViews
samples/cli/sample-apps Platform publicListViews \
    --namespace $AB_NAMESPACE \
    --userId 'vmtqFeZACG0ahBMr' \
    --language '4ldBZTKYT6q0cGFr' \
    --storeId 'cP7jHaH0xpinJJXO' \
    > test.out 2>&1
eval_tap $? 439 'PublicListViews' test.out

#- 440 PublicGetWallet
samples/cli/sample-apps Platform publicGetWallet \
    --currencyCode 'QB0BxrLlCckqXxV8' \
    --namespace $AB_NAMESPACE \
    --userId '6S95UTTDjJKzvqGt' \
    > test.out 2>&1
eval_tap $? 440 'PublicGetWallet' test.out

#- 441 PublicListUserWalletTransactions
samples/cli/sample-apps Platform publicListUserWalletTransactions \
    --currencyCode 'm5DF0f1SO7EGNZ6r' \
    --namespace $AB_NAMESPACE \
    --userId 'gd0Bsg8YXEIOKqIz' \
    --limit '72' \
    --offset '50' \
    > test.out 2>&1
eval_tap $? 441 'PublicListUserWalletTransactions' test.out

#- 442 QueryItems1
samples/cli/sample-apps Platform queryItems1 \
    --namespace $AB_NAMESPACE \
    --appType 'DLC' \
    --availableDate 'wcsDWBjCak2ymxDB' \
    --baseAppId 'zns4Q2nRR5FI6EZG' \
    --categoryPath 'wcHTGLPpjLDx5Osu' \
    --features 'Wh5LQzkEcsNf5pjJ' \
    --includeSubCategoryItem 'true' \
    --itemName 'x7itAjmi0iA8sucN' \
    --itemStatus 'ACTIVE' \
    --itemType 'OPTIONBOX' \
    --limit '41' \
    --offset '57' \
    --region 'gSkLmn8HwkV4W1FI' \
    --sectionExclusive 'true' \
    --sortBy '["name:desc", "createdAt", "updatedAt"]' \
    --storeId '7lQU1k1DRBmsi8qg' \
    --tags 'lOdHwt8Q8kBfD7pC' \
    --targetNamespace 'wUZBsXZka5Oeq1ri' \
    --withTotal 'false' \
    > test.out 2>&1
eval_tap $? 442 'QueryItems1' test.out

#- 443 ImportStore1
samples/cli/sample-apps Platform importStore1 \
    --namespace $AB_NAMESPACE \
    --storeId 'lnbiTPvStlSIuoIo' \
    --strictMode 'true' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 443 'ImportStore1' test.out

#- 444 ExportStore1
samples/cli/sample-apps Platform exportStore1 \
    --namespace $AB_NAMESPACE \
    --storeId '3WnwBH5cQjXHa6GJ' \
    --body '{"itemIds": ["iUOytgobQKKTU8QN", "tGPZmLk8WUXfwbl1", "qc7gPd1YF1XGwmSN"]}' \
    > test.out 2>&1
eval_tap $? 444 'ExportStore1' test.out

#- 445 FulfillRewardsV2
samples/cli/sample-apps Platform fulfillRewardsV2 \
    --namespace $AB_NAMESPACE \
    --userId 'f7eK13TD6EG9njwN' \
    --body '{"entitlementCollectionId": "8rslUzfYoPX7iQo2", "entitlementOrigin": "Oculus", "metadata": {"GHfWSIaqLlT6CdTn": {}, "ggwk8tMj0Qh9oiaD": {}, "Wpf1id4CKIk30Ouu": {}}, "origin": "Playstation", "rewards": [{"currency": {"currencyCode": "wha12ektD2QXyioA", "namespace": "IwzWGBo6zg665YzG"}, "item": {"itemId": "C7fHnS63bEMhk0wq", "itemSku": "CUjWquaMlgkufpoF", "itemType": "yvqYndQybcjpfO98"}, "quantity": 72, "type": "CURRENCY"}, {"currency": {"currencyCode": "bq7ZaYuOHJTVi6KR", "namespace": "wBQCzKDFDWMy85v4"}, "item": {"itemId": "QMngvmkzudFHM0oy", "itemSku": "zJYX7mBmPre01GJf", "itemType": "wNHVV5lsmOMNrgTc"}, "quantity": 10, "type": "CURRENCY"}, {"currency": {"currencyCode": "2pEOcs5YcSO02waw", "namespace": "5rSQwBNCKxs5V30q"}, "item": {"itemId": "cEdVp2BRZJt7ZLRh", "itemSku": "myFNwlpPv7NkMql8", "itemType": "1eZI8OqU7DYCvXq9"}, "quantity": 81, "type": "CURRENCY"}], "source": "ORDER_REVOCATION", "transactionId": "WYVhz4hPwULhX5XI"}' \
    > test.out 2>&1
eval_tap $? 445 'FulfillRewardsV2' test.out


rm -f "tmp.dat"

exit $EXIT_CODE