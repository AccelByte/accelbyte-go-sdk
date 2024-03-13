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
    --id 'djDb7PDfZS9HgaBI' \
    > test.out 2>&1
eval_tap $? 3 'GetFulfillmentScript' test.out

#- 4 CreateFulfillmentScript
samples/cli/sample-apps Platform createFulfillmentScript \
    --id 'h7B8XtZzkAAXiFsc' \
    --body '{"grantDays": "RdFwIGC7w6qbsihc"}' \
    > test.out 2>&1
eval_tap $? 4 'CreateFulfillmentScript' test.out

#- 5 DeleteFulfillmentScript
samples/cli/sample-apps Platform deleteFulfillmentScript \
    --id 'vszTbQkAJxsC4PeH' \
    > test.out 2>&1
eval_tap $? 5 'DeleteFulfillmentScript' test.out

#- 6 UpdateFulfillmentScript
samples/cli/sample-apps Platform updateFulfillmentScript \
    --id 'jiWrDVDk1ovGxZ9R' \
    --body '{"grantDays": "n0jKndDHlKEdHtSd"}' \
    > test.out 2>&1
eval_tap $? 6 'UpdateFulfillmentScript' test.out

#- 7 ListItemTypeConfigs
samples/cli/sample-apps Platform listItemTypeConfigs \
    > test.out 2>&1
eval_tap $? 7 'ListItemTypeConfigs' test.out

#- 8 CreateItemTypeConfig
samples/cli/sample-apps Platform createItemTypeConfig \
    --body '{"clazz": "yGfUbt50L3TzRRPd", "dryRun": true, "fulfillmentUrl": "1WXgQUaecPTND2sZ", "itemType": "COINS", "purchaseConditionUrl": "BYskhAd4hDemsQYG"}' \
    > test.out 2>&1
eval_tap $? 8 'CreateItemTypeConfig' test.out

#- 9 SearchItemTypeConfig
samples/cli/sample-apps Platform searchItemTypeConfig \
    --clazz 'lrmD391L9Zy5g5Vx' \
    --itemType 'INGAMEITEM' \
    > test.out 2>&1
eval_tap $? 9 'SearchItemTypeConfig' test.out

#- 10 GetItemTypeConfig
samples/cli/sample-apps Platform getItemTypeConfig \
    --id 'jhuQqLXdDRx0eWM0' \
    > test.out 2>&1
eval_tap $? 10 'GetItemTypeConfig' test.out

#- 11 UpdateItemTypeConfig
samples/cli/sample-apps Platform updateItemTypeConfig \
    --id 'S0vBbdBpNo7vsZue' \
    --body '{"clazz": "Vj53rxUj7FeH49OI", "dryRun": true, "fulfillmentUrl": "wwbYjp4A20own3Sq", "purchaseConditionUrl": "KmLJUWs5GNGtYZzR"}' \
    > test.out 2>&1
eval_tap $? 11 'UpdateItemTypeConfig' test.out

#- 12 DeleteItemTypeConfig
samples/cli/sample-apps Platform deleteItemTypeConfig \
    --id 'D3cTguCNnG7LUt0G' \
    > test.out 2>&1
eval_tap $? 12 'DeleteItemTypeConfig' test.out

#- 13 QueryCampaigns
samples/cli/sample-apps Platform queryCampaigns \
    --namespace $AB_NAMESPACE \
    --limit '68' \
    --name 'x9AH5j3lLdoWxoN6' \
    --offset '0' \
    --tag 'TSFLTjBBsVoFnqrI' \
    > test.out 2>&1
eval_tap $? 13 'QueryCampaigns' test.out

#- 14 CreateCampaign
samples/cli/sample-apps Platform createCampaign \
    --namespace $AB_NAMESPACE \
    --body '{"description": "0uneaHfwyRhuZKcp", "items": [{"extraSubscriptionDays": 11, "itemId": "qiUdP2Sby7AL52qT", "itemName": "YNldBFdEOFh8mVRU", "quantity": 67}, {"extraSubscriptionDays": 35, "itemId": "hfF84RIt2GXKtBAn", "itemName": "0G4Nqo5W73Yd8r4A", "quantity": 8}, {"extraSubscriptionDays": 5, "itemId": "9w5PYv3fBT2j2ZIh", "itemName": "PxqpkVVjmfxxIA7v", "quantity": 94}], "maxRedeemCountPerCampaignPerUser": 19, "maxRedeemCountPerCode": 78, "maxRedeemCountPerCodePerUser": 87, "maxSaleCount": 91, "name": "Hpd1o7lDxVSGLaBi", "redeemEnd": "1999-06-25T00:00:00Z", "redeemStart": "1994-06-10T00:00:00Z", "redeemType": "ITEM", "status": "ACTIVE", "tags": ["Ov5h0tzuAt0sXmWJ", "zm2E8NTADdzQLw72", "VHVYYwx4qrcVkPwy"], "type": "REDEMPTION"}' \
    > test.out 2>&1
eval_tap $? 14 'CreateCampaign' test.out

#- 15 GetCampaign
samples/cli/sample-apps Platform getCampaign \
    --campaignId 'FtO5p6chuz2EECPC' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 15 'GetCampaign' test.out

#- 16 UpdateCampaign
samples/cli/sample-apps Platform updateCampaign \
    --campaignId 'DRlCEvdlEQBIah7o' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "6lrJzqc2cDydzzU9", "items": [{"extraSubscriptionDays": 76, "itemId": "b5wr7jSOX3prCp6r", "itemName": "1le9P8cFzfqF5S7H", "quantity": 39}, {"extraSubscriptionDays": 86, "itemId": "tbARlTo1CB1MUTxk", "itemName": "5vdRrMdK5fKTlHng", "quantity": 2}, {"extraSubscriptionDays": 48, "itemId": "l4zRJ1IA8Itgc7IP", "itemName": "E36Zab7IDkih2kGn", "quantity": 84}], "maxRedeemCountPerCampaignPerUser": 3, "maxRedeemCountPerCode": 41, "maxRedeemCountPerCodePerUser": 14, "maxSaleCount": 36, "name": "Hp14u5e2CqvYhm4T", "redeemEnd": "1989-07-22T00:00:00Z", "redeemStart": "1979-09-16T00:00:00Z", "redeemType": "ITEM", "status": "INACTIVE", "tags": ["mC6bo47wdHeb2Qkw", "FkbhCE0jtWoRYHQI", "EWeDS3wW8gnTXhYX"]}' \
    > test.out 2>&1
eval_tap $? 16 'UpdateCampaign' test.out

#- 17 GetCampaignDynamic
samples/cli/sample-apps Platform getCampaignDynamic \
    --campaignId '2ewJcqfu38VJkTK9' \
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
    --body '{"appConfig": {"appName": "p7cBU5Db5t37EzRr"}, "customConfig": {"connectionType": "INSECURE", "grpcServerAddress": "vSXtbYT5zTfWipwN"}, "extendType": "CUSTOM"}' \
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
    --body '{"appConfig": {"appName": "SQggzniFwUnJFIjM"}, "customConfig": {"connectionType": "INSECURE", "grpcServerAddress": "KBawVXawveHvDbgE"}, "extendType": "CUSTOM"}' \
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
    --storeId 'NaDIILnJKRw8kSus' \
    > test.out 2>&1
eval_tap $? 27 'GetRootCategories' test.out

#- 28 CreateCategory
samples/cli/sample-apps Platform createCategory \
    --namespace $AB_NAMESPACE \
    --storeId 'lv5A8xo5YSruh9zs' \
    --body '{"categoryPath": "dRYZPyf0L4HeYp7G", "localizationDisplayNames": {"Kx5a0m5vy0SzYtW8": "4JjcHaPxKlhRrGBa", "G64Rwt5ASGh15gIm": "VbEcSeRL06idWBHl", "LDjwqX4dtvG5gmpm": "tcmOuGII8Q1oW8i9"}}' \
    > test.out 2>&1
eval_tap $? 28 'CreateCategory' test.out

#- 29 ListCategoriesBasic
samples/cli/sample-apps Platform listCategoriesBasic \
    --namespace $AB_NAMESPACE \
    --storeId 'VqjFmweMxGdkEW00' \
    > test.out 2>&1
eval_tap $? 29 'ListCategoriesBasic' test.out

#- 30 GetCategory
samples/cli/sample-apps Platform getCategory \
    --categoryPath 'NqF05pZNrXefiB0L' \
    --namespace $AB_NAMESPACE \
    --storeId '6O6DdCVUuEuq3NBJ' \
    > test.out 2>&1
eval_tap $? 30 'GetCategory' test.out

#- 31 UpdateCategory
samples/cli/sample-apps Platform updateCategory \
    --categoryPath '8gMKuHCXZlmpGUwX' \
    --namespace $AB_NAMESPACE \
    --storeId 'DYQHb5TfF84h6WKR' \
    --body '{"localizationDisplayNames": {"hiRuQjhHITRe1vxL": "ktb21JuwwrwMqMLW", "s55gOZ4AvVhjOWWb": "fHglWmZOkEXYFvX4", "pbmRV3Zb2972Pw7g": "vVyAHmA8t63OSqk8"}}' \
    > test.out 2>&1
eval_tap $? 31 'UpdateCategory' test.out

#- 32 DeleteCategory
samples/cli/sample-apps Platform deleteCategory \
    --categoryPath 'qF0vZ4mwKOaOB0IE' \
    --namespace $AB_NAMESPACE \
    --storeId 'YC9VrpPdltdguVHo' \
    > test.out 2>&1
eval_tap $? 32 'DeleteCategory' test.out

#- 33 GetChildCategories
samples/cli/sample-apps Platform getChildCategories \
    --categoryPath 'SPy08dQKrSeGf76f' \
    --namespace $AB_NAMESPACE \
    --storeId '4WYAidhJLUHMNsrS' \
    > test.out 2>&1
eval_tap $? 33 'GetChildCategories' test.out

#- 34 GetDescendantCategories
samples/cli/sample-apps Platform getDescendantCategories \
    --categoryPath 'QkmvziVkJncOhk1l' \
    --namespace $AB_NAMESPACE \
    --storeId '6kJO9iiVfArBgF0R' \
    > test.out 2>&1
eval_tap $? 34 'GetDescendantCategories' test.out

#- 35 QueryCodes
samples/cli/sample-apps Platform queryCodes \
    --campaignId '0fXsuwXDAe34ScWU' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --batchNo '72' \
    --code 'GWxO0ZxSG2msogiu' \
    --limit '25' \
    --offset '68' \
    > test.out 2>&1
eval_tap $? 35 'QueryCodes' test.out

#- 36 CreateCodes
samples/cli/sample-apps Platform createCodes \
    --campaignId 'yejefDptCXkcHPiE' \
    --namespace $AB_NAMESPACE \
    --body '{"quantity": 38}' \
    > test.out 2>&1
eval_tap $? 36 'CreateCodes' test.out

#- 37 Download
samples/cli/sample-apps Platform download \
    --campaignId 'LR9pKRML807aAuJx' \
    --namespace $AB_NAMESPACE \
    --batchNo '62' \
    > test.out 2>&1
eval_tap $? 37 'Download' test.out

#- 38 BulkDisableCodes
samples/cli/sample-apps Platform bulkDisableCodes \
    --campaignId 'yhHP0tfUBLXJ5IYw' \
    --namespace $AB_NAMESPACE \
    --batchNo '56' \
    > test.out 2>&1
eval_tap $? 38 'BulkDisableCodes' test.out

#- 39 BulkEnableCodes
samples/cli/sample-apps Platform bulkEnableCodes \
    --campaignId 'unWoAqRjIPVE0x0D' \
    --namespace $AB_NAMESPACE \
    --batchNo '84' \
    > test.out 2>&1
eval_tap $? 39 'BulkEnableCodes' test.out

#- 40 QueryRedeemHistory
samples/cli/sample-apps Platform queryRedeemHistory \
    --campaignId '3WgrlXhSInH8SKMK' \
    --namespace $AB_NAMESPACE \
    --code 'Li8o2AG8jtcf3heq' \
    --limit '19' \
    --offset '41' \
    --userId 'Nocu6wfcUYm8t97w' \
    > test.out 2>&1
eval_tap $? 40 'QueryRedeemHistory' test.out

#- 41 GetCode
samples/cli/sample-apps Platform getCode \
    --code 'mcsy6QGaDbnLEriP' \
    --namespace $AB_NAMESPACE \
    --redeemable 'true' \
    > test.out 2>&1
eval_tap $? 41 'GetCode' test.out

#- 42 DisableCode
samples/cli/sample-apps Platform disableCode \
    --code 'hhNOSaEWd96EtUxg' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 42 'DisableCode' test.out

#- 43 EnableCode
samples/cli/sample-apps Platform enableCode \
    --code 'fzCVFVVeHDkNlVdW' \
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
    --body '{"currencyCode": "HxOZSLKEAGuWY7JO", "currencySymbol": "0JNNHL0DCw8NVQs3", "currencyType": "REAL", "decimals": 59, "localizationDescriptions": {"aE3rgejyeN3WfiLC": "2mCI4DKgT6BLbUNX", "0E2QgMmvNtjPOLRT": "7BwV5UznQMG0EjLC", "fbhlu2GRg347F4LH": "WAdKJETTr0MUkHwS"}}' \
    > test.out 2>&1
eval_tap $? 48 'CreateCurrency' test.out

#- 49 UpdateCurrency
samples/cli/sample-apps Platform updateCurrency \
    --currencyCode '2XxHtHXHTbdXXhKY' \
    --namespace $AB_NAMESPACE \
    --body '{"localizationDescriptions": {"MsG6xIVIw86CfpgT": "yvzkaT484cgQhexO", "jc2SGKubevqvxbmL": "q7jhhRFfsIal6tLM", "6wL5JxajlXHll7X2": "KsYVitSazPQbEge8"}}' \
    > test.out 2>&1
eval_tap $? 49 'UpdateCurrency' test.out

#- 50 DeleteCurrency
samples/cli/sample-apps Platform deleteCurrency \
    --currencyCode 'cVU6tE7Y13bjDXa5' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 50 'DeleteCurrency' test.out

#- 51 GetCurrencyConfig
samples/cli/sample-apps Platform getCurrencyConfig \
    --currencyCode 'Xm9rmzekak78JJHd' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 51 'GetCurrencyConfig' test.out

#- 52 GetCurrencySummary
samples/cli/sample-apps Platform getCurrencySummary \
    --currencyCode 'XW8hoh9Ke2fkWPAU' \
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
    --body '{"data": [{"id": "Qd4PBuaFqnxGridM", "rewards": [{"currency": {"currencyCode": "12XkEeXElBbPsdcp", "namespace": "wbdqfz2En9cgzyOZ"}, "item": {"itemId": "oKxcDYIffpzG5ucK", "itemSku": "fl6lsM63ZhgYdmeb", "itemType": "qNCElmArobh4DIZW"}, "quantity": 58, "type": "CURRENCY"}, {"currency": {"currencyCode": "1Dxx0U05VHVy5kjo", "namespace": "tAIy0MweasLKykeC"}, "item": {"itemId": "foBCTA1j9zpU065E", "itemSku": "OyQU7EqpPv3v2dHn", "itemType": "qNsWpxttVsp8zzwr"}, "quantity": 51, "type": "ITEM"}, {"currency": {"currencyCode": "CNu0cURX21Gknmb0", "namespace": "KBwcm73A1tNBOkQY"}, "item": {"itemId": "TVZcmnXnsIowKwMv", "itemSku": "vjNpkbao9yOmQdoV", "itemType": "hLuCuUuutkd78HXf"}, "quantity": 4, "type": "CURRENCY"}]}, {"id": "2aNQ0C0hbB8PwnWb", "rewards": [{"currency": {"currencyCode": "JqHocQCRCoBAsEmf", "namespace": "fhXrhZtjJI9oLtDO"}, "item": {"itemId": "DKryK8xtI3vPGnDb", "itemSku": "DE0veEMwXkITVPCZ", "itemType": "xF7SL0MfB3MEvt7F"}, "quantity": 32, "type": "CURRENCY"}, {"currency": {"currencyCode": "3ioY0g2xyxPCNyr8", "namespace": "et7SsY8n1OWWPwJx"}, "item": {"itemId": "11eKV72zXQiPsSZL", "itemSku": "bKJmAMMNbVSQEDlH", "itemType": "Ib6lPCjL1I0IivyG"}, "quantity": 93, "type": "ITEM"}, {"currency": {"currencyCode": "8rH5uir1rPwWIxIb", "namespace": "e2vzd4rf2vckPC8a"}, "item": {"itemId": "vLYlX89XgBEz5QOP", "itemSku": "1JTzY0CHYCHOSqh7", "itemType": "qXRGw3ehhosOst9F"}, "quantity": 39, "type": "CURRENCY"}]}, {"id": "FA8ZxHjsyZBysgxT", "rewards": [{"currency": {"currencyCode": "M4UA0KfZ9KVUfJNv", "namespace": "uWS3RrXWybOnmrVx"}, "item": {"itemId": "X4OvEQPbKQCjCcKo", "itemSku": "OAHhbX8CD1ScG2tc", "itemType": "9tDmqEvBS52jYY9w"}, "quantity": 40, "type": "CURRENCY"}, {"currency": {"currencyCode": "UpprXiTnVgxXANFm", "namespace": "Eu9QaaBVyF7MmgQZ"}, "item": {"itemId": "Zz5Ar13G2Tm6NSfP", "itemSku": "07XTvZyED2JU7hNL", "itemType": "ngMwXM1vk9Ivz8Od"}, "quantity": 91, "type": "ITEM"}, {"currency": {"currencyCode": "TEb1rrsXDM7LwEYr", "namespace": "TlGaOqxdmZCJ4jOW"}, "item": {"itemId": "1mJ5D69co1H3uEf2", "itemSku": "Ee88MiISMTl0Vw7f", "itemType": "di95J7ND2hSPLq4L"}, "quantity": 64, "type": "ITEM"}]}]}' \
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
    --body '{"data": [{"platform": "STEAM", "platformDlcIdMap": {"J7fEc1QVbg6Slv2S": "pvmkwkD0MhQLbkzn", "dnq0K5JD8uLOhASq": "Y1RiX8EDBuEpGZqm", "TlWWRmISKZt3UjOl": "PSZ9dYGyCCw9Bz7Y"}}, {"platform": "STEAM", "platformDlcIdMap": {"8qRPdBb6IIThUys4": "yTJ0xk5aPwEaoBIj", "nCFWn0O4wZdrz217": "AbK86yfSqV9092dR", "nyffcng46ThCrI8b": "IF5wwnhd2w4Qqa5b"}}, {"platform": "PSN", "platformDlcIdMap": {"XcbhksGPBg9fsHmz": "IymnkjvmddpSZrWK", "gUOt0CDIz1XfQBWK": "ZVwiDCph36bpzFlY", "t9bWQf30wic6GDoP": "J0OC0Dn2KN04SIQg"}}]}' \
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
    --appType 'DLC' \
    --entitlementClazz 'LOOTBOX' \
    --entitlementName 'P5ZwfBVeJ69li9IQ' \
    --itemId '["L4J3Lwz94ij2Csr9", "mHFkjDMOERYOj98J", "0fEXyQjNEk5fyC7Z"]' \
    --limit '8' \
    --offset '16' \
    --origin 'System' \
    --userId 'WaN5sE49nasuH3QJ' \
    > test.out 2>&1
eval_tap $? 59 'QueryEntitlements' test.out

#- 60 QueryEntitlements1
samples/cli/sample-apps Platform queryEntitlements1 \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --itemIds '["n7LZtgFMk5AqboBB", "JmokSTV1hKM1085x", "YsqhxzeFiJu2GW5Y"]' \
    --limit '98' \
    --offset '76' \
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
    --body '{"entitlementGrantList": [{"collectionId": "NtNFKwWnMJse3pgB", "endDate": "1991-12-19T00:00:00Z", "grantedCode": "iwdO6eeWKV6ONGMQ", "itemId": "5XMHu9OIAMUHZeta", "itemNamespace": "A3OX5BmQ85JD2mLf", "language": "fkF", "origin": "GooglePlay", "quantity": 9, "region": "7X2EaG346Yc5rIDI", "source": "REDEEM_CODE", "startDate": "1998-10-08T00:00:00Z", "storeId": "UGPWZtDmRFl622LQ"}, {"collectionId": "z1e7JTCXswL4B03m", "endDate": "1978-07-01T00:00:00Z", "grantedCode": "tfxf17lBky16iQhu", "itemId": "e8m6cbRYKwlgUAOc", "itemNamespace": "fwhSAQV9l0RYq8xr", "language": "iT", "origin": "IOS", "quantity": 13, "region": "UWe7PISQCSyLEbBt", "source": "PROMOTION", "startDate": "1978-08-13T00:00:00Z", "storeId": "1CqYaUSfIINBT4k1"}, {"collectionId": "Hk3noMgJGAYHyiFD", "endDate": "1977-02-25T00:00:00Z", "grantedCode": "BlBJ3ac0cq0FKf7D", "itemId": "2uuRxeiOU8ywIXbJ", "itemNamespace": "Cl5Gks9t2PH7rYcB", "language": "AM_161", "origin": "Oculus", "quantity": 22, "region": "eJ9MkoWsCJoRAf4Z", "source": "PROMOTION", "startDate": "1975-09-14T00:00:00Z", "storeId": "D7Afb33KSKLHmJWu"}], "userIds": ["vIteYgnjXZeM7MdI", "MILL6e9Z5TaOs106", "3pRaxzUV94Hp9xeX"]}' \
    > test.out 2>&1
eval_tap $? 63 'GrantEntitlements' test.out

#- 64 RevokeEntitlements
samples/cli/sample-apps Platform revokeEntitlements \
    --namespace $AB_NAMESPACE \
    --body '["PqI4ZYl9G9n2fGlE", "BfR1ZilVqAF7uiBk", "FXxnu9xMEi20JPvA"]' \
    > test.out 2>&1
eval_tap $? 64 'RevokeEntitlements' test.out

#- 65 GetEntitlement
samples/cli/sample-apps Platform getEntitlement \
    --entitlementId 'iMrTb2KLE2JzrMFT' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 65 'GetEntitlement' test.out

#- 66 QueryFulfillmentHistories
samples/cli/sample-apps Platform queryFulfillmentHistories \
    --namespace $AB_NAMESPACE \
    --limit '51' \
    --offset '18' \
    --status 'FAIL' \
    --userId 'K9RGMBNBw7ulxl9F' \
    > test.out 2>&1
eval_tap $? 66 'QueryFulfillmentHistories' test.out

#- 67 QueryIAPClawbackHistory
samples/cli/sample-apps Platform queryIAPClawbackHistory \
    --namespace $AB_NAMESPACE \
    --endTime '4D04XnackDad0Mzd' \
    --eventType 'CHARGEBACK' \
    --externalOrderId 'uULcCW9wE4xCVti3' \
    --limit '100' \
    --offset '54' \
    --startTime 'GB4PNN0o5yw2lZrI' \
    --status 'SUCCESS' \
    --userId '6oxvKVnbcYkBCjdQ' \
    > test.out 2>&1
eval_tap $? 67 'QueryIAPClawbackHistory' test.out

#- 68 MockPlayStationStreamEvent
samples/cli/sample-apps Platform mockPlayStationStreamEvent \
    --namespace $AB_NAMESPACE \
    --body '{"body": {"account": "UmHclHc1RzJtvOsJ", "additionalData": {"entitlement": [{"clientTransaction": [{"amountConsumed": 80, "clientTransactionId": "iG1ymz3Z4kHEPDvj"}, {"amountConsumed": 98, "clientTransactionId": "HtzLZobki90aSQsj"}, {"amountConsumed": 18, "clientTransactionId": "vzH40hZBxXUfejb3"}], "entitlementId": "DTZt8QtiBrTnesNR", "usageCount": 52}, {"clientTransaction": [{"amountConsumed": 94, "clientTransactionId": "pR2po1nyNPdZR2l3"}, {"amountConsumed": 60, "clientTransactionId": "NZloJmZMG8zIM88Y"}, {"amountConsumed": 8, "clientTransactionId": "U9VBDDMbIUsbgU5C"}], "entitlementId": "wroSpUVsFiEPIyXl", "usageCount": 64}, {"clientTransaction": [{"amountConsumed": 3, "clientTransactionId": "BYlwBG0tZKiN4lZM"}, {"amountConsumed": 92, "clientTransactionId": "EmpIa0x2wf6AivwP"}, {"amountConsumed": 78, "clientTransactionId": "2APIB0bmcrnqF1ut"}], "entitlementId": "o77tWRJ9bscARlQ9", "usageCount": 57}], "purpose": "YcG8neVp4vV6ORYd"}, "originalTitleName": "B4kmTiWkLt5h9vh5", "paymentProductSKU": "m6eeDSJn07gVmcIs", "purchaseDate": "dH76SzznSKP6dieX", "sourceOrderItemId": "8R6EQXO5mCuGBxFr", "titleName": "3fuyZAC6ockT5q5M"}, "eventDomain": "t7gY0CzW11nHwcCC", "eventSource": "Psc0kFNfuetUNgbl", "eventType": "x0gN9JWmYNyHy4LP", "eventVersion": 27, "id": "1JB2cfOAZemF2XWC", "timestamp": "nLOPA2OOtQBQlPDr"}' \
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
    --body '{"bundleId": "TrmlwCyfrjkVSrNx", "password": "72ZuOs11zdCkfXK5"}' \
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
    --body '{"sandboxId": "OB8cANHUhyPMw1IA"}' \
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
    --body '{"applicationName": "DPbkumnnYMLibuGc", "serviceAccountId": "qel1cAlduFgzIimX"}' \
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
    --body '{"data": [{"itemIdentity": "IcmRtIxdIKLhtXcf", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"GpfvXCycHOfAlzs5": "cjCaKseWqA2BtHmz", "cku8cOgNkvTJZQu6": "ifBSgrtAYwiU4mbI", "yh9hJkbSE5Z10XDA": "AaS80zQHFq0yFQWU"}}, {"itemIdentity": "91zJy8WDVUv3zN6B", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"uB5dZSpepf9s77jG": "mPeEXduMmVqyhgiy", "Hg58jHD9hj7SdwQv": "DQD4E6mZxOlzykqG", "aCaulW9yLP63DgFg": "Gj75PPDeSz22aUoW"}}, {"itemIdentity": "JXja53hEcckoAmtU", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"v20EEdLHmQmj8Ozj": "ODfiJ7z7eYI1Fl0U", "2PMRsE9lRJfY4L7k": "siXvWdJmSGmOUvNe", "z1hCQAXDyToEMIsR": "w5GUjr76L8LZpTka"}}]}' \
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
    --body '{"appId": "96m0ijmVeATuLarZ", "appSecret": "QLYXTWAxaPtlkvTL"}' \
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
    --body '{"backOfficeServerClientId": "BpSlhpncIpb6RFSl", "backOfficeServerClientSecret": "PgU6wk4iT5o6ZMPR", "enableStreamJob": false, "environment": "qTOjy0MJa5wJiYRr", "streamName": "ocjB5RFKQZR756Y8", "streamPartnerName": "WB52t0eY2EcFjwH8"}' \
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
    --body '{"backOfficeServerClientId": "HnVzVp0G94TEn8DH", "backOfficeServerClientSecret": "OXpS3S7gyf3qREYD", "enableStreamJob": false, "environment": "wGgI3QQ3RwdIe8gJ", "streamName": "x9dqogWOnuZRHhK1", "streamPartnerName": "qxz2yKwncApox8Vi"}' \
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
    --body '{"appId": "KFeMuvMemnKWXXsz", "publisherAuthenticationKey": "FRf5w32MIvB2L22S"}' \
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
    --body '{"clientId": "WZPItWfLncnfxGoW", "clientSecret": "mcGICjDkiZ8S2LTs", "organizationId": "4chJZnlhtGC31LRk"}' \
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
    --body '{"relyingPartyCert": "V82OPU35oiKbBUJ7"}' \
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
    --password 'goZQlCkVOojtsGA9' \
    > test.out 2>&1
eval_tap $? 99 'UpdateXblBPCertFile' test.out

#- 100 DownloadInvoiceDetails
samples/cli/sample-apps Platform downloadInvoiceDetails \
    --namespace $AB_NAMESPACE \
    --feature 'poT5QS76Vivu3Dj6' \
    --itemId '1sKEzZibLtZAvHFp' \
    --itemType 'INGAMEITEM' \
    --endTime 'E59beJ5ByRc8CJUJ' \
    --startTime 'F9pOImUo0oUG35l0' \
    > test.out 2>&1
eval_tap $? 100 'DownloadInvoiceDetails' test.out

#- 101 GenerateInvoiceSummary
samples/cli/sample-apps Platform generateInvoiceSummary \
    --namespace $AB_NAMESPACE \
    --feature 'NJ8yYgy94PDEwHwR' \
    --itemId 'wBz3gJph8IsSybX6' \
    --itemType 'SEASON' \
    --endTime 'm1oeyoqUen3IXNkm' \
    --startTime 'D3NNlyO4p7oAdGZS' \
    > test.out 2>&1
eval_tap $? 101 'GenerateInvoiceSummary' test.out

#- 102 SyncInGameItem
samples/cli/sample-apps Platform syncInGameItem \
    --namespace $AB_NAMESPACE \
    --storeId 'myerdzj0Ds5dmCmB' \
    --body '{"categoryPath": "7O9nTh8m9s6Q5YCy", "targetItemId": "7HZnRNqDYJPLm0Ih", "targetNamespace": "QePxUnq2NBYoOHI9"}' \
    > test.out 2>&1
eval_tap $? 102 'SyncInGameItem' test.out

#- 103 CreateItem
samples/cli/sample-apps Platform createItem \
    --namespace $AB_NAMESPACE \
    --storeId 'kIND0LdNJnSvzIKx' \
    --body '{"appId": "hHDWyYxr2bWRtQWx", "appType": "SOFTWARE", "baseAppId": "Ze3k3BNTgd2Zshn6", "boothName": "9ZCesV9LhtoXYSj6", "categoryPath": "vVkNuZx6TFiBSmdE", "clazz": "LxMxQnL80SbdwWDX", "displayOrder": 99, "entitlementType": "CONSUMABLE", "ext": {"ozu4uhokmPWx3mEf": {}, "6KYbicAtmFAsXjiT": {}, "Y1yT3LPzdNPi8Hhr": {}}, "features": ["BF4UTy9DONAykpUS", "gpvSY8kMQCsdIjOD", "ZkoyGUpJT4111qlr"], "flexible": true, "images": [{"as": "WnADD3N9OA2RTXvw", "caption": "671M7adaBaNYYaJ3", "height": 9, "imageUrl": "hIQ0Phxo5ynQHnZV", "smallImageUrl": "VhDT8LKV5sJ9HIqg", "width": 88}, {"as": "GxllzACZmfd6tRbB", "caption": "y88L1tLzPBytpLmC", "height": 56, "imageUrl": "a79Kllg21Wnz61Bi", "smallImageUrl": "qikzKvcVJweRAsle", "width": 75}, {"as": "EhlQpGK4hnoWWmbk", "caption": "utgHLrTEc3u8lGdv", "height": 38, "imageUrl": "JVE7kljQSfiGzqqy", "smallImageUrl": "ZcOZgZLYfPhZDoqf", "width": 77}], "inventoryConfig": {"customAttributes": {"px6kZcHxBZKWwvNF": {}, "Zw16kgaBwEnPTDhD": {}, "x3DXGbPEcaKX4B3u": {}}, "serverCustomAttributes": {"JmLdSxkRsNIWaDHG": {}, "tZE9iOeg66eaFalA": {}, "0WqNNsZNhtMXvM7y": {}}, "slotUsed": 84}, "itemIds": ["Hayt1PTaIaaf3Ag6", "ZepLXTerit9dSrlJ", "X3SwlsaGYQQDS8Qg"], "itemQty": {"Uca1fdOGix79RnM6": 11, "cnq8Ys7fPH8oDIgr": 41, "OwYOEhvkZWU8FWLr": 11}, "itemType": "LOOTBOX", "listable": false, "localizations": {"es1ptpdnG8UaVDcC": {"description": "qXspTaaM5MebPO1d", "localExt": {"LqV7XtIH9M92NFte": {}, "bHNPeRBc3rfp7SzI": {}, "xngUobnwo1i4irCT": {}}, "longDescription": "cGWZfvKOZboa0anY", "title": "EF76pn6ji9b29RdB"}, "F8QlsOejYGOzLx7T": {"description": "1RJ0Vg0MLnBCs0x7", "localExt": {"OaOZ2ClbqYvuRqMX": {}, "rdg2jH9gV4NW2NHR": {}, "iT9vGHELj7VuEUbv": {}}, "longDescription": "oZNgtoyHQKn2MarM", "title": "zZVqyYBKElgX2EjT"}, "GGe8m2BE0EXbizO6": {"description": "sqXK8TXCcNqY1dw5", "localExt": {"afNQehFXIggjh1gd": {}, "9YmW8y6QAICyimqe": {}, "Tv8x4v76SlmYKevW": {}}, "longDescription": "hnhYDFHkiseqb2ZF", "title": "MLG6wV9qhH0CENP1"}}, "lootBoxConfig": {"rewardCount": 94, "rewards": [{"lootBoxItems": [{"count": 87, "duration": 93, "endDate": "1996-07-04T00:00:00Z", "itemId": "86OpEZN2n4ZBJYxa", "itemSku": "2Z0Boyzju95gvr2S", "itemType": "gAI5JRVsuweXnERi"}, {"count": 13, "duration": 74, "endDate": "1972-03-11T00:00:00Z", "itemId": "Cr2YeXQtJjd2SZuA", "itemSku": "9okkIdVhutqxVW1d", "itemType": "oOAOEej6vhK0ZKOE"}, {"count": 60, "duration": 85, "endDate": "1977-09-26T00:00:00Z", "itemId": "Iu5IwbWn0zMnZzlJ", "itemSku": "Dyl3LvT068UMVa9X", "itemType": "0rSQSvajp05x7n5R"}], "name": "f7j2ZwgGhkonEYkV", "odds": 0.29564068425812384, "type": "PROBABILITY_GROUP", "weight": 66}, {"lootBoxItems": [{"count": 100, "duration": 20, "endDate": "1991-02-27T00:00:00Z", "itemId": "PlZG1DcFvchXE9sA", "itemSku": "UIxxPuPwd27NvKDa", "itemType": "iq6FIAZOmVpGN2Qp"}, {"count": 89, "duration": 72, "endDate": "1978-01-02T00:00:00Z", "itemId": "pSQtInW5T6NuufyN", "itemSku": "4J4sMI44D3IGG4kc", "itemType": "1k8X8bJbSN1xQBGB"}, {"count": 71, "duration": 46, "endDate": "1984-01-27T00:00:00Z", "itemId": "e1XkVB3VRnfPIz6M", "itemSku": "oCzauTyUWWLL4sbl", "itemType": "my4XTszbd3KGk5W1"}], "name": "ytHCWjRRzFTI1bIP", "odds": 0.8291173408420152, "type": "REWARD", "weight": 52}, {"lootBoxItems": [{"count": 22, "duration": 100, "endDate": "1994-04-02T00:00:00Z", "itemId": "RK4z0YyU252bfbVQ", "itemSku": "7kM6cCSxnvmc5bST", "itemType": "rkiTPxvgK3esK1kz"}, {"count": 44, "duration": 84, "endDate": "1991-05-06T00:00:00Z", "itemId": "Vda4zChYsGFwsmUy", "itemSku": "JVBc0RXroTSGUSOE", "itemType": "Gfe0USO88GMkDXWf"}, {"count": 8, "duration": 64, "endDate": "1990-06-05T00:00:00Z", "itemId": "fjVlkdEG6IFVPvPs", "itemSku": "BB6YDKe8OxRYGTca", "itemType": "IaImy52qW1HoHVkz"}], "name": "6IOm4wjhRutU8sec", "odds": 0.9242719281688295, "type": "REWARD", "weight": 49}], "rollFunction": "DEFAULT"}, "maxCount": 41, "maxCountPerUser": 83, "name": "eg1CuCm9DGx8hjdO", "optionBoxConfig": {"boxItems": [{"count": 41, "duration": 6, "endDate": "1980-09-07T00:00:00Z", "itemId": "ejGvHpjNnji4PXGj", "itemSku": "fvZhGXWGSUy6Gn3Z", "itemType": "kGKoRjRktoZ3gBVR"}, {"count": 69, "duration": 92, "endDate": "1993-05-03T00:00:00Z", "itemId": "Db4g3Qa1gAva2fp7", "itemSku": "LMqaIcjzlmZie1lw", "itemType": "nj0hLqnekD8YUBs5"}, {"count": 8, "duration": 51, "endDate": "1988-01-06T00:00:00Z", "itemId": "WGmnCJf97AdbtIPF", "itemSku": "MU4wMl2JSVO1Iw1H", "itemType": "vNUw8j207swLhUCH"}]}, "purchasable": false, "recurring": {"cycle": "QUARTERLY", "fixedFreeDays": 9, "fixedTrialCycles": 83, "graceDays": 6}, "regionData": {"D1t8Q6uDYEbgW3gQ": [{"currencyCode": "DwmVLpq9iIezmuS1", "currencyNamespace": "lusQdAcpKh8a4eJz", "currencyType": "REAL", "discountAmount": 97, "discountExpireAt": "1997-07-17T00:00:00Z", "discountPercentage": 14, "discountPurchaseAt": "1975-02-08T00:00:00Z", "expireAt": "1982-07-09T00:00:00Z", "price": 79, "purchaseAt": "1974-02-04T00:00:00Z", "trialPrice": 89}, {"currencyCode": "i71EJI9htXeX6Z3t", "currencyNamespace": "qOjyppGDjjwivKAX", "currencyType": "VIRTUAL", "discountAmount": 2, "discountExpireAt": "1997-01-22T00:00:00Z", "discountPercentage": 59, "discountPurchaseAt": "1986-10-09T00:00:00Z", "expireAt": "1978-05-29T00:00:00Z", "price": 48, "purchaseAt": "1976-11-08T00:00:00Z", "trialPrice": 51}, {"currencyCode": "zG1lDBXUapdrS7fT", "currencyNamespace": "mq0wTmps3S30B540", "currencyType": "VIRTUAL", "discountAmount": 100, "discountExpireAt": "1984-03-31T00:00:00Z", "discountPercentage": 34, "discountPurchaseAt": "1989-09-30T00:00:00Z", "expireAt": "1992-05-20T00:00:00Z", "price": 55, "purchaseAt": "1999-03-10T00:00:00Z", "trialPrice": 7}], "cSGDoaQlJJz7q2YI": [{"currencyCode": "cPMD2EI5OFv69Njn", "currencyNamespace": "E1NbYwXByvN0Isf1", "currencyType": "VIRTUAL", "discountAmount": 54, "discountExpireAt": "1997-11-29T00:00:00Z", "discountPercentage": 42, "discountPurchaseAt": "1994-03-07T00:00:00Z", "expireAt": "1975-01-20T00:00:00Z", "price": 53, "purchaseAt": "1980-04-15T00:00:00Z", "trialPrice": 27}, {"currencyCode": "rr0tFJV6OkOx0qlL", "currencyNamespace": "8vncQU9wSzm7CQkF", "currencyType": "REAL", "discountAmount": 21, "discountExpireAt": "1983-10-30T00:00:00Z", "discountPercentage": 72, "discountPurchaseAt": "1994-08-30T00:00:00Z", "expireAt": "1975-08-23T00:00:00Z", "price": 16, "purchaseAt": "1993-05-22T00:00:00Z", "trialPrice": 62}, {"currencyCode": "3bus8cxyg1cYZrPR", "currencyNamespace": "dR7HbbOQJWz2tGCq", "currencyType": "REAL", "discountAmount": 92, "discountExpireAt": "1991-10-07T00:00:00Z", "discountPercentage": 59, "discountPurchaseAt": "1997-03-29T00:00:00Z", "expireAt": "1973-04-20T00:00:00Z", "price": 76, "purchaseAt": "1975-04-19T00:00:00Z", "trialPrice": 58}], "qoCdZ7a5IWTBGLEi": [{"currencyCode": "8K5jsHtTFYvEcLAb", "currencyNamespace": "pIfURmGSjvJP4gac", "currencyType": "VIRTUAL", "discountAmount": 99, "discountExpireAt": "1974-02-19T00:00:00Z", "discountPercentage": 8, "discountPurchaseAt": "1997-04-08T00:00:00Z", "expireAt": "1992-11-17T00:00:00Z", "price": 78, "purchaseAt": "1997-01-01T00:00:00Z", "trialPrice": 64}, {"currencyCode": "nIV4kNXlHC4eMDp5", "currencyNamespace": "tgdmBkMhVGMhBcq3", "currencyType": "REAL", "discountAmount": 39, "discountExpireAt": "1996-08-26T00:00:00Z", "discountPercentage": 67, "discountPurchaseAt": "1975-11-14T00:00:00Z", "expireAt": "1993-03-01T00:00:00Z", "price": 26, "purchaseAt": "1998-12-03T00:00:00Z", "trialPrice": 77}, {"currencyCode": "8R5zAZ380qYwenGr", "currencyNamespace": "B0G4tf0RRNIkmj1q", "currencyType": "REAL", "discountAmount": 88, "discountExpireAt": "1978-06-21T00:00:00Z", "discountPercentage": 17, "discountPurchaseAt": "1991-04-29T00:00:00Z", "expireAt": "1974-04-25T00:00:00Z", "price": 36, "purchaseAt": "1996-08-27T00:00:00Z", "trialPrice": 33}]}, "saleConfig": {"currencyCode": "85eOsv4KHY53LgAB", "price": 79}, "seasonType": "PASS", "sectionExclusive": true, "sellable": true, "sku": "ocDDZlywGrlYDz53", "stackable": true, "status": "ACTIVE", "tags": ["D7feHldIAqm1hS0d", "EP1Ksguycwx2ESV7", "ZGqsEtONDrvcMNAi"], "targetCurrencyCode": "2wu2Eyw23vyTtOa3", "targetNamespace": "rPQAaRpQKEGb7Nk2", "thumbnailUrl": "SAkDMTOoYDXkxkYc", "useCount": 73}' \
    > test.out 2>&1
eval_tap $? 103 'CreateItem' test.out

#- 104 GetItemByAppId
samples/cli/sample-apps Platform getItemByAppId \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --storeId 'iNbTsIe3g1A8TPTw' \
    --appId '9iK7FouXeXl3nNkE' \
    > test.out 2>&1
eval_tap $? 104 'GetItemByAppId' test.out

#- 105 QueryItems
samples/cli/sample-apps Platform queryItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --appType 'DLC' \
    --availableDate 'sNK5WOh1quSlWAh1' \
    --baseAppId 'oDJBXtREEvdr6rjV' \
    --categoryPath 'ALKNtC0gY4IDsJPZ' \
    --features 'm01Hes2HrOUSWVGe' \
    --includeSubCategoryItem 'true' \
    --itemType 'SUBSCRIPTION' \
    --limit '15' \
    --offset '21' \
    --region '31Dnr9tiOWABGP3g' \
    --sortBy '["displayOrder:desc", "displayOrder", "name"]' \
    --storeId 'f8UYEZYyXhnYAPCj' \
    --tags 'nKbmdyEtkYEx8mRK' \
    --targetNamespace 'zfRbRR7Gdih7WmaF' \
    > test.out 2>&1
eval_tap $? 105 'QueryItems' test.out

#- 106 ListBasicItemsByFeatures
samples/cli/sample-apps Platform listBasicItemsByFeatures \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --features '["tUcY1qKJxOTIaByc", "ogYrDXHWzUnsnESy", "8MltQLG2KLROgtIy"]' \
    > test.out 2>&1
eval_tap $? 106 'ListBasicItemsByFeatures' test.out

#- 107 GetItems
samples/cli/sample-apps Platform getItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --storeId 'urzTsHrLjJmUmmT5' \
    --itemIds 'OyhO4ablKkyIQtLF' \
    > test.out 2>&1
eval_tap $? 107 'GetItems' test.out

#- 108 GetItemBySku
samples/cli/sample-apps Platform getItemBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'EItmQfOnolSDONiE' \
    --sku 'jS3tvNdVDHiWxlcP' \
    > test.out 2>&1
eval_tap $? 108 'GetItemBySku' test.out

#- 109 GetLocaleItemBySku
samples/cli/sample-apps Platform getLocaleItemBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --language 'ZRH3UjGDzPvDCxUK' \
    --populateBundle 'false' \
    --region '2uQe9iEge97me10u' \
    --storeId 'iyMhv5qhVeMOXwZt' \
    --sku 'N6NsyEmSpebo66d8' \
    > test.out 2>&1
eval_tap $? 109 'GetLocaleItemBySku' test.out

#- 110 GetEstimatedPrice
samples/cli/sample-apps Platform getEstimatedPrice \
    --namespace $AB_NAMESPACE \
    --platform 'PrrlqgvJeEl8gOdl' \
    --region 'JkhETcLIDLwC6MSb' \
    --storeId 'V7AvLl2uQ3SbV4an' \
    --itemIds 'tQc4ffcXlYFBa1a5' \
    --userId 'NpBOgp3Oy9gJeN4W' \
    > test.out 2>&1
eval_tap $? 110 'GetEstimatedPrice' test.out

#- 111 GetItemIdBySku
samples/cli/sample-apps Platform getItemIdBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --storeId 'zr0SyAtv5A2M4JCI' \
    --sku 'UGmhhiZevMkUalth' \
    > test.out 2>&1
eval_tap $? 111 'GetItemIdBySku' test.out

#- 112 GetBulkItemIdBySkus
samples/cli/sample-apps Platform getBulkItemIdBySkus \
    --namespace $AB_NAMESPACE \
    --sku '["ndrNMMCzMVHHjFJy", "1R4fMcLWjFDu15Pv", "kkoWMvkUSH9HMcRM"]' \
    --storeId 'cyeXfQz51fczWcFq' \
    > test.out 2>&1
eval_tap $? 112 'GetBulkItemIdBySkus' test.out

#- 113 BulkGetLocaleItems
samples/cli/sample-apps Platform bulkGetLocaleItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --language 'LQGrN0e692kk4BRR' \
    --region '1xTK9bDYoQpTCHfB' \
    --storeId 'Do6evtmMak7IXep8' \
    --itemIds 'E3RmyZ1uryeiHrTR' \
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
    --platform 'RwciMe2rd5cZjY0t' \
    --userId 'GJf7is0Mtdwvelis' \
    --body '{"itemIds": ["sNLuejtW05ZVGCNl", "MhQlG3IQZK2hQabs", "YrAAclEuTeP9KucX"]}' \
    > test.out 2>&1
eval_tap $? 115 'ValidateItemPurchaseCondition' test.out

#- 116 BulkUpdateRegionData
samples/cli/sample-apps Platform bulkUpdateRegionData \
    --namespace $AB_NAMESPACE \
    --storeId 'mycIWZzW4TRwnPah' \
    --body '{"changes": [{"itemIdentities": ["aRnNI3AHPdBDUxxs", "mWNT8TSHdP3uVfJw", "ZX3dhpQKxOZY8MCm"], "itemIdentityType": "ITEM_ID", "regionData": {"NMY4cgBJO7DIIhxj": [{"currencyCode": "XtEAdRRDc9QboIhj", "currencyNamespace": "tmuYQjhPCH1XrtKw", "currencyType": "VIRTUAL", "discountAmount": 1, "discountExpireAt": "1989-10-26T00:00:00Z", "discountPercentage": 84, "discountPurchaseAt": "1980-05-10T00:00:00Z", "discountedPrice": 36, "expireAt": "1991-06-05T00:00:00Z", "price": 46, "purchaseAt": "1977-07-11T00:00:00Z", "trialPrice": 28}, {"currencyCode": "Zk9o6ZYcGnhID1vn", "currencyNamespace": "STrxL5jKJXPaVpvF", "currencyType": "REAL", "discountAmount": 96, "discountExpireAt": "1992-02-16T00:00:00Z", "discountPercentage": 82, "discountPurchaseAt": "1981-08-09T00:00:00Z", "discountedPrice": 62, "expireAt": "1980-04-23T00:00:00Z", "price": 21, "purchaseAt": "1995-04-27T00:00:00Z", "trialPrice": 38}, {"currencyCode": "kck09P4dgBEgc8sY", "currencyNamespace": "xrhCBk6QGVuzunE2", "currencyType": "REAL", "discountAmount": 38, "discountExpireAt": "1973-10-11T00:00:00Z", "discountPercentage": 94, "discountPurchaseAt": "1981-03-05T00:00:00Z", "discountedPrice": 56, "expireAt": "1978-03-27T00:00:00Z", "price": 22, "purchaseAt": "1977-01-30T00:00:00Z", "trialPrice": 30}], "oRoxM1wrgQeTNTXc": [{"currencyCode": "39fXMmXAsGfOldiw", "currencyNamespace": "6hLeyGI0xwhOFIKE", "currencyType": "VIRTUAL", "discountAmount": 72, "discountExpireAt": "1991-10-23T00:00:00Z", "discountPercentage": 27, "discountPurchaseAt": "1985-08-07T00:00:00Z", "discountedPrice": 2, "expireAt": "1977-05-20T00:00:00Z", "price": 69, "purchaseAt": "1975-07-19T00:00:00Z", "trialPrice": 45}, {"currencyCode": "tpzRedIOPijCUmzX", "currencyNamespace": "9oUaVPvXfPpA7lFy", "currencyType": "REAL", "discountAmount": 38, "discountExpireAt": "1995-11-02T00:00:00Z", "discountPercentage": 63, "discountPurchaseAt": "1980-12-10T00:00:00Z", "discountedPrice": 9, "expireAt": "1999-12-11T00:00:00Z", "price": 87, "purchaseAt": "1980-12-13T00:00:00Z", "trialPrice": 33}, {"currencyCode": "twsFVcT9dRhAv7U7", "currencyNamespace": "xplJvaNinSVn9w62", "currencyType": "VIRTUAL", "discountAmount": 76, "discountExpireAt": "1987-02-10T00:00:00Z", "discountPercentage": 67, "discountPurchaseAt": "1985-06-25T00:00:00Z", "discountedPrice": 82, "expireAt": "1999-08-08T00:00:00Z", "price": 44, "purchaseAt": "1996-12-14T00:00:00Z", "trialPrice": 58}], "hzRuLtv7I9SY2yri": [{"currencyCode": "wSlHz8OpdboGwGPO", "currencyNamespace": "kdG0lrMMxGJw6L8y", "currencyType": "VIRTUAL", "discountAmount": 63, "discountExpireAt": "1973-04-01T00:00:00Z", "discountPercentage": 71, "discountPurchaseAt": "1990-04-24T00:00:00Z", "discountedPrice": 16, "expireAt": "1977-09-08T00:00:00Z", "price": 100, "purchaseAt": "1999-05-01T00:00:00Z", "trialPrice": 84}, {"currencyCode": "6EWhtDSNEgaz8eBJ", "currencyNamespace": "Xbzvk7MgblPmg9Yt", "currencyType": "VIRTUAL", "discountAmount": 90, "discountExpireAt": "1973-02-07T00:00:00Z", "discountPercentage": 41, "discountPurchaseAt": "1985-01-01T00:00:00Z", "discountedPrice": 11, "expireAt": "1993-02-22T00:00:00Z", "price": 39, "purchaseAt": "1983-11-28T00:00:00Z", "trialPrice": 96}, {"currencyCode": "bJumLPzetFXeZY3T", "currencyNamespace": "MbK2Be2rMJ21mVRx", "currencyType": "VIRTUAL", "discountAmount": 99, "discountExpireAt": "1982-10-19T00:00:00Z", "discountPercentage": 56, "discountPurchaseAt": "1989-02-03T00:00:00Z", "discountedPrice": 18, "expireAt": "1982-10-11T00:00:00Z", "price": 57, "purchaseAt": "1991-11-07T00:00:00Z", "trialPrice": 3}]}}, {"itemIdentities": ["QuEA5ZA4OO1keupY", "NrMKrCqMjC0seKhb", "FE7ZoGiwEjOCqpSS"], "itemIdentityType": "ITEM_ID", "regionData": {"dwCaeUQgdBMl9TUm": [{"currencyCode": "nj46jpe6R9odQCFK", "currencyNamespace": "LnCvMtN2dGLLnBlD", "currencyType": "REAL", "discountAmount": 13, "discountExpireAt": "1977-09-29T00:00:00Z", "discountPercentage": 40, "discountPurchaseAt": "1976-03-26T00:00:00Z", "discountedPrice": 55, "expireAt": "1988-10-24T00:00:00Z", "price": 68, "purchaseAt": "1981-01-30T00:00:00Z", "trialPrice": 56}, {"currencyCode": "0iKAPpsqdDGH6asx", "currencyNamespace": "I60F3MD5KKnNAAbN", "currencyType": "VIRTUAL", "discountAmount": 82, "discountExpireAt": "1973-04-30T00:00:00Z", "discountPercentage": 7, "discountPurchaseAt": "1972-04-12T00:00:00Z", "discountedPrice": 46, "expireAt": "1984-03-18T00:00:00Z", "price": 28, "purchaseAt": "1972-06-06T00:00:00Z", "trialPrice": 91}, {"currencyCode": "oCdj8CdcZWsxni8U", "currencyNamespace": "fewlSjFwG2Ec6PCX", "currencyType": "REAL", "discountAmount": 76, "discountExpireAt": "1978-05-14T00:00:00Z", "discountPercentage": 44, "discountPurchaseAt": "1993-11-02T00:00:00Z", "discountedPrice": 66, "expireAt": "1991-04-29T00:00:00Z", "price": 11, "purchaseAt": "1977-02-20T00:00:00Z", "trialPrice": 100}], "KBnStRzASYt6DMnl": [{"currencyCode": "DPs7WFJ1bq4grTjD", "currencyNamespace": "xg0i4Yy04pMBU8yd", "currencyType": "VIRTUAL", "discountAmount": 50, "discountExpireAt": "1972-06-13T00:00:00Z", "discountPercentage": 59, "discountPurchaseAt": "1996-10-17T00:00:00Z", "discountedPrice": 100, "expireAt": "1992-04-02T00:00:00Z", "price": 68, "purchaseAt": "1997-07-28T00:00:00Z", "trialPrice": 99}, {"currencyCode": "OM26WaM5wremALaI", "currencyNamespace": "MDukUMmNuDjboAkj", "currencyType": "REAL", "discountAmount": 51, "discountExpireAt": "1985-08-08T00:00:00Z", "discountPercentage": 54, "discountPurchaseAt": "1989-11-12T00:00:00Z", "discountedPrice": 86, "expireAt": "1986-05-08T00:00:00Z", "price": 7, "purchaseAt": "1989-05-14T00:00:00Z", "trialPrice": 83}, {"currencyCode": "Mx8dYYeA782Y8Pos", "currencyNamespace": "voOjI5oH3Ra5NqSq", "currencyType": "REAL", "discountAmount": 10, "discountExpireAt": "1984-08-30T00:00:00Z", "discountPercentage": 53, "discountPurchaseAt": "1976-05-02T00:00:00Z", "discountedPrice": 28, "expireAt": "1990-02-28T00:00:00Z", "price": 23, "purchaseAt": "1986-07-07T00:00:00Z", "trialPrice": 28}], "2mZkZHGBe2vJGpi5": [{"currencyCode": "11yGMlwBoE75KOYk", "currencyNamespace": "Sla305hS5X8QGgfF", "currencyType": "VIRTUAL", "discountAmount": 79, "discountExpireAt": "1983-10-07T00:00:00Z", "discountPercentage": 79, "discountPurchaseAt": "1975-02-02T00:00:00Z", "discountedPrice": 86, "expireAt": "1980-03-26T00:00:00Z", "price": 79, "purchaseAt": "1998-01-03T00:00:00Z", "trialPrice": 13}, {"currencyCode": "Byd4pEpTUpetJJ0Q", "currencyNamespace": "l69LlM7WdSfDwB13", "currencyType": "REAL", "discountAmount": 73, "discountExpireAt": "1974-02-13T00:00:00Z", "discountPercentage": 34, "discountPurchaseAt": "1999-08-01T00:00:00Z", "discountedPrice": 35, "expireAt": "1977-12-22T00:00:00Z", "price": 41, "purchaseAt": "1974-02-10T00:00:00Z", "trialPrice": 83}, {"currencyCode": "Oj6gVO0tdKUc3OuT", "currencyNamespace": "cS4L0ylf58xPpFYz", "currencyType": "VIRTUAL", "discountAmount": 83, "discountExpireAt": "1998-06-05T00:00:00Z", "discountPercentage": 14, "discountPurchaseAt": "1986-09-12T00:00:00Z", "discountedPrice": 45, "expireAt": "1975-03-27T00:00:00Z", "price": 68, "purchaseAt": "1993-07-01T00:00:00Z", "trialPrice": 52}]}}, {"itemIdentities": ["S12DAXl2lOCVUTO4", "B5ISKYLRSHTTCt27", "8MX5XoDSL5Z5gsaC"], "itemIdentityType": "ITEM_SKU", "regionData": {"fjfukma6n08l35ey": [{"currencyCode": "BeFvYwZbxObt49bm", "currencyNamespace": "aqMBiifEsx9gRw8e", "currencyType": "REAL", "discountAmount": 48, "discountExpireAt": "1983-10-10T00:00:00Z", "discountPercentage": 50, "discountPurchaseAt": "1985-04-28T00:00:00Z", "discountedPrice": 99, "expireAt": "1998-08-22T00:00:00Z", "price": 52, "purchaseAt": "1988-04-16T00:00:00Z", "trialPrice": 55}, {"currencyCode": "WHsfUaaW1E7NcDXe", "currencyNamespace": "xo1fZkKWClb5Pi79", "currencyType": "REAL", "discountAmount": 90, "discountExpireAt": "1982-07-06T00:00:00Z", "discountPercentage": 97, "discountPurchaseAt": "1985-09-26T00:00:00Z", "discountedPrice": 63, "expireAt": "1992-12-25T00:00:00Z", "price": 40, "purchaseAt": "1994-04-27T00:00:00Z", "trialPrice": 14}, {"currencyCode": "KYFc7H2OBYbI81XP", "currencyNamespace": "XaCZ0gj05hYPIeAr", "currencyType": "VIRTUAL", "discountAmount": 26, "discountExpireAt": "1994-10-05T00:00:00Z", "discountPercentage": 99, "discountPurchaseAt": "1972-11-16T00:00:00Z", "discountedPrice": 58, "expireAt": "1988-06-30T00:00:00Z", "price": 75, "purchaseAt": "1994-05-28T00:00:00Z", "trialPrice": 23}], "C4UNQfe72C7G3y6w": [{"currencyCode": "tmG1vGt6vh2uQmJa", "currencyNamespace": "UeOsMWPAHpJczjBz", "currencyType": "VIRTUAL", "discountAmount": 15, "discountExpireAt": "1991-09-26T00:00:00Z", "discountPercentage": 89, "discountPurchaseAt": "1971-11-20T00:00:00Z", "discountedPrice": 34, "expireAt": "1990-03-26T00:00:00Z", "price": 93, "purchaseAt": "1998-12-21T00:00:00Z", "trialPrice": 62}, {"currencyCode": "uGDNGbMtJLD7lryx", "currencyNamespace": "9KAZep2ZL99uGpWI", "currencyType": "REAL", "discountAmount": 42, "discountExpireAt": "1980-04-15T00:00:00Z", "discountPercentage": 6, "discountPurchaseAt": "1987-12-30T00:00:00Z", "discountedPrice": 60, "expireAt": "1990-10-24T00:00:00Z", "price": 23, "purchaseAt": "1983-10-16T00:00:00Z", "trialPrice": 93}, {"currencyCode": "eLrUukFlKLd8chI9", "currencyNamespace": "x9rIB1U8rXdetD2p", "currencyType": "REAL", "discountAmount": 47, "discountExpireAt": "1992-07-30T00:00:00Z", "discountPercentage": 76, "discountPurchaseAt": "1994-06-21T00:00:00Z", "discountedPrice": 96, "expireAt": "1996-05-01T00:00:00Z", "price": 95, "purchaseAt": "1995-04-06T00:00:00Z", "trialPrice": 28}], "ujymVUJevHDVdzv7": [{"currencyCode": "TxdaUwBS0ri2MQAx", "currencyNamespace": "3q0AX1ymQdHb42Qw", "currencyType": "REAL", "discountAmount": 42, "discountExpireAt": "1977-10-06T00:00:00Z", "discountPercentage": 84, "discountPurchaseAt": "1987-03-20T00:00:00Z", "discountedPrice": 70, "expireAt": "1978-08-13T00:00:00Z", "price": 83, "purchaseAt": "1978-07-29T00:00:00Z", "trialPrice": 2}, {"currencyCode": "IhDa3zSK2xSCjKMk", "currencyNamespace": "FnSwrAHD7S0EXMgO", "currencyType": "REAL", "discountAmount": 76, "discountExpireAt": "1990-07-15T00:00:00Z", "discountPercentage": 3, "discountPurchaseAt": "1990-04-17T00:00:00Z", "discountedPrice": 41, "expireAt": "1976-01-19T00:00:00Z", "price": 94, "purchaseAt": "1994-03-20T00:00:00Z", "trialPrice": 97}, {"currencyCode": "XVXDg13ZIIOQwug2", "currencyNamespace": "e8q2jF5aLY6ff8IN", "currencyType": "REAL", "discountAmount": 30, "discountExpireAt": "1995-09-17T00:00:00Z", "discountPercentage": 1, "discountPurchaseAt": "1976-06-08T00:00:00Z", "discountedPrice": 40, "expireAt": "1975-07-14T00:00:00Z", "price": 25, "purchaseAt": "1986-03-14T00:00:00Z", "trialPrice": 15}]}}]}' \
    > test.out 2>&1
eval_tap $? 116 'BulkUpdateRegionData' test.out

#- 117 SearchItems
samples/cli/sample-apps Platform searchItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --itemType 'MEDIA' \
    --limit '68' \
    --offset '36' \
    --sortBy 'qNV2De5GbVTRsRbv' \
    --storeId 'QARPKVOFo1T8HgUn' \
    --keyword 'RH8QEKsqLY870UVb' \
    --language 'AQXIhxdvJarec6BQ' \
    > test.out 2>&1
eval_tap $? 117 'SearchItems' test.out

#- 118 QueryUncategorizedItems
samples/cli/sample-apps Platform queryUncategorizedItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --limit '7' \
    --offset '0' \
    --sortBy '["displayOrder:asc", "name", "updatedAt:desc"]' \
    --storeId 'olLkhUZt5OQBoCiy' \
    > test.out 2>&1
eval_tap $? 118 'QueryUncategorizedItems' test.out

#- 119 GetItem
samples/cli/sample-apps Platform getItem \
    --itemId 'EJbeqnm29Z48ougp' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'x4EZWUA8CWmbNsiK' \
    > test.out 2>&1
eval_tap $? 119 'GetItem' test.out

#- 120 UpdateItem
samples/cli/sample-apps Platform updateItem \
    --itemId 'OHKCbslCHxgoVRGN' \
    --namespace $AB_NAMESPACE \
    --storeId 'al3dE04l5sYOpwZy' \
    --body '{"appId": "izpu1n0SrsFAwJDL", "appType": "SOFTWARE", "baseAppId": "miv8dvsm9C4eTIal", "boothName": "JXhPkgW9CgkqNA2F", "categoryPath": "vNEkTWrsvsyMcnCL", "clazz": "HeAd7gz9ts1YxNrL", "displayOrder": 43, "entitlementType": "CONSUMABLE", "ext": {"kkiHcyPTp7tGeFmQ": {}, "GV2HKN1rvoHeJU3E": {}, "EgQ4kLP4WgYarJlr": {}}, "features": ["JTCqT5DEXkiEL2nV", "8jGJe19lZz2pWJ4H", "YsZUtPXjqsmPjXyJ"], "flexible": true, "images": [{"as": "b6WYauTbAXIJBevT", "caption": "hoLQ7MeYNm8YzDB1", "height": 85, "imageUrl": "cTTC9k34L1A8n9eX", "smallImageUrl": "qnmIfaBWetHdKgu8", "width": 56}, {"as": "FPcvNm6Ngau1mwoS", "caption": "1kdoq2Vrri9Ys4PM", "height": 44, "imageUrl": "5FBrT2VlDCnHpZiE", "smallImageUrl": "T2gRdGvwRM7krIDv", "width": 67}, {"as": "nfefu1fToz7tw0iS", "caption": "g43DEVuBm6tZE8Qb", "height": 50, "imageUrl": "6IXQM9iWSQ2QnhUs", "smallImageUrl": "TBSfoj9VNz6ESW4g", "width": 47}], "inventoryConfig": {"customAttributes": {"OuhyTO7UD0VYA072": {}, "7iXESbwzF4ftmAb3": {}, "1SyBkTaoKAWUDuRh": {}}, "serverCustomAttributes": {"4sAYr2DImHyXVQXQ": {}, "XVTA7EW04R2Le5Ia": {}, "FNJndQGir5myoMuD": {}}, "slotUsed": 33}, "itemIds": ["64ZifLRtcTLcB2XC", "2j6EcRVVlxAK7IFl", "UNFfIFrKEUb9RG9R"], "itemQty": {"2cqoPoBepSt7WHGa": 27, "UjlUJfbVn5V2hIfe": 60, "snYxHmkdvU9M3qKK": 44}, "itemType": "SEASON", "listable": false, "localizations": {"82XWG2zHUQFVfm7z": {"description": "smq8prbP0VaaAwgp", "localExt": {"EIwtRepb9sRCNGdy": {}, "QnwfNUfKvDT3Xa3r": {}, "SOoNQQmBEO45DGfg": {}}, "longDescription": "1RCLJJJefSCEmkPO", "title": "qpJjyNpkSIZTEmsZ"}, "fo8FksSgnBLualRQ": {"description": "n00XAjGqXtOOrhQT", "localExt": {"ZoZ6FfjSkbcAl2pf": {}, "1svtw5nJBzVhzqa1": {}, "XvnMjjYGTwzyiZt2": {}}, "longDescription": "rWnyhSqnj9Ap7oWD", "title": "MBr9lMTR06xVTlwO"}, "cVp5Ah3kx8E802da": {"description": "U3L4SvSMVC109zUD", "localExt": {"XXsjCkUbxdk9NnzS": {}, "Ls2iF3OMNuhYluRK": {}, "XRBDfvwKA1zHrrMd": {}}, "longDescription": "c2agIirNOBuRhHcn", "title": "6pKaCtaSFqsEfJ1v"}}, "lootBoxConfig": {"rewardCount": 90, "rewards": [{"lootBoxItems": [{"count": 25, "duration": 38, "endDate": "1982-02-06T00:00:00Z", "itemId": "FCvKVU6kFGtuMfzc", "itemSku": "JcuMyavOiof5csN7", "itemType": "CEm0O9pMu2cGSKUg"}, {"count": 51, "duration": 7, "endDate": "1982-02-07T00:00:00Z", "itemId": "mgljvpvn3PADQ8oS", "itemSku": "TaGfcLh8VVdajjTM", "itemType": "0pT5nWoaK5L4ihHI"}, {"count": 42, "duration": 23, "endDate": "1995-10-04T00:00:00Z", "itemId": "Haj1MgEUYaBkOmi0", "itemSku": "R4YF4org3G6meafW", "itemType": "pocaM3sLln2xXp7j"}], "name": "SmSaqWy13Qw2XCkN", "odds": 0.41555095902413863, "type": "PROBABILITY_GROUP", "weight": 2}, {"lootBoxItems": [{"count": 57, "duration": 21, "endDate": "1984-08-03T00:00:00Z", "itemId": "WYrQim78HUgUQ5lK", "itemSku": "iKTV4bpajF2QXJ03", "itemType": "e8q4VlDPxiqNbuYv"}, {"count": 53, "duration": 10, "endDate": "1971-10-20T00:00:00Z", "itemId": "uOiUMugoISXnTxDX", "itemSku": "fe85JdQ3fBiYBUVY", "itemType": "yC71FeXRU3zkmpjB"}, {"count": 47, "duration": 59, "endDate": "1989-08-22T00:00:00Z", "itemId": "fSRVAovUFCmyFiyJ", "itemSku": "KGndAYN0mL8zbU8o", "itemType": "cjGqew56kzuAaDIa"}], "name": "60jJo92GYG5xeU7E", "odds": 0.3787609820375133, "type": "PROBABILITY_GROUP", "weight": 3}, {"lootBoxItems": [{"count": 2, "duration": 32, "endDate": "1995-10-06T00:00:00Z", "itemId": "skAUe9pW3gGwPoou", "itemSku": "BKwjfuniEHF7aptz", "itemType": "rPx0soVRKy4YHaRC"}, {"count": 11, "duration": 25, "endDate": "1992-11-08T00:00:00Z", "itemId": "6V87QZY0DkUkgHBl", "itemSku": "1pMoToBZplFRUsDN", "itemType": "y8XfYiznAUmTzkl0"}, {"count": 1, "duration": 90, "endDate": "1975-03-30T00:00:00Z", "itemId": "8SQXzfpcFRnFEoTC", "itemSku": "kPlLNWNkVeq4jGev", "itemType": "9qGZoDWZmanvQLvG"}], "name": "ERrysINDHITV5nzL", "odds": 0.03284235149668757, "type": "REWARD", "weight": 71}], "rollFunction": "DEFAULT"}, "maxCount": 39, "maxCountPerUser": 66, "name": "GaGID57hd8xUZf7T", "optionBoxConfig": {"boxItems": [{"count": 24, "duration": 52, "endDate": "1986-05-10T00:00:00Z", "itemId": "bDOwUMVM24z87vCj", "itemSku": "r8MbN2ARTPGaWnAg", "itemType": "TfyzVJdt5TlpkpGW"}, {"count": 17, "duration": 73, "endDate": "1984-08-23T00:00:00Z", "itemId": "LfhENZHGWCnQro4x", "itemSku": "jhOMFgh7H6ph47x9", "itemType": "R59GFuZKL0FZW6ow"}, {"count": 0, "duration": 87, "endDate": "1992-07-25T00:00:00Z", "itemId": "EJn19OJtfSGju7h8", "itemSku": "cllFtVg6NPYCmfHY", "itemType": "EV6eMj5zxcevwWWt"}]}, "purchasable": true, "recurring": {"cycle": "WEEKLY", "fixedFreeDays": 12, "fixedTrialCycles": 78, "graceDays": 77}, "regionData": {"STOItzGh6ezfOJQ4": [{"currencyCode": "HnAjLRNkRcvAk54g", "currencyNamespace": "gs9ezxAymbYHN5ce", "currencyType": "REAL", "discountAmount": 20, "discountExpireAt": "1979-05-25T00:00:00Z", "discountPercentage": 94, "discountPurchaseAt": "1976-11-22T00:00:00Z", "expireAt": "1988-08-09T00:00:00Z", "price": 8, "purchaseAt": "1984-11-07T00:00:00Z", "trialPrice": 61}, {"currencyCode": "nlZwcRmBLhhmH7wA", "currencyNamespace": "dcwFY8EClHSgpd44", "currencyType": "VIRTUAL", "discountAmount": 70, "discountExpireAt": "1978-11-04T00:00:00Z", "discountPercentage": 17, "discountPurchaseAt": "1976-07-24T00:00:00Z", "expireAt": "1975-11-17T00:00:00Z", "price": 44, "purchaseAt": "1999-09-21T00:00:00Z", "trialPrice": 44}, {"currencyCode": "Ab9SSkedTcsEGkn4", "currencyNamespace": "a9TGALDgek0cNPSr", "currencyType": "VIRTUAL", "discountAmount": 74, "discountExpireAt": "1991-01-12T00:00:00Z", "discountPercentage": 21, "discountPurchaseAt": "1992-08-31T00:00:00Z", "expireAt": "1989-11-12T00:00:00Z", "price": 65, "purchaseAt": "1974-02-25T00:00:00Z", "trialPrice": 35}], "RgEcyykjNdkQjwxc": [{"currencyCode": "VhLxtgij8axekNms", "currencyNamespace": "bkZX8WuPAuPOnGW9", "currencyType": "VIRTUAL", "discountAmount": 4, "discountExpireAt": "1975-08-06T00:00:00Z", "discountPercentage": 87, "discountPurchaseAt": "1981-02-01T00:00:00Z", "expireAt": "1974-09-27T00:00:00Z", "price": 38, "purchaseAt": "1971-12-02T00:00:00Z", "trialPrice": 70}, {"currencyCode": "rB22yHLmrNQG6ikS", "currencyNamespace": "OIL8fc0KxqV0hx60", "currencyType": "REAL", "discountAmount": 69, "discountExpireAt": "1976-09-11T00:00:00Z", "discountPercentage": 57, "discountPurchaseAt": "1996-06-21T00:00:00Z", "expireAt": "1982-06-29T00:00:00Z", "price": 100, "purchaseAt": "1989-05-11T00:00:00Z", "trialPrice": 14}, {"currencyCode": "K6bml2h7ynbbl5wi", "currencyNamespace": "kZk5DMLIJlidk3hf", "currencyType": "REAL", "discountAmount": 55, "discountExpireAt": "1987-04-22T00:00:00Z", "discountPercentage": 75, "discountPurchaseAt": "1989-08-31T00:00:00Z", "expireAt": "1994-04-04T00:00:00Z", "price": 85, "purchaseAt": "1986-05-11T00:00:00Z", "trialPrice": 21}], "1RCchwiDDb1oyg8c": [{"currencyCode": "2qsxcDIvU6XVaj18", "currencyNamespace": "QBx81ASnIN5Ob4xq", "currencyType": "VIRTUAL", "discountAmount": 33, "discountExpireAt": "1985-07-09T00:00:00Z", "discountPercentage": 50, "discountPurchaseAt": "1988-12-08T00:00:00Z", "expireAt": "1993-11-23T00:00:00Z", "price": 59, "purchaseAt": "1996-10-06T00:00:00Z", "trialPrice": 56}, {"currencyCode": "QHh0gqG8XJzJ1Yxq", "currencyNamespace": "wBSZ3YxWKCXnJAz4", "currencyType": "REAL", "discountAmount": 84, "discountExpireAt": "1991-02-07T00:00:00Z", "discountPercentage": 47, "discountPurchaseAt": "1993-05-05T00:00:00Z", "expireAt": "1996-05-15T00:00:00Z", "price": 47, "purchaseAt": "1997-03-13T00:00:00Z", "trialPrice": 3}, {"currencyCode": "23RW2YXwE8YeS1wr", "currencyNamespace": "2e7FIuDVxzKZ4qrZ", "currencyType": "REAL", "discountAmount": 32, "discountExpireAt": "1996-10-05T00:00:00Z", "discountPercentage": 31, "discountPurchaseAt": "1972-01-30T00:00:00Z", "expireAt": "1981-10-23T00:00:00Z", "price": 36, "purchaseAt": "1990-09-06T00:00:00Z", "trialPrice": 71}]}, "saleConfig": {"currencyCode": "lCyA4chQ8w2p8Ds0", "price": 59}, "seasonType": "TIER", "sectionExclusive": false, "sellable": false, "sku": "Ncx7kunvv55UgSlC", "stackable": false, "status": "INACTIVE", "tags": ["8uV8hqsYkihV6JlG", "kGutRRWprZbouPCn", "tEb6dDJL23lYYPHs"], "targetCurrencyCode": "Dru5JyVXwv59DLz6", "targetNamespace": "DZ8nwS8hzkq0q6GS", "thumbnailUrl": "l3ClLihVp9v9bRBQ", "useCount": 44}' \
    > test.out 2>&1
eval_tap $? 120 'UpdateItem' test.out

#- 121 DeleteItem
samples/cli/sample-apps Platform deleteItem \
    --itemId 'ugOtaqceMXz7zOtn' \
    --namespace $AB_NAMESPACE \
    --force 'false' \
    --storeId 'VcgjcL5tUsPkJqLt' \
    > test.out 2>&1
eval_tap $? 121 'DeleteItem' test.out

#- 122 AcquireItem
samples/cli/sample-apps Platform acquireItem \
    --itemId 'Lurs32P0x8ZCqNAn' \
    --namespace $AB_NAMESPACE \
    --body '{"count": 91, "orderNo": "2qhS4iGyNBaEpWae"}' \
    > test.out 2>&1
eval_tap $? 122 'AcquireItem' test.out

#- 123 GetApp
samples/cli/sample-apps Platform getApp \
    --itemId 'h3SgAgLAnzuOdn33' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --storeId 'B3nRlzO9TxTr55na' \
    > test.out 2>&1
eval_tap $? 123 'GetApp' test.out

#- 124 UpdateApp
samples/cli/sample-apps Platform updateApp \
    --itemId 'JySHvHfdDP4iBwgM' \
    --namespace $AB_NAMESPACE \
    --storeId 'lpYtARuKfIisRUkG' \
    --body '{"carousel": [{"alt": "s5BPvMatYx2M1908", "previewUrl": "I4BgAS6N6Q8X3i4h", "thumbnailUrl": "J0znmtLwrNZS6MuJ", "type": "video", "url": "aVXCKXDZ2lo3t486", "videoSource": "vimeo"}, {"alt": "Gpwtks7qDcJ8KDUN", "previewUrl": "OVsoaZlmV66VdchD", "thumbnailUrl": "vo21nc9fugFZzjFW", "type": "image", "url": "6n91JOQGA0SaQCaM", "videoSource": "generic"}, {"alt": "IDZgOlokX6MtJvXX", "previewUrl": "532BjsciWiGKEoLR", "thumbnailUrl": "b5io1DENcBMTCpGJ", "type": "image", "url": "472DwuirXgRgLc4l", "videoSource": "generic"}], "developer": "4QskJkv2ZJUYZF77", "forumUrl": "m66a6R1xNqMLstXx", "genres": ["FreeToPlay", "Action", "Indie"], "localizations": {"689DPnnradz1Kpur": {"announcement": "5mu2X4iFyBAjmaR0", "slogan": "s3O5FDykdhHFxFUx"}, "sEtCbG1MlWuadhdv": {"announcement": "iVTlga4aODSXqEfb", "slogan": "YnEJO8ENZkD8Lx7e"}, "uRb6F9Rhtel1a8g7": {"announcement": "mF4m2ehMD17OVg8Z", "slogan": "vSAOuWi9SauaLTEQ"}}, "platformRequirements": {"mrHCWg6TFvVyYw3M": [{"additionals": "uMn0eQKssefbW606", "directXVersion": "xKOXvfByTuR9bTti", "diskSpace": "pxnMIpbqHgah0H7k", "graphics": "wpHeaF4VEpN2C84U", "label": "UOFQU71HDGrm39LP", "osVersion": "iVlXaeODfGDlA42T", "processor": "sDH88swP1mcatevr", "ram": "H5WhNDgcHNe3KpLI", "soundCard": "wFxfOpiAtdCGuqXR"}, {"additionals": "OOtQFjxgik1WLAAe", "directXVersion": "d2VX4WOoHPyDxFyH", "diskSpace": "jn1nnT33pl29MzHh", "graphics": "pgZ0zTtJ2VAWFQU1", "label": "dk9lotdz1j6JRmLJ", "osVersion": "W8fy20hsbDBZHybz", "processor": "81jWPVZ5BRA1K8fb", "ram": "CCR41t4stIfxf00Y", "soundCard": "h7l7ogmfI0OnakgD"}, {"additionals": "LkTZ3GQNYQUflsGS", "directXVersion": "OnF0alV58ky6m0TL", "diskSpace": "QgJdhLh28sfyabFg", "graphics": "pkNTzv0ifFIQWq4S", "label": "LlwoDYENxqdNupyr", "osVersion": "jjfwnhCZiJLozLho", "processor": "f7bAnznTaULNDkav", "ram": "eVJCrmVRLpRTfovF", "soundCard": "E2nskpyHBgWTplv3"}], "BSdGvltb8tcUJPnx": [{"additionals": "lh3ushmbe7UEhFF5", "directXVersion": "1YgS2kdm1NKTMaZv", "diskSpace": "A57AJYHYGUVX6wVL", "graphics": "mELgD1hJafV4bb9K", "label": "4UcipeRwXP3kuViO", "osVersion": "DVlS2ih8vQv3qZsn", "processor": "WvJiexchZ5l71Tq6", "ram": "nAwPs6qXrw9Juugg", "soundCard": "AXl3k6bHCdhritVz"}, {"additionals": "wqYTUPkEYO9ITc7r", "directXVersion": "pZEPjyELACs6gZiM", "diskSpace": "1iXKMiWrtqRsqtXM", "graphics": "4x6CXRz6etqW5fWb", "label": "wy9cnMX4ScH56c5a", "osVersion": "O3Cy3KiWad6sFVau", "processor": "jOSkqkc5T9rfGAon", "ram": "c3hGm0Hz5ncykVNB", "soundCard": "RkwDWMZdeNQ2sjIw"}, {"additionals": "xUhj1m4dzFJ7k7rY", "directXVersion": "wHAbV4lgzRtEQCiv", "diskSpace": "hgn90ThjPNLW2G8h", "graphics": "geSUhn4jBbbEhBjU", "label": "xOMi1RUzQuobXvCi", "osVersion": "j3LLVnACYEQiaEIY", "processor": "gPgzyxtj67vNPT1w", "ram": "Pyz8R24tG0TqGk14", "soundCard": "JrtF4UhFLrpF85Dn"}], "1Zo7ZdBC8HCnWhDI": [{"additionals": "7mvECxhF4HZQzCI5", "directXVersion": "Vg7XxXlskDz1FtVx", "diskSpace": "Og70vd258LdsA3s0", "graphics": "xOrUotgWuPEd7XhL", "label": "CuYjBxLcfoos6nfy", "osVersion": "f0G4n4KPQPqctP6a", "processor": "N55jUMvvplxvC4Wv", "ram": "BbXal2f57eH9z83W", "soundCard": "S7OU7M9iJBnkmBmj"}, {"additionals": "MMLY1VBcXdMluxZT", "directXVersion": "PG0eg6V8DyQa8pUP", "diskSpace": "o6e0CQbL7Ly4bGpk", "graphics": "THoXae4nii4KBIii", "label": "Qy1YjdnZHXHtFws2", "osVersion": "0zyvnykPcBr9d1yH", "processor": "Ts9Sfin3FzTWIcGh", "ram": "QL6yWENymlu3PPfN", "soundCard": "EjknOcYDtri3YSon"}, {"additionals": "0qBKLRiyoJmJFUFc", "directXVersion": "rAe51mmAp3rTCTTk", "diskSpace": "YuM32lRqDHLLxiCl", "graphics": "DLF8lhjJXrJQdklA", "label": "jIfX9gs75Y1Xtiv5", "osVersion": "IcKHLWkYYpSkkGtB", "processor": "Cmavzko8r3QhX1ar", "ram": "cPER820htMs4X2oy", "soundCard": "l1QxwdaoftbDZAYq"}]}, "platforms": ["MacOS", "Windows", "Android"], "players": ["MMO", "LocalCoop", "LocalCoop"], "primaryGenre": "Strategy", "publisher": "Z0z2TfZy9xyYuCMx", "releaseDate": "1996-04-13T00:00:00Z", "websiteUrl": "JcFLFyCX7HBRJ7Dm"}' \
    > test.out 2>&1
eval_tap $? 124 'UpdateApp' test.out

#- 125 DisableItem
samples/cli/sample-apps Platform disableItem \
    --itemId 'M24ILYkddPg2TWK4' \
    --namespace $AB_NAMESPACE \
    --storeId 'I5PVxVE4azyEKLjQ' \
    > test.out 2>&1
eval_tap $? 125 'DisableItem' test.out

#- 126 GetItemDynamicData
samples/cli/sample-apps Platform getItemDynamicData \
    --itemId '8ruYsvt3QlPYhI7t' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 126 'GetItemDynamicData' test.out

#- 127 EnableItem
samples/cli/sample-apps Platform enableItem \
    --itemId 'uYcZ8uuwsZZcnh2b' \
    --namespace $AB_NAMESPACE \
    --storeId 'tfovwqF2gL6CZjqY' \
    > test.out 2>&1
eval_tap $? 127 'EnableItem' test.out

#- 128 FeatureItem
samples/cli/sample-apps Platform featureItem \
    --feature 'L1FhSbshyaPhDZPd' \
    --itemId 'WzltNgBD6feR00Td' \
    --namespace $AB_NAMESPACE \
    --storeId 'sHobpAlfoRqtrU55' \
    > test.out 2>&1
eval_tap $? 128 'FeatureItem' test.out

#- 129 DefeatureItem
samples/cli/sample-apps Platform defeatureItem \
    --feature 'QuD2FAd67xI8WpIx' \
    --itemId 'VJEV5JEp2PzZkIxR' \
    --namespace $AB_NAMESPACE \
    --storeId 'fbss0kBy554djm5j' \
    > test.out 2>&1
eval_tap $? 129 'DefeatureItem' test.out

#- 130 GetLocaleItem
samples/cli/sample-apps Platform getLocaleItem \
    --itemId 'ycTPTT8iZmppTGQj' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --language '53ZhlhXo7c9WnMGI' \
    --populateBundle 'true' \
    --region 'PhxMRH4b90HGg2y1' \
    --storeId 'TVDMfhePUJ2kK8uQ' \
    > test.out 2>&1
eval_tap $? 130 'GetLocaleItem' test.out

#- 131 UpdateItemPurchaseCondition
samples/cli/sample-apps Platform updateItemPurchaseCondition \
    --itemId 'sOuWVlgxRbRxGVNs' \
    --namespace $AB_NAMESPACE \
    --storeId '1wouSrAlGJi6CdsP' \
    --body '{"purchaseCondition": {"conditionGroups": [{"operator": "and", "predicates": [{"anyOf": 66, "comparison": "excludes", "name": "BIjTsB46L22FES1z", "predicateType": "SeasonPassPredicate", "value": "rtf390fLL6irXe8J", "values": ["dFsUPjfy6BDgKg1z", "b8ATkx0cakCyctkT", "fuCHpVriX4sJMGNe"]}, {"anyOf": 47, "comparison": "is", "name": "7C5ay4455RMcno2y", "predicateType": "SeasonTierPredicate", "value": "Ccs5NxfCl9V3hwWs", "values": ["hOksnCq688pNGmU5", "X35dsRQBRA8iQI8V", "B7r539KN0nhGcBJM"]}, {"anyOf": 28, "comparison": "isLessThanOrEqual", "name": "5SUS6YUZpiAkl6QV", "predicateType": "SeasonTierPredicate", "value": "RyEGtFGkQ1Yvjt8m", "values": ["crhh7PAYbzGiGOZb", "PHmpAF6zQuLRqJWG", "ubZrpNCIRsdupiTA"]}]}, {"operator": "or", "predicates": [{"anyOf": 98, "comparison": "is", "name": "OVMWj5H3OJcin03d", "predicateType": "EntitlementPredicate", "value": "HHXywSK9nvlWmbGq", "values": ["BOVVZGx83dlYA78U", "wRRHjAKWVsGDbXRd", "OlF5k40RgKelBuut"]}, {"anyOf": 87, "comparison": "isLessThanOrEqual", "name": "fj14XGQSVg1XEBrf", "predicateType": "SeasonPassPredicate", "value": "UFJzbRCfmXepSBEH", "values": ["MhMu4oFEyRpxPkqt", "qvutFy1aZyy7idNy", "35smD8OjJRdu72R2"]}, {"anyOf": 38, "comparison": "excludes", "name": "PQXW757si84YD3ct", "predicateType": "EntitlementPredicate", "value": "XVOb1TcusfeeLB8H", "values": ["6Vx3ILZ0K2IbRQcF", "Rkd5rgYZ5JolFAHW", "BP0BeNz4o0unlaMA"]}]}, {"operator": "or", "predicates": [{"anyOf": 36, "comparison": "includes", "name": "d3RO2LNRQLB56AT3", "predicateType": "SeasonTierPredicate", "value": "wJtxpTJ8TZGNXULh", "values": ["cmEPgdhzOiz8DBaC", "HO1jAeRHQG32QI0s", "QYxYY2ZNKB9PHtgd"]}, {"anyOf": 35, "comparison": "excludes", "name": "aekYvRdz49HwYpQx", "predicateType": "SeasonTierPredicate", "value": "ICoh8mQeguIKcWMh", "values": ["oWBXe8seHwTx8VfE", "MBH9Vk9JW30ysKs7", "vQvhbmMQyKC0DqbI"]}, {"anyOf": 14, "comparison": "isNot", "name": "ULCioMod2NCfaLoq", "predicateType": "SeasonTierPredicate", "value": "Ydothc8p00sVTOYg", "values": ["rXCdChp6ZkI73iSB", "SlwSQfKPhzuGOgE8", "XywjxvjnqZ7TvLFN"]}]}]}}' \
    > test.out 2>&1
eval_tap $? 131 'UpdateItemPurchaseCondition' test.out

#- 132 ReturnItem
samples/cli/sample-apps Platform returnItem \
    --itemId 'll9Oq6oPCwY3QIUU' \
    --namespace $AB_NAMESPACE \
    --body '{"orderNo": "A4n3Irszn9eTE1Zg"}' \
    > test.out 2>&1
eval_tap $? 132 'ReturnItem' test.out

#- 133 QueryKeyGroups
samples/cli/sample-apps Platform queryKeyGroups \
    --namespace $AB_NAMESPACE \
    --limit '62' \
    --name 'wnFYcSwdXhuNJpdt' \
    --offset '82' \
    --tag 'HFIi2ltEpytIW8KK' \
    > test.out 2>&1
eval_tap $? 133 'QueryKeyGroups' test.out

#- 134 CreateKeyGroup
samples/cli/sample-apps Platform createKeyGroup \
    --namespace $AB_NAMESPACE \
    --body '{"description": "Il2PiOMqZkT9bnED", "name": "jCoUT0Rxs22BmAud", "status": "ACTIVE", "tags": ["66LhZaXKzcXdUUtj", "OVFWAWb6Y9ku8zRv", "4WkeEmmGZXkJQlLL"]}' \
    > test.out 2>&1
eval_tap $? 134 'CreateKeyGroup' test.out

#- 135 GetKeyGroupByBoothName
eval_tap 0 135 'GetKeyGroupByBoothName # SKIP deprecated' test.out

#- 136 GetKeyGroup
samples/cli/sample-apps Platform getKeyGroup \
    --keyGroupId 'r0SfBczJgTGB9InD' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 136 'GetKeyGroup' test.out

#- 137 UpdateKeyGroup
samples/cli/sample-apps Platform updateKeyGroup \
    --keyGroupId 'iwzUExrme8zQEsJB' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "AwL9HDogNSaceMzT", "name": "kdgzn9FMcq4fZ6MU", "status": "INACTIVE", "tags": ["dTdlKBBRRA2mrjH4", "rd79WuthrXGdEKPs", "etMl6Lxg08X9N6c3"]}' \
    > test.out 2>&1
eval_tap $? 137 'UpdateKeyGroup' test.out

#- 138 GetKeyGroupDynamic
samples/cli/sample-apps Platform getKeyGroupDynamic \
    --keyGroupId '7An9l9s9SMm3TN1T' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 138 'GetKeyGroupDynamic' test.out

#- 139 ListKeys
samples/cli/sample-apps Platform listKeys \
    --keyGroupId 'Uu9PyGEVPZIgGh9D' \
    --namespace $AB_NAMESPACE \
    --limit '79' \
    --offset '90' \
    --status 'ACQUIRED' \
    > test.out 2>&1
eval_tap $? 139 'ListKeys' test.out

#- 140 UploadKeys
samples/cli/sample-apps Platform uploadKeys \
    --keyGroupId 'yKJ22C27lQa7qvr4' \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 140 'UploadKeys' test.out

#- 141 QueryOrders
samples/cli/sample-apps Platform queryOrders \
    --namespace $AB_NAMESPACE \
    --endTime 'tzTUP4bGyjwxA4Zj' \
    --limit '13' \
    --offset '41' \
    --orderNos '["rv2LpUjF1Fhrbeqk", "nG36liTKghPRCnaT", "xFqrOxOKaoSn7Sn1"]' \
    --sortBy 'HgJw30FYFnUFvO98' \
    --startTime 'BPNwR73c3rfjuZSY' \
    --status 'DELETED' \
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
    --orderNo 'ViRkcTW3a5XKrZ8v' \
    > test.out 2>&1
eval_tap $? 143 'GetOrder' test.out

#- 144 RefundOrder
samples/cli/sample-apps Platform refundOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'NBryrWYC8pp3pir1' \
    --body '{"description": "ka5gWP7oBSLI2HpG"}' \
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
    --body '{"dryRun": true, "notifyUrl": "0r1jj1pJvCNo7i9X", "privateKey": "lEwTsGwjFHiAxFTy"}' \
    > test.out 2>&1
eval_tap $? 146 'UpdatePaymentCallbackConfig' test.out

#- 147 QueryPaymentNotifications
samples/cli/sample-apps Platform queryPaymentNotifications \
    --namespace $AB_NAMESPACE \
    --endDate 'iiLgD5bmoDFkw96p' \
    --externalId 'BPM2QGTj60PhurEA' \
    --limit '9' \
    --notificationSource 'WALLET' \
    --notificationType 'lpiHYjRxrgNS73Vq' \
    --offset '71' \
    --paymentOrderNo 'XYNRmaXZ1YGTfEaj' \
    --startDate 'vCiUZULpf8FU4hNI' \
    --status 'WARN' \
    > test.out 2>&1
eval_tap $? 147 'QueryPaymentNotifications' test.out

#- 148 QueryPaymentOrders
samples/cli/sample-apps Platform queryPaymentOrders \
    --namespace $AB_NAMESPACE \
    --channel 'EXTERNAL' \
    --extTxId 'PDCxRtWSq9DZISQz' \
    --limit '56' \
    --offset '62' \
    --status 'REFUND_FAILED' \
    > test.out 2>&1
eval_tap $? 148 'QueryPaymentOrders' test.out

#- 149 CreatePaymentOrderByDedicated
samples/cli/sample-apps Platform createPaymentOrderByDedicated \
    --namespace $AB_NAMESPACE \
    --body '{"currencyCode": "EuKbDwcnUPpqT8aq", "currencyNamespace": "AKjBtXW1PFx11ebU", "customParameters": {"nDxtfQZnAdZ47mPR": {}, "UcTJUxlvw1hPNZYf": {}, "KvoyvIlDdFh4R9PR": {}}, "description": "hcbkBvnmC2retcjO", "extOrderNo": "cTt69EalCd0JBthV", "extUserId": "cSbz24J8qCpuY27P", "itemType": "LOOTBOX", "language": "rnG_UGMV", "metadata": {"7gNDfF4TCJAYgTLh": "UX1CCnQmsGhLVVKP", "FanbFqsIEkdGd2XF": "nGIi0AC5TJnfUljy", "CoMVgWEEClgFdh6q": "DxJLysmefIw6olDt"}, "notifyUrl": "XWqBA0QCDva4OLQg", "omitNotification": false, "platform": "5WcCi2O5ERNrN4QE", "price": 47, "recurringPaymentOrderNo": "ZerV1Za5C0wNwgAM", "region": "iy4o4tNVzxNHZIyK", "returnUrl": "N9Vzr3DFI1KdEjkZ", "sandbox": false, "sku": "BU9ii6nVnryxku3y", "subscriptionId": "ZhScCMBG23zj6QHP", "targetNamespace": "picIHpENqhKvQQf1", "targetUserId": "HpBhPyhHonx9q6Qt", "title": "20xKxn5Q8b1Uxgml"}' \
    > test.out 2>&1
eval_tap $? 149 'CreatePaymentOrderByDedicated' test.out

#- 150 ListExtOrderNoByExtTxId
samples/cli/sample-apps Platform listExtOrderNoByExtTxId \
    --namespace $AB_NAMESPACE \
    --extTxId 'FHWFekixN46C3VCS' \
    > test.out 2>&1
eval_tap $? 150 'ListExtOrderNoByExtTxId' test.out

#- 151 GetPaymentOrder
samples/cli/sample-apps Platform getPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'wCczC3Qzcg7lVA8f' \
    > test.out 2>&1
eval_tap $? 151 'GetPaymentOrder' test.out

#- 152 ChargePaymentOrder
samples/cli/sample-apps Platform chargePaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'NtqFdxI15ngQQfdT' \
    --body '{"extTxId": "5UGIZ4163u1DoPX6", "paymentMethod": "nW7hGWWXevpwoGpr", "paymentProvider": "CHECKOUT"}' \
    > test.out 2>&1
eval_tap $? 152 'ChargePaymentOrder' test.out

#- 153 RefundPaymentOrderByDedicated
samples/cli/sample-apps Platform refundPaymentOrderByDedicated \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'WiQU0q0waoPcnJEO' \
    --body '{"description": "5UEsOV8W2HWDek5o"}' \
    > test.out 2>&1
eval_tap $? 153 'RefundPaymentOrderByDedicated' test.out

#- 154 SimulatePaymentOrderNotification
samples/cli/sample-apps Platform simulatePaymentOrderNotification \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'r7yYAS5Vwb8l1dna' \
    --body '{"amount": 26, "currencyCode": "jEYKGy5y9GcmNb3P", "notifyType": "CHARGE", "paymentProvider": "ADYEN", "salesTax": 23, "vat": 18}' \
    > test.out 2>&1
eval_tap $? 154 'SimulatePaymentOrderNotification' test.out

#- 155 GetPaymentOrderChargeStatus
samples/cli/sample-apps Platform getPaymentOrderChargeStatus \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'ZaojOacDxiRYxrQE' \
    > test.out 2>&1
eval_tap $? 155 'GetPaymentOrderChargeStatus' test.out

#- 156 GetPlatformEntitlementConfig
samples/cli/sample-apps Platform getPlatformEntitlementConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Steam' \
    > test.out 2>&1
eval_tap $? 156 'GetPlatformEntitlementConfig' test.out

#- 157 UpdatePlatformEntitlementConfig
samples/cli/sample-apps Platform updatePlatformEntitlementConfig \
    --namespace $AB_NAMESPACE \
    --platform 'GooglePlay' \
    --body '{"allowedPlatformOrigins": ["Nintendo", "Twitch", "Nintendo"]}' \
    > test.out 2>&1
eval_tap $? 157 'UpdatePlatformEntitlementConfig' test.out

#- 158 GetPlatformWalletConfig
samples/cli/sample-apps Platform getPlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Nintendo' \
    > test.out 2>&1
eval_tap $? 158 'GetPlatformWalletConfig' test.out

#- 159 UpdatePlatformWalletConfig
samples/cli/sample-apps Platform updatePlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Oculus' \
    --body '{"allowedBalanceOrigins": ["Nintendo", "Oculus", "GooglePlay"]}' \
    > test.out 2>&1
eval_tap $? 159 'UpdatePlatformWalletConfig' test.out

#- 160 ResetPlatformWalletConfig
samples/cli/sample-apps Platform resetPlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'GooglePlay' \
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
    --body '{"entitlement": {"consumable": {"enabled": true, "strategy": "CUSTOM"}, "durable": {"enabled": true, "strategy": "CUSTOM"}}, "wallet": {"enabled": false, "strategy": "REVOKE_OR_REPORT"}}' \
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
    --endTime 'p8694RELqBUKfVBS' \
    --limit '4' \
    --offset '10' \
    --source 'IAP' \
    --startTime 'BNXHuAEF0y1G0lla' \
    --status 'FAIL' \
    --transactionId '4yr602SPjn68sV39' \
    --userId 'p0uNqlapn6ZUgE4V' \
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
    --body '{"appConfig": {"appName": "m9weaqXkarw4uDGq"}, "customConfig": {"connectionType": "TLS", "grpcServerAddress": "gV14vDshV3uaFPCw"}, "extendType": "APP"}' \
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
    --body '{"description": "5gotd6TFihFNOa7U", "eventTopic": "RcSVB3HqsKyGPdh3", "maxAwarded": 89, "maxAwardedPerUser": 16, "namespaceExpression": "agjuQo8xJt0gnOgK", "rewardCode": "lhcPIYXZeGhojIvZ", "rewardConditions": [{"condition": "1pNWqSMDnDTDQtVT", "conditionName": "B7RtxW1jnggGQD3C", "eventName": "TM8e7oOSTQinB6yr", "rewardItems": [{"duration": 25, "endDate": "1971-06-08T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "T9K6dUkcFnIXAQTU", "quantity": 50, "sku": "lHMb8aiV3OlzUbs2"}, {"duration": 69, "endDate": "1976-05-12T00:00:00Z", "identityType": "ITEM_ID", "itemId": "EMYQAqgZfH1zUBhQ", "quantity": 22, "sku": "un4lgBVV8U4hoCLP"}, {"duration": 32, "endDate": "1979-04-05T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "TVNORFfqHwXU8O7E", "quantity": 31, "sku": "VMSoRa8kBdhBi7Aj"}]}, {"condition": "fL6kzd8bVqtpUfIb", "conditionName": "Sqy0J0ZuQmb0ZgPz", "eventName": "X7E6yoaKlSIsrqGt", "rewardItems": [{"duration": 62, "endDate": "1982-11-29T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "zYJzcpA460tkGwSA", "quantity": 13, "sku": "Hqv3TlpkAuLHGJfK"}, {"duration": 91, "endDate": "1982-08-06T00:00:00Z", "identityType": "ITEM_ID", "itemId": "FbuQqHYP7akrTvmt", "quantity": 21, "sku": "SAuhubJkUm2erIfT"}, {"duration": 46, "endDate": "1972-01-14T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "sX7evOOLGosfiniz", "quantity": 75, "sku": "dXZJAiM2ywMta51f"}]}, {"condition": "fkpJo4uV3voRxHB8", "conditionName": "kjlI6ozoagbeaE7R", "eventName": "LF2TtstGMIarW7BS", "rewardItems": [{"duration": 29, "endDate": "1981-11-11T00:00:00Z", "identityType": "ITEM_ID", "itemId": "ncknpmrsZwvf1d5N", "quantity": 80, "sku": "8qtFFu9ZjPzMvDyF"}, {"duration": 33, "endDate": "1988-11-11T00:00:00Z", "identityType": "ITEM_ID", "itemId": "E5M8WZd1MFAvMT2v", "quantity": 34, "sku": "9eq8HMTj656TsGFY"}, {"duration": 46, "endDate": "1992-08-17T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "p1lwGfR7ml1D5kl8", "quantity": 26, "sku": "xVeOE2cfhuaStMkb"}]}], "userIdExpression": "VJteH3NFbBKGEx2R"}' \
    > test.out 2>&1
eval_tap $? 169 'CreateReward' test.out

#- 170 QueryRewards
samples/cli/sample-apps Platform queryRewards \
    --namespace $AB_NAMESPACE \
    --eventTopic '1yfE4NcA4yDBxhH1' \
    --limit '56' \
    --offset '41' \
    --sortBy '["rewardCode:desc", "namespace", "namespace:asc"]' \
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
    --rewardId '9ItzvuWwtnARYufu' \
    > test.out 2>&1
eval_tap $? 173 'GetReward' test.out

#- 174 UpdateReward
samples/cli/sample-apps Platform updateReward \
    --namespace $AB_NAMESPACE \
    --rewardId 'ILcV3HdgWCv7caJH' \
    --body '{"description": "yLzlmGLS5jnS4sFT", "eventTopic": "83oxozNenawbnKq2", "maxAwarded": 27, "maxAwardedPerUser": 93, "namespaceExpression": "KRVp2tyDEA6THTtP", "rewardCode": "tPJBS81ApLFeWtWy", "rewardConditions": [{"condition": "sW4X7bkqNDDUwt0B", "conditionName": "87joUT4r8okMcL9V", "eventName": "7LdeZoCznFPOVj0a", "rewardItems": [{"duration": 15, "endDate": "1995-08-13T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "qL259gis8MRybj30", "quantity": 86, "sku": "tpZZoAIHDOC4jiwG"}, {"duration": 82, "endDate": "1989-09-15T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "ccIq9B53pbrQooQ6", "quantity": 82, "sku": "9jZUBbQ7n0cVEONZ"}, {"duration": 43, "endDate": "1996-09-06T00:00:00Z", "identityType": "ITEM_ID", "itemId": "ZobEs1xiORWKRVMS", "quantity": 21, "sku": "Zp5iTS7QY3EqzLI5"}]}, {"condition": "cLZSwWUqs3A23JdB", "conditionName": "G2kcmssg5k7Qu8Dd", "eventName": "SbEu2lXF8DQLJIn5", "rewardItems": [{"duration": 75, "endDate": "1972-03-22T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "yy2szAIFBtUlLfuX", "quantity": 85, "sku": "Qdrc3X8j0AuguMfu"}, {"duration": 14, "endDate": "1972-08-28T00:00:00Z", "identityType": "ITEM_ID", "itemId": "WXtl7Q9RDHb5tlHS", "quantity": 49, "sku": "4lREoSEjLmaVHFg6"}, {"duration": 19, "endDate": "1973-06-13T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "ayoN79BLTCYplzAs", "quantity": 76, "sku": "WbdfgDtHOPhcf86E"}]}, {"condition": "jtt9lvY3IxQISfLS", "conditionName": "ZVlq7PgNwFQsYtMM", "eventName": "wpAKCczxQksf2pcK", "rewardItems": [{"duration": 67, "endDate": "1987-09-27T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "gkxRvbzEFI4Ipt0b", "quantity": 20, "sku": "7jD01rblxlPUI7vB"}, {"duration": 10, "endDate": "1996-07-23T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "mekfnUbVYt45kZAt", "quantity": 44, "sku": "gLMpumOEqjBWpCx1"}, {"duration": 37, "endDate": "1976-11-05T00:00:00Z", "identityType": "ITEM_ID", "itemId": "mbijF3FKX9k09Qth", "quantity": 28, "sku": "1saXCQHTU5QEpK2z"}]}], "userIdExpression": "hR6KP7ts9KcpzidW"}' \
    > test.out 2>&1
eval_tap $? 174 'UpdateReward' test.out

#- 175 DeleteReward
samples/cli/sample-apps Platform deleteReward \
    --namespace $AB_NAMESPACE \
    --rewardId 'cf7wtmsIz4IvU3Qq' \
    > test.out 2>&1
eval_tap $? 175 'DeleteReward' test.out

#- 176 CheckEventCondition
samples/cli/sample-apps Platform checkEventCondition \
    --namespace $AB_NAMESPACE \
    --rewardId 'UdY0Fxjeh7Y8YppD' \
    --body '{"payload": {"BT7vPRlyMuRAlq6L": {}, "0aVesa1x7kiHaOXD": {}, "eLzXu5YdQkHd5dyG": {}}}' \
    > test.out 2>&1
eval_tap $? 176 'CheckEventCondition' test.out

#- 177 DeleteRewardConditionRecord
samples/cli/sample-apps Platform deleteRewardConditionRecord \
    --namespace $AB_NAMESPACE \
    --rewardId '3aiWY7Q6Dk0rZztp' \
    --body '{"conditionName": "yQaHriXfwxrwSafL", "userId": "1HlSmBt0kkQFdB3A"}' \
    > test.out 2>&1
eval_tap $? 177 'DeleteRewardConditionRecord' test.out

#- 178 QuerySections
samples/cli/sample-apps Platform querySections \
    --namespace $AB_NAMESPACE \
    --end 'Rn3WeZMTXoSOS6aO' \
    --limit '64' \
    --offset '36' \
    --start 'pyPo8Ehwg249wRVp' \
    --storeId 'sfMvKvd6gS4dN482' \
    --viewId 'T4ZNrsTSIGaECQzh' \
    > test.out 2>&1
eval_tap $? 178 'QuerySections' test.out

#- 179 CreateSection
samples/cli/sample-apps Platform createSection \
    --namespace $AB_NAMESPACE \
    --storeId 'KTcg5GgDnR3ruhYA' \
    --body '{"active": true, "displayOrder": 86, "endDate": "1976-02-20T00:00:00Z", "ext": {"mmdA0N9bfTUztdlL": {}, "DjZQxaW6HlLdwqH6": {}, "jA5DMRSeCrDBnhEZ": {}}, "fixedPeriodRotationConfig": {"backfillType": "NONE", "duration": 0, "itemCount": 49, "rule": "SEQUENCE"}, "items": [{"id": "G1N5ulhxusJOMuPm", "sku": "WWKdkPQRvhQwVika"}, {"id": "3YsXLCSLe7QYWqWc", "sku": "ZCqBKW0z9PfA8T1H"}, {"id": "wYDCQoPoKfzIOcyJ", "sku": "09zUkuvMkKtxczs4"}], "localizations": {"qQMIiPS1qnv9BwTI": {"description": "ZX4YxaahTOUg8T6h", "localExt": {"rMKn9uByFj60M3sZ": {}, "hBsIEsQh2yhVJrIb": {}, "J1L3PQLNIqQx8C0m": {}}, "longDescription": "AaRQZ0n11Md63kpl", "title": "9pfh9vjEmk8RVRE3"}, "6cgpVkAlPlP80yfF": {"description": "e6rQXMXzLlk1yppA", "localExt": {"oPRlsVnxZGxVW6Mh": {}, "vRynQHt51ytuKtlX": {}, "7CM6NhhUEOsBbP7q": {}}, "longDescription": "nE0APK7jLiNwdty7", "title": "xSAxyahmqwyArsmO"}, "qKqGUcLFgkZZelmB": {"description": "p35d0I0YMNS7h4ZU", "localExt": {"I7tuhOGOzYsDMreh": {}, "nklqZ92wzEYiGeKt": {}, "PXzDNHRR0BI9UIWD": {}}, "longDescription": "XDm4CscI57wLD1pR", "title": "avokzPGhA2zovrqs"}}, "name": "eCAkb0pn5lXMwSuk", "rotationType": "CUSTOM", "startDate": "1976-02-26T00:00:00Z", "viewId": "vwuJJdGzOCFp1IEk"}' \
    > test.out 2>&1
eval_tap $? 179 'CreateSection' test.out

#- 180 PurgeExpiredSection
samples/cli/sample-apps Platform purgeExpiredSection \
    --namespace $AB_NAMESPACE \
    --storeId '4qyYFLZ3pwd1EQE8' \
    > test.out 2>&1
eval_tap $? 180 'PurgeExpiredSection' test.out

#- 181 GetSection
samples/cli/sample-apps Platform getSection \
    --namespace $AB_NAMESPACE \
    --sectionId 'iDzrBx5D3KBUtaeu' \
    --storeId 'RQhPbQPVjao2mQ6Z' \
    > test.out 2>&1
eval_tap $? 181 'GetSection' test.out

#- 182 UpdateSection
samples/cli/sample-apps Platform updateSection \
    --namespace $AB_NAMESPACE \
    --sectionId 'L0GW8z7fFyLFanN8' \
    --storeId 'ofgpQYcS4YmiYjFt' \
    --body '{"active": true, "displayOrder": 49, "endDate": "1989-10-29T00:00:00Z", "ext": {"7tumMRttbWGPSZ3l": {}, "RXyZmXkhlcXMGRCy": {}, "MrvFyooH6x2Ip3Bp": {}}, "fixedPeriodRotationConfig": {"backfillType": "CUSTOM", "duration": 81, "itemCount": 14, "rule": "SEQUENCE"}, "items": [{"id": "BiwrycSq3bhxr5bL", "sku": "lgCkXVWwIghdj322"}, {"id": "Q90tIWsNr0D9zt5w", "sku": "Xzu2vgEBPB5p2ppq"}, {"id": "UqbkQN3oyyBibQtl", "sku": "Rf9Jug8auJFSwuu3"}], "localizations": {"cuc1TGj5u5OmzU7P": {"description": "M2WbTLNRAjPbGKJf", "localExt": {"JBqyFuxaFCI1s5gT": {}, "sWJPVdSYZmhXAoke": {}, "EVgjFRC7TbtfJFAK": {}}, "longDescription": "WwGi14uPz3dL0K6j", "title": "jSSJCjCg926Awq4a"}, "9cvAWDyZp9mhCehe": {"description": "JmDz6SOqJfxW1P5N", "localExt": {"93Nbg8nf8JRNnIvR": {}, "7tQjFst9dD4RNJOo": {}, "nFxFXGj1RAgIjKQF": {}}, "longDescription": "TcaVRi91bhEBacsr", "title": "6qaz6OpRYPxAdhCB"}, "0UBAfU8bN6mWWFbt": {"description": "jjtdc2HLkOrFWiPj", "localExt": {"LIrIF09iTJ99ZLBq": {}, "YV2Ag59EKVZm6w9J": {}, "Ep5KUCLhqyKYFERD": {}}, "longDescription": "EfUzIRTmBnOzlO2l", "title": "5Ofy0m8rL0N2nytf"}}, "name": "gLyhnCLmt4vV7Xi5", "rotationType": "NONE", "startDate": "1981-07-30T00:00:00Z", "viewId": "4Eu2RgTXNpADcXeU"}' \
    > test.out 2>&1
eval_tap $? 182 'UpdateSection' test.out

#- 183 DeleteSection
samples/cli/sample-apps Platform deleteSection \
    --namespace $AB_NAMESPACE \
    --sectionId 'nolqNarxMvSpVW8y' \
    --storeId '1ZQWgoCEfbTau3B4' \
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
    --body '{"defaultLanguage": "HGmb33gN5sbGfzFL", "defaultRegion": "5zstwFF4CjXwVbgL", "description": "CsFFnEX2rO0mAZcs", "supportedLanguages": ["nUbPL4wjo60pob38", "OvW8SZbCmvZbHS9O", "orUy4ykvUaS8gtDM"], "supportedRegions": ["RpEdrAnG9S4Khwq1", "N2CSdqvPNXSWVOKn", "JlRlp8BTN7qpt2kx"], "title": "tEwvN3eCrs5wsxBG"}' \
    > test.out 2>&1
eval_tap $? 185 'CreateStore' test.out

#- 186 GetCatalogDefinition
samples/cli/sample-apps Platform getCatalogDefinition \
    --namespace $AB_NAMESPACE \
    --catalogType 'VIEW' \
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
    --body '{"catalogType": "ITEM", "fieldsToBeIncluded": ["ESY5gKP3xoGZJ1m0", "aFSZ7JMQOXJ3Y8h7", "h3tZU42iSNybqoLn"], "idsToBeExported": ["B34qSObBfMXIj3s1", "8cLq0Tt6vCXaliVb", "ciMUvgHRNFUXsUjv"], "storeId": "h6gm4FvNQ03nPJzZ"}' \
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
    --storeId 'dcGmNh0ORY4iSjMw' \
    > test.out 2>&1
eval_tap $? 194 'GetStore' test.out

#- 195 UpdateStore
samples/cli/sample-apps Platform updateStore \
    --namespace $AB_NAMESPACE \
    --storeId 'pUwafvboJebmCmlV' \
    --body '{"defaultLanguage": "mb8ueeX5RmpAnGbf", "defaultRegion": "VCDV1kUKSp7Wfepr", "description": "INGPaV8jiD3ZMISQ", "supportedLanguages": ["tA79dr0r70hj0hhZ", "cmGZJMSAFxPa98kn", "jEJFqNzSzTbvhZLm"], "supportedRegions": ["Y7T2MoLCo7f86gE2", "nJexp4XyLxUhcr35", "obtW3yOY6QsZ2fGP"], "title": "e5pYEporytKlJ7tX"}' \
    > test.out 2>&1
eval_tap $? 195 'UpdateStore' test.out

#- 196 DeleteStore
samples/cli/sample-apps Platform deleteStore \
    --namespace $AB_NAMESPACE \
    --storeId 'AVLxFq9O87iwPT9r' \
    > test.out 2>&1
eval_tap $? 196 'DeleteStore' test.out

#- 197 QueryChanges
samples/cli/sample-apps Platform queryChanges \
    --namespace $AB_NAMESPACE \
    --storeId '6WSMyiKKfXQrjlun' \
    --action 'UPDATE' \
    --itemSku 'UIJcWmKu0KUXCONF' \
    --itemType 'COINS' \
    --limit '94' \
    --offset '55' \
    --selected 'true' \
    --sortBy '["createdAt", "updatedAt", "updatedAt:desc"]' \
    --status 'UNPUBLISHED' \
    --type 'STORE' \
    --updatedAtEnd 'nxSxM1bJkrLdP2wA' \
    --updatedAtStart 'IOae3BlCjHDbGpC4' \
    --withTotal 'false' \
    > test.out 2>&1
eval_tap $? 197 'QueryChanges' test.out

#- 198 PublishAll
samples/cli/sample-apps Platform publishAll \
    --namespace $AB_NAMESPACE \
    --storeId 'eDyGQcxqLVHkFAbg' \
    > test.out 2>&1
eval_tap $? 198 'PublishAll' test.out

#- 199 PublishSelected
samples/cli/sample-apps Platform publishSelected \
    --namespace $AB_NAMESPACE \
    --storeId 'fqwM6vLMS8jZSpdS' \
    > test.out 2>&1
eval_tap $? 199 'PublishSelected' test.out

#- 200 SelectAllRecords
samples/cli/sample-apps Platform selectAllRecords \
    --namespace $AB_NAMESPACE \
    --storeId 'Z8uDnHAknlZo96wC' \
    > test.out 2>&1
eval_tap $? 200 'SelectAllRecords' test.out

#- 201 SelectAllRecordsByCriteria
samples/cli/sample-apps Platform selectAllRecordsByCriteria \
    --namespace $AB_NAMESPACE \
    --storeId 'QyuMEMn54Xidx3ig' \
    --action 'UPDATE' \
    --itemSku 'pkk8k6P5GOCh3QlN' \
    --itemType 'CODE' \
    --selected 'false' \
    --type 'CATEGORY' \
    --updatedAtEnd 'inOUjueWCJJvJy7G' \
    --updatedAtStart 'IpMX4AYLSuh9gdhb' \
    > test.out 2>&1
eval_tap $? 201 'SelectAllRecordsByCriteria' test.out

#- 202 GetStatistic
samples/cli/sample-apps Platform getStatistic \
    --namespace $AB_NAMESPACE \
    --storeId 'n0WyCAg1bZwrwiIn' \
    --action 'UPDATE' \
    --itemSku 'VhDp63src5Vg4viQ' \
    --itemType 'EXTENSION' \
    --type 'VIEW' \
    --updatedAtEnd 'FyUBK9ocencBg9yA' \
    --updatedAtStart 'caS8rek6udffQwNl' \
    > test.out 2>&1
eval_tap $? 202 'GetStatistic' test.out

#- 203 UnselectAllRecords
samples/cli/sample-apps Platform unselectAllRecords \
    --namespace $AB_NAMESPACE \
    --storeId 'GQ1v06T3KLAvxSum' \
    > test.out 2>&1
eval_tap $? 203 'UnselectAllRecords' test.out

#- 204 SelectRecord
samples/cli/sample-apps Platform selectRecord \
    --changeId 'DMZCuJRRJTdVYtl7' \
    --namespace $AB_NAMESPACE \
    --storeId 'tcFwP3Bn9UKvarvb' \
    > test.out 2>&1
eval_tap $? 204 'SelectRecord' test.out

#- 205 UnselectRecord
samples/cli/sample-apps Platform unselectRecord \
    --changeId 'I1p9up1mSwrwSKBG' \
    --namespace $AB_NAMESPACE \
    --storeId 'hFhU28Qr3FccKvJH' \
    > test.out 2>&1
eval_tap $? 205 'UnselectRecord' test.out

#- 206 CloneStore
samples/cli/sample-apps Platform cloneStore \
    --namespace $AB_NAMESPACE \
    --storeId 'NWafi2X4pl1i4xD6' \
    --targetStoreId '76as2r34Ntkvowgl' \
    > test.out 2>&1
eval_tap $? 206 'CloneStore' test.out

#- 207 ExportStore
eval_tap 0 207 'ExportStore # SKIP deprecated' test.out

#- 208 QueryImportHistory
samples/cli/sample-apps Platform queryImportHistory \
    --namespace $AB_NAMESPACE \
    --storeId 'mga3eBOKIZQTZwhB' \
    --end 'zaewAM8EeDEcFi7a' \
    --limit '23' \
    --offset '72' \
    --sortBy 'edDO8bQ09r9R4atN' \
    --start 'Ew0pYQeWpDBgKZe5' \
    --success 'true' \
    > test.out 2>&1
eval_tap $? 208 'QueryImportHistory' test.out

#- 209 ImportStoreByCSV
samples/cli/sample-apps Platform importStoreByCSV \
    --namespace $AB_NAMESPACE \
    --storeId 'nAkckkdltHQMps6r' \
    --category 'tmp.dat' \
    --display 'tmp.dat' \
    --item 'tmp.dat' \
    --notes 'R2mR6Cvb0AYdKZo5' \
    --section 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 209 'ImportStoreByCSV' test.out

#- 210 QuerySubscriptions
samples/cli/sample-apps Platform querySubscriptions \
    --namespace $AB_NAMESPACE \
    --chargeStatus 'CHARGED' \
    --itemId '34kwt2flMr39arYt' \
    --limit '64' \
    --offset '67' \
    --sku 'snaYN00KobWmTDiR' \
    --status 'EXPIRED' \
    --subscribedBy 'USER' \
    --userId 'dibPIScQ5wd40RT0' \
    > test.out 2>&1
eval_tap $? 210 'QuerySubscriptions' test.out

#- 211 RecurringChargeSubscription
samples/cli/sample-apps Platform recurringChargeSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'ClHtZj5fmStWw4ud' \
    > test.out 2>&1
eval_tap $? 211 'RecurringChargeSubscription' test.out

#- 212 GetTicketDynamic
samples/cli/sample-apps Platform getTicketDynamic \
    --boothName 'N50GjYByyHidmY6g' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 212 'GetTicketDynamic' test.out

#- 213 DecreaseTicketSale
samples/cli/sample-apps Platform decreaseTicketSale \
    --boothName '4tUsMXLWiv1JRuvl' \
    --namespace $AB_NAMESPACE \
    --body '{"orderNo": "iha7MrMzaun19nc1"}' \
    > test.out 2>&1
eval_tap $? 213 'DecreaseTicketSale' test.out

#- 214 GetTicketBoothID
samples/cli/sample-apps Platform getTicketBoothID \
    --boothName '7aRSqG5f1Fppp5Pe' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 214 'GetTicketBoothID' test.out

#- 215 IncreaseTicketSale
samples/cli/sample-apps Platform increaseTicketSale \
    --boothName 'mBfdwGjRjaIFRiSP' \
    --namespace $AB_NAMESPACE \
    --body '{"count": 82, "orderNo": "7IXKXgq797kEkZkV"}' \
    > test.out 2>&1
eval_tap $? 215 'IncreaseTicketSale' test.out

#- 216 Commit
samples/cli/sample-apps Platform commit \
    --namespace $AB_NAMESPACE \
    --body '{"actions": [{"operations": [{"creditPayload": {"balanceOrigin": "Oculus", "count": 51, "currencyCode": "fLtFxezHYQ8A5BQ1", "expireAt": "1971-02-14T00:00:00Z"}, "debitPayload": {"count": 21, "currencyCode": "mVZs7TaMhD2ilWZZ", "walletPlatform": "Playstation"}, "fulFillItemPayload": {"count": 73, "entitlementCollectionId": "LWwM0hs7WhbgMW9G", "entitlementOrigin": "Steam", "itemIdentity": "JKspMHu5WEQTe22y", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 53, "entitlementId": "G7ayCeTedY3cJnmd"}, "type": "REVOKE_ENTITLEMENT"}, {"creditPayload": {"balanceOrigin": "Epic", "count": 1, "currencyCode": "wkqZuMFYSWPBbYLg", "expireAt": "1987-11-03T00:00:00Z"}, "debitPayload": {"count": 6, "currencyCode": "ez5lWlfWS6WFM7fJ", "walletPlatform": "Steam"}, "fulFillItemPayload": {"count": 64, "entitlementCollectionId": "FM4YeBvbujiMUmJd", "entitlementOrigin": "IOS", "itemIdentity": "ukENA5n4ke2Tau66", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 77, "entitlementId": "yXz09BBPNThsDDQO"}, "type": "FULFILL_ITEM"}, {"creditPayload": {"balanceOrigin": "Nintendo", "count": 32, "currencyCode": "KIxfw5sTVBUEajnZ", "expireAt": "1976-09-21T00:00:00Z"}, "debitPayload": {"count": 51, "currencyCode": "NHc3eyTwC57VjseW", "walletPlatform": "Playstation"}, "fulFillItemPayload": {"count": 28, "entitlementCollectionId": "QhprxFiunX3LXGZD", "entitlementOrigin": "System", "itemIdentity": "4wk2jkOnj1VqhY4m", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 14, "entitlementId": "b1KWDOPjPmxPLUte"}, "type": "DEBIT_WALLET"}], "userId": "QOnUWjpVUlGZeMnj"}, {"operations": [{"creditPayload": {"balanceOrigin": "Epic", "count": 65, "currencyCode": "66uvkJQHqzVMvhuh", "expireAt": "1997-08-26T00:00:00Z"}, "debitPayload": {"count": 27, "currencyCode": "m7m1xHKPBZlRdzLl", "walletPlatform": "Playstation"}, "fulFillItemPayload": {"count": 88, "entitlementCollectionId": "DsE6SZu9HXGz0f8Y", "entitlementOrigin": "Oculus", "itemIdentity": "QjJoXj63pJGYooPf", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 18, "entitlementId": "Ivv20uVoFcaEcV4N"}, "type": "FULFILL_ITEM"}, {"creditPayload": {"balanceOrigin": "Twitch", "count": 7, "currencyCode": "hm96kKFmftIO9wnq", "expireAt": "1985-12-15T00:00:00Z"}, "debitPayload": {"count": 5, "currencyCode": "2Y9KOyoH84ESUBCO", "walletPlatform": "Nintendo"}, "fulFillItemPayload": {"count": 69, "entitlementCollectionId": "JGTL4W23fydPdFk9", "entitlementOrigin": "Xbox", "itemIdentity": "zcfkTcRC5zYqMBXM", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 64, "entitlementId": "HuT7WQ91lXlr4ic8"}, "type": "FULFILL_ITEM"}, {"creditPayload": {"balanceOrigin": "Playstation", "count": 98, "currencyCode": "8jKVmCwbNFEZXOi9", "expireAt": "1976-09-03T00:00:00Z"}, "debitPayload": {"count": 64, "currencyCode": "1qmYlgMsW8hGBVl9", "walletPlatform": "Steam"}, "fulFillItemPayload": {"count": 44, "entitlementCollectionId": "zgbiYJmdGjIc1AF4", "entitlementOrigin": "IOS", "itemIdentity": "Q16AfAWgGNEwUzdU", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 36, "entitlementId": "XP9nx3366BDbxUIi"}, "type": "REVOKE_ENTITLEMENT"}], "userId": "rim02ccJSeXkQGW3"}, {"operations": [{"creditPayload": {"balanceOrigin": "Nintendo", "count": 17, "currencyCode": "c6EWLdZhQCBpfLgi", "expireAt": "1971-10-08T00:00:00Z"}, "debitPayload": {"count": 94, "currencyCode": "kcI8mwTzLMzsr8jS", "walletPlatform": "Oculus"}, "fulFillItemPayload": {"count": 95, "entitlementCollectionId": "vREpZjQMBGbVuUiv", "entitlementOrigin": "Playstation", "itemIdentity": "LsOwxxWpOKyVMf3p", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 39, "entitlementId": "KtTEFA7pq01x0sSg"}, "type": "REVOKE_ENTITLEMENT"}, {"creditPayload": {"balanceOrigin": "Nintendo", "count": 87, "currencyCode": "eyunr9Fj3JC6jQwI", "expireAt": "1980-11-24T00:00:00Z"}, "debitPayload": {"count": 8, "currencyCode": "HMipu3SgKIVKCDvF", "walletPlatform": "GooglePlay"}, "fulFillItemPayload": {"count": 29, "entitlementCollectionId": "NmbEm4vhpjC1iBj2", "entitlementOrigin": "Nintendo", "itemIdentity": "dem4xQPH4E8h4X6B", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 42, "entitlementId": "NKZj0BWWWQhDakrP"}, "type": "REVOKE_ENTITLEMENT"}, {"creditPayload": {"balanceOrigin": "IOS", "count": 81, "currencyCode": "AJ5dcamvcfhuIeRP", "expireAt": "1974-12-05T00:00:00Z"}, "debitPayload": {"count": 72, "currencyCode": "tWM9O8JEZklGcqsK", "walletPlatform": "Nintendo"}, "fulFillItemPayload": {"count": 80, "entitlementCollectionId": "tQZzCzJMHkq6dciM", "entitlementOrigin": "IOS", "itemIdentity": "Fvdb6j4td0Rnz8EO", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 53, "entitlementId": "fo9Vr3AklHRi7mou"}, "type": "FULFILL_ITEM"}], "userId": "g2ffI8BELisRUkeO"}], "metadata": {"XAgmGrOj5eQe3M13": {}, "e4zHLFMIz3UTvAHw": {}, "k7O81bUoVZxKkD1U": {}}, "needPreCheck": false, "transactionId": "But4lwgSoCGjdBTq", "type": "voz8a7jN0Z6jz6jl"}' \
    > test.out 2>&1
eval_tap $? 216 'Commit' test.out

#- 217 GetTradeHistoryByCriteria
samples/cli/sample-apps Platform getTradeHistoryByCriteria \
    --namespace $AB_NAMESPACE \
    --limit '15' \
    --offset '8' \
    --status 'FAILED' \
    --type 'GpTwUK2crnq88tbU' \
    --userId 'q8gFbkfI9by9SCwI' \
    > test.out 2>&1
eval_tap $? 217 'GetTradeHistoryByCriteria' test.out

#- 218 GetTradeHistoryByTransactionId
samples/cli/sample-apps Platform getTradeHistoryByTransactionId \
    --namespace $AB_NAMESPACE \
    --transactionId 'PL5mkfd6aLGsS2no' \
    > test.out 2>&1
eval_tap $? 218 'GetTradeHistoryByTransactionId' test.out

#- 219 UnlockSteamUserAchievement
samples/cli/sample-apps Platform unlockSteamUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'v2VWo5pg3OUIShdg' \
    --body '{"achievements": [{"id": "BnmBrR5CJHPduGiU", "value": 33}, {"id": "Nq9aanCVpKY3HlbZ", "value": 95}, {"id": "XNwmxtXyfmv4wBHs", "value": 89}], "steamUserId": "0GScHiHQj2BmJ0sH"}' \
    > test.out 2>&1
eval_tap $? 219 'UnlockSteamUserAchievement' test.out

#- 220 GetXblUserAchievements
samples/cli/sample-apps Platform getXblUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId 'ntgt1YuuosahbwnD' \
    --xboxUserId 'b3A5vAmIitorKgLS' \
    > test.out 2>&1
eval_tap $? 220 'GetXblUserAchievements' test.out

#- 221 UpdateXblUserAchievement
samples/cli/sample-apps Platform updateXblUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'skmIDsGyPYzgz5AX' \
    --body '{"achievements": [{"id": "bj9rpA9eidk2uwnq", "percentComplete": 61}, {"id": "VwNfRrKJOEkChnrS", "percentComplete": 87}, {"id": "FbzvNvnjCO2xDSoz", "percentComplete": 98}], "serviceConfigId": "tbN9xXFte9SEU6PS", "titleId": "sh9yDBmqGoXocdou", "xboxUserId": "wV5JHmQcTNJh9DgJ"}' \
    > test.out 2>&1
eval_tap $? 221 'UpdateXblUserAchievement' test.out

#- 222 AnonymizeCampaign
samples/cli/sample-apps Platform anonymizeCampaign \
    --namespace $AB_NAMESPACE \
    --userId 'RlbsvyDWKhG85Ri8' \
    > test.out 2>&1
eval_tap $? 222 'AnonymizeCampaign' test.out

#- 223 AnonymizeEntitlement
samples/cli/sample-apps Platform anonymizeEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'rFKLb77QOh8j2Mm6' \
    > test.out 2>&1
eval_tap $? 223 'AnonymizeEntitlement' test.out

#- 224 AnonymizeFulfillment
samples/cli/sample-apps Platform anonymizeFulfillment \
    --namespace $AB_NAMESPACE \
    --userId 'Ysy0VXZ84MyGsNQo' \
    > test.out 2>&1
eval_tap $? 224 'AnonymizeFulfillment' test.out

#- 225 AnonymizeIntegration
samples/cli/sample-apps Platform anonymizeIntegration \
    --namespace $AB_NAMESPACE \
    --userId '8D7WYH7YcMMW3w6T' \
    > test.out 2>&1
eval_tap $? 225 'AnonymizeIntegration' test.out

#- 226 AnonymizeOrder
samples/cli/sample-apps Platform anonymizeOrder \
    --namespace $AB_NAMESPACE \
    --userId 'HKlT5IxMc9QWnqZx' \
    > test.out 2>&1
eval_tap $? 226 'AnonymizeOrder' test.out

#- 227 AnonymizePayment
samples/cli/sample-apps Platform anonymizePayment \
    --namespace $AB_NAMESPACE \
    --userId 'MCVeqmdmazCXASRr' \
    > test.out 2>&1
eval_tap $? 227 'AnonymizePayment' test.out

#- 228 AnonymizeRevocation
samples/cli/sample-apps Platform anonymizeRevocation \
    --namespace $AB_NAMESPACE \
    --userId 'rdPP4d4X4qnGe5GP' \
    > test.out 2>&1
eval_tap $? 228 'AnonymizeRevocation' test.out

#- 229 AnonymizeSubscription
samples/cli/sample-apps Platform anonymizeSubscription \
    --namespace $AB_NAMESPACE \
    --userId 'TAjGMK5h1lolep10' \
    > test.out 2>&1
eval_tap $? 229 'AnonymizeSubscription' test.out

#- 230 AnonymizeWallet
samples/cli/sample-apps Platform anonymizeWallet \
    --namespace $AB_NAMESPACE \
    --userId '7P0w8Wt6gq3AkHkm' \
    > test.out 2>&1
eval_tap $? 230 'AnonymizeWallet' test.out

#- 231 GetUserDLCByPlatform
samples/cli/sample-apps Platform getUserDLCByPlatform \
    --namespace $AB_NAMESPACE \
    --userId 'bos1Sj6R0rozUUfB' \
    --type 'OCULUS' \
    > test.out 2>&1
eval_tap $? 231 'GetUserDLCByPlatform' test.out

#- 232 GetUserDLC
samples/cli/sample-apps Platform getUserDLC \
    --namespace $AB_NAMESPACE \
    --userId 'Y4iRsy0bhEVo3Drb' \
    --type 'STEAM' \
    > test.out 2>&1
eval_tap $? 232 'GetUserDLC' test.out

#- 233 QueryUserEntitlements
samples/cli/sample-apps Platform queryUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'AvS6AIe5kPHi23NV' \
    --activeOnly 'false' \
    --appType 'DLC' \
    --collectionId 'a2kGJOymCPDrc1Te' \
    --entitlementClazz 'LOOTBOX' \
    --entitlementName 'zXToDz0wqcTo17pO' \
    --features '["d8loF4RwmxOir2t3", "BfYmdU0bGLMSkjF4", "z13iAmMPTOj3QHWD"]' \
    --fuzzyMatchName 'false' \
    --itemId '["2e2cHyxArjp4IHBh", "JcQYiq7R98csMBDL", "jRAtm8zMG8YKAYuP"]' \
    --limit '24' \
    --offset '38' \
    --origin 'Xbox' \
    > test.out 2>&1
eval_tap $? 233 'QueryUserEntitlements' test.out

#- 234 GrantUserEntitlement
samples/cli/sample-apps Platform grantUserEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'ruecm35hamVTTh5Z' \
    --body '[{"collectionId": "KZg6qJKefVPgHL7H", "endDate": "1995-10-20T00:00:00Z", "grantedCode": "oNpT0sYSU7DkryaE", "itemId": "zlReHh8eBHZthE78", "itemNamespace": "mEI6xUKCBDrBLQct", "language": "bSF-yUPD_Wa", "origin": "Steam", "quantity": 61, "region": "4uEs9D2MTbLyJiwv", "source": "IAP", "startDate": "1976-03-09T00:00:00Z", "storeId": "q2k2izNQl0nhlIYC"}, {"collectionId": "dddupIE0zMCNRede", "endDate": "1974-08-12T00:00:00Z", "grantedCode": "O0z0RUsY38Cd19ZS", "itemId": "STLQAVXLLbSZIoTX", "itemNamespace": "r2LX3t4wcaAoVr9K", "language": "QwjN-435", "origin": "Twitch", "quantity": 41, "region": "2VsnFqem9EIEuO69", "source": "ACHIEVEMENT", "startDate": "1983-12-06T00:00:00Z", "storeId": "RSEoWq92LXdbLlNM"}, {"collectionId": "YqIhPTBTsZBOg1Vy", "endDate": "1986-04-27T00:00:00Z", "grantedCode": "ch1VM5riZuBkf8tF", "itemId": "5H9wzkM59bZFq8Nx", "itemNamespace": "HIZ39I8q8klrK0jc", "language": "Wk", "origin": "Twitch", "quantity": 17, "region": "AR3HPVAh2W6oFi1J", "source": "PURCHASE", "startDate": "1971-06-30T00:00:00Z", "storeId": "idPyvFNIO47BOffc"}]' \
    > test.out 2>&1
eval_tap $? 234 'GrantUserEntitlement' test.out

#- 235 GetUserAppEntitlementByAppId
samples/cli/sample-apps Platform getUserAppEntitlementByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'vhQ5jtHn1YILLHsy' \
    --activeOnly 'false' \
    --appId '5Iv7lG0I1WOMZHAz' \
    > test.out 2>&1
eval_tap $? 235 'GetUserAppEntitlementByAppId' test.out

#- 236 QueryUserEntitlementsByAppType
samples/cli/sample-apps Platform queryUserEntitlementsByAppType \
    --namespace $AB_NAMESPACE \
    --userId 'jSaCRit8nwMtbCQD' \
    --activeOnly 'false' \
    --limit '38' \
    --offset '35' \
    --appType 'DEMO' \
    > test.out 2>&1
eval_tap $? 236 'QueryUserEntitlementsByAppType' test.out

#- 237 GetUserEntitlementByItemId
samples/cli/sample-apps Platform getUserEntitlementByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'C9UH2Pv7FIMwPUvI' \
    --activeOnly 'true' \
    --entitlementClazz 'OPTIONBOX' \
    --platform '5JYOl1HIIMUVLdtr' \
    --itemId 'JBZk2ZA7URLGfHmx' \
    > test.out 2>&1
eval_tap $? 237 'GetUserEntitlementByItemId' test.out

#- 238 GetUserActiveEntitlementsByItemIds
samples/cli/sample-apps Platform getUserActiveEntitlementsByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'KbOA4yCYftLrJMkX' \
    --ids '["gw9uO6Sk9M823ga8", "Gm3ow0dgmHUjBZZB", "nimR9wA2vduauLRX"]' \
    --platform 'P3w8Lgeudzff8xRR' \
    > test.out 2>&1
eval_tap $? 238 'GetUserActiveEntitlementsByItemIds' test.out

#- 239 GetUserEntitlementBySku
samples/cli/sample-apps Platform getUserEntitlementBySku \
    --namespace $AB_NAMESPACE \
    --userId 'xHyT6627PRpblxWY' \
    --activeOnly 'true' \
    --entitlementClazz 'ENTITLEMENT' \
    --platform 'jHb04ZbPs8QNmxUy' \
    --sku 'BHiga4ZnCuhLB8ou' \
    > test.out 2>&1
eval_tap $? 239 'GetUserEntitlementBySku' test.out

#- 240 ExistsAnyUserActiveEntitlement
samples/cli/sample-apps Platform existsAnyUserActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'f92qRhUTuq6af6N4' \
    --appIds '["B5QdwnCdmGm5QmEX", "RGxCCIh8Ol5UPDRa", "eAk3KHgLkWdIL8Nw"]' \
    --itemIds '["hYvs5HFB7NbFw3Zq", "fnThHk1tHNTbPK2W", "28N4IqEFBuIL13Pg"]' \
    --platform 'LCZJWU3X81IjvmhW' \
    --skus '["ThLlp9W1SJWioNc5", "EEUvX4QG4JOWUDK4", "WVth7yB7yDDqBeme"]' \
    > test.out 2>&1
eval_tap $? 240 'ExistsAnyUserActiveEntitlement' test.out

#- 241 ExistsAnyUserActiveEntitlementByItemIds
samples/cli/sample-apps Platform existsAnyUserActiveEntitlementByItemIds \
    --namespace $AB_NAMESPACE \
    --userId '3Ca7d9asxHS2UD9G' \
    --platform '0hzOnZBgrqGLfe1t' \
    --itemIds '["ZZRGphpkP0sUbG4Q", "jpvyPdaIHq8tFUje", "I5EXEaWeP6SXeCGZ"]' \
    > test.out 2>&1
eval_tap $? 241 'ExistsAnyUserActiveEntitlementByItemIds' test.out

#- 242 GetUserAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform getUserAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'ljOMWDS4Vgu7cwDQ' \
    --appId 'vVtBDHqB4WPSCcQn' \
    > test.out 2>&1
eval_tap $? 242 'GetUserAppEntitlementOwnershipByAppId' test.out

#- 243 GetUserEntitlementOwnershipByItemId
samples/cli/sample-apps Platform getUserEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --userId '829YqiRcnE1r01Ej' \
    --entitlementClazz 'SUBSCRIPTION' \
    --platform 'sTZqCYSAiZRbh4kr' \
    --itemId 'FkKY0aORZOsjWD46' \
    > test.out 2>&1
eval_tap $? 243 'GetUserEntitlementOwnershipByItemId' test.out

#- 244 GetUserEntitlementOwnershipByItemIds
samples/cli/sample-apps Platform getUserEntitlementOwnershipByItemIds \
    --namespace $AB_NAMESPACE \
    --userId '8O7EPSoibjFC48Cy' \
    --ids '["Dcc8hw9F9tZTMlMS", "Q9HsQ2TcgTfoGy7p", "qPZjuQuSCT1C2zFy"]' \
    --platform 'pl3OH5NjZMggQ86d' \
    > test.out 2>&1
eval_tap $? 244 'GetUserEntitlementOwnershipByItemIds' test.out

#- 245 GetUserEntitlementOwnershipBySku
samples/cli/sample-apps Platform getUserEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --userId 'Vgn892X7xv62T7t6' \
    --entitlementClazz 'CODE' \
    --platform 'Nlh5uR2xO5HQ7wmv' \
    --sku 'Tbme0p1cOCAeQehw' \
    > test.out 2>&1
eval_tap $? 245 'GetUserEntitlementOwnershipBySku' test.out

#- 246 RevokeAllEntitlements
samples/cli/sample-apps Platform revokeAllEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'T3G7XgQ0BVpbcLsH' \
    > test.out 2>&1
eval_tap $? 246 'RevokeAllEntitlements' test.out

#- 247 RevokeUserEntitlements
samples/cli/sample-apps Platform revokeUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'QF5vpD6adqGe1DtF' \
    --entitlementIds 'xUZAF56aKqKrqIRC' \
    > test.out 2>&1
eval_tap $? 247 'RevokeUserEntitlements' test.out

#- 248 GetUserEntitlement
samples/cli/sample-apps Platform getUserEntitlement \
    --entitlementId 'mdzCIStSJpbjaT16' \
    --namespace $AB_NAMESPACE \
    --userId 'Q7b8wlJ9EVS9TIzd' \
    > test.out 2>&1
eval_tap $? 248 'GetUserEntitlement' test.out

#- 249 UpdateUserEntitlement
samples/cli/sample-apps Platform updateUserEntitlement \
    --entitlementId 'oi9MEbHyhGySGRp9' \
    --namespace $AB_NAMESPACE \
    --userId 'hTPYQluFciD7xLtS' \
    --body '{"collectionId": "7WNsTNC8dtbqf29r", "endDate": "1973-09-05T00:00:00Z", "nullFieldList": ["bSsHygHhCa1i8bMO", "G0IYO3HEJm0iggVv", "Ppbys3f6yGv6DDsE"], "origin": "Playstation", "reason": "mJyltyxj3PJvs3YC", "startDate": "1996-08-16T00:00:00Z", "status": "REVOKED", "useCount": 58}' \
    > test.out 2>&1
eval_tap $? 249 'UpdateUserEntitlement' test.out

#- 250 ConsumeUserEntitlement
samples/cli/sample-apps Platform consumeUserEntitlement \
    --entitlementId 'SVR7vo2wddigtZ2j' \
    --namespace $AB_NAMESPACE \
    --userId 'XSLTnp3xiKsq7hgk' \
    --body '{"options": ["UuALsQ5yKp9iRtI1", "X6RSgjW8NX32cquI", "mpTKNlnXaL9lYKM2"], "platform": "RGaqm5wpzmvFX5z9", "requestId": "10hzBsmx6vYO4ihn", "useCount": 13}' \
    > test.out 2>&1
eval_tap $? 250 'ConsumeUserEntitlement' test.out

#- 251 DisableUserEntitlement
samples/cli/sample-apps Platform disableUserEntitlement \
    --entitlementId 'zyjqWF8z6nXUIFIb' \
    --namespace $AB_NAMESPACE \
    --userId 'oiAlCJReXfNtcvyL' \
    > test.out 2>&1
eval_tap $? 251 'DisableUserEntitlement' test.out

#- 252 EnableUserEntitlement
samples/cli/sample-apps Platform enableUserEntitlement \
    --entitlementId 'GoVSY6DW2S8veoQN' \
    --namespace $AB_NAMESPACE \
    --userId 'pwWSdTh19itYLsM2' \
    > test.out 2>&1
eval_tap $? 252 'EnableUserEntitlement' test.out

#- 253 GetUserEntitlementHistories
samples/cli/sample-apps Platform getUserEntitlementHistories \
    --entitlementId 'Ux26a6LDM0TfC27f' \
    --namespace $AB_NAMESPACE \
    --userId 'Cou5vkkztmkAlzeg' \
    > test.out 2>&1
eval_tap $? 253 'GetUserEntitlementHistories' test.out

#- 254 RevokeUserEntitlement
samples/cli/sample-apps Platform revokeUserEntitlement \
    --entitlementId 'vNBBAnoHICpS9dl8' \
    --namespace $AB_NAMESPACE \
    --userId 'cxJTCt0mhkHQC5yo' \
    > test.out 2>&1
eval_tap $? 254 'RevokeUserEntitlement' test.out

#- 255 RevokeUserEntitlementByUseCount
samples/cli/sample-apps Platform revokeUserEntitlementByUseCount \
    --entitlementId 'U02Ux14w8zFxyytw' \
    --namespace $AB_NAMESPACE \
    --userId '0NzwcW3KVgW4BcZV' \
    --body '{"reason": "ExvplbxzGn1gliMJ", "useCount": 97}' \
    > test.out 2>&1
eval_tap $? 255 'RevokeUserEntitlementByUseCount' test.out

#- 256 PreCheckRevokeUserEntitlementByUseCount
samples/cli/sample-apps Platform preCheckRevokeUserEntitlementByUseCount \
    --entitlementId 'XHE9mLKrWIqCwasz' \
    --namespace $AB_NAMESPACE \
    --userId 'xe5hGX8EnTUElcST' \
    --quantity '34' \
    > test.out 2>&1
eval_tap $? 256 'PreCheckRevokeUserEntitlementByUseCount' test.out

#- 257 RevokeUseCount
eval_tap 0 257 'RevokeUseCount # SKIP deprecated' test.out

#- 258 SellUserEntitlement
samples/cli/sample-apps Platform sellUserEntitlement \
    --entitlementId '1TXSI8xt2lbvPrm7' \
    --namespace $AB_NAMESPACE \
    --userId 'frWatkFiXxnEuuEB' \
    --body '{"platform": "5jr6jwWHWgSStjgZ", "requestId": "xRbF1SiLaq4az372", "useCount": 58}' \
    > test.out 2>&1
eval_tap $? 258 'SellUserEntitlement' test.out

#- 259 FulfillItem
samples/cli/sample-apps Platform fulfillItem \
    --namespace $AB_NAMESPACE \
    --userId 'ZcVXqOP72GPtwq4L' \
    --body '{"duration": 65, "endDate": "1990-05-08T00:00:00Z", "entitlementCollectionId": "UuqLu4ZaWISexe7o", "entitlementOrigin": "Twitch", "itemId": "tym9HtSXPt6s3ntG", "itemSku": "IRYZy3jsQIVuA1yp", "language": "FD0Hqgo2lKObg3eM", "metadata": {"JxQVXKaNURO0sLsc": {}, "sQoSbAUnKE4hBmpt": {}, "EtmMByvjiIdF1I4B": {}}, "order": {"currency": {"currencyCode": "zdwPZOQIpcTeHklR", "currencySymbol": "O3Pc5mVPub7PA5oe", "currencyType": "VIRTUAL", "decimals": 84, "namespace": "u4YSoNZPb8N4JAe2"}, "ext": {"hWBpyUf0rgW9TItU": {}, "NdRLshan5YA7eNqb": {}, "sTf44Ln3hIV8OBhJ": {}}, "free": false}, "orderNo": "VgAUgZJKb4nCOfLs", "origin": "Epic", "overrideBundleItemQty": {"PQgPEcQjizn9aHSq": 82, "hhgdtl3BtTfEeT8R": 98, "HPpl2bsMx4ncvTM4": 7}, "quantity": 45, "region": "uSv3FBeYVGRMEibM", "source": "DLC", "startDate": "1974-04-10T00:00:00Z", "storeId": "K1P2IcsoiwXavicl"}' \
    > test.out 2>&1
eval_tap $? 259 'FulfillItem' test.out

#- 260 RedeemCode
samples/cli/sample-apps Platform redeemCode \
    --namespace $AB_NAMESPACE \
    --userId 'D31s0oq3kcgw6d7H' \
    --body '{"code": "zXod4jrKmu4heeSj", "language": "ykr_giIc-rf", "region": "SCJRSJQhkgAdO8QO"}' \
    > test.out 2>&1
eval_tap $? 260 'RedeemCode' test.out

#- 261 PreCheckFulfillItem
samples/cli/sample-apps Platform preCheckFulfillItem \
    --namespace $AB_NAMESPACE \
    --userId 'WjXI2a2hTBJySyHF' \
    --body '{"itemId": "dlqs4AYjNn4pdlgs", "itemSku": "Eo7D9xg0KDfZJHcT", "quantity": 3}' \
    > test.out 2>&1
eval_tap $? 261 'PreCheckFulfillItem' test.out

#- 262 FulfillRewards
samples/cli/sample-apps Platform fulfillRewards \
    --namespace $AB_NAMESPACE \
    --userId 'vJUrsOU9pXjKg799' \
    --body '{"entitlementCollectionId": "YyWPOKKAOfxAcCqf", "entitlementOrigin": "System", "metadata": {"62kZMr3CrhcVxXtf": {}, "rKzA0wOwNeEVriZ8": {}, "7MdIYLYCW22IhaPw": {}}, "origin": "Xbox", "rewards": [{"currency": {"currencyCode": "Ziknx7HwOTAWmCSD", "namespace": "8KIjwr0fCnf5NE8N"}, "item": {"itemId": "lvr79pRXgwTiWkKG", "itemSku": "xhm6RWYHukFk2RB3", "itemType": "ONtUBZGwxWIQ1EEl"}, "quantity": 39, "type": "CURRENCY"}, {"currency": {"currencyCode": "EbLnDWXtRzXWpvTP", "namespace": "M0li5CKvQaBOa1u7"}, "item": {"itemId": "KuraAucGI6v8gKt0", "itemSku": "fYgFX8DyWpquJ2gi", "itemType": "jvKTXoF0sGcsNYka"}, "quantity": 49, "type": "ITEM"}, {"currency": {"currencyCode": "LuDATPMqLMYjltwA", "namespace": "6XKIHaZf0ZWHFH61"}, "item": {"itemId": "H4hiiK5Wl9NOXDqv", "itemSku": "jEOpciLMlb0f8HyR", "itemType": "wTIft26jJ8WKxYyW"}, "quantity": 77, "type": "CURRENCY"}], "source": "OTHER", "transactionId": "J1kkn5DVInAgdEJY"}' \
    > test.out 2>&1
eval_tap $? 262 'FulfillRewards' test.out

#- 263 QueryUserIAPOrders
samples/cli/sample-apps Platform queryUserIAPOrders \
    --namespace $AB_NAMESPACE \
    --userId 'SFi29NVJyFE5Xm66' \
    --endTime 'lDAZSEGZQNC7i285' \
    --limit '63' \
    --offset '62' \
    --productId 'nPAv7eqxmQY6GAq1' \
    --startTime 'N29uwWyaQk8Ybtr4' \
    --status 'FAILED' \
    --type 'PLAYSTATION' \
    > test.out 2>&1
eval_tap $? 263 'QueryUserIAPOrders' test.out

#- 264 QueryAllUserIAPOrders
samples/cli/sample-apps Platform queryAllUserIAPOrders \
    --namespace $AB_NAMESPACE \
    --userId 'xvLCvxaflSbWSXs9' \
    > test.out 2>&1
eval_tap $? 264 'QueryAllUserIAPOrders' test.out

#- 265 QueryUserIAPConsumeHistory
samples/cli/sample-apps Platform queryUserIAPConsumeHistory \
    --namespace $AB_NAMESPACE \
    --userId '2Yr27gkPwGJnsXtd' \
    --endTime 'T7YbPBR0WlwOOGRC' \
    --limit '42' \
    --offset '57' \
    --startTime 'aIgnINZNsDI208T4' \
    --status 'PENDING' \
    --type 'TWITCH' \
    > test.out 2>&1
eval_tap $? 265 'QueryUserIAPConsumeHistory' test.out

#- 266 MockFulfillIAPItem
samples/cli/sample-apps Platform mockFulfillIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'i0sKP7rpmBvPxUAt' \
    --body '{"itemIdentityType": "ITEM_SKU", "language": "Fp", "productId": "TVD0JVbMAI5zTUNM", "region": "9aZKLGZtgAdQwZK9", "transactionId": "5Wg9UsXoNuI7r79Y", "type": "STEAM"}' \
    > test.out 2>&1
eval_tap $? 266 'MockFulfillIAPItem' test.out

#- 267 QueryUserOrders
samples/cli/sample-apps Platform queryUserOrders \
    --namespace $AB_NAMESPACE \
    --userId '1CTfgKWvgRMYoOI7' \
    --itemId 'YplITsfCpqcPttiF' \
    --limit '62' \
    --offset '88' \
    --status 'REFUND_FAILED' \
    > test.out 2>&1
eval_tap $? 267 'QueryUserOrders' test.out

#- 268 AdminCreateUserOrder
samples/cli/sample-apps Platform adminCreateUserOrder \
    --namespace $AB_NAMESPACE \
    --userId 'YChLwX2QUC66JRKv' \
    --body '{"currencyCode": "gufHbd2lk0Vp7V1B", "currencyNamespace": "jzZ8KJldyF6F6Td6", "discountedPrice": 78, "entitlementPlatform": "Nintendo", "ext": {"RTj6pvFltsfd5qYb": {}, "tpuW6pc4m3aH8tpR": {}, "HVLE741lQsJmDICj": {}}, "itemId": "pfGUvQcJSZYLHQdx", "language": "TNlVazUQH85PeB0U", "options": {"skipPriceValidation": true}, "platform": "GooglePlay", "price": 48, "quantity": 56, "region": "v3MRIiTRrMK4uo1q", "returnUrl": "h7BYbzZDLFB8qqqE", "sandbox": false, "sectionId": "2ZQ6wEqcz7Q32fvh"}' \
    > test.out 2>&1
eval_tap $? 268 'AdminCreateUserOrder' test.out

#- 269 CountOfPurchasedItem
samples/cli/sample-apps Platform countOfPurchasedItem \
    --namespace $AB_NAMESPACE \
    --userId 'yhzksHqAu1kz1psR' \
    --itemId 'Xm59HJoWqORvsrTQ' \
    > test.out 2>&1
eval_tap $? 269 'CountOfPurchasedItem' test.out

#- 270 GetUserOrder
samples/cli/sample-apps Platform getUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'xnO96AamB0GMdyWh' \
    --userId 'q4gxBFbdkvMimdyS' \
    > test.out 2>&1
eval_tap $? 270 'GetUserOrder' test.out

#- 271 UpdateUserOrderStatus
samples/cli/sample-apps Platform updateUserOrderStatus \
    --namespace $AB_NAMESPACE \
    --orderNo '7f7NF4zrjhMmRZaA' \
    --userId 'vbtVkNYkDkxgCg5f' \
    --body '{"status": "CHARGEBACK_REVERSED", "statusReason": "0YolhQM2H4enz9k6"}' \
    > test.out 2>&1
eval_tap $? 271 'UpdateUserOrderStatus' test.out

#- 272 FulfillUserOrder
samples/cli/sample-apps Platform fulfillUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'TlhUX9E72X2UADvH' \
    --userId 'bSlHlBOdc8fay3Tu' \
    > test.out 2>&1
eval_tap $? 272 'FulfillUserOrder' test.out

#- 273 GetUserOrderGrant
samples/cli/sample-apps Platform getUserOrderGrant \
    --namespace $AB_NAMESPACE \
    --orderNo 'gs20uuavbbzfwDbm' \
    --userId 'gzJjMawGiGAp9bjg' \
    > test.out 2>&1
eval_tap $? 273 'GetUserOrderGrant' test.out

#- 274 GetUserOrderHistories
samples/cli/sample-apps Platform getUserOrderHistories \
    --namespace $AB_NAMESPACE \
    --orderNo 'hwBd3mHXo15O1OIX' \
    --userId 'muKIbqjdn0wtRH4n' \
    > test.out 2>&1
eval_tap $? 274 'GetUserOrderHistories' test.out

#- 275 ProcessUserOrderNotification
samples/cli/sample-apps Platform processUserOrderNotification \
    --namespace $AB_NAMESPACE \
    --orderNo 'PDQRQpouFpNPhNsh' \
    --userId 'zxLrA1oCnnY9taZn' \
    --body '{"additionalData": {"cardSummary": "lHWpUuQx8CRzjHOb"}, "authorisedTime": "1980-07-28T00:00:00Z", "chargebackReversedTime": "1989-09-24T00:00:00Z", "chargebackTime": "1994-11-19T00:00:00Z", "chargedTime": "1979-03-18T00:00:00Z", "createdTime": "1996-12-09T00:00:00Z", "currency": {"currencyCode": "69VOy7yULxfD9kxK", "currencySymbol": "jsN8gWXXz81qf3pW", "currencyType": "REAL", "decimals": 35, "namespace": "s9z1IL2NZpN5zWy8"}, "customParameters": {"Bx7Cm6bHaFiXrRxB": {}, "fYkAESKmODGAkx2t": {}, "GYJ468rGgQB1G6C9": {}}, "extOrderNo": "mw4vClyti8hW2rwg", "extTxId": "1rzx9fvuf4f4h6W3", "extUserId": "JlKhhAdf7TGVlb29", "issuedAt": "1972-03-19T00:00:00Z", "metadata": {"hHQYZjteviPijsTA": "R9noA2K0AXhFsAcA", "KekenGSgxuC4Z5QK": "DWCZeKYGbmdWG3bp", "sAE179cid5AaHjOq": "1GgaZvFK3V0RKyqc"}, "namespace": "Dim0zHzEiw85cojE", "nonceStr": "eWsvAjtBAZygzuDg", "paymentMethod": "l9cxkQheJ7Qz5DaL", "paymentMethodFee": 100, "paymentOrderNo": "pPNsCxSSPTgSd2uj", "paymentProvider": "CHECKOUT", "paymentProviderFee": 68, "paymentStationUrl": "zfB2GJ5Dqxpc44VT", "price": 83, "refundedTime": "1975-09-11T00:00:00Z", "salesTax": 70, "sandbox": true, "sku": "BzrUO1BbrUoUO1ty", "status": "REFUNDED", "statusReason": "GiRfC8TtfD0uv6mK", "subscriptionId": "kLjaENckJ5HMndLb", "subtotalPrice": 73, "targetNamespace": "cgs6YcMthN2laFCx", "targetUserId": "ixAh6PoNJZQYa7rJ", "tax": 89, "totalPrice": 90, "totalTax": 6, "txEndTime": "1991-01-13T00:00:00Z", "type": "ikjV25KvpdTEM7OV", "userId": "QyL8bnZC2bCePRqt", "vat": 44}' \
    > test.out 2>&1
eval_tap $? 275 'ProcessUserOrderNotification' test.out

#- 276 DownloadUserOrderReceipt
samples/cli/sample-apps Platform downloadUserOrderReceipt \
    --namespace $AB_NAMESPACE \
    --orderNo '634HuIgAX57g4v6x' \
    --userId 'b4uDwQ401qLzOajc' \
    > test.out 2>&1
eval_tap $? 276 'DownloadUserOrderReceipt' test.out

#- 277 CreateUserPaymentOrder
samples/cli/sample-apps Platform createUserPaymentOrder \
    --namespace $AB_NAMESPACE \
    --userId 'p6vlIvRKZ0uS5KfA' \
    --body '{"currencyCode": "0cI7JTwYlQm4dWfx", "currencyNamespace": "JuF8XpvyJIfCmfuj", "customParameters": {"OLI7xMfRVHxPeex2": {}, "w2sIMLOwOU24ieCM": {}, "9SHHHoqMniUzB0cS": {}}, "description": "OoiVJSjcu57oTPk7", "extOrderNo": "uk26yutmap7N4tln", "extUserId": "LyI559C43J77J07S", "itemType": "BUNDLE", "language": "hez", "metadata": {"x4T4tIcVWfsS3kv8": "AD23Sywc2HIVKiVF", "dzLDSlr2eCfzGCe8": "wYpeTFSrP1zaNKQn", "3CYp3PGxmTCCdK0p": "XCI5EbhUVoSGnCDZ"}, "notifyUrl": "LTLosF7ScfQ2ujj6", "omitNotification": false, "platform": "stG5qei2FYlJ0sz1", "price": 66, "recurringPaymentOrderNo": "Hgyv7UbET4ydWTn9", "region": "WzIodg462XeZnGqS", "returnUrl": "2Oq5FgUHWhxY5pBd", "sandbox": false, "sku": "6ra4Sv9Sj8apVC81", "subscriptionId": "57bRQ85ElOfpR4gL", "title": "jy5lJszkSpnqxRsi"}' \
    > test.out 2>&1
eval_tap $? 277 'CreateUserPaymentOrder' test.out

#- 278 RefundUserPaymentOrder
samples/cli/sample-apps Platform refundUserPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'oi3YZX8n0WcMZK7r' \
    --userId 'cBm2F9SJIA2kT5Dq' \
    --body '{"description": "cfkA1aU6zZ3cOvDd"}' \
    > test.out 2>&1
eval_tap $? 278 'RefundUserPaymentOrder' test.out

#- 279 ApplyUserRedemption
samples/cli/sample-apps Platform applyUserRedemption \
    --namespace $AB_NAMESPACE \
    --userId 'CPAPaW8QzSEu8bPx' \
    --body '{"code": "cnFCTaDnN270qWyl", "orderNo": "1gZZmDodCFWD6Ie5"}' \
    > test.out 2>&1
eval_tap $? 279 'ApplyUserRedemption' test.out

#- 280 DoRevocation
samples/cli/sample-apps Platform doRevocation \
    --namespace $AB_NAMESPACE \
    --userId 'kNGd6xO3RI9VJi2a' \
    --body '{"meta": {"mMExvBHOkJhFPwH4": {}, "ZHtRnywCBhU44CEL": {}, "A6Oym6mDxyo0j4ce": {}}, "revokeEntries": [{"currency": {"balanceOrigin": "Nintendo", "currencyCode": "WAE4YDsDWozzQN6j", "namespace": "gor7Nt9S1gp5kdtF"}, "entitlement": {"entitlementId": "sbACnEjx19hopksB"}, "item": {"entitlementOrigin": "System", "itemIdentity": "to0OiLPTEidavNBu", "itemIdentityType": "ITEM_ID", "origin": "Twitch"}, "quantity": 74, "type": "CURRENCY"}, {"currency": {"balanceOrigin": "Other", "currencyCode": "CDhaSAvySZihYEUb", "namespace": "a2XMi2vKtovp6bEp"}, "entitlement": {"entitlementId": "jRLHgRrs0HiKx9P6"}, "item": {"entitlementOrigin": "Other", "itemIdentity": "kfmBBmC4E9o7mQfz", "itemIdentityType": "ITEM_SKU", "origin": "System"}, "quantity": 77, "type": "CURRENCY"}, {"currency": {"balanceOrigin": "GooglePlay", "currencyCode": "aXt5VMm9g2R1EjL8", "namespace": "fYs19plv96eS6T5G"}, "entitlement": {"entitlementId": "AIOSofoY1x2fkEHf"}, "item": {"entitlementOrigin": "Steam", "itemIdentity": "bEWP4A4rJHj8jewj", "itemIdentityType": "ITEM_ID", "origin": "Steam"}, "quantity": 15, "type": "ITEM"}], "source": "IAP", "transactionId": "QzJFnuKo8fGvPuS4"}' \
    > test.out 2>&1
eval_tap $? 280 'DoRevocation' test.out

#- 281 RegisterXblSessions
samples/cli/sample-apps Platform registerXblSessions \
    --namespace $AB_NAMESPACE \
    --userId '36T3c2OMn3wkaKJo' \
    --body '{"gameSessionId": "7TS08tU4gp639TQW", "payload": {"g1egOs5ZVe01EuTO": {}, "mLyF5uM8qOy704i9": {}, "EAiVHlTVGiGafMMn": {}}, "scid": "Da7MOWK7McrcKbME", "sessionTemplateName": "59ZwOrCpG0329SCh"}' \
    > test.out 2>&1
eval_tap $? 281 'RegisterXblSessions' test.out

#- 282 QueryUserSubscriptions
samples/cli/sample-apps Platform queryUserSubscriptions \
    --namespace $AB_NAMESPACE \
    --userId '79mM1K6PFh3EaVaV' \
    --chargeStatus 'NEVER' \
    --itemId 'k4jBQkpqsAdFvjOW' \
    --limit '2' \
    --offset '51' \
    --sku '2bT9SlExPEaBX59I' \
    --status 'CANCELLED' \
    --subscribedBy 'PLATFORM' \
    > test.out 2>&1
eval_tap $? 282 'QueryUserSubscriptions' test.out

#- 283 GetUserSubscriptionActivities
samples/cli/sample-apps Platform getUserSubscriptionActivities \
    --namespace $AB_NAMESPACE \
    --userId 'oq2p7ZD1JDPwCKAS' \
    --excludeSystem 'false' \
    --limit '45' \
    --offset '21' \
    --subscriptionId 'CTTkeGP9Yjj76vEW' \
    > test.out 2>&1
eval_tap $? 283 'GetUserSubscriptionActivities' test.out

#- 284 PlatformSubscribeSubscription
samples/cli/sample-apps Platform platformSubscribeSubscription \
    --namespace $AB_NAMESPACE \
    --userId '17joX02UCrpcktG5' \
    --body '{"grantDays": 40, "itemId": "w5pTlefPUMDQkXB7", "language": "jvVeKKyQoO6ssQhP", "reason": "YYQ15wvgLD3Rn6VN", "region": "oVqjn5mmSDQJUmMy", "source": "a5X82eYfq3Lf0VXO"}' \
    > test.out 2>&1
eval_tap $? 284 'PlatformSubscribeSubscription' test.out

#- 285 CheckUserSubscriptionSubscribableByItemId
samples/cli/sample-apps Platform checkUserSubscriptionSubscribableByItemId \
    --namespace $AB_NAMESPACE \
    --userId '2Cvkyg9eAaY94ame' \
    --itemId '4vFggVnxQvuZw4ZH' \
    > test.out 2>&1
eval_tap $? 285 'CheckUserSubscriptionSubscribableByItemId' test.out

#- 286 GetUserSubscription
samples/cli/sample-apps Platform getUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'uRr3WADyeqcNSL8q' \
    --userId 'r9w0jc4s780tMGEg' \
    > test.out 2>&1
eval_tap $? 286 'GetUserSubscription' test.out

#- 287 DeleteUserSubscription
samples/cli/sample-apps Platform deleteUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'QgUredpzprsVRSr4' \
    --userId '9eeZarusT7ciysYR' \
    > test.out 2>&1
eval_tap $? 287 'DeleteUserSubscription' test.out

#- 288 CancelSubscription
samples/cli/sample-apps Platform cancelSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'z71Hu0pMnvoHNYGG' \
    --userId 'SCWKe3FZoxVccZ3z' \
    --force 'true' \
    --body '{"immediate": true, "reason": "xdc4Qyq7FScDStdQ"}' \
    > test.out 2>&1
eval_tap $? 288 'CancelSubscription' test.out

#- 289 GrantDaysToSubscription
samples/cli/sample-apps Platform grantDaysToSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'avBFQwmsGot3Ranw' \
    --userId 'U2p8aqSMIp4hDrpq' \
    --body '{"grantDays": 33, "reason": "xHQ0POLHmanQ0hIj"}' \
    > test.out 2>&1
eval_tap $? 289 'GrantDaysToSubscription' test.out

#- 290 GetUserSubscriptionBillingHistories
samples/cli/sample-apps Platform getUserSubscriptionBillingHistories \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'bTwbzsmoff2ESYxG' \
    --userId 'ZBKmmf244Ahplw0k' \
    --excludeFree 'true' \
    --limit '47' \
    --offset '44' \
    > test.out 2>&1
eval_tap $? 290 'GetUserSubscriptionBillingHistories' test.out

#- 291 ProcessUserSubscriptionNotification
samples/cli/sample-apps Platform processUserSubscriptionNotification \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'n5uyBnyvgkYWQbt0' \
    --userId 'IV2JfXIruXFDMcUu' \
    --body '{"additionalData": {"cardSummary": "mm57vYeOf86RKs63"}, "authorisedTime": "1979-05-03T00:00:00Z", "chargebackReversedTime": "1979-04-21T00:00:00Z", "chargebackTime": "1976-07-12T00:00:00Z", "chargedTime": "1999-06-28T00:00:00Z", "createdTime": "1995-10-21T00:00:00Z", "currency": {"currencyCode": "jB4Frr6fibYngoJV", "currencySymbol": "1vDadHcTDCiPLsmf", "currencyType": "VIRTUAL", "decimals": 85, "namespace": "sM9sP6C9pQffvDky"}, "customParameters": {"8TXV1adxDLgdYnDX": {}, "vBmVRJJuyuKJosUd": {}, "MMVz9mRy6deiM8jz": {}}, "extOrderNo": "0SV57iyUOFGFpYdu", "extTxId": "uiFJpKG1ZlXwUSuh", "extUserId": "lLjO4KyYoVebxWJg", "issuedAt": "1999-04-17T00:00:00Z", "metadata": {"FdVvCKVCVdwftDyN": "xM65Es17N4MF1egc", "j0wuvVWCHYo6jrzo": "4q9rGqj1Dc5RAAhL", "a5GxfUy8esnl6bp5": "954UPoRoXriws7L9"}, "namespace": "M37mXeswKAtWVIx4", "nonceStr": "brdiuX44Ve1Pbvvm", "paymentMethod": "syoP1jQMGogSrkhv", "paymentMethodFee": 43, "paymentOrderNo": "YzIRy9VV7fj4sLaG", "paymentProvider": "STRIPE", "paymentProviderFee": 28, "paymentStationUrl": "B9nFXeoFcm8YRgM5", "price": 61, "refundedTime": "1984-04-07T00:00:00Z", "salesTax": 59, "sandbox": true, "sku": "NWEY3VR13H2VyMML", "status": "INIT", "statusReason": "ucVGmiLKlKsmAczU", "subscriptionId": "Tng3SxRcjBbesSpe", "subtotalPrice": 17, "targetNamespace": "AZTyKn2tKcg6FkxH", "targetUserId": "NkT1SdRzysSvWv1K", "tax": 41, "totalPrice": 3, "totalTax": 100, "txEndTime": "1988-07-19T00:00:00Z", "type": "XbYKpeBMLlgGx2RS", "userId": "Sc3oftqL3C6Ce9sa", "vat": 76}' \
    > test.out 2>&1
eval_tap $? 291 'ProcessUserSubscriptionNotification' test.out

#- 292 AcquireUserTicket
samples/cli/sample-apps Platform acquireUserTicket \
    --boothName 'JztHGzRfg42RfHLz' \
    --namespace $AB_NAMESPACE \
    --userId '0X2j2gJsKBrhArMM' \
    --body '{"count": 47, "orderNo": "BPs44TAXaCdUgvek"}' \
    > test.out 2>&1
eval_tap $? 292 'AcquireUserTicket' test.out

#- 293 QueryUserCurrencyWallets
samples/cli/sample-apps Platform queryUserCurrencyWallets \
    --namespace $AB_NAMESPACE \
    --userId 'v9d00ES4zobSQE8A' \
    > test.out 2>&1
eval_tap $? 293 'QueryUserCurrencyWallets' test.out

#- 294 DebitUserWalletByCurrencyCode
samples/cli/sample-apps Platform debitUserWalletByCurrencyCode \
    --currencyCode 'HcOuhGh0otBbfoqB' \
    --namespace $AB_NAMESPACE \
    --userId 'Ce8zz14S5cHtLBeT' \
    --body '{"allowOverdraft": false, "amount": 59, "balanceOrigin": "Nintendo", "balanceSource": "PAYMENT", "metadata": {"YuThQdKrE2EqvBE2": {}, "Q1zFVmfArQ2wo5jd": {}, "flBmpVBgt4e1HHTl": {}}, "reason": "zJa52mHwWnUNgdHK"}' \
    > test.out 2>&1
eval_tap $? 294 'DebitUserWalletByCurrencyCode' test.out

#- 295 ListUserCurrencyTransactions
samples/cli/sample-apps Platform listUserCurrencyTransactions \
    --currencyCode '0HNeglT3ufCHkSVI' \
    --namespace $AB_NAMESPACE \
    --userId 'BD12dgVH7yr1UQK2' \
    --limit '45' \
    --offset '50' \
    > test.out 2>&1
eval_tap $? 295 'ListUserCurrencyTransactions' test.out

#- 296 CheckBalance
samples/cli/sample-apps Platform checkBalance \
    --currencyCode '6cINvoEZqfotE3pW' \
    --namespace $AB_NAMESPACE \
    --userId 'lSTQ487IIS9o6Kl3' \
    --request '{"amount": 77, "debitBalanceSource": "EXPIRATION", "metadata": {"DA8bnnIGSMmuMu7T": {}, "SB5yyV3UiMCIDjLD": {}, "zr1WCh1d6D4rMgN8": {}}, "reason": "TG1ebtOaKKJZ3Lw4", "walletPlatform": "Other"}' \
    > test.out 2>&1
eval_tap $? 296 'CheckBalance' test.out

#- 297 CheckWallet
eval_tap 0 297 'CheckWallet # SKIP deprecated' test.out

#- 298 CreditUserWallet
samples/cli/sample-apps Platform creditUserWallet \
    --currencyCode 'xAZNwovtgt7WQr7J' \
    --namespace $AB_NAMESPACE \
    --userId 'uzyTb4qiJJiYry7a' \
    --body '{"amount": 26, "expireAt": "1995-10-09T00:00:00Z", "metadata": {"wwFVwceWImj5VC1W": {}, "FCUvhs42MTca3akK": {}, "zWFMGDru5VVhZEwO": {}}, "origin": "GooglePlay", "reason": "mZHBgC1mbkOLGayv", "source": "REDEEM_CODE"}' \
    > test.out 2>&1
eval_tap $? 298 'CreditUserWallet' test.out

#- 299 DebitByWalletPlatform
samples/cli/sample-apps Platform debitByWalletPlatform \
    --currencyCode 'rICAmbtNgdwHIdR1' \
    --namespace $AB_NAMESPACE \
    --userId 'goG9j1fWmLrKexgm' \
    --request '{"amount": 39, "debitBalanceSource": "PAYMENT", "metadata": {"3mUY2pfEtq1TgRdk": {}, "jJmVx6vofyNz5tRq": {}, "CS2dXtxeCfVJCihG": {}}, "reason": "LsdSdV1QJmsdPmhM", "walletPlatform": "Epic"}' \
    > test.out 2>&1
eval_tap $? 299 'DebitByWalletPlatform' test.out

#- 300 PayWithUserWallet
samples/cli/sample-apps Platform payWithUserWallet \
    --currencyCode 'zzDm9zIQfhz5tG2s' \
    --namespace $AB_NAMESPACE \
    --userId 'GZZ2oVwvYj3kwyyF' \
    --body '{"amount": 25, "metadata": {"NCBPKtC72K7bQJr1": {}, "c9aAksET1eAvScuk": {}, "s0gmizPslae3GvtJ": {}}, "walletPlatform": "Oculus"}' \
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
    --storeId 'GWsinFPTyAcdStKi' \
    > test.out 2>&1
eval_tap $? 306 'ListViews' test.out

#- 307 CreateView
samples/cli/sample-apps Platform createView \
    --namespace $AB_NAMESPACE \
    --storeId '7qi9S5cKitKjAk34' \
    --body '{"displayOrder": 11, "localizations": {"Av3TB5A8x1DiWbZX": {"description": "xdoVOAYlRcmzEw29", "localExt": {"dEFA2JOoUfDA6RD0": {}, "idyxfk3Ii6Bg2MVH": {}, "tAYbjDr85MrKg6jL": {}}, "longDescription": "A08VtuJQOH2rr6Dv", "title": "JDrX9TQGAcC62mDh"}, "U2jbWn8aRn3YhULl": {"description": "jm8ePnDuyCvW7Y2E", "localExt": {"j2GfPQLRxHv2yUV0": {}, "XtH4B0SqYdU9ZHgy": {}, "MuEPBp5FqIemoR6b": {}}, "longDescription": "SBFeTKq4DFFVXqri", "title": "jtN9FObm2wmywAuG"}, "4pMPArhKVpMjWgkK": {"description": "VdbX8dzRoLwfYcPA", "localExt": {"C4pdHh3LNRXQZHLF": {}, "ZC2xEB1qGLNQjsy8": {}, "sI5wC7EThnVeKjli": {}}, "longDescription": "3GE1ZczDfY8sifcC", "title": "OE3iJO1pbeBgklUi"}}, "name": "udSHzXLvol5zvnNe"}' \
    > test.out 2>&1
eval_tap $? 307 'CreateView' test.out

#- 308 GetView
samples/cli/sample-apps Platform getView \
    --namespace $AB_NAMESPACE \
    --viewId 'Se4s3zE5Nt6kXk8s' \
    --storeId 'QkoK6w5z7MyUxP1z' \
    > test.out 2>&1
eval_tap $? 308 'GetView' test.out

#- 309 UpdateView
samples/cli/sample-apps Platform updateView \
    --namespace $AB_NAMESPACE \
    --viewId 'e3lQCwHM2dLd3soc' \
    --storeId 'XzIWnIYBxgEn1Uzv' \
    --body '{"displayOrder": 1, "localizations": {"MyfoTfBsIhYRTIV0": {"description": "tZSyKmo7Bx3Mn3Sg", "localExt": {"53RIMrjXHPtUz8ee": {}, "NLmHiRAq6G2wQOsA": {}, "nhgGIjPxwP1peYca": {}}, "longDescription": "pW26JaBBurN1qYTe", "title": "vCpOTnNbEBan1ICj"}, "g6cBWaSGp05bHfR5": {"description": "UDHMFfbn3YSvKF9E", "localExt": {"QmehIBr7Iyu6gMDc": {}, "aXL6o1FUhcEBaqqN": {}, "nwY5Nbo7g866JdgV": {}}, "longDescription": "yqA1niKejCJXgA4Y", "title": "n7hFkhSKWdtf0IIu"}, "MTs2ra0xQdD9kC5l": {"description": "WQ4R752szn4WHnbp", "localExt": {"Er6vX9lRykcxwORf": {}, "DBJElplGkdKHV7od": {}, "bKNrtLlwh9iZNQ93": {}}, "longDescription": "DesqNtlZ9otzpmLW", "title": "tX44R1ArD5dgh19d"}}, "name": "zE1Yv99tWBOCv2wt"}' \
    > test.out 2>&1
eval_tap $? 309 'UpdateView' test.out

#- 310 DeleteView
samples/cli/sample-apps Platform deleteView \
    --namespace $AB_NAMESPACE \
    --viewId 'ma2Lk9zBkuR7d8n8' \
    --storeId 'adxejqSV4L3rchhN' \
    > test.out 2>&1
eval_tap $? 310 'DeleteView' test.out

#- 311 QueryWallets
eval_tap 0 311 'QueryWallets # SKIP deprecated' test.out

#- 312 BulkCredit
samples/cli/sample-apps Platform bulkCredit \
    --namespace $AB_NAMESPACE \
    --body '[{"creditRequest": {"amount": 45, "expireAt": "1983-02-28T00:00:00Z", "metadata": {"lVRvF3UrYypbfbgg": {}, "EGAKLRj88sxXQYd6": {}, "rh4Ysf7apaXA15mP": {}}, "origin": "Steam", "reason": "kLJs9wKbxcne8Sqk", "source": "IAP"}, "currencyCode": "9d7zEpGAdkZn9wKI", "userIds": ["FATRkWlG8sbZjzkk", "lW37W5jAeTOB5GcR", "mDOFMif5sw3dLjiD"]}, {"creditRequest": {"amount": 76, "expireAt": "1992-01-24T00:00:00Z", "metadata": {"QWphZSqHbZQYksnC": {}, "5VN8BAUxpnygYAlI": {}, "NXr5kGoowxRUpvab": {}}, "origin": "Epic", "reason": "3B6qDdExml22CTwk", "source": "REFUND"}, "currencyCode": "d0eyG3jxOCAfswhK", "userIds": ["RPTtBWCFIQISj8Hr", "JsSDta1KnKQ6yYwO", "03TRH15d2kD8CSBn"]}, {"creditRequest": {"amount": 29, "expireAt": "1987-04-24T00:00:00Z", "metadata": {"dCLpwiYLOGOIoga2": {}, "QUFSjJbCcWGwy1wn": {}, "2HS04JdzJI79Xx8U": {}}, "origin": "Playstation", "reason": "GRAniwYnd3wHUKO0", "source": "PURCHASE"}, "currencyCode": "5Tpna57hsqDoGU8p", "userIds": ["uQYWq1XcvGM2Fd19", "inulj1wg5yXG3Sqo", "x01MKuWBbu4pm4eI"]}]' \
    > test.out 2>&1
eval_tap $? 312 'BulkCredit' test.out

#- 313 BulkDebit
samples/cli/sample-apps Platform bulkDebit \
    --namespace $AB_NAMESPACE \
    --body '[{"currencyCode": "MKZ8Ej4qHJMhMfmq", "request": {"allowOverdraft": true, "amount": 97, "balanceOrigin": "IOS", "balanceSource": "EXPIRATION", "metadata": {"zTRKur6V7Egr7o6g": {}, "U3Tqv3QcLuXgoUjh": {}, "rsr8vLxDi0JFOg9f": {}}, "reason": "r68OCexlVtn6lxZH"}, "userIds": ["rXGv8oMFIbmIS2ea", "SnlQKWXt4ugac3Bi", "dMe9HhNGUyr8Ld7r"]}, {"currencyCode": "FxOpsIlSgquLAesu", "request": {"allowOverdraft": true, "amount": 57, "balanceOrigin": "Steam", "balanceSource": "TRADE", "metadata": {"rIz5zxb07YNHPKht": {}, "flqlLVQzGURFyo5d": {}, "LVzEhCKss7DdXDH3": {}}, "reason": "CZnrwtMYCL0eXpx1"}, "userIds": ["h7JCgfTFCrqm6089", "LBqcM4cxaFeFKyEM", "Cymkd8mi4QICf8ew"]}, {"currencyCode": "t2le1zzwCNXhIVbV", "request": {"allowOverdraft": false, "amount": 5, "balanceOrigin": "Epic", "balanceSource": "TRADE", "metadata": {"insVhFvr3N7D0DL6": {}, "12FNRSVZ0gkQPhXs": {}, "oDGze3ZJp8qzCidP": {}}, "reason": "CpU5gvbuBFlAegBH"}, "userIds": ["siE81DoAucVOQ6A5", "0QJcimfzRrjLaqcc", "7jMsrsbiUutPg2dT"]}]' \
    > test.out 2>&1
eval_tap $? 313 'BulkDebit' test.out

#- 314 GetWallet
eval_tap 0 314 'GetWallet # SKIP deprecated' test.out

#- 315 SyncOrders
samples/cli/sample-apps Platform syncOrders \
    --nextEvaluatedKey 'TCjcScA9CAU70lZb' \
    --end 'GIhqg8Kemvol9ugL' \
    --start 'KynixPYmaIXRmpmr' \
    > test.out 2>&1
eval_tap $? 315 'SyncOrders' test.out

#- 316 TestAdyenConfig
samples/cli/sample-apps Platform testAdyenConfig \
    --sandbox 'true' \
    --body '{"allowedPaymentMethods": ["SwsNclLckqXADbUx", "Gr9LXIjjwwQIPJ4T", "dA8YtZO2T7coaTbB"], "apiKey": "BQHH4yaXyKwXUUNb", "authoriseAsCapture": true, "blockedPaymentMethods": ["Ujpyeq7SDubGdZWJ", "ubSZBVlBOdEGPTqb", "lYIQpmCWMzzAns8M"], "clientKey": "GXG3khKYlnIgAt4d", "dropInSettings": "KivDM7lAbTNXO8gM", "liveEndpointUrlPrefix": "IPLNIwJ4C4Gmo2A3", "merchantAccount": "2wr59SKlHEOE1BKa", "notificationHmacKey": "O4GygeTZScSWVxZl", "notificationPassword": "B1hSJ4vYunQ2aeNi", "notificationUsername": "0K3FiWf80oLZtzBB", "returnUrl": "9iiBvNGQXrF759h5", "settings": "7CJbDwuSgrgODttY"}' \
    > test.out 2>&1
eval_tap $? 316 'TestAdyenConfig' test.out

#- 317 TestAliPayConfig
samples/cli/sample-apps Platform testAliPayConfig \
    --sandbox 'true' \
    --body '{"appId": "tfWVWbiNgIUdfPLC", "privateKey": "GjNd9xV3e8GztNf2", "publicKey": "QPHKGwMyNc8ZyWOC", "returnUrl": "BjHHez4x3SsTWIWN"}' \
    > test.out 2>&1
eval_tap $? 317 'TestAliPayConfig' test.out

#- 318 TestCheckoutConfig
samples/cli/sample-apps Platform testCheckoutConfig \
    --sandbox 'false' \
    --body '{"publicKey": "GzdTkTzYuHHajjo4", "secretKey": "B4Hg2naEetEcmmQ2"}' \
    > test.out 2>&1
eval_tap $? 318 'TestCheckoutConfig' test.out

#- 319 DebugMatchedPaymentMerchantConfig
samples/cli/sample-apps Platform debugMatchedPaymentMerchantConfig \
    --namespace 'vAoqAhXC9z4VuCNw' \
    --region 'ie3AQnpNDes7ag87' \
    > test.out 2>&1
eval_tap $? 319 'DebugMatchedPaymentMerchantConfig' test.out

#- 320 TestPayPalConfig
samples/cli/sample-apps Platform testPayPalConfig \
    --sandbox 'false' \
    --body '{"clientID": "H7xYomkPVa6vdbGB", "clientSecret": "1AxwEde3WxKnyKgl", "returnUrl": "F6DzS6poZUYath3u", "webHookId": "pDralNUIIStYj0Sq"}' \
    > test.out 2>&1
eval_tap $? 320 'TestPayPalConfig' test.out

#- 321 TestStripeConfig
samples/cli/sample-apps Platform testStripeConfig \
    --sandbox 'true' \
    --body '{"allowedPaymentMethodTypes": ["CJq3rdIaRyPhkoeT", "WeISgtjIByrKkpho", "WHBrhtMUTSFfotpg"], "publishableKey": "4cqKBdLvrIGKNQC4", "secretKey": "j44lCibPQser3e4x", "webhookSecret": "E7s1Kbq25TuoWycO"}' \
    > test.out 2>&1
eval_tap $? 321 'TestStripeConfig' test.out

#- 322 TestWxPayConfig
samples/cli/sample-apps Platform testWxPayConfig \
    --body '{"appId": "obfOcLHxxUL5MBFL", "key": "I7wI4sbo7hGru8GG", "mchid": "oEg62H861TUWQtoi", "returnUrl": "EWDiRIYI1efPX7qd"}' \
    > test.out 2>&1
eval_tap $? 322 'TestWxPayConfig' test.out

#- 323 TestXsollaConfig
samples/cli/sample-apps Platform testXsollaConfig \
    --body '{"apiKey": "JVt5H7PYEjmxuCxT", "flowCompletionUrl": "eAFWkhQDztcXPCXx", "merchantId": 14, "projectId": 6, "projectSecretKey": "Kvw4uRvBgBlYzLt1"}' \
    > test.out 2>&1
eval_tap $? 323 'TestXsollaConfig' test.out

#- 324 GetPaymentMerchantConfig
samples/cli/sample-apps Platform getPaymentMerchantConfig \
    --id '08rJxz8CC5xO2A33' \
    > test.out 2>&1
eval_tap $? 324 'GetPaymentMerchantConfig' test.out

#- 325 UpdateAdyenConfig
samples/cli/sample-apps Platform updateAdyenConfig \
    --id 'sOIocjBXeJdulGqd' \
    --sandbox 'true' \
    --validate 'true' \
    --body '{"allowedPaymentMethods": ["4hHWfK3PzVV6YSkc", "Riak1BPtZkzIfjHi", "e7a1Rtczgc2zdRhj"], "apiKey": "5o2sfzsyCgRwTlom", "authoriseAsCapture": false, "blockedPaymentMethods": ["IO0PNS60psRGS01I", "7wRZWL3RgoAySE7I", "SeVtGfcmzvQi4sFt"], "clientKey": "90A3lJ6hzQiaWdmm", "dropInSettings": "UCYgzXGbhl7VmvEi", "liveEndpointUrlPrefix": "8ZL6h7Y7B0WMpQ7I", "merchantAccount": "LGP7zCBzxJCnlLdM", "notificationHmacKey": "uHTkK6KIT4p7grqF", "notificationPassword": "1C0pZE96fSV2TSAI", "notificationUsername": "04rZwncrgyTG0Vi5", "returnUrl": "GCRR1RedNw7szg9g", "settings": "cIdBSvqCarnODRBq"}' \
    > test.out 2>&1
eval_tap $? 325 'UpdateAdyenConfig' test.out

#- 326 TestAdyenConfigById
samples/cli/sample-apps Platform testAdyenConfigById \
    --id 'vHKRdQm6TG0on5uW' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 326 'TestAdyenConfigById' test.out

#- 327 UpdateAliPayConfig
samples/cli/sample-apps Platform updateAliPayConfig \
    --id 'N6l2orfSnoincqQR' \
    --sandbox 'true' \
    --validate 'false' \
    --body '{"appId": "rh2IWufNeVvYCmAF", "privateKey": "4IScORsBdVe9CC1M", "publicKey": "Ev2ru5RnMfXA7tFs", "returnUrl": "h1y62tWeXgh8ef0d"}' \
    > test.out 2>&1
eval_tap $? 327 'UpdateAliPayConfig' test.out

#- 328 TestAliPayConfigById
samples/cli/sample-apps Platform testAliPayConfigById \
    --id 'hyshSqN3njVO3Fy0' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 328 'TestAliPayConfigById' test.out

#- 329 UpdateCheckoutConfig
samples/cli/sample-apps Platform updateCheckoutConfig \
    --id 'YFNQFqSnLEsHJpcl' \
    --sandbox 'false' \
    --validate 'true' \
    --body '{"publicKey": "ZsLUussq6Dyo51QR", "secretKey": "eXtw5gV2rrFHNcVI"}' \
    > test.out 2>&1
eval_tap $? 329 'UpdateCheckoutConfig' test.out

#- 330 TestCheckoutConfigById
samples/cli/sample-apps Platform testCheckoutConfigById \
    --id 'B3l68i3T29cZhocv' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 330 'TestCheckoutConfigById' test.out

#- 331 UpdatePayPalConfig
samples/cli/sample-apps Platform updatePayPalConfig \
    --id 'jRQuOLsR4op1iivt' \
    --sandbox 'true' \
    --validate 'false' \
    --body '{"clientID": "jkzTQGgPRfYCteZ2", "clientSecret": "qW5PxRYZuCGkHCh4", "returnUrl": "SnDbfPAquf8n9osO", "webHookId": "QbvamUK3RTjd3PmF"}' \
    > test.out 2>&1
eval_tap $? 331 'UpdatePayPalConfig' test.out

#- 332 TestPayPalConfigById
samples/cli/sample-apps Platform testPayPalConfigById \
    --id 'qkpgaLD4DlPNLZ2F' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 332 'TestPayPalConfigById' test.out

#- 333 UpdateStripeConfig
samples/cli/sample-apps Platform updateStripeConfig \
    --id 'jReDC9YjjhQGytIh' \
    --sandbox 'false' \
    --validate 'false' \
    --body '{"allowedPaymentMethodTypes": ["DDT58fxQpYGu1zn5", "cNgCvDPjlCpmJI2L", "izBdIjsM2yJoyLmA"], "publishableKey": "UoY7SOw2ZnWypmbS", "secretKey": "YRjgihooZ4nOWYSh", "webhookSecret": "51x8jVeBPSeSlJiO"}' \
    > test.out 2>&1
eval_tap $? 333 'UpdateStripeConfig' test.out

#- 334 TestStripeConfigById
samples/cli/sample-apps Platform testStripeConfigById \
    --id 'HLnClTME58e935a7' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 334 'TestStripeConfigById' test.out

#- 335 UpdateWxPayConfig
samples/cli/sample-apps Platform updateWxPayConfig \
    --id 'tdKZOr7W9CrMTeG4' \
    --validate 'true' \
    --body '{"appId": "KhvTcrXzDNocBN0V", "key": "xgVo8KqCLONuuStm", "mchid": "6C4kFi315DWBMdM5", "returnUrl": "yHC28op3PXUS5CRS"}' \
    > test.out 2>&1
eval_tap $? 335 'UpdateWxPayConfig' test.out

#- 336 UpdateWxPayConfigCert
samples/cli/sample-apps Platform updateWxPayConfigCert \
    --id 'Bx3p4wLb3qpraVBe' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 336 'UpdateWxPayConfigCert' test.out

#- 337 TestWxPayConfigById
samples/cli/sample-apps Platform testWxPayConfigById \
    --id 'ubBHNUyNAMgVU1y4' \
    > test.out 2>&1
eval_tap $? 337 'TestWxPayConfigById' test.out

#- 338 UpdateXsollaConfig
samples/cli/sample-apps Platform updateXsollaConfig \
    --id 'SEJuJOI05UetImOd' \
    --validate 'true' \
    --body '{"apiKey": "e8R78UeCQkOiaZ7z", "flowCompletionUrl": "7nJrIzQZb1SDJ9rW", "merchantId": 84, "projectId": 47, "projectSecretKey": "epIj8HgIMmU1Tzac"}' \
    > test.out 2>&1
eval_tap $? 338 'UpdateXsollaConfig' test.out

#- 339 TestXsollaConfigById
samples/cli/sample-apps Platform testXsollaConfigById \
    --id 'pC68UwsV557am7vO' \
    > test.out 2>&1
eval_tap $? 339 'TestXsollaConfigById' test.out

#- 340 UpdateXsollaUIConfig
samples/cli/sample-apps Platform updateXsollaUIConfig \
    --id 'GODU8KNB8DDwjCzv' \
    --body '{"device": "DESKTOP", "showCloseButton": true, "size": "LARGE", "theme": "DARK"}' \
    > test.out 2>&1
eval_tap $? 340 'UpdateXsollaUIConfig' test.out

#- 341 QueryPaymentProviderConfig
samples/cli/sample-apps Platform queryPaymentProviderConfig \
    --limit '75' \
    --namespace 'JpI5hXj7pYY7cQfZ' \
    --offset '34' \
    --region 'wEWhIJMPRuI3BiI9' \
    > test.out 2>&1
eval_tap $? 341 'QueryPaymentProviderConfig' test.out

#- 342 CreatePaymentProviderConfig
samples/cli/sample-apps Platform createPaymentProviderConfig \
    --body '{"aggregate": "XSOLLA", "namespace": "qNTpTVYRloEWQKAn", "region": "YgLTRj3x0RFaFuFq", "sandboxTaxJarApiToken": "C1YXxQDSQ4NUgfqF", "specials": ["STRIPE", "XSOLLA", "ADYEN"], "taxJarApiToken": "Ecng8R3kqosqDHVp", "taxJarEnabled": false, "useGlobalTaxJarApiToken": true}' \
    > test.out 2>&1
eval_tap $? 342 'CreatePaymentProviderConfig' test.out

#- 343 GetAggregatePaymentProviders
samples/cli/sample-apps Platform getAggregatePaymentProviders \
    > test.out 2>&1
eval_tap $? 343 'GetAggregatePaymentProviders' test.out

#- 344 DebugMatchedPaymentProviderConfig
samples/cli/sample-apps Platform debugMatchedPaymentProviderConfig \
    --namespace 'hOwymJBHKbbJIq9E' \
    --region 'oJtRs793PztuonCe' \
    > test.out 2>&1
eval_tap $? 344 'DebugMatchedPaymentProviderConfig' test.out

#- 345 GetSpecialPaymentProviders
samples/cli/sample-apps Platform getSpecialPaymentProviders \
    > test.out 2>&1
eval_tap $? 345 'GetSpecialPaymentProviders' test.out

#- 346 UpdatePaymentProviderConfig
samples/cli/sample-apps Platform updatePaymentProviderConfig \
    --id 'izSNHF21qvsx6gU5' \
    --body '{"aggregate": "XSOLLA", "namespace": "PTZ50yhGU3bhlSBi", "region": "Plt6fPivw6upszbf", "sandboxTaxJarApiToken": "AJzLvUO3wdgeM3jf", "specials": ["WXPAY", "ALIPAY", "STRIPE"], "taxJarApiToken": "AMIMQdRCpN0nXFqN", "taxJarEnabled": false, "useGlobalTaxJarApiToken": false}' \
    > test.out 2>&1
eval_tap $? 346 'UpdatePaymentProviderConfig' test.out

#- 347 DeletePaymentProviderConfig
samples/cli/sample-apps Platform deletePaymentProviderConfig \
    --id 'FagH34SauJIStrVt' \
    > test.out 2>&1
eval_tap $? 347 'DeletePaymentProviderConfig' test.out

#- 348 GetPaymentTaxConfig
samples/cli/sample-apps Platform getPaymentTaxConfig \
    > test.out 2>&1
eval_tap $? 348 'GetPaymentTaxConfig' test.out

#- 349 UpdatePaymentTaxConfig
samples/cli/sample-apps Platform updatePaymentTaxConfig \
    --body '{"sandboxTaxJarApiToken": "oldklp1Oatvow9S1", "taxJarApiToken": "fmDgc4qqPCOM21O6", "taxJarEnabled": true, "taxJarProductCodesMapping": {"IPnqhIFY7iaZ5FMa": "faTDXctZMmzb44SW", "PJ4h39jahS4BntGv": "gaA6JKQX16KUV0zl", "ezOhXzOHfAnS4EiH": "ls584KJsdFUex6VE"}}' \
    > test.out 2>&1
eval_tap $? 349 'UpdatePaymentTaxConfig' test.out

#- 350 SyncPaymentOrders
samples/cli/sample-apps Platform syncPaymentOrders \
    --nextEvaluatedKey 'dtBSzyMiAUI4PSuV' \
    --end 'djU811SFBBtQP9gB' \
    --start '8k9jqEJySWzcylDt' \
    > test.out 2>&1
eval_tap $? 350 'SyncPaymentOrders' test.out

#- 351 PublicGetRootCategories
samples/cli/sample-apps Platform publicGetRootCategories \
    --namespace $AB_NAMESPACE \
    --language 'IvE4JJWYVmWOvGRb' \
    --storeId 'OVt4YibmyjOoCdgn' \
    > test.out 2>&1
eval_tap $? 351 'PublicGetRootCategories' test.out

#- 352 DownloadCategories
samples/cli/sample-apps Platform downloadCategories \
    --namespace $AB_NAMESPACE \
    --language 'h4ryTDce2kh80tmS' \
    --storeId 'jKAnMgXBE8pRsB02' \
    > test.out 2>&1
eval_tap $? 352 'DownloadCategories' test.out

#- 353 PublicGetCategory
samples/cli/sample-apps Platform publicGetCategory \
    --categoryPath '121sjEk1yiP2n1Bm' \
    --namespace $AB_NAMESPACE \
    --language 'EGBI6iIlRBTVgx3D' \
    --storeId 'nD82bSYfp64tSOag' \
    > test.out 2>&1
eval_tap $? 353 'PublicGetCategory' test.out

#- 354 PublicGetChildCategories
samples/cli/sample-apps Platform publicGetChildCategories \
    --categoryPath 'OKza8YbIAP3L4mRa' \
    --namespace $AB_NAMESPACE \
    --language 'vgrAUjpj3p1f3rbO' \
    --storeId 'CKWiOmfzTYfT9LWr' \
    > test.out 2>&1
eval_tap $? 354 'PublicGetChildCategories' test.out

#- 355 PublicGetDescendantCategories
samples/cli/sample-apps Platform publicGetDescendantCategories \
    --categoryPath 'PC5dn9zO2iz5VLpj' \
    --namespace $AB_NAMESPACE \
    --language 'vnW0k3D9011gyDu0' \
    --storeId 'VGfsYBANDbGKtTiU' \
    > test.out 2>&1
eval_tap $? 355 'PublicGetDescendantCategories' test.out

#- 356 PublicListCurrencies
samples/cli/sample-apps Platform publicListCurrencies \
    --namespace $AB_NAMESPACE \
    --currencyType 'VIRTUAL' \
    > test.out 2>&1
eval_tap $? 356 'PublicListCurrencies' test.out

#- 357 GeDLCDurableRewardShortMap
samples/cli/sample-apps Platform geDLCDurableRewardShortMap \
    --namespace $AB_NAMESPACE \
    --dlcType 'PSN' \
    > test.out 2>&1
eval_tap $? 357 'GeDLCDurableRewardShortMap' test.out

#- 358 GetIAPItemMapping
samples/cli/sample-apps Platform getIAPItemMapping \
    --namespace $AB_NAMESPACE \
    --platform 'XBOX' \
    > test.out 2>&1
eval_tap $? 358 'GetIAPItemMapping' test.out

#- 359 PublicGetItemByAppId
samples/cli/sample-apps Platform publicGetItemByAppId \
    --namespace $AB_NAMESPACE \
    --language 'GcKDoKY0AcSAgCzp' \
    --region 'JffgdzSjWiI6VdGu' \
    --storeId 'jwnQDghM7DJTUBD7' \
    --appId 'UDpX1flHyoUu2MeI' \
    > test.out 2>&1
eval_tap $? 359 'PublicGetItemByAppId' test.out

#- 360 PublicQueryItems
samples/cli/sample-apps Platform publicQueryItems \
    --namespace $AB_NAMESPACE \
    --appType 'SOFTWARE' \
    --autoCalcEstimatedPrice 'false' \
    --baseAppId '47edFzTOpQtHP7cD' \
    --categoryPath 'T5zGLUwiUh69lA19' \
    --features 'xiYKysliRbTBEoul' \
    --includeSubCategoryItem 'false' \
    --itemType 'SUBSCRIPTION' \
    --language 'qCKeiINwd2gP1KiP' \
    --limit '42' \
    --offset '58' \
    --region 'kN3djNqUxYHWZAao' \
    --sortBy '["displayOrder:asc", "updatedAt", "updatedAt:asc"]' \
    --storeId 'R0mJE6q1X0431rxO' \
    --tags 'ZESTuseMhmZ8lbvk' \
    > test.out 2>&1
eval_tap $? 360 'PublicQueryItems' test.out

#- 361 PublicGetItemBySku
samples/cli/sample-apps Platform publicGetItemBySku \
    --namespace $AB_NAMESPACE \
    --autoCalcEstimatedPrice 'false' \
    --language 'IejF1C8WxkI5CLBr' \
    --region '3salDkDFODFE6nfZ' \
    --storeId 'mjf4EHlukCv57S2Q' \
    --sku '70H5fUC9Cz3dcNzj' \
    > test.out 2>&1
eval_tap $? 361 'PublicGetItemBySku' test.out

#- 362 PublicGetEstimatedPrice
samples/cli/sample-apps Platform publicGetEstimatedPrice \
    --namespace $AB_NAMESPACE \
    --region 'u8TtRktFx6SDVThh' \
    --storeId 'TVAIfJcBycupmqsT' \
    --itemIds 'OI1XKUbrvRX0yuLu' \
    > test.out 2>&1
eval_tap $? 362 'PublicGetEstimatedPrice' test.out

#- 363 PublicBulkGetItems
samples/cli/sample-apps Platform publicBulkGetItems \
    --namespace $AB_NAMESPACE \
    --autoCalcEstimatedPrice 'false' \
    --language 'l73dRqel7gG2soUB' \
    --region 'Rp5HmzLEI4da3KHH' \
    --storeId 'iIxzKSDMtv1n0S1v' \
    --itemIds 'klts7d7s0xTBY1o3' \
    > test.out 2>&1
eval_tap $? 363 'PublicBulkGetItems' test.out

#- 364 PublicValidateItemPurchaseCondition
samples/cli/sample-apps Platform publicValidateItemPurchaseCondition \
    --namespace $AB_NAMESPACE \
    --body '{"itemIds": ["i2c2vgICCh0zDCqZ", "9hPDnGQtjOrRg7yc", "790wktmz7UsueLTz"]}' \
    > test.out 2>&1
eval_tap $? 364 'PublicValidateItemPurchaseCondition' test.out

#- 365 PublicSearchItems
samples/cli/sample-apps Platform publicSearchItems \
    --namespace $AB_NAMESPACE \
    --autoCalcEstimatedPrice 'false' \
    --itemType 'OPTIONBOX' \
    --limit '32' \
    --offset '35' \
    --region 'oPPt2uaaWTYR0M39' \
    --storeId 'dV55ixuaDx91PJ9B' \
    --keyword 'DdsDcdSuaGjtAHBv' \
    --language '0Vn3YXor2yT1zi1X' \
    > test.out 2>&1
eval_tap $? 365 'PublicSearchItems' test.out

#- 366 PublicGetApp
samples/cli/sample-apps Platform publicGetApp \
    --itemId 'JQlORf7kxPnMtk8x' \
    --namespace $AB_NAMESPACE \
    --language 'A2YhCzoi5naLHUWI' \
    --region 'e42IALVCGdq3kR2G' \
    --storeId 'lzUI339AX0jCbpqu' \
    > test.out 2>&1
eval_tap $? 366 'PublicGetApp' test.out

#- 367 PublicGetItemDynamicData
samples/cli/sample-apps Platform publicGetItemDynamicData \
    --itemId 'xMxJocOMNpHWP1Tz' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 367 'PublicGetItemDynamicData' test.out

#- 368 PublicGetItem
samples/cli/sample-apps Platform publicGetItem \
    --itemId 'Gapsxv7hfML3VIrB' \
    --namespace $AB_NAMESPACE \
    --autoCalcEstimatedPrice 'true' \
    --language 'bD0F5jtGvoK6miXB' \
    --populateBundle 'true' \
    --region 'DfOUHFqqzeCHPKG8' \
    --storeId 'vdaiww2pkpWFqlzi' \
    > test.out 2>&1
eval_tap $? 368 'PublicGetItem' test.out

#- 369 GetPaymentCustomization
eval_tap 0 369 'GetPaymentCustomization # SKIP deprecated' test.out

#- 370 PublicGetPaymentUrl
samples/cli/sample-apps Platform publicGetPaymentUrl \
    --namespace $AB_NAMESPACE \
    --body '{"paymentOrderNo": "Z5m03elTU7waMzhi", "paymentProvider": "WXPAY", "returnUrl": "klIEjarLvJTkpGUK", "ui": "5ZdB9FQcFzapQHaz", "zipCode": "0GyigQRxodUyccuT"}' \
    > test.out 2>&1
eval_tap $? 370 'PublicGetPaymentUrl' test.out

#- 371 PublicGetPaymentMethods
samples/cli/sample-apps Platform publicGetPaymentMethods \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'bLnKknjW8eTftMWA' \
    > test.out 2>&1
eval_tap $? 371 'PublicGetPaymentMethods' test.out

#- 372 PublicGetUnpaidPaymentOrder
samples/cli/sample-apps Platform publicGetUnpaidPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'fDfVoPfN8B3nQ8Ee' \
    > test.out 2>&1
eval_tap $? 372 'PublicGetUnpaidPaymentOrder' test.out

#- 373 Pay
samples/cli/sample-apps Platform pay \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'S9ACJmgu7l9ZhxoE' \
    --paymentProvider 'PAYPAL' \
    --zipCode 'iUUUlm6ovIAOAERz' \
    --body '{"token": "C0ANR6dDWorTfd3S"}' \
    > test.out 2>&1
eval_tap $? 373 'Pay' test.out

#- 374 PublicCheckPaymentOrderPaidStatus
samples/cli/sample-apps Platform publicCheckPaymentOrderPaidStatus \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 's2pMPDCFwB1Bo25E' \
    > test.out 2>&1
eval_tap $? 374 'PublicCheckPaymentOrderPaidStatus' test.out

#- 375 GetPaymentPublicConfig
samples/cli/sample-apps Platform getPaymentPublicConfig \
    --namespace $AB_NAMESPACE \
    --sandbox 'true' \
    --paymentProvider 'WALLET' \
    --region 'XMWIlP0ePt20iZwP' \
    > test.out 2>&1
eval_tap $? 375 'GetPaymentPublicConfig' test.out

#- 376 PublicGetQRCode
samples/cli/sample-apps Platform publicGetQRCode \
    --namespace $AB_NAMESPACE \
    --code 'yxhq96CnpG411IJo' \
    > test.out 2>&1
eval_tap $? 376 'PublicGetQRCode' test.out

#- 377 PublicNormalizePaymentReturnUrl
samples/cli/sample-apps Platform publicNormalizePaymentReturnUrl \
    --namespace $AB_NAMESPACE \
    --payerID 'YHrLKlRZ2HpMdI6p' \
    --foreinginvoice '1f55bMXshhJBgOAj' \
    --invoiceId 'l2H6or2h5SJaohph' \
    --payload 'oRPbFwVbZC6Fj4Qm' \
    --redirectResult '2Z88WmSqFMWmh4oW' \
    --resultCode '5EZbKeuHY2vc0lY0' \
    --sessionId 'MM3UeHK5Zpx0G7uZ' \
    --status 'QtvFIPPR7Us5QfSJ' \
    --token 'UKf6ReXyqMFsZgsN' \
    --type '9GFlt5YkJ5ydmClk' \
    --userId 'RukimruAreYtoEYD' \
    --orderNo 'fHsx7XTYTm0JKnRX' \
    --paymentOrderNo 'hU7cAuHNMzBFNkeE' \
    --paymentProvider 'STRIPE' \
    --returnUrl 'vq0dwMSlm7lHJNVq' \
    > test.out 2>&1
eval_tap $? 377 'PublicNormalizePaymentReturnUrl' test.out

#- 378 GetPaymentTaxValue
samples/cli/sample-apps Platform getPaymentTaxValue \
    --namespace $AB_NAMESPACE \
    --zipCode '6lzHZupOtF9HxZIu' \
    --paymentOrderNo 'w15fNrC42naCKnOk' \
    --paymentProvider 'ADYEN' \
    > test.out 2>&1
eval_tap $? 378 'GetPaymentTaxValue' test.out

#- 379 GetRewardByCode
samples/cli/sample-apps Platform getRewardByCode \
    --namespace $AB_NAMESPACE \
    --rewardCode 'ZzXHu7htDZQMwoao' \
    > test.out 2>&1
eval_tap $? 379 'GetRewardByCode' test.out

#- 380 QueryRewards1
samples/cli/sample-apps Platform queryRewards1 \
    --namespace $AB_NAMESPACE \
    --eventTopic '0mmSd7EmGvoY5eTx' \
    --limit '27' \
    --offset '17' \
    --sortBy '["namespace", "namespace:asc"]' \
    > test.out 2>&1
eval_tap $? 380 'QueryRewards1' test.out

#- 381 GetReward1
samples/cli/sample-apps Platform getReward1 \
    --namespace $AB_NAMESPACE \
    --rewardId 'jrtJstAjvntX2Ufr' \
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
    --appIds '["LaVwlLHT8wzrcNk6", "g7RJRxGAO6mk94iz", "sSDCRjb2Dx34VaUO"]' \
    --itemIds '["w4rRk1tE44UMyBz5", "bw2gYiS1A7ug8HSC", "lgz4EhZYDv0sTlnJ"]' \
    --skus '["zgbDB041vmgbTfrh", "n1pHAGjzh0kBZILM", "0vWMxeJP0xJDniuJ"]' \
    > test.out 2>&1
eval_tap $? 383 'PublicExistsAnyMyActiveEntitlement' test.out

#- 384 PublicGetMyAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform publicGetMyAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --appId 'yrLkIIHukEw1ig8A' \
    > test.out 2>&1
eval_tap $? 384 'PublicGetMyAppEntitlementOwnershipByAppId' test.out

#- 385 PublicGetMyEntitlementOwnershipByItemId
samples/cli/sample-apps Platform publicGetMyEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --entitlementClazz 'OPTIONBOX' \
    --itemId 'IyL8MdbQel4Php6r' \
    > test.out 2>&1
eval_tap $? 385 'PublicGetMyEntitlementOwnershipByItemId' test.out

#- 386 PublicGetMyEntitlementOwnershipBySku
samples/cli/sample-apps Platform publicGetMyEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --entitlementClazz 'LOOTBOX' \
    --sku 'sIwbQjuEt9NL1R51' \
    > test.out 2>&1
eval_tap $? 386 'PublicGetMyEntitlementOwnershipBySku' test.out

#- 387 PublicGetEntitlementOwnershipToken
samples/cli/sample-apps Platform publicGetEntitlementOwnershipToken \
    --namespace $AB_NAMESPACE \
    --appIds '["hQ0NOKadBKJ8A0r8", "RRGJhrD85SZ2NhSK", "6nMSGhQRAsutBMWU"]' \
    --itemIds '["3wOHdDPDZQD3lvCk", "hfnnwKPKj5AcqvJW", "pXiznStTAlTEVI9Q"]' \
    --skus '["nXjClTpMojqMD8A7", "vHadVJJWMjSkRC3n", "7CCfqDlpi0mr9U9Y"]' \
    > test.out 2>&1
eval_tap $? 387 'PublicGetEntitlementOwnershipToken' test.out

#- 388 SyncTwitchDropsEntitlement
samples/cli/sample-apps Platform syncTwitchDropsEntitlement \
    --namespace $AB_NAMESPACE \
    --body '{"gameId": "NJNoRTjzwDDB9tkN", "language": "stk", "region": "KS7ePFaWAKlcaEOP"}' \
    > test.out 2>&1
eval_tap $? 388 'SyncTwitchDropsEntitlement' test.out

#- 389 PublicGetMyWallet
samples/cli/sample-apps Platform publicGetMyWallet \
    --currencyCode '97gvFRgFIx0hgu8B' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 389 'PublicGetMyWallet' test.out

#- 390 SyncEpicGameDLC
samples/cli/sample-apps Platform syncEpicGameDLC \
    --namespace $AB_NAMESPACE \
    --userId '8FB2rD4va8XUczV1' \
    --body '{"epicGamesJwtToken": "PRPGhIOpm9J0Ks0A"}' \
    > test.out 2>&1
eval_tap $? 390 'SyncEpicGameDLC' test.out

#- 391 SyncOculusDLC
samples/cli/sample-apps Platform syncOculusDLC \
    --namespace $AB_NAMESPACE \
    --userId 'je58kgiuApKMGHVa' \
    > test.out 2>&1
eval_tap $? 391 'SyncOculusDLC' test.out

#- 392 PublicSyncPsnDlcInventory
samples/cli/sample-apps Platform publicSyncPsnDlcInventory \
    --namespace $AB_NAMESPACE \
    --userId 'LTxBzofzdZEn4mYm' \
    --body '{"serviceLabel": 72}' \
    > test.out 2>&1
eval_tap $? 392 'PublicSyncPsnDlcInventory' test.out

#- 393 PublicSyncPsnDlcInventoryWithMultipleServiceLabels
samples/cli/sample-apps Platform publicSyncPsnDlcInventoryWithMultipleServiceLabels \
    --namespace $AB_NAMESPACE \
    --userId '8CTEqIN2dxLabf9Q' \
    --body '{"serviceLabels": [89, 44, 93]}' \
    > test.out 2>&1
eval_tap $? 393 'PublicSyncPsnDlcInventoryWithMultipleServiceLabels' test.out

#- 394 SyncSteamDLC
samples/cli/sample-apps Platform syncSteamDLC \
    --namespace $AB_NAMESPACE \
    --userId 'awVoh2cabORKlFHU' \
    --body '{"appId": "84iXbtsjGnX02kd9", "steamId": "GjG9F8CPimx8Okg5"}' \
    > test.out 2>&1
eval_tap $? 394 'SyncSteamDLC' test.out

#- 395 SyncXboxDLC
samples/cli/sample-apps Platform syncXboxDLC \
    --namespace $AB_NAMESPACE \
    --userId 'mwddDkCRRh8pKjcb' \
    --body '{"xstsToken": "SQEpDVFSxtlKOtQW"}' \
    > test.out 2>&1
eval_tap $? 395 'SyncXboxDLC' test.out

#- 396 PublicQueryUserEntitlements
samples/cli/sample-apps Platform publicQueryUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'W2Cbx803aMIWpWtN' \
    --appType 'DLC' \
    --entitlementClazz 'MEDIA' \
    --entitlementName 'm1QEWOFuopBxAJSW' \
    --features '["acddBoR1H2JhPHrU", "36MmRb3Kdluh2fv8", "DGCgc7lzay5loYqk"]' \
    --itemId '["YqbEdj2GzOvbtfEr", "XrMsu8tQSB9QHaq1", "vA3zW2RaGZqu8qvH"]' \
    --limit '44' \
    --offset '28' \
    > test.out 2>&1
eval_tap $? 396 'PublicQueryUserEntitlements' test.out

#- 397 PublicGetUserAppEntitlementByAppId
samples/cli/sample-apps Platform publicGetUserAppEntitlementByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'xmvRM2KgwX7POSad' \
    --appId '9oNrsLmpNyInINAy' \
    > test.out 2>&1
eval_tap $? 397 'PublicGetUserAppEntitlementByAppId' test.out

#- 398 PublicQueryUserEntitlementsByAppType
samples/cli/sample-apps Platform publicQueryUserEntitlementsByAppType \
    --namespace $AB_NAMESPACE \
    --userId 'aykhCZExaMjtUumf' \
    --limit '40' \
    --offset '33' \
    --appType 'SOFTWARE' \
    > test.out 2>&1
eval_tap $? 398 'PublicQueryUserEntitlementsByAppType' test.out

#- 399 PublicGetUserEntitlementsByIds
samples/cli/sample-apps Platform publicGetUserEntitlementsByIds \
    --namespace $AB_NAMESPACE \
    --userId 'hLb8nUlIAauLXn0n' \
    --availablePlatformOnly 'false' \
    --ids '["qtItXKteJzl3A8sO", "6vxxfXMCV51uRSY9", "nb099fV8mcfNDKwa"]' \
    > test.out 2>&1
eval_tap $? 399 'PublicGetUserEntitlementsByIds' test.out

#- 400 PublicGetUserEntitlementByItemId
eval_tap 0 400 'PublicGetUserEntitlementByItemId # SKIP deprecated' test.out

#- 401 PublicGetUserEntitlementBySku
eval_tap 0 401 'PublicGetUserEntitlementBySku # SKIP deprecated' test.out

#- 402 PublicUserEntitlementHistory
samples/cli/sample-apps Platform publicUserEntitlementHistory \
    --namespace $AB_NAMESPACE \
    --userId 'RpbZkvUR8H0N8sDr' \
    --endDate 'FsG2RkG0GYUG00u7' \
    --entitlementClazz 'LOOTBOX' \
    --limit '19' \
    --offset '31' \
    --startDate 'LelrUOwS8EKwDuMW' \
    > test.out 2>&1
eval_tap $? 402 'PublicUserEntitlementHistory' test.out

#- 403 PublicExistsAnyUserActiveEntitlement
samples/cli/sample-apps Platform publicExistsAnyUserActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'Rc0wSLUWvMkCmvKc' \
    --appIds '["nRGWasTgD9IXRtqL", "BZsBOkOXwIPsZzTt", "2bCGvI5GwTpLxIcF"]' \
    --itemIds '["SygCMrxD9Gude0To", "KvUiIASPZBHSbVog", "VGkjJZDRqxfaayXG"]' \
    --skus '["QFlSInWzqdvCRukA", "gw7rfQoGLNoaWn4E", "a9ZqofmQ6Tm9ANuu"]' \
    > test.out 2>&1
eval_tap $? 403 'PublicExistsAnyUserActiveEntitlement' test.out

#- 404 PublicGetUserAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform publicGetUserAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'tqusGbwKSuGJgsW8' \
    --appId '2YEHyCcDijsjMVO0' \
    > test.out 2>&1
eval_tap $? 404 'PublicGetUserAppEntitlementOwnershipByAppId' test.out

#- 405 PublicGetUserEntitlementOwnershipByItemId
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'lM0Bwm5Gshsik9HJ' \
    --entitlementClazz 'SUBSCRIPTION' \
    --itemId 'BqZsvt5Cfxy65ZWq' \
    > test.out 2>&1
eval_tap $? 405 'PublicGetUserEntitlementOwnershipByItemId' test.out

#- 406 PublicGetUserEntitlementOwnershipByItemIds
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'MSj7boT8aQHWwAF7' \
    --ids '["iNw8Mo7EkZgrGj2R", "fCqr9gvMrbBBbARi", "5Tyqbdh6dFd1cXj7"]' \
    > test.out 2>&1
eval_tap $? 406 'PublicGetUserEntitlementOwnershipByItemIds' test.out

#- 407 PublicGetUserEntitlementOwnershipBySku
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --userId 'jRsEBpiFOYyQcVVx' \
    --entitlementClazz 'APP' \
    --sku 'iUdI5XpajNtmeJUX' \
    > test.out 2>&1
eval_tap $? 407 'PublicGetUserEntitlementOwnershipBySku' test.out

#- 408 PublicGetUserEntitlement
samples/cli/sample-apps Platform publicGetUserEntitlement \
    --entitlementId 'y0ZrTLJ5BPzgke8m' \
    --namespace $AB_NAMESPACE \
    --userId 'sLO83xvolkpuAjzP' \
    > test.out 2>&1
eval_tap $? 408 'PublicGetUserEntitlement' test.out

#- 409 PublicConsumeUserEntitlement
samples/cli/sample-apps Platform publicConsumeUserEntitlement \
    --entitlementId 'LADsSFlqmNttG7ce' \
    --namespace $AB_NAMESPACE \
    --userId 'kfUbtEeAwaz3CkUA' \
    --body '{"options": ["dAVUT1HtUYkKbyHg", "IKs04PCrZPbuFJbr", "Bv4qy3j68Y7mOFKu"], "requestId": "D7KYZHflQ5MGHwPD", "useCount": 81}' \
    > test.out 2>&1
eval_tap $? 409 'PublicConsumeUserEntitlement' test.out

#- 410 PublicSellUserEntitlement
samples/cli/sample-apps Platform publicSellUserEntitlement \
    --entitlementId 'KKvkskCRDZ41ntsr' \
    --namespace $AB_NAMESPACE \
    --userId 'OhmJkiDOAlYldQ3q' \
    --body '{"requestId": "rDhfgmUNHgACGxbm", "useCount": 41}' \
    > test.out 2>&1
eval_tap $? 410 'PublicSellUserEntitlement' test.out

#- 411 PublicSplitUserEntitlement
samples/cli/sample-apps Platform publicSplitUserEntitlement \
    --entitlementId 'dMVAHP4B1b6zw92e' \
    --namespace $AB_NAMESPACE \
    --userId 'qLeHj3fhF317VY91' \
    --body '{"useCount": 79}' \
    > test.out 2>&1
eval_tap $? 411 'PublicSplitUserEntitlement' test.out

#- 412 PublicTransferUserEntitlement
samples/cli/sample-apps Platform publicTransferUserEntitlement \
    --entitlementId 'P7E6IQQAnWyijtN2' \
    --namespace $AB_NAMESPACE \
    --userId 'M6tDIETHvdRhltEt' \
    --body '{"entitlementId": "hQniQLETxmx5JRwU", "useCount": 17}' \
    > test.out 2>&1
eval_tap $? 412 'PublicTransferUserEntitlement' test.out

#- 413 PublicRedeemCode
samples/cli/sample-apps Platform publicRedeemCode \
    --namespace $AB_NAMESPACE \
    --userId 'xbLPh3BAwTkMEBu4' \
    --body '{"code": "l8L51rnTHLI3p5Ls", "language": "sXsz_lNbc-706", "region": "5Dbv8ShDc6e6QqUr"}' \
    > test.out 2>&1
eval_tap $? 413 'PublicRedeemCode' test.out

#- 414 PublicFulfillAppleIAPItem
samples/cli/sample-apps Platform publicFulfillAppleIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'f0jDiGsMUbOczcu5' \
    --body '{"excludeOldTransactions": false, "language": "tyT", "productId": "LF72LI3apORkHkya", "receiptData": "HC8OfyinWwMRoc3O", "region": "GmCC2wZsYhxZRjR0", "transactionId": "PPCByXH8T5JvXCOs"}' \
    > test.out 2>&1
eval_tap $? 414 'PublicFulfillAppleIAPItem' test.out

#- 415 SyncEpicGamesInventory
samples/cli/sample-apps Platform syncEpicGamesInventory \
    --namespace $AB_NAMESPACE \
    --userId 'eOvYXOG6tmG3E6Q4' \
    --body '{"epicGamesJwtToken": "py45LRnnen3UpKlU"}' \
    > test.out 2>&1
eval_tap $? 415 'SyncEpicGamesInventory' test.out

#- 416 PublicFulfillGoogleIAPItem
samples/cli/sample-apps Platform publicFulfillGoogleIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'sl6BAmNdf58zrlJS' \
    --body '{"autoAck": false, "language": "gsCV-Pf", "orderId": "sY1gn9x29UAaHqP4", "packageName": "CQ6ejUfFJuaKIM3J", "productId": "vkwx15mSqlloMBX0", "purchaseTime": 100, "purchaseToken": "aWcl4Ah1NISWSjO9", "region": "z07cBfpThRAZVXM8"}' \
    > test.out 2>&1
eval_tap $? 416 'PublicFulfillGoogleIAPItem' test.out

#- 417 SyncOculusConsumableEntitlements
samples/cli/sample-apps Platform syncOculusConsumableEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'Fc43qibLLuXHVemU' \
    > test.out 2>&1
eval_tap $? 417 'SyncOculusConsumableEntitlements' test.out

#- 418 PublicReconcilePlayStationStore
samples/cli/sample-apps Platform publicReconcilePlayStationStore \
    --namespace $AB_NAMESPACE \
    --userId 'CE9mLkTvlPog7EAf' \
    --body '{"currencyCode": "v36U0RAJn8ZCL6BG", "price": 0.20678993512513566, "productId": "yQTpU5bJbf5hfRwT", "serviceLabel": 44}' \
    > test.out 2>&1
eval_tap $? 418 'PublicReconcilePlayStationStore' test.out

#- 419 PublicReconcilePlayStationStoreWithMultipleServiceLabels
samples/cli/sample-apps Platform publicReconcilePlayStationStoreWithMultipleServiceLabels \
    --namespace $AB_NAMESPACE \
    --userId 'bwquvCLQegbNAJMk' \
    --body '{"currencyCode": "uKVfhcFbktTsoqYQ", "price": 0.3163559688540427, "productId": "pgigx9MftOrVGadz", "serviceLabels": [1, 58, 15]}' \
    > test.out 2>&1
eval_tap $? 419 'PublicReconcilePlayStationStoreWithMultipleServiceLabels' test.out

#- 420 SyncSteamInventory
samples/cli/sample-apps Platform syncSteamInventory \
    --namespace $AB_NAMESPACE \
    --userId 'XLjunFTXCcphpZhG' \
    --body '{"appId": "4Ir9WRi8UYgV4IyB", "currencyCode": "a2klUzFinOyVX50C", "language": "zS_001", "price": 0.657123968610982, "productId": "O2VxovM4sYppMTay", "region": "6RrR7V1AdoVIhNVk", "steamId": "cHOkq96A9XJtpzLN"}' \
    > test.out 2>&1
eval_tap $? 420 'SyncSteamInventory' test.out

#- 421 SyncTwitchDropsEntitlement1
samples/cli/sample-apps Platform syncTwitchDropsEntitlement1 \
    --namespace $AB_NAMESPACE \
    --userId 'aQXP206jBuNc4hq2' \
    --body '{"gameId": "WrswG2jVU0APQAQQ", "language": "dk_gc", "region": "8wiljSiHaEl0Tbg2"}' \
    > test.out 2>&1
eval_tap $? 421 'SyncTwitchDropsEntitlement1' test.out

#- 422 SyncXboxInventory
samples/cli/sample-apps Platform syncXboxInventory \
    --namespace $AB_NAMESPACE \
    --userId 'ogkEGi4PS9vJlZkR' \
    --body '{"currencyCode": "PCu50JTP1hqrBXmD", "price": 0.23508028763329591, "productId": "Zcjoijqr4L3TcFn5", "xstsToken": "VUGrAZu8k8dPWiCp"}' \
    > test.out 2>&1
eval_tap $? 422 'SyncXboxInventory' test.out

#- 423 PublicQueryUserOrders
samples/cli/sample-apps Platform publicQueryUserOrders \
    --namespace $AB_NAMESPACE \
    --userId '57DxiZbDXV0Ruutu' \
    --itemId 'NWGFKuOmBz6j28rp' \
    --limit '94' \
    --offset '26' \
    --status 'CHARGEBACK_REVERSED' \
    > test.out 2>&1
eval_tap $? 423 'PublicQueryUserOrders' test.out

#- 424 PublicCreateUserOrder
samples/cli/sample-apps Platform publicCreateUserOrder \
    --namespace $AB_NAMESPACE \
    --userId 'g3JUW4vSAE8fXAKy' \
    --body '{"currencyCode": "7cRXsC8kUsg4GhwT", "discountedPrice": 36, "ext": {"Nf9s5jAC1wvSXqJd": {}, "JW94RZDCVoP5bFs0": {}, "lpHd8lSmaV9tSccY": {}}, "itemId": "qtL8wdX3zLDmMmvH", "language": "yFId_wyQS", "price": 96, "quantity": 18, "region": "QftSvCAX8O25Otgw", "returnUrl": "er2hKgXwQbMMbD2t", "sectionId": "Tl3E8Y3CVVO1FLd8"}' \
    > test.out 2>&1
eval_tap $? 424 'PublicCreateUserOrder' test.out

#- 425 PublicGetUserOrder
samples/cli/sample-apps Platform publicGetUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo '3OXqCoZ3VzAh2uqk' \
    --userId 'bZZllYVew8N1Vapw' \
    > test.out 2>&1
eval_tap $? 425 'PublicGetUserOrder' test.out

#- 426 PublicCancelUserOrder
samples/cli/sample-apps Platform publicCancelUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'IjcKfPLSBUHHT8DL' \
    --userId 'G8X8sXkTBoqSXM9m' \
    > test.out 2>&1
eval_tap $? 426 'PublicCancelUserOrder' test.out

#- 427 PublicGetUserOrderHistories
samples/cli/sample-apps Platform publicGetUserOrderHistories \
    --namespace $AB_NAMESPACE \
    --orderNo '226NOFVJy9qbaiCk' \
    --userId 'RlGgdo0sGHlbXK04' \
    > test.out 2>&1
eval_tap $? 427 'PublicGetUserOrderHistories' test.out

#- 428 PublicDownloadUserOrderReceipt
samples/cli/sample-apps Platform publicDownloadUserOrderReceipt \
    --namespace $AB_NAMESPACE \
    --orderNo 'mu1VaQFzBoBLS1s8' \
    --userId 'Bx3Ylh7vTo1mVcNk' \
    > test.out 2>&1
eval_tap $? 428 'PublicDownloadUserOrderReceipt' test.out

#- 429 PublicGetPaymentAccounts
samples/cli/sample-apps Platform publicGetPaymentAccounts \
    --namespace $AB_NAMESPACE \
    --userId 'uSjNgSGnO9TV2jAH' \
    > test.out 2>&1
eval_tap $? 429 'PublicGetPaymentAccounts' test.out

#- 430 PublicDeletePaymentAccount
samples/cli/sample-apps Platform publicDeletePaymentAccount \
    --id 'Fyf7SOTmGBM8q84I' \
    --namespace $AB_NAMESPACE \
    --type 'card' \
    --userId 'jG6FZw07HE0DzhGM' \
    > test.out 2>&1
eval_tap $? 430 'PublicDeletePaymentAccount' test.out

#- 431 PublicListActiveSections
samples/cli/sample-apps Platform publicListActiveSections \
    --namespace $AB_NAMESPACE \
    --userId 'cDIyRY921VkI8dEl' \
    --autoCalcEstimatedPrice 'true' \
    --language 'iebni7nQrERCg63O' \
    --region 'xtGqdLGTp67TCtiE' \
    --storeId 'YJmsWbBPxfJ2V4pv' \
    --viewId 'qm2oNMcTjDXPaxBw' \
    > test.out 2>&1
eval_tap $? 431 'PublicListActiveSections' test.out

#- 432 PublicQueryUserSubscriptions
samples/cli/sample-apps Platform publicQueryUserSubscriptions \
    --namespace $AB_NAMESPACE \
    --userId 'XCWayOfR6HAHTb3W' \
    --chargeStatus 'CHARGE_FAILED' \
    --itemId 'bY0pd62cDhxmFnQy' \
    --limit '51' \
    --offset '72' \
    --sku 'EUk48Hh4kg8dhglV' \
    --status 'ACTIVE' \
    --subscribedBy 'PLATFORM' \
    > test.out 2>&1
eval_tap $? 432 'PublicQueryUserSubscriptions' test.out

#- 433 PublicSubscribeSubscription
samples/cli/sample-apps Platform publicSubscribeSubscription \
    --namespace $AB_NAMESPACE \
    --userId 'VZV0hXpsXQ4MhviO' \
    --body '{"currencyCode": "YIPB1Vz5GpEm05xT", "itemId": "m6y5zalwudLnj0XY", "language": "fux_RIiJ-Pl", "region": "fspLEOKNsO1lqOYw", "returnUrl": "sE5MR5JJtNDAemWu", "source": "aQDhX3Mr0XrbmXrR"}' \
    > test.out 2>&1
eval_tap $? 433 'PublicSubscribeSubscription' test.out

#- 434 PublicCheckUserSubscriptionSubscribableByItemId
samples/cli/sample-apps Platform publicCheckUserSubscriptionSubscribableByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'LHz15R3iZ3SYMiW4' \
    --itemId '7n7wHdzOKA4aUyiJ' \
    > test.out 2>&1
eval_tap $? 434 'PublicCheckUserSubscriptionSubscribableByItemId' test.out

#- 435 PublicGetUserSubscription
samples/cli/sample-apps Platform publicGetUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'YmdBGK3N6E3pGidj' \
    --userId 'Dd3YjbHFQaWVaDSL' \
    > test.out 2>&1
eval_tap $? 435 'PublicGetUserSubscription' test.out

#- 436 PublicChangeSubscriptionBillingAccount
samples/cli/sample-apps Platform publicChangeSubscriptionBillingAccount \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'VYC6NWzsOtfsH8KT' \
    --userId 'HKAe6ZlVbFIlBs4j' \
    > test.out 2>&1
eval_tap $? 436 'PublicChangeSubscriptionBillingAccount' test.out

#- 437 PublicCancelSubscription
samples/cli/sample-apps Platform publicCancelSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId '5XZmBZnECR2R6bZX' \
    --userId 'GPYg7t6GLspZQCNc' \
    --body '{"immediate": true, "reason": "iEjeoQuut2JG16dh"}' \
    > test.out 2>&1
eval_tap $? 437 'PublicCancelSubscription' test.out

#- 438 PublicGetUserSubscriptionBillingHistories
samples/cli/sample-apps Platform publicGetUserSubscriptionBillingHistories \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'K4Bxd9vl4kx8uOy4' \
    --userId 'kdnluUv3hPeldJQz' \
    --excludeFree 'false' \
    --limit '60' \
    --offset '23' \
    > test.out 2>&1
eval_tap $? 438 'PublicGetUserSubscriptionBillingHistories' test.out

#- 439 PublicListViews
samples/cli/sample-apps Platform publicListViews \
    --namespace $AB_NAMESPACE \
    --userId 'E8fc3wvN0V2KWkcI' \
    --language '8QRbQrIWnNT75IkW' \
    --storeId 'lHQqNdM74a7me281' \
    > test.out 2>&1
eval_tap $? 439 'PublicListViews' test.out

#- 440 PublicGetWallet
samples/cli/sample-apps Platform publicGetWallet \
    --currencyCode 'QZ4DJOBjNLbUmAC7' \
    --namespace $AB_NAMESPACE \
    --userId 'lbLyfQClOP4KBxsD' \
    > test.out 2>&1
eval_tap $? 440 'PublicGetWallet' test.out

#- 441 PublicListUserWalletTransactions
samples/cli/sample-apps Platform publicListUserWalletTransactions \
    --currencyCode 'uV8hRoIWsrgK7SC2' \
    --namespace $AB_NAMESPACE \
    --userId 'E5p1cKSkiiWuEeaI' \
    --limit '24' \
    --offset '89' \
    > test.out 2>&1
eval_tap $? 441 'PublicListUserWalletTransactions' test.out

#- 442 QueryItems1
samples/cli/sample-apps Platform queryItems1 \
    --namespace $AB_NAMESPACE \
    --appType 'DEMO' \
    --availableDate 'nk4KD0MoyuK1KBS5' \
    --baseAppId 'JUkoz5AXDfjGFtVN' \
    --categoryPath 'iyrR1NVyn3Z0DNa1' \
    --features 'wzzXKNIDgqMwXXBR' \
    --includeSubCategoryItem 'true' \
    --itemName 'zU2gc6aOnVYwrjrf' \
    --itemStatus 'ACTIVE' \
    --itemType 'INGAMEITEM' \
    --limit '4' \
    --offset '89' \
    --region 'QUW1v340xdHOW2qm' \
    --sectionExclusive 'true' \
    --sortBy '["displayOrder:desc", "name:desc"]' \
    --storeId 'iYZ2loITA8acttMN' \
    --tags 'X0UNzIMESgAiIcBu' \
    --targetNamespace 'FuGdjv9l5KSgswbw' \
    --withTotal 'false' \
    > test.out 2>&1
eval_tap $? 442 'QueryItems1' test.out

#- 443 ImportStore1
samples/cli/sample-apps Platform importStore1 \
    --namespace $AB_NAMESPACE \
    --storeId 'ZMZoABQ1XS7rD6cm' \
    --strictMode 'false' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 443 'ImportStore1' test.out

#- 444 ExportStore1
samples/cli/sample-apps Platform exportStore1 \
    --namespace $AB_NAMESPACE \
    --storeId '4Z1JCX7INCIbl0Oj' \
    --body '{"itemIds": ["soJImB6T7DQPf9Cu", "mq3JyhDSezZk0jXZ", "N1Xe2EoC9r1nn7da"]}' \
    > test.out 2>&1
eval_tap $? 444 'ExportStore1' test.out

#- 445 FulfillRewardsV2
samples/cli/sample-apps Platform fulfillRewardsV2 \
    --namespace $AB_NAMESPACE \
    --userId '14BveTHCz3NkmYIs' \
    --body '{"entitlementCollectionId": "QelWjdagRMWZ9Z5T", "entitlementOrigin": "Other", "metadata": {"nqzg4nIpzpi4g48L": {}, "pyb440MYlXP78vBs": {}, "sRNuSmQHKbCCj4kS": {}}, "origin": "GooglePlay", "rewards": [{"currency": {"currencyCode": "NbvgFznRIfd1THnJ", "namespace": "h2V8skw1rNxEPSqD"}, "item": {"itemId": "iWT0Sw0M2bet5AX0", "itemSku": "wMvDQCgspdM0NZrr", "itemType": "psiQSE1bikXFIXHp"}, "quantity": 10, "type": "ITEM"}, {"currency": {"currencyCode": "u8PvRV7Qu2VQt8RT", "namespace": "QmPPT9pCx0UAgY1f"}, "item": {"itemId": "AWgjI9nzqRjyRMVd", "itemSku": "ZzRvIL2FAfkc8cZc", "itemType": "aGAR8FeDgA0igUTm"}, "quantity": 81, "type": "ITEM"}, {"currency": {"currencyCode": "BR2hinB7ycwwaZfR", "namespace": "rDEq9u7HIBwqS0g6"}, "item": {"itemId": "Y08HJMJnRuRwFiNu", "itemSku": "yHyuoUJi6tnyKveQ", "itemType": "s7vKE5GOKsL0qWx0"}, "quantity": 56, "type": "CURRENCY"}], "source": "IAP_CHARGEBACK_REVERSED", "transactionId": "oAlyqoKiyKZ6KR2e"}' \
    > test.out 2>&1
eval_tap $? 445 'FulfillRewardsV2' test.out


rm -f "tmp.dat"

exit $EXIT_CODE