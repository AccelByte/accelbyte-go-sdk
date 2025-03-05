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
echo "1..497"

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
    --id 'PX5bdgPdHAXFzMjY' \
    > test.out 2>&1
eval_tap $? 3 'GetFulfillmentScript' test.out

#- 4 CreateFulfillmentScript
samples/cli/sample-apps Platform createFulfillmentScript \
    --id 'PVlmlKIjR5guJxAq' \
    --body '{"grantDays": "y5ap404pmfS6dILm"}' \
    > test.out 2>&1
eval_tap $? 4 'CreateFulfillmentScript' test.out

#- 5 DeleteFulfillmentScript
samples/cli/sample-apps Platform deleteFulfillmentScript \
    --id 'DfmBZKOGJsdEBhsf' \
    > test.out 2>&1
eval_tap $? 5 'DeleteFulfillmentScript' test.out

#- 6 UpdateFulfillmentScript
samples/cli/sample-apps Platform updateFulfillmentScript \
    --id 'dlO6e5d5mQj1wjcl' \
    --body '{"grantDays": "bOwA2M4YauDM5q2U"}' \
    > test.out 2>&1
eval_tap $? 6 'UpdateFulfillmentScript' test.out

#- 7 ListItemTypeConfigs
samples/cli/sample-apps Platform listItemTypeConfigs \
    > test.out 2>&1
eval_tap $? 7 'ListItemTypeConfigs' test.out

#- 8 CreateItemTypeConfig
samples/cli/sample-apps Platform createItemTypeConfig \
    --body '{"clazz": "04dJ2wleeJfEis2I", "dryRun": true, "fulfillmentUrl": "dC9cevSHcrWblTTP", "itemType": "BUNDLE", "purchaseConditionUrl": "0c0rz7XnPp5Pi6hL"}' \
    > test.out 2>&1
eval_tap $? 8 'CreateItemTypeConfig' test.out

#- 9 SearchItemTypeConfig
samples/cli/sample-apps Platform searchItemTypeConfig \
    --clazz 'M1iQLdJL3fIqPW2F' \
    --itemType 'SUBSCRIPTION' \
    > test.out 2>&1
eval_tap $? 9 'SearchItemTypeConfig' test.out

#- 10 GetItemTypeConfig
samples/cli/sample-apps Platform getItemTypeConfig \
    --id 'Bom1y20zEw8NaDTU' \
    > test.out 2>&1
eval_tap $? 10 'GetItemTypeConfig' test.out

#- 11 UpdateItemTypeConfig
samples/cli/sample-apps Platform updateItemTypeConfig \
    --id 'qJceYCsLFZM81dkH' \
    --body '{"clazz": "GjvdvDYX4Zi2k7nQ", "dryRun": false, "fulfillmentUrl": "hbyFJNeW7UtD1U5k", "purchaseConditionUrl": "bd1UxiIV8PhpL8DX"}' \
    > test.out 2>&1
eval_tap $? 11 'UpdateItemTypeConfig' test.out

#- 12 DeleteItemTypeConfig
samples/cli/sample-apps Platform deleteItemTypeConfig \
    --id '4luBZ3qIKuAL6B9y' \
    > test.out 2>&1
eval_tap $? 12 'DeleteItemTypeConfig' test.out

#- 13 QueryCampaigns
samples/cli/sample-apps Platform queryCampaigns \
    --namespace $AB_NAMESPACE \
    --limit '72' \
    --name '3fmEMfNzucAMYSiU' \
    --offset '5' \
    --tag 'TpPyqO6vADzTo7Ft' \
    > test.out 2>&1
eval_tap $? 13 'QueryCampaigns' test.out

#- 14 CreateCampaign
samples/cli/sample-apps Platform createCampaign \
    --namespace $AB_NAMESPACE \
    --body '{"description": "K1e7MWnH9oQuVqXn", "discountConfig": {"categories": [{"categoryPath": "2HNFyC0crl7qaQ8c", "includeSubCategories": false}, {"categoryPath": "ny47hXRClzQBcUfC", "includeSubCategories": false}, {"categoryPath": "sYTIOuV3mZjho1gM", "includeSubCategories": false}], "currencyCode": "M5bJiekOqGuK9Ifp", "currencyNamespace": "y1zbAhMGu2XJvPfO", "discountAmount": 93, "discountPercentage": 98, "discountType": "PERCENTAGE", "items": [{"itemId": "GL11zQ4o95w3WRP8", "itemName": "QvXMTryqD4KydZnl"}, {"itemId": "F1yKvH5RfhuGrxY3", "itemName": "ouw4va5hmrbtVPqe"}, {"itemId": "BjvhHb3SJJdWfJQA", "itemName": "64dMVHBiYm0cPLw4"}], "restrictType": "ITEMS_AND_CATEGORIES", "stackable": true}, "items": [{"extraSubscriptionDays": 6, "itemId": "VFFYTurHFEipfHLR", "itemName": "fs9CujocKhUJv8LW", "quantity": 27}, {"extraSubscriptionDays": 72, "itemId": "X2V6HNrRiXM4IBUu", "itemName": "JrENSv4mAkVX1p52", "quantity": 77}, {"extraSubscriptionDays": 18, "itemId": "LI9cXUMMWYC1HJiX", "itemName": "BQicp48aaTpyWUY8", "quantity": 44}], "maxRedeemCountPerCampaignPerUser": 80, "maxRedeemCountPerCode": 13, "maxRedeemCountPerCodePerUser": 61, "maxSaleCount": 75, "name": "z2UlhUX6IETMPzjR", "redeemEnd": "1989-09-03T00:00:00Z", "redeemStart": "1986-08-03T00:00:00Z", "redeemType": "ITEM", "status": "INACTIVE", "tags": ["u3bEL4jRPGkFx1Bi", "RzuawJFDuKxzUvnI", "rokSSpneaO25yCa2"], "type": "REDEMPTION"}' \
    > test.out 2>&1
eval_tap $? 14 'CreateCampaign' test.out

#- 15 GetCampaign
samples/cli/sample-apps Platform getCampaign \
    --campaignId '2yAhrBlkLnd5TJ7S' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 15 'GetCampaign' test.out

#- 16 UpdateCampaign
samples/cli/sample-apps Platform updateCampaign \
    --campaignId 'YrnOE2SlwFSdH2NG' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "Kn3Qg1a4uq5FJR1B", "discountConfig": {"categories": [{"categoryPath": "06owxO8W00ZeDUJH", "includeSubCategories": true}, {"categoryPath": "YXdLiE83FGEyjFph", "includeSubCategories": false}, {"categoryPath": "RCBF2deBbmeldnOB", "includeSubCategories": false}], "currencyCode": "LsrA0LdxwAY74meL", "currencyNamespace": "6RvbuoOZ7JkgPWNi", "discountAmount": 3, "discountPercentage": 41, "discountType": "PERCENTAGE", "items": [{"itemId": "8tkK6kaE30pcWWgw", "itemName": "Dckb9kLIMh2cuJHZ"}, {"itemId": "lsLPzoNV55BdbZUL", "itemName": "EDzUqRANbVbAuSjf"}, {"itemId": "18U0BLuaYOFsv3b8", "itemName": "zYHUxIjFp3qOqh2y"}], "restrictType": "ITEMS_AND_CATEGORIES", "stackable": true}, "items": [{"extraSubscriptionDays": 59, "itemId": "8CqOC8fE4krWeFSF", "itemName": "Pg2iBPLR6PVkyoXi", "quantity": 65}, {"extraSubscriptionDays": 97, "itemId": "IuyLK1hmUjomnBx1", "itemName": "u98yYdqTpKQPEZaZ", "quantity": 21}, {"extraSubscriptionDays": 81, "itemId": "frtoV7WD0Gxwrdl5", "itemName": "BLCkXzbFuZUIFZ2A", "quantity": 2}], "maxRedeemCountPerCampaignPerUser": 84, "maxRedeemCountPerCode": 15, "maxRedeemCountPerCodePerUser": 82, "maxSaleCount": 25, "name": "hTau0Wz9o8KrCLsv", "redeemEnd": "1999-03-13T00:00:00Z", "redeemStart": "1994-06-02T00:00:00Z", "redeemType": "ITEM", "status": "INACTIVE", "tags": ["cm6PdXWBtzQU4whp", "zkWW89te2OGDCWT0", "ZlHhat6SCnwZpxVu"]}' \
    > test.out 2>&1
eval_tap $? 16 'UpdateCampaign' test.out

#- 17 RenameBatch
samples/cli/sample-apps Platform renameBatch \
    --campaignId 'iOxfmZaoTv6Vi5Qd' \
    --namespace $AB_NAMESPACE \
    --body '{"newName": "H9lYIj4msXeAGCFX", "oldName": "LK5AHphJD2g5xxCM"}' \
    > test.out 2>&1
eval_tap $? 17 'RenameBatch' test.out

#- 18 QueryCampaignBatchNames
samples/cli/sample-apps Platform queryCampaignBatchNames \
    --campaignId 'HdJsC84bI1qTlGLf' \
    --namespace $AB_NAMESPACE \
    --batchName 'bZp1gDu8bnW7yBpw' \
    --limit '12' \
    > test.out 2>&1
eval_tap $? 18 'QueryCampaignBatchNames' test.out

#- 19 GetCampaignDynamic
samples/cli/sample-apps Platform getCampaignDynamic \
    --campaignId '02OWbjikK55sTINb' \
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
    --body '{"enableInventoryCheck": false, "itemDeletionCheckConfig": ["IAP", "ENTITLEMENT", "CAMPAIGN"]}' \
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
    --body '{"appConfig": {"appName": "q9Gyap3Y2fJAS4Z0"}, "customConfig": {"connectionType": "INSECURE", "grpcServerAddress": "aqVkAX7uwx7M9yZU"}, "extendType": "CUSTOM"}' \
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
    --body '{"appConfig": {"appName": "k38psdyeoBCRkAGI"}, "customConfig": {"connectionType": "TLS", "grpcServerAddress": "bSd0yspuHcnw8ZmU"}, "extendType": "APP"}' \
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
    --storeId 'mlNQHSJ66FJNOh05' \
    > test.out 2>&1
eval_tap $? 31 'GetRootCategories' test.out

#- 32 CreateCategory
samples/cli/sample-apps Platform createCategory \
    --namespace $AB_NAMESPACE \
    --storeId 'h7zZZUuyd8oDLWEj' \
    --body '{"categoryPath": "b7Y7gzcOQ73ZcfTk", "localizationDisplayNames": {"rxwS5LGA9G4F1d3e": "cB6Hds8nLv4qPv6n", "a65l85E5XN5uhtTB": "eqC4WFkIjepYDpFI", "Vyc1WkZXl0sGk9im": "8SYpOeqNIWAkdGlS"}}' \
    > test.out 2>&1
eval_tap $? 32 'CreateCategory' test.out

#- 33 ListCategoriesBasic
samples/cli/sample-apps Platform listCategoriesBasic \
    --namespace $AB_NAMESPACE \
    --storeId 'xjpSdu2AdGsMKOVf' \
    > test.out 2>&1
eval_tap $? 33 'ListCategoriesBasic' test.out

#- 34 GetCategory
samples/cli/sample-apps Platform getCategory \
    --categoryPath 'AZzt7AZGeDFhFRgH' \
    --namespace $AB_NAMESPACE \
    --storeId 'u8NkAld5YVozKWbz' \
    > test.out 2>&1
eval_tap $? 34 'GetCategory' test.out

#- 35 UpdateCategory
samples/cli/sample-apps Platform updateCategory \
    --categoryPath 'eZHGZxeIjRJ4ajRh' \
    --namespace $AB_NAMESPACE \
    --storeId 'L49gmegHmEA8dF9o' \
    --body '{"localizationDisplayNames": {"7ROpAlPDykS1TsI0": "lSe0eQHU9RfaJTEb", "q3p2LTj2xhFyy2gI": "xAqeWMZ3e0TLbxTc", "cy0Uf0HiDc0pIWQH": "udSO90X14nCjrqRe"}}' \
    > test.out 2>&1
eval_tap $? 35 'UpdateCategory' test.out

#- 36 DeleteCategory
samples/cli/sample-apps Platform deleteCategory \
    --categoryPath 'CNXwuylhDPJ13lm3' \
    --namespace $AB_NAMESPACE \
    --storeId 'KPZ2NEFVYsyV2enk' \
    > test.out 2>&1
eval_tap $? 36 'DeleteCategory' test.out

#- 37 GetChildCategories
samples/cli/sample-apps Platform getChildCategories \
    --categoryPath 'hEx1emdi17zJR7VG' \
    --namespace $AB_NAMESPACE \
    --storeId 'azHzOX551h6GULeS' \
    > test.out 2>&1
eval_tap $? 37 'GetChildCategories' test.out

#- 38 GetDescendantCategories
samples/cli/sample-apps Platform getDescendantCategories \
    --categoryPath 'zGxhKS8bwOAjTPyp' \
    --namespace $AB_NAMESPACE \
    --storeId 'Cjp2Xz4lBBJrFEVR' \
    > test.out 2>&1
eval_tap $? 38 'GetDescendantCategories' test.out

#- 39 QueryCodes
samples/cli/sample-apps Platform queryCodes \
    --campaignId '0uBBRk7UbJRGJwB1' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --batchName 'eJfUqyUGfiURD6Eo' \
    --batchNo '[28, 63, 51]' \
    --code 'E6ajNR4E6wksgs7B' \
    --limit '17' \
    --offset '11' \
    --withBatchName 'false' \
    > test.out 2>&1
eval_tap $? 39 'QueryCodes' test.out

#- 40 CreateCodes
samples/cli/sample-apps Platform createCodes \
    --campaignId '97q2mSTspTjZaf36' \
    --namespace $AB_NAMESPACE \
    --body '{"batchName": "HsTAJmm2NbyKQ5dU", "codeValue": "9eVwbTvDfPBn5yNS", "quantity": 48}' \
    > test.out 2>&1
eval_tap $? 40 'CreateCodes' test.out

#- 41 Download
samples/cli/sample-apps Platform download \
    --campaignId 'uaMXZ6tZwgtRKEvc' \
    --namespace $AB_NAMESPACE \
    --batchName 'Mh8tf93t3znLJzZU' \
    --batchNo '[4, 0, 21]' \
    --withBatchName 'false' \
    > test.out 2>&1
eval_tap $? 41 'Download' test.out

#- 42 BulkDisableCodes
samples/cli/sample-apps Platform bulkDisableCodes \
    --campaignId 'EV2UYBv98tzxU9XL' \
    --namespace $AB_NAMESPACE \
    --batchName 'SHOacFk1KNk7eH5I' \
    --batchNo '[37, 18, 32]' \
    > test.out 2>&1
eval_tap $? 42 'BulkDisableCodes' test.out

#- 43 BulkEnableCodes
samples/cli/sample-apps Platform bulkEnableCodes \
    --campaignId 'diPV1SgXEJ9plKgZ' \
    --namespace $AB_NAMESPACE \
    --batchName 'cHwudS4Z7wHKyDcV' \
    --batchNo '[55, 72, 58]' \
    > test.out 2>&1
eval_tap $? 43 'BulkEnableCodes' test.out

#- 44 QueryRedeemHistory
samples/cli/sample-apps Platform queryRedeemHistory \
    --campaignId 'V0Z8Py6QDwFgbPci' \
    --namespace $AB_NAMESPACE \
    --code 'j1sjmG1l1uJLM9KW' \
    --limit '5' \
    --offset '64' \
    --userId 'ttOBx699F0fLMOFL' \
    > test.out 2>&1
eval_tap $? 44 'QueryRedeemHistory' test.out

#- 45 GetCode
samples/cli/sample-apps Platform getCode \
    --code 'GureEc1zYAAluhAa' \
    --namespace $AB_NAMESPACE \
    --redeemable 'true' \
    --withBatchName 'false' \
    > test.out 2>&1
eval_tap $? 45 'GetCode' test.out

#- 46 DisableCode
samples/cli/sample-apps Platform disableCode \
    --code 'SGKNWgtXY2bcQxM1' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 46 'DisableCode' test.out

#- 47 EnableCode
samples/cli/sample-apps Platform enableCode \
    --code 'QslMQ0ntxS7tOMFY' \
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
    --body '{"currencyCode": "2jgcV9vFL9spfRtH", "currencySymbol": "dNYOl6hZUrvPcT8V", "currencyType": "VIRTUAL", "decimals": 16, "localizationDescriptions": {"v2iQXMpDOu8SbzbL": "tDjh0NzVXeeyes08", "tUqqcKxq1WZQsEsO": "EIQhAUwVWi6i6Z2F", "0TtjGZaRxzSbHKnr": "87js7HyCDBXYU0uo"}}' \
    > test.out 2>&1
eval_tap $? 52 'CreateCurrency' test.out

#- 53 UpdateCurrency
samples/cli/sample-apps Platform updateCurrency \
    --currencyCode '5Zg1P6iTubNoVhXS' \
    --namespace $AB_NAMESPACE \
    --body '{"localizationDescriptions": {"jy0p3BTSuCgBH7h2": "3uA8FAGuCzLvJuMN", "nBhApLYBbEFuMPA2": "jmZSfRo5Dfe3WbWi", "r0MBf9Bt7QKSJws6": "yIDf3qhGevpOKaP6"}}' \
    > test.out 2>&1
eval_tap $? 53 'UpdateCurrency' test.out

#- 54 DeleteCurrency
samples/cli/sample-apps Platform deleteCurrency \
    --currencyCode 'GtJYMjRKJlExQp9N' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 54 'DeleteCurrency' test.out

#- 55 GetCurrencyConfig
samples/cli/sample-apps Platform getCurrencyConfig \
    --currencyCode 'TbOTh3Hvuoz9PcKx' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 55 'GetCurrencyConfig' test.out

#- 56 GetCurrencySummary
samples/cli/sample-apps Platform getCurrencySummary \
    --currencyCode 'LWYkvAo88L6cxVbR' \
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
    --body '{"data": [{"id": "HG8U5wPCRq9HGXZf", "rewards": [{"currency": {"currencyCode": "VFdEuOqsscrI5EyT", "namespace": "Qfv8Yfj6cYkHMaGR"}, "item": {"itemId": "M7SXSWjEgscFciso", "itemName": "CNH0Vo6NrurPOnJj", "itemSku": "PR2HSkbKgsS4bltY", "itemType": "7Wy5CCAGf9JFhDqp"}, "quantity": 19, "type": "CURRENCY"}, {"currency": {"currencyCode": "CBroT0UCQjvwq46J", "namespace": "s3iqCpScS2a4M1qW"}, "item": {"itemId": "fJDiCspxCtbfUveC", "itemName": "qWYogyjzlg3WSMQT", "itemSku": "vlCRaZJyJKH0Scuq", "itemType": "1npAFdWQqD7kEc3U"}, "quantity": 76, "type": "CURRENCY"}, {"currency": {"currencyCode": "8tp97B3g5HwTJ1pt", "namespace": "tFnQSr94UfIs0i3p"}, "item": {"itemId": "3KNAVyUxk2qXO8L1", "itemName": "Lp5Ks8MDy7ysbYDi", "itemSku": "zaVDig6TchHz0PgK", "itemType": "zOr5UTAjp68w6mHO"}, "quantity": 10, "type": "CURRENCY"}]}, {"id": "fYz4FTr3JwV41YtN", "rewards": [{"currency": {"currencyCode": "Axa5V7bjEpAT85Yp", "namespace": "NxWQVQDPc4fne6Th"}, "item": {"itemId": "EgrzmglSZG3OJ0RT", "itemName": "fBGvX18qUh4eG3gm", "itemSku": "lO2eIZvl5v8wnWWi", "itemType": "kSrFqYRBOlBryoDc"}, "quantity": 89, "type": "CURRENCY"}, {"currency": {"currencyCode": "H1edmwqjqk1L26sh", "namespace": "IeyLkt8Xn1kxRfLO"}, "item": {"itemId": "XBuy174ogrwpQGhj", "itemName": "d2YKK2KLkUzbVEx8", "itemSku": "riZpFt2TTMysJc1a", "itemType": "mFnrsrASaN2Y9Hv2"}, "quantity": 75, "type": "CURRENCY"}, {"currency": {"currencyCode": "6QsmKRPVy9z0fuXL", "namespace": "0T15hcnVa2D48pFA"}, "item": {"itemId": "72buO82L3jb4WOGU", "itemName": "Uemmh3wGWo4boiHf", "itemSku": "dqO6tZKbTk04GIO6", "itemType": "SRiND9brKUlDQQom"}, "quantity": 92, "type": "CURRENCY"}]}, {"id": "S8YGWfuMeuVr8BG7", "rewards": [{"currency": {"currencyCode": "oJEWpdqe9rt0zGFO", "namespace": "4DCExf9FgP9wBlJt"}, "item": {"itemId": "QasLKgzdpc37lQ5R", "itemName": "iZISQ3zLBLqQtEoy", "itemSku": "WvhLdJ8Xn3AUtMPp", "itemType": "4Vtkqk1lGf2V4zlP"}, "quantity": 7, "type": "CURRENCY"}, {"currency": {"currencyCode": "GQld9n3RaOl9LoyT", "namespace": "ykLU1tBsguGpqgLj"}, "item": {"itemId": "Ti1vIL80DMe1YiYZ", "itemName": "srmAcOViTIZBA8uR", "itemSku": "OX44ZmPipo7B7p5C", "itemType": "cMUWHqrWWFAeziGl"}, "quantity": 2, "type": "ITEM"}, {"currency": {"currencyCode": "kbdPNtHCTjrpgUlh", "namespace": "7ScaHk4vUP9txoVi"}, "item": {"itemId": "QhUB6i90hYoVbdoM", "itemName": "ZqY9FJLxvX3Pqe1v", "itemSku": "jfO8EuW8F94p64vz", "itemType": "yIvUFi740IqUEnof"}, "quantity": 5, "type": "ITEM"}]}]}' \
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
    --body '{"data": [{"platform": "PSN", "platformDlcIdMap": {"d636zvElRvoLRsur": "oYlMHL3w5c1sN0zF", "nAOSUomfxBeuqGFq": "iaT7hhgZ9DjA9Dij", "JMWt9hcDlGdLPgUj": "KpWLec6lokxzV1T4"}}, {"platform": "OCULUS", "platformDlcIdMap": {"RXPIqo5NieyDa4nI": "zxZaMbOdSUofoxGW", "Nat7oxi3tNVovLkL": "EgPn3xczyhxptGpX", "eggZRLaUjau8hUDR": "aRxPkf8cTdtQJRDY"}}, {"platform": "PSN", "platformDlcIdMap": {"hYJ1QjvEdzi92giS": "ZAzyy886ObnBQUsm", "2D0bCIBqetpOlzS9": "AYTBiDqE6LNLMey7", "okywpyvr2GfTWTWJ": "qULrfSCrqp047q9u"}}]}' \
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
    --activeOnly 'false' \
    --appType 'SOFTWARE' \
    --entitlementClazz 'ENTITLEMENT' \
    --entitlementName 'hqGryLjHDF35Gv5W' \
    --itemId '["aaF7E26kARbV2qSG", "NNYJe1Nb6c39UkJt", "hn1BbBQOdbdJ4pA5"]' \
    --limit '40' \
    --offset '12' \
    --origin 'System' \
    --userId 'k3A2cLVxQhkD1CM3' \
    > test.out 2>&1
eval_tap $? 63 'QueryEntitlements1' test.out

#- 64 QueryEntitlements
samples/cli/sample-apps Platform queryEntitlements \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --itemIds '["G0xGUA4AwNyvOkMN", "r2x4eYg3SUBW0Yzd", "RuSFLSMn81OdgpLS"]' \
    --limit '40' \
    --offset '47' \
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
    --withoutCache 'false' \
    > test.out 2>&1
eval_tap $? 66 'GetEntitlementConfigInfo' test.out

#- 67 GrantEntitlements
samples/cli/sample-apps Platform grantEntitlements \
    --namespace $AB_NAMESPACE \
    --body '{"entitlementGrantList": [{"collectionId": "eG4PqOvaJYgqyZlc", "endDate": "1982-08-28T00:00:00Z", "grantedCode": "dGKbfBGxFQOk1A61", "itemId": "sFzFDCroWrBDhFaB", "itemNamespace": "iOx34Wg7sMJvDYng", "language": "UM_cyLQ_671", "metadata": {"y41e4h3zJQ7Nsn4c": {}, "oCGEPG4kQ5VakAyk": {}, "pWP5YZaoFVHZ9Xx8": {}}, "origin": "Twitch", "quantity": 34, "region": "hPSjMsWRT2oGF3lf", "source": "REWARD", "startDate": "1995-12-29T00:00:00Z", "storeId": "oWSkEoPkZlUsYM7d"}, {"collectionId": "WxKpwL78vMuWWEfj", "endDate": "1978-06-26T00:00:00Z", "grantedCode": "YdMluSBOnvoUOEJS", "itemId": "4plgELrRelL8FdAJ", "itemNamespace": "2fCswcyfFfKdNiIh", "language": "Bup_815", "metadata": {"F36GCaMSdr87VRgV": {}, "fmjiP8dZW3l51j5h": {}, "oZbjMN3TnMhwMP7B": {}}, "origin": "Other", "quantity": 12, "region": "eEYsVFsQQvUAOvJk", "source": "REDEEM_CODE", "startDate": "1989-01-03T00:00:00Z", "storeId": "NuEoi7pbwZsM6RYC"}, {"collectionId": "lubp9XYYhELi8t1n", "endDate": "1979-05-02T00:00:00Z", "grantedCode": "ylHfUF75V2mdy5LM", "itemId": "FASp0ntYHS20d4xm", "itemNamespace": "hSwr4mpKdKY6ZiMo", "language": "Sv-508", "metadata": {"MgFA9CnyVgMEI2pR": {}, "oRtaoTWD14YbUzKQ": {}, "RePKyKntJbACP0la": {}}, "origin": "GooglePlay", "quantity": 80, "region": "Q3hx0fESeYrjv0vQ", "source": "OTHER", "startDate": "1972-08-31T00:00:00Z", "storeId": "NCMgde4heLqMBSmZ"}], "userIds": ["J73J7me8PzwCPwOT", "yPIV8dzvJP0sjKgt", "gKu2w1OSIxH6saBu"]}' \
    > test.out 2>&1
eval_tap $? 67 'GrantEntitlements' test.out

#- 68 RevokeEntitlements
samples/cli/sample-apps Platform revokeEntitlements \
    --namespace $AB_NAMESPACE \
    --body '["hVNTU44bsufYyn6x", "ffu01kgNZBExpyzs", "FZdpnQLIeHuqjGyR"]' \
    > test.out 2>&1
eval_tap $? 68 'RevokeEntitlements' test.out

#- 69 GetEntitlement
samples/cli/sample-apps Platform getEntitlement \
    --entitlementId 'y9k0AoeN2pzsFtBh' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 69 'GetEntitlement' test.out

#- 70 QueryFulfillmentHistories
samples/cli/sample-apps Platform queryFulfillmentHistories \
    --namespace $AB_NAMESPACE \
    --limit '42' \
    --offset '93' \
    --status 'FAIL' \
    --userId 'eK1LBzR0c2ncWpQL' \
    > test.out 2>&1
eval_tap $? 70 'QueryFulfillmentHistories' test.out

#- 71 QueryIAPClawbackHistory
samples/cli/sample-apps Platform queryIAPClawbackHistory \
    --namespace $AB_NAMESPACE \
    --endTime 'LlnTsKDJlehjGOck' \
    --eventType 'REFUND' \
    --externalOrderId 'p3cXWuPhBm2i9QPE' \
    --limit '4' \
    --offset '2' \
    --startTime 'PVHKPU35UlvPUJl5' \
    --status 'IGNORED' \
    --userId 'KQ76GTkaZmARrNwj' \
    > test.out 2>&1
eval_tap $? 71 'QueryIAPClawbackHistory' test.out

#- 72 MockPlayStationStreamEvent
samples/cli/sample-apps Platform mockPlayStationStreamEvent \
    --namespace $AB_NAMESPACE \
    --body '{"body": {"account": "uPqbSWHohcFuRQCZ", "additionalData": {"entitlement": [{"clientTransaction": [{"amountConsumed": 40, "clientTransactionId": "lAzN5HwWCeqcvGMk"}, {"amountConsumed": 26, "clientTransactionId": "on2XKzT4PNQnatz6"}, {"amountConsumed": 61, "clientTransactionId": "hFNhCL0Ccky2SzsL"}], "entitlementId": "UcOcqL6As75Kf0Gg", "usageCount": 73}, {"clientTransaction": [{"amountConsumed": 8, "clientTransactionId": "0EJ9gQLBsXmegXvQ"}, {"amountConsumed": 54, "clientTransactionId": "mJhuXD4G9OVlf6cX"}, {"amountConsumed": 80, "clientTransactionId": "v10z5XoSXJA66pwU"}], "entitlementId": "BnCtjZnKEtsFg6hd", "usageCount": 68}, {"clientTransaction": [{"amountConsumed": 46, "clientTransactionId": "FMI5TUsh4BXVoRIU"}, {"amountConsumed": 59, "clientTransactionId": "aVIJVuqYk2rGDRTf"}, {"amountConsumed": 17, "clientTransactionId": "vf0b44dKfgw7Db7y"}], "entitlementId": "yXS1rouvqBF91zT8", "usageCount": 68}], "purpose": "yX4fbHzQdXdNpFdG"}, "originalTitleName": "K4pwJCRVJTCwIjlY", "paymentProductSKU": "ZFxSo9ovrrLqI0xm", "purchaseDate": "HxkRfraoqFN2tna0", "sourceOrderItemId": "YRQcVXpqdomVqsVo", "titleName": "JpSKkLf1dRWPkxso"}, "eventDomain": "DXHAXlD0U41N7Yi1", "eventSource": "TThL4jy5BXS1pbRX", "eventType": "3AuLc6QmuBa0U1HN", "eventVersion": 74, "id": "Ks886JARCd6DHpDD", "timestamp": "8S6m8t9Bvlhu3vmM"}' \
    > test.out 2>&1
eval_tap $? 72 'MockPlayStationStreamEvent' test.out

#- 73 MockXblClawbackEvent
samples/cli/sample-apps Platform mockXblClawbackEvent \
    --namespace $AB_NAMESPACE \
    --body '{"data": {"eventDate": "msn4eBbbD2zsUjtN", "eventState": "g3dvBP99a37S71v7", "lineItemId": "LYwGGVuhn1ne50YL", "orderId": "3lM0HNPj6XuDZwcm", "productId": "FZj0kdBRkO99IJkq", "productType": "wBnzsMNa26x19LQN", "purchasedDate": "WDSEacK019Nziqfb", "sandboxId": "BCuHrLIlUx5ZEEYK", "skuId": "oqCKSsSqPWhK503z", "subscriptionData": {"consumedDurationInDays": 76, "dateTime": "6GMtt8stUPcLuNep", "durationInDays": 86, "recurrenceId": "4QWoMR7eMq7XKQJ4"}}, "datacontenttype": "AWsyas6m8MAulrgj", "id": "N8bSexmNZXfUhK06", "source": "oBEPdZ3aHWaFkg82", "specVersion": "GlOcNc5dwvj8gu1v", "subject": "oiYwspsbIV4MYdnN", "time": "xgO6xre0t4Jza0Qn", "traceparent": "BdQMDGcRSdWyVg7p", "type": "VEEp5tNkb5MG6e5U"}' \
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
    --body '{"appAppleId": 91, "bundleId": "CNklj7OzV59X21tJ", "issuerId": "BmSMiuvLWUW1HtNk", "keyId": "yw35sebApZkPq3jL", "password": "WADEPjqPVHOGPYPH", "version": "V2"}' \
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
    --body '{"sandboxId": "eO4S52L6bNqoDtBo"}' \
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
    --body '{"applicationName": "ie33MCt5aujpWN8B", "notificationTokenAudience": "EdLEVpWNgz9pdtr0", "notificationTokenEmail": "k2aMMaBOdz29kLxd", "packageName": "mMuZCH5o37u0mYS8", "serviceAccountId": "880rE5CCH2VW0yim"}' \
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
    --body '{"data": [{"itemIdentity": "qJ9FF85khKeBjdb4", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"LS8nWyDUX2t8WwmO": "9avTZ2Bm3lXqN9Dt", "bZELMRJSFzoAMkEd": "Yj7SvlNDWiVVBdul", "3VPMp6lPNPtclhLZ": "izrSMY6sagrUlwnn"}}, {"itemIdentity": "jFx56qFKkgkMPkau", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"QBu92vXMqOMsADP2": "p65aTA5uJmeSbDXL", "pSBnbJxbcVclhVcu": "SoyyOzwkxZ5j7EnJ", "RX5z1J5evhDSjdrX": "UCGcL25FT76M9yjC"}}, {"itemIdentity": "aPseHEVU1oMbtxO9", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"W4JcyVLFcGxJW8QY": "rERoMaLaevOZbbGd", "lVbnY9iDiwzgjkJA": "Hs5AyXuSn8m21V0v", "JUu3ZTRWrl5jZ2AU": "B27RmOeKySYCv96d"}}]}' \
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
    --body '{"appId": "bjYOKB7rZsSNt0lF", "appSecret": "SSmfuIxI9KKlbuCE"}' \
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
    --body '{"backOfficeServerClientId": "9QDjL2jvwsgA8zph", "backOfficeServerClientSecret": "ETTWMadzFGTmxnJk", "enableStreamJob": false, "environment": "xNQt1IHvhCoypNzk", "streamName": "j8wPBJFs9RmiVvvk", "streamPartnerName": "frLtPpdi9J3Q8HCH"}' \
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
    --body '{"backOfficeServerClientId": "0UvJMG0OcgOWLwdQ", "backOfficeServerClientSecret": "iBfCCT6rDllnH8uv", "enableStreamJob": true, "environment": "TcJROLaFB1LNqDcO", "streamName": "Zu0SUsMI1dGxUn5t", "streamPartnerName": "XQPMsPPdCvCXCaFM"}' \
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
    --body '{"appId": "bW9FNGkfRWis82sv", "env": "LIVE", "publisherAuthenticationKey": "TiJFgMBhFtyEZP9U", "syncMode": "TRANSACTION"}' \
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
    --body '{"clientId": "kdtJWaMxprI0fbDO", "clientSecret": "dxMMEbgAr6hAC1Di", "organizationId": "qzDXpepxL2Nee975"}' \
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
    --body '{"enableClawback": true, "entraAppClientId": "Z5W40dD0DI1jBLeq", "entraAppClientSecret": "jbYiCFZDxLsQkmBf", "entraTenantId": "9wmU9DcFG3MliAUu", "relyingPartyCert": "8DwrvHBWO2crJbmz"}' \
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
    --password 'JRWViuGifkJpnGjl' \
    > test.out 2>&1
eval_tap $? 105 'UpdateXblBPCertFile' test.out

#- 106 QueryThirdPartyNotifications
samples/cli/sample-apps Platform queryThirdPartyNotifications \
    --namespace $AB_NAMESPACE \
    --endDate '6SZ4GxMVvTXBiLYX' \
    --externalId 'lowt0dvVAnTT7isO' \
    --limit '54' \
    --offset '32' \
    --source 'OCULUS' \
    --startDate 'j6s9RGtwGNxwKeZ4' \
    --status 'WARN' \
    --type '2OCPAgDsxZd1QsCZ' \
    > test.out 2>&1
eval_tap $? 106 'QueryThirdPartyNotifications' test.out

#- 107 QueryAbnormalTransactions
samples/cli/sample-apps Platform queryAbnormalTransactions \
    --namespace $AB_NAMESPACE \
    --limit '97' \
    --offset '3' \
    --orderId 'M8iFivtWdAQYL1sZ' \
    --steamId 'odYSpGj6K3HeANU0' \
    > test.out 2>&1
eval_tap $? 107 'QueryAbnormalTransactions' test.out

#- 108 AdminGetSteamJobInfo
samples/cli/sample-apps Platform adminGetSteamJobInfo \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 108 'AdminGetSteamJobInfo' test.out

#- 109 AdminResetSteamJobTime
samples/cli/sample-apps Platform adminResetSteamJobTime \
    --namespace $AB_NAMESPACE \
    --body '{"env": "SANDBOX", "lastTime": "1985-06-22T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 109 'AdminResetSteamJobTime' test.out

#- 110 AdminRefundIAPOrder
samples/cli/sample-apps Platform adminRefundIAPOrder \
    --iapOrderNo 'sWPNddCukle0wU7p' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 110 'AdminRefundIAPOrder' test.out

#- 111 QuerySteamReportHistories
samples/cli/sample-apps Platform querySteamReportHistories \
    --namespace $AB_NAMESPACE \
    --limit '25' \
    --offset '19' \
    --orderId 'DpiEFXZlRzVOy9hg' \
    --processStatus 'ERROR' \
    --steamId 'TsZzExBFFQcTUUAK' \
    > test.out 2>&1
eval_tap $? 111 'QuerySteamReportHistories' test.out

#- 112 QueryThirdPartySubscription
samples/cli/sample-apps Platform queryThirdPartySubscription \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --groupId 'ry9QmWI22HxsIp51' \
    --limit '17' \
    --offset '26' \
    --platform 'EPICGAMES' \
    --productId 'dpvEJstSpmHmEm8X' \
    --userId 'MBebQpcEjQiR9K7e' \
    > test.out 2>&1
eval_tap $? 112 'QueryThirdPartySubscription' test.out

#- 113 GetIAPOrderConsumeDetails
samples/cli/sample-apps Platform getIAPOrderConsumeDetails \
    --iapOrderNo 'K8er7vaGodj4vzqA' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 113 'GetIAPOrderConsumeDetails' test.out

#- 114 DownloadInvoiceDetails
samples/cli/sample-apps Platform downloadInvoiceDetails \
    --namespace $AB_NAMESPACE \
    --endTime '0eeqyJpiD9b4LiPG' \
    --feature '72opPrhkhwwi27IM' \
    --itemId 'bs5QMbHDQW25SMYp' \
    --itemType 'APP' \
    --startTime 'CX6OSk6MbMsJuSYJ' \
    > test.out 2>&1
eval_tap $? 114 'DownloadInvoiceDetails' test.out

#- 115 GenerateInvoiceSummary
samples/cli/sample-apps Platform generateInvoiceSummary \
    --namespace $AB_NAMESPACE \
    --endTime 'UHtun7HkdM9mANsw' \
    --feature 'QwDud3914fwkAu4k' \
    --itemId 'hkdGcVCY6dyFsoMC' \
    --itemType 'SUBSCRIPTION' \
    --startTime 'aBLjpnlRS7fPdw7v' \
    > test.out 2>&1
eval_tap $? 115 'GenerateInvoiceSummary' test.out

#- 116 SyncInGameItem
samples/cli/sample-apps Platform syncInGameItem \
    --namespace $AB_NAMESPACE \
    --storeId 'hohNGz5kwZAJOg3R' \
    --body '{"categoryPath": "Fz5U9ko7RfBiLJpH", "targetItemId": "RGK0cXh8nnJxOwU5", "targetNamespace": "DcMCj7HeXPHI2VjZ"}' \
    > test.out 2>&1
eval_tap $? 116 'SyncInGameItem' test.out

#- 117 CreateItem
samples/cli/sample-apps Platform createItem \
    --namespace $AB_NAMESPACE \
    --storeId 't5fSineaNmNhsiKy' \
    --body '{"appId": "EGaeTtJoD0W0xu6p", "appType": "GAME", "baseAppId": "m8fjQOy2rzb30HPb", "boothName": "WNpE4Gpm0Jfstu9a", "categoryPath": "fpUcUtwUIxGGspTx", "clazz": "Wnrt5nYFPlqxAza5", "displayOrder": 32, "entitlementType": "DURABLE", "ext": {"Sli32XuTEHrSLn3U": {}, "GS1FXHlAMnFrgyr8": {}, "w54ctQ3zLMeQlhI0": {}}, "features": ["sGwondXKSnMalFMr", "4AAtt26maRysKwW5", "Unf4OFjhvVzHDct7"], "flexible": false, "images": [{"as": "9X3EkUjj3CgBGPFp", "caption": "pfOn81dhT1b15DNM", "height": 22, "imageUrl": "ebeyxocKjHWwelQP", "smallImageUrl": "G9tSo0h0k0wDm5S2", "width": 69}, {"as": "uP2guMlVIwOIjCvQ", "caption": "GGqBOd3fchsUJvI5", "height": 7, "imageUrl": "F2kwqXB6LwHt7CpF", "smallImageUrl": "UD2HJ6sTRLALTuL4", "width": 49}, {"as": "Vb3LN4A4qZI5ojEE", "caption": "XwQJuKRuzs7a2EF6", "height": 58, "imageUrl": "l2dh11kOXuZqkret", "smallImageUrl": "7GqeD6OEUFhb9dWz", "width": 41}], "inventoryConfig": {"customAttributes": {"oai1aRhOTm1pQcFD": {}, "e7gyfoIP3h4VrRE7": {}, "vcvmbkD2zycJPmRF": {}}, "serverCustomAttributes": {"sue9JKuG9cqdIKSY": {}, "wtnBJRL1sg6y1wop": {}, "8UH9Z36gzEHlROru": {}}, "slotUsed": 69}, "itemIds": ["APMFbxMRdUvSWYTk", "2w4IOmCMfWxNpDSV", "beEgGSgaOHIfF4mp"], "itemQty": {"XPQlspwHVpF07C7n": 29, "Rk7Rr31M1JGbnIFW": 12, "sFh1RmZ4puomgQSC": 42}, "itemType": "CODE", "listable": true, "localizations": {"7wh6aNqAvc8IzQ81": {"description": "5aonGTrrT8s2C0bu", "localExt": {"cE9tRLIiL3mjUoyX": {}, "M1DZokh6lQwaa4Gw": {}, "FqcnZaTjY8XMTIf4": {}}, "longDescription": "RuxZWqOcOZqU3qvw", "title": "KDgBA43twtvYdkT5"}, "thMPhlZQ0teXVbzH": {"description": "6ZrV2Pkhx8FpYuxu", "localExt": {"WDJqBdRWTLURPq38": {}, "Mr2arIGct22XZnZ0": {}, "ygVU4065bP0TKy3j": {}}, "longDescription": "LWWlwaCJ7VXtOqsy", "title": "4FCqRSkMwRzh9XeL"}, "rEgnBvT2YO6a1dC0": {"description": "1KdGsC82NlAvTMsp", "localExt": {"6OwzF4CeGRM73kV1": {}, "9CuKjN1z5puv5ezP": {}, "BzqpkFUjTkknXyVE": {}}, "longDescription": "J1dYtQUvGiNkh9BD", "title": "HnGRTSdG52CCZIFx"}}, "lootBoxConfig": {"rewardCount": 63, "rewards": [{"lootBoxItems": [{"count": 31, "duration": 76, "endDate": "1987-07-22T00:00:00Z", "itemId": "NoIZsYdmeLf6Fggr", "itemSku": "GisXuPj12zQGogTW", "itemType": "SfAEASyBpmusIndM"}, {"count": 2, "duration": 61, "endDate": "1980-01-05T00:00:00Z", "itemId": "2yGNqNIJoql1Rp1B", "itemSku": "MMcyPM9S4OwUnrCV", "itemType": "ybPN8Gc4REd47l9V"}, {"count": 73, "duration": 42, "endDate": "1996-02-13T00:00:00Z", "itemId": "JWPYsRGppi7d4qBN", "itemSku": "YrEahsBkCx3RDRxk", "itemType": "rOT0xK3Eg4GeKeft"}], "name": "vHK3n9Z8jNAxSnir", "odds": 0.03929510003528902, "type": "PROBABILITY_GROUP", "weight": 38}, {"lootBoxItems": [{"count": 84, "duration": 74, "endDate": "1980-12-19T00:00:00Z", "itemId": "zOqoihLyxGYUPuek", "itemSku": "KRQMPTdwjLwZn6Cw", "itemType": "BjfyytBQ3M3W84mr"}, {"count": 90, "duration": 40, "endDate": "1987-04-30T00:00:00Z", "itemId": "RS7Dju8n2pMNhDXs", "itemSku": "e64ujVw5xC8vqs1J", "itemType": "kJ8EhnrK2o3mMvjF"}, {"count": 88, "duration": 94, "endDate": "1976-11-04T00:00:00Z", "itemId": "w47d2Zd36htggaoa", "itemSku": "WsOc4PvsDgKn1bC8", "itemType": "scYwCkpZcULcgYdv"}], "name": "3Fs4O2VCdyOT3pre", "odds": 0.42594468813157227, "type": "REWARD_GROUP", "weight": 76}, {"lootBoxItems": [{"count": 86, "duration": 61, "endDate": "1992-03-18T00:00:00Z", "itemId": "8e59GkqCGbyakRxy", "itemSku": "R6lien6I1rjoIX5P", "itemType": "yaqoCb0PaRj5PlSu"}, {"count": 21, "duration": 79, "endDate": "1999-10-12T00:00:00Z", "itemId": "XMo5UzNjRDLFJbNs", "itemSku": "hZJP6Ed1YuXu5Vs7", "itemType": "NNSdya5Wj4PaDNG7"}, {"count": 43, "duration": 28, "endDate": "1975-09-24T00:00:00Z", "itemId": "IJnNcyNme2DD58nq", "itemSku": "cH1qbUcHxDjvZBtX", "itemType": "ycdf0nmzd0bofm4B"}], "name": "VlcwtkyFeqAgEYK0", "odds": 0.43272632206829187, "type": "REWARD_GROUP", "weight": 7}], "rollFunction": "DEFAULT"}, "maxCount": 40, "maxCountPerUser": 64, "name": "iTPDASJNAPgkPjM0", "optionBoxConfig": {"boxItems": [{"count": 24, "duration": 17, "endDate": "1992-07-06T00:00:00Z", "itemId": "fM3VyZ9vqE1liSwM", "itemSku": "JvVvHrR4wXqyDisd", "itemType": "h7O5IhhA8ydAIsGs"}, {"count": 83, "duration": 31, "endDate": "1976-01-14T00:00:00Z", "itemId": "Wp3h9chuZlfkJWku", "itemSku": "GkA0whIvMFk5g6lC", "itemType": "xSkT4BdnIoLlRMsj"}, {"count": 9, "duration": 65, "endDate": "1971-06-08T00:00:00Z", "itemId": "5v1DmQGcdZefrkmG", "itemSku": "SGBitYbrT6bdlFF3", "itemType": "ESNldeHt5Peh9A3C"}]}, "purchasable": false, "recurring": {"cycle": "MONTHLY", "fixedFreeDays": 2, "fixedTrialCycles": 43, "graceDays": 98}, "regionData": {"sLEeVsfW8uuTgvda": [{"currencyCode": "NoPyiTzlEfNte3DC", "currencyNamespace": "D2wkuua7qgD8Hndi", "currencyType": "VIRTUAL", "discountAmount": 22, "discountExpireAt": "1995-11-29T00:00:00Z", "discountPercentage": 52, "discountPurchaseAt": "1972-10-20T00:00:00Z", "expireAt": "1991-01-13T00:00:00Z", "price": 5, "purchaseAt": "1984-11-17T00:00:00Z", "trialPrice": 13}, {"currencyCode": "qYsNZtNiMjsfRyMC", "currencyNamespace": "4c4uRBDGps3ybuQB", "currencyType": "VIRTUAL", "discountAmount": 52, "discountExpireAt": "1973-06-17T00:00:00Z", "discountPercentage": 54, "discountPurchaseAt": "1996-11-25T00:00:00Z", "expireAt": "1981-01-28T00:00:00Z", "price": 51, "purchaseAt": "1979-02-19T00:00:00Z", "trialPrice": 78}, {"currencyCode": "aGnLrpOEjfqlEtqA", "currencyNamespace": "EcLyWPs3Oe6skdjT", "currencyType": "VIRTUAL", "discountAmount": 37, "discountExpireAt": "1999-09-16T00:00:00Z", "discountPercentage": 79, "discountPurchaseAt": "1985-05-28T00:00:00Z", "expireAt": "1986-11-18T00:00:00Z", "price": 9, "purchaseAt": "1996-05-18T00:00:00Z", "trialPrice": 67}], "BaRYIFEAiI3UTNoC": [{"currencyCode": "h800DVyvtfgpG24i", "currencyNamespace": "cwF8nd2NW2TYz4qp", "currencyType": "REAL", "discountAmount": 6, "discountExpireAt": "1999-01-23T00:00:00Z", "discountPercentage": 4, "discountPurchaseAt": "1975-06-27T00:00:00Z", "expireAt": "1991-06-23T00:00:00Z", "price": 70, "purchaseAt": "1985-05-01T00:00:00Z", "trialPrice": 19}, {"currencyCode": "nJ7nnDKzdu2156Y8", "currencyNamespace": "FwIUmNmF4tNsBFlV", "currencyType": "VIRTUAL", "discountAmount": 62, "discountExpireAt": "1999-05-22T00:00:00Z", "discountPercentage": 77, "discountPurchaseAt": "1980-03-03T00:00:00Z", "expireAt": "1996-03-19T00:00:00Z", "price": 43, "purchaseAt": "1997-06-22T00:00:00Z", "trialPrice": 9}, {"currencyCode": "K07cwNjqGRNEubV0", "currencyNamespace": "PVq8yXnhUEOqEwTC", "currencyType": "REAL", "discountAmount": 9, "discountExpireAt": "1986-06-06T00:00:00Z", "discountPercentage": 37, "discountPurchaseAt": "1982-06-16T00:00:00Z", "expireAt": "1974-01-30T00:00:00Z", "price": 93, "purchaseAt": "1973-06-03T00:00:00Z", "trialPrice": 33}], "UYXMuaFRGAKXAZp7": [{"currencyCode": "uNNEGVQIpH5mriLk", "currencyNamespace": "S9hg0rkgMohcUjR4", "currencyType": "REAL", "discountAmount": 74, "discountExpireAt": "1982-03-09T00:00:00Z", "discountPercentage": 34, "discountPurchaseAt": "1973-07-07T00:00:00Z", "expireAt": "1995-06-14T00:00:00Z", "price": 64, "purchaseAt": "1976-11-24T00:00:00Z", "trialPrice": 70}, {"currencyCode": "f9nhIt0v5JCSaBBl", "currencyNamespace": "dvkyY1D9SIkfPf3Y", "currencyType": "REAL", "discountAmount": 64, "discountExpireAt": "1993-07-18T00:00:00Z", "discountPercentage": 53, "discountPurchaseAt": "1991-09-18T00:00:00Z", "expireAt": "1994-11-16T00:00:00Z", "price": 47, "purchaseAt": "1979-02-19T00:00:00Z", "trialPrice": 77}, {"currencyCode": "nrHLP98YWLRfw9fv", "currencyNamespace": "aoRPAJA8ToWriDaM", "currencyType": "REAL", "discountAmount": 7, "discountExpireAt": "1999-10-05T00:00:00Z", "discountPercentage": 77, "discountPurchaseAt": "1971-07-03T00:00:00Z", "expireAt": "1974-05-31T00:00:00Z", "price": 100, "purchaseAt": "1988-09-19T00:00:00Z", "trialPrice": 93}]}, "saleConfig": {"currencyCode": "cXet8XBZB6R7wxKe", "price": 9}, "seasonType": "TIER", "sectionExclusive": false, "sellable": false, "sku": "5y8W2VxVuGp3I97H", "stackable": false, "status": "ACTIVE", "tags": ["gVqdy6svfYBpsTcD", "GAHzWkBAOYavtttz", "rYMB5o2oGXkZt5hx"], "targetCurrencyCode": "AB52ViGZsMKlmCnX", "targetNamespace": "gqqsSuratiuQz4BI", "thumbnailUrl": "wX69vYMGMKhR2jct", "useCount": 54}' \
    > test.out 2>&1
eval_tap $? 117 'CreateItem' test.out

#- 118 GetItemByAppId
samples/cli/sample-apps Platform getItemByAppId \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'cJ7TtUjx4ctgIytn' \
    --appId 'lrHoQ79Fxa6udcfL' \
    > test.out 2>&1
eval_tap $? 118 'GetItemByAppId' test.out

#- 119 QueryItems
samples/cli/sample-apps Platform queryItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --appType 'SOFTWARE' \
    --availableDate 'VoPbhyeyTbnwqRfB' \
    --baseAppId '33KKplI6oilJc3lf' \
    --categoryPath 'VbYaGvhPG00uq5XW' \
    --features 'QWLwIYddzMwIF77d' \
    --includeSubCategoryItem 'true' \
    --itemType 'BUNDLE' \
    --limit '30' \
    --offset '5' \
    --region 'drMXkH2duQLYVAPG' \
    --sortBy '["displayOrder:desc", "createdAt:asc"]' \
    --storeId 'zwnFJTh3VsgRtgWV' \
    --tags 'Av4WMogkdfCVdxcW' \
    --targetNamespace 'kmgmTiI7PTgMgcYY' \
    > test.out 2>&1
eval_tap $? 119 'QueryItems' test.out

#- 120 ListBasicItemsByFeatures
samples/cli/sample-apps Platform listBasicItemsByFeatures \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --features '["qMiQ64PxIHQC53wz", "VqevCgFERmo83q1R", "xzIkyah6dUu9JoQG"]' \
    > test.out 2>&1
eval_tap $? 120 'ListBasicItemsByFeatures' test.out

#- 121 GetItems
samples/cli/sample-apps Platform getItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --storeId 'sMoXyStTglknslsg' \
    --itemIds 'f2bZJpN9E6o53Tnh' \
    > test.out 2>&1
eval_tap $? 121 'GetItems' test.out

#- 122 GetItemBySku
samples/cli/sample-apps Platform getItemBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --storeId 'fwQiivw9XSnrja9P' \
    --sku 'g1fVWmmDoA7vVdFk' \
    > test.out 2>&1
eval_tap $? 122 'GetItemBySku' test.out

#- 123 GetLocaleItemBySku
samples/cli/sample-apps Platform getLocaleItemBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --language 'G51vFOpFn5aZyWe0' \
    --populateBundle 'true' \
    --region 'pg6Pzd6fQKH00wmO' \
    --storeId 'NCQyphjPNKCqPSBl' \
    --sku '9Tu2t7ohJB2et15Q' \
    > test.out 2>&1
eval_tap $? 123 'GetLocaleItemBySku' test.out

#- 124 GetEstimatedPrice
samples/cli/sample-apps Platform getEstimatedPrice \
    --namespace $AB_NAMESPACE \
    --platform '3FI123xblAm0wRxm' \
    --region 'Y95W76jovaxxe1RU' \
    --storeId 'CLpmZooXHDJVrKtR' \
    --itemIds 'cIgjgEnIpjkNjLTf' \
    --userId '5MzV3hdnRcKqEjlK' \
    > test.out 2>&1
eval_tap $? 124 'GetEstimatedPrice' test.out

#- 125 GetItemIdBySku
samples/cli/sample-apps Platform getItemIdBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --storeId 'R1HPikcoKeSgngLp' \
    --sku 'm5Zy4E5fwcQrt0HC' \
    > test.out 2>&1
eval_tap $? 125 'GetItemIdBySku' test.out

#- 126 GetBulkItemIdBySkus
samples/cli/sample-apps Platform getBulkItemIdBySkus \
    --namespace $AB_NAMESPACE \
    --sku '["aotRsWRzy7bTOEMn", "OLI1UvOJU43DVoVZ", "GkCicTdwu4woUD3l"]' \
    --storeId 'BrfdFufpopCa2M22' \
    > test.out 2>&1
eval_tap $? 126 'GetBulkItemIdBySkus' test.out

#- 127 BulkGetLocaleItems
samples/cli/sample-apps Platform bulkGetLocaleItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --language '0Z3SIjI4ENHpmP6i' \
    --region 'IEDfypTCDgnx37aI' \
    --storeId 'Vq6pJX0Upxv7HEmv' \
    --itemIds 'nvzKUUTIDeHEdx2R' \
    > test.out 2>&1
eval_tap $? 127 'BulkGetLocaleItems' test.out

#- 128 GetAvailablePredicateTypes
samples/cli/sample-apps Platform getAvailablePredicateTypes \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 128 'GetAvailablePredicateTypes' test.out

#- 129 ValidateItemPurchaseCondition
samples/cli/sample-apps Platform validateItemPurchaseCondition \
    --namespace $AB_NAMESPACE \
    --platform '9yyjMRkU0sd7Ir26' \
    --userId 'S2D3P7PH2hrLFseo' \
    --body '{"itemIds": ["dTO6TqNUfTFWZgBn", "jcz7A9thHnirbS1F", "rT428JXnSNrhjSHe"]}' \
    > test.out 2>&1
eval_tap $? 129 'ValidateItemPurchaseCondition' test.out

#- 130 BulkUpdateRegionData
samples/cli/sample-apps Platform bulkUpdateRegionData \
    --namespace $AB_NAMESPACE \
    --storeId 'DIm2CjaPUi38UW3H' \
    --body '{"changes": [{"itemIdentities": ["PaNMSXaoiNvyT0HL", "rwGQTm0Vx8NawXJt", "I5Fo8aPfPFM6mMzn"], "itemIdentityType": "ITEM_SKU", "regionData": {"XSqOV0rVz5XvA2Mm": [{"currencyCode": "N147LxTVTaLXJgAF", "currencyNamespace": "7aLUJ8pLuBGosnnA", "currencyType": "VIRTUAL", "discountAmount": 14, "discountExpireAt": "1979-12-12T00:00:00Z", "discountPercentage": 7, "discountPurchaseAt": "1992-05-08T00:00:00Z", "discountedPrice": 13, "expireAt": "1987-05-09T00:00:00Z", "price": 59, "purchaseAt": "1982-03-26T00:00:00Z", "trialPrice": 80}, {"currencyCode": "WrO0LKzcsfLq8fnu", "currencyNamespace": "hTTpzpbAphvdwGx5", "currencyType": "REAL", "discountAmount": 31, "discountExpireAt": "1995-09-10T00:00:00Z", "discountPercentage": 3, "discountPurchaseAt": "1981-05-11T00:00:00Z", "discountedPrice": 71, "expireAt": "1988-01-31T00:00:00Z", "price": 76, "purchaseAt": "1997-12-26T00:00:00Z", "trialPrice": 63}, {"currencyCode": "SxHOT81s56P0d51w", "currencyNamespace": "DPTXh5jyevTDVIyx", "currencyType": "REAL", "discountAmount": 69, "discountExpireAt": "1994-11-23T00:00:00Z", "discountPercentage": 13, "discountPurchaseAt": "1979-09-29T00:00:00Z", "discountedPrice": 50, "expireAt": "1986-08-28T00:00:00Z", "price": 15, "purchaseAt": "1980-08-17T00:00:00Z", "trialPrice": 93}], "mZ566NDdYFpNvDd2": [{"currencyCode": "N5UQgWmzYhnM3q3B", "currencyNamespace": "2FT7FPhrZzGehEoq", "currencyType": "VIRTUAL", "discountAmount": 49, "discountExpireAt": "1995-05-27T00:00:00Z", "discountPercentage": 20, "discountPurchaseAt": "1990-12-24T00:00:00Z", "discountedPrice": 43, "expireAt": "1972-08-07T00:00:00Z", "price": 8, "purchaseAt": "1998-01-07T00:00:00Z", "trialPrice": 39}, {"currencyCode": "GFnXiWv6BkbmOknq", "currencyNamespace": "nOVuYGKEtjT93eRt", "currencyType": "REAL", "discountAmount": 51, "discountExpireAt": "1971-05-13T00:00:00Z", "discountPercentage": 47, "discountPurchaseAt": "1983-02-17T00:00:00Z", "discountedPrice": 7, "expireAt": "1975-10-02T00:00:00Z", "price": 47, "purchaseAt": "1973-02-25T00:00:00Z", "trialPrice": 29}, {"currencyCode": "8lbi2XBpmkBaFCHu", "currencyNamespace": "58plDxpBMCq7kPsv", "currencyType": "VIRTUAL", "discountAmount": 4, "discountExpireAt": "1975-11-02T00:00:00Z", "discountPercentage": 5, "discountPurchaseAt": "1986-05-09T00:00:00Z", "discountedPrice": 37, "expireAt": "1973-07-20T00:00:00Z", "price": 28, "purchaseAt": "1999-08-18T00:00:00Z", "trialPrice": 49}], "zpxSicn14oOjVII1": [{"currencyCode": "O6XEE2NKI0AtrzKh", "currencyNamespace": "GJb4yGhQ5MeKQFt0", "currencyType": "VIRTUAL", "discountAmount": 72, "discountExpireAt": "1990-11-10T00:00:00Z", "discountPercentage": 39, "discountPurchaseAt": "1991-07-07T00:00:00Z", "discountedPrice": 46, "expireAt": "1997-03-28T00:00:00Z", "price": 93, "purchaseAt": "1974-07-11T00:00:00Z", "trialPrice": 32}, {"currencyCode": "Lj3EisdDaWQUoXIh", "currencyNamespace": "TgyZiohHghXSRCUY", "currencyType": "VIRTUAL", "discountAmount": 53, "discountExpireAt": "1990-05-05T00:00:00Z", "discountPercentage": 21, "discountPurchaseAt": "1980-01-29T00:00:00Z", "discountedPrice": 91, "expireAt": "1986-03-25T00:00:00Z", "price": 59, "purchaseAt": "1995-09-13T00:00:00Z", "trialPrice": 50}, {"currencyCode": "GALKpDqoSvnpEKnX", "currencyNamespace": "ISi3n0NW4ukvpAJP", "currencyType": "VIRTUAL", "discountAmount": 53, "discountExpireAt": "1988-02-24T00:00:00Z", "discountPercentage": 49, "discountPurchaseAt": "1990-08-17T00:00:00Z", "discountedPrice": 67, "expireAt": "1982-11-20T00:00:00Z", "price": 99, "purchaseAt": "1992-02-21T00:00:00Z", "trialPrice": 14}]}}, {"itemIdentities": ["3ihiDpDqjWfi25c2", "XVwOTmsbztGrgfGj", "Jk7tpHyfWEbM4j5V"], "itemIdentityType": "ITEM_ID", "regionData": {"zvyrFgFw9yPjofef": [{"currencyCode": "kgmEHXsgm3xkfimY", "currencyNamespace": "7krOKdcdMJAjycLc", "currencyType": "REAL", "discountAmount": 45, "discountExpireAt": "1999-09-07T00:00:00Z", "discountPercentage": 76, "discountPurchaseAt": "1981-12-18T00:00:00Z", "discountedPrice": 6, "expireAt": "1993-06-27T00:00:00Z", "price": 20, "purchaseAt": "1980-12-27T00:00:00Z", "trialPrice": 28}, {"currencyCode": "fQRwW8SWu5xuVGAq", "currencyNamespace": "X05jgvgwSAO6d0ZK", "currencyType": "VIRTUAL", "discountAmount": 81, "discountExpireAt": "1982-04-29T00:00:00Z", "discountPercentage": 56, "discountPurchaseAt": "1999-07-23T00:00:00Z", "discountedPrice": 100, "expireAt": "1994-08-14T00:00:00Z", "price": 51, "purchaseAt": "1983-12-10T00:00:00Z", "trialPrice": 89}, {"currencyCode": "fnYSoBzGJhg5GTaV", "currencyNamespace": "6Lm1RNEfH4vFO0ZY", "currencyType": "REAL", "discountAmount": 66, "discountExpireAt": "1984-07-17T00:00:00Z", "discountPercentage": 56, "discountPurchaseAt": "1976-08-24T00:00:00Z", "discountedPrice": 29, "expireAt": "1980-05-09T00:00:00Z", "price": 89, "purchaseAt": "1975-05-08T00:00:00Z", "trialPrice": 65}], "qhKz2SMNE0tIDVpG": [{"currencyCode": "8pHx0y59qvQtQuvX", "currencyNamespace": "nfpLXqV7pe5HjONU", "currencyType": "VIRTUAL", "discountAmount": 27, "discountExpireAt": "1997-03-15T00:00:00Z", "discountPercentage": 19, "discountPurchaseAt": "1989-06-22T00:00:00Z", "discountedPrice": 46, "expireAt": "1986-05-02T00:00:00Z", "price": 31, "purchaseAt": "1982-02-10T00:00:00Z", "trialPrice": 68}, {"currencyCode": "3haUmXeOVt3Ylrb2", "currencyNamespace": "bXetB2WqQgySNE2W", "currencyType": "VIRTUAL", "discountAmount": 47, "discountExpireAt": "1989-05-14T00:00:00Z", "discountPercentage": 8, "discountPurchaseAt": "1981-10-23T00:00:00Z", "discountedPrice": 33, "expireAt": "1985-07-02T00:00:00Z", "price": 94, "purchaseAt": "1976-05-31T00:00:00Z", "trialPrice": 94}, {"currencyCode": "xGgMMbPtvHstG5Pm", "currencyNamespace": "zSk1C4OLTcbzFNEr", "currencyType": "VIRTUAL", "discountAmount": 96, "discountExpireAt": "1988-05-30T00:00:00Z", "discountPercentage": 2, "discountPurchaseAt": "1989-12-11T00:00:00Z", "discountedPrice": 62, "expireAt": "1988-10-29T00:00:00Z", "price": 1, "purchaseAt": "1973-07-04T00:00:00Z", "trialPrice": 47}], "7yiOxOUYve9jTVDm": [{"currencyCode": "O1jWGML54H2eKbQe", "currencyNamespace": "xVb4HQHLiiHCm27c", "currencyType": "VIRTUAL", "discountAmount": 43, "discountExpireAt": "1972-10-03T00:00:00Z", "discountPercentage": 0, "discountPurchaseAt": "1989-02-14T00:00:00Z", "discountedPrice": 83, "expireAt": "1988-04-04T00:00:00Z", "price": 17, "purchaseAt": "1982-10-31T00:00:00Z", "trialPrice": 99}, {"currencyCode": "P2VBPIq7FD3SgsTJ", "currencyNamespace": "s7jEWrIB9vK3YHdO", "currencyType": "VIRTUAL", "discountAmount": 10, "discountExpireAt": "1989-12-16T00:00:00Z", "discountPercentage": 3, "discountPurchaseAt": "1985-09-08T00:00:00Z", "discountedPrice": 82, "expireAt": "1972-12-26T00:00:00Z", "price": 5, "purchaseAt": "1998-05-16T00:00:00Z", "trialPrice": 89}, {"currencyCode": "0szskQULWb6EPnDc", "currencyNamespace": "KFlLfcx1vfNOMkeR", "currencyType": "REAL", "discountAmount": 37, "discountExpireAt": "1979-05-15T00:00:00Z", "discountPercentage": 84, "discountPurchaseAt": "1997-03-29T00:00:00Z", "discountedPrice": 19, "expireAt": "1976-03-13T00:00:00Z", "price": 56, "purchaseAt": "1996-04-14T00:00:00Z", "trialPrice": 35}]}}, {"itemIdentities": ["hrmL4GCb4i3Bed56", "VMf8iUFyxBaaS8zy", "azVdw8tzgOF2yUYc"], "itemIdentityType": "ITEM_ID", "regionData": {"HW1vQOMsXwcwLLtM": [{"currencyCode": "TklPgRGEjufFYIRq", "currencyNamespace": "jOnhlE2K5psudZft", "currencyType": "REAL", "discountAmount": 60, "discountExpireAt": "1988-03-11T00:00:00Z", "discountPercentage": 16, "discountPurchaseAt": "1992-04-29T00:00:00Z", "discountedPrice": 26, "expireAt": "1993-02-01T00:00:00Z", "price": 16, "purchaseAt": "1983-04-24T00:00:00Z", "trialPrice": 71}, {"currencyCode": "BCS5htTRmYl6wu6u", "currencyNamespace": "hEUgDmdUvDphcehh", "currencyType": "VIRTUAL", "discountAmount": 35, "discountExpireAt": "1991-01-20T00:00:00Z", "discountPercentage": 34, "discountPurchaseAt": "1974-03-30T00:00:00Z", "discountedPrice": 87, "expireAt": "1998-03-16T00:00:00Z", "price": 23, "purchaseAt": "1987-04-30T00:00:00Z", "trialPrice": 55}, {"currencyCode": "JzeYoLy532j9sHLo", "currencyNamespace": "4iAoNK9mfpq8bA7o", "currencyType": "REAL", "discountAmount": 54, "discountExpireAt": "1986-09-04T00:00:00Z", "discountPercentage": 61, "discountPurchaseAt": "1985-11-06T00:00:00Z", "discountedPrice": 17, "expireAt": "1993-04-14T00:00:00Z", "price": 53, "purchaseAt": "1999-02-02T00:00:00Z", "trialPrice": 41}], "e9tBb3ukzsycdxee": [{"currencyCode": "kvpTlImYyD756IuL", "currencyNamespace": "hxmNOxsAIrPj8gQ7", "currencyType": "VIRTUAL", "discountAmount": 62, "discountExpireAt": "1987-07-14T00:00:00Z", "discountPercentage": 34, "discountPurchaseAt": "1986-12-09T00:00:00Z", "discountedPrice": 42, "expireAt": "1985-06-18T00:00:00Z", "price": 24, "purchaseAt": "1983-11-04T00:00:00Z", "trialPrice": 11}, {"currencyCode": "g37c48blJ3KUMMHg", "currencyNamespace": "usrAfynYJObCA9yD", "currencyType": "REAL", "discountAmount": 12, "discountExpireAt": "1985-01-12T00:00:00Z", "discountPercentage": 43, "discountPurchaseAt": "1990-12-11T00:00:00Z", "discountedPrice": 100, "expireAt": "1995-07-20T00:00:00Z", "price": 76, "purchaseAt": "1973-03-10T00:00:00Z", "trialPrice": 91}, {"currencyCode": "S0bM6nVzzIFGACJe", "currencyNamespace": "D8cZq3iASr2GaIsP", "currencyType": "REAL", "discountAmount": 3, "discountExpireAt": "1977-09-17T00:00:00Z", "discountPercentage": 25, "discountPurchaseAt": "1985-12-11T00:00:00Z", "discountedPrice": 40, "expireAt": "1990-11-06T00:00:00Z", "price": 59, "purchaseAt": "1996-02-19T00:00:00Z", "trialPrice": 26}], "amNG1iDL99IydTBf": [{"currencyCode": "KXoz6WhABx4MnICB", "currencyNamespace": "tJ5PRsDs5eFum0ZW", "currencyType": "VIRTUAL", "discountAmount": 39, "discountExpireAt": "1971-10-23T00:00:00Z", "discountPercentage": 22, "discountPurchaseAt": "1973-06-29T00:00:00Z", "discountedPrice": 48, "expireAt": "1987-07-09T00:00:00Z", "price": 68, "purchaseAt": "1997-06-03T00:00:00Z", "trialPrice": 83}, {"currencyCode": "GhFSayTauNnkmxUK", "currencyNamespace": "2AsZXPRFKGpV1eDS", "currencyType": "REAL", "discountAmount": 32, "discountExpireAt": "1992-05-12T00:00:00Z", "discountPercentage": 1, "discountPurchaseAt": "1985-03-22T00:00:00Z", "discountedPrice": 27, "expireAt": "1978-03-18T00:00:00Z", "price": 7, "purchaseAt": "1975-07-21T00:00:00Z", "trialPrice": 4}, {"currencyCode": "hyNqiyKVxlOoPq3e", "currencyNamespace": "ow5bSHbbiSh6raOl", "currencyType": "VIRTUAL", "discountAmount": 55, "discountExpireAt": "1994-02-27T00:00:00Z", "discountPercentage": 42, "discountPurchaseAt": "1974-02-07T00:00:00Z", "discountedPrice": 13, "expireAt": "1983-07-01T00:00:00Z", "price": 84, "purchaseAt": "1991-04-25T00:00:00Z", "trialPrice": 24}]}}]}' \
    > test.out 2>&1
eval_tap $? 130 'BulkUpdateRegionData' test.out

#- 131 SearchItems
samples/cli/sample-apps Platform searchItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --itemType 'SUBSCRIPTION' \
    --limit '34' \
    --offset '69' \
    --sortBy 'LV8QvVcq9KcGXp1q' \
    --storeId 'drJSn0vhqsxRA25W' \
    --keyword 'K43jJfreFPYTRRBI' \
    --language 'HYjkMOQmdtLJaT1t' \
    > test.out 2>&1
eval_tap $? 131 'SearchItems' test.out

#- 132 QueryUncategorizedItems
samples/cli/sample-apps Platform queryUncategorizedItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --limit '86' \
    --offset '56' \
    --sortBy '["updatedAt", "createdAt:asc", "updatedAt:desc"]' \
    --storeId 'oVdy2kpe8YKehCeW' \
    > test.out 2>&1
eval_tap $? 132 'QueryUncategorizedItems' test.out

#- 133 GetItem
samples/cli/sample-apps Platform getItem \
    --itemId 'Hysko3LsH7YBdZ26' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'IT1qetDnzhCyzYb3' \
    > test.out 2>&1
eval_tap $? 133 'GetItem' test.out

#- 134 UpdateItem
samples/cli/sample-apps Platform updateItem \
    --itemId 'lPRpotPvbgx8rIe5' \
    --namespace $AB_NAMESPACE \
    --storeId '3PESiMhuVvaNoVQA' \
    --body '{"appId": "zSZy4cccGdcoVCLQ", "appType": "DEMO", "baseAppId": "1dO2XBIRAqxHnP84", "boothName": "jAs8jpdDle9j1VGU", "categoryPath": "6LjHeucPOxMzLWj3", "clazz": "ktdBASAbSp8gzQOl", "displayOrder": 98, "entitlementType": "DURABLE", "ext": {"QXbeiHKyiYYwYRII": {}, "FYi9yuCmNIBlcagF": {}, "dTf3UxmjoRFnowfT": {}}, "features": ["4olsAzAQEklT42zO", "w3jEG8ap8KH6peCr", "Ri51aPZPHHSDg9Jj"], "flexible": false, "images": [{"as": "qeZn0394NScI3Rx2", "caption": "hPg4Rlhhs49sTCwq", "height": 71, "imageUrl": "1BEsUt10TZElWbY5", "smallImageUrl": "qZClvsvoxNaBnr8D", "width": 24}, {"as": "TKEVnUZXOqBZMHpQ", "caption": "seB9fbAO9C8SkpwN", "height": 1, "imageUrl": "qwCt4kT7xL7ZDHmI", "smallImageUrl": "7IGSPmiJyu8ow8Py", "width": 5}, {"as": "HQE3IV8VnsyosllJ", "caption": "ztuIfbqenKCsXVoe", "height": 7, "imageUrl": "Xgzd0JJX8AMwVr51", "smallImageUrl": "z6Nz6KZiiJ1zM3IB", "width": 66}], "inventoryConfig": {"customAttributes": {"hT2QeAPjVnl5w3OO": {}, "PWAGUWH2hkkAtiFG": {}, "bHk6BAmDpT5QqwCk": {}}, "serverCustomAttributes": {"mcPyDgeSlq42Lhr6": {}, "f8c5tg6gdEXI2ztp": {}, "hb7huK6O7rOx5c54": {}}, "slotUsed": 21}, "itemIds": ["ZKHzAqr1nKHTYfjm", "gWDmGhKfgJdM0wYj", "k2vBgw5fifkgxzP1"], "itemQty": {"ggI96tBEm6CxTEDB": 41, "0MotgZuym4y4jRdl": 17, "FFcTRL7LjKsAA2Sh": 54}, "itemType": "APP", "listable": true, "localizations": {"OV2ErJdZ8ophzZ9H": {"description": "KrhWC9FkAzPCy1W1", "localExt": {"5Q7D5xaV7sZTWIHQ": {}, "TfYQ0P4XN8Q8TkCb": {}, "5QNW0GfWVSupPFNf": {}}, "longDescription": "rjidZDNk4ZaEIYdc", "title": "5pher1Vi9vKE0TPs"}, "K9DGCr7xPkhPDsOZ": {"description": "133tRMQtUrIP7k0s", "localExt": {"H4xICC0hA59DOEWG": {}, "akMKQDARA8s9kyGY": {}, "k5s5r4YjFXKQtuXf": {}}, "longDescription": "RPMcK2PLILu4WHMB", "title": "DrMnQDpY6m9qVJUb"}, "Z818eGzAZcbTAR4R": {"description": "BRevQJ5ckgmeDbeV", "localExt": {"2joLTRQvk1YtaL1o": {}, "K5G9Y8EYLL1PpX12": {}, "BMaMm52MlkXaEJpl": {}}, "longDescription": "cbzcWC3Vkvp1m8E2", "title": "H8bRx8ra3HkvczSB"}}, "lootBoxConfig": {"rewardCount": 9, "rewards": [{"lootBoxItems": [{"count": 17, "duration": 9, "endDate": "1989-08-22T00:00:00Z", "itemId": "fRZeEJ5vyLzyzD9z", "itemSku": "XlBx78UalAWUKBED", "itemType": "9EvQKDY9pIAiTBVT"}, {"count": 64, "duration": 63, "endDate": "1975-01-27T00:00:00Z", "itemId": "aNMVtWzfpDIsyhmb", "itemSku": "yfeQX1FMeE1jr08k", "itemType": "b6s2NL0lKQyoqaV4"}, {"count": 11, "duration": 79, "endDate": "1991-03-24T00:00:00Z", "itemId": "z3EKIuEyr0ZijIYI", "itemSku": "77oK4SdrYGcq1UNg", "itemType": "WJs84PvREDE3y6Sj"}], "name": "7tFxj2Goi1ApiGnQ", "odds": 0.25138539895194345, "type": "PROBABILITY_GROUP", "weight": 60}, {"lootBoxItems": [{"count": 98, "duration": 81, "endDate": "1996-10-21T00:00:00Z", "itemId": "vzgceLCWWGDC5LMR", "itemSku": "0ayZwW72uVeowpLd", "itemType": "bCqrXi2K4SCCISze"}, {"count": 39, "duration": 86, "endDate": "1973-05-21T00:00:00Z", "itemId": "tOXHBzHSC6KdnMZf", "itemSku": "ZQ1X4kNcoR6cXYLz", "itemType": "qwLznIe8UYsWQ1y3"}, {"count": 37, "duration": 44, "endDate": "1971-12-26T00:00:00Z", "itemId": "ofVyOvYICutCezu6", "itemSku": "0Oi09btKSGHoghXp", "itemType": "JNG2qQBM5t60UcTP"}], "name": "TJTRQWLdNDgoDcX6", "odds": 0.8599404051243054, "type": "REWARD_GROUP", "weight": 27}, {"lootBoxItems": [{"count": 6, "duration": 81, "endDate": "1976-02-16T00:00:00Z", "itemId": "wpagY1ZXtvwzsd4q", "itemSku": "ZqkpU46NFkuv2WQR", "itemType": "NZrkBkNQvRQkaSHS"}, {"count": 71, "duration": 78, "endDate": "1975-05-20T00:00:00Z", "itemId": "6fd5rHvCvWk2SJWM", "itemSku": "czH2dU6ELVlIAINE", "itemType": "740eOOAZzx1TtA25"}, {"count": 84, "duration": 82, "endDate": "1992-05-09T00:00:00Z", "itemId": "0xB4UvDvxfzw39YE", "itemSku": "0wtuzUvGm8BHSVv9", "itemType": "4Zu1Mr4ZvoJQA8kq"}], "name": "tbxWcFy8yXnr6zmk", "odds": 0.8103239542797549, "type": "REWARD_GROUP", "weight": 9}], "rollFunction": "CUSTOM"}, "maxCount": 63, "maxCountPerUser": 88, "name": "qCZjPOXHX83jsOrf", "optionBoxConfig": {"boxItems": [{"count": 49, "duration": 97, "endDate": "1973-10-16T00:00:00Z", "itemId": "LyE9qRO03fBgpbbj", "itemSku": "kfGTfLuEgNIgS9cl", "itemType": "7sX12WLflA8WpYtG"}, {"count": 93, "duration": 70, "endDate": "1981-11-17T00:00:00Z", "itemId": "VvmO7ZkV108QgT6n", "itemSku": "9BxOs4drNDZB1WFo", "itemType": "yVZU6HfERdP4pORM"}, {"count": 9, "duration": 76, "endDate": "1982-07-10T00:00:00Z", "itemId": "PTzQ4Vk2pMmAaTpW", "itemSku": "EWnwM6CDqZpgIrF3", "itemType": "k7NWSFYsXJ9CFw67"}]}, "purchasable": true, "recurring": {"cycle": "MONTHLY", "fixedFreeDays": 67, "fixedTrialCycles": 11, "graceDays": 85}, "regionData": {"oT41ZeXHwxf675Tl": [{"currencyCode": "taEd8P81d268VE1j", "currencyNamespace": "K73tWZ8q5mrAXS0S", "currencyType": "REAL", "discountAmount": 19, "discountExpireAt": "1977-01-17T00:00:00Z", "discountPercentage": 66, "discountPurchaseAt": "1979-12-09T00:00:00Z", "expireAt": "1998-05-26T00:00:00Z", "price": 90, "purchaseAt": "1990-01-07T00:00:00Z", "trialPrice": 31}, {"currencyCode": "facxfEJpcDzI4s6K", "currencyNamespace": "5g4dOE7OxkB4XzTV", "currencyType": "VIRTUAL", "discountAmount": 72, "discountExpireAt": "1983-10-24T00:00:00Z", "discountPercentage": 26, "discountPurchaseAt": "1979-11-05T00:00:00Z", "expireAt": "1992-07-30T00:00:00Z", "price": 42, "purchaseAt": "1994-10-17T00:00:00Z", "trialPrice": 49}, {"currencyCode": "QxGrX35zV3oxzoih", "currencyNamespace": "XjcWMQLwq4H4SQYv", "currencyType": "VIRTUAL", "discountAmount": 40, "discountExpireAt": "1997-04-03T00:00:00Z", "discountPercentage": 72, "discountPurchaseAt": "1994-09-26T00:00:00Z", "expireAt": "1974-03-14T00:00:00Z", "price": 45, "purchaseAt": "1997-09-29T00:00:00Z", "trialPrice": 97}], "Mj9n2BS1FTKVXhdj": [{"currencyCode": "0tKisSDhSVrVZvWV", "currencyNamespace": "66jkSNLQOMPFNfll", "currencyType": "REAL", "discountAmount": 84, "discountExpireAt": "1992-04-20T00:00:00Z", "discountPercentage": 100, "discountPurchaseAt": "1989-01-15T00:00:00Z", "expireAt": "1997-06-03T00:00:00Z", "price": 75, "purchaseAt": "1983-06-18T00:00:00Z", "trialPrice": 50}, {"currencyCode": "vrdyGQaPszxBIH2j", "currencyNamespace": "npeenw0kfX3DHjbM", "currencyType": "REAL", "discountAmount": 65, "discountExpireAt": "1982-06-09T00:00:00Z", "discountPercentage": 96, "discountPurchaseAt": "1987-08-23T00:00:00Z", "expireAt": "1980-07-19T00:00:00Z", "price": 0, "purchaseAt": "1985-02-16T00:00:00Z", "trialPrice": 97}, {"currencyCode": "oYPxNr3XA5eyyaCM", "currencyNamespace": "4jXkQnlsLmvs6nsY", "currencyType": "VIRTUAL", "discountAmount": 7, "discountExpireAt": "1972-06-27T00:00:00Z", "discountPercentage": 16, "discountPurchaseAt": "1991-11-22T00:00:00Z", "expireAt": "1978-11-08T00:00:00Z", "price": 61, "purchaseAt": "1976-11-12T00:00:00Z", "trialPrice": 94}], "ltWVkUuCWtvjfevq": [{"currencyCode": "JTSKS6jes7RmefSo", "currencyNamespace": "vbsk0zLInPxIsWoj", "currencyType": "REAL", "discountAmount": 36, "discountExpireAt": "1986-07-30T00:00:00Z", "discountPercentage": 2, "discountPurchaseAt": "1994-10-13T00:00:00Z", "expireAt": "1989-12-23T00:00:00Z", "price": 82, "purchaseAt": "1993-06-28T00:00:00Z", "trialPrice": 24}, {"currencyCode": "KxF54HiJO6ovIInm", "currencyNamespace": "1heyvb7RkNI0V6sI", "currencyType": "REAL", "discountAmount": 88, "discountExpireAt": "1983-01-30T00:00:00Z", "discountPercentage": 52, "discountPurchaseAt": "1993-10-10T00:00:00Z", "expireAt": "1985-07-17T00:00:00Z", "price": 86, "purchaseAt": "1973-10-22T00:00:00Z", "trialPrice": 41}, {"currencyCode": "k0NrKyHtrtBzycBX", "currencyNamespace": "QBioN4OT9SWIWS7i", "currencyType": "VIRTUAL", "discountAmount": 10, "discountExpireAt": "1980-12-02T00:00:00Z", "discountPercentage": 47, "discountPurchaseAt": "1995-05-19T00:00:00Z", "expireAt": "1983-01-31T00:00:00Z", "price": 8, "purchaseAt": "1986-04-18T00:00:00Z", "trialPrice": 68}]}, "saleConfig": {"currencyCode": "EBzwtqbjlyJZbJtd", "price": 32}, "seasonType": "PASS", "sectionExclusive": true, "sellable": true, "sku": "wHQOeq1Y3l9nqTuJ", "stackable": true, "status": "ACTIVE", "tags": ["lLNQhpiJT6syWQyF", "9YpicVAeVyaT3vnV", "UoHPrqugomPKsB3I"], "targetCurrencyCode": "hpJiLryJHEVp6qtj", "targetNamespace": "w14gurlhpmKfhCO3", "thumbnailUrl": "TNAemTguptFmenHm", "useCount": 16}' \
    > test.out 2>&1
eval_tap $? 134 'UpdateItem' test.out

#- 135 DeleteItem
samples/cli/sample-apps Platform deleteItem \
    --itemId 'GJSJVuS6ptMPbWOl' \
    --namespace $AB_NAMESPACE \
    --featuresToCheck '["DLC", "REWARD", "IAP"]' \
    --force 'false' \
    --storeId 'oDmiHIIvs3AakhDY' \
    > test.out 2>&1
eval_tap $? 135 'DeleteItem' test.out

#- 136 AcquireItem
samples/cli/sample-apps Platform acquireItem \
    --itemId 'Fm3IDxIF3etJa4pb' \
    --namespace $AB_NAMESPACE \
    --body '{"count": 63, "orderNo": "6s6ivoSxAFKj8sWc"}' \
    > test.out 2>&1
eval_tap $? 136 'AcquireItem' test.out

#- 137 GetApp
samples/cli/sample-apps Platform getApp \
    --itemId 'kOza0wVL3ZOhr9Xl' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'kDjzq7xBuHYG2vNv' \
    > test.out 2>&1
eval_tap $? 137 'GetApp' test.out

#- 138 UpdateApp
samples/cli/sample-apps Platform updateApp \
    --itemId 'jWMZfqY1M2GMZMmV' \
    --namespace $AB_NAMESPACE \
    --storeId 'JvHvJdV22rjwVFwj' \
    --body '{"carousel": [{"alt": "z5WaSUySX3gwj7o2", "previewUrl": "MjM6OWfBGa4pcTjC", "thumbnailUrl": "aASXctJ7WYrUTmG9", "type": "video", "url": "08k7RGv3dfayrcVl", "videoSource": "vimeo"}, {"alt": "lq4ZJGIhcyawq8jz", "previewUrl": "lFbLn5GqtzYIrA5e", "thumbnailUrl": "ChRQQAdxWk5oPIFS", "type": "image", "url": "tbk6mvRVcEWkDKO5", "videoSource": "vimeo"}, {"alt": "j0HW4NRaTd55cik4", "previewUrl": "r2fhMb6Dh5sDunEB", "thumbnailUrl": "f1JrTDd02c3vG5yR", "type": "image", "url": "dl6fmBnJy9poBVqu", "videoSource": "vimeo"}], "developer": "C28t9BBf2iqPBBIG", "forumUrl": "OpnFRqVnrneR9iJL", "genres": ["Action", "Simulation", "FreeToPlay"], "localizations": {"TsMeiYLaaXlBSDVM": {"announcement": "JZkBlEh6dKss25td", "slogan": "3QPfonVALGSKYmLn"}, "FcrWEgyguZL73kkR": {"announcement": "wBTVEPGfKX35kXFx", "slogan": "iubsN3A8jjG4oCYU"}, "MaiKTTUKw7LKyL37": {"announcement": "606CHY3Cre7itZF3", "slogan": "hSvofwLnt99UNiiY"}}, "platformRequirements": {"ZQcQVWhjn948qSge": [{"additionals": "7ko5qlenwnbpENpC", "directXVersion": "8DA9xd6Z7HV7FHlF", "diskSpace": "zsaZ9Jit1bkP2Pq1", "graphics": "PTsNwzY472khrdtk", "label": "uCrkMtbYrsDMKCnK", "osVersion": "gbranJiTPXYPc8n2", "processor": "LaPwPnqjax2jKCLB", "ram": "qRCgOccD25Mbn6rH", "soundCard": "vJ2LYaGZHFLPqOgJ"}, {"additionals": "mtIMozCzXmFVgRvb", "directXVersion": "7IowWiLDxqlk9Zxb", "diskSpace": "qXXKPCVG0UbHg7WB", "graphics": "IPjR7ViDd1PQuLCI", "label": "nYNfRblG0BzKJJLf", "osVersion": "HGtsR3fl5Mx8nYTg", "processor": "3eKtg9ihffrBx9fW", "ram": "MMlme1t0mmRpggnA", "soundCard": "3P6O3D96a8kGhgLv"}, {"additionals": "rezhUtikfUxapVcQ", "directXVersion": "DwWnkSHHCLf0HM1J", "diskSpace": "ZLdBzRLIz85SdE6I", "graphics": "1Bl7213TqIeIlGoj", "label": "61Y0IILc3qYAlptK", "osVersion": "2aAsUC9xk7E22PjO", "processor": "KtL1dWgAhNnckPYG", "ram": "sC1Yn5776HiVKPex", "soundCard": "4V4wSrqoMbekYf50"}], "XQ36vzHvXsUhAqQO": [{"additionals": "A8wtEdmSstGcrYG4", "directXVersion": "UmVm0NGHRUFavnma", "diskSpace": "HnLWgpS7o9O5FNX4", "graphics": "jKW0H0fKTiyeTulq", "label": "7ebpArDbVmzH7Ocq", "osVersion": "cGqZlPa0w8Xt0Uvg", "processor": "1tQHrwnTKsh7U4d6", "ram": "GRr2QMmS69nsvGzm", "soundCard": "fnZze87Ob3L5MmIq"}, {"additionals": "f8BZlCvvRNAVbawM", "directXVersion": "4Ubig5pnrxgguVpe", "diskSpace": "p4W7gmOIhoKqctgt", "graphics": "GoMZKzMklhANiF5S", "label": "qzQGNDnKXdeK7H3A", "osVersion": "71SwbAsmu3iqnLYS", "processor": "RfJN3BBkmJpy2lUV", "ram": "OPP6pPIwxfQbPTks", "soundCard": "DiQ5IG1OwNgjzIMV"}, {"additionals": "OzDYq1abqXlddevX", "directXVersion": "74OVe70pXXVTnZVj", "diskSpace": "Rm9OxIUsEIIwBhEJ", "graphics": "SVTWHiytIRfVwXk4", "label": "sy6dAIOeixxkkis2", "osVersion": "UCscA74Uh3Cda56V", "processor": "T4o64XVm5EI06CRm", "ram": "lrhaIaNfXV2W3nVn", "soundCard": "4f3LGXPOQ4p52ZQE"}], "qYv0KWCmOUbCeAsZ": [{"additionals": "i7qR7dzenImwjieE", "directXVersion": "eRnPeYjeEMyNc7MK", "diskSpace": "Zy8w8P0HruCK1Orr", "graphics": "ut36y6mJJSehkR3T", "label": "Pts6BviWA0D9IGdo", "osVersion": "4GbtiZpbF35mMSJF", "processor": "MVu9vmqyqP76Iana", "ram": "CTl6yz4fTKmQ2l72", "soundCard": "ZmqCJmIfpBRTsqe4"}, {"additionals": "P0tO6LXgvKCcDiBJ", "directXVersion": "9CiFC7Y8jPJIPVrt", "diskSpace": "vmZfC3mMks7eBhkp", "graphics": "j4oxNSmoEJsnH8s5", "label": "7IkKa8yLaxG0lS66", "osVersion": "tU9kdmD0KiM6l3VU", "processor": "qVNX1dnWpUQBHd44", "ram": "6xw7v5KZfLvPtaG0", "soundCard": "n2VjiANxIPO3pYPh"}, {"additionals": "7QC6N6R2WUK9joKf", "directXVersion": "4IRXetrsCNXSb32N", "diskSpace": "LVW9esP3UZvTa7y9", "graphics": "8I4gGe5qtTMDoKy6", "label": "dJycTHxJFYFjLmow", "osVersion": "y3tSUiSoCkZxvic9", "processor": "NqUoOUAujwFiM7KC", "ram": "cDvoKrZpjfWhhUaC", "soundCard": "VWaSLgXFRWfM4R7b"}]}, "platforms": ["Windows", "Android", "Windows"], "players": ["CrossPlatformMulti", "MMO", "MMO"], "primaryGenre": "Sports", "publisher": "8Ax8e6QHQYzEZVtb", "releaseDate": "1990-05-29T00:00:00Z", "websiteUrl": "iPn2q76PPv0wzup2"}' \
    > test.out 2>&1
eval_tap $? 138 'UpdateApp' test.out

#- 139 DisableItem
samples/cli/sample-apps Platform disableItem \
    --itemId 'ppgPK4B50SdRPMWN' \
    --namespace $AB_NAMESPACE \
    --storeId '6Kz3BXNqPBFhjVmm' \
    --body '{"featuresToCheck": ["IAP", "ENTITLEMENT"]}' \
    > test.out 2>&1
eval_tap $? 139 'DisableItem' test.out

#- 140 GetItemDynamicData
samples/cli/sample-apps Platform getItemDynamicData \
    --itemId '7vJMNm79VMODC1pw' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 140 'GetItemDynamicData' test.out

#- 141 EnableItem
samples/cli/sample-apps Platform enableItem \
    --itemId '0cd8PgiwwtPWPCCx' \
    --namespace $AB_NAMESPACE \
    --storeId 'qVgrR2wtFyYK5L7F' \
    > test.out 2>&1
eval_tap $? 141 'EnableItem' test.out

#- 142 FeatureItem
samples/cli/sample-apps Platform featureItem \
    --feature 'JHmk1NbHezF1b9In' \
    --itemId 'kYaTXBkL3Ags7aDy' \
    --namespace $AB_NAMESPACE \
    --storeId 'qILIDzPzOxb1a977' \
    > test.out 2>&1
eval_tap $? 142 'FeatureItem' test.out

#- 143 DefeatureItem
samples/cli/sample-apps Platform defeatureItem \
    --feature 'yurf9PkMKMTVzXJr' \
    --itemId '77ZV0EanAzen2P4z' \
    --namespace $AB_NAMESPACE \
    --storeId 'H6Xhu1z8WvCVHmiE' \
    > test.out 2>&1
eval_tap $? 143 'DefeatureItem' test.out

#- 144 GetLocaleItem
samples/cli/sample-apps Platform getLocaleItem \
    --itemId 'FUcxT7VPnECbqn90' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --language 'P3Lyk04nsmh1lpsS' \
    --populateBundle 'true' \
    --region 'NCS05PexUf65Eg2m' \
    --storeId 'l8qixNvLI2kzJhnC' \
    > test.out 2>&1
eval_tap $? 144 'GetLocaleItem' test.out

#- 145 UpdateItemPurchaseCondition
samples/cli/sample-apps Platform updateItemPurchaseCondition \
    --itemId 'wnIzIS5Sp6MP5IGH' \
    --namespace $AB_NAMESPACE \
    --storeId 'Ig0R8bfQUwcDwZZt' \
    --body '{"purchaseCondition": {"conditionGroups": [{"operator": "and", "predicates": [{"anyOf": 2, "code": "2MPvnK7sLLgvX1AD", "comparison": "isLessThan", "name": "PAyadlMh4z1HU3uH", "predicateType": "EntitlementPredicate", "value": "vNDeNKn2VPxSFBah", "values": ["xr7Q9Gcgm36J7hOS", "20HQ8qzLo2H15yYD", "YwnENfTOlA6q7VKV"]}, {"anyOf": 48, "code": "tkZflzzOFkydkjFx", "comparison": "isGreaterThan", "name": "2rlJuX7gXfW8pRRY", "predicateType": "SeasonPassPredicate", "value": "vM7SoM6tnV60VFL8", "values": ["xNo5nqpTOg79bZd4", "cIFH8DcnhAroBON5", "UcLQtdC3alg3UW8C"]}, {"anyOf": 33, "code": "6uQsGp1z27oMk2Fx", "comparison": "isLessThanOrEqual", "name": "ZbBsFzMvmXVb5O8E", "predicateType": "EntitlementPredicate", "value": "Fwz6Zwi4Iji9A4uE", "values": ["4uhvuq0mO6wqnm1e", "wSl2X7YfxxUZRKa1", "4SEDskaRSUlHw8D7"]}]}, {"operator": "and", "predicates": [{"anyOf": 55, "code": "vzPuKcMtmz8hkKGn", "comparison": "includes", "name": "hFukp1WZKn8CEcIG", "predicateType": "SeasonTierPredicate", "value": "Nd6Hxy4IS1fhqtcJ", "values": ["LCP60ykUtZh6eKel", "sKCj2AAhoI17sdUN", "JZ6SzWXHnxXMwiIK"]}, {"anyOf": 81, "code": "zESU0n9aN0ZBD4Ks", "comparison": "isLessThanOrEqual", "name": "WGslEXKllmENBSMZ", "predicateType": "SeasonTierPredicate", "value": "mcxCf5lHoYD8zf2Q", "values": ["553o7ZaMEYWydwX1", "qbjXbxnyhLKyHodm", "Rf6YNKJhvb6jUZPD"]}, {"anyOf": 45, "code": "owOgS9pANWCTVi2L", "comparison": "isGreaterThan", "name": "cQx1sOZkAMcwTnfc", "predicateType": "StatisticCodePredicate", "value": "qomBcxjx0aXrqKgc", "values": ["YT6xNtpjPvQJt1Ev", "sUihHSP4DTWgoE8i", "CpXRYZYox9loIePc"]}]}, {"operator": "and", "predicates": [{"anyOf": 7, "code": "z9MZvHiFnboPFuzG", "comparison": "isGreaterThan", "name": "SoKMAfJM6tHzqwBs", "predicateType": "StatisticCodePredicate", "value": "1EX0GsmdAVJxjQsK", "values": ["9BHPRhtEOV6m2VIo", "gbps10k5XPHhePxp", "9vgQa2Mtt2xVvjyN"]}, {"anyOf": 58, "code": "zbtGhtSyCkwhLL1d", "comparison": "isNot", "name": "aN8NadL4PJyDNb5a", "predicateType": "StatisticCodePredicate", "value": "nSwaxotqttZxeUyF", "values": ["cAPZ4v0CRyxLXN6d", "23uUmjSRr79eK23Q", "t0rGSRkkQDTfm9WB"]}, {"anyOf": 24, "code": "V9h3I0MoJBL4t6WH", "comparison": "isLessThanOrEqual", "name": "Jgxj1v4R0NDVOewM", "predicateType": "StatisticCodePredicate", "value": "gwLTnvLn8PL3k7aA", "values": ["lGiOaDCgUGKEplsf", "eRqkIOuNSniEKXKQ", "9a882aMiq8jrWgPG"]}]}]}}' \
    > test.out 2>&1
eval_tap $? 145 'UpdateItemPurchaseCondition' test.out

#- 146 QueryItemReferences
samples/cli/sample-apps Platform queryItemReferences \
    --itemId 'w1QZZGMbARhsaQXd' \
    --namespace $AB_NAMESPACE \
    --featuresToCheck '["CATALOG", "IAP", "ENTITLEMENT"]' \
    --storeId 'McgRcYXITyj11v5r' \
    > test.out 2>&1
eval_tap $? 146 'QueryItemReferences' test.out

#- 147 ReturnItem
samples/cli/sample-apps Platform returnItem \
    --itemId 'J9RH56C3pYOpVXQB' \
    --namespace $AB_NAMESPACE \
    --body '{"orderNo": "M6ugPzPVXVIdqzoF"}' \
    > test.out 2>&1
eval_tap $? 147 'ReturnItem' test.out

#- 148 QueryKeyGroups
samples/cli/sample-apps Platform queryKeyGroups \
    --namespace $AB_NAMESPACE \
    --limit '35' \
    --name 'nXLaSRqQlWJN0bK1' \
    --offset '17' \
    --tag '53h0C8z6pwzV742P' \
    > test.out 2>&1
eval_tap $? 148 'QueryKeyGroups' test.out

#- 149 CreateKeyGroup
samples/cli/sample-apps Platform createKeyGroup \
    --namespace $AB_NAMESPACE \
    --body '{"description": "DdILRSdnPyPbMbFQ", "name": "9nbpcDLNzNZbzEiu", "status": "INACTIVE", "tags": ["EtTNoRbATNJohb5r", "skXToei2Au9FH36E", "dS0OOCM8Vc0by7ZH"]}' \
    > test.out 2>&1
eval_tap $? 149 'CreateKeyGroup' test.out

#- 150 GetKeyGroupByBoothName
eval_tap 0 150 'GetKeyGroupByBoothName # SKIP deprecated' test.out

#- 151 GetKeyGroup
samples/cli/sample-apps Platform getKeyGroup \
    --keyGroupId 'uT5DxVfOpfCzklec' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 151 'GetKeyGroup' test.out

#- 152 UpdateKeyGroup
samples/cli/sample-apps Platform updateKeyGroup \
    --keyGroupId 'OoDbGTkOYK9Toi0Y' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "GUudtFqVVlJSsI5A", "name": "0zFxiuY3bxkwwuxo", "status": "ACTIVE", "tags": ["uNQDrHqR8xpYtRtn", "pDDi3LSmL0sPqhYw", "zwGC1VSgNTB5yga1"]}' \
    > test.out 2>&1
eval_tap $? 152 'UpdateKeyGroup' test.out

#- 153 GetKeyGroupDynamic
samples/cli/sample-apps Platform getKeyGroupDynamic \
    --keyGroupId 'Fc0fd3XFHZ7dDpVs' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 153 'GetKeyGroupDynamic' test.out

#- 154 ListKeys
samples/cli/sample-apps Platform listKeys \
    --keyGroupId 'QucBLqNxL2VjXMRm' \
    --namespace $AB_NAMESPACE \
    --limit '20' \
    --offset '49' \
    --status 'ACQUIRED' \
    > test.out 2>&1
eval_tap $? 154 'ListKeys' test.out

#- 155 UploadKeys
samples/cli/sample-apps Platform uploadKeys \
    --keyGroupId 'rZqF4gz97fACB8oi' \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 155 'UploadKeys' test.out

#- 156 QueryOrders
samples/cli/sample-apps Platform queryOrders \
    --namespace $AB_NAMESPACE \
    --endTime '2tJK5bKUZHSSyx30' \
    --limit '81' \
    --offset '58' \
    --orderNos '["CI5LwaoRv43rcyMv", "MaGk7eL5KsD6Wp26", "gNa4AfSXoWE4d1Bx"]' \
    --sortBy 'qq63uPX5HqFZ1dV7' \
    --startTime 'r12NletJW0E18Xil' \
    --status 'CHARGED' \
    --withTotal 'true' \
    > test.out 2>&1
eval_tap $? 156 'QueryOrders' test.out

#- 157 GetOrderStatistics
samples/cli/sample-apps Platform getOrderStatistics \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 157 'GetOrderStatistics' test.out

#- 158 GetOrder
samples/cli/sample-apps Platform getOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'YcoxU83Wp3euK9rQ' \
    > test.out 2>&1
eval_tap $? 158 'GetOrder' test.out

#- 159 RefundOrder
samples/cli/sample-apps Platform refundOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'q2Zq8YdEB79irs0d' \
    --body '{"description": "z6qZuwbSaA21NwMA"}' \
    > test.out 2>&1
eval_tap $? 159 'RefundOrder' test.out

#- 160 GetPaymentCallbackConfig
eval_tap 0 160 'GetPaymentCallbackConfig # SKIP deprecated' test.out

#- 161 UpdatePaymentCallbackConfig
eval_tap 0 161 'UpdatePaymentCallbackConfig # SKIP deprecated' test.out

#- 162 GetPaymentMerchantConfig
samples/cli/sample-apps Platform getPaymentMerchantConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 162 'GetPaymentMerchantConfig' test.out

#- 163 UpdatePaymentDomainWhitelistConfig
samples/cli/sample-apps Platform updatePaymentDomainWhitelistConfig \
    --namespace $AB_NAMESPACE \
    --body '{"domains": ["xiX5xlurOfb2S1fO", "Fs6EzgtLQvz97D4I", "t3whjmD1EhpaWoOx"]}' \
    > test.out 2>&1
eval_tap $? 163 'UpdatePaymentDomainWhitelistConfig' test.out

#- 164 QueryPaymentNotifications
samples/cli/sample-apps Platform queryPaymentNotifications \
    --namespace $AB_NAMESPACE \
    --endDate 'kyNz9rvt8ieAjnuO' \
    --externalId 'PJ1o1Tfx292AmvbO' \
    --limit '16' \
    --notificationSource 'PAYPAL' \
    --notificationType 'kNRMKDjFNh7KJUAi' \
    --offset '65' \
    --paymentOrderNo 'zEIk72407mxXd2it' \
    --startDate 'Fb9gOUEkfuj8Sz5W' \
    --status 'WARN' \
    > test.out 2>&1
eval_tap $? 164 'QueryPaymentNotifications' test.out

#- 165 QueryPaymentOrders
samples/cli/sample-apps Platform queryPaymentOrders \
    --namespace $AB_NAMESPACE \
    --channel 'INTERNAL' \
    --extTxId 'uyu1W1N7V2jtE0Q2' \
    --limit '54' \
    --offset '85' \
    --status 'CHARGEBACK_REVERSED' \
    > test.out 2>&1
eval_tap $? 165 'QueryPaymentOrders' test.out

#- 166 CreatePaymentOrderByDedicated
samples/cli/sample-apps Platform createPaymentOrderByDedicated \
    --namespace $AB_NAMESPACE \
    --body '{"currencyCode": "iwdiIe6lxlSSlnB2", "currencyNamespace": "Ym53tt0UuQfT7zTY", "customParameters": {"RcMth2MTJY5U60Xd": {}, "xQZ3XH2BdyPQHVBg": {}, "VpNhyRzhvrNNKxwm": {}}, "description": "2GNLbyaGrMyjo63t", "extOrderNo": "gD2E1eMik5eBqdrj", "extUserId": "k2UfTfULNnUt0utx", "itemType": "MEDIA", "language": "Nzw-ZYsO_GW", "metadata": {"4bVeZ7EFyKqX1KeP": "yjO0zUpxE9eHOkTf", "zIswihbzzHhoON0m": "MipnEJ2hwIeOj90t", "CFDZo4oK07cDQSVz": "hazL9KwPPLTCGCPN"}, "notifyUrl": "GgsYTp3jUcRS761O", "omitNotification": false, "platform": "EyFwkkXMwxOJbv7g", "price": 17, "recurringPaymentOrderNo": "wfQrY46TUkWdLSPP", "region": "g9vEXejR6Lw03v9R", "returnUrl": "JwSKZ07Gy5llpomB", "sandbox": false, "sku": "CUqO7k2u4reuBZp1", "subscriptionId": "B4dDAKJ5Ac3wz6pV", "targetNamespace": "DNrMXZWGwkJapF85", "targetUserId": "DhFenHvlm0diQkpf", "title": "39IoXJC50PhJ4TX5"}' \
    > test.out 2>&1
eval_tap $? 166 'CreatePaymentOrderByDedicated' test.out

#- 167 ListExtOrderNoByExtTxId
samples/cli/sample-apps Platform listExtOrderNoByExtTxId \
    --namespace $AB_NAMESPACE \
    --extTxId 'sHhg7vYqrh9HNnsN' \
    > test.out 2>&1
eval_tap $? 167 'ListExtOrderNoByExtTxId' test.out

#- 168 GetPaymentOrder
samples/cli/sample-apps Platform getPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'S9pVzmiIijL1OagD' \
    > test.out 2>&1
eval_tap $? 168 'GetPaymentOrder' test.out

#- 169 ChargePaymentOrder
samples/cli/sample-apps Platform chargePaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'CFMTWcqALgATRyng' \
    --body '{"extTxId": "sdLOLR4cZghoAGKx", "paymentMethod": "5SK3UXHkrtHGGGGf", "paymentProvider": "XSOLLA"}' \
    > test.out 2>&1
eval_tap $? 169 'ChargePaymentOrder' test.out

#- 170 RefundPaymentOrderByDedicated
samples/cli/sample-apps Platform refundPaymentOrderByDedicated \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'srbzfi1ZvHcAA5J8' \
    --body '{"description": "Cf2Kwambr0phS1oa"}' \
    > test.out 2>&1
eval_tap $? 170 'RefundPaymentOrderByDedicated' test.out

#- 171 SimulatePaymentOrderNotification
samples/cli/sample-apps Platform simulatePaymentOrderNotification \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'FpS2lhHbwlDU0J7Z' \
    --body '{"amount": 91, "currencyCode": "WLnGJ0OMGsrtody5", "notifyType": "CHARGE", "paymentProvider": "ADYEN", "salesTax": 52, "vat": 40}' \
    > test.out 2>&1
eval_tap $? 171 'SimulatePaymentOrderNotification' test.out

#- 172 GetPaymentOrderChargeStatus
samples/cli/sample-apps Platform getPaymentOrderChargeStatus \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'Wqarrjtd2jetVPLu' \
    > test.out 2>&1
eval_tap $? 172 'GetPaymentOrderChargeStatus' test.out

#- 173 GetPsnEntitlementOwnership
samples/cli/sample-apps Platform getPsnEntitlementOwnership \
    --entitlementLabel 'hRhQunRubV5Ggclv' \
    --namespace $AB_NAMESPACE \
    --body '{"accessToken": "h524iRRQG1gpLjO2", "serviceLabel": 49}' \
    > test.out 2>&1
eval_tap $? 173 'GetPsnEntitlementOwnership' test.out

#- 174 GetXboxEntitlementOwnership
samples/cli/sample-apps Platform getXboxEntitlementOwnership \
    --namespace $AB_NAMESPACE \
    --productSku '1DuIfvQjLTNgbwuz' \
    --body '{"delegationToken": "BqbrwKz77G0P2uuN", "sandboxId": "o5i8QbB51fyGBwoz"}' \
    > test.out 2>&1
eval_tap $? 174 'GetXboxEntitlementOwnership' test.out

#- 175 GetPlatformEntitlementConfig
samples/cli/sample-apps Platform getPlatformEntitlementConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Xbox' \
    > test.out 2>&1
eval_tap $? 175 'GetPlatformEntitlementConfig' test.out

#- 176 UpdatePlatformEntitlementConfig
samples/cli/sample-apps Platform updatePlatformEntitlementConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Oculus' \
    --body '{"allowedPlatformOrigins": ["IOS", "Nintendo", "GooglePlay"]}' \
    > test.out 2>&1
eval_tap $? 176 'UpdatePlatformEntitlementConfig' test.out

#- 177 GetPlatformWalletConfig
samples/cli/sample-apps Platform getPlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Oculus' \
    > test.out 2>&1
eval_tap $? 177 'GetPlatformWalletConfig' test.out

#- 178 UpdatePlatformWalletConfig
samples/cli/sample-apps Platform updatePlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Playstation' \
    --body '{"allowedBalanceOrigins": ["IOS", "Xbox", "IOS"]}' \
    > test.out 2>&1
eval_tap $? 178 'UpdatePlatformWalletConfig' test.out

#- 179 ResetPlatformWalletConfig
samples/cli/sample-apps Platform resetPlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Oculus' \
    > test.out 2>&1
eval_tap $? 179 'ResetPlatformWalletConfig' test.out

#- 180 GetRevocationConfig
samples/cli/sample-apps Platform getRevocationConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 180 'GetRevocationConfig' test.out

#- 181 UpdateRevocationConfig
samples/cli/sample-apps Platform updateRevocationConfig \
    --namespace $AB_NAMESPACE \
    --body '{"entitlement": {"consumable": {"enabled": true, "strategy": "CUSTOM"}, "durable": {"enabled": true, "strategy": "REVOKE_OR_REPORT"}}, "wallet": {"enabled": true, "strategy": "CUSTOM"}}' \
    > test.out 2>&1
eval_tap $? 181 'UpdateRevocationConfig' test.out

#- 182 DeleteRevocationConfig
samples/cli/sample-apps Platform deleteRevocationConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 182 'DeleteRevocationConfig' test.out

#- 183 QueryRevocationHistories
samples/cli/sample-apps Platform queryRevocationHistories \
    --namespace $AB_NAMESPACE \
    --endTime 'YG3QqC8sQP2eBQpX' \
    --limit '24' \
    --offset '100' \
    --source 'DLC' \
    --startTime '3w4zpX3jyv3woCqo' \
    --status 'FAIL' \
    --transactionId 'jFQi8PjB6f5OIpYZ' \
    --userId 'fDhFO2h7Q4PhEs74' \
    > test.out 2>&1
eval_tap $? 183 'QueryRevocationHistories' test.out

#- 184 GetRevocationPluginConfig
samples/cli/sample-apps Platform getRevocationPluginConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 184 'GetRevocationPluginConfig' test.out

#- 185 UpdateRevocationPluginConfig
samples/cli/sample-apps Platform updateRevocationPluginConfig \
    --namespace $AB_NAMESPACE \
    --body '{"appConfig": {"appName": "tDoQn4M2FZTa7fZd"}, "customConfig": {"connectionType": "TLS", "grpcServerAddress": "WQfalSfaMYiAf84S"}, "extendType": "APP"}' \
    > test.out 2>&1
eval_tap $? 185 'UpdateRevocationPluginConfig' test.out

#- 186 DeleteRevocationPluginConfig
samples/cli/sample-apps Platform deleteRevocationPluginConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 186 'DeleteRevocationPluginConfig' test.out

#- 187 UploadRevocationPluginConfigCert
samples/cli/sample-apps Platform uploadRevocationPluginConfigCert \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 187 'UploadRevocationPluginConfigCert' test.out

#- 188 CreateReward
samples/cli/sample-apps Platform createReward \
    --namespace $AB_NAMESPACE \
    --body '{"description": "TxeB62PS2QAw5uRO", "eventTopic": "1ZMFAYm1nwuRJUIA", "maxAwarded": 58, "maxAwardedPerUser": 29, "namespaceExpression": "v2OfmGdBQsC14KB3", "rewardCode": "okNe9wp85aLzbPQ2", "rewardConditions": [{"condition": "AOFLCpB563xeLDv3", "conditionName": "6C88mfPvS02orxiK", "eventName": "PAv9vNSEeoSO6oxv", "rewardItems": [{"duration": 15, "endDate": "1991-03-04T00:00:00Z", "identityType": "ITEM_ID", "itemId": "9z51lniMPsGP0U7G", "quantity": 54, "sku": "1WmJrkEke0VCI3GG"}, {"duration": 88, "endDate": "1991-10-01T00:00:00Z", "identityType": "ITEM_ID", "itemId": "pm9YK76NhB1SWrjI", "quantity": 30, "sku": "Kcd8r1IMKe1Zyyud"}, {"duration": 39, "endDate": "1987-06-08T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "bjqNIoftmOTVq7Z5", "quantity": 6, "sku": "szgiX80wGOSpC2j9"}]}, {"condition": "1aGwEhpAictKVMQO", "conditionName": "v6DzfaLj8NbMZWN9", "eventName": "4G4WLfe9vkqeUQCN", "rewardItems": [{"duration": 48, "endDate": "1992-01-04T00:00:00Z", "identityType": "ITEM_ID", "itemId": "CvYGkHC2E7kzsvLM", "quantity": 0, "sku": "nFVZfkEw4gBMkJQp"}, {"duration": 75, "endDate": "1991-02-16T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "7OsQTnZooIhFGWAE", "quantity": 48, "sku": "Zve1hpaEfJIGUIFc"}, {"duration": 44, "endDate": "1973-04-14T00:00:00Z", "identityType": "ITEM_ID", "itemId": "4TUO1Qv8Qb6HCvUd", "quantity": 63, "sku": "nSsBODC5nHw1CPKm"}]}, {"condition": "VBR6z39pmkl4evHz", "conditionName": "cDWmnjzJx0RthJpC", "eventName": "SEzgnxvBfi5UopEE", "rewardItems": [{"duration": 35, "endDate": "1992-03-11T00:00:00Z", "identityType": "ITEM_ID", "itemId": "aNrCA3JIPgmhpLgY", "quantity": 33, "sku": "PJmNVZDN3YR4jWZF"}, {"duration": 48, "endDate": "1990-06-19T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "NUwVsch2gPNKisWM", "quantity": 73, "sku": "05J9J0SEzGpouSJ0"}, {"duration": 86, "endDate": "1974-05-27T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "CsU44TaXzqDr2rgm", "quantity": 79, "sku": "xBqw8vb6axgka1Hv"}]}], "userIdExpression": "V5NpUpgIIzfWMCeo"}' \
    > test.out 2>&1
eval_tap $? 188 'CreateReward' test.out

#- 189 QueryRewards
samples/cli/sample-apps Platform queryRewards \
    --namespace $AB_NAMESPACE \
    --eventTopic 'pcse6aYRriAmLfxe' \
    --limit '97' \
    --offset '47' \
    --sortBy '["rewardCode:asc", "namespace", "rewardCode"]' \
    > test.out 2>&1
eval_tap $? 189 'QueryRewards' test.out

#- 190 ExportRewards
samples/cli/sample-apps Platform exportRewards \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 190 'ExportRewards' test.out

#- 191 ImportRewards
samples/cli/sample-apps Platform importRewards \
    --namespace $AB_NAMESPACE \
    --replaceExisting 'true' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 191 'ImportRewards' test.out

#- 192 GetReward
samples/cli/sample-apps Platform getReward \
    --namespace $AB_NAMESPACE \
    --rewardId '7kFMWXlENLk7pCLb' \
    > test.out 2>&1
eval_tap $? 192 'GetReward' test.out

#- 193 UpdateReward
samples/cli/sample-apps Platform updateReward \
    --namespace $AB_NAMESPACE \
    --rewardId 'YYb4ybCYU9wYN8sE' \
    --body '{"description": "Ddwp40bJNBy0hAdY", "eventTopic": "O6Cmvcji6nz65h48", "maxAwarded": 26, "maxAwardedPerUser": 86, "namespaceExpression": "ZxWmqmB7rSsAGxrK", "rewardCode": "EALmW1cTy9x2ScUX", "rewardConditions": [{"condition": "KqsDLAzKuki8YrTL", "conditionName": "2NIBTBFTZs5hTYVT", "eventName": "PSFnOXTNkAiRfX2u", "rewardItems": [{"duration": 42, "endDate": "1981-12-27T00:00:00Z", "identityType": "ITEM_ID", "itemId": "eWlL3x4fljLyn05p", "quantity": 53, "sku": "ljfS0jd7eEgK4SMh"}, {"duration": 26, "endDate": "1991-07-29T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "4is1Acdbh4UeMMfB", "quantity": 77, "sku": "tKpdy5qi3wDF5BRh"}, {"duration": 84, "endDate": "1989-04-04T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "jdK47aBpQSzffTSj", "quantity": 1, "sku": "vJPz3WZ2EaZq3e3z"}]}, {"condition": "MTc3x7nMb5HCDjSm", "conditionName": "Zwj5pBfBjpTYvgsq", "eventName": "iQ7omfmRq3pLYmZ3", "rewardItems": [{"duration": 71, "endDate": "1976-05-17T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "g9uQEkb9l3jKa4cD", "quantity": 48, "sku": "Byx48EVHE9nG193K"}, {"duration": 38, "endDate": "1981-05-05T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "6MG6T62cAeyFbeQQ", "quantity": 57, "sku": "odZAvs9v1gGfTJZo"}, {"duration": 77, "endDate": "1986-04-29T00:00:00Z", "identityType": "ITEM_ID", "itemId": "Ym4H5yVDG4F3Oju2", "quantity": 45, "sku": "T0uJ1wLpiViqRIAf"}]}, {"condition": "sYcgJRqwP9GZUfHQ", "conditionName": "ylmCPzcwJb2KeZPD", "eventName": "OWG6DZDpiR1SKIJ6", "rewardItems": [{"duration": 61, "endDate": "1996-02-26T00:00:00Z", "identityType": "ITEM_ID", "itemId": "WU60pEnKlsZv2m4i", "quantity": 2, "sku": "S0xCFtvlhe4gHGMH"}, {"duration": 20, "endDate": "1978-09-10T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "MfogBo1KileQEhwP", "quantity": 36, "sku": "bFMzHw6nRQLI8AJN"}, {"duration": 23, "endDate": "1988-05-30T00:00:00Z", "identityType": "ITEM_ID", "itemId": "IOUEqSfDSKLaV2HT", "quantity": 9, "sku": "N34iKjZMT8jYolAH"}]}], "userIdExpression": "Do5hHmMh6l0DKTi6"}' \
    > test.out 2>&1
eval_tap $? 193 'UpdateReward' test.out

#- 194 DeleteReward
samples/cli/sample-apps Platform deleteReward \
    --namespace $AB_NAMESPACE \
    --rewardId 'YXVtuPZM84blIw5J' \
    > test.out 2>&1
eval_tap $? 194 'DeleteReward' test.out

#- 195 CheckEventCondition
samples/cli/sample-apps Platform checkEventCondition \
    --namespace $AB_NAMESPACE \
    --rewardId 's24QuYguQZ0Fyuq7' \
    --body '{"payload": {"p1gnDAh7eQSE9ZHW": {}, "cgAVsogTzYrziWZF": {}, "5aXjWIt8Nc6OoAcW": {}}}' \
    > test.out 2>&1
eval_tap $? 195 'CheckEventCondition' test.out

#- 196 DeleteRewardConditionRecord
samples/cli/sample-apps Platform deleteRewardConditionRecord \
    --namespace $AB_NAMESPACE \
    --rewardId 'rjbYlkxBPLFE50M6' \
    --body '{"conditionName": "LEasF4Qti7wWBBxR", "userId": "O3lxHtLKtKc4gC9K"}' \
    > test.out 2>&1
eval_tap $? 196 'DeleteRewardConditionRecord' test.out

#- 197 QuerySections
samples/cli/sample-apps Platform querySections \
    --namespace $AB_NAMESPACE \
    --end 'dniNbDpXnhbZDP93' \
    --limit '47' \
    --offset '32' \
    --start 'xwwJY0h0i0QEtnjx' \
    --storeId 'ePKOXpiDdl0JE25g' \
    --viewId 'DLRZHF0WjdzsDV0O' \
    > test.out 2>&1
eval_tap $? 197 'QuerySections' test.out

#- 198 CreateSection
samples/cli/sample-apps Platform createSection \
    --namespace $AB_NAMESPACE \
    --storeId 'NqzZV74Yrfou5BCv' \
    --body '{"active": false, "displayOrder": 35, "endDate": "1980-02-08T00:00:00Z", "ext": {"vwsSvn5O5BNdk3KH": {}, "FnWGp4qH8FoSw1Qk": {}, "qV0U5fKyUdrt52R6": {}}, "fixedPeriodRotationConfig": {"backfillType": "NONE", "duration": 100, "itemCount": 54, "rule": "SEQUENCE"}, "items": [{"id": "GaPyRohQH4CtkKc4", "sku": "5ybt7EklIbn18RH2"}, {"id": "9NStXrbQpiVzMz45", "sku": "9RLLrhB8g6clvGaA"}, {"id": "mtF789jGa7tpFtT8", "sku": "3EuAVfHVr5OgIoqN"}], "localizations": {"EJGHvdvMgcy89cel": {"description": "zZIOb5bql6RODKYT", "localExt": {"m7xcONXgfXyHEpee": {}, "qvQ2vyfRGV9kpVTO": {}, "ldECMhP5b8DnBYWT": {}}, "longDescription": "CptuOXRl5p6Z2h7T", "title": "lE9QXbFbK7SvQn3D"}, "EdP7BVzGtk28AGKQ": {"description": "cPEw91KITGspHCF6", "localExt": {"FeRMIeEYIKArXAn5": {}, "NG9awaoxsLvpoXd3": {}, "lOpl4Hz5jl8TfxNl": {}}, "longDescription": "wBa2AiHBsHd5g5Xi", "title": "fIr4xzauWn4tRnX3"}, "5jaGuCSz9UhvqAFj": {"description": "pXHisGb2kxzCRQ2Q", "localExt": {"DeW6EXFuQV4SJivm": {}, "v8oCNJarXXt9SCm1": {}, "VkwZQadTwq3opLVP": {}}, "longDescription": "o99xGYp6SNIKkvp3", "title": "DfSv4zT1loAqG7nD"}}, "name": "ywzj0XoycYfc2uvw", "rotationType": "NONE", "startDate": "1985-12-09T00:00:00Z", "viewId": "24z6QMg8gDLaxGB2"}' \
    > test.out 2>&1
eval_tap $? 198 'CreateSection' test.out

#- 199 PurgeExpiredSection
samples/cli/sample-apps Platform purgeExpiredSection \
    --namespace $AB_NAMESPACE \
    --storeId 'iR00X8dE1cFEzkpf' \
    > test.out 2>&1
eval_tap $? 199 'PurgeExpiredSection' test.out

#- 200 GetSection
samples/cli/sample-apps Platform getSection \
    --namespace $AB_NAMESPACE \
    --sectionId 'NeGbBaFEJ4UTYKoz' \
    --storeId 'j9TifUIV9DjkTyNk' \
    > test.out 2>&1
eval_tap $? 200 'GetSection' test.out

#- 201 UpdateSection
samples/cli/sample-apps Platform updateSection \
    --namespace $AB_NAMESPACE \
    --sectionId 'cBfpXnDSKes0cGJB' \
    --storeId 'K9MsW4qjYIg1DMNu' \
    --body '{"active": true, "displayOrder": 87, "endDate": "1978-06-19T00:00:00Z", "ext": {"ek0NmDhl9G7aIFEc": {}, "sljRNzzT31hSxt84": {}, "YUjuUJN1TwnN9maX": {}}, "fixedPeriodRotationConfig": {"backfillType": "CUSTOM", "duration": 64, "itemCount": 78, "rule": "SEQUENCE"}, "items": [{"id": "gMT5SzVDlJRx58qV", "sku": "crt7XIqsOQS5FYhD"}, {"id": "JHBmiXKuU3iO0ebf", "sku": "SEdDLfu7cyjzCXUA"}, {"id": "TDfWuqCnRiIJDLAZ", "sku": "2FbdmgtpicF27sAr"}], "localizations": {"kiE2Vx3oLHg79kPb": {"description": "fwP1aAaArpwSgVPI", "localExt": {"M0mCKRW3zen8kH1B": {}, "0fiA82yCrKTbwnHr": {}, "7FtNuyb9gw7GWMwH": {}}, "longDescription": "bjxQjFb1i5WpJpwn", "title": "th7WMZ6iIXh7zk0H"}, "HAqfIwhorSIQYLvp": {"description": "lHEECk1sY0yBP3I6", "localExt": {"rvQ3tR1H1wvoakhU": {}, "eWdED56GXAfNGkOL": {}, "u4EFBPq5JOdvdhdo": {}}, "longDescription": "yn9JY9x1pNeF8Ru1", "title": "Vg3QITzhQ6kCw5YQ"}, "eQ5ffOoc9b6uLrzc": {"description": "YV02JJ0ZrsvCkb7h", "localExt": {"GKDCuxt0koTFgvHL": {}, "INLpxR5gSdR7XURt": {}, "kj6W9X2pA1PxhvRM": {}}, "longDescription": "cm3RQ59oJustIhaM", "title": "pczzKC3QvozpnJeW"}}, "name": "HsUeVctHLN6vnYkU", "rotationType": "NONE", "startDate": "1975-12-23T00:00:00Z", "viewId": "uf0t5C34hUsGA05T"}' \
    > test.out 2>&1
eval_tap $? 201 'UpdateSection' test.out

#- 202 DeleteSection
samples/cli/sample-apps Platform deleteSection \
    --namespace $AB_NAMESPACE \
    --sectionId 'TjtfDl9uQQqiZpkc' \
    --storeId 'oDn2Xwm47dtEJizR' \
    > test.out 2>&1
eval_tap $? 202 'DeleteSection' test.out

#- 203 ListStores
samples/cli/sample-apps Platform listStores \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 203 'ListStores' test.out

#- 204 CreateStore
samples/cli/sample-apps Platform createStore \
    --namespace $AB_NAMESPACE \
    --body '{"defaultLanguage": "zwTWAfDqIWuB3sLT", "defaultRegion": "ZxdVr8QXMJsx1ZuT", "description": "uAdpBDaIyGWlvPwa", "supportedLanguages": ["HtVmi2QrQL0UTTpD", "yUHvYX9ntF3Wb19N", "g0BpmWIk2djJclPQ"], "supportedRegions": ["qPrwJiB0XqY7BI12", "gxr0GiEl1UIsFyT8", "ZLdz8oyLw1Jwv8NF"], "title": "TF0qHqEVcsGbgoS7"}' \
    > test.out 2>&1
eval_tap $? 204 'CreateStore' test.out

#- 205 GetCatalogDefinition
samples/cli/sample-apps Platform getCatalogDefinition \
    --namespace $AB_NAMESPACE \
    --catalogType 'VIEW' \
    > test.out 2>&1
eval_tap $? 205 'GetCatalogDefinition' test.out

#- 206 DownloadCSVTemplates
samples/cli/sample-apps Platform downloadCSVTemplates \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 206 'DownloadCSVTemplates' test.out

#- 207 ExportStoreByCSV
samples/cli/sample-apps Platform exportStoreByCSV \
    --namespace $AB_NAMESPACE \
    --body '{"catalogType": "SECTION", "fieldsToBeIncluded": ["wYRpKm7SRnXSCDBU", "svcsbr6AaCdhiqRR", "4fEplJRY0C12ouG0"], "idsToBeExported": ["H6TKBN5xntSwrivH", "vxCItXFxC3r2SQAX", "LHix9uTxyxQ9pyys"], "storeId": "2lqFAoPi3wsqo1UJ"}' \
    > test.out 2>&1
eval_tap $? 207 'ExportStoreByCSV' test.out

#- 208 ImportStore
eval_tap 0 208 'ImportStore # SKIP deprecated' test.out

#- 209 GetPublishedStore
samples/cli/sample-apps Platform getPublishedStore \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 209 'GetPublishedStore' test.out

#- 210 DeletePublishedStore
samples/cli/sample-apps Platform deletePublishedStore \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 210 'DeletePublishedStore' test.out

#- 211 GetPublishedStoreBackup
samples/cli/sample-apps Platform getPublishedStoreBackup \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 211 'GetPublishedStoreBackup' test.out

#- 212 RollbackPublishedStore
samples/cli/sample-apps Platform rollbackPublishedStore \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 212 'RollbackPublishedStore' test.out

#- 213 GetStore
samples/cli/sample-apps Platform getStore \
    --namespace $AB_NAMESPACE \
    --storeId '2f89hTWyjW5Jqzj2' \
    > test.out 2>&1
eval_tap $? 213 'GetStore' test.out

#- 214 UpdateStore
samples/cli/sample-apps Platform updateStore \
    --namespace $AB_NAMESPACE \
    --storeId 'zXySSXu7fcTLxEb3' \
    --body '{"defaultLanguage": "7lVnmPGpIdnN2Mrb", "defaultRegion": "TzmolGIP6WUi3qxq", "description": "EHxboqDHzUFiX6OG", "supportedLanguages": ["W7BrXDX1hSr34qM0", "qAhLyH5anesDNTU8", "l7EObO5fArv8hdcs"], "supportedRegions": ["AgscvW59kUzN9ME4", "6bDDEYuncb9QuUSf", "nSPsj1SgGYrsWMX8"], "title": "HYn8Lx6oKdsxZ2kt"}' \
    > test.out 2>&1
eval_tap $? 214 'UpdateStore' test.out

#- 215 DeleteStore
samples/cli/sample-apps Platform deleteStore \
    --namespace $AB_NAMESPACE \
    --storeId 'yN8XbUljtWggdMzi' \
    > test.out 2>&1
eval_tap $? 215 'DeleteStore' test.out

#- 216 QueryChanges
samples/cli/sample-apps Platform queryChanges \
    --namespace $AB_NAMESPACE \
    --storeId 'd1FE6ip2JO51PIws' \
    --action 'CREATE' \
    --itemSku 'CrTPDljyDIMTJZOV' \
    --itemType 'OPTIONBOX' \
    --limit '34' \
    --offset '38' \
    --selected 'true' \
    --sortBy '["updatedAt:asc", "updatedAt", "createdAt"]' \
    --status 'PUBLISHED' \
    --type 'VIEW' \
    --updatedAtEnd 'QdqJjWGlf5oyrWl3' \
    --updatedAtStart 'aBadIR5yIK8yXdvA' \
    --withTotal 'false' \
    > test.out 2>&1
eval_tap $? 216 'QueryChanges' test.out

#- 217 PublishAll
samples/cli/sample-apps Platform publishAll \
    --namespace $AB_NAMESPACE \
    --storeId '0SRZvc47EWGbEqP3' \
    > test.out 2>&1
eval_tap $? 217 'PublishAll' test.out

#- 218 PublishSelected
samples/cli/sample-apps Platform publishSelected \
    --namespace $AB_NAMESPACE \
    --storeId 'os0wH57Qk3ac40hX' \
    > test.out 2>&1
eval_tap $? 218 'PublishSelected' test.out

#- 219 SelectAllRecords
samples/cli/sample-apps Platform selectAllRecords \
    --namespace $AB_NAMESPACE \
    --storeId 'V1MCbV2YymJ9XR0D' \
    > test.out 2>&1
eval_tap $? 219 'SelectAllRecords' test.out

#- 220 SelectAllRecordsByCriteria
samples/cli/sample-apps Platform selectAllRecordsByCriteria \
    --namespace $AB_NAMESPACE \
    --storeId 'du9uJ2V1E8EADrdB' \
    --action 'CREATE' \
    --itemSku 'nLCnbRvEitiwC1uh' \
    --itemType 'INGAMEITEM' \
    --selected 'false' \
    --type 'ITEM' \
    --updatedAtEnd 'm6MZLDHFtg3bG21w' \
    --updatedAtStart 'u05BVyOmrA6E2i2v' \
    > test.out 2>&1
eval_tap $? 220 'SelectAllRecordsByCriteria' test.out

#- 221 GetStatistic
samples/cli/sample-apps Platform getStatistic \
    --namespace $AB_NAMESPACE \
    --storeId 'USUJqtrvprD3YL6v' \
    --action 'UPDATE' \
    --itemSku 'zAQfYhzv3pXyC0DV' \
    --itemType 'APP' \
    --type 'STORE' \
    --updatedAtEnd '18BmAVi2TB3llOWe' \
    --updatedAtStart '7IFcbZHH04AbX4V7' \
    > test.out 2>&1
eval_tap $? 221 'GetStatistic' test.out

#- 222 UnselectAllRecords
samples/cli/sample-apps Platform unselectAllRecords \
    --namespace $AB_NAMESPACE \
    --storeId 'PjmEzVlGAiylbfpQ' \
    > test.out 2>&1
eval_tap $? 222 'UnselectAllRecords' test.out

#- 223 SelectRecord
samples/cli/sample-apps Platform selectRecord \
    --changeId '9c5Zr9Nt32IqwZY2' \
    --namespace $AB_NAMESPACE \
    --storeId 'M9lmIeDgKwrZoQPQ' \
    > test.out 2>&1
eval_tap $? 223 'SelectRecord' test.out

#- 224 UnselectRecord
samples/cli/sample-apps Platform unselectRecord \
    --changeId 'DKYiamXwuN2b8aNJ' \
    --namespace $AB_NAMESPACE \
    --storeId '1WIcIpXAQ1b0RbQg' \
    > test.out 2>&1
eval_tap $? 224 'UnselectRecord' test.out

#- 225 CloneStore
samples/cli/sample-apps Platform cloneStore \
    --namespace $AB_NAMESPACE \
    --storeId 'zojl38mmlaXJX4nw' \
    --targetStoreId 'n5sZmqOON31uELFM' \
    > test.out 2>&1
eval_tap $? 225 'CloneStore' test.out

#- 226 ExportStore
eval_tap 0 226 'ExportStore # SKIP deprecated' test.out

#- 227 QueryImportHistory
samples/cli/sample-apps Platform queryImportHistory \
    --namespace $AB_NAMESPACE \
    --storeId 'Y7cvNagGc3GDnycW' \
    --end '9xQfAmu6HH9yGZ6I' \
    --limit '92' \
    --offset '8' \
    --sortBy 'Frl24D9QNWqKIO2X' \
    --start 'hKXor7qN124XH478' \
    --success 'false' \
    > test.out 2>&1
eval_tap $? 227 'QueryImportHistory' test.out

#- 228 ImportStoreByCSV
samples/cli/sample-apps Platform importStoreByCSV \
    --namespace $AB_NAMESPACE \
    --storeId 'Mb0SQCi8z3IIg0Gg' \
    --category 'tmp.dat' \
    --display 'tmp.dat' \
    --item 'tmp.dat' \
    --notes '9COCwOOMslIDKSEJ' \
    --section 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 228 'ImportStoreByCSV' test.out

#- 229 QuerySubscriptions
samples/cli/sample-apps Platform querySubscriptions \
    --namespace $AB_NAMESPACE \
    --chargeStatus 'RECURRING_CHARGING' \
    --itemId '6YkP1v4LCaYCUEZm' \
    --limit '70' \
    --offset '25' \
    --sku 'jYjtm7Ds9xtX8RgQ' \
    --status 'INIT' \
    --subscribedBy 'USER' \
    --userId 'BrEeX5KTB31JWDUP' \
    > test.out 2>&1
eval_tap $? 229 'QuerySubscriptions' test.out

#- 230 RecurringChargeSubscription
samples/cli/sample-apps Platform recurringChargeSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'wMYSXz3hkc0iuLVV' \
    > test.out 2>&1
eval_tap $? 230 'RecurringChargeSubscription' test.out

#- 231 GetTicketDynamic
samples/cli/sample-apps Platform getTicketDynamic \
    --boothName 'isV6ceqkSD0RlO3y' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 231 'GetTicketDynamic' test.out

#- 232 DecreaseTicketSale
samples/cli/sample-apps Platform decreaseTicketSale \
    --boothName 'dPychxhYBAFo3SCw' \
    --namespace $AB_NAMESPACE \
    --body '{"orderNo": "es8ZK30WWtwOWwHV"}' \
    > test.out 2>&1
eval_tap $? 232 'DecreaseTicketSale' test.out

#- 233 GetTicketBoothID
samples/cli/sample-apps Platform getTicketBoothID \
    --boothName 'Q06edSY3QT84Hx8y' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 233 'GetTicketBoothID' test.out

#- 234 IncreaseTicketSale
samples/cli/sample-apps Platform increaseTicketSale \
    --boothName 'UdnB7xYWap90xPBt' \
    --namespace $AB_NAMESPACE \
    --body '{"count": 72, "orderNo": "1NEs7os8njtzpzDH"}' \
    > test.out 2>&1
eval_tap $? 234 'IncreaseTicketSale' test.out

#- 235 Commit
samples/cli/sample-apps Platform commit \
    --namespace $AB_NAMESPACE \
    --body '{"actions": [{"operations": [{"creditPayload": {"balanceOrigin": "Epic", "count": 99, "currencyCode": "CjLiIpxHLwFfL82g", "expireAt": "1977-02-08T00:00:00Z"}, "debitPayload": {"count": 88, "currencyCode": "gUHXb9JTbHJ6lWRg", "walletPlatform": "Steam"}, "fulFillItemPayload": {"count": 73, "entitlementCollectionId": "AeyAByKf0phbW2zb", "entitlementOrigin": "Nintendo", "itemIdentity": "Jyyt7ABLQinYVFRP", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 89, "entitlementId": "hXjYKAQTKvMmjzgy"}, "type": "DEBIT_WALLET"}, {"creditPayload": {"balanceOrigin": "Other", "count": 74, "currencyCode": "mlBko8vU6VUtpH9b", "expireAt": "1978-11-07T00:00:00Z"}, "debitPayload": {"count": 6, "currencyCode": "CvKMzV6qnCARd5io", "walletPlatform": "Nintendo"}, "fulFillItemPayload": {"count": 98, "entitlementCollectionId": "rgObxi0TfalFxuLa", "entitlementOrigin": "Xbox", "itemIdentity": "Ve37qLSns72JYVA4", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 48, "entitlementId": "rFJajbFkvsZJjW6b"}, "type": "DEBIT_WALLET"}, {"creditPayload": {"balanceOrigin": "GooglePlay", "count": 92, "currencyCode": "I22VXj1SmXJ6hH88", "expireAt": "1979-01-18T00:00:00Z"}, "debitPayload": {"count": 74, "currencyCode": "fDRXNAvhwEPXIHqN", "walletPlatform": "Nintendo"}, "fulFillItemPayload": {"count": 86, "entitlementCollectionId": "8ZtDGbarKxuPm86I", "entitlementOrigin": "Oculus", "itemIdentity": "BaZmq9DEZ9aFd2k7", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 83, "entitlementId": "vmcIpMN6UVfC7Myz"}, "type": "CREDIT_WALLET"}], "userId": "7RZQP4KlTSEzfXvu"}, {"operations": [{"creditPayload": {"balanceOrigin": "Nintendo", "count": 27, "currencyCode": "iif4fjSRhMm9GT9i", "expireAt": "1986-02-08T00:00:00Z"}, "debitPayload": {"count": 89, "currencyCode": "fs0dlBfuc6n0w1Vg", "walletPlatform": "Steam"}, "fulFillItemPayload": {"count": 72, "entitlementCollectionId": "wA2HUk0QPbRX5M9L", "entitlementOrigin": "Twitch", "itemIdentity": "QAKyW9orYJnlvkzf", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 15, "entitlementId": "211F8ofLybdf5YgC"}, "type": "CREDIT_WALLET"}, {"creditPayload": {"balanceOrigin": "Steam", "count": 2, "currencyCode": "JcOjuEkHUs6IBqtE", "expireAt": "1972-02-18T00:00:00Z"}, "debitPayload": {"count": 18, "currencyCode": "QmFdj0sOKqExbzHa", "walletPlatform": "GooglePlay"}, "fulFillItemPayload": {"count": 36, "entitlementCollectionId": "BGWq1mSUnqTVGOlI", "entitlementOrigin": "GooglePlay", "itemIdentity": "Cn4jYAEOGPlW4TV3", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 80, "entitlementId": "e6mAHO9Wo4FLuQw9"}, "type": "CREDIT_WALLET"}, {"creditPayload": {"balanceOrigin": "Nintendo", "count": 46, "currencyCode": "WdpromNnH6o7XWMN", "expireAt": "1987-11-22T00:00:00Z"}, "debitPayload": {"count": 13, "currencyCode": "OOmBEeT6MnV5Ylq2", "walletPlatform": "IOS"}, "fulFillItemPayload": {"count": 67, "entitlementCollectionId": "ENsCNW1ka0I45ZhX", "entitlementOrigin": "Epic", "itemIdentity": "nTRj7hbkTjCyF6ZR", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 23, "entitlementId": "XudSGc5ed5Jd1jSy"}, "type": "REVOKE_ENTITLEMENT"}], "userId": "1LL4pt1VYTZ6LhL4"}, {"operations": [{"creditPayload": {"balanceOrigin": "IOS", "count": 45, "currencyCode": "TBNFWsi43Z6J5Sp1", "expireAt": "1987-04-27T00:00:00Z"}, "debitPayload": {"count": 13, "currencyCode": "skkl8vBaMa54gMzf", "walletPlatform": "Steam"}, "fulFillItemPayload": {"count": 82, "entitlementCollectionId": "Kji3Dk3YfW67DV5S", "entitlementOrigin": "Nintendo", "itemIdentity": "0MdhMo5yZqurK4IN", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 62, "entitlementId": "5CMmQbg2hlbkpLWi"}, "type": "REVOKE_ENTITLEMENT"}, {"creditPayload": {"balanceOrigin": "Twitch", "count": 54, "currencyCode": "XNzfcmvVL6VJQfDS", "expireAt": "1982-07-29T00:00:00Z"}, "debitPayload": {"count": 57, "currencyCode": "2sb6Sx6KyTA9wX2H", "walletPlatform": "Xbox"}, "fulFillItemPayload": {"count": 16, "entitlementCollectionId": "2IwZmI10nYjy7Zdb", "entitlementOrigin": "Steam", "itemIdentity": "ozC5L3PmM3pGBQNq", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 62, "entitlementId": "Fzq460QgjHBzF2g8"}, "type": "REVOKE_ENTITLEMENT"}, {"creditPayload": {"balanceOrigin": "System", "count": 6, "currencyCode": "rOGUcSQfPVIYSVI4", "expireAt": "1983-11-20T00:00:00Z"}, "debitPayload": {"count": 56, "currencyCode": "valyz3lb7NQonnVz", "walletPlatform": "Nintendo"}, "fulFillItemPayload": {"count": 5, "entitlementCollectionId": "9oGG3ujAPByyACjq", "entitlementOrigin": "IOS", "itemIdentity": "uBDIhldbdB1w4gpG", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 94, "entitlementId": "JPuY0BN4M1SlUJcz"}, "type": "REVOKE_ENTITLEMENT"}], "userId": "gMfveRDG1w05wkAE"}], "metadata": {"YyjIGnN0bsjZi6Id": {}, "iU75qo2m4QGLFslw": {}, "FjWq1owXLoLkJHvX": {}}, "needPreCheck": true, "transactionId": "SkBDBK2UNfp1U7JT", "type": "p0VmusYVa4pPyAuR"}' \
    > test.out 2>&1
eval_tap $? 235 'Commit' test.out

#- 236 GetTradeHistoryByCriteria
samples/cli/sample-apps Platform getTradeHistoryByCriteria \
    --namespace $AB_NAMESPACE \
    --limit '59' \
    --offset '10' \
    --status 'SUCCESS' \
    --type '0oFmrJN9P74TvSBP' \
    --userId 'Smyldr6P2PcPSHA4' \
    > test.out 2>&1
eval_tap $? 236 'GetTradeHistoryByCriteria' test.out

#- 237 GetTradeHistoryByTransactionId
samples/cli/sample-apps Platform getTradeHistoryByTransactionId \
    --namespace $AB_NAMESPACE \
    --transactionId '7RJRnbOi6q6ho6Qn' \
    > test.out 2>&1
eval_tap $? 237 'GetTradeHistoryByTransactionId' test.out

#- 238 UnlockSteamUserAchievement
samples/cli/sample-apps Platform unlockSteamUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'ptQVelzI3Lp9olzk' \
    --body '{"achievements": [{"id": "jxZG4JUkXbqtT7ZE", "value": 79}, {"id": "E3HxZHtn9I4GmRTG", "value": 91}, {"id": "Y6cWLNT8CSJXUQ1R", "value": 52}], "steamUserId": "P47G9SIsUHgxeiPK"}' \
    > test.out 2>&1
eval_tap $? 238 'UnlockSteamUserAchievement' test.out

#- 239 GetXblUserAchievements
samples/cli/sample-apps Platform getXblUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId 'aubbJzv0RbI8BJVe' \
    --xboxUserId 'uxvgWsFe8x7T7WAe' \
    > test.out 2>&1
eval_tap $? 239 'GetXblUserAchievements' test.out

#- 240 UpdateXblUserAchievement
samples/cli/sample-apps Platform updateXblUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'oSB6xNoYprA8jAuH' \
    --body '{"achievements": [{"id": "tJwCaUMPy1BVhYcU", "percentComplete": 20}, {"id": "AAjprmikd1seXPVX", "percentComplete": 9}, {"id": "gCFegfpLTxIt6KoT", "percentComplete": 86}], "serviceConfigId": "kLwModGPSi7EhdFT", "titleId": "k5OT7C5UgAoCGYeu", "xboxUserId": "hurmtim7Nw37ulC3"}' \
    > test.out 2>&1
eval_tap $? 240 'UpdateXblUserAchievement' test.out

#- 241 AnonymizeCampaign
samples/cli/sample-apps Platform anonymizeCampaign \
    --namespace $AB_NAMESPACE \
    --userId 'LW7NrP9P8ZFV99kg' \
    > test.out 2>&1
eval_tap $? 241 'AnonymizeCampaign' test.out

#- 242 AnonymizeEntitlement
samples/cli/sample-apps Platform anonymizeEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'nCIUQ8JSCn1GHOhe' \
    > test.out 2>&1
eval_tap $? 242 'AnonymizeEntitlement' test.out

#- 243 AnonymizeFulfillment
samples/cli/sample-apps Platform anonymizeFulfillment \
    --namespace $AB_NAMESPACE \
    --userId 'VzA305N2ENxOLOpn' \
    > test.out 2>&1
eval_tap $? 243 'AnonymizeFulfillment' test.out

#- 244 AnonymizeIntegration
samples/cli/sample-apps Platform anonymizeIntegration \
    --namespace $AB_NAMESPACE \
    --userId 'hp2VoWgve9N7X9oi' \
    > test.out 2>&1
eval_tap $? 244 'AnonymizeIntegration' test.out

#- 245 AnonymizeOrder
samples/cli/sample-apps Platform anonymizeOrder \
    --namespace $AB_NAMESPACE \
    --userId 'sBom6qEroBHsU9HP' \
    > test.out 2>&1
eval_tap $? 245 'AnonymizeOrder' test.out

#- 246 AnonymizePayment
samples/cli/sample-apps Platform anonymizePayment \
    --namespace $AB_NAMESPACE \
    --userId 'QwNfW2zf2b00T7Md' \
    > test.out 2>&1
eval_tap $? 246 'AnonymizePayment' test.out

#- 247 AnonymizeRevocation
samples/cli/sample-apps Platform anonymizeRevocation \
    --namespace $AB_NAMESPACE \
    --userId '23PWCNrxdh29sQot' \
    > test.out 2>&1
eval_tap $? 247 'AnonymizeRevocation' test.out

#- 248 AnonymizeSubscription
samples/cli/sample-apps Platform anonymizeSubscription \
    --namespace $AB_NAMESPACE \
    --userId 'Ixp38oAxpJpQm6bh' \
    > test.out 2>&1
eval_tap $? 248 'AnonymizeSubscription' test.out

#- 249 AnonymizeWallet
samples/cli/sample-apps Platform anonymizeWallet \
    --namespace $AB_NAMESPACE \
    --userId 'gvuiSJ6cSl4ZklKE' \
    > test.out 2>&1
eval_tap $? 249 'AnonymizeWallet' test.out

#- 250 GetUserDLCByPlatform
samples/cli/sample-apps Platform getUserDLCByPlatform \
    --namespace $AB_NAMESPACE \
    --userId 'J7QfkSg9j6y0euuS' \
    --type 'PSN' \
    > test.out 2>&1
eval_tap $? 250 'GetUserDLCByPlatform' test.out

#- 251 GetUserDLC
samples/cli/sample-apps Platform getUserDLC \
    --namespace $AB_NAMESPACE \
    --userId 't5A7OJM9JJjKLcfq' \
    --includeAllNamespaces 'false' \
    --status 'REVOKED' \
    --type 'STEAM' \
    > test.out 2>&1
eval_tap $? 251 'GetUserDLC' test.out

#- 252 QueryUserEntitlements
samples/cli/sample-apps Platform queryUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'LKfSpXR92NStYnf1' \
    --activeOnly 'false' \
    --appType 'DLC' \
    --collectionId '4qJuRsc8rejvdyFI' \
    --entitlementClazz 'OPTIONBOX' \
    --entitlementName 'Kfj55KvWICeIrXBk' \
    --features '["yWNno0vkkgb3HdLB", "xg53feH9QzDfV6rY", "LzHzHbpsByMAF9Qz"]' \
    --fuzzyMatchName 'false' \
    --ignoreActiveDate 'true' \
    --itemId '["rlK3KSg8J3HH7ATN", "fNB6Cq3Ghnj2nPbU", "VRBvwHMWvHxtJEl2"]' \
    --limit '45' \
    --offset '91' \
    --origin 'IOS' \
    > test.out 2>&1
eval_tap $? 252 'QueryUserEntitlements' test.out

#- 253 GrantUserEntitlement
samples/cli/sample-apps Platform grantUserEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'sGfVnR3q0QIqkEvf' \
    --body '[{"collectionId": "XpJjvru3oUyacrpu", "endDate": "1999-08-02T00:00:00Z", "grantedCode": "EVjdoCLsjpEzEaEB", "itemId": "iizormkrx044Vbeh", "itemNamespace": "0VzQs0flF7lf6V9i", "language": "AB_PObX_pX", "metadata": {"nESdIdhm3j40kbcY": {}, "mtep1nykGPMjSIoy": {}, "TCOCeafFLHubsuws": {}}, "origin": "Playstation", "quantity": 56, "region": "vuixafdavGLCcilx", "source": "ACHIEVEMENT", "startDate": "1982-08-12T00:00:00Z", "storeId": "LVs6IMTn9ZJjEmSo"}, {"collectionId": "bCjpIBn4ArPr84Cm", "endDate": "1975-10-02T00:00:00Z", "grantedCode": "mWnS1IPW8hzTghOE", "itemId": "EmuDanwGtHapDOsb", "itemNamespace": "6MRbiknOylol7xPx", "language": "Mv", "metadata": {"kbWHbuGjSVM0qGQQ": {}, "drpKjRcv9P5N8uak": {}, "hfM6gT0r4XsDZeVr": {}}, "origin": "Twitch", "quantity": 20, "region": "rtPbv0rOC1UikdJ1", "source": "IAP", "startDate": "1992-02-10T00:00:00Z", "storeId": "QD9u0NrYVkOPRbgs"}, {"collectionId": "uOv6xzsYNlHabd5H", "endDate": "1999-11-28T00:00:00Z", "grantedCode": "Yf6tQ0EamDO2Szx7", "itemId": "NXizFdx9el3iq447", "itemNamespace": "sBw2u2uSBlZN3chi", "language": "Gfel_MMqf_463", "metadata": {"wEC5J2GSfFSiNVHj": {}, "m6FP1UwV14Bl2M0x": {}, "IvsQ37jjyUYmUO26": {}}, "origin": "Other", "quantity": 68, "region": "ANmeWD5mag5CpfMN", "source": "REDEEM_CODE", "startDate": "1979-07-03T00:00:00Z", "storeId": "R1H5rbmMc9PNzq7g"}]' \
    > test.out 2>&1
eval_tap $? 253 'GrantUserEntitlement' test.out

#- 254 GetUserAppEntitlementByAppId
samples/cli/sample-apps Platform getUserAppEntitlementByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'xxUTriOhxtKYPqXL' \
    --activeOnly 'true' \
    --appId 'DyRtezatKfn0HZJt' \
    > test.out 2>&1
eval_tap $? 254 'GetUserAppEntitlementByAppId' test.out

#- 255 QueryUserEntitlementsByAppType
samples/cli/sample-apps Platform queryUserEntitlementsByAppType \
    --namespace $AB_NAMESPACE \
    --userId 'nOYDTSUtCnWFucGr' \
    --activeOnly 'false' \
    --limit '78' \
    --offset '30' \
    --appType 'DEMO' \
    > test.out 2>&1
eval_tap $? 255 'QueryUserEntitlementsByAppType' test.out

#- 256 GetUserEntitlementsByIds
samples/cli/sample-apps Platform getUserEntitlementsByIds \
    --namespace $AB_NAMESPACE \
    --userId '5hrhlU2r9ayCZrRO' \
    --ids '["EhR2fJspHEkRB9n0", "IotD3kiRdhuFnnGk", "9qNbjhNU3nRKyNNM"]' \
    > test.out 2>&1
eval_tap $? 256 'GetUserEntitlementsByIds' test.out

#- 257 GetUserEntitlementByItemId
samples/cli/sample-apps Platform getUserEntitlementByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'AtmIpI4nnP4z6DeJ' \
    --activeOnly 'true' \
    --entitlementClazz 'OPTIONBOX' \
    --platform 'F786ayekOjrGhdUn' \
    --itemId 'G3ZqviO6vVO3Oc6y' \
    > test.out 2>&1
eval_tap $? 257 'GetUserEntitlementByItemId' test.out

#- 258 GetUserActiveEntitlementsByItemIds
samples/cli/sample-apps Platform getUserActiveEntitlementsByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'mlv9KGjdLGvf7ih1' \
    --ids '["LfXxIrMrTnMlnfPb", "NI6d4OGvxXLGZWQF", "lFenlGB9PaptkHNV"]' \
    --platform 'UVaax72gHO3VMAZM' \
    > test.out 2>&1
eval_tap $? 258 'GetUserActiveEntitlementsByItemIds' test.out

#- 259 GetUserEntitlementBySku
samples/cli/sample-apps Platform getUserEntitlementBySku \
    --namespace $AB_NAMESPACE \
    --userId 'eTpJXW8QvFDQMM23' \
    --activeOnly 'true' \
    --entitlementClazz 'APP' \
    --platform 'kZ8rZdatiUwCWbcE' \
    --sku 'GC1uaxicdQmXnsGX' \
    > test.out 2>&1
eval_tap $? 259 'GetUserEntitlementBySku' test.out

#- 260 ExistsAnyUserActiveEntitlement
samples/cli/sample-apps Platform existsAnyUserActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'dA22RF1J2rsvNyG6' \
    --appIds '["bsvca6iY5lm6AVrw", "4gU08DxLIkMeE3sv", "DZoShfMfM6mr53is"]' \
    --itemIds '["06kN5tcyeX8npsbv", "Q5EH90wtTQHxEURj", "rrJH8kDKkEEsNgCY"]' \
    --platform 'cbkDEgaeaO3IauFl' \
    --skus '["ebZVXdY6vcQp4fDg", "ZS3i1pSOyopQdG0v", "iK18yO2ZWXgfQqkO"]' \
    > test.out 2>&1
eval_tap $? 260 'ExistsAnyUserActiveEntitlement' test.out

#- 261 ExistsAnyUserActiveEntitlementByItemIds
samples/cli/sample-apps Platform existsAnyUserActiveEntitlementByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'vrRmanKMgu9OmOEJ' \
    --platform 'jdKffMW0jtM51j2K' \
    --itemIds '["bEb63V0kmll7cNkT", "MW288Y5JwWvVr4gB", "5FaaB7vVD3bQil4U"]' \
    > test.out 2>&1
eval_tap $? 261 'ExistsAnyUserActiveEntitlementByItemIds' test.out

#- 262 GetUserAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform getUserAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'ZtHmSNccMrRmnpiE' \
    --appId 'Dfgf82ibxJ0qg6uj' \
    > test.out 2>&1
eval_tap $? 262 'GetUserAppEntitlementOwnershipByAppId' test.out

#- 263 GetUserEntitlementOwnershipByItemId
samples/cli/sample-apps Platform getUserEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'IItCwkLagcuXdbfF' \
    --entitlementClazz 'OPTIONBOX' \
    --platform '5CNDcgcZ3pU5lX8o' \
    --itemId 'r4JfFYFshMxPJoLS' \
    > test.out 2>&1
eval_tap $? 263 'GetUserEntitlementOwnershipByItemId' test.out

#- 264 GetUserEntitlementOwnershipByItemIds
samples/cli/sample-apps Platform getUserEntitlementOwnershipByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'J0WnF6sKAdVy3Qti' \
    --ids '["86GNDMyJwtetN778", "OmY41vVhGTXkFbGo", "JVMvARd9TsizWXEE"]' \
    --platform 'JTOLJZkpasl1h8bX' \
    > test.out 2>&1
eval_tap $? 264 'GetUserEntitlementOwnershipByItemIds' test.out

#- 265 GetUserEntitlementOwnershipBySku
samples/cli/sample-apps Platform getUserEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --userId '12KtQMfZL24VAUCT' \
    --entitlementClazz 'CODE' \
    --platform 'U1bGkQjcOPwGABOW' \
    --sku 'q4kdQYWbc3FqaR4O' \
    > test.out 2>&1
eval_tap $? 265 'GetUserEntitlementOwnershipBySku' test.out

#- 266 RevokeAllEntitlements
samples/cli/sample-apps Platform revokeAllEntitlements \
    --namespace $AB_NAMESPACE \
    --userId '3Bhe4Dp2l2kcjqVa' \
    > test.out 2>&1
eval_tap $? 266 'RevokeAllEntitlements' test.out

#- 267 RevokeUserEntitlements
samples/cli/sample-apps Platform revokeUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'JaQCEUDSqJU74qQN' \
    --entitlementIds 'x1fzF1DpGrzlEUxp' \
    > test.out 2>&1
eval_tap $? 267 'RevokeUserEntitlements' test.out

#- 268 GetUserEntitlement
samples/cli/sample-apps Platform getUserEntitlement \
    --entitlementId 'UxCtt2SgC3DZ86Fl' \
    --namespace $AB_NAMESPACE \
    --userId 'rF7nLJfEvqpew8hl' \
    > test.out 2>&1
eval_tap $? 268 'GetUserEntitlement' test.out

#- 269 UpdateUserEntitlement
samples/cli/sample-apps Platform updateUserEntitlement \
    --entitlementId 'N9fqY0vdtDhwBBQw' \
    --namespace $AB_NAMESPACE \
    --userId 'hjtrwtVUueitLnuG' \
    --body '{"collectionId": "iuzpIPjJdOrbN7m3", "endDate": "1993-05-31T00:00:00Z", "nullFieldList": ["zP44CeeFHBGkVNbk", "x5dTmOkTvcBB1UVQ", "TPxBzOlSAEUYSdQd"], "origin": "Xbox", "reason": "gqKkIR6M5GpkkNzP", "startDate": "1973-11-26T00:00:00Z", "status": "INACTIVE", "useCount": 65}' \
    > test.out 2>&1
eval_tap $? 269 'UpdateUserEntitlement' test.out

#- 270 ConsumeUserEntitlement
samples/cli/sample-apps Platform consumeUserEntitlement \
    --entitlementId 'RpkVIm41ZFTlmnK6' \
    --namespace $AB_NAMESPACE \
    --userId '8dVduw920vStRQ0n' \
    --body '{"metadata": {"knwV1lXjLwzEuMjB": {}, "XKKnYnGKybsn0g0b": {}, "f5622VSpfIuKrhzL": {}}, "options": ["9ZfXkwbGOx7NuWdp", "FVfjaR1gX8pLcZhF", "b2bKGSUgDYpvDWpv"], "platform": "xXghvaulazHPDUIX", "requestId": "J5rQQxZ8cEHd0vRG", "useCount": 64}' \
    > test.out 2>&1
eval_tap $? 270 'ConsumeUserEntitlement' test.out

#- 271 DisableUserEntitlement
samples/cli/sample-apps Platform disableUserEntitlement \
    --entitlementId 'BjmT87xP3YmQMTIz' \
    --namespace $AB_NAMESPACE \
    --userId 'ZdAmbdEyVxXUDsey' \
    > test.out 2>&1
eval_tap $? 271 'DisableUserEntitlement' test.out

#- 272 EnableUserEntitlement
samples/cli/sample-apps Platform enableUserEntitlement \
    --entitlementId 'VJE1m2U3NpUKjgY4' \
    --namespace $AB_NAMESPACE \
    --userId 'WzQf5LZGoxce57Vu' \
    > test.out 2>&1
eval_tap $? 272 'EnableUserEntitlement' test.out

#- 273 GetUserEntitlementHistories
samples/cli/sample-apps Platform getUserEntitlementHistories \
    --entitlementId 'EgYJMCHTIH3E4A4j' \
    --namespace $AB_NAMESPACE \
    --userId 'FCPeJvxsstCqF2aZ' \
    > test.out 2>&1
eval_tap $? 273 'GetUserEntitlementHistories' test.out

#- 274 RevokeUserEntitlement
samples/cli/sample-apps Platform revokeUserEntitlement \
    --entitlementId 'hIQzvhpuAW0QdQ65' \
    --namespace $AB_NAMESPACE \
    --userId 'mCXats5sx0QpkzS5' \
    --body '{"metadata": {"mqv9THrLhiugGWA1": {}, "SPDbmMKgskS2olIP": {}, "Dl60njZ1iidTRiH8": {}}}' \
    > test.out 2>&1
eval_tap $? 274 'RevokeUserEntitlement' test.out

#- 275 RevokeUserEntitlementByUseCount
samples/cli/sample-apps Platform revokeUserEntitlementByUseCount \
    --entitlementId 'znGfEhDYhQv5Bm4Y' \
    --namespace $AB_NAMESPACE \
    --userId 'GqSecFcJexHg8gA5' \
    --body '{"reason": "yUrVEBfSbLbq31AZ", "useCount": 67}' \
    > test.out 2>&1
eval_tap $? 275 'RevokeUserEntitlementByUseCount' test.out

#- 276 PreCheckRevokeUserEntitlementByUseCount
samples/cli/sample-apps Platform preCheckRevokeUserEntitlementByUseCount \
    --entitlementId 'I8IGLuIgvmazCeKk' \
    --namespace $AB_NAMESPACE \
    --userId 'U7xHFNQs6jKF1pA3' \
    --quantity '14' \
    > test.out 2>&1
eval_tap $? 276 'PreCheckRevokeUserEntitlementByUseCount' test.out

#- 277 RevokeUseCount
eval_tap 0 277 'RevokeUseCount # SKIP deprecated' test.out

#- 278 SellUserEntitlement
samples/cli/sample-apps Platform sellUserEntitlement \
    --entitlementId 'DmhxaFUI0LKzAOBg' \
    --namespace $AB_NAMESPACE \
    --userId 'NSVnEJmGZCkWLSJo' \
    --body '{"platform": "hFO8HSWfEGVh7PCW", "requestId": "9AEBQvYVJbO6X1E1", "useCount": 46}' \
    > test.out 2>&1
eval_tap $? 278 'SellUserEntitlement' test.out

#- 279 FulfillItem
samples/cli/sample-apps Platform fulfillItem \
    --namespace $AB_NAMESPACE \
    --userId 'qgzmBEBTEmlhDNnO' \
    --body '{"duration": 8, "endDate": "1995-11-05T00:00:00Z", "entitlementCollectionId": "OrGR3p3GuWUtBTqn", "entitlementOrigin": "Playstation", "itemId": "T6JMc9C1zlARS0mb", "itemSku": "tBRmCdwZ02n4k5k6", "language": "5BxS1Fteqn3jFXBR", "metadata": {"GWVWGRgMzcBIx1ah": {}, "Y45nZ8dFs3GFpcuO": {}, "hylcTsVMkzDxQqhR": {}}, "order": {"currency": {"currencyCode": "KZrhoSSGTzQ5qfWn", "currencySymbol": "4cTWcxJgOJGzIyF6", "currencyType": "REAL", "decimals": 5, "namespace": "oP4uNDXVsuOgpm8j"}, "ext": {"tPsAhwCUc4juJigo": {}, "4BVSZfPZXyZUV9Ok": {}, "u5rYMSm2FmPPbKbJ": {}}, "free": true}, "orderNo": "p007DHn3J5w1XWuq", "origin": "Epic", "overrideBundleItemQty": {"WygaevgQUZktpUu0": 64, "w5IqXMN7o88U0hb2": 1, "ysCcGfk3puRaoVdP": 16}, "quantity": 80, "region": "GQe4zaQMmdCvQxlI", "source": "IAP", "startDate": "1983-03-26T00:00:00Z", "storeId": "z6efYJGsuVEzHBVC"}' \
    > test.out 2>&1
eval_tap $? 279 'FulfillItem' test.out

#- 280 RedeemCode
samples/cli/sample-apps Platform redeemCode \
    --namespace $AB_NAMESPACE \
    --userId 'RVNpIIlDMD4Tc8wZ' \
    --body '{"code": "sWPPx7hCJRMHEwJR", "language": "OHWm_vTku", "region": "1AsG2bvXCFUSlvJ4"}' \
    > test.out 2>&1
eval_tap $? 280 'RedeemCode' test.out

#- 281 PreCheckFulfillItem
samples/cli/sample-apps Platform preCheckFulfillItem \
    --namespace $AB_NAMESPACE \
    --userId 'IkMUuXqvWyl0sLhg' \
    --body '{"itemId": "2VhpkkFSCEaDzu0P", "itemSku": "1Ab04kttUeJVgdpJ", "quantity": 21}' \
    > test.out 2>&1
eval_tap $? 281 'PreCheckFulfillItem' test.out

#- 282 FulfillRewards
samples/cli/sample-apps Platform fulfillRewards \
    --namespace $AB_NAMESPACE \
    --userId 'suA4ubzyDmhhrTDF' \
    --body '{"entitlementCollectionId": "fOyemJvZyXY7VvYz", "entitlementOrigin": "IOS", "metadata": {"5ikpT5301GAj5Y4h": {}, "bPO3isFWwQkFoB25": {}, "ut8nUJv1Sin1pSCb": {}}, "origin": "Twitch", "rewards": [{"currency": {"currencyCode": "89yEjjPjw4XR51xU", "namespace": "1Yui1xzhLVt5JvDY"}, "item": {"itemId": "4ClU4OXJgQuhiRVs", "itemName": "bZRgA2PEzmVR5PvZ", "itemSku": "3cQj3Jh7uUz8Zjon", "itemType": "4tCWNP6TAcke25Cc"}, "quantity": 83, "type": "CURRENCY"}, {"currency": {"currencyCode": "IUZenuJ33OPWQfSk", "namespace": "8nFvcdhFfNj2VHMt"}, "item": {"itemId": "0mktxtN9FdgwCWxi", "itemName": "r6zcpCDWK1qoK6zE", "itemSku": "tr56KIVhXTBsopOi", "itemType": "PcxzEtmPbGwiiTd3"}, "quantity": 50, "type": "ITEM"}, {"currency": {"currencyCode": "EJ7O4VIBSkoI6J1j", "namespace": "umrsCXd6080QnCUq"}, "item": {"itemId": "vMyBhlCAh8Ho8utl", "itemName": "QNfp27haT8WZqoKq", "itemSku": "ffWy6zbU48jS3Vyp", "itemType": "qDVIjtdcoeUI8DiY"}, "quantity": 7, "type": "CURRENCY"}], "source": "GIFT", "transactionId": "tu6MT5LpQwid5mjV"}' \
    > test.out 2>&1
eval_tap $? 282 'FulfillRewards' test.out

#- 283 QueryUserIAPOrders
samples/cli/sample-apps Platform queryUserIAPOrders \
    --namespace $AB_NAMESPACE \
    --userId 'yeTaJJhAPGfzwaWP' \
    --endTime 'F70u2zFSZLyYYd9n' \
    --limit '38' \
    --offset '62' \
    --productId 'aMQVEU17UXW2JzUB' \
    --startTime 'RKmuDbU20Xr2FdLR' \
    --status 'REVOKE_FAILED' \
    --type 'EPICGAMES' \
    > test.out 2>&1
eval_tap $? 283 'QueryUserIAPOrders' test.out

#- 284 QueryAllUserIAPOrders
samples/cli/sample-apps Platform queryAllUserIAPOrders \
    --namespace $AB_NAMESPACE \
    --userId 'RJWEN1Rmbqj3vgkk' \
    > test.out 2>&1
eval_tap $? 284 'QueryAllUserIAPOrders' test.out

#- 285 QueryUserIAPConsumeHistory
samples/cli/sample-apps Platform queryUserIAPConsumeHistory \
    --namespace $AB_NAMESPACE \
    --userId 'JdZPNjC4c8aZN8au' \
    --endTime 'fzOtdwlCSUrulmyv' \
    --limit '42' \
    --offset '76' \
    --startTime '0GOoE9WEv4RFNGZz' \
    --status 'SUCCESS' \
    --type 'APPLE' \
    > test.out 2>&1
eval_tap $? 285 'QueryUserIAPConsumeHistory' test.out

#- 286 MockFulfillIAPItem
samples/cli/sample-apps Platform mockFulfillIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'zXqA1BXPaScwJySh' \
    --body '{"itemIdentityType": "ITEM_ID", "language": "rTG", "productId": "l0iRvOVlj9TMCSEj", "region": "Zi0ilrWHpEscLWDH", "transactionId": "v21f9RGgOA90dOTI", "type": "APPLE"}' \
    > test.out 2>&1
eval_tap $? 286 'MockFulfillIAPItem' test.out

#- 287 AdminGetIAPOrderLineItems
samples/cli/sample-apps Platform adminGetIAPOrderLineItems \
    --iapOrderNo 'ToXZYvyz40slVQx3' \
    --namespace $AB_NAMESPACE \
    --userId 'NGQQvK6PlAVAkFDX' \
    > test.out 2>&1
eval_tap $? 287 'AdminGetIAPOrderLineItems' test.out

#- 288 AdminSyncSteamAbnormalTransaction
samples/cli/sample-apps Platform adminSyncSteamAbnormalTransaction \
    --namespace $AB_NAMESPACE \
    --userId 'CbsIKYeoYuR20Xdr' \
    > test.out 2>&1
eval_tap $? 288 'AdminSyncSteamAbnormalTransaction' test.out

#- 289 AdminSyncSteamIAPByTransaction
samples/cli/sample-apps Platform adminSyncSteamIAPByTransaction \
    --namespace $AB_NAMESPACE \
    --userId 'Drh0tNjA25Utkm8b' \
    --body '{"orderId": "yuyxiqn0QJMVJLVO"}' \
    > test.out 2>&1
eval_tap $? 289 'AdminSyncSteamIAPByTransaction' test.out

#- 290 QueryUserThirdPartySubscription
samples/cli/sample-apps Platform queryUserThirdPartySubscription \
    --namespace $AB_NAMESPACE \
    --userId 'DdUMrUvx1Nm1lQ7Z' \
    --activeOnly 'false' \
    --groupId 'xq0QBZAwom8J5boy' \
    --limit '23' \
    --offset '84' \
    --platform 'APPLE' \
    --productId 'WafojLGvfkmcAu2J' \
    > test.out 2>&1
eval_tap $? 290 'QueryUserThirdPartySubscription' test.out

#- 291 GetThirdPartyPlatformSubscriptionOwnershipByGroupId
samples/cli/sample-apps Platform getThirdPartyPlatformSubscriptionOwnershipByGroupId \
    --namespace $AB_NAMESPACE \
    --platform 'XBOX' \
    --userId 'oGrfSZaHYRc3pYt5' \
    --groupId 'McYgK3aH9GK9C8bm' \
    > test.out 2>&1
eval_tap $? 291 'GetThirdPartyPlatformSubscriptionOwnershipByGroupId' test.out

#- 292 GetThirdPartyPlatformSubscriptionOwnershipByProductId
samples/cli/sample-apps Platform getThirdPartyPlatformSubscriptionOwnershipByProductId \
    --namespace $AB_NAMESPACE \
    --platform 'STADIA' \
    --userId '6MnoT9vnpbGLdryk' \
    --productId 'YZbv9lb3o67GAOq4' \
    > test.out 2>&1
eval_tap $? 292 'GetThirdPartyPlatformSubscriptionOwnershipByProductId' test.out

#- 293 QueryUserThirdPartySubscriptionTransactions
samples/cli/sample-apps Platform queryUserThirdPartySubscriptionTransactions \
    --namespace $AB_NAMESPACE \
    --userId 'OxtrcACDnmXBixMF' \
    --activeOnly 'false' \
    --groupId 'dDJTxXnfOOUVSWUg' \
    --limit '79' \
    --offset '3' \
    --platform 'OCULUS' \
    --productId '8xkQtrjrGwcgw5e6' \
    > test.out 2>&1
eval_tap $? 293 'QueryUserThirdPartySubscriptionTransactions' test.out

#- 294 GetThirdPartySubscriptionDetails
samples/cli/sample-apps Platform getThirdPartySubscriptionDetails \
    --id '8jI9qp1N2hduDJsm' \
    --namespace $AB_NAMESPACE \
    --userId 'plGvRC6JrtsMKvEL' \
    > test.out 2>&1
eval_tap $? 294 'GetThirdPartySubscriptionDetails' test.out

#- 295 GetSubscriptionHistory
samples/cli/sample-apps Platform getSubscriptionHistory \
    --id '1cSvqtumfSgZWUsU' \
    --namespace $AB_NAMESPACE \
    --userId 'rzKTUVm7xNFnsyOx' \
    --limit '92' \
    --offset '67' \
    > test.out 2>&1
eval_tap $? 295 'GetSubscriptionHistory' test.out

#- 296 SyncSubscriptionTransaction
samples/cli/sample-apps Platform syncSubscriptionTransaction \
    --id '5nqcY8FTuGN3sEJK' \
    --namespace $AB_NAMESPACE \
    --userId 'iMNm0giyOlME7Z4Q' \
    > test.out 2>&1
eval_tap $? 296 'SyncSubscriptionTransaction' test.out

#- 297 GetThirdPartyUserSubscriptionDetails
samples/cli/sample-apps Platform getThirdPartyUserSubscriptionDetails \
    --id 'vIA2jMhU910K8zJw' \
    --namespace $AB_NAMESPACE \
    --userId 'dptit4afVK7c9EWx' \
    > test.out 2>&1
eval_tap $? 297 'GetThirdPartyUserSubscriptionDetails' test.out

#- 298 SyncSubscription
samples/cli/sample-apps Platform syncSubscription \
    --id 'pzK0wVkjeNP7eMMk' \
    --namespace $AB_NAMESPACE \
    --userId 'GlwJPTbW9CbMcSfk' \
    > test.out 2>&1
eval_tap $? 298 'SyncSubscription' test.out

#- 299 QueryUserOrders
samples/cli/sample-apps Platform queryUserOrders \
    --namespace $AB_NAMESPACE \
    --userId 'PtNWgxcrl3BpfRLx' \
    --discounted 'false' \
    --itemId 'U95WrlgTEzNAPKoQ' \
    --limit '71' \
    --offset '12' \
    --status 'FULFILLED' \
    > test.out 2>&1
eval_tap $? 299 'QueryUserOrders' test.out

#- 300 AdminCreateUserOrder
samples/cli/sample-apps Platform adminCreateUserOrder \
    --namespace $AB_NAMESPACE \
    --userId 'TnJDrR6RQ9o2WK8B' \
    --body '{"currencyCode": "SH0PYnl3XGQ3MfWA", "currencyNamespace": "E44V0dGgEBzMmzjg", "discountCodes": ["2xOzCQPjFyaSuHGE", "YclMC39r7gsdYucu", "jdUn1bhvx4P163pa"], "discountedPrice": 56, "entitlementPlatform": "Epic", "ext": {"OZhPTEY0Rtodugoa": {}, "nkzsYHktihlTjAcO": {}, "xJ3h6Z9ixhxX5KmX": {}}, "itemId": "6wPev8QOFhZ6eeiB", "language": "sa9Ky4fwlDtL7eJr", "options": {"skipPriceValidation": true}, "platform": "Steam", "price": 31, "quantity": 65, "region": "mZqiFJXWqFPJ86BG", "returnUrl": "nWNKzI2m0qiHQMmf", "sandbox": false, "sectionId": "9aDttj84rKfUz1o9"}' \
    > test.out 2>&1
eval_tap $? 300 'AdminCreateUserOrder' test.out

#- 301 CountOfPurchasedItem
samples/cli/sample-apps Platform countOfPurchasedItem \
    --namespace $AB_NAMESPACE \
    --userId 'rfEmyspsSsnpQd2s' \
    --itemId 'snmi5HovxH8SvgkT' \
    > test.out 2>&1
eval_tap $? 301 'CountOfPurchasedItem' test.out

#- 302 GetUserOrder
samples/cli/sample-apps Platform getUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'Fr2BX8BDOtdRecBq' \
    --userId 'jL7U3ApzNBZZyEtD' \
    > test.out 2>&1
eval_tap $? 302 'GetUserOrder' test.out

#- 303 UpdateUserOrderStatus
samples/cli/sample-apps Platform updateUserOrderStatus \
    --namespace $AB_NAMESPACE \
    --orderNo 'PNDDuojf0dan1usw' \
    --userId 'CJULriwZjOYlo9uE' \
    --body '{"status": "CHARGEBACK_REVERSED", "statusReason": "KNpMyD9KnSgb0VY2"}' \
    > test.out 2>&1
eval_tap $? 303 'UpdateUserOrderStatus' test.out

#- 304 FulfillUserOrder
samples/cli/sample-apps Platform fulfillUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'VWQnszgkI3mhrNR7' \
    --userId 'ee7Zh9aQulU2WE6P' \
    > test.out 2>&1
eval_tap $? 304 'FulfillUserOrder' test.out

#- 305 GetUserOrderGrant
eval_tap 0 305 'GetUserOrderGrant # SKIP deprecated' test.out

#- 306 GetUserOrderHistories
samples/cli/sample-apps Platform getUserOrderHistories \
    --namespace $AB_NAMESPACE \
    --orderNo 'jQljlWBg8avOFWMH' \
    --userId 'p4F2azPAHsznPBUA' \
    > test.out 2>&1
eval_tap $? 306 'GetUserOrderHistories' test.out

#- 307 ProcessUserOrderNotification
samples/cli/sample-apps Platform processUserOrderNotification \
    --namespace $AB_NAMESPACE \
    --orderNo 'VUNLUjMt0L37pbPm' \
    --userId 'MR7oBhS3GKybrvYA' \
    --body '{"additionalData": {"cardSummary": "C3otVLrMMRkCVbxM"}, "authorisedTime": "1973-06-05T00:00:00Z", "chargebackReversedTime": "1992-01-20T00:00:00Z", "chargebackTime": "1971-07-13T00:00:00Z", "chargedTime": "1987-09-22T00:00:00Z", "createdTime": "1992-09-14T00:00:00Z", "currency": {"currencyCode": "BJMVzvprtA8ECFWX", "currencySymbol": "RLYQlW8JJA2Fiq85", "currencyType": "VIRTUAL", "decimals": 44, "namespace": "rcHtwgfu48P8zjVR"}, "customParameters": {"fi98kbSoRGpuR4xg": {}, "7kOYenR0E4bwkrPl": {}, "sZyPlZAv9tbu6IbL": {}}, "extOrderNo": "Skhc3uS9zgHenat7", "extTxId": "ItY0ebJ7Ca8sQlte", "extUserId": "yb016gTmBi3NS8qu", "issuedAt": "1994-06-20T00:00:00Z", "metadata": {"kXoyO1NaZElCuFfI": "TR8XUcKQTdAcZ0pn", "HdBo8HtbjfnFh1wa": "MMI1qrDOlqgkKnVe", "jw0kHVdptd14KKdw": "HkEXf8khIjNXh12x"}, "namespace": "R2Y4FgbJyFwLVVBU", "nonceStr": "FvXDA4lhvVGNzInW", "paymentData": {"discountAmount": 41, "discountCode": "JQ5T4RxB3NqrYkAu", "subtotalPrice": 84, "tax": 49, "totalPrice": 14}, "paymentMethod": "Hjvf4p2kDHYYBi6u", "paymentMethodFee": 84, "paymentOrderNo": "OMEc732tseyjE37Y", "paymentProvider": "STRIPE", "paymentProviderFee": 91, "paymentStationUrl": "6fjt3exxOYpzNNgM", "price": 52, "refundedTime": "1994-12-22T00:00:00Z", "salesTax": 24, "sandbox": false, "sku": "7tSNLQRuBLwhbx87", "status": "DELETED", "statusReason": "vGJm8M8LkpcZrkZV", "subscriptionId": "ALRSoaLYqmVqagMv", "subtotalPrice": 97, "targetNamespace": "mC6mnfItONTfdQhn", "targetUserId": "dSfGPzETSWdvtcRx", "tax": 31, "totalPrice": 91, "totalTax": 97, "txEndTime": "1971-06-15T00:00:00Z", "type": "m3xvlR6ji5MVhofd", "userId": "qCGCZbsZJSy8FYZl", "vat": 91}' \
    > test.out 2>&1
eval_tap $? 307 'ProcessUserOrderNotification' test.out

#- 308 DownloadUserOrderReceipt
samples/cli/sample-apps Platform downloadUserOrderReceipt \
    --namespace $AB_NAMESPACE \
    --orderNo 'ntgJi92U85MIhBVt' \
    --userId 'ZSuPBKveGqRNPsOi' \
    > test.out 2>&1
eval_tap $? 308 'DownloadUserOrderReceipt' test.out

#- 309 CreateUserPaymentOrder
samples/cli/sample-apps Platform createUserPaymentOrder \
    --namespace $AB_NAMESPACE \
    --userId 'a8ZYFDfbuR0ijGt2' \
    --body '{"currencyCode": "KnZGthyjsgFL6AWa", "currencyNamespace": "YanSf0nSPUGpKk31", "customParameters": {"PtWuKSJAfLRky5pX": {}, "yv9HPrtK4m8QBBJQ": {}, "dLJS0wRdmxtLF32d": {}}, "description": "bTGsjermS4ihKhEu", "extOrderNo": "7nVF4tkTGLWWz7Xu", "extUserId": "aYn0gMSbYfZHc3dF", "itemType": "SEASON", "language": "RrN-CZGl", "metadata": {"UMHG2IJLcobofjUt": "XPqjpjMkRDt6FqPn", "i1vdP50ESD6PYKOp": "pxTPuAnoQKKzCi4Z", "79wdYXLV1mthAT6H": "uwkrYTE17UEfR63O"}, "notifyUrl": "oBWWCsxsdef6ctfz", "omitNotification": true, "platform": "6HvXRtUIH3icO9rN", "price": 61, "recurringPaymentOrderNo": "K2DFa9QC3pCfCHHL", "region": "DI59GfYVZyMBMyxo", "returnUrl": "HWnnT2uyymudyPSX", "sandbox": false, "sku": "gObOjchvQVGH1I7P", "subscriptionId": "HAN0xULNI7m6X6eY", "title": "HfXowV0lSZHHfewK"}' \
    > test.out 2>&1
eval_tap $? 309 'CreateUserPaymentOrder' test.out

#- 310 RefundUserPaymentOrder
samples/cli/sample-apps Platform refundUserPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'fHqXy1xAlY63hByO' \
    --userId 'gqscqrd0uDL1yVs1' \
    --body '{"description": "5bwhpBnMzPzqD0no"}' \
    > test.out 2>&1
eval_tap $? 310 'RefundUserPaymentOrder' test.out

#- 311 GetUserPlatformAccountClosureHistories
samples/cli/sample-apps Platform getUserPlatformAccountClosureHistories \
    --namespace $AB_NAMESPACE \
    --userId 'LRr5gpDnwDOOOFuE' \
    > test.out 2>&1
eval_tap $? 311 'GetUserPlatformAccountClosureHistories' test.out

#- 312 ApplyUserRedemption
samples/cli/sample-apps Platform applyUserRedemption \
    --namespace $AB_NAMESPACE \
    --userId 'CNWs3yH5vdOMcpRC' \
    --body '{"code": "ABZmi2ePH2If2Sxx", "orderNo": "4XwUOunfTmkCosZu"}' \
    > test.out 2>&1
eval_tap $? 312 'ApplyUserRedemption' test.out

#- 313 DoRevocation
samples/cli/sample-apps Platform doRevocation \
    --namespace $AB_NAMESPACE \
    --userId '4ZYwAYyGnAgMqO8M' \
    --body '{"meta": {"amp4zGIP1hAfHRN5": {}, "LXX3r88DREAPu67Y": {}, "HxW5zCIvjDBw5OLO": {}}, "reason": "YX2oGgvB3XPtP2zA", "requestId": "vNhZvBmasfGBthDq", "revokeEntries": [{"currency": {"balanceOrigin": "Epic", "currencyCode": "E8mHr13NtmagVvFJ", "namespace": "hbxzlafDxj5bKCok"}, "entitlement": {"entitlementId": "iMli1hyO4eJsDLNA"}, "item": {"entitlementOrigin": "Epic", "itemIdentity": "mQZ8JcY5JBddVTIC", "itemIdentityType": "ITEM_ID", "origin": "Other"}, "quantity": 35, "type": "ITEM"}, {"currency": {"balanceOrigin": "Epic", "currencyCode": "nA3DJFr8tIuSj5vJ", "namespace": "dYxLytptJdix4Awi"}, "entitlement": {"entitlementId": "H2bxrdjRETrgRdYN"}, "item": {"entitlementOrigin": "IOS", "itemIdentity": "kgnXanOnSpFXytgm", "itemIdentityType": "ITEM_ID", "origin": "Playstation"}, "quantity": 68, "type": "CURRENCY"}, {"currency": {"balanceOrigin": "Epic", "currencyCode": "1LYtlFLk4vWjbVvv", "namespace": "8aIQMv50CtZ3dos8"}, "entitlement": {"entitlementId": "QIVrvAFmK0ofIy34"}, "item": {"entitlementOrigin": "Epic", "itemIdentity": "7k0sZAvF7B5dLxzE", "itemIdentityType": "ITEM_ID", "origin": "Playstation"}, "quantity": 56, "type": "ENTITLEMENT"}], "source": "ORDER", "transactionId": "MJbpgVcAaCgYkMPg"}' \
    > test.out 2>&1
eval_tap $? 313 'DoRevocation' test.out

#- 314 RegisterXblSessions
samples/cli/sample-apps Platform registerXblSessions \
    --namespace $AB_NAMESPACE \
    --userId 'cBIPidNEqRvGpuLC' \
    --body '{"gameSessionId": "2B5BmTIJoOcUOPVK", "payload": {"8wozb7eOgSJEPV92": {}, "UtPZS1ZY27IQ6n2p": {}, "J2MCgcGV32aLTUbM": {}}, "scid": "4kdcjnNJbljNobJz", "sessionTemplateName": "XHdehG7kEFOnzhNL"}' \
    > test.out 2>&1
eval_tap $? 314 'RegisterXblSessions' test.out

#- 315 QueryUserSubscriptions
samples/cli/sample-apps Platform queryUserSubscriptions \
    --namespace $AB_NAMESPACE \
    --userId 'W6gs3Wl4gbFxbwCV' \
    --chargeStatus 'CHARGE_FAILED' \
    --itemId 'urWiCLu1fhwDOWXF' \
    --limit '3' \
    --offset '30' \
    --sku 'kTyTCGygJuFH5x5v' \
    --status 'INIT' \
    --subscribedBy 'USER' \
    > test.out 2>&1
eval_tap $? 315 'QueryUserSubscriptions' test.out

#- 316 GetUserSubscriptionActivities
samples/cli/sample-apps Platform getUserSubscriptionActivities \
    --namespace $AB_NAMESPACE \
    --userId 'Ftou4gC7bguWLW7Y' \
    --excludeSystem 'false' \
    --limit '4' \
    --offset '20' \
    --subscriptionId 'WfYoynbgcaDOeiJy' \
    > test.out 2>&1
eval_tap $? 316 'GetUserSubscriptionActivities' test.out

#- 317 PlatformSubscribeSubscription
samples/cli/sample-apps Platform platformSubscribeSubscription \
    --namespace $AB_NAMESPACE \
    --userId '5O0PYRQ0Uc56qOgj' \
    --body '{"grantDays": 58, "itemId": "P8oFMGYXSjXGw9BH", "language": "0BagZofP4H32Fqn3", "reason": "Uj2bi3RIwYkIzxFh", "region": "IirI7Oq5HPlDF2O8", "source": "IzurGmYXwvGoL9eo"}' \
    > test.out 2>&1
eval_tap $? 317 'PlatformSubscribeSubscription' test.out

#- 318 CheckUserSubscriptionSubscribableByItemId
samples/cli/sample-apps Platform checkUserSubscriptionSubscribableByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'L1EELQueFJJMpeY6' \
    --itemId 'H0nEmRv1XgwxuQIZ' \
    > test.out 2>&1
eval_tap $? 318 'CheckUserSubscriptionSubscribableByItemId' test.out

#- 319 GetUserSubscription
samples/cli/sample-apps Platform getUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId '3hUHo9aZVlaHeW2k' \
    --userId 'SJoOHlUM27dZuXlx' \
    > test.out 2>&1
eval_tap $? 319 'GetUserSubscription' test.out

#- 320 DeleteUserSubscription
samples/cli/sample-apps Platform deleteUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId '0aqETls4XVZgOAeL' \
    --userId 'CyYrgb5XA1BFnkyU' \
    > test.out 2>&1
eval_tap $? 320 'DeleteUserSubscription' test.out

#- 321 CancelSubscription
samples/cli/sample-apps Platform cancelSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'k0TjMOjNB8Ej38rL' \
    --userId 'tJU8WqNwsPvhcbXc' \
    --force 'false' \
    --body '{"immediate": true, "reason": "WzXvmg4CJp45y5nv"}' \
    > test.out 2>&1
eval_tap $? 321 'CancelSubscription' test.out

#- 322 GrantDaysToSubscription
samples/cli/sample-apps Platform grantDaysToSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'Tp0jdk8j1pPVYuk8' \
    --userId 'Tht3pQ1qPpN92j65' \
    --body '{"grantDays": 25, "reason": "ZwdOQjqTvOFanx0d"}' \
    > test.out 2>&1
eval_tap $? 322 'GrantDaysToSubscription' test.out

#- 323 GetUserSubscriptionBillingHistories
samples/cli/sample-apps Platform getUserSubscriptionBillingHistories \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'EwkO9H2k7WUcR9ph' \
    --userId 'maY2GFjO1MjLZosw' \
    --excludeFree 'false' \
    --limit '66' \
    --offset '56' \
    > test.out 2>&1
eval_tap $? 323 'GetUserSubscriptionBillingHistories' test.out

#- 324 ProcessUserSubscriptionNotification
samples/cli/sample-apps Platform processUserSubscriptionNotification \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'i9R9VcsHFeFH3C3d' \
    --userId '2bqZalpvTcm4X7rb' \
    --body '{"additionalData": {"cardSummary": "QVB3CrXcfG15ble7"}, "authorisedTime": "1980-06-08T00:00:00Z", "chargebackReversedTime": "1978-02-27T00:00:00Z", "chargebackTime": "1985-11-01T00:00:00Z", "chargedTime": "1971-05-09T00:00:00Z", "createdTime": "1972-06-14T00:00:00Z", "currency": {"currencyCode": "WkFNo3pIRMLYp3z9", "currencySymbol": "wMSSWhEgKsQI9KqT", "currencyType": "VIRTUAL", "decimals": 63, "namespace": "GorGABHIKfyHnmH9"}, "customParameters": {"KiZsPT2TdjG0ThSx": {}, "oCsD4SNzHX4txBE5": {}, "1EAzLuQpCdp8vB5M": {}}, "extOrderNo": "yolmzguRbGaI1f30", "extTxId": "x13mMGBYLHj7uCoT", "extUserId": "vOHRW2yuer00ToVf", "issuedAt": "1976-05-16T00:00:00Z", "metadata": {"pjOmbfffMf8MzdzS": "3kyZ8qGW69M2UnXI", "RPO5PDhdcn5rhwOq": "QKNgLGZjhNWpvKN1", "lNgBAT1bfJ5xA8mE": "pOyfdeObrsJgbnwx"}, "namespace": "AfRaC8XGDEXbx1Oz", "nonceStr": "lJWnNLFK0Ku5qFUv", "paymentData": {"discountAmount": 31, "discountCode": "kumqj4q2G5r0cOiG", "subtotalPrice": 76, "tax": 21, "totalPrice": 29}, "paymentMethod": "bv3s9EcWFxbMhtP0", "paymentMethodFee": 47, "paymentOrderNo": "oeYJAd8Iz4Zf8TYe", "paymentProvider": "ALIPAY", "paymentProviderFee": 46, "paymentStationUrl": "5YPD5ClKQAkDBMAN", "price": 63, "refundedTime": "1975-08-22T00:00:00Z", "salesTax": 61, "sandbox": true, "sku": "DXEG1eBFZCnxdZYX", "status": "INIT", "statusReason": "2nxWYYqEK8NyrNEp", "subscriptionId": "pj6I3oPBQM0YjFUV", "subtotalPrice": 21, "targetNamespace": "XaTUwtiVnpoxGRJB", "targetUserId": "BdoFuJwrPVSsQHxU", "tax": 21, "totalPrice": 40, "totalTax": 100, "txEndTime": "1972-05-10T00:00:00Z", "type": "cQyYQ6cMaWWS4Y1F", "userId": "IhwM5sLTFakbs01j", "vat": 66}' \
    > test.out 2>&1
eval_tap $? 324 'ProcessUserSubscriptionNotification' test.out

#- 325 AcquireUserTicket
samples/cli/sample-apps Platform acquireUserTicket \
    --boothName 'qVe93iDxf9ou8Zgf' \
    --namespace $AB_NAMESPACE \
    --userId 'M32XCS6CbXoj5nDs' \
    --body '{"count": 53, "orderNo": "aZEczEmiFHgxcyHS"}' \
    > test.out 2>&1
eval_tap $? 325 'AcquireUserTicket' test.out

#- 326 QueryUserCurrencyWallets
samples/cli/sample-apps Platform queryUserCurrencyWallets \
    --namespace $AB_NAMESPACE \
    --userId 'mLNDHevf20tpm4J4' \
    > test.out 2>&1
eval_tap $? 326 'QueryUserCurrencyWallets' test.out

#- 327 DebitUserWalletByCurrencyCode
samples/cli/sample-apps Platform debitUserWalletByCurrencyCode \
    --currencyCode 'd07NNgfIt0FBVh09' \
    --namespace $AB_NAMESPACE \
    --userId 'l4WAtLEAicqqAHMz' \
    --body '{"allowOverdraft": false, "amount": 25, "balanceOrigin": "GooglePlay", "balanceSource": "EXPIRATION", "metadata": {"SgPfeYcd2Xte9z4R": {}, "lkKx3mGvilgCcdFu": {}, "Pmm3rID4J6dZeZHT": {}}, "reason": "UE76Aep9M9JnLbG5"}' \
    > test.out 2>&1
eval_tap $? 327 'DebitUserWalletByCurrencyCode' test.out

#- 328 ListUserCurrencyTransactions
samples/cli/sample-apps Platform listUserCurrencyTransactions \
    --currencyCode 'oJ5vWblBh2VLb4aS' \
    --namespace $AB_NAMESPACE \
    --userId 'N9Tke01PQQHZCQei' \
    --limit '32' \
    --offset '16' \
    > test.out 2>&1
eval_tap $? 328 'ListUserCurrencyTransactions' test.out

#- 329 CheckBalance
samples/cli/sample-apps Platform checkBalance \
    --currencyCode 'KMLey6CXOkrJ9Urj' \
    --namespace $AB_NAMESPACE \
    --userId 'cPwgrkSszZ9peXKc' \
    --request '{"amount": 93, "debitBalanceSource": "OTHER", "metadata": {"IiKz38VC2Bcozdd1": {}, "WfkykAs7sY4D5zjp": {}, "80rMFzGDYOi0Q5gE": {}}, "reason": "EnkjddvdGCohWmA5", "walletPlatform": "Playstation"}' \
    > test.out 2>&1
eval_tap $? 329 'CheckBalance' test.out

#- 330 CheckWallet
eval_tap 0 330 'CheckWallet # SKIP deprecated' test.out

#- 331 CreditUserWallet
samples/cli/sample-apps Platform creditUserWallet \
    --currencyCode 'E3m5uqBVExMztDXW' \
    --namespace $AB_NAMESPACE \
    --userId 'QCR754R2qaaLrq3K' \
    --body '{"amount": 8, "expireAt": "1993-04-29T00:00:00Z", "metadata": {"2dL4PwmCwuyS6tWl": {}, "fSHwtYdwryTHeCrc": {}, "DyvZMuPdDMUREQIH": {}}, "origin": "Steam", "reason": "hPwo6Hbhy5ko3aWH", "source": "PURCHASE"}' \
    > test.out 2>&1
eval_tap $? 331 'CreditUserWallet' test.out

#- 332 DebitByWalletPlatform
samples/cli/sample-apps Platform debitByWalletPlatform \
    --currencyCode 'Hww8obZQubIlvtuJ' \
    --namespace $AB_NAMESPACE \
    --userId '5Yg02z7pFdOV3ONE' \
    --request '{"amount": 47, "debitBalanceSource": "ORDER_REVOCATION", "metadata": {"844M40u9RkGqvzzS": {}, "YXeIrA86oyKqYb58": {}, "xNfscgkUIODIFLy5": {}}, "reason": "PNeoxEnEYGciGuoR", "walletPlatform": "Oculus"}' \
    > test.out 2>&1
eval_tap $? 332 'DebitByWalletPlatform' test.out

#- 333 PayWithUserWallet
samples/cli/sample-apps Platform payWithUserWallet \
    --currencyCode 'ClC7ogCnPmwQZxC1' \
    --namespace $AB_NAMESPACE \
    --userId 'dXkX28wBUaaARWxY' \
    --body '{"amount": 6, "metadata": {"LYB191eWV1NhPXg7": {}, "Prl65abkfHJ7jCy2": {}, "fLrmWQA0veydZ7ta": {}}, "walletPlatform": "Oculus"}' \
    > test.out 2>&1
eval_tap $? 333 'PayWithUserWallet' test.out

#- 334 GetUserWallet
eval_tap 0 334 'GetUserWallet # SKIP deprecated' test.out

#- 335 DebitUserWallet
eval_tap 0 335 'DebitUserWallet # SKIP deprecated' test.out

#- 336 DisableUserWallet
eval_tap 0 336 'DisableUserWallet # SKIP deprecated' test.out

#- 337 EnableUserWallet
eval_tap 0 337 'EnableUserWallet # SKIP deprecated' test.out

#- 338 ListUserWalletTransactions
eval_tap 0 338 'ListUserWalletTransactions # SKIP deprecated' test.out

#- 339 ListViews
samples/cli/sample-apps Platform listViews \
    --namespace $AB_NAMESPACE \
    --storeId 'y9lxUrAwYYaUBdP4' \
    > test.out 2>&1
eval_tap $? 339 'ListViews' test.out

#- 340 CreateView
samples/cli/sample-apps Platform createView \
    --namespace $AB_NAMESPACE \
    --storeId 'xiJcdhG8iCeP1Zl4' \
    --body '{"displayOrder": 91, "localizations": {"udOpdkr0GXoIm3ZI": {"description": "vsuaXXBijwci9xoX", "localExt": {"wGcLvW3rbQ2FoG0s": {}, "9NbpRwgAYT4Zftbu": {}, "KDWAKUHI4RWQA9nU": {}}, "longDescription": "IKd8RbcccUbhJ3dc", "title": "vfcF9GFvrc766prX"}, "xcgO6cON4FRflF6L": {"description": "U4I2bacYGOveVHhE", "localExt": {"Z3hpSigqpnYsKA97": {}, "X6AfWGsDVAQ6ER7f": {}, "TYzWtggDa7OJuPfy": {}}, "longDescription": "yJsN9J5RW2wZftYa", "title": "glJwSj0gergVRoKg"}, "9E7Ko2bzZBmXiMTh": {"description": "8dx951Ak7bcsHFHl", "localExt": {"kUwysbtORfOpgTcX": {}, "1BAiWGP8VKQd018S": {}, "lwBnuJJcO63BMPS6": {}}, "longDescription": "dQCcPNMGiHL5zRsy", "title": "QKC8s1ZFe1khov9p"}}, "name": "wmUNifj7FjqBoHxw"}' \
    > test.out 2>&1
eval_tap $? 340 'CreateView' test.out

#- 341 GetView
samples/cli/sample-apps Platform getView \
    --namespace $AB_NAMESPACE \
    --viewId 'NFz2AaElNxlnbUL8' \
    --storeId 'IouVk6SlDvm9OmJv' \
    > test.out 2>&1
eval_tap $? 341 'GetView' test.out

#- 342 UpdateView
samples/cli/sample-apps Platform updateView \
    --namespace $AB_NAMESPACE \
    --viewId 'dgyyfZxjwuTZDiwn' \
    --storeId 'xpg0etVYLGBjdiIZ' \
    --body '{"displayOrder": 95, "localizations": {"L7U7O2R7jJ5YPWEG": {"description": "GZITThX6ke03h5Pr", "localExt": {"LiqSXDSoDGSa8apz": {}, "Vz5cnpch8hcn8Cc3": {}, "vMMOtcb4G1loGUSP": {}}, "longDescription": "bL1jwd06rZeJxO1e", "title": "gab5lHzvRLSJBNpi"}, "o0KqewpvLifjjZOD": {"description": "mWHBGlhluymqZPU0", "localExt": {"lJneQs7eusEmHTjE": {}, "x6xBrCexKO0TvxFL": {}, "v5SN445n850lSEO0": {}}, "longDescription": "hl6Z0RWvJy2UDX4h", "title": "XBo1wE30bUzHimoK"}, "7RlfEkD9odqtNt5l": {"description": "sOJKlmw7DYqa62WV", "localExt": {"jstetyFA43NeddUp": {}, "piY5s380HaLnBzwM": {}, "bZellhd6OqeRyvzL": {}}, "longDescription": "6iR7rVX9Jsm75GAs", "title": "nRRt9ur4jB8SDWVJ"}}, "name": "mIiFPIS8m3YA5WwL"}' \
    > test.out 2>&1
eval_tap $? 342 'UpdateView' test.out

#- 343 DeleteView
samples/cli/sample-apps Platform deleteView \
    --namespace $AB_NAMESPACE \
    --viewId 'vgw0YNEgMQYw16nf' \
    --storeId 'XK4vpkFRTvTz6a6g' \
    > test.out 2>&1
eval_tap $? 343 'DeleteView' test.out

#- 344 GetWalletConfig
samples/cli/sample-apps Platform getWalletConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 344 'GetWalletConfig' test.out

#- 345 UpdateWalletConfig
samples/cli/sample-apps Platform updateWalletConfig \
    --namespace $AB_NAMESPACE \
    --body '{"enablePaidForVCExpiration": true}' \
    > test.out 2>&1
eval_tap $? 345 'UpdateWalletConfig' test.out

#- 346 QueryWallets
eval_tap 0 346 'QueryWallets # SKIP deprecated' test.out

#- 347 BulkCredit
samples/cli/sample-apps Platform bulkCredit \
    --namespace $AB_NAMESPACE \
    --body '[{"creditRequest": {"amount": 73, "expireAt": "1975-02-07T00:00:00Z", "metadata": {"dwhKW2lBxDCukNEq": {}, "roonCwvOZnSk8xEx": {}, "f7t4HwCo9WgetPtm": {}}, "origin": "GooglePlay", "reason": "SLx7T8sLTH5spRGQ", "source": "PURCHASE"}, "currencyCode": "TdYeekv6RHOhH7tK", "userIds": ["3gHtkZVb5DSN92SI", "jX44F57y7l9PPZip", "TrL5KkvYXqWzJNlN"]}, {"creditRequest": {"amount": 41, "expireAt": "1975-10-10T00:00:00Z", "metadata": {"Os5Vrn5qDzx5wZar": {}, "zZ7MqNCDR6FJBngM": {}, "IqaGbzE7dOPhm60I": {}}, "origin": "Oculus", "reason": "ep3fBqiCtgPrPbyP", "source": "REDEEM_CODE"}, "currencyCode": "098i8lcD45S6PhDI", "userIds": ["MlZMLfhf3PcyUU6m", "Gy4b8TCWN3LeO2sw", "yxlAPR51Vqsco80S"]}, {"creditRequest": {"amount": 45, "expireAt": "1992-09-27T00:00:00Z", "metadata": {"dmTci1g4ZomiBKyf": {}, "RkYz6RU6lBsd6hib": {}, "EyRwvR8vi3XnyTpU": {}}, "origin": "System", "reason": "f1PG6fEbZkAodBBc", "source": "IAP"}, "currencyCode": "w8u3mY23daF526at", "userIds": ["bfvgRFzDNNN9rCCD", "TQihKxJ5ueRnDC9B", "zmATS9DFmSmKTjDo"]}]' \
    > test.out 2>&1
eval_tap $? 347 'BulkCredit' test.out

#- 348 BulkDebit
samples/cli/sample-apps Platform bulkDebit \
    --namespace $AB_NAMESPACE \
    --body '[{"currencyCode": "6cge5byle8AYYAVf", "request": {"allowOverdraft": false, "amount": 65, "balanceOrigin": "Xbox", "balanceSource": "EXPIRATION", "metadata": {"WqH5VyNjq9PjCCbt": {}, "VpNzlJ3rQGQrO9FQ": {}, "FNJs5uuzN1H7MFha": {}}, "reason": "lJfKXKxQ5ylUmEtq"}, "userIds": ["ihUUw4hQxwG2PDtq", "tzzT5E2Tjwqin0iT", "luW68oJvZ9N7Iuxh"]}, {"currencyCode": "yukuUwAe5gvFssxI", "request": {"allowOverdraft": true, "amount": 66, "balanceOrigin": "Nintendo", "balanceSource": "DLC_REVOCATION", "metadata": {"MT7dAfVf2TM3k9ku": {}, "0hZW7xEOrDhZSXxH": {}, "Fkp6h2EqBFiJLD7o": {}}, "reason": "lbCsHb1J3pla3zzj"}, "userIds": ["1sZfHl9TYm4HEtZG", "77mZBDyTV7eIVI0u", "s05H16sKthIVeYNF"]}, {"currencyCode": "YEvXwYeWa7c0PRfa", "request": {"allowOverdraft": true, "amount": 61, "balanceOrigin": "Oculus", "balanceSource": "EXPIRATION", "metadata": {"otNAijMDwqzTELSM": {}, "Q5O0bNqthri2IlLT": {}, "GXojcslJrG0f4Es4": {}}, "reason": "sNpfXCg5fDZ7CdWS"}, "userIds": ["MT0l5eoDWTruJaSX", "ziwZJ6uHBYaPWzl7", "0TanPsVo0UzsSLub"]}]' \
    > test.out 2>&1
eval_tap $? 348 'BulkDebit' test.out

#- 349 GetWallet
eval_tap 0 349 'GetWallet # SKIP deprecated' test.out

#- 350 SyncOrders
samples/cli/sample-apps Platform syncOrders \
    --nextEvaluatedKey '5tG4vmfGxKCzxSP2' \
    --end 'GSAOrnvdnLkMD8zP' \
    --start 'LEZcq358If8aOxUq' \
    > test.out 2>&1
eval_tap $? 350 'SyncOrders' test.out

#- 351 TestAdyenConfig
samples/cli/sample-apps Platform testAdyenConfig \
    --sandbox 'true' \
    --body '{"allowedPaymentMethods": ["yTrnpX28cAHHhQFd", "y73dXaVnAQloiP3O", "tOBhxdOASbauEVfr"], "apiKey": "tJNvi11iizIaCLH9", "authoriseAsCapture": true, "blockedPaymentMethods": ["O5R2ojjWwwbdlmuR", "7FQncePTKhYRgeLC", "EdtfN40rXjoq9Sra"], "clientKey": "lddBzG3ZxM8C0Aes", "dropInSettings": "eXtvorQO0NynNQpr", "liveEndpointUrlPrefix": "fXuoBhqm3KUQ0Cyc", "merchantAccount": "JC3vZ6GZnKAa2eLQ", "notificationHmacKey": "oEKFytZO4z3klhUl", "notificationPassword": "btd1tCsIrUdVMUnc", "notificationUsername": "Gh4oiJBPHIeWVCeN", "returnUrl": "cLmG0iNPpPvOm6eR", "settings": "xXac2VYaljDhSxb6"}' \
    > test.out 2>&1
eval_tap $? 351 'TestAdyenConfig' test.out

#- 352 TestAliPayConfig
samples/cli/sample-apps Platform testAliPayConfig \
    --sandbox 'false' \
    --body '{"appId": "4WyjyuRZlfjRMWBc", "privateKey": "O04YVgEkQAp96Fsa", "publicKey": "QXEb4gtT12eB0pEZ", "returnUrl": "rkwHzOlKqF6uNCzN"}' \
    > test.out 2>&1
eval_tap $? 352 'TestAliPayConfig' test.out

#- 353 TestCheckoutConfig
samples/cli/sample-apps Platform testCheckoutConfig \
    --sandbox 'false' \
    --body '{"publicKey": "g4fMybBYprXPKqNl", "secretKey": "W7LuvMSP4NYPGegK"}' \
    > test.out 2>&1
eval_tap $? 353 'TestCheckoutConfig' test.out

#- 354 DebugMatchedPaymentMerchantConfig
samples/cli/sample-apps Platform debugMatchedPaymentMerchantConfig \
    --namespace 'o8I7G99OV1IcEAn7' \
    --region 'jrFs7n9E8m4azgPZ' \
    > test.out 2>&1
eval_tap $? 354 'DebugMatchedPaymentMerchantConfig' test.out

#- 355 TestNeonPayConfig
samples/cli/sample-apps Platform testNeonPayConfig \
    --sandbox 'true' \
    --body '{"apiKey": "YLrURN4MEdFtxiSB", "webhookSecretKey": "F21iAfTkfvvP0aVA"}' \
    > test.out 2>&1
eval_tap $? 355 'TestNeonPayConfig' test.out

#- 356 TestPayPalConfig
samples/cli/sample-apps Platform testPayPalConfig \
    --sandbox 'false' \
    --body '{"clientID": "XBXC25kgoX4jLdUi", "clientSecret": "LSHC9gMVFrjQLobD", "returnUrl": "BLnLgXJ5NgvjLnMI", "webHookId": "K5HcUhIK6kCPfah4"}' \
    > test.out 2>&1
eval_tap $? 356 'TestPayPalConfig' test.out

#- 357 TestStripeConfig
samples/cli/sample-apps Platform testStripeConfig \
    --sandbox 'true' \
    --body '{"allowedPaymentMethodTypes": ["S6uF7H22qKSul5A4", "7D6wiifaBJejTaBw", "8iyxDah6tDn08zlH"], "publishableKey": "9ZUcdwFz2ZH45R77", "secretKey": "rI9xVlt5e7bs4zIr", "webhookSecret": "9BTSRkZvlonRGdow"}' \
    > test.out 2>&1
eval_tap $? 357 'TestStripeConfig' test.out

#- 358 TestWxPayConfig
samples/cli/sample-apps Platform testWxPayConfig \
    --body '{"appId": "6dLHx80hvCqLjWDG", "key": "pUrii9Ya0XjpS8Lo", "mchid": "EWOt1IGpMdaHPWh9", "returnUrl": "uXDYKHfCpoMXSnh9"}' \
    > test.out 2>&1
eval_tap $? 358 'TestWxPayConfig' test.out

#- 359 TestXsollaConfig
samples/cli/sample-apps Platform testXsollaConfig \
    --body '{"apiKey": "q9B6b1yL3QDNIG0Q", "flowCompletionUrl": "1DbLJRHxcWnk3DT4", "merchantId": 50, "projectId": 64, "projectSecretKey": "gzoDEXn5FeNrqIdF"}' \
    > test.out 2>&1
eval_tap $? 359 'TestXsollaConfig' test.out

#- 360 GetPaymentMerchantConfig1
samples/cli/sample-apps Platform getPaymentMerchantConfig1 \
    --id 'z5XKmQyG4yL2x5pk' \
    > test.out 2>&1
eval_tap $? 360 'GetPaymentMerchantConfig1' test.out

#- 361 UpdateAdyenConfig
samples/cli/sample-apps Platform updateAdyenConfig \
    --id 'OnbXFgCym80SihNt' \
    --sandbox 'false' \
    --validate 'true' \
    --body '{"allowedPaymentMethods": ["klaSb6TR9rTmZeUz", "QyfCWy7LBAnYCUzA", "JemE7yd5BXqJzJb6"], "apiKey": "XQvDavkNArfcAkQn", "authoriseAsCapture": false, "blockedPaymentMethods": ["hDU5QqHtHA0nKrOu", "6PBd8JEH5l1MSre4", "oqoFRWesG3VZLQT9"], "clientKey": "WPvZMyhduBwIbMPC", "dropInSettings": "x0HiRYdijtttJGKx", "liveEndpointUrlPrefix": "sZWvTxRPPE369EY8", "merchantAccount": "1IlFOBXYmzgSkDWR", "notificationHmacKey": "x7GUq2kVQQgxCBbP", "notificationPassword": "DWLwADB0MTgBKEwM", "notificationUsername": "MWP8uEuGmKE5RkJp", "returnUrl": "LNqqJOlSbP99fqN4", "settings": "DiRrY25Eg2jEpN26"}' \
    > test.out 2>&1
eval_tap $? 361 'UpdateAdyenConfig' test.out

#- 362 TestAdyenConfigById
samples/cli/sample-apps Platform testAdyenConfigById \
    --id 'PZ4816gWgrPYlL3k' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 362 'TestAdyenConfigById' test.out

#- 363 UpdateAliPayConfig
samples/cli/sample-apps Platform updateAliPayConfig \
    --id '5vaJJfZNG2SBSFyV' \
    --sandbox 'false' \
    --validate 'true' \
    --body '{"appId": "qU9Cdnl3pFft6Omk", "privateKey": "iXXEAr6X4cilJwEN", "publicKey": "b09BtqM76JJmGdzq", "returnUrl": "89VRrDeG9ucHBypw"}' \
    > test.out 2>&1
eval_tap $? 363 'UpdateAliPayConfig' test.out

#- 364 TestAliPayConfigById
samples/cli/sample-apps Platform testAliPayConfigById \
    --id 'ZIVDOTYSIg4fiMjC' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 364 'TestAliPayConfigById' test.out

#- 365 UpdateCheckoutConfig
samples/cli/sample-apps Platform updateCheckoutConfig \
    --id '7B0ecmKbnEu98rh5' \
    --sandbox 'false' \
    --validate 'false' \
    --body '{"publicKey": "IrabtlahNmmgQo6V", "secretKey": "HZPbqClcucAMXT57"}' \
    > test.out 2>&1
eval_tap $? 365 'UpdateCheckoutConfig' test.out

#- 366 TestCheckoutConfigById
samples/cli/sample-apps Platform testCheckoutConfigById \
    --id 'qeN59NOqwNU4jg56' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 366 'TestCheckoutConfigById' test.out

#- 367 UpdateNeonPayConfig
samples/cli/sample-apps Platform updateNeonPayConfig \
    --id 'BAAZF8yc90PZsO2b' \
    --sandbox 'true' \
    --validate 'true' \
    --body '{"apiKey": "FKlIEsC7jO5NUNdl", "webhookSecretKey": "RSAu1EKWcrjOs6fY"}' \
    > test.out 2>&1
eval_tap $? 367 'UpdateNeonPayConfig' test.out

#- 368 TestNeonPayConfigById
samples/cli/sample-apps Platform testNeonPayConfigById \
    --id 'asakJrOjseEb1xfO' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 368 'TestNeonPayConfigById' test.out

#- 369 UpdatePayPalConfig
samples/cli/sample-apps Platform updatePayPalConfig \
    --id 'geVCUveVvRSYAgyd' \
    --sandbox 'true' \
    --validate 'true' \
    --body '{"clientID": "1oZSVJzRKXQFV3VM", "clientSecret": "swZvx20ifaGzsZoA", "returnUrl": "ox2OviP4kyQarcM3", "webHookId": "kjpCbiYLeTv2SVle"}' \
    > test.out 2>&1
eval_tap $? 369 'UpdatePayPalConfig' test.out

#- 370 TestPayPalConfigById
samples/cli/sample-apps Platform testPayPalConfigById \
    --id 'fqGu9QGuT3OiHHYr' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 370 'TestPayPalConfigById' test.out

#- 371 UpdateStripeConfig
samples/cli/sample-apps Platform updateStripeConfig \
    --id 'NQ47MjAYZpnTiwnT' \
    --sandbox 'false' \
    --validate 'true' \
    --body '{"allowedPaymentMethodTypes": ["Zfo1EU1DzeJWf54a", "nFah5DO8zO7SjNMv", "y4eOm2KsfGnBgTHW"], "publishableKey": "ZJCSJaNIpwb5t0ug", "secretKey": "Zsp3r7LZsvmsMJT9", "webhookSecret": "ZUtM1vXcg9jknUBt"}' \
    > test.out 2>&1
eval_tap $? 371 'UpdateStripeConfig' test.out

#- 372 TestStripeConfigById
samples/cli/sample-apps Platform testStripeConfigById \
    --id 'xgcnnvf2cn9ibAMc' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 372 'TestStripeConfigById' test.out

#- 373 UpdateWxPayConfig
samples/cli/sample-apps Platform updateWxPayConfig \
    --id 'zQxWTQdliocpQRNm' \
    --validate 'false' \
    --body '{"appId": "pklvQOWeMZEeOFZJ", "key": "atdI19tvUAVAvasg", "mchid": "NDwE78iIVcDShhsD", "returnUrl": "eownuLc8RDd97qfF"}' \
    > test.out 2>&1
eval_tap $? 373 'UpdateWxPayConfig' test.out

#- 374 UpdateWxPayConfigCert
samples/cli/sample-apps Platform updateWxPayConfigCert \
    --id '8jvLuAryOCBfdb3d' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 374 'UpdateWxPayConfigCert' test.out

#- 375 TestWxPayConfigById
samples/cli/sample-apps Platform testWxPayConfigById \
    --id '9HS3TuC8wo82JUJa' \
    > test.out 2>&1
eval_tap $? 375 'TestWxPayConfigById' test.out

#- 376 UpdateXsollaConfig
samples/cli/sample-apps Platform updateXsollaConfig \
    --id 'csCCHGj4oQOGqygO' \
    --validate 'true' \
    --body '{"apiKey": "HxDrlYtsn5aJSkVS", "flowCompletionUrl": "BXrgk27eD5y2LWAy", "merchantId": 83, "projectId": 100, "projectSecretKey": "iqbR3zCvQiEX5DSL"}' \
    > test.out 2>&1
eval_tap $? 376 'UpdateXsollaConfig' test.out

#- 377 TestXsollaConfigById
samples/cli/sample-apps Platform testXsollaConfigById \
    --id 'OKWmZRUhv1Po5lqO' \
    > test.out 2>&1
eval_tap $? 377 'TestXsollaConfigById' test.out

#- 378 UpdateXsollaUIConfig
samples/cli/sample-apps Platform updateXsollaUIConfig \
    --id 'txPMqedLQhw1ZQGo' \
    --body '{"device": "DESKTOP", "showCloseButton": false, "size": "SMALL", "theme": "DARK"}' \
    > test.out 2>&1
eval_tap $? 378 'UpdateXsollaUIConfig' test.out

#- 379 QueryPaymentProviderConfig
samples/cli/sample-apps Platform queryPaymentProviderConfig \
    --limit '96' \
    --namespace 'qQzIAUr6NklGmWf2' \
    --offset '98' \
    --region 'h5gUoY9ZRzu8YnNK' \
    > test.out 2>&1
eval_tap $? 379 'QueryPaymentProviderConfig' test.out

#- 380 CreatePaymentProviderConfig
samples/cli/sample-apps Platform createPaymentProviderConfig \
    --body '{"aggregate": "NEONPAY", "namespace": "7RsxnWhS8VvzqZyc", "region": "H49Aecw2Dxx5oJi3", "sandboxTaxJarApiToken": "1mi8Bh1rK9jlBVy1", "specials": ["WXPAY", "ADYEN", "ADYEN"], "taxJarApiToken": "OcVCN5ouvlYSV67I", "taxJarEnabled": true, "useGlobalTaxJarApiToken": true}' \
    > test.out 2>&1
eval_tap $? 380 'CreatePaymentProviderConfig' test.out

#- 381 GetAggregatePaymentProviders
samples/cli/sample-apps Platform getAggregatePaymentProviders \
    > test.out 2>&1
eval_tap $? 381 'GetAggregatePaymentProviders' test.out

#- 382 DebugMatchedPaymentProviderConfig
samples/cli/sample-apps Platform debugMatchedPaymentProviderConfig \
    --namespace 'O6DKjIvV7nY1t0N0' \
    --region 'aGfFf1GeUeiDbbGS' \
    > test.out 2>&1
eval_tap $? 382 'DebugMatchedPaymentProviderConfig' test.out

#- 383 GetSpecialPaymentProviders
samples/cli/sample-apps Platform getSpecialPaymentProviders \
    > test.out 2>&1
eval_tap $? 383 'GetSpecialPaymentProviders' test.out

#- 384 UpdatePaymentProviderConfig
samples/cli/sample-apps Platform updatePaymentProviderConfig \
    --id '2UFueiJHNe9VvU1d' \
    --body '{"aggregate": "ADYEN", "namespace": "g9mU1dJ9ZaJWb4RA", "region": "y96Llpg6RmNcXEza", "sandboxTaxJarApiToken": "k5AvAPzV39jdRqQQ", "specials": ["ADYEN", "XSOLLA", "ADYEN"], "taxJarApiToken": "q7nkXwE0aYkaoCNZ", "taxJarEnabled": false, "useGlobalTaxJarApiToken": false}' \
    > test.out 2>&1
eval_tap $? 384 'UpdatePaymentProviderConfig' test.out

#- 385 DeletePaymentProviderConfig
samples/cli/sample-apps Platform deletePaymentProviderConfig \
    --id '9vS0Maskg4iklocm' \
    > test.out 2>&1
eval_tap $? 385 'DeletePaymentProviderConfig' test.out

#- 386 GetPaymentTaxConfig
samples/cli/sample-apps Platform getPaymentTaxConfig \
    > test.out 2>&1
eval_tap $? 386 'GetPaymentTaxConfig' test.out

#- 387 UpdatePaymentTaxConfig
samples/cli/sample-apps Platform updatePaymentTaxConfig \
    --body '{"sandboxTaxJarApiToken": "AoL5btpxMZjG2bCB", "taxJarApiToken": "Zrdey7pPPar5nnf2", "taxJarEnabled": true, "taxJarProductCodesMapping": {"OXnYI5V2mm7wcq7x": "fDuAjytOBJLIgbWq", "RTjIAwChBx80d6av": "0hk2nyYxnnjKX34f", "FFUf1SeUqm4GZFaO": "tigDfxRSoUL3tfnL"}}' \
    > test.out 2>&1
eval_tap $? 387 'UpdatePaymentTaxConfig' test.out

#- 388 SyncPaymentOrders
samples/cli/sample-apps Platform syncPaymentOrders \
    --nextEvaluatedKey 'qZUrX8QwWISYVBrn' \
    --end 'LIxykmyKHTVFg4uX' \
    --start 'W3SyG4oHQOOGOewE' \
    > test.out 2>&1
eval_tap $? 388 'SyncPaymentOrders' test.out

#- 389 PublicGetRootCategories
samples/cli/sample-apps Platform publicGetRootCategories \
    --namespace $AB_NAMESPACE \
    --language '4oyZ57jJ3LIurc20' \
    --storeId 'bVNLMvhr15x9SGPO' \
    > test.out 2>&1
eval_tap $? 389 'PublicGetRootCategories' test.out

#- 390 DownloadCategories
samples/cli/sample-apps Platform downloadCategories \
    --namespace $AB_NAMESPACE \
    --language 'sdD3nZulJc3SoS4C' \
    --storeId 'UoRV14ujcTmzhUVO' \
    > test.out 2>&1
eval_tap $? 390 'DownloadCategories' test.out

#- 391 PublicGetCategory
samples/cli/sample-apps Platform publicGetCategory \
    --categoryPath 'bIFuSaMZufyAigWC' \
    --namespace $AB_NAMESPACE \
    --language '7DhowCAMAxkdDsy0' \
    --storeId 'uhddIbRoqUt9mbsx' \
    > test.out 2>&1
eval_tap $? 391 'PublicGetCategory' test.out

#- 392 PublicGetChildCategories
samples/cli/sample-apps Platform publicGetChildCategories \
    --categoryPath '0B9qnFxUvHaPN1dg' \
    --namespace $AB_NAMESPACE \
    --language '839dirDHKxPdcWh7' \
    --storeId 'suCRwZr2XQ8IyY0W' \
    > test.out 2>&1
eval_tap $? 392 'PublicGetChildCategories' test.out

#- 393 PublicGetDescendantCategories
samples/cli/sample-apps Platform publicGetDescendantCategories \
    --categoryPath 'vhXNQHY6KSBV48tc' \
    --namespace $AB_NAMESPACE \
    --language 'pkLnfv4YjtfJM0c2' \
    --storeId 'zYwX98weXcWPY8S2' \
    > test.out 2>&1
eval_tap $? 393 'PublicGetDescendantCategories' test.out

#- 394 PublicListCurrencies
samples/cli/sample-apps Platform publicListCurrencies \
    --namespace $AB_NAMESPACE \
    --currencyType 'REAL' \
    > test.out 2>&1
eval_tap $? 394 'PublicListCurrencies' test.out

#- 395 GeDLCDurableRewardShortMap
samples/cli/sample-apps Platform geDLCDurableRewardShortMap \
    --namespace $AB_NAMESPACE \
    --dlcType 'STEAM' \
    > test.out 2>&1
eval_tap $? 395 'GeDLCDurableRewardShortMap' test.out

#- 396 GetAppleConfigVersion
samples/cli/sample-apps Platform getAppleConfigVersion \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 396 'GetAppleConfigVersion' test.out

#- 397 GetIAPItemMapping
samples/cli/sample-apps Platform getIAPItemMapping \
    --namespace $AB_NAMESPACE \
    --platform 'PLAYSTATION' \
    > test.out 2>&1
eval_tap $? 397 'GetIAPItemMapping' test.out

#- 398 PublicGetItemByAppId
samples/cli/sample-apps Platform publicGetItemByAppId \
    --namespace $AB_NAMESPACE \
    --language 'rZV8moCpmZzfNtEr' \
    --region 'uou3toKnAT1Hu9KK' \
    --storeId 'ziyzHl05h4dJmynJ' \
    --appId 'rVd6VCOvHTOXYjp3' \
    > test.out 2>&1
eval_tap $? 398 'PublicGetItemByAppId' test.out

#- 399 PublicQueryItems
samples/cli/sample-apps Platform publicQueryItems \
    --namespace $AB_NAMESPACE \
    --appType 'DEMO' \
    --autoCalcEstimatedPrice 'false' \
    --baseAppId '0npbZscaIk1jiK95' \
    --categoryPath 'wEeJHaA8R6C8XLxL' \
    --features 'TpOfMtECgltOqZES' \
    --includeSubCategoryItem 'false' \
    --itemType 'SUBSCRIPTION' \
    --language 'e1ESJzXbBj1XK7hz' \
    --limit '89' \
    --offset '25' \
    --region 'k75KBIFTYWKHtMgN' \
    --sortBy '["name:desc", "displayOrder:asc", "createdAt:desc"]' \
    --storeId 'cMbUCWt3Qerq8pwq' \
    --tags 'LgqeZF6jq649g9TM' \
    > test.out 2>&1
eval_tap $? 399 'PublicQueryItems' test.out

#- 400 PublicGetItemBySku
samples/cli/sample-apps Platform publicGetItemBySku \
    --namespace $AB_NAMESPACE \
    --autoCalcEstimatedPrice 'false' \
    --language '6y473NbOSWKV44lq' \
    --region 'mDcjpFq870Poa4EU' \
    --storeId 'oMTEgwZVLXoVI6NV' \
    --sku 'y0fansb8UzlnA4pf' \
    > test.out 2>&1
eval_tap $? 400 'PublicGetItemBySku' test.out

#- 401 PublicGetEstimatedPrice
samples/cli/sample-apps Platform publicGetEstimatedPrice \
    --namespace $AB_NAMESPACE \
    --region 'LmJ7XAyb6Suvj8OD' \
    --storeId 'LE9rehbpKXevdK9C' \
    --itemIds 'VMvz6w8i3BP5ZHgQ' \
    > test.out 2>&1
eval_tap $? 401 'PublicGetEstimatedPrice' test.out

#- 402 PublicBulkGetItems
samples/cli/sample-apps Platform publicBulkGetItems \
    --namespace $AB_NAMESPACE \
    --autoCalcEstimatedPrice 'false' \
    --language 'o5gXA33ohwUC3uoH' \
    --region 'wpI28sTLK32fGHZv' \
    --storeId 'IRLYyAUv97pleHii' \
    --itemIds 'MKx7ixWAiekVC2fK' \
    > test.out 2>&1
eval_tap $? 402 'PublicBulkGetItems' test.out

#- 403 PublicValidateItemPurchaseCondition
samples/cli/sample-apps Platform publicValidateItemPurchaseCondition \
    --namespace $AB_NAMESPACE \
    --body '{"itemIds": ["1KALvqD3DICuWGgV", "lGfo0tqhq9DWe1BZ", "krwTbiPv8eo5On64"]}' \
    > test.out 2>&1
eval_tap $? 403 'PublicValidateItemPurchaseCondition' test.out

#- 404 PublicSearchItems
samples/cli/sample-apps Platform publicSearchItems \
    --namespace $AB_NAMESPACE \
    --autoCalcEstimatedPrice 'true' \
    --itemType 'BUNDLE' \
    --limit '73' \
    --offset '73' \
    --region 'LeeMOnZpPh7s0M4R' \
    --storeId 'uPMc0NNFXjHTKYvg' \
    --keyword 'fwx1O3hEIjfXcbvq' \
    --language 'yh2RGj6hwUnO2hQg' \
    > test.out 2>&1
eval_tap $? 404 'PublicSearchItems' test.out

#- 405 PublicGetApp
samples/cli/sample-apps Platform publicGetApp \
    --itemId 'cg3UCra14Vo7CBDv' \
    --namespace $AB_NAMESPACE \
    --language '0ra5sW216e1Vlgun' \
    --region 'dJVK0WVAqO8NHNwB' \
    --storeId '3zoQJd0XPMqYql4x' \
    > test.out 2>&1
eval_tap $? 405 'PublicGetApp' test.out

#- 406 PublicGetItemDynamicData
samples/cli/sample-apps Platform publicGetItemDynamicData \
    --itemId 'RGGsk2N1imxLMECj' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 406 'PublicGetItemDynamicData' test.out

#- 407 PublicGetItem
samples/cli/sample-apps Platform publicGetItem \
    --itemId 'dyGx2i9NPioE1biG' \
    --namespace $AB_NAMESPACE \
    --autoCalcEstimatedPrice 'false' \
    --language 'BBEpK78uukrrCJYL' \
    --populateBundle 'true' \
    --region 'yoSuheWAPyDwOHma' \
    --storeId '76348drBpHOp7U64' \
    > test.out 2>&1
eval_tap $? 407 'PublicGetItem' test.out

#- 408 GetPaymentCustomization
eval_tap 0 408 'GetPaymentCustomization # SKIP deprecated' test.out

#- 409 PublicGetPaymentUrl
samples/cli/sample-apps Platform publicGetPaymentUrl \
    --namespace $AB_NAMESPACE \
    --body '{"neonPayConfig": {"cancelUrl": "rDwyZLYF9nw9ammj", "successUrl": "xtr0T4UItemHKXyY"}, "paymentOrderNo": "DAZMRz6DB5SgcW4F", "paymentProvider": "ALIPAY", "returnUrl": "OUtSWPHVE8mCNPLN", "ui": "HXBW7CcOL8VuWzl1", "zipCode": "26wunCHTZPL0ph7C"}' \
    > test.out 2>&1
eval_tap $? 409 'PublicGetPaymentUrl' test.out

#- 410 PublicGetPaymentMethods
samples/cli/sample-apps Platform publicGetPaymentMethods \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'z8nYwylxsFjd9gyo' \
    > test.out 2>&1
eval_tap $? 410 'PublicGetPaymentMethods' test.out

#- 411 PublicGetUnpaidPaymentOrder
samples/cli/sample-apps Platform publicGetUnpaidPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'euo8WMWr81wB8cDF' \
    > test.out 2>&1
eval_tap $? 411 'PublicGetUnpaidPaymentOrder' test.out

#- 412 Pay
samples/cli/sample-apps Platform pay \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'avTb7F7koeXl5f5e' \
    --paymentProvider 'ALIPAY' \
    --zipCode '9ebhbiBA5XnwCJm8' \
    --body '{"token": "hVGMgNpAKw46NnaL"}' \
    > test.out 2>&1
eval_tap $? 412 'Pay' test.out

#- 413 PublicCheckPaymentOrderPaidStatus
samples/cli/sample-apps Platform publicCheckPaymentOrderPaidStatus \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'rR4AgbMfw9OdahdJ' \
    > test.out 2>&1
eval_tap $? 413 'PublicCheckPaymentOrderPaidStatus' test.out

#- 414 GetPaymentPublicConfig
samples/cli/sample-apps Platform getPaymentPublicConfig \
    --namespace $AB_NAMESPACE \
    --sandbox 'true' \
    --paymentProvider 'CHECKOUT' \
    --region 'p52dzqIUDJegXqon' \
    > test.out 2>&1
eval_tap $? 414 'GetPaymentPublicConfig' test.out

#- 415 PublicGetQRCode
samples/cli/sample-apps Platform publicGetQRCode \
    --namespace $AB_NAMESPACE \
    --code 'OLjIHanAUp9H3UlE' \
    > test.out 2>&1
eval_tap $? 415 'PublicGetQRCode' test.out

#- 416 PublicNormalizePaymentReturnUrl
samples/cli/sample-apps Platform publicNormalizePaymentReturnUrl \
    --namespace $AB_NAMESPACE \
    --payerID '5MBgsOyihP6zHIYn' \
    --foreinginvoice 'etOc0c1SDMidcvVs' \
    --invoiceId 'FpoA6wsPe3qFVqWV' \
    --payload 'pOORgXChAOFpsxa3' \
    --redirectResult 'kBjd5f4LAd9xFrOy' \
    --resultCode '2V6afDLGERMMwX0r' \
    --sessionId 'fZ1h2saLbLUp62v9' \
    --status 'stQ2opYzg1DVr81n' \
    --token 'NEj4t7KPlaTKGOey' \
    --type 'T5ZH6zUkb0zJwGmd' \
    --userId '5UIeI2J4zWUpW1BH' \
    --orderNo 'zbLCVof6ls3TTTwC' \
    --paymentOrderNo 'nBwxgZUYnz7bJ7Zc' \
    --paymentProvider 'PAYPAL' \
    --returnUrl 'SCJjvFCoVRPwUWoW' \
    > test.out 2>&1
eval_tap $? 416 'PublicNormalizePaymentReturnUrl' test.out

#- 417 GetPaymentTaxValue
samples/cli/sample-apps Platform getPaymentTaxValue \
    --namespace $AB_NAMESPACE \
    --zipCode 'b3PqBQ1mWcDe1P9M' \
    --paymentOrderNo 'diiTplCvA2hZZaMu' \
    --paymentProvider 'XSOLLA' \
    > test.out 2>&1
eval_tap $? 417 'GetPaymentTaxValue' test.out

#- 418 GetRewardByCode
samples/cli/sample-apps Platform getRewardByCode \
    --namespace $AB_NAMESPACE \
    --rewardCode 'byAQ8IccqzaURsWQ' \
    > test.out 2>&1
eval_tap $? 418 'GetRewardByCode' test.out

#- 419 QueryRewards1
samples/cli/sample-apps Platform queryRewards1 \
    --namespace $AB_NAMESPACE \
    --eventTopic 'JeS6w4GWXYEjrkjR' \
    --limit '33' \
    --offset '95' \
    --sortBy '["rewardCode:asc", "namespace:desc"]' \
    > test.out 2>&1
eval_tap $? 419 'QueryRewards1' test.out

#- 420 GetReward1
samples/cli/sample-apps Platform getReward1 \
    --namespace $AB_NAMESPACE \
    --rewardId 'jQoVWSLe5QEXLttS' \
    > test.out 2>&1
eval_tap $? 420 'GetReward1' test.out

#- 421 PublicListStores
samples/cli/sample-apps Platform publicListStores \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 421 'PublicListStores' test.out

#- 422 PublicExistsAnyMyActiveEntitlement
samples/cli/sample-apps Platform publicExistsAnyMyActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --appIds '["PYBApIFEVFgHX4Cw", "XReKFp4bGPUKYt5v", "qQ025Hyd8Mw5HrLE"]' \
    --itemIds '["SJmWjNwOnpRxN4gl", "RyshmFaUvZWjQeFW", "1X9CesYVvhrdESUZ"]' \
    --skus '["BIYOZftJNnaNOJ19", "81Y0XvgNVMdw9uNs", "SNiBoFW1HAbpdtNJ"]' \
    > test.out 2>&1
eval_tap $? 422 'PublicExistsAnyMyActiveEntitlement' test.out

#- 423 PublicGetMyAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform publicGetMyAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --appId 'T03QGHYw8XhYC70B' \
    > test.out 2>&1
eval_tap $? 423 'PublicGetMyAppEntitlementOwnershipByAppId' test.out

#- 424 PublicGetMyEntitlementOwnershipByItemId
samples/cli/sample-apps Platform publicGetMyEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --entitlementClazz 'MEDIA' \
    --itemId 'VLeoZhwndTKIx0ve' \
    > test.out 2>&1
eval_tap $? 424 'PublicGetMyEntitlementOwnershipByItemId' test.out

#- 425 PublicGetMyEntitlementOwnershipBySku
samples/cli/sample-apps Platform publicGetMyEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --entitlementClazz 'ENTITLEMENT' \
    --sku 'OQI47pyXjf4vROJj' \
    > test.out 2>&1
eval_tap $? 425 'PublicGetMyEntitlementOwnershipBySku' test.out

#- 426 PublicGetEntitlementOwnershipToken
samples/cli/sample-apps Platform publicGetEntitlementOwnershipToken \
    --namespace $AB_NAMESPACE \
    --appIds '["Clu0tGe1AkFeQf3r", "7CojXykrrhjSOw9Q", "EtIbfjFt9ILFflLL"]' \
    --itemIds '["rp84GkAvJgu3Sj5A", "JbbC51k1gxtA1y3K", "ifnuY7V3Orcvn4Zr"]' \
    --skus '["7bLA0zhyMVokgmnU", "KcNgn5SgD0oXdSYQ", "ZnUHOzvK02VDhe6b"]' \
    > test.out 2>&1
eval_tap $? 426 'PublicGetEntitlementOwnershipToken' test.out

#- 427 SyncTwitchDropsEntitlement
samples/cli/sample-apps Platform syncTwitchDropsEntitlement \
    --namespace $AB_NAMESPACE \
    --body '{"gameId": "UjehWG6PrGoIOaHA", "language": "cBO-gKii", "region": "1izT85wTY33srSqA"}' \
    > test.out 2>&1
eval_tap $? 427 'SyncTwitchDropsEntitlement' test.out

#- 428 PublicGetMyWallet
samples/cli/sample-apps Platform publicGetMyWallet \
    --currencyCode 'YPnYL5SJJlstHE1X' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 428 'PublicGetMyWallet' test.out

#- 429 SyncEpicGameDLC
samples/cli/sample-apps Platform syncEpicGameDLC \
    --namespace $AB_NAMESPACE \
    --userId 'DpaF57vomdj68LhP' \
    --body '{"epicGamesJwtToken": "WBbz1SRKRvhDGaGm"}' \
    > test.out 2>&1
eval_tap $? 429 'SyncEpicGameDLC' test.out

#- 430 SyncOculusDLC
samples/cli/sample-apps Platform syncOculusDLC \
    --namespace $AB_NAMESPACE \
    --userId 'RRSi9T3KNTRKGWzt' \
    > test.out 2>&1
eval_tap $? 430 'SyncOculusDLC' test.out

#- 431 PublicSyncPsnDlcInventory
samples/cli/sample-apps Platform publicSyncPsnDlcInventory \
    --namespace $AB_NAMESPACE \
    --userId 'GzEeaId66IZqUN3Z' \
    --body '{"serviceLabel": 10}' \
    > test.out 2>&1
eval_tap $? 431 'PublicSyncPsnDlcInventory' test.out

#- 432 PublicSyncPsnDlcInventoryWithMultipleServiceLabels
samples/cli/sample-apps Platform publicSyncPsnDlcInventoryWithMultipleServiceLabels \
    --namespace $AB_NAMESPACE \
    --userId 'Bvdvdfypmv5du24q' \
    --body '{"serviceLabels": [57, 19, 53]}' \
    > test.out 2>&1
eval_tap $? 432 'PublicSyncPsnDlcInventoryWithMultipleServiceLabels' test.out

#- 433 SyncSteamDLC
samples/cli/sample-apps Platform syncSteamDLC \
    --namespace $AB_NAMESPACE \
    --userId 'VThqmpsdEp4YNin3' \
    --body '{"appId": "4SqO4LW73ykEubKh", "steamId": "wl6INY2XglZP7jEx"}' \
    > test.out 2>&1
eval_tap $? 433 'SyncSteamDLC' test.out

#- 434 SyncXboxDLC
samples/cli/sample-apps Platform syncXboxDLC \
    --namespace $AB_NAMESPACE \
    --userId 'KKicNF1JIuYW33pJ' \
    --body '{"xstsToken": "73JesukGLb15b9nI"}' \
    > test.out 2>&1
eval_tap $? 434 'SyncXboxDLC' test.out

#- 435 PublicQueryUserEntitlements
samples/cli/sample-apps Platform publicQueryUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'a2cXLw7sCiNqdoUy' \
    --appType 'GAME' \
    --entitlementClazz 'LOOTBOX' \
    --entitlementName 'va48G9C1Xy9K21E7' \
    --features '["wE5n9WzezQvZdyPm", "ffCnvDmHvhqeJfoI", "j6yBHAxgUv6EOPDV"]' \
    --itemId '["D1JHiAixO5VtGGb0", "eFlMVELpmpz345ST", "mDffBPvhK2ThXXIj"]' \
    --limit '0' \
    --offset '54' \
    > test.out 2>&1
eval_tap $? 435 'PublicQueryUserEntitlements' test.out

#- 436 PublicGetUserAppEntitlementByAppId
samples/cli/sample-apps Platform publicGetUserAppEntitlementByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'C8cpdJlx1aRS1HT7' \
    --appId 'XuimLbrNjkE9xNyw' \
    > test.out 2>&1
eval_tap $? 436 'PublicGetUserAppEntitlementByAppId' test.out

#- 437 PublicQueryUserEntitlementsByAppType
samples/cli/sample-apps Platform publicQueryUserEntitlementsByAppType \
    --namespace $AB_NAMESPACE \
    --userId 'fuaPc9Z6IDYd0N6G' \
    --limit '42' \
    --offset '76' \
    --appType 'GAME' \
    > test.out 2>&1
eval_tap $? 437 'PublicQueryUserEntitlementsByAppType' test.out

#- 438 PublicGetUserEntitlementsByIds
samples/cli/sample-apps Platform publicGetUserEntitlementsByIds \
    --namespace $AB_NAMESPACE \
    --userId 'iR9kGw1wSb7Ji5O6' \
    --availablePlatformOnly 'false' \
    --ids '["9We6Bzxktrfut4F9", "ZkJua9XO7sgq6iVr", "uD4DUIVsuSaepGBE"]' \
    > test.out 2>&1
eval_tap $? 438 'PublicGetUserEntitlementsByIds' test.out

#- 439 PublicGetUserEntitlementByItemId
eval_tap 0 439 'PublicGetUserEntitlementByItemId # SKIP deprecated' test.out

#- 440 PublicGetUserEntitlementBySku
eval_tap 0 440 'PublicGetUserEntitlementBySku # SKIP deprecated' test.out

#- 441 PublicUserEntitlementHistory
samples/cli/sample-apps Platform publicUserEntitlementHistory \
    --namespace $AB_NAMESPACE \
    --userId 'ENrwjHeVOi5GWs8d' \
    --endDate 'dQLUELY8Kd2rEGP2' \
    --entitlementClazz 'CODE' \
    --limit '63' \
    --offset '1' \
    --startDate 'SWyHaIYapfQ3OGq8' \
    > test.out 2>&1
eval_tap $? 441 'PublicUserEntitlementHistory' test.out

#- 442 PublicExistsAnyUserActiveEntitlement
samples/cli/sample-apps Platform publicExistsAnyUserActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'nilTdtx5AbwJBLNj' \
    --appIds '["c1X0VgygAg13XkqB", "gfY4bAh448AKikfg", "3yN31yCOK1VZIOxo"]' \
    --itemIds '["sCHUX81B0Jy8rRfS", "7IVcHLDOgV0168MQ", "9gBFdvPWmR6EhPKk"]' \
    --skus '["T9ZUMmL9PQfF4OVY", "EoS09CyQIwyOlDia", "8eiCkofDl5Jrjb0J"]' \
    > test.out 2>&1
eval_tap $? 442 'PublicExistsAnyUserActiveEntitlement' test.out

#- 443 PublicGetUserAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform publicGetUserAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --userId '2wwDy4BYFY5X1Z1f' \
    --appId 'jJeOux264XGXfgbA' \
    > test.out 2>&1
eval_tap $? 443 'PublicGetUserAppEntitlementOwnershipByAppId' test.out

#- 444 PublicGetUserEntitlementOwnershipByItemId
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'FT548xqpJjHsvI2x' \
    --entitlementClazz 'APP' \
    --itemId 'RYujS2gn90yOXkjB' \
    > test.out 2>&1
eval_tap $? 444 'PublicGetUserEntitlementOwnershipByItemId' test.out

#- 445 PublicGetUserEntitlementOwnershipByItemIds
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'JvUzqza3ZrZMRqR3' \
    --ids '["kFrRvetrNX4ksGxX", "diiEkUqtpY6pWkgD", "wU6rGjS9o2dxkct5"]' \
    > test.out 2>&1
eval_tap $? 445 'PublicGetUserEntitlementOwnershipByItemIds' test.out

#- 446 PublicGetUserEntitlementOwnershipBySku
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --userId 'hb1laXmgd69GqUWz' \
    --entitlementClazz 'APP' \
    --sku 'cQli35dZKO2s1X7h' \
    > test.out 2>&1
eval_tap $? 446 'PublicGetUserEntitlementOwnershipBySku' test.out

#- 447 PublicGetUserEntitlement
samples/cli/sample-apps Platform publicGetUserEntitlement \
    --entitlementId 'UfPdgFEZI7h3yGy6' \
    --namespace $AB_NAMESPACE \
    --userId 'sOnQboxNp9Uvarw6' \
    > test.out 2>&1
eval_tap $? 447 'PublicGetUserEntitlement' test.out

#- 448 PublicConsumeUserEntitlement
samples/cli/sample-apps Platform publicConsumeUserEntitlement \
    --entitlementId 'DSjtGrL2bMvjDfph' \
    --namespace $AB_NAMESPACE \
    --userId 'MgemTtAwO9hEVEEE' \
    --body '{"metadata": {"operationSource": "INVENTORY"}, "options": ["uubJpAUe5J3egELy", "IA2Vvm4YMGfT9k7V", "wJ9VpFXkghLtLqkN"], "requestId": "rFETKblragmVWxcJ", "useCount": 28}' \
    > test.out 2>&1
eval_tap $? 448 'PublicConsumeUserEntitlement' test.out

#- 449 PublicSellUserEntitlement
samples/cli/sample-apps Platform publicSellUserEntitlement \
    --entitlementId 'EWKzL7DZngBHzrQT' \
    --namespace $AB_NAMESPACE \
    --userId 'UjFbfjYIDl3uoXq6' \
    --body '{"requestId": "FoDWIIlApNf8tvH8", "useCount": 34}' \
    > test.out 2>&1
eval_tap $? 449 'PublicSellUserEntitlement' test.out

#- 450 PublicSplitUserEntitlement
samples/cli/sample-apps Platform publicSplitUserEntitlement \
    --entitlementId 'Zk7YCRXbax2ouYeB' \
    --namespace $AB_NAMESPACE \
    --userId 'wsGFnK63vI31nDpm' \
    --body '{"metadata": {"operationSource": "INVENTORY"}, "useCount": 25}' \
    > test.out 2>&1
eval_tap $? 450 'PublicSplitUserEntitlement' test.out

#- 451 PublicTransferUserEntitlement
samples/cli/sample-apps Platform publicTransferUserEntitlement \
    --entitlementId 'puTteLbpt9YJEMQG' \
    --namespace $AB_NAMESPACE \
    --userId 'B2EMK1KLKX8C0yHf' \
    --body '{"entitlementId": "Rgq0JNDrDRHnOwf6", "metadata": {"operationSource": "INVENTORY"}, "useCount": 7}' \
    > test.out 2>&1
eval_tap $? 451 'PublicTransferUserEntitlement' test.out

#- 452 PublicRedeemCode
samples/cli/sample-apps Platform publicRedeemCode \
    --namespace $AB_NAMESPACE \
    --userId 'LaFk1i3TumdFxnpd' \
    --body '{"code": "ZrGlvHU9uYXsT0Cq", "language": "dOu", "region": "JToM3jvpM6QwWoqU"}' \
    > test.out 2>&1
eval_tap $? 452 'PublicRedeemCode' test.out

#- 453 PublicFulfillAppleIAPItem
samples/cli/sample-apps Platform publicFulfillAppleIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'yol7WHE4fk9fwN4j' \
    --body '{"excludeOldTransactions": false, "language": "uN", "productId": "JalZaBXWhFQJTGgR", "receiptData": "H86nqAmJs9L5iqwP", "region": "1YcSDP4Xm7vve88p", "transactionId": "VRdC5JxFmr59of9E"}' \
    > test.out 2>&1
eval_tap $? 453 'PublicFulfillAppleIAPItem' test.out

#- 454 SyncEpicGamesInventory
samples/cli/sample-apps Platform syncEpicGamesInventory \
    --namespace $AB_NAMESPACE \
    --userId 'MAUmfvOp9gdwavP6' \
    --body '{"epicGamesJwtToken": "H8dnzkrpK12RLheZ"}' \
    > test.out 2>&1
eval_tap $? 454 'SyncEpicGamesInventory' test.out

#- 455 PublicFulfillGoogleIAPItem
samples/cli/sample-apps Platform publicFulfillGoogleIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'VR6ZsilCZd1hjawT' \
    --body '{"autoAck": true, "autoConsume": true, "language": "LEU-xmUp", "orderId": "1HerJSNkOnpEJaoR", "packageName": "3qpbZjCIgrKdIjh4", "productId": "SjBE4fkodHWMPekM", "purchaseTime": 79, "purchaseToken": "lVc4FODckFNJJIAL", "region": "82yfdPFF61HfGRNX", "subscriptionPurchase": false}' \
    > test.out 2>&1
eval_tap $? 455 'PublicFulfillGoogleIAPItem' test.out

#- 456 SyncOculusConsumableEntitlements
samples/cli/sample-apps Platform syncOculusConsumableEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'vK3oHY8fRo3i22Xv' \
    > test.out 2>&1
eval_tap $? 456 'SyncOculusConsumableEntitlements' test.out

#- 457 PublicReconcilePlayStationStore
samples/cli/sample-apps Platform publicReconcilePlayStationStore \
    --namespace $AB_NAMESPACE \
    --userId '1ZYfResVtGXQ5ufE' \
    --body '{"currencyCode": "rYB8LsSVQOWQDQjy", "price": 0.5477714393438147, "productId": "RJm6rYAnf0k3vjfN", "serviceLabel": 83}' \
    > test.out 2>&1
eval_tap $? 457 'PublicReconcilePlayStationStore' test.out

#- 458 PublicReconcilePlayStationStoreWithMultipleServiceLabels
samples/cli/sample-apps Platform publicReconcilePlayStationStoreWithMultipleServiceLabels \
    --namespace $AB_NAMESPACE \
    --userId 'AW9rxO9WJa1sUtCb' \
    --body '{"currencyCode": "Tz6M1RBwWTUj2D0K", "price": 0.16261631743551686, "productId": "Is1wCFodjfCyTPGh", "serviceLabels": [3, 46, 95]}' \
    > test.out 2>&1
eval_tap $? 458 'PublicReconcilePlayStationStoreWithMultipleServiceLabels' test.out

#- 459 SyncSteamInventory
samples/cli/sample-apps Platform syncSteamInventory \
    --namespace $AB_NAMESPACE \
    --userId '9l8bDDPYtdwwegAv' \
    --body '{"appId": "uivCIQ7GsgEs1jBD", "currencyCode": "z2OTMGn5GeJ0QBya", "language": "nf_OWbH_423", "price": 0.29421996763716796, "productId": "GoK3vCH8jnBVyGwm", "region": "NsImv2nAlKvNfa4b", "steamId": "UgaUL9tbgQOrn4yD"}' \
    > test.out 2>&1
eval_tap $? 459 'SyncSteamInventory' test.out

#- 460 SyncSteamAbnormalTransaction
samples/cli/sample-apps Platform syncSteamAbnormalTransaction \
    --namespace $AB_NAMESPACE \
    --userId 'rbcipKAjOH27Oqno' \
    > test.out 2>&1
eval_tap $? 460 'SyncSteamAbnormalTransaction' test.out

#- 461 SyncSteamIAPByTransaction
samples/cli/sample-apps Platform syncSteamIAPByTransaction \
    --namespace $AB_NAMESPACE \
    --userId 'MfAuV4HU0dOvF4lG' \
    --body '{"orderId": "rIYyVuSsjhJQjIaW"}' \
    > test.out 2>&1
eval_tap $? 461 'SyncSteamIAPByTransaction' test.out

#- 462 PublicQueryUserThirdPartySubscription
samples/cli/sample-apps Platform publicQueryUserThirdPartySubscription \
    --namespace $AB_NAMESPACE \
    --platform 'STEAM' \
    --userId 'HSR7QpDpmqRf48S4' \
    --activeOnly 'false' \
    --groupId 'mOUgwbKSLH8fUXQj' \
    --limit '35' \
    --offset '23' \
    --productId 'pLYHGU6zvuB36BSW' \
    > test.out 2>&1
eval_tap $? 462 'PublicQueryUserThirdPartySubscription' test.out

#- 463 SyncTwitchDropsEntitlement1
samples/cli/sample-apps Platform syncTwitchDropsEntitlement1 \
    --namespace $AB_NAMESPACE \
    --userId 'jVErsKlQf1XuLN9l' \
    --body '{"gameId": "FdGbmsejwObxj4Aa", "language": "NGX-281", "region": "s0ey290lop69my8w"}' \
    > test.out 2>&1
eval_tap $? 463 'SyncTwitchDropsEntitlement1' test.out

#- 464 SyncXboxInventory
samples/cli/sample-apps Platform syncXboxInventory \
    --namespace $AB_NAMESPACE \
    --userId 'znLMRvwWSgqEkKga' \
    --body '{"currencyCode": "yQkQslgQpi33vj3i", "price": 0.07852742829295778, "productId": "Dk7P3JyHBPDR3eF4", "xstsToken": "nzJpZxOX1l2rXesS"}' \
    > test.out 2>&1
eval_tap $? 464 'SyncXboxInventory' test.out

#- 465 PublicQueryUserOrders
samples/cli/sample-apps Platform publicQueryUserOrders \
    --namespace $AB_NAMESPACE \
    --userId 'vEheEsL4so1qEFUm' \
    --discounted 'false' \
    --itemId 'Q4mdOmAIl3kINEJD' \
    --limit '63' \
    --offset '12' \
    --status 'CHARGEBACK_REVERSED' \
    > test.out 2>&1
eval_tap $? 465 'PublicQueryUserOrders' test.out

#- 466 PublicCreateUserOrder
samples/cli/sample-apps Platform publicCreateUserOrder \
    --namespace $AB_NAMESPACE \
    --userId 'yREQe3PK5BORknGS' \
    --body '{"currencyCode": "Qgxv0KDU6cvqN0zQ", "discountCodes": ["iJrODlln9MiZVpJM", "rDazTxjShRgBUw9d", "yRV8wmbptGdfK9RJ"], "discountedPrice": 31, "ext": {"9DWGWQGi8QtIeGNl": {}, "HzmuLIa20kjcsyNK": {}, "grgajrs8Vg5TaogH": {}}, "itemId": "oTKtLFm5Qrg5RzYi", "language": "qQlA", "price": 41, "quantity": 52, "region": "wyHxFkvTL0BxQXQE", "returnUrl": "YPspw3lbY8zjjSvG", "sectionId": "rdkJ27EXe9JYEX6o"}' \
    > test.out 2>&1
eval_tap $? 466 'PublicCreateUserOrder' test.out

#- 467 PublicPreviewOrderPrice
samples/cli/sample-apps Platform publicPreviewOrderPrice \
    --namespace $AB_NAMESPACE \
    --userId 'Dlw391wko5En3N6z' \
    --body '{"currencyCode": "7dN6M9mlBCcYLrf5", "discountCodes": ["ZIwKPTU10IDxhjU8", "0eiaZMVGoFrsX0fY", "BOHuvc9UxTAW03vb"], "discountedPrice": 2, "itemId": "sWgrTnhNm74Z5LTK", "price": 79, "quantity": 11}' \
    > test.out 2>&1
eval_tap $? 467 'PublicPreviewOrderPrice' test.out

#- 468 PublicGetUserOrder
samples/cli/sample-apps Platform publicGetUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo '8FkEtHmINCl4e24l' \
    --userId 'RTqsXFiFKEZFY0pI' \
    > test.out 2>&1
eval_tap $? 468 'PublicGetUserOrder' test.out

#- 469 PublicCancelUserOrder
samples/cli/sample-apps Platform publicCancelUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'q0qucpedNl9jLpFT' \
    --userId 'dvWvYx3bgUzdoura' \
    > test.out 2>&1
eval_tap $? 469 'PublicCancelUserOrder' test.out

#- 470 PublicGetUserOrderHistories
samples/cli/sample-apps Platform publicGetUserOrderHistories \
    --namespace $AB_NAMESPACE \
    --orderNo 'cJL8Jf4LUpBpYBOB' \
    --userId 'KaFBKjmqccSQmvC5' \
    > test.out 2>&1
eval_tap $? 470 'PublicGetUserOrderHistories' test.out

#- 471 PublicDownloadUserOrderReceipt
samples/cli/sample-apps Platform publicDownloadUserOrderReceipt \
    --namespace $AB_NAMESPACE \
    --orderNo 'flH2KMHFei9NGJdx' \
    --userId 'Fed3enLKQFflaybS' \
    > test.out 2>&1
eval_tap $? 471 'PublicDownloadUserOrderReceipt' test.out

#- 472 PublicGetPaymentAccounts
samples/cli/sample-apps Platform publicGetPaymentAccounts \
    --namespace $AB_NAMESPACE \
    --userId 'CAh9JSzxdNKY6SgY' \
    > test.out 2>&1
eval_tap $? 472 'PublicGetPaymentAccounts' test.out

#- 473 PublicDeletePaymentAccount
samples/cli/sample-apps Platform publicDeletePaymentAccount \
    --id 'DkrkuYgRA5stay7E' \
    --namespace $AB_NAMESPACE \
    --type 'paypal' \
    --userId 'DCUqLBcecklQdRJM' \
    > test.out 2>&1
eval_tap $? 473 'PublicDeletePaymentAccount' test.out

#- 474 PublicListActiveSections
samples/cli/sample-apps Platform publicListActiveSections \
    --namespace $AB_NAMESPACE \
    --userId 'SKkuJqJeuyhlszYt' \
    --autoCalcEstimatedPrice 'true' \
    --language 'asqh81SxWuJod1xg' \
    --region 'gjiNBRjSUWwZ8ekk' \
    --storeId 'h8t2Hj9Qvl34XbJp' \
    --viewId 'ou0E1NDLLjOffSbH' \
    > test.out 2>&1
eval_tap $? 474 'PublicListActiveSections' test.out

#- 475 PublicQueryUserSubscriptions
samples/cli/sample-apps Platform publicQueryUserSubscriptions \
    --namespace $AB_NAMESPACE \
    --userId 'k6jEUgmtXzktDYZo' \
    --chargeStatus 'CHARGE_FAILED' \
    --itemId 'KoxDwlEp3R9hkEoj' \
    --limit '41' \
    --offset '56' \
    --sku 'EwpMyiOHub7Vpnhn' \
    --status 'ACTIVE' \
    --subscribedBy 'USER' \
    > test.out 2>&1
eval_tap $? 475 'PublicQueryUserSubscriptions' test.out

#- 476 PublicSubscribeSubscription
samples/cli/sample-apps Platform publicSubscribeSubscription \
    --namespace $AB_NAMESPACE \
    --userId 'Sx5aga4wUaIevzwl' \
    --body '{"currencyCode": "pv3lzyX2RRV1AD8B", "itemId": "2iB4OMsZEUcqzB6M", "language": "kP-UZbF", "region": "zlVpaeVBbyWOHgA8", "returnUrl": "K4s4jcgHyUss7sne", "source": "gWfDJgMjnak3wXn8"}' \
    > test.out 2>&1
eval_tap $? 476 'PublicSubscribeSubscription' test.out

#- 477 PublicCheckUserSubscriptionSubscribableByItemId
samples/cli/sample-apps Platform publicCheckUserSubscriptionSubscribableByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'DlbVybH8xHwaoac2' \
    --itemId 'EfBqe4Rpmpsju2EW' \
    > test.out 2>&1
eval_tap $? 477 'PublicCheckUserSubscriptionSubscribableByItemId' test.out

#- 478 PublicGetUserSubscription
samples/cli/sample-apps Platform publicGetUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId '5MAa42E6cYW7cH0I' \
    --userId '6VegnsYAdxWmxkXt' \
    > test.out 2>&1
eval_tap $? 478 'PublicGetUserSubscription' test.out

#- 479 PublicChangeSubscriptionBillingAccount
samples/cli/sample-apps Platform publicChangeSubscriptionBillingAccount \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'qHQiJt7s0eHIQrH6' \
    --userId 'fuZo8tUr9V6G5PWX' \
    > test.out 2>&1
eval_tap $? 479 'PublicChangeSubscriptionBillingAccount' test.out

#- 480 PublicCancelSubscription
samples/cli/sample-apps Platform publicCancelSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'K1ZNFgaPpbYZvoXR' \
    --userId 'VUwfBJuuudgkmqDv' \
    --body '{"immediate": true, "reason": "ZgvANmS0h7UxvU6K"}' \
    > test.out 2>&1
eval_tap $? 480 'PublicCancelSubscription' test.out

#- 481 PublicGetUserSubscriptionBillingHistories
samples/cli/sample-apps Platform publicGetUserSubscriptionBillingHistories \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'RoHHEKz2dKNxc6hS' \
    --userId 'sGyPPtob6MFryTm5' \
    --excludeFree 'true' \
    --limit '98' \
    --offset '45' \
    > test.out 2>&1
eval_tap $? 481 'PublicGetUserSubscriptionBillingHistories' test.out

#- 482 PublicListViews
samples/cli/sample-apps Platform publicListViews \
    --namespace $AB_NAMESPACE \
    --userId 'K7Y7z5vyXCLcoFLA' \
    --language 'XAKdvhCzIqvbxTvC' \
    --storeId 'fIPExpYvDkEsV5Pk' \
    > test.out 2>&1
eval_tap $? 482 'PublicListViews' test.out

#- 483 PublicGetWallet
samples/cli/sample-apps Platform publicGetWallet \
    --currencyCode 'oxw1kjAT0ilR9lfi' \
    --namespace $AB_NAMESPACE \
    --userId 'Jff8QRUmJ4HA5cPp' \
    > test.out 2>&1
eval_tap $? 483 'PublicGetWallet' test.out

#- 484 PublicListUserWalletTransactions
samples/cli/sample-apps Platform publicListUserWalletTransactions \
    --currencyCode 'nRz4iIdEA9QdZwmK' \
    --namespace $AB_NAMESPACE \
    --userId 'bphZU9lLYW9k6UO2' \
    --limit '14' \
    --offset '66' \
    > test.out 2>&1
eval_tap $? 484 'PublicListUserWalletTransactions' test.out

#- 485 PublicGetMyDLCContent
samples/cli/sample-apps Platform publicGetMyDLCContent \
    --includeAllNamespaces 'false' \
    --type 'STEAM' \
    > test.out 2>&1
eval_tap $? 485 'PublicGetMyDLCContent' test.out

#- 486 QueryFulfillments
samples/cli/sample-apps Platform queryFulfillments \
    --namespace $AB_NAMESPACE \
    --endTime 'bqGoCbQO6eXOrvfh' \
    --limit '75' \
    --offset '28' \
    --startTime 'SE2aojoXECgzr7Rw' \
    --state 'FULFILL_FAILED' \
    --transactionId 'TfNX9MZcfkbg3VjY' \
    --userId 'WGNRl80H0PKd2Kc3' \
    > test.out 2>&1
eval_tap $? 486 'QueryFulfillments' test.out

#- 487 QueryItemsV2
samples/cli/sample-apps Platform queryItemsV2 \
    --namespace $AB_NAMESPACE \
    --appType 'DEMO' \
    --availableDate 'Y9vCLLUpt6QP7Oa3' \
    --baseAppId 'OoG6c2Gh7Y4zURVU' \
    --categoryPath 'ROIyJcdY4lQTc0Fu' \
    --features 'B0a0WpsdITIHdA0o' \
    --includeSubCategoryItem 'false' \
    --itemName 'KLaYMGv6fsdPU7uC' \
    --itemStatus 'ACTIVE' \
    --itemType '["SEASON", "COINS", "SUBSCRIPTION"]' \
    --limit '29' \
    --offset '22' \
    --region 'FjNPwm4DmskHfvSx' \
    --sectionExclusive 'true' \
    --sortBy '["updatedAt", "displayOrder:asc"]' \
    --storeId 'Z94NdUnNaSicqgNf' \
    --tags 't4LVqwWluXiBM5Zo' \
    --targetNamespace 'WVK2SDSKyYCNQuIp' \
    --withTotal 'false' \
    > test.out 2>&1
eval_tap $? 487 'QueryItemsV2' test.out

#- 488 ImportStore1
samples/cli/sample-apps Platform importStore1 \
    --namespace $AB_NAMESPACE \
    --storeId 'dSO876uOco9POgRs' \
    --strictMode 'false' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 488 'ImportStore1' test.out

#- 489 ExportStore1
samples/cli/sample-apps Platform exportStore1 \
    --namespace $AB_NAMESPACE \
    --storeId 'Kb4yZ5xLX6uLIhcq' \
    --body '{"itemIds": ["LJQXFqvYXcWUEAX8", "1L8gmVXyFqd7bKn5", "BSBWsgxICos7W7PD"]}' \
    > test.out 2>&1
eval_tap $? 489 'ExportStore1' test.out

#- 490 FulfillRewardsV2
samples/cli/sample-apps Platform fulfillRewardsV2 \
    --namespace $AB_NAMESPACE \
    --userId '4lnK7VWLYcCi4vl3' \
    --body '{"entitlementCollectionId": "t1O2hwJTHjpvsIpf", "entitlementOrigin": "System", "metadata": {"fMRwZ18UZeHOedZb": {}, "HnawoIe1WD1FzSu9": {}, "VJn2DC0tPvCMxLKC": {}}, "origin": "GooglePlay", "rewards": [{"currency": {"currencyCode": "ZAHYFT0XS1b1K0wv", "namespace": "Ceejm1QnuvAx3Bqk"}, "item": {"itemId": "tHN6bAEBwsz9jeRa", "itemName": "gCmDFdTOepWsFIqU", "itemSku": "5P6ekJBS6ASI5lVv", "itemType": "TtE1EswmJ0QE9Isz"}, "quantity": 58, "type": "ITEM"}, {"currency": {"currencyCode": "Wu42lLMmeQHNdcgT", "namespace": "zNicdgddPyzfhned"}, "item": {"itemId": "4kTrB8Srohwbdkh6", "itemName": "Fd615XBPwAuYYNqW", "itemSku": "mm3Osh6U24mafgA9", "itemType": "74gBazjcE5mkkbj4"}, "quantity": 24, "type": "CURRENCY"}, {"currency": {"currencyCode": "jlug1N8zAsHjseOm", "namespace": "J4BlSFIKtSKssDot"}, "item": {"itemId": "xBayvLeSmadPgsj3", "itemName": "72E3zONP30seshtr", "itemSku": "gULoJSROWTXM0p4Z", "itemType": "9M8rgJmYP14iBEIW"}, "quantity": 1, "type": "CURRENCY"}], "source": "OTHER", "transactionId": "w0JOK0aJhZwO2hWH"}' \
    > test.out 2>&1
eval_tap $? 490 'FulfillRewardsV2' test.out

#- 491 FulfillItems
eval_tap 0 491 'FulfillItems # SKIP deprecated' test.out

#- 492 RetryFulfillItems
eval_tap 0 492 'RetryFulfillItems # SKIP deprecated' test.out

#- 493 RevokeItems
eval_tap 0 493 'RevokeItems # SKIP deprecated' test.out

#- 494 V2PublicFulfillAppleIAPItem
samples/cli/sample-apps Platform v2PublicFulfillAppleIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'QzdNfLkuKhbdh8ST' \
    --body '{"transactionId": "FRVaRIqNdJxD4bzx"}' \
    > test.out 2>&1
eval_tap $? 494 'V2PublicFulfillAppleIAPItem' test.out

#- 495 FulfillItemsV3
samples/cli/sample-apps Platform fulfillItemsV3 \
    --namespace $AB_NAMESPACE \
    --transactionId 'lhnbHX7EepImc0a7' \
    --userId 'fIad3piUk5DX5eeS' \
    --body '{"items": [{"duration": 21, "endDate": "1991-09-02T00:00:00Z", "entitlementCollectionId": "7SDXE6Vgp83xF0WW", "entitlementOrigin": "Epic", "itemId": "GsV5UunhWYoVuCbL", "itemSku": "FJuBJeu3k2WClGWY", "language": "fL0FYSFiYym8KPG2", "metadata": {"8iWiYn5uq2pSWRiz": {}, "1ENkf0wYHgFdNkDq": {}, "cir37e29HVAVYung": {}}, "orderNo": "2d6MmD3ohcCp9hN3", "origin": "Nintendo", "quantity": 76, "region": "bHYAQ7CKoPcne3C7", "source": "CONSUME_ENTITLEMENT", "startDate": "1996-05-24T00:00:00Z", "storeId": "0MrnTDdtmcvg1ewS"}, {"duration": 5, "endDate": "1992-12-22T00:00:00Z", "entitlementCollectionId": "IxQKwYDTuWLDCJh0", "entitlementOrigin": "Twitch", "itemId": "RT7RLgDlVUgDMITo", "itemSku": "dFiUb0XBA78jsvrt", "language": "qichWxGVfzTlVNSy", "metadata": {"eEqvGl7A9Jt0DdAm": {}, "m7Uirk7bULPSq78i": {}, "I441jgldC36IAT6K": {}}, "orderNo": "PewaiGc7NGnSGmTj", "origin": "Epic", "quantity": 69, "region": "c5Q9dpSTopvh9ZlD", "source": "GIFT", "startDate": "1985-08-08T00:00:00Z", "storeId": "m2Koya6cOdqXVJEE"}, {"duration": 74, "endDate": "1983-02-28T00:00:00Z", "entitlementCollectionId": "YK4qf3bYtgljrAyo", "entitlementOrigin": "Other", "itemId": "6krOpt6YAOzscIVJ", "itemSku": "zusMm2szhIFKfV5r", "language": "KUhoTTfv9E6QelS6", "metadata": {"k1TdscsyTM832nV3": {}, "4acx2vL02C6SfGTN": {}, "5k26LEysnk6D3Fbf": {}}, "orderNo": "JL94bj9SOlZb8SoF", "origin": "Xbox", "quantity": 5, "region": "qdvMARXyw3Jgn0tT", "source": "ORDER_REVOCATION", "startDate": "1999-05-30T00:00:00Z", "storeId": "qelsN9pwyUE184Hf"}]}' \
    > test.out 2>&1
eval_tap $? 495 'FulfillItemsV3' test.out

#- 496 RetryFulfillItemsV3
samples/cli/sample-apps Platform retryFulfillItemsV3 \
    --namespace $AB_NAMESPACE \
    --transactionId 'VsQeVBjK2deMiPYY' \
    --userId 'b1bklzXF3PuVXJ66' \
    > test.out 2>&1
eval_tap $? 496 'RetryFulfillItemsV3' test.out

#- 497 RevokeItemsV3
samples/cli/sample-apps Platform revokeItemsV3 \
    --namespace $AB_NAMESPACE \
    --transactionId 'RsS0cmaMm9go2BHH' \
    --userId 'EywLhJcvDdhQC1bg' \
    > test.out 2>&1
eval_tap $? 497 'RevokeItemsV3' test.out


rm -f "tmp.dat"

exit $EXIT_CODE