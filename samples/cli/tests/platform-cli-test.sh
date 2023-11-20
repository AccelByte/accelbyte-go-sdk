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
echo "1..427"

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
    --id 'zuwSbU2p8axFBYuD' \
    > test.out 2>&1
eval_tap $? 3 'GetFulfillmentScript' test.out

#- 4 CreateFulfillmentScript
samples/cli/sample-apps Platform createFulfillmentScript \
    --id '7agrKpOBfejW3bh6' \
    --body '{"grantDays": "qnMtV4qH7eKuXffj"}' \
    > test.out 2>&1
eval_tap $? 4 'CreateFulfillmentScript' test.out

#- 5 DeleteFulfillmentScript
samples/cli/sample-apps Platform deleteFulfillmentScript \
    --id 'LcgHRTqgI8TKXrY0' \
    > test.out 2>&1
eval_tap $? 5 'DeleteFulfillmentScript' test.out

#- 6 UpdateFulfillmentScript
samples/cli/sample-apps Platform updateFulfillmentScript \
    --id 'DcYpxkHCkvVt7EzA' \
    --body '{"grantDays": "3RkxydujqOVG2uWd"}' \
    > test.out 2>&1
eval_tap $? 6 'UpdateFulfillmentScript' test.out

#- 7 ListItemTypeConfigs
samples/cli/sample-apps Platform listItemTypeConfigs \
    > test.out 2>&1
eval_tap $? 7 'ListItemTypeConfigs' test.out

#- 8 CreateItemTypeConfig
samples/cli/sample-apps Platform createItemTypeConfig \
    --body '{"clazz": "a3QGwETVkykb6xcw", "dryRun": false, "fulfillmentUrl": "bnGHJXQIfYHWQVPe", "itemType": "SEASON", "purchaseConditionUrl": "enu0wjpiXxAt4AOH"}' \
    > test.out 2>&1
eval_tap $? 8 'CreateItemTypeConfig' test.out

#- 9 SearchItemTypeConfig
samples/cli/sample-apps Platform searchItemTypeConfig \
    --clazz 'lVLZaQgwkcAUGEXl' \
    --itemType 'MEDIA' \
    > test.out 2>&1
eval_tap $? 9 'SearchItemTypeConfig' test.out

#- 10 GetItemTypeConfig
samples/cli/sample-apps Platform getItemTypeConfig \
    --id 'JAxlX5JPHEo8yCO9' \
    > test.out 2>&1
eval_tap $? 10 'GetItemTypeConfig' test.out

#- 11 UpdateItemTypeConfig
samples/cli/sample-apps Platform updateItemTypeConfig \
    --id 'ulpkvf38OzEOuLr8' \
    --body '{"clazz": "vMBtIlgfJdHBxMQS", "dryRun": true, "fulfillmentUrl": "1WYJ1SVvR82SONpL", "purchaseConditionUrl": "GZgQ5HX631g18vlB"}' \
    > test.out 2>&1
eval_tap $? 11 'UpdateItemTypeConfig' test.out

#- 12 DeleteItemTypeConfig
samples/cli/sample-apps Platform deleteItemTypeConfig \
    --id 'WTIwCYDksXOp82iK' \
    > test.out 2>&1
eval_tap $? 12 'DeleteItemTypeConfig' test.out

#- 13 QueryCampaigns
samples/cli/sample-apps Platform queryCampaigns \
    --namespace $AB_NAMESPACE \
    --limit '29' \
    --name 'HQErXMoXHg04YyWa' \
    --offset '44' \
    --tag 'ksL3NMPvH06WQ51n' \
    > test.out 2>&1
eval_tap $? 13 'QueryCampaigns' test.out

#- 14 CreateCampaign
samples/cli/sample-apps Platform createCampaign \
    --namespace $AB_NAMESPACE \
    --body '{"description": "p3zOrfSYfTbpqGyC", "items": [{"extraSubscriptionDays": 49, "itemId": "VqoJTtI7A9GQcxEt", "itemName": "570HZv40MENSoIT0", "quantity": 24}, {"extraSubscriptionDays": 64, "itemId": "6vz9iIO37xyn3whp", "itemName": "4oDzhMOFQDfdIFu0", "quantity": 14}, {"extraSubscriptionDays": 33, "itemId": "QeDQ1N9p8E0PSsRZ", "itemName": "H26xTjUGkMUFzNZC", "quantity": 21}], "maxRedeemCountPerCampaignPerUser": 25, "maxRedeemCountPerCode": 82, "maxRedeemCountPerCodePerUser": 32, "maxSaleCount": 10, "name": "7VCL7dhT8ikDIR8s", "redeemEnd": "1991-12-13T00:00:00Z", "redeemStart": "1972-05-29T00:00:00Z", "redeemType": "ITEM", "status": "ACTIVE", "tags": ["RhFZEh4lU7mJ7vfr", "uVu54lYFKSJG8LKU", "G4a5OoY5tEvKovKB"], "type": "REDEMPTION"}' \
    > test.out 2>&1
eval_tap $? 14 'CreateCampaign' test.out

#- 15 GetCampaign
samples/cli/sample-apps Platform getCampaign \
    --campaignId 'qH5smbVEx14tXHkL' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 15 'GetCampaign' test.out

#- 16 UpdateCampaign
samples/cli/sample-apps Platform updateCampaign \
    --campaignId 'ZOdwaPVFnqfgLKsN' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "hmys6F77Picu2g4F", "items": [{"extraSubscriptionDays": 71, "itemId": "aIrXBQOFUO3KBsnj", "itemName": "qbvD0CNMVobHhrJp", "quantity": 14}, {"extraSubscriptionDays": 59, "itemId": "Xvqm2Ptn61V5n2sq", "itemName": "bp6Gy0MhzXYU5rlH", "quantity": 95}, {"extraSubscriptionDays": 83, "itemId": "qW0jpJyV0DmAS1hc", "itemName": "BC1gDvB4OCiMMeqQ", "quantity": 85}], "maxRedeemCountPerCampaignPerUser": 2, "maxRedeemCountPerCode": 17, "maxRedeemCountPerCodePerUser": 84, "maxSaleCount": 5, "name": "V65wR8WLfHeXKgME", "redeemEnd": "1977-11-03T00:00:00Z", "redeemStart": "1971-03-20T00:00:00Z", "redeemType": "ITEM", "status": "ACTIVE", "tags": ["TlXWHjuzrGW1izVu", "naWYh4ZeqVgkMxan", "cPWNHv3dOcuZhpea"]}' \
    > test.out 2>&1
eval_tap $? 16 'UpdateCampaign' test.out

#- 17 GetCampaignDynamic
samples/cli/sample-apps Platform getCampaignDynamic \
    --campaignId 'MjJw3ccOW8r1xEHi' \
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
    --body '{"appConfig": {"appName": "ua9ogWfXbXzfNnuB"}, "customConfig": {"connectionType": "INSECURE", "grpcServerAddress": "lqp9B9fVkLc9lxvF"}, "extendType": "CUSTOM"}' \
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
    --body '{"appConfig": {"appName": "vcHtO4sx1edNA7br"}, "customConfig": {"connectionType": "TLS", "grpcServerAddress": "KqCGPHoPMrOLGyxE"}, "extendType": "APP"}' \
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
    --storeId 'OWQC0UeusKvMXjHx' \
    > test.out 2>&1
eval_tap $? 27 'GetRootCategories' test.out

#- 28 CreateCategory
samples/cli/sample-apps Platform createCategory \
    --namespace $AB_NAMESPACE \
    --storeId 'EElp56Wj09O8gFdi' \
    --body '{"categoryPath": "erIrHxAGpeU7EUSf", "localizationDisplayNames": {"sHa6wSNmUnHLAbha": "p3OmFAhXcbbF8clL", "PeWR9Wa9ya7Xfbus": "flIVKALWpAe0TcdG", "Rx62jxinGQys2dBh": "G6QJdv1PA2qMIbz4"}}' \
    > test.out 2>&1
eval_tap $? 28 'CreateCategory' test.out

#- 29 ListCategoriesBasic
samples/cli/sample-apps Platform listCategoriesBasic \
    --namespace $AB_NAMESPACE \
    --storeId 'MIHeFV4lM7estdVm' \
    > test.out 2>&1
eval_tap $? 29 'ListCategoriesBasic' test.out

#- 30 GetCategory
samples/cli/sample-apps Platform getCategory \
    --categoryPath 'rSyArMgweVQIQSbL' \
    --namespace $AB_NAMESPACE \
    --storeId 'UckIqrcQRH0NkXyg' \
    > test.out 2>&1
eval_tap $? 30 'GetCategory' test.out

#- 31 UpdateCategory
samples/cli/sample-apps Platform updateCategory \
    --categoryPath 'oBveMxg03ZQW5V4U' \
    --namespace $AB_NAMESPACE \
    --storeId 'prOq1FiZQ8DmcKzR' \
    --body '{"localizationDisplayNames": {"qPjwHLunS8QbSvY8": "20rW4dHKtitBecOt", "cToRD5bIGpiBPwiq": "fsLSE2ZgoLZT3vJn", "C6hcnty0q4TCmYkN": "VCP8CKzf71RhEtYi"}}' \
    > test.out 2>&1
eval_tap $? 31 'UpdateCategory' test.out

#- 32 DeleteCategory
samples/cli/sample-apps Platform deleteCategory \
    --categoryPath '03lGU18LP5quDyH9' \
    --namespace $AB_NAMESPACE \
    --storeId 'BtK7gQwe1aUebYZP' \
    > test.out 2>&1
eval_tap $? 32 'DeleteCategory' test.out

#- 33 GetChildCategories
samples/cli/sample-apps Platform getChildCategories \
    --categoryPath 'LaPKIGDQLA4wIURY' \
    --namespace $AB_NAMESPACE \
    --storeId 'Oj16youLx5j99NTo' \
    > test.out 2>&1
eval_tap $? 33 'GetChildCategories' test.out

#- 34 GetDescendantCategories
samples/cli/sample-apps Platform getDescendantCategories \
    --categoryPath 'uG8CubJcqLTxkvcJ' \
    --namespace $AB_NAMESPACE \
    --storeId 'QGKADs5aIkkjn2hg' \
    > test.out 2>&1
eval_tap $? 34 'GetDescendantCategories' test.out

#- 35 QueryCodes
samples/cli/sample-apps Platform queryCodes \
    --campaignId 'IDgddmZqLDSTMe3W' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --batchNo '13' \
    --code 'BX8xMc1JNJguVxpL' \
    --limit '51' \
    --offset '10' \
    > test.out 2>&1
eval_tap $? 35 'QueryCodes' test.out

#- 36 CreateCodes
samples/cli/sample-apps Platform createCodes \
    --campaignId '1NmT3NkwenyI55m2' \
    --namespace $AB_NAMESPACE \
    --body '{"quantity": 100}' \
    > test.out 2>&1
eval_tap $? 36 'CreateCodes' test.out

#- 37 Download
samples/cli/sample-apps Platform download \
    --campaignId 'xMOzT4CAKb09WKs4' \
    --namespace $AB_NAMESPACE \
    --batchNo '85' \
    > test.out 2>&1
eval_tap $? 37 'Download' test.out

#- 38 BulkDisableCodes
samples/cli/sample-apps Platform bulkDisableCodes \
    --campaignId 'lbKYvpDCvulzim5p' \
    --namespace $AB_NAMESPACE \
    --batchNo '16' \
    > test.out 2>&1
eval_tap $? 38 'BulkDisableCodes' test.out

#- 39 BulkEnableCodes
samples/cli/sample-apps Platform bulkEnableCodes \
    --campaignId 'ujhMkCQpicSdMTmV' \
    --namespace $AB_NAMESPACE \
    --batchNo '35' \
    > test.out 2>&1
eval_tap $? 39 'BulkEnableCodes' test.out

#- 40 QueryRedeemHistory
samples/cli/sample-apps Platform queryRedeemHistory \
    --campaignId 'ektkI0CKA1DsZfNB' \
    --namespace $AB_NAMESPACE \
    --code 'creNDNlzOBssTVBp' \
    --limit '32' \
    --offset '34' \
    --userId 'QubVs4aFSfGBQnHo' \
    > test.out 2>&1
eval_tap $? 40 'QueryRedeemHistory' test.out

#- 41 GetCode
samples/cli/sample-apps Platform getCode \
    --code 'B9u0aj4fU4zThUKQ' \
    --namespace $AB_NAMESPACE \
    --redeemable 'true' \
    > test.out 2>&1
eval_tap $? 41 'GetCode' test.out

#- 42 DisableCode
samples/cli/sample-apps Platform disableCode \
    --code 'bssP3ITeSm2vKtz2' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 42 'DisableCode' test.out

#- 43 EnableCode
samples/cli/sample-apps Platform enableCode \
    --code 'rWKcQFZQIxN2vf67' \
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
    --currencyType 'REAL' \
    > test.out 2>&1
eval_tap $? 47 'ListCurrencies' test.out

#- 48 CreateCurrency
samples/cli/sample-apps Platform createCurrency \
    --namespace $AB_NAMESPACE \
    --body '{"currencyCode": "LvZrEjB1b5H6PVgq", "currencySymbol": "1shMdiKBmKv77msX", "currencyType": "REAL", "decimals": 71, "localizationDescriptions": {"yt4rP0bWJqIeeqd5": "JqCBXPQjK14Esp9C", "2BFzGx2BjvyKRZ4m": "wDckVnuBwPMBDxFY", "8xLoPegekQgVy9Qz": "oItYYt6hJpAHHBUq"}}' \
    > test.out 2>&1
eval_tap $? 48 'CreateCurrency' test.out

#- 49 UpdateCurrency
samples/cli/sample-apps Platform updateCurrency \
    --currencyCode '8fV8mojEF800wzlB' \
    --namespace $AB_NAMESPACE \
    --body '{"localizationDescriptions": {"QkVTj4wTMbT8ysNV": "ihIPYlA6w7WnZ460", "lZ8ZjQHw8ZFIaiyj": "vpxOw6MXjlIMl5Gu", "2e0ta7DBVb5AbBEK": "tACGt1w2AZfNTXs0"}}' \
    > test.out 2>&1
eval_tap $? 49 'UpdateCurrency' test.out

#- 50 DeleteCurrency
samples/cli/sample-apps Platform deleteCurrency \
    --currencyCode 'SZ6RkWQ0sqgYf6s8' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 50 'DeleteCurrency' test.out

#- 51 GetCurrencyConfig
samples/cli/sample-apps Platform getCurrencyConfig \
    --currencyCode 'XhwekAJnHDXzbWBD' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 51 'GetCurrencyConfig' test.out

#- 52 GetCurrencySummary
samples/cli/sample-apps Platform getCurrencySummary \
    --currencyCode 'ZR6SuAKATJRnWuiG' \
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
    --body '{"data": [{"id": "hRYiE9BZeFrGtPPv", "rewards": [{"currency": {"currencyCode": "BBczTMnoviG5x5Vn", "namespace": "GWiEk21lSHjgxeop"}, "item": {"itemId": "VyQslfbThoykic6J", "itemSku": "uvbrewplEAfQghmD", "itemType": "J0YwmeMl417PG58K"}, "quantity": 90, "type": "CURRENCY"}, {"currency": {"currencyCode": "W8hIsuwnNDkakQwq", "namespace": "8Z0keXx2gYT77kEb"}, "item": {"itemId": "oSyByo0eaNKFMh1D", "itemSku": "TdI8jdgHdT4OXaFy", "itemType": "dMg86OwuDZL8KBhJ"}, "quantity": 97, "type": "ITEM"}, {"currency": {"currencyCode": "0H7wsx5JdkAgCzHg", "namespace": "y3FXdNKcu6RupJns"}, "item": {"itemId": "IMwAtNveF9WJyDDv", "itemSku": "grqPOiK7HUs2dHLo", "itemType": "p902YAjwpf1eJ3D0"}, "quantity": 71, "type": "CURRENCY"}]}, {"id": "MtOoO6jdQtFyQk3Q", "rewards": [{"currency": {"currencyCode": "OuF3JqvBaG0TIOZ5", "namespace": "IUI63NQzC5tw2m81"}, "item": {"itemId": "kSZ1ryB4TY0Bts1o", "itemSku": "c5TX5VIOjNOvW6Q6", "itemType": "EhtqMJMtAXOIGtl4"}, "quantity": 53, "type": "CURRENCY"}, {"currency": {"currencyCode": "80UWxAyy6BnHPNDM", "namespace": "2QCKJHuhp4YicerZ"}, "item": {"itemId": "TjD7Gj8YiHS0aNQR", "itemSku": "YqFNE9RKG4T76A1C", "itemType": "zqqRJjtBvpnGopM1"}, "quantity": 29, "type": "CURRENCY"}, {"currency": {"currencyCode": "tUX0CfZzG96FzlRd", "namespace": "CdDEXRkegubOtvgP"}, "item": {"itemId": "MTegyv3MH97IFOeU", "itemSku": "YSf4iQ3LBaPaLRhr", "itemType": "G0PLHewsf1l9eF32"}, "quantity": 71, "type": "CURRENCY"}]}, {"id": "L1ssX3qImk4G2A63", "rewards": [{"currency": {"currencyCode": "SUcGUGs3SI0jA6cK", "namespace": "zC9HbZQ8Feb6eO3m"}, "item": {"itemId": "9vzDS9WOIvCDMk1F", "itemSku": "r17WTXfgwZ8ovhKB", "itemType": "DHn6etJuG6tXfp8w"}, "quantity": 26, "type": "ITEM"}, {"currency": {"currencyCode": "UHEDGuDCboP3UCqC", "namespace": "18IoZnMjOE8nk8Cg"}, "item": {"itemId": "8O5gcfZAZmH7L7di", "itemSku": "pY7YRKp29AV4hXdu", "itemType": "46nmMGLWd4FnCIFq"}, "quantity": 29, "type": "ITEM"}, {"currency": {"currencyCode": "d1XY51DsDo4uCM1i", "namespace": "2s5ICwuJ9gpsyLP5"}, "item": {"itemId": "G4P1lWpdDr9r8SbY", "itemSku": "A5LZY3xxFWgNBA02", "itemType": "69ANxcc7YzN1s6a9"}, "quantity": 65, "type": "ITEM"}]}]}' \
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
    --body '{"data": [{"platform": "PSN", "platformDlcIdMap": {"QEL87wjiefsqs59N": "DdVu1gWv7RZym5Ic", "MSe3KdoYCbc4CpOg": "boapmyZecRQrZKT5", "2FhHXHNJrqidDb4P": "Hx8sHd508p96ZqLa"}}, {"platform": "XBOX", "platformDlcIdMap": {"bK3o7bjU6xH2x0bS": "GfeaxAGnW83VSq6B", "KGMJJRLeA2gChEIY": "10nJWnrWxAzjMLoD", "b38FtT9pfWf1rF6a": "sMRM3u87zQdGL2e8"}}, {"platform": "XBOX", "platformDlcIdMap": {"LNIU0cx91EB2NcCv": "YTDwUebjR5s7vSFK", "WuBCdC5g3Fwd2ZZL": "CCMwJQMd7yhjHvlg", "GLwPUltk5Y23ZmUw": "c7g5jg9nSVp1KQWM"}}]}' \
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
    --entitlementClazz 'MEDIA' \
    --entitlementName 'TJi8noVHXUDEf3t7' \
    --itemId '["Zbzphh0oMZgfZDzL", "HPRrQ13LJSuo2aMx", "rtcv1A0UcSj16eSW"]' \
    --limit '95' \
    --offset '30' \
    --userId '0ZNOYf59QNRcpM8z' \
    > test.out 2>&1
eval_tap $? 59 'QueryEntitlements' test.out

#- 60 QueryEntitlements1
samples/cli/sample-apps Platform queryEntitlements1 \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --itemIds '["rHXqMVoZ5FSRIFLM", "uJ6HY6NE6aPoVSAe", "1bI0i3Fz42kR6xVN"]' \
    --limit '20' \
    --offset '19' \
    > test.out 2>&1
eval_tap $? 60 'QueryEntitlements1' test.out

#- 61 GrantEntitlements
samples/cli/sample-apps Platform grantEntitlements \
    --namespace $AB_NAMESPACE \
    --body '{"entitlementGrantList": [{"endDate": "1981-03-31T00:00:00Z", "grantedCode": "uaHPelq1eZQPViWD", "itemId": "Jw2dTNe0KVbSalF3", "itemNamespace": "7XOUlFY7bOUV8EY3", "language": "ugD_ya", "quantity": 76, "region": "9lFbWQvb2whkU90I", "source": "REWARD", "startDate": "1983-09-24T00:00:00Z", "storeId": "JqC24RXqbF0lvNgC"}, {"endDate": "1977-02-22T00:00:00Z", "grantedCode": "ivAMnCqmmta1q6rx", "itemId": "Frmi35PunrwrY6nO", "itemNamespace": "az5Y1XmwTgxdyKSN", "language": "XgO", "quantity": 60, "region": "rY9yFYYkvQHUHH6X", "source": "REWARD", "startDate": "1997-08-17T00:00:00Z", "storeId": "yV9ZhSkySkaiaBBv"}, {"endDate": "1980-01-09T00:00:00Z", "grantedCode": "RiJswVNOgys5J0ZU", "itemId": "qKtY32MhqVgDUoyn", "itemNamespace": "95G4EJxu7XL2jEG5", "language": "akO_GM", "quantity": 88, "region": "C0Bnc4weGfnqYfPL", "source": "REDEEM_CODE", "startDate": "1985-10-26T00:00:00Z", "storeId": "1OIXRqYBQ1aPkj8O"}], "userIds": ["QrmLXgBaFQuvtYd9", "y7TDkIREDHwpY7FB", "dOm1ZpOWHjIodqdz"]}' \
    > test.out 2>&1
eval_tap $? 61 'GrantEntitlements' test.out

#- 62 RevokeEntitlements
samples/cli/sample-apps Platform revokeEntitlements \
    --namespace $AB_NAMESPACE \
    --body '["2uNQgKe9tCMpIWCN", "FwqLUFonRgknp2aC", "6UHDl60Vjud5AF7Z"]' \
    > test.out 2>&1
eval_tap $? 62 'RevokeEntitlements' test.out

#- 63 GetEntitlement
samples/cli/sample-apps Platform getEntitlement \
    --entitlementId 'cO2yy9Rvk1iAEeka' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 63 'GetEntitlement' test.out

#- 64 QueryFulfillmentHistories
samples/cli/sample-apps Platform queryFulfillmentHistories \
    --namespace $AB_NAMESPACE \
    --limit '58' \
    --offset '69' \
    --status 'FAIL' \
    --userId 'ejIFv0yiALEzjWfX' \
    > test.out 2>&1
eval_tap $? 64 'QueryFulfillmentHistories' test.out

#- 65 QueryIAPClawbackHistory
samples/cli/sample-apps Platform queryIAPClawbackHistory \
    --namespace $AB_NAMESPACE \
    --endTime 'bBCABHY1af6Aw3kT' \
    --eventType 'OTHER' \
    --externalOrderId 'vSvmbfA33ErqA6hM' \
    --limit '67' \
    --offset '51' \
    --startTime 'jBfvOnApl5xlS2hO' \
    --status 'FAIL' \
    --userId 'hg41jI2qvNmGxZO0' \
    > test.out 2>&1
eval_tap $? 65 'QueryIAPClawbackHistory' test.out

#- 66 MockPlayStationStreamEvent
samples/cli/sample-apps Platform mockPlayStationStreamEvent \
    --namespace $AB_NAMESPACE \
    --body '{"body": {"account": "o8fR7msPNE4V2uD6", "additionalData": {"entitlement": [{"clientTransaction": [{"amountConsumed": 84, "clientTransactionId": "BOaQr522l8f2kmue"}, {"amountConsumed": 18, "clientTransactionId": "KJU4Wz7Z1KD4XuaC"}, {"amountConsumed": 31, "clientTransactionId": "7BAbTJIudKGmvH9b"}], "entitlementId": "H40ElagcMl8AALru", "usageCount": 8}, {"clientTransaction": [{"amountConsumed": 88, "clientTransactionId": "xv0yvAJlFbkx3rRf"}, {"amountConsumed": 23, "clientTransactionId": "kCg4CwhCWNF4soLg"}, {"amountConsumed": 43, "clientTransactionId": "Vs59eQNTxARDA2oS"}], "entitlementId": "8E3RpTWhIQsHFJZh", "usageCount": 15}, {"clientTransaction": [{"amountConsumed": 72, "clientTransactionId": "kUgmADhnvaDs3jSn"}, {"amountConsumed": 13, "clientTransactionId": "EG3WXHVp8oFkuJlJ"}, {"amountConsumed": 49, "clientTransactionId": "vX64oFLulznii1Fg"}], "entitlementId": "CE2nP1U2YavcCMkA", "usageCount": 79}], "purpose": "014mb9gSF9PNmClT"}, "originalTitleName": "PYon0pHczmBE0GGz", "paymentProductSKU": "ZlosiQOSOFuTShhh", "purchaseDate": "2ziICsCd7b7rlQ9p", "sourceOrderItemId": "yztttZHNjJF4huS5", "titleName": "tG5ehnxGc4DuF0av"}, "eventDomain": "blM107nc8UcQd7RK", "eventSource": "9pebicPq0Jd6pEEj", "eventType": "gPv8BaVx8X0mQdpc", "eventVersion": 25, "id": "91gBPNXHJHmybpFH", "timestamp": "Ie6MThFzXccsbA1s"}' \
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
    --body '{"bundleId": "mqxZebtrHDjZZyGV", "password": "ITOCr99IjRYcKn5k"}' \
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
    --body '{"sandboxId": "7BjdX8lBOhk6tGEM"}' \
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
    --body '{"applicationName": "f39ohfqQrNjYLEoz", "serviceAccountId": "O8d8mqYVaJZtjS5q"}' \
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
    --body '{"data": [{"itemIdentity": "y1tjmKrOffn1VZAQ", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"4yDjWrtX5OuFbtlG": "2ZHf6KszjAFYNPYk", "bEqT9wM6Avy8ya1W": "vXsVkK0stYlbBUOw", "4Mx7fGQQxpWGGpun": "4yf4TPHNnF2CEtPT"}}, {"itemIdentity": "mWUsOPH7UmmkNIhn", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"C0BJQQra8f0tvtPX": "5RoBk46sh8W4XtTa", "SMX9cbJgm8DZxQKs": "wfUt8PN7e9UxY42H", "nwBggetZqcv8A1ZA": "ml71I7es70d1XFZt"}}, {"itemIdentity": "UCptDS5KroekSTgx", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"1WBRRGiC73dFb7Gh": "Xfo17mO5ZFARKRiy", "AKqBZjQDQ0YAjvig": "S2sSCalmsjeuwxA4", "O48azfMXoKsPgclk": "yPlMb18jNNQxlYqk"}}]}' \
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
    --body '{"appId": "aEmY6ukG4YLZcCBc", "appSecret": "Mv6R6EoOPuQRDlwi"}' \
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
    --body '{"backOfficeServerClientId": "1kR3nLMXxvef6fwl", "backOfficeServerClientSecret": "Cg7ra0cGV1IjaBwx", "enableStreamJob": true, "environment": "C7sCnWM269YQXzM2", "streamName": "q3drymquY1baqYbi", "streamPartnerName": "2NuZTXxq2L38OB95"}' \
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
    --body '{"backOfficeServerClientId": "wTmTzvxeBH5owSBb", "backOfficeServerClientSecret": "X0jM72cXXrqD23a1", "enableStreamJob": false, "environment": "swSJQq3NaBhDUTWl", "streamName": "lLsHJ4JPAECelOEf", "streamPartnerName": "vF7bHTAdcOlzPKFG"}' \
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
    --body '{"appId": "JCHhU8m54FbdSFx1", "publisherAuthenticationKey": "yDNhSYQn36DsCrUt"}' \
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
    --body '{"clientId": "b2zR9CURzUIEZtIk", "clientSecret": "60izhstN2hI0cVob", "organizationId": "vPzbrJGMBlBKaYuu"}' \
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
    --body '{"relyingPartyCert": "HtphP8cMhQBWRBRI"}' \
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
    --password 'gT5NBvM9jXVRQSsK' \
    > test.out 2>&1
eval_tap $? 97 'UpdateXblBPCertFile' test.out

#- 98 DownloadInvoiceDetails
samples/cli/sample-apps Platform downloadInvoiceDetails \
    --namespace $AB_NAMESPACE \
    --feature 'Q586fsUazej8nR6b' \
    --itemId 'gyQGFl9eaYn0iXiu' \
    --itemType 'COINS' \
    --endTime 'YY2XUJMCtBHJ2ULX' \
    --startTime '9XoRtdlCZGFZo1s6' \
    > test.out 2>&1
eval_tap $? 98 'DownloadInvoiceDetails' test.out

#- 99 GenerateInvoiceSummary
samples/cli/sample-apps Platform generateInvoiceSummary \
    --namespace $AB_NAMESPACE \
    --feature 'vK77cKbTxOlbU5Tf' \
    --itemId '6V1p2hcafd4UPJLE' \
    --itemType 'MEDIA' \
    --endTime 'JHuA8QuszFUTFL6l' \
    --startTime 'pH3j92dh3ztyhxAz' \
    > test.out 2>&1
eval_tap $? 99 'GenerateInvoiceSummary' test.out

#- 100 SyncInGameItem
samples/cli/sample-apps Platform syncInGameItem \
    --namespace $AB_NAMESPACE \
    --storeId 'n3vRG4uXZ8YNnbQx' \
    --body '{"categoryPath": "Aq4zCeYIBdauKhke", "targetItemId": "UQiKSAFgc19nm23z", "targetNamespace": "pyN6c0JF6qk3BOXh"}' \
    > test.out 2>&1
eval_tap $? 100 'SyncInGameItem' test.out

#- 101 CreateItem
samples/cli/sample-apps Platform createItem \
    --namespace $AB_NAMESPACE \
    --storeId 'qdnV7GmfuYBapqV7' \
    --body '{"appId": "QaQlsOIldYAJRyx8", "appType": "DEMO", "baseAppId": "ivH0s6JhWKsd473P", "boothName": "UyteWkEgQNHEcq47", "categoryPath": "AMuHQ94LwZuA07ZI", "clazz": "iuC8RKOuJWbAEX0g", "displayOrder": 49, "entitlementType": "DURABLE", "ext": {"e2bG1zknSEeNI4zA": {}, "0u2SPXkx7oLe2opY": {}, "cGCQlFWtKhSxnF6c": {}}, "features": ["M5jD99rHGDl9F5oD", "pnNNGiu7zwBlcNMv", "ryLml36KthfbeNnC"], "flexible": false, "images": [{"as": "YMenJfdqsCIKHHJK", "caption": "fJl2Ka6bb5o6IL8e", "height": 91, "imageUrl": "pE6Am8kJrUg6brB6", "smallImageUrl": "pYPUVnHB4GkdDa3k", "width": 85}, {"as": "E4jcmYU6BUkJfjSF", "caption": "sTjXKwLmAWAfhEFq", "height": 80, "imageUrl": "o8iJneMYqVjAAvCs", "smallImageUrl": "OALTYvKgwROSCvFk", "width": 81}, {"as": "VvVSyXMdm9W6LNWK", "caption": "3e4OsyIXfvkJvuVY", "height": 46, "imageUrl": "iZmeUbafwJEzLQld", "smallImageUrl": "XFxVr6SWY6dovZMa", "width": 65}], "itemIds": ["TcgRCQlp1ecZoKck", "3LVazNvP8dTFXMNd", "n2cwfcLV4eriZBUL"], "itemQty": {"mbDNtCKxuovKxOuD": 7, "ig6GqARnmvF3sIpw": 48, "hz4geUQRa0UhsIP7": 35}, "itemType": "SUBSCRIPTION", "listable": true, "localizations": {"q3PrnYSH4iIc9wMQ": {"description": "cEOx8u8nHCJPici7", "localExt": {"oucA1Y7PwH3MATFM": {}, "Gf9GlNGo2eVpreW5": {}, "BWrRAjDjZdqBQI6g": {}}, "longDescription": "wOKil4kYzFtPwODE", "title": "DjmiNhYpUjzcE78d"}, "rkrvG3k0FaC5p93W": {"description": "mqFtV8hYtK1vSX9S", "localExt": {"jj3U9ZNTdy0oDuBs": {}, "ybx70kZjvz0ysUa3": {}, "6YWKGJBnYtMvre4F": {}}, "longDescription": "KHJxbme2Vmo9MATQ", "title": "1kOYPoU6D7dNMUgX"}, "9Esv78pogtZqrYG1": {"description": "67AXBS6mcrOx8SWF", "localExt": {"8C7obGWRLFJlWAih": {}, "5vXeK71v1WkcUA9E": {}, "QoKrclVc9pne7JIT": {}}, "longDescription": "1zQOp3UpFC5KGrsE", "title": "EbcE2VeRjA6no4zw"}}, "lootBoxConfig": {"rewardCount": 74, "rewards": [{"lootBoxItems": [{"count": 35, "duration": 36, "endDate": "1991-02-07T00:00:00Z", "itemId": "LcEEeMLYyYn0pzaw", "itemSku": "nBDqwX5ieOKY94V0", "itemType": "xp7g9tr9jaPPcj2B"}, {"count": 94, "duration": 56, "endDate": "1972-09-18T00:00:00Z", "itemId": "9OvCmEB30ed4O04m", "itemSku": "TnvdkSuYoI6B3Q9d", "itemType": "SYomaYHVIxzlNWS1"}, {"count": 32, "duration": 68, "endDate": "1986-04-13T00:00:00Z", "itemId": "QC8xHq18U3Nl169b", "itemSku": "J4S5SAI29syrjJBS", "itemType": "V9B8HvzqkEN0jaN6"}], "name": "iOyDjgMPfY1QdmFx", "odds": 0.8786771511894127, "type": "PROBABILITY_GROUP", "weight": 95}, {"lootBoxItems": [{"count": 84, "duration": 94, "endDate": "1988-09-23T00:00:00Z", "itemId": "2e54ljdwt0dPj45V", "itemSku": "Hm5b07Gx4JHEWLYw", "itemType": "nRe4tkBE92KcD0pA"}, {"count": 54, "duration": 65, "endDate": "1986-11-09T00:00:00Z", "itemId": "6pfOHnn2SgG4ESse", "itemSku": "JADYm0i7QFIzepmy", "itemType": "GvRb9fZDr3ZOiwQN"}, {"count": 16, "duration": 83, "endDate": "1989-12-28T00:00:00Z", "itemId": "vH3q04JAyLGTy9Oz", "itemSku": "HKoVzjhS4knx3ZNr", "itemType": "SuuYQPP0MXILMGGG"}], "name": "xK6LDVmvDn5j41ab", "odds": 0.5846858691688982, "type": "PROBABILITY_GROUP", "weight": 43}, {"lootBoxItems": [{"count": 88, "duration": 94, "endDate": "1975-06-30T00:00:00Z", "itemId": "BdTKTEm0wYosmAV8", "itemSku": "0xKZXaPnwFYAlCcS", "itemType": "Kq2ZUvqav9V3Ldvx"}, {"count": 54, "duration": 36, "endDate": "1981-06-08T00:00:00Z", "itemId": "hhdxrFtSZeZWI33G", "itemSku": "yfaDmKQH0XuV2XSB", "itemType": "0nXkWH3tjfYFpvZY"}, {"count": 7, "duration": 95, "endDate": "1984-01-11T00:00:00Z", "itemId": "oGN8BEc0wFLpd7yJ", "itemSku": "tOldviZMyz6cFSHl", "itemType": "OIsScRoqI4h4dOHS"}], "name": "MrlLTogAeb1ojRsM", "odds": 0.7915139414074521, "type": "PROBABILITY_GROUP", "weight": 24}], "rollFunction": "CUSTOM"}, "maxCount": 37, "maxCountPerUser": 4, "name": "R246LzMpIYsCul33", "optionBoxConfig": {"boxItems": [{"count": 98, "duration": 80, "endDate": "1998-08-24T00:00:00Z", "itemId": "c9x2N6TsdZ1c9iIw", "itemSku": "SbLdvagCSF8Zf4w8", "itemType": "jGnWXFCokRjt6fQc"}, {"count": 44, "duration": 87, "endDate": "1990-06-03T00:00:00Z", "itemId": "KHBL9MtTyDQYlXcM", "itemSku": "0ZpKCvZpmGEo0gU3", "itemType": "iBS0mHSKiv8e8aAr"}, {"count": 24, "duration": 4, "endDate": "1995-12-18T00:00:00Z", "itemId": "zizcrGGUIC79xF2L", "itemSku": "HfOlyd7FXxDn8KHR", "itemType": "6EVuLprGhcGOLG7f"}]}, "purchasable": true, "recurring": {"cycle": "YEARLY", "fixedFreeDays": 85, "fixedTrialCycles": 96, "graceDays": 7}, "regionData": {"2pmvNNjjMZUK806n": [{"currencyCode": "bZbbETx3r5GgzSJx", "currencyNamespace": "L0Nr3Ay20OlKF6Ak", "currencyType": "VIRTUAL", "discountAmount": 64, "discountExpireAt": "1980-03-21T00:00:00Z", "discountPercentage": 44, "discountPurchaseAt": "1988-08-03T00:00:00Z", "expireAt": "1999-11-02T00:00:00Z", "price": 47, "purchaseAt": "1990-08-16T00:00:00Z", "trialPrice": 7}, {"currencyCode": "ZmCgPB1026LsgKgu", "currencyNamespace": "eo0KIXJsmgRArC72", "currencyType": "REAL", "discountAmount": 8, "discountExpireAt": "1985-09-02T00:00:00Z", "discountPercentage": 26, "discountPurchaseAt": "1973-11-26T00:00:00Z", "expireAt": "1982-04-09T00:00:00Z", "price": 26, "purchaseAt": "1990-03-24T00:00:00Z", "trialPrice": 94}, {"currencyCode": "tFx3xmgvULSKDCL6", "currencyNamespace": "7PWpjnqTgiibv8t6", "currencyType": "VIRTUAL", "discountAmount": 5, "discountExpireAt": "1992-07-10T00:00:00Z", "discountPercentage": 38, "discountPurchaseAt": "1995-03-07T00:00:00Z", "expireAt": "1973-05-14T00:00:00Z", "price": 5, "purchaseAt": "1993-12-09T00:00:00Z", "trialPrice": 6}], "It7zPV45d3GO1z7s": [{"currencyCode": "aJEbpjU0buKMe5cq", "currencyNamespace": "z0YzKJOcKdmCe1wN", "currencyType": "VIRTUAL", "discountAmount": 77, "discountExpireAt": "1980-02-17T00:00:00Z", "discountPercentage": 11, "discountPurchaseAt": "1994-07-13T00:00:00Z", "expireAt": "1971-02-12T00:00:00Z", "price": 10, "purchaseAt": "1987-05-20T00:00:00Z", "trialPrice": 41}, {"currencyCode": "QysJjUXtrsfd9FF5", "currencyNamespace": "9AF13g8ILFTmiiOy", "currencyType": "VIRTUAL", "discountAmount": 71, "discountExpireAt": "1982-01-08T00:00:00Z", "discountPercentage": 46, "discountPurchaseAt": "1988-01-31T00:00:00Z", "expireAt": "1987-11-29T00:00:00Z", "price": 32, "purchaseAt": "1994-03-25T00:00:00Z", "trialPrice": 12}, {"currencyCode": "7DL54CX5qh8VWsb0", "currencyNamespace": "KyLtkOBiHN6Xw2e6", "currencyType": "REAL", "discountAmount": 3, "discountExpireAt": "1990-10-30T00:00:00Z", "discountPercentage": 22, "discountPurchaseAt": "1988-01-10T00:00:00Z", "expireAt": "1986-02-21T00:00:00Z", "price": 76, "purchaseAt": "1994-04-02T00:00:00Z", "trialPrice": 61}], "wNpnF68E4BQetBmk": [{"currencyCode": "svk0UTOngDa5hvC5", "currencyNamespace": "ZWWbOybDkdEeVN8f", "currencyType": "VIRTUAL", "discountAmount": 32, "discountExpireAt": "1974-12-15T00:00:00Z", "discountPercentage": 41, "discountPurchaseAt": "1996-01-20T00:00:00Z", "expireAt": "1974-12-14T00:00:00Z", "price": 85, "purchaseAt": "1985-12-13T00:00:00Z", "trialPrice": 57}, {"currencyCode": "vaIgOe9jWfzstslM", "currencyNamespace": "KDdrIPKs0ytM1wcq", "currencyType": "VIRTUAL", "discountAmount": 55, "discountExpireAt": "1996-03-19T00:00:00Z", "discountPercentage": 20, "discountPurchaseAt": "1972-06-08T00:00:00Z", "expireAt": "1972-07-30T00:00:00Z", "price": 25, "purchaseAt": "1978-04-12T00:00:00Z", "trialPrice": 31}, {"currencyCode": "qssTOxCDgMIfEVzF", "currencyNamespace": "Oa3WSYSN8zBL32aH", "currencyType": "REAL", "discountAmount": 12, "discountExpireAt": "1979-05-09T00:00:00Z", "discountPercentage": 17, "discountPurchaseAt": "1976-03-19T00:00:00Z", "expireAt": "1996-06-10T00:00:00Z", "price": 74, "purchaseAt": "1991-09-25T00:00:00Z", "trialPrice": 68}]}, "saleConfig": {"currencyCode": "3iI2HL2TJeSBCaMh", "price": 86}, "seasonType": "TIER", "sectionExclusive": true, "sellable": false, "sku": "5L4kTAv0hAX1vOKJ", "stackable": true, "status": "ACTIVE", "tags": ["EEsWp65BMqWmrJa2", "MW838BDACsTdO0aY", "nvURLicBnJ5FonPS"], "targetCurrencyCode": "r3nYu7OdgLKawn9V", "targetNamespace": "szu7niNtmZRy1pM7", "thumbnailUrl": "mF8KLv6qdGWWQd63", "useCount": 54}' \
    > test.out 2>&1
eval_tap $? 101 'CreateItem' test.out

#- 102 GetItemByAppId
samples/cli/sample-apps Platform getItemByAppId \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'qiK44UDXkV0qON3V' \
    --appId 'fpXzZ0SuBo6JpTS0' \
    > test.out 2>&1
eval_tap $? 102 'GetItemByAppId' test.out

#- 103 QueryItems
samples/cli/sample-apps Platform queryItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --appType 'SOFTWARE' \
    --availableDate 'GqrITF0Zd0N9EqQW' \
    --baseAppId 'jnMZuA3ByQ6gisop' \
    --categoryPath '5dHa77liDuxuDhsB' \
    --features '5XpPijISRbqlXEgY' \
    --includeSubCategoryItem 'false' \
    --itemType 'MEDIA' \
    --limit '89' \
    --offset '35' \
    --region '5m5YqV4ItfFwIBDH' \
    --sortBy '["displayOrder:desc", "name:desc", "updatedAt:asc"]' \
    --storeId '8vDvxDnpp7aiALFF' \
    --tags 'CjNEaUIxjAprQ5jO' \
    --targetNamespace 'yux9cfKtrTeb70RK' \
    > test.out 2>&1
eval_tap $? 103 'QueryItems' test.out

#- 104 ListBasicItemsByFeatures
samples/cli/sample-apps Platform listBasicItemsByFeatures \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --features '["AwSKc8j2W4wSfX6d", "7hS6HzhBtKzfqHc0", "UzU26IxgmnBwuln6"]' \
    > test.out 2>&1
eval_tap $? 104 'ListBasicItemsByFeatures' test.out

#- 105 GetItems
samples/cli/sample-apps Platform getItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --storeId 'jZcsuZfmsqYDtOvN' \
    --itemIds 'kv4FNwV0U5o6NWLk' \
    > test.out 2>&1
eval_tap $? 105 'GetItems' test.out

#- 106 GetItemBySku
samples/cli/sample-apps Platform getItemBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'Cf57koakFS9VH8JK' \
    --sku 'DiCquju5ykzutGDk' \
    > test.out 2>&1
eval_tap $? 106 'GetItemBySku' test.out

#- 107 GetLocaleItemBySku
samples/cli/sample-apps Platform getLocaleItemBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --language 'f7XbcK1ljUdHqITr' \
    --populateBundle 'false' \
    --region 'NvOty8lHKn4KTCnE' \
    --storeId 'FKBKnx80qyUlsXmn' \
    --sku 'zE5jSdJKA7XxzUHA' \
    > test.out 2>&1
eval_tap $? 107 'GetLocaleItemBySku' test.out

#- 108 GetEstimatedPrice
samples/cli/sample-apps Platform getEstimatedPrice \
    --namespace $AB_NAMESPACE \
    --region 'Vy9Yn1rvnc53qYOg' \
    --storeId 'HDYk7xAOQ9zaUYt3' \
    --itemIds 'BPgVbNw6jAye3ALJ' \
    --userId 'elNF9ygA7KNN36u0' \
    > test.out 2>&1
eval_tap $? 108 'GetEstimatedPrice' test.out

#- 109 GetItemIdBySku
samples/cli/sample-apps Platform getItemIdBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId '1nSFhSAi3s0k4Zbm' \
    --sku 'LQ1J5qLZcreEmRw3' \
    > test.out 2>&1
eval_tap $? 109 'GetItemIdBySku' test.out

#- 110 GetBulkItemIdBySkus
samples/cli/sample-apps Platform getBulkItemIdBySkus \
    --namespace $AB_NAMESPACE \
    --sku '["ptykAjpP2VIQ3kjm", "nwtXAXARkoJUZx4v", "JmibsBY0oVOCppcQ"]' \
    --storeId 'lUJb2vTgS34fotgG' \
    > test.out 2>&1
eval_tap $? 110 'GetBulkItemIdBySkus' test.out

#- 111 BulkGetLocaleItems
samples/cli/sample-apps Platform bulkGetLocaleItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --language 'YgipRh3Y1FblXJng' \
    --region '89PWILcg4IYfZmUx' \
    --storeId '4SU8uxzec6UOQ1LB' \
    --itemIds 'tgYUhVfHM1t0kdaG' \
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
    --userId '6xNFlZfZlcscT8yZ' \
    --body '{"itemIds": ["C5yosfDLynnin69y", "2epKeaYf3i90hE4X", "M4HzKVs1ivpJRXSQ"]}' \
    > test.out 2>&1
eval_tap $? 113 'ValidateItemPurchaseCondition' test.out

#- 114 BulkUpdateRegionData
samples/cli/sample-apps Platform bulkUpdateRegionData \
    --namespace $AB_NAMESPACE \
    --storeId '9lravOohMop6AUDp' \
    --body '{"changes": [{"itemIdentities": ["j1UfPuU0q7Z9gaaM", "QhvcxaDAqvktjeGR", "r9NsjNkix5Lu7kIm"], "itemIdentityType": "ITEM_SKU", "regionData": {"Las3Rg7AvjWHuamU": [{"currencyCode": "U4gKdPrND26BIPSk", "currencyNamespace": "H2r6ARTUJOPdZcJR", "currencyType": "VIRTUAL", "discountAmount": 72, "discountExpireAt": "1976-04-22T00:00:00Z", "discountPercentage": 51, "discountPurchaseAt": "1975-04-22T00:00:00Z", "discountedPrice": 59, "expireAt": "1992-01-15T00:00:00Z", "price": 14, "purchaseAt": "1974-09-25T00:00:00Z", "trialPrice": 59}, {"currencyCode": "yqjxdxR8fB9t42HM", "currencyNamespace": "fSujmln48rclrq8r", "currencyType": "VIRTUAL", "discountAmount": 98, "discountExpireAt": "1994-12-08T00:00:00Z", "discountPercentage": 96, "discountPurchaseAt": "1977-02-14T00:00:00Z", "discountedPrice": 19, "expireAt": "1973-03-27T00:00:00Z", "price": 64, "purchaseAt": "1973-12-20T00:00:00Z", "trialPrice": 45}, {"currencyCode": "8UtDOdY4PAxrqsGY", "currencyNamespace": "ZjUKIlwjT7yzXnu8", "currencyType": "VIRTUAL", "discountAmount": 80, "discountExpireAt": "1998-12-31T00:00:00Z", "discountPercentage": 1, "discountPurchaseAt": "1981-07-26T00:00:00Z", "discountedPrice": 82, "expireAt": "1983-12-05T00:00:00Z", "price": 94, "purchaseAt": "1982-09-11T00:00:00Z", "trialPrice": 93}], "ckpVQEZxR9dPTdo5": [{"currencyCode": "K4Bb3bAItTQqzgWv", "currencyNamespace": "wAHF6AXDV1zHexyK", "currencyType": "VIRTUAL", "discountAmount": 38, "discountExpireAt": "1995-04-06T00:00:00Z", "discountPercentage": 89, "discountPurchaseAt": "1981-05-08T00:00:00Z", "discountedPrice": 91, "expireAt": "1976-10-27T00:00:00Z", "price": 41, "purchaseAt": "1987-03-02T00:00:00Z", "trialPrice": 81}, {"currencyCode": "KJ44xcYcTpqWlmP6", "currencyNamespace": "oLoN0T3OLXkPcEpJ", "currencyType": "VIRTUAL", "discountAmount": 89, "discountExpireAt": "1996-01-26T00:00:00Z", "discountPercentage": 45, "discountPurchaseAt": "1982-03-23T00:00:00Z", "discountedPrice": 5, "expireAt": "1975-06-16T00:00:00Z", "price": 57, "purchaseAt": "1976-01-04T00:00:00Z", "trialPrice": 3}, {"currencyCode": "2cbzfTTHDZfM62ve", "currencyNamespace": "34TupSl87h2oWGal", "currencyType": "VIRTUAL", "discountAmount": 27, "discountExpireAt": "1977-03-08T00:00:00Z", "discountPercentage": 87, "discountPurchaseAt": "1996-06-25T00:00:00Z", "discountedPrice": 2, "expireAt": "1990-06-24T00:00:00Z", "price": 40, "purchaseAt": "1981-02-14T00:00:00Z", "trialPrice": 18}], "ALQMcgAwTM5egipy": [{"currencyCode": "0monpShnskXcBjE4", "currencyNamespace": "sNjf4jkelJ0tqf8e", "currencyType": "REAL", "discountAmount": 25, "discountExpireAt": "1973-04-21T00:00:00Z", "discountPercentage": 58, "discountPurchaseAt": "1981-02-07T00:00:00Z", "discountedPrice": 100, "expireAt": "1986-08-12T00:00:00Z", "price": 91, "purchaseAt": "1975-03-18T00:00:00Z", "trialPrice": 70}, {"currencyCode": "9aEOl7bP418649Hl", "currencyNamespace": "ud6CcbBX5ZNY9ZSv", "currencyType": "REAL", "discountAmount": 23, "discountExpireAt": "1988-03-28T00:00:00Z", "discountPercentage": 7, "discountPurchaseAt": "1996-10-17T00:00:00Z", "discountedPrice": 82, "expireAt": "1983-07-16T00:00:00Z", "price": 72, "purchaseAt": "1993-09-10T00:00:00Z", "trialPrice": 44}, {"currencyCode": "WhIQqTrJQTXnLlxS", "currencyNamespace": "pYlQvz9myy5siCtt", "currencyType": "VIRTUAL", "discountAmount": 73, "discountExpireAt": "1984-09-15T00:00:00Z", "discountPercentage": 32, "discountPurchaseAt": "1985-11-17T00:00:00Z", "discountedPrice": 96, "expireAt": "1984-08-23T00:00:00Z", "price": 86, "purchaseAt": "1972-11-25T00:00:00Z", "trialPrice": 76}]}}, {"itemIdentities": ["ek4LOKqYxnLGjDKg", "0yYwfxVUBXMNCJj3", "Z21WfXz9UiWcJuB1"], "itemIdentityType": "ITEM_ID", "regionData": {"s2rHzGPsrRn5unnG": [{"currencyCode": "Y1acMHq32By7zuSd", "currencyNamespace": "EFT1M0SVpyLC8n71", "currencyType": "VIRTUAL", "discountAmount": 51, "discountExpireAt": "1983-09-11T00:00:00Z", "discountPercentage": 24, "discountPurchaseAt": "1988-01-14T00:00:00Z", "discountedPrice": 78, "expireAt": "1990-06-28T00:00:00Z", "price": 52, "purchaseAt": "1993-09-27T00:00:00Z", "trialPrice": 29}, {"currencyCode": "RktorfeIuhHWNWww", "currencyNamespace": "Cb1TP9kYmZXdyJem", "currencyType": "VIRTUAL", "discountAmount": 44, "discountExpireAt": "1993-08-30T00:00:00Z", "discountPercentage": 60, "discountPurchaseAt": "1990-01-23T00:00:00Z", "discountedPrice": 52, "expireAt": "1977-04-24T00:00:00Z", "price": 98, "purchaseAt": "1992-09-06T00:00:00Z", "trialPrice": 68}, {"currencyCode": "7j76JvsVPRJ0Wu6P", "currencyNamespace": "PswtjxVwW5y3hqzW", "currencyType": "VIRTUAL", "discountAmount": 15, "discountExpireAt": "1975-12-20T00:00:00Z", "discountPercentage": 6, "discountPurchaseAt": "1998-08-29T00:00:00Z", "discountedPrice": 94, "expireAt": "1997-01-11T00:00:00Z", "price": 80, "purchaseAt": "1975-04-24T00:00:00Z", "trialPrice": 57}], "MYNAWqWGrhp5WGVK": [{"currencyCode": "Eg0MU3aJXm2AQOin", "currencyNamespace": "eD1dA8C5UU4cslZD", "currencyType": "REAL", "discountAmount": 57, "discountExpireAt": "1972-04-24T00:00:00Z", "discountPercentage": 2, "discountPurchaseAt": "1988-05-13T00:00:00Z", "discountedPrice": 34, "expireAt": "1991-05-03T00:00:00Z", "price": 19, "purchaseAt": "1981-09-15T00:00:00Z", "trialPrice": 70}, {"currencyCode": "WliSBb93QzXYOklI", "currencyNamespace": "bxkSSHnXP1lfJu3O", "currencyType": "VIRTUAL", "discountAmount": 45, "discountExpireAt": "1989-05-06T00:00:00Z", "discountPercentage": 2, "discountPurchaseAt": "1993-08-31T00:00:00Z", "discountedPrice": 67, "expireAt": "1985-04-04T00:00:00Z", "price": 12, "purchaseAt": "1986-12-14T00:00:00Z", "trialPrice": 3}, {"currencyCode": "nCF1Vr6tBAGx1Gb6", "currencyNamespace": "nVzHYMXT0EZKQXRk", "currencyType": "REAL", "discountAmount": 10, "discountExpireAt": "1992-04-20T00:00:00Z", "discountPercentage": 61, "discountPurchaseAt": "1972-07-01T00:00:00Z", "discountedPrice": 36, "expireAt": "1994-10-31T00:00:00Z", "price": 64, "purchaseAt": "1989-08-29T00:00:00Z", "trialPrice": 23}], "EC0satd81eKZ4sxt": [{"currencyCode": "yd4t82ZsrFWttor9", "currencyNamespace": "LAOZk30ncRveM0o3", "currencyType": "VIRTUAL", "discountAmount": 30, "discountExpireAt": "1998-07-27T00:00:00Z", "discountPercentage": 60, "discountPurchaseAt": "1973-01-27T00:00:00Z", "discountedPrice": 25, "expireAt": "1982-05-25T00:00:00Z", "price": 58, "purchaseAt": "1990-04-07T00:00:00Z", "trialPrice": 11}, {"currencyCode": "FE9f8yIxBQ8V9fCx", "currencyNamespace": "1bUezPqkau9qGBRL", "currencyType": "VIRTUAL", "discountAmount": 28, "discountExpireAt": "1994-10-17T00:00:00Z", "discountPercentage": 80, "discountPurchaseAt": "1994-07-07T00:00:00Z", "discountedPrice": 48, "expireAt": "1987-01-01T00:00:00Z", "price": 77, "purchaseAt": "1980-12-31T00:00:00Z", "trialPrice": 89}, {"currencyCode": "PA4zabJ79LGp4AGQ", "currencyNamespace": "rmQLE5yi1Zzis7NS", "currencyType": "REAL", "discountAmount": 78, "discountExpireAt": "1979-06-28T00:00:00Z", "discountPercentage": 20, "discountPurchaseAt": "1982-12-19T00:00:00Z", "discountedPrice": 22, "expireAt": "1983-08-04T00:00:00Z", "price": 3, "purchaseAt": "1990-04-27T00:00:00Z", "trialPrice": 71}]}}, {"itemIdentities": ["WmitqsBHP4fqejSb", "kxUq0TmnzPywIwxB", "PX6iiwFnY72vOC3J"], "itemIdentityType": "ITEM_ID", "regionData": {"247LK1ZaHN4tKXGU": [{"currencyCode": "92Hqiv63lfMPvZL6", "currencyNamespace": "M1JfZtx5F1pBvj0D", "currencyType": "VIRTUAL", "discountAmount": 6, "discountExpireAt": "1973-06-29T00:00:00Z", "discountPercentage": 67, "discountPurchaseAt": "1989-12-16T00:00:00Z", "discountedPrice": 59, "expireAt": "1971-06-11T00:00:00Z", "price": 70, "purchaseAt": "1973-01-12T00:00:00Z", "trialPrice": 17}, {"currencyCode": "nSaek6jxf6VwNS0E", "currencyNamespace": "w1xaWsm3k2v6OjOq", "currencyType": "VIRTUAL", "discountAmount": 4, "discountExpireAt": "1976-06-03T00:00:00Z", "discountPercentage": 32, "discountPurchaseAt": "1976-03-08T00:00:00Z", "discountedPrice": 58, "expireAt": "1975-08-29T00:00:00Z", "price": 26, "purchaseAt": "1987-09-29T00:00:00Z", "trialPrice": 64}, {"currencyCode": "pL6OSbfrztQa6UAN", "currencyNamespace": "z95bD5P1o62NFJH0", "currencyType": "VIRTUAL", "discountAmount": 3, "discountExpireAt": "1982-03-11T00:00:00Z", "discountPercentage": 56, "discountPurchaseAt": "1988-04-15T00:00:00Z", "discountedPrice": 15, "expireAt": "1998-03-16T00:00:00Z", "price": 93, "purchaseAt": "1987-06-28T00:00:00Z", "trialPrice": 22}], "cRL0mqctGWI7qLj3": [{"currencyCode": "WUZqrr1rESCLUDz9", "currencyNamespace": "f3JZN2KIyRkAnnEX", "currencyType": "REAL", "discountAmount": 42, "discountExpireAt": "1975-12-19T00:00:00Z", "discountPercentage": 72, "discountPurchaseAt": "1982-12-07T00:00:00Z", "discountedPrice": 65, "expireAt": "1977-08-08T00:00:00Z", "price": 23, "purchaseAt": "1989-03-12T00:00:00Z", "trialPrice": 35}, {"currencyCode": "aryg3tx933nsft5E", "currencyNamespace": "pfbbrqMycFpz4qQh", "currencyType": "VIRTUAL", "discountAmount": 58, "discountExpireAt": "1981-07-17T00:00:00Z", "discountPercentage": 10, "discountPurchaseAt": "1997-08-07T00:00:00Z", "discountedPrice": 45, "expireAt": "1982-11-13T00:00:00Z", "price": 16, "purchaseAt": "1989-03-26T00:00:00Z", "trialPrice": 7}, {"currencyCode": "Hx53yUiYxf3dn8Je", "currencyNamespace": "8oGyPt2QXvrVOrrt", "currencyType": "VIRTUAL", "discountAmount": 62, "discountExpireAt": "1991-11-29T00:00:00Z", "discountPercentage": 99, "discountPurchaseAt": "1974-02-06T00:00:00Z", "discountedPrice": 85, "expireAt": "1977-05-10T00:00:00Z", "price": 28, "purchaseAt": "1979-02-06T00:00:00Z", "trialPrice": 29}], "aY4XKCymzXOyq3VN": [{"currencyCode": "pmHPt1D3hB9FXoGC", "currencyNamespace": "vErOA1YilaxrFD0e", "currencyType": "VIRTUAL", "discountAmount": 34, "discountExpireAt": "1995-12-02T00:00:00Z", "discountPercentage": 49, "discountPurchaseAt": "1996-04-18T00:00:00Z", "discountedPrice": 67, "expireAt": "1986-01-11T00:00:00Z", "price": 24, "purchaseAt": "1978-04-29T00:00:00Z", "trialPrice": 54}, {"currencyCode": "FfDQOxtNBtwN6WQQ", "currencyNamespace": "nsCOA5cRujnKY5Gc", "currencyType": "VIRTUAL", "discountAmount": 83, "discountExpireAt": "1989-02-02T00:00:00Z", "discountPercentage": 55, "discountPurchaseAt": "1998-08-11T00:00:00Z", "discountedPrice": 38, "expireAt": "1985-06-06T00:00:00Z", "price": 60, "purchaseAt": "1986-01-30T00:00:00Z", "trialPrice": 94}, {"currencyCode": "BCfnZ5UF91YhGdtd", "currencyNamespace": "Ay3Elzv0kJ5d7Wxc", "currencyType": "VIRTUAL", "discountAmount": 49, "discountExpireAt": "1973-09-30T00:00:00Z", "discountPercentage": 98, "discountPurchaseAt": "1994-04-20T00:00:00Z", "discountedPrice": 68, "expireAt": "1975-05-07T00:00:00Z", "price": 88, "purchaseAt": "1978-04-23T00:00:00Z", "trialPrice": 25}]}}]}' \
    > test.out 2>&1
eval_tap $? 114 'BulkUpdateRegionData' test.out

#- 115 SearchItems
samples/cli/sample-apps Platform searchItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --itemType 'SEASON' \
    --limit '40' \
    --offset '93' \
    --sortBy '4v4SsoRLPyITWMfv' \
    --storeId 'crdYkZ8AwYoZoGbW' \
    --keyword 'mmKfusJFiiGhgEKU' \
    --language 'OzBSwXHyXgprOE7T' \
    > test.out 2>&1
eval_tap $? 115 'SearchItems' test.out

#- 116 QueryUncategorizedItems
samples/cli/sample-apps Platform queryUncategorizedItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --limit '29' \
    --offset '25' \
    --sortBy '["name:asc", "createdAt:desc", "name:desc"]' \
    --storeId '410B36rMDYYFk5x3' \
    > test.out 2>&1
eval_tap $? 116 'QueryUncategorizedItems' test.out

#- 117 GetItem
samples/cli/sample-apps Platform getItem \
    --itemId 'urpS6E8CNf05cQj8' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --storeId 'Akv0H5BsYiJD7PXg' \
    > test.out 2>&1
eval_tap $? 117 'GetItem' test.out

#- 118 UpdateItem
samples/cli/sample-apps Platform updateItem \
    --itemId 'EAKlpFQw4MaWMDGP' \
    --namespace $AB_NAMESPACE \
    --storeId 'FJlvU3dEQRxCHh3S' \
    --body '{"appId": "LsxWYeCHapQ2H5CJ", "appType": "SOFTWARE", "baseAppId": "I5Ec3lKWLAzBMvW2", "boothName": "qFnbvGtIGPWdzEAK", "categoryPath": "TDZPH9XTX4nPWW6K", "clazz": "8JdWVUElHssGHZ3u", "displayOrder": 66, "entitlementType": "DURABLE", "ext": {"ZSSRXO0okUtzkjWm": {}, "T9ORl5v0fLxbP3Rs": {}, "c12xuY3PBxb4Ytdi": {}}, "features": ["KU3CfS2N4uqBsPks", "4GmK0a3z52CodmNR", "7224OqdjiZjUNT4v"], "flexible": false, "images": [{"as": "S2ZzDgxNpTY8xkaS", "caption": "YfZfY0WfIXwDxuAQ", "height": 86, "imageUrl": "Lfs0KDtMtPvJd5qW", "smallImageUrl": "82StdadAV61YFmDd", "width": 53}, {"as": "pjQdan7Obp0nEbrQ", "caption": "zTgjtQmdL59qtlve", "height": 84, "imageUrl": "2csn7ziLxZXRlJdd", "smallImageUrl": "j51gfIBVXi21cd0a", "width": 30}, {"as": "UEoqHG0S0NOYoR50", "caption": "EmAJWosMN9sAVIYT", "height": 23, "imageUrl": "n27r6p4VOQCoI2WC", "smallImageUrl": "MUKfXqPGc5UuVgr7", "width": 18}], "itemIds": ["4IKAtGQdgw3hfH64", "Nll2f5D1ETxmzeyx", "QU3bH8uItBdgrX1o"], "itemQty": {"Cbt9OfMjfwlhzTJ3": 45, "yrTFc7WMJeXYAW47": 26, "GDiqBDUJEYkKL22A": 32}, "itemType": "COINS", "listable": false, "localizations": {"8IT4TqKsAccl9GIw": {"description": "MHuh3pbmZjiizh4s", "localExt": {"CDkHtrv1gl8oOH9t": {}, "wp9dx8iOcf63uKZv": {}, "Htjn5DkR7Dy3n1bq": {}}, "longDescription": "fkMAOef4RV3IPZFk", "title": "pHTic3maSzA1v5JG"}, "haZi3H8XTBAgigDe": {"description": "XZxdQ5SBXHycgq0v", "localExt": {"yN5Y4noDhsMACcUs": {}, "TTvWhnPRYVIgQq8a": {}, "FnxIdzDDCUFjFQZV": {}}, "longDescription": "30dha1t8SPGP7xBl", "title": "fj3yWIBx2pd2jMyP"}, "fDkdsLXT2iHJ5F7b": {"description": "rURDL1L9qqNAzyOF", "localExt": {"PhXdXW4pW1tPiOx7": {}, "PGBSmNLSkstOC5ec": {}, "3JmIPLWyn46d3p9y": {}}, "longDescription": "VgMu7DsaTUxq7f1A", "title": "ZscWjv7v7zujOT5Y"}}, "lootBoxConfig": {"rewardCount": 44, "rewards": [{"lootBoxItems": [{"count": 6, "duration": 32, "endDate": "1979-05-11T00:00:00Z", "itemId": "muEqi7NL7kCaHcqK", "itemSku": "ZUT3CTvxpXe54KeP", "itemType": "MlgFZu7nY9W6uiPz"}, {"count": 70, "duration": 62, "endDate": "1993-08-04T00:00:00Z", "itemId": "n8CvEUcjbWiHIHwF", "itemSku": "TtuDW3qUp7iCIVRt", "itemType": "WXJXxMA0dtDvfPau"}, {"count": 25, "duration": 76, "endDate": "1999-01-14T00:00:00Z", "itemId": "PdeGW5n4P4p4aEuM", "itemSku": "8MCd6zHd7qPDIdh6", "itemType": "uYgt5uida0cQ08iU"}], "name": "fKvhcrgwLK4JziQX", "odds": 0.9796355121985478, "type": "REWARD", "weight": 95}, {"lootBoxItems": [{"count": 81, "duration": 4, "endDate": "1975-11-23T00:00:00Z", "itemId": "bVM0crNg6wxSAEKY", "itemSku": "gmglPlRxaqBjeYnQ", "itemType": "Sz8PN7PcvxuRqGnA"}, {"count": 15, "duration": 100, "endDate": "1997-12-24T00:00:00Z", "itemId": "yccGBAHpw57815Jn", "itemSku": "YIykbsTZTVSljAW4", "itemType": "EO45Yp9ImhtQPxfP"}, {"count": 15, "duration": 91, "endDate": "1996-01-23T00:00:00Z", "itemId": "Y6kwxwrAU8DqBcnt", "itemSku": "4erzIuGdt1WWY2yL", "itemType": "OwGKXbejdCeWOPKR"}], "name": "ZV8MPW0oka5MxjGx", "odds": 0.9448765282129381, "type": "REWARD_GROUP", "weight": 60}, {"lootBoxItems": [{"count": 48, "duration": 96, "endDate": "1991-06-22T00:00:00Z", "itemId": "XWkgwSfqLhiI4xTP", "itemSku": "gHbV94x2Vr65E59A", "itemType": "eR19ybA9ukjAeele"}, {"count": 98, "duration": 38, "endDate": "1972-11-28T00:00:00Z", "itemId": "HLsSMZ4HjNPHwlnQ", "itemSku": "rHpivARYxBeEPbXv", "itemType": "Y4BzaNdvP5HJXIoK"}, {"count": 25, "duration": 6, "endDate": "1994-06-29T00:00:00Z", "itemId": "Ht9X8ugUMKNpkuAx", "itemSku": "8yFrqT0DP9UKgRu4", "itemType": "8a49K0A3IZFFvJ7m"}], "name": "nAwDNvgv0psa2MZc", "odds": 0.8838087878602986, "type": "REWARD", "weight": 77}], "rollFunction": "DEFAULT"}, "maxCount": 89, "maxCountPerUser": 79, "name": "jIkU1UW9rdV6eSKK", "optionBoxConfig": {"boxItems": [{"count": 60, "duration": 58, "endDate": "1972-12-05T00:00:00Z", "itemId": "j78PcorDJEAxSbJa", "itemSku": "6H4ZcUSAhGVtipqw", "itemType": "aJgpWrIR0YOYP1dI"}, {"count": 17, "duration": 34, "endDate": "1981-11-13T00:00:00Z", "itemId": "LsyyTl1gvGUOmIJl", "itemSku": "Js3NRUWHD3jAGdZn", "itemType": "VZgNRcQsMDTeebaM"}, {"count": 15, "duration": 31, "endDate": "1975-09-06T00:00:00Z", "itemId": "lVmw063Y42K2uZKO", "itemSku": "LE3q3JS2zHBkA56J", "itemType": "zIPCc08BfyW89YNI"}]}, "purchasable": true, "recurring": {"cycle": "YEARLY", "fixedFreeDays": 16, "fixedTrialCycles": 35, "graceDays": 41}, "regionData": {"rTMWBTnsg0MD667w": [{"currencyCode": "s9VF95WsT0qfED7U", "currencyNamespace": "ducsXUBKJVtXKWPN", "currencyType": "REAL", "discountAmount": 65, "discountExpireAt": "1987-06-03T00:00:00Z", "discountPercentage": 37, "discountPurchaseAt": "1991-12-06T00:00:00Z", "expireAt": "1981-07-05T00:00:00Z", "price": 64, "purchaseAt": "1977-12-15T00:00:00Z", "trialPrice": 14}, {"currencyCode": "xdWXpQBky6Gwx7Q0", "currencyNamespace": "3cBvV1OEuC3g9nGJ", "currencyType": "REAL", "discountAmount": 93, "discountExpireAt": "1983-02-03T00:00:00Z", "discountPercentage": 50, "discountPurchaseAt": "1994-02-04T00:00:00Z", "expireAt": "1980-10-05T00:00:00Z", "price": 69, "purchaseAt": "1976-10-19T00:00:00Z", "trialPrice": 66}, {"currencyCode": "z0ALdIMLso3GksJn", "currencyNamespace": "ViOoQ3PEsWQdYrJJ", "currencyType": "VIRTUAL", "discountAmount": 17, "discountExpireAt": "1975-11-28T00:00:00Z", "discountPercentage": 71, "discountPurchaseAt": "1997-04-10T00:00:00Z", "expireAt": "1971-12-15T00:00:00Z", "price": 22, "purchaseAt": "1987-07-06T00:00:00Z", "trialPrice": 92}], "mezAGeZ6AUBHU93X": [{"currencyCode": "JbHZGeXIW58QGWSj", "currencyNamespace": "X61Zv9L7VlmQlter", "currencyType": "VIRTUAL", "discountAmount": 81, "discountExpireAt": "1982-03-30T00:00:00Z", "discountPercentage": 76, "discountPurchaseAt": "1996-11-09T00:00:00Z", "expireAt": "1987-05-06T00:00:00Z", "price": 29, "purchaseAt": "1984-02-15T00:00:00Z", "trialPrice": 43}, {"currencyCode": "SYNshiGBeHUNkS5H", "currencyNamespace": "qREUgpmyCiPKl5Nq", "currencyType": "VIRTUAL", "discountAmount": 7, "discountExpireAt": "1972-11-01T00:00:00Z", "discountPercentage": 19, "discountPurchaseAt": "1980-09-19T00:00:00Z", "expireAt": "1992-06-26T00:00:00Z", "price": 95, "purchaseAt": "1986-08-07T00:00:00Z", "trialPrice": 53}, {"currencyCode": "hBap8oL4pFARPuEy", "currencyNamespace": "A7WBWhavmQjR2Me5", "currencyType": "REAL", "discountAmount": 0, "discountExpireAt": "1994-01-01T00:00:00Z", "discountPercentage": 66, "discountPurchaseAt": "1980-07-16T00:00:00Z", "expireAt": "1997-06-23T00:00:00Z", "price": 95, "purchaseAt": "1973-08-06T00:00:00Z", "trialPrice": 82}], "qfGMCf7Agh0LvObX": [{"currencyCode": "NEmOJhWDd32LYsrU", "currencyNamespace": "6Cpr8Gj3SyYo4b8x", "currencyType": "REAL", "discountAmount": 40, "discountExpireAt": "1991-09-26T00:00:00Z", "discountPercentage": 70, "discountPurchaseAt": "1981-03-21T00:00:00Z", "expireAt": "1973-08-20T00:00:00Z", "price": 47, "purchaseAt": "1976-03-01T00:00:00Z", "trialPrice": 80}, {"currencyCode": "NctZm68af83ji0Wo", "currencyNamespace": "07vt0F960fqyK085", "currencyType": "REAL", "discountAmount": 18, "discountExpireAt": "1979-10-26T00:00:00Z", "discountPercentage": 96, "discountPurchaseAt": "1998-08-16T00:00:00Z", "expireAt": "1971-07-01T00:00:00Z", "price": 77, "purchaseAt": "1989-06-11T00:00:00Z", "trialPrice": 12}, {"currencyCode": "qxlNrkWLbD7wvXGi", "currencyNamespace": "fqYje7pdNrzVKd2U", "currencyType": "VIRTUAL", "discountAmount": 91, "discountExpireAt": "1980-03-29T00:00:00Z", "discountPercentage": 94, "discountPurchaseAt": "1992-11-10T00:00:00Z", "expireAt": "1977-03-08T00:00:00Z", "price": 2, "purchaseAt": "1972-06-10T00:00:00Z", "trialPrice": 64}]}, "saleConfig": {"currencyCode": "NQViMFoAvHVyqvYp", "price": 87}, "seasonType": "TIER", "sectionExclusive": false, "sellable": false, "sku": "6vZOzw7Ggm5WE3vW", "stackable": false, "status": "INACTIVE", "tags": ["u1PgBplH0zjyRdEZ", "qHFW11PWSkaxNW6i", "glYpgrr2yQs1iKFH"], "targetCurrencyCode": "YzkgT2Ou77UGaUiy", "targetNamespace": "XXwvDeftcgnKYWgA", "thumbnailUrl": "LpsQ8X6XCuY0PP3I", "useCount": 11}' \
    > test.out 2>&1
eval_tap $? 118 'UpdateItem' test.out

#- 119 DeleteItem
samples/cli/sample-apps Platform deleteItem \
    --itemId 'c1wNWqF49Hky8vJi' \
    --namespace $AB_NAMESPACE \
    --force 'true' \
    --storeId 'X3f0AgoxnjofC2zr' \
    > test.out 2>&1
eval_tap $? 119 'DeleteItem' test.out

#- 120 AcquireItem
samples/cli/sample-apps Platform acquireItem \
    --itemId 'KVjvzX3CNRUFpXLd' \
    --namespace $AB_NAMESPACE \
    --body '{"count": 98, "orderNo": "no2Hp3xYCmYYABDY"}' \
    > test.out 2>&1
eval_tap $? 120 'AcquireItem' test.out

#- 121 GetApp
samples/cli/sample-apps Platform getApp \
    --itemId 'zU7FFORARzROWHBa' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'Hwnf50LY17AyVVXw' \
    > test.out 2>&1
eval_tap $? 121 'GetApp' test.out

#- 122 UpdateApp
samples/cli/sample-apps Platform updateApp \
    --itemId 't57UHHrLFSl5Eph7' \
    --namespace $AB_NAMESPACE \
    --storeId 'qOAiJUFfuOY3eoFC' \
    --body '{"carousel": [{"alt": "qoZ4eAym0a3xA0z0", "previewUrl": "GLAS5WcDnAmvi8iR", "thumbnailUrl": "oTAo5RvVJMH1E5oq", "type": "image", "url": "EbsuBkX7xCPXNYmg", "videoSource": "youtube"}, {"alt": "jit3hTiGSsEEZoZL", "previewUrl": "YEsr7M1qFa0PzZF6", "thumbnailUrl": "OZtClRnenV4iSaQO", "type": "video", "url": "f39NXr900LKYDBTc", "videoSource": "vimeo"}, {"alt": "HGn4MaOxyExMI0pC", "previewUrl": "576EexQjr4cSXZYf", "thumbnailUrl": "1LYXLtGRzRDuKvrB", "type": "image", "url": "F29TbueUqmmsvQXy", "videoSource": "generic"}], "developer": "9RRbMtrujIHplXwU", "forumUrl": "39g0fsmp46XuUliM", "genres": ["Indie", "Adventure", "Simulation"], "localizations": {"ITCXkYCINRIOgdNb": {"announcement": "45CZA9KmcnwBOAHV", "slogan": "Kh0K2Aj1ZuNY0o5D"}, "qkHyomSrcCthUDt9": {"announcement": "iG393oxhOAAJK50t", "slogan": "hHJSYKuNooZ1wXVJ"}, "ythBdYoSXEbn20G0": {"announcement": "SSGJtlCBEbYkYhjz", "slogan": "j1lJQnXTmGxpajUs"}}, "platformRequirements": {"GUXL5ksSN9JiVpHg": [{"additionals": "NUmRO0sZIkv8MhOv", "directXVersion": "FVAdTTcxvntp6E09", "diskSpace": "6mSpeLFtRFmkeGaR", "graphics": "PYuNy83H4aO4nsT0", "label": "TdWU9xp4lLvyikTs", "osVersion": "chs0aMvGB8MJaNww", "processor": "Ju8wiME7bqYdti2s", "ram": "it7fgXwC7Z1O2lgm", "soundCard": "QWCPcDlwh936XTXP"}, {"additionals": "YRcvpkBdG6G0hisO", "directXVersion": "fBNEs8ocqfMLBAR9", "diskSpace": "7KkWJqnaHESspYHc", "graphics": "E4zIb3CVATVSacaG", "label": "jaiELF6XKUgWhM0u", "osVersion": "3RnSFQB7h3wCxEEX", "processor": "9X2rQ9oUzILiaE7O", "ram": "bGJKtrd6GEPeRrFa", "soundCard": "6MBzUD5yoifg2SPI"}, {"additionals": "JbP36LSSr8pyH3tb", "directXVersion": "odE6Fm0aEpP95oWc", "diskSpace": "FPYpdQeyFBMhovdc", "graphics": "vxhKEZ3MkYfosLXu", "label": "3aIDwsIBPZ54Espp", "osVersion": "G0e8Zzmvhhm48f01", "processor": "uPOp61kqUBmOZJQj", "ram": "3HdygjuTmXfD5j3A", "soundCard": "PMPwqSh6PjNJGgc7"}], "8Gh7TU5W9CWEVk77": [{"additionals": "LRxExv5jDWdBA4d5", "directXVersion": "C9YaDonPx0t8Q9KZ", "diskSpace": "sF9qUGytMrgQhspA", "graphics": "fQ8RbMNYU9K275ve", "label": "CpF78QPknDEmb1KB", "osVersion": "qKtipqDtpO6OU9C6", "processor": "LyANwwTXjjnfO8dI", "ram": "PO4aopjOIFlwfTSc", "soundCard": "9QW5zd51KirYClYE"}, {"additionals": "8rkoZlCfvhrjYdv8", "directXVersion": "eMkMYz1GLEppf0pY", "diskSpace": "L27qKvkyRJmcK0W2", "graphics": "jS51ymThYpUzVteN", "label": "wOgYgGx3byeDj7qh", "osVersion": "os4YDpBXsVgoCbIQ", "processor": "RYxExA4YZB4M2Gi9", "ram": "0vkp2fdf9OFSee0J", "soundCard": "7haLfhIpPvDsl3k2"}, {"additionals": "Dee1nFqPSod3HZcY", "directXVersion": "kPLOnC3vDtQ8DvBb", "diskSpace": "37WezcntkuRQxbna", "graphics": "8ZcVleP0kkJ5pS0n", "label": "1rtHePx7px5yL9DT", "osVersion": "ZGaXjhwWAVSTftiM", "processor": "DoNnDnWIY8T82MoH", "ram": "BJznBg6BpaE31l2f", "soundCard": "GOz7n2kqMY4OQgUZ"}], "wdqXFJgmo9cS6TGu": [{"additionals": "7rBrVFmGETOrSbYu", "directXVersion": "mbzS8sdekexCPujS", "diskSpace": "qmIB1zd2leXqnZKj", "graphics": "owZ2e2jz8awD98C0", "label": "zrIkGaTEQ8shnghb", "osVersion": "aH1SxFtXjmY2cE6X", "processor": "DrstV13DwTURUm6a", "ram": "2xziTel4n8z6jGZj", "soundCard": "LUcBchxmktdyJ0kr"}, {"additionals": "t3WabH5pzO5lGSoo", "directXVersion": "moz3RlqC7q7K4N9A", "diskSpace": "LZ04FLOPO1FEBP95", "graphics": "LsHYIonpFGZikeOf", "label": "rZk9Z7ZAkc7jch75", "osVersion": "ZSt8DcxzQGJKT8Ap", "processor": "z53fJtK2n6xHMIvP", "ram": "UtMRSaiwwMdlGqnD", "soundCard": "EipnsXsnMUeqDjl6"}, {"additionals": "4KwSYZetb6C2Fs45", "directXVersion": "UzDSdukRBAgPQ4oa", "diskSpace": "79oPjP8Vly6RJp7p", "graphics": "EPwznUuTMmUWvsFq", "label": "qBmswNTIVKrhwh6P", "osVersion": "uZUX3eGtsYwgSwHN", "processor": "hxZuVGPJVf8cCgrq", "ram": "GlLKBVLivMpjyha5", "soundCard": "7fQtAf0uXdH8fjaq"}]}, "platforms": ["Android", "IOS", "Android"], "players": ["LocalCoop", "CrossPlatformMulti", "MMO"], "primaryGenre": "Racing", "publisher": "8dRUYYP1aR0UtWxW", "releaseDate": "1989-07-22T00:00:00Z", "websiteUrl": "nTQPHRNxLnHNY7vO"}' \
    > test.out 2>&1
eval_tap $? 122 'UpdateApp' test.out

#- 123 DisableItem
samples/cli/sample-apps Platform disableItem \
    --itemId '1M8mGrj4Ln4VLOQR' \
    --namespace $AB_NAMESPACE \
    --storeId 'q4J0HRAFcOFseGCa' \
    > test.out 2>&1
eval_tap $? 123 'DisableItem' test.out

#- 124 GetItemDynamicData
samples/cli/sample-apps Platform getItemDynamicData \
    --itemId 'QYXTQec96wbsoLhf' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 124 'GetItemDynamicData' test.out

#- 125 EnableItem
samples/cli/sample-apps Platform enableItem \
    --itemId '9XeR39xPbBN5wZLX' \
    --namespace $AB_NAMESPACE \
    --storeId 'TmIZaBaAm4n6ucf4' \
    > test.out 2>&1
eval_tap $? 125 'EnableItem' test.out

#- 126 FeatureItem
samples/cli/sample-apps Platform featureItem \
    --feature 'TYHwjWtomH7Pk0GF' \
    --itemId 'v2xrnQ9VXoWN5I50' \
    --namespace $AB_NAMESPACE \
    --storeId 'LXozw16lk97OP8g2' \
    > test.out 2>&1
eval_tap $? 126 'FeatureItem' test.out

#- 127 DefeatureItem
samples/cli/sample-apps Platform defeatureItem \
    --feature 'aoJ93ysiF1SuH1Rn' \
    --itemId 'sj6BeMagRCBdwums' \
    --namespace $AB_NAMESPACE \
    --storeId 'VTP2tdtFlS6bH9db' \
    > test.out 2>&1
eval_tap $? 127 'DefeatureItem' test.out

#- 128 GetLocaleItem
samples/cli/sample-apps Platform getLocaleItem \
    --itemId 'b0Tn36PvlbpTzQO7' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --language 'HqKeoc3vV6H8SaRC' \
    --populateBundle 'false' \
    --region 'j9NHm5h8DhWBNjFL' \
    --storeId 'GPeWllOG7mwAqQII' \
    > test.out 2>&1
eval_tap $? 128 'GetLocaleItem' test.out

#- 129 UpdateItemPurchaseCondition
samples/cli/sample-apps Platform updateItemPurchaseCondition \
    --itemId 'T4HJDM9cSL87aw20' \
    --namespace $AB_NAMESPACE \
    --storeId 'hYL2CSy5Vi6tY0CU' \
    --body '{"purchaseCondition": {"conditionGroups": [{"operator": "and", "predicates": [{"anyOf": 78, "comparison": "excludes", "name": "paFpPDPTOY3KXYrN", "predicateType": "SeasonPassPredicate", "value": "DtmlTUX2tcdvwlQ1", "values": ["kPq7505qj5cEGKEy", "4SHcu4OIssNGlnon", "4jzaneyHA0M0DbaI"]}, {"anyOf": 83, "comparison": "isLessThanOrEqual", "name": "W05uauIrUvll1efB", "predicateType": "EntitlementPredicate", "value": "gsTb8sC0NXk7qBIq", "values": ["oupX6Gj9uHOlLiPO", "va1PUJlqmpiwoKKu", "MTXqzGqTnPaRdiMT"]}, {"anyOf": 67, "comparison": "is", "name": "5M20SdgVU00eyo4h", "predicateType": "SeasonPassPredicate", "value": "omEcsSW1LkshYCgI", "values": ["Lu1NCjFRJAwrBf6k", "XSvNLtSGwCVlw9eI", "a4oStVleedKO8JOJ"]}]}, {"operator": "or", "predicates": [{"anyOf": 98, "comparison": "isLessThan", "name": "sv2qZE1BSTkMdX9U", "predicateType": "SeasonPassPredicate", "value": "GRpBlpUJFEGP5Lbc", "values": ["B4EzWdRdfos5kS5d", "j5MvIIVVl2XClZ1K", "IlhCeohesyY85hl7"]}, {"anyOf": 28, "comparison": "is", "name": "BkzUki3yOjK9QB4J", "predicateType": "EntitlementPredicate", "value": "MQpPICqarXqlgb54", "values": ["tGKHz8cHRRSZdssV", "4cWxMnLQYcAuTK4r", "HgBZypdBUumA1m9z"]}, {"anyOf": 96, "comparison": "excludes", "name": "2jMf9DorYvQjFWbu", "predicateType": "SeasonTierPredicate", "value": "T8jGi1sN8yn1yFon", "values": ["V68KcBfjfN4Vy1wU", "5wVuYPhVceEpMwgx", "JRvf6kx8hJWDKqku"]}]}, {"operator": "and", "predicates": [{"anyOf": 56, "comparison": "isLessThanOrEqual", "name": "m1SBGLJax115av8o", "predicateType": "SeasonTierPredicate", "value": "R5PXtbpYlTWK9pyM", "values": ["POo1j3my1nd9cE8Z", "r0GQiZBfVCvtrL9H", "C67wAdXVmYBY9t6i"]}, {"anyOf": 77, "comparison": "isGreaterThanOrEqual", "name": "NHOoYiIY7XuUuXuC", "predicateType": "SeasonTierPredicate", "value": "FxzQuSmvLZCOwcYk", "values": ["DQROoOdirsWSbNcg", "hcJsvQdnxcIah4Rh", "PjeVGw87IlLX8WXh"]}, {"anyOf": 79, "comparison": "isGreaterThan", "name": "a5IVf2zRcAmyNupf", "predicateType": "EntitlementPredicate", "value": "UHfaTfdNLeVrKSAB", "values": ["D1Sr5PQfWtrf5ddJ", "z1DrC1nP91Tldlqt", "9D0tDjkPjt88VilR"]}]}]}}' \
    > test.out 2>&1
eval_tap $? 129 'UpdateItemPurchaseCondition' test.out

#- 130 ReturnItem
samples/cli/sample-apps Platform returnItem \
    --itemId '10udRclfNOtdNxWF' \
    --namespace $AB_NAMESPACE \
    --body '{"orderNo": "ITwoc9rICB9vS8Gj"}' \
    > test.out 2>&1
eval_tap $? 130 'ReturnItem' test.out

#- 131 QueryKeyGroups
samples/cli/sample-apps Platform queryKeyGroups \
    --namespace $AB_NAMESPACE \
    --limit '64' \
    --name 'FEditnZK0uSf0Yl1' \
    --offset '26' \
    --tag 'zpID5FgFNJLbY2ai' \
    > test.out 2>&1
eval_tap $? 131 'QueryKeyGroups' test.out

#- 132 CreateKeyGroup
samples/cli/sample-apps Platform createKeyGroup \
    --namespace $AB_NAMESPACE \
    --body '{"description": "4QkGlVtO4RwQHz8q", "name": "Q3IOTDYmFvl3EoHv", "status": "INACTIVE", "tags": ["JJpBgK9zUfL8XcrJ", "k6GpjdMYfVJ1GKYf", "mDL5os6Kx1Z1p7Cp"]}' \
    > test.out 2>&1
eval_tap $? 132 'CreateKeyGroup' test.out

#- 133 GetKeyGroupByBoothName
eval_tap 0 133 'GetKeyGroupByBoothName # SKIP deprecated' test.out

#- 134 GetKeyGroup
samples/cli/sample-apps Platform getKeyGroup \
    --keyGroupId 'PWggRsMLY09PCT4s' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 134 'GetKeyGroup' test.out

#- 135 UpdateKeyGroup
samples/cli/sample-apps Platform updateKeyGroup \
    --keyGroupId 'hN9rrA5ucHYXX8DK' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "m2u2a6yHz8aVq7lz", "name": "PtQYL8FFeuvl9qxQ", "status": "ACTIVE", "tags": ["danoCoF1wc6mcyHL", "yVxzBfulltjY0dFB", "EsF3oyW6SBMgKk4u"]}' \
    > test.out 2>&1
eval_tap $? 135 'UpdateKeyGroup' test.out

#- 136 GetKeyGroupDynamic
samples/cli/sample-apps Platform getKeyGroupDynamic \
    --keyGroupId 'Bv9WbgtSDwmDGlCE' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 136 'GetKeyGroupDynamic' test.out

#- 137 ListKeys
samples/cli/sample-apps Platform listKeys \
    --keyGroupId 'ybTk4CJcfGh3c3Hg' \
    --namespace $AB_NAMESPACE \
    --limit '3' \
    --offset '26' \
    --status 'ACTIVE' \
    > test.out 2>&1
eval_tap $? 137 'ListKeys' test.out

#- 138 UploadKeys
samples/cli/sample-apps Platform uploadKeys \
    --keyGroupId 'MNtXqQVtl6NWJiGq' \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 138 'UploadKeys' test.out

#- 139 QueryOrders
samples/cli/sample-apps Platform queryOrders \
    --namespace $AB_NAMESPACE \
    --endTime 'xgbfDghJ7VyYmtaS' \
    --limit '11' \
    --offset '59' \
    --orderNos '["VjkvDyII8Z9UIMvg", "IPigplYrVwDLyLQ1", "HPtDRF8elFLeZaPc"]' \
    --sortBy 'avq3JJKCJ3QOfGi5' \
    --startTime 'pClRHLrl3Uk4R8Hl' \
    --status 'REFUND_FAILED' \
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
    --orderNo 'ITCFOqcNy7dbGDL2' \
    > test.out 2>&1
eval_tap $? 141 'GetOrder' test.out

#- 142 RefundOrder
samples/cli/sample-apps Platform refundOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'H7jHd3pFAeaPQFW5' \
    --body '{"description": "cGKatPfLQWxHnYhb"}' \
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
    --body '{"dryRun": false, "notifyUrl": "AMhq0rw3JjwgWcjT", "privateKey": "rXYfrLD91X3bV1yr"}' \
    > test.out 2>&1
eval_tap $? 144 'UpdatePaymentCallbackConfig' test.out

#- 145 QueryPaymentNotifications
samples/cli/sample-apps Platform queryPaymentNotifications \
    --namespace $AB_NAMESPACE \
    --endDate 'T68E2px4V19yw9NZ' \
    --externalId 'R6w2yDSioSvj2LfR' \
    --limit '98' \
    --notificationSource 'WALLET' \
    --notificationType 'CLn0QW5IkwBbqAN3' \
    --offset '55' \
    --paymentOrderNo 'fSmBb0vTfyFi6EdZ' \
    --startDate '2M32VVywIU02cGd7' \
    --status 'ERROR' \
    > test.out 2>&1
eval_tap $? 145 'QueryPaymentNotifications' test.out

#- 146 QueryPaymentOrders
samples/cli/sample-apps Platform queryPaymentOrders \
    --namespace $AB_NAMESPACE \
    --channel 'EXTERNAL' \
    --extTxId 'RDXv5LcF8ixKIilr' \
    --limit '67' \
    --offset '9' \
    --status 'NOTIFICATION_OF_CHARGEBACK' \
    > test.out 2>&1
eval_tap $? 146 'QueryPaymentOrders' test.out

#- 147 CreatePaymentOrderByDedicated
samples/cli/sample-apps Platform createPaymentOrderByDedicated \
    --namespace $AB_NAMESPACE \
    --body '{"currencyCode": "fnPIvNiWoo6U1rhN", "currencyNamespace": "YYnFfz8mwwUPhs7r", "customParameters": {"4ZwOzI9YLFYafIA0": {}, "IZC6jTZLAWvmrnni": {}, "n3xwLcmidD1DRKU6": {}}, "description": "htB5ZflyOX8IZJIT", "extOrderNo": "JXCX2roTIWBJ2YLq", "extUserId": "unqY9OEBnrRxdva0", "itemType": "APP", "language": "uvjW_qwXQ", "metadata": {"6dJTloUZgd59CDa0": "sMa2Cl8evSWLFPFA", "St1c9OUhpU2B5bph": "PzH09568eaw5VklV", "s4NlAryRwx2iI5Qt": "sDhKrvZyjLGTHwn0"}, "notifyUrl": "6Y5Q4VDktAgbOjIU", "omitNotification": false, "platform": "lXoQwv2PvACBUYVt", "price": 68, "recurringPaymentOrderNo": "YvKONM9Rqh2XkBpT", "region": "US1KhngY0HRUaeWl", "returnUrl": "qgDQ01hc6GPp3dEd", "sandbox": false, "sku": "FxRPkH5Jj4nvd7aF", "subscriptionId": "k2XyL0Sg5TBOUZLE", "targetNamespace": "dq8PiWtAXIsrSEsH", "targetUserId": "L7k2g1O0WCaVgV21", "title": "gn9KxZccAKltKiDl"}' \
    > test.out 2>&1
eval_tap $? 147 'CreatePaymentOrderByDedicated' test.out

#- 148 ListExtOrderNoByExtTxId
samples/cli/sample-apps Platform listExtOrderNoByExtTxId \
    --namespace $AB_NAMESPACE \
    --extTxId 'Ie70U7Zl6nyqMdKu' \
    > test.out 2>&1
eval_tap $? 148 'ListExtOrderNoByExtTxId' test.out

#- 149 GetPaymentOrder
samples/cli/sample-apps Platform getPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'ogJzwFG266GGPGFD' \
    > test.out 2>&1
eval_tap $? 149 'GetPaymentOrder' test.out

#- 150 ChargePaymentOrder
samples/cli/sample-apps Platform chargePaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo '6nWFkvNeXmUqqB5q' \
    --body '{"extTxId": "Cvx7P44jMqNUAgXK", "paymentMethod": "DmPrdkirWiIh2i3s", "paymentProvider": "WALLET"}' \
    > test.out 2>&1
eval_tap $? 150 'ChargePaymentOrder' test.out

#- 151 RefundPaymentOrderByDedicated
samples/cli/sample-apps Platform refundPaymentOrderByDedicated \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'XCDi3tScbtlAakMK' \
    --body '{"description": "pKOEMrOXsMmaUsaV"}' \
    > test.out 2>&1
eval_tap $? 151 'RefundPaymentOrderByDedicated' test.out

#- 152 SimulatePaymentOrderNotification
samples/cli/sample-apps Platform simulatePaymentOrderNotification \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'VV05vAS3kW5Jjl9r' \
    --body '{"amount": 60, "currencyCode": "J0ZGEyS0RysKaWVf", "notifyType": "CHARGE", "paymentProvider": "WXPAY", "salesTax": 100, "vat": 45}' \
    > test.out 2>&1
eval_tap $? 152 'SimulatePaymentOrderNotification' test.out

#- 153 GetPaymentOrderChargeStatus
samples/cli/sample-apps Platform getPaymentOrderChargeStatus \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'V11y5fvu77uqe1Q7' \
    > test.out 2>&1
eval_tap $? 153 'GetPaymentOrderChargeStatus' test.out

#- 154 GetPlatformWalletConfig
samples/cli/sample-apps Platform getPlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Steam' \
    > test.out 2>&1
eval_tap $? 154 'GetPlatformWalletConfig' test.out

#- 155 UpdatePlatformWalletConfig
samples/cli/sample-apps Platform updatePlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'GooglePlay' \
    --body '{"allowedBalanceOrigins": ["Playstation", "Other", "System"]}' \
    > test.out 2>&1
eval_tap $? 155 'UpdatePlatformWalletConfig' test.out

#- 156 ResetPlatformWalletConfig
samples/cli/sample-apps Platform resetPlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'IOS' \
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
    --body '{"entitlement": {"consumable": {"enabled": false, "strategy": "REVOKE_OR_REPORT"}, "durable": {"enabled": false, "strategy": "CUSTOM"}}, "wallet": {"enabled": false, "strategy": "ALWAYS_REVOKE"}}' \
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
    --endTime 'yTNslBa9Rbom0j2w' \
    --limit '33' \
    --offset '57' \
    --source 'OTHER' \
    --startTime '7IHMnaCoE5y80PiN' \
    --status 'SUCCESS' \
    --transactionId 'Mtt9e3F30zRidCBv' \
    --userId '2iK4bxLz6PRniNhY' \
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
    --body '{"appConfig": {"appName": "4DJRWytTJP9nPqSg"}, "customConfig": {"connectionType": "INSECURE", "grpcServerAddress": "oFdtCnY3uHciUHV1"}, "extendType": "CUSTOM"}' \
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
    --body '{"description": "FO9iNDbxPecuMS53", "eventTopic": "jXc0lqnafhl7VSGu", "maxAwarded": 96, "maxAwardedPerUser": 75, "namespaceExpression": "VOnQSLPL2JaD6hlN", "rewardCode": "lKKIyMajjpVFEOUh", "rewardConditions": [{"condition": "RRwnyDsy0xkd0mQf", "conditionName": "yscnTAb7IKPhbWty", "eventName": "Er3IDNhYI7KdlLQd", "rewardItems": [{"duration": 12, "endDate": "1987-06-07T00:00:00Z", "itemId": "h4fKMKZuGnQoSK3K", "quantity": 1}, {"duration": 63, "endDate": "1994-11-19T00:00:00Z", "itemId": "t11sjNOsBkSu8ZSQ", "quantity": 38}, {"duration": 54, "endDate": "1979-05-07T00:00:00Z", "itemId": "tcau9p1YrpyDn5Cd", "quantity": 17}]}, {"condition": "9q9L5TFgsWOIr8Bk", "conditionName": "ofkG4d5NPgh5MGsX", "eventName": "klwcZIir29n6Sagf", "rewardItems": [{"duration": 87, "endDate": "1980-01-23T00:00:00Z", "itemId": "GMo8r4X8Cu0nUkoy", "quantity": 35}, {"duration": 16, "endDate": "1987-06-19T00:00:00Z", "itemId": "CCKmCN7DnK68HnpB", "quantity": 14}, {"duration": 9, "endDate": "1979-04-22T00:00:00Z", "itemId": "s18PdlHLcJHVEMmd", "quantity": 21}]}, {"condition": "tqFl35l2FZqwkuxf", "conditionName": "cnrwv5TYXTwIidQ1", "eventName": "d8gwGJmjwwcNKJeF", "rewardItems": [{"duration": 93, "endDate": "1983-03-03T00:00:00Z", "itemId": "kk4FOewWlrrdlzre", "quantity": 62}, {"duration": 42, "endDate": "1994-04-30T00:00:00Z", "itemId": "MXjvaI4FOGD2UkMU", "quantity": 23}, {"duration": 3, "endDate": "1994-02-07T00:00:00Z", "itemId": "7VA06DcrAcvvJhOL", "quantity": 1}]}], "userIdExpression": "JbI84289S4sM9UKl"}' \
    > test.out 2>&1
eval_tap $? 165 'CreateReward' test.out

#- 166 QueryRewards
samples/cli/sample-apps Platform queryRewards \
    --namespace $AB_NAMESPACE \
    --eventTopic 'm7J4UZ3Po6jkf1FD' \
    --limit '48' \
    --offset '16' \
    --sortBy '["rewardCode:desc", "namespace:desc", "namespace:asc"]' \
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
    --rewardId 'Hw1iO3iIsuhnkNu2' \
    > test.out 2>&1
eval_tap $? 169 'GetReward' test.out

#- 170 UpdateReward
samples/cli/sample-apps Platform updateReward \
    --namespace $AB_NAMESPACE \
    --rewardId 'GgJljhC8YBhf0HoR' \
    --body '{"description": "D02nIN0ajd0pp09I", "eventTopic": "NWrmh9Ikg1p6w1ym", "maxAwarded": 96, "maxAwardedPerUser": 81, "namespaceExpression": "CjxseXdKU773bz3e", "rewardCode": "ejhb4mwtsYbrqtIt", "rewardConditions": [{"condition": "KM0tIkPGUzdJ4PFb", "conditionName": "1doX8wEl2lefxpOP", "eventName": "9bMsI4oPdsIV76ZG", "rewardItems": [{"duration": 67, "endDate": "1976-02-07T00:00:00Z", "itemId": "ru45FuOcaWdvCh1r", "quantity": 77}, {"duration": 56, "endDate": "1976-12-22T00:00:00Z", "itemId": "kmJojATtlHqc1gvw", "quantity": 5}, {"duration": 85, "endDate": "1987-10-08T00:00:00Z", "itemId": "zxG3GnRVHJnm84cS", "quantity": 85}]}, {"condition": "9pnnuZupYjVOEuu5", "conditionName": "30UMlIHpMEHdKF3Q", "eventName": "G6F1so2CtZRugMAY", "rewardItems": [{"duration": 69, "endDate": "1974-02-27T00:00:00Z", "itemId": "NCaR6GmwVpuWzPnC", "quantity": 78}, {"duration": 54, "endDate": "1991-12-06T00:00:00Z", "itemId": "3LxYXmbbtRkxIOma", "quantity": 73}, {"duration": 49, "endDate": "1981-10-29T00:00:00Z", "itemId": "kSgOsuRNIPaad8YN", "quantity": 14}]}, {"condition": "p4DlzZ3O5zxH3Yne", "conditionName": "G63Abt7Ol4r4hNzU", "eventName": "zncCMjWYjO2tnaSt", "rewardItems": [{"duration": 48, "endDate": "1983-05-24T00:00:00Z", "itemId": "TZhXOnXYgz5F7SYx", "quantity": 63}, {"duration": 59, "endDate": "1972-06-14T00:00:00Z", "itemId": "tPQBQuxM8rkwYy7J", "quantity": 57}, {"duration": 45, "endDate": "1995-11-20T00:00:00Z", "itemId": "OPVPp8WxlFb3eMOQ", "quantity": 87}]}], "userIdExpression": "yJeNmYB1v8Fz9INx"}' \
    > test.out 2>&1
eval_tap $? 170 'UpdateReward' test.out

#- 171 DeleteReward
samples/cli/sample-apps Platform deleteReward \
    --namespace $AB_NAMESPACE \
    --rewardId 'tQmBSw9v8O8fLEy0' \
    > test.out 2>&1
eval_tap $? 171 'DeleteReward' test.out

#- 172 CheckEventCondition
samples/cli/sample-apps Platform checkEventCondition \
    --namespace $AB_NAMESPACE \
    --rewardId 'r4YI1m9kGnSgt2lE' \
    --body '{"payload": {"XfaHsrHxDQejmQlB": {}, "XkqBnBIrgNXvTUXI": {}, "KpgPzOkYYzqOWt6E": {}}}' \
    > test.out 2>&1
eval_tap $? 172 'CheckEventCondition' test.out

#- 173 DeleteRewardConditionRecord
samples/cli/sample-apps Platform deleteRewardConditionRecord \
    --namespace $AB_NAMESPACE \
    --rewardId 'BSx6Fj92Da0QEjgG' \
    --body '{"conditionName": "5iL7ZWGYwS89oaeV", "userId": "c6pfHxXPklutAxi5"}' \
    > test.out 2>&1
eval_tap $? 173 'DeleteRewardConditionRecord' test.out

#- 174 QuerySections
samples/cli/sample-apps Platform querySections \
    --namespace $AB_NAMESPACE \
    --end 'tFcGRei4tEoLuk58' \
    --limit '26' \
    --offset '64' \
    --start 'rl4Hqv1AJoP275Pi' \
    --storeId 'TLxGD4uac4haGeLA' \
    --viewId 'J2kHPgFh3tEm3RJX' \
    > test.out 2>&1
eval_tap $? 174 'QuerySections' test.out

#- 175 CreateSection
samples/cli/sample-apps Platform createSection \
    --namespace $AB_NAMESPACE \
    --storeId 'UWQN89mMlBkbhJiL' \
    --body '{"active": true, "displayOrder": 49, "endDate": "1982-05-29T00:00:00Z", "ext": {"zpginVsLPRQL6JwU": {}, "doe2UurXrDK74IpJ": {}, "tIt09YXXm16E56nd": {}}, "fixedPeriodRotationConfig": {"backfillType": "CUSTOM", "duration": 40, "itemCount": 35, "rule": "SEQUENCE"}, "items": [{"id": "03wCcF46q9AMOW5i", "sku": "uXVEJXY8I7dCOr62"}, {"id": "21MwSr8PpnpF05X6", "sku": "3BoTcayh1mXjmmCA"}, {"id": "4bNEZqIdq5IFLN7v", "sku": "0SQROXJBxQrTidPk"}], "localizations": {"S7Oul6u83tHf3DXI": {"description": "uacyUpGycyIVnop9", "localExt": {"7V7WyahIKg6LlThC": {}, "Owo5kaMkuks9A8fD": {}, "xpQxZMQcX72hnONQ": {}}, "longDescription": "EAoB0vEdhWnCy0E3", "title": "zCXDmPCYsI2N78Lu"}, "h1fX11aKNkHfK2Rv": {"description": "f6eTjzNfldTW8nfS", "localExt": {"30TvQMfWG7WfAoIj": {}, "KymHyYtnpjW90rc8": {}, "IDfvZRWOqTQ0hyKw": {}}, "longDescription": "fpfK8zkXAopWTflc", "title": "FIaYREyNiCjoIpcZ"}, "2lyTrQjrDrGxGqvE": {"description": "kIrNdAjB9uBg9boO", "localExt": {"J4UIa9flYdG2a5Wz": {}, "Z6r4eHIv8qtMMOpN": {}, "Vs90VCBqUQCepwzM": {}}, "longDescription": "jY0XZlSe9zliWrzZ", "title": "LZIOCaDOSkBtDuLb"}}, "name": "6Eq9RbAi2mhw4iKk", "rotationType": "CUSTOM", "startDate": "1993-08-09T00:00:00Z", "viewId": "v7fAq6dNbSpugeoG"}' \
    > test.out 2>&1
eval_tap $? 175 'CreateSection' test.out

#- 176 PurgeExpiredSection
samples/cli/sample-apps Platform purgeExpiredSection \
    --namespace $AB_NAMESPACE \
    --storeId 'rJN5mfNXh93p4jK7' \
    > test.out 2>&1
eval_tap $? 176 'PurgeExpiredSection' test.out

#- 177 GetSection
samples/cli/sample-apps Platform getSection \
    --namespace $AB_NAMESPACE \
    --sectionId 'aGyqMCcsDiosOR4F' \
    --storeId '5SN46xEhbkbgV2sx' \
    > test.out 2>&1
eval_tap $? 177 'GetSection' test.out

#- 178 UpdateSection
samples/cli/sample-apps Platform updateSection \
    --namespace $AB_NAMESPACE \
    --sectionId 'XZnUww7GLkft3g9k' \
    --storeId 'KULSpeQr6ll2R8ul' \
    --body '{"active": true, "displayOrder": 75, "endDate": "1987-12-06T00:00:00Z", "ext": {"mQSnwzWcd9l8uj7i": {}, "8magrnfp2VHQzit6": {}, "KOyDbFe42c0m7dAw": {}}, "fixedPeriodRotationConfig": {"backfillType": "NONE", "duration": 57, "itemCount": 76, "rule": "SEQUENCE"}, "items": [{"id": "JzTwiQH2ERHQH71w", "sku": "AzwDtPVnLm1ulnG7"}, {"id": "hNXyEy7N7O0n4CY9", "sku": "k1g0tEkJXqOrKwEd"}, {"id": "BumBLXEHZwfgpHiI", "sku": "OfN7bgbeihqna7GH"}], "localizations": {"GOzmNzxV7lDcIm51": {"description": "3nxv0fYzEQs57Tu3", "localExt": {"flDCwRXAwMDRciHb": {}, "lwrW59R5Ha2lssE9": {}, "bZ3NTWyqYRpEJLKu": {}}, "longDescription": "WXyM5oj385LhaO8J", "title": "Ry4j4J83OkbieHm9"}, "gsBB08zHf9hqQEP0": {"description": "3bUeX2t0p8RLLsgQ", "localExt": {"DLXMlfNgOB2kKB8h": {}, "o743woMoFUZQogKq": {}, "wgIkL7IgYAkdqGRq": {}}, "longDescription": "Md6dma1Y9kFxeY6f", "title": "EH1Fm9eSXfTydByT"}, "dJQSTxDZhPE8MjtZ": {"description": "DWJ74Fphiz8RpykB", "localExt": {"KF6GlpZ4G79xmRXH": {}, "mAPVnc134EWs8LsZ": {}, "XSmt58s2ZWqtKuCf": {}}, "longDescription": "qgPKQAHqNM9bGxGf", "title": "DelkOmhQOqBSJiT5"}}, "name": "ayVj835UYkdLEJrF", "rotationType": "NONE", "startDate": "1982-06-10T00:00:00Z", "viewId": "oAatZpBvh69q3XEz"}' \
    > test.out 2>&1
eval_tap $? 178 'UpdateSection' test.out

#- 179 DeleteSection
samples/cli/sample-apps Platform deleteSection \
    --namespace $AB_NAMESPACE \
    --sectionId '35wz9K25psxPOTpr' \
    --storeId 'aDsSdSm3QSzeBBcW' \
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
    --body '{"defaultLanguage": "51dsJ99IhwrWZI84", "defaultRegion": "al45Q3OP1bLB262G", "description": "5J1vPMFDfIO13qRM", "supportedLanguages": ["RgLcw2CbiaOT0xkG", "fZFj7i2tijsX8h4t", "uSLhVQpFJivYDWzy"], "supportedRegions": ["sgnly7vSDVjEDkSZ", "GGJxuIPV3YzwpOIF", "3yKIazih0L1FsEEk"], "title": "WqNEJRIMQ3lIIDJq"}' \
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
    --storeId 'e89Ib0QuZdTU8yNA' \
    > test.out 2>&1
eval_tap $? 187 'GetStore' test.out

#- 188 UpdateStore
samples/cli/sample-apps Platform updateStore \
    --namespace $AB_NAMESPACE \
    --storeId 'yYDUF4ib8HnLDTJa' \
    --body '{"defaultLanguage": "8pEiszL7D0K5BWeC", "defaultRegion": "i0o2emRzxDNcIZrZ", "description": "LvSVe5yITYgH0jm0", "supportedLanguages": ["BMlTWhChcVMdAgMQ", "euu77Dm5yCl6J2S5", "vjtyZJCi4EdWz0Sn"], "supportedRegions": ["lenBDotGwncHhxIO", "HUzDIQ85hK5ylLAn", "Y0A3aPyWwKDrW1nq"], "title": "rKiTWxugWlpjsqvE"}' \
    > test.out 2>&1
eval_tap $? 188 'UpdateStore' test.out

#- 189 DeleteStore
samples/cli/sample-apps Platform deleteStore \
    --namespace $AB_NAMESPACE \
    --storeId '2QFjnd6gMe2ziK03' \
    > test.out 2>&1
eval_tap $? 189 'DeleteStore' test.out

#- 190 QueryChanges
samples/cli/sample-apps Platform queryChanges \
    --namespace $AB_NAMESPACE \
    --storeId 'JPseVeH5yCpSim4v' \
    --action 'UPDATE' \
    --itemSku 'mHpQHhtInNJDKwCT' \
    --itemType 'SEASON' \
    --limit '57' \
    --offset '14' \
    --selected 'false' \
    --sortBy '["updatedAt", "createdAt:asc", "createdAt"]' \
    --status 'UNPUBLISHED' \
    --type 'ITEM' \
    --updatedAtEnd '3HW4NDDzn1DsvoPt' \
    --updatedAtStart '3FqmEeDlqX0zpAOP' \
    > test.out 2>&1
eval_tap $? 190 'QueryChanges' test.out

#- 191 PublishAll
samples/cli/sample-apps Platform publishAll \
    --namespace $AB_NAMESPACE \
    --storeId 'XoxvITYV8ZG7vsQR' \
    > test.out 2>&1
eval_tap $? 191 'PublishAll' test.out

#- 192 PublishSelected
samples/cli/sample-apps Platform publishSelected \
    --namespace $AB_NAMESPACE \
    --storeId 'n5920vIWYNQF3coX' \
    > test.out 2>&1
eval_tap $? 192 'PublishSelected' test.out

#- 193 SelectAllRecords
samples/cli/sample-apps Platform selectAllRecords \
    --namespace $AB_NAMESPACE \
    --storeId 'TNnYbFjHpc4WyctE' \
    > test.out 2>&1
eval_tap $? 193 'SelectAllRecords' test.out

#- 194 GetStatistic
samples/cli/sample-apps Platform getStatistic \
    --namespace $AB_NAMESPACE \
    --storeId '7Lj4UwmMVZ6M0mH2' \
    --action 'CREATE' \
    --itemSku 'bunDln7WeZpEixsI' \
    --itemType 'SUBSCRIPTION' \
    --type 'SECTION' \
    --updatedAtEnd 'CLkXYSgG5ttJ3IRz' \
    --updatedAtStart 'A7ve4sfikPAWm1aw' \
    > test.out 2>&1
eval_tap $? 194 'GetStatistic' test.out

#- 195 UnselectAllRecords
samples/cli/sample-apps Platform unselectAllRecords \
    --namespace $AB_NAMESPACE \
    --storeId '0FTPzezcOO2blsQx' \
    > test.out 2>&1
eval_tap $? 195 'UnselectAllRecords' test.out

#- 196 SelectRecord
samples/cli/sample-apps Platform selectRecord \
    --changeId '3erGeI0Lk2LGOahI' \
    --namespace $AB_NAMESPACE \
    --storeId '092YNtCpf0oSYNcW' \
    > test.out 2>&1
eval_tap $? 196 'SelectRecord' test.out

#- 197 UnselectRecord
samples/cli/sample-apps Platform unselectRecord \
    --changeId 'ta7ecPQVbgi17454' \
    --namespace $AB_NAMESPACE \
    --storeId 'JpIEW1SeBDQxUFcg' \
    > test.out 2>&1
eval_tap $? 197 'UnselectRecord' test.out

#- 198 CloneStore
samples/cli/sample-apps Platform cloneStore \
    --namespace $AB_NAMESPACE \
    --storeId 'kBqaI099lueQVReX' \
    --targetStoreId 'yWTrrIOO1HuFoges' \
    > test.out 2>&1
eval_tap $? 198 'CloneStore' test.out

#- 199 ExportStore
eval_tap 0 199 'ExportStore # SKIP deprecated' test.out

#- 200 QuerySubscriptions
samples/cli/sample-apps Platform querySubscriptions \
    --namespace $AB_NAMESPACE \
    --chargeStatus 'SETUP' \
    --itemId 'THZpUwN6h9wSDQdd' \
    --limit '45' \
    --offset '23' \
    --sku 'iMEdAydfVRbZnE8w' \
    --status 'CANCELLED' \
    --subscribedBy 'USER' \
    --userId 'vrNK5wO07H3mpTr9' \
    > test.out 2>&1
eval_tap $? 200 'QuerySubscriptions' test.out

#- 201 RecurringChargeSubscription
samples/cli/sample-apps Platform recurringChargeSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'WnB3TKtK7EsK2pJF' \
    > test.out 2>&1
eval_tap $? 201 'RecurringChargeSubscription' test.out

#- 202 GetTicketDynamic
samples/cli/sample-apps Platform getTicketDynamic \
    --boothName 'b4ykTcUG1DGeshPN' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 202 'GetTicketDynamic' test.out

#- 203 DecreaseTicketSale
samples/cli/sample-apps Platform decreaseTicketSale \
    --boothName 'Zr0qBl0shGaAV2oC' \
    --namespace $AB_NAMESPACE \
    --body '{"orderNo": "vaNP83FFQi2j9A8r"}' \
    > test.out 2>&1
eval_tap $? 203 'DecreaseTicketSale' test.out

#- 204 GetTicketBoothID
samples/cli/sample-apps Platform getTicketBoothID \
    --boothName '1kuZpmVEojyRScNR' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 204 'GetTicketBoothID' test.out

#- 205 IncreaseTicketSale
samples/cli/sample-apps Platform increaseTicketSale \
    --boothName 'ykPIbsQHTeWHmQ1I' \
    --namespace $AB_NAMESPACE \
    --body '{"count": 19, "orderNo": "ttFjizOIcFP7wcyM"}' \
    > test.out 2>&1
eval_tap $? 205 'IncreaseTicketSale' test.out

#- 206 Commit
samples/cli/sample-apps Platform commit \
    --namespace $AB_NAMESPACE \
    --body '{"actions": [{"operations": [{"creditPayload": {"balanceOrigin": "Xbox", "count": 63, "currencyCode": "Sj7ehgXd2AXFRvI1", "expireAt": "1977-03-24T00:00:00Z"}, "debitPayload": {"count": 56, "currencyCode": "4SaM7dNmZUtuToGU", "walletPlatform": "Nintendo"}, "fulFillItemPayload": {"count": 66, "itemIdentity": "LuaKhAAzPB9SZrlZ", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 59, "entitlementId": "Cu93WU1Xk8WxmnJV"}, "type": "DEBIT_WALLET"}, {"creditPayload": {"balanceOrigin": "Nintendo", "count": 35, "currencyCode": "WWmsPhx6GcM0Vb2I", "expireAt": "1987-10-25T00:00:00Z"}, "debitPayload": {"count": 56, "currencyCode": "zF1SMNvuHBG0SV2T", "walletPlatform": "IOS"}, "fulFillItemPayload": {"count": 23, "itemIdentity": "cBuDUoEoALdwSpEm", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 78, "entitlementId": "7PvvTvnkKJ8MHrB7"}, "type": "CREDIT_WALLET"}, {"creditPayload": {"balanceOrigin": "Twitch", "count": 32, "currencyCode": "aDW4UBfHnJqSPB0U", "expireAt": "1974-09-21T00:00:00Z"}, "debitPayload": {"count": 46, "currencyCode": "2rAhzDVDkfGvSuma", "walletPlatform": "Steam"}, "fulFillItemPayload": {"count": 5, "itemIdentity": "uIbdARaxZ4VMI0Hc", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 43, "entitlementId": "9sk2i85Rx5JGAO7P"}, "type": "CREDIT_WALLET"}], "userId": "YnF9qCqA9P54gUCD"}, {"operations": [{"creditPayload": {"balanceOrigin": "Twitch", "count": 89, "currencyCode": "Bgy4RK4Si6RgyvYt", "expireAt": "1997-01-14T00:00:00Z"}, "debitPayload": {"count": 95, "currencyCode": "E6vi6gL7UmUrBUz2", "walletPlatform": "Xbox"}, "fulFillItemPayload": {"count": 34, "itemIdentity": "H3xa530SunS1yEVy", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 19, "entitlementId": "fSQm86g1XsDuBxtS"}, "type": "DEBIT_WALLET"}, {"creditPayload": {"balanceOrigin": "Steam", "count": 82, "currencyCode": "TVgNJZYRozjYSZFa", "expireAt": "1976-08-28T00:00:00Z"}, "debitPayload": {"count": 20, "currencyCode": "ma7qAqm42jJxh4Ht", "walletPlatform": "IOS"}, "fulFillItemPayload": {"count": 83, "itemIdentity": "3XfRWN5FVgIQu7bn", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 48, "entitlementId": "U6TlxdqzUcAzcUc0"}, "type": "DEBIT_WALLET"}, {"creditPayload": {"balanceOrigin": "Oculus", "count": 98, "currencyCode": "8OGeSOSn1f05ZumO", "expireAt": "1991-04-09T00:00:00Z"}, "debitPayload": {"count": 80, "currencyCode": "TZnbaIahGaHWotK4", "walletPlatform": "Other"}, "fulFillItemPayload": {"count": 3, "itemIdentity": "QJHqnxh8UaF7KZpC", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 15, "entitlementId": "jNejUU9BOKH7Thpw"}, "type": "CREDIT_WALLET"}], "userId": "Uzko0b1FlqUcZ4Q0"}, {"operations": [{"creditPayload": {"balanceOrigin": "Xbox", "count": 94, "currencyCode": "N7gEbs6Q3rThSWPd", "expireAt": "1996-07-24T00:00:00Z"}, "debitPayload": {"count": 67, "currencyCode": "OMjrse1PxwDyzCJR", "walletPlatform": "Oculus"}, "fulFillItemPayload": {"count": 63, "itemIdentity": "wlp5BRlsU8gT6E1T", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 76, "entitlementId": "XdyMMe3N5GHoD6nf"}, "type": "DEBIT_WALLET"}, {"creditPayload": {"balanceOrigin": "Epic", "count": 69, "currencyCode": "irdoNepjdvZmIWNV", "expireAt": "1994-05-13T00:00:00Z"}, "debitPayload": {"count": 55, "currencyCode": "EjIfHOq6bhsMdEW3", "walletPlatform": "Other"}, "fulFillItemPayload": {"count": 60, "itemIdentity": "GZvHcnWQ2EsO56B1", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 74, "entitlementId": "ZhJHXqtspxP5y37I"}, "type": "FULFILL_ITEM"}, {"creditPayload": {"balanceOrigin": "Nintendo", "count": 48, "currencyCode": "EAKYKzQDV34VAg6u", "expireAt": "1989-11-02T00:00:00Z"}, "debitPayload": {"count": 77, "currencyCode": "hLKqZ7cJjOfjiMkK", "walletPlatform": "GooglePlay"}, "fulFillItemPayload": {"count": 75, "itemIdentity": "pQaJbpN8dhgESLMh", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 72, "entitlementId": "5n20nxA52mDyE88h"}, "type": "REVOKE_ENTITLEMENT"}], "userId": "cBvpztY0RR4kCcgr"}], "metadata": {"peczvNJKuq07ZsKW": {}, "RPQMuPhqCxMrhSaQ": {}, "HwZaF7rfEctqT3Vs": {}}, "needPreCheck": true, "transactionId": "ebiBR1BV8oxtsPFw", "type": "GjSy1PAQqEMbrAeM"}' \
    > test.out 2>&1
eval_tap $? 206 'Commit' test.out

#- 207 GetTradeHistoryByCriteria
samples/cli/sample-apps Platform getTradeHistoryByCriteria \
    --namespace $AB_NAMESPACE \
    --limit '25' \
    --offset '90' \
    --status 'SUCCESS' \
    --type 'lvSA5I02SOE8X1Kc' \
    --userId 'Aa6Ox2aUVgItcecD' \
    > test.out 2>&1
eval_tap $? 207 'GetTradeHistoryByCriteria' test.out

#- 208 GetTradeHistoryByTransactionId
samples/cli/sample-apps Platform getTradeHistoryByTransactionId \
    --namespace $AB_NAMESPACE \
    --transactionId '9GgVrpSu6qHxWuVU' \
    > test.out 2>&1
eval_tap $? 208 'GetTradeHistoryByTransactionId' test.out

#- 209 UnlockSteamUserAchievement
samples/cli/sample-apps Platform unlockSteamUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId '3XpiRtEqDNFeHUy5' \
    --body '{"achievements": [{"id": "qyfnBAGYcpcPhXiz", "value": 53}, {"id": "wtv97oue2EkydXYI", "value": 0}, {"id": "vqq5BC7wXVEVPEKN", "value": 2}], "steamUserId": "5dXHkMwRCf7IwjEV"}' \
    > test.out 2>&1
eval_tap $? 209 'UnlockSteamUserAchievement' test.out

#- 210 GetXblUserAchievements
samples/cli/sample-apps Platform getXblUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId 'wcnVy6mXY5kP7fsV' \
    --xboxUserId 'kgYoorLIIN0ydJbT' \
    > test.out 2>&1
eval_tap $? 210 'GetXblUserAchievements' test.out

#- 211 UpdateXblUserAchievement
samples/cli/sample-apps Platform updateXblUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'L8ntPRy4OTYAqcoL' \
    --body '{"achievements": [{"id": "C5wQbQdWZtfxA3G1", "percentComplete": 57}, {"id": "FDyKInZK7PmpiDUy", "percentComplete": 10}, {"id": "v8AeqNi64e9ZGlMH", "percentComplete": 70}], "serviceConfigId": "OeaEMw2JheM7iXSJ", "titleId": "P0FEjwvMLcxJQNQc", "xboxUserId": "MeSvgnrdpgN6KGIT"}' \
    > test.out 2>&1
eval_tap $? 211 'UpdateXblUserAchievement' test.out

#- 212 AnonymizeCampaign
samples/cli/sample-apps Platform anonymizeCampaign \
    --namespace $AB_NAMESPACE \
    --userId 'PTXtQQxvKLeNGi8j' \
    > test.out 2>&1
eval_tap $? 212 'AnonymizeCampaign' test.out

#- 213 AnonymizeEntitlement
samples/cli/sample-apps Platform anonymizeEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'J7EGKfPmJa8TxNKd' \
    > test.out 2>&1
eval_tap $? 213 'AnonymizeEntitlement' test.out

#- 214 AnonymizeFulfillment
samples/cli/sample-apps Platform anonymizeFulfillment \
    --namespace $AB_NAMESPACE \
    --userId 'ezVoZWyQnYYa6l55' \
    > test.out 2>&1
eval_tap $? 214 'AnonymizeFulfillment' test.out

#- 215 AnonymizeIntegration
samples/cli/sample-apps Platform anonymizeIntegration \
    --namespace $AB_NAMESPACE \
    --userId 'xKrNDdL753Yn7d48' \
    > test.out 2>&1
eval_tap $? 215 'AnonymizeIntegration' test.out

#- 216 AnonymizeOrder
samples/cli/sample-apps Platform anonymizeOrder \
    --namespace $AB_NAMESPACE \
    --userId 'ajPphXy7wYLdIilH' \
    > test.out 2>&1
eval_tap $? 216 'AnonymizeOrder' test.out

#- 217 AnonymizePayment
samples/cli/sample-apps Platform anonymizePayment \
    --namespace $AB_NAMESPACE \
    --userId 'HJo8VSCY1EBLfmSg' \
    > test.out 2>&1
eval_tap $? 217 'AnonymizePayment' test.out

#- 218 AnonymizeRevocation
samples/cli/sample-apps Platform anonymizeRevocation \
    --namespace $AB_NAMESPACE \
    --userId 'PGkqDQPBii76zgRv' \
    > test.out 2>&1
eval_tap $? 218 'AnonymizeRevocation' test.out

#- 219 AnonymizeSubscription
samples/cli/sample-apps Platform anonymizeSubscription \
    --namespace $AB_NAMESPACE \
    --userId 'B7WIlRz24FPiKY5g' \
    > test.out 2>&1
eval_tap $? 219 'AnonymizeSubscription' test.out

#- 220 AnonymizeWallet
samples/cli/sample-apps Platform anonymizeWallet \
    --namespace $AB_NAMESPACE \
    --userId 'm2VD8nJDuBbtwJ0Y' \
    > test.out 2>&1
eval_tap $? 220 'AnonymizeWallet' test.out

#- 221 GetUserDLCByPlatform
samples/cli/sample-apps Platform getUserDLCByPlatform \
    --namespace $AB_NAMESPACE \
    --userId 'H2bvyW7JuvvF9Rx3' \
    --type 'OCULUS' \
    > test.out 2>&1
eval_tap $? 221 'GetUserDLCByPlatform' test.out

#- 222 GetUserDLC
samples/cli/sample-apps Platform getUserDLC \
    --namespace $AB_NAMESPACE \
    --userId 'h7Zmxp6x0xYNum3X' \
    --type 'XBOX' \
    > test.out 2>&1
eval_tap $? 222 'GetUserDLC' test.out

#- 223 QueryUserEntitlements
samples/cli/sample-apps Platform queryUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'j7jjfzCOGDPPWpaf' \
    --activeOnly 'false' \
    --appType 'DLC' \
    --entitlementClazz 'MEDIA' \
    --entitlementName 'A1nPL96nM54MHAeC' \
    --features '["r65kWIRjZNmuFIeG", "Ukwf9p8cy67T8Emb", "WnX4b1dgNlLXJVho"]' \
    --itemId '["5QzcTBYKAZRpFHKB", "BKBFDkkKoG4XlyVo", "R2tN4puE002XNCnR"]' \
    --limit '56' \
    --offset '13' \
    > test.out 2>&1
eval_tap $? 223 'QueryUserEntitlements' test.out

#- 224 GrantUserEntitlement
samples/cli/sample-apps Platform grantUserEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'okIULpPc8QkdWlf3' \
    --body '[{"endDate": "1979-09-12T00:00:00Z", "grantedCode": "cCYVXpunXiq1m9YW", "itemId": "wVeDkqTT2UPWLcx9", "itemNamespace": "PuuHl2cuJVJjez7a", "language": "onS-901", "quantity": 18, "region": "9WQ6hAn3l96hUYoG", "source": "REWARD", "startDate": "1985-11-03T00:00:00Z", "storeId": "w737zZRoX9nuF3Z8"}, {"endDate": "1980-04-05T00:00:00Z", "grantedCode": "YLLbWLxQQpddp61z", "itemId": "JwqoqERHzlQaxraX", "itemNamespace": "BGTOrAJPZoj0dToz", "language": "oje-bNAQ", "quantity": 47, "region": "ta47bik0ZmB97JU8", "source": "GIFT", "startDate": "1989-09-24T00:00:00Z", "storeId": "sreCtUUBylQK8R1Q"}, {"endDate": "1976-07-17T00:00:00Z", "grantedCode": "V879lXSUUyfY2uZu", "itemId": "uRVEgmJAo5Sfq0s9", "itemNamespace": "yUhNhl3SSUXLWNlA", "language": "qi-PVZj-968", "quantity": 90, "region": "O80sMhzt4dvarML8", "source": "PROMOTION", "startDate": "1996-05-12T00:00:00Z", "storeId": "NWOz2ddTV5UYTPuN"}]' \
    > test.out 2>&1
eval_tap $? 224 'GrantUserEntitlement' test.out

#- 225 GetUserAppEntitlementByAppId
samples/cli/sample-apps Platform getUserAppEntitlementByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'WmnlKojMVh6uQ9f1' \
    --activeOnly 'false' \
    --appId 'ZPSkmymrjPKZ9Mzx' \
    > test.out 2>&1
eval_tap $? 225 'GetUserAppEntitlementByAppId' test.out

#- 226 QueryUserEntitlementsByAppType
samples/cli/sample-apps Platform queryUserEntitlementsByAppType \
    --namespace $AB_NAMESPACE \
    --userId 'A6Tf0L1jzNPdmWCt' \
    --activeOnly 'true' \
    --limit '11' \
    --offset '44' \
    --appType 'DEMO' \
    > test.out 2>&1
eval_tap $? 226 'QueryUserEntitlementsByAppType' test.out

#- 227 GetUserEntitlementByItemId
samples/cli/sample-apps Platform getUserEntitlementByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'd3kHbvE65WJPlGy1' \
    --activeOnly 'true' \
    --entitlementClazz 'LOOTBOX' \
    --itemId 'tijqIrBeNcyZVgFo' \
    > test.out 2>&1
eval_tap $? 227 'GetUserEntitlementByItemId' test.out

#- 228 GetUserActiveEntitlementsByItemIds
samples/cli/sample-apps Platform getUserActiveEntitlementsByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'SZL2zPx1vED1aQBu' \
    --ids '["FZRcdyKHkqYhiieV", "pzckry45DxzHt9h6", "1Cdqfq68zA7VOJcG"]' \
    > test.out 2>&1
eval_tap $? 228 'GetUserActiveEntitlementsByItemIds' test.out

#- 229 GetUserEntitlementBySku
samples/cli/sample-apps Platform getUserEntitlementBySku \
    --namespace $AB_NAMESPACE \
    --userId 'dZM34hhMX6p3tyNA' \
    --activeOnly 'true' \
    --entitlementClazz 'SUBSCRIPTION' \
    --sku 'mLG5lzGC4IQOxetY' \
    > test.out 2>&1
eval_tap $? 229 'GetUserEntitlementBySku' test.out

#- 230 ExistsAnyUserActiveEntitlement
samples/cli/sample-apps Platform existsAnyUserActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'Sr02kVCgUbOJDeaB' \
    --appIds '["cggY6HzFtbmLFmXe", "URn89ax5yHOw0iuZ", "xtkq4VaNYCBmuHfb"]' \
    --itemIds '["jjWhBGfnTpGrhOmQ", "kdtpG4yph7df4FZS", "9dtRSe22SPfZ0ZlP"]' \
    --skus '["np3anofvX62Vffyu", "d8pZsHdm3bV26Pu7", "4AKG0L9kLf19QwSK"]' \
    > test.out 2>&1
eval_tap $? 230 'ExistsAnyUserActiveEntitlement' test.out

#- 231 ExistsAnyUserActiveEntitlementByItemIds
samples/cli/sample-apps Platform existsAnyUserActiveEntitlementByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'doVpeSqSFdA9t9uV' \
    --itemIds '["28eAQhxITqVPoRJc", "NzIM3NjRcfYDul7p", "R5HqluHe2tM7VIim"]' \
    > test.out 2>&1
eval_tap $? 231 'ExistsAnyUserActiveEntitlementByItemIds' test.out

#- 232 GetUserAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform getUserAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'YvWLnH5bNdmBh5zz' \
    --appId 'Le4sqA7YNbP5h3Hn' \
    > test.out 2>&1
eval_tap $? 232 'GetUserAppEntitlementOwnershipByAppId' test.out

#- 233 GetUserEntitlementOwnershipByItemId
samples/cli/sample-apps Platform getUserEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'r7bju9E2qdz0p8TU' \
    --entitlementClazz 'LOOTBOX' \
    --itemId 'HD9N06rmPk42gDlT' \
    > test.out 2>&1
eval_tap $? 233 'GetUserEntitlementOwnershipByItemId' test.out

#- 234 GetUserEntitlementOwnershipByItemIds
samples/cli/sample-apps Platform getUserEntitlementOwnershipByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'NHcai5dMnF3T9QLa' \
    --ids '["gxnNgdJyxUoYse6y", "17pJbLYmwWY4WYJq", "dn0ScKso5JlbMWqL"]' \
    > test.out 2>&1
eval_tap $? 234 'GetUserEntitlementOwnershipByItemIds' test.out

#- 235 GetUserEntitlementOwnershipBySku
samples/cli/sample-apps Platform getUserEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --userId 'GthPLEsEJEEhHg3c' \
    --entitlementClazz 'ENTITLEMENT' \
    --sku '9Wp1ENuPz0OmClut' \
    > test.out 2>&1
eval_tap $? 235 'GetUserEntitlementOwnershipBySku' test.out

#- 236 RevokeAllEntitlements
samples/cli/sample-apps Platform revokeAllEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'gtJ2SKecBrOEwOqe' \
    > test.out 2>&1
eval_tap $? 236 'RevokeAllEntitlements' test.out

#- 237 RevokeUserEntitlements
samples/cli/sample-apps Platform revokeUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'qDoOstV3OC9g6bs3' \
    --entitlementIds 'pJ0uXoz14yJyW03C' \
    > test.out 2>&1
eval_tap $? 237 'RevokeUserEntitlements' test.out

#- 238 GetUserEntitlement
samples/cli/sample-apps Platform getUserEntitlement \
    --entitlementId 'B237dGP75AidbCiD' \
    --namespace $AB_NAMESPACE \
    --userId 'uha5ngFEAcqw7cG6' \
    > test.out 2>&1
eval_tap $? 238 'GetUserEntitlement' test.out

#- 239 UpdateUserEntitlement
samples/cli/sample-apps Platform updateUserEntitlement \
    --entitlementId 'nDpJAqVhI8D9THtm' \
    --namespace $AB_NAMESPACE \
    --userId 'cPTIr09a8P84eXpW' \
    --body '{"endDate": "1990-04-17T00:00:00Z", "nullFieldList": ["lqqDGbGI7bjRwsCA", "Q0ogQGNoJB2usbu1", "hjkrSN4EUCgY8uVQ"], "startDate": "1990-03-31T00:00:00Z", "status": "SOLD", "useCount": 49}' \
    > test.out 2>&1
eval_tap $? 239 'UpdateUserEntitlement' test.out

#- 240 ConsumeUserEntitlement
samples/cli/sample-apps Platform consumeUserEntitlement \
    --entitlementId 'oxtLGNvaLalwiBjp' \
    --namespace $AB_NAMESPACE \
    --userId 'dlB0fH3SwebuIFXm' \
    --body '{"options": ["H82ibaAhIufLBHYb", "5s0jTTPfWkuyuz7r", "J8lrcfgaR4rvHRCF"], "requestId": "QLzBXO2onGCHhkOj", "useCount": 10}' \
    > test.out 2>&1
eval_tap $? 240 'ConsumeUserEntitlement' test.out

#- 241 DisableUserEntitlement
samples/cli/sample-apps Platform disableUserEntitlement \
    --entitlementId 'Fv6qbZmk1gkCIbkA' \
    --namespace $AB_NAMESPACE \
    --userId 'Cp0za9x3ckDsaS8b' \
    > test.out 2>&1
eval_tap $? 241 'DisableUserEntitlement' test.out

#- 242 EnableUserEntitlement
samples/cli/sample-apps Platform enableUserEntitlement \
    --entitlementId 'CL5WmmKcHSQeVuLK' \
    --namespace $AB_NAMESPACE \
    --userId 'xed2B23CsBnITqIs' \
    > test.out 2>&1
eval_tap $? 242 'EnableUserEntitlement' test.out

#- 243 GetUserEntitlementHistories
samples/cli/sample-apps Platform getUserEntitlementHistories \
    --entitlementId 'y2FMFMHMGm1tyCXO' \
    --namespace $AB_NAMESPACE \
    --userId 'aT4AyOeh7jJSIHfm' \
    > test.out 2>&1
eval_tap $? 243 'GetUserEntitlementHistories' test.out

#- 244 RevokeUserEntitlement
samples/cli/sample-apps Platform revokeUserEntitlement \
    --entitlementId 'btV3cVsvhH0jIFEl' \
    --namespace $AB_NAMESPACE \
    --userId '7NWEqOvDybz0qt7Y' \
    > test.out 2>&1
eval_tap $? 244 'RevokeUserEntitlement' test.out

#- 245 RevokeUseCount
samples/cli/sample-apps Platform revokeUseCount \
    --entitlementId 'pgWgoDA7qYRwlosX' \
    --namespace $AB_NAMESPACE \
    --userId 'dxmkhTtf2rHmTVcF' \
    --body '{"reason": "4VH9rngPqtDr3cfg", "useCount": 1}' \
    > test.out 2>&1
eval_tap $? 245 'RevokeUseCount' test.out

#- 246 SellUserEntitlement
samples/cli/sample-apps Platform sellUserEntitlement \
    --entitlementId 'UiUnMcNhPxDmrKh6' \
    --namespace $AB_NAMESPACE \
    --userId 'nzzqwS193yAzzfVk' \
    --body '{"requestId": "1wvF6iKZ5qQGQQHr", "useCount": 24}' \
    > test.out 2>&1
eval_tap $? 246 'SellUserEntitlement' test.out

#- 247 FulfillItem
samples/cli/sample-apps Platform fulfillItem \
    --namespace $AB_NAMESPACE \
    --userId 'oYwo3dEgYFj5013f' \
    --body '{"duration": 51, "endDate": "1989-09-19T00:00:00Z", "itemId": "A12OxpNdYTLlmfwH", "itemSku": "CsuLQbaDdYv2u9eg", "language": "tpiZHMF1RXnNrSCo", "metadata": {"wNQjA3y4KJzmxqbe": {}, "qPHTFGPgj3y7nKcW": {}, "WCM3iYy8t0i3Lfbk": {}}, "order": {"currency": {"currencyCode": "ytGTPBl9EUZ5CAxq", "currencySymbol": "rLdVtKaujgZ9yRiU", "currencyType": "REAL", "decimals": 25, "namespace": "mVhie0doAuE5gr6V"}, "ext": {"omHqZChohHgwPk8B": {}, "gis5KcOvL2Uf7woy": {}, "fQXp8W0SvDgyi2a4": {}}, "free": true}, "orderNo": "zptwozPNVxRNv6XL", "origin": "Nintendo", "overrideBundleItemQty": {"gv6v3x39CnJkMXwf": 28, "E3GbmapwSK2EPRAR": 33, "55hcmgn8sUQQ3XoT": 1}, "quantity": 2, "region": "S5XUCe3h39AKx7Xm", "source": "REDEEM_CODE", "startDate": "1974-11-23T00:00:00Z", "storeId": "1DZ1Pxvf2hh0VhS2"}' \
    > test.out 2>&1
eval_tap $? 247 'FulfillItem' test.out

#- 248 RedeemCode
samples/cli/sample-apps Platform redeemCode \
    --namespace $AB_NAMESPACE \
    --userId 'OSVJrYXzzsoQY8w3' \
    --body '{"code": "mdFAmXv33DvmzCrK", "language": "hCT_kSEg_345", "region": "KaHS6ggaQTUGz564"}' \
    > test.out 2>&1
eval_tap $? 248 'RedeemCode' test.out

#- 249 FulfillRewards
samples/cli/sample-apps Platform fulfillRewards \
    --namespace $AB_NAMESPACE \
    --userId 'Z3b8WA2FnrG1lxhM' \
    --body '{"metadata": {"uUDXAXAQvkb5K6yg": {}, "TFu9ysUseN5cmw8D": {}, "g2Lo6Uqz1etKLcxc": {}}, "origin": "Oculus", "rewards": [{"currency": {"currencyCode": "ECrwvqxq1VZsZGM8", "namespace": "TIoGM3k2r0HPTCth"}, "item": {"itemId": "tFIR7Z2zX6m13rOS", "itemSku": "HErMCrvFYpSCgupG", "itemType": "0eNQrx7nHYpAIGA9"}, "quantity": 15, "type": "ITEM"}, {"currency": {"currencyCode": "mhcyDmQunIeuHwQ0", "namespace": "hgay23qAoYJh1esS"}, "item": {"itemId": "7j6uR1EfimmoASpu", "itemSku": "H1UBA8u5IQwAmngU", "itemType": "qvjf7NgqoaKHMtxb"}, "quantity": 18, "type": "ITEM"}, {"currency": {"currencyCode": "ENNf1MoCAEUTNAfV", "namespace": "ky3hSJRAVJllNUe5"}, "item": {"itemId": "llYF5wfX6hPP6GIc", "itemSku": "OM15p0w4qaJreSai", "itemType": "1re1CreptpVVZdG3"}, "quantity": 43, "type": "CURRENCY"}], "source": "CONSUME_ENTITLEMENT", "transactionId": "0B4gm14WjMpYntxD"}' \
    > test.out 2>&1
eval_tap $? 249 'FulfillRewards' test.out

#- 250 QueryUserIAPOrders
samples/cli/sample-apps Platform queryUserIAPOrders \
    --namespace $AB_NAMESPACE \
    --userId 'akG55X7J6FWI4DQ4' \
    --endTime 'mtuVmtyHZQGBKW0m' \
    --limit '49' \
    --offset '64' \
    --productId 'MOV4LZpNyL6Bw59Q' \
    --startTime '95lTLzIXJ1SunWTL' \
    --status 'FAILED' \
    --type 'XBOX' \
    > test.out 2>&1
eval_tap $? 250 'QueryUserIAPOrders' test.out

#- 251 QueryAllUserIAPOrders
samples/cli/sample-apps Platform queryAllUserIAPOrders \
    --namespace $AB_NAMESPACE \
    --userId 'kgwydV77xGGaxgoL' \
    > test.out 2>&1
eval_tap $? 251 'QueryAllUserIAPOrders' test.out

#- 252 QueryUserIAPConsumeHistory
samples/cli/sample-apps Platform queryUserIAPConsumeHistory \
    --namespace $AB_NAMESPACE \
    --userId 'mTcOyPSJwxbfCzn6' \
    --endTime 'BfrhbhNoKhZnPs1O' \
    --limit '84' \
    --offset '90' \
    --startTime 'Qh0TSFyMARRIzNJU' \
    --status 'PENDING' \
    --type 'EPICGAMES' \
    > test.out 2>&1
eval_tap $? 252 'QueryUserIAPConsumeHistory' test.out

#- 253 MockFulfillIAPItem
samples/cli/sample-apps Platform mockFulfillIAPItem \
    --namespace $AB_NAMESPACE \
    --userId '6UGbHvfDj9IbQ56A' \
    --body '{"itemIdentityType": "ITEM_ID", "language": "So-vMFS", "productId": "YVHVYHDPFLYNx6EU", "region": "ZmJt33kXFnkqIMQw", "transactionId": "IbIKEXob3QNYRmnC", "type": "OCULUS"}' \
    > test.out 2>&1
eval_tap $? 253 'MockFulfillIAPItem' test.out

#- 254 QueryUserOrders
samples/cli/sample-apps Platform queryUserOrders \
    --namespace $AB_NAMESPACE \
    --userId 'rM4CYYC9JrBfuygR' \
    --itemId '8Ff60ju44styEe8g' \
    --limit '50' \
    --offset '88' \
    --status 'FULFILL_FAILED' \
    > test.out 2>&1
eval_tap $? 254 'QueryUserOrders' test.out

#- 255 AdminCreateUserOrder
samples/cli/sample-apps Platform adminCreateUserOrder \
    --namespace $AB_NAMESPACE \
    --userId 'Z9dF7D26gx1mIsaQ' \
    --body '{"currencyCode": "ksOdqOjA2oq5ayYx", "currencyNamespace": "TcPuB7AW5GfjqGEK", "discountedPrice": 57, "ext": {"A4GDpoSvEtvgZrpa": {}, "xYGMupGxjeoUZNMd": {}, "Gcoh3yrPusEiKfwG": {}}, "itemId": "ohZ2jwoP6LlEn8hU", "language": "iLSd4E9FNyoy21g5", "options": {"skipPriceValidation": true}, "platform": "Nintendo", "price": 83, "quantity": 62, "region": "VdqVgolYlphZceau", "returnUrl": "W4j1gTsoBY9yPTvu", "sandbox": true, "sectionId": "rWcz4uSbO2yXKkiU"}' \
    > test.out 2>&1
eval_tap $? 255 'AdminCreateUserOrder' test.out

#- 256 CountOfPurchasedItem
samples/cli/sample-apps Platform countOfPurchasedItem \
    --namespace $AB_NAMESPACE \
    --userId 'xP1RLGXu5cN83GY2' \
    --itemId 'QgOkEH0t3U6PgVEG' \
    > test.out 2>&1
eval_tap $? 256 'CountOfPurchasedItem' test.out

#- 257 GetUserOrder
samples/cli/sample-apps Platform getUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'T9yA4YgdHktYkwiw' \
    --userId 'exXKGmyyzPhwX8jt' \
    > test.out 2>&1
eval_tap $? 257 'GetUserOrder' test.out

#- 258 UpdateUserOrderStatus
samples/cli/sample-apps Platform updateUserOrderStatus \
    --namespace $AB_NAMESPACE \
    --orderNo 'SrpEBa4fmH3FqGEM' \
    --userId 'G6RZs73YoBq6D48m' \
    --body '{"status": "CHARGED", "statusReason": "UtgTFK897iJNmDkF"}' \
    > test.out 2>&1
eval_tap $? 258 'UpdateUserOrderStatus' test.out

#- 259 FulfillUserOrder
samples/cli/sample-apps Platform fulfillUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'EPgfUPnWIHgQ6xqY' \
    --userId 'Zew7bG9IX23A0eR5' \
    > test.out 2>&1
eval_tap $? 259 'FulfillUserOrder' test.out

#- 260 GetUserOrderGrant
samples/cli/sample-apps Platform getUserOrderGrant \
    --namespace $AB_NAMESPACE \
    --orderNo 'XOeorQ8SXYFhRUOe' \
    --userId '2nsvX3j24zCLaIvo' \
    > test.out 2>&1
eval_tap $? 260 'GetUserOrderGrant' test.out

#- 261 GetUserOrderHistories
samples/cli/sample-apps Platform getUserOrderHistories \
    --namespace $AB_NAMESPACE \
    --orderNo 'Onpdiaz5fUjfeVYP' \
    --userId 'xifgxvLXotEyLfnz' \
    > test.out 2>&1
eval_tap $? 261 'GetUserOrderHistories' test.out

#- 262 ProcessUserOrderNotification
samples/cli/sample-apps Platform processUserOrderNotification \
    --namespace $AB_NAMESPACE \
    --orderNo 'qUdx6mqekmoJx1Rc' \
    --userId 'eBgk51ofq77H6hZW' \
    --body '{"additionalData": {"cardSummary": "XrZ6wtW0iMkmMQra"}, "authorisedTime": "1997-09-25T00:00:00Z", "chargebackReversedTime": "1991-09-30T00:00:00Z", "chargebackTime": "1999-09-12T00:00:00Z", "chargedTime": "1978-11-05T00:00:00Z", "createdTime": "1984-10-05T00:00:00Z", "currency": {"currencyCode": "VvCvbr2GYI1DnLU9", "currencySymbol": "ExAkA6Z2rYmHmp6D", "currencyType": "REAL", "decimals": 89, "namespace": "CscbhqGwokr94on4"}, "customParameters": {"hJtwGhaEWLkMFRsx": {}, "cEY8JOvYPC3VSZHW": {}, "XJYiTPdsra0QnXnv": {}}, "extOrderNo": "xFQOH7DXMpUf7JPi", "extTxId": "JHYtKGqo0N9wKsJe", "extUserId": "nDEBQQAaCbzOPXuu", "issuedAt": "1994-10-27T00:00:00Z", "metadata": {"TXomKJ58df2EtLVN": "AoMj0IPZ7EtxpQhq", "B3P1gdxt5ym5aGpL": "KzOt8mCYVDr4tk3X", "NOH17G5H5hVL6GGO": "4DUutSJicYyQeRYT"}, "namespace": "Qm9PSc1HvIfJBQWo", "nonceStr": "lkVbGQ14E2NI0yWo", "paymentMethod": "5hXylb4MPSjrEPco", "paymentMethodFee": 30, "paymentOrderNo": "Y1HPt2XCTwgKPfh7", "paymentProvider": "STRIPE", "paymentProviderFee": 3, "paymentStationUrl": "O59Ie5cvoWymj0HK", "price": 56, "refundedTime": "1997-02-01T00:00:00Z", "salesTax": 69, "sandbox": true, "sku": "YxwNzhKJZWagFJcV", "status": "INIT", "statusReason": "ZRgrWXlspqBxo3gc", "subscriptionId": "GvcwcwTsdypPecOh", "subtotalPrice": 1, "targetNamespace": "0jLkN6FaCZk4pypG", "targetUserId": "alB33DxbqF6ue76R", "tax": 79, "totalPrice": 7, "totalTax": 46, "txEndTime": "1978-01-04T00:00:00Z", "type": "2X2moGRu7J96U1sj", "userId": "AADT3HrdiNg996cY", "vat": 20}' \
    > test.out 2>&1
eval_tap $? 262 'ProcessUserOrderNotification' test.out

#- 263 DownloadUserOrderReceipt
samples/cli/sample-apps Platform downloadUserOrderReceipt \
    --namespace $AB_NAMESPACE \
    --orderNo 'qZqI4FAF5zdhdFyN' \
    --userId 'LwuC3yqt4IwIci5e' \
    > test.out 2>&1
eval_tap $? 263 'DownloadUserOrderReceipt' test.out

#- 264 CreateUserPaymentOrder
samples/cli/sample-apps Platform createUserPaymentOrder \
    --namespace $AB_NAMESPACE \
    --userId 'FHpMm0p1Tv32gctE' \
    --body '{"currencyCode": "c3PJGKhe3J3bB0Y5", "currencyNamespace": "m6HjpZsREYpzFl1j", "customParameters": {"lkBIfmWMqKLtXfKH": {}, "AkJ7Ek1mT3uAtJPj": {}, "mQ6mDmqcKTQZGMBi": {}}, "description": "e96wouV0JdSRJseU", "extOrderNo": "TjNHIXzBe8b0TL8p", "extUserId": "sv308wqB7MHh6NaG", "itemType": "APP", "language": "ySX", "metadata": {"Wq8EW1rP6JdUbZCL": "x4KHUjR4F7557zHb", "PDNr2uAuK0NlvDKF": "owH3o1K89XhIHfUr", "9tRfsxNSljYCBY7l": "AUDOoKGZTfzvNzxL"}, "notifyUrl": "EuvrMSYa1I31Tc8o", "omitNotification": false, "platform": "GH5AcO8v2RGabcKq", "price": 3, "recurringPaymentOrderNo": "7AxJOUQiaGmeUU0N", "region": "U8iscslrcy3YEInQ", "returnUrl": "Syv45mryouIoVMks", "sandbox": true, "sku": "42tAWtKEY4DM9VNz", "subscriptionId": "VOUxFKHEdGJd172N", "title": "yRv1NMG3bMZoY6UZ"}' \
    > test.out 2>&1
eval_tap $? 264 'CreateUserPaymentOrder' test.out

#- 265 RefundUserPaymentOrder
samples/cli/sample-apps Platform refundUserPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo '3nM91Czh7SqnlUhO' \
    --userId 'SKhprzLF41gjwkUC' \
    --body '{"description": "lFqTZrmFrv7prIfm"}' \
    > test.out 2>&1
eval_tap $? 265 'RefundUserPaymentOrder' test.out

#- 266 ApplyUserRedemption
samples/cli/sample-apps Platform applyUserRedemption \
    --namespace $AB_NAMESPACE \
    --userId 'iy2bqVYbWNytQuRe' \
    --body '{"code": "wvfZlXU5H4ixl025", "orderNo": "EGQ2eP3i1zxbis22"}' \
    > test.out 2>&1
eval_tap $? 266 'ApplyUserRedemption' test.out

#- 267 DoRevocation
samples/cli/sample-apps Platform doRevocation \
    --namespace $AB_NAMESPACE \
    --userId '9WbovCKRIKzThGBG' \
    --body '{"meta": {"WHql5OPZv454vJJP": {}, "OgjuU7ce1xedheI8": {}, "5yHiGk8ZUCPNO4WD": {}}, "revokeEntries": [{"currency": {"balanceOrigin": "Epic", "currencyCode": "imc8XvMiSj93g7Tu", "namespace": "o5xSQYgSh5mq0k0H"}, "entitlement": {"entitlementId": "r4vlMhzSvezqmKrz"}, "item": {"itemIdentity": "W4abKSFTHkrFKfXl", "itemIdentityType": "ITEM_ID", "origin": "Epic"}, "quantity": 63, "type": "CURRENCY"}, {"currency": {"balanceOrigin": "GooglePlay", "currencyCode": "8fOvpaQ556lDub1d", "namespace": "3Bk262ciwpTavpNL"}, "entitlement": {"entitlementId": "JmrHVdA3wloViB2d"}, "item": {"itemIdentity": "7JoDKJvJMeNfiHxf", "itemIdentityType": "ITEM_SKU", "origin": "Epic"}, "quantity": 79, "type": "ENTITLEMENT"}, {"currency": {"balanceOrigin": "Epic", "currencyCode": "LkJH7QtGuZOqgq0Z", "namespace": "hoqxLV8zPrWqXBvA"}, "entitlement": {"entitlementId": "o0e0OLKkxvO0WvZA"}, "item": {"itemIdentity": "F2VDok5FmNv2AFXu", "itemIdentityType": "ITEM_SKU", "origin": "Steam"}, "quantity": 75, "type": "ITEM"}], "source": "IAP", "transactionId": "GzIUcX1xkLJXsVP5"}' \
    > test.out 2>&1
eval_tap $? 267 'DoRevocation' test.out

#- 268 RegisterXblSessions
samples/cli/sample-apps Platform registerXblSessions \
    --namespace $AB_NAMESPACE \
    --userId 'KcHOxQJsyuooBoP6' \
    --body '{"gameSessionId": "QwpoGynqyNtAvZWr", "payload": {"XjcsAPq7UyroRGBw": {}, "uPFR2IsuGUoF61K3": {}, "buriborUWBIsakgu": {}}, "scid": "bj1Mno2Yhb8MX8lb", "sessionTemplateName": "P39fvU1uiuYXwCQ7"}' \
    > test.out 2>&1
eval_tap $? 268 'RegisterXblSessions' test.out

#- 269 QueryUserSubscriptions
samples/cli/sample-apps Platform queryUserSubscriptions \
    --namespace $AB_NAMESPACE \
    --userId 'u5fVNf7B2DWvveBa' \
    --chargeStatus 'RECURRING_CHARGING' \
    --itemId 'pZrRzKbbOMZqf2No' \
    --limit '11' \
    --offset '71' \
    --sku 'E9fDUaLCXWIdFVK8' \
    --status 'ACTIVE' \
    --subscribedBy 'PLATFORM' \
    > test.out 2>&1
eval_tap $? 269 'QueryUserSubscriptions' test.out

#- 270 GetUserSubscriptionActivities
samples/cli/sample-apps Platform getUserSubscriptionActivities \
    --namespace $AB_NAMESPACE \
    --userId 'JSHAyBHkTTI0tz5B' \
    --excludeSystem 'false' \
    --limit '68' \
    --offset '45' \
    --subscriptionId 'JjprepvitFhEgx5S' \
    > test.out 2>&1
eval_tap $? 270 'GetUserSubscriptionActivities' test.out

#- 271 PlatformSubscribeSubscription
samples/cli/sample-apps Platform platformSubscribeSubscription \
    --namespace $AB_NAMESPACE \
    --userId 'CSFhnmShAnqde6Ud' \
    --body '{"grantDays": 66, "itemId": "lUO5ATPXizYeG8xR", "language": "AcPZTLkRBwZdZxQr", "reason": "TNTmW7Qh8sIOIVHk", "region": "JHgUmVrkKEgxD7br", "source": "GSCfInyucgvyEhIM"}' \
    > test.out 2>&1
eval_tap $? 271 'PlatformSubscribeSubscription' test.out

#- 272 CheckUserSubscriptionSubscribableByItemId
samples/cli/sample-apps Platform checkUserSubscriptionSubscribableByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'rTTWFlNq55QZe1hA' \
    --itemId 'RFRfKxswkePthFy1' \
    > test.out 2>&1
eval_tap $? 272 'CheckUserSubscriptionSubscribableByItemId' test.out

#- 273 GetUserSubscription
samples/cli/sample-apps Platform getUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'XDRcMlK4kVf44uKq' \
    --userId 'XuveIt2SmpWdB31i' \
    > test.out 2>&1
eval_tap $? 273 'GetUserSubscription' test.out

#- 274 DeleteUserSubscription
samples/cli/sample-apps Platform deleteUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId '6y13eEYRxDEXb3iw' \
    --userId 'rZTX5VCNirx0btUO' \
    > test.out 2>&1
eval_tap $? 274 'DeleteUserSubscription' test.out

#- 275 CancelSubscription
samples/cli/sample-apps Platform cancelSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId '1oUx4r95AevP16Wk' \
    --userId 'l00rng9L7Nlc8n1r' \
    --force 'true' \
    --body '{"immediate": true, "reason": "S6tYqBEELznRS0fN"}' \
    > test.out 2>&1
eval_tap $? 275 'CancelSubscription' test.out

#- 276 GrantDaysToSubscription
samples/cli/sample-apps Platform grantDaysToSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'NSatbX0rswKJeMwB' \
    --userId '7RCr72GD2W4JN6UY' \
    --body '{"grantDays": 16, "reason": "pQOAaaTk5kLMOGQe"}' \
    > test.out 2>&1
eval_tap $? 276 'GrantDaysToSubscription' test.out

#- 277 GetUserSubscriptionBillingHistories
samples/cli/sample-apps Platform getUserSubscriptionBillingHistories \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'GsU6FTDGAb9I4HZN' \
    --userId 'XtGiMydh2K6VsNl9' \
    --excludeFree 'false' \
    --limit '11' \
    --offset '18' \
    > test.out 2>&1
eval_tap $? 277 'GetUserSubscriptionBillingHistories' test.out

#- 278 ProcessUserSubscriptionNotification
samples/cli/sample-apps Platform processUserSubscriptionNotification \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'syUPdEpQOh06zJl8' \
    --userId 'PbTFExsUAf8f1trf' \
    --body '{"additionalData": {"cardSummary": "9Sph3M9rjeqMBd9j"}, "authorisedTime": "1986-10-06T00:00:00Z", "chargebackReversedTime": "1986-01-04T00:00:00Z", "chargebackTime": "1987-05-24T00:00:00Z", "chargedTime": "1978-09-28T00:00:00Z", "createdTime": "1996-07-18T00:00:00Z", "currency": {"currencyCode": "BdEKZDOIwDNxdbeh", "currencySymbol": "tbJz7YRRfdbJ7S69", "currencyType": "VIRTUAL", "decimals": 26, "namespace": "o8ZR4EzPNOZFSYt2"}, "customParameters": {"493tEnU8QEQaA5nK": {}, "oJ7mh3IViDmDfLBq": {}, "1eBZWYRyZybiBd9c": {}}, "extOrderNo": "J5UEkCTQ9CZaSkHB", "extTxId": "JaN01Eh9hHriMT4u", "extUserId": "Mst4OhY1m925vPw0", "issuedAt": "1985-05-05T00:00:00Z", "metadata": {"wpju7aBJn0kSF7gP": "NdmN5hZIc0YqQdSe", "i5PNP800Nzf1ZE9b": "NFAJcw5ly9Q1vV4T", "17GcRdbTAOOvRqg0": "Izp33aORRVWNTAlu"}, "namespace": "V6Xo48iJMSptGUmp", "nonceStr": "rara9qrNHF9HKHMm", "paymentMethod": "fNbdyLbQlDyi3Kgq", "paymentMethodFee": 22, "paymentOrderNo": "bZPjTfS48wglNtmO", "paymentProvider": "CHECKOUT", "paymentProviderFee": 86, "paymentStationUrl": "tMYySedpWrsveG3S", "price": 19, "refundedTime": "1977-02-27T00:00:00Z", "salesTax": 11, "sandbox": true, "sku": "6cGUFt3pcRPpO2b4", "status": "DELETED", "statusReason": "OXHAODx0xIQCjyB0", "subscriptionId": "SiAXW3zNfmMUCkpA", "subtotalPrice": 68, "targetNamespace": "WUrQi1ac8MaCxlnT", "targetUserId": "SNeJaNUIx6dBdTDR", "tax": 81, "totalPrice": 12, "totalTax": 87, "txEndTime": "1980-10-03T00:00:00Z", "type": "cUUqeBfegWQOm9rT", "userId": "usoIOwT3N8lrTMam", "vat": 43}' \
    > test.out 2>&1
eval_tap $? 278 'ProcessUserSubscriptionNotification' test.out

#- 279 AcquireUserTicket
samples/cli/sample-apps Platform acquireUserTicket \
    --boothName '9X0CjpqB7Jb50fk5' \
    --namespace $AB_NAMESPACE \
    --userId 'hcq9VDf0vUR99w5Z' \
    --body '{"count": 6, "orderNo": "04a0B192VT4yYRta"}' \
    > test.out 2>&1
eval_tap $? 279 'AcquireUserTicket' test.out

#- 280 QueryUserCurrencyWallets
samples/cli/sample-apps Platform queryUserCurrencyWallets \
    --namespace $AB_NAMESPACE \
    --userId 'ELRU4CalA81Lu39P' \
    > test.out 2>&1
eval_tap $? 280 'QueryUserCurrencyWallets' test.out

#- 281 DebitUserWalletByCurrencyCode
samples/cli/sample-apps Platform debitUserWalletByCurrencyCode \
    --currencyCode 'FRscOHp6uTWi6Ku3' \
    --namespace $AB_NAMESPACE \
    --userId 'J1kRFK8NXvWKPMnk' \
    --body '{"allowOverdraft": false, "amount": 80, "balanceOrigin": "Nintendo", "balanceSource": "OTHER", "metadata": {"pOq4CsExtFiyN7rZ": {}, "CF2laZiJ1N1xNJpu": {}, "GRlZsWomCdGuazHH": {}}, "reason": "kaFNYYQ7lcvsNAEE"}' \
    > test.out 2>&1
eval_tap $? 281 'DebitUserWalletByCurrencyCode' test.out

#- 282 ListUserCurrencyTransactions
samples/cli/sample-apps Platform listUserCurrencyTransactions \
    --currencyCode 'e7NAPqiDtfAUlCQa' \
    --namespace $AB_NAMESPACE \
    --userId 'BsPzM3KbER2LbDYN' \
    --limit '31' \
    --offset '58' \
    > test.out 2>&1
eval_tap $? 282 'ListUserCurrencyTransactions' test.out

#- 283 CheckWallet
eval_tap 0 283 'CheckWallet # SKIP deprecated' test.out

#- 284 CreditUserWallet
samples/cli/sample-apps Platform creditUserWallet \
    --currencyCode 'Igi3Vs9gUGdqdfAm' \
    --namespace $AB_NAMESPACE \
    --userId '7VyDVMsxGilv4FTn' \
    --body '{"amount": 91, "expireAt": "1992-05-02T00:00:00Z", "metadata": {"9Vs4IB2Zae1is7wu": {}, "S5hbbLSVe2R5qCNB": {}, "QwMFTiT2MaoBnet1": {}}, "origin": "Other", "reason": "c1V9hot7LUQSpjwx", "source": "REDEEM_CODE"}' \
    > test.out 2>&1
eval_tap $? 284 'CreditUserWallet' test.out

#- 285 DebitByWalletPlatform
samples/cli/sample-apps Platform debitByWalletPlatform \
    --currencyCode 'WqDJqBs1qy4FnKKz' \
    --namespace $AB_NAMESPACE \
    --userId 'xcpIp26frzzvgh0H' \
    --body '{"amount": 92, "debitBalanceSource": "ORDER_REVOCATION", "metadata": {"9tftoZ9TBSS9Fbcx": {}, "2vlrWCD3MORAIlqV": {}, "h0iwl9xgwZfgbATc": {}}, "reason": "dmMEj8iTiaMyRo2z", "walletPlatform": "Playstation"}' \
    > test.out 2>&1
eval_tap $? 285 'DebitByWalletPlatform' test.out

#- 286 PayWithUserWallet
samples/cli/sample-apps Platform payWithUserWallet \
    --currencyCode 'cW4lDbgwOWlfSBbQ' \
    --namespace $AB_NAMESPACE \
    --userId '0SzLPeR5IAEkjZ0f' \
    --body '{"amount": 23, "metadata": {"FKWnFd8vCcFRWt8Q": {}, "VdvrRaKfItu4zV6n": {}, "VKzprqyP2FVlIMby": {}}, "walletPlatform": "IOS"}' \
    > test.out 2>&1
eval_tap $? 286 'PayWithUserWallet' test.out

#- 287 GetUserWallet
eval_tap 0 287 'GetUserWallet # SKIP deprecated' test.out

#- 288 DebitUserWallet
eval_tap 0 288 'DebitUserWallet # SKIP deprecated' test.out

#- 289 DisableUserWallet
eval_tap 0 289 'DisableUserWallet # SKIP deprecated' test.out

#- 290 EnableUserWallet
eval_tap 0 290 'EnableUserWallet # SKIP deprecated' test.out

#- 291 ListUserWalletTransactions
eval_tap 0 291 'ListUserWalletTransactions # SKIP deprecated' test.out

#- 292 ListViews
samples/cli/sample-apps Platform listViews \
    --namespace $AB_NAMESPACE \
    --storeId 'IPJUzzBm9jKe8zAN' \
    > test.out 2>&1
eval_tap $? 292 'ListViews' test.out

#- 293 CreateView
samples/cli/sample-apps Platform createView \
    --namespace $AB_NAMESPACE \
    --storeId 'W9Mn1D9Uu6tQcNYB' \
    --body '{"displayOrder": 75, "localizations": {"aOJxPyN9x1oICISh": {"description": "BAcCUE9LyrDMxkMV", "localExt": {"NI421yWtwbP5VQXk": {}, "KFeCk9vWxBkc3AP2": {}, "nKqAfM9joUdNgaWj": {}}, "longDescription": "Zi0KeIYoxnnHZMPn", "title": "a8t59DOxxdawYqsC"}, "HJxkADkR0nCdSrGY": {"description": "HGKUwjacNdE0EdyB", "localExt": {"2DaAI8GH2BNYdP3e": {}, "EULJTToqYwNw1U86": {}, "TIoVyfO8OnCizdr0": {}}, "longDescription": "wL1XeBhANHVtoEi7", "title": "WBL6HgaSBhU9U1NH"}, "7U6INGrbpDpcj9wV": {"description": "nURZRJtgAP27F0i2", "localExt": {"CeaYrnKUyOpkLknL": {}, "qVGp0Wx08RZxBrAR": {}, "hqLLSBy6nfH0FtXk": {}}, "longDescription": "BAZlpUKqw0QtRakV", "title": "zNFWX3zY4KB9pwRZ"}}, "name": "b5uHHxP0cApj6YlS"}' \
    > test.out 2>&1
eval_tap $? 293 'CreateView' test.out

#- 294 GetView
samples/cli/sample-apps Platform getView \
    --namespace $AB_NAMESPACE \
    --viewId '73kTliUoi1wmWFjP' \
    --storeId 'QYYrDNYAZhFlfWtQ' \
    > test.out 2>&1
eval_tap $? 294 'GetView' test.out

#- 295 UpdateView
samples/cli/sample-apps Platform updateView \
    --namespace $AB_NAMESPACE \
    --viewId 'Z3oQk1jZx1wPR83N' \
    --storeId 'rTs8K8ni8JyL4GZn' \
    --body '{"displayOrder": 51, "localizations": {"EMjM2ssj9juojOdX": {"description": "kDT0CHW1mmUSeIhk", "localExt": {"24kBOsvE68dmP08E": {}, "ceKjhWRZlO50io3B": {}, "QOqLQHs0JbhHuyhw": {}}, "longDescription": "L3fAirPe5jkIhbjz", "title": "VtBeZGe1oLQ1KnPD"}, "ENg6wJdGGuFkeEm9": {"description": "wivb8CiOAZd5atUZ", "localExt": {"COjkhMyXZ5Wlokce": {}, "1sh2LT0RZioH4vgW": {}, "sioTHUb3xhY1lMdk": {}}, "longDescription": "vVKNGAzWkzOuZtEt", "title": "WdWGHN8sE1TLzeuN"}, "UTNKNiHj8ZmvGpN5": {"description": "PcoapRz7AYluruCT", "localExt": {"eZi1dIfdnnOYSxhL": {}, "pGuG5paKvJXWLpd0": {}, "GYd4LruIqduxK9AX": {}}, "longDescription": "bh9SNpXyqiq5Yei4", "title": "7fnbuDL8EFJmcd8O"}}, "name": "qEszZ08DaFjbSFyv"}' \
    > test.out 2>&1
eval_tap $? 295 'UpdateView' test.out

#- 296 DeleteView
samples/cli/sample-apps Platform deleteView \
    --namespace $AB_NAMESPACE \
    --viewId 'fV8uaQBmByNLoXZ3' \
    --storeId 'mdxmnnLEKyBcIc6L' \
    > test.out 2>&1
eval_tap $? 296 'DeleteView' test.out

#- 297 QueryWallets
eval_tap 0 297 'QueryWallets # SKIP deprecated' test.out

#- 298 BulkCredit
samples/cli/sample-apps Platform bulkCredit \
    --namespace $AB_NAMESPACE \
    --body '[{"creditRequest": {"amount": 81, "expireAt": "1993-06-23T00:00:00Z", "metadata": {"ivy0mGWVJyOaurIL": {}, "txYNeGqOnZSmkLqi": {}, "w8KGZCyAYJ0fzP8t": {}}, "origin": "Twitch", "reason": "ahQ2xZV51OsykO1C", "source": "GIFT"}, "currencyCode": "KJH36WpGMtX09g0c", "userIds": ["Nd17xvYAn2h1AXfy", "QljtW7ap9HSXlsPn", "tBL3EZz2XlStVQST"]}, {"creditRequest": {"amount": 55, "expireAt": "1991-02-28T00:00:00Z", "metadata": {"23bRp7GfOKQsmFbO": {}, "Iu6sbHvhycUrwQ3X": {}, "KgHYkOFjEXnkfPcy": {}}, "origin": "Xbox", "reason": "p8wQlsNIn58fgRoi", "source": "REFERRAL_BONUS"}, "currencyCode": "7KFqcH7VBKcIcnmM", "userIds": ["mlgBUNzvTOnmR5fn", "TnhTkB0sq9lV98oh", "xCdiMwoiXK7lUtVN"]}, {"creditRequest": {"amount": 80, "expireAt": "1979-12-14T00:00:00Z", "metadata": {"QuqawiPGn7uBIhrA": {}, "zyzaeLgFKEQTWzuI": {}, "lvYL6zkfAN14A7be": {}}, "origin": "System", "reason": "0kOxyZrc2sVRZ5Q6", "source": "IAP"}, "currencyCode": "FjaHIj0rFoYuvf3N", "userIds": ["FKli4iM3RyPQchrV", "Jp8RrHEG0k5tgIgW", "4BX9Qh9OINjESFRr"]}]' \
    > test.out 2>&1
eval_tap $? 298 'BulkCredit' test.out

#- 299 BulkDebit
samples/cli/sample-apps Platform bulkDebit \
    --namespace $AB_NAMESPACE \
    --body '[{"currencyCode": "opjeGoJpMIwo33Tm", "request": {"allowOverdraft": true, "amount": 11, "balanceOrigin": "Twitch", "balanceSource": "ORDER_REVOCATION", "metadata": {"1uN4cTTuaQKyzkHg": {}, "m9oy5syORMVfDCMY": {}, "p4GKgE4dRNo7X0ac": {}}, "reason": "nQJtR71Ll615V7pf"}, "userIds": ["E7RTgQL7YukLCUuF", "ofwE3J953Yd0HZ8D", "AR3lPgWYrnTQMnYN"]}, {"currencyCode": "fG36TQ81ZTDGvLiK", "request": {"allowOverdraft": true, "amount": 2, "balanceOrigin": "Oculus", "balanceSource": "PAYMENT", "metadata": {"chQUQhvhiAhwRzDW": {}, "8HBWAyvbamxFgIfh": {}, "N7dIyEmmOGEo4R55": {}}, "reason": "wBgTzq9tc78gtpji"}, "userIds": ["VPIHQFbrOT1JEbTN", "zf6PQfb2Zw5MqkSi", "f8hzcMxy6x65IfWh"]}, {"currencyCode": "aH6AslcqLnYxPh1u", "request": {"allowOverdraft": false, "amount": 63, "balanceOrigin": "System", "balanceSource": "IAP_REVOCATION", "metadata": {"XR2xPr9Uh8bXkOoa": {}, "Ji0xgCjnWzH5xfi8": {}, "xah19iGRGSxUzp1D": {}}, "reason": "JR4nO2HtVEWYSDXs"}, "userIds": ["453yP9uFPpBC2usy", "LMKfy4YPaxRwcDbY", "j6i6AtOtUh4rY1TU"]}]' \
    > test.out 2>&1
eval_tap $? 299 'BulkDebit' test.out

#- 300 GetWallet
eval_tap 0 300 'GetWallet # SKIP deprecated' test.out

#- 301 SyncOrders
samples/cli/sample-apps Platform syncOrders \
    --nextEvaluatedKey '66iVY1knNPbW8zQK' \
    --end 'pMltomBc4ivoR3hF' \
    --start 'nSiWP377E2f2wlBW' \
    > test.out 2>&1
eval_tap $? 301 'SyncOrders' test.out

#- 302 TestAdyenConfig
samples/cli/sample-apps Platform testAdyenConfig \
    --sandbox 'true' \
    --body '{"allowedPaymentMethods": ["CJC38XZ6Z9hLVvDN", "gXN2hqvm8Y4UjKcK", "G0iFxURqrBdkfMMK"], "apiKey": "HogirXkftYJjVAlP", "authoriseAsCapture": false, "blockedPaymentMethods": ["KV0ByiHX80cNzIkk", "IZrjHqaUHbfz4s8q", "SPuZU1OMP5H4osWn"], "clientKey": "DOXM0XE9qc7EQwxl", "dropInSettings": "TviQPVvWxg8KD5Cx", "liveEndpointUrlPrefix": "esyTjN8PbdhiJTZF", "merchantAccount": "xjq1YDXv0R0AUn2F", "notificationHmacKey": "gVTbPXnkIrBYSn8t", "notificationPassword": "Dt4AZlHkytYjKONp", "notificationUsername": "tMDxdM3AjWFInIJZ", "returnUrl": "wFhqHslRBK6oQpf8", "settings": "x4VVgl2DCOWCWIv5"}' \
    > test.out 2>&1
eval_tap $? 302 'TestAdyenConfig' test.out

#- 303 TestAliPayConfig
samples/cli/sample-apps Platform testAliPayConfig \
    --sandbox 'true' \
    --body '{"appId": "8TqQyA468YIE8gpF", "privateKey": "i2Te44MRMWhbkfQB", "publicKey": "0DBm3ROEfltjbchq", "returnUrl": "dqDM6jWGtAHpag3J"}' \
    > test.out 2>&1
eval_tap $? 303 'TestAliPayConfig' test.out

#- 304 TestCheckoutConfig
samples/cli/sample-apps Platform testCheckoutConfig \
    --sandbox 'false' \
    --body '{"publicKey": "vtQd8TlNaE1B3UZ6", "secretKey": "egm6S0glgkAqaYia"}' \
    > test.out 2>&1
eval_tap $? 304 'TestCheckoutConfig' test.out

#- 305 DebugMatchedPaymentMerchantConfig
samples/cli/sample-apps Platform debugMatchedPaymentMerchantConfig \
    --namespace 'a3H6hveTZUWEIj9w' \
    --region 'Xg2VPHllRI5TF4Jj' \
    > test.out 2>&1
eval_tap $? 305 'DebugMatchedPaymentMerchantConfig' test.out

#- 306 TestPayPalConfig
samples/cli/sample-apps Platform testPayPalConfig \
    --sandbox 'true' \
    --body '{"clientID": "9Oc7Oq53nLZFYYvP", "clientSecret": "KKth8ATdiDsj6oRC", "returnUrl": "51FC5xaeGuFEBE88", "webHookId": "E6bgUbmyrOsCmvTE"}' \
    > test.out 2>&1
eval_tap $? 306 'TestPayPalConfig' test.out

#- 307 TestStripeConfig
samples/cli/sample-apps Platform testStripeConfig \
    --sandbox 'false' \
    --body '{"allowedPaymentMethodTypes": ["vtpEkDWeXQgpwL3a", "EMJLqBvd5uxrj97Z", "Fft4TIdmJV9DZPLZ"], "publishableKey": "XJBmYwLKFCWQbL59", "secretKey": "dP5WvOgxAkC9lmzO", "webhookSecret": "FXjnx7UfqVQ9hqv5"}' \
    > test.out 2>&1
eval_tap $? 307 'TestStripeConfig' test.out

#- 308 TestWxPayConfig
samples/cli/sample-apps Platform testWxPayConfig \
    --body '{"appId": "uQ8NyO39mglczwFl", "key": "D5szVxwa6s9mLbKa", "mchid": "3DfEx8dr0GV85YWW", "returnUrl": "HEp7MCXKmdYigdkf"}' \
    > test.out 2>&1
eval_tap $? 308 'TestWxPayConfig' test.out

#- 309 TestXsollaConfig
samples/cli/sample-apps Platform testXsollaConfig \
    --body '{"apiKey": "Ej5G9LZCnhEwzt5Y", "flowCompletionUrl": "nO1zrUwB7Se05fjb", "merchantId": 53, "projectId": 26, "projectSecretKey": "BiZBZqmxvAAg33SG"}' \
    > test.out 2>&1
eval_tap $? 309 'TestXsollaConfig' test.out

#- 310 GetPaymentMerchantConfig
samples/cli/sample-apps Platform getPaymentMerchantConfig \
    --id 'MvOcwKEiZGsWhI4u' \
    > test.out 2>&1
eval_tap $? 310 'GetPaymentMerchantConfig' test.out

#- 311 UpdateAdyenConfig
samples/cli/sample-apps Platform updateAdyenConfig \
    --id 'Nucdu1PwAIMK3fTK' \
    --sandbox 'false' \
    --validate 'false' \
    --body '{"allowedPaymentMethods": ["D6JT2r8u2AJ6xymE", "WnfP9cE0Ebx7veAg", "K3yrwko9Mt6y9JJk"], "apiKey": "XGCGLxZmsak5quPM", "authoriseAsCapture": false, "blockedPaymentMethods": ["9AQvtBCsA9qLDPcA", "BbXjUf4kDZVWWeqM", "ubuC23CWMURtIttb"], "clientKey": "oTm6cXilqrCSHGgP", "dropInSettings": "mjYiRNzRVD3sgair", "liveEndpointUrlPrefix": "ttM5negSwpMcBBrf", "merchantAccount": "EKt2XxdrW0yS9Q0W", "notificationHmacKey": "rQRel1MiLEA6J264", "notificationPassword": "D5NOgjiYuFMnsId9", "notificationUsername": "VT433d53yh9fbQmM", "returnUrl": "Jhj2y5ZOxsWvYHav", "settings": "Sxk390kiI4529IBC"}' \
    > test.out 2>&1
eval_tap $? 311 'UpdateAdyenConfig' test.out

#- 312 TestAdyenConfigById
samples/cli/sample-apps Platform testAdyenConfigById \
    --id '4K32LQn09dquRysZ' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 312 'TestAdyenConfigById' test.out

#- 313 UpdateAliPayConfig
samples/cli/sample-apps Platform updateAliPayConfig \
    --id 'QxznhNwLcv6L0oI2' \
    --sandbox 'true' \
    --validate 'true' \
    --body '{"appId": "N3s4mnPQqjCjiLiM", "privateKey": "DcOTaqXHbtHgCF3J", "publicKey": "XO3OFcmZcbcecSpB", "returnUrl": "6AH6ZtfiVIGDeaXu"}' \
    > test.out 2>&1
eval_tap $? 313 'UpdateAliPayConfig' test.out

#- 314 TestAliPayConfigById
samples/cli/sample-apps Platform testAliPayConfigById \
    --id 'nwrZCBzaXmAsi1rX' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 314 'TestAliPayConfigById' test.out

#- 315 UpdateCheckoutConfig
samples/cli/sample-apps Platform updateCheckoutConfig \
    --id 'jLUNSd3Qmp050k0I' \
    --sandbox 'true' \
    --validate 'true' \
    --body '{"publicKey": "ScKEFx03UNmtyyeQ", "secretKey": "5LolNQK7N1eqF5nT"}' \
    > test.out 2>&1
eval_tap $? 315 'UpdateCheckoutConfig' test.out

#- 316 TestCheckoutConfigById
samples/cli/sample-apps Platform testCheckoutConfigById \
    --id '36UUGNnpIhGVIejc' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 316 'TestCheckoutConfigById' test.out

#- 317 UpdatePayPalConfig
samples/cli/sample-apps Platform updatePayPalConfig \
    --id 'ywV3o5J919r848ER' \
    --sandbox 'false' \
    --validate 'true' \
    --body '{"clientID": "tJ9GVvHNaMrxKm0W", "clientSecret": "7x6tGzAfBpJwuseb", "returnUrl": "vtSoILb6SVjGhRVk", "webHookId": "TiD89ozxWL54tIgB"}' \
    > test.out 2>&1
eval_tap $? 317 'UpdatePayPalConfig' test.out

#- 318 TestPayPalConfigById
samples/cli/sample-apps Platform testPayPalConfigById \
    --id 'qmBy30iYvAXJKbbQ' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 318 'TestPayPalConfigById' test.out

#- 319 UpdateStripeConfig
samples/cli/sample-apps Platform updateStripeConfig \
    --id 'YfFTeu1JaS0S2neK' \
    --sandbox 'false' \
    --validate 'false' \
    --body '{"allowedPaymentMethodTypes": ["9B1xY7xDwenr7XNq", "KKI1oRZqaqaRKCPZ", "sf53HfOctNvR7Nx6"], "publishableKey": "c6s0OSt3NmupOxgc", "secretKey": "Uf12JPyJbelJxfax", "webhookSecret": "9KcyGAHiQ4tJ6FCo"}' \
    > test.out 2>&1
eval_tap $? 319 'UpdateStripeConfig' test.out

#- 320 TestStripeConfigById
samples/cli/sample-apps Platform testStripeConfigById \
    --id 'hENAhwpxfiWJC3Zv' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 320 'TestStripeConfigById' test.out

#- 321 UpdateWxPayConfig
samples/cli/sample-apps Platform updateWxPayConfig \
    --id 'OKX9jwUB6FQb0dWf' \
    --validate 'true' \
    --body '{"appId": "yGiMpDXNjDzhbWOt", "key": "Mh2CZU3m1cfxIN4Q", "mchid": "wGrsfonBwX5RYl9J", "returnUrl": "hPNzGOBSdLsNjRv4"}' \
    > test.out 2>&1
eval_tap $? 321 'UpdateWxPayConfig' test.out

#- 322 UpdateWxPayConfigCert
samples/cli/sample-apps Platform updateWxPayConfigCert \
    --id 'K3lW1xlozzfKVCAX' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 322 'UpdateWxPayConfigCert' test.out

#- 323 TestWxPayConfigById
samples/cli/sample-apps Platform testWxPayConfigById \
    --id 'R4dhqd72wVIr5DuF' \
    > test.out 2>&1
eval_tap $? 323 'TestWxPayConfigById' test.out

#- 324 UpdateXsollaConfig
samples/cli/sample-apps Platform updateXsollaConfig \
    --id '3PQ19YEm5eAMDTEQ' \
    --validate 'false' \
    --body '{"apiKey": "9FxY0tA1oSOJi69H", "flowCompletionUrl": "zrYmCfHvDiiS3X13", "merchantId": 86, "projectId": 76, "projectSecretKey": "f4vrAZkV4jeEMB2V"}' \
    > test.out 2>&1
eval_tap $? 324 'UpdateXsollaConfig' test.out

#- 325 TestXsollaConfigById
samples/cli/sample-apps Platform testXsollaConfigById \
    --id 'qtI4peqdtJjEvtRy' \
    > test.out 2>&1
eval_tap $? 325 'TestXsollaConfigById' test.out

#- 326 UpdateXsollaUIConfig
samples/cli/sample-apps Platform updateXsollaUIConfig \
    --id 'UpVQo6OKLQyh415D' \
    --body '{"device": "DESKTOP", "showCloseButton": false, "size": "SMALL", "theme": "DEFAULT"}' \
    > test.out 2>&1
eval_tap $? 326 'UpdateXsollaUIConfig' test.out

#- 327 QueryPaymentProviderConfig
samples/cli/sample-apps Platform queryPaymentProviderConfig \
    --limit '73' \
    --namespace 'iwySdVgOIs8SdEcU' \
    --offset '8' \
    --region 'lGmBUASx1ntx7UR3' \
    > test.out 2>&1
eval_tap $? 327 'QueryPaymentProviderConfig' test.out

#- 328 CreatePaymentProviderConfig
samples/cli/sample-apps Platform createPaymentProviderConfig \
    --body '{"aggregate": "ADYEN", "namespace": "2jKqvnyeeJeQD2lc", "region": "IdyIrd9yK2Zng582", "sandboxTaxJarApiToken": "hPzKWR5iOlzTEkFo", "specials": ["WXPAY", "WXPAY", "STRIPE"], "taxJarApiToken": "SbLFJrsdlD91nMye", "taxJarEnabled": true, "useGlobalTaxJarApiToken": true}' \
    > test.out 2>&1
eval_tap $? 328 'CreatePaymentProviderConfig' test.out

#- 329 GetAggregatePaymentProviders
samples/cli/sample-apps Platform getAggregatePaymentProviders \
    > test.out 2>&1
eval_tap $? 329 'GetAggregatePaymentProviders' test.out

#- 330 DebugMatchedPaymentProviderConfig
samples/cli/sample-apps Platform debugMatchedPaymentProviderConfig \
    --namespace '13CtiLedOJ0lsjz4' \
    --region 'ykan0hdJao6aPdq9' \
    > test.out 2>&1
eval_tap $? 330 'DebugMatchedPaymentProviderConfig' test.out

#- 331 GetSpecialPaymentProviders
samples/cli/sample-apps Platform getSpecialPaymentProviders \
    > test.out 2>&1
eval_tap $? 331 'GetSpecialPaymentProviders' test.out

#- 332 UpdatePaymentProviderConfig
samples/cli/sample-apps Platform updatePaymentProviderConfig \
    --id 'DBrq9oPuM4lxRLcX' \
    --body '{"aggregate": "ADYEN", "namespace": "r2Y9oFIdnTAs0pED", "region": "LEomRwbG1bzG9UVk", "sandboxTaxJarApiToken": "NdnWtp3RgmrcFZUf", "specials": ["CHECKOUT", "WXPAY", "CHECKOUT"], "taxJarApiToken": "mAOScvDd0f2rGHeP", "taxJarEnabled": false, "useGlobalTaxJarApiToken": true}' \
    > test.out 2>&1
eval_tap $? 332 'UpdatePaymentProviderConfig' test.out

#- 333 DeletePaymentProviderConfig
samples/cli/sample-apps Platform deletePaymentProviderConfig \
    --id 'guUmJg7Z8qnh77dM' \
    > test.out 2>&1
eval_tap $? 333 'DeletePaymentProviderConfig' test.out

#- 334 GetPaymentTaxConfig
samples/cli/sample-apps Platform getPaymentTaxConfig \
    > test.out 2>&1
eval_tap $? 334 'GetPaymentTaxConfig' test.out

#- 335 UpdatePaymentTaxConfig
samples/cli/sample-apps Platform updatePaymentTaxConfig \
    --body '{"sandboxTaxJarApiToken": "8VFTf8PBNG80Izin", "taxJarApiToken": "bwGHN3FHzr3LeNNT", "taxJarEnabled": false, "taxJarProductCodesMapping": {"RDRVEOWChIPOqXU8": "TzG6UK0CpypUZeLV", "Gyj5R7kaM8lMo5Hy": "F2lJLR6HvMiS7Xqh", "uXYnea37RpikIIDi": "zuWkYc498bSSSVz8"}}' \
    > test.out 2>&1
eval_tap $? 335 'UpdatePaymentTaxConfig' test.out

#- 336 SyncPaymentOrders
samples/cli/sample-apps Platform syncPaymentOrders \
    --nextEvaluatedKey 'oTJD6DibbX7G1ric' \
    --end '2PuU42gieg3IP4L5' \
    --start 'pAWGsaRdESnzCSfN' \
    > test.out 2>&1
eval_tap $? 336 'SyncPaymentOrders' test.out

#- 337 PublicGetRootCategories
samples/cli/sample-apps Platform publicGetRootCategories \
    --namespace $AB_NAMESPACE \
    --language 'z1D09jIY4qidFEuV' \
    --storeId 'xHsPoFFJKhb7HMBQ' \
    > test.out 2>&1
eval_tap $? 337 'PublicGetRootCategories' test.out

#- 338 DownloadCategories
samples/cli/sample-apps Platform downloadCategories \
    --namespace $AB_NAMESPACE \
    --language 'GG9Y2RJ3DZuqclLc' \
    --storeId 'ssAkDmY5pPlWYHJB' \
    > test.out 2>&1
eval_tap $? 338 'DownloadCategories' test.out

#- 339 PublicGetCategory
samples/cli/sample-apps Platform publicGetCategory \
    --categoryPath 'RRac3J0LhjvN734V' \
    --namespace $AB_NAMESPACE \
    --language 'rYunuNyH4KYIUuLr' \
    --storeId 'pGP5na4h6ouldfLY' \
    > test.out 2>&1
eval_tap $? 339 'PublicGetCategory' test.out

#- 340 PublicGetChildCategories
samples/cli/sample-apps Platform publicGetChildCategories \
    --categoryPath 'o85a64MZEfifXfV8' \
    --namespace $AB_NAMESPACE \
    --language 'MntSMWy6TDiXjY8j' \
    --storeId 'moyE53wzUR6V65tc' \
    > test.out 2>&1
eval_tap $? 340 'PublicGetChildCategories' test.out

#- 341 PublicGetDescendantCategories
samples/cli/sample-apps Platform publicGetDescendantCategories \
    --categoryPath 'dxt5EHx3eAvJZwEo' \
    --namespace $AB_NAMESPACE \
    --language '6nsR8KudTfCEgrNr' \
    --storeId 'VKXw40Q6nODd2h8J' \
    > test.out 2>&1
eval_tap $? 341 'PublicGetDescendantCategories' test.out

#- 342 PublicListCurrencies
samples/cli/sample-apps Platform publicListCurrencies \
    --namespace $AB_NAMESPACE \
    --currencyType 'VIRTUAL' \
    > test.out 2>&1
eval_tap $? 342 'PublicListCurrencies' test.out

#- 343 GeDLCDurableRewardShortMap
samples/cli/sample-apps Platform geDLCDurableRewardShortMap \
    --namespace $AB_NAMESPACE \
    --dlcType 'STEAM' \
    > test.out 2>&1
eval_tap $? 343 'GeDLCDurableRewardShortMap' test.out

#- 344 GetIAPItemMapping
samples/cli/sample-apps Platform getIAPItemMapping \
    --namespace $AB_NAMESPACE \
    --platform 'GOOGLE' \
    > test.out 2>&1
eval_tap $? 344 'GetIAPItemMapping' test.out

#- 345 PublicGetItemByAppId
samples/cli/sample-apps Platform publicGetItemByAppId \
    --namespace $AB_NAMESPACE \
    --language 'EqgEIWNsxuh3kdsP' \
    --region 'icBjpuPcKKR9IQu7' \
    --storeId 'YgCs94E1m6esuai6' \
    --appId 'eMVFWGX6vHiRCBZG' \
    > test.out 2>&1
eval_tap $? 345 'PublicGetItemByAppId' test.out

#- 346 PublicQueryItems
samples/cli/sample-apps Platform publicQueryItems \
    --namespace $AB_NAMESPACE \
    --appType 'SOFTWARE' \
    --baseAppId 'XNwKuSLdpPIyzBY2' \
    --categoryPath 'KpccVY4voOrUCapH' \
    --features '7zKtgQlQ33zAGt6T' \
    --includeSubCategoryItem 'true' \
    --itemType 'OPTIONBOX' \
    --language 'V33e7qyFE8009B0N' \
    --limit '63' \
    --offset '10' \
    --region 'wtOqc7RyujFpmlux' \
    --sortBy '["displayOrder", "createdAt:desc", "name"]' \
    --storeId 'WhBDnRYKjMdImLSa' \
    --tags 'bTbKGbM1VghOQ2i4' \
    > test.out 2>&1
eval_tap $? 346 'PublicQueryItems' test.out

#- 347 PublicGetItemBySku
samples/cli/sample-apps Platform publicGetItemBySku \
    --namespace $AB_NAMESPACE \
    --language 'p5y2v9Ej9yIvSxC4' \
    --region 'H3GOTc100TPO6Mbk' \
    --storeId 'Kh2CmHfzmQXtxkAm' \
    --sku 'iJt784Wwt1FwN6sm' \
    > test.out 2>&1
eval_tap $? 347 'PublicGetItemBySku' test.out

#- 348 PublicGetEstimatedPrice
samples/cli/sample-apps Platform publicGetEstimatedPrice \
    --namespace $AB_NAMESPACE \
    --region 'UW4tr5AnkxGhbXni' \
    --storeId 'qKMhhDy1ZgV5qImv' \
    --itemIds 'wGkJNSlXMEn5fHhw' \
    > test.out 2>&1
eval_tap $? 348 'PublicGetEstimatedPrice' test.out

#- 349 PublicBulkGetItems
samples/cli/sample-apps Platform publicBulkGetItems \
    --namespace $AB_NAMESPACE \
    --language 'BaJjrq0LNoLKuXtx' \
    --region 'IQPZ7U9dl8EHHES5' \
    --storeId 'SIyYspyeLVRihSLv' \
    --itemIds 'O8cil0nCFGHNoghz' \
    > test.out 2>&1
eval_tap $? 349 'PublicBulkGetItems' test.out

#- 350 PublicValidateItemPurchaseCondition
samples/cli/sample-apps Platform publicValidateItemPurchaseCondition \
    --namespace $AB_NAMESPACE \
    --body '{"itemIds": ["QzzjlcLdpNFhyEwY", "NoF5D6VyPxE433uP", "EnI8Ua36OLdXa1EG"]}' \
    > test.out 2>&1
eval_tap $? 350 'PublicValidateItemPurchaseCondition' test.out

#- 351 PublicSearchItems
samples/cli/sample-apps Platform publicSearchItems \
    --namespace $AB_NAMESPACE \
    --itemType 'COINS' \
    --limit '71' \
    --offset '30' \
    --region 'dtJ1NnGGsZFrn6y1' \
    --storeId 'JFa74ulLMH83Vynv' \
    --keyword 'OsJl3a2oxLsex6OC' \
    --language 'o73dXstGioIwS8Hg' \
    > test.out 2>&1
eval_tap $? 351 'PublicSearchItems' test.out

#- 352 PublicGetApp
samples/cli/sample-apps Platform publicGetApp \
    --itemId 'dK1e1uUTF6OiDNGe' \
    --namespace $AB_NAMESPACE \
    --language 'VE9tRQcbFDwjFz37' \
    --region 'ponoSzvH0eqbNsfw' \
    --storeId 'sXTvaIivzY8ZWG5q' \
    > test.out 2>&1
eval_tap $? 352 'PublicGetApp' test.out

#- 353 PublicGetItemDynamicData
samples/cli/sample-apps Platform publicGetItemDynamicData \
    --itemId 'HjejVbDi5EbItCME' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 353 'PublicGetItemDynamicData' test.out

#- 354 PublicGetItem
samples/cli/sample-apps Platform publicGetItem \
    --itemId 'RBxdSP1mx1PakGLl' \
    --namespace $AB_NAMESPACE \
    --language 'wNLyxYFWru35Jr2I' \
    --populateBundle 'false' \
    --region 'gl0ETFYqqyNmXlC5' \
    --storeId 'bZyYY9jVRq7pDixY' \
    > test.out 2>&1
eval_tap $? 354 'PublicGetItem' test.out

#- 355 GetPaymentCustomization
eval_tap 0 355 'GetPaymentCustomization # SKIP deprecated' test.out

#- 356 PublicGetPaymentUrl
samples/cli/sample-apps Platform publicGetPaymentUrl \
    --namespace $AB_NAMESPACE \
    --body '{"paymentOrderNo": "S106ndNPT4L4Qgev", "paymentProvider": "ADYEN", "returnUrl": "VJ2EAbcVZ9hBjPj7", "ui": "fUF3gXrUoAsrSyEy", "zipCode": "UDynV5QzcckuwWOU"}' \
    > test.out 2>&1
eval_tap $? 356 'PublicGetPaymentUrl' test.out

#- 357 PublicGetPaymentMethods
samples/cli/sample-apps Platform publicGetPaymentMethods \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'kXGbKF2wD9AP3jsX' \
    > test.out 2>&1
eval_tap $? 357 'PublicGetPaymentMethods' test.out

#- 358 PublicGetUnpaidPaymentOrder
samples/cli/sample-apps Platform publicGetUnpaidPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'XFtw4VGCcSra2LdV' \
    > test.out 2>&1
eval_tap $? 358 'PublicGetUnpaidPaymentOrder' test.out

#- 359 Pay
samples/cli/sample-apps Platform pay \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'GX44yLL1RxtjIoOx' \
    --paymentProvider 'PAYPAL' \
    --zipCode 'nLtR4M2kC7DjCT4L' \
    --body '{"token": "oWp3KjPsJDiG6o0g"}' \
    > test.out 2>&1
eval_tap $? 359 'Pay' test.out

#- 360 PublicCheckPaymentOrderPaidStatus
samples/cli/sample-apps Platform publicCheckPaymentOrderPaidStatus \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'km1Vqlu7W2jW0QNL' \
    > test.out 2>&1
eval_tap $? 360 'PublicCheckPaymentOrderPaidStatus' test.out

#- 361 GetPaymentPublicConfig
samples/cli/sample-apps Platform getPaymentPublicConfig \
    --namespace $AB_NAMESPACE \
    --sandbox 'true' \
    --paymentProvider 'PAYPAL' \
    --region 'iV9WjixpJjh7MKG7' \
    > test.out 2>&1
eval_tap $? 361 'GetPaymentPublicConfig' test.out

#- 362 PublicGetQRCode
samples/cli/sample-apps Platform publicGetQRCode \
    --namespace $AB_NAMESPACE \
    --code 'xdgltFBCMF7BGKSu' \
    > test.out 2>&1
eval_tap $? 362 'PublicGetQRCode' test.out

#- 363 PublicNormalizePaymentReturnUrl
samples/cli/sample-apps Platform publicNormalizePaymentReturnUrl \
    --namespace $AB_NAMESPACE \
    --payerID 'zL49R0iXZmjIWxYM' \
    --foreinginvoice 'IT00Yz179jq5Z5EO' \
    --invoiceId 'V0IAVxv0pWmhYAug' \
    --payload 'Ol3fG7Lnk3cA6CUS' \
    --redirectResult '1F1sIvIsufhGEA7D' \
    --resultCode 'XjMAE9foPKx9dZ27' \
    --sessionId 'ocQDFH7bdFeDcYUl' \
    --status 'exf63jjbMlD9l6cR' \
    --token 'RdZ5eDDw3gGk7XBm' \
    --type 'aWkjYNz9SRUWsvji' \
    --userId '194tBwOtU4JTAJkz' \
    --orderNo 'BGlnTMYe5us8q5KQ' \
    --paymentOrderNo 'HwSKIOijfR6hkFKw' \
    --paymentProvider 'XSOLLA' \
    --returnUrl 'I4b6slvoz9flL2iS' \
    > test.out 2>&1
eval_tap $? 363 'PublicNormalizePaymentReturnUrl' test.out

#- 364 GetPaymentTaxValue
samples/cli/sample-apps Platform getPaymentTaxValue \
    --namespace $AB_NAMESPACE \
    --zipCode 'Il3QAnmBtLiRH8hW' \
    --paymentOrderNo 'WpVQkquhvdpkXRLK' \
    --paymentProvider 'ALIPAY' \
    > test.out 2>&1
eval_tap $? 364 'GetPaymentTaxValue' test.out

#- 365 GetRewardByCode
samples/cli/sample-apps Platform getRewardByCode \
    --namespace $AB_NAMESPACE \
    --rewardCode 'eouxySfogQD51R3I' \
    > test.out 2>&1
eval_tap $? 365 'GetRewardByCode' test.out

#- 366 QueryRewards1
samples/cli/sample-apps Platform queryRewards1 \
    --namespace $AB_NAMESPACE \
    --eventTopic 'SG3uM8BvKwOLft0q' \
    --limit '19' \
    --offset '65' \
    --sortBy '["rewardCode:asc", "rewardCode"]' \
    > test.out 2>&1
eval_tap $? 366 'QueryRewards1' test.out

#- 367 GetReward1
samples/cli/sample-apps Platform getReward1 \
    --namespace $AB_NAMESPACE \
    --rewardId '9h2mzg3dBYMK797C' \
    > test.out 2>&1
eval_tap $? 367 'GetReward1' test.out

#- 368 PublicListStores
samples/cli/sample-apps Platform publicListStores \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 368 'PublicListStores' test.out

#- 369 PublicExistsAnyMyActiveEntitlement
samples/cli/sample-apps Platform publicExistsAnyMyActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --appIds '["O0T1eZoaxc58Zy8C", "ltBmqc5A0N02D8zq", "DzXaa3bX0JQi1hxZ"]' \
    --itemIds '["3P5fDoPhzfop2PF0", "g9rdA26JXQlZci41", "oo2NARW43F7F8nQ1"]' \
    --skus '["JeYoH6GmaAbzQjLO", "BamWKYrUg8bIX1uh", "nat0eCP6JPZeaC1z"]' \
    > test.out 2>&1
eval_tap $? 369 'PublicExistsAnyMyActiveEntitlement' test.out

#- 370 PublicGetMyAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform publicGetMyAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --appId '7dnjsFadVRuDtBQq' \
    > test.out 2>&1
eval_tap $? 370 'PublicGetMyAppEntitlementOwnershipByAppId' test.out

#- 371 PublicGetMyEntitlementOwnershipByItemId
samples/cli/sample-apps Platform publicGetMyEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --entitlementClazz 'LOOTBOX' \
    --itemId 'h7iy2Z0VkMirjii6' \
    > test.out 2>&1
eval_tap $? 371 'PublicGetMyEntitlementOwnershipByItemId' test.out

#- 372 PublicGetMyEntitlementOwnershipBySku
samples/cli/sample-apps Platform publicGetMyEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --entitlementClazz 'APP' \
    --sku '8DpqKE5waanm318X' \
    > test.out 2>&1
eval_tap $? 372 'PublicGetMyEntitlementOwnershipBySku' test.out

#- 373 PublicGetEntitlementOwnershipToken
samples/cli/sample-apps Platform publicGetEntitlementOwnershipToken \
    --namespace $AB_NAMESPACE \
    --appIds '["16awdiDnGXOLpjIE", "XXJaKyPY09c5dnTh", "aCUjViVoaEiqCHey"]' \
    --itemIds '["9BG840J5a4kY3dXI", "kF6OenCk4Nb4QVHz", "UCRxczbrZxjKJWcO"]' \
    --skus '["UbmT4WsLkIPLiVKG", "N4ChMUJlb4AuyFsu", "KnOgkWsket4HmSib"]' \
    > test.out 2>&1
eval_tap $? 373 'PublicGetEntitlementOwnershipToken' test.out

#- 374 SyncTwitchDropsEntitlement
samples/cli/sample-apps Platform syncTwitchDropsEntitlement \
    --namespace $AB_NAMESPACE \
    --body '{"gameId": "o4hthAy9pOHEYLEI", "language": "oLa_vYIJ", "region": "jSPKOn5gRE1NkXIX"}' \
    > test.out 2>&1
eval_tap $? 374 'SyncTwitchDropsEntitlement' test.out

#- 375 PublicGetMyWallet
samples/cli/sample-apps Platform publicGetMyWallet \
    --currencyCode '8eOl6xChD0NCnSwN' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 375 'PublicGetMyWallet' test.out

#- 376 SyncEpicGameDLC
samples/cli/sample-apps Platform syncEpicGameDLC \
    --namespace $AB_NAMESPACE \
    --userId 'lnFzWKJlDLB3QsBk' \
    --body '{"epicGamesJwtToken": "aFxxUvfJrdnFjB8m"}' \
    > test.out 2>&1
eval_tap $? 376 'SyncEpicGameDLC' test.out

#- 377 SyncOculusDLC
samples/cli/sample-apps Platform syncOculusDLC \
    --namespace $AB_NAMESPACE \
    --userId 'fTVxuT9RLh5SMCxl' \
    > test.out 2>&1
eval_tap $? 377 'SyncOculusDLC' test.out

#- 378 PublicSyncPsnDlcInventory
samples/cli/sample-apps Platform publicSyncPsnDlcInventory \
    --namespace $AB_NAMESPACE \
    --userId 'emL4fz4zEfQXKGNN' \
    --body '{"serviceLabel": 75}' \
    > test.out 2>&1
eval_tap $? 378 'PublicSyncPsnDlcInventory' test.out

#- 379 PublicSyncPsnDlcInventoryWithMultipleServiceLabels
samples/cli/sample-apps Platform publicSyncPsnDlcInventoryWithMultipleServiceLabels \
    --namespace $AB_NAMESPACE \
    --userId '5J2GG8RdEHf5WeAW' \
    --body '{"serviceLabels": [97, 37, 31]}' \
    > test.out 2>&1
eval_tap $? 379 'PublicSyncPsnDlcInventoryWithMultipleServiceLabels' test.out

#- 380 SyncSteamDLC
samples/cli/sample-apps Platform syncSteamDLC \
    --namespace $AB_NAMESPACE \
    --userId 'pRNY9gUD8Ly6gj6v' \
    --body '{"appId": "jMbrNeE879VqOwCn", "steamId": "oG1QfixnBuH8J7Pm"}' \
    > test.out 2>&1
eval_tap $? 380 'SyncSteamDLC' test.out

#- 381 SyncXboxDLC
samples/cli/sample-apps Platform syncXboxDLC \
    --namespace $AB_NAMESPACE \
    --userId 'oFqztgMESeqVuBvN' \
    --body '{"xstsToken": "yfqtA45NNYSKYpYQ"}' \
    > test.out 2>&1
eval_tap $? 381 'SyncXboxDLC' test.out

#- 382 PublicQueryUserEntitlements
samples/cli/sample-apps Platform publicQueryUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'NJvqOp5GUKIyseQZ' \
    --appType 'SOFTWARE' \
    --entitlementClazz 'APP' \
    --entitlementName 'L5tyq1ptVN3NfVup' \
    --features '["8qFraJZwnxTxWKl1", "LzydtObVmY7i3XP4", "p2u0KtjiSnvzBwbJ"]' \
    --itemId '["5eXxj2ywSsp5I0zm", "SNmuwkH0Lz86vuFp", "2JG1dCNfI5zarRt5"]' \
    --limit '3' \
    --offset '88' \
    > test.out 2>&1
eval_tap $? 382 'PublicQueryUserEntitlements' test.out

#- 383 PublicGetUserAppEntitlementByAppId
samples/cli/sample-apps Platform publicGetUserAppEntitlementByAppId \
    --namespace $AB_NAMESPACE \
    --userId '5o48WCCmd3QBDoxF' \
    --appId 'ZuBc5teJxnlS4JBW' \
    > test.out 2>&1
eval_tap $? 383 'PublicGetUserAppEntitlementByAppId' test.out

#- 384 PublicQueryUserEntitlementsByAppType
samples/cli/sample-apps Platform publicQueryUserEntitlementsByAppType \
    --namespace $AB_NAMESPACE \
    --userId 'gSeUvVjQFqpipZaM' \
    --limit '38' \
    --offset '40' \
    --appType 'DLC' \
    > test.out 2>&1
eval_tap $? 384 'PublicQueryUserEntitlementsByAppType' test.out

#- 385 PublicGetUserEntitlementByItemId
samples/cli/sample-apps Platform publicGetUserEntitlementByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'HzikoB5dTpOwLG8g' \
    --entitlementClazz 'OPTIONBOX' \
    --itemId 'uGVmsGYkb5DrZkR3' \
    > test.out 2>&1
eval_tap $? 385 'PublicGetUserEntitlementByItemId' test.out

#- 386 PublicGetUserEntitlementBySku
samples/cli/sample-apps Platform publicGetUserEntitlementBySku \
    --namespace $AB_NAMESPACE \
    --userId 'Q1XNtkrhKZ5qcSe0' \
    --entitlementClazz 'ENTITLEMENT' \
    --sku '8wAXCsKQNkPBPnEj' \
    > test.out 2>&1
eval_tap $? 386 'PublicGetUserEntitlementBySku' test.out

#- 387 PublicExistsAnyUserActiveEntitlement
samples/cli/sample-apps Platform publicExistsAnyUserActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'GsYYBkVwDkYscRqQ' \
    --appIds '["RWk1qHcDPkG6809u", "S38TaakTUrAojySo", "NdY7b9es5Wula3bS"]' \
    --itemIds '["SO2mHrPDgZxwQb63", "gJPaSvGZ9XIOjFt6", "aMvPs8GBcRse1N6x"]' \
    --skus '["21cMAxq7ltHTERJD", "W7BNN7GtPqRwRZWU", "AHADT53WVxPFw0jK"]' \
    > test.out 2>&1
eval_tap $? 387 'PublicExistsAnyUserActiveEntitlement' test.out

#- 388 PublicGetUserAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform publicGetUserAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'U3Z5xQUmMjSPkBHm' \
    --appId 'nd61bbYBS7eEUzaL' \
    > test.out 2>&1
eval_tap $? 388 'PublicGetUserAppEntitlementOwnershipByAppId' test.out

#- 389 PublicGetUserEntitlementOwnershipByItemId
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'Y3kV0lSzBe1VdYnm' \
    --entitlementClazz 'CODE' \
    --itemId 'ZEYiwgIT0885TZcI' \
    > test.out 2>&1
eval_tap $? 389 'PublicGetUserEntitlementOwnershipByItemId' test.out

#- 390 PublicGetUserEntitlementOwnershipByItemIds
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'kXnXfZJyLvqiJwos' \
    --ids '["2KDsEwH46coYTqFC", "tbFDQFbnJc4amgDE", "ws54J0RD87ymfJmD"]' \
    > test.out 2>&1
eval_tap $? 390 'PublicGetUserEntitlementOwnershipByItemIds' test.out

#- 391 PublicGetUserEntitlementOwnershipBySku
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --userId 'UXcPiWG0xtl5Anc6' \
    --entitlementClazz 'LOOTBOX' \
    --sku 'hXyaEarqG4BhsHu1' \
    > test.out 2>&1
eval_tap $? 391 'PublicGetUserEntitlementOwnershipBySku' test.out

#- 392 PublicGetUserEntitlement
samples/cli/sample-apps Platform publicGetUserEntitlement \
    --entitlementId 'N0xAm4DaLAbHrAui' \
    --namespace $AB_NAMESPACE \
    --userId 'YmvZiYcAVgz9Jnit' \
    > test.out 2>&1
eval_tap $? 392 'PublicGetUserEntitlement' test.out

#- 393 PublicConsumeUserEntitlement
samples/cli/sample-apps Platform publicConsumeUserEntitlement \
    --entitlementId 'Llxe7pqXNB6eF7R7' \
    --namespace $AB_NAMESPACE \
    --userId 'VtOZAheBJnfOT94d' \
    --body '{"options": ["dPJL6RmRINyapQYs", "HUvr8QYagOiXq5rx", "tPrMMfuYr43aQgMs"], "requestId": "Hfx39Ym1vCtZTxh5", "useCount": 60}' \
    > test.out 2>&1
eval_tap $? 393 'PublicConsumeUserEntitlement' test.out

#- 394 PublicSellUserEntitlement
samples/cli/sample-apps Platform publicSellUserEntitlement \
    --entitlementId 'HYycZ7SanPRjhuXo' \
    --namespace $AB_NAMESPACE \
    --userId 'voxjlJT4ngy3qY3T' \
    --body '{"requestId": "DE4MCVlh6ZQr3L5d", "useCount": 62}' \
    > test.out 2>&1
eval_tap $? 394 'PublicSellUserEntitlement' test.out

#- 395 PublicRedeemCode
samples/cli/sample-apps Platform publicRedeemCode \
    --namespace $AB_NAMESPACE \
    --userId 'eVST2L2UG5vY1YHS' \
    --body '{"code": "UBv95hRDsLYeeZcr", "language": "IRT", "region": "Ha5HLBG5Bj85mnr8"}' \
    > test.out 2>&1
eval_tap $? 395 'PublicRedeemCode' test.out

#- 396 PublicFulfillAppleIAPItem
samples/cli/sample-apps Platform publicFulfillAppleIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'uynOnM3KDoSxW6Zz' \
    --body '{"excludeOldTransactions": false, "language": "tkrG-HWzw_189", "productId": "zBrZ9Yrpamb83YRe", "receiptData": "t9JgV85xqlO7g2HF", "region": "vLj958ctqC5QScch", "transactionId": "aRTxzMDSInjhlUEt"}' \
    > test.out 2>&1
eval_tap $? 396 'PublicFulfillAppleIAPItem' test.out

#- 397 SyncEpicGamesInventory
samples/cli/sample-apps Platform syncEpicGamesInventory \
    --namespace $AB_NAMESPACE \
    --userId 'FnLaf1mMeeWLQNZ7' \
    --body '{"epicGamesJwtToken": "hHsQirBuPLkaesUr"}' \
    > test.out 2>&1
eval_tap $? 397 'SyncEpicGamesInventory' test.out

#- 398 PublicFulfillGoogleIAPItem
samples/cli/sample-apps Platform publicFulfillGoogleIAPItem \
    --namespace $AB_NAMESPACE \
    --userId '0cbXqgrQtEZmRe2Z' \
    --body '{"autoAck": true, "language": "LFMI_Kl", "orderId": "bSjcNNiUAphM6xju", "packageName": "RnmIc9bycVoocMFR", "productId": "voXmz2F3EKasWbv6", "purchaseTime": 68, "purchaseToken": "AyBZsjJ2QDwb2yvq", "region": "JjIwy3knXDHl2SRG"}' \
    > test.out 2>&1
eval_tap $? 398 'PublicFulfillGoogleIAPItem' test.out

#- 399 SyncOculusConsumableEntitlements
samples/cli/sample-apps Platform syncOculusConsumableEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'HmADFYULRlPTxIb7' \
    > test.out 2>&1
eval_tap $? 399 'SyncOculusConsumableEntitlements' test.out

#- 400 PublicReconcilePlayStationStore
samples/cli/sample-apps Platform publicReconcilePlayStationStore \
    --namespace $AB_NAMESPACE \
    --userId '7jTNT7LARG8iK3cm' \
    --body '{"currencyCode": "smrjxBwoCAS04UaX", "price": 0.9216659856670822, "productId": "jzCS9Ho8hTV8TBdt", "serviceLabel": 56}' \
    > test.out 2>&1
eval_tap $? 400 'PublicReconcilePlayStationStore' test.out

#- 401 PublicReconcilePlayStationStoreWithMultipleServiceLabels
samples/cli/sample-apps Platform publicReconcilePlayStationStoreWithMultipleServiceLabels \
    --namespace $AB_NAMESPACE \
    --userId 'czKPE0D4xW6fZ8GG' \
    --body '{"currencyCode": "zDS3X77Lpk0R5K6K", "price": 0.7256357620660141, "productId": "zOygykt0G3SANWGT", "serviceLabels": [97, 42, 84]}' \
    > test.out 2>&1
eval_tap $? 401 'PublicReconcilePlayStationStoreWithMultipleServiceLabels' test.out

#- 402 SyncSteamInventory
samples/cli/sample-apps Platform syncSteamInventory \
    --namespace $AB_NAMESPACE \
    --userId 'Sjokk9SdJJJBWmuL' \
    --body '{"appId": "JopwsWzHNAT4kK8I", "currencyCode": "QI9FG2rtPWPLUVHy", "language": "Gc-sITA-132", "price": 0.21499696053310302, "productId": "bIPoFyxGDiPXZPVb", "region": "3m296GTpbHDfjhdK", "steamId": "4fYToFrlRWTI4d3N"}' \
    > test.out 2>&1
eval_tap $? 402 'SyncSteamInventory' test.out

#- 403 SyncTwitchDropsEntitlement1
samples/cli/sample-apps Platform syncTwitchDropsEntitlement1 \
    --namespace $AB_NAMESPACE \
    --userId '2jSTrx3uoSLfaj8H' \
    --body '{"gameId": "UvYKIXghExdlCckU", "language": "TC_sl", "region": "82ahsvl3p5DJXm7N"}' \
    > test.out 2>&1
eval_tap $? 403 'SyncTwitchDropsEntitlement1' test.out

#- 404 SyncXboxInventory
samples/cli/sample-apps Platform syncXboxInventory \
    --namespace $AB_NAMESPACE \
    --userId 'G11cMt3Fhe8udred' \
    --body '{"currencyCode": "qZj0bjRii6cIV6V2", "price": 0.5180051885704277, "productId": "VBSZLUnND0peCgDt", "xstsToken": "LPk4jgTknSb11kKj"}' \
    > test.out 2>&1
eval_tap $? 404 'SyncXboxInventory' test.out

#- 405 PublicQueryUserOrders
samples/cli/sample-apps Platform publicQueryUserOrders \
    --namespace $AB_NAMESPACE \
    --userId 'gdXojmjT6SF1caTX' \
    --itemId '81xOfkkiC26J5pIY' \
    --limit '53' \
    --offset '24' \
    --status 'DELETED' \
    > test.out 2>&1
eval_tap $? 405 'PublicQueryUserOrders' test.out

#- 406 PublicCreateUserOrder
samples/cli/sample-apps Platform publicCreateUserOrder \
    --namespace $AB_NAMESPACE \
    --userId 'Q9AIURehQub0H234' \
    --body '{"currencyCode": "R2obxQ4DlKVuu0hF", "discountedPrice": 31, "ext": {"WWlFNgiJMEgtgpgZ": {}, "e8FlrDDOaXMEHrcd": {}, "baWzT2ndnm2Of4rH": {}}, "itemId": "zh7L0r5W1lkML4oU", "language": "gsVK_UVlP-qA", "price": 36, "quantity": 3, "region": "P6zSNiaALfCARXqM", "returnUrl": "GYfurZuX6AJcnaem", "sectionId": "1icFdBYKVWqv738z"}' \
    > test.out 2>&1
eval_tap $? 406 'PublicCreateUserOrder' test.out

#- 407 PublicGetUserOrder
samples/cli/sample-apps Platform publicGetUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'IQ4zLVaocZeJeGOS' \
    --userId 'zHKOVcJ5cyWZdc0K' \
    > test.out 2>&1
eval_tap $? 407 'PublicGetUserOrder' test.out

#- 408 PublicCancelUserOrder
samples/cli/sample-apps Platform publicCancelUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'bSVwXBpS1SRw24pG' \
    --userId '4ELaaDWkyCq8ZuRg' \
    > test.out 2>&1
eval_tap $? 408 'PublicCancelUserOrder' test.out

#- 409 PublicGetUserOrderHistories
samples/cli/sample-apps Platform publicGetUserOrderHistories \
    --namespace $AB_NAMESPACE \
    --orderNo '6sIhGc5WBnxbVgp4' \
    --userId '4YfA0bdvX7C3Bc6B' \
    > test.out 2>&1
eval_tap $? 409 'PublicGetUserOrderHistories' test.out

#- 410 PublicDownloadUserOrderReceipt
samples/cli/sample-apps Platform publicDownloadUserOrderReceipt \
    --namespace $AB_NAMESPACE \
    --orderNo 'YDsyDXxXgQZE4mZl' \
    --userId 'yj7Wm8Bp7bUY7fZE' \
    > test.out 2>&1
eval_tap $? 410 'PublicDownloadUserOrderReceipt' test.out

#- 411 PublicGetPaymentAccounts
samples/cli/sample-apps Platform publicGetPaymentAccounts \
    --namespace $AB_NAMESPACE \
    --userId 'czRKtAf0IBkojjwh' \
    > test.out 2>&1
eval_tap $? 411 'PublicGetPaymentAccounts' test.out

#- 412 PublicDeletePaymentAccount
samples/cli/sample-apps Platform publicDeletePaymentAccount \
    --id 'yDF9qtxVyWoJ4fWH' \
    --namespace $AB_NAMESPACE \
    --type 'card' \
    --userId 'E0yAhqY359f0qrYu' \
    > test.out 2>&1
eval_tap $? 412 'PublicDeletePaymentAccount' test.out

#- 413 PublicListActiveSections
samples/cli/sample-apps Platform publicListActiveSections \
    --namespace $AB_NAMESPACE \
    --userId 'ZHKnEEinGWLfRzL1' \
    --language 'LY7PQo9FbZiocPvv' \
    --region 'RX9mhSr9i4spg7Jy' \
    --storeId 'nsPWwFO0of3JrTcN' \
    --viewId 'JtfXkUgsxiAU0Zrq' \
    > test.out 2>&1
eval_tap $? 413 'PublicListActiveSections' test.out

#- 414 PublicQueryUserSubscriptions
samples/cli/sample-apps Platform publicQueryUserSubscriptions \
    --namespace $AB_NAMESPACE \
    --userId 'io5dnATvZVJb438Y' \
    --chargeStatus 'SETUP' \
    --itemId 'F2MY8jgtFlPtyVjI' \
    --limit '54' \
    --offset '77' \
    --sku 'LuBjELNvXtUKLXG1' \
    --status 'CANCELLED' \
    --subscribedBy 'USER' \
    > test.out 2>&1
eval_tap $? 414 'PublicQueryUserSubscriptions' test.out

#- 415 PublicSubscribeSubscription
samples/cli/sample-apps Platform publicSubscribeSubscription \
    --namespace $AB_NAMESPACE \
    --userId 'F2KWBzxIADZgnzZl' \
    --body '{"currencyCode": "TLe2pSVqPGPRZDz8", "itemId": "96Qi0lPzNXsSQK46", "language": "Yd_oCwt", "region": "676nbY2a2gv7rQSG", "returnUrl": "larHijLbrEkYY1AN", "source": "XJogeNR0xqt2WN0N"}' \
    > test.out 2>&1
eval_tap $? 415 'PublicSubscribeSubscription' test.out

#- 416 PublicCheckUserSubscriptionSubscribableByItemId
samples/cli/sample-apps Platform publicCheckUserSubscriptionSubscribableByItemId \
    --namespace $AB_NAMESPACE \
    --userId '4rUazRF4l7D2ZcsX' \
    --itemId 'uJrDu2iAz9rO220r' \
    > test.out 2>&1
eval_tap $? 416 'PublicCheckUserSubscriptionSubscribableByItemId' test.out

#- 417 PublicGetUserSubscription
samples/cli/sample-apps Platform publicGetUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'XWjifEivUYZ1m9Ev' \
    --userId 'QnzPfi9iAVeyzoTQ' \
    > test.out 2>&1
eval_tap $? 417 'PublicGetUserSubscription' test.out

#- 418 PublicChangeSubscriptionBillingAccount
samples/cli/sample-apps Platform publicChangeSubscriptionBillingAccount \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'GWQYLkaB2wOcJBE4' \
    --userId 'ZLDnCoTIQ0GH5fkS' \
    > test.out 2>&1
eval_tap $? 418 'PublicChangeSubscriptionBillingAccount' test.out

#- 419 PublicCancelSubscription
samples/cli/sample-apps Platform publicCancelSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'S0Dw2motreAx5tZ1' \
    --userId 'oqoK07Hl7w9aIOyh' \
    --body '{"immediate": false, "reason": "loKIrsL7L7Pl8xZI"}' \
    > test.out 2>&1
eval_tap $? 419 'PublicCancelSubscription' test.out

#- 420 PublicGetUserSubscriptionBillingHistories
samples/cli/sample-apps Platform publicGetUserSubscriptionBillingHistories \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'GyAGhOwy8ZhQ9Jof' \
    --userId 'eeIsEYGCCu9sSBet' \
    --excludeFree 'false' \
    --limit '48' \
    --offset '85' \
    > test.out 2>&1
eval_tap $? 420 'PublicGetUserSubscriptionBillingHistories' test.out

#- 421 PublicListViews
samples/cli/sample-apps Platform publicListViews \
    --namespace $AB_NAMESPACE \
    --userId 'I8e38cDR1VtXyFEr' \
    --language 'qqfQ9hvoRrsO8ZMR' \
    --storeId 'x31pXwm6qTbw45Nm' \
    > test.out 2>&1
eval_tap $? 421 'PublicListViews' test.out

#- 422 PublicGetWallet
samples/cli/sample-apps Platform publicGetWallet \
    --currencyCode 'LinFJlpKHAgqL2gQ' \
    --namespace $AB_NAMESPACE \
    --userId 'xYurgnVv6sLilxeC' \
    > test.out 2>&1
eval_tap $? 422 'PublicGetWallet' test.out

#- 423 PublicListUserWalletTransactions
samples/cli/sample-apps Platform publicListUserWalletTransactions \
    --currencyCode '9bWASCZekv3EfHYH' \
    --namespace $AB_NAMESPACE \
    --userId 'vJrkaQ5EPY4RXZHt' \
    --limit '71' \
    --offset '88' \
    > test.out 2>&1
eval_tap $? 423 'PublicListUserWalletTransactions' test.out

#- 424 QueryItems1
samples/cli/sample-apps Platform queryItems1 \
    --namespace $AB_NAMESPACE \
    --appType 'DEMO' \
    --availableDate 'Y4Vyd2qglo53YzBK' \
    --baseAppId 'U4iRHhjulAx8mlli' \
    --categoryPath 'YmMKjKKVecypyRmo' \
    --features 'cox4hi535BiIACTa' \
    --includeSubCategoryItem 'false' \
    --itemName 'OTFvjNesOUJmzS2O' \
    --itemStatus 'INACTIVE' \
    --itemType 'SUBSCRIPTION' \
    --limit '90' \
    --offset '77' \
    --region 'DQW8AAtxnZNQ6HXG' \
    --sectionExclusive 'true' \
    --sortBy '["name:asc", "createdAt:desc", "updatedAt:asc"]' \
    --storeId '13LIG5cqZnAQHOwA' \
    --tags 'srvUVzZtA7XzNjMA' \
    --targetNamespace 'nikbOS8XIkBfx7Rq' \
    > test.out 2>&1
eval_tap $? 424 'QueryItems1' test.out

#- 425 ImportStore1
samples/cli/sample-apps Platform importStore1 \
    --namespace $AB_NAMESPACE \
    --storeId 'RniOWz5pJo958F9c' \
    --strictMode 'true' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 425 'ImportStore1' test.out

#- 426 ExportStore1
samples/cli/sample-apps Platform exportStore1 \
    --namespace $AB_NAMESPACE \
    --storeId '1NJphEjaQrChB6nC' \
    --body '{"itemIds": ["jBdKnUUSArf64VVo", "gNDuOwZjP8B6BbZp", "xJLvogxWpjO4b7Zr"]}' \
    > test.out 2>&1
eval_tap $? 426 'ExportStore1' test.out

#- 427 FulfillRewardsV2
samples/cli/sample-apps Platform fulfillRewardsV2 \
    --namespace $AB_NAMESPACE \
    --userId 'NC7AkuPDh5cWfOdc' \
    --body '{"metadata": {"i2y9QtRXDUj88Xie": {}, "Z27y8jmrAjWK3sd3": {}, "KvaOrJCx1CMKGiPC": {}}, "origin": "GooglePlay", "rewards": [{"currency": {"currencyCode": "NoLXd40gDTfquXGG", "namespace": "S5qhZp518jrBW6wD"}, "item": {"itemId": "8xnZkX9AxSF2F8vm", "itemSku": "rhXD9JSnenwfsH7Y", "itemType": "60XGJHJKDFf3jDZ7"}, "quantity": 31, "type": "CURRENCY"}, {"currency": {"currencyCode": "tPLkzsBjtSG85vDM", "namespace": "VN1JDgvxUBAUvwHb"}, "item": {"itemId": "htpvePO732ZyTFaR", "itemSku": "Kf3qZm9trManwcOt", "itemType": "SGBbG6R2bPDs5CRI"}, "quantity": 62, "type": "ITEM"}, {"currency": {"currencyCode": "AfjKDDbYXCjT5roy", "namespace": "W4Jc3L3zEhNg2sYX"}, "item": {"itemId": "Vu0N3VL7ve0ycqGF", "itemSku": "7ApY4ONOOw6HHRsr", "itemType": "4IpK7Wl7yMx7oDe9"}, "quantity": 61, "type": "CURRENCY"}], "source": "GIFT", "transactionId": "mvBPKJEz76zvthcO"}' \
    > test.out 2>&1
eval_tap $? 427 'FulfillRewardsV2' test.out


rm -f "tmp.dat"

exit $EXIT_CODE