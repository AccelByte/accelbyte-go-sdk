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
echo "1..444"

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
    --id '8vExs0PZEcvgMlvV' \
    > test.out 2>&1
eval_tap $? 3 'GetFulfillmentScript' test.out

#- 4 CreateFulfillmentScript
samples/cli/sample-apps Platform createFulfillmentScript \
    --id 'bsu2ndNI2chRBDuL' \
    --body '{"grantDays": "d1KTnakOMiMfFQgP"}' \
    > test.out 2>&1
eval_tap $? 4 'CreateFulfillmentScript' test.out

#- 5 DeleteFulfillmentScript
samples/cli/sample-apps Platform deleteFulfillmentScript \
    --id 'MftI2CWR5mR59PPf' \
    > test.out 2>&1
eval_tap $? 5 'DeleteFulfillmentScript' test.out

#- 6 UpdateFulfillmentScript
samples/cli/sample-apps Platform updateFulfillmentScript \
    --id 'NRf3GJMk5ze3lV6N' \
    --body '{"grantDays": "RWGCw4d9wZMezoGs"}' \
    > test.out 2>&1
eval_tap $? 6 'UpdateFulfillmentScript' test.out

#- 7 ListItemTypeConfigs
samples/cli/sample-apps Platform listItemTypeConfigs \
    > test.out 2>&1
eval_tap $? 7 'ListItemTypeConfigs' test.out

#- 8 CreateItemTypeConfig
samples/cli/sample-apps Platform createItemTypeConfig \
    --body '{"clazz": "pfbrKym1sMa7Wsgz", "dryRun": true, "fulfillmentUrl": "yDkzmhqV4maBAyXm", "itemType": "COINS", "purchaseConditionUrl": "UHCcY3RZ5KpXEwP2"}' \
    > test.out 2>&1
eval_tap $? 8 'CreateItemTypeConfig' test.out

#- 9 SearchItemTypeConfig
samples/cli/sample-apps Platform searchItemTypeConfig \
    --clazz 'mHVcJODc4X6I2Ke0' \
    --itemType 'LOOTBOX' \
    > test.out 2>&1
eval_tap $? 9 'SearchItemTypeConfig' test.out

#- 10 GetItemTypeConfig
samples/cli/sample-apps Platform getItemTypeConfig \
    --id 'pJpx9M3t6MM62J5I' \
    > test.out 2>&1
eval_tap $? 10 'GetItemTypeConfig' test.out

#- 11 UpdateItemTypeConfig
samples/cli/sample-apps Platform updateItemTypeConfig \
    --id 'JAqPjOzbSgyoUj1P' \
    --body '{"clazz": "M8IB4XWSxiVU4sj1", "dryRun": false, "fulfillmentUrl": "nDa53Pc2VyVUupvI", "purchaseConditionUrl": "dDNGDAAygs5SY76I"}' \
    > test.out 2>&1
eval_tap $? 11 'UpdateItemTypeConfig' test.out

#- 12 DeleteItemTypeConfig
samples/cli/sample-apps Platform deleteItemTypeConfig \
    --id 'Xnbif24xvisaOvP3' \
    > test.out 2>&1
eval_tap $? 12 'DeleteItemTypeConfig' test.out

#- 13 QueryCampaigns
samples/cli/sample-apps Platform queryCampaigns \
    --namespace $AB_NAMESPACE \
    --limit '4' \
    --name 'ueZVSXDM21lV3fLQ' \
    --offset '18' \
    --tag 'dUt2figqHdbpN6Ch' \
    > test.out 2>&1
eval_tap $? 13 'QueryCampaigns' test.out

#- 14 CreateCampaign
samples/cli/sample-apps Platform createCampaign \
    --namespace $AB_NAMESPACE \
    --body '{"description": "J7KAZFcleZTAfYP1", "items": [{"extraSubscriptionDays": 25, "itemId": "R74dD4kOadHhcp7F", "itemName": "AJnWDWodHP2uMDb7", "quantity": 77}, {"extraSubscriptionDays": 74, "itemId": "9OPqOgITssm5bg0i", "itemName": "LAx4migjUvCXq9IT", "quantity": 23}, {"extraSubscriptionDays": 47, "itemId": "ycBZW5BN3kn5rDDH", "itemName": "C0rBL2c8r3uVJ4EY", "quantity": 84}], "maxRedeemCountPerCampaignPerUser": 26, "maxRedeemCountPerCode": 40, "maxRedeemCountPerCodePerUser": 34, "maxSaleCount": 7, "name": "XB6enjrlyhZOJWBn", "redeemEnd": "1977-02-12T00:00:00Z", "redeemStart": "1985-01-29T00:00:00Z", "redeemType": "ITEM", "status": "ACTIVE", "tags": ["5b7JVpw4G4qVVyrl", "rhUUj0JkrhtuGENp", "qPY2TcozRh0lSMBS"], "type": "REDEMPTION"}' \
    > test.out 2>&1
eval_tap $? 14 'CreateCampaign' test.out

#- 15 GetCampaign
samples/cli/sample-apps Platform getCampaign \
    --campaignId 'xdDruMsP9NHdWb0z' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 15 'GetCampaign' test.out

#- 16 UpdateCampaign
samples/cli/sample-apps Platform updateCampaign \
    --campaignId 'BI8bNUs2GcImcgXH' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "9vsxMWrxmNJtfSll", "items": [{"extraSubscriptionDays": 19, "itemId": "gXQMocN6h76mDv3C", "itemName": "s8GZPSD9gPwHuuhB", "quantity": 79}, {"extraSubscriptionDays": 78, "itemId": "0tPdpE1kZaqQUKmS", "itemName": "lEBjkhMTfd14GMD8", "quantity": 38}, {"extraSubscriptionDays": 65, "itemId": "KdhvAqVcEwwmXL2i", "itemName": "cMnNhpsLqK1Nc3fc", "quantity": 24}], "maxRedeemCountPerCampaignPerUser": 6, "maxRedeemCountPerCode": 60, "maxRedeemCountPerCodePerUser": 58, "maxSaleCount": 84, "name": "1Mdnp04E1rkcdiR5", "redeemEnd": "1978-09-16T00:00:00Z", "redeemStart": "1983-05-02T00:00:00Z", "redeemType": "ITEM", "status": "ACTIVE", "tags": ["6m9EFG62ldVAtks9", "b9PW6SgrNLvMXrbh", "tRbRF7LP3HdVG4GN"]}' \
    > test.out 2>&1
eval_tap $? 16 'UpdateCampaign' test.out

#- 17 GetCampaignDynamic
samples/cli/sample-apps Platform getCampaignDynamic \
    --campaignId 'pzf2w2g1TVgxSDtp' \
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
    --body '{"appConfig": {"appName": "Fy2VqXF0CjX8NsbA"}, "customConfig": {"connectionType": "INSECURE", "grpcServerAddress": "rbIBhbdZgJQcauaI"}, "extendType": "APP"}' \
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
    --body '{"appConfig": {"appName": "B0n0ATC1pQ48bfMX"}, "customConfig": {"connectionType": "TLS", "grpcServerAddress": "RdkiVT5nN1TUFfkX"}, "extendType": "APP"}' \
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
    --storeId 'hxaR6R0Ko3bBilWt' \
    > test.out 2>&1
eval_tap $? 27 'GetRootCategories' test.out

#- 28 CreateCategory
samples/cli/sample-apps Platform createCategory \
    --namespace $AB_NAMESPACE \
    --storeId 'UNgJYyZKOCzLC5OD' \
    --body '{"categoryPath": "N4u3IoFVcJWH96pU", "localizationDisplayNames": {"QRBr5TDvKG46Q5BZ": "aYnZhcs9NaEISW58", "SMhRNDJiXgrRZ8W1": "9LNtZWiJzOcNmzxT", "W3ToXWc57PIjp5ZN": "Y61jKIGWUTef8kC8"}}' \
    > test.out 2>&1
eval_tap $? 28 'CreateCategory' test.out

#- 29 ListCategoriesBasic
samples/cli/sample-apps Platform listCategoriesBasic \
    --namespace $AB_NAMESPACE \
    --storeId 'XhQ1NCpIsU9qBEgz' \
    > test.out 2>&1
eval_tap $? 29 'ListCategoriesBasic' test.out

#- 30 GetCategory
samples/cli/sample-apps Platform getCategory \
    --categoryPath '2JvR3iTmGt621S20' \
    --namespace $AB_NAMESPACE \
    --storeId 'ICwvlt93xHMLfSyl' \
    > test.out 2>&1
eval_tap $? 30 'GetCategory' test.out

#- 31 UpdateCategory
samples/cli/sample-apps Platform updateCategory \
    --categoryPath 'Y0VGaGXOAiEL3e2e' \
    --namespace $AB_NAMESPACE \
    --storeId 'Pj3PSBblDmReYWMn' \
    --body '{"localizationDisplayNames": {"BqLKGXCWioOe64Qw": "xiQJ89xHkLdNvDcZ", "LticiF9avpHyc2VY": "PlGu3ARWcqrPkORt", "tmSh82zISBOSOJOd": "3YuEtnQ3AIYIYrDA"}}' \
    > test.out 2>&1
eval_tap $? 31 'UpdateCategory' test.out

#- 32 DeleteCategory
samples/cli/sample-apps Platform deleteCategory \
    --categoryPath 'l0CDP2wP2LbIxIYJ' \
    --namespace $AB_NAMESPACE \
    --storeId 'hTSPi1mzXP1O4Blw' \
    > test.out 2>&1
eval_tap $? 32 'DeleteCategory' test.out

#- 33 GetChildCategories
samples/cli/sample-apps Platform getChildCategories \
    --categoryPath 'SF628uEAv1FoUatg' \
    --namespace $AB_NAMESPACE \
    --storeId 'AB9pKj8T8sw2MCTa' \
    > test.out 2>&1
eval_tap $? 33 'GetChildCategories' test.out

#- 34 GetDescendantCategories
samples/cli/sample-apps Platform getDescendantCategories \
    --categoryPath 'zk4YWsFNYaCHvmdZ' \
    --namespace $AB_NAMESPACE \
    --storeId 'm9MiONC0oHvGP8Dj' \
    > test.out 2>&1
eval_tap $? 34 'GetDescendantCategories' test.out

#- 35 QueryCodes
samples/cli/sample-apps Platform queryCodes \
    --campaignId 'LsXLNqp50WcnVnFW' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --batchNo '56' \
    --code 'tT7DeKD7FTqDI2he' \
    --limit '34' \
    --offset '98' \
    > test.out 2>&1
eval_tap $? 35 'QueryCodes' test.out

#- 36 CreateCodes
samples/cli/sample-apps Platform createCodes \
    --campaignId 'tApCI5mLPqpcSktb' \
    --namespace $AB_NAMESPACE \
    --body '{"quantity": 75}' \
    > test.out 2>&1
eval_tap $? 36 'CreateCodes' test.out

#- 37 Download
samples/cli/sample-apps Platform download \
    --campaignId 'AUh2z38ojeE3QM72' \
    --namespace $AB_NAMESPACE \
    --batchNo '15' \
    > test.out 2>&1
eval_tap $? 37 'Download' test.out

#- 38 BulkDisableCodes
samples/cli/sample-apps Platform bulkDisableCodes \
    --campaignId 'kCu59IYBYfuLvzB3' \
    --namespace $AB_NAMESPACE \
    --batchNo '77' \
    > test.out 2>&1
eval_tap $? 38 'BulkDisableCodes' test.out

#- 39 BulkEnableCodes
samples/cli/sample-apps Platform bulkEnableCodes \
    --campaignId 'urDMY6PGJBLowRyl' \
    --namespace $AB_NAMESPACE \
    --batchNo '17' \
    > test.out 2>&1
eval_tap $? 39 'BulkEnableCodes' test.out

#- 40 QueryRedeemHistory
samples/cli/sample-apps Platform queryRedeemHistory \
    --campaignId 'R1BfVIWa7HMj3Awv' \
    --namespace $AB_NAMESPACE \
    --code '3PCJdugTUh7rD4Da' \
    --limit '83' \
    --offset '35' \
    --userId 'e3XGruxZluTMqX2s' \
    > test.out 2>&1
eval_tap $? 40 'QueryRedeemHistory' test.out

#- 41 GetCode
samples/cli/sample-apps Platform getCode \
    --code 'UbjjLNx0iT9KmPnV' \
    --namespace $AB_NAMESPACE \
    --redeemable 'false' \
    > test.out 2>&1
eval_tap $? 41 'GetCode' test.out

#- 42 DisableCode
samples/cli/sample-apps Platform disableCode \
    --code 'x0jBFLN7lPZWnKq1' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 42 'DisableCode' test.out

#- 43 EnableCode
samples/cli/sample-apps Platform enableCode \
    --code 'keUVnlloAUi7tFKi' \
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
    --body '{"currencyCode": "zzaX37jksoz1s1P6", "currencySymbol": "nM6WHoyhiRhMKxbz", "currencyType": "REAL", "decimals": 35, "localizationDescriptions": {"ozckn8g7txrtVL8h": "N9GDJvWpPHruF88D", "PWvgf9TMRremdZcY": "eEQwqyPpUgTJIU58", "lTCAnd0vBNXIRQcg": "WuhopzXNlA2Xhkpi"}}' \
    > test.out 2>&1
eval_tap $? 48 'CreateCurrency' test.out

#- 49 UpdateCurrency
samples/cli/sample-apps Platform updateCurrency \
    --currencyCode '6hLdCDibqlFVDxIC' \
    --namespace $AB_NAMESPACE \
    --body '{"localizationDescriptions": {"DbIpC01jPKYkSeKl": "VhYwVhgQDkwG1nwd", "y3Hds1jEXlbBZlfe": "64bsn333ojtAmDvJ", "YfkVHBmwsCu4Oydn": "SGmBMsuv2IBQiO1x"}}' \
    > test.out 2>&1
eval_tap $? 49 'UpdateCurrency' test.out

#- 50 DeleteCurrency
samples/cli/sample-apps Platform deleteCurrency \
    --currencyCode '4NrQPUKYvvGhhojy' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 50 'DeleteCurrency' test.out

#- 51 GetCurrencyConfig
samples/cli/sample-apps Platform getCurrencyConfig \
    --currencyCode 'a1UQ7UQv7Oxc0hmV' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 51 'GetCurrencyConfig' test.out

#- 52 GetCurrencySummary
samples/cli/sample-apps Platform getCurrencySummary \
    --currencyCode 'kwFwhlNRHvfDmfYa' \
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
    --body '{"data": [{"id": "gQeEgHaqxer3Wd34", "rewards": [{"currency": {"currencyCode": "UAI6jYbw7ugLvaED", "namespace": "u2IAqaKAond5ncen"}, "item": {"itemId": "2E84IL2xf5JALUAR", "itemSku": "ZqnYF1Y6HRfPGmNY", "itemType": "3VdIrj72j0Oi0FEE"}, "quantity": 35, "type": "ITEM"}, {"currency": {"currencyCode": "LoSRUmFNn5yL9Zf8", "namespace": "BMUKjMQqVuaP9Gid"}, "item": {"itemId": "2N89Hy1MQJ8osomk", "itemSku": "c5tinaDCnvcvWGD7", "itemType": "8lYRITxlJJ923clJ"}, "quantity": 31, "type": "CURRENCY"}, {"currency": {"currencyCode": "YSkiOfKYlVHsUAJ2", "namespace": "xBSelvrWEhuIHsr9"}, "item": {"itemId": "iH7JNQaxLSlMS7D2", "itemSku": "yNR74725kESuqpiA", "itemType": "T42x3dLnD3AzN7Ch"}, "quantity": 15, "type": "CURRENCY"}]}, {"id": "0I82jmGFwpZ956nC", "rewards": [{"currency": {"currencyCode": "46DdvbxggdUf752V", "namespace": "6XrgSbdYbYfSV90C"}, "item": {"itemId": "izGHj6z3TInLNTGA", "itemSku": "mcfRlaY7gULPGbmi", "itemType": "f4fpdygtueE5wdCU"}, "quantity": 27, "type": "ITEM"}, {"currency": {"currencyCode": "EMXoAoHzskqpafps", "namespace": "MxUjT46OV6pwIVvm"}, "item": {"itemId": "e8o5OC1ZYJeWmvrd", "itemSku": "ljXq685jSWXU1lnx", "itemType": "Nhgwz5puzJFvb8XX"}, "quantity": 87, "type": "ITEM"}, {"currency": {"currencyCode": "wqTwYz57C7AzZM1q", "namespace": "ULKFgfM317GNLcTj"}, "item": {"itemId": "TOFQYOdf9tBhIcgf", "itemSku": "XLbzW0PXbtkjD46B", "itemType": "Ba2M9z5OGaqhPa86"}, "quantity": 49, "type": "CURRENCY"}]}, {"id": "tHos4ONzyLk5wSGE", "rewards": [{"currency": {"currencyCode": "Imae3RQgiQDkekMv", "namespace": "HbEYmHgM7CPHdgBn"}, "item": {"itemId": "RO9D1BiBYTsKKRhp", "itemSku": "3XHMT4BkHCCZeoTg", "itemType": "nXj1QLd4mpA0Wu8P"}, "quantity": 91, "type": "ITEM"}, {"currency": {"currencyCode": "3vuAgpxHx1Ah7lJV", "namespace": "KNhJLQUYV77GHYsw"}, "item": {"itemId": "jBGWUHbzvBtqJBr0", "itemSku": "F49qAMrwvxnx5Moa", "itemType": "eIfzBbkgmifCeAw1"}, "quantity": 41, "type": "CURRENCY"}, {"currency": {"currencyCode": "VSM7O4Djxxi5WUxA", "namespace": "ZZ8nfs5qHev05Nc2"}, "item": {"itemId": "SZAU0FjyEjHMYkWR", "itemSku": "qzCZmzp7TbRhAv5A", "itemType": "rM9zdCNJcvJA00qs"}, "quantity": 22, "type": "ITEM"}]}]}' \
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
    --body '{"data": [{"platform": "XBOX", "platformDlcIdMap": {"J4dcKjqmhK3WeDkP": "uiGhPoybRaInqPQY", "Y21xXZdpeUHjrKJf": "Up6LjfL9fKhZvWCI", "pK2VK0zvsWJ5lPt8": "ld9FM6I2fiLSN7cE"}}, {"platform": "STEAM", "platformDlcIdMap": {"NsfopqAxmzgfEkBl": "Hx4U2K9WYb1uVWn6", "EJjIm9bVoahX9Q50": "6aeO5kMZl07hkGYN", "1UUaALwQnpNanf0g": "K9RQd0xwpkYBJNQw"}}, {"platform": "STEAM", "platformDlcIdMap": {"JJJkmyUcMoTk9ten": "gQONx6qhrx6a0rO1", "MwoTdgFUfZWhgAWy": "gocEk4rgrZ8FDuXd", "DxWqI2mySLduTnF1": "DCh6T9D8Echvsr4I"}}]}' \
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
    --appType 'SOFTWARE' \
    --entitlementClazz 'ENTITLEMENT' \
    --entitlementName 'LQK1YP5zFTucAKNS' \
    --itemId '["zpl3OrvywzyPSrTA", "iYtSEZwdUKEFGDfi", "yJ1u1xwDbnqUU42m"]' \
    --limit '38' \
    --offset '99' \
    --origin 'IOS' \
    --userId '9F6be8A13GvkQ5EC' \
    > test.out 2>&1
eval_tap $? 59 'QueryEntitlements' test.out

#- 60 QueryEntitlements1
samples/cli/sample-apps Platform queryEntitlements1 \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --itemIds '["bN2AN27dOeArkkuy", "pfZbMGkYZdXUJAAw", "FTONpYol9r4oSzH4"]' \
    --limit '0' \
    --offset '50' \
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
    --body '{"entitlementGrantList": [{"collectionId": "q9CcQyW0YgEI9eso", "endDate": "1991-06-19T00:00:00Z", "grantedCode": "uAELzhwfeaPYAVCs", "itemId": "myCzzaFQ5pksewPs", "itemNamespace": "bhS3XCv5IvQoexO5", "language": "hf-LeGx_pb", "origin": "Epic", "quantity": 65, "region": "ZnMyzpzG3wGi2onx", "source": "PURCHASE", "startDate": "1994-08-04T00:00:00Z", "storeId": "Z0ZNKb934hbYC6m2"}, {"collectionId": "S8TwfoPqtBohg62a", "endDate": "1974-06-06T00:00:00Z", "grantedCode": "2Zd9ASGBkjrzkXPO", "itemId": "iy05pZLl2Dt7g4DF", "itemNamespace": "AShBO7eL2N6yiQeK", "language": "pRh-eQMY-bP", "origin": "Oculus", "quantity": 32, "region": "KWs7P6yNuM4aFmiC", "source": "OTHER", "startDate": "1971-10-12T00:00:00Z", "storeId": "4jInwzHkYIP3qVvz"}, {"collectionId": "S51FuEms28tXl6U2", "endDate": "1997-01-16T00:00:00Z", "grantedCode": "7sLDCmwChWuU7azE", "itemId": "NQ8MEuVjVVSCwIPJ", "itemNamespace": "Wo37bG7lHeXXG6nt", "language": "mf-awWu-782", "origin": "Playstation", "quantity": 75, "region": "Tsy01OyNpMIftKcb", "source": "OTHER", "startDate": "1990-09-06T00:00:00Z", "storeId": "xTaaPOaSjgIRSb9b"}], "userIds": ["ATz5O2YtNUL4Ptrk", "BN436aYS1ntwzSgp", "MRZSwBctGe3ruYRm"]}' \
    > test.out 2>&1
eval_tap $? 63 'GrantEntitlements' test.out

#- 64 RevokeEntitlements
samples/cli/sample-apps Platform revokeEntitlements \
    --namespace $AB_NAMESPACE \
    --body '["v5fl5GW7XQe23ApT", "ieFUt5lZna2Gm2Lu", "eqIPCFghoHLL5dJY"]' \
    > test.out 2>&1
eval_tap $? 64 'RevokeEntitlements' test.out

#- 65 GetEntitlement
samples/cli/sample-apps Platform getEntitlement \
    --entitlementId 'WPy0n5oND7pgSNGg' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 65 'GetEntitlement' test.out

#- 66 QueryFulfillmentHistories
samples/cli/sample-apps Platform queryFulfillmentHistories \
    --namespace $AB_NAMESPACE \
    --limit '77' \
    --offset '29' \
    --status 'SUCCESS' \
    --userId 'dEUiE7uGk0eHHk09' \
    > test.out 2>&1
eval_tap $? 66 'QueryFulfillmentHistories' test.out

#- 67 QueryIAPClawbackHistory
samples/cli/sample-apps Platform queryIAPClawbackHistory \
    --namespace $AB_NAMESPACE \
    --endTime 'aL6pF4MBUkW1Ycnp' \
    --eventType 'CHARGEBACK' \
    --externalOrderId 'K6jW1YfWnNzOK225' \
    --limit '29' \
    --offset '67' \
    --startTime 'aVJuMgSWNNd5hsxs' \
    --status 'SUCCESS' \
    --userId 'tPMg8t7LtoDf5gOr' \
    > test.out 2>&1
eval_tap $? 67 'QueryIAPClawbackHistory' test.out

#- 68 MockPlayStationStreamEvent
samples/cli/sample-apps Platform mockPlayStationStreamEvent \
    --namespace $AB_NAMESPACE \
    --body '{"body": {"account": "eV2mQcKUWvb5jkiL", "additionalData": {"entitlement": [{"clientTransaction": [{"amountConsumed": 8, "clientTransactionId": "MavpXIQNfsuBJVNq"}, {"amountConsumed": 11, "clientTransactionId": "LnuI6c1glmBJACPm"}, {"amountConsumed": 34, "clientTransactionId": "uFhjzMhXp8roLFDZ"}], "entitlementId": "dxzoFNKQVXI5Z9hS", "usageCount": 89}, {"clientTransaction": [{"amountConsumed": 7, "clientTransactionId": "6fXL4SfXQlrO0XBn"}, {"amountConsumed": 22, "clientTransactionId": "OONakCQqR2kqX4UT"}, {"amountConsumed": 95, "clientTransactionId": "bryruRYEfvBwAqne"}], "entitlementId": "YheL2hU1R3hXirQX", "usageCount": 24}, {"clientTransaction": [{"amountConsumed": 93, "clientTransactionId": "iCcuS4VVFQlL69Sq"}, {"amountConsumed": 30, "clientTransactionId": "NGgepaEmOQadvEnV"}, {"amountConsumed": 63, "clientTransactionId": "TgFCKP5po4IQZjsu"}], "entitlementId": "5AoZ4MMapPNLx25I", "usageCount": 30}], "purpose": "0TNkcTeABCVK9F62"}, "originalTitleName": "26dsKc41EuYqbtaV", "paymentProductSKU": "KNyqnwpaTOjlLxvS", "purchaseDate": "U6eotCskHwigoRZa", "sourceOrderItemId": "y8JhUNTpXDfplLHr", "titleName": "RWuMOihnIFCJcwBN"}, "eventDomain": "NMztM755CcMbSgpz", "eventSource": "SPTfy4d3iHcgYHmW", "eventType": "kg2cMjAwvlTApM3S", "eventVersion": 14, "id": "Zt5vWdZ0qNySzGoy", "timestamp": "r42EUlFA9V3oLEDo"}' \
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
    --body '{"bundleId": "PmLDh4WYupKf897H", "password": "A0Odr3vHULS48JI7"}' \
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
    --body '{"sandboxId": "TrLTPbl82rt0Xwek"}' \
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
    --body '{"applicationName": "NMrwnMOGXoamHyzT", "serviceAccountId": "uGN8QD9vEdzexmaP"}' \
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
    --body '{"data": [{"itemIdentity": "mtXUMYBtG3sKyE9Y", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"Qs0oiST7p2FcJXYJ": "nk6PSaSMJi7GB8Vp", "7M3eYn3GV7DI43lU": "1NuHxbm9rNZkEE8b", "gVXKt203fR1sEtxh": "r7bYVz6LvJeyM3j3"}}, {"itemIdentity": "KSL4hxTsvisiVPST", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"SLvCbqRgI0koV5in": "6htiMyng8mYrelNS", "p3c8A7aM4HU9iZBo": "7kDK4TpgEyMXBU1f", "59VGHWRanYqCz6Ml": "qT9mlsknFD4yrTra"}}, {"itemIdentity": "qdrwtK0EbiZ63Dt7", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"Qo1pWWGp4Dg6QSGq": "mZPRBKCH1eF4dpWe", "dfmqH1zlUeLo4pVr": "MAutDe9Exk7TZERI", "m7x6U9SjcdpRrbf6": "VwyFPbL1aXh5M72r"}}]}' \
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
    --body '{"appId": "s2OeFcUIUwYjdCHd", "appSecret": "YUMrLcv0NuZPlEAg"}' \
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
    --body '{"backOfficeServerClientId": "E49iVgncrKyqc3uB", "backOfficeServerClientSecret": "pkbzsCTYUiw8BU2U", "enableStreamJob": false, "environment": "4Iwr8wAx6rsRekRj", "streamName": "JZn72HuamJV6dyle", "streamPartnerName": "Jgko42Xg2huyWkca"}' \
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
    --body '{"backOfficeServerClientId": "NVCmY2cAjyjuIZJF", "backOfficeServerClientSecret": "dym0lCjQMHycgNe9", "enableStreamJob": true, "environment": "J8MMU6v0rhCPAto8", "streamName": "FA5M6rvDsniYhDk8", "streamPartnerName": "NBaJm2FCLzN38Nyf"}' \
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
    --body '{"appId": "O4g5jqxR50eNKzx8", "publisherAuthenticationKey": "Sffnw9WcNNUQoNxX"}' \
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
    --body '{"clientId": "cLmJHMY6SToLoJai", "clientSecret": "gs7fxWPYkz9YpyCl", "organizationId": "mfg6BeQtmtjqHzlm"}' \
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
    --body '{"relyingPartyCert": "3mjVzezqd7CGWJKi"}' \
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
    --password '6cmLYjSljOMtDxxp' \
    > test.out 2>&1
eval_tap $? 99 'UpdateXblBPCertFile' test.out

#- 100 DownloadInvoiceDetails
samples/cli/sample-apps Platform downloadInvoiceDetails \
    --namespace $AB_NAMESPACE \
    --feature 'wCg2VrDYOHsR9sbc' \
    --itemId 'fcTtAaoxOpgpP4TX' \
    --itemType 'OPTIONBOX' \
    --endTime 'UqXknrIoz0mAKzpv' \
    --startTime 'G97adwdQxVG7Ipw2' \
    > test.out 2>&1
eval_tap $? 100 'DownloadInvoiceDetails' test.out

#- 101 GenerateInvoiceSummary
samples/cli/sample-apps Platform generateInvoiceSummary \
    --namespace $AB_NAMESPACE \
    --feature 'eTGrpQeSpoxDSiNe' \
    --itemId 'Mj0Qb7PdrhckoLvN' \
    --itemType 'INGAMEITEM' \
    --endTime 'C2FgWD6ffUe13dEn' \
    --startTime 'XP0z2ffayA0j4nWy' \
    > test.out 2>&1
eval_tap $? 101 'GenerateInvoiceSummary' test.out

#- 102 SyncInGameItem
samples/cli/sample-apps Platform syncInGameItem \
    --namespace $AB_NAMESPACE \
    --storeId 'KEJCSJW22bUyh3fH' \
    --body '{"categoryPath": "mNWfFA4GNL4W0aEp", "targetItemId": "RThntmNQrXvnYPs3", "targetNamespace": "ccnKmIRyQZOKYFPF"}' \
    > test.out 2>&1
eval_tap $? 102 'SyncInGameItem' test.out

#- 103 CreateItem
samples/cli/sample-apps Platform createItem \
    --namespace $AB_NAMESPACE \
    --storeId '9gsCK0gPx3qh6ZFG' \
    --body '{"appId": "lObO6TnTSjAgoDbi", "appType": "DEMO", "baseAppId": "z6ysFPc9kJX8VHEy", "boothName": "hhH2BM9bU4DhK26n", "categoryPath": "TcK63pUHdOieQvEn", "clazz": "WSY04uEtQoqo4wwZ", "displayOrder": 100, "entitlementType": "CONSUMABLE", "ext": {"EbEZ7TKpHLrtwWdh": {}, "T3Z0bY3EDSkh1ZLA": {}, "yg1hWiogEjXLrGg4": {}}, "features": ["PQxok4vEAGvanZwx", "z6adIs1YEtlcnz78", "xzbR0hRNvC5DUYsD"], "flexible": true, "images": [{"as": "BIpTxKsWTrVWSrNp", "caption": "3mUU6C4YlvXRpdof", "height": 22, "imageUrl": "DLKC9b28KCnxhTWW", "smallImageUrl": "bs6vlL1VfKW8QEMh", "width": 39}, {"as": "bEDS88mFVVWlBhFG", "caption": "VRYUniqDaYEy7uuK", "height": 50, "imageUrl": "gdMxkhn8LfoDetlC", "smallImageUrl": "W87GhNaJxgcRnFsD", "width": 54}, {"as": "5Fp67kfmoVoQlzk8", "caption": "7ZkR9fXgP4P32gfo", "height": 62, "imageUrl": "f4rVPSG9hI2KfHTT", "smallImageUrl": "JszlWmnSLFsd0Rot", "width": 14}], "inventoryConfig": {"customAttributes": {"riK1AnsDYoscuuem": {}, "e6Ig9AGFH7osSxgL": {}, "tEioZLbZzjz7Qopn": {}}, "serverCustomAttributes": {"u92Tmwo0eyuKFvtE": {}, "gTxrIoJp4FLUxVPB": {}, "v3lw8b6BsMrROQk1": {}}, "slotUsed": 57}, "itemIds": ["63AmWm3iGDaDJaep", "ioJw1Rme6ktQWig8", "MNWYKs1hWM10FzF8"], "itemQty": {"6eqHapOzQNRGs9D6": 35, "qWCCdHjaiUtKFQ0z": 37, "iPFEeWbRq5WasqnM": 11}, "itemType": "OPTIONBOX", "listable": true, "localizations": {"cHcUbRjsyuDjJoTY": {"description": "GVC69FFH3NwNbkVi", "localExt": {"b8DW8IuUx30CyBXG": {}, "d5XrZj0OVm8qphN0": {}, "CdPfGsu5pacCcg2V": {}}, "longDescription": "nn7mNFDufzMszmZK", "title": "soysB9Tl4oNxqiRu"}, "9hH5OYHRzuYoMAcK": {"description": "RZE3m63EhOOmLuTr", "localExt": {"7ZlOVQAyAQfOQg4a": {}, "VN7S4wBfdhal0c0d": {}, "9UcbaNeZ022TC3Zk": {}}, "longDescription": "Y0cax7tm48LT90z8", "title": "SEP9oufQpWt7RBNc"}, "tgesFSSnLr8hx7ec": {"description": "CiaGbJdLrx479Bck", "localExt": {"h0wUeZj6bHeIoRCC": {}, "vglNEaESKotTm6AQ": {}, "iW9e4x7ZvVMwTH3o": {}}, "longDescription": "0HdP3JAdclZStwE0", "title": "Mohj1XociNTVwL3X"}}, "lootBoxConfig": {"rewardCount": 2, "rewards": [{"lootBoxItems": [{"count": 54, "duration": 58, "endDate": "1989-10-06T00:00:00Z", "itemId": "0H88h5StssXdqKIy", "itemSku": "FJK0SP2rdUTrV2pY", "itemType": "XqTZy6nRRxUg13rZ"}, {"count": 55, "duration": 80, "endDate": "1982-01-31T00:00:00Z", "itemId": "xnXkXiFwrLClUHx6", "itemSku": "nmr1BtzzJkNchv89", "itemType": "C17j7XgXeB8Vijat"}, {"count": 21, "duration": 20, "endDate": "1971-09-27T00:00:00Z", "itemId": "3kWKNurtM6vOofT5", "itemSku": "2x7N4mD84uzI83hN", "itemType": "ofdK1w6V09Cw7psk"}], "name": "xV0RgVV86iDFp67V", "odds": 0.37477888015268035, "type": "PROBABILITY_GROUP", "weight": 1}, {"lootBoxItems": [{"count": 92, "duration": 37, "endDate": "1998-01-18T00:00:00Z", "itemId": "wlyxIdXtHYrw7zYw", "itemSku": "hlpA915bsoqMxrd6", "itemType": "oGSzVpmTvERHhxyp"}, {"count": 33, "duration": 5, "endDate": "1980-08-29T00:00:00Z", "itemId": "3KfOHVarVrzuE6BX", "itemSku": "lpDdH9QId1AGYnVu", "itemType": "fkpYAUtDUhEM6Vtb"}, {"count": 44, "duration": 91, "endDate": "1987-12-05T00:00:00Z", "itemId": "MWzdVigLFXT1Li2A", "itemSku": "D3dorMSzomM6m2yC", "itemType": "0L6VM0f39MFm8pjr"}], "name": "xLUWjET90wCYLvQe", "odds": 0.8317903981197955, "type": "REWARD", "weight": 42}, {"lootBoxItems": [{"count": 11, "duration": 50, "endDate": "1983-02-07T00:00:00Z", "itemId": "FbQEbqOtVDKBf7S6", "itemSku": "SkMmoBgvTzGNGvo6", "itemType": "fv6bYiQGNdMfZy2t"}, {"count": 48, "duration": 3, "endDate": "1980-11-15T00:00:00Z", "itemId": "Iv10cV6nMmbhxho8", "itemSku": "adrfqszbr4lTpybr", "itemType": "UHWYY0xiKGcBPkQ2"}, {"count": 74, "duration": 57, "endDate": "1995-07-16T00:00:00Z", "itemId": "xW3zcevACsJCPs9b", "itemSku": "dhLWrDIr6U9LILyl", "itemType": "13HpTqrQEtge94O5"}], "name": "rRlwgZ56V4qeUdjo", "odds": 0.9327589761751663, "type": "REWARD", "weight": 98}], "rollFunction": "DEFAULT"}, "maxCount": 0, "maxCountPerUser": 55, "name": "TNkfTuNLtCKt5POp", "optionBoxConfig": {"boxItems": [{"count": 46, "duration": 79, "endDate": "1971-10-15T00:00:00Z", "itemId": "grYRHG0kFQKDyObR", "itemSku": "MfI2KM6XbnNMtIxP", "itemType": "XnB2FFQRc072WAM2"}, {"count": 100, "duration": 51, "endDate": "1986-04-07T00:00:00Z", "itemId": "Kw5ynMZLQxqhUj79", "itemSku": "dYeoGDHHCwzGVFSW", "itemType": "WQsfBLVPgrJCjpbO"}, {"count": 91, "duration": 41, "endDate": "1993-06-04T00:00:00Z", "itemId": "y4e5PzbZFjoSi0JH", "itemSku": "EyMAyxVxsnquvW5n", "itemType": "jJzAhraWe1p67kw7"}]}, "purchasable": true, "recurring": {"cycle": "QUARTERLY", "fixedFreeDays": 55, "fixedTrialCycles": 20, "graceDays": 16}, "regionData": {"Snmp8ybRG9DELYzN": [{"currencyCode": "7EyKYvI0ikPtxDmC", "currencyNamespace": "mG5CxoFRO5nXwMqH", "currencyType": "REAL", "discountAmount": 32, "discountExpireAt": "1992-05-13T00:00:00Z", "discountPercentage": 46, "discountPurchaseAt": "1982-10-14T00:00:00Z", "expireAt": "1972-02-20T00:00:00Z", "price": 47, "purchaseAt": "1991-03-20T00:00:00Z", "trialPrice": 49}, {"currencyCode": "mJ8SDtOkqIThMWCx", "currencyNamespace": "c1ZwIvxpsS0ki6Qt", "currencyType": "REAL", "discountAmount": 51, "discountExpireAt": "1971-03-26T00:00:00Z", "discountPercentage": 74, "discountPurchaseAt": "1991-10-30T00:00:00Z", "expireAt": "1980-05-17T00:00:00Z", "price": 87, "purchaseAt": "1975-05-10T00:00:00Z", "trialPrice": 64}, {"currencyCode": "sgmTbNRg1llfuFh9", "currencyNamespace": "1MmXDIe01LIG1Ttr", "currencyType": "VIRTUAL", "discountAmount": 32, "discountExpireAt": "1982-03-11T00:00:00Z", "discountPercentage": 9, "discountPurchaseAt": "1995-12-29T00:00:00Z", "expireAt": "1998-02-06T00:00:00Z", "price": 21, "purchaseAt": "1982-03-20T00:00:00Z", "trialPrice": 68}], "8Hcmokn6Go3ruySn": [{"currencyCode": "soRA4lXtaa0TIgBM", "currencyNamespace": "YElpT0vRLb42OaVe", "currencyType": "REAL", "discountAmount": 13, "discountExpireAt": "1982-07-09T00:00:00Z", "discountPercentage": 41, "discountPurchaseAt": "1989-07-01T00:00:00Z", "expireAt": "1982-03-23T00:00:00Z", "price": 55, "purchaseAt": "1987-03-24T00:00:00Z", "trialPrice": 52}, {"currencyCode": "D6j9lCjYnyIAbomG", "currencyNamespace": "bdRgpBeWnybo7hig", "currencyType": "VIRTUAL", "discountAmount": 92, "discountExpireAt": "1994-09-21T00:00:00Z", "discountPercentage": 92, "discountPurchaseAt": "1987-09-23T00:00:00Z", "expireAt": "1978-05-30T00:00:00Z", "price": 25, "purchaseAt": "1972-07-11T00:00:00Z", "trialPrice": 9}, {"currencyCode": "CUInz81UAeTJuq5s", "currencyNamespace": "V1hnrDPjnYcwey6H", "currencyType": "VIRTUAL", "discountAmount": 89, "discountExpireAt": "1988-05-09T00:00:00Z", "discountPercentage": 0, "discountPurchaseAt": "1976-07-19T00:00:00Z", "expireAt": "1979-01-26T00:00:00Z", "price": 22, "purchaseAt": "1983-02-19T00:00:00Z", "trialPrice": 29}], "X1OWPDPS31DNOEqU": [{"currencyCode": "i2zriLexXojGoOr3", "currencyNamespace": "lf5bM4kQU94tHKWy", "currencyType": "VIRTUAL", "discountAmount": 5, "discountExpireAt": "1994-02-20T00:00:00Z", "discountPercentage": 0, "discountPurchaseAt": "1997-05-02T00:00:00Z", "expireAt": "1975-11-28T00:00:00Z", "price": 98, "purchaseAt": "1992-03-07T00:00:00Z", "trialPrice": 42}, {"currencyCode": "CnWk5VpIpI5ZSLVa", "currencyNamespace": "f0vdylAisrUmJOa1", "currencyType": "VIRTUAL", "discountAmount": 59, "discountExpireAt": "1998-05-30T00:00:00Z", "discountPercentage": 61, "discountPurchaseAt": "1974-05-19T00:00:00Z", "expireAt": "1977-04-29T00:00:00Z", "price": 52, "purchaseAt": "1977-03-12T00:00:00Z", "trialPrice": 30}, {"currencyCode": "RmWSyH3BNu3q4qIq", "currencyNamespace": "CMM5I5akW9PFXdTk", "currencyType": "REAL", "discountAmount": 40, "discountExpireAt": "1999-08-15T00:00:00Z", "discountPercentage": 90, "discountPurchaseAt": "1995-02-21T00:00:00Z", "expireAt": "1995-07-13T00:00:00Z", "price": 72, "purchaseAt": "1978-12-05T00:00:00Z", "trialPrice": 52}]}, "saleConfig": {"currencyCode": "8MidPagwc4kic9Vg", "price": 34}, "seasonType": "TIER", "sectionExclusive": true, "sellable": true, "sku": "hTXEJPbFIJoaXTob", "stackable": false, "status": "INACTIVE", "tags": ["54d3Qnyvi23yAyQt", "LmWfGoTwfVC3iMba", "MAPLDJdVdhPmysTw"], "targetCurrencyCode": "C80ZLPTUWzomWQMT", "targetNamespace": "5IFkH0Hqin15ZtTh", "thumbnailUrl": "scI1cWEK13M0zdWG", "useCount": 42}' \
    > test.out 2>&1
eval_tap $? 103 'CreateItem' test.out

#- 104 GetItemByAppId
samples/cli/sample-apps Platform getItemByAppId \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --storeId 'fPY3sj6LTsjgpJ2u' \
    --appId 'sexubD6yyevh4hoB' \
    > test.out 2>&1
eval_tap $? 104 'GetItemByAppId' test.out

#- 105 QueryItems
samples/cli/sample-apps Platform queryItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --appType 'GAME' \
    --availableDate 'JpR8P8ec6fVAMTvV' \
    --baseAppId 'lXLlkb8ZbgsCpf8D' \
    --categoryPath 'itGVlElknEQfjdB1' \
    --features 'SG9xof3PrboLWj9A' \
    --includeSubCategoryItem 'false' \
    --itemType 'APP' \
    --limit '68' \
    --offset '97' \
    --region 'PKGzAYSEFMNFL3oy' \
    --sortBy '["updatedAt:asc", "name:asc", "createdAt:desc"]' \
    --storeId '68dBuXd9Frd7ZUw4' \
    --tags 'x9sUKrx3ZlnNQpY4' \
    --targetNamespace 'MiTTdT0ZDAwPNohd' \
    > test.out 2>&1
eval_tap $? 105 'QueryItems' test.out

#- 106 ListBasicItemsByFeatures
samples/cli/sample-apps Platform listBasicItemsByFeatures \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --features '["LEeNI41MEFnFwpPt", "b0n7Zrtnqml4yLIC", "nspat6PPsblJZoLJ"]' \
    > test.out 2>&1
eval_tap $? 106 'ListBasicItemsByFeatures' test.out

#- 107 GetItems
samples/cli/sample-apps Platform getItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --storeId 'e5S2rv7HWJ8g9e93' \
    --itemIds '0faSPgm3avIVa8bZ' \
    > test.out 2>&1
eval_tap $? 107 'GetItems' test.out

#- 108 GetItemBySku
samples/cli/sample-apps Platform getItemBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'k1pFkhqGzRpHbHei' \
    --sku '9x8ohaCW61lpwzI0' \
    > test.out 2>&1
eval_tap $? 108 'GetItemBySku' test.out

#- 109 GetLocaleItemBySku
samples/cli/sample-apps Platform getLocaleItemBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --language 'dOyGq0PvNdNHDSND' \
    --populateBundle 'true' \
    --region 'dXS5W95dQB5D8bu1' \
    --storeId 'e6tQIsXXBw5XFCFm' \
    --sku 'bh1EQjMZDP16zTue' \
    > test.out 2>&1
eval_tap $? 109 'GetLocaleItemBySku' test.out

#- 110 GetEstimatedPrice
samples/cli/sample-apps Platform getEstimatedPrice \
    --namespace $AB_NAMESPACE \
    --platform 'BGJD0W7cCtgbnxx2' \
    --region 'KjFGosIZTAj6r1B7' \
    --storeId '1NFhS9WaYU8uz3Fm' \
    --itemIds 'kSBOBcqJXz7klitf' \
    --userId 'vh0qY4twQYVCH15u' \
    > test.out 2>&1
eval_tap $? 110 'GetEstimatedPrice' test.out

#- 111 GetItemIdBySku
samples/cli/sample-apps Platform getItemIdBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'ZJzhFX3qB6lymYMD' \
    --sku 'WlSwjqZRL0Nya9wX' \
    > test.out 2>&1
eval_tap $? 111 'GetItemIdBySku' test.out

#- 112 GetBulkItemIdBySkus
samples/cli/sample-apps Platform getBulkItemIdBySkus \
    --namespace $AB_NAMESPACE \
    --sku '["2OdnfbeKg8SdRxvj", "NbDUrJfYi24zjhIz", "M9kB3fxmepevTt5I"]' \
    --storeId 'uf9i8P84bq9JffsF' \
    > test.out 2>&1
eval_tap $? 112 'GetBulkItemIdBySkus' test.out

#- 113 BulkGetLocaleItems
samples/cli/sample-apps Platform bulkGetLocaleItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --language 'E3ljl8jYbSvLYD3I' \
    --region 'kM7rt9q4E79L2Yfj' \
    --storeId 't54U5tCHDXlLuAXi' \
    --itemIds 'xX2f8eX2SM4RsPxa' \
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
    --platform 'hT6UkH8o6lKyyEGv' \
    --userId 'WxHRL78nP9ezWdza' \
    --body '{"itemIds": ["0Qpi2P8pUyhOlXSV", "VGvtaglNTWnmZ4uV", "A5QA8ILzqmij9crt"]}' \
    > test.out 2>&1
eval_tap $? 115 'ValidateItemPurchaseCondition' test.out

#- 116 BulkUpdateRegionData
samples/cli/sample-apps Platform bulkUpdateRegionData \
    --namespace $AB_NAMESPACE \
    --storeId 'IEDjQUta1Ykuessg' \
    --body '{"changes": [{"itemIdentities": ["LfwYLNr8lFB4rlH0", "ZajkiWzPiu5loERq", "mTiEdMDajX2fNzYS"], "itemIdentityType": "ITEM_SKU", "regionData": {"z2mtx52jEhpoAr1z": [{"currencyCode": "FQzylVUWtInQ46Ts", "currencyNamespace": "J7GsNPrFRy6Ks8xh", "currencyType": "VIRTUAL", "discountAmount": 42, "discountExpireAt": "1985-06-05T00:00:00Z", "discountPercentage": 56, "discountPurchaseAt": "1975-12-25T00:00:00Z", "discountedPrice": 36, "expireAt": "1972-11-01T00:00:00Z", "price": 52, "purchaseAt": "1995-04-17T00:00:00Z", "trialPrice": 32}, {"currencyCode": "YL3aP43HtSmFPPVb", "currencyNamespace": "kmRLHhGhH3PoSl0P", "currencyType": "REAL", "discountAmount": 61, "discountExpireAt": "1973-11-08T00:00:00Z", "discountPercentage": 92, "discountPurchaseAt": "1994-11-02T00:00:00Z", "discountedPrice": 95, "expireAt": "1979-11-04T00:00:00Z", "price": 49, "purchaseAt": "1994-07-15T00:00:00Z", "trialPrice": 22}, {"currencyCode": "7x6kCXboVuhpKlJe", "currencyNamespace": "CeWhPrummWfqu40l", "currencyType": "REAL", "discountAmount": 60, "discountExpireAt": "1987-01-28T00:00:00Z", "discountPercentage": 98, "discountPurchaseAt": "1975-02-28T00:00:00Z", "discountedPrice": 72, "expireAt": "1981-04-15T00:00:00Z", "price": 62, "purchaseAt": "1987-09-19T00:00:00Z", "trialPrice": 78}], "7p2188AuR0Zr0GIA": [{"currencyCode": "TRyZB51D62Oxo0FY", "currencyNamespace": "nPGb6aB9CpdgU9pu", "currencyType": "VIRTUAL", "discountAmount": 42, "discountExpireAt": "1992-04-03T00:00:00Z", "discountPercentage": 62, "discountPurchaseAt": "1986-01-29T00:00:00Z", "discountedPrice": 69, "expireAt": "1992-03-25T00:00:00Z", "price": 21, "purchaseAt": "1989-11-26T00:00:00Z", "trialPrice": 32}, {"currencyCode": "xLZMlpCUe9jDqRM5", "currencyNamespace": "I7wp1E8fLoPD3gcI", "currencyType": "REAL", "discountAmount": 73, "discountExpireAt": "1978-05-28T00:00:00Z", "discountPercentage": 76, "discountPurchaseAt": "1973-09-14T00:00:00Z", "discountedPrice": 45, "expireAt": "1980-01-24T00:00:00Z", "price": 83, "purchaseAt": "1975-08-28T00:00:00Z", "trialPrice": 47}, {"currencyCode": "SbjmvtaE7x1zqfNV", "currencyNamespace": "IGmXLLTDFUh71ErY", "currencyType": "REAL", "discountAmount": 60, "discountExpireAt": "1978-05-22T00:00:00Z", "discountPercentage": 70, "discountPurchaseAt": "1987-07-07T00:00:00Z", "discountedPrice": 3, "expireAt": "1997-12-05T00:00:00Z", "price": 46, "purchaseAt": "1971-09-20T00:00:00Z", "trialPrice": 91}], "MaGuZ7UW83Rhu5fY": [{"currencyCode": "OKLkFsJ9lSqfEBdH", "currencyNamespace": "dCBCIJwLlScB9l6a", "currencyType": "VIRTUAL", "discountAmount": 5, "discountExpireAt": "1998-02-15T00:00:00Z", "discountPercentage": 98, "discountPurchaseAt": "1971-10-22T00:00:00Z", "discountedPrice": 44, "expireAt": "1992-12-24T00:00:00Z", "price": 78, "purchaseAt": "1980-06-11T00:00:00Z", "trialPrice": 37}, {"currencyCode": "emHIiTsUU8JtbyXE", "currencyNamespace": "MGboD63ruoogQrKM", "currencyType": "VIRTUAL", "discountAmount": 87, "discountExpireAt": "1995-06-20T00:00:00Z", "discountPercentage": 10, "discountPurchaseAt": "1973-09-08T00:00:00Z", "discountedPrice": 20, "expireAt": "1989-03-21T00:00:00Z", "price": 96, "purchaseAt": "1974-01-01T00:00:00Z", "trialPrice": 89}, {"currencyCode": "FpIzc6dWivAq2e0m", "currencyNamespace": "veVfnSMM1AfTBoGe", "currencyType": "REAL", "discountAmount": 77, "discountExpireAt": "1999-10-09T00:00:00Z", "discountPercentage": 58, "discountPurchaseAt": "1996-09-21T00:00:00Z", "discountedPrice": 14, "expireAt": "1980-01-02T00:00:00Z", "price": 56, "purchaseAt": "1980-09-19T00:00:00Z", "trialPrice": 32}]}}, {"itemIdentities": ["4VoUaHfvDPGBTALo", "erytDhWTvUuti3wo", "PeaFnl5Jtbu1H7gy"], "itemIdentityType": "ITEM_SKU", "regionData": {"kZgYDdqJo8CLUJVH": [{"currencyCode": "eMX0FYCRwbc3ZRJg", "currencyNamespace": "S2WGeol910tvGjZf", "currencyType": "VIRTUAL", "discountAmount": 82, "discountExpireAt": "1971-03-26T00:00:00Z", "discountPercentage": 93, "discountPurchaseAt": "1978-10-16T00:00:00Z", "discountedPrice": 73, "expireAt": "1972-02-27T00:00:00Z", "price": 45, "purchaseAt": "1974-04-14T00:00:00Z", "trialPrice": 73}, {"currencyCode": "GoWc88ZoJY2wUprS", "currencyNamespace": "4E5yRS1OxqXWtfB7", "currencyType": "VIRTUAL", "discountAmount": 18, "discountExpireAt": "1991-02-05T00:00:00Z", "discountPercentage": 53, "discountPurchaseAt": "1981-10-17T00:00:00Z", "discountedPrice": 8, "expireAt": "1987-09-13T00:00:00Z", "price": 56, "purchaseAt": "1985-12-04T00:00:00Z", "trialPrice": 91}, {"currencyCode": "WA1VupJ6wBrF3iKv", "currencyNamespace": "wMAjdVaSelUN95ac", "currencyType": "REAL", "discountAmount": 89, "discountExpireAt": "1996-11-01T00:00:00Z", "discountPercentage": 30, "discountPurchaseAt": "1987-10-11T00:00:00Z", "discountedPrice": 29, "expireAt": "1992-03-26T00:00:00Z", "price": 84, "purchaseAt": "1995-07-23T00:00:00Z", "trialPrice": 48}], "fcGKdmiHviawoc6T": [{"currencyCode": "7c7UI8z5WLtHh7w2", "currencyNamespace": "eZs5WVNDpMZpYlPg", "currencyType": "VIRTUAL", "discountAmount": 73, "discountExpireAt": "1990-12-03T00:00:00Z", "discountPercentage": 3, "discountPurchaseAt": "1986-04-14T00:00:00Z", "discountedPrice": 34, "expireAt": "1988-12-14T00:00:00Z", "price": 87, "purchaseAt": "1977-10-01T00:00:00Z", "trialPrice": 78}, {"currencyCode": "KNzPIMGEBEiAiSQZ", "currencyNamespace": "wKTINbOVjKGjpnKD", "currencyType": "VIRTUAL", "discountAmount": 12, "discountExpireAt": "1993-12-09T00:00:00Z", "discountPercentage": 40, "discountPurchaseAt": "1988-03-19T00:00:00Z", "discountedPrice": 19, "expireAt": "1972-11-15T00:00:00Z", "price": 94, "purchaseAt": "1990-06-09T00:00:00Z", "trialPrice": 44}, {"currencyCode": "FcdJgn7U7YZIHO6Y", "currencyNamespace": "QiFTJ7EkRiVTsKku", "currencyType": "REAL", "discountAmount": 46, "discountExpireAt": "1980-02-12T00:00:00Z", "discountPercentage": 41, "discountPurchaseAt": "1983-02-08T00:00:00Z", "discountedPrice": 80, "expireAt": "1990-06-20T00:00:00Z", "price": 94, "purchaseAt": "1978-04-21T00:00:00Z", "trialPrice": 27}], "4JvTY3maDubKCSrV": [{"currencyCode": "MiuBCKTbvi03IpBE", "currencyNamespace": "agxYfAz7pCYVpecE", "currencyType": "REAL", "discountAmount": 34, "discountExpireAt": "1980-03-16T00:00:00Z", "discountPercentage": 92, "discountPurchaseAt": "1995-01-11T00:00:00Z", "discountedPrice": 79, "expireAt": "1999-02-17T00:00:00Z", "price": 60, "purchaseAt": "1979-10-11T00:00:00Z", "trialPrice": 77}, {"currencyCode": "Lavt9i3FGmxd44sA", "currencyNamespace": "TrBQrvDg5EXrgjmv", "currencyType": "VIRTUAL", "discountAmount": 97, "discountExpireAt": "1977-01-15T00:00:00Z", "discountPercentage": 57, "discountPurchaseAt": "1973-03-21T00:00:00Z", "discountedPrice": 44, "expireAt": "1974-02-08T00:00:00Z", "price": 24, "purchaseAt": "1972-03-16T00:00:00Z", "trialPrice": 14}, {"currencyCode": "zTebWPPl00ZRxPRL", "currencyNamespace": "A27iilBymn37600D", "currencyType": "REAL", "discountAmount": 58, "discountExpireAt": "1981-03-20T00:00:00Z", "discountPercentage": 85, "discountPurchaseAt": "1974-09-16T00:00:00Z", "discountedPrice": 57, "expireAt": "1978-11-09T00:00:00Z", "price": 99, "purchaseAt": "1997-03-02T00:00:00Z", "trialPrice": 36}]}}, {"itemIdentities": ["I90uQXbFVU6RLuJj", "bpeBmHndYgbS5cPO", "NTXvGFMlZGaFoCON"], "itemIdentityType": "ITEM_ID", "regionData": {"vveBEkg8sHzlP6Hs": [{"currencyCode": "LrfFGRdX2axffk4B", "currencyNamespace": "AlXGZipvimfSnwkX", "currencyType": "VIRTUAL", "discountAmount": 44, "discountExpireAt": "1994-12-01T00:00:00Z", "discountPercentage": 5, "discountPurchaseAt": "1984-11-13T00:00:00Z", "discountedPrice": 70, "expireAt": "1971-02-28T00:00:00Z", "price": 66, "purchaseAt": "1993-06-30T00:00:00Z", "trialPrice": 18}, {"currencyCode": "yev7bpEai9i6d6x8", "currencyNamespace": "CxJjJCXmgT2TkzPA", "currencyType": "REAL", "discountAmount": 44, "discountExpireAt": "1971-12-20T00:00:00Z", "discountPercentage": 6, "discountPurchaseAt": "1980-08-12T00:00:00Z", "discountedPrice": 0, "expireAt": "1978-11-07T00:00:00Z", "price": 85, "purchaseAt": "1989-11-02T00:00:00Z", "trialPrice": 29}, {"currencyCode": "OEtio4TylOxPSQRd", "currencyNamespace": "9cdtVM5lTLR13ZWa", "currencyType": "REAL", "discountAmount": 46, "discountExpireAt": "1992-01-24T00:00:00Z", "discountPercentage": 17, "discountPurchaseAt": "1973-03-21T00:00:00Z", "discountedPrice": 58, "expireAt": "1986-06-03T00:00:00Z", "price": 12, "purchaseAt": "1974-08-06T00:00:00Z", "trialPrice": 4}], "TchyCThI3stzTsc0": [{"currencyCode": "XrKlRDOqjDAbjEwV", "currencyNamespace": "1DQN9AUaYWSN81H4", "currencyType": "REAL", "discountAmount": 55, "discountExpireAt": "1973-08-26T00:00:00Z", "discountPercentage": 62, "discountPurchaseAt": "1979-11-22T00:00:00Z", "discountedPrice": 32, "expireAt": "1997-10-29T00:00:00Z", "price": 61, "purchaseAt": "1990-06-26T00:00:00Z", "trialPrice": 13}, {"currencyCode": "Fz3EaSKhAWFLQzcE", "currencyNamespace": "9kROyPg4sy0HAyh7", "currencyType": "REAL", "discountAmount": 46, "discountExpireAt": "1988-02-18T00:00:00Z", "discountPercentage": 16, "discountPurchaseAt": "1980-05-17T00:00:00Z", "discountedPrice": 34, "expireAt": "1986-03-19T00:00:00Z", "price": 45, "purchaseAt": "1972-06-16T00:00:00Z", "trialPrice": 71}, {"currencyCode": "eCLQRrnJ5T93nxai", "currencyNamespace": "2su0jaZWZ4IGHqmZ", "currencyType": "REAL", "discountAmount": 57, "discountExpireAt": "1993-05-05T00:00:00Z", "discountPercentage": 35, "discountPurchaseAt": "1978-03-20T00:00:00Z", "discountedPrice": 26, "expireAt": "1989-08-08T00:00:00Z", "price": 35, "purchaseAt": "1986-01-07T00:00:00Z", "trialPrice": 86}], "8Ve6ZFtyziD10Elc": [{"currencyCode": "upbenVBhXNMzrvnG", "currencyNamespace": "vwL2ik6UhwiFQuAE", "currencyType": "REAL", "discountAmount": 48, "discountExpireAt": "1993-06-04T00:00:00Z", "discountPercentage": 78, "discountPurchaseAt": "1994-09-25T00:00:00Z", "discountedPrice": 86, "expireAt": "1974-07-24T00:00:00Z", "price": 89, "purchaseAt": "1993-11-22T00:00:00Z", "trialPrice": 9}, {"currencyCode": "isLvtW5o8rzUSQ88", "currencyNamespace": "Yg2BJLoc2kVTy62X", "currencyType": "REAL", "discountAmount": 9, "discountExpireAt": "1973-06-26T00:00:00Z", "discountPercentage": 24, "discountPurchaseAt": "1997-05-26T00:00:00Z", "discountedPrice": 37, "expireAt": "1985-11-16T00:00:00Z", "price": 27, "purchaseAt": "1973-02-16T00:00:00Z", "trialPrice": 93}, {"currencyCode": "mwrVWoOVKUaYas3W", "currencyNamespace": "l6jNAMQBW37rEvds", "currencyType": "VIRTUAL", "discountAmount": 72, "discountExpireAt": "1973-08-26T00:00:00Z", "discountPercentage": 17, "discountPurchaseAt": "1971-11-02T00:00:00Z", "discountedPrice": 42, "expireAt": "1975-09-23T00:00:00Z", "price": 82, "purchaseAt": "1997-08-21T00:00:00Z", "trialPrice": 80}]}}]}' \
    > test.out 2>&1
eval_tap $? 116 'BulkUpdateRegionData' test.out

#- 117 SearchItems
samples/cli/sample-apps Platform searchItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --itemType 'EXTENSION' \
    --limit '55' \
    --offset '61' \
    --sortBy 'NFgGRrenRA14iaoy' \
    --storeId '1LeTtj588R6KYpw7' \
    --keyword 'KFBIYOVimzZeYhOh' \
    --language 'qiDTC9rVnDNlLrr8' \
    > test.out 2>&1
eval_tap $? 117 'SearchItems' test.out

#- 118 QueryUncategorizedItems
samples/cli/sample-apps Platform queryUncategorizedItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --limit '78' \
    --offset '2' \
    --sortBy '["createdAt:desc", "name:desc", "updatedAt"]' \
    --storeId 'hBpccpEF6fy22VRL' \
    > test.out 2>&1
eval_tap $? 118 'QueryUncategorizedItems' test.out

#- 119 GetItem
samples/cli/sample-apps Platform getItem \
    --itemId 'Addil1xM7oG16GpC' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --storeId 'yHHjzKtlxNHNStLp' \
    > test.out 2>&1
eval_tap $? 119 'GetItem' test.out

#- 120 UpdateItem
samples/cli/sample-apps Platform updateItem \
    --itemId 's6tVm09y21TUuomu' \
    --namespace $AB_NAMESPACE \
    --storeId 'zvz8iAHS2ArLUAbB' \
    --body '{"appId": "Pej8qMesWKyFkdio", "appType": "DEMO", "baseAppId": "tlEUKi3FMQ7w4vqk", "boothName": "oe7bRmvhhwa3ryKe", "categoryPath": "h7DjmQooJXnqcEvG", "clazz": "6U9BNU9i56boP4zb", "displayOrder": 97, "entitlementType": "CONSUMABLE", "ext": {"nHEeMPns6VY81DcR": {}, "uNp4dLuRSXDU81ZF": {}, "SpEBxThjMSTSRMXL": {}}, "features": ["3Ru5h6fpc7jGU7J3", "M4dFRlgzoKvxWQHG", "tfIB0HeIoi7SsJ9f"], "flexible": false, "images": [{"as": "iPQb14zuiYIjjFJi", "caption": "ZXbmxYVGWlbrwjxo", "height": 20, "imageUrl": "Ef3wxQvvVKw4ReGO", "smallImageUrl": "QYrkcgmmENOOfRRf", "width": 66}, {"as": "ScVhnZ7ZmSwIrEEV", "caption": "CkPsTHVbJFG6JQxW", "height": 89, "imageUrl": "8efKCqpEyPHkC8kv", "smallImageUrl": "rHkBJzC3fJj8rGaN", "width": 35}, {"as": "DaqG9miDTedXK46y", "caption": "BqsTgq8gg4ZLbxvf", "height": 64, "imageUrl": "xHi98CzCjMZAPXd3", "smallImageUrl": "EhziYH8OafFV28xx", "width": 25}], "inventoryConfig": {"customAttributes": {"tDf1U9KzgXri6evp": {}, "yHgcsEaTiGBAs7ir": {}, "whdPAYprLfT4rtsY": {}}, "serverCustomAttributes": {"i6rhcMZbspnFGyMs": {}, "mNGWOb9NXAUqifBe": {}, "C1meyC9ytXRLCUjA": {}}, "slotUsed": 34}, "itemIds": ["jKslckFXsX2hGpUe", "Yc7dLBUNdhL68uFK", "XAl4p3LJV8tz5f1R"], "itemQty": {"tKdYfEZG3HqLcxz8": 18, "iHBjWgj35yySDoPC": 86, "CSxUgmm1BvSQ6981": 96}, "itemType": "INGAMEITEM", "listable": false, "localizations": {"ldhWbF8V5VolYOWS": {"description": "UxLCu3X9yWucTi6H", "localExt": {"aXlQKXGnVyUenjet": {}, "lIb0gAh9cGZN6Xe3": {}, "ht7DwJff2xgtv9XQ": {}}, "longDescription": "19NR22xiZeZZ0b5o", "title": "sxSDxOsvzx3QAU9f"}, "7rfOR5ESsARELl5e": {"description": "keU1xkb8yoq7F0fF", "localExt": {"NdgzPre3pEmvN4A1": {}, "dYH0gAWOCF2YN1Hb": {}, "1m1PGSWXef3V6PXO": {}}, "longDescription": "oYB3WQ7p3HtvbyYw", "title": "LnFErYPVRfFEPBWq"}, "WrX72TzqvHStgS8d": {"description": "mAyifG5vdke3RfWO", "localExt": {"9tM6YoT1mhZs8uM0": {}, "FnprnbN2pRfd14s7": {}, "4ShTxFojeVnFm49o": {}}, "longDescription": "ZdMMb10AI4TMPnKD", "title": "8MpTVjplJ79MpIE2"}}, "lootBoxConfig": {"rewardCount": 11, "rewards": [{"lootBoxItems": [{"count": 36, "duration": 42, "endDate": "1987-11-28T00:00:00Z", "itemId": "WrJGVMUBt9M8ASMe", "itemSku": "d6XwqjdnY3a90vG3", "itemType": "Jwmf710IkW3d7W2n"}, {"count": 31, "duration": 79, "endDate": "1993-09-21T00:00:00Z", "itemId": "bjHN1bYtXC2Mu37G", "itemSku": "jgErXACaiNi8Iwwe", "itemType": "BsmlpeF8TXRC4YB1"}, {"count": 81, "duration": 7, "endDate": "1983-10-08T00:00:00Z", "itemId": "i4etWtfMFAwVqx43", "itemSku": "za79j4sz5IeSbBmS", "itemType": "y7WTb7sVmUUSKStA"}], "name": "Y1SbNiE06P5OkimP", "odds": 0.48158777928448804, "type": "PROBABILITY_GROUP", "weight": 90}, {"lootBoxItems": [{"count": 78, "duration": 90, "endDate": "1994-12-08T00:00:00Z", "itemId": "pzB9JM3iFTyJPHDA", "itemSku": "pPa2CDjjCoLDqy1v", "itemType": "6886kJE0nH9bwbcy"}, {"count": 46, "duration": 87, "endDate": "1989-05-07T00:00:00Z", "itemId": "TkRTL3KCKxosV4sE", "itemSku": "4obwfOCgnLXRaGzf", "itemType": "w58scDuAy3IfBAEP"}, {"count": 74, "duration": 35, "endDate": "1994-10-06T00:00:00Z", "itemId": "MukZ7MjJCBxtz4ed", "itemSku": "kfVNhxg0NCqZMt4E", "itemType": "0604mUuRWXZNjW3r"}], "name": "dRj0P4s8l3e8b06x", "odds": 0.48520030114324453, "type": "REWARD_GROUP", "weight": 76}, {"lootBoxItems": [{"count": 23, "duration": 62, "endDate": "1987-02-04T00:00:00Z", "itemId": "woV7iJtDlk3BrPGT", "itemSku": "d3RRNWkDR47rtE0z", "itemType": "1dK5iihEmXBg6PEy"}, {"count": 36, "duration": 86, "endDate": "1999-03-23T00:00:00Z", "itemId": "rxwJ7hCC183Y5LxB", "itemSku": "MXWOeQl7ka5uRVU6", "itemType": "KMcLxox8pKXPGDYO"}, {"count": 87, "duration": 56, "endDate": "1985-06-27T00:00:00Z", "itemId": "c39xEuoK5s82jJ3T", "itemSku": "WS4Kb9YrKR0483zt", "itemType": "pg2VEuKPeT5YUNdT"}], "name": "sMRcAAbC2oqhrsQj", "odds": 0.9921358407930307, "type": "PROBABILITY_GROUP", "weight": 47}], "rollFunction": "DEFAULT"}, "maxCount": 6, "maxCountPerUser": 4, "name": "wXDDpGzKJ4ljyv4b", "optionBoxConfig": {"boxItems": [{"count": 36, "duration": 8, "endDate": "1981-05-06T00:00:00Z", "itemId": "XMYteDvvaoAgB0dC", "itemSku": "O5ZMJBfspw2ocxKh", "itemType": "rhR5q8qPnPXVFg9b"}, {"count": 10, "duration": 11, "endDate": "1991-04-17T00:00:00Z", "itemId": "gMf9D66lEGSyKk0I", "itemSku": "ULP9IJK0PaYFqB6F", "itemType": "tDdVw9uQb4jAoBp7"}, {"count": 88, "duration": 50, "endDate": "1994-04-13T00:00:00Z", "itemId": "OHYG8A4j85qshqAu", "itemSku": "WWJ9ocMkYfyGnjB3", "itemType": "fiDqmNGTnanappjU"}]}, "purchasable": false, "recurring": {"cycle": "WEEKLY", "fixedFreeDays": 76, "fixedTrialCycles": 42, "graceDays": 64}, "regionData": {"ZxEJ3qaZggXW7JuX": [{"currencyCode": "UwkgmraeleD8olPj", "currencyNamespace": "LH4dLPa3QhnNmNXF", "currencyType": "VIRTUAL", "discountAmount": 46, "discountExpireAt": "1971-04-27T00:00:00Z", "discountPercentage": 55, "discountPurchaseAt": "1993-07-16T00:00:00Z", "expireAt": "1988-10-18T00:00:00Z", "price": 86, "purchaseAt": "1998-12-01T00:00:00Z", "trialPrice": 86}, {"currencyCode": "IYjutgUNN0CjkaRm", "currencyNamespace": "rEZPoj9YKd4yM1BJ", "currencyType": "VIRTUAL", "discountAmount": 95, "discountExpireAt": "1998-08-03T00:00:00Z", "discountPercentage": 24, "discountPurchaseAt": "1973-07-13T00:00:00Z", "expireAt": "1988-04-08T00:00:00Z", "price": 68, "purchaseAt": "1991-06-12T00:00:00Z", "trialPrice": 46}, {"currencyCode": "80mz2hn1SALGQBCP", "currencyNamespace": "r32rJINoYrCwIFdy", "currencyType": "REAL", "discountAmount": 40, "discountExpireAt": "1997-08-04T00:00:00Z", "discountPercentage": 65, "discountPurchaseAt": "1973-01-21T00:00:00Z", "expireAt": "1983-11-28T00:00:00Z", "price": 24, "purchaseAt": "1981-09-25T00:00:00Z", "trialPrice": 74}], "on1Q7Atqyk8yJPGo": [{"currencyCode": "29d1dAezUzXu9ttt", "currencyNamespace": "VNfPi8XBSeJ2d9uQ", "currencyType": "VIRTUAL", "discountAmount": 64, "discountExpireAt": "1973-07-25T00:00:00Z", "discountPercentage": 14, "discountPurchaseAt": "1989-08-21T00:00:00Z", "expireAt": "1989-03-07T00:00:00Z", "price": 48, "purchaseAt": "1994-04-15T00:00:00Z", "trialPrice": 51}, {"currencyCode": "rGANhStiXb0yMCkQ", "currencyNamespace": "bvpkvGpoMqO0dL7R", "currencyType": "REAL", "discountAmount": 46, "discountExpireAt": "1989-08-25T00:00:00Z", "discountPercentage": 85, "discountPurchaseAt": "1971-01-10T00:00:00Z", "expireAt": "1977-05-29T00:00:00Z", "price": 44, "purchaseAt": "1981-11-28T00:00:00Z", "trialPrice": 48}, {"currencyCode": "I1jTvZOHxom1Glav", "currencyNamespace": "07SPbg4PUNsrZqQ9", "currencyType": "VIRTUAL", "discountAmount": 84, "discountExpireAt": "1994-03-26T00:00:00Z", "discountPercentage": 45, "discountPurchaseAt": "1979-12-24T00:00:00Z", "expireAt": "1997-04-24T00:00:00Z", "price": 80, "purchaseAt": "1979-12-28T00:00:00Z", "trialPrice": 76}], "nFNF5jbEvt7cC72u": [{"currencyCode": "onXiHnzqVP0B6yjl", "currencyNamespace": "BUp7iVm3PxBUfYhW", "currencyType": "VIRTUAL", "discountAmount": 63, "discountExpireAt": "1983-04-14T00:00:00Z", "discountPercentage": 37, "discountPurchaseAt": "1986-12-10T00:00:00Z", "expireAt": "1985-09-10T00:00:00Z", "price": 47, "purchaseAt": "1975-05-17T00:00:00Z", "trialPrice": 59}, {"currencyCode": "sG3LuXNAYWXQF7DA", "currencyNamespace": "pVpHS3mzspzNk3mY", "currencyType": "VIRTUAL", "discountAmount": 8, "discountExpireAt": "1982-07-08T00:00:00Z", "discountPercentage": 31, "discountPurchaseAt": "1974-06-07T00:00:00Z", "expireAt": "1996-11-14T00:00:00Z", "price": 46, "purchaseAt": "1993-03-13T00:00:00Z", "trialPrice": 90}, {"currencyCode": "u8ghm8jJ2Axr5B9N", "currencyNamespace": "m1H5px6YCfaoNqh3", "currencyType": "VIRTUAL", "discountAmount": 89, "discountExpireAt": "1997-01-01T00:00:00Z", "discountPercentage": 18, "discountPurchaseAt": "1986-05-23T00:00:00Z", "expireAt": "1988-01-13T00:00:00Z", "price": 57, "purchaseAt": "1990-10-22T00:00:00Z", "trialPrice": 52}]}, "saleConfig": {"currencyCode": "ZNo2xZ7Q4XRXawPG", "price": 82}, "seasonType": "PASS", "sectionExclusive": true, "sellable": true, "sku": "R8x5Vl6L2F3oWzXZ", "stackable": true, "status": "INACTIVE", "tags": ["JXmct2T8QaS3Qz7I", "4dJwkzQGxJ6XhY3Q", "Evy20DylqziEWdV0"], "targetCurrencyCode": "M2E9K9RZrGrALnuX", "targetNamespace": "S3rzDHLxZ5XpfkNc", "thumbnailUrl": "hsTI1CvcsyF3pNSr", "useCount": 42}' \
    > test.out 2>&1
eval_tap $? 120 'UpdateItem' test.out

#- 121 DeleteItem
samples/cli/sample-apps Platform deleteItem \
    --itemId '8rocaR35UCCdYRPu' \
    --namespace $AB_NAMESPACE \
    --force 'false' \
    --storeId '3axkZXxSpG7gxo6i' \
    > test.out 2>&1
eval_tap $? 121 'DeleteItem' test.out

#- 122 AcquireItem
samples/cli/sample-apps Platform acquireItem \
    --itemId '2A4mAiHhIMZTOtu3' \
    --namespace $AB_NAMESPACE \
    --body '{"count": 27, "orderNo": "8IB4MysdVGcCfJKq"}' \
    > test.out 2>&1
eval_tap $? 122 'AcquireItem' test.out

#- 123 GetApp
samples/cli/sample-apps Platform getApp \
    --itemId 'wjmiwM5ePbjvILwK' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --storeId 'OBVkpGAZfUGTqQMq' \
    > test.out 2>&1
eval_tap $? 123 'GetApp' test.out

#- 124 UpdateApp
samples/cli/sample-apps Platform updateApp \
    --itemId '4fTKUdS5pt279lgL' \
    --namespace $AB_NAMESPACE \
    --storeId '7XoAdvmSVJYNyMwO' \
    --body '{"carousel": [{"alt": "K2zyBin7TAa4Gwdf", "previewUrl": "D1J3bVelVkzxtveB", "thumbnailUrl": "KJgtjTwgKRgSQnOu", "type": "image", "url": "j3vIrCwEbGDJZekW", "videoSource": "generic"}, {"alt": "pZFLNtWPFkcijlAl", "previewUrl": "7vbrsORYBmLD2du5", "thumbnailUrl": "rxtJ68U4TzsYqonn", "type": "image", "url": "1IBQdoMAC7QfP9rz", "videoSource": "vimeo"}, {"alt": "ChGlXNCI5alk0IzW", "previewUrl": "e7iMiCwkmdqbjffe", "thumbnailUrl": "DjXj2zdk3HT5UW1I", "type": "video", "url": "qKNHnFifKy5G6Zun", "videoSource": "youtube"}], "developer": "kzkMv788rz3BUME2", "forumUrl": "EAAJiVmztUrnlSLR", "genres": ["Casual", "Strategy", "Action"], "localizations": {"6TMEsGC0XTKqSWBl": {"announcement": "Z5qwTnfGvnKvG4u5", "slogan": "NuJKAAmfc8rNTvus"}, "80Vq2EjYbH2pj1dT": {"announcement": "1WOiRaHE74VKVLUj", "slogan": "1XhvaidRkDZ6fmAg"}, "dqp5X6Dd8Q9f6S7g": {"announcement": "hRSxv5uuQ8o28FKX", "slogan": "mUZQ4cwmafVczEeT"}}, "platformRequirements": {"QmWW0F2Uh6NZKQk9": [{"additionals": "yhBtvGKpZZpCNBch", "directXVersion": "P88Pse1fwjCVzwQF", "diskSpace": "hfqzEf5KoIZZ9qbE", "graphics": "29saZ39Bpd1vY7Oa", "label": "VdKhPGSC6QBQBLj9", "osVersion": "0EG76PhB2f7NXGnb", "processor": "WVEO3KniT2Ck7nm7", "ram": "odL8kTmOTDkS0WVL", "soundCard": "1GnpdfiqeDuBpL4Q"}, {"additionals": "KQqHtqstSDz2WHj6", "directXVersion": "w2A4HTajUNsaCqDm", "diskSpace": "32soIrXH3LQj00s4", "graphics": "LsoPMTW0n4HeV1vo", "label": "fSf337kERztCPqUk", "osVersion": "9BECAtH9jbFasa79", "processor": "Kol30aiToQPHIRJg", "ram": "pRlT2pYO0gLwTZPT", "soundCard": "V9wJLIYsRjzCHelg"}, {"additionals": "URV6xnaUlC72wry7", "directXVersion": "4BYyXn2gtsav9GlJ", "diskSpace": "ZMq6lD8yWsx1Fvum", "graphics": "NLPVA5seFKxkVQz4", "label": "SylISP42BEscMEbh", "osVersion": "6UXwA4DwDdtrVyzD", "processor": "xBPhOEAu72vW7hOm", "ram": "rKbEioqL09cjgRKZ", "soundCard": "5Kdx8Jb7e8aLOOeX"}], "ndBhi9gJ9kDUb8sK": [{"additionals": "DM2Il9SVacD7OSus", "directXVersion": "6Uho1vHrwVlQx7Wo", "diskSpace": "fHpVU0bgqWEknkuA", "graphics": "rFmGCdO9TRY9hLZ3", "label": "I0OowZgOIIZi1SyP", "osVersion": "EDITBcAg3zhe9DTM", "processor": "sKJt4wFMPuIiOGCx", "ram": "7BaRVTp6LjszPAoZ", "soundCard": "3lAEnNGQUn3EmhYd"}, {"additionals": "CdJ7JJYmffmtBnlP", "directXVersion": "yDfymVmYXHzBGYQN", "diskSpace": "NuWaKXon7Oog9MYd", "graphics": "87taQc3I5CsDwQ8U", "label": "WuCdiB3Q7HyhkbvM", "osVersion": "vCMehL6EUN0ry1Mx", "processor": "aGYkBcsYggNoIotx", "ram": "o7dRPJOEh9GaoMC8", "soundCard": "vnTg90BKpnSl1O2o"}, {"additionals": "45T23Z6dJPkmYx2x", "directXVersion": "PLYz2NlSxxKxjzfz", "diskSpace": "4TliRgu8Z5ALog8t", "graphics": "iFj2ynQrGYpfWl30", "label": "kvTmDPctU2pKbGSo", "osVersion": "cf6MHTJx5duYPawl", "processor": "cTCR6B10XERGqEOV", "ram": "SmzbwG9Z5boXfnIP", "soundCard": "lWXwfj0Nmcq7v0JG"}], "6OTZXUBCRpT6OVAT": [{"additionals": "0bXs8fv5G8a0AYuV", "directXVersion": "4jo9dSvAtHhgHvQh", "diskSpace": "BMgiktj6j7X5TCfC", "graphics": "TzysjXZtrBhR4Y5j", "label": "BsYD3IumV5VIHjyt", "osVersion": "MJZ5esvJvQJE31mx", "processor": "9OYTMuvWH3NPP65q", "ram": "FfNszSIOVkniRI1b", "soundCard": "sH6IpRzyssfRwGD7"}, {"additionals": "Xim1fpvS2GSQwBQm", "directXVersion": "EQMAtwjiTscihp2z", "diskSpace": "Pm7WxDSNprPhm9Tq", "graphics": "VX2szECsEv8WIYfQ", "label": "omUPp9EwByU8CBER", "osVersion": "ibUd2M0zaMga1YW9", "processor": "H8u3lsJwUmWNP7oA", "ram": "1Xmv4SPieG3nhqXu", "soundCard": "h51ZyL5FvIMYhfG9"}, {"additionals": "y1aWfAN4dhSreW2g", "directXVersion": "C46uJKHnvOcVSkOA", "diskSpace": "jG808ZSrUmQoTg9f", "graphics": "9nVy7l6uHVyumoIT", "label": "xGAcAi20xY2m5EaG", "osVersion": "kI3Vu18OdTBO9RfB", "processor": "LFCSIfAqi8RCH8EQ", "ram": "jclEpsunWxVLfBU1", "soundCard": "LswlidhBs9cYPlEK"}]}, "platforms": ["Windows", "Windows", "Windows"], "players": ["Multi", "Multi", "Multi"], "primaryGenre": "RPG", "publisher": "CvbyGEZa6kIRAfMi", "releaseDate": "1978-10-22T00:00:00Z", "websiteUrl": "8Zvq4qKaCRzpFYlG"}' \
    > test.out 2>&1
eval_tap $? 124 'UpdateApp' test.out

#- 125 DisableItem
samples/cli/sample-apps Platform disableItem \
    --itemId 'Kz3zYu2mx0FYma0E' \
    --namespace $AB_NAMESPACE \
    --storeId 'S9DsN3PQco1Vg4Qm' \
    > test.out 2>&1
eval_tap $? 125 'DisableItem' test.out

#- 126 GetItemDynamicData
samples/cli/sample-apps Platform getItemDynamicData \
    --itemId '8uykpUgu2JFFKjpy' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 126 'GetItemDynamicData' test.out

#- 127 EnableItem
samples/cli/sample-apps Platform enableItem \
    --itemId 'QEZrrVJkls3jWliz' \
    --namespace $AB_NAMESPACE \
    --storeId '1y42Eoj5vSSvwCQu' \
    > test.out 2>&1
eval_tap $? 127 'EnableItem' test.out

#- 128 FeatureItem
samples/cli/sample-apps Platform featureItem \
    --feature 'TG9nPK5zFVFczYpI' \
    --itemId '3hYEibMOdDlau1qV' \
    --namespace $AB_NAMESPACE \
    --storeId 'ENe60u3OAE3nEntm' \
    > test.out 2>&1
eval_tap $? 128 'FeatureItem' test.out

#- 129 DefeatureItem
samples/cli/sample-apps Platform defeatureItem \
    --feature 'xhlCJuBlMJmpKjcR' \
    --itemId 'nQbkaZQEdpEwWIOP' \
    --namespace $AB_NAMESPACE \
    --storeId 'satnsxTHSaJCKjrw' \
    > test.out 2>&1
eval_tap $? 129 'DefeatureItem' test.out

#- 130 GetLocaleItem
samples/cli/sample-apps Platform getLocaleItem \
    --itemId 'piYIGPIs2yOt6Ho5' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --language 'w0GSCflwrhesRNS1' \
    --populateBundle 'false' \
    --region 'BtY3tAlBsFDBfdbi' \
    --storeId 'OOMikoTOGJGtaJpZ' \
    > test.out 2>&1
eval_tap $? 130 'GetLocaleItem' test.out

#- 131 UpdateItemPurchaseCondition
samples/cli/sample-apps Platform updateItemPurchaseCondition \
    --itemId 'M84sSou8yJrS1ATq' \
    --namespace $AB_NAMESPACE \
    --storeId 'ELjF3CAvI9xF4emu' \
    --body '{"purchaseCondition": {"conditionGroups": [{"operator": "and", "predicates": [{"anyOf": 95, "comparison": "is", "name": "l84jdyzQ8fOPj7so", "predicateType": "SeasonPassPredicate", "value": "l6m6PkzNRyCmV90B", "values": ["j2cGCDMlyRfD90p9", "3Dn7uPMj3q0A9Yag", "G0bSu09WwXWCiRoU"]}, {"anyOf": 70, "comparison": "isGreaterThanOrEqual", "name": "OAP8iiDQND4qU9ea", "predicateType": "SeasonPassPredicate", "value": "gDslJcZstT7yLr2r", "values": ["O4qOOZIBpbmXKi9E", "z7db7m3SrIhxGiyh", "THM5g2mSqW2luO9r"]}, {"anyOf": 45, "comparison": "isGreaterThan", "name": "OzxVZ8F6fWcRB4xZ", "predicateType": "EntitlementPredicate", "value": "AVVdx3rhGH5791jU", "values": ["1X2HiZVdv2C2Ii2R", "8YCKqL2kNm65iBKk", "nFuw26a74iSrUGXF"]}]}, {"operator": "and", "predicates": [{"anyOf": 23, "comparison": "isGreaterThanOrEqual", "name": "RR2hdQC5USuKEpUr", "predicateType": "SeasonPassPredicate", "value": "hJZDZypthpMO2cFE", "values": ["NCdaQom4F3bbwc46", "soD9SRleZ6682bHq", "165o99Bpuc1jnLeS"]}, {"anyOf": 91, "comparison": "isLessThanOrEqual", "name": "eeasTo4iTElEcrsI", "predicateType": "SeasonPassPredicate", "value": "9IcS8FsMBnctF4pu", "values": ["aLXDVqyZMw4OO9HE", "Brvba7PWcoe5DXSl", "ouh35R88388irNak"]}, {"anyOf": 2, "comparison": "isNot", "name": "bxumltjcFfeKhCI8", "predicateType": "EntitlementPredicate", "value": "Ic2oS40wpCwRkcn6", "values": ["eLbC8MayWhwykhVq", "ASo0dmcsmT3QGDWW", "s6t2UtLggyUeW9Z6"]}]}, {"operator": "or", "predicates": [{"anyOf": 9, "comparison": "isLessThan", "name": "ZnLPAxsJKIPQiY5r", "predicateType": "SeasonTierPredicate", "value": "3AmqpgyBctTKFGeE", "values": ["fshK9EcmRusmIv7R", "VmIEYOUS62QUyKIr", "sN4WKBURtOY0mMAr"]}, {"anyOf": 75, "comparison": "excludes", "name": "391Cg7dAqwR0SA53", "predicateType": "SeasonPassPredicate", "value": "iVnINEECayTQZzFv", "values": ["WZ6cnZxMRdLjddT5", "2hS6HrsJ63tG830E", "iJTs6N602no8sNZP"]}, {"anyOf": 24, "comparison": "is", "name": "XaF49ufQ9DShuL2S", "predicateType": "EntitlementPredicate", "value": "frORw6kTO0HvFZHh", "values": ["aMsIbdp1WNanOazD", "8bR32BtRVm6XYKyL", "42NBqTaEG3Ku8KcT"]}]}]}}' \
    > test.out 2>&1
eval_tap $? 131 'UpdateItemPurchaseCondition' test.out

#- 132 ReturnItem
samples/cli/sample-apps Platform returnItem \
    --itemId 'RSzghn82VEkWde1f' \
    --namespace $AB_NAMESPACE \
    --body '{"orderNo": "osG5kUMQX0E5j0WA"}' \
    > test.out 2>&1
eval_tap $? 132 'ReturnItem' test.out

#- 133 QueryKeyGroups
samples/cli/sample-apps Platform queryKeyGroups \
    --namespace $AB_NAMESPACE \
    --limit '6' \
    --name 'yfEwTJuGoiH6f3Zy' \
    --offset '21' \
    --tag 'AfwkulQdclghl8o8' \
    > test.out 2>&1
eval_tap $? 133 'QueryKeyGroups' test.out

#- 134 CreateKeyGroup
samples/cli/sample-apps Platform createKeyGroup \
    --namespace $AB_NAMESPACE \
    --body '{"description": "DbS4nhovxSljlggG", "name": "zOmF9k7rcYoqQkgt", "status": "ACTIVE", "tags": ["FEq07CqRLRE8C1xJ", "IkV9hhY7jzdsSBsP", "vUZEaqivkPM3T1lb"]}' \
    > test.out 2>&1
eval_tap $? 134 'CreateKeyGroup' test.out

#- 135 GetKeyGroupByBoothName
eval_tap 0 135 'GetKeyGroupByBoothName # SKIP deprecated' test.out

#- 136 GetKeyGroup
samples/cli/sample-apps Platform getKeyGroup \
    --keyGroupId '1RytMlPPFoGxLa69' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 136 'GetKeyGroup' test.out

#- 137 UpdateKeyGroup
samples/cli/sample-apps Platform updateKeyGroup \
    --keyGroupId '532ZJ2GrxxO5chDa' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "rWqP1PZqT5a6nzZ8", "name": "NPRxDAaYMo1EGYwK", "status": "ACTIVE", "tags": ["nCqDRUWu8uA5ykQY", "KXXGKKNAfHwcvkph", "FCYdjzNIyvljqd1Z"]}' \
    > test.out 2>&1
eval_tap $? 137 'UpdateKeyGroup' test.out

#- 138 GetKeyGroupDynamic
samples/cli/sample-apps Platform getKeyGroupDynamic \
    --keyGroupId 'StbfiyT1HB82JD2a' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 138 'GetKeyGroupDynamic' test.out

#- 139 ListKeys
samples/cli/sample-apps Platform listKeys \
    --keyGroupId 'FenZjEvdcP6MdCui' \
    --namespace $AB_NAMESPACE \
    --limit '73' \
    --offset '5' \
    --status 'ACQUIRED' \
    > test.out 2>&1
eval_tap $? 139 'ListKeys' test.out

#- 140 UploadKeys
samples/cli/sample-apps Platform uploadKeys \
    --keyGroupId '58UB0xmjft8ikxWb' \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 140 'UploadKeys' test.out

#- 141 QueryOrders
samples/cli/sample-apps Platform queryOrders \
    --namespace $AB_NAMESPACE \
    --endTime 'bhNldDbUiyscd4OU' \
    --limit '62' \
    --offset '5' \
    --orderNos '["7D4Z2E4LKo18uocN", "yUgyo9UHLV1l3OVA", "nrW4KrHSrvVg2AkQ"]' \
    --sortBy '3kzf7rq9prtNSBYL' \
    --startTime 'owqHqMz6gFKYeTPr' \
    --status 'REFUNDED' \
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
    --orderNo '1hhRwMFj1As0kDay' \
    > test.out 2>&1
eval_tap $? 143 'GetOrder' test.out

#- 144 RefundOrder
samples/cli/sample-apps Platform refundOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'T5uqbGS4hKUUJRJR' \
    --body '{"description": "YFFuMYfcXOSfVdDM"}' \
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
    --body '{"dryRun": false, "notifyUrl": "O4w57rbDo4uY49PG", "privateKey": "IcYc1zRzuYxeFYAL"}' \
    > test.out 2>&1
eval_tap $? 146 'UpdatePaymentCallbackConfig' test.out

#- 147 QueryPaymentNotifications
samples/cli/sample-apps Platform queryPaymentNotifications \
    --namespace $AB_NAMESPACE \
    --endDate 'YqF4SiElg5v4avSd' \
    --externalId 'Z3ykviR0i9HeW4Iu' \
    --limit '87' \
    --notificationSource 'XSOLLA' \
    --notificationType 'lP1nkBFy9rTFVAvn' \
    --offset '58' \
    --paymentOrderNo 'e2zRBH78RmSTwQJc' \
    --startDate 'anPHmjPA2yEv4LRR' \
    --status 'IGNORED' \
    > test.out 2>&1
eval_tap $? 147 'QueryPaymentNotifications' test.out

#- 148 QueryPaymentOrders
samples/cli/sample-apps Platform queryPaymentOrders \
    --namespace $AB_NAMESPACE \
    --channel 'INTERNAL' \
    --extTxId 'D6DtXPkMexVajWCb' \
    --limit '70' \
    --offset '60' \
    --status 'CHARGE_FAILED' \
    > test.out 2>&1
eval_tap $? 148 'QueryPaymentOrders' test.out

#- 149 CreatePaymentOrderByDedicated
samples/cli/sample-apps Platform createPaymentOrderByDedicated \
    --namespace $AB_NAMESPACE \
    --body '{"currencyCode": "TECJsf6rLzylk1zm", "currencyNamespace": "NRMqkwv8DqxYKTny", "customParameters": {"nsUZidoiJjdBFVat": {}, "RRdm9Iw9Kxfpdlqz": {}, "rUn9uLg77OXAnp0s": {}}, "description": "RsHD1MzsU9MrvDw6", "extOrderNo": "4PaL6PskS5WirWBO", "extUserId": "xJHUbvPZPS7Q1IBT", "itemType": "CODE", "language": "XS_pPYw", "metadata": {"yz7QJnak9zv19pqr": "vX3ZkkvErBBc4ow0", "GUpU03QEzFmtGJwu": "uaoAjIQaYCKDpPN5", "P7SLXSEO1sQXmuL7": "XpqNsteP94LFP6ss"}, "notifyUrl": "viGpxRRHtmsbzKd4", "omitNotification": true, "platform": "EeP50yjByGC7ZNXz", "price": 88, "recurringPaymentOrderNo": "AThpuozkxRZlvT1v", "region": "6ICn17RbLZvpsWYm", "returnUrl": "0lggKXDxV3c3ZUmN", "sandbox": false, "sku": "zdCgIkDYdsLfnqB2", "subscriptionId": "LFQWfTWKCrXiAQBd", "targetNamespace": "97uyXNaexVo1kbjJ", "targetUserId": "tKcGoCfgXpVmJOvQ", "title": "hgxn8Ae1m1hubnIK"}' \
    > test.out 2>&1
eval_tap $? 149 'CreatePaymentOrderByDedicated' test.out

#- 150 ListExtOrderNoByExtTxId
samples/cli/sample-apps Platform listExtOrderNoByExtTxId \
    --namespace $AB_NAMESPACE \
    --extTxId 'd0V64ZaDViujb8Ad' \
    > test.out 2>&1
eval_tap $? 150 'ListExtOrderNoByExtTxId' test.out

#- 151 GetPaymentOrder
samples/cli/sample-apps Platform getPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo '85PTQh32GGLpIs84' \
    > test.out 2>&1
eval_tap $? 151 'GetPaymentOrder' test.out

#- 152 ChargePaymentOrder
samples/cli/sample-apps Platform chargePaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'v4uMp35jTlE9dzoj' \
    --body '{"extTxId": "jGbxXLFBqqGRv9BQ", "paymentMethod": "uCVhAuODeDHV1fiJ", "paymentProvider": "WXPAY"}' \
    > test.out 2>&1
eval_tap $? 152 'ChargePaymentOrder' test.out

#- 153 RefundPaymentOrderByDedicated
samples/cli/sample-apps Platform refundPaymentOrderByDedicated \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'o6nG5jkLtZuB6R6C' \
    --body '{"description": "Gd7r1N9VfAIjsLaV"}' \
    > test.out 2>&1
eval_tap $? 153 'RefundPaymentOrderByDedicated' test.out

#- 154 SimulatePaymentOrderNotification
samples/cli/sample-apps Platform simulatePaymentOrderNotification \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'wN42LsclKGYHk6gB' \
    --body '{"amount": 17, "currencyCode": "Oj9s7s8z9OB7Ry94", "notifyType": "CHARGE", "paymentProvider": "WXPAY", "salesTax": 66, "vat": 76}' \
    > test.out 2>&1
eval_tap $? 154 'SimulatePaymentOrderNotification' test.out

#- 155 GetPaymentOrderChargeStatus
samples/cli/sample-apps Platform getPaymentOrderChargeStatus \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'vNH9RYfWZIun6M94' \
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
    --platform 'GooglePlay' \
    --body '{"allowedPlatformOrigins": ["Other", "Xbox", "IOS"]}' \
    > test.out 2>&1
eval_tap $? 157 'UpdatePlatformEntitlementConfig' test.out

#- 158 GetPlatformWalletConfig
samples/cli/sample-apps Platform getPlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'IOS' \
    > test.out 2>&1
eval_tap $? 158 'GetPlatformWalletConfig' test.out

#- 159 UpdatePlatformWalletConfig
samples/cli/sample-apps Platform updatePlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Oculus' \
    --body '{"allowedBalanceOrigins": ["System", "IOS", "Other"]}' \
    > test.out 2>&1
eval_tap $? 159 'UpdatePlatformWalletConfig' test.out

#- 160 ResetPlatformWalletConfig
samples/cli/sample-apps Platform resetPlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Steam' \
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
    --body '{"entitlement": {"consumable": {"enabled": false, "strategy": "REVOKE_OR_REPORT"}, "durable": {"enabled": true, "strategy": "REVOKE_OR_REPORT"}}, "wallet": {"enabled": false, "strategy": "ALWAYS_REVOKE"}}' \
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
    --endTime 'tOHhQjFMXIRIwn0q' \
    --limit '6' \
    --offset '45' \
    --source 'OTHER' \
    --startTime 'NWI0XD916naw060U' \
    --status 'FAIL' \
    --transactionId 'DBPTKdHFAJjLT2HP' \
    --userId '2K5ysBVlr9YZl0Lx' \
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
    --body '{"appConfig": {"appName": "YPawjm39KcqCBsmZ"}, "customConfig": {"connectionType": "TLS", "grpcServerAddress": "EZQinG93UKx3aiKT"}, "extendType": "CUSTOM"}' \
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
    --body '{"description": "aRsSkUqPW2BDrqEy", "eventTopic": "k9ZxsRhunx2aYBNf", "maxAwarded": 74, "maxAwardedPerUser": 51, "namespaceExpression": "v4o75xtTOCu4ZH6c", "rewardCode": "IevbRwAyNSrXXzA5", "rewardConditions": [{"condition": "1ZkB4jNUGr9E9tds", "conditionName": "U8vddeKe6TqXF3WG", "eventName": "Cey3G1OAedNKvq6P", "rewardItems": [{"duration": 92, "endDate": "1983-07-06T00:00:00Z", "identityType": "ITEM_ID", "itemId": "vd4DwxxxrzeRAlBt", "quantity": 29, "sku": "kyRiTQBLC9Cma5kN"}, {"duration": 91, "endDate": "1972-01-08T00:00:00Z", "identityType": "ITEM_ID", "itemId": "Z97msOhhvrgqFRWp", "quantity": 1, "sku": "DljHxYC8lp5yu3Si"}, {"duration": 39, "endDate": "1985-03-08T00:00:00Z", "identityType": "ITEM_ID", "itemId": "n9MsqasvOy38AwU8", "quantity": 48, "sku": "xPtnmzJ2xmB0hSpB"}]}, {"condition": "poyK4kUoToX6mT7I", "conditionName": "UAo02Pu6TBNnSgFJ", "eventName": "VDioFxFGCJtXdDc5", "rewardItems": [{"duration": 69, "endDate": "1983-02-28T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "zVMCEFvJULyJn52c", "quantity": 74, "sku": "K3spUrD9GuyGTHOC"}, {"duration": 95, "endDate": "1995-01-08T00:00:00Z", "identityType": "ITEM_ID", "itemId": "d8ncYCiELg9NJifK", "quantity": 41, "sku": "K3le32F9rWjQ1gHy"}, {"duration": 45, "endDate": "1987-02-27T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "hsR0HXf7SpgKycmm", "quantity": 66, "sku": "0VPTtrHqcqLF8rz6"}]}, {"condition": "rjKH5rHfVAJRADcb", "conditionName": "SscVub2Yu0Cw4e8q", "eventName": "SY7YFqr2ZULihmxm", "rewardItems": [{"duration": 41, "endDate": "1993-04-05T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "qGMQA7DWAdbyON5g", "quantity": 4, "sku": "c5m2j3vLs2iBUDy0"}, {"duration": 47, "endDate": "1989-09-28T00:00:00Z", "identityType": "ITEM_ID", "itemId": "A4ZYtXPtssoK9faI", "quantity": 10, "sku": "fihSn4JlZljxC11U"}, {"duration": 29, "endDate": "1973-04-28T00:00:00Z", "identityType": "ITEM_ID", "itemId": "5hBmEVs6eKgu3nyw", "quantity": 9, "sku": "RXuVbFnEw2gPAU9v"}]}], "userIdExpression": "WgXUJUmFN9jnYtmJ"}' \
    > test.out 2>&1
eval_tap $? 169 'CreateReward' test.out

#- 170 QueryRewards
samples/cli/sample-apps Platform queryRewards \
    --namespace $AB_NAMESPACE \
    --eventTopic 'gRFwEvlKxwqRAkTZ' \
    --limit '66' \
    --offset '74' \
    --sortBy '["namespace", "rewardCode:asc"]' \
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
    --rewardId 'sPArHazuKaULUZ8O' \
    > test.out 2>&1
eval_tap $? 173 'GetReward' test.out

#- 174 UpdateReward
samples/cli/sample-apps Platform updateReward \
    --namespace $AB_NAMESPACE \
    --rewardId 'yfvfzlGHPN2ZgTM3' \
    --body '{"description": "1yW6vhcbfODOJC0s", "eventTopic": "BSG7LT4U43ME06FP", "maxAwarded": 9, "maxAwardedPerUser": 49, "namespaceExpression": "mmzmdftOlKVVJ3Vo", "rewardCode": "SrAW8BJAINHe69W3", "rewardConditions": [{"condition": "67Ru8vcynDFIVEAC", "conditionName": "TKZBvB9jouEz7yzu", "eventName": "zT5KDge3ugt6CfMq", "rewardItems": [{"duration": 43, "endDate": "1983-06-29T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "opYidWRkmqjReug8", "quantity": 91, "sku": "h5Xt2jaO2pS9fIkE"}, {"duration": 68, "endDate": "1985-05-13T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "afNFXuwXxVreA43t", "quantity": 68, "sku": "uyG8HxuF8zJX2tpu"}, {"duration": 26, "endDate": "1994-09-27T00:00:00Z", "identityType": "ITEM_ID", "itemId": "zyUDA8vwPCgbNRR4", "quantity": 27, "sku": "5j6W8TwnH9Uukrbj"}]}, {"condition": "rTMheko4GFaTBeY9", "conditionName": "yrckqrSxPsPtiw91", "eventName": "Lr7hqe0lUa6ihOiu", "rewardItems": [{"duration": 78, "endDate": "1988-11-01T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "iWjTkpY5tQK12nEc", "quantity": 26, "sku": "ihzrDQMBkswwlwtp"}, {"duration": 84, "endDate": "1988-05-07T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "OcFo6ndzNYiuVPOK", "quantity": 9, "sku": "2ijethFhlQvnUNRO"}, {"duration": 0, "endDate": "1972-06-11T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "a7Cset0FxPkKwD85", "quantity": 48, "sku": "iZ44uRgjZJppvKKP"}]}, {"condition": "z5cDqEjRMz0jiQgx", "conditionName": "qxmZr7vT2GmJoImv", "eventName": "5Z1bb8rD97ZhDtKV", "rewardItems": [{"duration": 8, "endDate": "1994-07-22T00:00:00Z", "identityType": "ITEM_ID", "itemId": "jylNoQ1555iGcnlX", "quantity": 65, "sku": "fYOKZIE8sd0M1TGk"}, {"duration": 19, "endDate": "1998-06-29T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "mKDpCuaXIUNY8Frf", "quantity": 93, "sku": "Ojuz7gUYHzLpFy7X"}, {"duration": 15, "endDate": "1977-04-15T00:00:00Z", "identityType": "ITEM_ID", "itemId": "7vm8LzeM0B1azQ4P", "quantity": 11, "sku": "6RJyfkjv29bRu8ap"}]}], "userIdExpression": "siik0ZWiPklT62JY"}' \
    > test.out 2>&1
eval_tap $? 174 'UpdateReward' test.out

#- 175 DeleteReward
samples/cli/sample-apps Platform deleteReward \
    --namespace $AB_NAMESPACE \
    --rewardId 'CzHR12Ss8hPokZBD' \
    > test.out 2>&1
eval_tap $? 175 'DeleteReward' test.out

#- 176 CheckEventCondition
samples/cli/sample-apps Platform checkEventCondition \
    --namespace $AB_NAMESPACE \
    --rewardId 'FX2y0K176VjUKr0V' \
    --body '{"payload": {"4LNvqLWSf02mCyme": {}, "R1fbKjJi0v2VHenh": {}, "x23D8HBDEC2O9sVG": {}}}' \
    > test.out 2>&1
eval_tap $? 176 'CheckEventCondition' test.out

#- 177 DeleteRewardConditionRecord
samples/cli/sample-apps Platform deleteRewardConditionRecord \
    --namespace $AB_NAMESPACE \
    --rewardId 'ynmrhuZfV1nZ1qoO' \
    --body '{"conditionName": "g7AvoY9axPRDWJVc", "userId": "T9Qkq1CS47cGOJU5"}' \
    > test.out 2>&1
eval_tap $? 177 'DeleteRewardConditionRecord' test.out

#- 178 QuerySections
samples/cli/sample-apps Platform querySections \
    --namespace $AB_NAMESPACE \
    --end 'GSZtr7R4pTWuXzFp' \
    --limit '25' \
    --offset '20' \
    --start 'Anbj0s22NzHXEvT5' \
    --storeId 'Qh1XhVTU12VU9jIv' \
    --viewId 'bHBOqqpvP6SzsnxS' \
    > test.out 2>&1
eval_tap $? 178 'QuerySections' test.out

#- 179 CreateSection
samples/cli/sample-apps Platform createSection \
    --namespace $AB_NAMESPACE \
    --storeId 'lqsAqFvNXJvA1Bt6' \
    --body '{"active": true, "displayOrder": 10, "endDate": "1990-12-02T00:00:00Z", "ext": {"56FJCT6FtxVkdlBi": {}, "afuMrtXCCgNUyVQK": {}, "CyHAepEs5ut6y393": {}}, "fixedPeriodRotationConfig": {"backfillType": "NONE", "duration": 25, "itemCount": 42, "rule": "SEQUENCE"}, "items": [{"id": "n6Ph6DXjaW1kczkL", "sku": "1pifWsM3ohFJIG4E"}, {"id": "INRC7vFxoWncfL9H", "sku": "s01JHNBileT0bzqh"}, {"id": "NAEBNl8enFFXw014", "sku": "ueS190J6xtMe5JCh"}], "localizations": {"hJT4Irvfx9Ar2t2g": {"description": "zs6UpHQm4Ab8CNSl", "localExt": {"v4VjVP24dTQMCjF7": {}, "I7JfQfEwTqL2vTbJ": {}, "ofBY28GsU2U4AscZ": {}}, "longDescription": "s3xDcByzLfMjjLrx", "title": "zYcc1Ac2upRYwWlR"}, "JXEY8t8P3hym2tES": {"description": "ZfZyS0OdTUWvYK1h", "localExt": {"AqBWQYf3Df5RYaQU": {}, "70zszGQ2q7PRc0P3": {}, "a2mtw8OXdxfa6PAp": {}}, "longDescription": "EtPS2rMl0j7yWgPX", "title": "5Pv9tpQNKTNrEgnj"}, "Dp271sM8UrK4XiY0": {"description": "tM2sr2oV6vMeyO9s", "localExt": {"tXLSHz2Ic82JvPGJ": {}, "5Jo3qEmFPhHPOdkv": {}, "IhZ3u9hHJkDr4WHJ": {}}, "longDescription": "wLlzi8xutoGRaFsk", "title": "6mvrAgoyzgp3ivzt"}}, "name": "T6ncVXw0Jn76mFvW", "rotationType": "FIXED_PERIOD", "startDate": "1981-06-08T00:00:00Z", "viewId": "rnNbgUbBiMYYl9I4"}' \
    > test.out 2>&1
eval_tap $? 179 'CreateSection' test.out

#- 180 PurgeExpiredSection
samples/cli/sample-apps Platform purgeExpiredSection \
    --namespace $AB_NAMESPACE \
    --storeId 'DFnEpcmMvRAg26tJ' \
    > test.out 2>&1
eval_tap $? 180 'PurgeExpiredSection' test.out

#- 181 GetSection
samples/cli/sample-apps Platform getSection \
    --namespace $AB_NAMESPACE \
    --sectionId 'uXrk8FIyOaHOq3lh' \
    --storeId '7Az55wyaqLGx5mfO' \
    > test.out 2>&1
eval_tap $? 181 'GetSection' test.out

#- 182 UpdateSection
samples/cli/sample-apps Platform updateSection \
    --namespace $AB_NAMESPACE \
    --sectionId 'yH4W4a44trN1lz55' \
    --storeId 'kxD2UejftxhVxrQ4' \
    --body '{"active": true, "displayOrder": 15, "endDate": "1998-09-22T00:00:00Z", "ext": {"NNKVBhrWKkbt8cHf": {}, "DU1E04o6BimkLLHU": {}, "VFjNbRB1NriSuwF8": {}}, "fixedPeriodRotationConfig": {"backfillType": "NONE", "duration": 24, "itemCount": 67, "rule": "SEQUENCE"}, "items": [{"id": "VWVx594Hl0ZxUY1A", "sku": "WN5Zxyw2B7ELJMe6"}, {"id": "A2kwuwjPfwf5NUzv", "sku": "5IwxAcSKHkJm2z1o"}, {"id": "ZyPUBZOcMdMoqMNp", "sku": "4wkL1AngzTQH2wBz"}], "localizations": {"inpR3vmQrHRm3td3": {"description": "Qzj9AZLmn59myHhe", "localExt": {"3xThtw7GQjESbxsZ": {}, "f2q9GOLDSw2K5tG6": {}, "4wS7xkJzhFM5kB5c": {}}, "longDescription": "rQAu8HoPqGZfHqKb", "title": "4tZvqfYQ33AqAtUf"}, "vV325ca1i1L6CKxZ": {"description": "OHLQ9ZcyBMgumFcf", "localExt": {"LownxNvCOLzfDoem": {}, "CpOBIvAi59QWtBmD": {}, "2K7P4WxoDwQYq4YA": {}}, "longDescription": "pQjHbRIj4i3Vy95L", "title": "grKOqPZKE7SIZAkN"}, "tq42H4vHqJtZ5VnB": {"description": "x5uSTH1x3fkIwD8A", "localExt": {"HglSz0MhJRZeQ70c": {}, "QIVsTSN7fWOUGCU2": {}, "XJc3JobEOhTDPIuy": {}}, "longDescription": "kCqmHOQFS2JBmDQ1", "title": "3hbegn1g4Mjgv5ia"}}, "name": "roUaXHDCAXEVGlfH", "rotationType": "NONE", "startDate": "1984-02-02T00:00:00Z", "viewId": "za2eC9dPJfG3vaCD"}' \
    > test.out 2>&1
eval_tap $? 182 'UpdateSection' test.out

#- 183 DeleteSection
samples/cli/sample-apps Platform deleteSection \
    --namespace $AB_NAMESPACE \
    --sectionId 'h8jZfWGptuzPhBMK' \
    --storeId 'G5rK0ATqxjkE9QIf' \
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
    --body '{"defaultLanguage": "Kd9mDuhTuAvNH18k", "defaultRegion": "DF1oLbHDZTttq0cC", "description": "vajWemaLDtYjDdHO", "supportedLanguages": ["oAwtYx6zDXGywgIR", "PnQLRf7w5uYtJkGv", "D3YTm2fb2v160eUX"], "supportedRegions": ["dej0eY6FoaERJXd4", "1zcBO3GGHVqTa1gh", "1HZs3iIKR8rsVpL8"], "title": "L5G17mml0sJqxc5X"}' \
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
    --body '{"catalogType": "APP", "fieldsToBeIncluded": ["w586mr0vaOxq4JcA", "jOTFc6Noi32C75WF", "IGgWswZskPTGtqLd"], "idsToBeExported": ["gaZHM6XlEIkeBmgM", "Vvn8KS9QNu3P7Rdf", "M6dneue0cjULUVow"], "storeId": "7AEebtncu2nLzblj"}' \
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
    --storeId '97XlxvhQ0jNFYoSe' \
    > test.out 2>&1
eval_tap $? 194 'GetStore' test.out

#- 195 UpdateStore
samples/cli/sample-apps Platform updateStore \
    --namespace $AB_NAMESPACE \
    --storeId '4QZKzsQD4ndEHO6m' \
    --body '{"defaultLanguage": "SX1sARgmSYWVUi65", "defaultRegion": "LWJn2JPFoEKtqvAX", "description": "E4Ie1MhtAZxki90b", "supportedLanguages": ["4Ynyad7bW2EgUu6Y", "fEX6G9Dv5rfHrn4E", "4PklPBpG7TJ197mm"], "supportedRegions": ["FjLynuKTUNyhgHEt", "aqkyV14k3f3VAMIH", "5uus19EU7gt3JFOx"], "title": "gEfK58FZOJ2eB7DD"}' \
    > test.out 2>&1
eval_tap $? 195 'UpdateStore' test.out

#- 196 DeleteStore
samples/cli/sample-apps Platform deleteStore \
    --namespace $AB_NAMESPACE \
    --storeId 'hu0sN5gkyKpsyV1S' \
    > test.out 2>&1
eval_tap $? 196 'DeleteStore' test.out

#- 197 QueryChanges
samples/cli/sample-apps Platform queryChanges \
    --namespace $AB_NAMESPACE \
    --storeId 'ilsENhBOt8u13FzH' \
    --action 'DELETE' \
    --itemSku 'a4JyryxWg2mftwUD' \
    --itemType 'INGAMEITEM' \
    --limit '20' \
    --offset '7' \
    --selected 'true' \
    --sortBy '["createdAt:asc", "createdAt:desc", "updatedAt"]' \
    --status 'UNPUBLISHED' \
    --type 'STORE' \
    --updatedAtEnd 'Lauf5GcaeQMxC76P' \
    --updatedAtStart '5N2L5TMtSLbwYHV5' \
    --withTotal 'false' \
    > test.out 2>&1
eval_tap $? 197 'QueryChanges' test.out

#- 198 PublishAll
samples/cli/sample-apps Platform publishAll \
    --namespace $AB_NAMESPACE \
    --storeId 'GSsSiv57s44qUm3a' \
    > test.out 2>&1
eval_tap $? 198 'PublishAll' test.out

#- 199 PublishSelected
samples/cli/sample-apps Platform publishSelected \
    --namespace $AB_NAMESPACE \
    --storeId 'eGQ1TDf5xyAo2KDM' \
    > test.out 2>&1
eval_tap $? 199 'PublishSelected' test.out

#- 200 SelectAllRecords
samples/cli/sample-apps Platform selectAllRecords \
    --namespace $AB_NAMESPACE \
    --storeId '6SyGcCXG4O62tfTm' \
    > test.out 2>&1
eval_tap $? 200 'SelectAllRecords' test.out

#- 201 SelectAllRecordsByCriteria
samples/cli/sample-apps Platform selectAllRecordsByCriteria \
    --namespace $AB_NAMESPACE \
    --storeId 'mAMqrrEgDvoggrS0' \
    --action 'CREATE' \
    --itemSku 'RNq838usdLzipkoB' \
    --itemType 'EXTENSION' \
    --selected 'false' \
    --type 'VIEW' \
    --updatedAtEnd 'SlYfziDflhKsoL3L' \
    --updatedAtStart 'Kqnh2zEIfECO8gGI' \
    > test.out 2>&1
eval_tap $? 201 'SelectAllRecordsByCriteria' test.out

#- 202 GetStatistic
samples/cli/sample-apps Platform getStatistic \
    --namespace $AB_NAMESPACE \
    --storeId 'IW2WctLwKNksqWZ6' \
    --action 'UPDATE' \
    --itemSku 'sOHcU3eFR6BCP3Kl' \
    --itemType 'LOOTBOX' \
    --type 'STORE' \
    --updatedAtEnd 'UQemFdziWzbCzwYx' \
    --updatedAtStart 'e4ABJIxlcIRAdLy5' \
    > test.out 2>&1
eval_tap $? 202 'GetStatistic' test.out

#- 203 UnselectAllRecords
samples/cli/sample-apps Platform unselectAllRecords \
    --namespace $AB_NAMESPACE \
    --storeId 'hFrO6uQlUqgTXPQD' \
    > test.out 2>&1
eval_tap $? 203 'UnselectAllRecords' test.out

#- 204 SelectRecord
samples/cli/sample-apps Platform selectRecord \
    --changeId 'Z15Q7jduizcU6ow8' \
    --namespace $AB_NAMESPACE \
    --storeId 'V6GODhBtvKwEcse2' \
    > test.out 2>&1
eval_tap $? 204 'SelectRecord' test.out

#- 205 UnselectRecord
samples/cli/sample-apps Platform unselectRecord \
    --changeId 'OuFhPTnhLVuCPbkf' \
    --namespace $AB_NAMESPACE \
    --storeId 'FEcp3goeupWEAI5b' \
    > test.out 2>&1
eval_tap $? 205 'UnselectRecord' test.out

#- 206 CloneStore
samples/cli/sample-apps Platform cloneStore \
    --namespace $AB_NAMESPACE \
    --storeId '7wkCtfwsOARDSXGA' \
    --targetStoreId 'sABxH8r05ohxCaRP' \
    > test.out 2>&1
eval_tap $? 206 'CloneStore' test.out

#- 207 ExportStore
eval_tap 0 207 'ExportStore # SKIP deprecated' test.out

#- 208 QueryImportHistory
samples/cli/sample-apps Platform queryImportHistory \
    --namespace $AB_NAMESPACE \
    --storeId 'y4VlJpMEM1eS2ueU' \
    --end 'n6MgisvC1wg11gF6' \
    --limit '57' \
    --offset '92' \
    --sortBy 'HPc1TnWJzqljtNzE' \
    --start '7s2QELFVHwBrckpJ' \
    --success 'false' \
    > test.out 2>&1
eval_tap $? 208 'QueryImportHistory' test.out

#- 209 ImportStoreByCSV
samples/cli/sample-apps Platform importStoreByCSV \
    --namespace $AB_NAMESPACE \
    --storeId 'YI6PYhEyO4hQ0I6N' \
    --category 'tmp.dat' \
    --display 'tmp.dat' \
    --item 'tmp.dat' \
    --notes 'zn6NotxGF6W9dv7F' \
    --section 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 209 'ImportStoreByCSV' test.out

#- 210 QuerySubscriptions
samples/cli/sample-apps Platform querySubscriptions \
    --namespace $AB_NAMESPACE \
    --chargeStatus 'NEVER' \
    --itemId 'RF0pWAvdKbD6sS82' \
    --limit '35' \
    --offset '34' \
    --sku 'fWUoF92hRsB8saP0' \
    --status 'EXPIRED' \
    --subscribedBy 'USER' \
    --userId 'a0ZHwp7S6X6dEmqH' \
    > test.out 2>&1
eval_tap $? 210 'QuerySubscriptions' test.out

#- 211 RecurringChargeSubscription
samples/cli/sample-apps Platform recurringChargeSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'PL0paQAMIjGm7Ptg' \
    > test.out 2>&1
eval_tap $? 211 'RecurringChargeSubscription' test.out

#- 212 GetTicketDynamic
samples/cli/sample-apps Platform getTicketDynamic \
    --boothName 'pboBz9XJFaug5YUF' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 212 'GetTicketDynamic' test.out

#- 213 DecreaseTicketSale
samples/cli/sample-apps Platform decreaseTicketSale \
    --boothName 'AzvuqY441c3f4GlD' \
    --namespace $AB_NAMESPACE \
    --body '{"orderNo": "6F5eEkjcuU9ANlgp"}' \
    > test.out 2>&1
eval_tap $? 213 'DecreaseTicketSale' test.out

#- 214 GetTicketBoothID
samples/cli/sample-apps Platform getTicketBoothID \
    --boothName 'EiHeTMxW8P1FMBzE' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 214 'GetTicketBoothID' test.out

#- 215 IncreaseTicketSale
samples/cli/sample-apps Platform increaseTicketSale \
    --boothName 'OFPOFHqlB6F94LbL' \
    --namespace $AB_NAMESPACE \
    --body '{"count": 51, "orderNo": "VIzTvQCsfs1xAvjQ"}' \
    > test.out 2>&1
eval_tap $? 215 'IncreaseTicketSale' test.out

#- 216 Commit
samples/cli/sample-apps Platform commit \
    --namespace $AB_NAMESPACE \
    --body '{"actions": [{"operations": [{"creditPayload": {"balanceOrigin": "Other", "count": 36, "currencyCode": "8hba3rUQt8AsZezO", "expireAt": "1991-03-18T00:00:00Z"}, "debitPayload": {"count": 97, "currencyCode": "wHKea0rUgaG1d9uL", "walletPlatform": "Steam"}, "fulFillItemPayload": {"count": 98, "entitlementCollectionId": "cNTHgxGgFX9oAEC0", "entitlementOrigin": "Other", "itemIdentity": "jHMsgjNqUUfoSRbg", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 50, "entitlementId": "hWmka7oVXIDJxAyf"}, "type": "REVOKE_ENTITLEMENT"}, {"creditPayload": {"balanceOrigin": "Other", "count": 38, "currencyCode": "UXuTICViF3iRQKOc", "expireAt": "1998-01-11T00:00:00Z"}, "debitPayload": {"count": 54, "currencyCode": "FKLbdITr1DyFhGdr", "walletPlatform": "GooglePlay"}, "fulFillItemPayload": {"count": 70, "entitlementCollectionId": "YYGI5q32j7xeejws", "entitlementOrigin": "Twitch", "itemIdentity": "M2Z6kzuKO9F3jPX5", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 95, "entitlementId": "aGqrT6qRELrXGicZ"}, "type": "CREDIT_WALLET"}, {"creditPayload": {"balanceOrigin": "Nintendo", "count": 56, "currencyCode": "4hQlYAPlhYFvDiTs", "expireAt": "1987-05-19T00:00:00Z"}, "debitPayload": {"count": 91, "currencyCode": "5i3akuBG2wbnnYlz", "walletPlatform": "Epic"}, "fulFillItemPayload": {"count": 33, "entitlementCollectionId": "Mhl7J5PMrhZCJFcW", "entitlementOrigin": "Epic", "itemIdentity": "7lkF7UwGSiPitby5", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 35, "entitlementId": "ZgGb3TNtoCF0rlZs"}, "type": "REVOKE_ENTITLEMENT"}], "userId": "v7UWSi4XAhjpxb6H"}, {"operations": [{"creditPayload": {"balanceOrigin": "IOS", "count": 23, "currencyCode": "v9gjlfOzv1RoLxyu", "expireAt": "1990-06-03T00:00:00Z"}, "debitPayload": {"count": 72, "currencyCode": "szm5IfbRMaM3T7KG", "walletPlatform": "Steam"}, "fulFillItemPayload": {"count": 94, "entitlementCollectionId": "BJZ4ApvkXCJGXXld", "entitlementOrigin": "IOS", "itemIdentity": "filGItRqyjGL1GQv", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 71, "entitlementId": "cmY3j6kl1EJmMk77"}, "type": "FULFILL_ITEM"}, {"creditPayload": {"balanceOrigin": "Steam", "count": 50, "currencyCode": "Hhw9PMsmoY6LphIf", "expireAt": "1991-09-29T00:00:00Z"}, "debitPayload": {"count": 7, "currencyCode": "IwaI0oQOXAvRZBx0", "walletPlatform": "IOS"}, "fulFillItemPayload": {"count": 87, "entitlementCollectionId": "a9Z3Cci0gqKfknYr", "entitlementOrigin": "Twitch", "itemIdentity": "3bW2WT05fcZPvNqq", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 18, "entitlementId": "DBEXh3irtKCUNpd4"}, "type": "CREDIT_WALLET"}, {"creditPayload": {"balanceOrigin": "Steam", "count": 27, "currencyCode": "fRkEpmeomCBB4VdA", "expireAt": "1983-02-11T00:00:00Z"}, "debitPayload": {"count": 1, "currencyCode": "95afvx6N8GusBiBH", "walletPlatform": "Xbox"}, "fulFillItemPayload": {"count": 46, "entitlementCollectionId": "s4LSTDAnDvQz7kUN", "entitlementOrigin": "Xbox", "itemIdentity": "SjOY6s8IHoHeqng2", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 67, "entitlementId": "NDBVXF2BYzuNJOAc"}, "type": "CREDIT_WALLET"}], "userId": "6vXPtLzp6z2aTu2D"}, {"operations": [{"creditPayload": {"balanceOrigin": "Steam", "count": 58, "currencyCode": "tfA91DntvtS8aKCa", "expireAt": "1989-03-09T00:00:00Z"}, "debitPayload": {"count": 36, "currencyCode": "X5qQOWNmvCfk52ep", "walletPlatform": "Oculus"}, "fulFillItemPayload": {"count": 62, "entitlementCollectionId": "ciDjdPIBaMUsy6f5", "entitlementOrigin": "Playstation", "itemIdentity": "PEqW38VPwM6qZUl7", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 41, "entitlementId": "QV5Tpwu97HVqOusU"}, "type": "REVOKE_ENTITLEMENT"}, {"creditPayload": {"balanceOrigin": "Steam", "count": 48, "currencyCode": "Yja0SKG1595KqeGt", "expireAt": "1974-04-07T00:00:00Z"}, "debitPayload": {"count": 90, "currencyCode": "JlrkLJhuGQyzDl4z", "walletPlatform": "Steam"}, "fulFillItemPayload": {"count": 83, "entitlementCollectionId": "PXai96KXMHT3ak8I", "entitlementOrigin": "GooglePlay", "itemIdentity": "FR4WEYQgaTPguWdQ", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 50, "entitlementId": "UVHLEJD9gXbon1yG"}, "type": "REVOKE_ENTITLEMENT"}, {"creditPayload": {"balanceOrigin": "Xbox", "count": 60, "currencyCode": "I7Yj235F2ZsjQxd0", "expireAt": "1992-06-23T00:00:00Z"}, "debitPayload": {"count": 59, "currencyCode": "AaHz2lPLSpglYZKc", "walletPlatform": "Epic"}, "fulFillItemPayload": {"count": 50, "entitlementCollectionId": "eeBZ5SObFcB1DlFg", "entitlementOrigin": "IOS", "itemIdentity": "YWwIlOx8XBnZGCV0", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 32, "entitlementId": "zUL9SvrLx2i1i3HV"}, "type": "REVOKE_ENTITLEMENT"}], "userId": "yJo2i9qUEdsze0Qq"}], "metadata": {"JppD91DoxIQ1fUUU": {}, "Xd5ccwgnweWJaDyh": {}, "U9OkIUZvajKbfFp5": {}}, "needPreCheck": false, "transactionId": "WvFIGd5ZguP78jxe", "type": "R1X2fXMh0V8MtfQv"}' \
    > test.out 2>&1
eval_tap $? 216 'Commit' test.out

#- 217 GetTradeHistoryByCriteria
samples/cli/sample-apps Platform getTradeHistoryByCriteria \
    --namespace $AB_NAMESPACE \
    --limit '11' \
    --offset '26' \
    --status 'INIT' \
    --type 'nEcDMxCBz9mFcgzf' \
    --userId '6c46cflrtchG5LYZ' \
    > test.out 2>&1
eval_tap $? 217 'GetTradeHistoryByCriteria' test.out

#- 218 GetTradeHistoryByTransactionId
samples/cli/sample-apps Platform getTradeHistoryByTransactionId \
    --namespace $AB_NAMESPACE \
    --transactionId 'GlbVdKWzM8YgmxzR' \
    > test.out 2>&1
eval_tap $? 218 'GetTradeHistoryByTransactionId' test.out

#- 219 UnlockSteamUserAchievement
samples/cli/sample-apps Platform unlockSteamUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId '9oPtQUzcAbQxVPfa' \
    --body '{"achievements": [{"id": "Q9yU8Z2gVBVgV3Um", "value": 17}, {"id": "XqAQBJNQqERQcWSn", "value": 71}, {"id": "vZYONYjBOP2yk4dT", "value": 36}], "steamUserId": "C5zs5Mj8xKH4vetz"}' \
    > test.out 2>&1
eval_tap $? 219 'UnlockSteamUserAchievement' test.out

#- 220 GetXblUserAchievements
samples/cli/sample-apps Platform getXblUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId 'mLshVMQXJD555wfc' \
    --xboxUserId 'z3WObp8ABabD0lAp' \
    > test.out 2>&1
eval_tap $? 220 'GetXblUserAchievements' test.out

#- 221 UpdateXblUserAchievement
samples/cli/sample-apps Platform updateXblUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'VmEPPUe2aAM8Z39E' \
    --body '{"achievements": [{"id": "MByG9KBI4NiDi4nR", "percentComplete": 45}, {"id": "qOf5543TVZ6qnNRb", "percentComplete": 96}, {"id": "hgz5vjmeo3DjmdA2", "percentComplete": 33}], "serviceConfigId": "oCCBY2V9rILljoQN", "titleId": "zMSPPMgl4IUxmbPg", "xboxUserId": "KUu87HbxFlsay8fQ"}' \
    > test.out 2>&1
eval_tap $? 221 'UpdateXblUserAchievement' test.out

#- 222 AnonymizeCampaign
samples/cli/sample-apps Platform anonymizeCampaign \
    --namespace $AB_NAMESPACE \
    --userId 'b6RLRwcZsUv3dQ3W' \
    > test.out 2>&1
eval_tap $? 222 'AnonymizeCampaign' test.out

#- 223 AnonymizeEntitlement
samples/cli/sample-apps Platform anonymizeEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'i2mnBM8M65wUI14N' \
    > test.out 2>&1
eval_tap $? 223 'AnonymizeEntitlement' test.out

#- 224 AnonymizeFulfillment
samples/cli/sample-apps Platform anonymizeFulfillment \
    --namespace $AB_NAMESPACE \
    --userId 'yRdmRdjvEkHGtMYA' \
    > test.out 2>&1
eval_tap $? 224 'AnonymizeFulfillment' test.out

#- 225 AnonymizeIntegration
samples/cli/sample-apps Platform anonymizeIntegration \
    --namespace $AB_NAMESPACE \
    --userId 'Oh5KI0TLg2xBcLLY' \
    > test.out 2>&1
eval_tap $? 225 'AnonymizeIntegration' test.out

#- 226 AnonymizeOrder
samples/cli/sample-apps Platform anonymizeOrder \
    --namespace $AB_NAMESPACE \
    --userId 'W7kQdZnHORWNAdM4' \
    > test.out 2>&1
eval_tap $? 226 'AnonymizeOrder' test.out

#- 227 AnonymizePayment
samples/cli/sample-apps Platform anonymizePayment \
    --namespace $AB_NAMESPACE \
    --userId 'r1MXAhy0xrdCiNS1' \
    > test.out 2>&1
eval_tap $? 227 'AnonymizePayment' test.out

#- 228 AnonymizeRevocation
samples/cli/sample-apps Platform anonymizeRevocation \
    --namespace $AB_NAMESPACE \
    --userId 'Vg29Rc9j3pKmnMQV' \
    > test.out 2>&1
eval_tap $? 228 'AnonymizeRevocation' test.out

#- 229 AnonymizeSubscription
samples/cli/sample-apps Platform anonymizeSubscription \
    --namespace $AB_NAMESPACE \
    --userId 'w1Txx94emXxbTMht' \
    > test.out 2>&1
eval_tap $? 229 'AnonymizeSubscription' test.out

#- 230 AnonymizeWallet
samples/cli/sample-apps Platform anonymizeWallet \
    --namespace $AB_NAMESPACE \
    --userId 'bY7tBQhysDTFDRWI' \
    > test.out 2>&1
eval_tap $? 230 'AnonymizeWallet' test.out

#- 231 GetUserDLCByPlatform
samples/cli/sample-apps Platform getUserDLCByPlatform \
    --namespace $AB_NAMESPACE \
    --userId 'PqHV4Lh7TFsXYr1m' \
    --type 'STEAM' \
    > test.out 2>&1
eval_tap $? 231 'GetUserDLCByPlatform' test.out

#- 232 GetUserDLC
samples/cli/sample-apps Platform getUserDLC \
    --namespace $AB_NAMESPACE \
    --userId 'p57XKocN2vTtiLay' \
    --type 'OCULUS' \
    > test.out 2>&1
eval_tap $? 232 'GetUserDLC' test.out

#- 233 QueryUserEntitlements
samples/cli/sample-apps Platform queryUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'dAXIBGSWCNLr3JNG' \
    --activeOnly 'true' \
    --appType 'DEMO' \
    --collectionId 'uUKpOoFsunkI1gFm' \
    --entitlementClazz 'APP' \
    --entitlementName 'l0Zk5bkVCrECRzND' \
    --features '["p1rDVPhKZmFP0Ewq", "hsxi8xop8uU6sIVK", "fW2zEh3kYJGhG4vi"]' \
    --fuzzyMatchName 'true' \
    --itemId '["FjFEkmYhe1JFyNuK", "0YHap0V5ZnCgVkGq", "inbH5JxoK0eLf0S9"]' \
    --limit '77' \
    --offset '41' \
    --origin 'Oculus' \
    > test.out 2>&1
eval_tap $? 233 'QueryUserEntitlements' test.out

#- 234 GrantUserEntitlement
samples/cli/sample-apps Platform grantUserEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'dRq02P6gwCiem46K' \
    --body '[{"collectionId": "GFuGq8OdYnNxWODL", "endDate": "1976-01-13T00:00:00Z", "grantedCode": "tBK5Sk6g5Q0dkhVt", "itemId": "8li70zIM4fz74USJ", "itemNamespace": "KbWKT5aVV3TzGwjw", "language": "qJ", "origin": "Steam", "quantity": 16, "region": "mWOMz4IZ1wVzvtB0", "source": "PROMOTION", "startDate": "1971-12-23T00:00:00Z", "storeId": "iBg2LBZKNIHpSDWH"}, {"collectionId": "3fQQkUZcfononhZF", "endDate": "1988-09-18T00:00:00Z", "grantedCode": "BaiypiuQJaalfW7b", "itemId": "h57yf96zeAF9HtT7", "itemNamespace": "p3EcnXXF6JG9Brpp", "language": "nhu-oRNb", "origin": "Epic", "quantity": 58, "region": "lPqYlwVHUgZMcrUc", "source": "ACHIEVEMENT", "startDate": "1999-05-23T00:00:00Z", "storeId": "CHpODKz196iiTA9N"}, {"collectionId": "fbHnBE0YhQCiv9Em", "endDate": "1999-05-06T00:00:00Z", "grantedCode": "cL0YSBIBsiSSKdLb", "itemId": "juPx92VDtALyt0iB", "itemNamespace": "3Nlb8GKXnIgYqsoX", "language": "zz_HRQW_Hn", "origin": "Steam", "quantity": 34, "region": "0R6oWMHiNMpLFb4t", "source": "ACHIEVEMENT", "startDate": "1988-11-24T00:00:00Z", "storeId": "Ujnss7wXJaIdXqDs"}]' \
    > test.out 2>&1
eval_tap $? 234 'GrantUserEntitlement' test.out

#- 235 GetUserAppEntitlementByAppId
samples/cli/sample-apps Platform getUserAppEntitlementByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'uh94pfIjiT9u9ZM9' \
    --activeOnly 'false' \
    --appId 'blpTtrhOcIsTZ1mZ' \
    > test.out 2>&1
eval_tap $? 235 'GetUserAppEntitlementByAppId' test.out

#- 236 QueryUserEntitlementsByAppType
samples/cli/sample-apps Platform queryUserEntitlementsByAppType \
    --namespace $AB_NAMESPACE \
    --userId '2aguaGWffJZdUjwf' \
    --activeOnly 'false' \
    --limit '47' \
    --offset '15' \
    --appType 'DLC' \
    > test.out 2>&1
eval_tap $? 236 'QueryUserEntitlementsByAppType' test.out

#- 237 GetUserEntitlementByItemId
samples/cli/sample-apps Platform getUserEntitlementByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'RIYVfHcSRqUl8vey' \
    --activeOnly 'false' \
    --entitlementClazz 'APP' \
    --platform 'zyCjbyimkcpWidpb' \
    --itemId 'pnPvlsd6Oav7PbBw' \
    > test.out 2>&1
eval_tap $? 237 'GetUserEntitlementByItemId' test.out

#- 238 GetUserActiveEntitlementsByItemIds
samples/cli/sample-apps Platform getUserActiveEntitlementsByItemIds \
    --namespace $AB_NAMESPACE \
    --userId '7zKwhfnbZggy3LaZ' \
    --ids '["BHolITXWPZ6EdkTI", "uoQe8B47NmC0jiOk", "tL4VKHHG35e3UIhA"]' \
    --platform 'Y0ENtr8ADCcHeicy' \
    > test.out 2>&1
eval_tap $? 238 'GetUserActiveEntitlementsByItemIds' test.out

#- 239 GetUserEntitlementBySku
samples/cli/sample-apps Platform getUserEntitlementBySku \
    --namespace $AB_NAMESPACE \
    --userId '4TISPitkV0lUMYbh' \
    --activeOnly 'true' \
    --entitlementClazz 'SUBSCRIPTION' \
    --platform 'BXa866Z4Dg8Uxdl3' \
    --sku 'BVaKpJ9YRVWuCijF' \
    > test.out 2>&1
eval_tap $? 239 'GetUserEntitlementBySku' test.out

#- 240 ExistsAnyUserActiveEntitlement
samples/cli/sample-apps Platform existsAnyUserActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'NFNcmahMBiiBhgu9' \
    --appIds '["4gdmbxwdwRDDJSXJ", "dDsTJUeKWb9OyEIK", "mLe9ovvWUErMdu1V"]' \
    --itemIds '["PPgW25qVnwdsrakd", "6pU4txLCL5NWjwvW", "adSQJu6bDZ2jtNNG"]' \
    --platform 'oIMoOkjYMQP5TmWb' \
    --skus '["no8i2IRf9AvFeleX", "hxCI2cIfBYjmDrs4", "0L7fPUK8wLo1zxaT"]' \
    > test.out 2>&1
eval_tap $? 240 'ExistsAnyUserActiveEntitlement' test.out

#- 241 ExistsAnyUserActiveEntitlementByItemIds
samples/cli/sample-apps Platform existsAnyUserActiveEntitlementByItemIds \
    --namespace $AB_NAMESPACE \
    --userId '1qV6i7oSOHoZnstk' \
    --platform 'bIJ6oKK9ygjcW19j' \
    --itemIds '["hTNyGXU8VXEmg9F7", "IF1WiFO8lIzplGd2", "t2DAS2nnQ7dhGRHq"]' \
    > test.out 2>&1
eval_tap $? 241 'ExistsAnyUserActiveEntitlementByItemIds' test.out

#- 242 GetUserAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform getUserAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'Xts1vsaHHiM3Tpkd' \
    --appId 'G1cwva3TybgqNSZ7' \
    > test.out 2>&1
eval_tap $? 242 'GetUserAppEntitlementOwnershipByAppId' test.out

#- 243 GetUserEntitlementOwnershipByItemId
samples/cli/sample-apps Platform getUserEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'OQxNhaDYickTeDUM' \
    --entitlementClazz 'MEDIA' \
    --platform 'MgR6TZ8nFoIBlg5I' \
    --itemId 'dGmyryPz8vyNyEc3' \
    > test.out 2>&1
eval_tap $? 243 'GetUserEntitlementOwnershipByItemId' test.out

#- 244 GetUserEntitlementOwnershipByItemIds
samples/cli/sample-apps Platform getUserEntitlementOwnershipByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'XUGv9PNwS3jWQ7Al' \
    --ids '["WzbI2mw7ET9gmTdF", "Un2n9ayDeQIcwkgZ", "ogZ0RaNhf3T5ZiMc"]' \
    --platform 'gc3SplICpa7QkmvP' \
    > test.out 2>&1
eval_tap $? 244 'GetUserEntitlementOwnershipByItemIds' test.out

#- 245 GetUserEntitlementOwnershipBySku
samples/cli/sample-apps Platform getUserEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --userId 'VLpFrbBGD2obPulj' \
    --entitlementClazz 'LOOTBOX' \
    --platform 'Un3LnrsV3IYfPbfc' \
    --sku '6PbiHoWRxF1eM8sy' \
    > test.out 2>&1
eval_tap $? 245 'GetUserEntitlementOwnershipBySku' test.out

#- 246 RevokeAllEntitlements
samples/cli/sample-apps Platform revokeAllEntitlements \
    --namespace $AB_NAMESPACE \
    --userId '7EbGcDSOb0Gr4jbi' \
    > test.out 2>&1
eval_tap $? 246 'RevokeAllEntitlements' test.out

#- 247 RevokeUserEntitlements
samples/cli/sample-apps Platform revokeUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'JhYnb51v7fWDIkqI' \
    --entitlementIds 'f4Zl0M8ydR7ZykDj' \
    > test.out 2>&1
eval_tap $? 247 'RevokeUserEntitlements' test.out

#- 248 GetUserEntitlement
samples/cli/sample-apps Platform getUserEntitlement \
    --entitlementId 'r1OFQMfrTrdDHLVw' \
    --namespace $AB_NAMESPACE \
    --userId 'o68I7jUSFm6g5SMZ' \
    > test.out 2>&1
eval_tap $? 248 'GetUserEntitlement' test.out

#- 249 UpdateUserEntitlement
samples/cli/sample-apps Platform updateUserEntitlement \
    --entitlementId 'xGt9elZseAYP9Y9I' \
    --namespace $AB_NAMESPACE \
    --userId 'iy9nXEkKYPRPMpH0' \
    --body '{"collectionId": "ArZyNWXfAWswWD2E", "endDate": "1985-05-13T00:00:00Z", "nullFieldList": ["KraXgYuggp75uw7E", "W5Cu3lOLJCYjL5B5", "5g579XdiHG9ftYz4"], "origin": "Other", "reason": "xqLbAJKGDRaGdEbm", "startDate": "1977-11-04T00:00:00Z", "status": "SOLD", "useCount": 12}' \
    > test.out 2>&1
eval_tap $? 249 'UpdateUserEntitlement' test.out

#- 250 ConsumeUserEntitlement
samples/cli/sample-apps Platform consumeUserEntitlement \
    --entitlementId 'qpciyehtWccPpOvf' \
    --namespace $AB_NAMESPACE \
    --userId 'qGzzVhpAH85ow8aX' \
    --body '{"options": ["0BcBOOeJmUGyrTcP", "TPGUcxFvX62BThMO", "fynbc8NKxkxHcXBY"], "platform": "KOUMtCFH72HUN8Hb", "requestId": "fmhwIwwgoWH7Bj0F", "useCount": 51}' \
    > test.out 2>&1
eval_tap $? 250 'ConsumeUserEntitlement' test.out

#- 251 DisableUserEntitlement
samples/cli/sample-apps Platform disableUserEntitlement \
    --entitlementId 'Hmg5lW6PGC8hAnqE' \
    --namespace $AB_NAMESPACE \
    --userId 'V68USvSjJcnRflKo' \
    > test.out 2>&1
eval_tap $? 251 'DisableUserEntitlement' test.out

#- 252 EnableUserEntitlement
samples/cli/sample-apps Platform enableUserEntitlement \
    --entitlementId 'LbhyesKaEvss66QV' \
    --namespace $AB_NAMESPACE \
    --userId 'xN0MWC3YeC70sBm2' \
    > test.out 2>&1
eval_tap $? 252 'EnableUserEntitlement' test.out

#- 253 GetUserEntitlementHistories
samples/cli/sample-apps Platform getUserEntitlementHistories \
    --entitlementId 'tjfDVfueTJgAbZXp' \
    --namespace $AB_NAMESPACE \
    --userId 'VLT4Qm4WlLVj1mJL' \
    > test.out 2>&1
eval_tap $? 253 'GetUserEntitlementHistories' test.out

#- 254 RevokeUserEntitlement
samples/cli/sample-apps Platform revokeUserEntitlement \
    --entitlementId 'CauYCxxsQh5PPap6' \
    --namespace $AB_NAMESPACE \
    --userId 'iu3mAVh9N3uMEIVJ' \
    > test.out 2>&1
eval_tap $? 254 'RevokeUserEntitlement' test.out

#- 255 RevokeUserEntitlementByUseCount
samples/cli/sample-apps Platform revokeUserEntitlementByUseCount \
    --entitlementId '22o43AFFk2kNgcXh' \
    --namespace $AB_NAMESPACE \
    --userId 'tD3VnqnbVJiWQMMc' \
    --body '{"reason": "OCf8ZTgZ5AqF8xc2", "useCount": 50}' \
    > test.out 2>&1
eval_tap $? 255 'RevokeUserEntitlementByUseCount' test.out

#- 256 PreCheckRevokeUserEntitlementByUseCount
samples/cli/sample-apps Platform preCheckRevokeUserEntitlementByUseCount \
    --entitlementId 'pxMzjf5NVlxfVjFg' \
    --namespace $AB_NAMESPACE \
    --userId 'xhZYG4hbtwtgPo6F' \
    --quantity '98' \
    > test.out 2>&1
eval_tap $? 256 'PreCheckRevokeUserEntitlementByUseCount' test.out

#- 257 RevokeUseCount
eval_tap 0 257 'RevokeUseCount # SKIP deprecated' test.out

#- 258 SellUserEntitlement
samples/cli/sample-apps Platform sellUserEntitlement \
    --entitlementId 'M1KD7cc9TIogmbln' \
    --namespace $AB_NAMESPACE \
    --userId 'QrHNM1xATtMwrQvT' \
    --body '{"platform": "skxOIIKBy7aX4kVX", "requestId": "XL9f4tFPt2FAj3RV", "useCount": 79}' \
    > test.out 2>&1
eval_tap $? 258 'SellUserEntitlement' test.out

#- 259 FulfillItem
samples/cli/sample-apps Platform fulfillItem \
    --namespace $AB_NAMESPACE \
    --userId 'qHtrSLt8BqJ355yh' \
    --body '{"duration": 16, "endDate": "1980-08-10T00:00:00Z", "entitlementCollectionId": "4eOVHQfybOEKUcZu", "entitlementOrigin": "Oculus", "itemId": "t5cxRP45UWgfVzPa", "itemSku": "LFJl4ZtrjP3dtkeB", "language": "Ivymkr5zrCIrXo6w", "metadata": {"PmEnW2oO9qgbyZzs": {}, "qmZtVVYRz9KEljyj": {}, "6lrT9sJ8YrPfKUWt": {}}, "order": {"currency": {"currencyCode": "MzlV8AwFCDAuycc7", "currencySymbol": "tJ12FbQL65ODbi1p", "currencyType": "VIRTUAL", "decimals": 96, "namespace": "vDHxiGow7ieSWkbc"}, "ext": {"7FRsYUcO8bNNpyWe": {}, "2DgIrNCHkGGS807k": {}, "GqZ8ARsVI5IzkHFf": {}}, "free": true}, "orderNo": "lUX3bAWIWiQxJ7el", "origin": "GooglePlay", "overrideBundleItemQty": {"MC4uA1OE4AUj6Mvi": 57, "pMGcPkG2Q1rhCbmw": 97, "OPFb5SsF8ESevaIW": 47}, "quantity": 88, "region": "2at7TMhWmkOqVpoS", "source": "OTHER", "startDate": "1988-01-29T00:00:00Z", "storeId": "Wz2vdTDSkWw4Ixlh"}' \
    > test.out 2>&1
eval_tap $? 259 'FulfillItem' test.out

#- 260 RedeemCode
samples/cli/sample-apps Platform redeemCode \
    --namespace $AB_NAMESPACE \
    --userId 'ex8Gb62bNVx8HW9o' \
    --body '{"code": "m2B4o7XhnJImds6F", "language": "Xs", "region": "wnbk8OyL0zgcwpdL"}' \
    > test.out 2>&1
eval_tap $? 260 'RedeemCode' test.out

#- 261 PreCheckFulfillItem
samples/cli/sample-apps Platform preCheckFulfillItem \
    --namespace $AB_NAMESPACE \
    --userId 'PlHGi4W6MzRw8EeA' \
    --body '{"itemId": "e8YdzMOGI8NSas9v", "itemSku": "qtXL67rNePIsQY5M", "quantity": 0}' \
    > test.out 2>&1
eval_tap $? 261 'PreCheckFulfillItem' test.out

#- 262 FulfillRewards
samples/cli/sample-apps Platform fulfillRewards \
    --namespace $AB_NAMESPACE \
    --userId '3bEMgrKIhIRBGUrJ' \
    --body '{"entitlementCollectionId": "M6tWmrsYymimoyJU", "entitlementOrigin": "Steam", "metadata": {"EFrybAcT2QPCxK8g": {}, "fnsXAmnUW2P63SKy": {}, "jFwhIaFTKQOowTl9": {}}, "origin": "System", "rewards": [{"currency": {"currencyCode": "QsekrHwARVVXbrnV", "namespace": "fG06RPQZ060FH41P"}, "item": {"itemId": "FLauRRewpMhzLBl1", "itemSku": "mm6JTWE3Asvkiliu", "itemType": "4Pj0d0ensG8UPPhG"}, "quantity": 1, "type": "ITEM"}, {"currency": {"currencyCode": "AC4oNeyELK72AY9z", "namespace": "mOIexJcC85WLFoxC"}, "item": {"itemId": "S4qFHpSG1jbTE7nJ", "itemSku": "xHRL3BCJLhNEYOo3", "itemType": "hJrSOwrXP7zOhKvO"}, "quantity": 96, "type": "CURRENCY"}, {"currency": {"currencyCode": "qm8EIh7e616zZZm3", "namespace": "UNaMHNaNgNK26ocC"}, "item": {"itemId": "WLYUdHG03vB5PJ9B", "itemSku": "0MO4sF6KidyAbLBB", "itemType": "gD5UlBAJQdsc96P5"}, "quantity": 30, "type": "CURRENCY"}], "source": "IAP_CHARGEBACK_REVERSED", "transactionId": "RMD5szzu3qEr6L5W"}' \
    > test.out 2>&1
eval_tap $? 262 'FulfillRewards' test.out

#- 263 QueryUserIAPOrders
samples/cli/sample-apps Platform queryUserIAPOrders \
    --namespace $AB_NAMESPACE \
    --userId '4t6Geu96s47jcwDH' \
    --endTime 'SZZjlrdXyTy7HLeu' \
    --limit '49' \
    --offset '41' \
    --productId 'PQMSFjf340vIuK1Z' \
    --startTime '1cOUICZ7zbNsdRfx' \
    --status 'FAILED' \
    --type 'STEAM' \
    > test.out 2>&1
eval_tap $? 263 'QueryUserIAPOrders' test.out

#- 264 QueryAllUserIAPOrders
samples/cli/sample-apps Platform queryAllUserIAPOrders \
    --namespace $AB_NAMESPACE \
    --userId 'KTQYSWuxvyYroGvu' \
    > test.out 2>&1
eval_tap $? 264 'QueryAllUserIAPOrders' test.out

#- 265 QueryUserIAPConsumeHistory
samples/cli/sample-apps Platform queryUserIAPConsumeHistory \
    --namespace $AB_NAMESPACE \
    --userId 'YdnLCb2GTouAVY3I' \
    --endTime 'NgNZ5FILDadRsfab' \
    --limit '29' \
    --offset '81' \
    --startTime 'uyHK1sbTRGcUPP62' \
    --status 'PENDING' \
    --type 'PLAYSTATION' \
    > test.out 2>&1
eval_tap $? 265 'QueryUserIAPConsumeHistory' test.out

#- 266 MockFulfillIAPItem
samples/cli/sample-apps Platform mockFulfillIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'usgzFKN9XoQFLFku' \
    --body '{"itemIdentityType": "ITEM_SKU", "language": "CTKI-RJCd", "productId": "ZRbxT5gkO8vbrvhk", "region": "nQEZ59wleViAxuRX", "transactionId": "6f2KpxF91f9nSeCQ", "type": "OCULUS"}' \
    > test.out 2>&1
eval_tap $? 266 'MockFulfillIAPItem' test.out

#- 267 QueryUserOrders
samples/cli/sample-apps Platform queryUserOrders \
    --namespace $AB_NAMESPACE \
    --userId 'TGq9Ny5pGC5BKQ8F' \
    --itemId 'rHjNQaah3T7ECyvU' \
    --limit '17' \
    --offset '13' \
    --status 'REFUND_FAILED' \
    > test.out 2>&1
eval_tap $? 267 'QueryUserOrders' test.out

#- 268 AdminCreateUserOrder
samples/cli/sample-apps Platform adminCreateUserOrder \
    --namespace $AB_NAMESPACE \
    --userId 'HpeGNpVOZKO8aK1P' \
    --body '{"currencyCode": "6VwdSEyDYVSCnGBh", "currencyNamespace": "32jqXSUfqPFhm3W1", "discountedPrice": 6, "entitlementPlatform": "Xbox", "ext": {"zDaat33HFoPdFqPc": {}, "u7lrph6gUuHifiH2": {}, "oiQx1UyxUhy6l0Dz": {}}, "itemId": "1W6ZZwB0lwFX7yOz", "language": "MARC2qEYciVJU8cd", "options": {"skipPriceValidation": false}, "platform": "Epic", "price": 16, "quantity": 68, "region": "bpjQLhYXdJCsfUGh", "returnUrl": "BBZSAoTZpZkijXIu", "sandbox": true, "sectionId": "G94jBuXMx681Gruw"}' \
    > test.out 2>&1
eval_tap $? 268 'AdminCreateUserOrder' test.out

#- 269 CountOfPurchasedItem
samples/cli/sample-apps Platform countOfPurchasedItem \
    --namespace $AB_NAMESPACE \
    --userId 'dar8T9VOcfovixCc' \
    --itemId 'RFw920l0p1OeYmqc' \
    > test.out 2>&1
eval_tap $? 269 'CountOfPurchasedItem' test.out

#- 270 GetUserOrder
samples/cli/sample-apps Platform getUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'AYTXjXDBQq5cjuMH' \
    --userId 'xEf928CYItOZhpQT' \
    > test.out 2>&1
eval_tap $? 270 'GetUserOrder' test.out

#- 271 UpdateUserOrderStatus
samples/cli/sample-apps Platform updateUserOrderStatus \
    --namespace $AB_NAMESPACE \
    --orderNo 'fHl53eSPPAf4iwtR' \
    --userId 'TNCVDJhh7jQMGRkI' \
    --body '{"status": "FULFILLED", "statusReason": "0H8dmyLyGHCTI4Pf"}' \
    > test.out 2>&1
eval_tap $? 271 'UpdateUserOrderStatus' test.out

#- 272 FulfillUserOrder
samples/cli/sample-apps Platform fulfillUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'kh1iO0FnyZ4LHXal' \
    --userId 'pgCqSJPvu33XzEtR' \
    > test.out 2>&1
eval_tap $? 272 'FulfillUserOrder' test.out

#- 273 GetUserOrderGrant
samples/cli/sample-apps Platform getUserOrderGrant \
    --namespace $AB_NAMESPACE \
    --orderNo 'rcywP08eeyoC8qW1' \
    --userId 'NvJLBovRFCd3mMLZ' \
    > test.out 2>&1
eval_tap $? 273 'GetUserOrderGrant' test.out

#- 274 GetUserOrderHistories
samples/cli/sample-apps Platform getUserOrderHistories \
    --namespace $AB_NAMESPACE \
    --orderNo 'cewr6i0mBAgEsPQo' \
    --userId 'wa1HaxlDierlMPsb' \
    > test.out 2>&1
eval_tap $? 274 'GetUserOrderHistories' test.out

#- 275 ProcessUserOrderNotification
samples/cli/sample-apps Platform processUserOrderNotification \
    --namespace $AB_NAMESPACE \
    --orderNo 'al3YNPFcVJcuQwuz' \
    --userId 'parhYnzJ568iQKGo' \
    --body '{"additionalData": {"cardSummary": "QZ15nXob288eYD5l"}, "authorisedTime": "1987-11-20T00:00:00Z", "chargebackReversedTime": "1998-06-14T00:00:00Z", "chargebackTime": "1998-03-06T00:00:00Z", "chargedTime": "1985-02-14T00:00:00Z", "createdTime": "1972-11-19T00:00:00Z", "currency": {"currencyCode": "2PKJJ7KLzLilV6Xu", "currencySymbol": "qKwhr33RAig1jput", "currencyType": "REAL", "decimals": 18, "namespace": "vNd8nj8pNJRyukvC"}, "customParameters": {"LpBUJACB0AFNm4gI": {}, "i9Z4MkjSyxNippld": {}, "Rk6DuhvlPwzweOi1": {}}, "extOrderNo": "K7flaQL2Oom2WkgD", "extTxId": "u3kIIovdYGzc1o7X", "extUserId": "McoOnPhs2MKASI01", "issuedAt": "1998-03-24T00:00:00Z", "metadata": {"fyRP5nyQBUNeT2t5": "ouWZuSGMwsgLmqZ8", "MROC0Yb2mxMLK1Oc": "h365t6qTc4EOLigp", "uVtHVlPOJJUhZ5SR": "4Gr3aTUlr5ionEfJ"}, "namespace": "YrCG4EepgvtZRusy", "nonceStr": "u1gEiuB1oIi37xE6", "paymentMethod": "r0DgJqAasI3euAjn", "paymentMethodFee": 68, "paymentOrderNo": "YKnbiJ7eWzVM4MSC", "paymentProvider": "CHECKOUT", "paymentProviderFee": 38, "paymentStationUrl": "D1306p5DBgfYWMcg", "price": 27, "refundedTime": "1999-04-12T00:00:00Z", "salesTax": 13, "sandbox": false, "sku": "5jd6EIXBNJ2VP9FZ", "status": "REQUEST_FOR_INFORMATION", "statusReason": "JOu05eo08Q65m2tC", "subscriptionId": "Foq24HjM814vq2LX", "subtotalPrice": 97, "targetNamespace": "zEh8GrPmCTqqPXbn", "targetUserId": "dyaDSdzVTcVZOirY", "tax": 16, "totalPrice": 15, "totalTax": 90, "txEndTime": "1973-04-08T00:00:00Z", "type": "p0AOA5ZLnn6dqE8r", "userId": "Y00yxfnmmA99IBPD", "vat": 70}' \
    > test.out 2>&1
eval_tap $? 275 'ProcessUserOrderNotification' test.out

#- 276 DownloadUserOrderReceipt
samples/cli/sample-apps Platform downloadUserOrderReceipt \
    --namespace $AB_NAMESPACE \
    --orderNo '3SQibK8ivwIiirWl' \
    --userId 'WpfIPTzgguispTQv' \
    > test.out 2>&1
eval_tap $? 276 'DownloadUserOrderReceipt' test.out

#- 277 CreateUserPaymentOrder
samples/cli/sample-apps Platform createUserPaymentOrder \
    --namespace $AB_NAMESPACE \
    --userId 'XHmIdhafSRmMISro' \
    --body '{"currencyCode": "44tb5F0t8b0pVkkD", "currencyNamespace": "2JLfO0JjRZMHB84m", "customParameters": {"DadWgvGthticH6OC": {}, "qnxs7bHVkgxFxC0S": {}, "EeHqdUDtaNqHvYhg": {}}, "description": "NTKjVz6PkxOYkhOz", "extOrderNo": "XCKlIR6m7GI2UcNO", "extUserId": "0yjTIXTjoQvXPdnH", "itemType": "MEDIA", "language": "Rg_Ao", "metadata": {"1gadhK73G50hAmWc": "X5YSWl8r3IiiP8nW", "nJzo9k3YAGEWihB5": "QHm2pAlliHoPyMDR", "kA42ExzWdugLbG9s": "qhGQdJFmOxXV5E2G"}, "notifyUrl": "85XCUY078emJu9Un", "omitNotification": false, "platform": "Y9mxiCIh6m4yZiN1", "price": 90, "recurringPaymentOrderNo": "7aapdLiAdhDquDIc", "region": "07yQahVOEwQ8rxV4", "returnUrl": "SSVUlz6eTleeXnQ2", "sandbox": true, "sku": "PczcTCsN8OxO8UIo", "subscriptionId": "vUirnkZcnUhnv3ah", "title": "ErmLIHgsvv5uE4fD"}' \
    > test.out 2>&1
eval_tap $? 277 'CreateUserPaymentOrder' test.out

#- 278 RefundUserPaymentOrder
samples/cli/sample-apps Platform refundUserPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'RRTdSSeGILmdN6ff' \
    --userId 'A0QHMxWF4cybg4ZO' \
    --body '{"description": "F12SpAalWimETWBR"}' \
    > test.out 2>&1
eval_tap $? 278 'RefundUserPaymentOrder' test.out

#- 279 ApplyUserRedemption
samples/cli/sample-apps Platform applyUserRedemption \
    --namespace $AB_NAMESPACE \
    --userId 'IwAwpjYov8ws5tGw' \
    --body '{"code": "9LC5vSvyD1uznyW2", "orderNo": "0S0Pu9nSsLyJhxpI"}' \
    > test.out 2>&1
eval_tap $? 279 'ApplyUserRedemption' test.out

#- 280 DoRevocation
samples/cli/sample-apps Platform doRevocation \
    --namespace $AB_NAMESPACE \
    --userId 'gyLIev6LWMT7KxPe' \
    --body '{"meta": {"yRV7tF8QakP6Peor": {}, "cXn2J2LwpwxTPMQM": {}, "MEHwd1nPd4b6UpHh": {}}, "revokeEntries": [{"currency": {"balanceOrigin": "Other", "currencyCode": "eU8q6H6sji8ddC96", "namespace": "r2LjAwtGAB4H0EoS"}, "entitlement": {"entitlementId": "uCmPr8n8xjraYPHg"}, "item": {"entitlementOrigin": "GooglePlay", "itemIdentity": "CU17TtnjfRquNJl4", "itemIdentityType": "ITEM_ID", "origin": "Twitch"}, "quantity": 32, "type": "ITEM"}, {"currency": {"balanceOrigin": "Nintendo", "currencyCode": "t3bhni5HsIIvIt65", "namespace": "Td6vSQIEdDKrZ8Ti"}, "entitlement": {"entitlementId": "z25bEBC8okREcrDV"}, "item": {"entitlementOrigin": "IOS", "itemIdentity": "8NdDEHA8aL9mkiwy", "itemIdentityType": "ITEM_SKU", "origin": "Other"}, "quantity": 42, "type": "ENTITLEMENT"}, {"currency": {"balanceOrigin": "Epic", "currencyCode": "vK1hblX9GpcpxLfn", "namespace": "VF2V9Oml1J0DFmMQ"}, "entitlement": {"entitlementId": "xXTHQM7ptB7X8wd2"}, "item": {"entitlementOrigin": "IOS", "itemIdentity": "8YsRM5ccWqXg8IdQ", "itemIdentityType": "ITEM_ID", "origin": "Other"}, "quantity": 58, "type": "ITEM"}], "source": "DLC", "transactionId": "fwdNsMmABEwqIKz8"}' \
    > test.out 2>&1
eval_tap $? 280 'DoRevocation' test.out

#- 281 RegisterXblSessions
samples/cli/sample-apps Platform registerXblSessions \
    --namespace $AB_NAMESPACE \
    --userId 'ZQi0OJ7vpJPdW9wD' \
    --body '{"gameSessionId": "ESjEgCAhCHMicXLM", "payload": {"EhYq7Qs2N0YRTr36": {}, "sII5yK42RrjmJgJ2": {}, "rLOFOTTflG5gkDBL": {}}, "scid": "4lZLaW8zm0fwxUNo", "sessionTemplateName": "eTZ60LY82kUX7EMR"}' \
    > test.out 2>&1
eval_tap $? 281 'RegisterXblSessions' test.out

#- 282 QueryUserSubscriptions
samples/cli/sample-apps Platform queryUserSubscriptions \
    --namespace $AB_NAMESPACE \
    --userId 'cpy0FhkKyoylkyg5' \
    --chargeStatus 'RECURRING_CHARGING' \
    --itemId 'fRHCCX6Lj8SJ0qa0' \
    --limit '29' \
    --offset '42' \
    --sku 'IHv1acKwjtDhRiSF' \
    --status 'EXPIRED' \
    --subscribedBy 'PLATFORM' \
    > test.out 2>&1
eval_tap $? 282 'QueryUserSubscriptions' test.out

#- 283 GetUserSubscriptionActivities
samples/cli/sample-apps Platform getUserSubscriptionActivities \
    --namespace $AB_NAMESPACE \
    --userId 'OpxDS8oZ9EK6kJ3m' \
    --excludeSystem 'true' \
    --limit '71' \
    --offset '24' \
    --subscriptionId 'XdPRfZ3ypM4lOVyO' \
    > test.out 2>&1
eval_tap $? 283 'GetUserSubscriptionActivities' test.out

#- 284 PlatformSubscribeSubscription
samples/cli/sample-apps Platform platformSubscribeSubscription \
    --namespace $AB_NAMESPACE \
    --userId 'rOUlE0GytK76cIut' \
    --body '{"grantDays": 78, "itemId": "kmAvjdXirA5Qcq45", "language": "inV5DbB0BGBxdlob", "reason": "k57nM8J3RRMvySYh", "region": "HNIZkr2j7m6vTVmN", "source": "OAR4fBMefSEjiBt2"}' \
    > test.out 2>&1
eval_tap $? 284 'PlatformSubscribeSubscription' test.out

#- 285 CheckUserSubscriptionSubscribableByItemId
samples/cli/sample-apps Platform checkUserSubscriptionSubscribableByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'a8OSVAQlp17jGZZJ' \
    --itemId 'vlOOn2e4MHi1ALNG' \
    > test.out 2>&1
eval_tap $? 285 'CheckUserSubscriptionSubscribableByItemId' test.out

#- 286 GetUserSubscription
samples/cli/sample-apps Platform getUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId '2TpEqMVMWEZEttfj' \
    --userId 'bIg0rpid86evQSoP' \
    > test.out 2>&1
eval_tap $? 286 'GetUserSubscription' test.out

#- 287 DeleteUserSubscription
samples/cli/sample-apps Platform deleteUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'RQ7URianLMR8xizS' \
    --userId 'C9XXY2hRmjoKmOjU' \
    > test.out 2>&1
eval_tap $? 287 'DeleteUserSubscription' test.out

#- 288 CancelSubscription
samples/cli/sample-apps Platform cancelSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId '1R5wanStRWUNyDhO' \
    --userId 'LUnGk9nCISYPYQcL' \
    --force 'true' \
    --body '{"immediate": true, "reason": "trgkb38c08QSQG3C"}' \
    > test.out 2>&1
eval_tap $? 288 'CancelSubscription' test.out

#- 289 GrantDaysToSubscription
samples/cli/sample-apps Platform grantDaysToSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'LndtLvEnTaVQAKyj' \
    --userId 'WSyoxxjP0P5XNQNY' \
    --body '{"grantDays": 54, "reason": "HyGiaEEdpubt4fkn"}' \
    > test.out 2>&1
eval_tap $? 289 'GrantDaysToSubscription' test.out

#- 290 GetUserSubscriptionBillingHistories
samples/cli/sample-apps Platform getUserSubscriptionBillingHistories \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'CORXycvr5yoYUhFX' \
    --userId 'YLEq9Wa5LVrvceSf' \
    --excludeFree 'true' \
    --limit '97' \
    --offset '4' \
    > test.out 2>&1
eval_tap $? 290 'GetUserSubscriptionBillingHistories' test.out

#- 291 ProcessUserSubscriptionNotification
samples/cli/sample-apps Platform processUserSubscriptionNotification \
    --namespace $AB_NAMESPACE \
    --subscriptionId '4Ge8V5RWZB8hxcdF' \
    --userId 'Vc1vxSoQgWqGurd6' \
    --body '{"additionalData": {"cardSummary": "bHYxbEs2JFHf2YFw"}, "authorisedTime": "1978-12-29T00:00:00Z", "chargebackReversedTime": "1975-11-30T00:00:00Z", "chargebackTime": "1984-05-27T00:00:00Z", "chargedTime": "1997-04-17T00:00:00Z", "createdTime": "1972-04-20T00:00:00Z", "currency": {"currencyCode": "YpOfsFperIwhMII0", "currencySymbol": "wCBuZ8UMBLAHdk9R", "currencyType": "REAL", "decimals": 100, "namespace": "K31GybaY6t9R480W"}, "customParameters": {"Ui8SQqPmwct9kJo6": {}, "NBYz3FtM6AtGzqIb": {}, "6nQ2DLP8Fk6evoF9": {}}, "extOrderNo": "eHc6yUvyBRoPOtXv", "extTxId": "XhhSU0qcFRhJOl4I", "extUserId": "rSA0oGuZTYat56QK", "issuedAt": "1996-06-07T00:00:00Z", "metadata": {"VviO6iYxSzlUscuT": "3BvY79S9JnanxFUG", "JeeOQ7txthufJOGC": "C2kJLioQyzR82oPN", "OOK29f9q6CWKscSi": "8iWz9UBkEh4F5nKP"}, "namespace": "nWrLTylahSM93qhA", "nonceStr": "sO9gYfMJ4ziQfaEq", "paymentMethod": "4VRL3vIfK7rpVKWB", "paymentMethodFee": 87, "paymentOrderNo": "6ww8NTLMpmdbmBnL", "paymentProvider": "ALIPAY", "paymentProviderFee": 5, "paymentStationUrl": "qRfPELfJBLeWeUcL", "price": 79, "refundedTime": "1990-10-24T00:00:00Z", "salesTax": 19, "sandbox": false, "sku": "xqNLVzFK1xn5xqlt", "status": "CHARGED", "statusReason": "k0ruspZCHhiocnvs", "subscriptionId": "pfnB1hKqZet5Gk7T", "subtotalPrice": 80, "targetNamespace": "njtBhHy2vwxktX4H", "targetUserId": "MbNZYgmLSJONbWDy", "tax": 10, "totalPrice": 21, "totalTax": 47, "txEndTime": "1971-10-23T00:00:00Z", "type": "uDOyGCXS5ncfF6zH", "userId": "hvrV9oqcGhDpKcg3", "vat": 90}' \
    > test.out 2>&1
eval_tap $? 291 'ProcessUserSubscriptionNotification' test.out

#- 292 AcquireUserTicket
samples/cli/sample-apps Platform acquireUserTicket \
    --boothName 'tHOf5kjyjL25J7oS' \
    --namespace $AB_NAMESPACE \
    --userId 'eFii9AtSKRnfdZxK' \
    --body '{"count": 7, "orderNo": "IAjwXT2vKrqH9Ec0"}' \
    > test.out 2>&1
eval_tap $? 292 'AcquireUserTicket' test.out

#- 293 QueryUserCurrencyWallets
samples/cli/sample-apps Platform queryUserCurrencyWallets \
    --namespace $AB_NAMESPACE \
    --userId '4KnbEc5oLInO4OYm' \
    > test.out 2>&1
eval_tap $? 293 'QueryUserCurrencyWallets' test.out

#- 294 DebitUserWalletByCurrencyCode
samples/cli/sample-apps Platform debitUserWalletByCurrencyCode \
    --currencyCode 'Lh8EPSHUeFfipKMw' \
    --namespace $AB_NAMESPACE \
    --userId 'wQw3LFcgl1jCdfqw' \
    --body '{"allowOverdraft": true, "amount": 21, "balanceOrigin": "Epic", "balanceSource": "IAP_REVOCATION", "metadata": {"ycW7hpHdc9tQRRkX": {}, "jCzBQmF1C7bAGESx": {}, "wCCUP8IsxqiBLzIP": {}}, "reason": "4LsiCgD3F3fBTMdw"}' \
    > test.out 2>&1
eval_tap $? 294 'DebitUserWalletByCurrencyCode' test.out

#- 295 ListUserCurrencyTransactions
samples/cli/sample-apps Platform listUserCurrencyTransactions \
    --currencyCode 'FAj6gChd6vFTZxxU' \
    --namespace $AB_NAMESPACE \
    --userId 'tNHcjbTNTklSbIwT' \
    --limit '47' \
    --offset '41' \
    > test.out 2>&1
eval_tap $? 295 'ListUserCurrencyTransactions' test.out

#- 296 CheckBalance
samples/cli/sample-apps Platform checkBalance \
    --currencyCode 'nIjZwvo0JivPj8Y5' \
    --namespace $AB_NAMESPACE \
    --userId 'vrVIaJT7nrkCa2yo' \
    --request '{"amount": 12, "debitBalanceSource": "DLC_REVOCATION", "metadata": {"yMqqZT9bNiTgZQmN": {}, "ZWgQOBZJw62QqUyu": {}, "z0omyV1WjwE6DU1V": {}}, "reason": "M7MO3X4ZR3XsD2sJ", "walletPlatform": "Xbox"}' \
    > test.out 2>&1
eval_tap $? 296 'CheckBalance' test.out

#- 297 CheckWallet
eval_tap 0 297 'CheckWallet # SKIP deprecated' test.out

#- 298 CreditUserWallet
samples/cli/sample-apps Platform creditUserWallet \
    --currencyCode 's4tlnJ31CDTlhon2' \
    --namespace $AB_NAMESPACE \
    --userId 'PzV33pNopbiaVhCj' \
    --body '{"amount": 20, "expireAt": "1989-08-05T00:00:00Z", "metadata": {"P7w8oyDinJ3hEwgy": {}, "BcrPX8oGT6JS39N5": {}, "6mlXBrvNGPmYIvNx": {}}, "origin": "Steam", "reason": "SaK3YRkm6cRbgTJr", "source": "REFUND"}' \
    > test.out 2>&1
eval_tap $? 298 'CreditUserWallet' test.out

#- 299 DebitByWalletPlatform
samples/cli/sample-apps Platform debitByWalletPlatform \
    --currencyCode '3D7BPIRRnqtZwTEC' \
    --namespace $AB_NAMESPACE \
    --userId '7EySvXP6GbWQwaTc' \
    --request '{"amount": 47, "debitBalanceSource": "TRADE", "metadata": {"O7Xgr2BJNclNYqPP": {}, "0tiy11nUfqp3bzSV": {}, "2EJ2iwCAdx71m1sl": {}}, "reason": "xA4tDWC8aCjBrVTU", "walletPlatform": "IOS"}' \
    > test.out 2>&1
eval_tap $? 299 'DebitByWalletPlatform' test.out

#- 300 PayWithUserWallet
samples/cli/sample-apps Platform payWithUserWallet \
    --currencyCode 'Jhr99AbEpmKh8CNT' \
    --namespace $AB_NAMESPACE \
    --userId 'QlPtK3ON3oGsxb2r' \
    --body '{"amount": 73, "metadata": {"XthFQbVOcx1EaTNq": {}, "ZRl6MdszwWbUhII4": {}, "IFKh6HeBGeYFYyvr": {}}, "walletPlatform": "Other"}' \
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
    --storeId 'uGwAqTp0ZesKOCOt' \
    > test.out 2>&1
eval_tap $? 306 'ListViews' test.out

#- 307 CreateView
samples/cli/sample-apps Platform createView \
    --namespace $AB_NAMESPACE \
    --storeId 'yIBVcXK4jHuwPN47' \
    --body '{"displayOrder": 15, "localizations": {"w1K6JHFGyo9DE8Gn": {"description": "wnfm6XbtMEJFfUjy", "localExt": {"jYnCKYlGtK3R2ycX": {}, "IyHjfFFhlLigEWKG": {}, "5E3Fn2JycYDPipbT": {}}, "longDescription": "egi137g6Ir3BXXTN", "title": "pQKImev0Ja3tIMLb"}, "3Xq2EhbyyrrG9OEx": {"description": "TY1Ixnobno8bbUbw", "localExt": {"xkx99LPFXiUQQxPZ": {}, "Gr8tH0pPCvEdBVDR": {}, "onsAlOhWx0b9KePt": {}}, "longDescription": "YBov4rMkAsWhALVW", "title": "UV0wmQPZpuWXN6Vw"}, "PuLEckmbQSEa19o5": {"description": "TbJct47Swho01kAg", "localExt": {"hO2UnFwQBEbdGH51": {}, "DE1XxKcWfuIhO8iW": {}, "IX9RBMTnrnwWnnDf": {}}, "longDescription": "6WMWtaJtapLh05qz", "title": "PyD10UfV4tNS4eNk"}}, "name": "9UkIP0XuLWHgER5D"}' \
    > test.out 2>&1
eval_tap $? 307 'CreateView' test.out

#- 308 GetView
samples/cli/sample-apps Platform getView \
    --namespace $AB_NAMESPACE \
    --viewId '5KDt0AqLrf795gYm' \
    --storeId 'fFSd5sBT2ORC1lhF' \
    > test.out 2>&1
eval_tap $? 308 'GetView' test.out

#- 309 UpdateView
samples/cli/sample-apps Platform updateView \
    --namespace $AB_NAMESPACE \
    --viewId 'G3Rn1QAQiewJRBC8' \
    --storeId 'qD5GVO1OdMe9b1EJ' \
    --body '{"displayOrder": 16, "localizations": {"gL0qJKQj5UyEPzlW": {"description": "zlhyySQL79sxfQo5", "localExt": {"t9vQk9D2H88fPIoM": {}, "REiP5ZXq5ysb0vis": {}, "FCyl8KP3Gq2wnEfC": {}}, "longDescription": "hi65ZnHUwhiQ3Hrm", "title": "z0GBI9wQTv96mAPi"}, "tlUcOZ2kNSeS1SDw": {"description": "QHPxARtM1yQxv5PQ", "localExt": {"eoaaQN9FnR5t3dek": {}, "2WPAWuwurfbl3f1Q": {}, "i78Po2bhWXeCo7hn": {}}, "longDescription": "6OxpWhfz4cujdv3y", "title": "QLQxyqNhY6ALN25x"}, "TOMXqBuCBoxrCn44": {"description": "ZeLWndOcUvJFq1B1", "localExt": {"PBBjdHw2HzDDPtRb": {}, "zKRg0vhVh3VvCjIU": {}, "ih8FVpp8mEFdOw7d": {}}, "longDescription": "PrtBAxQyE5pare8X", "title": "FoHnAoO56KonatPm"}}, "name": "IilFfCBJgNh3bDiL"}' \
    > test.out 2>&1
eval_tap $? 309 'UpdateView' test.out

#- 310 DeleteView
samples/cli/sample-apps Platform deleteView \
    --namespace $AB_NAMESPACE \
    --viewId 'zRbxy7pYlXb73Chm' \
    --storeId '2kRB43ZDTAeMgs3r' \
    > test.out 2>&1
eval_tap $? 310 'DeleteView' test.out

#- 311 QueryWallets
eval_tap 0 311 'QueryWallets # SKIP deprecated' test.out

#- 312 BulkCredit
samples/cli/sample-apps Platform bulkCredit \
    --namespace $AB_NAMESPACE \
    --body '[{"creditRequest": {"amount": 15, "expireAt": "1971-06-16T00:00:00Z", "metadata": {"rVdkFLagUQm0OYBN": {}, "Dsd5RaPDwT9Hd1HD": {}, "vkDLnL8oOL3glrRu": {}}, "origin": "GooglePlay", "reason": "tX2pR95Lo5feC11w", "source": "SELL_BACK"}, "currencyCode": "HUkfaQY6Ezcp9ony", "userIds": ["x5CsYUw0gJaywwHW", "ED7d66er23KJg2BD", "8maFksdKDCPcnsZm"]}, {"creditRequest": {"amount": 98, "expireAt": "1975-03-31T00:00:00Z", "metadata": {"4bfpywsdJse0HLy2": {}, "mmmDer5grzCwOFGB": {}, "ae6H3WowSD4pvUp9": {}}, "origin": "Nintendo", "reason": "0lFJ8tqQ610zD7d5", "source": "ACHIEVEMENT"}, "currencyCode": "vTxerB2g7BG9cQSh", "userIds": ["rzNpJ0uRZGhd9y5c", "o32nMPwj73lMzM8N", "qgOErpzvxqbgiqKx"]}, {"creditRequest": {"amount": 11, "expireAt": "1979-10-18T00:00:00Z", "metadata": {"0oNRuFMnmOmVSDW5": {}, "WLwLFwFE0RZxrJz3": {}, "eqoiSvys7PLCOEFT": {}}, "origin": "Nintendo", "reason": "iVqTvQsQym2eA1i4", "source": "SELL_BACK"}, "currencyCode": "FWjKOMrvdqXLYOXe", "userIds": ["P8OkCmWUwDz1AJ2z", "LgH0tQLg0L6DM1yT", "btIZnmt6F327oy6w"]}]' \
    > test.out 2>&1
eval_tap $? 312 'BulkCredit' test.out

#- 313 BulkDebit
samples/cli/sample-apps Platform bulkDebit \
    --namespace $AB_NAMESPACE \
    --body '[{"currencyCode": "Ne7TcPAAnx6y7Luv", "request": {"allowOverdraft": false, "amount": 23, "balanceOrigin": "Nintendo", "balanceSource": "DLC_REVOCATION", "metadata": {"NoMXOM84r1NYj5hj": {}, "7VucG89572KaJybS": {}, "K7a4u2AutbZPnqR3": {}}, "reason": "zirWSaGfXOO1rZ2w"}, "userIds": ["LAc7DMZ8te6oVqCv", "CHarbNLpPiOokJuz", "ls76YfIgTTiPZgnO"]}, {"currencyCode": "XLqJiGISouixbnSr", "request": {"allowOverdraft": false, "amount": 75, "balanceOrigin": "Twitch", "balanceSource": "EXPIRATION", "metadata": {"3RTC7ZU2tFwpHaOb": {}, "MRH8WH0yOs2r6tXm": {}, "bqGQMjqVrGhEI0VH": {}}, "reason": "4BK4f87x2rpAV8ut"}, "userIds": ["63cTGf6awHzrG5D9", "P6kTE9IUU3GVY1kn", "DtDrhoakioUEURjK"]}, {"currencyCode": "7T1ObMMIcSmSRDC8", "request": {"allowOverdraft": false, "amount": 59, "balanceOrigin": "GooglePlay", "balanceSource": "OTHER", "metadata": {"8TtaIFIzwJXCP32J": {}, "Mg34mF3uaR8X00Lw": {}, "C4P6R18bv574IcSL": {}}, "reason": "UVx6ZMRFAxsqTQxz"}, "userIds": ["oq4R5X6ua9IvSt3I", "NJU9i2kag5TF0rPX", "aj671DjhOuipICJb"]}]' \
    > test.out 2>&1
eval_tap $? 313 'BulkDebit' test.out

#- 314 GetWallet
eval_tap 0 314 'GetWallet # SKIP deprecated' test.out

#- 315 SyncOrders
samples/cli/sample-apps Platform syncOrders \
    --nextEvaluatedKey 'V0EbzjG0nF1NcP0R' \
    --end 'dHRkYqDMNh8fJpcl' \
    --start 'y8yk9rf0rq6oJZkz' \
    > test.out 2>&1
eval_tap $? 315 'SyncOrders' test.out

#- 316 TestAdyenConfig
samples/cli/sample-apps Platform testAdyenConfig \
    --sandbox 'true' \
    --body '{"allowedPaymentMethods": ["1pMhSMv8a8X3iAFq", "Rb8TUnj5vH1z96FT", "mpzqeOS9rBeNILmv"], "apiKey": "IRsdXbh7XmnO4qj6", "authoriseAsCapture": true, "blockedPaymentMethods": ["smtW38cXMGCrOt0I", "RCV0ltT6Rs8egolE", "hOxllEdNaqzpXqhu"], "clientKey": "RNTqYzCZMTPgkt5x", "dropInSettings": "YKGfQJYpm7Um6FKt", "liveEndpointUrlPrefix": "sJ4GjDeFrx7k4jGX", "merchantAccount": "WuLwqQZINTlo6hwl", "notificationHmacKey": "GxNbHNEAR3wOU9hH", "notificationPassword": "nRJb6NlcrAngismq", "notificationUsername": "IPMn68BNzaoCo2Ow", "returnUrl": "N3lEFfJUyFkrYjaE", "settings": "2QRDblmxwCERPqyd"}' \
    > test.out 2>&1
eval_tap $? 316 'TestAdyenConfig' test.out

#- 317 TestAliPayConfig
samples/cli/sample-apps Platform testAliPayConfig \
    --sandbox 'false' \
    --body '{"appId": "WnV6KYAADbSDRc5B", "privateKey": "eXc0lJyqBmSkZFBC", "publicKey": "r24flnBj4jWDxZXk", "returnUrl": "E2gRhXaz0y2ZbOCG"}' \
    > test.out 2>&1
eval_tap $? 317 'TestAliPayConfig' test.out

#- 318 TestCheckoutConfig
samples/cli/sample-apps Platform testCheckoutConfig \
    --sandbox 'false' \
    --body '{"publicKey": "IPMY7O61J0GHiYeo", "secretKey": "pMXaM852Ths5MsWE"}' \
    > test.out 2>&1
eval_tap $? 318 'TestCheckoutConfig' test.out

#- 319 DebugMatchedPaymentMerchantConfig
samples/cli/sample-apps Platform debugMatchedPaymentMerchantConfig \
    --namespace 'qPVFvsM8gmbsum22' \
    --region 'A6LCWxJEy0M32vcp' \
    > test.out 2>&1
eval_tap $? 319 'DebugMatchedPaymentMerchantConfig' test.out

#- 320 TestPayPalConfig
samples/cli/sample-apps Platform testPayPalConfig \
    --sandbox 'true' \
    --body '{"clientID": "ckzvhNiWXJC7P4GK", "clientSecret": "OjGX0E9a9I2XQfZr", "returnUrl": "JTyTVZvh6E93jiNZ", "webHookId": "QvpazhAe9attUPWw"}' \
    > test.out 2>&1
eval_tap $? 320 'TestPayPalConfig' test.out

#- 321 TestStripeConfig
samples/cli/sample-apps Platform testStripeConfig \
    --sandbox 'false' \
    --body '{"allowedPaymentMethodTypes": ["KtQ3DWOO8NaQCILL", "9WGBPBt8xpmkMJ0H", "hZDX4e0REUQWAFen"], "publishableKey": "0BrPd9hT5okSh27O", "secretKey": "4l7Qy6KxxA7ftdzm", "webhookSecret": "Wat7o9tLhwDFEBhg"}' \
    > test.out 2>&1
eval_tap $? 321 'TestStripeConfig' test.out

#- 322 TestWxPayConfig
samples/cli/sample-apps Platform testWxPayConfig \
    --body '{"appId": "lygk27VvNFTczLmi", "key": "GnKgbsfkvQ84WIBu", "mchid": "cj0jV9A2Z2NDj90Z", "returnUrl": "IkRdsjXfDnuE7GZ0"}' \
    > test.out 2>&1
eval_tap $? 322 'TestWxPayConfig' test.out

#- 323 TestXsollaConfig
samples/cli/sample-apps Platform testXsollaConfig \
    --body '{"apiKey": "Mktl7TXi6JtnU21f", "flowCompletionUrl": "4liCNAiUdCWCBfZi", "merchantId": 52, "projectId": 16, "projectSecretKey": "W5Wfc3mKc0FkqGlW"}' \
    > test.out 2>&1
eval_tap $? 323 'TestXsollaConfig' test.out

#- 324 GetPaymentMerchantConfig
samples/cli/sample-apps Platform getPaymentMerchantConfig \
    --id 'RbeOHpb5RROOoPa3' \
    > test.out 2>&1
eval_tap $? 324 'GetPaymentMerchantConfig' test.out

#- 325 UpdateAdyenConfig
samples/cli/sample-apps Platform updateAdyenConfig \
    --id 'u1hnBLU7izuejkGl' \
    --sandbox 'false' \
    --validate 'true' \
    --body '{"allowedPaymentMethods": ["kKKxuFccHkdyWr4R", "RALZMhBjU85JT7NQ", "A7KJ1zUHOpPNd3KV"], "apiKey": "aM5I2qF8mFlk5wP1", "authoriseAsCapture": true, "blockedPaymentMethods": ["Kqa5LM1enCWnjR1h", "mX6giiNgykXtljFp", "isGIHm4sSsr2Wpz3"], "clientKey": "od0ESmxI9g2CQOps", "dropInSettings": "BaxlewOl5d8H7xxh", "liveEndpointUrlPrefix": "PMjO61X2URIexOad", "merchantAccount": "aSIaLahdqGLksIvO", "notificationHmacKey": "MYgJ1YfUcboucBFP", "notificationPassword": "4ddkmuT2WRvCRh2r", "notificationUsername": "oDSB5fa3yl9a5XhF", "returnUrl": "4S3DxGTWzMYCmLs4", "settings": "xKV6fw54bsoAgKAi"}' \
    > test.out 2>&1
eval_tap $? 325 'UpdateAdyenConfig' test.out

#- 326 TestAdyenConfigById
samples/cli/sample-apps Platform testAdyenConfigById \
    --id 'PRSSpg4mIn337nME' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 326 'TestAdyenConfigById' test.out

#- 327 UpdateAliPayConfig
samples/cli/sample-apps Platform updateAliPayConfig \
    --id 'qNlNUR93uSZeSF24' \
    --sandbox 'true' \
    --validate 'false' \
    --body '{"appId": "mvHaiitWd8WkLRZX", "privateKey": "1yeOq5EPQeWOgCBS", "publicKey": "9XWmHwYrqBScke80", "returnUrl": "2hWCcZDFV8cDTcwR"}' \
    > test.out 2>&1
eval_tap $? 327 'UpdateAliPayConfig' test.out

#- 328 TestAliPayConfigById
samples/cli/sample-apps Platform testAliPayConfigById \
    --id '1FSre3CulM0iMnBt' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 328 'TestAliPayConfigById' test.out

#- 329 UpdateCheckoutConfig
samples/cli/sample-apps Platform updateCheckoutConfig \
    --id 'iyYzzJZ4AZh0ca7j' \
    --sandbox 'true' \
    --validate 'true' \
    --body '{"publicKey": "Ux7tuV05DdeUihSc", "secretKey": "SQo38N9e7UJjH8it"}' \
    > test.out 2>&1
eval_tap $? 329 'UpdateCheckoutConfig' test.out

#- 330 TestCheckoutConfigById
samples/cli/sample-apps Platform testCheckoutConfigById \
    --id 'LVBbUzmr37mMUEcv' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 330 'TestCheckoutConfigById' test.out

#- 331 UpdatePayPalConfig
samples/cli/sample-apps Platform updatePayPalConfig \
    --id 'CYV4xifhAW4JVv2u' \
    --sandbox 'true' \
    --validate 'false' \
    --body '{"clientID": "fgRZGlRQodqsdU6W", "clientSecret": "TKQC60pitSqrAvWq", "returnUrl": "LIFcEVByi2ASRL21", "webHookId": "sQD7cQaoKAPxQ5gd"}' \
    > test.out 2>&1
eval_tap $? 331 'UpdatePayPalConfig' test.out

#- 332 TestPayPalConfigById
samples/cli/sample-apps Platform testPayPalConfigById \
    --id 'BSXPTrhlg6LWlDLk' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 332 'TestPayPalConfigById' test.out

#- 333 UpdateStripeConfig
samples/cli/sample-apps Platform updateStripeConfig \
    --id '54zfEHhaOZpoAUuT' \
    --sandbox 'true' \
    --validate 'false' \
    --body '{"allowedPaymentMethodTypes": ["UZjDvuhxZMTla4Yq", "d0W5eAwVR5V6oOng", "Lj2E6dLODumPorSq"], "publishableKey": "Y4gedycDzx9EvFjX", "secretKey": "JiWabL24tY8BkMlQ", "webhookSecret": "lNgU3xFfCaoFDEWQ"}' \
    > test.out 2>&1
eval_tap $? 333 'UpdateStripeConfig' test.out

#- 334 TestStripeConfigById
samples/cli/sample-apps Platform testStripeConfigById \
    --id '63W130A6DN6zrvFr' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 334 'TestStripeConfigById' test.out

#- 335 UpdateWxPayConfig
samples/cli/sample-apps Platform updateWxPayConfig \
    --id 'FEv76lcsABR9eMaf' \
    --validate 'true' \
    --body '{"appId": "puHvpj8vjl0b2V35", "key": "W6wLW5dCsn7lIjQL", "mchid": "oAr3n4geZiUKMfg8", "returnUrl": "HiT1ay5H4pd5LFGq"}' \
    > test.out 2>&1
eval_tap $? 335 'UpdateWxPayConfig' test.out

#- 336 UpdateWxPayConfigCert
samples/cli/sample-apps Platform updateWxPayConfigCert \
    --id 'XzBV938lUWT0JB2O' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 336 'UpdateWxPayConfigCert' test.out

#- 337 TestWxPayConfigById
samples/cli/sample-apps Platform testWxPayConfigById \
    --id 'GUDJx5zrZCMRaaOM' \
    > test.out 2>&1
eval_tap $? 337 'TestWxPayConfigById' test.out

#- 338 UpdateXsollaConfig
samples/cli/sample-apps Platform updateXsollaConfig \
    --id 'SgYL3M30vHbzfR9O' \
    --validate 'true' \
    --body '{"apiKey": "7Wtaik6djhfL1Im3", "flowCompletionUrl": "Ty2dZaqKMg38E6k9", "merchantId": 17, "projectId": 61, "projectSecretKey": "LqDkC1Alz9giGlbp"}' \
    > test.out 2>&1
eval_tap $? 338 'UpdateXsollaConfig' test.out

#- 339 TestXsollaConfigById
samples/cli/sample-apps Platform testXsollaConfigById \
    --id 'RD7oRyGzlS03kbwf' \
    > test.out 2>&1
eval_tap $? 339 'TestXsollaConfigById' test.out

#- 340 UpdateXsollaUIConfig
samples/cli/sample-apps Platform updateXsollaUIConfig \
    --id '764I7jEfnhjNZBZl' \
    --body '{"device": "MOBILE", "showCloseButton": false, "size": "SMALL", "theme": "DEFAULT"}' \
    > test.out 2>&1
eval_tap $? 340 'UpdateXsollaUIConfig' test.out

#- 341 QueryPaymentProviderConfig
samples/cli/sample-apps Platform queryPaymentProviderConfig \
    --limit '81' \
    --namespace 'cujn8ZMuIK10Nec5' \
    --offset '25' \
    --region 'EhqTPdR15C0cvz3b' \
    > test.out 2>&1
eval_tap $? 341 'QueryPaymentProviderConfig' test.out

#- 342 CreatePaymentProviderConfig
samples/cli/sample-apps Platform createPaymentProviderConfig \
    --body '{"aggregate": "XSOLLA", "namespace": "itHofM6bjO3cHa6P", "region": "rPq0JRRiOvF7y4Mi", "sandboxTaxJarApiToken": "tqmZy9kYVmU7oWrV", "specials": ["ALIPAY", "PAYPAL", "CHECKOUT"], "taxJarApiToken": "j9voYxOU7sbYVkJ0", "taxJarEnabled": true, "useGlobalTaxJarApiToken": false}' \
    > test.out 2>&1
eval_tap $? 342 'CreatePaymentProviderConfig' test.out

#- 343 GetAggregatePaymentProviders
samples/cli/sample-apps Platform getAggregatePaymentProviders \
    > test.out 2>&1
eval_tap $? 343 'GetAggregatePaymentProviders' test.out

#- 344 DebugMatchedPaymentProviderConfig
samples/cli/sample-apps Platform debugMatchedPaymentProviderConfig \
    --namespace 'Vmmx6jeSZbJXu27N' \
    --region 'sQsID8otYUGYhUMK' \
    > test.out 2>&1
eval_tap $? 344 'DebugMatchedPaymentProviderConfig' test.out

#- 345 GetSpecialPaymentProviders
samples/cli/sample-apps Platform getSpecialPaymentProviders \
    > test.out 2>&1
eval_tap $? 345 'GetSpecialPaymentProviders' test.out

#- 346 UpdatePaymentProviderConfig
samples/cli/sample-apps Platform updatePaymentProviderConfig \
    --id 'pj0zgVISkqCWYGXP' \
    --body '{"aggregate": "ADYEN", "namespace": "9bS61iIF2rjG3eh7", "region": "JqAMnYQ7TFsEDGn0", "sandboxTaxJarApiToken": "2cKmTcDVBEw3A75R", "specials": ["ALIPAY", "ALIPAY", "PAYPAL"], "taxJarApiToken": "A6Ni0W1I5uUYvV4Z", "taxJarEnabled": false, "useGlobalTaxJarApiToken": false}' \
    > test.out 2>&1
eval_tap $? 346 'UpdatePaymentProviderConfig' test.out

#- 347 DeletePaymentProviderConfig
samples/cli/sample-apps Platform deletePaymentProviderConfig \
    --id 'YPwG13m0pzzFEF1k' \
    > test.out 2>&1
eval_tap $? 347 'DeletePaymentProviderConfig' test.out

#- 348 GetPaymentTaxConfig
samples/cli/sample-apps Platform getPaymentTaxConfig \
    > test.out 2>&1
eval_tap $? 348 'GetPaymentTaxConfig' test.out

#- 349 UpdatePaymentTaxConfig
samples/cli/sample-apps Platform updatePaymentTaxConfig \
    --body '{"sandboxTaxJarApiToken": "R0iAEsPFOdOhePYi", "taxJarApiToken": "cwrMvrhDftqEFaks", "taxJarEnabled": false, "taxJarProductCodesMapping": {"LQwt3gLtc6m1CHL0": "WbuYniWYxi1KfLOG", "jPynAksxjYNxS8L6": "1Lpx8zdolojnUE3i", "hiSdDHl76qwQ8oav": "R85p3k1e6MP3mTNl"}}' \
    > test.out 2>&1
eval_tap $? 349 'UpdatePaymentTaxConfig' test.out

#- 350 SyncPaymentOrders
samples/cli/sample-apps Platform syncPaymentOrders \
    --nextEvaluatedKey 'eizNeJhCfvGETVSx' \
    --end 'AHhvewNTxNI9zB2C' \
    --start '0TNvYzddKX4pQN7g' \
    > test.out 2>&1
eval_tap $? 350 'SyncPaymentOrders' test.out

#- 351 PublicGetRootCategories
samples/cli/sample-apps Platform publicGetRootCategories \
    --namespace $AB_NAMESPACE \
    --language '1lJQ0yKVIW6LcRWI' \
    --storeId 'gHQAMMIvS2mDHZTh' \
    > test.out 2>&1
eval_tap $? 351 'PublicGetRootCategories' test.out

#- 352 DownloadCategories
samples/cli/sample-apps Platform downloadCategories \
    --namespace $AB_NAMESPACE \
    --language 'O0pJ3n6RVKtUCz5q' \
    --storeId 'jWjwzpMXaTWF3BZd' \
    > test.out 2>&1
eval_tap $? 352 'DownloadCategories' test.out

#- 353 PublicGetCategory
samples/cli/sample-apps Platform publicGetCategory \
    --categoryPath 'Q91wyroNKPR19zqt' \
    --namespace $AB_NAMESPACE \
    --language 'MAqNAlciwXAb032y' \
    --storeId 'wri2LFSXmHbq8IRz' \
    > test.out 2>&1
eval_tap $? 353 'PublicGetCategory' test.out

#- 354 PublicGetChildCategories
samples/cli/sample-apps Platform publicGetChildCategories \
    --categoryPath 'huKJu6TmRaAYRWiB' \
    --namespace $AB_NAMESPACE \
    --language 'KOXD2X0Nmft3SgQL' \
    --storeId 'IenmQSp8PmwZRUMi' \
    > test.out 2>&1
eval_tap $? 354 'PublicGetChildCategories' test.out

#- 355 PublicGetDescendantCategories
samples/cli/sample-apps Platform publicGetDescendantCategories \
    --categoryPath 'joDMQZfk6wnNbaAe' \
    --namespace $AB_NAMESPACE \
    --language 'gPYmO6vNzvqrTaOp' \
    --storeId 'nFKT9MfyG3OBFPm0' \
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
    --platform 'STADIA' \
    > test.out 2>&1
eval_tap $? 358 'GetIAPItemMapping' test.out

#- 359 PublicGetItemByAppId
samples/cli/sample-apps Platform publicGetItemByAppId \
    --namespace $AB_NAMESPACE \
    --language 'HPeQ4IsoKjMPj1bC' \
    --region '3ou1Gf8cYfNXDiHV' \
    --storeId 'bzAecc6GjWEmQPqB' \
    --appId 'Kp1dz8Uiom14V9DC' \
    > test.out 2>&1
eval_tap $? 359 'PublicGetItemByAppId' test.out

#- 360 PublicQueryItems
samples/cli/sample-apps Platform publicQueryItems \
    --namespace $AB_NAMESPACE \
    --appType 'SOFTWARE' \
    --autoCalcEstimatedPrice 'false' \
    --baseAppId 'C8PSWo86pl3VRVrU' \
    --categoryPath '5DYW7GelZ9F0sm2O' \
    --features 'D0WdX7QUgra5hv5n' \
    --includeSubCategoryItem 'false' \
    --itemType 'CODE' \
    --language 'hOdQj64Rb2CABJ7e' \
    --limit '23' \
    --offset '66' \
    --region 'K73YcIZ6FL3MchEl' \
    --sortBy '["name", "updatedAt:desc", "name:asc"]' \
    --storeId 'rIyOHd6prEpIgE7I' \
    --tags 'j0GdWQS8X0WaGYRC' \
    > test.out 2>&1
eval_tap $? 360 'PublicQueryItems' test.out

#- 361 PublicGetItemBySku
samples/cli/sample-apps Platform publicGetItemBySku \
    --namespace $AB_NAMESPACE \
    --autoCalcEstimatedPrice 'false' \
    --language 'GeqOEYdrruTeIViA' \
    --region 'cabVxlADJdt2rRFS' \
    --storeId 'x90PknsLtLMTcVrV' \
    --sku 'Mv6b05oljpK3uumF' \
    > test.out 2>&1
eval_tap $? 361 'PublicGetItemBySku' test.out

#- 362 PublicGetEstimatedPrice
samples/cli/sample-apps Platform publicGetEstimatedPrice \
    --namespace $AB_NAMESPACE \
    --region 'r1nuKGwul0Whn8XV' \
    --storeId 'ZzrsU4I7AavOFLBm' \
    --itemIds 'fq1zxUMfKAQItTFA' \
    > test.out 2>&1
eval_tap $? 362 'PublicGetEstimatedPrice' test.out

#- 363 PublicBulkGetItems
samples/cli/sample-apps Platform publicBulkGetItems \
    --namespace $AB_NAMESPACE \
    --autoCalcEstimatedPrice 'false' \
    --language 'LsiuAtn4g7uIDzuD' \
    --region '9HkNOt429rY3yDIb' \
    --storeId 'kvXVibEmjMaBPcN0' \
    --itemIds 'Kzm1YyUjBcuUfO2U' \
    > test.out 2>&1
eval_tap $? 363 'PublicBulkGetItems' test.out

#- 364 PublicValidateItemPurchaseCondition
samples/cli/sample-apps Platform publicValidateItemPurchaseCondition \
    --namespace $AB_NAMESPACE \
    --body '{"itemIds": ["bNK8K2s670VSkVQp", "1iQxIjXGpgkHynmR", "waJ905hpu3Rz2epf"]}' \
    > test.out 2>&1
eval_tap $? 364 'PublicValidateItemPurchaseCondition' test.out

#- 365 PublicSearchItems
samples/cli/sample-apps Platform publicSearchItems \
    --namespace $AB_NAMESPACE \
    --autoCalcEstimatedPrice 'false' \
    --itemType 'INGAMEITEM' \
    --limit '5' \
    --offset '25' \
    --region 'GFQXvBFNrs4ZPefE' \
    --storeId 'cf4mRU1nHkuoQ92l' \
    --keyword 'szi5CpHZJzP1gG84' \
    --language 'euFtY7xRuA8brkSL' \
    > test.out 2>&1
eval_tap $? 365 'PublicSearchItems' test.out

#- 366 PublicGetApp
samples/cli/sample-apps Platform publicGetApp \
    --itemId 'g5yH0BBrRqOaRdio' \
    --namespace $AB_NAMESPACE \
    --language '9xUbCIJU1DnBhkR8' \
    --region 'M3nyHci2NhoClA7U' \
    --storeId 'mHAAduyqyKBRG7BN' \
    > test.out 2>&1
eval_tap $? 366 'PublicGetApp' test.out

#- 367 PublicGetItemDynamicData
samples/cli/sample-apps Platform publicGetItemDynamicData \
    --itemId 'e3Ge9YeyWpNwtwDg' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 367 'PublicGetItemDynamicData' test.out

#- 368 PublicGetItem
samples/cli/sample-apps Platform publicGetItem \
    --itemId 'lFL1K3mWKuvY8hPO' \
    --namespace $AB_NAMESPACE \
    --autoCalcEstimatedPrice 'false' \
    --language 'eJSte3QZmPEsrbs2' \
    --populateBundle 'false' \
    --region 'bHeSuLs3hEkPXBoy' \
    --storeId '4LnJBYha3OpEz6yH' \
    > test.out 2>&1
eval_tap $? 368 'PublicGetItem' test.out

#- 369 GetPaymentCustomization
eval_tap 0 369 'GetPaymentCustomization # SKIP deprecated' test.out

#- 370 PublicGetPaymentUrl
samples/cli/sample-apps Platform publicGetPaymentUrl \
    --namespace $AB_NAMESPACE \
    --body '{"paymentOrderNo": "GfGjIMdoppSjmGmE", "paymentProvider": "PAYPAL", "returnUrl": "Rh4OovA9xhWdnfQ8", "ui": "0yHIucsz7WDtH4qj", "zipCode": "s2vxXVlWRmf8nE3g"}' \
    > test.out 2>&1
eval_tap $? 370 'PublicGetPaymentUrl' test.out

#- 371 PublicGetPaymentMethods
samples/cli/sample-apps Platform publicGetPaymentMethods \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo '48je1JSUVGzNB5Zw' \
    > test.out 2>&1
eval_tap $? 371 'PublicGetPaymentMethods' test.out

#- 372 PublicGetUnpaidPaymentOrder
samples/cli/sample-apps Platform publicGetUnpaidPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'AxOogMF4f2nA7sBh' \
    > test.out 2>&1
eval_tap $? 372 'PublicGetUnpaidPaymentOrder' test.out

#- 373 Pay
samples/cli/sample-apps Platform pay \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'a4qy5MxzQuQLyakl' \
    --paymentProvider 'ADYEN' \
    --zipCode 'r5KPGPpqUCIxq1vP' \
    --body '{"token": "FyYqcPxiZDJFgmqM"}' \
    > test.out 2>&1
eval_tap $? 373 'Pay' test.out

#- 374 PublicCheckPaymentOrderPaidStatus
samples/cli/sample-apps Platform publicCheckPaymentOrderPaidStatus \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'IbWjSJHPdIwbOaXm' \
    > test.out 2>&1
eval_tap $? 374 'PublicCheckPaymentOrderPaidStatus' test.out

#- 375 GetPaymentPublicConfig
samples/cli/sample-apps Platform getPaymentPublicConfig \
    --namespace $AB_NAMESPACE \
    --sandbox 'false' \
    --paymentProvider 'ADYEN' \
    --region 'QCmYZEJGEABKZyx1' \
    > test.out 2>&1
eval_tap $? 375 'GetPaymentPublicConfig' test.out

#- 376 PublicGetQRCode
samples/cli/sample-apps Platform publicGetQRCode \
    --namespace $AB_NAMESPACE \
    --code 'KFStfHbj0wJ8yXt6' \
    > test.out 2>&1
eval_tap $? 376 'PublicGetQRCode' test.out

#- 377 PublicNormalizePaymentReturnUrl
samples/cli/sample-apps Platform publicNormalizePaymentReturnUrl \
    --namespace $AB_NAMESPACE \
    --payerID 'Nye19Fkfhbn5wefO' \
    --foreinginvoice 'kqv594T5s5bLK5sg' \
    --invoiceId '6KKMBaMC3UwwBEYy' \
    --payload 'QzaY6Co2Dg3n1ovU' \
    --redirectResult '7nyrdB4P2MiJU8s2' \
    --resultCode 'HbkIZ0ijNzteOkMJ' \
    --sessionId 'gTPsS4SM1VKePbtV' \
    --status '9IkYOwoaERoMax7w' \
    --token 'mdAU8Lkk6Z2N59m4' \
    --type 'v8gxYo7HikpdMPPV' \
    --userId 'j8XMvICr27di1SP6' \
    --orderNo 'DFDBxBrKxEhiJ524' \
    --paymentOrderNo 'NXMohadN4y7UTtXB' \
    --paymentProvider 'WALLET' \
    --returnUrl 'nPWCB6IOPj1KS2t0' \
    > test.out 2>&1
eval_tap $? 377 'PublicNormalizePaymentReturnUrl' test.out

#- 378 GetPaymentTaxValue
samples/cli/sample-apps Platform getPaymentTaxValue \
    --namespace $AB_NAMESPACE \
    --zipCode 'WzmmD7lSmq5M7cdI' \
    --paymentOrderNo 'aImW1oo3midkt9nV' \
    --paymentProvider 'PAYPAL' \
    > test.out 2>&1
eval_tap $? 378 'GetPaymentTaxValue' test.out

#- 379 GetRewardByCode
samples/cli/sample-apps Platform getRewardByCode \
    --namespace $AB_NAMESPACE \
    --rewardCode 'IS2aHimDLLL4AxzZ' \
    > test.out 2>&1
eval_tap $? 379 'GetRewardByCode' test.out

#- 380 QueryRewards1
samples/cli/sample-apps Platform queryRewards1 \
    --namespace $AB_NAMESPACE \
    --eventTopic 'TrxDxVXKyUvJSH4A' \
    --limit '37' \
    --offset '1' \
    --sortBy '["namespace", "rewardCode"]' \
    > test.out 2>&1
eval_tap $? 380 'QueryRewards1' test.out

#- 381 GetReward1
samples/cli/sample-apps Platform getReward1 \
    --namespace $AB_NAMESPACE \
    --rewardId 'ZCFeue4IV1abS9cU' \
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
    --appIds '["zPCbImRsBHR4MEGy", "0uVHMq5QvwZ79wHv", "o5TqYiYsjq0Vvidk"]' \
    --itemIds '["FocBmGBTvMX8yoii", "N6dF1wDix0VkNest", "jR4GcDmG4NQuMmBa"]' \
    --skus '["OvtLwL64wMmSmMou", "jR8RKdd2kqdeCw8E", "BaUMIqd3uuLviEV2"]' \
    > test.out 2>&1
eval_tap $? 383 'PublicExistsAnyMyActiveEntitlement' test.out

#- 384 PublicGetMyAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform publicGetMyAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --appId 'nUUdM2cucbkTrskT' \
    > test.out 2>&1
eval_tap $? 384 'PublicGetMyAppEntitlementOwnershipByAppId' test.out

#- 385 PublicGetMyEntitlementOwnershipByItemId
samples/cli/sample-apps Platform publicGetMyEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --entitlementClazz 'APP' \
    --itemId '1XhuH2OkBzBACEbN' \
    > test.out 2>&1
eval_tap $? 385 'PublicGetMyEntitlementOwnershipByItemId' test.out

#- 386 PublicGetMyEntitlementOwnershipBySku
samples/cli/sample-apps Platform publicGetMyEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --entitlementClazz 'APP' \
    --sku 'IXdPq13Pfzb4LWTQ' \
    > test.out 2>&1
eval_tap $? 386 'PublicGetMyEntitlementOwnershipBySku' test.out

#- 387 PublicGetEntitlementOwnershipToken
samples/cli/sample-apps Platform publicGetEntitlementOwnershipToken \
    --namespace $AB_NAMESPACE \
    --appIds '["sPRUKyRDKb6UKimv", "fQuDYhKxbs0SvLI7", "9qtExaFZ7ECwWqXl"]' \
    --itemIds '["bZY93YCeL0V7RZJB", "4KK7vEHwfgWkQC4T", "iejtuBVRpvs3SS5j"]' \
    --skus '["WrwJ5IHMhMsdaVr4", "9R7uedoUlk7dnL9y", "l4680QCJXurMXzwO"]' \
    > test.out 2>&1
eval_tap $? 387 'PublicGetEntitlementOwnershipToken' test.out

#- 388 SyncTwitchDropsEntitlement
samples/cli/sample-apps Platform syncTwitchDropsEntitlement \
    --namespace $AB_NAMESPACE \
    --body '{"gameId": "yKeOMjxxFt706Umk", "language": "suw-Yphp", "region": "SJUuuvi36PEepOJW"}' \
    > test.out 2>&1
eval_tap $? 388 'SyncTwitchDropsEntitlement' test.out

#- 389 PublicGetMyWallet
samples/cli/sample-apps Platform publicGetMyWallet \
    --currencyCode '9UXgzSpartvvMxlQ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 389 'PublicGetMyWallet' test.out

#- 390 SyncEpicGameDLC
samples/cli/sample-apps Platform syncEpicGameDLC \
    --namespace $AB_NAMESPACE \
    --userId 'D4W3nTGHBwoDp8CE' \
    --body '{"epicGamesJwtToken": "pDt1F6d1JQGoLy8C"}' \
    > test.out 2>&1
eval_tap $? 390 'SyncEpicGameDLC' test.out

#- 391 SyncOculusDLC
samples/cli/sample-apps Platform syncOculusDLC \
    --namespace $AB_NAMESPACE \
    --userId 'Q8UWe37jg1eMeCdn' \
    > test.out 2>&1
eval_tap $? 391 'SyncOculusDLC' test.out

#- 392 PublicSyncPsnDlcInventory
samples/cli/sample-apps Platform publicSyncPsnDlcInventory \
    --namespace $AB_NAMESPACE \
    --userId 'Yk5u4ODZiJeEpm3G' \
    --body '{"serviceLabel": 50}' \
    > test.out 2>&1
eval_tap $? 392 'PublicSyncPsnDlcInventory' test.out

#- 393 PublicSyncPsnDlcInventoryWithMultipleServiceLabels
samples/cli/sample-apps Platform publicSyncPsnDlcInventoryWithMultipleServiceLabels \
    --namespace $AB_NAMESPACE \
    --userId 'zs1wx30goKYielhP' \
    --body '{"serviceLabels": [8, 76, 5]}' \
    > test.out 2>&1
eval_tap $? 393 'PublicSyncPsnDlcInventoryWithMultipleServiceLabels' test.out

#- 394 SyncSteamDLC
samples/cli/sample-apps Platform syncSteamDLC \
    --namespace $AB_NAMESPACE \
    --userId 'EmmuCVL6QnsRHITk' \
    --body '{"appId": "nmageLoHpDmLLeDc", "steamId": "j6fymkrTDcS9u6Im"}' \
    > test.out 2>&1
eval_tap $? 394 'SyncSteamDLC' test.out

#- 395 SyncXboxDLC
samples/cli/sample-apps Platform syncXboxDLC \
    --namespace $AB_NAMESPACE \
    --userId 'I27iUHk7Ob3llhrL' \
    --body '{"xstsToken": "vEeeeVZe9gGM4U7G"}' \
    > test.out 2>&1
eval_tap $? 395 'SyncXboxDLC' test.out

#- 396 PublicQueryUserEntitlements
samples/cli/sample-apps Platform publicQueryUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'Jb2TdcNf2LmRToDP' \
    --appType 'SOFTWARE' \
    --entitlementClazz 'MEDIA' \
    --entitlementName 'b6mv5d5ZWpMAqVDp' \
    --features '["HZsZUvoBaudv6Cn5", "9sBmWOYKEy6iwO9s", "Zy6r7quMQ5NFehlI"]' \
    --itemId '["EwOcjuG6394TuYTm", "98wTLkY77vTqNISc", "q2r0EeJTb0Fd9Gl4"]' \
    --limit '0' \
    --offset '0' \
    > test.out 2>&1
eval_tap $? 396 'PublicQueryUserEntitlements' test.out

#- 397 PublicGetUserAppEntitlementByAppId
samples/cli/sample-apps Platform publicGetUserAppEntitlementByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'JGEyaCcnJwxeb7zs' \
    --appId 'vSyfhyZajMKb21KM' \
    > test.out 2>&1
eval_tap $? 397 'PublicGetUserAppEntitlementByAppId' test.out

#- 398 PublicQueryUserEntitlementsByAppType
samples/cli/sample-apps Platform publicQueryUserEntitlementsByAppType \
    --namespace $AB_NAMESPACE \
    --userId 'qEb5m0j2i49AfaEu' \
    --limit '18' \
    --offset '67' \
    --appType 'SOFTWARE' \
    > test.out 2>&1
eval_tap $? 398 'PublicQueryUserEntitlementsByAppType' test.out

#- 399 PublicGetUserEntitlementsByIds
samples/cli/sample-apps Platform publicGetUserEntitlementsByIds \
    --namespace $AB_NAMESPACE \
    --userId 'He9z8n1F6uAINsHv' \
    --availablePlatformOnly 'true' \
    --ids '["Hge9N7InoYIRdeR8", "ly9NBBTl92WkOXPy", "DoFZj779IjOeDguz"]' \
    > test.out 2>&1
eval_tap $? 399 'PublicGetUserEntitlementsByIds' test.out

#- 400 PublicGetUserEntitlementByItemId
eval_tap 0 400 'PublicGetUserEntitlementByItemId # SKIP deprecated' test.out

#- 401 PublicGetUserEntitlementBySku
eval_tap 0 401 'PublicGetUserEntitlementBySku # SKIP deprecated' test.out

#- 402 PublicExistsAnyUserActiveEntitlement
samples/cli/sample-apps Platform publicExistsAnyUserActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'pnwCV6wEqxPaGHxF' \
    --appIds '["GoHhdCxSO9UthUg5", "OWmDa8tiYIkzqzQP", "I139FF2OqLLrWgtR"]' \
    --itemIds '["JXZjh5Ax26YrL2va", "m6caYjf03ZPuUxSS", "ntJItiH7ix0U75BO"]' \
    --skus '["0edckYs2yE5n0hHb", "L5gMKrJuQ3wlXh0o", "CrtkF9DxzvviahTy"]' \
    > test.out 2>&1
eval_tap $? 402 'PublicExistsAnyUserActiveEntitlement' test.out

#- 403 PublicGetUserAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform publicGetUserAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --userId '1qat1ZdRmcONvVch' \
    --appId 'UILfVXgE1q1MoY9E' \
    > test.out 2>&1
eval_tap $? 403 'PublicGetUserAppEntitlementOwnershipByAppId' test.out

#- 404 PublicGetUserEntitlementOwnershipByItemId
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --userId '07R6GbNJ4ta3FLmu' \
    --entitlementClazz 'MEDIA' \
    --itemId 'PI3kxXbU33CRSTAq' \
    > test.out 2>&1
eval_tap $? 404 'PublicGetUserEntitlementOwnershipByItemId' test.out

#- 405 PublicGetUserEntitlementOwnershipByItemIds
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'lrV0AFPcvrC4n3d9' \
    --ids '["KR0cE01vVk2XE7Dp", "GURV5JzNpPgO6wZD", "rPzTQXl8oQLdSJHE"]' \
    > test.out 2>&1
eval_tap $? 405 'PublicGetUserEntitlementOwnershipByItemIds' test.out

#- 406 PublicGetUserEntitlementOwnershipBySku
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --userId 'iZ8ZaJIWAU8ao384' \
    --entitlementClazz 'SUBSCRIPTION' \
    --sku 'xLBAOAO89d6V9Jiw' \
    > test.out 2>&1
eval_tap $? 406 'PublicGetUserEntitlementOwnershipBySku' test.out

#- 407 PublicGetUserEntitlement
samples/cli/sample-apps Platform publicGetUserEntitlement \
    --entitlementId 'skW5uE7MzhoP0goB' \
    --namespace $AB_NAMESPACE \
    --userId '1HGz26HuDAfGhASa' \
    > test.out 2>&1
eval_tap $? 407 'PublicGetUserEntitlement' test.out

#- 408 PublicConsumeUserEntitlement
samples/cli/sample-apps Platform publicConsumeUserEntitlement \
    --entitlementId 'xxaqeIEvZD7ZyDPS' \
    --namespace $AB_NAMESPACE \
    --userId 'xlLsBBHSTmo7By66' \
    --body '{"options": ["hbKZxyo7YuYcdlOw", "GEf9uhW1HJhz0TIf", "P3vX8bdipnFSFCPz"], "requestId": "ltNtUkSSw2Lr6obF", "useCount": 47}' \
    > test.out 2>&1
eval_tap $? 408 'PublicConsumeUserEntitlement' test.out

#- 409 PublicSellUserEntitlement
samples/cli/sample-apps Platform publicSellUserEntitlement \
    --entitlementId '7k1CRT20A28Wq6q7' \
    --namespace $AB_NAMESPACE \
    --userId 'vM2OAexhpF4ahhB8' \
    --body '{"requestId": "OYRoQJmX2xwiZxf6", "useCount": 28}' \
    > test.out 2>&1
eval_tap $? 409 'PublicSellUserEntitlement' test.out

#- 410 PublicSplitUserEntitlement
samples/cli/sample-apps Platform publicSplitUserEntitlement \
    --entitlementId 'JXafI3qEy2n5uAWU' \
    --namespace $AB_NAMESPACE \
    --userId 'sLTyhJvPtLgJ75TT' \
    --body '{"useCount": 51}' \
    > test.out 2>&1
eval_tap $? 410 'PublicSplitUserEntitlement' test.out

#- 411 PublicTransferUserEntitlement
samples/cli/sample-apps Platform publicTransferUserEntitlement \
    --entitlementId 'znCbojg1sJXwNqNk' \
    --namespace $AB_NAMESPACE \
    --userId 'w3XD9cln4scnWifi' \
    --body '{"entitlementId": "gv7CSu21QCoyjMaP", "useCount": 8}' \
    > test.out 2>&1
eval_tap $? 411 'PublicTransferUserEntitlement' test.out

#- 412 PublicRedeemCode
samples/cli/sample-apps Platform publicRedeemCode \
    --namespace $AB_NAMESPACE \
    --userId 'p9t4XW1o3StABES4' \
    --body '{"code": "QYXa9ChTJCWZb7Mf", "language": "LOtq", "region": "zSIa7qfvomWBUoec"}' \
    > test.out 2>&1
eval_tap $? 412 'PublicRedeemCode' test.out

#- 413 PublicFulfillAppleIAPItem
samples/cli/sample-apps Platform publicFulfillAppleIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'tfsswoa3tzCcTMHw' \
    --body '{"excludeOldTransactions": false, "language": "fhrO", "productId": "5zPvjiOj4ODz3k00", "receiptData": "01Iref9npQmxOkqA", "region": "NZ9Or7iZCndC2SkG", "transactionId": "myeD0gpqzg3IhDw9"}' \
    > test.out 2>&1
eval_tap $? 413 'PublicFulfillAppleIAPItem' test.out

#- 414 SyncEpicGamesInventory
samples/cli/sample-apps Platform syncEpicGamesInventory \
    --namespace $AB_NAMESPACE \
    --userId 'qm5Z0j0f4EbL6Pwb' \
    --body '{"epicGamesJwtToken": "5htJkYEiEllNinrG"}' \
    > test.out 2>&1
eval_tap $? 414 'SyncEpicGamesInventory' test.out

#- 415 PublicFulfillGoogleIAPItem
samples/cli/sample-apps Platform publicFulfillGoogleIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'DhcdFeq7sp2Zc5O7' \
    --body '{"autoAck": true, "language": "gup_dp", "orderId": "lufDGd83ldlOGmrb", "packageName": "fk2FQnyeIrmGazD3", "productId": "r0yquq9lzcNT2OZe", "purchaseTime": 81, "purchaseToken": "KUpg3Se31MDm1b1J", "region": "K9iiYwVldSl9Jnz8"}' \
    > test.out 2>&1
eval_tap $? 415 'PublicFulfillGoogleIAPItem' test.out

#- 416 SyncOculusConsumableEntitlements
samples/cli/sample-apps Platform syncOculusConsumableEntitlements \
    --namespace $AB_NAMESPACE \
    --userId '8YPfPUpcjhpCCGQ0' \
    > test.out 2>&1
eval_tap $? 416 'SyncOculusConsumableEntitlements' test.out

#- 417 PublicReconcilePlayStationStore
samples/cli/sample-apps Platform publicReconcilePlayStationStore \
    --namespace $AB_NAMESPACE \
    --userId '4P15z5ioAnp1KiNE' \
    --body '{"currencyCode": "Z7KeK8AALQtWVxyY", "price": 0.442225179507864, "productId": "1bSy94pwxi9c3e2w", "serviceLabel": 63}' \
    > test.out 2>&1
eval_tap $? 417 'PublicReconcilePlayStationStore' test.out

#- 418 PublicReconcilePlayStationStoreWithMultipleServiceLabels
samples/cli/sample-apps Platform publicReconcilePlayStationStoreWithMultipleServiceLabels \
    --namespace $AB_NAMESPACE \
    --userId '9pU7H1xeLD8meExE' \
    --body '{"currencyCode": "W6ABzEeisKYfm13A", "price": 0.030877735314280397, "productId": "d2pk5nACxjCOONGM", "serviceLabels": [96, 70, 47]}' \
    > test.out 2>&1
eval_tap $? 418 'PublicReconcilePlayStationStoreWithMultipleServiceLabels' test.out

#- 419 SyncSteamInventory
samples/cli/sample-apps Platform syncSteamInventory \
    --namespace $AB_NAMESPACE \
    --userId 's5M92LbNrj126s9Q' \
    --body '{"appId": "u9bGxiJUXDRYMyLx", "currencyCode": "GdqcKOvBc1rsmT6F", "language": "zHNH_hcGu-uu", "price": 0.3135426955124241, "productId": "s0vqtTbalAS3oacc", "region": "4ZrNFajBGhFXg87P", "steamId": "i2yAwUFBgz8voFUS"}' \
    > test.out 2>&1
eval_tap $? 419 'SyncSteamInventory' test.out

#- 420 SyncTwitchDropsEntitlement1
samples/cli/sample-apps Platform syncTwitchDropsEntitlement1 \
    --namespace $AB_NAMESPACE \
    --userId '50g4BWqZbnY28xJv' \
    --body '{"gameId": "HgfJtFCEHMsLpsP9", "language": "cv_nZwf", "region": "WFwvQqtYGU4U4RxB"}' \
    > test.out 2>&1
eval_tap $? 420 'SyncTwitchDropsEntitlement1' test.out

#- 421 SyncXboxInventory
samples/cli/sample-apps Platform syncXboxInventory \
    --namespace $AB_NAMESPACE \
    --userId 'hKjxgiyrU8hoTODB' \
    --body '{"currencyCode": "Uxq9obyVVHu0RH89", "price": 0.6318846087695481, "productId": "BL4QHCBbKriDbOcT", "xstsToken": "hsJEFXuioMi9U7bO"}' \
    > test.out 2>&1
eval_tap $? 421 'SyncXboxInventory' test.out

#- 422 PublicQueryUserOrders
samples/cli/sample-apps Platform publicQueryUserOrders \
    --namespace $AB_NAMESPACE \
    --userId 'at2Fxtf61pOGJvoj' \
    --itemId 'jl4ijBtalyjtNka5' \
    --limit '40' \
    --offset '44' \
    --status 'REFUNDING' \
    > test.out 2>&1
eval_tap $? 422 'PublicQueryUserOrders' test.out

#- 423 PublicCreateUserOrder
samples/cli/sample-apps Platform publicCreateUserOrder \
    --namespace $AB_NAMESPACE \
    --userId '7ADysGLSoP9p9HJ9' \
    --body '{"currencyCode": "4MiweLRBxU0chU95", "discountedPrice": 49, "ext": {"LI4KGUvp4jCELtTA": {}, "oQ42gEo5itp3azO9": {}, "h2cWOkJSVCgvbJu4": {}}, "itemId": "mDJESAEa1idsz7DH", "language": "vxZr-cNXW-067", "price": 13, "quantity": 75, "region": "BZtRqJ3kisw8wwXL", "returnUrl": "1R2AyYumVp7aSEhQ", "sectionId": "CF7U0WBOc4XPWvY6"}' \
    > test.out 2>&1
eval_tap $? 423 'PublicCreateUserOrder' test.out

#- 424 PublicGetUserOrder
samples/cli/sample-apps Platform publicGetUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'jzV1AijIPHCJpqNY' \
    --userId 'qTPT88Uc0M6jC7oA' \
    > test.out 2>&1
eval_tap $? 424 'PublicGetUserOrder' test.out

#- 425 PublicCancelUserOrder
samples/cli/sample-apps Platform publicCancelUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'YX2WlC1x44KVpPld' \
    --userId 'OPIRGaXOxT4x2SPb' \
    > test.out 2>&1
eval_tap $? 425 'PublicCancelUserOrder' test.out

#- 426 PublicGetUserOrderHistories
samples/cli/sample-apps Platform publicGetUserOrderHistories \
    --namespace $AB_NAMESPACE \
    --orderNo 'vas49saWUCZuWJZC' \
    --userId 'X9PwOFvVi6XAQGVV' \
    > test.out 2>&1
eval_tap $? 426 'PublicGetUserOrderHistories' test.out

#- 427 PublicDownloadUserOrderReceipt
samples/cli/sample-apps Platform publicDownloadUserOrderReceipt \
    --namespace $AB_NAMESPACE \
    --orderNo 'ojPgKTOe9vg51FBC' \
    --userId 'wDftFUFHlz5rjWhI' \
    > test.out 2>&1
eval_tap $? 427 'PublicDownloadUserOrderReceipt' test.out

#- 428 PublicGetPaymentAccounts
samples/cli/sample-apps Platform publicGetPaymentAccounts \
    --namespace $AB_NAMESPACE \
    --userId '7DTRwhDxeN748q7S' \
    > test.out 2>&1
eval_tap $? 428 'PublicGetPaymentAccounts' test.out

#- 429 PublicDeletePaymentAccount
samples/cli/sample-apps Platform publicDeletePaymentAccount \
    --id 'YlA4DC26vV33pYGO' \
    --namespace $AB_NAMESPACE \
    --type 'paypal' \
    --userId '4hWgEBqpca1rqAla' \
    > test.out 2>&1
eval_tap $? 429 'PublicDeletePaymentAccount' test.out

#- 430 PublicListActiveSections
samples/cli/sample-apps Platform publicListActiveSections \
    --namespace $AB_NAMESPACE \
    --userId 'npClXHI53mSGkdlj' \
    --autoCalcEstimatedPrice 'true' \
    --language '4O4s6wf3afyqbwKc' \
    --region 'iLXtE5xFvrzHRcto' \
    --storeId 'P8v65hvql2GBsu6L' \
    --viewId '2IsZRFmOUrTbcR33' \
    > test.out 2>&1
eval_tap $? 430 'PublicListActiveSections' test.out

#- 431 PublicQueryUserSubscriptions
samples/cli/sample-apps Platform publicQueryUserSubscriptions \
    --namespace $AB_NAMESPACE \
    --userId 'LS67ynIUlsHLM9qO' \
    --chargeStatus 'CHARGE_FAILED' \
    --itemId 'i2HqNQMqCdAYZqxm' \
    --limit '68' \
    --offset '39' \
    --sku 'QyiEoBGu6CncjroN' \
    --status 'ACTIVE' \
    --subscribedBy 'USER' \
    > test.out 2>&1
eval_tap $? 431 'PublicQueryUserSubscriptions' test.out

#- 432 PublicSubscribeSubscription
samples/cli/sample-apps Platform publicSubscribeSubscription \
    --namespace $AB_NAMESPACE \
    --userId 'Lt3hym5a3NO27lC6' \
    --body '{"currencyCode": "97juofYfEILnZtNH", "itemId": "zei63x1HEtRbcu6d", "language": "EpTa", "region": "4CVSlR8wYWyI5YYT", "returnUrl": "h1yCKxmfJijzK2gW", "source": "9SDS6JA7Lz4ivCw2"}' \
    > test.out 2>&1
eval_tap $? 432 'PublicSubscribeSubscription' test.out

#- 433 PublicCheckUserSubscriptionSubscribableByItemId
samples/cli/sample-apps Platform publicCheckUserSubscriptionSubscribableByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'TYWjwGKDhTtF3jO8' \
    --itemId 'eCVGLjgyeve7ZkG6' \
    > test.out 2>&1
eval_tap $? 433 'PublicCheckUserSubscriptionSubscribableByItemId' test.out

#- 434 PublicGetUserSubscription
samples/cli/sample-apps Platform publicGetUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'WUviUVgsDo79x2Vw' \
    --userId 'wCEkwCCnG61m7vQw' \
    > test.out 2>&1
eval_tap $? 434 'PublicGetUserSubscription' test.out

#- 435 PublicChangeSubscriptionBillingAccount
samples/cli/sample-apps Platform publicChangeSubscriptionBillingAccount \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'xm3NJ7tB7ePsYpvk' \
    --userId 'pYc9O8NRypEqbaoo' \
    > test.out 2>&1
eval_tap $? 435 'PublicChangeSubscriptionBillingAccount' test.out

#- 436 PublicCancelSubscription
samples/cli/sample-apps Platform publicCancelSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'srw2kg0b1JkcKYtt' \
    --userId 'JVzjev6wdBKu9F03' \
    --body '{"immediate": true, "reason": "DqSCVI1LF9V1NP7I"}' \
    > test.out 2>&1
eval_tap $? 436 'PublicCancelSubscription' test.out

#- 437 PublicGetUserSubscriptionBillingHistories
samples/cli/sample-apps Platform publicGetUserSubscriptionBillingHistories \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'iNj7GYGPzfEet3Rw' \
    --userId '5jLx3WZrJ6BPmH2R' \
    --excludeFree 'true' \
    --limit '19' \
    --offset '66' \
    > test.out 2>&1
eval_tap $? 437 'PublicGetUserSubscriptionBillingHistories' test.out

#- 438 PublicListViews
samples/cli/sample-apps Platform publicListViews \
    --namespace $AB_NAMESPACE \
    --userId 'hf5PMnw0qfeXqZHY' \
    --language 'pZiNmAjAz9Q0aNbo' \
    --storeId 'Ai2zMBAs4qcEb1k9' \
    > test.out 2>&1
eval_tap $? 438 'PublicListViews' test.out

#- 439 PublicGetWallet
samples/cli/sample-apps Platform publicGetWallet \
    --currencyCode 'h3vy04GR00dIVc29' \
    --namespace $AB_NAMESPACE \
    --userId 'Zwge1yZJGLvXIgjM' \
    > test.out 2>&1
eval_tap $? 439 'PublicGetWallet' test.out

#- 440 PublicListUserWalletTransactions
samples/cli/sample-apps Platform publicListUserWalletTransactions \
    --currencyCode 'vckoSJLEoMEDLaQL' \
    --namespace $AB_NAMESPACE \
    --userId '0hYwcJIKpChvvxqf' \
    --limit '54' \
    --offset '95' \
    > test.out 2>&1
eval_tap $? 440 'PublicListUserWalletTransactions' test.out

#- 441 QueryItems1
samples/cli/sample-apps Platform queryItems1 \
    --namespace $AB_NAMESPACE \
    --appType 'GAME' \
    --availableDate 'SqqgyZXdd4tjpRgQ' \
    --baseAppId 'hkFgFI6dg5w7lH0s' \
    --categoryPath 'XsFMKeyKWd8GMeLm' \
    --features '92SqGdL2dUwO8gdZ' \
    --includeSubCategoryItem 'true' \
    --itemName 'BOvtPT20EApaok6s' \
    --itemStatus 'ACTIVE' \
    --itemType 'SUBSCRIPTION' \
    --limit '46' \
    --offset '77' \
    --region 'BWj59997pxzUxt5H' \
    --sectionExclusive 'true' \
    --sortBy '["updatedAt:desc", "name:desc", "updatedAt"]' \
    --storeId '5cGaMY0V89dEHdEZ' \
    --tags '3SU0hzmgL2mrssyZ' \
    --targetNamespace 'TqNuRFmTeEcP1hBP' \
    --withTotal 'false' \
    > test.out 2>&1
eval_tap $? 441 'QueryItems1' test.out

#- 442 ImportStore1
samples/cli/sample-apps Platform importStore1 \
    --namespace $AB_NAMESPACE \
    --storeId 'Duv9D60HloRqAzJI' \
    --strictMode 'true' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 442 'ImportStore1' test.out

#- 443 ExportStore1
samples/cli/sample-apps Platform exportStore1 \
    --namespace $AB_NAMESPACE \
    --storeId 'SkRLhUZznD3MWI3d' \
    --body '{"itemIds": ["vlxJTSGCnDXqhGkS", "6TXWSWSUUY1duNCL", "FJczZSbx4Y23Ajxh"]}' \
    > test.out 2>&1
eval_tap $? 443 'ExportStore1' test.out

#- 444 FulfillRewardsV2
samples/cli/sample-apps Platform fulfillRewardsV2 \
    --namespace $AB_NAMESPACE \
    --userId 'kg5dwsnGDyL7KbNw' \
    --body '{"entitlementCollectionId": "IANANJVyU8xKq7e8", "entitlementOrigin": "Epic", "metadata": {"L6x7rqHDCpQjSpXD": {}, "o6j5FBH0kaY2ndWz": {}, "du0eIoJEdENA88Mh": {}}, "origin": "GooglePlay", "rewards": [{"currency": {"currencyCode": "q0OZcK9QWCsCKoxR", "namespace": "RYuVqpm0mBSaU2Rc"}, "item": {"itemId": "us9i3kLf6LXPlKfK", "itemSku": "7vB6Uq30EDNFyPP3", "itemType": "wBdQ9JPjt7j7KolR"}, "quantity": 18, "type": "CURRENCY"}, {"currency": {"currencyCode": "OHMv4b9ym8S2bO0x", "namespace": "Yn4Qgd5C4UQ95Heg"}, "item": {"itemId": "wZ0XYdOF4ovIzPU8", "itemSku": "hgQRMFkNhSFhOow3", "itemType": "ueMaPoFqSAnpsmhw"}, "quantity": 70, "type": "ITEM"}, {"currency": {"currencyCode": "B2keRxMFLxyhpXpU", "namespace": "NCJXXwpGgrHaXTWU"}, "item": {"itemId": "IY03pN88ZRe1Gnps", "itemSku": "9ltmpTfrdBllcOum", "itemType": "CJWtlzleYM4RAnQp"}, "quantity": 43, "type": "CURRENCY"}], "source": "CONSUME_ENTITLEMENT", "transactionId": "I8ahLGhLaI5AyODA"}' \
    > test.out 2>&1
eval_tap $? 444 'FulfillRewardsV2' test.out


rm -f "tmp.dat"

exit $EXIT_CODE