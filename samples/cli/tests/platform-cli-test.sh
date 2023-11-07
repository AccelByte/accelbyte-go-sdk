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
    --id 'Z9SzAxmtHN8rXSkL' \
    > test.out 2>&1
eval_tap $? 3 'GetFulfillmentScript' test.out

#- 4 CreateFulfillmentScript
samples/cli/sample-apps Platform createFulfillmentScript \
    --id 'Eh4i145EI9MHbUv0' \
    --body '{"grantDays": "VsXUac0ectINiE2d"}' \
    > test.out 2>&1
eval_tap $? 4 'CreateFulfillmentScript' test.out

#- 5 DeleteFulfillmentScript
samples/cli/sample-apps Platform deleteFulfillmentScript \
    --id 'Al5g9wnhdMMIkCRf' \
    > test.out 2>&1
eval_tap $? 5 'DeleteFulfillmentScript' test.out

#- 6 UpdateFulfillmentScript
samples/cli/sample-apps Platform updateFulfillmentScript \
    --id 'J919kKpojqaGFrNE' \
    --body '{"grantDays": "1t3ReLtJRCPSscuN"}' \
    > test.out 2>&1
eval_tap $? 6 'UpdateFulfillmentScript' test.out

#- 7 ListItemTypeConfigs
samples/cli/sample-apps Platform listItemTypeConfigs \
    > test.out 2>&1
eval_tap $? 7 'ListItemTypeConfigs' test.out

#- 8 CreateItemTypeConfig
samples/cli/sample-apps Platform createItemTypeConfig \
    --body '{"clazz": "abVIU2S9hGzl3OBT", "dryRun": false, "fulfillmentUrl": "NEbv5nMZX16bF3Bm", "itemType": "INGAMEITEM", "purchaseConditionUrl": "McJs9PTVWzf1x9gG"}' \
    > test.out 2>&1
eval_tap $? 8 'CreateItemTypeConfig' test.out

#- 9 SearchItemTypeConfig
samples/cli/sample-apps Platform searchItemTypeConfig \
    --clazz 'Mbrimjn9cs6iP6bu' \
    --itemType 'OPTIONBOX' \
    > test.out 2>&1
eval_tap $? 9 'SearchItemTypeConfig' test.out

#- 10 GetItemTypeConfig
samples/cli/sample-apps Platform getItemTypeConfig \
    --id 'vkCHVxkTTHfv7bjo' \
    > test.out 2>&1
eval_tap $? 10 'GetItemTypeConfig' test.out

#- 11 UpdateItemTypeConfig
samples/cli/sample-apps Platform updateItemTypeConfig \
    --id 'pcpFbXx69N3F2coj' \
    --body '{"clazz": "0H4QmGp71mcXdCXJ", "dryRun": true, "fulfillmentUrl": "KxqHYXsVYQTguDKj", "purchaseConditionUrl": "kWucwzrjW6loTSuN"}' \
    > test.out 2>&1
eval_tap $? 11 'UpdateItemTypeConfig' test.out

#- 12 DeleteItemTypeConfig
samples/cli/sample-apps Platform deleteItemTypeConfig \
    --id 'G0K1r99Etakmb8oM' \
    > test.out 2>&1
eval_tap $? 12 'DeleteItemTypeConfig' test.out

#- 13 QueryCampaigns
samples/cli/sample-apps Platform queryCampaigns \
    --namespace $AB_NAMESPACE \
    --limit '37' \
    --name 'aNHSxbC1IuAnFIkg' \
    --offset '77' \
    --tag 'kmmUDJCPOgrBNe1b' \
    > test.out 2>&1
eval_tap $? 13 'QueryCampaigns' test.out

#- 14 CreateCampaign
samples/cli/sample-apps Platform createCampaign \
    --namespace $AB_NAMESPACE \
    --body '{"description": "p1m0Fmtm8Bmrye7k", "items": [{"extraSubscriptionDays": 97, "itemId": "qKS9v3tbRXr54MeG", "itemName": "FWMAYQzPLx87TdoH", "quantity": 96}, {"extraSubscriptionDays": 24, "itemId": "OUpMCawAkmpjhfnh", "itemName": "ai0YGuAiEurcgXnP", "quantity": 65}, {"extraSubscriptionDays": 36, "itemId": "196crQLNB7Itnfec", "itemName": "CK9ggLjCndlX1GvS", "quantity": 52}], "maxRedeemCountPerCampaignPerUser": 47, "maxRedeemCountPerCode": 25, "maxRedeemCountPerCodePerUser": 96, "maxSaleCount": 89, "name": "SECMcJDo616FOQUW", "redeemEnd": "1995-04-18T00:00:00Z", "redeemStart": "1972-05-27T00:00:00Z", "redeemType": "ITEM", "status": "INACTIVE", "tags": ["TkuGapxd7Bzc4jwV", "6uC4QLQ2iAHs0EL1", "IC0vjVdbniBYnJMV"], "type": "REDEMPTION"}' \
    > test.out 2>&1
eval_tap $? 14 'CreateCampaign' test.out

#- 15 GetCampaign
samples/cli/sample-apps Platform getCampaign \
    --campaignId 'yGVkV8HPmuDgje3G' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 15 'GetCampaign' test.out

#- 16 UpdateCampaign
samples/cli/sample-apps Platform updateCampaign \
    --campaignId 'DOZJxN7ho8IANrmZ' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "OnRvl8Qq5SAWnUXx", "items": [{"extraSubscriptionDays": 48, "itemId": "Fa2jhem1K3uSIGqv", "itemName": "lf74Fo6b9621Tusz", "quantity": 59}, {"extraSubscriptionDays": 7, "itemId": "lddIsRiDb960AejJ", "itemName": "Jm5bGqdfJQVX6TEO", "quantity": 84}, {"extraSubscriptionDays": 68, "itemId": "MHlnRfKpQeAiksu4", "itemName": "4kPvIy8c0z8FTAlm", "quantity": 98}], "maxRedeemCountPerCampaignPerUser": 71, "maxRedeemCountPerCode": 35, "maxRedeemCountPerCodePerUser": 82, "maxSaleCount": 33, "name": "XXaTu6ro3hkM3Fox", "redeemEnd": "1995-04-06T00:00:00Z", "redeemStart": "1981-04-18T00:00:00Z", "redeemType": "ITEM", "status": "INACTIVE", "tags": ["Z6Q5YxileR1c1FGq", "UzbCxa5gKuATGLNV", "88fjin70LD6F0n6Q"]}' \
    > test.out 2>&1
eval_tap $? 16 'UpdateCampaign' test.out

#- 17 GetCampaignDynamic
samples/cli/sample-apps Platform getCampaignDynamic \
    --campaignId 'KYDvj4puYeEdn6cM' \
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
    --body '{"appConfig": {"appName": "Nc2LeKxLwEZI8mGK"}, "customConfig": {"connectionType": "INSECURE", "grpcServerAddress": "INv8CNyWlGDsBKsh"}, "extendType": "CUSTOM"}' \
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
    --body '{"appConfig": {"appName": "k3nOnUf8l2GFWWVC"}, "customConfig": {"connectionType": "TLS", "grpcServerAddress": "z0z4F38HYpzAWGzJ"}, "extendType": "APP"}' \
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
    --storeId 'hvHFWGoP7nfBZnIT' \
    > test.out 2>&1
eval_tap $? 27 'GetRootCategories' test.out

#- 28 CreateCategory
samples/cli/sample-apps Platform createCategory \
    --namespace $AB_NAMESPACE \
    --storeId '1bPd4PWDYN1c4CJl' \
    --body '{"categoryPath": "xepuy9TpzsPbSZlo", "localizationDisplayNames": {"h1bNDMff2n7SXIde": "yuM3xdcyouQijdZP", "ottIKzFjYGcD3gu0": "75nnFEzRQtZHvwW4", "ZdRWZ5iLoryyJn2F": "V1tWHRMJvkpG0u4n"}}' \
    > test.out 2>&1
eval_tap $? 28 'CreateCategory' test.out

#- 29 ListCategoriesBasic
samples/cli/sample-apps Platform listCategoriesBasic \
    --namespace $AB_NAMESPACE \
    --storeId 'UpFokjhVng55ugAS' \
    > test.out 2>&1
eval_tap $? 29 'ListCategoriesBasic' test.out

#- 30 GetCategory
samples/cli/sample-apps Platform getCategory \
    --categoryPath 'V0fmj6XaZAcdCWdp' \
    --namespace $AB_NAMESPACE \
    --storeId 'CKXMG7SQ3HggdAg2' \
    > test.out 2>&1
eval_tap $? 30 'GetCategory' test.out

#- 31 UpdateCategory
samples/cli/sample-apps Platform updateCategory \
    --categoryPath '1AigO03ZWWDUl9SP' \
    --namespace $AB_NAMESPACE \
    --storeId '2hPdkiq3wPBjoCIg' \
    --body '{"localizationDisplayNames": {"OlHtVem6InGshGHQ": "pBuwgprRf9D6WNwM", "xcrtdGy0xKIaP1Ha": "Xjlfzjygz08jvNCY", "B8TLcEOgfH5jsA9U": "DYOKOeStGzGnAN2o"}}' \
    > test.out 2>&1
eval_tap $? 31 'UpdateCategory' test.out

#- 32 DeleteCategory
samples/cli/sample-apps Platform deleteCategory \
    --categoryPath 'QpOJt80sqRUHjT7Y' \
    --namespace $AB_NAMESPACE \
    --storeId 'EeURlT38Zs3lDQcw' \
    > test.out 2>&1
eval_tap $? 32 'DeleteCategory' test.out

#- 33 GetChildCategories
samples/cli/sample-apps Platform getChildCategories \
    --categoryPath '3zxOMfmalSe8oc3Q' \
    --namespace $AB_NAMESPACE \
    --storeId 'kklQLSWyMUfypKWS' \
    > test.out 2>&1
eval_tap $? 33 'GetChildCategories' test.out

#- 34 GetDescendantCategories
samples/cli/sample-apps Platform getDescendantCategories \
    --categoryPath 'W9lOybNyNA7xDnqE' \
    --namespace $AB_NAMESPACE \
    --storeId 'p4VQ1rNR0jv3usoS' \
    > test.out 2>&1
eval_tap $? 34 'GetDescendantCategories' test.out

#- 35 QueryCodes
samples/cli/sample-apps Platform queryCodes \
    --campaignId 'HZkHztRXCIJ5DEuh' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --batchNo '83' \
    --code 'bVvBR1YxA8fLk9Aq' \
    --limit '58' \
    --offset '94' \
    > test.out 2>&1
eval_tap $? 35 'QueryCodes' test.out

#- 36 CreateCodes
samples/cli/sample-apps Platform createCodes \
    --campaignId 'THeqe2Bqq4K1Y7R7' \
    --namespace $AB_NAMESPACE \
    --body '{"quantity": 61}' \
    > test.out 2>&1
eval_tap $? 36 'CreateCodes' test.out

#- 37 Download
samples/cli/sample-apps Platform download \
    --campaignId 'bRf0mmZqF7INcwMT' \
    --namespace $AB_NAMESPACE \
    --batchNo '42' \
    > test.out 2>&1
eval_tap $? 37 'Download' test.out

#- 38 BulkDisableCodes
samples/cli/sample-apps Platform bulkDisableCodes \
    --campaignId '53A5YK92seGZvY3Z' \
    --namespace $AB_NAMESPACE \
    --batchNo '46' \
    > test.out 2>&1
eval_tap $? 38 'BulkDisableCodes' test.out

#- 39 BulkEnableCodes
samples/cli/sample-apps Platform bulkEnableCodes \
    --campaignId '4iARexYGyCf5e2Ag' \
    --namespace $AB_NAMESPACE \
    --batchNo '49' \
    > test.out 2>&1
eval_tap $? 39 'BulkEnableCodes' test.out

#- 40 QueryRedeemHistory
samples/cli/sample-apps Platform queryRedeemHistory \
    --campaignId 'Q4kRce1VEDIkjUws' \
    --namespace $AB_NAMESPACE \
    --code 'Heg3u1mAbULxbIsW' \
    --limit '57' \
    --offset '41' \
    --userId 'FX41AvHfv9QzlR7X' \
    > test.out 2>&1
eval_tap $? 40 'QueryRedeemHistory' test.out

#- 41 GetCode
samples/cli/sample-apps Platform getCode \
    --code '5R4eJUOqPq3bLL9X' \
    --namespace $AB_NAMESPACE \
    --redeemable 'true' \
    > test.out 2>&1
eval_tap $? 41 'GetCode' test.out

#- 42 DisableCode
samples/cli/sample-apps Platform disableCode \
    --code 'qZhEwLzQgJueAJdO' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 42 'DisableCode' test.out

#- 43 EnableCode
samples/cli/sample-apps Platform enableCode \
    --code 'IZ5bsN7sY0GnsRw6' \
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
    --body '{"currencyCode": "4XpH1lghJ4IgREXc", "currencySymbol": "GWHlPbcHaojzGFwq", "currencyType": "REAL", "decimals": 8, "localizationDescriptions": {"oztGtELtKRoykO1x": "YJr6B7NV2zcP4xbY", "XdUQ7eiNS4hyocdh": "5M1N5bcJGGmmUlAD", "tAtaiII0vFgN0S8T": "jqZXrHbquLOqhpXY"}}' \
    > test.out 2>&1
eval_tap $? 48 'CreateCurrency' test.out

#- 49 UpdateCurrency
samples/cli/sample-apps Platform updateCurrency \
    --currencyCode 'pHkDb54KzOKaYuIw' \
    --namespace $AB_NAMESPACE \
    --body '{"localizationDescriptions": {"ZBeMjvVUYyAnigYG": "svkuaSFW3x6vmkws", "OlD7FEjQFTqIUhdM": "24SzFxXuLAxIYBYy", "GrrjlDiYYLix8cpD": "x2uBjYcf3XfcV0NP"}}' \
    > test.out 2>&1
eval_tap $? 49 'UpdateCurrency' test.out

#- 50 DeleteCurrency
samples/cli/sample-apps Platform deleteCurrency \
    --currencyCode 'KY8RX3cONnoRobPv' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 50 'DeleteCurrency' test.out

#- 51 GetCurrencyConfig
samples/cli/sample-apps Platform getCurrencyConfig \
    --currencyCode 'bFPCldQlRdEU2fg7' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 51 'GetCurrencyConfig' test.out

#- 52 GetCurrencySummary
samples/cli/sample-apps Platform getCurrencySummary \
    --currencyCode 'tRND1Ab6NEmeDzo8' \
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
    --body '{"data": [{"id": "3YIagstLTUcCBUWK", "rewards": [{"currency": {"currencyCode": "bU2lMk8gGq1erVcZ", "namespace": "GNIvc7jNdeSyIEG1"}, "item": {"itemId": "JxC3OaV52AMMU2q8", "itemSku": "W2cfSqzi83u0yOwj", "itemType": "DQbzek3KpyhvNqm1"}, "quantity": 57, "type": "CURRENCY"}, {"currency": {"currencyCode": "E5Uz4hdJftaWFzzo", "namespace": "y16k6kgOY1IJlZLn"}, "item": {"itemId": "7rm366rfsJhvrmfV", "itemSku": "8cntbO9f03y8c34z", "itemType": "yUus7OaEyeDsIXBz"}, "quantity": 28, "type": "ITEM"}, {"currency": {"currencyCode": "rceS014AEru26FRs", "namespace": "avxkcgzxebcGrs6g"}, "item": {"itemId": "2u9qbriZAF3ZmXgn", "itemSku": "jwu2yr3BhkP3VAXP", "itemType": "XemsyWNokyioWkpu"}, "quantity": 30, "type": "ITEM"}]}, {"id": "WifridOIJiVyRSOk", "rewards": [{"currency": {"currencyCode": "9evkrhtyeDEQrvez", "namespace": "7ZbyQlHwotGYrCUa"}, "item": {"itemId": "orq0US8Vj99mqs70", "itemSku": "J8Jt2GlEXIcg3K3m", "itemType": "hzW9dyZ4wkn6Bqz4"}, "quantity": 26, "type": "CURRENCY"}, {"currency": {"currencyCode": "0R5PR6DQcoXBirFk", "namespace": "eVULwPlxwAWzhFQK"}, "item": {"itemId": "eIeThHssOygTASgN", "itemSku": "SKDNNcWm1NrQBJRZ", "itemType": "Fz4ut71qYURzyME0"}, "quantity": 61, "type": "ITEM"}, {"currency": {"currencyCode": "EnmSZcD7jWVpE9u5", "namespace": "ZhKr7spK8J9KCnXJ"}, "item": {"itemId": "NyJMyFNSc9PNFYmF", "itemSku": "68uquuA7fzQdKly1", "itemType": "2bUJp2Oh8conl9TP"}, "quantity": 61, "type": "ITEM"}]}, {"id": "YE3dqNdH71rifTEE", "rewards": [{"currency": {"currencyCode": "kFhs6fipyRo1FX13", "namespace": "Ydkkt6TDTQwxS8n7"}, "item": {"itemId": "BedYrHAfhHWOozuD", "itemSku": "C78YvfJznx3Y7ac4", "itemType": "NZXlqH8gYFdUaQ7E"}, "quantity": 97, "type": "ITEM"}, {"currency": {"currencyCode": "1Tn87o1dcOfIVI0P", "namespace": "Lm1WfTPjnKJaVole"}, "item": {"itemId": "nHrDmAiMmRrC5hYM", "itemSku": "ltDTRyJbR6kLEiIT", "itemType": "m1rh02fWRIADai3k"}, "quantity": 72, "type": "CURRENCY"}, {"currency": {"currencyCode": "gB2xCBxVAzc3UWKC", "namespace": "IuFab8lGqTtDyIHd"}, "item": {"itemId": "dSgx3DqQYDoe8fii", "itemSku": "plpDBdgrVMigGqOk", "itemType": "dVYSO13gW5LpbepN"}, "quantity": 44, "type": "CURRENCY"}]}]}' \
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
    --body '{"data": [{"platform": "XBOX", "platformDlcIdMap": {"KCPzZcl3TgGkJ32q": "5YcGAOxFOsjLLC9R", "mQfbKCNo6mpGIhee": "u7VVmCZlgOyd5cjE", "H7Afvqridc4eQfsB": "oq32foHd2Ovqc50y"}}, {"platform": "OCULUS", "platformDlcIdMap": {"3mhazDastln1BCwV": "vyFwG2Gzn6PpASiz", "RPf0qtiRWp8n8tVk": "o8qzU0G0DNTx9UVm", "ezWJfXmfGFdYKyPW": "lAKSzn6HLrR8lEk1"}}, {"platform": "EPICGAMES", "platformDlcIdMap": {"p6EG2A0bSEXVNn6n": "F4wgXeQcTkGwUcaT", "x2oM2upYEEyIyAZd": "hzlw33WF2Sowbw81", "HiqvKHD1ZIsG9agj": "qpcNo8QSpWzqTy1x"}}]}' \
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
    --appType 'GAME' \
    --entitlementClazz 'ENTITLEMENT' \
    --entitlementName '9kItADZQaGU3owSf' \
    --itemId '["K5NjSEQskbHEkNh1", "v32eotO0oULEFlpW", "wjbeb0iaoWtWMA2a"]' \
    --limit '75' \
    --offset '85' \
    --userId 'IAe1aW8TmUAlmuxD' \
    > test.out 2>&1
eval_tap $? 59 'QueryEntitlements' test.out

#- 60 QueryEntitlements1
samples/cli/sample-apps Platform queryEntitlements1 \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --itemIds '["nGfZlPl5VYDIbUGP", "J9KRWE4YUEJravlx", "aE5o96VUod4ASphE"]' \
    --limit '10' \
    --offset '4' \
    > test.out 2>&1
eval_tap $? 60 'QueryEntitlements1' test.out

#- 61 GrantEntitlements
samples/cli/sample-apps Platform grantEntitlements \
    --namespace $AB_NAMESPACE \
    --body '{"entitlementGrantList": [{"endDate": "1985-08-24T00:00:00Z", "grantedCode": "LUOYj0ZMBrQAsqwA", "itemId": "riVHPktQ1oh68AsN", "itemNamespace": "71Wb3EP6qwtTgkml", "language": "PMg-VYui", "quantity": 81, "region": "pzXXqwh9WjjvMeFg", "source": "REWARD", "startDate": "1994-04-30T00:00:00Z", "storeId": "Nyo5P5XpgX6eGnTH"}, {"endDate": "1986-12-26T00:00:00Z", "grantedCode": "yUUFicDIEHgHI2pB", "itemId": "OhdqE2B2Fj1HWUPt", "itemNamespace": "9Nw5hOon4tO0gWfb", "language": "sNi_rEHG-mi", "quantity": 69, "region": "20ZWaASnCFKbWeNM", "source": "IAP", "startDate": "1987-07-11T00:00:00Z", "storeId": "LlVbG2K5T7CRLWio"}, {"endDate": "1999-03-10T00:00:00Z", "grantedCode": "tZIvtqGYKRS7omNi", "itemId": "y8rBO2yMIz9ID2HK", "itemNamespace": "d0fl5GBfjqmA1iq8", "language": "pO-177", "quantity": 51, "region": "jPbRfFyXtVzma2Un", "source": "PROMOTION", "startDate": "1988-10-08T00:00:00Z", "storeId": "1UIVX9q7QESMiiUr"}], "userIds": ["zD0rt9b1lJiAwqqC", "iXzrQZU23MM1TRkW", "QcVyABMNZiTg0Icp"]}' \
    > test.out 2>&1
eval_tap $? 61 'GrantEntitlements' test.out

#- 62 RevokeEntitlements
samples/cli/sample-apps Platform revokeEntitlements \
    --namespace $AB_NAMESPACE \
    --body '["gYZGHob2IcrKsNXT", "fOmVvTGdv0ZCSsT8", "CPkPO8P9Pj0yqUIO"]' \
    > test.out 2>&1
eval_tap $? 62 'RevokeEntitlements' test.out

#- 63 GetEntitlement
samples/cli/sample-apps Platform getEntitlement \
    --entitlementId 'bpnOzd4Liax9YWVB' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 63 'GetEntitlement' test.out

#- 64 QueryFulfillmentHistories
samples/cli/sample-apps Platform queryFulfillmentHistories \
    --namespace $AB_NAMESPACE \
    --limit '86' \
    --offset '8' \
    --status 'SUCCESS' \
    --userId 'ZFFGi3ZLQY2IlJfX' \
    > test.out 2>&1
eval_tap $? 64 'QueryFulfillmentHistories' test.out

#- 65 QueryIAPClawbackHistory
samples/cli/sample-apps Platform queryIAPClawbackHistory \
    --namespace $AB_NAMESPACE \
    --endTime 'q3oz5Wdx5WzMC1Oo' \
    --eventType 'CHARGEBACK_REVERSED' \
    --externalOrderId '9CkxI6oJxPgBZBxl' \
    --limit '16' \
    --offset '1' \
    --startTime 'BE8XSrYlC2CLckvC' \
    --status 'IGNORED' \
    --userId 'cL03tGOeauS5A3sB' \
    > test.out 2>&1
eval_tap $? 65 'QueryIAPClawbackHistory' test.out

#- 66 MockPlayStationStreamEvent
samples/cli/sample-apps Platform mockPlayStationStreamEvent \
    --namespace $AB_NAMESPACE \
    --body '{"body": {"account": "9H2F5YqKqX0WFgjX", "additionalData": {"entitlement": [{"clientTransaction": [{"amountConsumed": 58, "clientTransactionId": "1x0wGJNljyN9q4Rl"}, {"amountConsumed": 82, "clientTransactionId": "xIK35zvIzZfZ9NnP"}, {"amountConsumed": 67, "clientTransactionId": "IIjaIacnTKiy12se"}], "entitlementId": "S94GcbvDEPdOaiaL", "usageCount": 63}, {"clientTransaction": [{"amountConsumed": 63, "clientTransactionId": "JJ48iCkFgqWTh6Rp"}, {"amountConsumed": 70, "clientTransactionId": "xvs6IQsLXywYGKeL"}, {"amountConsumed": 84, "clientTransactionId": "G6OYOJgrNmwQrLgO"}], "entitlementId": "x3ops3OurEb6vbIa", "usageCount": 3}, {"clientTransaction": [{"amountConsumed": 65, "clientTransactionId": "hVMkY0KwAG31PmLt"}, {"amountConsumed": 24, "clientTransactionId": "IGRxucVBTbjVTXnQ"}, {"amountConsumed": 18, "clientTransactionId": "2oWzV8r4QwXurnQv"}], "entitlementId": "Ic6mAA5WFkSh3OCW", "usageCount": 11}], "purpose": "32YMpfAANrjHjwJB"}, "originalTitleName": "5AQrRJrhmh2Xciwa", "paymentProductSKU": "R9wtNBIJKLBXNRhT", "purchaseDate": "kbr20EeAwMiFTzoY", "sourceOrderItemId": "m03ph6jPaxWDddu0", "titleName": "x3vRttXVPbz5xGX0"}, "eventDomain": "wGWsYfcUJ4dg1NId", "eventSource": "jd17o6z8iRklKnCL", "eventType": "seadWHSQ1OgPFJzx", "eventVersion": 53, "id": "6eavzmMsQXPrlW52", "timestamp": "3B8SKrlgMZsadSFP"}' \
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
    --body '{"bundleId": "Ub1tcysimj0u4dUo", "password": "ewzalTLiDlRQrRzZ"}' \
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
    --body '{"sandboxId": "o0quy49E0e48zmnx"}' \
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
    --body '{"applicationName": "EGPm7XxuEXTILP3l", "serviceAccountId": "HyAOjMVos4YTnngF"}' \
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
    --body '{"data": [{"itemIdentity": "du9FrOQT6rQmYCOU", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"7EUBurwM0rM9KEmc": "jY4Z2Q90CxPjJ8Sc", "IsdyztlwvCVGgDg0": "XQd239cUwhTMIqd7", "avF7yF6xiPv4JmUN": "YmtkAlNoeefB7EAB"}}, {"itemIdentity": "AvhTP8DMFUUs3WBn", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"YCmtwXwEecJykENZ": "mToRUCGZhFKyE0MR", "N5Cy1VMiNiZdH8Hy": "IXSHKMkklhHMwG1l", "KdKtRHDzIiiOwqvG": "2lYHYbTEcyf8fg7V"}}, {"itemIdentity": "qBsfFLiiKUBRY7BI", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"Rn9jUMYBRTE2KzoD": "KdvzCGfqQayywU3O", "m1Ec2CEQTQbfIoYa": "QRBv60WTWR0F64Q5", "OANwo77qTfMOAOEC": "QkODvKTriwDpcPvJ"}}]}' \
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
    --body '{"appId": "TN7Z8INiIMKp2HmO", "appSecret": "svCWbubj27pnWSnr"}' \
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
    --body '{"backOfficeServerClientId": "ZmNXOyntKLlhanEu", "backOfficeServerClientSecret": "xDEjHRlVCjK4qG4M", "enableStreamJob": true, "environment": "1Wku1LiPki3yWoLS", "streamName": "Yj88clEvAFd03C1H", "streamPartnerName": "Qqxm7g9CwyVGcd4K"}' \
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
    --body '{"backOfficeServerClientId": "hyW07OhFewdJImoy", "backOfficeServerClientSecret": "F5HRYwLMjca5VqPk", "enableStreamJob": true, "environment": "QyOjro3itKQPjoPc", "streamName": "HyvZPZt5e5OiCwVq", "streamPartnerName": "OM6zV0qIwph5ih0Z"}' \
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
    --body '{"appId": "GNQ8YG41nFf0fdVA", "publisherAuthenticationKey": "BKsiNfNjuNEqSM5V"}' \
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
    --body '{"clientId": "mlXWCvxCUIz9esNd", "clientSecret": "WzETMA6pcPTmJAE1", "organizationId": "vLqgcRcXBf1XbMoe"}' \
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
    --body '{"relyingPartyCert": "6Mj3xJrYstg7zafG"}' \
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
    --password 'wOPRBrq4aUO9M58L' \
    > test.out 2>&1
eval_tap $? 97 'UpdateXblBPCertFile' test.out

#- 98 DownloadInvoiceDetails
samples/cli/sample-apps Platform downloadInvoiceDetails \
    --namespace $AB_NAMESPACE \
    --feature 'htrSLcpDHcdRkNkX' \
    --itemId '1fIF48JYryih3ERL' \
    --itemType 'BUNDLE' \
    --endTime 'M8Z1hdIq2KBtx3B4' \
    --startTime '8CSZxJtCvDzJUvnb' \
    > test.out 2>&1
eval_tap $? 98 'DownloadInvoiceDetails' test.out

#- 99 GenerateInvoiceSummary
samples/cli/sample-apps Platform generateInvoiceSummary \
    --namespace $AB_NAMESPACE \
    --feature 'YA8itvr7zv9mqJct' \
    --itemId 'vAsyGcPGHyOJVAH3' \
    --itemType 'APP' \
    --endTime 'YJ0UUCXhJ5V5A3Rn' \
    --startTime 'aUubwhaQr9lbzojR' \
    > test.out 2>&1
eval_tap $? 99 'GenerateInvoiceSummary' test.out

#- 100 SyncInGameItem
samples/cli/sample-apps Platform syncInGameItem \
    --namespace $AB_NAMESPACE \
    --storeId 'X8RpqONsTuulBAN3' \
    --body '{"categoryPath": "jv7AjLDBEIwmvRHw", "targetItemId": "wJpPRjvprcPXtayF", "targetNamespace": "AVJslGC4rryX3BgN"}' \
    > test.out 2>&1
eval_tap $? 100 'SyncInGameItem' test.out

#- 101 CreateItem
samples/cli/sample-apps Platform createItem \
    --namespace $AB_NAMESPACE \
    --storeId '2WKeJdr4BmDgOvqX' \
    --body '{"appId": "bLSgxr84SWWVAm49", "appType": "GAME", "baseAppId": "w31GSVY7Ph0e4f7z", "boothName": "HGiibflWtnDJK6Qt", "categoryPath": "a9wOKiyoKa2nGUeV", "clazz": "hOcWnhXbwybjXxTB", "displayOrder": 46, "entitlementType": "CONSUMABLE", "ext": {"TObokTZanOLqpHFo": {}, "yOEor3DXHkdegmAT": {}, "mPW3VYDEDLUH0j3z": {}}, "features": ["XVJpIcYzcXahFm5H", "IJB8EJUm1vbrtF4j", "OdQaZU2sROuyYNxu"], "flexible": false, "images": [{"as": "I23js6jr3XP2q3fr", "caption": "zGXLFPQlVKwdvlxs", "height": 60, "imageUrl": "3bpaJ24qw4kbJIW5", "smallImageUrl": "AP9O3nZHgIW0dOYB", "width": 29}, {"as": "MILqWS8WJg9j4h1D", "caption": "q69DRgu0P1FSYEPG", "height": 53, "imageUrl": "aRBIzjNNGoiarQ9O", "smallImageUrl": "IBuTQ3MUR8zYqTAC", "width": 29}, {"as": "YwTcjB8kyFoxffUg", "caption": "cb6SFm7i1sfCeZ6O", "height": 24, "imageUrl": "j1EKiJmnxXlGDxLX", "smallImageUrl": "DFaHDu7bUA4iKLPS", "width": 36}], "itemIds": ["0DumhTdGJrYUpCiR", "7AaFsDKdPYTfDOpM", "1SWBFhqagBDCc0Mo"], "itemQty": {"OXxUvaNnGG9vuAvh": 56, "2qY2hM0PvjFGW9ZF": 55, "1h8aQBejLeedsdrF": 54}, "itemType": "COINS", "listable": true, "localizations": {"MQ6S4pEAD9iagPbG": {"description": "KV9sf2OzoUgsdHtQ", "localExt": {"luiX52vPBaQR0Fdh": {}, "KhXJGrcdaVXlvq1F": {}, "QIGwh8yfjrrrd3HJ": {}}, "longDescription": "eU4ibJBK4YgIh1JZ", "title": "DdhMcNv4b9ByFntW"}, "h3zM46TV8dpn6qDJ": {"description": "SlnTzb7e4b9ion7r", "localExt": {"6zTJKou85jPBzWyG": {}, "ZfdyvyYqZg6SWzhT": {}, "NKY8stWS13MWz6cw": {}}, "longDescription": "v5ggO5NUY0EYha47", "title": "l7mHVxddO18Wy6jM"}, "CrnBpry61X9A2fmL": {"description": "1Vt2RXRE8v9cRayI", "localExt": {"n1dnl0c780xMpcc4": {}, "qZQ3E6OMqmC1sKoG": {}, "EYObXeJGZNnYdZi1": {}}, "longDescription": "qzYgbMqaGJjwDUwC", "title": "oMEioxXgrfbJycbE"}}, "lootBoxConfig": {"rewardCount": 94, "rewards": [{"lootBoxItems": [{"count": 71, "duration": 29, "endDate": "1989-10-09T00:00:00Z", "itemId": "umzwKTfHbWUXNg7e", "itemSku": "5L6cqFkH6teDeY8U", "itemType": "4vnbXSBqBhQfG0Js"}, {"count": 13, "duration": 11, "endDate": "1978-10-06T00:00:00Z", "itemId": "556BWvhbuRhhIrBI", "itemSku": "AWqv0lzaxuhrkuIt", "itemType": "CInR7EjQ3Kp8rPG8"}, {"count": 46, "duration": 8, "endDate": "1979-04-02T00:00:00Z", "itemId": "gGp1fZHugYnVddfy", "itemSku": "eq3aKzX5qe1begVe", "itemType": "BlASmH95x1ndrUzU"}], "name": "m6vQU0BMKxfClMhd", "odds": 0.8131119567080475, "type": "PROBABILITY_GROUP", "weight": 4}, {"lootBoxItems": [{"count": 47, "duration": 29, "endDate": "1983-04-20T00:00:00Z", "itemId": "5KpsVn6sE8D44Jth", "itemSku": "9P2NyT6LnyIT3B7Z", "itemType": "07R1Nei9lVeQiVFT"}, {"count": 76, "duration": 25, "endDate": "1997-05-04T00:00:00Z", "itemId": "H9ixXvE5YD5Ri7yr", "itemSku": "KJd8QMJl5d0txMfx", "itemType": "WfzIMoqGe6repBcm"}, {"count": 16, "duration": 34, "endDate": "1980-08-08T00:00:00Z", "itemId": "mVNhkqAEyzWzupLE", "itemSku": "Ha2WnZmwiyz37X8I", "itemType": "sLJa1gluDUBDiN7K"}], "name": "pu270nJE4B6SDrZF", "odds": 0.3978097352301334, "type": "REWARD", "weight": 79}, {"lootBoxItems": [{"count": 47, "duration": 38, "endDate": "1981-08-18T00:00:00Z", "itemId": "oo6bbZbUbb9qsCoO", "itemSku": "APuDhF93Vr2zbYSb", "itemType": "PoYTUoYI5VbBVCtw"}, {"count": 39, "duration": 100, "endDate": "1983-09-25T00:00:00Z", "itemId": "sCWUJu6sPipuZ1Su", "itemSku": "01zelVg5wNDb1xpZ", "itemType": "d2tlVWI6bEB5DoFd"}, {"count": 8, "duration": 8, "endDate": "1992-09-30T00:00:00Z", "itemId": "OZjdvCwDSZNZjULU", "itemSku": "03qTAd8mzPagGaTx", "itemType": "n2kRi6s29pLcshvs"}], "name": "5kCRcwO6puOVUp6O", "odds": 0.09056348728295105, "type": "REWARD_GROUP", "weight": 11}], "rollFunction": "CUSTOM"}, "maxCount": 13, "maxCountPerUser": 55, "name": "xosAlHxjbaQSJXdU", "optionBoxConfig": {"boxItems": [{"count": 92, "duration": 53, "endDate": "1984-02-16T00:00:00Z", "itemId": "rS98Wt1Efo4zV3W5", "itemSku": "thlyzSN2XXojAOkl", "itemType": "DwP6aVHPqPUreBXT"}, {"count": 37, "duration": 2, "endDate": "1983-11-25T00:00:00Z", "itemId": "lcz7lQ7OBXRTVbZM", "itemSku": "QBBBko77N1nY0HS6", "itemType": "cNJCIoufzUX4aaj0"}, {"count": 80, "duration": 35, "endDate": "1998-01-05T00:00:00Z", "itemId": "EFhsKAKpRuSCOewe", "itemSku": "Mj3PzZ9EFhFxiFSj", "itemType": "T7qK7VVcMjfLDILy"}]}, "purchasable": false, "recurring": {"cycle": "QUARTERLY", "fixedFreeDays": 50, "fixedTrialCycles": 39, "graceDays": 88}, "regionData": {"9tHGd3r7ahJA2t1m": [{"currencyCode": "tsumABCxDMmVvXJx", "currencyNamespace": "V3hDpDnUkfkRLhsF", "currencyType": "VIRTUAL", "discountAmount": 48, "discountExpireAt": "1977-09-15T00:00:00Z", "discountPercentage": 9, "discountPurchaseAt": "1986-07-03T00:00:00Z", "expireAt": "1997-04-28T00:00:00Z", "price": 88, "purchaseAt": "1976-10-09T00:00:00Z", "trialPrice": 42}, {"currencyCode": "pgpHEOLH5uuKZU35", "currencyNamespace": "c5bw0PD6Zn2Q6hDi", "currencyType": "VIRTUAL", "discountAmount": 46, "discountExpireAt": "1985-12-23T00:00:00Z", "discountPercentage": 34, "discountPurchaseAt": "1982-06-19T00:00:00Z", "expireAt": "1993-07-27T00:00:00Z", "price": 16, "purchaseAt": "1981-04-22T00:00:00Z", "trialPrice": 66}, {"currencyCode": "AwnNinviSHk2ZOhp", "currencyNamespace": "JzpLH1zMtCYf6dIc", "currencyType": "REAL", "discountAmount": 45, "discountExpireAt": "1973-09-18T00:00:00Z", "discountPercentage": 52, "discountPurchaseAt": "1997-08-25T00:00:00Z", "expireAt": "1993-03-13T00:00:00Z", "price": 75, "purchaseAt": "1971-05-01T00:00:00Z", "trialPrice": 7}], "TeNHXMhH1or1qnni": [{"currencyCode": "tY1NtNdFEHyF3v69", "currencyNamespace": "g18ftPLsCqF9lZAe", "currencyType": "REAL", "discountAmount": 92, "discountExpireAt": "1988-07-22T00:00:00Z", "discountPercentage": 19, "discountPurchaseAt": "1984-11-06T00:00:00Z", "expireAt": "1991-12-29T00:00:00Z", "price": 76, "purchaseAt": "1986-09-24T00:00:00Z", "trialPrice": 40}, {"currencyCode": "jDTROFLH5jx8uyff", "currencyNamespace": "KQl6VB0qA3NDRLhM", "currencyType": "VIRTUAL", "discountAmount": 82, "discountExpireAt": "1996-02-06T00:00:00Z", "discountPercentage": 72, "discountPurchaseAt": "1979-04-23T00:00:00Z", "expireAt": "1993-12-28T00:00:00Z", "price": 9, "purchaseAt": "1993-04-18T00:00:00Z", "trialPrice": 69}, {"currencyCode": "7iUPaXNAEMFAArsB", "currencyNamespace": "vLvlRMUr7n2IaqJq", "currencyType": "VIRTUAL", "discountAmount": 19, "discountExpireAt": "1984-07-09T00:00:00Z", "discountPercentage": 20, "discountPurchaseAt": "1974-10-12T00:00:00Z", "expireAt": "1997-04-28T00:00:00Z", "price": 59, "purchaseAt": "1981-01-21T00:00:00Z", "trialPrice": 79}], "KgfdquMpaugpcRGn": [{"currencyCode": "2fQ6GVJaXuNucE0Z", "currencyNamespace": "q0whVfPR0k5Dir57", "currencyType": "VIRTUAL", "discountAmount": 7, "discountExpireAt": "1982-08-11T00:00:00Z", "discountPercentage": 88, "discountPurchaseAt": "1998-12-03T00:00:00Z", "expireAt": "1994-03-31T00:00:00Z", "price": 84, "purchaseAt": "1988-09-26T00:00:00Z", "trialPrice": 41}, {"currencyCode": "sx54xSMfMSQw2HLH", "currencyNamespace": "5X6lKs5v66Z00Tu0", "currencyType": "REAL", "discountAmount": 65, "discountExpireAt": "1972-02-17T00:00:00Z", "discountPercentage": 69, "discountPurchaseAt": "1986-12-19T00:00:00Z", "expireAt": "1973-04-23T00:00:00Z", "price": 28, "purchaseAt": "1973-07-02T00:00:00Z", "trialPrice": 86}, {"currencyCode": "Ysnf79BOFoPTdvKx", "currencyNamespace": "1jVLDInGFp6PaL2U", "currencyType": "REAL", "discountAmount": 34, "discountExpireAt": "1979-06-07T00:00:00Z", "discountPercentage": 88, "discountPurchaseAt": "1985-11-20T00:00:00Z", "expireAt": "1990-04-29T00:00:00Z", "price": 42, "purchaseAt": "1977-03-13T00:00:00Z", "trialPrice": 24}]}, "saleConfig": {"currencyCode": "mVmNticAyEEO5z3u", "price": 53}, "seasonType": "TIER", "sectionExclusive": false, "sellable": true, "sku": "WwKip08V4ZMWuSW7", "stackable": true, "status": "INACTIVE", "tags": ["DEn8JHOGAo08Xsjp", "wQUvAPjnqbnciyN3", "asYQ2xlLZZMtvwYe"], "targetCurrencyCode": "3X0kPOaw2OgEaF55", "targetNamespace": "3U7YKpHId9HTCOyG", "thumbnailUrl": "kOHntk2xGpw19wwK", "useCount": 24}' \
    > test.out 2>&1
eval_tap $? 101 'CreateItem' test.out

#- 102 GetItemByAppId
samples/cli/sample-apps Platform getItemByAppId \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --storeId 'd3LVpsOoytvlHnZ5' \
    --appId 'US4kCnvU46PcshsI' \
    > test.out 2>&1
eval_tap $? 102 'GetItemByAppId' test.out

#- 103 QueryItems
samples/cli/sample-apps Platform queryItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --appType 'GAME' \
    --availableDate 'JvH9lu6TkxLEV2r8' \
    --baseAppId 'LyoVEfsAkpkCdVUA' \
    --categoryPath 'mhI4cQj52NYt7S5n' \
    --features 'GTPpBUhoWv6dp7sy' \
    --includeSubCategoryItem 'true' \
    --itemType 'COINS' \
    --limit '28' \
    --offset '34' \
    --region 'gSIlKxT2Z7AdksKY' \
    --sortBy '["displayOrder", "name", "name:asc"]' \
    --storeId 'sWKPMxxuKTZWUuYV' \
    --tags 'VtXfzLnpsIThIzBX' \
    --targetNamespace 'qgWJumKnazKZwGx5' \
    > test.out 2>&1
eval_tap $? 103 'QueryItems' test.out

#- 104 ListBasicItemsByFeatures
samples/cli/sample-apps Platform listBasicItemsByFeatures \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --features '["X1geJ9ThFLHYc2Ep", "5D2thP2mSVYk0X8c", "Dh95ctwYqPfMsrlm"]' \
    > test.out 2>&1
eval_tap $? 104 'ListBasicItemsByFeatures' test.out

#- 105 GetItems
samples/cli/sample-apps Platform getItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'S5NSsvp5dniHeXfS' \
    --itemIds 'xIBBsQBQDJrT6E5V' \
    > test.out 2>&1
eval_tap $? 105 'GetItems' test.out

#- 106 GetItemBySku
samples/cli/sample-apps Platform getItemBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'Qk5LbxAKp43DdrJM' \
    --sku '6qckpX427t8ut88y' \
    > test.out 2>&1
eval_tap $? 106 'GetItemBySku' test.out

#- 107 GetLocaleItemBySku
samples/cli/sample-apps Platform getLocaleItemBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --language '3pf2hg1q4uJZLspc' \
    --populateBundle 'false' \
    --region 'rYorXF5nlu4G33bC' \
    --storeId 'GYxYdI4nHgpdp3PG' \
    --sku '0exlQhgc0OYLzuEU' \
    > test.out 2>&1
eval_tap $? 107 'GetLocaleItemBySku' test.out

#- 108 GetEstimatedPrice
samples/cli/sample-apps Platform getEstimatedPrice \
    --namespace $AB_NAMESPACE \
    --region 'ELjikn9uHugpyZNu' \
    --storeId 'DEKa9ZG4wgdnhuQN' \
    --itemIds 'vHIZE5hUkLrze6OX' \
    --userId 'xbmw7Wcb5jbKqkve' \
    > test.out 2>&1
eval_tap $? 108 'GetEstimatedPrice' test.out

#- 109 GetItemIdBySku
samples/cli/sample-apps Platform getItemIdBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --storeId 'kbODLQIX1I6QcUkc' \
    --sku 'd66eYypz3THW3vyt' \
    > test.out 2>&1
eval_tap $? 109 'GetItemIdBySku' test.out

#- 110 GetBulkItemIdBySkus
samples/cli/sample-apps Platform getBulkItemIdBySkus \
    --namespace $AB_NAMESPACE \
    --sku '["AK6IVlUVZF3ZHKkd", "BR2XdXer6wr8UTSM", "8zfIay7Uiq85AxNn"]' \
    --storeId 'xUy2Ld7xDtSJrGaH' \
    > test.out 2>&1
eval_tap $? 110 'GetBulkItemIdBySkus' test.out

#- 111 BulkGetLocaleItems
samples/cli/sample-apps Platform bulkGetLocaleItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --language 'daUQHznKPuDiRLCz' \
    --region 'qEolDqsDQGGUAcuk' \
    --storeId 'odb0ABNN5qFGPiwG' \
    --itemIds '3FniVhv2sSjmXISy' \
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
    --userId '1FpfaEZrqQ2wa6q8' \
    --body '{"itemIds": ["oDAkZxMGxJ0BWG05", "qqWnOt9heIHooex2", "94bdScnql6ZjMbjf"]}' \
    > test.out 2>&1
eval_tap $? 113 'ValidateItemPurchaseCondition' test.out

#- 114 BulkUpdateRegionData
samples/cli/sample-apps Platform bulkUpdateRegionData \
    --namespace $AB_NAMESPACE \
    --storeId 'GUmcaWnjFV5tcHll' \
    --body '{"changes": [{"itemIdentities": ["iHDfy4i7QreOmOAn", "DdJtqPmtUh48LvNY", "8uGdwj4XuNRIVcFZ"], "itemIdentityType": "ITEM_SKU", "regionData": {"tovQPHVvqpct6mto": [{"currencyCode": "omfL5JFhp1rMYikl", "currencyNamespace": "QxCfFiGePOJ7d8jj", "currencyType": "VIRTUAL", "discountAmount": 92, "discountExpireAt": "1989-01-21T00:00:00Z", "discountPercentage": 78, "discountPurchaseAt": "1991-09-18T00:00:00Z", "discountedPrice": 18, "expireAt": "1994-11-01T00:00:00Z", "price": 44, "purchaseAt": "1989-02-16T00:00:00Z", "trialPrice": 50}, {"currencyCode": "vBuXEIBxP5VJ8G8Z", "currencyNamespace": "mFxRlC2JuORqNYFf", "currencyType": "VIRTUAL", "discountAmount": 5, "discountExpireAt": "1972-10-01T00:00:00Z", "discountPercentage": 49, "discountPurchaseAt": "1978-08-10T00:00:00Z", "discountedPrice": 54, "expireAt": "1981-01-24T00:00:00Z", "price": 50, "purchaseAt": "1990-11-28T00:00:00Z", "trialPrice": 37}, {"currencyCode": "4uKUa1arBNmbvZbF", "currencyNamespace": "aV9IJ58leQM7EmtC", "currencyType": "VIRTUAL", "discountAmount": 64, "discountExpireAt": "1997-11-09T00:00:00Z", "discountPercentage": 62, "discountPurchaseAt": "1987-09-28T00:00:00Z", "discountedPrice": 52, "expireAt": "1981-03-11T00:00:00Z", "price": 74, "purchaseAt": "1998-12-13T00:00:00Z", "trialPrice": 60}], "qAmhj1ZG2Rx4avAP": [{"currencyCode": "RtD1HfFnYIygcyFH", "currencyNamespace": "d2rvdUZcwn4gpGi0", "currencyType": "REAL", "discountAmount": 20, "discountExpireAt": "1972-09-14T00:00:00Z", "discountPercentage": 12, "discountPurchaseAt": "1990-05-28T00:00:00Z", "discountedPrice": 31, "expireAt": "1974-12-09T00:00:00Z", "price": 92, "purchaseAt": "1998-08-19T00:00:00Z", "trialPrice": 22}, {"currencyCode": "paALRmvgTelaybPZ", "currencyNamespace": "2qW06z11cix3IUp9", "currencyType": "VIRTUAL", "discountAmount": 38, "discountExpireAt": "1980-05-26T00:00:00Z", "discountPercentage": 49, "discountPurchaseAt": "1994-02-23T00:00:00Z", "discountedPrice": 52, "expireAt": "1978-05-16T00:00:00Z", "price": 34, "purchaseAt": "1999-09-24T00:00:00Z", "trialPrice": 54}, {"currencyCode": "E8f7bpEdyf8dmmB7", "currencyNamespace": "HYiB13JR29qSAanl", "currencyType": "VIRTUAL", "discountAmount": 7, "discountExpireAt": "1999-07-22T00:00:00Z", "discountPercentage": 60, "discountPurchaseAt": "1973-11-07T00:00:00Z", "discountedPrice": 23, "expireAt": "1999-05-17T00:00:00Z", "price": 70, "purchaseAt": "1991-05-10T00:00:00Z", "trialPrice": 78}], "sHvaAzKO462m1NrT": [{"currencyCode": "iwoyhy17EsogrCrE", "currencyNamespace": "pjZ4K64g4dV7KWcs", "currencyType": "REAL", "discountAmount": 53, "discountExpireAt": "1974-10-27T00:00:00Z", "discountPercentage": 17, "discountPurchaseAt": "1972-04-01T00:00:00Z", "discountedPrice": 91, "expireAt": "1977-03-17T00:00:00Z", "price": 73, "purchaseAt": "1975-04-03T00:00:00Z", "trialPrice": 19}, {"currencyCode": "dwOASFdpVsrpTJ9Q", "currencyNamespace": "BZ2KsQqv6eZpybNV", "currencyType": "REAL", "discountAmount": 73, "discountExpireAt": "1971-07-11T00:00:00Z", "discountPercentage": 10, "discountPurchaseAt": "1981-05-23T00:00:00Z", "discountedPrice": 48, "expireAt": "1975-05-20T00:00:00Z", "price": 6, "purchaseAt": "1981-05-01T00:00:00Z", "trialPrice": 30}, {"currencyCode": "qKuIq4hUAJsySY1e", "currencyNamespace": "01ARsQtnF6I0ViDV", "currencyType": "REAL", "discountAmount": 62, "discountExpireAt": "1993-02-18T00:00:00Z", "discountPercentage": 29, "discountPurchaseAt": "1993-05-14T00:00:00Z", "discountedPrice": 32, "expireAt": "1977-11-11T00:00:00Z", "price": 54, "purchaseAt": "1974-07-19T00:00:00Z", "trialPrice": 83}]}}, {"itemIdentities": ["7CP8u8tfcuz30f99", "09u3nBfUWpdDGLmk", "J96G561ifHSp5aUi"], "itemIdentityType": "ITEM_ID", "regionData": {"ilYBnB03gjXA1Nx1": [{"currencyCode": "QfAoqvAvJKpGfNHF", "currencyNamespace": "M2fr78N637sPEh5v", "currencyType": "REAL", "discountAmount": 30, "discountExpireAt": "1985-04-09T00:00:00Z", "discountPercentage": 37, "discountPurchaseAt": "1971-02-14T00:00:00Z", "discountedPrice": 35, "expireAt": "1976-07-10T00:00:00Z", "price": 19, "purchaseAt": "1999-06-13T00:00:00Z", "trialPrice": 18}, {"currencyCode": "TGMn8Ce3saAQIzim", "currencyNamespace": "46KSan6W109OeyHR", "currencyType": "REAL", "discountAmount": 77, "discountExpireAt": "1995-10-04T00:00:00Z", "discountPercentage": 100, "discountPurchaseAt": "1987-07-11T00:00:00Z", "discountedPrice": 8, "expireAt": "1983-06-02T00:00:00Z", "price": 89, "purchaseAt": "1977-09-05T00:00:00Z", "trialPrice": 95}, {"currencyCode": "YhmGdshXxrSp3ueO", "currencyNamespace": "Y3PD6f3NW5f3kZn9", "currencyType": "VIRTUAL", "discountAmount": 54, "discountExpireAt": "1980-12-11T00:00:00Z", "discountPercentage": 71, "discountPurchaseAt": "1995-03-07T00:00:00Z", "discountedPrice": 27, "expireAt": "1991-05-03T00:00:00Z", "price": 27, "purchaseAt": "1994-11-20T00:00:00Z", "trialPrice": 60}], "gF2eOlEqJznJVLHA": [{"currencyCode": "kqAxFCBLQgVABht8", "currencyNamespace": "xQIqIbBPycDdXdTe", "currencyType": "VIRTUAL", "discountAmount": 90, "discountExpireAt": "1997-05-24T00:00:00Z", "discountPercentage": 54, "discountPurchaseAt": "1977-05-08T00:00:00Z", "discountedPrice": 34, "expireAt": "1979-12-18T00:00:00Z", "price": 13, "purchaseAt": "1971-12-28T00:00:00Z", "trialPrice": 55}, {"currencyCode": "SjZUffcfo59aOtGI", "currencyNamespace": "dtsTy5Ed5CgOfCfa", "currencyType": "VIRTUAL", "discountAmount": 1, "discountExpireAt": "1986-09-20T00:00:00Z", "discountPercentage": 16, "discountPurchaseAt": "1985-07-31T00:00:00Z", "discountedPrice": 77, "expireAt": "1994-03-14T00:00:00Z", "price": 95, "purchaseAt": "1998-11-03T00:00:00Z", "trialPrice": 37}, {"currencyCode": "Jlj5Ya49GkSlu9Bm", "currencyNamespace": "qVUJ6PGJWI52ZZv4", "currencyType": "VIRTUAL", "discountAmount": 16, "discountExpireAt": "1980-07-12T00:00:00Z", "discountPercentage": 2, "discountPurchaseAt": "1974-09-19T00:00:00Z", "discountedPrice": 34, "expireAt": "1993-03-15T00:00:00Z", "price": 77, "purchaseAt": "1987-03-10T00:00:00Z", "trialPrice": 77}], "GnY2zmpcG39ZPyDT": [{"currencyCode": "2mbWdmOgzZoj2L3K", "currencyNamespace": "KjZG7abkdirx0PAN", "currencyType": "VIRTUAL", "discountAmount": 6, "discountExpireAt": "1973-01-29T00:00:00Z", "discountPercentage": 20, "discountPurchaseAt": "1975-10-06T00:00:00Z", "discountedPrice": 86, "expireAt": "1979-06-03T00:00:00Z", "price": 47, "purchaseAt": "1973-03-13T00:00:00Z", "trialPrice": 14}, {"currencyCode": "fceHOZ6anOooouKF", "currencyNamespace": "bJJs2V3SrQ2QQMpv", "currencyType": "REAL", "discountAmount": 44, "discountExpireAt": "1975-06-19T00:00:00Z", "discountPercentage": 50, "discountPurchaseAt": "1986-08-23T00:00:00Z", "discountedPrice": 54, "expireAt": "1975-11-13T00:00:00Z", "price": 3, "purchaseAt": "1994-09-22T00:00:00Z", "trialPrice": 80}, {"currencyCode": "vxQFCxOtencpB5ga", "currencyNamespace": "UFKdhF8NJWCm3w6q", "currencyType": "REAL", "discountAmount": 69, "discountExpireAt": "1979-10-12T00:00:00Z", "discountPercentage": 71, "discountPurchaseAt": "1979-05-03T00:00:00Z", "discountedPrice": 42, "expireAt": "1971-06-13T00:00:00Z", "price": 28, "purchaseAt": "1984-02-17T00:00:00Z", "trialPrice": 21}]}}, {"itemIdentities": ["XLee0A6zbZ6rcex9", "xSdiZZRtzYYkLTDO", "SZVHUzG31JFJJuiC"], "itemIdentityType": "ITEM_SKU", "regionData": {"wOdDaIoYcqS95qoX": [{"currencyCode": "njGZbUzJqOi55QgN", "currencyNamespace": "njMc6P7ICdPtFgPJ", "currencyType": "REAL", "discountAmount": 34, "discountExpireAt": "1995-03-17T00:00:00Z", "discountPercentage": 59, "discountPurchaseAt": "1996-08-14T00:00:00Z", "discountedPrice": 80, "expireAt": "1991-04-01T00:00:00Z", "price": 54, "purchaseAt": "1997-08-30T00:00:00Z", "trialPrice": 45}, {"currencyCode": "DhfVbSoMPzeHDXHo", "currencyNamespace": "Nq72GCuqQTyMt0lL", "currencyType": "VIRTUAL", "discountAmount": 48, "discountExpireAt": "1998-09-03T00:00:00Z", "discountPercentage": 87, "discountPurchaseAt": "1990-11-21T00:00:00Z", "discountedPrice": 10, "expireAt": "1984-09-27T00:00:00Z", "price": 59, "purchaseAt": "1992-08-18T00:00:00Z", "trialPrice": 93}, {"currencyCode": "x8WfkZJOnG4A27ta", "currencyNamespace": "eS2RsCapNMfwl5OE", "currencyType": "VIRTUAL", "discountAmount": 3, "discountExpireAt": "1971-06-05T00:00:00Z", "discountPercentage": 47, "discountPurchaseAt": "1981-09-23T00:00:00Z", "discountedPrice": 22, "expireAt": "1996-06-30T00:00:00Z", "price": 99, "purchaseAt": "1988-01-23T00:00:00Z", "trialPrice": 89}], "wDP8qZSjNdY6dPMG": [{"currencyCode": "NkmPV2INVNnQOgX1", "currencyNamespace": "a4c0gQ8tK7qST0aL", "currencyType": "REAL", "discountAmount": 29, "discountExpireAt": "1998-02-12T00:00:00Z", "discountPercentage": 36, "discountPurchaseAt": "1983-02-11T00:00:00Z", "discountedPrice": 15, "expireAt": "1992-12-01T00:00:00Z", "price": 34, "purchaseAt": "1995-09-09T00:00:00Z", "trialPrice": 56}, {"currencyCode": "6ngIUnB5jLh8aswE", "currencyNamespace": "GWT7Z2KyNihUSuWN", "currencyType": "REAL", "discountAmount": 8, "discountExpireAt": "1978-05-14T00:00:00Z", "discountPercentage": 42, "discountPurchaseAt": "1994-01-13T00:00:00Z", "discountedPrice": 94, "expireAt": "1971-01-29T00:00:00Z", "price": 1, "purchaseAt": "1987-06-28T00:00:00Z", "trialPrice": 15}, {"currencyCode": "BqKp5IesfylKGiMs", "currencyNamespace": "P1lfBuNg9MsHubLz", "currencyType": "VIRTUAL", "discountAmount": 14, "discountExpireAt": "1985-07-12T00:00:00Z", "discountPercentage": 12, "discountPurchaseAt": "1980-06-12T00:00:00Z", "discountedPrice": 63, "expireAt": "1994-07-05T00:00:00Z", "price": 73, "purchaseAt": "1971-04-27T00:00:00Z", "trialPrice": 30}], "8rLHRaomkSidowR6": [{"currencyCode": "XeBA8B8fyhKPOz1t", "currencyNamespace": "WxwvsenrU0GSrSq0", "currencyType": "VIRTUAL", "discountAmount": 41, "discountExpireAt": "1996-11-12T00:00:00Z", "discountPercentage": 3, "discountPurchaseAt": "1975-01-14T00:00:00Z", "discountedPrice": 15, "expireAt": "1999-04-08T00:00:00Z", "price": 71, "purchaseAt": "1996-11-17T00:00:00Z", "trialPrice": 62}, {"currencyCode": "lRnN93pLhW9O8ZW5", "currencyNamespace": "Sm1wJ35S8twVHXgv", "currencyType": "VIRTUAL", "discountAmount": 55, "discountExpireAt": "1972-05-15T00:00:00Z", "discountPercentage": 60, "discountPurchaseAt": "1995-04-27T00:00:00Z", "discountedPrice": 16, "expireAt": "1986-01-24T00:00:00Z", "price": 48, "purchaseAt": "1982-03-02T00:00:00Z", "trialPrice": 21}, {"currencyCode": "DXoEfX54tqvSrJSN", "currencyNamespace": "nhbndKK2nMJkwvkK", "currencyType": "VIRTUAL", "discountAmount": 9, "discountExpireAt": "1974-09-16T00:00:00Z", "discountPercentage": 17, "discountPurchaseAt": "1987-12-07T00:00:00Z", "discountedPrice": 48, "expireAt": "1972-09-09T00:00:00Z", "price": 32, "purchaseAt": "1998-07-07T00:00:00Z", "trialPrice": 69}]}}]}' \
    > test.out 2>&1
eval_tap $? 114 'BulkUpdateRegionData' test.out

#- 115 SearchItems
samples/cli/sample-apps Platform searchItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --itemType 'SEASON' \
    --limit '76' \
    --offset '43' \
    --sortBy 'EEsCPGM6r2ZfZohD' \
    --storeId '0JcadOLP1bNGBgPd' \
    --keyword 'fmFoWQiw8PyzGldf' \
    --language 'uWFW2BcOu7QrT3O0' \
    > test.out 2>&1
eval_tap $? 115 'SearchItems' test.out

#- 116 QueryUncategorizedItems
samples/cli/sample-apps Platform queryUncategorizedItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --limit '6' \
    --offset '27' \
    --sortBy '["displayOrder:desc", "name:asc", "name"]' \
    --storeId 'qzBABcsNPU7xySwE' \
    > test.out 2>&1
eval_tap $? 116 'QueryUncategorizedItems' test.out

#- 117 GetItem
samples/cli/sample-apps Platform getItem \
    --itemId 'wWpBsVEczFepmdbj' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'F1xqLEGLby20oEYP' \
    > test.out 2>&1
eval_tap $? 117 'GetItem' test.out

#- 118 UpdateItem
samples/cli/sample-apps Platform updateItem \
    --itemId 'ZlAJ6JgNuT32Z2J8' \
    --namespace $AB_NAMESPACE \
    --storeId 'YZOADxEqpl9xMcW9' \
    --body '{"appId": "eWBF4xooWrX55Teo", "appType": "DEMO", "baseAppId": "UJaDwDA7vZpo4moV", "boothName": "8uBcAoBQTa0g0Tzc", "categoryPath": "GBSGvYMIU3ZoEBIG", "clazz": "VZ6oHY3cjLrs8j2l", "displayOrder": 18, "entitlementType": "CONSUMABLE", "ext": {"OmypV6hsjRtk4boS": {}, "KURDu6kPHKdNAF9t": {}, "UhILuHHKsGhh2FlI": {}}, "features": ["qruzun2AVaAqJh7H", "CoR9A5WIHf1vYqwh", "hSvgZxz6hLCCxiQt"], "flexible": true, "images": [{"as": "wAgtf756chYfWhjI", "caption": "7Or4Bwdxdi4puEGP", "height": 36, "imageUrl": "TVIEg0IcElTd35IF", "smallImageUrl": "3uB3pyunsa5UcTKH", "width": 99}, {"as": "J3XhO14IPtpuLatP", "caption": "8EQWjljORcArrb4I", "height": 6, "imageUrl": "UF21ohMFNcZ9txZ8", "smallImageUrl": "XOs0K1Qcl9SoiMV0", "width": 20}, {"as": "SFTf104JCSsqD6Ch", "caption": "SEIfa39tW0pkRHR0", "height": 4, "imageUrl": "RSDLZFRmnKYDTZnw", "smallImageUrl": "N3urNcedNnG9hOYA", "width": 97}], "itemIds": ["UkvpWkHun43fjDVd", "llnUrCPQzgB2pJqL", "qNlIi8O7PErxxaXV"], "itemQty": {"XEdOQynfFeE5Pw4h": 80, "3cCFpEEdZJiLH3BX": 75, "1JHjKFf2wQSF65oW": 99}, "itemType": "INGAMEITEM", "listable": false, "localizations": {"a3nFsshzEzhCTaNx": {"description": "foWrpUn7Ag8fEWcu", "localExt": {"1Q4tcrTQaK191bwC": {}, "RoGR5fuZtV1gFR1j": {}, "GD9wvPuF67cI6iYc": {}}, "longDescription": "dslO3bdzI6gG8Ar6", "title": "z4dexz1Zc6Sfqg9R"}, "X5jk8M9NeotBtbBZ": {"description": "hw3mF5ISofY7aIle", "localExt": {"ZJaySle3eUNllZAK": {}, "tQI6Hwi5ueljqB3K": {}, "OjNoJ9WJX3zr7S3F": {}}, "longDescription": "8SLTRUZVJaptvSRR", "title": "aV5rYj9TVXQ1vKV9"}, "jDhlgZ6GnafGtVnS": {"description": "lVVKxOIapuPntlqY", "localExt": {"I5nPPY1GIo0e0EXY": {}, "ji3AZ4gn8ki8Bxx6": {}, "ZhW6FnQsbgMXPu3h": {}}, "longDescription": "DkYk4GBoYioDnfJD", "title": "VLcoBY4PPYnqh82i"}}, "lootBoxConfig": {"rewardCount": 61, "rewards": [{"lootBoxItems": [{"count": 12, "duration": 84, "endDate": "1997-04-21T00:00:00Z", "itemId": "VomOdqpYsFyyamIv", "itemSku": "6hJN5Wq0beyNha76", "itemType": "MzLYv1vdHQx5MPJz"}, {"count": 14, "duration": 63, "endDate": "1975-02-12T00:00:00Z", "itemId": "KggHPVwRTGQ4vHZJ", "itemSku": "qbTutRB651ENIV9G", "itemType": "4vxBv1IAmwF0iOAJ"}, {"count": 14, "duration": 18, "endDate": "1993-05-18T00:00:00Z", "itemId": "fkOxJNFJuRSvhUPK", "itemSku": "x01WyrhWVTXu4xgA", "itemType": "wM0fDdo4sVhMGM6E"}], "name": "NLfxrjxMsnKilxe0", "odds": 0.36183242627222467, "type": "REWARD_GROUP", "weight": 17}, {"lootBoxItems": [{"count": 55, "duration": 85, "endDate": "1994-07-03T00:00:00Z", "itemId": "M2wN9rwy7IObRg5g", "itemSku": "7cAeirSB0Y7xTh8p", "itemType": "Y5x7bSMnvZuUxJfZ"}, {"count": 69, "duration": 90, "endDate": "1997-07-07T00:00:00Z", "itemId": "CTR9DUlR5n6iX3JX", "itemSku": "HZwvgkHJRjSJxBga", "itemType": "hHJHGt2d8mPqbY5G"}, {"count": 12, "duration": 28, "endDate": "1973-07-21T00:00:00Z", "itemId": "cPXzUamqo63HB4IQ", "itemSku": "gy5NKSrY072Owj0m", "itemType": "OYVhAwajVf5iPTa7"}], "name": "eC6fZDusrkkEs1fk", "odds": 0.058817508180072364, "type": "REWARD", "weight": 18}, {"lootBoxItems": [{"count": 41, "duration": 15, "endDate": "1974-06-28T00:00:00Z", "itemId": "IhLvpU4WKVoqIj2e", "itemSku": "UJGodGYjIp6We8z9", "itemType": "fJh2UeLZ8xAEMh1w"}, {"count": 46, "duration": 32, "endDate": "1992-03-23T00:00:00Z", "itemId": "E3PsinyBBYMy06Rb", "itemSku": "h1O4bmw6AdxJnh61", "itemType": "pLFJC5xU3m7Zg915"}, {"count": 74, "duration": 62, "endDate": "1971-04-28T00:00:00Z", "itemId": "Km1ZOLzKRYMPnEYx", "itemSku": "f2eczuuNBDUNtP9h", "itemType": "zbfK2HPu7tTT90sQ"}], "name": "Ef6GxAkkBipvWVFk", "odds": 0.6715439563097022, "type": "REWARD_GROUP", "weight": 7}], "rollFunction": "CUSTOM"}, "maxCount": 15, "maxCountPerUser": 62, "name": "6RSkEVaMctq3h3OC", "optionBoxConfig": {"boxItems": [{"count": 91, "duration": 63, "endDate": "1982-05-20T00:00:00Z", "itemId": "81BUqmvECy5ZbDry", "itemSku": "1f5MXwMMVKmK0FDt", "itemType": "qq4lkkrEfp0Ae1Xi"}, {"count": 56, "duration": 75, "endDate": "1988-01-26T00:00:00Z", "itemId": "NQGe8KzzwArgABCM", "itemSku": "Pjj7gLjRZkCStV6C", "itemType": "R5wAbHVcULtkZi8B"}, {"count": 30, "duration": 3, "endDate": "1979-09-21T00:00:00Z", "itemId": "CU4y8do1g71EMGei", "itemSku": "qWT02P38snFx5hCu", "itemType": "iA5ENjeKHZejWO7g"}]}, "purchasable": true, "recurring": {"cycle": "WEEKLY", "fixedFreeDays": 6, "fixedTrialCycles": 96, "graceDays": 87}, "regionData": {"NpDZSwn0Db8h5Kmi": [{"currencyCode": "smtVciGslwqtPzoj", "currencyNamespace": "CBsOsMKfoOFPbmYj", "currencyType": "VIRTUAL", "discountAmount": 52, "discountExpireAt": "1973-09-04T00:00:00Z", "discountPercentage": 87, "discountPurchaseAt": "1979-08-24T00:00:00Z", "expireAt": "1988-04-01T00:00:00Z", "price": 89, "purchaseAt": "1986-11-06T00:00:00Z", "trialPrice": 98}, {"currencyCode": "WJFftaJ17KallifS", "currencyNamespace": "FyLdkRM9yiszjujs", "currencyType": "REAL", "discountAmount": 96, "discountExpireAt": "1978-04-02T00:00:00Z", "discountPercentage": 51, "discountPurchaseAt": "1998-08-16T00:00:00Z", "expireAt": "1987-05-20T00:00:00Z", "price": 55, "purchaseAt": "1997-06-08T00:00:00Z", "trialPrice": 71}, {"currencyCode": "oVNZx0fTzQxFco8v", "currencyNamespace": "26fJ8rXtx1P6gA9h", "currencyType": "VIRTUAL", "discountAmount": 94, "discountExpireAt": "1976-01-23T00:00:00Z", "discountPercentage": 9, "discountPurchaseAt": "1975-10-27T00:00:00Z", "expireAt": "1977-11-06T00:00:00Z", "price": 100, "purchaseAt": "1980-07-01T00:00:00Z", "trialPrice": 29}], "NmpYg3c5LCTVn6sd": [{"currencyCode": "syvYwtDwlq4xzz38", "currencyNamespace": "IZMujxwQUsX44I16", "currencyType": "REAL", "discountAmount": 1, "discountExpireAt": "1981-10-09T00:00:00Z", "discountPercentage": 22, "discountPurchaseAt": "1997-02-01T00:00:00Z", "expireAt": "1976-02-17T00:00:00Z", "price": 71, "purchaseAt": "1980-09-13T00:00:00Z", "trialPrice": 87}, {"currencyCode": "LyMCijm3JQCdycj2", "currencyNamespace": "X3mnmlxffJ1lXa4C", "currencyType": "VIRTUAL", "discountAmount": 41, "discountExpireAt": "1986-09-26T00:00:00Z", "discountPercentage": 76, "discountPurchaseAt": "1995-07-28T00:00:00Z", "expireAt": "1996-08-15T00:00:00Z", "price": 98, "purchaseAt": "1978-08-02T00:00:00Z", "trialPrice": 54}, {"currencyCode": "fEtTKn4IUmRWPODE", "currencyNamespace": "Cx6sAQqqgK6PR3DK", "currencyType": "VIRTUAL", "discountAmount": 19, "discountExpireAt": "1977-04-04T00:00:00Z", "discountPercentage": 45, "discountPurchaseAt": "1992-11-21T00:00:00Z", "expireAt": "1986-11-13T00:00:00Z", "price": 54, "purchaseAt": "1979-08-14T00:00:00Z", "trialPrice": 75}], "NhSTjlPYTCdlpvjN": [{"currencyCode": "DKii2VivdKlGzM1Q", "currencyNamespace": "syCEAIOZyiebFhn6", "currencyType": "REAL", "discountAmount": 47, "discountExpireAt": "1998-01-13T00:00:00Z", "discountPercentage": 31, "discountPurchaseAt": "1987-09-25T00:00:00Z", "expireAt": "1996-03-29T00:00:00Z", "price": 63, "purchaseAt": "1986-04-06T00:00:00Z", "trialPrice": 99}, {"currencyCode": "EXe7dfzHAYhD9Ltr", "currencyNamespace": "sFuyp0RfB1pKsZwH", "currencyType": "VIRTUAL", "discountAmount": 62, "discountExpireAt": "1984-08-08T00:00:00Z", "discountPercentage": 48, "discountPurchaseAt": "1993-02-21T00:00:00Z", "expireAt": "1982-09-21T00:00:00Z", "price": 95, "purchaseAt": "1972-03-09T00:00:00Z", "trialPrice": 29}, {"currencyCode": "RAvyM8nA9GoVtest", "currencyNamespace": "QCg3WtgCEFkHnQrf", "currencyType": "VIRTUAL", "discountAmount": 65, "discountExpireAt": "1990-06-26T00:00:00Z", "discountPercentage": 24, "discountPurchaseAt": "1993-06-07T00:00:00Z", "expireAt": "1974-12-29T00:00:00Z", "price": 21, "purchaseAt": "1980-06-05T00:00:00Z", "trialPrice": 48}]}, "saleConfig": {"currencyCode": "Mcv8oX8tgGiCk7Z5", "price": 31}, "seasonType": "PASS", "sectionExclusive": false, "sellable": false, "sku": "LvTcaeOnaiCP2iHq", "stackable": false, "status": "INACTIVE", "tags": ["NpFqBXWWsY6IjoIs", "EMa2ij6m4fduEbZG", "lQgUVlzeO33J6nYm"], "targetCurrencyCode": "bMraFPxQGgDLQzxa", "targetNamespace": "NvIpq6e5SRu4EAqP", "thumbnailUrl": "bMG2I3De1DLTIetJ", "useCount": 26}' \
    > test.out 2>&1
eval_tap $? 118 'UpdateItem' test.out

#- 119 DeleteItem
samples/cli/sample-apps Platform deleteItem \
    --itemId 't4BHL11Se8KSDjKJ' \
    --namespace $AB_NAMESPACE \
    --force 'true' \
    --storeId 'Q0asFHCiUav4AMOn' \
    > test.out 2>&1
eval_tap $? 119 'DeleteItem' test.out

#- 120 AcquireItem
samples/cli/sample-apps Platform acquireItem \
    --itemId 'DCnKrO8XN7ekzF2M' \
    --namespace $AB_NAMESPACE \
    --body '{"count": 69, "orderNo": "9guBImIFJ1Tl3w8Q"}' \
    > test.out 2>&1
eval_tap $? 120 'AcquireItem' test.out

#- 121 GetApp
samples/cli/sample-apps Platform getApp \
    --itemId 'krrjbwoFAEGH1IXh' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --storeId 'GZVpW8bVqYEBtRCz' \
    > test.out 2>&1
eval_tap $? 121 'GetApp' test.out

#- 122 UpdateApp
samples/cli/sample-apps Platform updateApp \
    --itemId '2UxLSQvmfyD0Vepo' \
    --namespace $AB_NAMESPACE \
    --storeId 'zsMawxrXRFsLpWs9' \
    --body '{"carousel": [{"alt": "mGjziVbJxf0PiHoZ", "previewUrl": "s5ty74gIAr8ux0mz", "thumbnailUrl": "Ya7wtcibNfY4OijW", "type": "video", "url": "rJRO9cFTBi5ktYSk", "videoSource": "vimeo"}, {"alt": "oZ3VLWvDgfPkVaRW", "previewUrl": "HnyLqqU7UZS5qrQU", "thumbnailUrl": "pByxNGxIrZUhgOUQ", "type": "video", "url": "JfbDxpf9Xj0GDB1t", "videoSource": "vimeo"}, {"alt": "pXblJ6BjUuLH5Aks", "previewUrl": "irXZrC8XkJC0taZ1", "thumbnailUrl": "pEmd589azZaMXTIh", "type": "image", "url": "b7B0aF3Z3H8C3Uq6", "videoSource": "youtube"}], "developer": "m19vT4LoSamizCWS", "forumUrl": "jO8nGxlFcTPgPGXl", "genres": ["Simulation", "Sports", "Adventure"], "localizations": {"1ogXnNl1Nuomj5EM": {"announcement": "sKJYclgPPQxLzpFA", "slogan": "9jQXeXn1rHZ3vdoW"}, "6jqW036qnDTsczHQ": {"announcement": "2ZDMsvXoFy2PiANY", "slogan": "xCBLBq207Bwwx18m"}, "o92naxcHGWe3JhcS": {"announcement": "FQIaJRpJiAiGPzC1", "slogan": "liDpypYkqChjBmMj"}}, "platformRequirements": {"1WNASXhXHhOuByZ5": [{"additionals": "KvoOwzAtcXwpycsX", "directXVersion": "Kes6BkJcB194IDwU", "diskSpace": "CODmSiy8L3tkgM2m", "graphics": "gEmNzqsEKd2onCI6", "label": "1byUZ6ueqr5wH53x", "osVersion": "xIWAfXmDdd6ad30G", "processor": "eVInKCciAjtWDcN2", "ram": "R8zENPUpzyrYgYT9", "soundCard": "Xfj3eL4kPbZgSG0x"}, {"additionals": "cBrPzBgMAqTuAVp3", "directXVersion": "ctcvNGv5ABOJR9S4", "diskSpace": "U9y5DswBYGeGHGhC", "graphics": "62Z8D9lGd7sitJ3v", "label": "zUUJX4KQgldoqgSR", "osVersion": "1y4XGfvtUd3bPiwW", "processor": "9OFdAmYAmisHTL0E", "ram": "g2e3yvo4SjkeACUC", "soundCard": "NcFYmjGV1w5O0552"}, {"additionals": "wtoewFtpKO5ScANe", "directXVersion": "IbqvgRwA2OjWr4rY", "diskSpace": "JE5aAsGVvh2GVhh1", "graphics": "N8UokngSr15NOnvm", "label": "4I4dDfdb9jQIbfPm", "osVersion": "vy93hCJqypXWsUKV", "processor": "l8SyMhXp8e8SvZNa", "ram": "AuH7dHZqxe8T0kBY", "soundCard": "GgnRJF99dFp4TP2I"}], "8fR0oHI4uVxoYeFN": [{"additionals": "bXOsKfStmmHN6q0A", "directXVersion": "DBJJ5YK1DJ4mZ4R5", "diskSpace": "LF5arYVqURNRbWVK", "graphics": "siITfcdLRj9N3ctD", "label": "65ekXjo9NEcXS0zl", "osVersion": "K7F0YO4aj02HjtAq", "processor": "DENcq2aJDHSa6qAx", "ram": "FqtT8QlvP27yZq1E", "soundCard": "DJ99B9lkTiO9doO7"}, {"additionals": "KIatMPj0mEiZUy5x", "directXVersion": "6yyYq98KR9sdQikd", "diskSpace": "7tp5zpgshomO2wTE", "graphics": "XqgheMzSuwtkC1fJ", "label": "LiLPmto1ybtvWGJf", "osVersion": "1nUyxgQEbbjVG2vd", "processor": "ApQ23zvz9SSR8p8S", "ram": "uta2iRSU4etD7eCE", "soundCard": "GWme4istxnUfrr2p"}, {"additionals": "Md4NGtWVQNtAXHaX", "directXVersion": "d8pvK7hX1iO15CtP", "diskSpace": "4CrOBhVjLoQDITY6", "graphics": "PwCpIVPM2MVQLI6b", "label": "2MBjqFZl7D97lwth", "osVersion": "KiblaWFLldezcwqz", "processor": "4THA66iwCAxn9nbK", "ram": "PBZCI1p33dB9ejri", "soundCard": "2bXBg3mZneJV39V6"}], "AfFFTDcI7FMp7GXN": [{"additionals": "W2pbiXK1sh6D5udI", "directXVersion": "m16zaNArmfbZvV3E", "diskSpace": "B5fEBiB1RmxdtQMs", "graphics": "HLSmljqQKJQtuIHI", "label": "9NutFzzYnGpxL0Z4", "osVersion": "gS5PN9ARC30xRyf5", "processor": "UYPfR5q6cziaO9Ku", "ram": "uTttetIPKmAqZ3Yj", "soundCard": "BKFeENaCBl8GvTgl"}, {"additionals": "KcQAHB78AHMZLAWJ", "directXVersion": "oDo4v9tZCjlf6Xmq", "diskSpace": "eF3DfD2zaLsSZjIG", "graphics": "fkKuWSjCTh5cSVgU", "label": "GzJ6DQoFR0u92faW", "osVersion": "DNo3m8cc5mjAkG4h", "processor": "g4QGdJBOFOOq16ZV", "ram": "8nPj6mWxl3SQbRxO", "soundCard": "1JxZg6CKoSjFtBQc"}, {"additionals": "Tgyv9PVxhM6bdW6l", "directXVersion": "uFTcfno2MNPRrZlx", "diskSpace": "aKyO0josdLeCQUyD", "graphics": "XC5xiqzWtq9I5tN2", "label": "pwjEWm25EVzY8eNJ", "osVersion": "IuIRfg5f5seB7xqf", "processor": "VkZ0dc2ZjyB2Gy9H", "ram": "5DfM6ssWNGQI9TIJ", "soundCard": "Y3uKCaePqfypCaUw"}]}, "platforms": ["Windows", "IOS", "MacOS"], "players": ["CrossPlatformMulti", "CrossPlatformMulti", "CrossPlatformMulti"], "primaryGenre": "RPG", "publisher": "QQv4INUNq42hSzMI", "releaseDate": "1993-08-04T00:00:00Z", "websiteUrl": "qQs3gdg9ICqV09oL"}' \
    > test.out 2>&1
eval_tap $? 122 'UpdateApp' test.out

#- 123 DisableItem
samples/cli/sample-apps Platform disableItem \
    --itemId 'O1hzgyt5HZ1qVpjt' \
    --namespace $AB_NAMESPACE \
    --storeId 'jjCea2whVfOO1tIM' \
    > test.out 2>&1
eval_tap $? 123 'DisableItem' test.out

#- 124 GetItemDynamicData
samples/cli/sample-apps Platform getItemDynamicData \
    --itemId 'hrctwErvDTEEjZcF' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 124 'GetItemDynamicData' test.out

#- 125 EnableItem
samples/cli/sample-apps Platform enableItem \
    --itemId 'nblF20uKOoYMhzcK' \
    --namespace $AB_NAMESPACE \
    --storeId 'xfqRMmu3QsTpSsRp' \
    > test.out 2>&1
eval_tap $? 125 'EnableItem' test.out

#- 126 FeatureItem
samples/cli/sample-apps Platform featureItem \
    --feature 'rNrbE8odsdE57a8c' \
    --itemId 'nF1DzHBhjNKgNqF6' \
    --namespace $AB_NAMESPACE \
    --storeId 'OROTkZp0AfNM6WOl' \
    > test.out 2>&1
eval_tap $? 126 'FeatureItem' test.out

#- 127 DefeatureItem
samples/cli/sample-apps Platform defeatureItem \
    --feature 'ro73wqiA8U1nQXaK' \
    --itemId 's4zvYygj6atFC2o3' \
    --namespace $AB_NAMESPACE \
    --storeId 'PryN3UP6EIQPllM0' \
    > test.out 2>&1
eval_tap $? 127 'DefeatureItem' test.out

#- 128 GetLocaleItem
samples/cli/sample-apps Platform getLocaleItem \
    --itemId 'XUCj30M2cUUVUuuE' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --language '6SGDk2DN4hnbj4L8' \
    --populateBundle 'false' \
    --region 'zTXAftBK3YuuNa7b' \
    --storeId 'FRzQr2AhoeLRu3YJ' \
    > test.out 2>&1
eval_tap $? 128 'GetLocaleItem' test.out

#- 129 UpdateItemPurchaseCondition
samples/cli/sample-apps Platform updateItemPurchaseCondition \
    --itemId 'LkQoemxSr4kPlJm1' \
    --namespace $AB_NAMESPACE \
    --storeId 'jknfivuJzywVlsi3' \
    --body '{"purchaseCondition": {"conditionGroups": [{"operator": "and", "predicates": [{"anyOf": 68, "comparison": "isLessThanOrEqual", "name": "DwSgSjT8CtL2bM2V", "predicateType": "EntitlementPredicate", "value": "H1Cqlu0j5XGkJgSS", "values": ["VNY8Gb6A9ECbEiI7", "6LDko2CeogwxCXiI", "pUMlfSiAYrPQm4qe"]}, {"anyOf": 64, "comparison": "isLessThanOrEqual", "name": "JyTsKj0ztnEUbSfi", "predicateType": "SeasonTierPredicate", "value": "oqBklpESwk6BmGHI", "values": ["6U2ahjk5U4YuBB3i", "mxLdSPPMv0cLFtaJ", "eaokQVmWo5KDuqRs"]}, {"anyOf": 45, "comparison": "is", "name": "5lNXLIx7ogGDqipk", "predicateType": "SeasonPassPredicate", "value": "2GdV1jlx047H99d7", "values": ["vzwXRZHrX5lOkGDs", "Bh8tctxZCriXu5Qo", "aWmya5FS9c6aCmhq"]}]}, {"operator": "and", "predicates": [{"anyOf": 55, "comparison": "isNot", "name": "Mu0wCrLdOggIA7we", "predicateType": "SeasonPassPredicate", "value": "XM9vwHiFbpUtrZfI", "values": ["YrjV1eLao2La654H", "BxE6PcjkgK00UQZL", "viAUBQvwCL8GAl8A"]}, {"anyOf": 47, "comparison": "isLessThanOrEqual", "name": "S64VOIXj0w7W5Axg", "predicateType": "EntitlementPredicate", "value": "YotPAnJcPI2SOCRX", "values": ["QdcMSUJytkKSNODQ", "koQeRqxtikj6fZ9z", "Smf69HdMdtTKa261"]}, {"anyOf": 86, "comparison": "includes", "name": "U5JRFKpnAXvS2b5w", "predicateType": "SeasonTierPredicate", "value": "GM9MLWKE9pM3YgDR", "values": ["1RhypVx2vkQ8J2S2", "1lpkEX96MC0l4t8Z", "QAPlUQKmD92QEOUF"]}]}, {"operator": "or", "predicates": [{"anyOf": 22, "comparison": "isGreaterThanOrEqual", "name": "J551fkPIkS2A5Te1", "predicateType": "SeasonPassPredicate", "value": "lcU1ozLFlZ5MYQQB", "values": ["Uh2vBFAbbz0wSKjb", "hTkBEOmi7q9DzRQ6", "Kxgdd7bTvmFRT96f"]}, {"anyOf": 83, "comparison": "isNot", "name": "vJIQKdn8Ma8Lu52M", "predicateType": "SeasonTierPredicate", "value": "qskWclm8ZoLZ9LK5", "values": ["QBzRmN6hnyQBsXBl", "YbaYVdJkAyAJ51yg", "Xdj9VazHt2qmswUd"]}, {"anyOf": 11, "comparison": "isNot", "name": "IqlWT0jRXOi63s1J", "predicateType": "EntitlementPredicate", "value": "oi6LIMshMuacpwCg", "values": ["sb2eemCisrbgz0j9", "2msCwlCoaUpPY6UL", "jAFisZXfx3YGz2z3"]}]}]}}' \
    > test.out 2>&1
eval_tap $? 129 'UpdateItemPurchaseCondition' test.out

#- 130 ReturnItem
samples/cli/sample-apps Platform returnItem \
    --itemId 'yd0rkaoQZG9r4SAY' \
    --namespace $AB_NAMESPACE \
    --body '{"orderNo": "mRca6XQSZ92RyW90"}' \
    > test.out 2>&1
eval_tap $? 130 'ReturnItem' test.out

#- 131 QueryKeyGroups
samples/cli/sample-apps Platform queryKeyGroups \
    --namespace $AB_NAMESPACE \
    --limit '53' \
    --name '9bCeltmE8zdp0JI0' \
    --offset '70' \
    --tag 'JEskn1nPdKQLHWGp' \
    > test.out 2>&1
eval_tap $? 131 'QueryKeyGroups' test.out

#- 132 CreateKeyGroup
samples/cli/sample-apps Platform createKeyGroup \
    --namespace $AB_NAMESPACE \
    --body '{"description": "NscEuR5u9LwWahWv", "name": "3DKUVwTgq0gse0PX", "status": "INACTIVE", "tags": ["cTygwr6e5uBSboyj", "zqDFxlaIPCtqv9Fw", "xADu4vWgnUVGFBK7"]}' \
    > test.out 2>&1
eval_tap $? 132 'CreateKeyGroup' test.out

#- 133 GetKeyGroupByBoothName
eval_tap 0 133 'GetKeyGroupByBoothName # SKIP deprecated' test.out

#- 134 GetKeyGroup
samples/cli/sample-apps Platform getKeyGroup \
    --keyGroupId 'rFLLrPVclvxGheFH' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 134 'GetKeyGroup' test.out

#- 135 UpdateKeyGroup
samples/cli/sample-apps Platform updateKeyGroup \
    --keyGroupId 'hpqezaWwGQANuh70' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "sdOLXJ1mFO9F2Dl1", "name": "rRbol0LixWtq1jZH", "status": "INACTIVE", "tags": ["G5Aa1KMZ330IHK61", "FGDFYdl6VF4f8KjI", "cep3gFOZ1Yyjh1N9"]}' \
    > test.out 2>&1
eval_tap $? 135 'UpdateKeyGroup' test.out

#- 136 GetKeyGroupDynamic
samples/cli/sample-apps Platform getKeyGroupDynamic \
    --keyGroupId '03AapsEwubVMdQoI' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 136 'GetKeyGroupDynamic' test.out

#- 137 ListKeys
samples/cli/sample-apps Platform listKeys \
    --keyGroupId 'HQud9fB3rs4VyHw6' \
    --namespace $AB_NAMESPACE \
    --limit '65' \
    --offset '84' \
    --status 'ACTIVE' \
    > test.out 2>&1
eval_tap $? 137 'ListKeys' test.out

#- 138 UploadKeys
samples/cli/sample-apps Platform uploadKeys \
    --keyGroupId 'SnQxvbDQG7psnlnu' \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 138 'UploadKeys' test.out

#- 139 QueryOrders
samples/cli/sample-apps Platform queryOrders \
    --namespace $AB_NAMESPACE \
    --endTime 'UmUPcvYrW4kliM6Z' \
    --limit '12' \
    --offset '94' \
    --orderNos '["y5Z4GASeoCmH3aDI", "sfAGGRRBzTx1lKdH", "5jpAlGR0VIxGLKy4"]' \
    --sortBy 'l3t85BRyN5sIfqPS' \
    --startTime '7xyhT7hUCmn2lo6i' \
    --status 'FULFILLED' \
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
    --orderNo 'PaZVGXrO17toLCkG' \
    > test.out 2>&1
eval_tap $? 141 'GetOrder' test.out

#- 142 RefundOrder
samples/cli/sample-apps Platform refundOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'Cci40QOXLGe2CIcd' \
    --body '{"description": "TXJjMCRGfLpL0ID5"}' \
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
    --body '{"dryRun": false, "notifyUrl": "bqMlzy98dOvTQpKZ", "privateKey": "9AccacBtHZBraxGo"}' \
    > test.out 2>&1
eval_tap $? 144 'UpdatePaymentCallbackConfig' test.out

#- 145 QueryPaymentNotifications
samples/cli/sample-apps Platform queryPaymentNotifications \
    --namespace $AB_NAMESPACE \
    --endDate 'tZBnbr4ipx4SZ2ow' \
    --externalId 'c3NzRQnFOupqhICY' \
    --limit '84' \
    --notificationSource 'WXPAY' \
    --notificationType 'cz9K10c3hQBXWBqX' \
    --offset '9' \
    --paymentOrderNo 'U6ds7vs3XDVPIZPv' \
    --startDate 'ZH3dqg3CUA7x4T07' \
    --status 'PROCESSED' \
    > test.out 2>&1
eval_tap $? 145 'QueryPaymentNotifications' test.out

#- 146 QueryPaymentOrders
samples/cli/sample-apps Platform queryPaymentOrders \
    --namespace $AB_NAMESPACE \
    --channel 'EXTERNAL' \
    --extTxId 'CMlAOvme9C1fD57X' \
    --limit '8' \
    --offset '64' \
    --status 'REFUNDING' \
    > test.out 2>&1
eval_tap $? 146 'QueryPaymentOrders' test.out

#- 147 CreatePaymentOrderByDedicated
samples/cli/sample-apps Platform createPaymentOrderByDedicated \
    --namespace $AB_NAMESPACE \
    --body '{"currencyCode": "gsqL09nZyDH7RscW", "currencyNamespace": "4W0QoKYdTimR7PNG", "customParameters": {"LS6mE2j00yV1Wuhr": {}, "0j3ZJsZhkdSu7gqe": {}, "cFtwBmWRumqkmSTt": {}}, "description": "JrcfVlbO2MheckHf", "extOrderNo": "vVfYeQy3QE23yloV", "extUserId": "NGvLgXxFhm7wX8HG", "itemType": "LOOTBOX", "language": "WoJt_tEyx", "metadata": {"xhvmSjAawgSQs6zB": "gTtBU5zbJB0fikQB", "YE6MGdJqQCkTXdG8": "i6r1ifCxmjI6iVjT", "VjSbMi1oz42rViQ7": "AMR7kKA07xIbNuUU"}, "notifyUrl": "47jcyfIxVw33wJaD", "omitNotification": true, "platform": "G80jIkgjSvyDcWZG", "price": 22, "recurringPaymentOrderNo": "cvdUTISaoMpEOmMU", "region": "2gCA4Nx3oiKWgglN", "returnUrl": "NZzJITkBb0HBfxK3", "sandbox": false, "sku": "d6KhGRSER6lGpdf6", "subscriptionId": "LDkijEJn91OCWA4E", "targetNamespace": "MKhl4pXHcWTFU8Oi", "targetUserId": "l16gJGPR3yj2WONG", "title": "BSWjiXQhyJCkdVVp"}' \
    > test.out 2>&1
eval_tap $? 147 'CreatePaymentOrderByDedicated' test.out

#- 148 ListExtOrderNoByExtTxId
samples/cli/sample-apps Platform listExtOrderNoByExtTxId \
    --namespace $AB_NAMESPACE \
    --extTxId 'a3dMWokJQsKBLsX5' \
    > test.out 2>&1
eval_tap $? 148 'ListExtOrderNoByExtTxId' test.out

#- 149 GetPaymentOrder
samples/cli/sample-apps Platform getPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'RgMmOrSwFMjtuow5' \
    > test.out 2>&1
eval_tap $? 149 'GetPaymentOrder' test.out

#- 150 ChargePaymentOrder
samples/cli/sample-apps Platform chargePaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'vQikhCgG5dZ7pHjn' \
    --body '{"extTxId": "EKYK7qj62X4pVjs3", "paymentMethod": "MyqXrnnZVO5o6Kc8", "paymentProvider": "STRIPE"}' \
    > test.out 2>&1
eval_tap $? 150 'ChargePaymentOrder' test.out

#- 151 RefundPaymentOrderByDedicated
samples/cli/sample-apps Platform refundPaymentOrderByDedicated \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'jEppduTOo76enUnt' \
    --body '{"description": "KvBEjyOszdSnC1AR"}' \
    > test.out 2>&1
eval_tap $? 151 'RefundPaymentOrderByDedicated' test.out

#- 152 SimulatePaymentOrderNotification
samples/cli/sample-apps Platform simulatePaymentOrderNotification \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'dh9qZHemFA4gILpG' \
    --body '{"amount": 45, "currencyCode": "XMqf6Zh0Wy20Isqk", "notifyType": "REFUND", "paymentProvider": "PAYPAL", "salesTax": 33, "vat": 21}' \
    > test.out 2>&1
eval_tap $? 152 'SimulatePaymentOrderNotification' test.out

#- 153 GetPaymentOrderChargeStatus
samples/cli/sample-apps Platform getPaymentOrderChargeStatus \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo '8SKXUPcHZDZQHsYb' \
    > test.out 2>&1
eval_tap $? 153 'GetPaymentOrderChargeStatus' test.out

#- 154 GetPlatformWalletConfig
samples/cli/sample-apps Platform getPlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Epic' \
    > test.out 2>&1
eval_tap $? 154 'GetPlatformWalletConfig' test.out

#- 155 UpdatePlatformWalletConfig
samples/cli/sample-apps Platform updatePlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Epic' \
    --body '{"allowedBalanceOrigins": ["IOS", "Nintendo", "GooglePlay"]}' \
    > test.out 2>&1
eval_tap $? 155 'UpdatePlatformWalletConfig' test.out

#- 156 ResetPlatformWalletConfig
samples/cli/sample-apps Platform resetPlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'GooglePlay' \
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
    --body '{"entitlement": {"consumable": {"enabled": false, "strategy": "REVOKE_OR_REPORT"}, "durable": {"enabled": true, "strategy": "REVOKE_OR_REPORT"}}, "wallet": {"enabled": true, "strategy": "ALWAYS_REVOKE"}}' \
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
    --endTime 'YJV5iWfKSGoOtk5L' \
    --limit '36' \
    --offset '83' \
    --source 'IAP' \
    --startTime 'LiwKtDAaWw1WCvVX' \
    --status 'FAIL' \
    --transactionId 'yqkv2YOatS4oaF3i' \
    --userId '2fFvhu2JyPVl8eX7' \
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
    --body '{"appConfig": {"appName": "xpzkPTeERs5vtp8g"}, "customConfig": {"connectionType": "TLS", "grpcServerAddress": "zXN6hi9kQbEzqp3j"}, "extendType": "APP"}' \
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
    --body '{"description": "rYbXbMW9B0nGenHk", "eventTopic": "DVRGwJFdLDZpbHVl", "maxAwarded": 84, "maxAwardedPerUser": 77, "namespaceExpression": "1I98twBA3FMSeQjr", "rewardCode": "sbBsCTebRnuwdOk7", "rewardConditions": [{"condition": "4cJ0q8XaXJbJuQU4", "conditionName": "ispH0ocnI9E6GStv", "eventName": "VxKBVk3x3fDE5v28", "rewardItems": [{"duration": 46, "endDate": "1976-12-12T00:00:00Z", "itemId": "lHmuDxj0eJLiADNu", "quantity": 99}, {"duration": 53, "endDate": "1994-04-18T00:00:00Z", "itemId": "Hw2gDXQETJB3rZHo", "quantity": 96}, {"duration": 58, "endDate": "1982-11-27T00:00:00Z", "itemId": "QJYkTKAHRUMjPHqo", "quantity": 49}]}, {"condition": "qBPNAx23JsGlGmsm", "conditionName": "8nix2njyFyWhiWlg", "eventName": "nSzEwRFCG9khpuxY", "rewardItems": [{"duration": 78, "endDate": "1996-05-26T00:00:00Z", "itemId": "wBPDq7d24hpbWA0V", "quantity": 54}, {"duration": 52, "endDate": "1994-11-12T00:00:00Z", "itemId": "a2h6MCNXU47gjmo7", "quantity": 89}, {"duration": 58, "endDate": "1983-02-13T00:00:00Z", "itemId": "dVLPEcP2SOE1fPYX", "quantity": 29}]}, {"condition": "sjzIiM4FzRPimWQr", "conditionName": "UGdd7wV5EoxJ7cUG", "eventName": "tIBLQcZYhzQa5Msu", "rewardItems": [{"duration": 51, "endDate": "1981-07-11T00:00:00Z", "itemId": "sLqk8GXApSa2ttEv", "quantity": 7}, {"duration": 5, "endDate": "1985-04-20T00:00:00Z", "itemId": "HZSb6HdXRGW3oLJd", "quantity": 39}, {"duration": 31, "endDate": "1984-10-12T00:00:00Z", "itemId": "zUb6A7626BBjochE", "quantity": 29}]}], "userIdExpression": "mcQbtrtOVa7FEJp0"}' \
    > test.out 2>&1
eval_tap $? 165 'CreateReward' test.out

#- 166 QueryRewards
samples/cli/sample-apps Platform queryRewards \
    --namespace $AB_NAMESPACE \
    --eventTopic 'WF591bf8e72deCaP' \
    --limit '45' \
    --offset '13' \
    --sortBy '["rewardCode", "rewardCode:asc", "namespace"]' \
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
    --rewardId 'amPptHx6lEeHxY2K' \
    > test.out 2>&1
eval_tap $? 169 'GetReward' test.out

#- 170 UpdateReward
samples/cli/sample-apps Platform updateReward \
    --namespace $AB_NAMESPACE \
    --rewardId 'HVDmampyAPqCl5Zc' \
    --body '{"description": "0ukwbyYFM76UfAsB", "eventTopic": "irNc75s5VytaqOPe", "maxAwarded": 91, "maxAwardedPerUser": 91, "namespaceExpression": "czijFsOLFwuxY3qY", "rewardCode": "vYKvwrCcGUGBgUyD", "rewardConditions": [{"condition": "10hllHhvaePmw1vv", "conditionName": "wQ3oKPYS2g6swoKp", "eventName": "AXzs9sKmdyF9DBTw", "rewardItems": [{"duration": 38, "endDate": "1998-10-18T00:00:00Z", "itemId": "F6gqGJtCG9F5OIBX", "quantity": 25}, {"duration": 2, "endDate": "1981-11-01T00:00:00Z", "itemId": "TCG2X3MeyeSihzai", "quantity": 19}, {"duration": 0, "endDate": "1976-09-22T00:00:00Z", "itemId": "h11XOh99Wd30RNqv", "quantity": 90}]}, {"condition": "IYitnGFWLpqabLBG", "conditionName": "EGaqwO4F8FYaq2Qw", "eventName": "BgHJduPeqDPaS78C", "rewardItems": [{"duration": 45, "endDate": "1983-01-12T00:00:00Z", "itemId": "Tk0tAYTGyuJqSNDG", "quantity": 29}, {"duration": 52, "endDate": "1993-10-29T00:00:00Z", "itemId": "Kthbl5WpxOjXeMk1", "quantity": 61}, {"duration": 84, "endDate": "1977-11-30T00:00:00Z", "itemId": "Gd0joj2M5p6SBIhs", "quantity": 32}]}, {"condition": "hh8c6pX5pWqZGAdg", "conditionName": "SiVFRyGKBEPFoIEa", "eventName": "cTSI12sKB1lIH3z8", "rewardItems": [{"duration": 31, "endDate": "1974-06-03T00:00:00Z", "itemId": "MGZi0fHTy2krnZUj", "quantity": 25}, {"duration": 47, "endDate": "1999-01-08T00:00:00Z", "itemId": "KnkhZyJ7O6SoI3x8", "quantity": 68}, {"duration": 17, "endDate": "1992-05-13T00:00:00Z", "itemId": "6yusunDzBJfIeXVF", "quantity": 69}]}], "userIdExpression": "xG4HdVEAenf76VbL"}' \
    > test.out 2>&1
eval_tap $? 170 'UpdateReward' test.out

#- 171 DeleteReward
samples/cli/sample-apps Platform deleteReward \
    --namespace $AB_NAMESPACE \
    --rewardId 'gGxPfOvkt7GsFvhw' \
    > test.out 2>&1
eval_tap $? 171 'DeleteReward' test.out

#- 172 CheckEventCondition
samples/cli/sample-apps Platform checkEventCondition \
    --namespace $AB_NAMESPACE \
    --rewardId 'KNdnCUpz5WrAoBmi' \
    --body '{"payload": {"BKjaWOwY0YPBETgw": {}, "jUOZO1wkuLmTGXAW": {}, "Ks4y0fHJtCo0YodO": {}}}' \
    > test.out 2>&1
eval_tap $? 172 'CheckEventCondition' test.out

#- 173 DeleteRewardConditionRecord
samples/cli/sample-apps Platform deleteRewardConditionRecord \
    --namespace $AB_NAMESPACE \
    --rewardId 'VprFVMA0hoBS2BBd' \
    --body '{"conditionName": "PTpPjoMPDw1I6mRA", "userId": "uDBKqADTrX3ryy0g"}' \
    > test.out 2>&1
eval_tap $? 173 'DeleteRewardConditionRecord' test.out

#- 174 QuerySections
samples/cli/sample-apps Platform querySections \
    --namespace $AB_NAMESPACE \
    --end 'EMf6r3tXTcFS4w36' \
    --limit '61' \
    --offset '9' \
    --start 'RC7Pnoxx1mOHERFP' \
    --storeId 'zvoE7JDoFVsE1lLO' \
    --viewId 'DXOdm5QEChPkCAgi' \
    > test.out 2>&1
eval_tap $? 174 'QuerySections' test.out

#- 175 CreateSection
samples/cli/sample-apps Platform createSection \
    --namespace $AB_NAMESPACE \
    --storeId 'ZEsPzTMYltMnbK6M' \
    --body '{"active": false, "displayOrder": 59, "endDate": "1993-10-22T00:00:00Z", "ext": {"ToNCI4D53KYRqc3t": {}, "urTuRnZgD054M4s7": {}, "C0lki3H4HGbG8Zfu": {}}, "fixedPeriodRotationConfig": {"backfillType": "NONE", "duration": 71, "itemCount": 28, "rule": "SEQUENCE"}, "items": [{"id": "KyhSJzpLkNqDGFWN", "sku": "E4vE5Lb6k6NMSYve"}, {"id": "nUuQ2edP4tuSZ0dp", "sku": "e9trQ3QTOwbu6jOT"}, {"id": "WQgOT8MEkyPm0ryJ", "sku": "7PX41pYTluRcf7Zf"}], "localizations": {"BZwkWZRY6UZXfkWl": {"description": "JcS7g1wJKsPuerUU", "localExt": {"OIp0AN8IUUQtrHbo": {}, "5mzorWhXDnmQ41Sr": {}, "luMuUl1gJ4YiguQ4": {}}, "longDescription": "x9bYmUWf9z8cI4M3", "title": "4fJslElSWOYnnikK"}, "oPEs22zA9xOQ3YbA": {"description": "6ZDzKsjqRjYatwKO", "localExt": {"p8MaCBigNM6bVTtL": {}, "UjoxI6fADkRNRGFY": {}, "bfEdAVSF1zqThBLf": {}}, "longDescription": "XxLQf5CI24dGKFPf", "title": "4I55ut2Qhhuo2mGh"}, "Qbv9Fhlh5zsip1iE": {"description": "iiTOMXpmvT4u1vWY", "localExt": {"cl7CUp1h4WrBIm8v": {}, "sKR2vLzaOmyqCK9a": {}, "t45chvd7jWH03Ez8": {}}, "longDescription": "So9SrMTnWDRhuT6A", "title": "eXKRqPc0hgQgz9JB"}}, "name": "k7NbIyckOY0HZeXd", "rotationType": "NONE", "startDate": "1979-12-30T00:00:00Z", "viewId": "Joq7ZpBfKNtEvZOC"}' \
    > test.out 2>&1
eval_tap $? 175 'CreateSection' test.out

#- 176 PurgeExpiredSection
samples/cli/sample-apps Platform purgeExpiredSection \
    --namespace $AB_NAMESPACE \
    --storeId 'HFrGCyyu5QMTECbQ' \
    > test.out 2>&1
eval_tap $? 176 'PurgeExpiredSection' test.out

#- 177 GetSection
samples/cli/sample-apps Platform getSection \
    --namespace $AB_NAMESPACE \
    --sectionId 'HJfTkBfY2zQvFKVj' \
    --storeId 'NtLexoLE5gy04wIv' \
    > test.out 2>&1
eval_tap $? 177 'GetSection' test.out

#- 178 UpdateSection
samples/cli/sample-apps Platform updateSection \
    --namespace $AB_NAMESPACE \
    --sectionId 'RBhssZv1vPFeCuWM' \
    --storeId '02OHUNEep8ihvh5B' \
    --body '{"active": true, "displayOrder": 4, "endDate": "1971-10-03T00:00:00Z", "ext": {"Q1aAzp0ODvn4CXKF": {}, "Nt0TtWQ8e9fQFgUL": {}, "pfWBTQTwln69SuEd": {}}, "fixedPeriodRotationConfig": {"backfillType": "CUSTOM", "duration": 7, "itemCount": 56, "rule": "SEQUENCE"}, "items": [{"id": "gBCV1jINvEsybzPA", "sku": "gcNWgodqndOfKU2g"}, {"id": "zs9hLj4xCoqiBJiI", "sku": "RprVaA1UhHMRzwxl"}, {"id": "Or9seZnjMfkqMzrT", "sku": "rG8CMJhgFSd8LLxw"}], "localizations": {"5G3XZKambNJZ539P": {"description": "FVhZMtHkqTYIyYfE", "localExt": {"FyYIzh2LgDXLngDV": {}, "kxFAknOJQ7yswWlH": {}, "OADiWhrNjmywh6iC": {}}, "longDescription": "lI7UKCGt36zKinHv", "title": "atSyAWuPiRoANfCo"}, "VzC4mkYe0btxpoib": {"description": "szXXdRNuI1Glfbel", "localExt": {"Uiu3LayS25D7cigE": {}, "aK3cXm6ynzzDjvgB": {}, "uzPDSOsNlchf6WIF": {}}, "longDescription": "YudXGH7UraHzWCHQ", "title": "cv12gtOqFTw5KP9h"}, "y4KcOFLrIpPB5bNp": {"description": "GAYA1g6Aazqntmfx", "localExt": {"mHsc9mgdOtV26ibS": {}, "xOMb4xc56fvdKQgN": {}, "WUlvuQSIGpEcdTEI": {}}, "longDescription": "Hzmod9aqex5DNDG4", "title": "Dm0ilTMJAhZDIJG9"}}, "name": "vqka5LJ5X6PdNv74", "rotationType": "CUSTOM", "startDate": "1998-04-27T00:00:00Z", "viewId": "TeFkChgvZYk6RHTO"}' \
    > test.out 2>&1
eval_tap $? 178 'UpdateSection' test.out

#- 179 DeleteSection
samples/cli/sample-apps Platform deleteSection \
    --namespace $AB_NAMESPACE \
    --sectionId 'NbFk2Hx8iB6FvVZp' \
    --storeId 'Gj5qESFBnuoiLFi0' \
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
    --body '{"defaultLanguage": "S9EAH6po7KNg6HWs", "defaultRegion": "WFBru6YF0YEGMGwB", "description": "NibAUYZnyH3WdSdv", "supportedLanguages": ["hqPR6DsTVpdUa0rX", "xm6W7CvHqYPjNZz6", "n6C3M0B5OouUU3rw"], "supportedRegions": ["Z24s40CgxwQS8tRE", "BsQhmh3sdLbSLlFH", "4WSlSGAcnEjiGsfo"], "title": "ocxjzgeOBa8OLgkP"}' \
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
    --storeId 'zIIYcy6WNA4sVHol' \
    > test.out 2>&1
eval_tap $? 187 'GetStore' test.out

#- 188 UpdateStore
samples/cli/sample-apps Platform updateStore \
    --namespace $AB_NAMESPACE \
    --storeId 'bWnj490rmBk0mpD4' \
    --body '{"defaultLanguage": "a8mwOtEliGttf48x", "defaultRegion": "83mPZy3EPtaHQUEq", "description": "BYXHOtdKeNafjro2", "supportedLanguages": ["cb2aGQfGkRYVPN0B", "8j8wmmiVRE55Cly9", "dRpTjxlPQog6qL5s"], "supportedRegions": ["0GLMHlvoSpeinDeb", "NAhDd571bmfSya4O", "lRdncPq42kMQ37jp"], "title": "GziB8m0VF2gbsOFe"}' \
    > test.out 2>&1
eval_tap $? 188 'UpdateStore' test.out

#- 189 DeleteStore
samples/cli/sample-apps Platform deleteStore \
    --namespace $AB_NAMESPACE \
    --storeId 'JV64JGsp98wW0Onb' \
    > test.out 2>&1
eval_tap $? 189 'DeleteStore' test.out

#- 190 QueryChanges
samples/cli/sample-apps Platform queryChanges \
    --namespace $AB_NAMESPACE \
    --storeId 'CyNKH6kRUjkF3pDq' \
    --action 'DELETE' \
    --itemSku 'zg3qExuF8j42RG4W' \
    --itemType 'SEASON' \
    --limit '97' \
    --offset '46' \
    --selected 'false' \
    --sortBy '["createdAt:desc", "createdAt:asc", "updatedAt:asc"]' \
    --status 'UNPUBLISHED' \
    --type 'VIEW' \
    --updatedAtEnd 'qpXrIing0jb8gcnU' \
    --updatedAtStart 'BDp7iuUrx7Xb2KPE' \
    > test.out 2>&1
eval_tap $? 190 'QueryChanges' test.out

#- 191 PublishAll
samples/cli/sample-apps Platform publishAll \
    --namespace $AB_NAMESPACE \
    --storeId 'bhcr2W2QBsYDuaW8' \
    > test.out 2>&1
eval_tap $? 191 'PublishAll' test.out

#- 192 PublishSelected
samples/cli/sample-apps Platform publishSelected \
    --namespace $AB_NAMESPACE \
    --storeId 'fRFBXyTWTZVCvq5t' \
    > test.out 2>&1
eval_tap $? 192 'PublishSelected' test.out

#- 193 SelectAllRecords
samples/cli/sample-apps Platform selectAllRecords \
    --namespace $AB_NAMESPACE \
    --storeId 'XbitMgDzpKjWyWAl' \
    > test.out 2>&1
eval_tap $? 193 'SelectAllRecords' test.out

#- 194 GetStatistic
samples/cli/sample-apps Platform getStatistic \
    --namespace $AB_NAMESPACE \
    --storeId 'ekfpvTXefgcxSVUy' \
    --action 'DELETE' \
    --itemSku 'C6UtU5ZLB81jJ2zD' \
    --itemType 'SEASON' \
    --type 'ITEM' \
    --updatedAtEnd 'naj5DldHCMQdgKxv' \
    --updatedAtStart 'xFc3p5H1dXE968LQ' \
    > test.out 2>&1
eval_tap $? 194 'GetStatistic' test.out

#- 195 UnselectAllRecords
samples/cli/sample-apps Platform unselectAllRecords \
    --namespace $AB_NAMESPACE \
    --storeId 'JW581QYyhUVbd7Lh' \
    > test.out 2>&1
eval_tap $? 195 'UnselectAllRecords' test.out

#- 196 SelectRecord
samples/cli/sample-apps Platform selectRecord \
    --changeId '47vsIXx9aavbLqyY' \
    --namespace $AB_NAMESPACE \
    --storeId 'APrg6BfdAKv4a7st' \
    > test.out 2>&1
eval_tap $? 196 'SelectRecord' test.out

#- 197 UnselectRecord
samples/cli/sample-apps Platform unselectRecord \
    --changeId 'P8D1cLO9Wy1aESts' \
    --namespace $AB_NAMESPACE \
    --storeId 'pswl2lY1JbvCy8wA' \
    > test.out 2>&1
eval_tap $? 197 'UnselectRecord' test.out

#- 198 CloneStore
samples/cli/sample-apps Platform cloneStore \
    --namespace $AB_NAMESPACE \
    --storeId 'WbLWkN9XIZOsWzPH' \
    --targetStoreId 'vipbXcAdOdlX62K9' \
    > test.out 2>&1
eval_tap $? 198 'CloneStore' test.out

#- 199 ExportStore
eval_tap 0 199 'ExportStore # SKIP deprecated' test.out

#- 200 QuerySubscriptions
samples/cli/sample-apps Platform querySubscriptions \
    --namespace $AB_NAMESPACE \
    --chargeStatus 'NEVER' \
    --itemId 'yJweowk34VnpW6U8' \
    --limit '92' \
    --offset '66' \
    --sku 'g2CPoi2a8RHXpfat' \
    --status 'INIT' \
    --subscribedBy 'USER' \
    --userId 'AHCOR0Ddg7moDXEL' \
    > test.out 2>&1
eval_tap $? 200 'QuerySubscriptions' test.out

#- 201 RecurringChargeSubscription
samples/cli/sample-apps Platform recurringChargeSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'kwXgTWvpr7WlIkI0' \
    > test.out 2>&1
eval_tap $? 201 'RecurringChargeSubscription' test.out

#- 202 GetTicketDynamic
samples/cli/sample-apps Platform getTicketDynamic \
    --boothName 'RV28xTpPQjgNeizx' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 202 'GetTicketDynamic' test.out

#- 203 DecreaseTicketSale
samples/cli/sample-apps Platform decreaseTicketSale \
    --boothName '6WwKVijcGFaALMd4' \
    --namespace $AB_NAMESPACE \
    --body '{"orderNo": "Xu2GHlOtKx3NTAMX"}' \
    > test.out 2>&1
eval_tap $? 203 'DecreaseTicketSale' test.out

#- 204 GetTicketBoothID
samples/cli/sample-apps Platform getTicketBoothID \
    --boothName '3FbnWzkimdmboei9' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 204 'GetTicketBoothID' test.out

#- 205 IncreaseTicketSale
samples/cli/sample-apps Platform increaseTicketSale \
    --boothName 'JkMCsxoy0fWKQ3HA' \
    --namespace $AB_NAMESPACE \
    --body '{"count": 69, "orderNo": "a3iyY1D1rMceGfh0"}' \
    > test.out 2>&1
eval_tap $? 205 'IncreaseTicketSale' test.out

#- 206 Commit
samples/cli/sample-apps Platform commit \
    --namespace $AB_NAMESPACE \
    --body '{"actions": [{"operations": [{"creditPayload": {"balanceOrigin": "System", "count": 39, "currencyCode": "mB03MrLGrkCQkIcU", "expireAt": "1988-12-30T00:00:00Z"}, "debitPayload": {"count": 19, "currencyCode": "y9Ty8bQjhlTLPOk1", "walletPlatform": "Other"}, "fulFillItemPayload": {"count": 45, "itemIdentity": "DYg6pVGvF3c7Jr8i", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 75, "entitlementId": "fAYjVQDjk33THOdh"}, "type": "CREDIT_WALLET"}, {"creditPayload": {"balanceOrigin": "Other", "count": 62, "currencyCode": "vvVJFIttLgIUisdA", "expireAt": "1979-02-09T00:00:00Z"}, "debitPayload": {"count": 59, "currencyCode": "i9g2klacivjNZkvp", "walletPlatform": "Steam"}, "fulFillItemPayload": {"count": 93, "itemIdentity": "NE114qf00TJYFYng", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 95, "entitlementId": "gBOdTSGhl6bjLFqX"}, "type": "FULFILL_ITEM"}, {"creditPayload": {"balanceOrigin": "Steam", "count": 8, "currencyCode": "rkDasVpWBJu6SUYR", "expireAt": "1975-11-08T00:00:00Z"}, "debitPayload": {"count": 86, "currencyCode": "u294cLl562Q34YPW", "walletPlatform": "Xbox"}, "fulFillItemPayload": {"count": 63, "itemIdentity": "Brtx7qbyVrtCFRtU", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 55, "entitlementId": "TBR8Ox4Slzthmpgf"}, "type": "CREDIT_WALLET"}], "userId": "w19C5FZdG7yMHJpv"}, {"operations": [{"creditPayload": {"balanceOrigin": "GooglePlay", "count": 81, "currencyCode": "L17BkERwhGiIe7Sm", "expireAt": "1977-02-06T00:00:00Z"}, "debitPayload": {"count": 61, "currencyCode": "MsDMFbVPGrx0aexO", "walletPlatform": "Nintendo"}, "fulFillItemPayload": {"count": 59, "itemIdentity": "1uTGbpV6c30f9Ddb", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 41, "entitlementId": "QtM1OVfcSPOz23Jg"}, "type": "FULFILL_ITEM"}, {"creditPayload": {"balanceOrigin": "System", "count": 86, "currencyCode": "UdT7o5IzeDObpiX0", "expireAt": "1991-06-09T00:00:00Z"}, "debitPayload": {"count": 99, "currencyCode": "KF1O1KOFT9LdnFse", "walletPlatform": "Steam"}, "fulFillItemPayload": {"count": 52, "itemIdentity": "3qc5O4rmFrGbO32d", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 69, "entitlementId": "atm9KpvtbSjeElfO"}, "type": "FULFILL_ITEM"}, {"creditPayload": {"balanceOrigin": "Oculus", "count": 16, "currencyCode": "VJv1SohggSFC7cFy", "expireAt": "1976-05-03T00:00:00Z"}, "debitPayload": {"count": 34, "currencyCode": "rWgFFnjK9Vfe511V", "walletPlatform": "Playstation"}, "fulFillItemPayload": {"count": 56, "itemIdentity": "u8PFMDdB940Q8A9y", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 88, "entitlementId": "6rmFon5cLf7aYmgA"}, "type": "CREDIT_WALLET"}], "userId": "00dj6gCzUtthv5yB"}, {"operations": [{"creditPayload": {"balanceOrigin": "Oculus", "count": 21, "currencyCode": "jnGVRx29MkXBH6cV", "expireAt": "1978-10-09T00:00:00Z"}, "debitPayload": {"count": 34, "currencyCode": "UwX0HxLt3LJuivsl", "walletPlatform": "GooglePlay"}, "fulFillItemPayload": {"count": 78, "itemIdentity": "6VUeZihBWm36gWQB", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 74, "entitlementId": "IbodbQWzXadKGuyl"}, "type": "FULFILL_ITEM"}, {"creditPayload": {"balanceOrigin": "Xbox", "count": 55, "currencyCode": "29wsFkjq4Bt2fCOb", "expireAt": "1975-03-10T00:00:00Z"}, "debitPayload": {"count": 6, "currencyCode": "gMHt0CLaVDHiHV0u", "walletPlatform": "Nintendo"}, "fulFillItemPayload": {"count": 9, "itemIdentity": "GDwsgdGl2bj9657A", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 34, "entitlementId": "DcLFILQxQqzNOjyf"}, "type": "DEBIT_WALLET"}, {"creditPayload": {"balanceOrigin": "IOS", "count": 37, "currencyCode": "Th3os48fj4OUNuYP", "expireAt": "1992-07-19T00:00:00Z"}, "debitPayload": {"count": 21, "currencyCode": "TTQT5UqU8rwmCfXd", "walletPlatform": "IOS"}, "fulFillItemPayload": {"count": 94, "itemIdentity": "IEtrdRwYbUaXJIrh", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 36, "entitlementId": "2Is5umXa547sUquz"}, "type": "REVOKE_ENTITLEMENT"}], "userId": "SOthqKDJNiugCZjL"}], "metadata": {"jQhTYPnE3cPv9zKp": {}, "zD377EvyaysAbmwj": {}, "dJSLQ0lwcGH8e0KQ": {}}, "needPreCheck": true, "transactionId": "5f2xPZl2JLKsbaEB", "type": "TcJmNzC4V7zaPJf6"}' \
    > test.out 2>&1
eval_tap $? 206 'Commit' test.out

#- 207 GetTradeHistoryByCriteria
samples/cli/sample-apps Platform getTradeHistoryByCriteria \
    --namespace $AB_NAMESPACE \
    --limit '82' \
    --offset '7' \
    --status 'FAILED' \
    --type 'f2rdqoJUV3XI8o8v' \
    --userId 'FKp4EcnFExwslY7p' \
    > test.out 2>&1
eval_tap $? 207 'GetTradeHistoryByCriteria' test.out

#- 208 GetTradeHistoryByTransactionId
samples/cli/sample-apps Platform getTradeHistoryByTransactionId \
    --namespace $AB_NAMESPACE \
    --transactionId 'GkAFkDeNNxsqzRyc' \
    > test.out 2>&1
eval_tap $? 208 'GetTradeHistoryByTransactionId' test.out

#- 209 UnlockSteamUserAchievement
samples/cli/sample-apps Platform unlockSteamUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'rMUtaJnCN0kjKAKN' \
    --body '{"achievements": [{"id": "rKIjLNz11Ew9rs5t", "value": 36}, {"id": "ASoKjTq7zzbhXhxn", "value": 80}, {"id": "WIunmGLUQqCu6uwD", "value": 5}], "steamUserId": "KUrJvS0EoZMVvPQa"}' \
    > test.out 2>&1
eval_tap $? 209 'UnlockSteamUserAchievement' test.out

#- 210 GetXblUserAchievements
samples/cli/sample-apps Platform getXblUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId 'FILQ4LpAVYAdJ5y1' \
    --xboxUserId '8LM1j23aH8uZ0fAy' \
    > test.out 2>&1
eval_tap $? 210 'GetXblUserAchievements' test.out

#- 211 UpdateXblUserAchievement
samples/cli/sample-apps Platform updateXblUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'S1C7DiOG5nOhSOvd' \
    --body '{"achievements": [{"id": "4Eg6AkMXCtOFKoxJ", "percentComplete": 1}, {"id": "cFEPwDDIHORO4sYe", "percentComplete": 30}, {"id": "DsDRZv4RmOu9r82m", "percentComplete": 1}], "serviceConfigId": "VxFN28RWoCRMEyiy", "titleId": "Dpk4lUniqSF986PN", "xboxUserId": "S3WqhocHvLprFlIH"}' \
    > test.out 2>&1
eval_tap $? 211 'UpdateXblUserAchievement' test.out

#- 212 AnonymizeCampaign
samples/cli/sample-apps Platform anonymizeCampaign \
    --namespace $AB_NAMESPACE \
    --userId 'Vs8hcG1uGBf3bPol' \
    > test.out 2>&1
eval_tap $? 212 'AnonymizeCampaign' test.out

#- 213 AnonymizeEntitlement
samples/cli/sample-apps Platform anonymizeEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'AIhHVUPdwO1dnrUk' \
    > test.out 2>&1
eval_tap $? 213 'AnonymizeEntitlement' test.out

#- 214 AnonymizeFulfillment
samples/cli/sample-apps Platform anonymizeFulfillment \
    --namespace $AB_NAMESPACE \
    --userId 'beZKMBqhw4MCvMzc' \
    > test.out 2>&1
eval_tap $? 214 'AnonymizeFulfillment' test.out

#- 215 AnonymizeIntegration
samples/cli/sample-apps Platform anonymizeIntegration \
    --namespace $AB_NAMESPACE \
    --userId 'G83zWUHOkXHOx0wZ' \
    > test.out 2>&1
eval_tap $? 215 'AnonymizeIntegration' test.out

#- 216 AnonymizeOrder
samples/cli/sample-apps Platform anonymizeOrder \
    --namespace $AB_NAMESPACE \
    --userId 'l7PnWjBwZVJ5KuJx' \
    > test.out 2>&1
eval_tap $? 216 'AnonymizeOrder' test.out

#- 217 AnonymizePayment
samples/cli/sample-apps Platform anonymizePayment \
    --namespace $AB_NAMESPACE \
    --userId '4smkTnxtOWRKNvcF' \
    > test.out 2>&1
eval_tap $? 217 'AnonymizePayment' test.out

#- 218 AnonymizeRevocation
samples/cli/sample-apps Platform anonymizeRevocation \
    --namespace $AB_NAMESPACE \
    --userId 'xaBTHTvesgw4bSq1' \
    > test.out 2>&1
eval_tap $? 218 'AnonymizeRevocation' test.out

#- 219 AnonymizeSubscription
samples/cli/sample-apps Platform anonymizeSubscription \
    --namespace $AB_NAMESPACE \
    --userId '0FhrFX3s7MbzS91H' \
    > test.out 2>&1
eval_tap $? 219 'AnonymizeSubscription' test.out

#- 220 AnonymizeWallet
samples/cli/sample-apps Platform anonymizeWallet \
    --namespace $AB_NAMESPACE \
    --userId 'VTU0nS5WLPsGe6xZ' \
    > test.out 2>&1
eval_tap $? 220 'AnonymizeWallet' test.out

#- 221 GetUserDLCByPlatform
samples/cli/sample-apps Platform getUserDLCByPlatform \
    --namespace $AB_NAMESPACE \
    --userId 'c8gCaUI3CUGg32nB' \
    --type 'PSN' \
    > test.out 2>&1
eval_tap $? 221 'GetUserDLCByPlatform' test.out

#- 222 GetUserDLC
samples/cli/sample-apps Platform getUserDLC \
    --namespace $AB_NAMESPACE \
    --userId 'lg8jmh3J6wKYAd54' \
    --type 'STEAM' \
    > test.out 2>&1
eval_tap $? 222 'GetUserDLC' test.out

#- 223 QueryUserEntitlements
samples/cli/sample-apps Platform queryUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'gdDfddpsAbarIgyv' \
    --activeOnly 'false' \
    --appType 'DLC' \
    --entitlementClazz 'LOOTBOX' \
    --entitlementName 'H1sT1wf02e0WjBcm' \
    --features '["YMZoxyJgpmWV60Gz", "ZwRsXPaT67VpeJIP", "oDZDLO4iwTYPKgeA"]' \
    --itemId '["n5JpMtB1DIul7hYG", "CupNMz2eBlTl1ccX", "9PT6lhM3VJp5cmij"]' \
    --limit '17' \
    --offset '87' \
    > test.out 2>&1
eval_tap $? 223 'QueryUserEntitlements' test.out

#- 224 GrantUserEntitlement
samples/cli/sample-apps Platform grantUserEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'IwhKESDFKJiE8t7b' \
    --body '[{"endDate": "1988-07-27T00:00:00Z", "grantedCode": "XOvLh8XudEHAnNQW", "itemId": "n0cSMxVxwQNmzzW7", "itemNamespace": "7MADaWuRZu0LSdw3", "language": "zXyg_SF", "quantity": 81, "region": "5suAQRhaBBBXIQeO", "source": "REFERRAL_BONUS", "startDate": "1987-01-29T00:00:00Z", "storeId": "YEFlaa4yZ5pZqyz7"}, {"endDate": "1997-10-31T00:00:00Z", "grantedCode": "MIOpY0y3OeYhmUQe", "itemId": "XVFD2W3QO83uK4Wu", "itemNamespace": "0NHBOpyKpCieRqzb", "language": "dqh_joHK", "quantity": 34, "region": "5THftPrqz9jJlzkp", "source": "ACHIEVEMENT", "startDate": "1975-11-24T00:00:00Z", "storeId": "oUOQVcvcjDlvTb1I"}, {"endDate": "1992-07-08T00:00:00Z", "grantedCode": "aelpRX5Vvr1dcmeW", "itemId": "f4sLYj0ZqXpvMDOS", "itemNamespace": "DHutOK4r6ZXH7Y4s", "language": "qLZ-066", "quantity": 85, "region": "HOXBfrndJAyY1adc", "source": "PROMOTION", "startDate": "1992-05-22T00:00:00Z", "storeId": "Ul1K5kFGFhDsHccM"}]' \
    > test.out 2>&1
eval_tap $? 224 'GrantUserEntitlement' test.out

#- 225 GetUserAppEntitlementByAppId
samples/cli/sample-apps Platform getUserAppEntitlementByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'QfG8Egj8JvPZL5Tf' \
    --activeOnly 'true' \
    --appId 'YYRX0yb11McHuFZr' \
    > test.out 2>&1
eval_tap $? 225 'GetUserAppEntitlementByAppId' test.out

#- 226 QueryUserEntitlementsByAppType
samples/cli/sample-apps Platform queryUserEntitlementsByAppType \
    --namespace $AB_NAMESPACE \
    --userId 'WhRqq6d1higIvuOA' \
    --activeOnly 'true' \
    --limit '39' \
    --offset '72' \
    --appType 'DLC' \
    > test.out 2>&1
eval_tap $? 226 'QueryUserEntitlementsByAppType' test.out

#- 227 GetUserEntitlementByItemId
samples/cli/sample-apps Platform getUserEntitlementByItemId \
    --namespace $AB_NAMESPACE \
    --userId '0Mm5tiXVdXjvBEUx' \
    --activeOnly 'false' \
    --entitlementClazz 'OPTIONBOX' \
    --itemId 'CNhFHedzlG1EnyZQ' \
    > test.out 2>&1
eval_tap $? 227 'GetUserEntitlementByItemId' test.out

#- 228 GetUserActiveEntitlementsByItemIds
samples/cli/sample-apps Platform getUserActiveEntitlementsByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'kM2ek8nE3gKtTOjF' \
    --ids '["iaoFBdOIomO2NVGf", "Wk7FFd60C5rZXu1T", "n0FfYMh0wfxwBCaF"]' \
    > test.out 2>&1
eval_tap $? 228 'GetUserActiveEntitlementsByItemIds' test.out

#- 229 GetUserEntitlementBySku
samples/cli/sample-apps Platform getUserEntitlementBySku \
    --namespace $AB_NAMESPACE \
    --userId 'iiuF3vId00k3Vq2a' \
    --activeOnly 'false' \
    --entitlementClazz 'ENTITLEMENT' \
    --sku 'GUqTntb1ok55pfL2' \
    > test.out 2>&1
eval_tap $? 229 'GetUserEntitlementBySku' test.out

#- 230 ExistsAnyUserActiveEntitlement
samples/cli/sample-apps Platform existsAnyUserActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'v3FDjghKvl8ngxqG' \
    --appIds '["3RYiA4jGZlgpxEur", "XVqcqdolnVd0VBIK", "mTU9IKNFHYpvQXal"]' \
    --itemIds '["jTsJGLmAiKKPltkt", "u1kDuKH5WSTynT5X", "RyRoXhOY3vjzoQre"]' \
    --skus '["hYKay7ZIONIVi3eP", "KZjYeUMApLMChuxg", "yRRTkFzD5DGnJn2E"]' \
    > test.out 2>&1
eval_tap $? 230 'ExistsAnyUserActiveEntitlement' test.out

#- 231 ExistsAnyUserActiveEntitlementByItemIds
samples/cli/sample-apps Platform existsAnyUserActiveEntitlementByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'tOdAW2GzFQI7Je5b' \
    --itemIds '["Fx6hwM9Kdmfaa9AL", "K374HSJkyT35mLtc", "Ig5w8UW8Kw5sZKcD"]' \
    > test.out 2>&1
eval_tap $? 231 'ExistsAnyUserActiveEntitlementByItemIds' test.out

#- 232 GetUserAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform getUserAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'BiKgwOP7HTOZRHJe' \
    --appId 'tiVIsGxMIcq3IvgS' \
    > test.out 2>&1
eval_tap $? 232 'GetUserAppEntitlementOwnershipByAppId' test.out

#- 233 GetUserEntitlementOwnershipByItemId
samples/cli/sample-apps Platform getUserEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --userId '4UJWDGAMKCpnyDUL' \
    --entitlementClazz 'SUBSCRIPTION' \
    --itemId '8qlbDgLoWkHH63wK' \
    > test.out 2>&1
eval_tap $? 233 'GetUserEntitlementOwnershipByItemId' test.out

#- 234 GetUserEntitlementOwnershipByItemIds
samples/cli/sample-apps Platform getUserEntitlementOwnershipByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'QxRKrS7b89HZN7JQ' \
    --ids '["SZWZ3JTQrX1Z85ss", "o9ZWA1V9qJ8amQJL", "pDjZWDMoNqQ9Zg3m"]' \
    > test.out 2>&1
eval_tap $? 234 'GetUserEntitlementOwnershipByItemIds' test.out

#- 235 GetUserEntitlementOwnershipBySku
samples/cli/sample-apps Platform getUserEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --userId 'ZGPSaSnFZeqEoJje' \
    --entitlementClazz 'ENTITLEMENT' \
    --sku 'SoHtt5UOaKVkQdHY' \
    > test.out 2>&1
eval_tap $? 235 'GetUserEntitlementOwnershipBySku' test.out

#- 236 RevokeAllEntitlements
samples/cli/sample-apps Platform revokeAllEntitlements \
    --namespace $AB_NAMESPACE \
    --userId '0NihX6TMd1t0AQgf' \
    > test.out 2>&1
eval_tap $? 236 'RevokeAllEntitlements' test.out

#- 237 RevokeUserEntitlements
samples/cli/sample-apps Platform revokeUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'HjHB23jYJ5eIkGtn' \
    --entitlementIds 'IgRutzX7h8DvXOmd' \
    > test.out 2>&1
eval_tap $? 237 'RevokeUserEntitlements' test.out

#- 238 GetUserEntitlement
samples/cli/sample-apps Platform getUserEntitlement \
    --entitlementId 'YS6bIzz3ibhPpHmC' \
    --namespace $AB_NAMESPACE \
    --userId '9U5jGkrpmtke95MT' \
    > test.out 2>&1
eval_tap $? 238 'GetUserEntitlement' test.out

#- 239 UpdateUserEntitlement
samples/cli/sample-apps Platform updateUserEntitlement \
    --entitlementId 'tCJk9eN9WX5NlaD1' \
    --namespace $AB_NAMESPACE \
    --userId 'ZZrpifKsIKt9LiBT' \
    --body '{"endDate": "1972-01-09T00:00:00Z", "nullFieldList": ["7GgWyYYlHp08BzLb", "Uxi9Ob63YkPLmh9d", "NdqQiOpyHwaYaLbk"], "startDate": "1991-03-29T00:00:00Z", "status": "CONSUMED", "useCount": 55}' \
    > test.out 2>&1
eval_tap $? 239 'UpdateUserEntitlement' test.out

#- 240 ConsumeUserEntitlement
samples/cli/sample-apps Platform consumeUserEntitlement \
    --entitlementId 'VlONLOBo04BLrx0f' \
    --namespace $AB_NAMESPACE \
    --userId 'ocH2tNpARvmXU4DU' \
    --body '{"options": ["PyK6US4KPewcaIYw", "17AIZHdpOVd9GwSP", "6adWcj2pG9FDDZ6D"], "requestId": "iC2dSOLtKFOUsCue", "useCount": 90}' \
    > test.out 2>&1
eval_tap $? 240 'ConsumeUserEntitlement' test.out

#- 241 DisableUserEntitlement
samples/cli/sample-apps Platform disableUserEntitlement \
    --entitlementId '8YIhzYP5LHwVeirJ' \
    --namespace $AB_NAMESPACE \
    --userId 'TODHEzZFIIPSpgXw' \
    > test.out 2>&1
eval_tap $? 241 'DisableUserEntitlement' test.out

#- 242 EnableUserEntitlement
samples/cli/sample-apps Platform enableUserEntitlement \
    --entitlementId 'kYoEjXhXYlKXbCrk' \
    --namespace $AB_NAMESPACE \
    --userId 'iiwYmg5sKYeiHZys' \
    > test.out 2>&1
eval_tap $? 242 'EnableUserEntitlement' test.out

#- 243 GetUserEntitlementHistories
samples/cli/sample-apps Platform getUserEntitlementHistories \
    --entitlementId 'O4CPlU7rE8shSLaw' \
    --namespace $AB_NAMESPACE \
    --userId 'hvFWFHRZYwiTBU8T' \
    > test.out 2>&1
eval_tap $? 243 'GetUserEntitlementHistories' test.out

#- 244 RevokeUserEntitlement
samples/cli/sample-apps Platform revokeUserEntitlement \
    --entitlementId 'y2n5CUM658pdAFae' \
    --namespace $AB_NAMESPACE \
    --userId 'nYZtoz3EopfMumTN' \
    > test.out 2>&1
eval_tap $? 244 'RevokeUserEntitlement' test.out

#- 245 RevokeUseCount
samples/cli/sample-apps Platform revokeUseCount \
    --entitlementId '61D9LJr9hKHqgkVF' \
    --namespace $AB_NAMESPACE \
    --userId 'Djkxj6y6KNx3BiW0' \
    --body '{"reason": "HCTZ0itg8lzidelI", "useCount": 87}' \
    > test.out 2>&1
eval_tap $? 245 'RevokeUseCount' test.out

#- 246 SellUserEntitlement
samples/cli/sample-apps Platform sellUserEntitlement \
    --entitlementId 'mAKSM8x294kXJ5Jo' \
    --namespace $AB_NAMESPACE \
    --userId 'vObckEiqCnKtraRJ' \
    --body '{"requestId": "g2oR0eL219Bzmzcz", "useCount": 63}' \
    > test.out 2>&1
eval_tap $? 246 'SellUserEntitlement' test.out

#- 247 FulfillItem
samples/cli/sample-apps Platform fulfillItem \
    --namespace $AB_NAMESPACE \
    --userId 'WzYY8ibA4dwq2Vl3' \
    --body '{"duration": 27, "endDate": "1993-09-04T00:00:00Z", "itemId": "YxyqvGK6dQ004eRK", "itemSku": "MNSgFT0hw7D8vdXy", "language": "mKxhkSmO6JTiMVp0", "metadata": {"y73MUzYEnW8BmFuW": {}, "RlCuYnOLKLdmWrPi": {}, "TqTUfi5UvRI1P0UA": {}}, "order": {"currency": {"currencyCode": "cgbWwvY4Nf9qtgoB", "currencySymbol": "EmJFTS4MYrgBfXVF", "currencyType": "VIRTUAL", "decimals": 44, "namespace": "gIKLGHhWD21FL5vw"}, "ext": {"WJjLTkATnwQvEYEc": {}, "5o8Ns1uqimmRnL6w": {}, "ZBiPTePNqqeyYTXc": {}}, "free": false}, "orderNo": "w976lNLIHPApYUiq", "origin": "Nintendo", "overrideBundleItemQty": {"VQrRn20tdna7eeWF": 44, "t1grlSHPCfbcxYSU": 42, "9QRbJuMyRvzlMxyj": 90}, "quantity": 17, "region": "W5b08NqqvO1BtI3o", "source": "ORDER_REVOCATION", "startDate": "1999-05-22T00:00:00Z", "storeId": "gWnYrphlaZu3hGuP"}' \
    > test.out 2>&1
eval_tap $? 247 'FulfillItem' test.out

#- 248 RedeemCode
samples/cli/sample-apps Platform redeemCode \
    --namespace $AB_NAMESPACE \
    --userId 'lLRAKLAQ0WFEi9Ix' \
    --body '{"code": "VLREOsccYoRGwqlA", "language": "Npt_136", "region": "lkSnB7OYHUEVRPgc"}' \
    > test.out 2>&1
eval_tap $? 248 'RedeemCode' test.out

#- 249 FulfillRewards
samples/cli/sample-apps Platform fulfillRewards \
    --namespace $AB_NAMESPACE \
    --userId '5ymaI1foVCG9s0GR' \
    --body '{"metadata": {"MAgGCqRqyPYzyAVx": {}, "k1IXKsDuCa3toUNA": {}, "0DylMrchHIalfEHW": {}}, "origin": "GooglePlay", "rewards": [{"currency": {"currencyCode": "tIQLj76XJhROlZwE", "namespace": "VZZMKK55P3OPTZEy"}, "item": {"itemId": "iMw9Pqlr956jPwQI", "itemSku": "lPU3APmXW5QKZ0ok", "itemType": "JRf1WMV9LlU9o5LY"}, "quantity": 64, "type": "CURRENCY"}, {"currency": {"currencyCode": "nQMdBtijv2HOyJu0", "namespace": "hPfsvWeZEPXiMHQd"}, "item": {"itemId": "C2S0TyQ6OyA7V6Kv", "itemSku": "KhSIw5rcQy2f4R0Y", "itemType": "TZRJZr9u5DDgpl9D"}, "quantity": 3, "type": "ITEM"}, {"currency": {"currencyCode": "m1cJ9T16ELsTbb4G", "namespace": "ZLt1KZ6yV0gVpF4E"}, "item": {"itemId": "wLDI2ViLB0HXYt0R", "itemSku": "K3gRgDqh0QHoa6vi", "itemType": "mjCMlMXh81in1eLZ"}, "quantity": 49, "type": "ITEM"}], "source": "OTHER", "transactionId": "nfvAnLqWwuc2JT7h"}' \
    > test.out 2>&1
eval_tap $? 249 'FulfillRewards' test.out

#- 250 QueryUserIAPOrders
samples/cli/sample-apps Platform queryUserIAPOrders \
    --namespace $AB_NAMESPACE \
    --userId 'B9wl6mlWJZrq1kIi' \
    --endTime 'syrVQcwegVgVSF9C' \
    --limit '85' \
    --offset '13' \
    --productId 'VtBRFki3OSIlbLDA' \
    --startTime 'CmZbVKuSXZABfzeZ' \
    --status 'VERIFIED' \
    --type 'EPICGAMES' \
    > test.out 2>&1
eval_tap $? 250 'QueryUserIAPOrders' test.out

#- 251 QueryAllUserIAPOrders
samples/cli/sample-apps Platform queryAllUserIAPOrders \
    --namespace $AB_NAMESPACE \
    --userId 'sLQNdopvvPi8lYsG' \
    > test.out 2>&1
eval_tap $? 251 'QueryAllUserIAPOrders' test.out

#- 252 QueryUserIAPConsumeHistory
samples/cli/sample-apps Platform queryUserIAPConsumeHistory \
    --namespace $AB_NAMESPACE \
    --userId 'mVkcerouqZfk5uhH' \
    --endTime 'HjRg4w24Av6TGxvW' \
    --limit '98' \
    --offset '92' \
    --startTime 'lb6uGS530apu5PjP' \
    --status 'SUCCESS' \
    --type 'PLAYSTATION' \
    > test.out 2>&1
eval_tap $? 252 'QueryUserIAPConsumeHistory' test.out

#- 253 MockFulfillIAPItem
samples/cli/sample-apps Platform mockFulfillIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'mZedJIogBn9GmHcK' \
    --body '{"itemIdentityType": "ITEM_SKU", "language": "EtL-CUsY", "productId": "kag289ioxAlZhDXO", "region": "lsNvtjRoAmqpKpAs", "transactionId": "MWeLloIrpT5QOmf9", "type": "APPLE"}' \
    > test.out 2>&1
eval_tap $? 253 'MockFulfillIAPItem' test.out

#- 254 QueryUserOrders
samples/cli/sample-apps Platform queryUserOrders \
    --namespace $AB_NAMESPACE \
    --userId 'RmgilzXMwmN7UOLT' \
    --itemId 'SuaHw5Y0kObhLMEM' \
    --limit '82' \
    --offset '58' \
    --status 'INIT' \
    > test.out 2>&1
eval_tap $? 254 'QueryUserOrders' test.out

#- 255 AdminCreateUserOrder
samples/cli/sample-apps Platform adminCreateUserOrder \
    --namespace $AB_NAMESPACE \
    --userId '2GzQiHSN1CCTl6Wv' \
    --body '{"currencyCode": "NLKXKCpElr9WsjOl", "currencyNamespace": "cnZRJsb9O03Q4pmQ", "discountedPrice": 67, "ext": {"3CikIdtMWo2O7mCh": {}, "rzrxHa8nWqEHuQg4": {}, "ZZDxhQh3rER6AgGf": {}}, "itemId": "QdOSFTUW5zizmJw3", "language": "R6Li0FWgn6RNG6QV", "options": {"skipPriceValidation": false}, "platform": "Playstation", "price": 76, "quantity": 46, "region": "8slpKX5xt4kZOg4I", "returnUrl": "94PX6LtbtyEdEzxl", "sandbox": true, "sectionId": "S9AjhyOkuhRQgMAH"}' \
    > test.out 2>&1
eval_tap $? 255 'AdminCreateUserOrder' test.out

#- 256 CountOfPurchasedItem
samples/cli/sample-apps Platform countOfPurchasedItem \
    --namespace $AB_NAMESPACE \
    --userId 'WXVnkcZJSHHQqeTA' \
    --itemId 's0BzFXq9C7F0dFEJ' \
    > test.out 2>&1
eval_tap $? 256 'CountOfPurchasedItem' test.out

#- 257 GetUserOrder
samples/cli/sample-apps Platform getUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'VLgDoZ7pLNu4InJx' \
    --userId 'fa4r3h2GwLfwhZbb' \
    > test.out 2>&1
eval_tap $? 257 'GetUserOrder' test.out

#- 258 UpdateUserOrderStatus
samples/cli/sample-apps Platform updateUserOrderStatus \
    --namespace $AB_NAMESPACE \
    --orderNo 'GxvQS3SSY4IgMbPJ' \
    --userId '5uXUFj5WDLxbO2mS' \
    --body '{"status": "REFUNDED", "statusReason": "MB6zu2osxQAfD62U"}' \
    > test.out 2>&1
eval_tap $? 258 'UpdateUserOrderStatus' test.out

#- 259 FulfillUserOrder
samples/cli/sample-apps Platform fulfillUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'kVF2r71gT7YhDKqH' \
    --userId 'LNPcfUWP2CjOpvE1' \
    > test.out 2>&1
eval_tap $? 259 'FulfillUserOrder' test.out

#- 260 GetUserOrderGrant
samples/cli/sample-apps Platform getUserOrderGrant \
    --namespace $AB_NAMESPACE \
    --orderNo 'ohZcfxpcH0Xf2Wap' \
    --userId 'fK0qZKpudUU38NMt' \
    > test.out 2>&1
eval_tap $? 260 'GetUserOrderGrant' test.out

#- 261 GetUserOrderHistories
samples/cli/sample-apps Platform getUserOrderHistories \
    --namespace $AB_NAMESPACE \
    --orderNo 'jEBxuLxvhjO3Y8M2' \
    --userId '6Y5xqWJRXSMPFkwM' \
    > test.out 2>&1
eval_tap $? 261 'GetUserOrderHistories' test.out

#- 262 ProcessUserOrderNotification
samples/cli/sample-apps Platform processUserOrderNotification \
    --namespace $AB_NAMESPACE \
    --orderNo 'ObkBhrzc5xGfb2hw' \
    --userId 'JlvuPYcn7ebQXMT5' \
    --body '{"additionalData": {"cardSummary": "txW5awsmCUzywRgz"}, "authorisedTime": "1975-08-12T00:00:00Z", "chargebackReversedTime": "1988-03-11T00:00:00Z", "chargebackTime": "1975-07-27T00:00:00Z", "chargedTime": "1987-10-23T00:00:00Z", "createdTime": "1992-10-15T00:00:00Z", "currency": {"currencyCode": "PhmRJCpT0IiyffFo", "currencySymbol": "cvnX5o36xv8TJbTy", "currencyType": "REAL", "decimals": 10, "namespace": "sORR4NZ7AN62EtZz"}, "customParameters": {"7em19sdMhgC3fHUn": {}, "HUDJwhhynNLER2CH": {}, "uL473mx3pfVteYRO": {}}, "extOrderNo": "h8HFAzEDlbuksQK5", "extTxId": "y5EDLmJTJ3IhVShz", "extUserId": "6VcPzj8kdlpchPlo", "issuedAt": "1981-08-11T00:00:00Z", "metadata": {"TeqGa2hLqSIktVif": "a8zLuhUWtu6dGN3R", "RQ1zRXqP2t5ywcGe": "uiOiElgGSLeOCSgS", "QPxOSPoUm7TJTyjZ": "MUPkFscLRoC6uv8P"}, "namespace": "5akRN38eSQkhwkmy", "nonceStr": "6G0jbArAlnQJfoyC", "paymentMethod": "4hQgiCQJP7Qwe3dK", "paymentMethodFee": 16, "paymentOrderNo": "UtaZsNuyCfutusfe", "paymentProvider": "STRIPE", "paymentProviderFee": 69, "paymentStationUrl": "B7N8k15XtPx87CbT", "price": 89, "refundedTime": "1971-04-11T00:00:00Z", "salesTax": 87, "sandbox": false, "sku": "5v3xsSkKrtvpsVcV", "status": "REQUEST_FOR_INFORMATION", "statusReason": "enmRKfnPpEzie9hH", "subscriptionId": "aJ2qZUYxFroLVRae", "subtotalPrice": 31, "targetNamespace": "T2iFnSlY7cD73V54", "targetUserId": "jGBijCH2yfTg9oiF", "tax": 17, "totalPrice": 83, "totalTax": 34, "txEndTime": "1983-09-11T00:00:00Z", "type": "Zg3qZsUGdhFTZe0Q", "userId": "vD9kKvyNykHxJdCF", "vat": 71}' \
    > test.out 2>&1
eval_tap $? 262 'ProcessUserOrderNotification' test.out

#- 263 DownloadUserOrderReceipt
samples/cli/sample-apps Platform downloadUserOrderReceipt \
    --namespace $AB_NAMESPACE \
    --orderNo 'vwQoAcsCefH1i88Z' \
    --userId 'KOc8Qa7B64nRK6wO' \
    > test.out 2>&1
eval_tap $? 263 'DownloadUserOrderReceipt' test.out

#- 264 CreateUserPaymentOrder
samples/cli/sample-apps Platform createUserPaymentOrder \
    --namespace $AB_NAMESPACE \
    --userId '8ktjPr86yNhhAgPM' \
    --body '{"currencyCode": "ZhMXPXrNAvAzaEqK", "currencyNamespace": "QO7CKFeg9Fq1Tpy1", "customParameters": {"qGdVjYqkn3OqfUsu": {}, "l6IsBpgSvwdNFNvL": {}, "l8zetLihyQ8mlQ90": {}}, "description": "kBjDiz1PNy437hAi", "extOrderNo": "1fdUEr18KFr0nBGa", "extUserId": "gWuTijPyRdmIk2PD", "itemType": "SUBSCRIPTION", "language": "Ii-fgLG", "metadata": {"lxdlT7oFr7fJK9fn": "q3jKos8qqqTxu3CR", "9l6Iw01OmfNgOwj9": "nAeMqcuAlVH6ioly", "JcPweN40dDjcXYVr": "E999H8rAwTRub5AB"}, "notifyUrl": "tedNJYgu80AdL0HZ", "omitNotification": false, "platform": "4z8lLa0r991ybCvr", "price": 18, "recurringPaymentOrderNo": "rXde1mlbTKX1u56b", "region": "sxrgowFXkPl2jNSS", "returnUrl": "9jTeVglfoUFnG2Om", "sandbox": false, "sku": "aQRDZns74OlLpL48", "subscriptionId": "4JQZ7OswcQxcimih", "title": "jGVy8ZJJjcpcPKoX"}' \
    > test.out 2>&1
eval_tap $? 264 'CreateUserPaymentOrder' test.out

#- 265 RefundUserPaymentOrder
samples/cli/sample-apps Platform refundUserPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo '8idlYVIZ7IXsDuwn' \
    --userId '2g2vPdSJCubGwKeC' \
    --body '{"description": "s70nJGwuW8NlUTm3"}' \
    > test.out 2>&1
eval_tap $? 265 'RefundUserPaymentOrder' test.out

#- 266 ApplyUserRedemption
samples/cli/sample-apps Platform applyUserRedemption \
    --namespace $AB_NAMESPACE \
    --userId 'NsMzBsEvHsMzfQAP' \
    --body '{"code": "LGdjOPS8hPFI3eFL", "orderNo": "PvMlsqcDksXsPEhn"}' \
    > test.out 2>&1
eval_tap $? 266 'ApplyUserRedemption' test.out

#- 267 DoRevocation
samples/cli/sample-apps Platform doRevocation \
    --namespace $AB_NAMESPACE \
    --userId 'DDjcXb2dHBhKsCDI' \
    --body '{"meta": {"7gyQ8yqDeR3JisEy": {}, "1zfi8Pg4PXwVDt6c": {}, "ec3FBjUZB6JTGzqh": {}}, "revokeEntries": [{"currency": {"balanceOrigin": "Epic", "currencyCode": "rc9oatMw0VpZMIxu", "namespace": "bELjiwBivQ8NGmNX"}, "entitlement": {"entitlementId": "k0m6KicqKbVrMd7X"}, "item": {"itemIdentity": "aQCMQU4JFXbZvfhs", "itemIdentityType": "ITEM_SKU", "origin": "Other"}, "quantity": 67, "type": "ENTITLEMENT"}, {"currency": {"balanceOrigin": "Xbox", "currencyCode": "wgTjmNeAUYB3F1Xo", "namespace": "r7C4V4f9WMadL9wV"}, "entitlement": {"entitlementId": "ytjguuDJ0eic81ws"}, "item": {"itemIdentity": "HNmFMrti7LRQCM8O", "itemIdentityType": "ITEM_SKU", "origin": "Steam"}, "quantity": 6, "type": "ENTITLEMENT"}, {"currency": {"balanceOrigin": "IOS", "currencyCode": "J5nOg9N2ngjCor8r", "namespace": "UBidXs1LZrKHLinC"}, "entitlement": {"entitlementId": "yz7DQmodLGFkbOul"}, "item": {"itemIdentity": "SZxflPlprqe8W52J", "itemIdentityType": "ITEM_SKU", "origin": "Epic"}, "quantity": 68, "type": "ITEM"}], "source": "OTHER", "transactionId": "OWTBkVTvh4OgGiLU"}' \
    > test.out 2>&1
eval_tap $? 267 'DoRevocation' test.out

#- 268 RegisterXblSessions
samples/cli/sample-apps Platform registerXblSessions \
    --namespace $AB_NAMESPACE \
    --userId 'ZikgeygD13cvyLQb' \
    --body '{"gameSessionId": "Y1oJro4e9InqEx1S", "payload": {"2YofElE9reOCIzmN": {}, "tvQ3HFuwLEspDezt": {}, "eTTyVA8VRo3UbGAt": {}}, "scid": "AwcU3QmwGb5uRSEg", "sessionTemplateName": "KrDSIBqeU7JtZsdg"}' \
    > test.out 2>&1
eval_tap $? 268 'RegisterXblSessions' test.out

#- 269 QueryUserSubscriptions
samples/cli/sample-apps Platform queryUserSubscriptions \
    --namespace $AB_NAMESPACE \
    --userId 'ImjgYd4YSWzwFVEQ' \
    --chargeStatus 'RECURRING_CHARGING' \
    --itemId 'eDniFk0wN0JBxYK6' \
    --limit '52' \
    --offset '14' \
    --sku 'VQ80PSM0KHYYYTI5' \
    --status 'ACTIVE' \
    --subscribedBy 'USER' \
    > test.out 2>&1
eval_tap $? 269 'QueryUserSubscriptions' test.out

#- 270 GetUserSubscriptionActivities
samples/cli/sample-apps Platform getUserSubscriptionActivities \
    --namespace $AB_NAMESPACE \
    --userId 'Edz4NOTiS4Y3XjOA' \
    --excludeSystem 'false' \
    --limit '3' \
    --offset '8' \
    --subscriptionId 'flSLrL2htEdGusvf' \
    > test.out 2>&1
eval_tap $? 270 'GetUserSubscriptionActivities' test.out

#- 271 PlatformSubscribeSubscription
samples/cli/sample-apps Platform platformSubscribeSubscription \
    --namespace $AB_NAMESPACE \
    --userId '0mexKJlP6tpECIb4' \
    --body '{"grantDays": 53, "itemId": "kgNnpUVVbJqTA1Sr", "language": "IyG1zZ0r1P408nuJ", "reason": "vE0SEkNO085i8d9X", "region": "wxb1hiNrkknCyQSz", "source": "GNOiVLDTl7rzoI9M"}' \
    > test.out 2>&1
eval_tap $? 271 'PlatformSubscribeSubscription' test.out

#- 272 CheckUserSubscriptionSubscribableByItemId
samples/cli/sample-apps Platform checkUserSubscriptionSubscribableByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'QBCf2RV8xbq6kDI5' \
    --itemId 'kNkLqQCg5fsRMDWd' \
    > test.out 2>&1
eval_tap $? 272 'CheckUserSubscriptionSubscribableByItemId' test.out

#- 273 GetUserSubscription
samples/cli/sample-apps Platform getUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'lX98r1ADAgBC109b' \
    --userId 'YqpPuUwcm5I7z1gF' \
    > test.out 2>&1
eval_tap $? 273 'GetUserSubscription' test.out

#- 274 DeleteUserSubscription
samples/cli/sample-apps Platform deleteUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'BcLssrA4FRJ0VakE' \
    --userId 't0kpr1yZ4ZfXIuQ5' \
    > test.out 2>&1
eval_tap $? 274 'DeleteUserSubscription' test.out

#- 275 CancelSubscription
samples/cli/sample-apps Platform cancelSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'lKbCq9cZsWX2hSCf' \
    --userId 'ONigUAQerJF0OOjN' \
    --force 'true' \
    --body '{"immediate": false, "reason": "kGpoFhIYTho0oRIW"}' \
    > test.out 2>&1
eval_tap $? 275 'CancelSubscription' test.out

#- 276 GrantDaysToSubscription
samples/cli/sample-apps Platform grantDaysToSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'NC3oi1J2uLZGkE3p' \
    --userId 'RTFq9xmI7cNXnMmz' \
    --body '{"grantDays": 75, "reason": "ICPJhUmr1rP0Bd6d"}' \
    > test.out 2>&1
eval_tap $? 276 'GrantDaysToSubscription' test.out

#- 277 GetUserSubscriptionBillingHistories
samples/cli/sample-apps Platform getUserSubscriptionBillingHistories \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'bRPyBmfd1Wr5oKWn' \
    --userId 'HZm7lQtVMT7GdQnq' \
    --excludeFree 'false' \
    --limit '1' \
    --offset '9' \
    > test.out 2>&1
eval_tap $? 277 'GetUserSubscriptionBillingHistories' test.out

#- 278 ProcessUserSubscriptionNotification
samples/cli/sample-apps Platform processUserSubscriptionNotification \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'SLDyCtID8ESD6H9f' \
    --userId '0V1xAEwoLlq0cOh5' \
    --body '{"additionalData": {"cardSummary": "L3eSoHY9CTNcfnn4"}, "authorisedTime": "1974-01-28T00:00:00Z", "chargebackReversedTime": "1984-10-12T00:00:00Z", "chargebackTime": "1993-01-07T00:00:00Z", "chargedTime": "1988-01-11T00:00:00Z", "createdTime": "1980-11-10T00:00:00Z", "currency": {"currencyCode": "6WbwTImKLpr296ms", "currencySymbol": "IQnuhBI3XI7TGBIv", "currencyType": "VIRTUAL", "decimals": 5, "namespace": "EHlkb8icYZqeF6iQ"}, "customParameters": {"RfLFVMiFhSUNJWhi": {}, "QcyICdQVtttuWW60": {}, "gWVCdC0jQ1UTw5nH": {}}, "extOrderNo": "ggE9kfSOWl5gZer0", "extTxId": "dlMUjl8bIQG0TW7i", "extUserId": "mPRoSSzauP55VO2g", "issuedAt": "1980-11-29T00:00:00Z", "metadata": {"uu6IxfxbmENAQwvq": "1FbGF2oSI00xK4GK", "ngoIILI8bmOyJGUE": "UkEt5L50sflMX2AG", "6NNdaMcS9JmBvejY": "ftiAapAquHJMjYPf"}, "namespace": "gQANd0XYuPLTlUNx", "nonceStr": "BBTCpA4lx0Hen7OO", "paymentMethod": "rsGYTLp9xiWyMers", "paymentMethodFee": 81, "paymentOrderNo": "tyiATfXjruhT7jxS", "paymentProvider": "ADYEN", "paymentProviderFee": 48, "paymentStationUrl": "Iwit24BzLbOGIevV", "price": 44, "refundedTime": "1980-03-10T00:00:00Z", "salesTax": 84, "sandbox": true, "sku": "gtmXMDWaPukyF3HP", "status": "INIT", "statusReason": "KT2doWCt6Knn1AT0", "subscriptionId": "3HeDVcJVldOFdIAP", "subtotalPrice": 5, "targetNamespace": "hWpQlmzs3vFGU0Fg", "targetUserId": "o7epsEDwEg6LE9ZX", "tax": 65, "totalPrice": 72, "totalTax": 28, "txEndTime": "1974-11-01T00:00:00Z", "type": "UOqjzSPXfCVEZIht", "userId": "A8JKXoB78KpzsdxV", "vat": 45}' \
    > test.out 2>&1
eval_tap $? 278 'ProcessUserSubscriptionNotification' test.out

#- 279 AcquireUserTicket
samples/cli/sample-apps Platform acquireUserTicket \
    --boothName 'G9QNv7UAOVOQsUYU' \
    --namespace $AB_NAMESPACE \
    --userId 'D5B2yRYjCUZn22ik' \
    --body '{"count": 85, "orderNo": "w5bRyK2DG8RQvh8t"}' \
    > test.out 2>&1
eval_tap $? 279 'AcquireUserTicket' test.out

#- 280 QueryUserCurrencyWallets
samples/cli/sample-apps Platform queryUserCurrencyWallets \
    --namespace $AB_NAMESPACE \
    --userId 'P04e6CkLHg5CMl01' \
    > test.out 2>&1
eval_tap $? 280 'QueryUserCurrencyWallets' test.out

#- 281 DebitUserWalletByCurrencyCode
samples/cli/sample-apps Platform debitUserWalletByCurrencyCode \
    --currencyCode 'wfDfbWVPCly3AkEm' \
    --namespace $AB_NAMESPACE \
    --userId '0FTfmXIgm4mkfKk0' \
    --body '{"allowOverdraft": false, "amount": 5, "balanceOrigin": "Epic", "balanceSource": "TRADE", "metadata": {"j8JMv65zvIBL7EeB": {}, "iq7CP96NKBTxLB4R": {}, "oP8LTVTjllntG8Ut": {}}, "reason": "YDoVPkVyYety1Qcl"}' \
    > test.out 2>&1
eval_tap $? 281 'DebitUserWalletByCurrencyCode' test.out

#- 282 ListUserCurrencyTransactions
samples/cli/sample-apps Platform listUserCurrencyTransactions \
    --currencyCode '3EfoYXfRwxmhKpQG' \
    --namespace $AB_NAMESPACE \
    --userId 'xOW93xv0H6Rz8lw3' \
    --limit '77' \
    --offset '80' \
    > test.out 2>&1
eval_tap $? 282 'ListUserCurrencyTransactions' test.out

#- 283 CheckWallet
eval_tap 0 283 'CheckWallet # SKIP deprecated' test.out

#- 284 CreditUserWallet
samples/cli/sample-apps Platform creditUserWallet \
    --currencyCode 'Oc4ZVPVPxx3fsgRS' \
    --namespace $AB_NAMESPACE \
    --userId 'GooUZqFKOFxcimXF' \
    --body '{"amount": 5, "expireAt": "1978-11-14T00:00:00Z", "metadata": {"AR3QCv6HV1PYovzz": {}, "4d6juI3VWJJhzF7M": {}, "cdvy4NpO7JhuSQ0i": {}}, "origin": "Xbox", "reason": "PeiutrxO1vepWr0U", "source": "REWARD"}' \
    > test.out 2>&1
eval_tap $? 284 'CreditUserWallet' test.out

#- 285 DebitByWalletPlatform
samples/cli/sample-apps Platform debitByWalletPlatform \
    --currencyCode 'mlmg2YCdn3BBGJBT' \
    --namespace $AB_NAMESPACE \
    --userId 'cn8XG80r2WtRJ9pj' \
    --body '{"amount": 54, "debitBalanceSource": "DLC_REVOCATION", "metadata": {"G5RnUvoJWTZaQnHv": {}, "ijAiFycJUgwmPDkX": {}, "vMv9OM5v5cWLQrBE": {}}, "reason": "cU89XStbyJNoixTr", "walletPlatform": "Oculus"}' \
    > test.out 2>&1
eval_tap $? 285 'DebitByWalletPlatform' test.out

#- 286 PayWithUserWallet
samples/cli/sample-apps Platform payWithUserWallet \
    --currencyCode 'HeglETnai8tQzFAE' \
    --namespace $AB_NAMESPACE \
    --userId 'asOiX67Y05V59Y7W' \
    --body '{"amount": 51, "metadata": {"oeTceoclw8NmmHt0": {}, "P8wTcJSzurvi9Eb9": {}, "ZiY82353WcZ3RNIk": {}}, "walletPlatform": "Nintendo"}' \
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
    --storeId 'snNQDZTn2lUFBeaf' \
    > test.out 2>&1
eval_tap $? 292 'ListViews' test.out

#- 293 CreateView
samples/cli/sample-apps Platform createView \
    --namespace $AB_NAMESPACE \
    --storeId 'NA5hevwm9PdRFXy6' \
    --body '{"displayOrder": 41, "localizations": {"BRxTzcasX6Beo3Ut": {"description": "6EGo2OHB1vE9MXM7", "localExt": {"Y70cmx8FdaJDeD1L": {}, "6reyH3t02er4l1ky": {}, "qciKuBJpzHIZimxH": {}}, "longDescription": "8KcwyS7M19CSOHDP", "title": "esMidrCnBLBF3lzS"}, "1waaiBMZqhB3OBOx": {"description": "hSyzSqau5jyJX3Tl", "localExt": {"cXIQtKI3qMfoe0cN": {}, "tOOPTqOPTApA9CAF": {}, "FSECW5eVE50s0f0a": {}}, "longDescription": "qPcqIAP1sQFEv7CW", "title": "qY4VVlsrIsNdy6iU"}, "0GeLnFhtJaptZFh6": {"description": "59tiija1DtaPAKrm", "localExt": {"FVP7aGwiKgwxxyUX": {}, "l6X6m9043G6TZidr": {}, "k4d4wKu1HW8EHmWn": {}}, "longDescription": "06yoJQecE88jCNPk", "title": "q1EFKVTyqUa7kwgK"}}, "name": "EHO0hAvo8sWSi3p5"}' \
    > test.out 2>&1
eval_tap $? 293 'CreateView' test.out

#- 294 GetView
samples/cli/sample-apps Platform getView \
    --namespace $AB_NAMESPACE \
    --viewId '3k32PoiZDkEVKGJg' \
    --storeId 'JolI0dcNY5JwA3YS' \
    > test.out 2>&1
eval_tap $? 294 'GetView' test.out

#- 295 UpdateView
samples/cli/sample-apps Platform updateView \
    --namespace $AB_NAMESPACE \
    --viewId 'KHdHnEIudS0eU4yZ' \
    --storeId 'i53OlJsbeAIdIPrJ' \
    --body '{"displayOrder": 65, "localizations": {"4epF94NMrrIxlzrP": {"description": "JD3I9bTJCcuED8mj", "localExt": {"b5tLYd68UZTVnhUM": {}, "NeEkY0iJZ4zAoihq": {}, "Dux6JYZyQJktbfSW": {}}, "longDescription": "WsPi9FGh7pcYXJwm", "title": "YiBuJpbvIFxhxeSX"}, "VObAo77JHeY8w9Ne": {"description": "WZXbpxTebKYr4GJ7", "localExt": {"DrMOGQBaOpKgB0aj": {}, "Tx31d7gj4OkjGfGG": {}, "ZGuk3zsORhucetb7": {}}, "longDescription": "jCqZ44l50dwFv48X", "title": "5VzF2qnQcwgKOWhE"}, "cZGdYyviQUkp2u5q": {"description": "eDAGJYL6OlGCIyze", "localExt": {"6bR9hvhrkgf3TC8r": {}, "QzecneRgOS2Kk3pp": {}, "vrogPS7TlJ64SplL": {}}, "longDescription": "L9YZ75uGYdhmM5ym", "title": "8c5dTpb4mUOiPSOI"}}, "name": "sfiOLhn0tWZvSied"}' \
    > test.out 2>&1
eval_tap $? 295 'UpdateView' test.out

#- 296 DeleteView
samples/cli/sample-apps Platform deleteView \
    --namespace $AB_NAMESPACE \
    --viewId 'yPXENxTSWD4onkbq' \
    --storeId 'CIukWsHe5XPFgqwM' \
    > test.out 2>&1
eval_tap $? 296 'DeleteView' test.out

#- 297 QueryWallets
eval_tap 0 297 'QueryWallets # SKIP deprecated' test.out

#- 298 BulkCredit
samples/cli/sample-apps Platform bulkCredit \
    --namespace $AB_NAMESPACE \
    --body '[{"creditRequest": {"amount": 5, "expireAt": "1993-11-07T00:00:00Z", "metadata": {"p9RvV8mftSXpRqsu": {}, "8bYeBbIj1wEgNidX": {}, "jlxWVoRL3SxbCVBg": {}}, "origin": "Twitch", "reason": "soQN9TeIm3KnDPeP", "source": "ACHIEVEMENT"}, "currencyCode": "K86vxJMUsc2P5rZJ", "userIds": ["6g4XkysTmf75Aq92", "pmAjYt8Gtfu4K0ox", "oNaUq13y9rH7H70y"]}, {"creditRequest": {"amount": 21, "expireAt": "1972-08-13T00:00:00Z", "metadata": {"4Ia3UDCg9GB21QrM": {}, "PeYfZVTNDS2EZNBo": {}, "kTMCKnxmkbwcQCgi": {}}, "origin": "System", "reason": "6QA7hzkmuKYYucOK", "source": "IAP_CHARGEBACK_REVERSED"}, "currencyCode": "sl3e8uEP2pdIqX6L", "userIds": ["fuB1Wk2Xlj0Eqk8q", "NuUyXhARO2cALCXu", "ZpelGFrAYlujGTNB"]}, {"creditRequest": {"amount": 18, "expireAt": "1996-01-23T00:00:00Z", "metadata": {"8nzO8TrLo2wS3I6R": {}, "0jyUzC7eAwph7k8n": {}, "ftt4s0K1W1Sxi5L8": {}}, "origin": "Nintendo", "reason": "K3QK18eCwlNjVfM5", "source": "REFERRAL_BONUS"}, "currencyCode": "CRpQkqlvRPvhznae", "userIds": ["ZroYwO6przZ0FCHn", "urQ9cvfB3LezObSV", "OoVJCoBz1xO95MjQ"]}]' \
    > test.out 2>&1
eval_tap $? 298 'BulkCredit' test.out

#- 299 BulkDebit
samples/cli/sample-apps Platform bulkDebit \
    --namespace $AB_NAMESPACE \
    --body '[{"currencyCode": "j5iLYeqKHCbzLYfJ", "request": {"allowOverdraft": false, "amount": 39, "balanceOrigin": "Epic", "balanceSource": "EXPIRATION", "metadata": {"Wywa51KozDJpAFAV": {}, "X98B0iHq7KNUoqJq": {}, "ZHEMK64orqrlOD5h": {}}, "reason": "SIiZFzPTmerPxPb2"}, "userIds": ["V7YpXVGXErxfaYZW", "SRWSbwSZuh6FFmcH", "qHXy1uHcCkyZQZNZ"]}, {"currencyCode": "VITM8cQvx4scaAJv", "request": {"allowOverdraft": true, "amount": 56, "balanceOrigin": "Steam", "balanceSource": "TRADE", "metadata": {"IE8RzQyqLKMMCGn3": {}, "1VM0y9Sxnu89s2gM": {}, "9ndkWl4vnhycdBGF": {}}, "reason": "X6jBz6wwMnlCHRBu"}, "userIds": ["o6tvGDOtf5nGU6MF", "mE7J2KDstDe50Yp1", "KoFW7pELhQKaai0H"]}, {"currencyCode": "lv527NTfJPwNsZtu", "request": {"allowOverdraft": false, "amount": 44, "balanceOrigin": "GooglePlay", "balanceSource": "ORDER_REVOCATION", "metadata": {"KDyQFHMedlshuoph": {}, "1IpESkSRmk2EcPbq": {}, "z7v1lFzOXlowU4o0": {}}, "reason": "VmkmAPV2OZb9exgb"}, "userIds": ["IKbRhr2lpYlu0pjI", "chYjaXfLgOnPtNTw", "ox4asqGibtlOZ8kt"]}]' \
    > test.out 2>&1
eval_tap $? 299 'BulkDebit' test.out

#- 300 GetWallet
eval_tap 0 300 'GetWallet # SKIP deprecated' test.out

#- 301 SyncOrders
samples/cli/sample-apps Platform syncOrders \
    --nextEvaluatedKey 'ZljnoC8lORBYgoJy' \
    --end '90bYGYA2CVFsbz9w' \
    --start 'fWuEpRkxhJOnyNNi' \
    > test.out 2>&1
eval_tap $? 301 'SyncOrders' test.out

#- 302 TestAdyenConfig
samples/cli/sample-apps Platform testAdyenConfig \
    --sandbox 'true' \
    --body '{"allowedPaymentMethods": ["D6cjTcmSXoImq9X4", "ibpBaOvr2K56FRqt", "vuGj5v71AKm3AS7z"], "apiKey": "a6lJPrS0uGajAE9q", "authoriseAsCapture": true, "blockedPaymentMethods": ["xgyZvt0NUSP0QECh", "QNOnGzyU0iWla96J", "RHcUdb7Jc8ALjB0I"], "clientKey": "o9UYK1Mm19PPcAx8", "dropInSettings": "Mp49n1UuRMKtyL8g", "liveEndpointUrlPrefix": "13PBkwJrPLuQDO1N", "merchantAccount": "JKXap9JL68X2nfpp", "notificationHmacKey": "iX5yu8CVsGKYWqnX", "notificationPassword": "YYbUR0tuYDzoMPvI", "notificationUsername": "IXdKRCHlmzxcI7Ir", "returnUrl": "3E8pkq5sXdfAZ6Ma", "settings": "4XsoR3ycsEGjqAKU"}' \
    > test.out 2>&1
eval_tap $? 302 'TestAdyenConfig' test.out

#- 303 TestAliPayConfig
samples/cli/sample-apps Platform testAliPayConfig \
    --sandbox 'true' \
    --body '{"appId": "Dvlhq44WUKDZzKhA", "privateKey": "eBGl6HagSCsICiaR", "publicKey": "sNEsEgzoNqRTt7HJ", "returnUrl": "1uMLHZcBgtzyd6O8"}' \
    > test.out 2>&1
eval_tap $? 303 'TestAliPayConfig' test.out

#- 304 TestCheckoutConfig
samples/cli/sample-apps Platform testCheckoutConfig \
    --sandbox 'true' \
    --body '{"publicKey": "kppOKT1uV4VZoZHz", "secretKey": "saggruqfHXJNgy1M"}' \
    > test.out 2>&1
eval_tap $? 304 'TestCheckoutConfig' test.out

#- 305 DebugMatchedPaymentMerchantConfig
samples/cli/sample-apps Platform debugMatchedPaymentMerchantConfig \
    --namespace 'MKt1WxkQ4r1xziJb' \
    --region 'JLZFtamkHeZvCbPy' \
    > test.out 2>&1
eval_tap $? 305 'DebugMatchedPaymentMerchantConfig' test.out

#- 306 TestPayPalConfig
samples/cli/sample-apps Platform testPayPalConfig \
    --sandbox 'true' \
    --body '{"clientID": "l0o35aebtlz3Mwqd", "clientSecret": "HQsTG2eXIux17XN8", "returnUrl": "3fxF4pIzUxwi2J9R", "webHookId": "PcLA51A9OXhyzvcA"}' \
    > test.out 2>&1
eval_tap $? 306 'TestPayPalConfig' test.out

#- 307 TestStripeConfig
samples/cli/sample-apps Platform testStripeConfig \
    --sandbox 'false' \
    --body '{"allowedPaymentMethodTypes": ["RF2mTCqStLjDvP9R", "SshTf3YmM0OjJH0V", "WzGU7IvjUlijvnkE"], "publishableKey": "gXdldWeOEufK24ZD", "secretKey": "ni7qtGhfLfK81IfF", "webhookSecret": "T8iUzUmEbplXXHTF"}' \
    > test.out 2>&1
eval_tap $? 307 'TestStripeConfig' test.out

#- 308 TestWxPayConfig
samples/cli/sample-apps Platform testWxPayConfig \
    --body '{"appId": "HajWUYHjE7HpynU0", "key": "BODKX2NGAgu1aR22", "mchid": "qST7g4UVIIP96oER", "returnUrl": "BEapEN643aIsrgOh"}' \
    > test.out 2>&1
eval_tap $? 308 'TestWxPayConfig' test.out

#- 309 TestXsollaConfig
samples/cli/sample-apps Platform testXsollaConfig \
    --body '{"apiKey": "ii0NRhFKUzOWKiHO", "flowCompletionUrl": "m0bNzRULtT9jWDfd", "merchantId": 21, "projectId": 22, "projectSecretKey": "eVLAMVylzc5JHesh"}' \
    > test.out 2>&1
eval_tap $? 309 'TestXsollaConfig' test.out

#- 310 GetPaymentMerchantConfig
samples/cli/sample-apps Platform getPaymentMerchantConfig \
    --id 'WgJIJGnq4cAoE1Kc' \
    > test.out 2>&1
eval_tap $? 310 'GetPaymentMerchantConfig' test.out

#- 311 UpdateAdyenConfig
samples/cli/sample-apps Platform updateAdyenConfig \
    --id 'lEcIoFVbxr78Mxqn' \
    --sandbox 'false' \
    --validate 'true' \
    --body '{"allowedPaymentMethods": ["lbu8228Mvc4ww7J6", "5naETSpQy3IjTizU", "IZHwvcuSvHItMF5b"], "apiKey": "gbsn7kKHDF5amt95", "authoriseAsCapture": true, "blockedPaymentMethods": ["RCFUeojxG6z26RRw", "9wOUgkCxU9QXucGE", "qgllt4g5UQcPmqtc"], "clientKey": "Nil6iPC2k7n4NpHX", "dropInSettings": "UzGVXU54szKeaooD", "liveEndpointUrlPrefix": "HSNEwWwRjVB0dG7d", "merchantAccount": "zw3C9pGuEEma4y0p", "notificationHmacKey": "iju7DdabogkQv5gK", "notificationPassword": "sHrLAfJRDsEiaiKd", "notificationUsername": "sgkR5bvXSUQmyrro", "returnUrl": "mn6ZZRfubpNQhMiV", "settings": "MYsQAIKjonDLid1I"}' \
    > test.out 2>&1
eval_tap $? 311 'UpdateAdyenConfig' test.out

#- 312 TestAdyenConfigById
samples/cli/sample-apps Platform testAdyenConfigById \
    --id 'Wb9DMoL9VhflXdJQ' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 312 'TestAdyenConfigById' test.out

#- 313 UpdateAliPayConfig
samples/cli/sample-apps Platform updateAliPayConfig \
    --id '9PDAlOdzd0AELmtu' \
    --sandbox 'false' \
    --validate 'false' \
    --body '{"appId": "G3bTS2yeyVZFo21L", "privateKey": "pUW5zQszbZPIMCvk", "publicKey": "j9LWmGpEVjJtfGeO", "returnUrl": "45Q38F7mFWKf0B0j"}' \
    > test.out 2>&1
eval_tap $? 313 'UpdateAliPayConfig' test.out

#- 314 TestAliPayConfigById
samples/cli/sample-apps Platform testAliPayConfigById \
    --id 'QvBx6C4fWmY7jbKn' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 314 'TestAliPayConfigById' test.out

#- 315 UpdateCheckoutConfig
samples/cli/sample-apps Platform updateCheckoutConfig \
    --id '08JFAzUeI6TATVYX' \
    --sandbox 'false' \
    --validate 'true' \
    --body '{"publicKey": "2WZowWg2qBfFKu5Q", "secretKey": "qVcajkO7sPbkqGrm"}' \
    > test.out 2>&1
eval_tap $? 315 'UpdateCheckoutConfig' test.out

#- 316 TestCheckoutConfigById
samples/cli/sample-apps Platform testCheckoutConfigById \
    --id 'G9jlIGeI4NmsoFje' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 316 'TestCheckoutConfigById' test.out

#- 317 UpdatePayPalConfig
samples/cli/sample-apps Platform updatePayPalConfig \
    --id 'KM2ZD06y4JrvN02i' \
    --sandbox 'false' \
    --validate 'false' \
    --body '{"clientID": "zPzkswEMqsLJTGc6", "clientSecret": "ZGg26J0ZQr5wslfp", "returnUrl": "DSfiPrnXCIqvSUeQ", "webHookId": "BWHOjVf50ONnQcfP"}' \
    > test.out 2>&1
eval_tap $? 317 'UpdatePayPalConfig' test.out

#- 318 TestPayPalConfigById
samples/cli/sample-apps Platform testPayPalConfigById \
    --id 'yxeSmHlGxghFzTOk' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 318 'TestPayPalConfigById' test.out

#- 319 UpdateStripeConfig
samples/cli/sample-apps Platform updateStripeConfig \
    --id 'CgZsmMdnYBWPN2ua' \
    --sandbox 'false' \
    --validate 'false' \
    --body '{"allowedPaymentMethodTypes": ["xh0We3DvX4ne0oju", "2yIlonqvPAf8cCpp", "gkXM14BdOu7YzL9v"], "publishableKey": "4nsbXoesHZyc8fgH", "secretKey": "abf0TWsCWLT2lqoc", "webhookSecret": "tDRIloU5BvIORsDj"}' \
    > test.out 2>&1
eval_tap $? 319 'UpdateStripeConfig' test.out

#- 320 TestStripeConfigById
samples/cli/sample-apps Platform testStripeConfigById \
    --id 'J0HBna99WUHA4KmR' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 320 'TestStripeConfigById' test.out

#- 321 UpdateWxPayConfig
samples/cli/sample-apps Platform updateWxPayConfig \
    --id 'JTMmYNTl0aKyTDui' \
    --validate 'false' \
    --body '{"appId": "7UqufTXqARfwxqWi", "key": "WxPY2BtN3MsTzbkn", "mchid": "K6I2ui9GuQy34Mpl", "returnUrl": "hYejC7AWVUdinktI"}' \
    > test.out 2>&1
eval_tap $? 321 'UpdateWxPayConfig' test.out

#- 322 UpdateWxPayConfigCert
samples/cli/sample-apps Platform updateWxPayConfigCert \
    --id 'hALzSHUCTIB6Kmxh' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 322 'UpdateWxPayConfigCert' test.out

#- 323 TestWxPayConfigById
samples/cli/sample-apps Platform testWxPayConfigById \
    --id 'fpO1Mt3jWxOtdn5S' \
    > test.out 2>&1
eval_tap $? 323 'TestWxPayConfigById' test.out

#- 324 UpdateXsollaConfig
samples/cli/sample-apps Platform updateXsollaConfig \
    --id 'lYljjTxprXzYCdsp' \
    --validate 'false' \
    --body '{"apiKey": "MIezoatUyoAiNI67", "flowCompletionUrl": "fMtAJPgUNLqSQifl", "merchantId": 8, "projectId": 2, "projectSecretKey": "jnERyG9vLqwUfrkD"}' \
    > test.out 2>&1
eval_tap $? 324 'UpdateXsollaConfig' test.out

#- 325 TestXsollaConfigById
samples/cli/sample-apps Platform testXsollaConfigById \
    --id 'CFQrO4QJ2e9P7YGA' \
    > test.out 2>&1
eval_tap $? 325 'TestXsollaConfigById' test.out

#- 326 UpdateXsollaUIConfig
samples/cli/sample-apps Platform updateXsollaUIConfig \
    --id 'lrQQOSftmW8okWSr' \
    --body '{"device": "MOBILE", "showCloseButton": true, "size": "LARGE", "theme": "DEFAULT"}' \
    > test.out 2>&1
eval_tap $? 326 'UpdateXsollaUIConfig' test.out

#- 327 QueryPaymentProviderConfig
samples/cli/sample-apps Platform queryPaymentProviderConfig \
    --limit '42' \
    --namespace '11HBG2eLXHktZeNT' \
    --offset '92' \
    --region 'C2c4yklFiR3F5T4s' \
    > test.out 2>&1
eval_tap $? 327 'QueryPaymentProviderConfig' test.out

#- 328 CreatePaymentProviderConfig
samples/cli/sample-apps Platform createPaymentProviderConfig \
    --body '{"aggregate": "XSOLLA", "namespace": "8wPlBWv6OCz3aOBa", "region": "u2JCofnFZk9CBbD6", "sandboxTaxJarApiToken": "hQIURXxDmasMUF4h", "specials": ["CHECKOUT", "STRIPE", "XSOLLA"], "taxJarApiToken": "Up770TvE00mH212q", "taxJarEnabled": true, "useGlobalTaxJarApiToken": false}' \
    > test.out 2>&1
eval_tap $? 328 'CreatePaymentProviderConfig' test.out

#- 329 GetAggregatePaymentProviders
samples/cli/sample-apps Platform getAggregatePaymentProviders \
    > test.out 2>&1
eval_tap $? 329 'GetAggregatePaymentProviders' test.out

#- 330 DebugMatchedPaymentProviderConfig
samples/cli/sample-apps Platform debugMatchedPaymentProviderConfig \
    --namespace 'rbmwcqZUKtTh9XG8' \
    --region 'HbimBFEf9PEzVugx' \
    > test.out 2>&1
eval_tap $? 330 'DebugMatchedPaymentProviderConfig' test.out

#- 331 GetSpecialPaymentProviders
samples/cli/sample-apps Platform getSpecialPaymentProviders \
    > test.out 2>&1
eval_tap $? 331 'GetSpecialPaymentProviders' test.out

#- 332 UpdatePaymentProviderConfig
samples/cli/sample-apps Platform updatePaymentProviderConfig \
    --id 'yPdh6E4I7L1OxKLm' \
    --body '{"aggregate": "XSOLLA", "namespace": "0OrVoMYsFjzlOFQk", "region": "7tO89cto1vYyvjRF", "sandboxTaxJarApiToken": "DLltmBTCKSnjKoFQ", "specials": ["ALIPAY", "XSOLLA", "WXPAY"], "taxJarApiToken": "n9d14PdkzLJgWpWI", "taxJarEnabled": true, "useGlobalTaxJarApiToken": true}' \
    > test.out 2>&1
eval_tap $? 332 'UpdatePaymentProviderConfig' test.out

#- 333 DeletePaymentProviderConfig
samples/cli/sample-apps Platform deletePaymentProviderConfig \
    --id 'CUbJejE0JvVsySXw' \
    > test.out 2>&1
eval_tap $? 333 'DeletePaymentProviderConfig' test.out

#- 334 GetPaymentTaxConfig
samples/cli/sample-apps Platform getPaymentTaxConfig \
    > test.out 2>&1
eval_tap $? 334 'GetPaymentTaxConfig' test.out

#- 335 UpdatePaymentTaxConfig
samples/cli/sample-apps Platform updatePaymentTaxConfig \
    --body '{"sandboxTaxJarApiToken": "p7WfEZfFUuszdkXj", "taxJarApiToken": "XJAymvoVJMTr5E0q", "taxJarEnabled": true, "taxJarProductCodesMapping": {"RqwQfwhUxMoNB0jN": "kpwJ2Vs7L4dhFUZP", "XgvYuuAycx95cS02": "0NdfWEMqaV1KFwoY", "Knlgy5y2i4cAR1CH": "pxLbyJj26iwOsbke"}}' \
    > test.out 2>&1
eval_tap $? 335 'UpdatePaymentTaxConfig' test.out

#- 336 SyncPaymentOrders
samples/cli/sample-apps Platform syncPaymentOrders \
    --nextEvaluatedKey 'pJG2zp8BM0xBCRh6' \
    --end 'wdj3JBNsKBMQOToc' \
    --start 'HJfBndKqGM2qt6Ts' \
    > test.out 2>&1
eval_tap $? 336 'SyncPaymentOrders' test.out

#- 337 PublicGetRootCategories
samples/cli/sample-apps Platform publicGetRootCategories \
    --namespace $AB_NAMESPACE \
    --language 'AoKmWtehlGxZy42z' \
    --storeId 'ebcy0wyLNZcNHgTH' \
    > test.out 2>&1
eval_tap $? 337 'PublicGetRootCategories' test.out

#- 338 DownloadCategories
samples/cli/sample-apps Platform downloadCategories \
    --namespace $AB_NAMESPACE \
    --language 'I5dWPMpd46FQJz3U' \
    --storeId '0JyfRN79dFY2O17e' \
    > test.out 2>&1
eval_tap $? 338 'DownloadCategories' test.out

#- 339 PublicGetCategory
samples/cli/sample-apps Platform publicGetCategory \
    --categoryPath 'RjuycIiPdbaNLPNt' \
    --namespace $AB_NAMESPACE \
    --language 'fVa3JCuDxp6bIB7o' \
    --storeId 'UGnF4Go1HlCVG1BZ' \
    > test.out 2>&1
eval_tap $? 339 'PublicGetCategory' test.out

#- 340 PublicGetChildCategories
samples/cli/sample-apps Platform publicGetChildCategories \
    --categoryPath 'YOYp2NG41tuUnnWD' \
    --namespace $AB_NAMESPACE \
    --language 'VT7pA2KMtL65cCC5' \
    --storeId 'sCvLWmHD6nRGm8op' \
    > test.out 2>&1
eval_tap $? 340 'PublicGetChildCategories' test.out

#- 341 PublicGetDescendantCategories
samples/cli/sample-apps Platform publicGetDescendantCategories \
    --categoryPath 'Ec0WAynYThGcLZp7' \
    --namespace $AB_NAMESPACE \
    --language 'UpvNve2V9W0MhhzH' \
    --storeId '1advmsUZO5lGFzQ1' \
    > test.out 2>&1
eval_tap $? 341 'PublicGetDescendantCategories' test.out

#- 342 PublicListCurrencies
samples/cli/sample-apps Platform publicListCurrencies \
    --namespace $AB_NAMESPACE \
    --currencyType 'REAL' \
    > test.out 2>&1
eval_tap $? 342 'PublicListCurrencies' test.out

#- 343 GeDLCDurableRewardShortMap
samples/cli/sample-apps Platform geDLCDurableRewardShortMap \
    --namespace $AB_NAMESPACE \
    --dlcType 'OCULUS' \
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
    --language 'awhMPs2iaFcR0wRj' \
    --region 'tCmE9Tuvq7FJq6dC' \
    --storeId 'dWjtLFYuQWvSQW7T' \
    --appId 'bgwUGudFGy0tLsK0' \
    > test.out 2>&1
eval_tap $? 345 'PublicGetItemByAppId' test.out

#- 346 PublicQueryItems
samples/cli/sample-apps Platform publicQueryItems \
    --namespace $AB_NAMESPACE \
    --appType 'DEMO' \
    --baseAppId 'mXHO2HnZZ9fmDDuZ' \
    --categoryPath 'XU6MDggwT3BXnDBx' \
    --features 'IXGry3dqDugfT2eZ' \
    --includeSubCategoryItem 'false' \
    --itemType 'SUBSCRIPTION' \
    --language 'QyUHwn3NEAi0eL7i' \
    --limit '57' \
    --offset '0' \
    --region 'eM5DgVK2rrepYmE3' \
    --sortBy '["displayOrder", "name"]' \
    --storeId 'soyIlanXiQ1IznSI' \
    --tags '9wtMM0y02hNU4fJG' \
    > test.out 2>&1
eval_tap $? 346 'PublicQueryItems' test.out

#- 347 PublicGetItemBySku
samples/cli/sample-apps Platform publicGetItemBySku \
    --namespace $AB_NAMESPACE \
    --language 'fjYKSiT8JHwY8fZN' \
    --region 'CDdCXrKvTscY0MMr' \
    --storeId 'jdtBXlGxDFk3Vozn' \
    --sku 'deaj512rm773tClr' \
    > test.out 2>&1
eval_tap $? 347 'PublicGetItemBySku' test.out

#- 348 PublicGetEstimatedPrice
samples/cli/sample-apps Platform publicGetEstimatedPrice \
    --namespace $AB_NAMESPACE \
    --region 'J4OYKttVapbkrysO' \
    --storeId '46LsdtroyjfFQ9D3' \
    --itemIds 'CPmtuxrlBSwLYe81' \
    > test.out 2>&1
eval_tap $? 348 'PublicGetEstimatedPrice' test.out

#- 349 PublicBulkGetItems
samples/cli/sample-apps Platform publicBulkGetItems \
    --namespace $AB_NAMESPACE \
    --language 'tdrDuGufL9thYlZm' \
    --region 'xiif5wqnrhJwupMX' \
    --storeId 'Hi2Ovvr9ucFmkSxm' \
    --itemIds 'A2XoLuG1Va3qGsT0' \
    > test.out 2>&1
eval_tap $? 349 'PublicBulkGetItems' test.out

#- 350 PublicValidateItemPurchaseCondition
samples/cli/sample-apps Platform publicValidateItemPurchaseCondition \
    --namespace $AB_NAMESPACE \
    --body '{"itemIds": ["fNWGDsSwD0buTeHb", "GDV2ReENr8zQpTNx", "nsnUP90F0SeafrnZ"]}' \
    > test.out 2>&1
eval_tap $? 350 'PublicValidateItemPurchaseCondition' test.out

#- 351 PublicSearchItems
samples/cli/sample-apps Platform publicSearchItems \
    --namespace $AB_NAMESPACE \
    --itemType 'MEDIA' \
    --limit '92' \
    --offset '92' \
    --region 'eK4CPEOjYW9tgY8s' \
    --storeId 'FnbypB2fZkwcknRD' \
    --keyword 'm8RFd5yqIQe0RVKJ' \
    --language 'Rh0jWtRaRUIJ6RRg' \
    > test.out 2>&1
eval_tap $? 351 'PublicSearchItems' test.out

#- 352 PublicGetApp
samples/cli/sample-apps Platform publicGetApp \
    --itemId 'ECQX5kYNyHlEslvI' \
    --namespace $AB_NAMESPACE \
    --language 'CQlVT6EeOoA2wPaS' \
    --region 'fS4u1IkkNH0NCNjK' \
    --storeId '4M6880NiC9PahGEj' \
    > test.out 2>&1
eval_tap $? 352 'PublicGetApp' test.out

#- 353 PublicGetItemDynamicData
samples/cli/sample-apps Platform publicGetItemDynamicData \
    --itemId 'ETvtADqGF8r6FYJ7' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 353 'PublicGetItemDynamicData' test.out

#- 354 PublicGetItem
samples/cli/sample-apps Platform publicGetItem \
    --itemId 'jh0I3nHZTXAfXbml' \
    --namespace $AB_NAMESPACE \
    --language 'lE0UGyjch5BJ9HLw' \
    --populateBundle 'false' \
    --region 'nwWmYxcuKmnZIOZJ' \
    --storeId 'LSg3Sjvr2vOJQFro' \
    > test.out 2>&1
eval_tap $? 354 'PublicGetItem' test.out

#- 355 GetPaymentCustomization
eval_tap 0 355 'GetPaymentCustomization # SKIP deprecated' test.out

#- 356 PublicGetPaymentUrl
samples/cli/sample-apps Platform publicGetPaymentUrl \
    --namespace $AB_NAMESPACE \
    --body '{"paymentOrderNo": "enn0VgLTMmiUWNpf", "paymentProvider": "PAYPAL", "returnUrl": "3inGu1vWojFPY5Rm", "ui": "rKBJl8usBAow5bV0", "zipCode": "u74aWYcGqitClu8W"}' \
    > test.out 2>&1
eval_tap $? 356 'PublicGetPaymentUrl' test.out

#- 357 PublicGetPaymentMethods
samples/cli/sample-apps Platform publicGetPaymentMethods \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'Iu581xj0vbdnSog7' \
    > test.out 2>&1
eval_tap $? 357 'PublicGetPaymentMethods' test.out

#- 358 PublicGetUnpaidPaymentOrder
samples/cli/sample-apps Platform publicGetUnpaidPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'qE779HdgXvpm7IHt' \
    > test.out 2>&1
eval_tap $? 358 'PublicGetUnpaidPaymentOrder' test.out

#- 359 Pay
samples/cli/sample-apps Platform pay \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'xIKgzgNTiM8PpCCt' \
    --paymentProvider 'XSOLLA' \
    --zipCode 'j690SB5blJilEAtW' \
    --body '{"token": "OtGP4gH6QdMuWEWe"}' \
    > test.out 2>&1
eval_tap $? 359 'Pay' test.out

#- 360 PublicCheckPaymentOrderPaidStatus
samples/cli/sample-apps Platform publicCheckPaymentOrderPaidStatus \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'PAKH3VKS7egONVTV' \
    > test.out 2>&1
eval_tap $? 360 'PublicCheckPaymentOrderPaidStatus' test.out

#- 361 GetPaymentPublicConfig
samples/cli/sample-apps Platform getPaymentPublicConfig \
    --namespace $AB_NAMESPACE \
    --sandbox 'true' \
    --paymentProvider 'STRIPE' \
    --region 'EmAjIG7Ok5Ns8FsT' \
    > test.out 2>&1
eval_tap $? 361 'GetPaymentPublicConfig' test.out

#- 362 PublicGetQRCode
samples/cli/sample-apps Platform publicGetQRCode \
    --namespace $AB_NAMESPACE \
    --code 'vQKraxZ2w0tCatbt' \
    > test.out 2>&1
eval_tap $? 362 'PublicGetQRCode' test.out

#- 363 PublicNormalizePaymentReturnUrl
samples/cli/sample-apps Platform publicNormalizePaymentReturnUrl \
    --namespace $AB_NAMESPACE \
    --payerID 'egP1ebmSCrNo78EG' \
    --foreinginvoice 'wf4FD6aHlF6vnCKI' \
    --invoiceId 'EYKyEZVeT3CrQTud' \
    --payload 'gpwdyH4jtx3uYahm' \
    --redirectResult 'n7TcwcGwI17DmrDk' \
    --resultCode 'GzUalbhQ2uJUlZUD' \
    --sessionId 'hxKB6U4jkT5rQEvY' \
    --status 'NBN6NqsqCQQqNmDh' \
    --token 'yC6pFC4jXoyi3hLW' \
    --type 'dbEWhoKlWjxdMNal' \
    --userId 'zg2kukQYc7vvQ4Ng' \
    --orderNo 'oxK3kfvaFWrQymiM' \
    --paymentOrderNo 'cD0a6RCayWq8ojRX' \
    --paymentProvider 'PAYPAL' \
    --returnUrl 'DFojExECRYPrjOjm' \
    > test.out 2>&1
eval_tap $? 363 'PublicNormalizePaymentReturnUrl' test.out

#- 364 GetPaymentTaxValue
samples/cli/sample-apps Platform getPaymentTaxValue \
    --namespace $AB_NAMESPACE \
    --zipCode 'lKUbR6WV2CW0RXNc' \
    --paymentOrderNo 'fEZoUHayzVTFjl5f' \
    --paymentProvider 'WALLET' \
    > test.out 2>&1
eval_tap $? 364 'GetPaymentTaxValue' test.out

#- 365 GetRewardByCode
samples/cli/sample-apps Platform getRewardByCode \
    --namespace $AB_NAMESPACE \
    --rewardCode '7U2yI5klutVock0L' \
    > test.out 2>&1
eval_tap $? 365 'GetRewardByCode' test.out

#- 366 QueryRewards1
samples/cli/sample-apps Platform queryRewards1 \
    --namespace $AB_NAMESPACE \
    --eventTopic 'm8TyW1qy1ucLw7QE' \
    --limit '13' \
    --offset '33' \
    --sortBy '["rewardCode", "namespace:desc"]' \
    > test.out 2>&1
eval_tap $? 366 'QueryRewards1' test.out

#- 367 GetReward1
samples/cli/sample-apps Platform getReward1 \
    --namespace $AB_NAMESPACE \
    --rewardId 'ugM2MoOthgzflCaI' \
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
    --appIds '["gIdkToi9Txs1gbRP", "wrQ9pLgg4Mrltx2x", "L783rlhbNGrYMbfv"]' \
    --itemIds '["dZH0maYMuMht5pl4", "ZjHjVf278L8iEJfw", "vgEebKoCegslf00t"]' \
    --skus '["1B0HBRY4Ed1IzIKE", "Y4PIE9rULH68h0ok", "Y5yneuh5rknFCu6j"]' \
    > test.out 2>&1
eval_tap $? 369 'PublicExistsAnyMyActiveEntitlement' test.out

#- 370 PublicGetMyAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform publicGetMyAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --appId 'E9H9EnFOxYiy2Xwz' \
    > test.out 2>&1
eval_tap $? 370 'PublicGetMyAppEntitlementOwnershipByAppId' test.out

#- 371 PublicGetMyEntitlementOwnershipByItemId
samples/cli/sample-apps Platform publicGetMyEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --entitlementClazz 'APP' \
    --itemId 'n4gD4XXw1Xt36vX1' \
    > test.out 2>&1
eval_tap $? 371 'PublicGetMyEntitlementOwnershipByItemId' test.out

#- 372 PublicGetMyEntitlementOwnershipBySku
samples/cli/sample-apps Platform publicGetMyEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --entitlementClazz 'APP' \
    --sku 'wALlEWjncLPOvqi0' \
    > test.out 2>&1
eval_tap $? 372 'PublicGetMyEntitlementOwnershipBySku' test.out

#- 373 PublicGetEntitlementOwnershipToken
samples/cli/sample-apps Platform publicGetEntitlementOwnershipToken \
    --namespace $AB_NAMESPACE \
    --appIds '["dwJ1XlpwcSeCOJAd", "EHwES0FcEXRhkxso", "JactiwoqH9D7gVX6"]' \
    --itemIds '["K9ag4rFdwsShmmm2", "0GDs80K0VXYqx04y", "f7BTvn02JSN6z9YU"]' \
    --skus '["MdLzUwfetgcKVhPG", "Pv2ahmGfY08RydhP", "fgS80q34REcur4wf"]' \
    > test.out 2>&1
eval_tap $? 373 'PublicGetEntitlementOwnershipToken' test.out

#- 374 SyncTwitchDropsEntitlement
samples/cli/sample-apps Platform syncTwitchDropsEntitlement \
    --namespace $AB_NAMESPACE \
    --body '{"gameId": "tYivLNDVM99RdPle", "language": "Nv_bFNk", "region": "YtJ6VU0EnhHtsaEg"}' \
    > test.out 2>&1
eval_tap $? 374 'SyncTwitchDropsEntitlement' test.out

#- 375 PublicGetMyWallet
samples/cli/sample-apps Platform publicGetMyWallet \
    --currencyCode 'cTnIPzKAmQkyHEOJ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 375 'PublicGetMyWallet' test.out

#- 376 SyncEpicGameDLC
samples/cli/sample-apps Platform syncEpicGameDLC \
    --namespace $AB_NAMESPACE \
    --userId 'tH9ke7BKqc2U8CF8' \
    --body '{"epicGamesJwtToken": "VlTLL8p5zKEvsbgT"}' \
    > test.out 2>&1
eval_tap $? 376 'SyncEpicGameDLC' test.out

#- 377 SyncOculusDLC
samples/cli/sample-apps Platform syncOculusDLC \
    --namespace $AB_NAMESPACE \
    --userId 'bjUu5dnesB4jgBrD' \
    > test.out 2>&1
eval_tap $? 377 'SyncOculusDLC' test.out

#- 378 PublicSyncPsnDlcInventory
samples/cli/sample-apps Platform publicSyncPsnDlcInventory \
    --namespace $AB_NAMESPACE \
    --userId 'BT7Au4VX8roVEpZF' \
    --body '{"serviceLabel": 33}' \
    > test.out 2>&1
eval_tap $? 378 'PublicSyncPsnDlcInventory' test.out

#- 379 PublicSyncPsnDlcInventoryWithMultipleServiceLabels
samples/cli/sample-apps Platform publicSyncPsnDlcInventoryWithMultipleServiceLabels \
    --namespace $AB_NAMESPACE \
    --userId 'OlspYEnGoYlPlLkG' \
    --body '{"serviceLabels": [92, 53, 6]}' \
    > test.out 2>&1
eval_tap $? 379 'PublicSyncPsnDlcInventoryWithMultipleServiceLabels' test.out

#- 380 SyncSteamDLC
samples/cli/sample-apps Platform syncSteamDLC \
    --namespace $AB_NAMESPACE \
    --userId 'pZERIKsVMA1zYe4C' \
    --body '{"appId": "1PDRga6QLp2nrRcg", "steamId": "84lcSdCHUf7XQuPd"}' \
    > test.out 2>&1
eval_tap $? 380 'SyncSteamDLC' test.out

#- 381 SyncXboxDLC
samples/cli/sample-apps Platform syncXboxDLC \
    --namespace $AB_NAMESPACE \
    --userId 'ZppmjE5vcU1g3aDY' \
    --body '{"xstsToken": "oItfAlW8BV0LZqJg"}' \
    > test.out 2>&1
eval_tap $? 381 'SyncXboxDLC' test.out

#- 382 PublicQueryUserEntitlements
samples/cli/sample-apps Platform publicQueryUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'j2YwzbWIroS1Xg7t' \
    --appType 'GAME' \
    --entitlementClazz 'APP' \
    --entitlementName '82aOUepdgjNlzQdk' \
    --features '["6miIVNIifTHroE8F", "fMeVvXwjyMbAynlp", "R4kCKFd7FDbPQxiG"]' \
    --itemId '["F6cKfFBwcZP5fGxz", "xLQey6KZtTCYjnPm", "VzB4lVSoCTs5WzdZ"]' \
    --limit '82' \
    --offset '75' \
    > test.out 2>&1
eval_tap $? 382 'PublicQueryUserEntitlements' test.out

#- 383 PublicGetUserAppEntitlementByAppId
samples/cli/sample-apps Platform publicGetUserAppEntitlementByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'PXAPBeMnEHiouomL' \
    --appId 'Gyq06tvZTubjUhyD' \
    > test.out 2>&1
eval_tap $? 383 'PublicGetUserAppEntitlementByAppId' test.out

#- 384 PublicQueryUserEntitlementsByAppType
samples/cli/sample-apps Platform publicQueryUserEntitlementsByAppType \
    --namespace $AB_NAMESPACE \
    --userId 'A3xejbPwr47fDAaB' \
    --limit '37' \
    --offset '23' \
    --appType 'GAME' \
    > test.out 2>&1
eval_tap $? 384 'PublicQueryUserEntitlementsByAppType' test.out

#- 385 PublicGetUserEntitlementByItemId
samples/cli/sample-apps Platform publicGetUserEntitlementByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'oNWqpEdw0oHqgGTq' \
    --entitlementClazz 'LOOTBOX' \
    --itemId 'ZapsjT4b1M7gj21q' \
    > test.out 2>&1
eval_tap $? 385 'PublicGetUserEntitlementByItemId' test.out

#- 386 PublicGetUserEntitlementBySku
samples/cli/sample-apps Platform publicGetUserEntitlementBySku \
    --namespace $AB_NAMESPACE \
    --userId 'yyAWE5jeOYUP4ywc' \
    --entitlementClazz 'MEDIA' \
    --sku 'G9BQ7oGRAYJdK4i4' \
    > test.out 2>&1
eval_tap $? 386 'PublicGetUserEntitlementBySku' test.out

#- 387 PublicExistsAnyUserActiveEntitlement
samples/cli/sample-apps Platform publicExistsAnyUserActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'JJ8V9togHCEMOU4p' \
    --appIds '["co7bSmf6VjBxwgej", "faoPZfh6X9lcxAu0", "aYaJMtVahsSGzQHK"]' \
    --itemIds '["NUzgMjVYzECiJDbf", "ErI2bNcGC19xHhXo", "X8amhi8F6aWrabQT"]' \
    --skus '["kFMX8i8yUhPzUYRH", "fkaywnRJyZde2xN3", "sq2xz8KPbS0W6BZM"]' \
    > test.out 2>&1
eval_tap $? 387 'PublicExistsAnyUserActiveEntitlement' test.out

#- 388 PublicGetUserAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform publicGetUserAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'ctAiJPsnP34nknZt' \
    --appId 'bvixYQn6IEP4ZRku' \
    > test.out 2>&1
eval_tap $? 388 'PublicGetUserAppEntitlementOwnershipByAppId' test.out

#- 389 PublicGetUserEntitlementOwnershipByItemId
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'orEhG9jdBdqoTjOl' \
    --entitlementClazz 'LOOTBOX' \
    --itemId 'BD2nDoj2lCb7MnTu' \
    > test.out 2>&1
eval_tap $? 389 'PublicGetUserEntitlementOwnershipByItemId' test.out

#- 390 PublicGetUserEntitlementOwnershipByItemIds
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'X8aMIb4pL5eYWhvl' \
    --ids '["7sRNNRjv8cyohqSt", "tv5nXO5GmNYTotYO", "Iwcvtyql1AExUHqd"]' \
    > test.out 2>&1
eval_tap $? 390 'PublicGetUserEntitlementOwnershipByItemIds' test.out

#- 391 PublicGetUserEntitlementOwnershipBySku
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --userId 'xLUlsR77Qhq6dV4a' \
    --entitlementClazz 'ENTITLEMENT' \
    --sku 'AQhrNPwhbCWby5Gg' \
    > test.out 2>&1
eval_tap $? 391 'PublicGetUserEntitlementOwnershipBySku' test.out

#- 392 PublicGetUserEntitlement
samples/cli/sample-apps Platform publicGetUserEntitlement \
    --entitlementId '8JgC2PNXPCBMNrIU' \
    --namespace $AB_NAMESPACE \
    --userId 'yw0JJ8h9OwfIO7vV' \
    > test.out 2>&1
eval_tap $? 392 'PublicGetUserEntitlement' test.out

#- 393 PublicConsumeUserEntitlement
samples/cli/sample-apps Platform publicConsumeUserEntitlement \
    --entitlementId '6atAw3FXScDg0EGZ' \
    --namespace $AB_NAMESPACE \
    --userId 'FKM4grU4yFOVWhKI' \
    --body '{"options": ["syzBupfiBPRsUChH", "qQp7T0YOu3MYN2eY", "OGXGPq38KiVCTln1"], "requestId": "42H9IHG1NYxVy9Qt", "useCount": 11}' \
    > test.out 2>&1
eval_tap $? 393 'PublicConsumeUserEntitlement' test.out

#- 394 PublicSellUserEntitlement
samples/cli/sample-apps Platform publicSellUserEntitlement \
    --entitlementId '6dgUTfyoTc3HGH43' \
    --namespace $AB_NAMESPACE \
    --userId 'Bi8JdEn3REjnka8h' \
    --body '{"requestId": "YbMcpxsiY18CGKPE", "useCount": 18}' \
    > test.out 2>&1
eval_tap $? 394 'PublicSellUserEntitlement' test.out

#- 395 PublicRedeemCode
samples/cli/sample-apps Platform publicRedeemCode \
    --namespace $AB_NAMESPACE \
    --userId 'atd8Uqx5YqC1V2k4' \
    --body '{"code": "zyXfqw5HQzmmdQzy", "language": "mO_316", "region": "QYKbU5HBCPt3Ujb1"}' \
    > test.out 2>&1
eval_tap $? 395 'PublicRedeemCode' test.out

#- 396 PublicFulfillAppleIAPItem
samples/cli/sample-apps Platform publicFulfillAppleIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'TCMYdMyBuKjZxu6P' \
    --body '{"excludeOldTransactions": true, "language": "RF-pFXu", "productId": "kjBhTGVtzYuGAQCr", "receiptData": "4973prws4UpFYZp0", "region": "vy9fVgn6ZMIh03Uw", "transactionId": "QCH82nJN0YWatlVX"}' \
    > test.out 2>&1
eval_tap $? 396 'PublicFulfillAppleIAPItem' test.out

#- 397 SyncEpicGamesInventory
samples/cli/sample-apps Platform syncEpicGamesInventory \
    --namespace $AB_NAMESPACE \
    --userId 'p4seL675MJBygPgj' \
    --body '{"epicGamesJwtToken": "F67M8pBFsCO7Eczx"}' \
    > test.out 2>&1
eval_tap $? 397 'SyncEpicGamesInventory' test.out

#- 398 PublicFulfillGoogleIAPItem
samples/cli/sample-apps Platform publicFulfillGoogleIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'HHq4S9Nv7dO3ZL8y' \
    --body '{"autoAck": false, "language": "Ea-238", "orderId": "sa2NEpmD4mkCBTZm", "packageName": "g6xtQT93btKnHIPO", "productId": "NUnQJwH8TCVfJMRZ", "purchaseTime": 1, "purchaseToken": "sJMgty7GCuHFHZUO", "region": "lYg8PbiG4D2bT6Qw"}' \
    > test.out 2>&1
eval_tap $? 398 'PublicFulfillGoogleIAPItem' test.out

#- 399 SyncOculusConsumableEntitlements
samples/cli/sample-apps Platform syncOculusConsumableEntitlements \
    --namespace $AB_NAMESPACE \
    --userId '5upBrvM1H7zEmazX' \
    > test.out 2>&1
eval_tap $? 399 'SyncOculusConsumableEntitlements' test.out

#- 400 PublicReconcilePlayStationStore
samples/cli/sample-apps Platform publicReconcilePlayStationStore \
    --namespace $AB_NAMESPACE \
    --userId 'NgQEJPSXZOn50Yyq' \
    --body '{"currencyCode": "iveaUXAmxx1GlhFf", "price": 0.9270886048914793, "productId": "V4ZbxKpmkhV8rl9E", "serviceLabel": 52}' \
    > test.out 2>&1
eval_tap $? 400 'PublicReconcilePlayStationStore' test.out

#- 401 PublicReconcilePlayStationStoreWithMultipleServiceLabels
samples/cli/sample-apps Platform publicReconcilePlayStationStoreWithMultipleServiceLabels \
    --namespace $AB_NAMESPACE \
    --userId 'THvBqqR4EZ7DxXGF' \
    --body '{"currencyCode": "K8rykoSJS4uUXfzX", "price": 0.2765803204371289, "productId": "fQgndztLdx9LOGYk", "serviceLabels": [48, 52, 71]}' \
    > test.out 2>&1
eval_tap $? 401 'PublicReconcilePlayStationStoreWithMultipleServiceLabels' test.out

#- 402 SyncSteamInventory
samples/cli/sample-apps Platform syncSteamInventory \
    --namespace $AB_NAMESPACE \
    --userId 'Xl1Xnz26oV3906wa' \
    --body '{"appId": "YVhWVLr924D29qGX", "currencyCode": "DXR1qahHq9xB1PnE", "language": "dt-sUDJ_237", "price": 0.5397994253586735, "productId": "B4Pl8gG0wZPsxHzJ", "region": "tt0YwPvsIvT20vxD", "steamId": "2zAdFAUtn2Ymjupa"}' \
    > test.out 2>&1
eval_tap $? 402 'SyncSteamInventory' test.out

#- 403 SyncTwitchDropsEntitlement1
samples/cli/sample-apps Platform syncTwitchDropsEntitlement1 \
    --namespace $AB_NAMESPACE \
    --userId 'hkEJgMZbm5ChPnVR' \
    --body '{"gameId": "1aAwbjPNSfdwqJxW", "language": "JUS", "region": "2u1MN9tDspuPwNIl"}' \
    > test.out 2>&1
eval_tap $? 403 'SyncTwitchDropsEntitlement1' test.out

#- 404 SyncXboxInventory
samples/cli/sample-apps Platform syncXboxInventory \
    --namespace $AB_NAMESPACE \
    --userId 'WgsuZzu1yGMbKGm6' \
    --body '{"currencyCode": "grG0IQthU0IOt2Vg", "price": 0.3756509436439047, "productId": "sy1ZdwKuxsbLPir3", "xstsToken": "d7jl3esHNkXruK6r"}' \
    > test.out 2>&1
eval_tap $? 404 'SyncXboxInventory' test.out

#- 405 PublicQueryUserOrders
samples/cli/sample-apps Platform publicQueryUserOrders \
    --namespace $AB_NAMESPACE \
    --userId 'pOqTHDE0BJc80a62' \
    --itemId 'VUgMskDyWf84dLCE' \
    --limit '13' \
    --offset '35' \
    --status 'FULFILLED' \
    > test.out 2>&1
eval_tap $? 405 'PublicQueryUserOrders' test.out

#- 406 PublicCreateUserOrder
samples/cli/sample-apps Platform publicCreateUserOrder \
    --namespace $AB_NAMESPACE \
    --userId 'KhMTJnU0foOTUqXl' \
    --body '{"currencyCode": "iPZMMswKlWS9oLpc", "discountedPrice": 14, "ext": {"lNjljgU9eSEOXZ2j": {}, "qHriFytOOEXqAxC0": {}, "J2M50q7qC5p9OJiX": {}}, "itemId": "Bq2WyCDAuUFIZpAJ", "language": "Oe-RA", "price": 44, "quantity": 4, "region": "TKU9LndIt1BjapsD", "returnUrl": "J1YIcEWdYQM4c4bD", "sectionId": "mo6GMwe3ah7NrdvL"}' \
    > test.out 2>&1
eval_tap $? 406 'PublicCreateUserOrder' test.out

#- 407 PublicGetUserOrder
samples/cli/sample-apps Platform publicGetUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'hB4GgRVjsAu3bYFg' \
    --userId 'EY2Vi58RsSwyr2ce' \
    > test.out 2>&1
eval_tap $? 407 'PublicGetUserOrder' test.out

#- 408 PublicCancelUserOrder
samples/cli/sample-apps Platform publicCancelUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo '3NcJNrEauNuCJwIl' \
    --userId 'qYKfTw90Un757ZrE' \
    > test.out 2>&1
eval_tap $? 408 'PublicCancelUserOrder' test.out

#- 409 PublicGetUserOrderHistories
samples/cli/sample-apps Platform publicGetUserOrderHistories \
    --namespace $AB_NAMESPACE \
    --orderNo '5ekLPMxShaMPg8Mv' \
    --userId 'bpnbPsSzRidSpL4Z' \
    > test.out 2>&1
eval_tap $? 409 'PublicGetUserOrderHistories' test.out

#- 410 PublicDownloadUserOrderReceipt
samples/cli/sample-apps Platform publicDownloadUserOrderReceipt \
    --namespace $AB_NAMESPACE \
    --orderNo 'ubO0NHaIRG86akph' \
    --userId '4ZzsbtjuJx1MUQY9' \
    > test.out 2>&1
eval_tap $? 410 'PublicDownloadUserOrderReceipt' test.out

#- 411 PublicGetPaymentAccounts
samples/cli/sample-apps Platform publicGetPaymentAccounts \
    --namespace $AB_NAMESPACE \
    --userId 'HjObBS5yOJX6f0eA' \
    > test.out 2>&1
eval_tap $? 411 'PublicGetPaymentAccounts' test.out

#- 412 PublicDeletePaymentAccount
samples/cli/sample-apps Platform publicDeletePaymentAccount \
    --id 'f7wY2LcAjqgY1CCi' \
    --namespace $AB_NAMESPACE \
    --type 'card' \
    --userId 'KUZlKBZW1CN9Zimh' \
    > test.out 2>&1
eval_tap $? 412 'PublicDeletePaymentAccount' test.out

#- 413 PublicListActiveSections
samples/cli/sample-apps Platform publicListActiveSections \
    --namespace $AB_NAMESPACE \
    --userId '9YbTEq30eQdvJVap' \
    --language '2r6YLeQXU9g6oLCa' \
    --region 'febcdjNTDdYmp42V' \
    --storeId 'i7aGKDdOWopm29cj' \
    --viewId 'U3PicaYN5Jdh3aO7' \
    > test.out 2>&1
eval_tap $? 413 'PublicListActiveSections' test.out

#- 414 PublicQueryUserSubscriptions
samples/cli/sample-apps Platform publicQueryUserSubscriptions \
    --namespace $AB_NAMESPACE \
    --userId 'g3ZnYwshUdEPhVlB' \
    --chargeStatus 'SETUP' \
    --itemId 'Loa2AuNzR9M0Yaz9' \
    --limit '52' \
    --offset '3' \
    --sku 'rrtPgGFmn3FYN08c' \
    --status 'EXPIRED' \
    --subscribedBy 'USER' \
    > test.out 2>&1
eval_tap $? 414 'PublicQueryUserSubscriptions' test.out

#- 415 PublicSubscribeSubscription
samples/cli/sample-apps Platform publicSubscribeSubscription \
    --namespace $AB_NAMESPACE \
    --userId 'wjVtsvlS6p74xaT2' \
    --body '{"currencyCode": "lc1LScKSirbx4Lpq", "itemId": "YfUercavZL5YErzn", "language": "zM-rcZE", "region": "7fp1lYHgjZYqlXns", "returnUrl": "SXSSjsELNjJ0Q2d9", "source": "6TQk23FITX9MHBvS"}' \
    > test.out 2>&1
eval_tap $? 415 'PublicSubscribeSubscription' test.out

#- 416 PublicCheckUserSubscriptionSubscribableByItemId
samples/cli/sample-apps Platform publicCheckUserSubscriptionSubscribableByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'Jjp2Xb5xkqRHfYqm' \
    --itemId 'umHdOvTrMk6PPCPJ' \
    > test.out 2>&1
eval_tap $? 416 'PublicCheckUserSubscriptionSubscribableByItemId' test.out

#- 417 PublicGetUserSubscription
samples/cli/sample-apps Platform publicGetUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'DND6i2rlaZj3eBfC' \
    --userId 'IOME00ApHr69mUEl' \
    > test.out 2>&1
eval_tap $? 417 'PublicGetUserSubscription' test.out

#- 418 PublicChangeSubscriptionBillingAccount
samples/cli/sample-apps Platform publicChangeSubscriptionBillingAccount \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'hFRkUeBbtvcyqE3O' \
    --userId 'yjFH9MfaxZEhVuO1' \
    > test.out 2>&1
eval_tap $? 418 'PublicChangeSubscriptionBillingAccount' test.out

#- 419 PublicCancelSubscription
samples/cli/sample-apps Platform publicCancelSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'Kxy0FDKn7YfVSGOC' \
    --userId '7ZAbxaWi3pQaGhfs' \
    --body '{"immediate": true, "reason": "zImrCuoEiiS8eslC"}' \
    > test.out 2>&1
eval_tap $? 419 'PublicCancelSubscription' test.out

#- 420 PublicGetUserSubscriptionBillingHistories
samples/cli/sample-apps Platform publicGetUserSubscriptionBillingHistories \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'LNKUzxHWQ0707Hxj' \
    --userId '0SowcDwwtdodljgw' \
    --excludeFree 'false' \
    --limit '6' \
    --offset '56' \
    > test.out 2>&1
eval_tap $? 420 'PublicGetUserSubscriptionBillingHistories' test.out

#- 421 PublicListViews
samples/cli/sample-apps Platform publicListViews \
    --namespace $AB_NAMESPACE \
    --userId 'tr8lrO8rUiFdOWzs' \
    --language 'brKAkuOaeVYmfMPx' \
    --storeId 'GFUJBNkdHBwY8d70' \
    > test.out 2>&1
eval_tap $? 421 'PublicListViews' test.out

#- 422 PublicGetWallet
samples/cli/sample-apps Platform publicGetWallet \
    --currencyCode 'AwO97dw6q3S44GI2' \
    --namespace $AB_NAMESPACE \
    --userId 'M23NZa5mfWvnIMXJ' \
    > test.out 2>&1
eval_tap $? 422 'PublicGetWallet' test.out

#- 423 PublicListUserWalletTransactions
samples/cli/sample-apps Platform publicListUserWalletTransactions \
    --currencyCode 'mdtlWYIhz2P92Sxk' \
    --namespace $AB_NAMESPACE \
    --userId 'k5w6Zm7EeQ4pN7IG' \
    --limit '94' \
    --offset '13' \
    > test.out 2>&1
eval_tap $? 423 'PublicListUserWalletTransactions' test.out

#- 424 QueryItems1
samples/cli/sample-apps Platform queryItems1 \
    --namespace $AB_NAMESPACE \
    --appType 'DEMO' \
    --availableDate 'yjVcG2kR9ttJGBjk' \
    --baseAppId 'ux463EqowV4fWmGV' \
    --categoryPath 'D39F994qMoNkcKJv' \
    --features 'b2XiO2jYmurD9zlt' \
    --includeSubCategoryItem 'false' \
    --itemName 'Jzq4doi4yzcgYoPh' \
    --itemStatus 'ACTIVE' \
    --itemType 'INGAMEITEM' \
    --limit '53' \
    --offset '50' \
    --region 'ueoZHC996u0sE92z' \
    --sectionExclusive 'false' \
    --sortBy '["displayOrder:asc", "displayOrder:desc", "createdAt:asc"]' \
    --storeId 'DeIRU6NuIcN0LdxF' \
    --tags '2i3B6NUaHmG6cowi' \
    --targetNamespace 'VmFcHAAJsDaYAe8M' \
    > test.out 2>&1
eval_tap $? 424 'QueryItems1' test.out

#- 425 ImportStore1
samples/cli/sample-apps Platform importStore1 \
    --namespace $AB_NAMESPACE \
    --storeId 'rkwlHZJTIzl8nY9E' \
    --strictMode 'false' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 425 'ImportStore1' test.out

#- 426 ExportStore1
samples/cli/sample-apps Platform exportStore1 \
    --namespace $AB_NAMESPACE \
    --storeId 'jmNHYAsJkh7hkaOI' \
    --body '{"itemIds": ["Rsp0Z8DteoQDn7vT", "k3dCxmOnoecs3CUD", "ffRGCEKEUyRD3mg0"]}' \
    > test.out 2>&1
eval_tap $? 426 'ExportStore1' test.out

#- 427 FulfillRewardsV2
samples/cli/sample-apps Platform fulfillRewardsV2 \
    --namespace $AB_NAMESPACE \
    --userId '2ZIpAkaKdBl3Ri9w' \
    --body '{"metadata": {"V23WnWap12F5EncQ": {}, "WU4q9CPsXZbW7TMN": {}, "5oaCOFCxSGsmKMXI": {}}, "origin": "IOS", "rewards": [{"currency": {"currencyCode": "1MKLDQQbDIdJMgd8", "namespace": "Ky0T8sLSn8PY7QSa"}, "item": {"itemId": "uH6E75BxeH5RYmFL", "itemSku": "NuuVDxMK6cLijA8D", "itemType": "XRt63Pf2pvNgErhL"}, "quantity": 3, "type": "CURRENCY"}, {"currency": {"currencyCode": "Y8jWdzDkTYWb0OOR", "namespace": "JAYUUXIhcfFYyl2c"}, "item": {"itemId": "blEm22ySi1hrxaR4", "itemSku": "W4FLG8XUO4SOYx3D", "itemType": "wAI8VGGej8rdkf49"}, "quantity": 68, "type": "ITEM"}, {"currency": {"currencyCode": "I8DdH1KM6EeYvrly", "namespace": "JaxBC1xQ1e3EKHJs"}, "item": {"itemId": "JuW8ZQkwQ3h4g16c", "itemSku": "gZj5o5YpLqU9fGtn", "itemType": "74JAP0wTnuL4bURR"}, "quantity": 78, "type": "ITEM"}], "source": "EXPIRATION", "transactionId": "ngakXs2aPr6eIajn"}' \
    > test.out 2>&1
eval_tap $? 427 'FulfillRewardsV2' test.out


rm -f "tmp.dat"

exit $EXIT_CODE