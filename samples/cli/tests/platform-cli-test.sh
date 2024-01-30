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
    --id 'BLMePGsVqvNcicoq' \
    > test.out 2>&1
eval_tap $? 3 'GetFulfillmentScript' test.out

#- 4 CreateFulfillmentScript
samples/cli/sample-apps Platform createFulfillmentScript \
    --id 'CnjnhUX8hKNTxrwd' \
    --body '{"grantDays": "knulYPm4K92K1spz"}' \
    > test.out 2>&1
eval_tap $? 4 'CreateFulfillmentScript' test.out

#- 5 DeleteFulfillmentScript
samples/cli/sample-apps Platform deleteFulfillmentScript \
    --id '1YLMzywUcp32TThh' \
    > test.out 2>&1
eval_tap $? 5 'DeleteFulfillmentScript' test.out

#- 6 UpdateFulfillmentScript
samples/cli/sample-apps Platform updateFulfillmentScript \
    --id 'lFBZI1ech1guVP9r' \
    --body '{"grantDays": "44qJGTkF1xZmAImb"}' \
    > test.out 2>&1
eval_tap $? 6 'UpdateFulfillmentScript' test.out

#- 7 ListItemTypeConfigs
samples/cli/sample-apps Platform listItemTypeConfigs \
    > test.out 2>&1
eval_tap $? 7 'ListItemTypeConfigs' test.out

#- 8 CreateItemTypeConfig
samples/cli/sample-apps Platform createItemTypeConfig \
    --body '{"clazz": "XLSsdl0xacGAuAwO", "dryRun": true, "fulfillmentUrl": "xNazQD5ns8TSVkYJ", "itemType": "BUNDLE", "purchaseConditionUrl": "syTdxykZj9M2RQpI"}' \
    > test.out 2>&1
eval_tap $? 8 'CreateItemTypeConfig' test.out

#- 9 SearchItemTypeConfig
samples/cli/sample-apps Platform searchItemTypeConfig \
    --clazz 'WZq2SrB9UHhFt7gN' \
    --itemType 'EXTENSION' \
    > test.out 2>&1
eval_tap $? 9 'SearchItemTypeConfig' test.out

#- 10 GetItemTypeConfig
samples/cli/sample-apps Platform getItemTypeConfig \
    --id '3JkALO5kkeD1JA2z' \
    > test.out 2>&1
eval_tap $? 10 'GetItemTypeConfig' test.out

#- 11 UpdateItemTypeConfig
samples/cli/sample-apps Platform updateItemTypeConfig \
    --id 'VBvCUGIzRr3Gojut' \
    --body '{"clazz": "vckK68MUQ0LYdlos", "dryRun": true, "fulfillmentUrl": "kJB2vCjRY1epwInh", "purchaseConditionUrl": "vUYSMOtvXeeVJ4nN"}' \
    > test.out 2>&1
eval_tap $? 11 'UpdateItemTypeConfig' test.out

#- 12 DeleteItemTypeConfig
samples/cli/sample-apps Platform deleteItemTypeConfig \
    --id '56rDn5YdtTeZE4fo' \
    > test.out 2>&1
eval_tap $? 12 'DeleteItemTypeConfig' test.out

#- 13 QueryCampaigns
samples/cli/sample-apps Platform queryCampaigns \
    --namespace $AB_NAMESPACE \
    --limit '56' \
    --name 'RQLmfottUe3kFEmo' \
    --offset '16' \
    --tag 'kyCcp0FWyTWO2wr1' \
    > test.out 2>&1
eval_tap $? 13 'QueryCampaigns' test.out

#- 14 CreateCampaign
samples/cli/sample-apps Platform createCampaign \
    --namespace $AB_NAMESPACE \
    --body '{"description": "cSBg6yzhViXePrbJ", "items": [{"extraSubscriptionDays": 26, "itemId": "B4VUvx0nNz93NyA5", "itemName": "GZJXGJA6hb8XBZnz", "quantity": 29}, {"extraSubscriptionDays": 9, "itemId": "2ZuyphZPTpkWWEYH", "itemName": "O1HYLtaPhgMnKqwy", "quantity": 69}, {"extraSubscriptionDays": 51, "itemId": "uAHD3qxTSsKIyyX5", "itemName": "wfjvQqkXopc14aLv", "quantity": 92}], "maxRedeemCountPerCampaignPerUser": 70, "maxRedeemCountPerCode": 86, "maxRedeemCountPerCodePerUser": 30, "maxSaleCount": 1, "name": "LVvtf4bxMzPeyWzf", "redeemEnd": "1979-11-24T00:00:00Z", "redeemStart": "1975-05-28T00:00:00Z", "redeemType": "ITEM", "status": "INACTIVE", "tags": ["GFM95PiLI3zqhVY1", "hYedM4KHKwDlxQQc", "sM4qNNOwYkdmbJ5n"], "type": "REDEMPTION"}' \
    > test.out 2>&1
eval_tap $? 14 'CreateCampaign' test.out

#- 15 GetCampaign
samples/cli/sample-apps Platform getCampaign \
    --campaignId 'IcW0L4JHFCAhIlWp' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 15 'GetCampaign' test.out

#- 16 UpdateCampaign
samples/cli/sample-apps Platform updateCampaign \
    --campaignId 'EKoS6BLID5ChtnNc' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "EqgvAEQK8ubM8j2a", "items": [{"extraSubscriptionDays": 39, "itemId": "6QQQgygA07QLtav8", "itemName": "C3JdVUvp6TIREykV", "quantity": 53}, {"extraSubscriptionDays": 34, "itemId": "huxsaPFLYpttCCRl", "itemName": "t7w2l4RlcMaURhB5", "quantity": 84}, {"extraSubscriptionDays": 70, "itemId": "VeAuj7dw6Au4ESM1", "itemName": "5YCzUuWE1yeOuwp8", "quantity": 18}], "maxRedeemCountPerCampaignPerUser": 7, "maxRedeemCountPerCode": 44, "maxRedeemCountPerCodePerUser": 83, "maxSaleCount": 64, "name": "ioiXNqXDQYeCzLXy", "redeemEnd": "1994-04-11T00:00:00Z", "redeemStart": "1986-10-22T00:00:00Z", "redeemType": "ITEM", "status": "INACTIVE", "tags": ["8wfrSKU8bkiJJmnA", "LKEyQkaJRM5ldzMw", "IdbdGUc8wXBm7Nhe"]}' \
    > test.out 2>&1
eval_tap $? 16 'UpdateCampaign' test.out

#- 17 GetCampaignDynamic
samples/cli/sample-apps Platform getCampaignDynamic \
    --campaignId 'DP85WOOdMTeoIrxW' \
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
    --body '{"appConfig": {"appName": "YpUiqXY89wxuteSB"}, "customConfig": {"connectionType": "INSECURE", "grpcServerAddress": "WzSppyL9oe5APdgL"}, "extendType": "CUSTOM"}' \
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
    --body '{"appConfig": {"appName": "JGDtlcvx8uAar1dc"}, "customConfig": {"connectionType": "INSECURE", "grpcServerAddress": "mDi73NMrLVnqVo0f"}, "extendType": "APP"}' \
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
    --storeId 'syDfFIyCsC7TXzCJ' \
    > test.out 2>&1
eval_tap $? 27 'GetRootCategories' test.out

#- 28 CreateCategory
samples/cli/sample-apps Platform createCategory \
    --namespace $AB_NAMESPACE \
    --storeId '6SAj8ofWcYu939hu' \
    --body '{"categoryPath": "gSja6H0YqvIhRK6V", "localizationDisplayNames": {"5UST42qNTUlzCuoX": "VHjvaYwpUqsDue6b", "Y10koYsKrTt4cmfa": "sxFEArLJIf6RxQQY", "DBUz0WYL3Qsd2AFj": "5eEBXYHwOVqbw017"}}' \
    > test.out 2>&1
eval_tap $? 28 'CreateCategory' test.out

#- 29 ListCategoriesBasic
samples/cli/sample-apps Platform listCategoriesBasic \
    --namespace $AB_NAMESPACE \
    --storeId 'd06OmGXcLAkLS8W6' \
    > test.out 2>&1
eval_tap $? 29 'ListCategoriesBasic' test.out

#- 30 GetCategory
samples/cli/sample-apps Platform getCategory \
    --categoryPath 'APsyq5rSET5uuwHg' \
    --namespace $AB_NAMESPACE \
    --storeId 'xPKJNXoGeNw9iIxj' \
    > test.out 2>&1
eval_tap $? 30 'GetCategory' test.out

#- 31 UpdateCategory
samples/cli/sample-apps Platform updateCategory \
    --categoryPath 'iQOtl9fIc3q0pLmK' \
    --namespace $AB_NAMESPACE \
    --storeId 'v1eDSUhmuAhHoO0q' \
    --body '{"localizationDisplayNames": {"zw3PmzYDSDljrrKK": "QYpiX8iuXrK7Bedw", "UgCGcoIXLxO9kIP6": "dLXpDtrvlHjZRIzw", "u5Ydr1q01s9KhsDu": "hC3hLUS6DJDSd7PZ"}}' \
    > test.out 2>&1
eval_tap $? 31 'UpdateCategory' test.out

#- 32 DeleteCategory
samples/cli/sample-apps Platform deleteCategory \
    --categoryPath 'YbhwL5YqY2PSEoLw' \
    --namespace $AB_NAMESPACE \
    --storeId '4sFXolAYocVMfb1z' \
    > test.out 2>&1
eval_tap $? 32 'DeleteCategory' test.out

#- 33 GetChildCategories
samples/cli/sample-apps Platform getChildCategories \
    --categoryPath 'cGu5WSOoQk2kdSXM' \
    --namespace $AB_NAMESPACE \
    --storeId 'SldiWjRzV0mo3JJ6' \
    > test.out 2>&1
eval_tap $? 33 'GetChildCategories' test.out

#- 34 GetDescendantCategories
samples/cli/sample-apps Platform getDescendantCategories \
    --categoryPath 'jAie1SpVu6kkeVAl' \
    --namespace $AB_NAMESPACE \
    --storeId '8A2sMWvgCAaPi1ae' \
    > test.out 2>&1
eval_tap $? 34 'GetDescendantCategories' test.out

#- 35 QueryCodes
samples/cli/sample-apps Platform queryCodes \
    --campaignId 'NPrGbzOYL1u5Tazp' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --batchNo '70' \
    --code 'aFvjKpqhQyNFrFcn' \
    --limit '93' \
    --offset '48' \
    > test.out 2>&1
eval_tap $? 35 'QueryCodes' test.out

#- 36 CreateCodes
samples/cli/sample-apps Platform createCodes \
    --campaignId 'l7H6q42hk5sCWkcD' \
    --namespace $AB_NAMESPACE \
    --body '{"quantity": 40}' \
    > test.out 2>&1
eval_tap $? 36 'CreateCodes' test.out

#- 37 Download
samples/cli/sample-apps Platform download \
    --campaignId 'ErOqK6YXbOwKr3DV' \
    --namespace $AB_NAMESPACE \
    --batchNo '33' \
    > test.out 2>&1
eval_tap $? 37 'Download' test.out

#- 38 BulkDisableCodes
samples/cli/sample-apps Platform bulkDisableCodes \
    --campaignId 'trEhZtnekuXiaAUS' \
    --namespace $AB_NAMESPACE \
    --batchNo '53' \
    > test.out 2>&1
eval_tap $? 38 'BulkDisableCodes' test.out

#- 39 BulkEnableCodes
samples/cli/sample-apps Platform bulkEnableCodes \
    --campaignId 'q3j68DEPtK3gUUp0' \
    --namespace $AB_NAMESPACE \
    --batchNo '39' \
    > test.out 2>&1
eval_tap $? 39 'BulkEnableCodes' test.out

#- 40 QueryRedeemHistory
samples/cli/sample-apps Platform queryRedeemHistory \
    --campaignId 'F17WTIhh8DhkjXIT' \
    --namespace $AB_NAMESPACE \
    --code 'vwiuNpXVSkbsEeCi' \
    --limit '27' \
    --offset '2' \
    --userId 'YhxSsBiICIoAo0vq' \
    > test.out 2>&1
eval_tap $? 40 'QueryRedeemHistory' test.out

#- 41 GetCode
samples/cli/sample-apps Platform getCode \
    --code 'pNI6sQ8fS2to6c85' \
    --namespace $AB_NAMESPACE \
    --redeemable 'true' \
    > test.out 2>&1
eval_tap $? 41 'GetCode' test.out

#- 42 DisableCode
samples/cli/sample-apps Platform disableCode \
    --code 'uLEekYdvKToH2XPo' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 42 'DisableCode' test.out

#- 43 EnableCode
samples/cli/sample-apps Platform enableCode \
    --code 'KGzo3i6Noyck6NGd' \
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
    --body '{"currencyCode": "eeP4qj6HjoJjJPqW", "currencySymbol": "KNXAaar1eyEpMkqM", "currencyType": "VIRTUAL", "decimals": 42, "localizationDescriptions": {"1v8StLdMw7hpvFQC": "vnNGeoEFWLW4bIpC", "J1ne9lSnYxxqIdqM": "L1rv6Nd1ziyEGJvM", "3UOA3pzr6bcqgOWu": "3QQEk2XvbAE3XR2C"}}' \
    > test.out 2>&1
eval_tap $? 48 'CreateCurrency' test.out

#- 49 UpdateCurrency
samples/cli/sample-apps Platform updateCurrency \
    --currencyCode 'k7v3Hx8LYqQOPCDj' \
    --namespace $AB_NAMESPACE \
    --body '{"localizationDescriptions": {"vgSqnxNXovP5c9LN": "FqdNhAvDhfH2wyEF", "nTNjbBJuGk0tjRpn": "dyJkkhWZj8EROlVz", "n9SAUFkp96RHCYTh": "rx93GxxkA4ipIHfU"}}' \
    > test.out 2>&1
eval_tap $? 49 'UpdateCurrency' test.out

#- 50 DeleteCurrency
samples/cli/sample-apps Platform deleteCurrency \
    --currencyCode 'rxCl22B1SZ1CndSU' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 50 'DeleteCurrency' test.out

#- 51 GetCurrencyConfig
samples/cli/sample-apps Platform getCurrencyConfig \
    --currencyCode 'RKUr53TFSIVBtdMW' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 51 'GetCurrencyConfig' test.out

#- 52 GetCurrencySummary
samples/cli/sample-apps Platform getCurrencySummary \
    --currencyCode 'XP8SSADPxjBrqS0p' \
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
    --body '{"data": [{"id": "NTWrdiaxjTGeNyRl", "rewards": [{"currency": {"currencyCode": "uZUtU0IgzFsLLeuq", "namespace": "RVwxgEPw8fvuNbyT"}, "item": {"itemId": "Fs6waFkrmI4CRKeH", "itemSku": "VGsaXZ30odPIdpGG", "itemType": "Xp2mpPf7lUQBye8s"}, "quantity": 75, "type": "ITEM"}, {"currency": {"currencyCode": "VRnjVsNix6tRXATH", "namespace": "PzvGLTkglFHferOh"}, "item": {"itemId": "iFOnnZKvi9S3AiSt", "itemSku": "od4mwULc4MVWGuKv", "itemType": "7NeHiIjFlb3nmHi4"}, "quantity": 55, "type": "CURRENCY"}, {"currency": {"currencyCode": "xeOYzJIHmLICefzM", "namespace": "vWfthMh6UnWaLTVE"}, "item": {"itemId": "K3NeZRzlcIc8GeGd", "itemSku": "7Csi8zWQs1zVWD1r", "itemType": "GK2GfjjH9YQS9jfS"}, "quantity": 58, "type": "ITEM"}]}, {"id": "2zRZcqbcHudwwPqj", "rewards": [{"currency": {"currencyCode": "4BMsTfli4tCBRNXg", "namespace": "7uGu3YuIoV4DoXUx"}, "item": {"itemId": "99QilKznJu1jUlnt", "itemSku": "fsQnLuwNoiU52AVv", "itemType": "2pbyzsAUfs0KrcOK"}, "quantity": 1, "type": "CURRENCY"}, {"currency": {"currencyCode": "nkDYgAXY3jKgZVFe", "namespace": "d29jlJq54yWOkr7X"}, "item": {"itemId": "SMwV7GAIsJ7SxRgf", "itemSku": "oG2xcaQF8gpfpsu9", "itemType": "zqpczkRUDrjh51MH"}, "quantity": 20, "type": "ITEM"}, {"currency": {"currencyCode": "m0ugJDbxy3Zvyr0a", "namespace": "qdrqTofO96Ohfx6F"}, "item": {"itemId": "VxZCFfIkfoIIPaWM", "itemSku": "yWNxGy2WTjku9V5B", "itemType": "Okg9cGR8KLuufDjh"}, "quantity": 1, "type": "ITEM"}]}, {"id": "3o8cBmrWGPNhPBjO", "rewards": [{"currency": {"currencyCode": "eKTwZ1Py7SNc8bo6", "namespace": "seERESq8UohxuY0m"}, "item": {"itemId": "tXQdn3QVmwMVQRs1", "itemSku": "snLbPh3KbrWU1w2g", "itemType": "exmyWsH1B6O3tgg3"}, "quantity": 75, "type": "ITEM"}, {"currency": {"currencyCode": "47DdepgWdEEUMUGW", "namespace": "ID7buBXOPYOIOUmC"}, "item": {"itemId": "ptXdxUVWXMBjHMy1", "itemSku": "Nh7Zj9WPARXmlpBM", "itemType": "awtyxuasUVTnZzc1"}, "quantity": 67, "type": "ITEM"}, {"currency": {"currencyCode": "58AebkPAlHMfTAf6", "namespace": "Zmk05Q2antLxjMRy"}, "item": {"itemId": "dnDkdJW7Xas0j08F", "itemSku": "2sFGex0n10Gb5z2H", "itemType": "HJ4rRjRVv4tsYCxh"}, "quantity": 33, "type": "ITEM"}]}]}' \
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
    --body '{"data": [{"platform": "PSN", "platformDlcIdMap": {"gkuwo0qyTiJTcgZp": "Ktrsn97SFjF2DlmA", "HYQhwvlf0o6BD7ng": "3DO2yN0isOuL3BXG", "FpLdRpX50tnK26S9": "aDiIrFVA4k98hNsE"}}, {"platform": "PSN", "platformDlcIdMap": {"4wokpekzzHvPgcSs": "MaZV99lQB7ksOzVL", "65xxpq5b4CW3txIm": "NlEoC8xNMq9Nj2ld", "BOamAcSwvr9SBn6h": "jawzYFUwOAEdMtNL"}}, {"platform": "PSN", "platformDlcIdMap": {"wfVm4hzvFscS6o2n": "KCWMugvx6ybORJCC", "7NBXGyzVraT5dctV": "umn17YIxARYJqpTO", "fSPOYAqeDL3xflDZ": "guehddHFc6QJhhoN"}}]}' \
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
    --entitlementClazz 'ENTITLEMENT' \
    --entitlementName 'tbRBDwrUZ2pFmpIY' \
    --itemId '["1ejgPrezFcaOABgD", "GPsPqamnqW2cBwmk", "DcyNoTvuxDutdZKo"]' \
    --limit '48' \
    --offset '67' \
    --origin 'Nintendo' \
    --userId '6lfZCnl5GywV9LC8' \
    > test.out 2>&1
eval_tap $? 59 'QueryEntitlements' test.out

#- 60 QueryEntitlements1
samples/cli/sample-apps Platform queryEntitlements1 \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --itemIds '["ES3V2KqV6k7guseC", "ybck0KZNgIrqIAwh", "AOYDG2fZhESgg7kK"]' \
    --limit '37' \
    --offset '40' \
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
    --body '{"entitlementGrantList": [{"collectionId": "DKswXwejBnh2DtsQ", "endDate": "1971-08-25T00:00:00Z", "grantedCode": "9fFnWYCXuTCQnpvb", "itemId": "cmcusgrnXun2P9M0", "itemNamespace": "UUXXTiwCU2er3W1a", "language": "wam-PBrQ", "origin": "System", "quantity": 65, "region": "0eygyiWcBAGlm0bm", "source": "ACHIEVEMENT", "startDate": "1986-03-15T00:00:00Z", "storeId": "sPTvnEYR0gJq4621"}, {"collectionId": "wosY7rqv6c1pPset", "endDate": "1980-02-23T00:00:00Z", "grantedCode": "wMUXJLi24mC0sh3O", "itemId": "iVGgrGtRWngZDOmR", "itemNamespace": "F8QfhEwn4NuIhyvP", "language": "Ha_AF", "origin": "Other", "quantity": 19, "region": "3HxYvHXXwMhdhEwB", "source": "PURCHASE", "startDate": "1991-09-11T00:00:00Z", "storeId": "v5bvKC7zwaEgPijt"}, {"collectionId": "AdumdGRZOtq5WRWb", "endDate": "1999-06-01T00:00:00Z", "grantedCode": "vdnKoWStEeCiM6tH", "itemId": "nAnFHo18UjlBzMdi", "itemNamespace": "iLW6qlSXyhCmOiKM", "language": "vcr_NWVc_200", "origin": "Steam", "quantity": 46, "region": "vjLzPp1jujNMCtV5", "source": "REDEEM_CODE", "startDate": "1983-04-13T00:00:00Z", "storeId": "4WgB4l0dvCUWG96Q"}], "userIds": ["kiq5oj6iLSo42hDT", "wy0aCYHLzDS98vNA", "aBeBu7DrW0aMVlxL"]}' \
    > test.out 2>&1
eval_tap $? 63 'GrantEntitlements' test.out

#- 64 RevokeEntitlements
samples/cli/sample-apps Platform revokeEntitlements \
    --namespace $AB_NAMESPACE \
    --body '["DpdAeCyKMH1H0ogd", "IsEzIOlthYiX17xv", "fPTRJdTJlh0A66Fa"]' \
    > test.out 2>&1
eval_tap $? 64 'RevokeEntitlements' test.out

#- 65 GetEntitlement
samples/cli/sample-apps Platform getEntitlement \
    --entitlementId 'Sfzpm4OPdrPn8qXD' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 65 'GetEntitlement' test.out

#- 66 QueryFulfillmentHistories
samples/cli/sample-apps Platform queryFulfillmentHistories \
    --namespace $AB_NAMESPACE \
    --limit '30' \
    --offset '53' \
    --status 'FAIL' \
    --userId 'xLf97Yrs4hDkUUlz' \
    > test.out 2>&1
eval_tap $? 66 'QueryFulfillmentHistories' test.out

#- 67 QueryIAPClawbackHistory
samples/cli/sample-apps Platform queryIAPClawbackHistory \
    --namespace $AB_NAMESPACE \
    --endTime 'vydd2ae4sqlCBTsy' \
    --eventType 'OTHER' \
    --externalOrderId 'ZcHNSE2rvnIqwChE' \
    --limit '35' \
    --offset '37' \
    --startTime 'gy5A6YTiyVHWuBg8' \
    --status 'INIT' \
    --userId 'iBpbSE34Q2di1Szd' \
    > test.out 2>&1
eval_tap $? 67 'QueryIAPClawbackHistory' test.out

#- 68 MockPlayStationStreamEvent
samples/cli/sample-apps Platform mockPlayStationStreamEvent \
    --namespace $AB_NAMESPACE \
    --body '{"body": {"account": "osGJnpmovUSCMhWn", "additionalData": {"entitlement": [{"clientTransaction": [{"amountConsumed": 18, "clientTransactionId": "thLNymOvIXP3l1Zx"}, {"amountConsumed": 81, "clientTransactionId": "MB487o9bxGAFpAAM"}, {"amountConsumed": 87, "clientTransactionId": "cQs4FNDRu8iLdyw9"}], "entitlementId": "1GCsaOd9TeE4hExC", "usageCount": 40}, {"clientTransaction": [{"amountConsumed": 42, "clientTransactionId": "REsYhBLLyiAF2AD7"}, {"amountConsumed": 4, "clientTransactionId": "qv4gsFYmy4AXeqoQ"}, {"amountConsumed": 35, "clientTransactionId": "gsHq0VWcrSDJAZAn"}], "entitlementId": "opy6BJWwOovC8iUz", "usageCount": 74}, {"clientTransaction": [{"amountConsumed": 13, "clientTransactionId": "ZIYKYQqMhwlkZflB"}, {"amountConsumed": 64, "clientTransactionId": "QU18tpoxGwdWH2wk"}, {"amountConsumed": 17, "clientTransactionId": "6yIiG3ow0vcogXCB"}], "entitlementId": "0qdNt74HrInjMSiO", "usageCount": 40}], "purpose": "gk3P913DkJozoOyi"}, "originalTitleName": "HE8MuqYCOVDsfVj6", "paymentProductSKU": "TE24UeNfQ7Un0Zvh", "purchaseDate": "nGtJc4MOd9VYR5yL", "sourceOrderItemId": "QuunpL53Gyq3KdMG", "titleName": "mcB1TxfZdwJ6gQv9"}, "eventDomain": "JQNP5Kw5Vs2JUgIU", "eventSource": "E5ROnpqGWcme3whY", "eventType": "wPK4OE3GNCqcq19O", "eventVersion": 60, "id": "TCep3KTF67mqql6B", "timestamp": "x2SeiUCody4foBhm"}' \
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
    --body '{"bundleId": "6uWOBXvpJ5Wy0IVU", "password": "2ZSUlDEKsQ2iHAjt"}' \
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
    --body '{"sandboxId": "p6u5EHgJsTN9wDlT"}' \
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
    --body '{"applicationName": "XU8dlR7k579x9kxF", "serviceAccountId": "ySpdLcITyiB2j05s"}' \
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
    --body '{"data": [{"itemIdentity": "k0i60ksVFEu1C7E9", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"MHB02e369yCUK6C1": "ZRlzdR2c6WCtVU6g", "IGIoWZOi126CQcXK": "RbujqaG8DK1Pm8lG", "j9iaZPT07lp4ld01": "VZVf3v0AuHYTlp5U"}}, {"itemIdentity": "ZMhrHWWyKm3oMjvJ", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"R8uGsOTWz5AXYmRc": "SvUm8AmS8lfu4X3f", "8YNpbo5JvfqrkDVQ": "6VTcuZHHLVr7lBwi", "nkbLFzfWHECl8K10": "usLDEbHsCdZoSoVP"}}, {"itemIdentity": "P5CBk0PBOuzmZSWe", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"LvDjpPLxJ1CmDvt0": "ocfe0xqdbJ2mcnsO", "URSdmLyojigVS6F2": "4c7UU5XGlcVvxh17", "pRSCVuu41Sv5hbGu": "7mpFHBQuG2pFcJ6F"}}]}' \
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
    --body '{"appId": "UNNRll2QI0PAXPe9", "appSecret": "Lt5UpEiK6bCOUsYv"}' \
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
    --body '{"backOfficeServerClientId": "PbIzphNDvrHw57xc", "backOfficeServerClientSecret": "8LV4dZ2nAYhM75hi", "enableStreamJob": true, "environment": "QeYO6vucQ4vdOvp5", "streamName": "Fs7UUL6Yq6OtiI9Z", "streamPartnerName": "yh5uFf3m1yUsGePc"}' \
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
    --body '{"backOfficeServerClientId": "8YGsxsxndKlca0HJ", "backOfficeServerClientSecret": "qyvtgSHgjlHpiFJ6", "enableStreamJob": false, "environment": "N3rMOZpPrIVNkTaa", "streamName": "kfkbsw5vnq09z18W", "streamPartnerName": "2zsdYA1GG0FfLMNa"}' \
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
    --body '{"appId": "NE3JfHj15J8JWDmN", "publisherAuthenticationKey": "oHn4aCdD2PPEGnd3"}' \
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
    --body '{"clientId": "2LvcXcfNp5qAdj6U", "clientSecret": "morI719wuLrS26KT", "organizationId": "3lwL0c8rmKZvwU3M"}' \
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
    --body '{"relyingPartyCert": "AZ0uso6lFHJeb1oi"}' \
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
    --password 'SofBySW4sDUqrLDU' \
    > test.out 2>&1
eval_tap $? 99 'UpdateXblBPCertFile' test.out

#- 100 DownloadInvoiceDetails
samples/cli/sample-apps Platform downloadInvoiceDetails \
    --namespace $AB_NAMESPACE \
    --feature 'uZv1LTuDrK8wbvyG' \
    --itemId 'BrTZ5AqysaC0elug' \
    --itemType 'COINS' \
    --endTime '46xqo3nIUYQmE78N' \
    --startTime 'TS41VjRVt2OLVvOX' \
    > test.out 2>&1
eval_tap $? 100 'DownloadInvoiceDetails' test.out

#- 101 GenerateInvoiceSummary
samples/cli/sample-apps Platform generateInvoiceSummary \
    --namespace $AB_NAMESPACE \
    --feature 'EQX3n5YJZNc7VAmn' \
    --itemId 'dh4d70eyIucbnBjk' \
    --itemType 'INGAMEITEM' \
    --endTime 'KsCvvklSPA0Locy7' \
    --startTime 'kMk19ZDSdxanSa1j' \
    > test.out 2>&1
eval_tap $? 101 'GenerateInvoiceSummary' test.out

#- 102 SyncInGameItem
samples/cli/sample-apps Platform syncInGameItem \
    --namespace $AB_NAMESPACE \
    --storeId '9RaTBm1WciVJCVOg' \
    --body '{"categoryPath": "etuZJMAVmiBOnWq8", "targetItemId": "ZDckfnAOr9K4Ar2N", "targetNamespace": "JC3Rhgx46eddY8rK"}' \
    > test.out 2>&1
eval_tap $? 102 'SyncInGameItem' test.out

#- 103 CreateItem
samples/cli/sample-apps Platform createItem \
    --namespace $AB_NAMESPACE \
    --storeId 'xAUmekPBJUpfAxR0' \
    --body '{"appId": "vOhINgT1cHNDXs4y", "appType": "GAME", "baseAppId": "5s4dZ1dydOaLHavV", "boothName": "hMeeyVBYATKLQVI1", "categoryPath": "2VosvrELujMn5NCi", "clazz": "a4MJoP2jBoYQqaBj", "displayOrder": 48, "entitlementType": "CONSUMABLE", "ext": {"crniJzL4MSvLdgy8": {}, "n7W951nCKs2OMwMr": {}, "YOGebXdTynyGNtT9": {}}, "features": ["1Dbmqc9vimj1rGWQ", "IZ3DlH6q7Ia7htjf", "eAkClm827VftpbUn"], "flexible": true, "images": [{"as": "7boa8JgsZG4YQ1r7", "caption": "aCrl3mZJjKdXIaDK", "height": 65, "imageUrl": "pDRtBUzx4YYU1yG7", "smallImageUrl": "XrgP4GiF6oKv32LQ", "width": 47}, {"as": "e4mAht72mRhiDDH7", "caption": "Zz9U8PLgwVLVeasZ", "height": 15, "imageUrl": "XeTDkxy5GB66BBcZ", "smallImageUrl": "QqodmurGkR8NWvmg", "width": 62}, {"as": "Kk8uaZgfEEfExqpM", "caption": "34Dl6tRmMWpbc3V7", "height": 37, "imageUrl": "Wvhc3GvUQi9e5NnQ", "smallImageUrl": "2PUJr6Rn6CAyXEWT", "width": 46}], "inventoryConfig": {"customAttributes": {"339OlPSvqFzRc1HY": {}, "aiXpeOcbgFIrdSlP": {}, "KhIiwPDoeIwaDxCp": {}}, "serverCustomAttributes": {"w5oM0nWeXpcnIBrv": {}, "F1IoyzXWFmTrFeDX": {}, "vwiErimSgrxWVMUE": {}}, "slotUsed": 42}, "itemIds": ["hPMTjSdoNT30cX5g", "fhUzWHV5cL93LH8F", "tFsiIYlBNyxK5dbP"], "itemQty": {"huYiMo0iOzDzgPza": 35, "Wan6C6ELdbzbSXaw": 66, "a9vIRtdqk7g72Ehh": 19}, "itemType": "INGAMEITEM", "listable": false, "localizations": {"4KCpYjFWbm5Eu63N": {"description": "hWaXiJJBYgDpMdS8", "localExt": {"IM7fIOKpIk4X7GLT": {}, "W8A39EVr4vZjtUuW": {}, "V6bKVSWON8wL25Xj": {}}, "longDescription": "55pRmEfp5l3Je8qz", "title": "muk8J6iVJntIu0lk"}, "qsIZgoq3stNi9faT": {"description": "vwSfCzvVuy4YBgDO", "localExt": {"CClSt8mTQ1U1bLk5": {}, "Jjhg64vy7bhG529s": {}, "7p5UTqvJWlff9Hme": {}}, "longDescription": "rFGNu53ZPVfPuRtT", "title": "6P37Yc301Gz2TJgv"}, "f3GvCY0dKCLlu4WV": {"description": "OGWRaETx1siMrpct", "localExt": {"wBgVM24T6K6M5AC4": {}, "U1xOT6eFXmOoDds0": {}, "Do8u4kuxs2eWxlQB": {}}, "longDescription": "sDo38o7Qxv84HcdU", "title": "CojlkLuTrDbHSSAY"}}, "lootBoxConfig": {"rewardCount": 75, "rewards": [{"lootBoxItems": [{"count": 91, "duration": 21, "endDate": "1987-10-02T00:00:00Z", "itemId": "BzeeMyqKdNQAOyeG", "itemSku": "HTeV6wiNevclgYjC", "itemType": "rX0OfMU1kI2OJl89"}, {"count": 25, "duration": 41, "endDate": "1992-01-13T00:00:00Z", "itemId": "MORWZM6WnhZYQwgf", "itemSku": "DID9EOUY014IADi6", "itemType": "kjUUiNKmwPDnK5Tl"}, {"count": 22, "duration": 50, "endDate": "1972-12-31T00:00:00Z", "itemId": "EJowZG9KVcLRYOpv", "itemSku": "XaeILXGIQKxSjIkX", "itemType": "CrZQq9BPjpRk62PN"}], "name": "qfDtLj892VxYZqx1", "odds": 0.6539760649402028, "type": "REWARD_GROUP", "weight": 69}, {"lootBoxItems": [{"count": 17, "duration": 72, "endDate": "1981-01-19T00:00:00Z", "itemId": "J8oikulCx5DSyoH4", "itemSku": "rtBKFRRusbNKCjVm", "itemType": "mYTMO8f5cy4SiUvs"}, {"count": 81, "duration": 67, "endDate": "1994-06-21T00:00:00Z", "itemId": "f4APVabMGUweVE9Y", "itemSku": "mGpZeluiitKk393d", "itemType": "WhHwhPyyj4HIQuwr"}, {"count": 56, "duration": 2, "endDate": "1971-03-05T00:00:00Z", "itemId": "QxPLM8g5303RrRtW", "itemSku": "SDeypZkYdNeiOZAC", "itemType": "dkCGvHBEH5bB6iQD"}], "name": "Zv2jAVfnlvEQBuFX", "odds": 0.5425872228333567, "type": "REWARD_GROUP", "weight": 45}, {"lootBoxItems": [{"count": 95, "duration": 98, "endDate": "1973-12-31T00:00:00Z", "itemId": "uVB0wMJa6krhZ5IE", "itemSku": "F11fZ0ZIyUyqnJ6i", "itemType": "NJ05fUXqs2wbvljv"}, {"count": 83, "duration": 57, "endDate": "1984-12-03T00:00:00Z", "itemId": "yGJIdW98XW9DVASU", "itemSku": "4H7n1h6dDkXwwjxl", "itemType": "fyqbkMoPSld5WKIA"}, {"count": 93, "duration": 51, "endDate": "1979-04-30T00:00:00Z", "itemId": "uE4ol4BDFVayk1dx", "itemSku": "T0q59gYsY5gKLkYS", "itemType": "kjCneGApDBtp22Kb"}], "name": "YGE8ryLBcq4Ar8iZ", "odds": 0.8481588162991951, "type": "REWARD", "weight": 99}], "rollFunction": "CUSTOM"}, "maxCount": 30, "maxCountPerUser": 50, "name": "nMwspSJ6VhYnLifu", "optionBoxConfig": {"boxItems": [{"count": 21, "duration": 32, "endDate": "1971-03-17T00:00:00Z", "itemId": "Kn2J8zp438KyOBj4", "itemSku": "AbT1z2zx7wCaHh15", "itemType": "Rr3WmdchyQHDo5Bu"}, {"count": 17, "duration": 94, "endDate": "1971-05-31T00:00:00Z", "itemId": "6Vo9bUKwqC7CeLkq", "itemSku": "oyVGwk3923pfmxwM", "itemType": "FM5xb27j0FxK2zKt"}, {"count": 70, "duration": 100, "endDate": "1982-12-28T00:00:00Z", "itemId": "1WsyW3OrlwXmHadT", "itemSku": "Y6v3Qezn4Qilgi7p", "itemType": "awfyy4X6S2sMACeW"}]}, "purchasable": false, "recurring": {"cycle": "WEEKLY", "fixedFreeDays": 96, "fixedTrialCycles": 6, "graceDays": 48}, "regionData": {"nveezOKry2Gt4Tor": [{"currencyCode": "Wepij6LquP3MUO67", "currencyNamespace": "9gQ7Xkh5NC939ERR", "currencyType": "REAL", "discountAmount": 45, "discountExpireAt": "1986-03-30T00:00:00Z", "discountPercentage": 10, "discountPurchaseAt": "1994-04-03T00:00:00Z", "expireAt": "1985-07-04T00:00:00Z", "price": 31, "purchaseAt": "1973-07-23T00:00:00Z", "trialPrice": 86}, {"currencyCode": "9LzZnW5sFUkIE5wu", "currencyNamespace": "tZIYoLLl9xf1SaxC", "currencyType": "VIRTUAL", "discountAmount": 38, "discountExpireAt": "1997-11-09T00:00:00Z", "discountPercentage": 19, "discountPurchaseAt": "1987-10-05T00:00:00Z", "expireAt": "1999-10-11T00:00:00Z", "price": 3, "purchaseAt": "1993-10-12T00:00:00Z", "trialPrice": 93}, {"currencyCode": "k9qeT6GZYafBGf5X", "currencyNamespace": "E3zUVrbn2if4Dyzk", "currencyType": "REAL", "discountAmount": 31, "discountExpireAt": "1976-02-07T00:00:00Z", "discountPercentage": 57, "discountPurchaseAt": "1975-03-31T00:00:00Z", "expireAt": "1990-02-05T00:00:00Z", "price": 45, "purchaseAt": "1991-03-21T00:00:00Z", "trialPrice": 98}], "PqBMkSAWQzvaKoK8": [{"currencyCode": "DLeOg6ipv5c9LnE7", "currencyNamespace": "YXrjGNN4KoY8kcl6", "currencyType": "REAL", "discountAmount": 71, "discountExpireAt": "1995-10-25T00:00:00Z", "discountPercentage": 100, "discountPurchaseAt": "1979-07-11T00:00:00Z", "expireAt": "1998-10-17T00:00:00Z", "price": 65, "purchaseAt": "1985-06-12T00:00:00Z", "trialPrice": 63}, {"currencyCode": "yJjUdp7wwPJnL26N", "currencyNamespace": "N4XtKyGIMHrYgUur", "currencyType": "REAL", "discountAmount": 15, "discountExpireAt": "1986-11-02T00:00:00Z", "discountPercentage": 40, "discountPurchaseAt": "1978-09-14T00:00:00Z", "expireAt": "1971-12-09T00:00:00Z", "price": 75, "purchaseAt": "1981-03-10T00:00:00Z", "trialPrice": 35}, {"currencyCode": "sXDSNUYnhhyUEHF5", "currencyNamespace": "zhRNxr76UTMSoQLj", "currencyType": "REAL", "discountAmount": 58, "discountExpireAt": "1974-07-01T00:00:00Z", "discountPercentage": 16, "discountPurchaseAt": "1973-08-29T00:00:00Z", "expireAt": "1990-01-03T00:00:00Z", "price": 43, "purchaseAt": "1984-08-30T00:00:00Z", "trialPrice": 17}], "o0WXQevpFQZ74uZI": [{"currencyCode": "UF6fcRDpnxDRqDbw", "currencyNamespace": "R7MQDzD0RIEs6ORN", "currencyType": "REAL", "discountAmount": 33, "discountExpireAt": "1972-03-29T00:00:00Z", "discountPercentage": 7, "discountPurchaseAt": "1986-06-15T00:00:00Z", "expireAt": "1973-06-18T00:00:00Z", "price": 60, "purchaseAt": "1987-02-15T00:00:00Z", "trialPrice": 74}, {"currencyCode": "072aPoSF3WjuCZ4E", "currencyNamespace": "Zudp6b13WswRRiCn", "currencyType": "VIRTUAL", "discountAmount": 81, "discountExpireAt": "1975-05-30T00:00:00Z", "discountPercentage": 70, "discountPurchaseAt": "1994-09-19T00:00:00Z", "expireAt": "1977-06-17T00:00:00Z", "price": 17, "purchaseAt": "1983-10-21T00:00:00Z", "trialPrice": 73}, {"currencyCode": "HyIC6g9mVXR64cyv", "currencyNamespace": "2r77OYit2kLGNPR2", "currencyType": "VIRTUAL", "discountAmount": 93, "discountExpireAt": "1990-03-19T00:00:00Z", "discountPercentage": 89, "discountPurchaseAt": "1984-12-09T00:00:00Z", "expireAt": "1980-11-29T00:00:00Z", "price": 69, "purchaseAt": "1996-01-07T00:00:00Z", "trialPrice": 26}]}, "saleConfig": {"currencyCode": "SVoC87AhR8MXrIPI", "price": 92}, "seasonType": "PASS", "sectionExclusive": true, "sellable": false, "sku": "qTyQ97u0w1FrXYcT", "stackable": true, "status": "INACTIVE", "tags": ["CvI4f779neIwmPyr", "m3NM2GemQ71LmmaV", "mY9gernZc03sCWKh"], "targetCurrencyCode": "3u6ilcwrnps9X19L", "targetNamespace": "n8oREgRwbP45A2UG", "thumbnailUrl": "1jFfQExzER4d7bf8", "useCount": 51}' \
    > test.out 2>&1
eval_tap $? 103 'CreateItem' test.out

#- 104 GetItemByAppId
samples/cli/sample-apps Platform getItemByAppId \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --storeId 'IjJXECx9rsXX4TG7' \
    --appId '7alWLKHcjRUqoVsI' \
    > test.out 2>&1
eval_tap $? 104 'GetItemByAppId' test.out

#- 105 QueryItems
samples/cli/sample-apps Platform queryItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --appType 'SOFTWARE' \
    --availableDate 'ceelKxvmWs0wGbbV' \
    --baseAppId 'AAY8gCp9SwQEb0UO' \
    --categoryPath 'Tq50HrpthFpolj0r' \
    --features 'ASVIAwVcJ5WklobU' \
    --includeSubCategoryItem 'true' \
    --itemType 'BUNDLE' \
    --limit '100' \
    --offset '1' \
    --region 'Tjows09aOHzZ09vu' \
    --sortBy '["displayOrder", "displayOrder:asc", "createdAt:asc"]' \
    --storeId 'eGRAkmBH9FyJsYkP' \
    --tags 'CDNw8xhnTGIreNYV' \
    --targetNamespace 'wp0AajGJeuEc7WKc' \
    > test.out 2>&1
eval_tap $? 105 'QueryItems' test.out

#- 106 ListBasicItemsByFeatures
samples/cli/sample-apps Platform listBasicItemsByFeatures \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --features '["YLFfW0AuCE5MuHc0", "06A1IUdQWDqFaSsq", "ZHIWhyPd2KwNZBrp"]' \
    > test.out 2>&1
eval_tap $? 106 'ListBasicItemsByFeatures' test.out

#- 107 GetItems
samples/cli/sample-apps Platform getItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --storeId 'fpXV0nGqngS7svtv' \
    --itemIds 'ZYFKADJQVl5kLFo1' \
    > test.out 2>&1
eval_tap $? 107 'GetItems' test.out

#- 108 GetItemBySku
samples/cli/sample-apps Platform getItemBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'k5ZR0DLfxelAnVSA' \
    --sku '1AFAACTENXtJjrIO' \
    > test.out 2>&1
eval_tap $? 108 'GetItemBySku' test.out

#- 109 GetLocaleItemBySku
samples/cli/sample-apps Platform getLocaleItemBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --language '8KVjBlPeS8doDtD4' \
    --populateBundle 'false' \
    --region '7HHTddOcyn5bRdDA' \
    --storeId '9OYU8gcpfeXyeeuH' \
    --sku 'IzeppEQ2WpePuTnv' \
    > test.out 2>&1
eval_tap $? 109 'GetLocaleItemBySku' test.out

#- 110 GetEstimatedPrice
samples/cli/sample-apps Platform getEstimatedPrice \
    --namespace $AB_NAMESPACE \
    --platform 'BccOGnP4L48jING3' \
    --region 'OKcoQTnsyKUQxXxi' \
    --storeId 'ruWMCr3T1dvhA7YT' \
    --itemIds 'jcWpueJzMNM0tHwl' \
    --userId 'kH6DmIDHr2x8oQBC' \
    > test.out 2>&1
eval_tap $? 110 'GetEstimatedPrice' test.out

#- 111 GetItemIdBySku
samples/cli/sample-apps Platform getItemIdBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --storeId 'byezQGbuzuzp3zQH' \
    --sku '1iBcKugOH2WGWyVf' \
    > test.out 2>&1
eval_tap $? 111 'GetItemIdBySku' test.out

#- 112 GetBulkItemIdBySkus
samples/cli/sample-apps Platform getBulkItemIdBySkus \
    --namespace $AB_NAMESPACE \
    --sku '["wLVvLz9UyVULhOpO", "5ANZAVp6doZOKmk7", "1G90QHG7xyQjEQNz"]' \
    --storeId 'dD5dOjQVPvoSCBT6' \
    > test.out 2>&1
eval_tap $? 112 'GetBulkItemIdBySkus' test.out

#- 113 BulkGetLocaleItems
samples/cli/sample-apps Platform bulkGetLocaleItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --language '3nbSsDaBjsuKe5mR' \
    --region 'nSMmp5VVogeStD8A' \
    --storeId 'VdABEUuiUVMOFt4Q' \
    --itemIds 'mPrpQwx9H6AF9x40' \
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
    --platform 'WOk8R0Fzm1XuYyO0' \
    --userId 'EpIoPsqoRSnJ7bj0' \
    --body '{"itemIds": ["Q7DRj3YKCVNCQGhN", "Mo8jDODrFhti81Pd", "jf7QlJMXNNScvnX1"]}' \
    > test.out 2>&1
eval_tap $? 115 'ValidateItemPurchaseCondition' test.out

#- 116 BulkUpdateRegionData
samples/cli/sample-apps Platform bulkUpdateRegionData \
    --namespace $AB_NAMESPACE \
    --storeId '9uefCBitlkMkAKM2' \
    --body '{"changes": [{"itemIdentities": ["59WBoKS6hXd0IMsx", "v7fjKvU6NfV21AIK", "HS7aCkvdqibdIpbu"], "itemIdentityType": "ITEM_SKU", "regionData": {"J5jQ3k8m21fAJnSL": [{"currencyCode": "NI3PRsl1A0Qldy4N", "currencyNamespace": "DjdtDBcmp0jbxsI3", "currencyType": "REAL", "discountAmount": 95, "discountExpireAt": "1986-06-02T00:00:00Z", "discountPercentage": 89, "discountPurchaseAt": "1999-09-08T00:00:00Z", "discountedPrice": 98, "expireAt": "1973-04-08T00:00:00Z", "price": 77, "purchaseAt": "1981-08-04T00:00:00Z", "trialPrice": 83}, {"currencyCode": "bXgYNrkKFjetsfGD", "currencyNamespace": "u2Q7jSfUrQLLLzGo", "currencyType": "REAL", "discountAmount": 6, "discountExpireAt": "1975-04-29T00:00:00Z", "discountPercentage": 24, "discountPurchaseAt": "1993-04-08T00:00:00Z", "discountedPrice": 78, "expireAt": "1995-08-27T00:00:00Z", "price": 36, "purchaseAt": "1981-07-15T00:00:00Z", "trialPrice": 30}, {"currencyCode": "24edYoyiPCuo7WaH", "currencyNamespace": "SL5d6wO3PxE6SQ6g", "currencyType": "VIRTUAL", "discountAmount": 51, "discountExpireAt": "1987-02-18T00:00:00Z", "discountPercentage": 78, "discountPurchaseAt": "1999-09-08T00:00:00Z", "discountedPrice": 21, "expireAt": "1999-08-04T00:00:00Z", "price": 92, "purchaseAt": "1995-06-07T00:00:00Z", "trialPrice": 60}], "WKxVioFUPtL9sYal": [{"currencyCode": "5KrmPSuBQRZjoCdN", "currencyNamespace": "M32rL5zMctMwdjpR", "currencyType": "VIRTUAL", "discountAmount": 76, "discountExpireAt": "1989-07-01T00:00:00Z", "discountPercentage": 32, "discountPurchaseAt": "1993-10-24T00:00:00Z", "discountedPrice": 49, "expireAt": "1984-01-24T00:00:00Z", "price": 20, "purchaseAt": "1985-05-03T00:00:00Z", "trialPrice": 45}, {"currencyCode": "r6O1Xve2NnTpJjTt", "currencyNamespace": "MbvigGIkUl5ZCGyc", "currencyType": "REAL", "discountAmount": 17, "discountExpireAt": "1972-11-15T00:00:00Z", "discountPercentage": 31, "discountPurchaseAt": "1987-03-02T00:00:00Z", "discountedPrice": 85, "expireAt": "1996-09-05T00:00:00Z", "price": 35, "purchaseAt": "1976-10-03T00:00:00Z", "trialPrice": 64}, {"currencyCode": "7zv1IY4Xde03Thjx", "currencyNamespace": "UeYDymQG3k4BQv4g", "currencyType": "VIRTUAL", "discountAmount": 33, "discountExpireAt": "1996-05-07T00:00:00Z", "discountPercentage": 4, "discountPurchaseAt": "1988-09-01T00:00:00Z", "discountedPrice": 96, "expireAt": "1995-09-01T00:00:00Z", "price": 92, "purchaseAt": "1986-11-09T00:00:00Z", "trialPrice": 31}], "r3P6cQUmpdrez71J": [{"currencyCode": "H9F3LDWPjz2hgN4W", "currencyNamespace": "VzHYjBkwp6QefISp", "currencyType": "REAL", "discountAmount": 84, "discountExpireAt": "1996-04-08T00:00:00Z", "discountPercentage": 37, "discountPurchaseAt": "1974-03-24T00:00:00Z", "discountedPrice": 22, "expireAt": "1972-02-19T00:00:00Z", "price": 22, "purchaseAt": "1979-10-23T00:00:00Z", "trialPrice": 67}, {"currencyCode": "x7PgtCSIvSuqCe2j", "currencyNamespace": "bQwPtcRWRBtdCxHU", "currencyType": "REAL", "discountAmount": 96, "discountExpireAt": "1983-11-11T00:00:00Z", "discountPercentage": 25, "discountPurchaseAt": "1971-10-27T00:00:00Z", "discountedPrice": 16, "expireAt": "1975-03-17T00:00:00Z", "price": 82, "purchaseAt": "1976-03-22T00:00:00Z", "trialPrice": 73}, {"currencyCode": "mDwTsdHMSZxedBKN", "currencyNamespace": "FBMHG0gRRt50R6de", "currencyType": "REAL", "discountAmount": 36, "discountExpireAt": "1981-05-20T00:00:00Z", "discountPercentage": 100, "discountPurchaseAt": "1992-03-21T00:00:00Z", "discountedPrice": 86, "expireAt": "1984-09-20T00:00:00Z", "price": 90, "purchaseAt": "1990-03-29T00:00:00Z", "trialPrice": 52}]}}, {"itemIdentities": ["BitAhNqdPSPRfJ73", "hNpTyH79TBOGsUWV", "2hN7ttnx83NvyCrZ"], "itemIdentityType": "ITEM_SKU", "regionData": {"nMmrjTbFLg23GET8": [{"currencyCode": "HV2S7shRPTXvSKER", "currencyNamespace": "XQGwgZSwzT5F4r49", "currencyType": "REAL", "discountAmount": 22, "discountExpireAt": "1988-11-28T00:00:00Z", "discountPercentage": 6, "discountPurchaseAt": "1987-01-24T00:00:00Z", "discountedPrice": 22, "expireAt": "1978-09-19T00:00:00Z", "price": 49, "purchaseAt": "1973-12-17T00:00:00Z", "trialPrice": 98}, {"currencyCode": "2UOMoQaIeKVYizjD", "currencyNamespace": "fNSzuAudtqxT9lto", "currencyType": "VIRTUAL", "discountAmount": 7, "discountExpireAt": "1985-06-16T00:00:00Z", "discountPercentage": 28, "discountPurchaseAt": "1985-02-10T00:00:00Z", "discountedPrice": 26, "expireAt": "1988-10-04T00:00:00Z", "price": 61, "purchaseAt": "1972-09-18T00:00:00Z", "trialPrice": 5}, {"currencyCode": "Tozv00y9OidJYNhE", "currencyNamespace": "uK3xEsTtTjsiJ0C7", "currencyType": "REAL", "discountAmount": 100, "discountExpireAt": "1973-08-27T00:00:00Z", "discountPercentage": 32, "discountPurchaseAt": "1991-12-14T00:00:00Z", "discountedPrice": 76, "expireAt": "1978-09-15T00:00:00Z", "price": 41, "purchaseAt": "1971-05-05T00:00:00Z", "trialPrice": 25}], "zzfKQmC9pDIrdGbc": [{"currencyCode": "Qpk1wna7kIPAUtMJ", "currencyNamespace": "fKbWmrUr8LYmWT3M", "currencyType": "REAL", "discountAmount": 19, "discountExpireAt": "1989-11-29T00:00:00Z", "discountPercentage": 10, "discountPurchaseAt": "1994-02-23T00:00:00Z", "discountedPrice": 9, "expireAt": "1994-11-19T00:00:00Z", "price": 13, "purchaseAt": "1987-07-20T00:00:00Z", "trialPrice": 12}, {"currencyCode": "o725ZKLiXFQqiEFP", "currencyNamespace": "54SDeHSO73jSOgqB", "currencyType": "REAL", "discountAmount": 7, "discountExpireAt": "1999-05-25T00:00:00Z", "discountPercentage": 99, "discountPurchaseAt": "1984-09-28T00:00:00Z", "discountedPrice": 5, "expireAt": "1982-12-21T00:00:00Z", "price": 77, "purchaseAt": "1974-10-25T00:00:00Z", "trialPrice": 65}, {"currencyCode": "tZM11AJQxizywYF6", "currencyNamespace": "vC4seLiOpXtE6Qgj", "currencyType": "REAL", "discountAmount": 57, "discountExpireAt": "1971-10-15T00:00:00Z", "discountPercentage": 90, "discountPurchaseAt": "1974-05-28T00:00:00Z", "discountedPrice": 73, "expireAt": "1998-08-22T00:00:00Z", "price": 11, "purchaseAt": "1981-12-31T00:00:00Z", "trialPrice": 60}], "Lw1mR831V5aZ1qb1": [{"currencyCode": "3N1TAxelnZEpQSQu", "currencyNamespace": "3W94xT20X1sydwfD", "currencyType": "VIRTUAL", "discountAmount": 83, "discountExpireAt": "1980-11-12T00:00:00Z", "discountPercentage": 37, "discountPurchaseAt": "1990-01-08T00:00:00Z", "discountedPrice": 57, "expireAt": "1975-09-08T00:00:00Z", "price": 47, "purchaseAt": "1991-08-06T00:00:00Z", "trialPrice": 99}, {"currencyCode": "8KgpfLYn45zTK2kS", "currencyNamespace": "tvKFZbC97Xiddgdd", "currencyType": "VIRTUAL", "discountAmount": 35, "discountExpireAt": "1991-02-19T00:00:00Z", "discountPercentage": 1, "discountPurchaseAt": "1977-11-19T00:00:00Z", "discountedPrice": 26, "expireAt": "1983-07-25T00:00:00Z", "price": 60, "purchaseAt": "1992-07-25T00:00:00Z", "trialPrice": 65}, {"currencyCode": "sEuUVAUGzk94QZOG", "currencyNamespace": "KQ0UP9cBOI6xquj4", "currencyType": "VIRTUAL", "discountAmount": 40, "discountExpireAt": "1997-05-05T00:00:00Z", "discountPercentage": 17, "discountPurchaseAt": "1986-12-16T00:00:00Z", "discountedPrice": 78, "expireAt": "1971-04-29T00:00:00Z", "price": 1, "purchaseAt": "1982-08-08T00:00:00Z", "trialPrice": 36}]}}, {"itemIdentities": ["IqzyUOrwIyTUNz9C", "QXF01cfWtmdWWJoa", "AtvPGow2jrJxfW7F"], "itemIdentityType": "ITEM_SKU", "regionData": {"xNbneXWDalHcFN0d": [{"currencyCode": "dDwt7FnmcbnYSHIE", "currencyNamespace": "evLaOg7UnMQ26Xbq", "currencyType": "REAL", "discountAmount": 0, "discountExpireAt": "1981-03-04T00:00:00Z", "discountPercentage": 49, "discountPurchaseAt": "1984-12-21T00:00:00Z", "discountedPrice": 88, "expireAt": "1996-01-13T00:00:00Z", "price": 49, "purchaseAt": "1999-01-23T00:00:00Z", "trialPrice": 3}, {"currencyCode": "TaMacdxuCEY33BAZ", "currencyNamespace": "LvsZDIp4uuUNRlpo", "currencyType": "REAL", "discountAmount": 97, "discountExpireAt": "1994-12-20T00:00:00Z", "discountPercentage": 24, "discountPurchaseAt": "1983-11-26T00:00:00Z", "discountedPrice": 20, "expireAt": "1980-01-17T00:00:00Z", "price": 25, "purchaseAt": "1990-07-24T00:00:00Z", "trialPrice": 70}, {"currencyCode": "kZpqNenKDpNd8ACE", "currencyNamespace": "0h3RfLbg6l0BnUPk", "currencyType": "REAL", "discountAmount": 76, "discountExpireAt": "1981-07-31T00:00:00Z", "discountPercentage": 95, "discountPurchaseAt": "1974-12-31T00:00:00Z", "discountedPrice": 78, "expireAt": "1988-08-22T00:00:00Z", "price": 96, "purchaseAt": "1988-04-08T00:00:00Z", "trialPrice": 64}], "0DtNHEuF2x6CmkTt": [{"currencyCode": "YdNLhSrDIM4WCJkl", "currencyNamespace": "8rCEZ0d5ClriG7GR", "currencyType": "REAL", "discountAmount": 2, "discountExpireAt": "1976-05-24T00:00:00Z", "discountPercentage": 22, "discountPurchaseAt": "1994-12-03T00:00:00Z", "discountedPrice": 66, "expireAt": "1980-03-30T00:00:00Z", "price": 36, "purchaseAt": "1981-02-28T00:00:00Z", "trialPrice": 34}, {"currencyCode": "wg0MgtLEdvYfEU3t", "currencyNamespace": "XIvGlDl6twWd3dPF", "currencyType": "VIRTUAL", "discountAmount": 60, "discountExpireAt": "1987-08-30T00:00:00Z", "discountPercentage": 38, "discountPurchaseAt": "1971-12-28T00:00:00Z", "discountedPrice": 2, "expireAt": "1980-08-19T00:00:00Z", "price": 37, "purchaseAt": "1997-08-27T00:00:00Z", "trialPrice": 63}, {"currencyCode": "EVsxE3eoWkyZrDGj", "currencyNamespace": "VQKz59DvrK58Ivnj", "currencyType": "REAL", "discountAmount": 34, "discountExpireAt": "1974-08-22T00:00:00Z", "discountPercentage": 11, "discountPurchaseAt": "1997-12-09T00:00:00Z", "discountedPrice": 7, "expireAt": "1975-02-19T00:00:00Z", "price": 17, "purchaseAt": "1980-05-16T00:00:00Z", "trialPrice": 44}], "kPSN9XOuFJYv1EYx": [{"currencyCode": "Tb2rm2uhz97hg92R", "currencyNamespace": "7OvwtnZz6S7qm6q2", "currencyType": "REAL", "discountAmount": 95, "discountExpireAt": "1992-11-16T00:00:00Z", "discountPercentage": 22, "discountPurchaseAt": "1983-04-13T00:00:00Z", "discountedPrice": 25, "expireAt": "1984-10-20T00:00:00Z", "price": 25, "purchaseAt": "1980-11-05T00:00:00Z", "trialPrice": 45}, {"currencyCode": "yUtT0LysVj58Ol4G", "currencyNamespace": "WQSs826pwpqRFg8p", "currencyType": "REAL", "discountAmount": 34, "discountExpireAt": "1992-01-01T00:00:00Z", "discountPercentage": 17, "discountPurchaseAt": "1972-08-13T00:00:00Z", "discountedPrice": 4, "expireAt": "1995-04-02T00:00:00Z", "price": 78, "purchaseAt": "1978-12-31T00:00:00Z", "trialPrice": 75}, {"currencyCode": "wOGqQuqn2Tg27Sfr", "currencyNamespace": "ZQAclYmDIVFDTYUb", "currencyType": "VIRTUAL", "discountAmount": 0, "discountExpireAt": "1974-02-12T00:00:00Z", "discountPercentage": 52, "discountPurchaseAt": "1983-12-27T00:00:00Z", "discountedPrice": 17, "expireAt": "1974-09-28T00:00:00Z", "price": 79, "purchaseAt": "1977-09-17T00:00:00Z", "trialPrice": 68}]}}]}' \
    > test.out 2>&1
eval_tap $? 116 'BulkUpdateRegionData' test.out

#- 117 SearchItems
samples/cli/sample-apps Platform searchItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --itemType 'COINS' \
    --limit '16' \
    --offset '31' \
    --sortBy 'JNpoaSHl6Jexg4yz' \
    --storeId 'b0fv23lvayjBVQrU' \
    --keyword 'lNSIoGanmrv7VlaL' \
    --language 'e3VcS1NqBLuNwXEd' \
    > test.out 2>&1
eval_tap $? 117 'SearchItems' test.out

#- 118 QueryUncategorizedItems
samples/cli/sample-apps Platform queryUncategorizedItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --limit '32' \
    --offset '60' \
    --sortBy '["displayOrder", "name:asc", "name"]' \
    --storeId '4TpQjH85geMRARH7' \
    > test.out 2>&1
eval_tap $? 118 'QueryUncategorizedItems' test.out

#- 119 GetItem
samples/cli/sample-apps Platform getItem \
    --itemId 'DeooEvSNO6og2qNv' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --storeId 'WITnD1paJBZEeCuT' \
    > test.out 2>&1
eval_tap $? 119 'GetItem' test.out

#- 120 UpdateItem
samples/cli/sample-apps Platform updateItem \
    --itemId 'II1YKhZEZ8AUwFan' \
    --namespace $AB_NAMESPACE \
    --storeId 'Y2EaI7PCkeIZRyG3' \
    --body '{"appId": "ToLVnTW0AgmLaoJb", "appType": "DLC", "baseAppId": "k9yJeMj3LItcspUm", "boothName": "z5xLL9tEJkRUXE2L", "categoryPath": "jvzwSEOCA2TOGitR", "clazz": "X7BmhfSQzYqOishi", "displayOrder": 74, "entitlementType": "DURABLE", "ext": {"Vf7yC0veDqP4M0nv": {}, "wB8dgxBexljOrrYP": {}, "roLARq16FthjhM3p": {}}, "features": ["3tviJAw7rl2v659s", "zcX5Gu2Qb7sCp2Zh", "VLFSoyjWuMYHbhip"], "flexible": false, "images": [{"as": "Pr9F66qx31bXXz8T", "caption": "HC82BEPnfIZgFUI2", "height": 28, "imageUrl": "DYbeI0kLGOmvs4Yy", "smallImageUrl": "JWNznIr2XCTiktBp", "width": 64}, {"as": "LBzoUjmJnh2OMl25", "caption": "gANQXhcN8EqIAO6c", "height": 2, "imageUrl": "pG4NIvhwbgrtpcze", "smallImageUrl": "c8FKmseld9g7A3Fy", "width": 54}, {"as": "uYgBOwn6UXrTau33", "caption": "pQw25oYGW8u0v9g2", "height": 16, "imageUrl": "tCCns0y1C0RRqEQV", "smallImageUrl": "fdj1jHTsOG7kNmzh", "width": 72}], "inventoryConfig": {"customAttributes": {"TzFwW8Zqwe3z5Nvk": {}, "o1lPlIHsE4XxcZBx": {}, "sixI2ZfKgdo1XiC5": {}}, "serverCustomAttributes": {"OASysKIymP2Axx69": {}, "c02Syn7jAKD1WJ17": {}, "6jLqcZIsnMV1jvfs": {}}, "slotUsed": 24}, "itemIds": ["fnQpCrAb3iTkJMkO", "m5ZlKyXgDkBPlKJ7", "9uF6iZbxFCYjj8dW"], "itemQty": {"BX9jE3bDYK3gQo0T": 75, "f1HOs1lfwv2Mlnyn": 58, "Nml62Nsveh7ItLAp": 64}, "itemType": "SEASON", "listable": true, "localizations": {"DVV0THMSkjNvIDHt": {"description": "chxzXEOVpSjvE9sD", "localExt": {"sJtYF3YtESefWBju": {}, "XIzX3bM0Ktmpt6kY": {}, "1VrkFIhT1yejAoDR": {}}, "longDescription": "OHGvdWsCbnwopINE", "title": "PfqljKJHAzUpDO1p"}, "NQ4GVnf2gwnmpLL8": {"description": "wlMRqPTMzTa8bim1", "localExt": {"OJJ0h4qkLUMckhJN": {}, "0FxNLf8wbfqLI6Ux": {}, "q1caV4jLDV7KON5Z": {}}, "longDescription": "6ogxMxBw5969dEgJ", "title": "xIX83RtVwQguouBH"}, "nwpA0SrL5V8tqzgm": {"description": "tGDc13qkGL2POpL2", "localExt": {"6meCWvAP3Edvpbjr": {}, "RXgKnD8VyXgY6r85": {}, "M6LR9SgMg35tMqp3": {}}, "longDescription": "OE7PpZQmJpzeOkbb", "title": "tc6aGKEP3eB5KVF8"}}, "lootBoxConfig": {"rewardCount": 16, "rewards": [{"lootBoxItems": [{"count": 82, "duration": 68, "endDate": "1980-04-28T00:00:00Z", "itemId": "GOsNEZdtmTyVMPkU", "itemSku": "YDqWpQT2ZAuXfQN6", "itemType": "MFmbcf7LRbI2xPAN"}, {"count": 73, "duration": 20, "endDate": "1975-02-28T00:00:00Z", "itemId": "Y4g0Z7SLtsjOsIne", "itemSku": "5U9DAF55CoiewtlW", "itemType": "AVKPPRH8xXitDdbc"}, {"count": 7, "duration": 39, "endDate": "1993-01-28T00:00:00Z", "itemId": "1Ss9AxlCFwFj5CSw", "itemSku": "FVn44cmykznOOsfy", "itemType": "f9MUNQ8ux5BaExWM"}], "name": "m2j5N0JVI6c3ZikX", "odds": 0.19904667300858914, "type": "REWARD", "weight": 93}, {"lootBoxItems": [{"count": 89, "duration": 82, "endDate": "1974-08-09T00:00:00Z", "itemId": "yh5lYa0dR2YWmufg", "itemSku": "lU0okeJDo59PQAal", "itemType": "X1xLkbsmruDeHrcD"}, {"count": 48, "duration": 63, "endDate": "1981-05-14T00:00:00Z", "itemId": "smdHv1rJufDDe2KB", "itemSku": "Dia0BytSHQtOOVJp", "itemType": "xUS8yVTJHXjs0bgL"}, {"count": 28, "duration": 88, "endDate": "1997-12-23T00:00:00Z", "itemId": "yFcPwqShpeBYgste", "itemSku": "C9M8R4ROr5r3SCr7", "itemType": "rfPOPJMe796c6emN"}], "name": "vbjtdu7dtn21LCFj", "odds": 0.44744229591585505, "type": "REWARD_GROUP", "weight": 76}, {"lootBoxItems": [{"count": 56, "duration": 61, "endDate": "1995-01-02T00:00:00Z", "itemId": "ka04wxLwcw5YELQT", "itemSku": "eglsjBwmhUTXMIsH", "itemType": "LLh06nnLxmZFtvhP"}, {"count": 98, "duration": 34, "endDate": "1989-04-02T00:00:00Z", "itemId": "b2T554MFbEHdeCk8", "itemSku": "jo9DXSaTZdXyifo9", "itemType": "jLv5pCB5Lu1W9AWx"}, {"count": 72, "duration": 5, "endDate": "1998-10-24T00:00:00Z", "itemId": "D2iHICQHQpdALdx2", "itemSku": "jZeXE9wWOwMBMmjf", "itemType": "nCMsN4KKme39re4L"}], "name": "EPgofd36AydXXdW1", "odds": 0.6300615168886445, "type": "PROBABILITY_GROUP", "weight": 17}], "rollFunction": "DEFAULT"}, "maxCount": 100, "maxCountPerUser": 69, "name": "m4eoPPQYgoPC3Ltr", "optionBoxConfig": {"boxItems": [{"count": 86, "duration": 39, "endDate": "1998-04-05T00:00:00Z", "itemId": "todn6x96hJ8IKdjF", "itemSku": "KCQxhVbq28jBcJF7", "itemType": "2pGYYuCsPDXv04T4"}, {"count": 56, "duration": 35, "endDate": "1997-12-11T00:00:00Z", "itemId": "Kzp5PbI48yx3WlRQ", "itemSku": "lRbpRQ0z4oaEHbax", "itemType": "ykMZ6ZGQSdQKOd4U"}, {"count": 54, "duration": 36, "endDate": "1991-08-22T00:00:00Z", "itemId": "HCf9zkgAnz6gPIgM", "itemSku": "ZaQebel8TK9jsWrR", "itemType": "wUi79MA8IgTyc0mu"}]}, "purchasable": false, "recurring": {"cycle": "YEARLY", "fixedFreeDays": 55, "fixedTrialCycles": 32, "graceDays": 56}, "regionData": {"rUmKDpnUB0ZKtwFR": [{"currencyCode": "0lNXCHVEge86lRZ5", "currencyNamespace": "POGensSCvQcWoTWt", "currencyType": "VIRTUAL", "discountAmount": 95, "discountExpireAt": "1985-03-31T00:00:00Z", "discountPercentage": 84, "discountPurchaseAt": "1992-09-22T00:00:00Z", "expireAt": "1989-10-15T00:00:00Z", "price": 79, "purchaseAt": "1994-07-06T00:00:00Z", "trialPrice": 30}, {"currencyCode": "4aFRQQsd3H4df3XA", "currencyNamespace": "2WBrpzFL4k8vL7Fp", "currencyType": "VIRTUAL", "discountAmount": 13, "discountExpireAt": "1988-03-08T00:00:00Z", "discountPercentage": 2, "discountPurchaseAt": "1973-06-13T00:00:00Z", "expireAt": "1995-07-16T00:00:00Z", "price": 45, "purchaseAt": "1976-06-23T00:00:00Z", "trialPrice": 26}, {"currencyCode": "c7IR9Bzj7nUTw1XE", "currencyNamespace": "I1TNkSEZGmXHiDDl", "currencyType": "VIRTUAL", "discountAmount": 41, "discountExpireAt": "1973-06-19T00:00:00Z", "discountPercentage": 71, "discountPurchaseAt": "1984-04-08T00:00:00Z", "expireAt": "1974-01-19T00:00:00Z", "price": 0, "purchaseAt": "1980-12-13T00:00:00Z", "trialPrice": 50}], "8CvIXynVb2PLwxLj": [{"currencyCode": "XpMPKcsA09a1QzKx", "currencyNamespace": "XBTD6QYFohRnj78v", "currencyType": "REAL", "discountAmount": 13, "discountExpireAt": "1980-12-21T00:00:00Z", "discountPercentage": 34, "discountPurchaseAt": "1998-08-18T00:00:00Z", "expireAt": "1971-04-20T00:00:00Z", "price": 96, "purchaseAt": "1974-06-16T00:00:00Z", "trialPrice": 87}, {"currencyCode": "FB7JZ1dRKsRqBDxP", "currencyNamespace": "GUqKpEnRVufFelFQ", "currencyType": "REAL", "discountAmount": 2, "discountExpireAt": "1992-10-08T00:00:00Z", "discountPercentage": 28, "discountPurchaseAt": "1993-06-18T00:00:00Z", "expireAt": "1987-07-05T00:00:00Z", "price": 61, "purchaseAt": "1976-06-16T00:00:00Z", "trialPrice": 16}, {"currencyCode": "bAZjwmLvKVENudUc", "currencyNamespace": "EJxiZ1iRCjSRzP1V", "currencyType": "VIRTUAL", "discountAmount": 96, "discountExpireAt": "1990-10-28T00:00:00Z", "discountPercentage": 31, "discountPurchaseAt": "1983-01-16T00:00:00Z", "expireAt": "1985-02-25T00:00:00Z", "price": 96, "purchaseAt": "1990-08-02T00:00:00Z", "trialPrice": 70}], "Uwv8v9Y9YClu2hHL": [{"currencyCode": "uuCpZcGPNc7fMUyi", "currencyNamespace": "HfhkKdzxa6arc1LL", "currencyType": "VIRTUAL", "discountAmount": 15, "discountExpireAt": "1976-04-21T00:00:00Z", "discountPercentage": 55, "discountPurchaseAt": "1983-07-30T00:00:00Z", "expireAt": "1995-09-15T00:00:00Z", "price": 3, "purchaseAt": "1990-02-11T00:00:00Z", "trialPrice": 55}, {"currencyCode": "R3uhFmOaouSZyTr7", "currencyNamespace": "UgGfZHEHQnZptwJy", "currencyType": "REAL", "discountAmount": 42, "discountExpireAt": "1984-09-24T00:00:00Z", "discountPercentage": 4, "discountPurchaseAt": "1995-01-24T00:00:00Z", "expireAt": "1997-02-04T00:00:00Z", "price": 7, "purchaseAt": "1996-07-18T00:00:00Z", "trialPrice": 3}, {"currencyCode": "6oLP6ruoOdoqsXGm", "currencyNamespace": "THx5r3egcPmTWqJu", "currencyType": "REAL", "discountAmount": 38, "discountExpireAt": "1982-01-01T00:00:00Z", "discountPercentage": 59, "discountPurchaseAt": "1981-12-25T00:00:00Z", "expireAt": "1977-02-12T00:00:00Z", "price": 35, "purchaseAt": "1997-07-18T00:00:00Z", "trialPrice": 33}]}, "saleConfig": {"currencyCode": "Cmi7tynob7Fl5dFT", "price": 34}, "seasonType": "TIER", "sectionExclusive": true, "sellable": false, "sku": "Tl9EHbwOJtoLFWg6", "stackable": false, "status": "ACTIVE", "tags": ["ZPvxlwADNbAw9nVC", "W0bADNeP2qAntZ6A", "VsZ4pyk6LAlz5kFD"], "targetCurrencyCode": "uriiWbNi2idEFQXj", "targetNamespace": "rqKTO4mpYrVEEy4V", "thumbnailUrl": "8U1XnMd6CKZMpxjX", "useCount": 94}' \
    > test.out 2>&1
eval_tap $? 120 'UpdateItem' test.out

#- 121 DeleteItem
samples/cli/sample-apps Platform deleteItem \
    --itemId 'egWGkXfRXal8R381' \
    --namespace $AB_NAMESPACE \
    --force 'true' \
    --storeId 'tJykF8msU4NuTgTg' \
    > test.out 2>&1
eval_tap $? 121 'DeleteItem' test.out

#- 122 AcquireItem
samples/cli/sample-apps Platform acquireItem \
    --itemId 'v1Eognniztul3LWn' \
    --namespace $AB_NAMESPACE \
    --body '{"count": 38, "orderNo": "VzYU2wPNzmOI9YBG"}' \
    > test.out 2>&1
eval_tap $? 122 'AcquireItem' test.out

#- 123 GetApp
samples/cli/sample-apps Platform getApp \
    --itemId 'cCKBgiu7XagnQ39J' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'XIe3jkp21XQJ5lzY' \
    > test.out 2>&1
eval_tap $? 123 'GetApp' test.out

#- 124 UpdateApp
samples/cli/sample-apps Platform updateApp \
    --itemId 'esMIe8x2JXY8wRnG' \
    --namespace $AB_NAMESPACE \
    --storeId 'oGXDNgSoIIH1qjj5' \
    --body '{"carousel": [{"alt": "Xorf0JGPfteSWzqz", "previewUrl": "3qx2EDIDUblpRYxt", "thumbnailUrl": "u1YRjrbv81oYjF2k", "type": "video", "url": "Q9JHxi6Su5ldKXwB", "videoSource": "vimeo"}, {"alt": "a8cxpID4PzU3XtFR", "previewUrl": "2OBpS2Q3mzhp8DRD", "thumbnailUrl": "o9aJaouuG9GqoB4N", "type": "image", "url": "vg6wk8vRnoOAPidA", "videoSource": "youtube"}, {"alt": "GMw7pk4JUCAs5uUb", "previewUrl": "RP6X3fra1t4Pec2r", "thumbnailUrl": "HHLd3pW8WjUjJCnq", "type": "image", "url": "CSYlb7UKW3qpiii9", "videoSource": "vimeo"}], "developer": "V7zUocuROtdYChhH", "forumUrl": "zcGTrJcoqhRYvKMq", "genres": ["MassivelyMultiplayer", "Adventure", "Strategy"], "localizations": {"RSlEo8tNngApk4fB": {"announcement": "jszD3QljCUnSEhFW", "slogan": "6Un4KNCnuLUOo3HB"}, "Icc7vNZl9Am4T5cN": {"announcement": "cyoBnLKaORJklCIC", "slogan": "MLFMm13VBgYqvuWp"}, "X9GWHOKGD8Mq6xbG": {"announcement": "d996d097LySC3QuE", "slogan": "w5SF8Ccb8baHWY8X"}}, "platformRequirements": {"tuOPgo8zfEp8YvEF": [{"additionals": "XEswz4deV7SiAdg9", "directXVersion": "Azym96CnlLDyI4fU", "diskSpace": "Uf3J6m3KtbkuO9ih", "graphics": "Mho5lBoQySZa2wHt", "label": "1fxvYo4yc2julIff", "osVersion": "8NJYEiYJqhnULjji", "processor": "gWGh03ETWAjiXZXU", "ram": "op0tPHzdfTKxiqjm", "soundCard": "qH61JVsY9LaiRGOb"}, {"additionals": "UPRoU8pXfPhJAj1z", "directXVersion": "DLuqU2xRQm546Hng", "diskSpace": "cOm6RQN0GSiON5oQ", "graphics": "5NAVkJSm9BivnGZh", "label": "4XUcCpPSRp89647S", "osVersion": "RnPzOP8Gcmwa2cQH", "processor": "djNhcwUSbn3V1TId", "ram": "1oihJx4WrnNagi4E", "soundCard": "M3pqQ7yrtB7PoAw0"}, {"additionals": "cAX4YOgJf7ehj8RY", "directXVersion": "9QxKPxQD6DUI0P1m", "diskSpace": "esoPtgZ2Yll9TH4l", "graphics": "uQCv4inihpDAWx7l", "label": "GszCb0rgAULYTVzX", "osVersion": "7RQBmUo3Qn7ajsqA", "processor": "VC0KllbVQtgs9zd6", "ram": "4URvn7JknZXipEba", "soundCard": "kDa47raaRnPzYYpt"}], "8Ahwbe88A8CZwXwz": [{"additionals": "Jpj94d8PeiHizRWK", "directXVersion": "qcHYsVWhDDMnJqNt", "diskSpace": "Pd6N7wrkSqDxMBev", "graphics": "sjpuFlZ1PQZdvwEr", "label": "ovBLVMs5eunWtHs2", "osVersion": "4zFu0dVEPkz6T0Y5", "processor": "JP8334iChS67fTZZ", "ram": "gI85LE0DxC1F4q8p", "soundCard": "OEYW3aVXlC2IjY5w"}, {"additionals": "uBhGzg1GckTS41sJ", "directXVersion": "P2UEV8L4F2WD49dK", "diskSpace": "oaMCdpnxp8EYuxDB", "graphics": "TNIcazSCpzmlH9Hp", "label": "rJM6IPU1RFPd4hgt", "osVersion": "Y3fgb2PvAl8pROr5", "processor": "qNrM2Eqpihu1Pnh8", "ram": "BnvzGZJJYJXC1fOb", "soundCard": "4shDnPgeGz9pI9hf"}, {"additionals": "JfddTWhVj0hdJAP0", "directXVersion": "ZOLuymu5nHra5jWB", "diskSpace": "xDP7WN7jsuaCnzX7", "graphics": "wGuLHYVo5RW9nyPX", "label": "pQM77PWhU2ewOxEn", "osVersion": "U02GTatfa1epeTRH", "processor": "sFObS7LbbGyFpUJH", "ram": "QNXqh7EJzbLpoxQF", "soundCard": "YVjakZ4B8Y0bcD3a"}], "9Y6ExplCvO00nDKD": [{"additionals": "tvuxGXPKhLDo8M59", "directXVersion": "nskPiSkelOZ5jRIS", "diskSpace": "v6rFqGYW9c0bAkJ0", "graphics": "QzgqUsqeKBuaFwGv", "label": "jdyTBNce2bavRW9b", "osVersion": "D7uuNbTOijfuE51e", "processor": "bVHhPwxbMZRB2yDj", "ram": "iy0jWy1Nka87jLii", "soundCard": "KpkiTnYlhGhh8DiY"}, {"additionals": "urZrJmeyDwSNE0n2", "directXVersion": "H7LZHD96cOkiZs4Z", "diskSpace": "eB6tqABIYPmItDpa", "graphics": "MhSA6oVn0LuNcrPs", "label": "CGprMyn2Gp9vg7AR", "osVersion": "fVQw6fu37m7EW39f", "processor": "o46yJbPB8J5jpdDU", "ram": "79j2Pg7xznul4Dqm", "soundCard": "m7eyGbHFdAfMv676"}, {"additionals": "lu8Eiegx7pLYfo2R", "directXVersion": "It2xY9x7m09LNo9U", "diskSpace": "l8AvPuRLw48ZrTov", "graphics": "d4vvvQ1gpU1mhjCs", "label": "KINoRt5izd1oA4uK", "osVersion": "hR9d3eOSoZo4jFnQ", "processor": "IfRFkqjmSoerV8VU", "ram": "obRjRNSbpmKwLmrT", "soundCard": "vzzrSRrOZQRVBtzS"}]}, "platforms": ["Windows", "Linux", "Windows"], "players": ["LocalCoop", "CrossPlatformMulti", "Coop"], "primaryGenre": "Strategy", "publisher": "gBWKUmnuwnJE5cLe", "releaseDate": "1993-07-29T00:00:00Z", "websiteUrl": "kKmrAKVM5hS2lIgh"}' \
    > test.out 2>&1
eval_tap $? 124 'UpdateApp' test.out

#- 125 DisableItem
samples/cli/sample-apps Platform disableItem \
    --itemId 'a7NIfk2URYeC2Psj' \
    --namespace $AB_NAMESPACE \
    --storeId 'dmtrzykqN8o0kweB' \
    > test.out 2>&1
eval_tap $? 125 'DisableItem' test.out

#- 126 GetItemDynamicData
samples/cli/sample-apps Platform getItemDynamicData \
    --itemId 'akcrqb9fC3Cit2fp' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 126 'GetItemDynamicData' test.out

#- 127 EnableItem
samples/cli/sample-apps Platform enableItem \
    --itemId 'dXKDtbRsoAkcZwbO' \
    --namespace $AB_NAMESPACE \
    --storeId 'IoyfFHAjJMk8NkHL' \
    > test.out 2>&1
eval_tap $? 127 'EnableItem' test.out

#- 128 FeatureItem
samples/cli/sample-apps Platform featureItem \
    --feature 'zkXecfW9lmP1RgY4' \
    --itemId 'fVp0SqhgtAWgTWkI' \
    --namespace $AB_NAMESPACE \
    --storeId '4gI5f7rFw8anNzxK' \
    > test.out 2>&1
eval_tap $? 128 'FeatureItem' test.out

#- 129 DefeatureItem
samples/cli/sample-apps Platform defeatureItem \
    --feature 'giQvv2BEiVd1sGj2' \
    --itemId '2qkV4o2EG6kkevtK' \
    --namespace $AB_NAMESPACE \
    --storeId 'VabzuJknSY67esGs' \
    > test.out 2>&1
eval_tap $? 129 'DefeatureItem' test.out

#- 130 GetLocaleItem
samples/cli/sample-apps Platform getLocaleItem \
    --itemId 'p4rMPVPQTwW7vODD' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --language 'zaJtJwqY8d3Bbck1' \
    --populateBundle 'false' \
    --region 'WwnYT2FOUMFU2bT3' \
    --storeId 'sv82aFmCvLSqxa3x' \
    > test.out 2>&1
eval_tap $? 130 'GetLocaleItem' test.out

#- 131 UpdateItemPurchaseCondition
samples/cli/sample-apps Platform updateItemPurchaseCondition \
    --itemId 'Jykowr3jjYaHGpuQ' \
    --namespace $AB_NAMESPACE \
    --storeId 'QhPT3qnLqLvDQg5X' \
    --body '{"purchaseCondition": {"conditionGroups": [{"operator": "or", "predicates": [{"anyOf": 13, "comparison": "includes", "name": "7VPra35wxDEznsoJ", "predicateType": "EntitlementPredicate", "value": "qYCEKq0Q72vsBLsw", "values": ["adQVzOv3mVNMcoTC", "A3NaORSlQCq61bJ9", "bJDSeiqNm3Yn1pYG"]}, {"anyOf": 82, "comparison": "is", "name": "ybH2TtjqwhPOg0gI", "predicateType": "EntitlementPredicate", "value": "SCZMdMagkx9fWplY", "values": ["HjS4POCYcxiMT2S9", "RoIVymnK1Y32S18t", "94NnKENGu99VGKTP"]}, {"anyOf": 34, "comparison": "isLessThanOrEqual", "name": "kPtsDj6iXcRfGNu5", "predicateType": "SeasonPassPredicate", "value": "aiTaXFS47uwbZ0Q9", "values": ["AwMWtHa50nceGTC0", "QTvhEadPoFDTolZx", "LzTgy15zBAZ3M1gn"]}]}, {"operator": "and", "predicates": [{"anyOf": 55, "comparison": "isGreaterThan", "name": "xlF1p2HDuUOBjHXR", "predicateType": "SeasonTierPredicate", "value": "2GVvZguZJZOXGSrg", "values": ["tgNXikl9U12RHSVG", "rRqYmZb4nVeiIlfm", "m2JVb1cRnXGHdYAp"]}, {"anyOf": 4, "comparison": "isLessThanOrEqual", "name": "Dx3VAnNgZ8mzyWTX", "predicateType": "SeasonPassPredicate", "value": "Kl5X5qRb3WDPSPdX", "values": ["aed7XngrS1XE02q3", "oLLpIAeRTbimpyuD", "ouRxF9kFPp1hEdWo"]}, {"anyOf": 94, "comparison": "isLessThan", "name": "caDj3ySNSDDjxp3X", "predicateType": "SeasonTierPredicate", "value": "4oil5XHL5S1fK0ov", "values": ["twMjpYj34ZQkXocF", "4u67G4MqVqTLFYJq", "doFlzGqFoXo0lgGu"]}]}, {"operator": "or", "predicates": [{"anyOf": 52, "comparison": "is", "name": "lKZkTduw4FwhWMQJ", "predicateType": "SeasonTierPredicate", "value": "iAMPVZk07rcxvtkz", "values": ["jx3dY6SLB64nOErS", "Nbgd136BIymoer2W", "m4Va10X5zrgmXZgW"]}, {"anyOf": 84, "comparison": "is", "name": "iUH0lETtMC5849zE", "predicateType": "EntitlementPredicate", "value": "DgeT5ONBqkxGNi7K", "values": ["D5g2BhSoRNNbeVyi", "FF02UtxPAj5KIWLw", "SCdgZxoma81JsApm"]}, {"anyOf": 63, "comparison": "isLessThanOrEqual", "name": "ZjECKK1eek1G0LUl", "predicateType": "EntitlementPredicate", "value": "K9OSASEAcfcXK33y", "values": ["Bva4KhgeUd45VM2v", "x8BF2mL3lh8N2qPm", "TIxSug1gWjBGm5KO"]}]}]}}' \
    > test.out 2>&1
eval_tap $? 131 'UpdateItemPurchaseCondition' test.out

#- 132 ReturnItem
samples/cli/sample-apps Platform returnItem \
    --itemId '44A1DzHYmWJ70fhS' \
    --namespace $AB_NAMESPACE \
    --body '{"orderNo": "WZ5aTVZsHnUnC7oS"}' \
    > test.out 2>&1
eval_tap $? 132 'ReturnItem' test.out

#- 133 QueryKeyGroups
samples/cli/sample-apps Platform queryKeyGroups \
    --namespace $AB_NAMESPACE \
    --limit '6' \
    --name 'ehIj0LEDkNyX5q9A' \
    --offset '55' \
    --tag 'ukkpljJzZq0XCGcw' \
    > test.out 2>&1
eval_tap $? 133 'QueryKeyGroups' test.out

#- 134 CreateKeyGroup
samples/cli/sample-apps Platform createKeyGroup \
    --namespace $AB_NAMESPACE \
    --body '{"description": "XosIJ4k87KzG2Ura", "name": "J2HwdpAj4m6VObBZ", "status": "INACTIVE", "tags": ["FcIUuGCLkXujAmEE", "3RKEDWA8zay4Tzqe", "svhdvbC3UNsDgTu1"]}' \
    > test.out 2>&1
eval_tap $? 134 'CreateKeyGroup' test.out

#- 135 GetKeyGroupByBoothName
eval_tap 0 135 'GetKeyGroupByBoothName # SKIP deprecated' test.out

#- 136 GetKeyGroup
samples/cli/sample-apps Platform getKeyGroup \
    --keyGroupId 'pxCfl6BYPRIZtV63' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 136 'GetKeyGroup' test.out

#- 137 UpdateKeyGroup
samples/cli/sample-apps Platform updateKeyGroup \
    --keyGroupId 'xzO3RRF0K9VIIOCR' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "LmhmDe9Ifb0dZtgB", "name": "wcmyW5icQ1n7Xf6l", "status": "ACTIVE", "tags": ["yw1VVXvgkcIdpQJh", "s0N4Y9EV0V47cZ5y", "ZaIfhMvklazfAT9M"]}' \
    > test.out 2>&1
eval_tap $? 137 'UpdateKeyGroup' test.out

#- 138 GetKeyGroupDynamic
samples/cli/sample-apps Platform getKeyGroupDynamic \
    --keyGroupId 'MZnUaKxigpB2iqqO' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 138 'GetKeyGroupDynamic' test.out

#- 139 ListKeys
samples/cli/sample-apps Platform listKeys \
    --keyGroupId 'XFsh4iAmw0rebJva' \
    --namespace $AB_NAMESPACE \
    --limit '83' \
    --offset '65' \
    --status 'ACQUIRED' \
    > test.out 2>&1
eval_tap $? 139 'ListKeys' test.out

#- 140 UploadKeys
samples/cli/sample-apps Platform uploadKeys \
    --keyGroupId 'qbmfdwHZcKMiCCl5' \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 140 'UploadKeys' test.out

#- 141 QueryOrders
samples/cli/sample-apps Platform queryOrders \
    --namespace $AB_NAMESPACE \
    --endTime 'aIYutYX2w3khMfyF' \
    --limit '54' \
    --offset '54' \
    --orderNos '["oWBJsB0InudO7hMY", "c6UZt6BxXvCqOwnp", "4Vqetf56tfAx1Ljj"]' \
    --sortBy 'DyLUnuSyfC4rrZeT' \
    --startTime 'LLlkBuqwbAYALxlB' \
    --status 'CHARGEBACK_REVERSED' \
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
    --orderNo 'eVjukP1oZaZDHUIe' \
    > test.out 2>&1
eval_tap $? 143 'GetOrder' test.out

#- 144 RefundOrder
samples/cli/sample-apps Platform refundOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'MerBPrkS1YGnI3Xb' \
    --body '{"description": "1HISX8rZxfgPTRjL"}' \
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
    --body '{"dryRun": false, "notifyUrl": "5w8HEtdqIuyY42TY", "privateKey": "u236xGVY7Kw5Ny40"}' \
    > test.out 2>&1
eval_tap $? 146 'UpdatePaymentCallbackConfig' test.out

#- 147 QueryPaymentNotifications
samples/cli/sample-apps Platform queryPaymentNotifications \
    --namespace $AB_NAMESPACE \
    --endDate 'CVySjTeWYNamLBCl' \
    --externalId 'ep5Hn5laG13FCkbt' \
    --limit '6' \
    --notificationSource 'STRIPE' \
    --notificationType '7LNXhjVKHUq02GfC' \
    --offset '12' \
    --paymentOrderNo 'ZpZ5zCsdvIBYIB1j' \
    --startDate 'EUsc1qjyDKk23G2y' \
    --status 'IGNORED' \
    > test.out 2>&1
eval_tap $? 147 'QueryPaymentNotifications' test.out

#- 148 QueryPaymentOrders
samples/cli/sample-apps Platform queryPaymentOrders \
    --namespace $AB_NAMESPACE \
    --channel 'INTERNAL' \
    --extTxId 'gL34uF4FFTtCPcIc' \
    --limit '14' \
    --offset '88' \
    --status 'REFUNDING' \
    > test.out 2>&1
eval_tap $? 148 'QueryPaymentOrders' test.out

#- 149 CreatePaymentOrderByDedicated
samples/cli/sample-apps Platform createPaymentOrderByDedicated \
    --namespace $AB_NAMESPACE \
    --body '{"currencyCode": "a4uEpWpTIHe2A1BP", "currencyNamespace": "CHOHHtQxKEFyig3d", "customParameters": {"fCPQbLEWT5BY2bAU": {}, "BbSX4LIX1lezdAMy": {}, "vFZ92SQdXNaDDBAy": {}}, "description": "vRCtZwyme9sIlCLy", "extOrderNo": "tO4qGVQkvJkPukOs", "extUserId": "P0QwwkLqJSo5LmoX", "itemType": "SUBSCRIPTION", "language": "gy", "metadata": {"mx8dx7nEFCWwEf7g": "5G98Xz80hUMYqySY", "tfsVYXlJqPmJn7i8": "sx3sThrKN7XTZ6VR", "c7BXwn1G3VySLBtY": "yFFa2mmQj85APZDN"}, "notifyUrl": "OIBw4jGGYxMVpmLl", "omitNotification": false, "platform": "XVqa6E4TB34lKnMJ", "price": 64, "recurringPaymentOrderNo": "rXQ3iPoSQalSAo8U", "region": "rU28JMSxWcIVdKcy", "returnUrl": "PBqb5v5NpgyzYHBa", "sandbox": false, "sku": "e4cPhfjnk4jXGAuy", "subscriptionId": "f0d9SNBIrDlAg9Jy", "targetNamespace": "4Yiqx01I38ht24XV", "targetUserId": "pKyWGTjjKRRo0Cbh", "title": "nfM5gHvYXnjNCKp3"}' \
    > test.out 2>&1
eval_tap $? 149 'CreatePaymentOrderByDedicated' test.out

#- 150 ListExtOrderNoByExtTxId
samples/cli/sample-apps Platform listExtOrderNoByExtTxId \
    --namespace $AB_NAMESPACE \
    --extTxId 'pCphxfOSw4hpvf6h' \
    > test.out 2>&1
eval_tap $? 150 'ListExtOrderNoByExtTxId' test.out

#- 151 GetPaymentOrder
samples/cli/sample-apps Platform getPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'FIifH1opRCzw6nEK' \
    > test.out 2>&1
eval_tap $? 151 'GetPaymentOrder' test.out

#- 152 ChargePaymentOrder
samples/cli/sample-apps Platform chargePaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'zvN0mULvWyJF3oDf' \
    --body '{"extTxId": "EZED3V0Hw6xC7gvk", "paymentMethod": "PYOyphZbubRJ5w8w", "paymentProvider": "WXPAY"}' \
    > test.out 2>&1
eval_tap $? 152 'ChargePaymentOrder' test.out

#- 153 RefundPaymentOrderByDedicated
samples/cli/sample-apps Platform refundPaymentOrderByDedicated \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'Q82gk4tfmqKjRsQz' \
    --body '{"description": "s6Hg4MLV9r9VOkOG"}' \
    > test.out 2>&1
eval_tap $? 153 'RefundPaymentOrderByDedicated' test.out

#- 154 SimulatePaymentOrderNotification
samples/cli/sample-apps Platform simulatePaymentOrderNotification \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo '4b6xw6m75Q8dPZjw' \
    --body '{"amount": 0, "currencyCode": "eEyh4MOxXODWUfG1", "notifyType": "REFUND", "paymentProvider": "WXPAY", "salesTax": 83, "vat": 76}' \
    > test.out 2>&1
eval_tap $? 154 'SimulatePaymentOrderNotification' test.out

#- 155 GetPaymentOrderChargeStatus
samples/cli/sample-apps Platform getPaymentOrderChargeStatus \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'q5muwtqRfPEei0AV' \
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
    --body '{"allowedPlatformOrigins": ["Steam", "Other", "Xbox"]}' \
    > test.out 2>&1
eval_tap $? 157 'UpdatePlatformEntitlementConfig' test.out

#- 158 GetPlatformWalletConfig
samples/cli/sample-apps Platform getPlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Other' \
    > test.out 2>&1
eval_tap $? 158 'GetPlatformWalletConfig' test.out

#- 159 UpdatePlatformWalletConfig
samples/cli/sample-apps Platform updatePlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Oculus' \
    --body '{"allowedBalanceOrigins": ["Other", "Steam", "Steam"]}' \
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
    --body '{"entitlement": {"consumable": {"enabled": true, "strategy": "REVOKE_OR_REPORT"}, "durable": {"enabled": true, "strategy": "REVOKE_OR_REPORT"}}, "wallet": {"enabled": false, "strategy": "CUSTOM"}}' \
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
    --endTime 'FFbLGUJ0vTJL8avE' \
    --limit '91' \
    --offset '16' \
    --source 'OTHER' \
    --startTime 'VatT7lu3bmv9orRq' \
    --status 'FAIL' \
    --transactionId 'LvUsWNVC2X45kmHX' \
    --userId 'bfdtFN2bHy4GD2Lc' \
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
    --body '{"appConfig": {"appName": "rjZFU0dTyY0d5Slv"}, "customConfig": {"connectionType": "TLS", "grpcServerAddress": "dWKOAf5DjT61QWKz"}, "extendType": "CUSTOM"}' \
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
    --body '{"description": "mBpJXEO889mHEvnH", "eventTopic": "t9sko7b3fNWA8ydq", "maxAwarded": 20, "maxAwardedPerUser": 75, "namespaceExpression": "RgAHFjGXXKpubQge", "rewardCode": "rp032PGwaN1Xcx3W", "rewardConditions": [{"condition": "YSNftcqSEpPR8Uz9", "conditionName": "TkJhaKdKgVPG3b7h", "eventName": "gVOlCPFzasGfODeP", "rewardItems": [{"duration": 40, "endDate": "1976-08-20T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "ucTq8BhddaFTOfRQ", "quantity": 76, "sku": "AZhbcmn4WEpc8WT2"}, {"duration": 73, "endDate": "1982-04-10T00:00:00Z", "identityType": "ITEM_ID", "itemId": "2mG6pvhVWjxNp9ik", "quantity": 43, "sku": "KdiTnASKEpki3jaQ"}, {"duration": 94, "endDate": "1992-10-30T00:00:00Z", "identityType": "ITEM_ID", "itemId": "gAiwOtzQiPcB9ZRZ", "quantity": 97, "sku": "bbO7A2qlPCcZGaZB"}]}, {"condition": "3lB8bJmAlFH5eQmL", "conditionName": "n7XohVABiklLGNX3", "eventName": "nqYSdMmALolsE0uQ", "rewardItems": [{"duration": 31, "endDate": "1981-07-29T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "8saxcR49HX75tMGQ", "quantity": 78, "sku": "nOPwacqVC9cghDh4"}, {"duration": 5, "endDate": "1984-12-26T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "uxH02vt4vb6mL6EI", "quantity": 5, "sku": "JX2kCCCIKcRWvJse"}, {"duration": 37, "endDate": "1971-06-07T00:00:00Z", "identityType": "ITEM_ID", "itemId": "oJ54rGkYS28QYYxW", "quantity": 33, "sku": "PooRxvLqYCFkYjHE"}]}, {"condition": "CFrf7JgeavvwP7tC", "conditionName": "PJunbUunmr6qaJFk", "eventName": "6IBm77V8BQWL9Jfp", "rewardItems": [{"duration": 33, "endDate": "1980-01-21T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "S7TAKXAQSJB3Q9DI", "quantity": 41, "sku": "1xC12jAoDQqtfNiM"}, {"duration": 25, "endDate": "1982-12-04T00:00:00Z", "identityType": "ITEM_ID", "itemId": "o8a9Zy6mVHZmujSB", "quantity": 27, "sku": "ainUKeWoWfXPKPwI"}, {"duration": 5, "endDate": "1997-07-10T00:00:00Z", "identityType": "ITEM_ID", "itemId": "rTf6WJ8wc0qma4qG", "quantity": 71, "sku": "GLar9dOjmUXCP0Mi"}]}], "userIdExpression": "s0zMS28MwR5QvGnu"}' \
    > test.out 2>&1
eval_tap $? 169 'CreateReward' test.out

#- 170 QueryRewards
samples/cli/sample-apps Platform queryRewards \
    --namespace $AB_NAMESPACE \
    --eventTopic '75st1ERU2xeJL8SR' \
    --limit '11' \
    --offset '40' \
    --sortBy '["rewardCode:asc", "rewardCode:desc", "namespace"]' \
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
    --rewardId 'ORCd4Lj4NbKuHq5g' \
    > test.out 2>&1
eval_tap $? 173 'GetReward' test.out

#- 174 UpdateReward
samples/cli/sample-apps Platform updateReward \
    --namespace $AB_NAMESPACE \
    --rewardId '9pyx71vSdLGgD3Lz' \
    --body '{"description": "DxRzmzY9gl1Ac5ZM", "eventTopic": "XQIL9p2pnFPGNmdf", "maxAwarded": 77, "maxAwardedPerUser": 91, "namespaceExpression": "zuJ9k74ffNYaR4Uq", "rewardCode": "U8YXfmsYU2OpCLpV", "rewardConditions": [{"condition": "wmBFVUeqIQ6k0DwC", "conditionName": "sUCDf1xbDk5BNWnf", "eventName": "EMBVdUo0DAEoQYfZ", "rewardItems": [{"duration": 89, "endDate": "1990-01-12T00:00:00Z", "identityType": "ITEM_ID", "itemId": "RxY7CnBuPXVsXuru", "quantity": 89, "sku": "u6kfCTBJ9p3Ffdd6"}, {"duration": 6, "endDate": "1987-08-16T00:00:00Z", "identityType": "ITEM_ID", "itemId": "xtkIzYPoO8d4GW8g", "quantity": 68, "sku": "9MrKtmyVLZPgjcIJ"}, {"duration": 51, "endDate": "1985-09-16T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "n5RXWSg7oQyZwuxk", "quantity": 2, "sku": "QJFXjZ5CtuEHHnde"}]}, {"condition": "2Qu5pSMq8jyXwzAa", "conditionName": "CpZUFeXsnUudehdF", "eventName": "cnd4E1VKPAuGYhdt", "rewardItems": [{"duration": 65, "endDate": "1977-09-03T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "lYGArID8Nz64oU5w", "quantity": 37, "sku": "PHsNPSUHICor6v0k"}, {"duration": 93, "endDate": "1987-05-03T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "hoGQmQzLkYDKkfyO", "quantity": 26, "sku": "IuWkZNHdlD9wEWOr"}, {"duration": 31, "endDate": "1985-10-17T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "igrfNLgCtxYyXHHH", "quantity": 31, "sku": "glq3DwEtkhNKlp8s"}]}, {"condition": "8L5Rdicxn0o4nyTP", "conditionName": "hVZ3kcx9d0KI4PAd", "eventName": "Nmur10rbGOXKTDzy", "rewardItems": [{"duration": 37, "endDate": "1989-08-27T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "TYDSuCUdI3AwkXMK", "quantity": 8, "sku": "FlIAba4ufAYFNpaw"}, {"duration": 54, "endDate": "1972-10-29T00:00:00Z", "identityType": "ITEM_ID", "itemId": "Cxu5NMYCccOe8Ned", "quantity": 47, "sku": "xCQxCOAV5ugL2Kq4"}, {"duration": 3, "endDate": "1997-02-01T00:00:00Z", "identityType": "ITEM_ID", "itemId": "OhVSLhN1fb8RODC0", "quantity": 63, "sku": "I8SjKVrZrzN9v9yc"}]}], "userIdExpression": "PAEoKSJvfGwkRWS4"}' \
    > test.out 2>&1
eval_tap $? 174 'UpdateReward' test.out

#- 175 DeleteReward
samples/cli/sample-apps Platform deleteReward \
    --namespace $AB_NAMESPACE \
    --rewardId 'a2vylCLGRw2Oxrp2' \
    > test.out 2>&1
eval_tap $? 175 'DeleteReward' test.out

#- 176 CheckEventCondition
samples/cli/sample-apps Platform checkEventCondition \
    --namespace $AB_NAMESPACE \
    --rewardId 'haxmm96qNDgw5XYF' \
    --body '{"payload": {"idzlwTKk8zcyXyBV": {}, "Qs91pWhV1vQeXVUo": {}, "RdLmLnosHcxseJfv": {}}}' \
    > test.out 2>&1
eval_tap $? 176 'CheckEventCondition' test.out

#- 177 DeleteRewardConditionRecord
samples/cli/sample-apps Platform deleteRewardConditionRecord \
    --namespace $AB_NAMESPACE \
    --rewardId 'TKDeDv3EI1qEHTKc' \
    --body '{"conditionName": "5ExxIozcd7OMI2wK", "userId": "qrb1QhK7t8LI2qOB"}' \
    > test.out 2>&1
eval_tap $? 177 'DeleteRewardConditionRecord' test.out

#- 178 QuerySections
samples/cli/sample-apps Platform querySections \
    --namespace $AB_NAMESPACE \
    --end 'HvePNbm6urQzxKez' \
    --limit '72' \
    --offset '93' \
    --start 'L76vs7zpFh3uSPYp' \
    --storeId 'trZj4dgApvzxlD3j' \
    --viewId '8zO4V8DuMfn0vmUi' \
    > test.out 2>&1
eval_tap $? 178 'QuerySections' test.out

#- 179 CreateSection
samples/cli/sample-apps Platform createSection \
    --namespace $AB_NAMESPACE \
    --storeId 'S4rNYJMjDKeccAL1' \
    --body '{"active": true, "displayOrder": 23, "endDate": "1986-07-29T00:00:00Z", "ext": {"8EfAtOFQEg5a60wN": {}, "sqdgd5idy8KediSv": {}, "hsljUOSKmC4RDs9z": {}}, "fixedPeriodRotationConfig": {"backfillType": "NONE", "duration": 72, "itemCount": 82, "rule": "SEQUENCE"}, "items": [{"id": "yANqyMkFuqB2Dmtt", "sku": "kIXtwUQW8W1hphgz"}, {"id": "suzOTyDaSkOp2tNJ", "sku": "RaAoTBPZ6SVpKelN"}, {"id": "wSRxBSeb7q2saUhw", "sku": "Z4cJ3pbpIIqU70Cm"}], "localizations": {"crl3m7Prb9RDP2at": {"description": "eHLPurEv8sEn8PIo", "localExt": {"1ANYTQCah3np5xSD": {}, "Rweg9bg1xwgK9Zqb": {}, "LJOxjndR62BR75Dx": {}}, "longDescription": "FB8QhkK3Pg9Zj8qR", "title": "gGcYIQdKU4g1CKrZ"}, "xrLbA4lR4NcCBvyA": {"description": "6bBiDHdr1Kx6W41s", "localExt": {"gH5B34GQW1O1ZdAN": {}, "AXCIA0vARwaZED3Y": {}, "KHQI0Hy5gN5qD7jB": {}}, "longDescription": "JkWjrbVJldP4BFsl", "title": "3bU5nJKTfqRtGY6i"}, "aY8BqDp7VAyDjt0L": {"description": "gNlUU4ByacuzaUl3", "localExt": {"SGTL2Y2h08lGWUV8": {}, "72J1dggwYf06c03v": {}, "5rM1X4VeYqS54Yqo": {}}, "longDescription": "WlYq4mK2gokl7a4C", "title": "3EQ61Br8V7Bp3abB"}}, "name": "TJ02USdbi2IVBf0W", "rotationType": "CUSTOM", "startDate": "1996-07-31T00:00:00Z", "viewId": "zk38mSbgQ28zZGeK"}' \
    > test.out 2>&1
eval_tap $? 179 'CreateSection' test.out

#- 180 PurgeExpiredSection
samples/cli/sample-apps Platform purgeExpiredSection \
    --namespace $AB_NAMESPACE \
    --storeId 'aQCMJX1Vddp4Ntec' \
    > test.out 2>&1
eval_tap $? 180 'PurgeExpiredSection' test.out

#- 181 GetSection
samples/cli/sample-apps Platform getSection \
    --namespace $AB_NAMESPACE \
    --sectionId 'A9kmkJM04oJaw0Pr' \
    --storeId '7oJvyDlQ3F8TWidb' \
    > test.out 2>&1
eval_tap $? 181 'GetSection' test.out

#- 182 UpdateSection
samples/cli/sample-apps Platform updateSection \
    --namespace $AB_NAMESPACE \
    --sectionId 'MTt6mBritGwgcwp0' \
    --storeId 'PNbkWyNvMaBK5Rdh' \
    --body '{"active": false, "displayOrder": 80, "endDate": "1996-07-25T00:00:00Z", "ext": {"h4vR65MvUXXRTml4": {}, "qcqIj4lvOuuXGjMK": {}, "P2dgGYyAysTXj74s": {}}, "fixedPeriodRotationConfig": {"backfillType": "CUSTOM", "duration": 68, "itemCount": 84, "rule": "SEQUENCE"}, "items": [{"id": "8egieHa6ENdpEnfM", "sku": "spAKCQdTt99ZTeRK"}, {"id": "uDVgS7e5kp7oirhK", "sku": "504Vi8dERG3IJ51b"}, {"id": "ZpEaCMkuUpJzIvgR", "sku": "Y1yPV8oWfYiyrM46"}], "localizations": {"aU88Mv6oLqcTETXZ": {"description": "StPqCOn9gc9lruvV", "localExt": {"JRDxyFi8uyt7kUL2": {}, "K7uzblRMrwsYeSYx": {}, "D6l98ObE0eBtNjVG": {}}, "longDescription": "LNB3xL5uL470eKRP", "title": "Ys7UEsOTx7WD0GWx"}, "hLlTZ0pZJB3W7IHG": {"description": "GSx0XJ4jdGIG90RN", "localExt": {"8q8EmdDKddUcL4Yn": {}, "SMuVbzCJ2QCtLEYN": {}, "GSbJhwmdGk6lKcDN": {}}, "longDescription": "5dMZPx6a0QfXeSyw", "title": "zS37oAaza7L32Ywq"}, "2VZVe9MUrgBWmSZK": {"description": "jYQoNaaxh8F2F1L9", "localExt": {"wXblzpblueuwpqw4": {}, "ZvfhLuG8EbyayyNL": {}, "u9TZdyrXqloptGMx": {}}, "longDescription": "sQcaOUAKCqLOtNnK", "title": "rnfxUPix0AL5osmC"}}, "name": "E3OtdZj6d8KyG9gn", "rotationType": "FIXED_PERIOD", "startDate": "1977-08-24T00:00:00Z", "viewId": "MZXyJk1pCcsiXVDD"}' \
    > test.out 2>&1
eval_tap $? 182 'UpdateSection' test.out

#- 183 DeleteSection
samples/cli/sample-apps Platform deleteSection \
    --namespace $AB_NAMESPACE \
    --sectionId 'yJVZYMbxEqMQpnmB' \
    --storeId 'Uc04j9WKHeOt2joW' \
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
    --body '{"defaultLanguage": "KCOTNq6klia9IMH7", "defaultRegion": "Pj5u9YqVaT89aJiP", "description": "2AD592gfw3Oz6ZAE", "supportedLanguages": ["RVZocOmgyWwerMQQ", "q9kcmiZxXrVQh4OT", "GvkLsIeCgNVVAaM3"], "supportedRegions": ["oHvAzZjr74vD1zxJ", "635tAmASMTv9RlAh", "i6vswUJvuZwKprvi"], "title": "9HIoxRdU5MzoR6N7"}' \
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
    --body '{"catalogType": "APP", "fieldsToBeIncluded": ["5tYQKNP1fp3MsF1I", "hBrpli6fWxROrVas", "u4B4chbgVVvWW8OE"], "idsToBeExported": ["OMUlSgJ9xmavwFcU", "F8qir1Ww9f27ufku", "si9V6xFKh4LNILI9"], "storeId": "09CS9gxdSg5FCjU3"}' \
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
    --storeId 'JxS2dBrLhmmhZfDZ' \
    > test.out 2>&1
eval_tap $? 194 'GetStore' test.out

#- 195 UpdateStore
samples/cli/sample-apps Platform updateStore \
    --namespace $AB_NAMESPACE \
    --storeId 'KyShTjQZgce901ma' \
    --body '{"defaultLanguage": "IKB9dcaDi9gatYHA", "defaultRegion": "7c9xWRRyHiM5rzW9", "description": "3D53V2Gxmd4Uh1wo", "supportedLanguages": ["sGcPofNHdA97IAUc", "guqCrUTMNI0eqO5Y", "5Wg5WQAkl9FWRqqZ"], "supportedRegions": ["Hayrk9zNzddXaVEA", "cFNpWMVApRBiYWIR", "PBzpVQ0jmRZ3MYl2"], "title": "jaiuPpUxSO4ldZoI"}' \
    > test.out 2>&1
eval_tap $? 195 'UpdateStore' test.out

#- 196 DeleteStore
samples/cli/sample-apps Platform deleteStore \
    --namespace $AB_NAMESPACE \
    --storeId 'nazEx0J65isCLawP' \
    > test.out 2>&1
eval_tap $? 196 'DeleteStore' test.out

#- 197 QueryChanges
samples/cli/sample-apps Platform queryChanges \
    --namespace $AB_NAMESPACE \
    --storeId 'gwwckVdq5ATeTvrV' \
    --action 'UPDATE' \
    --itemSku 'OMDnXtdNjyuTwaPC' \
    --itemType 'COINS' \
    --limit '98' \
    --offset '46' \
    --selected 'false' \
    --sortBy '["updatedAt:desc", "createdAt:desc", "createdAt:asc"]' \
    --status 'PUBLISHED' \
    --type 'ITEM' \
    --updatedAtEnd 'JBz8V8ZfGDMnooE6' \
    --updatedAtStart 'GTx9HJxA0FRmwoAc' \
    --withTotal 'true' \
    > test.out 2>&1
eval_tap $? 197 'QueryChanges' test.out

#- 198 PublishAll
samples/cli/sample-apps Platform publishAll \
    --namespace $AB_NAMESPACE \
    --storeId 'pVYgYspFX4gUCahG' \
    > test.out 2>&1
eval_tap $? 198 'PublishAll' test.out

#- 199 PublishSelected
samples/cli/sample-apps Platform publishSelected \
    --namespace $AB_NAMESPACE \
    --storeId 'Ygw1WjJXyoeLAUpS' \
    > test.out 2>&1
eval_tap $? 199 'PublishSelected' test.out

#- 200 SelectAllRecords
samples/cli/sample-apps Platform selectAllRecords \
    --namespace $AB_NAMESPACE \
    --storeId 'EJnLHOEIWrssir3Y' \
    > test.out 2>&1
eval_tap $? 200 'SelectAllRecords' test.out

#- 201 SelectAllRecordsByCriteria
samples/cli/sample-apps Platform selectAllRecordsByCriteria \
    --namespace $AB_NAMESPACE \
    --storeId 'O4USeVNCV5JqELuQ' \
    --action 'UPDATE' \
    --itemSku 'VOkT6BoALkZ7oz6e' \
    --itemType 'INGAMEITEM' \
    --selected 'true' \
    --type 'STORE' \
    --updatedAtEnd 'rdBPugMH5mEfviYF' \
    --updatedAtStart 'Jl3PG1xMlrCtmQUw' \
    > test.out 2>&1
eval_tap $? 201 'SelectAllRecordsByCriteria' test.out

#- 202 GetStatistic
samples/cli/sample-apps Platform getStatistic \
    --namespace $AB_NAMESPACE \
    --storeId 'AwrJUBNRTWZGwGgg' \
    --action 'DELETE' \
    --itemSku '0b8YcrLxEgQBP3yI' \
    --itemType 'OPTIONBOX' \
    --type 'ITEM' \
    --updatedAtEnd 'VZXzJVGBjD7h5cOS' \
    --updatedAtStart 'h1cc4t0lCY4qnLmg' \
    > test.out 2>&1
eval_tap $? 202 'GetStatistic' test.out

#- 203 UnselectAllRecords
samples/cli/sample-apps Platform unselectAllRecords \
    --namespace $AB_NAMESPACE \
    --storeId 'fk4mwndBHCifwl96' \
    > test.out 2>&1
eval_tap $? 203 'UnselectAllRecords' test.out

#- 204 SelectRecord
samples/cli/sample-apps Platform selectRecord \
    --changeId 'tbIS8I9B2AjazId5' \
    --namespace $AB_NAMESPACE \
    --storeId 'OVT1wPzW7aVHi0O4' \
    > test.out 2>&1
eval_tap $? 204 'SelectRecord' test.out

#- 205 UnselectRecord
samples/cli/sample-apps Platform unselectRecord \
    --changeId 'kqIRrU1VnPXd21zY' \
    --namespace $AB_NAMESPACE \
    --storeId 'FyyQtrjfs3lTj9EJ' \
    > test.out 2>&1
eval_tap $? 205 'UnselectRecord' test.out

#- 206 CloneStore
samples/cli/sample-apps Platform cloneStore \
    --namespace $AB_NAMESPACE \
    --storeId 'qn0f67Pd7aYMQJqd' \
    --targetStoreId 'rOiO1wujdKiVyUaU' \
    > test.out 2>&1
eval_tap $? 206 'CloneStore' test.out

#- 207 ExportStore
eval_tap 0 207 'ExportStore # SKIP deprecated' test.out

#- 208 QueryImportHistory
samples/cli/sample-apps Platform queryImportHistory \
    --namespace $AB_NAMESPACE \
    --storeId 'XSBD3W1fY0GBgKFq' \
    --end 'HIVqhFFGTw5vYjvQ' \
    --limit '69' \
    --offset '31' \
    --sortBy 'NJKtkNZIEs7ZiCLS' \
    --start '3UAWZnejqExYbTtr' \
    --success 'true' \
    > test.out 2>&1
eval_tap $? 208 'QueryImportHistory' test.out

#- 209 ImportStoreByCSV
samples/cli/sample-apps Platform importStoreByCSV \
    --namespace $AB_NAMESPACE \
    --storeId 'u49aAzHR2wy5vvms' \
    --category 'tmp.dat' \
    --display 'tmp.dat' \
    --item 'tmp.dat' \
    --notes '04CwtLegH13b96kJ' \
    --section 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 209 'ImportStoreByCSV' test.out

#- 210 QuerySubscriptions
samples/cli/sample-apps Platform querySubscriptions \
    --namespace $AB_NAMESPACE \
    --chargeStatus 'CHARGED' \
    --itemId 'loTYP429qwIaNumW' \
    --limit '14' \
    --offset '61' \
    --sku 'oG5E1RJ3XNT4biuk' \
    --status 'INIT' \
    --subscribedBy 'PLATFORM' \
    --userId 'sy4QPJsXmPhAUnoD' \
    > test.out 2>&1
eval_tap $? 210 'QuerySubscriptions' test.out

#- 211 RecurringChargeSubscription
samples/cli/sample-apps Platform recurringChargeSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'wF70S6Hmd0ZDMaWb' \
    > test.out 2>&1
eval_tap $? 211 'RecurringChargeSubscription' test.out

#- 212 GetTicketDynamic
samples/cli/sample-apps Platform getTicketDynamic \
    --boothName 'zNfwqNJjldBgl1EY' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 212 'GetTicketDynamic' test.out

#- 213 DecreaseTicketSale
samples/cli/sample-apps Platform decreaseTicketSale \
    --boothName 'pX7Mww1K53NW3ulR' \
    --namespace $AB_NAMESPACE \
    --body '{"orderNo": "aJguHt5CpMSHcKey"}' \
    > test.out 2>&1
eval_tap $? 213 'DecreaseTicketSale' test.out

#- 214 GetTicketBoothID
samples/cli/sample-apps Platform getTicketBoothID \
    --boothName 'YnQyNeywXhFWl5Ur' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 214 'GetTicketBoothID' test.out

#- 215 IncreaseTicketSale
samples/cli/sample-apps Platform increaseTicketSale \
    --boothName 'DkNIBHOeBCTiEDmX' \
    --namespace $AB_NAMESPACE \
    --body '{"count": 99, "orderNo": "tzpEcWA73UqGyvzG"}' \
    > test.out 2>&1
eval_tap $? 215 'IncreaseTicketSale' test.out

#- 216 Commit
samples/cli/sample-apps Platform commit \
    --namespace $AB_NAMESPACE \
    --body '{"actions": [{"operations": [{"creditPayload": {"balanceOrigin": "Playstation", "count": 58, "currencyCode": "bFCHlaERAQMPlJjo", "expireAt": "1983-02-20T00:00:00Z"}, "debitPayload": {"count": 47, "currencyCode": "omK9F3ihOADvuQ8S", "walletPlatform": "GooglePlay"}, "fulFillItemPayload": {"count": 5, "entitlementCollectionId": "cVDp00Wb1C9H9JkL", "entitlementOrigin": "Xbox", "itemIdentity": "pmcZNHzTh6mDWjxL", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 65, "entitlementId": "jBRX65UtlBvAvXFL"}, "type": "CREDIT_WALLET"}, {"creditPayload": {"balanceOrigin": "GooglePlay", "count": 41, "currencyCode": "e6CoygPRsTDJRbnx", "expireAt": "1996-12-08T00:00:00Z"}, "debitPayload": {"count": 43, "currencyCode": "8arFCfZm6WdMi2Hl", "walletPlatform": "Xbox"}, "fulFillItemPayload": {"count": 35, "entitlementCollectionId": "VCBVQokvA1oTqvPw", "entitlementOrigin": "Twitch", "itemIdentity": "YHmVw5s87UISnmWK", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 29, "entitlementId": "LsR8EsfOKOeahfeV"}, "type": "FULFILL_ITEM"}, {"creditPayload": {"balanceOrigin": "Xbox", "count": 6, "currencyCode": "8apwCHTXdEM6VYz3", "expireAt": "1982-04-29T00:00:00Z"}, "debitPayload": {"count": 59, "currencyCode": "uLPQqK6ZDAD16Ji7", "walletPlatform": "Other"}, "fulFillItemPayload": {"count": 77, "entitlementCollectionId": "VfkeanMzI4QLgTB1", "entitlementOrigin": "Nintendo", "itemIdentity": "u0kvdqu7wZs2yRSZ", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 3, "entitlementId": "kHYMAevdyma3d0I0"}, "type": "DEBIT_WALLET"}], "userId": "r6subsBSkWe8r6Ax"}, {"operations": [{"creditPayload": {"balanceOrigin": "GooglePlay", "count": 34, "currencyCode": "14Cy9yjXaEzYIIwR", "expireAt": "1993-03-09T00:00:00Z"}, "debitPayload": {"count": 27, "currencyCode": "ITO41uM8XB3xOGWm", "walletPlatform": "GooglePlay"}, "fulFillItemPayload": {"count": 53, "entitlementCollectionId": "myeyW8SCRGkF6VVE", "entitlementOrigin": "Xbox", "itemIdentity": "hEDee3vtTqUaeaNG", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 92, "entitlementId": "Ud7w9yMXHB5GZ2Zb"}, "type": "DEBIT_WALLET"}, {"creditPayload": {"balanceOrigin": "Oculus", "count": 89, "currencyCode": "2Xs11kY8LDhElxyD", "expireAt": "1990-06-11T00:00:00Z"}, "debitPayload": {"count": 58, "currencyCode": "XFWDkThHXJp59wrY", "walletPlatform": "Other"}, "fulFillItemPayload": {"count": 20, "entitlementCollectionId": "YkzoAMPlifkYEpCq", "entitlementOrigin": "Xbox", "itemIdentity": "i3AEHXuLLvrmGrYt", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 99, "entitlementId": "N25R1QWQ2OfjyxBK"}, "type": "REVOKE_ENTITLEMENT"}, {"creditPayload": {"balanceOrigin": "Playstation", "count": 82, "currencyCode": "NmfKzbHucwJTK4ZU", "expireAt": "1975-05-15T00:00:00Z"}, "debitPayload": {"count": 5, "currencyCode": "QVQFIjK2zOSzQA6P", "walletPlatform": "Epic"}, "fulFillItemPayload": {"count": 35, "entitlementCollectionId": "xv2aOjaQrLJCX6lU", "entitlementOrigin": "Epic", "itemIdentity": "qTvct94BkFdn5j7K", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 33, "entitlementId": "mhAwe92CtIGNzukc"}, "type": "REVOKE_ENTITLEMENT"}], "userId": "cSwBetcsRTmEkYjL"}, {"operations": [{"creditPayload": {"balanceOrigin": "Steam", "count": 53, "currencyCode": "92M8Ao35Xb6XXwmg", "expireAt": "1994-04-04T00:00:00Z"}, "debitPayload": {"count": 42, "currencyCode": "Pvz3JYvHqwIwhLNv", "walletPlatform": "IOS"}, "fulFillItemPayload": {"count": 4, "entitlementCollectionId": "EDm6CY9TUy4OR3HJ", "entitlementOrigin": "Nintendo", "itemIdentity": "MMtjv5XRm7LhRggd", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 98, "entitlementId": "9OfhJS5sQl3nNhKq"}, "type": "FULFILL_ITEM"}, {"creditPayload": {"balanceOrigin": "IOS", "count": 95, "currencyCode": "FLCwGRdNDCwQmxCe", "expireAt": "1981-02-19T00:00:00Z"}, "debitPayload": {"count": 59, "currencyCode": "eg5x5i6xnQD6QeJ0", "walletPlatform": "Epic"}, "fulFillItemPayload": {"count": 42, "entitlementCollectionId": "CgCyFekJN3kukrAb", "entitlementOrigin": "GooglePlay", "itemIdentity": "oUp8jYrLI3YMRsfs", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 62, "entitlementId": "ENui68TBT6Wmix9W"}, "type": "DEBIT_WALLET"}, {"creditPayload": {"balanceOrigin": "Xbox", "count": 21, "currencyCode": "3Ket3pol4mTxVizd", "expireAt": "1993-03-07T00:00:00Z"}, "debitPayload": {"count": 18, "currencyCode": "kOhAmeoMPOOfxZkP", "walletPlatform": "Epic"}, "fulFillItemPayload": {"count": 34, "entitlementCollectionId": "5U80320blyeSmWwZ", "entitlementOrigin": "Twitch", "itemIdentity": "YmbGNxh9to3IWlCh", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 38, "entitlementId": "hBJmUJDYkXtj3qyG"}, "type": "CREDIT_WALLET"}], "userId": "bmDZYp3KzNyWFBy3"}], "metadata": {"LyvUTleqMDJJjI71": {}, "4d85de5yROWnqTBi": {}, "VYJAVN0gP5aet5nW": {}}, "needPreCheck": true, "transactionId": "kzbCIII27Ni2cnhQ", "type": "aw7EgddCkNGeRRsy"}' \
    > test.out 2>&1
eval_tap $? 216 'Commit' test.out

#- 217 GetTradeHistoryByCriteria
samples/cli/sample-apps Platform getTradeHistoryByCriteria \
    --namespace $AB_NAMESPACE \
    --limit '9' \
    --offset '52' \
    --status 'INIT' \
    --type 'Q1bO7FpMoMtB9GbS' \
    --userId 'a6tnd5uY2UqZfsb6' \
    > test.out 2>&1
eval_tap $? 217 'GetTradeHistoryByCriteria' test.out

#- 218 GetTradeHistoryByTransactionId
samples/cli/sample-apps Platform getTradeHistoryByTransactionId \
    --namespace $AB_NAMESPACE \
    --transactionId 'fCiRiA8ktBzvXgE8' \
    > test.out 2>&1
eval_tap $? 218 'GetTradeHistoryByTransactionId' test.out

#- 219 UnlockSteamUserAchievement
samples/cli/sample-apps Platform unlockSteamUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'R3mbryWI14WbDahM' \
    --body '{"achievements": [{"id": "gdOwIHZFEMSBCnnO", "value": 98}, {"id": "EmY5aoaqnE1yiwKL", "value": 91}, {"id": "8Q5MPv2tlgbS0kaP", "value": 67}], "steamUserId": "raYPDihEfOBVdOKT"}' \
    > test.out 2>&1
eval_tap $? 219 'UnlockSteamUserAchievement' test.out

#- 220 GetXblUserAchievements
samples/cli/sample-apps Platform getXblUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId 'lh70Z1h6NWqI4KqW' \
    --xboxUserId 'kI44llx7Yze2TeXY' \
    > test.out 2>&1
eval_tap $? 220 'GetXblUserAchievements' test.out

#- 221 UpdateXblUserAchievement
samples/cli/sample-apps Platform updateXblUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'QbcATIxZf4tVJ9o4' \
    --body '{"achievements": [{"id": "kVvN1PJ4l5s2TxxP", "percentComplete": 22}, {"id": "fUynYRqhnAG9vtcG", "percentComplete": 5}, {"id": "mHLnonTqNKrQ44vz", "percentComplete": 48}], "serviceConfigId": "kkLRA7yQ1MAlepdK", "titleId": "fFMXkuBEza59uNzz", "xboxUserId": "60kEINCGP3ilyQZO"}' \
    > test.out 2>&1
eval_tap $? 221 'UpdateXblUserAchievement' test.out

#- 222 AnonymizeCampaign
samples/cli/sample-apps Platform anonymizeCampaign \
    --namespace $AB_NAMESPACE \
    --userId 'nZa7gestPmKUWg6q' \
    > test.out 2>&1
eval_tap $? 222 'AnonymizeCampaign' test.out

#- 223 AnonymizeEntitlement
samples/cli/sample-apps Platform anonymizeEntitlement \
    --namespace $AB_NAMESPACE \
    --userId '60ScxICfdpv8ajkT' \
    > test.out 2>&1
eval_tap $? 223 'AnonymizeEntitlement' test.out

#- 224 AnonymizeFulfillment
samples/cli/sample-apps Platform anonymizeFulfillment \
    --namespace $AB_NAMESPACE \
    --userId '7FvdDCLY3n2mh7Wg' \
    > test.out 2>&1
eval_tap $? 224 'AnonymizeFulfillment' test.out

#- 225 AnonymizeIntegration
samples/cli/sample-apps Platform anonymizeIntegration \
    --namespace $AB_NAMESPACE \
    --userId 'YmhlYRRFkMoSuZc8' \
    > test.out 2>&1
eval_tap $? 225 'AnonymizeIntegration' test.out

#- 226 AnonymizeOrder
samples/cli/sample-apps Platform anonymizeOrder \
    --namespace $AB_NAMESPACE \
    --userId 'cu4t2s0gM2ITrlpG' \
    > test.out 2>&1
eval_tap $? 226 'AnonymizeOrder' test.out

#- 227 AnonymizePayment
samples/cli/sample-apps Platform anonymizePayment \
    --namespace $AB_NAMESPACE \
    --userId 'AXYkdCD6JYWOavQ2' \
    > test.out 2>&1
eval_tap $? 227 'AnonymizePayment' test.out

#- 228 AnonymizeRevocation
samples/cli/sample-apps Platform anonymizeRevocation \
    --namespace $AB_NAMESPACE \
    --userId 'qKSIYBGOAyONndMe' \
    > test.out 2>&1
eval_tap $? 228 'AnonymizeRevocation' test.out

#- 229 AnonymizeSubscription
samples/cli/sample-apps Platform anonymizeSubscription \
    --namespace $AB_NAMESPACE \
    --userId 'fOz84PQ530STQklF' \
    > test.out 2>&1
eval_tap $? 229 'AnonymizeSubscription' test.out

#- 230 AnonymizeWallet
samples/cli/sample-apps Platform anonymizeWallet \
    --namespace $AB_NAMESPACE \
    --userId 'gYGXaKDpQpLM8Y3F' \
    > test.out 2>&1
eval_tap $? 230 'AnonymizeWallet' test.out

#- 231 GetUserDLCByPlatform
samples/cli/sample-apps Platform getUserDLCByPlatform \
    --namespace $AB_NAMESPACE \
    --userId 'fcvJRfUFZ7UQ9xj2' \
    --type 'STEAM' \
    > test.out 2>&1
eval_tap $? 231 'GetUserDLCByPlatform' test.out

#- 232 GetUserDLC
samples/cli/sample-apps Platform getUserDLC \
    --namespace $AB_NAMESPACE \
    --userId 'YkAXiikWjKoyhsLa' \
    --type 'OCULUS' \
    > test.out 2>&1
eval_tap $? 232 'GetUserDLC' test.out

#- 233 QueryUserEntitlements
samples/cli/sample-apps Platform queryUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'lfDSfAR8NGRqA0hJ' \
    --activeOnly 'true' \
    --appType 'SOFTWARE' \
    --collectionId 'grMipU1mPIz51HEe' \
    --entitlementClazz 'MEDIA' \
    --entitlementName 'WS1SyChjTRaJU0do' \
    --features '["41zgP0jNAVp0sGyx", "IRoLCWmhc5eZLesO", "lkmg7zkBRHJuc52B"]' \
    --fuzzyMatchName 'true' \
    --itemId '["MQQTKura5LIl0BpE", "XPEX9ovmdg5uxe62", "n31Gx15eZQs8Mwyt"]' \
    --limit '95' \
    --offset '26' \
    --origin 'Xbox' \
    > test.out 2>&1
eval_tap $? 233 'QueryUserEntitlements' test.out

#- 234 GrantUserEntitlement
samples/cli/sample-apps Platform grantUserEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'fYh1kNzvlG5S7mdi' \
    --body '[{"collectionId": "aehU7QkwPWBmEEYd", "endDate": "1978-03-30T00:00:00Z", "grantedCode": "hlkdfshmzLgIn7wl", "itemId": "rlEN6iBSPs9Ojm9K", "itemNamespace": "WccXfCIDyNOeDInI", "language": "RT_288", "origin": "Twitch", "quantity": 40, "region": "bFLeWx62Z61HbHfn", "source": "PROMOTION", "startDate": "1982-09-09T00:00:00Z", "storeId": "JXyEag0fDujjJuGH"}, {"collectionId": "aAuAxglmSiCJN7J1", "endDate": "1996-05-07T00:00:00Z", "grantedCode": "gcAV1KAfnGWiBSzN", "itemId": "2DHHXNYQ1n8zv1P6", "itemNamespace": "C2EoYlhwhruHH5oA", "language": "FA_VIky_yj", "origin": "Playstation", "quantity": 22, "region": "1YfRSzIrqHQ6KskR", "source": "OTHER", "startDate": "1983-04-29T00:00:00Z", "storeId": "g4JMagP8BsBSNhbG"}, {"collectionId": "YFwMBErGetpJfvJd", "endDate": "1994-08-25T00:00:00Z", "grantedCode": "C0hyW465yGOcWxFd", "itemId": "gxZUqljelEwOyjEF", "itemNamespace": "boyLL7FXZ2uKxqyQ", "language": "DFaS_uUOZ-769", "origin": "IOS", "quantity": 45, "region": "uhZ8Cl1eUv2WrjAt", "source": "IAP", "startDate": "1991-10-09T00:00:00Z", "storeId": "NbTjWzqbXKUbShnX"}]' \
    > test.out 2>&1
eval_tap $? 234 'GrantUserEntitlement' test.out

#- 235 GetUserAppEntitlementByAppId
samples/cli/sample-apps Platform getUserAppEntitlementByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'claxO9zq0VPw3xJ9' \
    --activeOnly 'true' \
    --appId 'lbaDPf7UR1B3bFns' \
    > test.out 2>&1
eval_tap $? 235 'GetUserAppEntitlementByAppId' test.out

#- 236 QueryUserEntitlementsByAppType
samples/cli/sample-apps Platform queryUserEntitlementsByAppType \
    --namespace $AB_NAMESPACE \
    --userId '3Y57CuKvHbzyiLnI' \
    --activeOnly 'true' \
    --limit '51' \
    --offset '51' \
    --appType 'SOFTWARE' \
    > test.out 2>&1
eval_tap $? 236 'QueryUserEntitlementsByAppType' test.out

#- 237 GetUserEntitlementByItemId
samples/cli/sample-apps Platform getUserEntitlementByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'cde7QSJk1pYzeado' \
    --activeOnly 'false' \
    --entitlementClazz 'ENTITLEMENT' \
    --platform 'qB5QTT8URy2pGUTe' \
    --itemId 'Uyu2XUbd1kCBOqB9' \
    > test.out 2>&1
eval_tap $? 237 'GetUserEntitlementByItemId' test.out

#- 238 GetUserActiveEntitlementsByItemIds
samples/cli/sample-apps Platform getUserActiveEntitlementsByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'ORsen3LDAhWliJxL' \
    --ids '["KNSUqKjhiRcOe2fi", "RW4UDmBIZjadMPt8", "a8mYlvnW3gSqcBa9"]' \
    --platform 'pnpWqvlpEtmDtvBN' \
    > test.out 2>&1
eval_tap $? 238 'GetUserActiveEntitlementsByItemIds' test.out

#- 239 GetUserEntitlementBySku
samples/cli/sample-apps Platform getUserEntitlementBySku \
    --namespace $AB_NAMESPACE \
    --userId 'gZJHbRC2XjTi4nQm' \
    --activeOnly 'true' \
    --entitlementClazz 'APP' \
    --platform 'bdKHZRlA5jboF8ZP' \
    --sku 'ancB1PoLkK8lVrp1' \
    > test.out 2>&1
eval_tap $? 239 'GetUserEntitlementBySku' test.out

#- 240 ExistsAnyUserActiveEntitlement
samples/cli/sample-apps Platform existsAnyUserActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'YcICdNh3DhbIUbTG' \
    --appIds '["HdGh28c3krmH7R9f", "ouKpYkvElprUxBuB", "ttif4Xoge1UuftYF"]' \
    --itemIds '["sdOYmeFMTrzCjaum", "MgFk6tXDnTJmB13y", "TvBMFKiQXCFwAqht"]' \
    --platform '3vNjUGl29BH8jP6Y' \
    --skus '["DIGXvPhu6jhWrPyj", "MrbhLuyV1fY79GLB", "3okXLKWjp9P6mklY"]' \
    > test.out 2>&1
eval_tap $? 240 'ExistsAnyUserActiveEntitlement' test.out

#- 241 ExistsAnyUserActiveEntitlementByItemIds
samples/cli/sample-apps Platform existsAnyUserActiveEntitlementByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'rsgEQIYCUjKE8xUz' \
    --platform 'Rht70iZfooz00ial' \
    --itemIds '["Zhw6e2bl8jN7sfdI", "E4mfO94UWdMlhQlo", "p8wxMTyjnWzRzRpu"]' \
    > test.out 2>&1
eval_tap $? 241 'ExistsAnyUserActiveEntitlementByItemIds' test.out

#- 242 GetUserAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform getUserAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'JrtE7USXMcqQ27Fz' \
    --appId 'ejSy68fZtZ89xyr9' \
    > test.out 2>&1
eval_tap $? 242 'GetUserAppEntitlementOwnershipByAppId' test.out

#- 243 GetUserEntitlementOwnershipByItemId
samples/cli/sample-apps Platform getUserEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --userId '9V3MOHJ4YivPEcqO' \
    --entitlementClazz 'CODE' \
    --platform 'rItdi4tsw3KcQMRp' \
    --itemId '6dbywQAJLtivZeyD' \
    > test.out 2>&1
eval_tap $? 243 'GetUserEntitlementOwnershipByItemId' test.out

#- 244 GetUserEntitlementOwnershipByItemIds
samples/cli/sample-apps Platform getUserEntitlementOwnershipByItemIds \
    --namespace $AB_NAMESPACE \
    --userId '5Qy1nu635LR8hicX' \
    --ids '["CazYtCkhUL0TrHxa", "gB14S5gw3fJ8McP0", "b96yl3pIREVWDOGg"]' \
    --platform 'LWsjlmdYjXTrBgsp' \
    > test.out 2>&1
eval_tap $? 244 'GetUserEntitlementOwnershipByItemIds' test.out

#- 245 GetUserEntitlementOwnershipBySku
samples/cli/sample-apps Platform getUserEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --userId 'jJzppNxrONZsuGpU' \
    --entitlementClazz 'MEDIA' \
    --platform 'oqfeWABOHexyHgEv' \
    --sku 'V0CY14CrkR7tYuCX' \
    > test.out 2>&1
eval_tap $? 245 'GetUserEntitlementOwnershipBySku' test.out

#- 246 RevokeAllEntitlements
samples/cli/sample-apps Platform revokeAllEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'DhXZcPi71LXnYa2F' \
    > test.out 2>&1
eval_tap $? 246 'RevokeAllEntitlements' test.out

#- 247 RevokeUserEntitlements
samples/cli/sample-apps Platform revokeUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'Dwd8VP4XQfgwhOPe' \
    --entitlementIds 'KTheZxVmIktmr4qW' \
    > test.out 2>&1
eval_tap $? 247 'RevokeUserEntitlements' test.out

#- 248 GetUserEntitlement
samples/cli/sample-apps Platform getUserEntitlement \
    --entitlementId '8XgYSsdt402mcgJ5' \
    --namespace $AB_NAMESPACE \
    --userId 'bKxhkqv1u1FAtOoH' \
    > test.out 2>&1
eval_tap $? 248 'GetUserEntitlement' test.out

#- 249 UpdateUserEntitlement
samples/cli/sample-apps Platform updateUserEntitlement \
    --entitlementId 'l9ZVUhPaaxBRUYkh' \
    --namespace $AB_NAMESPACE \
    --userId 'CCbmE2X3vy3T5b1B' \
    --body '{"collectionId": "O4SD1Xyha5UtH1yn", "endDate": "1996-10-28T00:00:00Z", "nullFieldList": ["LMHlyaLGNdUBo8qH", "gP9QaJpWdRUrbtca", "ZFU3XL38YlJsCRZC"], "origin": "IOS", "reason": "zjE9uPUEUz25RQJx", "startDate": "1978-06-21T00:00:00Z", "status": "REVOKED", "useCount": 59}' \
    > test.out 2>&1
eval_tap $? 249 'UpdateUserEntitlement' test.out

#- 250 ConsumeUserEntitlement
samples/cli/sample-apps Platform consumeUserEntitlement \
    --entitlementId '1E3OewVqRpPH6cRI' \
    --namespace $AB_NAMESPACE \
    --userId 'hcRSm42iTcrJB6RQ' \
    --body '{"options": ["0Ri5nC9OVTTP6UvJ", "eAIyV3fvgmjEqkox", "ppyrzvvib2RqTAcL"], "platform": "JMP0zhkXekBGJEpJ", "requestId": "WCWmzuyheOJIr3Wb", "useCount": 45}' \
    > test.out 2>&1
eval_tap $? 250 'ConsumeUserEntitlement' test.out

#- 251 DisableUserEntitlement
samples/cli/sample-apps Platform disableUserEntitlement \
    --entitlementId 'naK2CxbgzMaJVf9X' \
    --namespace $AB_NAMESPACE \
    --userId 'qftUZgqzGuMOPxCn' \
    > test.out 2>&1
eval_tap $? 251 'DisableUserEntitlement' test.out

#- 252 EnableUserEntitlement
samples/cli/sample-apps Platform enableUserEntitlement \
    --entitlementId 'lH2Vvf47g4rEF1QR' \
    --namespace $AB_NAMESPACE \
    --userId 'hBYvdehGTTobYM5B' \
    > test.out 2>&1
eval_tap $? 252 'EnableUserEntitlement' test.out

#- 253 GetUserEntitlementHistories
samples/cli/sample-apps Platform getUserEntitlementHistories \
    --entitlementId 'MHNK9qEvrlSIH1MS' \
    --namespace $AB_NAMESPACE \
    --userId 'LBUgArx3YnaWee7q' \
    > test.out 2>&1
eval_tap $? 253 'GetUserEntitlementHistories' test.out

#- 254 RevokeUserEntitlement
samples/cli/sample-apps Platform revokeUserEntitlement \
    --entitlementId 'mlTUOMsAXb1v3iJi' \
    --namespace $AB_NAMESPACE \
    --userId 'mgxIWnJRqTHXl7sh' \
    > test.out 2>&1
eval_tap $? 254 'RevokeUserEntitlement' test.out

#- 255 RevokeUserEntitlementByUseCount
samples/cli/sample-apps Platform revokeUserEntitlementByUseCount \
    --entitlementId 'djT3HDy0VZuA8z2F' \
    --namespace $AB_NAMESPACE \
    --userId 'fOSDA4ulJw4JTUx1' \
    --body '{"reason": "gS0n4dadKGm9NSGw", "useCount": 88}' \
    > test.out 2>&1
eval_tap $? 255 'RevokeUserEntitlementByUseCount' test.out

#- 256 PreCheckRevokeUserEntitlementByUseCount
samples/cli/sample-apps Platform preCheckRevokeUserEntitlementByUseCount \
    --entitlementId 'bMeg3abyQvSpGnB5' \
    --namespace $AB_NAMESPACE \
    --userId '6podErkoMXM52BKn' \
    --quantity '29' \
    > test.out 2>&1
eval_tap $? 256 'PreCheckRevokeUserEntitlementByUseCount' test.out

#- 257 RevokeUseCount
eval_tap 0 257 'RevokeUseCount # SKIP deprecated' test.out

#- 258 SellUserEntitlement
samples/cli/sample-apps Platform sellUserEntitlement \
    --entitlementId 'nLeuL9Rg4hEi4shU' \
    --namespace $AB_NAMESPACE \
    --userId '6PUB48URRnqANU33' \
    --body '{"platform": "3HnmHTJwmzUztuVb", "requestId": "Wb1bR5Pa087Vqjdn", "useCount": 22}' \
    > test.out 2>&1
eval_tap $? 258 'SellUserEntitlement' test.out

#- 259 FulfillItem
samples/cli/sample-apps Platform fulfillItem \
    --namespace $AB_NAMESPACE \
    --userId 'Ms2RpPsFG68VHWzH' \
    --body '{"duration": 75, "endDate": "1986-01-02T00:00:00Z", "entitlementCollectionId": "YhI3pgZou3WZM4cR", "entitlementOrigin": "System", "itemId": "Vlug1Q0M7gCsr4aq", "itemSku": "PWpfjndAsg9YulB5", "language": "rXnTD9fByYvtQhme", "metadata": {"YFgB9Ds0etM88F3x": {}, "b8QulvOcWVr20qsA": {}, "eTImyEbQCEpSfIhr": {}}, "order": {"currency": {"currencyCode": "vHILTOnPwXUQHqe8", "currencySymbol": "wETrVG5bjXqPix51", "currencyType": "REAL", "decimals": 95, "namespace": "uhumJ8A141fADuzG"}, "ext": {"FdiRWV9a6M9TLMkA": {}, "CztTsk4ocXNGqSMA": {}, "OHh637VMD5HlT6zZ": {}}, "free": true}, "orderNo": "J0GakrufLUHUZrqs", "origin": "Xbox", "overrideBundleItemQty": {"FAyEsCEGG1RViVTm": 37, "RC82FffIrNp7g6gd": 85, "rCsomkdnR2w6hfWu": 11}, "quantity": 80, "region": "xWsUrb7zkQCJRGbG", "source": "REWARD", "startDate": "1988-07-19T00:00:00Z", "storeId": "Y0wWm452cId0R4M8"}' \
    > test.out 2>&1
eval_tap $? 259 'FulfillItem' test.out

#- 260 RedeemCode
samples/cli/sample-apps Platform redeemCode \
    --namespace $AB_NAMESPACE \
    --userId 't3vvCC1ruadlo1Ef' \
    --body '{"code": "y9VemnkymR3Hl1cb", "language": "vA-qu", "region": "4GDLd7EzIpKCsA6Y"}' \
    > test.out 2>&1
eval_tap $? 260 'RedeemCode' test.out

#- 261 PreCheckFulfillItem
samples/cli/sample-apps Platform preCheckFulfillItem \
    --namespace $AB_NAMESPACE \
    --userId '5PKAF793G53Pmexq' \
    --body '{"itemId": "cbQ7w7DjKNfsKB9f", "itemSku": "Z0WS62mxJo1TFeaD", "quantity": 69}' \
    > test.out 2>&1
eval_tap $? 261 'PreCheckFulfillItem' test.out

#- 262 FulfillRewards
samples/cli/sample-apps Platform fulfillRewards \
    --namespace $AB_NAMESPACE \
    --userId 'IPh3Ha1ebvCHJtgX' \
    --body '{"entitlementCollectionId": "JHnIs9H63HxzmZaO", "entitlementOrigin": "Playstation", "metadata": {"peavX1eTgjSwfnl5": {}, "B39JtRK6nJXEL8hk": {}, "39fBmrT3iMXeaDSl": {}}, "origin": "Other", "rewards": [{"currency": {"currencyCode": "po1eQ4p4AEaOgHT9", "namespace": "MEabyfss6cNeY8iy"}, "item": {"itemId": "t3cVBmm9O0qiDdiu", "itemSku": "rKG6oM37BLskqH6H", "itemType": "tmHmo9OhdzUGALY3"}, "quantity": 94, "type": "ITEM"}, {"currency": {"currencyCode": "AluEC1Esi2zJExzu", "namespace": "33Y4zjnAwh9gD5hp"}, "item": {"itemId": "ZkOUpp3K67F0DQch", "itemSku": "XboASK0y7VZyg7EG", "itemType": "RJYkMJH7BJR5T4Dk"}, "quantity": 66, "type": "ITEM"}, {"currency": {"currencyCode": "Z56f7VqbY6xuakjL", "namespace": "ZSyWVntnqZvZu3el"}, "item": {"itemId": "6RGxfTSLigIeO9RN", "itemSku": "F6CMWPJGnpqa6PuL", "itemType": "WfTHBD4B3maZs5QK"}, "quantity": 8, "type": "ITEM"}], "source": "PAYMENT", "transactionId": "7ppZRt3NxMOp9NHx"}' \
    > test.out 2>&1
eval_tap $? 262 'FulfillRewards' test.out

#- 263 QueryUserIAPOrders
samples/cli/sample-apps Platform queryUserIAPOrders \
    --namespace $AB_NAMESPACE \
    --userId 'Za1pZlGSHOFVmDac' \
    --endTime 'Ts8l6yzGVO0Vrico' \
    --limit '14' \
    --offset '93' \
    --productId 'KBjYLTkJ2UGRWNDM' \
    --startTime 'Eo39kI27e5fzLxIY' \
    --status 'FAILED' \
    --type 'GOOGLE' \
    > test.out 2>&1
eval_tap $? 263 'QueryUserIAPOrders' test.out

#- 264 QueryAllUserIAPOrders
samples/cli/sample-apps Platform queryAllUserIAPOrders \
    --namespace $AB_NAMESPACE \
    --userId 'mPyMXLd9y6pef3dL' \
    > test.out 2>&1
eval_tap $? 264 'QueryAllUserIAPOrders' test.out

#- 265 QueryUserIAPConsumeHistory
samples/cli/sample-apps Platform queryUserIAPConsumeHistory \
    --namespace $AB_NAMESPACE \
    --userId 'QQgUCLnW9zWDujn5' \
    --endTime 'c2UwINB7ytV7HkI7' \
    --limit '35' \
    --offset '35' \
    --startTime 'sJfdUi3YFcDLIJ0y' \
    --status 'PENDING' \
    --type 'TWITCH' \
    > test.out 2>&1
eval_tap $? 265 'QueryUserIAPConsumeHistory' test.out

#- 266 MockFulfillIAPItem
samples/cli/sample-apps Platform mockFulfillIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'jV02RVZDXhArUogn' \
    --body '{"itemIdentityType": "ITEM_SKU", "language": "ZUe_by", "productId": "eaTQBj3wh8CuUjF8", "region": "QxRiANlqncEv3Uee", "transactionId": "JpTuc0hPebBALUxy", "type": "STEAM"}' \
    > test.out 2>&1
eval_tap $? 266 'MockFulfillIAPItem' test.out

#- 267 QueryUserOrders
samples/cli/sample-apps Platform queryUserOrders \
    --namespace $AB_NAMESPACE \
    --userId 'jjn8k7ZJsPMsua5j' \
    --itemId 'MgG3tQeyEif2dWkR' \
    --limit '62' \
    --offset '6' \
    --status 'DELETED' \
    > test.out 2>&1
eval_tap $? 267 'QueryUserOrders' test.out

#- 268 AdminCreateUserOrder
samples/cli/sample-apps Platform adminCreateUserOrder \
    --namespace $AB_NAMESPACE \
    --userId 'gFc7k32OK3RrB9Po' \
    --body '{"currencyCode": "ncWzINAaI70SoEJq", "currencyNamespace": "oeY6OVavZ0awIXoR", "discountedPrice": 0, "entitlementPlatform": "Nintendo", "ext": {"E7SMV8RHC6CIQLah": {}, "2RMs6ZjD3cyfWssX": {}, "K1l0mCwNiwzpDp6b": {}}, "itemId": "fgqvXc12djazABJG", "language": "e8ivWBA9DLjfwUA6", "options": {"skipPriceValidation": true}, "platform": "Nintendo", "price": 47, "quantity": 46, "region": "y3G77woRJMNh5Rbz", "returnUrl": "7YCmTaZsrSDkSh1d", "sandbox": true, "sectionId": "lf1FEY809useeidF"}' \
    > test.out 2>&1
eval_tap $? 268 'AdminCreateUserOrder' test.out

#- 269 CountOfPurchasedItem
samples/cli/sample-apps Platform countOfPurchasedItem \
    --namespace $AB_NAMESPACE \
    --userId 'PrSL7fV3BUCrqSVs' \
    --itemId 'LspBxoGKVDuwQke0' \
    > test.out 2>&1
eval_tap $? 269 'CountOfPurchasedItem' test.out

#- 270 GetUserOrder
samples/cli/sample-apps Platform getUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'bLNeWmdoZGESzLjV' \
    --userId '4ex4o42WyLucIoJ1' \
    > test.out 2>&1
eval_tap $? 270 'GetUserOrder' test.out

#- 271 UpdateUserOrderStatus
samples/cli/sample-apps Platform updateUserOrderStatus \
    --namespace $AB_NAMESPACE \
    --orderNo 'glX3JuXimt0Bf53H' \
    --userId '4e769xy7fpqrPXes' \
    --body '{"status": "FULFILL_FAILED", "statusReason": "zLhDXrBLSPRPEq2l"}' \
    > test.out 2>&1
eval_tap $? 271 'UpdateUserOrderStatus' test.out

#- 272 FulfillUserOrder
samples/cli/sample-apps Platform fulfillUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo '7XihJ91qih2qYgcM' \
    --userId 'mqoVOggq7HzwpTtN' \
    > test.out 2>&1
eval_tap $? 272 'FulfillUserOrder' test.out

#- 273 GetUserOrderGrant
samples/cli/sample-apps Platform getUserOrderGrant \
    --namespace $AB_NAMESPACE \
    --orderNo 'Pu1P6jIsBK7FXijz' \
    --userId 'rNH0f1hKSdJ19D3G' \
    > test.out 2>&1
eval_tap $? 273 'GetUserOrderGrant' test.out

#- 274 GetUserOrderHistories
samples/cli/sample-apps Platform getUserOrderHistories \
    --namespace $AB_NAMESPACE \
    --orderNo '3B0XeCCY6JAKkdgU' \
    --userId 'wCsatGJWWdBX5OZw' \
    > test.out 2>&1
eval_tap $? 274 'GetUserOrderHistories' test.out

#- 275 ProcessUserOrderNotification
samples/cli/sample-apps Platform processUserOrderNotification \
    --namespace $AB_NAMESPACE \
    --orderNo '2KYlruLTG4JC4WIu' \
    --userId 'yaXPgQ8lqjUzp3OD' \
    --body '{"additionalData": {"cardSummary": "FoQ6iXHGycqS6Cyr"}, "authorisedTime": "1990-03-04T00:00:00Z", "chargebackReversedTime": "1992-11-12T00:00:00Z", "chargebackTime": "1973-11-01T00:00:00Z", "chargedTime": "1992-08-31T00:00:00Z", "createdTime": "1984-10-23T00:00:00Z", "currency": {"currencyCode": "B3qgyQvKZJWg0wj6", "currencySymbol": "BoBOe4IKG9YYifGh", "currencyType": "REAL", "decimals": 44, "namespace": "N78RZRCZkKMz6sDO"}, "customParameters": {"tWaqgFgOEPYWoofv": {}, "44CXMH2Xc2Bgss51": {}, "5kAz6FY4FRnPQiUZ": {}}, "extOrderNo": "d8mSuQzKLXI6qIti", "extTxId": "GGgYu4nGh6dyJhtR", "extUserId": "cYfaPLAvsbDOs0om", "issuedAt": "1999-03-03T00:00:00Z", "metadata": {"T4Z4OSksCHIU7qcT": "IUhOO3LTpECq8iyj", "VK6wpdn8odJcH1v5": "iiILkzx5767MeQXw", "BpMCWuKbdNs6p8eS": "1YRZQWGAo8Fnn4bV"}, "namespace": "dt6EHMaErk5lLSm4", "nonceStr": "pKuFxew1N5AlMUO9", "paymentMethod": "IFCSKHUd9rebIOgL", "paymentMethodFee": 0, "paymentOrderNo": "PuJt7oqf7HMA4iuz", "paymentProvider": "XSOLLA", "paymentProviderFee": 3, "paymentStationUrl": "8CiPMTFZpw8tdblU", "price": 41, "refundedTime": "1974-07-01T00:00:00Z", "salesTax": 83, "sandbox": true, "sku": "cp8m1fPIrPWygSLT", "status": "CHARGEBACK_REVERSED", "statusReason": "hYXGKm2Vsce058Ot", "subscriptionId": "AKwF8ZAyxXuaWkdK", "subtotalPrice": 13, "targetNamespace": "iwk4izPeVaxJHck3", "targetUserId": "BX5bU1UdRiyR6FUj", "tax": 56, "totalPrice": 43, "totalTax": 77, "txEndTime": "1998-06-08T00:00:00Z", "type": "RFidTmW6KC0uttuX", "userId": "FgMkRonGQnjzJ9on", "vat": 87}' \
    > test.out 2>&1
eval_tap $? 275 'ProcessUserOrderNotification' test.out

#- 276 DownloadUserOrderReceipt
samples/cli/sample-apps Platform downloadUserOrderReceipt \
    --namespace $AB_NAMESPACE \
    --orderNo 'Djm6QoVA6meSxU2L' \
    --userId 'BA41jsaM2iswAkOa' \
    > test.out 2>&1
eval_tap $? 276 'DownloadUserOrderReceipt' test.out

#- 277 CreateUserPaymentOrder
samples/cli/sample-apps Platform createUserPaymentOrder \
    --namespace $AB_NAMESPACE \
    --userId 'KXk82aiSJV0zYsBN' \
    --body '{"currencyCode": "mb5eYLo9nLLi28os", "currencyNamespace": "twar1EN6ujnr9dVn", "customParameters": {"geih27FMOGoTA0xv": {}, "bvR2mSrTfnskIvus": {}, "GOTv8VSq8I5f8uBo": {}}, "description": "mhxfFg9qCv66wN2V", "extOrderNo": "EYkPBRT0oPMu4aR4", "extUserId": "So7RQzPMucuM5aR8", "itemType": "BUNDLE", "language": "fyHy", "metadata": {"6r0LpTLT06uCjsRq": "ozsAFGKTZ7UETLJu", "Xoh34ZsMDP5Xz8os": "3vF5Rbm6wVsGS673", "JAeeeERdyZuT3orc": "HkBeksbFNKO4u0ei"}, "notifyUrl": "GyRucAg4I6hBo9Dn", "omitNotification": true, "platform": "mi8RKT1RQJCgngHw", "price": 31, "recurringPaymentOrderNo": "DQaqNATMEWNzo98w", "region": "3mBz580Mn2xvpeaW", "returnUrl": "hywusItAHEbR3MeT", "sandbox": false, "sku": "UIo9HECJVjvcVI1Q", "subscriptionId": "b0nDLzhnAyJFfVaE", "title": "YRdq39M8OFLwwDRp"}' \
    > test.out 2>&1
eval_tap $? 277 'CreateUserPaymentOrder' test.out

#- 278 RefundUserPaymentOrder
samples/cli/sample-apps Platform refundUserPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'R5MKAVIjcUTafsWc' \
    --userId '6DR4uONihzuVfLkx' \
    --body '{"description": "nBiOmuICbVfKhePv"}' \
    > test.out 2>&1
eval_tap $? 278 'RefundUserPaymentOrder' test.out

#- 279 ApplyUserRedemption
samples/cli/sample-apps Platform applyUserRedemption \
    --namespace $AB_NAMESPACE \
    --userId 'PINLVHm6mJUsN0Vb' \
    --body '{"code": "0r5DkcDae0UvUxtQ", "orderNo": "8mSyBZ0DQOHg6eIF"}' \
    > test.out 2>&1
eval_tap $? 279 'ApplyUserRedemption' test.out

#- 280 DoRevocation
samples/cli/sample-apps Platform doRevocation \
    --namespace $AB_NAMESPACE \
    --userId 'mJJUFsrFaUO99LOY' \
    --body '{"meta": {"YezxNE7kAifZucMz": {}, "AJpZoFy80C9Sq9Ne": {}, "mIIStTaF7LgOGVdT": {}}, "revokeEntries": [{"currency": {"balanceOrigin": "System", "currencyCode": "KLZGz73a996w6v6U", "namespace": "RwzS2xb4lNHXiWHi"}, "entitlement": {"entitlementId": "fUwNqnIQZHKXo9T0"}, "item": {"entitlementOrigin": "Other", "itemIdentity": "m2c0m72rnwJJnsG3", "itemIdentityType": "ITEM_ID", "origin": "Other"}, "quantity": 8, "type": "ENTITLEMENT"}, {"currency": {"balanceOrigin": "Playstation", "currencyCode": "zuPRqzR0ERAoTXLf", "namespace": "2KmNtBUhqYOk0hNJ"}, "entitlement": {"entitlementId": "cVgtX6RQFgs1wMnS"}, "item": {"entitlementOrigin": "IOS", "itemIdentity": "jHsJznnpLLbIYooT", "itemIdentityType": "ITEM_ID", "origin": "Oculus"}, "quantity": 23, "type": "ITEM"}, {"currency": {"balanceOrigin": "Epic", "currencyCode": "wdjMnmKvipQqtbrq", "namespace": "8Hj2raxqQu8zbqtt"}, "entitlement": {"entitlementId": "l8bL13IqJUxdcy8a"}, "item": {"entitlementOrigin": "Other", "itemIdentity": "wZiBF1ZJVHCg1dQS", "itemIdentityType": "ITEM_ID", "origin": "Other"}, "quantity": 19, "type": "ITEM"}], "source": "IAP", "transactionId": "6doVVCnJHUkvk4bj"}' \
    > test.out 2>&1
eval_tap $? 280 'DoRevocation' test.out

#- 281 RegisterXblSessions
samples/cli/sample-apps Platform registerXblSessions \
    --namespace $AB_NAMESPACE \
    --userId 'HYHlFU3LeWbEDJ6J' \
    --body '{"gameSessionId": "JPVj9vmbsY1ZHIHH", "payload": {"QaEMJHYGi0GxnbUx": {}, "FiqqBAAqr3ppNlum": {}, "gmphEJjBbTMj20DW": {}}, "scid": "WJMypbn0Yhjw3hpt", "sessionTemplateName": "gNxsOuiouxNnec9v"}' \
    > test.out 2>&1
eval_tap $? 281 'RegisterXblSessions' test.out

#- 282 QueryUserSubscriptions
samples/cli/sample-apps Platform queryUserSubscriptions \
    --namespace $AB_NAMESPACE \
    --userId 'APyYFfqG2Gj8l4gs' \
    --chargeStatus 'CHARGED' \
    --itemId 'grH1ozsISAlkJ8ZO' \
    --limit '25' \
    --offset '55' \
    --sku '76NFdcXqexz0US4O' \
    --status 'INIT' \
    --subscribedBy 'USER' \
    > test.out 2>&1
eval_tap $? 282 'QueryUserSubscriptions' test.out

#- 283 GetUserSubscriptionActivities
samples/cli/sample-apps Platform getUserSubscriptionActivities \
    --namespace $AB_NAMESPACE \
    --userId 'IbNP2gRmWFk8cEia' \
    --excludeSystem 'true' \
    --limit '80' \
    --offset '97' \
    --subscriptionId '6XrlrQWWjtXlgONa' \
    > test.out 2>&1
eval_tap $? 283 'GetUserSubscriptionActivities' test.out

#- 284 PlatformSubscribeSubscription
samples/cli/sample-apps Platform platformSubscribeSubscription \
    --namespace $AB_NAMESPACE \
    --userId 'zDguQ7I1KyjgOguw' \
    --body '{"grantDays": 24, "itemId": "IxctWjoA9tjeOwxS", "language": "oJKQx8i3TL3Hxvb9", "reason": "giI1R8yZfrUY8jyu", "region": "SwCRJ9KCpf2FhvPz", "source": "1OBjRZHneQGVmWHB"}' \
    > test.out 2>&1
eval_tap $? 284 'PlatformSubscribeSubscription' test.out

#- 285 CheckUserSubscriptionSubscribableByItemId
samples/cli/sample-apps Platform checkUserSubscriptionSubscribableByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'JXJFrRy4Nh06SQOz' \
    --itemId 'aVACPVCw7uxZh6sI' \
    > test.out 2>&1
eval_tap $? 285 'CheckUserSubscriptionSubscribableByItemId' test.out

#- 286 GetUserSubscription
samples/cli/sample-apps Platform getUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'vxycOIUI56uQKOeq' \
    --userId 'MTEFFzv8Gjxc3vn0' \
    > test.out 2>&1
eval_tap $? 286 'GetUserSubscription' test.out

#- 287 DeleteUserSubscription
samples/cli/sample-apps Platform deleteUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'nCP9v0HvjUkmP0sJ' \
    --userId 'WjAbubfscr22rs6R' \
    > test.out 2>&1
eval_tap $? 287 'DeleteUserSubscription' test.out

#- 288 CancelSubscription
samples/cli/sample-apps Platform cancelSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'WjGjvChe2lS2eJWe' \
    --userId 'HEQO08CTGY70WENW' \
    --force 'true' \
    --body '{"immediate": true, "reason": "Z3SHf9tUiLxZ7EbS"}' \
    > test.out 2>&1
eval_tap $? 288 'CancelSubscription' test.out

#- 289 GrantDaysToSubscription
samples/cli/sample-apps Platform grantDaysToSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'hDlbu85dU3kqTofN' \
    --userId 'ntuxFO1TytJLWzOa' \
    --body '{"grantDays": 71, "reason": "QRinL9IgJzHU7x4O"}' \
    > test.out 2>&1
eval_tap $? 289 'GrantDaysToSubscription' test.out

#- 290 GetUserSubscriptionBillingHistories
samples/cli/sample-apps Platform getUserSubscriptionBillingHistories \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'WLllQX2EDUXPt0Oa' \
    --userId 'Xmnn5bFWupBWPsTj' \
    --excludeFree 'false' \
    --limit '41' \
    --offset '63' \
    > test.out 2>&1
eval_tap $? 290 'GetUserSubscriptionBillingHistories' test.out

#- 291 ProcessUserSubscriptionNotification
samples/cli/sample-apps Platform processUserSubscriptionNotification \
    --namespace $AB_NAMESPACE \
    --subscriptionId '7fxtEdbCFK0A602C' \
    --userId 'gLin2jSPlHaT0L4V' \
    --body '{"additionalData": {"cardSummary": "08PJcCKmxyH26Vto"}, "authorisedTime": "1986-10-28T00:00:00Z", "chargebackReversedTime": "1981-03-15T00:00:00Z", "chargebackTime": "1995-03-19T00:00:00Z", "chargedTime": "1994-10-01T00:00:00Z", "createdTime": "1996-03-26T00:00:00Z", "currency": {"currencyCode": "gKRTPl9vFx6Tdebg", "currencySymbol": "BnF9wk8aknTxQupd", "currencyType": "VIRTUAL", "decimals": 16, "namespace": "iTRdFb8VDvpCzzmc"}, "customParameters": {"nxgJ3RwY2h2z4t1S": {}, "bqn1KIUk5e7Sekfs": {}, "4oqmAwXM1YsJFtLO": {}}, "extOrderNo": "3B7ZEM7WTTcBel1l", "extTxId": "X0nBoNugVPwEnjVB", "extUserId": "W8TEVhQu03XG6y9Z", "issuedAt": "1978-03-31T00:00:00Z", "metadata": {"GlPavA0tMiCPl0fd": "Vcao6VltqOG7VwD5", "JpyGqE1tNBEQZs3q": "PKZV9C5848OfarOs", "dYD8g3S0jkabJcNp": "h0NAZM5E0oPHRoEJ"}, "namespace": "69ztWwIyV8FTIeKe", "nonceStr": "fjPAktzMmqkjAyW9", "paymentMethod": "50hOajsAvKyxD6kh", "paymentMethodFee": 64, "paymentOrderNo": "RVXoGY1koqSKxw2f", "paymentProvider": "CHECKOUT", "paymentProviderFee": 39, "paymentStationUrl": "uURnt4v1Sex5Vj8O", "price": 64, "refundedTime": "1990-04-12T00:00:00Z", "salesTax": 26, "sandbox": false, "sku": "u3pWVNiwuIkmuzFn", "status": "REQUEST_FOR_INFORMATION", "statusReason": "4cnHXEVgAZXt0sBS", "subscriptionId": "4vVY3atKiU5FyzAE", "subtotalPrice": 99, "targetNamespace": "OCN0t3iITOwo2nJs", "targetUserId": "eDoISjYCckuAN4JP", "tax": 72, "totalPrice": 81, "totalTax": 60, "txEndTime": "1993-11-04T00:00:00Z", "type": "3YkOihu0KMUuPbLY", "userId": "vxTz1PbgQuiRxdHv", "vat": 80}' \
    > test.out 2>&1
eval_tap $? 291 'ProcessUserSubscriptionNotification' test.out

#- 292 AcquireUserTicket
samples/cli/sample-apps Platform acquireUserTicket \
    --boothName 'yxvuRp4cURpi3TRt' \
    --namespace $AB_NAMESPACE \
    --userId '4HmqJTpqjd5xkA6N' \
    --body '{"count": 50, "orderNo": "PZOtiA6JurJnRb8r"}' \
    > test.out 2>&1
eval_tap $? 292 'AcquireUserTicket' test.out

#- 293 QueryUserCurrencyWallets
samples/cli/sample-apps Platform queryUserCurrencyWallets \
    --namespace $AB_NAMESPACE \
    --userId 'hrOMwrt40yQW07p7' \
    > test.out 2>&1
eval_tap $? 293 'QueryUserCurrencyWallets' test.out

#- 294 DebitUserWalletByCurrencyCode
samples/cli/sample-apps Platform debitUserWalletByCurrencyCode \
    --currencyCode 'JlaAqUqKPnMwpzYO' \
    --namespace $AB_NAMESPACE \
    --userId '0eySKm5FtUkyzmh6' \
    --body '{"allowOverdraft": true, "amount": 57, "balanceOrigin": "IOS", "balanceSource": "ORDER_REVOCATION", "metadata": {"Efh57lKj2XCjbNFw": {}, "c2J2YMTAj8pVYPfG": {}, "5Z0x14V8JHUmkQtc": {}}, "reason": "VPgYFuMX78BQxGEi"}' \
    > test.out 2>&1
eval_tap $? 294 'DebitUserWalletByCurrencyCode' test.out

#- 295 ListUserCurrencyTransactions
samples/cli/sample-apps Platform listUserCurrencyTransactions \
    --currencyCode 'DpbpDwDH1i3OdBas' \
    --namespace $AB_NAMESPACE \
    --userId 'A5ZdOGKyKJ8xXNkf' \
    --limit '25' \
    --offset '94' \
    > test.out 2>&1
eval_tap $? 295 'ListUserCurrencyTransactions' test.out

#- 296 CheckBalance
samples/cli/sample-apps Platform checkBalance \
    --currencyCode 'AZwfe5HofPi5paLh' \
    --namespace $AB_NAMESPACE \
    --userId 'Oeg9xD5fxVgQLU2l' \
    --request '{"amount": 90, "debitBalanceSource": "IAP_REVOCATION", "metadata": {"7XsGeAJKMkMenjlE": {}, "8m3DbqHeWSSP9EWX": {}, "8pV8iw1H2J27J4lY": {}}, "reason": "b8hBaWV6vnBN1zB1", "walletPlatform": "IOS"}' \
    > test.out 2>&1
eval_tap $? 296 'CheckBalance' test.out

#- 297 CheckWallet
eval_tap 0 297 'CheckWallet # SKIP deprecated' test.out

#- 298 CreditUserWallet
samples/cli/sample-apps Platform creditUserWallet \
    --currencyCode '7QQFD9zF8pqXxesH' \
    --namespace $AB_NAMESPACE \
    --userId 'PK8dow7D4nNapgzO' \
    --body '{"amount": 95, "expireAt": "1993-11-07T00:00:00Z", "metadata": {"TZ10qvdoU2LuBZmU": {}, "ZU3INDc1vy9Hd69g": {}, "eUVyoaML9qDa0qCs": {}}, "origin": "IOS", "reason": "69Dgvpp6exg5FD0P", "source": "SELL_BACK"}' \
    > test.out 2>&1
eval_tap $? 298 'CreditUserWallet' test.out

#- 299 DebitByWalletPlatform
samples/cli/sample-apps Platform debitByWalletPlatform \
    --currencyCode 'c5RdGcPk1DNQsUST' \
    --namespace $AB_NAMESPACE \
    --userId 'T0yioBPzGDnZstgw' \
    --request '{"amount": 70, "debitBalanceSource": "PAYMENT", "metadata": {"CMtpuBhaqipb0kQr": {}, "U9dwTWfVDM5gQbgL": {}, "ViTWvs3lJ4bHUA7u": {}}, "reason": "LgZOWWSUQFLc6kHw", "walletPlatform": "Epic"}' \
    > test.out 2>&1
eval_tap $? 299 'DebitByWalletPlatform' test.out

#- 300 PayWithUserWallet
samples/cli/sample-apps Platform payWithUserWallet \
    --currencyCode 'Cq6RvZIybG064xu8' \
    --namespace $AB_NAMESPACE \
    --userId 'CLxKGVVJxtPpTTmi' \
    --body '{"amount": 31, "metadata": {"ec3Me9Zfludd3InR": {}, "l5c0jYEqSQIwHRHU": {}, "iOCCGjDeCMY7zhJI": {}}, "walletPlatform": "IOS"}' \
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
    --storeId 'UaJ4I1EhX3YwgqsE' \
    > test.out 2>&1
eval_tap $? 306 'ListViews' test.out

#- 307 CreateView
samples/cli/sample-apps Platform createView \
    --namespace $AB_NAMESPACE \
    --storeId 'hml3WLzo80R8zkXk' \
    --body '{"displayOrder": 15, "localizations": {"QZtSQnDVuvfsmv3x": {"description": "M8leuppsJNxAF9t7", "localExt": {"NtL99iELy6C3D5za": {}, "R0kTgT7k9FvdtRrw": {}, "sAdsXLA9IHwkQs2r": {}}, "longDescription": "VgQYdFoADMirq3fA", "title": "wrqveLOh1JWDl37k"}, "2n47GhhesE3YFBq9": {"description": "n2RNiTxujQDBJtTi", "localExt": {"s63ql9TRoNTWkadJ": {}, "qCaE881zEsgo5Pr0": {}, "YbdlLv7CRKpuOx8g": {}}, "longDescription": "yKzJp1BVX5zHldEz", "title": "zjp70W18dhPgZ07e"}, "w1h9hEIqLxx9mEYC": {"description": "94jlG9onB2297Aya", "localExt": {"4mbuffQf37YluRPX": {}, "uXCY8ipG8hgFwWQZ": {}, "ngfGvp9UtFzEyREt": {}}, "longDescription": "aMaB7ghLYjCEiZmt", "title": "fKdcV4mP8vxOEwYm"}}, "name": "v4mqJddbySopXpVL"}' \
    > test.out 2>&1
eval_tap $? 307 'CreateView' test.out

#- 308 GetView
samples/cli/sample-apps Platform getView \
    --namespace $AB_NAMESPACE \
    --viewId 'aO6Dv0eBku65Nw4v' \
    --storeId '5Db4zNDU8CIgxg4C' \
    > test.out 2>&1
eval_tap $? 308 'GetView' test.out

#- 309 UpdateView
samples/cli/sample-apps Platform updateView \
    --namespace $AB_NAMESPACE \
    --viewId 'WxxLzkSnX90tBYP6' \
    --storeId 'jLvK3YMjZN6l6ITR' \
    --body '{"displayOrder": 81, "localizations": {"ZUWyX7XeypnnR4dv": {"description": "2iyQq1fNWPRZ87xk", "localExt": {"VbnArLPQZNXXz2Uf": {}, "KfeeVabhP5y1AnRN": {}, "NRwDFE82hUp2zyfv": {}}, "longDescription": "FMSbu1txEQwZkxqI", "title": "NIQRsrUlf5qylBYf"}, "psva3vMLhjwpni7t": {"description": "F1Ehn1AlQ1zxRKPS", "localExt": {"QRqD58FZ3TfqxDtz": {}, "EMiUmAcv9VpZMEk0": {}, "SZGlOMULQezkyFew": {}}, "longDescription": "1ztU347LLIJRFb9c", "title": "sOsUfsMOAm73nAle"}, "kiuT0DMV4OXMi0aW": {"description": "A3LfrOwnNmCkEgKW", "localExt": {"56VgAKsK4ZQNsBth": {}, "QImsozffJwlwzb7r": {}, "dk1T9uhmP7KOPESV": {}}, "longDescription": "EYce3HOBOdK7Wf0e", "title": "FvMy7UPTVuvRZ3LM"}}, "name": "OROLfbYBbmR8ltpP"}' \
    > test.out 2>&1
eval_tap $? 309 'UpdateView' test.out

#- 310 DeleteView
samples/cli/sample-apps Platform deleteView \
    --namespace $AB_NAMESPACE \
    --viewId 'AMf8dEIQbSSqWWo4' \
    --storeId 'ABCNX9fpwJJka5qU' \
    > test.out 2>&1
eval_tap $? 310 'DeleteView' test.out

#- 311 QueryWallets
eval_tap 0 311 'QueryWallets # SKIP deprecated' test.out

#- 312 BulkCredit
samples/cli/sample-apps Platform bulkCredit \
    --namespace $AB_NAMESPACE \
    --body '[{"creditRequest": {"amount": 7, "expireAt": "1973-08-15T00:00:00Z", "metadata": {"I1wI2Bp6JYX9oI8l": {}, "KTq3RetCRyY9UjPA": {}, "gGzuXN5JEJyo3giK": {}}, "origin": "Oculus", "reason": "ju1vtRXma2ML1HzP", "source": "DLC"}, "currencyCode": "YNqh1YPUPjKg7ldy", "userIds": ["DmJFGSLDUq42i8eA", "1Ty9pfvfhUBpkYZ9", "EJ5QjjmDa6ifyJtr"]}, {"creditRequest": {"amount": 42, "expireAt": "1983-05-11T00:00:00Z", "metadata": {"OEJTaIObsaIliH4v": {}, "RNtdRdwMDsS94LMf": {}, "2gNlGNnfoDQpTbKr": {}}, "origin": "Oculus", "reason": "1sUvCE0rv6G753q4", "source": "PURCHASE"}, "currencyCode": "BEAzagfdw1ZAE9af", "userIds": ["mFFEqHlqYVO1rFm6", "7j2ArD9LlmTlOwW8", "ahNBvPqCm558Aqhv"]}, {"creditRequest": {"amount": 43, "expireAt": "1983-12-07T00:00:00Z", "metadata": {"YAPYkhj4cESncvEd": {}, "MnFYPfhZ60QWd3bm": {}, "DReHWQL7nEfQh7zU": {}}, "origin": "System", "reason": "5QsSSeiHJpOXx0rT", "source": "PURCHASE"}, "currencyCode": "yIkZQ6ynrVX4RM7g", "userIds": ["aic5bl2CQ1dFkor4", "WTnZ5QuoiHfsvxSx", "dVmHqvmc8g9DCogy"]}]' \
    > test.out 2>&1
eval_tap $? 312 'BulkCredit' test.out

#- 313 BulkDebit
samples/cli/sample-apps Platform bulkDebit \
    --namespace $AB_NAMESPACE \
    --body '[{"currencyCode": "F2PYdZuqc9acG4Bk", "request": {"allowOverdraft": false, "amount": 57, "balanceOrigin": "Oculus", "balanceSource": "PAYMENT", "metadata": {"V1gNsvvaW8EWm0Gw": {}, "Sb5DsUSXwYO1HTyM": {}, "amicHmtFMuTri9vA": {}}, "reason": "exwvTtnzzeCC7jYG"}, "userIds": ["x24ERgwvYZyVBSNJ", "CWe7mMn0FXiZu2SX", "vbUkZILyiEkcN95o"]}, {"currencyCode": "D3t5JFwFuaDyxL2V", "request": {"allowOverdraft": true, "amount": 75, "balanceOrigin": "Epic", "balanceSource": "IAP_REVOCATION", "metadata": {"y5iZk23n2Uk4kYGK": {}, "wbNdgC6ibmkoZmdt": {}, "O8jdURHtTrh4SsPN": {}}, "reason": "OIenM7wQQN66eNHZ"}, "userIds": ["2mQ4oKIgr86uIZqR", "4yBibjSshnXLSqzg", "xyZLUM62bgXh3y4V"]}, {"currencyCode": "S87XBtzmvU0mQRtP", "request": {"allowOverdraft": true, "amount": 71, "balanceOrigin": "IOS", "balanceSource": "IAP_REVOCATION", "metadata": {"rxplUi2FZXxmyPwR": {}, "0EY7cV56KoTW5sgr": {}, "f5K6olc8ta5qY7PE": {}}, "reason": "hAzrL3uGCj6emc42"}, "userIds": ["Oxr1WepBxJyiARH1", "oHzf3c6cYFKifrwz", "DkAGZdCf0JBfvV4B"]}]' \
    > test.out 2>&1
eval_tap $? 313 'BulkDebit' test.out

#- 314 GetWallet
eval_tap 0 314 'GetWallet # SKIP deprecated' test.out

#- 315 SyncOrders
samples/cli/sample-apps Platform syncOrders \
    --nextEvaluatedKey 'moraMePuHsZT4j0a' \
    --end 'IlrpJOM1bZOPq1b7' \
    --start 'DOsnTLAE5LZMJFiv' \
    > test.out 2>&1
eval_tap $? 315 'SyncOrders' test.out

#- 316 TestAdyenConfig
samples/cli/sample-apps Platform testAdyenConfig \
    --sandbox 'false' \
    --body '{"allowedPaymentMethods": ["ROTlrhOHlShnI8Go", "aRsYgmhApVYng5cC", "AqphemFA4F1yppXR"], "apiKey": "rXgbq7vBycZ1ynNP", "authoriseAsCapture": false, "blockedPaymentMethods": ["uLBgCrivQdBsgios", "OHeL3AEFTFDLqefk", "FFHwSf9gbmMe7cps"], "clientKey": "2CCWLgz5fV4KuDjw", "dropInSettings": "tpOS2mNITuo1EWxN", "liveEndpointUrlPrefix": "H7Y8qrHQlZGLLJIi", "merchantAccount": "FWUAZUR4WCMiLkTY", "notificationHmacKey": "krXrRIx9nwNf6l2x", "notificationPassword": "jdCqnnqatXg6xyZ3", "notificationUsername": "SRxT85RyMRPXHQmW", "returnUrl": "GrILPOBxgx2C6V4j", "settings": "apBOfiAs5QqNHn7r"}' \
    > test.out 2>&1
eval_tap $? 316 'TestAdyenConfig' test.out

#- 317 TestAliPayConfig
samples/cli/sample-apps Platform testAliPayConfig \
    --sandbox 'true' \
    --body '{"appId": "ha8SpSAd03F0d7PR", "privateKey": "flz6elreynrykfX6", "publicKey": "Yk4k2kz7eg3uL7jZ", "returnUrl": "cRfXe32CsGoj4iPB"}' \
    > test.out 2>&1
eval_tap $? 317 'TestAliPayConfig' test.out

#- 318 TestCheckoutConfig
samples/cli/sample-apps Platform testCheckoutConfig \
    --sandbox 'false' \
    --body '{"publicKey": "e0AKRls3KHIG8R6V", "secretKey": "c1gIVXCTDIv7gSvS"}' \
    > test.out 2>&1
eval_tap $? 318 'TestCheckoutConfig' test.out

#- 319 DebugMatchedPaymentMerchantConfig
samples/cli/sample-apps Platform debugMatchedPaymentMerchantConfig \
    --namespace 'i9ZYz4kxBgv9jw1B' \
    --region 'FLRN1D4V4CI0kg1G' \
    > test.out 2>&1
eval_tap $? 319 'DebugMatchedPaymentMerchantConfig' test.out

#- 320 TestPayPalConfig
samples/cli/sample-apps Platform testPayPalConfig \
    --sandbox 'false' \
    --body '{"clientID": "MqqQq8el6AOecPal", "clientSecret": "HXquPfqEJGEBEWhW", "returnUrl": "4ipAJjyXnVKfFebH", "webHookId": "EAFsLK1zBmQwLeim"}' \
    > test.out 2>&1
eval_tap $? 320 'TestPayPalConfig' test.out

#- 321 TestStripeConfig
samples/cli/sample-apps Platform testStripeConfig \
    --sandbox 'true' \
    --body '{"allowedPaymentMethodTypes": ["77S7GI1aVzFYczKa", "hQlAWMsNPP3iPHwP", "NP3gVsfaIEScGYBB"], "publishableKey": "2cYtHW9WPYNc4kTg", "secretKey": "GHm9vzGKVdLFmEX1", "webhookSecret": "EnomVfncVNSTM4kp"}' \
    > test.out 2>&1
eval_tap $? 321 'TestStripeConfig' test.out

#- 322 TestWxPayConfig
samples/cli/sample-apps Platform testWxPayConfig \
    --body '{"appId": "uApbT2KzgtUTLvP1", "key": "9Qlv1x1aV0ZxOZED", "mchid": "futCYjxzBWHBdmQh", "returnUrl": "lImevkwdghINlieA"}' \
    > test.out 2>&1
eval_tap $? 322 'TestWxPayConfig' test.out

#- 323 TestXsollaConfig
samples/cli/sample-apps Platform testXsollaConfig \
    --body '{"apiKey": "Q3IOMO11ccwcjN7X", "flowCompletionUrl": "vKVR3qWBf21LTcIO", "merchantId": 85, "projectId": 18, "projectSecretKey": "t3BF5f3hhAfsn27R"}' \
    > test.out 2>&1
eval_tap $? 323 'TestXsollaConfig' test.out

#- 324 GetPaymentMerchantConfig
samples/cli/sample-apps Platform getPaymentMerchantConfig \
    --id 'QxdsrWSH14EQiWfI' \
    > test.out 2>&1
eval_tap $? 324 'GetPaymentMerchantConfig' test.out

#- 325 UpdateAdyenConfig
samples/cli/sample-apps Platform updateAdyenConfig \
    --id 'SBoRT6YJnxK7kWrv' \
    --sandbox 'true' \
    --validate 'true' \
    --body '{"allowedPaymentMethods": ["Dh5AlldGpxzoh4q3", "uqMhZydElcpciToa", "gS8RSb7tKpTzz6ot"], "apiKey": "lvuJEBcJ9oURQ0zH", "authoriseAsCapture": true, "blockedPaymentMethods": ["kKgHaQ563qw9fwdf", "uHIXVSMoqfwMVSed", "f5gC9yrnkI3v5Ahq"], "clientKey": "Xx9GTurueaxusyNT", "dropInSettings": "Nenwh1UmcrfWXPsB", "liveEndpointUrlPrefix": "njpMfoogY5mQt5Go", "merchantAccount": "P60sEuWkU5sBh3Zj", "notificationHmacKey": "vmcYpH5j64AeCwSM", "notificationPassword": "ODOCt0wWz5rGqYtW", "notificationUsername": "dQjM8TNw49TRiVMy", "returnUrl": "U0RD6Odv0VHqhlv9", "settings": "t1GmJyNZmrgfZtGl"}' \
    > test.out 2>&1
eval_tap $? 325 'UpdateAdyenConfig' test.out

#- 326 TestAdyenConfigById
samples/cli/sample-apps Platform testAdyenConfigById \
    --id 'yxre2ULuzkaDSGNo' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 326 'TestAdyenConfigById' test.out

#- 327 UpdateAliPayConfig
samples/cli/sample-apps Platform updateAliPayConfig \
    --id 'AdFdfSUHRN7tD5Oc' \
    --sandbox 'true' \
    --validate 'false' \
    --body '{"appId": "vkPwQfOwcFyZ9bax", "privateKey": "YalRI41XIjrMGRDN", "publicKey": "4TTG94jqH9Iia16w", "returnUrl": "p337tFIGGEwQHE9g"}' \
    > test.out 2>&1
eval_tap $? 327 'UpdateAliPayConfig' test.out

#- 328 TestAliPayConfigById
samples/cli/sample-apps Platform testAliPayConfigById \
    --id '9s5Un2t7NE0CvPTf' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 328 'TestAliPayConfigById' test.out

#- 329 UpdateCheckoutConfig
samples/cli/sample-apps Platform updateCheckoutConfig \
    --id 'geHacnmThfrUzrPy' \
    --sandbox 'false' \
    --validate 'true' \
    --body '{"publicKey": "c8A7BBAgElTuqnxP", "secretKey": "0YAdT2ePed6FRSmJ"}' \
    > test.out 2>&1
eval_tap $? 329 'UpdateCheckoutConfig' test.out

#- 330 TestCheckoutConfigById
samples/cli/sample-apps Platform testCheckoutConfigById \
    --id 'xdFbRloHXVGNlpcD' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 330 'TestCheckoutConfigById' test.out

#- 331 UpdatePayPalConfig
samples/cli/sample-apps Platform updatePayPalConfig \
    --id '7DdSwTlRNgqkK2l6' \
    --sandbox 'false' \
    --validate 'false' \
    --body '{"clientID": "ZWXBNf0J2mDULJxc", "clientSecret": "sMoSXnq7VXrVnfae", "returnUrl": "TRIbJxmjnq0PR664", "webHookId": "KLibI7CeGHllVNrd"}' \
    > test.out 2>&1
eval_tap $? 331 'UpdatePayPalConfig' test.out

#- 332 TestPayPalConfigById
samples/cli/sample-apps Platform testPayPalConfigById \
    --id 'Li6GasEnBH9anHwX' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 332 'TestPayPalConfigById' test.out

#- 333 UpdateStripeConfig
samples/cli/sample-apps Platform updateStripeConfig \
    --id '8rABzLBaGYOL0e5J' \
    --sandbox 'true' \
    --validate 'false' \
    --body '{"allowedPaymentMethodTypes": ["7SL8hiHSP1mxWko0", "On70hLdqKEA9qCsa", "qCiqIc9f2gf0nAFK"], "publishableKey": "x0kz7ZBc7cn68ffP", "secretKey": "sQVXKQ74fdxXfAGf", "webhookSecret": "XxCuuDfo7PF7yrq6"}' \
    > test.out 2>&1
eval_tap $? 333 'UpdateStripeConfig' test.out

#- 334 TestStripeConfigById
samples/cli/sample-apps Platform testStripeConfigById \
    --id 'CzMqFI6shBa6IAAH' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 334 'TestStripeConfigById' test.out

#- 335 UpdateWxPayConfig
samples/cli/sample-apps Platform updateWxPayConfig \
    --id 'DUx8hiVVmgXAdIvc' \
    --validate 'true' \
    --body '{"appId": "SB7kugBD82G3wOac", "key": "0QHSg2r0TnOQOtg5", "mchid": "ciTJI9IV10It52LG", "returnUrl": "dj6U7FjPTGtAV70e"}' \
    > test.out 2>&1
eval_tap $? 335 'UpdateWxPayConfig' test.out

#- 336 UpdateWxPayConfigCert
samples/cli/sample-apps Platform updateWxPayConfigCert \
    --id 'ZqSTkde5bhmYhX1D' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 336 'UpdateWxPayConfigCert' test.out

#- 337 TestWxPayConfigById
samples/cli/sample-apps Platform testWxPayConfigById \
    --id 'Pyro4S0XdHo5PE05' \
    > test.out 2>&1
eval_tap $? 337 'TestWxPayConfigById' test.out

#- 338 UpdateXsollaConfig
samples/cli/sample-apps Platform updateXsollaConfig \
    --id 'ADoZLiczGSu8iyhl' \
    --validate 'false' \
    --body '{"apiKey": "OApEtogDphTunx7s", "flowCompletionUrl": "q3xtjrjL43Zlzqi0", "merchantId": 44, "projectId": 63, "projectSecretKey": "txtzY4jx6Xlprdv0"}' \
    > test.out 2>&1
eval_tap $? 338 'UpdateXsollaConfig' test.out

#- 339 TestXsollaConfigById
samples/cli/sample-apps Platform testXsollaConfigById \
    --id 'kkvj64TKSJeEctwZ' \
    > test.out 2>&1
eval_tap $? 339 'TestXsollaConfigById' test.out

#- 340 UpdateXsollaUIConfig
samples/cli/sample-apps Platform updateXsollaUIConfig \
    --id 'DXdKUTyv8KRyWOEA' \
    --body '{"device": "DESKTOP", "showCloseButton": true, "size": "LARGE", "theme": "DEFAULT"}' \
    > test.out 2>&1
eval_tap $? 340 'UpdateXsollaUIConfig' test.out

#- 341 QueryPaymentProviderConfig
samples/cli/sample-apps Platform queryPaymentProviderConfig \
    --limit '6' \
    --namespace 'iIuvah3LiHReR10j' \
    --offset '59' \
    --region 'VDg9WLM3QXVXyx08' \
    > test.out 2>&1
eval_tap $? 341 'QueryPaymentProviderConfig' test.out

#- 342 CreatePaymentProviderConfig
samples/cli/sample-apps Platform createPaymentProviderConfig \
    --body '{"aggregate": "ADYEN", "namespace": "cizSGgroIgwgCKcH", "region": "vKty7OfphE4m5Zd7", "sandboxTaxJarApiToken": "pU1Pw31NPgw8Jh0Q", "specials": ["PAYPAL", "PAYPAL", "STRIPE"], "taxJarApiToken": "NZ1HLJSj9mtBf1YK", "taxJarEnabled": true, "useGlobalTaxJarApiToken": true}' \
    > test.out 2>&1
eval_tap $? 342 'CreatePaymentProviderConfig' test.out

#- 343 GetAggregatePaymentProviders
samples/cli/sample-apps Platform getAggregatePaymentProviders \
    > test.out 2>&1
eval_tap $? 343 'GetAggregatePaymentProviders' test.out

#- 344 DebugMatchedPaymentProviderConfig
samples/cli/sample-apps Platform debugMatchedPaymentProviderConfig \
    --namespace 'bPK9AdvwgPMc0eFN' \
    --region 'f1rF0xXWZlkckZyW' \
    > test.out 2>&1
eval_tap $? 344 'DebugMatchedPaymentProviderConfig' test.out

#- 345 GetSpecialPaymentProviders
samples/cli/sample-apps Platform getSpecialPaymentProviders \
    > test.out 2>&1
eval_tap $? 345 'GetSpecialPaymentProviders' test.out

#- 346 UpdatePaymentProviderConfig
samples/cli/sample-apps Platform updatePaymentProviderConfig \
    --id '6YpgTG6dUmnoOEYk' \
    --body '{"aggregate": "XSOLLA", "namespace": "mZ2uUbHflZ1zqSxi", "region": "4Y0b4llE6Ujy3cgz", "sandboxTaxJarApiToken": "DVFeRad4iwfKIZ9Q", "specials": ["XSOLLA", "ALIPAY", "WALLET"], "taxJarApiToken": "9WJ2co4BOP6JfOkV", "taxJarEnabled": true, "useGlobalTaxJarApiToken": false}' \
    > test.out 2>&1
eval_tap $? 346 'UpdatePaymentProviderConfig' test.out

#- 347 DeletePaymentProviderConfig
samples/cli/sample-apps Platform deletePaymentProviderConfig \
    --id 'Zly6HohrKbNNO4vL' \
    > test.out 2>&1
eval_tap $? 347 'DeletePaymentProviderConfig' test.out

#- 348 GetPaymentTaxConfig
samples/cli/sample-apps Platform getPaymentTaxConfig \
    > test.out 2>&1
eval_tap $? 348 'GetPaymentTaxConfig' test.out

#- 349 UpdatePaymentTaxConfig
samples/cli/sample-apps Platform updatePaymentTaxConfig \
    --body '{"sandboxTaxJarApiToken": "2fQ3GT7qUe9xGk4v", "taxJarApiToken": "O0OvLHDIuvUx3omM", "taxJarEnabled": false, "taxJarProductCodesMapping": {"6GV61rl06AKZA5kq": "NeX9lrS9W7WnpB1r", "73u3rZoVrdGNCe46": "NutJhPHLWaZjjRaY", "H5ZVycnKVTxqSYfO": "YuhdZxe72w1jzQY0"}}' \
    > test.out 2>&1
eval_tap $? 349 'UpdatePaymentTaxConfig' test.out

#- 350 SyncPaymentOrders
samples/cli/sample-apps Platform syncPaymentOrders \
    --nextEvaluatedKey 'cTNPp5Cjx92cA5Za' \
    --end 'BlMkaWd3PN13TrEm' \
    --start '9i5lpFiwgXaMvR79' \
    > test.out 2>&1
eval_tap $? 350 'SyncPaymentOrders' test.out

#- 351 PublicGetRootCategories
samples/cli/sample-apps Platform publicGetRootCategories \
    --namespace $AB_NAMESPACE \
    --language 't3HTmsbwsHSYWzBX' \
    --storeId 'qMCxilFCJ2y5LRF9' \
    > test.out 2>&1
eval_tap $? 351 'PublicGetRootCategories' test.out

#- 352 DownloadCategories
samples/cli/sample-apps Platform downloadCategories \
    --namespace $AB_NAMESPACE \
    --language 'bVZxA7YrhfiH5nWp' \
    --storeId 'tuDAU6ctmjSYGeqK' \
    > test.out 2>&1
eval_tap $? 352 'DownloadCategories' test.out

#- 353 PublicGetCategory
samples/cli/sample-apps Platform publicGetCategory \
    --categoryPath 'lAwzDWRIeF6DuQQ0' \
    --namespace $AB_NAMESPACE \
    --language 'UOTLCguRt8Ex6B5t' \
    --storeId '6Ia6MYBfYHjYuFy4' \
    > test.out 2>&1
eval_tap $? 353 'PublicGetCategory' test.out

#- 354 PublicGetChildCategories
samples/cli/sample-apps Platform publicGetChildCategories \
    --categoryPath '2Rfw2iZjKWspYb96' \
    --namespace $AB_NAMESPACE \
    --language 'Tl3hEMKnJfj0Ld8K' \
    --storeId 'HZjLmiHiclcwcF7w' \
    > test.out 2>&1
eval_tap $? 354 'PublicGetChildCategories' test.out

#- 355 PublicGetDescendantCategories
samples/cli/sample-apps Platform publicGetDescendantCategories \
    --categoryPath '34ba9rfq5bW1BFBO' \
    --namespace $AB_NAMESPACE \
    --language 'rBQrzZ21Ok51Plfr' \
    --storeId '04WVRHvnY8fBHyye' \
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
    --dlcType 'XBOX' \
    > test.out 2>&1
eval_tap $? 357 'GeDLCDurableRewardShortMap' test.out

#- 358 GetIAPItemMapping
samples/cli/sample-apps Platform getIAPItemMapping \
    --namespace $AB_NAMESPACE \
    --platform 'OCULUS' \
    > test.out 2>&1
eval_tap $? 358 'GetIAPItemMapping' test.out

#- 359 PublicGetItemByAppId
samples/cli/sample-apps Platform publicGetItemByAppId \
    --namespace $AB_NAMESPACE \
    --language 'DJiAQVhKTRNxo8D7' \
    --region 'tX2rDa9XkIgCMlK6' \
    --storeId '3gMKiJXwcBEtm1fe' \
    --appId 'V7LITCyg1fWGAqzj' \
    > test.out 2>&1
eval_tap $? 359 'PublicGetItemByAppId' test.out

#- 360 PublicQueryItems
samples/cli/sample-apps Platform publicQueryItems \
    --namespace $AB_NAMESPACE \
    --appType 'GAME' \
    --autoCalcEstimatedPrice 'true' \
    --baseAppId 'dGahyZM8huXuPsuf' \
    --categoryPath 'iwf2frXtGaEKAvKk' \
    --features 'iE06igAV0kIk2fSq' \
    --includeSubCategoryItem 'true' \
    --itemType 'LOOTBOX' \
    --language 'Db3SycUEToXCvnmY' \
    --limit '29' \
    --offset '45' \
    --region 'hJGEP0OhUlLqLaPz' \
    --sortBy '["name:asc", "createdAt:desc", "updatedAt"]' \
    --storeId '0vYSUpc8OesvPb2b' \
    --tags 'HCE35Iyh932NRuvk' \
    > test.out 2>&1
eval_tap $? 360 'PublicQueryItems' test.out

#- 361 PublicGetItemBySku
samples/cli/sample-apps Platform publicGetItemBySku \
    --namespace $AB_NAMESPACE \
    --autoCalcEstimatedPrice 'false' \
    --language 'usaDzNA6f3C7OjjC' \
    --region 'csYSbBAUFGMPA0hN' \
    --storeId 'hpvhuSaTfhPvSt33' \
    --sku '8WybF9u04qkqm6mg' \
    > test.out 2>&1
eval_tap $? 361 'PublicGetItemBySku' test.out

#- 362 PublicGetEstimatedPrice
samples/cli/sample-apps Platform publicGetEstimatedPrice \
    --namespace $AB_NAMESPACE \
    --region 'BcraaxHdXvv45itz' \
    --storeId 'AEjkB82rGMgn8Pwl' \
    --itemIds '3WEcck6FwhrZPCW8' \
    > test.out 2>&1
eval_tap $? 362 'PublicGetEstimatedPrice' test.out

#- 363 PublicBulkGetItems
samples/cli/sample-apps Platform publicBulkGetItems \
    --namespace $AB_NAMESPACE \
    --autoCalcEstimatedPrice 'true' \
    --language 'mXxO2k1MiNDzp9bp' \
    --region 'nZLU6TLFhamvgwHR' \
    --storeId 'XsTvntb8tNelrcMw' \
    --itemIds 'ZLgK1RAWkVoL1zXm' \
    > test.out 2>&1
eval_tap $? 363 'PublicBulkGetItems' test.out

#- 364 PublicValidateItemPurchaseCondition
samples/cli/sample-apps Platform publicValidateItemPurchaseCondition \
    --namespace $AB_NAMESPACE \
    --body '{"itemIds": ["8a8RGbn04H0SbxFz", "qmPilTkat5C5JMzB", "d0yLK8pgZYkTYKSI"]}' \
    > test.out 2>&1
eval_tap $? 364 'PublicValidateItemPurchaseCondition' test.out

#- 365 PublicSearchItems
samples/cli/sample-apps Platform publicSearchItems \
    --namespace $AB_NAMESPACE \
    --autoCalcEstimatedPrice 'false' \
    --itemType 'SUBSCRIPTION' \
    --limit '97' \
    --offset '2' \
    --region 'PsyIxXZKJab1UiTk' \
    --storeId '8HIQLwcomOAip3eP' \
    --keyword 'pFjXSCszS6JkfZ9H' \
    --language 'OkGSL2B9qXYSqB2I' \
    > test.out 2>&1
eval_tap $? 365 'PublicSearchItems' test.out

#- 366 PublicGetApp
samples/cli/sample-apps Platform publicGetApp \
    --itemId 'fXQlYWyPF5tbQkKA' \
    --namespace $AB_NAMESPACE \
    --language 'GWjClP1vOzVYSdnY' \
    --region 'GmBbhK8AwHLuiRem' \
    --storeId 'h5MSPj2101dRVWmc' \
    > test.out 2>&1
eval_tap $? 366 'PublicGetApp' test.out

#- 367 PublicGetItemDynamicData
samples/cli/sample-apps Platform publicGetItemDynamicData \
    --itemId 'GYZAXNspXUwTNvWy' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 367 'PublicGetItemDynamicData' test.out

#- 368 PublicGetItem
samples/cli/sample-apps Platform publicGetItem \
    --itemId 'o0pzXNF9zYfjSp7T' \
    --namespace $AB_NAMESPACE \
    --autoCalcEstimatedPrice 'true' \
    --language 'ZKqo6HOcVFfLOJPN' \
    --populateBundle 'false' \
    --region 'IEYeW4PZjk7rKJEx' \
    --storeId 'TaGDeXrxzOCVG4pv' \
    > test.out 2>&1
eval_tap $? 368 'PublicGetItem' test.out

#- 369 GetPaymentCustomization
eval_tap 0 369 'GetPaymentCustomization # SKIP deprecated' test.out

#- 370 PublicGetPaymentUrl
samples/cli/sample-apps Platform publicGetPaymentUrl \
    --namespace $AB_NAMESPACE \
    --body '{"paymentOrderNo": "pi6efxRxAuH9m1IO", "paymentProvider": "ALIPAY", "returnUrl": "CMJrcGOCwJWVy5td", "ui": "pukTkvdbd2MYHdzL", "zipCode": "DH5Wb4LmwfXr88HI"}' \
    > test.out 2>&1
eval_tap $? 370 'PublicGetPaymentUrl' test.out

#- 371 PublicGetPaymentMethods
samples/cli/sample-apps Platform publicGetPaymentMethods \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'TPbWj4Z9sD6NPFRg' \
    > test.out 2>&1
eval_tap $? 371 'PublicGetPaymentMethods' test.out

#- 372 PublicGetUnpaidPaymentOrder
samples/cli/sample-apps Platform publicGetUnpaidPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'D5SB4CcRBGSBRDjG' \
    > test.out 2>&1
eval_tap $? 372 'PublicGetUnpaidPaymentOrder' test.out

#- 373 Pay
samples/cli/sample-apps Platform pay \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'etGiU4Dskcxwj82D' \
    --paymentProvider 'STRIPE' \
    --zipCode 'goCu04qvhUQYBf11' \
    --body '{"token": "aWI4I5WZPKUEO4GS"}' \
    > test.out 2>&1
eval_tap $? 373 'Pay' test.out

#- 374 PublicCheckPaymentOrderPaidStatus
samples/cli/sample-apps Platform publicCheckPaymentOrderPaidStatus \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'KW1PAY3eibNtbbaj' \
    > test.out 2>&1
eval_tap $? 374 'PublicCheckPaymentOrderPaidStatus' test.out

#- 375 GetPaymentPublicConfig
samples/cli/sample-apps Platform getPaymentPublicConfig \
    --namespace $AB_NAMESPACE \
    --sandbox 'false' \
    --paymentProvider 'XSOLLA' \
    --region 'njyCU6SRCkctO9EF' \
    > test.out 2>&1
eval_tap $? 375 'GetPaymentPublicConfig' test.out

#- 376 PublicGetQRCode
samples/cli/sample-apps Platform publicGetQRCode \
    --namespace $AB_NAMESPACE \
    --code 'cKq0JmQBnl2chVhs' \
    > test.out 2>&1
eval_tap $? 376 'PublicGetQRCode' test.out

#- 377 PublicNormalizePaymentReturnUrl
samples/cli/sample-apps Platform publicNormalizePaymentReturnUrl \
    --namespace $AB_NAMESPACE \
    --payerID '9EF6ibkcVtZFb0n8' \
    --foreinginvoice 'p09vfyedOXpc0RWM' \
    --invoiceId 'DFy3m4FLQ2CdmmgX' \
    --payload 'dzjsgixZwCFOeMhw' \
    --redirectResult 'uBl0pPFA8dFgGU2H' \
    --resultCode 'b5ZYQfvErjdg8s3y' \
    --sessionId 'UENVFLelT2HHihoQ' \
    --status '6JHHYDqpA2apYpa6' \
    --token '6CwSqNwiA8akWhiQ' \
    --type 'sKHaTF0x7yuECTba' \
    --userId 'nUsJrkMzULMrS8tm' \
    --orderNo 'EpKNQJhnJciyII17' \
    --paymentOrderNo '9X7j8QxmKYyExZMb' \
    --paymentProvider 'ALIPAY' \
    --returnUrl 'PSAqatxKM4FcPpxQ' \
    > test.out 2>&1
eval_tap $? 377 'PublicNormalizePaymentReturnUrl' test.out

#- 378 GetPaymentTaxValue
samples/cli/sample-apps Platform getPaymentTaxValue \
    --namespace $AB_NAMESPACE \
    --zipCode 'DlNNbGnivL7G5YeQ' \
    --paymentOrderNo 'n7sH4cwpbB2rEXjo' \
    --paymentProvider 'WALLET' \
    > test.out 2>&1
eval_tap $? 378 'GetPaymentTaxValue' test.out

#- 379 GetRewardByCode
samples/cli/sample-apps Platform getRewardByCode \
    --namespace $AB_NAMESPACE \
    --rewardCode 'o0fmBFmX9rDGi8Hc' \
    > test.out 2>&1
eval_tap $? 379 'GetRewardByCode' test.out

#- 380 QueryRewards1
samples/cli/sample-apps Platform queryRewards1 \
    --namespace $AB_NAMESPACE \
    --eventTopic 'vrisjefCtPWZ8pKQ' \
    --limit '67' \
    --offset '53' \
    --sortBy '["rewardCode:asc", "rewardCode:desc", "namespace"]' \
    > test.out 2>&1
eval_tap $? 380 'QueryRewards1' test.out

#- 381 GetReward1
samples/cli/sample-apps Platform getReward1 \
    --namespace $AB_NAMESPACE \
    --rewardId 'QjT7sGGsnTDeMvnM' \
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
    --appIds '["Mq6LDKKrRwMCuNwV", "lX3axbi8TEFkfbTE", "kQB6zgdUoBD48utC"]' \
    --itemIds '["3E3gCQefTgRhRgzM", "tXuZANe4zlrultp5", "awRGeaGPrdJWZ3V2"]' \
    --skus '["WpemoQq7RFlUpRlG", "PcxHn37RQkIhtDtS", "xNPwDakYpUHU0WJo"]' \
    > test.out 2>&1
eval_tap $? 383 'PublicExistsAnyMyActiveEntitlement' test.out

#- 384 PublicGetMyAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform publicGetMyAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --appId '9VpiSU5eJ0iV82nE' \
    > test.out 2>&1
eval_tap $? 384 'PublicGetMyAppEntitlementOwnershipByAppId' test.out

#- 385 PublicGetMyEntitlementOwnershipByItemId
samples/cli/sample-apps Platform publicGetMyEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --entitlementClazz 'SUBSCRIPTION' \
    --itemId 'kXS9fx1rOdKXgIEl' \
    > test.out 2>&1
eval_tap $? 385 'PublicGetMyEntitlementOwnershipByItemId' test.out

#- 386 PublicGetMyEntitlementOwnershipBySku
samples/cli/sample-apps Platform publicGetMyEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --entitlementClazz 'SUBSCRIPTION' \
    --sku '6KsVmXady5QqwSOQ' \
    > test.out 2>&1
eval_tap $? 386 'PublicGetMyEntitlementOwnershipBySku' test.out

#- 387 PublicGetEntitlementOwnershipToken
samples/cli/sample-apps Platform publicGetEntitlementOwnershipToken \
    --namespace $AB_NAMESPACE \
    --appIds '["Y9HWYHaRZyIila4c", "QTcdP9NxcrXggfyW", "EHplddTVWTcFsFlf"]' \
    --itemIds '["Y7HEnJAW7XmwHatZ", "teIJZelcwAIBjQ81", "JMa03CFs7itmCezb"]' \
    --skus '["DnAoDT7Qw9n6mIKD", "tkV4Wdw0VT20cIIP", "mvYoCNH5Ia6Banv6"]' \
    > test.out 2>&1
eval_tap $? 387 'PublicGetEntitlementOwnershipToken' test.out

#- 388 SyncTwitchDropsEntitlement
samples/cli/sample-apps Platform syncTwitchDropsEntitlement \
    --namespace $AB_NAMESPACE \
    --body '{"gameId": "j9t3rsK63w5Dn72S", "language": "Gk", "region": "OnuDtj72Awu127Bw"}' \
    > test.out 2>&1
eval_tap $? 388 'SyncTwitchDropsEntitlement' test.out

#- 389 PublicGetMyWallet
samples/cli/sample-apps Platform publicGetMyWallet \
    --currencyCode 'rcnUnQN158kvvjK3' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 389 'PublicGetMyWallet' test.out

#- 390 SyncEpicGameDLC
samples/cli/sample-apps Platform syncEpicGameDLC \
    --namespace $AB_NAMESPACE \
    --userId '1gSkV7N05ot4qJ8z' \
    --body '{"epicGamesJwtToken": "s4dER31qg6ycdzrD"}' \
    > test.out 2>&1
eval_tap $? 390 'SyncEpicGameDLC' test.out

#- 391 SyncOculusDLC
samples/cli/sample-apps Platform syncOculusDLC \
    --namespace $AB_NAMESPACE \
    --userId 'MiRZ4hJxi4HLw76J' \
    > test.out 2>&1
eval_tap $? 391 'SyncOculusDLC' test.out

#- 392 PublicSyncPsnDlcInventory
samples/cli/sample-apps Platform publicSyncPsnDlcInventory \
    --namespace $AB_NAMESPACE \
    --userId 'twm8GFJnaq7PYSHr' \
    --body '{"serviceLabel": 1}' \
    > test.out 2>&1
eval_tap $? 392 'PublicSyncPsnDlcInventory' test.out

#- 393 PublicSyncPsnDlcInventoryWithMultipleServiceLabels
samples/cli/sample-apps Platform publicSyncPsnDlcInventoryWithMultipleServiceLabels \
    --namespace $AB_NAMESPACE \
    --userId 'T1PIbXhvlbgWsC89' \
    --body '{"serviceLabels": [56, 51, 22]}' \
    > test.out 2>&1
eval_tap $? 393 'PublicSyncPsnDlcInventoryWithMultipleServiceLabels' test.out

#- 394 SyncSteamDLC
samples/cli/sample-apps Platform syncSteamDLC \
    --namespace $AB_NAMESPACE \
    --userId 'oHbmowe7oIc5VJai' \
    --body '{"appId": "dJ0z4W6woEbr87TC", "steamId": "kr6PKEb5kJeiolum"}' \
    > test.out 2>&1
eval_tap $? 394 'SyncSteamDLC' test.out

#- 395 SyncXboxDLC
samples/cli/sample-apps Platform syncXboxDLC \
    --namespace $AB_NAMESPACE \
    --userId 'RFRbpiwEimSM9Ueh' \
    --body '{"xstsToken": "LhTjfzrSkqHxD880"}' \
    > test.out 2>&1
eval_tap $? 395 'SyncXboxDLC' test.out

#- 396 PublicQueryUserEntitlements
samples/cli/sample-apps Platform publicQueryUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'eNdYosXthRn6JBss' \
    --appType 'SOFTWARE' \
    --entitlementClazz 'MEDIA' \
    --entitlementName '5FpKinojK315TbdX' \
    --features '["5hSGugxVLEFiOjU7", "bWNKFeyfCODLoUKB", "ElXQD5zLh1CR716k"]' \
    --itemId '["mhfV6lGJGTp5Xcxg", "MntcbEkfv8TDXNyg", "TweJI4qUCPPy6lPD"]' \
    --limit '54' \
    --offset '83' \
    > test.out 2>&1
eval_tap $? 396 'PublicQueryUserEntitlements' test.out

#- 397 PublicGetUserAppEntitlementByAppId
samples/cli/sample-apps Platform publicGetUserAppEntitlementByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'I9JFTHudl1UXRaiY' \
    --appId 'YzAkWRm9t1yOjcap' \
    > test.out 2>&1
eval_tap $? 397 'PublicGetUserAppEntitlementByAppId' test.out

#- 398 PublicQueryUserEntitlementsByAppType
samples/cli/sample-apps Platform publicQueryUserEntitlementsByAppType \
    --namespace $AB_NAMESPACE \
    --userId '1EndsKxX6jDxOA6p' \
    --limit '89' \
    --offset '70' \
    --appType 'SOFTWARE' \
    > test.out 2>&1
eval_tap $? 398 'PublicQueryUserEntitlementsByAppType' test.out

#- 399 PublicGetUserEntitlementsByIds
samples/cli/sample-apps Platform publicGetUserEntitlementsByIds \
    --namespace $AB_NAMESPACE \
    --userId 'YUeAT5SA33uMe88p' \
    --availablePlatformOnly 'false' \
    --ids '["naxCbbz8uS83pEAH", "kN4FyBwVuTmvYit1", "S3YJlOuxqbkG6yWD"]' \
    > test.out 2>&1
eval_tap $? 399 'PublicGetUserEntitlementsByIds' test.out

#- 400 PublicGetUserEntitlementByItemId
eval_tap 0 400 'PublicGetUserEntitlementByItemId # SKIP deprecated' test.out

#- 401 PublicGetUserEntitlementBySku
eval_tap 0 401 'PublicGetUserEntitlementBySku # SKIP deprecated' test.out

#- 402 PublicExistsAnyUserActiveEntitlement
samples/cli/sample-apps Platform publicExistsAnyUserActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'CuIGKsWAxkJG2EYa' \
    --appIds '["gRdP4Hn4I8eyQSa7", "xO7zqJfR1ioeEUwy", "Y9KrKwLeK60LFpyK"]' \
    --itemIds '["abEXKCpfh2g9pNRv", "lyIyFV4LHjUmD5g7", "lZrY0sSEmZu8VyRB"]' \
    --skus '["BTa8YShhE5vbBPwf", "PGUnK86dJXSiIlfR", "csccwLJai3Eqc69O"]' \
    > test.out 2>&1
eval_tap $? 402 'PublicExistsAnyUserActiveEntitlement' test.out

#- 403 PublicGetUserAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform publicGetUserAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'V2TYmvXnmTxCkUYT' \
    --appId 'WE7p8f1ZzSRdiwu1' \
    > test.out 2>&1
eval_tap $? 403 'PublicGetUserAppEntitlementOwnershipByAppId' test.out

#- 404 PublicGetUserEntitlementOwnershipByItemId
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'BWUfec5njF1BS8If' \
    --entitlementClazz 'LOOTBOX' \
    --itemId 'ONeeXR7CbTaxuFQ5' \
    > test.out 2>&1
eval_tap $? 404 'PublicGetUserEntitlementOwnershipByItemId' test.out

#- 405 PublicGetUserEntitlementOwnershipByItemIds
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipByItemIds \
    --namespace $AB_NAMESPACE \
    --userId '0GuQHjeO9PWy5naP' \
    --ids '["GjqflgHhoWhmzyFu", "2wxdyODQfRbncDHN", "GLAZ1iDwiztQbT2p"]' \
    > test.out 2>&1
eval_tap $? 405 'PublicGetUserEntitlementOwnershipByItemIds' test.out

#- 406 PublicGetUserEntitlementOwnershipBySku
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --userId 'p6MsNGTVkNIkv6Fc' \
    --entitlementClazz 'MEDIA' \
    --sku '9wfz4QyQz7J21RiE' \
    > test.out 2>&1
eval_tap $? 406 'PublicGetUserEntitlementOwnershipBySku' test.out

#- 407 PublicGetUserEntitlement
samples/cli/sample-apps Platform publicGetUserEntitlement \
    --entitlementId 'KOy2axqD11WeUJtj' \
    --namespace $AB_NAMESPACE \
    --userId 'mhBxC8jWo3kZuy3N' \
    > test.out 2>&1
eval_tap $? 407 'PublicGetUserEntitlement' test.out

#- 408 PublicConsumeUserEntitlement
samples/cli/sample-apps Platform publicConsumeUserEntitlement \
    --entitlementId '74FWkHd4Ug1i9CF1' \
    --namespace $AB_NAMESPACE \
    --userId 'a33BBnc7jHz6HpUK' \
    --body '{"options": ["bfCcBfQA1M5yN8g0", "OaUU4B5tMh2FjiTw", "iDBJwSd5D4h2fId3"], "requestId": "nbfeF2np60O7M7oz", "useCount": 45}' \
    > test.out 2>&1
eval_tap $? 408 'PublicConsumeUserEntitlement' test.out

#- 409 PublicSellUserEntitlement
samples/cli/sample-apps Platform publicSellUserEntitlement \
    --entitlementId 'dfwJoXock0sA48j2' \
    --namespace $AB_NAMESPACE \
    --userId '2q8pUlmwDOqCIEzl' \
    --body '{"requestId": "8lLtD4QCZyXXR7o5", "useCount": 46}' \
    > test.out 2>&1
eval_tap $? 409 'PublicSellUserEntitlement' test.out

#- 410 PublicSplitUserEntitlement
samples/cli/sample-apps Platform publicSplitUserEntitlement \
    --entitlementId '4ghDwqIaoI1yA9aJ' \
    --namespace $AB_NAMESPACE \
    --userId '6cVFZmSciUuXt4oG' \
    --body '{"useCount": 4}' \
    > test.out 2>&1
eval_tap $? 410 'PublicSplitUserEntitlement' test.out

#- 411 PublicTransferUserEntitlement
samples/cli/sample-apps Platform publicTransferUserEntitlement \
    --entitlementId '3TC6ib04rXSxnfEs' \
    --namespace $AB_NAMESPACE \
    --userId 'rmvXJWMjnqqb8opp' \
    --body '{"entitlementId": "OAwTitwArMnwb986", "useCount": 91}' \
    > test.out 2>&1
eval_tap $? 411 'PublicTransferUserEntitlement' test.out

#- 412 PublicRedeemCode
samples/cli/sample-apps Platform publicRedeemCode \
    --namespace $AB_NAMESPACE \
    --userId 'laFvGcvPolTjsbpQ' \
    --body '{"code": "6QGYA11dj7gfmBFa", "language": "Uz_159", "region": "k4MrE80U11RbqY3G"}' \
    > test.out 2>&1
eval_tap $? 412 'PublicRedeemCode' test.out

#- 413 PublicFulfillAppleIAPItem
samples/cli/sample-apps Platform publicFulfillAppleIAPItem \
    --namespace $AB_NAMESPACE \
    --userId '3TS0wIg64WpzZJJL' \
    --body '{"excludeOldTransactions": true, "language": "uGZI-YjVv", "productId": "zOp6gXdsCQ4d6WIy", "receiptData": "Ssk273zmygh9WFgi", "region": "kw7ZwkqvrgSKCFqz", "transactionId": "GMIvlDSE2ErmXPYB"}' \
    > test.out 2>&1
eval_tap $? 413 'PublicFulfillAppleIAPItem' test.out

#- 414 SyncEpicGamesInventory
samples/cli/sample-apps Platform syncEpicGamesInventory \
    --namespace $AB_NAMESPACE \
    --userId 'QbTbRjLiYTgR49jp' \
    --body '{"epicGamesJwtToken": "S5KXiiQP93wJQ4eQ"}' \
    > test.out 2>&1
eval_tap $? 414 'SyncEpicGamesInventory' test.out

#- 415 PublicFulfillGoogleIAPItem
samples/cli/sample-apps Platform publicFulfillGoogleIAPItem \
    --namespace $AB_NAMESPACE \
    --userId '1gQrlpIffu036jAi' \
    --body '{"autoAck": true, "language": "lYEH-zfuu_156", "orderId": "IqM72JU6DE36zBtF", "packageName": "eTIgQlMCieizEF2y", "productId": "YmPuciqZCcxIqHNn", "purchaseTime": 17, "purchaseToken": "onEuRbma7cLL7yzc", "region": "OZaRnkpdxTxYytuZ"}' \
    > test.out 2>&1
eval_tap $? 415 'PublicFulfillGoogleIAPItem' test.out

#- 416 SyncOculusConsumableEntitlements
samples/cli/sample-apps Platform syncOculusConsumableEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'EkYMghT2wcyZwZtu' \
    > test.out 2>&1
eval_tap $? 416 'SyncOculusConsumableEntitlements' test.out

#- 417 PublicReconcilePlayStationStore
samples/cli/sample-apps Platform publicReconcilePlayStationStore \
    --namespace $AB_NAMESPACE \
    --userId 'LtqScSDgn98XzPTf' \
    --body '{"currencyCode": "pIK8f2rohVCMbVZX", "price": 0.9915170969977072, "productId": "89dC5JXS01RfMYbE", "serviceLabel": 84}' \
    > test.out 2>&1
eval_tap $? 417 'PublicReconcilePlayStationStore' test.out

#- 418 PublicReconcilePlayStationStoreWithMultipleServiceLabels
samples/cli/sample-apps Platform publicReconcilePlayStationStoreWithMultipleServiceLabels \
    --namespace $AB_NAMESPACE \
    --userId 'CZvdiWDifz3oiA2S' \
    --body '{"currencyCode": "f0NFzmqnjiusg3Y0", "price": 0.481191106175457, "productId": "a4QPtLLGtlGGAUu1", "serviceLabels": [42, 90, 69]}' \
    > test.out 2>&1
eval_tap $? 418 'PublicReconcilePlayStationStoreWithMultipleServiceLabels' test.out

#- 419 SyncSteamInventory
samples/cli/sample-apps Platform syncSteamInventory \
    --namespace $AB_NAMESPACE \
    --userId '535i5xbpIla0NW8z' \
    --body '{"appId": "J9fHowHfcrSOx4as", "currencyCode": "aHoTmkIzTXO08kLW", "language": "ZGMl_pecI", "price": 0.30265502153433554, "productId": "s1Qhsev5eZ24QPZy", "region": "OAAc5gdMe7beFBfz", "steamId": "Dfb5NnMA1hJuiO6q"}' \
    > test.out 2>&1
eval_tap $? 419 'SyncSteamInventory' test.out

#- 420 SyncTwitchDropsEntitlement1
samples/cli/sample-apps Platform syncTwitchDropsEntitlement1 \
    --namespace $AB_NAMESPACE \
    --userId '9mVyWRegwtPGuTZY' \
    --body '{"gameId": "kjxJXA1FupP4hVOp", "language": "CG_yCNa", "region": "QRvJTH5Rl6B9DXXM"}' \
    > test.out 2>&1
eval_tap $? 420 'SyncTwitchDropsEntitlement1' test.out

#- 421 SyncXboxInventory
samples/cli/sample-apps Platform syncXboxInventory \
    --namespace $AB_NAMESPACE \
    --userId 'gHuiPXDQxTTF48nq' \
    --body '{"currencyCode": "BYjEsDdhMilM9ASG", "price": 0.5277442541785542, "productId": "JUCthfHwjSeVKUgJ", "xstsToken": "3xpOvwdp4gkDVBRt"}' \
    > test.out 2>&1
eval_tap $? 421 'SyncXboxInventory' test.out

#- 422 PublicQueryUserOrders
samples/cli/sample-apps Platform publicQueryUserOrders \
    --namespace $AB_NAMESPACE \
    --userId 'N4Q6IzpRwAv15Fkl' \
    --itemId 'Oi2ZhxduKd4ZACyS' \
    --limit '67' \
    --offset '93' \
    --status 'REFUNDED' \
    > test.out 2>&1
eval_tap $? 422 'PublicQueryUserOrders' test.out

#- 423 PublicCreateUserOrder
samples/cli/sample-apps Platform publicCreateUserOrder \
    --namespace $AB_NAMESPACE \
    --userId 'MjJGs5zL5Wo2l87g' \
    --body '{"currencyCode": "Gkjvq1wUMZWNfw9Y", "discountedPrice": 86, "ext": {"xw6r6DDqc0ButmM7": {}, "znPHtDNjnnCY78SQ": {}, "7nPNfWNz5JZ0RLdX": {}}, "itemId": "cdmSGHgTegUsgAdW", "language": "va", "price": 34, "quantity": 75, "region": "2WRtpRgRMxwXfXHg", "returnUrl": "VaBYhnJtK6IcNYz7", "sectionId": "ZeCHcVwRAdNC4azO"}' \
    > test.out 2>&1
eval_tap $? 423 'PublicCreateUserOrder' test.out

#- 424 PublicGetUserOrder
samples/cli/sample-apps Platform publicGetUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'r8ZtTU4SHCKnlJb1' \
    --userId 'a1azi0qvX5ooFC5b' \
    > test.out 2>&1
eval_tap $? 424 'PublicGetUserOrder' test.out

#- 425 PublicCancelUserOrder
samples/cli/sample-apps Platform publicCancelUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'q2X3gjMEMG7cqW5p' \
    --userId 'LJN43N6YV25a0Lwp' \
    > test.out 2>&1
eval_tap $? 425 'PublicCancelUserOrder' test.out

#- 426 PublicGetUserOrderHistories
samples/cli/sample-apps Platform publicGetUserOrderHistories \
    --namespace $AB_NAMESPACE \
    --orderNo 'jO78TcOUrMr7mrSQ' \
    --userId '2IVOW2kviqLMdLoJ' \
    > test.out 2>&1
eval_tap $? 426 'PublicGetUserOrderHistories' test.out

#- 427 PublicDownloadUserOrderReceipt
samples/cli/sample-apps Platform publicDownloadUserOrderReceipt \
    --namespace $AB_NAMESPACE \
    --orderNo 'UhRL2K3sExeHBM9m' \
    --userId 'jTi5NlKEnQQn5d48' \
    > test.out 2>&1
eval_tap $? 427 'PublicDownloadUserOrderReceipt' test.out

#- 428 PublicGetPaymentAccounts
samples/cli/sample-apps Platform publicGetPaymentAccounts \
    --namespace $AB_NAMESPACE \
    --userId 'Gp1I6omYGBEdp0fc' \
    > test.out 2>&1
eval_tap $? 428 'PublicGetPaymentAccounts' test.out

#- 429 PublicDeletePaymentAccount
samples/cli/sample-apps Platform publicDeletePaymentAccount \
    --id '0lGV9u7QBHiu7UC8' \
    --namespace $AB_NAMESPACE \
    --type 'paypal' \
    --userId 'b8zoNhEc1jbykrHL' \
    > test.out 2>&1
eval_tap $? 429 'PublicDeletePaymentAccount' test.out

#- 430 PublicListActiveSections
samples/cli/sample-apps Platform publicListActiveSections \
    --namespace $AB_NAMESPACE \
    --userId '1Ive3mnG7Q8YOuLx' \
    --autoCalcEstimatedPrice 'false' \
    --language 'xLpxILbDeREvVv0Y' \
    --region 'TWL3bmPiEaFtfUND' \
    --storeId 'smMSuWfOA6GKrVXp' \
    --viewId '8XDJG7iwC2axogVX' \
    > test.out 2>&1
eval_tap $? 430 'PublicListActiveSections' test.out

#- 431 PublicQueryUserSubscriptions
samples/cli/sample-apps Platform publicQueryUserSubscriptions \
    --namespace $AB_NAMESPACE \
    --userId 'rxOSVAHkXhb4KNdO' \
    --chargeStatus 'CHARGED' \
    --itemId 'vile2czudgO5Ua05' \
    --limit '78' \
    --offset '20' \
    --sku '2ZWHB9fLgEV3n2kS' \
    --status 'EXPIRED' \
    --subscribedBy 'PLATFORM' \
    > test.out 2>&1
eval_tap $? 431 'PublicQueryUserSubscriptions' test.out

#- 432 PublicSubscribeSubscription
samples/cli/sample-apps Platform publicSubscribeSubscription \
    --namespace $AB_NAMESPACE \
    --userId 'uGBwwEtFwy2k34SA' \
    --body '{"currencyCode": "dCv0yrQnp7LM8Cnc", "itemId": "SWJLBYQ94iDuOuEK", "language": "hU-Uvmm", "region": "11G3umEPcLTkQKxz", "returnUrl": "AsS1xZHJ5boOXsP6", "source": "N0VSIczKm6BFHsvw"}' \
    > test.out 2>&1
eval_tap $? 432 'PublicSubscribeSubscription' test.out

#- 433 PublicCheckUserSubscriptionSubscribableByItemId
samples/cli/sample-apps Platform publicCheckUserSubscriptionSubscribableByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'cRqkgmvJeJojdHwW' \
    --itemId 'RQTnSKxhlygo6qSc' \
    > test.out 2>&1
eval_tap $? 433 'PublicCheckUserSubscriptionSubscribableByItemId' test.out

#- 434 PublicGetUserSubscription
samples/cli/sample-apps Platform publicGetUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'Q05IIiaDY8tR7xEZ' \
    --userId 'Uns2NNF94A8tFJTC' \
    > test.out 2>&1
eval_tap $? 434 'PublicGetUserSubscription' test.out

#- 435 PublicChangeSubscriptionBillingAccount
samples/cli/sample-apps Platform publicChangeSubscriptionBillingAccount \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'rEuiyahIkpI9S2ti' \
    --userId 'oNcbZZmktUzfin31' \
    > test.out 2>&1
eval_tap $? 435 'PublicChangeSubscriptionBillingAccount' test.out

#- 436 PublicCancelSubscription
samples/cli/sample-apps Platform publicCancelSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId '3t5u1YcAxuovSXXY' \
    --userId 'h4nFbLwTwfp0MplG' \
    --body '{"immediate": true, "reason": "kfz5mZuA6Yb7DGT9"}' \
    > test.out 2>&1
eval_tap $? 436 'PublicCancelSubscription' test.out

#- 437 PublicGetUserSubscriptionBillingHistories
samples/cli/sample-apps Platform publicGetUserSubscriptionBillingHistories \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'veOZInWhGFxSKpH1' \
    --userId 'V2nkz5HNb69FopfO' \
    --excludeFree 'true' \
    --limit '12' \
    --offset '65' \
    > test.out 2>&1
eval_tap $? 437 'PublicGetUserSubscriptionBillingHistories' test.out

#- 438 PublicListViews
samples/cli/sample-apps Platform publicListViews \
    --namespace $AB_NAMESPACE \
    --userId 'MLVpGUOXFBfuad7B' \
    --language '2cqcavnpRkb8OFbX' \
    --storeId 'nLsdOqzbmXIo3pOS' \
    > test.out 2>&1
eval_tap $? 438 'PublicListViews' test.out

#- 439 PublicGetWallet
samples/cli/sample-apps Platform publicGetWallet \
    --currencyCode 'gofCVyRND7eLtlAq' \
    --namespace $AB_NAMESPACE \
    --userId 'ukGi08Au82S0slpf' \
    > test.out 2>&1
eval_tap $? 439 'PublicGetWallet' test.out

#- 440 PublicListUserWalletTransactions
samples/cli/sample-apps Platform publicListUserWalletTransactions \
    --currencyCode 'CReYhHsITsYeiL67' \
    --namespace $AB_NAMESPACE \
    --userId 'lKlzX8SjAhHPLy4W' \
    --limit '1' \
    --offset '12' \
    > test.out 2>&1
eval_tap $? 440 'PublicListUserWalletTransactions' test.out

#- 441 QueryItems1
samples/cli/sample-apps Platform queryItems1 \
    --namespace $AB_NAMESPACE \
    --appType 'GAME' \
    --availableDate 'bJmP1U9NO2jhuhQF' \
    --baseAppId 'ux9GQEWxk4ZxL34x' \
    --categoryPath '0vewADGcTBv4PjmP' \
    --features 'zjwXeIufZPNWk9qG' \
    --includeSubCategoryItem 'false' \
    --itemName 'JBYx2CHn0jbi3jdB' \
    --itemStatus 'INACTIVE' \
    --itemType 'SEASON' \
    --limit '2' \
    --offset '3' \
    --region '2ivKFyiShY0BFFIs' \
    --sectionExclusive 'false' \
    --sortBy '["displayOrder", "createdAt:asc", "displayOrder:desc"]' \
    --storeId 'J3bhIOLFG3A5QUyT' \
    --tags 'FYTZbzk71oFNoYMQ' \
    --targetNamespace 'zq10qj3RnAdSyKKj' \
    --withTotal 'true' \
    > test.out 2>&1
eval_tap $? 441 'QueryItems1' test.out

#- 442 ImportStore1
samples/cli/sample-apps Platform importStore1 \
    --namespace $AB_NAMESPACE \
    --storeId 'DS70EFCHIBic3J5Z' \
    --strictMode 'false' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 442 'ImportStore1' test.out

#- 443 ExportStore1
samples/cli/sample-apps Platform exportStore1 \
    --namespace $AB_NAMESPACE \
    --storeId 'h3G6w1ENwMtNtLbr' \
    --body '{"itemIds": ["ZloaZYKqBskC3lZ9", "WFmtbMZxjMUV10AO", "wpQQKjsEyyKOZuyt"]}' \
    > test.out 2>&1
eval_tap $? 443 'ExportStore1' test.out

#- 444 FulfillRewardsV2
samples/cli/sample-apps Platform fulfillRewardsV2 \
    --namespace $AB_NAMESPACE \
    --userId 'xFUxmOpwPADvvGpM' \
    --body '{"entitlementCollectionId": "bH20W5TZXphIQgZ2", "entitlementOrigin": "Epic", "metadata": {"oZWYSclv1BtbWMKU": {}, "mKarEMQpg2GgbDSo": {}, "0EtU8K0A4HDQnlFZ": {}}, "origin": "GooglePlay", "rewards": [{"currency": {"currencyCode": "pGDhLAxlxwoYpsCa", "namespace": "okxrUaEDKmXdIW1O"}, "item": {"itemId": "pRcx9LaLk3pWRhsE", "itemSku": "dAftJS5LGOLcNmur", "itemType": "gPIDRFxIZeNSVoBc"}, "quantity": 41, "type": "ITEM"}, {"currency": {"currencyCode": "VQa3KuFZVe79ZNJ8", "namespace": "X1nk8RO54snav8uc"}, "item": {"itemId": "PyfJA6cQPNSk5PD5", "itemSku": "heccTmk5DQKpvJCA", "itemType": "rZSD1AnXOXxIyMGS"}, "quantity": 76, "type": "ITEM"}, {"currency": {"currencyCode": "sDdycK01uns2AMTQ", "namespace": "n6y9Qvxuo79oI8Ul"}, "item": {"itemId": "MrJA8MWtoD6BcrmM", "itemSku": "LFE47KIh6KDr0HtT", "itemType": "Vo8EFM2HKPZHeIpp"}, "quantity": 19, "type": "ITEM"}], "source": "PURCHASE", "transactionId": "KZKwzKLxRtdeokuq"}' \
    > test.out 2>&1
eval_tap $? 444 'FulfillRewardsV2' test.out


rm -f "tmp.dat"

exit $EXIT_CODE