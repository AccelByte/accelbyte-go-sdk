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
    --id 'aSzYVdGYa2XqIDro' \
    > test.out 2>&1
eval_tap $? 3 'GetFulfillmentScript' test.out

#- 4 CreateFulfillmentScript
samples/cli/sample-apps Platform createFulfillmentScript \
    --id 'fAOGyH7MEkadDpSC' \
    --body '{"grantDays": "yv6Lczj0ob8dDSff"}' \
    > test.out 2>&1
eval_tap $? 4 'CreateFulfillmentScript' test.out

#- 5 DeleteFulfillmentScript
samples/cli/sample-apps Platform deleteFulfillmentScript \
    --id 'dAgmPweFDrhitXSk' \
    > test.out 2>&1
eval_tap $? 5 'DeleteFulfillmentScript' test.out

#- 6 UpdateFulfillmentScript
samples/cli/sample-apps Platform updateFulfillmentScript \
    --id 'Ro3XD4BJMd3uZthI' \
    --body '{"grantDays": "J9VHwtMGB6lRygsp"}' \
    > test.out 2>&1
eval_tap $? 6 'UpdateFulfillmentScript' test.out

#- 7 ListItemTypeConfigs
samples/cli/sample-apps Platform listItemTypeConfigs \
    > test.out 2>&1
eval_tap $? 7 'ListItemTypeConfigs' test.out

#- 8 CreateItemTypeConfig
samples/cli/sample-apps Platform createItemTypeConfig \
    --body '{"clazz": "jBVas5xqxxX9YGwe", "dryRun": true, "fulfillmentUrl": "l7f3zzr1eAAneSvs", "itemType": "CODE", "purchaseConditionUrl": "4LoHJzujFPVnBhmk"}' \
    > test.out 2>&1
eval_tap $? 8 'CreateItemTypeConfig' test.out

#- 9 SearchItemTypeConfig
samples/cli/sample-apps Platform searchItemTypeConfig \
    --clazz 'oqIr78z6ptQy5qYH' \
    --itemType 'BUNDLE' \
    > test.out 2>&1
eval_tap $? 9 'SearchItemTypeConfig' test.out

#- 10 GetItemTypeConfig
samples/cli/sample-apps Platform getItemTypeConfig \
    --id 'pwmyNpZBqwtth7vN' \
    > test.out 2>&1
eval_tap $? 10 'GetItemTypeConfig' test.out

#- 11 UpdateItemTypeConfig
samples/cli/sample-apps Platform updateItemTypeConfig \
    --id 'b32pxDn3Ci6reBsf' \
    --body '{"clazz": "hIVvptdVvSq8Ehng", "dryRun": true, "fulfillmentUrl": "k7r6e8COpqT4dAyC", "purchaseConditionUrl": "F2LOxQvyUstfY5Uh"}' \
    > test.out 2>&1
eval_tap $? 11 'UpdateItemTypeConfig' test.out

#- 12 DeleteItemTypeConfig
samples/cli/sample-apps Platform deleteItemTypeConfig \
    --id 'suyMtzWH1Ooamw8J' \
    > test.out 2>&1
eval_tap $? 12 'DeleteItemTypeConfig' test.out

#- 13 QueryCampaigns
samples/cli/sample-apps Platform queryCampaigns \
    --namespace $AB_NAMESPACE \
    --limit '18' \
    --name 'Iu6BILAAt1OFGlD4' \
    --offset '30' \
    --tag 'FuBaQmMzbRlxC6uu' \
    > test.out 2>&1
eval_tap $? 13 'QueryCampaigns' test.out

#- 14 CreateCampaign
samples/cli/sample-apps Platform createCampaign \
    --namespace $AB_NAMESPACE \
    --body '{"description": "noQ4MCpOUOjQsydk", "discountConfig": {"categories": [{"categoryPath": "WrYd4lTDG3jwFfNA", "includeSubCategories": false}, {"categoryPath": "QbkjgAyumBw7AYU3", "includeSubCategories": true}, {"categoryPath": "VISeIX0oZYPN1CFc", "includeSubCategories": true}], "currencyCode": "HgVKAcKmlrNMu4PS", "currencyNamespace": "vFKF31BoOOkvHmUu", "discountAmount": 78, "discountPercentage": 96, "discountType": "AMOUNT", "items": [{"itemId": "Tya6D4ySzhEt7vVo", "itemName": "AztoYOCRAUKxMucs"}, {"itemId": "1KNImMuT2YKJB3Zo", "itemName": "TTuWMiZIzj52Eyls"}, {"itemId": "H2U20mLVWvjTqxu2", "itemName": "DJYFX2AvJ4JcEUup"}], "restrictType": "ITEMS_AND_CATEGORIES", "stackable": true}, "items": [{"extraSubscriptionDays": 0, "itemId": "T0wJIR8fSi6jeEAm", "itemName": "S4QNLMWI8cjbSpiT", "quantity": 50}, {"extraSubscriptionDays": 100, "itemId": "b4Kjp0AcEVHlMT71", "itemName": "GKpZEJtZbHxIhKQn", "quantity": 85}, {"extraSubscriptionDays": 68, "itemId": "fLYjO3fsrmwr5AvE", "itemName": "YN42aQxEuUuvccpo", "quantity": 71}], "maxRedeemCountPerCampaignPerUser": 15, "maxRedeemCountPerCode": 8, "maxRedeemCountPerCodePerUser": 80, "maxSaleCount": 33, "name": "1ORtvg7qBcCWgIKd", "redeemEnd": "1971-06-12T00:00:00Z", "redeemStart": "1980-07-01T00:00:00Z", "redeemType": "DISCOUNT", "status": "INACTIVE", "tags": ["xGuM8fpyLYgGfFI7", "LUhPOhSsEzDxkIZG", "Is27IthXoB4JLRpr"], "type": "REDEMPTION"}' \
    > test.out 2>&1
eval_tap $? 14 'CreateCampaign' test.out

#- 15 GetCampaign
samples/cli/sample-apps Platform getCampaign \
    --campaignId '9CdMSqH3yo9UqNBx' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 15 'GetCampaign' test.out

#- 16 UpdateCampaign
samples/cli/sample-apps Platform updateCampaign \
    --campaignId '3KfQBLDoQbSL30Ih' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "RNaXpgBjkdAjhrjc", "discountConfig": {"categories": [{"categoryPath": "EIv7xA6pBdpV1IqJ", "includeSubCategories": false}, {"categoryPath": "miepug03yefPmgb4", "includeSubCategories": true}, {"categoryPath": "c9UwEzgtqpJG1KnZ", "includeSubCategories": true}], "currencyCode": "aTMTe42d8eLE4xmV", "currencyNamespace": "4DR0IsitzIFF7YKv", "discountAmount": 36, "discountPercentage": 82, "discountType": "AMOUNT", "items": [{"itemId": "A5ry4eUj7TP7lxU9", "itemName": "EopDPNs5F1E4U8Ed"}, {"itemId": "sulJaY6dxL9GK9qa", "itemName": "DXs6W7Q4wP6pMTGh"}, {"itemId": "bsu4uFrKJZrhZLjT", "itemName": "MGeHVkmvO29jr5ph"}], "restrictType": "ITEMS_AND_CATEGORIES", "stackable": true}, "items": [{"extraSubscriptionDays": 1, "itemId": "puAaEIC1Nz9GrzqL", "itemName": "NFpKMmc1mkK6VVpr", "quantity": 65}, {"extraSubscriptionDays": 41, "itemId": "9Un3POdoFxgb5vuZ", "itemName": "R2suzUH025lIatvH", "quantity": 40}, {"extraSubscriptionDays": 54, "itemId": "WxuhvRP99pIv2yD4", "itemName": "Nw9Ha5NP01YYJqca", "quantity": 79}], "maxRedeemCountPerCampaignPerUser": 2, "maxRedeemCountPerCode": 74, "maxRedeemCountPerCodePerUser": 82, "maxSaleCount": 93, "name": "YrNcnjJBUPcXhN8f", "redeemEnd": "1996-10-26T00:00:00Z", "redeemStart": "1983-11-30T00:00:00Z", "redeemType": "DISCOUNT", "status": "INACTIVE", "tags": ["iJSda7bTCEMyRhsW", "lNfimAbl67N3Y7PT", "YvIAGYNJ2O9V1O4l"]}' \
    > test.out 2>&1
eval_tap $? 16 'UpdateCampaign' test.out

#- 17 RenameBatch
samples/cli/sample-apps Platform renameBatch \
    --campaignId 'FUul1OZFjW6Jqkue' \
    --namespace $AB_NAMESPACE \
    --body '{"newName": "6slHQ91l0kcAmeYb", "oldName": "I8eRWsvh0Fc5teJR"}' \
    > test.out 2>&1
eval_tap $? 17 'RenameBatch' test.out

#- 18 QueryCampaignBatchNames
samples/cli/sample-apps Platform queryCampaignBatchNames \
    --campaignId 'Amsi2AabJE2fBNMk' \
    --namespace $AB_NAMESPACE \
    --batchName 'Uc0CxDTLkHOqWxOp' \
    --limit '38' \
    > test.out 2>&1
eval_tap $? 18 'QueryCampaignBatchNames' test.out

#- 19 GetCampaignDynamic
samples/cli/sample-apps Platform getCampaignDynamic \
    --campaignId 'MAzFwgQceWZLHMTc' \
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
    --body '{"enableInventoryCheck": true, "itemDeletionCheckConfig": ["ENTITLEMENT", "DLC"]}' \
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
    --body '{"appConfig": {"appName": "skSwLl0LY5uPeggU"}, "customConfig": {"connectionType": "TLS", "grpcServerAddress": "RLzLrwhAjusj5F1O"}, "extendType": "APP"}' \
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
    --body '{"appConfig": {"appName": "Evs0XUYUxAqbMTob"}, "customConfig": {"connectionType": "TLS", "grpcServerAddress": "6Cr2QUWyCt6s2fOd"}, "extendType": "APP"}' \
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
    --storeId '4GcOk3aEO2a2O8rI' \
    > test.out 2>&1
eval_tap $? 31 'GetRootCategories' test.out

#- 32 CreateCategory
samples/cli/sample-apps Platform createCategory \
    --namespace $AB_NAMESPACE \
    --storeId 'CbwqSIsgs2GQNs8b' \
    --body '{"categoryPath": "Te9Hb63V8WgXbg4f", "localizationDisplayNames": {"BcDY4mlnJvKJhMPE": "Cd0ZTTLZ7yoznC6U", "17vDdMzVy6TBbe4M": "bPDLxsPqN5QLeTUk", "bAYSGRapyPAzkKX4": "O85mDcEpHudIm8wU"}}' \
    > test.out 2>&1
eval_tap $? 32 'CreateCategory' test.out

#- 33 ListCategoriesBasic
samples/cli/sample-apps Platform listCategoriesBasic \
    --namespace $AB_NAMESPACE \
    --storeId '3lYypHle6IWEflFZ' \
    > test.out 2>&1
eval_tap $? 33 'ListCategoriesBasic' test.out

#- 34 GetCategory
samples/cli/sample-apps Platform getCategory \
    --categoryPath '3YtPuV8O38jGA4Y0' \
    --namespace $AB_NAMESPACE \
    --storeId '5LFhekBuHkWs0SUh' \
    > test.out 2>&1
eval_tap $? 34 'GetCategory' test.out

#- 35 UpdateCategory
samples/cli/sample-apps Platform updateCategory \
    --categoryPath '8djgIL58lKe5gexR' \
    --namespace $AB_NAMESPACE \
    --storeId 'hoEFLHF0EYGd7Zqa' \
    --body '{"localizationDisplayNames": {"4RoWFdvEr2sqPsfw": "Lb4N4qmFR3kwWH8Z", "rBDN48Xg7PlUtZYI": "E2dV5rjM30R6X1Qk", "79XCMhPvXKFjO6wz": "mF1OjAHxYKmVSPnQ"}}' \
    > test.out 2>&1
eval_tap $? 35 'UpdateCategory' test.out

#- 36 DeleteCategory
samples/cli/sample-apps Platform deleteCategory \
    --categoryPath 'YDQlBI8miHUQadsC' \
    --namespace $AB_NAMESPACE \
    --storeId 'XIUXgw1u1hSn8VGI' \
    > test.out 2>&1
eval_tap $? 36 'DeleteCategory' test.out

#- 37 GetChildCategories
samples/cli/sample-apps Platform getChildCategories \
    --categoryPath 'yNZ6VVycapHc2hZX' \
    --namespace $AB_NAMESPACE \
    --storeId 'z6uWR4xWtDE1LQgi' \
    > test.out 2>&1
eval_tap $? 37 'GetChildCategories' test.out

#- 38 GetDescendantCategories
samples/cli/sample-apps Platform getDescendantCategories \
    --categoryPath 'QkHmdxwDKCPYI8dU' \
    --namespace $AB_NAMESPACE \
    --storeId '4iYuQ7oywaCtvTTC' \
    > test.out 2>&1
eval_tap $? 38 'GetDescendantCategories' test.out

#- 39 QueryCodes
samples/cli/sample-apps Platform queryCodes \
    --campaignId 'qs9sMVy2SM0E806U' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --batchName 'wADQtx21qATZmFQx' \
    --batchNo '[75, 99, 19]' \
    --code 'R2nS6pfM1ebOmUeT' \
    --limit '6' \
    --offset '55' \
    --withBatchName 'false' \
    > test.out 2>&1
eval_tap $? 39 'QueryCodes' test.out

#- 40 CreateCodes
samples/cli/sample-apps Platform createCodes \
    --campaignId 'JfAAZdBxasn9khJG' \
    --namespace $AB_NAMESPACE \
    --body '{"batchName": "hHDtVTkJumRBbmoa", "codeValue": "sXmn1x7xFkCVau5V", "quantity": 95}' \
    > test.out 2>&1
eval_tap $? 40 'CreateCodes' test.out

#- 41 Download
samples/cli/sample-apps Platform download \
    --campaignId 'n28H3bRza1zzlB2p' \
    --namespace $AB_NAMESPACE \
    --batchName 'iAR5BGY2Ju8sdZ6D' \
    --batchNo '[35, 29, 89]' \
    --withBatchName 'true' \
    > test.out 2>&1
eval_tap $? 41 'Download' test.out

#- 42 BulkDisableCodes
samples/cli/sample-apps Platform bulkDisableCodes \
    --campaignId 'o7QMv0XUlSrqw1rU' \
    --namespace $AB_NAMESPACE \
    --batchName 'C6wKKR6yTubfjR9T' \
    --batchNo '[39, 80, 78]' \
    > test.out 2>&1
eval_tap $? 42 'BulkDisableCodes' test.out

#- 43 BulkEnableCodes
samples/cli/sample-apps Platform bulkEnableCodes \
    --campaignId 'Ykd26QGq4VWbqHrs' \
    --namespace $AB_NAMESPACE \
    --batchName 'm8Z6s2yiT4uMv1pm' \
    --batchNo '[72, 74, 14]' \
    > test.out 2>&1
eval_tap $? 43 'BulkEnableCodes' test.out

#- 44 QueryRedeemHistory
samples/cli/sample-apps Platform queryRedeemHistory \
    --campaignId 'mIwDhft3QHK6AU9u' \
    --namespace $AB_NAMESPACE \
    --code 'JjBOisl0oaBZHHI1' \
    --limit '73' \
    --offset '98' \
    --userId 'WIt9t5hm6SXZIjGb' \
    > test.out 2>&1
eval_tap $? 44 'QueryRedeemHistory' test.out

#- 45 GetCode
samples/cli/sample-apps Platform getCode \
    --code 'qvwSbI6F4JzgIY3m' \
    --namespace $AB_NAMESPACE \
    --redeemable 'false' \
    --withBatchName 'true' \
    > test.out 2>&1
eval_tap $? 45 'GetCode' test.out

#- 46 DisableCode
samples/cli/sample-apps Platform disableCode \
    --code 'ghTeFJX6Kw8HjW7I' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 46 'DisableCode' test.out

#- 47 EnableCode
samples/cli/sample-apps Platform enableCode \
    --code 'kegkeEfBVJ4iEpTo' \
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
    --body '{"currencyCode": "J8xWIaVeWCAC09C3", "currencySymbol": "Z5d3fRj2iVJlbazh", "currencyType": "REAL", "decimals": 29, "localizationDescriptions": {"GFVidNC3jNNGbBUe": "dDl0wwfaINNRS4vl", "UMBvIKn6Q0l82pAm": "480c7pyj82CIaDE0", "buSeXaB4zC3eyam3": "dM4PSonTxLDlUKua"}}' \
    > test.out 2>&1
eval_tap $? 52 'CreateCurrency' test.out

#- 53 UpdateCurrency
samples/cli/sample-apps Platform updateCurrency \
    --currencyCode '62NUa80wkN4RLf1f' \
    --namespace $AB_NAMESPACE \
    --body '{"localizationDescriptions": {"2Pwrjy76DJhizVl2": "CI2euIyspfj9RuBe", "GCIHs75c1pL9YOgM": "zbxiecSf9rBZWaJG", "CaP3arHFsoOhBxUy": "riRN4A4lyhfc7k5k"}}' \
    > test.out 2>&1
eval_tap $? 53 'UpdateCurrency' test.out

#- 54 DeleteCurrency
samples/cli/sample-apps Platform deleteCurrency \
    --currencyCode 'WJlcCMgWbmly2rGA' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 54 'DeleteCurrency' test.out

#- 55 GetCurrencyConfig
samples/cli/sample-apps Platform getCurrencyConfig \
    --currencyCode 'X6a7eIBTYyNO3TMe' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 55 'GetCurrencyConfig' test.out

#- 56 GetCurrencySummary
samples/cli/sample-apps Platform getCurrencySummary \
    --currencyCode 'NK5RXm9tB7TV5a3z' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 56 'GetCurrencySummary' test.out

#- 57 GetDLCItemConfigHistory
samples/cli/sample-apps Platform getDLCItemConfigHistory \
    --namespace $AB_NAMESPACE \
    --dlcId '2zAzbqoOa2d13xWf' \
    > test.out 2>&1
eval_tap $? 57 'GetDLCItemConfigHistory' test.out

#- 58 RestoreDLCItemConfigHistory
samples/cli/sample-apps Platform restoreDLCItemConfigHistory \
    --id 'HxQZV51jt8VMfaux' \
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
    --body '{"data": [{"autoUpdate": false, "id": "aSpRLCYww9V2NGRD", "rewards": [{"currency": {"currencyCode": "DFy13hu2lj2t5Bit", "namespace": "BgY9Xcfm7pdLDEJV"}, "item": {"itemId": "6aRLnyOhT4G7NqRZ", "itemName": "Msoximn72xJJv9al", "itemSku": "IVZYkkH1PXodld69", "itemType": "NyzuIuLuc7LGiC8B"}, "quantity": 19, "type": "CURRENCY"}, {"currency": {"currencyCode": "B6QIVqJvNBlI0089", "namespace": "TlRzp1kfjqVYvON0"}, "item": {"itemId": "ORBZ0nQKal9fTInd", "itemName": "zLgKa2gbhYkZOXne", "itemSku": "vYkw4pt9QqNPyLVK", "itemType": "pZJRj5UHp3OzpTxI"}, "quantity": 60, "type": "ITEM"}, {"currency": {"currencyCode": "G2qnTol7oiz96DRp", "namespace": "IkeMIsmyRGCXIuAU"}, "item": {"itemId": "7UpC9qTvZ58tkz68", "itemName": "2jjNoD9NCd3EKpFr", "itemSku": "qUCWDsBmCh5FRmFC", "itemType": "DYMhCRmpTh1kVl9Q"}, "quantity": 87, "type": "ITEM"}], "rvn": 31}, {"autoUpdate": true, "id": "CMdYA8WSrrZrZXO7", "rewards": [{"currency": {"currencyCode": "Fn8M3zvXFNRy5G3Q", "namespace": "Yojp5HZNdvI0sO4f"}, "item": {"itemId": "uKxKmVzBiR0z945F", "itemName": "b7rsDSyjUISqafaP", "itemSku": "unQ7OLn8b43fMOFy", "itemType": "QO2nm4NJ1jgiCGfh"}, "quantity": 30, "type": "CURRENCY"}, {"currency": {"currencyCode": "wZ4bwXJyRDu2uYAy", "namespace": "bYmhe0c8ECQKBrHl"}, "item": {"itemId": "xub5mZbgwsWxFZ19", "itemName": "apGzMcwEY8dYjFi8", "itemSku": "X1Hrg20EjEb59rUn", "itemType": "eWwYcr0z7YUoSjbk"}, "quantity": 19, "type": "ITEM"}, {"currency": {"currencyCode": "nPsnGl4QxULQdJqk", "namespace": "cGVtYb0ovz71YjI3"}, "item": {"itemId": "1Jf6ZQ3ETeVYqF7F", "itemName": "UE9BeJycK4G01joD", "itemSku": "5DFl3FybW54PgSS9", "itemType": "7GL6V2dERBoqLOL7"}, "quantity": 64, "type": "ITEM"}], "rvn": 69}, {"autoUpdate": true, "id": "iaSryebZ0LxO0ks8", "rewards": [{"currency": {"currencyCode": "nkDzgTbQ7wmcg8Uy", "namespace": "FRVqXPzXPhCCyTW7"}, "item": {"itemId": "Q4Lw6oPxt8PBD3AL", "itemName": "M0bFiaNeRU0bTRrX", "itemSku": "ncAyZNf81lHgHwFO", "itemType": "SKcpMJsvBqtAa88X"}, "quantity": 89, "type": "ITEM"}, {"currency": {"currencyCode": "9DTib9G5Oq9kxl9k", "namespace": "BFRISRY3nxZEUweK"}, "item": {"itemId": "waLcHhIIxYBhVaP8", "itemName": "FJW4mxLuP3wTygnt", "itemSku": "yNHCP9Eg8XQuRipI", "itemType": "vzomHZUh4uvYnaBn"}, "quantity": 23, "type": "CURRENCY"}, {"currency": {"currencyCode": "wUSZlCDqzyNSZ5Ki", "namespace": "ifZVQP0dtlGyu7qP"}, "item": {"itemId": "hxXjVs7ghJ6Ojj1W", "itemName": "1t0CvOZ8KRfYHsih", "itemSku": "dfDgHo3S87MlqXdt", "itemType": "88rn75BUQWpii73y"}, "quantity": 65, "type": "CURRENCY"}], "rvn": 82}]}' \
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
    --body '{"data": [{"platform": "EPICGAMES", "platformDlcIdMap": {"VA3Dcm4weUL6BWyp": "lKETQNgxCAvUw8Sq", "6pooKVBzbgxRcB4t": "BdQNHI6a2nfnyv4e", "ktmd1U0AVpg5DkwV": "DAkXrCrgLSifuxeO"}}, {"platform": "OCULUS", "platformDlcIdMap": {"lKH6RGpPU61aQOSF": "7VXMynuKgQOp7s9B", "xT3sfMrgnbooMJu7": "AAqd5CcB4lDWFxmL", "QjZIrF8U5JM1rdJS": "4oxR3qD4q4dR79Su"}}, {"platform": "EPICGAMES", "platformDlcIdMap": {"40m6wmv5SruUllrD": "0zDi5f4UeEGluWdI", "tjgmfTW4G7lF30gS": "IlwZUz4bwVPlEMlj", "2sxPS3HqR5F3mLRE": "dExgfZxPvfQEFz5y"}}]}' \
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
    --activeOnly 'false' \
    --appType 'DLC' \
    --entitlementClazz 'SUBSCRIPTION' \
    --entitlementName 'zKuvuLEfqeKT7HBO' \
    --itemId '["LX6da3UhlDIYe35X", "Mee5FkLAW5acrDWJ", "eXJ00gvp6WlV45uF"]' \
    --limit '61' \
    --offset '87' \
    --origin 'Epic' \
    --userId 'UPQRTAU5mpJunIou' \
    > test.out 2>&1
eval_tap $? 65 'QueryEntitlements1' test.out

#- 66 QueryEntitlements
samples/cli/sample-apps Platform queryEntitlements \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --itemIds '["3aqDOmDVWMof1Lmr", "WWhyDPdNiT7XGqIU", "IpB5XplA1cWyaRWh"]' \
    --limit '44' \
    --offset '87' \
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
    --withoutCache 'false' \
    > test.out 2>&1
eval_tap $? 68 'GetEntitlementConfigInfo' test.out

#- 69 GrantEntitlements
samples/cli/sample-apps Platform grantEntitlements \
    --namespace $AB_NAMESPACE \
    --body '{"entitlementGrantList": [{"collectionId": "TQWdVFHZyKuZ4a0Q", "endDate": "1990-06-20T00:00:00Z", "grantedCode": "Dd6rA1jbG4YP5J16", "itemId": "Nb8oD8EuhuF8NGWn", "itemNamespace": "CsfNosvCc48zcfAV", "language": "rPIk_BRnK", "metadata": {"5S3FBP0yOQdipG06": {}, "NtRpu3Jjq3z6xh8Q": {}, "jpcsF5KgBDrvKnLQ": {}}, "origin": "Xbox", "quantity": 87, "region": "50OK24YroqPmUx3H", "source": "REDEEM_CODE", "startDate": "1971-08-11T00:00:00Z", "storeId": "9Aes0KSVtBseV6lJ"}, {"collectionId": "gvIcdiKvsDZ0EBWR", "endDate": "1972-06-12T00:00:00Z", "grantedCode": "CVXmu2e4Esq1FDYP", "itemId": "jx6q1bujELBqvt1p", "itemNamespace": "0ZmXJ9VmIiKjeSgf", "language": "ZK_rpud-040", "metadata": {"fDTnYRS84J8UtggY": {}, "7k2h1ViiXqElAqHW": {}, "0dEr1EyQKSp6qGQF": {}}, "origin": "Other", "quantity": 71, "region": "o7Mis6jeB3n41Mq5", "source": "REWARD", "startDate": "1987-05-31T00:00:00Z", "storeId": "hZfII7vw0NzrKlEy"}, {"collectionId": "UwHyr0V8Azt9lfZ8", "endDate": "1990-10-14T00:00:00Z", "grantedCode": "KYtkc7KOwfxEFc1Q", "itemId": "oOFcqiBCaKAuiVA0", "itemNamespace": "MA2i8Duf4bDA1Otm", "language": "esD", "metadata": {"jSljRphaG1eg5cFg": {}, "jAdbeDbO0Leeaql0": {}, "Gx6rqrdXYkod0JvF": {}}, "origin": "GooglePlay", "quantity": 54, "region": "FUiOER7s4gskw9ki", "source": "OTHER", "startDate": "1995-11-04T00:00:00Z", "storeId": "VpuNtvu41y3Dgi5u"}], "userIds": ["pB6xZZeG3XjAK1pD", "pb7cvN0EA2Je1P6X", "gSsdzZLdyDL5jR6G"]}' \
    > test.out 2>&1
eval_tap $? 69 'GrantEntitlements' test.out

#- 70 RevokeEntitlements
samples/cli/sample-apps Platform revokeEntitlements \
    --namespace $AB_NAMESPACE \
    --body '["paIRXTczB1nUe11F", "lsaduCytgtpsN4kD", "yRpcX19yVPOMiz6D"]' \
    > test.out 2>&1
eval_tap $? 70 'RevokeEntitlements' test.out

#- 71 GetEntitlement
samples/cli/sample-apps Platform getEntitlement \
    --entitlementId '6k1uuFT9vJsj2rzx' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 71 'GetEntitlement' test.out

#- 72 QueryFulfillmentHistories
samples/cli/sample-apps Platform queryFulfillmentHistories \
    --namespace $AB_NAMESPACE \
    --limit '89' \
    --offset '89' \
    --status 'FAIL' \
    --userId 'kp6ZbNUNKyI4kBk4' \
    > test.out 2>&1
eval_tap $? 72 'QueryFulfillmentHistories' test.out

#- 73 QueryIAPClawbackHistory
samples/cli/sample-apps Platform queryIAPClawbackHistory \
    --namespace $AB_NAMESPACE \
    --endTime 'EFOb0hZMa0H8gxFb' \
    --eventType 'REVOKED' \
    --externalOrderId 'uyVzEmhPvfFIowev' \
    --limit '89' \
    --offset '28' \
    --startTime 'LmYSp2v9VE1N4cQu' \
    --status 'FAIL' \
    --userId 'O9mEdtXLmebC1Ev8' \
    > test.out 2>&1
eval_tap $? 73 'QueryIAPClawbackHistory' test.out

#- 74 MockPlayStationStreamEvent
samples/cli/sample-apps Platform mockPlayStationStreamEvent \
    --namespace $AB_NAMESPACE \
    --body '{"body": {"account": "Cr7HePTGD6FXYImi", "additionalData": {"entitlement": [{"clientTransaction": [{"amountConsumed": 78, "clientTransactionId": "ZYPRg1NOwa8V6CNW"}, {"amountConsumed": 76, "clientTransactionId": "ttRhvnb9XY0ikVtF"}, {"amountConsumed": 19, "clientTransactionId": "9pTMg1Mz2KyVGLiC"}], "entitlementId": "RT70Wf2XX9fTUEsl", "usageCount": 96}, {"clientTransaction": [{"amountConsumed": 63, "clientTransactionId": "A7aXxXJRNpWpOiVN"}, {"amountConsumed": 69, "clientTransactionId": "mfAm8CWVDvFX8WZT"}, {"amountConsumed": 59, "clientTransactionId": "ApRWUvAhs2aWR86T"}], "entitlementId": "8R72gagcDqtqign7", "usageCount": 66}, {"clientTransaction": [{"amountConsumed": 1, "clientTransactionId": "DqdAS8YJagnfHp7Y"}, {"amountConsumed": 40, "clientTransactionId": "1ioMQrkKouyvx1PR"}, {"amountConsumed": 13, "clientTransactionId": "nNo6DvhnvMqhFbBb"}], "entitlementId": "oWGYBwRJVYCIAgf1", "usageCount": 64}], "purpose": "CE5mStZUm5q151gy"}, "originalTitleName": "1BMbgUj1oVXRxWL7", "paymentProductSKU": "vLV8V7mnD6YiGbpC", "purchaseDate": "yTiODRrLsC6twm1I", "sourceOrderItemId": "iOPokmF4sXLByeGc", "titleName": "7BFW9ig9AzTcK42I"}, "eventDomain": "EJwab8h4o4FKDM1U", "eventSource": "tWhxObCTtkfAUNYu", "eventType": "Q4iHRrPpr9pvKalP", "eventVersion": 93, "id": "kWktDKeO6upLoQCF", "timestamp": "LyWWTh5FsqBC44Vi"}' \
    > test.out 2>&1
eval_tap $? 74 'MockPlayStationStreamEvent' test.out

#- 75 MockXblClawbackEvent
samples/cli/sample-apps Platform mockXblClawbackEvent \
    --namespace $AB_NAMESPACE \
    --body '{"data": {"eventDate": "OXZndnbpgYqbs9xE", "eventState": "UrXUpQGXWUmqi5NJ", "lineItemId": "qv2IPbFOhBBzDFkl", "orderId": "AnU8Rp7e2kPDY6Yu", "productId": "DMyBVY9Jxuhodnc5", "productType": "07IO8mf0kY7G5Ffh", "purchasedDate": "3t5Ub86xx9Su8E94", "sandboxId": "HMDEZjScqVdahKdn", "skuId": "mNd6GBf4yrIt9IXQ", "subscriptionData": {"consumedDurationInDays": 45, "dateTime": "EYCFcUQD56k4oZhF", "durationInDays": 40, "recurrenceId": "UOx4bBOK63ZcNZv3"}}, "datacontenttype": "VztJiufYqQlT38m1", "id": "5DR2p98eaGJFNpZN", "source": "9nqWK0hugwd5VmLj", "specVersion": "edwQYVLstXDFaKAY", "subject": "QmHVDWZ50YTds9Vm", "time": "KSGKRyjfwoNbH5z7", "traceparent": "T8kZya0Zp5PShGfb", "type": "bKLEjaGVolM2ICrA"}' \
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
    --body '{"appAppleId": 64, "bundleId": "fetHhEHoc3X782EB", "issuerId": "clvyYH5qZooqattU", "keyId": "rJwiaZz8Jx3AgU4T", "password": "uh86dYDWzDYjLW4C", "version": "V1"}' \
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
    --body '{"sandboxId": "fQi2bwrZCRGnjS4R"}' \
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
    --body '{"applicationName": "9oYuSQj6Z9g74SvY", "notificationTokenAudience": "AtBR8QGRRBqoRrIK", "notificationTokenEmail": "nFNADIxB1vIvNkhG", "packageName": "uDYfM2m8OjKDnJYc", "serviceAccountId": "aUZMagqMK6cpVrhB"}' \
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
    --body '{"data": [{"itemIdentity": "LaiColQe1MZQay9a", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"b1mjxWBfvlryTZWF": "stT2SaJ3n4unoyQ5", "d5tAeVUcVpDI5zbt": "eAZOmSdk2EpcHdmn", "oavZGqHy367fuhhn": "sFchoQqkvaNM4PPD"}}, {"itemIdentity": "56BJB3U37HGjLCNa", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"zSGdu3CVntUwjRIz": "r1itjeDNU8AfQ4je", "ZiZSlTk6s2ETkQis": "SYbzdmh7nY74j4tk", "rcAUGHpchmtF9StJ": "hlTcN95Mykb36Nrv"}}, {"itemIdentity": "TVlKci43Yd7AL5jQ", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"tNpAdE1Qm0hmcpxf": "53m4Vo4KeOeCuzfE", "0EmkhFhBKoJGOmz6": "5hd3BWK0l8ZFuAEq", "upct9nj39qLVaJW9": "A8h7zpNrxlCh546O"}}]}' \
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
    --body '{"appId": "SgOBQA52eUkw2WvC", "appSecret": "BuILR4maP7ZlUS7R"}' \
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
    --body '{"backOfficeServerClientId": "BXhWgZUpYqwEf6UG", "backOfficeServerClientSecret": "ql5tBzRrIEQBBLrk", "enableStreamJob": true, "environment": "tp14AhLc1Y7LbP6o", "streamName": "QEgi9fxJKa9AD0Fu", "streamPartnerName": "JtBnjPSgHDDayml3"}' \
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
    --body '{"backOfficeServerClientId": "DoloVBHLg6SHnX8a", "backOfficeServerClientSecret": "z0yX2oEmxt2nRypm", "enableStreamJob": false, "environment": "ajKgko6x4XpPZDHz", "streamName": "16QX9mLLJ1xAODUB", "streamPartnerName": "flHnChgpR0AdW7Ei"}' \
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
    --body '{"appId": "52ZQ2hmXenrtUaO8", "env": "SANDBOX", "publisherAuthenticationKey": "tDN8YJgpU9LXhFwu", "syncMode": "INVENTORY"}' \
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
    --body '{"clientId": "6QGGUoYGpvTOpfsh", "clientSecret": "AY1EzH6wmFGJXi8g", "organizationId": "KQIJ9k6nS1DApME5"}' \
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
    --body '{"enableClawback": false, "entraAppClientId": "EN4i69UQg5lQ4fp6", "entraAppClientSecret": "j9t1K6998Brc3CP6", "entraTenantId": "fAvN2irBEgep5yOv", "relyingPartyCert": "SN4cNH5BUEZkrn5L"}' \
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
    --password 'NlADLKjSCXsSoUfr' \
    > test.out 2>&1
eval_tap $? 107 'UpdateXblBPCertFile' test.out

#- 108 QueryThirdPartyNotifications
samples/cli/sample-apps Platform queryThirdPartyNotifications \
    --namespace $AB_NAMESPACE \
    --endDate 'lsd0jS3cGqjYf6cE' \
    --externalId 'bqmlqlU7H9BFAGXH' \
    --limit '11' \
    --offset '20' \
    --source 'STEAM' \
    --startDate 'E1VFmHKGVNhToLM0' \
    --status 'PROCESSED' \
    --type 'B5hAl4RCduxsAaM5' \
    > test.out 2>&1
eval_tap $? 108 'QueryThirdPartyNotifications' test.out

#- 109 QueryAbnormalTransactions
samples/cli/sample-apps Platform queryAbnormalTransactions \
    --namespace $AB_NAMESPACE \
    --limit '98' \
    --offset '33' \
    --orderId 'ClClhotXKwujG9t9' \
    --steamId 'KWst2XoZuQmwFAxN' \
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
    --body '{"env": "SANDBOX", "lastTime": "1992-08-20T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 111 'AdminResetSteamJobTime' test.out

#- 112 AdminRefundIAPOrder
samples/cli/sample-apps Platform adminRefundIAPOrder \
    --iapOrderNo 'GtpxXT83k5jGf3Dn' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 112 'AdminRefundIAPOrder' test.out

#- 113 QuerySteamReportHistories
samples/cli/sample-apps Platform querySteamReportHistories \
    --namespace $AB_NAMESPACE \
    --limit '89' \
    --offset '97' \
    --orderId 'GTY0uS5iHEXAMqkv' \
    --processStatus 'IGNORED' \
    --steamId 'elbcTpSBp2iVzoJI' \
    > test.out 2>&1
eval_tap $? 113 'QuerySteamReportHistories' test.out

#- 114 QueryThirdPartySubscription
samples/cli/sample-apps Platform queryThirdPartySubscription \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --groupId 'pSG32ilhtY4QhmQV' \
    --limit '63' \
    --offset '59' \
    --platform 'XBOX' \
    --productId 'RRnNT4bqCXBngJEC' \
    --userId 'aplwx2aixgt0Qu0i' \
    > test.out 2>&1
eval_tap $? 114 'QueryThirdPartySubscription' test.out

#- 115 GetIAPOrderConsumeDetails
samples/cli/sample-apps Platform getIAPOrderConsumeDetails \
    --iapOrderNo 'IKodRzXgxi6lsN2M' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 115 'GetIAPOrderConsumeDetails' test.out

#- 116 DownloadInvoiceDetails
samples/cli/sample-apps Platform downloadInvoiceDetails \
    --namespace $AB_NAMESPACE \
    --endTime 'ocVnNIRDEBY6BUEs' \
    --feature 'mVSXBSdbIBon1NfT' \
    --itemId '9pkB3gjck1xBMCn7' \
    --itemType 'COINS' \
    --startTime 'ayeHrLx25GPpPLKZ' \
    > test.out 2>&1
eval_tap $? 116 'DownloadInvoiceDetails' test.out

#- 117 GenerateInvoiceSummary
samples/cli/sample-apps Platform generateInvoiceSummary \
    --namespace $AB_NAMESPACE \
    --endTime 'TbwgiSqwoLKA7TuM' \
    --feature 'O0hwzoGEuNExlCVK' \
    --itemId '9kXAriAoMMsd0LQw' \
    --itemType 'MEDIA' \
    --startTime 'MkevxlEE6wsqo3pm' \
    > test.out 2>&1
eval_tap $? 117 'GenerateInvoiceSummary' test.out

#- 118 SyncInGameItem
samples/cli/sample-apps Platform syncInGameItem \
    --namespace $AB_NAMESPACE \
    --storeId 'xJW1Tp89oUKMu03E' \
    --body '{"categoryPath": "2GkXrR8ahCqnMrNf", "targetItemId": "nMK8mHSe0W4CRxa8", "targetNamespace": "5Z5iWQM6tLbAHVnj"}' \
    > test.out 2>&1
eval_tap $? 118 'SyncInGameItem' test.out

#- 119 CreateItem
samples/cli/sample-apps Platform createItem \
    --namespace $AB_NAMESPACE \
    --storeId 'epuO0aZc8KOARDhk' \
    --body '{"appId": "rQ9v3a9pOeWNH0cD", "appType": "DLC", "baseAppId": "HMfBnuAbQdaOl7Ve", "boothName": "jzoLrKwKXrFtlkwK", "categoryPath": "cP2a0DmIqHYzEY1z", "clazz": "vEOmWQP9iMddZpLs", "displayOrder": 18, "entitlementType": "DURABLE", "ext": {"AX9OfPe1qlNuMk3B": {}, "WQ9FyTMTJAxnZBQX": {}, "FB3muY8htmC3Hrrl": {}}, "features": ["L051LTlxN6WC4AEa", "G7FG3Kb4IJNz0fEB", "XftuX6lFWtBTvZ1Z"], "flexible": true, "images": [{"as": "5QDbdoj6liUkIQE5", "caption": "UrzrZOctStTdLI4N", "height": 76, "imageUrl": "KJ2DQg2pvHFQAmRY", "smallImageUrl": "7kVyFIQ9yRf82bIJ", "width": 51}, {"as": "p4PMOJQtflUT2AP2", "caption": "tkPefTUoXswdU2R0", "height": 3, "imageUrl": "qx2EwsFtQaPuVMXX", "smallImageUrl": "kIoAOLoOPGem0Bsu", "width": 2}, {"as": "0fQrswpoffugP7FV", "caption": "RVs9IXvSZI9BZGsb", "height": 29, "imageUrl": "IdrMi4gcsB4yGNfe", "smallImageUrl": "NnkEZD2s4sYxoeWE", "width": 6}], "inventoryConfig": {"customAttributes": {"ykjesB4jwrJsvOFM": {}, "dtFLHj4VsTfGA8m7": {}, "AUKbhkXS730TK4pe": {}}, "serverCustomAttributes": {"89kyDledyZVeUiEs": {}, "5L4FBvB8c0w2L21O": {}, "lJCIv2EUinpQmOJf": {}}, "slotUsed": 54}, "itemIds": ["FW0pQViDbQRHTfCl", "zzrjs9nIR9ser5On", "rXr3cFJpu8LN3XKR"], "itemQty": {"t6U9xio4TBriCy3v": 73, "46cvWJcOwQPU6Rdc": 10, "UygXcmnQK9JE58xE": 99}, "itemType": "INGAMEITEM", "listable": false, "localizations": {"0bcNMcklb8GQ7sRh": {"description": "yE9ntsVTl9L3nAoS", "localExt": {"gEmgPXAegF7Ett6G": {}, "eVWG4morMXSK9lPC": {}, "HpAQkA1IRrDt7VMZ": {}}, "longDescription": "WGLaryEMDiGb6L28", "title": "Qu5bLBjEGnfoEnJq"}, "vPKQN1HVdMECOMJJ": {"description": "1Dg0j7WQmgtPiTt7", "localExt": {"7xAVyxldrZJofiDw": {}, "gGjSHfC7KGzsfdfj": {}, "ctlMewxKawEhrw4x": {}}, "longDescription": "abrnZCJShpNffW35", "title": "WoZlgZSwUl5cVjH3"}, "Ke2h1NBr9tA9pAta": {"description": "Mplfpvq4z84AhzHy", "localExt": {"cjzhPCu1sRtxBjtZ": {}, "xr310qq6iw1kaC9r": {}, "GlDTgq2LEe5LvixZ": {}}, "longDescription": "ttgOKP0NtOlg8V7g", "title": "JjpGv8tIBxmNwO02"}}, "lootBoxConfig": {"rewardCount": 44, "rewards": [{"lootBoxItems": [{"count": 6, "duration": 7, "endDate": "1977-08-07T00:00:00Z", "itemId": "SrjxFsJrVf1OmMzt", "itemSku": "Mu6NtybRE3V8DCXi", "itemType": "4vMWgjPjvjaRw1xy"}, {"count": 73, "duration": 70, "endDate": "1996-04-06T00:00:00Z", "itemId": "0Ltfj8DiRzI0MJME", "itemSku": "f2sJcJtzNPMxbAI4", "itemType": "Y8muEwGv8amJovwn"}, {"count": 86, "duration": 0, "endDate": "1996-06-05T00:00:00Z", "itemId": "RyxMRo8G59IS4WzQ", "itemSku": "4V8KqTqkKzQPt1EX", "itemType": "LPp09lKDAQ7FSw1D"}], "name": "eErkGRQUOggfsgDk", "odds": 0.10817484614574491, "type": "REWARD", "weight": 10}, {"lootBoxItems": [{"count": 43, "duration": 60, "endDate": "1973-05-17T00:00:00Z", "itemId": "ykOnZ2H2HFc7xZGR", "itemSku": "nNHutJqeexUhxxAF", "itemType": "qqtcl6GGj4ypI7f1"}, {"count": 49, "duration": 54, "endDate": "1998-11-13T00:00:00Z", "itemId": "Bn5BW6vkQwUVbOPn", "itemSku": "0ayCJMj5wtGSxYOQ", "itemType": "LO2FOxMV1VgjxhB7"}, {"count": 72, "duration": 23, "endDate": "1972-07-21T00:00:00Z", "itemId": "eX7i6TOT5wm8wocH", "itemSku": "l54Zc8GckNLN5PG7", "itemType": "OGtaAnCGcvllDfyq"}], "name": "tb9iopC2djaF7fXZ", "odds": 0.8659108702047373, "type": "REWARD_GROUP", "weight": 75}, {"lootBoxItems": [{"count": 25, "duration": 30, "endDate": "1991-03-06T00:00:00Z", "itemId": "lWFXNFBy6CmMjxgu", "itemSku": "DOHtJLtMKElpYFgT", "itemType": "0KfzJuSxIAfj2h6c"}, {"count": 82, "duration": 73, "endDate": "1990-02-07T00:00:00Z", "itemId": "0QhRwiKS5TpoCVu5", "itemSku": "ZzivrfsIykZsjgRO", "itemType": "hkwioTsYAKscWeDK"}, {"count": 28, "duration": 22, "endDate": "1978-11-01T00:00:00Z", "itemId": "i1ZhyVs3wtufSjdc", "itemSku": "h5A24y0Tw1BT3kPs", "itemType": "Uq0EEXSY3ABAYazQ"}], "name": "iGVTHCWfhZanyhJF", "odds": 0.33519183132634134, "type": "REWARD", "weight": 53}], "rollFunction": "DEFAULT"}, "maxCount": 9, "maxCountPerUser": 70, "name": "AkMb0CGl9OOZuEYG", "optionBoxConfig": {"boxItems": [{"count": 53, "duration": 63, "endDate": "1977-09-29T00:00:00Z", "itemId": "ZaKffZibrMKLRmEi", "itemSku": "7olBOoT8qGZjW7AH", "itemType": "EK4fTWoHySl15UaF"}, {"count": 29, "duration": 1, "endDate": "1978-11-10T00:00:00Z", "itemId": "w2PMdiL8PbpFiyo5", "itemSku": "gJKlr8PiVkh9xotK", "itemType": "pyYC0FJDbuOmiwaX"}, {"count": 53, "duration": 54, "endDate": "1992-09-24T00:00:00Z", "itemId": "LqWS1IV2iYcbRSuf", "itemSku": "Wa4cQ3cbsdriBvMn", "itemType": "JXMevbYzQL69Ilhy"}]}, "purchasable": true, "recurring": {"cycle": "WEEKLY", "fixedFreeDays": 14, "fixedTrialCycles": 14, "graceDays": 21}, "regionData": {"oFnnHwqoIh2OCvQ7": [{"currencyCode": "Sj4wg3x4uLvfP6iP", "currencyNamespace": "9S9bpHLQL3wIVoZp", "currencyType": "VIRTUAL", "discountAmount": 64, "discountExpireAt": "1999-05-01T00:00:00Z", "discountPercentage": 50, "discountPurchaseAt": "1986-09-10T00:00:00Z", "expireAt": "1997-04-23T00:00:00Z", "price": 26, "purchaseAt": "1989-04-16T00:00:00Z", "trialPrice": 19}, {"currencyCode": "8g89eTETdTmNtov7", "currencyNamespace": "WO21vNlCK9KZUIZX", "currencyType": "VIRTUAL", "discountAmount": 70, "discountExpireAt": "1985-08-16T00:00:00Z", "discountPercentage": 77, "discountPurchaseAt": "1978-06-22T00:00:00Z", "expireAt": "1992-02-12T00:00:00Z", "price": 20, "purchaseAt": "1974-08-13T00:00:00Z", "trialPrice": 98}, {"currencyCode": "RW1MtwBBFUq3kTLQ", "currencyNamespace": "bo22ymvf1TFjxAiu", "currencyType": "VIRTUAL", "discountAmount": 97, "discountExpireAt": "1997-12-28T00:00:00Z", "discountPercentage": 67, "discountPurchaseAt": "1993-04-16T00:00:00Z", "expireAt": "1988-07-21T00:00:00Z", "price": 100, "purchaseAt": "1997-07-09T00:00:00Z", "trialPrice": 13}], "rDJroE6GSdkU6tbf": [{"currencyCode": "yWPyPwRpussM9tjk", "currencyNamespace": "A2em6uoi0JhEr29k", "currencyType": "REAL", "discountAmount": 69, "discountExpireAt": "1980-08-30T00:00:00Z", "discountPercentage": 25, "discountPurchaseAt": "1994-09-09T00:00:00Z", "expireAt": "1979-07-24T00:00:00Z", "price": 69, "purchaseAt": "1975-03-29T00:00:00Z", "trialPrice": 20}, {"currencyCode": "nVW69SVAK9O2XeIQ", "currencyNamespace": "9gZdkJW2MKY5eLvx", "currencyType": "VIRTUAL", "discountAmount": 35, "discountExpireAt": "1975-12-22T00:00:00Z", "discountPercentage": 50, "discountPurchaseAt": "1990-10-24T00:00:00Z", "expireAt": "1988-05-23T00:00:00Z", "price": 36, "purchaseAt": "1987-06-24T00:00:00Z", "trialPrice": 73}, {"currencyCode": "Szm00q5gvGvbsDbB", "currencyNamespace": "HIT2joJ1HLrvJuST", "currencyType": "VIRTUAL", "discountAmount": 10, "discountExpireAt": "1987-12-28T00:00:00Z", "discountPercentage": 47, "discountPurchaseAt": "1980-04-18T00:00:00Z", "expireAt": "1972-07-22T00:00:00Z", "price": 35, "purchaseAt": "1995-05-17T00:00:00Z", "trialPrice": 35}], "IvJ4Qc5HWcUZ4pwv": [{"currencyCode": "FkwwLyzm5RHEyTIw", "currencyNamespace": "EfzWNR8zDZNs7INr", "currencyType": "REAL", "discountAmount": 81, "discountExpireAt": "1981-08-17T00:00:00Z", "discountPercentage": 60, "discountPurchaseAt": "1977-01-06T00:00:00Z", "expireAt": "1996-06-17T00:00:00Z", "price": 55, "purchaseAt": "1999-02-26T00:00:00Z", "trialPrice": 28}, {"currencyCode": "2wEfOPwDFg6vsnmy", "currencyNamespace": "3NF3TOqzsl7pqYxc", "currencyType": "VIRTUAL", "discountAmount": 37, "discountExpireAt": "1980-01-19T00:00:00Z", "discountPercentage": 73, "discountPurchaseAt": "1974-05-16T00:00:00Z", "expireAt": "1981-07-17T00:00:00Z", "price": 37, "purchaseAt": "1994-01-10T00:00:00Z", "trialPrice": 65}, {"currencyCode": "iQRdeyDW7WKVxGft", "currencyNamespace": "rCn6aEZfRuHe1uY2", "currencyType": "VIRTUAL", "discountAmount": 1, "discountExpireAt": "1975-07-20T00:00:00Z", "discountPercentage": 5, "discountPurchaseAt": "1975-11-23T00:00:00Z", "expireAt": "1992-01-18T00:00:00Z", "price": 35, "purchaseAt": "1972-12-04T00:00:00Z", "trialPrice": 28}]}, "saleConfig": {"currencyCode": "zh3EVpW3SNp95HWZ", "price": 44}, "seasonType": "PASS", "sectionExclusive": false, "sellable": false, "sku": "gdBL7pqnKPmE49bU", "stackable": true, "status": "ACTIVE", "tags": ["LHcd3yrDLh13Q2Xh", "io9vBMBjwUsK37a0", "GvqmDkIekxhd64J2"], "targetCurrencyCode": "h0KsMw6kSCdZnvXQ", "targetNamespace": "qU33QMBwKQev0Pi4", "thumbnailUrl": "uYTyEmhdMco4MgDo", "useCount": 63}' \
    > test.out 2>&1
eval_tap $? 119 'CreateItem' test.out

#- 120 GetItemByAppId
samples/cli/sample-apps Platform getItemByAppId \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'Lc8Lo4fMZzMfhUzn' \
    --appId 'wnrnGiJSz6b3rtXV' \
    > test.out 2>&1
eval_tap $? 120 'GetItemByAppId' test.out

#- 121 QueryItems
samples/cli/sample-apps Platform queryItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --appType 'DEMO' \
    --availableDate '8naJF8cRGwfEPFoH' \
    --baseAppId 'FF71As31lUcEe2PQ' \
    --categoryPath 'lEcKZGBXVZwcbY59' \
    --features 'l2P2kdwH4Yka2aHE' \
    --includeSubCategoryItem 'false' \
    --itemType 'SUBSCRIPTION' \
    --limit '77' \
    --offset '43' \
    --region 'eI7faTzBSWVehIN8' \
    --sortBy '["createdAt", "name:asc", "createdAt:asc"]' \
    --storeId 'eJYz7BmhiAPkmJlV' \
    --tags 'BZ9vyYYMQelN8lqi' \
    --targetNamespace 'Vz4voSsbmLsB4266' \
    > test.out 2>&1
eval_tap $? 121 'QueryItems' test.out

#- 122 ListBasicItemsByFeatures
samples/cli/sample-apps Platform listBasicItemsByFeatures \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --features '["1d4C40Qs3f0EVNFv", "IIfDBw5TZNswH5Jp", "0vLQXSQ38Jv8YOyv"]' \
    > test.out 2>&1
eval_tap $? 122 'ListBasicItemsByFeatures' test.out

#- 123 GetItems
samples/cli/sample-apps Platform getItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --storeId 'ZngHUqIjrxoQIfWj' \
    --itemIds '833mqmmaAQi0YqQo' \
    > test.out 2>&1
eval_tap $? 123 'GetItems' test.out

#- 124 GetItemBySku
samples/cli/sample-apps Platform getItemBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'wA9XL9hPO49YTplY' \
    --sku 'dR1xptVtTaKl8Zah' \
    > test.out 2>&1
eval_tap $? 124 'GetItemBySku' test.out

#- 125 GetLocaleItemBySku
samples/cli/sample-apps Platform getLocaleItemBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --language 'DzNvZYjACZUdotX1' \
    --populateBundle 'true' \
    --region 'BFo7ZDbdeqtSEjkr' \
    --storeId 'wbq5oxZGO24ItaGq' \
    --sku 'Tslm4gAKhnqnelXv' \
    > test.out 2>&1
eval_tap $? 125 'GetLocaleItemBySku' test.out

#- 126 GetEstimatedPrice
samples/cli/sample-apps Platform getEstimatedPrice \
    --namespace $AB_NAMESPACE \
    --platform 'nC4frsTRpm0E1aXp' \
    --region '77cnnUJhwuSkQFnc' \
    --storeId 'VA9owYrboJgXqzpC' \
    --itemIds 'k6K1jylt5W8guSgV' \
    --userId '9vAtVHNRvsTqMP5l' \
    > test.out 2>&1
eval_tap $? 126 'GetEstimatedPrice' test.out

#- 127 GetItemIdBySku
samples/cli/sample-apps Platform getItemIdBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'soYdokIeR4p54tJw' \
    --sku 'KabzU9FDCYcB7BgO' \
    > test.out 2>&1
eval_tap $? 127 'GetItemIdBySku' test.out

#- 128 GetBulkItemIdBySkus
samples/cli/sample-apps Platform getBulkItemIdBySkus \
    --namespace $AB_NAMESPACE \
    --sku '["PHF2SLXBXhtqO1pd", "tALWV7SHcCUbMjMu", "IpuweMatizaoCcyr"]' \
    --storeId '12jSUvjWTzQ5eqD9' \
    > test.out 2>&1
eval_tap $? 128 'GetBulkItemIdBySkus' test.out

#- 129 BulkGetLocaleItems
samples/cli/sample-apps Platform bulkGetLocaleItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --language 'm5iybJTJKBu0a1Tb' \
    --region 'B8KY6vTIpCKhDsMm' \
    --storeId 'xScEi41OYQCpkEQo' \
    --itemIds '1uaFnwMkDyEgS03T' \
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
    --platform 'q0s5W80KvHCTDXMG' \
    --userId 'vfJSgKh3xSdoQaDk' \
    --body '{"itemIds": ["kU0TW8TeIbam12VR", "cZ5IbyaFBIo4x2yV", "KwZiofpZ7Kw9keic"]}' \
    > test.out 2>&1
eval_tap $? 131 'ValidateItemPurchaseCondition' test.out

#- 132 BulkUpdateRegionData
samples/cli/sample-apps Platform bulkUpdateRegionData \
    --namespace $AB_NAMESPACE \
    --storeId 'PMNgaULfEpSjk17d' \
    --body '{"changes": [{"itemIdentities": ["0cc2rO7qOJWATn1W", "APxmitQUIBFwEJut", "a3apXXC0KcvYlewG"], "itemIdentityType": "ITEM_SKU", "regionData": {"cCWB0VGv1cwT8O5z": [{"currencyCode": "9y1fduoXGPN2ojj0", "currencyNamespace": "z6iJIr82GQtJ23hA", "currencyType": "REAL", "discountAmount": 12, "discountExpireAt": "1985-08-22T00:00:00Z", "discountPercentage": 45, "discountPurchaseAt": "1995-08-05T00:00:00Z", "discountedPrice": 41, "expireAt": "1991-08-23T00:00:00Z", "price": 97, "purchaseAt": "1977-11-10T00:00:00Z", "trialPrice": 87}, {"currencyCode": "87BypQFjC95vc6Ud", "currencyNamespace": "jdfVM6grCRwePygn", "currencyType": "REAL", "discountAmount": 79, "discountExpireAt": "1977-03-21T00:00:00Z", "discountPercentage": 7, "discountPurchaseAt": "1976-01-14T00:00:00Z", "discountedPrice": 15, "expireAt": "1976-04-16T00:00:00Z", "price": 46, "purchaseAt": "1974-05-05T00:00:00Z", "trialPrice": 75}, {"currencyCode": "HODOCapWk6HdKnSy", "currencyNamespace": "jy2DYygFziDNsSQQ", "currencyType": "REAL", "discountAmount": 23, "discountExpireAt": "1985-12-12T00:00:00Z", "discountPercentage": 29, "discountPurchaseAt": "1979-10-26T00:00:00Z", "discountedPrice": 13, "expireAt": "1974-07-21T00:00:00Z", "price": 13, "purchaseAt": "1989-02-23T00:00:00Z", "trialPrice": 23}], "xIGRAaVnJWSwV77v": [{"currencyCode": "QTzd08UQgA68N3OB", "currencyNamespace": "dL9TMiBEb1Y5eCCm", "currencyType": "VIRTUAL", "discountAmount": 9, "discountExpireAt": "1971-12-16T00:00:00Z", "discountPercentage": 100, "discountPurchaseAt": "1982-07-11T00:00:00Z", "discountedPrice": 83, "expireAt": "1980-03-28T00:00:00Z", "price": 44, "purchaseAt": "1972-09-13T00:00:00Z", "trialPrice": 38}, {"currencyCode": "6agTXT12BQ3as3rA", "currencyNamespace": "DVIPMk8AdZAi99pT", "currencyType": "VIRTUAL", "discountAmount": 25, "discountExpireAt": "1991-06-08T00:00:00Z", "discountPercentage": 97, "discountPurchaseAt": "1971-12-08T00:00:00Z", "discountedPrice": 3, "expireAt": "1999-09-01T00:00:00Z", "price": 20, "purchaseAt": "1990-12-25T00:00:00Z", "trialPrice": 47}, {"currencyCode": "tMZU0nxijZM4Qnv2", "currencyNamespace": "0ArRMphl2GHBT4vl", "currencyType": "VIRTUAL", "discountAmount": 51, "discountExpireAt": "1975-03-29T00:00:00Z", "discountPercentage": 35, "discountPurchaseAt": "1983-02-18T00:00:00Z", "discountedPrice": 83, "expireAt": "1994-03-18T00:00:00Z", "price": 64, "purchaseAt": "1975-03-17T00:00:00Z", "trialPrice": 66}], "t3Ksy1UheYREb45l": [{"currencyCode": "2TB1XoObxqL03ZjU", "currencyNamespace": "x06sA7902qgO2L2R", "currencyType": "REAL", "discountAmount": 26, "discountExpireAt": "1990-02-06T00:00:00Z", "discountPercentage": 83, "discountPurchaseAt": "1973-02-23T00:00:00Z", "discountedPrice": 19, "expireAt": "1983-12-06T00:00:00Z", "price": 2, "purchaseAt": "1993-06-07T00:00:00Z", "trialPrice": 32}, {"currencyCode": "JBYLMjzleULo7UAs", "currencyNamespace": "3rIElFkTgaLXpABe", "currencyType": "REAL", "discountAmount": 45, "discountExpireAt": "1993-10-03T00:00:00Z", "discountPercentage": 31, "discountPurchaseAt": "1991-04-22T00:00:00Z", "discountedPrice": 45, "expireAt": "1985-01-14T00:00:00Z", "price": 4, "purchaseAt": "1971-03-03T00:00:00Z", "trialPrice": 19}, {"currencyCode": "Fl6qi5tCgT2K3zOq", "currencyNamespace": "ibPUM72EySHJxytL", "currencyType": "VIRTUAL", "discountAmount": 76, "discountExpireAt": "1999-03-21T00:00:00Z", "discountPercentage": 85, "discountPurchaseAt": "1975-12-28T00:00:00Z", "discountedPrice": 22, "expireAt": "1997-02-17T00:00:00Z", "price": 88, "purchaseAt": "1972-04-26T00:00:00Z", "trialPrice": 96}]}}, {"itemIdentities": ["SUbPPK9H3pvaPdwg", "9CeCzs56lAgnkYlQ", "r9i2m9Z7HpkZ3rGd"], "itemIdentityType": "ITEM_SKU", "regionData": {"RZmT3m7Kh7BiKDPv": [{"currencyCode": "zy4YSqZEqGlGCDVZ", "currencyNamespace": "0EhXkth8Nrc3QOO5", "currencyType": "VIRTUAL", "discountAmount": 81, "discountExpireAt": "1971-01-20T00:00:00Z", "discountPercentage": 70, "discountPurchaseAt": "1977-06-06T00:00:00Z", "discountedPrice": 20, "expireAt": "1974-06-12T00:00:00Z", "price": 54, "purchaseAt": "1972-12-27T00:00:00Z", "trialPrice": 93}, {"currencyCode": "VKG5hUq41hRMaqcl", "currencyNamespace": "hr0HFTqxsB8uyKP6", "currencyType": "REAL", "discountAmount": 50, "discountExpireAt": "1994-09-22T00:00:00Z", "discountPercentage": 77, "discountPurchaseAt": "1982-11-21T00:00:00Z", "discountedPrice": 30, "expireAt": "1978-02-19T00:00:00Z", "price": 19, "purchaseAt": "1998-11-29T00:00:00Z", "trialPrice": 49}, {"currencyCode": "bASuPSNaU4HEirMf", "currencyNamespace": "OAmIguEnQav1txxe", "currencyType": "REAL", "discountAmount": 42, "discountExpireAt": "1999-10-03T00:00:00Z", "discountPercentage": 12, "discountPurchaseAt": "1989-11-25T00:00:00Z", "discountedPrice": 98, "expireAt": "1985-10-30T00:00:00Z", "price": 88, "purchaseAt": "1997-04-18T00:00:00Z", "trialPrice": 45}], "JdIBvCAqCoSE4r6k": [{"currencyCode": "eK12K2He8KS6sGDG", "currencyNamespace": "gQiazr7hOkkAn17s", "currencyType": "VIRTUAL", "discountAmount": 50, "discountExpireAt": "1991-02-28T00:00:00Z", "discountPercentage": 53, "discountPurchaseAt": "1983-03-02T00:00:00Z", "discountedPrice": 10, "expireAt": "1991-03-07T00:00:00Z", "price": 46, "purchaseAt": "1975-07-12T00:00:00Z", "trialPrice": 38}, {"currencyCode": "i3xkIZODRzEljJVH", "currencyNamespace": "conwWf6mJFawp3ZE", "currencyType": "REAL", "discountAmount": 45, "discountExpireAt": "1996-12-08T00:00:00Z", "discountPercentage": 56, "discountPurchaseAt": "1977-04-22T00:00:00Z", "discountedPrice": 94, "expireAt": "1995-08-05T00:00:00Z", "price": 91, "purchaseAt": "1986-03-14T00:00:00Z", "trialPrice": 14}, {"currencyCode": "idA97YQfiKpJnMGC", "currencyNamespace": "y337jjqVT0ZenHNx", "currencyType": "VIRTUAL", "discountAmount": 33, "discountExpireAt": "1994-12-30T00:00:00Z", "discountPercentage": 28, "discountPurchaseAt": "1988-07-10T00:00:00Z", "discountedPrice": 77, "expireAt": "1996-08-12T00:00:00Z", "price": 57, "purchaseAt": "1979-12-04T00:00:00Z", "trialPrice": 51}], "sTXt3dnA6LiWFUR1": [{"currencyCode": "Cg5gbfV7VQHZrWA6", "currencyNamespace": "bNQqHjkNJyIAuRTb", "currencyType": "VIRTUAL", "discountAmount": 44, "discountExpireAt": "1984-01-26T00:00:00Z", "discountPercentage": 31, "discountPurchaseAt": "1990-12-17T00:00:00Z", "discountedPrice": 6, "expireAt": "1988-10-31T00:00:00Z", "price": 24, "purchaseAt": "1977-10-21T00:00:00Z", "trialPrice": 90}, {"currencyCode": "yofVw82u90p4eMU4", "currencyNamespace": "tjvL7fPpKQlzhg2h", "currencyType": "REAL", "discountAmount": 62, "discountExpireAt": "1980-08-13T00:00:00Z", "discountPercentage": 100, "discountPurchaseAt": "1977-06-12T00:00:00Z", "discountedPrice": 67, "expireAt": "1996-12-16T00:00:00Z", "price": 45, "purchaseAt": "1974-07-01T00:00:00Z", "trialPrice": 98}, {"currencyCode": "Rukiy4hRN0shJOZS", "currencyNamespace": "ExOg0tPyHjuxM64d", "currencyType": "REAL", "discountAmount": 9, "discountExpireAt": "1998-08-09T00:00:00Z", "discountPercentage": 3, "discountPurchaseAt": "1974-03-06T00:00:00Z", "discountedPrice": 67, "expireAt": "1975-11-22T00:00:00Z", "price": 43, "purchaseAt": "1987-06-03T00:00:00Z", "trialPrice": 14}]}}, {"itemIdentities": ["dXis9qjQODlBqdbD", "8qhF6U1W28QWyoWK", "g858FJQ9w5y2qivD"], "itemIdentityType": "ITEM_ID", "regionData": {"Sy90zMEmTjFxhZWA": [{"currencyCode": "84omICmgHEPpgekr", "currencyNamespace": "Mq4tvmjVoO2fgqBO", "currencyType": "REAL", "discountAmount": 35, "discountExpireAt": "1989-02-15T00:00:00Z", "discountPercentage": 29, "discountPurchaseAt": "1972-04-12T00:00:00Z", "discountedPrice": 80, "expireAt": "1980-02-22T00:00:00Z", "price": 2, "purchaseAt": "1982-12-31T00:00:00Z", "trialPrice": 94}, {"currencyCode": "z95eyNoFKarlHHFa", "currencyNamespace": "xbptirP8DAxfScVX", "currencyType": "REAL", "discountAmount": 28, "discountExpireAt": "1971-03-26T00:00:00Z", "discountPercentage": 44, "discountPurchaseAt": "1976-07-03T00:00:00Z", "discountedPrice": 76, "expireAt": "1999-01-15T00:00:00Z", "price": 78, "purchaseAt": "1978-09-11T00:00:00Z", "trialPrice": 59}, {"currencyCode": "UCMv7VeqJxXwTnxo", "currencyNamespace": "B9EffhgjRnruR4Ev", "currencyType": "VIRTUAL", "discountAmount": 16, "discountExpireAt": "1992-08-06T00:00:00Z", "discountPercentage": 76, "discountPurchaseAt": "1995-04-16T00:00:00Z", "discountedPrice": 71, "expireAt": "1974-03-06T00:00:00Z", "price": 99, "purchaseAt": "1977-05-30T00:00:00Z", "trialPrice": 2}], "AnjTSY2hs41HPaRO": [{"currencyCode": "sIhfNrrQAtWsmABs", "currencyNamespace": "OSt64Madwvl763Pa", "currencyType": "REAL", "discountAmount": 86, "discountExpireAt": "1992-12-15T00:00:00Z", "discountPercentage": 94, "discountPurchaseAt": "1981-07-09T00:00:00Z", "discountedPrice": 29, "expireAt": "1981-02-25T00:00:00Z", "price": 59, "purchaseAt": "1993-06-04T00:00:00Z", "trialPrice": 80}, {"currencyCode": "bKOmBHfrWrmBufOW", "currencyNamespace": "Uw9IUgarizBCLKeO", "currencyType": "REAL", "discountAmount": 58, "discountExpireAt": "1994-03-08T00:00:00Z", "discountPercentage": 41, "discountPurchaseAt": "1993-02-05T00:00:00Z", "discountedPrice": 36, "expireAt": "1999-07-30T00:00:00Z", "price": 0, "purchaseAt": "1993-11-17T00:00:00Z", "trialPrice": 60}, {"currencyCode": "7yZFVHoDwt5LV9bw", "currencyNamespace": "mrfHwVZlgOI5QbJp", "currencyType": "REAL", "discountAmount": 35, "discountExpireAt": "1985-11-19T00:00:00Z", "discountPercentage": 15, "discountPurchaseAt": "1999-02-09T00:00:00Z", "discountedPrice": 40, "expireAt": "1972-02-15T00:00:00Z", "price": 37, "purchaseAt": "1995-03-03T00:00:00Z", "trialPrice": 30}], "wqJRqVUcjeE54cig": [{"currencyCode": "aQDgamdbXgUbaivi", "currencyNamespace": "ICODW4Y9MFhlViKD", "currencyType": "REAL", "discountAmount": 56, "discountExpireAt": "1995-01-04T00:00:00Z", "discountPercentage": 40, "discountPurchaseAt": "1972-08-07T00:00:00Z", "discountedPrice": 77, "expireAt": "1978-06-19T00:00:00Z", "price": 58, "purchaseAt": "1998-07-01T00:00:00Z", "trialPrice": 78}, {"currencyCode": "ZA51ooqiDrKWszuh", "currencyNamespace": "SaaL3CPu3OWZDWRR", "currencyType": "VIRTUAL", "discountAmount": 70, "discountExpireAt": "1977-02-13T00:00:00Z", "discountPercentage": 15, "discountPurchaseAt": "1983-11-05T00:00:00Z", "discountedPrice": 74, "expireAt": "1993-03-23T00:00:00Z", "price": 39, "purchaseAt": "1973-01-17T00:00:00Z", "trialPrice": 82}, {"currencyCode": "dwxpbwvNEBeLbgQt", "currencyNamespace": "C1diSXvuBywmj2bX", "currencyType": "REAL", "discountAmount": 98, "discountExpireAt": "1983-06-12T00:00:00Z", "discountPercentage": 80, "discountPurchaseAt": "1998-12-22T00:00:00Z", "discountedPrice": 14, "expireAt": "1984-10-21T00:00:00Z", "price": 46, "purchaseAt": "1986-08-21T00:00:00Z", "trialPrice": 59}]}}]}' \
    > test.out 2>&1
eval_tap $? 132 'BulkUpdateRegionData' test.out

#- 133 SearchItems
samples/cli/sample-apps Platform searchItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --itemType 'MEDIA' \
    --limit '20' \
    --offset '1' \
    --sortBy 'g4rgepivI86ULood' \
    --storeId 'BCPGLG1LiZ3iMrUt' \
    --keyword 'GtOuRbcUQ8viMIW9' \
    --language 'mTrsjpr1iMMiGE9a' \
    > test.out 2>&1
eval_tap $? 133 'SearchItems' test.out

#- 134 QueryUncategorizedItems
samples/cli/sample-apps Platform queryUncategorizedItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --limit '58' \
    --offset '36' \
    --sortBy '["displayOrder:desc", "updatedAt:asc"]' \
    --storeId 'XgoPvHRBxzLChYWL' \
    > test.out 2>&1
eval_tap $? 134 'QueryUncategorizedItems' test.out

#- 135 GetItem
samples/cli/sample-apps Platform getItem \
    --itemId 'p93yNZrMdELbWZvv' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'h9g8uwufsP02KyKb' \
    > test.out 2>&1
eval_tap $? 135 'GetItem' test.out

#- 136 UpdateItem
samples/cli/sample-apps Platform updateItem \
    --itemId 'GnBRq9ZttjcHF2A1' \
    --namespace $AB_NAMESPACE \
    --storeId 'glk32kxzNUggR7Fx' \
    --body '{"appId": "lSJsqq5iVxCg5TOM", "appType": "DEMO", "baseAppId": "DySkoU1VsB1QdjFw", "boothName": "X47kKgKB4TEtt8Pw", "categoryPath": "VZj4ukaz3svAIJUR", "clazz": "0cQNxxYN5rcDKvRZ", "displayOrder": 18, "entitlementType": "DURABLE", "ext": {"AMPt4CutpAIUNQ24": {}, "XVU0VQgoZpHH11kr": {}, "5IOUiJBdZ8A4Z1SF": {}}, "features": ["5jEGGNxr2KX6qgZS", "aZAgEWpomtUrlxAR", "uXRa3BESVTcK52dr"], "flexible": true, "images": [{"as": "rWviRhMWGnkoyT8N", "caption": "eAepsOVW68xM4pu8", "height": 87, "imageUrl": "OIYr9ZukGn6sPAT9", "smallImageUrl": "Q0WJrMibDRyL3SAg", "width": 15}, {"as": "hwybwzSytwEcKoUs", "caption": "4rWMRXlOiAaoxoqd", "height": 33, "imageUrl": "zx9UUoBMVESj8rIJ", "smallImageUrl": "25c0v7mq7oRWElb2", "width": 85}, {"as": "FhAgy1beaFxlJmGf", "caption": "CBCO8vgb3ts7g0Yh", "height": 81, "imageUrl": "9Vaj4H56ufQkCMTi", "smallImageUrl": "AQYR8lcsOVvYncXm", "width": 43}], "inventoryConfig": {"customAttributes": {"fGGlL4ZnwCcXLjgz": {}, "nJh03vUlc6RfmGlc": {}, "WJmunaHs9yCDNoek": {}}, "serverCustomAttributes": {"4uv0ytXttQUTJjar": {}, "rZ2WG3QWuIN7Gpxd": {}, "kQRJ1hxoVAg5F2ki": {}}, "slotUsed": 100}, "itemIds": ["eQ4C31ugo0jhpyNZ", "G6hVI2g43bcEszbH", "mR50vGOb0bpTMUuY"], "itemQty": {"2tCD12o069KoAIZf": 86, "yNoVMrOc76GuPtSe": 63, "Gz96dnQWJEG6wUgc": 60}, "itemType": "LOOTBOX", "listable": false, "localizations": {"83H8E4Uip6Q3kq4s": {"description": "tRTvnZyUwv4LSR7X", "localExt": {"FMkXHtStJMt2tzTe": {}, "mFhRif1pf9jEkorA": {}, "H9PDlZo8jT8Vwkqq": {}}, "longDescription": "5gJNGBjWNe4c5QkG", "title": "DmsqH7KEfAOwVTAR"}, "tKxfuAMgdJof9EVv": {"description": "JVrvfKDylYnGDXbN", "localExt": {"x9fDWVlVoTg9doze": {}, "TNPM95i25nRiZRlH": {}, "4MbQaIs7bG9DNGBn": {}}, "longDescription": "8WDfChSBOmnzrZR7", "title": "6bRDCFsDeAxS5bxq"}, "xGob7Gyn2GlXbkdz": {"description": "hDGfW98tHf63eupS", "localExt": {"kMiei1AaysLho3im": {}, "Ptw5wVXxzLNic5MY": {}, "vmhHimR14wVaMH5v": {}}, "longDescription": "oClepoVRoD4eXhp3", "title": "8eIJ0WqHF6UaE4Mb"}}, "lootBoxConfig": {"rewardCount": 50, "rewards": [{"lootBoxItems": [{"count": 69, "duration": 94, "endDate": "1979-01-16T00:00:00Z", "itemId": "bYufUQmwuXtnWoL0", "itemSku": "rKtFJLzs038Almne", "itemType": "FgX1vO3uRRm1UoJc"}, {"count": 28, "duration": 29, "endDate": "1989-05-29T00:00:00Z", "itemId": "RSbKWdrA3cQWS5eU", "itemSku": "VLKmhiDkk306gEoQ", "itemType": "R2GetDxNlujPyXbA"}, {"count": 62, "duration": 6, "endDate": "1997-04-28T00:00:00Z", "itemId": "Djh6LugYxe1JSkR9", "itemSku": "X8Sxl0olHHbGaDCX", "itemType": "4kS2eXf7AdLG9yvO"}], "name": "QA5foPi8BpE2lTis", "odds": 0.9269722882696838, "type": "REWARD_GROUP", "weight": 83}, {"lootBoxItems": [{"count": 57, "duration": 71, "endDate": "1988-02-24T00:00:00Z", "itemId": "geiHYXbcx9emgNlP", "itemSku": "g5U3TPEcHmTlBMQ0", "itemType": "CFAyLFY5ZU89sRLt"}, {"count": 0, "duration": 1, "endDate": "1996-09-08T00:00:00Z", "itemId": "qFp5VEhNoU0vA9X7", "itemSku": "rAEbAwsoUzMAn0tM", "itemType": "Th2kSLdAcTDNCz06"}, {"count": 79, "duration": 21, "endDate": "1986-10-17T00:00:00Z", "itemId": "1bKivSGpANHxz4UD", "itemSku": "ExxLIrXLSDocPblu", "itemType": "T1d0higY21k5425o"}], "name": "vbaPe0WoIh5Ptx2R", "odds": 0.5165002779901445, "type": "PROBABILITY_GROUP", "weight": 19}, {"lootBoxItems": [{"count": 39, "duration": 47, "endDate": "1985-05-27T00:00:00Z", "itemId": "VTuUJTcbFZmZqVIP", "itemSku": "A4PwWxuJM0z6pXpO", "itemType": "AmgHpSpdfqsv1Yrw"}, {"count": 69, "duration": 49, "endDate": "1987-09-28T00:00:00Z", "itemId": "6QXv14x6g17rhX97", "itemSku": "RYdtulkgI8cJtF6e", "itemType": "g5uKdVrVAAHl3iMI"}, {"count": 9, "duration": 83, "endDate": "1974-11-22T00:00:00Z", "itemId": "AnOWKEBm8QzIM2VL", "itemSku": "r8YfusYtLee7qX5R", "itemType": "mI8JknTyZEFjFAru"}], "name": "2dwIdflqQ2S9ZzDe", "odds": 0.484356782391131, "type": "REWARD", "weight": 26}], "rollFunction": "CUSTOM"}, "maxCount": 68, "maxCountPerUser": 11, "name": "9BG3SaN52QMLdz5L", "optionBoxConfig": {"boxItems": [{"count": 100, "duration": 65, "endDate": "1976-02-17T00:00:00Z", "itemId": "CKJKdZoiTIbz3S0f", "itemSku": "dZkXsS373FKJxxwN", "itemType": "PAZMDS4fEJUwOVKz"}, {"count": 98, "duration": 97, "endDate": "1978-05-17T00:00:00Z", "itemId": "VGxWanXs4zdrOilf", "itemSku": "Maho9O8dV5Cer7j3", "itemType": "9c3BL0yQ0PIgJKrb"}, {"count": 83, "duration": 2, "endDate": "1984-01-05T00:00:00Z", "itemId": "8mUpnzNJpyhsJaIx", "itemSku": "At2imTEMz9ELdo94", "itemType": "zxzp100Z9dScKPgi"}]}, "purchasable": false, "recurring": {"cycle": "WEEKLY", "fixedFreeDays": 6, "fixedTrialCycles": 92, "graceDays": 10}, "regionData": {"IUUrGe7guqqDUBSi": [{"currencyCode": "81y90vJhFQ8xJbvp", "currencyNamespace": "OGNHbIV4cAoT81bk", "currencyType": "REAL", "discountAmount": 53, "discountExpireAt": "1972-09-11T00:00:00Z", "discountPercentage": 48, "discountPurchaseAt": "1987-02-28T00:00:00Z", "expireAt": "1999-02-06T00:00:00Z", "price": 27, "purchaseAt": "1992-01-02T00:00:00Z", "trialPrice": 62}, {"currencyCode": "cyKCBiqJmPlrWdZi", "currencyNamespace": "GUB5OanL7lfJr6DG", "currencyType": "REAL", "discountAmount": 87, "discountExpireAt": "1999-09-19T00:00:00Z", "discountPercentage": 85, "discountPurchaseAt": "1990-07-17T00:00:00Z", "expireAt": "1981-04-28T00:00:00Z", "price": 92, "purchaseAt": "1973-11-23T00:00:00Z", "trialPrice": 34}, {"currencyCode": "NiG8YlkpmHuU5cgY", "currencyNamespace": "eCH0Lak5hfOz1KN3", "currencyType": "REAL", "discountAmount": 0, "discountExpireAt": "1982-09-13T00:00:00Z", "discountPercentage": 18, "discountPurchaseAt": "1979-03-20T00:00:00Z", "expireAt": "1988-09-30T00:00:00Z", "price": 49, "purchaseAt": "1982-06-22T00:00:00Z", "trialPrice": 44}], "8ITSFHrJrKKopMCL": [{"currencyCode": "MS9tdLWLmQJBOUTw", "currencyNamespace": "57aDKhzFvnLbdWKG", "currencyType": "REAL", "discountAmount": 11, "discountExpireAt": "1994-03-14T00:00:00Z", "discountPercentage": 85, "discountPurchaseAt": "1978-09-20T00:00:00Z", "expireAt": "1990-12-20T00:00:00Z", "price": 19, "purchaseAt": "1991-04-19T00:00:00Z", "trialPrice": 41}, {"currencyCode": "dFd8PT2hMTJtMTgz", "currencyNamespace": "5q5Na5QXter3psb7", "currencyType": "REAL", "discountAmount": 29, "discountExpireAt": "1977-08-10T00:00:00Z", "discountPercentage": 98, "discountPurchaseAt": "1987-02-16T00:00:00Z", "expireAt": "1999-07-17T00:00:00Z", "price": 48, "purchaseAt": "1994-05-17T00:00:00Z", "trialPrice": 23}, {"currencyCode": "aqYdYgAMOwHiTYmU", "currencyNamespace": "dUgbEIDWVecwIBzy", "currencyType": "VIRTUAL", "discountAmount": 78, "discountExpireAt": "1998-01-17T00:00:00Z", "discountPercentage": 30, "discountPurchaseAt": "1990-09-06T00:00:00Z", "expireAt": "1989-11-12T00:00:00Z", "price": 23, "purchaseAt": "1980-01-12T00:00:00Z", "trialPrice": 12}], "wrADTeHI9friiW3m": [{"currencyCode": "tJnAVABr2d6j7nYJ", "currencyNamespace": "AQgt3y5RBFOZVkwT", "currencyType": "REAL", "discountAmount": 92, "discountExpireAt": "1986-11-11T00:00:00Z", "discountPercentage": 87, "discountPurchaseAt": "1988-02-17T00:00:00Z", "expireAt": "1977-08-10T00:00:00Z", "price": 57, "purchaseAt": "1999-03-27T00:00:00Z", "trialPrice": 42}, {"currencyCode": "Luk2nR7dPeSKamkc", "currencyNamespace": "6qF9JdRUpLLuqcDZ", "currencyType": "VIRTUAL", "discountAmount": 93, "discountExpireAt": "1993-08-14T00:00:00Z", "discountPercentage": 37, "discountPurchaseAt": "1987-02-06T00:00:00Z", "expireAt": "1977-07-15T00:00:00Z", "price": 9, "purchaseAt": "1996-10-23T00:00:00Z", "trialPrice": 88}, {"currencyCode": "DRp8IZAqjMIbIkzG", "currencyNamespace": "uNfjqvskvvhhhFAm", "currencyType": "VIRTUAL", "discountAmount": 45, "discountExpireAt": "1997-08-21T00:00:00Z", "discountPercentage": 7, "discountPurchaseAt": "1992-05-19T00:00:00Z", "expireAt": "1972-05-07T00:00:00Z", "price": 44, "purchaseAt": "1993-01-28T00:00:00Z", "trialPrice": 90}]}, "saleConfig": {"currencyCode": "0fFSAdG3pLjzkbUS", "price": 86}, "seasonType": "PASS", "sectionExclusive": true, "sellable": true, "sku": "PSdBwAR31Ea8ZWPy", "stackable": true, "status": "INACTIVE", "tags": ["GaR7RSEmqCHjZwR0", "vqgLMo5Xo8i1k3Mz", "VDeuh8TgYlZRCEiG"], "targetCurrencyCode": "MDTuIoBus1Z4ArtQ", "targetNamespace": "7jLixfUwsGw4VfoM", "thumbnailUrl": "hFU2mP7nUhbvk6lP", "useCount": 24}' \
    > test.out 2>&1
eval_tap $? 136 'UpdateItem' test.out

#- 137 DeleteItem
samples/cli/sample-apps Platform deleteItem \
    --itemId 'VoY5vpsnUE1jmTbQ' \
    --namespace $AB_NAMESPACE \
    --featuresToCheck '["IAP", "IAP", "REWARD"]' \
    --force 'true' \
    --storeId 'pYAmrNh0T2u9BSS2' \
    > test.out 2>&1
eval_tap $? 137 'DeleteItem' test.out

#- 138 AcquireItem
samples/cli/sample-apps Platform acquireItem \
    --itemId 'OUnxwWl7xydueSFm' \
    --namespace $AB_NAMESPACE \
    --body '{"count": 80, "orderNo": "IJtiYieeRnsrmwCx"}' \
    > test.out 2>&1
eval_tap $? 138 'AcquireItem' test.out

#- 139 GetApp
samples/cli/sample-apps Platform getApp \
    --itemId 'mM8jAajAKtgpMqdJ' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'b0APi9hXJzwtzOHw' \
    > test.out 2>&1
eval_tap $? 139 'GetApp' test.out

#- 140 UpdateApp
samples/cli/sample-apps Platform updateApp \
    --itemId 'pZH7s9w7CwVuTsIA' \
    --namespace $AB_NAMESPACE \
    --storeId '3Iwnw4u4cbE7mIO4' \
    --body '{"carousel": [{"alt": "MwnsMfbV5S2dNXft", "previewUrl": "gHMtGe4sgPaXdpDu", "thumbnailUrl": "dvHEiNCzd3PkC61v", "type": "image", "url": "1oNlF5z1uOWgbeb1", "videoSource": "vimeo"}, {"alt": "xN0FnXk2ZiMkhEga", "previewUrl": "ZV4prmXrZcWvWqDw", "thumbnailUrl": "26YPjldn20XhOJAR", "type": "video", "url": "1oHy1HS7FIm0FCwR", "videoSource": "generic"}, {"alt": "TQ4RfdI4nZk9CY2M", "previewUrl": "BQ040rrxog3Ieqho", "thumbnailUrl": "sxTBypHUtzVbF4ze", "type": "image", "url": "MFYMBHgBnsZp8aIm", "videoSource": "generic"}], "developer": "ENpMc4cNKFbI0IqZ", "forumUrl": "1PAwyKuSahBCgOGT", "genres": ["Sports", "Adventure", "Adventure"], "localizations": {"XBuLFdQCkQOT1ee6": {"announcement": "guoUbak677W2QeSk", "slogan": "TLlYUL8noSIhNYeS"}, "QC2yvnVEBao32XVD": {"announcement": "Rt89ET5LWNAyCXp1", "slogan": "ZtMEIjtQmaIxkOPh"}, "JMm0oXSg4qds4fM0": {"announcement": "Ze7n8T2AO9K2AITR", "slogan": "OWPPrtCgtZLlM83B"}}, "platformRequirements": {"B8ogHdABV97ovZSR": [{"additionals": "4rKYB4VVRyVORS24", "directXVersion": "M95xZnl1JaBbK91v", "diskSpace": "HGp8oJvNHicQbDmV", "graphics": "6WDO5MgWXMA7lheh", "label": "p3XKj5uEAu6gx9Us", "osVersion": "StiNX3X95wdW6S3d", "processor": "bWqN1tskaHnh1NvD", "ram": "rKEW9oxNl1vprdCB", "soundCard": "fC0sxaq8m4XWlaM9"}, {"additionals": "bgihXGA09yTcU4JQ", "directXVersion": "1tmUMNkkIwLKBuAz", "diskSpace": "Wz19DpeZyXhOcElo", "graphics": "HDevUlJRoaFZezJm", "label": "tvmZVRmjICgnpdFY", "osVersion": "TQCkTaEzcDJE8EGo", "processor": "Bmj26Vrv7BZM5zNj", "ram": "vwfwSK8rl2lhb9nV", "soundCard": "TnMo6xfGXbnQXspM"}, {"additionals": "7Z5pwLwHAmUKkH0G", "directXVersion": "LILnFBCb4l0t77xR", "diskSpace": "k4kMulWd1Ij3djGh", "graphics": "jl0bOKdkpodQTvMW", "label": "QgzV0V2bWJHPRVqR", "osVersion": "AzSFj7I1LHS8Iitl", "processor": "QjZDyzUj8AQ8JmXB", "ram": "mOtAx6AcUBS5M0qH", "soundCard": "TTcEjAu17n7JBWjc"}], "AJqrhjCixjJfwiVh": [{"additionals": "hVoL8o5ZXxV5PJ9X", "directXVersion": "9y4LtJDxSstgRtw1", "diskSpace": "bu44Gw56CCua11PW", "graphics": "NxjuBN7Cw8ITRry8", "label": "jmrJNb6gArKmmNRy", "osVersion": "TEXP8oetGXiQOa9Q", "processor": "W2GVTT6dbWc3raMu", "ram": "GwtTQM67yQa8yI5j", "soundCard": "cFOvx2V08IihDIIo"}, {"additionals": "CgB74nOIvppSSaD2", "directXVersion": "k8puNgdSvAsgqqhe", "diskSpace": "R9juRYCU5ojuOXPz", "graphics": "PrgVu2v5E2RmVlqn", "label": "IDvqpvwc5QZ8ZjlO", "osVersion": "JLptlRHoYqntJCNn", "processor": "aQ5bblVuCxyAtmE4", "ram": "ZOfUyjEcd0ZIR99T", "soundCard": "F6Y28z6hJoUkLG2x"}, {"additionals": "VWSWFXrbJr5Inthg", "directXVersion": "ids9AuvJFOlsSERo", "diskSpace": "KxvQp6Kk1U6sXErG", "graphics": "WP24945jvPYdZHQM", "label": "R7QCaeCHVMokMH31", "osVersion": "EHRQdJyzj3JCU1GI", "processor": "HTqpMmFn7ifQAtqM", "ram": "7aOhpxsrxwRPdHZj", "soundCard": "BVtLbRcuEmM8l2QY"}], "JJJ1fIXIIq9U1rBZ": [{"additionals": "nuiCz2LbQlgBIAQ0", "directXVersion": "7eoL9pNeZeHs7oLV", "diskSpace": "iN3HXRyT6TdZBT5E", "graphics": "t34MJzf67A8BQUFo", "label": "oIWf1IfDrpVCh3tf", "osVersion": "6Mbbk9wlZC0iKXaU", "processor": "xW9rY6Vuae3DqrUE", "ram": "EVSR2QyH3z7ST9HI", "soundCard": "SZkXYiCHXx8uDaWw"}, {"additionals": "ff0lveo8xelwFezr", "directXVersion": "Q4dqaAZmMFE27r91", "diskSpace": "YoGGOPyojUMpFVpD", "graphics": "FYHSXjI2hyi6RwA9", "label": "OH2nwDmsZ5wbhIrx", "osVersion": "GOdbHUrjmoH8eEEy", "processor": "MfEpBmVLpsmYkKQ3", "ram": "ojEsdYox8LVBk11A", "soundCard": "94H3dgQ6IAinnjKF"}, {"additionals": "vabodsE74CIQU6sI", "directXVersion": "YrarAOC5A58giIHL", "diskSpace": "0nSGYIiqYzWf1ocF", "graphics": "zAMtb05rMed0jsAs", "label": "g7kpg6BRr7BPbW0v", "osVersion": "KGZ22TssI9TAeSbT", "processor": "3CIJ7xRu7c3jY6PR", "ram": "OEdryDBjLjWDdaUw", "soundCard": "UKb7kgw0Vb9iCbRE"}]}, "platforms": ["IOS", "IOS", "Windows"], "players": ["CrossPlatformMulti", "Coop", "Multi"], "primaryGenre": "Adventure", "publisher": "2Pz0zBMUhLZ8wXFq", "releaseDate": "1987-04-26T00:00:00Z", "websiteUrl": "9bgpRbdoMTLJgkMr"}' \
    > test.out 2>&1
eval_tap $? 140 'UpdateApp' test.out

#- 141 DisableItem
samples/cli/sample-apps Platform disableItem \
    --itemId 'VzEdjSo1iR90IlE5' \
    --namespace $AB_NAMESPACE \
    --storeId 'smlSbrqBCIndCQsl' \
    --body '{"featuresToCheck": ["DLC"]}' \
    > test.out 2>&1
eval_tap $? 141 'DisableItem' test.out

#- 142 GetItemDynamicData
samples/cli/sample-apps Platform getItemDynamicData \
    --itemId 'Yok2taajSG4ShITw' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 142 'GetItemDynamicData' test.out

#- 143 EnableItem
samples/cli/sample-apps Platform enableItem \
    --itemId 'hhspDt58MORrZvlQ' \
    --namespace $AB_NAMESPACE \
    --storeId 'dV7kO8Eek646Qdsi' \
    > test.out 2>&1
eval_tap $? 143 'EnableItem' test.out

#- 144 FeatureItem
samples/cli/sample-apps Platform featureItem \
    --feature '2vKgILFcZXS24QPg' \
    --itemId 'HC8DgxDoES0bJYZs' \
    --namespace $AB_NAMESPACE \
    --storeId '8F2Ll38oOcTnjPmW' \
    > test.out 2>&1
eval_tap $? 144 'FeatureItem' test.out

#- 145 DefeatureItem
samples/cli/sample-apps Platform defeatureItem \
    --feature 'jR2wyxtZo4rxCy10' \
    --itemId 'nAC5CvZR9dEQ1rMq' \
    --namespace $AB_NAMESPACE \
    --storeId 'schhd1ELy1acb4fz' \
    > test.out 2>&1
eval_tap $? 145 'DefeatureItem' test.out

#- 146 GetLocaleItem
samples/cli/sample-apps Platform getLocaleItem \
    --itemId 'vBALvBKhAB5qoShG' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --language 'CAWeskvX99IxFISQ' \
    --populateBundle 'true' \
    --region 'wuafOCxDU3EGN0hq' \
    --storeId 'y64FqKUoGUT2ounR' \
    > test.out 2>&1
eval_tap $? 146 'GetLocaleItem' test.out

#- 147 UpdateItemPurchaseCondition
samples/cli/sample-apps Platform updateItemPurchaseCondition \
    --itemId '4SwbgrVwnEjVNhEX' \
    --namespace $AB_NAMESPACE \
    --storeId 'dmTengicRErXdoZ1' \
    --body '{"purchaseCondition": {"conditionGroups": [{"operator": "and", "predicates": [{"anyOf": 48, "code": "gARBoAln39GbaAwh", "comparison": "isGreaterThanOrEqual", "name": "ZceLDRZcnJ4q4hIN", "predicateType": "SeasonTierPredicate", "value": "6geXIdrdmzKBzZ1b", "values": ["lai1PLGm7TGgnx4F", "Ef6tP870oIxiCjjQ", "s6MxI2IazBxDYytf"]}, {"anyOf": 89, "code": "zuChfQDs3pG28KIQ", "comparison": "excludes", "name": "Hp1QvpVVDwwE0Nf2", "predicateType": "StatisticCodePredicate", "value": "bH5IEnGfeGd5mTmi", "values": ["mMkhPWqGyVE4mdqF", "0CLRCXSq8gWSh7yW", "CRhC1AIoDNi5W1Az"]}, {"anyOf": 57, "code": "NxuYCJD4sD0JvmWH", "comparison": "isGreaterThanOrEqual", "name": "C589KsiBVOxDsZ9c", "predicateType": "SeasonPassPredicate", "value": "q3CIOVUxPLPj93a8", "values": ["xjiuAeEOyd7Jdo3V", "9ZAM1dTxHaqyrmbM", "qR7Haaet8JvsqfQX"]}]}, {"operator": "and", "predicates": [{"anyOf": 14, "code": "INjvFpQiu1okjtCu", "comparison": "isGreaterThanOrEqual", "name": "yfkWunsVJbXOD4jI", "predicateType": "SeasonPassPredicate", "value": "H5JCwsCRk8sVP0Rn", "values": ["TGGN68DjbdryLkV6", "kUveYeDflKzeYTMr", "Mp1QAQHfPPz50feg"]}, {"anyOf": 53, "code": "TyuUxh14dogU3RxL", "comparison": "isNot", "name": "P23LONsHGQL3FOe5", "predicateType": "EntitlementPredicate", "value": "5tbrpVPZExzxwI9s", "values": ["knKeEG9OqLtwzm96", "sFxKZiSlyrKyIeYK", "n0b0D0LiD5LlrEN1"]}, {"anyOf": 91, "code": "dpa9FU2LnbUbhSwz", "comparison": "isGreaterThan", "name": "98WP7zkRt9dKlLf2", "predicateType": "StatisticCodePredicate", "value": "Z195RqjL7NAfbtF2", "values": ["AQ23vLDiGA9pKZXX", "mO8K23W6by5zf2b4", "sST8noNk9JCgUhtT"]}]}, {"operator": "and", "predicates": [{"anyOf": 57, "code": "JeIjGCaIOPLW49YB", "comparison": "isGreaterThanOrEqual", "name": "40rJxyZ1EyRyrCAI", "predicateType": "SeasonPassPredicate", "value": "HKaYCnbHC8ZkYA34", "values": ["3dQyu3LTF02l5iIg", "7eH9YHblGmyvmYp2", "SFypEy6goxpBIyv1"]}, {"anyOf": 41, "code": "gIbgil9TNTGVHQUq", "comparison": "isLessThan", "name": "z8K7c19Ig8HSnlE8", "predicateType": "StatisticCodePredicate", "value": "3x2zL4X3wkBEPV0C", "values": ["WjsvDyErfmK0zKkf", "ijHCPuZv5oN8vEV9", "ScggC9brC2oArSvD"]}, {"anyOf": 21, "code": "r0Yh8oWuyEoGgIRT", "comparison": "excludes", "name": "95PAHYtX99NSn1Gv", "predicateType": "SeasonPassPredicate", "value": "TFDGZjTRHsFMwLOY", "values": ["BSx4RI27WBij475I", "TNVql91harMbCAoQ", "rLclS9ZJx8oC0vtw"]}]}]}}' \
    > test.out 2>&1
eval_tap $? 147 'UpdateItemPurchaseCondition' test.out

#- 148 QueryItemReferences
samples/cli/sample-apps Platform queryItemReferences \
    --itemId 'HLo4hZbdPCJBqXl6' \
    --namespace $AB_NAMESPACE \
    --featuresToCheck '["CATALOG", "CAMPAIGN", "IAP"]' \
    --storeId 'CUThXVsU6YAyxAmu' \
    > test.out 2>&1
eval_tap $? 148 'QueryItemReferences' test.out

#- 149 ReturnItem
samples/cli/sample-apps Platform returnItem \
    --itemId 'bV2vKzTjqrkaqItD' \
    --namespace $AB_NAMESPACE \
    --body '{"orderNo": "VEMNwNJKFpztWtbh"}' \
    > test.out 2>&1
eval_tap $? 149 'ReturnItem' test.out

#- 150 QueryKeyGroups
samples/cli/sample-apps Platform queryKeyGroups \
    --namespace $AB_NAMESPACE \
    --limit '7' \
    --name 'qYn3lOGvxTgIymg9' \
    --offset '55' \
    --tag 'ofJGxELggAIzLfCN' \
    > test.out 2>&1
eval_tap $? 150 'QueryKeyGroups' test.out

#- 151 CreateKeyGroup
samples/cli/sample-apps Platform createKeyGroup \
    --namespace $AB_NAMESPACE \
    --body '{"description": "HvlzSdOuVvRqqHc4", "name": "0XMxv9iSB3uCjhOa", "status": "INACTIVE", "tags": ["kZYYVE6yDoHVfzyC", "5HLGQ5YoGI30E7FF", "L7pizyzpwBUARUkj"]}' \
    > test.out 2>&1
eval_tap $? 151 'CreateKeyGroup' test.out

#- 152 GetKeyGroupByBoothName
eval_tap 0 152 'GetKeyGroupByBoothName # SKIP deprecated' test.out

#- 153 GetKeyGroup
samples/cli/sample-apps Platform getKeyGroup \
    --keyGroupId 'J6E4V9HYQcZd7oJ6' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 153 'GetKeyGroup' test.out

#- 154 UpdateKeyGroup
samples/cli/sample-apps Platform updateKeyGroup \
    --keyGroupId 'H6KzDZt6tAndIc98' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "6ccULgfBHDBk3ycy", "name": "MlSBpnBMx7Bw0MhF", "status": "INACTIVE", "tags": ["UetGocS3MBjlTEX8", "z0ih98dO2Qt5KgfY", "HywjUreJqtoRpnkL"]}' \
    > test.out 2>&1
eval_tap $? 154 'UpdateKeyGroup' test.out

#- 155 GetKeyGroupDynamic
samples/cli/sample-apps Platform getKeyGroupDynamic \
    --keyGroupId '6kvSOGG1ld5edtcT' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 155 'GetKeyGroupDynamic' test.out

#- 156 ListKeys
samples/cli/sample-apps Platform listKeys \
    --keyGroupId 'JpHTvWRhlGI4Q9on' \
    --namespace $AB_NAMESPACE \
    --limit '53' \
    --offset '22' \
    --status 'ACQUIRED' \
    > test.out 2>&1
eval_tap $? 156 'ListKeys' test.out

#- 157 UploadKeys
samples/cli/sample-apps Platform uploadKeys \
    --keyGroupId '8UO9z4HSi6hUXPQz' \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 157 'UploadKeys' test.out

#- 158 QueryOrders
samples/cli/sample-apps Platform queryOrders \
    --namespace $AB_NAMESPACE \
    --endTime 'i7owW3nDHhvPsQXw' \
    --limit '86' \
    --offset '25' \
    --orderNos '["YjEHsQ6w08vadcxV", "vN1VXpOeiSY0PJ1I", "eAmEjnGdWnFVY24a"]' \
    --sortBy 'DMNYTL7H5sosH0NC' \
    --startTime 'BFyNgHZ6ZOR2oCpa' \
    --status 'INIT' \
    --withTotal 'false' \
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
    --orderNo 'bXUdfb2q5zGnnCHn' \
    > test.out 2>&1
eval_tap $? 160 'GetOrder' test.out

#- 161 RefundOrder
samples/cli/sample-apps Platform refundOrder \
    --namespace $AB_NAMESPACE \
    --orderNo '3635BoIKViAJy8Ny' \
    --body '{"description": "F43xtuOLWQaJfMtO"}' \
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
    --body '{"domains": ["YBsWnDO7ML0uRNTn", "dY3sWZ2MDyzaZ7Cb", "rpjLjtrVUnPUVnH4"]}' \
    > test.out 2>&1
eval_tap $? 165 'UpdatePaymentDomainWhitelistConfig' test.out

#- 166 QueryPaymentNotifications
samples/cli/sample-apps Platform queryPaymentNotifications \
    --namespace $AB_NAMESPACE \
    --endDate 'oG37oK6DZlhZ7eTc' \
    --externalId '5g8ex1y3BvA6JFdv' \
    --limit '58' \
    --notificationSource 'WALLET' \
    --notificationType 'rJnP3096mmj0nFvl' \
    --offset '50' \
    --paymentOrderNo 'UXtiEU2R3gmM9Zcd' \
    --startDate 'bLfmRZ65XAtEv0sM' \
    --status 'IGNORED' \
    > test.out 2>&1
eval_tap $? 166 'QueryPaymentNotifications' test.out

#- 167 QueryPaymentOrders
samples/cli/sample-apps Platform queryPaymentOrders \
    --namespace $AB_NAMESPACE \
    --channel 'EXTERNAL' \
    --extTxId 'alBxvB3njuQnUkE3' \
    --limit '12' \
    --offset '91' \
    --status 'INIT' \
    > test.out 2>&1
eval_tap $? 167 'QueryPaymentOrders' test.out

#- 168 CreatePaymentOrderByDedicated
samples/cli/sample-apps Platform createPaymentOrderByDedicated \
    --namespace $AB_NAMESPACE \
    --body '{"currencyCode": "hNyWGVuYlrqp3Plg", "currencyNamespace": "ttTunh71g1SFnzp5", "customParameters": {"sMhomjp5Z3QE8iNg": {}, "rvasAM5a4pGLCHF8": {}, "66ssASjGFkaNvNCd": {}}, "description": "tu16oPdGn23CQz55", "extOrderNo": "NmhsF2208vU8vKpP", "extUserId": "ZXacW9qtDIFQtAgL", "itemType": "SUBSCRIPTION", "language": "swzn_759", "metadata": {"j0Z0I29cyzBtfRMD": "lglj4cfZuCgDII8C", "dNJpLnLrcxIPYiIw": "n2cbp2GoXKLsmXDb", "3DPYVgozo3XrtniK": "kLgiV8Pt3E0zQrlq"}, "notifyUrl": "xXXEBF0i3neoiexb", "omitNotification": false, "platform": "z91ghNHrr4l2JI9I", "price": 71, "recurringPaymentOrderNo": "qGTBu00OhEdmSQGp", "region": "AMd814b0mhNA1Lah", "returnUrl": "am40sz5Scz4emzS1", "sandbox": true, "sku": "SJbKcMbfi93S0ZXM", "subscriptionId": "FbwhuOTshtxARubO", "targetNamespace": "5fLbe3Gb9JdtfHif", "targetUserId": "Y40lPK8zxQ8h2t8H", "title": "oKxfZjN6Y7HodElf"}' \
    > test.out 2>&1
eval_tap $? 168 'CreatePaymentOrderByDedicated' test.out

#- 169 ListExtOrderNoByExtTxId
samples/cli/sample-apps Platform listExtOrderNoByExtTxId \
    --namespace $AB_NAMESPACE \
    --extTxId 'uDO9oH42BudFSgH0' \
    > test.out 2>&1
eval_tap $? 169 'ListExtOrderNoByExtTxId' test.out

#- 170 GetPaymentOrder
samples/cli/sample-apps Platform getPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'DlYMiGbVorhHiZD2' \
    > test.out 2>&1
eval_tap $? 170 'GetPaymentOrder' test.out

#- 171 ChargePaymentOrder
samples/cli/sample-apps Platform chargePaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'uYXEYEEW1shlS6EP' \
    --body '{"extTxId": "ZI77K5TJG7s60Etp", "paymentMethod": "ZwRyWzWzHriA7ZPc", "paymentProvider": "NEONPAY"}' \
    > test.out 2>&1
eval_tap $? 171 'ChargePaymentOrder' test.out

#- 172 RefundPaymentOrderByDedicated
samples/cli/sample-apps Platform refundPaymentOrderByDedicated \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'YAL6mN5OL5fFMQEr' \
    --body '{"description": "Fa7P7EChn8T3nJau"}' \
    > test.out 2>&1
eval_tap $? 172 'RefundPaymentOrderByDedicated' test.out

#- 173 SimulatePaymentOrderNotification
samples/cli/sample-apps Platform simulatePaymentOrderNotification \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'y7BGFLgLfOAsuIA5' \
    --body '{"amount": 23, "currencyCode": "NLMXls97TY42IhUb", "notifyType": "REFUND", "paymentProvider": "XSOLLA", "salesTax": 58, "vat": 59}' \
    > test.out 2>&1
eval_tap $? 173 'SimulatePaymentOrderNotification' test.out

#- 174 GetPaymentOrderChargeStatus
samples/cli/sample-apps Platform getPaymentOrderChargeStatus \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'JqvXmnZuYoFM4Z2h' \
    > test.out 2>&1
eval_tap $? 174 'GetPaymentOrderChargeStatus' test.out

#- 175 GetPsnEntitlementOwnership
samples/cli/sample-apps Platform getPsnEntitlementOwnership \
    --entitlementLabel 'vcxWlntCr08bJ7vQ' \
    --namespace $AB_NAMESPACE \
    --body '{"accessToken": "t77U9wJoaW7QQnAe", "serviceLabel": 26}' \
    > test.out 2>&1
eval_tap $? 175 'GetPsnEntitlementOwnership' test.out

#- 176 GetXboxEntitlementOwnership
samples/cli/sample-apps Platform getXboxEntitlementOwnership \
    --namespace $AB_NAMESPACE \
    --productSku 'AOS4gyW88DPi3ZqX' \
    --body '{"delegationToken": "0ypf2KT3wAsqz8k9", "sandboxId": "72HE7MsAgBc7RZcy"}' \
    > test.out 2>&1
eval_tap $? 176 'GetXboxEntitlementOwnership' test.out

#- 177 GetPlatformEntitlementConfig
samples/cli/sample-apps Platform getPlatformEntitlementConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Playstation' \
    > test.out 2>&1
eval_tap $? 177 'GetPlatformEntitlementConfig' test.out

#- 178 UpdatePlatformEntitlementConfig
samples/cli/sample-apps Platform updatePlatformEntitlementConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Xbox' \
    --body '{"allowedPlatformOrigins": ["System", "GooglePlay", "Steam"]}' \
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
    --platform 'Oculus' \
    --body '{"allowedBalanceOrigins": ["Playstation", "Other", "Oculus"]}' \
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
    --body '{"entitlement": {"consumable": {"enabled": false, "strategy": "CUSTOM"}, "durable": {"enabled": false, "strategy": "CUSTOM"}}, "wallet": {"enabled": true, "strategy": "ALWAYS_REVOKE"}}' \
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
    --endTime 'p6zdx2mbsQMAcxQe' \
    --limit '80' \
    --offset '96' \
    --source 'ORDER' \
    --startTime 'TS0IpbBWMez12xMq' \
    --status 'SUCCESS' \
    --transactionId 'NnPJiAL2X2olWaXB' \
    --userId 'McocHHbltbTxQ2TU' \
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
    --body '{"appConfig": {"appName": "5slNSdYojHGsiLdt"}, "customConfig": {"connectionType": "TLS", "grpcServerAddress": "EvL2Rl4qYCVZTBL6"}, "extendType": "CUSTOM"}' \
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
    --body '{"description": "uoRnak3rt9rnFWKq", "eventTopic": "HAykSy9dgbH0RLYg", "maxAwarded": 14, "maxAwardedPerUser": 21, "namespaceExpression": "kltqfqkZRWluIaVl", "rewardCode": "bSu0pSsooh1hWKRP", "rewardConditions": [{"condition": "tMpMUg5vO5d6mlBi", "conditionName": "v8uRcDDzFgU9p0BJ", "eventName": "uoi6DbUpPKIQeE75", "rewardItems": [{"duration": 2, "endDate": "1998-04-12T00:00:00Z", "identityType": "ITEM_ID", "itemId": "7VvNqCdnkGwYzDCg", "quantity": 84, "sku": "elqkaqecOpbHWC3B"}, {"duration": 65, "endDate": "1989-03-14T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "M9rJrlfAhgbFzm3x", "quantity": 69, "sku": "GdnwSCxLAQJs3Qdr"}, {"duration": 2, "endDate": "1977-05-21T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "9bUlr4F6DbCJEP0W", "quantity": 49, "sku": "cNdf1xB9Cyfq1pfT"}]}, {"condition": "NI8BuXE2KX5yQKqS", "conditionName": "rTPj2RqLI05mwoSH", "eventName": "2RYgZlZsgLukQQJT", "rewardItems": [{"duration": 56, "endDate": "1986-08-05T00:00:00Z", "identityType": "ITEM_ID", "itemId": "kegLEnJk8MGENGBw", "quantity": 5, "sku": "5BxgTwob3tTB2nBf"}, {"duration": 11, "endDate": "1977-03-18T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "ux8s5rhGwiFWoiBw", "quantity": 49, "sku": "0tpo9bVmDT7TrmUM"}, {"duration": 64, "endDate": "1984-09-26T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "qSGmw6RojCPkQOEU", "quantity": 72, "sku": "BJiplJ36mqKiyOJc"}]}, {"condition": "HUAKyKVirG6ZwGd3", "conditionName": "jqBf8XF5VSubA0Fy", "eventName": "eqnA1vGqzYG7bSzC", "rewardItems": [{"duration": 56, "endDate": "1976-11-04T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "JToM2FY7R4olnMo7", "quantity": 91, "sku": "Qs5qL7Ssz73Ti10i"}, {"duration": 47, "endDate": "1971-12-13T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "ObDqO7R87ioxdJFE", "quantity": 52, "sku": "suvo3857Lbdbd2cu"}, {"duration": 79, "endDate": "1981-02-19T00:00:00Z", "identityType": "ITEM_ID", "itemId": "aazIf3laf0Wn2wCG", "quantity": 41, "sku": "350J8rNpt0zA9FCA"}]}], "userIdExpression": "XcNKefqfDBlGjfcw"}' \
    > test.out 2>&1
eval_tap $? 190 'CreateReward' test.out

#- 191 QueryRewards
samples/cli/sample-apps Platform queryRewards \
    --namespace $AB_NAMESPACE \
    --eventTopic 'TQRlbV4r1Wz4Hohu' \
    --limit '69' \
    --offset '81' \
    --sortBy '["rewardCode:asc", "rewardCode:desc", "rewardCode"]' \
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
    --rewardId 'x15sj9OAASVJ9F4Z' \
    > test.out 2>&1
eval_tap $? 194 'GetReward' test.out

#- 195 UpdateReward
samples/cli/sample-apps Platform updateReward \
    --namespace $AB_NAMESPACE \
    --rewardId 'x5AdQoKOYkk2LLfp' \
    --body '{"description": "m9UcfALNcuGbQ23m", "eventTopic": "eYFjkpgNMDdMlcnF", "maxAwarded": 88, "maxAwardedPerUser": 6, "namespaceExpression": "rlUzjStGdNnYE0TH", "rewardCode": "ciHFSYtyptps67ZX", "rewardConditions": [{"condition": "aUOwQ68GRQ4VAakY", "conditionName": "InUxGywmELN8Mt6Q", "eventName": "ABAmZ80q4prWiz5z", "rewardItems": [{"duration": 14, "endDate": "1976-04-16T00:00:00Z", "identityType": "ITEM_ID", "itemId": "HdkLVRbKHwTaT5zW", "quantity": 23, "sku": "LFWXseebjCEOHX6W"}, {"duration": 12, "endDate": "1999-10-28T00:00:00Z", "identityType": "ITEM_ID", "itemId": "E4Mj2sYRYRU3RHpK", "quantity": 84, "sku": "pPmz25WpZ8o7EHYm"}, {"duration": 27, "endDate": "1975-07-26T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "0au7vD9VyGju57ug", "quantity": 4, "sku": "UreaCI7GeJWrA97S"}]}, {"condition": "7ejOXS6taymtU6in", "conditionName": "RrUF1L9zO1SAqMpz", "eventName": "bhfw6Ns93gsrNuse", "rewardItems": [{"duration": 13, "endDate": "1998-02-27T00:00:00Z", "identityType": "ITEM_ID", "itemId": "Owpy4cpgPdvqVBoL", "quantity": 67, "sku": "sKcHdYb84gcBZSRh"}, {"duration": 76, "endDate": "1974-06-22T00:00:00Z", "identityType": "ITEM_ID", "itemId": "GanH9q3qHMbRKwiL", "quantity": 17, "sku": "Fszr4KESWYHzajgC"}, {"duration": 81, "endDate": "1971-01-24T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "VK16XnAm9IhkzSOY", "quantity": 38, "sku": "mcYEQYwrlIksDiZA"}]}, {"condition": "yrrbaY34XFiZGBe7", "conditionName": "EySeXfcjsNQ7ogZm", "eventName": "N0k1s610Y0NgiE4V", "rewardItems": [{"duration": 50, "endDate": "1974-08-07T00:00:00Z", "identityType": "ITEM_ID", "itemId": "3boAShXZAoaVvb7V", "quantity": 75, "sku": "lGVUA1sYa2MKTI67"}, {"duration": 1, "endDate": "1972-11-29T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "fdMiusuS8AXJNjuG", "quantity": 24, "sku": "vHXF4waaQMfOx2dv"}, {"duration": 6, "endDate": "1971-01-30T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "xFJFerNj1TAAq833", "quantity": 27, "sku": "v4378CMbsnYt3fSE"}]}], "userIdExpression": "JLqtrltCjeP60lNi"}' \
    > test.out 2>&1
eval_tap $? 195 'UpdateReward' test.out

#- 196 DeleteReward
samples/cli/sample-apps Platform deleteReward \
    --namespace $AB_NAMESPACE \
    --rewardId 'WYcF3Y9KGSjrbcn2' \
    > test.out 2>&1
eval_tap $? 196 'DeleteReward' test.out

#- 197 CheckEventCondition
samples/cli/sample-apps Platform checkEventCondition \
    --namespace $AB_NAMESPACE \
    --rewardId '4JgyKRUid6wYCASi' \
    --body '{"payload": {"aiGgfXbvTgBmL03E": {}, "PvQehW70jcTVgHjy": {}, "AQQV9cKJRw83f0re": {}}}' \
    > test.out 2>&1
eval_tap $? 197 'CheckEventCondition' test.out

#- 198 DeleteRewardConditionRecord
samples/cli/sample-apps Platform deleteRewardConditionRecord \
    --namespace $AB_NAMESPACE \
    --rewardId 'D4eAI4QTKUrgSZSC' \
    --body '{"conditionName": "8pS1aVGvJ7bMvUII", "userId": "8ZYg2QLd7bytEJDk"}' \
    > test.out 2>&1
eval_tap $? 198 'DeleteRewardConditionRecord' test.out

#- 199 QuerySections
samples/cli/sample-apps Platform querySections \
    --namespace $AB_NAMESPACE \
    --end 'Zv5KyP8H8EZSCPd2' \
    --limit '54' \
    --offset '1' \
    --start 'MKObdC1HSOuPD3hv' \
    --storeId 'ki7g4Jq9RwP0ATwV' \
    --viewId 'HoDU9dWXgs0dXeY4' \
    > test.out 2>&1
eval_tap $? 199 'QuerySections' test.out

#- 200 CreateSection
samples/cli/sample-apps Platform createSection \
    --namespace $AB_NAMESPACE \
    --storeId 'tW6MmXC8CcG3ymRs' \
    --body '{"active": false, "displayOrder": 42, "endDate": "1999-08-05T00:00:00Z", "ext": {"q8KpD7xxv4Zi4yNq": {}, "NSpXeCcSJGGe2DQO": {}, "kCywaivY9OjelMeP": {}}, "fixedPeriodRotationConfig": {"backfillType": "CUSTOM", "duration": 15, "itemCount": 51, "rule": "SEQUENCE"}, "items": [{"id": "1LsvWPmYllM3dZ8V", "sku": "j2iVVO9TR6Zcd4gv"}, {"id": "6BMctIf16RPIucuD", "sku": "CkB54UhGfe8uX6et"}, {"id": "Hcgo0X9ImJsFxznu", "sku": "OsnT8bQn7Uk7w3zw"}], "localizations": {"ilHJ1v62MLJe7NKq": {"description": "LYqdLrEGwGYCENxl", "localExt": {"LT2HHit2f5oJrulB": {}, "ZvqGHECMiOl9GdKS": {}, "3iUGBmCiZbhCjgjh": {}}, "longDescription": "R8mrtYhGDeWJXBoq", "title": "XcwZXpsWCo85qmAk"}, "3Rap6fojdcuHVBnZ": {"description": "RZXbTNaRlJ4iSFN0", "localExt": {"6h7Hey5F6muzFjvb": {}, "EXsvpp8RtmOHU4ZC": {}, "mwavGLMJer5H3dpv": {}}, "longDescription": "UNEoWT29izP0vhDh", "title": "4GGSIGqbEWAWdnqU"}, "5iYD7mELaH6hZ1iz": {"description": "PaxHRvBZFXcwCRIF", "localExt": {"QanhPkWRDkmevo7a": {}, "2RZIPhBeXb9yebUf": {}, "8V2Gj898j4yty3SH": {}}, "longDescription": "Six7yjFyfhElt5QU", "title": "aj3rzP9o8hrgRInk"}}, "name": "uWGiPx9VGRDyYP8k", "rotationType": "NONE", "startDate": "1989-10-30T00:00:00Z", "viewId": "uJOkCnj6wGdFjaYl"}' \
    > test.out 2>&1
eval_tap $? 200 'CreateSection' test.out

#- 201 PurgeExpiredSection
samples/cli/sample-apps Platform purgeExpiredSection \
    --namespace $AB_NAMESPACE \
    --storeId 'vKMujRRIe2tdj96u' \
    > test.out 2>&1
eval_tap $? 201 'PurgeExpiredSection' test.out

#- 202 GetSection
samples/cli/sample-apps Platform getSection \
    --namespace $AB_NAMESPACE \
    --sectionId 'bBA0U1wLPZb9NBW8' \
    --storeId '0mnAQWjZlUhvu17a' \
    > test.out 2>&1
eval_tap $? 202 'GetSection' test.out

#- 203 UpdateSection
samples/cli/sample-apps Platform updateSection \
    --namespace $AB_NAMESPACE \
    --sectionId 'nkeIiBbGExBWoxXM' \
    --storeId 'vg3TmAUn33YZj0an' \
    --body '{"active": false, "displayOrder": 89, "endDate": "1975-09-16T00:00:00Z", "ext": {"yEJKjX2IaIhJcK4O": {}, "GGKkiHYdoi4qdi8E": {}, "Uh9VUgCBhH8wmhBG": {}}, "fixedPeriodRotationConfig": {"backfillType": "CUSTOM", "duration": 85, "itemCount": 94, "rule": "SEQUENCE"}, "items": [{"id": "8JiegIbQGu3ejAsh", "sku": "Tl12S7KnJqEIaGad"}, {"id": "HnGa2trLyFd5ooFD", "sku": "g5MC2yNjWbHAyitO"}, {"id": "8AXb9OeqysND02Oa", "sku": "0pUmsJMqph3MlkXr"}], "localizations": {"IinjVdhUoHpJsrFs": {"description": "DTTPGF3q0gMvpHha", "localExt": {"rcnKzrz6fDdKxugo": {}, "KkhuUEM8wFgMYWl2": {}, "tE5sedF2gdeqG3Q3": {}}, "longDescription": "3eDLKpkY4j7ogZzJ", "title": "jMBeNmw9FzvO7Ucy"}, "RtybQ0T3TR8DBOa5": {"description": "U1mOagiUpjXSDFW6", "localExt": {"yDeRujTqMXTThjtW": {}, "jYZxHNwFx7yy8172": {}, "iu4b55ERjuvtBjt9": {}}, "longDescription": "vmxJaPpZfl4lOkar", "title": "MZjUL2uDrW6fJVaX"}, "0Pcy0EirWBzqJAdE": {"description": "DmaR62rKFBE9Fpky", "localExt": {"m4oVWaXEdtFvy5cl": {}, "00RQnJGA3big8Sbh": {}, "BBSNfpy6E31L7j3m": {}}, "longDescription": "XT9WQ6F78nyk17A4", "title": "KGAQb3Ci25O37TAl"}}, "name": "UG7j3zU7Xyrhro9h", "rotationType": "NONE", "startDate": "1973-11-28T00:00:00Z", "viewId": "NsnVgfZOqYrngZJX"}' \
    > test.out 2>&1
eval_tap $? 203 'UpdateSection' test.out

#- 204 DeleteSection
samples/cli/sample-apps Platform deleteSection \
    --namespace $AB_NAMESPACE \
    --sectionId 'eknAPjkGQx4dmoI2' \
    --storeId 'rGIbJifAZDJ9nMjl' \
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
    --body '{"defaultLanguage": "Z5goiAmuUaBLHE8G", "defaultRegion": "SgdXC6R2qAEIinbD", "description": "5tER1wzWwD0DpzWp", "supportedLanguages": ["M5q3pWP7CF9mWhrR", "lPmiQfwQudYnNbXf", "82gixZbpxCiNX4Um"], "supportedRegions": ["TVCvsoYx1iYf7iwC", "BjcG1djmygKBQgpO", "liNoSyt9hqdtwloD"], "title": "Mf1k0ucqOF6g7eYX"}' \
    > test.out 2>&1
eval_tap $? 206 'CreateStore' test.out

#- 207 GetCatalogDefinition
samples/cli/sample-apps Platform getCatalogDefinition \
    --namespace $AB_NAMESPACE \
    --catalogType 'CATEGORY' \
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
    --body '{"catalogType": "ITEM", "fieldsToBeIncluded": ["CYOZ0hUzXUAgCWGM", "NqDmTS5m7btHcggy", "8pnbNHp2rg7Qg3m2"], "idsToBeExported": ["VK6SNfaxmFiHD1oT", "iLSIZi0LrHVm0Hlk", "9T2kBik51fvl0G7f"], "storeId": "8pwr01iVlVWFzvBG"}' \
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
    --storeId 'DIwTRAsv0AxM1Q2j' \
    > test.out 2>&1
eval_tap $? 215 'GetStore' test.out

#- 216 UpdateStore
samples/cli/sample-apps Platform updateStore \
    --namespace $AB_NAMESPACE \
    --storeId 'MhwlaPkKUyspuixi' \
    --body '{"defaultLanguage": "5kvyQdTIgaicSleA", "defaultRegion": "ypyeKTGVyh0enB5r", "description": "aLYl3NBEVFKEzakk", "supportedLanguages": ["80u5EVGor8aKGysM", "QqV0ZpADAnfMP9Lb", "7ys47SO52RroUPIW"], "supportedRegions": ["SOQWVVvhEGI86VrP", "CYRfzBbeWSrLHj8C", "zD6xoDDUfm78B84C"], "title": "fsmwJm1oJAvCdXxt"}' \
    > test.out 2>&1
eval_tap $? 216 'UpdateStore' test.out

#- 217 DeleteStore
samples/cli/sample-apps Platform deleteStore \
    --namespace $AB_NAMESPACE \
    --storeId '4xMH6vE4w9UpZ9RC' \
    > test.out 2>&1
eval_tap $? 217 'DeleteStore' test.out

#- 218 QueryChanges
samples/cli/sample-apps Platform queryChanges \
    --namespace $AB_NAMESPACE \
    --storeId 'DPVm9O3MkUhZxNKW' \
    --action 'CREATE' \
    --itemSku 'v6GMg1VwP7n0M9Sq' \
    --itemType 'APP' \
    --limit '69' \
    --offset '56' \
    --selected 'false' \
    --sortBy '["createdAt", "updatedAt:desc"]' \
    --status 'UNPUBLISHED' \
    --type 'VIEW' \
    --updatedAtEnd 'znTqYMfqDittAFpU' \
    --updatedAtStart 'SgBfi0FJpXL7tqmd' \
    --withTotal 'false' \
    > test.out 2>&1
eval_tap $? 218 'QueryChanges' test.out

#- 219 PublishAll
samples/cli/sample-apps Platform publishAll \
    --namespace $AB_NAMESPACE \
    --storeId 'xnmzdhUyCL9kGSK9' \
    > test.out 2>&1
eval_tap $? 219 'PublishAll' test.out

#- 220 PublishSelected
samples/cli/sample-apps Platform publishSelected \
    --namespace $AB_NAMESPACE \
    --storeId 'ltgpbnpbqB10CsK1' \
    > test.out 2>&1
eval_tap $? 220 'PublishSelected' test.out

#- 221 SelectAllRecords
samples/cli/sample-apps Platform selectAllRecords \
    --namespace $AB_NAMESPACE \
    --storeId 'gAxE0jzXAFN2tW1h' \
    > test.out 2>&1
eval_tap $? 221 'SelectAllRecords' test.out

#- 222 SelectAllRecordsByCriteria
samples/cli/sample-apps Platform selectAllRecordsByCriteria \
    --namespace $AB_NAMESPACE \
    --storeId 'rRfUSidIFEMeQ55K' \
    --action 'UPDATE' \
    --itemSku 'npv3Xc04BCCvfrwl' \
    --itemType 'APP' \
    --selected 'true' \
    --type 'SECTION' \
    --updatedAtEnd 'UQvhMc8W3aSErqXU' \
    --updatedAtStart 'VeWLHfuxd3Jt4Nne' \
    > test.out 2>&1
eval_tap $? 222 'SelectAllRecordsByCriteria' test.out

#- 223 GetStatistic
samples/cli/sample-apps Platform getStatistic \
    --namespace $AB_NAMESPACE \
    --storeId 'H4psYMIhZXo86qCU' \
    --action 'DELETE' \
    --itemSku 'Z3cPbvcgPvqe7CcN' \
    --itemType 'BUNDLE' \
    --type 'ITEM' \
    --updatedAtEnd 'pnj13wfwipcDRHoF' \
    --updatedAtStart 'LYZzcxY3g2CqCxzW' \
    > test.out 2>&1
eval_tap $? 223 'GetStatistic' test.out

#- 224 UnselectAllRecords
samples/cli/sample-apps Platform unselectAllRecords \
    --namespace $AB_NAMESPACE \
    --storeId '28mXPHVAteVtNByX' \
    > test.out 2>&1
eval_tap $? 224 'UnselectAllRecords' test.out

#- 225 SelectRecord
samples/cli/sample-apps Platform selectRecord \
    --changeId 'HbrU3z2mvZuvPxw4' \
    --namespace $AB_NAMESPACE \
    --storeId '57j6XwK8AchA48mU' \
    > test.out 2>&1
eval_tap $? 225 'SelectRecord' test.out

#- 226 UnselectRecord
samples/cli/sample-apps Platform unselectRecord \
    --changeId 'FLVMtLZV8B87r8oC' \
    --namespace $AB_NAMESPACE \
    --storeId 'jDc1BqUvcgaAvwEj' \
    > test.out 2>&1
eval_tap $? 226 'UnselectRecord' test.out

#- 227 CloneStore
samples/cli/sample-apps Platform cloneStore \
    --namespace $AB_NAMESPACE \
    --storeId '5N6dkz0IX7AOVRmG' \
    --targetStoreId 'peXQLpVEhd2hv2nW' \
    > test.out 2>&1
eval_tap $? 227 'CloneStore' test.out

#- 228 ExportStore
eval_tap 0 228 'ExportStore # SKIP deprecated' test.out

#- 229 QueryImportHistory
samples/cli/sample-apps Platform queryImportHistory \
    --namespace $AB_NAMESPACE \
    --storeId 'R90sIiTUIjFshju4' \
    --end 'rfm1KgDhxHTbOpOk' \
    --limit '4' \
    --offset '9' \
    --sortBy 'GlN6lCNurCjPLlJy' \
    --start 'wgqKPPGNVwCJ4Sew' \
    --success 'false' \
    > test.out 2>&1
eval_tap $? 229 'QueryImportHistory' test.out

#- 230 ImportStoreByCSV
samples/cli/sample-apps Platform importStoreByCSV \
    --namespace $AB_NAMESPACE \
    --storeId '6pIXDmf3RyhSLr2l' \
    --category 'tmp.dat' \
    --display 'tmp.dat' \
    --item 'tmp.dat' \
    --notes 'qqX8m270C5jWpMtN' \
    --section 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 230 'ImportStoreByCSV' test.out

#- 231 QuerySubscriptions
samples/cli/sample-apps Platform querySubscriptions \
    --namespace $AB_NAMESPACE \
    --chargeStatus 'CHARGE_FAILED' \
    --itemId 'tweohRDk7yx6JAlV' \
    --limit '59' \
    --offset '67' \
    --sku 'moDYLZwBRhA9O8D0' \
    --status 'CANCELLED' \
    --subscribedBy 'USER' \
    --userId 'qShQnoYAxZzOyt6s' \
    > test.out 2>&1
eval_tap $? 231 'QuerySubscriptions' test.out

#- 232 RecurringChargeSubscription
samples/cli/sample-apps Platform recurringChargeSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'WeBrUHquV3U7Jmx6' \
    > test.out 2>&1
eval_tap $? 232 'RecurringChargeSubscription' test.out

#- 233 GetTicketDynamic
samples/cli/sample-apps Platform getTicketDynamic \
    --boothName 'cJ7btHJcqbnzGAdW' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 233 'GetTicketDynamic' test.out

#- 234 DecreaseTicketSale
samples/cli/sample-apps Platform decreaseTicketSale \
    --boothName '8gBo18XRyfh7iNs6' \
    --namespace $AB_NAMESPACE \
    --body '{"orderNo": "TdWaERHpsyl8c0Zb"}' \
    > test.out 2>&1
eval_tap $? 234 'DecreaseTicketSale' test.out

#- 235 GetTicketBoothID
samples/cli/sample-apps Platform getTicketBoothID \
    --boothName 'SCJEJcFPBHz4FknP' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 235 'GetTicketBoothID' test.out

#- 236 IncreaseTicketSale
samples/cli/sample-apps Platform increaseTicketSale \
    --boothName 'NNbB6ug952LXueEv' \
    --namespace $AB_NAMESPACE \
    --body '{"count": 57, "orderNo": "0EQFpKcuwd3uT7MJ"}' \
    > test.out 2>&1
eval_tap $? 236 'IncreaseTicketSale' test.out

#- 237 Commit
samples/cli/sample-apps Platform commit \
    --namespace $AB_NAMESPACE \
    --body '{"actions": [{"operations": [{"creditPayload": {"balanceOrigin": "IOS", "count": 53, "currencyCode": "yjAt0RdtoP69vUEW", "expireAt": "1977-01-14T00:00:00Z"}, "debitPayload": {"count": 86, "currencyCode": "HkPSdrsXI07Tzr5j", "walletPlatform": "GooglePlay"}, "fulFillItemPayload": {"count": 34, "entitlementCollectionId": "JaFTRGrEp2rIopgy", "entitlementOrigin": "Nintendo", "itemIdentity": "zSCPh467KsMeW7Im", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 26, "entitlementId": "SkXOyt89M5gUXi8Y"}, "type": "FULFILL_ITEM"}, {"creditPayload": {"balanceOrigin": "Epic", "count": 74, "currencyCode": "9JURDCsrkOfLfmWe", "expireAt": "1981-07-17T00:00:00Z"}, "debitPayload": {"count": 96, "currencyCode": "lNuskFoNmtJwR28r", "walletPlatform": "Steam"}, "fulFillItemPayload": {"count": 50, "entitlementCollectionId": "C5qtN8dKjGLuIkKn", "entitlementOrigin": "IOS", "itemIdentity": "ZzYvuIlv3VFuPRcN", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 65, "entitlementId": "z7255RxWq7t3m1GS"}, "type": "DEBIT_WALLET"}, {"creditPayload": {"balanceOrigin": "Nintendo", "count": 42, "currencyCode": "Baf47XdPsyNfBe5e", "expireAt": "1980-01-01T00:00:00Z"}, "debitPayload": {"count": 83, "currencyCode": "GQtQzDpis1xmuMCm", "walletPlatform": "Other"}, "fulFillItemPayload": {"count": 50, "entitlementCollectionId": "DYDk8k4QQJcdiL4y", "entitlementOrigin": "Oculus", "itemIdentity": "TAgf2vm6pmvBAEHX", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 62, "entitlementId": "FS9CNqzHkfvAuenu"}, "type": "CREDIT_WALLET"}], "userId": "s1wyDsrtWlxjdrTc"}, {"operations": [{"creditPayload": {"balanceOrigin": "Twitch", "count": 53, "currencyCode": "EgtqgGY03C9tV4UF", "expireAt": "1976-02-21T00:00:00Z"}, "debitPayload": {"count": 86, "currencyCode": "aZ9PDMDMMSHoOcS9", "walletPlatform": "Other"}, "fulFillItemPayload": {"count": 31, "entitlementCollectionId": "MTDSX5pJHnJZdaoj", "entitlementOrigin": "Other", "itemIdentity": "1FTn4szAChPcDGto", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 23, "entitlementId": "Nm1uafy6OQIxEmZY"}, "type": "FULFILL_ITEM"}, {"creditPayload": {"balanceOrigin": "Steam", "count": 74, "currencyCode": "ueWjrqapopZMSENC", "expireAt": "1982-09-01T00:00:00Z"}, "debitPayload": {"count": 28, "currencyCode": "BM2yz4P2a6HyliS4", "walletPlatform": "Playstation"}, "fulFillItemPayload": {"count": 56, "entitlementCollectionId": "673saLKLkFpogIB0", "entitlementOrigin": "Other", "itemIdentity": "op93DJGywvnDsyrc", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 10, "entitlementId": "8vzk8PTztNkeOxbs"}, "type": "FULFILL_ITEM"}, {"creditPayload": {"balanceOrigin": "Epic", "count": 76, "currencyCode": "15KaUql2pTff3laa", "expireAt": "1981-04-25T00:00:00Z"}, "debitPayload": {"count": 66, "currencyCode": "GVzUP16gGSl5y8Fp", "walletPlatform": "Playstation"}, "fulFillItemPayload": {"count": 64, "entitlementCollectionId": "P6vrwkPsNzqInVQK", "entitlementOrigin": "Nintendo", "itemIdentity": "0pyTvgXYW7QG07ti", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 29, "entitlementId": "TMjDNXxMpx1CYSgZ"}, "type": "DEBIT_WALLET"}], "userId": "IJhUfRfynDyvGkGe"}, {"operations": [{"creditPayload": {"balanceOrigin": "Playstation", "count": 64, "currencyCode": "ZEQEeEw9HctqaQF3", "expireAt": "1988-08-07T00:00:00Z"}, "debitPayload": {"count": 45, "currencyCode": "Xj5BvmCq7zRh3xzN", "walletPlatform": "GooglePlay"}, "fulFillItemPayload": {"count": 87, "entitlementCollectionId": "IUQD02JQ3vgfrRFY", "entitlementOrigin": "GooglePlay", "itemIdentity": "N9wNJJWJpqTQQC6B", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 17, "entitlementId": "03By9XrrZt0dSLtu"}, "type": "CREDIT_WALLET"}, {"creditPayload": {"balanceOrigin": "Steam", "count": 12, "currencyCode": "56l3CbRJ4wIQ5lmY", "expireAt": "1976-11-14T00:00:00Z"}, "debitPayload": {"count": 59, "currencyCode": "nXP1MwlE0fP2W8mX", "walletPlatform": "Xbox"}, "fulFillItemPayload": {"count": 13, "entitlementCollectionId": "YsjzjYPEW4BnZJPb", "entitlementOrigin": "Other", "itemIdentity": "mE3dyIec86yI10oz", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 77, "entitlementId": "bPCafuu1qDJjEGKb"}, "type": "FULFILL_ITEM"}, {"creditPayload": {"balanceOrigin": "Steam", "count": 6, "currencyCode": "dxNk9wPdYdQqYw9l", "expireAt": "1993-07-12T00:00:00Z"}, "debitPayload": {"count": 65, "currencyCode": "s2pn2X8NQbX9tlvA", "walletPlatform": "Steam"}, "fulFillItemPayload": {"count": 49, "entitlementCollectionId": "Kjw75ieXEPsuJ3t5", "entitlementOrigin": "System", "itemIdentity": "xETurDQtOzWDlNTF", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 0, "entitlementId": "uqdqVM0Ag5y4Crnv"}, "type": "CREDIT_WALLET"}], "userId": "eQWJpUesPuJLtW00"}], "metadata": {"iCB61hebiZfXK2Ta": {}, "OArVX5sIbsOvMNMX": {}, "20KvS4lRQO9IhSxH": {}}, "needPreCheck": true, "transactionId": "xqXzHJeo6sTEvrIi", "type": "sdn72zw9IKNuTa6I"}' \
    > test.out 2>&1
eval_tap $? 237 'Commit' test.out

#- 238 GetTradeHistoryByCriteria
samples/cli/sample-apps Platform getTradeHistoryByCriteria \
    --namespace $AB_NAMESPACE \
    --limit '23' \
    --offset '84' \
    --status 'FAILED' \
    --type 'DJKrDoIzANWQvDSy' \
    --userId 'VlHDBdAWbrjebfEU' \
    > test.out 2>&1
eval_tap $? 238 'GetTradeHistoryByCriteria' test.out

#- 239 GetTradeHistoryByTransactionId
samples/cli/sample-apps Platform getTradeHistoryByTransactionId \
    --namespace $AB_NAMESPACE \
    --transactionId 'CGjfY4lg5oH3zcpR' \
    > test.out 2>&1
eval_tap $? 239 'GetTradeHistoryByTransactionId' test.out

#- 240 UnlockSteamUserAchievement
samples/cli/sample-apps Platform unlockSteamUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'Hf6JK40fiAGdXyvR' \
    --body '{"achievements": [{"id": "x30C7g4wwpD99x28", "value": 62}, {"id": "pt9W28mMRk4FFV9d", "value": 86}, {"id": "aZYRZ9hdhqBRe2n1", "value": 5}], "steamUserId": "WNy9qgRs9OS7pJ6d"}' \
    > test.out 2>&1
eval_tap $? 240 'UnlockSteamUserAchievement' test.out

#- 241 GetXblUserAchievements
samples/cli/sample-apps Platform getXblUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId '1t0CoaN8rfzpW7p1' \
    --xboxUserId 'Z2glv3DyBXVtGGaC' \
    > test.out 2>&1
eval_tap $? 241 'GetXblUserAchievements' test.out

#- 242 UpdateXblUserAchievement
samples/cli/sample-apps Platform updateXblUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'WFexKeDzzw9Olqxw' \
    --body '{"achievements": [{"id": "NCDOfI4OrX9r1Wag", "percentComplete": 47}, {"id": "rsQhxTMVDjjD5LIB", "percentComplete": 35}, {"id": "CZO1b9XjdYYbL8cO", "percentComplete": 1}], "serviceConfigId": "qKVACkHwIV7Aqr9P", "titleId": "kHLz0PbzdejQVJhJ", "xboxUserId": "dqnuptQQGDZFlFSa"}' \
    > test.out 2>&1
eval_tap $? 242 'UpdateXblUserAchievement' test.out

#- 243 AnonymizeCampaign
samples/cli/sample-apps Platform anonymizeCampaign \
    --namespace $AB_NAMESPACE \
    --userId 'h6ZeBkuPOZ9IZRBP' \
    > test.out 2>&1
eval_tap $? 243 'AnonymizeCampaign' test.out

#- 244 AnonymizeEntitlement
samples/cli/sample-apps Platform anonymizeEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'bZMRR8ZcXzei9jcR' \
    > test.out 2>&1
eval_tap $? 244 'AnonymizeEntitlement' test.out

#- 245 AnonymizeFulfillment
samples/cli/sample-apps Platform anonymizeFulfillment \
    --namespace $AB_NAMESPACE \
    --userId 'Z2OuI8DnnEH6LfwL' \
    > test.out 2>&1
eval_tap $? 245 'AnonymizeFulfillment' test.out

#- 246 AnonymizeIntegration
samples/cli/sample-apps Platform anonymizeIntegration \
    --namespace $AB_NAMESPACE \
    --userId 'MjQNAeYACofTWVJS' \
    > test.out 2>&1
eval_tap $? 246 'AnonymizeIntegration' test.out

#- 247 AnonymizeOrder
samples/cli/sample-apps Platform anonymizeOrder \
    --namespace $AB_NAMESPACE \
    --userId '6F9LLRDavPSUCSDg' \
    > test.out 2>&1
eval_tap $? 247 'AnonymizeOrder' test.out

#- 248 AnonymizePayment
samples/cli/sample-apps Platform anonymizePayment \
    --namespace $AB_NAMESPACE \
    --userId 'ZgE3ep9npLyNBQbs' \
    > test.out 2>&1
eval_tap $? 248 'AnonymizePayment' test.out

#- 249 AnonymizeRevocation
samples/cli/sample-apps Platform anonymizeRevocation \
    --namespace $AB_NAMESPACE \
    --userId 'WY4whvGhr8dgheIu' \
    > test.out 2>&1
eval_tap $? 249 'AnonymizeRevocation' test.out

#- 250 AnonymizeSubscription
samples/cli/sample-apps Platform anonymizeSubscription \
    --namespace $AB_NAMESPACE \
    --userId 'E3JyplDz8Fnpj7RX' \
    > test.out 2>&1
eval_tap $? 250 'AnonymizeSubscription' test.out

#- 251 AnonymizeWallet
samples/cli/sample-apps Platform anonymizeWallet \
    --namespace $AB_NAMESPACE \
    --userId '38RcLO0SfmvIuEVP' \
    > test.out 2>&1
eval_tap $? 251 'AnonymizeWallet' test.out

#- 252 GetUserDLCByPlatform
samples/cli/sample-apps Platform getUserDLCByPlatform \
    --namespace $AB_NAMESPACE \
    --userId 'DNbqxQPMJ64eSXRM' \
    --type 'PSN' \
    > test.out 2>&1
eval_tap $? 252 'GetUserDLCByPlatform' test.out

#- 253 GetUserDLC
samples/cli/sample-apps Platform getUserDLC \
    --namespace $AB_NAMESPACE \
    --userId 'P1tZjxY35p0MgJRj' \
    --includeAllNamespaces 'false' \
    --status 'REVOKED' \
    --type 'OCULUS' \
    > test.out 2>&1
eval_tap $? 253 'GetUserDLC' test.out

#- 254 QueryUserEntitlements
samples/cli/sample-apps Platform queryUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId '7NCH6vvDIj3FHba6' \
    --activeOnly 'false' \
    --appType 'SOFTWARE' \
    --collectionId 'eYBhCx3naz6MaBA3' \
    --entitlementClazz 'SUBSCRIPTION' \
    --entitlementName 'daEfi3XOZ63A8Z5X' \
    --features '["PLzsC0p9GmCpXgis", "NA7ZPKmnXPPdAN8N", "nDJonkKE3K794PZ9"]' \
    --fuzzyMatchName 'true' \
    --ignoreActiveDate 'true' \
    --itemId '["PUkoZKYWzfhwjrMf", "2BgTdc0TResAytF7", "opyG2kzUHs4teXuL"]' \
    --limit '50' \
    --offset '61' \
    --origin 'System' \
    > test.out 2>&1
eval_tap $? 254 'QueryUserEntitlements' test.out

#- 255 GrantUserEntitlement
samples/cli/sample-apps Platform grantUserEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'WFzuKR8ienvLzFPm' \
    --body '[{"collectionId": "KrrZsJiuiQ9iI7tK", "endDate": "1992-10-22T00:00:00Z", "grantedCode": "UQxfhluWT1mphcyF", "itemId": "DPSlcJlKxxQnMotY", "itemNamespace": "Pm5kZnPusKN6Bx4Q", "language": "JOhn_663", "metadata": {"icXd3juZi3NAlrbY": {}, "AJZ2ZjSheKqnmfHJ": {}, "l69mFsrPvnXIyQzN": {}}, "origin": "Playstation", "quantity": 17, "region": "xr773vBOVOPPcTWU", "source": "ACHIEVEMENT", "startDate": "1977-08-17T00:00:00Z", "storeId": "zU21pJSNIv9hdkSM"}, {"collectionId": "hHwAETMh8eZv8gRH", "endDate": "1984-02-25T00:00:00Z", "grantedCode": "5RtNpsnZSDPEx69H", "itemId": "hddxb0L9p4gHTAWn", "itemNamespace": "Se5VlCwi1EIegacA", "language": "rg_gqbq", "metadata": {"5T7akp8Fjy8d7VO2": {}, "N7VzMNf4SOgsNGFb": {}, "QqTlvu7olLMbpet4": {}}, "origin": "Twitch", "quantity": 95, "region": "p9Ocy6SaBvjRg0NG", "source": "PROMOTION", "startDate": "1980-03-27T00:00:00Z", "storeId": "ETuzNq3eNYH4AkR3"}, {"collectionId": "AREs5Sr82qNeqXFe", "endDate": "1973-04-01T00:00:00Z", "grantedCode": "c3Ku3FjX5HXFUgWt", "itemId": "DRJVSb6v1M87p8AY", "itemNamespace": "87G9lianOt27Z533", "language": "ObMW", "metadata": {"H9b9U4fLNElXvNjI": {}, "GAWtxSJyRq2nbwZt": {}, "4ZvGr1IbmJvqRYxk": {}}, "origin": "IOS", "quantity": 75, "region": "uqwnhMtKOIpFTXiu", "source": "PURCHASE", "startDate": "1996-11-20T00:00:00Z", "storeId": "Vq84J3qkcgm7QMfs"}]' \
    > test.out 2>&1
eval_tap $? 255 'GrantUserEntitlement' test.out

#- 256 GetUserAppEntitlementByAppId
samples/cli/sample-apps Platform getUserAppEntitlementByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'Aa1BjFV97n0X1tBq' \
    --activeOnly 'false' \
    --appId 'lQ1uHgRwisPyFwZG' \
    > test.out 2>&1
eval_tap $? 256 'GetUserAppEntitlementByAppId' test.out

#- 257 QueryUserEntitlementsByAppType
samples/cli/sample-apps Platform queryUserEntitlementsByAppType \
    --namespace $AB_NAMESPACE \
    --userId 'SdBf4gbt6BG3T2iO' \
    --activeOnly 'false' \
    --limit '72' \
    --offset '56' \
    --appType 'SOFTWARE' \
    > test.out 2>&1
eval_tap $? 257 'QueryUserEntitlementsByAppType' test.out

#- 258 GetUserEntitlementsByIds
samples/cli/sample-apps Platform getUserEntitlementsByIds \
    --namespace $AB_NAMESPACE \
    --userId '9pP8sHzcohDqazuw' \
    --ids '["l0ZMxoYKgNIp01wO", "WsihoeBKiws9nOPB", "6UhrI2vXINaFmJ7u"]' \
    > test.out 2>&1
eval_tap $? 258 'GetUserEntitlementsByIds' test.out

#- 259 GetUserEntitlementByItemId
samples/cli/sample-apps Platform getUserEntitlementByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'rR1EKkRTvfHjnJ9L' \
    --activeOnly 'true' \
    --entitlementClazz 'CODE' \
    --platform '6a2WdWl5exRiCNmi' \
    --itemId 'xqZOkbnciNqKdUHz' \
    > test.out 2>&1
eval_tap $? 259 'GetUserEntitlementByItemId' test.out

#- 260 GetUserActiveEntitlementsByItemIds
samples/cli/sample-apps Platform getUserActiveEntitlementsByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'pcA7jQmYdhg75Ijh' \
    --ids '["QdnEmDtg8QHQ9cvC", "3Y8qYXESml57IHbx", "9IICQXvW5dtTc4vU"]' \
    --platform 'DvySTN11UdfRN6Ef' \
    > test.out 2>&1
eval_tap $? 260 'GetUserActiveEntitlementsByItemIds' test.out

#- 261 GetUserEntitlementBySku
samples/cli/sample-apps Platform getUserEntitlementBySku \
    --namespace $AB_NAMESPACE \
    --userId 'yIoQT3LGR4VBS1kM' \
    --activeOnly 'true' \
    --entitlementClazz 'OPTIONBOX' \
    --platform '6BOZkiw8E6Kmbv48' \
    --sku 'Qi7nXI6RrF7KaF0J' \
    > test.out 2>&1
eval_tap $? 261 'GetUserEntitlementBySku' test.out

#- 262 ExistsAnyUserActiveEntitlement
samples/cli/sample-apps Platform existsAnyUserActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'ZrUmjz9O2F39tIea' \
    --appIds '["Guu1WYDZhl9lfBPB", "1u4y7YmZJWSydxAb", "JADtpB6OZ4bc5VAF"]' \
    --itemIds '["vFjw9NlfFIFsZtpy", "G8TBSPlOotJ7o9CE", "39Zurdfw0mkQUOzH"]' \
    --platform 'HAfo5Gvtdkib3rTn' \
    --skus '["DaL6hFhO9qlNCuuy", "NbzC85A7qRU21HgA", "kopnTXpuzLqd2PJB"]' \
    > test.out 2>&1
eval_tap $? 262 'ExistsAnyUserActiveEntitlement' test.out

#- 263 ExistsAnyUserActiveEntitlementByItemIds
samples/cli/sample-apps Platform existsAnyUserActiveEntitlementByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'e8Fmi56dpCpFAGrc' \
    --platform 'IQbGgUotZL4aXiMI' \
    --itemIds '["1oxN1syCW7E2prmw", "qyYCxPm2R0ICAfDS", "PFqhmmGeapDJtHYi"]' \
    > test.out 2>&1
eval_tap $? 263 'ExistsAnyUserActiveEntitlementByItemIds' test.out

#- 264 GetUserAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform getUserAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'egW19U1csXPRKWav' \
    --appId 'TvEbGlSKFrutnOj3' \
    > test.out 2>&1
eval_tap $? 264 'GetUserAppEntitlementOwnershipByAppId' test.out

#- 265 GetUserEntitlementOwnershipByItemId
samples/cli/sample-apps Platform getUserEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'hnsfd7IQYKoPz57d' \
    --entitlementClazz 'ENTITLEMENT' \
    --platform 'aYCZzjIuZKOB7iAG' \
    --itemId 'xpKk10GYUO5xQBae' \
    > test.out 2>&1
eval_tap $? 265 'GetUserEntitlementOwnershipByItemId' test.out

#- 266 GetUserEntitlementOwnershipByItemIds
samples/cli/sample-apps Platform getUserEntitlementOwnershipByItemIds \
    --namespace $AB_NAMESPACE \
    --userId '7j3UKf2rN5uGQzRB' \
    --ids '["IgvGH9M3f1LBTEsj", "xzxkjdwwbIxdMxjY", "YsUnLo3ifJ9uMr5k"]' \
    --platform 'jrd9jZj7zFvdpqzM' \
    > test.out 2>&1
eval_tap $? 266 'GetUserEntitlementOwnershipByItemIds' test.out

#- 267 GetUserEntitlementOwnershipBySku
samples/cli/sample-apps Platform getUserEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --userId 'Xx1ANvLZCGrAvLU4' \
    --entitlementClazz 'CODE' \
    --platform 'LRlNiQfoM597v7dx' \
    --sku 'naALcFwYTHStM9JP' \
    > test.out 2>&1
eval_tap $? 267 'GetUserEntitlementOwnershipBySku' test.out

#- 268 RevokeAllEntitlements
samples/cli/sample-apps Platform revokeAllEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'P8pke9DUAzFuVUb8' \
    > test.out 2>&1
eval_tap $? 268 'RevokeAllEntitlements' test.out

#- 269 RevokeUserEntitlements
samples/cli/sample-apps Platform revokeUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId '5WhoiMPWqZOPtWda' \
    --entitlementIds 'CYFhy6iCfI4aMElv' \
    > test.out 2>&1
eval_tap $? 269 'RevokeUserEntitlements' test.out

#- 270 GetUserEntitlement
samples/cli/sample-apps Platform getUserEntitlement \
    --entitlementId 'a9Pips8dLdAyE4ez' \
    --namespace $AB_NAMESPACE \
    --userId '9i5zLjH4GZca3Aw9' \
    > test.out 2>&1
eval_tap $? 270 'GetUserEntitlement' test.out

#- 271 UpdateUserEntitlement
samples/cli/sample-apps Platform updateUserEntitlement \
    --entitlementId 'pZ4EUNaCgXAZivG9' \
    --namespace $AB_NAMESPACE \
    --userId 'KgD9AHpPYdg2mTBk' \
    --body '{"collectionId": "MtJmfv60WwryM6Xl", "endDate": "1996-02-25T00:00:00Z", "nullFieldList": ["oPaZRGfbd4Tar4fS", "pMU13DWGWz8EuXJd", "zhx8uQfCwqD7ZPXq"], "origin": "GooglePlay", "reason": "LUwMEPQ3fNAQ8nzN", "startDate": "1990-11-19T00:00:00Z", "status": "ACTIVE", "useCount": 31}' \
    > test.out 2>&1
eval_tap $? 271 'UpdateUserEntitlement' test.out

#- 272 ConsumeUserEntitlement
samples/cli/sample-apps Platform consumeUserEntitlement \
    --entitlementId 'GUv6tCYstLNCmsAO' \
    --namespace $AB_NAMESPACE \
    --userId 'mA6Unhu5EL6t8sBA' \
    --body '{"metadata": {"FJOul89yVZInRm0t": {}, "iWbxdilAzWQa2E6N": {}, "TJ4fvDAjLdu2vUJO": {}}, "options": ["qUT7qmQrN4dqUFtC", "6rQmmYMGPRcUCPvy", "sqspcN04yDyRhcWN"], "platform": "rJtUFigT9TCR3vPp", "requestId": "y09Agw5fQCTDJ2ui", "useCount": 14}' \
    > test.out 2>&1
eval_tap $? 272 'ConsumeUserEntitlement' test.out

#- 273 DisableUserEntitlement
samples/cli/sample-apps Platform disableUserEntitlement \
    --entitlementId 'XPHmCpDH5bevTzc5' \
    --namespace $AB_NAMESPACE \
    --userId 'ofmG1BriQoMCnFu3' \
    > test.out 2>&1
eval_tap $? 273 'DisableUserEntitlement' test.out

#- 274 EnableUserEntitlement
samples/cli/sample-apps Platform enableUserEntitlement \
    --entitlementId 'zb1273oP4W2UojGw' \
    --namespace $AB_NAMESPACE \
    --userId 'JDYMzol69ZUycVqT' \
    > test.out 2>&1
eval_tap $? 274 'EnableUserEntitlement' test.out

#- 275 GetUserEntitlementHistories
samples/cli/sample-apps Platform getUserEntitlementHistories \
    --entitlementId 'YyAYCq4pE0uTVCvK' \
    --namespace $AB_NAMESPACE \
    --userId 'fewYaZSkSjCFdMLR' \
    > test.out 2>&1
eval_tap $? 275 'GetUserEntitlementHistories' test.out

#- 276 RevokeUserEntitlement
samples/cli/sample-apps Platform revokeUserEntitlement \
    --entitlementId 'yYB1NWMS1TezuJAI' \
    --namespace $AB_NAMESPACE \
    --userId 'ebXCKE2s1IQzOAGY' \
    --body '{"metadata": {"8Au1cnMMlRTNPO1s": {}, "98WzPkg0c6Ni7876": {}, "RAxmUge5b08CJenc": {}}}' \
    > test.out 2>&1
eval_tap $? 276 'RevokeUserEntitlement' test.out

#- 277 RevokeUserEntitlementByUseCount
samples/cli/sample-apps Platform revokeUserEntitlementByUseCount \
    --entitlementId 'PYPatALO2XANbCjP' \
    --namespace $AB_NAMESPACE \
    --userId 'WytOex62fVnWUEFD' \
    --body '{"reason": "YddNKMUHCnE7SwUQ", "useCount": 18}' \
    > test.out 2>&1
eval_tap $? 277 'RevokeUserEntitlementByUseCount' test.out

#- 278 PreCheckRevokeUserEntitlementByUseCount
samples/cli/sample-apps Platform preCheckRevokeUserEntitlementByUseCount \
    --entitlementId 'XzFQplhRnpSHqjqm' \
    --namespace $AB_NAMESPACE \
    --userId 'r4dJYZiOCbZEZQLB' \
    --quantity '88' \
    > test.out 2>&1
eval_tap $? 278 'PreCheckRevokeUserEntitlementByUseCount' test.out

#- 279 RevokeUseCount
eval_tap 0 279 'RevokeUseCount # SKIP deprecated' test.out

#- 280 SellUserEntitlement
samples/cli/sample-apps Platform sellUserEntitlement \
    --entitlementId 'xm88lXGlZeP1bGlu' \
    --namespace $AB_NAMESPACE \
    --userId 'mkKGgFxD7tGaSeLe' \
    --body '{"platform": "KWDaVFDciZm6k9sk", "requestId": "DPUomBcLk3g220aT", "useCount": 65}' \
    > test.out 2>&1
eval_tap $? 280 'SellUserEntitlement' test.out

#- 281 FulfillItem
samples/cli/sample-apps Platform fulfillItem \
    --namespace $AB_NAMESPACE \
    --userId 'cWv3QedOz8wQfevy' \
    --body '{"duration": 83, "endDate": "1986-08-28T00:00:00Z", "entitlementCollectionId": "AE8JmryqK11VYBpy", "entitlementOrigin": "Oculus", "itemId": "Mpo8QFbCSk1OzJoj", "itemSku": "AMUiS0I7P8wMHP3W", "language": "W4Ke3qRrEuYajtlb", "metadata": {"qttb71nYsJRiszbk": {}, "9RMQRAkVSY2446AL": {}, "ePM0x4zGwKR5rtx1": {}}, "order": {"currency": {"currencyCode": "4W3fuzaGmuTDOLmR", "currencySymbol": "WDN2YwS02P1BcjVg", "currencyType": "VIRTUAL", "decimals": 88, "namespace": "93MWiPDomrUiXzji"}, "ext": {"PdVDCRlRfmeRYYs7": {}, "6TmjZiu3MUBQftf0": {}, "tyGzkalFc0RRGc3b": {}}, "free": false}, "orderNo": "0YqsMLGrz7nIRjhn", "origin": "Nintendo", "overrideBundleItemQty": {"ISXEz9KV8Tnh49is": 4, "L1onme2RjUQAmhAJ": 43, "OgarciuJYA9blwLV": 56}, "quantity": 27, "region": "xGmxslBFf2uNsIAw", "source": "GIFT", "startDate": "1998-10-24T00:00:00Z", "storeId": "6X4EfvDIPGhh4EEL"}' \
    > test.out 2>&1
eval_tap $? 281 'FulfillItem' test.out

#- 282 RedeemCode
samples/cli/sample-apps Platform redeemCode \
    --namespace $AB_NAMESPACE \
    --userId '6uNXjAq3dsuW23GO' \
    --body '{"code": "wnz05JC8ibC1ipln", "language": "kGTJ-945", "region": "QtkBOMtwq8DbajI1"}' \
    > test.out 2>&1
eval_tap $? 282 'RedeemCode' test.out

#- 283 PreCheckFulfillItem
samples/cli/sample-apps Platform preCheckFulfillItem \
    --namespace $AB_NAMESPACE \
    --userId 'GrSp2QU6BfNlMlIU' \
    --body '{"itemId": "Mu3YeZKcBn3r7h9R", "itemSku": "qGFUzrXF2odqNmUM", "quantity": 27}' \
    > test.out 2>&1
eval_tap $? 283 'PreCheckFulfillItem' test.out

#- 284 FulfillRewards
samples/cli/sample-apps Platform fulfillRewards \
    --namespace $AB_NAMESPACE \
    --userId 'KDHTLfRzvTwzXNvv' \
    --body '{"entitlementCollectionId": "EytAl3Tg2JYiOZnI", "entitlementOrigin": "GooglePlay", "metadata": {"ay0U2pnbNFeUHyeE": {}, "rpFLqnyOZmFoNuOG": {}, "CWKrZp8YamIVVukv": {}}, "origin": "Playstation", "rewards": [{"currency": {"currencyCode": "QyuirNC14qOfD8Du", "namespace": "1bXWoE8gx7iQY92z"}, "item": {"itemId": "pb7s548B236n1wQG", "itemName": "MArx3VcoDuq2vSMX", "itemSku": "M3vJ6oI9ARNk9ke8", "itemType": "jQrIC6ghqvVREXLt"}, "quantity": 97, "type": "ITEM"}, {"currency": {"currencyCode": "fMCPmfk0kGTjfnKa", "namespace": "dEeGZeKBuG8RnxHd"}, "item": {"itemId": "4RfW38eZFu3mUgDV", "itemName": "EhQVFdIzhPaJsEj4", "itemSku": "C8mKNDKw1vKaBqPA", "itemType": "BmjSO0Z00let8M8J"}, "quantity": 61, "type": "ITEM"}, {"currency": {"currencyCode": "ofi8oBVPntDeyR2Q", "namespace": "gJa1yZPXy5neJGXb"}, "item": {"itemId": "4c38eBuqzvuhWQc3", "itemName": "tV8xJ6l8xE5n0Bwa", "itemSku": "Umps47Cp5Dh1F3qe", "itemType": "V3NVI96clamyfUd5"}, "quantity": 41, "type": "ITEM"}], "source": "PURCHASE", "transactionId": "j35Ad1RaTcl5P97M"}' \
    > test.out 2>&1
eval_tap $? 284 'FulfillRewards' test.out

#- 285 QueryUserIAPOrders
samples/cli/sample-apps Platform queryUserIAPOrders \
    --namespace $AB_NAMESPACE \
    --userId 'ReDnCuzp6RiCAzAZ' \
    --endTime 'UepSDcDFyJPbVUHN' \
    --limit '49' \
    --offset '67' \
    --productId 'VU9NMCjZgvcFNodd' \
    --startTime 'g6qKAmiRSQhYqC5w' \
    --status 'REVOKE_FAILED' \
    --type 'XBOX' \
    > test.out 2>&1
eval_tap $? 285 'QueryUserIAPOrders' test.out

#- 286 QueryAllUserIAPOrders
samples/cli/sample-apps Platform queryAllUserIAPOrders \
    --namespace $AB_NAMESPACE \
    --userId 'cu0OltlTZxp4pz3B' \
    > test.out 2>&1
eval_tap $? 286 'QueryAllUserIAPOrders' test.out

#- 287 QueryUserIAPConsumeHistory
samples/cli/sample-apps Platform queryUserIAPConsumeHistory \
    --namespace $AB_NAMESPACE \
    --userId 'd4Ko0D9gc5YA3jhq' \
    --endTime 'RME7oS4hFFHOoRHL' \
    --limit '69' \
    --offset '20' \
    --startTime '0ILLLFbyy0MSJohw' \
    --status 'FAIL' \
    --type 'XBOX' \
    > test.out 2>&1
eval_tap $? 287 'QueryUserIAPConsumeHistory' test.out

#- 288 MockFulfillIAPItem
samples/cli/sample-apps Platform mockFulfillIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'sPs3CMQ0btHv4Imb' \
    --body '{"itemIdentityType": "ITEM_SKU", "language": "SG", "productId": "d59MaMM3QUxwt6ZX", "region": "sG0XgC0mYI3m0VIc", "transactionId": "Hrmh3SLqmFC91qEx", "type": "EPICGAMES"}' \
    > test.out 2>&1
eval_tap $? 288 'MockFulfillIAPItem' test.out

#- 289 AdminGetIAPOrderLineItems
samples/cli/sample-apps Platform adminGetIAPOrderLineItems \
    --iapOrderNo 'WUknNiIMgxJBayNq' \
    --namespace $AB_NAMESPACE \
    --userId '4oVPJ4Vo82m3E894' \
    > test.out 2>&1
eval_tap $? 289 'AdminGetIAPOrderLineItems' test.out

#- 290 AdminSyncSteamAbnormalTransaction
samples/cli/sample-apps Platform adminSyncSteamAbnormalTransaction \
    --namespace $AB_NAMESPACE \
    --userId '8hFW5zlY8xPEURXt' \
    > test.out 2>&1
eval_tap $? 290 'AdminSyncSteamAbnormalTransaction' test.out

#- 291 AdminSyncSteamIAPByTransaction
samples/cli/sample-apps Platform adminSyncSteamIAPByTransaction \
    --namespace $AB_NAMESPACE \
    --userId 'KoHO3gKdhxe5yR9C' \
    --body '{"orderId": "2BsI1kMiuU3WNQ9L"}' \
    > test.out 2>&1
eval_tap $? 291 'AdminSyncSteamIAPByTransaction' test.out

#- 292 QueryUserThirdPartySubscription
samples/cli/sample-apps Platform queryUserThirdPartySubscription \
    --namespace $AB_NAMESPACE \
    --userId 'gl86mPfNKP4CD4Ou' \
    --activeOnly 'false' \
    --groupId '5jNxhxRoaWYnZvAw' \
    --limit '15' \
    --offset '21' \
    --platform 'GOOGLE' \
    --productId 'mCHBLf0iznd174Ba' \
    > test.out 2>&1
eval_tap $? 292 'QueryUserThirdPartySubscription' test.out

#- 293 GetThirdPartyPlatformSubscriptionOwnershipByGroupId
samples/cli/sample-apps Platform getThirdPartyPlatformSubscriptionOwnershipByGroupId \
    --namespace $AB_NAMESPACE \
    --platform 'STEAM' \
    --userId 'ENfSc3vIHib70N4e' \
    --groupId '5p79AfDFxAhGuz5F' \
    > test.out 2>&1
eval_tap $? 293 'GetThirdPartyPlatformSubscriptionOwnershipByGroupId' test.out

#- 294 GetThirdPartyPlatformSubscriptionOwnershipByProductId
samples/cli/sample-apps Platform getThirdPartyPlatformSubscriptionOwnershipByProductId \
    --namespace $AB_NAMESPACE \
    --platform 'PLAYSTATION' \
    --userId '9pEla6smfJ2KqQ9C' \
    --productId 'DmEW4AOJkUfxoE58' \
    > test.out 2>&1
eval_tap $? 294 'GetThirdPartyPlatformSubscriptionOwnershipByProductId' test.out

#- 295 QueryUserThirdPartySubscriptionTransactions
samples/cli/sample-apps Platform queryUserThirdPartySubscriptionTransactions \
    --namespace $AB_NAMESPACE \
    --userId 'mwvIHGZJheqq19f0' \
    --activeOnly 'false' \
    --groupId '0uZFVnue39iaJx8h' \
    --limit '81' \
    --offset '85' \
    --platform 'XBOX' \
    --productId '7UIPUmF3L8M2G5ch' \
    > test.out 2>&1
eval_tap $? 295 'QueryUserThirdPartySubscriptionTransactions' test.out

#- 296 GetThirdPartySubscriptionDetails
samples/cli/sample-apps Platform getThirdPartySubscriptionDetails \
    --id 'VeCvkLkstfhVGiX3' \
    --namespace $AB_NAMESPACE \
    --userId 'bWP5R8Vd1c3aNR78' \
    > test.out 2>&1
eval_tap $? 296 'GetThirdPartySubscriptionDetails' test.out

#- 297 GetSubscriptionHistory
samples/cli/sample-apps Platform getSubscriptionHistory \
    --id 'vE56e0z7LDDDYKCo' \
    --namespace $AB_NAMESPACE \
    --userId 'ND4aWkAZkRHz1N1g' \
    --limit '64' \
    --offset '96' \
    > test.out 2>&1
eval_tap $? 297 'GetSubscriptionHistory' test.out

#- 298 SyncSubscriptionTransaction
samples/cli/sample-apps Platform syncSubscriptionTransaction \
    --id 'eZyNp6ll6DgAnYnd' \
    --namespace $AB_NAMESPACE \
    --userId '5VrcugfkPXPdNAPe' \
    > test.out 2>&1
eval_tap $? 298 'SyncSubscriptionTransaction' test.out

#- 299 GetThirdPartyUserSubscriptionDetails
samples/cli/sample-apps Platform getThirdPartyUserSubscriptionDetails \
    --id 'jhNW62VLDzoXJ8K9' \
    --namespace $AB_NAMESPACE \
    --userId 'Go5gLva91HhWetZg' \
    > test.out 2>&1
eval_tap $? 299 'GetThirdPartyUserSubscriptionDetails' test.out

#- 300 SyncSubscription
samples/cli/sample-apps Platform syncSubscription \
    --id 'gTTqMSuLJIXlYAWp' \
    --namespace $AB_NAMESPACE \
    --userId 'DMhB9VvAHyrKMt0k' \
    > test.out 2>&1
eval_tap $? 300 'SyncSubscription' test.out

#- 301 QueryUserOrders
samples/cli/sample-apps Platform queryUserOrders \
    --namespace $AB_NAMESPACE \
    --userId 'XHrIqaRSsFjKZsKe' \
    --discounted 'true' \
    --itemId 'xYzSY59wrumfzWIE' \
    --limit '60' \
    --offset '13' \
    --status 'FULFILLED' \
    > test.out 2>&1
eval_tap $? 301 'QueryUserOrders' test.out

#- 302 AdminCreateUserOrder
samples/cli/sample-apps Platform adminCreateUserOrder \
    --namespace $AB_NAMESPACE \
    --userId 'sVI9F6mRmGm2WgA2' \
    --body '{"currencyCode": "zntd5QlTrwqRGnoF", "currencyNamespace": "bCxrpjNe1p7siWJK", "discountCodes": ["OZRC67woum4tfGoD", "RHDr3sPbYGkxdfZC", "WibvFMC2jSXf0W6r"], "discountedPrice": 95, "entitlementPlatform": "Steam", "ext": {"P8tZDpcIlOLwIpKd": {}, "aFAX9tmmSGxZjXdi": {}, "yfcDSDzpJXQZnHlM": {}}, "itemId": "4diNh3N1Y5gnofuC", "language": "HG5lUhm23dOHbn2n", "options": {"skipPriceValidation": false}, "platform": "Oculus", "price": 20, "quantity": 10, "region": "fqhQ7EAjJEhWKYjc", "returnUrl": "Wy7h7knv18a6gmJK", "sandbox": true, "sectionId": "wwcTraVb3DpXUVfU"}' \
    > test.out 2>&1
eval_tap $? 302 'AdminCreateUserOrder' test.out

#- 303 CountOfPurchasedItem
samples/cli/sample-apps Platform countOfPurchasedItem \
    --namespace $AB_NAMESPACE \
    --userId 'aeACsXYEb4B71BLL' \
    --itemId 'YonB39eV5FN80OhM' \
    > test.out 2>&1
eval_tap $? 303 'CountOfPurchasedItem' test.out

#- 304 GetUserOrder
samples/cli/sample-apps Platform getUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'ybauTrXEO1qtkC74' \
    --userId 'JETDzgR9owikg22K' \
    > test.out 2>&1
eval_tap $? 304 'GetUserOrder' test.out

#- 305 UpdateUserOrderStatus
samples/cli/sample-apps Platform updateUserOrderStatus \
    --namespace $AB_NAMESPACE \
    --orderNo 'pWH17oZs0RYmhJuP' \
    --userId 'ki07VUHRUKJ0gST6' \
    --body '{"status": "FULFILL_FAILED", "statusReason": "GzoU50WsdeztABpY"}' \
    > test.out 2>&1
eval_tap $? 305 'UpdateUserOrderStatus' test.out

#- 306 FulfillUserOrder
samples/cli/sample-apps Platform fulfillUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'BuVcFQKKcQ99VHaY' \
    --userId 'Mp3ybOG57HU8ESwU' \
    > test.out 2>&1
eval_tap $? 306 'FulfillUserOrder' test.out

#- 307 GetUserOrderGrant
eval_tap 0 307 'GetUserOrderGrant # SKIP deprecated' test.out

#- 308 GetUserOrderHistories
samples/cli/sample-apps Platform getUserOrderHistories \
    --namespace $AB_NAMESPACE \
    --orderNo 'hJ4b85cHLlWn2FET' \
    --userId 'nOoEfLPwayY4sNhU' \
    > test.out 2>&1
eval_tap $? 308 'GetUserOrderHistories' test.out

#- 309 ProcessUserOrderNotification
samples/cli/sample-apps Platform processUserOrderNotification \
    --namespace $AB_NAMESPACE \
    --orderNo 'luBqbbWWMOvia3Ef' \
    --userId 'E91xM2tRayhY40WL' \
    --body '{"additionalData": {"cardSummary": "0U7Ig2hy2NGvz0NV"}, "authorisedTime": "1998-10-20T00:00:00Z", "chargebackReversedTime": "1998-10-06T00:00:00Z", "chargebackTime": "1977-12-29T00:00:00Z", "chargedTime": "1977-01-16T00:00:00Z", "createdTime": "1975-12-25T00:00:00Z", "currency": {"currencyCode": "x5BjhD04d5G9tjNX", "currencySymbol": "Phu3gzHrq9mXTL7D", "currencyType": "VIRTUAL", "decimals": 66, "namespace": "Hq59HJJ8Ca5XlV0H"}, "customParameters": {"xl8B5EJeLyUj83I4": {}, "NvfN4dJINvy10uuE": {}, "nkFIBIXxxHCEYO1a": {}}, "extOrderNo": "HcpX1hkx5BkV1t6u", "extTxId": "B8XANGwDHGpbE7E4", "extUserId": "wp0dYrGyHaPNOfbM", "issuedAt": "1973-09-24T00:00:00Z", "metadata": {"nrLbx7zObmEcPqdw": "85DOuol8cOhGgXcc", "lAxzgXEHnpmYC0pT": "jtQ7gRllGZhSncit", "QydwHWMqC84lxHIh": "IQZBHKv4ilyeAVQU"}, "namespace": "K6LCpLljc1LxHEZp", "nonceStr": "vdN7Ryziq1pSXkdK", "paymentData": {"discountAmount": 29, "discountCode": "YNskJPxtImU27Zak", "subtotalPrice": 48, "tax": 4, "totalPrice": 80}, "paymentMethod": "dGBQqnTj9ei6OQ9f", "paymentMethodFee": 97, "paymentOrderNo": "BiU1kzuRy351A15Q", "paymentProvider": "PAYPAL", "paymentProviderFee": 18, "paymentStationUrl": "ngbgzvZff2wZSyKI", "price": 43, "refundedTime": "1972-02-26T00:00:00Z", "salesTax": 12, "sandbox": true, "sku": "9YTYxoeYpTjBBqTe", "status": "NOTIFICATION_OF_CHARGEBACK", "statusReason": "DhjP6irDpZhiBwZx", "subscriptionId": "aKCpGsRkUZBOp5gf", "subtotalPrice": 38, "targetNamespace": "KKQOJTsF25hSz1CH", "targetUserId": "1Tsf3xKkOzszuqv4", "tax": 98, "totalPrice": 28, "totalTax": 81, "txEndTime": "1973-05-28T00:00:00Z", "type": "pVyZiDMQ2mxzB2L8", "userId": "J7q7SK0AzbYj8Ja9", "vat": 95}' \
    > test.out 2>&1
eval_tap $? 309 'ProcessUserOrderNotification' test.out

#- 310 DownloadUserOrderReceipt
samples/cli/sample-apps Platform downloadUserOrderReceipt \
    --namespace $AB_NAMESPACE \
    --orderNo 'zBVbEVuLl9krlIeo' \
    --userId 'vuho1N88zKk1YNzm' \
    > test.out 2>&1
eval_tap $? 310 'DownloadUserOrderReceipt' test.out

#- 311 CreateUserPaymentOrder
samples/cli/sample-apps Platform createUserPaymentOrder \
    --namespace $AB_NAMESPACE \
    --userId '0smkfrnmEQYalhUh' \
    --body '{"currencyCode": "hZxtIA4pSKYAXLtE", "currencyNamespace": "E8P1WbIWI6iKsvOt", "customParameters": {"cPm9sRLoft0gR8ek": {}, "5dkYURGGOgKrZesh": {}, "vDbZMyXC0bxMd7WC": {}}, "description": "Kmjn1IagtiWg7Dlq", "extOrderNo": "wpD5z8cnKLgaLAw0", "extUserId": "YfGX7SqaTvPK5WOM", "itemType": "LOOTBOX", "language": "ZFRC-nK", "metadata": {"ehmQvUzQyyBjfTZe": "hXzrhyJwxM1J847I", "hjzmeRclvuzWeqW3": "PRwA0d2mtqOepyZR", "qDyNcYPBc0p2v0A4": "xzJuXKop1A9cosok"}, "notifyUrl": "vSV2SQYNmZzXGqk2", "omitNotification": false, "platform": "OqCExlikBRyJKmJw", "price": 34, "recurringPaymentOrderNo": "g8wETVp4nOlNLfqA", "region": "1gIB1NEFymuEv8Tu", "returnUrl": "BNN5YpIVpjWijKTq", "sandbox": true, "sku": "3dXoGyOh6ZWGIEQb", "subscriptionId": "No73tasKYkVJlzG5", "title": "ZB6beQIm7t3YSwAl"}' \
    > test.out 2>&1
eval_tap $? 311 'CreateUserPaymentOrder' test.out

#- 312 RefundUserPaymentOrder
samples/cli/sample-apps Platform refundUserPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'uo01qZmYv61xqnSR' \
    --userId 'gUvro99KiaffKSNO' \
    --body '{"description": "t64HbBX82pUaQ1Yg"}' \
    > test.out 2>&1
eval_tap $? 312 'RefundUserPaymentOrder' test.out

#- 313 GetUserPlatformAccountClosureHistories
samples/cli/sample-apps Platform getUserPlatformAccountClosureHistories \
    --namespace $AB_NAMESPACE \
    --userId 'OCPnh5BKQ8qBwjM1' \
    > test.out 2>&1
eval_tap $? 313 'GetUserPlatformAccountClosureHistories' test.out

#- 314 ApplyUserRedemption
samples/cli/sample-apps Platform applyUserRedemption \
    --namespace $AB_NAMESPACE \
    --userId 'ggE5PCgdg8zGU1QN' \
    --body '{"code": "9wWE2gOV6tWTOPqG", "orderNo": "kI8A28oyA8xnn4Xt"}' \
    > test.out 2>&1
eval_tap $? 314 'ApplyUserRedemption' test.out

#- 315 DoRevocation
samples/cli/sample-apps Platform doRevocation \
    --namespace $AB_NAMESPACE \
    --userId 'JlD9mvAdFaA4bTO0' \
    --body '{"meta": {"570S7XIOJLLHBopd": {}, "BZzMite4S3ZbCYzW": {}, "FdbT7s136B1engkb": {}}, "reason": "AWQlNCSiE5nRNYPw", "requestId": "ViR6DqOSfRaturWi", "revokeEntries": [{"currency": {"balanceOrigin": "Oculus", "currencyCode": "vPq80UhhrZtWMJba", "namespace": "B4LdJAP5LeyHMWS9"}, "entitlement": {"entitlementId": "ipNiJKjNmeJatp1V"}, "item": {"entitlementOrigin": "Oculus", "itemIdentity": "nuz6qCV5qUamzzJt", "itemIdentityType": "ITEM_SKU", "origin": "Playstation"}, "quantity": 78, "type": "ENTITLEMENT"}, {"currency": {"balanceOrigin": "Epic", "currencyCode": "voI8rZtf5tqMwfi5", "namespace": "ghprRaFTIEufK72Z"}, "entitlement": {"entitlementId": "JrHHPOfjlT1Xixlt"}, "item": {"entitlementOrigin": "Xbox", "itemIdentity": "ZSecJGUFt5rOxM7L", "itemIdentityType": "ITEM_SKU", "origin": "Oculus"}, "quantity": 86, "type": "ITEM"}, {"currency": {"balanceOrigin": "Twitch", "currencyCode": "CmF4htzMfPdxSMhD", "namespace": "TbinmnDS9iqK31Sg"}, "entitlement": {"entitlementId": "ROI8IeMc9GeKISqP"}, "item": {"entitlementOrigin": "Twitch", "itemIdentity": "JcV6LGj4MCsfuWfX", "itemIdentityType": "ITEM_SKU", "origin": "System"}, "quantity": 48, "type": "ENTITLEMENT"}], "source": "OTHER", "transactionId": "sQo0zUlVj8bLZc3N"}' \
    > test.out 2>&1
eval_tap $? 315 'DoRevocation' test.out

#- 316 RegisterXblSessions
samples/cli/sample-apps Platform registerXblSessions \
    --namespace $AB_NAMESPACE \
    --userId 'yUaDsx6aX5FT0XQz' \
    --body '{"gameSessionId": "oPEm7ZLSa2KsTVzH", "payload": {"bEbcXLIMMTCk8PtC": {}, "wuThAHflAnj3WhGE": {}, "5TCApwyKuFi7Xy23": {}}, "scid": "wz1pLYDRNdvZgY7e", "sessionTemplateName": "P6Ol9ZzMNoOzXm3S"}' \
    > test.out 2>&1
eval_tap $? 316 'RegisterXblSessions' test.out

#- 317 QueryUserSubscriptions
samples/cli/sample-apps Platform queryUserSubscriptions \
    --namespace $AB_NAMESPACE \
    --userId 'tLDSggzxHGhUSXEv' \
    --chargeStatus 'SETUP' \
    --itemId 'vKF793yxOlLyis3T' \
    --limit '100' \
    --offset '61' \
    --sku 'cBR48TF7ehrRGsxg' \
    --status 'INIT' \
    --subscribedBy 'PLATFORM' \
    > test.out 2>&1
eval_tap $? 317 'QueryUserSubscriptions' test.out

#- 318 GetUserSubscriptionActivities
samples/cli/sample-apps Platform getUserSubscriptionActivities \
    --namespace $AB_NAMESPACE \
    --userId 'E92HqFlKoAFJlImI' \
    --excludeSystem 'true' \
    --limit '19' \
    --offset '40' \
    --subscriptionId 'ncF1QhadAy4OcXll' \
    > test.out 2>&1
eval_tap $? 318 'GetUserSubscriptionActivities' test.out

#- 319 PlatformSubscribeSubscription
samples/cli/sample-apps Platform platformSubscribeSubscription \
    --namespace $AB_NAMESPACE \
    --userId 'wXRzGWKTIFGk64rp' \
    --body '{"grantDays": 8, "itemId": "IIeHCc6U8YaCtIO9", "language": "ffb9qs3X5haTfvSN", "reason": "ZKRFoQg0cZ3hxJDc", "region": "ulLMjDYqFt3rCwVz", "source": "J31IoaGjP7PMSWfT"}' \
    > test.out 2>&1
eval_tap $? 319 'PlatformSubscribeSubscription' test.out

#- 320 CheckUserSubscriptionSubscribableByItemId
samples/cli/sample-apps Platform checkUserSubscriptionSubscribableByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'detlJLwTItzOpy7t' \
    --itemId 'R3e1IGesa7lQauNp' \
    > test.out 2>&1
eval_tap $? 320 'CheckUserSubscriptionSubscribableByItemId' test.out

#- 321 GetUserSubscription
samples/cli/sample-apps Platform getUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'AfRPx6QNRVLIdvbm' \
    --userId 'mJRNRi25pTPueriI' \
    > test.out 2>&1
eval_tap $? 321 'GetUserSubscription' test.out

#- 322 DeleteUserSubscription
samples/cli/sample-apps Platform deleteUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId '2LAYo1JTug6YU4FF' \
    --userId 'UUeiMeXm9KiuSoT1' \
    > test.out 2>&1
eval_tap $? 322 'DeleteUserSubscription' test.out

#- 323 CancelSubscription
samples/cli/sample-apps Platform cancelSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'OHj2aAkAeyAPfyvL' \
    --userId 'YhebiRnbkTZ5SZMn' \
    --force 'true' \
    --body '{"immediate": false, "reason": "cBg6qyvTLV1YXUPp"}' \
    > test.out 2>&1
eval_tap $? 323 'CancelSubscription' test.out

#- 324 GrantDaysToSubscription
samples/cli/sample-apps Platform grantDaysToSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'cVfWfSdP3W0YdoQW' \
    --userId 'p49HqADyKoW5X2Xe' \
    --body '{"grantDays": 65, "reason": "hUiTr7gzUIDrlh1A"}' \
    > test.out 2>&1
eval_tap $? 324 'GrantDaysToSubscription' test.out

#- 325 GetUserSubscriptionBillingHistories
samples/cli/sample-apps Platform getUserSubscriptionBillingHistories \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'IbhLBUQICEA4KXI9' \
    --userId 'COQsgG5cL36lqJe2' \
    --excludeFree 'true' \
    --limit '41' \
    --offset '75' \
    > test.out 2>&1
eval_tap $? 325 'GetUserSubscriptionBillingHistories' test.out

#- 326 ProcessUserSubscriptionNotification
samples/cli/sample-apps Platform processUserSubscriptionNotification \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'eAP3v2dVgwArZByt' \
    --userId 'aU35kkcY5kSYltgN' \
    --body '{"additionalData": {"cardSummary": "Lz21qtWmtlxfuyf3"}, "authorisedTime": "1989-03-26T00:00:00Z", "chargebackReversedTime": "1981-04-13T00:00:00Z", "chargebackTime": "1994-05-20T00:00:00Z", "chargedTime": "1993-06-09T00:00:00Z", "createdTime": "1972-08-16T00:00:00Z", "currency": {"currencyCode": "liSXYRnjJ44UdL6R", "currencySymbol": "FjAXzYzq4zKNBR7Q", "currencyType": "REAL", "decimals": 95, "namespace": "SnYDwEi1N6TSztW0"}, "customParameters": {"nUmUpVZIls7aGq7V": {}, "s6o79wSXm3JHyxVV": {}, "DsogHBFWXqZnV6Li": {}}, "extOrderNo": "Ruci0rNSYzdp7bXp", "extTxId": "P8FjDjxLkGUs8AsS", "extUserId": "0N0s3JNvZ8S0Niwp", "issuedAt": "1998-03-28T00:00:00Z", "metadata": {"M8TZSwURxHG5m6wk": "1nREdJGXGDgr0kDC", "fGJCYj4NIqt25Ftm": "khGLqt8gcs9OiusE", "pTrqTFjUZO5D5VPw": "OqDKIuFOPleTJkKj"}, "namespace": "A6wqcHemxMlk9RJo", "nonceStr": "mh1Fohe28iP9YKiR", "paymentData": {"discountAmount": 90, "discountCode": "UQDIp54bT52mZtdY", "subtotalPrice": 75, "tax": 85, "totalPrice": 38}, "paymentMethod": "pGOiMX244CWV5i1i", "paymentMethodFee": 69, "paymentOrderNo": "I7jgnATlac8TXhvf", "paymentProvider": "ALIPAY", "paymentProviderFee": 87, "paymentStationUrl": "eKs8KXEInVdAGsKq", "price": 11, "refundedTime": "1993-01-31T00:00:00Z", "salesTax": 97, "sandbox": false, "sku": "H83OXxQZEoZU9h9N", "status": "REFUNDING", "statusReason": "3cYBU590Qsjey1V0", "subscriptionId": "C3pa77Bk97HD5XTw", "subtotalPrice": 27, "targetNamespace": "u2L1cybHV9wPx2Df", "targetUserId": "APhNWyeJlyMMCQQ7", "tax": 87, "totalPrice": 41, "totalTax": 3, "txEndTime": "1971-02-09T00:00:00Z", "type": "dZdCE0QyNjAF6AOn", "userId": "A3IlXym2jQ9UyS9p", "vat": 36}' \
    > test.out 2>&1
eval_tap $? 326 'ProcessUserSubscriptionNotification' test.out

#- 327 AcquireUserTicket
samples/cli/sample-apps Platform acquireUserTicket \
    --boothName 'cl3g4rw0BT2CRkbS' \
    --namespace $AB_NAMESPACE \
    --userId 'T6Ygdcv7oIGzJQCH' \
    --body '{"count": 75, "orderNo": "HYH8gr3302tvmoHM"}' \
    > test.out 2>&1
eval_tap $? 327 'AcquireUserTicket' test.out

#- 328 QueryUserCurrencyWallets
samples/cli/sample-apps Platform queryUserCurrencyWallets \
    --namespace $AB_NAMESPACE \
    --userId 'JOObNBZX8l8eZnCR' \
    > test.out 2>&1
eval_tap $? 328 'QueryUserCurrencyWallets' test.out

#- 329 DebitUserWalletByCurrencyCode
samples/cli/sample-apps Platform debitUserWalletByCurrencyCode \
    --currencyCode 'eNZQg2XzUAKEudai' \
    --namespace $AB_NAMESPACE \
    --userId 'R8gO2uJNgaLcQooI' \
    --body '{"allowOverdraft": true, "amount": 74, "balanceOrigin": "Playstation", "balanceSource": "OTHER", "metadata": {"JYjLjSJPgqNGfVZO": {}, "xbjBp6zxswZRgIP6": {}, "4aacG40cfnj9m390": {}}, "reason": "uoGH4qQauF5G4oiy"}' \
    > test.out 2>&1
eval_tap $? 329 'DebitUserWalletByCurrencyCode' test.out

#- 330 ListUserCurrencyTransactions
samples/cli/sample-apps Platform listUserCurrencyTransactions \
    --currencyCode 'niJ4BrFilqnPoj8q' \
    --namespace $AB_NAMESPACE \
    --userId 'Da6qwKbwG0wJvByu' \
    --limit '75' \
    --offset '21' \
    > test.out 2>&1
eval_tap $? 330 'ListUserCurrencyTransactions' test.out

#- 331 CheckBalance
samples/cli/sample-apps Platform checkBalance \
    --currencyCode 'TZ59SOb1tCP44KV1' \
    --namespace $AB_NAMESPACE \
    --userId 'MVXvibq5581pcgfF' \
    --request '{"amount": 85, "debitBalanceSource": "PAYMENT", "metadata": {"XbzaWq5baqGMp7wb": {}, "SpNLdkI6S62tqWZj": {}, "HpYzdKvu3bCwUWmA": {}}, "reason": "0SIoyIz4xm28mvGQ", "walletPlatform": "Epic"}' \
    > test.out 2>&1
eval_tap $? 331 'CheckBalance' test.out

#- 332 CheckWallet
eval_tap 0 332 'CheckWallet # SKIP deprecated' test.out

#- 333 CreditUserWallet
samples/cli/sample-apps Platform creditUserWallet \
    --currencyCode 'P7zsoJjB5mWYevKd' \
    --namespace $AB_NAMESPACE \
    --userId 'lJhRJPDOD3rOEnqm' \
    --body '{"amount": 47, "expireAt": "1996-01-17T00:00:00Z", "metadata": {"dT4DostDyYpJrR1r": {}, "TWEzRRutFj3s6tAc": {}, "M9956oVvx0tTnMUd": {}}, "origin": "Steam", "reason": "AWfObydPhZxuTkYY", "source": "CONSUME_ENTITLEMENT"}' \
    > test.out 2>&1
eval_tap $? 333 'CreditUserWallet' test.out

#- 334 DebitByWalletPlatform
samples/cli/sample-apps Platform debitByWalletPlatform \
    --currencyCode 'VBH7dDxM50kN4zsP' \
    --namespace $AB_NAMESPACE \
    --userId 'y158IqMZ4MyJpiSp' \
    --request '{"amount": 15, "debitBalanceSource": "ORDER_REVOCATION", "metadata": {"rOOP1pwO4P3nVjwO": {}, "OtjbIrtqztQFPeQb": {}, "pFORyEi1u8HgopJk": {}}, "reason": "SCi8ft2iRORCHWK1", "walletPlatform": "Nintendo"}' \
    > test.out 2>&1
eval_tap $? 334 'DebitByWalletPlatform' test.out

#- 335 PayWithUserWallet
samples/cli/sample-apps Platform payWithUserWallet \
    --currencyCode 'Ra4caFim6cIXdfaN' \
    --namespace $AB_NAMESPACE \
    --userId 'OfsHpUUrSP35VB6J' \
    --body '{"amount": 0, "metadata": {"0jg1lU8IWknLOzQ7": {}, "oPF5uLlJh62Jlt4A": {}, "QIUwba8KT9AtbGty": {}}, "walletPlatform": "IOS"}' \
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
    --storeId 'rl9zvvxVwtwxKOhE' \
    > test.out 2>&1
eval_tap $? 341 'ListViews' test.out

#- 342 CreateView
samples/cli/sample-apps Platform createView \
    --namespace $AB_NAMESPACE \
    --storeId 'bWN559nzxhpRCwrg' \
    --body '{"displayOrder": 66, "localizations": {"mLFXg4eP8nmKR0sU": {"description": "cjF1uqvRmOzDhgon", "localExt": {"PNW0u0Uh4KcbLYKw": {}, "S84QqK1OrGVTAdz4": {}, "DQKvYATtYjSbeieW": {}}, "longDescription": "Xrt2Fx2IKfskjzqL", "title": "dGdtsHZjQcCeIM4C"}, "lWz8LfdCEZq6ZgZN": {"description": "ZjRByEUsLMK6KE9Q", "localExt": {"NMN35hRR6DG4nIST": {}, "jNZNjNHQBBuxRzHo": {}, "BAQ05eCGc4eI7E2O": {}}, "longDescription": "Kz0c00BjPzhxyTNh", "title": "V4AlpH234dMupMeu"}, "Un7ad1dzddMzA7iY": {"description": "2thuDz4Zg23fQY9C", "localExt": {"EDd0qzAFL2wKUkAS": {}, "KdtZaIjlx4nTvtbc": {}, "f6ax3ua3aWM8P6sd": {}}, "longDescription": "OXKVutwJSVSlXuDX", "title": "i4vNqBlJuTBBNyVr"}}, "name": "ozfXYnwSLOl5FSuW"}' \
    > test.out 2>&1
eval_tap $? 342 'CreateView' test.out

#- 343 GetView
samples/cli/sample-apps Platform getView \
    --namespace $AB_NAMESPACE \
    --viewId 'JcJaoMUEePr8d6JG' \
    --storeId 'Mxy8M3UpDAR8AJSF' \
    > test.out 2>&1
eval_tap $? 343 'GetView' test.out

#- 344 UpdateView
samples/cli/sample-apps Platform updateView \
    --namespace $AB_NAMESPACE \
    --viewId '0cw49PyJFKq5Kn3g' \
    --storeId 'SZPju0fzHgYInbmI' \
    --body '{"displayOrder": 94, "localizations": {"rmudLocMkxBopCMK": {"description": "cfMwsebSbmOpNgc9", "localExt": {"JSVPfdynmvoGmyEi": {}, "tFz3iNHIqlroNxis": {}, "E3fkhZU6sHpFnl0H": {}}, "longDescription": "n6qgheOVaa091xDx", "title": "6wVWnUsOfIqHWDED"}, "lF3HwgiOdIfhNIeP": {"description": "7DVM1X0Ph3Et5eIv", "localExt": {"jMDab1GHjYC3k083": {}, "G1KYiS1j9eoeDzRt": {}, "h9y2aubT7eCmeZMI": {}}, "longDescription": "yfyDbhImoWmCygWw", "title": "qyBHG5JvpCXCLUQK"}, "kTm74lXkrU1hJLOw": {"description": "zcjp6Iyi8F4i2jE1", "localExt": {"LbfFKY8x6eP35eIe": {}, "UvPWRRfd6R8EAiTo": {}, "34iZ2BBWK1QX9cS6": {}}, "longDescription": "SYQWeGoEH2lk3oek", "title": "TC7aUmzTwiDCkgQw"}}, "name": "HCMRQB5QGebyPv3o"}' \
    > test.out 2>&1
eval_tap $? 344 'UpdateView' test.out

#- 345 DeleteView
samples/cli/sample-apps Platform deleteView \
    --namespace $AB_NAMESPACE \
    --viewId 'V5VJvOUeJbftylZl' \
    --storeId 'S7zead1VaR1EyJto' \
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
    --body '{"enablePaidForVCExpiration": false}' \
    > test.out 2>&1
eval_tap $? 347 'UpdateWalletConfig' test.out

#- 348 QueryWallets
eval_tap 0 348 'QueryWallets # SKIP deprecated' test.out

#- 349 BulkCredit
samples/cli/sample-apps Platform bulkCredit \
    --namespace $AB_NAMESPACE \
    --body '[{"creditRequest": {"amount": 17, "expireAt": "1989-01-21T00:00:00Z", "metadata": {"xSk9QCrUjSdS0CMV": {}, "KSJewqnQ8IJiCUNl": {}, "2MDVyT41b4lOqslG": {}}, "origin": "Other", "reason": "2C0BKLpbc62SKkHo", "source": "OTHER"}, "currencyCode": "W3mKJZ3XkvJaQZhO", "userIds": ["aXSILIamiceEu2mJ", "2JF5PAUHjiP9geXk", "cPTJhIifycpm9bYa"]}, {"creditRequest": {"amount": 74, "expireAt": "1976-12-31T00:00:00Z", "metadata": {"h2UMuqMkOP9WKVrY": {}, "f9SSJbjaC4zWC4Ft": {}, "Z0AZ1j6j9fwwrEKa": {}}, "origin": "Oculus", "reason": "Zyi7NoLuRo9OO5O0", "source": "REFERRAL_BONUS"}, "currencyCode": "7Nbq3xUIaxhOZVc4", "userIds": ["epcaVDxzEyj7FLDQ", "uWM1wNadvcl6RSqn", "tJD4imrMx0RTrdPL"]}, {"creditRequest": {"amount": 59, "expireAt": "1982-11-06T00:00:00Z", "metadata": {"619VDTZgwutZHrxJ": {}, "q6jWXGiA4yTK0ZBa": {}, "bPey4Wrhf4AtmwB5": {}}, "origin": "Playstation", "reason": "5qWd0eFpXEbHyoNk", "source": "OTHER"}, "currencyCode": "faxvTt4Nt5K1JK6O", "userIds": ["2mRZifylvLEQMLHa", "ATNk5kKYQqCgp2ku", "ubG2nGeUXmU3NGKe"]}]' \
    > test.out 2>&1
eval_tap $? 349 'BulkCredit' test.out

#- 350 BulkDebit
samples/cli/sample-apps Platform bulkDebit \
    --namespace $AB_NAMESPACE \
    --body '[{"currencyCode": "y6c1tE3xrgfKsppx", "request": {"allowOverdraft": false, "amount": 65, "balanceOrigin": "Oculus", "balanceSource": "TRADE", "metadata": {"7hud80pjIiBPjgfA": {}, "83SBga0XFRa5B9b1": {}, "JCfHiQAguDBz1bqP": {}}, "reason": "p8hZDhP3cj56FiUt"}, "userIds": ["8KO3lp7KPrBPZ3ts", "sxqrXXRWAxNaA81P", "Pn5mTa6bsNbVTqA2"]}, {"currencyCode": "x0J4RqVRzmS2TDcg", "request": {"allowOverdraft": true, "amount": 85, "balanceOrigin": "Oculus", "balanceSource": "EXPIRATION", "metadata": {"CmGUgwemLlY1PRPW": {}, "H88HUXnHfPbP6jG4": {}, "4KYZS5OKNDIcuQ7v": {}}, "reason": "D2sJsHAkVcA4XBBU"}, "userIds": ["uYjVsTATTzeGqSyI", "gnya2zCmK0Jeznqk", "buOr9BaiG0seqGFp"]}, {"currencyCode": "5QcJSWxTGB6mCLgw", "request": {"allowOverdraft": false, "amount": 89, "balanceOrigin": "GooglePlay", "balanceSource": "IAP_REVOCATION", "metadata": {"wH54bOm9wFx80jby": {}, "LuMkIEJBxDct8FsE": {}, "zNyRChsMtC0gOUlI": {}}, "reason": "nnsk5yTvwYQH7P83"}, "userIds": ["CbpYlnHU3ptbK7eP", "H3IOZkCJ3OecKetv", "zx83pCgUUUEfO4YR"]}]' \
    > test.out 2>&1
eval_tap $? 350 'BulkDebit' test.out

#- 351 GetWallet
eval_tap 0 351 'GetWallet # SKIP deprecated' test.out

#- 352 SyncOrders
samples/cli/sample-apps Platform syncOrders \
    --nextEvaluatedKey 'yc9nB8ARbEdG63fv' \
    --end 'TmDiGhZ0P26k8SD4' \
    --start 'Sw0dyA34MJrR3KJ7' \
    > test.out 2>&1
eval_tap $? 352 'SyncOrders' test.out

#- 353 TestAdyenConfig
samples/cli/sample-apps Platform testAdyenConfig \
    --sandbox 'false' \
    --body '{"allowedPaymentMethods": ["4hLQZy3tgVImTYmE", "5JYikXyo3LtbGfSP", "qODz6J9voIyZgrzK"], "apiKey": "5jqzCuUbNwI5o0YR", "authoriseAsCapture": true, "blockedPaymentMethods": ["GC8Oc3apnvsBeqYL", "FrgurVBU8pjMoaXs", "sRE6ExAWeuFGg96H"], "clientKey": "PLmuwJd624oudwp6", "dropInSettings": "xoEmr2f4M2hxSKA1", "liveEndpointUrlPrefix": "xrpiwUZ0yRZmVcxC", "merchantAccount": "r1eXhouaFwm3xcr5", "notificationHmacKey": "RWcSGMrfToMZD8hJ", "notificationPassword": "1XooN0H4NpuUHAfL", "notificationUsername": "oM4Iqs6dJlKnHGDp", "returnUrl": "3POxN4Hv3KPdKC9l", "settings": "ZHpFxPCdqyu4uAPx"}' \
    > test.out 2>&1
eval_tap $? 353 'TestAdyenConfig' test.out

#- 354 TestAliPayConfig
samples/cli/sample-apps Platform testAliPayConfig \
    --sandbox 'true' \
    --body '{"appId": "YeTPolBmwYV07J6H", "privateKey": "mF7LZprszc6s0P9i", "publicKey": "cTjjRwpD1XXyLUEV", "returnUrl": "sF2lzRZP4oWGU1Br"}' \
    > test.out 2>&1
eval_tap $? 354 'TestAliPayConfig' test.out

#- 355 TestCheckoutConfig
samples/cli/sample-apps Platform testCheckoutConfig \
    --sandbox 'true' \
    --body '{"publicKey": "anYvwy6qrf6k2cbh", "secretKey": "ixCzETcQR00DkHk7"}' \
    > test.out 2>&1
eval_tap $? 355 'TestCheckoutConfig' test.out

#- 356 DebugMatchedPaymentMerchantConfig
samples/cli/sample-apps Platform debugMatchedPaymentMerchantConfig \
    --namespace 'z7IAhUomtQ9WWSII' \
    --region 'Q57qcHQRvQ0MS9It' \
    > test.out 2>&1
eval_tap $? 356 'DebugMatchedPaymentMerchantConfig' test.out

#- 357 TestNeonPayConfig
samples/cli/sample-apps Platform testNeonPayConfig \
    --sandbox 'true' \
    --body '{"apiKey": "yWayhWbW25cTWOv5", "webhookSecretKey": "GjwhtvnFSubzBUz5"}' \
    > test.out 2>&1
eval_tap $? 357 'TestNeonPayConfig' test.out

#- 358 TestPayPalConfig
samples/cli/sample-apps Platform testPayPalConfig \
    --sandbox 'true' \
    --body '{"clientID": "f87J3XonFduondbV", "clientSecret": "iygQ752xURo2XNA7", "returnUrl": "Eqnylznm4PEYtnYl", "webHookId": "MJub1aqEFVpmBTwH"}' \
    > test.out 2>&1
eval_tap $? 358 'TestPayPalConfig' test.out

#- 359 TestStripeConfig
samples/cli/sample-apps Platform testStripeConfig \
    --sandbox 'true' \
    --body '{"allowedPaymentMethodTypes": ["wdlzj81oS1oCnWH4", "jmaq8r7VHlPmOXep", "IwX1nu6PCesV5TJa"], "publishableKey": "ceDXmrpVAIm7MHQ9", "secretKey": "I312FBesN8RMuELr", "webhookSecret": "QDbC2Zn5E3Rn0ZLl"}' \
    > test.out 2>&1
eval_tap $? 359 'TestStripeConfig' test.out

#- 360 TestWxPayConfig
samples/cli/sample-apps Platform testWxPayConfig \
    --body '{"appId": "al84C2tWDAoaDU2c", "key": "XU7ga64CazIiAlCB", "mchid": "BjPn1NwuJtWExZOy", "returnUrl": "BfjfroJISuNUv9mw"}' \
    > test.out 2>&1
eval_tap $? 360 'TestWxPayConfig' test.out

#- 361 TestXsollaConfig
samples/cli/sample-apps Platform testXsollaConfig \
    --body '{"apiKey": "bNyFGGSd9zkIcD9v", "flowCompletionUrl": "KQVGqbJG13hE91sm", "merchantId": 23, "projectId": 7, "projectSecretKey": "qrm1sYXkHczu35GY"}' \
    > test.out 2>&1
eval_tap $? 361 'TestXsollaConfig' test.out

#- 362 GetPaymentMerchantConfig1
samples/cli/sample-apps Platform getPaymentMerchantConfig1 \
    --id 'SwVKFxkChZdR4T8F' \
    > test.out 2>&1
eval_tap $? 362 'GetPaymentMerchantConfig1' test.out

#- 363 UpdateAdyenConfig
samples/cli/sample-apps Platform updateAdyenConfig \
    --id 'U2pZ5uBCLGppzAhV' \
    --sandbox 'true' \
    --validate 'false' \
    --body '{"allowedPaymentMethods": ["qphQ1W3r4DYPrdGg", "l6XtfUuOxJmnNLd2", "voliAXK7aSB8uXJz"], "apiKey": "18eVwmfNrXfYuob4", "authoriseAsCapture": false, "blockedPaymentMethods": ["86YqXyDOTc56RYKp", "cej516ovx42m7Pn0", "80931yI0sEoEj7Mc"], "clientKey": "NvzMwXeCwmHPxSAn", "dropInSettings": "srtUzlGdFnDKHfXJ", "liveEndpointUrlPrefix": "p4N2eOXXPN4FUT9c", "merchantAccount": "C6ikW3jLNMjkkKQS", "notificationHmacKey": "6fCXWooFbDM3pAzQ", "notificationPassword": "T6uCTrXfnu4lWx5U", "notificationUsername": "X11WH6b87p8GMBm5", "returnUrl": "Fj6ThkaIwyLe0zfN", "settings": "7mGYQ8LhHxuSGZLA"}' \
    > test.out 2>&1
eval_tap $? 363 'UpdateAdyenConfig' test.out

#- 364 TestAdyenConfigById
samples/cli/sample-apps Platform testAdyenConfigById \
    --id 'esoEke2HwNN8QBYc' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 364 'TestAdyenConfigById' test.out

#- 365 UpdateAliPayConfig
samples/cli/sample-apps Platform updateAliPayConfig \
    --id 'z7ddL7Mjh5G54A1B' \
    --sandbox 'true' \
    --validate 'true' \
    --body '{"appId": "gOx0Jc0XO2trikQw", "privateKey": "kS0g8gDhrhCWekB1", "publicKey": "yMzu7i5sOcDax0XN", "returnUrl": "rIEaNlv7lzcMvFRM"}' \
    > test.out 2>&1
eval_tap $? 365 'UpdateAliPayConfig' test.out

#- 366 TestAliPayConfigById
samples/cli/sample-apps Platform testAliPayConfigById \
    --id 'UJ66KWakdKWxHBsx' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 366 'TestAliPayConfigById' test.out

#- 367 UpdateCheckoutConfig
samples/cli/sample-apps Platform updateCheckoutConfig \
    --id '8Rn9QtKNyeyaz5Mh' \
    --sandbox 'false' \
    --validate 'false' \
    --body '{"publicKey": "umyjHA8eiraFhZ1l", "secretKey": "r6beb4IqIzBk3gpA"}' \
    > test.out 2>&1
eval_tap $? 367 'UpdateCheckoutConfig' test.out

#- 368 TestCheckoutConfigById
samples/cli/sample-apps Platform testCheckoutConfigById \
    --id 'sQhVZznAQ0yqXERi' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 368 'TestCheckoutConfigById' test.out

#- 369 UpdateNeonPayConfig
samples/cli/sample-apps Platform updateNeonPayConfig \
    --id 'HavmZwfutKkqtVjm' \
    --sandbox 'false' \
    --validate 'true' \
    --body '{"apiKey": "OIUURRZU4FShiYuV", "webhookSecretKey": "ZyuufwlXRLXcQbGP"}' \
    > test.out 2>&1
eval_tap $? 369 'UpdateNeonPayConfig' test.out

#- 370 TestNeonPayConfigById
samples/cli/sample-apps Platform testNeonPayConfigById \
    --id 'FLFt9bYbOrhDUPVb' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 370 'TestNeonPayConfigById' test.out

#- 371 UpdatePayPalConfig
samples/cli/sample-apps Platform updatePayPalConfig \
    --id 'x8dIIu1ayBaAr9Rz' \
    --sandbox 'true' \
    --validate 'true' \
    --body '{"clientID": "0hzdGqLELiprQaIx", "clientSecret": "Z3Kfw1XADYN5e4XZ", "returnUrl": "i7VOF1xhrzKvBpmK", "webHookId": "qaPbqYow9DR7spgE"}' \
    > test.out 2>&1
eval_tap $? 371 'UpdatePayPalConfig' test.out

#- 372 TestPayPalConfigById
samples/cli/sample-apps Platform testPayPalConfigById \
    --id 'ri5m3NqFtWaDvEql' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 372 'TestPayPalConfigById' test.out

#- 373 UpdateStripeConfig
samples/cli/sample-apps Platform updateStripeConfig \
    --id 'HFXJrjSoOj401zxI' \
    --sandbox 'true' \
    --validate 'false' \
    --body '{"allowedPaymentMethodTypes": ["DGzgFcjckIMHxEs5", "OAbYE81Uwf3QW20V", "Rn5fRJdQxuecR5CX"], "publishableKey": "2UHLxGHS7Mf6wxBc", "secretKey": "CDUCFjBQ4rWdjFVB", "webhookSecret": "UBGBdA63weSvHbSm"}' \
    > test.out 2>&1
eval_tap $? 373 'UpdateStripeConfig' test.out

#- 374 TestStripeConfigById
samples/cli/sample-apps Platform testStripeConfigById \
    --id '8fNo28ebnlAw8hKw' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 374 'TestStripeConfigById' test.out

#- 375 UpdateWxPayConfig
samples/cli/sample-apps Platform updateWxPayConfig \
    --id 'XqDklOwcOajWfrse' \
    --validate 'true' \
    --body '{"appId": "cBlMEVdFw1mVNrKG", "key": "bIWu0yeLg1qDcfSQ", "mchid": "TOmzNiUdDGkv3nii", "returnUrl": "ZIkXER0G3TFnKGN9"}' \
    > test.out 2>&1
eval_tap $? 375 'UpdateWxPayConfig' test.out

#- 376 UpdateWxPayConfigCert
samples/cli/sample-apps Platform updateWxPayConfigCert \
    --id 'sXr7vN82DiqBtdth' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 376 'UpdateWxPayConfigCert' test.out

#- 377 TestWxPayConfigById
samples/cli/sample-apps Platform testWxPayConfigById \
    --id '0OtGvJMUVrVyhFkD' \
    > test.out 2>&1
eval_tap $? 377 'TestWxPayConfigById' test.out

#- 378 UpdateXsollaConfig
samples/cli/sample-apps Platform updateXsollaConfig \
    --id '2uTzOcnVKe3kTcdp' \
    --validate 'false' \
    --body '{"apiKey": "Vf9fpFwbuWgzaHA3", "flowCompletionUrl": "a8kdKCJ9kOra7e2o", "merchantId": 92, "projectId": 29, "projectSecretKey": "P2zMqRkd3aaZ5par"}' \
    > test.out 2>&1
eval_tap $? 378 'UpdateXsollaConfig' test.out

#- 379 TestXsollaConfigById
samples/cli/sample-apps Platform testXsollaConfigById \
    --id 'ANvp304olNuJzjcJ' \
    > test.out 2>&1
eval_tap $? 379 'TestXsollaConfigById' test.out

#- 380 UpdateXsollaUIConfig
samples/cli/sample-apps Platform updateXsollaUIConfig \
    --id 'TViKrGEcuih4lJr4' \
    --body '{"device": "DESKTOP", "showCloseButton": false, "size": "MEDIUM", "theme": "DARK"}' \
    > test.out 2>&1
eval_tap $? 380 'UpdateXsollaUIConfig' test.out

#- 381 QueryPaymentProviderConfig
samples/cli/sample-apps Platform queryPaymentProviderConfig \
    --limit '0' \
    --namespace 'ETqrBveDlbajU1FV' \
    --offset '58' \
    --region 'MEPUKRJVGBAUAMJA' \
    > test.out 2>&1
eval_tap $? 381 'QueryPaymentProviderConfig' test.out

#- 382 CreatePaymentProviderConfig
samples/cli/sample-apps Platform createPaymentProviderConfig \
    --body '{"aggregate": "CHECKOUT", "namespace": "lqNEwJuOKCjnzmeE", "region": "wFC2dyOuWh8cyySF", "sandboxTaxJarApiToken": "LnSlUPwmh8fmKKXr", "specials": ["ALIPAY", "WXPAY", "PAYPAL"], "taxJarApiToken": "o5xyzOiR1ruCSvr2", "taxJarEnabled": true, "useGlobalTaxJarApiToken": true}' \
    > test.out 2>&1
eval_tap $? 382 'CreatePaymentProviderConfig' test.out

#- 383 GetAggregatePaymentProviders
samples/cli/sample-apps Platform getAggregatePaymentProviders \
    > test.out 2>&1
eval_tap $? 383 'GetAggregatePaymentProviders' test.out

#- 384 DebugMatchedPaymentProviderConfig
samples/cli/sample-apps Platform debugMatchedPaymentProviderConfig \
    --namespace '5tEJ8pHhageRB9XQ' \
    --region 'i9whQg5pd7dFAus2' \
    > test.out 2>&1
eval_tap $? 384 'DebugMatchedPaymentProviderConfig' test.out

#- 385 GetSpecialPaymentProviders
samples/cli/sample-apps Platform getSpecialPaymentProviders \
    > test.out 2>&1
eval_tap $? 385 'GetSpecialPaymentProviders' test.out

#- 386 UpdatePaymentProviderConfig
samples/cli/sample-apps Platform updatePaymentProviderConfig \
    --id 'xXS0eMwJtiqusU7B' \
    --body '{"aggregate": "ADYEN", "namespace": "Eg16f6ln4WlB4VfP", "region": "AxaZlvLqXfKfmVM8", "sandboxTaxJarApiToken": "usqPYlm7Phz7Y2QM", "specials": ["STRIPE", "NEONPAY", "STRIPE"], "taxJarApiToken": "Fo6bwbhulmdXnUER", "taxJarEnabled": true, "useGlobalTaxJarApiToken": true}' \
    > test.out 2>&1
eval_tap $? 386 'UpdatePaymentProviderConfig' test.out

#- 387 DeletePaymentProviderConfig
samples/cli/sample-apps Platform deletePaymentProviderConfig \
    --id 'qAwfuH3iXWYl1bIm' \
    > test.out 2>&1
eval_tap $? 387 'DeletePaymentProviderConfig' test.out

#- 388 GetPaymentTaxConfig
samples/cli/sample-apps Platform getPaymentTaxConfig \
    > test.out 2>&1
eval_tap $? 388 'GetPaymentTaxConfig' test.out

#- 389 UpdatePaymentTaxConfig
samples/cli/sample-apps Platform updatePaymentTaxConfig \
    --body '{"sandboxTaxJarApiToken": "d49Eifs5qpM7rNQk", "taxJarApiToken": "1bVhPvXsZQdCYoT1", "taxJarEnabled": false, "taxJarProductCodesMapping": {"Rrbcr2K2aG9tG2kq": "NyHoJIsnltVPy1Xu", "AK0Q0cnXj0e4qLVh": "jhVye7ThjxtJPCYQ", "2eFsHbQ6fhjqafXT": "TFuG5OiXdE7hcanW"}}' \
    > test.out 2>&1
eval_tap $? 389 'UpdatePaymentTaxConfig' test.out

#- 390 SyncPaymentOrders
samples/cli/sample-apps Platform syncPaymentOrders \
    --nextEvaluatedKey '50oVjF7fcUWH4Oxo' \
    --end 'Mq7WX21Qdm7edH1x' \
    --start 'z4NEUEmWifE4Nsun' \
    > test.out 2>&1
eval_tap $? 390 'SyncPaymentOrders' test.out

#- 391 PublicGetRootCategories
samples/cli/sample-apps Platform publicGetRootCategories \
    --namespace $AB_NAMESPACE \
    --language 'sSsF6Dnv4cTgZ1wZ' \
    --storeId 'UXGkeMH1C9E3CogM' \
    > test.out 2>&1
eval_tap $? 391 'PublicGetRootCategories' test.out

#- 392 DownloadCategories
samples/cli/sample-apps Platform downloadCategories \
    --namespace $AB_NAMESPACE \
    --language '9hLTtXbnQcHLBsHR' \
    --storeId 'OiB3xLodCkQlfHBF' \
    > test.out 2>&1
eval_tap $? 392 'DownloadCategories' test.out

#- 393 PublicGetCategory
samples/cli/sample-apps Platform publicGetCategory \
    --categoryPath 'iOAxLIHGDVNpAJZD' \
    --namespace $AB_NAMESPACE \
    --language 'AX46QGFFBXC8THOq' \
    --storeId 'Bu6ytMG0Mzbp5gx8' \
    > test.out 2>&1
eval_tap $? 393 'PublicGetCategory' test.out

#- 394 PublicGetChildCategories
samples/cli/sample-apps Platform publicGetChildCategories \
    --categoryPath 'IdewZykGtbZqWKTe' \
    --namespace $AB_NAMESPACE \
    --language 'yf4v5X6kbm0Vh025' \
    --storeId 'QIyyuKjJOsj4PxFk' \
    > test.out 2>&1
eval_tap $? 394 'PublicGetChildCategories' test.out

#- 395 PublicGetDescendantCategories
samples/cli/sample-apps Platform publicGetDescendantCategories \
    --categoryPath '4e9TvuOOb47h8vSK' \
    --namespace $AB_NAMESPACE \
    --language 'AiSZtrVQeC57GbTN' \
    --storeId 'qb4EshO5mY3GqUbx' \
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
    --dlcType 'EPICGAMES' \
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
    --platform 'XBOX' \
    > test.out 2>&1
eval_tap $? 399 'GetIAPItemMapping' test.out

#- 400 PublicGetItemByAppId
samples/cli/sample-apps Platform publicGetItemByAppId \
    --namespace $AB_NAMESPACE \
    --language 'BUwkLEw1ntYV8sr1' \
    --region 'FAuca5Zp2zQmMHHC' \
    --storeId 'U5ofHPLH3jk7U28a' \
    --appId '3Y3h5uoyDVZGs1Kj' \
    > test.out 2>&1
eval_tap $? 400 'PublicGetItemByAppId' test.out

#- 401 PublicQueryItems
samples/cli/sample-apps Platform publicQueryItems \
    --namespace $AB_NAMESPACE \
    --appType 'DLC' \
    --autoCalcEstimatedPrice 'false' \
    --baseAppId 'zbo8M6BuCCUSJbLP' \
    --categoryPath 'JuWC0eODnaXJh8Mz' \
    --features 'akd68A4QlPYwjl5n' \
    --includeSubCategoryItem 'true' \
    --itemType 'BUNDLE' \
    --language 'kIWihqX3Vf89sAtX' \
    --limit '46' \
    --offset '20' \
    --region 'nlzFYP3Vsykf24Bq' \
    --sortBy '["displayOrder:asc", "updatedAt:desc", "displayOrder:desc"]' \
    --storeId 'ujX9aBzCaXiKasvi' \
    --tags 'Ha2FePajvHpTV1CY' \
    > test.out 2>&1
eval_tap $? 401 'PublicQueryItems' test.out

#- 402 PublicGetItemBySku
samples/cli/sample-apps Platform publicGetItemBySku \
    --namespace $AB_NAMESPACE \
    --autoCalcEstimatedPrice 'false' \
    --language 'CF1OnIPT4t3qZ4ry' \
    --region 'OVGe9EoSqCKTTAPO' \
    --storeId 'WDIzchO7PBMyIwj1' \
    --sku 'WTRGwWF7ZphI6TEq' \
    > test.out 2>&1
eval_tap $? 402 'PublicGetItemBySku' test.out

#- 403 PublicGetEstimatedPrice
samples/cli/sample-apps Platform publicGetEstimatedPrice \
    --namespace $AB_NAMESPACE \
    --region 'ZMO8IaI0jcwfq3Va' \
    --storeId '4srM5Qkte6Eq0whV' \
    --itemIds 'zqEdfiXEzVCuj350' \
    > test.out 2>&1
eval_tap $? 403 'PublicGetEstimatedPrice' test.out

#- 404 PublicBulkGetItems
samples/cli/sample-apps Platform publicBulkGetItems \
    --namespace $AB_NAMESPACE \
    --autoCalcEstimatedPrice 'true' \
    --language 'rkwnx8kD092vQfaP' \
    --region 'ky82Hxu7lBRPOONr' \
    --storeId 'IFkX0cZOv88jXdYk' \
    --itemIds '2KqtLkIJwM0TPbVK' \
    > test.out 2>&1
eval_tap $? 404 'PublicBulkGetItems' test.out

#- 405 PublicValidateItemPurchaseCondition
samples/cli/sample-apps Platform publicValidateItemPurchaseCondition \
    --namespace $AB_NAMESPACE \
    --body '{"itemIds": ["vo7iH6bIycmaKZiV", "6APhvuqx9uuEiUdj", "LMyecC138i8TZ337"]}' \
    > test.out 2>&1
eval_tap $? 405 'PublicValidateItemPurchaseCondition' test.out

#- 406 PublicSearchItems
samples/cli/sample-apps Platform publicSearchItems \
    --namespace $AB_NAMESPACE \
    --autoCalcEstimatedPrice 'false' \
    --itemType 'MEDIA' \
    --limit '36' \
    --offset '5' \
    --region 'icIby2NxcpRSyGnl' \
    --storeId 'sh3sPDYLoMOS0wTR' \
    --keyword '166MTbVfnjYyGSal' \
    --language '7BLX2QUPVORdExe9' \
    > test.out 2>&1
eval_tap $? 406 'PublicSearchItems' test.out

#- 407 PublicGetApp
samples/cli/sample-apps Platform publicGetApp \
    --itemId 'JaQ5IdZ6kZYGGUwL' \
    --namespace $AB_NAMESPACE \
    --language 'B6SlyQCFUYn4gTzo' \
    --region 'Outp65fo97p9Gezy' \
    --storeId '9hiyPDszuvw6QQfl' \
    > test.out 2>&1
eval_tap $? 407 'PublicGetApp' test.out

#- 408 PublicGetItemDynamicData
samples/cli/sample-apps Platform publicGetItemDynamicData \
    --itemId 'E1FZz9ZzMOHE32id' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 408 'PublicGetItemDynamicData' test.out

#- 409 PublicGetItem
samples/cli/sample-apps Platform publicGetItem \
    --itemId 'rKsUOVzAQ4j3Yqr9' \
    --namespace $AB_NAMESPACE \
    --autoCalcEstimatedPrice 'false' \
    --language 'CQyvwHI0QyIApWWD' \
    --populateBundle 'false' \
    --region 'YI3VjHVBBhOgwwmO' \
    --storeId 'SX2l4W3eHJh3z2R3' \
    > test.out 2>&1
eval_tap $? 409 'PublicGetItem' test.out

#- 410 GetPaymentCustomization
eval_tap 0 410 'GetPaymentCustomization # SKIP deprecated' test.out

#- 411 PublicGetPaymentUrl
samples/cli/sample-apps Platform publicGetPaymentUrl \
    --namespace $AB_NAMESPACE \
    --body '{"neonPayConfig": {"cancelUrl": "aaAaqpDNUkMExoen", "successUrl": "1rTmoypS8yrWiwH6"}, "paymentOrderNo": "CFNDbGMVMOHbJlcl", "paymentProvider": "STRIPE", "returnUrl": "HYiLmJ6jJIf5tDSN", "ui": "xLZdR7CY4Fupyv3A", "zipCode": "dNMX2Dlkd6g1Tqfb"}' \
    > test.out 2>&1
eval_tap $? 411 'PublicGetPaymentUrl' test.out

#- 412 PublicGetPaymentMethods
samples/cli/sample-apps Platform publicGetPaymentMethods \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo '7qzADVRCUOK6FdT2' \
    > test.out 2>&1
eval_tap $? 412 'PublicGetPaymentMethods' test.out

#- 413 PublicGetUnpaidPaymentOrder
samples/cli/sample-apps Platform publicGetUnpaidPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'WbWEqJ2zO9CEyV7A' \
    > test.out 2>&1
eval_tap $? 413 'PublicGetUnpaidPaymentOrder' test.out

#- 414 Pay
samples/cli/sample-apps Platform pay \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo '8UHhdynytSyHDcXQ' \
    --paymentProvider 'CHECKOUT' \
    --zipCode 'fA6z72r1ipK3iULV' \
    --body '{"token": "ZJMzDjcCVeFxk1zc"}' \
    > test.out 2>&1
eval_tap $? 414 'Pay' test.out

#- 415 PublicCheckPaymentOrderPaidStatus
samples/cli/sample-apps Platform publicCheckPaymentOrderPaidStatus \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'FB6sTb2WeeG5mK3U' \
    > test.out 2>&1
eval_tap $? 415 'PublicCheckPaymentOrderPaidStatus' test.out

#- 416 GetPaymentPublicConfig
samples/cli/sample-apps Platform getPaymentPublicConfig \
    --namespace $AB_NAMESPACE \
    --sandbox 'false' \
    --paymentProvider 'WXPAY' \
    --region 'R4YXdwhvw6RJHHJo' \
    > test.out 2>&1
eval_tap $? 416 'GetPaymentPublicConfig' test.out

#- 417 PublicGetQRCode
samples/cli/sample-apps Platform publicGetQRCode \
    --namespace $AB_NAMESPACE \
    --code 'ZxfAxsIesvXbugyY' \
    > test.out 2>&1
eval_tap $? 417 'PublicGetQRCode' test.out

#- 418 PublicNormalizePaymentReturnUrl
samples/cli/sample-apps Platform publicNormalizePaymentReturnUrl \
    --namespace $AB_NAMESPACE \
    --payerID '0LWIyPYsBaBphqnu' \
    --foreinginvoice 'fLMpOOzFogDa6YAj' \
    --invoiceId 'oZGc5FsQurNm0IHM' \
    --payload 'E8KZZusTy9sSCld0' \
    --redirectResult 'HUWsiRlIDsU1RtQd' \
    --resultCode 'ODAX5WBYtBWaoRs3' \
    --sessionId 'uR3BZiInaoD0owyU' \
    --status 'KSQDQrPVyF08nf3H' \
    --token 'FsZTwmK8r2aJ6D3L' \
    --type '7AVJ8BHPs6Kp1CWm' \
    --userId 'aBPlIZdi523P6Hcf' \
    --orderNo 'feOeW44j4ru2uQ9i' \
    --paymentOrderNo 'Fc4rHNner6mfIcri' \
    --paymentProvider 'ALIPAY' \
    --returnUrl 'XCXwD091Lxdoqyo5' \
    > test.out 2>&1
eval_tap $? 418 'PublicNormalizePaymentReturnUrl' test.out

#- 419 GetPaymentTaxValue
samples/cli/sample-apps Platform getPaymentTaxValue \
    --namespace $AB_NAMESPACE \
    --zipCode 'RRHOqtaeGC2hH71H' \
    --paymentOrderNo 'smz8wNQdagjFbKt7' \
    --paymentProvider 'PAYPAL' \
    > test.out 2>&1
eval_tap $? 419 'GetPaymentTaxValue' test.out

#- 420 GetRewardByCode
samples/cli/sample-apps Platform getRewardByCode \
    --namespace $AB_NAMESPACE \
    --rewardCode 'lYJFwB17BXJQ1w6Y' \
    > test.out 2>&1
eval_tap $? 420 'GetRewardByCode' test.out

#- 421 QueryRewards1
samples/cli/sample-apps Platform queryRewards1 \
    --namespace $AB_NAMESPACE \
    --eventTopic 'Sd8V1AyCaMcpXSJw' \
    --limit '83' \
    --offset '13' \
    --sortBy '["namespace:desc", "rewardCode"]' \
    > test.out 2>&1
eval_tap $? 421 'QueryRewards1' test.out

#- 422 GetReward1
samples/cli/sample-apps Platform getReward1 \
    --namespace $AB_NAMESPACE \
    --rewardId 'SngdhI20nTfsUmaO' \
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
    --appIds '["gMhZFRKFIe2lWV0M", "qlp9o8SdAU1BXEkl", "I6jNiP1yGwdSuQfa"]' \
    --itemIds '["83eMltrIlLEQPV0C", "ipcpt4QRF0C8iZLM", "YdGgVGuUDyg12XGK"]' \
    --skus '["L1Ue0jF4masJ3oqa", "f9BhwiskDNhJBPaH", "ek7OX2HCgteQSiSU"]' \
    > test.out 2>&1
eval_tap $? 424 'PublicExistsAnyMyActiveEntitlement' test.out

#- 425 PublicGetMyAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform publicGetMyAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --appId 'S3HjUNNHNRO190kC' \
    > test.out 2>&1
eval_tap $? 425 'PublicGetMyAppEntitlementOwnershipByAppId' test.out

#- 426 PublicGetMyEntitlementOwnershipByItemId
samples/cli/sample-apps Platform publicGetMyEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --entitlementClazz 'APP' \
    --itemId 'sKSwbdLCV21Ovtcy' \
    > test.out 2>&1
eval_tap $? 426 'PublicGetMyEntitlementOwnershipByItemId' test.out

#- 427 PublicGetMyEntitlementOwnershipBySku
samples/cli/sample-apps Platform publicGetMyEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --entitlementClazz 'MEDIA' \
    --sku 'ec0AU0zt7hw7R98y' \
    > test.out 2>&1
eval_tap $? 427 'PublicGetMyEntitlementOwnershipBySku' test.out

#- 428 PublicGetEntitlementOwnershipToken
samples/cli/sample-apps Platform publicGetEntitlementOwnershipToken \
    --namespace $AB_NAMESPACE \
    --appIds '["MChO7xPksqIQLzxg", "oZ3GoYU1cNJYHd4W", "SXovvJq2phM9BuYT"]' \
    --itemIds '["XhQVUnOEGJioGqGm", "nkvOYKg3hq0V7vJ7", "4foQ6knnoqHVbLdV"]' \
    --skus '["ecRzFicg32sUuIbZ", "UEoW8ybEQQ7LAtEC", "y2QTyjVHpj9Vn3Fy"]' \
    > test.out 2>&1
eval_tap $? 428 'PublicGetEntitlementOwnershipToken' test.out

#- 429 SyncTwitchDropsEntitlement
samples/cli/sample-apps Platform syncTwitchDropsEntitlement \
    --namespace $AB_NAMESPACE \
    --body '{"gameId": "5USNRwQB4we3ijSt", "language": "hcrQ_QfTG", "region": "rnlsMDzrsg1TbwoH"}' \
    > test.out 2>&1
eval_tap $? 429 'SyncTwitchDropsEntitlement' test.out

#- 430 PublicGetMyWallet
samples/cli/sample-apps Platform publicGetMyWallet \
    --currencyCode 'Wnsd5JSPuXRsg9FN' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 430 'PublicGetMyWallet' test.out

#- 431 SyncEpicGameDLC
samples/cli/sample-apps Platform syncEpicGameDLC \
    --namespace $AB_NAMESPACE \
    --userId 'ypnmSwopIC7i3jkU' \
    --body '{"epicGamesJwtToken": "F7NtAAVUuJd8huYg"}' \
    > test.out 2>&1
eval_tap $? 431 'SyncEpicGameDLC' test.out

#- 432 SyncOculusDLC
samples/cli/sample-apps Platform syncOculusDLC \
    --namespace $AB_NAMESPACE \
    --userId 'NcZmHuHxB2lQX9TF' \
    > test.out 2>&1
eval_tap $? 432 'SyncOculusDLC' test.out

#- 433 PublicSyncPsnDlcInventory
samples/cli/sample-apps Platform publicSyncPsnDlcInventory \
    --namespace $AB_NAMESPACE \
    --userId 'l5ud0WXwkuLgBJ8P' \
    --body '{"serviceLabel": 66}' \
    > test.out 2>&1
eval_tap $? 433 'PublicSyncPsnDlcInventory' test.out

#- 434 PublicSyncPsnDlcInventoryWithMultipleServiceLabels
samples/cli/sample-apps Platform publicSyncPsnDlcInventoryWithMultipleServiceLabels \
    --namespace $AB_NAMESPACE \
    --userId 'dEJyycBLglFcauX1' \
    --body '{"serviceLabels": [82, 68, 70]}' \
    > test.out 2>&1
eval_tap $? 434 'PublicSyncPsnDlcInventoryWithMultipleServiceLabels' test.out

#- 435 SyncSteamDLC
samples/cli/sample-apps Platform syncSteamDLC \
    --namespace $AB_NAMESPACE \
    --userId 'kTsPsBc1H8TXszIO' \
    --body '{"appId": "lxU1QK7Rm7uBKyZo", "steamId": "qE0NU9sTIG5GYFfP"}' \
    > test.out 2>&1
eval_tap $? 435 'SyncSteamDLC' test.out

#- 436 SyncXboxDLC
samples/cli/sample-apps Platform syncXboxDLC \
    --namespace $AB_NAMESPACE \
    --userId 'Cjz5uAV02Xkx0CKM' \
    --body '{"xstsToken": "xNnADrarGPn8EaKV"}' \
    > test.out 2>&1
eval_tap $? 436 'SyncXboxDLC' test.out

#- 437 PublicQueryUserEntitlements
samples/cli/sample-apps Platform publicQueryUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId '5K80kQYx7QSMMm3l' \
    --appType 'DLC' \
    --entitlementClazz 'CODE' \
    --entitlementName '3JEnCcWdceRpSmy4' \
    --features '["hZtuB2yL1rGzhnH5", "Elai2djlMbr4ySoP", "2VpkpgPtPI0yXCpb"]' \
    --itemId '["DxEnApYrr4zCNe20", "tJ8wjbRFpnZiFry5", "kh2LqlZYup727WmY"]' \
    --limit '19' \
    --offset '82' \
    > test.out 2>&1
eval_tap $? 437 'PublicQueryUserEntitlements' test.out

#- 438 PublicGetUserAppEntitlementByAppId
samples/cli/sample-apps Platform publicGetUserAppEntitlementByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'WIKgVvqlLBdCtH8V' \
    --appId 'oIDon5XmM7JB2q4e' \
    > test.out 2>&1
eval_tap $? 438 'PublicGetUserAppEntitlementByAppId' test.out

#- 439 PublicQueryUserEntitlementsByAppType
samples/cli/sample-apps Platform publicQueryUserEntitlementsByAppType \
    --namespace $AB_NAMESPACE \
    --userId 'WuA8BoWJrKSS084T' \
    --limit '12' \
    --offset '75' \
    --appType 'DLC' \
    > test.out 2>&1
eval_tap $? 439 'PublicQueryUserEntitlementsByAppType' test.out

#- 440 PublicGetUserEntitlementsByIds
samples/cli/sample-apps Platform publicGetUserEntitlementsByIds \
    --namespace $AB_NAMESPACE \
    --userId '3z20HXAzMPNXp5hd' \
    --availablePlatformOnly 'false' \
    --ids '["lTiFs69aepS6RuLZ", "CLILnWZDCIQge5Nt", "y4PdWx50TcPGrYzj"]' \
    > test.out 2>&1
eval_tap $? 440 'PublicGetUserEntitlementsByIds' test.out

#- 441 PublicGetUserEntitlementByItemId
eval_tap 0 441 'PublicGetUserEntitlementByItemId # SKIP deprecated' test.out

#- 442 PublicGetUserEntitlementBySku
eval_tap 0 442 'PublicGetUserEntitlementBySku # SKIP deprecated' test.out

#- 443 PublicUserEntitlementHistory
samples/cli/sample-apps Platform publicUserEntitlementHistory \
    --namespace $AB_NAMESPACE \
    --userId 'dFIEEhAP3eXn7zKu' \
    --endDate '0GelgUrGg6fx8uRM' \
    --entitlementClazz 'SUBSCRIPTION' \
    --limit '42' \
    --offset '78' \
    --startDate 'HkCfqzp8Ymk0aN0S' \
    > test.out 2>&1
eval_tap $? 443 'PublicUserEntitlementHistory' test.out

#- 444 PublicExistsAnyUserActiveEntitlement
samples/cli/sample-apps Platform publicExistsAnyUserActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'aQcCDxSwIPK08s41' \
    --appIds '["tTjjELFM2znwmDXq", "dDnwXMiE7bdVAYwv", "QiKyxrI0bARTjwwb"]' \
    --itemIds '["9oZT8drhoSTQJTx8", "ERJ06VHv2lMikRMp", "DJcsWtAbBHKu2ffa"]' \
    --skus '["1VAOWiNUFf2TTf0i", "RQcBwLe4lU9hNWq6", "52Eyu79eA35atrag"]' \
    > test.out 2>&1
eval_tap $? 444 'PublicExistsAnyUserActiveEntitlement' test.out

#- 445 PublicGetUserAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform publicGetUserAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'AC9klIpn0R3U85Eq' \
    --appId 'UUk5b8x9QZW15TXS' \
    > test.out 2>&1
eval_tap $? 445 'PublicGetUserAppEntitlementOwnershipByAppId' test.out

#- 446 PublicGetUserEntitlementOwnershipByItemId
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'W1sp9IyHj2Rjhy7J' \
    --entitlementClazz 'SUBSCRIPTION' \
    --itemId 'EYdAGwkAcnFNUptu' \
    > test.out 2>&1
eval_tap $? 446 'PublicGetUserEntitlementOwnershipByItemId' test.out

#- 447 PublicGetUserEntitlementOwnershipByItemIds
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'o5OPOto0mHrODopC' \
    --ids '["1CQBnzXmAFfEMsGU", "DuM7fvmKB4429vlm", "2RYDDJbVrjds9te3"]' \
    > test.out 2>&1
eval_tap $? 447 'PublicGetUserEntitlementOwnershipByItemIds' test.out

#- 448 PublicGetUserEntitlementOwnershipBySku
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --userId '9nP3FEBpQzaqzfAU' \
    --entitlementClazz 'MEDIA' \
    --sku 'e80SpdTJWs8i32fD' \
    > test.out 2>&1
eval_tap $? 448 'PublicGetUserEntitlementOwnershipBySku' test.out

#- 449 PublicGetUserEntitlement
samples/cli/sample-apps Platform publicGetUserEntitlement \
    --entitlementId 'ZDCKl1oHG8jez0qE' \
    --namespace $AB_NAMESPACE \
    --userId 'zffwUdbq8oO2La21' \
    > test.out 2>&1
eval_tap $? 449 'PublicGetUserEntitlement' test.out

#- 450 PublicConsumeUserEntitlement
samples/cli/sample-apps Platform publicConsumeUserEntitlement \
    --entitlementId 'n5K3iywf0scpwSRD' \
    --namespace $AB_NAMESPACE \
    --userId 'zHi92vIkUcn6t7LO' \
    --body '{"metadata": {"operationSource": "INVENTORY"}, "options": ["yIPP85xyK6Qi3Oxe", "WifHsTDGftsptLVf", "jFuZFuSEtxmFdQXc"], "requestId": "EViNYb5jzWYHAMQn", "useCount": 47}' \
    > test.out 2>&1
eval_tap $? 450 'PublicConsumeUserEntitlement' test.out

#- 451 PublicSellUserEntitlement
samples/cli/sample-apps Platform publicSellUserEntitlement \
    --entitlementId 'UzHIaBRT5OfFUYei' \
    --namespace $AB_NAMESPACE \
    --userId 'uoIq0ngWSS6eOKyI' \
    --body '{"requestId": "ZLwSjvYuGuNxz4uN", "useCount": 49}' \
    > test.out 2>&1
eval_tap $? 451 'PublicSellUserEntitlement' test.out

#- 452 PublicSplitUserEntitlement
samples/cli/sample-apps Platform publicSplitUserEntitlement \
    --entitlementId 'iHZYPlLZIfzhxFIt' \
    --namespace $AB_NAMESPACE \
    --userId 'Yi52hMnSfZRM1maQ' \
    --body '{"metadata": {"operationSource": "INVENTORY"}, "useCount": 50}' \
    > test.out 2>&1
eval_tap $? 452 'PublicSplitUserEntitlement' test.out

#- 453 PublicTransferUserEntitlement
samples/cli/sample-apps Platform publicTransferUserEntitlement \
    --entitlementId 'gFHwdHAZxGI2BvDQ' \
    --namespace $AB_NAMESPACE \
    --userId 'MXWvpE1FJDxMHlFV' \
    --body '{"entitlementId": "ijF4696jaDiy66jh", "metadata": {"operationSource": "INVENTORY"}, "useCount": 18}' \
    > test.out 2>&1
eval_tap $? 453 'PublicTransferUserEntitlement' test.out

#- 454 PublicRedeemCode
samples/cli/sample-apps Platform publicRedeemCode \
    --namespace $AB_NAMESPACE \
    --userId 'P3WpYldIBorWxm5n' \
    --body '{"code": "i9dTgykgQO4L6jjV", "language": "Brk_eZ", "region": "HPwbzy2qkgJTsYxh"}' \
    > test.out 2>&1
eval_tap $? 454 'PublicRedeemCode' test.out

#- 455 PublicFulfillAppleIAPItem
samples/cli/sample-apps Platform publicFulfillAppleIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'nCj1dEkvwSH2RAo0' \
    --body '{"excludeOldTransactions": false, "language": "likd-lveo", "productId": "uRrdcOkdj8Qmw31f", "receiptData": "tFAffYnnkIoPTpCp", "region": "dk2Kondy0DkRD48o", "transactionId": "AqWk8twNXRIjvYEW"}' \
    > test.out 2>&1
eval_tap $? 455 'PublicFulfillAppleIAPItem' test.out

#- 456 SyncEpicGamesInventory
samples/cli/sample-apps Platform syncEpicGamesInventory \
    --namespace $AB_NAMESPACE \
    --userId '7IJhpQhAZLjsGJDW' \
    --body '{"epicGamesJwtToken": "PSOFDbPPdAEjqXEn"}' \
    > test.out 2>&1
eval_tap $? 456 'SyncEpicGamesInventory' test.out

#- 457 PublicFulfillGoogleIAPItem
samples/cli/sample-apps Platform publicFulfillGoogleIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'yv1LbxgRYmB7FVm5' \
    --body '{"autoAck": true, "autoConsume": false, "language": "oYW_yFdO_128", "orderId": "9gouYvVfuDkZlZD5", "packageName": "JOiX7JvZxfVvETYQ", "productId": "gDJJncH03LglLlPB", "purchaseTime": 53, "purchaseToken": "mC7MuOZh0nCEd3NL", "region": "1lstXkhHrLpDoJN7", "subscriptionPurchase": false}' \
    > test.out 2>&1
eval_tap $? 457 'PublicFulfillGoogleIAPItem' test.out

#- 458 SyncOculusConsumableEntitlements
samples/cli/sample-apps Platform syncOculusConsumableEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'CNHerP7xnyd4FnAY' \
    > test.out 2>&1
eval_tap $? 458 'SyncOculusConsumableEntitlements' test.out

#- 459 PublicReconcilePlayStationStore
samples/cli/sample-apps Platform publicReconcilePlayStationStore \
    --namespace $AB_NAMESPACE \
    --userId 'YXXlNHH1nh7tZ4OP' \
    --body '{"currencyCode": "WEk9QmQCiza9Hj2Z", "price": 0.6715694560648621, "productId": "YQ97MkcQsXOjsKob", "serviceLabel": 94}' \
    > test.out 2>&1
eval_tap $? 459 'PublicReconcilePlayStationStore' test.out

#- 460 PublicReconcilePlayStationStoreWithMultipleServiceLabels
samples/cli/sample-apps Platform publicReconcilePlayStationStoreWithMultipleServiceLabels \
    --namespace $AB_NAMESPACE \
    --userId 'oAvawE0LL8r7doHi' \
    --body '{"currencyCode": "OFYa3pGcyOGebnca", "price": 0.234406333891644, "productId": "vuwH7QqTF11JlAWB", "serviceLabels": [33, 70, 6]}' \
    > test.out 2>&1
eval_tap $? 460 'PublicReconcilePlayStationStoreWithMultipleServiceLabels' test.out

#- 461 SyncSteamInventory
samples/cli/sample-apps Platform syncSteamInventory \
    --namespace $AB_NAMESPACE \
    --userId '2pF0X70IGgcpfetS' \
    --body '{"appId": "xFiEpOm6nRTio0Dv", "currencyCode": "RtAambBkvSPNxFWg", "language": "KzBB-eCCe_194", "price": 0.9949564419752152, "productId": "yNPG8LGLngUJnBXg", "region": "B2MPmck4Abuhu0on", "steamId": "zarTJ5WImznVOdss"}' \
    > test.out 2>&1
eval_tap $? 461 'SyncSteamInventory' test.out

#- 462 SyncSteamAbnormalTransaction
samples/cli/sample-apps Platform syncSteamAbnormalTransaction \
    --namespace $AB_NAMESPACE \
    --userId '0f125cfNYG6ROutg' \
    > test.out 2>&1
eval_tap $? 462 'SyncSteamAbnormalTransaction' test.out

#- 463 SyncSteamIAPByTransaction
samples/cli/sample-apps Platform syncSteamIAPByTransaction \
    --namespace $AB_NAMESPACE \
    --userId 'jsfzJvdwTzyNIpkq' \
    --body '{"orderId": "smnYuhCMEGt7Dt8u"}' \
    > test.out 2>&1
eval_tap $? 463 'SyncSteamIAPByTransaction' test.out

#- 464 PublicQueryUserThirdPartySubscription
samples/cli/sample-apps Platform publicQueryUserThirdPartySubscription \
    --namespace $AB_NAMESPACE \
    --platform 'GOOGLE' \
    --userId '7Lc6TKiKHRKxSbaL' \
    --activeOnly 'false' \
    --groupId '2EmGBtTksfP5H48U' \
    --limit '60' \
    --offset '89' \
    --productId 'y4H5EquPtMDfDCmz' \
    > test.out 2>&1
eval_tap $? 464 'PublicQueryUserThirdPartySubscription' test.out

#- 465 SyncTwitchDropsEntitlement1
samples/cli/sample-apps Platform syncTwitchDropsEntitlement1 \
    --namespace $AB_NAMESPACE \
    --userId 'xedk3MveqevBa7E4' \
    --body '{"gameId": "A7xwG1x0vVLCHKcJ", "language": "mWPg_yx", "region": "omGXraVmJafbPhjl"}' \
    > test.out 2>&1
eval_tap $? 465 'SyncTwitchDropsEntitlement1' test.out

#- 466 SyncXboxInventory
samples/cli/sample-apps Platform syncXboxInventory \
    --namespace $AB_NAMESPACE \
    --userId 'h7cRYaDFxJ1nqflV' \
    --body '{"currencyCode": "z3whgNpWydNaXk8M", "price": 0.9445595201917842, "productId": "h5DYUsUL6o1ldqe0", "xstsToken": "8xngyzSKocYpENrO"}' \
    > test.out 2>&1
eval_tap $? 466 'SyncXboxInventory' test.out

#- 467 PublicQueryUserOrders
samples/cli/sample-apps Platform publicQueryUserOrders \
    --namespace $AB_NAMESPACE \
    --userId 'yqJSLvJ9PQvsc0iq' \
    --discounted 'false' \
    --itemId '2PEYtvRm5w2vaabn' \
    --limit '34' \
    --offset '53' \
    --status 'CLOSED' \
    > test.out 2>&1
eval_tap $? 467 'PublicQueryUserOrders' test.out

#- 468 PublicCreateUserOrder
samples/cli/sample-apps Platform publicCreateUserOrder \
    --namespace $AB_NAMESPACE \
    --userId 'vYKstghpRfcro3WG' \
    --body '{"currencyCode": "3S1XCDArh4g2KdHz", "discountCodes": ["qObQMvhf0xawXFph", "2vkadf7yyP8kdBuv", "nTPBlF7bxncIN5kq"], "discountedPrice": 17, "ext": {"uTJKFoxCJWdlcRyW": {}, "ezygDJVg499lmybs": {}, "CykexNcnoBaZcoZq": {}}, "itemId": "CLG0B9LItdfdZW5n", "language": "pTz_934", "price": 43, "quantity": 9, "region": "IVCp1pPamLfiJqZN", "returnUrl": "Gc57YkFLuoZqSDhb", "sectionId": "qTc7vz7dVKS2JO1d"}' \
    > test.out 2>&1
eval_tap $? 468 'PublicCreateUserOrder' test.out

#- 469 PublicPreviewOrderPrice
samples/cli/sample-apps Platform publicPreviewOrderPrice \
    --namespace $AB_NAMESPACE \
    --userId '43yXCqV7mTujEImw' \
    --body '{"currencyCode": "UhtYJ9lIMj7Rsj3n", "discountCodes": ["drsAlbJrYFFqk6A0", "QiFLTb34Gqu71t9d", "lFeL7unIxPVIBn7o"], "discountedPrice": 51, "itemId": "qrAkc0YTaSXW39gp", "price": 83, "quantity": 61}' \
    > test.out 2>&1
eval_tap $? 469 'PublicPreviewOrderPrice' test.out

#- 470 PublicGetUserOrder
samples/cli/sample-apps Platform publicGetUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'zUhvBS2sFaYFZTQI' \
    --userId 'aFiKErvxjYjfR6wt' \
    > test.out 2>&1
eval_tap $? 470 'PublicGetUserOrder' test.out

#- 471 PublicCancelUserOrder
samples/cli/sample-apps Platform publicCancelUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'FjnXrPw45DlpjXxh' \
    --userId 'wLmVquMnZ72tKUun' \
    > test.out 2>&1
eval_tap $? 471 'PublicCancelUserOrder' test.out

#- 472 PublicGetUserOrderHistories
samples/cli/sample-apps Platform publicGetUserOrderHistories \
    --namespace $AB_NAMESPACE \
    --orderNo 'xaNGg9xc8hFpJ0jQ' \
    --userId 'emQU4BIeS2e8vYss' \
    > test.out 2>&1
eval_tap $? 472 'PublicGetUserOrderHistories' test.out

#- 473 PublicDownloadUserOrderReceipt
samples/cli/sample-apps Platform publicDownloadUserOrderReceipt \
    --namespace $AB_NAMESPACE \
    --orderNo 'mAx2BbfyAduD7hmu' \
    --userId 'LvaP8YU0nOqbFweg' \
    > test.out 2>&1
eval_tap $? 473 'PublicDownloadUserOrderReceipt' test.out

#- 474 PublicGetPaymentAccounts
samples/cli/sample-apps Platform publicGetPaymentAccounts \
    --namespace $AB_NAMESPACE \
    --userId 'kuYrUbHcNMU10IG6' \
    > test.out 2>&1
eval_tap $? 474 'PublicGetPaymentAccounts' test.out

#- 475 PublicDeletePaymentAccount
samples/cli/sample-apps Platform publicDeletePaymentAccount \
    --id 'zqcFYmLL8wTNvVSl' \
    --namespace $AB_NAMESPACE \
    --type 'paypal' \
    --userId 'D0s33uQBahFYOp5L' \
    > test.out 2>&1
eval_tap $? 475 'PublicDeletePaymentAccount' test.out

#- 476 PublicListActiveSections
samples/cli/sample-apps Platform publicListActiveSections \
    --namespace $AB_NAMESPACE \
    --userId 'jrkF3iFRNAWRUu5L' \
    --autoCalcEstimatedPrice 'true' \
    --language 'ZjtkxqrMICLrF8ta' \
    --region '9wphzopuDw1gPhTE' \
    --storeId 'LJHfK2YuKz88hyqK' \
    --viewId 'c7d2h4RCtJqvWhht' \
    > test.out 2>&1
eval_tap $? 476 'PublicListActiveSections' test.out

#- 477 PublicQueryUserSubscriptions
samples/cli/sample-apps Platform publicQueryUserSubscriptions \
    --namespace $AB_NAMESPACE \
    --userId '75tzPlIo6Fw9JOGY' \
    --chargeStatus 'SETUP' \
    --itemId 'dI2Q88QkPfHKMKlf' \
    --limit '59' \
    --offset '38' \
    --sku 'zXj1hYDqJhUi63Tq' \
    --status 'EXPIRED' \
    --subscribedBy 'PLATFORM' \
    > test.out 2>&1
eval_tap $? 477 'PublicQueryUserSubscriptions' test.out

#- 478 PublicSubscribeSubscription
samples/cli/sample-apps Platform publicSubscribeSubscription \
    --namespace $AB_NAMESPACE \
    --userId 'TsRAp2UoQ0yPRj00' \
    --body '{"currencyCode": "xNUpzTgnigHSQ4io", "itemId": "oYwRUTY0NBmRTNUr", "language": "bmS", "region": "NVMUY6Va4N6YWrHm", "returnUrl": "DFudS2NzLoAMgeKK", "source": "yvDAmRLkkAs623Qn"}' \
    > test.out 2>&1
eval_tap $? 478 'PublicSubscribeSubscription' test.out

#- 479 PublicCheckUserSubscriptionSubscribableByItemId
samples/cli/sample-apps Platform publicCheckUserSubscriptionSubscribableByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'zb5jqNSIQM323Dsa' \
    --itemId 'nCVCjCQBej1I8TQP' \
    > test.out 2>&1
eval_tap $? 479 'PublicCheckUserSubscriptionSubscribableByItemId' test.out

#- 480 PublicGetUserSubscription
samples/cli/sample-apps Platform publicGetUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'Yinrzg2VBw7wQWVC' \
    --userId '8xlfXSMB7Y3bCL6N' \
    > test.out 2>&1
eval_tap $? 480 'PublicGetUserSubscription' test.out

#- 481 PublicChangeSubscriptionBillingAccount
samples/cli/sample-apps Platform publicChangeSubscriptionBillingAccount \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'OvC176Kyoy0dAfkW' \
    --userId 'QpGVj17wmyGrw28K' \
    > test.out 2>&1
eval_tap $? 481 'PublicChangeSubscriptionBillingAccount' test.out

#- 482 PublicCancelSubscription
samples/cli/sample-apps Platform publicCancelSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'fwkm3WVCDjjtMwsr' \
    --userId 'N7TtSZFaOa9XPMFF' \
    --body '{"immediate": false, "reason": "0al5ARa6EDBYrITQ"}' \
    > test.out 2>&1
eval_tap $? 482 'PublicCancelSubscription' test.out

#- 483 PublicGetUserSubscriptionBillingHistories
samples/cli/sample-apps Platform publicGetUserSubscriptionBillingHistories \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'b6sxGEA0YKBOdexF' \
    --userId 'EMZQRn2IT4Dnv7z8' \
    --excludeFree 'false' \
    --limit '86' \
    --offset '67' \
    > test.out 2>&1
eval_tap $? 483 'PublicGetUserSubscriptionBillingHistories' test.out

#- 484 PublicListViews
samples/cli/sample-apps Platform publicListViews \
    --namespace $AB_NAMESPACE \
    --userId 'KfMko2pT0ICdnXDD' \
    --language '79WYOFbu2YbT72tK' \
    --storeId '22O7soGoOkU29gAw' \
    > test.out 2>&1
eval_tap $? 484 'PublicListViews' test.out

#- 485 PublicGetWallet
samples/cli/sample-apps Platform publicGetWallet \
    --currencyCode '5ujj2GccxHmVss0v' \
    --namespace $AB_NAMESPACE \
    --userId 'w1GA6mrF08z8Epqy' \
    > test.out 2>&1
eval_tap $? 485 'PublicGetWallet' test.out

#- 486 PublicListUserWalletTransactions
samples/cli/sample-apps Platform publicListUserWalletTransactions \
    --currencyCode 'x5hNGd06c480MuVO' \
    --namespace $AB_NAMESPACE \
    --userId 'FbrdHxURgE6GhuaW' \
    --limit '94' \
    --offset '9' \
    > test.out 2>&1
eval_tap $? 486 'PublicListUserWalletTransactions' test.out

#- 487 PublicGetMyDLCContent
samples/cli/sample-apps Platform publicGetMyDLCContent \
    --includeAllNamespaces 'true' \
    --type 'STEAM' \
    > test.out 2>&1
eval_tap $? 487 'PublicGetMyDLCContent' test.out

#- 488 QueryFulfillments
samples/cli/sample-apps Platform queryFulfillments \
    --namespace $AB_NAMESPACE \
    --endTime 'MN1wVYT4uvlvZmk5' \
    --limit '58' \
    --offset '73' \
    --startTime 'pMIxqQrYRbi0yRv0' \
    --state 'REVOKED' \
    --transactionId 'fl6mIfi1D01xT7kw' \
    --userId 'ayZFBm8edukWgnQX' \
    > test.out 2>&1
eval_tap $? 488 'QueryFulfillments' test.out

#- 489 QueryItemsV2
samples/cli/sample-apps Platform queryItemsV2 \
    --namespace $AB_NAMESPACE \
    --appType 'SOFTWARE' \
    --availableDate 'VHDr8NmJyS4IoicC' \
    --baseAppId 'lYgKx8FZRo2IWqRD' \
    --categoryPath 'ilczZHvQ3MPezJTn' \
    --features '3y6KpvdVHU1rCO75' \
    --includeSubCategoryItem 'true' \
    --itemName 'IHHWsNZFF6BWiZ1i' \
    --itemStatus 'INACTIVE' \
    --itemType '["OPTIONBOX", "SEASON", "SEASON"]' \
    --limit '34' \
    --offset '73' \
    --region 'MTRO9OC9QJBt8bIP' \
    --sectionExclusive 'false' \
    --sortBy '["updatedAt:desc", "displayOrder", "updatedAt:asc"]' \
    --storeId 'vredpo5TEizze4x6' \
    --tags 'PfICdls0kX6LJ5QD' \
    --targetNamespace 'iAiaXJZnP5CLCrO5' \
    --withTotal 'true' \
    > test.out 2>&1
eval_tap $? 489 'QueryItemsV2' test.out

#- 490 ImportStore1
samples/cli/sample-apps Platform importStore1 \
    --namespace $AB_NAMESPACE \
    --storeId 'nHPnk6fR5F44WZF0' \
    --strictMode 'true' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 490 'ImportStore1' test.out

#- 491 ExportStore1
samples/cli/sample-apps Platform exportStore1 \
    --namespace $AB_NAMESPACE \
    --storeId 'D8u3M1zusmguQP2y' \
    --body '{"itemIds": ["xDCOkruMvkXNaq6g", "9EIXi7UI5xyc4d6B", "WwVLNGJ2eR6YGZ07"]}' \
    > test.out 2>&1
eval_tap $? 491 'ExportStore1' test.out

#- 492 FulfillRewardsV2
samples/cli/sample-apps Platform fulfillRewardsV2 \
    --namespace $AB_NAMESPACE \
    --userId '3u7bxSGR2ECrbyvS' \
    --body '{"entitlementCollectionId": "qMaxdZMbcyRTCzWo", "entitlementOrigin": "Playstation", "metadata": {"0MwXVM0NW57jLquT": {}, "FgtxOIRS23tRXQJC": {}, "dELfB0qUEJM9KFIm": {}}, "origin": "Xbox", "rewards": [{"currency": {"currencyCode": "awJbw6DckrX0jVFU", "namespace": "Jl5Y5XD8PS4053gE"}, "item": {"itemId": "S2R0fReKkQKc9Ymd", "itemName": "PSR0YDMsXgKsXa2Y", "itemSku": "JXghUw9pVnQrvTNw", "itemType": "6GKzHvbiTm6cYBaj"}, "quantity": 13, "type": "CURRENCY"}, {"currency": {"currencyCode": "uJevd0Myqzwpwzcs", "namespace": "i3eexeMdfDKfCWND"}, "item": {"itemId": "8cLdyPieedUziYxd", "itemName": "FwCrpwwTOzB6pQOt", "itemSku": "zIZM7GUImj0koUga", "itemType": "Q2s2RsO0b4TLNkUA"}, "quantity": 71, "type": "ITEM"}, {"currency": {"currencyCode": "mnPnWFDQCbWL8oKW", "namespace": "vukMpmxTuuTbYwwD"}, "item": {"itemId": "Rl4VhYLIbTYxnZvc", "itemName": "STA8iIzuuyZhoLxd", "itemSku": "105ODo68AEAUor2V", "itemType": "VSSA4H3oxnDNuurw"}, "quantity": 74, "type": "ITEM"}], "source": "GIFT", "transactionId": "Jz0uFFRiiq9s0YU1"}' \
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
    --userId 'f5AubHV3kK2WrQWC' \
    --body '{"transactionId": "clvPNHJLFmeFiM2a"}' \
    > test.out 2>&1
eval_tap $? 496 'V2PublicFulfillAppleIAPItem' test.out

#- 497 FulfillItemsV3
samples/cli/sample-apps Platform fulfillItemsV3 \
    --namespace $AB_NAMESPACE \
    --transactionId 'tx20DYOy7WBr0oMX' \
    --userId 'nYSAztSCppB2rPUO' \
    --body '{"items": [{"duration": 88, "endDate": "1991-05-28T00:00:00Z", "entitlementCollectionId": "84HNBsbsprXLSeck", "entitlementOrigin": "GooglePlay", "itemId": "BNQ9epOkzwxR52Yx", "itemSku": "LXCOBdkkJLz8XGbJ", "language": "MssDoYuXXWxSBKK8", "metadata": {"a4k5vPhUdAGgofFR": {}, "jETjZcGId5dV0sNn": {}, "3kzUdZvKrryTlGCA": {}}, "orderNo": "HKTzC5AlYvKh8vnp", "origin": "GooglePlay", "quantity": 26, "region": "fIoRjIM6VVJ0Touw", "source": "PAYMENT", "startDate": "1971-08-26T00:00:00Z", "storeId": "M4MWduFyqIkHzo8q"}, {"duration": 41, "endDate": "1974-04-07T00:00:00Z", "entitlementCollectionId": "3z5sGNT4sBC0nSbj", "entitlementOrigin": "Other", "itemId": "5vqlpRJFmj6J0aop", "itemSku": "rAMFG4pmzkmnZhE6", "language": "jgW1GiDbzSufwI2h", "metadata": {"OXmT6fleQMmR5dfS": {}, "mLPuSA9Z91wdUIaF": {}, "eFYPkDlf3WbUlZWT": {}}, "orderNo": "cuibyOmudkGF2FDO", "origin": "Nintendo", "quantity": 2, "region": "xPCOfXMJhJkMJUwo", "source": "PAYMENT", "startDate": "1990-12-10T00:00:00Z", "storeId": "IGqsm9l2lXIn6K1u"}, {"duration": 48, "endDate": "1974-04-11T00:00:00Z", "entitlementCollectionId": "UMwlINhFkis6qGzA", "entitlementOrigin": "Epic", "itemId": "cgQ0MxDaAznxQsZR", "itemSku": "yeIxvbCAVlCu7GXL", "language": "Q5Qk33REtMKdVzAQ", "metadata": {"WZktZTsCTWIRVSZG": {}, "sev9sSjuxbcK1tQr": {}, "2IxHEStOFOH62BCV": {}}, "orderNo": "bVEoxr4vkgSl2P3t", "origin": "Xbox", "quantity": 66, "region": "NPJTz72cPZEZl0qk", "source": "SELL_BACK", "startDate": "1981-09-08T00:00:00Z", "storeId": "Ypgl2cUTsuxPH3XF"}]}' \
    > test.out 2>&1
eval_tap $? 497 'FulfillItemsV3' test.out

#- 498 RetryFulfillItemsV3
samples/cli/sample-apps Platform retryFulfillItemsV3 \
    --namespace $AB_NAMESPACE \
    --transactionId 'TibWjHfL8jQjYkiY' \
    --userId 'shgBvccCxvt5xuu6' \
    > test.out 2>&1
eval_tap $? 498 'RetryFulfillItemsV3' test.out

#- 499 RevokeItemsV3
samples/cli/sample-apps Platform revokeItemsV3 \
    --namespace $AB_NAMESPACE \
    --transactionId 'wu7STuazkRhadV87' \
    --userId 'IAoXeXKhGfThNMw9' \
    > test.out 2>&1
eval_tap $? 499 'RevokeItemsV3' test.out


rm -f "tmp.dat"

exit $EXIT_CODE