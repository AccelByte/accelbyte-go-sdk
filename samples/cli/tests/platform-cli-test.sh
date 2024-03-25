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
    --id 'CVgY8vuLptx5KIRh' \
    > test.out 2>&1
eval_tap $? 3 'GetFulfillmentScript' test.out

#- 4 CreateFulfillmentScript
samples/cli/sample-apps Platform createFulfillmentScript \
    --id 'wYHzxanboZyswnY3' \
    --body '{"grantDays": "rWOpTSMXgSFsTHAg"}' \
    > test.out 2>&1
eval_tap $? 4 'CreateFulfillmentScript' test.out

#- 5 DeleteFulfillmentScript
samples/cli/sample-apps Platform deleteFulfillmentScript \
    --id 'UF0YBEIcjxdxLUs7' \
    > test.out 2>&1
eval_tap $? 5 'DeleteFulfillmentScript' test.out

#- 6 UpdateFulfillmentScript
samples/cli/sample-apps Platform updateFulfillmentScript \
    --id 'yucoAF6BWqTQveS8' \
    --body '{"grantDays": "8IM53p7crA1lXwCX"}' \
    > test.out 2>&1
eval_tap $? 6 'UpdateFulfillmentScript' test.out

#- 7 ListItemTypeConfigs
samples/cli/sample-apps Platform listItemTypeConfigs \
    > test.out 2>&1
eval_tap $? 7 'ListItemTypeConfigs' test.out

#- 8 CreateItemTypeConfig
samples/cli/sample-apps Platform createItemTypeConfig \
    --body '{"clazz": "yeI2rQH0WSX7yl5K", "dryRun": true, "fulfillmentUrl": "VidIxd5Qm4mwXEiI", "itemType": "CODE", "purchaseConditionUrl": "V4RT7IdLFKqsW2c0"}' \
    > test.out 2>&1
eval_tap $? 8 'CreateItemTypeConfig' test.out

#- 9 SearchItemTypeConfig
samples/cli/sample-apps Platform searchItemTypeConfig \
    --clazz 'TayTWaptuvqlqXv4' \
    --itemType 'LOOTBOX' \
    > test.out 2>&1
eval_tap $? 9 'SearchItemTypeConfig' test.out

#- 10 GetItemTypeConfig
samples/cli/sample-apps Platform getItemTypeConfig \
    --id 'Mal9FDJfwJKqzvg9' \
    > test.out 2>&1
eval_tap $? 10 'GetItemTypeConfig' test.out

#- 11 UpdateItemTypeConfig
samples/cli/sample-apps Platform updateItemTypeConfig \
    --id 'JaGwAgukcjX3ydDS' \
    --body '{"clazz": "KdhexpGODqzCgiwf", "dryRun": false, "fulfillmentUrl": "8b1k3KIiBH7j5UdG", "purchaseConditionUrl": "dWEMGwNFjDochzre"}' \
    > test.out 2>&1
eval_tap $? 11 'UpdateItemTypeConfig' test.out

#- 12 DeleteItemTypeConfig
samples/cli/sample-apps Platform deleteItemTypeConfig \
    --id '6jC5Og5eRLBDLvS1' \
    > test.out 2>&1
eval_tap $? 12 'DeleteItemTypeConfig' test.out

#- 13 QueryCampaigns
samples/cli/sample-apps Platform queryCampaigns \
    --namespace $AB_NAMESPACE \
    --limit '35' \
    --name 'LvrqSVSoA2mUw6iX' \
    --offset '66' \
    --tag 'BgCw09V8w8XRRl0p' \
    > test.out 2>&1
eval_tap $? 13 'QueryCampaigns' test.out

#- 14 CreateCampaign
samples/cli/sample-apps Platform createCampaign \
    --namespace $AB_NAMESPACE \
    --body '{"description": "gv21yi1riHwxa6ns", "items": [{"extraSubscriptionDays": 76, "itemId": "nuoL81T5HtpkVIZu", "itemName": "g6IXSE9CjglzezdB", "quantity": 88}, {"extraSubscriptionDays": 46, "itemId": "R9K4zG6QXd7cdXry", "itemName": "mTWoxINl0ARcb2TO", "quantity": 49}, {"extraSubscriptionDays": 0, "itemId": "pB9K4dyBhBTz49xo", "itemName": "KnJYxpAdBTC0N7Oj", "quantity": 1}], "maxRedeemCountPerCampaignPerUser": 89, "maxRedeemCountPerCode": 38, "maxRedeemCountPerCodePerUser": 17, "maxSaleCount": 83, "name": "968KH5Hh5nHCtbyI", "redeemEnd": "1991-06-29T00:00:00Z", "redeemStart": "1984-10-09T00:00:00Z", "redeemType": "ITEM", "status": "ACTIVE", "tags": ["TAAYkHmwSRe6f5AO", "SZFwD9RmsxMIma1A", "FQKMYsxX6QVeNWPe"], "type": "REDEMPTION"}' \
    > test.out 2>&1
eval_tap $? 14 'CreateCampaign' test.out

#- 15 GetCampaign
samples/cli/sample-apps Platform getCampaign \
    --campaignId '2zHCRtjOATsfWx8a' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 15 'GetCampaign' test.out

#- 16 UpdateCampaign
samples/cli/sample-apps Platform updateCampaign \
    --campaignId 'ezqtMRfxtpU2DXdK' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "FMrnMj8tTwfz3xW5", "items": [{"extraSubscriptionDays": 1, "itemId": "RVFqOSLyyHwVfM9j", "itemName": "GQIVS5wVWvRpbWsV", "quantity": 15}, {"extraSubscriptionDays": 81, "itemId": "vDltzQgh9FuvtqrV", "itemName": "k9fp3YAHvO1Z0C9Z", "quantity": 96}, {"extraSubscriptionDays": 74, "itemId": "paoIGlHogm6zwuTr", "itemName": "rHpvXSHB3XN7poIM", "quantity": 49}], "maxRedeemCountPerCampaignPerUser": 0, "maxRedeemCountPerCode": 90, "maxRedeemCountPerCodePerUser": 22, "maxSaleCount": 37, "name": "4cfFbiHsETPf87VM", "redeemEnd": "1984-08-09T00:00:00Z", "redeemStart": "1987-07-14T00:00:00Z", "redeemType": "ITEM", "status": "ACTIVE", "tags": ["5SJyVofu23AmxybZ", "F6XUp1NDxva795bk", "wvyHFSTgo3qqU6Ct"]}' \
    > test.out 2>&1
eval_tap $? 16 'UpdateCampaign' test.out

#- 17 GetCampaignDynamic
samples/cli/sample-apps Platform getCampaignDynamic \
    --campaignId 'I9NAiKYWDrxWM1cK' \
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
    --body '{"appConfig": {"appName": "o8q9jNVmQFYCHWi7"}, "customConfig": {"connectionType": "TLS", "grpcServerAddress": "DIRl3sgTuWhvztRp"}, "extendType": "APP"}' \
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
    --body '{"appConfig": {"appName": "TjwoT8uGrmtlDMuJ"}, "customConfig": {"connectionType": "INSECURE", "grpcServerAddress": "fktvuxlo5dtiJ7Kv"}, "extendType": "CUSTOM"}' \
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
    --storeId 'vFe6cxUzba6gIyvZ' \
    > test.out 2>&1
eval_tap $? 27 'GetRootCategories' test.out

#- 28 CreateCategory
samples/cli/sample-apps Platform createCategory \
    --namespace $AB_NAMESPACE \
    --storeId 'Yt3EntddRyj5IYsT' \
    --body '{"categoryPath": "x3mdVnrxrIAzle5j", "localizationDisplayNames": {"ddpi2XwJCrdsM5iy": "DYNCzYrDZkcrpy62", "7xWgWzKsNYCEl5lQ": "zV4rbsnm2JdKBUAi", "HVuVDbh7gZaK828X": "TnWU3GxWbI8E9CH5"}}' \
    > test.out 2>&1
eval_tap $? 28 'CreateCategory' test.out

#- 29 ListCategoriesBasic
samples/cli/sample-apps Platform listCategoriesBasic \
    --namespace $AB_NAMESPACE \
    --storeId 'SiBAJVEMcMURW1BQ' \
    > test.out 2>&1
eval_tap $? 29 'ListCategoriesBasic' test.out

#- 30 GetCategory
samples/cli/sample-apps Platform getCategory \
    --categoryPath 'sgBaGySzyt228hFZ' \
    --namespace $AB_NAMESPACE \
    --storeId 'KdjAAWWIVaASMCk6' \
    > test.out 2>&1
eval_tap $? 30 'GetCategory' test.out

#- 31 UpdateCategory
samples/cli/sample-apps Platform updateCategory \
    --categoryPath 'EK05Xxa1xjypQ0ms' \
    --namespace $AB_NAMESPACE \
    --storeId 'yZyp2UixFbdUllxq' \
    --body '{"localizationDisplayNames": {"RGCilScWAUas323F": "KSVc91ocmVSjoJsQ", "TcKhqI6P695JT3Kv": "wZMGr54I7Cr9Qvnh", "kXaez3PYEoY3Db4i": "YIqevvf2ECYbfviA"}}' \
    > test.out 2>&1
eval_tap $? 31 'UpdateCategory' test.out

#- 32 DeleteCategory
samples/cli/sample-apps Platform deleteCategory \
    --categoryPath 'dTJwLCwsCdqPX9jX' \
    --namespace $AB_NAMESPACE \
    --storeId 'nY70X092jhZ8mbeG' \
    > test.out 2>&1
eval_tap $? 32 'DeleteCategory' test.out

#- 33 GetChildCategories
samples/cli/sample-apps Platform getChildCategories \
    --categoryPath 'TVi49q3bMNNDVO43' \
    --namespace $AB_NAMESPACE \
    --storeId 'rcb4MKiUEZ1EZ2hp' \
    > test.out 2>&1
eval_tap $? 33 'GetChildCategories' test.out

#- 34 GetDescendantCategories
samples/cli/sample-apps Platform getDescendantCategories \
    --categoryPath 'x5T7Of0VbDbXp5oE' \
    --namespace $AB_NAMESPACE \
    --storeId 'bE41bnuIBOxTQICg' \
    > test.out 2>&1
eval_tap $? 34 'GetDescendantCategories' test.out

#- 35 QueryCodes
samples/cli/sample-apps Platform queryCodes \
    --campaignId 'SP0XWcTGHeXdkIPa' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --batchNo '1' \
    --code '47eaTtsPcKjcU8xk' \
    --limit '49' \
    --offset '59' \
    > test.out 2>&1
eval_tap $? 35 'QueryCodes' test.out

#- 36 CreateCodes
samples/cli/sample-apps Platform createCodes \
    --campaignId 'Yj3YdoFwnOSXhJ1X' \
    --namespace $AB_NAMESPACE \
    --body '{"quantity": 1}' \
    > test.out 2>&1
eval_tap $? 36 'CreateCodes' test.out

#- 37 Download
samples/cli/sample-apps Platform download \
    --campaignId 'yiX5wZ2727z7Yava' \
    --namespace $AB_NAMESPACE \
    --batchNo '91' \
    > test.out 2>&1
eval_tap $? 37 'Download' test.out

#- 38 BulkDisableCodes
samples/cli/sample-apps Platform bulkDisableCodes \
    --campaignId '4wYZqmx6QaIVcsbA' \
    --namespace $AB_NAMESPACE \
    --batchNo '28' \
    > test.out 2>&1
eval_tap $? 38 'BulkDisableCodes' test.out

#- 39 BulkEnableCodes
samples/cli/sample-apps Platform bulkEnableCodes \
    --campaignId 'w83kEX4L7BHXY8pn' \
    --namespace $AB_NAMESPACE \
    --batchNo '6' \
    > test.out 2>&1
eval_tap $? 39 'BulkEnableCodes' test.out

#- 40 QueryRedeemHistory
samples/cli/sample-apps Platform queryRedeemHistory \
    --campaignId 'eD9TF6HGyRljMbjQ' \
    --namespace $AB_NAMESPACE \
    --code 'TpGx6ip78q3XQcPh' \
    --limit '63' \
    --offset '9' \
    --userId 'eKA9rWmGawPhwgrf' \
    > test.out 2>&1
eval_tap $? 40 'QueryRedeemHistory' test.out

#- 41 GetCode
samples/cli/sample-apps Platform getCode \
    --code 'wFjtkBwMeZ2P1uMh' \
    --namespace $AB_NAMESPACE \
    --redeemable 'true' \
    > test.out 2>&1
eval_tap $? 41 'GetCode' test.out

#- 42 DisableCode
samples/cli/sample-apps Platform disableCode \
    --code 'ksfspImXiOs3nEod' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 42 'DisableCode' test.out

#- 43 EnableCode
samples/cli/sample-apps Platform enableCode \
    --code 'Au1krZZMh8McK0XS' \
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
    --body '{"currencyCode": "hPaPwUK5FAVjJ9mH", "currencySymbol": "J90s2SG2jRaUW94U", "currencyType": "VIRTUAL", "decimals": 98, "localizationDescriptions": {"lXiGTmHcriWnu9tw": "NbYZFCRXKUgts0KX", "j7OWwvIUQFjecgyn": "bVUCRFHxrkhYKsZG", "aO2NSdVcqZ0RkuOI": "IAMUO5EL8fZvo8Lp"}}' \
    > test.out 2>&1
eval_tap $? 48 'CreateCurrency' test.out

#- 49 UpdateCurrency
samples/cli/sample-apps Platform updateCurrency \
    --currencyCode '3AJMgmo0hb8YQJKj' \
    --namespace $AB_NAMESPACE \
    --body '{"localizationDescriptions": {"1dYgDwbmH3OrQR9k": "gyHzHk5hfm1GoycU", "jjztkUN4EYrp4x64": "2JfryPm93fywNRvZ", "wa7omjltL3U0uKll": "HPgBXZP1acvv1zUn"}}' \
    > test.out 2>&1
eval_tap $? 49 'UpdateCurrency' test.out

#- 50 DeleteCurrency
samples/cli/sample-apps Platform deleteCurrency \
    --currencyCode 'oxZXbE1XNxgXdOco' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 50 'DeleteCurrency' test.out

#- 51 GetCurrencyConfig
samples/cli/sample-apps Platform getCurrencyConfig \
    --currencyCode 'cokU9WoDsyPU8zyO' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 51 'GetCurrencyConfig' test.out

#- 52 GetCurrencySummary
samples/cli/sample-apps Platform getCurrencySummary \
    --currencyCode 'cBnfqrXmyxyNoxkY' \
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
    --body '{"data": [{"id": "XWihhHFDYvr0svNN", "rewards": [{"currency": {"currencyCode": "DUY0tjbQiHyD1nEh", "namespace": "wvY884r5isbWCPAx"}, "item": {"itemId": "FZYfGmxQ8zyreGuv", "itemSku": "hZDVMtWNoyTtG4Q7", "itemType": "9oVQXqyPdqaEuzYc"}, "quantity": 99, "type": "CURRENCY"}, {"currency": {"currencyCode": "yyUFFN4uo8V8THMO", "namespace": "EzQy8m06SOLIH6W8"}, "item": {"itemId": "UYXA9iQKGhASO7eY", "itemSku": "oBtwPgjpo717WphZ", "itemType": "Gs7uZEpZaDsiRP2w"}, "quantity": 78, "type": "CURRENCY"}, {"currency": {"currencyCode": "zH0kpYThITGAISAe", "namespace": "XmfvId5E0qONv6Qg"}, "item": {"itemId": "WH7TDqIRG4BP5Rxm", "itemSku": "GetwvjCbNjT2RaPA", "itemType": "WJ0N7lttKwLDPq77"}, "quantity": 34, "type": "CURRENCY"}]}, {"id": "xcqptqXfYx3xgnA6", "rewards": [{"currency": {"currencyCode": "2J4CB6hsSDJArnVy", "namespace": "ljsgYNAG88iMb0g8"}, "item": {"itemId": "GEz3fHvTMRiJxtHf", "itemSku": "fm2gxW5wvlLGki8n", "itemType": "asEHzDHwBLcOjMwH"}, "quantity": 36, "type": "ITEM"}, {"currency": {"currencyCode": "94p3KbPl4ayZH4Bq", "namespace": "nbo8cj7RD3cNtrt1"}, "item": {"itemId": "YScX4vcciFbkfRcU", "itemSku": "KeSNb9K1pxfPvwPm", "itemType": "aPjjvlIbuyKONDuI"}, "quantity": 64, "type": "ITEM"}, {"currency": {"currencyCode": "jPQAbNA58VDbASWh", "namespace": "tOl9zwGJNWSoJNZD"}, "item": {"itemId": "6gn2aPMpELJTh7uO", "itemSku": "PhcBjfySJU1PMVaC", "itemType": "rlpJxmFahi0KCwGb"}, "quantity": 74, "type": "CURRENCY"}]}, {"id": "do93ADQTHUy8XaI8", "rewards": [{"currency": {"currencyCode": "iPAyH9qs56xz5NsD", "namespace": "nCIpzbAaa6gMFKJ0"}, "item": {"itemId": "MFcpZq3sP3tPICSe", "itemSku": "ugIP9uQlFzie1EBj", "itemType": "5JRO3iP5sr8i11lS"}, "quantity": 33, "type": "ITEM"}, {"currency": {"currencyCode": "BVI95sWthF0aQj4G", "namespace": "fo0ukOk5YGb9f94O"}, "item": {"itemId": "8tGOID3CRZ3jPJO3", "itemSku": "pL8hCwrzEtfv4qFg", "itemType": "RXnOWg5BgcX4K362"}, "quantity": 3, "type": "ITEM"}, {"currency": {"currencyCode": "fzor1GjQ4gFkFVsI", "namespace": "WoxmXxBKi3FX6YXy"}, "item": {"itemId": "mefeoTG51lFK6c1y", "itemSku": "bEiY9UKqkzTleNLO", "itemType": "NceNHHcrIBIOaM0F"}, "quantity": 68, "type": "CURRENCY"}]}]}' \
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
    --body '{"data": [{"platform": "EPICGAMES", "platformDlcIdMap": {"5vXEJmML3eblOxly": "b4wVvUAGyEDZFlbS", "ZSHJ31XDPil0tQJw": "yEVZynjrwOe1CGfY", "eOFHyU7DISSDP8sq": "zRQytEu8yj8RklEU"}}, {"platform": "PSN", "platformDlcIdMap": {"pprW32nZVYsVCP9u": "oRi5nlw0dkvPcIES", "rB9Orf3hwR91FsEA": "ayA5srXFMtfoTZ8H", "esuIi76qOTy7Sx9l": "ALwkYVs0UDDzdOdH"}}, {"platform": "XBOX", "platformDlcIdMap": {"Jq4VDYi33SfVnDlb": "zuGmPuaulrLVFq4t", "hUsUKUoYLyHZwSnl": "DzqXXmgtKNZXt8Ww", "7TgV41nQdC6eOCwe": "HQIdobvnhBZ1MhfN"}}]}' \
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
    --appType 'DEMO' \
    --entitlementClazz 'OPTIONBOX' \
    --entitlementName 'cC1J81LA4LtYuzOv' \
    --itemId '["VeuugeutUXavt4Z3", "WE7qw6b5QR9Abv3N", "YmdoKW5IxJx20NGM"]' \
    --limit '78' \
    --offset '90' \
    --origin 'IOS' \
    --userId '8YxJCwTiPh8fqFyx' \
    > test.out 2>&1
eval_tap $? 59 'QueryEntitlements' test.out

#- 60 QueryEntitlements1
samples/cli/sample-apps Platform queryEntitlements1 \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --itemIds '["iznP7VGz3TYmh9DW", "lYfPFtvivenF958R", "LudGwEmrhdbISbuH"]' \
    --limit '98' \
    --offset '79' \
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
    --withoutCache 'true' \
    > test.out 2>&1
eval_tap $? 62 'GetEntitlementConfigInfo' test.out

#- 63 GrantEntitlements
samples/cli/sample-apps Platform grantEntitlements \
    --namespace $AB_NAMESPACE \
    --body '{"entitlementGrantList": [{"collectionId": "jdmWutOED5L2woRx", "endDate": "1992-11-15T00:00:00Z", "grantedCode": "Eq9BtxuNEJggsbx9", "itemId": "d8ZUzFVu7cT3ichN", "itemNamespace": "VpqeOaZP4XeyeemE", "language": "Sz_uPjv-194", "origin": "Xbox", "quantity": 79, "region": "1ar9CkcjAcVPZOQa", "source": "IAP", "startDate": "1993-06-13T00:00:00Z", "storeId": "pEPdKlJwHscTMqNt"}, {"collectionId": "TA4tNzeJ4v3MezTa", "endDate": "1999-07-15T00:00:00Z", "grantedCode": "poYtB5WSyPPvB8dp", "itemId": "XJG5UcCK43FIaCq9", "itemNamespace": "Nq9OeLMpDHsYYX0H", "language": "eIim-xsww_Pl", "origin": "Oculus", "quantity": 38, "region": "DJybDtqbeDACqzeQ", "source": "REDEEM_CODE", "startDate": "1996-08-15T00:00:00Z", "storeId": "rSEINRV8eO7zPsip"}, {"collectionId": "gr0GB5O2Cx1qGbvL", "endDate": "1980-09-16T00:00:00Z", "grantedCode": "gTsVShDYoHsMsmLD", "itemId": "8MtgN2y9L67kr0Op", "itemNamespace": "YS2ohER7hrgFm8dQ", "language": "jNKs-uHHX", "origin": "System", "quantity": 91, "region": "aKj33Dm1vRUL8cvq", "source": "ACHIEVEMENT", "startDate": "1988-05-10T00:00:00Z", "storeId": "93VOLyqF1C5RyfWL"}], "userIds": ["MZr9cmBPLCQAnDKa", "iyrRQWVeetK73NEC", "5qIw8wZtcxVBb4ot"]}' \
    > test.out 2>&1
eval_tap $? 63 'GrantEntitlements' test.out

#- 64 RevokeEntitlements
samples/cli/sample-apps Platform revokeEntitlements \
    --namespace $AB_NAMESPACE \
    --body '["hZpGJlSjrqzXBu2v", "8ICUamROyLIrd7NW", "jPO226eJ4IhSPWU5"]' \
    > test.out 2>&1
eval_tap $? 64 'RevokeEntitlements' test.out

#- 65 GetEntitlement
samples/cli/sample-apps Platform getEntitlement \
    --entitlementId '9D6L3bPCUbELjKdU' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 65 'GetEntitlement' test.out

#- 66 QueryFulfillmentHistories
samples/cli/sample-apps Platform queryFulfillmentHistories \
    --namespace $AB_NAMESPACE \
    --limit '90' \
    --offset '62' \
    --status 'SUCCESS' \
    --userId 'ikd8KtK0o4MVaVhJ' \
    > test.out 2>&1
eval_tap $? 66 'QueryFulfillmentHistories' test.out

#- 67 QueryIAPClawbackHistory
samples/cli/sample-apps Platform queryIAPClawbackHistory \
    --namespace $AB_NAMESPACE \
    --endTime 'iFGr9BP6x0b3LQdW' \
    --eventType 'CHARGEBACK' \
    --externalOrderId 'pxdJQy4M8JaTMh3U' \
    --limit '72' \
    --offset '41' \
    --startTime 'wALQs1BIRRkLywQ0' \
    --status 'INIT' \
    --userId 'U6cwvWBd5ga82YsU' \
    > test.out 2>&1
eval_tap $? 67 'QueryIAPClawbackHistory' test.out

#- 68 MockPlayStationStreamEvent
samples/cli/sample-apps Platform mockPlayStationStreamEvent \
    --namespace $AB_NAMESPACE \
    --body '{"body": {"account": "BJirtN5N43JT3Cn9", "additionalData": {"entitlement": [{"clientTransaction": [{"amountConsumed": 23, "clientTransactionId": "T5aBE9VsxDf84t8o"}, {"amountConsumed": 34, "clientTransactionId": "ViFFF0MFsHD2FSIu"}, {"amountConsumed": 62, "clientTransactionId": "d8QIT7PC9VGA3hx7"}], "entitlementId": "0ZMCgk82vX4u5FLq", "usageCount": 98}, {"clientTransaction": [{"amountConsumed": 0, "clientTransactionId": "nCoeTZ9KbnR3bNWZ"}, {"amountConsumed": 18, "clientTransactionId": "wx4Ncn34xqVmZuH4"}, {"amountConsumed": 1, "clientTransactionId": "H1PYAalMvCXMfg2N"}], "entitlementId": "Rw9UBnFZAhjk6ALZ", "usageCount": 50}, {"clientTransaction": [{"amountConsumed": 22, "clientTransactionId": "k0svHOiLGHAgImBX"}, {"amountConsumed": 5, "clientTransactionId": "49ZoGIUyD7W6QSYw"}, {"amountConsumed": 45, "clientTransactionId": "xqTWw0alp2kN67iF"}], "entitlementId": "pDm4SbD8rqu5ZJRS", "usageCount": 33}], "purpose": "8EVWV15BGC7KzDXD"}, "originalTitleName": "IjyfPhX4725qqWgv", "paymentProductSKU": "YKSIrzaXRnX9mCVM", "purchaseDate": "y0z78CNfxEHyXQo8", "sourceOrderItemId": "kwatJCt9vWx96KG3", "titleName": "JMrJ63VGwV1JrIka"}, "eventDomain": "5squghWnPhCky25d", "eventSource": "yHvw36o9IN9ekeXd", "eventType": "XWSA86Mgk60T09go", "eventVersion": 46, "id": "nvR7UXjZaXR19TTZ", "timestamp": "dTvdPK07Lk2bNxFs"}' \
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
    --body '{"bundleId": "hDu9rjNeZn0Ud2Wm", "password": "20NFL023d8P2Yxhx"}' \
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
    --body '{"sandboxId": "X5FUUJwKwvx3kTT5"}' \
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
    --body '{"applicationName": "zgPjubfhwtCvXSkT", "serviceAccountId": "6ZLPCG2HkFJ1ZZkN"}' \
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
    --body '{"data": [{"itemIdentity": "pcvhh4SGiuoejxG1", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"T7F4l3ffRfPzGjLS": "9ZXJ1UAT4S6OgGBo", "8w2tqmb424GFieIj": "p6WvEUGcwvlPkaIP", "rW5r9tx24Qxqj5Hq": "uggwIAwQP0OOhx1R"}}, {"itemIdentity": "4UzUH7AvJQcr9L9B", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"dLbpTN6uzkqWGNjY": "3FUAGHWKAs2YKxHG", "5XOyzTJdSVrfKiJ5": "RQxKK5kvABAHXsHy", "EbUIa6vkkad7SUWi": "ij6Tl9lOeGzt47pF"}}, {"itemIdentity": "HxJeQkN6UcK4akxS", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"F2MELZrdZinETm74": "NYeyMQnU0xedn4JJ", "zxXyMerXEBzuLdBB": "yXHO9vAcHeY3K91t", "z3muv5cljOAmDb82": "OCcT0PwaEq6ZEDGW"}}]}' \
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
    --body '{"appId": "SPVtoInRb62oKQIC", "appSecret": "7EjyM78A9pxInWG9"}' \
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
    --body '{"backOfficeServerClientId": "46SOksAT1FSmFCnF", "backOfficeServerClientSecret": "0x9J2T6UNfOH7cRa", "enableStreamJob": false, "environment": "083w6ZNZe5ojvJyK", "streamName": "Jn6KUnQwxF9rMjEp", "streamPartnerName": "QBz7G9IUJzwuRdUs"}' \
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
    --body '{"backOfficeServerClientId": "psfo2WWUKqCwKZ8I", "backOfficeServerClientSecret": "jTRv7693xkbSokrd", "enableStreamJob": true, "environment": "rHUT8ewabq8Pw2rt", "streamName": "WczZLj2xKUoErrJR", "streamPartnerName": "b1NnCFPWJE4B6qTg"}' \
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
    --body '{"appId": "Nnr306mD55UGSxOG", "publisherAuthenticationKey": "KSQl1iCbRInCPLJo"}' \
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
    --body '{"clientId": "uT9Biu8Lq8TwX7nT", "clientSecret": "JpMuRmRR6N6ZwlzH", "organizationId": "9uZOygdEWtzDM3Uf"}' \
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
    --body '{"relyingPartyCert": "tCuceCkdIR6MwWEL"}' \
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
    --password 'NNCd7kgEKfHnDxbB' \
    > test.out 2>&1
eval_tap $? 99 'UpdateXblBPCertFile' test.out

#- 100 DownloadInvoiceDetails
samples/cli/sample-apps Platform downloadInvoiceDetails \
    --namespace $AB_NAMESPACE \
    --feature '01LKBDfGo6EaIFOx' \
    --itemId '4U3dkZS4FoT2wpKq' \
    --itemType 'SEASON' \
    --endTime '0Iv6kLyW4nrEG3R3' \
    --startTime 'GBz5Eb8RGYaStHrC' \
    > test.out 2>&1
eval_tap $? 100 'DownloadInvoiceDetails' test.out

#- 101 GenerateInvoiceSummary
samples/cli/sample-apps Platform generateInvoiceSummary \
    --namespace $AB_NAMESPACE \
    --feature 'TvoVReA7ghMoha61' \
    --itemId 'luWKBp3RCOCouR2C' \
    --itemType 'BUNDLE' \
    --endTime 'Za5fVxWubA08Ozvu' \
    --startTime '2Y87MG0NduLUU7tl' \
    > test.out 2>&1
eval_tap $? 101 'GenerateInvoiceSummary' test.out

#- 102 SyncInGameItem
samples/cli/sample-apps Platform syncInGameItem \
    --namespace $AB_NAMESPACE \
    --storeId 'zoy2AHxCsaJujoNS' \
    --body '{"categoryPath": "gX25ursscjTR7nTb", "targetItemId": "ml6sjX8tuJRtImx6", "targetNamespace": "AiFfYqJUB6QlMoQ9"}' \
    > test.out 2>&1
eval_tap $? 102 'SyncInGameItem' test.out

#- 103 CreateItem
samples/cli/sample-apps Platform createItem \
    --namespace $AB_NAMESPACE \
    --storeId 'rzTQeO64x5OUa6h1' \
    --body '{"appId": "Hw7KZRSLd1ayZ2Td", "appType": "DLC", "baseAppId": "GreKTJ0T5TKxvsQ6", "boothName": "CNOTi5Ud2yGC6Kdt", "categoryPath": "nkSCkEcI6ZCoRssV", "clazz": "5hzbwgYVMpFj2jOS", "displayOrder": 84, "entitlementType": "DURABLE", "ext": {"GR1z0MgOD8UIaAqS": {}, "v1IFLiy2Ba3RidLf": {}, "J1028WOHVvl4DNQI": {}}, "features": ["UFJOoMkh3UFFsjyi", "bXcBrObkea1qgYsf", "yKeWQ3qDT8tJReSj"], "flexible": false, "images": [{"as": "Xb2EbPWNBEl2i2jm", "caption": "K1OU8GKuGoDxUJsP", "height": 74, "imageUrl": "izM3nRWSaJebdrE9", "smallImageUrl": "j126Vaf3seQTEFvu", "width": 56}, {"as": "3bteSQp2J43D4TKe", "caption": "Fi3fY7K0ZIb6n4Be", "height": 60, "imageUrl": "FEv7VUegbYjwbCOs", "smallImageUrl": "68fOA4jMqB7wnfaT", "width": 9}, {"as": "yXO5x35ZnUHNLbrQ", "caption": "WZWiUBJwnl4eweZ8", "height": 46, "imageUrl": "y8uVfEvETFLzUbuV", "smallImageUrl": "mcLGLHrY6rCcgd5N", "width": 9}], "inventoryConfig": {"customAttributes": {"8AwUtoQxUdpYlHWk": {}, "X0KaXPz5ISk6eMOn": {}, "UKn7eZjdDMQE8uGJ": {}}, "serverCustomAttributes": {"yjMQ9M4y0hKo8vGS": {}, "eqJO4fuiJ6Ajm7Oq": {}, "pecRY1VKkay0lSrY": {}}, "slotUsed": 12}, "itemIds": ["EWvwSoCFbpsXamfn", "ysw12K4YEKMFatvF", "hSCXy5tEmOanovn1"], "itemQty": {"4JaevQbhSz1nIi24": 9, "s27d2QPO97g6n7os": 39, "rXM4y8OcV0assv0K": 85}, "itemType": "MEDIA", "listable": false, "localizations": {"RVKyJr6OOC5RLGhr": {"description": "Cg2U6ZIfCBuyml35", "localExt": {"Xj45CF9R3sXkhxTh": {}, "HkSqPqcpE9dlqHNV": {}, "K1L7dNWYcoAIeKWV": {}}, "longDescription": "yJwLj50ueEtUZJfG", "title": "Xn0ycNQVyyNKIDdk"}, "sfeaTVYvoHwtKkAI": {"description": "Jh5ST9wOhYFJujvz", "localExt": {"4RdsL9BSFtb2fmlF": {}, "SXeHxwfTtMjrNfrm": {}, "u2Xd2LGTrpILfiWV": {}}, "longDescription": "AgNM1A0d9GPXUSP2", "title": "omqmfPGHVmGos19z"}, "xJPLbMS8f61FFAVG": {"description": "OCLTf48pHAAWrAFB", "localExt": {"SxDDbroRuH8TmtWU": {}, "h2fTzQIlmG49McLa": {}, "86Wze52ejZMphEOR": {}}, "longDescription": "WimBQalqzOw6K1mT", "title": "jwAUvLx8q2ld8OZI"}}, "lootBoxConfig": {"rewardCount": 3, "rewards": [{"lootBoxItems": [{"count": 72, "duration": 20, "endDate": "1991-11-17T00:00:00Z", "itemId": "pcRijOW64lm6G4bJ", "itemSku": "2vdyFOAXG0NKRb7y", "itemType": "hi3PIibrDbGOYgBg"}, {"count": 15, "duration": 52, "endDate": "1982-04-19T00:00:00Z", "itemId": "DaMZc72N8TBkh9Sw", "itemSku": "BnLonpqrpOMHPWoI", "itemType": "NdtwdFxfq07gYTFP"}, {"count": 41, "duration": 48, "endDate": "1982-12-17T00:00:00Z", "itemId": "WOFAcZmlzphmxX9p", "itemSku": "Bgh0PvUv8ZOeVfJl", "itemType": "BkCVn0wIzhfjkI8e"}], "name": "NUcLdL5ARh5EPJT9", "odds": 0.02677115646962569, "type": "PROBABILITY_GROUP", "weight": 53}, {"lootBoxItems": [{"count": 82, "duration": 71, "endDate": "1988-11-07T00:00:00Z", "itemId": "z4TL0QCOJw3XwaPr", "itemSku": "1qGjPtIsLtRueFSU", "itemType": "Qf4FNhGN4zWv5EMS"}, {"count": 47, "duration": 28, "endDate": "1987-12-20T00:00:00Z", "itemId": "8akGLUyy9ziod2k8", "itemSku": "9C6KEBO3dQdMsDtN", "itemType": "vJ25Odjo1wcKoBK3"}, {"count": 70, "duration": 29, "endDate": "1990-11-22T00:00:00Z", "itemId": "Jd6nRmzLqGus5x1g", "itemSku": "gJy167aGC3gYwhZU", "itemType": "abwjgC2wojoKYK76"}], "name": "P7wYWsRUGpywwsWR", "odds": 0.003722186165381669, "type": "PROBABILITY_GROUP", "weight": 7}, {"lootBoxItems": [{"count": 93, "duration": 97, "endDate": "1999-11-16T00:00:00Z", "itemId": "sVXhzGJpoy7uev1W", "itemSku": "2UHogkzbhp5ISRAa", "itemType": "nYLfxB9JH9Z5p8tf"}, {"count": 87, "duration": 45, "endDate": "1972-11-13T00:00:00Z", "itemId": "PqAZmyv3xQysbN6l", "itemSku": "gOBnvvNAPL6PGNKC", "itemType": "DYkmcI2YcjwhRWfd"}, {"count": 84, "duration": 68, "endDate": "1974-09-25T00:00:00Z", "itemId": "GQyLyGGSNeyogTRs", "itemSku": "Ka8BEUzMq6SBayYG", "itemType": "9qO8XPzPlreuKtC8"}], "name": "LTD6h6tb4Wpw53Ha", "odds": 0.868815470372595, "type": "REWARD", "weight": 3}], "rollFunction": "DEFAULT"}, "maxCount": 100, "maxCountPerUser": 15, "name": "gnQYlSuQJq5F09sN", "optionBoxConfig": {"boxItems": [{"count": 38, "duration": 18, "endDate": "1986-04-29T00:00:00Z", "itemId": "BWsETGRnOos5f5AV", "itemSku": "z4iu6ctje6ONmzeF", "itemType": "fow3TDot2TYnnfI8"}, {"count": 81, "duration": 41, "endDate": "1987-07-02T00:00:00Z", "itemId": "UIozypEhPJtRmVuj", "itemSku": "6u6uK9JYp9Z8PeTb", "itemType": "PAsYGbUS5tJYUuLd"}, {"count": 70, "duration": 31, "endDate": "1987-05-02T00:00:00Z", "itemId": "TX9gsevPYndet6GO", "itemSku": "iwLq1ve6iL2yutcq", "itemType": "VGFak9b3Lw9LKwMM"}]}, "purchasable": true, "recurring": {"cycle": "QUARTERLY", "fixedFreeDays": 61, "fixedTrialCycles": 89, "graceDays": 44}, "regionData": {"aRR0bxc9uF1e3PAE": [{"currencyCode": "SJXNkGBBPP4EHkyB", "currencyNamespace": "RdKzWPyMYSMZmCy3", "currencyType": "VIRTUAL", "discountAmount": 3, "discountExpireAt": "1994-08-23T00:00:00Z", "discountPercentage": 31, "discountPurchaseAt": "1999-10-02T00:00:00Z", "expireAt": "1992-03-19T00:00:00Z", "price": 16, "purchaseAt": "1994-01-28T00:00:00Z", "trialPrice": 96}, {"currencyCode": "zYSd7k2cyFbWI6aa", "currencyNamespace": "OY3hNjHk0CI7NpX1", "currencyType": "REAL", "discountAmount": 2, "discountExpireAt": "1988-04-12T00:00:00Z", "discountPercentage": 71, "discountPurchaseAt": "1999-05-29T00:00:00Z", "expireAt": "1978-11-30T00:00:00Z", "price": 79, "purchaseAt": "1985-03-05T00:00:00Z", "trialPrice": 27}, {"currencyCode": "RIubVx11UEB6nq9g", "currencyNamespace": "Mn4XBbpd388QdWcq", "currencyType": "VIRTUAL", "discountAmount": 92, "discountExpireAt": "1998-08-23T00:00:00Z", "discountPercentage": 99, "discountPurchaseAt": "1983-03-25T00:00:00Z", "expireAt": "1996-07-22T00:00:00Z", "price": 40, "purchaseAt": "1977-07-14T00:00:00Z", "trialPrice": 16}], "8pK5adEsJdyIVeum": [{"currencyCode": "boJbEMQngHgrLaJA", "currencyNamespace": "yeFXc5Cw3lgkIeYa", "currencyType": "REAL", "discountAmount": 10, "discountExpireAt": "1972-10-27T00:00:00Z", "discountPercentage": 74, "discountPurchaseAt": "1996-12-19T00:00:00Z", "expireAt": "1988-02-17T00:00:00Z", "price": 39, "purchaseAt": "1987-03-09T00:00:00Z", "trialPrice": 12}, {"currencyCode": "oqY83mjjxqjO7LuS", "currencyNamespace": "cgDh9WXHwDepKkhx", "currencyType": "REAL", "discountAmount": 10, "discountExpireAt": "1977-09-25T00:00:00Z", "discountPercentage": 31, "discountPurchaseAt": "1973-06-26T00:00:00Z", "expireAt": "1972-08-16T00:00:00Z", "price": 46, "purchaseAt": "1990-04-22T00:00:00Z", "trialPrice": 36}, {"currencyCode": "KJjAPep7TEvn5oex", "currencyNamespace": "WluHMlKAtWKj6B6Q", "currencyType": "VIRTUAL", "discountAmount": 45, "discountExpireAt": "1994-04-05T00:00:00Z", "discountPercentage": 66, "discountPurchaseAt": "1975-05-14T00:00:00Z", "expireAt": "1993-02-17T00:00:00Z", "price": 12, "purchaseAt": "1998-10-08T00:00:00Z", "trialPrice": 83}], "eP0QqvIhwu4MUSZ3": [{"currencyCode": "jAxzRAu48Mz0pCWx", "currencyNamespace": "pKoW7UFv4zrbW2EN", "currencyType": "VIRTUAL", "discountAmount": 55, "discountExpireAt": "1983-07-16T00:00:00Z", "discountPercentage": 63, "discountPurchaseAt": "1991-09-13T00:00:00Z", "expireAt": "1995-01-17T00:00:00Z", "price": 90, "purchaseAt": "1988-12-11T00:00:00Z", "trialPrice": 10}, {"currencyCode": "4nwk4H4aewMLg64D", "currencyNamespace": "FYy1K505BEI2WMAb", "currencyType": "REAL", "discountAmount": 63, "discountExpireAt": "1987-05-26T00:00:00Z", "discountPercentage": 3, "discountPurchaseAt": "1996-04-30T00:00:00Z", "expireAt": "1984-04-28T00:00:00Z", "price": 56, "purchaseAt": "1986-12-29T00:00:00Z", "trialPrice": 68}, {"currencyCode": "e97JfSL8F4XaZYvQ", "currencyNamespace": "S2LakVw5gvipH9d4", "currencyType": "REAL", "discountAmount": 50, "discountExpireAt": "1984-04-28T00:00:00Z", "discountPercentage": 100, "discountPurchaseAt": "1976-03-28T00:00:00Z", "expireAt": "1975-06-05T00:00:00Z", "price": 40, "purchaseAt": "1978-02-01T00:00:00Z", "trialPrice": 83}]}, "saleConfig": {"currencyCode": "nZAGjfhAKbAaMgvR", "price": 9}, "seasonType": "TIER", "sectionExclusive": true, "sellable": false, "sku": "XzsMJL2ywHDNANIH", "stackable": false, "status": "ACTIVE", "tags": ["yyFlbUUyPD2ut6jj", "KRTALHKov0YDJ59G", "n8avGKWlzY8tCBvU"], "targetCurrencyCode": "g5HTYsdjdk6zQN3h", "targetNamespace": "ZAfTruk4UONUd4Rv", "thumbnailUrl": "3pWLQKHAqs4xaUuk", "useCount": 36}' \
    > test.out 2>&1
eval_tap $? 103 'CreateItem' test.out

#- 104 GetItemByAppId
samples/cli/sample-apps Platform getItemByAppId \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --storeId 'efmlLXvKMRm8ncpZ' \
    --appId 'U8dqVjogx0YDC1QR' \
    > test.out 2>&1
eval_tap $? 104 'GetItemByAppId' test.out

#- 105 QueryItems
samples/cli/sample-apps Platform queryItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --appType 'DLC' \
    --availableDate 'Zml3lGnHpla4PKOY' \
    --baseAppId 'i7quehv3hqMPDAxi' \
    --categoryPath 'vi3MoKXfd4BjpbS9' \
    --features 'mnR7IMidX3oYrjrg' \
    --includeSubCategoryItem 'false' \
    --itemType 'LOOTBOX' \
    --limit '71' \
    --offset '49' \
    --region '2hklBor1O9Zi2gEz' \
    --sortBy '["displayOrder:desc", "updatedAt:desc", "createdAt:asc"]' \
    --storeId 'Zd2hPaO1BdiCO2Ej' \
    --tags 'BAHj7IdY5Uvgi3rw' \
    --targetNamespace 'VSBGjGaMQ5tEL4Au' \
    > test.out 2>&1
eval_tap $? 105 'QueryItems' test.out

#- 106 ListBasicItemsByFeatures
samples/cli/sample-apps Platform listBasicItemsByFeatures \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --features '["NAF9EKZxLkRV2sT3", "5DGM63DeP8wyVCUr", "LzVRpOIjQiMcjVPP"]' \
    > test.out 2>&1
eval_tap $? 106 'ListBasicItemsByFeatures' test.out

#- 107 GetItems
samples/cli/sample-apps Platform getItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'p11LbPnwL8VyGdl0' \
    --itemIds '8JWZyi8pt1j0X58N' \
    > test.out 2>&1
eval_tap $? 107 'GetItems' test.out

#- 108 GetItemBySku
samples/cli/sample-apps Platform getItemBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --storeId 'js68gEfGvWPYvJSD' \
    --sku '9m998FFREVkTPHWm' \
    > test.out 2>&1
eval_tap $? 108 'GetItemBySku' test.out

#- 109 GetLocaleItemBySku
samples/cli/sample-apps Platform getLocaleItemBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --language 'BNYZKTDrsTV8OKUw' \
    --populateBundle 'false' \
    --region 'MNmZhoULP4m0H08h' \
    --storeId '58fYT9i0ZNdW49RP' \
    --sku 'S3WISP2Fs1AcEHyL' \
    > test.out 2>&1
eval_tap $? 109 'GetLocaleItemBySku' test.out

#- 110 GetEstimatedPrice
samples/cli/sample-apps Platform getEstimatedPrice \
    --namespace $AB_NAMESPACE \
    --platform 'dTkRq8i7Xxu951mO' \
    --region 'SFxeI26eYO6OoAqK' \
    --storeId '0Lp3q6H75xJJvzIz' \
    --itemIds 'zIVgOdqWK9gML9ER' \
    --userId 'u6u4TXj7GbxppMFd' \
    > test.out 2>&1
eval_tap $? 110 'GetEstimatedPrice' test.out

#- 111 GetItemIdBySku
samples/cli/sample-apps Platform getItemIdBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'zUpGLG0v8lb9gW0B' \
    --sku 'yY6VFuaKcb224278' \
    > test.out 2>&1
eval_tap $? 111 'GetItemIdBySku' test.out

#- 112 GetBulkItemIdBySkus
samples/cli/sample-apps Platform getBulkItemIdBySkus \
    --namespace $AB_NAMESPACE \
    --sku '["6WG7V8npKgxli8DQ", "pzIBHBbkpK57PPGo", "F0xuPFXpMXxhVoIF"]' \
    --storeId '0sd7S3Vtj8KbK70N' \
    > test.out 2>&1
eval_tap $? 112 'GetBulkItemIdBySkus' test.out

#- 113 BulkGetLocaleItems
samples/cli/sample-apps Platform bulkGetLocaleItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --language 'Ne4zu02VgpoUpwxP' \
    --region '5iKJaD6uKG9t1YPq' \
    --storeId 'CsY85YTZnpoLYxDT' \
    --itemIds 'WDEBEczNJEJxNwYT' \
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
    --platform 'rPgPuP89gkNTPmf8' \
    --userId 'rwIQryU8AxtVFQ7a' \
    --body '{"itemIds": ["EBQuNa3g9PJfKwt5", "FsDmsEhxom72QYKQ", "zXDNdp6uHT4Qtzj6"]}' \
    > test.out 2>&1
eval_tap $? 115 'ValidateItemPurchaseCondition' test.out

#- 116 BulkUpdateRegionData
samples/cli/sample-apps Platform bulkUpdateRegionData \
    --namespace $AB_NAMESPACE \
    --storeId '0l8vObjIARu1sCHH' \
    --body '{"changes": [{"itemIdentities": ["bWnndd8gVpqGNnLL", "saG8PfqlZzPOETRa", "bjeRiuNlQ6dgKKBv"], "itemIdentityType": "ITEM_ID", "regionData": {"yLzZnAK1vyjp1kIs": [{"currencyCode": "IH8uO0mhSApPvyRI", "currencyNamespace": "XIuF3Hrbdtq85E9Y", "currencyType": "REAL", "discountAmount": 42, "discountExpireAt": "1991-05-25T00:00:00Z", "discountPercentage": 21, "discountPurchaseAt": "1982-12-03T00:00:00Z", "discountedPrice": 70, "expireAt": "1999-03-03T00:00:00Z", "price": 40, "purchaseAt": "1971-11-06T00:00:00Z", "trialPrice": 70}, {"currencyCode": "axsseN3s67EGhXmD", "currencyNamespace": "pi7KguD4Cem7mE73", "currencyType": "VIRTUAL", "discountAmount": 13, "discountExpireAt": "1990-11-08T00:00:00Z", "discountPercentage": 43, "discountPurchaseAt": "1974-01-22T00:00:00Z", "discountedPrice": 0, "expireAt": "1980-07-11T00:00:00Z", "price": 81, "purchaseAt": "1997-05-04T00:00:00Z", "trialPrice": 24}, {"currencyCode": "lmD0QYjrbMvZDviI", "currencyNamespace": "I4wqc6BzQnRRHYab", "currencyType": "VIRTUAL", "discountAmount": 60, "discountExpireAt": "1987-09-05T00:00:00Z", "discountPercentage": 3, "discountPurchaseAt": "1987-07-12T00:00:00Z", "discountedPrice": 49, "expireAt": "1983-12-13T00:00:00Z", "price": 41, "purchaseAt": "1991-09-14T00:00:00Z", "trialPrice": 96}], "pQsjAlJCSUEAcOLg": [{"currencyCode": "FPUJWTYfj6brNPXz", "currencyNamespace": "2lfxD9kkOjw3vyg8", "currencyType": "VIRTUAL", "discountAmount": 57, "discountExpireAt": "1993-07-15T00:00:00Z", "discountPercentage": 67, "discountPurchaseAt": "1981-07-10T00:00:00Z", "discountedPrice": 90, "expireAt": "1987-11-04T00:00:00Z", "price": 78, "purchaseAt": "1974-06-15T00:00:00Z", "trialPrice": 48}, {"currencyCode": "WeCzoCxO7i4hJmJ2", "currencyNamespace": "TnPK9hh5UoBxGpH3", "currencyType": "VIRTUAL", "discountAmount": 42, "discountExpireAt": "1995-12-09T00:00:00Z", "discountPercentage": 16, "discountPurchaseAt": "1973-08-22T00:00:00Z", "discountedPrice": 83, "expireAt": "1999-01-25T00:00:00Z", "price": 55, "purchaseAt": "1977-11-11T00:00:00Z", "trialPrice": 3}, {"currencyCode": "iz9x8ORHPSEGAxWh", "currencyNamespace": "TdZjFP3XmTwYnsrT", "currencyType": "REAL", "discountAmount": 87, "discountExpireAt": "1976-01-31T00:00:00Z", "discountPercentage": 44, "discountPurchaseAt": "1986-12-30T00:00:00Z", "discountedPrice": 31, "expireAt": "1971-11-06T00:00:00Z", "price": 93, "purchaseAt": "1982-04-05T00:00:00Z", "trialPrice": 41}], "Zt57DXqE8F8YvpHk": [{"currencyCode": "qTvud3RKgPJCsqII", "currencyNamespace": "Kw7Vr0uWirO6ch3P", "currencyType": "VIRTUAL", "discountAmount": 86, "discountExpireAt": "1990-09-22T00:00:00Z", "discountPercentage": 49, "discountPurchaseAt": "1994-07-30T00:00:00Z", "discountedPrice": 56, "expireAt": "1982-03-17T00:00:00Z", "price": 90, "purchaseAt": "1992-09-05T00:00:00Z", "trialPrice": 33}, {"currencyCode": "KNPxrkd8WxgvvTGI", "currencyNamespace": "2wzztUbO29LGUoYw", "currencyType": "VIRTUAL", "discountAmount": 5, "discountExpireAt": "1996-02-29T00:00:00Z", "discountPercentage": 38, "discountPurchaseAt": "1981-07-11T00:00:00Z", "discountedPrice": 18, "expireAt": "1998-04-22T00:00:00Z", "price": 22, "purchaseAt": "1976-01-11T00:00:00Z", "trialPrice": 61}, {"currencyCode": "ajB8ldu2HgSHrptw", "currencyNamespace": "AQYvJZm8ghCB8V7I", "currencyType": "REAL", "discountAmount": 69, "discountExpireAt": "1984-09-18T00:00:00Z", "discountPercentage": 6, "discountPurchaseAt": "1985-10-10T00:00:00Z", "discountedPrice": 35, "expireAt": "1973-02-06T00:00:00Z", "price": 67, "purchaseAt": "1993-05-07T00:00:00Z", "trialPrice": 1}]}}, {"itemIdentities": ["neAtUiakgGn7pYJq", "xwng7OrzzIJTfnF4", "GQzKmJvdT6G1VY9k"], "itemIdentityType": "ITEM_SKU", "regionData": {"zQi8dXnkLFMP9GwO": [{"currencyCode": "cEkymIiD6Hv3rdFf", "currencyNamespace": "G9eHHDUFnprtJCpk", "currencyType": "REAL", "discountAmount": 74, "discountExpireAt": "1972-04-08T00:00:00Z", "discountPercentage": 46, "discountPurchaseAt": "1973-05-30T00:00:00Z", "discountedPrice": 43, "expireAt": "1993-04-24T00:00:00Z", "price": 10, "purchaseAt": "1991-11-13T00:00:00Z", "trialPrice": 96}, {"currencyCode": "byWs6LFdxXjDjTVV", "currencyNamespace": "ZY5OSpypkZSLxFdU", "currencyType": "REAL", "discountAmount": 81, "discountExpireAt": "1996-03-12T00:00:00Z", "discountPercentage": 29, "discountPurchaseAt": "1998-04-11T00:00:00Z", "discountedPrice": 73, "expireAt": "1976-11-27T00:00:00Z", "price": 38, "purchaseAt": "1994-01-25T00:00:00Z", "trialPrice": 12}, {"currencyCode": "56rlSrMLEPi7lopn", "currencyNamespace": "vqBm8UcrRpQTUo4B", "currencyType": "VIRTUAL", "discountAmount": 61, "discountExpireAt": "1985-09-22T00:00:00Z", "discountPercentage": 58, "discountPurchaseAt": "1994-11-09T00:00:00Z", "discountedPrice": 13, "expireAt": "1973-10-22T00:00:00Z", "price": 14, "purchaseAt": "1993-04-16T00:00:00Z", "trialPrice": 28}], "R8VJlXoDcYQ3hZcB": [{"currencyCode": "ekUyI96epcBz0OAZ", "currencyNamespace": "90Ydp8g9L79szUNd", "currencyType": "VIRTUAL", "discountAmount": 32, "discountExpireAt": "1973-06-20T00:00:00Z", "discountPercentage": 92, "discountPurchaseAt": "1977-07-06T00:00:00Z", "discountedPrice": 8, "expireAt": "1979-12-14T00:00:00Z", "price": 0, "purchaseAt": "1995-10-31T00:00:00Z", "trialPrice": 24}, {"currencyCode": "iVB4qtM9kawdoHVg", "currencyNamespace": "9sPemfFX0tWiS9vT", "currencyType": "VIRTUAL", "discountAmount": 41, "discountExpireAt": "1985-02-28T00:00:00Z", "discountPercentage": 37, "discountPurchaseAt": "1983-07-10T00:00:00Z", "discountedPrice": 30, "expireAt": "1985-10-24T00:00:00Z", "price": 100, "purchaseAt": "1975-09-26T00:00:00Z", "trialPrice": 22}, {"currencyCode": "0wfIqM7vBg5G5nKV", "currencyNamespace": "eqg9z55pVBd8IXqJ", "currencyType": "VIRTUAL", "discountAmount": 20, "discountExpireAt": "1982-09-24T00:00:00Z", "discountPercentage": 97, "discountPurchaseAt": "1986-12-25T00:00:00Z", "discountedPrice": 30, "expireAt": "1975-04-10T00:00:00Z", "price": 100, "purchaseAt": "1990-03-12T00:00:00Z", "trialPrice": 93}], "LL7szss1oM7zmgaC": [{"currencyCode": "nafhoaKkVSM2P6pR", "currencyNamespace": "k3XipbZp5vYj7HDW", "currencyType": "VIRTUAL", "discountAmount": 7, "discountExpireAt": "1977-01-22T00:00:00Z", "discountPercentage": 86, "discountPurchaseAt": "1982-08-22T00:00:00Z", "discountedPrice": 19, "expireAt": "1971-11-29T00:00:00Z", "price": 48, "purchaseAt": "1995-09-02T00:00:00Z", "trialPrice": 51}, {"currencyCode": "96tiaFzLMfqVbiDI", "currencyNamespace": "WUKtuGEeSXttvZqm", "currencyType": "VIRTUAL", "discountAmount": 10, "discountExpireAt": "1991-11-21T00:00:00Z", "discountPercentage": 14, "discountPurchaseAt": "1996-05-10T00:00:00Z", "discountedPrice": 84, "expireAt": "1971-09-09T00:00:00Z", "price": 74, "purchaseAt": "1972-08-13T00:00:00Z", "trialPrice": 49}, {"currencyCode": "I7fjvPrN7qe8vaMG", "currencyNamespace": "zn8EI43WrTm1nqgf", "currencyType": "REAL", "discountAmount": 82, "discountExpireAt": "1978-03-28T00:00:00Z", "discountPercentage": 85, "discountPurchaseAt": "1990-08-06T00:00:00Z", "discountedPrice": 29, "expireAt": "1983-07-22T00:00:00Z", "price": 57, "purchaseAt": "1992-06-09T00:00:00Z", "trialPrice": 89}]}}, {"itemIdentities": ["yIRo6xfZH4S5FaVx", "Kp8bEKH0kdky3IyI", "Dm7hxYEb0Zehp0HO"], "itemIdentityType": "ITEM_ID", "regionData": {"wFQouJWh4MU7Spii": [{"currencyCode": "P7W0wmDU6SOf249D", "currencyNamespace": "Gbos1PWh8sQqis2E", "currencyType": "REAL", "discountAmount": 77, "discountExpireAt": "1995-08-20T00:00:00Z", "discountPercentage": 42, "discountPurchaseAt": "1992-11-08T00:00:00Z", "discountedPrice": 99, "expireAt": "1973-10-24T00:00:00Z", "price": 16, "purchaseAt": "1982-01-21T00:00:00Z", "trialPrice": 57}, {"currencyCode": "bEzyP9ThxDd13hYe", "currencyNamespace": "eMCQzxkGtTvNq9bt", "currencyType": "VIRTUAL", "discountAmount": 41, "discountExpireAt": "1996-11-18T00:00:00Z", "discountPercentage": 98, "discountPurchaseAt": "1990-01-19T00:00:00Z", "discountedPrice": 52, "expireAt": "1989-01-01T00:00:00Z", "price": 100, "purchaseAt": "1991-08-28T00:00:00Z", "trialPrice": 94}, {"currencyCode": "VY09J3BeWcnvVQ9K", "currencyNamespace": "EDIIwYCmuy5qARrK", "currencyType": "VIRTUAL", "discountAmount": 17, "discountExpireAt": "1990-10-23T00:00:00Z", "discountPercentage": 22, "discountPurchaseAt": "1983-07-14T00:00:00Z", "discountedPrice": 94, "expireAt": "1979-10-19T00:00:00Z", "price": 1, "purchaseAt": "1995-08-01T00:00:00Z", "trialPrice": 2}], "I4Oi7Gq2c90R77nq": [{"currencyCode": "gUQzpDUbhbOdCpBm", "currencyNamespace": "1EoSm9cq2yBZlki6", "currencyType": "REAL", "discountAmount": 47, "discountExpireAt": "1999-07-16T00:00:00Z", "discountPercentage": 87, "discountPurchaseAt": "1992-10-26T00:00:00Z", "discountedPrice": 22, "expireAt": "1999-10-29T00:00:00Z", "price": 74, "purchaseAt": "1989-05-26T00:00:00Z", "trialPrice": 64}, {"currencyCode": "3j7j8QFJXGNl7bSm", "currencyNamespace": "UzCWK4DqcTwqWiER", "currencyType": "VIRTUAL", "discountAmount": 93, "discountExpireAt": "1995-06-03T00:00:00Z", "discountPercentage": 14, "discountPurchaseAt": "1973-08-13T00:00:00Z", "discountedPrice": 19, "expireAt": "1975-02-10T00:00:00Z", "price": 83, "purchaseAt": "1982-07-16T00:00:00Z", "trialPrice": 56}, {"currencyCode": "yNoeIMO0NK3UzG7c", "currencyNamespace": "HYjzfUULyLcVKsGy", "currencyType": "REAL", "discountAmount": 15, "discountExpireAt": "1993-08-08T00:00:00Z", "discountPercentage": 5, "discountPurchaseAt": "1972-04-14T00:00:00Z", "discountedPrice": 5, "expireAt": "1985-04-03T00:00:00Z", "price": 79, "purchaseAt": "1996-06-16T00:00:00Z", "trialPrice": 11}], "XjYNQmGKIwpWVUqt": [{"currencyCode": "6i9h7E9D5y0v14A8", "currencyNamespace": "MgzyerrUN7sUHgEZ", "currencyType": "REAL", "discountAmount": 54, "discountExpireAt": "1999-12-10T00:00:00Z", "discountPercentage": 16, "discountPurchaseAt": "1990-01-19T00:00:00Z", "discountedPrice": 86, "expireAt": "1980-09-27T00:00:00Z", "price": 94, "purchaseAt": "1992-10-13T00:00:00Z", "trialPrice": 14}, {"currencyCode": "4j49woKqGPfGwJVO", "currencyNamespace": "A3xdEX9ZLfpWO21q", "currencyType": "VIRTUAL", "discountAmount": 86, "discountExpireAt": "1977-06-15T00:00:00Z", "discountPercentage": 46, "discountPurchaseAt": "1983-10-21T00:00:00Z", "discountedPrice": 47, "expireAt": "1982-10-16T00:00:00Z", "price": 57, "purchaseAt": "1994-06-13T00:00:00Z", "trialPrice": 60}, {"currencyCode": "mFj5Hb0ynZYxfu1t", "currencyNamespace": "dBOdFVikrf9FSyFr", "currencyType": "VIRTUAL", "discountAmount": 3, "discountExpireAt": "1972-08-07T00:00:00Z", "discountPercentage": 4, "discountPurchaseAt": "1973-12-05T00:00:00Z", "discountedPrice": 30, "expireAt": "1981-10-29T00:00:00Z", "price": 42, "purchaseAt": "1997-05-13T00:00:00Z", "trialPrice": 24}]}}]}' \
    > test.out 2>&1
eval_tap $? 116 'BulkUpdateRegionData' test.out

#- 117 SearchItems
samples/cli/sample-apps Platform searchItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --itemType 'OPTIONBOX' \
    --limit '24' \
    --offset '54' \
    --sortBy 'gTRXx7QWkUJqQeZ6' \
    --storeId 'bAeAlebt39uQMl83' \
    --keyword 'SgNgGwuLzuOEAKmw' \
    --language 'FU1kQG7b3NwuUAPu' \
    > test.out 2>&1
eval_tap $? 117 'SearchItems' test.out

#- 118 QueryUncategorizedItems
samples/cli/sample-apps Platform queryUncategorizedItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --limit '18' \
    --offset '86' \
    --sortBy '["name", "name:asc", "createdAt:desc"]' \
    --storeId '49ciNRChFMIyA1hm' \
    > test.out 2>&1
eval_tap $? 118 'QueryUncategorizedItems' test.out

#- 119 GetItem
samples/cli/sample-apps Platform getItem \
    --itemId '9QzztM8cjwgmZ2Qu' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'seyIgnQ4h96mx0dc' \
    > test.out 2>&1
eval_tap $? 119 'GetItem' test.out

#- 120 UpdateItem
samples/cli/sample-apps Platform updateItem \
    --itemId 'zMtuYOHj5yEjWVPc' \
    --namespace $AB_NAMESPACE \
    --storeId 'du7FmdXYlY8FkJ57' \
    --body '{"appId": "ZT0wuEHegnHOIuiN", "appType": "GAME", "baseAppId": "BbUWlIaq0tNEdMmO", "boothName": "faJ8SnXx9pXCFH85", "categoryPath": "8n10DoBDqfZCjRB1", "clazz": "NorFmrPc10RjEbDy", "displayOrder": 13, "entitlementType": "CONSUMABLE", "ext": {"yL2e4UtGvXYlp3V8": {}, "gMxq6wGuwiZfR8rQ": {}, "LpIzB73dDMYbgwQH": {}}, "features": ["yiTcvdBZbWNTuWsH", "Li2D0HVQX2yPfxsd", "p6pHb3Mf876nUMCs"], "flexible": true, "images": [{"as": "n8ExyjpDRTGraN1f", "caption": "0rfo1NfBWlYJp1GS", "height": 30, "imageUrl": "XFTgnSQAt04wAJN1", "smallImageUrl": "PGh9CYfxaF931lZu", "width": 32}, {"as": "9uyQdNDThUsthNkv", "caption": "W1jokBBJJsz1vjz7", "height": 13, "imageUrl": "jgqGNWX5PEpgrGsh", "smallImageUrl": "NzQnf7gqeMLxpxxZ", "width": 77}, {"as": "INorj7GWoMnuODP5", "caption": "x5eOV7T8UlyMtKev", "height": 20, "imageUrl": "OSMn6W63AuCbUNxQ", "smallImageUrl": "Da1vyRlKBjnkRXkB", "width": 28}], "inventoryConfig": {"customAttributes": {"80woDJFJ1xOgD1Ow": {}, "qkYu2L6H999BomCe": {}, "deq23Lhnk0NVRFs4": {}}, "serverCustomAttributes": {"wRJDyoHyE53hPPPt": {}, "3GFPgpBYL0BTd6q9": {}, "TBJTtBvMU2BzXRXp": {}}, "slotUsed": 78}, "itemIds": ["xw4YtvW7iFAEK6nM", "EMGl5dk93pY0HFKg", "wW0Aedk7qcjOqsHe"], "itemQty": {"XwwQaEoXowr5pspG": 25, "3TNRcZbA8FB1S9oa": 59, "v2AUKzYkHcuAF6aH": 10}, "itemType": "EXTENSION", "listable": false, "localizations": {"wDwQWD73inpET2G6": {"description": "7noewE3YqaqQmhns", "localExt": {"OiMbU44Cp5QGrGgr": {}, "VS7qxj2AeqxOQRWp": {}, "Se5fKtyKl6U4NZWh": {}}, "longDescription": "0wlORCYKkXuc8Ps4", "title": "bzk8lB7XWAT7a0ul"}, "wfEz99AzXS8wVl8O": {"description": "Pjjh4TehUTnxz3ea", "localExt": {"FJV3wIFtzXT2jzHq": {}, "ObW3vmZMobaUC9K2": {}, "h5atqbPZymaCuoXS": {}}, "longDescription": "KFQTN5VLEOmqnF6h", "title": "B3TOJfwWIhcl8EaK"}, "sXiR1btncA3HJZuy": {"description": "VDyQWTHXabe0DrJ2", "localExt": {"yK9rAmWFNwcARBGy": {}, "3bzTCwWz2epmHjd4": {}, "qtvOyW87TF97ysME": {}}, "longDescription": "qYVqqLbdB3esDidD", "title": "w09gUdGE8OKRqDYl"}}, "lootBoxConfig": {"rewardCount": 90, "rewards": [{"lootBoxItems": [{"count": 85, "duration": 58, "endDate": "1982-01-25T00:00:00Z", "itemId": "kSuYLEhfyeE3NrHI", "itemSku": "soM6G9QbJUkeVI0Y", "itemType": "fnTRvYqlZVWEKtqI"}, {"count": 61, "duration": 94, "endDate": "1990-12-17T00:00:00Z", "itemId": "FUj7W09aJjbINcu3", "itemSku": "cHWBFYFkxBvJ3wdW", "itemType": "mDr0uO2rEI3uY7gl"}, {"count": 76, "duration": 24, "endDate": "1975-07-31T00:00:00Z", "itemId": "PeuR3kvz53CuGvia", "itemSku": "KbKKCC72Yan5DOkw", "itemType": "bP86hYAXSzvGWoZa"}], "name": "390IxvLyie9uFvxW", "odds": 0.9097138626006364, "type": "PROBABILITY_GROUP", "weight": 40}, {"lootBoxItems": [{"count": 96, "duration": 65, "endDate": "1997-06-17T00:00:00Z", "itemId": "DqEnE1jAqkdwRMUb", "itemSku": "7auhw6CN428vmaFp", "itemType": "UoTWOPNLYzOlRh71"}, {"count": 3, "duration": 68, "endDate": "1986-10-14T00:00:00Z", "itemId": "2z1N5fhsv8XzLe5Q", "itemSku": "qgYhI1PhfZYJXEjn", "itemType": "wlv2ct68mWuehwZZ"}, {"count": 96, "duration": 87, "endDate": "1976-01-03T00:00:00Z", "itemId": "ERk1OUpdpa1ernkC", "itemSku": "3GBMqFZyWcXpkcdy", "itemType": "H4y9qQiq1QhnFb8M"}], "name": "1YUN77JtMw5iraUm", "odds": 0.5822615513452265, "type": "PROBABILITY_GROUP", "weight": 84}, {"lootBoxItems": [{"count": 4, "duration": 75, "endDate": "1984-07-08T00:00:00Z", "itemId": "cl7X23cqmxmm04YK", "itemSku": "FQNbCtjf2ONCUjQa", "itemType": "bWM3nVSyGd8prtKt"}, {"count": 39, "duration": 82, "endDate": "1976-08-06T00:00:00Z", "itemId": "wUbULnCMWKOmex8q", "itemSku": "8C4hPMLSXRc2JiCk", "itemType": "HHWXaDb0Y1nnBQVm"}, {"count": 53, "duration": 29, "endDate": "1991-03-13T00:00:00Z", "itemId": "ZREIbK7pmaJtYzFg", "itemSku": "nK9TO4HohqqSwXyc", "itemType": "IpboRE4Ssb3jh3Eh"}], "name": "RZQOPq84n6zJfViI", "odds": 0.4692237379791494, "type": "REWARD", "weight": 97}], "rollFunction": "DEFAULT"}, "maxCount": 67, "maxCountPerUser": 39, "name": "sG4KeruRDmBP75e9", "optionBoxConfig": {"boxItems": [{"count": 56, "duration": 56, "endDate": "1975-08-11T00:00:00Z", "itemId": "u3fjcb3Iqo9RD5SD", "itemSku": "UJUwOsyaVhMx055M", "itemType": "pbAB5i9hKFqOS910"}, {"count": 4, "duration": 10, "endDate": "1984-08-08T00:00:00Z", "itemId": "sErarYi9oSRwMfuV", "itemSku": "lM7fr6zla7Vh0xqH", "itemType": "FVe0Qx5e93QyVZ3z"}, {"count": 92, "duration": 99, "endDate": "1979-03-13T00:00:00Z", "itemId": "tZusvIh99PEwXfbW", "itemSku": "ldPHRIBImanwODhb", "itemType": "huobERJgBZCOX3gJ"}]}, "purchasable": true, "recurring": {"cycle": "QUARTERLY", "fixedFreeDays": 5, "fixedTrialCycles": 12, "graceDays": 84}, "regionData": {"4aV4fFV2AEFNsL8k": [{"currencyCode": "torhKSLtymDFhrBC", "currencyNamespace": "qz8k1ZiPQI41u02T", "currencyType": "REAL", "discountAmount": 13, "discountExpireAt": "1975-07-29T00:00:00Z", "discountPercentage": 72, "discountPurchaseAt": "1977-05-31T00:00:00Z", "expireAt": "1985-07-19T00:00:00Z", "price": 25, "purchaseAt": "1985-10-02T00:00:00Z", "trialPrice": 21}, {"currencyCode": "nJNOPmS5yP4WHc8Z", "currencyNamespace": "0iekCBOHnfMlqy6c", "currencyType": "REAL", "discountAmount": 100, "discountExpireAt": "1978-03-06T00:00:00Z", "discountPercentage": 88, "discountPurchaseAt": "1972-11-03T00:00:00Z", "expireAt": "1979-01-14T00:00:00Z", "price": 8, "purchaseAt": "1978-06-02T00:00:00Z", "trialPrice": 58}, {"currencyCode": "QDnwCxo3RLxmUSst", "currencyNamespace": "GOe0LGLrEE9ZyatP", "currencyType": "REAL", "discountAmount": 74, "discountExpireAt": "1972-05-21T00:00:00Z", "discountPercentage": 8, "discountPurchaseAt": "1985-09-22T00:00:00Z", "expireAt": "1974-07-25T00:00:00Z", "price": 25, "purchaseAt": "1972-11-14T00:00:00Z", "trialPrice": 90}], "6dEZs92OI8emOyYs": [{"currencyCode": "fbB1UEPYkVdoRMce", "currencyNamespace": "sobUBVyR5RWHjAiF", "currencyType": "REAL", "discountAmount": 20, "discountExpireAt": "1974-10-01T00:00:00Z", "discountPercentage": 19, "discountPurchaseAt": "1975-10-30T00:00:00Z", "expireAt": "1983-09-06T00:00:00Z", "price": 74, "purchaseAt": "1999-02-27T00:00:00Z", "trialPrice": 28}, {"currencyCode": "tEWTIn09ho1lfEy3", "currencyNamespace": "mlI4PkZOCmHJKuFu", "currencyType": "REAL", "discountAmount": 27, "discountExpireAt": "1999-04-19T00:00:00Z", "discountPercentage": 87, "discountPurchaseAt": "1989-03-06T00:00:00Z", "expireAt": "1975-10-06T00:00:00Z", "price": 74, "purchaseAt": "1995-03-03T00:00:00Z", "trialPrice": 21}, {"currencyCode": "XqmydctIb83161IV", "currencyNamespace": "O1aT7eSAIvahBGyS", "currencyType": "VIRTUAL", "discountAmount": 46, "discountExpireAt": "1989-10-31T00:00:00Z", "discountPercentage": 61, "discountPurchaseAt": "1981-02-10T00:00:00Z", "expireAt": "1988-07-27T00:00:00Z", "price": 52, "purchaseAt": "1988-12-14T00:00:00Z", "trialPrice": 9}], "Un2v0qK1uRxJi4bU": [{"currencyCode": "53fMrneuhbbNUCBY", "currencyNamespace": "mZoVNlQwOEpMM1mC", "currencyType": "REAL", "discountAmount": 53, "discountExpireAt": "1987-11-09T00:00:00Z", "discountPercentage": 57, "discountPurchaseAt": "1975-01-02T00:00:00Z", "expireAt": "1999-04-09T00:00:00Z", "price": 25, "purchaseAt": "1980-10-18T00:00:00Z", "trialPrice": 10}, {"currencyCode": "QXbdY69uzxVoulDB", "currencyNamespace": "ebKOOl5xz8N5qM5P", "currencyType": "REAL", "discountAmount": 76, "discountExpireAt": "1975-03-21T00:00:00Z", "discountPercentage": 0, "discountPurchaseAt": "1977-01-31T00:00:00Z", "expireAt": "1973-07-11T00:00:00Z", "price": 75, "purchaseAt": "1988-11-18T00:00:00Z", "trialPrice": 13}, {"currencyCode": "2hYoYoO7Kg5nmdOW", "currencyNamespace": "p257LPCwea2kgGT8", "currencyType": "REAL", "discountAmount": 38, "discountExpireAt": "1971-05-09T00:00:00Z", "discountPercentage": 1, "discountPurchaseAt": "1974-03-31T00:00:00Z", "expireAt": "1984-05-17T00:00:00Z", "price": 10, "purchaseAt": "1981-08-24T00:00:00Z", "trialPrice": 91}]}, "saleConfig": {"currencyCode": "A4nCkVNLFlL00wHb", "price": 93}, "seasonType": "TIER", "sectionExclusive": false, "sellable": false, "sku": "stXBFsNJSaQVSxH8", "stackable": true, "status": "ACTIVE", "tags": ["GDMx4orR4VqvFQFr", "JU0BOmBl2CXNM4Nn", "6hyMHTtK9nLzexgS"], "targetCurrencyCode": "9OAw6andXNSMZIIv", "targetNamespace": "dm2MhDarc8wfV7nC", "thumbnailUrl": "eKwqKKcimDU4HB3e", "useCount": 99}' \
    > test.out 2>&1
eval_tap $? 120 'UpdateItem' test.out

#- 121 DeleteItem
samples/cli/sample-apps Platform deleteItem \
    --itemId 'KkLIyxbBECyrnNen' \
    --namespace $AB_NAMESPACE \
    --force 'false' \
    --storeId '4Hxr7wbYTRE5sO4i' \
    > test.out 2>&1
eval_tap $? 121 'DeleteItem' test.out

#- 122 AcquireItem
samples/cli/sample-apps Platform acquireItem \
    --itemId 'BFKOmykuSRGqbOaZ' \
    --namespace $AB_NAMESPACE \
    --body '{"count": 96, "orderNo": "PTGRkoFejNzRWKg8"}' \
    > test.out 2>&1
eval_tap $? 122 'AcquireItem' test.out

#- 123 GetApp
samples/cli/sample-apps Platform getApp \
    --itemId 'AGzxPOsmUT7SOc8O' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --storeId 'JQ2IPWPYKrbcD504' \
    > test.out 2>&1
eval_tap $? 123 'GetApp' test.out

#- 124 UpdateApp
samples/cli/sample-apps Platform updateApp \
    --itemId 'gTmH5w2zut2ALJmH' \
    --namespace $AB_NAMESPACE \
    --storeId 'djpcwnpKMhfEGBIC' \
    --body '{"carousel": [{"alt": "VqUJdxR8Z8N7jPZR", "previewUrl": "HBgrDAeNbMkGeydE", "thumbnailUrl": "IiLGdLM3L7sb16jN", "type": "video", "url": "3HqROkjgrgxB5v54", "videoSource": "vimeo"}, {"alt": "zorfVUCXKO7yLTy0", "previewUrl": "9FT5yd2kSh6BCOjg", "thumbnailUrl": "Pb1owfrGHn7bovYh", "type": "video", "url": "F651HF9uMX9FjEpf", "videoSource": "vimeo"}, {"alt": "167XfpynGFD5GzBu", "previewUrl": "94E8hOdh4AukKUxU", "thumbnailUrl": "aFCo7fjkwqcl8vOt", "type": "image", "url": "PNP1ih0PJyPW5GUc", "videoSource": "generic"}], "developer": "3Sx3lh4a0EFaSh5i", "forumUrl": "AEtGQlniny3d1lsy", "genres": ["MassivelyMultiplayer", "Simulation", "Action"], "localizations": {"qJAFpMYOpN8BagZR": {"announcement": "OpHH5sd6lL0C0weK", "slogan": "AcQ3GmMxNnllsdQL"}, "5cglhgcafheUeqBo": {"announcement": "sFO2amMeqH9TBZhg", "slogan": "WOlGeVpCLxHqfLVb"}, "O4AKGPLP3soR30Hf": {"announcement": "reEPyjC6Q85e7JQN", "slogan": "UuGBt9a8R7H13I17"}}, "platformRequirements": {"9sYxIXOJJNdEBRLv": [{"additionals": "9MlaqDSfKJgU1F1X", "directXVersion": "Sb36ofv2nTuwBsr0", "diskSpace": "n6rJuj15v6de0ZX8", "graphics": "lwRsMesCAaS4ooY4", "label": "HcPsVU0pCuZRTSxj", "osVersion": "FfUJG2XT2sXSpUam", "processor": "rBdDXJaszMFzMQc1", "ram": "k2wCqCHYrr2mXSK6", "soundCard": "SPyYWpUFjseQthpt"}, {"additionals": "4xKXNgN2INPrVeEj", "directXVersion": "AFw2p5wtDQMnNWf5", "diskSpace": "YGO8pkndCS5uRdMm", "graphics": "AxqLCjoQTaeBuDYh", "label": "rFlDaJtWtWJhArYG", "osVersion": "7B6JFTq1MW397MAR", "processor": "V4GCzJCp94FekFkT", "ram": "dB20ybRIvSxUYBk4", "soundCard": "vs5cMcFewLOwNl5h"}, {"additionals": "dz5Z0BOwuzQhURlQ", "directXVersion": "Mdr8iSDEQIM0L5P4", "diskSpace": "Wicj96B0c3LQiHoM", "graphics": "P8hxOLUUo1oKpq0z", "label": "Ib4Qrq1mFTWjxjWC", "osVersion": "gDvVZf7HIftqU3EI", "processor": "KHMRn1WO1rFV7fpa", "ram": "vV4q5Mi5612Uj2zJ", "soundCard": "Mfc0NhHphYtFFtwd"}], "1MEi9tl9GxL3Ijs0": [{"additionals": "710Q2Ju1oFDgzzoa", "directXVersion": "f4lrb4QguqiJJUWO", "diskSpace": "DWGSDAAYYhTJEt0y", "graphics": "SyXmTHZxXFlnIf0c", "label": "gJ4xeQYRU83WCKpD", "osVersion": "CsF3yZfkWcNue2CD", "processor": "3YdovFrvYzNjGcmQ", "ram": "hIjqbOgB4hJczw0I", "soundCard": "LCBkIaOJhoBkeeEm"}, {"additionals": "CPQ8qFucHobAh64X", "directXVersion": "nLHaI4D7IMNPktkY", "diskSpace": "7GkTtDQCr66Quy2V", "graphics": "TqIym6VVlpjv2o6J", "label": "a3V0nlQK1MlQGXs8", "osVersion": "11GqhzYBWTMxJCPG", "processor": "gK6xuYtxIat1lKYa", "ram": "AqMie1ZJGdhdJjom", "soundCard": "9QifwjJCM276lEAX"}, {"additionals": "vDHnE54xQ9A8kKJK", "directXVersion": "zT4soOd5CLkVBKSC", "diskSpace": "9M2lw5Zu9gjZnvx0", "graphics": "uMl9eoq15ZVIS0lw", "label": "q6xXQIFXMsRFNFTT", "osVersion": "hK8L8XD0QAmW4IP8", "processor": "JJ6wWZnTq8IF8VtE", "ram": "9vMdu9lSK6dduoil", "soundCard": "5Yjybd6XoJNXZ5Io"}], "AcHXJuLIImFAeZBZ": [{"additionals": "5dgJ9k1RKXKp2n2W", "directXVersion": "DGb89eymOHYVpIag", "diskSpace": "j0j9v3EvHsYgSqHM", "graphics": "O16pjV2Kh8yijPBW", "label": "sLgnHObU1iiMQqr0", "osVersion": "h6Ia4LJiSfTiLMUP", "processor": "euCGi6cc61FXJ85n", "ram": "e1uvjl4CCEoFjUs5", "soundCard": "wmXrPJjotsVqvta5"}, {"additionals": "xIh8mDldeVsc9U9n", "directXVersion": "DZHcKJKitRrMFa3i", "diskSpace": "cHKfh5y939SkgNMh", "graphics": "gTEnhM8Nhths26AZ", "label": "tchN9PunIyz7Azyd", "osVersion": "D70yDhqOBw2z9miL", "processor": "xROSb9sQJQPM53lK", "ram": "6pAxVJQbPGZN68Pa", "soundCard": "J4z66wGZQmYmIJev"}, {"additionals": "KPEHSPVC4sx3WZEQ", "directXVersion": "butPKVmtdihxKyTE", "diskSpace": "NqCJe7Rvvm1evSO3", "graphics": "lmpqzpxOlAkBTqig", "label": "PRiTHOWsV4g7r3Xw", "osVersion": "MQuiOx2TTrsqsLp6", "processor": "Q79hksDC7R2bxD11", "ram": "NGuhcjZv1M596GWc", "soundCard": "VLuZsJN6f74GuBjP"}]}, "platforms": ["Android", "Linux", "MacOS"], "players": ["Single", "Coop", "Multi"], "primaryGenre": "Simulation", "publisher": "IaxdUpzo1n1aVCw6", "releaseDate": "1986-04-23T00:00:00Z", "websiteUrl": "WnlwNX9mUUTUihAC"}' \
    > test.out 2>&1
eval_tap $? 124 'UpdateApp' test.out

#- 125 DisableItem
samples/cli/sample-apps Platform disableItem \
    --itemId 'SHN6KIXUi856LAG8' \
    --namespace $AB_NAMESPACE \
    --storeId 'DRHk5DV5BG9sLbuS' \
    > test.out 2>&1
eval_tap $? 125 'DisableItem' test.out

#- 126 GetItemDynamicData
samples/cli/sample-apps Platform getItemDynamicData \
    --itemId 'KIoYcMXLuGFP5CVI' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 126 'GetItemDynamicData' test.out

#- 127 EnableItem
samples/cli/sample-apps Platform enableItem \
    --itemId 'Q7wgWtPXBdx2wBsQ' \
    --namespace $AB_NAMESPACE \
    --storeId 'uC0jEfSnd5Bjf6yU' \
    > test.out 2>&1
eval_tap $? 127 'EnableItem' test.out

#- 128 FeatureItem
samples/cli/sample-apps Platform featureItem \
    --feature 'vuNErBRfrZ76yIGT' \
    --itemId 'PDUZRNML8LZx8fXJ' \
    --namespace $AB_NAMESPACE \
    --storeId 'X819mVvjlQ0ux0rq' \
    > test.out 2>&1
eval_tap $? 128 'FeatureItem' test.out

#- 129 DefeatureItem
samples/cli/sample-apps Platform defeatureItem \
    --feature 'MkmA0rrXHLmsaULr' \
    --itemId '0SwJvK3XK2lVEGR0' \
    --namespace $AB_NAMESPACE \
    --storeId 'LC5hVhHruRuTfzeK' \
    > test.out 2>&1
eval_tap $? 129 'DefeatureItem' test.out

#- 130 GetLocaleItem
samples/cli/sample-apps Platform getLocaleItem \
    --itemId 'hxl5urKm9jhpa2m7' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --language '7XzB2TD1N0SGRsoi' \
    --populateBundle 'false' \
    --region 'kQkQimSNsjeAmigl' \
    --storeId 'NAtOR7UAb0NVUrEz' \
    > test.out 2>&1
eval_tap $? 130 'GetLocaleItem' test.out

#- 131 UpdateItemPurchaseCondition
samples/cli/sample-apps Platform updateItemPurchaseCondition \
    --itemId 'kkujOady2QZjteyF' \
    --namespace $AB_NAMESPACE \
    --storeId '0AvsNW18MUnPcFA5' \
    --body '{"purchaseCondition": {"conditionGroups": [{"operator": "and", "predicates": [{"anyOf": 49, "comparison": "excludes", "name": "exLxKLxN4pE00EcR", "predicateType": "EntitlementPredicate", "value": "hkBPHMPiqYSWSNw6", "values": ["XpKtyaqLNeXV1gT8", "96EaRwF0zhRqYMa2", "t5eiKGnpZWo09Q3q"]}, {"anyOf": 26, "comparison": "isLessThan", "name": "YDK9NNF5Zd8SSKqY", "predicateType": "SeasonPassPredicate", "value": "Kvd7DmlTOCuRsSHl", "values": ["k8zTP4EfKEhPtEiq", "qDGsuBraAIzAQCa4", "CfSDl8Lni4C1sofk"]}, {"anyOf": 64, "comparison": "isLessThan", "name": "xnFqE72lTlpcXSw2", "predicateType": "SeasonTierPredicate", "value": "FpQtrlQkoKOld2SB", "values": ["9YukWO4jUSRHCAKH", "WfbEQnKoxrCkn511", "0uuL7WOSotbQUjef"]}]}, {"operator": "or", "predicates": [{"anyOf": 81, "comparison": "isNot", "name": "ghUMBzgxBcklEIgO", "predicateType": "EntitlementPredicate", "value": "o4w1EQxXZ7mWJFi2", "values": ["82OtMbzREChIFmjE", "Bc5fG4q8aFHPPId2", "QrQcPXPRPuWAMFsX"]}, {"anyOf": 9, "comparison": "isGreaterThan", "name": "ShzBAaNlsJvodo7o", "predicateType": "SeasonTierPredicate", "value": "kZQGWMJcKCfGhd8h", "values": ["EpJ8kyRaxgUqd1gh", "a1TP4t7vbfyQtp1X", "RT3w4XkFu1My2RWx"]}, {"anyOf": 83, "comparison": "excludes", "name": "cT78RSXtYlVsFSiJ", "predicateType": "SeasonTierPredicate", "value": "ljYyjPfajljTpSa8", "values": ["BWzEu5KEOK8FfnPm", "2THWjIvNghDj3hoG", "bnRU6IPTI4nNHjcb"]}]}, {"operator": "or", "predicates": [{"anyOf": 20, "comparison": "isGreaterThan", "name": "povBv9lLnzRWzyja", "predicateType": "EntitlementPredicate", "value": "I8NkJJHhqz0PSZSK", "values": ["RBdXj1LwRa2TH0qm", "mYndjS0L3tbZXsPf", "Aq23ZQ9UzhYaYHYV"]}, {"anyOf": 11, "comparison": "excludes", "name": "eiRSnTnPY6oFqqDt", "predicateType": "SeasonTierPredicate", "value": "ksQwPTXkxiqimZ6K", "values": ["2wCibkJSNQZTi3GL", "nBFyS8aPSyFP6urJ", "LS5z4OPuRdwxHFmj"]}, {"anyOf": 30, "comparison": "isLessThanOrEqual", "name": "xDglX4vbT2sV1wEL", "predicateType": "SeasonPassPredicate", "value": "LeJg9qgfEnNq7zPG", "values": ["iV7YOqQHK5exU2Fs", "5juHBjriynTy7mRQ", "g2kSdj6BlwR5d34l"]}]}]}}' \
    > test.out 2>&1
eval_tap $? 131 'UpdateItemPurchaseCondition' test.out

#- 132 ReturnItem
samples/cli/sample-apps Platform returnItem \
    --itemId 'ujTF03zKf6Qldfq8' \
    --namespace $AB_NAMESPACE \
    --body '{"orderNo": "j4yBOnhm4BxBBDAO"}' \
    > test.out 2>&1
eval_tap $? 132 'ReturnItem' test.out

#- 133 QueryKeyGroups
samples/cli/sample-apps Platform queryKeyGroups \
    --namespace $AB_NAMESPACE \
    --limit '14' \
    --name 'CRnuWcZSDDD2KOX1' \
    --offset '35' \
    --tag 'vkEBPc5ttIGqpql4' \
    > test.out 2>&1
eval_tap $? 133 'QueryKeyGroups' test.out

#- 134 CreateKeyGroup
samples/cli/sample-apps Platform createKeyGroup \
    --namespace $AB_NAMESPACE \
    --body '{"description": "Amx8Dl8tBjMHLLiz", "name": "HXPagAraoyucqlVG", "status": "ACTIVE", "tags": ["yvvPKvjaFjjDl7h8", "5ppzWwTzgLwIEWoQ", "WRwo75Fo2tW5Pt7s"]}' \
    > test.out 2>&1
eval_tap $? 134 'CreateKeyGroup' test.out

#- 135 GetKeyGroupByBoothName
eval_tap 0 135 'GetKeyGroupByBoothName # SKIP deprecated' test.out

#- 136 GetKeyGroup
samples/cli/sample-apps Platform getKeyGroup \
    --keyGroupId 'OMgl8W8c6GxKPE0o' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 136 'GetKeyGroup' test.out

#- 137 UpdateKeyGroup
samples/cli/sample-apps Platform updateKeyGroup \
    --keyGroupId 'xA5c85o3y1UfOTTR' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "N0Ll8LqnCaSArjhl", "name": "HfpxNw0oaIE0Ynvv", "status": "INACTIVE", "tags": ["QBtIfpcGuBj2lJMP", "ofoCUUPQGXvjnrZE", "HYcpDgCezdY6iurS"]}' \
    > test.out 2>&1
eval_tap $? 137 'UpdateKeyGroup' test.out

#- 138 GetKeyGroupDynamic
samples/cli/sample-apps Platform getKeyGroupDynamic \
    --keyGroupId 'fgKytdtN8zJ7c2oG' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 138 'GetKeyGroupDynamic' test.out

#- 139 ListKeys
samples/cli/sample-apps Platform listKeys \
    --keyGroupId '9cBz5LNBsJNJ52jI' \
    --namespace $AB_NAMESPACE \
    --limit '80' \
    --offset '57' \
    --status 'ACTIVE' \
    > test.out 2>&1
eval_tap $? 139 'ListKeys' test.out

#- 140 UploadKeys
samples/cli/sample-apps Platform uploadKeys \
    --keyGroupId 'eBEWp3FdzhUm9tYU' \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 140 'UploadKeys' test.out

#- 141 QueryOrders
samples/cli/sample-apps Platform queryOrders \
    --namespace $AB_NAMESPACE \
    --endTime '4zDzbCGqj87ZlWNj' \
    --limit '69' \
    --offset '67' \
    --orderNos '["V3AaPgRBDUn85aGh", "gju2jiJDKcpFRhSM", "y7wmRAzQWmuhXNCh"]' \
    --sortBy 'IQHNVojgQRLLWKoW' \
    --startTime '9oDDA99uEc3UAUtX' \
    --status 'REFUND_FAILED' \
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
    --orderNo '7tMuCo3tv3xJ9fI5' \
    > test.out 2>&1
eval_tap $? 143 'GetOrder' test.out

#- 144 RefundOrder
samples/cli/sample-apps Platform refundOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'k6n0xrw35frDQUWU' \
    --body '{"description": "QDvx1HQ5Z62PuoKP"}' \
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
    --body '{"dryRun": false, "notifyUrl": "qawvdvuYGJppkSoF", "privateKey": "erRfjTWQRHR6XIue"}' \
    > test.out 2>&1
eval_tap $? 146 'UpdatePaymentCallbackConfig' test.out

#- 147 QueryPaymentNotifications
samples/cli/sample-apps Platform queryPaymentNotifications \
    --namespace $AB_NAMESPACE \
    --endDate 'Wo9rsxpyCuWiXXzH' \
    --externalId '2R5bVcbLMn0g3rk9' \
    --limit '11' \
    --notificationSource 'WALLET' \
    --notificationType 'KoQZeLI3N5Ml6G0w' \
    --offset '62' \
    --paymentOrderNo 'ygc99E6XCNwFZOEr' \
    --startDate 'bFVa9PHmJGcWfZvK' \
    --status 'WARN' \
    > test.out 2>&1
eval_tap $? 147 'QueryPaymentNotifications' test.out

#- 148 QueryPaymentOrders
samples/cli/sample-apps Platform queryPaymentOrders \
    --namespace $AB_NAMESPACE \
    --channel 'EXTERNAL' \
    --extTxId 'gIYN5JQuBaGBNani' \
    --limit '73' \
    --offset '6' \
    --status 'CHARGE_FAILED' \
    > test.out 2>&1
eval_tap $? 148 'QueryPaymentOrders' test.out

#- 149 CreatePaymentOrderByDedicated
samples/cli/sample-apps Platform createPaymentOrderByDedicated \
    --namespace $AB_NAMESPACE \
    --body '{"currencyCode": "nHvvptVviPHgzn51", "currencyNamespace": "78jJoHc352V4euDb", "customParameters": {"aR6lvgYuOboSM9DA": {}, "Sa8wCnrjqDmuvy0K": {}, "LAGOn3hRaKDmUhvN": {}}, "description": "41AgbpCgtJ9UcDWS", "extOrderNo": "MCTxh2e2aOYbtP6f", "extUserId": "R5s0evE7oybXaZRR", "itemType": "SUBSCRIPTION", "language": "fT-CzeF-Vn", "metadata": {"yoxyJ4p08p3FU2pZ": "1O8wWSythVx0bq8I", "6csvJsA3vZgUZ6A4": "17TDCHg2X5F8U3NK", "tAmtH1NoIrAKK3KS": "u327H6M1Tvi3lKR1"}, "notifyUrl": "c7Supggrm8llUvT0", "omitNotification": true, "platform": "IxbDGLkyfbeFbOx8", "price": 94, "recurringPaymentOrderNo": "YSb69kggFb0DbbxS", "region": "vJqdL6ujdeVjrVXq", "returnUrl": "8WttpqiCXzimsn73", "sandbox": false, "sku": "vu0djvw5Bh9P8TGO", "subscriptionId": "QDfIWl8IhFQcrWsQ", "targetNamespace": "GPXGinOEXiFXmnWk", "targetUserId": "8hv28DRb91tDW3Z2", "title": "juXkdPWlga9xuvcs"}' \
    > test.out 2>&1
eval_tap $? 149 'CreatePaymentOrderByDedicated' test.out

#- 150 ListExtOrderNoByExtTxId
samples/cli/sample-apps Platform listExtOrderNoByExtTxId \
    --namespace $AB_NAMESPACE \
    --extTxId 'ZRgSC3caF7xUkFry' \
    > test.out 2>&1
eval_tap $? 150 'ListExtOrderNoByExtTxId' test.out

#- 151 GetPaymentOrder
samples/cli/sample-apps Platform getPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'yxOMOTqh5XdvCzXs' \
    > test.out 2>&1
eval_tap $? 151 'GetPaymentOrder' test.out

#- 152 ChargePaymentOrder
samples/cli/sample-apps Platform chargePaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'NonYHjzxGxpBXBeN' \
    --body '{"extTxId": "iBoRY40xM5v1uArP", "paymentMethod": "uEk72WZfLlUbG9e2", "paymentProvider": "ADYEN"}' \
    > test.out 2>&1
eval_tap $? 152 'ChargePaymentOrder' test.out

#- 153 RefundPaymentOrderByDedicated
samples/cli/sample-apps Platform refundPaymentOrderByDedicated \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'ItuPYFLouEaoAetU' \
    --body '{"description": "SDHpERu1VGqizFWW"}' \
    > test.out 2>&1
eval_tap $? 153 'RefundPaymentOrderByDedicated' test.out

#- 154 SimulatePaymentOrderNotification
samples/cli/sample-apps Platform simulatePaymentOrderNotification \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'Yo9otKFGu6aQndBQ' \
    --body '{"amount": 5, "currencyCode": "uV8KPmlChgU5D948", "notifyType": "REFUND", "paymentProvider": "WXPAY", "salesTax": 21, "vat": 59}' \
    > test.out 2>&1
eval_tap $? 154 'SimulatePaymentOrderNotification' test.out

#- 155 GetPaymentOrderChargeStatus
samples/cli/sample-apps Platform getPaymentOrderChargeStatus \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'VYj9TzMn2KmwJcOF' \
    > test.out 2>&1
eval_tap $? 155 'GetPaymentOrderChargeStatus' test.out

#- 156 GetPlatformEntitlementConfig
samples/cli/sample-apps Platform getPlatformEntitlementConfig \
    --namespace $AB_NAMESPACE \
    --platform 'IOS' \
    > test.out 2>&1
eval_tap $? 156 'GetPlatformEntitlementConfig' test.out

#- 157 UpdatePlatformEntitlementConfig
samples/cli/sample-apps Platform updatePlatformEntitlementConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Steam' \
    --body '{"allowedPlatformOrigins": ["System", "Steam", "Xbox"]}' \
    > test.out 2>&1
eval_tap $? 157 'UpdatePlatformEntitlementConfig' test.out

#- 158 GetPlatformWalletConfig
samples/cli/sample-apps Platform getPlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Steam' \
    > test.out 2>&1
eval_tap $? 158 'GetPlatformWalletConfig' test.out

#- 159 UpdatePlatformWalletConfig
samples/cli/sample-apps Platform updatePlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Oculus' \
    --body '{"allowedBalanceOrigins": ["Playstation", "Steam", "Other"]}' \
    > test.out 2>&1
eval_tap $? 159 'UpdatePlatformWalletConfig' test.out

#- 160 ResetPlatformWalletConfig
samples/cli/sample-apps Platform resetPlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Other' \
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
    --body '{"entitlement": {"consumable": {"enabled": false, "strategy": "REVOKE_OR_REPORT"}, "durable": {"enabled": true, "strategy": "REVOKE_OR_REPORT"}}, "wallet": {"enabled": true, "strategy": "CUSTOM"}}' \
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
    --endTime 'pjb9L79z1ViHOql8' \
    --limit '6' \
    --offset '67' \
    --source 'OTHER' \
    --startTime 'q0MTVXqh0QdRAG7O' \
    --status 'SUCCESS' \
    --transactionId '6wfNXxte6363hgF4' \
    --userId 'XlCXW3qX19RnIyQx' \
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
    --body '{"appConfig": {"appName": "eMsfFcsu00nNBBHu"}, "customConfig": {"connectionType": "INSECURE", "grpcServerAddress": "ISaUTuwB4RjheTQN"}, "extendType": "APP"}' \
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
    --body '{"description": "wmczsR3HdR1GtcS0", "eventTopic": "GdZEKr8z2Z3KysRh", "maxAwarded": 50, "maxAwardedPerUser": 67, "namespaceExpression": "pjmPZaHse41ePKSu", "rewardCode": "V2pQK70l44HxTLIo", "rewardConditions": [{"condition": "7cv7lDzUT3fyjXGk", "conditionName": "cbqdlAXcIgKYBNwZ", "eventName": "Dtq1z1Mi8OAs0Bgi", "rewardItems": [{"duration": 55, "endDate": "1998-10-19T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "fofMJs34aeYINPWP", "quantity": 15, "sku": "DDtapJkQ2CiftWXE"}, {"duration": 98, "endDate": "1977-03-30T00:00:00Z", "identityType": "ITEM_ID", "itemId": "c6kY2XFfY7P15Swh", "quantity": 52, "sku": "ppSgIC1jg8ehvgWH"}, {"duration": 81, "endDate": "1981-06-15T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "FVmvZhr84i6JDv83", "quantity": 18, "sku": "QcUW9bun0hrJohbF"}]}, {"condition": "x02SalgNSF3Kiq2O", "conditionName": "VQFAeFWOIhroxz4z", "eventName": "r0cWigShbRKXhgMb", "rewardItems": [{"duration": 83, "endDate": "1996-06-12T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "X9UiknYgMcUP0CXE", "quantity": 24, "sku": "5N7cFUzKuVaH6cTi"}, {"duration": 31, "endDate": "1981-09-25T00:00:00Z", "identityType": "ITEM_ID", "itemId": "L7GIvIjPu7TMQk2m", "quantity": 88, "sku": "HKpRnsvBbi8SVZaN"}, {"duration": 60, "endDate": "1980-10-02T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "bckm5TmfjXtKPHKo", "quantity": 60, "sku": "q5hy2uPgibHea7F7"}]}, {"condition": "WDyMWBqjMRR642Mm", "conditionName": "lvU6jkYL8nWrkJeq", "eventName": "v3e1K573oUaV3Z4c", "rewardItems": [{"duration": 81, "endDate": "1989-04-14T00:00:00Z", "identityType": "ITEM_ID", "itemId": "DAYUzBoTrJWNR9WX", "quantity": 22, "sku": "QpQEDbg3PoMSefXS"}, {"duration": 92, "endDate": "1976-12-08T00:00:00Z", "identityType": "ITEM_ID", "itemId": "Cc2alufA5eDf4mqV", "quantity": 82, "sku": "qf2L6R3Ivg51T5cC"}, {"duration": 30, "endDate": "1995-05-05T00:00:00Z", "identityType": "ITEM_ID", "itemId": "9MTwjhxxWI2jRQaD", "quantity": 20, "sku": "tNPVt29bNpMG3J1h"}]}], "userIdExpression": "JmF3IcJFeth46r6r"}' \
    > test.out 2>&1
eval_tap $? 169 'CreateReward' test.out

#- 170 QueryRewards
samples/cli/sample-apps Platform queryRewards \
    --namespace $AB_NAMESPACE \
    --eventTopic 'mwA7sDZoiSJdLrui' \
    --limit '94' \
    --offset '19' \
    --sortBy '["namespace:desc", "rewardCode"]' \
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
    --rewardId 'l2N8wkybqXnwYJD7' \
    > test.out 2>&1
eval_tap $? 173 'GetReward' test.out

#- 174 UpdateReward
samples/cli/sample-apps Platform updateReward \
    --namespace $AB_NAMESPACE \
    --rewardId 'Mbm5Mz0eDZgdwFpc' \
    --body '{"description": "DyYUMCnSmrEfV0XL", "eventTopic": "2AxLrt1UyGroumLq", "maxAwarded": 25, "maxAwardedPerUser": 14, "namespaceExpression": "vmWGEF3JsrsPvubC", "rewardCode": "oqcEhGHNdROODjQ9", "rewardConditions": [{"condition": "SQSOkd8QyY6fv8ML", "conditionName": "3jqxgs854xNoiTnc", "eventName": "T8nr8wFobpxen9hK", "rewardItems": [{"duration": 25, "endDate": "1980-08-05T00:00:00Z", "identityType": "ITEM_ID", "itemId": "e3YQsxercCdPStUv", "quantity": 78, "sku": "jOOiRxzZNsTwBe1x"}, {"duration": 93, "endDate": "1985-03-12T00:00:00Z", "identityType": "ITEM_ID", "itemId": "VGGNklJSpo9H0Ojb", "quantity": 29, "sku": "sWVQa7VJUVaJ8nnc"}, {"duration": 40, "endDate": "1977-02-18T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "i2FSmuRYkvmQdziy", "quantity": 89, "sku": "OPTGxiO13GI0PFHJ"}]}, {"condition": "rhLF1fCgbm5XIA7p", "conditionName": "TTRols88tK9xUiNs", "eventName": "2vVd3uJfoB7HfuIr", "rewardItems": [{"duration": 73, "endDate": "1980-02-25T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "sGnn2mhlx9XNF74Q", "quantity": 81, "sku": "PkUNSoCizXj4WAyx"}, {"duration": 6, "endDate": "1997-05-02T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "PGn9bEcdUgAsJ6x5", "quantity": 56, "sku": "ehDZm5RUZoH3H230"}, {"duration": 55, "endDate": "1978-04-06T00:00:00Z", "identityType": "ITEM_ID", "itemId": "SFNGzwYRfa9COAIh", "quantity": 26, "sku": "k4TyTFyhOLXRpvzo"}]}, {"condition": "Mx7LrZye15oMxB0d", "conditionName": "QqwDdCo6K3JDRt4F", "eventName": "FIbUfOPr6G82hc8o", "rewardItems": [{"duration": 67, "endDate": "1980-11-29T00:00:00Z", "identityType": "ITEM_ID", "itemId": "81DchVJAWgRbZ7W3", "quantity": 3, "sku": "otMYhJWOBVu9zW5n"}, {"duration": 24, "endDate": "1987-12-26T00:00:00Z", "identityType": "ITEM_ID", "itemId": "1ouN0S5R9uNZx0Rr", "quantity": 78, "sku": "6t15FdvXuPRJ92tF"}, {"duration": 95, "endDate": "1981-01-05T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "rnN97GyVimpNCoJh", "quantity": 45, "sku": "nrb5vUHajqmeH6qP"}]}], "userIdExpression": "or6sa94AbM6CONzo"}' \
    > test.out 2>&1
eval_tap $? 174 'UpdateReward' test.out

#- 175 DeleteReward
samples/cli/sample-apps Platform deleteReward \
    --namespace $AB_NAMESPACE \
    --rewardId 'LOzq6MOwIz1F8s7q' \
    > test.out 2>&1
eval_tap $? 175 'DeleteReward' test.out

#- 176 CheckEventCondition
samples/cli/sample-apps Platform checkEventCondition \
    --namespace $AB_NAMESPACE \
    --rewardId 'UWoSAHQflrN9XQFo' \
    --body '{"payload": {"VueUAcUq2wSDBG6C": {}, "AAEVPGWnbksXw3ZO": {}, "4PEvAtQrgkcJLCxv": {}}}' \
    > test.out 2>&1
eval_tap $? 176 'CheckEventCondition' test.out

#- 177 DeleteRewardConditionRecord
samples/cli/sample-apps Platform deleteRewardConditionRecord \
    --namespace $AB_NAMESPACE \
    --rewardId 'riXs11sDAMWfmfaD' \
    --body '{"conditionName": "uTLq2yg32bcUHctD", "userId": "bQu2rditv3NfMoXt"}' \
    > test.out 2>&1
eval_tap $? 177 'DeleteRewardConditionRecord' test.out

#- 178 QuerySections
samples/cli/sample-apps Platform querySections \
    --namespace $AB_NAMESPACE \
    --end 'bCV6BbCafOfobty0' \
    --limit '52' \
    --offset '27' \
    --start 's7Xv0C37wTMRt5as' \
    --storeId '92fQpU9LFX5PNbvx' \
    --viewId 'GcECRf6Sjf22tD3F' \
    > test.out 2>&1
eval_tap $? 178 'QuerySections' test.out

#- 179 CreateSection
samples/cli/sample-apps Platform createSection \
    --namespace $AB_NAMESPACE \
    --storeId 'q3f3GAD3c0hB46xU' \
    --body '{"active": false, "displayOrder": 8, "endDate": "1995-05-02T00:00:00Z", "ext": {"iBMYJOgv0gPguINV": {}, "GpoaycSmiODJyiPg": {}, "SSUZ1Yj4E4UFWEDJ": {}}, "fixedPeriodRotationConfig": {"backfillType": "NONE", "duration": 71, "itemCount": 95, "rule": "SEQUENCE"}, "items": [{"id": "h8shNkIYCw9S6SbG", "sku": "BG5t7e6C6v9J2iaC"}, {"id": "ZUYYoc7ttmmZx8Oh", "sku": "JmBsFdKMDteRRcev"}, {"id": "mEL9kxsuNpF2IdzM", "sku": "7otNoEp9S3mKfxYD"}], "localizations": {"lpAOVHZ3VKBYRDGP": {"description": "jgJWZGQ6heSNZHm2", "localExt": {"UOFw9PyzLunqYC5U": {}, "ZD8Vh4ezoyX1qDC9": {}, "nWwMf9pRUGcthraj": {}}, "longDescription": "O0tbK0mq6UjSJzLH", "title": "AdggtfjXmPwM2tnB"}, "B1xMZljlDm3adfIw": {"description": "FTCPgnptZyTWC2dP", "localExt": {"IL9weiZMSWOwgmdj": {}, "2cAEPF3lxbgXAWGv": {}, "r6ZDT2MptidLRoCm": {}}, "longDescription": "63V8LxuO3o4DgN25", "title": "orEGpdBTlx9b5kMg"}, "7MhdpnLVMfXMuUXp": {"description": "vdr5XnFjISU7OJnE", "localExt": {"Md1anRXgr8BRTEw1": {}, "8wRdIQrbl5tAYXAw": {}, "kraIVTtToignsPDe": {}}, "longDescription": "FVD63uJtCX1B4AQy", "title": "7Y9YhaDRXqPNsvaM"}}, "name": "OH42KifuSgxk57UB", "rotationType": "FIXED_PERIOD", "startDate": "1992-07-12T00:00:00Z", "viewId": "Q8AHMVcwqKaWMGoZ"}' \
    > test.out 2>&1
eval_tap $? 179 'CreateSection' test.out

#- 180 PurgeExpiredSection
samples/cli/sample-apps Platform purgeExpiredSection \
    --namespace $AB_NAMESPACE \
    --storeId 'v5FnyuFiCv3QS4eS' \
    > test.out 2>&1
eval_tap $? 180 'PurgeExpiredSection' test.out

#- 181 GetSection
samples/cli/sample-apps Platform getSection \
    --namespace $AB_NAMESPACE \
    --sectionId 'GaadbNKzJdYwrU7a' \
    --storeId '4IOUwU1TbRNwH540' \
    > test.out 2>&1
eval_tap $? 181 'GetSection' test.out

#- 182 UpdateSection
samples/cli/sample-apps Platform updateSection \
    --namespace $AB_NAMESPACE \
    --sectionId 'YLHlzEO94O3Wxhu2' \
    --storeId 'XPmZtWp6zkn28l8x' \
    --body '{"active": true, "displayOrder": 53, "endDate": "1971-08-09T00:00:00Z", "ext": {"eD9vuDcbuQf7dxUM": {}, "UASG1Azvc33Pul5u": {}, "pWGBLlzPsdjKyE4k": {}}, "fixedPeriodRotationConfig": {"backfillType": "CUSTOM", "duration": 63, "itemCount": 73, "rule": "SEQUENCE"}, "items": [{"id": "SboqiV95dUEdU6L1", "sku": "WrgPIx0a8D9Mokfh"}, {"id": "wEd7aMgPqOzHG3yP", "sku": "g0u0X0OraChvqv4v"}, {"id": "N4XyHoQPJU11nu7n", "sku": "V9KISgLCsfzPicqp"}], "localizations": {"ifKltY9klrW1rq9F": {"description": "FMfidbrr6AdEEMnf", "localExt": {"aALssiWwECDMToDe": {}, "mOvWlT80JDhfmkv9": {}, "IaI8rWdH7wBDfjxF": {}}, "longDescription": "ycSXPyf1lufomZPY", "title": "iyiwPpLkTODp5DPn"}, "VGYGjBwLzMTstpf5": {"description": "oBMQ31Ye67EORHcn", "localExt": {"kR8z38yfL2uE7jba": {}, "jVgL5Ci8CFFspbeA": {}, "EfXTOAnyHutHffo0": {}}, "longDescription": "X0CLrUeUO6vVXbnZ", "title": "bkgMB3VH4RJGF7Zn"}, "Z5aQviN7FYW0dh5g": {"description": "rPWftYM9pCSssmQv", "localExt": {"U48mCYllZVcVhmRw": {}, "O9skQioEWlm5Brz2": {}, "Jnfa3FMgXEUSw381": {}}, "longDescription": "UhhXPfkgJbHuQXM3", "title": "nrTJMc68RvXP0O1I"}}, "name": "rh0T7jfSbYNcPXOg", "rotationType": "FIXED_PERIOD", "startDate": "1995-08-09T00:00:00Z", "viewId": "To1shZg0srTXJoMd"}' \
    > test.out 2>&1
eval_tap $? 182 'UpdateSection' test.out

#- 183 DeleteSection
samples/cli/sample-apps Platform deleteSection \
    --namespace $AB_NAMESPACE \
    --sectionId 'Wdg1a7IgfOrVPZDL' \
    --storeId 'jSDVJUcqk0J2u2eq' \
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
    --body '{"defaultLanguage": "NhmEiopTUImrZpI6", "defaultRegion": "BncmFLZZm8XvZWdW", "description": "66Hpf0RvT3m0n3Ci", "supportedLanguages": ["MUBPpOcuELjBZSmM", "X0qpS3HfiPa1pqHE", "4tdmltSSKvyObA3J"], "supportedRegions": ["oM1mXszEJSacMPVx", "XH80L0OyE0NlrKsB", "iJhcMyTJOIR88AJk"], "title": "7zZQAMtuP86BLe1j"}' \
    > test.out 2>&1
eval_tap $? 185 'CreateStore' test.out

#- 186 GetCatalogDefinition
samples/cli/sample-apps Platform getCatalogDefinition \
    --namespace $AB_NAMESPACE \
    --catalogType 'CATEGORY' \
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
    --body '{"catalogType": "APP", "fieldsToBeIncluded": ["VtiXWJzZPkruGTLZ", "7aEQaINJP4YabuHs", "5unDqW51QrkEYxZw"], "idsToBeExported": ["57wQeo9RsnGEhiXG", "KnxyXoeiEN3mMQH9", "JfuAIbif2sq6KR42"], "storeId": "Ibcxv0vE0A7Z2q7n"}' \
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
    --storeId 'Mmr087RlE7G7JvXm' \
    > test.out 2>&1
eval_tap $? 194 'GetStore' test.out

#- 195 UpdateStore
samples/cli/sample-apps Platform updateStore \
    --namespace $AB_NAMESPACE \
    --storeId 'YKpN9TEczy8wzt2k' \
    --body '{"defaultLanguage": "omdbeDevwnffHWTf", "defaultRegion": "ouw4rYJDN64bcLgJ", "description": "zbbZrIwEz5mvHQnD", "supportedLanguages": ["kTJAKt7t77jr0Nml", "gvKQJ9S8jvyDG7HR", "iHxmokqCB6WdkgRd"], "supportedRegions": ["m8UY4XsGP0BGAO80", "cj74Rqq1TJGW1jdL", "hyp99DDaP59YMVBa"], "title": "ZAGMZ49Wy4e31KIS"}' \
    > test.out 2>&1
eval_tap $? 195 'UpdateStore' test.out

#- 196 DeleteStore
samples/cli/sample-apps Platform deleteStore \
    --namespace $AB_NAMESPACE \
    --storeId 'dJ1h09ZtHxkZ2rUy' \
    > test.out 2>&1
eval_tap $? 196 'DeleteStore' test.out

#- 197 QueryChanges
samples/cli/sample-apps Platform queryChanges \
    --namespace $AB_NAMESPACE \
    --storeId '1aF2ZgT76URkMlit' \
    --action 'CREATE' \
    --itemSku '9651TmrxbcONWMFJ' \
    --itemType 'COINS' \
    --limit '51' \
    --offset '83' \
    --selected 'false' \
    --sortBy '["updatedAt:desc", "createdAt:asc"]' \
    --status 'UNPUBLISHED' \
    --type 'ITEM' \
    --updatedAtEnd 'lzAdzQOsNvo7oxi2' \
    --updatedAtStart 'BQKZA4fOkC8sqyuu' \
    --withTotal 'true' \
    > test.out 2>&1
eval_tap $? 197 'QueryChanges' test.out

#- 198 PublishAll
samples/cli/sample-apps Platform publishAll \
    --namespace $AB_NAMESPACE \
    --storeId 'LQ6DY2Wh3DTjB92T' \
    > test.out 2>&1
eval_tap $? 198 'PublishAll' test.out

#- 199 PublishSelected
samples/cli/sample-apps Platform publishSelected \
    --namespace $AB_NAMESPACE \
    --storeId 'Xpb0xfqjDmF8SW7t' \
    > test.out 2>&1
eval_tap $? 199 'PublishSelected' test.out

#- 200 SelectAllRecords
samples/cli/sample-apps Platform selectAllRecords \
    --namespace $AB_NAMESPACE \
    --storeId 'oIE5weB5NedGXdXW' \
    > test.out 2>&1
eval_tap $? 200 'SelectAllRecords' test.out

#- 201 SelectAllRecordsByCriteria
samples/cli/sample-apps Platform selectAllRecordsByCriteria \
    --namespace $AB_NAMESPACE \
    --storeId 'bbvQB2dUNrN1IHbr' \
    --action 'CREATE' \
    --itemSku 'Os1C4gHNwM1IcH6V' \
    --itemType 'EXTENSION' \
    --selected 'false' \
    --type 'SECTION' \
    --updatedAtEnd 'IXpjcSqp6YsxG0MW' \
    --updatedAtStart 'YqyzOedXxmQmvIKf' \
    > test.out 2>&1
eval_tap $? 201 'SelectAllRecordsByCriteria' test.out

#- 202 GetStatistic
samples/cli/sample-apps Platform getStatistic \
    --namespace $AB_NAMESPACE \
    --storeId 'hGKWLEocUo2CL75h' \
    --action 'CREATE' \
    --itemSku 'LFuGhpYikgzrfBLe' \
    --itemType 'APP' \
    --type 'CATEGORY' \
    --updatedAtEnd 'riwW1aRZfwyB2WJ3' \
    --updatedAtStart 'OcWdFwvt9Te6tKbm' \
    > test.out 2>&1
eval_tap $? 202 'GetStatistic' test.out

#- 203 UnselectAllRecords
samples/cli/sample-apps Platform unselectAllRecords \
    --namespace $AB_NAMESPACE \
    --storeId 'oqeWp9MEYbTt3GKY' \
    > test.out 2>&1
eval_tap $? 203 'UnselectAllRecords' test.out

#- 204 SelectRecord
samples/cli/sample-apps Platform selectRecord \
    --changeId 'xnmtSRQC0blto2Vs' \
    --namespace $AB_NAMESPACE \
    --storeId 'vXbGfgkv7PW7m3ww' \
    > test.out 2>&1
eval_tap $? 204 'SelectRecord' test.out

#- 205 UnselectRecord
samples/cli/sample-apps Platform unselectRecord \
    --changeId 'bhXyky8gRsAZpUKA' \
    --namespace $AB_NAMESPACE \
    --storeId 'wf4ylZBCadMKVuJc' \
    > test.out 2>&1
eval_tap $? 205 'UnselectRecord' test.out

#- 206 CloneStore
samples/cli/sample-apps Platform cloneStore \
    --namespace $AB_NAMESPACE \
    --storeId 'mdC4YPCiJv2RDgnI' \
    --targetStoreId 'XKWQ0NQWQZ6gXzoq' \
    > test.out 2>&1
eval_tap $? 206 'CloneStore' test.out

#- 207 ExportStore
eval_tap 0 207 'ExportStore # SKIP deprecated' test.out

#- 208 QueryImportHistory
samples/cli/sample-apps Platform queryImportHistory \
    --namespace $AB_NAMESPACE \
    --storeId 'FZNsi208rJMX6uSR' \
    --end 'VyAybo76CGAVQII4' \
    --limit '22' \
    --offset '48' \
    --sortBy 'dCDD4qbCg66JAhoe' \
    --start 'e1oIyzyKE334iVyA' \
    --success 'false' \
    > test.out 2>&1
eval_tap $? 208 'QueryImportHistory' test.out

#- 209 ImportStoreByCSV
samples/cli/sample-apps Platform importStoreByCSV \
    --namespace $AB_NAMESPACE \
    --storeId 'uHaTna5g2O9iEkKR' \
    --category 'tmp.dat' \
    --display 'tmp.dat' \
    --item 'tmp.dat' \
    --notes '83S1fUYXTBl5E7jZ' \
    --section 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 209 'ImportStoreByCSV' test.out

#- 210 QuerySubscriptions
samples/cli/sample-apps Platform querySubscriptions \
    --namespace $AB_NAMESPACE \
    --chargeStatus 'SETUP' \
    --itemId 'wgAciTw2U82xuEYb' \
    --limit '4' \
    --offset '65' \
    --sku '0LQMts7k2z92H6KV' \
    --status 'CANCELLED' \
    --subscribedBy 'USER' \
    --userId 'Wln2QD6fswfWNG6m' \
    > test.out 2>&1
eval_tap $? 210 'QuerySubscriptions' test.out

#- 211 RecurringChargeSubscription
samples/cli/sample-apps Platform recurringChargeSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'V0FpTetzYBfOnlRl' \
    > test.out 2>&1
eval_tap $? 211 'RecurringChargeSubscription' test.out

#- 212 GetTicketDynamic
samples/cli/sample-apps Platform getTicketDynamic \
    --boothName 'r30hX9WZUuTB3Wb0' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 212 'GetTicketDynamic' test.out

#- 213 DecreaseTicketSale
samples/cli/sample-apps Platform decreaseTicketSale \
    --boothName 'ok3opgwvQd3sF7ot' \
    --namespace $AB_NAMESPACE \
    --body '{"orderNo": "11s8Da6vSFu9oyut"}' \
    > test.out 2>&1
eval_tap $? 213 'DecreaseTicketSale' test.out

#- 214 GetTicketBoothID
samples/cli/sample-apps Platform getTicketBoothID \
    --boothName 'ItPCWDE3ytIvWnwY' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 214 'GetTicketBoothID' test.out

#- 215 IncreaseTicketSale
samples/cli/sample-apps Platform increaseTicketSale \
    --boothName '9RNx4YF2yDkUFBdn' \
    --namespace $AB_NAMESPACE \
    --body '{"count": 59, "orderNo": "OltUHMPJVWVy3oq1"}' \
    > test.out 2>&1
eval_tap $? 215 'IncreaseTicketSale' test.out

#- 216 Commit
samples/cli/sample-apps Platform commit \
    --namespace $AB_NAMESPACE \
    --body '{"actions": [{"operations": [{"creditPayload": {"balanceOrigin": "Other", "count": 80, "currencyCode": "roWcZcyTsSbaKmnX", "expireAt": "1993-10-21T00:00:00Z"}, "debitPayload": {"count": 8, "currencyCode": "7OYfttERzOdDyieQ", "walletPlatform": "Steam"}, "fulFillItemPayload": {"count": 45, "entitlementCollectionId": "NPrdLUN5LRDLlSyP", "entitlementOrigin": "System", "itemIdentity": "HfEsctDsrLG4mZS4", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 1, "entitlementId": "Gs1W0yDMnKAZCyaS"}, "type": "FULFILL_ITEM"}, {"creditPayload": {"balanceOrigin": "Nintendo", "count": 96, "currencyCode": "9crYacaYyYPMVVy1", "expireAt": "1987-02-16T00:00:00Z"}, "debitPayload": {"count": 74, "currencyCode": "lqLnfQxjRg18bLD9", "walletPlatform": "Nintendo"}, "fulFillItemPayload": {"count": 22, "entitlementCollectionId": "jw8aDORS9TRDAMZy", "entitlementOrigin": "Xbox", "itemIdentity": "9W7F1UDiroB7shZJ", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 84, "entitlementId": "f0nNI4O16G2VHP1D"}, "type": "REVOKE_ENTITLEMENT"}, {"creditPayload": {"balanceOrigin": "Epic", "count": 13, "currencyCode": "k4hr9ir5IoyvDuQp", "expireAt": "1978-09-01T00:00:00Z"}, "debitPayload": {"count": 55, "currencyCode": "M251r9s3oX80PWRa", "walletPlatform": "Epic"}, "fulFillItemPayload": {"count": 31, "entitlementCollectionId": "lxN355SWHZGbYkQK", "entitlementOrigin": "System", "itemIdentity": "1pGx7sOCxYq2p8fp", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 50, "entitlementId": "5FNnFf0GErytc9V2"}, "type": "FULFILL_ITEM"}], "userId": "gjhH0G0uNPk0StHG"}, {"operations": [{"creditPayload": {"balanceOrigin": "Playstation", "count": 13, "currencyCode": "kqMqFKiGcxae6O6Q", "expireAt": "1984-12-29T00:00:00Z"}, "debitPayload": {"count": 35, "currencyCode": "qHG82BK3waaRlmta", "walletPlatform": "Xbox"}, "fulFillItemPayload": {"count": 54, "entitlementCollectionId": "SbfEzvbKHbOGA5GL", "entitlementOrigin": "Steam", "itemIdentity": "CSyY9HHsor9DyRRk", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 31, "entitlementId": "ymq54pihlGDs1uoB"}, "type": "DEBIT_WALLET"}, {"creditPayload": {"balanceOrigin": "Epic", "count": 62, "currencyCode": "pEshYDwYYXwlFEgh", "expireAt": "1991-05-31T00:00:00Z"}, "debitPayload": {"count": 66, "currencyCode": "lT8ZrkV9fM6a1kXG", "walletPlatform": "Xbox"}, "fulFillItemPayload": {"count": 94, "entitlementCollectionId": "RyoDvm0a2KKzLWAR", "entitlementOrigin": "Steam", "itemIdentity": "LVDBBO80Dg25Enxv", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 15, "entitlementId": "lHDIw4UsothJ8J0N"}, "type": "DEBIT_WALLET"}, {"creditPayload": {"balanceOrigin": "Playstation", "count": 0, "currencyCode": "EOcCyCkPjXD5i9mJ", "expireAt": "1974-09-30T00:00:00Z"}, "debitPayload": {"count": 71, "currencyCode": "Vw8Ggwb8tlVD1N2h", "walletPlatform": "Oculus"}, "fulFillItemPayload": {"count": 59, "entitlementCollectionId": "o3S6vdVarx8AjazI", "entitlementOrigin": "IOS", "itemIdentity": "i9G33DJ5FINtqFgt", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 68, "entitlementId": "c1xCfUoeixSP1jZl"}, "type": "FULFILL_ITEM"}], "userId": "WkvseDPuUJ6VWuNG"}, {"operations": [{"creditPayload": {"balanceOrigin": "IOS", "count": 63, "currencyCode": "6wOqpaZkxtzeTk3F", "expireAt": "1989-06-04T00:00:00Z"}, "debitPayload": {"count": 2, "currencyCode": "9GwEubb31K20KhT2", "walletPlatform": "Epic"}, "fulFillItemPayload": {"count": 83, "entitlementCollectionId": "9Xc5iW3WmKmcDELP", "entitlementOrigin": "IOS", "itemIdentity": "BRovrNc1PXrDmZJ0", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 37, "entitlementId": "UvxzuCAhnFzdKCY0"}, "type": "DEBIT_WALLET"}, {"creditPayload": {"balanceOrigin": "Steam", "count": 67, "currencyCode": "eW7vDN92BDoUl9fj", "expireAt": "1988-08-05T00:00:00Z"}, "debitPayload": {"count": 97, "currencyCode": "VhnQACc0wFuY4nwL", "walletPlatform": "Playstation"}, "fulFillItemPayload": {"count": 58, "entitlementCollectionId": "nd7JHyOnH7Fj7w2N", "entitlementOrigin": "Nintendo", "itemIdentity": "QZxK2CtZWwMsCrMi", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 7, "entitlementId": "RMPnNqWYoD3mqqSS"}, "type": "CREDIT_WALLET"}, {"creditPayload": {"balanceOrigin": "System", "count": 84, "currencyCode": "JrVwMxwsyeCJbHDe", "expireAt": "1989-04-18T00:00:00Z"}, "debitPayload": {"count": 89, "currencyCode": "wzBZFGli3561fbMt", "walletPlatform": "Steam"}, "fulFillItemPayload": {"count": 4, "entitlementCollectionId": "WB48BP65gVWvOAQT", "entitlementOrigin": "Twitch", "itemIdentity": "pqtb9jjoLIJUoK7O", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 54, "entitlementId": "X4pRrBeub2RV5D7a"}, "type": "FULFILL_ITEM"}], "userId": "hCx3Ir000KHaB5pP"}], "metadata": {"3FY7hRYi76KkGy3u": {}, "1QsKPytgqn7oj2D2": {}, "OfB9FhgJ06VgpfxY": {}}, "needPreCheck": true, "transactionId": "hvSe7bfsqK9vayCP", "type": "bB8EvkqUf4Wg6wIb"}' \
    > test.out 2>&1
eval_tap $? 216 'Commit' test.out

#- 217 GetTradeHistoryByCriteria
samples/cli/sample-apps Platform getTradeHistoryByCriteria \
    --namespace $AB_NAMESPACE \
    --limit '12' \
    --offset '56' \
    --status 'SUCCESS' \
    --type 'EopgP44PBCizzm9Y' \
    --userId 'cv6cHBYo4newDtOi' \
    > test.out 2>&1
eval_tap $? 217 'GetTradeHistoryByCriteria' test.out

#- 218 GetTradeHistoryByTransactionId
samples/cli/sample-apps Platform getTradeHistoryByTransactionId \
    --namespace $AB_NAMESPACE \
    --transactionId 'I9Kh1Bf1v8UPuboE' \
    > test.out 2>&1
eval_tap $? 218 'GetTradeHistoryByTransactionId' test.out

#- 219 UnlockSteamUserAchievement
samples/cli/sample-apps Platform unlockSteamUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'V212XJFWQrrOSJF1' \
    --body '{"achievements": [{"id": "Ow1DyVzpZS8rx7hV", "value": 54}, {"id": "7X3wRO6DZ4WM5cYn", "value": 77}, {"id": "qHFCajQqpGx4w0eN", "value": 82}], "steamUserId": "ntPMpTIc63rmMB1A"}' \
    > test.out 2>&1
eval_tap $? 219 'UnlockSteamUserAchievement' test.out

#- 220 GetXblUserAchievements
samples/cli/sample-apps Platform getXblUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId 'rzbWiLsRymWEBXRf' \
    --xboxUserId 'Jj45rtM2bQPR5mcR' \
    > test.out 2>&1
eval_tap $? 220 'GetXblUserAchievements' test.out

#- 221 UpdateXblUserAchievement
samples/cli/sample-apps Platform updateXblUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'IrqUuQCY7l2sGjvX' \
    --body '{"achievements": [{"id": "hUShjSetEVMf3RCd", "percentComplete": 57}, {"id": "0XhOjujI9uWY4yLf", "percentComplete": 73}, {"id": "3RCrOQbfAbExtsYT", "percentComplete": 66}], "serviceConfigId": "owIufXbWrqP557DS", "titleId": "Qn2RF9NFQUXTa8wp", "xboxUserId": "huXmlx4jnKijoRQe"}' \
    > test.out 2>&1
eval_tap $? 221 'UpdateXblUserAchievement' test.out

#- 222 AnonymizeCampaign
samples/cli/sample-apps Platform anonymizeCampaign \
    --namespace $AB_NAMESPACE \
    --userId 'B4hd2RP7Ivy7J4Lo' \
    > test.out 2>&1
eval_tap $? 222 'AnonymizeCampaign' test.out

#- 223 AnonymizeEntitlement
samples/cli/sample-apps Platform anonymizeEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'VxSd2M2Avf1cuIbl' \
    > test.out 2>&1
eval_tap $? 223 'AnonymizeEntitlement' test.out

#- 224 AnonymizeFulfillment
samples/cli/sample-apps Platform anonymizeFulfillment \
    --namespace $AB_NAMESPACE \
    --userId '5BfrVHJ1avCttyfL' \
    > test.out 2>&1
eval_tap $? 224 'AnonymizeFulfillment' test.out

#- 225 AnonymizeIntegration
samples/cli/sample-apps Platform anonymizeIntegration \
    --namespace $AB_NAMESPACE \
    --userId 'MuuoEeZw07YOdJtc' \
    > test.out 2>&1
eval_tap $? 225 'AnonymizeIntegration' test.out

#- 226 AnonymizeOrder
samples/cli/sample-apps Platform anonymizeOrder \
    --namespace $AB_NAMESPACE \
    --userId 'jOLNtNNLf4ylNk8Q' \
    > test.out 2>&1
eval_tap $? 226 'AnonymizeOrder' test.out

#- 227 AnonymizePayment
samples/cli/sample-apps Platform anonymizePayment \
    --namespace $AB_NAMESPACE \
    --userId 'uktlWyC2g6xwbugj' \
    > test.out 2>&1
eval_tap $? 227 'AnonymizePayment' test.out

#- 228 AnonymizeRevocation
samples/cli/sample-apps Platform anonymizeRevocation \
    --namespace $AB_NAMESPACE \
    --userId 'pqmeT6gm0cKoqBDH' \
    > test.out 2>&1
eval_tap $? 228 'AnonymizeRevocation' test.out

#- 229 AnonymizeSubscription
samples/cli/sample-apps Platform anonymizeSubscription \
    --namespace $AB_NAMESPACE \
    --userId '1Ui2KarzykxsGKgW' \
    > test.out 2>&1
eval_tap $? 229 'AnonymizeSubscription' test.out

#- 230 AnonymizeWallet
samples/cli/sample-apps Platform anonymizeWallet \
    --namespace $AB_NAMESPACE \
    --userId 'ziq2hE6uzpR5blZA' \
    > test.out 2>&1
eval_tap $? 230 'AnonymizeWallet' test.out

#- 231 GetUserDLCByPlatform
samples/cli/sample-apps Platform getUserDLCByPlatform \
    --namespace $AB_NAMESPACE \
    --userId 'kTpdSUAJ8jsD0fF6' \
    --type 'XBOX' \
    > test.out 2>&1
eval_tap $? 231 'GetUserDLCByPlatform' test.out

#- 232 GetUserDLC
samples/cli/sample-apps Platform getUserDLC \
    --namespace $AB_NAMESPACE \
    --userId 'hL7ClPzEGd3Tmc9w' \
    --type 'EPICGAMES' \
    > test.out 2>&1
eval_tap $? 232 'GetUserDLC' test.out

#- 233 QueryUserEntitlements
samples/cli/sample-apps Platform queryUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'vWXr5CN60JY53oY6' \
    --activeOnly 'false' \
    --appType 'GAME' \
    --collectionId 'roKzk9cSUcOFl5mt' \
    --entitlementClazz 'SUBSCRIPTION' \
    --entitlementName 'uMtIBGyxlqx9SPnO' \
    --features '["9pQDVtOYBHAtKklk", "ISN7Nxh3kWnczYXM", "wG9fPnGXcozj3qcd"]' \
    --fuzzyMatchName 'true' \
    --itemId '["Eoqz6E2nLF9BVrMF", "crHyKW7NQdwFKJrf", "xap5GLzhm8zc4nkL"]' \
    --limit '88' \
    --offset '99' \
    --origin 'Other' \
    > test.out 2>&1
eval_tap $? 233 'QueryUserEntitlements' test.out

#- 234 GrantUserEntitlement
samples/cli/sample-apps Platform grantUserEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'g7OezGJpT1jenbTG' \
    --body '[{"collectionId": "mMOz3V8JbXzp7vKq", "endDate": "1994-07-05T00:00:00Z", "grantedCode": "l2tDh8ZAsq2aXVMr", "itemId": "ZHUgVBIU43SOPoK7", "itemNamespace": "cnRvrfOEH7Yshb9b", "language": "DIe_bLAA_845", "origin": "Oculus", "quantity": 98, "region": "xxaqI4iJenKUaYNc", "source": "PROMOTION", "startDate": "1986-03-26T00:00:00Z", "storeId": "rcFE1q6LNc5etzwn"}, {"collectionId": "wTOjEB0xYTaz7UVV", "endDate": "1975-06-25T00:00:00Z", "grantedCode": "p7exg0DIxj9WgMTL", "itemId": "3I4w43t8QGe7uxG1", "itemNamespace": "0CvJR5uprATfl1xV", "language": "czsz_GY", "origin": "System", "quantity": 55, "region": "IqObw5qW3CcEoTyd", "source": "GIFT", "startDate": "1978-09-28T00:00:00Z", "storeId": "BuvW687uNzswzR5C"}, {"collectionId": "tJKY8bo44HOi5yz7", "endDate": "1988-11-01T00:00:00Z", "grantedCode": "rHTmeRxIpU9tW5RF", "itemId": "A5VoIbi5FMpmXBe7", "itemNamespace": "dwylWbTdguokxbDt", "language": "vCm_Vjlx_qh", "origin": "IOS", "quantity": 18, "region": "uL1uPQx1JpAjJAma", "source": "GIFT", "startDate": "1973-07-10T00:00:00Z", "storeId": "kab0afygHGDMpMZT"}]' \
    > test.out 2>&1
eval_tap $? 234 'GrantUserEntitlement' test.out

#- 235 GetUserAppEntitlementByAppId
samples/cli/sample-apps Platform getUserAppEntitlementByAppId \
    --namespace $AB_NAMESPACE \
    --userId '1Ey12HJmF2votWsu' \
    --activeOnly 'true' \
    --appId 'KfgqbLeebTCyZgA2' \
    > test.out 2>&1
eval_tap $? 235 'GetUserAppEntitlementByAppId' test.out

#- 236 QueryUserEntitlementsByAppType
samples/cli/sample-apps Platform queryUserEntitlementsByAppType \
    --namespace $AB_NAMESPACE \
    --userId 'NcmK4gqau4nWqFzv' \
    --activeOnly 'true' \
    --limit '13' \
    --offset '64' \
    --appType 'GAME' \
    > test.out 2>&1
eval_tap $? 236 'QueryUserEntitlementsByAppType' test.out

#- 237 GetUserEntitlementByItemId
samples/cli/sample-apps Platform getUserEntitlementByItemId \
    --namespace $AB_NAMESPACE \
    --userId '710GmhA3RzWfy7vR' \
    --activeOnly 'false' \
    --entitlementClazz 'APP' \
    --platform 'SoakxXt7Kp9hZjyI' \
    --itemId 'e8L6VgPni2vwoWWR' \
    > test.out 2>&1
eval_tap $? 237 'GetUserEntitlementByItemId' test.out

#- 238 GetUserActiveEntitlementsByItemIds
samples/cli/sample-apps Platform getUserActiveEntitlementsByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'Kz5o7gm01GTzSuNP' \
    --ids '["tzjTv7T5h6eEJuGL", "PkOdThdh1GA32cup", "9xxFoTL5Uoypb6cC"]' \
    --platform 'TGlPqEGEsmEr3huK' \
    > test.out 2>&1
eval_tap $? 238 'GetUserActiveEntitlementsByItemIds' test.out

#- 239 GetUserEntitlementBySku
samples/cli/sample-apps Platform getUserEntitlementBySku \
    --namespace $AB_NAMESPACE \
    --userId 'TRF0y8N3AdMV2n47' \
    --activeOnly 'false' \
    --entitlementClazz 'SUBSCRIPTION' \
    --platform 'i5GFUJeSK8xoFWqY' \
    --sku 'C2WKpMXm8MGclIH3' \
    > test.out 2>&1
eval_tap $? 239 'GetUserEntitlementBySku' test.out

#- 240 ExistsAnyUserActiveEntitlement
samples/cli/sample-apps Platform existsAnyUserActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'Gwe65Z3MdFfld7DY' \
    --appIds '["tusvmJzO2kA81QdZ", "8zIj0sl35pLpVHp1", "spb72UVZQofnpifY"]' \
    --itemIds '["CVE4aXlBHfeIjyZT", "Q6oyUT44pOJaO8c9", "Uf4hxYGKkayQk3ff"]' \
    --platform 'hU0Uzw03PRcWkx4v' \
    --skus '["qY6BdyrVGv8rz2Eq", "jnsaRyElvtJLgqKG", "QC8srcaC5uiBPMGa"]' \
    > test.out 2>&1
eval_tap $? 240 'ExistsAnyUserActiveEntitlement' test.out

#- 241 ExistsAnyUserActiveEntitlementByItemIds
samples/cli/sample-apps Platform existsAnyUserActiveEntitlementByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'WHDZDYGTEm4pXsDN' \
    --platform 'PQLwTYY063rap0Zg' \
    --itemIds '["Y83oQ9qVmy4gb8uQ", "AkU7fDnAQPDCy96g", "UpKclLGEb4CDs2EI"]' \
    > test.out 2>&1
eval_tap $? 241 'ExistsAnyUserActiveEntitlementByItemIds' test.out

#- 242 GetUserAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform getUserAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'XLHBBHXYcj5VAljJ' \
    --appId '2me1Y6YL6PKubQIz' \
    > test.out 2>&1
eval_tap $? 242 'GetUserAppEntitlementOwnershipByAppId' test.out

#- 243 GetUserEntitlementOwnershipByItemId
samples/cli/sample-apps Platform getUserEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'QKEAUDhxpym29Y4n' \
    --entitlementClazz 'CODE' \
    --platform 'MdPJ9nO4frKdLv2U' \
    --itemId 'xnzdrA8f44accxpv' \
    > test.out 2>&1
eval_tap $? 243 'GetUserEntitlementOwnershipByItemId' test.out

#- 244 GetUserEntitlementOwnershipByItemIds
samples/cli/sample-apps Platform getUserEntitlementOwnershipByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'eHAFv6Te49fjwTMS' \
    --ids '["v9F7gHJ76cy0Tt5U", "hogyRSP34FWoAaVE", "MuNy7PUc4QTle90M"]' \
    --platform '6pbSCNdJmcw76G2E' \
    > test.out 2>&1
eval_tap $? 244 'GetUserEntitlementOwnershipByItemIds' test.out

#- 245 GetUserEntitlementOwnershipBySku
samples/cli/sample-apps Platform getUserEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --userId 'TDdQMVtmjTLug6QW' \
    --entitlementClazz 'MEDIA' \
    --platform '6qWl0aIt66f7uuzP' \
    --sku 'QZ576gzScKZPDxR3' \
    > test.out 2>&1
eval_tap $? 245 'GetUserEntitlementOwnershipBySku' test.out

#- 246 RevokeAllEntitlements
samples/cli/sample-apps Platform revokeAllEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'Fv7uuitER1cloUoc' \
    > test.out 2>&1
eval_tap $? 246 'RevokeAllEntitlements' test.out

#- 247 RevokeUserEntitlements
samples/cli/sample-apps Platform revokeUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 't6RWBforfhMkdwzF' \
    --entitlementIds 'R5bK4kkIr1SqMfKb' \
    > test.out 2>&1
eval_tap $? 247 'RevokeUserEntitlements' test.out

#- 248 GetUserEntitlement
samples/cli/sample-apps Platform getUserEntitlement \
    --entitlementId 'hErAXNUmFgmkp7pv' \
    --namespace $AB_NAMESPACE \
    --userId 'qF9UmoX4ZSrGb9NF' \
    > test.out 2>&1
eval_tap $? 248 'GetUserEntitlement' test.out

#- 249 UpdateUserEntitlement
samples/cli/sample-apps Platform updateUserEntitlement \
    --entitlementId 'DCNwyB63Fk7MGTDZ' \
    --namespace $AB_NAMESPACE \
    --userId 'mgi69kuMAgT65de5' \
    --body '{"collectionId": "J5D0P5NKbtW8GksG", "endDate": "1992-08-09T00:00:00Z", "nullFieldList": ["O3UbEAJZGdEXSwKl", "b37mBxe4JLcAI232", "OniP0KyB0yIYq4dp"], "origin": "Steam", "reason": "LEHZH3ILnUqyWEXV", "startDate": "1997-03-10T00:00:00Z", "status": "REVOKED", "useCount": 10}' \
    > test.out 2>&1
eval_tap $? 249 'UpdateUserEntitlement' test.out

#- 250 ConsumeUserEntitlement
samples/cli/sample-apps Platform consumeUserEntitlement \
    --entitlementId 'MSO0ohHlkOlvSTVR' \
    --namespace $AB_NAMESPACE \
    --userId 't2264sOGVQ37folU' \
    --body '{"options": ["HPYMQsIEo0puq9cf", "IbmR5mGl9PqqDVZR", "PuUhCOC113K3B48J"], "platform": "L5FjbRb4G7wfQuJY", "requestId": "w0O1go7TlCsCWy28", "useCount": 92}' \
    > test.out 2>&1
eval_tap $? 250 'ConsumeUserEntitlement' test.out

#- 251 DisableUserEntitlement
samples/cli/sample-apps Platform disableUserEntitlement \
    --entitlementId 'UBZGiMpUJMPdWD5r' \
    --namespace $AB_NAMESPACE \
    --userId 'HWTZ4v1h3fiQt4eP' \
    > test.out 2>&1
eval_tap $? 251 'DisableUserEntitlement' test.out

#- 252 EnableUserEntitlement
samples/cli/sample-apps Platform enableUserEntitlement \
    --entitlementId 'fsw92wir6J0HrBTU' \
    --namespace $AB_NAMESPACE \
    --userId 'eItuvqlT0fEB4QQh' \
    > test.out 2>&1
eval_tap $? 252 'EnableUserEntitlement' test.out

#- 253 GetUserEntitlementHistories
samples/cli/sample-apps Platform getUserEntitlementHistories \
    --entitlementId 'CedYyQulpDfcxOju' \
    --namespace $AB_NAMESPACE \
    --userId 'xnGv52PzT5gRnSj8' \
    > test.out 2>&1
eval_tap $? 253 'GetUserEntitlementHistories' test.out

#- 254 RevokeUserEntitlement
samples/cli/sample-apps Platform revokeUserEntitlement \
    --entitlementId 'EYmi0qQ01Ah8mOGD' \
    --namespace $AB_NAMESPACE \
    --userId 'TP2qW1fPjYcMkgbK' \
    > test.out 2>&1
eval_tap $? 254 'RevokeUserEntitlement' test.out

#- 255 RevokeUserEntitlementByUseCount
samples/cli/sample-apps Platform revokeUserEntitlementByUseCount \
    --entitlementId '1w6qEJMSkvULbn9G' \
    --namespace $AB_NAMESPACE \
    --userId 'om8Rc0vLvtXO2UYk' \
    --body '{"reason": "XsKDth1SWbWnvXIO", "useCount": 16}' \
    > test.out 2>&1
eval_tap $? 255 'RevokeUserEntitlementByUseCount' test.out

#- 256 PreCheckRevokeUserEntitlementByUseCount
samples/cli/sample-apps Platform preCheckRevokeUserEntitlementByUseCount \
    --entitlementId 'LgtX2k2vu5m2bdL2' \
    --namespace $AB_NAMESPACE \
    --userId 'I1kWRf169WpA7Bma' \
    --quantity '57' \
    > test.out 2>&1
eval_tap $? 256 'PreCheckRevokeUserEntitlementByUseCount' test.out

#- 257 RevokeUseCount
eval_tap 0 257 'RevokeUseCount # SKIP deprecated' test.out

#- 258 SellUserEntitlement
samples/cli/sample-apps Platform sellUserEntitlement \
    --entitlementId 'dl1Waqc3Jcb0TRVQ' \
    --namespace $AB_NAMESPACE \
    --userId '5KYdbXJRx66NSkP4' \
    --body '{"platform": "IUsbXvbGGP2uoCWi", "requestId": "E6uPprDFDOJqbAEQ", "useCount": 6}' \
    > test.out 2>&1
eval_tap $? 258 'SellUserEntitlement' test.out

#- 259 FulfillItem
samples/cli/sample-apps Platform fulfillItem \
    --namespace $AB_NAMESPACE \
    --userId '7xbA8BtGK68nckX5' \
    --body '{"duration": 87, "endDate": "1972-12-01T00:00:00Z", "entitlementCollectionId": "OYQIdDxgH9kRCV8x", "entitlementOrigin": "Twitch", "itemId": "RsZ4QH0bBTUoouko", "itemSku": "YiJXJQV36GPM4nRR", "language": "pRViV7D8OPlLEpTp", "metadata": {"0jixNhgAlddmh6Jg": {}, "9WwzanvSgf0F5oHi": {}, "MKLEOmVnwJJgcu06": {}}, "order": {"currency": {"currencyCode": "aycM7QYR0eoHguLs", "currencySymbol": "0yls5lH6Y3xFaMbS", "currencyType": "VIRTUAL", "decimals": 46, "namespace": "23X7W5RD1wzqLMtO"}, "ext": {"0NhrtIFyHwrFbjaZ": {}, "ht5ktr3QVLvWF7yQ": {}, "jz9hUm1GS0s6HugU": {}}, "free": true}, "orderNo": "WxsaIOo1wTNpqesP", "origin": "IOS", "overrideBundleItemQty": {"S5JCxhEm9gDYri6W": 91, "COaWw00Rr16UNFqS": 13, "yrJlFCC2nhOAUbd0": 78}, "quantity": 71, "region": "09xKpIAUQcDvTjKS", "source": "PAYMENT", "startDate": "1992-10-30T00:00:00Z", "storeId": "ikfTidVDshJ3kHkD"}' \
    > test.out 2>&1
eval_tap $? 259 'FulfillItem' test.out

#- 260 RedeemCode
samples/cli/sample-apps Platform redeemCode \
    --namespace $AB_NAMESPACE \
    --userId 'jEfrYsjdInBsZLkw' \
    --body '{"code": "QTKw7TBfhpsoQwKs", "language": "hk", "region": "FfFyexVsCjkP0gKP"}' \
    > test.out 2>&1
eval_tap $? 260 'RedeemCode' test.out

#- 261 PreCheckFulfillItem
samples/cli/sample-apps Platform preCheckFulfillItem \
    --namespace $AB_NAMESPACE \
    --userId '8CHPN7EfQ7to7WpB' \
    --body '{"itemId": "59b7U7QW3OgutpKy", "itemSku": "prsORQsvCNGMBnDn", "quantity": 12}' \
    > test.out 2>&1
eval_tap $? 261 'PreCheckFulfillItem' test.out

#- 262 FulfillRewards
samples/cli/sample-apps Platform fulfillRewards \
    --namespace $AB_NAMESPACE \
    --userId 'fk474OJHIhvLwl6j' \
    --body '{"entitlementCollectionId": "AfGX4wA6oovSVPAq", "entitlementOrigin": "Steam", "metadata": {"rQAcnH9pVLxPzv4B": {}, "le6KEQiIsLuYmo4B": {}, "V21NRTLEobVcjEVO": {}}, "origin": "Nintendo", "rewards": [{"currency": {"currencyCode": "VNWYnUioTY2u7D9R", "namespace": "jtrumqjayAIm0Ysz"}, "item": {"itemId": "NcXACUZKafDS796z", "itemSku": "QZNKJEQGhz1udCSh", "itemType": "CyqV77gzrjjcI60T"}, "quantity": 64, "type": "ITEM"}, {"currency": {"currencyCode": "gP3mAtNRBOVvvaQg", "namespace": "GS8ArTkhE4YDZIqo"}, "item": {"itemId": "XEYx2OGvvUMznWNK", "itemSku": "FR0kN0cd0lZb3l9R", "itemType": "4MR9qtMidJxkUMYl"}, "quantity": 100, "type": "CURRENCY"}, {"currency": {"currencyCode": "PLoOi7MCGts0ZmyW", "namespace": "UCryZWicHeTbCMCf"}, "item": {"itemId": "YbXWIw55kIgy2VFw", "itemSku": "dw5uytoIuakxgWnu", "itemType": "IwhXcB9q1x3c2dU6"}, "quantity": 2, "type": "CURRENCY"}], "source": "IAP", "transactionId": "ZzNdiGCaFIY4jHmd"}' \
    > test.out 2>&1
eval_tap $? 262 'FulfillRewards' test.out

#- 263 QueryUserIAPOrders
samples/cli/sample-apps Platform queryUserIAPOrders \
    --namespace $AB_NAMESPACE \
    --userId '57mcsNrVwl0LXq3R' \
    --endTime 'JelMDZadXvGPLhFz' \
    --limit '85' \
    --offset '84' \
    --productId 'gP1mti4Z7ELqyiw6' \
    --startTime 'V3L4VbcJnCvaCaqm' \
    --status 'FAILED' \
    --type 'STEAM' \
    > test.out 2>&1
eval_tap $? 263 'QueryUserIAPOrders' test.out

#- 264 QueryAllUserIAPOrders
samples/cli/sample-apps Platform queryAllUserIAPOrders \
    --namespace $AB_NAMESPACE \
    --userId 'nUsrIddVJtcfB5GP' \
    > test.out 2>&1
eval_tap $? 264 'QueryAllUserIAPOrders' test.out

#- 265 QueryUserIAPConsumeHistory
samples/cli/sample-apps Platform queryUserIAPConsumeHistory \
    --namespace $AB_NAMESPACE \
    --userId 'CY9SwG7U0Hix6kxn' \
    --endTime 'xRSKMKzhl0UQZ59m' \
    --limit '79' \
    --offset '26' \
    --startTime 'MHLPtHpIAZDha8ww' \
    --status 'SUCCESS' \
    --type 'EPICGAMES' \
    > test.out 2>&1
eval_tap $? 265 'QueryUserIAPConsumeHistory' test.out

#- 266 MockFulfillIAPItem
samples/cli/sample-apps Platform mockFulfillIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'wOIZhmv4vOEr51Bt' \
    --body '{"itemIdentityType": "ITEM_SKU", "language": "lyf_WlJn", "productId": "n7Rl9bI6BHxXFq08", "region": "SVqnn3J5DUUbkwM1", "transactionId": "WzQ51yZbWwdQVgmq", "type": "STEAM"}' \
    > test.out 2>&1
eval_tap $? 266 'MockFulfillIAPItem' test.out

#- 267 QueryUserOrders
samples/cli/sample-apps Platform queryUserOrders \
    --namespace $AB_NAMESPACE \
    --userId 'ZBbaOSPG6Zmncxpi' \
    --itemId '6JRGrqayA9QmSofn' \
    --limit '60' \
    --offset '93' \
    --status 'REFUND_FAILED' \
    > test.out 2>&1
eval_tap $? 267 'QueryUserOrders' test.out

#- 268 AdminCreateUserOrder
samples/cli/sample-apps Platform adminCreateUserOrder \
    --namespace $AB_NAMESPACE \
    --userId 'fW1g559K0O8ter6D' \
    --body '{"currencyCode": "39HzzlP2CewGrfif", "currencyNamespace": "16YHsgZlx6ZcuYMk", "discountedPrice": 65, "entitlementPlatform": "Epic", "ext": {"xb2Pli5OfWDNJJu0": {}, "5JoIMxT6PsbBWsEW": {}, "smKrun6r7kCS68vP": {}}, "itemId": "M4qjmmdr7IBUkRUu", "language": "8MrhnOorEQ8IUIwg", "options": {"skipPriceValidation": true}, "platform": "Other", "price": 69, "quantity": 14, "region": "7HxEncdmhY7QohwP", "returnUrl": "XZqf3XJFPU8RM2jk", "sandbox": true, "sectionId": "NesuNYT6qw4EidN1"}' \
    > test.out 2>&1
eval_tap $? 268 'AdminCreateUserOrder' test.out

#- 269 CountOfPurchasedItem
samples/cli/sample-apps Platform countOfPurchasedItem \
    --namespace $AB_NAMESPACE \
    --userId 'oRruitEi63EVOykF' \
    --itemId '6phDhmVHo8krmf88' \
    > test.out 2>&1
eval_tap $? 269 'CountOfPurchasedItem' test.out

#- 270 GetUserOrder
samples/cli/sample-apps Platform getUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'Nlpke1uXFwpVefFr' \
    --userId 'egqjD4U4A3e0jXWX' \
    > test.out 2>&1
eval_tap $? 270 'GetUserOrder' test.out

#- 271 UpdateUserOrderStatus
samples/cli/sample-apps Platform updateUserOrderStatus \
    --namespace $AB_NAMESPACE \
    --orderNo 'uWZ8IIrUqVXWottp' \
    --userId 'YK8Grra2jahAZ7Mr' \
    --body '{"status": "CHARGED", "statusReason": "eWw72VaX5cZRzXUS"}' \
    > test.out 2>&1
eval_tap $? 271 'UpdateUserOrderStatus' test.out

#- 272 FulfillUserOrder
samples/cli/sample-apps Platform fulfillUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'ojZFbkQr958T6XMW' \
    --userId 'p9FT06ViQjnpOYif' \
    > test.out 2>&1
eval_tap $? 272 'FulfillUserOrder' test.out

#- 273 GetUserOrderGrant
samples/cli/sample-apps Platform getUserOrderGrant \
    --namespace $AB_NAMESPACE \
    --orderNo '1gyUhxOlH2FucVXh' \
    --userId 'OLmAF3021i4I9WYR' \
    > test.out 2>&1
eval_tap $? 273 'GetUserOrderGrant' test.out

#- 274 GetUserOrderHistories
samples/cli/sample-apps Platform getUserOrderHistories \
    --namespace $AB_NAMESPACE \
    --orderNo 'T8FlL9bCgHLPxkma' \
    --userId 'KdvWv4aHcEBgsIel' \
    > test.out 2>&1
eval_tap $? 274 'GetUserOrderHistories' test.out

#- 275 ProcessUserOrderNotification
samples/cli/sample-apps Platform processUserOrderNotification \
    --namespace $AB_NAMESPACE \
    --orderNo 'RbxdkBAJw8RcZH6n' \
    --userId 'ZMxVeage3DUdnNiA' \
    --body '{"additionalData": {"cardSummary": "oD2kn404mg0fq6Vb"}, "authorisedTime": "1987-10-03T00:00:00Z", "chargebackReversedTime": "1974-06-28T00:00:00Z", "chargebackTime": "1984-10-19T00:00:00Z", "chargedTime": "1988-01-18T00:00:00Z", "createdTime": "1993-07-17T00:00:00Z", "currency": {"currencyCode": "ZzKvLfmO0WQ3EIAv", "currencySymbol": "0Yw44sBiFUngzc9r", "currencyType": "VIRTUAL", "decimals": 47, "namespace": "G0kHhaJqqYY8b0OQ"}, "customParameters": {"3Mf3cKg35Vy9Vz0S": {}, "ZjdVlsppW6qmfp7Z": {}, "EdQdjIpk7Zj5hOTz": {}}, "extOrderNo": "2kQI7Qkk7WvGQxkL", "extTxId": "bCrwG34m6uRoubai", "extUserId": "pKquwKF5OqXyioKc", "issuedAt": "1996-05-11T00:00:00Z", "metadata": {"ikMVBEqYd4lITtDg": "ek2Vw1bfYST4LCz3", "tPGfWwJVcCPQu9sQ": "OrEfaaX2oOYaCr1H", "Opc92CU3KGflj3y2": "USmkGMiKzSIb6mud"}, "namespace": "Rt6kRsAdVqFQCots", "nonceStr": "XhKQYG4KAapwGD0K", "paymentMethod": "VPmeYDEb5ZxGvQlJ", "paymentMethodFee": 0, "paymentOrderNo": "oBRnVRreWRwRxscL", "paymentProvider": "WXPAY", "paymentProviderFee": 7, "paymentStationUrl": "1l9wR9ifJYzyEila", "price": 58, "refundedTime": "1977-04-02T00:00:00Z", "salesTax": 84, "sandbox": true, "sku": "gfKoIuKLVIJiiceu", "status": "REFUNDED", "statusReason": "BUnTKYbERzeBhyma", "subscriptionId": "bVM2n5RaIHoCmzPA", "subtotalPrice": 34, "targetNamespace": "wZhd28NHLYV7rMo7", "targetUserId": "Z9szMxa3eKNFUkaM", "tax": 38, "totalPrice": 31, "totalTax": 65, "txEndTime": "1997-04-03T00:00:00Z", "type": "IFaplm2oxQ2VlisV", "userId": "6SX1RiIxZb5qRT32", "vat": 87}' \
    > test.out 2>&1
eval_tap $? 275 'ProcessUserOrderNotification' test.out

#- 276 DownloadUserOrderReceipt
samples/cli/sample-apps Platform downloadUserOrderReceipt \
    --namespace $AB_NAMESPACE \
    --orderNo 'rmRwPmWADEdfLEB7' \
    --userId 'q78nI9eJQRVd4ZRF' \
    > test.out 2>&1
eval_tap $? 276 'DownloadUserOrderReceipt' test.out

#- 277 CreateUserPaymentOrder
samples/cli/sample-apps Platform createUserPaymentOrder \
    --namespace $AB_NAMESPACE \
    --userId 'CzbJ4OsEuwpIlQpg' \
    --body '{"currencyCode": "CL7i4goArWjMSHJ0", "currencyNamespace": "C5vGaNSZxWP2szDD", "customParameters": {"oEBqCPD8Q1NoTgt6": {}, "o8kQyg0Ao5dLecns": {}, "CtCCRyDQjUhySQ2w": {}}, "description": "mk1sNm83h2yXPggD", "extOrderNo": "N22oqtW0pLv3xFYB", "extUserId": "5dFhbWRdsqcMvFoR", "itemType": "EXTENSION", "language": "HRur_kSel", "metadata": {"z8JQmk65QJnGbzIj": "MwBd4YzDGjGS2Xmd", "Vk8OpCBwCninIboo": "Qso2mOaqIQKoMYR5", "dOZpxSu5XbvxsyzD": "H75nZ0ddYtlNO9A9"}, "notifyUrl": "cTuGzUA9Mo5D1cUm", "omitNotification": true, "platform": "XTaxoSaZ0GHyc5dW", "price": 95, "recurringPaymentOrderNo": "bphwEzYclGPW9bv9", "region": "sociHOcobgvWpjzm", "returnUrl": "Apkrfs1quJvr5Om6", "sandbox": false, "sku": "Y7b2palE2whBD8H2", "subscriptionId": "exLliljTSzAyXcvy", "title": "nGnC9ET8ipY525eG"}' \
    > test.out 2>&1
eval_tap $? 277 'CreateUserPaymentOrder' test.out

#- 278 RefundUserPaymentOrder
samples/cli/sample-apps Platform refundUserPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'wdapyciUK2ZnfmRf' \
    --userId 'yCSh4hWz3dVimaDP' \
    --body '{"description": "AGSAHQL5VpRlc5rd"}' \
    > test.out 2>&1
eval_tap $? 278 'RefundUserPaymentOrder' test.out

#- 279 ApplyUserRedemption
samples/cli/sample-apps Platform applyUserRedemption \
    --namespace $AB_NAMESPACE \
    --userId 'yn1oFZ7IGCa1pAWA' \
    --body '{"code": "gKmNoP69gezab9gq", "orderNo": "aPCgW8hUTx09HNkO"}' \
    > test.out 2>&1
eval_tap $? 279 'ApplyUserRedemption' test.out

#- 280 DoRevocation
samples/cli/sample-apps Platform doRevocation \
    --namespace $AB_NAMESPACE \
    --userId 'dmMIqRYlVKJ5fYzC' \
    --body '{"meta": {"cOI2jU7D0RnIySDd": {}, "oLVM4D8dZNHSKc1U": {}, "KiPCGQjsHdn8bfl7": {}}, "revokeEntries": [{"currency": {"balanceOrigin": "Playstation", "currencyCode": "wGHFaqa8sMPz0Bay", "namespace": "J1DxRIGBADxwZR88"}, "entitlement": {"entitlementId": "CiRPeap77nk3VpKh"}, "item": {"entitlementOrigin": "Nintendo", "itemIdentity": "AZMPH153eBqB2d25", "itemIdentityType": "ITEM_SKU", "origin": "Nintendo"}, "quantity": 18, "type": "ITEM"}, {"currency": {"balanceOrigin": "System", "currencyCode": "qYJ6RWVXTD3FWnJ8", "namespace": "fmtkySDH9TsGQlO1"}, "entitlement": {"entitlementId": "wJTnxFVl61uokxMh"}, "item": {"entitlementOrigin": "GooglePlay", "itemIdentity": "aymi95IeKQqb3wD6", "itemIdentityType": "ITEM_ID", "origin": "Nintendo"}, "quantity": 96, "type": "CURRENCY"}, {"currency": {"balanceOrigin": "Steam", "currencyCode": "H37G9bmlgnlTW5vW", "namespace": "1zeiXvoULO9phJlI"}, "entitlement": {"entitlementId": "SVzejowrMtPLVbqU"}, "item": {"entitlementOrigin": "GooglePlay", "itemIdentity": "P10nCe2rIJQVqd35", "itemIdentityType": "ITEM_SKU", "origin": "Nintendo"}, "quantity": 8, "type": "ITEM"}], "source": "ORDER", "transactionId": "TG5BKZwRg79n4UaI"}' \
    > test.out 2>&1
eval_tap $? 280 'DoRevocation' test.out

#- 281 RegisterXblSessions
samples/cli/sample-apps Platform registerXblSessions \
    --namespace $AB_NAMESPACE \
    --userId 'iHehKV8WQRW20rQl' \
    --body '{"gameSessionId": "G6K3agHYeg06mN8a", "payload": {"08CjC6BetSm4yPLJ": {}, "VT27oKpFjZr9dGCD": {}, "53QE2AXr43nPRwbg": {}}, "scid": "RS3PVarjS1ttN1Y5", "sessionTemplateName": "Y5w4dgBckRZEOta9"}' \
    > test.out 2>&1
eval_tap $? 281 'RegisterXblSessions' test.out

#- 282 QueryUserSubscriptions
samples/cli/sample-apps Platform queryUserSubscriptions \
    --namespace $AB_NAMESPACE \
    --userId 'AbXOZRBloapkPAQA' \
    --chargeStatus 'CHARGE_FAILED' \
    --itemId 'bzUI6G8C9jEE34kG' \
    --limit '27' \
    --offset '50' \
    --sku '1whHVWBBXIL1OB9m' \
    --status 'EXPIRED' \
    --subscribedBy 'USER' \
    > test.out 2>&1
eval_tap $? 282 'QueryUserSubscriptions' test.out

#- 283 GetUserSubscriptionActivities
samples/cli/sample-apps Platform getUserSubscriptionActivities \
    --namespace $AB_NAMESPACE \
    --userId 'pqgbzeKXQCzVIzvv' \
    --excludeSystem 'false' \
    --limit '44' \
    --offset '97' \
    --subscriptionId '0kwi97ZtifayvqHe' \
    > test.out 2>&1
eval_tap $? 283 'GetUserSubscriptionActivities' test.out

#- 284 PlatformSubscribeSubscription
samples/cli/sample-apps Platform platformSubscribeSubscription \
    --namespace $AB_NAMESPACE \
    --userId 'GRqDn8SQZ3w0nsWM' \
    --body '{"grantDays": 82, "itemId": "YTBHKm8MvWL8S0Cs", "language": "4F4RxlsonE7LbDj4", "reason": "TwYDROEFH2NkGrAi", "region": "Mxmhg8p9hP2lTOxv", "source": "ehMYsBsbRzL5eQN7"}' \
    > test.out 2>&1
eval_tap $? 284 'PlatformSubscribeSubscription' test.out

#- 285 CheckUserSubscriptionSubscribableByItemId
samples/cli/sample-apps Platform checkUserSubscriptionSubscribableByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'UYrMraqH9OHlo9WW' \
    --itemId '4KaAhDjEPT7Mf0j2' \
    > test.out 2>&1
eval_tap $? 285 'CheckUserSubscriptionSubscribableByItemId' test.out

#- 286 GetUserSubscription
samples/cli/sample-apps Platform getUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'djdjJIv3eyb9dcbw' \
    --userId 'gQagKbLD4uOcCNbF' \
    > test.out 2>&1
eval_tap $? 286 'GetUserSubscription' test.out

#- 287 DeleteUserSubscription
samples/cli/sample-apps Platform deleteUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'KYoERI0yR9PRIVWC' \
    --userId 'Q8RZ6nAdujYNOhRh' \
    > test.out 2>&1
eval_tap $? 287 'DeleteUserSubscription' test.out

#- 288 CancelSubscription
samples/cli/sample-apps Platform cancelSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'I50wYOfSaU3yQX0p' \
    --userId 'MpUU5cSJZ5RgXx3B' \
    --force 'true' \
    --body '{"immediate": false, "reason": "gjAYA2PZlh6Zo2vj"}' \
    > test.out 2>&1
eval_tap $? 288 'CancelSubscription' test.out

#- 289 GrantDaysToSubscription
samples/cli/sample-apps Platform grantDaysToSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'SUKvUmXMxcGX9kBJ' \
    --userId 'rtTZV8rXh6bLcslw' \
    --body '{"grantDays": 21, "reason": "mkAsPOu7JDKvQmjL"}' \
    > test.out 2>&1
eval_tap $? 289 'GrantDaysToSubscription' test.out

#- 290 GetUserSubscriptionBillingHistories
samples/cli/sample-apps Platform getUserSubscriptionBillingHistories \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'Xqrnb2IANyNfYyqx' \
    --userId '48PUBXfqqFAQtIiS' \
    --excludeFree 'true' \
    --limit '70' \
    --offset '94' \
    > test.out 2>&1
eval_tap $? 290 'GetUserSubscriptionBillingHistories' test.out

#- 291 ProcessUserSubscriptionNotification
samples/cli/sample-apps Platform processUserSubscriptionNotification \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'QBP4Xiufxa2SAQza' \
    --userId 'jf9lLfVsp8cNBmjc' \
    --body '{"additionalData": {"cardSummary": "QbU9QyaTG8ru8pSZ"}, "authorisedTime": "1990-11-15T00:00:00Z", "chargebackReversedTime": "1989-05-26T00:00:00Z", "chargebackTime": "1985-08-20T00:00:00Z", "chargedTime": "1990-09-17T00:00:00Z", "createdTime": "1992-03-28T00:00:00Z", "currency": {"currencyCode": "Vyh3DnHsBJ7o2whg", "currencySymbol": "lCeKS3gpTJaKz9qB", "currencyType": "VIRTUAL", "decimals": 4, "namespace": "gyhDfdiyk2XIcM13"}, "customParameters": {"zDuKzndQdeyfXdW1": {}, "HpxQWCm8ot7VSWjn": {}, "sarRWxt0dxgL1Y7e": {}}, "extOrderNo": "SyJ3YLfRKUYI9jaV", "extTxId": "xwb9lArO7Tq4CvzZ", "extUserId": "X0VwC2gxqfO9UjFi", "issuedAt": "1983-04-23T00:00:00Z", "metadata": {"rmNsyWNlxeCtvUmH": "uTBEqkspGVQWXpyB", "tOXWyG3pNo51pLli": "DU7QGQ6ylhskGzRs", "7WjRysCK1S18OedJ": "QpEMQL1wlmmaoLvD"}, "namespace": "2MuctfRC13XxTYzu", "nonceStr": "OSKZaFE38pdyfaWd", "paymentMethod": "AFd1XFnhgLC7hitq", "paymentMethodFee": 75, "paymentOrderNo": "LxQVSmAu4Lv0X96S", "paymentProvider": "PAYPAL", "paymentProviderFee": 71, "paymentStationUrl": "ab2NoLABlIze0r3r", "price": 41, "refundedTime": "1997-04-22T00:00:00Z", "salesTax": 33, "sandbox": true, "sku": "SOcf7jBzgGYyJuwu", "status": "REFUNDING", "statusReason": "R0cJ4JLUcBDClEUl", "subscriptionId": "myAXNlhcoGrWqovo", "subtotalPrice": 67, "targetNamespace": "llBIjGewoXunIKLu", "targetUserId": "Z7IqFegmvZWdkvb2", "tax": 64, "totalPrice": 30, "totalTax": 34, "txEndTime": "1999-01-31T00:00:00Z", "type": "ZUEBiO23gpWUOuRx", "userId": "Oxab1wGl4kdmlGIs", "vat": 82}' \
    > test.out 2>&1
eval_tap $? 291 'ProcessUserSubscriptionNotification' test.out

#- 292 AcquireUserTicket
samples/cli/sample-apps Platform acquireUserTicket \
    --boothName 'lFcne1RFNMsBHdAk' \
    --namespace $AB_NAMESPACE \
    --userId 'd9rVqRyWunIhqd8h' \
    --body '{"count": 47, "orderNo": "JtNaaaLEiOzQS8su"}' \
    > test.out 2>&1
eval_tap $? 292 'AcquireUserTicket' test.out

#- 293 QueryUserCurrencyWallets
samples/cli/sample-apps Platform queryUserCurrencyWallets \
    --namespace $AB_NAMESPACE \
    --userId 'IS856zTMoRJjCgX8' \
    > test.out 2>&1
eval_tap $? 293 'QueryUserCurrencyWallets' test.out

#- 294 DebitUserWalletByCurrencyCode
samples/cli/sample-apps Platform debitUserWalletByCurrencyCode \
    --currencyCode '9FlsbwlHav0OVM3f' \
    --namespace $AB_NAMESPACE \
    --userId 'MjlJ9GqEfvy87SL9' \
    --body '{"allowOverdraft": false, "amount": 22, "balanceOrigin": "Steam", "balanceSource": "DLC_REVOCATION", "metadata": {"5NpEI6cQylhldcvF": {}, "r33Lul7mzzcHmTgj": {}, "c6KxW6KxVxDwQdZC": {}}, "reason": "9UfmPrx9RVnqGTSC"}' \
    > test.out 2>&1
eval_tap $? 294 'DebitUserWalletByCurrencyCode' test.out

#- 295 ListUserCurrencyTransactions
samples/cli/sample-apps Platform listUserCurrencyTransactions \
    --currencyCode 'k6Ijt0X5QSwvHjbO' \
    --namespace $AB_NAMESPACE \
    --userId 'tfsSC2qQyOMnsLlT' \
    --limit '39' \
    --offset '92' \
    > test.out 2>&1
eval_tap $? 295 'ListUserCurrencyTransactions' test.out

#- 296 CheckBalance
samples/cli/sample-apps Platform checkBalance \
    --currencyCode 'iWjZRD1vLOGhxJVE' \
    --namespace $AB_NAMESPACE \
    --userId 'iPx3WrHEQuFKxK9K' \
    --request '{"amount": 17, "debitBalanceSource": "DLC_REVOCATION", "metadata": {"7vKlUo6OLN0F1u5e": {}, "Jm1M2fvgCOXcRKjk": {}, "AjYvcU3Lasr5leYl": {}}, "reason": "TCjQk5utiLIX7JQD", "walletPlatform": "Xbox"}' \
    > test.out 2>&1
eval_tap $? 296 'CheckBalance' test.out

#- 297 CheckWallet
eval_tap 0 297 'CheckWallet # SKIP deprecated' test.out

#- 298 CreditUserWallet
samples/cli/sample-apps Platform creditUserWallet \
    --currencyCode 'zENUm9cYYY2pZ10z' \
    --namespace $AB_NAMESPACE \
    --userId 'uu282qdYmqRfzn2h' \
    --body '{"amount": 2, "expireAt": "1988-09-18T00:00:00Z", "metadata": {"KvQ3py1Ad5HetNrf": {}, "3KXowvStzpUNsInk": {}, "1ad58EZ5cayPAnWC": {}}, "origin": "Steam", "reason": "D9jmjxF6w0DlFJhl", "source": "PROMOTION"}' \
    > test.out 2>&1
eval_tap $? 298 'CreditUserWallet' test.out

#- 299 DebitByWalletPlatform
samples/cli/sample-apps Platform debitByWalletPlatform \
    --currencyCode 'yxDJV0q9ameSuNhK' \
    --namespace $AB_NAMESPACE \
    --userId 'rhAk47HMitATMlPo' \
    --request '{"amount": 39, "debitBalanceSource": "IAP_REVOCATION", "metadata": {"K3kxlKA0ShIB8OCL": {}, "gASlmGs0U1ZngABA": {}, "jNNNVFKeoLt7dsRb": {}}, "reason": "pTUxJHW4iueIDKuT", "walletPlatform": "Playstation"}' \
    > test.out 2>&1
eval_tap $? 299 'DebitByWalletPlatform' test.out

#- 300 PayWithUserWallet
samples/cli/sample-apps Platform payWithUserWallet \
    --currencyCode '1gDyTB3SDubJTcRt' \
    --namespace $AB_NAMESPACE \
    --userId 'AdH5cao6Gs4oUHYE' \
    --body '{"amount": 77, "metadata": {"Mxtot5A4LIEbJqhQ": {}, "I1pOWp9z7WyyXQpM": {}, "YoYBnI2KijHPsseW": {}}, "walletPlatform": "Other"}' \
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
    --storeId 'cSpvlDcdDi91xI4c' \
    > test.out 2>&1
eval_tap $? 306 'ListViews' test.out

#- 307 CreateView
samples/cli/sample-apps Platform createView \
    --namespace $AB_NAMESPACE \
    --storeId 'xxI4LSEtLv05RjmZ' \
    --body '{"displayOrder": 53, "localizations": {"DgvAkPYcozQb7xW5": {"description": "l5GviUWIPMGbQBQF", "localExt": {"X0pN4WH2LWJcwhgz": {}, "Nknnt5pgrPOue9Hf": {}, "CWaP7y8o7JmXKLVX": {}}, "longDescription": "WPcdLbRIEnEsj7bU", "title": "0Jv18wMctwTTDC8y"}, "9BKNZwKCuS7JE0jn": {"description": "Kqber9XglFfF9hyH", "localExt": {"wmEzovYOlILNGddq": {}, "piGjwEV1WS6mpVin": {}, "cxqzrlDb4mOj4XDz": {}}, "longDescription": "VYetyQ1AQYxbCzQ4", "title": "LVYZMxtbjxFC8SRf"}, "FpP6XlMy5vJzy5ZB": {"description": "EhNQRdwV8UGF1gHh", "localExt": {"sIiLVnA0z2SvxWRA": {}, "SrFPFQFaOSXuizC5": {}, "9M0ozDWkhjjq0IGB": {}}, "longDescription": "xI8EfZzhcrWRLPLw", "title": "bs712x098uCw1t1x"}}, "name": "jcZpK9VY412c2GAj"}' \
    > test.out 2>&1
eval_tap $? 307 'CreateView' test.out

#- 308 GetView
samples/cli/sample-apps Platform getView \
    --namespace $AB_NAMESPACE \
    --viewId 'r1eHFwOnwFKxMQJG' \
    --storeId 'bSyGWTWnLUweWEsV' \
    > test.out 2>&1
eval_tap $? 308 'GetView' test.out

#- 309 UpdateView
samples/cli/sample-apps Platform updateView \
    --namespace $AB_NAMESPACE \
    --viewId 'OBcGmiTaJygNmzjk' \
    --storeId '0gBDwyviUtMbpbzk' \
    --body '{"displayOrder": 11, "localizations": {"mUVxEWnqLfdHQcev": {"description": "FPYKlxojSC0lCodB", "localExt": {"ZLmONghTL2wNipI7": {}, "5m3e6Yr6Dow8BQEj": {}, "kzU4sw4uPQVcGxZH": {}}, "longDescription": "L40HR0t4n3XPbijO", "title": "UaMQu4671RYHqfWf"}, "aXLo6HvLUd3knItz": {"description": "1Afedl7C3ITcAfpP", "localExt": {"stD2sTH1pZtpb5x8": {}, "vGHTEvPQTVXS6JNA": {}, "HaZdvgQpAiGLaqwb": {}}, "longDescription": "St8DmvKPjSXifSnI", "title": "mV4HNdsP52shaezO"}, "wsSdvBWHZizYeEty": {"description": "3wvilCYzSx6qD2cM", "localExt": {"ilv274aMcGnLXlfQ": {}, "2HLxwaTPoKMvVs02": {}, "mvVnBIGbQES2MR9b": {}}, "longDescription": "4Ev4gYiAZlxFbJtL", "title": "VInn4xJGmO2SVPb3"}}, "name": "mMYWZJxxXUxI1LiQ"}' \
    > test.out 2>&1
eval_tap $? 309 'UpdateView' test.out

#- 310 DeleteView
samples/cli/sample-apps Platform deleteView \
    --namespace $AB_NAMESPACE \
    --viewId 'IJ2S4BZvg18QfOUQ' \
    --storeId '4IuluF5fPhgcqwe8' \
    > test.out 2>&1
eval_tap $? 310 'DeleteView' test.out

#- 311 QueryWallets
eval_tap 0 311 'QueryWallets # SKIP deprecated' test.out

#- 312 BulkCredit
samples/cli/sample-apps Platform bulkCredit \
    --namespace $AB_NAMESPACE \
    --body '[{"creditRequest": {"amount": 29, "expireAt": "1975-01-26T00:00:00Z", "metadata": {"CfpZWbHuLGtpkELb": {}, "mZlhcnUsWpJWaHvG": {}, "obEeKUu2eLYKXSCv": {}}, "origin": "IOS", "reason": "cnu2DtbjiS0J9Bmn", "source": "REFUND"}, "currencyCode": "xC2GTv53a8DR4mBV", "userIds": ["hDkvIKoTFgKaSIYO", "oUMbbi2K1DhM92El", "WfQhbOP7s1ftar0f"]}, {"creditRequest": {"amount": 48, "expireAt": "1987-02-15T00:00:00Z", "metadata": {"5odsnRblhHHyGTmO": {}, "oeu6uel9VwjwfhW5": {}, "eYVR1x0nNZgZBWyW": {}}, "origin": "Epic", "reason": "ia3hSg1XbGk2DGgW", "source": "GIFT"}, "currencyCode": "tOC0ohwrrrqxHLxo", "userIds": ["0R4r6zteubexn1vf", "b0rRHYXLhLrBka7b", "Fg3bycYZMhY7rKcF"]}, {"creditRequest": {"amount": 31, "expireAt": "1977-07-26T00:00:00Z", "metadata": {"TDtBnC0kh0wFzSXN": {}, "H1UL6ONzRFnnzuoI": {}, "TX7ahzaAibVSFBx8": {}}, "origin": "IOS", "reason": "BQnwdOJhhIaDAF9k", "source": "SELL_BACK"}, "currencyCode": "DazCXxSnaUBrorTb", "userIds": ["cq7Mo9y7TQohfjZy", "ZcJCufYniCgZEXZv", "q1JTE9Ve299sxPR0"]}]' \
    > test.out 2>&1
eval_tap $? 312 'BulkCredit' test.out

#- 313 BulkDebit
samples/cli/sample-apps Platform bulkDebit \
    --namespace $AB_NAMESPACE \
    --body '[{"currencyCode": "eVO16NvyYj07GjPS", "request": {"allowOverdraft": true, "amount": 85, "balanceOrigin": "GooglePlay", "balanceSource": "OTHER", "metadata": {"269Pht8D7hEyqhM2": {}, "N0VbLfCHb56FBBRj": {}, "L6FVfdVco0ZIHmLM": {}}, "reason": "l5aCACgSbgfOlRlV"}, "userIds": ["tA6XxXZLwfhw37JA", "g52yrISurTL6eABp", "RHutUBZr75VGRnPH"]}, {"currencyCode": "b0kBGe5O7wdsKBpp", "request": {"allowOverdraft": false, "amount": 25, "balanceOrigin": "GooglePlay", "balanceSource": "OTHER", "metadata": {"KD4JLZ9a48weVcl7": {}, "ehzQhJR3NcBBH2KD": {}, "AqqzrXZkTB5Z97HC": {}}, "reason": "uzbKpWvsNBBimwqJ"}, "userIds": ["qwTdfzjNKdKRcssE", "HOfcvm98rKa7Yyny", "YPBFDddGsYbFGh42"]}, {"currencyCode": "GVqFUTn014Vt7Uo4", "request": {"allowOverdraft": true, "amount": 29, "balanceOrigin": "Playstation", "balanceSource": "DLC_REVOCATION", "metadata": {"cHX94YrTDqI63oPS": {}, "2orHr4gEq1BNaWO0": {}, "gvGt0xrubXQyeDEC": {}}, "reason": "gmXsMpG1fTZ0jI4A"}, "userIds": ["MKM5HnuUmptmRu61", "2W3Bj8UgJUOt17mN", "29Q0JlbjYjmjIyxa"]}]' \
    > test.out 2>&1
eval_tap $? 313 'BulkDebit' test.out

#- 314 GetWallet
eval_tap 0 314 'GetWallet # SKIP deprecated' test.out

#- 315 SyncOrders
samples/cli/sample-apps Platform syncOrders \
    --nextEvaluatedKey 'nqVAk6CC4GxjEwTi' \
    --end 'vM6ZvmpFIT0Uwoyf' \
    --start 'uKqq5R7rU8oGHsWv' \
    > test.out 2>&1
eval_tap $? 315 'SyncOrders' test.out

#- 316 TestAdyenConfig
samples/cli/sample-apps Platform testAdyenConfig \
    --sandbox 'true' \
    --body '{"allowedPaymentMethods": ["HfaY44zQO81SWYbV", "2ltMNt7WnWLJYggi", "nceC9KqnVEgnFxYQ"], "apiKey": "D8hKaflW0CUXcQdv", "authoriseAsCapture": false, "blockedPaymentMethods": ["cP9HGlJKN8wa0FwW", "YwYyzt4pKKKOyON3", "5irqCwBi6IFKjCwU"], "clientKey": "7XlGxDtRYJNx9eu1", "dropInSettings": "9TKA6R9zJCGBIdSk", "liveEndpointUrlPrefix": "1YKOUqcnWfco97Mc", "merchantAccount": "W2KmEEy1FXWixYvZ", "notificationHmacKey": "bFXuhygM78iYd86b", "notificationPassword": "klSspBrQPxTEivUW", "notificationUsername": "DxCFkf9O2O296hHC", "returnUrl": "uRutBWpGnDZXSSlj", "settings": "hp71PEYjBYzPxkUD"}' \
    > test.out 2>&1
eval_tap $? 316 'TestAdyenConfig' test.out

#- 317 TestAliPayConfig
samples/cli/sample-apps Platform testAliPayConfig \
    --sandbox 'true' \
    --body '{"appId": "wqkrVoKlxutTnY4T", "privateKey": "Jy44epY8DGWyPUP8", "publicKey": "8U0zOVhZXL5kL4kA", "returnUrl": "swEtsGcTjcwsYrWH"}' \
    > test.out 2>&1
eval_tap $? 317 'TestAliPayConfig' test.out

#- 318 TestCheckoutConfig
samples/cli/sample-apps Platform testCheckoutConfig \
    --sandbox 'false' \
    --body '{"publicKey": "hMLKGQysWGqzXI4Z", "secretKey": "lBYc2iJxQhvq7YiH"}' \
    > test.out 2>&1
eval_tap $? 318 'TestCheckoutConfig' test.out

#- 319 DebugMatchedPaymentMerchantConfig
samples/cli/sample-apps Platform debugMatchedPaymentMerchantConfig \
    --namespace 'STZ2AcHkroqlidwd' \
    --region 'oufnL8bc7r7Qxvci' \
    > test.out 2>&1
eval_tap $? 319 'DebugMatchedPaymentMerchantConfig' test.out

#- 320 TestPayPalConfig
samples/cli/sample-apps Platform testPayPalConfig \
    --sandbox 'false' \
    --body '{"clientID": "WdszPqjBqUNMA78J", "clientSecret": "QZrAtfxbXdU0N1t0", "returnUrl": "Bn6cUKjAXwVHdPly", "webHookId": "xvX4AgmNJZfscOGQ"}' \
    > test.out 2>&1
eval_tap $? 320 'TestPayPalConfig' test.out

#- 321 TestStripeConfig
samples/cli/sample-apps Platform testStripeConfig \
    --sandbox 'false' \
    --body '{"allowedPaymentMethodTypes": ["ibWc4WSE3YNemdTN", "ot3bT5FSCKtUvMmW", "0EypLVGD6CuvSmoe"], "publishableKey": "4cIR5k1qSOZOdQzX", "secretKey": "gIhagOcaaZPMnHRV", "webhookSecret": "L5suWxLKBHcftxe0"}' \
    > test.out 2>&1
eval_tap $? 321 'TestStripeConfig' test.out

#- 322 TestWxPayConfig
samples/cli/sample-apps Platform testWxPayConfig \
    --body '{"appId": "XwXuaoM94gy4dmrm", "key": "RU9P1jcfZvjNj4wO", "mchid": "NrDvWAgeTSAwWeVg", "returnUrl": "2EVSBOUptWLgbQvy"}' \
    > test.out 2>&1
eval_tap $? 322 'TestWxPayConfig' test.out

#- 323 TestXsollaConfig
samples/cli/sample-apps Platform testXsollaConfig \
    --body '{"apiKey": "hQFpOGiTSR7p6Whg", "flowCompletionUrl": "tzAHCuA6TfMI1WQz", "merchantId": 96, "projectId": 90, "projectSecretKey": "svjkkBtNutyWCPgY"}' \
    > test.out 2>&1
eval_tap $? 323 'TestXsollaConfig' test.out

#- 324 GetPaymentMerchantConfig
samples/cli/sample-apps Platform getPaymentMerchantConfig \
    --id 'ZadtXx9OiItN9S7Q' \
    > test.out 2>&1
eval_tap $? 324 'GetPaymentMerchantConfig' test.out

#- 325 UpdateAdyenConfig
samples/cli/sample-apps Platform updateAdyenConfig \
    --id 'TjPycVRFmsMUmJYr' \
    --sandbox 'true' \
    --validate 'false' \
    --body '{"allowedPaymentMethods": ["yiMzwzKRTSrJzorx", "QWtRibTT75t16ZoJ", "bx5UBLEYWWfuYiIk"], "apiKey": "To8S2HjxpR5huzOl", "authoriseAsCapture": true, "blockedPaymentMethods": ["6BqcvSST1g0wzb5u", "fdhWfPaVVSicAOVX", "3bxKpm8egQvhlTGO"], "clientKey": "SYcAv99kPeUswf96", "dropInSettings": "OZBe7UETjxzXYjv5", "liveEndpointUrlPrefix": "vxPs6yJyjK61RPpt", "merchantAccount": "IhIh4NfjBFpXfSw8", "notificationHmacKey": "NsSesF62wT0PChFL", "notificationPassword": "UVr2viilPBoBsUDG", "notificationUsername": "MiKxC48OoCW6To1a", "returnUrl": "vQNhSDoF2cAreyDk", "settings": "5viCR2ifqFgqeh3U"}' \
    > test.out 2>&1
eval_tap $? 325 'UpdateAdyenConfig' test.out

#- 326 TestAdyenConfigById
samples/cli/sample-apps Platform testAdyenConfigById \
    --id 'TtseTae1Ar0lCjzl' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 326 'TestAdyenConfigById' test.out

#- 327 UpdateAliPayConfig
samples/cli/sample-apps Platform updateAliPayConfig \
    --id '34pdMVI6yYSdr2Ps' \
    --sandbox 'true' \
    --validate 'false' \
    --body '{"appId": "XYdcFODUq43eT2CZ", "privateKey": "JpHbeFAr1ms8BTuo", "publicKey": "71jnk2fyDZk7ZmSO", "returnUrl": "8cdX5iKljOgBpFpp"}' \
    > test.out 2>&1
eval_tap $? 327 'UpdateAliPayConfig' test.out

#- 328 TestAliPayConfigById
samples/cli/sample-apps Platform testAliPayConfigById \
    --id 'W5XPewps1tAOWeaJ' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 328 'TestAliPayConfigById' test.out

#- 329 UpdateCheckoutConfig
samples/cli/sample-apps Platform updateCheckoutConfig \
    --id '09M0lQxRUA8enzTh' \
    --sandbox 'true' \
    --validate 'false' \
    --body '{"publicKey": "LdUnsHbSrpOocmAA", "secretKey": "VcboUThAwLjBwIO2"}' \
    > test.out 2>&1
eval_tap $? 329 'UpdateCheckoutConfig' test.out

#- 330 TestCheckoutConfigById
samples/cli/sample-apps Platform testCheckoutConfigById \
    --id 'OyGO0k7vAIXtFIX0' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 330 'TestCheckoutConfigById' test.out

#- 331 UpdatePayPalConfig
samples/cli/sample-apps Platform updatePayPalConfig \
    --id 'D0EMMi5N2OWQJCcV' \
    --sandbox 'true' \
    --validate 'true' \
    --body '{"clientID": "sxqCrFumP6q5UeTk", "clientSecret": "EdVmFsOcdvGyI337", "returnUrl": "mwwWBNzUBCwwzAHV", "webHookId": "XtNolc82s7BwzKYI"}' \
    > test.out 2>&1
eval_tap $? 331 'UpdatePayPalConfig' test.out

#- 332 TestPayPalConfigById
samples/cli/sample-apps Platform testPayPalConfigById \
    --id 'nwvRfXc7X3v6WzOc' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 332 'TestPayPalConfigById' test.out

#- 333 UpdateStripeConfig
samples/cli/sample-apps Platform updateStripeConfig \
    --id 'gLZ2Grio8gl4Uv7B' \
    --sandbox 'true' \
    --validate 'false' \
    --body '{"allowedPaymentMethodTypes": ["1rJFd7WSP6LSP4s6", "5UalSnAjkuRHa2iw", "3chpNLZj1dGA9rwF"], "publishableKey": "2TDDCpu8ih8kOLP0", "secretKey": "4U6WxcTEwDV8b5sr", "webhookSecret": "ZfbwsNUAKyCzXZPq"}' \
    > test.out 2>&1
eval_tap $? 333 'UpdateStripeConfig' test.out

#- 334 TestStripeConfigById
samples/cli/sample-apps Platform testStripeConfigById \
    --id 'HsHPv5jl79hNNlSO' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 334 'TestStripeConfigById' test.out

#- 335 UpdateWxPayConfig
samples/cli/sample-apps Platform updateWxPayConfig \
    --id 'lrnywyWTaAALSRkj' \
    --validate 'false' \
    --body '{"appId": "8kzQmHQCDOgeMolr", "key": "rcc4pDHDbE636rAA", "mchid": "djEo7BzHaqV6wkVC", "returnUrl": "FAb2sleSoW9JTRBD"}' \
    > test.out 2>&1
eval_tap $? 335 'UpdateWxPayConfig' test.out

#- 336 UpdateWxPayConfigCert
samples/cli/sample-apps Platform updateWxPayConfigCert \
    --id 'F9czWpxyzVkS1GMR' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 336 'UpdateWxPayConfigCert' test.out

#- 337 TestWxPayConfigById
samples/cli/sample-apps Platform testWxPayConfigById \
    --id 'bNe9EY7bCwc1IHlf' \
    > test.out 2>&1
eval_tap $? 337 'TestWxPayConfigById' test.out

#- 338 UpdateXsollaConfig
samples/cli/sample-apps Platform updateXsollaConfig \
    --id 'cWwfleK0D06UdVVo' \
    --validate 'true' \
    --body '{"apiKey": "oA2DPBCY2TBHUDB8", "flowCompletionUrl": "OBDcs2DdPf8VPRbz", "merchantId": 41, "projectId": 86, "projectSecretKey": "bteYszVdm0fCmQ0f"}' \
    > test.out 2>&1
eval_tap $? 338 'UpdateXsollaConfig' test.out

#- 339 TestXsollaConfigById
samples/cli/sample-apps Platform testXsollaConfigById \
    --id 'PsPRolruQ5qeaAYm' \
    > test.out 2>&1
eval_tap $? 339 'TestXsollaConfigById' test.out

#- 340 UpdateXsollaUIConfig
samples/cli/sample-apps Platform updateXsollaUIConfig \
    --id 'LZL0oreIn83vZVgk' \
    --body '{"device": "DESKTOP", "showCloseButton": true, "size": "LARGE", "theme": "DEFAULT"}' \
    > test.out 2>&1
eval_tap $? 340 'UpdateXsollaUIConfig' test.out

#- 341 QueryPaymentProviderConfig
samples/cli/sample-apps Platform queryPaymentProviderConfig \
    --limit '48' \
    --namespace 'fpg1LgqFUnZlM2rs' \
    --offset '68' \
    --region 'PENKDTrXvBifsgVu' \
    > test.out 2>&1
eval_tap $? 341 'QueryPaymentProviderConfig' test.out

#- 342 CreatePaymentProviderConfig
samples/cli/sample-apps Platform createPaymentProviderConfig \
    --body '{"aggregate": "ADYEN", "namespace": "HG6s4pfdVYMyWUim", "region": "fwQX93GczUqSgJme", "sandboxTaxJarApiToken": "eP8IkdFZvCenu8Ta", "specials": ["ADYEN", "ADYEN", "PAYPAL"], "taxJarApiToken": "XIYmnxhRO8dva3Br", "taxJarEnabled": false, "useGlobalTaxJarApiToken": true}' \
    > test.out 2>&1
eval_tap $? 342 'CreatePaymentProviderConfig' test.out

#- 343 GetAggregatePaymentProviders
samples/cli/sample-apps Platform getAggregatePaymentProviders \
    > test.out 2>&1
eval_tap $? 343 'GetAggregatePaymentProviders' test.out

#- 344 DebugMatchedPaymentProviderConfig
samples/cli/sample-apps Platform debugMatchedPaymentProviderConfig \
    --namespace 'xmjFF7TfviynEYjB' \
    --region 'X9QhtxCHosWez4D6' \
    > test.out 2>&1
eval_tap $? 344 'DebugMatchedPaymentProviderConfig' test.out

#- 345 GetSpecialPaymentProviders
samples/cli/sample-apps Platform getSpecialPaymentProviders \
    > test.out 2>&1
eval_tap $? 345 'GetSpecialPaymentProviders' test.out

#- 346 UpdatePaymentProviderConfig
samples/cli/sample-apps Platform updatePaymentProviderConfig \
    --id 'cb1XtMnuExK6gZgS' \
    --body '{"aggregate": "ADYEN", "namespace": "YEyWDWAIdxjCaoxb", "region": "xpO0GYeTzyxwA2FP", "sandboxTaxJarApiToken": "lbDoNpzVI6S9qT6V", "specials": ["CHECKOUT", "ALIPAY", "ADYEN"], "taxJarApiToken": "bX6VjNf9NnVTpHOY", "taxJarEnabled": false, "useGlobalTaxJarApiToken": false}' \
    > test.out 2>&1
eval_tap $? 346 'UpdatePaymentProviderConfig' test.out

#- 347 DeletePaymentProviderConfig
samples/cli/sample-apps Platform deletePaymentProviderConfig \
    --id 'DlCB1m85GqfkH8or' \
    > test.out 2>&1
eval_tap $? 347 'DeletePaymentProviderConfig' test.out

#- 348 GetPaymentTaxConfig
samples/cli/sample-apps Platform getPaymentTaxConfig \
    > test.out 2>&1
eval_tap $? 348 'GetPaymentTaxConfig' test.out

#- 349 UpdatePaymentTaxConfig
samples/cli/sample-apps Platform updatePaymentTaxConfig \
    --body '{"sandboxTaxJarApiToken": "oJY9DYo5AIoUeY9q", "taxJarApiToken": "nKAzYV0lddx5TaNY", "taxJarEnabled": true, "taxJarProductCodesMapping": {"0UqFMToxkwCf3q08": "zTYNXkOkj192B0vY", "Z4fZVBhrOjkN9IGB": "RBeI8y66MzID0wZ3", "YK4f53dXLT700R43": "iTfBapGxDaeOIcoA"}}' \
    > test.out 2>&1
eval_tap $? 349 'UpdatePaymentTaxConfig' test.out

#- 350 SyncPaymentOrders
samples/cli/sample-apps Platform syncPaymentOrders \
    --nextEvaluatedKey 'zHfZx5VjFdNKBGSN' \
    --end 'tp4VxHCVBcDw7wOs' \
    --start 'TkDsqIdry5GAQdMP' \
    > test.out 2>&1
eval_tap $? 350 'SyncPaymentOrders' test.out

#- 351 PublicGetRootCategories
samples/cli/sample-apps Platform publicGetRootCategories \
    --namespace $AB_NAMESPACE \
    --language 'u8lLl89D2VEXOd1i' \
    --storeId 'BKzY5A6qprtve5ah' \
    > test.out 2>&1
eval_tap $? 351 'PublicGetRootCategories' test.out

#- 352 DownloadCategories
samples/cli/sample-apps Platform downloadCategories \
    --namespace $AB_NAMESPACE \
    --language 'pswdXCRSvpikrfP7' \
    --storeId 'G5grs0BJYS3qH0HW' \
    > test.out 2>&1
eval_tap $? 352 'DownloadCategories' test.out

#- 353 PublicGetCategory
samples/cli/sample-apps Platform publicGetCategory \
    --categoryPath '6kqcuF6IPGmioeto' \
    --namespace $AB_NAMESPACE \
    --language 'brogmjdIAKDlv7sD' \
    --storeId 'LzBVh6ufecbDQ0lt' \
    > test.out 2>&1
eval_tap $? 353 'PublicGetCategory' test.out

#- 354 PublicGetChildCategories
samples/cli/sample-apps Platform publicGetChildCategories \
    --categoryPath 'mx1QxCLBVGHhrpJ3' \
    --namespace $AB_NAMESPACE \
    --language 'cG6HVwocugkWnrI2' \
    --storeId '9WMnX2qcJSdI4lZl' \
    > test.out 2>&1
eval_tap $? 354 'PublicGetChildCategories' test.out

#- 355 PublicGetDescendantCategories
samples/cli/sample-apps Platform publicGetDescendantCategories \
    --categoryPath 'PQKBOK2rEnreSE6R' \
    --namespace $AB_NAMESPACE \
    --language 'z1ZL2DCHtLcrgNtW' \
    --storeId 'BBNgQUMT9517Y7aT' \
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
    --dlcType 'EPICGAMES' \
    > test.out 2>&1
eval_tap $? 357 'GeDLCDurableRewardShortMap' test.out

#- 358 GetIAPItemMapping
samples/cli/sample-apps Platform getIAPItemMapping \
    --namespace $AB_NAMESPACE \
    --platform 'STADIA' \
    > test.out 2>&1
eval_tap $? 358 'GetIAPItemMapping' test.out

#- 359 PublicGetItemByAppId
samples/cli/sample-apps Platform publicGetItemByAppId \
    --namespace $AB_NAMESPACE \
    --language 'd2a17r0gOCYX1mPI' \
    --region 'O94ICqAeKJBbbbuo' \
    --storeId 'hqcz0HvI3HUStAHk' \
    --appId 'rjSUf943OpLOBsCq' \
    > test.out 2>&1
eval_tap $? 359 'PublicGetItemByAppId' test.out

#- 360 PublicQueryItems
samples/cli/sample-apps Platform publicQueryItems \
    --namespace $AB_NAMESPACE \
    --appType 'DEMO' \
    --autoCalcEstimatedPrice 'true' \
    --baseAppId '6cMotnnZbRCbEKN7' \
    --categoryPath '26iw4sFwfpFsij8m' \
    --features 'chUsfd5Al9XBzJUj' \
    --includeSubCategoryItem 'false' \
    --itemType 'INGAMEITEM' \
    --language 'z4ScIe0erGRrF5Ri' \
    --limit '81' \
    --offset '13' \
    --region 'VFsFXbiZX3bQG78I' \
    --sortBy '["displayOrder:desc", "displayOrder:asc", "name:desc"]' \
    --storeId 'kHMS7AI477P0SfIr' \
    --tags 'aq7t3cyp1uTFOxsk' \
    > test.out 2>&1
eval_tap $? 360 'PublicQueryItems' test.out

#- 361 PublicGetItemBySku
samples/cli/sample-apps Platform publicGetItemBySku \
    --namespace $AB_NAMESPACE \
    --autoCalcEstimatedPrice 'false' \
    --language 'cwxkaQtQDgNzUf9Y' \
    --region 'XIjXgsjATbk5O6j5' \
    --storeId 'eOhFJot3DkWAK4HM' \
    --sku '8YaQ1CrxTmnlomGQ' \
    > test.out 2>&1
eval_tap $? 361 'PublicGetItemBySku' test.out

#- 362 PublicGetEstimatedPrice
samples/cli/sample-apps Platform publicGetEstimatedPrice \
    --namespace $AB_NAMESPACE \
    --region '2UGw78CxnkrpQsrk' \
    --storeId 'JqazhNV2cjm5q8VE' \
    --itemIds 'XMK2SRAh5ZzpnJxL' \
    > test.out 2>&1
eval_tap $? 362 'PublicGetEstimatedPrice' test.out

#- 363 PublicBulkGetItems
samples/cli/sample-apps Platform publicBulkGetItems \
    --namespace $AB_NAMESPACE \
    --autoCalcEstimatedPrice 'false' \
    --language 'XxKJMzqnp1TPfMOv' \
    --region 'SbX08PBgvLHTDgiS' \
    --storeId 'gGhkfL16EL7n9jn2' \
    --itemIds 'LiJdk8AbBnlMvw4p' \
    > test.out 2>&1
eval_tap $? 363 'PublicBulkGetItems' test.out

#- 364 PublicValidateItemPurchaseCondition
samples/cli/sample-apps Platform publicValidateItemPurchaseCondition \
    --namespace $AB_NAMESPACE \
    --body '{"itemIds": ["uJ4sCL8cGBA2cQ0V", "SsS2e0TxNfhjQGB0", "NF9dCTLeMdZqAUtf"]}' \
    > test.out 2>&1
eval_tap $? 364 'PublicValidateItemPurchaseCondition' test.out

#- 365 PublicSearchItems
samples/cli/sample-apps Platform publicSearchItems \
    --namespace $AB_NAMESPACE \
    --autoCalcEstimatedPrice 'true' \
    --itemType 'BUNDLE' \
    --limit '2' \
    --offset '69' \
    --region 'XdgxuXkILXMfT8pq' \
    --storeId 'CNlmCEPwzbpcakF5' \
    --keyword 'mZJwwx7zFUUMvR4h' \
    --language 'YlR9WWRwTsgPjVim' \
    > test.out 2>&1
eval_tap $? 365 'PublicSearchItems' test.out

#- 366 PublicGetApp
samples/cli/sample-apps Platform publicGetApp \
    --itemId 'Oo6SvwyjDAjSUFee' \
    --namespace $AB_NAMESPACE \
    --language 'zvGj6lDwVdwAnUzN' \
    --region 'zyLANMd7OJ6TbiXl' \
    --storeId 'UHhHwkqwPb1iqlMh' \
    > test.out 2>&1
eval_tap $? 366 'PublicGetApp' test.out

#- 367 PublicGetItemDynamicData
samples/cli/sample-apps Platform publicGetItemDynamicData \
    --itemId 'Bev2OBuP4lk055hD' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 367 'PublicGetItemDynamicData' test.out

#- 368 PublicGetItem
samples/cli/sample-apps Platform publicGetItem \
    --itemId 'Kjy5Z9BmrVfjHmIP' \
    --namespace $AB_NAMESPACE \
    --autoCalcEstimatedPrice 'true' \
    --language 'IYV5s68XnscxhHUT' \
    --populateBundle 'false' \
    --region 'WW282VxrCcCe9iNI' \
    --storeId 'fcbAako9msndGLCM' \
    > test.out 2>&1
eval_tap $? 368 'PublicGetItem' test.out

#- 369 GetPaymentCustomization
eval_tap 0 369 'GetPaymentCustomization # SKIP deprecated' test.out

#- 370 PublicGetPaymentUrl
samples/cli/sample-apps Platform publicGetPaymentUrl \
    --namespace $AB_NAMESPACE \
    --body '{"paymentOrderNo": "jnW54y0tMwoIXJq5", "paymentProvider": "CHECKOUT", "returnUrl": "gfhEbYkJWIM1DZWh", "ui": "lGbQHVvQSCnz4ZET", "zipCode": "wLGAwTfQGu9s9uBR"}' \
    > test.out 2>&1
eval_tap $? 370 'PublicGetPaymentUrl' test.out

#- 371 PublicGetPaymentMethods
samples/cli/sample-apps Platform publicGetPaymentMethods \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'Sgbo6ZWtdcE1MsAe' \
    > test.out 2>&1
eval_tap $? 371 'PublicGetPaymentMethods' test.out

#- 372 PublicGetUnpaidPaymentOrder
samples/cli/sample-apps Platform publicGetUnpaidPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'I5oSZAcJBqjVIOwi' \
    > test.out 2>&1
eval_tap $? 372 'PublicGetUnpaidPaymentOrder' test.out

#- 373 Pay
samples/cli/sample-apps Platform pay \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'mIkvlk3ohIvjOP9g' \
    --paymentProvider 'WXPAY' \
    --zipCode 'mSbPHxREJn99T9YJ' \
    --body '{"token": "h6Ne4VPBNRKZcut1"}' \
    > test.out 2>&1
eval_tap $? 373 'Pay' test.out

#- 374 PublicCheckPaymentOrderPaidStatus
samples/cli/sample-apps Platform publicCheckPaymentOrderPaidStatus \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'Z3JsIHuorOnTKhQn' \
    > test.out 2>&1
eval_tap $? 374 'PublicCheckPaymentOrderPaidStatus' test.out

#- 375 GetPaymentPublicConfig
samples/cli/sample-apps Platform getPaymentPublicConfig \
    --namespace $AB_NAMESPACE \
    --sandbox 'false' \
    --paymentProvider 'WXPAY' \
    --region 'u9S9QVA0nJXFfNGi' \
    > test.out 2>&1
eval_tap $? 375 'GetPaymentPublicConfig' test.out

#- 376 PublicGetQRCode
samples/cli/sample-apps Platform publicGetQRCode \
    --namespace $AB_NAMESPACE \
    --code 'T1p5rdtTZxeXT4uy' \
    > test.out 2>&1
eval_tap $? 376 'PublicGetQRCode' test.out

#- 377 PublicNormalizePaymentReturnUrl
samples/cli/sample-apps Platform publicNormalizePaymentReturnUrl \
    --namespace $AB_NAMESPACE \
    --payerID 'KKluQDcBGOETc4lI' \
    --foreinginvoice 'wxRRZy2prOPHJJWp' \
    --invoiceId 'nD3PtwC8scFbAkVG' \
    --payload 'aNP6rDC2sNcWHgyz' \
    --redirectResult 'FLPgLIV9nmLUUpFo' \
    --resultCode 'B1jVwviDJYk0MeHK' \
    --sessionId 'HXg4YhjeE375fAJU' \
    --status 'f3dIz0R9psusN3VS' \
    --token '1EgsT8yWH58R8oGn' \
    --type 'w5ZFFzTVwxzneUMV' \
    --userId 'wd68Q5N9qPT0Jbpd' \
    --orderNo 'E6TrEl4Pe5LH9i0v' \
    --paymentOrderNo 'Tw4USaD5N7V6PvNz' \
    --paymentProvider 'ALIPAY' \
    --returnUrl 'MC6YaVSjCkrWPIaQ' \
    > test.out 2>&1
eval_tap $? 377 'PublicNormalizePaymentReturnUrl' test.out

#- 378 GetPaymentTaxValue
samples/cli/sample-apps Platform getPaymentTaxValue \
    --namespace $AB_NAMESPACE \
    --zipCode '5KnGWuQoh1Yv4VS0' \
    --paymentOrderNo 'Xjm1Q0E1ENTgQwcx' \
    --paymentProvider 'PAYPAL' \
    > test.out 2>&1
eval_tap $? 378 'GetPaymentTaxValue' test.out

#- 379 GetRewardByCode
samples/cli/sample-apps Platform getRewardByCode \
    --namespace $AB_NAMESPACE \
    --rewardCode 'JCdMPTqHGOFWl0eL' \
    > test.out 2>&1
eval_tap $? 379 'GetRewardByCode' test.out

#- 380 QueryRewards1
samples/cli/sample-apps Platform queryRewards1 \
    --namespace $AB_NAMESPACE \
    --eventTopic 'rJPQrNh91g1GvHlF' \
    --limit '93' \
    --offset '89' \
    --sortBy '["namespace:asc", "namespace"]' \
    > test.out 2>&1
eval_tap $? 380 'QueryRewards1' test.out

#- 381 GetReward1
samples/cli/sample-apps Platform getReward1 \
    --namespace $AB_NAMESPACE \
    --rewardId 'HIwMl4kCuRq0SnvY' \
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
    --appIds '["mnqY47cYcpLOZ0Tr", "QS7beLbGGI9QizaW", "xhaz6B2KBJOGhqGe"]' \
    --itemIds '["OcOvcJm8jDm0FxaI", "131b2viFbRoRN2B9", "lsmVSJNrWcEvMibW"]' \
    --skus '["FbFIn9TZLMJs8h3H", "W9bw3n6tmu6bf7yn", "v0l4cNXjm7dRQ6KV"]' \
    > test.out 2>&1
eval_tap $? 383 'PublicExistsAnyMyActiveEntitlement' test.out

#- 384 PublicGetMyAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform publicGetMyAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --appId 'Y8hUNw1VTT06iXmi' \
    > test.out 2>&1
eval_tap $? 384 'PublicGetMyAppEntitlementOwnershipByAppId' test.out

#- 385 PublicGetMyEntitlementOwnershipByItemId
samples/cli/sample-apps Platform publicGetMyEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --entitlementClazz 'ENTITLEMENT' \
    --itemId 'xTYjzkTkEmY4Cx0k' \
    > test.out 2>&1
eval_tap $? 385 'PublicGetMyEntitlementOwnershipByItemId' test.out

#- 386 PublicGetMyEntitlementOwnershipBySku
samples/cli/sample-apps Platform publicGetMyEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --entitlementClazz 'CODE' \
    --sku '5dgh8jvQlY9CujUz' \
    > test.out 2>&1
eval_tap $? 386 'PublicGetMyEntitlementOwnershipBySku' test.out

#- 387 PublicGetEntitlementOwnershipToken
samples/cli/sample-apps Platform publicGetEntitlementOwnershipToken \
    --namespace $AB_NAMESPACE \
    --appIds '["JAxP79dIRN6ZJGuv", "baxzYlz4plLlfqTK", "RLrSnSnmhyknmv4t"]' \
    --itemIds '["uWFZJ2GalX0CkfDj", "654fVCJIJeAge4z7", "Hv85l6mkpcyOshaS"]' \
    --skus '["JWvmmjIz727EdvU0", "gNlsqe5ADxLUy2ID", "c3XZLGqAwXsI7IoT"]' \
    > test.out 2>&1
eval_tap $? 387 'PublicGetEntitlementOwnershipToken' test.out

#- 388 SyncTwitchDropsEntitlement
samples/cli/sample-apps Platform syncTwitchDropsEntitlement \
    --namespace $AB_NAMESPACE \
    --body '{"gameId": "hYRrhKfbPk5i4quQ", "language": "taZ_kLTq_757", "region": "QdqVBpwvi7Mu44av"}' \
    > test.out 2>&1
eval_tap $? 388 'SyncTwitchDropsEntitlement' test.out

#- 389 PublicGetMyWallet
samples/cli/sample-apps Platform publicGetMyWallet \
    --currencyCode 'chhm6thD1qQowsrk' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 389 'PublicGetMyWallet' test.out

#- 390 SyncEpicGameDLC
samples/cli/sample-apps Platform syncEpicGameDLC \
    --namespace $AB_NAMESPACE \
    --userId 'sa8qODGbFCy1cCKZ' \
    --body '{"epicGamesJwtToken": "kFfSQXgwQIvdg6Av"}' \
    > test.out 2>&1
eval_tap $? 390 'SyncEpicGameDLC' test.out

#- 391 SyncOculusDLC
samples/cli/sample-apps Platform syncOculusDLC \
    --namespace $AB_NAMESPACE \
    --userId 'MFLXjhrISvu1MLbe' \
    > test.out 2>&1
eval_tap $? 391 'SyncOculusDLC' test.out

#- 392 PublicSyncPsnDlcInventory
samples/cli/sample-apps Platform publicSyncPsnDlcInventory \
    --namespace $AB_NAMESPACE \
    --userId 'DortarBfP6ZvSu3b' \
    --body '{"serviceLabel": 16}' \
    > test.out 2>&1
eval_tap $? 392 'PublicSyncPsnDlcInventory' test.out

#- 393 PublicSyncPsnDlcInventoryWithMultipleServiceLabels
samples/cli/sample-apps Platform publicSyncPsnDlcInventoryWithMultipleServiceLabels \
    --namespace $AB_NAMESPACE \
    --userId 'GIystdogFO8IkCUK' \
    --body '{"serviceLabels": [8, 41, 77]}' \
    > test.out 2>&1
eval_tap $? 393 'PublicSyncPsnDlcInventoryWithMultipleServiceLabels' test.out

#- 394 SyncSteamDLC
samples/cli/sample-apps Platform syncSteamDLC \
    --namespace $AB_NAMESPACE \
    --userId 'YSKmuZmBcTeU5qdm' \
    --body '{"appId": "prwht30UVYDfszcT", "steamId": "bd85GY9wp7uZrI7E"}' \
    > test.out 2>&1
eval_tap $? 394 'SyncSteamDLC' test.out

#- 395 SyncXboxDLC
samples/cli/sample-apps Platform syncXboxDLC \
    --namespace $AB_NAMESPACE \
    --userId 'QAfO6kdOR3y1zwgV' \
    --body '{"xstsToken": "bDoNJumLDwM2BSZs"}' \
    > test.out 2>&1
eval_tap $? 395 'SyncXboxDLC' test.out

#- 396 PublicQueryUserEntitlements
samples/cli/sample-apps Platform publicQueryUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId '71Lm2Kjw6zaW9lEh' \
    --appType 'GAME' \
    --entitlementClazz 'MEDIA' \
    --entitlementName '0jIiKx4LQTWfK41z' \
    --features '["MkA3cSJllbYwHPgr", "eWsPdNfcqDxLtBX4", "Yn9WejUUVRxVK28t"]' \
    --itemId '["SNd7sDrklwupC9xU", "2NVqakKtTVlSuzNM", "qZaJg1jyp03Rvnsc"]' \
    --limit '9' \
    --offset '18' \
    > test.out 2>&1
eval_tap $? 396 'PublicQueryUserEntitlements' test.out

#- 397 PublicGetUserAppEntitlementByAppId
samples/cli/sample-apps Platform publicGetUserAppEntitlementByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'sP9frE37Hls8mZRg' \
    --appId 'TrWRdMBGcx5b90uS' \
    > test.out 2>&1
eval_tap $? 397 'PublicGetUserAppEntitlementByAppId' test.out

#- 398 PublicQueryUserEntitlementsByAppType
samples/cli/sample-apps Platform publicQueryUserEntitlementsByAppType \
    --namespace $AB_NAMESPACE \
    --userId 'TtjzB7VMimyj45FY' \
    --limit '95' \
    --offset '46' \
    --appType 'GAME' \
    > test.out 2>&1
eval_tap $? 398 'PublicQueryUserEntitlementsByAppType' test.out

#- 399 PublicGetUserEntitlementsByIds
samples/cli/sample-apps Platform publicGetUserEntitlementsByIds \
    --namespace $AB_NAMESPACE \
    --userId 'COepIzOWy9lyc82d' \
    --availablePlatformOnly 'true' \
    --ids '["5X4iDlHaIlXS2VRM", "UhK9UOIACUQeImYR", "8H2ORp4mDE6sylZU"]' \
    > test.out 2>&1
eval_tap $? 399 'PublicGetUserEntitlementsByIds' test.out

#- 400 PublicGetUserEntitlementByItemId
eval_tap 0 400 'PublicGetUserEntitlementByItemId # SKIP deprecated' test.out

#- 401 PublicGetUserEntitlementBySku
eval_tap 0 401 'PublicGetUserEntitlementBySku # SKIP deprecated' test.out

#- 402 PublicUserEntitlementHistory
samples/cli/sample-apps Platform publicUserEntitlementHistory \
    --namespace $AB_NAMESPACE \
    --userId 'qzzOgxtPtkn95EJM' \
    --endDate 'KTxegxGWOUh04fEl' \
    --entitlementClazz 'MEDIA' \
    --limit '56' \
    --offset '30' \
    --startDate 'GJnklogBhNeXmMB2' \
    > test.out 2>&1
eval_tap $? 402 'PublicUserEntitlementHistory' test.out

#- 403 PublicExistsAnyUserActiveEntitlement
samples/cli/sample-apps Platform publicExistsAnyUserActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'm1C29DSNvob2QCdq' \
    --appIds '["xxHYooWPUMDIwzC4", "ES7wt3lfVt35zFKl", "ix4xLXOoO9GEUKVb"]' \
    --itemIds '["vNDFhI3CzudTUgpR", "QuUV0wMuf76eXmHA", "7A4mIfC7LjJXqrNH"]' \
    --skus '["9qYBYi9aHEujMxbm", "1e76NJs38NXrtFKV", "6JqgLqjsVXtsWHFb"]' \
    > test.out 2>&1
eval_tap $? 403 'PublicExistsAnyUserActiveEntitlement' test.out

#- 404 PublicGetUserAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform publicGetUserAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'P8O0yphvnuT4Nmh3' \
    --appId 'IFJMQAttXtGX3ZmE' \
    > test.out 2>&1
eval_tap $? 404 'PublicGetUserAppEntitlementOwnershipByAppId' test.out

#- 405 PublicGetUserEntitlementOwnershipByItemId
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'zyMiz3M4bVipgVwM' \
    --entitlementClazz 'CODE' \
    --itemId 'Oy4N8Vf7oJwUml12' \
    > test.out 2>&1
eval_tap $? 405 'PublicGetUserEntitlementOwnershipByItemId' test.out

#- 406 PublicGetUserEntitlementOwnershipByItemIds
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'Xv9S1pv9AigLw5zY' \
    --ids '["O9vPyYGBdGCd9BjI", "DjVIlz2aqHtikeuw", "ophDAh7RTmGcOq3y"]' \
    > test.out 2>&1
eval_tap $? 406 'PublicGetUserEntitlementOwnershipByItemIds' test.out

#- 407 PublicGetUserEntitlementOwnershipBySku
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --userId 'huSwvQPbDCKgiw91' \
    --entitlementClazz 'APP' \
    --sku 'MX8RwhrJ5bQ6uj2K' \
    > test.out 2>&1
eval_tap $? 407 'PublicGetUserEntitlementOwnershipBySku' test.out

#- 408 PublicGetUserEntitlement
samples/cli/sample-apps Platform publicGetUserEntitlement \
    --entitlementId 'yXrIBxQcOhB6nhXe' \
    --namespace $AB_NAMESPACE \
    --userId 'PZTTxrphBltUlste' \
    > test.out 2>&1
eval_tap $? 408 'PublicGetUserEntitlement' test.out

#- 409 PublicConsumeUserEntitlement
samples/cli/sample-apps Platform publicConsumeUserEntitlement \
    --entitlementId 'IhixKMln6ILuQwGH' \
    --namespace $AB_NAMESPACE \
    --userId 'qlbc56C9qcMZLkFq' \
    --body '{"options": ["FKN7KmmsG1npWCIG", "Fk2RB3l5PJmkX1JL", "kxc9vQDw9oLpF4al"], "requestId": "pITRrpAw3b6IX1SQ", "useCount": 23}' \
    > test.out 2>&1
eval_tap $? 409 'PublicConsumeUserEntitlement' test.out

#- 410 PublicSellUserEntitlement
samples/cli/sample-apps Platform publicSellUserEntitlement \
    --entitlementId 'VzIaYagZoZ7anU11' \
    --namespace $AB_NAMESPACE \
    --userId 'H7Be8VXaKudHejTC' \
    --body '{"requestId": "Txpz5Hcpt7wO8Upo", "useCount": 11}' \
    > test.out 2>&1
eval_tap $? 410 'PublicSellUserEntitlement' test.out

#- 411 PublicSplitUserEntitlement
samples/cli/sample-apps Platform publicSplitUserEntitlement \
    --entitlementId 'nNTP7Wyifqy6WHBA' \
    --namespace $AB_NAMESPACE \
    --userId 'i1JRrBvvUOcA9qfE' \
    --body '{"useCount": 84}' \
    > test.out 2>&1
eval_tap $? 411 'PublicSplitUserEntitlement' test.out

#- 412 PublicTransferUserEntitlement
samples/cli/sample-apps Platform publicTransferUserEntitlement \
    --entitlementId 'S4DXt6YLVpAydHpm' \
    --namespace $AB_NAMESPACE \
    --userId 'DdAvYEwJNqbO3X9p' \
    --body '{"entitlementId": "pD4wPqm2N8TXrcjV", "useCount": 11}' \
    > test.out 2>&1
eval_tap $? 412 'PublicTransferUserEntitlement' test.out

#- 413 PublicRedeemCode
samples/cli/sample-apps Platform publicRedeemCode \
    --namespace $AB_NAMESPACE \
    --userId 'SUY414hlXMaMzjrp' \
    --body '{"code": "ROB9NUlC3NquKPYj", "language": "BCJD", "region": "7pJNIonCRLg2lTll"}' \
    > test.out 2>&1
eval_tap $? 413 'PublicRedeemCode' test.out

#- 414 PublicFulfillAppleIAPItem
samples/cli/sample-apps Platform publicFulfillAppleIAPItem \
    --namespace $AB_NAMESPACE \
    --userId '61zV9u4KHdLcankw' \
    --body '{"excludeOldTransactions": true, "language": "IGQb_743", "productId": "mxwGwPWHO0tZotxn", "receiptData": "ntCH3lxW2nuIW0km", "region": "qKxzDzND89WEm4Ti", "transactionId": "tEUTewE0OmcTVAW7"}' \
    > test.out 2>&1
eval_tap $? 414 'PublicFulfillAppleIAPItem' test.out

#- 415 SyncEpicGamesInventory
samples/cli/sample-apps Platform syncEpicGamesInventory \
    --namespace $AB_NAMESPACE \
    --userId 'WiqMUXfV2yJrPwkJ' \
    --body '{"epicGamesJwtToken": "cJ8Hq6XqaSPMu08r"}' \
    > test.out 2>&1
eval_tap $? 415 'SyncEpicGamesInventory' test.out

#- 416 PublicFulfillGoogleIAPItem
samples/cli/sample-apps Platform publicFulfillGoogleIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'NvLH6PycS05AZdKn' \
    --body '{"autoAck": true, "language": "RoC_uQ", "orderId": "4SyQGeHCLD0HOGIX", "packageName": "V4Zwwrsh1exZdCvg", "productId": "jLgBN3KwOxpLuUpf", "purchaseTime": 99, "purchaseToken": "5MSzUPQ0BHcPnvjO", "region": "0JwIBIGERAB4UgLB"}' \
    > test.out 2>&1
eval_tap $? 416 'PublicFulfillGoogleIAPItem' test.out

#- 417 SyncOculusConsumableEntitlements
samples/cli/sample-apps Platform syncOculusConsumableEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'EsqLHImw5EyaS5v8' \
    > test.out 2>&1
eval_tap $? 417 'SyncOculusConsumableEntitlements' test.out

#- 418 PublicReconcilePlayStationStore
samples/cli/sample-apps Platform publicReconcilePlayStationStore \
    --namespace $AB_NAMESPACE \
    --userId 'vMhNq5XfaqCbNcWo' \
    --body '{"currencyCode": "1DAbMJKEN4NlkLH5", "price": 0.5337921174319411, "productId": "CSssKzuyCdfaRGJ0", "serviceLabel": 59}' \
    > test.out 2>&1
eval_tap $? 418 'PublicReconcilePlayStationStore' test.out

#- 419 PublicReconcilePlayStationStoreWithMultipleServiceLabels
samples/cli/sample-apps Platform publicReconcilePlayStationStoreWithMultipleServiceLabels \
    --namespace $AB_NAMESPACE \
    --userId 'cDGJHwQPQ0RuouTJ' \
    --body '{"currencyCode": "5Ugj6fuoGXkLR7Xx", "price": 0.7850743633039223, "productId": "SOQkXi63vECuZnau", "serviceLabels": [83, 91, 51]}' \
    > test.out 2>&1
eval_tap $? 419 'PublicReconcilePlayStationStoreWithMultipleServiceLabels' test.out

#- 420 SyncSteamInventory
samples/cli/sample-apps Platform syncSteamInventory \
    --namespace $AB_NAMESPACE \
    --userId 'gGnRDubBhTMxzqmv' \
    --body '{"appId": "U3GAwEauEMfZQmrQ", "currencyCode": "KzNqi7ijufKIB71F", "language": "jo-iehS_rH", "price": 0.9261989305697045, "productId": "NI52iQXO2mEFoDxv", "region": "8fGKuCoOCQYVm2ny", "steamId": "ApjC54NDOUA2bK0g"}' \
    > test.out 2>&1
eval_tap $? 420 'SyncSteamInventory' test.out

#- 421 SyncTwitchDropsEntitlement1
samples/cli/sample-apps Platform syncTwitchDropsEntitlement1 \
    --namespace $AB_NAMESPACE \
    --userId 'GlgtOyNEpwYSh2Q4' \
    --body '{"gameId": "ljHNKsEwdfsngnYE", "language": "OD_dfjx", "region": "ULFyduMTXQJXc3Fp"}' \
    > test.out 2>&1
eval_tap $? 421 'SyncTwitchDropsEntitlement1' test.out

#- 422 SyncXboxInventory
samples/cli/sample-apps Platform syncXboxInventory \
    --namespace $AB_NAMESPACE \
    --userId 'KKgOUP6myrIMpdya' \
    --body '{"currencyCode": "gJbmPMcrdXc5Lq1u", "price": 0.6879417912342827, "productId": "VbzV0e67WOYtCgGf", "xstsToken": "M8sU5uAItnACDXYs"}' \
    > test.out 2>&1
eval_tap $? 422 'SyncXboxInventory' test.out

#- 423 PublicQueryUserOrders
samples/cli/sample-apps Platform publicQueryUserOrders \
    --namespace $AB_NAMESPACE \
    --userId 'exc1A1LIBwB2buL5' \
    --itemId '7LpWhl3nix6Vuxz3' \
    --limit '22' \
    --offset '68' \
    --status 'REFUND_FAILED' \
    > test.out 2>&1
eval_tap $? 423 'PublicQueryUserOrders' test.out

#- 424 PublicCreateUserOrder
samples/cli/sample-apps Platform publicCreateUserOrder \
    --namespace $AB_NAMESPACE \
    --userId 'Mq01DNomR9hoy1kf' \
    --body '{"currencyCode": "Y0CDStLxH8T5jbH6", "discountedPrice": 35, "ext": {"wHihOKBU6YPwWyv1": {}, "nZdUmwNLlUy0r4Id": {}, "eyXlUqRuuzRoA5eT": {}}, "itemId": "6ZECZot1L6eedaqZ", "language": "FBG_cK", "price": 14, "quantity": 11, "region": "PAAHVDVxPetUpQRs", "returnUrl": "8M2rGLz5NTBd2Brs", "sectionId": "bfpQfCgx9KOf9FRP"}' \
    > test.out 2>&1
eval_tap $? 424 'PublicCreateUserOrder' test.out

#- 425 PublicGetUserOrder
samples/cli/sample-apps Platform publicGetUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'eU1ONT9gbtEjN4yy' \
    --userId 'ob0Itrrf4uLZKxML' \
    > test.out 2>&1
eval_tap $? 425 'PublicGetUserOrder' test.out

#- 426 PublicCancelUserOrder
samples/cli/sample-apps Platform publicCancelUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo '6Q3HQRCNEkS8QvAS' \
    --userId 'D1ilc1LhwwTW1H9K' \
    > test.out 2>&1
eval_tap $? 426 'PublicCancelUserOrder' test.out

#- 427 PublicGetUserOrderHistories
samples/cli/sample-apps Platform publicGetUserOrderHistories \
    --namespace $AB_NAMESPACE \
    --orderNo 'Rz1kN00QOUxldpHx' \
    --userId 'HlpCb5xLfxS9yM8D' \
    > test.out 2>&1
eval_tap $? 427 'PublicGetUserOrderHistories' test.out

#- 428 PublicDownloadUserOrderReceipt
samples/cli/sample-apps Platform publicDownloadUserOrderReceipt \
    --namespace $AB_NAMESPACE \
    --orderNo '15U6tprR8XRCH3X9' \
    --userId 'UtjdPfL03MzXCTAr' \
    > test.out 2>&1
eval_tap $? 428 'PublicDownloadUserOrderReceipt' test.out

#- 429 PublicGetPaymentAccounts
samples/cli/sample-apps Platform publicGetPaymentAccounts \
    --namespace $AB_NAMESPACE \
    --userId 'DqsmKZ0T3LNZhQcU' \
    > test.out 2>&1
eval_tap $? 429 'PublicGetPaymentAccounts' test.out

#- 430 PublicDeletePaymentAccount
samples/cli/sample-apps Platform publicDeletePaymentAccount \
    --id '4TyBjxa2dBsBkHSW' \
    --namespace $AB_NAMESPACE \
    --type 'card' \
    --userId 'gwxjAwkqSAKoUyvx' \
    > test.out 2>&1
eval_tap $? 430 'PublicDeletePaymentAccount' test.out

#- 431 PublicListActiveSections
samples/cli/sample-apps Platform publicListActiveSections \
    --namespace $AB_NAMESPACE \
    --userId 'i8dt9lvIn5XcHahm' \
    --autoCalcEstimatedPrice 'true' \
    --language 'dGCNAyZPqb4i5woz' \
    --region 'SPZY0b2oqp7niw9j' \
    --storeId 'ssMguuSZoAQ6hZre' \
    --viewId '7HvZ0oX1nJTYgkwx' \
    > test.out 2>&1
eval_tap $? 431 'PublicListActiveSections' test.out

#- 432 PublicQueryUserSubscriptions
samples/cli/sample-apps Platform publicQueryUserSubscriptions \
    --namespace $AB_NAMESPACE \
    --userId 'dVF8p6ERmrMJNl7B' \
    --chargeStatus 'NEVER' \
    --itemId '57yAcS20FMcw8fX5' \
    --limit '41' \
    --offset '96' \
    --sku 'xvLrU8qUek8Iq4H2' \
    --status 'ACTIVE' \
    --subscribedBy 'USER' \
    > test.out 2>&1
eval_tap $? 432 'PublicQueryUserSubscriptions' test.out

#- 433 PublicSubscribeSubscription
samples/cli/sample-apps Platform publicSubscribeSubscription \
    --namespace $AB_NAMESPACE \
    --userId 'M97EFwg8tQoOj0i9' \
    --body '{"currencyCode": "vqeMTa64hmOYvJkP", "itemId": "z45xqlo4z7DE19ef", "language": "ESGd-MCdx_521", "region": "uvwvnl0dJTTC7DdT", "returnUrl": "WlSBDZsaq9TNEyhs", "source": "bdRw2bfF3wDwJXXU"}' \
    > test.out 2>&1
eval_tap $? 433 'PublicSubscribeSubscription' test.out

#- 434 PublicCheckUserSubscriptionSubscribableByItemId
samples/cli/sample-apps Platform publicCheckUserSubscriptionSubscribableByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'Oh30mQirTqiD2sh6' \
    --itemId 'KMuSbUdzv3zzXcIA' \
    > test.out 2>&1
eval_tap $? 434 'PublicCheckUserSubscriptionSubscribableByItemId' test.out

#- 435 PublicGetUserSubscription
samples/cli/sample-apps Platform publicGetUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'l6WhX7leXtNA7lJV' \
    --userId 'GdFrqfRArFkRGgY3' \
    > test.out 2>&1
eval_tap $? 435 'PublicGetUserSubscription' test.out

#- 436 PublicChangeSubscriptionBillingAccount
samples/cli/sample-apps Platform publicChangeSubscriptionBillingAccount \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'OXmqwFZRm3pTFaGH' \
    --userId 'xHDn6GcTMIEHyATv' \
    > test.out 2>&1
eval_tap $? 436 'PublicChangeSubscriptionBillingAccount' test.out

#- 437 PublicCancelSubscription
samples/cli/sample-apps Platform publicCancelSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'uRIfDEPQ0j0rNgbL' \
    --userId '41vgiJg5rx6MEpJC' \
    --body '{"immediate": true, "reason": "hmgcrtxQ7B3EA3Kg"}' \
    > test.out 2>&1
eval_tap $? 437 'PublicCancelSubscription' test.out

#- 438 PublicGetUserSubscriptionBillingHistories
samples/cli/sample-apps Platform publicGetUserSubscriptionBillingHistories \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'C2QHYcDeejcHmAJF' \
    --userId 'chCmlVP8XNRumpbC' \
    --excludeFree 'false' \
    --limit '81' \
    --offset '1' \
    > test.out 2>&1
eval_tap $? 438 'PublicGetUserSubscriptionBillingHistories' test.out

#- 439 PublicListViews
samples/cli/sample-apps Platform publicListViews \
    --namespace $AB_NAMESPACE \
    --userId 'YoYxEnrfW6Gmi00D' \
    --language 'gkkPkGzoPQxBgcyB' \
    --storeId 'vICqDKT8uuBorYUA' \
    > test.out 2>&1
eval_tap $? 439 'PublicListViews' test.out

#- 440 PublicGetWallet
samples/cli/sample-apps Platform publicGetWallet \
    --currencyCode '8u3HtXEUM6LqTElp' \
    --namespace $AB_NAMESPACE \
    --userId 'ehVqK7Zsq6gRFsIr' \
    > test.out 2>&1
eval_tap $? 440 'PublicGetWallet' test.out

#- 441 PublicListUserWalletTransactions
samples/cli/sample-apps Platform publicListUserWalletTransactions \
    --currencyCode 'zmHxbRjalMG2n2eQ' \
    --namespace $AB_NAMESPACE \
    --userId 'rCDzKRa4G7wSuBHn' \
    --limit '39' \
    --offset '37' \
    > test.out 2>&1
eval_tap $? 441 'PublicListUserWalletTransactions' test.out

#- 442 QueryItems1
samples/cli/sample-apps Platform queryItems1 \
    --namespace $AB_NAMESPACE \
    --appType 'GAME' \
    --availableDate 'cpdQVySUUY622wYW' \
    --baseAppId 'xjdQRLXFgpUqEUnB' \
    --categoryPath 'iDdlXrPNfxEe5zvC' \
    --features 'cVjbjgXy5o8POWQR' \
    --includeSubCategoryItem 'false' \
    --itemName '5o3qdv5BcIey4KoI' \
    --itemStatus 'INACTIVE' \
    --itemType 'COINS' \
    --limit '37' \
    --offset '49' \
    --region 'GHIDkej98DAdNrJH' \
    --sectionExclusive 'false' \
    --sortBy '["createdAt", "name:desc"]' \
    --storeId 'xrzb4A14SUtQK2dS' \
    --tags 'C6q8s0xotQ9nT4n2' \
    --targetNamespace 'ZkHyW9kUTd9trJd9' \
    --withTotal 'false' \
    > test.out 2>&1
eval_tap $? 442 'QueryItems1' test.out

#- 443 ImportStore1
samples/cli/sample-apps Platform importStore1 \
    --namespace $AB_NAMESPACE \
    --storeId 'bpZR6HpEhLIKP7Gp' \
    --strictMode 'true' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 443 'ImportStore1' test.out

#- 444 ExportStore1
samples/cli/sample-apps Platform exportStore1 \
    --namespace $AB_NAMESPACE \
    --storeId '0EZiFgmnUWq6ySDd' \
    --body '{"itemIds": ["y8H30rliawWdEaKy", "RD0UzkxHhGIlm4Ae", "gLfKgNBvwK977Vs5"]}' \
    > test.out 2>&1
eval_tap $? 444 'ExportStore1' test.out

#- 445 FulfillRewardsV2
samples/cli/sample-apps Platform fulfillRewardsV2 \
    --namespace $AB_NAMESPACE \
    --userId 'Ll9wA1lLad8o6Slw' \
    --body '{"entitlementCollectionId": "dBvSODQOL6jvKC4A", "entitlementOrigin": "Epic", "metadata": {"8hEDe3EfDa8nlt6I": {}, "JYSV5BGUEhOJQn3q": {}, "ELunNoxS3V0Q4t7t": {}}, "origin": "Oculus", "rewards": [{"currency": {"currencyCode": "r2H1SuZP81nvemJ7", "namespace": "Rkhx1RlthviFH4XF"}, "item": {"itemId": "MpXSxgpgfAj1Sfzj", "itemSku": "X7JpWdp9hoKu8oeP", "itemType": "jyLAenKvVKrawhkf"}, "quantity": 5, "type": "CURRENCY"}, {"currency": {"currencyCode": "vhBQ22VtHsLBvGKH", "namespace": "iJKpn7Omm67Oj3tX"}, "item": {"itemId": "H6RUZbpxL9sabnyF", "itemSku": "JFSOLTnu5Mu8QuQG", "itemType": "LCMvgEBE2ZH4yeIM"}, "quantity": 49, "type": "ITEM"}, {"currency": {"currencyCode": "04ii2C8tl0oDghQR", "namespace": "J8pHLXReW7b7eCxH"}, "item": {"itemId": "5AQHXsjWmml5yfkA", "itemSku": "VlSWfwAYDYlY27m6", "itemType": "Vh0dgJiiUthcgfhL"}, "quantity": 72, "type": "ITEM"}], "source": "IAP", "transactionId": "FmWnyyLGjCUW0pAL"}' \
    > test.out 2>&1
eval_tap $? 445 'FulfillRewardsV2' test.out


rm -f "tmp.dat"

exit $EXIT_CODE