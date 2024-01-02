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
echo "1..436"

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
    --id 'jPb45FX5O9lJwqMj' \
    > test.out 2>&1
eval_tap $? 3 'GetFulfillmentScript' test.out

#- 4 CreateFulfillmentScript
samples/cli/sample-apps Platform createFulfillmentScript \
    --id 'BLkGMNNd3AO4bB8A' \
    --body '{"grantDays": "UQmO61cXCiBGABpX"}' \
    > test.out 2>&1
eval_tap $? 4 'CreateFulfillmentScript' test.out

#- 5 DeleteFulfillmentScript
samples/cli/sample-apps Platform deleteFulfillmentScript \
    --id '6TXKpZYuFoL6fRIF' \
    > test.out 2>&1
eval_tap $? 5 'DeleteFulfillmentScript' test.out

#- 6 UpdateFulfillmentScript
samples/cli/sample-apps Platform updateFulfillmentScript \
    --id 'tyGlEsGjOi7bvoI1' \
    --body '{"grantDays": "tezLOjDnc0xsnIoO"}' \
    > test.out 2>&1
eval_tap $? 6 'UpdateFulfillmentScript' test.out

#- 7 ListItemTypeConfigs
samples/cli/sample-apps Platform listItemTypeConfigs \
    > test.out 2>&1
eval_tap $? 7 'ListItemTypeConfigs' test.out

#- 8 CreateItemTypeConfig
samples/cli/sample-apps Platform createItemTypeConfig \
    --body '{"clazz": "b5BerhU5PGhUJ95t", "dryRun": false, "fulfillmentUrl": "9z5P8BikKrgKN1Ca", "itemType": "SUBSCRIPTION", "purchaseConditionUrl": "lDZoMX0JBSrncLRf"}' \
    > test.out 2>&1
eval_tap $? 8 'CreateItemTypeConfig' test.out

#- 9 SearchItemTypeConfig
samples/cli/sample-apps Platform searchItemTypeConfig \
    --clazz '2IY5SfJSSyE7300c' \
    --itemType 'APP' \
    > test.out 2>&1
eval_tap $? 9 'SearchItemTypeConfig' test.out

#- 10 GetItemTypeConfig
samples/cli/sample-apps Platform getItemTypeConfig \
    --id 'qEy4cGLTIA7oLToo' \
    > test.out 2>&1
eval_tap $? 10 'GetItemTypeConfig' test.out

#- 11 UpdateItemTypeConfig
samples/cli/sample-apps Platform updateItemTypeConfig \
    --id 'QcISQs5BkbAdfXyP' \
    --body '{"clazz": "7czjk0GPAU6EgF9q", "dryRun": false, "fulfillmentUrl": "NdfoCXb0hZU5LTQq", "purchaseConditionUrl": "ZJBaWZw0mqp2vZeG"}' \
    > test.out 2>&1
eval_tap $? 11 'UpdateItemTypeConfig' test.out

#- 12 DeleteItemTypeConfig
samples/cli/sample-apps Platform deleteItemTypeConfig \
    --id '9kkB0xa6y2KT6RKg' \
    > test.out 2>&1
eval_tap $? 12 'DeleteItemTypeConfig' test.out

#- 13 QueryCampaigns
samples/cli/sample-apps Platform queryCampaigns \
    --namespace $AB_NAMESPACE \
    --limit '38' \
    --name 'mCdlqlApr5qsTncz' \
    --offset '60' \
    --tag 'HO4AcIaRmuzkuOIj' \
    > test.out 2>&1
eval_tap $? 13 'QueryCampaigns' test.out

#- 14 CreateCampaign
samples/cli/sample-apps Platform createCampaign \
    --namespace $AB_NAMESPACE \
    --body '{"description": "MGwMD6LFvW9J0Caq", "items": [{"extraSubscriptionDays": 27, "itemId": "pDJKjH4tl27zFRDh", "itemName": "LjGndaO5Hre6HDVF", "quantity": 88}, {"extraSubscriptionDays": 77, "itemId": "iPAHC09EtgcxOevQ", "itemName": "lFeH6ZK0i4hwQhjs", "quantity": 58}, {"extraSubscriptionDays": 70, "itemId": "wpgkXQ38uXI8r5lb", "itemName": "lNvSrmyeQBPLZyOi", "quantity": 31}], "maxRedeemCountPerCampaignPerUser": 32, "maxRedeemCountPerCode": 84, "maxRedeemCountPerCodePerUser": 53, "maxSaleCount": 73, "name": "jNyuGPO20TT8nNul", "redeemEnd": "1971-01-05T00:00:00Z", "redeemStart": "1989-04-20T00:00:00Z", "redeemType": "ITEM", "status": "ACTIVE", "tags": ["ljqN34CR3ai9ye5N", "mXkFGmHDwLS9wHNu", "CRkJM0GXl0JyA4Nt"], "type": "REDEMPTION"}' \
    > test.out 2>&1
eval_tap $? 14 'CreateCampaign' test.out

#- 15 GetCampaign
samples/cli/sample-apps Platform getCampaign \
    --campaignId 'ftrIzjy5k8FnRHQe' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 15 'GetCampaign' test.out

#- 16 UpdateCampaign
samples/cli/sample-apps Platform updateCampaign \
    --campaignId 'ZReLuWbCI0zh2l4e' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "CVZ4W3I1bcYAqigf", "items": [{"extraSubscriptionDays": 62, "itemId": "n3Y2A8N84eb7Oabw", "itemName": "smfx58Fpi8RQzWVi", "quantity": 5}, {"extraSubscriptionDays": 88, "itemId": "dRiR3BPpOESusthz", "itemName": "safKWw9VNDpVyHIW", "quantity": 12}, {"extraSubscriptionDays": 95, "itemId": "DNp6yton9vQ3TE6r", "itemName": "khqr79Cwrfa31BjG", "quantity": 69}], "maxRedeemCountPerCampaignPerUser": 48, "maxRedeemCountPerCode": 56, "maxRedeemCountPerCodePerUser": 73, "maxSaleCount": 72, "name": "dwmEcqxKLCqiubdq", "redeemEnd": "1991-11-09T00:00:00Z", "redeemStart": "1993-07-08T00:00:00Z", "redeemType": "ITEM", "status": "ACTIVE", "tags": ["Q9yHdWr4pJ44kcXS", "8kKcKDC6jUKo5biC", "DAzuSG956wDXFlJ0"]}' \
    > test.out 2>&1
eval_tap $? 16 'UpdateCampaign' test.out

#- 17 GetCampaignDynamic
samples/cli/sample-apps Platform getCampaignDynamic \
    --campaignId 'EQrgcnkpYUe7RmJF' \
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
    --body '{"appConfig": {"appName": "02vfste45CvUr62t"}, "customConfig": {"connectionType": "TLS", "grpcServerAddress": "FftnBt74e52FUKh9"}, "extendType": "APP"}' \
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
    --body '{"appConfig": {"appName": "Azuagq4c49fUu1KT"}, "customConfig": {"connectionType": "TLS", "grpcServerAddress": "yV3bFgjxopYDkJin"}, "extendType": "APP"}' \
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
    --storeId 'x1dsciNbiOpY1VpP' \
    > test.out 2>&1
eval_tap $? 27 'GetRootCategories' test.out

#- 28 CreateCategory
samples/cli/sample-apps Platform createCategory \
    --namespace $AB_NAMESPACE \
    --storeId 'TwH9LUFzHCjt6vh1' \
    --body '{"categoryPath": "CGoGKMgi0CHwYiQX", "localizationDisplayNames": {"ab16Ydk8e7XiMZ9l": "NZ7gPuFgsYN6S40F", "GF4e3RTAM3H5BQa5": "ov7dfZoiZTNXa4aU", "14etiND5LwRmb0yg": "cpT86FI2u3vkLEZ5"}}' \
    > test.out 2>&1
eval_tap $? 28 'CreateCategory' test.out

#- 29 ListCategoriesBasic
samples/cli/sample-apps Platform listCategoriesBasic \
    --namespace $AB_NAMESPACE \
    --storeId 'VSAFuZrZO11OxdpR' \
    > test.out 2>&1
eval_tap $? 29 'ListCategoriesBasic' test.out

#- 30 GetCategory
samples/cli/sample-apps Platform getCategory \
    --categoryPath 'Awslz2QbsqlxO26I' \
    --namespace $AB_NAMESPACE \
    --storeId 'xX9nmc9azkK1cCm4' \
    > test.out 2>&1
eval_tap $? 30 'GetCategory' test.out

#- 31 UpdateCategory
samples/cli/sample-apps Platform updateCategory \
    --categoryPath 'nxvXDzkzRYitdo37' \
    --namespace $AB_NAMESPACE \
    --storeId '5Og0cTqPcMtL5Af0' \
    --body '{"localizationDisplayNames": {"79Xffz08aHrpuuuH": "U3kBXfMTWUz63klu", "mCsqkCh5KHawnk2A": "u329CmJKSFyhd5fb", "Ti39CzlK8FjgG2s5": "Fh8uYJHvig4KdUVH"}}' \
    > test.out 2>&1
eval_tap $? 31 'UpdateCategory' test.out

#- 32 DeleteCategory
samples/cli/sample-apps Platform deleteCategory \
    --categoryPath 'TRYRM0WS6nXy9Fvl' \
    --namespace $AB_NAMESPACE \
    --storeId 'C66aDHogIlmlG3f7' \
    > test.out 2>&1
eval_tap $? 32 'DeleteCategory' test.out

#- 33 GetChildCategories
samples/cli/sample-apps Platform getChildCategories \
    --categoryPath 'Cegj9kJlRT8MLRbD' \
    --namespace $AB_NAMESPACE \
    --storeId 'mofIemq69vUWusIt' \
    > test.out 2>&1
eval_tap $? 33 'GetChildCategories' test.out

#- 34 GetDescendantCategories
samples/cli/sample-apps Platform getDescendantCategories \
    --categoryPath 'doZ9PeYOX5hT0dHQ' \
    --namespace $AB_NAMESPACE \
    --storeId 'JGFnNdz7UEWSb5ib' \
    > test.out 2>&1
eval_tap $? 34 'GetDescendantCategories' test.out

#- 35 QueryCodes
samples/cli/sample-apps Platform queryCodes \
    --campaignId 'H1xYG7tWvM8kObEL' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --batchNo '46' \
    --code 'w7CMu8m7fQMLF0ll' \
    --limit '95' \
    --offset '0' \
    > test.out 2>&1
eval_tap $? 35 'QueryCodes' test.out

#- 36 CreateCodes
samples/cli/sample-apps Platform createCodes \
    --campaignId 'kClepL1q5MIVBlBr' \
    --namespace $AB_NAMESPACE \
    --body '{"quantity": 65}' \
    > test.out 2>&1
eval_tap $? 36 'CreateCodes' test.out

#- 37 Download
samples/cli/sample-apps Platform download \
    --campaignId 'n3dD7qjUHZLmZguU' \
    --namespace $AB_NAMESPACE \
    --batchNo '72' \
    > test.out 2>&1
eval_tap $? 37 'Download' test.out

#- 38 BulkDisableCodes
samples/cli/sample-apps Platform bulkDisableCodes \
    --campaignId '3dUpgCsNjtfE5oaI' \
    --namespace $AB_NAMESPACE \
    --batchNo '55' \
    > test.out 2>&1
eval_tap $? 38 'BulkDisableCodes' test.out

#- 39 BulkEnableCodes
samples/cli/sample-apps Platform bulkEnableCodes \
    --campaignId 'kMgHpmJIHXpyeT8o' \
    --namespace $AB_NAMESPACE \
    --batchNo '12' \
    > test.out 2>&1
eval_tap $? 39 'BulkEnableCodes' test.out

#- 40 QueryRedeemHistory
samples/cli/sample-apps Platform queryRedeemHistory \
    --campaignId 'sWE7j5f9IJkS78sZ' \
    --namespace $AB_NAMESPACE \
    --code 'jcR0wwIgUxBEM3XG' \
    --limit '78' \
    --offset '93' \
    --userId 'Ewoe91Ka8ExZYV2B' \
    > test.out 2>&1
eval_tap $? 40 'QueryRedeemHistory' test.out

#- 41 GetCode
samples/cli/sample-apps Platform getCode \
    --code 'rfSRCQnduP87O9Fz' \
    --namespace $AB_NAMESPACE \
    --redeemable 'true' \
    > test.out 2>&1
eval_tap $? 41 'GetCode' test.out

#- 42 DisableCode
samples/cli/sample-apps Platform disableCode \
    --code 'sjUkbtdG4zRcsiUI' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 42 'DisableCode' test.out

#- 43 EnableCode
samples/cli/sample-apps Platform enableCode \
    --code 'pFZtwe3wOMyAP7hJ' \
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
    --body '{"currencyCode": "rNAiNMVmxoawWXLI", "currencySymbol": "3UeE40qfJO1FeCDM", "currencyType": "REAL", "decimals": 8, "localizationDescriptions": {"mh05eQQN8b7WjIpx": "zvBnZGXXVnN2nIOg", "WqUQOrBdAPLtfQvN": "2GX1u8R8uz40PDps", "G1OL5aQWjmeGM05N": "iUn3Cy1U2qKWONvv"}}' \
    > test.out 2>&1
eval_tap $? 48 'CreateCurrency' test.out

#- 49 UpdateCurrency
samples/cli/sample-apps Platform updateCurrency \
    --currencyCode 's68RIURLHfCOP13p' \
    --namespace $AB_NAMESPACE \
    --body '{"localizationDescriptions": {"OHWBjG2X9wWmFZLQ": "eUY25woMnfy47bQM", "uLQmorfWFAdKAaw0": "fFrjLYuuzEvKgMAh", "vDwThSlc4wXt3F1O": "rp6isEtBCY4W1xhM"}}' \
    > test.out 2>&1
eval_tap $? 49 'UpdateCurrency' test.out

#- 50 DeleteCurrency
samples/cli/sample-apps Platform deleteCurrency \
    --currencyCode 'T0evF4TStfGNRGc2' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 50 'DeleteCurrency' test.out

#- 51 GetCurrencyConfig
samples/cli/sample-apps Platform getCurrencyConfig \
    --currencyCode 'GSbBgOcp70D37CM7' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 51 'GetCurrencyConfig' test.out

#- 52 GetCurrencySummary
samples/cli/sample-apps Platform getCurrencySummary \
    --currencyCode 'F5NxX5j3ZfijK17v' \
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
    --body '{"data": [{"id": "BzpMN7WKNVm2X9T5", "rewards": [{"currency": {"currencyCode": "NwvPS2kQJ2SdUwPh", "namespace": "9IvtlAKxCIOotQQm"}, "item": {"itemId": "36X3VLKsj12qN8Lc", "itemSku": "181rbk7vWYr1IVSj", "itemType": "WUsomPlLUwrlmTS3"}, "quantity": 32, "type": "CURRENCY"}, {"currency": {"currencyCode": "EuArBXdhsMmMEGdT", "namespace": "fcpDq8WbEJi4QUpD"}, "item": {"itemId": "Y8fc2dGQAKarg8aG", "itemSku": "GrD4e8TQePwg1s5U", "itemType": "7NIGUYhWzhjUQ7IE"}, "quantity": 47, "type": "CURRENCY"}, {"currency": {"currencyCode": "o7sPqUaUxZQXKLjN", "namespace": "cZD0nwpHhKgYSCzQ"}, "item": {"itemId": "tqnBIVUJ9ZlZZZxO", "itemSku": "0TTDiY3t1o4ZIiIx", "itemType": "NAspCvWOsCxGYigZ"}, "quantity": 26, "type": "CURRENCY"}]}, {"id": "Tu5kOiB4wBSUPYgt", "rewards": [{"currency": {"currencyCode": "WAWGiKTdmp0jI59a", "namespace": "3c0SErsFU0E1hXWp"}, "item": {"itemId": "elWGVGBbHXHJGell", "itemSku": "v3cjPXlEuSsjV68m", "itemType": "GwOyvaGMOThKqFMt"}, "quantity": 89, "type": "CURRENCY"}, {"currency": {"currencyCode": "VYMOJOQqyrRYVW5u", "namespace": "YnVLXM62dzBcQ8OB"}, "item": {"itemId": "bxDWXEn5pweoEK4L", "itemSku": "kZZshBEZklhxpq5S", "itemType": "FQhJ4Iy9UGcnj2BG"}, "quantity": 66, "type": "CURRENCY"}, {"currency": {"currencyCode": "01SYY0kcqcGuRQ5G", "namespace": "g7SWImQk507COfaE"}, "item": {"itemId": "FGtcuprPcqyoCcvK", "itemSku": "fQIKyckm5ttxhxYp", "itemType": "i6NpHvbhhLyvVNls"}, "quantity": 37, "type": "CURRENCY"}]}, {"id": "4u2F6vwFas63I94M", "rewards": [{"currency": {"currencyCode": "gOEouccn3sC3ai6g", "namespace": "Fv3fZkcU4tsPYHAP"}, "item": {"itemId": "3H5vJlFp5uJxhffx", "itemSku": "j4WQ2W5HSPBZuu8O", "itemType": "LqX9x1i0eIThwWKh"}, "quantity": 67, "type": "CURRENCY"}, {"currency": {"currencyCode": "iesF9zYPDyCSBEJI", "namespace": "80sd7CzJXbtaxWdM"}, "item": {"itemId": "RPzCcavZMlVwRmmK", "itemSku": "yc11m8yYpgHqvcNh", "itemType": "HrOpWdzampeCUYNG"}, "quantity": 67, "type": "ITEM"}, {"currency": {"currencyCode": "MGdBwTo2MwIdJ5Zt", "namespace": "XjHLgyAKbwCWaOT6"}, "item": {"itemId": "lQAIajgZmzbsskgy", "itemSku": "PUYZnZJd5YPniFdz", "itemType": "OyqqoboR30UiTzBz"}, "quantity": 45, "type": "ITEM"}]}]}' \
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
    --body '{"data": [{"platform": "EPICGAMES", "platformDlcIdMap": {"uFOA97qR7RN6CJ84": "Qe4Zp2DoEfwZcLIA", "ZnSr6U7ubYuW5I56": "Ncy3d0vGz00L9Xp1", "0AppcZJcRwvzPgBq": "wczgPO0rhOnnDazN"}}, {"platform": "PSN", "platformDlcIdMap": {"aWZsLXRGgXR6IdDh": "tGBKIZoGr62sMJh0", "zqqSUfdwYKohtld8": "2Rwcru4PrspHPem9", "QojrTqlizwMPlTJD": "evCW9TpZ0lj1IjlZ"}}, {"platform": "OCULUS", "platformDlcIdMap": {"4ls8bWEtU5zQokGv": "kCjUjEAqZ23eQpqb", "9K6JhAGjz7FR3K5n": "nV9V1sjZFbvwaXgp", "dXd83MaePhAPePiH": "UMGKIlFmP7es48xy"}}]}' \
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
    --entitlementClazz 'ENTITLEMENT' \
    --entitlementName 'QlH1HneH0hE8LJvE' \
    --itemId '["S5fqSPlFpQCU7Wgd", "cMIVA7W0cSNAQmuN", "uWdUOoXWuLMPrvlX"]' \
    --limit '75' \
    --offset '68' \
    --origin 'Playstation' \
    --userId 'lAv928YD5JLV9ueK' \
    > test.out 2>&1
eval_tap $? 59 'QueryEntitlements' test.out

#- 60 QueryEntitlements1
samples/cli/sample-apps Platform queryEntitlements1 \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --itemIds '["zt8KlTs4gm3Oz4KV", "ZUKZr1Tzlw7Cp7WU", "inuTrqivX5tcjyGb"]' \
    --limit '75' \
    --offset '63' \
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
    --body '{"entitlementGrantList": [{"endDate": "1982-07-26T00:00:00Z", "grantedCode": "TudyrSvjN2eZgRDG", "itemId": "2BhU5Gl4aEv0trdd", "itemNamespace": "JfrhuT97z2rLa7tp", "language": "zejn-MfMK_sz", "origin": "Xbox", "quantity": 12, "region": "y56xMLPJ5rqlCG5D", "source": "PROMOTION", "startDate": "1973-06-08T00:00:00Z", "storeId": "urJAKNwUG8lktsEd"}, {"endDate": "1991-08-23T00:00:00Z", "grantedCode": "09dA1B4U2IPZLSDZ", "itemId": "911iwmtizvfiTYT7", "itemNamespace": "YMkgTYgteP3RPU4P", "language": "ttyC_826", "origin": "Epic", "quantity": 42, "region": "0JeIj4CIP3vMX93N", "source": "REWARD", "startDate": "1983-09-30T00:00:00Z", "storeId": "bHcvUGTa1QMcVGm6"}, {"endDate": "1986-12-25T00:00:00Z", "grantedCode": "WzMCqgHJufQjHH5t", "itemId": "DHXuB9YyCuLJf25y", "itemNamespace": "yGuyPJxPwOpvsBhy", "language": "YKa_304", "origin": "Oculus", "quantity": 12, "region": "t73Y8Hhc7GCwZH7h", "source": "REWARD", "startDate": "1985-03-03T00:00:00Z", "storeId": "WY4wg8c2aCkvMPNb"}], "userIds": ["tvCfpyTuiDj8SIby", "jknBtCZPGUyW1e4J", "oXk0r5LwTCZSoD55"]}' \
    > test.out 2>&1
eval_tap $? 63 'GrantEntitlements' test.out

#- 64 RevokeEntitlements
samples/cli/sample-apps Platform revokeEntitlements \
    --namespace $AB_NAMESPACE \
    --body '["iSRgzeK1UudZE2OQ", "b9S1pTVXHZmswUmh", "t7eSubCFjMhUeTP0"]' \
    > test.out 2>&1
eval_tap $? 64 'RevokeEntitlements' test.out

#- 65 GetEntitlement
samples/cli/sample-apps Platform getEntitlement \
    --entitlementId 'jwK7qe01jkpYSJ6U' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 65 'GetEntitlement' test.out

#- 66 QueryFulfillmentHistories
samples/cli/sample-apps Platform queryFulfillmentHistories \
    --namespace $AB_NAMESPACE \
    --limit '59' \
    --offset '72' \
    --status 'FAIL' \
    --userId 'CtnJKPIQsArGMJU7' \
    > test.out 2>&1
eval_tap $? 66 'QueryFulfillmentHistories' test.out

#- 67 QueryIAPClawbackHistory
samples/cli/sample-apps Platform queryIAPClawbackHistory \
    --namespace $AB_NAMESPACE \
    --endTime 'ydFUi2eFAAEszd2k' \
    --eventType 'REFUND' \
    --externalOrderId '0CGXrrXEwy1BPEiS' \
    --limit '100' \
    --offset '41' \
    --startTime 'ElxxTl2CWiTOmbky' \
    --status 'INIT' \
    --userId 'ufwDTvWtz9Vd8x4N' \
    > test.out 2>&1
eval_tap $? 67 'QueryIAPClawbackHistory' test.out

#- 68 MockPlayStationStreamEvent
samples/cli/sample-apps Platform mockPlayStationStreamEvent \
    --namespace $AB_NAMESPACE \
    --body '{"body": {"account": "qGttmFco3qHgVbCt", "additionalData": {"entitlement": [{"clientTransaction": [{"amountConsumed": 91, "clientTransactionId": "yIb0R6TW76W7TcLd"}, {"amountConsumed": 57, "clientTransactionId": "DHZU1ZgNMr6YeL6s"}, {"amountConsumed": 72, "clientTransactionId": "ojfbff1JbtzlivdF"}], "entitlementId": "XjzwAFcWnTGfeK4D", "usageCount": 50}, {"clientTransaction": [{"amountConsumed": 55, "clientTransactionId": "xtWAJTgbX1plS84T"}, {"amountConsumed": 65, "clientTransactionId": "zRFofe7AShOcjbLq"}, {"amountConsumed": 99, "clientTransactionId": "fKH9AQpHD8yC20Rk"}], "entitlementId": "Tus8VGu0BsK29dog", "usageCount": 81}, {"clientTransaction": [{"amountConsumed": 13, "clientTransactionId": "ojTnq51xScF9BfyI"}, {"amountConsumed": 52, "clientTransactionId": "QsjCTtxKhyXmzj15"}, {"amountConsumed": 41, "clientTransactionId": "yPwDSTp4d7FFpfaM"}], "entitlementId": "Wv8PyvQRXeRXxtuy", "usageCount": 47}], "purpose": "d0mFBRw6nDIZYX9J"}, "originalTitleName": "NvlANBntIez8WXg7", "paymentProductSKU": "L81yn82qfNFOnbXk", "purchaseDate": "Jv9yt7OocqUDkKsQ", "sourceOrderItemId": "eKkg6f3xviMOTyux", "titleName": "ZCetziE73lI000pD"}, "eventDomain": "r75I45iD1cEqLVVh", "eventSource": "84anuNo19chBfI89", "eventType": "TT2GITm288tlXBL9", "eventVersion": 2, "id": "mepEuX1UhtfUln3e", "timestamp": "xNRoPIuuA2kcoszH"}' \
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
    --body '{"bundleId": "PdqTppLcl6hsN4V9", "password": "2NArnYjUjO5L5tJD"}' \
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
    --body '{"sandboxId": "77ouuPMPigdH66wP"}' \
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
    --body '{"applicationName": "QWfmWXelAad0WpwZ", "serviceAccountId": "jgfj7YyZcOS1xr9u"}' \
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
    --body '{"data": [{"itemIdentity": "7UVDTEgYIEaPqqch", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"XPXvzmBVCL9eoQDG": "U1QuyaonVcibvbJP", "x6nTBHnQzuU4200U": "GQN6wchsAL5Wyc6s", "aWOJQVEtozVN6cqT": "inD9hAOd4YhxaVZA"}}, {"itemIdentity": "4SgQzO0EmGZ16MxJ", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"JmfceyupcZdrNfD0": "b6NNntIHqRLnNuaf", "JyemhKcKJemrkgMk": "G3o8RzvvihCgxxqT", "VzK5v75aywJpYzTo": "cZhLjts2UwwmGF6L"}}, {"itemIdentity": "yhUD8cUirQiDRcIO", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"8sBbsEPGPXimY10u": "Zv5wDazbL4rCHFQP", "DS6dAS35Hzr96hNP": "A1qn8nj94WKSt0Q1", "BswXnwMMhmLCcoT9": "0ddNjlf2aM89xla0"}}]}' \
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
    --body '{"appId": "r3liKm1214egzqAr", "appSecret": "b1mwTsC4z6FyTJxL"}' \
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
    --body '{"backOfficeServerClientId": "ofNlsiF3Fv4LP2qM", "backOfficeServerClientSecret": "Mn2lKoAEa6JSmOqK", "enableStreamJob": true, "environment": "PbsamW7cQEKcIWsx", "streamName": "m2d2K2RI9ASGFPBP", "streamPartnerName": "OZbOSuilGDJvov5H"}' \
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
    --body '{"backOfficeServerClientId": "Z5G9VjIIElDqIGy9", "backOfficeServerClientSecret": "zAAeu6K77MqcJOj2", "enableStreamJob": true, "environment": "2mSaEwjFvflDhtaN", "streamName": "y9ZP8Ib2yhbA099p", "streamPartnerName": "aQRYPRGwH77eVCU2"}' \
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
    --body '{"appId": "efhoRyGvGDjGTM3B", "publisherAuthenticationKey": "ze7Yg7Eknt7Gb0Nn"}' \
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
    --body '{"clientId": "rAA9H9IHj253akmP", "clientSecret": "P9wT8EizQF2vfpLH", "organizationId": "egvhW5OMju8RvFzf"}' \
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
    --body '{"relyingPartyCert": "LmeN4vxym1YVqgIf"}' \
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
    --password 'ccPyncKqvQCGtztc' \
    > test.out 2>&1
eval_tap $? 99 'UpdateXblBPCertFile' test.out

#- 100 DownloadInvoiceDetails
samples/cli/sample-apps Platform downloadInvoiceDetails \
    --namespace $AB_NAMESPACE \
    --feature 'lrpoGNFq0Rhm37l0' \
    --itemId 'vK5gac2z5GPXEQlF' \
    --itemType 'BUNDLE' \
    --endTime 'V8ZbvNWdzRiJYzXL' \
    --startTime 'z4TuxmFIgH4YlCPp' \
    > test.out 2>&1
eval_tap $? 100 'DownloadInvoiceDetails' test.out

#- 101 GenerateInvoiceSummary
samples/cli/sample-apps Platform generateInvoiceSummary \
    --namespace $AB_NAMESPACE \
    --feature 'yXD7DA1KgFVhVQDS' \
    --itemId 'JDxzlJFVeDQQ6FWJ' \
    --itemType 'BUNDLE' \
    --endTime '55Ut48EsUpo95iwH' \
    --startTime 'MQWbUnGw5yMEdZ2C' \
    > test.out 2>&1
eval_tap $? 101 'GenerateInvoiceSummary' test.out

#- 102 SyncInGameItem
samples/cli/sample-apps Platform syncInGameItem \
    --namespace $AB_NAMESPACE \
    --storeId 'gMm8wg7BMusRCvLi' \
    --body '{"categoryPath": "yrFsP1yUpsw4XMmO", "targetItemId": "c7HPCiwBbxdU9D4w", "targetNamespace": "6sbLKLjEojWYotLn"}' \
    > test.out 2>&1
eval_tap $? 102 'SyncInGameItem' test.out

#- 103 CreateItem
samples/cli/sample-apps Platform createItem \
    --namespace $AB_NAMESPACE \
    --storeId '8vYniEQ5lO8q1omx' \
    --body '{"appId": "8qA75rfS0RzTAzj7", "appType": "DEMO", "baseAppId": "Ok7HhFWkEvMtW00m", "boothName": "qLcPcESH4kM2dS5r", "categoryPath": "J6rcVPXrQaCA8txh", "clazz": "fuyIOW5KzCSPbzgL", "displayOrder": 8, "entitlementType": "DURABLE", "ext": {"belkY9EL0GzBXndl": {}, "VDjecubFLB3NhQ7w": {}, "tJYLu24wx10uvGoh": {}}, "features": ["0oYDv0A49uxhRPmL", "aXpJeRejFBsSqpvj", "oYBi9MReAI85YbXr"], "flexible": true, "images": [{"as": "IAvmjnDYV9ahPVkw", "caption": "IS2tS4IzGt0L8Jz9", "height": 14, "imageUrl": "pA4rmdnHgM75t2Zo", "smallImageUrl": "xjHSb4ypm0hE9jgk", "width": 23}, {"as": "nXJu071YVFUsA1gW", "caption": "j8dejKlyn6g40U2f", "height": 0, "imageUrl": "klXbBK33KICUk0bY", "smallImageUrl": "jY8swO62JJYPJ2BX", "width": 90}, {"as": "QTRG4M5ID2gmj9dw", "caption": "sm3eGpShgY2oVYWH", "height": 77, "imageUrl": "9gbUGpjHFUlD1p9d", "smallImageUrl": "nig1wt7u7JtHW5JN", "width": 7}], "itemIds": ["gkEOIdSMNuYBgFkd", "EojukPDETW6fuxtp", "I6ib8d10kgqOjyD6"], "itemQty": {"6m5PQWWxULzXySXY": 68, "1owp2NMoLUjYKldz": 83, "xMlGEJQ37Ke5AlbC": 78}, "itemType": "COINS", "listable": false, "localizations": {"Z7GVtEcSFrLRdSdA": {"description": "moWlGZY0MUDDNIOl", "localExt": {"1YNZaSgyIr7LqmNp": {}, "jD7sezxZKAxBYwoe": {}, "vC1zgrNM6fqaFzzQ": {}}, "longDescription": "KYSURFOedDgXCPXS", "title": "3uuPjEIus2BQIUxY"}, "a7Ld9vzUdPCNyG9i": {"description": "kuEhDupS8qggUAe8", "localExt": {"bCnI3mZOIDyEY4Kb": {}, "r461jyoqUSnqcrbe": {}, "oNS5SdxztXg92Ya1": {}}, "longDescription": "9ND1kRlCXqckWRgv", "title": "mFnYq8mnumpfc60c"}, "kBa07kOJ5VQUvD2U": {"description": "OniPsJ2DNRq8LJ9I", "localExt": {"5HrvUXGA9nyQ6xPx": {}, "19k104a2Ea2bSEuG": {}, "C7slwTreFlYBmt0P": {}}, "longDescription": "ltxaUWWrdbL5dqVl", "title": "96pbVR7iO5dLiDiU"}}, "lootBoxConfig": {"rewardCount": 76, "rewards": [{"lootBoxItems": [{"count": 74, "duration": 11, "endDate": "1985-02-14T00:00:00Z", "itemId": "yHNggfPRcZ2PZvbc", "itemSku": "irTjYm96ZLJr3Ex6", "itemType": "EP7otQHYw5P6GcvC"}, {"count": 37, "duration": 71, "endDate": "1989-03-24T00:00:00Z", "itemId": "gFI9HLqcFJLECdeW", "itemSku": "1eoUUsNeRqheOoz6", "itemType": "667nEsodbo5ZMwXR"}, {"count": 33, "duration": 78, "endDate": "1992-12-21T00:00:00Z", "itemId": "H34Th6mjiiX9K29w", "itemSku": "zIdGpbLWfwjt8S33", "itemType": "GReR5Dyyeb2lUmki"}], "name": "phcJfMs0sQ4hViWZ", "odds": 0.18044431365464608, "type": "PROBABILITY_GROUP", "weight": 40}, {"lootBoxItems": [{"count": 3, "duration": 40, "endDate": "1985-11-02T00:00:00Z", "itemId": "OfZasXgJbU36ypE8", "itemSku": "Jj2XUQwRWzPWuq9o", "itemType": "nSgobmAlLauAy7EI"}, {"count": 47, "duration": 1, "endDate": "1986-10-28T00:00:00Z", "itemId": "PzihIScPSjzZGzlE", "itemSku": "BId945yhkMmxdnG4", "itemType": "TlOCQ9Mz4ZM0x1L8"}, {"count": 50, "duration": 49, "endDate": "1971-12-02T00:00:00Z", "itemId": "WpmkEkEmq8SLEK27", "itemSku": "399KN9kQvq0wBLmB", "itemType": "TpxWM3g9rOQxwHE6"}], "name": "PJFUj2b2pfXLSyLX", "odds": 0.6953416047942571, "type": "PROBABILITY_GROUP", "weight": 89}, {"lootBoxItems": [{"count": 23, "duration": 73, "endDate": "1993-04-01T00:00:00Z", "itemId": "lQEqbDPVYOLCOUeR", "itemSku": "P5Tna7fBMt9GXW0l", "itemType": "V1hBt2m3rUsOlo9K"}, {"count": 85, "duration": 13, "endDate": "1999-12-16T00:00:00Z", "itemId": "bYKHmlURphfeRxgO", "itemSku": "AJjlWemDfDkhLbb6", "itemType": "HcgldgHlPlK3DYsu"}, {"count": 55, "duration": 44, "endDate": "1982-08-31T00:00:00Z", "itemId": "JtKG1I7OHF4EP5b9", "itemSku": "yWJfc9gKLvJQumhc", "itemType": "kXkJHxdqRygCzasq"}], "name": "e7I9qB0mkKeqxGWY", "odds": 0.8631649583967367, "type": "REWARD", "weight": 100}], "rollFunction": "CUSTOM"}, "maxCount": 80, "maxCountPerUser": 51, "name": "S9hSdQ6gEdHV2MuW", "optionBoxConfig": {"boxItems": [{"count": 91, "duration": 0, "endDate": "1971-04-30T00:00:00Z", "itemId": "Sbn0unmINlLIhAyR", "itemSku": "jIBVq4s0NanWhozH", "itemType": "54kavbzD2fL865yW"}, {"count": 38, "duration": 54, "endDate": "1983-04-29T00:00:00Z", "itemId": "V7Tkb3eOaEsh0Qsi", "itemSku": "vIGEpVtpBaRl6LOv", "itemType": "Vsw6by7VCZU4h8vu"}, {"count": 38, "duration": 87, "endDate": "1994-05-18T00:00:00Z", "itemId": "mws0PdAAIpx8blai", "itemSku": "3g0Hx95VRsJmXlza", "itemType": "6BNXAeLpYXb5w1Oj"}]}, "purchasable": false, "recurring": {"cycle": "QUARTERLY", "fixedFreeDays": 89, "fixedTrialCycles": 54, "graceDays": 89}, "regionData": {"Ty8Kzms7bZGancld": [{"currencyCode": "8CQy9nGzO96HEWqe", "currencyNamespace": "VsBFMx2dnejSXUFy", "currencyType": "REAL", "discountAmount": 39, "discountExpireAt": "1992-05-13T00:00:00Z", "discountPercentage": 72, "discountPurchaseAt": "1980-01-17T00:00:00Z", "expireAt": "1980-01-22T00:00:00Z", "price": 93, "purchaseAt": "1977-10-26T00:00:00Z", "trialPrice": 93}, {"currencyCode": "HWKJgmbkOKOLqxro", "currencyNamespace": "8fq2JrgdeNiOG3fw", "currencyType": "REAL", "discountAmount": 36, "discountExpireAt": "1986-03-17T00:00:00Z", "discountPercentage": 77, "discountPurchaseAt": "1971-05-18T00:00:00Z", "expireAt": "1978-06-09T00:00:00Z", "price": 8, "purchaseAt": "1980-09-28T00:00:00Z", "trialPrice": 44}, {"currencyCode": "opWZjfmgGFDKKrKk", "currencyNamespace": "522wGNkDRQD7YqtZ", "currencyType": "VIRTUAL", "discountAmount": 96, "discountExpireAt": "1985-02-14T00:00:00Z", "discountPercentage": 0, "discountPurchaseAt": "1984-10-16T00:00:00Z", "expireAt": "1986-08-13T00:00:00Z", "price": 47, "purchaseAt": "1983-02-24T00:00:00Z", "trialPrice": 81}], "rOcdK4zRrl5HdKAN": [{"currencyCode": "eBSFFhdIGa35kzoT", "currencyNamespace": "Yno2A9ziksJTKRHY", "currencyType": "REAL", "discountAmount": 24, "discountExpireAt": "1993-07-28T00:00:00Z", "discountPercentage": 59, "discountPurchaseAt": "1996-05-23T00:00:00Z", "expireAt": "1981-04-21T00:00:00Z", "price": 84, "purchaseAt": "1971-01-28T00:00:00Z", "trialPrice": 81}, {"currencyCode": "4Or8K0wjrI5XdYPq", "currencyNamespace": "A6SY7KO2MI5KxiSK", "currencyType": "REAL", "discountAmount": 97, "discountExpireAt": "1976-11-06T00:00:00Z", "discountPercentage": 21, "discountPurchaseAt": "1980-07-04T00:00:00Z", "expireAt": "1983-10-21T00:00:00Z", "price": 86, "purchaseAt": "1981-11-12T00:00:00Z", "trialPrice": 15}, {"currencyCode": "s5fnk6WBGMhJ0SNL", "currencyNamespace": "v4Bh2XT9Mz50VG7t", "currencyType": "VIRTUAL", "discountAmount": 34, "discountExpireAt": "1971-06-25T00:00:00Z", "discountPercentage": 98, "discountPurchaseAt": "1979-11-01T00:00:00Z", "expireAt": "1973-06-16T00:00:00Z", "price": 57, "purchaseAt": "1993-05-03T00:00:00Z", "trialPrice": 72}], "SB7Munc2lgKqEOdf": [{"currencyCode": "4j0hxyk58QTEX5R8", "currencyNamespace": "R3lDYv13dJGARSnO", "currencyType": "REAL", "discountAmount": 62, "discountExpireAt": "1984-12-10T00:00:00Z", "discountPercentage": 33, "discountPurchaseAt": "1991-01-04T00:00:00Z", "expireAt": "1984-03-24T00:00:00Z", "price": 22, "purchaseAt": "1972-03-20T00:00:00Z", "trialPrice": 42}, {"currencyCode": "aQ5XbOad7ImttlxA", "currencyNamespace": "LZWst9gfsU1GdK7q", "currencyType": "VIRTUAL", "discountAmount": 48, "discountExpireAt": "1994-11-11T00:00:00Z", "discountPercentage": 3, "discountPurchaseAt": "1973-07-09T00:00:00Z", "expireAt": "1994-02-28T00:00:00Z", "price": 65, "purchaseAt": "1985-11-20T00:00:00Z", "trialPrice": 92}, {"currencyCode": "RL5CNWSyqscFgyfB", "currencyNamespace": "iGGn12b85rRJ69gA", "currencyType": "REAL", "discountAmount": 61, "discountExpireAt": "1993-01-10T00:00:00Z", "discountPercentage": 91, "discountPurchaseAt": "1975-06-23T00:00:00Z", "expireAt": "1972-08-01T00:00:00Z", "price": 56, "purchaseAt": "1990-03-14T00:00:00Z", "trialPrice": 96}]}, "saleConfig": {"currencyCode": "onaWIs7iA88D9VhP", "price": 87}, "seasonType": "TIER", "sectionExclusive": false, "sellable": false, "sku": "CQkALDLxJsEm8aKj", "stackable": false, "status": "ACTIVE", "tags": ["2TaqHpjqVuxcnyaZ", "xy2oEsTRmCa9Svtu", "RHAldZFc4ZXirrBY"], "targetCurrencyCode": "8RQleqAOq0JFaURI", "targetNamespace": "BI4qqAVsUtI6O5FR", "thumbnailUrl": "PT6yUsR4175IDTZb", "useCount": 5}' \
    > test.out 2>&1
eval_tap $? 103 'CreateItem' test.out

#- 104 GetItemByAppId
samples/cli/sample-apps Platform getItemByAppId \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --storeId 'ZoSZP7appSvzo8rF' \
    --appId 'XoEu8jvLnW4LhuvH' \
    > test.out 2>&1
eval_tap $? 104 'GetItemByAppId' test.out

#- 105 QueryItems
samples/cli/sample-apps Platform queryItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --appType 'SOFTWARE' \
    --availableDate 'RPuGaMf9mByLIYNK' \
    --baseAppId 'kj40lLZ40zmaMDMm' \
    --categoryPath 'hoxqqP6UIgBTO3xo' \
    --features 'hZD893F7qsx4Tk14' \
    --includeSubCategoryItem 'true' \
    --itemType 'COINS' \
    --limit '12' \
    --offset '7' \
    --region 'jhv2Qqs7HRTZv82d' \
    --sortBy '["createdAt", "createdAt:asc", "displayOrder:asc"]' \
    --storeId '6yUOvxiBryzZbTdS' \
    --tags 'mUkKbu9dSszQX00B' \
    --targetNamespace '26CtjxGOZMVkagOP' \
    > test.out 2>&1
eval_tap $? 105 'QueryItems' test.out

#- 106 ListBasicItemsByFeatures
samples/cli/sample-apps Platform listBasicItemsByFeatures \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --features '["QjPSKcZo6d98lRCm", "7GAgPcCQc5nN82r7", "8noVnEsrfwczNo6Z"]' \
    > test.out 2>&1
eval_tap $? 106 'ListBasicItemsByFeatures' test.out

#- 107 GetItems
samples/cli/sample-apps Platform getItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --storeId 'ZkpTRAR7j00gLYM0' \
    --itemIds 'Ny67fpvXahOSK9lo' \
    > test.out 2>&1
eval_tap $? 107 'GetItems' test.out

#- 108 GetItemBySku
samples/cli/sample-apps Platform getItemBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'YBFsOToUFZs3lhtp' \
    --sku 'xS801x8Un8l36sno' \
    > test.out 2>&1
eval_tap $? 108 'GetItemBySku' test.out

#- 109 GetLocaleItemBySku
samples/cli/sample-apps Platform getLocaleItemBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --language 'rdS1SAU7VigX4xar' \
    --populateBundle 'false' \
    --region 'uSIFKuJStnolJDra' \
    --storeId 'YfzLbvhCihEzFyIM' \
    --sku 'WnlQL9nSFEd2tMlO' \
    > test.out 2>&1
eval_tap $? 109 'GetLocaleItemBySku' test.out

#- 110 GetEstimatedPrice
samples/cli/sample-apps Platform getEstimatedPrice \
    --namespace $AB_NAMESPACE \
    --region 'gidrIGHkHKfMiwaq' \
    --storeId '7QsHD4lQ6V2qve59' \
    --itemIds 'FC61v1VrPkYO2wPG' \
    --userId 'Rtbb6NHChHIBoXsh' \
    > test.out 2>&1
eval_tap $? 110 'GetEstimatedPrice' test.out

#- 111 GetItemIdBySku
samples/cli/sample-apps Platform getItemIdBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --storeId 'Onz6sD7fnfzvXHQM' \
    --sku 'jgwOVGCLrzb2tmHM' \
    > test.out 2>&1
eval_tap $? 111 'GetItemIdBySku' test.out

#- 112 GetBulkItemIdBySkus
samples/cli/sample-apps Platform getBulkItemIdBySkus \
    --namespace $AB_NAMESPACE \
    --sku '["Fw7OOkjXU8yxegA7", "urO13672AbIMJF0m", "6YX4Z7mEKEiCjZDy"]' \
    --storeId 'GVNh1wCOg4PE9ZHz' \
    > test.out 2>&1
eval_tap $? 112 'GetBulkItemIdBySkus' test.out

#- 113 BulkGetLocaleItems
samples/cli/sample-apps Platform bulkGetLocaleItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --language 'rVxExLUEFjTLwvEW' \
    --region 'KlJwP27tXrxMSkix' \
    --storeId 'dWBIkiqaTuuvgiyG' \
    --itemIds 'kws16FINEygf1NYh' \
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
    --userId 'zAEiU61fcnq2jxFV' \
    --body '{"itemIds": ["VF8UE9XnWf19UsQb", "bzzt5e3TySXLqKA1", "GINBLuP0OvY62lEt"]}' \
    > test.out 2>&1
eval_tap $? 115 'ValidateItemPurchaseCondition' test.out

#- 116 BulkUpdateRegionData
samples/cli/sample-apps Platform bulkUpdateRegionData \
    --namespace $AB_NAMESPACE \
    --storeId '4QmswAtH7khaqiFs' \
    --body '{"changes": [{"itemIdentities": ["0Kxgy5fAmjjOxoIW", "eHc2KFEEWIhZFgJb", "cE9iDSPIXHCxMQcr"], "itemIdentityType": "ITEM_SKU", "regionData": {"JcWfvGxsQMNVY0cT": [{"currencyCode": "b5tawkEeDAf7Xz7M", "currencyNamespace": "FPwM4UbnHyrkCCeQ", "currencyType": "VIRTUAL", "discountAmount": 19, "discountExpireAt": "1995-09-30T00:00:00Z", "discountPercentage": 85, "discountPurchaseAt": "1992-02-12T00:00:00Z", "discountedPrice": 29, "expireAt": "1992-03-13T00:00:00Z", "price": 16, "purchaseAt": "1979-10-07T00:00:00Z", "trialPrice": 33}, {"currencyCode": "VIU9BUqvG05gFdVn", "currencyNamespace": "qQ7PveNtLanNcBRb", "currencyType": "VIRTUAL", "discountAmount": 52, "discountExpireAt": "1991-01-31T00:00:00Z", "discountPercentage": 16, "discountPurchaseAt": "1993-05-27T00:00:00Z", "discountedPrice": 30, "expireAt": "1986-10-04T00:00:00Z", "price": 40, "purchaseAt": "1971-11-22T00:00:00Z", "trialPrice": 84}, {"currencyCode": "Bwp4XkQeuUeXqxGr", "currencyNamespace": "fcBqUmpHDmFwwfZ2", "currencyType": "REAL", "discountAmount": 39, "discountExpireAt": "1995-05-01T00:00:00Z", "discountPercentage": 82, "discountPurchaseAt": "1976-07-25T00:00:00Z", "discountedPrice": 3, "expireAt": "1997-12-07T00:00:00Z", "price": 13, "purchaseAt": "1972-05-24T00:00:00Z", "trialPrice": 39}], "YcLQIlJ6CUmCMvVJ": [{"currencyCode": "SjVRnPb3LYtzYn1w", "currencyNamespace": "cccllAuo8FoXx5hR", "currencyType": "REAL", "discountAmount": 24, "discountExpireAt": "1997-02-19T00:00:00Z", "discountPercentage": 20, "discountPurchaseAt": "1990-05-03T00:00:00Z", "discountedPrice": 3, "expireAt": "1990-11-25T00:00:00Z", "price": 61, "purchaseAt": "1996-12-08T00:00:00Z", "trialPrice": 14}, {"currencyCode": "egV6UWKp4mOnrfkn", "currencyNamespace": "OL12ZETtiJEc6r8G", "currencyType": "REAL", "discountAmount": 59, "discountExpireAt": "1989-05-02T00:00:00Z", "discountPercentage": 56, "discountPurchaseAt": "1971-09-01T00:00:00Z", "discountedPrice": 16, "expireAt": "1980-04-15T00:00:00Z", "price": 97, "purchaseAt": "1971-02-18T00:00:00Z", "trialPrice": 82}, {"currencyCode": "n1cqw91GaWDNGbz5", "currencyNamespace": "yxdd2XhHUcOmprCS", "currencyType": "REAL", "discountAmount": 92, "discountExpireAt": "1996-07-21T00:00:00Z", "discountPercentage": 9, "discountPurchaseAt": "1975-11-09T00:00:00Z", "discountedPrice": 0, "expireAt": "1972-11-03T00:00:00Z", "price": 67, "purchaseAt": "1978-12-13T00:00:00Z", "trialPrice": 76}], "LQKnZ4LKMzxQVGNz": [{"currencyCode": "p06isCv1dMVvPsSM", "currencyNamespace": "GUkHEWYsJHLNcmah", "currencyType": "VIRTUAL", "discountAmount": 28, "discountExpireAt": "1995-02-28T00:00:00Z", "discountPercentage": 70, "discountPurchaseAt": "1973-06-11T00:00:00Z", "discountedPrice": 80, "expireAt": "1976-01-07T00:00:00Z", "price": 84, "purchaseAt": "1994-02-17T00:00:00Z", "trialPrice": 36}, {"currencyCode": "rNDKKRdAHllUgNbL", "currencyNamespace": "EUMdfgmof5nTDYAF", "currencyType": "VIRTUAL", "discountAmount": 73, "discountExpireAt": "1980-10-26T00:00:00Z", "discountPercentage": 13, "discountPurchaseAt": "1986-06-04T00:00:00Z", "discountedPrice": 1, "expireAt": "1990-11-12T00:00:00Z", "price": 28, "purchaseAt": "1974-09-30T00:00:00Z", "trialPrice": 55}, {"currencyCode": "71fSIhReIr8XAQq0", "currencyNamespace": "ipnlSmfc7miZfBsY", "currencyType": "VIRTUAL", "discountAmount": 71, "discountExpireAt": "1982-02-12T00:00:00Z", "discountPercentage": 35, "discountPurchaseAt": "1991-03-28T00:00:00Z", "discountedPrice": 74, "expireAt": "1990-03-15T00:00:00Z", "price": 22, "purchaseAt": "1993-09-02T00:00:00Z", "trialPrice": 90}]}}, {"itemIdentities": ["8BmwlwoTSm8uoUZx", "a4gnF1TIsZ85U20V", "EJkys2bAg7MoInjf"], "itemIdentityType": "ITEM_ID", "regionData": {"RCWoa4OthZ8eE5Q2": [{"currencyCode": "k1Kfl4ToZxZQuT8V", "currencyNamespace": "El2Tmg127bDzxGXr", "currencyType": "REAL", "discountAmount": 19, "discountExpireAt": "1989-10-28T00:00:00Z", "discountPercentage": 68, "discountPurchaseAt": "1972-02-27T00:00:00Z", "discountedPrice": 19, "expireAt": "1974-07-08T00:00:00Z", "price": 23, "purchaseAt": "1973-07-18T00:00:00Z", "trialPrice": 1}, {"currencyCode": "ZQiZlP2DDbKFtOVk", "currencyNamespace": "qvoLvL3nf23TEKIn", "currencyType": "REAL", "discountAmount": 5, "discountExpireAt": "1979-05-29T00:00:00Z", "discountPercentage": 62, "discountPurchaseAt": "1992-04-30T00:00:00Z", "discountedPrice": 61, "expireAt": "1988-09-09T00:00:00Z", "price": 71, "purchaseAt": "1995-05-20T00:00:00Z", "trialPrice": 17}, {"currencyCode": "KTtk1BysrQD6xWRr", "currencyNamespace": "QJZUBkXusRfN81bd", "currencyType": "VIRTUAL", "discountAmount": 93, "discountExpireAt": "1978-05-29T00:00:00Z", "discountPercentage": 60, "discountPurchaseAt": "1978-11-12T00:00:00Z", "discountedPrice": 2, "expireAt": "1973-03-01T00:00:00Z", "price": 85, "purchaseAt": "1978-05-05T00:00:00Z", "trialPrice": 13}], "pklhQ4WbjksFRkLg": [{"currencyCode": "p8k94SwNJ1gsSCvv", "currencyNamespace": "leSPAcTs2mo55EOU", "currencyType": "VIRTUAL", "discountAmount": 12, "discountExpireAt": "1999-09-07T00:00:00Z", "discountPercentage": 35, "discountPurchaseAt": "1973-01-01T00:00:00Z", "discountedPrice": 29, "expireAt": "1971-09-19T00:00:00Z", "price": 94, "purchaseAt": "1993-05-03T00:00:00Z", "trialPrice": 60}, {"currencyCode": "GJELHI3EEnL2NcQI", "currencyNamespace": "paPvq7FZ2qzPV1Ok", "currencyType": "VIRTUAL", "discountAmount": 74, "discountExpireAt": "1992-09-02T00:00:00Z", "discountPercentage": 38, "discountPurchaseAt": "1975-11-24T00:00:00Z", "discountedPrice": 42, "expireAt": "1991-06-30T00:00:00Z", "price": 22, "purchaseAt": "1983-02-20T00:00:00Z", "trialPrice": 65}, {"currencyCode": "F8JLmxpuGkaS4OSm", "currencyNamespace": "q4HIuPoyA0pBZyfK", "currencyType": "REAL", "discountAmount": 4, "discountExpireAt": "1996-11-08T00:00:00Z", "discountPercentage": 42, "discountPurchaseAt": "1997-04-18T00:00:00Z", "discountedPrice": 20, "expireAt": "1972-10-07T00:00:00Z", "price": 2, "purchaseAt": "1979-09-28T00:00:00Z", "trialPrice": 30}], "7vnFVRIhJ6NPUTT3": [{"currencyCode": "ULClANrUVqYQdsvD", "currencyNamespace": "V5wqC5AVEniPaSGx", "currencyType": "VIRTUAL", "discountAmount": 79, "discountExpireAt": "1974-05-10T00:00:00Z", "discountPercentage": 28, "discountPurchaseAt": "1995-06-26T00:00:00Z", "discountedPrice": 39, "expireAt": "1984-02-06T00:00:00Z", "price": 28, "purchaseAt": "1975-06-26T00:00:00Z", "trialPrice": 65}, {"currencyCode": "rtmKjFxUa8pa6dKm", "currencyNamespace": "s867zDFmb5MZ6tEo", "currencyType": "REAL", "discountAmount": 49, "discountExpireAt": "1993-12-14T00:00:00Z", "discountPercentage": 55, "discountPurchaseAt": "1978-12-08T00:00:00Z", "discountedPrice": 99, "expireAt": "1979-05-17T00:00:00Z", "price": 6, "purchaseAt": "1978-08-31T00:00:00Z", "trialPrice": 15}, {"currencyCode": "HZP23E89cIao2mqB", "currencyNamespace": "OQg8D8X9XQDp4x3t", "currencyType": "REAL", "discountAmount": 15, "discountExpireAt": "1979-05-03T00:00:00Z", "discountPercentage": 55, "discountPurchaseAt": "1974-06-07T00:00:00Z", "discountedPrice": 96, "expireAt": "1973-01-07T00:00:00Z", "price": 91, "purchaseAt": "1988-08-20T00:00:00Z", "trialPrice": 62}]}}, {"itemIdentities": ["w8OydnpLLKkBXjYd", "WdLlPKbMSEXPbMxh", "5T5UARqibRu35z2T"], "itemIdentityType": "ITEM_ID", "regionData": {"psfM3vBJMgtj3Wo6": [{"currencyCode": "LYs0DKBJRvXR6ob7", "currencyNamespace": "2sgAvgqMtisKVspT", "currencyType": "REAL", "discountAmount": 19, "discountExpireAt": "1998-11-13T00:00:00Z", "discountPercentage": 87, "discountPurchaseAt": "1998-10-17T00:00:00Z", "discountedPrice": 67, "expireAt": "1979-06-08T00:00:00Z", "price": 81, "purchaseAt": "1984-02-12T00:00:00Z", "trialPrice": 92}, {"currencyCode": "IlFLxtpazzizdKig", "currencyNamespace": "fSfMDUiiqANYZPSa", "currencyType": "REAL", "discountAmount": 9, "discountExpireAt": "1988-05-16T00:00:00Z", "discountPercentage": 68, "discountPurchaseAt": "1980-10-22T00:00:00Z", "discountedPrice": 51, "expireAt": "1982-11-24T00:00:00Z", "price": 78, "purchaseAt": "1997-09-01T00:00:00Z", "trialPrice": 58}, {"currencyCode": "9FHRve4KkNiGtkB8", "currencyNamespace": "O3uELhYrxnswASpH", "currencyType": "VIRTUAL", "discountAmount": 80, "discountExpireAt": "1973-12-16T00:00:00Z", "discountPercentage": 31, "discountPurchaseAt": "1981-07-22T00:00:00Z", "discountedPrice": 94, "expireAt": "1999-12-07T00:00:00Z", "price": 15, "purchaseAt": "1985-02-14T00:00:00Z", "trialPrice": 30}], "uX63Lu3ZMjEtz8rH": [{"currencyCode": "fNj62Q3ebeCMTAhq", "currencyNamespace": "nt7jdL0xblXH7BFQ", "currencyType": "REAL", "discountAmount": 92, "discountExpireAt": "1971-03-24T00:00:00Z", "discountPercentage": 24, "discountPurchaseAt": "1981-05-18T00:00:00Z", "discountedPrice": 61, "expireAt": "1993-08-09T00:00:00Z", "price": 84, "purchaseAt": "1986-09-20T00:00:00Z", "trialPrice": 40}, {"currencyCode": "zrVnHepJ2J5MvzKC", "currencyNamespace": "NWW8W7NckcZs2UrR", "currencyType": "VIRTUAL", "discountAmount": 20, "discountExpireAt": "1976-03-20T00:00:00Z", "discountPercentage": 91, "discountPurchaseAt": "1981-10-02T00:00:00Z", "discountedPrice": 10, "expireAt": "1988-08-08T00:00:00Z", "price": 0, "purchaseAt": "1982-03-22T00:00:00Z", "trialPrice": 85}, {"currencyCode": "VueN2Tk6sp3zAGSw", "currencyNamespace": "qUHJxXJSJhYCWW0W", "currencyType": "REAL", "discountAmount": 4, "discountExpireAt": "1986-10-11T00:00:00Z", "discountPercentage": 44, "discountPurchaseAt": "1979-08-15T00:00:00Z", "discountedPrice": 70, "expireAt": "1981-03-11T00:00:00Z", "price": 83, "purchaseAt": "1994-11-20T00:00:00Z", "trialPrice": 69}], "UUGOxOm9mqt33b2W": [{"currencyCode": "rnnc93eF6zBASFIh", "currencyNamespace": "1UZHY8B0VWy0dv6G", "currencyType": "REAL", "discountAmount": 23, "discountExpireAt": "1994-11-19T00:00:00Z", "discountPercentage": 73, "discountPurchaseAt": "1988-04-21T00:00:00Z", "discountedPrice": 71, "expireAt": "1984-04-13T00:00:00Z", "price": 82, "purchaseAt": "1982-02-21T00:00:00Z", "trialPrice": 41}, {"currencyCode": "1qdLPXRIeiSw3ONG", "currencyNamespace": "9jN5XwCM73x3JQr7", "currencyType": "REAL", "discountAmount": 48, "discountExpireAt": "1990-03-22T00:00:00Z", "discountPercentage": 97, "discountPurchaseAt": "1994-12-23T00:00:00Z", "discountedPrice": 83, "expireAt": "1974-12-10T00:00:00Z", "price": 39, "purchaseAt": "1990-07-18T00:00:00Z", "trialPrice": 6}, {"currencyCode": "1LhIdN1S5ZKEOQQ3", "currencyNamespace": "Lo4bQOlddLnVc3GR", "currencyType": "VIRTUAL", "discountAmount": 12, "discountExpireAt": "1994-05-20T00:00:00Z", "discountPercentage": 11, "discountPurchaseAt": "1978-11-11T00:00:00Z", "discountedPrice": 26, "expireAt": "1986-02-28T00:00:00Z", "price": 55, "purchaseAt": "1989-10-16T00:00:00Z", "trialPrice": 17}]}}]}' \
    > test.out 2>&1
eval_tap $? 116 'BulkUpdateRegionData' test.out

#- 117 SearchItems
samples/cli/sample-apps Platform searchItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --itemType 'APP' \
    --limit '53' \
    --offset '33' \
    --sortBy 'QsuPZU0wMlt2sqf3' \
    --storeId 'Cy9e5xpSLnt5Arh2' \
    --keyword 'KSr2EObh7AwrK7ZC' \
    --language 'zbzG3Vt1K5EvfK4q' \
    > test.out 2>&1
eval_tap $? 117 'SearchItems' test.out

#- 118 QueryUncategorizedItems
samples/cli/sample-apps Platform queryUncategorizedItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --limit '0' \
    --offset '70' \
    --sortBy '["createdAt:asc", "updatedAt", "displayOrder:asc"]' \
    --storeId 'UB2qJsDvHXAM30Sj' \
    > test.out 2>&1
eval_tap $? 118 'QueryUncategorizedItems' test.out

#- 119 GetItem
samples/cli/sample-apps Platform getItem \
    --itemId 'eqyR3Q6jM5kCM4b5' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'zdzJDbI7nsgKw47A' \
    > test.out 2>&1
eval_tap $? 119 'GetItem' test.out

#- 120 UpdateItem
samples/cli/sample-apps Platform updateItem \
    --itemId 'hOgls5DYjLsJXJg9' \
    --namespace $AB_NAMESPACE \
    --storeId 'cHTutY2GE5Wmv1ng' \
    --body '{"appId": "8dG0ooX479iNgX0T", "appType": "DLC", "baseAppId": "UOQfsUOxmXBQHDQF", "boothName": "8ODYqVO2dLyX7uDt", "categoryPath": "ApHa0v9icXQog2RR", "clazz": "IbNfTR7xSyxSSPuK", "displayOrder": 24, "entitlementType": "DURABLE", "ext": {"5shOWmbcYVdSwQer": {}, "mJlJ197VbodTRw9O": {}, "KvDow94ScUG2ZjFO": {}}, "features": ["7Rh9GEtuhsCRQvHz", "L7PZ5sUGeKldhmBf", "Nq2xvZrKeMEswC3p"], "flexible": false, "images": [{"as": "jtHgujjXMaiQ77pC", "caption": "q8tDYtFuDbxTyX70", "height": 24, "imageUrl": "Yr8Yh4lTcLztZAa0", "smallImageUrl": "QVNPmtv5pv2qHCk2", "width": 24}, {"as": "T6tOQ9XrSb07SIXF", "caption": "itMhFUbizwp0uDJR", "height": 86, "imageUrl": "iinry2YaGn51EgyE", "smallImageUrl": "cAozA7Fn9Or7Gu5H", "width": 22}, {"as": "cYEgL8UEqhf4oMMA", "caption": "gXJ1Ms4s8HGkBIg5", "height": 9, "imageUrl": "zIYT5dscIA65ID4D", "smallImageUrl": "N3fKMUe5n02ZGX3Z", "width": 12}], "itemIds": ["YAO6E9YO8Dv9j7Sb", "gC032HAKMJnCAv7Q", "s0FiZJcNu2pKFR7H"], "itemQty": {"FNcDn6WJai1WXH46": 90, "Vm7QyhbyrCGCaw1Q": 69, "7pGLhyxPsmUHgJP3": 1}, "itemType": "SUBSCRIPTION", "listable": true, "localizations": {"UpOAXOHKNQ0cvFeY": {"description": "ocHpEM1AzqliAESI", "localExt": {"yDIYgVLc7LI05sMs": {}, "SYp4qC8k20W6lJBG": {}, "jgj8hqYsUIdK6p6G": {}}, "longDescription": "d66Nm5LZsmq0K1iX", "title": "69fFxISC3woRd81N"}, "YUpiJJvV3zGBqc4L": {"description": "8c3HF3FI1XGzljfH", "localExt": {"xcTuJYhRHe0X4Qjm": {}, "i1CzOjTpneLlBJ6T": {}, "v4p8SseQKgM1nZPd": {}}, "longDescription": "tOD3SFOo2577Hl7O", "title": "bM4p0S8d6IxnNfoP"}, "jM0cz4PAsB78UJaZ": {"description": "0NNorDPJ6GVTMcy4", "localExt": {"cbocPDiofua4JrxS": {}, "WKlLA0zP8hOzfZoj": {}, "iLX8KhGNZBGwFkVL": {}}, "longDescription": "A88Ao4dsguRJYG12", "title": "StTkGcbqZZQT80Gj"}}, "lootBoxConfig": {"rewardCount": 93, "rewards": [{"lootBoxItems": [{"count": 9, "duration": 92, "endDate": "1988-06-13T00:00:00Z", "itemId": "hakVIwesWgZrWn51", "itemSku": "4DakfIbFcPcgDQBO", "itemType": "oPRna1qpYpIQ9biX"}, {"count": 8, "duration": 21, "endDate": "1973-05-11T00:00:00Z", "itemId": "G2KrDcdSBBA10d6z", "itemSku": "y70usKDDhIWSwEwJ", "itemType": "Az73bIvGY75SjhAP"}, {"count": 8, "duration": 36, "endDate": "1997-10-25T00:00:00Z", "itemId": "Rhs5Gor5b1fbX0ud", "itemSku": "gx1p2WSioW1iewU8", "itemType": "Ddr5P1WslyB1pavQ"}], "name": "lsEZf3mWOAIW3b7P", "odds": 0.5154867834623975, "type": "PROBABILITY_GROUP", "weight": 73}, {"lootBoxItems": [{"count": 46, "duration": 59, "endDate": "1990-02-04T00:00:00Z", "itemId": "rpCEO0yp4p5wNQ5o", "itemSku": "utBeceBFWShX9rdD", "itemType": "XRIfjlY8X7u1Npvx"}, {"count": 54, "duration": 31, "endDate": "1992-10-21T00:00:00Z", "itemId": "GJGw7nWaEN7Ep959", "itemSku": "QdVdyj8EP7dkJKkE", "itemType": "oMU7yrRxPhPRalsz"}, {"count": 31, "duration": 40, "endDate": "1990-07-22T00:00:00Z", "itemId": "JvszpPCtQGtxis5O", "itemSku": "8GEB2r8W5sx65pAm", "itemType": "g1RAJjYxjvFWuCK0"}], "name": "Yh6YdpGWPkfZnM1W", "odds": 0.24108023081272734, "type": "REWARD", "weight": 18}, {"lootBoxItems": [{"count": 33, "duration": 61, "endDate": "1986-10-23T00:00:00Z", "itemId": "rVjZujTfwg0967s1", "itemSku": "jnm7iob6CRPjhLxa", "itemType": "dW4wFpJH4K5da83O"}, {"count": 14, "duration": 30, "endDate": "1973-11-27T00:00:00Z", "itemId": "gxmzUB8OSvWgXwbI", "itemSku": "wYnlGaes5WxSbvN3", "itemType": "wPB1OxdG0naqYITQ"}, {"count": 52, "duration": 90, "endDate": "1971-11-13T00:00:00Z", "itemId": "BnyBAildDt0ZQ0AD", "itemSku": "R4T9M3k8C1sfoAQm", "itemType": "aZ1hRqpcq0Jr1lku"}], "name": "fIk0slPVv2RLluuN", "odds": 0.22217834432940065, "type": "PROBABILITY_GROUP", "weight": 24}], "rollFunction": "CUSTOM"}, "maxCount": 14, "maxCountPerUser": 86, "name": "DgayYx3MQ7mXCOaK", "optionBoxConfig": {"boxItems": [{"count": 1, "duration": 98, "endDate": "1987-02-25T00:00:00Z", "itemId": "mPbkJp1WsAA7GZYh", "itemSku": "vfDSvmZc4QWBe64w", "itemType": "EfEpElhg1Sa50fpD"}, {"count": 75, "duration": 71, "endDate": "1999-01-30T00:00:00Z", "itemId": "zzEFsHV6bxmPCTU3", "itemSku": "60rT7B3S3EqX5ZuD", "itemType": "9p03txffZiHMTKKF"}, {"count": 95, "duration": 58, "endDate": "1996-05-24T00:00:00Z", "itemId": "ijow6kST4NqVUKWH", "itemSku": "rLFdSiWYah6QnISU", "itemType": "XUKhxNPgxziHlvir"}]}, "purchasable": true, "recurring": {"cycle": "WEEKLY", "fixedFreeDays": 54, "fixedTrialCycles": 92, "graceDays": 72}, "regionData": {"PtUlFXQcOR5WKsDG": [{"currencyCode": "zeyVsU0CrTZu3mEh", "currencyNamespace": "vN2xnN2TwO9HRNa5", "currencyType": "REAL", "discountAmount": 70, "discountExpireAt": "1987-11-26T00:00:00Z", "discountPercentage": 5, "discountPurchaseAt": "1972-12-27T00:00:00Z", "expireAt": "1999-10-09T00:00:00Z", "price": 2, "purchaseAt": "1974-03-21T00:00:00Z", "trialPrice": 37}, {"currencyCode": "7CCpu7MaIpR3pwLJ", "currencyNamespace": "fMm1xeltHCDuJ3Kv", "currencyType": "VIRTUAL", "discountAmount": 4, "discountExpireAt": "1994-04-16T00:00:00Z", "discountPercentage": 36, "discountPurchaseAt": "1971-02-24T00:00:00Z", "expireAt": "1974-05-09T00:00:00Z", "price": 43, "purchaseAt": "1974-10-17T00:00:00Z", "trialPrice": 69}, {"currencyCode": "vq5ZE0pgbfrxzrKH", "currencyNamespace": "q8wozbW0RBFXa7zi", "currencyType": "VIRTUAL", "discountAmount": 6, "discountExpireAt": "1973-04-25T00:00:00Z", "discountPercentage": 9, "discountPurchaseAt": "1978-03-25T00:00:00Z", "expireAt": "1995-06-18T00:00:00Z", "price": 84, "purchaseAt": "1976-05-27T00:00:00Z", "trialPrice": 66}], "byLmZAr0Vfz5HBDu": [{"currencyCode": "IBONBwZRIqm2Sutx", "currencyNamespace": "VOVWfndFHvMSpdnN", "currencyType": "VIRTUAL", "discountAmount": 95, "discountExpireAt": "1994-01-13T00:00:00Z", "discountPercentage": 59, "discountPurchaseAt": "1988-07-21T00:00:00Z", "expireAt": "1984-03-07T00:00:00Z", "price": 95, "purchaseAt": "1980-11-10T00:00:00Z", "trialPrice": 43}, {"currencyCode": "WYlIQ5RanU0TEHc5", "currencyNamespace": "nqXm91CkA78XoTHd", "currencyType": "VIRTUAL", "discountAmount": 72, "discountExpireAt": "1999-01-27T00:00:00Z", "discountPercentage": 47, "discountPurchaseAt": "1991-11-17T00:00:00Z", "expireAt": "1996-01-21T00:00:00Z", "price": 55, "purchaseAt": "1991-10-31T00:00:00Z", "trialPrice": 25}, {"currencyCode": "W0L0g6C1FsuQkEVc", "currencyNamespace": "xifJCZruG7jzLOF9", "currencyType": "REAL", "discountAmount": 40, "discountExpireAt": "1971-03-30T00:00:00Z", "discountPercentage": 50, "discountPurchaseAt": "1986-09-12T00:00:00Z", "expireAt": "1983-09-06T00:00:00Z", "price": 30, "purchaseAt": "1984-01-30T00:00:00Z", "trialPrice": 23}], "U65LIxutjxGkJ3ol": [{"currencyCode": "Vw8X5C6K2IBFAimv", "currencyNamespace": "Ka5UUKZyv9sBrf9H", "currencyType": "VIRTUAL", "discountAmount": 16, "discountExpireAt": "1980-08-01T00:00:00Z", "discountPercentage": 95, "discountPurchaseAt": "1981-03-09T00:00:00Z", "expireAt": "1991-10-23T00:00:00Z", "price": 55, "purchaseAt": "1999-12-13T00:00:00Z", "trialPrice": 66}, {"currencyCode": "5SBVqYShUNF8Alm0", "currencyNamespace": "fCKqmFPvRLNiELFV", "currencyType": "VIRTUAL", "discountAmount": 90, "discountExpireAt": "1988-03-11T00:00:00Z", "discountPercentage": 9, "discountPurchaseAt": "1976-04-27T00:00:00Z", "expireAt": "1999-07-04T00:00:00Z", "price": 24, "purchaseAt": "1977-01-16T00:00:00Z", "trialPrice": 81}, {"currencyCode": "zXbZNCYDMjvYXpG6", "currencyNamespace": "uHFzRs0HTD0UEbJn", "currencyType": "REAL", "discountAmount": 1, "discountExpireAt": "1987-04-01T00:00:00Z", "discountPercentage": 36, "discountPurchaseAt": "1976-05-11T00:00:00Z", "expireAt": "1993-02-16T00:00:00Z", "price": 9, "purchaseAt": "1997-06-04T00:00:00Z", "trialPrice": 20}]}, "saleConfig": {"currencyCode": "BfMToDFDLei6yrJT", "price": 70}, "seasonType": "PASS", "sectionExclusive": true, "sellable": true, "sku": "85qWFzWOY5nKgJzm", "stackable": true, "status": "ACTIVE", "tags": ["UbCBEdC4Pqhod5x1", "2cXGHW86BkKhv9BB", "xXvM2ln8QSEulHbI"], "targetCurrencyCode": "zsT9OhjHKzmqRbfr", "targetNamespace": "y7jg0GeKnlAEdpDx", "thumbnailUrl": "JHotRYfxGFd44ohN", "useCount": 63}' \
    > test.out 2>&1
eval_tap $? 120 'UpdateItem' test.out

#- 121 DeleteItem
samples/cli/sample-apps Platform deleteItem \
    --itemId 'qFQFaycYbnpoIY7F' \
    --namespace $AB_NAMESPACE \
    --force 'true' \
    --storeId '6k3hX0zEOqBXSrO8' \
    > test.out 2>&1
eval_tap $? 121 'DeleteItem' test.out

#- 122 AcquireItem
samples/cli/sample-apps Platform acquireItem \
    --itemId '9l8JKkqMiC5SJWTS' \
    --namespace $AB_NAMESPACE \
    --body '{"count": 74, "orderNo": "Z9aSAfbtDtKVoYD5"}' \
    > test.out 2>&1
eval_tap $? 122 'AcquireItem' test.out

#- 123 GetApp
samples/cli/sample-apps Platform getApp \
    --itemId 'P0XDREpUJ47HgkQm' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --storeId 'CR7zyVfpjxCrOyLm' \
    > test.out 2>&1
eval_tap $? 123 'GetApp' test.out

#- 124 UpdateApp
samples/cli/sample-apps Platform updateApp \
    --itemId 'hyCRGnejoTS6Es5J' \
    --namespace $AB_NAMESPACE \
    --storeId 'FxBpDjd25OnYgGXN' \
    --body '{"carousel": [{"alt": "phMb4I0JzyERUUT3", "previewUrl": "KvsDFJAZzQOKGbxZ", "thumbnailUrl": "P2mVUtYfgiSAeOGj", "type": "image", "url": "50SeqE5cfULF9O6B", "videoSource": "youtube"}, {"alt": "Rk7CvS1oxdf0EJFW", "previewUrl": "NhqRrbjJ1ddRosGR", "thumbnailUrl": "nJTRjbOeDbmPen5P", "type": "image", "url": "bgvW0fDureZqVRC0", "videoSource": "vimeo"}, {"alt": "LRojytN9aZpu6bwf", "previewUrl": "YFwK0VEW13g6zWcj", "thumbnailUrl": "SEzBaVeyH1cd8KqA", "type": "image", "url": "HXySa6tWR3HjEmig", "videoSource": "youtube"}], "developer": "zMEcZJeZN8IjN6mn", "forumUrl": "UbVJf5tG9EzyubUL", "genres": ["Indie", "Action", "Action"], "localizations": {"2ca8j2jZj2dsDWpE": {"announcement": "W8cKpIkLkI5ENnb6", "slogan": "8XDJpLzykTUmbmDQ"}, "9Mk7UT7nL0PHcaqO": {"announcement": "LzYkmSWkgpXcU3wp", "slogan": "kGcVJSunor8A3avf"}, "55sJyagO2CM6HOwI": {"announcement": "k2Y8CV3iA1uiuBuX", "slogan": "uXqAVI6p1210peaj"}}, "platformRequirements": {"8YVn7sqOmjHGMF72": [{"additionals": "B5MWxayZew4seZlv", "directXVersion": "svFYm4H8DXik9VUD", "diskSpace": "hheIK1Fjn76S5WTY", "graphics": "NHZhwRBTg9ZH3inl", "label": "tqdzVEjr5tzZIkvJ", "osVersion": "CYuekf6jvDc5qY6f", "processor": "0bqMl6NIjqprQXyp", "ram": "6debWEnv4jF56TRJ", "soundCard": "lZ9e3FvZxsUSBDsr"}, {"additionals": "bpRDBHNakyrxEr8P", "directXVersion": "jsbHG2FuqgVi1I2T", "diskSpace": "ujr8odI6FPwoeT5b", "graphics": "5cBYZvdfQ2kGUmuH", "label": "FcwEywYhxXLzJi3e", "osVersion": "QyA3TsmQl7SXwY6f", "processor": "CxZomyonYk66KwuS", "ram": "3Q50L2tDJMFC9jSJ", "soundCard": "sLDHiZROzy7OsKcb"}, {"additionals": "DoR0kyoHvVCfI0sR", "directXVersion": "iZilqWfYeIMl5vgC", "diskSpace": "k04MqWdIxGt7TKZo", "graphics": "ZOTHWTJeDdxbGJUb", "label": "ePJ1k1mcAkCOqTGa", "osVersion": "TvSCbfDYbCMOHFGn", "processor": "v6XxACVHxugBvPkp", "ram": "MmdFzobEhbQQxeW9", "soundCard": "96Gs7k7Dm13YX1EV"}], "IZJThywUFZQcexjW": [{"additionals": "5KVDUK2aHCvE8sbQ", "directXVersion": "gksdj8epJL16tuKs", "diskSpace": "MTlzb1roC5P8oGKV", "graphics": "zBlXmlpxWByLZ62b", "label": "oXucDUPEQ2J5VlKX", "osVersion": "EqEuOeBAm4X8DaaW", "processor": "dahDtRnaFgAnYUol", "ram": "5NORq9TnhBEBnTAS", "soundCard": "QGURYGPaUZ85cCXJ"}, {"additionals": "txiwqzLbSmvkOVqn", "directXVersion": "k2tEVYJbOglsssRi", "diskSpace": "uhudttualTp8nByq", "graphics": "gN9TSCjwE3rLrUnn", "label": "Fjhof5XiiaMTubB1", "osVersion": "L6Z9mVjGXT7bu9SV", "processor": "nVRwZKFfVc01Rf7c", "ram": "GYjsXkX2w5NH277Z", "soundCard": "QRawulBCVSpcyEfD"}, {"additionals": "gjrRkYzP6D4YO6Xn", "directXVersion": "MxyIlSQLd0fttWp5", "diskSpace": "qc2ht9FrGtIlKlVk", "graphics": "uGMmVncHjpeeV37K", "label": "vM7N5t6WTCa89Y1q", "osVersion": "VErj3WCS101Njs9J", "processor": "nPbZRs9N1tOaieqD", "ram": "dsdwCtOOHdjIaQs7", "soundCard": "gFHipsYFpolq0FIr"}], "KAPaiKr7eie1QzXA": [{"additionals": "0wSmvmV19syIIiJO", "directXVersion": "CK1zDE3KMUzKdAMI", "diskSpace": "rxiFbuWtv4fncCJq", "graphics": "ZvSVZQeBwUomh3Eu", "label": "c2puJXTXOz1JKemv", "osVersion": "aKOkPTDXAF12QfC9", "processor": "WjEgHFiL9u8xrLLU", "ram": "8zOTTZo3HG9Nrc4v", "soundCard": "uboqp1elWRi1DnJd"}, {"additionals": "mN8qMg5vjWqxc5rV", "directXVersion": "6YnRoA08yCTrQClR", "diskSpace": "RL8R29sk2PRalvBE", "graphics": "ZyU3Gmeu3P4YGNg2", "label": "XBx7OHs6CO80zWSl", "osVersion": "wTs0kLO1qrd3cqa9", "processor": "drhqIccdX3aQv4xg", "ram": "Dvifsq6Gaf2urBw1", "soundCard": "qRQxU6JzEndMUwCI"}, {"additionals": "LRyTlDXtCwKkkmSS", "directXVersion": "dCUl8jACEsiyQeCu", "diskSpace": "YzYA1PCwp28XD5P3", "graphics": "wGMeCx0GpPDqrCEx", "label": "pVWKaf8oKb3muKwy", "osVersion": "OP2J5jdACPVYOfXt", "processor": "dAjCBeYnM87F59C5", "ram": "sGgqY4s3GJuvJKSv", "soundCard": "rOjUXRV0mUyuBJrT"}]}, "platforms": ["Android", "MacOS", "MacOS"], "players": ["MMO", "MMO", "Coop"], "primaryGenre": "FreeToPlay", "publisher": "5iw3zCDLBTWGdY7u", "releaseDate": "1996-03-06T00:00:00Z", "websiteUrl": "6rPqTOSW6pItZvYF"}' \
    > test.out 2>&1
eval_tap $? 124 'UpdateApp' test.out

#- 125 DisableItem
samples/cli/sample-apps Platform disableItem \
    --itemId '4TS6q46N8730FhTm' \
    --namespace $AB_NAMESPACE \
    --storeId 'kV7ALWftScMkeXmC' \
    > test.out 2>&1
eval_tap $? 125 'DisableItem' test.out

#- 126 GetItemDynamicData
samples/cli/sample-apps Platform getItemDynamicData \
    --itemId 'qvn8aABgoDEd72Xu' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 126 'GetItemDynamicData' test.out

#- 127 EnableItem
samples/cli/sample-apps Platform enableItem \
    --itemId '0AqvMiATPXNdq4y5' \
    --namespace $AB_NAMESPACE \
    --storeId 'KRUFRf8T4aWgNquF' \
    > test.out 2>&1
eval_tap $? 127 'EnableItem' test.out

#- 128 FeatureItem
samples/cli/sample-apps Platform featureItem \
    --feature 'cS1fup0YugBd3e70' \
    --itemId 'GcvBRevemXVnv4FZ' \
    --namespace $AB_NAMESPACE \
    --storeId 'M7lpQKp73gTmDvLW' \
    > test.out 2>&1
eval_tap $? 128 'FeatureItem' test.out

#- 129 DefeatureItem
samples/cli/sample-apps Platform defeatureItem \
    --feature 'PxnwUgSZKknTegVd' \
    --itemId 'dz4GlKaSaUiwsEfF' \
    --namespace $AB_NAMESPACE \
    --storeId 'VHcWWfJ6DreGqU5E' \
    > test.out 2>&1
eval_tap $? 129 'DefeatureItem' test.out

#- 130 GetLocaleItem
samples/cli/sample-apps Platform getLocaleItem \
    --itemId 'nFGZiDisThCDkttt' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --language 'GvNW0rYBPVebcKIY' \
    --populateBundle 'false' \
    --region 'e0mvyrpTl0syUBNa' \
    --storeId 'dJyx24zH9fF1yU0x' \
    > test.out 2>&1
eval_tap $? 130 'GetLocaleItem' test.out

#- 131 UpdateItemPurchaseCondition
samples/cli/sample-apps Platform updateItemPurchaseCondition \
    --itemId 'w85wxr61KoGlAhVn' \
    --namespace $AB_NAMESPACE \
    --storeId '6SiM0TzsiAhXV2Mk' \
    --body '{"purchaseCondition": {"conditionGroups": [{"operator": "and", "predicates": [{"anyOf": 95, "comparison": "isGreaterThanOrEqual", "name": "XV5nmq7CUc6RtPRY", "predicateType": "SeasonPassPredicate", "value": "A918igSksloDGxkN", "values": ["ClNAjJY9AFXikcWU", "Z3hLcXA5PFbpEHhc", "t1nQH5txX3THqRVd"]}, {"anyOf": 71, "comparison": "isNot", "name": "2Vq671XevAr4Y1D4", "predicateType": "SeasonTierPredicate", "value": "mVWRmwAb1Xe5w2Fy", "values": ["gonMkcnH9bYa46y2", "bsWO1umn5FQqByZd", "Hz6JoCzo3UZZvABB"]}, {"anyOf": 24, "comparison": "isNot", "name": "yvM6a8AB0f7Lsp5y", "predicateType": "SeasonTierPredicate", "value": "m7HWYbFBwrPJqCMP", "values": ["OlnYje4heJO5qsOx", "qe50It7CNLZ3LqGQ", "JXZtp4PS390KUqrR"]}]}, {"operator": "and", "predicates": [{"anyOf": 90, "comparison": "isGreaterThanOrEqual", "name": "qA50twchR92gbRdz", "predicateType": "EntitlementPredicate", "value": "Zm0Cxp81SKcaG1sh", "values": ["n6a35TdhyGTzl2Jc", "5fZ29zzHZPdiu3SS", "JA9lGxbrne1Wwi7h"]}, {"anyOf": 67, "comparison": "isNot", "name": "a5BxK5rTg43KlCLB", "predicateType": "SeasonPassPredicate", "value": "Pgb5WAesoeijrGln", "values": ["rXDKdYdTFq5Q63P1", "PXzjLNlyGgoWGxju", "pB0JyTGUub04iWcl"]}, {"anyOf": 27, "comparison": "isLessThan", "name": "WIZAesOQZhgDordM", "predicateType": "SeasonTierPredicate", "value": "ir8Ye81sqp5VGUqY", "values": ["t2PoKLBg1XdN6P7Y", "6SKF8ajCvogWo86P", "Ub9HvXKf1qgDvX2C"]}]}, {"operator": "and", "predicates": [{"anyOf": 60, "comparison": "isGreaterThan", "name": "TUimpWDH5j0eCDif", "predicateType": "SeasonTierPredicate", "value": "uEoooOxCLIm5ewgy", "values": ["4QrJr44YCkZGnwNy", "gqzhL1oAdhNaAfOn", "Fjf2kAhSLBmCqoqK"]}, {"anyOf": 19, "comparison": "isLessThan", "name": "CKiGZ70fak5xXucn", "predicateType": "EntitlementPredicate", "value": "ooeGXraQXtQkw5bZ", "values": ["yaEp1KIq60nyXKXr", "QaENBD9XstAZPSaP", "70iHFWtISb7dJ3pt"]}, {"anyOf": 89, "comparison": "is", "name": "LdRVvRf8lVPkH5UU", "predicateType": "EntitlementPredicate", "value": "WejSu3LWoTTSLstf", "values": ["Yy7L7FEqgrEwmB9n", "xPnCQGPwQOZ4ZKRi", "OoMjcHXa2vidoEGg"]}]}]}}' \
    > test.out 2>&1
eval_tap $? 131 'UpdateItemPurchaseCondition' test.out

#- 132 ReturnItem
samples/cli/sample-apps Platform returnItem \
    --itemId '98OmBIZZhPaTNoDh' \
    --namespace $AB_NAMESPACE \
    --body '{"orderNo": "xLEY4JBIU6cjYxwJ"}' \
    > test.out 2>&1
eval_tap $? 132 'ReturnItem' test.out

#- 133 QueryKeyGroups
samples/cli/sample-apps Platform queryKeyGroups \
    --namespace $AB_NAMESPACE \
    --limit '69' \
    --name 'sNIzDqKw3Sf4Ipyo' \
    --offset '2' \
    --tag 'uTZVWWLNBXsLm59v' \
    > test.out 2>&1
eval_tap $? 133 'QueryKeyGroups' test.out

#- 134 CreateKeyGroup
samples/cli/sample-apps Platform createKeyGroup \
    --namespace $AB_NAMESPACE \
    --body '{"description": "5FtuZQiR7cfe65jB", "name": "ts3DFsxYePD2rY86", "status": "ACTIVE", "tags": ["H9f7mnUpJbV78iFc", "RdPZm7FuAWuTwd9U", "RQUAjLgIjSyVsPRD"]}' \
    > test.out 2>&1
eval_tap $? 134 'CreateKeyGroup' test.out

#- 135 GetKeyGroupByBoothName
eval_tap 0 135 'GetKeyGroupByBoothName # SKIP deprecated' test.out

#- 136 GetKeyGroup
samples/cli/sample-apps Platform getKeyGroup \
    --keyGroupId 'jl3hQIk5vQuCzoTw' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 136 'GetKeyGroup' test.out

#- 137 UpdateKeyGroup
samples/cli/sample-apps Platform updateKeyGroup \
    --keyGroupId 'GvpmKm6Ddcr4V5UA' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "RYZq15X8HjhE1jZK", "name": "0LzyLZLsmTeAs337", "status": "INACTIVE", "tags": ["eDHzImGk1uMZRXWe", "g0Jm6a98yLehmRhR", "ISFKIOQbMKRhzEN2"]}' \
    > test.out 2>&1
eval_tap $? 137 'UpdateKeyGroup' test.out

#- 138 GetKeyGroupDynamic
samples/cli/sample-apps Platform getKeyGroupDynamic \
    --keyGroupId 'dQwUpzESqoEaItoY' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 138 'GetKeyGroupDynamic' test.out

#- 139 ListKeys
samples/cli/sample-apps Platform listKeys \
    --keyGroupId '4bf9rcQi43ECW5MC' \
    --namespace $AB_NAMESPACE \
    --limit '3' \
    --offset '41' \
    --status 'ACTIVE' \
    > test.out 2>&1
eval_tap $? 139 'ListKeys' test.out

#- 140 UploadKeys
samples/cli/sample-apps Platform uploadKeys \
    --keyGroupId 'IhJJI5LwHqgOJqwc' \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 140 'UploadKeys' test.out

#- 141 QueryOrders
samples/cli/sample-apps Platform queryOrders \
    --namespace $AB_NAMESPACE \
    --endTime 'PSvfXf2ZGc0IkpEO' \
    --limit '83' \
    --offset '10' \
    --orderNos '["13TVwN6sCbmfDqQe", "MoSIbtA1dyCDd9vJ", "idffUVYzSCtCoRQ7"]' \
    --sortBy 'Jul74WVywrj5ILGO' \
    --startTime 'qjS21yRW18frSxzM' \
    --status 'CLOSED' \
    --withTotal 'false' \
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
    --orderNo 'IbSrk7wKqXvCyjhL' \
    > test.out 2>&1
eval_tap $? 143 'GetOrder' test.out

#- 144 RefundOrder
samples/cli/sample-apps Platform refundOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'it3aZ9A7kzKCgiof' \
    --body '{"description": "maBWiJwabSzq5fP9"}' \
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
    --body '{"dryRun": false, "notifyUrl": "wtguQuMId3QaMRsG", "privateKey": "QG6bWYuG558DyMwP"}' \
    > test.out 2>&1
eval_tap $? 146 'UpdatePaymentCallbackConfig' test.out

#- 147 QueryPaymentNotifications
samples/cli/sample-apps Platform queryPaymentNotifications \
    --namespace $AB_NAMESPACE \
    --endDate 'zOlmTrgEQKEN1d0W' \
    --externalId '2PsXXTIMUA3H6Mf7' \
    --limit '84' \
    --notificationSource 'STRIPE' \
    --notificationType 'SkrHxBnI88UF9RgA' \
    --offset '81' \
    --paymentOrderNo 'OwccHYPA6yeiBADK' \
    --startDate '3V2ul02rwmwqRoCh' \
    --status 'WARN' \
    > test.out 2>&1
eval_tap $? 147 'QueryPaymentNotifications' test.out

#- 148 QueryPaymentOrders
samples/cli/sample-apps Platform queryPaymentOrders \
    --namespace $AB_NAMESPACE \
    --channel 'EXTERNAL' \
    --extTxId 'cwx3UCBKOxRJVzKQ' \
    --limit '9' \
    --offset '99' \
    --status 'NOTIFICATION_OF_CHARGEBACK' \
    > test.out 2>&1
eval_tap $? 148 'QueryPaymentOrders' test.out

#- 149 CreatePaymentOrderByDedicated
samples/cli/sample-apps Platform createPaymentOrderByDedicated \
    --namespace $AB_NAMESPACE \
    --body '{"currencyCode": "UoF2ETZXjbkij3ET", "currencyNamespace": "iQSj00v6vAx4gNKL", "customParameters": {"kM1P6vC7YIaDykOZ": {}, "K3XHbVB8xhqRHDKV": {}, "0ctyndabmcHxKuev": {}}, "description": "kO2wFOj3zfsET3qH", "extOrderNo": "e9BZpOWZ4h4Xze9f", "extUserId": "afYdRY55HdcK1yeB", "itemType": "INGAMEITEM", "language": "Lbk-NKiy-OG", "metadata": {"jZ2MtOU31CjJDsAv": "NvW7TOdzj5GkpjqW", "RsjCkx4rCTi4g6pT": "2flbPvxe6G5ldx6D", "C4wzngCw74EbgAJe": "eFYgYtMLZjWf6MlH"}, "notifyUrl": "EJjzdfAuFRTnatC9", "omitNotification": false, "platform": "9GZwC7oF1pVHHXz2", "price": 55, "recurringPaymentOrderNo": "MINwkU5F9aY0iWBA", "region": "GJ8l3cuO1v6DX2IH", "returnUrl": "1sMZAoCmnInMqmDB", "sandbox": true, "sku": "rINtF5FSLQzxGKSH", "subscriptionId": "Oex8vUqvWdFdOEkk", "targetNamespace": "XCzIvRwvhXStWcKd", "targetUserId": "NRkmtxu3iErCBc0i", "title": "xZOAxvvvB8Qyab3z"}' \
    > test.out 2>&1
eval_tap $? 149 'CreatePaymentOrderByDedicated' test.out

#- 150 ListExtOrderNoByExtTxId
samples/cli/sample-apps Platform listExtOrderNoByExtTxId \
    --namespace $AB_NAMESPACE \
    --extTxId 'akYDGM9CALJZiG3a' \
    > test.out 2>&1
eval_tap $? 150 'ListExtOrderNoByExtTxId' test.out

#- 151 GetPaymentOrder
samples/cli/sample-apps Platform getPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'y2YKWe8KNyJe36VL' \
    > test.out 2>&1
eval_tap $? 151 'GetPaymentOrder' test.out

#- 152 ChargePaymentOrder
samples/cli/sample-apps Platform chargePaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'yMi873WE6HmHSUwf' \
    --body '{"extTxId": "AHWiUBAgyQ1Px6ol", "paymentMethod": "zMh79KcdqLCmBBIL", "paymentProvider": "CHECKOUT"}' \
    > test.out 2>&1
eval_tap $? 152 'ChargePaymentOrder' test.out

#- 153 RefundPaymentOrderByDedicated
samples/cli/sample-apps Platform refundPaymentOrderByDedicated \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'tLZuUhrR7DSZcnYN' \
    --body '{"description": "H0wHfYPFsmQKvE1n"}' \
    > test.out 2>&1
eval_tap $? 153 'RefundPaymentOrderByDedicated' test.out

#- 154 SimulatePaymentOrderNotification
samples/cli/sample-apps Platform simulatePaymentOrderNotification \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'nO14LJ1VzFEJRXww' \
    --body '{"amount": 80, "currencyCode": "DJnXxNKxXdy3WcAk", "notifyType": "REFUND", "paymentProvider": "ADYEN", "salesTax": 19, "vat": 43}' \
    > test.out 2>&1
eval_tap $? 154 'SimulatePaymentOrderNotification' test.out

#- 155 GetPaymentOrderChargeStatus
samples/cli/sample-apps Platform getPaymentOrderChargeStatus \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo '4lG3c3oz1U0qyS3m' \
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
    --platform 'Other' \
    --body '{"allowedPlatformOrigins": ["Nintendo", "Epic", "Oculus"]}' \
    > test.out 2>&1
eval_tap $? 157 'UpdatePlatformEntitlementConfig' test.out

#- 158 GetPlatformWalletConfig
samples/cli/sample-apps Platform getPlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Oculus' \
    > test.out 2>&1
eval_tap $? 158 'GetPlatformWalletConfig' test.out

#- 159 UpdatePlatformWalletConfig
samples/cli/sample-apps Platform updatePlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Other' \
    --body '{"allowedBalanceOrigins": ["GooglePlay", "Playstation", "Playstation"]}' \
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
    --body '{"entitlement": {"consumable": {"enabled": true, "strategy": "CUSTOM"}, "durable": {"enabled": false, "strategy": "CUSTOM"}}, "wallet": {"enabled": false, "strategy": "ALWAYS_REVOKE"}}' \
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
    --endTime '5ALWHPug5axNM8JN' \
    --limit '50' \
    --offset '75' \
    --source 'ORDER' \
    --startTime '7y3OucjrV09ieKzO' \
    --status 'SUCCESS' \
    --transactionId 'ptKlqyuXGKZqamut' \
    --userId 'dJSIopPdgsvhuIdB' \
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
    --body '{"appConfig": {"appName": "FWaGbUUnUthpNVq9"}, "customConfig": {"connectionType": "INSECURE", "grpcServerAddress": "Sv5Hn2FJcjNb55W2"}, "extendType": "CUSTOM"}' \
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
    --body '{"description": "O4yt3tkmw2d9r9rU", "eventTopic": "o3896PysW2CKHIuX", "maxAwarded": 52, "maxAwardedPerUser": 12, "namespaceExpression": "6qW77YoD729ZZ7Nw", "rewardCode": "G2mU8O0zHCciWOVA", "rewardConditions": [{"condition": "RrGkfPTflGSYV6XU", "conditionName": "0WX58G3Tc1q4DgYr", "eventName": "afV1qsngR8k8C8ZZ", "rewardItems": [{"duration": 8, "endDate": "1984-04-27T00:00:00Z", "itemId": "vPf70UyDxW6mPGmv", "quantity": 51}, {"duration": 64, "endDate": "1994-01-14T00:00:00Z", "itemId": "9YDBXslIFRo9AN0G", "quantity": 97}, {"duration": 39, "endDate": "1992-06-29T00:00:00Z", "itemId": "j092tMXVs414zio8", "quantity": 97}]}, {"condition": "7Lvbb1WfhEQXklPd", "conditionName": "5T7zvhtZtbP83Yi9", "eventName": "llEyzOX690hs1X0O", "rewardItems": [{"duration": 75, "endDate": "1998-11-04T00:00:00Z", "itemId": "m8z8W2aaNZzEiBsM", "quantity": 68}, {"duration": 58, "endDate": "1979-05-28T00:00:00Z", "itemId": "h9tft8BxTAIFebrS", "quantity": 18}, {"duration": 58, "endDate": "1982-07-05T00:00:00Z", "itemId": "EfFFIqnKuwqmuGz5", "quantity": 82}]}, {"condition": "T0YLkadfyt7h6Ole", "conditionName": "HjHnEbslMQltF6wJ", "eventName": "kwN2VT9TcyTbhoxJ", "rewardItems": [{"duration": 65, "endDate": "1978-03-10T00:00:00Z", "itemId": "IiKad5N6GSQBCXVn", "quantity": 48}, {"duration": 72, "endDate": "1974-05-19T00:00:00Z", "itemId": "5s9cw7OZE7qp4Kb0", "quantity": 66}, {"duration": 66, "endDate": "1976-04-04T00:00:00Z", "itemId": "WDgpyI58UjPXXl4a", "quantity": 97}]}], "userIdExpression": "fM9TkoF4OcP1C4wz"}' \
    > test.out 2>&1
eval_tap $? 169 'CreateReward' test.out

#- 170 QueryRewards
samples/cli/sample-apps Platform queryRewards \
    --namespace $AB_NAMESPACE \
    --eventTopic 'L6WTC0pg3rqB5yjJ' \
    --limit '4' \
    --offset '27' \
    --sortBy '["rewardCode:desc", "rewardCode", "namespace"]' \
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
    --replaceExisting 'false' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 172 'ImportRewards' test.out

#- 173 GetReward
samples/cli/sample-apps Platform getReward \
    --namespace $AB_NAMESPACE \
    --rewardId 'VtPWLGzaLatVsQdh' \
    > test.out 2>&1
eval_tap $? 173 'GetReward' test.out

#- 174 UpdateReward
samples/cli/sample-apps Platform updateReward \
    --namespace $AB_NAMESPACE \
    --rewardId 'bbNQRMP4zlg7GX1k' \
    --body '{"description": "HzgfrxqiTweqTAF4", "eventTopic": "Pp3fcrd4DwzIYeKp", "maxAwarded": 44, "maxAwardedPerUser": 80, "namespaceExpression": "qkdRBgdiZY46kLzG", "rewardCode": "a60yKD36eSxAOwBs", "rewardConditions": [{"condition": "5USUKzAL7EyUxS4W", "conditionName": "nNCuWqZ0AA0EIUbu", "eventName": "vZqcJvQfYpmQaTjR", "rewardItems": [{"duration": 79, "endDate": "1991-12-30T00:00:00Z", "itemId": "eIlLY2JYIeVVMRk6", "quantity": 100}, {"duration": 65, "endDate": "1981-11-29T00:00:00Z", "itemId": "gaW7c3pLIPPR5aqW", "quantity": 32}, {"duration": 9, "endDate": "1987-06-01T00:00:00Z", "itemId": "zUxOzl3E5fSf3BuG", "quantity": 77}]}, {"condition": "p1rsBtUJjWFhepuH", "conditionName": "GzljknZjhGSs5dpN", "eventName": "VuZ4kHLKHrCE6M7C", "rewardItems": [{"duration": 13, "endDate": "1987-04-21T00:00:00Z", "itemId": "QVgVrOyEDJfb3UpS", "quantity": 48}, {"duration": 32, "endDate": "1990-01-04T00:00:00Z", "itemId": "q2BnVXDdspxs5oEb", "quantity": 55}, {"duration": 22, "endDate": "1990-03-27T00:00:00Z", "itemId": "zvoWKwLTmvd18sr0", "quantity": 8}]}, {"condition": "rBiF9hU5lckoTLsp", "conditionName": "gbUR9l3lLPSC3NJL", "eventName": "qHF5yjrplyEkDjaM", "rewardItems": [{"duration": 0, "endDate": "1972-08-28T00:00:00Z", "itemId": "h2w5VyrgAJYlKmKx", "quantity": 73}, {"duration": 30, "endDate": "1977-06-19T00:00:00Z", "itemId": "GRKyqNl3udysXvOa", "quantity": 88}, {"duration": 36, "endDate": "1987-11-25T00:00:00Z", "itemId": "AsITRwopZpn3HvHK", "quantity": 25}]}], "userIdExpression": "bkR774YrydXJVSxo"}' \
    > test.out 2>&1
eval_tap $? 174 'UpdateReward' test.out

#- 175 DeleteReward
samples/cli/sample-apps Platform deleteReward \
    --namespace $AB_NAMESPACE \
    --rewardId 'xoJL2NBnGudj9W2Q' \
    > test.out 2>&1
eval_tap $? 175 'DeleteReward' test.out

#- 176 CheckEventCondition
samples/cli/sample-apps Platform checkEventCondition \
    --namespace $AB_NAMESPACE \
    --rewardId 'Q0fcym741OQ4MANw' \
    --body '{"payload": {"aARIlZLG4lEXvdDB": {}, "ucIL2WKMNLkvCGEY": {}, "TrnWVppy82AqKUuM": {}}}' \
    > test.out 2>&1
eval_tap $? 176 'CheckEventCondition' test.out

#- 177 DeleteRewardConditionRecord
samples/cli/sample-apps Platform deleteRewardConditionRecord \
    --namespace $AB_NAMESPACE \
    --rewardId 'n4wCmtiLpZpqtZ7q' \
    --body '{"conditionName": "RrpljjvJw8RFpUQG", "userId": "Ioby9koMp4xkIgzf"}' \
    > test.out 2>&1
eval_tap $? 177 'DeleteRewardConditionRecord' test.out

#- 178 QuerySections
samples/cli/sample-apps Platform querySections \
    --namespace $AB_NAMESPACE \
    --end 'u8f6sNBhc9HAhzAT' \
    --limit '63' \
    --offset '25' \
    --start 'njCXxg4HbgHswIhQ' \
    --storeId 'FwDFZK5lo4YUtbGz' \
    --viewId 'O0bjbKsVNAJ3Dmrf' \
    > test.out 2>&1
eval_tap $? 178 'QuerySections' test.out

#- 179 CreateSection
samples/cli/sample-apps Platform createSection \
    --namespace $AB_NAMESPACE \
    --storeId 'wfuN6PHhbvOo8qzm' \
    --body '{"active": false, "displayOrder": 10, "endDate": "1990-06-24T00:00:00Z", "ext": {"xZGmSMgIL6hsEQ0O": {}, "t5t4o8qzjjP0k11G": {}, "XurBjrxNoHNoY12N": {}}, "fixedPeriodRotationConfig": {"backfillType": "NONE", "duration": 10, "itemCount": 43, "rule": "SEQUENCE"}, "items": [{"id": "fKbiyhenpWIkYc6w", "sku": "cPm3JQuJHFwOBETo"}, {"id": "c93X9kFlYciVIKxZ", "sku": "4UWllv0c3fHZwDgC"}, {"id": "tPGE54KArvgpeTe6", "sku": "Ra559nGirZ38Ry9w"}], "localizations": {"TRCEX7lOFIUXFyuw": {"description": "9l3Ou2yfn8um18OC", "localExt": {"Zw3vL7hfA5RpFN8w": {}, "e5fG5i0Wn3XpKRte": {}, "GCoiXsLKDzUMAyQs": {}}, "longDescription": "FO2bax1qxXUp0CnU", "title": "ytqhB5StrFRVlqPx"}, "L0vLcFOsG1w4CB7F": {"description": "XTcXjA5VJKQZS9gU", "localExt": {"SCVpBYcuaXS3pP9s": {}, "dfYdQn3cg5q9f9x8": {}, "QXfynZHenvitsE9Y": {}}, "longDescription": "JlaO4ZVul6H9yuqE", "title": "cBxV6omzNoy8JOZX"}, "49YBkinhYKe193GI": {"description": "edLSfksB72k0IDOw", "localExt": {"Zwrgsgg5KO9IAMTz": {}, "N8cCg05N8XfYzFNx": {}, "oFp5wqE6JF69ttpT": {}}, "longDescription": "lJNgoiTdm5dpl6in", "title": "UUmmDN2OlqLHrJS6"}}, "name": "b716hi7246RymxoB", "rotationType": "NONE", "startDate": "1994-02-05T00:00:00Z", "viewId": "OReNCTyV8f7DCTcZ"}' \
    > test.out 2>&1
eval_tap $? 179 'CreateSection' test.out

#- 180 PurgeExpiredSection
samples/cli/sample-apps Platform purgeExpiredSection \
    --namespace $AB_NAMESPACE \
    --storeId 'WqYUS627lO3X6ZCV' \
    > test.out 2>&1
eval_tap $? 180 'PurgeExpiredSection' test.out

#- 181 GetSection
samples/cli/sample-apps Platform getSection \
    --namespace $AB_NAMESPACE \
    --sectionId 'mlJHUM6asWTPV9dy' \
    --storeId 'X5f4M4gf2yyEADfy' \
    > test.out 2>&1
eval_tap $? 181 'GetSection' test.out

#- 182 UpdateSection
samples/cli/sample-apps Platform updateSection \
    --namespace $AB_NAMESPACE \
    --sectionId '39TLVl6JNj7XggMa' \
    --storeId 'QBl5273yC3wTfWrx' \
    --body '{"active": false, "displayOrder": 37, "endDate": "1993-02-24T00:00:00Z", "ext": {"YRnck9B70r77eoFG": {}, "pL5xmst1T2gt9pNP": {}, "6ISKliEkBnf2dZHI": {}}, "fixedPeriodRotationConfig": {"backfillType": "CUSTOM", "duration": 77, "itemCount": 5, "rule": "SEQUENCE"}, "items": [{"id": "GxpfKQ7WnhnPyfIa", "sku": "kJ6zsYPwof7qdeVv"}, {"id": "GJRcr7LuhjVsoULp", "sku": "soLpOApomRkdTrcb"}, {"id": "IoNWNIBPVUkNvWCi", "sku": "B7latLdgJcYHS5dJ"}], "localizations": {"uyK4WezaLWtJbAS2": {"description": "QEWfFcCfZaBH2MOl", "localExt": {"rmLp7f9hvRsyiL9A": {}, "8oYCalEOe41Bi9hb": {}, "v7k5FemKVzWRkdty": {}}, "longDescription": "FmW5SlKdE9H3TOgT", "title": "9A41TrzFjUYxsU5S"}, "pL9oHGfl4n8Nr2Mt": {"description": "80mXRTPdrqrLNANQ", "localExt": {"nvYiWPnF7KRF1AA9": {}, "47RetV8vLNwMA5O2": {}, "3BPluOoZhYRZjJTa": {}}, "longDescription": "s7NlDcDLwTBtonCK", "title": "cxuJS27Ckm640Q2p"}, "2Dm7ozCylRkJk6Kf": {"description": "wKxKH7SMoYkzP3O5", "localExt": {"lGSWsWYwf4TUwZDg": {}, "qYw5cEyO7Yc4zhFh": {}, "liORQsiPGPdeOHgM": {}}, "longDescription": "QMlhbrSKW9iW0OV5", "title": "8AQ3QotatzFPrrzE"}}, "name": "N9OdljCXQ7UanaP8", "rotationType": "FIXED_PERIOD", "startDate": "1975-08-27T00:00:00Z", "viewId": "FuXmgwhwhoQMpRCq"}' \
    > test.out 2>&1
eval_tap $? 182 'UpdateSection' test.out

#- 183 DeleteSection
samples/cli/sample-apps Platform deleteSection \
    --namespace $AB_NAMESPACE \
    --sectionId 'uiEfwA9NkGlmyv2C' \
    --storeId 'oEV90FwGQOcMLzLT' \
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
    --body '{"defaultLanguage": "TmwDVpZszhNoyEVK", "defaultRegion": "mS2cNeM1qIF2CNER", "description": "lqQ2Sen9bb5D4Zg6", "supportedLanguages": ["c8b4pPq4TAoYaC1g", "bq5S1TmPzqTCm0IU", "WBepg2SUYBA2pDfU"], "supportedRegions": ["H6zUfFLoQgTGOqxy", "IPw6yzh3rWVXaCni", "TjqNdW7WbIuQ8kas"], "title": "V0AzZNfIOJcsmfmx"}' \
    > test.out 2>&1
eval_tap $? 185 'CreateStore' test.out

#- 186 ImportStore
eval_tap 0 186 'ImportStore # SKIP deprecated' test.out

#- 187 GetPublishedStore
samples/cli/sample-apps Platform getPublishedStore \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 187 'GetPublishedStore' test.out

#- 188 DeletePublishedStore
samples/cli/sample-apps Platform deletePublishedStore \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 188 'DeletePublishedStore' test.out

#- 189 GetPublishedStoreBackup
samples/cli/sample-apps Platform getPublishedStoreBackup \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 189 'GetPublishedStoreBackup' test.out

#- 190 RollbackPublishedStore
samples/cli/sample-apps Platform rollbackPublishedStore \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 190 'RollbackPublishedStore' test.out

#- 191 GetStore
samples/cli/sample-apps Platform getStore \
    --namespace $AB_NAMESPACE \
    --storeId 'ygOSSjTFQ7d6EOSW' \
    > test.out 2>&1
eval_tap $? 191 'GetStore' test.out

#- 192 UpdateStore
samples/cli/sample-apps Platform updateStore \
    --namespace $AB_NAMESPACE \
    --storeId 'sDOhJ2dKI6UeVQ0Q' \
    --body '{"defaultLanguage": "rtY9TNMXvbqTKYdH", "defaultRegion": "wKk8yAqQMDKn2oSC", "description": "9ckdOK6ifUPH7BL7", "supportedLanguages": ["UJBV7Pzm1w6dUmFQ", "RtMht6ZnOH0cQVK1", "dfQALlG3FC8xTEgG"], "supportedRegions": ["UbKdiDwr5byFh55l", "fRMdWx0Of5zqpcKx", "mjAWULxY8Dq8e8Na"], "title": "wAD5EPVKHixjVyc1"}' \
    > test.out 2>&1
eval_tap $? 192 'UpdateStore' test.out

#- 193 DeleteStore
samples/cli/sample-apps Platform deleteStore \
    --namespace $AB_NAMESPACE \
    --storeId 'VSDVq1inO39tzPhB' \
    > test.out 2>&1
eval_tap $? 193 'DeleteStore' test.out

#- 194 QueryChanges
samples/cli/sample-apps Platform queryChanges \
    --namespace $AB_NAMESPACE \
    --storeId 'AShwPXWXh9DhsP12' \
    --action 'CREATE' \
    --itemSku 'JvWnpdusEX4Vgfaj' \
    --itemType 'SUBSCRIPTION' \
    --limit '85' \
    --offset '57' \
    --selected 'true' \
    --sortBy '["createdAt:desc", "updatedAt:asc"]' \
    --status 'UNPUBLISHED' \
    --type 'VIEW' \
    --updatedAtEnd 'DKkUbwvDQQH2Bqab' \
    --updatedAtStart 'ME9D4dDHBjtPMOUh' \
    --withTotal 'false' \
    > test.out 2>&1
eval_tap $? 194 'QueryChanges' test.out

#- 195 PublishAll
samples/cli/sample-apps Platform publishAll \
    --namespace $AB_NAMESPACE \
    --storeId 'rn9uYWbhiCvYDofa' \
    > test.out 2>&1
eval_tap $? 195 'PublishAll' test.out

#- 196 PublishSelected
samples/cli/sample-apps Platform publishSelected \
    --namespace $AB_NAMESPACE \
    --storeId 'pxYM9OQW2vaWzLZ1' \
    > test.out 2>&1
eval_tap $? 196 'PublishSelected' test.out

#- 197 SelectAllRecords
samples/cli/sample-apps Platform selectAllRecords \
    --namespace $AB_NAMESPACE \
    --storeId '3AGFvmI7MSrXpGBg' \
    > test.out 2>&1
eval_tap $? 197 'SelectAllRecords' test.out

#- 198 SelectAllRecordsByCriteria
samples/cli/sample-apps Platform selectAllRecordsByCriteria \
    --namespace $AB_NAMESPACE \
    --storeId 'O1ydQGUhQy3T2w2g' \
    --action 'CREATE' \
    --itemSku 'SInd6O8xAOz0LUXX' \
    --itemType 'LOOTBOX' \
    --selected 'true' \
    --type 'STORE' \
    --updatedAtEnd 'yimHUipTgVngry7O' \
    --updatedAtStart 'cAiVB7dQQunbNLek' \
    > test.out 2>&1
eval_tap $? 198 'SelectAllRecordsByCriteria' test.out

#- 199 GetStatistic
samples/cli/sample-apps Platform getStatistic \
    --namespace $AB_NAMESPACE \
    --storeId 'Cod8CK2cNsYz2CUS' \
    --action 'DELETE' \
    --itemSku 'qa6xJUy6WUwzfyAd' \
    --itemType 'EXTENSION' \
    --type 'ITEM' \
    --updatedAtEnd '127FKYI156z4WNJe' \
    --updatedAtStart 'd5k2RKxnaOp0eJsU' \
    > test.out 2>&1
eval_tap $? 199 'GetStatistic' test.out

#- 200 UnselectAllRecords
samples/cli/sample-apps Platform unselectAllRecords \
    --namespace $AB_NAMESPACE \
    --storeId 'fCRLss7Dt9nKLhFF' \
    > test.out 2>&1
eval_tap $? 200 'UnselectAllRecords' test.out

#- 201 SelectRecord
samples/cli/sample-apps Platform selectRecord \
    --changeId 'rc2vYD58NfoLPltn' \
    --namespace $AB_NAMESPACE \
    --storeId 'UKwwQKuReMBLTdAb' \
    > test.out 2>&1
eval_tap $? 201 'SelectRecord' test.out

#- 202 UnselectRecord
samples/cli/sample-apps Platform unselectRecord \
    --changeId 'Y6c2mevqCcPaFvZ0' \
    --namespace $AB_NAMESPACE \
    --storeId 'EONJZXP6Ylnchjl0' \
    > test.out 2>&1
eval_tap $? 202 'UnselectRecord' test.out

#- 203 CloneStore
samples/cli/sample-apps Platform cloneStore \
    --namespace $AB_NAMESPACE \
    --storeId 'HTCdnOACfQrDh4BA' \
    --targetStoreId 'gA6NodIP7SuguvgL' \
    > test.out 2>&1
eval_tap $? 203 'CloneStore' test.out

#- 204 ExportStore
eval_tap 0 204 'ExportStore # SKIP deprecated' test.out

#- 205 QuerySubscriptions
samples/cli/sample-apps Platform querySubscriptions \
    --namespace $AB_NAMESPACE \
    --chargeStatus 'CHARGED' \
    --itemId 'da04ikdGe8k6r4wK' \
    --limit '92' \
    --offset '57' \
    --sku 'udVJuAjVhg9dcBCR' \
    --status 'EXPIRED' \
    --subscribedBy 'USER' \
    --userId 'kY4pM3hj3kRHjPqX' \
    > test.out 2>&1
eval_tap $? 205 'QuerySubscriptions' test.out

#- 206 RecurringChargeSubscription
samples/cli/sample-apps Platform recurringChargeSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'BabwecWR0o9YKd0A' \
    > test.out 2>&1
eval_tap $? 206 'RecurringChargeSubscription' test.out

#- 207 GetTicketDynamic
samples/cli/sample-apps Platform getTicketDynamic \
    --boothName 'w4KN3dX6TBDHWJTS' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 207 'GetTicketDynamic' test.out

#- 208 DecreaseTicketSale
samples/cli/sample-apps Platform decreaseTicketSale \
    --boothName 'XbkQa7C7EW3Cu4L9' \
    --namespace $AB_NAMESPACE \
    --body '{"orderNo": "BrlosjfBwBEKwfID"}' \
    > test.out 2>&1
eval_tap $? 208 'DecreaseTicketSale' test.out

#- 209 GetTicketBoothID
samples/cli/sample-apps Platform getTicketBoothID \
    --boothName 'M1Cby7dBSJrhpxVg' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 209 'GetTicketBoothID' test.out

#- 210 IncreaseTicketSale
samples/cli/sample-apps Platform increaseTicketSale \
    --boothName 'X3vmAJ2bx5rfEfq0' \
    --namespace $AB_NAMESPACE \
    --body '{"count": 24, "orderNo": "MDneeWmA3moNCpIu"}' \
    > test.out 2>&1
eval_tap $? 210 'IncreaseTicketSale' test.out

#- 211 Commit
samples/cli/sample-apps Platform commit \
    --namespace $AB_NAMESPACE \
    --body '{"actions": [{"operations": [{"creditPayload": {"balanceOrigin": "IOS", "count": 90, "currencyCode": "WwLFA7bmo1hXOzpa", "expireAt": "1971-03-13T00:00:00Z"}, "debitPayload": {"count": 35, "currencyCode": "GefkjJXD54VVQ0ix", "walletPlatform": "Steam"}, "fulFillItemPayload": {"count": 13, "entitlementOrigin": "Playstation", "itemIdentity": "y2GxeJYSgNEBoxPK", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 82, "entitlementId": "iFf8mbhy4E39O3d2"}, "type": "DEBIT_WALLET"}, {"creditPayload": {"balanceOrigin": "Steam", "count": 19, "currencyCode": "lX0KJHJLWMOBt4pC", "expireAt": "1971-07-29T00:00:00Z"}, "debitPayload": {"count": 63, "currencyCode": "KPpPGD9lzgoEln4r", "walletPlatform": "Oculus"}, "fulFillItemPayload": {"count": 57, "entitlementOrigin": "Playstation", "itemIdentity": "mTki0UBGnqpfbdEK", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 51, "entitlementId": "rixRfPq3FWM7lpLh"}, "type": "FULFILL_ITEM"}, {"creditPayload": {"balanceOrigin": "IOS", "count": 77, "currencyCode": "0o4UPO6EmB9BmlB8", "expireAt": "1990-03-20T00:00:00Z"}, "debitPayload": {"count": 58, "currencyCode": "7wBjqM7smoUyMj9m", "walletPlatform": "Steam"}, "fulFillItemPayload": {"count": 80, "entitlementOrigin": "Steam", "itemIdentity": "L6VFdslZiuTfqJfp", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 82, "entitlementId": "gADFIY6H1GHFS4JT"}, "type": "CREDIT_WALLET"}], "userId": "cCg1it8gO81C6I25"}, {"operations": [{"creditPayload": {"balanceOrigin": "GooglePlay", "count": 96, "currencyCode": "sfxHPkp45Rmqc3qb", "expireAt": "1992-03-18T00:00:00Z"}, "debitPayload": {"count": 16, "currencyCode": "i8xRA0nL6s2RgV3K", "walletPlatform": "Nintendo"}, "fulFillItemPayload": {"count": 27, "entitlementOrigin": "IOS", "itemIdentity": "GMZVcmuWmAu7YPjZ", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 11, "entitlementId": "hIqrkXfVzvPOShaC"}, "type": "DEBIT_WALLET"}, {"creditPayload": {"balanceOrigin": "Nintendo", "count": 93, "currencyCode": "W6SgHcti08oSCL2a", "expireAt": "1977-08-04T00:00:00Z"}, "debitPayload": {"count": 2, "currencyCode": "KAjODuixUrgEM1uJ", "walletPlatform": "Nintendo"}, "fulFillItemPayload": {"count": 93, "entitlementOrigin": "Nintendo", "itemIdentity": "fEYy6OL5CeJkIf3q", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 100, "entitlementId": "nGf7WK5XoI64v5CL"}, "type": "DEBIT_WALLET"}, {"creditPayload": {"balanceOrigin": "Steam", "count": 34, "currencyCode": "66bhuc6s1TWF73tH", "expireAt": "1984-09-08T00:00:00Z"}, "debitPayload": {"count": 32, "currencyCode": "Isuu3eZ6NAbFhpFn", "walletPlatform": "Playstation"}, "fulFillItemPayload": {"count": 71, "entitlementOrigin": "System", "itemIdentity": "7Z8c5Db6h34EEb68", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 15, "entitlementId": "UZYcuwoSYHadjxOq"}, "type": "REVOKE_ENTITLEMENT"}], "userId": "JO3rm4FuvxOohuoU"}, {"operations": [{"creditPayload": {"balanceOrigin": "Other", "count": 43, "currencyCode": "hXrvbHsLpbnDPrz2", "expireAt": "1994-09-09T00:00:00Z"}, "debitPayload": {"count": 61, "currencyCode": "glhAwWwUF6VwshX6", "walletPlatform": "Other"}, "fulFillItemPayload": {"count": 6, "entitlementOrigin": "GooglePlay", "itemIdentity": "GHBvWUZYBdZoHqnh", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 93, "entitlementId": "nYJS3uJNvMASI6uK"}, "type": "DEBIT_WALLET"}, {"creditPayload": {"balanceOrigin": "Epic", "count": 80, "currencyCode": "lREv0wrlM4IeoVgh", "expireAt": "1986-06-16T00:00:00Z"}, "debitPayload": {"count": 56, "currencyCode": "WMEeUcyjt8ASm3ho", "walletPlatform": "IOS"}, "fulFillItemPayload": {"count": 84, "entitlementOrigin": "Xbox", "itemIdentity": "htsy32g1NxS3QB7p", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 23, "entitlementId": "qTFiwWrKgt88wSHQ"}, "type": "CREDIT_WALLET"}, {"creditPayload": {"balanceOrigin": "Steam", "count": 61, "currencyCode": "3PaZHGqJHfXxgtzu", "expireAt": "1994-12-08T00:00:00Z"}, "debitPayload": {"count": 56, "currencyCode": "B2yXBG5XPY59qiAh", "walletPlatform": "Epic"}, "fulFillItemPayload": {"count": 74, "entitlementOrigin": "Oculus", "itemIdentity": "4cWa3czR4132xJoJ", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 44, "entitlementId": "XqnLdQaOayncp8hW"}, "type": "FULFILL_ITEM"}], "userId": "de0GzQzh4irphB3o"}], "metadata": {"Dwt2oyh5OMbJ4oSa": {}, "mdPm7HsfGchL9fyM": {}, "O16uySmLbNAkNsXP": {}}, "needPreCheck": false, "transactionId": "MBL4eWUI8csSsB14", "type": "djdh28kdaiuh9zkQ"}' \
    > test.out 2>&1
eval_tap $? 211 'Commit' test.out

#- 212 GetTradeHistoryByCriteria
samples/cli/sample-apps Platform getTradeHistoryByCriteria \
    --namespace $AB_NAMESPACE \
    --limit '34' \
    --offset '44' \
    --status 'SUCCESS' \
    --type 'oZFiyysdfnv3jweh' \
    --userId 'Jxan28xnAFUJfsy7' \
    > test.out 2>&1
eval_tap $? 212 'GetTradeHistoryByCriteria' test.out

#- 213 GetTradeHistoryByTransactionId
samples/cli/sample-apps Platform getTradeHistoryByTransactionId \
    --namespace $AB_NAMESPACE \
    --transactionId 'hLTLNchYj1usDIRF' \
    > test.out 2>&1
eval_tap $? 213 'GetTradeHistoryByTransactionId' test.out

#- 214 UnlockSteamUserAchievement
samples/cli/sample-apps Platform unlockSteamUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'aTTjOieASCSNlNWs' \
    --body '{"achievements": [{"id": "YcCfNYxeNsnG9uEV", "value": 20}, {"id": "TaIATLlfIUDkfMeu", "value": 88}, {"id": "QalMjmALo1yVfp4y", "value": 80}], "steamUserId": "KQNAo4Qji6VvE8Z7"}' \
    > test.out 2>&1
eval_tap $? 214 'UnlockSteamUserAchievement' test.out

#- 215 GetXblUserAchievements
samples/cli/sample-apps Platform getXblUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId 'j2jcyZZ7QZszqUqz' \
    --xboxUserId 'd5IoIYetqCfOpHHl' \
    > test.out 2>&1
eval_tap $? 215 'GetXblUserAchievements' test.out

#- 216 UpdateXblUserAchievement
samples/cli/sample-apps Platform updateXblUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId '2aLiDLX7xZ8xvU1F' \
    --body '{"achievements": [{"id": "lGKRpAlcU2PE0iOF", "percentComplete": 100}, {"id": "cgqg0ZQ4rYjFIkVb", "percentComplete": 14}, {"id": "GXZj3x76oIBlY6wv", "percentComplete": 36}], "serviceConfigId": "7x3cKFrnZukFQnWq", "titleId": "07yBMZQw8k0Z60Sd", "xboxUserId": "X8p5WJ3b6XaIVFKu"}' \
    > test.out 2>&1
eval_tap $? 216 'UpdateXblUserAchievement' test.out

#- 217 AnonymizeCampaign
samples/cli/sample-apps Platform anonymizeCampaign \
    --namespace $AB_NAMESPACE \
    --userId 'q9Xizg4vs3JQtMC4' \
    > test.out 2>&1
eval_tap $? 217 'AnonymizeCampaign' test.out

#- 218 AnonymizeEntitlement
samples/cli/sample-apps Platform anonymizeEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'kK2oj9lehGoLtZH7' \
    > test.out 2>&1
eval_tap $? 218 'AnonymizeEntitlement' test.out

#- 219 AnonymizeFulfillment
samples/cli/sample-apps Platform anonymizeFulfillment \
    --namespace $AB_NAMESPACE \
    --userId 'UXt1G42MXxEuHwK5' \
    > test.out 2>&1
eval_tap $? 219 'AnonymizeFulfillment' test.out

#- 220 AnonymizeIntegration
samples/cli/sample-apps Platform anonymizeIntegration \
    --namespace $AB_NAMESPACE \
    --userId 'wGSS7p8YYgIIo3AJ' \
    > test.out 2>&1
eval_tap $? 220 'AnonymizeIntegration' test.out

#- 221 AnonymizeOrder
samples/cli/sample-apps Platform anonymizeOrder \
    --namespace $AB_NAMESPACE \
    --userId '3U1wCOSGA9gRxOI7' \
    > test.out 2>&1
eval_tap $? 221 'AnonymizeOrder' test.out

#- 222 AnonymizePayment
samples/cli/sample-apps Platform anonymizePayment \
    --namespace $AB_NAMESPACE \
    --userId 'o9VvJ7NC8oBeADf1' \
    > test.out 2>&1
eval_tap $? 222 'AnonymizePayment' test.out

#- 223 AnonymizeRevocation
samples/cli/sample-apps Platform anonymizeRevocation \
    --namespace $AB_NAMESPACE \
    --userId 'NHTc8ZAllmHQO7Qx' \
    > test.out 2>&1
eval_tap $? 223 'AnonymizeRevocation' test.out

#- 224 AnonymizeSubscription
samples/cli/sample-apps Platform anonymizeSubscription \
    --namespace $AB_NAMESPACE \
    --userId 'YAFf5DmZtgiud44w' \
    > test.out 2>&1
eval_tap $? 224 'AnonymizeSubscription' test.out

#- 225 AnonymizeWallet
samples/cli/sample-apps Platform anonymizeWallet \
    --namespace $AB_NAMESPACE \
    --userId '6MM55lX6v7MeEQPg' \
    > test.out 2>&1
eval_tap $? 225 'AnonymizeWallet' test.out

#- 226 GetUserDLCByPlatform
samples/cli/sample-apps Platform getUserDLCByPlatform \
    --namespace $AB_NAMESPACE \
    --userId 'iCeS1mGEU78qUZLv' \
    --type 'EPICGAMES' \
    > test.out 2>&1
eval_tap $? 226 'GetUserDLCByPlatform' test.out

#- 227 GetUserDLC
samples/cli/sample-apps Platform getUserDLC \
    --namespace $AB_NAMESPACE \
    --userId 'qyqca1SlGtKkaIGk' \
    --type 'EPICGAMES' \
    > test.out 2>&1
eval_tap $? 227 'GetUserDLC' test.out

#- 228 QueryUserEntitlements
samples/cli/sample-apps Platform queryUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'XTYPfUO9ZldeaswP' \
    --activeOnly 'false' \
    --appType 'GAME' \
    --entitlementClazz 'MEDIA' \
    --entitlementName 'QbWIvsFBqlHsyHXv' \
    --features '["rhK4QBbXPgWJ8H8M", "Wm8UoX00oOXm5qGC", "daNziDj0TWz1X2cj"]' \
    --fuzzyMatchName 'true' \
    --itemId '["lYq36kTiDKpK2lgF", "eRYHp4rcUXgxySRz", "7ST7CTQZoriScQCQ"]' \
    --limit '42' \
    --offset '91' \
    --origin 'Epic' \
    > test.out 2>&1
eval_tap $? 228 'QueryUserEntitlements' test.out

#- 229 GrantUserEntitlement
samples/cli/sample-apps Platform grantUserEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'lWrZGDJJpwfvowDj' \
    --body '[{"endDate": "1986-03-06T00:00:00Z", "grantedCode": "Fm8pOcUva6L0fHye", "itemId": "sa2St6BpRt2PGjVV", "itemNamespace": "uYovsPRlr62IdjSs", "language": "FR", "origin": "Twitch", "quantity": 2, "region": "FyOROR1woJh7ZWaQ", "source": "IAP", "startDate": "1983-09-02T00:00:00Z", "storeId": "1fD7HiT8g5McOZ6o"}, {"endDate": "1999-08-19T00:00:00Z", "grantedCode": "JRDNuqhXsjcz53BX", "itemId": "2TkALfSmcyKsZ5wD", "itemNamespace": "qWMf51yW63BAztK0", "language": "VQRx_QJJx_vb", "origin": "GooglePlay", "quantity": 22, "region": "dpbocwPavuyr8Tlv", "source": "IAP", "startDate": "1973-11-25T00:00:00Z", "storeId": "TkxMhWGDhKMQZbeR"}, {"endDate": "1980-01-06T00:00:00Z", "grantedCode": "yNNXogcVS3J2v20i", "itemId": "hsdXrBBEOuWQDc8z", "itemNamespace": "Z31t2o4RdXUAlZAJ", "language": "sLi_rUpS-134", "origin": "Other", "quantity": 18, "region": "qI2Fm1GaMRp5WDBz", "source": "PURCHASE", "startDate": "1999-06-26T00:00:00Z", "storeId": "LYNMLLGTCDyUXYjr"}]' \
    > test.out 2>&1
eval_tap $? 229 'GrantUserEntitlement' test.out

#- 230 GetUserAppEntitlementByAppId
samples/cli/sample-apps Platform getUserAppEntitlementByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'KuwD8uvP2Zj4uemw' \
    --activeOnly 'false' \
    --appId 'ZjpWvO7wLgZE3Nnd' \
    > test.out 2>&1
eval_tap $? 230 'GetUserAppEntitlementByAppId' test.out

#- 231 QueryUserEntitlementsByAppType
samples/cli/sample-apps Platform queryUserEntitlementsByAppType \
    --namespace $AB_NAMESPACE \
    --userId 'CGEWakNm57SfvEro' \
    --activeOnly 'true' \
    --limit '38' \
    --offset '21' \
    --appType 'SOFTWARE' \
    > test.out 2>&1
eval_tap $? 231 'QueryUserEntitlementsByAppType' test.out

#- 232 GetUserEntitlementByItemId
samples/cli/sample-apps Platform getUserEntitlementByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'XtVglGSS0CB4VgAd' \
    --activeOnly 'false' \
    --entitlementClazz 'ENTITLEMENT' \
    --platform 'IY0jgL0JhhOZqOy1' \
    --itemId 'mqkcoI73QcwRWlWV' \
    > test.out 2>&1
eval_tap $? 232 'GetUserEntitlementByItemId' test.out

#- 233 GetUserActiveEntitlementsByItemIds
samples/cli/sample-apps Platform getUserActiveEntitlementsByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'WXfN2Bj58DRFNhgS' \
    --ids '["a7nYI0DnXDUEwpEH", "cRDjNlQSCBP7F0ip", "aZiTkLs2CuvP81Yl"]' \
    --platform 'doWqcMdH9ZVXWI78' \
    > test.out 2>&1
eval_tap $? 233 'GetUserActiveEntitlementsByItemIds' test.out

#- 234 GetUserEntitlementBySku
samples/cli/sample-apps Platform getUserEntitlementBySku \
    --namespace $AB_NAMESPACE \
    --userId '4bA1Vzg9Cp7ihAu6' \
    --activeOnly 'true' \
    --entitlementClazz 'CODE' \
    --platform '5G1sBXdU7kfxSuRX' \
    --sku '35cIoucPY7BukUW2' \
    > test.out 2>&1
eval_tap $? 234 'GetUserEntitlementBySku' test.out

#- 235 ExistsAnyUserActiveEntitlement
samples/cli/sample-apps Platform existsAnyUserActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'Ar3vZqfkMkuwGsOe' \
    --appIds '["b6Gmp3KMxdUQV8bn", "4iPyfMGryKZicUbw", "fRmCPU5Tl4GMG4XL"]' \
    --itemIds '["m3XJbEhfvsudUWAP", "ohk5r4J9LYYixlcj", "m7DBUW6OPbhs72te"]' \
    --platform 'DyiumVfTzXlmDmhA' \
    --skus '["0A213IfH9duDLmqY", "Pvz5cqoRDImzgVM1", "WgwcKTGThxWxMhHd"]' \
    > test.out 2>&1
eval_tap $? 235 'ExistsAnyUserActiveEntitlement' test.out

#- 236 ExistsAnyUserActiveEntitlementByItemIds
samples/cli/sample-apps Platform existsAnyUserActiveEntitlementByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'Lcxr3I3EBwFHI2MG' \
    --platform 'AqFkCOyZ3afvm4KW' \
    --itemIds '["hmEgQTB9m6oIeEu4", "LlVF5XuFfBuLHqeM", "McTm4rycxsnXQQNt"]' \
    > test.out 2>&1
eval_tap $? 236 'ExistsAnyUserActiveEntitlementByItemIds' test.out

#- 237 GetUserAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform getUserAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'wCp3Hxdm4GhDDvEU' \
    --appId 'UHeEXJCd0pwv133E' \
    > test.out 2>&1
eval_tap $? 237 'GetUserAppEntitlementOwnershipByAppId' test.out

#- 238 GetUserEntitlementOwnershipByItemId
samples/cli/sample-apps Platform getUserEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'A4awRXlIpNLK63IN' \
    --entitlementClazz 'LOOTBOX' \
    --platform 'q0OX2hF1jIBw87Ea' \
    --itemId 'ogAGitMT6d0T9VIN' \
    > test.out 2>&1
eval_tap $? 238 'GetUserEntitlementOwnershipByItemId' test.out

#- 239 GetUserEntitlementOwnershipByItemIds
samples/cli/sample-apps Platform getUserEntitlementOwnershipByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'Wts4yHKdXpRpXxFD' \
    --ids '["sKRKNdqnR3ZEabl7", "O6LpdrLWD0boD1Ih", "eUMvyOEbuybzQDxK"]' \
    --platform '0mF2is7WfCkAvokg' \
    > test.out 2>&1
eval_tap $? 239 'GetUserEntitlementOwnershipByItemIds' test.out

#- 240 GetUserEntitlementOwnershipBySku
samples/cli/sample-apps Platform getUserEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --userId 'ix62jxw7tunGhwgc' \
    --entitlementClazz 'ENTITLEMENT' \
    --platform 'cmU3hx0oZJtbjowB' \
    --sku 'vjCPRE1DWg90bZ0z' \
    > test.out 2>&1
eval_tap $? 240 'GetUserEntitlementOwnershipBySku' test.out

#- 241 RevokeAllEntitlements
samples/cli/sample-apps Platform revokeAllEntitlements \
    --namespace $AB_NAMESPACE \
    --userId '7uZsCroU5XJdlpI1' \
    > test.out 2>&1
eval_tap $? 241 'RevokeAllEntitlements' test.out

#- 242 RevokeUserEntitlements
samples/cli/sample-apps Platform revokeUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId '7CPU3M0iHY9GiyV4' \
    --entitlementIds 'v0kA7DQIT7AUOPQk' \
    > test.out 2>&1
eval_tap $? 242 'RevokeUserEntitlements' test.out

#- 243 GetUserEntitlement
samples/cli/sample-apps Platform getUserEntitlement \
    --entitlementId 'aBy4TzgVwRtQceAQ' \
    --namespace $AB_NAMESPACE \
    --userId 'sARhevcKqZrB4L17' \
    > test.out 2>&1
eval_tap $? 243 'GetUserEntitlement' test.out

#- 244 UpdateUserEntitlement
samples/cli/sample-apps Platform updateUserEntitlement \
    --entitlementId 'mRXPXEiZkFrnCblD' \
    --namespace $AB_NAMESPACE \
    --userId 'xlNRQx3LQ3lUOXo4' \
    --body '{"endDate": "1993-10-03T00:00:00Z", "nullFieldList": ["BnqXVf5cWMXZyEej", "2zFkNpoQam82Psku", "keW57ujhBmJfeVzQ"], "origin": "IOS", "reason": "K0ZVjaPWVQGXrbjH", "startDate": "1981-02-13T00:00:00Z", "status": "CONSUMED", "useCount": 49}' \
    > test.out 2>&1
eval_tap $? 244 'UpdateUserEntitlement' test.out

#- 245 ConsumeUserEntitlement
samples/cli/sample-apps Platform consumeUserEntitlement \
    --entitlementId 'XqoiqHeHUtCQHFmF' \
    --namespace $AB_NAMESPACE \
    --userId 'FmqSWyZYpS8Ykuti' \
    --body '{"options": ["LWeGHVLF5EGurNbQ", "mk0by8Zx3jSO69GF", "ykoKXyeV2qzCBfUZ"], "platform": "9m8eMfGoD2IUxcjW", "requestId": "B2ny77iq3niYbzHw", "useCount": 81}' \
    > test.out 2>&1
eval_tap $? 245 'ConsumeUserEntitlement' test.out

#- 246 DisableUserEntitlement
samples/cli/sample-apps Platform disableUserEntitlement \
    --entitlementId 'pUy0O6LdYVsXy4GJ' \
    --namespace $AB_NAMESPACE \
    --userId 'Rsu1dJhPiDgFJN4L' \
    > test.out 2>&1
eval_tap $? 246 'DisableUserEntitlement' test.out

#- 247 EnableUserEntitlement
samples/cli/sample-apps Platform enableUserEntitlement \
    --entitlementId 'PZEREvmNSyuBPnHJ' \
    --namespace $AB_NAMESPACE \
    --userId 'LaKHShOZZ7cUofLN' \
    > test.out 2>&1
eval_tap $? 247 'EnableUserEntitlement' test.out

#- 248 GetUserEntitlementHistories
samples/cli/sample-apps Platform getUserEntitlementHistories \
    --entitlementId 'CTDyLzxgKBngdjvp' \
    --namespace $AB_NAMESPACE \
    --userId 'l6wSglRS2zKtsjfC' \
    > test.out 2>&1
eval_tap $? 248 'GetUserEntitlementHistories' test.out

#- 249 RevokeUserEntitlement
samples/cli/sample-apps Platform revokeUserEntitlement \
    --entitlementId '98ahs4AA6pkfYklk' \
    --namespace $AB_NAMESPACE \
    --userId 'MHBYIEE7b4uLeASN' \
    > test.out 2>&1
eval_tap $? 249 'RevokeUserEntitlement' test.out

#- 250 RevokeUserEntitlementByUseCount
samples/cli/sample-apps Platform revokeUserEntitlementByUseCount \
    --entitlementId 'exyLBT1YwvPcBGxL' \
    --namespace $AB_NAMESPACE \
    --userId 'tKKw8utpg7Eib1bE' \
    --body '{"reason": "p7YflgHhb9KqsWoE", "useCount": 28}' \
    > test.out 2>&1
eval_tap $? 250 'RevokeUserEntitlementByUseCount' test.out

#- 251 PreCheckRevokeUserEntitlementByUseCount
samples/cli/sample-apps Platform preCheckRevokeUserEntitlementByUseCount \
    --entitlementId '6Vgd5YhvqDu2C5jK' \
    --namespace $AB_NAMESPACE \
    --userId 'Nm39CfXohv82HiBG' \
    --quantity '46' \
    > test.out 2>&1
eval_tap $? 251 'PreCheckRevokeUserEntitlementByUseCount' test.out

#- 252 RevokeUseCount
eval_tap 0 252 'RevokeUseCount # SKIP deprecated' test.out

#- 253 SellUserEntitlement
samples/cli/sample-apps Platform sellUserEntitlement \
    --entitlementId 'yZ0CJ2wd6g9RMFJZ' \
    --namespace $AB_NAMESPACE \
    --userId 'cj10m5rY5KPBERpl' \
    --body '{"platform": "H2lyBjjNsv3KOKQk", "requestId": "JK02iN4K3DLimbia", "useCount": 35}' \
    > test.out 2>&1
eval_tap $? 253 'SellUserEntitlement' test.out

#- 254 FulfillItem
samples/cli/sample-apps Platform fulfillItem \
    --namespace $AB_NAMESPACE \
    --userId 'WQ0JCcdJU8U85GPZ' \
    --body '{"duration": 88, "endDate": "1977-05-05T00:00:00Z", "entitlementOrigin": "Twitch", "itemId": "w4ztBCRKUkuXi7Jl", "itemSku": "KI27i5FRfuUi6UtZ", "language": "C8nO6mSUKtlQpsGT", "metadata": {"UbthztCpp2FdF08v": {}, "XLkJEtb1LQzAApZE": {}, "wkbhj3mjprzgQ04h": {}}, "order": {"currency": {"currencyCode": "pnezf6dsqnUHz6ZC", "currencySymbol": "P7aJaEPMPLmdVmTQ", "currencyType": "REAL", "decimals": 79, "namespace": "CoF4QmlPAvEKS2oS"}, "ext": {"Kwo89oT4dmahtxba": {}, "t37nFmMld4BpWyA2": {}, "gAXLQu6TYIlwd2G8": {}}, "free": true}, "orderNo": "KfRWwRmf9Vnq54Ab", "origin": "IOS", "overrideBundleItemQty": {"fwC5UeXoPIPpG96w": 84, "s8NeNyq9SeFbJ3ms": 78, "lDKP2rp08CHJH6AN": 66}, "quantity": 98, "region": "upn4YbQcVYG76aET", "source": "IAP", "startDate": "1996-11-27T00:00:00Z", "storeId": "dSnAGLhoOJbwc0Xa"}' \
    > test.out 2>&1
eval_tap $? 254 'FulfillItem' test.out

#- 255 RedeemCode
samples/cli/sample-apps Platform redeemCode \
    --namespace $AB_NAMESPACE \
    --userId '9ePs5OqCpvnwE2an' \
    --body '{"code": "jaI0Cw9ZLOaZfdfb", "language": "cws-GfAE_Gg", "region": "3cPbAao03DmMXWy4"}' \
    > test.out 2>&1
eval_tap $? 255 'RedeemCode' test.out

#- 256 PreCheckFulfillItem
samples/cli/sample-apps Platform preCheckFulfillItem \
    --namespace $AB_NAMESPACE \
    --userId 'JPP7Gva2jFpAEbz2' \
    --body '{"itemId": "CpCMG3EupTPzUzse", "itemSku": "VKHLq7APnzduqCwH", "quantity": 88}' \
    > test.out 2>&1
eval_tap $? 256 'PreCheckFulfillItem' test.out

#- 257 FulfillRewards
samples/cli/sample-apps Platform fulfillRewards \
    --namespace $AB_NAMESPACE \
    --userId 'S19eixJMVnB4gTAw' \
    --body '{"entitlementOrigin": "Epic", "metadata": {"kUivuh13oMYeM9lY": {}, "MEwoYZz5IJWEHU3C": {}, "ONNF5P3VME43hhSs": {}}, "origin": "Nintendo", "rewards": [{"currency": {"currencyCode": "IBE4bfbQWhH3TNU5", "namespace": "4o0WZ6owUWTHNuvd"}, "item": {"itemId": "voFgo7OqWNzb8MBF", "itemSku": "qD4ffBppoM2tb5Yn", "itemType": "G6rWyI0TuBugo4Ef"}, "quantity": 36, "type": "ITEM"}, {"currency": {"currencyCode": "op2UEsvSLvIBp2eG", "namespace": "VqzHqKXK5kKEjuGW"}, "item": {"itemId": "LncKxfXXeRFVJRqz", "itemSku": "9HAV94tJT8KWvGAw", "itemType": "H7CjR9e3MVuJ8Gjx"}, "quantity": 18, "type": "CURRENCY"}, {"currency": {"currencyCode": "5NXgkOZO1nqyqaXj", "namespace": "FqLuBSMopzsuMpcO"}, "item": {"itemId": "Xj9EI3XH8mr4RUsy", "itemSku": "D8BGz7fwFwbeqx0G", "itemType": "V2n2vowvxHLP5T6M"}, "quantity": 42, "type": "ITEM"}], "source": "CONSUME_ENTITLEMENT", "transactionId": "hZ0oH1gx1PZ3KL0e"}' \
    > test.out 2>&1
eval_tap $? 257 'FulfillRewards' test.out

#- 258 QueryUserIAPOrders
samples/cli/sample-apps Platform queryUserIAPOrders \
    --namespace $AB_NAMESPACE \
    --userId 'Q9XrHK1WJHjEfk4n' \
    --endTime 'UsdKajYqtrMeEuVf' \
    --limit '74' \
    --offset '94' \
    --productId 'blmUrkXLLC2n5WDi' \
    --startTime 'UhC55AsW7Vtd0GQf' \
    --status 'VERIFIED' \
    --type 'STADIA' \
    > test.out 2>&1
eval_tap $? 258 'QueryUserIAPOrders' test.out

#- 259 QueryAllUserIAPOrders
samples/cli/sample-apps Platform queryAllUserIAPOrders \
    --namespace $AB_NAMESPACE \
    --userId '0xY5U5RH8IzqkwuE' \
    > test.out 2>&1
eval_tap $? 259 'QueryAllUserIAPOrders' test.out

#- 260 QueryUserIAPConsumeHistory
samples/cli/sample-apps Platform queryUserIAPConsumeHistory \
    --namespace $AB_NAMESPACE \
    --userId 'pQ7elLM75NsY4Kpq' \
    --endTime 'oopg6UGRIrqS4lnu' \
    --limit '77' \
    --offset '75' \
    --startTime 'B6P9Fd8SxuUe4wUe' \
    --status 'FAIL' \
    --type 'STEAM' \
    > test.out 2>&1
eval_tap $? 260 'QueryUserIAPConsumeHistory' test.out

#- 261 MockFulfillIAPItem
samples/cli/sample-apps Platform mockFulfillIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 't1xing78Ut4nJYNP' \
    --body '{"itemIdentityType": "ITEM_ID", "language": "Pgrc", "productId": "as2HCqDkHjVHq75Z", "region": "HCztyhYZZJuMRLOk", "transactionId": "aGJHrs7cVBvjTwCt", "type": "TWITCH"}' \
    > test.out 2>&1
eval_tap $? 261 'MockFulfillIAPItem' test.out

#- 262 QueryUserOrders
samples/cli/sample-apps Platform queryUserOrders \
    --namespace $AB_NAMESPACE \
    --userId 'Bz9ZGVWTIdjAeAFa' \
    --itemId '6CqgdcXOnjNllXCu' \
    --limit '45' \
    --offset '15' \
    --status 'REFUNDED' \
    > test.out 2>&1
eval_tap $? 262 'QueryUserOrders' test.out

#- 263 AdminCreateUserOrder
samples/cli/sample-apps Platform adminCreateUserOrder \
    --namespace $AB_NAMESPACE \
    --userId 'x8ZoAv8k9leYEWly' \
    --body '{"currencyCode": "pfcdmVaLS5o3c99z", "currencyNamespace": "5F2qEMQrziBpM0N6", "discountedPrice": 92, "ext": {"RJYTGpkVg5GTWPZC": {}, "7QNJJkUwbO4zq9CM": {}, "fI8TJyLufS6IgjXM": {}}, "itemId": "ErodBY7BflWQN5JI", "language": "RZa1BaQvK89v2XZr", "options": {"skipPriceValidation": true}, "platform": "Playstation", "price": 82, "quantity": 80, "region": "IlJQUVkVcbBz1019", "returnUrl": "CiKeRQThvKIMI36L", "sandbox": true, "sectionId": "uU6JgO3WL0j2RvSp"}' \
    > test.out 2>&1
eval_tap $? 263 'AdminCreateUserOrder' test.out

#- 264 CountOfPurchasedItem
samples/cli/sample-apps Platform countOfPurchasedItem \
    --namespace $AB_NAMESPACE \
    --userId 'bgx4CkyfJfb09EHl' \
    --itemId 'XH6TzEohHXU8w59u' \
    > test.out 2>&1
eval_tap $? 264 'CountOfPurchasedItem' test.out

#- 265 GetUserOrder
samples/cli/sample-apps Platform getUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'hgpf5bH5qFZ16dy8' \
    --userId '3ND0z3g0NOuVOnoK' \
    > test.out 2>&1
eval_tap $? 265 'GetUserOrder' test.out

#- 266 UpdateUserOrderStatus
samples/cli/sample-apps Platform updateUserOrderStatus \
    --namespace $AB_NAMESPACE \
    --orderNo 'bEANs2zq9g91lRbM' \
    --userId 'RrNuadGBCvocr5Tq' \
    --body '{"status": "CLOSED", "statusReason": "pNyRtu9qJkrw6xvx"}' \
    > test.out 2>&1
eval_tap $? 266 'UpdateUserOrderStatus' test.out

#- 267 FulfillUserOrder
samples/cli/sample-apps Platform fulfillUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'mgMQpHz6GHxwfeS0' \
    --userId 'Ot3JOTKb5s5dWGeu' \
    > test.out 2>&1
eval_tap $? 267 'FulfillUserOrder' test.out

#- 268 GetUserOrderGrant
samples/cli/sample-apps Platform getUserOrderGrant \
    --namespace $AB_NAMESPACE \
    --orderNo 'B9s0SOWoThSjoedN' \
    --userId 'gxtccPOqo1ZuP0ph' \
    > test.out 2>&1
eval_tap $? 268 'GetUserOrderGrant' test.out

#- 269 GetUserOrderHistories
samples/cli/sample-apps Platform getUserOrderHistories \
    --namespace $AB_NAMESPACE \
    --orderNo '4y44YMuFrrDQS66I' \
    --userId 'GyWZBouXT5G1kp8S' \
    > test.out 2>&1
eval_tap $? 269 'GetUserOrderHistories' test.out

#- 270 ProcessUserOrderNotification
samples/cli/sample-apps Platform processUserOrderNotification \
    --namespace $AB_NAMESPACE \
    --orderNo '6hYDmnbLekAcDO9P' \
    --userId 'yIDpONpeMO0036w4' \
    --body '{"additionalData": {"cardSummary": "EPZ3Lzsk28FsFxqj"}, "authorisedTime": "1973-08-15T00:00:00Z", "chargebackReversedTime": "1987-10-07T00:00:00Z", "chargebackTime": "1991-10-13T00:00:00Z", "chargedTime": "1986-01-01T00:00:00Z", "createdTime": "1992-05-07T00:00:00Z", "currency": {"currencyCode": "L0y8su5kZ0nk2b7t", "currencySymbol": "x3LADBIPF7eLBugP", "currencyType": "VIRTUAL", "decimals": 72, "namespace": "iwyjrqZ0pJ4VHtg7"}, "customParameters": {"UbbT4vvq5M5a5imi": {}, "fDSO7omaabT3wmiK": {}, "vYwjdQQZoVlcL8YT": {}}, "extOrderNo": "8TKbRy0zQIk7VGus", "extTxId": "gG9mYgBj6DtByujo", "extUserId": "siiqCJR1WlTHBHiw", "issuedAt": "1997-10-06T00:00:00Z", "metadata": {"EgDNEaKBKZAXVzLa": "y0qb0KZX8xY97IDO", "1O9W9b24PG5XSflW": "ecUb7yEG1F5CUauB", "HlIin5ya8UCgyAhs": "6pY6IbzsuYi2lRMr"}, "namespace": "VTnRP2PTntkTrUqn", "nonceStr": "NHVdiiPYcPRy5yOg", "paymentMethod": "Eckyqgk1BlWtHS2Q", "paymentMethodFee": 54, "paymentOrderNo": "N6SFpDFkgjkIK2BX", "paymentProvider": "WXPAY", "paymentProviderFee": 33, "paymentStationUrl": "zioX1DFDJ6TQMvTC", "price": 95, "refundedTime": "1979-03-31T00:00:00Z", "salesTax": 7, "sandbox": false, "sku": "npBKUTkK7kvJ5upW", "status": "INIT", "statusReason": "0wu12gfoATxD8C6Z", "subscriptionId": "R34EGDWGPqLeqbC1", "subtotalPrice": 36, "targetNamespace": "PwIfW9lxTCK974y3", "targetUserId": "kW33OWFaQYqIGy2m", "tax": 96, "totalPrice": 31, "totalTax": 7, "txEndTime": "1972-04-13T00:00:00Z", "type": "yuhjzFhlksLnSUXs", "userId": "1k1XOIrCWHpxHAyf", "vat": 82}' \
    > test.out 2>&1
eval_tap $? 270 'ProcessUserOrderNotification' test.out

#- 271 DownloadUserOrderReceipt
samples/cli/sample-apps Platform downloadUserOrderReceipt \
    --namespace $AB_NAMESPACE \
    --orderNo '3elPpsBvj2YXpczE' \
    --userId 'Iww7eA9xgX4c4lkj' \
    > test.out 2>&1
eval_tap $? 271 'DownloadUserOrderReceipt' test.out

#- 272 CreateUserPaymentOrder
samples/cli/sample-apps Platform createUserPaymentOrder \
    --namespace $AB_NAMESPACE \
    --userId 'WyhFd5gkMW77nF00' \
    --body '{"currencyCode": "g8U8XR3XqxMXGOwT", "currencyNamespace": "zgLF4vayNQK0wFHB", "customParameters": {"qcoNr3McbmiobyCU": {}, "ye3Fl6hfELXZ2fNv": {}, "h73nKTsnc0O92oTn": {}}, "description": "kx2YiFZPlgofuPkM", "extOrderNo": "8ZG7rC0ME35A9Utu", "extUserId": "6Gomo8KtjqYcagkE", "itemType": "SUBSCRIPTION", "language": "Yon_RCDx", "metadata": {"VlyrlBFRNTmQhI81": "NpOMuCM9p0jJK8A0", "Te9uIo3I2eB1hjT3": "TxIhuBiWvHyNWreX", "wmFeJnl4u0JRcniT": "fzCMLs1OckWmSIcN"}, "notifyUrl": "Ea5xSCk5GSMUfVSC", "omitNotification": true, "platform": "rPg7bVGBlrP17PRo", "price": 1, "recurringPaymentOrderNo": "ynAwqTlqvhFEA8wF", "region": "qMQkeJMgUSnUW6KR", "returnUrl": "tZwhCJ9TlI5nA3C0", "sandbox": false, "sku": "BUm72xGHaXcriNm4", "subscriptionId": "ifD7fV4LsF8NcRpG", "title": "3vyTH6JbTp2eLPBD"}' \
    > test.out 2>&1
eval_tap $? 272 'CreateUserPaymentOrder' test.out

#- 273 RefundUserPaymentOrder
samples/cli/sample-apps Platform refundUserPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'WT0bmuhQr20VK4ED' \
    --userId 'zntS8ks9ytGWgN0t' \
    --body '{"description": "hmNw7oVFn4xdpW6N"}' \
    > test.out 2>&1
eval_tap $? 273 'RefundUserPaymentOrder' test.out

#- 274 ApplyUserRedemption
samples/cli/sample-apps Platform applyUserRedemption \
    --namespace $AB_NAMESPACE \
    --userId 'ZM4EaHoBSX98c1Wb' \
    --body '{"code": "IBYb4K5EcqobwZZI", "orderNo": "W8b0Rmtx8bP9C002"}' \
    > test.out 2>&1
eval_tap $? 274 'ApplyUserRedemption' test.out

#- 275 DoRevocation
samples/cli/sample-apps Platform doRevocation \
    --namespace $AB_NAMESPACE \
    --userId 'WgW5j9LEHlVexIph' \
    --body '{"meta": {"G7sFQZp5Zk1PGSk6": {}, "FAF3lJeIqe6XrcuH": {}, "siRSV4vjio78e6bU": {}}, "revokeEntries": [{"currency": {"balanceOrigin": "Other", "currencyCode": "pW12uBuX3I9GR51l", "namespace": "LkPU4OowKFOZP1Tn"}, "entitlement": {"entitlementId": "S7PJHZ72XdBzrkik"}, "item": {"entitlementOrigin": "Xbox", "itemIdentity": "NetUNndCUdPqoaG2", "itemIdentityType": "ITEM_ID", "origin": "Xbox"}, "quantity": 18, "type": "ENTITLEMENT"}, {"currency": {"balanceOrigin": "Twitch", "currencyCode": "347DZXCYDKA6F9YR", "namespace": "egMVinbzBiz4ln4O"}, "entitlement": {"entitlementId": "P6FVrICMQWLLG874"}, "item": {"entitlementOrigin": "Epic", "itemIdentity": "Lgs2eCV0IeCBWl4K", "itemIdentityType": "ITEM_ID", "origin": "GooglePlay"}, "quantity": 7, "type": "ITEM"}, {"currency": {"balanceOrigin": "Oculus", "currencyCode": "wJUhLM2tXHye8xsp", "namespace": "DxQS4wbjijgmbPer"}, "entitlement": {"entitlementId": "etCeKrCmyI5LYC6e"}, "item": {"entitlementOrigin": "Twitch", "itemIdentity": "ilLyxamJ233cNSdO", "itemIdentityType": "ITEM_SKU", "origin": "IOS"}, "quantity": 0, "type": "CURRENCY"}], "source": "ORDER", "transactionId": "EvqzMHqZz68oiCwb"}' \
    > test.out 2>&1
eval_tap $? 275 'DoRevocation' test.out

#- 276 RegisterXblSessions
samples/cli/sample-apps Platform registerXblSessions \
    --namespace $AB_NAMESPACE \
    --userId '8Avxa94cfOYXoFMb' \
    --body '{"gameSessionId": "Whm26dJ9OSgzjWbc", "payload": {"Om8cqUmWVtTRIpe3": {}, "AQowGPlXggjGdJI2": {}, "n9jJgkqVRNUqebQW": {}}, "scid": "CN3dZeMV8uzmRhX4", "sessionTemplateName": "Y3xBn1fldBKVBgXi"}' \
    > test.out 2>&1
eval_tap $? 276 'RegisterXblSessions' test.out

#- 277 QueryUserSubscriptions
samples/cli/sample-apps Platform queryUserSubscriptions \
    --namespace $AB_NAMESPACE \
    --userId 'TEbisD2H8qU5fiwZ' \
    --chargeStatus 'SETUP' \
    --itemId 'E1f3WOKnMI9eOooH' \
    --limit '74' \
    --offset '17' \
    --sku 'SLyc8fuKiIvUwJdb' \
    --status 'INIT' \
    --subscribedBy 'USER' \
    > test.out 2>&1
eval_tap $? 277 'QueryUserSubscriptions' test.out

#- 278 GetUserSubscriptionActivities
samples/cli/sample-apps Platform getUserSubscriptionActivities \
    --namespace $AB_NAMESPACE \
    --userId 'oj5M0QCizEg6uQlL' \
    --excludeSystem 'true' \
    --limit '35' \
    --offset '95' \
    --subscriptionId '9mfbEiGDE5xasRNa' \
    > test.out 2>&1
eval_tap $? 278 'GetUserSubscriptionActivities' test.out

#- 279 PlatformSubscribeSubscription
samples/cli/sample-apps Platform platformSubscribeSubscription \
    --namespace $AB_NAMESPACE \
    --userId 'CiQsK7dtm4ZjqvEp' \
    --body '{"grantDays": 50, "itemId": "yame8SFnxjF8knaB", "language": "pzrfy2HD4qrO2d5x", "reason": "mg3dtbFjiOR7BdAk", "region": "jEiiOQfjAj0cYIZI", "source": "ZlVWButgzw8eus7P"}' \
    > test.out 2>&1
eval_tap $? 279 'PlatformSubscribeSubscription' test.out

#- 280 CheckUserSubscriptionSubscribableByItemId
samples/cli/sample-apps Platform checkUserSubscriptionSubscribableByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'PtqJr1mDc43YVx6v' \
    --itemId 'h0oSr6wswVKCLMUp' \
    > test.out 2>&1
eval_tap $? 280 'CheckUserSubscriptionSubscribableByItemId' test.out

#- 281 GetUserSubscription
samples/cli/sample-apps Platform getUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId '0P2kFWu6NQWIHctj' \
    --userId 'SCRINmqE0vG1lnB3' \
    > test.out 2>&1
eval_tap $? 281 'GetUserSubscription' test.out

#- 282 DeleteUserSubscription
samples/cli/sample-apps Platform deleteUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'KGFPs6zLwwApihyh' \
    --userId '7tPDQLxrvswS0MSM' \
    > test.out 2>&1
eval_tap $? 282 'DeleteUserSubscription' test.out

#- 283 CancelSubscription
samples/cli/sample-apps Platform cancelSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'b2y1685MSI3sGEMz' \
    --userId 'vfnbSPh9BVUm7U4R' \
    --force 'true' \
    --body '{"immediate": true, "reason": "UtEtB9vSywghHdhu"}' \
    > test.out 2>&1
eval_tap $? 283 'CancelSubscription' test.out

#- 284 GrantDaysToSubscription
samples/cli/sample-apps Platform grantDaysToSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'jhr7uGYaohTNi9AB' \
    --userId 'BQIad10tvTNbLReS' \
    --body '{"grantDays": 4, "reason": "EcgmCsJUvNMeiQyY"}' \
    > test.out 2>&1
eval_tap $? 284 'GrantDaysToSubscription' test.out

#- 285 GetUserSubscriptionBillingHistories
samples/cli/sample-apps Platform getUserSubscriptionBillingHistories \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'JBlf2Ve621fZ9Uko' \
    --userId 'G67zP8PuoK61328W' \
    --excludeFree 'true' \
    --limit '37' \
    --offset '88' \
    > test.out 2>&1
eval_tap $? 285 'GetUserSubscriptionBillingHistories' test.out

#- 286 ProcessUserSubscriptionNotification
samples/cli/sample-apps Platform processUserSubscriptionNotification \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'qoL7YsKGn1U4hWq4' \
    --userId 'GyBMC2fqMJP0DPq2' \
    --body '{"additionalData": {"cardSummary": "eKVkCJaPFreuCP3t"}, "authorisedTime": "1980-10-19T00:00:00Z", "chargebackReversedTime": "1979-08-12T00:00:00Z", "chargebackTime": "1996-04-05T00:00:00Z", "chargedTime": "1983-02-12T00:00:00Z", "createdTime": "1976-02-06T00:00:00Z", "currency": {"currencyCode": "moOvyfT4wXuKO8gM", "currencySymbol": "Q1irXOMH7TsUevEC", "currencyType": "REAL", "decimals": 22, "namespace": "LqylymucOs3xfyLv"}, "customParameters": {"lNHzWfc5CyN3lJFS": {}, "Y6QA5dqh50MQRrO8": {}, "stjVuAVeaHE2SRCV": {}}, "extOrderNo": "8EHfvHlb5K6ELLeO", "extTxId": "XpNy9axmxKouUlTA", "extUserId": "ykqvX00uXBm43TgS", "issuedAt": "1999-03-08T00:00:00Z", "metadata": {"mLxplkUfvUeerhmm": "6yvY6GH2ER1X6ZCE", "OcjEHxbQk3v5izKj": "PEaqdXSwAPxZPj77", "UovC8sQuAgt9y9Kn": "yVLjiu8xBXD9cLRJ"}, "namespace": "bqSpqzQXQLDwYekq", "nonceStr": "QxXsjvvvGWTmeYWx", "paymentMethod": "SmiJd5a4VwGCZDZM", "paymentMethodFee": 62, "paymentOrderNo": "eQfMc3iHHtIsdQuI", "paymentProvider": "WXPAY", "paymentProviderFee": 63, "paymentStationUrl": "8sA12g4Go5QKO0Fz", "price": 3, "refundedTime": "1980-09-03T00:00:00Z", "salesTax": 92, "sandbox": false, "sku": "hHOpYfORJoEHxy1w", "status": "CHARGE_FAILED", "statusReason": "dUKgEtUn1CCS2uRa", "subscriptionId": "lxnkem3H8JlERNBP", "subtotalPrice": 49, "targetNamespace": "iYYgSHv1Ob3C0cFz", "targetUserId": "PqzOWlihkSYdNacF", "tax": 92, "totalPrice": 16, "totalTax": 98, "txEndTime": "1997-07-19T00:00:00Z", "type": "A9K8h8aWeq2dMM4v", "userId": "mzwe8IH0v9NtQHCb", "vat": 10}' \
    > test.out 2>&1
eval_tap $? 286 'ProcessUserSubscriptionNotification' test.out

#- 287 AcquireUserTicket
samples/cli/sample-apps Platform acquireUserTicket \
    --boothName '4n4tls5nJ7bslIAa' \
    --namespace $AB_NAMESPACE \
    --userId 'vse5kOuWRYP3bKZt' \
    --body '{"count": 44, "orderNo": "RgyGR4c3W1Uv887o"}' \
    > test.out 2>&1
eval_tap $? 287 'AcquireUserTicket' test.out

#- 288 QueryUserCurrencyWallets
samples/cli/sample-apps Platform queryUserCurrencyWallets \
    --namespace $AB_NAMESPACE \
    --userId 'sNVmDD30XL14GEV5' \
    > test.out 2>&1
eval_tap $? 288 'QueryUserCurrencyWallets' test.out

#- 289 DebitUserWalletByCurrencyCode
samples/cli/sample-apps Platform debitUserWalletByCurrencyCode \
    --currencyCode 'OlFjQTQ7W9RNCrGx' \
    --namespace $AB_NAMESPACE \
    --userId 'qxrbsAMZMhxuzfvQ' \
    --body '{"allowOverdraft": true, "amount": 75, "balanceOrigin": "IOS", "balanceSource": "ORDER_REVOCATION", "metadata": {"OxWLHvEEqLmtL9Zq": {}, "DQ7t5q3rwLvngqbs": {}, "b7fjwTR9rPpuVwJs": {}}, "reason": "DNDoaZ7lfY302JIs"}' \
    > test.out 2>&1
eval_tap $? 289 'DebitUserWalletByCurrencyCode' test.out

#- 290 ListUserCurrencyTransactions
samples/cli/sample-apps Platform listUserCurrencyTransactions \
    --currencyCode 'XZpFsF9BERsX4fAq' \
    --namespace $AB_NAMESPACE \
    --userId 'VWPOq6jJpNE6rKzb' \
    --limit '51' \
    --offset '15' \
    > test.out 2>&1
eval_tap $? 290 'ListUserCurrencyTransactions' test.out

#- 291 CheckBalance
samples/cli/sample-apps Platform checkBalance \
    --currencyCode 'xVtDLvGP0BLX1oSv' \
    --namespace $AB_NAMESPACE \
    --userId 'cEG7hlRhEc8KdneE' \
    --request '{"amount": 78, "debitBalanceSource": "PAYMENT", "metadata": {"bjkhS8nQYfrETQlW": {}, "Axt4o6dblSEAS6Fj": {}, "B9BX2uQ2Te0aPwDC": {}}, "reason": "munO9rwarDk2vSI8", "walletPlatform": "GooglePlay"}' \
    > test.out 2>&1
eval_tap $? 291 'CheckBalance' test.out

#- 292 CheckWallet
eval_tap 0 292 'CheckWallet # SKIP deprecated' test.out

#- 293 CreditUserWallet
samples/cli/sample-apps Platform creditUserWallet \
    --currencyCode '8hXyHW1VXeQ5MhbT' \
    --namespace $AB_NAMESPACE \
    --userId 'NbvQ2FfXmbKL6Dx7' \
    --body '{"amount": 88, "expireAt": "1979-05-06T00:00:00Z", "metadata": {"I7NkCpJ9pRLbXqQ9": {}, "TfGViIlrCKeBaEWD": {}, "CyOP8GOG1NksQtEl": {}}, "origin": "Epic", "reason": "UIDmrLE3aN1YLKkw", "source": "OTHER"}' \
    > test.out 2>&1
eval_tap $? 293 'CreditUserWallet' test.out

#- 294 DebitByWalletPlatform
samples/cli/sample-apps Platform debitByWalletPlatform \
    --currencyCode 'XK93gah90uJmUb0h' \
    --namespace $AB_NAMESPACE \
    --userId 'Ct2jsnt3GeskOOaq' \
    --request '{"amount": 26, "debitBalanceSource": "OTHER", "metadata": {"eMX1gPGjWXSXNjlj": {}, "mMDcJfLTgcr2N4y8": {}, "xiSRpccZK5xf0sw4": {}}, "reason": "J7s9XVdXJCL9VcxU", "walletPlatform": "Xbox"}' \
    > test.out 2>&1
eval_tap $? 294 'DebitByWalletPlatform' test.out

#- 295 PayWithUserWallet
samples/cli/sample-apps Platform payWithUserWallet \
    --currencyCode 'MtgKTwUNvRS2vmIO' \
    --namespace $AB_NAMESPACE \
    --userId 'utdU08cakF6wOlnM' \
    --body '{"amount": 78, "metadata": {"bR5DSqGrT0gUH8Pu": {}, "OHxLnJX36rrKdkb8": {}, "ekorVYhudzWpkB2s": {}}, "walletPlatform": "Xbox"}' \
    > test.out 2>&1
eval_tap $? 295 'PayWithUserWallet' test.out

#- 296 GetUserWallet
eval_tap 0 296 'GetUserWallet # SKIP deprecated' test.out

#- 297 DebitUserWallet
eval_tap 0 297 'DebitUserWallet # SKIP deprecated' test.out

#- 298 DisableUserWallet
eval_tap 0 298 'DisableUserWallet # SKIP deprecated' test.out

#- 299 EnableUserWallet
eval_tap 0 299 'EnableUserWallet # SKIP deprecated' test.out

#- 300 ListUserWalletTransactions
eval_tap 0 300 'ListUserWalletTransactions # SKIP deprecated' test.out

#- 301 ListViews
samples/cli/sample-apps Platform listViews \
    --namespace $AB_NAMESPACE \
    --storeId 'XwKA53q8zUPlv9Ct' \
    > test.out 2>&1
eval_tap $? 301 'ListViews' test.out

#- 302 CreateView
samples/cli/sample-apps Platform createView \
    --namespace $AB_NAMESPACE \
    --storeId '3K8MpV9H769jdedK' \
    --body '{"displayOrder": 66, "localizations": {"HfK5Xir5kbJAt1FT": {"description": "nd0CvIovGRib6J8h", "localExt": {"rYSaqY3dn9em7tNE": {}, "3L6PFlARjUyvQVEn": {}, "cZZq5Yi4EERpDTNh": {}}, "longDescription": "hulfQ6trte5t6l9V", "title": "OXtTpcXy2nSrw24z"}, "EMWnoNalUrCNjAAQ": {"description": "lIiaEP1NJqyD8KAn", "localExt": {"oNcAPAxnYnET4Vem": {}, "pnuMzEBvqemDDrbu": {}, "KkO5IWBOSzlej3qv": {}}, "longDescription": "j5OVbG2MmPbxty7b", "title": "AthSxRxKdkUPNnZA"}, "8NP8RH0wUP1f2Ied": {"description": "I2GllSmsvgD88vX9", "localExt": {"1776PlZ2wtY22qTG": {}, "rdLUN7bf7zbOnR79": {}, "d1I0ge9x6XWySGmY": {}}, "longDescription": "T7IIxIw0E5qkrKiE", "title": "gQbaPKSsNaqs5fx4"}}, "name": "Dj8LyQ9YAMuXyKTp"}' \
    > test.out 2>&1
eval_tap $? 302 'CreateView' test.out

#- 303 GetView
samples/cli/sample-apps Platform getView \
    --namespace $AB_NAMESPACE \
    --viewId 'Zczo3AjLQkF3eiG3' \
    --storeId '12UnjwabdWufYVHf' \
    > test.out 2>&1
eval_tap $? 303 'GetView' test.out

#- 304 UpdateView
samples/cli/sample-apps Platform updateView \
    --namespace $AB_NAMESPACE \
    --viewId 'bOdZxsRSvhy3QLM7' \
    --storeId 'VSInSlbSOZzx5UKm' \
    --body '{"displayOrder": 37, "localizations": {"YrR2SZZ2sBU3uUKe": {"description": "AZWNqdWkyyLaEKcT", "localExt": {"WgRLMAiBFkilaReI": {}, "pVLzVaop1jZm7gq2": {}, "BzuZWrG2PsEY5QB2": {}}, "longDescription": "t0ZKRVBEQDL1LQjk", "title": "CatHfmhfXOnA3ULu"}, "1Bcfzj85OWlyD88l": {"description": "5z3q8qLUZFi4V06O", "localExt": {"WxGBjaSPqP92bOOq": {}, "LMAso4mMg3WplLJr": {}, "hM3r5jRPRGUbe9VR": {}}, "longDescription": "obtREYbbsP5u8WlW", "title": "cWsukwbUgS9jOPqK"}, "maMUsn14ufC8BkJV": {"description": "C0uMKIb8fxBQpKbz", "localExt": {"oIflKXFPhM6p8s0W": {}, "busxcmA1zPMonxb4": {}, "HZklimIjuqEcdAIN": {}}, "longDescription": "FV1ZNF8oDINGYqY9", "title": "848LAjzu1aSz2TlW"}}, "name": "RxHFBCrLHNvn76eC"}' \
    > test.out 2>&1
eval_tap $? 304 'UpdateView' test.out

#- 305 DeleteView
samples/cli/sample-apps Platform deleteView \
    --namespace $AB_NAMESPACE \
    --viewId '2fPwvFTjG2ufFj6t' \
    --storeId 'ZcAuIFsouvQzEs2L' \
    > test.out 2>&1
eval_tap $? 305 'DeleteView' test.out

#- 306 QueryWallets
eval_tap 0 306 'QueryWallets # SKIP deprecated' test.out

#- 307 BulkCredit
samples/cli/sample-apps Platform bulkCredit \
    --namespace $AB_NAMESPACE \
    --body '[{"creditRequest": {"amount": 87, "expireAt": "1995-12-01T00:00:00Z", "metadata": {"KT1ExTaVpI0Wp3Ra": {}, "ZneYAta2i6WLxs2P": {}, "fuRzRfwdxTqUXG4r": {}}, "origin": "Playstation", "reason": "v2w3TfYD5HDnvBY2", "source": "REWARD"}, "currencyCode": "9I7n1RNEvCLcZfgb", "userIds": ["Pzct9hEgaJ3X9WWN", "HaEeDAvJKi9W40Bc", "K7Qp40DKPJeGT1c0"]}, {"creditRequest": {"amount": 38, "expireAt": "1985-01-23T00:00:00Z", "metadata": {"mpah6mvgy9TqEXSX": {}, "dHUwcI6wLKPwO0po": {}, "VoZmWuMykA3gl30x": {}}, "origin": "Twitch", "reason": "SiWwhEmWd35RLBeL", "source": "REFERRAL_BONUS"}, "currencyCode": "HlRv7d0PqLCJjWyI", "userIds": ["lGVLeAImckmKEbXB", "WQvoKYSY4wfsvebq", "YDfjoTOSqdmdtwKP"]}, {"creditRequest": {"amount": 81, "expireAt": "1979-12-12T00:00:00Z", "metadata": {"lo77RSMYS4ELnENV": {}, "YDYse7JaLx7UgO4l": {}, "TOPCfJeG0eGxX2ii": {}}, "origin": "Other", "reason": "Q4Eo3WJ6g7ALWa2I", "source": "CONSUME_ENTITLEMENT"}, "currencyCode": "74ZVJWxpjx5m1LjB", "userIds": ["tdSRXV9DjxZWUPZg", "tZFUQ9KuayWNeoJt", "yWZeIYLg03MfX6iB"]}]' \
    > test.out 2>&1
eval_tap $? 307 'BulkCredit' test.out

#- 308 BulkDebit
samples/cli/sample-apps Platform bulkDebit \
    --namespace $AB_NAMESPACE \
    --body '[{"currencyCode": "vAh0KhdJNXtSyMQY", "request": {"allowOverdraft": true, "amount": 16, "balanceOrigin": "Nintendo", "balanceSource": "ORDER_REVOCATION", "metadata": {"rVhMRbu1NkqUU4cq": {}, "leZBidtddm7kVNbH": {}, "34hKyNrRtHTwtNKJ": {}}, "reason": "84333C9nbx1YRWfs"}, "userIds": ["fbDP0JfHEiLJ076a", "rQer0u38ueiG6VbC", "EwIXvwuby3AzN5cd"]}, {"currencyCode": "GNu04IasyDgqnHnn", "request": {"allowOverdraft": false, "amount": 82, "balanceOrigin": "Other", "balanceSource": "DLC_REVOCATION", "metadata": {"DYja3Ur2PuJpDPmx": {}, "Q5FLANzKqA4Db5Gt": {}, "KloF0oyReVuto58A": {}}, "reason": "hnqnytaNmRv9Ut0Q"}, "userIds": ["V0chbO6HwRmqAfpr", "Fjg2F1leLEybGDed", "NuYXHD1f2Tb6HKj4"]}, {"currencyCode": "4AcaD0V73HgBcJ1S", "request": {"allowOverdraft": false, "amount": 96, "balanceOrigin": "Other", "balanceSource": "EXPIRATION", "metadata": {"QXg40Du1mgRFupXE": {}, "ruVl6VxJtqtRt7yk": {}, "chKfM28uw5Lbg5aG": {}}, "reason": "1POdaNffmG20yzdb"}, "userIds": ["2u5ShdXknHw0QPgZ", "PCIB1MkbUymgxV8I", "zhZywliPl48kPj7u"]}]' \
    > test.out 2>&1
eval_tap $? 308 'BulkDebit' test.out

#- 309 GetWallet
eval_tap 0 309 'GetWallet # SKIP deprecated' test.out

#- 310 SyncOrders
samples/cli/sample-apps Platform syncOrders \
    --nextEvaluatedKey 'EyVm4i1dIULMJVn0' \
    --end 'VjH7ALophO5SO31I' \
    --start 'BcKf1aY1sxQ0fmHi' \
    > test.out 2>&1
eval_tap $? 310 'SyncOrders' test.out

#- 311 TestAdyenConfig
samples/cli/sample-apps Platform testAdyenConfig \
    --sandbox 'true' \
    --body '{"allowedPaymentMethods": ["JcC9YGf9re3w48k0", "ENlenyXz2QilXxLD", "jsnvcmeaxSOfvLiq"], "apiKey": "vHTIkjHY0TMMupgZ", "authoriseAsCapture": false, "blockedPaymentMethods": ["GZfqd4lzzGTErKcB", "FzzO9nGLTmGdnrcG", "qM8dMklmJxX5L8Zn"], "clientKey": "d37Ul5Z0IilbcWMJ", "dropInSettings": "zItR9ADFbLvz6l9B", "liveEndpointUrlPrefix": "q8pgSaInxnCbZphT", "merchantAccount": "Xhy5WJvxx4CAbSA0", "notificationHmacKey": "8Brci88urxUN5FrE", "notificationPassword": "DDFmqGnSTfxJ3UT5", "notificationUsername": "XO5zuqrsIzeIwK0w", "returnUrl": "dIVlx34dlyDgCqKq", "settings": "qCsBPmIGUb7C0Cj2"}' \
    > test.out 2>&1
eval_tap $? 311 'TestAdyenConfig' test.out

#- 312 TestAliPayConfig
samples/cli/sample-apps Platform testAliPayConfig \
    --sandbox 'false' \
    --body '{"appId": "u3rfYZMKagm4yJ3e", "privateKey": "ft6hV6BJNbQEk2bc", "publicKey": "pEnJOKVtBzH9V8tE", "returnUrl": "QBmAezTWl9JFpftn"}' \
    > test.out 2>&1
eval_tap $? 312 'TestAliPayConfig' test.out

#- 313 TestCheckoutConfig
samples/cli/sample-apps Platform testCheckoutConfig \
    --sandbox 'true' \
    --body '{"publicKey": "XdZBXVq86h0Apl8a", "secretKey": "naXmmZfsZ5gmtG8g"}' \
    > test.out 2>&1
eval_tap $? 313 'TestCheckoutConfig' test.out

#- 314 DebugMatchedPaymentMerchantConfig
samples/cli/sample-apps Platform debugMatchedPaymentMerchantConfig \
    --namespace 'TL89qUbnfrIeUvkc' \
    --region 'vhZt6Yux3os5Qw31' \
    > test.out 2>&1
eval_tap $? 314 'DebugMatchedPaymentMerchantConfig' test.out

#- 315 TestPayPalConfig
samples/cli/sample-apps Platform testPayPalConfig \
    --sandbox 'false' \
    --body '{"clientID": "t6LFE2endeEimcnS", "clientSecret": "9ZKBhAhq1XHHis1i", "returnUrl": "H1T1DcsPYirdVjmL", "webHookId": "rbDV9N6cEkr94kr8"}' \
    > test.out 2>&1
eval_tap $? 315 'TestPayPalConfig' test.out

#- 316 TestStripeConfig
samples/cli/sample-apps Platform testStripeConfig \
    --sandbox 'false' \
    --body '{"allowedPaymentMethodTypes": ["6UcgDlnwnu5b6P7u", "pNO3rQiGV5e9A7Xp", "8Rhe16o2VNP9MpWk"], "publishableKey": "WTKf7LUXiH2gAHrn", "secretKey": "eMO3FOy6c8MRM1bn", "webhookSecret": "oXEI8qxVIeF18SMp"}' \
    > test.out 2>&1
eval_tap $? 316 'TestStripeConfig' test.out

#- 317 TestWxPayConfig
samples/cli/sample-apps Platform testWxPayConfig \
    --body '{"appId": "DAZsHeTzQhVn9C96", "key": "RaVD7eyyiWrH4h8T", "mchid": "ubcezuHZloDcVGoK", "returnUrl": "GAEUioDxcBoilsrV"}' \
    > test.out 2>&1
eval_tap $? 317 'TestWxPayConfig' test.out

#- 318 TestXsollaConfig
samples/cli/sample-apps Platform testXsollaConfig \
    --body '{"apiKey": "Go6ZW6WA4TtAvUro", "flowCompletionUrl": "C9lyAuM8MiWZvkGh", "merchantId": 18, "projectId": 14, "projectSecretKey": "Qoj4958Lz39N9jyJ"}' \
    > test.out 2>&1
eval_tap $? 318 'TestXsollaConfig' test.out

#- 319 GetPaymentMerchantConfig
samples/cli/sample-apps Platform getPaymentMerchantConfig \
    --id 'QhC3VE8TEIIx8WOr' \
    > test.out 2>&1
eval_tap $? 319 'GetPaymentMerchantConfig' test.out

#- 320 UpdateAdyenConfig
samples/cli/sample-apps Platform updateAdyenConfig \
    --id '7rFRKIAlMra72GH2' \
    --sandbox 'false' \
    --validate 'true' \
    --body '{"allowedPaymentMethods": ["gLaJfaKWZXCs61XG", "jupAF8WZoMtmauKs", "ieNATGRUoQyIRj0j"], "apiKey": "UauKjKE7gBl02mjm", "authoriseAsCapture": true, "blockedPaymentMethods": ["tuwV2cSQFtyCbQwU", "fGs7YkjAmj2pq9Nd", "UvoowVopfs0VjY9p"], "clientKey": "ZqyUrPBt7CzOI5je", "dropInSettings": "96LyPw8byUL4Qvbz", "liveEndpointUrlPrefix": "EaYUWhe4wng9RRrs", "merchantAccount": "ZcQRORVAN64JmEQf", "notificationHmacKey": "C3MXuSEaybMsUQLH", "notificationPassword": "13ym8Wztm37zFxgl", "notificationUsername": "URdH966Pn6ma8Aeg", "returnUrl": "iL9f9ihkgE5MVC35", "settings": "dTWmlyfQWknN777h"}' \
    > test.out 2>&1
eval_tap $? 320 'UpdateAdyenConfig' test.out

#- 321 TestAdyenConfigById
samples/cli/sample-apps Platform testAdyenConfigById \
    --id 'vYkzACtTS2MUQvIC' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 321 'TestAdyenConfigById' test.out

#- 322 UpdateAliPayConfig
samples/cli/sample-apps Platform updateAliPayConfig \
    --id 'RF6EeNysx3FMgFvN' \
    --sandbox 'false' \
    --validate 'false' \
    --body '{"appId": "idhMyIuZcuvbMNf7", "privateKey": "OGhEauHqVKOFs934", "publicKey": "OsmLlLA48uY02cnj", "returnUrl": "VAfWa3cwh6THzSqA"}' \
    > test.out 2>&1
eval_tap $? 322 'UpdateAliPayConfig' test.out

#- 323 TestAliPayConfigById
samples/cli/sample-apps Platform testAliPayConfigById \
    --id 'Sj7kzoWoABGQ88WR' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 323 'TestAliPayConfigById' test.out

#- 324 UpdateCheckoutConfig
samples/cli/sample-apps Platform updateCheckoutConfig \
    --id '3XJk5xw3UuacN3bh' \
    --sandbox 'false' \
    --validate 'false' \
    --body '{"publicKey": "Likde5Y3z7biKtff", "secretKey": "xDpaHnViM2VU171b"}' \
    > test.out 2>&1
eval_tap $? 324 'UpdateCheckoutConfig' test.out

#- 325 TestCheckoutConfigById
samples/cli/sample-apps Platform testCheckoutConfigById \
    --id '1OVYtFJbe6hxKiGH' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 325 'TestCheckoutConfigById' test.out

#- 326 UpdatePayPalConfig
samples/cli/sample-apps Platform updatePayPalConfig \
    --id 'PzRC0pDHz0f0DGkQ' \
    --sandbox 'false' \
    --validate 'false' \
    --body '{"clientID": "FUrlRPygmQLixrF6", "clientSecret": "k9P599JhC2UykNDx", "returnUrl": "aawgx7VDLqQiDTzw", "webHookId": "1PPioTxPb3AXZiGK"}' \
    > test.out 2>&1
eval_tap $? 326 'UpdatePayPalConfig' test.out

#- 327 TestPayPalConfigById
samples/cli/sample-apps Platform testPayPalConfigById \
    --id 'pDymBQRXzri4r53J' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 327 'TestPayPalConfigById' test.out

#- 328 UpdateStripeConfig
samples/cli/sample-apps Platform updateStripeConfig \
    --id 'e9UsHWDCVFP5llkG' \
    --sandbox 'false' \
    --validate 'true' \
    --body '{"allowedPaymentMethodTypes": ["scKVr0a5cL0ZgUli", "83tK1M6R3MsYhwuK", "I8ytSJsA0toHJVOz"], "publishableKey": "9iT6jbtaElaMLi7B", "secretKey": "b2GKNmLxw3JkhQJV", "webhookSecret": "UkOOu3nT2PHZzpCn"}' \
    > test.out 2>&1
eval_tap $? 328 'UpdateStripeConfig' test.out

#- 329 TestStripeConfigById
samples/cli/sample-apps Platform testStripeConfigById \
    --id 'WAJJe7WnpTcjRHQu' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 329 'TestStripeConfigById' test.out

#- 330 UpdateWxPayConfig
samples/cli/sample-apps Platform updateWxPayConfig \
    --id 'mdSVwKjMNhuN49tN' \
    --validate 'true' \
    --body '{"appId": "Css3dKbL29RjVsHz", "key": "vtUKCahHKoIeiHXV", "mchid": "whfL8E5PFum2Wg7A", "returnUrl": "2GHFYzU8mFsi1gdg"}' \
    > test.out 2>&1
eval_tap $? 330 'UpdateWxPayConfig' test.out

#- 331 UpdateWxPayConfigCert
samples/cli/sample-apps Platform updateWxPayConfigCert \
    --id 'CmGbFvCrcKAVntzq' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 331 'UpdateWxPayConfigCert' test.out

#- 332 TestWxPayConfigById
samples/cli/sample-apps Platform testWxPayConfigById \
    --id '9EpYnEwv80rAo5gT' \
    > test.out 2>&1
eval_tap $? 332 'TestWxPayConfigById' test.out

#- 333 UpdateXsollaConfig
samples/cli/sample-apps Platform updateXsollaConfig \
    --id '6StDOl8AmO8nLXGr' \
    --validate 'true' \
    --body '{"apiKey": "Sluk7Z3TOe51wYnC", "flowCompletionUrl": "ERlAh0WlhuhqT3EX", "merchantId": 64, "projectId": 58, "projectSecretKey": "LNXWHMkd4T6cqo3r"}' \
    > test.out 2>&1
eval_tap $? 333 'UpdateXsollaConfig' test.out

#- 334 TestXsollaConfigById
samples/cli/sample-apps Platform testXsollaConfigById \
    --id 'iO046YLPqynjlE3a' \
    > test.out 2>&1
eval_tap $? 334 'TestXsollaConfigById' test.out

#- 335 UpdateXsollaUIConfig
samples/cli/sample-apps Platform updateXsollaUIConfig \
    --id '4LsZnHP7EV4h92tL' \
    --body '{"device": "MOBILE", "showCloseButton": false, "size": "LARGE", "theme": "DARK"}' \
    > test.out 2>&1
eval_tap $? 335 'UpdateXsollaUIConfig' test.out

#- 336 QueryPaymentProviderConfig
samples/cli/sample-apps Platform queryPaymentProviderConfig \
    --limit '18' \
    --namespace 'YdzO9cV9mcNHaiAm' \
    --offset '62' \
    --region 'dMYakklbpojekCeK' \
    > test.out 2>&1
eval_tap $? 336 'QueryPaymentProviderConfig' test.out

#- 337 CreatePaymentProviderConfig
samples/cli/sample-apps Platform createPaymentProviderConfig \
    --body '{"aggregate": "XSOLLA", "namespace": "0ZFtZZkeaEXRWUlE", "region": "sBp07PJEf8X7GSaS", "sandboxTaxJarApiToken": "v9fToKbxdWvcoNaq", "specials": ["WALLET", "PAYPAL", "CHECKOUT"], "taxJarApiToken": "Xz4C8tG7h9FRMoKh", "taxJarEnabled": true, "useGlobalTaxJarApiToken": false}' \
    > test.out 2>&1
eval_tap $? 337 'CreatePaymentProviderConfig' test.out

#- 338 GetAggregatePaymentProviders
samples/cli/sample-apps Platform getAggregatePaymentProviders \
    > test.out 2>&1
eval_tap $? 338 'GetAggregatePaymentProviders' test.out

#- 339 DebugMatchedPaymentProviderConfig
samples/cli/sample-apps Platform debugMatchedPaymentProviderConfig \
    --namespace 'yhJwF27vgDS2oNh5' \
    --region 'n8OnVXu6rKHwQnIs' \
    > test.out 2>&1
eval_tap $? 339 'DebugMatchedPaymentProviderConfig' test.out

#- 340 GetSpecialPaymentProviders
samples/cli/sample-apps Platform getSpecialPaymentProviders \
    > test.out 2>&1
eval_tap $? 340 'GetSpecialPaymentProviders' test.out

#- 341 UpdatePaymentProviderConfig
samples/cli/sample-apps Platform updatePaymentProviderConfig \
    --id 'xZFAk9tvvz0LIBCR' \
    --body '{"aggregate": "ADYEN", "namespace": "EoYEXfaCVfLmSskC", "region": "jn46kYsmOm9D4hSM", "sandboxTaxJarApiToken": "LuqDKJFzRnXb1kir", "specials": ["STRIPE", "CHECKOUT", "WALLET"], "taxJarApiToken": "xVSC09V0HorNh8Fj", "taxJarEnabled": false, "useGlobalTaxJarApiToken": true}' \
    > test.out 2>&1
eval_tap $? 341 'UpdatePaymentProviderConfig' test.out

#- 342 DeletePaymentProviderConfig
samples/cli/sample-apps Platform deletePaymentProviderConfig \
    --id 'f5Rhv1pS7XkeyJ8U' \
    > test.out 2>&1
eval_tap $? 342 'DeletePaymentProviderConfig' test.out

#- 343 GetPaymentTaxConfig
samples/cli/sample-apps Platform getPaymentTaxConfig \
    > test.out 2>&1
eval_tap $? 343 'GetPaymentTaxConfig' test.out

#- 344 UpdatePaymentTaxConfig
samples/cli/sample-apps Platform updatePaymentTaxConfig \
    --body '{"sandboxTaxJarApiToken": "xCsIOSUZgxxZA9SU", "taxJarApiToken": "xz4j4ktnnaIx0DjY", "taxJarEnabled": false, "taxJarProductCodesMapping": {"ox3gauOGmPGIYUkO": "pIdiURNkEnsDikx0", "bOu9prG1jNNTDYQg": "UmV7jzHe4X1IrtBm", "lUWzM4CQ2mO8tww8": "H5y0t77907GK9zWt"}}' \
    > test.out 2>&1
eval_tap $? 344 'UpdatePaymentTaxConfig' test.out

#- 345 SyncPaymentOrders
samples/cli/sample-apps Platform syncPaymentOrders \
    --nextEvaluatedKey 'Q8pvvSEG6maJl5Ss' \
    --end 'OVAYtttwzK4Tczo4' \
    --start 'daQTNNahPhx3ZUgj' \
    > test.out 2>&1
eval_tap $? 345 'SyncPaymentOrders' test.out

#- 346 PublicGetRootCategories
samples/cli/sample-apps Platform publicGetRootCategories \
    --namespace $AB_NAMESPACE \
    --language 'vzVpUFnXElTgP0ye' \
    --storeId 'v2yBSoTWEu7s5L1a' \
    > test.out 2>&1
eval_tap $? 346 'PublicGetRootCategories' test.out

#- 347 DownloadCategories
samples/cli/sample-apps Platform downloadCategories \
    --namespace $AB_NAMESPACE \
    --language 'yjRbTRsGggJkrPEj' \
    --storeId '3KFVyk1IBIjOlsGs' \
    > test.out 2>&1
eval_tap $? 347 'DownloadCategories' test.out

#- 348 PublicGetCategory
samples/cli/sample-apps Platform publicGetCategory \
    --categoryPath 'mNoIyo30B5cTDqfT' \
    --namespace $AB_NAMESPACE \
    --language 'YzjMoN3czLTa4qC2' \
    --storeId 'Yb8TUUmz6DlIh9lN' \
    > test.out 2>&1
eval_tap $? 348 'PublicGetCategory' test.out

#- 349 PublicGetChildCategories
samples/cli/sample-apps Platform publicGetChildCategories \
    --categoryPath 'pVGTbG5pe6mYUguX' \
    --namespace $AB_NAMESPACE \
    --language 'NVcpQmbEPl57PLJV' \
    --storeId 'wuw6K63iMP5VYW1g' \
    > test.out 2>&1
eval_tap $? 349 'PublicGetChildCategories' test.out

#- 350 PublicGetDescendantCategories
samples/cli/sample-apps Platform publicGetDescendantCategories \
    --categoryPath 'QVIdlEO4cJr1xUOC' \
    --namespace $AB_NAMESPACE \
    --language 's08mPPukeLFHWcFN' \
    --storeId 'pZGPSFl9wvPKMbyR' \
    > test.out 2>&1
eval_tap $? 350 'PublicGetDescendantCategories' test.out

#- 351 PublicListCurrencies
samples/cli/sample-apps Platform publicListCurrencies \
    --namespace $AB_NAMESPACE \
    --currencyType 'REAL' \
    > test.out 2>&1
eval_tap $? 351 'PublicListCurrencies' test.out

#- 352 GeDLCDurableRewardShortMap
samples/cli/sample-apps Platform geDLCDurableRewardShortMap \
    --namespace $AB_NAMESPACE \
    --dlcType 'PSN' \
    > test.out 2>&1
eval_tap $? 352 'GeDLCDurableRewardShortMap' test.out

#- 353 GetIAPItemMapping
samples/cli/sample-apps Platform getIAPItemMapping \
    --namespace $AB_NAMESPACE \
    --platform 'APPLE' \
    > test.out 2>&1
eval_tap $? 353 'GetIAPItemMapping' test.out

#- 354 PublicGetItemByAppId
samples/cli/sample-apps Platform publicGetItemByAppId \
    --namespace $AB_NAMESPACE \
    --language 'cJTNAdjbJqaJxet2' \
    --region '45T3dPmgHazw2AeL' \
    --storeId 'dgCj6Wt21Rmr3jxb' \
    --appId 'nNncRhaBLvHo5StB' \
    > test.out 2>&1
eval_tap $? 354 'PublicGetItemByAppId' test.out

#- 355 PublicQueryItems
samples/cli/sample-apps Platform publicQueryItems \
    --namespace $AB_NAMESPACE \
    --appType 'GAME' \
    --autoCalcEstimatedPrice 'true' \
    --baseAppId '9yNPKOa26Mr0kFRA' \
    --categoryPath '7VnfruJ7FtxTSyqF' \
    --features 'FUvsESQMROHkQpuf' \
    --includeSubCategoryItem 'false' \
    --itemType 'INGAMEITEM' \
    --language 't4zyCtnc1yaCppWu' \
    --limit '79' \
    --offset '42' \
    --region 'YWNFkdKT6EmkoFod' \
    --sortBy '["createdAt", "displayOrder"]' \
    --storeId 'r2ifOLEZK2Va5cjH' \
    --tags '4X4LamIysrGg4yYd' \
    > test.out 2>&1
eval_tap $? 355 'PublicQueryItems' test.out

#- 356 PublicGetItemBySku
samples/cli/sample-apps Platform publicGetItemBySku \
    --namespace $AB_NAMESPACE \
    --autoCalcEstimatedPrice 'true' \
    --language 'N45ds3TU4xDXyxo4' \
    --region 'DZsju3wmYdmsahs3' \
    --storeId 'eLvSKUcgZqU9STVc' \
    --sku '71ROWSzLh9e4wGIR' \
    > test.out 2>&1
eval_tap $? 356 'PublicGetItemBySku' test.out

#- 357 PublicGetEstimatedPrice
samples/cli/sample-apps Platform publicGetEstimatedPrice \
    --namespace $AB_NAMESPACE \
    --region 'zBL3tT8HFw72hL2k' \
    --storeId 'OXtSURSQEU8RZpjk' \
    --itemIds 'sJTqlytsHEERjA4u' \
    > test.out 2>&1
eval_tap $? 357 'PublicGetEstimatedPrice' test.out

#- 358 PublicBulkGetItems
samples/cli/sample-apps Platform publicBulkGetItems \
    --namespace $AB_NAMESPACE \
    --autoCalcEstimatedPrice 'true' \
    --language 'GTVV7KO2uT4DU2di' \
    --region 'CzOdHeKW5vLl5NUX' \
    --storeId 'hF9oO0z1UAOSL8zf' \
    --itemIds '91AFbwKEWDRdyIuq' \
    > test.out 2>&1
eval_tap $? 358 'PublicBulkGetItems' test.out

#- 359 PublicValidateItemPurchaseCondition
samples/cli/sample-apps Platform publicValidateItemPurchaseCondition \
    --namespace $AB_NAMESPACE \
    --body '{"itemIds": ["HDpahnEOa1qsNd1k", "sSE17xQFBoGQgwDO", "jXQC5tx0vwIlZgG8"]}' \
    > test.out 2>&1
eval_tap $? 359 'PublicValidateItemPurchaseCondition' test.out

#- 360 PublicSearchItems
samples/cli/sample-apps Platform publicSearchItems \
    --namespace $AB_NAMESPACE \
    --autoCalcEstimatedPrice 'false' \
    --itemType 'OPTIONBOX' \
    --limit '51' \
    --offset '41' \
    --region 'R3kBVFhiTVPddQUc' \
    --storeId 'XvZxPRHNb4a9ON4l' \
    --keyword 'BzaI0b3Y4kPbbYlr' \
    --language 'Xxyk32WJcfldQgb7' \
    > test.out 2>&1
eval_tap $? 360 'PublicSearchItems' test.out

#- 361 PublicGetApp
samples/cli/sample-apps Platform publicGetApp \
    --itemId 'PorgFjnqjyGy4mDN' \
    --namespace $AB_NAMESPACE \
    --language 'ikwMtEaL2aAbKWZq' \
    --region 'obrgUFIeH7G8DfZj' \
    --storeId 'QjIT6ckh3EPZiMyd' \
    > test.out 2>&1
eval_tap $? 361 'PublicGetApp' test.out

#- 362 PublicGetItemDynamicData
samples/cli/sample-apps Platform publicGetItemDynamicData \
    --itemId 'AKh8sImGp2AhoJ0s' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 362 'PublicGetItemDynamicData' test.out

#- 363 PublicGetItem
samples/cli/sample-apps Platform publicGetItem \
    --itemId '6dbaG9BvcDwjCgqk' \
    --namespace $AB_NAMESPACE \
    --autoCalcEstimatedPrice 'true' \
    --language 'EPLe41JCIES3FinA' \
    --populateBundle 'false' \
    --region 'Sce89VChc08491Oh' \
    --storeId 'zCuf0tBdDNZOFVjH' \
    > test.out 2>&1
eval_tap $? 363 'PublicGetItem' test.out

#- 364 GetPaymentCustomization
eval_tap 0 364 'GetPaymentCustomization # SKIP deprecated' test.out

#- 365 PublicGetPaymentUrl
samples/cli/sample-apps Platform publicGetPaymentUrl \
    --namespace $AB_NAMESPACE \
    --body '{"paymentOrderNo": "2f6tq8y1Y71PPQaj", "paymentProvider": "ADYEN", "returnUrl": "KXgTblmhBXBzfvVF", "ui": "U33xTITJZS8l1g4q", "zipCode": "HnD01rZpH50pQRdd"}' \
    > test.out 2>&1
eval_tap $? 365 'PublicGetPaymentUrl' test.out

#- 366 PublicGetPaymentMethods
samples/cli/sample-apps Platform publicGetPaymentMethods \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo '2q7R5B9lpMtTuiB6' \
    > test.out 2>&1
eval_tap $? 366 'PublicGetPaymentMethods' test.out

#- 367 PublicGetUnpaidPaymentOrder
samples/cli/sample-apps Platform publicGetUnpaidPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo '7iPu0BCLg2KGXMJF' \
    > test.out 2>&1
eval_tap $? 367 'PublicGetUnpaidPaymentOrder' test.out

#- 368 Pay
samples/cli/sample-apps Platform pay \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'lrYT8g5PKmMSCLJr' \
    --paymentProvider 'WXPAY' \
    --zipCode 'ZP1RKrXXd6ATbS5l' \
    --body '{"token": "ggL5dmLGqcFApNCR"}' \
    > test.out 2>&1
eval_tap $? 368 'Pay' test.out

#- 369 PublicCheckPaymentOrderPaidStatus
samples/cli/sample-apps Platform publicCheckPaymentOrderPaidStatus \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'ZxczYh1RFu0W44xI' \
    > test.out 2>&1
eval_tap $? 369 'PublicCheckPaymentOrderPaidStatus' test.out

#- 370 GetPaymentPublicConfig
samples/cli/sample-apps Platform getPaymentPublicConfig \
    --namespace $AB_NAMESPACE \
    --sandbox 'false' \
    --paymentProvider 'WALLET' \
    --region 'mpyjQAxVVykUnyvd' \
    > test.out 2>&1
eval_tap $? 370 'GetPaymentPublicConfig' test.out

#- 371 PublicGetQRCode
samples/cli/sample-apps Platform publicGetQRCode \
    --namespace $AB_NAMESPACE \
    --code '9jQMlnmKCgcBIajC' \
    > test.out 2>&1
eval_tap $? 371 'PublicGetQRCode' test.out

#- 372 PublicNormalizePaymentReturnUrl
samples/cli/sample-apps Platform publicNormalizePaymentReturnUrl \
    --namespace $AB_NAMESPACE \
    --payerID 'II1YMQfuTTLaKxNg' \
    --foreinginvoice 'hPq4gw56l2vzIOlQ' \
    --invoiceId 'HuwnZMfR9gIU0T5a' \
    --payload 'cQtpIWFNI3ifBG35' \
    --redirectResult 'WoxCanFFMbnLx9Rq' \
    --resultCode 'e7VsvDQYzXzmJ5xN' \
    --sessionId 'x61z4oQKIHc0YZrr' \
    --status 'Ia0EJzBIwyt0ObDK' \
    --token 'v1xKZY1FVXoUsJT6' \
    --type '2ysmq7cam6PpVHZm' \
    --userId 'tYA7wR5iWt4Q8RpT' \
    --orderNo 'onKsID3bkvqEC6Kk' \
    --paymentOrderNo 'uOIIyAmHvZUDjNVh' \
    --paymentProvider 'WXPAY' \
    --returnUrl '2cMzHcOJkBqJZkkQ' \
    > test.out 2>&1
eval_tap $? 372 'PublicNormalizePaymentReturnUrl' test.out

#- 373 GetPaymentTaxValue
samples/cli/sample-apps Platform getPaymentTaxValue \
    --namespace $AB_NAMESPACE \
    --zipCode 'CNZ1jL45YR077CPS' \
    --paymentOrderNo 'UC1Sr9dJos5Fij3s' \
    --paymentProvider 'ALIPAY' \
    > test.out 2>&1
eval_tap $? 373 'GetPaymentTaxValue' test.out

#- 374 GetRewardByCode
samples/cli/sample-apps Platform getRewardByCode \
    --namespace $AB_NAMESPACE \
    --rewardCode 'mUSvqUCENM7AdhBC' \
    > test.out 2>&1
eval_tap $? 374 'GetRewardByCode' test.out

#- 375 QueryRewards1
samples/cli/sample-apps Platform queryRewards1 \
    --namespace $AB_NAMESPACE \
    --eventTopic 'TdyuKrah10tiBRip' \
    --limit '30' \
    --offset '0' \
    --sortBy '["namespace:desc", "rewardCode", "namespace"]' \
    > test.out 2>&1
eval_tap $? 375 'QueryRewards1' test.out

#- 376 GetReward1
samples/cli/sample-apps Platform getReward1 \
    --namespace $AB_NAMESPACE \
    --rewardId '70ISzs3ZWDZalowy' \
    > test.out 2>&1
eval_tap $? 376 'GetReward1' test.out

#- 377 PublicListStores
samples/cli/sample-apps Platform publicListStores \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 377 'PublicListStores' test.out

#- 378 PublicExistsAnyMyActiveEntitlement
samples/cli/sample-apps Platform publicExistsAnyMyActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --appIds '["CNR3XoC1Qr0DiaWQ", "w5RLRoNO7Qhclkcz", "ePYuTwMs2jcsCCBS"]' \
    --itemIds '["nclmmwJAuZpJqwD2", "I1RgJyGFso5fKUDO", "R5lDg6KETFcEydun"]' \
    --skus '["Ofk29bc6yaVy5vfb", "8xbgLlr6BX9pSTB9", "PjXPsVQwkFkAnMm4"]' \
    > test.out 2>&1
eval_tap $? 378 'PublicExistsAnyMyActiveEntitlement' test.out

#- 379 PublicGetMyAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform publicGetMyAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --appId 'oQRGb085BnmeJXjI' \
    > test.out 2>&1
eval_tap $? 379 'PublicGetMyAppEntitlementOwnershipByAppId' test.out

#- 380 PublicGetMyEntitlementOwnershipByItemId
samples/cli/sample-apps Platform publicGetMyEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --entitlementClazz 'MEDIA' \
    --itemId 'nju11e5DotNsriRk' \
    > test.out 2>&1
eval_tap $? 380 'PublicGetMyEntitlementOwnershipByItemId' test.out

#- 381 PublicGetMyEntitlementOwnershipBySku
samples/cli/sample-apps Platform publicGetMyEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --entitlementClazz 'CODE' \
    --sku 'WOKwIo1f8cJoctWB' \
    > test.out 2>&1
eval_tap $? 381 'PublicGetMyEntitlementOwnershipBySku' test.out

#- 382 PublicGetEntitlementOwnershipToken
samples/cli/sample-apps Platform publicGetEntitlementOwnershipToken \
    --namespace $AB_NAMESPACE \
    --appIds '["7oh4VMdxJgViAQT0", "YGkykLX8PvesLpcr", "LnXDrpmczEqCjRpu"]' \
    --itemIds '["UaUROvxzOzm8T3gw", "QSi2bNZnpDjyyPhW", "oMwrG3yOkupUqvtU"]' \
    --skus '["MoUvPVSIjBkt4K6I", "LpcWssumOim3CUVC", "nJmNAM03onlnH5LA"]' \
    > test.out 2>&1
eval_tap $? 382 'PublicGetEntitlementOwnershipToken' test.out

#- 383 SyncTwitchDropsEntitlement
samples/cli/sample-apps Platform syncTwitchDropsEntitlement \
    --namespace $AB_NAMESPACE \
    --body '{"gameId": "Dyg4hTOlsFl4qPC5", "language": "LrK-rJUt", "region": "jIhiT1WkNXM0oMIb"}' \
    > test.out 2>&1
eval_tap $? 383 'SyncTwitchDropsEntitlement' test.out

#- 384 PublicGetMyWallet
samples/cli/sample-apps Platform publicGetMyWallet \
    --currencyCode 'IWbW6Rsiogzj2jyW' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 384 'PublicGetMyWallet' test.out

#- 385 SyncEpicGameDLC
samples/cli/sample-apps Platform syncEpicGameDLC \
    --namespace $AB_NAMESPACE \
    --userId 'bdsIu64qbCAAOSct' \
    --body '{"epicGamesJwtToken": "zdYLy6j6UPqzJsMd"}' \
    > test.out 2>&1
eval_tap $? 385 'SyncEpicGameDLC' test.out

#- 386 SyncOculusDLC
samples/cli/sample-apps Platform syncOculusDLC \
    --namespace $AB_NAMESPACE \
    --userId '1IwSJhXT6bFZmsJ3' \
    > test.out 2>&1
eval_tap $? 386 'SyncOculusDLC' test.out

#- 387 PublicSyncPsnDlcInventory
samples/cli/sample-apps Platform publicSyncPsnDlcInventory \
    --namespace $AB_NAMESPACE \
    --userId 'UlayyakoakWZPiaA' \
    --body '{"serviceLabel": 16}' \
    > test.out 2>&1
eval_tap $? 387 'PublicSyncPsnDlcInventory' test.out

#- 388 PublicSyncPsnDlcInventoryWithMultipleServiceLabels
samples/cli/sample-apps Platform publicSyncPsnDlcInventoryWithMultipleServiceLabels \
    --namespace $AB_NAMESPACE \
    --userId '8NGq9lgTW2mszt7Z' \
    --body '{"serviceLabels": [58, 19, 79]}' \
    > test.out 2>&1
eval_tap $? 388 'PublicSyncPsnDlcInventoryWithMultipleServiceLabels' test.out

#- 389 SyncSteamDLC
samples/cli/sample-apps Platform syncSteamDLC \
    --namespace $AB_NAMESPACE \
    --userId 'b5uBdFLHTGQwuNxk' \
    --body '{"appId": "9rvImkGGyJwwRSgx", "steamId": "O9Xx0XyCKufrTSG1"}' \
    > test.out 2>&1
eval_tap $? 389 'SyncSteamDLC' test.out

#- 390 SyncXboxDLC
samples/cli/sample-apps Platform syncXboxDLC \
    --namespace $AB_NAMESPACE \
    --userId '0hv04uPhFFFC0yYY' \
    --body '{"xstsToken": "pSC3JJ3JyJ7YSX3o"}' \
    > test.out 2>&1
eval_tap $? 390 'SyncXboxDLC' test.out

#- 391 PublicQueryUserEntitlements
samples/cli/sample-apps Platform publicQueryUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'J7pQpuruEj26539w' \
    --appType 'SOFTWARE' \
    --entitlementClazz 'CODE' \
    --entitlementName 'ruFg3Nop6z3gAZyj' \
    --features '["YVjUVN4mcoZzLwYs", "fndqcmJzVkUsM0mY", "vvzzjezqiPLytvoT"]' \
    --itemId '["KYuwOIlCpoo5QGKq", "zRfxglL1qT0AJXOl", "UmvtT9jwk7k5DOBA"]' \
    --limit '11' \
    --offset '93' \
    > test.out 2>&1
eval_tap $? 391 'PublicQueryUserEntitlements' test.out

#- 392 PublicGetUserAppEntitlementByAppId
samples/cli/sample-apps Platform publicGetUserAppEntitlementByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'CXjh2eRnXWdSuw6u' \
    --appId '1GBLf2GD7qJdr2RH' \
    > test.out 2>&1
eval_tap $? 392 'PublicGetUserAppEntitlementByAppId' test.out

#- 393 PublicQueryUserEntitlementsByAppType
samples/cli/sample-apps Platform publicQueryUserEntitlementsByAppType \
    --namespace $AB_NAMESPACE \
    --userId 'alSx8pa5n241mI1K' \
    --limit '87' \
    --offset '60' \
    --appType 'GAME' \
    > test.out 2>&1
eval_tap $? 393 'PublicQueryUserEntitlementsByAppType' test.out

#- 394 PublicGetUserEntitlementByItemId
eval_tap 0 394 'PublicGetUserEntitlementByItemId # SKIP deprecated' test.out

#- 395 PublicGetUserEntitlementBySku
eval_tap 0 395 'PublicGetUserEntitlementBySku # SKIP deprecated' test.out

#- 396 PublicExistsAnyUserActiveEntitlement
samples/cli/sample-apps Platform publicExistsAnyUserActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'mvQduEM1jFXKkeVE' \
    --appIds '["cM0psQCIEeU3FCqP", "Vi1FlO1eECK6zSTO", "oaBel3N9yaCE1A5E"]' \
    --itemIds '["B6BlU7uOmaqkUuf7", "gD7cXyovwZqWMSUz", "hfkc3of1HjdEiCYz"]' \
    --skus '["raKWsngyQAQXohB9", "wi8hRN6DQrPNlZCz", "92CyDZmJWKpLtCCD"]' \
    > test.out 2>&1
eval_tap $? 396 'PublicExistsAnyUserActiveEntitlement' test.out

#- 397 PublicGetUserAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform publicGetUserAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'NxWJS6SG6G7qoMuo' \
    --appId 'AK1PM5PVQyc5rpaV' \
    > test.out 2>&1
eval_tap $? 397 'PublicGetUserAppEntitlementOwnershipByAppId' test.out

#- 398 PublicGetUserEntitlementOwnershipByItemId
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'Zkd80hLxcDg69fZz' \
    --entitlementClazz 'ENTITLEMENT' \
    --itemId 'YiSjgZr1ln4abCQk' \
    > test.out 2>&1
eval_tap $? 398 'PublicGetUserEntitlementOwnershipByItemId' test.out

#- 399 PublicGetUserEntitlementOwnershipByItemIds
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'odhhl9cNKwIcwV6w' \
    --ids '["8eYhm4oflDW5NQCk", "95qlsXAazB42NMfR", "ILyAE2yifV9Dhqtw"]' \
    > test.out 2>&1
eval_tap $? 399 'PublicGetUserEntitlementOwnershipByItemIds' test.out

#- 400 PublicGetUserEntitlementOwnershipBySku
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --userId 'alj9qnfQQ75VRQWU' \
    --entitlementClazz 'CODE' \
    --sku 'nQ0VmYeWxkpYfWct' \
    > test.out 2>&1
eval_tap $? 400 'PublicGetUserEntitlementOwnershipBySku' test.out

#- 401 PublicGetUserEntitlement
samples/cli/sample-apps Platform publicGetUserEntitlement \
    --entitlementId 'NZnNpmNxJFdfsJH4' \
    --namespace $AB_NAMESPACE \
    --userId 'DK4GFtrgX9bVNif4' \
    > test.out 2>&1
eval_tap $? 401 'PublicGetUserEntitlement' test.out

#- 402 PublicConsumeUserEntitlement
samples/cli/sample-apps Platform publicConsumeUserEntitlement \
    --entitlementId 'I8bY2KtAlI4dKhyk' \
    --namespace $AB_NAMESPACE \
    --userId 'VjwpComUTXMlvGy8' \
    --body '{"options": ["rJUKHh12DtpF1h58", "R7xfqntbwn1Lh9yk", "gf3FER8tEmQYY5rW"], "requestId": "g5pIdt2ZP44YO9nu", "useCount": 45}' \
    > test.out 2>&1
eval_tap $? 402 'PublicConsumeUserEntitlement' test.out

#- 403 PublicSellUserEntitlement
samples/cli/sample-apps Platform publicSellUserEntitlement \
    --entitlementId 'fzPLZEo9aTKk7tZ9' \
    --namespace $AB_NAMESPACE \
    --userId '8NWjvAr4LoRGuxLG' \
    --body '{"requestId": "uyrhcyKx9kqczA51", "useCount": 6}' \
    > test.out 2>&1
eval_tap $? 403 'PublicSellUserEntitlement' test.out

#- 404 PublicRedeemCode
samples/cli/sample-apps Platform publicRedeemCode \
    --namespace $AB_NAMESPACE \
    --userId 'wdFWn3PHsFUqoWU0' \
    --body '{"code": "GC22VOtp9jZnJZlq", "language": "bMac_062", "region": "OnVhI1sZ8GPqAv2C"}' \
    > test.out 2>&1
eval_tap $? 404 'PublicRedeemCode' test.out

#- 405 PublicFulfillAppleIAPItem
samples/cli/sample-apps Platform publicFulfillAppleIAPItem \
    --namespace $AB_NAMESPACE \
    --userId '2swxksEp8FyViJyp' \
    --body '{"excludeOldTransactions": true, "language": "AbK-Eyhk", "productId": "EPzqiFivsTVDggbo", "receiptData": "lz1GEIiAuKNRXyev", "region": "BzAFjoscvjzhwP6i", "transactionId": "ivWuqNE4PSCdaiAU"}' \
    > test.out 2>&1
eval_tap $? 405 'PublicFulfillAppleIAPItem' test.out

#- 406 SyncEpicGamesInventory
samples/cli/sample-apps Platform syncEpicGamesInventory \
    --namespace $AB_NAMESPACE \
    --userId 'lnRY0Xc7ejOHhq3I' \
    --body '{"epicGamesJwtToken": "QGSBTgW4mrtgsa2h"}' \
    > test.out 2>&1
eval_tap $? 406 'SyncEpicGamesInventory' test.out

#- 407 PublicFulfillGoogleIAPItem
samples/cli/sample-apps Platform publicFulfillGoogleIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'LW3C3gViL0sLFlJ5' \
    --body '{"autoAck": true, "language": "scK-bZeP", "orderId": "OA8TOsvmcznvzJb1", "packageName": "o4yOMZTqDHuXCyYb", "productId": "3r68wTu4f8jGrCL1", "purchaseTime": 98, "purchaseToken": "V1ulOHdHWLaOLjq0", "region": "DhJnlqqGoSUzIXVM"}' \
    > test.out 2>&1
eval_tap $? 407 'PublicFulfillGoogleIAPItem' test.out

#- 408 SyncOculusConsumableEntitlements
samples/cli/sample-apps Platform syncOculusConsumableEntitlements \
    --namespace $AB_NAMESPACE \
    --userId '89Hcn0yzF8iDQ3in' \
    > test.out 2>&1
eval_tap $? 408 'SyncOculusConsumableEntitlements' test.out

#- 409 PublicReconcilePlayStationStore
samples/cli/sample-apps Platform publicReconcilePlayStationStore \
    --namespace $AB_NAMESPACE \
    --userId 'htyJvRmneFP6Knlf' \
    --body '{"currencyCode": "phTDJHBYYbpYrxr2", "price": 0.33890579517373565, "productId": "wm7vZmqhpSPZYs8Q", "serviceLabel": 85}' \
    > test.out 2>&1
eval_tap $? 409 'PublicReconcilePlayStationStore' test.out

#- 410 PublicReconcilePlayStationStoreWithMultipleServiceLabels
samples/cli/sample-apps Platform publicReconcilePlayStationStoreWithMultipleServiceLabels \
    --namespace $AB_NAMESPACE \
    --userId 'JFfsSPqBL606O54l' \
    --body '{"currencyCode": "kqFZxlmLg5Bpk9LO", "price": 0.2285158169826217, "productId": "CFd5j2hnudYtA8IZ", "serviceLabels": [2, 21, 86]}' \
    > test.out 2>&1
eval_tap $? 410 'PublicReconcilePlayStationStoreWithMultipleServiceLabels' test.out

#- 411 SyncSteamInventory
samples/cli/sample-apps Platform syncSteamInventory \
    --namespace $AB_NAMESPACE \
    --userId '715w2KR5k0qh7Qo9' \
    --body '{"appId": "K1kDrIUrwmAnzKDM", "currencyCode": "8JSlLRJ2DPyyRar8", "language": "dak-kA", "price": 0.3720393364953065, "productId": "eQxc3asITuC0TvFk", "region": "Hjcw0DE1lfWAqg4C", "steamId": "UA7u9iFe5Yf414RZ"}' \
    > test.out 2>&1
eval_tap $? 411 'SyncSteamInventory' test.out

#- 412 SyncTwitchDropsEntitlement1
samples/cli/sample-apps Platform syncTwitchDropsEntitlement1 \
    --namespace $AB_NAMESPACE \
    --userId 'uKJtYER7OZO242hk' \
    --body '{"gameId": "wHPtEp75amdEqQED", "language": "Ix-Ih", "region": "wSdtFUvaLEtcFvRt"}' \
    > test.out 2>&1
eval_tap $? 412 'SyncTwitchDropsEntitlement1' test.out

#- 413 SyncXboxInventory
samples/cli/sample-apps Platform syncXboxInventory \
    --namespace $AB_NAMESPACE \
    --userId '0vs65wYUvwEhkHnP' \
    --body '{"currencyCode": "7UdE1uXeR2oNOWqU", "price": 0.48921579817848226, "productId": "hvvcc4q8vn4VohTh", "xstsToken": "jH47RlQUDlsTo5Si"}' \
    > test.out 2>&1
eval_tap $? 413 'SyncXboxInventory' test.out

#- 414 PublicQueryUserOrders
samples/cli/sample-apps Platform publicQueryUserOrders \
    --namespace $AB_NAMESPACE \
    --userId 'EZlxyOvL3VDr4Ltx' \
    --itemId 'LIMORjAanJLmzWit' \
    --limit '2' \
    --offset '66' \
    --status 'FULFILLED' \
    > test.out 2>&1
eval_tap $? 414 'PublicQueryUserOrders' test.out

#- 415 PublicCreateUserOrder
samples/cli/sample-apps Platform publicCreateUserOrder \
    --namespace $AB_NAMESPACE \
    --userId 'fVGwNtVnvAYCpLNX' \
    --body '{"currencyCode": "8aIz31PLNyFvfvl3", "discountedPrice": 68, "ext": {"HH6GI6hDrrhKK3nK": {}, "wvfGSmqNHQUdoSNM": {}, "YDWBtZcStytJowvR": {}}, "itemId": "49U2kqTPTni6Rz5f", "language": "hg_Eqrl-Xm", "price": 94, "quantity": 84, "region": "L5t71kjDCnMmCxHj", "returnUrl": "AhpTOTWaxhYLn8D3", "sectionId": "sHVpLGr9w6jxZTbV"}' \
    > test.out 2>&1
eval_tap $? 415 'PublicCreateUserOrder' test.out

#- 416 PublicGetUserOrder
samples/cli/sample-apps Platform publicGetUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'UmFjywygdjyBh98k' \
    --userId 'vQKj7WVVtrH5r5Z1' \
    > test.out 2>&1
eval_tap $? 416 'PublicGetUserOrder' test.out

#- 417 PublicCancelUserOrder
samples/cli/sample-apps Platform publicCancelUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'NQ3HYDd199sW0JfZ' \
    --userId '02IaO9VGExwL8mTp' \
    > test.out 2>&1
eval_tap $? 417 'PublicCancelUserOrder' test.out

#- 418 PublicGetUserOrderHistories
samples/cli/sample-apps Platform publicGetUserOrderHistories \
    --namespace $AB_NAMESPACE \
    --orderNo 'J79OlbYXXFerp5UI' \
    --userId '1zaSMperEFBZVm5C' \
    > test.out 2>&1
eval_tap $? 418 'PublicGetUserOrderHistories' test.out

#- 419 PublicDownloadUserOrderReceipt
samples/cli/sample-apps Platform publicDownloadUserOrderReceipt \
    --namespace $AB_NAMESPACE \
    --orderNo 'dChIn6XKxAtf6yLH' \
    --userId '6s3NC7elPUGD8cwK' \
    > test.out 2>&1
eval_tap $? 419 'PublicDownloadUserOrderReceipt' test.out

#- 420 PublicGetPaymentAccounts
samples/cli/sample-apps Platform publicGetPaymentAccounts \
    --namespace $AB_NAMESPACE \
    --userId 'xmCOzPDkDhyGH4oy' \
    > test.out 2>&1
eval_tap $? 420 'PublicGetPaymentAccounts' test.out

#- 421 PublicDeletePaymentAccount
samples/cli/sample-apps Platform publicDeletePaymentAccount \
    --id 'bzGj2lfRXSuKj4s6' \
    --namespace $AB_NAMESPACE \
    --type 'card' \
    --userId 'p5wniYlBXZBsau9B' \
    > test.out 2>&1
eval_tap $? 421 'PublicDeletePaymentAccount' test.out

#- 422 PublicListActiveSections
samples/cli/sample-apps Platform publicListActiveSections \
    --namespace $AB_NAMESPACE \
    --userId 'vtcITg8e399YyFnJ' \
    --autoCalcEstimatedPrice 'false' \
    --language 'thGUX022lztW4ebs' \
    --region 'eoeFjQpAbZa8mnI8' \
    --storeId 'pRMTYjM6Ld8Gfjig' \
    --viewId 'OtP87R67XCWcGn8L' \
    > test.out 2>&1
eval_tap $? 422 'PublicListActiveSections' test.out

#- 423 PublicQueryUserSubscriptions
samples/cli/sample-apps Platform publicQueryUserSubscriptions \
    --namespace $AB_NAMESPACE \
    --userId '71Mo9dtu40swSCMB' \
    --chargeStatus 'CHARGED' \
    --itemId 'zP5PqU9S75cIBjbv' \
    --limit '45' \
    --offset '61' \
    --sku 'AxGiUM0vKHNzxfQM' \
    --status 'CANCELLED' \
    --subscribedBy 'PLATFORM' \
    > test.out 2>&1
eval_tap $? 423 'PublicQueryUserSubscriptions' test.out

#- 424 PublicSubscribeSubscription
samples/cli/sample-apps Platform publicSubscribeSubscription \
    --namespace $AB_NAMESPACE \
    --userId 'w9IvRAFPqPSqVMm8' \
    --body '{"currencyCode": "1rzwCUarMy7yEJFm", "itemId": "gueKPm4g4iNi26Yw", "language": "aZZ_crOR_779", "region": "tESWmi4JbNte2lPF", "returnUrl": "KxSGuVQVFlqqkkD4", "source": "m9RIi0OWpccFcOuM"}' \
    > test.out 2>&1
eval_tap $? 424 'PublicSubscribeSubscription' test.out

#- 425 PublicCheckUserSubscriptionSubscribableByItemId
samples/cli/sample-apps Platform publicCheckUserSubscriptionSubscribableByItemId \
    --namespace $AB_NAMESPACE \
    --userId '5zOSV6cr2o6prd7c' \
    --itemId '0ne8EdN6Io3ZthY3' \
    > test.out 2>&1
eval_tap $? 425 'PublicCheckUserSubscriptionSubscribableByItemId' test.out

#- 426 PublicGetUserSubscription
samples/cli/sample-apps Platform publicGetUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'AHpVAMTKsbetjARt' \
    --userId 'nwFhXVO8XurkxJgA' \
    > test.out 2>&1
eval_tap $? 426 'PublicGetUserSubscription' test.out

#- 427 PublicChangeSubscriptionBillingAccount
samples/cli/sample-apps Platform publicChangeSubscriptionBillingAccount \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'sbK1G618bbRes0qJ' \
    --userId '4eOiaN0I2NPwOVPI' \
    > test.out 2>&1
eval_tap $? 427 'PublicChangeSubscriptionBillingAccount' test.out

#- 428 PublicCancelSubscription
samples/cli/sample-apps Platform publicCancelSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'RjJAkcyyq1isoMQZ' \
    --userId 'beUlHLsnX2gk0ucl' \
    --body '{"immediate": true, "reason": "uKLWMbCHW6AEf0CG"}' \
    > test.out 2>&1
eval_tap $? 428 'PublicCancelSubscription' test.out

#- 429 PublicGetUserSubscriptionBillingHistories
samples/cli/sample-apps Platform publicGetUserSubscriptionBillingHistories \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'tncUVhqgs9beoy7H' \
    --userId 'WucR5CU7EFOKhCVi' \
    --excludeFree 'true' \
    --limit '60' \
    --offset '78' \
    > test.out 2>&1
eval_tap $? 429 'PublicGetUserSubscriptionBillingHistories' test.out

#- 430 PublicListViews
samples/cli/sample-apps Platform publicListViews \
    --namespace $AB_NAMESPACE \
    --userId 'Jk5lgUTrY2ax8UUk' \
    --language '7kZ0xuFA97pXscZx' \
    --storeId 'rbZA6hWdh3rSasO9' \
    > test.out 2>&1
eval_tap $? 430 'PublicListViews' test.out

#- 431 PublicGetWallet
samples/cli/sample-apps Platform publicGetWallet \
    --currencyCode 'HZpW9E5rLgVYAhzz' \
    --namespace $AB_NAMESPACE \
    --userId '9kMAlsGyrfv4SZ72' \
    > test.out 2>&1
eval_tap $? 431 'PublicGetWallet' test.out

#- 432 PublicListUserWalletTransactions
samples/cli/sample-apps Platform publicListUserWalletTransactions \
    --currencyCode 'a1Mir3NpCvgu8my1' \
    --namespace $AB_NAMESPACE \
    --userId 'IFGUSAcm8nKCWIGv' \
    --limit '8' \
    --offset '24' \
    > test.out 2>&1
eval_tap $? 432 'PublicListUserWalletTransactions' test.out

#- 433 QueryItems1
samples/cli/sample-apps Platform queryItems1 \
    --namespace $AB_NAMESPACE \
    --appType 'DLC' \
    --availableDate 'GFF7EL5xeeCaIU4L' \
    --baseAppId 'uManeabvVyW2VAtN' \
    --categoryPath 'xrjVV7jr8q6f2atl' \
    --features 'qXdgHVLnS1yTie2a' \
    --includeSubCategoryItem 'false' \
    --itemName 'SXkm7pXMUTC5tyfz' \
    --itemStatus 'INACTIVE' \
    --itemType 'SEASON' \
    --limit '98' \
    --offset '41' \
    --region 'uM6rswBgt8eUAVNH' \
    --sectionExclusive 'true' \
    --sortBy '["updatedAt:asc", "updatedAt:desc", "name"]' \
    --storeId 'I7QVskAudIHA4SfD' \
    --tags 'Re7r9cMVHx1vQpVs' \
    --targetNamespace 'S8PJRQh3ri6XPe5U' \
    --withTotal 'false' \
    > test.out 2>&1
eval_tap $? 433 'QueryItems1' test.out

#- 434 ImportStore1
samples/cli/sample-apps Platform importStore1 \
    --namespace $AB_NAMESPACE \
    --storeId 'vA4MAChazyKLECIj' \
    --strictMode 'false' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 434 'ImportStore1' test.out

#- 435 ExportStore1
samples/cli/sample-apps Platform exportStore1 \
    --namespace $AB_NAMESPACE \
    --storeId 'rvNE0u4oqe22G3rN' \
    --body '{"itemIds": ["L7BGouBR4xNy3Bqq", "10kVl5pBgyhoQ38a", "Uew0TTLG23OhqbKR"]}' \
    > test.out 2>&1
eval_tap $? 435 'ExportStore1' test.out

#- 436 FulfillRewardsV2
samples/cli/sample-apps Platform fulfillRewardsV2 \
    --namespace $AB_NAMESPACE \
    --userId 'AQTtat1evyVb80qK' \
    --body '{"entitlementOrigin": "Playstation", "metadata": {"r3n9fwVyIPbov3R0": {}, "k1TVxvE0aemOnxKL": {}, "Ln7MxhTDGTlSLHWh": {}}, "origin": "Oculus", "rewards": [{"currency": {"currencyCode": "ziG9DicRv5glm7lZ", "namespace": "4bGbCsEOexAdXhca"}, "item": {"itemId": "e1vtfddf7V5oZKmh", "itemSku": "cIBggixSwuPSCliz", "itemType": "8ScWQJpzX6ZPu63F"}, "quantity": 40, "type": "CURRENCY"}, {"currency": {"currencyCode": "zs7esPNImi1l9fr0", "namespace": "gJiM5dMfJZUyZmdf"}, "item": {"itemId": "1yH6bt6HNdpFwjfe", "itemSku": "Vlul1iHEsRjnR4ct", "itemType": "PMv2MmRPIqNLGRx0"}, "quantity": 29, "type": "CURRENCY"}, {"currency": {"currencyCode": "DOJLLlbItf9HXXCW", "namespace": "9hhLWFWdbWC5Hkyk"}, "item": {"itemId": "wajhH3DPWpEW9YO3", "itemSku": "sDabHTI4ZLqLHxWZ", "itemType": "xf939juUgVSKZgVN"}, "quantity": 51, "type": "ITEM"}], "source": "GIFT", "transactionId": "Z8JA0WZoZGyvfEDk"}' \
    > test.out 2>&1
eval_tap $? 436 'FulfillRewardsV2' test.out


rm -f "tmp.dat"

exit $EXIT_CODE