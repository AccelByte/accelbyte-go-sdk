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
echo "1..432"

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
    --id 'B3yg07Omgzpjvs0W' \
    > test.out 2>&1
eval_tap $? 3 'GetFulfillmentScript' test.out

#- 4 CreateFulfillmentScript
samples/cli/sample-apps Platform createFulfillmentScript \
    --id 'qZ7upItOGl7nSd1Q' \
    --body '{"grantDays": "IZYzE5hvlUGbSVCN"}' \
    > test.out 2>&1
eval_tap $? 4 'CreateFulfillmentScript' test.out

#- 5 DeleteFulfillmentScript
samples/cli/sample-apps Platform deleteFulfillmentScript \
    --id 'pYIzOAWKhpLwmSuL' \
    > test.out 2>&1
eval_tap $? 5 'DeleteFulfillmentScript' test.out

#- 6 UpdateFulfillmentScript
samples/cli/sample-apps Platform updateFulfillmentScript \
    --id '7JqxYo1ckDnLJzhY' \
    --body '{"grantDays": "WeXzx8uSq6hL1MRy"}' \
    > test.out 2>&1
eval_tap $? 6 'UpdateFulfillmentScript' test.out

#- 7 ListItemTypeConfigs
samples/cli/sample-apps Platform listItemTypeConfigs \
    > test.out 2>&1
eval_tap $? 7 'ListItemTypeConfigs' test.out

#- 8 CreateItemTypeConfig
samples/cli/sample-apps Platform createItemTypeConfig \
    --body '{"clazz": "iG6R12ntfk4EnbZy", "dryRun": false, "fulfillmentUrl": "YzFZHw4zchoia7yQ", "itemType": "SUBSCRIPTION", "purchaseConditionUrl": "1DgcSVmnpDeahEEy"}' \
    > test.out 2>&1
eval_tap $? 8 'CreateItemTypeConfig' test.out

#- 9 SearchItemTypeConfig
samples/cli/sample-apps Platform searchItemTypeConfig \
    --clazz 'J7C8Pdi4m04xlJsM' \
    --itemType 'INGAMEITEM' \
    > test.out 2>&1
eval_tap $? 9 'SearchItemTypeConfig' test.out

#- 10 GetItemTypeConfig
samples/cli/sample-apps Platform getItemTypeConfig \
    --id 'wpeqzPgR1bsHJlWc' \
    > test.out 2>&1
eval_tap $? 10 'GetItemTypeConfig' test.out

#- 11 UpdateItemTypeConfig
samples/cli/sample-apps Platform updateItemTypeConfig \
    --id 'VOP6I6XSkzgJxcVp' \
    --body '{"clazz": "Cq2Yq4ukhsFdWI3m", "dryRun": true, "fulfillmentUrl": "Q545knjikC0GbGsA", "purchaseConditionUrl": "cWTE7HO2r5m0fxE4"}' \
    > test.out 2>&1
eval_tap $? 11 'UpdateItemTypeConfig' test.out

#- 12 DeleteItemTypeConfig
samples/cli/sample-apps Platform deleteItemTypeConfig \
    --id '4KV4ubPGQ6QnDzxm' \
    > test.out 2>&1
eval_tap $? 12 'DeleteItemTypeConfig' test.out

#- 13 QueryCampaigns
samples/cli/sample-apps Platform queryCampaigns \
    --namespace $AB_NAMESPACE \
    --limit '21' \
    --name 'w47FxVftVYbjHK8X' \
    --offset '23' \
    --tag '93ybck5yn8SOb63e' \
    > test.out 2>&1
eval_tap $? 13 'QueryCampaigns' test.out

#- 14 CreateCampaign
samples/cli/sample-apps Platform createCampaign \
    --namespace $AB_NAMESPACE \
    --body '{"description": "ikgAw4V1N3hrulZw", "items": [{"extraSubscriptionDays": 45, "itemId": "ndk9EDpFvSniNWvZ", "itemName": "1faUbQStMfR0zMRA", "quantity": 87}, {"extraSubscriptionDays": 69, "itemId": "VXKOBfMxTglU1XyY", "itemName": "RrgDR27HQhWufHbb", "quantity": 33}, {"extraSubscriptionDays": 49, "itemId": "5zNrUpz3aH2pj4Nd", "itemName": "DBmPvD3RTSow2TAf", "quantity": 77}], "maxRedeemCountPerCampaignPerUser": 34, "maxRedeemCountPerCode": 40, "maxRedeemCountPerCodePerUser": 22, "maxSaleCount": 29, "name": "v30VNwWiunkx7ot2", "redeemEnd": "1994-08-31T00:00:00Z", "redeemStart": "1999-04-18T00:00:00Z", "redeemType": "ITEM", "status": "ACTIVE", "tags": ["WGT1HK1ymQI7QsK6", "9cjJeAKEuOeTgrNt", "XnAsu8BuJdlWEEAL"], "type": "REDEMPTION"}' \
    > test.out 2>&1
eval_tap $? 14 'CreateCampaign' test.out

#- 15 GetCampaign
samples/cli/sample-apps Platform getCampaign \
    --campaignId 'AP8TaUXvIAkcxzKD' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 15 'GetCampaign' test.out

#- 16 UpdateCampaign
samples/cli/sample-apps Platform updateCampaign \
    --campaignId 'VP8KjBdkve5Jxhdr' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "wEiZYDPOA6Skz61W", "items": [{"extraSubscriptionDays": 42, "itemId": "5CkGroBnBDoUYmY3", "itemName": "BU33KscD7aM2xwZU", "quantity": 68}, {"extraSubscriptionDays": 52, "itemId": "qJbt855AScXwo5A1", "itemName": "wjzCS0nA9VZN6G0A", "quantity": 7}, {"extraSubscriptionDays": 86, "itemId": "h4k3v89dg8pSietQ", "itemName": "wWLPTAov5UwLZhXC", "quantity": 72}], "maxRedeemCountPerCampaignPerUser": 69, "maxRedeemCountPerCode": 72, "maxRedeemCountPerCodePerUser": 60, "maxSaleCount": 57, "name": "dsolB1pU4PRnx7g6", "redeemEnd": "1997-01-26T00:00:00Z", "redeemStart": "1977-10-29T00:00:00Z", "redeemType": "ITEM", "status": "ACTIVE", "tags": ["7H08mjTWZxwyNPtm", "RlbpYZ0XSe27eVd2", "e26SgHqru6NmxeAy"]}' \
    > test.out 2>&1
eval_tap $? 16 'UpdateCampaign' test.out

#- 17 GetCampaignDynamic
samples/cli/sample-apps Platform getCampaignDynamic \
    --campaignId 'GLlDYZCiiTyymKJ5' \
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
    --body '{"appConfig": {"appName": "5ymeU4d7LC6zieQR"}, "customConfig": {"connectionType": "TLS", "grpcServerAddress": "ExKIKjkfOUQPYukK"}, "extendType": "APP"}' \
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
    --body '{"appConfig": {"appName": "PjatbeR0v6YvtKfA"}, "customConfig": {"connectionType": "INSECURE", "grpcServerAddress": "AmJuufB5ZLvFy56z"}, "extendType": "CUSTOM"}' \
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
    --storeId 'icgHvUTXkZEuy5SI' \
    > test.out 2>&1
eval_tap $? 27 'GetRootCategories' test.out

#- 28 CreateCategory
samples/cli/sample-apps Platform createCategory \
    --namespace $AB_NAMESPACE \
    --storeId 'nAOn826XcG5nXnhR' \
    --body '{"categoryPath": "rOURKIW4senW1nMd", "localizationDisplayNames": {"FVhezacyTLwZ9z12": "HaKybf5Kgdj90GZd", "kok5l5sjKwPLNsaw": "Doiz38XFwi7cafPA", "UfREkHrFSEO9OTyE": "JDn32MECVEOSKdqI"}}' \
    > test.out 2>&1
eval_tap $? 28 'CreateCategory' test.out

#- 29 ListCategoriesBasic
samples/cli/sample-apps Platform listCategoriesBasic \
    --namespace $AB_NAMESPACE \
    --storeId 'DVaDYTkkx2nf3qcy' \
    > test.out 2>&1
eval_tap $? 29 'ListCategoriesBasic' test.out

#- 30 GetCategory
samples/cli/sample-apps Platform getCategory \
    --categoryPath '9jbeBsSzUmbIRLb3' \
    --namespace $AB_NAMESPACE \
    --storeId 'f0vJwKpc2RW6hgvV' \
    > test.out 2>&1
eval_tap $? 30 'GetCategory' test.out

#- 31 UpdateCategory
samples/cli/sample-apps Platform updateCategory \
    --categoryPath 'i7cXr0wNKxiRE1Hk' \
    --namespace $AB_NAMESPACE \
    --storeId 'YnfwfsClNXt8Farc' \
    --body '{"localizationDisplayNames": {"oGM1dH01Bkyq2kKC": "9ICDwMasXbdlyGZS", "PuT0n78XlRVLet8y": "kPGKM300OigXfjJJ", "gLsnMFXECmj7b6WF": "z84pzJe7HrMeFgTd"}}' \
    > test.out 2>&1
eval_tap $? 31 'UpdateCategory' test.out

#- 32 DeleteCategory
samples/cli/sample-apps Platform deleteCategory \
    --categoryPath 'c9EZNFMDIkyt1IFD' \
    --namespace $AB_NAMESPACE \
    --storeId 'u0tcA7WfltfZ21B6' \
    > test.out 2>&1
eval_tap $? 32 'DeleteCategory' test.out

#- 33 GetChildCategories
samples/cli/sample-apps Platform getChildCategories \
    --categoryPath 'hwWV0PbvjwEvuy7Q' \
    --namespace $AB_NAMESPACE \
    --storeId '7monnR6eqnMsxa5t' \
    > test.out 2>&1
eval_tap $? 33 'GetChildCategories' test.out

#- 34 GetDescendantCategories
samples/cli/sample-apps Platform getDescendantCategories \
    --categoryPath 'TYlRqQSluXlKeCMP' \
    --namespace $AB_NAMESPACE \
    --storeId '5F57R3dzNZHTL7Ev' \
    > test.out 2>&1
eval_tap $? 34 'GetDescendantCategories' test.out

#- 35 QueryCodes
samples/cli/sample-apps Platform queryCodes \
    --campaignId 'hFqnaEwouFxOpS6H' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --batchNo '95' \
    --code 'fQZ3WudQOCoQQaDK' \
    --limit '67' \
    --offset '76' \
    > test.out 2>&1
eval_tap $? 35 'QueryCodes' test.out

#- 36 CreateCodes
samples/cli/sample-apps Platform createCodes \
    --campaignId 'ImVPI4v28ifHKxql' \
    --namespace $AB_NAMESPACE \
    --body '{"quantity": 57}' \
    > test.out 2>&1
eval_tap $? 36 'CreateCodes' test.out

#- 37 Download
samples/cli/sample-apps Platform download \
    --campaignId 'dZZrbhyX4nTjzG8a' \
    --namespace $AB_NAMESPACE \
    --batchNo '96' \
    > test.out 2>&1
eval_tap $? 37 'Download' test.out

#- 38 BulkDisableCodes
samples/cli/sample-apps Platform bulkDisableCodes \
    --campaignId 'HwfaAzjwqMlTXn3u' \
    --namespace $AB_NAMESPACE \
    --batchNo '65' \
    > test.out 2>&1
eval_tap $? 38 'BulkDisableCodes' test.out

#- 39 BulkEnableCodes
samples/cli/sample-apps Platform bulkEnableCodes \
    --campaignId 'RHNcJgkFFyd5VyOT' \
    --namespace $AB_NAMESPACE \
    --batchNo '26' \
    > test.out 2>&1
eval_tap $? 39 'BulkEnableCodes' test.out

#- 40 QueryRedeemHistory
samples/cli/sample-apps Platform queryRedeemHistory \
    --campaignId 'ra9xPSbzUybdkvoT' \
    --namespace $AB_NAMESPACE \
    --code 'YrOzNl93k2kTIQob' \
    --limit '75' \
    --offset '5' \
    --userId 'mXY9V9W4Nc641JkA' \
    > test.out 2>&1
eval_tap $? 40 'QueryRedeemHistory' test.out

#- 41 GetCode
samples/cli/sample-apps Platform getCode \
    --code 'FuOre8c1tpFpjuXo' \
    --namespace $AB_NAMESPACE \
    --redeemable 'false' \
    > test.out 2>&1
eval_tap $? 41 'GetCode' test.out

#- 42 DisableCode
samples/cli/sample-apps Platform disableCode \
    --code 'I1rCvbwmmqzugfYQ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 42 'DisableCode' test.out

#- 43 EnableCode
samples/cli/sample-apps Platform enableCode \
    --code 'Omc5ayW9Uh5k6aVZ' \
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
    --body '{"currencyCode": "zI0zpX5OVGpuiGdi", "currencySymbol": "48rVvKzRi3jE9Q2R", "currencyType": "REAL", "decimals": 9, "localizationDescriptions": {"qokBeUWFAlPCuctD": "v9hbUZAKt4xLLaA4", "Dxopdpy0xNQtJRpR": "jAugjY8YhpeHtpDz", "mfVc0cp6VsTQaf57": "gkAB6jPiKDIF4n5g"}}' \
    > test.out 2>&1
eval_tap $? 48 'CreateCurrency' test.out

#- 49 UpdateCurrency
samples/cli/sample-apps Platform updateCurrency \
    --currencyCode 'bk2CHEkqMoVAmG5p' \
    --namespace $AB_NAMESPACE \
    --body '{"localizationDescriptions": {"T7EI6wWhZJrC6jpz": "8oak3hFSP3d3LnDh", "hiRL6lJooXNrD0oL": "MNDtJWujkylSf3KY", "S1shT137av7fMW8m": "QKjKwkV4wZuXi5CM"}}' \
    > test.out 2>&1
eval_tap $? 49 'UpdateCurrency' test.out

#- 50 DeleteCurrency
samples/cli/sample-apps Platform deleteCurrency \
    --currencyCode 'uJlU7a9fsxBSp3hb' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 50 'DeleteCurrency' test.out

#- 51 GetCurrencyConfig
samples/cli/sample-apps Platform getCurrencyConfig \
    --currencyCode 'VfxosCUqi10sD68c' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 51 'GetCurrencyConfig' test.out

#- 52 GetCurrencySummary
samples/cli/sample-apps Platform getCurrencySummary \
    --currencyCode '98LTASoFDyXIG9TW' \
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
    --body '{"data": [{"id": "TQeI7kHNVIHmJq1b", "rewards": [{"currency": {"currencyCode": "hgdfd5EhAawnbSsr", "namespace": "viujWu66s8d2jL6Q"}, "item": {"itemId": "jy1M8UePsuaFFYd4", "itemSku": "NakLlc7h7wmTftr7", "itemType": "GvCj8Bu7DuqR0fcv"}, "quantity": 12, "type": "CURRENCY"}, {"currency": {"currencyCode": "qbf6UXpXchWTd7jB", "namespace": "GvKR7iO6nVTi1EL6"}, "item": {"itemId": "QKNTpWuTFsCQhBvW", "itemSku": "jT80dq3qGQAQ55II", "itemType": "SGs6u0JJ8yjEc2M0"}, "quantity": 57, "type": "CURRENCY"}, {"currency": {"currencyCode": "4SKy7SngPHMkeMqL", "namespace": "zT9dYg2Sf7DOPtUN"}, "item": {"itemId": "zQP1IqJb88DqGg0z", "itemSku": "KKeNiL0uXLNSipXm", "itemType": "jt3FjVrJmMxSqAmb"}, "quantity": 44, "type": "ITEM"}]}, {"id": "gM13BkB9g1tp5YeR", "rewards": [{"currency": {"currencyCode": "fJynuTpSC7UO2vWD", "namespace": "QK9jRRIbi3aPmX9h"}, "item": {"itemId": "Kw5JBPuQCRsVSZ2h", "itemSku": "8gDi0upqwP41mN1V", "itemType": "RQT5ZXApSIFrauRL"}, "quantity": 72, "type": "ITEM"}, {"currency": {"currencyCode": "R5MD39XIw8bfx13q", "namespace": "bsfn3we2CHrZ4K9U"}, "item": {"itemId": "spDyOELWiYrX70IL", "itemSku": "NzbrCPS4707wygN3", "itemType": "1l6fhAt3jLcUqcJC"}, "quantity": 66, "type": "CURRENCY"}, {"currency": {"currencyCode": "b3uUu6owueHsRVXZ", "namespace": "jnDL2Piiv6FLMY8j"}, "item": {"itemId": "j57xz6CC2NuWasFT", "itemSku": "T9ecQstn85ezjXhx", "itemType": "4Tm4cvT0us2BMjDK"}, "quantity": 96, "type": "CURRENCY"}]}, {"id": "33FRIKLjTwnvzAgQ", "rewards": [{"currency": {"currencyCode": "1kIrkDOHP9GkKGiO", "namespace": "BpHlAixZt4jlepCr"}, "item": {"itemId": "eFRDlXw3nd6au0Rb", "itemSku": "U7fYXmGYsHCnORF7", "itemType": "JuXzh39PdPNIrhDc"}, "quantity": 1, "type": "CURRENCY"}, {"currency": {"currencyCode": "wS5qhqb10k2xRViU", "namespace": "dfdYjsDZryLmPief"}, "item": {"itemId": "dNWyeSVuBk9ZhP4D", "itemSku": "r2dq0hMuxajD3Fti", "itemType": "Ec5pdFWGF4gAsLIE"}, "quantity": 19, "type": "ITEM"}, {"currency": {"currencyCode": "uqHK5AAMDC1d6euQ", "namespace": "zn3uRSMYaewHwvqQ"}, "item": {"itemId": "N9loE5bMflc3q0pX", "itemSku": "IzrDUjvdl5MpLTXw", "itemType": "MGzhDtjl4ePCgflQ"}, "quantity": 37, "type": "ITEM"}]}]}' \
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
    --body '{"data": [{"platform": "XBOX", "platformDlcIdMap": {"EjEnnk0LSELlLbZx": "W38A3qanlfvsPIgf", "QITWis0oBY9h0Evx": "yHKeuYOCeKlibLQM", "C2JPw9VZSYoGSHT8": "z1sAMped96WQ8KY0"}}, {"platform": "PSN", "platformDlcIdMap": {"bhaIxRgki1xpDxOi": "GXQOQ78ySD9Roica", "p2J9R1ahJ1DBlyi0": "l9Cgn5BXFLUSERan", "yFQBM5LtEG3KJv9n": "Vp3jGHhvcSVxrofX"}}, {"platform": "STEAM", "platformDlcIdMap": {"Odzv9ICIHuW6KStt": "fpDE5jkHKPPnQXQf", "GEMz61rAAClb3j5i": "tCj90Z0udtLjJR9A", "bv2DZK3XZMW6hPlT": "jrmYbZn2jSlGJvw2"}}]}' \
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
    --entitlementClazz 'LOOTBOX' \
    --entitlementName '6iiwdCIkhUDrcduk' \
    --itemId '["rgLYqdhZkeVTFPlv", "HUzgElFE3dY1p1i5", "PMupUi6uhrDUr4Jz"]' \
    --limit '38' \
    --offset '6' \
    --userId 'fqYyWNmf6n5cSdtD' \
    > test.out 2>&1
eval_tap $? 59 'QueryEntitlements' test.out

#- 60 QueryEntitlements1
samples/cli/sample-apps Platform queryEntitlements1 \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --itemIds '["KJ3pOrUf055qqAOR", "JoUjAerDJMaOJfqQ", "ap76M45Fja3kZ7DE"]' \
    --limit '12' \
    --offset '52' \
    > test.out 2>&1
eval_tap $? 60 'QueryEntitlements1' test.out

#- 61 GrantEntitlements
samples/cli/sample-apps Platform grantEntitlements \
    --namespace $AB_NAMESPACE \
    --body '{"entitlementGrantList": [{"endDate": "1999-08-29T00:00:00Z", "grantedCode": "xNhhQajX8TLltYIm", "itemId": "pKCYOaAmfUtfxScJ", "itemNamespace": "Fp4XcVZtnKoIMTi9", "language": "Gjp-DBmg", "quantity": 59, "region": "MzcvNMgU8fHqV8rQ", "source": "PROMOTION", "startDate": "1973-07-06T00:00:00Z", "storeId": "0ZrqOzbDsLtr5TID"}, {"endDate": "1986-10-30T00:00:00Z", "grantedCode": "dJfaBDGGB3j4iK78", "itemId": "uyzcwDomJw8hvBGo", "itemNamespace": "KZqxnOQbuoqQW6W9", "language": "ww-lcOG-yY", "quantity": 96, "region": "9dcM0cssdJedhRFO", "source": "ACHIEVEMENT", "startDate": "1975-10-22T00:00:00Z", "storeId": "ONL39MyQilxvS37J"}, {"endDate": "1977-06-29T00:00:00Z", "grantedCode": "K7tq87RTwLivbDwj", "itemId": "SaYOIpPWfPtivXJA", "itemNamespace": "pbwVzCcFViz17sH3", "language": "os", "quantity": 6, "region": "C2UXkIx4h4Sq7Dua", "source": "GIFT", "startDate": "1975-05-03T00:00:00Z", "storeId": "MAgeQqJPjMGLdFyk"}], "userIds": ["BEzX0jRThX7pkL1R", "8Gh4jwXuRp7eKy17", "6E0nf4OmGSgg59xI"]}' \
    > test.out 2>&1
eval_tap $? 61 'GrantEntitlements' test.out

#- 62 RevokeEntitlements
samples/cli/sample-apps Platform revokeEntitlements \
    --namespace $AB_NAMESPACE \
    --body '["WlfbWDcJ9WEPa0SF", "Rl5r3KEMeP5wdrmP", "mkO6165dM5d6QcbV"]' \
    > test.out 2>&1
eval_tap $? 62 'RevokeEntitlements' test.out

#- 63 GetEntitlement
samples/cli/sample-apps Platform getEntitlement \
    --entitlementId '69RcX4HMbG9Lg2kL' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 63 'GetEntitlement' test.out

#- 64 QueryFulfillmentHistories
samples/cli/sample-apps Platform queryFulfillmentHistories \
    --namespace $AB_NAMESPACE \
    --limit '88' \
    --offset '47' \
    --status 'FAIL' \
    --userId 'fflpYplvS72R2jOH' \
    > test.out 2>&1
eval_tap $? 64 'QueryFulfillmentHistories' test.out

#- 65 QueryIAPClawbackHistory
samples/cli/sample-apps Platform queryIAPClawbackHistory \
    --namespace $AB_NAMESPACE \
    --endTime 'rFafV1I5bEJEwiNP' \
    --eventType 'CHARGEBACK' \
    --externalOrderId 'gVyg8EIm2FhxGENJ' \
    --limit '82' \
    --offset '71' \
    --startTime 'LOROkoa0R1MKZ5Xa' \
    --status 'FAIL' \
    --userId 'Ib0fSxtagUnIBkGg' \
    > test.out 2>&1
eval_tap $? 65 'QueryIAPClawbackHistory' test.out

#- 66 MockPlayStationStreamEvent
samples/cli/sample-apps Platform mockPlayStationStreamEvent \
    --namespace $AB_NAMESPACE \
    --body '{"body": {"account": "QW8mIOof9V6ZIVmp", "additionalData": {"entitlement": [{"clientTransaction": [{"amountConsumed": 50, "clientTransactionId": "8lCSXQ1ei0XQVRoE"}, {"amountConsumed": 25, "clientTransactionId": "MG96GPEqpEsgzW2t"}, {"amountConsumed": 14, "clientTransactionId": "51yNYrnmVryOErvP"}], "entitlementId": "I7uwl0HE5FWNLD2c", "usageCount": 22}, {"clientTransaction": [{"amountConsumed": 32, "clientTransactionId": "FuDw8iZNCOUs5eQ8"}, {"amountConsumed": 2, "clientTransactionId": "z1hqKJyCRGWmbPg4"}, {"amountConsumed": 49, "clientTransactionId": "Idg3Ci7x3OwZ9xx8"}], "entitlementId": "SO97jLCtybe3QWKJ", "usageCount": 78}, {"clientTransaction": [{"amountConsumed": 71, "clientTransactionId": "CNtFT6mJLAOsLWrT"}, {"amountConsumed": 46, "clientTransactionId": "LdNjVh5IWF4EKLu5"}, {"amountConsumed": 72, "clientTransactionId": "Wrv0UetgXk9hwvVj"}], "entitlementId": "gxEWEJnEwN1kMmsE", "usageCount": 86}], "purpose": "KK6cqj70OSFvopo1"}, "originalTitleName": "Ocbal2mzs7M5SJcg", "paymentProductSKU": "dBPGIMRjpV7D9sWi", "purchaseDate": "kEbphYEymzxdI5ob", "sourceOrderItemId": "FQPVSePnEsBCxMDt", "titleName": "FFVLe8icYel9hHrQ"}, "eventDomain": "3GBSzsFQH0gmQpdK", "eventSource": "LN8SYKqbi6iKZqZQ", "eventType": "jLCrFmEJz3Rp8HGi", "eventVersion": 16, "id": "LSMEGMGF71A7pLO6", "timestamp": "pGxjXDzz87gYyuEY"}' \
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
    --body '{"bundleId": "8qeQYeILhoW0h24V", "password": "ECE2RTg7Lx5C2Iax"}' \
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
    --body '{"sandboxId": "B3RiaJ9CCoqHoXbQ"}' \
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
    --body '{"applicationName": "Sa8n5pQlArbvF8DI", "serviceAccountId": "iiiHOHqUsRMN1ooN"}' \
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
    --body '{"data": [{"itemIdentity": "5kLFkf2u4CAcgMXa", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"aKbiqN7C93ZGtgBI": "NgVXYF7a55G6pIZX", "NRkPBmw84wVmSuEC": "FJlzmaHZiJktOAbq", "6ITV0BQ3OuKUozdh": "lHP6jwMFfWHIZjMU"}}, {"itemIdentity": "qAMQmK1cY4FCrrDN", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"CMf6fnBOrwt64qAy": "8rDjbMEhKUoN4YTM", "yaFV1jQksOxPHWEC": "ZcWxoZ8MKkdgUrrk", "2vUjSyGXNC9qdboh": "S7lXeSoXRa41PURb"}}, {"itemIdentity": "7mGEutjDf1gw9mc8", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"ziLNF34rsNslkN8n": "JDF2orxpEVhfDKhB", "AFOLtQtxNjawio5T": "mLfPRMyPWJGvzI7b", "h2SoL2SRVYj3V6nS": "9P9e1CqupUPDdvPM"}}]}' \
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
    --body '{"appId": "iGbTLLnJriSfCWAr", "appSecret": "UyDRkIAr6ArNgaOi"}' \
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
    --body '{"backOfficeServerClientId": "poK1oKJD2pWbQlK2", "backOfficeServerClientSecret": "5ifbbNN639PPaigy", "enableStreamJob": false, "environment": "ZIkhutG8MPJHTkub", "streamName": "QpyTM8ZrJath0vqW", "streamPartnerName": "DrNxFQfzkYjJjlXG"}' \
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
    --body '{"backOfficeServerClientId": "bypjjToqnPK0JpT2", "backOfficeServerClientSecret": "0gllFId5b2Zca5uq", "enableStreamJob": true, "environment": "sMghkDgB4HnDrs4b", "streamName": "SbFUn9sigwHC4AD2", "streamPartnerName": "juxvYGeeCj8ygSiT"}' \
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
    --body '{"appId": "ndOnkXeBCscEnJTo", "publisherAuthenticationKey": "tRuFsRFwNHRxftJv"}' \
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
    --body '{"clientId": "ZPsgNWzDJ0DNenY0", "clientSecret": "CWPVxjb7HpRhdS2F", "organizationId": "Y5xnEJo8FvWUSP0M"}' \
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
    --body '{"relyingPartyCert": "McCtmkUZrNEHp0LQ"}' \
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
    --password 'vfrHeXnhxH6q2Ppm' \
    > test.out 2>&1
eval_tap $? 97 'UpdateXblBPCertFile' test.out

#- 98 DownloadInvoiceDetails
samples/cli/sample-apps Platform downloadInvoiceDetails \
    --namespace $AB_NAMESPACE \
    --feature 'zl68JUKn6FV7enPz' \
    --itemId 'migpPq4y1Y3qaN4c' \
    --itemType 'APP' \
    --endTime 'ityfW8iENj9QDvRs' \
    --startTime 'uuRyPchRJCmiPTnq' \
    > test.out 2>&1
eval_tap $? 98 'DownloadInvoiceDetails' test.out

#- 99 GenerateInvoiceSummary
samples/cli/sample-apps Platform generateInvoiceSummary \
    --namespace $AB_NAMESPACE \
    --feature 'ZcVW5SJhhSpXlZKu' \
    --itemId 'qQzVxAWQDghpq3Di' \
    --itemType 'OPTIONBOX' \
    --endTime 'P2NcSMHFx9txFyGF' \
    --startTime 'm0BDA1F5sWtOwapX' \
    > test.out 2>&1
eval_tap $? 99 'GenerateInvoiceSummary' test.out

#- 100 SyncInGameItem
samples/cli/sample-apps Platform syncInGameItem \
    --namespace $AB_NAMESPACE \
    --storeId '5lQ4ilg7jE095kPh' \
    --body '{"categoryPath": "2Mwx1D5ooDX4ZCdP", "targetItemId": "hbi9gPXyFT8gGVAD", "targetNamespace": "Jg0JE4FDOuwUuKF1"}' \
    > test.out 2>&1
eval_tap $? 100 'SyncInGameItem' test.out

#- 101 CreateItem
samples/cli/sample-apps Platform createItem \
    --namespace $AB_NAMESPACE \
    --storeId 'tQQSrzC09qbO3Xuv' \
    --body '{"appId": "mv0cd3DK4sLpQoHw", "appType": "GAME", "baseAppId": "sgvKbuC7scoWZpZE", "boothName": "Tqqrc06ow0LC8Y2M", "categoryPath": "jhOcKwpXKR5oCnVK", "clazz": "SxlxlaJ8w5wviAGR", "displayOrder": 85, "entitlementType": "CONSUMABLE", "ext": {"4ASL5VgoGVwIfSZJ": {}, "sx3wi9G8jYiPF50Z": {}, "MqTx9EDH7YfWcoRE": {}}, "features": ["5kUpdGbtcb6ZIrGS", "jJAvj3oTEWDKjK2Q", "c0sj90g7R4L0zuFJ"], "flexible": true, "images": [{"as": "iZ5CHEQ8UyQdjVun", "caption": "sSKOh7P0A48JEg1x", "height": 10, "imageUrl": "qX1Q3qe1uebPgZ05", "smallImageUrl": "ZhhcQe4Y62XPnQeK", "width": 27}, {"as": "i27akjvcHAyv7SWw", "caption": "nLeD9CDtRPBvoaKB", "height": 39, "imageUrl": "lNX1wDR9X0THXv9Q", "smallImageUrl": "9ixTuCGkmVmTCvys", "width": 86}, {"as": "eIXICVoN2zTJ6DX2", "caption": "UrsAxMf8zi5ajcNg", "height": 22, "imageUrl": "cwuVV9SDc9x58v6Y", "smallImageUrl": "uI3T4mdyI8248w1a", "width": 54}], "itemIds": ["Y4PvhPoIjarswwuB", "v9NBVHieK4ct6VND", "wYmoq7EsVRicxVYJ"], "itemQty": {"gQROcrayBeT07jNy": 83, "IBMA9bp8uJSqwDTr": 82, "q6WHxixN6b2TlvsW": 64}, "itemType": "OPTIONBOX", "listable": false, "localizations": {"L8SubQCv0PjVXFyH": {"description": "CFEuMkZPiNkmG93t", "localExt": {"sg0dBi5yW7dYt7UK": {}, "xcsTtyJ1RFZm4hen": {}, "0bv6qZR4YGUJNNAQ": {}}, "longDescription": "I5WkuGb8RV40TMQt", "title": "KOXrGzq9rIhbohC9"}, "gb2kZOtgoukZP7gk": {"description": "AUoadRoFaCEIWauq", "localExt": {"q65UM6mmFPWuOjGs": {}, "XUu97F587RrxKe9P": {}, "ytkjzqFQgAn05u3F": {}}, "longDescription": "kFUnJGVSleJlnJwQ", "title": "Ahr4sMA2EsFfDD8S"}, "dfMwLEauoEMGqFYk": {"description": "cfxKWie65O7RjwXx", "localExt": {"auGLVvnMy0W4UZ1G": {}, "Bb2R0H2oDrGYLVGy": {}, "ll3kREZzTNEJQRRo": {}}, "longDescription": "qhQQlFTsnI5Lpqfi", "title": "gPS7RtbgEDbZdGUe"}}, "lootBoxConfig": {"rewardCount": 81, "rewards": [{"lootBoxItems": [{"count": 58, "duration": 55, "endDate": "1973-06-05T00:00:00Z", "itemId": "SGLeWSziHX53FEoV", "itemSku": "DXlOMSjtvZ7ufGcF", "itemType": "Dtbk5VLJz46hHFOy"}, {"count": 67, "duration": 83, "endDate": "1972-08-13T00:00:00Z", "itemId": "KJajM04fIk9keWID", "itemSku": "ASUWtris7Dvebx2j", "itemType": "rB1F7lXMuZzUWDiX"}, {"count": 23, "duration": 51, "endDate": "1976-03-19T00:00:00Z", "itemId": "vEtpfyl5rjCsbrwF", "itemSku": "GdXEaV9XS6tbNE5s", "itemType": "y7Nmm2uvhhVpQqVK"}], "name": "OdGlO1vUIxcqYaL8", "odds": 0.4422046864367706, "type": "REWARD_GROUP", "weight": 77}, {"lootBoxItems": [{"count": 65, "duration": 79, "endDate": "1984-10-22T00:00:00Z", "itemId": "82vNwERKZBTOSJjq", "itemSku": "1Y138V0oVJn6bxbb", "itemType": "IaYn0kdO9OWpJx6X"}, {"count": 77, "duration": 19, "endDate": "1995-06-22T00:00:00Z", "itemId": "nuCf0SUxwYiN3iLU", "itemSku": "F1CK2ukuiSxGM5X9", "itemType": "uPVz3UCIB1LBmNRa"}, {"count": 85, "duration": 49, "endDate": "1973-09-08T00:00:00Z", "itemId": "RmvdqMUDXcGTTvfb", "itemSku": "efItAHv9U1BlIX3n", "itemType": "NkeazCulMMpwh5eh"}], "name": "qPVXlB8hJeCFeVLn", "odds": 0.04726682237435742, "type": "PROBABILITY_GROUP", "weight": 77}, {"lootBoxItems": [{"count": 87, "duration": 55, "endDate": "1978-09-10T00:00:00Z", "itemId": "xwkhKTBBhoQEKyse", "itemSku": "ZwfbwIGiGZGwShRN", "itemType": "CEo7OswgcHjInCgr"}, {"count": 29, "duration": 22, "endDate": "1974-09-09T00:00:00Z", "itemId": "s600uqfQBIpsGmNR", "itemSku": "irq8u0iKqs16JvNV", "itemType": "h00NBkHkgEjbb2OW"}, {"count": 49, "duration": 41, "endDate": "1971-04-22T00:00:00Z", "itemId": "aInWPMboXhoj6ZFM", "itemSku": "cqXaxlCtsAfAN3Dz", "itemType": "AVzAUkbD5eVI1J2q"}], "name": "MghnZ7fPaT8xLDK0", "odds": 0.3464971744055966, "type": "PROBABILITY_GROUP", "weight": 8}], "rollFunction": "CUSTOM"}, "maxCount": 21, "maxCountPerUser": 90, "name": "82g5iJ6P9MqShH6c", "optionBoxConfig": {"boxItems": [{"count": 43, "duration": 31, "endDate": "1976-05-20T00:00:00Z", "itemId": "reO4U7VnQnYkrsXb", "itemSku": "6rks2z8IAUmIQ9rX", "itemType": "RAA9WccRu7RApgHb"}, {"count": 8, "duration": 23, "endDate": "1984-05-06T00:00:00Z", "itemId": "k6fhB3bWTkbsW7xT", "itemSku": "3Mpjo7z68psFJLwI", "itemType": "yCIBgWnQz5KLEZMe"}, {"count": 72, "duration": 32, "endDate": "1979-02-08T00:00:00Z", "itemId": "2Uc5r6Vh2h9fUSva", "itemSku": "coUvG43ja5cNmRIf", "itemType": "BIQidSZMJN8TjzZh"}]}, "purchasable": false, "recurring": {"cycle": "QUARTERLY", "fixedFreeDays": 73, "fixedTrialCycles": 25, "graceDays": 8}, "regionData": {"KGf8vVPsPTWsM5lf": [{"currencyCode": "jhyZmSixUBsfEIxU", "currencyNamespace": "GsNLY6u0T6wAYlOJ", "currencyType": "REAL", "discountAmount": 46, "discountExpireAt": "1987-04-22T00:00:00Z", "discountPercentage": 38, "discountPurchaseAt": "1995-10-12T00:00:00Z", "expireAt": "1986-07-23T00:00:00Z", "price": 70, "purchaseAt": "1980-06-06T00:00:00Z", "trialPrice": 47}, {"currencyCode": "3u2iJkDIx85PDLwI", "currencyNamespace": "BGt3VwEzDbAUfkCr", "currencyType": "REAL", "discountAmount": 2, "discountExpireAt": "1973-08-05T00:00:00Z", "discountPercentage": 91, "discountPurchaseAt": "1976-09-21T00:00:00Z", "expireAt": "1985-08-02T00:00:00Z", "price": 59, "purchaseAt": "1995-03-03T00:00:00Z", "trialPrice": 47}, {"currencyCode": "vy7eACpnbh7phhOc", "currencyNamespace": "3ayv7BXmX8QODdCa", "currencyType": "VIRTUAL", "discountAmount": 6, "discountExpireAt": "1977-04-13T00:00:00Z", "discountPercentage": 21, "discountPurchaseAt": "1990-05-29T00:00:00Z", "expireAt": "1994-08-29T00:00:00Z", "price": 78, "purchaseAt": "1981-10-10T00:00:00Z", "trialPrice": 19}], "vFpe85Xaj9Lh4q8o": [{"currencyCode": "B1wu1aLMQ4ufAv2w", "currencyNamespace": "eh7qw0h7RsgXdZP8", "currencyType": "VIRTUAL", "discountAmount": 70, "discountExpireAt": "1986-06-14T00:00:00Z", "discountPercentage": 96, "discountPurchaseAt": "1979-05-30T00:00:00Z", "expireAt": "1984-03-11T00:00:00Z", "price": 83, "purchaseAt": "1987-12-18T00:00:00Z", "trialPrice": 62}, {"currencyCode": "GiOy30SakK7OWNGE", "currencyNamespace": "PySezHns0UnFfAkH", "currencyType": "REAL", "discountAmount": 41, "discountExpireAt": "1977-05-11T00:00:00Z", "discountPercentage": 30, "discountPurchaseAt": "1981-11-04T00:00:00Z", "expireAt": "1976-01-08T00:00:00Z", "price": 98, "purchaseAt": "1998-07-21T00:00:00Z", "trialPrice": 80}, {"currencyCode": "5XhMtBUALvuThgiy", "currencyNamespace": "jQ9CFHcRoiCjxOVy", "currencyType": "VIRTUAL", "discountAmount": 58, "discountExpireAt": "1974-07-14T00:00:00Z", "discountPercentage": 35, "discountPurchaseAt": "1971-01-21T00:00:00Z", "expireAt": "1973-04-13T00:00:00Z", "price": 59, "purchaseAt": "1983-03-21T00:00:00Z", "trialPrice": 98}], "YEgqTng9lF8UYpbX": [{"currencyCode": "TC1bG4tMFVBDFRlt", "currencyNamespace": "lI8kV5XwhJGtzT8d", "currencyType": "VIRTUAL", "discountAmount": 38, "discountExpireAt": "1984-06-24T00:00:00Z", "discountPercentage": 65, "discountPurchaseAt": "1992-05-20T00:00:00Z", "expireAt": "1975-10-30T00:00:00Z", "price": 42, "purchaseAt": "1971-10-26T00:00:00Z", "trialPrice": 91}, {"currencyCode": "j6C0mwi5oHfdyklP", "currencyNamespace": "cHmHaYdbd4lp0RAO", "currencyType": "VIRTUAL", "discountAmount": 50, "discountExpireAt": "1996-02-29T00:00:00Z", "discountPercentage": 62, "discountPurchaseAt": "1998-05-26T00:00:00Z", "expireAt": "1979-07-09T00:00:00Z", "price": 29, "purchaseAt": "1978-01-13T00:00:00Z", "trialPrice": 14}, {"currencyCode": "v44PhVXO8YPhNKKD", "currencyNamespace": "CqwnYeKGUWDwncsQ", "currencyType": "REAL", "discountAmount": 90, "discountExpireAt": "1974-01-07T00:00:00Z", "discountPercentage": 89, "discountPurchaseAt": "1980-05-14T00:00:00Z", "expireAt": "1991-12-07T00:00:00Z", "price": 74, "purchaseAt": "1973-03-16T00:00:00Z", "trialPrice": 40}]}, "saleConfig": {"currencyCode": "UrRRMp4WPorsUYra", "price": 48}, "seasonType": "TIER", "sectionExclusive": false, "sellable": false, "sku": "bk3QsiH3EWZoTn2o", "stackable": false, "status": "INACTIVE", "tags": ["utvtdFF33JzKLTZB", "xaOcMcQWlfFJolCf", "7uOwXCGYHxwwk0OT"], "targetCurrencyCode": "2imX2zMHRwaRh2Xe", "targetNamespace": "zqPBHYvTemXfFlkd", "thumbnailUrl": "yJJudlNBN3079zKj", "useCount": 39}' \
    > test.out 2>&1
eval_tap $? 101 'CreateItem' test.out

#- 102 GetItemByAppId
samples/cli/sample-apps Platform getItemByAppId \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --storeId 'mePsPMEPXRrvd60f' \
    --appId 'vsAk2LcrGsvVbPce' \
    > test.out 2>&1
eval_tap $? 102 'GetItemByAppId' test.out

#- 103 QueryItems
samples/cli/sample-apps Platform queryItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --appType 'GAME' \
    --availableDate 'GeVaqtwzDB7QZ3rt' \
    --baseAppId '2QxlrEXxgo0lttUo' \
    --categoryPath 'mH8ie9Pq3XN9B9k7' \
    --features 'gjLcSX0s0BFFGhI0' \
    --includeSubCategoryItem 'true' \
    --itemType 'INGAMEITEM' \
    --limit '87' \
    --offset '77' \
    --region 'MXosaw4BjuDFmd96' \
    --sortBy '["displayOrder:desc", "createdAt:desc"]' \
    --storeId 'KKb84DCOt0GHkWVN' \
    --tags 'r6dkfjF7HSQgSw91' \
    --targetNamespace 'SvPF9O9omL5ZPySc' \
    > test.out 2>&1
eval_tap $? 103 'QueryItems' test.out

#- 104 ListBasicItemsByFeatures
samples/cli/sample-apps Platform listBasicItemsByFeatures \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --features '["fNuLN28mCHSI7cJh", "ZqLF2THIXIFNMEOW", "k9g3h33GT6weNyP4"]' \
    > test.out 2>&1
eval_tap $? 104 'ListBasicItemsByFeatures' test.out

#- 105 GetItems
samples/cli/sample-apps Platform getItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --storeId 'TTvXMZGjynEba9u5' \
    --itemIds 'ClJy2xqToru2ionM' \
    > test.out 2>&1
eval_tap $? 105 'GetItems' test.out

#- 106 GetItemBySku
samples/cli/sample-apps Platform getItemBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --storeId 'QXKAJqN50navqw5h' \
    --sku 'NgRfyihIvPwHiBzy' \
    > test.out 2>&1
eval_tap $? 106 'GetItemBySku' test.out

#- 107 GetLocaleItemBySku
samples/cli/sample-apps Platform getLocaleItemBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --language 'v4anDNBFbLosTa8x' \
    --populateBundle 'true' \
    --region 'Xe8DaKibkFZIPEMc' \
    --storeId '4LBqbReTgyX9ZCSJ' \
    --sku '7DZEPPOJhGb3BS30' \
    > test.out 2>&1
eval_tap $? 107 'GetLocaleItemBySku' test.out

#- 108 GetEstimatedPrice
samples/cli/sample-apps Platform getEstimatedPrice \
    --namespace $AB_NAMESPACE \
    --region 'myzGREhXGxzji3Bq' \
    --storeId 't1A6dZH5aaK3rAYJ' \
    --itemIds 'XynOgkFynqn63JGm' \
    --userId 'pt9ZB6GPHQSMcHBt' \
    > test.out 2>&1
eval_tap $? 108 'GetEstimatedPrice' test.out

#- 109 GetItemIdBySku
samples/cli/sample-apps Platform getItemIdBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'Hr1IMhmteJPkazp6' \
    --sku 'a2sXeVx80DUrhiwN' \
    > test.out 2>&1
eval_tap $? 109 'GetItemIdBySku' test.out

#- 110 GetBulkItemIdBySkus
samples/cli/sample-apps Platform getBulkItemIdBySkus \
    --namespace $AB_NAMESPACE \
    --sku '["eVdOWwHCB0l8v0El", "dMxhdcmXOWC7HNjK", "FnqhHBUzDgK7wQL7"]' \
    --storeId 'WVAzmampjQZrbTtm' \
    > test.out 2>&1
eval_tap $? 110 'GetBulkItemIdBySkus' test.out

#- 111 BulkGetLocaleItems
samples/cli/sample-apps Platform bulkGetLocaleItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --language '7LKqPRwvzDiTGYly' \
    --region 'm3ie5IWqSGnYLo0X' \
    --storeId 'RcsbgZLoRZRl71rE' \
    --itemIds 'JPO1aYizdars5riM' \
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
    --userId '74YH3kiilSq5ZTPj' \
    --body '{"itemIds": ["q9KJHAIxSAA8nTSC", "YCn2TxBjbA5StQY6", "lMPRhfEdHUqoldwF"]}' \
    > test.out 2>&1
eval_tap $? 113 'ValidateItemPurchaseCondition' test.out

#- 114 BulkUpdateRegionData
samples/cli/sample-apps Platform bulkUpdateRegionData \
    --namespace $AB_NAMESPACE \
    --storeId 'xzR0hylbvWC21PHm' \
    --body '{"changes": [{"itemIdentities": ["QRCm8xJssw91QxEz", "jNnB6nLYMunfuEm9", "BLGmMWGHaE2YSEdc"], "itemIdentityType": "ITEM_ID", "regionData": {"XqLhvZKM2eMqqkCU": [{"currencyCode": "ml5HBY0qHomci0aR", "currencyNamespace": "UTRr3skkk3kIZsWO", "currencyType": "REAL", "discountAmount": 96, "discountExpireAt": "1991-02-10T00:00:00Z", "discountPercentage": 19, "discountPurchaseAt": "1980-11-13T00:00:00Z", "discountedPrice": 56, "expireAt": "1980-09-03T00:00:00Z", "price": 25, "purchaseAt": "1988-02-29T00:00:00Z", "trialPrice": 30}, {"currencyCode": "dUn6n5AjQ5b52nJB", "currencyNamespace": "OybtdrtheJNV3bxY", "currencyType": "REAL", "discountAmount": 52, "discountExpireAt": "1977-06-05T00:00:00Z", "discountPercentage": 56, "discountPurchaseAt": "1992-11-02T00:00:00Z", "discountedPrice": 64, "expireAt": "1973-05-05T00:00:00Z", "price": 61, "purchaseAt": "1986-08-08T00:00:00Z", "trialPrice": 21}, {"currencyCode": "2D6efLvSbDk6MST8", "currencyNamespace": "WcOF2wrjCeK1l881", "currencyType": "VIRTUAL", "discountAmount": 27, "discountExpireAt": "1978-12-05T00:00:00Z", "discountPercentage": 50, "discountPurchaseAt": "1982-09-11T00:00:00Z", "discountedPrice": 90, "expireAt": "1989-08-31T00:00:00Z", "price": 74, "purchaseAt": "1988-06-16T00:00:00Z", "trialPrice": 97}], "SUzRTa8glarmIW9M": [{"currencyCode": "u0sAVRmyMw7MF70v", "currencyNamespace": "yOr0lgbLQRDU9WLH", "currencyType": "VIRTUAL", "discountAmount": 75, "discountExpireAt": "1987-03-04T00:00:00Z", "discountPercentage": 55, "discountPurchaseAt": "1986-09-24T00:00:00Z", "discountedPrice": 9, "expireAt": "1992-01-15T00:00:00Z", "price": 59, "purchaseAt": "1993-02-12T00:00:00Z", "trialPrice": 54}, {"currencyCode": "qWo7rFEOMPjH8Hdn", "currencyNamespace": "zIMUeRAVMR4W7iI6", "currencyType": "REAL", "discountAmount": 57, "discountExpireAt": "1986-11-29T00:00:00Z", "discountPercentage": 89, "discountPurchaseAt": "1991-07-23T00:00:00Z", "discountedPrice": 5, "expireAt": "1971-12-07T00:00:00Z", "price": 15, "purchaseAt": "1996-11-19T00:00:00Z", "trialPrice": 80}, {"currencyCode": "2kGBKZGIUEctlK4y", "currencyNamespace": "RmUnbYk3zHuZK4i2", "currencyType": "VIRTUAL", "discountAmount": 56, "discountExpireAt": "1981-09-19T00:00:00Z", "discountPercentage": 75, "discountPurchaseAt": "1973-10-10T00:00:00Z", "discountedPrice": 68, "expireAt": "1971-02-23T00:00:00Z", "price": 66, "purchaseAt": "1985-05-22T00:00:00Z", "trialPrice": 98}], "Mpeb7AdVuX6GrLnW": [{"currencyCode": "CTrnSEKfXfm1fbUz", "currencyNamespace": "i649BsMEFIUNIf67", "currencyType": "REAL", "discountAmount": 1, "discountExpireAt": "1988-09-04T00:00:00Z", "discountPercentage": 54, "discountPurchaseAt": "1974-06-11T00:00:00Z", "discountedPrice": 95, "expireAt": "1990-07-12T00:00:00Z", "price": 81, "purchaseAt": "1976-02-23T00:00:00Z", "trialPrice": 62}, {"currencyCode": "pXgbud8868fHXjEV", "currencyNamespace": "GotEu52x5GC2sbcM", "currencyType": "VIRTUAL", "discountAmount": 89, "discountExpireAt": "1998-03-07T00:00:00Z", "discountPercentage": 42, "discountPurchaseAt": "1984-02-27T00:00:00Z", "discountedPrice": 78, "expireAt": "1994-03-27T00:00:00Z", "price": 3, "purchaseAt": "1973-09-25T00:00:00Z", "trialPrice": 12}, {"currencyCode": "7XnYmW5nn2XzNu0V", "currencyNamespace": "JfAv5Q6x9pvq9FO8", "currencyType": "VIRTUAL", "discountAmount": 9, "discountExpireAt": "1991-10-12T00:00:00Z", "discountPercentage": 57, "discountPurchaseAt": "1997-11-18T00:00:00Z", "discountedPrice": 77, "expireAt": "1995-03-27T00:00:00Z", "price": 96, "purchaseAt": "1990-10-06T00:00:00Z", "trialPrice": 45}]}}, {"itemIdentities": ["gpFVBfShelJghCXd", "PQTfx68p75pNJ6zz", "VZ1Qn7fU5gVPHhVe"], "itemIdentityType": "ITEM_ID", "regionData": {"xrho97LvYYHj5XbY": [{"currencyCode": "0dAVHEh7V6a8jEko", "currencyNamespace": "mOTVHNzChBl3pZU2", "currencyType": "REAL", "discountAmount": 81, "discountExpireAt": "1971-12-11T00:00:00Z", "discountPercentage": 12, "discountPurchaseAt": "1990-08-17T00:00:00Z", "discountedPrice": 21, "expireAt": "1973-03-08T00:00:00Z", "price": 8, "purchaseAt": "1993-01-27T00:00:00Z", "trialPrice": 97}, {"currencyCode": "gklPsXVPucXgiI0c", "currencyNamespace": "mXbAZq7gnjhfYvUr", "currencyType": "VIRTUAL", "discountAmount": 10, "discountExpireAt": "1995-06-27T00:00:00Z", "discountPercentage": 80, "discountPurchaseAt": "1978-02-10T00:00:00Z", "discountedPrice": 84, "expireAt": "1977-09-29T00:00:00Z", "price": 8, "purchaseAt": "1989-03-06T00:00:00Z", "trialPrice": 87}, {"currencyCode": "nxdnhdnywJwjfGji", "currencyNamespace": "q6hFWoYjZJJof4zP", "currencyType": "REAL", "discountAmount": 34, "discountExpireAt": "1993-02-19T00:00:00Z", "discountPercentage": 41, "discountPurchaseAt": "1995-11-19T00:00:00Z", "discountedPrice": 47, "expireAt": "1971-04-23T00:00:00Z", "price": 88, "purchaseAt": "1998-04-22T00:00:00Z", "trialPrice": 42}], "cTQWnYB77EK80hhh": [{"currencyCode": "huoasxNNHUZR1uEz", "currencyNamespace": "51WIi387g81C7hUq", "currencyType": "VIRTUAL", "discountAmount": 40, "discountExpireAt": "1972-10-01T00:00:00Z", "discountPercentage": 19, "discountPurchaseAt": "1986-07-01T00:00:00Z", "discountedPrice": 98, "expireAt": "1999-05-08T00:00:00Z", "price": 51, "purchaseAt": "1984-02-22T00:00:00Z", "trialPrice": 89}, {"currencyCode": "1SteCwvzs4HpeV8w", "currencyNamespace": "yxoskCIABpXDqKDl", "currencyType": "VIRTUAL", "discountAmount": 50, "discountExpireAt": "1973-01-08T00:00:00Z", "discountPercentage": 6, "discountPurchaseAt": "1986-02-26T00:00:00Z", "discountedPrice": 66, "expireAt": "1990-12-22T00:00:00Z", "price": 54, "purchaseAt": "1996-10-20T00:00:00Z", "trialPrice": 35}, {"currencyCode": "otFBcxBolLdjLwvl", "currencyNamespace": "Jm4SuIrZNesKKm6Q", "currencyType": "VIRTUAL", "discountAmount": 93, "discountExpireAt": "1993-02-13T00:00:00Z", "discountPercentage": 93, "discountPurchaseAt": "1982-01-10T00:00:00Z", "discountedPrice": 43, "expireAt": "1998-06-27T00:00:00Z", "price": 15, "purchaseAt": "1975-06-24T00:00:00Z", "trialPrice": 21}], "IlqVj4JrDuw44emv": [{"currencyCode": "5RK3P54Ah0EWL4VA", "currencyNamespace": "MFEoWreq4dC4vXsq", "currencyType": "REAL", "discountAmount": 0, "discountExpireAt": "1993-03-11T00:00:00Z", "discountPercentage": 58, "discountPurchaseAt": "1971-09-20T00:00:00Z", "discountedPrice": 72, "expireAt": "1984-11-13T00:00:00Z", "price": 25, "purchaseAt": "1982-03-08T00:00:00Z", "trialPrice": 35}, {"currencyCode": "qOLqVML4dq245kBc", "currencyNamespace": "FlPTdlsq923KIfho", "currencyType": "VIRTUAL", "discountAmount": 79, "discountExpireAt": "1972-01-03T00:00:00Z", "discountPercentage": 68, "discountPurchaseAt": "1995-02-22T00:00:00Z", "discountedPrice": 0, "expireAt": "1999-05-26T00:00:00Z", "price": 24, "purchaseAt": "1991-07-10T00:00:00Z", "trialPrice": 30}, {"currencyCode": "UJsMCSskg43nHKRD", "currencyNamespace": "kHVFXBeSO7b6s9XA", "currencyType": "VIRTUAL", "discountAmount": 58, "discountExpireAt": "1989-11-13T00:00:00Z", "discountPercentage": 33, "discountPurchaseAt": "1991-11-02T00:00:00Z", "discountedPrice": 92, "expireAt": "1972-10-10T00:00:00Z", "price": 12, "purchaseAt": "1974-09-07T00:00:00Z", "trialPrice": 61}]}}, {"itemIdentities": ["Vo30JAkbScMvQ4eH", "0BPW59pDKLmuqkZH", "DM3uE0QjEbTu4pP6"], "itemIdentityType": "ITEM_SKU", "regionData": {"xWP4CbLEMPn6XoQs": [{"currencyCode": "1prgoOzX8HmqBbRU", "currencyNamespace": "2anhET1iJr1kgKPd", "currencyType": "VIRTUAL", "discountAmount": 46, "discountExpireAt": "1982-03-31T00:00:00Z", "discountPercentage": 20, "discountPurchaseAt": "1981-10-23T00:00:00Z", "discountedPrice": 24, "expireAt": "1981-02-01T00:00:00Z", "price": 31, "purchaseAt": "1973-12-07T00:00:00Z", "trialPrice": 1}, {"currencyCode": "MfCG30NzzNwwbh4o", "currencyNamespace": "OOLzRv76NeZWRU0Q", "currencyType": "VIRTUAL", "discountAmount": 48, "discountExpireAt": "1992-03-13T00:00:00Z", "discountPercentage": 45, "discountPurchaseAt": "1997-12-12T00:00:00Z", "discountedPrice": 94, "expireAt": "1990-08-26T00:00:00Z", "price": 63, "purchaseAt": "1978-09-15T00:00:00Z", "trialPrice": 56}, {"currencyCode": "vc76O04N9ZM7izFU", "currencyNamespace": "c0zhxHfiHL8Hl4z3", "currencyType": "REAL", "discountAmount": 15, "discountExpireAt": "1978-07-05T00:00:00Z", "discountPercentage": 75, "discountPurchaseAt": "1991-10-03T00:00:00Z", "discountedPrice": 95, "expireAt": "1989-08-18T00:00:00Z", "price": 7, "purchaseAt": "1973-04-10T00:00:00Z", "trialPrice": 9}], "fXHakO0yV6Cl5RLm": [{"currencyCode": "G6OmS9ImXZHZSS5N", "currencyNamespace": "0bM5vz24Z0kNDxzq", "currencyType": "REAL", "discountAmount": 25, "discountExpireAt": "1991-01-09T00:00:00Z", "discountPercentage": 43, "discountPurchaseAt": "1997-12-21T00:00:00Z", "discountedPrice": 74, "expireAt": "1992-06-28T00:00:00Z", "price": 81, "purchaseAt": "1999-09-05T00:00:00Z", "trialPrice": 15}, {"currencyCode": "SRxXVQlbnFlwA8UO", "currencyNamespace": "7w56oniXg6BDoyao", "currencyType": "VIRTUAL", "discountAmount": 67, "discountExpireAt": "1989-03-04T00:00:00Z", "discountPercentage": 2, "discountPurchaseAt": "1986-12-22T00:00:00Z", "discountedPrice": 7, "expireAt": "1998-07-07T00:00:00Z", "price": 91, "purchaseAt": "1986-02-19T00:00:00Z", "trialPrice": 14}, {"currencyCode": "GM1S22AskVVQh2Xp", "currencyNamespace": "SQRmPjNlFPulQXj9", "currencyType": "REAL", "discountAmount": 32, "discountExpireAt": "1976-02-20T00:00:00Z", "discountPercentage": 83, "discountPurchaseAt": "1976-05-05T00:00:00Z", "discountedPrice": 26, "expireAt": "1995-05-11T00:00:00Z", "price": 73, "purchaseAt": "1994-07-17T00:00:00Z", "trialPrice": 85}], "KumQzo0RRd1DOcH2": [{"currencyCode": "KS3U87kNAET9SZNM", "currencyNamespace": "ua9DCNFKMw4Ao48d", "currencyType": "VIRTUAL", "discountAmount": 98, "discountExpireAt": "1993-11-24T00:00:00Z", "discountPercentage": 98, "discountPurchaseAt": "1991-12-20T00:00:00Z", "discountedPrice": 16, "expireAt": "1981-10-07T00:00:00Z", "price": 11, "purchaseAt": "1973-12-05T00:00:00Z", "trialPrice": 22}, {"currencyCode": "SlRpd0f10ZFfWqcd", "currencyNamespace": "k7dRe9nRZ0XJKolH", "currencyType": "REAL", "discountAmount": 81, "discountExpireAt": "1989-03-31T00:00:00Z", "discountPercentage": 79, "discountPurchaseAt": "1991-01-17T00:00:00Z", "discountedPrice": 80, "expireAt": "1982-09-19T00:00:00Z", "price": 58, "purchaseAt": "1990-02-08T00:00:00Z", "trialPrice": 46}, {"currencyCode": "wFzZ9GhR9kvCuAHu", "currencyNamespace": "5mhh67EwAsLISwmt", "currencyType": "VIRTUAL", "discountAmount": 36, "discountExpireAt": "1977-06-14T00:00:00Z", "discountPercentage": 69, "discountPurchaseAt": "1973-08-30T00:00:00Z", "discountedPrice": 79, "expireAt": "1980-04-16T00:00:00Z", "price": 92, "purchaseAt": "1973-06-04T00:00:00Z", "trialPrice": 18}]}}]}' \
    > test.out 2>&1
eval_tap $? 114 'BulkUpdateRegionData' test.out

#- 115 SearchItems
samples/cli/sample-apps Platform searchItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --itemType 'OPTIONBOX' \
    --limit '19' \
    --offset '28' \
    --sortBy 'Cb1EvamJbMoRgY8U' \
    --storeId 'wSgWWjF16GyQDM90' \
    --keyword 'HahgVrXOup6VnsDV' \
    --language 'NA2hDPFHhDKJh2uH' \
    > test.out 2>&1
eval_tap $? 115 'SearchItems' test.out

#- 116 QueryUncategorizedItems
samples/cli/sample-apps Platform queryUncategorizedItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --limit '4' \
    --offset '73' \
    --sortBy '["updatedAt:desc", "displayOrder:asc", "createdAt:desc"]' \
    --storeId '5wMa11PyTBKLHjpK' \
    > test.out 2>&1
eval_tap $? 116 'QueryUncategorizedItems' test.out

#- 117 GetItem
samples/cli/sample-apps Platform getItem \
    --itemId 'egQrMeajDYBNZYB9' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'vQuvtwKmRwNTWRQr' \
    > test.out 2>&1
eval_tap $? 117 'GetItem' test.out

#- 118 UpdateItem
samples/cli/sample-apps Platform updateItem \
    --itemId 'n2I0liaNMSr03AHV' \
    --namespace $AB_NAMESPACE \
    --storeId 'Eg2uPhrkmwFTfAmE' \
    --body '{"appId": "N5WJ5QGAZijw0EN1", "appType": "DLC", "baseAppId": "8jFyTGYjaUWdoAcz", "boothName": "3HLsUTxX9KR4kuEO", "categoryPath": "rSOSNYImCGksf3Yi", "clazz": "Q6VhyH7U2BaPjdDE", "displayOrder": 8, "entitlementType": "CONSUMABLE", "ext": {"fqNoJpXyVjCGnwvO": {}, "NpFambIJ7v1zoUrW": {}, "dyPZuOkzg45z0AUp": {}}, "features": ["xHBik5KFN4gmABma", "bRi9aJu22bbSlcfy", "zQ8ForsHQV5Odr14"], "flexible": false, "images": [{"as": "WZ9ndlKNVbpFqttH", "caption": "6ncuXJ1H1Gn6Ixxp", "height": 8, "imageUrl": "iBodB59DZ5ZaE7ZV", "smallImageUrl": "bvGbGULAO9ha8y9d", "width": 49}, {"as": "sXuat9GbKrVsTNAl", "caption": "gCBsAfqSCRJ63asx", "height": 51, "imageUrl": "7XTNXhapJMIW6rai", "smallImageUrl": "1jGDslXynigMv9Go", "width": 88}, {"as": "0fHkDs2K5zpiAHkD", "caption": "v62FTyhy0v7HjheL", "height": 12, "imageUrl": "uJZ3WrC9tofGhOfk", "smallImageUrl": "teY2EMsQcqlANN9z", "width": 81}], "itemIds": ["6sLewKee57f0c1SZ", "dsUdt6DB7u3cDZsW", "XfIO4CeXaZrS3hFI"], "itemQty": {"3GZN1LJvCYH2hCe1": 77, "j9pSe6I4A0gaSE7H": 29, "UlqHN3dGOfiPGci1": 72}, "itemType": "LOOTBOX", "listable": false, "localizations": {"jHXby35ae6p7qVhB": {"description": "rzGwJXQcqx7nG1a4", "localExt": {"i6UZmMg50w3W90Hf": {}, "HmXq7gNpuxXQulqe": {}, "K4uGwrmxCaPoxH1m": {}}, "longDescription": "pw6kpwd6j30L1qNj", "title": "2hfnAbLvILMmFHLT"}, "l6cQ13zIohp4y5xf": {"description": "AgcYFgXYPdDtomrM", "localExt": {"aPRZCDsfEaFVL04v": {}, "lAVVqEeBdsbrTi40": {}, "gbNIQ5aUeNruQCGu": {}}, "longDescription": "ept3VPaXtzt8TFSH", "title": "zzBlIBi4aapzP3V5"}, "y5FTNoiJdYIETtEa": {"description": "m5Pg1p6BgR7XLva3", "localExt": {"nst0rAv47A44xBpo": {}, "OPtSQErR4SqIB5oy": {}, "plVQdow44EG6U4oS": {}}, "longDescription": "ozBaNQckZwbzT3o5", "title": "xHOgj0XASRLBNIO4"}}, "lootBoxConfig": {"rewardCount": 9, "rewards": [{"lootBoxItems": [{"count": 35, "duration": 22, "endDate": "1971-06-03T00:00:00Z", "itemId": "EinsmvCqJ9YYfKD7", "itemSku": "rT2uoty708O10PW7", "itemType": "aMK62Ey2vI6rnQjy"}, {"count": 37, "duration": 77, "endDate": "1995-02-01T00:00:00Z", "itemId": "ovIxNrrGsEXFZvW3", "itemSku": "G4nE25rx5UERgzMi", "itemType": "X3mZF9g9v2Rr9iFN"}, {"count": 90, "duration": 87, "endDate": "1973-01-14T00:00:00Z", "itemId": "kQz5yfxAh5j439ha", "itemSku": "Cce7BFoVOY91D87p", "itemType": "d1atNgUFlPZnLBSq"}], "name": "jW8McrbT8Tp31MAx", "odds": 0.8295203460295567, "type": "PROBABILITY_GROUP", "weight": 92}, {"lootBoxItems": [{"count": 9, "duration": 54, "endDate": "1980-10-20T00:00:00Z", "itemId": "rZP0nG2P5FoaTrfz", "itemSku": "pkc3eyyebjP4b7GN", "itemType": "9IXOC3KG8uFHHPPF"}, {"count": 64, "duration": 32, "endDate": "1974-10-23T00:00:00Z", "itemId": "pHYTAPQe7LBZ3BTf", "itemSku": "ZF9N6qCzSWWc2DW5", "itemType": "XtJacx97eTXduiNc"}, {"count": 60, "duration": 89, "endDate": "1971-07-28T00:00:00Z", "itemId": "UYm2ofXHkj8dz0AI", "itemSku": "PEHdfjIwgpF2D6i8", "itemType": "NgVvzczGu3lqx8qB"}], "name": "asadR7WUyGVogJRN", "odds": 0.1649286939928667, "type": "PROBABILITY_GROUP", "weight": 90}, {"lootBoxItems": [{"count": 81, "duration": 82, "endDate": "1973-10-04T00:00:00Z", "itemId": "vG8HxmFlgCZJFhEY", "itemSku": "mU5SOmnD411gm96Y", "itemType": "a04kI7W0xpZc3jzk"}, {"count": 7, "duration": 7, "endDate": "1987-09-17T00:00:00Z", "itemId": "AtCknswfx4FGvkUM", "itemSku": "PJWQHFmzfLQ85iNF", "itemType": "O6PcDEVE89k3rimb"}, {"count": 89, "duration": 13, "endDate": "1971-02-06T00:00:00Z", "itemId": "wmt68OH09ecYkHCK", "itemSku": "8857HGq1e7hkC4Dt", "itemType": "l92YZqgX8DX56BMg"}], "name": "10ndYwbwxnKQJrw2", "odds": 0.7846726197197142, "type": "PROBABILITY_GROUP", "weight": 93}], "rollFunction": "CUSTOM"}, "maxCount": 6, "maxCountPerUser": 93, "name": "PkNUU1iSNumys4ey", "optionBoxConfig": {"boxItems": [{"count": 8, "duration": 20, "endDate": "1971-10-14T00:00:00Z", "itemId": "bVAHMQDtTML4eBJ2", "itemSku": "sM830pkmYOqYxPBz", "itemType": "LtCqMHYdnnXXmNF9"}, {"count": 54, "duration": 10, "endDate": "1984-12-02T00:00:00Z", "itemId": "Ep3v1jH7VcJoj7vj", "itemSku": "wr255lSud4KZq8Ys", "itemType": "sXFsrzHegibB49l9"}, {"count": 29, "duration": 8, "endDate": "1992-02-04T00:00:00Z", "itemId": "dGh3eBuwNYoYCyuT", "itemSku": "2Md8B6Afa4VLXECg", "itemType": "Vz5tOAKVEuTWcF7v"}]}, "purchasable": true, "recurring": {"cycle": "WEEKLY", "fixedFreeDays": 59, "fixedTrialCycles": 90, "graceDays": 70}, "regionData": {"luKfRGhpLeA4jItb": [{"currencyCode": "RB5hi6l6yeZp08dd", "currencyNamespace": "JRptSHsMKK6DcyBf", "currencyType": "VIRTUAL", "discountAmount": 14, "discountExpireAt": "1989-11-21T00:00:00Z", "discountPercentage": 47, "discountPurchaseAt": "1972-06-30T00:00:00Z", "expireAt": "1986-12-25T00:00:00Z", "price": 83, "purchaseAt": "1996-05-03T00:00:00Z", "trialPrice": 77}, {"currencyCode": "3Hwzh4b60hZEtThv", "currencyNamespace": "WAhLVBweD2bRrCwS", "currencyType": "VIRTUAL", "discountAmount": 92, "discountExpireAt": "1983-12-18T00:00:00Z", "discountPercentage": 43, "discountPurchaseAt": "1975-04-02T00:00:00Z", "expireAt": "1989-03-24T00:00:00Z", "price": 85, "purchaseAt": "1994-05-17T00:00:00Z", "trialPrice": 64}, {"currencyCode": "MPwbt5ez0nBLOqFB", "currencyNamespace": "bn4lJyktpoROFfqD", "currencyType": "VIRTUAL", "discountAmount": 31, "discountExpireAt": "1976-04-27T00:00:00Z", "discountPercentage": 69, "discountPurchaseAt": "1973-09-21T00:00:00Z", "expireAt": "1995-01-05T00:00:00Z", "price": 2, "purchaseAt": "1989-08-10T00:00:00Z", "trialPrice": 74}], "HWGIwFEAo3OmjCaf": [{"currencyCode": "FIFRQn28nf6MbslT", "currencyNamespace": "01pnLuVst1f2nvbJ", "currencyType": "REAL", "discountAmount": 73, "discountExpireAt": "1986-06-04T00:00:00Z", "discountPercentage": 97, "discountPurchaseAt": "1996-01-04T00:00:00Z", "expireAt": "1996-08-26T00:00:00Z", "price": 3, "purchaseAt": "1991-10-23T00:00:00Z", "trialPrice": 82}, {"currencyCode": "rRsmGGrDeCgGE8TU", "currencyNamespace": "ggalIqWMlUYaSz74", "currencyType": "VIRTUAL", "discountAmount": 66, "discountExpireAt": "1973-05-22T00:00:00Z", "discountPercentage": 25, "discountPurchaseAt": "1987-06-28T00:00:00Z", "expireAt": "1979-01-31T00:00:00Z", "price": 38, "purchaseAt": "1998-10-16T00:00:00Z", "trialPrice": 11}, {"currencyCode": "qdkq1Aq2ZZcumXDu", "currencyNamespace": "wGOmricg09JlclUc", "currencyType": "REAL", "discountAmount": 71, "discountExpireAt": "1993-01-04T00:00:00Z", "discountPercentage": 52, "discountPurchaseAt": "1978-05-31T00:00:00Z", "expireAt": "1989-10-30T00:00:00Z", "price": 11, "purchaseAt": "1984-11-08T00:00:00Z", "trialPrice": 57}], "ZogKiwyQcgJ9sDA9": [{"currencyCode": "47E9qHFlV8d03AqT", "currencyNamespace": "Jkq68ds2DMaK4aJ8", "currencyType": "VIRTUAL", "discountAmount": 73, "discountExpireAt": "1972-01-20T00:00:00Z", "discountPercentage": 54, "discountPurchaseAt": "1994-09-01T00:00:00Z", "expireAt": "1996-08-29T00:00:00Z", "price": 28, "purchaseAt": "1973-02-13T00:00:00Z", "trialPrice": 66}, {"currencyCode": "ikrkBHzpWh132zRu", "currencyNamespace": "7d9oTPgqPkipRwsS", "currencyType": "REAL", "discountAmount": 71, "discountExpireAt": "1997-09-19T00:00:00Z", "discountPercentage": 10, "discountPurchaseAt": "1985-01-03T00:00:00Z", "expireAt": "1983-02-03T00:00:00Z", "price": 85, "purchaseAt": "1995-07-24T00:00:00Z", "trialPrice": 97}, {"currencyCode": "JMKI7k1IQnI1kU3q", "currencyNamespace": "73TJI3bUAcMk8B8U", "currencyType": "REAL", "discountAmount": 46, "discountExpireAt": "1979-09-15T00:00:00Z", "discountPercentage": 86, "discountPurchaseAt": "1988-04-28T00:00:00Z", "expireAt": "1976-02-19T00:00:00Z", "price": 56, "purchaseAt": "1999-03-31T00:00:00Z", "trialPrice": 92}]}, "saleConfig": {"currencyCode": "rxO0Ukxwylzgkzlw", "price": 32}, "seasonType": "PASS", "sectionExclusive": false, "sellable": true, "sku": "TTT5sqa1O04pdwQ9", "stackable": true, "status": "INACTIVE", "tags": ["BllrOcX4znTHKbIq", "pKFlfwd55JO7ULCP", "V26uqe5xBLxEFAzA"], "targetCurrencyCode": "1holQTNDt3KKB4k9", "targetNamespace": "WOOCv7oxCTVMdWnc", "thumbnailUrl": "W2iBYPdHbiBoD3Ph", "useCount": 94}' \
    > test.out 2>&1
eval_tap $? 118 'UpdateItem' test.out

#- 119 DeleteItem
samples/cli/sample-apps Platform deleteItem \
    --itemId 'BJTIn5pmsITiym6z' \
    --namespace $AB_NAMESPACE \
    --force 'true' \
    --storeId 'rqiOtNEH0qCs4bac' \
    > test.out 2>&1
eval_tap $? 119 'DeleteItem' test.out

#- 120 AcquireItem
samples/cli/sample-apps Platform acquireItem \
    --itemId 'yH72cB1KUuvimpn6' \
    --namespace $AB_NAMESPACE \
    --body '{"count": 49, "orderNo": "YB8oXjRMxDakdeEG"}' \
    > test.out 2>&1
eval_tap $? 120 'AcquireItem' test.out

#- 121 GetApp
samples/cli/sample-apps Platform getApp \
    --itemId 'j7zD900GgJzvL6Aq' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --storeId 'y0ZBazHGXr5PN0Yk' \
    > test.out 2>&1
eval_tap $? 121 'GetApp' test.out

#- 122 UpdateApp
samples/cli/sample-apps Platform updateApp \
    --itemId '7LloN5eQTbtU4lN8' \
    --namespace $AB_NAMESPACE \
    --storeId 'gjAJLvyDLf4gVpor' \
    --body '{"carousel": [{"alt": "C5Wq2zpnVIZmXb6r", "previewUrl": "RORzayAv68PdLVM0", "thumbnailUrl": "211te8gBqRxJzOwf", "type": "image", "url": "nATS41mgWkmcAB68", "videoSource": "youtube"}, {"alt": "T99ipaCJsvJFtNTl", "previewUrl": "5YRbzciUGIQKEeS6", "thumbnailUrl": "j84DZ5jiWEoa90ku", "type": "image", "url": "40L41qTj9zXimE1p", "videoSource": "vimeo"}, {"alt": "npaxwSq3SF07vIXu", "previewUrl": "ZF6lY8JcbJPlsbOo", "thumbnailUrl": "lloMrQ9TG7SSt72r", "type": "image", "url": "DQJL8sYI9i25w2gZ", "videoSource": "vimeo"}], "developer": "xVhyk4BQTcmENeOo", "forumUrl": "E2ZHxb8hnMWW6wbX", "genres": ["Sports", "Casual", "Indie"], "localizations": {"Yq8pTy8EiANyxwEh": {"announcement": "P5ZulWV8RFtCs8Ox", "slogan": "n4KrYZ25zYnue0H6"}, "292gCmfY7PabYk4I": {"announcement": "kIr28ZrkBrkajPE9", "slogan": "RtcRvOpmJQtGZUUj"}, "T1UPuWiaINoXOtqQ": {"announcement": "fxbpuNx1xSQ1BmKJ", "slogan": "CltI7VPcEI2vXwPR"}}, "platformRequirements": {"EpajohXxVcBMZN36": [{"additionals": "dvuYCkHlVCt23IDJ", "directXVersion": "JnOfPmCBWQfWpFrk", "diskSpace": "WvzBIrFnG7LfsODN", "graphics": "T7svugpaehPSoJyn", "label": "BkzPUYe4JDM6SRoM", "osVersion": "giLAM4FXkcvYO6Ra", "processor": "2XkfHOQrqOZD67Un", "ram": "HG70p2vJYMpzDgrz", "soundCard": "3MfL7cPCRsJW8Z43"}, {"additionals": "u9hvrow2Y6uGHuBG", "directXVersion": "QWnE6GQhS4tUSF9M", "diskSpace": "nP4JLWKh0Qtz3flG", "graphics": "Qrz5IczUiXv5LXfT", "label": "12Sa39rOnLfubRj1", "osVersion": "T7KZsRxYNX1asRGV", "processor": "E2NEH56el8WPkfCB", "ram": "DwEXJ1IQ62j5j2F5", "soundCard": "pst4q1OcxnMKb31X"}, {"additionals": "LJrW4KRGO3P6YDFr", "directXVersion": "pxO4KtHBJ1Os0frN", "diskSpace": "LanWrylGS1tek5nA", "graphics": "djJhc8zoR7fyyrYA", "label": "c0zGVuH6EcPnN4zi", "osVersion": "FqXJOGEDzxo214Uc", "processor": "WTYY8oWg7yCaZT2T", "ram": "cnrpDY6ILv72TVNQ", "soundCard": "rnPSMCQGzQ7cUyXb"}], "DIxZ24Bn9wvC7uGE": [{"additionals": "xmok4CCj0DmKvbtO", "directXVersion": "jJhhs6bYRBwcnQAa", "diskSpace": "O1VQ94j31LveTR5x", "graphics": "ZBuBWwvOzRFKkHF3", "label": "Z3ao0c7zelNfF1HF", "osVersion": "8p8vLJHfGQXVwJar", "processor": "5CWu4Cq8XULnVxGY", "ram": "FG79uqCYrBgBiQ8d", "soundCard": "R44WnEClE3Xtk8sd"}, {"additionals": "f7U9L19qQrkILQir", "directXVersion": "Cfk0lOZX6tIxDOMd", "diskSpace": "yqkE78YCIMarbnbO", "graphics": "GByCw5Rztegvgb18", "label": "3o6tmWJINrhAdQYp", "osVersion": "oEyKeYOLLlwTjel0", "processor": "dmOQn5WYWVgoYQuY", "ram": "LGrQvx91dBGUy6t8", "soundCard": "OXB9ICk2GvfxRKoy"}, {"additionals": "A1SNPvZ4Izh3gkHM", "directXVersion": "eIjRaHXngn7cw8hM", "diskSpace": "SJg2ZWU7USk3ELma", "graphics": "lIiuUsB0EzDtjz5l", "label": "vR6gtnpmbu7WHFsx", "osVersion": "WNORAZDNT2q86I7F", "processor": "LXjJ7wD9MriI256f", "ram": "GwC0JBMn54PXHPtR", "soundCard": "1ynpVwvKG0pPFcol"}], "IkGpldgGES8Rvjvp": [{"additionals": "oFgdL1cuTBuyIKLO", "directXVersion": "Fh5AG3OsWuzpVJIg", "diskSpace": "5WUl9TedZAZ5qCyh", "graphics": "IzJ7nEGYJ2urLLkA", "label": "GwnmxO2FBQkGC1hL", "osVersion": "pHFwBpe1xwulwPEb", "processor": "Fc6wmbACRCONkfoN", "ram": "EhnXVVNlpcmE337k", "soundCard": "Ogd8zNZxjD1NRBPi"}, {"additionals": "iPnpspxNHBJNrE6g", "directXVersion": "I2eWF1q5K3LgHrFi", "diskSpace": "Bjh3RKzJK7jVK5Rm", "graphics": "6dR0Oktgf0RBnjrh", "label": "u4vLyYhlktLjmBsy", "osVersion": "RnzfdccjQa5j7wXp", "processor": "K52ufM3vK6JdNyyo", "ram": "HW6uj0e6pShaBG7x", "soundCard": "7sIfAelztwlARG4M"}, {"additionals": "RRp98Cn8pj0zQ7Kf", "directXVersion": "MTjxXLWrOGnNJZ02", "diskSpace": "u0BEJ3el5LekGWJM", "graphics": "MU1T3fkO1nqRM9OK", "label": "OTMPoYrz2iiJy6qE", "osVersion": "c6wN9bHE8tVQRifW", "processor": "bLYftQl5n3jkUmuw", "ram": "dkduIW64T3P3pxz2", "soundCard": "m38oiqjGQANu5Fb7"}]}, "platforms": ["IOS", "IOS", "Android"], "players": ["Single", "Single", "MMO"], "primaryGenre": "Strategy", "publisher": "kPEz18oyqWZ1qxd4", "releaseDate": "1979-05-17T00:00:00Z", "websiteUrl": "jEd0EXzNi3rtyBpA"}' \
    > test.out 2>&1
eval_tap $? 122 'UpdateApp' test.out

#- 123 DisableItem
samples/cli/sample-apps Platform disableItem \
    --itemId 'fQxBcNHVcTzjPtw2' \
    --namespace $AB_NAMESPACE \
    --storeId 'z6Nh7zMmLuE1Urb7' \
    > test.out 2>&1
eval_tap $? 123 'DisableItem' test.out

#- 124 GetItemDynamicData
samples/cli/sample-apps Platform getItemDynamicData \
    --itemId 'cPq320qtBUMexetO' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 124 'GetItemDynamicData' test.out

#- 125 EnableItem
samples/cli/sample-apps Platform enableItem \
    --itemId 'A36jsS0lP6MQKHFa' \
    --namespace $AB_NAMESPACE \
    --storeId 'kCbWCI8Vca0xTkia' \
    > test.out 2>&1
eval_tap $? 125 'EnableItem' test.out

#- 126 FeatureItem
samples/cli/sample-apps Platform featureItem \
    --feature 'UkDv7qa1R5WLSNOu' \
    --itemId 'up7YvJ6LE6pLqXTH' \
    --namespace $AB_NAMESPACE \
    --storeId '3mAdNLBl70y8eB0f' \
    > test.out 2>&1
eval_tap $? 126 'FeatureItem' test.out

#- 127 DefeatureItem
samples/cli/sample-apps Platform defeatureItem \
    --feature 'LafyHG5gncpUIs11' \
    --itemId '6mk7GFrEPkDJNtz4' \
    --namespace $AB_NAMESPACE \
    --storeId 'QYhHDPanrrQMiGG7' \
    > test.out 2>&1
eval_tap $? 127 'DefeatureItem' test.out

#- 128 GetLocaleItem
samples/cli/sample-apps Platform getLocaleItem \
    --itemId 'hSHsdLGPWCwEVAqV' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --language 'HRX6wGIl4aVxjECa' \
    --populateBundle 'true' \
    --region 'uSmhGS9aXkZ8e4Nd' \
    --storeId 'zWgiy82n3UshMSJp' \
    > test.out 2>&1
eval_tap $? 128 'GetLocaleItem' test.out

#- 129 UpdateItemPurchaseCondition
samples/cli/sample-apps Platform updateItemPurchaseCondition \
    --itemId 'n42ZgAym4cw1dNq5' \
    --namespace $AB_NAMESPACE \
    --storeId 'Mgr3GICI8bKPJsON' \
    --body '{"purchaseCondition": {"conditionGroups": [{"operator": "or", "predicates": [{"anyOf": 1, "comparison": "isLessThanOrEqual", "name": "61i0rkRXWvpadwi1", "predicateType": "EntitlementPredicate", "value": "HWul9jFO2hIO3A7x", "values": ["roM9N3IqryyWfYOR", "Jrw5lz3RMSqZfYi8", "qbWdr8PsDksCEoWy"]}, {"anyOf": 68, "comparison": "isGreaterThan", "name": "nrYRwa9slOCr7dvB", "predicateType": "SeasonTierPredicate", "value": "KTEUY1NtOUBHePsf", "values": ["50JrBJFg4rojmxzF", "Ap0wXIWx5RC07YMs", "cFpwoWKasCTzobCc"]}, {"anyOf": 11, "comparison": "isGreaterThanOrEqual", "name": "e4g0uEXYTI49byuE", "predicateType": "SeasonTierPredicate", "value": "CJtRpautyC9ObHTN", "values": ["yhq9pgXXgC66hLUc", "WlseO8bFzq2eXmLg", "2FQ4qclg6GBFWx13"]}]}, {"operator": "or", "predicates": [{"anyOf": 82, "comparison": "isLessThan", "name": "egb9RCDNvFISJiy3", "predicateType": "EntitlementPredicate", "value": "ITJkIB3aOf66Xg2z", "values": ["wO4F5nhjnbFwt37f", "ItDYImndmSoXkmkn", "aQt6cyFfkP74WowC"]}, {"anyOf": 52, "comparison": "isNot", "name": "hKoUurS6FNdvhcr4", "predicateType": "SeasonPassPredicate", "value": "uw2mSFHZSgjZhnwY", "values": ["fdunFEkpfva5C3sN", "pHdjfzMTr6UF5JUK", "qF1zsC9zAP9drE89"]}, {"anyOf": 67, "comparison": "isLessThan", "name": "N7CCLOUeU4z5UTuS", "predicateType": "SeasonPassPredicate", "value": "MVNmowSy4IGQqvBT", "values": ["SjDbm2PrQx0d8jzd", "1exF58OP5FJDbzXW", "wX8MuD8iMyv9B73g"]}]}, {"operator": "and", "predicates": [{"anyOf": 26, "comparison": "isGreaterThanOrEqual", "name": "Uwwp277bETjZfBzU", "predicateType": "SeasonTierPredicate", "value": "mX7M8XrmJZlL5oml", "values": ["ahWL7z3o4TdzwAGi", "ivFHTXEHWobzbgJD", "q2pm0y64f4WFJezA"]}, {"anyOf": 39, "comparison": "isGreaterThanOrEqual", "name": "4aRT7F5qVImG1Ipi", "predicateType": "EntitlementPredicate", "value": "mQncNFPwZKlwXAVq", "values": ["MXHEIPT7sNX47AmJ", "JclAsYLxVXTcvNqC", "KDAX1DkzaamTakqj"]}, {"anyOf": 76, "comparison": "isGreaterThan", "name": "EcowlZmivx8ZJ1KD", "predicateType": "SeasonTierPredicate", "value": "sv8ZBkImOxC0cIGz", "values": ["lj5UAHxdXvwAR1yP", "tEEaWDgZcWyXYaDh", "1M5wSeoqBkm0hNCC"]}]}]}}' \
    > test.out 2>&1
eval_tap $? 129 'UpdateItemPurchaseCondition' test.out

#- 130 ReturnItem
samples/cli/sample-apps Platform returnItem \
    --itemId 'g036EGk160PfLfd6' \
    --namespace $AB_NAMESPACE \
    --body '{"orderNo": "e7iAJRDFz7C1JK8J"}' \
    > test.out 2>&1
eval_tap $? 130 'ReturnItem' test.out

#- 131 QueryKeyGroups
samples/cli/sample-apps Platform queryKeyGroups \
    --namespace $AB_NAMESPACE \
    --limit '8' \
    --name 'T5NTaGqPowmFq0a1' \
    --offset '3' \
    --tag 'D9Ib6zDCt4DCKQxq' \
    > test.out 2>&1
eval_tap $? 131 'QueryKeyGroups' test.out

#- 132 CreateKeyGroup
samples/cli/sample-apps Platform createKeyGroup \
    --namespace $AB_NAMESPACE \
    --body '{"description": "3J5b3zRtjsMb0fdA", "name": "o4zOfPTJOSOGULJP", "status": "ACTIVE", "tags": ["6Ipjn4DHvdj6KvZR", "OtxGWw0yD4Qq0a89", "F1MK9BW96DLKq4kE"]}' \
    > test.out 2>&1
eval_tap $? 132 'CreateKeyGroup' test.out

#- 133 GetKeyGroupByBoothName
eval_tap 0 133 'GetKeyGroupByBoothName # SKIP deprecated' test.out

#- 134 GetKeyGroup
samples/cli/sample-apps Platform getKeyGroup \
    --keyGroupId 'SOUPImLu169YP19a' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 134 'GetKeyGroup' test.out

#- 135 UpdateKeyGroup
samples/cli/sample-apps Platform updateKeyGroup \
    --keyGroupId 'OBoIsB5PGyzqEuvi' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "rDfrwv651HN43mGQ", "name": "axIySamYk5tT4UKE", "status": "ACTIVE", "tags": ["e5vqh5ifJzeg9c0X", "oeorhw9JqyEYwf3U", "CRHTGG91Yrzt9AtH"]}' \
    > test.out 2>&1
eval_tap $? 135 'UpdateKeyGroup' test.out

#- 136 GetKeyGroupDynamic
samples/cli/sample-apps Platform getKeyGroupDynamic \
    --keyGroupId 'GUeMD1NwLDKGeqvl' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 136 'GetKeyGroupDynamic' test.out

#- 137 ListKeys
samples/cli/sample-apps Platform listKeys \
    --keyGroupId '9I5NSF5BGebfp5zr' \
    --namespace $AB_NAMESPACE \
    --limit '73' \
    --offset '84' \
    --status 'ACQUIRED' \
    > test.out 2>&1
eval_tap $? 137 'ListKeys' test.out

#- 138 UploadKeys
samples/cli/sample-apps Platform uploadKeys \
    --keyGroupId 'H5xtv5W33cM8DWlC' \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 138 'UploadKeys' test.out

#- 139 QueryOrders
samples/cli/sample-apps Platform queryOrders \
    --namespace $AB_NAMESPACE \
    --endTime 'P7xN3Pan9O2Xj3f7' \
    --limit '56' \
    --offset '72' \
    --orderNos '["BPWpZB6P5sV5kDA0", "G4H77SrVBmJPkVr9", "HSToU8QGnbNbG180"]' \
    --sortBy 'BXrJZ1jZoOmyrCLS' \
    --startTime 'AkgvZYkewyihJbz4' \
    --status 'FULFILL_FAILED' \
    --withTotal 'true' \
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
    --orderNo 'h8vCjuzLgdbH1PAx' \
    > test.out 2>&1
eval_tap $? 141 'GetOrder' test.out

#- 142 RefundOrder
samples/cli/sample-apps Platform refundOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'XVztB8W3jzuKfksZ' \
    --body '{"description": "nHOSyLg6JVuiDGhX"}' \
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
    --body '{"dryRun": true, "notifyUrl": "Gzjx0eoEpiromXV9", "privateKey": "fqjSMexsuCbNiTpy"}' \
    > test.out 2>&1
eval_tap $? 144 'UpdatePaymentCallbackConfig' test.out

#- 145 QueryPaymentNotifications
samples/cli/sample-apps Platform queryPaymentNotifications \
    --namespace $AB_NAMESPACE \
    --endDate 'DXtVHnM6TTICE4BJ' \
    --externalId 'NRX4VkHQuo3IaOdo' \
    --limit '26' \
    --notificationSource 'CHECKOUT' \
    --notificationType 'U2bfXr9cQzFcf2OG' \
    --offset '22' \
    --paymentOrderNo 'BBXnMzMzz7MvYKHE' \
    --startDate 'L1kQWB4bk2XLZ04t' \
    --status 'WARN' \
    > test.out 2>&1
eval_tap $? 145 'QueryPaymentNotifications' test.out

#- 146 QueryPaymentOrders
samples/cli/sample-apps Platform queryPaymentOrders \
    --namespace $AB_NAMESPACE \
    --channel 'EXTERNAL' \
    --extTxId 'IQ7c1N8SuaIQocE2' \
    --limit '95' \
    --offset '9' \
    --status 'CHARGEBACK_REVERSED' \
    > test.out 2>&1
eval_tap $? 146 'QueryPaymentOrders' test.out

#- 147 CreatePaymentOrderByDedicated
samples/cli/sample-apps Platform createPaymentOrderByDedicated \
    --namespace $AB_NAMESPACE \
    --body '{"currencyCode": "JZSFj2gAVyVf1wsy", "currencyNamespace": "zg7w9cWfX9eTCBJL", "customParameters": {"skmlYCh9tCOfvP82": {}, "qOzklOu370wEClA9": {}, "fnUzqVZ9USuT7drD": {}}, "description": "Mluhktnlm6Ln2CpW", "extOrderNo": "3dYoh2WM05nSi9vt", "extUserId": "grEzWDFEGCZSdErP", "itemType": "OPTIONBOX", "language": "KLvq-HHPs_149", "metadata": {"NnmWyaNYE2xlW3WY": "sAZVCWHjVxdqu4il", "nnDKv7E7m2t3j14j": "Ri47jvyNeI2Wjssa", "NHGQqu5UBgHCwEIF": "DPX8cUvTCJKqQBff"}, "notifyUrl": "uYYoYFCSbpWW0aUJ", "omitNotification": false, "platform": "nylf4CIgrzswLt4g", "price": 5, "recurringPaymentOrderNo": "cMUU8vu8gQ6P3asQ", "region": "cstcbJ5tCj2J3SUB", "returnUrl": "jYNQQtvGf6Q73tgL", "sandbox": true, "sku": "uH2Wk5j346jHkKnB", "subscriptionId": "Q4WptV0XmOsMZYdW", "targetNamespace": "sppZi23S3YCBpNWa", "targetUserId": "zyhWkiBcxP9PYJPm", "title": "Xj7gqht7Krb9psHX"}' \
    > test.out 2>&1
eval_tap $? 147 'CreatePaymentOrderByDedicated' test.out

#- 148 ListExtOrderNoByExtTxId
samples/cli/sample-apps Platform listExtOrderNoByExtTxId \
    --namespace $AB_NAMESPACE \
    --extTxId 'vitO6wU0s87AbpLx' \
    > test.out 2>&1
eval_tap $? 148 'ListExtOrderNoByExtTxId' test.out

#- 149 GetPaymentOrder
samples/cli/sample-apps Platform getPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'zxWNl5koMs9EF320' \
    > test.out 2>&1
eval_tap $? 149 'GetPaymentOrder' test.out

#- 150 ChargePaymentOrder
samples/cli/sample-apps Platform chargePaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'O7Jc8Jh5D74IH3G2' \
    --body '{"extTxId": "nz0QkXdJdkONYRF8", "paymentMethod": "I3y6gp2MXWpHJDTD", "paymentProvider": "WXPAY"}' \
    > test.out 2>&1
eval_tap $? 150 'ChargePaymentOrder' test.out

#- 151 RefundPaymentOrderByDedicated
samples/cli/sample-apps Platform refundPaymentOrderByDedicated \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo '0IKmttVgscFFmoTX' \
    --body '{"description": "4eOwVmHALyPHXLxQ"}' \
    > test.out 2>&1
eval_tap $? 151 'RefundPaymentOrderByDedicated' test.out

#- 152 SimulatePaymentOrderNotification
samples/cli/sample-apps Platform simulatePaymentOrderNotification \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'prsQnHh0lftCkYqS' \
    --body '{"amount": 66, "currencyCode": "616sWksiO6cCoS09", "notifyType": "REFUND", "paymentProvider": "PAYPAL", "salesTax": 48, "vat": 42}' \
    > test.out 2>&1
eval_tap $? 152 'SimulatePaymentOrderNotification' test.out

#- 153 GetPaymentOrderChargeStatus
samples/cli/sample-apps Platform getPaymentOrderChargeStatus \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'GDF2Zz5F8bYOvWC2' \
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
    --platform 'Xbox' \
    --body '{"allowedBalanceOrigins": ["IOS", "IOS", "IOS"]}' \
    > test.out 2>&1
eval_tap $? 155 'UpdatePlatformWalletConfig' test.out

#- 156 ResetPlatformWalletConfig
samples/cli/sample-apps Platform resetPlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Epic' \
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
    --body '{"entitlement": {"consumable": {"enabled": false, "strategy": "CUSTOM"}, "durable": {"enabled": false, "strategy": "REVOKE_OR_REPORT"}}, "wallet": {"enabled": true, "strategy": "REVOKE_OR_REPORT"}}' \
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
    --endTime 'uT7aMh9AT63bjZgt' \
    --limit '3' \
    --offset '47' \
    --source 'OTHER' \
    --startTime 'Ujwvr6UhjoUGx8vE' \
    --status 'SUCCESS' \
    --transactionId 'yqF7vn6lQfuXkdyL' \
    --userId '2IyoGaBSndomW555' \
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
    --body '{"appConfig": {"appName": "kvtsItYYCHNPaHSg"}, "customConfig": {"connectionType": "TLS", "grpcServerAddress": "3XhZpJq9XbkRkCox"}, "extendType": "APP"}' \
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
    --body '{"description": "wRyvLwWtrjZsR6HC", "eventTopic": "gd7LNALuRAqRABH7", "maxAwarded": 74, "maxAwardedPerUser": 10, "namespaceExpression": "23BXX9nH4Gd3ueBc", "rewardCode": "kGvlfAsUBCnjG8eP", "rewardConditions": [{"condition": "7az8RhKt3Uw6AfPK", "conditionName": "IZTolX7Y5MtEt4kG", "eventName": "69RZ8xY4X87DChoX", "rewardItems": [{"duration": 62, "endDate": "1988-07-16T00:00:00Z", "itemId": "XBAJUUmnSoKzLR0W", "quantity": 16}, {"duration": 0, "endDate": "1980-06-15T00:00:00Z", "itemId": "yPnfincH0HK7eXbN", "quantity": 97}, {"duration": 49, "endDate": "1985-02-03T00:00:00Z", "itemId": "SpldYByUsdL3uk8S", "quantity": 8}]}, {"condition": "o6uRa87rncjoME2b", "conditionName": "ielS62n8I6rM2MM5", "eventName": "920OZdxYIAoiAt4u", "rewardItems": [{"duration": 8, "endDate": "1971-10-20T00:00:00Z", "itemId": "NnViipF5M9E1QYJz", "quantity": 40}, {"duration": 84, "endDate": "1979-04-14T00:00:00Z", "itemId": "h2lsecWdItf8pAGU", "quantity": 88}, {"duration": 19, "endDate": "1975-07-01T00:00:00Z", "itemId": "Mbe0BOxFd4zchdfz", "quantity": 31}]}, {"condition": "4UVcXtXbHvq1oxAU", "conditionName": "oaN9QI1DRjjhhbaD", "eventName": "m7ANGdqDdrnQd1mR", "rewardItems": [{"duration": 56, "endDate": "1987-12-19T00:00:00Z", "itemId": "AWzlaKuOEiW918Aq", "quantity": 64}, {"duration": 22, "endDate": "1973-08-19T00:00:00Z", "itemId": "FUJHrrFWET8BEpCS", "quantity": 3}, {"duration": 22, "endDate": "1992-01-06T00:00:00Z", "itemId": "JfjVJp4vhhvhGzju", "quantity": 100}]}], "userIdExpression": "qCo5lj21ZpxoWjxI"}' \
    > test.out 2>&1
eval_tap $? 165 'CreateReward' test.out

#- 166 QueryRewards
samples/cli/sample-apps Platform queryRewards \
    --namespace $AB_NAMESPACE \
    --eventTopic 'GZXnBqhohU5WkaMW' \
    --limit '53' \
    --offset '76' \
    --sortBy '["rewardCode", "rewardCode:desc", "namespace:desc"]' \
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
    --replaceExisting 'true' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 168 'ImportRewards' test.out

#- 169 GetReward
samples/cli/sample-apps Platform getReward \
    --namespace $AB_NAMESPACE \
    --rewardId 'HHHNP9lYoif0Nq2K' \
    > test.out 2>&1
eval_tap $? 169 'GetReward' test.out

#- 170 UpdateReward
samples/cli/sample-apps Platform updateReward \
    --namespace $AB_NAMESPACE \
    --rewardId 'qqCjvXuOe5IETEDH' \
    --body '{"description": "S9dyPPXlkyZib8Fk", "eventTopic": "fHD8I38JmOTp1BiQ", "maxAwarded": 43, "maxAwardedPerUser": 48, "namespaceExpression": "F3tqTiwr6MHLeo3S", "rewardCode": "upcptqvYe97Q7c2U", "rewardConditions": [{"condition": "yBKmmATkFsLMiyZ1", "conditionName": "cUz630iwftCMULvw", "eventName": "f0QzLv502Hm1NUWO", "rewardItems": [{"duration": 93, "endDate": "1993-01-30T00:00:00Z", "itemId": "a0h5EDMu2WOFDqTV", "quantity": 34}, {"duration": 25, "endDate": "1977-06-24T00:00:00Z", "itemId": "uDAhxBhbAfSw9Alk", "quantity": 17}, {"duration": 48, "endDate": "1999-10-16T00:00:00Z", "itemId": "6KTOvuImZFrZCo5o", "quantity": 19}]}, {"condition": "VjkZKDgAXirFRm1g", "conditionName": "OMwS18qelBAsCH83", "eventName": "Bag7camC6OIQk2JT", "rewardItems": [{"duration": 83, "endDate": "1978-03-29T00:00:00Z", "itemId": "pHPL19YtpsMOmY87", "quantity": 42}, {"duration": 50, "endDate": "1978-12-12T00:00:00Z", "itemId": "jvPHrozwfzm3WO8S", "quantity": 93}, {"duration": 38, "endDate": "1982-03-21T00:00:00Z", "itemId": "iEU1DFyG6P4b8ZGi", "quantity": 33}]}, {"condition": "nbSRTV6kt5UU8dVJ", "conditionName": "dlGxd5aIfoG9dhoi", "eventName": "hEH0pnCMl3BHZ26C", "rewardItems": [{"duration": 59, "endDate": "1990-12-16T00:00:00Z", "itemId": "Y22ym524aPh3XOv4", "quantity": 42}, {"duration": 19, "endDate": "1977-02-25T00:00:00Z", "itemId": "MT1bjNTGCY2m3Dfp", "quantity": 39}, {"duration": 13, "endDate": "1994-06-07T00:00:00Z", "itemId": "OtO2AqGMIcGDY2WG", "quantity": 36}]}], "userIdExpression": "n3Boa7MjEnDzBSRM"}' \
    > test.out 2>&1
eval_tap $? 170 'UpdateReward' test.out

#- 171 DeleteReward
samples/cli/sample-apps Platform deleteReward \
    --namespace $AB_NAMESPACE \
    --rewardId 'Ft6MKhYmnmDO1n0m' \
    > test.out 2>&1
eval_tap $? 171 'DeleteReward' test.out

#- 172 CheckEventCondition
samples/cli/sample-apps Platform checkEventCondition \
    --namespace $AB_NAMESPACE \
    --rewardId 'rbUKdfHiYgW7u0NI' \
    --body '{"payload": {"EptSgItQY1n9OMGv": {}, "nZmqiOZ3br48G4Iw": {}, "z7lzXF9RqCDpANCX": {}}}' \
    > test.out 2>&1
eval_tap $? 172 'CheckEventCondition' test.out

#- 173 DeleteRewardConditionRecord
samples/cli/sample-apps Platform deleteRewardConditionRecord \
    --namespace $AB_NAMESPACE \
    --rewardId 'MP1Xp6FP3u5Ieomx' \
    --body '{"conditionName": "4lf2n3IvZvepULpB", "userId": "W9N2rDF2x7QgVlVT"}' \
    > test.out 2>&1
eval_tap $? 173 'DeleteRewardConditionRecord' test.out

#- 174 QuerySections
samples/cli/sample-apps Platform querySections \
    --namespace $AB_NAMESPACE \
    --end 'j3qpxa3TuoLeGqYo' \
    --limit '69' \
    --offset '76' \
    --start 'n8gMpirFAqFQUlXV' \
    --storeId 'MGK4aYFEvr7n9Vc0' \
    --viewId 'r6D9DDbspWeeKYDu' \
    > test.out 2>&1
eval_tap $? 174 'QuerySections' test.out

#- 175 CreateSection
samples/cli/sample-apps Platform createSection \
    --namespace $AB_NAMESPACE \
    --storeId 'KZbVAr7LXXHB938I' \
    --body '{"active": false, "displayOrder": 14, "endDate": "1978-10-04T00:00:00Z", "ext": {"lh5E0rGObMMsjeVO": {}, "zNix50MqB7knGftC": {}, "JL4HM0cXyniXVncd": {}}, "fixedPeriodRotationConfig": {"backfillType": "CUSTOM", "duration": 16, "itemCount": 46, "rule": "SEQUENCE"}, "items": [{"id": "r7dMOkPyUTyY5Q0k", "sku": "nXxluQCycX5BOIjV"}, {"id": "he3sfUWwvsYzG3sM", "sku": "dovrWZJ0CezTQAAE"}, {"id": "qJFDviV5MsFLHond", "sku": "h94pUT6OtBUNl5nn"}], "localizations": {"axKT2Cn5RUZzWXxQ": {"description": "NfCyCMoLjZk89Bpd", "localExt": {"7fFg7rTMzCEJWYHf": {}, "nwRQZkJfCEX4vib9": {}, "c9quPvwUo9OqfssH": {}}, "longDescription": "c1Y8UohmRO0IafNf", "title": "cZb9LzVmqJz6RYs1"}, "alNZciagJVQIQ3iD": {"description": "3lkV2lWXEmq7DJUD", "localExt": {"upecUIJX84oBxj2Z": {}, "TjkPQlTFB6SVunYS": {}, "Y8cDnd5XhGaLiSSg": {}}, "longDescription": "5jYPJS4qVIwJoBsH", "title": "7bkJGgBEqDxixwW1"}, "IT9zRMa4cLqqvyIb": {"description": "6x07oMQQsX5PcD7y", "localExt": {"v0jPw0RdU3sasgp4": {}, "ZLpw55FcQ8pEmkk9": {}, "nFbuAsxMxIiNtV25": {}}, "longDescription": "ztn80TGjJZdjhMHc", "title": "y76GRaeU8FWxugSt"}}, "name": "fnlvQ8mQwOfqHGUV", "rotationType": "CUSTOM", "startDate": "1978-03-21T00:00:00Z", "viewId": "QBr0pR0RomyFgxd5"}' \
    > test.out 2>&1
eval_tap $? 175 'CreateSection' test.out

#- 176 PurgeExpiredSection
samples/cli/sample-apps Platform purgeExpiredSection \
    --namespace $AB_NAMESPACE \
    --storeId 'RUd0Z8U5YV8oeF7j' \
    > test.out 2>&1
eval_tap $? 176 'PurgeExpiredSection' test.out

#- 177 GetSection
samples/cli/sample-apps Platform getSection \
    --namespace $AB_NAMESPACE \
    --sectionId 'I1fOhn8PbJudbXkK' \
    --storeId '8A6Y3U1WGwG7I3eq' \
    > test.out 2>&1
eval_tap $? 177 'GetSection' test.out

#- 178 UpdateSection
samples/cli/sample-apps Platform updateSection \
    --namespace $AB_NAMESPACE \
    --sectionId '44DuDrPB8GYAYTIF' \
    --storeId 'z3fPvkLzZWnSf9Pa' \
    --body '{"active": true, "displayOrder": 84, "endDate": "1985-05-31T00:00:00Z", "ext": {"WfIOtjWU7bRE8DOx": {}, "a393gNqrZyEDpfO0": {}, "F8bbDCj6khcMneMz": {}}, "fixedPeriodRotationConfig": {"backfillType": "CUSTOM", "duration": 83, "itemCount": 99, "rule": "SEQUENCE"}, "items": [{"id": "zZcRNc8545ZcK9dt", "sku": "8kTgXRtuygVaasxU"}, {"id": "1PBbOE32DTF2Ts9N", "sku": "ZRbIagrNUzGeFRwj"}, {"id": "H0mk8oqyeGYhUZ9z", "sku": "kBCVSuCmhomKFPfb"}], "localizations": {"G0J2BPP0Bthos6tp": {"description": "8pBLcoIK5A62UNTl", "localExt": {"Eb4bngifWMz0YM0e": {}, "arN55UNT9bznFtJD": {}, "E4bEHJZRfTFrk7Nd": {}}, "longDescription": "F63yxCfM848iQL2p", "title": "PWOTCrjqIJ0K9bn1"}, "2w1gFtFECQOYpt7n": {"description": "pArPyEdwN0d1I6ra", "localExt": {"IjUAtILhHQp0KG2S": {}, "cjeLBhbz059fjhDA": {}, "GChLwHnN67BId8NY": {}}, "longDescription": "wCa7saepj5t0I965", "title": "6sXhdcIgpkIp4NdD"}, "EKy2Rfd4i8VEHCi4": {"description": "J1YUZddCJ1tV9Kd5", "localExt": {"m3NCqjj7rMjyYkB0": {}, "eSlOxA0e4wi874vh": {}, "nHDf6mxj4H7yrbDH": {}}, "longDescription": "MlCgEuCw2iDEiJ7I", "title": "uHx4Z6YF5RbgwWUp"}}, "name": "B3G8zcB0n6wiWcz4", "rotationType": "FIXED_PERIOD", "startDate": "1987-10-11T00:00:00Z", "viewId": "0MolXcZZPWKkBZe0"}' \
    > test.out 2>&1
eval_tap $? 178 'UpdateSection' test.out

#- 179 DeleteSection
samples/cli/sample-apps Platform deleteSection \
    --namespace $AB_NAMESPACE \
    --sectionId 'Y5s3bgDfbQfYZ0eG' \
    --storeId 'fFbH6yy04Gyy6ixw' \
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
    --body '{"defaultLanguage": "SLIjtHBHep69eiam", "defaultRegion": "1sl2Sj04vW9lPdG7", "description": "5vwYNroFwmZlihNx", "supportedLanguages": ["AnHUGg0WV0LsCz00", "3upAOHhEGohhxAHo", "nrbf01HA7jpq0l3K"], "supportedRegions": ["vL6tswhUwKOu8VeP", "Tcl3l4m4vlPCU5sQ", "ZgG0ZXdFZtRNrZft"], "title": "jNbJlq2a3hfCqKnK"}' \
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
    --storeId 'wGuNF8IpQJIKZlav' \
    > test.out 2>&1
eval_tap $? 187 'GetStore' test.out

#- 188 UpdateStore
samples/cli/sample-apps Platform updateStore \
    --namespace $AB_NAMESPACE \
    --storeId 'AZT11eIx5opws3mD' \
    --body '{"defaultLanguage": "YxDT29Q6yXORFRjB", "defaultRegion": "hND0BYDwuQ5ZIwY8", "description": "qKtPFNdSVsT921u8", "supportedLanguages": ["eDriwy9DF2tzBK5e", "8t4rqBannGu2SFTM", "yVIadXB4bmmTy5wT"], "supportedRegions": ["c5jHP3l33rka0g5g", "A4PN7DFz2jzXormf", "AQxVVMl1LNtSZafW"], "title": "peLv0CLcXyGWLhKC"}' \
    > test.out 2>&1
eval_tap $? 188 'UpdateStore' test.out

#- 189 DeleteStore
samples/cli/sample-apps Platform deleteStore \
    --namespace $AB_NAMESPACE \
    --storeId 'ZaVcBeONx00RI7Ax' \
    > test.out 2>&1
eval_tap $? 189 'DeleteStore' test.out

#- 190 QueryChanges
samples/cli/sample-apps Platform queryChanges \
    --namespace $AB_NAMESPACE \
    --storeId 'pCbvuL1B7bdBnR3b' \
    --action 'CREATE' \
    --itemSku 'L1HvviRjwdWOwNnj' \
    --itemType 'MEDIA' \
    --limit '39' \
    --offset '12' \
    --selected 'true' \
    --sortBy '["createdAt", "updatedAt"]' \
    --status 'UNPUBLISHED' \
    --type 'VIEW' \
    --updatedAtEnd 'ZMnbm4qGtA39bkBg' \
    --updatedAtStart 'UUGYJhr9O0bQ9ASG' \
    --withTotal 'false' \
    > test.out 2>&1
eval_tap $? 190 'QueryChanges' test.out

#- 191 PublishAll
samples/cli/sample-apps Platform publishAll \
    --namespace $AB_NAMESPACE \
    --storeId 'uU3Ra5rGQWr7W2xX' \
    > test.out 2>&1
eval_tap $? 191 'PublishAll' test.out

#- 192 PublishSelected
samples/cli/sample-apps Platform publishSelected \
    --namespace $AB_NAMESPACE \
    --storeId 'AiYetSoGtG09f7aE' \
    > test.out 2>&1
eval_tap $? 192 'PublishSelected' test.out

#- 193 SelectAllRecords
samples/cli/sample-apps Platform selectAllRecords \
    --namespace $AB_NAMESPACE \
    --storeId 'nfLUvyf87qkLpLfn' \
    > test.out 2>&1
eval_tap $? 193 'SelectAllRecords' test.out

#- 194 SelectAllRecordsByCriteria
samples/cli/sample-apps Platform selectAllRecordsByCriteria \
    --namespace $AB_NAMESPACE \
    --storeId 'BFgjppYmr5Y5uTE3' \
    --action 'UPDATE' \
    --itemSku '9xoonQj9mUUHQa0e' \
    --itemType 'EXTENSION' \
    --selected 'true' \
    --type 'VIEW' \
    --updatedAtEnd 'jeY4EU70YCgEvCQu' \
    --updatedAtStart 'KtUzuOWjNPl7FDBt' \
    > test.out 2>&1
eval_tap $? 194 'SelectAllRecordsByCriteria' test.out

#- 195 GetStatistic
samples/cli/sample-apps Platform getStatistic \
    --namespace $AB_NAMESPACE \
    --storeId 'AHIs242K8aVnXYgO' \
    --action 'CREATE' \
    --itemSku 'xwaXafK1UypXLnwD' \
    --itemType 'OPTIONBOX' \
    --type 'VIEW' \
    --updatedAtEnd 'ED8PcLfi5KOUiksT' \
    --updatedAtStart 'QNVF3NhXzrkwBiMR' \
    > test.out 2>&1
eval_tap $? 195 'GetStatistic' test.out

#- 196 UnselectAllRecords
samples/cli/sample-apps Platform unselectAllRecords \
    --namespace $AB_NAMESPACE \
    --storeId 'zXlSQvSmBRrwkDKC' \
    > test.out 2>&1
eval_tap $? 196 'UnselectAllRecords' test.out

#- 197 SelectRecord
samples/cli/sample-apps Platform selectRecord \
    --changeId 'wp6zGGz0D3C5hbbq' \
    --namespace $AB_NAMESPACE \
    --storeId 'h2oWG6ov3TXL4HYa' \
    > test.out 2>&1
eval_tap $? 197 'SelectRecord' test.out

#- 198 UnselectRecord
samples/cli/sample-apps Platform unselectRecord \
    --changeId '3Hn8xoQFHHEkEwoL' \
    --namespace $AB_NAMESPACE \
    --storeId 'pVgqQGLodIDYQVlP' \
    > test.out 2>&1
eval_tap $? 198 'UnselectRecord' test.out

#- 199 CloneStore
samples/cli/sample-apps Platform cloneStore \
    --namespace $AB_NAMESPACE \
    --storeId 'PkD7cCrYJ5otnHYB' \
    --targetStoreId 'uOGAU7K6KaRLgwGQ' \
    > test.out 2>&1
eval_tap $? 199 'CloneStore' test.out

#- 200 ExportStore
eval_tap 0 200 'ExportStore # SKIP deprecated' test.out

#- 201 QuerySubscriptions
samples/cli/sample-apps Platform querySubscriptions \
    --namespace $AB_NAMESPACE \
    --chargeStatus 'CHARGE_FAILED' \
    --itemId '9JPbB0DWlbDgdrKP' \
    --limit '59' \
    --offset '70' \
    --sku 't7LMdVJ6qxxCjylV' \
    --status 'CANCELLED' \
    --subscribedBy 'PLATFORM' \
    --userId 'rUNPdtQF99wWuHpW' \
    > test.out 2>&1
eval_tap $? 201 'QuerySubscriptions' test.out

#- 202 RecurringChargeSubscription
samples/cli/sample-apps Platform recurringChargeSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'NrcW1ZKzglurR20g' \
    > test.out 2>&1
eval_tap $? 202 'RecurringChargeSubscription' test.out

#- 203 GetTicketDynamic
samples/cli/sample-apps Platform getTicketDynamic \
    --boothName 'jhonSDXGuocKkJmq' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 203 'GetTicketDynamic' test.out

#- 204 DecreaseTicketSale
samples/cli/sample-apps Platform decreaseTicketSale \
    --boothName '1mNbV95x0FvNyueb' \
    --namespace $AB_NAMESPACE \
    --body '{"orderNo": "dJdKEN1WgIr4w5Hy"}' \
    > test.out 2>&1
eval_tap $? 204 'DecreaseTicketSale' test.out

#- 205 GetTicketBoothID
samples/cli/sample-apps Platform getTicketBoothID \
    --boothName 'gLb0IkdNjYWK05DZ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 205 'GetTicketBoothID' test.out

#- 206 IncreaseTicketSale
samples/cli/sample-apps Platform increaseTicketSale \
    --boothName 'YUtqesrFCA6Pu936' \
    --namespace $AB_NAMESPACE \
    --body '{"count": 73, "orderNo": "f6MBqyw5ujy2zKzg"}' \
    > test.out 2>&1
eval_tap $? 206 'IncreaseTicketSale' test.out

#- 207 Commit
samples/cli/sample-apps Platform commit \
    --namespace $AB_NAMESPACE \
    --body '{"actions": [{"operations": [{"creditPayload": {"balanceOrigin": "Steam", "count": 25, "currencyCode": "i4HncdJHJSeH1uRr", "expireAt": "1991-05-18T00:00:00Z"}, "debitPayload": {"count": 18, "currencyCode": "Makj2T3DE1uk2WS4", "walletPlatform": "Xbox"}, "fulFillItemPayload": {"count": 46, "itemIdentity": "NrfmSw4vyGOxhxlD", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 47, "entitlementId": "FsylfZqFZCkxZCRb"}, "type": "REVOKE_ENTITLEMENT"}, {"creditPayload": {"balanceOrigin": "Playstation", "count": 75, "currencyCode": "Xt6FAu8MXhWQPUYn", "expireAt": "1979-07-19T00:00:00Z"}, "debitPayload": {"count": 83, "currencyCode": "rrDTFaz9zRfxhlM9", "walletPlatform": "Playstation"}, "fulFillItemPayload": {"count": 31, "itemIdentity": "9auhs1nxewGqCeWI", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 58, "entitlementId": "7o7gzAcLenjSS80d"}, "type": "REVOKE_ENTITLEMENT"}, {"creditPayload": {"balanceOrigin": "Oculus", "count": 15, "currencyCode": "zx9KHxAlcfynaEjI", "expireAt": "1987-10-20T00:00:00Z"}, "debitPayload": {"count": 47, "currencyCode": "yU971NDReUH3zTae", "walletPlatform": "GooglePlay"}, "fulFillItemPayload": {"count": 97, "itemIdentity": "k1UJAUJmN9TONFZK", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 8, "entitlementId": "hrU0v3MVW9hLyh1T"}, "type": "FULFILL_ITEM"}], "userId": "UTuSbHkma66kckHJ"}, {"operations": [{"creditPayload": {"balanceOrigin": "Oculus", "count": 57, "currencyCode": "PiUJBn5JJbjBdudR", "expireAt": "1997-05-20T00:00:00Z"}, "debitPayload": {"count": 2, "currencyCode": "6Di8G1sjLy3qfo6Y", "walletPlatform": "Steam"}, "fulFillItemPayload": {"count": 18, "itemIdentity": "9uFV9tmWHqfg9d69", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 13, "entitlementId": "9YKsfHoRUWRrsapz"}, "type": "DEBIT_WALLET"}, {"creditPayload": {"balanceOrigin": "Epic", "count": 36, "currencyCode": "CG5zXE29ASZ72j4Y", "expireAt": "1998-05-13T00:00:00Z"}, "debitPayload": {"count": 10, "currencyCode": "eQVhbnnET7bfulOR", "walletPlatform": "GooglePlay"}, "fulFillItemPayload": {"count": 96, "itemIdentity": "VPW3JDvTQkxxWH3f", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 27, "entitlementId": "XgamkNir7hyQHcYW"}, "type": "CREDIT_WALLET"}, {"creditPayload": {"balanceOrigin": "Epic", "count": 52, "currencyCode": "vFt6Q2QWleE9JRRF", "expireAt": "1998-11-07T00:00:00Z"}, "debitPayload": {"count": 15, "currencyCode": "98Z3OxdC2nZ55R3N", "walletPlatform": "Nintendo"}, "fulFillItemPayload": {"count": 22, "itemIdentity": "vxhag9Xtu7tDpJwO", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 90, "entitlementId": "2PTInAEeEF9YiUTa"}, "type": "CREDIT_WALLET"}], "userId": "SsGN3iPDFNDxxIlD"}, {"operations": [{"creditPayload": {"balanceOrigin": "IOS", "count": 8, "currencyCode": "h9JmWe8vwKiBkQyF", "expireAt": "1994-03-10T00:00:00Z"}, "debitPayload": {"count": 71, "currencyCode": "uGBWN0ZokBobi1Q3", "walletPlatform": "GooglePlay"}, "fulFillItemPayload": {"count": 4, "itemIdentity": "1U7QyEeDFoumALha", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 64, "entitlementId": "4HxvPZkT3toaxajn"}, "type": "DEBIT_WALLET"}, {"creditPayload": {"balanceOrigin": "IOS", "count": 17, "currencyCode": "x9EVZgfP7VtBbW1D", "expireAt": "1999-04-04T00:00:00Z"}, "debitPayload": {"count": 75, "currencyCode": "8lB8Z8myns6EOkHQ", "walletPlatform": "Steam"}, "fulFillItemPayload": {"count": 84, "itemIdentity": "dW7sD2jE1aZVazj8", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 33, "entitlementId": "lSCFrL7tbLO85vfe"}, "type": "DEBIT_WALLET"}, {"creditPayload": {"balanceOrigin": "Epic", "count": 76, "currencyCode": "NWvV0kYDu4a6SGrl", "expireAt": "1977-12-21T00:00:00Z"}, "debitPayload": {"count": 47, "currencyCode": "n7B9qzLNEFbtRGmx", "walletPlatform": "Playstation"}, "fulFillItemPayload": {"count": 71, "itemIdentity": "kQEVfaGBIaMr14wZ", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 74, "entitlementId": "aj6IFCHgmHGpjFpC"}, "type": "FULFILL_ITEM"}], "userId": "SdkwmCzmsIxEUnlm"}], "metadata": {"mjJc0WjM8yHoiqmK": {}, "vPIKf2uWv64baoya": {}, "3LItmLxjiLKNiUsH": {}}, "needPreCheck": false, "transactionId": "BQQVQzPmnL8hRd9l", "type": "BKD0YOTSCgEaQhSw"}' \
    > test.out 2>&1
eval_tap $? 207 'Commit' test.out

#- 208 GetTradeHistoryByCriteria
samples/cli/sample-apps Platform getTradeHistoryByCriteria \
    --namespace $AB_NAMESPACE \
    --limit '66' \
    --offset '91' \
    --status 'FAILED' \
    --type 'fM72wFS1irXCyzyc' \
    --userId 'j8XFBSGxjZs18BNx' \
    > test.out 2>&1
eval_tap $? 208 'GetTradeHistoryByCriteria' test.out

#- 209 GetTradeHistoryByTransactionId
samples/cli/sample-apps Platform getTradeHistoryByTransactionId \
    --namespace $AB_NAMESPACE \
    --transactionId 'x7lm7ZviLIlImjic' \
    > test.out 2>&1
eval_tap $? 209 'GetTradeHistoryByTransactionId' test.out

#- 210 UnlockSteamUserAchievement
samples/cli/sample-apps Platform unlockSteamUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId '6W2fzyEFWB0c24EB' \
    --body '{"achievements": [{"id": "WZxH3eN8QHbeGRkJ", "value": 54}, {"id": "Gn3llW3iOSfkZ5sg", "value": 89}, {"id": "1RPb99M15Op8OPEv", "value": 72}], "steamUserId": "DnI8kpCegV5NWekv"}' \
    > test.out 2>&1
eval_tap $? 210 'UnlockSteamUserAchievement' test.out

#- 211 GetXblUserAchievements
samples/cli/sample-apps Platform getXblUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId 'fNdabY9VMO5fczUL' \
    --xboxUserId 'KgL0fuO4FNUdDYLi' \
    > test.out 2>&1
eval_tap $? 211 'GetXblUserAchievements' test.out

#- 212 UpdateXblUserAchievement
samples/cli/sample-apps Platform updateXblUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'js8PQQ7PAvgcBbbf' \
    --body '{"achievements": [{"id": "jVAGg95fbxmVLMP9", "percentComplete": 15}, {"id": "hnVox44JI3ee36Cj", "percentComplete": 29}, {"id": "ihAb74pNl5eL8YVa", "percentComplete": 97}], "serviceConfigId": "UGgDrQi1dbhRZF0T", "titleId": "Mi7MHRsw1Elm0kAf", "xboxUserId": "3koRQJURJfhNZeT2"}' \
    > test.out 2>&1
eval_tap $? 212 'UpdateXblUserAchievement' test.out

#- 213 AnonymizeCampaign
samples/cli/sample-apps Platform anonymizeCampaign \
    --namespace $AB_NAMESPACE \
    --userId '1nodsaWa597RIqWW' \
    > test.out 2>&1
eval_tap $? 213 'AnonymizeCampaign' test.out

#- 214 AnonymizeEntitlement
samples/cli/sample-apps Platform anonymizeEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'kWr0leM1unHeRCLO' \
    > test.out 2>&1
eval_tap $? 214 'AnonymizeEntitlement' test.out

#- 215 AnonymizeFulfillment
samples/cli/sample-apps Platform anonymizeFulfillment \
    --namespace $AB_NAMESPACE \
    --userId 'EV1stjcEfIoIstmC' \
    > test.out 2>&1
eval_tap $? 215 'AnonymizeFulfillment' test.out

#- 216 AnonymizeIntegration
samples/cli/sample-apps Platform anonymizeIntegration \
    --namespace $AB_NAMESPACE \
    --userId 'hfeLugIuaNpISr4f' \
    > test.out 2>&1
eval_tap $? 216 'AnonymizeIntegration' test.out

#- 217 AnonymizeOrder
samples/cli/sample-apps Platform anonymizeOrder \
    --namespace $AB_NAMESPACE \
    --userId 'VO9lvbzQuy9BomGI' \
    > test.out 2>&1
eval_tap $? 217 'AnonymizeOrder' test.out

#- 218 AnonymizePayment
samples/cli/sample-apps Platform anonymizePayment \
    --namespace $AB_NAMESPACE \
    --userId 'jK68ivyjaSTc126h' \
    > test.out 2>&1
eval_tap $? 218 'AnonymizePayment' test.out

#- 219 AnonymizeRevocation
samples/cli/sample-apps Platform anonymizeRevocation \
    --namespace $AB_NAMESPACE \
    --userId '28LcpkDeHBA9Zz5u' \
    > test.out 2>&1
eval_tap $? 219 'AnonymizeRevocation' test.out

#- 220 AnonymizeSubscription
samples/cli/sample-apps Platform anonymizeSubscription \
    --namespace $AB_NAMESPACE \
    --userId 'PTUvIynrJgQKX2rQ' \
    > test.out 2>&1
eval_tap $? 220 'AnonymizeSubscription' test.out

#- 221 AnonymizeWallet
samples/cli/sample-apps Platform anonymizeWallet \
    --namespace $AB_NAMESPACE \
    --userId '3x34KHVinwCYTJqe' \
    > test.out 2>&1
eval_tap $? 221 'AnonymizeWallet' test.out

#- 222 GetUserDLCByPlatform
samples/cli/sample-apps Platform getUserDLCByPlatform \
    --namespace $AB_NAMESPACE \
    --userId '9A6NcxawV2RTiddn' \
    --type 'EPICGAMES' \
    > test.out 2>&1
eval_tap $? 222 'GetUserDLCByPlatform' test.out

#- 223 GetUserDLC
samples/cli/sample-apps Platform getUserDLC \
    --namespace $AB_NAMESPACE \
    --userId 'IrvRU3SPelqLTM3F' \
    --type 'PSN' \
    > test.out 2>&1
eval_tap $? 223 'GetUserDLC' test.out

#- 224 QueryUserEntitlements
samples/cli/sample-apps Platform queryUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'z1d3d8l8sT7ZAZPf' \
    --activeOnly 'true' \
    --appType 'GAME' \
    --entitlementClazz 'OPTIONBOX' \
    --entitlementName 'Ll5kUfVsZziEK97o' \
    --features '["CD1H7zRs7g9WhF0H", "G0Yty1JTyxUrIZHz", "LtRpxMEkuCzRUGYA"]' \
    --itemId '["k7B9nBWXMmCQ89eq", "8U5wiUVFARLw51jo", "8SZKrSxqwUzX7heB"]' \
    --limit '50' \
    --offset '6' \
    > test.out 2>&1
eval_tap $? 224 'QueryUserEntitlements' test.out

#- 225 GrantUserEntitlement
samples/cli/sample-apps Platform grantUserEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'HLMIYtUy0wThKekU' \
    --body '[{"endDate": "1977-08-17T00:00:00Z", "grantedCode": "5hA4EultWryh9CxJ", "itemId": "qZCsLfkLA7zg6FDG", "itemNamespace": "fgks9mRxRzuUi5Eh", "language": "hIK", "quantity": 66, "region": "DAJLR4wCUnPeJYIB", "source": "GIFT", "startDate": "1978-06-09T00:00:00Z", "storeId": "3Uy0gR47OKutHT4N"}, {"endDate": "1973-03-17T00:00:00Z", "grantedCode": "QY7el4eyyCOjuI2v", "itemId": "efjnseVSif0JU38P", "itemNamespace": "LKM1tgvhIcZmhokO", "language": "ERA", "quantity": 5, "region": "zqmstPXwft2MTUTp", "source": "OTHER", "startDate": "1971-04-21T00:00:00Z", "storeId": "NNj3uJJLlMkWmPjY"}, {"endDate": "1986-07-15T00:00:00Z", "grantedCode": "2QhgOE1yXmVCLwjv", "itemId": "CYoG6YR4rvYXobs8", "itemNamespace": "Wm8kUdc2RsyijO6a", "language": "MWhP-FMNQ", "quantity": 46, "region": "19roGSYpPB5ViSW4", "source": "PURCHASE", "startDate": "1972-08-01T00:00:00Z", "storeId": "AOh1GRopgUGVhMYn"}]' \
    > test.out 2>&1
eval_tap $? 225 'GrantUserEntitlement' test.out

#- 226 GetUserAppEntitlementByAppId
samples/cli/sample-apps Platform getUserAppEntitlementByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'VJcpnJsbZ81JylMZ' \
    --activeOnly 'true' \
    --appId 'oVvi6B4WmGoIdP1c' \
    > test.out 2>&1
eval_tap $? 226 'GetUserAppEntitlementByAppId' test.out

#- 227 QueryUserEntitlementsByAppType
samples/cli/sample-apps Platform queryUserEntitlementsByAppType \
    --namespace $AB_NAMESPACE \
    --userId 'XxEaoTQUcO1kUhsK' \
    --activeOnly 'false' \
    --limit '1' \
    --offset '79' \
    --appType 'SOFTWARE' \
    > test.out 2>&1
eval_tap $? 227 'QueryUserEntitlementsByAppType' test.out

#- 228 GetUserEntitlementByItemId
samples/cli/sample-apps Platform getUserEntitlementByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'vN4zHmqvi7MWZNmS' \
    --activeOnly 'false' \
    --entitlementClazz 'ENTITLEMENT' \
    --itemId 'KDm6NJ8v5VXEHBad' \
    > test.out 2>&1
eval_tap $? 228 'GetUserEntitlementByItemId' test.out

#- 229 GetUserActiveEntitlementsByItemIds
samples/cli/sample-apps Platform getUserActiveEntitlementsByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'zVO6om9LtJe328q8' \
    --ids '["0rwkBz4WAHOpnEk4", "Vu5Dc8vG75QdirwY", "B0Ki7tmnJR3JFZnd"]' \
    > test.out 2>&1
eval_tap $? 229 'GetUserActiveEntitlementsByItemIds' test.out

#- 230 GetUserEntitlementBySku
samples/cli/sample-apps Platform getUserEntitlementBySku \
    --namespace $AB_NAMESPACE \
    --userId 'AMxl0uuna9DUqDn3' \
    --activeOnly 'false' \
    --entitlementClazz 'ENTITLEMENT' \
    --sku 'YcLl6txLfIZP6vpv' \
    > test.out 2>&1
eval_tap $? 230 'GetUserEntitlementBySku' test.out

#- 231 ExistsAnyUserActiveEntitlement
samples/cli/sample-apps Platform existsAnyUserActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'fnDwV56pnsnfKTHf' \
    --appIds '["lYhQeRU9tAlOtnZh", "aT31iHv53F2w56CO", "PuDlEx4GC5Il7DLc"]' \
    --itemIds '["VNalOG6vt7nUlLP4", "FCCll9nNV4b90plK", "10MAdBbXGOXYyGww"]' \
    --skus '["HUwg1AWbX05hk7Rs", "QpwxjGXx0ZL9drmu", "XHlizi5kq6b5x6im"]' \
    > test.out 2>&1
eval_tap $? 231 'ExistsAnyUserActiveEntitlement' test.out

#- 232 ExistsAnyUserActiveEntitlementByItemIds
samples/cli/sample-apps Platform existsAnyUserActiveEntitlementByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'naJr3y9xQIfJ5cwR' \
    --itemIds '["MztmyWHRXjnc1JFi", "5AEg0g2ozB1eQ8qH", "7BY9Otoybpj0SkRb"]' \
    > test.out 2>&1
eval_tap $? 232 'ExistsAnyUserActiveEntitlementByItemIds' test.out

#- 233 GetUserAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform getUserAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'dOYXJtMvIDtXUC9z' \
    --appId '9UVKRGvEt595I8Fo' \
    > test.out 2>&1
eval_tap $? 233 'GetUserAppEntitlementOwnershipByAppId' test.out

#- 234 GetUserEntitlementOwnershipByItemId
samples/cli/sample-apps Platform getUserEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'ZEi1dvYOoMGIDnkT' \
    --entitlementClazz 'ENTITLEMENT' \
    --itemId 'u7buvjA9Qk74D5G7' \
    > test.out 2>&1
eval_tap $? 234 'GetUserEntitlementOwnershipByItemId' test.out

#- 235 GetUserEntitlementOwnershipByItemIds
samples/cli/sample-apps Platform getUserEntitlementOwnershipByItemIds \
    --namespace $AB_NAMESPACE \
    --userId '3J5Hny9I2gu2qZJF' \
    --ids '["tAhpwIBaoeTHy8SU", "wgmXfKE7DFJo2qcx", "HK9xgj3yolSYzjcR"]' \
    > test.out 2>&1
eval_tap $? 235 'GetUserEntitlementOwnershipByItemIds' test.out

#- 236 GetUserEntitlementOwnershipBySku
samples/cli/sample-apps Platform getUserEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --userId 'Erd8CCYXVRQDurww' \
    --entitlementClazz 'SUBSCRIPTION' \
    --sku 'gzq3PCdV1i9PLbYn' \
    > test.out 2>&1
eval_tap $? 236 'GetUserEntitlementOwnershipBySku' test.out

#- 237 RevokeAllEntitlements
samples/cli/sample-apps Platform revokeAllEntitlements \
    --namespace $AB_NAMESPACE \
    --userId '9NbuSlRGaay0xKnj' \
    > test.out 2>&1
eval_tap $? 237 'RevokeAllEntitlements' test.out

#- 238 RevokeUserEntitlements
samples/cli/sample-apps Platform revokeUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'c44ZURgfjZLSTmoV' \
    --entitlementIds 'UZnywzW9KRWGJhSw' \
    > test.out 2>&1
eval_tap $? 238 'RevokeUserEntitlements' test.out

#- 239 GetUserEntitlement
samples/cli/sample-apps Platform getUserEntitlement \
    --entitlementId 'dY2fcOe695Cqzfds' \
    --namespace $AB_NAMESPACE \
    --userId 'CwpGeviDsVTfcHDv' \
    > test.out 2>&1
eval_tap $? 239 'GetUserEntitlement' test.out

#- 240 UpdateUserEntitlement
samples/cli/sample-apps Platform updateUserEntitlement \
    --entitlementId 'XHdGL7aBXuJXfQtb' \
    --namespace $AB_NAMESPACE \
    --userId 'N6hKbYFomUDpdO0z' \
    --body '{"endDate": "1992-08-28T00:00:00Z", "nullFieldList": ["51Q5olLy2B8LaWhi", "GPKzzgCYjQ46XUjn", "RG6clbmRC2KkfBCP"], "startDate": "1997-03-09T00:00:00Z", "status": "ACTIVE", "useCount": 23}' \
    > test.out 2>&1
eval_tap $? 240 'UpdateUserEntitlement' test.out

#- 241 ConsumeUserEntitlement
samples/cli/sample-apps Platform consumeUserEntitlement \
    --entitlementId 'W6P2eJO4d8MFF2JE' \
    --namespace $AB_NAMESPACE \
    --userId 'CRK7uv87CXJOaaZG' \
    --body '{"options": ["RiEyyjR2b3kn1rqO", "q9bQeclp7R1AdwAP", "K7N9Ro7bwCy6tKCo"], "requestId": "MP9QdoltF6KIguaJ", "useCount": 20}' \
    > test.out 2>&1
eval_tap $? 241 'ConsumeUserEntitlement' test.out

#- 242 DisableUserEntitlement
samples/cli/sample-apps Platform disableUserEntitlement \
    --entitlementId 'OIsYPKcqR0MSCKd0' \
    --namespace $AB_NAMESPACE \
    --userId 'piRDpMFHGRCWlcdz' \
    > test.out 2>&1
eval_tap $? 242 'DisableUserEntitlement' test.out

#- 243 EnableUserEntitlement
samples/cli/sample-apps Platform enableUserEntitlement \
    --entitlementId 'jTJPNWrMJlTbU8rB' \
    --namespace $AB_NAMESPACE \
    --userId 'OHArvClwRdyIlXum' \
    > test.out 2>&1
eval_tap $? 243 'EnableUserEntitlement' test.out

#- 244 GetUserEntitlementHistories
samples/cli/sample-apps Platform getUserEntitlementHistories \
    --entitlementId 'zwTHfwdbW7rKEJWm' \
    --namespace $AB_NAMESPACE \
    --userId 'TH4l6HcwIBUBue71' \
    > test.out 2>&1
eval_tap $? 244 'GetUserEntitlementHistories' test.out

#- 245 RevokeUserEntitlement
samples/cli/sample-apps Platform revokeUserEntitlement \
    --entitlementId '9zpI0bldN86uWclp' \
    --namespace $AB_NAMESPACE \
    --userId 'ZLuhkyasGfHZFugD' \
    > test.out 2>&1
eval_tap $? 245 'RevokeUserEntitlement' test.out

#- 246 RevokeUserEntitlementByUseCount
samples/cli/sample-apps Platform revokeUserEntitlementByUseCount \
    --entitlementId 'ykUlHA7Upg0OeD2N' \
    --namespace $AB_NAMESPACE \
    --userId 'WRfwCUlv1KepTeuO' \
    --body '{"reason": "2GiA9QCI8tgRMKXS", "useCount": 20}' \
    > test.out 2>&1
eval_tap $? 246 'RevokeUserEntitlementByUseCount' test.out

#- 247 PreCheckRevokeUserEntitlementByUseCount
samples/cli/sample-apps Platform preCheckRevokeUserEntitlementByUseCount \
    --entitlementId 'p1Wr85g1a99hlZxb' \
    --namespace $AB_NAMESPACE \
    --userId 'JXPRt48ORSuaDCW6' \
    --quantity '91' \
    > test.out 2>&1
eval_tap $? 247 'PreCheckRevokeUserEntitlementByUseCount' test.out

#- 248 RevokeUseCount
eval_tap 0 248 'RevokeUseCount # SKIP deprecated' test.out

#- 249 SellUserEntitlement
samples/cli/sample-apps Platform sellUserEntitlement \
    --entitlementId 'UUO5P5ZMPwqTg1jk' \
    --namespace $AB_NAMESPACE \
    --userId 'SbaXco3cNSwyg2M5' \
    --body '{"requestId": "mNtTbWaaJHL6CDgr", "useCount": 55}' \
    > test.out 2>&1
eval_tap $? 249 'SellUserEntitlement' test.out

#- 250 FulfillItem
samples/cli/sample-apps Platform fulfillItem \
    --namespace $AB_NAMESPACE \
    --userId 'FM9i7NF5uv5Cyp5z' \
    --body '{"duration": 67, "endDate": "1971-01-31T00:00:00Z", "itemId": "CcMPRJen7OQrY8lM", "itemSku": "iYpiSSkZCOnMiuU4", "language": "Guuy8yYlCKguyKbp", "metadata": {"InsRbKLP7oxw28La": {}, "E84ZGX04zMeoMXbF": {}, "OBPrhaixuY8dSGAo": {}}, "order": {"currency": {"currencyCode": "CwPGTaCMuFpLJc5w", "currencySymbol": "5WwPVrYVB2FdjpsX", "currencyType": "VIRTUAL", "decimals": 6, "namespace": "yp9yGWhEECkVa1DF"}, "ext": {"l1uSyE0LEPS46hfW": {}, "eoB3PcidElCaX38O": {}, "bUJ26Dxtb3vUd089": {}}, "free": true}, "orderNo": "RgEkgrRELIKjiMO1", "origin": "Other", "overrideBundleItemQty": {"woaCQWhz1YZLBPNC": 61, "1JLB32MHrmLeQgIC": 89, "Hq9uEKPoFunpOwKQ": 17}, "quantity": 59, "region": "DklD8rnQr5OLw19o", "source": "PROMOTION", "startDate": "1986-01-28T00:00:00Z", "storeId": "EewmWpJFcW3HuH8b"}' \
    > test.out 2>&1
eval_tap $? 250 'FulfillItem' test.out

#- 251 RedeemCode
samples/cli/sample-apps Platform redeemCode \
    --namespace $AB_NAMESPACE \
    --userId 'G9UM5UQ3JZlSVJRj' \
    --body '{"code": "w8PpOPS15N3vanpt", "language": "PaMx-zvbn-ya", "region": "d7vLS05FaNPTl5eG"}' \
    > test.out 2>&1
eval_tap $? 251 'RedeemCode' test.out

#- 252 PreCheckFulfillItem
samples/cli/sample-apps Platform preCheckFulfillItem \
    --namespace $AB_NAMESPACE \
    --userId 'Z2piY9n2qgofYsLO' \
    --body '{"itemId": "Am2nlSiTA3G9OCbl", "itemSku": "nvebWmnUlnA0toX0", "quantity": 29}' \
    > test.out 2>&1
eval_tap $? 252 'PreCheckFulfillItem' test.out

#- 253 FulfillRewards
samples/cli/sample-apps Platform fulfillRewards \
    --namespace $AB_NAMESPACE \
    --userId '66rgby9QXRGuFi6d' \
    --body '{"metadata": {"0kNOnknfan7HJoVJ": {}, "xJsESpo5Ug4T0jrG": {}, "hEyfXI92noOAEu8w": {}}, "origin": "System", "rewards": [{"currency": {"currencyCode": "ohsXHrgVORn6kTsZ", "namespace": "UFdrhKNZhsHqteXo"}, "item": {"itemId": "e97Xz4cwAZ1I1nYW", "itemSku": "sN8vDTQmNChJaZjN", "itemType": "g4Zd78qK4KzytSam"}, "quantity": 56, "type": "CURRENCY"}, {"currency": {"currencyCode": "tpJvJkqxlvMAqgzp", "namespace": "lpvEEpUJvAL7ORXK"}, "item": {"itemId": "tM59Jp70iz66Eq4p", "itemSku": "EUhNRFAB4GKJ9aKM", "itemType": "8o0AHKX9QR2csp9c"}, "quantity": 81, "type": "CURRENCY"}, {"currency": {"currencyCode": "LuUEOeVY3VOlvH7x", "namespace": "5e20ZdfzACpdEcti"}, "item": {"itemId": "hWnf8yimOYyutuEh", "itemSku": "XYSXCJeBOaXC8peR", "itemType": "jA5J1d0lVIqxfOPj"}, "quantity": 5, "type": "ITEM"}], "source": "CONSUME_ENTITLEMENT", "transactionId": "g9jzCcSVTMQ5d01j"}' \
    > test.out 2>&1
eval_tap $? 253 'FulfillRewards' test.out

#- 254 QueryUserIAPOrders
samples/cli/sample-apps Platform queryUserIAPOrders \
    --namespace $AB_NAMESPACE \
    --userId 'AXXn4RTxdzexTRPh' \
    --endTime 'bG2u1HiFTgHBIFQW' \
    --limit '9' \
    --offset '3' \
    --productId 'Rs8QGvpmHwfCOPYA' \
    --startTime 'MOTbBJKxI2IVOHjZ' \
    --status 'VERIFIED' \
    --type 'PLAYSTATION' \
    > test.out 2>&1
eval_tap $? 254 'QueryUserIAPOrders' test.out

#- 255 QueryAllUserIAPOrders
samples/cli/sample-apps Platform queryAllUserIAPOrders \
    --namespace $AB_NAMESPACE \
    --userId 'imamxsrHLoAJa8rf' \
    > test.out 2>&1
eval_tap $? 255 'QueryAllUserIAPOrders' test.out

#- 256 QueryUserIAPConsumeHistory
samples/cli/sample-apps Platform queryUserIAPConsumeHistory \
    --namespace $AB_NAMESPACE \
    --userId 'v8wwAVo53IwWIxTN' \
    --endTime '30pWuPnnhECtbsL4' \
    --limit '28' \
    --offset '25' \
    --startTime 'dZ4RPN4DQTxMR6w6' \
    --status 'FAIL' \
    --type 'OCULUS' \
    > test.out 2>&1
eval_tap $? 256 'QueryUserIAPConsumeHistory' test.out

#- 257 MockFulfillIAPItem
samples/cli/sample-apps Platform mockFulfillIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'D21PA9iUdWVNZpxp' \
    --body '{"itemIdentityType": "ITEM_SKU", "language": "bU", "productId": "y3r0hPF4ZqG1WZ3m", "region": "FXYrCQ5i6HQFGVE1", "transactionId": "S1DvwRCeowYReDnf", "type": "GOOGLE"}' \
    > test.out 2>&1
eval_tap $? 257 'MockFulfillIAPItem' test.out

#- 258 QueryUserOrders
samples/cli/sample-apps Platform queryUserOrders \
    --namespace $AB_NAMESPACE \
    --userId 'yBRExxoCQIT5NEEO' \
    --itemId 'TRo7Ygk42YvRjERE' \
    --limit '2' \
    --offset '25' \
    --status 'CHARGEBACK' \
    > test.out 2>&1
eval_tap $? 258 'QueryUserOrders' test.out

#- 259 AdminCreateUserOrder
samples/cli/sample-apps Platform adminCreateUserOrder \
    --namespace $AB_NAMESPACE \
    --userId '5S2QPUiqAoWpUHOa' \
    --body '{"currencyCode": "Ahu9035qKORPvO2y", "currencyNamespace": "JBjoVcRpbpiW4cym", "discountedPrice": 40, "ext": {"3g7Cm3O6C0HBPHdt": {}, "oSd3RffobUvlFYth": {}, "95PifNHjgu83EZPu": {}}, "itemId": "0JzVYZEYIqYozMft", "language": "gdvz9kDh3aTt2n4f", "options": {"skipPriceValidation": false}, "platform": "Other", "price": 93, "quantity": 22, "region": "fcf2aaHnq2lcKUmg", "returnUrl": "AVBOXu5SvPwTYn4o", "sandbox": true, "sectionId": "nUpwwadnGuaXmN0y"}' \
    > test.out 2>&1
eval_tap $? 259 'AdminCreateUserOrder' test.out

#- 260 CountOfPurchasedItem
samples/cli/sample-apps Platform countOfPurchasedItem \
    --namespace $AB_NAMESPACE \
    --userId 'DDOxASzpVAWpYFTm' \
    --itemId 'eSjvfwPruRyRkf3n' \
    > test.out 2>&1
eval_tap $? 260 'CountOfPurchasedItem' test.out

#- 261 GetUserOrder
samples/cli/sample-apps Platform getUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'iqc2ZOHrhcylhQcZ' \
    --userId 'ONgeRWH4UqbCxkjg' \
    > test.out 2>&1
eval_tap $? 261 'GetUserOrder' test.out

#- 262 UpdateUserOrderStatus
samples/cli/sample-apps Platform updateUserOrderStatus \
    --namespace $AB_NAMESPACE \
    --orderNo 'wIhKg2abmRFv6dls' \
    --userId 'fzynFYLGV3W3AAvY' \
    --body '{"status": "CLOSED", "statusReason": "acuXLuB3Tqn8wIu2"}' \
    > test.out 2>&1
eval_tap $? 262 'UpdateUserOrderStatus' test.out

#- 263 FulfillUserOrder
samples/cli/sample-apps Platform fulfillUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'nk0GJxE7VutiaqjU' \
    --userId 'ybHOCGmO11UvN7sC' \
    > test.out 2>&1
eval_tap $? 263 'FulfillUserOrder' test.out

#- 264 GetUserOrderGrant
samples/cli/sample-apps Platform getUserOrderGrant \
    --namespace $AB_NAMESPACE \
    --orderNo 'MblEoSHrUDjMfxxh' \
    --userId 'rdvUxUwVyHSQ3xZ3' \
    > test.out 2>&1
eval_tap $? 264 'GetUserOrderGrant' test.out

#- 265 GetUserOrderHistories
samples/cli/sample-apps Platform getUserOrderHistories \
    --namespace $AB_NAMESPACE \
    --orderNo 'BoXS0w4E9FpgghYd' \
    --userId 'yHmLipp0tuBSh1Ki' \
    > test.out 2>&1
eval_tap $? 265 'GetUserOrderHistories' test.out

#- 266 ProcessUserOrderNotification
samples/cli/sample-apps Platform processUserOrderNotification \
    --namespace $AB_NAMESPACE \
    --orderNo 'E3s9qVWy8y6PTpmk' \
    --userId 'bngoUFEiuPzOuaHP' \
    --body '{"additionalData": {"cardSummary": "dAgLFxfI6XFgPcWO"}, "authorisedTime": "1998-02-26T00:00:00Z", "chargebackReversedTime": "1998-08-07T00:00:00Z", "chargebackTime": "1979-03-26T00:00:00Z", "chargedTime": "1996-11-29T00:00:00Z", "createdTime": "1987-08-30T00:00:00Z", "currency": {"currencyCode": "ISVWWVekC3P3uukb", "currencySymbol": "YswovbDSTbt807DX", "currencyType": "VIRTUAL", "decimals": 37, "namespace": "7z9LZKdSW7HeuY56"}, "customParameters": {"XR9X0DqAeMjyTBrT": {}, "7UuHXGFbQ6hcH4NB": {}, "vu1LrFiawf5lpTLq": {}}, "extOrderNo": "8KzyLcgXf1uhiKro", "extTxId": "oCpCJybOEI3CTU2A", "extUserId": "TqPgAgzGvezOALEZ", "issuedAt": "1978-07-26T00:00:00Z", "metadata": {"48nhS3J9zoU9PbuG": "ee00S7Fh5BJCFcUK", "yzazla0zFEP4Q9Jb": "7zwNP7ih1d1pHh5I", "aJ6IeYkbJoZVbtlm": "4fHOL1MCma59Duma"}, "namespace": "qUSZ3GQg0UsJdn95", "nonceStr": "ZtM51Ba8J0nMeaM1", "paymentMethod": "ZfIkCtEm7D7Wzw0V", "paymentMethodFee": 100, "paymentOrderNo": "37Arw97k3fKk1Zzi", "paymentProvider": "CHECKOUT", "paymentProviderFee": 95, "paymentStationUrl": "O4g6kSiZhG2GzxAG", "price": 46, "refundedTime": "1978-11-04T00:00:00Z", "salesTax": 93, "sandbox": false, "sku": "JgWslOCVmYRElciv", "status": "DELETED", "statusReason": "W3JNPDdDIFqCd5mU", "subscriptionId": "QBOugn5XXyJyK1mU", "subtotalPrice": 16, "targetNamespace": "8TOJ24sga24sDmN5", "targetUserId": "fSBqQ60Ct2utaJvd", "tax": 63, "totalPrice": 81, "totalTax": 67, "txEndTime": "1976-11-10T00:00:00Z", "type": "rzvUuberx2gT8pmN", "userId": "gKptC5RbX9gnJ3qW", "vat": 16}' \
    > test.out 2>&1
eval_tap $? 266 'ProcessUserOrderNotification' test.out

#- 267 DownloadUserOrderReceipt
samples/cli/sample-apps Platform downloadUserOrderReceipt \
    --namespace $AB_NAMESPACE \
    --orderNo 'qrvd4jOtjzTsJWNB' \
    --userId 'RWX7e8XdaIqMAULU' \
    > test.out 2>&1
eval_tap $? 267 'DownloadUserOrderReceipt' test.out

#- 268 CreateUserPaymentOrder
samples/cli/sample-apps Platform createUserPaymentOrder \
    --namespace $AB_NAMESPACE \
    --userId '2zA1vYjtHY6rxp8w' \
    --body '{"currencyCode": "j0BPansgEJsAJejc", "currencyNamespace": "AykAlsKD3TAI08gW", "customParameters": {"N26DHunQKSVzomwp": {}, "pyNEOAN1phdnDIZR": {}, "liQ1hdtPRdurgkdn": {}}, "description": "ZLOkszxRNs3u6IaG", "extOrderNo": "bIQ3VYMfm2k1LrEJ", "extUserId": "X5TLlLmHeAyD7iJu", "itemType": "EXTENSION", "language": "YEB_MaEl_Wh", "metadata": {"4AnU1PYOmQIFy44S": "1DavpUsR2gPidlKq", "3SNtvku5hl2zyZbO": "V8qZls3u6hGfMtaT", "DlxYT5U47J5NrZVW": "nX3X1w60Dg03cwtv"}, "notifyUrl": "QLla9hNLqXBsxM5q", "omitNotification": false, "platform": "dCwLaEZskpAslz1B", "price": 31, "recurringPaymentOrderNo": "iCmMs6MatIVvNtxf", "region": "y50I6IweAwVNzA6q", "returnUrl": "BVzE4eDGmaK2SNFk", "sandbox": true, "sku": "ykkLFdeEa6MmFD6f", "subscriptionId": "Xyqaq5hvydMDSctT", "title": "rrb3TLtPm99iqaVy"}' \
    > test.out 2>&1
eval_tap $? 268 'CreateUserPaymentOrder' test.out

#- 269 RefundUserPaymentOrder
samples/cli/sample-apps Platform refundUserPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'pCabaXe59mON8Lwe' \
    --userId 'Q0GBUTMq0CZMtseJ' \
    --body '{"description": "L90DOELVipb4envp"}' \
    > test.out 2>&1
eval_tap $? 269 'RefundUserPaymentOrder' test.out

#- 270 ApplyUserRedemption
samples/cli/sample-apps Platform applyUserRedemption \
    --namespace $AB_NAMESPACE \
    --userId 'aIPL1lezP37Eiydh' \
    --body '{"code": "0cbX0ksTVWSRQzB8", "orderNo": "q2tys6ynJ5X61CKY"}' \
    > test.out 2>&1
eval_tap $? 270 'ApplyUserRedemption' test.out

#- 271 DoRevocation
samples/cli/sample-apps Platform doRevocation \
    --namespace $AB_NAMESPACE \
    --userId 'yhVNVK7NCn09ITBg' \
    --body '{"meta": {"kjOYMIEN6iaEM5Xn": {}, "GtRKHMgdQF6ps8ah": {}, "hEuinssJO6KTReo0": {}}, "revokeEntries": [{"currency": {"balanceOrigin": "Other", "currencyCode": "KKLNmY1UI2u2uZLO", "namespace": "bcR5eqWRaSjysIeh"}, "entitlement": {"entitlementId": "vh7kxpaYf4AZpJrg"}, "item": {"itemIdentity": "bXH5EFfiYS6sVol1", "itemIdentityType": "ITEM_ID", "origin": "Oculus"}, "quantity": 100, "type": "ENTITLEMENT"}, {"currency": {"balanceOrigin": "Epic", "currencyCode": "IkKCl9SEZXEXqauF", "namespace": "ekQmigCWKlkAZMIu"}, "entitlement": {"entitlementId": "wkr2IbZY5JeSLFi5"}, "item": {"itemIdentity": "2TqRFIU5lUOwKMzJ", "itemIdentityType": "ITEM_ID", "origin": "IOS"}, "quantity": 56, "type": "CURRENCY"}, {"currency": {"balanceOrigin": "Xbox", "currencyCode": "6udmN90Q9cl8qzBs", "namespace": "93AylcbqBf54n2yM"}, "entitlement": {"entitlementId": "ea0KnF0cK2tuaTWa"}, "item": {"itemIdentity": "uEjqW4NEqaWiCVrO", "itemIdentityType": "ITEM_SKU", "origin": "Twitch"}, "quantity": 90, "type": "ITEM"}], "source": "OTHER", "transactionId": "Gse9DL3hRE2cvaDz"}' \
    > test.out 2>&1
eval_tap $? 271 'DoRevocation' test.out

#- 272 RegisterXblSessions
samples/cli/sample-apps Platform registerXblSessions \
    --namespace $AB_NAMESPACE \
    --userId 'aeu0ytvAcna979xs' \
    --body '{"gameSessionId": "PV8i3gSXIwu7ku3e", "payload": {"ceGw4QrCggFzA6s5": {}, "yjcXHdrHDI4yht54": {}, "sD6qXrHGLqoJr5tx": {}}, "scid": "feLjYyBOG5QBOKcU", "sessionTemplateName": "nUVZ3hzNDVtmQ7BW"}' \
    > test.out 2>&1
eval_tap $? 272 'RegisterXblSessions' test.out

#- 273 QueryUserSubscriptions
samples/cli/sample-apps Platform queryUserSubscriptions \
    --namespace $AB_NAMESPACE \
    --userId 'fGuLuZ1cybZp30O7' \
    --chargeStatus 'NEVER' \
    --itemId 'K4LOcZspHxZqxfyq' \
    --limit '67' \
    --offset '43' \
    --sku 'nxRL5uwxD1b1mwtN' \
    --status 'ACTIVE' \
    --subscribedBy 'USER' \
    > test.out 2>&1
eval_tap $? 273 'QueryUserSubscriptions' test.out

#- 274 GetUserSubscriptionActivities
samples/cli/sample-apps Platform getUserSubscriptionActivities \
    --namespace $AB_NAMESPACE \
    --userId 'BVHhGpGgQjXdLO3Q' \
    --excludeSystem 'true' \
    --limit '90' \
    --offset '90' \
    --subscriptionId 'PolwC36yP2sFejqw' \
    > test.out 2>&1
eval_tap $? 274 'GetUserSubscriptionActivities' test.out

#- 275 PlatformSubscribeSubscription
samples/cli/sample-apps Platform platformSubscribeSubscription \
    --namespace $AB_NAMESPACE \
    --userId 'tW27RDliqcyt2PIP' \
    --body '{"grantDays": 16, "itemId": "yGci7v2BVp9CVANy", "language": "AsSTp6dIajtLn92T", "reason": "xVkhmv9G7l0aZoYw", "region": "WzixemuXIEcJWNjB", "source": "iHJ2vg7IH8bVv9nS"}' \
    > test.out 2>&1
eval_tap $? 275 'PlatformSubscribeSubscription' test.out

#- 276 CheckUserSubscriptionSubscribableByItemId
samples/cli/sample-apps Platform checkUserSubscriptionSubscribableByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'ry2bKNDu9LNfqSrd' \
    --itemId '1Ak10mmDIs4cRmfs' \
    > test.out 2>&1
eval_tap $? 276 'CheckUserSubscriptionSubscribableByItemId' test.out

#- 277 GetUserSubscription
samples/cli/sample-apps Platform getUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'MupNf7Z1K3R0sl8d' \
    --userId 'xkr1obFVIgkKvKlY' \
    > test.out 2>&1
eval_tap $? 277 'GetUserSubscription' test.out

#- 278 DeleteUserSubscription
samples/cli/sample-apps Platform deleteUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId '02df8ZctrNiY6lAA' \
    --userId 'Y87xsq58eYwqgqvX' \
    > test.out 2>&1
eval_tap $? 278 'DeleteUserSubscription' test.out

#- 279 CancelSubscription
samples/cli/sample-apps Platform cancelSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId '8nEX7uriMzMfb2mk' \
    --userId 'elogdd9z5zoiIh8o' \
    --force 'false' \
    --body '{"immediate": false, "reason": "9VKDMZMpX0k35jIM"}' \
    > test.out 2>&1
eval_tap $? 279 'CancelSubscription' test.out

#- 280 GrantDaysToSubscription
samples/cli/sample-apps Platform grantDaysToSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'gTJSI2nIZaU1Uvbd' \
    --userId 'rRem4l2GeePiI4TW' \
    --body '{"grantDays": 36, "reason": "CjTlAh1MutxJsWo8"}' \
    > test.out 2>&1
eval_tap $? 280 'GrantDaysToSubscription' test.out

#- 281 GetUserSubscriptionBillingHistories
samples/cli/sample-apps Platform getUserSubscriptionBillingHistories \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'tbGnNxU7O0fp0Uz2' \
    --userId 'TjZPapJGZXZrZ2eP' \
    --excludeFree 'true' \
    --limit '50' \
    --offset '11' \
    > test.out 2>&1
eval_tap $? 281 'GetUserSubscriptionBillingHistories' test.out

#- 282 ProcessUserSubscriptionNotification
samples/cli/sample-apps Platform processUserSubscriptionNotification \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'TiIkdpoXUdxlQzNx' \
    --userId 'DoDkxlO3sLzsftE6' \
    --body '{"additionalData": {"cardSummary": "5Na01GDSGYnf9AAt"}, "authorisedTime": "1984-02-25T00:00:00Z", "chargebackReversedTime": "1987-08-11T00:00:00Z", "chargebackTime": "1992-09-12T00:00:00Z", "chargedTime": "1995-09-01T00:00:00Z", "createdTime": "1984-12-04T00:00:00Z", "currency": {"currencyCode": "fOacl2PA8rotY5xE", "currencySymbol": "f2LiKrBAvbfQiBc1", "currencyType": "REAL", "decimals": 98, "namespace": "ChpAeWkfU9VM6MQW"}, "customParameters": {"tskIjWWOgzGbvxj6": {}, "VwXIsQ1UWVXO3Jnl": {}, "GbeL1e9iGtX7tE5v": {}}, "extOrderNo": "fVnkvQM4Hf3XZ8TG", "extTxId": "WPnUI2AZUwpPldNA", "extUserId": "b1deHc7jstJn7lqQ", "issuedAt": "1992-09-28T00:00:00Z", "metadata": {"RbELQ3kxs42Nwagm": "WQSr1NQoFJ5a6LeX", "Ihu3EHupwAXM3Bw6": "YJF5YG4aJmrI0byg", "buOtQ6MH7Vwg0N5q": "6zy1HMymQMgohacQ"}, "namespace": "IcphyckmwObil7uX", "nonceStr": "bSMhTQJqXKZtr6HE", "paymentMethod": "ywgGz6igwf6eR2bd", "paymentMethodFee": 79, "paymentOrderNo": "6RJBsfapvYjYImIV", "paymentProvider": "PAYPAL", "paymentProviderFee": 46, "paymentStationUrl": "auouwdR3VNpYexLV", "price": 58, "refundedTime": "1985-07-15T00:00:00Z", "salesTax": 57, "sandbox": false, "sku": "16kxzgYlNjNjdLaR", "status": "INIT", "statusReason": "cD565sSWgU7Ce0bA", "subscriptionId": "yEiG4lufNaMaW51b", "subtotalPrice": 8, "targetNamespace": "KWjkUSrG0xMOuNgO", "targetUserId": "ADqh8w93NTdOVaCv", "tax": 23, "totalPrice": 80, "totalTax": 69, "txEndTime": "1980-01-06T00:00:00Z", "type": "u9xwS1f4kD2QjIbm", "userId": "7glm5uk3AmY2DskE", "vat": 68}' \
    > test.out 2>&1
eval_tap $? 282 'ProcessUserSubscriptionNotification' test.out

#- 283 AcquireUserTicket
samples/cli/sample-apps Platform acquireUserTicket \
    --boothName 'P2CT6AcH427tzWEc' \
    --namespace $AB_NAMESPACE \
    --userId 'A4FvPBG0984pgQ8g' \
    --body '{"count": 90, "orderNo": "UE4SxRsNw7yf3VXx"}' \
    > test.out 2>&1
eval_tap $? 283 'AcquireUserTicket' test.out

#- 284 QueryUserCurrencyWallets
samples/cli/sample-apps Platform queryUserCurrencyWallets \
    --namespace $AB_NAMESPACE \
    --userId '09O9tRloeMX6Geob' \
    > test.out 2>&1
eval_tap $? 284 'QueryUserCurrencyWallets' test.out

#- 285 DebitUserWalletByCurrencyCode
samples/cli/sample-apps Platform debitUserWalletByCurrencyCode \
    --currencyCode 'a9Z8FyNBxUviFTyo' \
    --namespace $AB_NAMESPACE \
    --userId 'Szukt0ptTQc8v6e0' \
    --body '{"allowOverdraft": false, "amount": 100, "balanceOrigin": "IOS", "balanceSource": "PAYMENT", "metadata": {"lqSB1rShPSxNBjAk": {}, "L6Wc1DhE12RqOxdv": {}, "l4FpQc4vd6dO39ky": {}}, "reason": "s43HIXumHGVNBr0S"}' \
    > test.out 2>&1
eval_tap $? 285 'DebitUserWalletByCurrencyCode' test.out

#- 286 ListUserCurrencyTransactions
samples/cli/sample-apps Platform listUserCurrencyTransactions \
    --currencyCode 'J2M3bgiuLClb4dl2' \
    --namespace $AB_NAMESPACE \
    --userId 'gtMiGDMebQBvIN7v' \
    --limit '14' \
    --offset '30' \
    > test.out 2>&1
eval_tap $? 286 'ListUserCurrencyTransactions' test.out

#- 287 CheckBalance
samples/cli/sample-apps Platform checkBalance \
    --currencyCode '435nQ74WSJS3ojgu' \
    --namespace $AB_NAMESPACE \
    --userId 'EUO5JuxzOCdNQj2E' \
    --request '{"amount": 16, "debitBalanceSource": "TRADE", "metadata": {"9MVTiW6gOTl74q0O": {}, "AHfB9VBJzPdxTOGn": {}, "zQbdxx0z6tC054ED": {}}, "reason": "gzQrPStawY4GTBwd", "walletPlatform": "Epic"}' \
    > test.out 2>&1
eval_tap $? 287 'CheckBalance' test.out

#- 288 CheckWallet
eval_tap 0 288 'CheckWallet # SKIP deprecated' test.out

#- 289 CreditUserWallet
samples/cli/sample-apps Platform creditUserWallet \
    --currencyCode 'vL1qe79KwjXPGXfo' \
    --namespace $AB_NAMESPACE \
    --userId 'mZ75WYBhzaeP13Qi' \
    --body '{"amount": 31, "expireAt": "1973-02-23T00:00:00Z", "metadata": {"WkyE15RkDrcYh7zh": {}, "l6dxGziYyTCwOdoW": {}, "do2Pk4VVksbdj7rT": {}}, "origin": "Steam", "reason": "02Uo3w0baneTzPsj", "source": "SELL_BACK"}' \
    > test.out 2>&1
eval_tap $? 289 'CreditUserWallet' test.out

#- 290 DebitByWalletPlatform
samples/cli/sample-apps Platform debitByWalletPlatform \
    --currencyCode '5YLJlZsS5ViNBDXn' \
    --namespace $AB_NAMESPACE \
    --userId 'ZYP2f9g5EuOQc6wU' \
    --request '{"amount": 22, "debitBalanceSource": "DLC_REVOCATION", "metadata": {"DHuNOOwfih0lHpOV": {}, "h2t4zuMwKjij6dVJ": {}, "YPDZCN6e8BlUJSc0": {}}, "reason": "MJJwr5MIQQLnY1sP", "walletPlatform": "Playstation"}' \
    > test.out 2>&1
eval_tap $? 290 'DebitByWalletPlatform' test.out

#- 291 PayWithUserWallet
samples/cli/sample-apps Platform payWithUserWallet \
    --currencyCode 'FsvSFRgbNokkHONb' \
    --namespace $AB_NAMESPACE \
    --userId 'bGsK8cKYhBrsyX3V' \
    --body '{"amount": 77, "metadata": {"RHV9JLfAC2i7PvLq": {}, "AxQIkR4o43nhbj7u": {}, "RvZwsnpaRDhysHog": {}}, "walletPlatform": "Other"}' \
    > test.out 2>&1
eval_tap $? 291 'PayWithUserWallet' test.out

#- 292 GetUserWallet
eval_tap 0 292 'GetUserWallet # SKIP deprecated' test.out

#- 293 DebitUserWallet
eval_tap 0 293 'DebitUserWallet # SKIP deprecated' test.out

#- 294 DisableUserWallet
eval_tap 0 294 'DisableUserWallet # SKIP deprecated' test.out

#- 295 EnableUserWallet
eval_tap 0 295 'EnableUserWallet # SKIP deprecated' test.out

#- 296 ListUserWalletTransactions
eval_tap 0 296 'ListUserWalletTransactions # SKIP deprecated' test.out

#- 297 ListViews
samples/cli/sample-apps Platform listViews \
    --namespace $AB_NAMESPACE \
    --storeId '65Jtdako5T1UOOPF' \
    > test.out 2>&1
eval_tap $? 297 'ListViews' test.out

#- 298 CreateView
samples/cli/sample-apps Platform createView \
    --namespace $AB_NAMESPACE \
    --storeId 'QJbO4HtmFLlhoBj4' \
    --body '{"displayOrder": 81, "localizations": {"0nmC6ooy29rZ9phz": {"description": "Z3cKa9kUfhVByqvZ", "localExt": {"Uy6HYhfqFt2Ugl3g": {}, "zwKw3UA39bnpv7hG": {}, "FOdjCbrXkcL7CHSe": {}}, "longDescription": "JET6HC4Q4Sw6hXJB", "title": "sff51zOqeZ1xYz6m"}, "RhcliT9xRWfF93y9": {"description": "c31WxpphLp8vLnvx", "localExt": {"my2C13feOZ76FP3e": {}, "Tl2Yx6gJ2AWdfgtL": {}, "itqf3HvPZQJWyvR5": {}}, "longDescription": "1xvaDTmtlSKlfHLs", "title": "RAUXCyV5v02lJlRL"}, "ZwynG82K3FmzlDK3": {"description": "J6kwsKnXXrLhNG4i", "localExt": {"EwDEzpy3uVCtyUi1": {}, "Tzo4itm3jNvd4jXy": {}, "qtjjr9avZmQYGkbA": {}}, "longDescription": "44zLZ1FaKJPOFsuG", "title": "HfGtwe7kEyRio7f7"}}, "name": "KZbOFsOenGR3pqaE"}' \
    > test.out 2>&1
eval_tap $? 298 'CreateView' test.out

#- 299 GetView
samples/cli/sample-apps Platform getView \
    --namespace $AB_NAMESPACE \
    --viewId '52E38nXsLbheo4DW' \
    --storeId 'DORsJsHkAJsXJOLR' \
    > test.out 2>&1
eval_tap $? 299 'GetView' test.out

#- 300 UpdateView
samples/cli/sample-apps Platform updateView \
    --namespace $AB_NAMESPACE \
    --viewId 'dbHGaBAKMzHbl4un' \
    --storeId '5vxsiVCaiBpoeQ0S' \
    --body '{"displayOrder": 84, "localizations": {"zSHAgXRVi8PamHDB": {"description": "yywAlGE6WPNVbIp0", "localExt": {"xQn5m5GtgVVqb5DD": {}, "jfBGzr1GSuNHxj6N": {}, "oIGnVBmobUSNLDwJ": {}}, "longDescription": "DP9ZuT03AScOItzL", "title": "ah477pcUaGCQm8vf"}, "uuUkOkuWOaUremxM": {"description": "kK6jGfoUiRLnk1zR", "localExt": {"mVjoigny72iAt9ry": {}, "lY7SAx3gpI8NeudX": {}, "WPPbYAfoBWW8quvb": {}}, "longDescription": "KfktB11AyKX7RpCL", "title": "FDB6dK665LbARFn8"}, "5sn2mSeOtTyqBUTa": {"description": "zM8jDDtlNxrpzxWS", "localExt": {"67XKjElOPWtkRviR": {}, "G9j7ll4dFnZSt9v5": {}, "s3z7wxVauhKkSsdj": {}}, "longDescription": "Ohs4ahfa8f5oQMmr", "title": "Xix35ecbPu6bHAyE"}}, "name": "rIEALGSaGvIjrL4Z"}' \
    > test.out 2>&1
eval_tap $? 300 'UpdateView' test.out

#- 301 DeleteView
samples/cli/sample-apps Platform deleteView \
    --namespace $AB_NAMESPACE \
    --viewId 'LLLYvcasT40jb5eV' \
    --storeId '7KwPxg9Scn306qcv' \
    > test.out 2>&1
eval_tap $? 301 'DeleteView' test.out

#- 302 QueryWallets
eval_tap 0 302 'QueryWallets # SKIP deprecated' test.out

#- 303 BulkCredit
samples/cli/sample-apps Platform bulkCredit \
    --namespace $AB_NAMESPACE \
    --body '[{"creditRequest": {"amount": 69, "expireAt": "1973-06-29T00:00:00Z", "metadata": {"d2viJeLGQvzEzu8Z": {}, "SAP8awjiPmKQX3Oa": {}, "5NdpIvAdwSnbFhTZ": {}}, "origin": "Oculus", "reason": "hJTCu9EnwViVw4Ot", "source": "TRADE"}, "currencyCode": "M5h9u4Kgk5CxED1h", "userIds": ["Vi8npiATj3BK6ne2", "ZclSeFXOx4Gl2pK9", "fHr7RKWrqEZebcdf"]}, {"creditRequest": {"amount": 68, "expireAt": "1989-07-12T00:00:00Z", "metadata": {"gJXjlXmvMCCnAwu2": {}, "VnzIzbTPxohRKM1U": {}, "AyHiA3sJB8hEfmbK": {}}, "origin": "System", "reason": "FSBpHQQgtTmLHpb8", "source": "TRADE"}, "currencyCode": "iR2ogTNuVJBaBidk", "userIds": ["DMDNutwjlqmvB0lL", "teNDiIWlXmEpwVQF", "zFojo589hukJXcYl"]}, {"creditRequest": {"amount": 89, "expireAt": "1989-01-15T00:00:00Z", "metadata": {"uq2AqOiadm68q7kg": {}, "rdPs38u9BIOOksJk": {}, "eaKLCVJsraUX5lV2": {}}, "origin": "Twitch", "reason": "EIl8PCFfk6jE3lqF", "source": "IAP_CHARGEBACK_REVERSED"}, "currencyCode": "TCZbCEQyV3kbffbf", "userIds": ["3awKNj4wteDXpMpu", "IsYxTvNf1Ev90A6m", "ydaoCMjDwCOS7AyC"]}]' \
    > test.out 2>&1
eval_tap $? 303 'BulkCredit' test.out

#- 304 BulkDebit
samples/cli/sample-apps Platform bulkDebit \
    --namespace $AB_NAMESPACE \
    --body '[{"currencyCode": "Rdl0KAQzDs7RyLBv", "request": {"allowOverdraft": false, "amount": 23, "balanceOrigin": "Nintendo", "balanceSource": "OTHER", "metadata": {"CmIgAWy1rhxIIXfs": {}, "k1ppyIBjE9SOdPXX": {}, "C4FScv5G4dwpoOZ8": {}}, "reason": "7xh3HzB4hbBFL1j7"}, "userIds": ["a1eM5ahpUDNsziFD", "AJZn0tiJFvRYoROk", "Tn7ChPK7ANkuRLS3"]}, {"currencyCode": "IQC9AK7Zi6G4bx5K", "request": {"allowOverdraft": true, "amount": 81, "balanceOrigin": "System", "balanceSource": "PAYMENT", "metadata": {"jYdfDAa97yNYIARg": {}, "w5J4wsv9Sq510sJH": {}, "SNOcyk358im0ELCl": {}}, "reason": "4spvZIPEseHAChMz"}, "userIds": ["fWoJ33Z2E6MeHGOC", "Bdx6etiIQjE5fpWu", "SjX6Z6Dj77FCdB9O"]}, {"currencyCode": "ADE1Ccmmn4rf3Mwn", "request": {"allowOverdraft": true, "amount": 10, "balanceOrigin": "System", "balanceSource": "IAP_REVOCATION", "metadata": {"DoajGk3czT4wtfSk": {}, "HHv0SaRBAR8Ex47k": {}, "WLjSOYOp2hOaa4Ej": {}}, "reason": "7IG53OuOwJKiyAZT"}, "userIds": ["gbofsmfeXvFhrjGB", "CjZ6p6GkfTwR2ohQ", "T5jq4POVphYIQ9eW"]}]' \
    > test.out 2>&1
eval_tap $? 304 'BulkDebit' test.out

#- 305 GetWallet
eval_tap 0 305 'GetWallet # SKIP deprecated' test.out

#- 306 SyncOrders
samples/cli/sample-apps Platform syncOrders \
    --nextEvaluatedKey 'v8J0mRPgeBLvHX3w' \
    --end 'RgnUEICDDGdhOqVc' \
    --start 'Sim6EqBWGB7RHyzF' \
    > test.out 2>&1
eval_tap $? 306 'SyncOrders' test.out

#- 307 TestAdyenConfig
samples/cli/sample-apps Platform testAdyenConfig \
    --sandbox 'false' \
    --body '{"allowedPaymentMethods": ["5F8dzCFYgIofVc1P", "90tp0y7BMiYNoH64", "hB5hE4jQ4Wec4zuJ"], "apiKey": "3CJOcA6lofwtEHLO", "authoriseAsCapture": false, "blockedPaymentMethods": ["kN8052KjAaUCMwMs", "8yKF3NzpubecXDCs", "NTiUkox5e58aKBpN"], "clientKey": "lAZ68PPlUzZdCQO6", "dropInSettings": "ojaWPILsJwS8NNxM", "liveEndpointUrlPrefix": "NYkyWEkpITSBYmVd", "merchantAccount": "xx68sS14WT8h1QL1", "notificationHmacKey": "4MefVQd17asZi59h", "notificationPassword": "HB4S1eo3fv2jauJF", "notificationUsername": "2bTtHl8Hl9ppUt2x", "returnUrl": "DCe9Ircu7DVujtDa", "settings": "3fGQL36UDkJllzyL"}' \
    > test.out 2>&1
eval_tap $? 307 'TestAdyenConfig' test.out

#- 308 TestAliPayConfig
samples/cli/sample-apps Platform testAliPayConfig \
    --sandbox 'false' \
    --body '{"appId": "hJ7GAF65Wv3AGiMu", "privateKey": "JcLHiQrSnKYNhAXL", "publicKey": "GZRfRXch6Xo4DnUV", "returnUrl": "dltSfffS8TwtF7Qq"}' \
    > test.out 2>&1
eval_tap $? 308 'TestAliPayConfig' test.out

#- 309 TestCheckoutConfig
samples/cli/sample-apps Platform testCheckoutConfig \
    --sandbox 'false' \
    --body '{"publicKey": "dvGubfwpTfijDBfJ", "secretKey": "tnRkyWOLub0q9FFc"}' \
    > test.out 2>&1
eval_tap $? 309 'TestCheckoutConfig' test.out

#- 310 DebugMatchedPaymentMerchantConfig
samples/cli/sample-apps Platform debugMatchedPaymentMerchantConfig \
    --namespace '4P30o1VTKXvvIogO' \
    --region '5veqXFyInjUapwnw' \
    > test.out 2>&1
eval_tap $? 310 'DebugMatchedPaymentMerchantConfig' test.out

#- 311 TestPayPalConfig
samples/cli/sample-apps Platform testPayPalConfig \
    --sandbox 'false' \
    --body '{"clientID": "BIHgURZI3QobFhI1", "clientSecret": "4J5MgJKHqG3Za9ML", "returnUrl": "p5cBr4zR6oTPmDgR", "webHookId": "NC2mt9lwb5q3BbSe"}' \
    > test.out 2>&1
eval_tap $? 311 'TestPayPalConfig' test.out

#- 312 TestStripeConfig
samples/cli/sample-apps Platform testStripeConfig \
    --sandbox 'false' \
    --body '{"allowedPaymentMethodTypes": ["8ypq5CBhkBfuA49J", "XKspoJrWxUVH2vDn", "BPkIyE7lwxfqxQdQ"], "publishableKey": "2LwyBBRcgXn5ZyZm", "secretKey": "KzdVaIphRTcAtY8q", "webhookSecret": "PvKw86eGlooM6yT8"}' \
    > test.out 2>&1
eval_tap $? 312 'TestStripeConfig' test.out

#- 313 TestWxPayConfig
samples/cli/sample-apps Platform testWxPayConfig \
    --body '{"appId": "mvs2nmTp81EQ0B1A", "key": "1Vfe3waGyaqy0xMX", "mchid": "XeF2Momz6kaZYkk0", "returnUrl": "YjZTrCnv5TccULXi"}' \
    > test.out 2>&1
eval_tap $? 313 'TestWxPayConfig' test.out

#- 314 TestXsollaConfig
samples/cli/sample-apps Platform testXsollaConfig \
    --body '{"apiKey": "i6UihTTeJdjGoXAD", "flowCompletionUrl": "625s2GMM445CzR9O", "merchantId": 61, "projectId": 100, "projectSecretKey": "hX4pWIVyoNlFIuku"}' \
    > test.out 2>&1
eval_tap $? 314 'TestXsollaConfig' test.out

#- 315 GetPaymentMerchantConfig
samples/cli/sample-apps Platform getPaymentMerchantConfig \
    --id 'aDCkVEJWbp10zB3J' \
    > test.out 2>&1
eval_tap $? 315 'GetPaymentMerchantConfig' test.out

#- 316 UpdateAdyenConfig
samples/cli/sample-apps Platform updateAdyenConfig \
    --id 'D6bjUOwXKuhRPrex' \
    --sandbox 'true' \
    --validate 'false' \
    --body '{"allowedPaymentMethods": ["z9I86roxzQAhIzQP", "TyR6uxnjFY6swdM3", "elkV3oAwekfYi9n8"], "apiKey": "2nsjXbJIvvzE1EVc", "authoriseAsCapture": true, "blockedPaymentMethods": ["VJuhPmFmAp8RHBJA", "8bY4bNgQZ70m7brO", "JSoTIq05hfkjKZY3"], "clientKey": "lYYuNJoif2EpEmXF", "dropInSettings": "ZqyB81wSngeS4lZB", "liveEndpointUrlPrefix": "CPUKGdlvDbuynrxT", "merchantAccount": "BBlKJR54kxeDgYbB", "notificationHmacKey": "fWIFU6JvlakHuc0L", "notificationPassword": "4OWZ2EWnTG9PMrGk", "notificationUsername": "aGVYwsQIh9Fvvuez", "returnUrl": "OBBzHnEFaB7AePRn", "settings": "RrS3gyEcWeMzWfhZ"}' \
    > test.out 2>&1
eval_tap $? 316 'UpdateAdyenConfig' test.out

#- 317 TestAdyenConfigById
samples/cli/sample-apps Platform testAdyenConfigById \
    --id 'VqAkS7ZI9vW7p5sp' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 317 'TestAdyenConfigById' test.out

#- 318 UpdateAliPayConfig
samples/cli/sample-apps Platform updateAliPayConfig \
    --id 'CUe867rwkWkNubcX' \
    --sandbox 'false' \
    --validate 'false' \
    --body '{"appId": "Gcx7VsAsplRh53DN", "privateKey": "8ZW7lLi6XsuvGg4l", "publicKey": "RZVck5FMfWcHLEEQ", "returnUrl": "QykF9yEnfI9rO4bd"}' \
    > test.out 2>&1
eval_tap $? 318 'UpdateAliPayConfig' test.out

#- 319 TestAliPayConfigById
samples/cli/sample-apps Platform testAliPayConfigById \
    --id 'BFrRnTZ7uIlr3C50' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 319 'TestAliPayConfigById' test.out

#- 320 UpdateCheckoutConfig
samples/cli/sample-apps Platform updateCheckoutConfig \
    --id 'XyppWOiFQyAoRnE7' \
    --sandbox 'true' \
    --validate 'true' \
    --body '{"publicKey": "kCH6i2sD4n7UYN3r", "secretKey": "4f8FVS7f6fgNF92C"}' \
    > test.out 2>&1
eval_tap $? 320 'UpdateCheckoutConfig' test.out

#- 321 TestCheckoutConfigById
samples/cli/sample-apps Platform testCheckoutConfigById \
    --id 'eoys85So0uEe43aL' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 321 'TestCheckoutConfigById' test.out

#- 322 UpdatePayPalConfig
samples/cli/sample-apps Platform updatePayPalConfig \
    --id 'NgeQQSCB9TTGsA6k' \
    --sandbox 'true' \
    --validate 'false' \
    --body '{"clientID": "kLMCUcqPfkoAGpEI", "clientSecret": "GCQ8yfeAhO30fBjB", "returnUrl": "Rn7cRt55Q7VOYCgC", "webHookId": "TtvyzlomoRTsXmVU"}' \
    > test.out 2>&1
eval_tap $? 322 'UpdatePayPalConfig' test.out

#- 323 TestPayPalConfigById
samples/cli/sample-apps Platform testPayPalConfigById \
    --id '8CWunLHGN8vzqfgB' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 323 'TestPayPalConfigById' test.out

#- 324 UpdateStripeConfig
samples/cli/sample-apps Platform updateStripeConfig \
    --id 'qiNTmsb5tFbNABrn' \
    --sandbox 'false' \
    --validate 'false' \
    --body '{"allowedPaymentMethodTypes": ["OpqCdY5RWdUCTLrl", "cbhGIZoZUin7ZI6C", "tCObTFwa5Na5TgD5"], "publishableKey": "ognmG9bWFj2mzBG3", "secretKey": "JznRpozs2wBByALJ", "webhookSecret": "DrujEy0kRoVLNQQZ"}' \
    > test.out 2>&1
eval_tap $? 324 'UpdateStripeConfig' test.out

#- 325 TestStripeConfigById
samples/cli/sample-apps Platform testStripeConfigById \
    --id 'TK2xpQ3GmiuHfMK2' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 325 'TestStripeConfigById' test.out

#- 326 UpdateWxPayConfig
samples/cli/sample-apps Platform updateWxPayConfig \
    --id 'JEiXOqpq4t3O97AD' \
    --validate 'false' \
    --body '{"appId": "2VtZfMXYfw9268xr", "key": "VAmAux50yh6jpxro", "mchid": "wVKB0lA6wmyShQQV", "returnUrl": "TnnqoTRHEgE5992W"}' \
    > test.out 2>&1
eval_tap $? 326 'UpdateWxPayConfig' test.out

#- 327 UpdateWxPayConfigCert
samples/cli/sample-apps Platform updateWxPayConfigCert \
    --id 'mp3mfXcTXHEGuXs1' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 327 'UpdateWxPayConfigCert' test.out

#- 328 TestWxPayConfigById
samples/cli/sample-apps Platform testWxPayConfigById \
    --id 'SFZx6kDSJBQdPGct' \
    > test.out 2>&1
eval_tap $? 328 'TestWxPayConfigById' test.out

#- 329 UpdateXsollaConfig
samples/cli/sample-apps Platform updateXsollaConfig \
    --id '4ZwzFIUxhtIGIkrz' \
    --validate 'true' \
    --body '{"apiKey": "PUrj6nyLr6KuC1p1", "flowCompletionUrl": "bqpSINuIjk1LVtkk", "merchantId": 18, "projectId": 66, "projectSecretKey": "zaFWkzYxcfsQ5mIp"}' \
    > test.out 2>&1
eval_tap $? 329 'UpdateXsollaConfig' test.out

#- 330 TestXsollaConfigById
samples/cli/sample-apps Platform testXsollaConfigById \
    --id 'Gw6ROPzjhvRfTSCu' \
    > test.out 2>&1
eval_tap $? 330 'TestXsollaConfigById' test.out

#- 331 UpdateXsollaUIConfig
samples/cli/sample-apps Platform updateXsollaUIConfig \
    --id 'PtQR5lXGUEnKnE8D' \
    --body '{"device": "DESKTOP", "showCloseButton": false, "size": "MEDIUM", "theme": "DEFAULT_DARK"}' \
    > test.out 2>&1
eval_tap $? 331 'UpdateXsollaUIConfig' test.out

#- 332 QueryPaymentProviderConfig
samples/cli/sample-apps Platform queryPaymentProviderConfig \
    --limit '96' \
    --namespace 'nbc5hADgT5H0CxUA' \
    --offset '14' \
    --region 'Tex5PXiIxbkNR7SY' \
    > test.out 2>&1
eval_tap $? 332 'QueryPaymentProviderConfig' test.out

#- 333 CreatePaymentProviderConfig
samples/cli/sample-apps Platform createPaymentProviderConfig \
    --body '{"aggregate": "XSOLLA", "namespace": "2tga8UFovttjGZ1p", "region": "EFxG7IirGJ7PxWfQ", "sandboxTaxJarApiToken": "5g0gQb16uz0zf42r", "specials": ["XSOLLA", "STRIPE", "CHECKOUT"], "taxJarApiToken": "BRDdkDrHaHKZq5C3", "taxJarEnabled": false, "useGlobalTaxJarApiToken": false}' \
    > test.out 2>&1
eval_tap $? 333 'CreatePaymentProviderConfig' test.out

#- 334 GetAggregatePaymentProviders
samples/cli/sample-apps Platform getAggregatePaymentProviders \
    > test.out 2>&1
eval_tap $? 334 'GetAggregatePaymentProviders' test.out

#- 335 DebugMatchedPaymentProviderConfig
samples/cli/sample-apps Platform debugMatchedPaymentProviderConfig \
    --namespace 'HPvISDSqKKmXdKXy' \
    --region 'wS8bsT5cC5Frtp53' \
    > test.out 2>&1
eval_tap $? 335 'DebugMatchedPaymentProviderConfig' test.out

#- 336 GetSpecialPaymentProviders
samples/cli/sample-apps Platform getSpecialPaymentProviders \
    > test.out 2>&1
eval_tap $? 336 'GetSpecialPaymentProviders' test.out

#- 337 UpdatePaymentProviderConfig
samples/cli/sample-apps Platform updatePaymentProviderConfig \
    --id 'XkUJOwcKtVjpjDxa' \
    --body '{"aggregate": "XSOLLA", "namespace": "MP13sMVWOQKgOqS7", "region": "c653WiF6axnFnUZS", "sandboxTaxJarApiToken": "IWBpw33Fp7babiMv", "specials": ["WXPAY", "WALLET", "ALIPAY"], "taxJarApiToken": "AVvPHMxZUBMMMxcv", "taxJarEnabled": true, "useGlobalTaxJarApiToken": false}' \
    > test.out 2>&1
eval_tap $? 337 'UpdatePaymentProviderConfig' test.out

#- 338 DeletePaymentProviderConfig
samples/cli/sample-apps Platform deletePaymentProviderConfig \
    --id 'mNzO9zZbuX9uzGnK' \
    > test.out 2>&1
eval_tap $? 338 'DeletePaymentProviderConfig' test.out

#- 339 GetPaymentTaxConfig
samples/cli/sample-apps Platform getPaymentTaxConfig \
    > test.out 2>&1
eval_tap $? 339 'GetPaymentTaxConfig' test.out

#- 340 UpdatePaymentTaxConfig
samples/cli/sample-apps Platform updatePaymentTaxConfig \
    --body '{"sandboxTaxJarApiToken": "jvMFT49atBBkT8js", "taxJarApiToken": "aavXKvI4ztaQFRfH", "taxJarEnabled": false, "taxJarProductCodesMapping": {"s6qBL78bo4pyeuHK": "bgAyt4Jk99qzzlHC", "SzU7R8RiJT0qGckq": "dtVNC8X7iCgaXUKU", "UmMrsKZgXFybdegz": "05w31STX0YuFdQ1M"}}' \
    > test.out 2>&1
eval_tap $? 340 'UpdatePaymentTaxConfig' test.out

#- 341 SyncPaymentOrders
samples/cli/sample-apps Platform syncPaymentOrders \
    --nextEvaluatedKey '3gkZq2LMRKa7qwkv' \
    --end 'UXW3Js0WTqKwf3MI' \
    --start '1VVoCquTWox7R2Gb' \
    > test.out 2>&1
eval_tap $? 341 'SyncPaymentOrders' test.out

#- 342 PublicGetRootCategories
samples/cli/sample-apps Platform publicGetRootCategories \
    --namespace $AB_NAMESPACE \
    --language 'moWjFrjSGQmmFCf6' \
    --storeId 'NT9DCvYwoUG2q5hl' \
    > test.out 2>&1
eval_tap $? 342 'PublicGetRootCategories' test.out

#- 343 DownloadCategories
samples/cli/sample-apps Platform downloadCategories \
    --namespace $AB_NAMESPACE \
    --language 'R2VoCHM9y8nL6agk' \
    --storeId '67n4rztoxDUHuhVn' \
    > test.out 2>&1
eval_tap $? 343 'DownloadCategories' test.out

#- 344 PublicGetCategory
samples/cli/sample-apps Platform publicGetCategory \
    --categoryPath 'UqJga4nhDKPjcBvc' \
    --namespace $AB_NAMESPACE \
    --language 'hXAWM7XlZbQCC0J9' \
    --storeId 'KTnhR9Ifv116yEeA' \
    > test.out 2>&1
eval_tap $? 344 'PublicGetCategory' test.out

#- 345 PublicGetChildCategories
samples/cli/sample-apps Platform publicGetChildCategories \
    --categoryPath 'm8m9IRJpmRoc6cAc' \
    --namespace $AB_NAMESPACE \
    --language 'pqpg8qYZfLAnZDKX' \
    --storeId 'LM3BJRKzGlXMNoCP' \
    > test.out 2>&1
eval_tap $? 345 'PublicGetChildCategories' test.out

#- 346 PublicGetDescendantCategories
samples/cli/sample-apps Platform publicGetDescendantCategories \
    --categoryPath 's8S62F5uXoSnmYcX' \
    --namespace $AB_NAMESPACE \
    --language 'VDLob9EvqIdk3y4f' \
    --storeId '9OhzCssLhqrM0icd' \
    > test.out 2>&1
eval_tap $? 346 'PublicGetDescendantCategories' test.out

#- 347 PublicListCurrencies
samples/cli/sample-apps Platform publicListCurrencies \
    --namespace $AB_NAMESPACE \
    --currencyType 'REAL' \
    > test.out 2>&1
eval_tap $? 347 'PublicListCurrencies' test.out

#- 348 GeDLCDurableRewardShortMap
samples/cli/sample-apps Platform geDLCDurableRewardShortMap \
    --namespace $AB_NAMESPACE \
    --dlcType 'XBOX' \
    > test.out 2>&1
eval_tap $? 348 'GeDLCDurableRewardShortMap' test.out

#- 349 GetIAPItemMapping
samples/cli/sample-apps Platform getIAPItemMapping \
    --namespace $AB_NAMESPACE \
    --platform 'STEAM' \
    > test.out 2>&1
eval_tap $? 349 'GetIAPItemMapping' test.out

#- 350 PublicGetItemByAppId
samples/cli/sample-apps Platform publicGetItemByAppId \
    --namespace $AB_NAMESPACE \
    --language 'ohckKB8KAjtoqsR7' \
    --region '6jBBWBOS6CFCCCBS' \
    --storeId 'aLR2aUewYQrSIwDe' \
    --appId 'ncx9jfXbhNnGwUdU' \
    > test.out 2>&1
eval_tap $? 350 'PublicGetItemByAppId' test.out

#- 351 PublicQueryItems
samples/cli/sample-apps Platform publicQueryItems \
    --namespace $AB_NAMESPACE \
    --appType 'DEMO' \
    --autoCalcEstimatedPrice 'true' \
    --baseAppId 'Gfwe42yCg6befU7M' \
    --categoryPath 'eN4a4ZhXw4yc6j2L' \
    --features 'N8Mg4QRBiSNsR76N' \
    --includeSubCategoryItem 'true' \
    --itemType 'EXTENSION' \
    --language '1NcGL4yarotOtzQd' \
    --limit '16' \
    --offset '5' \
    --region 'CANF82nRSJ01R2cY' \
    --sortBy '["name:asc", "displayOrder:asc", "name"]' \
    --storeId '5e32QtEpknDJlfF6' \
    --tags 'EN3Zhu8iqQDS3jc1' \
    > test.out 2>&1
eval_tap $? 351 'PublicQueryItems' test.out

#- 352 PublicGetItemBySku
samples/cli/sample-apps Platform publicGetItemBySku \
    --namespace $AB_NAMESPACE \
    --autoCalcEstimatedPrice 'false' \
    --language '4XJxshXd36keali5' \
    --region 'bGk4w2UTMZfidyNm' \
    --storeId 'DNgPAQkbAKHrHyU9' \
    --sku 'wBDXnuqgTK3iuGpd' \
    > test.out 2>&1
eval_tap $? 352 'PublicGetItemBySku' test.out

#- 353 PublicGetEstimatedPrice
samples/cli/sample-apps Platform publicGetEstimatedPrice \
    --namespace $AB_NAMESPACE \
    --region 'y4mtlg5PCoyOWE9w' \
    --storeId 'WlvkcZbXuBTlmihy' \
    --itemIds 'PRaDIONWTU5ttZrJ' \
    > test.out 2>&1
eval_tap $? 353 'PublicGetEstimatedPrice' test.out

#- 354 PublicBulkGetItems
samples/cli/sample-apps Platform publicBulkGetItems \
    --namespace $AB_NAMESPACE \
    --autoCalcEstimatedPrice 'true' \
    --language '0H19IkuUi9M4iAUq' \
    --region '7NjYwROdA0ZNahLw' \
    --storeId 'wdUiFPuHRAdM6dVY' \
    --itemIds 'ZpsfyeIOLLIPxCXT' \
    > test.out 2>&1
eval_tap $? 354 'PublicBulkGetItems' test.out

#- 355 PublicValidateItemPurchaseCondition
samples/cli/sample-apps Platform publicValidateItemPurchaseCondition \
    --namespace $AB_NAMESPACE \
    --body '{"itemIds": ["NS5xC16W1W0jISJI", "xhBOhrNsViB1JyDq", "8aEntPRWBSJgooBO"]}' \
    > test.out 2>&1
eval_tap $? 355 'PublicValidateItemPurchaseCondition' test.out

#- 356 PublicSearchItems
samples/cli/sample-apps Platform publicSearchItems \
    --namespace $AB_NAMESPACE \
    --autoCalcEstimatedPrice 'true' \
    --itemType 'INGAMEITEM' \
    --limit '63' \
    --offset '0' \
    --region 'AGRp6NyYxQMXRvgk' \
    --storeId '3pvqCMYT3aHOKIMm' \
    --keyword 'jZfRJnZLkzGFHtGz' \
    --language 'xhodkVOqFNgFt6tY' \
    > test.out 2>&1
eval_tap $? 356 'PublicSearchItems' test.out

#- 357 PublicGetApp
samples/cli/sample-apps Platform publicGetApp \
    --itemId 'jPPbqafx9ScUVIZT' \
    --namespace $AB_NAMESPACE \
    --language 'cTbBwMuO1sDl2Q5N' \
    --region '4q5sOceupVxczCiT' \
    --storeId 'yJ6ptLcoSEdMOjMU' \
    > test.out 2>&1
eval_tap $? 357 'PublicGetApp' test.out

#- 358 PublicGetItemDynamicData
samples/cli/sample-apps Platform publicGetItemDynamicData \
    --itemId 'KtDiBC0QUxsChCFX' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 358 'PublicGetItemDynamicData' test.out

#- 359 PublicGetItem
samples/cli/sample-apps Platform publicGetItem \
    --itemId 'RVXBKvodVsCHjNus' \
    --namespace $AB_NAMESPACE \
    --autoCalcEstimatedPrice 'true' \
    --language 'l5oVaIH7gleLfwyZ' \
    --populateBundle 'true' \
    --region 'uGYOUxo2allX8Bpd' \
    --storeId '8ONzxEaFy4oAALj5' \
    > test.out 2>&1
eval_tap $? 359 'PublicGetItem' test.out

#- 360 GetPaymentCustomization
eval_tap 0 360 'GetPaymentCustomization # SKIP deprecated' test.out

#- 361 PublicGetPaymentUrl
samples/cli/sample-apps Platform publicGetPaymentUrl \
    --namespace $AB_NAMESPACE \
    --body '{"paymentOrderNo": "exPh28Q0CrZQiIz2", "paymentProvider": "WXPAY", "returnUrl": "d15yeyLCkayTnRtt", "ui": "l6nixLTSBmkRIZ0y", "zipCode": "ScFG9WutKeCJfHTe"}' \
    > test.out 2>&1
eval_tap $? 361 'PublicGetPaymentUrl' test.out

#- 362 PublicGetPaymentMethods
samples/cli/sample-apps Platform publicGetPaymentMethods \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'j8H46MDn5MMr3NzF' \
    > test.out 2>&1
eval_tap $? 362 'PublicGetPaymentMethods' test.out

#- 363 PublicGetUnpaidPaymentOrder
samples/cli/sample-apps Platform publicGetUnpaidPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'zXxGqFjLmE2jHryj' \
    > test.out 2>&1
eval_tap $? 363 'PublicGetUnpaidPaymentOrder' test.out

#- 364 Pay
samples/cli/sample-apps Platform pay \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'VsWVeeKW8JIQxnDy' \
    --paymentProvider 'STRIPE' \
    --zipCode 'I72jij0idd5xJrXB' \
    --body '{"token": "O32Yzl3z0qNTZnzb"}' \
    > test.out 2>&1
eval_tap $? 364 'Pay' test.out

#- 365 PublicCheckPaymentOrderPaidStatus
samples/cli/sample-apps Platform publicCheckPaymentOrderPaidStatus \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'EOshMimA5Mg4pB1z' \
    > test.out 2>&1
eval_tap $? 365 'PublicCheckPaymentOrderPaidStatus' test.out

#- 366 GetPaymentPublicConfig
samples/cli/sample-apps Platform getPaymentPublicConfig \
    --namespace $AB_NAMESPACE \
    --sandbox 'false' \
    --paymentProvider 'ALIPAY' \
    --region 'XiMdkJhfjpN1iQx1' \
    > test.out 2>&1
eval_tap $? 366 'GetPaymentPublicConfig' test.out

#- 367 PublicGetQRCode
samples/cli/sample-apps Platform publicGetQRCode \
    --namespace $AB_NAMESPACE \
    --code 'SBtOyMMl4BccKKku' \
    > test.out 2>&1
eval_tap $? 367 'PublicGetQRCode' test.out

#- 368 PublicNormalizePaymentReturnUrl
samples/cli/sample-apps Platform publicNormalizePaymentReturnUrl \
    --namespace $AB_NAMESPACE \
    --payerID 'haSedZLPgPlvAtvf' \
    --foreinginvoice 'K8C9wR23e1GspelW' \
    --invoiceId 'KYTTe5O06puqwso6' \
    --payload 'yQaJlC2S8yy4Mbk0' \
    --redirectResult 'RDm73aUZcygjbBet' \
    --resultCode 'yoOGSjmINCHr2chZ' \
    --sessionId 'Rlw4kZtzCOKv9wRt' \
    --status 'N3neGHdlKHTtlMmr' \
    --token 'L80Wi446rYQILMHD' \
    --type 'OPMBx0a8b9AmY20K' \
    --userId '2Tp1OEGuB5oYhcDG' \
    --orderNo 'Q1F41Hj6cujFvdcy' \
    --paymentOrderNo 'yzGRdhDd5hPEt960' \
    --paymentProvider 'ADYEN' \
    --returnUrl 'Y3JI9AKAwRvjWVpq' \
    > test.out 2>&1
eval_tap $? 368 'PublicNormalizePaymentReturnUrl' test.out

#- 369 GetPaymentTaxValue
samples/cli/sample-apps Platform getPaymentTaxValue \
    --namespace $AB_NAMESPACE \
    --zipCode 'UlcQBbFQCGJwEtoL' \
    --paymentOrderNo 'lhrf5ZB10EiHnSWU' \
    --paymentProvider 'ALIPAY' \
    > test.out 2>&1
eval_tap $? 369 'GetPaymentTaxValue' test.out

#- 370 GetRewardByCode
samples/cli/sample-apps Platform getRewardByCode \
    --namespace $AB_NAMESPACE \
    --rewardCode 'uRgQSyVKQFQ0Brf7' \
    > test.out 2>&1
eval_tap $? 370 'GetRewardByCode' test.out

#- 371 QueryRewards1
samples/cli/sample-apps Platform queryRewards1 \
    --namespace $AB_NAMESPACE \
    --eventTopic 'kLsPJBTm6n1z51QR' \
    --limit '88' \
    --offset '27' \
    --sortBy '["rewardCode:asc", "rewardCode:desc", "namespace:asc"]' \
    > test.out 2>&1
eval_tap $? 371 'QueryRewards1' test.out

#- 372 GetReward1
samples/cli/sample-apps Platform getReward1 \
    --namespace $AB_NAMESPACE \
    --rewardId '86RMU3A7QSO7xBMZ' \
    > test.out 2>&1
eval_tap $? 372 'GetReward1' test.out

#- 373 PublicListStores
samples/cli/sample-apps Platform publicListStores \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 373 'PublicListStores' test.out

#- 374 PublicExistsAnyMyActiveEntitlement
samples/cli/sample-apps Platform publicExistsAnyMyActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --appIds '["HjccBnfYsSnWIZWq", "D5sSIypHoeZpUsxC", "737ZvO4s9Vg80a8V"]' \
    --itemIds '["NXWCnFaRSVfiYPGw", "SOyEhE7dNY9o0Jzv", "on90Xt9Kj3cse73O"]' \
    --skus '["s4XnmlG8Pds5nI9N", "u9TK2xBQ39si4jec", "9t3rL3eCnuhRg2P3"]' \
    > test.out 2>&1
eval_tap $? 374 'PublicExistsAnyMyActiveEntitlement' test.out

#- 375 PublicGetMyAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform publicGetMyAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --appId 'lhPXmo9Zm5M0l9eq' \
    > test.out 2>&1
eval_tap $? 375 'PublicGetMyAppEntitlementOwnershipByAppId' test.out

#- 376 PublicGetMyEntitlementOwnershipByItemId
samples/cli/sample-apps Platform publicGetMyEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --entitlementClazz 'APP' \
    --itemId 'MGZ1rEbdbuNlZbJX' \
    > test.out 2>&1
eval_tap $? 376 'PublicGetMyEntitlementOwnershipByItemId' test.out

#- 377 PublicGetMyEntitlementOwnershipBySku
samples/cli/sample-apps Platform publicGetMyEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --entitlementClazz 'MEDIA' \
    --sku 'tD4PvPa3IQ8WeVIM' \
    > test.out 2>&1
eval_tap $? 377 'PublicGetMyEntitlementOwnershipBySku' test.out

#- 378 PublicGetEntitlementOwnershipToken
samples/cli/sample-apps Platform publicGetEntitlementOwnershipToken \
    --namespace $AB_NAMESPACE \
    --appIds '["4uBLxG2pPpeVP94V", "4V9bbaYXdNVtsmz4", "NjSg02yshaVchPBq"]' \
    --itemIds '["fORAqLbvkq6FWVmW", "CwzyWNAVc4bcCFDG", "ruTy8arVpQee723r"]' \
    --skus '["y6fLMXWsv0g9l2D9", "gjdh0ibm4bSXli6q", "7x2pxjVvYgX9Sx1g"]' \
    > test.out 2>&1
eval_tap $? 378 'PublicGetEntitlementOwnershipToken' test.out

#- 379 SyncTwitchDropsEntitlement
samples/cli/sample-apps Platform syncTwitchDropsEntitlement \
    --namespace $AB_NAMESPACE \
    --body '{"gameId": "4OHfpQ8Jod1lgIz2", "language": "RkKw-DTHV", "region": "HpdUGOx5osYfD7dp"}' \
    > test.out 2>&1
eval_tap $? 379 'SyncTwitchDropsEntitlement' test.out

#- 380 PublicGetMyWallet
samples/cli/sample-apps Platform publicGetMyWallet \
    --currencyCode '2wKqcGGXKWP7BW4u' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 380 'PublicGetMyWallet' test.out

#- 381 SyncEpicGameDLC
samples/cli/sample-apps Platform syncEpicGameDLC \
    --namespace $AB_NAMESPACE \
    --userId 'ixvxtkp8IepGboE4' \
    --body '{"epicGamesJwtToken": "Pt3iHapXszifepag"}' \
    > test.out 2>&1
eval_tap $? 381 'SyncEpicGameDLC' test.out

#- 382 SyncOculusDLC
samples/cli/sample-apps Platform syncOculusDLC \
    --namespace $AB_NAMESPACE \
    --userId '3jH8wHibTRte6rEq' \
    > test.out 2>&1
eval_tap $? 382 'SyncOculusDLC' test.out

#- 383 PublicSyncPsnDlcInventory
samples/cli/sample-apps Platform publicSyncPsnDlcInventory \
    --namespace $AB_NAMESPACE \
    --userId '89JqOTq9ctRM1F21' \
    --body '{"serviceLabel": 19}' \
    > test.out 2>&1
eval_tap $? 383 'PublicSyncPsnDlcInventory' test.out

#- 384 PublicSyncPsnDlcInventoryWithMultipleServiceLabels
samples/cli/sample-apps Platform publicSyncPsnDlcInventoryWithMultipleServiceLabels \
    --namespace $AB_NAMESPACE \
    --userId 'DpgB45wp90ThW22V' \
    --body '{"serviceLabels": [16, 1, 31]}' \
    > test.out 2>&1
eval_tap $? 384 'PublicSyncPsnDlcInventoryWithMultipleServiceLabels' test.out

#- 385 SyncSteamDLC
samples/cli/sample-apps Platform syncSteamDLC \
    --namespace $AB_NAMESPACE \
    --userId 'Rir7leSw200T6rfZ' \
    --body '{"appId": "ieT8pP7O594Hq6yk", "steamId": "5ScA1yQXPtI5uB9F"}' \
    > test.out 2>&1
eval_tap $? 385 'SyncSteamDLC' test.out

#- 386 SyncXboxDLC
samples/cli/sample-apps Platform syncXboxDLC \
    --namespace $AB_NAMESPACE \
    --userId 'G9sPrg9UYKAFk8V3' \
    --body '{"xstsToken": "pQGb35FflXLAFuoT"}' \
    > test.out 2>&1
eval_tap $? 386 'SyncXboxDLC' test.out

#- 387 PublicQueryUserEntitlements
samples/cli/sample-apps Platform publicQueryUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'Xi8GVNazXZzjeDsK' \
    --appType 'DLC' \
    --entitlementClazz 'MEDIA' \
    --entitlementName 'KFtqp18Z2Sn91i18' \
    --features '["YPc46CYwIodLMyj0", "rFkNvcMA4FcOoifo", "2skZbWpM8q6xE7Vr"]' \
    --itemId '["7cNrz8VVMEH0FAMe", "gCDTAEdYp8w0gqOY", "mvUeT9fTr5sYsflr"]' \
    --limit '55' \
    --offset '76' \
    > test.out 2>&1
eval_tap $? 387 'PublicQueryUserEntitlements' test.out

#- 388 PublicGetUserAppEntitlementByAppId
samples/cli/sample-apps Platform publicGetUserAppEntitlementByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'u0DPsAsPWxVwPB5y' \
    --appId 'xIv7J0mZWBCJnGgJ' \
    > test.out 2>&1
eval_tap $? 388 'PublicGetUserAppEntitlementByAppId' test.out

#- 389 PublicQueryUserEntitlementsByAppType
samples/cli/sample-apps Platform publicQueryUserEntitlementsByAppType \
    --namespace $AB_NAMESPACE \
    --userId '4F990n1QkSga9Xrv' \
    --limit '26' \
    --offset '73' \
    --appType 'DLC' \
    > test.out 2>&1
eval_tap $? 389 'PublicQueryUserEntitlementsByAppType' test.out

#- 390 PublicGetUserEntitlementByItemId
samples/cli/sample-apps Platform publicGetUserEntitlementByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'm7pLzTCLccHoaik0' \
    --entitlementClazz 'ENTITLEMENT' \
    --itemId 'WbKnrXot4mKgfnaZ' \
    > test.out 2>&1
eval_tap $? 390 'PublicGetUserEntitlementByItemId' test.out

#- 391 PublicGetUserEntitlementBySku
samples/cli/sample-apps Platform publicGetUserEntitlementBySku \
    --namespace $AB_NAMESPACE \
    --userId 'zb5goZh3yiF4rCSj' \
    --entitlementClazz 'ENTITLEMENT' \
    --sku '00xaH4XOj5ahoriM' \
    > test.out 2>&1
eval_tap $? 391 'PublicGetUserEntitlementBySku' test.out

#- 392 PublicExistsAnyUserActiveEntitlement
samples/cli/sample-apps Platform publicExistsAnyUserActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --userId '8B638v9w5gmj0ZQh' \
    --appIds '["nVtkHABvBrsuL2lw", "gtfP7mqm1IfXHzsl", "hJJMp47uivElKoOC"]' \
    --itemIds '["dafbb5KLZDZq1Gig", "etQrmfGoFghoTyMi", "8Jd4iqk8ZVi4pF6U"]' \
    --skus '["J0NUm1gNEDisN9JO", "iSFYX43egnmWF6Jo", "CA4W6xcyogV3Ivrk"]' \
    > test.out 2>&1
eval_tap $? 392 'PublicExistsAnyUserActiveEntitlement' test.out

#- 393 PublicGetUserAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform publicGetUserAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'vw80v9ULyzxw2ghz' \
    --appId '5OeFbUYNfQnGbvxz' \
    > test.out 2>&1
eval_tap $? 393 'PublicGetUserAppEntitlementOwnershipByAppId' test.out

#- 394 PublicGetUserEntitlementOwnershipByItemId
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'NrCX3b4eRkw75gkq' \
    --entitlementClazz 'ENTITLEMENT' \
    --itemId 'uDb6cErjfzVGyt3j' \
    > test.out 2>&1
eval_tap $? 394 'PublicGetUserEntitlementOwnershipByItemId' test.out

#- 395 PublicGetUserEntitlementOwnershipByItemIds
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'yW5UNdiioHNW79Y5' \
    --ids '["6jCP6yCmVHTsNKtF", "AHuzMXw8TTbWmPkK", "gzp7bINQles257HY"]' \
    > test.out 2>&1
eval_tap $? 395 'PublicGetUserEntitlementOwnershipByItemIds' test.out

#- 396 PublicGetUserEntitlementOwnershipBySku
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --userId 'VsfBD09aZDAizaG2' \
    --entitlementClazz 'APP' \
    --sku 'ZHR2fNBVUXActUUd' \
    > test.out 2>&1
eval_tap $? 396 'PublicGetUserEntitlementOwnershipBySku' test.out

#- 397 PublicGetUserEntitlement
samples/cli/sample-apps Platform publicGetUserEntitlement \
    --entitlementId 'pvU0cGahaLZCGnv2' \
    --namespace $AB_NAMESPACE \
    --userId 'oIN2fFrzZ5cgvGOM' \
    > test.out 2>&1
eval_tap $? 397 'PublicGetUserEntitlement' test.out

#- 398 PublicConsumeUserEntitlement
samples/cli/sample-apps Platform publicConsumeUserEntitlement \
    --entitlementId '3ahBqJ2SW9gkzbxw' \
    --namespace $AB_NAMESPACE \
    --userId 'O5FmZH93uxREgWDI' \
    --body '{"options": ["JYFyo951rkWhSO93", "4qZzXtCnbfAUMCnt", "qKdF77iXcljr45rR"], "requestId": "N6EpheJ7dv0Cmt9D", "useCount": 12}' \
    > test.out 2>&1
eval_tap $? 398 'PublicConsumeUserEntitlement' test.out

#- 399 PublicSellUserEntitlement
samples/cli/sample-apps Platform publicSellUserEntitlement \
    --entitlementId 'TmwaChVqmvOmawQb' \
    --namespace $AB_NAMESPACE \
    --userId 'A3rJGtgJrTlShIjy' \
    --body '{"requestId": "ohAHARQ0mLjRcIem", "useCount": 11}' \
    > test.out 2>&1
eval_tap $? 399 'PublicSellUserEntitlement' test.out

#- 400 PublicRedeemCode
samples/cli/sample-apps Platform publicRedeemCode \
    --namespace $AB_NAMESPACE \
    --userId '7lu7chb72SiMw0cB' \
    --body '{"code": "npkpJLF6AwZrwSUH", "language": "xRQt-kfLP-728", "region": "sNRIU0Q1yHM260Np"}' \
    > test.out 2>&1
eval_tap $? 400 'PublicRedeemCode' test.out

#- 401 PublicFulfillAppleIAPItem
samples/cli/sample-apps Platform publicFulfillAppleIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'mHZd2K1nB8LzVod3' \
    --body '{"excludeOldTransactions": true, "language": "UFue", "productId": "LzTj0w5xzs4ZpldU", "receiptData": "yadrxFu7Q8BMa8bw", "region": "f68SRoSoelHm5tli", "transactionId": "hpf5HQsEPNBwCH52"}' \
    > test.out 2>&1
eval_tap $? 401 'PublicFulfillAppleIAPItem' test.out

#- 402 SyncEpicGamesInventory
samples/cli/sample-apps Platform syncEpicGamesInventory \
    --namespace $AB_NAMESPACE \
    --userId 'NKh0gM60l7P51zcq' \
    --body '{"epicGamesJwtToken": "5gMIXTMsLZVcsvc9"}' \
    > test.out 2>&1
eval_tap $? 402 'SyncEpicGamesInventory' test.out

#- 403 PublicFulfillGoogleIAPItem
samples/cli/sample-apps Platform publicFulfillGoogleIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'xW4AK3vfAlIIPsvc' \
    --body '{"autoAck": false, "language": "GHQW", "orderId": "Si2rTJIrhNiSVOZu", "packageName": "lNUxQZvgsyY1mun5", "productId": "po2r4EvHm5ECd6S3", "purchaseTime": 44, "purchaseToken": "5Uefgwmemq8nEet3", "region": "vLicNiZTRFlQFEOP"}' \
    > test.out 2>&1
eval_tap $? 403 'PublicFulfillGoogleIAPItem' test.out

#- 404 SyncOculusConsumableEntitlements
samples/cli/sample-apps Platform syncOculusConsumableEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'FBszjOf74v1TX5ml' \
    > test.out 2>&1
eval_tap $? 404 'SyncOculusConsumableEntitlements' test.out

#- 405 PublicReconcilePlayStationStore
samples/cli/sample-apps Platform publicReconcilePlayStationStore \
    --namespace $AB_NAMESPACE \
    --userId 'fXWlJZvr5ReZi0WN' \
    --body '{"currencyCode": "1GMMjDqwTWyMvIA3", "price": 0.9998309084561595, "productId": "Wj5LRAIxJV5Xq9rx", "serviceLabel": 53}' \
    > test.out 2>&1
eval_tap $? 405 'PublicReconcilePlayStationStore' test.out

#- 406 PublicReconcilePlayStationStoreWithMultipleServiceLabels
samples/cli/sample-apps Platform publicReconcilePlayStationStoreWithMultipleServiceLabels \
    --namespace $AB_NAMESPACE \
    --userId 'Rjcio5kVt3sE9hQS' \
    --body '{"currencyCode": "KgQQvtddoLEMkShX", "price": 0.5906161297137852, "productId": "v5iUUDVfMPJBS5AJ", "serviceLabels": [16, 3, 93]}' \
    > test.out 2>&1
eval_tap $? 406 'PublicReconcilePlayStationStoreWithMultipleServiceLabels' test.out

#- 407 SyncSteamInventory
samples/cli/sample-apps Platform syncSteamInventory \
    --namespace $AB_NAMESPACE \
    --userId 'fb7u6ACjkpqsC6zy' \
    --body '{"appId": "amDsvkgR1Qr5L54Z", "currencyCode": "QCX5286codksFQgj", "language": "Ker", "price": 0.8660461071300876, "productId": "FarNHTOBdL5V0eJN", "region": "Pgj3PlIHlFSqwQeh", "steamId": "H7zatQCfhrg3C4jn"}' \
    > test.out 2>&1
eval_tap $? 407 'SyncSteamInventory' test.out

#- 408 SyncTwitchDropsEntitlement1
samples/cli/sample-apps Platform syncTwitchDropsEntitlement1 \
    --namespace $AB_NAMESPACE \
    --userId '8wPOpSX4eT5OfdjH' \
    --body '{"gameId": "cezs3el3fedCPclx", "language": "nT-286", "region": "UtwHz1VmDtbh8c0w"}' \
    > test.out 2>&1
eval_tap $? 408 'SyncTwitchDropsEntitlement1' test.out

#- 409 SyncXboxInventory
samples/cli/sample-apps Platform syncXboxInventory \
    --namespace $AB_NAMESPACE \
    --userId 'gGxkH4SGxFPR3S9p' \
    --body '{"currencyCode": "9pCV3arlNTf8Gige", "price": 0.8887820286368406, "productId": "W6edn8zmBtvXhcFK", "xstsToken": "EZcxtfooxsuFMiUn"}' \
    > test.out 2>&1
eval_tap $? 409 'SyncXboxInventory' test.out

#- 410 PublicQueryUserOrders
samples/cli/sample-apps Platform publicQueryUserOrders \
    --namespace $AB_NAMESPACE \
    --userId 'uD6BKEBjETEHwA4p' \
    --itemId 'nIyPgDUI9PLNCRbF' \
    --limit '98' \
    --offset '35' \
    --status 'REFUNDED' \
    > test.out 2>&1
eval_tap $? 410 'PublicQueryUserOrders' test.out

#- 411 PublicCreateUserOrder
samples/cli/sample-apps Platform publicCreateUserOrder \
    --namespace $AB_NAMESPACE \
    --userId 'mSC2uc3hZSyKVUey' \
    --body '{"currencyCode": "rYl3eCWd4viS4uO3", "discountedPrice": 74, "ext": {"Rxd1NKTWUk7adWEw": {}, "UdsFiOI8v2na0zQj": {}, "2rh3qI7AV7DVcAWk": {}}, "itemId": "Px3dJCYgwzpTgYRJ", "language": "DDrl_Qi", "price": 86, "quantity": 9, "region": "sxVkJXg0zYmYS8i4", "returnUrl": "0SbULiYxwAiL53JB", "sectionId": "3QnS43uurnKljnvu"}' \
    > test.out 2>&1
eval_tap $? 411 'PublicCreateUserOrder' test.out

#- 412 PublicGetUserOrder
samples/cli/sample-apps Platform publicGetUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'dGYo6vfm6vlrkglo' \
    --userId 'qPac4Kd0CksrZcIQ' \
    > test.out 2>&1
eval_tap $? 412 'PublicGetUserOrder' test.out

#- 413 PublicCancelUserOrder
samples/cli/sample-apps Platform publicCancelUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'pNQPGaLnG6ECNZ19' \
    --userId 'UQfE9JUhsARnxcnG' \
    > test.out 2>&1
eval_tap $? 413 'PublicCancelUserOrder' test.out

#- 414 PublicGetUserOrderHistories
samples/cli/sample-apps Platform publicGetUserOrderHistories \
    --namespace $AB_NAMESPACE \
    --orderNo 'YrGH0arzyqWHfmBQ' \
    --userId '84ZhPHrNHalr9gWq' \
    > test.out 2>&1
eval_tap $? 414 'PublicGetUserOrderHistories' test.out

#- 415 PublicDownloadUserOrderReceipt
samples/cli/sample-apps Platform publicDownloadUserOrderReceipt \
    --namespace $AB_NAMESPACE \
    --orderNo 'eaRZzJpCyS8ES9my' \
    --userId 'uj1ZI1RwRP2fw5nM' \
    > test.out 2>&1
eval_tap $? 415 'PublicDownloadUserOrderReceipt' test.out

#- 416 PublicGetPaymentAccounts
samples/cli/sample-apps Platform publicGetPaymentAccounts \
    --namespace $AB_NAMESPACE \
    --userId 'Tf2cnoJ2eUKVPYqt' \
    > test.out 2>&1
eval_tap $? 416 'PublicGetPaymentAccounts' test.out

#- 417 PublicDeletePaymentAccount
samples/cli/sample-apps Platform publicDeletePaymentAccount \
    --id 'LvwDw5d8piTDtdH7' \
    --namespace $AB_NAMESPACE \
    --type 'paypal' \
    --userId 'paZsjNA8889tnluI' \
    > test.out 2>&1
eval_tap $? 417 'PublicDeletePaymentAccount' test.out

#- 418 PublicListActiveSections
samples/cli/sample-apps Platform publicListActiveSections \
    --namespace $AB_NAMESPACE \
    --userId 'wBO7WloKHSYsy0M1' \
    --autoCalcEstimatedPrice 'true' \
    --language 'xxRerKUEDiSX5bHh' \
    --region 'Y1hMArKHrMA2hfHE' \
    --storeId 'eaPTDgyhVOMXNmiK' \
    --viewId 'Y9nEsYgrIXmb64UR' \
    > test.out 2>&1
eval_tap $? 418 'PublicListActiveSections' test.out

#- 419 PublicQueryUserSubscriptions
samples/cli/sample-apps Platform publicQueryUserSubscriptions \
    --namespace $AB_NAMESPACE \
    --userId 'FU9tHhtNvF68Fyhl' \
    --chargeStatus 'NEVER' \
    --itemId 'XnEC83pBPuQ3zogy' \
    --limit '74' \
    --offset '42' \
    --sku 'Tm3KQ5ex1glirL7q' \
    --status 'INIT' \
    --subscribedBy 'PLATFORM' \
    > test.out 2>&1
eval_tap $? 419 'PublicQueryUserSubscriptions' test.out

#- 420 PublicSubscribeSubscription
samples/cli/sample-apps Platform publicSubscribeSubscription \
    --namespace $AB_NAMESPACE \
    --userId 'G3l90pSsRDjw52Ki' \
    --body '{"currencyCode": "fpLaz7cQ3NOEBuBf", "itemId": "zdMSrCErNLTwSQSx", "language": "LLI-oXJd-WU", "region": "nfiyT02PeN5Vvg6g", "returnUrl": "IMHpjB11urlcSegA", "source": "7boShoKMgCfalqfU"}' \
    > test.out 2>&1
eval_tap $? 420 'PublicSubscribeSubscription' test.out

#- 421 PublicCheckUserSubscriptionSubscribableByItemId
samples/cli/sample-apps Platform publicCheckUserSubscriptionSubscribableByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'Ghq24FSoA52cIp5R' \
    --itemId 'AHGLA0jMJMqzyO63' \
    > test.out 2>&1
eval_tap $? 421 'PublicCheckUserSubscriptionSubscribableByItemId' test.out

#- 422 PublicGetUserSubscription
samples/cli/sample-apps Platform publicGetUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'MFoYWH6GxAcWVUyo' \
    --userId 'HIqskZkvY2vzUdPe' \
    > test.out 2>&1
eval_tap $? 422 'PublicGetUserSubscription' test.out

#- 423 PublicChangeSubscriptionBillingAccount
samples/cli/sample-apps Platform publicChangeSubscriptionBillingAccount \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'ZaNFJlaPYsnjUV43' \
    --userId '2r47bwiYvbs1uize' \
    > test.out 2>&1
eval_tap $? 423 'PublicChangeSubscriptionBillingAccount' test.out

#- 424 PublicCancelSubscription
samples/cli/sample-apps Platform publicCancelSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'int9M02KrIoAHcct' \
    --userId '3ijBNJcBvmP2oARD' \
    --body '{"immediate": true, "reason": "itrM0mAfC9w04JzC"}' \
    > test.out 2>&1
eval_tap $? 424 'PublicCancelSubscription' test.out

#- 425 PublicGetUserSubscriptionBillingHistories
samples/cli/sample-apps Platform publicGetUserSubscriptionBillingHistories \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'U4XecEtwOyJoG5Tm' \
    --userId 'QN4LuZz8sLYNfh1Y' \
    --excludeFree 'false' \
    --limit '80' \
    --offset '18' \
    > test.out 2>&1
eval_tap $? 425 'PublicGetUserSubscriptionBillingHistories' test.out

#- 426 PublicListViews
samples/cli/sample-apps Platform publicListViews \
    --namespace $AB_NAMESPACE \
    --userId 'GfchQthtDDbr8Ffg' \
    --language 'OuMmScmloyni0nH3' \
    --storeId 'xD3SGOgsz7vrcgUw' \
    > test.out 2>&1
eval_tap $? 426 'PublicListViews' test.out

#- 427 PublicGetWallet
samples/cli/sample-apps Platform publicGetWallet \
    --currencyCode 'sZlvPLljq01Z7I8T' \
    --namespace $AB_NAMESPACE \
    --userId 'QvFBzcfy2XkX5eyL' \
    > test.out 2>&1
eval_tap $? 427 'PublicGetWallet' test.out

#- 428 PublicListUserWalletTransactions
samples/cli/sample-apps Platform publicListUserWalletTransactions \
    --currencyCode 'Og2BHM5apxt3kyIh' \
    --namespace $AB_NAMESPACE \
    --userId 'zY3I32drJJKdc1Zj' \
    --limit '7' \
    --offset '11' \
    > test.out 2>&1
eval_tap $? 428 'PublicListUserWalletTransactions' test.out

#- 429 QueryItems1
samples/cli/sample-apps Platform queryItems1 \
    --namespace $AB_NAMESPACE \
    --appType 'GAME' \
    --availableDate 'ysVuchbJZTFngT0T' \
    --baseAppId 'm5Y7aRjhS70t3dvL' \
    --categoryPath 'P2hqwahpIXgkb1XY' \
    --features '1FiMqWi3sosEKOJp' \
    --includeSubCategoryItem 'true' \
    --itemName 'ErvP24iRK7i2C06e' \
    --itemStatus 'INACTIVE' \
    --itemType 'SEASON' \
    --limit '44' \
    --offset '88' \
    --region '5f2ToMRX7SXfdWjO' \
    --sectionExclusive 'true' \
    --sortBy '["name:asc", "name:desc", "createdAt:asc"]' \
    --storeId 'kp3mkv8XmMZNkh4Q' \
    --tags '0WhnBdHqRj520vAq' \
    --targetNamespace 'ZonqwnIMxjpMKVxf' \
    --withTotal 'false' \
    > test.out 2>&1
eval_tap $? 429 'QueryItems1' test.out

#- 430 ImportStore1
samples/cli/sample-apps Platform importStore1 \
    --namespace $AB_NAMESPACE \
    --storeId 'gvcqZhEMGPY9iFCv' \
    --strictMode 'true' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 430 'ImportStore1' test.out

#- 431 ExportStore1
samples/cli/sample-apps Platform exportStore1 \
    --namespace $AB_NAMESPACE \
    --storeId 'qa8T5CZI26GdqcYU' \
    --body '{"itemIds": ["Jz7HzxKAxCF4wdQ1", "CP2y0XSNUTbBrAD1", "q5W4CDvOKQCC13Qh"]}' \
    > test.out 2>&1
eval_tap $? 431 'ExportStore1' test.out

#- 432 FulfillRewardsV2
samples/cli/sample-apps Platform fulfillRewardsV2 \
    --namespace $AB_NAMESPACE \
    --userId 's2EfefLztVKRZqQN' \
    --body '{"metadata": {"hjAI7Nk8bHBRerid": {}, "xt3wvd8UOGb55MBE": {}, "QCLjOqQSgr3B8hxU": {}}, "origin": "Nintendo", "rewards": [{"currency": {"currencyCode": "jYQxy96gTuUmpLrd", "namespace": "TSOLWqzqk2vVreut"}, "item": {"itemId": "fWm4162bfWvSZA4r", "itemSku": "3gSV4ZhyJWhw1fGF", "itemType": "QPeOIFnr4Oeqzj6I"}, "quantity": 60, "type": "CURRENCY"}, {"currency": {"currencyCode": "R9dQ74XkvREHUrxj", "namespace": "DTJiEnnDueBb0F5U"}, "item": {"itemId": "R9xlYSAvkmIM8H8c", "itemSku": "QjWte3IsLQuYo8mT", "itemType": "ufYWphzM0CIk6mL5"}, "quantity": 13, "type": "ITEM"}, {"currency": {"currencyCode": "7qXhNXzDLPI9FZMd", "namespace": "0O9lvcXxmi6qGeSU"}, "item": {"itemId": "mSTVQlrAgsnZal5m", "itemSku": "cseWkjCen0qHXV6g", "itemType": "v4n37va4ZUNI5iLA"}, "quantity": 52, "type": "ITEM"}], "source": "IAP_CHARGEBACK_REVERSED", "transactionId": "0cmXEqVrvy7rj6pd"}' \
    > test.out 2>&1
eval_tap $? 432 'FulfillRewardsV2' test.out


rm -f "tmp.dat"

exit $EXIT_CODE