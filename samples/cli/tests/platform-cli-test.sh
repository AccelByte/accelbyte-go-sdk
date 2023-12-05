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
    --id 'hcPNmLDV1g5YugLf' \
    > test.out 2>&1
eval_tap $? 3 'GetFulfillmentScript' test.out

#- 4 CreateFulfillmentScript
samples/cli/sample-apps Platform createFulfillmentScript \
    --id 'AzvRhiB7N1yqlvIw' \
    --body '{"grantDays": "4yinx2RJ4IKnsApV"}' \
    > test.out 2>&1
eval_tap $? 4 'CreateFulfillmentScript' test.out

#- 5 DeleteFulfillmentScript
samples/cli/sample-apps Platform deleteFulfillmentScript \
    --id 'tj6KtBw5eyN6uiyT' \
    > test.out 2>&1
eval_tap $? 5 'DeleteFulfillmentScript' test.out

#- 6 UpdateFulfillmentScript
samples/cli/sample-apps Platform updateFulfillmentScript \
    --id '1WXIqQy0Y1FvmkBR' \
    --body '{"grantDays": "qtXm1iQzV2KKlug8"}' \
    > test.out 2>&1
eval_tap $? 6 'UpdateFulfillmentScript' test.out

#- 7 ListItemTypeConfigs
samples/cli/sample-apps Platform listItemTypeConfigs \
    > test.out 2>&1
eval_tap $? 7 'ListItemTypeConfigs' test.out

#- 8 CreateItemTypeConfig
samples/cli/sample-apps Platform createItemTypeConfig \
    --body '{"clazz": "SvnsFX7KAQkeRVVV", "dryRun": true, "fulfillmentUrl": "SgwKwILKD8MdThwe", "itemType": "EXTENSION", "purchaseConditionUrl": "13rZMUlXLF2BlW8z"}' \
    > test.out 2>&1
eval_tap $? 8 'CreateItemTypeConfig' test.out

#- 9 SearchItemTypeConfig
samples/cli/sample-apps Platform searchItemTypeConfig \
    --clazz 'iJJadJ9BYCLThjyZ' \
    --itemType 'SEASON' \
    > test.out 2>&1
eval_tap $? 9 'SearchItemTypeConfig' test.out

#- 10 GetItemTypeConfig
samples/cli/sample-apps Platform getItemTypeConfig \
    --id 'w6k4ZVxfdrcCTuK6' \
    > test.out 2>&1
eval_tap $? 10 'GetItemTypeConfig' test.out

#- 11 UpdateItemTypeConfig
samples/cli/sample-apps Platform updateItemTypeConfig \
    --id 'BnK7pmW3ec7ZV6Bc' \
    --body '{"clazz": "IphC9h1WOxSe6GTI", "dryRun": false, "fulfillmentUrl": "lg1KmT2OFdJ0ZfNQ", "purchaseConditionUrl": "9HntBd4PyDHoFfCG"}' \
    > test.out 2>&1
eval_tap $? 11 'UpdateItemTypeConfig' test.out

#- 12 DeleteItemTypeConfig
samples/cli/sample-apps Platform deleteItemTypeConfig \
    --id 'yvxP8E388M0Ocndu' \
    > test.out 2>&1
eval_tap $? 12 'DeleteItemTypeConfig' test.out

#- 13 QueryCampaigns
samples/cli/sample-apps Platform queryCampaigns \
    --namespace $AB_NAMESPACE \
    --limit '89' \
    --name 'RgLcNfBUjUyIQ3pt' \
    --offset '57' \
    --tag 'KVcxqzH5Vm56ACMs' \
    > test.out 2>&1
eval_tap $? 13 'QueryCampaigns' test.out

#- 14 CreateCampaign
samples/cli/sample-apps Platform createCampaign \
    --namespace $AB_NAMESPACE \
    --body '{"description": "TBIf1tn52uSxlXQz", "items": [{"extraSubscriptionDays": 82, "itemId": "hLnFhgcbuI7U1SwC", "itemName": "WsTZPEEDxzRw5jgD", "quantity": 100}, {"extraSubscriptionDays": 38, "itemId": "K0ATkrMGoXxJyoog", "itemName": "uzhF58D8vKsKxHDK", "quantity": 11}, {"extraSubscriptionDays": 5, "itemId": "phgN99UF6xAWLJ4f", "itemName": "7CdOyLtEXRMHcIEq", "quantity": 3}], "maxRedeemCountPerCampaignPerUser": 82, "maxRedeemCountPerCode": 70, "maxRedeemCountPerCodePerUser": 70, "maxSaleCount": 18, "name": "PUXUbWMoAmNFcHPd", "redeemEnd": "1983-05-10T00:00:00Z", "redeemStart": "1999-09-02T00:00:00Z", "redeemType": "ITEM", "status": "ACTIVE", "tags": ["NZxhBZJhexkTGnoh", "JFvRlgnO4ReTPuWG", "Ns6ZUsOOz7Y1JG7Z"], "type": "REDEMPTION"}' \
    > test.out 2>&1
eval_tap $? 14 'CreateCampaign' test.out

#- 15 GetCampaign
samples/cli/sample-apps Platform getCampaign \
    --campaignId '0Vk5cGagpaBJdkDK' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 15 'GetCampaign' test.out

#- 16 UpdateCampaign
samples/cli/sample-apps Platform updateCampaign \
    --campaignId 'S1cGbHmAAG4hgGEi' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "wfpYHA6QCFi59AvG", "items": [{"extraSubscriptionDays": 94, "itemId": "vptxU2NfjR9n2GMZ", "itemName": "3cHgm1c8iErGh8FR", "quantity": 40}, {"extraSubscriptionDays": 22, "itemId": "WMXwVDRSKpU8TVIq", "itemName": "jXxcku8WYPglhlKi", "quantity": 37}, {"extraSubscriptionDays": 19, "itemId": "baS3Mc7drS9CdrLK", "itemName": "xewcyvPf7wndsev4", "quantity": 0}], "maxRedeemCountPerCampaignPerUser": 91, "maxRedeemCountPerCode": 65, "maxRedeemCountPerCodePerUser": 61, "maxSaleCount": 31, "name": "wf3IIkbe6b2nd8IU", "redeemEnd": "1977-07-24T00:00:00Z", "redeemStart": "1985-10-25T00:00:00Z", "redeemType": "ITEM", "status": "INACTIVE", "tags": ["0XxmDYDkj2umPZ20", "HerXkF9DWwpApxDm", "Pp0z6tQxdMITsViz"]}' \
    > test.out 2>&1
eval_tap $? 16 'UpdateCampaign' test.out

#- 17 GetCampaignDynamic
samples/cli/sample-apps Platform getCampaignDynamic \
    --campaignId 'YRxktcTFaG91Pzlz' \
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
    --body '{"appConfig": {"appName": "raVqUaVyxcfR9AYA"}, "customConfig": {"connectionType": "TLS", "grpcServerAddress": "3C3Oe8vvWrb9GtPj"}, "extendType": "APP"}' \
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
    --body '{"appConfig": {"appName": "ulGt5FvbtMVrAOTw"}, "customConfig": {"connectionType": "TLS", "grpcServerAddress": "qUmoyjBsTqWbx8Ig"}, "extendType": "APP"}' \
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
    --storeId 'iKkAOWpHKZSEVlKQ' \
    > test.out 2>&1
eval_tap $? 27 'GetRootCategories' test.out

#- 28 CreateCategory
samples/cli/sample-apps Platform createCategory \
    --namespace $AB_NAMESPACE \
    --storeId 'u3JaetFa73kbsGsj' \
    --body '{"categoryPath": "tlvCOV6Adq7HxAib", "localizationDisplayNames": {"c3o2UUpQDist1Jf2": "wdTAoY4qaRO3egQd", "UKc5W8nSB7b2NVlE": "k7VNlIyYoK5283lD", "DYEQ2I03nFbPJGGt": "8kWIgDArTiPJNWLq"}}' \
    > test.out 2>&1
eval_tap $? 28 'CreateCategory' test.out

#- 29 ListCategoriesBasic
samples/cli/sample-apps Platform listCategoriesBasic \
    --namespace $AB_NAMESPACE \
    --storeId 'x1XpJW4yO086WWkg' \
    > test.out 2>&1
eval_tap $? 29 'ListCategoriesBasic' test.out

#- 30 GetCategory
samples/cli/sample-apps Platform getCategory \
    --categoryPath 'v0jV9tjLF2NCeYaF' \
    --namespace $AB_NAMESPACE \
    --storeId 'Sm4Y1tleQ4xOlPRY' \
    > test.out 2>&1
eval_tap $? 30 'GetCategory' test.out

#- 31 UpdateCategory
samples/cli/sample-apps Platform updateCategory \
    --categoryPath 'H0NffM6ttzV0yurz' \
    --namespace $AB_NAMESPACE \
    --storeId 'lL2bshTayzwNmqo1' \
    --body '{"localizationDisplayNames": {"bTZ38vpshnjg8pfJ": "t42cDFRagWizyir4", "Cnai22nM2zNS8KVr": "EOOv9tKxS7xUUbO6", "ejBfXtoKgFDsipXG": "Nv8cfQ8p4eykmnaM"}}' \
    > test.out 2>&1
eval_tap $? 31 'UpdateCategory' test.out

#- 32 DeleteCategory
samples/cli/sample-apps Platform deleteCategory \
    --categoryPath 'zCTvqJcpRYu2IoGf' \
    --namespace $AB_NAMESPACE \
    --storeId 'Wskc37ON1RiSYUGd' \
    > test.out 2>&1
eval_tap $? 32 'DeleteCategory' test.out

#- 33 GetChildCategories
samples/cli/sample-apps Platform getChildCategories \
    --categoryPath '4Yqa1czat8QWvItp' \
    --namespace $AB_NAMESPACE \
    --storeId 'zAkgjKX0dpphnR1Q' \
    > test.out 2>&1
eval_tap $? 33 'GetChildCategories' test.out

#- 34 GetDescendantCategories
samples/cli/sample-apps Platform getDescendantCategories \
    --categoryPath 'SHtl6ZszoPE6BQVo' \
    --namespace $AB_NAMESPACE \
    --storeId '8xk7B0oWz3Q2IW9f' \
    > test.out 2>&1
eval_tap $? 34 'GetDescendantCategories' test.out

#- 35 QueryCodes
samples/cli/sample-apps Platform queryCodes \
    --campaignId 'sioNk1hlJnlPbZqS' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --batchNo '47' \
    --code 'pFQKqVwWTws2fOSJ' \
    --limit '22' \
    --offset '43' \
    > test.out 2>&1
eval_tap $? 35 'QueryCodes' test.out

#- 36 CreateCodes
samples/cli/sample-apps Platform createCodes \
    --campaignId 'PrCA6jtT9UxOvqmd' \
    --namespace $AB_NAMESPACE \
    --body '{"quantity": 50}' \
    > test.out 2>&1
eval_tap $? 36 'CreateCodes' test.out

#- 37 Download
samples/cli/sample-apps Platform download \
    --campaignId 'vR13w3Bqwp4Gb7bE' \
    --namespace $AB_NAMESPACE \
    --batchNo '37' \
    > test.out 2>&1
eval_tap $? 37 'Download' test.out

#- 38 BulkDisableCodes
samples/cli/sample-apps Platform bulkDisableCodes \
    --campaignId 'jkS5sViu5iMWxlgt' \
    --namespace $AB_NAMESPACE \
    --batchNo '93' \
    > test.out 2>&1
eval_tap $? 38 'BulkDisableCodes' test.out

#- 39 BulkEnableCodes
samples/cli/sample-apps Platform bulkEnableCodes \
    --campaignId '2tH7OderujUTGlBC' \
    --namespace $AB_NAMESPACE \
    --batchNo '24' \
    > test.out 2>&1
eval_tap $? 39 'BulkEnableCodes' test.out

#- 40 QueryRedeemHistory
samples/cli/sample-apps Platform queryRedeemHistory \
    --campaignId 'ZuhTzOwQgkITdHIN' \
    --namespace $AB_NAMESPACE \
    --code 'Ea3U5FVl6tU018cy' \
    --limit '97' \
    --offset '100' \
    --userId '58EzFfDejvqdnUBy' \
    > test.out 2>&1
eval_tap $? 40 'QueryRedeemHistory' test.out

#- 41 GetCode
samples/cli/sample-apps Platform getCode \
    --code 'AsXlIwOj3GuxiMUN' \
    --namespace $AB_NAMESPACE \
    --redeemable 'true' \
    > test.out 2>&1
eval_tap $? 41 'GetCode' test.out

#- 42 DisableCode
samples/cli/sample-apps Platform disableCode \
    --code 'U1agsxDcpyrmtGvx' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 42 'DisableCode' test.out

#- 43 EnableCode
samples/cli/sample-apps Platform enableCode \
    --code 'iXvG2MpXjC1DMk8c' \
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
    --body '{"currencyCode": "inVyrjsiCBfVNbQf", "currencySymbol": "boMaOUug53lmRO2X", "currencyType": "REAL", "decimals": 36, "localizationDescriptions": {"zPvSGuX3FZ5O6VFT": "HYDxmMIrFNluzX54", "JjY0adYCNsqONsZx": "ijr4s2lHOMq80ejJ", "IU0ncXpRJefzeR9n": "TbZx271SGeifWYPN"}}' \
    > test.out 2>&1
eval_tap $? 48 'CreateCurrency' test.out

#- 49 UpdateCurrency
samples/cli/sample-apps Platform updateCurrency \
    --currencyCode 'GNwYrQT4rL4W81oi' \
    --namespace $AB_NAMESPACE \
    --body '{"localizationDescriptions": {"hnyo1468fZJImdnT": "0qG4SF4X8ZNZdgY1", "OOsm7TURtzxEDSVo": "YyIX5tZM6nFRgReC", "gAE0hxNdBheCM30V": "D3XHFJRNsLGel575"}}' \
    > test.out 2>&1
eval_tap $? 49 'UpdateCurrency' test.out

#- 50 DeleteCurrency
samples/cli/sample-apps Platform deleteCurrency \
    --currencyCode 'Vjw2oNJNhjNgzhxe' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 50 'DeleteCurrency' test.out

#- 51 GetCurrencyConfig
samples/cli/sample-apps Platform getCurrencyConfig \
    --currencyCode 'KSG3gvI522R4isak' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 51 'GetCurrencyConfig' test.out

#- 52 GetCurrencySummary
samples/cli/sample-apps Platform getCurrencySummary \
    --currencyCode 'hOIYqqdVzUzTqZYa' \
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
    --body '{"data": [{"id": "nDiNcc6RvfRhdRi8", "rewards": [{"currency": {"currencyCode": "rCUsFITFGznAllLQ", "namespace": "MuSoIohwHL5qS1Yh"}, "item": {"itemId": "JbK96jyNPhcj8CjS", "itemSku": "hS5Zto9PwH44wzhN", "itemType": "g2mHafZOP9jR1lSA"}, "quantity": 27, "type": "CURRENCY"}, {"currency": {"currencyCode": "qxSUxceRISqILAvl", "namespace": "wY0DRwoQHnA6nOFu"}, "item": {"itemId": "epkJquVS0KUXdnOU", "itemSku": "1XxR6nYt15bv2fYy", "itemType": "65oJXQ1qIPmDhBh2"}, "quantity": 10, "type": "ITEM"}, {"currency": {"currencyCode": "r86rQ6qE21Uv3Cyv", "namespace": "XpLYhGFVaVPZS73X"}, "item": {"itemId": "h8IbjNvwnADKQOEm", "itemSku": "zkxHZHGCoGLFf2kY", "itemType": "tve7DCzBbRa9xLmF"}, "quantity": 32, "type": "ITEM"}]}, {"id": "5PyWXct8KLvP61zI", "rewards": [{"currency": {"currencyCode": "mdZd0z0ojqZ1A8FE", "namespace": "t1DuU5m3WD5aMC41"}, "item": {"itemId": "bFyjrJxkWCc6zA3D", "itemSku": "U3D7zUL183Ql14OQ", "itemType": "SNPZN3SwWPbpRsTv"}, "quantity": 6, "type": "ITEM"}, {"currency": {"currencyCode": "UpAqAg8DmIWgMP24", "namespace": "Y9v6Uvqx18UyDTtV"}, "item": {"itemId": "6DKsP3Z6NvhmIlSo", "itemSku": "cgFfJUFLvx9StlTF", "itemType": "WA20GVYLjorzLzlk"}, "quantity": 13, "type": "ITEM"}, {"currency": {"currencyCode": "KcCymG2NLXfB8QXk", "namespace": "DX9BNy0Q5tOVSwyz"}, "item": {"itemId": "0kgrpBBZ47F1czzb", "itemSku": "BcF7CAsYIPuhlkRN", "itemType": "Oq3GZR96sEM0xQws"}, "quantity": 9, "type": "ITEM"}]}, {"id": "a57mSuf1U2oeKFyC", "rewards": [{"currency": {"currencyCode": "i47wiLTEeEArIrnl", "namespace": "6MHncuyqBdhxRFqp"}, "item": {"itemId": "KjcgDJg0o2VmPstW", "itemSku": "XrzWQUYJjaMuZALA", "itemType": "mm5F6k7PhMl4bb2B"}, "quantity": 52, "type": "CURRENCY"}, {"currency": {"currencyCode": "ksXqOjlTHiEMm4vv", "namespace": "81wZCM9sPfdI5X9n"}, "item": {"itemId": "JI6Tn1o27RCH0ZW2", "itemSku": "MBsNbvGlfg35DzIw", "itemType": "dXHEaLe5V3gNA1Yd"}, "quantity": 85, "type": "ITEM"}, {"currency": {"currencyCode": "4cQiHckl3FYBdRvV", "namespace": "EPmUFJFBtC5icR8X"}, "item": {"itemId": "otRC4kAsFW93m1Vd", "itemSku": "BP0HmfrfGQv0bUZF", "itemType": "prFAPvS0SHhc6Xny"}, "quantity": 38, "type": "ITEM"}]}]}' \
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
    --body '{"data": [{"platform": "OCULUS", "platformDlcIdMap": {"cJiTcKofcCfq3rSl": "obktZGEBrHhOPoMf", "zWv6hO402I5zTAFX": "SQQAH4xqUxpo1jW7", "3GJkgY2EgwODRg6n": "qQ9bPKKgcSPGbGtL"}}, {"platform": "PSN", "platformDlcIdMap": {"NzEhe5KBoL991wPN": "Fk1ikGGBT50jNTEQ", "ngYRbvQy5qLhp29p": "9yWqFrk5mklQYUpg", "IEbgEwXqWrr00nm9": "bbdAi0IQ49CxZqk1"}}, {"platform": "STEAM", "platformDlcIdMap": {"3xhB7YujNZrTtwc7": "L4Ou5COIEvnFwubD", "0hcLNtpP7JWg3Qkj": "xWrQf07wyiTIwAk1", "jxRUKt1iHMRdu46B": "4Py9lxNjEXQPFvm9"}}]}' \
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
    --appType 'GAME' \
    --entitlementClazz 'SUBSCRIPTION' \
    --entitlementName 'ETS4kezCKOKSUnfP' \
    --itemId '["mF1Zaya5zGIuJ0aP", "HzLfx4lROoIWzIY7", "x1DNMX8SXlFvBWJP"]' \
    --limit '72' \
    --offset '65' \
    --userId 'r2JzW1x92FYvIJ8r' \
    > test.out 2>&1
eval_tap $? 59 'QueryEntitlements' test.out

#- 60 QueryEntitlements1
samples/cli/sample-apps Platform queryEntitlements1 \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --itemIds '["s78584Qmgj40BZMf", "0JR2dTtedWwXtQWt", "2oynAGvEpQ6pqiut"]' \
    --limit '47' \
    --offset '43' \
    > test.out 2>&1
eval_tap $? 60 'QueryEntitlements1' test.out

#- 61 GrantEntitlements
samples/cli/sample-apps Platform grantEntitlements \
    --namespace $AB_NAMESPACE \
    --body '{"entitlementGrantList": [{"endDate": "1972-01-01T00:00:00Z", "grantedCode": "t4DPKUJjeehtXaAy", "itemId": "42ppFHNYeDxwtvly", "itemNamespace": "nLiUSgDUQub5wIOg", "language": "ecj-793", "quantity": 66, "region": "WAehP5ooGQKFWVBx", "source": "PURCHASE", "startDate": "1997-04-13T00:00:00Z", "storeId": "LHE9Tu0z60xqeUYp"}, {"endDate": "1994-06-04T00:00:00Z", "grantedCode": "fFSAjpAepWaip5wL", "itemId": "yhHbk7yQMXvUA9Ru", "itemNamespace": "H3WSYtQ9Zb2qiDSR", "language": "rxP_szMT", "quantity": 14, "region": "zls3PaOJcABPt0jF", "source": "ACHIEVEMENT", "startDate": "1973-12-29T00:00:00Z", "storeId": "TKkpc8izyyGSCcId"}, {"endDate": "1996-06-04T00:00:00Z", "grantedCode": "2nAMBgRK1R36wRHW", "itemId": "w0MWevhs5yoRZ9Ne", "itemNamespace": "9EWZ1IgZVgNVip65", "language": "zQnS", "quantity": 46, "region": "tcNfXJ6tRExTpDr9", "source": "REDEEM_CODE", "startDate": "1980-04-18T00:00:00Z", "storeId": "hTN7KCkQtgudQMpG"}], "userIds": ["t31NlZPB4Ng7Q30w", "4ORZxdylhFRKrBFL", "JyL6Kc9ZX5IAzlt5"]}' \
    > test.out 2>&1
eval_tap $? 61 'GrantEntitlements' test.out

#- 62 RevokeEntitlements
samples/cli/sample-apps Platform revokeEntitlements \
    --namespace $AB_NAMESPACE \
    --body '["pCUZVGYp13szGvHI", "BrtvfE7352YEjnrb", "TLteZ7ZoSmCKZe2i"]' \
    > test.out 2>&1
eval_tap $? 62 'RevokeEntitlements' test.out

#- 63 GetEntitlement
samples/cli/sample-apps Platform getEntitlement \
    --entitlementId 'ZrtLi7rtKMk3Ojd0' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 63 'GetEntitlement' test.out

#- 64 QueryFulfillmentHistories
samples/cli/sample-apps Platform queryFulfillmentHistories \
    --namespace $AB_NAMESPACE \
    --limit '91' \
    --offset '15' \
    --status 'SUCCESS' \
    --userId 'jHcJtr5opUJkL8cc' \
    > test.out 2>&1
eval_tap $? 64 'QueryFulfillmentHistories' test.out

#- 65 QueryIAPClawbackHistory
samples/cli/sample-apps Platform queryIAPClawbackHistory \
    --namespace $AB_NAMESPACE \
    --endTime 'EM6KVq6kVTN5cB5B' \
    --eventType 'OTHER' \
    --externalOrderId 'rwB0I2aELYKbuW2N' \
    --limit '59' \
    --offset '41' \
    --startTime '5b9w3xMVoQfl1DnH' \
    --status 'IGNORED' \
    --userId 'yP3jy87q4J0HY1k6' \
    > test.out 2>&1
eval_tap $? 65 'QueryIAPClawbackHistory' test.out

#- 66 MockPlayStationStreamEvent
samples/cli/sample-apps Platform mockPlayStationStreamEvent \
    --namespace $AB_NAMESPACE \
    --body '{"body": {"account": "HFAVzIg4OSbto0TE", "additionalData": {"entitlement": [{"clientTransaction": [{"amountConsumed": 30, "clientTransactionId": "njywnwdBEgZXtYGD"}, {"amountConsumed": 5, "clientTransactionId": "k8qLvrCZliEQgiJZ"}, {"amountConsumed": 72, "clientTransactionId": "EKCVmZWKWZA8dtbp"}], "entitlementId": "ZncGBTP1ECkubrrr", "usageCount": 42}, {"clientTransaction": [{"amountConsumed": 89, "clientTransactionId": "vrKgdk83sERK3L7y"}, {"amountConsumed": 72, "clientTransactionId": "jA3GCqQeM8QJ9Pdz"}, {"amountConsumed": 19, "clientTransactionId": "G0EpoGnjRy3ONYwC"}], "entitlementId": "qbx62DtEbMTFlZ20", "usageCount": 15}, {"clientTransaction": [{"amountConsumed": 55, "clientTransactionId": "ZnZneuld3ZkAxRTV"}, {"amountConsumed": 40, "clientTransactionId": "fvzctsPr5eCQwCGF"}, {"amountConsumed": 33, "clientTransactionId": "wM8oKBT3l6PRauxx"}], "entitlementId": "ZjCuRuHxImGYx2Sz", "usageCount": 98}], "purpose": "hEymkZ82BL1mTBES"}, "originalTitleName": "FHR4Wcqz3M84jqPC", "paymentProductSKU": "5bKvIXHNizq1hO8u", "purchaseDate": "AvSftjI3EqofyCmh", "sourceOrderItemId": "nxWBMND94Th5WCrC", "titleName": "mMbPwauxs4I2P54l"}, "eventDomain": "7wGGy7rBe69TAeT8", "eventSource": "dbSjVcZwK4fF2eqg", "eventType": "uSx7RMFDTvIDdvAP", "eventVersion": 60, "id": "e7ZZXYz7F6pdxN8X", "timestamp": "LfRjQBftMSUurp9Q"}' \
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
    --body '{"bundleId": "73G2M7TDWh9UMmiN", "password": "d10VsE72D8HjogDy"}' \
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
    --body '{"sandboxId": "fooc6h8AJ7rTbIxX"}' \
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
    --body '{"applicationName": "1E2JS2sKazyZfVOf", "serviceAccountId": "c7A9OhwDbJ1G3S1j"}' \
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
    --body '{"data": [{"itemIdentity": "oFHMzcTJx9PYGTOh", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"0cmjayDiwciUOpbZ": "pFnHONUDR7wH8nzL", "SsL03bKv7AQpHlAo": "CePGTGfNrjB4nnMC", "DnDhIkl7oWOGIc2W": "hKohovORElpSfwDr"}}, {"itemIdentity": "qBfwVny7Rvd99lnw", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"oPRr5Rs0jYPrP67y": "XGy4Szu7M6nOrxZ9", "fILhzQ04N6yHknBL": "pQLZdahMKDAYyHjq", "HXZPgIjLDfIG63NS": "UH4HMyoklHaN87bM"}}, {"itemIdentity": "pxq07n2Sn37OeEgH", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"uPYit4WZWprt3jSY": "GSPSxTQIqlAVxHiX", "AtSLjxWW6TALoIH1": "70Uthu9p6ATKe4K1", "EcDsEkfwuVzI3bux": "UTZKpam6QHVyo8Vm"}}]}' \
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
    --body '{"appId": "g9Sqg35OzyUyOfcQ", "appSecret": "ecQHM8lILaSZ7tMA"}' \
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
    --body '{"backOfficeServerClientId": "IT5WhmJYWh8JmF6L", "backOfficeServerClientSecret": "a8oicDXvrAIwbl7S", "enableStreamJob": false, "environment": "j1tyo4WU4YvEc3no", "streamName": "nldlp76Y68sgCbct", "streamPartnerName": "xlvWyRNa0evidyzB"}' \
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
    --body '{"backOfficeServerClientId": "zeYZH9ykGqOBNT3U", "backOfficeServerClientSecret": "5ueRRgb2Vt8YZhkG", "enableStreamJob": false, "environment": "Y1Vbz56wqIaYtWhv", "streamName": "9hgUSI4PwI9LblYS", "streamPartnerName": "C8wnNeMl20hIxHMT"}' \
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
    --body '{"appId": "MQC4tceeDqtlVYPB", "publisherAuthenticationKey": "hHVuA765hLEZ6rgT"}' \
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
    --body '{"clientId": "LzGhWG7U7UzfbAtE", "clientSecret": "MhPnOA5a2P2PZKCk", "organizationId": "hgUFYekTag10CCCe"}' \
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
    --body '{"relyingPartyCert": "gqxFBEXYec9c4yb8"}' \
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
    --password '4HZZzs4oAdW3aEEF' \
    > test.out 2>&1
eval_tap $? 97 'UpdateXblBPCertFile' test.out

#- 98 DownloadInvoiceDetails
samples/cli/sample-apps Platform downloadInvoiceDetails \
    --namespace $AB_NAMESPACE \
    --feature 'aGj2wLC3Alyka2NI' \
    --itemId 'JeTT1ndqcRepu6R5' \
    --itemType 'LOOTBOX' \
    --endTime 'QtpPdi953v6yfCzA' \
    --startTime 'ofjylg35MZeL2DCo' \
    > test.out 2>&1
eval_tap $? 98 'DownloadInvoiceDetails' test.out

#- 99 GenerateInvoiceSummary
samples/cli/sample-apps Platform generateInvoiceSummary \
    --namespace $AB_NAMESPACE \
    --feature '3QNNCzDIzncQjYj0' \
    --itemId 'QljkmGFO9RXGzSUP' \
    --itemType 'SUBSCRIPTION' \
    --endTime 'muoDyQxqzdOias2m' \
    --startTime 'OkoEmd5YNwxTLMX4' \
    > test.out 2>&1
eval_tap $? 99 'GenerateInvoiceSummary' test.out

#- 100 SyncInGameItem
samples/cli/sample-apps Platform syncInGameItem \
    --namespace $AB_NAMESPACE \
    --storeId '6SKMOMPL0SQnKuQg' \
    --body '{"categoryPath": "hkMmU0oRMRKXA24t", "targetItemId": "NAp80rDpBOwETAw2", "targetNamespace": "RePCLxhCBKdvaz6e"}' \
    > test.out 2>&1
eval_tap $? 100 'SyncInGameItem' test.out

#- 101 CreateItem
samples/cli/sample-apps Platform createItem \
    --namespace $AB_NAMESPACE \
    --storeId 'NHgwQf0PGN1fmLhF' \
    --body '{"appId": "1CjcLYAEMM5BKDCu", "appType": "DEMO", "baseAppId": "udHkdmHxgACcJfLo", "boothName": "DBpqOASnIfTswlTK", "categoryPath": "gb3JqfO0wiMic8F4", "clazz": "2zZfZRXpzldZD338", "displayOrder": 50, "entitlementType": "CONSUMABLE", "ext": {"E9mNSfyIshuIaoKJ": {}, "ZvwYY9Oadu23u4Hi": {}, "SNUhb57nGVcHsJ0W": {}}, "features": ["CE3HRmUe2cf8zIAx", "0D63AdRAnLBBBFN8", "Us1xTpdFgFlK8r2U"], "flexible": false, "images": [{"as": "ASUIBbPNSEbvjYJF", "caption": "b8KFq7Mch0IpHc1R", "height": 68, "imageUrl": "eI8Gjb6eV1ItEFEb", "smallImageUrl": "twOhXL687IUJZreW", "width": 17}, {"as": "zlO29GLVoohHKqPR", "caption": "PxzqDt2vVO6STqHP", "height": 70, "imageUrl": "aqliTOoQGJPNulLS", "smallImageUrl": "Yo0Wawlq2VcwniVo", "width": 42}, {"as": "7PkDMMevDJa2ScqO", "caption": "2ZdnoYkNiSmF4u7e", "height": 32, "imageUrl": "SjbAi9lK5GalXPFG", "smallImageUrl": "xZiyh35ou7n7pKKU", "width": 92}], "itemIds": ["5p6yw0am0Ewqq4Yx", "DR3hfvj0clm4txFa", "Bhz6wlbWSdP5KBti"], "itemQty": {"KlyE3oRg0p7IbIMN": 0, "HQU4Bw1ZzaM1lv2G": 80, "ZezuRLXUAC3oPKwD": 51}, "itemType": "MEDIA", "listable": true, "localizations": {"Snar2dBnqtgTQ2X2": {"description": "GuFutaZ0JeGkpQ0s", "localExt": {"36AQ6SMidJcvlFEK": {}, "pZ2FU0MY51XbShqL": {}, "9IESCSkoa9CFvRYY": {}}, "longDescription": "AJwL1CElXAR2ZuAS", "title": "g6JV3hdtPcPGMeDG"}, "myxXEpP5YhUTbA7F": {"description": "hzXEUuDaf0JkM8PU", "localExt": {"bH09xMlallqWrvrU": {}, "mXRq7SPJXpYq0Th8": {}, "wBAkc4GrumsGnw6t": {}}, "longDescription": "smwDawAQeHzTsKV4", "title": "0fIG2hgVIsAP8iAe"}, "4NAfiqKXXNXyrgEK": {"description": "HKahDjK429nPM8ZS", "localExt": {"M7YX6rSyAIVYGjBf": {}, "TbjRvDjxZPoe6g5x": {}, "81PhwsCky7g8uJ54": {}}, "longDescription": "1qD32h63E9sLsxHR", "title": "Qpid1IWinWq15Xxn"}}, "lootBoxConfig": {"rewardCount": 60, "rewards": [{"lootBoxItems": [{"count": 49, "duration": 47, "endDate": "1983-11-19T00:00:00Z", "itemId": "D4CdXc5jKkq0zOx3", "itemSku": "TIPGKoy0eE6kYKLp", "itemType": "q0Kc23uuTRtFNDWI"}, {"count": 72, "duration": 23, "endDate": "1984-04-22T00:00:00Z", "itemId": "NJuoTwZdmStiuky9", "itemSku": "VPrCj2UrGijIWADw", "itemType": "m2yv0xGWM7rLxtNq"}, {"count": 86, "duration": 40, "endDate": "1980-01-15T00:00:00Z", "itemId": "48APCTK5SfzQml1M", "itemSku": "XLbyJYmmLF3iQB6z", "itemType": "MmP5W1KfNpPi2Fra"}], "name": "FZajjvgrrsyjDD52", "odds": 0.6663301328931036, "type": "REWARD", "weight": 89}, {"lootBoxItems": [{"count": 30, "duration": 41, "endDate": "1977-11-12T00:00:00Z", "itemId": "XspRDB3BZQ5bMlCJ", "itemSku": "ywuQi8wfmbC6AOUN", "itemType": "CzduigQSXoSPgvjk"}, {"count": 63, "duration": 0, "endDate": "1988-06-17T00:00:00Z", "itemId": "NYOwB09wzCheGbJf", "itemSku": "4Och8kMq4FHm3Q6b", "itemType": "yMfdkGJDDuNaqPuN"}, {"count": 23, "duration": 40, "endDate": "1988-03-04T00:00:00Z", "itemId": "uu4DiEPvW9A1op6G", "itemSku": "6v4yEtO7mlkplaGW", "itemType": "3NM3UDPVH3ve59aA"}], "name": "c9wV3vPac9jqjvJp", "odds": 0.28116045345955054, "type": "REWARD_GROUP", "weight": 26}, {"lootBoxItems": [{"count": 65, "duration": 15, "endDate": "1997-10-06T00:00:00Z", "itemId": "bHrtc4pBjju421bL", "itemSku": "3HGDzj3MJXAHSAaV", "itemType": "JKUq47uPYDfF2SSn"}, {"count": 91, "duration": 51, "endDate": "1993-12-25T00:00:00Z", "itemId": "eFfusSWGaDvmGEsf", "itemSku": "5iZs9KJMgr1wX1Ku", "itemType": "TUHBVipsYdY7ylyq"}, {"count": 24, "duration": 0, "endDate": "1996-08-02T00:00:00Z", "itemId": "2Dm6TYdem0QCE0fs", "itemSku": "5jxQJhASkBsrQeY2", "itemType": "CAfluOOHUSfz4fpk"}], "name": "pWVYdL6IGhaSvnSr", "odds": 0.6708020426914573, "type": "REWARD_GROUP", "weight": 17}], "rollFunction": "CUSTOM"}, "maxCount": 49, "maxCountPerUser": 34, "name": "Xfu2v9U5L58Szoee", "optionBoxConfig": {"boxItems": [{"count": 47, "duration": 2, "endDate": "1972-08-20T00:00:00Z", "itemId": "t1ibbvYkJaRzEaFE", "itemSku": "LPBfifCyeelLmqxc", "itemType": "cUIO5vGPQpTSQNhD"}, {"count": 84, "duration": 28, "endDate": "1976-07-23T00:00:00Z", "itemId": "0Dhkwue4FKl9jXuW", "itemSku": "ZYC5nvDO8VIzmK8Q", "itemType": "oALHry3Cg85KNXH0"}, {"count": 99, "duration": 71, "endDate": "1998-10-29T00:00:00Z", "itemId": "VeIVSMutV4wyG7fo", "itemSku": "MMMnTmpMz0rKccu2", "itemType": "sYOx1WmeoBNmLzMz"}]}, "purchasable": true, "recurring": {"cycle": "WEEKLY", "fixedFreeDays": 18, "fixedTrialCycles": 15, "graceDays": 89}, "regionData": {"TAqD0VU5aRM6sP0Y": [{"currencyCode": "uuvyYhlxFMzHY2U7", "currencyNamespace": "nrDcuIKpn0I6y0dE", "currencyType": "VIRTUAL", "discountAmount": 11, "discountExpireAt": "1977-01-21T00:00:00Z", "discountPercentage": 33, "discountPurchaseAt": "1975-04-27T00:00:00Z", "expireAt": "1998-07-01T00:00:00Z", "price": 86, "purchaseAt": "1979-02-27T00:00:00Z", "trialPrice": 19}, {"currencyCode": "L3SElft9tsN2qpGG", "currencyNamespace": "X2IiwGupEWsR4dSP", "currencyType": "REAL", "discountAmount": 29, "discountExpireAt": "1981-04-13T00:00:00Z", "discountPercentage": 68, "discountPurchaseAt": "1993-05-16T00:00:00Z", "expireAt": "1989-12-11T00:00:00Z", "price": 65, "purchaseAt": "1996-07-02T00:00:00Z", "trialPrice": 73}, {"currencyCode": "UnMHq7pG3IinSH24", "currencyNamespace": "jKdp12QdqD0CLhTu", "currencyType": "REAL", "discountAmount": 53, "discountExpireAt": "1989-06-06T00:00:00Z", "discountPercentage": 26, "discountPurchaseAt": "1982-01-30T00:00:00Z", "expireAt": "1979-12-19T00:00:00Z", "price": 88, "purchaseAt": "1979-11-19T00:00:00Z", "trialPrice": 69}], "ebxwAcofHHewoDvD": [{"currencyCode": "SWU73Xl0Fni2YnKo", "currencyNamespace": "wx9oAjnKE3AsZrut", "currencyType": "REAL", "discountAmount": 58, "discountExpireAt": "1981-10-21T00:00:00Z", "discountPercentage": 83, "discountPurchaseAt": "1992-01-06T00:00:00Z", "expireAt": "1989-02-17T00:00:00Z", "price": 68, "purchaseAt": "1976-04-18T00:00:00Z", "trialPrice": 11}, {"currencyCode": "wFIuH5px1XHxikSF", "currencyNamespace": "0b5UBqRIlA8zIZCB", "currencyType": "VIRTUAL", "discountAmount": 27, "discountExpireAt": "1986-04-21T00:00:00Z", "discountPercentage": 75, "discountPurchaseAt": "1997-05-03T00:00:00Z", "expireAt": "1980-03-18T00:00:00Z", "price": 6, "purchaseAt": "1986-07-05T00:00:00Z", "trialPrice": 12}, {"currencyCode": "xfgsnTy1W5qRHLO8", "currencyNamespace": "DFXBrfU64LVryBYm", "currencyType": "VIRTUAL", "discountAmount": 65, "discountExpireAt": "1987-05-04T00:00:00Z", "discountPercentage": 46, "discountPurchaseAt": "1992-05-11T00:00:00Z", "expireAt": "1974-03-13T00:00:00Z", "price": 41, "purchaseAt": "1995-05-17T00:00:00Z", "trialPrice": 82}], "zC9W4o3hNOvl0ay1": [{"currencyCode": "9T5LRFegr1EbMA2R", "currencyNamespace": "Axn5EZu6ejyU7UuS", "currencyType": "VIRTUAL", "discountAmount": 27, "discountExpireAt": "1993-03-02T00:00:00Z", "discountPercentage": 12, "discountPurchaseAt": "1977-07-20T00:00:00Z", "expireAt": "1993-04-19T00:00:00Z", "price": 26, "purchaseAt": "1982-04-13T00:00:00Z", "trialPrice": 68}, {"currencyCode": "4qm7HK5xu5wT0Eyf", "currencyNamespace": "17j3jBrAVVtqpDv5", "currencyType": "REAL", "discountAmount": 78, "discountExpireAt": "1986-12-15T00:00:00Z", "discountPercentage": 54, "discountPurchaseAt": "1982-12-14T00:00:00Z", "expireAt": "1976-07-26T00:00:00Z", "price": 23, "purchaseAt": "1982-09-21T00:00:00Z", "trialPrice": 93}, {"currencyCode": "ksObSeZtw2ct4gnn", "currencyNamespace": "jP04x2pDwdF8eKzR", "currencyType": "REAL", "discountAmount": 52, "discountExpireAt": "1971-08-10T00:00:00Z", "discountPercentage": 100, "discountPurchaseAt": "1979-03-09T00:00:00Z", "expireAt": "1975-01-07T00:00:00Z", "price": 75, "purchaseAt": "1976-01-25T00:00:00Z", "trialPrice": 54}]}, "saleConfig": {"currencyCode": "COl7AU1Y6Y2n74wI", "price": 22}, "seasonType": "TIER", "sectionExclusive": true, "sellable": true, "sku": "qSiEpVC6YAdPfiXx", "stackable": false, "status": "ACTIVE", "tags": ["nd0VvEkOQvH8s8YI", "1ZNQZidEjbs6gLQo", "7jtwdtuNgVQEZD2I"], "targetCurrencyCode": "PWFWG1uFk8kkQWYP", "targetNamespace": "Z325Z3DpOWcVZ0oM", "thumbnailUrl": "6nqnWMNU0L2AgkmO", "useCount": 75}' \
    > test.out 2>&1
eval_tap $? 101 'CreateItem' test.out

#- 102 GetItemByAppId
samples/cli/sample-apps Platform getItemByAppId \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'fR4GINcx2bxQua6o' \
    --appId 'JpBuktcGINiG9b18' \
    > test.out 2>&1
eval_tap $? 102 'GetItemByAppId' test.out

#- 103 QueryItems
samples/cli/sample-apps Platform queryItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --appType 'GAME' \
    --availableDate 'bQK1N2HUY4KOsCoX' \
    --baseAppId '93YdJAIt1XP34Xvn' \
    --categoryPath 'MhlLf4O6AAJkLcLo' \
    --features 'xkHz1pIzoHC6bq8y' \
    --includeSubCategoryItem 'true' \
    --itemType 'BUNDLE' \
    --limit '10' \
    --offset '17' \
    --region 'z2bwrd86ZtHjCfWY' \
    --sortBy '["name", "updatedAt:asc", "createdAt"]' \
    --storeId 'spupDAaSHqJc05BT' \
    --tags 'MOtmqHakrXp7R8lS' \
    --targetNamespace 'wYSfHhqHsPwTx7rQ' \
    > test.out 2>&1
eval_tap $? 103 'QueryItems' test.out

#- 104 ListBasicItemsByFeatures
samples/cli/sample-apps Platform listBasicItemsByFeatures \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --features '["Ktk6BzvAA6Xh3p6o", "vlpTNP78XG5kVjYf", "wwLxDfBGoheBrRnL"]' \
    > test.out 2>&1
eval_tap $? 104 'ListBasicItemsByFeatures' test.out

#- 105 GetItems
samples/cli/sample-apps Platform getItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'euBmSlnVAiI5KlvD' \
    --itemIds 'zNtzefaI8ROpEDr5' \
    > test.out 2>&1
eval_tap $? 105 'GetItems' test.out

#- 106 GetItemBySku
samples/cli/sample-apps Platform getItemBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --storeId 'vKaYqCpALxRGzEre' \
    --sku 'r3ptdnk4QhyfaJFd' \
    > test.out 2>&1
eval_tap $? 106 'GetItemBySku' test.out

#- 107 GetLocaleItemBySku
samples/cli/sample-apps Platform getLocaleItemBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --language 'ol56L2NdoWpV6G9B' \
    --populateBundle 'true' \
    --region '0fF1eX1MNtAxBK47' \
    --storeId 'IcdyCejF2PTjZBr3' \
    --sku 'nCSVlFH2h0NcvoVO' \
    > test.out 2>&1
eval_tap $? 107 'GetLocaleItemBySku' test.out

#- 108 GetEstimatedPrice
samples/cli/sample-apps Platform getEstimatedPrice \
    --namespace $AB_NAMESPACE \
    --region 'cxe00qfaUDMvg5vS' \
    --storeId 'QGFV7E2YZI0bBev3' \
    --itemIds 'OOhUbe2gi8I4t3K3' \
    --userId 'fN6PAiktaQYialGU' \
    > test.out 2>&1
eval_tap $? 108 'GetEstimatedPrice' test.out

#- 109 GetItemIdBySku
samples/cli/sample-apps Platform getItemIdBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --storeId 'yjAzKwfO3kRwZZaQ' \
    --sku 'E1NJgbGGojOimajR' \
    > test.out 2>&1
eval_tap $? 109 'GetItemIdBySku' test.out

#- 110 GetBulkItemIdBySkus
samples/cli/sample-apps Platform getBulkItemIdBySkus \
    --namespace $AB_NAMESPACE \
    --sku '["ET0Syi4L3XbaWPts", "kMgSQdAK4VBuS1kC", "fzn8zRQZJEUDeGrm"]' \
    --storeId 'BsPMC72aMe7bbd0M' \
    > test.out 2>&1
eval_tap $? 110 'GetBulkItemIdBySkus' test.out

#- 111 BulkGetLocaleItems
samples/cli/sample-apps Platform bulkGetLocaleItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --language 'PME6wDsyBd8NSbxL' \
    --region '92qIX0OhdYEN7ZPF' \
    --storeId 'RbHaX0Gyrtp0SgRH' \
    --itemIds '1CEClfrzt48CG52N' \
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
    --userId 'DE5e5fEOvc31SYVa' \
    --body '{"itemIds": ["yPvVugLqrx6PKUkF", "5cI3FdAx5suMyZ79", "AXrE84RIWtwrc2LP"]}' \
    > test.out 2>&1
eval_tap $? 113 'ValidateItemPurchaseCondition' test.out

#- 114 BulkUpdateRegionData
samples/cli/sample-apps Platform bulkUpdateRegionData \
    --namespace $AB_NAMESPACE \
    --storeId 'jiitEE9iow6OnMqp' \
    --body '{"changes": [{"itemIdentities": ["zYfvSvLj9iEhutih", "tQFMOIQ1YWJODQyE", "Va27e3p5yEVi4uc3"], "itemIdentityType": "ITEM_ID", "regionData": {"mmTcdI499CJYInRs": [{"currencyCode": "Xt2xnvnlbcmT4UbA", "currencyNamespace": "xP0gcim9uewG1qtm", "currencyType": "REAL", "discountAmount": 67, "discountExpireAt": "1981-07-19T00:00:00Z", "discountPercentage": 90, "discountPurchaseAt": "1995-08-21T00:00:00Z", "discountedPrice": 16, "expireAt": "1991-06-06T00:00:00Z", "price": 81, "purchaseAt": "1978-10-06T00:00:00Z", "trialPrice": 10}, {"currencyCode": "RIu8xuth5qN4JEgC", "currencyNamespace": "PSv0G3KDhEKR53wJ", "currencyType": "REAL", "discountAmount": 69, "discountExpireAt": "1998-01-10T00:00:00Z", "discountPercentage": 65, "discountPurchaseAt": "1987-05-15T00:00:00Z", "discountedPrice": 74, "expireAt": "1983-10-27T00:00:00Z", "price": 35, "purchaseAt": "1984-06-05T00:00:00Z", "trialPrice": 63}, {"currencyCode": "Bsz49To825TGo3c9", "currencyNamespace": "jWZgg8w4z9Y9VeH7", "currencyType": "REAL", "discountAmount": 48, "discountExpireAt": "1989-12-01T00:00:00Z", "discountPercentage": 14, "discountPurchaseAt": "1975-04-24T00:00:00Z", "discountedPrice": 43, "expireAt": "1977-07-29T00:00:00Z", "price": 76, "purchaseAt": "1975-04-19T00:00:00Z", "trialPrice": 31}], "rlR5V2IkUHh0VYsf": [{"currencyCode": "dXC1qETR0JLRE0Uq", "currencyNamespace": "tzUfB3OACIozQce8", "currencyType": "REAL", "discountAmount": 88, "discountExpireAt": "1971-07-15T00:00:00Z", "discountPercentage": 40, "discountPurchaseAt": "1983-05-07T00:00:00Z", "discountedPrice": 39, "expireAt": "1989-06-23T00:00:00Z", "price": 10, "purchaseAt": "1994-12-27T00:00:00Z", "trialPrice": 100}, {"currencyCode": "9r4O9ZZe9OS9w8cj", "currencyNamespace": "DqBd9vAxEAm3Gw2Z", "currencyType": "REAL", "discountAmount": 44, "discountExpireAt": "1983-03-23T00:00:00Z", "discountPercentage": 20, "discountPurchaseAt": "1994-09-15T00:00:00Z", "discountedPrice": 56, "expireAt": "1994-10-22T00:00:00Z", "price": 43, "purchaseAt": "1984-01-08T00:00:00Z", "trialPrice": 23}, {"currencyCode": "02diJJ5AsF0zSuzf", "currencyNamespace": "KbnLWpqqjxmCiA6E", "currencyType": "REAL", "discountAmount": 47, "discountExpireAt": "1999-02-03T00:00:00Z", "discountPercentage": 54, "discountPurchaseAt": "1972-04-04T00:00:00Z", "discountedPrice": 18, "expireAt": "1972-04-30T00:00:00Z", "price": 53, "purchaseAt": "1990-01-18T00:00:00Z", "trialPrice": 7}], "4lQhK69IDVuxdd5m": [{"currencyCode": "tPQAcaInMCfz1EfK", "currencyNamespace": "xMItWcSxPA7PXMrS", "currencyType": "REAL", "discountAmount": 70, "discountExpireAt": "1990-08-18T00:00:00Z", "discountPercentage": 3, "discountPurchaseAt": "1985-08-09T00:00:00Z", "discountedPrice": 34, "expireAt": "1980-09-08T00:00:00Z", "price": 50, "purchaseAt": "1996-05-18T00:00:00Z", "trialPrice": 68}, {"currencyCode": "6XJuSQobFdh6pzAc", "currencyNamespace": "n2SOY6UKfhMcyurd", "currencyType": "VIRTUAL", "discountAmount": 88, "discountExpireAt": "1973-10-08T00:00:00Z", "discountPercentage": 30, "discountPurchaseAt": "1984-06-15T00:00:00Z", "discountedPrice": 59, "expireAt": "1996-03-25T00:00:00Z", "price": 46, "purchaseAt": "1997-05-02T00:00:00Z", "trialPrice": 10}, {"currencyCode": "T9uvn7oNTGd9h5Rl", "currencyNamespace": "XhI9WzlLExgBtLo0", "currencyType": "VIRTUAL", "discountAmount": 90, "discountExpireAt": "1971-06-06T00:00:00Z", "discountPercentage": 3, "discountPurchaseAt": "1981-11-10T00:00:00Z", "discountedPrice": 67, "expireAt": "1976-09-29T00:00:00Z", "price": 4, "purchaseAt": "1992-08-16T00:00:00Z", "trialPrice": 20}]}}, {"itemIdentities": ["Crk2GilU9HMiYHvZ", "Ed2iiH4ZuwIE0CEm", "cElRPMlJsxPTkUJV"], "itemIdentityType": "ITEM_SKU", "regionData": {"1P0UitlqdFpRIMBn": [{"currencyCode": "fnwrQgNbtfY1k8pg", "currencyNamespace": "256y4KgsVnjRFQpd", "currencyType": "VIRTUAL", "discountAmount": 54, "discountExpireAt": "1997-04-17T00:00:00Z", "discountPercentage": 44, "discountPurchaseAt": "1977-08-30T00:00:00Z", "discountedPrice": 1, "expireAt": "1971-09-11T00:00:00Z", "price": 81, "purchaseAt": "1996-06-15T00:00:00Z", "trialPrice": 60}, {"currencyCode": "ZmEbz2U5WyV1Gs19", "currencyNamespace": "hpNpNt65339Wg4xI", "currencyType": "VIRTUAL", "discountAmount": 65, "discountExpireAt": "1973-07-14T00:00:00Z", "discountPercentage": 68, "discountPurchaseAt": "1978-10-31T00:00:00Z", "discountedPrice": 17, "expireAt": "1975-08-21T00:00:00Z", "price": 79, "purchaseAt": "1991-06-10T00:00:00Z", "trialPrice": 19}, {"currencyCode": "HGkJVHfm5RL3RjD0", "currencyNamespace": "C3ppQfrPIddivbSU", "currencyType": "REAL", "discountAmount": 65, "discountExpireAt": "1972-03-01T00:00:00Z", "discountPercentage": 97, "discountPurchaseAt": "1993-03-03T00:00:00Z", "discountedPrice": 17, "expireAt": "1983-01-02T00:00:00Z", "price": 92, "purchaseAt": "1973-09-14T00:00:00Z", "trialPrice": 42}], "4UqbrVrJrzAxxze5": [{"currencyCode": "lbeuuXYu1sA4BUT2", "currencyNamespace": "pQ97NJVR2tIK4bop", "currencyType": "REAL", "discountAmount": 66, "discountExpireAt": "1974-05-30T00:00:00Z", "discountPercentage": 96, "discountPurchaseAt": "1975-03-30T00:00:00Z", "discountedPrice": 57, "expireAt": "1992-12-26T00:00:00Z", "price": 35, "purchaseAt": "1975-04-09T00:00:00Z", "trialPrice": 27}, {"currencyCode": "FAJ6KemTsr8sCqWY", "currencyNamespace": "ba69pmDiCscCRiHL", "currencyType": "VIRTUAL", "discountAmount": 4, "discountExpireAt": "1984-06-06T00:00:00Z", "discountPercentage": 66, "discountPurchaseAt": "1986-07-07T00:00:00Z", "discountedPrice": 10, "expireAt": "1974-03-29T00:00:00Z", "price": 97, "purchaseAt": "1984-07-19T00:00:00Z", "trialPrice": 97}, {"currencyCode": "cXva380DFX5rAwmD", "currencyNamespace": "Gpb4Z4ejjepbUYA0", "currencyType": "VIRTUAL", "discountAmount": 31, "discountExpireAt": "1990-05-25T00:00:00Z", "discountPercentage": 62, "discountPurchaseAt": "1974-09-09T00:00:00Z", "discountedPrice": 46, "expireAt": "1974-02-05T00:00:00Z", "price": 43, "purchaseAt": "1995-03-29T00:00:00Z", "trialPrice": 5}], "NQRSolLSnX5jCCa5": [{"currencyCode": "f0nkj0cwvp172nPF", "currencyNamespace": "8midfzOyKRsGOrP3", "currencyType": "REAL", "discountAmount": 41, "discountExpireAt": "1978-03-26T00:00:00Z", "discountPercentage": 58, "discountPurchaseAt": "1997-03-11T00:00:00Z", "discountedPrice": 1, "expireAt": "1973-05-25T00:00:00Z", "price": 0, "purchaseAt": "1983-01-04T00:00:00Z", "trialPrice": 10}, {"currencyCode": "m0Hlns0tuFgPySpR", "currencyNamespace": "Xc2H7LHf0GLb0bOw", "currencyType": "VIRTUAL", "discountAmount": 55, "discountExpireAt": "1975-09-19T00:00:00Z", "discountPercentage": 39, "discountPurchaseAt": "1989-09-13T00:00:00Z", "discountedPrice": 98, "expireAt": "1983-09-19T00:00:00Z", "price": 55, "purchaseAt": "1998-10-15T00:00:00Z", "trialPrice": 84}, {"currencyCode": "ULdW2YS2wYv7whSa", "currencyNamespace": "ss4GLKOZvPMrpd9d", "currencyType": "REAL", "discountAmount": 6, "discountExpireAt": "1991-10-27T00:00:00Z", "discountPercentage": 41, "discountPurchaseAt": "1975-07-03T00:00:00Z", "discountedPrice": 47, "expireAt": "1989-04-16T00:00:00Z", "price": 37, "purchaseAt": "1971-12-25T00:00:00Z", "trialPrice": 72}]}}, {"itemIdentities": ["qO2EW6AFytFaCOuD", "gKsNKVWyCAT41qNc", "JUeXjSQnir84XC1R"], "itemIdentityType": "ITEM_SKU", "regionData": {"rmML09DwxkwSEbtl": [{"currencyCode": "etwvRKB48oKQQVd4", "currencyNamespace": "mf3Mq8jdk3h9cATM", "currencyType": "REAL", "discountAmount": 54, "discountExpireAt": "1993-03-28T00:00:00Z", "discountPercentage": 63, "discountPurchaseAt": "1979-10-07T00:00:00Z", "discountedPrice": 60, "expireAt": "1997-06-11T00:00:00Z", "price": 69, "purchaseAt": "1980-12-24T00:00:00Z", "trialPrice": 23}, {"currencyCode": "iwal6rEXLKEoADha", "currencyNamespace": "Cbwghror3CJQST7e", "currencyType": "VIRTUAL", "discountAmount": 88, "discountExpireAt": "1991-11-26T00:00:00Z", "discountPercentage": 59, "discountPurchaseAt": "1996-05-03T00:00:00Z", "discountedPrice": 70, "expireAt": "1971-12-22T00:00:00Z", "price": 69, "purchaseAt": "1998-10-28T00:00:00Z", "trialPrice": 85}, {"currencyCode": "SxI5Fh3LGUop0LI5", "currencyNamespace": "gRwBmU8Y5LvBOIFu", "currencyType": "REAL", "discountAmount": 7, "discountExpireAt": "1984-10-25T00:00:00Z", "discountPercentage": 99, "discountPurchaseAt": "1995-06-24T00:00:00Z", "discountedPrice": 31, "expireAt": "1980-11-05T00:00:00Z", "price": 20, "purchaseAt": "1983-03-22T00:00:00Z", "trialPrice": 19}], "lFrHkuo37LAwgHOJ": [{"currencyCode": "p7l1tJCnrajJD9pn", "currencyNamespace": "2Gv83bgGVR66syIU", "currencyType": "VIRTUAL", "discountAmount": 93, "discountExpireAt": "1987-02-12T00:00:00Z", "discountPercentage": 70, "discountPurchaseAt": "1987-09-28T00:00:00Z", "discountedPrice": 56, "expireAt": "1977-07-29T00:00:00Z", "price": 17, "purchaseAt": "1971-11-08T00:00:00Z", "trialPrice": 0}, {"currencyCode": "voeah0ZXlPa927VN", "currencyNamespace": "wJmIKYbynXqmdldk", "currencyType": "REAL", "discountAmount": 19, "discountExpireAt": "1983-06-21T00:00:00Z", "discountPercentage": 67, "discountPurchaseAt": "1975-10-10T00:00:00Z", "discountedPrice": 82, "expireAt": "1992-01-26T00:00:00Z", "price": 5, "purchaseAt": "1978-10-01T00:00:00Z", "trialPrice": 53}, {"currencyCode": "5n4aaoSpxMtoj1Mr", "currencyNamespace": "b7CB8cdimNaWGJCc", "currencyType": "REAL", "discountAmount": 51, "discountExpireAt": "1991-07-24T00:00:00Z", "discountPercentage": 92, "discountPurchaseAt": "1987-06-12T00:00:00Z", "discountedPrice": 3, "expireAt": "1979-11-29T00:00:00Z", "price": 66, "purchaseAt": "1993-07-30T00:00:00Z", "trialPrice": 28}], "fthDhYzFDKbvcbUF": [{"currencyCode": "TzCPf1CuP0lGiuRp", "currencyNamespace": "mguDyhJgdDKEJUjy", "currencyType": "REAL", "discountAmount": 76, "discountExpireAt": "1996-02-23T00:00:00Z", "discountPercentage": 98, "discountPurchaseAt": "1990-10-06T00:00:00Z", "discountedPrice": 64, "expireAt": "1978-03-05T00:00:00Z", "price": 48, "purchaseAt": "1974-05-04T00:00:00Z", "trialPrice": 25}, {"currencyCode": "xtbmjZUV0SVsV1DR", "currencyNamespace": "uX7jhOPxE7luF63F", "currencyType": "VIRTUAL", "discountAmount": 64, "discountExpireAt": "1985-08-04T00:00:00Z", "discountPercentage": 43, "discountPurchaseAt": "1987-08-06T00:00:00Z", "discountedPrice": 50, "expireAt": "1977-05-13T00:00:00Z", "price": 45, "purchaseAt": "1973-09-18T00:00:00Z", "trialPrice": 2}, {"currencyCode": "SXrrSY7LeoMJG3KO", "currencyNamespace": "gFeddXfCePXnPE69", "currencyType": "REAL", "discountAmount": 93, "discountExpireAt": "1999-09-29T00:00:00Z", "discountPercentage": 48, "discountPurchaseAt": "1997-02-17T00:00:00Z", "discountedPrice": 81, "expireAt": "1976-08-11T00:00:00Z", "price": 43, "purchaseAt": "1997-02-12T00:00:00Z", "trialPrice": 71}]}}]}' \
    > test.out 2>&1
eval_tap $? 114 'BulkUpdateRegionData' test.out

#- 115 SearchItems
samples/cli/sample-apps Platform searchItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --itemType 'BUNDLE' \
    --limit '34' \
    --offset '97' \
    --sortBy 'j80VVRWlW1kIUOst' \
    --storeId 'D3hWs3A9f7rO7fZN' \
    --keyword '1sMn7KxIeBwxjxvV' \
    --language 'jvc51c0JBR2u3DUY' \
    > test.out 2>&1
eval_tap $? 115 'SearchItems' test.out

#- 116 QueryUncategorizedItems
samples/cli/sample-apps Platform queryUncategorizedItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --limit '82' \
    --offset '88' \
    --sortBy '["displayOrder:desc", "createdAt:asc"]' \
    --storeId 'FAoFryF5vy79hdQ3' \
    > test.out 2>&1
eval_tap $? 116 'QueryUncategorizedItems' test.out

#- 117 GetItem
samples/cli/sample-apps Platform getItem \
    --itemId 'pPqjTPjce5NDEb1i' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'R5i94UmlKp1Afjty' \
    > test.out 2>&1
eval_tap $? 117 'GetItem' test.out

#- 118 UpdateItem
samples/cli/sample-apps Platform updateItem \
    --itemId 'YvBRdxztmsriOwWI' \
    --namespace $AB_NAMESPACE \
    --storeId 'i8HqGnhJ1AyW6tqV' \
    --body '{"appId": "tRh3GRYaRQycui75", "appType": "SOFTWARE", "baseAppId": "ZZo0vOaT8JUQZLKG", "boothName": "2oKfuTfv8oJREHjC", "categoryPath": "kHMHqXjfiwDCvGjS", "clazz": "5cNqLD3uASWkcndx", "displayOrder": 4, "entitlementType": "CONSUMABLE", "ext": {"yb9iZLPBnXxkSvb5": {}, "j5dKsdv0YHUccj7t": {}, "YmQojEJAkhTjDPTH": {}}, "features": ["iPCSus2xw8gyBAVA", "SaTENWf55cMy5BiJ", "mUJP0UyxmXlPGIxH"], "flexible": false, "images": [{"as": "O1SIkNPX5cNgUAQO", "caption": "EjzvgvVw7jWVnhAH", "height": 21, "imageUrl": "ehts91SysWwWGuk5", "smallImageUrl": "qs6N1brvJr7e37fV", "width": 7}, {"as": "1MJsUf1g9ufAz5yV", "caption": "UHqN66vUVmQKYVzF", "height": 39, "imageUrl": "9t41hEYdRJpcgQi5", "smallImageUrl": "dshSYWLb6z89JCqm", "width": 18}, {"as": "u13RvZ1uNaGCMCNa", "caption": "bKUPCE3WFkaGcwxE", "height": 45, "imageUrl": "42tWsgm403F4Kh4V", "smallImageUrl": "qJDu2E3pVqDjq3dt", "width": 30}], "itemIds": ["gyIhGyPk2wSLL8tu", "pdsXKqj5gYJGAgsA", "UKsojZkW6nmdFBYe"], "itemQty": {"ItAFzedEsXNBv4ME": 36, "IoHn3VkIvqLdUMhP": 22, "4M0Pb98OYgLZ68jS": 29}, "itemType": "MEDIA", "listable": true, "localizations": {"N75ahAomriYQjDsd": {"description": "LjGddWysfZKUrWr8", "localExt": {"V36sh8JtaSihuxUZ": {}, "bIVVim2HbQXQYdku": {}, "ENtYzJoGAOzwDUOj": {}}, "longDescription": "VYXIONtEWDEQsnB7", "title": "3gvbw1yoGk1kYhrZ"}, "lqqfLrvdS1lErKSO": {"description": "mj70cI3KwilJYman", "localExt": {"CgR8gnd096EGazSk": {}, "djwh8XaHCplnodyI": {}, "sABY26DS5Y0vQDX2": {}}, "longDescription": "VFRp8dU4YLN7pCOK", "title": "g6eQSCodOsWE6TUt"}, "pHOhtLNPa8VT8dHm": {"description": "jMMZBkyCbRPkHUXE", "localExt": {"kUPVsOX314KpDwKX": {}, "4xlC9XgNo9dgxPF2": {}, "CXYQEUesD35SXFRT": {}}, "longDescription": "yHzieyBNon2ZOFh9", "title": "M3rnGuBY0NkJ2vzi"}}, "lootBoxConfig": {"rewardCount": 74, "rewards": [{"lootBoxItems": [{"count": 78, "duration": 60, "endDate": "1986-03-06T00:00:00Z", "itemId": "6mEs4a7fKJkmE4uf", "itemSku": "e7hkCLFTu87SXTAo", "itemType": "OLVMj1O7jYMRpHhV"}, {"count": 6, "duration": 89, "endDate": "1976-06-14T00:00:00Z", "itemId": "hxLC5ztRY7MkZOa3", "itemSku": "nCIohRCGBVE3vcyL", "itemType": "A2uGqcSFyzIW4Ck7"}, {"count": 46, "duration": 19, "endDate": "1982-08-26T00:00:00Z", "itemId": "Xzt8qymRx2cpJF11", "itemSku": "GNKZhX41BsTTx52m", "itemType": "8Cwi5S5tEQNU5n1e"}], "name": "oXBMwJTi88O3C6Hb", "odds": 0.4521595949379009, "type": "REWARD", "weight": 69}, {"lootBoxItems": [{"count": 28, "duration": 60, "endDate": "1978-05-08T00:00:00Z", "itemId": "IJBRPEF8uvvYHken", "itemSku": "Jc73Ggq6hAour8EF", "itemType": "3SFKUEz8ICxOvoMn"}, {"count": 12, "duration": 6, "endDate": "1989-07-18T00:00:00Z", "itemId": "TMsnA1Re28KPO8v7", "itemSku": "L2sUTGbGR0va9eaP", "itemType": "3YlaCvkXzfL6He8U"}, {"count": 23, "duration": 85, "endDate": "1993-05-14T00:00:00Z", "itemId": "rtcR40hyh9rv2yui", "itemSku": "ahBEdwNzjvRgvV1V", "itemType": "CvpjB6rk12SjfQxE"}], "name": "sinfdGpXKEpthOOW", "odds": 0.43945216984778335, "type": "PROBABILITY_GROUP", "weight": 70}, {"lootBoxItems": [{"count": 83, "duration": 32, "endDate": "1978-01-17T00:00:00Z", "itemId": "WfAdoyVZkWRePDrW", "itemSku": "xMgvWEsDaNHtFcUL", "itemType": "gdEDF4EEeLih048o"}, {"count": 28, "duration": 13, "endDate": "1980-07-26T00:00:00Z", "itemId": "KGe9ZpUDLL8SUXCP", "itemSku": "SOnXEG6qMXp8Ev0V", "itemType": "MvJecm7sOrXwaqIG"}, {"count": 49, "duration": 6, "endDate": "1999-03-04T00:00:00Z", "itemId": "1bzUkDGSYAzbE9hc", "itemSku": "tku98Ncu0Oy9494L", "itemType": "97S4BjOvz33QHSo9"}], "name": "TLyaOX3uJJj9STMG", "odds": 0.5268809616565602, "type": "REWARD_GROUP", "weight": 100}], "rollFunction": "DEFAULT"}, "maxCount": 47, "maxCountPerUser": 63, "name": "rfMelnMXmgvHFsKA", "optionBoxConfig": {"boxItems": [{"count": 97, "duration": 45, "endDate": "1986-08-13T00:00:00Z", "itemId": "JbTrUShPcAYNcjYw", "itemSku": "hXoYgkzYJnrP07tP", "itemType": "aymu54fZgIzBnDEH"}, {"count": 0, "duration": 81, "endDate": "1994-08-22T00:00:00Z", "itemId": "wVdmtZxBH1nvWjoX", "itemSku": "HtcADzbm0O67eZSD", "itemType": "ikFq7A40rGMXWLxq"}, {"count": 73, "duration": 59, "endDate": "1971-10-21T00:00:00Z", "itemId": "sSgVAhfsfcAwctrI", "itemSku": "dsLKT8ka1vnwHNtf", "itemType": "nqq4jgcyoFzndb6z"}]}, "purchasable": true, "recurring": {"cycle": "YEARLY", "fixedFreeDays": 62, "fixedTrialCycles": 34, "graceDays": 39}, "regionData": {"dd5mYYNezOzpf83o": [{"currencyCode": "JMsQ19BHLBUZOeo8", "currencyNamespace": "uWGNHxvCGlQfpTcI", "currencyType": "VIRTUAL", "discountAmount": 4, "discountExpireAt": "1987-11-28T00:00:00Z", "discountPercentage": 74, "discountPurchaseAt": "1989-06-17T00:00:00Z", "expireAt": "1989-04-23T00:00:00Z", "price": 97, "purchaseAt": "1994-07-09T00:00:00Z", "trialPrice": 96}, {"currencyCode": "cqpVsklNoDRjrG70", "currencyNamespace": "iVbhqyi9UMNhuk2c", "currencyType": "VIRTUAL", "discountAmount": 60, "discountExpireAt": "1981-03-22T00:00:00Z", "discountPercentage": 5, "discountPurchaseAt": "1993-01-16T00:00:00Z", "expireAt": "1999-07-02T00:00:00Z", "price": 16, "purchaseAt": "1975-08-05T00:00:00Z", "trialPrice": 42}, {"currencyCode": "3lphMJ7lQwCD1PQL", "currencyNamespace": "cFFBE0XbiecUKHs8", "currencyType": "VIRTUAL", "discountAmount": 83, "discountExpireAt": "1997-07-18T00:00:00Z", "discountPercentage": 39, "discountPurchaseAt": "1997-05-09T00:00:00Z", "expireAt": "1999-08-06T00:00:00Z", "price": 2, "purchaseAt": "1972-10-27T00:00:00Z", "trialPrice": 11}], "5fVzceUloD7lkxzx": [{"currencyCode": "T0PayidSHxtY4k98", "currencyNamespace": "VlbnjqTbTNtRI7PP", "currencyType": "VIRTUAL", "discountAmount": 93, "discountExpireAt": "1999-12-14T00:00:00Z", "discountPercentage": 28, "discountPurchaseAt": "1988-10-06T00:00:00Z", "expireAt": "1999-11-22T00:00:00Z", "price": 93, "purchaseAt": "1979-12-02T00:00:00Z", "trialPrice": 18}, {"currencyCode": "ZvUxfTkaFb4X3VEW", "currencyNamespace": "nOnEp3WrBkQd8zmD", "currencyType": "VIRTUAL", "discountAmount": 23, "discountExpireAt": "1991-11-12T00:00:00Z", "discountPercentage": 70, "discountPurchaseAt": "1979-06-17T00:00:00Z", "expireAt": "1989-03-13T00:00:00Z", "price": 53, "purchaseAt": "1974-11-08T00:00:00Z", "trialPrice": 44}, {"currencyCode": "4k3fN4UpAgsfDlTf", "currencyNamespace": "4wwzvZdZXgiyjhny", "currencyType": "REAL", "discountAmount": 37, "discountExpireAt": "1985-08-30T00:00:00Z", "discountPercentage": 50, "discountPurchaseAt": "1991-09-23T00:00:00Z", "expireAt": "1994-08-26T00:00:00Z", "price": 70, "purchaseAt": "1978-05-02T00:00:00Z", "trialPrice": 74}], "bt6THjqE2LxCXr2A": [{"currencyCode": "3lwWuyqm6dPYn6U9", "currencyNamespace": "3ouXqxLjbbLr656C", "currencyType": "REAL", "discountAmount": 65, "discountExpireAt": "1986-12-27T00:00:00Z", "discountPercentage": 88, "discountPurchaseAt": "1984-09-11T00:00:00Z", "expireAt": "1978-12-03T00:00:00Z", "price": 93, "purchaseAt": "1990-06-16T00:00:00Z", "trialPrice": 48}, {"currencyCode": "kD5HuWuzoSKisdF8", "currencyNamespace": "6iF7qhiRUFctBh49", "currencyType": "REAL", "discountAmount": 2, "discountExpireAt": "1973-08-21T00:00:00Z", "discountPercentage": 72, "discountPurchaseAt": "1988-02-05T00:00:00Z", "expireAt": "1973-05-30T00:00:00Z", "price": 34, "purchaseAt": "1996-01-13T00:00:00Z", "trialPrice": 22}, {"currencyCode": "arGWzsA7dsEarUe8", "currencyNamespace": "coi05kOXnerFSCbV", "currencyType": "REAL", "discountAmount": 97, "discountExpireAt": "1986-07-26T00:00:00Z", "discountPercentage": 71, "discountPurchaseAt": "1993-05-07T00:00:00Z", "expireAt": "1994-07-12T00:00:00Z", "price": 57, "purchaseAt": "1972-02-25T00:00:00Z", "trialPrice": 46}]}, "saleConfig": {"currencyCode": "yUCGmSTPwaqTG9wi", "price": 65}, "seasonType": "TIER", "sectionExclusive": false, "sellable": false, "sku": "kBOFfOHmClKXGUfQ", "stackable": true, "status": "INACTIVE", "tags": ["l06VaC05ofai2cTo", "bcp8mtI9f1zG9dIM", "yLcrEQP0K5V79CNh"], "targetCurrencyCode": "SSzoLxQMJCyYnizN", "targetNamespace": "XsH2WXkwPDmZqYNO", "thumbnailUrl": "b0aipvxdklbWkISf", "useCount": 87}' \
    > test.out 2>&1
eval_tap $? 118 'UpdateItem' test.out

#- 119 DeleteItem
samples/cli/sample-apps Platform deleteItem \
    --itemId '3l6A5hqYRQkgfJR8' \
    --namespace $AB_NAMESPACE \
    --force 'true' \
    --storeId 'gBobrMQeJPcl8Qor' \
    > test.out 2>&1
eval_tap $? 119 'DeleteItem' test.out

#- 120 AcquireItem
samples/cli/sample-apps Platform acquireItem \
    --itemId 'hqWffGrrAeQ7URMJ' \
    --namespace $AB_NAMESPACE \
    --body '{"count": 45, "orderNo": "HYmHkJiJZlb27fYq"}' \
    > test.out 2>&1
eval_tap $? 120 'AcquireItem' test.out

#- 121 GetApp
samples/cli/sample-apps Platform getApp \
    --itemId 'xcEUzvE6H3eYOMhX' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'mHMbnsR1HPT2ZywM' \
    > test.out 2>&1
eval_tap $? 121 'GetApp' test.out

#- 122 UpdateApp
samples/cli/sample-apps Platform updateApp \
    --itemId 'mzPOdS4719nIqXSJ' \
    --namespace $AB_NAMESPACE \
    --storeId 'PodtFvSD12uKHCQv' \
    --body '{"carousel": [{"alt": "6mP8p9BZr56WgLfS", "previewUrl": "UwlFoqL9dAqjcom5", "thumbnailUrl": "aI9vjqo1gxs5DbWo", "type": "video", "url": "ylYuUhm4TbnzKIIC", "videoSource": "vimeo"}, {"alt": "qdSy4T1jDskrSX5R", "previewUrl": "LhpueXUsEA2OeJ9H", "thumbnailUrl": "vmz5XypxLhBlUiAM", "type": "video", "url": "i7cCKA9aO9vh84gF", "videoSource": "youtube"}, {"alt": "emnQ5qeQAirZBbOr", "previewUrl": "1KBBD1ZNkbkaSHWX", "thumbnailUrl": "9PydAfRIKaUhqSuK", "type": "video", "url": "X2Rp58xMR3zKnYBr", "videoSource": "vimeo"}], "developer": "RioPdgnn9Ddnzcla", "forumUrl": "kn4jfBoCafgnMZY1", "genres": ["Casual", "Simulation", "FreeToPlay"], "localizations": {"D42Ex8nC8ZdnZpSL": {"announcement": "57OaixHEIzo8NqVU", "slogan": "yAxwXzWDcc2Xz3J4"}, "QeIpkYSJwgbqRY2J": {"announcement": "1nqUQGPRZiVyJEqh", "slogan": "ghZAXVxoHY0En52Y"}, "prAroXWt3OYm4Irn": {"announcement": "NWpyrlUWeWy9YJ7O", "slogan": "SHiMBKMVd9j1rtfG"}}, "platformRequirements": {"47pDvZfg6C179S2s": [{"additionals": "mpp22YpzcawuDAEf", "directXVersion": "xReFTFviUPVQnB4n", "diskSpace": "nvmxYftPk9b0j7dF", "graphics": "3N52HOD69DcWccRA", "label": "7bEpZEQrLQdQ7CU8", "osVersion": "BPjRFk7rgFWyDItK", "processor": "ElEr9JjgkdTXaa65", "ram": "3m9hPHQo6BNvoivu", "soundCard": "ceALdTn81cZ0JF91"}, {"additionals": "QJ8VYFzAKNS33gip", "directXVersion": "bk4fmVtJ0NAlfYCG", "diskSpace": "DddacWsXq5KsbdNB", "graphics": "QzX9uUNttB3kxPes", "label": "IzSCYzZXYT99X1bE", "osVersion": "j8YA60QPEZ94F6xU", "processor": "t6rUkuOxmhEE6nr1", "ram": "VNjH7q2bRxyQQdWV", "soundCard": "3knXHBNMWz5mo78M"}, {"additionals": "YacBbrw5ijYLc8rv", "directXVersion": "ceUEOpE4lqHN8zvM", "diskSpace": "SKRJ4VSD1goMmyIV", "graphics": "Z7s9bczccwjNGPs3", "label": "qrAstF8pnrvJ1hYF", "osVersion": "hQKCWaxG7kqGcnNK", "processor": "xLfkR2KeSDHOXrMa", "ram": "yGKlM0E7UUUJFQNy", "soundCard": "Qu5vox1OLs2mpLQr"}], "XwpyRcNUHG4355br": [{"additionals": "tuFCDwxnejYRC9GM", "directXVersion": "pjwMYHkXDQFgVUWP", "diskSpace": "6bbcwWR3kAn2O7O9", "graphics": "q156OiWvQrcHKxrS", "label": "NKe83CiyGIu0uZFA", "osVersion": "eiMNDIXCaeMvLrL6", "processor": "kfgFeTnTgWgbh1VP", "ram": "MqQsj5hsbgd9yWqU", "soundCard": "1uzQy4aBiTjnZth4"}, {"additionals": "sc2P1DNUBx2MBRUY", "directXVersion": "NCsrqfKroE6ps3H0", "diskSpace": "8krygX1CNu2J0wkl", "graphics": "HT8KZeBp3sBzSYXB", "label": "PDcgeZy8zBeDk03U", "osVersion": "3z7UlhFTTxPKd8u8", "processor": "1zO7oIgAzO3yttNa", "ram": "l0MyBf3hSV6K9jHS", "soundCard": "chwoosJUKP3angft"}, {"additionals": "0Xqfwe1er2UUMpog", "directXVersion": "JgGiLeNrVGTDbpWY", "diskSpace": "EPD6hSdD9YdXgKh7", "graphics": "OHiMQRNNlU4rT96O", "label": "u2a3gfOMX9N814ic", "osVersion": "rlSwFiUGHcdKWEhH", "processor": "FDqIWg2cceePu4yh", "ram": "vfwnh3Nz8UONQjKs", "soundCard": "I7u9hRRgthTUxJfQ"}], "C2Xx2bA95aXc6yku": [{"additionals": "HpjAd5uOwQmusJ0S", "directXVersion": "QTy5hGgHz3sXQKqH", "diskSpace": "pNuFzQLaGmngdQOQ", "graphics": "WABXTd1LFNzcbQpx", "label": "Oh5fcQ0bN4lMvRah", "osVersion": "j2v33LMTN5wvVwgd", "processor": "MpgR1E9gSeUg9JCj", "ram": "x0Q5SrsgBNBADt2R", "soundCard": "xKEi6TQZZNWWk6cu"}, {"additionals": "r7uC1HaftScU2tsr", "directXVersion": "aScKnwuvhdI3INcw", "diskSpace": "6mM3DiPA29o02qRM", "graphics": "aWfqijIiCgApMyky", "label": "FxMEizhfRmNPESrx", "osVersion": "L9OFnEWBGU2bVw2o", "processor": "WK58lDIldtUp5Wnj", "ram": "Ry1y8kUobnyuYGiL", "soundCard": "jkxpe9XE3zQPrYRX"}, {"additionals": "dKNwZTy8TBvlp8rZ", "directXVersion": "KEGPevtrTH23xWbV", "diskSpace": "CEYfo1w4OrgTgtyz", "graphics": "Qzpt0IRzF58pbyBT", "label": "mnc8vsL06L3HigWQ", "osVersion": "Srthnjue0N4QwtZH", "processor": "5eEyb9fI1cegiUIW", "ram": "3MKih2KGklE6tpfH", "soundCard": "1M5mi6QedLev6GJe"}]}, "platforms": ["Windows", "Windows", "Android"], "players": ["Coop", "Multi", "LocalCoop"], "primaryGenre": "Strategy", "publisher": "PZzxijSGLCt1ZTE1", "releaseDate": "1973-12-31T00:00:00Z", "websiteUrl": "CV0kpQLmAEkD2Mcn"}' \
    > test.out 2>&1
eval_tap $? 122 'UpdateApp' test.out

#- 123 DisableItem
samples/cli/sample-apps Platform disableItem \
    --itemId 'o8Yrr5rxnSvVXFgv' \
    --namespace $AB_NAMESPACE \
    --storeId 'RFBbSRqtKi4foCvj' \
    > test.out 2>&1
eval_tap $? 123 'DisableItem' test.out

#- 124 GetItemDynamicData
samples/cli/sample-apps Platform getItemDynamicData \
    --itemId 'Lfm3bppvfxbbvPT7' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 124 'GetItemDynamicData' test.out

#- 125 EnableItem
samples/cli/sample-apps Platform enableItem \
    --itemId 'daQOzBxdMLJ0ebwf' \
    --namespace $AB_NAMESPACE \
    --storeId 'WADv8UDVxGIoVEzq' \
    > test.out 2>&1
eval_tap $? 125 'EnableItem' test.out

#- 126 FeatureItem
samples/cli/sample-apps Platform featureItem \
    --feature 'YevyhierNT47uJVO' \
    --itemId '0VKi8N3c4UO3akLd' \
    --namespace $AB_NAMESPACE \
    --storeId 'BYVk4HrPxNOpb7il' \
    > test.out 2>&1
eval_tap $? 126 'FeatureItem' test.out

#- 127 DefeatureItem
samples/cli/sample-apps Platform defeatureItem \
    --feature 'S13HSTagKhUJEjP1' \
    --itemId 'b37SW60RJ903ehp6' \
    --namespace $AB_NAMESPACE \
    --storeId 'XPyMfn77MsgHYWBh' \
    > test.out 2>&1
eval_tap $? 127 'DefeatureItem' test.out

#- 128 GetLocaleItem
samples/cli/sample-apps Platform getLocaleItem \
    --itemId 'bhk1nPGJ1iuuDzcg' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --language 'oiCCDNnYSOscIkQK' \
    --populateBundle 'false' \
    --region 'pEkmLtKyMV2FaAOX' \
    --storeId 'iwv8XOydeMnVe9ec' \
    > test.out 2>&1
eval_tap $? 128 'GetLocaleItem' test.out

#- 129 UpdateItemPurchaseCondition
samples/cli/sample-apps Platform updateItemPurchaseCondition \
    --itemId 'Cdmz6U7ha1DBzlad' \
    --namespace $AB_NAMESPACE \
    --storeId 'KIuKX5WFI66jNoU6' \
    --body '{"purchaseCondition": {"conditionGroups": [{"operator": "and", "predicates": [{"anyOf": 35, "comparison": "excludes", "name": "eHxD4iC0JDxsqm9Y", "predicateType": "SeasonTierPredicate", "value": "lMLg3LvmBw64KvnZ", "values": ["c2Z68zwuJXgTBwcC", "SlX07HXGeHrGS5hM", "c3jXdV3mMnc4e2q2"]}, {"anyOf": 42, "comparison": "excludes", "name": "twRyZOZEjBIJQRDU", "predicateType": "SeasonTierPredicate", "value": "upg57sVmoZwnjwRa", "values": ["Zb65xdeKYUkOcItU", "PkT6lzWLMGAEy452", "57SgG9OgGgtLoFVh"]}, {"anyOf": 67, "comparison": "isLessThan", "name": "UcNwc6omplu1oLsP", "predicateType": "EntitlementPredicate", "value": "k7FH1eaFU4ggyOER", "values": ["QSYdeOHPs9iG7Jtl", "iZCZXOC3W2qxkejN", "gQXIBBROUWLBoCkf"]}]}, {"operator": "and", "predicates": [{"anyOf": 80, "comparison": "is", "name": "DjIGQY9UtuZuHQqe", "predicateType": "SeasonTierPredicate", "value": "ZDapGifKjl0Qn6sO", "values": ["KCFMVJRdwsG8jubz", "CfpSGWk1EvCH0xgu", "fMPKjJEuQrYM58jM"]}, {"anyOf": 76, "comparison": "isNot", "name": "drbEAlx2krCJOvaD", "predicateType": "SeasonPassPredicate", "value": "ElI1byNmOkgo9gUE", "values": ["LVOqI9irINCQV5Ui", "5GcCXAk6TKjAnu7X", "ujNTxGylG443sudM"]}, {"anyOf": 44, "comparison": "isNot", "name": "bIdfCidWznb96yIK", "predicateType": "SeasonPassPredicate", "value": "jPGfKpKi7yTz3QW6", "values": ["zI7tRCgcJwxaLXVw", "q7di6g9BbIluQ9Ux", "iTx7CYGk7qsTBf2e"]}]}, {"operator": "and", "predicates": [{"anyOf": 79, "comparison": "isGreaterThan", "name": "YOWlrqhpnJEljfq7", "predicateType": "SeasonPassPredicate", "value": "tD7U38U03te2YlFm", "values": ["CrZToBGf9J8GOdV6", "uA0mwm0KzKAXnyjP", "jHRmclcrWu1b9obc"]}, {"anyOf": 5, "comparison": "isGreaterThanOrEqual", "name": "SCQ3u3dix6DJo4ME", "predicateType": "EntitlementPredicate", "value": "QV9hIf8IZxLVsYh7", "values": ["9HCo9KFxU6SzpdZV", "WKtsTb9WO403cxMp", "BKG3hltIgT7moT8L"]}, {"anyOf": 73, "comparison": "isLessThanOrEqual", "name": "My0BjXgVO4SEIWyd", "predicateType": "EntitlementPredicate", "value": "El5SxUIIBdmCeryE", "values": ["I1HiudCxwHzsbmG9", "XHcJ3dWPgrtClY4O", "an29f1JTHuWtOPqg"]}]}]}}' \
    > test.out 2>&1
eval_tap $? 129 'UpdateItemPurchaseCondition' test.out

#- 130 ReturnItem
samples/cli/sample-apps Platform returnItem \
    --itemId 'S6KYFTzp7exuWfiD' \
    --namespace $AB_NAMESPACE \
    --body '{"orderNo": "6HQEEczm8Co5n9Ec"}' \
    > test.out 2>&1
eval_tap $? 130 'ReturnItem' test.out

#- 131 QueryKeyGroups
samples/cli/sample-apps Platform queryKeyGroups \
    --namespace $AB_NAMESPACE \
    --limit '31' \
    --name 'MqOgBdcfKrB92r8J' \
    --offset '78' \
    --tag 'dxKOuil0wk40Xagh' \
    > test.out 2>&1
eval_tap $? 131 'QueryKeyGroups' test.out

#- 132 CreateKeyGroup
samples/cli/sample-apps Platform createKeyGroup \
    --namespace $AB_NAMESPACE \
    --body '{"description": "g50E1YodxJVzVgMi", "name": "GOtmO35v59ADnRXS", "status": "ACTIVE", "tags": ["rQMbChFwnl9GFfZ4", "L3qOomfU0NBWU7YP", "sIzRhMy2fBtC88JV"]}' \
    > test.out 2>&1
eval_tap $? 132 'CreateKeyGroup' test.out

#- 133 GetKeyGroupByBoothName
eval_tap 0 133 'GetKeyGroupByBoothName # SKIP deprecated' test.out

#- 134 GetKeyGroup
samples/cli/sample-apps Platform getKeyGroup \
    --keyGroupId 'YJnW6ktO6NAak8js' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 134 'GetKeyGroup' test.out

#- 135 UpdateKeyGroup
samples/cli/sample-apps Platform updateKeyGroup \
    --keyGroupId 'W02ShvlpYdMVwqEX' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "yleTwWNOHPp1Yk34", "name": "eW6lHfIh4tG2GPWz", "status": "ACTIVE", "tags": ["5sVueaeOqH8tUT07", "OgAbBKfL6B9e3XY5", "yNcjKYhrTxfjGVW6"]}' \
    > test.out 2>&1
eval_tap $? 135 'UpdateKeyGroup' test.out

#- 136 GetKeyGroupDynamic
samples/cli/sample-apps Platform getKeyGroupDynamic \
    --keyGroupId 'spUQQWkiitdNn6rT' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 136 'GetKeyGroupDynamic' test.out

#- 137 ListKeys
samples/cli/sample-apps Platform listKeys \
    --keyGroupId '1QXaBiZh1CfLpqjF' \
    --namespace $AB_NAMESPACE \
    --limit '59' \
    --offset '12' \
    --status 'ACQUIRED' \
    > test.out 2>&1
eval_tap $? 137 'ListKeys' test.out

#- 138 UploadKeys
samples/cli/sample-apps Platform uploadKeys \
    --keyGroupId '3z2Xb07YTQiNxbCG' \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 138 'UploadKeys' test.out

#- 139 QueryOrders
samples/cli/sample-apps Platform queryOrders \
    --namespace $AB_NAMESPACE \
    --endTime 'RRTrM2B1iV0DoiE2' \
    --limit '55' \
    --offset '31' \
    --orderNos '["xzwpOJYgOxA7SHPe", "zzEiiRYwuQXFOpaG", "WpKBY6cM1FZQB5PQ"]' \
    --sortBy 'Wy2Yb1Kcv9mz3GeN' \
    --startTime 'iWyOZY6WJexmCCZg' \
    --status 'REFUNDING' \
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
    --orderNo 'gN1K4jw6EaBmrNgO' \
    > test.out 2>&1
eval_tap $? 141 'GetOrder' test.out

#- 142 RefundOrder
samples/cli/sample-apps Platform refundOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'ytTeFAzv84l0QXaY' \
    --body '{"description": "tlga2AOyHZ0u2Cgq"}' \
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
    --body '{"dryRun": true, "notifyUrl": "9Jwvrcgb7cGmsFKH", "privateKey": "AlUdzb2zkgBJHJ2z"}' \
    > test.out 2>&1
eval_tap $? 144 'UpdatePaymentCallbackConfig' test.out

#- 145 QueryPaymentNotifications
samples/cli/sample-apps Platform queryPaymentNotifications \
    --namespace $AB_NAMESPACE \
    --endDate '3OZEgbRHRBYWOUHY' \
    --externalId 'xUoJRNuo6OCGrg5F' \
    --limit '45' \
    --notificationSource 'ADYEN' \
    --notificationType 'RuV2mTmLkJX8kC0l' \
    --offset '84' \
    --paymentOrderNo 'SHFDPj8lAsgiFode' \
    --startDate '3cR5eFrr8j7yOkwd' \
    --status 'ERROR' \
    > test.out 2>&1
eval_tap $? 145 'QueryPaymentNotifications' test.out

#- 146 QueryPaymentOrders
samples/cli/sample-apps Platform queryPaymentOrders \
    --namespace $AB_NAMESPACE \
    --channel 'INTERNAL' \
    --extTxId '7YvThrkRqEg7vwGj' \
    --limit '45' \
    --offset '87' \
    --status 'REFUNDED' \
    > test.out 2>&1
eval_tap $? 146 'QueryPaymentOrders' test.out

#- 147 CreatePaymentOrderByDedicated
samples/cli/sample-apps Platform createPaymentOrderByDedicated \
    --namespace $AB_NAMESPACE \
    --body '{"currencyCode": "AY40ucxVWQnqzcuZ", "currencyNamespace": "hwxPkgvCnkfgFfN7", "customParameters": {"lAApAqYuyKFU6DRi": {}, "sVVZxMCfKzQa7X7t": {}, "z8EZ4pETX3hutKyV": {}}, "description": "P9FxdHWBle1CQ5Km", "extOrderNo": "T2jaY4aYUpzUegbE", "extUserId": "7Z2HyxxE8gEO0uDT", "itemType": "LOOTBOX", "language": "tQKd-mu", "metadata": {"vWKFKvVHshAhrpx6": "8CaX26ndqZFtwuTG", "tAQz94lAYHLD5tdy": "hcjyLaQ4dFlU0kVA", "F4ki4XMuQ1d2kuMj": "0XrfxdDCcQ8bmLHJ"}, "notifyUrl": "PmV6MTARQoKPnG7o", "omitNotification": true, "platform": "wpFo7xZoB8CLwutl", "price": 51, "recurringPaymentOrderNo": "F2WDhfA6otY7q4pV", "region": "vWxIBmVthjjdIQuP", "returnUrl": "hDctkVX5nFzcDlBL", "sandbox": true, "sku": "u95WtVuCj3X5SZrA", "subscriptionId": "gmTJKJyRqXqLhlAg", "targetNamespace": "kMWRykT4QpaDGezC", "targetUserId": "8XghcRQPXyVAGD2w", "title": "fPlZAmrgcV2L4lUU"}' \
    > test.out 2>&1
eval_tap $? 147 'CreatePaymentOrderByDedicated' test.out

#- 148 ListExtOrderNoByExtTxId
samples/cli/sample-apps Platform listExtOrderNoByExtTxId \
    --namespace $AB_NAMESPACE \
    --extTxId '8LDa2zmp7Z4J4bxh' \
    > test.out 2>&1
eval_tap $? 148 'ListExtOrderNoByExtTxId' test.out

#- 149 GetPaymentOrder
samples/cli/sample-apps Platform getPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo '18uMZH4N0rRwGuP9' \
    > test.out 2>&1
eval_tap $? 149 'GetPaymentOrder' test.out

#- 150 ChargePaymentOrder
samples/cli/sample-apps Platform chargePaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'pe5sm5FvlwXtPwI2' \
    --body '{"extTxId": "Nd51ePX9fku4iCsE", "paymentMethod": "6UcJ9Ms1ejxbyUpM", "paymentProvider": "ADYEN"}' \
    > test.out 2>&1
eval_tap $? 150 'ChargePaymentOrder' test.out

#- 151 RefundPaymentOrderByDedicated
samples/cli/sample-apps Platform refundPaymentOrderByDedicated \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'GjZAngKV71CoAWtX' \
    --body '{"description": "eyqr8qj1Nv8pZBJZ"}' \
    > test.out 2>&1
eval_tap $? 151 'RefundPaymentOrderByDedicated' test.out

#- 152 SimulatePaymentOrderNotification
samples/cli/sample-apps Platform simulatePaymentOrderNotification \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'KftIEghZ61FicPfM' \
    --body '{"amount": 29, "currencyCode": "ArIFBVgk5xY2rU0T", "notifyType": "CHARGE", "paymentProvider": "ADYEN", "salesTax": 97, "vat": 65}' \
    > test.out 2>&1
eval_tap $? 152 'SimulatePaymentOrderNotification' test.out

#- 153 GetPaymentOrderChargeStatus
samples/cli/sample-apps Platform getPaymentOrderChargeStatus \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'vSV1TURb6oOohK38' \
    > test.out 2>&1
eval_tap $? 153 'GetPaymentOrderChargeStatus' test.out

#- 154 GetPlatformWalletConfig
samples/cli/sample-apps Platform getPlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Playstation' \
    > test.out 2>&1
eval_tap $? 154 'GetPlatformWalletConfig' test.out

#- 155 UpdatePlatformWalletConfig
samples/cli/sample-apps Platform updatePlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Oculus' \
    --body '{"allowedBalanceOrigins": ["Nintendo", "Nintendo", "IOS"]}' \
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
    --body '{"entitlement": {"consumable": {"enabled": true, "strategy": "CUSTOM"}, "durable": {"enabled": false, "strategy": "REVOKE_OR_REPORT"}}, "wallet": {"enabled": false, "strategy": "ALWAYS_REVOKE"}}' \
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
    --endTime 'ZEkCCj3S8LMaNXkX' \
    --limit '38' \
    --offset '17' \
    --source 'OTHER' \
    --startTime 'Ebp2IfB55U6CkTWv' \
    --status 'FAIL' \
    --transactionId 'd8iQx2TrjTFmIDU8' \
    --userId 'UjZrh6gPLgDuT5FP' \
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
    --body '{"appConfig": {"appName": "Z9GoYLdYWtkL1UOt"}, "customConfig": {"connectionType": "TLS", "grpcServerAddress": "fQPu4EgJrGYAynav"}, "extendType": "CUSTOM"}' \
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
    --body '{"description": "MlE3Gg4EPkQcae9d", "eventTopic": "u9R5ogNJqLd8pnyQ", "maxAwarded": 14, "maxAwardedPerUser": 49, "namespaceExpression": "Fa9LH8uYGGgxqAo2", "rewardCode": "iv5BSausfrPkZnyd", "rewardConditions": [{"condition": "kHcKpxSBiCfENE0T", "conditionName": "2Ug17NnmZLUCs5V2", "eventName": "uJJeX7uFIhce5zjf", "rewardItems": [{"duration": 92, "endDate": "1977-05-17T00:00:00Z", "itemId": "ODa7RG3MY78uubqj", "quantity": 70}, {"duration": 60, "endDate": "1981-12-31T00:00:00Z", "itemId": "WRHxHnGbb27UFxu3", "quantity": 15}, {"duration": 90, "endDate": "1993-10-16T00:00:00Z", "itemId": "N3Oc19dkkZ4aTvNk", "quantity": 89}]}, {"condition": "n0RCVKXMvbf6jcxe", "conditionName": "5kPfOdR4Z02wkQ53", "eventName": "kjFHSSTWZggPewDt", "rewardItems": [{"duration": 18, "endDate": "1992-12-25T00:00:00Z", "itemId": "szX9hDQXopQVqtfh", "quantity": 38}, {"duration": 69, "endDate": "1981-02-25T00:00:00Z", "itemId": "666UFi0gjy063EAd", "quantity": 28}, {"duration": 45, "endDate": "1971-05-24T00:00:00Z", "itemId": "7g502unghZvbfKf6", "quantity": 47}]}, {"condition": "aR9DcCyOLf3T1Gj3", "conditionName": "qCl953KWnkIYVTG5", "eventName": "xm0WgS4yxdN0jUYO", "rewardItems": [{"duration": 32, "endDate": "1991-02-19T00:00:00Z", "itemId": "cvKIk3xVgpQqmvAd", "quantity": 99}, {"duration": 37, "endDate": "1993-05-05T00:00:00Z", "itemId": "env2p6hQk3WG0wAM", "quantity": 3}, {"duration": 70, "endDate": "1989-03-25T00:00:00Z", "itemId": "7TGuyifKTMapGnYI", "quantity": 87}]}], "userIdExpression": "ziR3HcFh6y3kFbHZ"}' \
    > test.out 2>&1
eval_tap $? 165 'CreateReward' test.out

#- 166 QueryRewards
samples/cli/sample-apps Platform queryRewards \
    --namespace $AB_NAMESPACE \
    --eventTopic 'M1mhnu54oFD03AeX' \
    --limit '73' \
    --offset '62' \
    --sortBy '["rewardCode:desc", "rewardCode", "namespace"]' \
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
    --rewardId 'eQeaIRpOkV808FfA' \
    > test.out 2>&1
eval_tap $? 169 'GetReward' test.out

#- 170 UpdateReward
samples/cli/sample-apps Platform updateReward \
    --namespace $AB_NAMESPACE \
    --rewardId 'Cv1i8XYlztxB2Ein' \
    --body '{"description": "F3iD8lG0z6rLMr98", "eventTopic": "R1IbfuLxhONtfIRD", "maxAwarded": 87, "maxAwardedPerUser": 11, "namespaceExpression": "gL4djot230ceWPSq", "rewardCode": "Ri4309QvOUCQfauj", "rewardConditions": [{"condition": "EuAS1L8bdP4BfI0P", "conditionName": "C0FBNR4cgezIKLp5", "eventName": "SLpHXeJF1SRBlvdJ", "rewardItems": [{"duration": 25, "endDate": "1993-06-14T00:00:00Z", "itemId": "TKQINLP0btUaF8mT", "quantity": 2}, {"duration": 88, "endDate": "1996-12-05T00:00:00Z", "itemId": "jnW88ViAgkxs5Jzv", "quantity": 39}, {"duration": 64, "endDate": "1982-05-17T00:00:00Z", "itemId": "pX5aLb0XAswnjAOY", "quantity": 13}]}, {"condition": "ZRqPSk6EschEE9CW", "conditionName": "xRzOtjltv4O8s61v", "eventName": "LTfKv07vh00JgEB7", "rewardItems": [{"duration": 19, "endDate": "1988-01-13T00:00:00Z", "itemId": "08UPvL5CSYl7ufGs", "quantity": 81}, {"duration": 31, "endDate": "1976-12-18T00:00:00Z", "itemId": "bO5t8FUMeKhv7BvD", "quantity": 66}, {"duration": 33, "endDate": "1995-03-02T00:00:00Z", "itemId": "TB5o7SgRSVikTxxZ", "quantity": 51}]}, {"condition": "oT2Y0hwciJYknmnZ", "conditionName": "t2iEOvNYfhxv80sd", "eventName": "sTPXgCqCPbpWte3d", "rewardItems": [{"duration": 78, "endDate": "1996-11-10T00:00:00Z", "itemId": "e1kZvL5fa91wAliM", "quantity": 0}, {"duration": 28, "endDate": "1982-09-28T00:00:00Z", "itemId": "Hhk84sRvVAaaymaj", "quantity": 96}, {"duration": 78, "endDate": "1996-12-17T00:00:00Z", "itemId": "nUPmQgxOLRbPbAyX", "quantity": 9}]}], "userIdExpression": "RhPQG8HwTO4DBo4W"}' \
    > test.out 2>&1
eval_tap $? 170 'UpdateReward' test.out

#- 171 DeleteReward
samples/cli/sample-apps Platform deleteReward \
    --namespace $AB_NAMESPACE \
    --rewardId '4eP42ZSu7xA442u1' \
    > test.out 2>&1
eval_tap $? 171 'DeleteReward' test.out

#- 172 CheckEventCondition
samples/cli/sample-apps Platform checkEventCondition \
    --namespace $AB_NAMESPACE \
    --rewardId '5fx6BFT9Ifwxjj8n' \
    --body '{"payload": {"XEZqI16VQqNWX60M": {}, "k53Lx7ledhpMryYD": {}, "TYueoUuhuoyoePTt": {}}}' \
    > test.out 2>&1
eval_tap $? 172 'CheckEventCondition' test.out

#- 173 DeleteRewardConditionRecord
samples/cli/sample-apps Platform deleteRewardConditionRecord \
    --namespace $AB_NAMESPACE \
    --rewardId 'OGxhvvmjoi3AJKPm' \
    --body '{"conditionName": "X0MDvWOYLJA7Dlib", "userId": "WsQdgGtAHmdqhcsS"}' \
    > test.out 2>&1
eval_tap $? 173 'DeleteRewardConditionRecord' test.out

#- 174 QuerySections
samples/cli/sample-apps Platform querySections \
    --namespace $AB_NAMESPACE \
    --end 'w4Krl9KiFVeQybf4' \
    --limit '29' \
    --offset '84' \
    --start '4u8NLIoeTlf2CSwS' \
    --storeId '2pGjUN76OU0x4F4d' \
    --viewId 'hTgTDB51en5bvGov' \
    > test.out 2>&1
eval_tap $? 174 'QuerySections' test.out

#- 175 CreateSection
samples/cli/sample-apps Platform createSection \
    --namespace $AB_NAMESPACE \
    --storeId '8lloxwGt70zeUSag' \
    --body '{"active": false, "displayOrder": 39, "endDate": "1977-10-18T00:00:00Z", "ext": {"yzef9JxdaJpY7Ho4": {}, "esRUMP42Pn0IXL1k": {}, "yUDB0kuwoPpp7h5d": {}}, "fixedPeriodRotationConfig": {"backfillType": "NONE", "duration": 20, "itemCount": 4, "rule": "SEQUENCE"}, "items": [{"id": "asOdW5KUboYQF2ZG", "sku": "CiW8DIURRANRbkxx"}, {"id": "LNeQVhNFU9vsQelm", "sku": "B2wPdw61INK7ZT8E"}, {"id": "apq2qkOja8ltPMZl", "sku": "xDhL8VESXEqSopQk"}], "localizations": {"3stO9nLYWEyiuNg2": {"description": "96TW38BsmDb87qmG", "localExt": {"1w8IymgJygx9khPz": {}, "oVJwsK1KqImzOtCT": {}, "10NCqm1wLcdaFoke": {}}, "longDescription": "jHQVCgvzpcIeOuaE", "title": "1tPPJvSZsERwUgwY"}, "E6EVZjwAtLKlS9ta": {"description": "dNNtT9Sp0J840C8k", "localExt": {"LznZcxcjumto3YuF": {}, "LLI2W4I9tO29VY1v": {}, "PEXIdAVPYGA72hf9": {}}, "longDescription": "Kieb2j3hzerP8zyq", "title": "vn6gMh9VN7MamAEF"}, "TT9rfwT2pnKO78I8": {"description": "f9h1RuTMPPdHgYeg", "localExt": {"8FwOXWdaG1oemmLq": {}, "N9tbKedXCPiemhrO": {}, "0sumn9NlGdn7r5QM": {}}, "longDescription": "xkONkpmL7F6hAJGo", "title": "XIT1p3lMnbrj9icl"}}, "name": "Eku4CGS83YBRiuIT", "rotationType": "CUSTOM", "startDate": "1975-04-01T00:00:00Z", "viewId": "sdGOH74sKW597nHy"}' \
    > test.out 2>&1
eval_tap $? 175 'CreateSection' test.out

#- 176 PurgeExpiredSection
samples/cli/sample-apps Platform purgeExpiredSection \
    --namespace $AB_NAMESPACE \
    --storeId '3CtaL92fcb1TomO6' \
    > test.out 2>&1
eval_tap $? 176 'PurgeExpiredSection' test.out

#- 177 GetSection
samples/cli/sample-apps Platform getSection \
    --namespace $AB_NAMESPACE \
    --sectionId 'RYrY4Npv3kWwm1P4' \
    --storeId 'kd8aqUvtfDN0HRuA' \
    > test.out 2>&1
eval_tap $? 177 'GetSection' test.out

#- 178 UpdateSection
samples/cli/sample-apps Platform updateSection \
    --namespace $AB_NAMESPACE \
    --sectionId 'MpdNUhfZTPt5UmNe' \
    --storeId 'ntHnPCRnEIKVxk5d' \
    --body '{"active": false, "displayOrder": 78, "endDate": "1985-08-22T00:00:00Z", "ext": {"TBtrBR9BxntO9uPi": {}, "E4lsT6DtGXUCDDy1": {}, "S7F4aWA2FnHLxqQz": {}}, "fixedPeriodRotationConfig": {"backfillType": "CUSTOM", "duration": 42, "itemCount": 59, "rule": "SEQUENCE"}, "items": [{"id": "Pc4UQzyfPn9mhV7l", "sku": "uezNSJELEdeUEgsR"}, {"id": "cD7cp9qDpGQNqZAg", "sku": "ESArcBeXAdeyRbdN"}, {"id": "SIz78AwZQPaCWZR9", "sku": "R9BmtIKq2DgWt7if"}], "localizations": {"Zp33IQ88YhuuXvkD": {"description": "inv2754dmfEzw4zr", "localExt": {"p1LyMVDKYCfuNyM7": {}, "gig8lOUaApZTKKHR": {}, "hG1NZWdeqNdPx32g": {}}, "longDescription": "LjWeZoYHaNpotBN2", "title": "RD4LGdvsjyQtnpEs"}, "VoaXRTeGl5xGQe0Y": {"description": "PfQ6Rs5a8jdtdj84", "localExt": {"NoxeMqkc5b6YgaIf": {}, "RG3PtX10a4BZcXcJ": {}, "PnK6IupiwBQYpZC9": {}}, "longDescription": "RMXv1jy4HdpQ69N0", "title": "FshsrQvRStE7nm7P"}, "L5nW4Iyz7m75NJek": {"description": "ZCWDSV59SlaOAFV9", "localExt": {"Dzhm2wAdBkHsFytX": {}, "q1joADlqAy2UIend": {}, "isrAxAnqU8hEh9hC": {}}, "longDescription": "jpj54Y2IHeA9I5uS", "title": "b8JnYde4FkStZ7L9"}}, "name": "SwyDFdsj7oFyawCo", "rotationType": "NONE", "startDate": "1978-08-28T00:00:00Z", "viewId": "i0iLuhy6yHiLgKdN"}' \
    > test.out 2>&1
eval_tap $? 178 'UpdateSection' test.out

#- 179 DeleteSection
samples/cli/sample-apps Platform deleteSection \
    --namespace $AB_NAMESPACE \
    --sectionId 'IkndCIFtBFhX9WZf' \
    --storeId 'Xr8fU0qncqf9saPG' \
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
    --body '{"defaultLanguage": "bLwACgwOSQCi0VtX", "defaultRegion": "NsipWTjkgvfqLTDL", "description": "EUr2CAvQjKfVTBde", "supportedLanguages": ["p3ZaR0gSgNpwgdoz", "2zni6IZ8V5zwsZ8s", "5Qyg0GFitj3dL8QD"], "supportedRegions": ["CWr7ugSuplSOKEjK", "CZoiIP2eKLk5aidZ", "oGhnazRzqkLcc68N"], "title": "OHRRDITBwqblkyUB"}' \
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
    --storeId '6S46fc7zzEFOp3pm' \
    > test.out 2>&1
eval_tap $? 187 'GetStore' test.out

#- 188 UpdateStore
samples/cli/sample-apps Platform updateStore \
    --namespace $AB_NAMESPACE \
    --storeId 'NlEmFrQaZwtik1VD' \
    --body '{"defaultLanguage": "SIfiEuIP5JqBVr43", "defaultRegion": "znxNHFIYAKje28uf", "description": "SfMIdd1MUYTxJARg", "supportedLanguages": ["Ou67sQeYNoDvdrE1", "5iYxukkH5wDRraTT", "ktoaukrnS5gNpttx"], "supportedRegions": ["9bxl5gMxn7iW3Eic", "Q0q9DQgqNxDYe9zU", "M9iSoc3Y4lJlk0h7"], "title": "KVuBSgl7Fi447SwM"}' \
    > test.out 2>&1
eval_tap $? 188 'UpdateStore' test.out

#- 189 DeleteStore
samples/cli/sample-apps Platform deleteStore \
    --namespace $AB_NAMESPACE \
    --storeId 'FF7e5bkNCTdlh29l' \
    > test.out 2>&1
eval_tap $? 189 'DeleteStore' test.out

#- 190 QueryChanges
samples/cli/sample-apps Platform queryChanges \
    --namespace $AB_NAMESPACE \
    --storeId 'yDWfTU0uUfOCQwkn' \
    --action 'DELETE' \
    --itemSku 'a5KzpcP5EN9NJP5Y' \
    --itemType 'INGAMEITEM' \
    --limit '86' \
    --offset '66' \
    --selected 'true' \
    --sortBy '["updatedAt:asc", "createdAt:asc"]' \
    --status 'UNPUBLISHED' \
    --type 'SECTION' \
    --updatedAtEnd 'dsXoeU0eh9JeneTz' \
    --updatedAtStart 'uOuj2VsK9ZO1TRzg' \
    > test.out 2>&1
eval_tap $? 190 'QueryChanges' test.out

#- 191 PublishAll
samples/cli/sample-apps Platform publishAll \
    --namespace $AB_NAMESPACE \
    --storeId 'se9m9LDGFCsEsKyO' \
    > test.out 2>&1
eval_tap $? 191 'PublishAll' test.out

#- 192 PublishSelected
samples/cli/sample-apps Platform publishSelected \
    --namespace $AB_NAMESPACE \
    --storeId '8zR9PgphANaaC8Q2' \
    > test.out 2>&1
eval_tap $? 192 'PublishSelected' test.out

#- 193 SelectAllRecords
samples/cli/sample-apps Platform selectAllRecords \
    --namespace $AB_NAMESPACE \
    --storeId '3SgsOpwjIyEzLo5P' \
    > test.out 2>&1
eval_tap $? 193 'SelectAllRecords' test.out

#- 194 GetStatistic
samples/cli/sample-apps Platform getStatistic \
    --namespace $AB_NAMESPACE \
    --storeId 'NkGaZxxNtmL0Gd9q' \
    --action 'DELETE' \
    --itemSku '0V8CWTKgeJIw9TVX' \
    --itemType 'APP' \
    --type 'CATEGORY' \
    --updatedAtEnd 'u0fHClQs2RRDMnh6' \
    --updatedAtStart 'qONrk7w95ko2LwUY' \
    > test.out 2>&1
eval_tap $? 194 'GetStatistic' test.out

#- 195 UnselectAllRecords
samples/cli/sample-apps Platform unselectAllRecords \
    --namespace $AB_NAMESPACE \
    --storeId 'SuzVW4wHgFRBDKGm' \
    > test.out 2>&1
eval_tap $? 195 'UnselectAllRecords' test.out

#- 196 SelectRecord
samples/cli/sample-apps Platform selectRecord \
    --changeId 'RhEE9ZYbr7pNgbwv' \
    --namespace $AB_NAMESPACE \
    --storeId 'Pn0k2UGw5B720hGu' \
    > test.out 2>&1
eval_tap $? 196 'SelectRecord' test.out

#- 197 UnselectRecord
samples/cli/sample-apps Platform unselectRecord \
    --changeId 'A2sv6lZ2zNA5ySCR' \
    --namespace $AB_NAMESPACE \
    --storeId 'X4yGv3bV3Fn3zpLx' \
    > test.out 2>&1
eval_tap $? 197 'UnselectRecord' test.out

#- 198 CloneStore
samples/cli/sample-apps Platform cloneStore \
    --namespace $AB_NAMESPACE \
    --storeId 'f3cb9zeM7OAWnaNb' \
    --targetStoreId '9zwgGcFr40uzDJAe' \
    > test.out 2>&1
eval_tap $? 198 'CloneStore' test.out

#- 199 ExportStore
eval_tap 0 199 'ExportStore # SKIP deprecated' test.out

#- 200 QuerySubscriptions
samples/cli/sample-apps Platform querySubscriptions \
    --namespace $AB_NAMESPACE \
    --chargeStatus 'CHARGE_FAILED' \
    --itemId 'j9oAzmCznGIu9229' \
    --limit '83' \
    --offset '83' \
    --sku 'dlCoUKE5aZWWdjls' \
    --status 'INIT' \
    --subscribedBy 'USER' \
    --userId '1tP16VDS7Rk07Dcm' \
    > test.out 2>&1
eval_tap $? 200 'QuerySubscriptions' test.out

#- 201 RecurringChargeSubscription
samples/cli/sample-apps Platform recurringChargeSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'PUN1yv3VGuHtPOCx' \
    > test.out 2>&1
eval_tap $? 201 'RecurringChargeSubscription' test.out

#- 202 GetTicketDynamic
samples/cli/sample-apps Platform getTicketDynamic \
    --boothName 'nU75meamOj6CBSTx' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 202 'GetTicketDynamic' test.out

#- 203 DecreaseTicketSale
samples/cli/sample-apps Platform decreaseTicketSale \
    --boothName 'SxMp6UdEHlTVvjpp' \
    --namespace $AB_NAMESPACE \
    --body '{"orderNo": "fj48uLMS71KnRfoi"}' \
    > test.out 2>&1
eval_tap $? 203 'DecreaseTicketSale' test.out

#- 204 GetTicketBoothID
samples/cli/sample-apps Platform getTicketBoothID \
    --boothName 'QO2Xsw4SVPaYef3s' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 204 'GetTicketBoothID' test.out

#- 205 IncreaseTicketSale
samples/cli/sample-apps Platform increaseTicketSale \
    --boothName 'oAGhqwoaLWw6RRqP' \
    --namespace $AB_NAMESPACE \
    --body '{"count": 12, "orderNo": "Rolqb5qSHrHCy87b"}' \
    > test.out 2>&1
eval_tap $? 205 'IncreaseTicketSale' test.out

#- 206 Commit
samples/cli/sample-apps Platform commit \
    --namespace $AB_NAMESPACE \
    --body '{"actions": [{"operations": [{"creditPayload": {"balanceOrigin": "GooglePlay", "count": 34, "currencyCode": "2eMm9PLSA0PfENb5", "expireAt": "1986-05-19T00:00:00Z"}, "debitPayload": {"count": 53, "currencyCode": "AwYJacRzfzXU1iiO", "walletPlatform": "Other"}, "fulFillItemPayload": {"count": 24, "itemIdentity": "HugoGGPKY3YIi8xj", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 86, "entitlementId": "84I0wqqp54XrvOgp"}, "type": "DEBIT_WALLET"}, {"creditPayload": {"balanceOrigin": "Playstation", "count": 65, "currencyCode": "gJ0Y302P2Mk1gAbK", "expireAt": "1992-09-14T00:00:00Z"}, "debitPayload": {"count": 23, "currencyCode": "Hdd38MgOFZrDp8IJ", "walletPlatform": "Xbox"}, "fulFillItemPayload": {"count": 53, "itemIdentity": "avPorDLqPnabDINN", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 14, "entitlementId": "8YYSzmZSkj404kZj"}, "type": "FULFILL_ITEM"}, {"creditPayload": {"balanceOrigin": "Epic", "count": 43, "currencyCode": "M6us0Zg0iXhvT7gN", "expireAt": "1993-03-07T00:00:00Z"}, "debitPayload": {"count": 92, "currencyCode": "UsfZJ0u95MkxuznU", "walletPlatform": "Xbox"}, "fulFillItemPayload": {"count": 12, "itemIdentity": "8TED9QGHG6H3RkPj", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 36, "entitlementId": "Uz99HoC3Lpw7UoPQ"}, "type": "FULFILL_ITEM"}], "userId": "kWeFmL8CDbPZHdLy"}, {"operations": [{"creditPayload": {"balanceOrigin": "GooglePlay", "count": 40, "currencyCode": "AlI1Lp1y9m5ytXpI", "expireAt": "1999-04-08T00:00:00Z"}, "debitPayload": {"count": 87, "currencyCode": "pDClL8BVWS0ZhCSs", "walletPlatform": "IOS"}, "fulFillItemPayload": {"count": 13, "itemIdentity": "8Wr9AIhQx5IlcGE6", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 92, "entitlementId": "AJQXYaaxykgEUeAe"}, "type": "FULFILL_ITEM"}, {"creditPayload": {"balanceOrigin": "Other", "count": 51, "currencyCode": "D6QTF6rTrw1JfOrL", "expireAt": "1971-06-15T00:00:00Z"}, "debitPayload": {"count": 13, "currencyCode": "AFjCDaA2jZdgm29f", "walletPlatform": "Steam"}, "fulFillItemPayload": {"count": 0, "itemIdentity": "XgicFKlwivD87iVx", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 12, "entitlementId": "8IMGZeP6WusUtAom"}, "type": "FULFILL_ITEM"}, {"creditPayload": {"balanceOrigin": "Steam", "count": 86, "currencyCode": "iVfdHhpNzthqBio8", "expireAt": "1996-06-28T00:00:00Z"}, "debitPayload": {"count": 12, "currencyCode": "mNdPDPLbukyus4Mv", "walletPlatform": "Steam"}, "fulFillItemPayload": {"count": 69, "itemIdentity": "OSbrnxdJLqOgn2ZO", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 25, "entitlementId": "lQOZxcB1ccv1lLma"}, "type": "REVOKE_ENTITLEMENT"}], "userId": "KV1IfdCPerZykhMT"}, {"operations": [{"creditPayload": {"balanceOrigin": "Nintendo", "count": 96, "currencyCode": "4zfxiSmQwVZZAlnN", "expireAt": "1989-12-01T00:00:00Z"}, "debitPayload": {"count": 38, "currencyCode": "YClBKowpzKvGwcm9", "walletPlatform": "GooglePlay"}, "fulFillItemPayload": {"count": 70, "itemIdentity": "wErUGSu2mFCchACO", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 73, "entitlementId": "v1O2WWVscUT1t1aD"}, "type": "FULFILL_ITEM"}, {"creditPayload": {"balanceOrigin": "Epic", "count": 96, "currencyCode": "iePPUo5ZyH70TQvt", "expireAt": "1980-06-29T00:00:00Z"}, "debitPayload": {"count": 59, "currencyCode": "4nFJd3doPHftIAlM", "walletPlatform": "IOS"}, "fulFillItemPayload": {"count": 48, "itemIdentity": "W9QY1HHMhLQ8eaXd", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 20, "entitlementId": "nhJBiZ4yXZoXNYYF"}, "type": "REVOKE_ENTITLEMENT"}, {"creditPayload": {"balanceOrigin": "Xbox", "count": 27, "currencyCode": "M1ZEo1BJCtgiytgd", "expireAt": "1974-11-25T00:00:00Z"}, "debitPayload": {"count": 34, "currencyCode": "gEcFAe8Ix5Oq2WCE", "walletPlatform": "Steam"}, "fulFillItemPayload": {"count": 22, "itemIdentity": "NnbVJSbGFTZlhyvO", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 23, "entitlementId": "UKGcCEQvqcPOweyc"}, "type": "CREDIT_WALLET"}], "userId": "LPdLgF0b76YGgUuC"}], "metadata": {"8vQlWspIY01ZhPjl": {}, "LcPL2X7YISNBbY0c": {}, "uK7gBvoe7i9CaCrD": {}}, "needPreCheck": false, "transactionId": "pLNzdg3TEg3Et7e1", "type": "KwBm2mMm9oqMb8xX"}' \
    > test.out 2>&1
eval_tap $? 206 'Commit' test.out

#- 207 GetTradeHistoryByCriteria
samples/cli/sample-apps Platform getTradeHistoryByCriteria \
    --namespace $AB_NAMESPACE \
    --limit '96' \
    --offset '6' \
    --status 'INIT' \
    --type 'iZjoXUqyxPeFz1xq' \
    --userId 'nyPzfAAoTCxpQHmY' \
    > test.out 2>&1
eval_tap $? 207 'GetTradeHistoryByCriteria' test.out

#- 208 GetTradeHistoryByTransactionId
samples/cli/sample-apps Platform getTradeHistoryByTransactionId \
    --namespace $AB_NAMESPACE \
    --transactionId 'chgICEflfDq4KFDV' \
    > test.out 2>&1
eval_tap $? 208 'GetTradeHistoryByTransactionId' test.out

#- 209 UnlockSteamUserAchievement
samples/cli/sample-apps Platform unlockSteamUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'w0SjDltUXQUHXCgG' \
    --body '{"achievements": [{"id": "mspIoauDXlcF1k7I", "value": 8}, {"id": "5LMfWLTc4mTdlQea", "value": 91}, {"id": "LP5G3b2N8kFrT8jm", "value": 2}], "steamUserId": "yZS8MMBr16ajKEyI"}' \
    > test.out 2>&1
eval_tap $? 209 'UnlockSteamUserAchievement' test.out

#- 210 GetXblUserAchievements
samples/cli/sample-apps Platform getXblUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId 'xjCId6Ik7kfrpM8s' \
    --xboxUserId 'YwLrprBj8UOs2Jnz' \
    > test.out 2>&1
eval_tap $? 210 'GetXblUserAchievements' test.out

#- 211 UpdateXblUserAchievement
samples/cli/sample-apps Platform updateXblUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'dYPeiGXxRD6khyov' \
    --body '{"achievements": [{"id": "Dwu1Nme7Bb4vIIqK", "percentComplete": 5}, {"id": "nJ7GgL866dcKuo5k", "percentComplete": 40}, {"id": "Wq96QjS5MIdzD6iS", "percentComplete": 63}], "serviceConfigId": "244HtuszAw44F3Ja", "titleId": "EjP8fQbfiakzQ24J", "xboxUserId": "iI9f4sJv91oihLJx"}' \
    > test.out 2>&1
eval_tap $? 211 'UpdateXblUserAchievement' test.out

#- 212 AnonymizeCampaign
samples/cli/sample-apps Platform anonymizeCampaign \
    --namespace $AB_NAMESPACE \
    --userId 'mMZwpFHTjQgq7Tud' \
    > test.out 2>&1
eval_tap $? 212 'AnonymizeCampaign' test.out

#- 213 AnonymizeEntitlement
samples/cli/sample-apps Platform anonymizeEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'LQsgVyjuKNaXVoOu' \
    > test.out 2>&1
eval_tap $? 213 'AnonymizeEntitlement' test.out

#- 214 AnonymizeFulfillment
samples/cli/sample-apps Platform anonymizeFulfillment \
    --namespace $AB_NAMESPACE \
    --userId 'LDTc9b187NOXU1dj' \
    > test.out 2>&1
eval_tap $? 214 'AnonymizeFulfillment' test.out

#- 215 AnonymizeIntegration
samples/cli/sample-apps Platform anonymizeIntegration \
    --namespace $AB_NAMESPACE \
    --userId 'rVagrriHP7ttbONo' \
    > test.out 2>&1
eval_tap $? 215 'AnonymizeIntegration' test.out

#- 216 AnonymizeOrder
samples/cli/sample-apps Platform anonymizeOrder \
    --namespace $AB_NAMESPACE \
    --userId 'mNMzAODP9Q2p1UJh' \
    > test.out 2>&1
eval_tap $? 216 'AnonymizeOrder' test.out

#- 217 AnonymizePayment
samples/cli/sample-apps Platform anonymizePayment \
    --namespace $AB_NAMESPACE \
    --userId 'VhlwdojlwIuGc49e' \
    > test.out 2>&1
eval_tap $? 217 'AnonymizePayment' test.out

#- 218 AnonymizeRevocation
samples/cli/sample-apps Platform anonymizeRevocation \
    --namespace $AB_NAMESPACE \
    --userId 'fjZmmMWnuxv5oQAL' \
    > test.out 2>&1
eval_tap $? 218 'AnonymizeRevocation' test.out

#- 219 AnonymizeSubscription
samples/cli/sample-apps Platform anonymizeSubscription \
    --namespace $AB_NAMESPACE \
    --userId 'myfaREKYN3H5j2Wr' \
    > test.out 2>&1
eval_tap $? 219 'AnonymizeSubscription' test.out

#- 220 AnonymizeWallet
samples/cli/sample-apps Platform anonymizeWallet \
    --namespace $AB_NAMESPACE \
    --userId 'QWCrqNeMpiceNbhu' \
    > test.out 2>&1
eval_tap $? 220 'AnonymizeWallet' test.out

#- 221 GetUserDLCByPlatform
samples/cli/sample-apps Platform getUserDLCByPlatform \
    --namespace $AB_NAMESPACE \
    --userId 'XKlyg180uQjd2e5t' \
    --type 'PSN' \
    > test.out 2>&1
eval_tap $? 221 'GetUserDLCByPlatform' test.out

#- 222 GetUserDLC
samples/cli/sample-apps Platform getUserDLC \
    --namespace $AB_NAMESPACE \
    --userId 'I4hrLQ4dl61iuwus' \
    --type 'EPICGAMES' \
    > test.out 2>&1
eval_tap $? 222 'GetUserDLC' test.out

#- 223 QueryUserEntitlements
samples/cli/sample-apps Platform queryUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'ubZZ9EzTBdwiG8uI' \
    --activeOnly 'false' \
    --appType 'DEMO' \
    --entitlementClazz 'SUBSCRIPTION' \
    --entitlementName '437qL6pnk3YzZdQ5' \
    --features '["K3J8SibJlWyJOcgI", "a809tWUoCaPVnMyG", "JcqBSI56N6uoxJKZ"]' \
    --itemId '["Y8MkhwqEmLFAWZWL", "wfJP6QEWgOA2II3e", "e9KZDdJpbs0i5jHf"]' \
    --limit '31' \
    --offset '22' \
    > test.out 2>&1
eval_tap $? 223 'QueryUserEntitlements' test.out

#- 224 GrantUserEntitlement
samples/cli/sample-apps Platform grantUserEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'Bg7QFYlSlMnY2CrM' \
    --body '[{"endDate": "1991-05-01T00:00:00Z", "grantedCode": "JK5qVqibdSVJlwS8", "itemId": "uINTKZp8rvzrGgyQ", "itemNamespace": "Rvl5ApmglVYiBlTX", "language": "gXej-903", "quantity": 88, "region": "ZofevbUwycVXZ0mi", "source": "PURCHASE", "startDate": "1998-04-16T00:00:00Z", "storeId": "PZGCluPpncRtVjq3"}, {"endDate": "1999-12-16T00:00:00Z", "grantedCode": "xW8cqr0oJBxPS3xQ", "itemId": "SBW1qwpKJ5ezA5TE", "itemNamespace": "8Sy8aTFlZwFKaFZ2", "language": "poi-mJby-ou", "quantity": 69, "region": "KoK0zW8Yt7B64zDA", "source": "REWARD", "startDate": "1976-03-02T00:00:00Z", "storeId": "MlV6oHHUqWGUDDZm"}, {"endDate": "1985-11-27T00:00:00Z", "grantedCode": "BhhfDXZA7q7G6BKF", "itemId": "gJTtr0WAeMeCgtNM", "itemNamespace": "hPf6KJ44hTF7XlLR", "language": "On", "quantity": 41, "region": "ee8lGFhRxozhaRkf", "source": "PURCHASE", "startDate": "1976-05-31T00:00:00Z", "storeId": "oqK3QH9VEW011u6e"}]' \
    > test.out 2>&1
eval_tap $? 224 'GrantUserEntitlement' test.out

#- 225 GetUserAppEntitlementByAppId
samples/cli/sample-apps Platform getUserAppEntitlementByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'cLSWBpw0qTAlsy7D' \
    --activeOnly 'false' \
    --appId 'ROAAZfQ7BPsN6dVy' \
    > test.out 2>&1
eval_tap $? 225 'GetUserAppEntitlementByAppId' test.out

#- 226 QueryUserEntitlementsByAppType
samples/cli/sample-apps Platform queryUserEntitlementsByAppType \
    --namespace $AB_NAMESPACE \
    --userId 'PIik3RvBmAkrRbLt' \
    --activeOnly 'true' \
    --limit '2' \
    --offset '7' \
    --appType 'DLC' \
    > test.out 2>&1
eval_tap $? 226 'QueryUserEntitlementsByAppType' test.out

#- 227 GetUserEntitlementByItemId
samples/cli/sample-apps Platform getUserEntitlementByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'Ys3YGCMXU4cIlzCf' \
    --activeOnly 'true' \
    --entitlementClazz 'APP' \
    --itemId 'UyP1UfbEVFVog11G' \
    > test.out 2>&1
eval_tap $? 227 'GetUserEntitlementByItemId' test.out

#- 228 GetUserActiveEntitlementsByItemIds
samples/cli/sample-apps Platform getUserActiveEntitlementsByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'BevoIu8A9rVaT6P8' \
    --ids '["SMxbffvtKBoOYheq", "77xNeELBZ6Ge9hfQ", "Bi6lMssNr6JvG0K6"]' \
    > test.out 2>&1
eval_tap $? 228 'GetUserActiveEntitlementsByItemIds' test.out

#- 229 GetUserEntitlementBySku
samples/cli/sample-apps Platform getUserEntitlementBySku \
    --namespace $AB_NAMESPACE \
    --userId 'Y0R2O33QonC0wxzA' \
    --activeOnly 'false' \
    --entitlementClazz 'OPTIONBOX' \
    --sku 'CutLTji8dYHTMSqh' \
    > test.out 2>&1
eval_tap $? 229 'GetUserEntitlementBySku' test.out

#- 230 ExistsAnyUserActiveEntitlement
samples/cli/sample-apps Platform existsAnyUserActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'bpYSgIAWDlgRHDcC' \
    --appIds '["M1u7JdCVGPY2PUf7", "Ex83wFtuIOfhae2C", "NEnn0tBxKEFBqb4C"]' \
    --itemIds '["yw8RWN5krJZ6qLSo", "frHQQCDTZYOearmX", "b9c9R2TFwDZGH1xP"]' \
    --skus '["RDrECCWX8PQ6bFsg", "g7lbOHLnXwZ2qtgr", "lzdzQsvEwfL7xhm7"]' \
    > test.out 2>&1
eval_tap $? 230 'ExistsAnyUserActiveEntitlement' test.out

#- 231 ExistsAnyUserActiveEntitlementByItemIds
samples/cli/sample-apps Platform existsAnyUserActiveEntitlementByItemIds \
    --namespace $AB_NAMESPACE \
    --userId '2i3EHxxZABoeb38G' \
    --itemIds '["oku7fGmKJ7C21Y8U", "Lq6HfiXR6jGwwSZK", "hI2d8SxG6i2u0QxS"]' \
    > test.out 2>&1
eval_tap $? 231 'ExistsAnyUserActiveEntitlementByItemIds' test.out

#- 232 GetUserAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform getUserAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --userId '4LROZj2Mfot60ulB' \
    --appId 'UNaYoolPIM9U0nj1' \
    > test.out 2>&1
eval_tap $? 232 'GetUserAppEntitlementOwnershipByAppId' test.out

#- 233 GetUserEntitlementOwnershipByItemId
samples/cli/sample-apps Platform getUserEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --userId '15GuzSJbzHdXq8oi' \
    --entitlementClazz 'MEDIA' \
    --itemId 'tA4S4JLMLuBR5JL4' \
    > test.out 2>&1
eval_tap $? 233 'GetUserEntitlementOwnershipByItemId' test.out

#- 234 GetUserEntitlementOwnershipByItemIds
samples/cli/sample-apps Platform getUserEntitlementOwnershipByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'ZjaK8x6kB2Nmi7IX' \
    --ids '["2y1bcEondr7LGFSJ", "1dmlAoWH0PsuiYIs", "7Lty2gafsL301ZDJ"]' \
    > test.out 2>&1
eval_tap $? 234 'GetUserEntitlementOwnershipByItemIds' test.out

#- 235 GetUserEntitlementOwnershipBySku
samples/cli/sample-apps Platform getUserEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --userId 'YzL8Q7IjtDslyZaU' \
    --entitlementClazz 'APP' \
    --sku '3OYdGNZ8nRFLFu7L' \
    > test.out 2>&1
eval_tap $? 235 'GetUserEntitlementOwnershipBySku' test.out

#- 236 RevokeAllEntitlements
samples/cli/sample-apps Platform revokeAllEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'ZI3aMasIn9wsR2e5' \
    > test.out 2>&1
eval_tap $? 236 'RevokeAllEntitlements' test.out

#- 237 RevokeUserEntitlements
samples/cli/sample-apps Platform revokeUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'Am0e7ZNuKil0R4rZ' \
    --entitlementIds 'TiYvFWbjY5MQPOBz' \
    > test.out 2>&1
eval_tap $? 237 'RevokeUserEntitlements' test.out

#- 238 GetUserEntitlement
samples/cli/sample-apps Platform getUserEntitlement \
    --entitlementId 'hfEhoxMkVfIFy56E' \
    --namespace $AB_NAMESPACE \
    --userId 'TpRRKbDwferJGkOv' \
    > test.out 2>&1
eval_tap $? 238 'GetUserEntitlement' test.out

#- 239 UpdateUserEntitlement
samples/cli/sample-apps Platform updateUserEntitlement \
    --entitlementId '9De0FFaQ1ELjRNmq' \
    --namespace $AB_NAMESPACE \
    --userId 'XSS4ZgIrZrpQJy2v' \
    --body '{"endDate": "1972-07-16T00:00:00Z", "nullFieldList": ["j9cLEerwA6DoQmI6", "2UrV3C8647qhQXtY", "xaNK41wg3ahTYz5l"], "startDate": "1977-11-20T00:00:00Z", "status": "CONSUMED", "useCount": 95}' \
    > test.out 2>&1
eval_tap $? 239 'UpdateUserEntitlement' test.out

#- 240 ConsumeUserEntitlement
samples/cli/sample-apps Platform consumeUserEntitlement \
    --entitlementId 'FHWr5EdrAes98PSf' \
    --namespace $AB_NAMESPACE \
    --userId 'S2eCLQrwVWQmorKe' \
    --body '{"options": ["LPWeBe0eZIFVFErt", "smJFr2bOmE5N03AN", "jITnboBb3O9Y4Rfx"], "requestId": "ODb0Pud7P2Cys6CD", "useCount": 67}' \
    > test.out 2>&1
eval_tap $? 240 'ConsumeUserEntitlement' test.out

#- 241 DisableUserEntitlement
samples/cli/sample-apps Platform disableUserEntitlement \
    --entitlementId '84wl3vZu35x2yiW1' \
    --namespace $AB_NAMESPACE \
    --userId 'Us3Q9GoZ9g8QWkD4' \
    > test.out 2>&1
eval_tap $? 241 'DisableUserEntitlement' test.out

#- 242 EnableUserEntitlement
samples/cli/sample-apps Platform enableUserEntitlement \
    --entitlementId '9lyp4wwRpLOgKJIr' \
    --namespace $AB_NAMESPACE \
    --userId 'dlAUsFGqgACwufOr' \
    > test.out 2>&1
eval_tap $? 242 'EnableUserEntitlement' test.out

#- 243 GetUserEntitlementHistories
samples/cli/sample-apps Platform getUserEntitlementHistories \
    --entitlementId 'G76J7iw4MjnrpU72' \
    --namespace $AB_NAMESPACE \
    --userId 'bFhsJ6FSkF2zc9L0' \
    > test.out 2>&1
eval_tap $? 243 'GetUserEntitlementHistories' test.out

#- 244 RevokeUserEntitlement
samples/cli/sample-apps Platform revokeUserEntitlement \
    --entitlementId '9UDYxTV9nmfenavd' \
    --namespace $AB_NAMESPACE \
    --userId 'WgxODrGC6YWPBjxE' \
    > test.out 2>&1
eval_tap $? 244 'RevokeUserEntitlement' test.out

#- 245 RevokeUseCount
samples/cli/sample-apps Platform revokeUseCount \
    --entitlementId 'F1HpkssUqh6GWVrq' \
    --namespace $AB_NAMESPACE \
    --userId 'V1OEx328tE7OruJ5' \
    --body '{"reason": "0nEEvqLb3EGW9wja", "useCount": 86}' \
    > test.out 2>&1
eval_tap $? 245 'RevokeUseCount' test.out

#- 246 SellUserEntitlement
samples/cli/sample-apps Platform sellUserEntitlement \
    --entitlementId 'ePofW7SbcyO5jAYu' \
    --namespace $AB_NAMESPACE \
    --userId 'yOoZwdmKitPGjavr' \
    --body '{"requestId": "04DenJ3CqNNs4rl8", "useCount": 18}' \
    > test.out 2>&1
eval_tap $? 246 'SellUserEntitlement' test.out

#- 247 FulfillItem
samples/cli/sample-apps Platform fulfillItem \
    --namespace $AB_NAMESPACE \
    --userId 'HVmt54VAhFuZH5Ki' \
    --body '{"duration": 58, "endDate": "1996-07-12T00:00:00Z", "itemId": "JUX254ILrPu4Gj8y", "itemSku": "tDVR0SbOI6OwNME7", "language": "TGANdqNWYWtJVGUo", "metadata": {"j2Gqew2L4YfwIGFF": {}, "izFD1hw0yNEVSllQ": {}, "EjlmxRXNYgMigaER": {}}, "order": {"currency": {"currencyCode": "mifKDmlXVotuJTVW", "currencySymbol": "2zy6kaMOvqavzmbw", "currencyType": "REAL", "decimals": 65, "namespace": "FJRihPfKGjJwKnSk"}, "ext": {"kkIJ2vZB4f33zcoB": {}, "qtvKZsBFfvrPc71y": {}, "b1yj5DgVHsvqBNql": {}}, "free": true}, "orderNo": "brHKyMSVTeOdr11h", "origin": "Nintendo", "overrideBundleItemQty": {"KtpaVJUEGozecWk9": 94, "1PLYY8JU4fda8OzE": 37, "4Nbp3SQEsZ3Nomce": 77}, "quantity": 39, "region": "LNYpF8LAnxtgJCec", "source": "ORDER_REVOCATION", "startDate": "1987-05-27T00:00:00Z", "storeId": "50aKUT9y303b7FQz"}' \
    > test.out 2>&1
eval_tap $? 247 'FulfillItem' test.out

#- 248 RedeemCode
samples/cli/sample-apps Platform redeemCode \
    --namespace $AB_NAMESPACE \
    --userId 'doihzDXfMVUgh58P' \
    --body '{"code": "mcjQUuasnfwla8EA", "language": "TX", "region": "7OWZ5aoaJDkqaw8k"}' \
    > test.out 2>&1
eval_tap $? 248 'RedeemCode' test.out

#- 249 FulfillRewards
samples/cli/sample-apps Platform fulfillRewards \
    --namespace $AB_NAMESPACE \
    --userId 'MtSVb0C3XsX0aWSL' \
    --body '{"metadata": {"dROxE4PyIVQTxVdk": {}, "upFskTVxl4biBAnv": {}, "SXSmhJjFOcsNDTHj": {}}, "origin": "Other", "rewards": [{"currency": {"currencyCode": "3JYioyUGTwhD5vR3", "namespace": "kMAGXG7aObZuns5g"}, "item": {"itemId": "gD1FDtdjcsXwbw0H", "itemSku": "A10Tk8hiCbECPq9C", "itemType": "IJe6YDbN8tIsG0Mv"}, "quantity": 7, "type": "ITEM"}, {"currency": {"currencyCode": "JrfFGLBjDpJrxeRb", "namespace": "yMJELjihsSlZK9nS"}, "item": {"itemId": "0oSEhwuyaP74B5eo", "itemSku": "5tusDmJJk1GIILXs", "itemType": "YADwdmuQCg8p0oSu"}, "quantity": 62, "type": "ITEM"}, {"currency": {"currencyCode": "96KB9353OHvoBFh1", "namespace": "sw926uZqAfn61Gja"}, "item": {"itemId": "MnJSZqZmtuw1yyQL", "itemSku": "XK0Vm9gM6tkn3FmA", "itemType": "JdenbVp69w5RATKz"}, "quantity": 32, "type": "ITEM"}], "source": "CONSUME_ENTITLEMENT", "transactionId": "rbKW6rt1VbW4tEUl"}' \
    > test.out 2>&1
eval_tap $? 249 'FulfillRewards' test.out

#- 250 QueryUserIAPOrders
samples/cli/sample-apps Platform queryUserIAPOrders \
    --namespace $AB_NAMESPACE \
    --userId 'miAUxXDfmmcdHQbf' \
    --endTime '5C0fMRiQNK1tamsw' \
    --limit '82' \
    --offset '51' \
    --productId 'D0bygJpkSf3bvN8J' \
    --startTime 'rE1Z2cok34VJT63P' \
    --status 'FULFILLED' \
    --type 'PLAYSTATION' \
    > test.out 2>&1
eval_tap $? 250 'QueryUserIAPOrders' test.out

#- 251 QueryAllUserIAPOrders
samples/cli/sample-apps Platform queryAllUserIAPOrders \
    --namespace $AB_NAMESPACE \
    --userId 'pI3XkiqKXnyX0lCc' \
    > test.out 2>&1
eval_tap $? 251 'QueryAllUserIAPOrders' test.out

#- 252 QueryUserIAPConsumeHistory
samples/cli/sample-apps Platform queryUserIAPConsumeHistory \
    --namespace $AB_NAMESPACE \
    --userId 'm8deOnt5JTTXyOnE' \
    --endTime '8t37MF98OAH93Mrk' \
    --limit '93' \
    --offset '87' \
    --startTime 'oohsy6WBHzkZcFWO' \
    --status 'PENDING' \
    --type 'PLAYSTATION' \
    > test.out 2>&1
eval_tap $? 252 'QueryUserIAPConsumeHistory' test.out

#- 253 MockFulfillIAPItem
samples/cli/sample-apps Platform mockFulfillIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'BITmjMY34pwFOUuF' \
    --body '{"itemIdentityType": "ITEM_SKU", "language": "NBeS-xd", "productId": "DX6ApF3LjPwzkRSn", "region": "mH1u5fYETJjQE5HL", "transactionId": "yuVMcsimpVvPGOmC", "type": "PLAYSTATION"}' \
    > test.out 2>&1
eval_tap $? 253 'MockFulfillIAPItem' test.out

#- 254 QueryUserOrders
samples/cli/sample-apps Platform queryUserOrders \
    --namespace $AB_NAMESPACE \
    --userId 'OwAvnWgcM6JuqozA' \
    --itemId '7ON6qEBF7JaohEu3' \
    --limit '10' \
    --offset '79' \
    --status 'CHARGEBACK' \
    > test.out 2>&1
eval_tap $? 254 'QueryUserOrders' test.out

#- 255 AdminCreateUserOrder
samples/cli/sample-apps Platform adminCreateUserOrder \
    --namespace $AB_NAMESPACE \
    --userId 'GmmNA0AhNuVaJYqd' \
    --body '{"currencyCode": "xx7wqHv5wqFRBnx3", "currencyNamespace": "lKjfMHOJio4eT5OD", "discountedPrice": 27, "ext": {"pv0MJn9kd3DHAZUg": {}, "SM1wGMo0NZfd1IgX": {}, "WeXlYPTclTP5bDUw": {}}, "itemId": "QhA2eAXSqgDF5dn7", "language": "NTO9Wttf8SV21tHn", "options": {"skipPriceValidation": true}, "platform": "Playstation", "price": 14, "quantity": 66, "region": "uCF45PS3T2hfgjqf", "returnUrl": "CiazNhvUscfzzRG1", "sandbox": false, "sectionId": "fi1wxFsPH5Ss8JL4"}' \
    > test.out 2>&1
eval_tap $? 255 'AdminCreateUserOrder' test.out

#- 256 CountOfPurchasedItem
samples/cli/sample-apps Platform countOfPurchasedItem \
    --namespace $AB_NAMESPACE \
    --userId '9wXPXC8FThZiIEqV' \
    --itemId 'ZaLtrd3GAbpYWBYS' \
    > test.out 2>&1
eval_tap $? 256 'CountOfPurchasedItem' test.out

#- 257 GetUserOrder
samples/cli/sample-apps Platform getUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo '2PFB53kdKxfNbJli' \
    --userId 'lkNOqh1YaWtiqVP4' \
    > test.out 2>&1
eval_tap $? 257 'GetUserOrder' test.out

#- 258 UpdateUserOrderStatus
samples/cli/sample-apps Platform updateUserOrderStatus \
    --namespace $AB_NAMESPACE \
    --orderNo 'wUFTwoNUmtzzkILF' \
    --userId 'ZKKlBwppi7Ni6QVz' \
    --body '{"status": "FULFILL_FAILED", "statusReason": "T39KXuUttXQajhKr"}' \
    > test.out 2>&1
eval_tap $? 258 'UpdateUserOrderStatus' test.out

#- 259 FulfillUserOrder
samples/cli/sample-apps Platform fulfillUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'KUyOENZBjFXngzGt' \
    --userId 'OSJ27BcZhkgjtvMG' \
    > test.out 2>&1
eval_tap $? 259 'FulfillUserOrder' test.out

#- 260 GetUserOrderGrant
samples/cli/sample-apps Platform getUserOrderGrant \
    --namespace $AB_NAMESPACE \
    --orderNo 'GbkQCe2k1C7PsSIV' \
    --userId 'rec2jKX20PdqcGMe' \
    > test.out 2>&1
eval_tap $? 260 'GetUserOrderGrant' test.out

#- 261 GetUserOrderHistories
samples/cli/sample-apps Platform getUserOrderHistories \
    --namespace $AB_NAMESPACE \
    --orderNo 'CBJ8TVIwmBWvdQWE' \
    --userId '5iH7ystOPbys3ljx' \
    > test.out 2>&1
eval_tap $? 261 'GetUserOrderHistories' test.out

#- 262 ProcessUserOrderNotification
samples/cli/sample-apps Platform processUserOrderNotification \
    --namespace $AB_NAMESPACE \
    --orderNo 'XiJM65FY1QLH9UF9' \
    --userId 'rOQHKDgqqsu2zg0a' \
    --body '{"additionalData": {"cardSummary": "uGXEgHs3wyufWoTr"}, "authorisedTime": "1979-01-08T00:00:00Z", "chargebackReversedTime": "1991-08-18T00:00:00Z", "chargebackTime": "1997-07-07T00:00:00Z", "chargedTime": "1987-08-12T00:00:00Z", "createdTime": "1981-12-20T00:00:00Z", "currency": {"currencyCode": "9mt5w57jqhn9Yl52", "currencySymbol": "FCg02Q6cGVATNnny", "currencyType": "REAL", "decimals": 24, "namespace": "jJZ3e0B5VEXGgv8b"}, "customParameters": {"B2lML27Agq8N5l4a": {}, "roHf9oVlSLmHqHGH": {}, "24Pkq0vi6QNW085Z": {}}, "extOrderNo": "GIMoD464hUPVyOP9", "extTxId": "9kpqCh1hmwUHS3qx", "extUserId": "g2zbdgfGNGu05qvJ", "issuedAt": "1986-07-13T00:00:00Z", "metadata": {"zGToR9EGK6uoxQ27": "lfVMdV8o6N0zUXDj", "w2Pt2jmwKNHCOjBd": "ewEtLfLHZyn8QxOH", "RQPuLqYkwwHZyzBl": "1Xbk45q64o37eBRu"}, "namespace": "W9YPA0TJbW2HJ6ha", "nonceStr": "wBAmS9HsuijZJRwQ", "paymentMethod": "Ze6Tb8ZhLa2Qk9Fx", "paymentMethodFee": 15, "paymentOrderNo": "fYYRyhNvhQ02wjmo", "paymentProvider": "CHECKOUT", "paymentProviderFee": 8, "paymentStationUrl": "oB2V83upBz5P21a2", "price": 69, "refundedTime": "1994-02-01T00:00:00Z", "salesTax": 43, "sandbox": true, "sku": "CX87cOIH1p6rw7yw", "status": "REFUNDING", "statusReason": "fzc9SGLCdb40gLpa", "subscriptionId": "bwyLSKPnw5T45a96", "subtotalPrice": 67, "targetNamespace": "7XjJiWFSTragzg24", "targetUserId": "Xn2vrAZUHSQxddKz", "tax": 71, "totalPrice": 14, "totalTax": 83, "txEndTime": "1976-05-24T00:00:00Z", "type": "ZTBaq6VyxRKFNslY", "userId": "xOseXN6ehev747Xq", "vat": 34}' \
    > test.out 2>&1
eval_tap $? 262 'ProcessUserOrderNotification' test.out

#- 263 DownloadUserOrderReceipt
samples/cli/sample-apps Platform downloadUserOrderReceipt \
    --namespace $AB_NAMESPACE \
    --orderNo 'Y7V5YsKreiGvL0Gw' \
    --userId 'VKxK7JihrKXfYZ6E' \
    > test.out 2>&1
eval_tap $? 263 'DownloadUserOrderReceipt' test.out

#- 264 CreateUserPaymentOrder
samples/cli/sample-apps Platform createUserPaymentOrder \
    --namespace $AB_NAMESPACE \
    --userId 'xaOAnbaocgYpIvLf' \
    --body '{"currencyCode": "fkoMdXmVcsf8rIn2", "currencyNamespace": "P3ua9U2YfkJoi7yE", "customParameters": {"97Ca4n2KhUQ07h7W": {}, "U9UsSrgdRrdFubdG": {}, "tlr5Bk45CcB2tReg": {}}, "description": "01VoSiidxBKw9m95", "extOrderNo": "ah8meCMzvgkqCYNh", "extUserId": "wLM8FRXnZL9stI0Y", "itemType": "APP", "language": "kvh-pyMt", "metadata": {"73cm3CjRP6BjrxUJ": "nFynstVowVixLH7z", "lRlHF1SwMt1FOmpJ": "Ox4f46Sg3pFlWLeE", "LvlfQGrqBHy1rqTw": "aVM0Lj1ub7uXmpVP"}, "notifyUrl": "7fhSdI0lbpXeoW77", "omitNotification": true, "platform": "awkPXyRxJwoP9RDu", "price": 42, "recurringPaymentOrderNo": "3LhiENfh8GgyPWB8", "region": "qRHEVLmhtH9hwY4X", "returnUrl": "11ssJvUKVcDqk4xy", "sandbox": true, "sku": "Fc42zxeOd1tWCR5S", "subscriptionId": "nDxijCHqGh25HNBj", "title": "1PVuKCYvjI9CdkjI"}' \
    > test.out 2>&1
eval_tap $? 264 'CreateUserPaymentOrder' test.out

#- 265 RefundUserPaymentOrder
samples/cli/sample-apps Platform refundUserPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo '96vwckVXnmWBpnnx' \
    --userId 'gjqBkR8CaL9Rznkf' \
    --body '{"description": "qJm3AZzi3O9G8Vlw"}' \
    > test.out 2>&1
eval_tap $? 265 'RefundUserPaymentOrder' test.out

#- 266 ApplyUserRedemption
samples/cli/sample-apps Platform applyUserRedemption \
    --namespace $AB_NAMESPACE \
    --userId 'iSi7CcO5hSoGCmO7' \
    --body '{"code": "0CxvNSTTy2R6BZT4", "orderNo": "eeegUY0QmNjrsD0S"}' \
    > test.out 2>&1
eval_tap $? 266 'ApplyUserRedemption' test.out

#- 267 DoRevocation
samples/cli/sample-apps Platform doRevocation \
    --namespace $AB_NAMESPACE \
    --userId 'l8p7DracoJ9R6Cdn' \
    --body '{"meta": {"U3BWuCmysYarL9mb": {}, "NWv5wXozfzNvJWmV": {}, "YM8KUWqO2jhg62Is": {}}, "revokeEntries": [{"currency": {"balanceOrigin": "Steam", "currencyCode": "d1inScOyWfzHt7h9", "namespace": "Dp20woWChYj0Hq9Q"}, "entitlement": {"entitlementId": "drEPPv8Wgeg5HdTm"}, "item": {"itemIdentity": "BL7ebvhKB2Z6lraE", "itemIdentityType": "ITEM_ID", "origin": "Twitch"}, "quantity": 21, "type": "ENTITLEMENT"}, {"currency": {"balanceOrigin": "Nintendo", "currencyCode": "OtsA3acV6gOoCKnv", "namespace": "i6idy5pGAICasZQJ"}, "entitlement": {"entitlementId": "WAFk9ubEkmYTxic4"}, "item": {"itemIdentity": "FLy8KvW6nPsr7c23", "itemIdentityType": "ITEM_ID", "origin": "System"}, "quantity": 30, "type": "ITEM"}, {"currency": {"balanceOrigin": "Epic", "currencyCode": "nVaZ0auNG8OsMVq9", "namespace": "gb0rXd3oL5Wksi1H"}, "entitlement": {"entitlementId": "5uQeJPN84lwjZPMo"}, "item": {"itemIdentity": "fIkwNcbMjqFsIYoQ", "itemIdentityType": "ITEM_ID", "origin": "Oculus"}, "quantity": 55, "type": "ENTITLEMENT"}], "source": "IAP", "transactionId": "YS40NPKPJqTJuDsO"}' \
    > test.out 2>&1
eval_tap $? 267 'DoRevocation' test.out

#- 268 RegisterXblSessions
samples/cli/sample-apps Platform registerXblSessions \
    --namespace $AB_NAMESPACE \
    --userId 'pCIy1LNKHRA74xSj' \
    --body '{"gameSessionId": "9AtuC4YohktwYlmH", "payload": {"I3lLw7xVPKqQJhS2": {}, "loZbCeqp7rZhrpfA": {}, "uhkXWbIsYpDmswsA": {}}, "scid": "af3WaRE4iUmdDXbg", "sessionTemplateName": "78i0CkCO27JLtmFz"}' \
    > test.out 2>&1
eval_tap $? 268 'RegisterXblSessions' test.out

#- 269 QueryUserSubscriptions
samples/cli/sample-apps Platform queryUserSubscriptions \
    --namespace $AB_NAMESPACE \
    --userId 'QictCGTBd8C17Pv2' \
    --chargeStatus 'SETUP' \
    --itemId '1Y0KDS4bZiz9Z7IY' \
    --limit '8' \
    --offset '7' \
    --sku 'AN9fwVuFpGdTJfwm' \
    --status 'ACTIVE' \
    --subscribedBy 'USER' \
    > test.out 2>&1
eval_tap $? 269 'QueryUserSubscriptions' test.out

#- 270 GetUserSubscriptionActivities
samples/cli/sample-apps Platform getUserSubscriptionActivities \
    --namespace $AB_NAMESPACE \
    --userId 'JehYXXv7y2M33UtR' \
    --excludeSystem 'true' \
    --limit '87' \
    --offset '42' \
    --subscriptionId 'gW6Tc8JKFpR6Fn5E' \
    > test.out 2>&1
eval_tap $? 270 'GetUserSubscriptionActivities' test.out

#- 271 PlatformSubscribeSubscription
samples/cli/sample-apps Platform platformSubscribeSubscription \
    --namespace $AB_NAMESPACE \
    --userId '8bzOQAX1lut69dYA' \
    --body '{"grantDays": 30, "itemId": "5hCv68w8owRUJchV", "language": "V5RFpA0PzFdsowMc", "reason": "Atm9MsgsEmp8xZcX", "region": "QpL5fVkd7fjQwHdS", "source": "IxncjBC83rTLigzi"}' \
    > test.out 2>&1
eval_tap $? 271 'PlatformSubscribeSubscription' test.out

#- 272 CheckUserSubscriptionSubscribableByItemId
samples/cli/sample-apps Platform checkUserSubscriptionSubscribableByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'c3W22u2iAByIebib' \
    --itemId 'ivSEAAP6TPijWUIV' \
    > test.out 2>&1
eval_tap $? 272 'CheckUserSubscriptionSubscribableByItemId' test.out

#- 273 GetUserSubscription
samples/cli/sample-apps Platform getUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'inmpjATf1nggxOiS' \
    --userId 'S3WCr9IiPfoFkDES' \
    > test.out 2>&1
eval_tap $? 273 'GetUserSubscription' test.out

#- 274 DeleteUserSubscription
samples/cli/sample-apps Platform deleteUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'T2wAwsgSw7phaizl' \
    --userId 'EprZ8jYNK9ZKTeVX' \
    > test.out 2>&1
eval_tap $? 274 'DeleteUserSubscription' test.out

#- 275 CancelSubscription
samples/cli/sample-apps Platform cancelSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'nwSOgdEP1bXSCqHQ' \
    --userId 'HQLGbbp6rScpbghr' \
    --force 'false' \
    --body '{"immediate": true, "reason": "plC2lmI8nAKLATty"}' \
    > test.out 2>&1
eval_tap $? 275 'CancelSubscription' test.out

#- 276 GrantDaysToSubscription
samples/cli/sample-apps Platform grantDaysToSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId '19xYpXVwZ0KZsNZA' \
    --userId 'N9WGL6EUYHqNuAQO' \
    --body '{"grantDays": 30, "reason": "D6oar34K2rZH1mTe"}' \
    > test.out 2>&1
eval_tap $? 276 'GrantDaysToSubscription' test.out

#- 277 GetUserSubscriptionBillingHistories
samples/cli/sample-apps Platform getUserSubscriptionBillingHistories \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'xxDwXrOT9xYblG9o' \
    --userId 'xrdTS8nivRjvCQS0' \
    --excludeFree 'false' \
    --limit '3' \
    --offset '11' \
    > test.out 2>&1
eval_tap $? 277 'GetUserSubscriptionBillingHistories' test.out

#- 278 ProcessUserSubscriptionNotification
samples/cli/sample-apps Platform processUserSubscriptionNotification \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'VNfwET5JMJPoir53' \
    --userId 'fPor8F4sSV4sOyf3' \
    --body '{"additionalData": {"cardSummary": "RmQShFsNFZpinc6d"}, "authorisedTime": "1987-10-14T00:00:00Z", "chargebackReversedTime": "1998-04-15T00:00:00Z", "chargebackTime": "1986-04-07T00:00:00Z", "chargedTime": "1972-08-24T00:00:00Z", "createdTime": "1993-01-26T00:00:00Z", "currency": {"currencyCode": "OwTQ6gkuF7YqrmuO", "currencySymbol": "ymVOaKQoI3eOIhdH", "currencyType": "REAL", "decimals": 33, "namespace": "nveI16yfth2kPNOc"}, "customParameters": {"yw4Cu7Qh62NJU23Q": {}, "29rQHRR5IP32mLuQ": {}, "gro6n86NIhNm1P6Q": {}}, "extOrderNo": "x0yFyUf7uBdihigq", "extTxId": "T3i6SAbEr26gkdKD", "extUserId": "xTaHfw3EJvlz5PPc", "issuedAt": "1974-06-18T00:00:00Z", "metadata": {"QRfoGcco2d0qg8v2": "qSAwcPcU1x7RU7l9", "C02ZNk8cHTVvzOJh": "NVTNumuYIB6hBZc5", "80VI17YsGd56NFYZ": "4GxlK93Q3phtujTq"}, "namespace": "RfEPTjwEJWjEKQgM", "nonceStr": "OLRuXVy1XuecynFO", "paymentMethod": "hKbfXfEDYkzR5gzi", "paymentMethodFee": 9, "paymentOrderNo": "JXP5kXFOqEpLvR9e", "paymentProvider": "ALIPAY", "paymentProviderFee": 97, "paymentStationUrl": "YGjoEjQH8kJTS1F0", "price": 51, "refundedTime": "1979-08-09T00:00:00Z", "salesTax": 37, "sandbox": true, "sku": "LGBrZ57bppguaOBD", "status": "CHARGED", "statusReason": "mLGhJ7evTyLJ50V4", "subscriptionId": "ZsnYcCXhgc0aCUAZ", "subtotalPrice": 57, "targetNamespace": "NHu9d7JbGfCkZe9Y", "targetUserId": "fH81JAetgz7vrej4", "tax": 17, "totalPrice": 68, "totalTax": 13, "txEndTime": "1978-11-11T00:00:00Z", "type": "OtzxmqJPSlG4Selp", "userId": "JOAdxehygvTVJcwL", "vat": 98}' \
    > test.out 2>&1
eval_tap $? 278 'ProcessUserSubscriptionNotification' test.out

#- 279 AcquireUserTicket
samples/cli/sample-apps Platform acquireUserTicket \
    --boothName 'B8BiUQQJzg3MpSev' \
    --namespace $AB_NAMESPACE \
    --userId 'LwPNzsQmEWdxC9Hv' \
    --body '{"count": 90, "orderNo": "ijD9zcoz07YF63XW"}' \
    > test.out 2>&1
eval_tap $? 279 'AcquireUserTicket' test.out

#- 280 QueryUserCurrencyWallets
samples/cli/sample-apps Platform queryUserCurrencyWallets \
    --namespace $AB_NAMESPACE \
    --userId '2i5Pk9exzbWK11Hl' \
    > test.out 2>&1
eval_tap $? 280 'QueryUserCurrencyWallets' test.out

#- 281 DebitUserWalletByCurrencyCode
samples/cli/sample-apps Platform debitUserWalletByCurrencyCode \
    --currencyCode 'BJU5wf3H9jWBgjeK' \
    --namespace $AB_NAMESPACE \
    --userId 'UgxNRyQ8f7ShU7gj' \
    --body '{"allowOverdraft": false, "amount": 92, "balanceOrigin": "Steam", "balanceSource": "DLC_REVOCATION", "metadata": {"5dNCo9bpdfENDCaf": {}, "tisF95CLschtP6eC": {}, "6zhAk5r9mtJvBpAA": {}}, "reason": "2g8qc5GtDgwWuFUd"}' \
    > test.out 2>&1
eval_tap $? 281 'DebitUserWalletByCurrencyCode' test.out

#- 282 ListUserCurrencyTransactions
samples/cli/sample-apps Platform listUserCurrencyTransactions \
    --currencyCode 'SN2VOsWaYLqIPiB8' \
    --namespace $AB_NAMESPACE \
    --userId 'fQ6EP0Q454yq00ZT' \
    --limit '43' \
    --offset '72' \
    > test.out 2>&1
eval_tap $? 282 'ListUserCurrencyTransactions' test.out

#- 283 CheckWallet
eval_tap 0 283 'CheckWallet # SKIP deprecated' test.out

#- 284 CreditUserWallet
samples/cli/sample-apps Platform creditUserWallet \
    --currencyCode 'tPnxz6mJtSLTnwFv' \
    --namespace $AB_NAMESPACE \
    --userId 'KWrXly3iX7GEkYKN' \
    --body '{"amount": 42, "expireAt": "1989-08-31T00:00:00Z", "metadata": {"JCwNAXJ96oDZwofD": {}, "Bg7FOgG1unFNAMIG": {}, "COJmhJLsfAFn7jJW": {}}, "origin": "GooglePlay", "reason": "TA6rxSWvFXGT1qgK", "source": "DLC"}' \
    > test.out 2>&1
eval_tap $? 284 'CreditUserWallet' test.out

#- 285 DebitByWalletPlatform
samples/cli/sample-apps Platform debitByWalletPlatform \
    --currencyCode 'Ei5yY2GfS7S8H4wL' \
    --namespace $AB_NAMESPACE \
    --userId 'E7AS9Hiu9NNX7XRm' \
    --body '{"amount": 95, "debitBalanceSource": "OTHER", "metadata": {"DqAyY2XLmThNJll0": {}, "yUMfh2PDTWemt7LG": {}, "az2daZqPJrUas2P3": {}}, "reason": "mw1NygmZMCFqvgZq", "walletPlatform": "Xbox"}' \
    > test.out 2>&1
eval_tap $? 285 'DebitByWalletPlatform' test.out

#- 286 PayWithUserWallet
samples/cli/sample-apps Platform payWithUserWallet \
    --currencyCode 'blXY39Mxn70dukyB' \
    --namespace $AB_NAMESPACE \
    --userId 'WHU8UaIIiHRg9BFo' \
    --body '{"amount": 20, "metadata": {"t9LKEs3Aux7t9Kw9": {}, "cTRpzYWGnnjXfggX": {}, "eLWkNCUhOCFL0idj": {}}, "walletPlatform": "Steam"}' \
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
    --storeId 'ZxljHjkYQf0CBhba' \
    > test.out 2>&1
eval_tap $? 292 'ListViews' test.out

#- 293 CreateView
samples/cli/sample-apps Platform createView \
    --namespace $AB_NAMESPACE \
    --storeId '22lVnweK6peo5PPE' \
    --body '{"displayOrder": 88, "localizations": {"zMxQba5PoRqxYVtI": {"description": "awdEyO9vjcp2ZHSQ", "localExt": {"jMe2BJcmngTKLhtO": {}, "WtIVqPpf0eLCpKAG": {}, "1F76RbVpuukQYUmW": {}}, "longDescription": "eMxf6BJJb4qnGgRa", "title": "eFrKl1EyrXTXjhLf"}, "T3vOM2OU0NhrDXNP": {"description": "9iskNUzMixLNJqbo", "localExt": {"59yMqm0LXYTlBUl2": {}, "qqmc4KvXuuJReacl": {}, "SA7sEHadIxAD0AYp": {}}, "longDescription": "9RExvG2ZLQw9xIht", "title": "yap7fz0iKXGq6gmC"}, "IIQOEK4I2ldbNplK": {"description": "5yyduQyy07OuQQdX", "localExt": {"BqQb3GzbXTVB8gvo": {}, "TL5DgkpowwpjCw8v": {}, "MZ98CG3MKVugYeJs": {}}, "longDescription": "K7WooKtnledBzgGp", "title": "zxdeGe3dhAf07oPP"}}, "name": "LD8gQ1P8hRU5vG42"}' \
    > test.out 2>&1
eval_tap $? 293 'CreateView' test.out

#- 294 GetView
samples/cli/sample-apps Platform getView \
    --namespace $AB_NAMESPACE \
    --viewId 'aOl3Bg20usRgFGXI' \
    --storeId 'fFujzbbUTQh7CRfL' \
    > test.out 2>&1
eval_tap $? 294 'GetView' test.out

#- 295 UpdateView
samples/cli/sample-apps Platform updateView \
    --namespace $AB_NAMESPACE \
    --viewId 'RH0GqYHtOCKBYcoQ' \
    --storeId 'MX2Hdcs6ADSgwW5c' \
    --body '{"displayOrder": 0, "localizations": {"dMXdhfEVB2tSzmHW": {"description": "gR5CTcQp3K979gpD", "localExt": {"2JmqmHwcuT0azp3e": {}, "3MTlbRf0PRiEUJO3": {}, "6tzHBeZmIbXeL0wE": {}}, "longDescription": "S7h3HpMSNe12f1uL", "title": "LzdOjX47WCD8jQTb"}, "HjAFtfaBkuSyTkcv": {"description": "pqhGFpe99BdlJR5P", "localExt": {"ez5Gh4rjzWUC7cdR": {}, "EBiOpeia1SqUqJ7T": {}, "krjbEvsTa603XO2H": {}}, "longDescription": "BKPs1zfdHiJUQL1C", "title": "fwkhxaOl9Yp6QQct"}, "nFv99NBB9BMRQ4ZL": {"description": "sqERfYe3mfF5Mmra", "localExt": {"eQAXnsC5RpXgwJfs": {}, "fd18Ghl33HwM2ONP": {}, "ksFSAP27r4dmTbaX": {}}, "longDescription": "gfIkdMGvm9cBuhuA", "title": "fHA4JIDqEPRbac9Z"}}, "name": "mvQmZJ0cmcDvAknV"}' \
    > test.out 2>&1
eval_tap $? 295 'UpdateView' test.out

#- 296 DeleteView
samples/cli/sample-apps Platform deleteView \
    --namespace $AB_NAMESPACE \
    --viewId 'D0NUsjGdvE6Zwg6T' \
    --storeId 'aMjqzQUH8W7vxOhU' \
    > test.out 2>&1
eval_tap $? 296 'DeleteView' test.out

#- 297 QueryWallets
eval_tap 0 297 'QueryWallets # SKIP deprecated' test.out

#- 298 BulkCredit
samples/cli/sample-apps Platform bulkCredit \
    --namespace $AB_NAMESPACE \
    --body '[{"creditRequest": {"amount": 78, "expireAt": "1972-01-25T00:00:00Z", "metadata": {"qD3OY0Sjf28toABN": {}, "U22e7rTI5SIuBsPq": {}, "AxSEvsFBwZao5U2C": {}}, "origin": "Xbox", "reason": "81cIPnbLGfXnVFkD", "source": "REWARD"}, "currencyCode": "gtijiFJJVHBp5fIm", "userIds": ["8jJJTq7bBQw0j0C3", "ZL1WPJx89sHe0D7x", "nZUbdPVW9UoOrOFd"]}, {"creditRequest": {"amount": 86, "expireAt": "1983-07-14T00:00:00Z", "metadata": {"mWpSPB9swDByLjV2": {}, "EXlZvVCVsvtLkgYb": {}, "9Gxb1UhTrQmPj99s": {}}, "origin": "Other", "reason": "h6JpknPQYq7WtOkv", "source": "PROMOTION"}, "currencyCode": "kKgSzDh1fyn5QEm6", "userIds": ["RNaNFU7mNvHcFP5Y", "FCyo4gsHAh9NV4TC", "Bzv9iEUoWopdQ0nL"]}, {"creditRequest": {"amount": 4, "expireAt": "1992-12-23T00:00:00Z", "metadata": {"DECaHHMAtavMDg8t": {}, "04oUcI1arpyIX7Ra": {}, "1OXkZrBD4Eys36uy": {}}, "origin": "Playstation", "reason": "FFKLIZpKCQZfM8CK", "source": "PURCHASE"}, "currencyCode": "nLypLGhLH3SGzKzg", "userIds": ["FIItvC68cI4MZmUD", "wzF3PDqFGSJv62O3", "BoLYbtEfrIZ3vrRm"]}]' \
    > test.out 2>&1
eval_tap $? 298 'BulkCredit' test.out

#- 299 BulkDebit
samples/cli/sample-apps Platform bulkDebit \
    --namespace $AB_NAMESPACE \
    --body '[{"currencyCode": "zy7I1ax3tSRHY7a9", "request": {"allowOverdraft": false, "amount": 79, "balanceOrigin": "Xbox", "balanceSource": "ORDER_REVOCATION", "metadata": {"8MK1nmH5u8HoWQ6A": {}, "kQ11UALnD5fQR6t7": {}, "ghO77vJ7hN1WjgOU": {}}, "reason": "foRAp74bUdc6cJW1"}, "userIds": ["QEDGN0qzr39Y4fPm", "WBJTIKaWrPzGZd1c", "aHTozSROYWrNWPXF"]}, {"currencyCode": "pGW7ESe84NzRVNpv", "request": {"allowOverdraft": true, "amount": 80, "balanceOrigin": "Nintendo", "balanceSource": "DLC_REVOCATION", "metadata": {"lKHn50vzdeAWlnC3": {}, "8JOlNz32HRzemWLu": {}, "D4iDcRJq85ruk2R7": {}}, "reason": "0tGShxAh2bmQZmtZ"}, "userIds": ["YiZ8PHiwLDyNNBDy", "T6AEjC8YA9xekJlu", "GoGbYFPAtsu3Y6WZ"]}, {"currencyCode": "814pgHMnYG4grHcO", "request": {"allowOverdraft": false, "amount": 16, "balanceOrigin": "GooglePlay", "balanceSource": "EXPIRATION", "metadata": {"BpBRc9Zsmv4l0MMc": {}, "ENzgKlckrPu6bJyv": {}, "aXn9pQOd23WYGmpc": {}}, "reason": "u7BDClCdNFJoDizh"}, "userIds": ["suWrYdyAroqvZ148", "mErM7qMeNOcbrcH9", "GQC5tdIjp1hlvoS7"]}]' \
    > test.out 2>&1
eval_tap $? 299 'BulkDebit' test.out

#- 300 GetWallet
eval_tap 0 300 'GetWallet # SKIP deprecated' test.out

#- 301 SyncOrders
samples/cli/sample-apps Platform syncOrders \
    --nextEvaluatedKey 'hdv9Uen6Mq8vtb4d' \
    --end 'MocZs8EOHctgocS0' \
    --start 'Q3c24P6HShRmKRi0' \
    > test.out 2>&1
eval_tap $? 301 'SyncOrders' test.out

#- 302 TestAdyenConfig
samples/cli/sample-apps Platform testAdyenConfig \
    --sandbox 'false' \
    --body '{"allowedPaymentMethods": ["Cpvyr5mGjfpNVxOq", "l48Nbma0nZHuDHtN", "oWlKN2q4uKXXodWf"], "apiKey": "NNYwLQE0oMYpzMjG", "authoriseAsCapture": false, "blockedPaymentMethods": ["JVZ54VTorrrVwumz", "Xhh61nQl1vSAYSXu", "WC4xZnh4xBzdLpah"], "clientKey": "xZBUMFqOhja7gm1Y", "dropInSettings": "cRQKgLhnz9RmRiAQ", "liveEndpointUrlPrefix": "tgi60P0KmKcRHjix", "merchantAccount": "moVYDwor0RGeKtpw", "notificationHmacKey": "ricRwwag6dfoIUik", "notificationPassword": "8yxsUiuzoEbn6wny", "notificationUsername": "wex2hDWmhuaLAtX5", "returnUrl": "1TJnzDtbbbCNmH0E", "settings": "PMtH2G7lSI7osP8M"}' \
    > test.out 2>&1
eval_tap $? 302 'TestAdyenConfig' test.out

#- 303 TestAliPayConfig
samples/cli/sample-apps Platform testAliPayConfig \
    --sandbox 'true' \
    --body '{"appId": "nuqRiDUxrNJWdA14", "privateKey": "6hQn4loPUhqW0L8L", "publicKey": "b3pmMFfIVBqVTgvY", "returnUrl": "dPCg8nQGz9mjgPgL"}' \
    > test.out 2>&1
eval_tap $? 303 'TestAliPayConfig' test.out

#- 304 TestCheckoutConfig
samples/cli/sample-apps Platform testCheckoutConfig \
    --sandbox 'false' \
    --body '{"publicKey": "PmzDt4gfm5h7FbqO", "secretKey": "YOQMiMu3rBIlMAHV"}' \
    > test.out 2>&1
eval_tap $? 304 'TestCheckoutConfig' test.out

#- 305 DebugMatchedPaymentMerchantConfig
samples/cli/sample-apps Platform debugMatchedPaymentMerchantConfig \
    --namespace 'qQaC8hjGnRDGLKyl' \
    --region 'woEvbzhYGEt2EBN7' \
    > test.out 2>&1
eval_tap $? 305 'DebugMatchedPaymentMerchantConfig' test.out

#- 306 TestPayPalConfig
samples/cli/sample-apps Platform testPayPalConfig \
    --sandbox 'true' \
    --body '{"clientID": "Kjlt9HFTwM4ZZhLC", "clientSecret": "H6y555QlqQjVgXiS", "returnUrl": "J9zpg8HMrXrb9wks", "webHookId": "JHblSWdkY6NAlATo"}' \
    > test.out 2>&1
eval_tap $? 306 'TestPayPalConfig' test.out

#- 307 TestStripeConfig
samples/cli/sample-apps Platform testStripeConfig \
    --sandbox 'false' \
    --body '{"allowedPaymentMethodTypes": ["taafyNO17BSN8rMs", "raM8cVt9iv3w9sP5", "e9dtPGrJXbJb95JW"], "publishableKey": "XDB1TiB7NOCChx4H", "secretKey": "NnuOICz9u0f4ncJc", "webhookSecret": "IsYRzkyS3OGCW439"}' \
    > test.out 2>&1
eval_tap $? 307 'TestStripeConfig' test.out

#- 308 TestWxPayConfig
samples/cli/sample-apps Platform testWxPayConfig \
    --body '{"appId": "INWg1Q3lXOal39nd", "key": "cObcAXcj3tkBtGNE", "mchid": "0DUADFKZApSTtnx4", "returnUrl": "q8pwMxxByzWtL2RH"}' \
    > test.out 2>&1
eval_tap $? 308 'TestWxPayConfig' test.out

#- 309 TestXsollaConfig
samples/cli/sample-apps Platform testXsollaConfig \
    --body '{"apiKey": "UdG4J0Xa7K5hER0c", "flowCompletionUrl": "0wNOqUl37nPQE67X", "merchantId": 45, "projectId": 45, "projectSecretKey": "3gVP2yEpzUepNy2e"}' \
    > test.out 2>&1
eval_tap $? 309 'TestXsollaConfig' test.out

#- 310 GetPaymentMerchantConfig
samples/cli/sample-apps Platform getPaymentMerchantConfig \
    --id 'ccrWiJ9pJNJq8xrx' \
    > test.out 2>&1
eval_tap $? 310 'GetPaymentMerchantConfig' test.out

#- 311 UpdateAdyenConfig
samples/cli/sample-apps Platform updateAdyenConfig \
    --id 'dfpIwpYiUO13UCgr' \
    --sandbox 'true' \
    --validate 'true' \
    --body '{"allowedPaymentMethods": ["uYAevGiGTgebaLjq", "BfLFRcjfBNCmDnSn", "S0OzDxRbLuFM7oER"], "apiKey": "j2FjyhOt0e2qw5jz", "authoriseAsCapture": false, "blockedPaymentMethods": ["nV4fQIzNIcAN0cAV", "7GpVilk7ulkk9F78", "RhNCjweCXSfcZe6u"], "clientKey": "t355hEEwcY7VnswK", "dropInSettings": "xNmXupCAYrMzJnwK", "liveEndpointUrlPrefix": "Q6ZkHcxaXiy57ngC", "merchantAccount": "RAaW8cWmxePyhPYJ", "notificationHmacKey": "h5h0QqGEWduQVVxg", "notificationPassword": "Yn0Gc64oSoW1REki", "notificationUsername": "DILczOowmiLebh5u", "returnUrl": "vwkkwxhaDbP7zcQt", "settings": "9EEYboOgGw3HA62J"}' \
    > test.out 2>&1
eval_tap $? 311 'UpdateAdyenConfig' test.out

#- 312 TestAdyenConfigById
samples/cli/sample-apps Platform testAdyenConfigById \
    --id 'LEkAMt5X3de1gDjI' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 312 'TestAdyenConfigById' test.out

#- 313 UpdateAliPayConfig
samples/cli/sample-apps Platform updateAliPayConfig \
    --id 'XwtXLbjxZicdbJML' \
    --sandbox 'false' \
    --validate 'false' \
    --body '{"appId": "OLJytLdyKkh7OQ46", "privateKey": "y57fWQEmG5IJsCeG", "publicKey": "Pdz1G1I139Fl2q4Y", "returnUrl": "L2WmbC7ku23bdYfA"}' \
    > test.out 2>&1
eval_tap $? 313 'UpdateAliPayConfig' test.out

#- 314 TestAliPayConfigById
samples/cli/sample-apps Platform testAliPayConfigById \
    --id 'wNCSbOd5ytPQfo1z' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 314 'TestAliPayConfigById' test.out

#- 315 UpdateCheckoutConfig
samples/cli/sample-apps Platform updateCheckoutConfig \
    --id 't2Z8gb48YkfSbeKV' \
    --sandbox 'true' \
    --validate 'true' \
    --body '{"publicKey": "wV7ED2C9297tVUR9", "secretKey": "rekGZgH4cm90QstP"}' \
    > test.out 2>&1
eval_tap $? 315 'UpdateCheckoutConfig' test.out

#- 316 TestCheckoutConfigById
samples/cli/sample-apps Platform testCheckoutConfigById \
    --id 'Zj7FyqyoFFo4MgtU' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 316 'TestCheckoutConfigById' test.out

#- 317 UpdatePayPalConfig
samples/cli/sample-apps Platform updatePayPalConfig \
    --id 'c0LaGyhEzyvV7LtL' \
    --sandbox 'true' \
    --validate 'true' \
    --body '{"clientID": "FmNTg7uq895UNeId", "clientSecret": "JkCisszQEgbvDb5k", "returnUrl": "F7j2SaUQOnD50ZNV", "webHookId": "RSVupEsTNUG1ohHI"}' \
    > test.out 2>&1
eval_tap $? 317 'UpdatePayPalConfig' test.out

#- 318 TestPayPalConfigById
samples/cli/sample-apps Platform testPayPalConfigById \
    --id 'OHyz9qCG1u9jMq0M' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 318 'TestPayPalConfigById' test.out

#- 319 UpdateStripeConfig
samples/cli/sample-apps Platform updateStripeConfig \
    --id 'f67QzvjqZCLJmOlb' \
    --sandbox 'true' \
    --validate 'true' \
    --body '{"allowedPaymentMethodTypes": ["cywZd45UyngupzMO", "NpnJ0Tng5e0jk0Kr", "3Ji5WuzZfwThjuHw"], "publishableKey": "a6LqOaDbnzjUYoQ6", "secretKey": "ux1DGd5Uh8Jpr3WK", "webhookSecret": "MabAEQkhkLR0950v"}' \
    > test.out 2>&1
eval_tap $? 319 'UpdateStripeConfig' test.out

#- 320 TestStripeConfigById
samples/cli/sample-apps Platform testStripeConfigById \
    --id 'cLVpvzHsC1KEfw3t' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 320 'TestStripeConfigById' test.out

#- 321 UpdateWxPayConfig
samples/cli/sample-apps Platform updateWxPayConfig \
    --id 'difFZaKEi2QJXgde' \
    --validate 'false' \
    --body '{"appId": "9Gz4xVrLM49Yg6fj", "key": "EaI9wT90WuihpWpf", "mchid": "Y4iNHmaA7idND3xf", "returnUrl": "QXsB96Il8k5KKpBx"}' \
    > test.out 2>&1
eval_tap $? 321 'UpdateWxPayConfig' test.out

#- 322 UpdateWxPayConfigCert
samples/cli/sample-apps Platform updateWxPayConfigCert \
    --id '7IcD1dtl6UV7OthW' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 322 'UpdateWxPayConfigCert' test.out

#- 323 TestWxPayConfigById
samples/cli/sample-apps Platform testWxPayConfigById \
    --id 'r5xvCRF0FMs2BF3Z' \
    > test.out 2>&1
eval_tap $? 323 'TestWxPayConfigById' test.out

#- 324 UpdateXsollaConfig
samples/cli/sample-apps Platform updateXsollaConfig \
    --id 'KNmzkqGBzd7oUstw' \
    --validate 'true' \
    --body '{"apiKey": "q6Bnn1L4kFZsf0fA", "flowCompletionUrl": "GmtYY7NG3XElXrJO", "merchantId": 1, "projectId": 3, "projectSecretKey": "SxjlfBu8gxeXrUsd"}' \
    > test.out 2>&1
eval_tap $? 324 'UpdateXsollaConfig' test.out

#- 325 TestXsollaConfigById
samples/cli/sample-apps Platform testXsollaConfigById \
    --id 'avS3rLYG0Ic9vuFq' \
    > test.out 2>&1
eval_tap $? 325 'TestXsollaConfigById' test.out

#- 326 UpdateXsollaUIConfig
samples/cli/sample-apps Platform updateXsollaUIConfig \
    --id 'QHObvoJOy2z9r6fJ' \
    --body '{"device": "DESKTOP", "showCloseButton": true, "size": "SMALL", "theme": "DEFAULT"}' \
    > test.out 2>&1
eval_tap $? 326 'UpdateXsollaUIConfig' test.out

#- 327 QueryPaymentProviderConfig
samples/cli/sample-apps Platform queryPaymentProviderConfig \
    --limit '5' \
    --namespace '1e6x38BYoZs0rYRv' \
    --offset '59' \
    --region 'SiDkZYdciUJdBEle' \
    > test.out 2>&1
eval_tap $? 327 'QueryPaymentProviderConfig' test.out

#- 328 CreatePaymentProviderConfig
samples/cli/sample-apps Platform createPaymentProviderConfig \
    --body '{"aggregate": "XSOLLA", "namespace": "HZwMGW4FQNfjYVDF", "region": "GfQ1MmDsL7Se2flP", "sandboxTaxJarApiToken": "eD9Xy8s9RJPoiY6z", "specials": ["ALIPAY", "PAYPAL", "WXPAY"], "taxJarApiToken": "A0EnlW5eNekGooKQ", "taxJarEnabled": true, "useGlobalTaxJarApiToken": false}' \
    > test.out 2>&1
eval_tap $? 328 'CreatePaymentProviderConfig' test.out

#- 329 GetAggregatePaymentProviders
samples/cli/sample-apps Platform getAggregatePaymentProviders \
    > test.out 2>&1
eval_tap $? 329 'GetAggregatePaymentProviders' test.out

#- 330 DebugMatchedPaymentProviderConfig
samples/cli/sample-apps Platform debugMatchedPaymentProviderConfig \
    --namespace 't0EXPtyFszRfxJdu' \
    --region 'A9h6tBm4YZwteieF' \
    > test.out 2>&1
eval_tap $? 330 'DebugMatchedPaymentProviderConfig' test.out

#- 331 GetSpecialPaymentProviders
samples/cli/sample-apps Platform getSpecialPaymentProviders \
    > test.out 2>&1
eval_tap $? 331 'GetSpecialPaymentProviders' test.out

#- 332 UpdatePaymentProviderConfig
samples/cli/sample-apps Platform updatePaymentProviderConfig \
    --id 'cZzZz3k7CWnjRPDh' \
    --body '{"aggregate": "ADYEN", "namespace": "yym4LZyZ1t8d9XWD", "region": "8594OoL7s1spJdZz", "sandboxTaxJarApiToken": "AVZTySIz2vDYRgS9", "specials": ["ADYEN", "WALLET", "ADYEN"], "taxJarApiToken": "NLzKZMug5f8zVGG6", "taxJarEnabled": false, "useGlobalTaxJarApiToken": false}' \
    > test.out 2>&1
eval_tap $? 332 'UpdatePaymentProviderConfig' test.out

#- 333 DeletePaymentProviderConfig
samples/cli/sample-apps Platform deletePaymentProviderConfig \
    --id 'zHKCU5sZFTQx9Mj8' \
    > test.out 2>&1
eval_tap $? 333 'DeletePaymentProviderConfig' test.out

#- 334 GetPaymentTaxConfig
samples/cli/sample-apps Platform getPaymentTaxConfig \
    > test.out 2>&1
eval_tap $? 334 'GetPaymentTaxConfig' test.out

#- 335 UpdatePaymentTaxConfig
samples/cli/sample-apps Platform updatePaymentTaxConfig \
    --body '{"sandboxTaxJarApiToken": "HAIKcVYDIMJSr1Av", "taxJarApiToken": "rMv8q3W4fuS2QUO2", "taxJarEnabled": true, "taxJarProductCodesMapping": {"S7Xm5tttur9SHGDM": "GGnAIRID3P7EDHpN", "UfylWCgY7C5IklGz": "lBnnflx7tVxWS6mb", "s2RbBxjmDcnR88nl": "z6ZpQVAsREPMXH5Q"}}' \
    > test.out 2>&1
eval_tap $? 335 'UpdatePaymentTaxConfig' test.out

#- 336 SyncPaymentOrders
samples/cli/sample-apps Platform syncPaymentOrders \
    --nextEvaluatedKey '6UuIUzOXldS5R8m7' \
    --end 'ONR3y0DjNaiYDAcB' \
    --start 'Oa41IxW6HyxQW2B7' \
    > test.out 2>&1
eval_tap $? 336 'SyncPaymentOrders' test.out

#- 337 PublicGetRootCategories
samples/cli/sample-apps Platform publicGetRootCategories \
    --namespace $AB_NAMESPACE \
    --language 'dZkzJnNNcHJOVhc6' \
    --storeId 'ODaytTG1uSqsKIQe' \
    > test.out 2>&1
eval_tap $? 337 'PublicGetRootCategories' test.out

#- 338 DownloadCategories
samples/cli/sample-apps Platform downloadCategories \
    --namespace $AB_NAMESPACE \
    --language '3SNxnv3H9Kg74eHY' \
    --storeId 'kbscEv377wpsLztC' \
    > test.out 2>&1
eval_tap $? 338 'DownloadCategories' test.out

#- 339 PublicGetCategory
samples/cli/sample-apps Platform publicGetCategory \
    --categoryPath 'QRXIhb5bYmwgP6G6' \
    --namespace $AB_NAMESPACE \
    --language 'gpt806eTumwpUbtZ' \
    --storeId 'jQYWkav8FONSLyUL' \
    > test.out 2>&1
eval_tap $? 339 'PublicGetCategory' test.out

#- 340 PublicGetChildCategories
samples/cli/sample-apps Platform publicGetChildCategories \
    --categoryPath 'rXw7vn7KcRKC0GH9' \
    --namespace $AB_NAMESPACE \
    --language 'JxrnbefKxJdvs8ki' \
    --storeId 'wNpo18M7HVTAInz8' \
    > test.out 2>&1
eval_tap $? 340 'PublicGetChildCategories' test.out

#- 341 PublicGetDescendantCategories
samples/cli/sample-apps Platform publicGetDescendantCategories \
    --categoryPath 'PqKPMNn93PNtOgFT' \
    --namespace $AB_NAMESPACE \
    --language 'LPIieC7l7AVJ1PSM' \
    --storeId 'BnAp04dKCmuGqIWX' \
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
    --platform 'APPLE' \
    > test.out 2>&1
eval_tap $? 344 'GetIAPItemMapping' test.out

#- 345 PublicGetItemByAppId
samples/cli/sample-apps Platform publicGetItemByAppId \
    --namespace $AB_NAMESPACE \
    --language 'wHxOQ6ZzV9i65kbP' \
    --region 'zWXsuujqAO7YyDLv' \
    --storeId 'MxSyUHVM9nOlZHow' \
    --appId 'BdzeYK4XuTBJCDnB' \
    > test.out 2>&1
eval_tap $? 345 'PublicGetItemByAppId' test.out

#- 346 PublicQueryItems
samples/cli/sample-apps Platform publicQueryItems \
    --namespace $AB_NAMESPACE \
    --appType 'GAME' \
    --baseAppId 'acajc4ZTIbBPOTlq' \
    --categoryPath 'MTJPywGk5y7osFir' \
    --features 'wmutNqzamHy2SRyx' \
    --includeSubCategoryItem 'true' \
    --itemType 'APP' \
    --language '9Sj6lnUsaYvB1MzJ' \
    --limit '2' \
    --offset '9' \
    --region 'WvWmHkjCcAz480hu' \
    --sortBy '["name", "name:asc", "displayOrder:asc"]' \
    --storeId 'LzZt3CEcwwc6V7Ui' \
    --tags 'rAtsRUKRZlgF11X8' \
    > test.out 2>&1
eval_tap $? 346 'PublicQueryItems' test.out

#- 347 PublicGetItemBySku
samples/cli/sample-apps Platform publicGetItemBySku \
    --namespace $AB_NAMESPACE \
    --language 'iV1RIYjgSeBFR4kA' \
    --region 'ttrGz5NqYOKkrvZU' \
    --storeId 'EkxzU7jeHlPzLT8r' \
    --sku 'KiUg591IaFNvGVbz' \
    > test.out 2>&1
eval_tap $? 347 'PublicGetItemBySku' test.out

#- 348 PublicGetEstimatedPrice
samples/cli/sample-apps Platform publicGetEstimatedPrice \
    --namespace $AB_NAMESPACE \
    --region 'rllEg1tcbn4aPdrY' \
    --storeId 'Zo2aIS4wJe8uGGUa' \
    --itemIds 'PwKdHjFl3d2t9oh6' \
    > test.out 2>&1
eval_tap $? 348 'PublicGetEstimatedPrice' test.out

#- 349 PublicBulkGetItems
samples/cli/sample-apps Platform publicBulkGetItems \
    --namespace $AB_NAMESPACE \
    --language 'JDL1nWiGMDU07Ven' \
    --region 'zXttrs6W5TgUQNbY' \
    --storeId 'nyPFHfMcQFoCjwyN' \
    --itemIds 'kZaSrUlr9oDcY9cE' \
    > test.out 2>&1
eval_tap $? 349 'PublicBulkGetItems' test.out

#- 350 PublicValidateItemPurchaseCondition
samples/cli/sample-apps Platform publicValidateItemPurchaseCondition \
    --namespace $AB_NAMESPACE \
    --body '{"itemIds": ["pkz9DHTWtZkM33Hf", "Srhy5U11TDBJhhRL", "LtJj3UiAbHE6tZ2m"]}' \
    > test.out 2>&1
eval_tap $? 350 'PublicValidateItemPurchaseCondition' test.out

#- 351 PublicSearchItems
samples/cli/sample-apps Platform publicSearchItems \
    --namespace $AB_NAMESPACE \
    --itemType 'MEDIA' \
    --limit '81' \
    --offset '28' \
    --region 'J96Ax9ZyW3XvwoVU' \
    --storeId 'ffS2lJmYeTrEPyNh' \
    --keyword 't0XbIKb8Nq8ovESs' \
    --language 'I1Xdc8B6GegCvKoy' \
    > test.out 2>&1
eval_tap $? 351 'PublicSearchItems' test.out

#- 352 PublicGetApp
samples/cli/sample-apps Platform publicGetApp \
    --itemId 'cUgsulkqUtosiPfQ' \
    --namespace $AB_NAMESPACE \
    --language 'TFmgpDDNVRcwkYzS' \
    --region 'SYrerAWXsfDpMQ6m' \
    --storeId 'lgy87NbpGiHNMug6' \
    > test.out 2>&1
eval_tap $? 352 'PublicGetApp' test.out

#- 353 PublicGetItemDynamicData
samples/cli/sample-apps Platform publicGetItemDynamicData \
    --itemId 'YHSG8KqhUwWW9c8B' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 353 'PublicGetItemDynamicData' test.out

#- 354 PublicGetItem
samples/cli/sample-apps Platform publicGetItem \
    --itemId 'sG3T1MGW6mgaVQi7' \
    --namespace $AB_NAMESPACE \
    --language 'qg9z4Lnqc6uEjn5c' \
    --populateBundle 'true' \
    --region '3piWvnPIqT38XULd' \
    --storeId 'LAmHxjVqB3CIOzN9' \
    > test.out 2>&1
eval_tap $? 354 'PublicGetItem' test.out

#- 355 GetPaymentCustomization
eval_tap 0 355 'GetPaymentCustomization # SKIP deprecated' test.out

#- 356 PublicGetPaymentUrl
samples/cli/sample-apps Platform publicGetPaymentUrl \
    --namespace $AB_NAMESPACE \
    --body '{"paymentOrderNo": "S25jT8mqAjumFIwf", "paymentProvider": "ALIPAY", "returnUrl": "L3qAgaRBP5D97H0F", "ui": "PI6SlPeioslDw3gu", "zipCode": "kuUIlNodh5oabxmq"}' \
    > test.out 2>&1
eval_tap $? 356 'PublicGetPaymentUrl' test.out

#- 357 PublicGetPaymentMethods
samples/cli/sample-apps Platform publicGetPaymentMethods \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'sbf41HG2HeaQVkiD' \
    > test.out 2>&1
eval_tap $? 357 'PublicGetPaymentMethods' test.out

#- 358 PublicGetUnpaidPaymentOrder
samples/cli/sample-apps Platform publicGetUnpaidPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'efmVse84n6xDpYZc' \
    > test.out 2>&1
eval_tap $? 358 'PublicGetUnpaidPaymentOrder' test.out

#- 359 Pay
samples/cli/sample-apps Platform pay \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'ZVpw2Bcei3e9P9DU' \
    --paymentProvider 'WXPAY' \
    --zipCode 'dGqBY4rKh1H8IJ5F' \
    --body '{"token": "obwbVg4sb9u7TcIY"}' \
    > test.out 2>&1
eval_tap $? 359 'Pay' test.out

#- 360 PublicCheckPaymentOrderPaidStatus
samples/cli/sample-apps Platform publicCheckPaymentOrderPaidStatus \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo '7Ypwum24GFxkI0Jo' \
    > test.out 2>&1
eval_tap $? 360 'PublicCheckPaymentOrderPaidStatus' test.out

#- 361 GetPaymentPublicConfig
samples/cli/sample-apps Platform getPaymentPublicConfig \
    --namespace $AB_NAMESPACE \
    --sandbox 'true' \
    --paymentProvider 'WXPAY' \
    --region 'cVpX7ZMq6gTJJsTJ' \
    > test.out 2>&1
eval_tap $? 361 'GetPaymentPublicConfig' test.out

#- 362 PublicGetQRCode
samples/cli/sample-apps Platform publicGetQRCode \
    --namespace $AB_NAMESPACE \
    --code 'TriFxNzTomuRk0MH' \
    > test.out 2>&1
eval_tap $? 362 'PublicGetQRCode' test.out

#- 363 PublicNormalizePaymentReturnUrl
samples/cli/sample-apps Platform publicNormalizePaymentReturnUrl \
    --namespace $AB_NAMESPACE \
    --payerID 'wTvmayPfpblmdfdZ' \
    --foreinginvoice 'OfHFMn5nDsn3dJ7E' \
    --invoiceId 'ymyTmKqmbjGhziJ5' \
    --payload 'lQOKDl1AY0NePaXS' \
    --redirectResult 'mOjSjE8SqEI8422r' \
    --resultCode 'yHeuLl6pIsTNyrdO' \
    --sessionId 'TzbFIYcjoHWG9qpC' \
    --status 'T4gjjULj52SKxKeg' \
    --token 'QlJmux0ujec7jov2' \
    --type 'CxhIphR90RqVzTm1' \
    --userId 'YH6y0mfd7DYuNqOp' \
    --orderNo 'kgYGSogqadA7kvK1' \
    --paymentOrderNo 'xwPDzV0bCS6VavGj' \
    --paymentProvider 'CHECKOUT' \
    --returnUrl 'TbDFESJufEhEUkfA' \
    > test.out 2>&1
eval_tap $? 363 'PublicNormalizePaymentReturnUrl' test.out

#- 364 GetPaymentTaxValue
samples/cli/sample-apps Platform getPaymentTaxValue \
    --namespace $AB_NAMESPACE \
    --zipCode 'UEgscdLd92Lg5T2y' \
    --paymentOrderNo 'g4MvhdX76At53Oam' \
    --paymentProvider 'CHECKOUT' \
    > test.out 2>&1
eval_tap $? 364 'GetPaymentTaxValue' test.out

#- 365 GetRewardByCode
samples/cli/sample-apps Platform getRewardByCode \
    --namespace $AB_NAMESPACE \
    --rewardCode 'WQuCcxAqlPpkI7Ks' \
    > test.out 2>&1
eval_tap $? 365 'GetRewardByCode' test.out

#- 366 QueryRewards1
samples/cli/sample-apps Platform queryRewards1 \
    --namespace $AB_NAMESPACE \
    --eventTopic 'JWrmQamMbMumljfW' \
    --limit '8' \
    --offset '25' \
    --sortBy '["namespace:asc", "rewardCode:desc"]' \
    > test.out 2>&1
eval_tap $? 366 'QueryRewards1' test.out

#- 367 GetReward1
samples/cli/sample-apps Platform getReward1 \
    --namespace $AB_NAMESPACE \
    --rewardId 'IBqCT6QoXazVwJcK' \
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
    --appIds '["AZ3Y0uzgfWAz58wm", "G8pntebUjaNBzY4b", "9CEGW8FyyN1fAoc9"]' \
    --itemIds '["iG7D9tFT7zEsWe5p", "yDO6aIbiHuKdyFai", "NQIPGS8Xy5LL7DGp"]' \
    --skus '["GUz0lCFLAAgLAZHW", "NzVJJB75a8hF8Jiz", "auIWsxMv33nfMpW8"]' \
    > test.out 2>&1
eval_tap $? 369 'PublicExistsAnyMyActiveEntitlement' test.out

#- 370 PublicGetMyAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform publicGetMyAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --appId 'HscCcmQl1Wh8tMu8' \
    > test.out 2>&1
eval_tap $? 370 'PublicGetMyAppEntitlementOwnershipByAppId' test.out

#- 371 PublicGetMyEntitlementOwnershipByItemId
samples/cli/sample-apps Platform publicGetMyEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --entitlementClazz 'MEDIA' \
    --itemId 'oZIsg6c67RwC2ELF' \
    > test.out 2>&1
eval_tap $? 371 'PublicGetMyEntitlementOwnershipByItemId' test.out

#- 372 PublicGetMyEntitlementOwnershipBySku
samples/cli/sample-apps Platform publicGetMyEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --entitlementClazz 'APP' \
    --sku 'PTEdAV7ghHALL7CL' \
    > test.out 2>&1
eval_tap $? 372 'PublicGetMyEntitlementOwnershipBySku' test.out

#- 373 PublicGetEntitlementOwnershipToken
samples/cli/sample-apps Platform publicGetEntitlementOwnershipToken \
    --namespace $AB_NAMESPACE \
    --appIds '["73UFUWQakYDzzt2F", "SUq8hi8ZmxVInhck", "HtRihluqhf5wU0xB"]' \
    --itemIds '["64zEN4zzpI1B5MHl", "Q43ImWujNItDPuOg", "19Lns1BWk0coa6X4"]' \
    --skus '["SUiq2EdOx8y2dL7S", "xgCz72ElJAM2E1Sl", "RsweTNZJSLBIccV2"]' \
    > test.out 2>&1
eval_tap $? 373 'PublicGetEntitlementOwnershipToken' test.out

#- 374 SyncTwitchDropsEntitlement
samples/cli/sample-apps Platform syncTwitchDropsEntitlement \
    --namespace $AB_NAMESPACE \
    --body '{"gameId": "7iQ9oX3jRY6ubVoY", "language": "UGq", "region": "ok2qN5140bMlZLBE"}' \
    > test.out 2>&1
eval_tap $? 374 'SyncTwitchDropsEntitlement' test.out

#- 375 PublicGetMyWallet
samples/cli/sample-apps Platform publicGetMyWallet \
    --currencyCode 'SNWI8W7tzEtgugy0' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 375 'PublicGetMyWallet' test.out

#- 376 SyncEpicGameDLC
samples/cli/sample-apps Platform syncEpicGameDLC \
    --namespace $AB_NAMESPACE \
    --userId 'dUiPOEfgENPB1GD8' \
    --body '{"epicGamesJwtToken": "vnGzX6cRtjHB4pV0"}' \
    > test.out 2>&1
eval_tap $? 376 'SyncEpicGameDLC' test.out

#- 377 SyncOculusDLC
samples/cli/sample-apps Platform syncOculusDLC \
    --namespace $AB_NAMESPACE \
    --userId 's8jwRAruAAbBP4Z4' \
    > test.out 2>&1
eval_tap $? 377 'SyncOculusDLC' test.out

#- 378 PublicSyncPsnDlcInventory
samples/cli/sample-apps Platform publicSyncPsnDlcInventory \
    --namespace $AB_NAMESPACE \
    --userId 'UPnrzjqD1IOwkk9s' \
    --body '{"serviceLabel": 77}' \
    > test.out 2>&1
eval_tap $? 378 'PublicSyncPsnDlcInventory' test.out

#- 379 PublicSyncPsnDlcInventoryWithMultipleServiceLabels
samples/cli/sample-apps Platform publicSyncPsnDlcInventoryWithMultipleServiceLabels \
    --namespace $AB_NAMESPACE \
    --userId 'ESihrPOjmSSRJhrK' \
    --body '{"serviceLabels": [81, 78]}' \
    > test.out 2>&1
eval_tap $? 379 'PublicSyncPsnDlcInventoryWithMultipleServiceLabels' test.out

#- 380 SyncSteamDLC
samples/cli/sample-apps Platform syncSteamDLC \
    --namespace $AB_NAMESPACE \
    --userId 'xAAfQuBoA9WXqiRY' \
    --body '{"appId": "JJAxqWZkAK1faCok", "steamId": "5jBz2dZeTBtI5jhY"}' \
    > test.out 2>&1
eval_tap $? 380 'SyncSteamDLC' test.out

#- 381 SyncXboxDLC
samples/cli/sample-apps Platform syncXboxDLC \
    --namespace $AB_NAMESPACE \
    --userId 'JprClpzBimFBvCVO' \
    --body '{"xstsToken": "w2DtXLmdNXAqPC2f"}' \
    > test.out 2>&1
eval_tap $? 381 'SyncXboxDLC' test.out

#- 382 PublicQueryUserEntitlements
samples/cli/sample-apps Platform publicQueryUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'ooSBFSNybtKWiVWR' \
    --appType 'DEMO' \
    --entitlementClazz 'LOOTBOX' \
    --entitlementName 'MrBsGdoRvp174CXk' \
    --features '["QZpL6m2VO86Zzy4k", "JvFdHXAYTOmtfhsi", "0yZhEqEEYCt1QM2F"]' \
    --itemId '["ABGQ8Y0EzQLwwTco", "pY0YoZ5a0EfXmFy9", "924KqPbtwnA1UnSH"]' \
    --limit '4' \
    --offset '25' \
    > test.out 2>&1
eval_tap $? 382 'PublicQueryUserEntitlements' test.out

#- 383 PublicGetUserAppEntitlementByAppId
samples/cli/sample-apps Platform publicGetUserAppEntitlementByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'GGPfXCJC3yvkh65p' \
    --appId 'yE0rKYOFV9I7k5aC' \
    > test.out 2>&1
eval_tap $? 383 'PublicGetUserAppEntitlementByAppId' test.out

#- 384 PublicQueryUserEntitlementsByAppType
samples/cli/sample-apps Platform publicQueryUserEntitlementsByAppType \
    --namespace $AB_NAMESPACE \
    --userId '6VKCf6lvXVpTtBuM' \
    --limit '57' \
    --offset '62' \
    --appType 'SOFTWARE' \
    > test.out 2>&1
eval_tap $? 384 'PublicQueryUserEntitlementsByAppType' test.out

#- 385 PublicGetUserEntitlementByItemId
samples/cli/sample-apps Platform publicGetUserEntitlementByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'XWjRtW1qgNlAJYpG' \
    --entitlementClazz 'ENTITLEMENT' \
    --itemId 'mwGBa0MorXmodwvi' \
    > test.out 2>&1
eval_tap $? 385 'PublicGetUserEntitlementByItemId' test.out

#- 386 PublicGetUserEntitlementBySku
samples/cli/sample-apps Platform publicGetUserEntitlementBySku \
    --namespace $AB_NAMESPACE \
    --userId 'QO8AcmjgohFzQDxz' \
    --entitlementClazz 'APP' \
    --sku 'wiZRmex1D5t7rAWA' \
    > test.out 2>&1
eval_tap $? 386 'PublicGetUserEntitlementBySku' test.out

#- 387 PublicExistsAnyUserActiveEntitlement
samples/cli/sample-apps Platform publicExistsAnyUserActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'SpLnCi6uzREq0Xzf' \
    --appIds '["8VSuVTJwceJTB96r", "k6qXKIIQj8xZdxLF", "YuYSUbN1gObx2wtp"]' \
    --itemIds '["qTKzUeRtrSvAoyyE", "frNefNRTrFjiwTUz", "4vqmozN2EEgrsbr5"]' \
    --skus '["Dn9jSvfwcR4YmHq2", "mEqc8nzeE7HP4PX4", "Cagup9Q0R6OPl8Fb"]' \
    > test.out 2>&1
eval_tap $? 387 'PublicExistsAnyUserActiveEntitlement' test.out

#- 388 PublicGetUserAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform publicGetUserAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'npxsvJli5PL6sbr6' \
    --appId 'YZjMQnndAl1aMC0L' \
    > test.out 2>&1
eval_tap $? 388 'PublicGetUserAppEntitlementOwnershipByAppId' test.out

#- 389 PublicGetUserEntitlementOwnershipByItemId
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'N7uHN7L7CCqElI4p' \
    --entitlementClazz 'SUBSCRIPTION' \
    --itemId 'oakD7kRBLzrvViA8' \
    > test.out 2>&1
eval_tap $? 389 'PublicGetUserEntitlementOwnershipByItemId' test.out

#- 390 PublicGetUserEntitlementOwnershipByItemIds
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipByItemIds \
    --namespace $AB_NAMESPACE \
    --userId '4jYm55x2mxdruq0A' \
    --ids '["tIVTDD6sJqu3Uh5p", "RrH9wxMkoZ0KjSm9", "mcjsMQkFaoTjWok6"]' \
    > test.out 2>&1
eval_tap $? 390 'PublicGetUserEntitlementOwnershipByItemIds' test.out

#- 391 PublicGetUserEntitlementOwnershipBySku
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --userId 'lvMenZzprSVF46FI' \
    --entitlementClazz 'LOOTBOX' \
    --sku 'UZTDwV3utWL2AX0C' \
    > test.out 2>&1
eval_tap $? 391 'PublicGetUserEntitlementOwnershipBySku' test.out

#- 392 PublicGetUserEntitlement
samples/cli/sample-apps Platform publicGetUserEntitlement \
    --entitlementId 'JStGQlY4GskHGAsz' \
    --namespace $AB_NAMESPACE \
    --userId 'kmOO7sVPj4Wb7kBV' \
    > test.out 2>&1
eval_tap $? 392 'PublicGetUserEntitlement' test.out

#- 393 PublicConsumeUserEntitlement
samples/cli/sample-apps Platform publicConsumeUserEntitlement \
    --entitlementId 'BJNsvwyGZnXFe3C6' \
    --namespace $AB_NAMESPACE \
    --userId 'woofLRBTosfBRUMF' \
    --body '{"options": ["epSw2SSVYneRz2Js", "d1Ng2pauZtqVWFfH", "l57TuiprjeB7fhS9"], "requestId": "v65KBt1nYKe32z7d", "useCount": 78}' \
    > test.out 2>&1
eval_tap $? 393 'PublicConsumeUserEntitlement' test.out

#- 394 PublicSellUserEntitlement
samples/cli/sample-apps Platform publicSellUserEntitlement \
    --entitlementId 'FMQy3ti10q4zbAt1' \
    --namespace $AB_NAMESPACE \
    --userId 'QJxJJkSZRCxlOMVA' \
    --body '{"requestId": "91mp3INI9S5pHKrQ", "useCount": 98}' \
    > test.out 2>&1
eval_tap $? 394 'PublicSellUserEntitlement' test.out

#- 395 PublicRedeemCode
samples/cli/sample-apps Platform publicRedeemCode \
    --namespace $AB_NAMESPACE \
    --userId 'PVjThQOHf2tTF0In' \
    --body '{"code": "egbueJxbnyVgkdZI", "language": "CYEz", "region": "RMYtUuRgzFWBNkUT"}' \
    > test.out 2>&1
eval_tap $? 395 'PublicRedeemCode' test.out

#- 396 PublicFulfillAppleIAPItem
samples/cli/sample-apps Platform publicFulfillAppleIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'U77pwmfO6i8S1JAA' \
    --body '{"excludeOldTransactions": true, "language": "XBf-269", "productId": "5WShkq5uE5h2lkNd", "receiptData": "iWWwZiu8oUyDZwX5", "region": "WtuOE8l00Jlfb6AV", "transactionId": "xOgjzagOZGtMmRhD"}' \
    > test.out 2>&1
eval_tap $? 396 'PublicFulfillAppleIAPItem' test.out

#- 397 SyncEpicGamesInventory
samples/cli/sample-apps Platform syncEpicGamesInventory \
    --namespace $AB_NAMESPACE \
    --userId 'PiZphoMEaGT8fmFH' \
    --body '{"epicGamesJwtToken": "YQysJPWQCmus5ZzN"}' \
    > test.out 2>&1
eval_tap $? 397 'SyncEpicGamesInventory' test.out

#- 398 PublicFulfillGoogleIAPItem
samples/cli/sample-apps Platform publicFulfillGoogleIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'LWZWQrHMWap5BpGu' \
    --body '{"autoAck": true, "language": "KrI", "orderId": "tX88WbXcomQFYVl9", "packageName": "1VIKeFxHbJobrgjM", "productId": "HlPledLMxHDBEMUt", "purchaseTime": 69, "purchaseToken": "eXmIhkHB94gcrBmi", "region": "8I6lJZHr1f9Y7SKU"}' \
    > test.out 2>&1
eval_tap $? 398 'PublicFulfillGoogleIAPItem' test.out

#- 399 SyncOculusConsumableEntitlements
samples/cli/sample-apps Platform syncOculusConsumableEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'vlJU8mrPs7hXteOS' \
    > test.out 2>&1
eval_tap $? 399 'SyncOculusConsumableEntitlements' test.out

#- 400 PublicReconcilePlayStationStore
samples/cli/sample-apps Platform publicReconcilePlayStationStore \
    --namespace $AB_NAMESPACE \
    --userId 'r5FT29WUShCamDSx' \
    --body '{"currencyCode": "x7ntyexrhL8ZK2mq", "price": 0.31237446445201034, "productId": "1fzhp5Gynt7vXKrV", "serviceLabel": 34}' \
    > test.out 2>&1
eval_tap $? 400 'PublicReconcilePlayStationStore' test.out

#- 401 PublicReconcilePlayStationStoreWithMultipleServiceLabels
samples/cli/sample-apps Platform publicReconcilePlayStationStoreWithMultipleServiceLabels \
    --namespace $AB_NAMESPACE \
    --userId 'Ch7lVYqgncAP2CwW' \
    --body '{"currencyCode": "72sKvwYZRtPKhQFO", "price": 0.26147502208812656, "productId": "w7bu0ccpYfD3BQ1e", "serviceLabels": [20, 45, 46]}' \
    > test.out 2>&1
eval_tap $? 401 'PublicReconcilePlayStationStoreWithMultipleServiceLabels' test.out

#- 402 SyncSteamInventory
samples/cli/sample-apps Platform syncSteamInventory \
    --namespace $AB_NAMESPACE \
    --userId 'eXKzwihAmZ4VsUAt' \
    --body '{"appId": "WNKKo6kkYfDjZhF7", "currencyCode": "LDeMsvY3Qgl0YuXq", "language": "yM-lqTx", "price": 0.4101288908429933, "productId": "GdgvZpvMBVkXrvAw", "region": "TrS4Dj0ZEWuxyHte", "steamId": "q8XxCLsE2rMMJMvU"}' \
    > test.out 2>&1
eval_tap $? 402 'SyncSteamInventory' test.out

#- 403 SyncTwitchDropsEntitlement1
samples/cli/sample-apps Platform syncTwitchDropsEntitlement1 \
    --namespace $AB_NAMESPACE \
    --userId 'JybdLY7T2Op2GCCQ' \
    --body '{"gameId": "O9MchKW0CKgNMeq3", "language": "CDMi", "region": "YGIcZQ1Afl4w7wFo"}' \
    > test.out 2>&1
eval_tap $? 403 'SyncTwitchDropsEntitlement1' test.out

#- 404 SyncXboxInventory
samples/cli/sample-apps Platform syncXboxInventory \
    --namespace $AB_NAMESPACE \
    --userId 'M3pXvYSayD7EzyY1' \
    --body '{"currencyCode": "zk5t9CDt6fMcvnyT", "price": 0.758856793006725, "productId": "ppdKR1eHaZyai7j1", "xstsToken": "kqeqss8Hx6Wrv3Rk"}' \
    > test.out 2>&1
eval_tap $? 404 'SyncXboxInventory' test.out

#- 405 PublicQueryUserOrders
samples/cli/sample-apps Platform publicQueryUserOrders \
    --namespace $AB_NAMESPACE \
    --userId 'vNtApbdGuQ4Y9yQR' \
    --itemId '7ZTMVRFk9uBJy4UK' \
    --limit '70' \
    --offset '81' \
    --status 'CHARGEBACK_REVERSED' \
    > test.out 2>&1
eval_tap $? 405 'PublicQueryUserOrders' test.out

#- 406 PublicCreateUserOrder
samples/cli/sample-apps Platform publicCreateUserOrder \
    --namespace $AB_NAMESPACE \
    --userId '8R8V3Kk4qBsbJTbH' \
    --body '{"currencyCode": "UDPq1FR33tIaEpoZ", "discountedPrice": 79, "ext": {"yDfxW50YIRXjUvCw": {}, "s2ko9WtnMab0pmdq": {}, "jrKez3Xe1CXG0AzV": {}}, "itemId": "9zxmQ5CPxrryR4kb", "language": "ryr-Hssc", "price": 74, "quantity": 14, "region": "c674iQTtycWXIr86", "returnUrl": "JYh0ltWnqJyziZ3m", "sectionId": "OBBXNqogIsmpeBlU"}' \
    > test.out 2>&1
eval_tap $? 406 'PublicCreateUserOrder' test.out

#- 407 PublicGetUserOrder
samples/cli/sample-apps Platform publicGetUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'ch7kq8AFfEag2LsE' \
    --userId '0XIMDCpLDfPmGyGp' \
    > test.out 2>&1
eval_tap $? 407 'PublicGetUserOrder' test.out

#- 408 PublicCancelUserOrder
samples/cli/sample-apps Platform publicCancelUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'Wvg9LMVeY4QxpeDc' \
    --userId 'bt5vEnLHqc8FBFqa' \
    > test.out 2>&1
eval_tap $? 408 'PublicCancelUserOrder' test.out

#- 409 PublicGetUserOrderHistories
samples/cli/sample-apps Platform publicGetUserOrderHistories \
    --namespace $AB_NAMESPACE \
    --orderNo 'J00iqBYff9TRh47B' \
    --userId '51ZHCYuqiXenpXiq' \
    > test.out 2>&1
eval_tap $? 409 'PublicGetUserOrderHistories' test.out

#- 410 PublicDownloadUserOrderReceipt
samples/cli/sample-apps Platform publicDownloadUserOrderReceipt \
    --namespace $AB_NAMESPACE \
    --orderNo 'ALyijSsLR2jpcde0' \
    --userId 'lQWRBHnkd1AlaAFn' \
    > test.out 2>&1
eval_tap $? 410 'PublicDownloadUserOrderReceipt' test.out

#- 411 PublicGetPaymentAccounts
samples/cli/sample-apps Platform publicGetPaymentAccounts \
    --namespace $AB_NAMESPACE \
    --userId 'NIyZ5OsuxdQ9GH4c' \
    > test.out 2>&1
eval_tap $? 411 'PublicGetPaymentAccounts' test.out

#- 412 PublicDeletePaymentAccount
samples/cli/sample-apps Platform publicDeletePaymentAccount \
    --id 'rnC52hXScYBuf0bJ' \
    --namespace $AB_NAMESPACE \
    --type 'paypal' \
    --userId 'pEPzOem153fqO3AP' \
    > test.out 2>&1
eval_tap $? 412 'PublicDeletePaymentAccount' test.out

#- 413 PublicListActiveSections
samples/cli/sample-apps Platform publicListActiveSections \
    --namespace $AB_NAMESPACE \
    --userId 'f9fuwOIn01uErUpd' \
    --language 'pZz2ai3vQjQTNwYk' \
    --region '7onfTqVjS9D7nRJw' \
    --storeId 'kPbAeYOpoeZtFwmh' \
    --viewId 'gQFTrVdHuGq2LGcs' \
    > test.out 2>&1
eval_tap $? 413 'PublicListActiveSections' test.out

#- 414 PublicQueryUserSubscriptions
samples/cli/sample-apps Platform publicQueryUserSubscriptions \
    --namespace $AB_NAMESPACE \
    --userId 'dHhxvcQR94a5ekbi' \
    --chargeStatus 'SETUP' \
    --itemId '1Bs3f6cqH3zPBYtv' \
    --limit '12' \
    --offset '74' \
    --sku 'IP1qcwzZWraLxqF7' \
    --status 'EXPIRED' \
    --subscribedBy 'PLATFORM' \
    > test.out 2>&1
eval_tap $? 414 'PublicQueryUserSubscriptions' test.out

#- 415 PublicSubscribeSubscription
samples/cli/sample-apps Platform publicSubscribeSubscription \
    --namespace $AB_NAMESPACE \
    --userId 'iD0UXkzvROINnOIF' \
    --body '{"currencyCode": "9nNaLKmtyLLiaLEL", "itemId": "wVtcIAgauz9ajboa", "language": "QCZA-MGov_433", "region": "I1wojDrIHI90pP7L", "returnUrl": "LEB84ROWYxEWvs98", "source": "tyObSi50yUJkpqvl"}' \
    > test.out 2>&1
eval_tap $? 415 'PublicSubscribeSubscription' test.out

#- 416 PublicCheckUserSubscriptionSubscribableByItemId
samples/cli/sample-apps Platform publicCheckUserSubscriptionSubscribableByItemId \
    --namespace $AB_NAMESPACE \
    --userId '44rCRaxeaRa2dwMo' \
    --itemId 'NsXjEbBwj1wQYfYa' \
    > test.out 2>&1
eval_tap $? 416 'PublicCheckUserSubscriptionSubscribableByItemId' test.out

#- 417 PublicGetUserSubscription
samples/cli/sample-apps Platform publicGetUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'Bjr2ougW2hfXZjK8' \
    --userId 'bjd3rOfiSyUbxBPo' \
    > test.out 2>&1
eval_tap $? 417 'PublicGetUserSubscription' test.out

#- 418 PublicChangeSubscriptionBillingAccount
samples/cli/sample-apps Platform publicChangeSubscriptionBillingAccount \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'CxS5qMhEDAMnYh7v' \
    --userId '18t1Aa6ToEWGuiMe' \
    > test.out 2>&1
eval_tap $? 418 'PublicChangeSubscriptionBillingAccount' test.out

#- 419 PublicCancelSubscription
samples/cli/sample-apps Platform publicCancelSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'Gc54gLUUC7uo4dQs' \
    --userId 'WsgZzw0nai8pP6n0' \
    --body '{"immediate": false, "reason": "d8QVzrxkXTEeuNmr"}' \
    > test.out 2>&1
eval_tap $? 419 'PublicCancelSubscription' test.out

#- 420 PublicGetUserSubscriptionBillingHistories
samples/cli/sample-apps Platform publicGetUserSubscriptionBillingHistories \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'hnABeU34RlPLbPPv' \
    --userId 'hcaxoVV8GFEmb2jk' \
    --excludeFree 'false' \
    --limit '88' \
    --offset '32' \
    > test.out 2>&1
eval_tap $? 420 'PublicGetUserSubscriptionBillingHistories' test.out

#- 421 PublicListViews
samples/cli/sample-apps Platform publicListViews \
    --namespace $AB_NAMESPACE \
    --userId 'wRblrpMu706Rkvtm' \
    --language 'SqqQX6SqWiuijMHu' \
    --storeId 'FETO5aic929XaMx6' \
    > test.out 2>&1
eval_tap $? 421 'PublicListViews' test.out

#- 422 PublicGetWallet
samples/cli/sample-apps Platform publicGetWallet \
    --currencyCode 'WHQDhW69hBWtEdMS' \
    --namespace $AB_NAMESPACE \
    --userId 'VjK5cHwEVM345ZML' \
    > test.out 2>&1
eval_tap $? 422 'PublicGetWallet' test.out

#- 423 PublicListUserWalletTransactions
samples/cli/sample-apps Platform publicListUserWalletTransactions \
    --currencyCode 'ne3MTJhnvE9o9x33' \
    --namespace $AB_NAMESPACE \
    --userId 'RqI7xWBQazZT9JFe' \
    --limit '12' \
    --offset '17' \
    > test.out 2>&1
eval_tap $? 423 'PublicListUserWalletTransactions' test.out

#- 424 QueryItems1
samples/cli/sample-apps Platform queryItems1 \
    --namespace $AB_NAMESPACE \
    --appType 'DEMO' \
    --availableDate 'JoHSL2o6fGIyV6Gn' \
    --baseAppId 'sQvIi4UViEyRwN7X' \
    --categoryPath 'HIAeS0QbNEYkyeYC' \
    --features 'IRIMOuG6P6Cc5TAS' \
    --includeSubCategoryItem 'true' \
    --itemName 'Re2mEr14X0GjbIca' \
    --itemStatus 'INACTIVE' \
    --itemType 'COINS' \
    --limit '46' \
    --offset '73' \
    --region '1w3zdX8WobexeAZY' \
    --sectionExclusive 'false' \
    --sortBy '["name", "displayOrder:asc"]' \
    --storeId 'd0Aw9zMb3eCWvUzo' \
    --tags '2ekhc0VqjflTbSXn' \
    --targetNamespace 'hcFiLgs4DoHdCqbe' \
    --withTotal 'false' \
    > test.out 2>&1
eval_tap $? 424 'QueryItems1' test.out

#- 425 ImportStore1
samples/cli/sample-apps Platform importStore1 \
    --namespace $AB_NAMESPACE \
    --storeId '7IVNOrCNOa43TBMW' \
    --strictMode 'false' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 425 'ImportStore1' test.out

#- 426 ExportStore1
samples/cli/sample-apps Platform exportStore1 \
    --namespace $AB_NAMESPACE \
    --storeId 'AsGOI8vhidSZrqgQ' \
    --body '{"itemIds": ["xff1EYEKyTAzViks", "SLEBviJkrAtpbZJc", "NvuFLyrkExegV1Kq"]}' \
    > test.out 2>&1
eval_tap $? 426 'ExportStore1' test.out

#- 427 FulfillRewardsV2
samples/cli/sample-apps Platform fulfillRewardsV2 \
    --namespace $AB_NAMESPACE \
    --userId 'OoeP6WmPIQWbayuT' \
    --body '{"metadata": {"Xta9VCYgWlevm6dP": {}, "u3lpfuCY8TDRYgUR": {}, "Se1sX8K4y0Y2tE8m": {}}, "origin": "Steam", "rewards": [{"currency": {"currencyCode": "cXWNYKHa0WoBlls9", "namespace": "iYWEIZEATZu0F6Kz"}, "item": {"itemId": "IvgSL9RHfDB4LjSe", "itemSku": "yKIXuPZOHTuicffQ", "itemType": "kqTanwCqABlE6u1g"}, "quantity": 16, "type": "ITEM"}, {"currency": {"currencyCode": "Y6hx5a5kyUlFvUyr", "namespace": "jtmNOPvV663JRSut"}, "item": {"itemId": "d2kAprkEfJkRcOjR", "itemSku": "FJ18LZ3YXElHIC9N", "itemType": "PS8RNpAlJBQYAFOg"}, "quantity": 89, "type": "ITEM"}, {"currency": {"currencyCode": "vphXJBO0G94bNJRp", "namespace": "wfNFBcFMosl9kIma"}, "item": {"itemId": "8r0J7Jqr0nrBBY3j", "itemSku": "gjsGfakD0Y5EsjtR", "itemType": "sS4KLTqKHZs32ScM"}, "quantity": 66, "type": "CURRENCY"}], "source": "ORDER_REVOCATION", "transactionId": "ZmbTmLW2IkjptYRt"}' \
    > test.out 2>&1
eval_tap $? 427 'FulfillRewardsV2' test.out


rm -f "tmp.dat"

exit $EXIT_CODE