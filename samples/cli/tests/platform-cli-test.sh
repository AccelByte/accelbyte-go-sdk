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
    --id 'hLxUZA31tKYP1CR4' \
    > test.out 2>&1
eval_tap $? 3 'GetFulfillmentScript' test.out

#- 4 CreateFulfillmentScript
samples/cli/sample-apps Platform createFulfillmentScript \
    --id 'C0Y3WyjkdZOtxMuC' \
    --body '{"grantDays": "9M9mcY0EKwZ02uns"}' \
    > test.out 2>&1
eval_tap $? 4 'CreateFulfillmentScript' test.out

#- 5 DeleteFulfillmentScript
samples/cli/sample-apps Platform deleteFulfillmentScript \
    --id 'XbH1tgnALz7LIGYt' \
    > test.out 2>&1
eval_tap $? 5 'DeleteFulfillmentScript' test.out

#- 6 UpdateFulfillmentScript
samples/cli/sample-apps Platform updateFulfillmentScript \
    --id 'KMlZA5gq0lw0Ty7h' \
    --body '{"grantDays": "O96Hd75xb0XOa87B"}' \
    > test.out 2>&1
eval_tap $? 6 'UpdateFulfillmentScript' test.out

#- 7 ListItemTypeConfigs
samples/cli/sample-apps Platform listItemTypeConfigs \
    > test.out 2>&1
eval_tap $? 7 'ListItemTypeConfigs' test.out

#- 8 CreateItemTypeConfig
samples/cli/sample-apps Platform createItemTypeConfig \
    --body '{"clazz": "JppykXFeJXJI0vdm", "dryRun": true, "fulfillmentUrl": "ZifTq08sbXp2XY7y", "itemType": "BUNDLE", "purchaseConditionUrl": "GVgBVw9tE9qGtreQ"}' \
    > test.out 2>&1
eval_tap $? 8 'CreateItemTypeConfig' test.out

#- 9 SearchItemTypeConfig
samples/cli/sample-apps Platform searchItemTypeConfig \
    --clazz 'LoEiR8PVDtS8iPLu' \
    --itemType 'OPTIONBOX' \
    > test.out 2>&1
eval_tap $? 9 'SearchItemTypeConfig' test.out

#- 10 GetItemTypeConfig
samples/cli/sample-apps Platform getItemTypeConfig \
    --id 'y9xiqPdmNB7eY7Tw' \
    > test.out 2>&1
eval_tap $? 10 'GetItemTypeConfig' test.out

#- 11 UpdateItemTypeConfig
samples/cli/sample-apps Platform updateItemTypeConfig \
    --id 's5Fe43tJGjGa5OVX' \
    --body '{"clazz": "wCfiVSltnL2h12zP", "dryRun": true, "fulfillmentUrl": "LCDqV7QHoTpWNrVt", "purchaseConditionUrl": "vKsgiuerXy2G9vh4"}' \
    > test.out 2>&1
eval_tap $? 11 'UpdateItemTypeConfig' test.out

#- 12 DeleteItemTypeConfig
samples/cli/sample-apps Platform deleteItemTypeConfig \
    --id 'DKqNahWOw0BwJrcP' \
    > test.out 2>&1
eval_tap $? 12 'DeleteItemTypeConfig' test.out

#- 13 QueryCampaigns
samples/cli/sample-apps Platform queryCampaigns \
    --namespace $AB_NAMESPACE \
    --limit '68' \
    --name 'Pr1qG29y69sWk4hy' \
    --offset '10' \
    --tag '8B5fYPdyrEoifKji' \
    > test.out 2>&1
eval_tap $? 13 'QueryCampaigns' test.out

#- 14 CreateCampaign
samples/cli/sample-apps Platform createCampaign \
    --namespace $AB_NAMESPACE \
    --body '{"description": "BZJgAzhQaxq83iCK", "items": [{"extraSubscriptionDays": 79, "itemId": "BiGBbXQgjvUSTpKl", "itemName": "niOeSagl5xy35yPP", "quantity": 24}, {"extraSubscriptionDays": 36, "itemId": "1Eb81MJHqqUSKUCo", "itemName": "gIjmxGLyraGCn6Qe", "quantity": 1}, {"extraSubscriptionDays": 4, "itemId": "GQ3mvpkUUhrNRtGj", "itemName": "fT63Kg7M7prjOo5J", "quantity": 35}], "maxRedeemCountPerCampaignPerUser": 80, "maxRedeemCountPerCode": 8, "maxRedeemCountPerCodePerUser": 42, "maxSaleCount": 3, "name": "GvG9jmGUIWK9AB0o", "redeemEnd": "1975-08-09T00:00:00Z", "redeemStart": "1990-01-13T00:00:00Z", "redeemType": "ITEM", "status": "INACTIVE", "tags": ["4VEZjP9MKaFNmyZC", "VGCTmEDHYzpqr1AM", "NfsZxxs0X3EM2SQR"], "type": "REDEMPTION"}' \
    > test.out 2>&1
eval_tap $? 14 'CreateCampaign' test.out

#- 15 GetCampaign
samples/cli/sample-apps Platform getCampaign \
    --campaignId '5o2hFodGbcgzc1yE' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 15 'GetCampaign' test.out

#- 16 UpdateCampaign
samples/cli/sample-apps Platform updateCampaign \
    --campaignId '8lpfcnkxaMsvQMWx' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "nJeqI1fsbjg1e7ec", "items": [{"extraSubscriptionDays": 57, "itemId": "2vsAsG7mz4ArxBs6", "itemName": "CJcXEq4uzWbHU7vU", "quantity": 20}, {"extraSubscriptionDays": 11, "itemId": "6BW0ZUHmL55z2c47", "itemName": "kpeegHBJTBE93MIO", "quantity": 65}, {"extraSubscriptionDays": 26, "itemId": "qJFZp2fd3CmZo3XW", "itemName": "buTcESEFenWtJzVq", "quantity": 46}], "maxRedeemCountPerCampaignPerUser": 9, "maxRedeemCountPerCode": 67, "maxRedeemCountPerCodePerUser": 38, "maxSaleCount": 35, "name": "Oa65GZCQ9IkP3leY", "redeemEnd": "1976-05-03T00:00:00Z", "redeemStart": "1994-04-06T00:00:00Z", "redeemType": "ITEM", "status": "INACTIVE", "tags": ["xxqdkrFGWuaMokDx", "iyKi75PVWabP7C0B", "GPkzs9a1WdMB72XI"]}' \
    > test.out 2>&1
eval_tap $? 16 'UpdateCampaign' test.out

#- 17 GetCampaignDynamic
samples/cli/sample-apps Platform getCampaignDynamic \
    --campaignId 'XN3UFzqqJzTYt11j' \
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
    --body '{"appConfig": {"appName": "op1fK79cc2cbnoa4"}, "customConfig": {"connectionType": "INSECURE", "grpcServerAddress": "TftfcQZ4fA1O1LRO"}, "extendType": "CUSTOM"}' \
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
    --body '{"appConfig": {"appName": "rTZTg8W1xU6RoAxD"}, "customConfig": {"connectionType": "INSECURE", "grpcServerAddress": "usEDZPY1T3b6NW4s"}, "extendType": "CUSTOM"}' \
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
    --storeId 'K4HEqe0zMbiLPo3g' \
    > test.out 2>&1
eval_tap $? 27 'GetRootCategories' test.out

#- 28 CreateCategory
samples/cli/sample-apps Platform createCategory \
    --namespace $AB_NAMESPACE \
    --storeId 'Dmv0HcqZSan1LJTW' \
    --body '{"categoryPath": "OucVDjV3YWStAQ8F", "localizationDisplayNames": {"fhGdYvw6IBoRVRAS": "2KXTh3MCVq8CcFwN", "ouUsGVDuDZE5XDDk": "0FncQklnyMXWWjGl", "G2EoGP81qnO0fYEW": "czNEZZdm334Foi8x"}}' \
    > test.out 2>&1
eval_tap $? 28 'CreateCategory' test.out

#- 29 ListCategoriesBasic
samples/cli/sample-apps Platform listCategoriesBasic \
    --namespace $AB_NAMESPACE \
    --storeId 'pgJnY6BZOr7zMIug' \
    > test.out 2>&1
eval_tap $? 29 'ListCategoriesBasic' test.out

#- 30 GetCategory
samples/cli/sample-apps Platform getCategory \
    --categoryPath 'OSqjmWda03rfY0sy' \
    --namespace $AB_NAMESPACE \
    --storeId 'RQTmULndtBp5Lk4N' \
    > test.out 2>&1
eval_tap $? 30 'GetCategory' test.out

#- 31 UpdateCategory
samples/cli/sample-apps Platform updateCategory \
    --categoryPath 'C3wiXq4vzrwkRFyf' \
    --namespace $AB_NAMESPACE \
    --storeId '3h6GK5PwRAJRC2Dz' \
    --body '{"localizationDisplayNames": {"AlPj5LH9CymCN0sd": "hMAE7NPoDze6EIkK", "rUM7NJFT4Sc2f70C": "r07wRFQoVreocZgA", "3t9haCS7hXa9ZbjX": "4RJQLB9LpwPKZOSZ"}}' \
    > test.out 2>&1
eval_tap $? 31 'UpdateCategory' test.out

#- 32 DeleteCategory
samples/cli/sample-apps Platform deleteCategory \
    --categoryPath '6BfCAFWIjcxYEV0Q' \
    --namespace $AB_NAMESPACE \
    --storeId 'o5fhihrMjVYQiMe3' \
    > test.out 2>&1
eval_tap $? 32 'DeleteCategory' test.out

#- 33 GetChildCategories
samples/cli/sample-apps Platform getChildCategories \
    --categoryPath 'Oa1m6C5lzIM6yasd' \
    --namespace $AB_NAMESPACE \
    --storeId 'uzbl8u18IJSqtgcX' \
    > test.out 2>&1
eval_tap $? 33 'GetChildCategories' test.out

#- 34 GetDescendantCategories
samples/cli/sample-apps Platform getDescendantCategories \
    --categoryPath 'WUtWWqJaT5aotFbw' \
    --namespace $AB_NAMESPACE \
    --storeId '6SBQW5fvuOqSN8cx' \
    > test.out 2>&1
eval_tap $? 34 'GetDescendantCategories' test.out

#- 35 QueryCodes
samples/cli/sample-apps Platform queryCodes \
    --campaignId 'aqhqUl34TrAU0UgV' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --batchNo '13' \
    --code 'wt1JgteDswZxZKe6' \
    --limit '52' \
    --offset '75' \
    > test.out 2>&1
eval_tap $? 35 'QueryCodes' test.out

#- 36 CreateCodes
samples/cli/sample-apps Platform createCodes \
    --campaignId 'CnET3T2JC6Xcqh9m' \
    --namespace $AB_NAMESPACE \
    --body '{"quantity": 95}' \
    > test.out 2>&1
eval_tap $? 36 'CreateCodes' test.out

#- 37 Download
samples/cli/sample-apps Platform download \
    --campaignId 'J0BAwDlMBfCPRvny' \
    --namespace $AB_NAMESPACE \
    --batchNo '18' \
    > test.out 2>&1
eval_tap $? 37 'Download' test.out

#- 38 BulkDisableCodes
samples/cli/sample-apps Platform bulkDisableCodes \
    --campaignId 'EfQolg3pgxD4eVuz' \
    --namespace $AB_NAMESPACE \
    --batchNo '39' \
    > test.out 2>&1
eval_tap $? 38 'BulkDisableCodes' test.out

#- 39 BulkEnableCodes
samples/cli/sample-apps Platform bulkEnableCodes \
    --campaignId 'bMPWKTYoWWpuqtXI' \
    --namespace $AB_NAMESPACE \
    --batchNo '24' \
    > test.out 2>&1
eval_tap $? 39 'BulkEnableCodes' test.out

#- 40 QueryRedeemHistory
samples/cli/sample-apps Platform queryRedeemHistory \
    --campaignId 'GsUTZ1UFCc2OSGGZ' \
    --namespace $AB_NAMESPACE \
    --code 'lSaFsjSvPjNXGS14' \
    --limit '50' \
    --offset '51' \
    --userId '7l9P77tXGpe2WBAC' \
    > test.out 2>&1
eval_tap $? 40 'QueryRedeemHistory' test.out

#- 41 GetCode
samples/cli/sample-apps Platform getCode \
    --code 'sZUuyFELnPyU7gfK' \
    --namespace $AB_NAMESPACE \
    --redeemable 'true' \
    > test.out 2>&1
eval_tap $? 41 'GetCode' test.out

#- 42 DisableCode
samples/cli/sample-apps Platform disableCode \
    --code 'abeLSsYUKnItSoXU' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 42 'DisableCode' test.out

#- 43 EnableCode
samples/cli/sample-apps Platform enableCode \
    --code 'xTgUo2ow1wqFtZyJ' \
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
    --body '{"currencyCode": "RZIjP9eYmRkyLjjf", "currencySymbol": "KVyHyYDTZW8Nlgew", "currencyType": "VIRTUAL", "decimals": 60, "localizationDescriptions": {"jayj9h1cUFoaq3Zu": "qYWBkrOTaUoPt3a4", "v460r92l8SWq804f": "GK8POeZXd2Fs5njo", "VwDg0BQh3czEWOSe": "1LOlDv1vXneUyzEw"}}' \
    > test.out 2>&1
eval_tap $? 48 'CreateCurrency' test.out

#- 49 UpdateCurrency
samples/cli/sample-apps Platform updateCurrency \
    --currencyCode 'g2Q8e43mTeOhBiLs' \
    --namespace $AB_NAMESPACE \
    --body '{"localizationDescriptions": {"PSTKEj75dC0kTYP0": "9hkWshTDOVY0OGDL", "oywVAWFYjHstWvGj": "yaNHog5djyUnCbdx", "vL9J1OeOhnUddMtg": "tVcYIynYIJctijC6"}}' \
    > test.out 2>&1
eval_tap $? 49 'UpdateCurrency' test.out

#- 50 DeleteCurrency
samples/cli/sample-apps Platform deleteCurrency \
    --currencyCode 'RHk1tzWFVhgQA3BT' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 50 'DeleteCurrency' test.out

#- 51 GetCurrencyConfig
samples/cli/sample-apps Platform getCurrencyConfig \
    --currencyCode 'AP73iD92awWx8a5L' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 51 'GetCurrencyConfig' test.out

#- 52 GetCurrencySummary
samples/cli/sample-apps Platform getCurrencySummary \
    --currencyCode 'GLWIZ1WhMuQGDenM' \
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
    --body '{"data": [{"id": "Vlu9Vrcucy2IEWiP", "rewards": [{"currency": {"currencyCode": "JTzeWDY5xBaSUCro", "namespace": "QqikMgNPAHg7syK5"}, "item": {"itemId": "LjBvyB1X0R7mbK1D", "itemSku": "hnULsLBRi0MM4ucd", "itemType": "7ZSGkdoFjeF0lV9H"}, "quantity": 84, "type": "ITEM"}, {"currency": {"currencyCode": "UMOmSTN8oxf9vIFR", "namespace": "EqOf7zLJ8d4pQMl2"}, "item": {"itemId": "VxaKQQ6rWvj5MxFq", "itemSku": "wht3bBdQIOqBBeqL", "itemType": "OODs3BJTik3CMIq5"}, "quantity": 22, "type": "ITEM"}, {"currency": {"currencyCode": "2wQbTLEfw1OGurwF", "namespace": "3ML4KHORoMreSZPz"}, "item": {"itemId": "rG3CpbKS76hO8WcT", "itemSku": "xeMaUstnetF1UrBH", "itemType": "P5CcrAVjHHI83e9p"}, "quantity": 95, "type": "CURRENCY"}]}, {"id": "7rZpJX6H4ipaOtDV", "rewards": [{"currency": {"currencyCode": "4Crv3xZt4ZmLFs6z", "namespace": "c6RSFeFH9sZg4QdY"}, "item": {"itemId": "TddwGmkWuHVeqOrm", "itemSku": "VbDqwpmQyndgjaLB", "itemType": "Je6Ezo53Y0ym7piO"}, "quantity": 80, "type": "ITEM"}, {"currency": {"currencyCode": "lUfLCEXLv21LXlc8", "namespace": "jq05V92zRWifFOtV"}, "item": {"itemId": "t9g9IRg4P7C0Wy6M", "itemSku": "cYOLjf6JAd1cAElM", "itemType": "Z0VCh3DP5BBbjW3D"}, "quantity": 89, "type": "ITEM"}, {"currency": {"currencyCode": "rmOgaaWlSEfqJVFE", "namespace": "JXepvJtDzvCBaHrG"}, "item": {"itemId": "ktEn9mkIiwAvN9cq", "itemSku": "Qb6gxml9geVkemEx", "itemType": "yWW6SNIN8FUmBC66"}, "quantity": 97, "type": "ITEM"}]}, {"id": "yiqtJXRBL6uVaONW", "rewards": [{"currency": {"currencyCode": "4o75ISh1pvwAWJRY", "namespace": "dkrB2SnHX6PDIbBl"}, "item": {"itemId": "Tv1P8NHOxNOAZbnM", "itemSku": "xGfaQV6HqN1POe8m", "itemType": "jbivlVGD65d161ys"}, "quantity": 98, "type": "CURRENCY"}, {"currency": {"currencyCode": "Wh2zMWYalH2s3AfV", "namespace": "EibYOiorp4TP5R5M"}, "item": {"itemId": "o1jMEGmqXisiNy65", "itemSku": "n0s3afdSjHTy8sx5", "itemType": "jVV3Ly6vMzamXV3e"}, "quantity": 87, "type": "CURRENCY"}, {"currency": {"currencyCode": "teb5tiWWI865yfd6", "namespace": "ub9hbMW5G8WQLpJu"}, "item": {"itemId": "5tmt42pzqgOQH7k0", "itemSku": "F9EykxsNhAHj1okE", "itemType": "QdR4GGIhVTdRcE1Q"}, "quantity": 36, "type": "CURRENCY"}]}]}' \
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
    --body '{"data": [{"platform": "PSN", "platformDlcIdMap": {"CGd2vbzMevmqONqR": "5i1mrCg2Q9yFCwKe", "dCfJHJEbkjmCc5YP": "VSM8m18ARXQKZohk", "LRshMuKi1OOO3rWa": "5yZjSsY6UkDc4Ypk"}}, {"platform": "STEAM", "platformDlcIdMap": {"iEPZAj8Mov5QWdI1": "B4Rs4lBdDYFza43K", "kdlIJCuNSp0h15Ko": "1M2UgQGd46ezpdnk", "VX9hljyL09kWoPI9": "pOYNMv0vIf5VEgkT"}}, {"platform": "STEAM", "platformDlcIdMap": {"61HQcao67SWGVfCm": "AoLe5DhL1KZHxcuU", "dUx8veHSFTWvMkMR": "cli5yw8dcgExf9SB", "qcPVMkxRvcv7Csyp": "85iysMbVQZ1B9NTx"}}]}' \
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
    --appType 'DLC' \
    --entitlementClazz 'ENTITLEMENT' \
    --entitlementName 'A5tOVTO1bv8x0FaA' \
    --itemId '["ljLhsbtJ1ji0zidO", "DGpMdnlIWbHLooyn", "CmYFNdr0N4d1gYJD"]' \
    --limit '54' \
    --offset '8' \
    --origin 'Epic' \
    --userId 'iW6s4dEpogfWkPHg' \
    > test.out 2>&1
eval_tap $? 59 'QueryEntitlements' test.out

#- 60 QueryEntitlements1
samples/cli/sample-apps Platform queryEntitlements1 \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --itemIds '["7VCJsQxx5McpAwK1", "s1UEQUQba1e4QFet", "g5rwXuOEVUYqEPgb"]' \
    --limit '14' \
    --offset '2' \
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
    --body '{"entitlementGrantList": [{"endDate": "1991-01-24T00:00:00Z", "grantedCode": "NkbZYHqtNR8LxvFs", "itemId": "UE69wwM6zOEspX4k", "itemNamespace": "JL9c0T2YXYnyO3pA", "language": "KQuF_hzXx-oO", "origin": "Steam", "quantity": 39, "region": "mLNUIeYkTrKm8bTE", "source": "GIFT", "startDate": "1986-12-15T00:00:00Z", "storeId": "RNcCivV94fq4hpgQ"}, {"endDate": "1981-03-28T00:00:00Z", "grantedCode": "vsvpjpiWgHJi9yRF", "itemId": "e39Y60U4KVMXLGoV", "itemNamespace": "VxPRaKvU5qHkLI98", "language": "wZp_UnMX", "origin": "Epic", "quantity": 89, "region": "faLLS3EO5hLYPLtt", "source": "REWARD", "startDate": "1988-01-06T00:00:00Z", "storeId": "QXLoFbzYnaCeAdmw"}, {"endDate": "1976-12-13T00:00:00Z", "grantedCode": "ZUSjNMPctWLcPJ7T", "itemId": "hcPVVqVPdPT3VLpq", "itemNamespace": "fVB3j9FoGgcw0IsL", "language": "bvK-110", "origin": "Other", "quantity": 39, "region": "3Q86f5uizHDoR8PZ", "source": "PURCHASE", "startDate": "1992-08-21T00:00:00Z", "storeId": "j96yf8QEwrpIpPZm"}], "userIds": ["c1UBhXDccAuLdHS1", "F6fbjd4hQT4iK7h8", "vzJB5rLqgLjAWLLp"]}' \
    > test.out 2>&1
eval_tap $? 63 'GrantEntitlements' test.out

#- 64 RevokeEntitlements
samples/cli/sample-apps Platform revokeEntitlements \
    --namespace $AB_NAMESPACE \
    --body '["hYdvSLQr7wKczKI3", "hGDTF9HHXZR2tRNH", "3kgudVRr3VFksD8E"]' \
    > test.out 2>&1
eval_tap $? 64 'RevokeEntitlements' test.out

#- 65 GetEntitlement
samples/cli/sample-apps Platform getEntitlement \
    --entitlementId 'mxgatUUyZlgOYlco' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 65 'GetEntitlement' test.out

#- 66 QueryFulfillmentHistories
samples/cli/sample-apps Platform queryFulfillmentHistories \
    --namespace $AB_NAMESPACE \
    --limit '16' \
    --offset '59' \
    --status 'SUCCESS' \
    --userId 'bk9QyXQ22k6yDB4O' \
    > test.out 2>&1
eval_tap $? 66 'QueryFulfillmentHistories' test.out

#- 67 QueryIAPClawbackHistory
samples/cli/sample-apps Platform queryIAPClawbackHistory \
    --namespace $AB_NAMESPACE \
    --endTime 'sYMgK2dQBh8xibIH' \
    --eventType 'CHARGEBACK' \
    --externalOrderId 'fzzY3aElsWnWrnnv' \
    --limit '98' \
    --offset '26' \
    --startTime 'HeFPootfLy5HNp1V' \
    --status 'INIT' \
    --userId 'xVgBAjLxEd8sI3BI' \
    > test.out 2>&1
eval_tap $? 67 'QueryIAPClawbackHistory' test.out

#- 68 MockPlayStationStreamEvent
samples/cli/sample-apps Platform mockPlayStationStreamEvent \
    --namespace $AB_NAMESPACE \
    --body '{"body": {"account": "9SZC3DCGgQUICM58", "additionalData": {"entitlement": [{"clientTransaction": [{"amountConsumed": 13, "clientTransactionId": "OEA2I6ngtIJtcnc8"}, {"amountConsumed": 48, "clientTransactionId": "20WjU43oUxlcPpWY"}, {"amountConsumed": 78, "clientTransactionId": "mCcKdsBW83CWgPRT"}], "entitlementId": "kYufAnd6t5zDSy7J", "usageCount": 40}, {"clientTransaction": [{"amountConsumed": 92, "clientTransactionId": "vhk98UjFRRuis8Fr"}, {"amountConsumed": 22, "clientTransactionId": "eI3q2tuOGqE2F1e4"}, {"amountConsumed": 45, "clientTransactionId": "tbN25zAq6ivPAIOs"}], "entitlementId": "YcIKFfUMHO8oozgB", "usageCount": 15}, {"clientTransaction": [{"amountConsumed": 37, "clientTransactionId": "gma82CYpG7wNGBh9"}, {"amountConsumed": 78, "clientTransactionId": "r6HoLWDQviRbgkC7"}, {"amountConsumed": 36, "clientTransactionId": "CiUZC17hw9lDL5ww"}], "entitlementId": "9x8CHu0ulznGETZt", "usageCount": 11}], "purpose": "7c4JEgJtzmskHfGr"}, "originalTitleName": "iNJfEV1NmiRN8JPu", "paymentProductSKU": "djLRTtIOtHFVo0GC", "purchaseDate": "d6h1aHO16lyzGFnS", "sourceOrderItemId": "AHVcS8RyAM7Jp4aU", "titleName": "Q8p2FLTuIWVpWyCC"}, "eventDomain": "daPzfTbyeYhP5Fdy", "eventSource": "X5v7QGGo8nq3AFhR", "eventType": "w8mC2BuU3enRdbVx", "eventVersion": 58, "id": "JYxr8ol7MmtXCA7O", "timestamp": "7dqPqulw1T0hGGeb"}' \
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
    --body '{"bundleId": "i1DtWg3W77WHGTCF", "password": "5Pn0fcafvN1zpsFU"}' \
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
    --body '{"sandboxId": "GF61LzbBV7zXwIiz"}' \
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
    --body '{"applicationName": "8yhPM23Bxbtu0Uem", "serviceAccountId": "QwQLX08WPA1eJpJH"}' \
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
    --body '{"data": [{"itemIdentity": "9ZLDkvNVbTQwKceJ", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"6Uu8i3y6rEetwV8v": "ADdBTJkwRuH9kweZ", "peDh8yLKUKMnBivm": "apmnyZCeC2H1HmUZ", "npoulGGVYtE8qiVh": "EAVx6KtzGCJ1BZhf"}}, {"itemIdentity": "UM9Zsa8cMHdPDrT0", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"sPVYJJ2ggfC8WLB7": "Ccjk7h8cz8O3rhjZ", "al3gEwGcXVyzBmbu": "Vk8JpjybeotwnRZ9", "UNWf3MOQJyQk9QdM": "pawrCxgIBYBrGzRz"}}, {"itemIdentity": "cpmN4pR8WW1mKliC", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"DZihK76DO9E2behe": "EvKGcR185iSqTwKf", "mle7Mc3lrg1dJAnf": "jLLuiQNJRIv2wSDe", "Lfd4KKACy9assAtm": "e5fop6YCQL0ZEwTU"}}]}' \
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
    --body '{"appId": "14UWtUwTNwsZSZk8", "appSecret": "HIOjGd6O6WFDoK0Q"}' \
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
    --body '{"backOfficeServerClientId": "NR0GbR07l2gdcpp4", "backOfficeServerClientSecret": "cxTvl7GmIKFwUfan", "enableStreamJob": false, "environment": "rEzlaRgLLtfCfO43", "streamName": "SDy1Zy7rwC7wy9Q3", "streamPartnerName": "TYDU7nfmKgRFms4n"}' \
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
    --body '{"backOfficeServerClientId": "WvZjf8GJMfR3qAJ9", "backOfficeServerClientSecret": "wMhoQ7VDbtxqcXCS", "enableStreamJob": true, "environment": "kdz80t8vmO73j9rs", "streamName": "iL7eoRLRwOBe7qKy", "streamPartnerName": "qlBNCoWT7UG1SHfH"}' \
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
    --body '{"appId": "DcgbLsInmZ402ZJb", "publisherAuthenticationKey": "pLo3DbhbfZMpwdJi"}' \
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
    --body '{"clientId": "XC3wSCqQHCqvjlck", "clientSecret": "l5B6AV6EQhw7NLrR", "organizationId": "lzYyX9ZlSTOciezH"}' \
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
    --body '{"relyingPartyCert": "E4k8KeZYp76U7GBH"}' \
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
    --password 'jvP9Khid6bqFHz2W' \
    > test.out 2>&1
eval_tap $? 99 'UpdateXblBPCertFile' test.out

#- 100 DownloadInvoiceDetails
samples/cli/sample-apps Platform downloadInvoiceDetails \
    --namespace $AB_NAMESPACE \
    --feature 'Vci1PYKwBl8cYM0J' \
    --itemId '9owXILFJnsbTZJ6x' \
    --itemType 'APP' \
    --endTime 'G9HSJR6j5pOisBBG' \
    --startTime '1ISxRbh1DcuE1lwk' \
    > test.out 2>&1
eval_tap $? 100 'DownloadInvoiceDetails' test.out

#- 101 GenerateInvoiceSummary
samples/cli/sample-apps Platform generateInvoiceSummary \
    --namespace $AB_NAMESPACE \
    --feature '46EUagkTWK7hj63B' \
    --itemId 'KVVWrzT9W5LSqqBo' \
    --itemType 'OPTIONBOX' \
    --endTime 'JwmpQHBTRruzTGht' \
    --startTime 'vdwrvW7KrEaazF70' \
    > test.out 2>&1
eval_tap $? 101 'GenerateInvoiceSummary' test.out

#- 102 SyncInGameItem
samples/cli/sample-apps Platform syncInGameItem \
    --namespace $AB_NAMESPACE \
    --storeId '0PgwDQMLxmQqDVfO' \
    --body '{"categoryPath": "oKOX2XixvrAVlyVk", "targetItemId": "nEEipajimiZV0fop", "targetNamespace": "TnwpQEmqnROtes3Z"}' \
    > test.out 2>&1
eval_tap $? 102 'SyncInGameItem' test.out

#- 103 CreateItem
samples/cli/sample-apps Platform createItem \
    --namespace $AB_NAMESPACE \
    --storeId 'uv3dco6mC2EbSawu' \
    --body '{"appId": "EVUapjI3pAc2vPQb", "appType": "DLC", "baseAppId": "CZjq7hatN9CX266r", "boothName": "7iSoTtj12tDOdvaj", "categoryPath": "ApnQLVa9yNykjDlO", "clazz": "eKrw007N0L2Tsipj", "displayOrder": 10, "entitlementType": "CONSUMABLE", "ext": {"3k8MFrw17TFN84rj": {}, "SntV54z27G2qFpEf": {}, "LxtGBUWzegYDFmlo": {}}, "features": ["9nLtuHEH3ExiTWck", "GXO8cKnEDgyhPwJ6", "JOzdolxYrKL5m4nP"], "flexible": false, "images": [{"as": "ZbNXWavYMw4Voyxb", "caption": "7Kz2cvxtc9CDo7Wk", "height": 62, "imageUrl": "ufp1ygtvnXwUS8Dt", "smallImageUrl": "oLyqBFk5zwG0uOOv", "width": 67}, {"as": "oxM5gsekBp1OAcPL", "caption": "CGSpPsvupLleGVet", "height": 31, "imageUrl": "YsIUPe2ImIpny2Q0", "smallImageUrl": "6rugpgoLDQWiPlet", "width": 24}, {"as": "xjP7Rspbw6shC4pY", "caption": "3cobVTdJoujKVGVN", "height": 11, "imageUrl": "NxJU6bt67sqBLJkP", "smallImageUrl": "DF7T4sIFWCCXbCWm", "width": 80}], "itemIds": ["cTk04mnz8ZlN3CJq", "81QnyKM3818tt4D9", "zVnXcaZQJbS6HRIJ"], "itemQty": {"qgwLHpUnub0fsLNP": 7, "MpdHrhGBeFLtm6v5": 23, "11m1XJzounOG5YNQ": 85}, "itemType": "MEDIA", "listable": false, "localizations": {"o78bZJnxs0FdS5HY": {"description": "kWWHu2VuOYRoUDM7", "localExt": {"Lh4IYOjEedjMkGc8": {}, "sTsHt5TSQj7eMrXX": {}, "VA7aVxt4svess9yD": {}}, "longDescription": "vBbzRuqYrVbMG7nY", "title": "OjtaoEsZhq2HQpz9"}, "bqL6PkKSO3PH7i7H": {"description": "ZTgVcTquzWAyJdLl", "localExt": {"nRmh566mxx0OiAMV": {}, "kn6Cwhg8aQlKrB2x": {}, "KoHr5ThfKHef7E27": {}}, "longDescription": "r317NHIcfhLx8DMA", "title": "KXUvtYZbx1DATaR3"}, "WIr1dOuSgVyjoApv": {"description": "NX4nGeDVkm9bkEr4", "localExt": {"GWPqumuzz9uTVznY": {}, "lODPFqmD0aQG46Xr": {}, "OvRUS2bRqeKjkbyk": {}}, "longDescription": "HCRKvWa5BCS8wL1A", "title": "y5bdmLs6voVsvDyk"}}, "lootBoxConfig": {"rewardCount": 7, "rewards": [{"lootBoxItems": [{"count": 18, "duration": 40, "endDate": "1971-05-30T00:00:00Z", "itemId": "BOJtyMywKESl3O3Q", "itemSku": "3fPh2ydpxXdWCilY", "itemType": "SjpHC6nJ9qdXtsfW"}, {"count": 69, "duration": 27, "endDate": "1975-11-06T00:00:00Z", "itemId": "CD7qT8l9fE3utTXx", "itemSku": "A5RXi8yY5zRc5nLH", "itemType": "YIpkab3dCTzPgBNO"}, {"count": 67, "duration": 58, "endDate": "1987-03-21T00:00:00Z", "itemId": "2F3iJTXh2cBQFLWx", "itemSku": "Gz2ji5Rtn9sH1PLN", "itemType": "Q3C3x7Sn6FuBhH0e"}], "name": "ceuDKavvfz80qDKm", "odds": 0.3210007688703047, "type": "REWARD", "weight": 13}, {"lootBoxItems": [{"count": 51, "duration": 81, "endDate": "1992-08-10T00:00:00Z", "itemId": "qw6T1ELWMyc52dCV", "itemSku": "Ys1DQu6aSiqBPOxQ", "itemType": "h5bkEa8Dyr6Exin2"}, {"count": 77, "duration": 66, "endDate": "1974-09-20T00:00:00Z", "itemId": "wGs2J9xCmAKjNCUe", "itemSku": "Man84lj0Q3avfom4", "itemType": "0bHVGb6msZgrwIyi"}, {"count": 86, "duration": 10, "endDate": "1999-07-15T00:00:00Z", "itemId": "QN0aJm7D2Qx2aYiF", "itemSku": "C7siPe4C6v44xeSd", "itemType": "7kWcwLDfTx8qBEK7"}], "name": "klCYuRDRf9H1ERDx", "odds": 0.1712334983442444, "type": "REWARD_GROUP", "weight": 88}, {"lootBoxItems": [{"count": 6, "duration": 94, "endDate": "1990-03-11T00:00:00Z", "itemId": "bVKBDhdPh42ESbYU", "itemSku": "QxxFf4oOlpMCRQMp", "itemType": "1nJzP64E3x2KHdRD"}, {"count": 79, "duration": 48, "endDate": "1996-09-04T00:00:00Z", "itemId": "spYTccD6oT3kAChh", "itemSku": "0L1zbMxN8A4TcfHY", "itemType": "8MgLcwRftZFlir5h"}, {"count": 18, "duration": 50, "endDate": "1996-10-16T00:00:00Z", "itemId": "tCULIWbaANVqh607", "itemSku": "0p801MYcoRUsqD14", "itemType": "IowPsrfkc4zCqTTb"}], "name": "990Hw7ScSFXSJKK2", "odds": 0.8732716299685934, "type": "PROBABILITY_GROUP", "weight": 93}], "rollFunction": "CUSTOM"}, "maxCount": 5, "maxCountPerUser": 93, "name": "rXkzCbbfQ6FAcHRe", "optionBoxConfig": {"boxItems": [{"count": 31, "duration": 34, "endDate": "1975-08-09T00:00:00Z", "itemId": "5HMbP4HA6xloz9p6", "itemSku": "3EytE8wadmtGQ4UM", "itemType": "0ZTPgpHIvDtMQ2UW"}, {"count": 36, "duration": 57, "endDate": "1976-07-08T00:00:00Z", "itemId": "kPjDmnHjy5jVrlpD", "itemSku": "vvi1KNYIkXqr3OTq", "itemType": "4jzRTm7OfoF8Y8Dp"}, {"count": 86, "duration": 70, "endDate": "1986-02-20T00:00:00Z", "itemId": "mCK7K6hB7ETJHyxR", "itemSku": "yRrtWwcAUWDe3Wb1", "itemType": "XAWuXsm4GonHtk2n"}]}, "purchasable": true, "recurring": {"cycle": "WEEKLY", "fixedFreeDays": 97, "fixedTrialCycles": 74, "graceDays": 4}, "regionData": {"VKflmIJQeBl9d89o": [{"currencyCode": "nFrUTGA0OpaqwRRG", "currencyNamespace": "iqXMgQ2yQuCYbeN7", "currencyType": "VIRTUAL", "discountAmount": 48, "discountExpireAt": "1972-05-23T00:00:00Z", "discountPercentage": 70, "discountPurchaseAt": "1977-01-20T00:00:00Z", "expireAt": "1987-12-09T00:00:00Z", "price": 92, "purchaseAt": "1984-04-22T00:00:00Z", "trialPrice": 99}, {"currencyCode": "FLPuQGrXy1rFvoQ3", "currencyNamespace": "McYsrLAr0FNOtHDu", "currencyType": "VIRTUAL", "discountAmount": 7, "discountExpireAt": "1996-09-20T00:00:00Z", "discountPercentage": 66, "discountPurchaseAt": "1988-07-17T00:00:00Z", "expireAt": "1997-07-11T00:00:00Z", "price": 68, "purchaseAt": "1995-09-13T00:00:00Z", "trialPrice": 79}, {"currencyCode": "dmbkSROhVcm4Dzs7", "currencyNamespace": "C5gQNyUs58czqUqM", "currencyType": "VIRTUAL", "discountAmount": 62, "discountExpireAt": "1989-10-11T00:00:00Z", "discountPercentage": 26, "discountPurchaseAt": "1975-05-27T00:00:00Z", "expireAt": "1987-09-06T00:00:00Z", "price": 76, "purchaseAt": "1988-07-10T00:00:00Z", "trialPrice": 23}], "dzwyk8cAmaKQwOjN": [{"currencyCode": "8HO8AjxKhK3pflkC", "currencyNamespace": "1nM7xHcP7szjzNRN", "currencyType": "REAL", "discountAmount": 11, "discountExpireAt": "1974-09-27T00:00:00Z", "discountPercentage": 14, "discountPurchaseAt": "1985-08-09T00:00:00Z", "expireAt": "1977-08-16T00:00:00Z", "price": 93, "purchaseAt": "1992-01-17T00:00:00Z", "trialPrice": 55}, {"currencyCode": "FXp0zBPTZCFeMwd6", "currencyNamespace": "vjUQjCBVn06rsR30", "currencyType": "REAL", "discountAmount": 54, "discountExpireAt": "1990-09-18T00:00:00Z", "discountPercentage": 91, "discountPurchaseAt": "1975-12-28T00:00:00Z", "expireAt": "1994-07-11T00:00:00Z", "price": 43, "purchaseAt": "1995-04-28T00:00:00Z", "trialPrice": 78}, {"currencyCode": "5mzTfGvfWxNWOkJN", "currencyNamespace": "4eA4SMOlAMuoTB8O", "currencyType": "REAL", "discountAmount": 35, "discountExpireAt": "1974-11-16T00:00:00Z", "discountPercentage": 38, "discountPurchaseAt": "1984-06-04T00:00:00Z", "expireAt": "1977-09-28T00:00:00Z", "price": 1, "purchaseAt": "1983-06-03T00:00:00Z", "trialPrice": 97}], "qc9w86cSYaJ9LUDv": [{"currencyCode": "OXUNpuat7XkdPfJz", "currencyNamespace": "7B07AoXFVXRU9Yrg", "currencyType": "VIRTUAL", "discountAmount": 86, "discountExpireAt": "1977-11-04T00:00:00Z", "discountPercentage": 29, "discountPurchaseAt": "1997-01-03T00:00:00Z", "expireAt": "1978-05-28T00:00:00Z", "price": 13, "purchaseAt": "1983-02-01T00:00:00Z", "trialPrice": 49}, {"currencyCode": "K8BDGps5NiyHTWoi", "currencyNamespace": "GFd8HbZo0dlbefAU", "currencyType": "REAL", "discountAmount": 79, "discountExpireAt": "1981-03-16T00:00:00Z", "discountPercentage": 85, "discountPurchaseAt": "1999-02-05T00:00:00Z", "expireAt": "1996-03-21T00:00:00Z", "price": 9, "purchaseAt": "1973-01-21T00:00:00Z", "trialPrice": 9}, {"currencyCode": "UbZVnU7JoNJP4q1k", "currencyNamespace": "pUgOExb8vZpPrVca", "currencyType": "VIRTUAL", "discountAmount": 80, "discountExpireAt": "1992-09-29T00:00:00Z", "discountPercentage": 92, "discountPurchaseAt": "1995-01-08T00:00:00Z", "expireAt": "1976-12-09T00:00:00Z", "price": 99, "purchaseAt": "1974-03-24T00:00:00Z", "trialPrice": 21}]}, "saleConfig": {"currencyCode": "YJxKPNGDUfkRxUrt", "price": 70}, "seasonType": "PASS", "sectionExclusive": false, "sellable": false, "sku": "6LYhXYB4GaZ0r4Hu", "stackable": false, "status": "ACTIVE", "tags": ["ap7CYpGkKX5JtaSx", "QOkfpMsn5cVEyWr4", "wJqEK0cJlaFjMSXC"], "targetCurrencyCode": "RJSsxaAviXDryagM", "targetNamespace": "dLt9Dof74gl6XBwj", "thumbnailUrl": "zw3QaL4wsLMAx4DF", "useCount": 29}' \
    > test.out 2>&1
eval_tap $? 103 'CreateItem' test.out

#- 104 GetItemByAppId
samples/cli/sample-apps Platform getItemByAppId \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'qULOmxCNN6RMGPeN' \
    --appId 'hdwZrgChTzwASKNT' \
    > test.out 2>&1
eval_tap $? 104 'GetItemByAppId' test.out

#- 105 QueryItems
samples/cli/sample-apps Platform queryItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --appType 'GAME' \
    --availableDate 'Ktmc76W5wssmXlin' \
    --baseAppId '5Idr6M3zRcysKXYi' \
    --categoryPath 'MNdEeEswxlyqG8Rl' \
    --features 'qQxynDBBzvHqVrPM' \
    --includeSubCategoryItem 'false' \
    --itemType 'SUBSCRIPTION' \
    --limit '60' \
    --offset '78' \
    --region 'zXYv20XcVUGhaJ5g' \
    --sortBy '["createdAt", "updatedAt", "name:desc"]' \
    --storeId 'xYHz8Qxhzvghgjvd' \
    --tags 'u0KvuOIvOC9sus2d' \
    --targetNamespace 'gVxyd3w33MtpssQj' \
    > test.out 2>&1
eval_tap $? 105 'QueryItems' test.out

#- 106 ListBasicItemsByFeatures
samples/cli/sample-apps Platform listBasicItemsByFeatures \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --features '["DrzidjfRIBUKlIeU", "FBbRPoKZvLhRj9ZE", "TpYEQcygKunCnP9P"]' \
    > test.out 2>&1
eval_tap $? 106 'ListBasicItemsByFeatures' test.out

#- 107 GetItems
samples/cli/sample-apps Platform getItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --storeId 'vq7GZeIp99pNPwmb' \
    --itemIds '6odkKBpK49230cxh' \
    > test.out 2>&1
eval_tap $? 107 'GetItems' test.out

#- 108 GetItemBySku
samples/cli/sample-apps Platform getItemBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'h5LRgqena9NJ8Fgh' \
    --sku 'juDmOFkif4uNgnZm' \
    > test.out 2>&1
eval_tap $? 108 'GetItemBySku' test.out

#- 109 GetLocaleItemBySku
samples/cli/sample-apps Platform getLocaleItemBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --language 'Zj8NLNwTzUIY1va6' \
    --populateBundle 'true' \
    --region 'a0qmkMcL0De8KciT' \
    --storeId 'uaLcKbeItYAgnbEk' \
    --sku '6NJHLj6HkrC0eWRW' \
    > test.out 2>&1
eval_tap $? 109 'GetLocaleItemBySku' test.out

#- 110 GetEstimatedPrice
samples/cli/sample-apps Platform getEstimatedPrice \
    --namespace $AB_NAMESPACE \
    --region '9N11IkSPd5Tedkk2' \
    --storeId 'kOetCBbOBqIBRXPp' \
    --itemIds '9zzcN12NCVBLuanK' \
    --userId 'yPLxZrXQtgtwA8zU' \
    > test.out 2>&1
eval_tap $? 110 'GetEstimatedPrice' test.out

#- 111 GetItemIdBySku
samples/cli/sample-apps Platform getItemIdBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'BcwWy69v5OA0GlQx' \
    --sku 'nBezWZkN94vpoEYx' \
    > test.out 2>&1
eval_tap $? 111 'GetItemIdBySku' test.out

#- 112 GetBulkItemIdBySkus
samples/cli/sample-apps Platform getBulkItemIdBySkus \
    --namespace $AB_NAMESPACE \
    --sku '["Y8CLuhETEsZQ73QG", "4aHejdA75sh0MOz4", "bnZgAXG0xble3QJQ"]' \
    --storeId 'cNyz2KCqKBe56SgQ' \
    > test.out 2>&1
eval_tap $? 112 'GetBulkItemIdBySkus' test.out

#- 113 BulkGetLocaleItems
samples/cli/sample-apps Platform bulkGetLocaleItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --language '2KE6OrgBRQ4tDkOO' \
    --region 'KreiLuEKNZvczMaI' \
    --storeId 'ryljs3hPMCMuuDiY' \
    --itemIds 'hQEsg6OMZdcuU0FH' \
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
    --userId 'HepNALDYt36kScXB' \
    --body '{"itemIds": ["rIqN2v07kq8a4wN5", "258CqeNQSgcheff7", "pavNlapA2EpgTqKd"]}' \
    > test.out 2>&1
eval_tap $? 115 'ValidateItemPurchaseCondition' test.out

#- 116 BulkUpdateRegionData
samples/cli/sample-apps Platform bulkUpdateRegionData \
    --namespace $AB_NAMESPACE \
    --storeId '9O38Z8PH10rRAVbq' \
    --body '{"changes": [{"itemIdentities": ["VaDkvsVhY1CzXxk8", "3LkGc9V2p3wVST1o", "p1BxdqXaCtGq8NjS"], "itemIdentityType": "ITEM_ID", "regionData": {"V04p2ITjRLtRt0km": [{"currencyCode": "3M1duNnvwc2PYawu", "currencyNamespace": "SLO4jOm6l44MvzOd", "currencyType": "VIRTUAL", "discountAmount": 94, "discountExpireAt": "1981-07-23T00:00:00Z", "discountPercentage": 64, "discountPurchaseAt": "1994-09-16T00:00:00Z", "discountedPrice": 94, "expireAt": "1990-07-21T00:00:00Z", "price": 0, "purchaseAt": "1997-01-20T00:00:00Z", "trialPrice": 90}, {"currencyCode": "8XLud2nIrcj5jaDp", "currencyNamespace": "m4aH3hXHdEW7ywih", "currencyType": "VIRTUAL", "discountAmount": 83, "discountExpireAt": "1985-02-14T00:00:00Z", "discountPercentage": 62, "discountPurchaseAt": "1986-09-04T00:00:00Z", "discountedPrice": 56, "expireAt": "1982-01-11T00:00:00Z", "price": 93, "purchaseAt": "1978-02-09T00:00:00Z", "trialPrice": 99}, {"currencyCode": "N4kY5IMIrgUWmzeI", "currencyNamespace": "B4yRJqpAu4csMpUe", "currencyType": "VIRTUAL", "discountAmount": 24, "discountExpireAt": "1980-10-24T00:00:00Z", "discountPercentage": 28, "discountPurchaseAt": "1994-09-13T00:00:00Z", "discountedPrice": 33, "expireAt": "1976-05-15T00:00:00Z", "price": 41, "purchaseAt": "1978-10-13T00:00:00Z", "trialPrice": 34}], "15u83mkcY9QS82XE": [{"currencyCode": "8lzTGeeWvfdBQTzm", "currencyNamespace": "hCZPPB4IYLm7taed", "currencyType": "REAL", "discountAmount": 5, "discountExpireAt": "1999-09-28T00:00:00Z", "discountPercentage": 22, "discountPurchaseAt": "1997-12-29T00:00:00Z", "discountedPrice": 69, "expireAt": "1976-03-12T00:00:00Z", "price": 30, "purchaseAt": "1991-06-20T00:00:00Z", "trialPrice": 54}, {"currencyCode": "Qk8O4vZWZBquustv", "currencyNamespace": "ebtLowkyXTYKDUlH", "currencyType": "REAL", "discountAmount": 29, "discountExpireAt": "1978-05-02T00:00:00Z", "discountPercentage": 13, "discountPurchaseAt": "1992-11-17T00:00:00Z", "discountedPrice": 29, "expireAt": "1997-06-23T00:00:00Z", "price": 87, "purchaseAt": "1998-03-07T00:00:00Z", "trialPrice": 9}, {"currencyCode": "er1ZecL4fKApNm3U", "currencyNamespace": "8dxQODH9bIgNdpOk", "currencyType": "REAL", "discountAmount": 98, "discountExpireAt": "1988-10-23T00:00:00Z", "discountPercentage": 94, "discountPurchaseAt": "1978-12-16T00:00:00Z", "discountedPrice": 21, "expireAt": "1988-12-27T00:00:00Z", "price": 58, "purchaseAt": "1975-10-10T00:00:00Z", "trialPrice": 9}], "APBdMnlUKTmE9MJM": [{"currencyCode": "82hizWG1sKfJVZw3", "currencyNamespace": "h9kpDjwhH42RE26R", "currencyType": "REAL", "discountAmount": 59, "discountExpireAt": "1998-09-08T00:00:00Z", "discountPercentage": 4, "discountPurchaseAt": "1991-05-25T00:00:00Z", "discountedPrice": 61, "expireAt": "1996-02-14T00:00:00Z", "price": 82, "purchaseAt": "1982-12-06T00:00:00Z", "trialPrice": 28}, {"currencyCode": "z4lQVPWwFrjIWDTd", "currencyNamespace": "I21K5PYWSegF7EXW", "currencyType": "REAL", "discountAmount": 53, "discountExpireAt": "1983-08-01T00:00:00Z", "discountPercentage": 76, "discountPurchaseAt": "1975-05-21T00:00:00Z", "discountedPrice": 90, "expireAt": "1979-04-27T00:00:00Z", "price": 48, "purchaseAt": "1989-06-06T00:00:00Z", "trialPrice": 26}, {"currencyCode": "kVVHLoac22N3DmWg", "currencyNamespace": "b96Ynrq3c1yIZ2EG", "currencyType": "REAL", "discountAmount": 67, "discountExpireAt": "1983-11-05T00:00:00Z", "discountPercentage": 6, "discountPurchaseAt": "1972-12-14T00:00:00Z", "discountedPrice": 15, "expireAt": "1978-09-15T00:00:00Z", "price": 98, "purchaseAt": "1980-01-21T00:00:00Z", "trialPrice": 15}]}}, {"itemIdentities": ["DMejeSYkzhuHhdgq", "lNLbxNniTwQSoxal", "UWsz25ycSkBm1MxM"], "itemIdentityType": "ITEM_ID", "regionData": {"WO0YWs4SGmhCMjnV": [{"currencyCode": "5AdlOTXxpKMx3LmL", "currencyNamespace": "Rugc7oF2kLxOYuSV", "currencyType": "REAL", "discountAmount": 23, "discountExpireAt": "1995-03-18T00:00:00Z", "discountPercentage": 40, "discountPurchaseAt": "1972-07-17T00:00:00Z", "discountedPrice": 46, "expireAt": "1998-10-19T00:00:00Z", "price": 94, "purchaseAt": "1978-06-07T00:00:00Z", "trialPrice": 56}, {"currencyCode": "HDJ9mysRp3xNP8Nb", "currencyNamespace": "He6tnxoab8q4i9wo", "currencyType": "VIRTUAL", "discountAmount": 84, "discountExpireAt": "1986-01-01T00:00:00Z", "discountPercentage": 29, "discountPurchaseAt": "1980-08-05T00:00:00Z", "discountedPrice": 8, "expireAt": "1982-07-26T00:00:00Z", "price": 24, "purchaseAt": "1987-05-19T00:00:00Z", "trialPrice": 56}, {"currencyCode": "IKzXdJLhW6TAXVzv", "currencyNamespace": "otFhw6suS9d1w5gV", "currencyType": "REAL", "discountAmount": 18, "discountExpireAt": "1992-01-23T00:00:00Z", "discountPercentage": 80, "discountPurchaseAt": "1986-06-14T00:00:00Z", "discountedPrice": 8, "expireAt": "1999-04-10T00:00:00Z", "price": 86, "purchaseAt": "1993-11-30T00:00:00Z", "trialPrice": 56}], "rJTps0cUFhWUAVc1": [{"currencyCode": "QrRGSUXTWvvHIoOm", "currencyNamespace": "XDKLDA4YWBN3LpAh", "currencyType": "VIRTUAL", "discountAmount": 83, "discountExpireAt": "1982-01-09T00:00:00Z", "discountPercentage": 48, "discountPurchaseAt": "1994-09-24T00:00:00Z", "discountedPrice": 79, "expireAt": "1972-08-01T00:00:00Z", "price": 59, "purchaseAt": "1986-10-31T00:00:00Z", "trialPrice": 45}, {"currencyCode": "Vod33qQz7QvJzQ3j", "currencyNamespace": "4aZR0xGnBTZ6BsL9", "currencyType": "REAL", "discountAmount": 32, "discountExpireAt": "1980-12-07T00:00:00Z", "discountPercentage": 1, "discountPurchaseAt": "1971-07-18T00:00:00Z", "discountedPrice": 67, "expireAt": "1986-08-05T00:00:00Z", "price": 18, "purchaseAt": "1989-04-22T00:00:00Z", "trialPrice": 16}, {"currencyCode": "HIHXgoFFddugEiJk", "currencyNamespace": "LMxHTLbGW0jRlVsW", "currencyType": "VIRTUAL", "discountAmount": 63, "discountExpireAt": "1987-03-01T00:00:00Z", "discountPercentage": 73, "discountPurchaseAt": "1998-03-23T00:00:00Z", "discountedPrice": 71, "expireAt": "1990-03-11T00:00:00Z", "price": 25, "purchaseAt": "1971-01-24T00:00:00Z", "trialPrice": 88}], "RrQE7Yxa2Eg8AqMQ": [{"currencyCode": "geY63SGEv7y7owZ1", "currencyNamespace": "3ThliQaPKcOyGa4Q", "currencyType": "VIRTUAL", "discountAmount": 37, "discountExpireAt": "1977-04-26T00:00:00Z", "discountPercentage": 32, "discountPurchaseAt": "1984-02-27T00:00:00Z", "discountedPrice": 76, "expireAt": "1993-11-20T00:00:00Z", "price": 10, "purchaseAt": "1972-02-21T00:00:00Z", "trialPrice": 64}, {"currencyCode": "jR4RVKvOHdC7h5de", "currencyNamespace": "GDbfko27Ex5a8OQf", "currencyType": "VIRTUAL", "discountAmount": 67, "discountExpireAt": "1978-12-17T00:00:00Z", "discountPercentage": 17, "discountPurchaseAt": "1979-11-13T00:00:00Z", "discountedPrice": 9, "expireAt": "1993-01-29T00:00:00Z", "price": 31, "purchaseAt": "1999-05-10T00:00:00Z", "trialPrice": 71}, {"currencyCode": "uinGiHAZ3zTO7sh9", "currencyNamespace": "k8pfuawMtoO3EKnN", "currencyType": "REAL", "discountAmount": 9, "discountExpireAt": "1984-01-12T00:00:00Z", "discountPercentage": 31, "discountPurchaseAt": "1984-04-21T00:00:00Z", "discountedPrice": 44, "expireAt": "1975-12-27T00:00:00Z", "price": 5, "purchaseAt": "1994-07-21T00:00:00Z", "trialPrice": 4}]}}, {"itemIdentities": ["92L1zwQHm0wnrrUE", "RLWpIQAKlAMderPm", "bFZ6orRoIK8ytNdM"], "itemIdentityType": "ITEM_SKU", "regionData": {"hsgyJlzem0P9sVKB": [{"currencyCode": "AvHCgSpIsudJfbOJ", "currencyNamespace": "EUXCo3c3D7VgnsLO", "currencyType": "VIRTUAL", "discountAmount": 47, "discountExpireAt": "1973-08-14T00:00:00Z", "discountPercentage": 86, "discountPurchaseAt": "1993-12-01T00:00:00Z", "discountedPrice": 71, "expireAt": "1973-03-05T00:00:00Z", "price": 23, "purchaseAt": "1987-08-03T00:00:00Z", "trialPrice": 42}, {"currencyCode": "iiam8R25H7nwqRyO", "currencyNamespace": "F40pycut33hdifEf", "currencyType": "VIRTUAL", "discountAmount": 98, "discountExpireAt": "1972-08-04T00:00:00Z", "discountPercentage": 46, "discountPurchaseAt": "1988-05-04T00:00:00Z", "discountedPrice": 21, "expireAt": "1984-02-27T00:00:00Z", "price": 6, "purchaseAt": "1988-12-13T00:00:00Z", "trialPrice": 13}, {"currencyCode": "ecND2mxYwrB2egyL", "currencyNamespace": "prBKM0mCiZoB7qcP", "currencyType": "REAL", "discountAmount": 30, "discountExpireAt": "1997-04-27T00:00:00Z", "discountPercentage": 29, "discountPurchaseAt": "1979-10-11T00:00:00Z", "discountedPrice": 24, "expireAt": "1972-11-01T00:00:00Z", "price": 6, "purchaseAt": "1990-10-08T00:00:00Z", "trialPrice": 27}], "TkbV6rU8P78Gf1ct": [{"currencyCode": "fwlelQqdRuW4Rabf", "currencyNamespace": "Px4ThpTRGskfS2pG", "currencyType": "REAL", "discountAmount": 46, "discountExpireAt": "1976-05-13T00:00:00Z", "discountPercentage": 8, "discountPurchaseAt": "1992-11-07T00:00:00Z", "discountedPrice": 55, "expireAt": "1980-08-16T00:00:00Z", "price": 55, "purchaseAt": "1972-07-23T00:00:00Z", "trialPrice": 87}, {"currencyCode": "rOQspH42JnSPpt4N", "currencyNamespace": "lrh17i4tRp0fDnHe", "currencyType": "REAL", "discountAmount": 96, "discountExpireAt": "1991-07-05T00:00:00Z", "discountPercentage": 88, "discountPurchaseAt": "1984-11-20T00:00:00Z", "discountedPrice": 40, "expireAt": "1992-04-20T00:00:00Z", "price": 44, "purchaseAt": "1987-09-08T00:00:00Z", "trialPrice": 44}, {"currencyCode": "qBG2DSYJ4ncGbqwU", "currencyNamespace": "DpIx6qzedUhZv5TC", "currencyType": "VIRTUAL", "discountAmount": 84, "discountExpireAt": "1993-08-01T00:00:00Z", "discountPercentage": 24, "discountPurchaseAt": "1983-12-06T00:00:00Z", "discountedPrice": 68, "expireAt": "1979-05-05T00:00:00Z", "price": 85, "purchaseAt": "1998-12-11T00:00:00Z", "trialPrice": 49}], "WnN68vCaaCS10ZSv": [{"currencyCode": "1NWoz5hWuy6hspOF", "currencyNamespace": "bszLLn2mBNmYvCp0", "currencyType": "REAL", "discountAmount": 32, "discountExpireAt": "1990-02-10T00:00:00Z", "discountPercentage": 68, "discountPurchaseAt": "1974-06-26T00:00:00Z", "discountedPrice": 21, "expireAt": "1973-05-13T00:00:00Z", "price": 82, "purchaseAt": "1978-12-23T00:00:00Z", "trialPrice": 43}, {"currencyCode": "0iRv8KuUe2RVOvdG", "currencyNamespace": "iOUnGJoO8gy4dNxw", "currencyType": "VIRTUAL", "discountAmount": 20, "discountExpireAt": "1976-01-12T00:00:00Z", "discountPercentage": 81, "discountPurchaseAt": "1994-07-27T00:00:00Z", "discountedPrice": 36, "expireAt": "1972-03-12T00:00:00Z", "price": 98, "purchaseAt": "1971-10-07T00:00:00Z", "trialPrice": 79}, {"currencyCode": "9EBZVyi5w2XMvvTC", "currencyNamespace": "ZTrm63m6LC5BDK3I", "currencyType": "REAL", "discountAmount": 67, "discountExpireAt": "1971-01-03T00:00:00Z", "discountPercentage": 23, "discountPurchaseAt": "1996-02-11T00:00:00Z", "discountedPrice": 78, "expireAt": "1996-08-17T00:00:00Z", "price": 50, "purchaseAt": "1995-04-12T00:00:00Z", "trialPrice": 72}]}}]}' \
    > test.out 2>&1
eval_tap $? 116 'BulkUpdateRegionData' test.out

#- 117 SearchItems
samples/cli/sample-apps Platform searchItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --itemType 'SUBSCRIPTION' \
    --limit '44' \
    --offset '100' \
    --sortBy 'CryKZmMl8bcfIFRP' \
    --storeId '9hPmn0opfU69CmYF' \
    --keyword 'yMkBJ9axe11Z15nb' \
    --language 'zOxU6gUB6WlP1Eyg' \
    > test.out 2>&1
eval_tap $? 117 'SearchItems' test.out

#- 118 QueryUncategorizedItems
samples/cli/sample-apps Platform queryUncategorizedItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --limit '8' \
    --offset '10' \
    --sortBy '["name", "createdAt", "createdAt:asc"]' \
    --storeId '5jNXPlU9A78QfjWQ' \
    > test.out 2>&1
eval_tap $? 118 'QueryUncategorizedItems' test.out

#- 119 GetItem
samples/cli/sample-apps Platform getItem \
    --itemId '9HfW1eIN9hh7plbh' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'FMnuaU25wVbH7Lue' \
    > test.out 2>&1
eval_tap $? 119 'GetItem' test.out

#- 120 UpdateItem
samples/cli/sample-apps Platform updateItem \
    --itemId 'SpqxibttgslQPdCK' \
    --namespace $AB_NAMESPACE \
    --storeId 'xwHkF4EYrT967opt' \
    --body '{"appId": "M2F8s1bCsjNgWRkH", "appType": "DEMO", "baseAppId": "aXP93eWnswMge62G", "boothName": "yUkWnrhDvvD4Vi45", "categoryPath": "TSJ1cHATvsZBjHdl", "clazz": "rcd1FjzV0wACRxwF", "displayOrder": 3, "entitlementType": "CONSUMABLE", "ext": {"JXrZYKVY6B5G7r8g": {}, "YbLHAPHpOO9RSU0c": {}, "3Qr4fJ8ZdF3YJmEn": {}}, "features": ["byAi8RfppfT4iUG5", "KQSYOHbBvxVppuod", "p8xMZtkr7DmXPxLq"], "flexible": false, "images": [{"as": "CwdneP2daDIOEhXs", "caption": "1UhY7C02vDHtO8Xz", "height": 18, "imageUrl": "id8P5YfrtDZWzUZF", "smallImageUrl": "kClppCRQO768E22t", "width": 47}, {"as": "zvM50rWlzmWcuT71", "caption": "7d2BEWJ2MtUBFj3Q", "height": 37, "imageUrl": "AlaJ71FxXRovPWO8", "smallImageUrl": "fw4Rs8fYTIBdP1mW", "width": 65}, {"as": "yS6Ol8CJcCO3Zb33", "caption": "qxvlz8DvdU6G4NNp", "height": 68, "imageUrl": "gwNKcORROjv6awem", "smallImageUrl": "Q3NRtbsZyRaAAvfD", "width": 96}], "itemIds": ["BrBSSmLhDy5qsTu4", "1LYY1Zi9cM3koXLc", "XDivLNDIynuPGmBi"], "itemQty": {"WvAUFK0jiTCLALDa": 81, "hU8NDbDFU9szIPJX": 29, "aSSscHAJYfjSqJA3": 56}, "itemType": "LOOTBOX", "listable": false, "localizations": {"V6wvcgNx11kWjsPz": {"description": "sEEqnNmu68cl8RAs", "localExt": {"Glc45FmwwpQTCVNc": {}, "lIReYLqIPDsPaLz1": {}, "0SlA81IuzuYEzrpV": {}}, "longDescription": "cTu0rmWccBa1BjUA", "title": "CpS1mg4lhEHAz7fQ"}, "KcXmsUhkGrh253gg": {"description": "oX4PxjZL2yYTySkJ", "localExt": {"hy5bwAMY22BOypdg": {}, "RLijQrjoLC0jVCJA": {}, "tCDmOKEnCJli4MyB": {}}, "longDescription": "MUwVVvdkYZqYsjmK", "title": "6aHAj0GHTqUZt9Uz"}, "mWBrToJOi3qZzx4O": {"description": "iT2Fx22Sg2EDH1NQ", "localExt": {"QvFjZOks8BkzFfKW": {}, "TfLHvyUfArC6kjx7": {}, "dOeUXdq5SVRZApeJ": {}}, "longDescription": "wLo4Dgsi94WxOxWf", "title": "YoNu6EhHny6O0yuo"}}, "lootBoxConfig": {"rewardCount": 2, "rewards": [{"lootBoxItems": [{"count": 17, "duration": 54, "endDate": "1996-04-22T00:00:00Z", "itemId": "W7LHSmW3TKFk1ftd", "itemSku": "CbGvsOVumfp53yEb", "itemType": "pL96h9aEiX45MT7n"}, {"count": 18, "duration": 49, "endDate": "1994-06-25T00:00:00Z", "itemId": "V0gqGMVls3hIDnWv", "itemSku": "OgODwrXMVumw5xen", "itemType": "nlE5vG9TzBj0zGaI"}, {"count": 69, "duration": 6, "endDate": "1984-07-21T00:00:00Z", "itemId": "zG5QvX1ZA74VzBK1", "itemSku": "o8Tj9m3t9UEahPwk", "itemType": "p8mhNcTZxFBZTP7g"}], "name": "LQcwog06wWYSZHhl", "odds": 0.34606819791698995, "type": "PROBABILITY_GROUP", "weight": 25}, {"lootBoxItems": [{"count": 49, "duration": 94, "endDate": "1977-04-29T00:00:00Z", "itemId": "gYj3CdQrmDxShmCr", "itemSku": "ThxMjVQ6FqvQS9vK", "itemType": "KruwYheuM00xXWUE"}, {"count": 57, "duration": 11, "endDate": "1993-12-13T00:00:00Z", "itemId": "EW8LHMF1Sx0w6whn", "itemSku": "fOf90VpL7XixebQ9", "itemType": "Zw1XFhdNEVTtSPh6"}, {"count": 6, "duration": 100, "endDate": "1983-01-05T00:00:00Z", "itemId": "n9duEKLFyUO65yu9", "itemSku": "gpGThaJ8TInL6YHI", "itemType": "sUuHXjpvXeZoVXay"}], "name": "YjDuv6pIA9pH9ou4", "odds": 0.7494761762638646, "type": "PROBABILITY_GROUP", "weight": 5}, {"lootBoxItems": [{"count": 0, "duration": 41, "endDate": "1980-10-27T00:00:00Z", "itemId": "6dsIdhWJ6MrAduOX", "itemSku": "UvfLU8vmphV925iF", "itemType": "k8UjKO1qaJH0MJpx"}, {"count": 68, "duration": 4, "endDate": "1992-10-13T00:00:00Z", "itemId": "i91rNLNwWWuMiKsa", "itemSku": "AU76rArAzx7BIQLl", "itemType": "gGK3Hiduno31U42J"}, {"count": 52, "duration": 5, "endDate": "1980-09-09T00:00:00Z", "itemId": "TDBwAIKv2EcdWkOE", "itemSku": "KDIHeplQwm83ouWT", "itemType": "fdgPU4tAZwEzGrra"}], "name": "U39U42ErgOO3QyEB", "odds": 0.37228994652944736, "type": "PROBABILITY_GROUP", "weight": 88}], "rollFunction": "DEFAULT"}, "maxCount": 80, "maxCountPerUser": 82, "name": "kX8XiSey8wWQvUPa", "optionBoxConfig": {"boxItems": [{"count": 17, "duration": 26, "endDate": "1984-02-08T00:00:00Z", "itemId": "QsEz2jkjrdZ57rUo", "itemSku": "ZaTTWHNIJIpS4dXM", "itemType": "lrE6VhsnE7pqNzGO"}, {"count": 27, "duration": 18, "endDate": "1991-07-27T00:00:00Z", "itemId": "SrSXaIEw2D9Q6JyO", "itemSku": "uEXW3U25HdoGubAD", "itemType": "WZDKL3gK9o0ii7cN"}, {"count": 97, "duration": 39, "endDate": "1993-11-22T00:00:00Z", "itemId": "Zzup2cAETPVoHiRk", "itemSku": "RKYDwC5pyhsmVltB", "itemType": "bzaWhefIzvEpZpBo"}]}, "purchasable": true, "recurring": {"cycle": "QUARTERLY", "fixedFreeDays": 80, "fixedTrialCycles": 66, "graceDays": 51}, "regionData": {"487KllhMHCiVf42I": [{"currencyCode": "tn1PJo0tZERv0sdF", "currencyNamespace": "xIKceQ8sgJFC6ptf", "currencyType": "REAL", "discountAmount": 28, "discountExpireAt": "1977-07-21T00:00:00Z", "discountPercentage": 46, "discountPurchaseAt": "1994-03-10T00:00:00Z", "expireAt": "1984-11-23T00:00:00Z", "price": 6, "purchaseAt": "1989-09-15T00:00:00Z", "trialPrice": 96}, {"currencyCode": "YiROFppy7tGbBPZl", "currencyNamespace": "TMvQxgMlBdhzAS7v", "currencyType": "REAL", "discountAmount": 86, "discountExpireAt": "1982-01-11T00:00:00Z", "discountPercentage": 91, "discountPurchaseAt": "1996-08-21T00:00:00Z", "expireAt": "1979-12-07T00:00:00Z", "price": 96, "purchaseAt": "1983-08-20T00:00:00Z", "trialPrice": 7}, {"currencyCode": "FVeW7NxhJsfJwTgP", "currencyNamespace": "GypI1pCB91XarSUc", "currencyType": "VIRTUAL", "discountAmount": 54, "discountExpireAt": "1995-06-11T00:00:00Z", "discountPercentage": 17, "discountPurchaseAt": "1997-08-29T00:00:00Z", "expireAt": "1974-03-23T00:00:00Z", "price": 48, "purchaseAt": "1998-07-05T00:00:00Z", "trialPrice": 0}], "YzaeBfwNsmwYRkwt": [{"currencyCode": "uyIOiiwa6HVBEooE", "currencyNamespace": "3utiegAAfMI7i5Vw", "currencyType": "VIRTUAL", "discountAmount": 18, "discountExpireAt": "1981-06-09T00:00:00Z", "discountPercentage": 7, "discountPurchaseAt": "1980-03-25T00:00:00Z", "expireAt": "1971-09-16T00:00:00Z", "price": 41, "purchaseAt": "1981-04-10T00:00:00Z", "trialPrice": 98}, {"currencyCode": "v73Eu2IQ2VdL6CBI", "currencyNamespace": "rW0TNYweslLHCFDp", "currencyType": "VIRTUAL", "discountAmount": 39, "discountExpireAt": "1988-01-11T00:00:00Z", "discountPercentage": 1, "discountPurchaseAt": "1989-01-22T00:00:00Z", "expireAt": "1974-03-11T00:00:00Z", "price": 66, "purchaseAt": "1971-08-29T00:00:00Z", "trialPrice": 53}, {"currencyCode": "ZIMYR5Q6iXzeKGSM", "currencyNamespace": "K2lvOIiJsp1taX4p", "currencyType": "REAL", "discountAmount": 6, "discountExpireAt": "1985-01-02T00:00:00Z", "discountPercentage": 28, "discountPurchaseAt": "1981-11-22T00:00:00Z", "expireAt": "1977-09-18T00:00:00Z", "price": 49, "purchaseAt": "1973-10-01T00:00:00Z", "trialPrice": 54}], "l67gH0rPzsaJt2z3": [{"currencyCode": "NOHpbh0bmep6CKe5", "currencyNamespace": "14f3Eiex16GWejYf", "currencyType": "REAL", "discountAmount": 13, "discountExpireAt": "1987-05-17T00:00:00Z", "discountPercentage": 78, "discountPurchaseAt": "1998-01-12T00:00:00Z", "expireAt": "1997-06-20T00:00:00Z", "price": 54, "purchaseAt": "1990-05-04T00:00:00Z", "trialPrice": 60}, {"currencyCode": "xZLf3ccaToQ3Seui", "currencyNamespace": "U7G26tDMG4WZ7RNf", "currencyType": "REAL", "discountAmount": 8, "discountExpireAt": "1973-02-06T00:00:00Z", "discountPercentage": 56, "discountPurchaseAt": "1997-12-10T00:00:00Z", "expireAt": "1992-03-04T00:00:00Z", "price": 22, "purchaseAt": "1999-01-27T00:00:00Z", "trialPrice": 95}, {"currencyCode": "82SRx1jcsXV8aib7", "currencyNamespace": "P9YmwGr9DPHSS8OH", "currencyType": "REAL", "discountAmount": 20, "discountExpireAt": "1991-02-22T00:00:00Z", "discountPercentage": 38, "discountPurchaseAt": "1978-04-16T00:00:00Z", "expireAt": "1974-01-03T00:00:00Z", "price": 66, "purchaseAt": "1995-02-14T00:00:00Z", "trialPrice": 66}]}, "saleConfig": {"currencyCode": "IH1EJodP3hLwf9VT", "price": 64}, "seasonType": "PASS", "sectionExclusive": false, "sellable": true, "sku": "SUJ5gnQWFBbspvFU", "stackable": false, "status": "INACTIVE", "tags": ["y9P6RnxIHYrA6v0o", "W23ge5aq0nXkE9dr", "Lj9MbEAZoNBj8YwJ"], "targetCurrencyCode": "wTbpxtctfKT7Ptrj", "targetNamespace": "NuQQmk24Kv9tUE14", "thumbnailUrl": "Uiny0aFuZTFgqvnb", "useCount": 26}' \
    > test.out 2>&1
eval_tap $? 120 'UpdateItem' test.out

#- 121 DeleteItem
samples/cli/sample-apps Platform deleteItem \
    --itemId 'CG8OyOeuKeeqaLSc' \
    --namespace $AB_NAMESPACE \
    --force 'false' \
    --storeId 'cuDfyEpXN0WHIBw7' \
    > test.out 2>&1
eval_tap $? 121 'DeleteItem' test.out

#- 122 AcquireItem
samples/cli/sample-apps Platform acquireItem \
    --itemId 'SmiknXoA6scbDkYT' \
    --namespace $AB_NAMESPACE \
    --body '{"count": 9, "orderNo": "PZ1KDFscFLRN7ZVC"}' \
    > test.out 2>&1
eval_tap $? 122 'AcquireItem' test.out

#- 123 GetApp
samples/cli/sample-apps Platform getApp \
    --itemId '1bwyeR8HVE0J9uW4' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'hvsOYOC7U8iBfSPi' \
    > test.out 2>&1
eval_tap $? 123 'GetApp' test.out

#- 124 UpdateApp
samples/cli/sample-apps Platform updateApp \
    --itemId 'DYqcplJtqCe7Vf9T' \
    --namespace $AB_NAMESPACE \
    --storeId 'QEx4mFTwC7tNbbmj' \
    --body '{"carousel": [{"alt": "tVHqiMC85nnQlZGY", "previewUrl": "PLEMyEqo60Aw0kQT", "thumbnailUrl": "JVvvumjs1fOTT0Qf", "type": "video", "url": "pxaHweb0fN4cFzMi", "videoSource": "youtube"}, {"alt": "pUnfNkhtPUVZhoNF", "previewUrl": "xepn8EGaa0xseuEf", "thumbnailUrl": "IiVI99ATVXF8iDnL", "type": "image", "url": "E4wSfYRw77WuOBuV", "videoSource": "generic"}, {"alt": "KRdvO0dbyKyIOLKl", "previewUrl": "qEphwbd8Qjn2E15v", "thumbnailUrl": "m0pUEd7mhsAz6UY5", "type": "video", "url": "MoGA5W2Y5SRgjLBE", "videoSource": "vimeo"}], "developer": "ubP7DKQxlWO2lPn9", "forumUrl": "neKlU1xJ1QY8Y6Vi", "genres": ["Strategy", "Racing", "Strategy"], "localizations": {"wSFby3vp3tPwED6W": {"announcement": "bYMZFlXJWk1q7Dih", "slogan": "Hzs349iFulzK3jF9"}, "oD76qgmptYGb48AS": {"announcement": "ZZYX02W4cGERXb7N", "slogan": "EWjoJZwQrSiZIuW3"}, "Fzty4G2FGvD8yPtk": {"announcement": "HQNO35QbXL2fxK49", "slogan": "t7l5A8U1SO12iAeV"}}, "platformRequirements": {"TebNDekxW9VcKdKr": [{"additionals": "Mq0CANS6uPIt5x6C", "directXVersion": "TzSoGIHeWUSJuNi3", "diskSpace": "b87VUa4HcaiivwvS", "graphics": "4sh4Vwt1FeqrCY4P", "label": "vX5icCSdJz4z0ijm", "osVersion": "b5YqfwAeDHljHEvw", "processor": "MHjdKtFmN7jVQyXF", "ram": "7DivlKAFjf2qe9vK", "soundCard": "0gW7pTYUmkoe9wzc"}, {"additionals": "G1jWFJBZshZSOAH9", "directXVersion": "N5bOVjs8n5pXO3Ur", "diskSpace": "LdRwRg4TitMnKiDS", "graphics": "YiIqNcsN0eNQhVLj", "label": "ODwoEhqsNCq6ADEV", "osVersion": "Tt7YtapkC0HvAWRp", "processor": "98mpI2P6jVZ3dtBT", "ram": "xFnrA7tXvJJwtXmz", "soundCard": "SQWka0DL3aHLxATj"}, {"additionals": "vwsbesO96ppINFmh", "directXVersion": "EWnk1aPLHtr3X62W", "diskSpace": "QARKn3cq9RgmIMos", "graphics": "8by8p4LNaURrelMM", "label": "GYpda4jv5OkuLlfJ", "osVersion": "9brWH93hz2xK40CI", "processor": "S2ZeZd2CTalqJMpp", "ram": "pB7Q6Fdf7NSQbljg", "soundCard": "2AyzU7DZMMo71YPF"}], "4Gv8SKodUFgXsMWa": [{"additionals": "BUG5HOMwt29OStrN", "directXVersion": "HaiBmsttzJHcxtE8", "diskSpace": "V5ioKRQP7WwPPD5q", "graphics": "8qTaP9X4DoKpZikX", "label": "wwDL42UqxmrqVvdp", "osVersion": "t1V2siQpMmSSvF97", "processor": "NQmXm2Vt8e9XWWEK", "ram": "HXdC69dawRKIOj7H", "soundCard": "AZA1Q5Rg8YTavOGU"}, {"additionals": "z9mhMoucjYhTRjRR", "directXVersion": "l6c2Nr2S5df6OLDr", "diskSpace": "PhO4DLJBFjCWSbXs", "graphics": "3Eq2Dc1slMf10N7J", "label": "iYBs9u8IMLSLy6Cs", "osVersion": "wOgibtPY7RPnR2iu", "processor": "cbPRGvtLzplqnkpf", "ram": "LIV5AT96BCD0Fz5p", "soundCard": "uHA6S0pOf4RlYbqu"}, {"additionals": "hmDhyLsRXKYbtvCN", "directXVersion": "FoZpdmLONjlYo14r", "diskSpace": "qTyFuDPmtMOQE9bh", "graphics": "38R6mXrg7iy8VYCh", "label": "w0jnZAEvFKDFWAw9", "osVersion": "kwDZ3oJxJgaHV9ET", "processor": "SFRK2OPnwuEV8HPz", "ram": "QYNnt5vuP6dzTWES", "soundCard": "20Kz0BD4zPoFealr"}], "ZQz2yuUtp4xsItUs": [{"additionals": "Y2dBMtzDWIlunqfN", "directXVersion": "wMTo7Y03niB5zGJe", "diskSpace": "OLvPTO38Ur1mnSQU", "graphics": "pqcnzDT1Cpm4UPdU", "label": "KQWOojPQ9pyYUeFG", "osVersion": "Kn5MVlTbCr1ZkqDJ", "processor": "nnxQboCY5uiXruIa", "ram": "NZ7DcBxvbzIxUqTW", "soundCard": "N3p7UaUWrNguUh8h"}, {"additionals": "ZoT5eCWmGreJoePb", "directXVersion": "r0Nszf0Y4rSikGb3", "diskSpace": "QeheoaHDVHt5ePqZ", "graphics": "mx1lVMGskW3t5KWO", "label": "3WbMoNB6umQX3NjL", "osVersion": "fmKURNmYIdDSA2kZ", "processor": "1lbRNsAGcWTGckkg", "ram": "KdHZuplywQsHshz6", "soundCard": "lPTYplh2Q77aSHds"}, {"additionals": "PygXKkFVWqABZlZK", "directXVersion": "KPWZOVF7izNxHjuA", "diskSpace": "icSkiwHUoOVje43p", "graphics": "iilqEb2wHBhIQ7tt", "label": "tmH9rSFOKa3gvN6p", "osVersion": "Wm3eexH2nhXX27Rz", "processor": "3B0CVgiUkwtOoLrJ", "ram": "ZFEovY9yvNXzZSRa", "soundCard": "gr59AcKJ8mPFNZ8A"}]}, "platforms": ["Windows", "Linux", "MacOS"], "players": ["Single", "LocalCoop", "Coop"], "primaryGenre": "Casual", "publisher": "8KTDZ9oPUKhYb3R1", "releaseDate": "1994-12-31T00:00:00Z", "websiteUrl": "Wwq2pp2r8LBToqSr"}' \
    > test.out 2>&1
eval_tap $? 124 'UpdateApp' test.out

#- 125 DisableItem
samples/cli/sample-apps Platform disableItem \
    --itemId 'bpA7jCMDUJRa35kb' \
    --namespace $AB_NAMESPACE \
    --storeId '37RTxAn6BiIhKH8g' \
    > test.out 2>&1
eval_tap $? 125 'DisableItem' test.out

#- 126 GetItemDynamicData
samples/cli/sample-apps Platform getItemDynamicData \
    --itemId 'NxWqQ5JQUz0Mu0op' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 126 'GetItemDynamicData' test.out

#- 127 EnableItem
samples/cli/sample-apps Platform enableItem \
    --itemId 'lOdzANkg9iXiNFnQ' \
    --namespace $AB_NAMESPACE \
    --storeId 'zbCGoieNsnmSe8wh' \
    > test.out 2>&1
eval_tap $? 127 'EnableItem' test.out

#- 128 FeatureItem
samples/cli/sample-apps Platform featureItem \
    --feature 'o8zSkXu6UlaCVZqI' \
    --itemId 'Dm40BmrRr5zuIxnR' \
    --namespace $AB_NAMESPACE \
    --storeId 'Lg16WC9qb6ThxudT' \
    > test.out 2>&1
eval_tap $? 128 'FeatureItem' test.out

#- 129 DefeatureItem
samples/cli/sample-apps Platform defeatureItem \
    --feature 'q8mkC9oh7BMyI4GE' \
    --itemId 'B09dlolwHE9h5p3i' \
    --namespace $AB_NAMESPACE \
    --storeId '8q91yfnesmIUig1K' \
    > test.out 2>&1
eval_tap $? 129 'DefeatureItem' test.out

#- 130 GetLocaleItem
samples/cli/sample-apps Platform getLocaleItem \
    --itemId 'kwzFwS0lkgKZyxAz' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --language 'XQy3LncFjDGSp0qY' \
    --populateBundle 'true' \
    --region '1iPeouYxj4OKFI08' \
    --storeId 'lP0Qj2qM8r2BdR9G' \
    > test.out 2>&1
eval_tap $? 130 'GetLocaleItem' test.out

#- 131 UpdateItemPurchaseCondition
samples/cli/sample-apps Platform updateItemPurchaseCondition \
    --itemId 'oq21U3FNsWLz2whw' \
    --namespace $AB_NAMESPACE \
    --storeId 'Fbxg2F0SB3LWSUqW' \
    --body '{"purchaseCondition": {"conditionGroups": [{"operator": "or", "predicates": [{"anyOf": 69, "comparison": "excludes", "name": "p59jpaewdXtxkZ3v", "predicateType": "EntitlementPredicate", "value": "KxO12TdE7h8dNWt5", "values": ["vuTXJLJMAeZ52Tjq", "PGZYGo2AyqkzmWbA", "2iqHgL8L7XqWU19o"]}, {"anyOf": 4, "comparison": "isGreaterThan", "name": "orkvhnltd7WPEmOy", "predicateType": "EntitlementPredicate", "value": "YKMH98InWJG2Cqqz", "values": ["OJ8gjFtNJYWtNRNB", "ik1mSgBtjJDOXxU6", "zcbivJNnpXO62nDo"]}, {"anyOf": 24, "comparison": "includes", "name": "8UNHoLGfpBDtFjuU", "predicateType": "SeasonPassPredicate", "value": "Go6r19dvcuhOromB", "values": ["HX1tw4rYh4nq1zGN", "uEmIoXZ0zy1qzWlC", "csa10SJhenwJ6yDh"]}]}, {"operator": "or", "predicates": [{"anyOf": 79, "comparison": "includes", "name": "A9plykhTn8RmfKav", "predicateType": "SeasonPassPredicate", "value": "ZOgkf0KVu1pfFWMC", "values": ["AIVXwL955z7KsC3A", "zI6UCxGgHcWeFBPP", "hVuuUVFGGll9wbtX"]}, {"anyOf": 36, "comparison": "isGreaterThanOrEqual", "name": "RfEr4RvUTawopnpm", "predicateType": "SeasonTierPredicate", "value": "6db27VUdj5k7dnGb", "values": ["l65jQcfHG8rppVyU", "HFhXYYIEoh739z0k", "PBsuEZ0VhfReQ8wK"]}, {"anyOf": 97, "comparison": "is", "name": "ejAFD2yBEidRCodb", "predicateType": "SeasonTierPredicate", "value": "wpB82xTTQx789Kh5", "values": ["RhQWIGpCHAQoKI0i", "sY2vyCLJtffx5EKa", "rhsdKwXa9lFEvahy"]}]}, {"operator": "and", "predicates": [{"anyOf": 44, "comparison": "includes", "name": "185o78LbpQihjkzw", "predicateType": "SeasonTierPredicate", "value": "hfp5CXb5M4v2lrms", "values": ["7Os4T9VoIC1dI1Q0", "ESzHN5WByhTD4Cj1", "doywdvbSV9E0CaI5"]}, {"anyOf": 28, "comparison": "isNot", "name": "SiUorYws5FIlegSc", "predicateType": "SeasonTierPredicate", "value": "Tb6j5rq2H5fCjNm8", "values": ["l8fqRSc9IOWoLMhm", "x8PYMyBDUA7nP31E", "jvKZMHuL0LhNoZBc"]}, {"anyOf": 21, "comparison": "includes", "name": "OxRwpRH1L3y7gXTo", "predicateType": "SeasonTierPredicate", "value": "0uTjKKzBtGlGutMw", "values": ["mT8EhJ5gnWUHnIIp", "oITpSb9CGGzQQEqg", "mITLsCJbdS4pNUSK"]}]}]}}' \
    > test.out 2>&1
eval_tap $? 131 'UpdateItemPurchaseCondition' test.out

#- 132 ReturnItem
samples/cli/sample-apps Platform returnItem \
    --itemId 'nC0sRN2HetRCViIk' \
    --namespace $AB_NAMESPACE \
    --body '{"orderNo": "M4aUzpmk9fcpO4Wj"}' \
    > test.out 2>&1
eval_tap $? 132 'ReturnItem' test.out

#- 133 QueryKeyGroups
samples/cli/sample-apps Platform queryKeyGroups \
    --namespace $AB_NAMESPACE \
    --limit '47' \
    --name 'I0z3EGk7ec210w86' \
    --offset '67' \
    --tag 'GVZgtTROD9ZTmuX6' \
    > test.out 2>&1
eval_tap $? 133 'QueryKeyGroups' test.out

#- 134 CreateKeyGroup
samples/cli/sample-apps Platform createKeyGroup \
    --namespace $AB_NAMESPACE \
    --body '{"description": "bYwa0IyMuSS8Qe7p", "name": "kwlBBrCqvsN67rYI", "status": "INACTIVE", "tags": ["l6yTwf6cHHE6odHo", "RjkOKZLPhTcf0v08", "sJ0KtI59ll1Fpmox"]}' \
    > test.out 2>&1
eval_tap $? 134 'CreateKeyGroup' test.out

#- 135 GetKeyGroupByBoothName
eval_tap 0 135 'GetKeyGroupByBoothName # SKIP deprecated' test.out

#- 136 GetKeyGroup
samples/cli/sample-apps Platform getKeyGroup \
    --keyGroupId 'J82Jd3tSnt9schRz' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 136 'GetKeyGroup' test.out

#- 137 UpdateKeyGroup
samples/cli/sample-apps Platform updateKeyGroup \
    --keyGroupId 'orPRQ9oyzA3MHpPg' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "sKDYCC1A3tHc5qts", "name": "gELA1enhu7cjson4", "status": "ACTIVE", "tags": ["z4vKAVo42IHNcGKl", "woEomwKbEA5eC1CB", "NEOMJy9aessRcn9Y"]}' \
    > test.out 2>&1
eval_tap $? 137 'UpdateKeyGroup' test.out

#- 138 GetKeyGroupDynamic
samples/cli/sample-apps Platform getKeyGroupDynamic \
    --keyGroupId '3FWzEViGHHZFa1SU' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 138 'GetKeyGroupDynamic' test.out

#- 139 ListKeys
samples/cli/sample-apps Platform listKeys \
    --keyGroupId 'CVDbdzegVUJga4Mu' \
    --namespace $AB_NAMESPACE \
    --limit '20' \
    --offset '89' \
    --status 'ACTIVE' \
    > test.out 2>&1
eval_tap $? 139 'ListKeys' test.out

#- 140 UploadKeys
samples/cli/sample-apps Platform uploadKeys \
    --keyGroupId 'dxsuIKF62dDb4jOw' \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 140 'UploadKeys' test.out

#- 141 QueryOrders
samples/cli/sample-apps Platform queryOrders \
    --namespace $AB_NAMESPACE \
    --endTime 'xoKC9t42gR1C5G1P' \
    --limit '67' \
    --offset '64' \
    --orderNos '["8lB2O70jsO9hRyLp", "MWSNIQ6vRFYydLTY", "lxTUUhgW5mslnFfV"]' \
    --sortBy '8jiPmjY26iBjkK5x' \
    --startTime 'zOTo3tLHxZny1y4E' \
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
    --orderNo 'Nel1mwWmgnXLjkYo' \
    > test.out 2>&1
eval_tap $? 143 'GetOrder' test.out

#- 144 RefundOrder
samples/cli/sample-apps Platform refundOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'OJQo6W39J9e2qw0v' \
    --body '{"description": "pu0JabSkvSFATmc0"}' \
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
    --body '{"dryRun": true, "notifyUrl": "lRDVu3LhyEp16RYY", "privateKey": "2yQtHJjfOAkgC9vN"}' \
    > test.out 2>&1
eval_tap $? 146 'UpdatePaymentCallbackConfig' test.out

#- 147 QueryPaymentNotifications
samples/cli/sample-apps Platform queryPaymentNotifications \
    --namespace $AB_NAMESPACE \
    --endDate '6HLzPlVPTXgrO4lp' \
    --externalId 'VljI3Ds58fkn8peH' \
    --limit '1' \
    --notificationSource 'PAYPAL' \
    --notificationType 'xcMeN4BkJWCzsoVA' \
    --offset '95' \
    --paymentOrderNo 'JwnvMODYQtoqFUxb' \
    --startDate 'EnaiHiYbxuAtFIZw' \
    --status 'PROCESSED' \
    > test.out 2>&1
eval_tap $? 147 'QueryPaymentNotifications' test.out

#- 148 QueryPaymentOrders
samples/cli/sample-apps Platform queryPaymentOrders \
    --namespace $AB_NAMESPACE \
    --channel 'EXTERNAL' \
    --extTxId 'oj5gJmLJE7abBXW5' \
    --limit '86' \
    --offset '23' \
    --status 'REFUND_FAILED' \
    > test.out 2>&1
eval_tap $? 148 'QueryPaymentOrders' test.out

#- 149 CreatePaymentOrderByDedicated
samples/cli/sample-apps Platform createPaymentOrderByDedicated \
    --namespace $AB_NAMESPACE \
    --body '{"currencyCode": "XkFEbk18GB4g7fua", "currencyNamespace": "OFNTxLfVJgsN8f82", "customParameters": {"A2tJ6NS1OUJ8dbfF": {}, "q9Oayi8rA6TjVuMx": {}, "29TUHEATIp1dsOjz": {}}, "description": "UyLilkgtdfzvMtSe", "extOrderNo": "MtR1oVIbIUDhUYz5", "extUserId": "JxACudSgxDGeN9c5", "itemType": "APP", "language": "BjYi", "metadata": {"WqQXDFJdfndfveZB": "S0neLSMlOSK7RubK", "aufakE1ZnR5NP0EN": "8tZJREKRARqtqNUW", "rnYSeuLKmurRf4Jm": "KOf74dnaJ0G4yAFZ"}, "notifyUrl": "Um0IkoXtgvGvpaR1", "omitNotification": false, "platform": "9eMseSXk5MESYlbJ", "price": 70, "recurringPaymentOrderNo": "aOsQmhEzLipZOTVV", "region": "6mmLL5AgHGlEPxi6", "returnUrl": "AgpYAKtdd51vqDvH", "sandbox": true, "sku": "51mq8MOCKtoLvtT4", "subscriptionId": "VF8zY8NAms8Y7foW", "targetNamespace": "QVKbS0QR8jYHp4j0", "targetUserId": "J4bQlWZ8f2gUx22X", "title": "QTKDyWniaaq1SfXJ"}' \
    > test.out 2>&1
eval_tap $? 149 'CreatePaymentOrderByDedicated' test.out

#- 150 ListExtOrderNoByExtTxId
samples/cli/sample-apps Platform listExtOrderNoByExtTxId \
    --namespace $AB_NAMESPACE \
    --extTxId 'o70F1D5x4MW0RWxS' \
    > test.out 2>&1
eval_tap $? 150 'ListExtOrderNoByExtTxId' test.out

#- 151 GetPaymentOrder
samples/cli/sample-apps Platform getPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'y6TpjW1QH17I1H4I' \
    > test.out 2>&1
eval_tap $? 151 'GetPaymentOrder' test.out

#- 152 ChargePaymentOrder
samples/cli/sample-apps Platform chargePaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'SwkhR6DbzSfIP67e' \
    --body '{"extTxId": "gdzuapVCzAe5FIY6", "paymentMethod": "CjSC6qfOGMQYXbfn", "paymentProvider": "PAYPAL"}' \
    > test.out 2>&1
eval_tap $? 152 'ChargePaymentOrder' test.out

#- 153 RefundPaymentOrderByDedicated
samples/cli/sample-apps Platform refundPaymentOrderByDedicated \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'YykEEMAgadj3wt8L' \
    --body '{"description": "ITlXKEGCNWrUWfB8"}' \
    > test.out 2>&1
eval_tap $? 153 'RefundPaymentOrderByDedicated' test.out

#- 154 SimulatePaymentOrderNotification
samples/cli/sample-apps Platform simulatePaymentOrderNotification \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo '9X3FH9pdpFb9rgTs' \
    --body '{"amount": 95, "currencyCode": "rIne8dp1J7XD49xc", "notifyType": "REFUND", "paymentProvider": "ALIPAY", "salesTax": 17, "vat": 34}' \
    > test.out 2>&1
eval_tap $? 154 'SimulatePaymentOrderNotification' test.out

#- 155 GetPaymentOrderChargeStatus
samples/cli/sample-apps Platform getPaymentOrderChargeStatus \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo '3S6OfN6hvGXeLROg' \
    > test.out 2>&1
eval_tap $? 155 'GetPaymentOrderChargeStatus' test.out

#- 156 GetPlatformEntitlementConfig
samples/cli/sample-apps Platform getPlatformEntitlementConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Epic' \
    > test.out 2>&1
eval_tap $? 156 'GetPlatformEntitlementConfig' test.out

#- 157 UpdatePlatformEntitlementConfig
samples/cli/sample-apps Platform updatePlatformEntitlementConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Steam' \
    --body '{"allowedPlatformOrigins": ["Other", "Steam", "Xbox"]}' \
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
    --platform 'GooglePlay' \
    --body '{"allowedBalanceOrigins": ["Twitch", "Twitch", "Nintendo"]}' \
    > test.out 2>&1
eval_tap $? 159 'UpdatePlatformWalletConfig' test.out

#- 160 ResetPlatformWalletConfig
samples/cli/sample-apps Platform resetPlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Oculus' \
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
    --body '{"entitlement": {"consumable": {"enabled": false, "strategy": "REVOKE_OR_REPORT"}, "durable": {"enabled": false, "strategy": "REVOKE_OR_REPORT"}}, "wallet": {"enabled": false, "strategy": "ALWAYS_REVOKE"}}' \
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
    --endTime 'QF5VCkzbb35Quvt5' \
    --limit '7' \
    --offset '1' \
    --source 'IAP' \
    --startTime 'JfvBBNGu6x9EwKVM' \
    --status 'SUCCESS' \
    --transactionId 'DFLHxRLfIaqE3bpC' \
    --userId 'ajK62wNOoyfCBh1M' \
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
    --body '{"appConfig": {"appName": "PjinipAyrBBkkILo"}, "customConfig": {"connectionType": "TLS", "grpcServerAddress": "xNm67fuB2DGSZqG0"}, "extendType": "APP"}' \
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
    --body '{"description": "W0fb3q9RS4tVjvxV", "eventTopic": "MXdm9TjBHEhVgY6s", "maxAwarded": 27, "maxAwardedPerUser": 49, "namespaceExpression": "G7UkJwhyxXV3kwMh", "rewardCode": "c8rbicEOFEOCD3ub", "rewardConditions": [{"condition": "8ewdZNhC5T8YWDN4", "conditionName": "7Ogc6bLrUY4cuXIP", "eventName": "TlVgWUKiSo912zhJ", "rewardItems": [{"duration": 63, "endDate": "1976-12-15T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "0pFpdA92y5Wu5LCa", "quantity": 81, "sku": "fGDV9MfziBZPhwM6"}, {"duration": 57, "endDate": "1988-07-10T00:00:00Z", "identityType": "ITEM_ID", "itemId": "YII07QUCYPJL1io5", "quantity": 72, "sku": "YVhnC4vCxVK1KC53"}, {"duration": 56, "endDate": "1976-03-17T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "No3bUL85DEdZyzff", "quantity": 33, "sku": "PGEZjYdTT9oyqNwS"}]}, {"condition": "yJqYdsnY3DbRepkk", "conditionName": "VIgvFn0ziSq8kbBS", "eventName": "aDhj4AAg2UwypN3j", "rewardItems": [{"duration": 67, "endDate": "1987-07-01T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "ZjP93IDl6WfpKQRQ", "quantity": 47, "sku": "Gz5bcvf2IvROGuD3"}, {"duration": 88, "endDate": "1981-03-16T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "QpfNCJCqiO9nDjUq", "quantity": 91, "sku": "ONFYI3ai5LW4oCG0"}, {"duration": 89, "endDate": "1997-11-30T00:00:00Z", "identityType": "ITEM_ID", "itemId": "AyNyWqsHSEDFQDnN", "quantity": 3, "sku": "z7IRgTzklkczjTX6"}]}, {"condition": "p6DklZMfGjrtG86A", "conditionName": "kqTJxBh8a57mYQrV", "eventName": "71iAkqNbqb0zHwx2", "rewardItems": [{"duration": 71, "endDate": "1989-02-27T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "uYfA7PAxXMOEK5PD", "quantity": 28, "sku": "W2onnA7OSvT6HNUR"}, {"duration": 85, "endDate": "1983-01-26T00:00:00Z", "identityType": "ITEM_ID", "itemId": "s1CkOlMkP9f0rDY9", "quantity": 10, "sku": "mKOTAumeGbdBYqDe"}, {"duration": 88, "endDate": "1991-04-10T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "JmOkTizm8A5LWP2k", "quantity": 64, "sku": "nAqeNRCmecEd08Ks"}]}], "userIdExpression": "srQyFj1nAxRSFZPt"}' \
    > test.out 2>&1
eval_tap $? 169 'CreateReward' test.out

#- 170 QueryRewards
samples/cli/sample-apps Platform queryRewards \
    --namespace $AB_NAMESPACE \
    --eventTopic 'Y9eHMAfX6CoV6HuX' \
    --limit '67' \
    --offset '20' \
    --sortBy '["rewardCode", "namespace"]' \
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
    --rewardId 'm0A9P4U8d6y11CC8' \
    > test.out 2>&1
eval_tap $? 173 'GetReward' test.out

#- 174 UpdateReward
samples/cli/sample-apps Platform updateReward \
    --namespace $AB_NAMESPACE \
    --rewardId '0pEbdjG83Vt7mOWD' \
    --body '{"description": "GSYyYys0WZ28r8zM", "eventTopic": "zSlKX25q85JjPavZ", "maxAwarded": 68, "maxAwardedPerUser": 3, "namespaceExpression": "wNw9JRwIl0uix85b", "rewardCode": "U7HKQPFvUigCQPVj", "rewardConditions": [{"condition": "VWKezMv5rcRgY7EF", "conditionName": "bwa0N7SDOIF2eEJ0", "eventName": "6mQJk9j5f9Gr9n7T", "rewardItems": [{"duration": 36, "endDate": "1986-09-14T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "ixm8rQNXJw0lTave", "quantity": 79, "sku": "4ZAGVUUN9VTkkQvO"}, {"duration": 85, "endDate": "1977-01-21T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "YOeaFdLWd7edWpH6", "quantity": 7, "sku": "KcTc8xN0A74yNvfd"}, {"duration": 80, "endDate": "1976-12-17T00:00:00Z", "identityType": "ITEM_ID", "itemId": "pIlsPWyzqqTSICcy", "quantity": 36, "sku": "OeT5L3Qxi0ojiQeE"}]}, {"condition": "vlGY05f7ITX2Wzj6", "conditionName": "3ujYstka7eDrzW1r", "eventName": "APvJqiPHMlvXHvzX", "rewardItems": [{"duration": 93, "endDate": "1996-02-29T00:00:00Z", "identityType": "ITEM_ID", "itemId": "bfEMhddhzAKWBBaT", "quantity": 45, "sku": "n9agstubLjyuPF7y"}, {"duration": 8, "endDate": "1974-05-24T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "6ZbRF3fxJZsSDJwY", "quantity": 8, "sku": "9U3L9yYV6tSEfUuq"}, {"duration": 76, "endDate": "1999-04-28T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "JV0k6N4wiDnGp54X", "quantity": 82, "sku": "yi1ERX03WUYGIPjp"}]}, {"condition": "uVYhjjtXjK3Ho8YC", "conditionName": "W1c6sOQ17WeDiVF3", "eventName": "Js7ji1B7ZwGcHXO0", "rewardItems": [{"duration": 58, "endDate": "1991-12-16T00:00:00Z", "identityType": "ITEM_ID", "itemId": "i5NUrfWxTwfN0qtQ", "quantity": 73, "sku": "HQy2Z4wQgbILs2bS"}, {"duration": 45, "endDate": "1994-04-01T00:00:00Z", "identityType": "ITEM_ID", "itemId": "q8gGAJ0Ay6fobgql", "quantity": 75, "sku": "pQE3Pe1qzyUOwfqH"}, {"duration": 94, "endDate": "1981-09-12T00:00:00Z", "identityType": "ITEM_ID", "itemId": "gCQh1B6pKfzhADO9", "quantity": 87, "sku": "6YiHH1O1NyNIBtD3"}]}], "userIdExpression": "u1fXyycZsgHbOdz3"}' \
    > test.out 2>&1
eval_tap $? 174 'UpdateReward' test.out

#- 175 DeleteReward
samples/cli/sample-apps Platform deleteReward \
    --namespace $AB_NAMESPACE \
    --rewardId 'IqD3MzOXoWdTdB07' \
    > test.out 2>&1
eval_tap $? 175 'DeleteReward' test.out

#- 176 CheckEventCondition
samples/cli/sample-apps Platform checkEventCondition \
    --namespace $AB_NAMESPACE \
    --rewardId '5K2nr8cF4HYPmEzd' \
    --body '{"payload": {"ZvigBkShPRMoodqQ": {}, "48cTvBqKAV37Y88M": {}, "16sI42UUIiJJmE7T": {}}}' \
    > test.out 2>&1
eval_tap $? 176 'CheckEventCondition' test.out

#- 177 DeleteRewardConditionRecord
samples/cli/sample-apps Platform deleteRewardConditionRecord \
    --namespace $AB_NAMESPACE \
    --rewardId 'vRn3XDNvSN5h25PU' \
    --body '{"conditionName": "XJzPwv6dvT2bNzmt", "userId": "1H9O0tnElS1ZI99Z"}' \
    > test.out 2>&1
eval_tap $? 177 'DeleteRewardConditionRecord' test.out

#- 178 QuerySections
samples/cli/sample-apps Platform querySections \
    --namespace $AB_NAMESPACE \
    --end 'QjQUTzgfv3ME7kz7' \
    --limit '40' \
    --offset '23' \
    --start 'j0f0Z8yUoI35QcD9' \
    --storeId '1PkDnHcUcXkn2Glz' \
    --viewId '9whEQl0ttWbXIq5Z' \
    > test.out 2>&1
eval_tap $? 178 'QuerySections' test.out

#- 179 CreateSection
samples/cli/sample-apps Platform createSection \
    --namespace $AB_NAMESPACE \
    --storeId 'nKJ5TdkKZE6eEfuE' \
    --body '{"active": false, "displayOrder": 37, "endDate": "1986-07-26T00:00:00Z", "ext": {"mfqP0MneecrzUlAz": {}, "CFuHk5DQjmfSH6Z7": {}, "MhWpgBhN2Q8AcaC8": {}}, "fixedPeriodRotationConfig": {"backfillType": "CUSTOM", "duration": 7, "itemCount": 53, "rule": "SEQUENCE"}, "items": [{"id": "qjZiYBARgpXumBtA", "sku": "9CA5LBkItgGFx4LW"}, {"id": "nF0X9n13DhAO1GNg", "sku": "WSnb5428LnW5nTCt"}, {"id": "hsJPc2x06LgFkvE9", "sku": "v6QuSoRsfAft28VX"}], "localizations": {"6unCiCzeb7RrdVnP": {"description": "hWjE75r3FfOcJ06r", "localExt": {"NkLoqMt1Zv5kyMHq": {}, "gCPVG6Cg2tIIUZmM": {}, "dx64oo7tOVjvskjz": {}}, "longDescription": "X9tnZg76IOt8gS2X", "title": "K0anRxhC0DvokSL3"}, "hCTgJ42MAVliPPJE": {"description": "ACu6wvIwCyCRw83d", "localExt": {"Gy5lqUnFu5E3uBk7": {}, "GMrMoy2xRMTibHbG": {}, "cxGmwKD28dYQnmbI": {}}, "longDescription": "ZrimQBdyyKT1Kudx", "title": "VgYOFKs0gZ3cgZT9"}, "85L6ZdhQdfoXiEFD": {"description": "pFdQprojuFzow9zF", "localExt": {"Yxc0FNLdm5NGMvdO": {}, "TWvoE7MHnKX0eOSF": {}, "2TJeCCxc2G7k2ovy": {}}, "longDescription": "naDM57FFLNzQ8C44", "title": "uDCoCcXNsnh2IDfQ"}}, "name": "493Is5yIuLDrXRay", "rotationType": "FIXED_PERIOD", "startDate": "1997-06-29T00:00:00Z", "viewId": "Q56Wd98z5wPlwJZX"}' \
    > test.out 2>&1
eval_tap $? 179 'CreateSection' test.out

#- 180 PurgeExpiredSection
samples/cli/sample-apps Platform purgeExpiredSection \
    --namespace $AB_NAMESPACE \
    --storeId 'dzeUQc763ReKIJk4' \
    > test.out 2>&1
eval_tap $? 180 'PurgeExpiredSection' test.out

#- 181 GetSection
samples/cli/sample-apps Platform getSection \
    --namespace $AB_NAMESPACE \
    --sectionId 'xT0Ae9GfpFqpYJjS' \
    --storeId 'WljoTsByqRXuy5Rk' \
    > test.out 2>&1
eval_tap $? 181 'GetSection' test.out

#- 182 UpdateSection
samples/cli/sample-apps Platform updateSection \
    --namespace $AB_NAMESPACE \
    --sectionId 'XvUyA3WdFaUvn046' \
    --storeId 'g5aadMyHr1zeHnQk' \
    --body '{"active": true, "displayOrder": 9, "endDate": "1984-04-30T00:00:00Z", "ext": {"FALdfbxNbmzk3Ttd": {}, "K23sQdDpHDjUt9Ak": {}, "gY9OqL0UbRNLlWTB": {}}, "fixedPeriodRotationConfig": {"backfillType": "NONE", "duration": 98, "itemCount": 28, "rule": "SEQUENCE"}, "items": [{"id": "Ti3g5ikxjCtXZn9j", "sku": "FSDyFamg6q4gyZFN"}, {"id": "BFyVKAjdnV5QrvF5", "sku": "65XHwsw35C5w0Avo"}, {"id": "uPQOAsbEguf6v9CQ", "sku": "B45scthx2pSTzQBd"}], "localizations": {"aHW3ZvXRWwKvF0gj": {"description": "oCKOSmY84UqINczo", "localExt": {"QlZpFHgFvX0oZWlQ": {}, "hIzEyhzsaHh9lq1Q": {}, "YSYuUSmsQ9VRo6u3": {}}, "longDescription": "y2onGAYxuieqqutj", "title": "fgRp8XuWfN0s7Q9x"}, "sFDYW8ZLQAA1h6My": {"description": "aXx4lcEsf0ZuJL2T", "localExt": {"z3C7WHNwFpQiXAC9": {}, "U0tNKJ05qALb5bhB": {}, "HpSU9dY0KrPinFEr": {}}, "longDescription": "XDJvQSHh8b0ipaaj", "title": "ATFmgidijLQksnce"}, "zqoxyvbbjLHXUnRs": {"description": "JmjVvrHHAHOPd7Ul", "localExt": {"tYx0ZXEHQaLu8Aa9": {}, "PrW97A2dzLP4EvyP": {}, "dtE90XmgTWMiBYKB": {}}, "longDescription": "ycVaGGcaM7SGwME9", "title": "mMZCDvSE3sFdhKtB"}}, "name": "TxcQtfzHhFGERZm9", "rotationType": "FIXED_PERIOD", "startDate": "1976-12-12T00:00:00Z", "viewId": "y3F3A7QAEywOgTVG"}' \
    > test.out 2>&1
eval_tap $? 182 'UpdateSection' test.out

#- 183 DeleteSection
samples/cli/sample-apps Platform deleteSection \
    --namespace $AB_NAMESPACE \
    --sectionId 'JIUrhkbckaEz9SSr' \
    --storeId 'aiLiBsJbFXAMxt8H' \
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
    --body '{"defaultLanguage": "0rpKqukncKuX3D5o", "defaultRegion": "jWXTOkbTOtRCt2Uu", "description": "5AboMZEXRf3nqn2l", "supportedLanguages": ["GNICowvpxdv4CpYQ", "Rt42fMMOvg2ljP9V", "LjcSdEpjdPDxcfR1"], "supportedRegions": ["xsK2leybqBajmN2W", "ZZUz554eGFCThoHL", "CkCALypzJeGnm0D3"], "title": "aSIOR9ZFNKZnsRwR"}' \
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
    --storeId 'H6Wyp14m2P3EgfnY' \
    > test.out 2>&1
eval_tap $? 191 'GetStore' test.out

#- 192 UpdateStore
samples/cli/sample-apps Platform updateStore \
    --namespace $AB_NAMESPACE \
    --storeId 'RJIgVkIkJHTPXmm6' \
    --body '{"defaultLanguage": "CpYsxCMINp0iHCRi", "defaultRegion": "t9Q8poDNvRS9iu2K", "description": "faNYr1N0sO7VVBy5", "supportedLanguages": ["gqyEvo94cdWdfcAb", "yVARcHf2Nq2RN3cI", "vboBN6sJBjybyLRW"], "supportedRegions": ["oqR9NFxJWUAIx6Gw", "xaRnQU936LHnr5ke", "TRlMvsxerqkhwCNc"], "title": "JDLcKBEV15j85t8H"}' \
    > test.out 2>&1
eval_tap $? 192 'UpdateStore' test.out

#- 193 DeleteStore
samples/cli/sample-apps Platform deleteStore \
    --namespace $AB_NAMESPACE \
    --storeId 'fhQtmr6PGck7b5qI' \
    > test.out 2>&1
eval_tap $? 193 'DeleteStore' test.out

#- 194 QueryChanges
samples/cli/sample-apps Platform queryChanges \
    --namespace $AB_NAMESPACE \
    --storeId 'cN62ZsvvE41SyAKZ' \
    --action 'UPDATE' \
    --itemSku 'dWKce52wocGQghFH' \
    --itemType 'EXTENSION' \
    --limit '72' \
    --offset '65' \
    --selected 'false' \
    --sortBy '["updatedAt:asc", "createdAt"]' \
    --status 'UNPUBLISHED' \
    --type 'SECTION' \
    --updatedAtEnd 'Fv5bdImXZvFug4up' \
    --updatedAtStart 'cQWjbkKQcDrPX8eq' \
    --withTotal 'true' \
    > test.out 2>&1
eval_tap $? 194 'QueryChanges' test.out

#- 195 PublishAll
samples/cli/sample-apps Platform publishAll \
    --namespace $AB_NAMESPACE \
    --storeId 'QZq4Udj8C2QKxPRY' \
    > test.out 2>&1
eval_tap $? 195 'PublishAll' test.out

#- 196 PublishSelected
samples/cli/sample-apps Platform publishSelected \
    --namespace $AB_NAMESPACE \
    --storeId 'gUgDRkj9a6LWVC6H' \
    > test.out 2>&1
eval_tap $? 196 'PublishSelected' test.out

#- 197 SelectAllRecords
samples/cli/sample-apps Platform selectAllRecords \
    --namespace $AB_NAMESPACE \
    --storeId 'piZCwmAaWhdqKwlq' \
    > test.out 2>&1
eval_tap $? 197 'SelectAllRecords' test.out

#- 198 SelectAllRecordsByCriteria
samples/cli/sample-apps Platform selectAllRecordsByCriteria \
    --namespace $AB_NAMESPACE \
    --storeId '9f3CwMOew6pdEi2N' \
    --action 'CREATE' \
    --itemSku 'JvP9D91uQdZoh3B9' \
    --itemType 'OPTIONBOX' \
    --selected 'true' \
    --type 'VIEW' \
    --updatedAtEnd 'PqA6QAVYsuK05MCo' \
    --updatedAtStart '5ELOriL8hrd3Z21o' \
    > test.out 2>&1
eval_tap $? 198 'SelectAllRecordsByCriteria' test.out

#- 199 GetStatistic
samples/cli/sample-apps Platform getStatistic \
    --namespace $AB_NAMESPACE \
    --storeId '0esdem9mUwuyFvQ7' \
    --action 'DELETE' \
    --itemSku 'bsieWWuFErfJlbRU' \
    --itemType 'CODE' \
    --type 'VIEW' \
    --updatedAtEnd 'Za6zAvALLXE719UG' \
    --updatedAtStart 'YxSGPUdedYXbGoPN' \
    > test.out 2>&1
eval_tap $? 199 'GetStatistic' test.out

#- 200 UnselectAllRecords
samples/cli/sample-apps Platform unselectAllRecords \
    --namespace $AB_NAMESPACE \
    --storeId 'kq6GrpB67PvDiTbT' \
    > test.out 2>&1
eval_tap $? 200 'UnselectAllRecords' test.out

#- 201 SelectRecord
samples/cli/sample-apps Platform selectRecord \
    --changeId 'ttK0xiBB2T7GGL62' \
    --namespace $AB_NAMESPACE \
    --storeId 'hCsAUcUZvvWOxMv0' \
    > test.out 2>&1
eval_tap $? 201 'SelectRecord' test.out

#- 202 UnselectRecord
samples/cli/sample-apps Platform unselectRecord \
    --changeId 'KziccfFIJHO40Hai' \
    --namespace $AB_NAMESPACE \
    --storeId 'OukYP5Nldl0YmFDo' \
    > test.out 2>&1
eval_tap $? 202 'UnselectRecord' test.out

#- 203 CloneStore
samples/cli/sample-apps Platform cloneStore \
    --namespace $AB_NAMESPACE \
    --storeId 'LuptnlZywOIQ438r' \
    --targetStoreId 'tq2fLN5cPyqW3Ouu' \
    > test.out 2>&1
eval_tap $? 203 'CloneStore' test.out

#- 204 ExportStore
eval_tap 0 204 'ExportStore # SKIP deprecated' test.out

#- 205 QuerySubscriptions
samples/cli/sample-apps Platform querySubscriptions \
    --namespace $AB_NAMESPACE \
    --chargeStatus 'NEVER' \
    --itemId '2ElTmAFnC1WSEyWV' \
    --limit '44' \
    --offset '49' \
    --sku 'PPErtyACdOmK1E2C' \
    --status 'EXPIRED' \
    --subscribedBy 'USER' \
    --userId 'vNImy2lG8GDaxUIg' \
    > test.out 2>&1
eval_tap $? 205 'QuerySubscriptions' test.out

#- 206 RecurringChargeSubscription
samples/cli/sample-apps Platform recurringChargeSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId '6DrVn3pw0mop9IZx' \
    > test.out 2>&1
eval_tap $? 206 'RecurringChargeSubscription' test.out

#- 207 GetTicketDynamic
samples/cli/sample-apps Platform getTicketDynamic \
    --boothName 'QY9r0y4j9RlN86Xv' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 207 'GetTicketDynamic' test.out

#- 208 DecreaseTicketSale
samples/cli/sample-apps Platform decreaseTicketSale \
    --boothName 'HIr1YiI8EOmiAZyJ' \
    --namespace $AB_NAMESPACE \
    --body '{"orderNo": "koQqQow16O5jCZvF"}' \
    > test.out 2>&1
eval_tap $? 208 'DecreaseTicketSale' test.out

#- 209 GetTicketBoothID
samples/cli/sample-apps Platform getTicketBoothID \
    --boothName '4p90t0JqMkX2GCGU' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 209 'GetTicketBoothID' test.out

#- 210 IncreaseTicketSale
samples/cli/sample-apps Platform increaseTicketSale \
    --boothName 'fx8Ue2RSoQp44iLq' \
    --namespace $AB_NAMESPACE \
    --body '{"count": 64, "orderNo": "b7gGqV9IE4AzdVHz"}' \
    > test.out 2>&1
eval_tap $? 210 'IncreaseTicketSale' test.out

#- 211 Commit
samples/cli/sample-apps Platform commit \
    --namespace $AB_NAMESPACE \
    --body '{"actions": [{"operations": [{"creditPayload": {"balanceOrigin": "System", "count": 21, "currencyCode": "factUngdCXEZwoEr", "expireAt": "1982-02-26T00:00:00Z"}, "debitPayload": {"count": 7, "currencyCode": "jY74ppek6M2cqws2", "walletPlatform": "Epic"}, "fulFillItemPayload": {"count": 47, "entitlementOrigin": "Epic", "itemIdentity": "yfiB2ITyxSK41s6s", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 63, "entitlementId": "o3VIVeagZfz14Dad"}, "type": "REVOKE_ENTITLEMENT"}, {"creditPayload": {"balanceOrigin": "Twitch", "count": 70, "currencyCode": "i2c9EkWocuHx4NLY", "expireAt": "1975-06-05T00:00:00Z"}, "debitPayload": {"count": 95, "currencyCode": "gcalMrMCMk4p1Y1q", "walletPlatform": "Epic"}, "fulFillItemPayload": {"count": 6, "entitlementOrigin": "Twitch", "itemIdentity": "sNChL2fOBsLpcGFK", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 18, "entitlementId": "i4Lq3GuOJ6IRf5AK"}, "type": "CREDIT_WALLET"}, {"creditPayload": {"balanceOrigin": "Steam", "count": 34, "currencyCode": "GvBuJ7XOMdZmlFgC", "expireAt": "1987-01-17T00:00:00Z"}, "debitPayload": {"count": 22, "currencyCode": "WK6EXmpJ2SxlxmZ4", "walletPlatform": "Oculus"}, "fulFillItemPayload": {"count": 75, "entitlementOrigin": "Xbox", "itemIdentity": "1dSgPCXdH8Jpeq8f", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 28, "entitlementId": "SVo1zf6WEXaTxjgd"}, "type": "CREDIT_WALLET"}], "userId": "YvxXgdWe9d320jip"}, {"operations": [{"creditPayload": {"balanceOrigin": "Epic", "count": 33, "currencyCode": "29jtx80YRITWR0dT", "expireAt": "1981-07-18T00:00:00Z"}, "debitPayload": {"count": 56, "currencyCode": "PA9mL4lg2pWTukBn", "walletPlatform": "Playstation"}, "fulFillItemPayload": {"count": 18, "entitlementOrigin": "Steam", "itemIdentity": "U1iwnQuB7hO6JMTB", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 28, "entitlementId": "zQemsBhcq0W1fRew"}, "type": "REVOKE_ENTITLEMENT"}, {"creditPayload": {"balanceOrigin": "Playstation", "count": 53, "currencyCode": "agjTjhzPZKtZZGyV", "expireAt": "1984-05-07T00:00:00Z"}, "debitPayload": {"count": 84, "currencyCode": "3Xrzu0e24FLXiAWZ", "walletPlatform": "Oculus"}, "fulFillItemPayload": {"count": 30, "entitlementOrigin": "Nintendo", "itemIdentity": "LPZA6xEREsqr6QrV", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 30, "entitlementId": "WNrAjDwN5aVXtBpo"}, "type": "REVOKE_ENTITLEMENT"}, {"creditPayload": {"balanceOrigin": "Playstation", "count": 75, "currencyCode": "kNCi1TvENGBLAAOd", "expireAt": "1989-11-21T00:00:00Z"}, "debitPayload": {"count": 69, "currencyCode": "z3fqjsbSRrpfww4V", "walletPlatform": "Epic"}, "fulFillItemPayload": {"count": 100, "entitlementOrigin": "GooglePlay", "itemIdentity": "1PFomjulYAwuxPvQ", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 98, "entitlementId": "PRRguTudbjcvZ1LG"}, "type": "FULFILL_ITEM"}], "userId": "PtwsOnJdD0Gh0ij5"}, {"operations": [{"creditPayload": {"balanceOrigin": "GooglePlay", "count": 28, "currencyCode": "iUVlIlXR81XXhzJq", "expireAt": "1974-12-25T00:00:00Z"}, "debitPayload": {"count": 11, "currencyCode": "JV4Lo5o5JdD66m32", "walletPlatform": "Steam"}, "fulFillItemPayload": {"count": 14, "entitlementOrigin": "Epic", "itemIdentity": "CGKYCQv3WSNNSQNv", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 94, "entitlementId": "OH8DxK4lM8I2iEEM"}, "type": "FULFILL_ITEM"}, {"creditPayload": {"balanceOrigin": "Nintendo", "count": 85, "currencyCode": "H6nvK43eZ0exrpeT", "expireAt": "1992-10-10T00:00:00Z"}, "debitPayload": {"count": 54, "currencyCode": "xzqXCI4bObtfZVWL", "walletPlatform": "Other"}, "fulFillItemPayload": {"count": 94, "entitlementOrigin": "Steam", "itemIdentity": "7RCN5WUXdM8fZVo7", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 52, "entitlementId": "pO4dIJqQvVMMD0NX"}, "type": "CREDIT_WALLET"}, {"creditPayload": {"balanceOrigin": "Nintendo", "count": 32, "currencyCode": "EhEv1AzYagMFhcmV", "expireAt": "1980-07-30T00:00:00Z"}, "debitPayload": {"count": 0, "currencyCode": "PgATElr1hDKBYO5O", "walletPlatform": "Other"}, "fulFillItemPayload": {"count": 10, "entitlementOrigin": "Oculus", "itemIdentity": "MItnPqpJsq0zSCSS", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 2, "entitlementId": "6ldhej0VpU891iME"}, "type": "FULFILL_ITEM"}], "userId": "6kERd4TSYqGympHY"}], "metadata": {"zLmhMPyAdU2l6h6Q": {}, "9tBxvUamAJARoMye": {}, "SpwohDm7cmnnCGtd": {}}, "needPreCheck": true, "transactionId": "ne7Uk8GpB7m678Mc", "type": "pG9eX0GnbXqsIgKZ"}' \
    > test.out 2>&1
eval_tap $? 211 'Commit' test.out

#- 212 GetTradeHistoryByCriteria
samples/cli/sample-apps Platform getTradeHistoryByCriteria \
    --namespace $AB_NAMESPACE \
    --limit '24' \
    --offset '47' \
    --status 'FAILED' \
    --type 'vGVyWS7eNjRR7pKH' \
    --userId 'aRD3PZTNRvPTUfpy' \
    > test.out 2>&1
eval_tap $? 212 'GetTradeHistoryByCriteria' test.out

#- 213 GetTradeHistoryByTransactionId
samples/cli/sample-apps Platform getTradeHistoryByTransactionId \
    --namespace $AB_NAMESPACE \
    --transactionId 'I5Qey4MRP4n595a4' \
    > test.out 2>&1
eval_tap $? 213 'GetTradeHistoryByTransactionId' test.out

#- 214 UnlockSteamUserAchievement
samples/cli/sample-apps Platform unlockSteamUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'QrQHKKSwi0jG8sfh' \
    --body '{"achievements": [{"id": "RQmH4UuZ61kQ5zQT", "value": 7}, {"id": "vpq6Sts0mYejeo0j", "value": 12}, {"id": "kLorOtiVOoI197He", "value": 14}], "steamUserId": "5yvWoDS5MgWhlcuL"}' \
    > test.out 2>&1
eval_tap $? 214 'UnlockSteamUserAchievement' test.out

#- 215 GetXblUserAchievements
samples/cli/sample-apps Platform getXblUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId 'su7sjgKQlfNjyr53' \
    --xboxUserId 't81CqvHRqKVN68US' \
    > test.out 2>&1
eval_tap $? 215 'GetXblUserAchievements' test.out

#- 216 UpdateXblUserAchievement
samples/cli/sample-apps Platform updateXblUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'WJLOc1bokNuvVFLC' \
    --body '{"achievements": [{"id": "lh4pd5nKCrb16Dt5", "percentComplete": 6}, {"id": "79ZBPIZNw1TfTjI3", "percentComplete": 89}, {"id": "t9ZXsqVCO608JQDx", "percentComplete": 14}], "serviceConfigId": "PzjxxD1hUQtnWBkt", "titleId": "RLfXqjwpfMNMsl15", "xboxUserId": "UqAq8wYucW7fQs70"}' \
    > test.out 2>&1
eval_tap $? 216 'UpdateXblUserAchievement' test.out

#- 217 AnonymizeCampaign
samples/cli/sample-apps Platform anonymizeCampaign \
    --namespace $AB_NAMESPACE \
    --userId 'm6sROjdVpn86Zb09' \
    > test.out 2>&1
eval_tap $? 217 'AnonymizeCampaign' test.out

#- 218 AnonymizeEntitlement
samples/cli/sample-apps Platform anonymizeEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'TvBNnb1zqcMSXrSs' \
    > test.out 2>&1
eval_tap $? 218 'AnonymizeEntitlement' test.out

#- 219 AnonymizeFulfillment
samples/cli/sample-apps Platform anonymizeFulfillment \
    --namespace $AB_NAMESPACE \
    --userId 'f8HCoWR2rzuwv9hg' \
    > test.out 2>&1
eval_tap $? 219 'AnonymizeFulfillment' test.out

#- 220 AnonymizeIntegration
samples/cli/sample-apps Platform anonymizeIntegration \
    --namespace $AB_NAMESPACE \
    --userId 'llI0XrzEmAxWw8X4' \
    > test.out 2>&1
eval_tap $? 220 'AnonymizeIntegration' test.out

#- 221 AnonymizeOrder
samples/cli/sample-apps Platform anonymizeOrder \
    --namespace $AB_NAMESPACE \
    --userId 'bLcnjwXacPPrOC2a' \
    > test.out 2>&1
eval_tap $? 221 'AnonymizeOrder' test.out

#- 222 AnonymizePayment
samples/cli/sample-apps Platform anonymizePayment \
    --namespace $AB_NAMESPACE \
    --userId 'lyY7WKXYQXItUDsS' \
    > test.out 2>&1
eval_tap $? 222 'AnonymizePayment' test.out

#- 223 AnonymizeRevocation
samples/cli/sample-apps Platform anonymizeRevocation \
    --namespace $AB_NAMESPACE \
    --userId '6A9GBI9Fbv8Q7Fea' \
    > test.out 2>&1
eval_tap $? 223 'AnonymizeRevocation' test.out

#- 224 AnonymizeSubscription
samples/cli/sample-apps Platform anonymizeSubscription \
    --namespace $AB_NAMESPACE \
    --userId 'OgJeL1yIfrP6Hyvz' \
    > test.out 2>&1
eval_tap $? 224 'AnonymizeSubscription' test.out

#- 225 AnonymizeWallet
samples/cli/sample-apps Platform anonymizeWallet \
    --namespace $AB_NAMESPACE \
    --userId 'yiuofXDkOHiqjp8r' \
    > test.out 2>&1
eval_tap $? 225 'AnonymizeWallet' test.out

#- 226 GetUserDLCByPlatform
samples/cli/sample-apps Platform getUserDLCByPlatform \
    --namespace $AB_NAMESPACE \
    --userId 'VKGvFS0z3pBPYZ84' \
    --type 'PSN' \
    > test.out 2>&1
eval_tap $? 226 'GetUserDLCByPlatform' test.out

#- 227 GetUserDLC
samples/cli/sample-apps Platform getUserDLC \
    --namespace $AB_NAMESPACE \
    --userId 'Ru8eaXMWx8q8sLvl' \
    --type 'PSN' \
    > test.out 2>&1
eval_tap $? 227 'GetUserDLC' test.out

#- 228 QueryUserEntitlements
samples/cli/sample-apps Platform queryUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'Y4CWJtnlnfPZ1qKN' \
    --activeOnly 'true' \
    --appType 'DLC' \
    --entitlementClazz 'OPTIONBOX' \
    --entitlementName 'tHbx6Zf77N9RX5Ao' \
    --features '["suFPdpGSRin0e7HE", "BGHV0QFmP6ImZ2a9", "BXM7802TqQt9Jntq"]' \
    --fuzzyMatchName 'true' \
    --itemId '["7qG0P5grG7cJOe5g", "MNq2scSJ4lYD2Keo", "1lhTH9Ot1QqQMbve"]' \
    --limit '79' \
    --offset '19' \
    --origin 'Nintendo' \
    > test.out 2>&1
eval_tap $? 228 'QueryUserEntitlements' test.out

#- 229 GrantUserEntitlement
samples/cli/sample-apps Platform grantUserEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'LC2EkIsUWvCJbMiB' \
    --body '[{"endDate": "1985-02-12T00:00:00Z", "grantedCode": "WJodHlUFQkeJ1pMP", "itemId": "P5pownqp9qAQ3tYY", "itemNamespace": "qgXF4csapV8O81cw", "language": "BPrf", "origin": "Oculus", "quantity": 49, "region": "geRyaLdzSxHj49Dq", "source": "REDEEM_CODE", "startDate": "1999-07-01T00:00:00Z", "storeId": "gP91Zxx9olyyHPPq"}, {"endDate": "1994-11-11T00:00:00Z", "grantedCode": "FWwH1HAges8k9Jii", "itemId": "wCRQfphGcaIPFZ2v", "itemNamespace": "Vu9pnpA6cCjzwjHN", "language": "Ft", "origin": "Oculus", "quantity": 57, "region": "hNyBxWgqRPZuHFlL", "source": "REFERRAL_BONUS", "startDate": "1991-11-22T00:00:00Z", "storeId": "LH8hSsSqtLuFTja4"}, {"endDate": "1979-02-15T00:00:00Z", "grantedCode": "u5vyik5AMQz3AkMs", "itemId": "OZ7rBxu0S65md9Ch", "itemNamespace": "eeUFFAWQfwyll9KN", "language": "fk-hyhY-781", "origin": "Playstation", "quantity": 60, "region": "EvBgoRRWuBHc4MTQ", "source": "PROMOTION", "startDate": "1977-12-09T00:00:00Z", "storeId": "ucZHBWC4plQ6grgK"}]' \
    > test.out 2>&1
eval_tap $? 229 'GrantUserEntitlement' test.out

#- 230 GetUserAppEntitlementByAppId
samples/cli/sample-apps Platform getUserAppEntitlementByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'Gz1OmuVeOJpfdgYX' \
    --activeOnly 'false' \
    --appId 'cK7JukVvVmzD19ux' \
    > test.out 2>&1
eval_tap $? 230 'GetUserAppEntitlementByAppId' test.out

#- 231 QueryUserEntitlementsByAppType
samples/cli/sample-apps Platform queryUserEntitlementsByAppType \
    --namespace $AB_NAMESPACE \
    --userId 'BmVyehehILZziQ26' \
    --activeOnly 'false' \
    --limit '24' \
    --offset '49' \
    --appType 'GAME' \
    > test.out 2>&1
eval_tap $? 231 'QueryUserEntitlementsByAppType' test.out

#- 232 GetUserEntitlementByItemId
samples/cli/sample-apps Platform getUserEntitlementByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'BwYqBodSDMelpEpH' \
    --activeOnly 'false' \
    --entitlementClazz 'APP' \
    --platform '8y3CaUccWuyv8scS' \
    --itemId 'tce1EyT795Zjd7BO' \
    > test.out 2>&1
eval_tap $? 232 'GetUserEntitlementByItemId' test.out

#- 233 GetUserActiveEntitlementsByItemIds
samples/cli/sample-apps Platform getUserActiveEntitlementsByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'V0EsUm4LQSBuE6Ap' \
    --ids '["QXLKkSithiZY3iff", "PlMVTAX7RYE6NVXH", "fkdoUN0a52SXvc6l"]' \
    --platform 'k6lA5kL9YMNIyQhB' \
    > test.out 2>&1
eval_tap $? 233 'GetUserActiveEntitlementsByItemIds' test.out

#- 234 GetUserEntitlementBySku
samples/cli/sample-apps Platform getUserEntitlementBySku \
    --namespace $AB_NAMESPACE \
    --userId 'PJioyoUTPsha9IZC' \
    --activeOnly 'false' \
    --entitlementClazz 'APP' \
    --platform 'd4aU94QdGMe0W5AA' \
    --sku 'YyTasgnS7NgoUaIv' \
    > test.out 2>&1
eval_tap $? 234 'GetUserEntitlementBySku' test.out

#- 235 ExistsAnyUserActiveEntitlement
samples/cli/sample-apps Platform existsAnyUserActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'z2Z21jFC0nfmuUM8' \
    --appIds '["GGLv3wZkueJFsE2e", "1KF5SdS5CQV5gbmO", "t4NQ600mj0jIKRBO"]' \
    --itemIds '["3ferYVT6NHflvldL", "bSiVKTy2drVl6nou", "g7uCN5YUratEEI5e"]' \
    --platform 'txSaS1ioLk6s2UoK' \
    --skus '["mCI7J55moKjw8bfR", "w5uyc7gyA5jYDrLx", "m6o7jXRShN9UQjy1"]' \
    > test.out 2>&1
eval_tap $? 235 'ExistsAnyUserActiveEntitlement' test.out

#- 236 ExistsAnyUserActiveEntitlementByItemIds
samples/cli/sample-apps Platform existsAnyUserActiveEntitlementByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'JEeSD2OJs42hT3dz' \
    --platform 'ngl6ZGHNNx4QOLYt' \
    --itemIds '["hzElME5OZ72ZVRMl", "20BuEML5ASTahCdn", "TXzTCOfjlIObJ1XC"]' \
    > test.out 2>&1
eval_tap $? 236 'ExistsAnyUserActiveEntitlementByItemIds' test.out

#- 237 GetUserAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform getUserAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'Z4oiY2HuzZmqelky' \
    --appId 'pqDKGFeYYOkqzrLt' \
    > test.out 2>&1
eval_tap $? 237 'GetUserAppEntitlementOwnershipByAppId' test.out

#- 238 GetUserEntitlementOwnershipByItemId
samples/cli/sample-apps Platform getUserEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --userId '6cY0GHfdSeCyJrad' \
    --entitlementClazz 'APP' \
    --platform 'WVvviXBUvsuTXTDf' \
    --itemId '1JXC1F6c51isBy2v' \
    > test.out 2>&1
eval_tap $? 238 'GetUserEntitlementOwnershipByItemId' test.out

#- 239 GetUserEntitlementOwnershipByItemIds
samples/cli/sample-apps Platform getUserEntitlementOwnershipByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'kqOr5wQ9kWUfMn3B' \
    --ids '["pj3kV7LQCSEV7BCS", "jJX2HBfi0lZ7LIQK", "Zs0kFod5X477Pg8P"]' \
    --platform 'mznmQsuPCCWCab5i' \
    > test.out 2>&1
eval_tap $? 239 'GetUserEntitlementOwnershipByItemIds' test.out

#- 240 GetUserEntitlementOwnershipBySku
samples/cli/sample-apps Platform getUserEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --userId 'yTwuastvt6e9XP52' \
    --entitlementClazz 'SUBSCRIPTION' \
    --platform 'Pcq9vLGvUicxPAkA' \
    --sku '2sEZTpf2mnD9Yi0N' \
    > test.out 2>&1
eval_tap $? 240 'GetUserEntitlementOwnershipBySku' test.out

#- 241 RevokeAllEntitlements
samples/cli/sample-apps Platform revokeAllEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'DxfUdD4Xg655wiEd' \
    > test.out 2>&1
eval_tap $? 241 'RevokeAllEntitlements' test.out

#- 242 RevokeUserEntitlements
samples/cli/sample-apps Platform revokeUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'MDxnUQSMU8GMppWB' \
    --entitlementIds 'mTSTha2fGc38uDsX' \
    > test.out 2>&1
eval_tap $? 242 'RevokeUserEntitlements' test.out

#- 243 GetUserEntitlement
samples/cli/sample-apps Platform getUserEntitlement \
    --entitlementId 'OmYc1cZ2dBTuKkdg' \
    --namespace $AB_NAMESPACE \
    --userId '5Hv2gMfrKqnPS9Mz' \
    > test.out 2>&1
eval_tap $? 243 'GetUserEntitlement' test.out

#- 244 UpdateUserEntitlement
samples/cli/sample-apps Platform updateUserEntitlement \
    --entitlementId 'FiN6dbt4avjguKvO' \
    --namespace $AB_NAMESPACE \
    --userId 'aPqdEAp911OVt6UV' \
    --body '{"endDate": "1982-07-04T00:00:00Z", "nullFieldList": ["rToY4DU9aWlhcXhb", "OlmeGJ4g5Vnnu0rY", "X95fePpgSIHvFaZx"], "origin": "IOS", "reason": "Zxa9WmLQd6LPoUVK", "startDate": "1982-12-08T00:00:00Z", "status": "INACTIVE", "useCount": 6}' \
    > test.out 2>&1
eval_tap $? 244 'UpdateUserEntitlement' test.out

#- 245 ConsumeUserEntitlement
samples/cli/sample-apps Platform consumeUserEntitlement \
    --entitlementId 'YXgr4ossLngH1ncJ' \
    --namespace $AB_NAMESPACE \
    --userId 'FpnqsnLDxsHmQzK2' \
    --body '{"options": ["7v5o7xMq8STQnzlt", "b69r37kBqd1vSpBD", "3QTrrSCK48SbYi7s"], "platform": "CAODtSbUawBtigv8", "requestId": "pUCcY0ddpvUHYs7y", "useCount": 56}' \
    > test.out 2>&1
eval_tap $? 245 'ConsumeUserEntitlement' test.out

#- 246 DisableUserEntitlement
samples/cli/sample-apps Platform disableUserEntitlement \
    --entitlementId 'KqZXXYlNlfQti7vz' \
    --namespace $AB_NAMESPACE \
    --userId 'UgW08nW9jGRJLQG8' \
    > test.out 2>&1
eval_tap $? 246 'DisableUserEntitlement' test.out

#- 247 EnableUserEntitlement
samples/cli/sample-apps Platform enableUserEntitlement \
    --entitlementId 'WXUDxUtGMvrstEsA' \
    --namespace $AB_NAMESPACE \
    --userId 'B8qocTEoBaSoRk0D' \
    > test.out 2>&1
eval_tap $? 247 'EnableUserEntitlement' test.out

#- 248 GetUserEntitlementHistories
samples/cli/sample-apps Platform getUserEntitlementHistories \
    --entitlementId 'O1AZeGEo3xXxsfCk' \
    --namespace $AB_NAMESPACE \
    --userId 'OlAyI9tUtpPjJEPN' \
    > test.out 2>&1
eval_tap $? 248 'GetUserEntitlementHistories' test.out

#- 249 RevokeUserEntitlement
samples/cli/sample-apps Platform revokeUserEntitlement \
    --entitlementId '3fXlmjdKdyz5snbc' \
    --namespace $AB_NAMESPACE \
    --userId 'E0B6MlFXUfnZdaHJ' \
    > test.out 2>&1
eval_tap $? 249 'RevokeUserEntitlement' test.out

#- 250 RevokeUserEntitlementByUseCount
samples/cli/sample-apps Platform revokeUserEntitlementByUseCount \
    --entitlementId 'FmCsIxfBG4E68pt7' \
    --namespace $AB_NAMESPACE \
    --userId 'Uw9v6lbU2OlofS04' \
    --body '{"reason": "13mawJ9SGmphatjb", "useCount": 28}' \
    > test.out 2>&1
eval_tap $? 250 'RevokeUserEntitlementByUseCount' test.out

#- 251 PreCheckRevokeUserEntitlementByUseCount
samples/cli/sample-apps Platform preCheckRevokeUserEntitlementByUseCount \
    --entitlementId '0ZC0gKbCRjDLRrki' \
    --namespace $AB_NAMESPACE \
    --userId '66zf0kv5SaDVI0E7' \
    --quantity '73' \
    > test.out 2>&1
eval_tap $? 251 'PreCheckRevokeUserEntitlementByUseCount' test.out

#- 252 RevokeUseCount
eval_tap 0 252 'RevokeUseCount # SKIP deprecated' test.out

#- 253 SellUserEntitlement
samples/cli/sample-apps Platform sellUserEntitlement \
    --entitlementId 'InLXH48OYUsgaJJL' \
    --namespace $AB_NAMESPACE \
    --userId 'rqGdXpKyp6qF7y50' \
    --body '{"platform": "DQuvt8S7kZXLZ2yI", "requestId": "8ve24M6bWyjxbVy7", "useCount": 89}' \
    > test.out 2>&1
eval_tap $? 253 'SellUserEntitlement' test.out

#- 254 FulfillItem
samples/cli/sample-apps Platform fulfillItem \
    --namespace $AB_NAMESPACE \
    --userId '8Kv270jlZAh0nJ33' \
    --body '{"duration": 74, "endDate": "1992-12-28T00:00:00Z", "entitlementOrigin": "Steam", "itemId": "Zw7reB6F8ztaZ3Qr", "itemSku": "MzMcK4osFidf9Gcf", "language": "MuwLEdaLCX0xInte", "metadata": {"UvcRae4hAcy8rRGU": {}, "BCyFN7mRgmJE4XrB": {}, "rgrmhQD6f5k1Y5Ou": {}}, "order": {"currency": {"currencyCode": "ck5vHT5qScpPW2Tz", "currencySymbol": "rjHpeO2HgpCxG4w6", "currencyType": "VIRTUAL", "decimals": 25, "namespace": "Dguvsu76d05CFNs5"}, "ext": {"cYdn34ZDKFE8LlOF": {}, "SMldGb1gaD2sHlF0": {}, "NnvKyD1S9XauBFAj": {}}, "free": false}, "orderNo": "dL7udBvcxxwE1yBo", "origin": "Steam", "overrideBundleItemQty": {"M1jqR2a65z5lqdfM": 61, "NGkt5stjgce9xKu0": 95, "xVOlCEmt2LuDZTgx": 65}, "quantity": 49, "region": "qZONdTs4fU3T6jcE", "source": "PROMOTION", "startDate": "1990-07-17T00:00:00Z", "storeId": "dCla5sVgk8aXeMaL"}' \
    > test.out 2>&1
eval_tap $? 254 'FulfillItem' test.out

#- 255 RedeemCode
samples/cli/sample-apps Platform redeemCode \
    --namespace $AB_NAMESPACE \
    --userId 'Elp9OWf0LzIesEVK' \
    --body '{"code": "g7hc1jg3uEq1AkpZ", "language": "Nh-YwhP", "region": "KCMIOlRNjXzHFduS"}' \
    > test.out 2>&1
eval_tap $? 255 'RedeemCode' test.out

#- 256 PreCheckFulfillItem
samples/cli/sample-apps Platform preCheckFulfillItem \
    --namespace $AB_NAMESPACE \
    --userId 'sEkHQMl03RrIl45J' \
    --body '{"itemId": "Uo0ZkMm3GCo8rcFe", "itemSku": "Gwbg8Z2paIzA42af", "quantity": 3}' \
    > test.out 2>&1
eval_tap $? 256 'PreCheckFulfillItem' test.out

#- 257 FulfillRewards
samples/cli/sample-apps Platform fulfillRewards \
    --namespace $AB_NAMESPACE \
    --userId 'nqXLUHkfyIQ0LVrz' \
    --body '{"entitlementOrigin": "Xbox", "metadata": {"77UPtiILpRkkJtth": {}, "H1LZAdlvTzwX3Wv0": {}, "mYAd0rJEv1ZxQHON": {}}, "origin": "Xbox", "rewards": [{"currency": {"currencyCode": "xM0oik5rbBF5zBAc", "namespace": "uXDVotwppU6pIlGC"}, "item": {"itemId": "p34C9Gfci35Th0ia", "itemSku": "7ur1XK81sxnReNLn", "itemType": "KxLLVBLHJfodKqmb"}, "quantity": 54, "type": "ITEM"}, {"currency": {"currencyCode": "jq7qil5Rd6lFp4Av", "namespace": "XK2GLNdSlVFUGWl7"}, "item": {"itemId": "7xxT7QIGmRSgOuN8", "itemSku": "9fLarnnfPYfdOgdM", "itemType": "Exwwa5u61IBsF8Es"}, "quantity": 43, "type": "ITEM"}, {"currency": {"currencyCode": "bA6lKS51WCMlTKha", "namespace": "nQq4Z360DPHXT5Pz"}, "item": {"itemId": "wtIUhY4GA9DocRMS", "itemSku": "1uSiendGcIVLCow8", "itemType": "8gyB5uReh5rjz1LP"}, "quantity": 73, "type": "ITEM"}], "source": "DLC", "transactionId": "PJh76b1zcxa5CFMs"}' \
    > test.out 2>&1
eval_tap $? 257 'FulfillRewards' test.out

#- 258 QueryUserIAPOrders
samples/cli/sample-apps Platform queryUserIAPOrders \
    --namespace $AB_NAMESPACE \
    --userId 'R2LhXFrAXDcUhvx0' \
    --endTime 'GdcTlVRH2DwlcGH6' \
    --limit '17' \
    --offset '82' \
    --productId '7cst5dukaCQoCclA' \
    --startTime 'rHyPsEq1WYWnxWbN' \
    --status 'FULFILLED' \
    --type 'PLAYSTATION' \
    > test.out 2>&1
eval_tap $? 258 'QueryUserIAPOrders' test.out

#- 259 QueryAllUserIAPOrders
samples/cli/sample-apps Platform queryAllUserIAPOrders \
    --namespace $AB_NAMESPACE \
    --userId 'roN5RgVwm4egtBJl' \
    > test.out 2>&1
eval_tap $? 259 'QueryAllUserIAPOrders' test.out

#- 260 QueryUserIAPConsumeHistory
samples/cli/sample-apps Platform queryUserIAPConsumeHistory \
    --namespace $AB_NAMESPACE \
    --userId 'phDIW1b4ogH18EAx' \
    --endTime 'aSfxNCxXLMlMY4AY' \
    --limit '15' \
    --offset '65' \
    --startTime 'v8fQbKz5pWXnx9EQ' \
    --status 'SUCCESS' \
    --type 'APPLE' \
    > test.out 2>&1
eval_tap $? 260 'QueryUserIAPConsumeHistory' test.out

#- 261 MockFulfillIAPItem
samples/cli/sample-apps Platform mockFulfillIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'wBkTCWLMvrlCuLe8' \
    --body '{"itemIdentityType": "ITEM_SKU", "language": "IAgL_Sjkv", "productId": "vw3lFzJESzwYcfFH", "region": "bkPSDcDGex58gKGs", "transactionId": "ruoLh7wVTir5Bi0U", "type": "EPICGAMES"}' \
    > test.out 2>&1
eval_tap $? 261 'MockFulfillIAPItem' test.out

#- 262 QueryUserOrders
samples/cli/sample-apps Platform queryUserOrders \
    --namespace $AB_NAMESPACE \
    --userId '15VzgtifB10xMfxj' \
    --itemId 'LGBqQHzr3eMZ6Rhb' \
    --limit '38' \
    --offset '67' \
    --status 'REFUND_FAILED' \
    > test.out 2>&1
eval_tap $? 262 'QueryUserOrders' test.out

#- 263 AdminCreateUserOrder
samples/cli/sample-apps Platform adminCreateUserOrder \
    --namespace $AB_NAMESPACE \
    --userId 'uPwmkXki60WFikEE' \
    --body '{"currencyCode": "CeMJwJ4hZTo9gKzB", "currencyNamespace": "hzYC5Y6QGPaioPUB", "discountedPrice": 27, "ext": {"7jzcvFsmokEbDDez": {}, "QzcRV8q7lVQmMkwn": {}, "KDiUXprRSkonPowl": {}}, "itemId": "gTNh3FrwZ5vwL3Ku", "language": "I6NhkC14tA5MklS2", "options": {"skipPriceValidation": false}, "platform": "Nintendo", "price": 29, "quantity": 83, "region": "FhkENPeQmvNKztcS", "returnUrl": "dCeoEy802Gxcnr5t", "sandbox": true, "sectionId": "x4EsGj2fJMVGBS7i"}' \
    > test.out 2>&1
eval_tap $? 263 'AdminCreateUserOrder' test.out

#- 264 CountOfPurchasedItem
samples/cli/sample-apps Platform countOfPurchasedItem \
    --namespace $AB_NAMESPACE \
    --userId 'zY7LyhABacjsrMM6' \
    --itemId 'OnOGgT8nKhypB62h' \
    > test.out 2>&1
eval_tap $? 264 'CountOfPurchasedItem' test.out

#- 265 GetUserOrder
samples/cli/sample-apps Platform getUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo '6XruSsFqVcMX8LTZ' \
    --userId 'd5tRn96nskVuHLps' \
    > test.out 2>&1
eval_tap $? 265 'GetUserOrder' test.out

#- 266 UpdateUserOrderStatus
samples/cli/sample-apps Platform updateUserOrderStatus \
    --namespace $AB_NAMESPACE \
    --orderNo 'MZ6QUInXn3k7O98l' \
    --userId 'mkwfZiiAeiYb3Czq' \
    --body '{"status": "FULFILLED", "statusReason": "J3kliWhBlM7JgtAs"}' \
    > test.out 2>&1
eval_tap $? 266 'UpdateUserOrderStatus' test.out

#- 267 FulfillUserOrder
samples/cli/sample-apps Platform fulfillUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'XFy6aqTsQ2bwj6Pi' \
    --userId 'nXyZAPdDLD3dpqwT' \
    > test.out 2>&1
eval_tap $? 267 'FulfillUserOrder' test.out

#- 268 GetUserOrderGrant
samples/cli/sample-apps Platform getUserOrderGrant \
    --namespace $AB_NAMESPACE \
    --orderNo 'XDQE5qgA5T397jhY' \
    --userId 'Fx7IIGflvaVsKkgK' \
    > test.out 2>&1
eval_tap $? 268 'GetUserOrderGrant' test.out

#- 269 GetUserOrderHistories
samples/cli/sample-apps Platform getUserOrderHistories \
    --namespace $AB_NAMESPACE \
    --orderNo 'r4hS2KPKcwD8iHOv' \
    --userId '9lZ9rlpF8Vvo9sRY' \
    > test.out 2>&1
eval_tap $? 269 'GetUserOrderHistories' test.out

#- 270 ProcessUserOrderNotification
samples/cli/sample-apps Platform processUserOrderNotification \
    --namespace $AB_NAMESPACE \
    --orderNo 'GFUHNHz8eN8bk60g' \
    --userId 'irbW8eYvmfYD6Kuy' \
    --body '{"additionalData": {"cardSummary": "K2gnb9WguwFbfeEN"}, "authorisedTime": "1998-10-14T00:00:00Z", "chargebackReversedTime": "1985-10-24T00:00:00Z", "chargebackTime": "1976-01-16T00:00:00Z", "chargedTime": "1987-02-07T00:00:00Z", "createdTime": "1999-12-14T00:00:00Z", "currency": {"currencyCode": "LguNgMd8uUOPUP8Y", "currencySymbol": "WdTC3suUV1jaodO3", "currencyType": "VIRTUAL", "decimals": 82, "namespace": "bjKJuUTPXRgIIyRC"}, "customParameters": {"14zUYcj9lrHccTf8": {}, "BvstT45w1McvKh0d": {}, "fvxCk0HMAvKv18hm": {}}, "extOrderNo": "YMYwZHmsUrWbpMBN", "extTxId": "72KxHmKBwPqvvHp7", "extUserId": "Ez37JFHejh7IDmjk", "issuedAt": "1994-10-29T00:00:00Z", "metadata": {"tJLVfc7gk4katCw6": "FsTnkVV3fP1PvnrQ", "HipYAwZCMOOjARuR": "ZxmeixgTrRwW9Bqy", "FBRXHQ8uK1gZQULY": "czfQT3X9GW9NX3IP"}, "namespace": "kZLS6HSXoDt86PkN", "nonceStr": "Y8DPUs497iihsOs9", "paymentMethod": "eGXDTaKsGCG5HiVv", "paymentMethodFee": 27, "paymentOrderNo": "a3rbFGRW1aJSqU9V", "paymentProvider": "WALLET", "paymentProviderFee": 66, "paymentStationUrl": "35MzxLFoXGhcUEKv", "price": 61, "refundedTime": "1988-03-11T00:00:00Z", "salesTax": 30, "sandbox": false, "sku": "56QqA7W7GjIWDQyN", "status": "AUTHORISE_FAILED", "statusReason": "V1JmHH3NVctxp3Fr", "subscriptionId": "JmWoO3ZeIurSVRQJ", "subtotalPrice": 45, "targetNamespace": "TOfSF7QF0Gx6LOxQ", "targetUserId": "eIF8TTmi06g2EdQ1", "tax": 73, "totalPrice": 83, "totalTax": 0, "txEndTime": "1972-03-16T00:00:00Z", "type": "q7sZa4GCmOSYNvcj", "userId": "LYlraZsXVjIeUCia", "vat": 11}' \
    > test.out 2>&1
eval_tap $? 270 'ProcessUserOrderNotification' test.out

#- 271 DownloadUserOrderReceipt
samples/cli/sample-apps Platform downloadUserOrderReceipt \
    --namespace $AB_NAMESPACE \
    --orderNo 'HHJo6OG3Y2g74Vhi' \
    --userId 'XSgNnYn2tnDAQK3z' \
    > test.out 2>&1
eval_tap $? 271 'DownloadUserOrderReceipt' test.out

#- 272 CreateUserPaymentOrder
samples/cli/sample-apps Platform createUserPaymentOrder \
    --namespace $AB_NAMESPACE \
    --userId 'wvM0IoigJ0fV8Pf9' \
    --body '{"currencyCode": "rBsS8RE0M2GM3sh8", "currencyNamespace": "KAX9mZPlx1xBYBiU", "customParameters": {"qiQMczltgxMezqMc": {}, "8UzFPqnZJvpKp4w7": {}, "CIW3kVPWfGh12C7X": {}}, "description": "Q3bkjdCa72Nm24bR", "extOrderNo": "ljcflivevWtYnELI", "extUserId": "YtLDtzV6ecgR5SWT", "itemType": "INGAMEITEM", "language": "nbNw-XIhy-294", "metadata": {"rhN1zDXCP3VDoCNW": "KzCxvI64F1fUlCyy", "HitKXXueDfBMdVPv": "gZtqDzhq6EGpNIyG", "lmsT71cxW71yE3i8": "Lr3EuMpa1cKxtH4l"}, "notifyUrl": "e59n7qkGGsLG4Hma", "omitNotification": false, "platform": "UzTRqK1FNiRxWztX", "price": 60, "recurringPaymentOrderNo": "IUCPvsY7V2GynRGW", "region": "dJHMCHoY8leUF9LN", "returnUrl": "Qw7VaqXi9Unb59G4", "sandbox": false, "sku": "6Koou1ifyAy0gqaN", "subscriptionId": "7yOb1mrw7IlEyb5b", "title": "3RzzFXKOeTyArRxW"}' \
    > test.out 2>&1
eval_tap $? 272 'CreateUserPaymentOrder' test.out

#- 273 RefundUserPaymentOrder
samples/cli/sample-apps Platform refundUserPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'BeXjEyelhY8oMxoq' \
    --userId 'yTR1QJ07JC5mIzId' \
    --body '{"description": "0NQspUz2PdzFLbQr"}' \
    > test.out 2>&1
eval_tap $? 273 'RefundUserPaymentOrder' test.out

#- 274 ApplyUserRedemption
samples/cli/sample-apps Platform applyUserRedemption \
    --namespace $AB_NAMESPACE \
    --userId '89MfPBd2xzXeCqLk' \
    --body '{"code": "oHVEdeuJqBCwzDIv", "orderNo": "X3npUW5lNa6Fu65U"}' \
    > test.out 2>&1
eval_tap $? 274 'ApplyUserRedemption' test.out

#- 275 DoRevocation
samples/cli/sample-apps Platform doRevocation \
    --namespace $AB_NAMESPACE \
    --userId 'inUjc2aoE6GDmfOA' \
    --body '{"meta": {"2T8lUgklnsX0ZjBD": {}, "hiK8zjEw6hecZBF2": {}, "yrlZRNLNFVy5Nc0H": {}}, "revokeEntries": [{"currency": {"balanceOrigin": "IOS", "currencyCode": "uBaFGS51xo5oEDNZ", "namespace": "AWxuaFC5IcC3qAUZ"}, "entitlement": {"entitlementId": "lxgXoX3LEOh1oi8v"}, "item": {"entitlementOrigin": "System", "itemIdentity": "eCvovkJlkhWsoa9C", "itemIdentityType": "ITEM_SKU", "origin": "Nintendo"}, "quantity": 55, "type": "ITEM"}, {"currency": {"balanceOrigin": "Xbox", "currencyCode": "4s3mxaKJAJFMfnYh", "namespace": "XH14rseDgabcHhW6"}, "entitlement": {"entitlementId": "plQ0rcXpYranks4q"}, "item": {"entitlementOrigin": "System", "itemIdentity": "dhKzvYHtxaKuDcng", "itemIdentityType": "ITEM_ID", "origin": "System"}, "quantity": 55, "type": "ITEM"}, {"currency": {"balanceOrigin": "Steam", "currencyCode": "BB07jl36polHLP4t", "namespace": "dTHxq4gr0AX5u6Dx"}, "entitlement": {"entitlementId": "QbHDlDN75s92jWbs"}, "item": {"entitlementOrigin": "Steam", "itemIdentity": "VbjK5uDutFa1iqdJ", "itemIdentityType": "ITEM_ID", "origin": "Other"}, "quantity": 81, "type": "ENTITLEMENT"}], "source": "IAP", "transactionId": "4zN14uWv4iV3ZJrx"}' \
    > test.out 2>&1
eval_tap $? 275 'DoRevocation' test.out

#- 276 RegisterXblSessions
samples/cli/sample-apps Platform registerXblSessions \
    --namespace $AB_NAMESPACE \
    --userId 'X6JzMTxt6HVrVnR1' \
    --body '{"gameSessionId": "786POA25tfzVq80b", "payload": {"qfEBcwyxoiLvZfow": {}, "qT5ZAMS17S2crRUM": {}, "5JZwWBksPClNdkzW": {}}, "scid": "b6gi7pTqUVio8DcN", "sessionTemplateName": "jiOiJfjrPjWzekDk"}' \
    > test.out 2>&1
eval_tap $? 276 'RegisterXblSessions' test.out

#- 277 QueryUserSubscriptions
samples/cli/sample-apps Platform queryUserSubscriptions \
    --namespace $AB_NAMESPACE \
    --userId 'TY4WsIREfemh8grf' \
    --chargeStatus 'NEVER' \
    --itemId 'qCPCQe77Xg1832dy' \
    --limit '86' \
    --offset '73' \
    --sku 'UURHi8kmOc1BD6RN' \
    --status 'INIT' \
    --subscribedBy 'PLATFORM' \
    > test.out 2>&1
eval_tap $? 277 'QueryUserSubscriptions' test.out

#- 278 GetUserSubscriptionActivities
samples/cli/sample-apps Platform getUserSubscriptionActivities \
    --namespace $AB_NAMESPACE \
    --userId 'wMtzDcRlLmz0GttS' \
    --excludeSystem 'true' \
    --limit '75' \
    --offset '46' \
    --subscriptionId 'gCJ3cazDodogUurK' \
    > test.out 2>&1
eval_tap $? 278 'GetUserSubscriptionActivities' test.out

#- 279 PlatformSubscribeSubscription
samples/cli/sample-apps Platform platformSubscribeSubscription \
    --namespace $AB_NAMESPACE \
    --userId 'c2rsGcSIVycnTaxd' \
    --body '{"grantDays": 7, "itemId": "7V70kw2JdMpxZkDS", "language": "7sjfoxeRondtjTjt", "reason": "zsdMNSdHICVxC9Sg", "region": "e1cDcQexCPovz2hc", "source": "dmJ1YItszajbHBoN"}' \
    > test.out 2>&1
eval_tap $? 279 'PlatformSubscribeSubscription' test.out

#- 280 CheckUserSubscriptionSubscribableByItemId
samples/cli/sample-apps Platform checkUserSubscriptionSubscribableByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'S9bUscuk3n2Ynl5S' \
    --itemId 'ZCRm93eMKG6zc4TX' \
    > test.out 2>&1
eval_tap $? 280 'CheckUserSubscriptionSubscribableByItemId' test.out

#- 281 GetUserSubscription
samples/cli/sample-apps Platform getUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'xGxaJs1DPtq55k8x' \
    --userId 'pWyodOmnKjJ5t8Jv' \
    > test.out 2>&1
eval_tap $? 281 'GetUserSubscription' test.out

#- 282 DeleteUserSubscription
samples/cli/sample-apps Platform deleteUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'cSJ5e3PzzJWoSari' \
    --userId 'suknsrnBSKsFYV1C' \
    > test.out 2>&1
eval_tap $? 282 'DeleteUserSubscription' test.out

#- 283 CancelSubscription
samples/cli/sample-apps Platform cancelSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId '6VD817iBgIeMgkGz' \
    --userId 'sayFfLqUVjdutDzU' \
    --force 'true' \
    --body '{"immediate": false, "reason": "hEhofDJSJobzRi6h"}' \
    > test.out 2>&1
eval_tap $? 283 'CancelSubscription' test.out

#- 284 GrantDaysToSubscription
samples/cli/sample-apps Platform grantDaysToSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'gfTQ3U2BvmVHhCtr' \
    --userId 'zYDWQ1R5iavEn6QG' \
    --body '{"grantDays": 14, "reason": "rsvAzpOYtcXxIah7"}' \
    > test.out 2>&1
eval_tap $? 284 'GrantDaysToSubscription' test.out

#- 285 GetUserSubscriptionBillingHistories
samples/cli/sample-apps Platform getUserSubscriptionBillingHistories \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'iDmOql3cnk5R9A6t' \
    --userId 'J0OXXQSHvVu5Nh4w' \
    --excludeFree 'true' \
    --limit '19' \
    --offset '2' \
    > test.out 2>&1
eval_tap $? 285 'GetUserSubscriptionBillingHistories' test.out

#- 286 ProcessUserSubscriptionNotification
samples/cli/sample-apps Platform processUserSubscriptionNotification \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'i8aSYZmtLtWBVWB8' \
    --userId '4sIusSDIOwCyDtik' \
    --body '{"additionalData": {"cardSummary": "9yMyrCUVtlikeQrx"}, "authorisedTime": "1993-03-05T00:00:00Z", "chargebackReversedTime": "1980-04-28T00:00:00Z", "chargebackTime": "1998-11-04T00:00:00Z", "chargedTime": "1982-04-07T00:00:00Z", "createdTime": "1984-09-03T00:00:00Z", "currency": {"currencyCode": "reMpCk7jgvQHueg3", "currencySymbol": "603H5gBCkaRk3BRG", "currencyType": "VIRTUAL", "decimals": 87, "namespace": "4xyOW2JqJKsOyP7P"}, "customParameters": {"qtF7S8zH1UmebvCY": {}, "X9whhflcqe8gbVqJ": {}, "YPHwfcU7923rBhap": {}}, "extOrderNo": "fexEu33NfIbL8D66", "extTxId": "mNF1dxqgG6SKUbX8", "extUserId": "IFw8MK1ebtuoOAZW", "issuedAt": "1983-05-30T00:00:00Z", "metadata": {"0KtWOK4YwzelTBMq": "h6rhzEDeg904ys6v", "VTfDl8rGVm1HAfu4": "u5Kkm9pV1N9zCsdm", "e3zrZa2nMqFaNdqt": "E5G2cLQLiOZq5C4b"}, "namespace": "zcHb3Urx1ZNzshgB", "nonceStr": "wSrK1x8VssQwjQl5", "paymentMethod": "IUShPzEERnP78KJp", "paymentMethodFee": 25, "paymentOrderNo": "gg1LxSSIXJWsPzBC", "paymentProvider": "ADYEN", "paymentProviderFee": 55, "paymentStationUrl": "BdcuuZVN3rZbKGtz", "price": 39, "refundedTime": "1973-12-03T00:00:00Z", "salesTax": 34, "sandbox": false, "sku": "eCKShhZGdhp8APo4", "status": "REFUND_FAILED", "statusReason": "LRUugiT94Fbf7KrQ", "subscriptionId": "6JXO44jXOC3M7WjT", "subtotalPrice": 68, "targetNamespace": "RkSXy8epHjHSJXwv", "targetUserId": "5ZBP9BXNDethed9x", "tax": 48, "totalPrice": 46, "totalTax": 35, "txEndTime": "1977-03-08T00:00:00Z", "type": "2yzi3AmpkxgBKQpG", "userId": "zF2SfQJ0TVqgyyny", "vat": 13}' \
    > test.out 2>&1
eval_tap $? 286 'ProcessUserSubscriptionNotification' test.out

#- 287 AcquireUserTicket
samples/cli/sample-apps Platform acquireUserTicket \
    --boothName 'usLHbdqls6LSHtog' \
    --namespace $AB_NAMESPACE \
    --userId 'ba0tfQuqRKsYMsNn' \
    --body '{"count": 39, "orderNo": "LbtqNhnSYRryPvWO"}' \
    > test.out 2>&1
eval_tap $? 287 'AcquireUserTicket' test.out

#- 288 QueryUserCurrencyWallets
samples/cli/sample-apps Platform queryUserCurrencyWallets \
    --namespace $AB_NAMESPACE \
    --userId 'goarqGIEMlAAfxE5' \
    > test.out 2>&1
eval_tap $? 288 'QueryUserCurrencyWallets' test.out

#- 289 DebitUserWalletByCurrencyCode
samples/cli/sample-apps Platform debitUserWalletByCurrencyCode \
    --currencyCode 'aTiHVrSonW6rhNdX' \
    --namespace $AB_NAMESPACE \
    --userId 'IbmvztRhEboZ9nFE' \
    --body '{"allowOverdraft": false, "amount": 30, "balanceOrigin": "Steam", "balanceSource": "TRADE", "metadata": {"6HGKuaY0guclBPro": {}, "a4gppfPxI6QJ5sCx": {}, "mDQqcEbwFt6rlxFV": {}}, "reason": "yXrIEdl1jOXYz9kE"}' \
    > test.out 2>&1
eval_tap $? 289 'DebitUserWalletByCurrencyCode' test.out

#- 290 ListUserCurrencyTransactions
samples/cli/sample-apps Platform listUserCurrencyTransactions \
    --currencyCode 'zcrN7aORHpQbdzMz' \
    --namespace $AB_NAMESPACE \
    --userId 'ps7M6Flj6FEWcUA4' \
    --limit '91' \
    --offset '24' \
    > test.out 2>&1
eval_tap $? 290 'ListUserCurrencyTransactions' test.out

#- 291 CheckBalance
samples/cli/sample-apps Platform checkBalance \
    --currencyCode 'BNXdgwulSulvGwIi' \
    --namespace $AB_NAMESPACE \
    --userId 'AXmh0Vr2e8YEbHXS' \
    --request '{"amount": 45, "debitBalanceSource": "IAP_REVOCATION", "metadata": {"23oXdziRL64VrsP1": {}, "xOYxngnekbU92H9K": {}, "eoLeyzpiyLxllmoL": {}}, "reason": "EUbKRkeTqNKbQitE", "walletPlatform": "GooglePlay"}' \
    > test.out 2>&1
eval_tap $? 291 'CheckBalance' test.out

#- 292 CheckWallet
eval_tap 0 292 'CheckWallet # SKIP deprecated' test.out

#- 293 CreditUserWallet
samples/cli/sample-apps Platform creditUserWallet \
    --currencyCode 'pVyJ0c0cehJqut1S' \
    --namespace $AB_NAMESPACE \
    --userId '0WfmANPfpsZsBnPY' \
    --body '{"amount": 73, "expireAt": "1987-11-16T00:00:00Z", "metadata": {"lfr0dKas9akQg5Em": {}, "fIv8U0BQOvzqQhtq": {}, "64KziGrL5k8lSeoP": {}}, "origin": "System", "reason": "zAf5rwYfwZWNYhQx", "source": "PROMOTION"}' \
    > test.out 2>&1
eval_tap $? 293 'CreditUserWallet' test.out

#- 294 DebitByWalletPlatform
samples/cli/sample-apps Platform debitByWalletPlatform \
    --currencyCode 'LdGmocwnmHOlKCjj' \
    --namespace $AB_NAMESPACE \
    --userId 'lF2ulpNMTvhoJ7v8' \
    --request '{"amount": 39, "debitBalanceSource": "DLC_REVOCATION", "metadata": {"CaMo8J8O55uEggUC": {}, "Yc5xSKWSGkqGjmhw": {}, "5N5E7dqbM0PHJUzJ": {}}, "reason": "joVYF9wJqblkfdst", "walletPlatform": "Playstation"}' \
    > test.out 2>&1
eval_tap $? 294 'DebitByWalletPlatform' test.out

#- 295 PayWithUserWallet
samples/cli/sample-apps Platform payWithUserWallet \
    --currencyCode 'Js9eWb4ngfYM0V9K' \
    --namespace $AB_NAMESPACE \
    --userId 'cMYTuwWEsQYZzvDP' \
    --body '{"amount": 46, "metadata": {"db3bOyWv2mjU7bpb": {}, "bMXKOG8i3igOUDUA": {}, "6ccLHwvFXFyfi4RQ": {}}, "walletPlatform": "Playstation"}' \
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
    --storeId 'xG5t2o2Sz3ohBbPS' \
    > test.out 2>&1
eval_tap $? 301 'ListViews' test.out

#- 302 CreateView
samples/cli/sample-apps Platform createView \
    --namespace $AB_NAMESPACE \
    --storeId 'i7S5DkimuzSBC8IC' \
    --body '{"displayOrder": 17, "localizations": {"m5cFlP6BNO9HqMYZ": {"description": "wO9gbANHkp9JJIut", "localExt": {"d3gk7cQs0s6TFSYb": {}, "6SOAxjpg5LISPZcm": {}, "EegDwtKflaBoc12i": {}}, "longDescription": "JYasr5ak5XdpaQtJ", "title": "gGmH7qPP68MwWNes"}, "mGR61M17gDuXBkCi": {"description": "QhqHVzXEnduK9X9U", "localExt": {"jSnrQHJEyfJ1O5Vv": {}, "CZutIJrvxog9Qh0W": {}, "SIFAFmecI2UbN1Lx": {}}, "longDescription": "nOVscWBGZRkD1nFd", "title": "gJGcz2V7ylV2w14V"}, "ms8ibfeK5MTvTQdh": {"description": "2rZaLHrYkuMmv6l8", "localExt": {"3XeE02uBox9HJIu0": {}, "OkXmvrtXfOxocmuX": {}, "5ciytCOdfUBl6T40": {}}, "longDescription": "L0fxPHVEe3x1gvgy", "title": "5aIBb2SqU5vT1EC6"}}, "name": "brpW0TQKcd06YcCs"}' \
    > test.out 2>&1
eval_tap $? 302 'CreateView' test.out

#- 303 GetView
samples/cli/sample-apps Platform getView \
    --namespace $AB_NAMESPACE \
    --viewId 'BPKGNVks6BuqqVH6' \
    --storeId 'mHhdHQGE6mfMFAd1' \
    > test.out 2>&1
eval_tap $? 303 'GetView' test.out

#- 304 UpdateView
samples/cli/sample-apps Platform updateView \
    --namespace $AB_NAMESPACE \
    --viewId 'DBwvTpUa1FUyKP3K' \
    --storeId 'b82PvGQHtGETOIyF' \
    --body '{"displayOrder": 61, "localizations": {"jFKiJy7F1GhlM6wT": {"description": "wZqpg8z0HxNNb7Aw", "localExt": {"Yo1H4MeLBFj6DxVR": {}, "yCVDzP3yxbX8Oc9A": {}, "WMrH18Waia2GCM9V": {}}, "longDescription": "o1XFVtQPw2W4FYfk", "title": "WPGXk6n2I8qXgHDd"}, "zWEcWZHFkMEU3hoe": {"description": "jZtla83Vmi8uLkz7", "localExt": {"AwmdNy1az87Vue7J": {}, "Yk9qIybxd2vFuarj": {}, "Eoka6h08lwsshOTv": {}}, "longDescription": "58yow7SjEXY9eMO0", "title": "2anvdIOoE9ohJDGU"}, "0S2d0aAq4puoufO4": {"description": "myosgkJnJ8ezlnZ0", "localExt": {"2Raueg9zPRfdFjvU": {}, "2x9vpSKMFKKqLBHi": {}, "wqTYgaJdS9ReyCb9": {}}, "longDescription": "5k6dvT9FG7Oc6cx2", "title": "gIGn8GijDlWRWcbD"}}, "name": "pTeR3ZTwC5QFnjZc"}' \
    > test.out 2>&1
eval_tap $? 304 'UpdateView' test.out

#- 305 DeleteView
samples/cli/sample-apps Platform deleteView \
    --namespace $AB_NAMESPACE \
    --viewId 'yYQEaXAvmSDgOxRV' \
    --storeId 'O4ny06cpI7FTyjWa' \
    > test.out 2>&1
eval_tap $? 305 'DeleteView' test.out

#- 306 QueryWallets
eval_tap 0 306 'QueryWallets # SKIP deprecated' test.out

#- 307 BulkCredit
samples/cli/sample-apps Platform bulkCredit \
    --namespace $AB_NAMESPACE \
    --body '[{"creditRequest": {"amount": 62, "expireAt": "1994-10-17T00:00:00Z", "metadata": {"SflA4x1srRs2sNqN": {}, "CiSL4AczuJxCVazU": {}, "3YJ8UZWcUBe6s2Cs": {}}, "origin": "GooglePlay", "reason": "spQTBRD7dslmevqM", "source": "REWARD"}, "currencyCode": "0xfMz8vU4k5HvHzf", "userIds": ["4TRxFucYphZoZZ1U", "urppboz4IYJqng8X", "QxlbmhjQ3Fnzdeor"]}, {"creditRequest": {"amount": 77, "expireAt": "1985-03-27T00:00:00Z", "metadata": {"LTyIg9oFWbZ45gPc": {}, "g3OvIQ8i6bJYucaT": {}, "VJ7QDZXqAL2xbAwd": {}}, "origin": "Epic", "reason": "xtKYl3W3ceWINOPM", "source": "IAP_CHARGEBACK_REVERSED"}, "currencyCode": "U4hRWfrmwDL7Vv5c", "userIds": ["Ke8WDEBGpyg7RKvQ", "6QZNelKzkIU7oU4N", "U2hIGict4FxZgqfJ"]}, {"creditRequest": {"amount": 22, "expireAt": "1998-07-28T00:00:00Z", "metadata": {"oyoRKQH9MHTz3IlW": {}, "P3cBS15g936kNy9s": {}, "7gigIGKDcNM7gmnT": {}}, "origin": "System", "reason": "TMaBsUsp0lpEeZvp", "source": "PROMOTION"}, "currencyCode": "NaadQf4INo95Pvjq", "userIds": ["uP7f5TeFON3OUkP4", "og8iaGfKa8Ga3ffK", "OVlN6eqY7sgCR64X"]}]' \
    > test.out 2>&1
eval_tap $? 307 'BulkCredit' test.out

#- 308 BulkDebit
samples/cli/sample-apps Platform bulkDebit \
    --namespace $AB_NAMESPACE \
    --body '[{"currencyCode": "8g5BZm5eCEptZuue", "request": {"allowOverdraft": false, "amount": 46, "balanceOrigin": "Xbox", "balanceSource": "EXPIRATION", "metadata": {"swzRSAaUnWoxx7wk": {}, "bIpknXJeTNBAym10": {}, "RoLViLV2xmGSjpmp": {}}, "reason": "zMvFPL9d77BSlFiJ"}, "userIds": ["ksactUwxCxSHFafV", "qjVQXsZ6RGoah2D8", "1UhmumfP8nSIjleL"]}, {"currencyCode": "vUnSP1XEGEWLXSUh", "request": {"allowOverdraft": true, "amount": 62, "balanceOrigin": "Playstation", "balanceSource": "IAP_REVOCATION", "metadata": {"JvTp15SlRQgCPqzU": {}, "Z7v0zPKhVAZw4Vlg": {}, "HlEPM4sMbrQehzIX": {}}, "reason": "PyiTQJ8Xy8yDFtJf"}, "userIds": ["o9SF34FcyvcZ3nOi", "wEwxKay3z5tsemrH", "PX1UN27RzVAqmLAK"]}, {"currencyCode": "24Gz2EV89DE3mP2m", "request": {"allowOverdraft": true, "amount": 100, "balanceOrigin": "Xbox", "balanceSource": "IAP_REVOCATION", "metadata": {"hA3ZlBJNkkLf1IfA": {}, "qiZ4AKrhthLTh5cA": {}, "OliDlnOrPTv1Rbim": {}}, "reason": "XfciCWjDGJGlFd8k"}, "userIds": ["maCY1EPfzgHhKrkG", "kspmRWZUPv4VEqaa", "tqMIDGeIrp9eIkDz"]}]' \
    > test.out 2>&1
eval_tap $? 308 'BulkDebit' test.out

#- 309 GetWallet
eval_tap 0 309 'GetWallet # SKIP deprecated' test.out

#- 310 SyncOrders
samples/cli/sample-apps Platform syncOrders \
    --nextEvaluatedKey '9k6eay6paMmvsmE1' \
    --end 'Sk1Eytnn3Od6WK5n' \
    --start 'GGTGHeIUoVDjVtV7' \
    > test.out 2>&1
eval_tap $? 310 'SyncOrders' test.out

#- 311 TestAdyenConfig
samples/cli/sample-apps Platform testAdyenConfig \
    --sandbox 'false' \
    --body '{"allowedPaymentMethods": ["TiG72DcE4g13zqZn", "HHard4x473Hjhh4Y", "vsU42Kku8EiywGWo"], "apiKey": "QOIYzepfwRKX9Vyd", "authoriseAsCapture": false, "blockedPaymentMethods": ["V4dCrpZdZ0w57fbS", "CKkd0m8jTWNRFS2J", "7rYKAYwXokpWOD6k"], "clientKey": "nq2kUT2eZRvlHa3r", "dropInSettings": "ZvMuBcr2y8KjFjug", "liveEndpointUrlPrefix": "eZs3gGTwTDWJmqN2", "merchantAccount": "ffhQPf3u3FsW255H", "notificationHmacKey": "Idg8bvPBX7LSDgTY", "notificationPassword": "QNOY1KKLHwSUsyAQ", "notificationUsername": "2Rd8yynvLjWZEOhZ", "returnUrl": "aFtNbDVqMQYVGsSs", "settings": "wMjs0RIJ5mnV32kr"}' \
    > test.out 2>&1
eval_tap $? 311 'TestAdyenConfig' test.out

#- 312 TestAliPayConfig
samples/cli/sample-apps Platform testAliPayConfig \
    --sandbox 'false' \
    --body '{"appId": "uiWRg4EtvabHYLFd", "privateKey": "p9pzUKniaEFjyYse", "publicKey": "4H4qNdQ1ZUyZNECE", "returnUrl": "QHWEV25hJPwhYLFu"}' \
    > test.out 2>&1
eval_tap $? 312 'TestAliPayConfig' test.out

#- 313 TestCheckoutConfig
samples/cli/sample-apps Platform testCheckoutConfig \
    --sandbox 'false' \
    --body '{"publicKey": "Rtgsphhb4eZTXicy", "secretKey": "ra8DENly21O4Vhqc"}' \
    > test.out 2>&1
eval_tap $? 313 'TestCheckoutConfig' test.out

#- 314 DebugMatchedPaymentMerchantConfig
samples/cli/sample-apps Platform debugMatchedPaymentMerchantConfig \
    --namespace 'adWsqGcYrw4fKzGs' \
    --region 'KpuzjcoercNrNiOP' \
    > test.out 2>&1
eval_tap $? 314 'DebugMatchedPaymentMerchantConfig' test.out

#- 315 TestPayPalConfig
samples/cli/sample-apps Platform testPayPalConfig \
    --sandbox 'false' \
    --body '{"clientID": "ISrV5hNeAzwha8h4", "clientSecret": "t8Medv2n4st0Nczi", "returnUrl": "jfRnEfrbEC7VHd1y", "webHookId": "Z2bZrff0YMMhWzzO"}' \
    > test.out 2>&1
eval_tap $? 315 'TestPayPalConfig' test.out

#- 316 TestStripeConfig
samples/cli/sample-apps Platform testStripeConfig \
    --sandbox 'true' \
    --body '{"allowedPaymentMethodTypes": ["c7oRlejjpQSYOvCj", "IbgvDBnvojwJSa21", "mbpJw7HxOoxE1Hgb"], "publishableKey": "YKalTfu6fIOA9zyD", "secretKey": "456Q9L413SViA2zt", "webhookSecret": "eKaixcHDkdOkpVjH"}' \
    > test.out 2>&1
eval_tap $? 316 'TestStripeConfig' test.out

#- 317 TestWxPayConfig
samples/cli/sample-apps Platform testWxPayConfig \
    --body '{"appId": "WK9tyq95pQkfqtZx", "key": "YeFCmo7LflGsHgqP", "mchid": "7bEMp53Q7uPHGQT8", "returnUrl": "ApdwyqiMjTxBQJvP"}' \
    > test.out 2>&1
eval_tap $? 317 'TestWxPayConfig' test.out

#- 318 TestXsollaConfig
samples/cli/sample-apps Platform testXsollaConfig \
    --body '{"apiKey": "r5ibwpTvDk71mXCB", "flowCompletionUrl": "CgHFPpqDwXk5gIcB", "merchantId": 87, "projectId": 1, "projectSecretKey": "W2B2EJ2uJDWg5xh0"}' \
    > test.out 2>&1
eval_tap $? 318 'TestXsollaConfig' test.out

#- 319 GetPaymentMerchantConfig
samples/cli/sample-apps Platform getPaymentMerchantConfig \
    --id 'Vm1mv5kaPvZdQwBq' \
    > test.out 2>&1
eval_tap $? 319 'GetPaymentMerchantConfig' test.out

#- 320 UpdateAdyenConfig
samples/cli/sample-apps Platform updateAdyenConfig \
    --id 'EHx6GdCwh3oFzWVV' \
    --sandbox 'false' \
    --validate 'true' \
    --body '{"allowedPaymentMethods": ["mdskNLOKS2kC8r66", "jBsTndPLSpbh9MCU", "smamcoJlQObmv3SV"], "apiKey": "SgyjO4fdNS8XnXEF", "authoriseAsCapture": true, "blockedPaymentMethods": ["E0SLRmdaeicK69I6", "weXwoLJgbCz2oIDm", "disWroNJG9AMC3pT"], "clientKey": "kVsV0b1WUD6NmsdN", "dropInSettings": "UkpqcGC52AfRpN6N", "liveEndpointUrlPrefix": "njKIVNV3BPXbUqoW", "merchantAccount": "5ebLYjJJmWKS6XYQ", "notificationHmacKey": "6yWZsLZGbVRUIXgh", "notificationPassword": "MLJaL8rvGtfE0Osy", "notificationUsername": "7TqGPbQC2z4vMjf5", "returnUrl": "fLDws7kdoygMFK74", "settings": "SwdjzAhyJ84EaRKt"}' \
    > test.out 2>&1
eval_tap $? 320 'UpdateAdyenConfig' test.out

#- 321 TestAdyenConfigById
samples/cli/sample-apps Platform testAdyenConfigById \
    --id 'yRzKEBat3vQmTPj3' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 321 'TestAdyenConfigById' test.out

#- 322 UpdateAliPayConfig
samples/cli/sample-apps Platform updateAliPayConfig \
    --id 'NzIuA6aZY70KNEiQ' \
    --sandbox 'false' \
    --validate 'true' \
    --body '{"appId": "L088ulGI3p34otuM", "privateKey": "h0LKaWLzcpHalPyN", "publicKey": "dGMOFBcghx5mEhPN", "returnUrl": "dW4FSUDgQISm3LyJ"}' \
    > test.out 2>&1
eval_tap $? 322 'UpdateAliPayConfig' test.out

#- 323 TestAliPayConfigById
samples/cli/sample-apps Platform testAliPayConfigById \
    --id '6rmToL0e1LpsorUy' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 323 'TestAliPayConfigById' test.out

#- 324 UpdateCheckoutConfig
samples/cli/sample-apps Platform updateCheckoutConfig \
    --id 'k2z0pOS0f2IQJtGo' \
    --sandbox 'false' \
    --validate 'true' \
    --body '{"publicKey": "T7PdsIiMJZAs1PHh", "secretKey": "O8aquhMV0z9Z3LyK"}' \
    > test.out 2>&1
eval_tap $? 324 'UpdateCheckoutConfig' test.out

#- 325 TestCheckoutConfigById
samples/cli/sample-apps Platform testCheckoutConfigById \
    --id 'BnXe5MVhCXTZwAKv' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 325 'TestCheckoutConfigById' test.out

#- 326 UpdatePayPalConfig
samples/cli/sample-apps Platform updatePayPalConfig \
    --id 'aBxwZSqw7SI4mVGi' \
    --sandbox 'false' \
    --validate 'false' \
    --body '{"clientID": "dSmIouX2IhzKi150", "clientSecret": "TV1Guzi4IvQYkme7", "returnUrl": "Q2veBFcPQEmccrJM", "webHookId": "NBe7bRSSaa2ljSCq"}' \
    > test.out 2>&1
eval_tap $? 326 'UpdatePayPalConfig' test.out

#- 327 TestPayPalConfigById
samples/cli/sample-apps Platform testPayPalConfigById \
    --id 'DA1uiCnNZ2xmwIbE' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 327 'TestPayPalConfigById' test.out

#- 328 UpdateStripeConfig
samples/cli/sample-apps Platform updateStripeConfig \
    --id '7k6Qwr4PwBwWYKNL' \
    --sandbox 'false' \
    --validate 'true' \
    --body '{"allowedPaymentMethodTypes": ["t16XBDORInxpMrA7", "ArIPoYBojSGDH1Fi", "cFkzRFx8HTG9OqFG"], "publishableKey": "Vp4xdajSJu5DqhKF", "secretKey": "CE5ogNtiivGuhmJV", "webhookSecret": "Wz2m4QpP2a8a18QP"}' \
    > test.out 2>&1
eval_tap $? 328 'UpdateStripeConfig' test.out

#- 329 TestStripeConfigById
samples/cli/sample-apps Platform testStripeConfigById \
    --id 'zutCdOXx6oxBSCCF' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 329 'TestStripeConfigById' test.out

#- 330 UpdateWxPayConfig
samples/cli/sample-apps Platform updateWxPayConfig \
    --id 'VVj6wQuawMlXaPdN' \
    --validate 'false' \
    --body '{"appId": "uMGPBGBL85NCmPTa", "key": "BLABCIZ0XEwazZmn", "mchid": "9YneIz64g2pAib9N", "returnUrl": "yT8kbbs8Jmzc8RZY"}' \
    > test.out 2>&1
eval_tap $? 330 'UpdateWxPayConfig' test.out

#- 331 UpdateWxPayConfigCert
samples/cli/sample-apps Platform updateWxPayConfigCert \
    --id 'rTDzUnPpG7LqztdP' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 331 'UpdateWxPayConfigCert' test.out

#- 332 TestWxPayConfigById
samples/cli/sample-apps Platform testWxPayConfigById \
    --id '67OLwXKeybaouPdf' \
    > test.out 2>&1
eval_tap $? 332 'TestWxPayConfigById' test.out

#- 333 UpdateXsollaConfig
samples/cli/sample-apps Platform updateXsollaConfig \
    --id 'ig0QapUCqOiAMeaR' \
    --validate 'true' \
    --body '{"apiKey": "kMgudhBmSzqsLlw2", "flowCompletionUrl": "kBDMLujeVX1SQj6K", "merchantId": 51, "projectId": 46, "projectSecretKey": "XEVJgHlAOqhcFZHz"}' \
    > test.out 2>&1
eval_tap $? 333 'UpdateXsollaConfig' test.out

#- 334 TestXsollaConfigById
samples/cli/sample-apps Platform testXsollaConfigById \
    --id '9vtizuEQm3ysJLxc' \
    > test.out 2>&1
eval_tap $? 334 'TestXsollaConfigById' test.out

#- 335 UpdateXsollaUIConfig
samples/cli/sample-apps Platform updateXsollaUIConfig \
    --id 'ES23yt6ieAeKvytA' \
    --body '{"device": "DESKTOP", "showCloseButton": true, "size": "MEDIUM", "theme": "DARK"}' \
    > test.out 2>&1
eval_tap $? 335 'UpdateXsollaUIConfig' test.out

#- 336 QueryPaymentProviderConfig
samples/cli/sample-apps Platform queryPaymentProviderConfig \
    --limit '23' \
    --namespace 'HKh33a97tFaepXQF' \
    --offset '64' \
    --region 'qfUPQcpVlQMPd2CI' \
    > test.out 2>&1
eval_tap $? 336 'QueryPaymentProviderConfig' test.out

#- 337 CreatePaymentProviderConfig
samples/cli/sample-apps Platform createPaymentProviderConfig \
    --body '{"aggregate": "XSOLLA", "namespace": "i7EWpoFl7BJWr1xM", "region": "EC89Q3VfU2TOeVal", "sandboxTaxJarApiToken": "xa2fUAnyfD17QaC7", "specials": ["WXPAY", "STRIPE", "XSOLLA"], "taxJarApiToken": "XzMiJL7oHUmBtWgQ", "taxJarEnabled": false, "useGlobalTaxJarApiToken": true}' \
    > test.out 2>&1
eval_tap $? 337 'CreatePaymentProviderConfig' test.out

#- 338 GetAggregatePaymentProviders
samples/cli/sample-apps Platform getAggregatePaymentProviders \
    > test.out 2>&1
eval_tap $? 338 'GetAggregatePaymentProviders' test.out

#- 339 DebugMatchedPaymentProviderConfig
samples/cli/sample-apps Platform debugMatchedPaymentProviderConfig \
    --namespace 'RmXs0kdBtre7a93y' \
    --region 'v55SIXYsWY5dPJ7x' \
    > test.out 2>&1
eval_tap $? 339 'DebugMatchedPaymentProviderConfig' test.out

#- 340 GetSpecialPaymentProviders
samples/cli/sample-apps Platform getSpecialPaymentProviders \
    > test.out 2>&1
eval_tap $? 340 'GetSpecialPaymentProviders' test.out

#- 341 UpdatePaymentProviderConfig
samples/cli/sample-apps Platform updatePaymentProviderConfig \
    --id 'k0l6Q47zXP9iaBAj' \
    --body '{"aggregate": "ADYEN", "namespace": "hMTHUxKS36qhzHcd", "region": "v6AquUaZwFj2SAqB", "sandboxTaxJarApiToken": "Cp0GbFC8PkMsduhY", "specials": ["WXPAY", "STRIPE", "XSOLLA"], "taxJarApiToken": "U3UQkfn78DHiM5KS", "taxJarEnabled": false, "useGlobalTaxJarApiToken": false}' \
    > test.out 2>&1
eval_tap $? 341 'UpdatePaymentProviderConfig' test.out

#- 342 DeletePaymentProviderConfig
samples/cli/sample-apps Platform deletePaymentProviderConfig \
    --id 'YiDUKedoqzdCIyXG' \
    > test.out 2>&1
eval_tap $? 342 'DeletePaymentProviderConfig' test.out

#- 343 GetPaymentTaxConfig
samples/cli/sample-apps Platform getPaymentTaxConfig \
    > test.out 2>&1
eval_tap $? 343 'GetPaymentTaxConfig' test.out

#- 344 UpdatePaymentTaxConfig
samples/cli/sample-apps Platform updatePaymentTaxConfig \
    --body '{"sandboxTaxJarApiToken": "DrRfRfwMmUXsDVHc", "taxJarApiToken": "4K46cV50wX5ZTLXk", "taxJarEnabled": false, "taxJarProductCodesMapping": {"wzmMnyhEdWhBra1P": "1hWlVoDN6J7tIQcP", "Lejl1CjN4aGHDcWE": "7gnEgeaUM8jNCZOB", "7seRTKR7tafF30gt": "tongxhJnsdfJDyv6"}}' \
    > test.out 2>&1
eval_tap $? 344 'UpdatePaymentTaxConfig' test.out

#- 345 SyncPaymentOrders
samples/cli/sample-apps Platform syncPaymentOrders \
    --nextEvaluatedKey 'T954VI4bJYTBv3cc' \
    --end 'DyXCuSPWBySuedCC' \
    --start '4yuJ0Cs3zmtPAk8H' \
    > test.out 2>&1
eval_tap $? 345 'SyncPaymentOrders' test.out

#- 346 PublicGetRootCategories
samples/cli/sample-apps Platform publicGetRootCategories \
    --namespace $AB_NAMESPACE \
    --language '6ZAfCMe9ZstJOfL6' \
    --storeId '8mTD82ubXOJDJJRU' \
    > test.out 2>&1
eval_tap $? 346 'PublicGetRootCategories' test.out

#- 347 DownloadCategories
samples/cli/sample-apps Platform downloadCategories \
    --namespace $AB_NAMESPACE \
    --language 'XtthiwYPoPJA0O9I' \
    --storeId 'QKJ3WO2GVAe7HdOf' \
    > test.out 2>&1
eval_tap $? 347 'DownloadCategories' test.out

#- 348 PublicGetCategory
samples/cli/sample-apps Platform publicGetCategory \
    --categoryPath 'PQw6MNAnZVE8r88U' \
    --namespace $AB_NAMESPACE \
    --language 't0MIItEArH0Wlm8i' \
    --storeId 'DMOqEbq5T7Fo4Y3h' \
    > test.out 2>&1
eval_tap $? 348 'PublicGetCategory' test.out

#- 349 PublicGetChildCategories
samples/cli/sample-apps Platform publicGetChildCategories \
    --categoryPath 'm9nwHGL7K4Qe5TwG' \
    --namespace $AB_NAMESPACE \
    --language '0E16Bgwzs6cZ1JOI' \
    --storeId 'ZSo7arInzUwZwGL8' \
    > test.out 2>&1
eval_tap $? 349 'PublicGetChildCategories' test.out

#- 350 PublicGetDescendantCategories
samples/cli/sample-apps Platform publicGetDescendantCategories \
    --categoryPath 'eUPtqU3sl09671GY' \
    --namespace $AB_NAMESPACE \
    --language 'PmyMSiuGIT9psKki' \
    --storeId 'BeqKF3LiZ5SMZ6mT' \
    > test.out 2>&1
eval_tap $? 350 'PublicGetDescendantCategories' test.out

#- 351 PublicListCurrencies
samples/cli/sample-apps Platform publicListCurrencies \
    --namespace $AB_NAMESPACE \
    --currencyType 'VIRTUAL' \
    > test.out 2>&1
eval_tap $? 351 'PublicListCurrencies' test.out

#- 352 GeDLCDurableRewardShortMap
samples/cli/sample-apps Platform geDLCDurableRewardShortMap \
    --namespace $AB_NAMESPACE \
    --dlcType 'STEAM' \
    > test.out 2>&1
eval_tap $? 352 'GeDLCDurableRewardShortMap' test.out

#- 353 GetIAPItemMapping
samples/cli/sample-apps Platform getIAPItemMapping \
    --namespace $AB_NAMESPACE \
    --platform 'TWITCH' \
    > test.out 2>&1
eval_tap $? 353 'GetIAPItemMapping' test.out

#- 354 PublicGetItemByAppId
samples/cli/sample-apps Platform publicGetItemByAppId \
    --namespace $AB_NAMESPACE \
    --language 'HhlQiSmPfD2VkEuP' \
    --region 'R5UDZraALXIc2gOY' \
    --storeId 'dSFz25Tn3mXUTqo5' \
    --appId 'LlLqFxAUTphbwoe5' \
    > test.out 2>&1
eval_tap $? 354 'PublicGetItemByAppId' test.out

#- 355 PublicQueryItems
samples/cli/sample-apps Platform publicQueryItems \
    --namespace $AB_NAMESPACE \
    --appType 'SOFTWARE' \
    --autoCalcEstimatedPrice 'false' \
    --baseAppId 'l731GWzpT4Px6Vfc' \
    --categoryPath 'P0Ii43ZSdK9DVI2w' \
    --features 't2kWQFRKd1FMDU01' \
    --includeSubCategoryItem 'true' \
    --itemType 'CODE' \
    --language 'TAZeYhSB9iMecqnm' \
    --limit '53' \
    --offset '49' \
    --region 'U0pBoLsJNqsgNbZH' \
    --sortBy '["createdAt:desc", "name:asc", "displayOrder:asc"]' \
    --storeId 'L3PoGq8hTTO8X4Da' \
    --tags 'z0izKp8m5eD7UPxd' \
    > test.out 2>&1
eval_tap $? 355 'PublicQueryItems' test.out

#- 356 PublicGetItemBySku
samples/cli/sample-apps Platform publicGetItemBySku \
    --namespace $AB_NAMESPACE \
    --autoCalcEstimatedPrice 'false' \
    --language 'SPLdaBINhV0kKsgN' \
    --region 'BhX49Dx4vco4Fm3G' \
    --storeId 'wobnxZ9MDq8WAuuE' \
    --sku 'OlIQ1tM7MFiH6ojx' \
    > test.out 2>&1
eval_tap $? 356 'PublicGetItemBySku' test.out

#- 357 PublicGetEstimatedPrice
samples/cli/sample-apps Platform publicGetEstimatedPrice \
    --namespace $AB_NAMESPACE \
    --region 'r5GenXmf7rbOWA7Y' \
    --storeId 'W6LSCigupgdS3vml' \
    --itemIds 'Rt1ypzBJDfWKKTC5' \
    > test.out 2>&1
eval_tap $? 357 'PublicGetEstimatedPrice' test.out

#- 358 PublicBulkGetItems
samples/cli/sample-apps Platform publicBulkGetItems \
    --namespace $AB_NAMESPACE \
    --autoCalcEstimatedPrice 'true' \
    --language 'iMSpFWIDJCiBBNe4' \
    --region 'hIILq9gY9o6b1wz8' \
    --storeId '45pNveDEtLd5sAx5' \
    --itemIds 'yOhygWRqJzEN5V5z' \
    > test.out 2>&1
eval_tap $? 358 'PublicBulkGetItems' test.out

#- 359 PublicValidateItemPurchaseCondition
samples/cli/sample-apps Platform publicValidateItemPurchaseCondition \
    --namespace $AB_NAMESPACE \
    --body '{"itemIds": ["vSGSPYESMS37Cqb7", "MShMA14BjeeJp8Uw", "zhRfzTzGI2ABul61"]}' \
    > test.out 2>&1
eval_tap $? 359 'PublicValidateItemPurchaseCondition' test.out

#- 360 PublicSearchItems
samples/cli/sample-apps Platform publicSearchItems \
    --namespace $AB_NAMESPACE \
    --autoCalcEstimatedPrice 'false' \
    --itemType 'SEASON' \
    --limit '52' \
    --offset '68' \
    --region 'G39CucOrB57vHBMK' \
    --storeId 'nWppexbUckIH7VD3' \
    --keyword 'j7OxXue6tFTh2fWn' \
    --language 'WV4qlKv8kQ1TVvFm' \
    > test.out 2>&1
eval_tap $? 360 'PublicSearchItems' test.out

#- 361 PublicGetApp
samples/cli/sample-apps Platform publicGetApp \
    --itemId 'xqXyHpMVa2e4TYyM' \
    --namespace $AB_NAMESPACE \
    --language 'sHf7AfpniXCI9qt9' \
    --region 'U2yMLXbI8M7iPzaG' \
    --storeId 'PkGWbY3ZWE5yI0Pa' \
    > test.out 2>&1
eval_tap $? 361 'PublicGetApp' test.out

#- 362 PublicGetItemDynamicData
samples/cli/sample-apps Platform publicGetItemDynamicData \
    --itemId 'wlhz15ecQ33Isrio' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 362 'PublicGetItemDynamicData' test.out

#- 363 PublicGetItem
samples/cli/sample-apps Platform publicGetItem \
    --itemId 'N8wr8PTnQ3e1U9gw' \
    --namespace $AB_NAMESPACE \
    --autoCalcEstimatedPrice 'false' \
    --language 'J4RvW50Pm2FUWrRZ' \
    --populateBundle 'true' \
    --region 'RzT0tJCAGQTAYhkG' \
    --storeId 'thP5ZwSgEleM25VQ' \
    > test.out 2>&1
eval_tap $? 363 'PublicGetItem' test.out

#- 364 GetPaymentCustomization
eval_tap 0 364 'GetPaymentCustomization # SKIP deprecated' test.out

#- 365 PublicGetPaymentUrl
samples/cli/sample-apps Platform publicGetPaymentUrl \
    --namespace $AB_NAMESPACE \
    --body '{"paymentOrderNo": "aigs3D8KnqLQr6D1", "paymentProvider": "PAYPAL", "returnUrl": "qGxRxEJTumszi6ax", "ui": "jrXG8xqxptc7yAcE", "zipCode": "7pasUvOdEiVkr9fh"}' \
    > test.out 2>&1
eval_tap $? 365 'PublicGetPaymentUrl' test.out

#- 366 PublicGetPaymentMethods
samples/cli/sample-apps Platform publicGetPaymentMethods \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'v2NuIt9ROocfqK0O' \
    > test.out 2>&1
eval_tap $? 366 'PublicGetPaymentMethods' test.out

#- 367 PublicGetUnpaidPaymentOrder
samples/cli/sample-apps Platform publicGetUnpaidPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo '9nvHMgDV9dGmmIPB' \
    > test.out 2>&1
eval_tap $? 367 'PublicGetUnpaidPaymentOrder' test.out

#- 368 Pay
samples/cli/sample-apps Platform pay \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo '9tnb2POiABQVSwlC' \
    --paymentProvider 'ALIPAY' \
    --zipCode 'ckChXAlpqrP6U1in' \
    --body '{"token": "cimmwXgk3KI7QE1J"}' \
    > test.out 2>&1
eval_tap $? 368 'Pay' test.out

#- 369 PublicCheckPaymentOrderPaidStatus
samples/cli/sample-apps Platform publicCheckPaymentOrderPaidStatus \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'OOqevP1ALo4j0A5C' \
    > test.out 2>&1
eval_tap $? 369 'PublicCheckPaymentOrderPaidStatus' test.out

#- 370 GetPaymentPublicConfig
samples/cli/sample-apps Platform getPaymentPublicConfig \
    --namespace $AB_NAMESPACE \
    --sandbox 'false' \
    --paymentProvider 'WXPAY' \
    --region 'hNL7ylNUImfd5USX' \
    > test.out 2>&1
eval_tap $? 370 'GetPaymentPublicConfig' test.out

#- 371 PublicGetQRCode
samples/cli/sample-apps Platform publicGetQRCode \
    --namespace $AB_NAMESPACE \
    --code 'EL3jFuz9e6OFxDNi' \
    > test.out 2>&1
eval_tap $? 371 'PublicGetQRCode' test.out

#- 372 PublicNormalizePaymentReturnUrl
samples/cli/sample-apps Platform publicNormalizePaymentReturnUrl \
    --namespace $AB_NAMESPACE \
    --payerID '1bRJSTSPBk5EL802' \
    --foreinginvoice 'ibm5Px5nAZFJIT7R' \
    --invoiceId '3QzuqSjKLSjAeGZM' \
    --payload '7f7WS5COnmhUQPLg' \
    --redirectResult 'jY4YAAT5sSd0h5sh' \
    --resultCode 'sGHnXfDIqZeZB6B3' \
    --sessionId 'Sd7nJlUggXVbzmcv' \
    --status 'KJO4hTlwm0YTKhq3' \
    --token 'oQdA5n7B5fIS10XJ' \
    --type 'lNKv6zROVMMxNeql' \
    --userId 'fvcYQ4HAACOvBZdq' \
    --orderNo 'p20IvcdXkgJ6LFvT' \
    --paymentOrderNo 'mIOBtRWfVNAS1wnk' \
    --paymentProvider 'STRIPE' \
    --returnUrl 'q9W23TDqvj8VbTVj' \
    > test.out 2>&1
eval_tap $? 372 'PublicNormalizePaymentReturnUrl' test.out

#- 373 GetPaymentTaxValue
samples/cli/sample-apps Platform getPaymentTaxValue \
    --namespace $AB_NAMESPACE \
    --zipCode 'gGn5arp0UewbvBBC' \
    --paymentOrderNo 'Sl6lWPZeNOuKlIK2' \
    --paymentProvider 'CHECKOUT' \
    > test.out 2>&1
eval_tap $? 373 'GetPaymentTaxValue' test.out

#- 374 GetRewardByCode
samples/cli/sample-apps Platform getRewardByCode \
    --namespace $AB_NAMESPACE \
    --rewardCode 'xRTowKUKquwv0t2o' \
    > test.out 2>&1
eval_tap $? 374 'GetRewardByCode' test.out

#- 375 QueryRewards1
samples/cli/sample-apps Platform queryRewards1 \
    --namespace $AB_NAMESPACE \
    --eventTopic 'GYQ40nKRMPH4JAr3' \
    --limit '42' \
    --offset '26' \
    --sortBy '["rewardCode:desc", "namespace:asc", "rewardCode"]' \
    > test.out 2>&1
eval_tap $? 375 'QueryRewards1' test.out

#- 376 GetReward1
samples/cli/sample-apps Platform getReward1 \
    --namespace $AB_NAMESPACE \
    --rewardId 'PzEmEI6j0M3biTn0' \
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
    --appIds '["aAKpzdKvUU7KW2Fn", "aqUF5GTrmD5yhLmY", "vU6LpyN8wn1nM6ii"]' \
    --itemIds '["kEgBaGVShUgxTJq0", "6xqGQK3Frtnyu86g", "lADvqe9ev57sphy2"]' \
    --skus '["XCP1ISVelKdu8v6A", "9H5cB3pO2qqNS3m0", "gyD5OhHomcAx85LZ"]' \
    > test.out 2>&1
eval_tap $? 378 'PublicExistsAnyMyActiveEntitlement' test.out

#- 379 PublicGetMyAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform publicGetMyAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --appId '3pel4bt4xoL7tgFC' \
    > test.out 2>&1
eval_tap $? 379 'PublicGetMyAppEntitlementOwnershipByAppId' test.out

#- 380 PublicGetMyEntitlementOwnershipByItemId
samples/cli/sample-apps Platform publicGetMyEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --entitlementClazz 'ENTITLEMENT' \
    --itemId '4nlMtkn3SL2mLbSd' \
    > test.out 2>&1
eval_tap $? 380 'PublicGetMyEntitlementOwnershipByItemId' test.out

#- 381 PublicGetMyEntitlementOwnershipBySku
samples/cli/sample-apps Platform publicGetMyEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --entitlementClazz 'ENTITLEMENT' \
    --sku 'eoQMB7aH1cEq1bQl' \
    > test.out 2>&1
eval_tap $? 381 'PublicGetMyEntitlementOwnershipBySku' test.out

#- 382 PublicGetEntitlementOwnershipToken
samples/cli/sample-apps Platform publicGetEntitlementOwnershipToken \
    --namespace $AB_NAMESPACE \
    --appIds '["o78ciuEHxEYBFH1N", "3YeFeTw5BTCDpVW0", "7shPhaRFMpFAf0pq"]' \
    --itemIds '["NE7xQTdK7BOYB1HP", "pKcdtPMsmKgyIM9F", "Tpqf79IAehIXYf06"]' \
    --skus '["kxIch37k5ZGYuTb1", "ziAHLqDoFG7JGOJI", "r90sNpSR6I89EEwe"]' \
    > test.out 2>&1
eval_tap $? 382 'PublicGetEntitlementOwnershipToken' test.out

#- 383 SyncTwitchDropsEntitlement
samples/cli/sample-apps Platform syncTwitchDropsEntitlement \
    --namespace $AB_NAMESPACE \
    --body '{"gameId": "qJGONv7lArEJfW0T", "language": "kPvj_MrLQ", "region": "tfLSzVdIAsjwgoQq"}' \
    > test.out 2>&1
eval_tap $? 383 'SyncTwitchDropsEntitlement' test.out

#- 384 PublicGetMyWallet
samples/cli/sample-apps Platform publicGetMyWallet \
    --currencyCode 'h4sPupnqtOoOcYpD' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 384 'PublicGetMyWallet' test.out

#- 385 SyncEpicGameDLC
samples/cli/sample-apps Platform syncEpicGameDLC \
    --namespace $AB_NAMESPACE \
    --userId 'Jv9paBUgXrLeag5T' \
    --body '{"epicGamesJwtToken": "i35Wg5ncezKSEFK8"}' \
    > test.out 2>&1
eval_tap $? 385 'SyncEpicGameDLC' test.out

#- 386 SyncOculusDLC
samples/cli/sample-apps Platform syncOculusDLC \
    --namespace $AB_NAMESPACE \
    --userId 'dhvfRxhAGciJ0n7N' \
    > test.out 2>&1
eval_tap $? 386 'SyncOculusDLC' test.out

#- 387 PublicSyncPsnDlcInventory
samples/cli/sample-apps Platform publicSyncPsnDlcInventory \
    --namespace $AB_NAMESPACE \
    --userId 'NiTEynf4HgFJDhqp' \
    --body '{"serviceLabel": 19}' \
    > test.out 2>&1
eval_tap $? 387 'PublicSyncPsnDlcInventory' test.out

#- 388 PublicSyncPsnDlcInventoryWithMultipleServiceLabels
samples/cli/sample-apps Platform publicSyncPsnDlcInventoryWithMultipleServiceLabels \
    --namespace $AB_NAMESPACE \
    --userId 'OQHdvbQfVoj7qjEu' \
    --body '{"serviceLabels": [34, 4, 53]}' \
    > test.out 2>&1
eval_tap $? 388 'PublicSyncPsnDlcInventoryWithMultipleServiceLabels' test.out

#- 389 SyncSteamDLC
samples/cli/sample-apps Platform syncSteamDLC \
    --namespace $AB_NAMESPACE \
    --userId 'ExLSahlHTllCAdKG' \
    --body '{"appId": "dut0HOHwh25iI0Hz", "steamId": "vRdYMH15XfaksxNw"}' \
    > test.out 2>&1
eval_tap $? 389 'SyncSteamDLC' test.out

#- 390 SyncXboxDLC
samples/cli/sample-apps Platform syncXboxDLC \
    --namespace $AB_NAMESPACE \
    --userId 'Jz80amL1PgF3Q2mh' \
    --body '{"xstsToken": "3jdeNeU3qWollBkf"}' \
    > test.out 2>&1
eval_tap $? 390 'SyncXboxDLC' test.out

#- 391 PublicQueryUserEntitlements
samples/cli/sample-apps Platform publicQueryUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId '2nze4RxhJM6pBDPC' \
    --appType 'GAME' \
    --entitlementClazz 'ENTITLEMENT' \
    --entitlementName 'u09xKXStn4KRaHyB' \
    --features '["jqyPKkaXlJnWOSa8", "BtVXXHb1v3i78815", "zSUNV74QKgTKchhl"]' \
    --itemId '["pPYTOw4odOt7bVUy", "OisLVG3XJJglDUKM", "fCvZOEuz0aI7mleL"]' \
    --limit '78' \
    --offset '93' \
    > test.out 2>&1
eval_tap $? 391 'PublicQueryUserEntitlements' test.out

#- 392 PublicGetUserAppEntitlementByAppId
samples/cli/sample-apps Platform publicGetUserAppEntitlementByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'MPX9g5AMCv5huVzz' \
    --appId '0S9YZiqgsOSUrvFG' \
    > test.out 2>&1
eval_tap $? 392 'PublicGetUserAppEntitlementByAppId' test.out

#- 393 PublicQueryUserEntitlementsByAppType
samples/cli/sample-apps Platform publicQueryUserEntitlementsByAppType \
    --namespace $AB_NAMESPACE \
    --userId 'UGOg0C9ddFhpISAw' \
    --limit '74' \
    --offset '50' \
    --appType 'DLC' \
    > test.out 2>&1
eval_tap $? 393 'PublicQueryUserEntitlementsByAppType' test.out

#- 394 PublicGetUserEntitlementByItemId
eval_tap 0 394 'PublicGetUserEntitlementByItemId # SKIP deprecated' test.out

#- 395 PublicGetUserEntitlementBySku
eval_tap 0 395 'PublicGetUserEntitlementBySku # SKIP deprecated' test.out

#- 396 PublicExistsAnyUserActiveEntitlement
samples/cli/sample-apps Platform publicExistsAnyUserActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'xnVCwEThjCYUbpk0' \
    --appIds '["ssohfgDncitwbWHA", "afcRZv2yYXulIMdx", "jIBCust4U8Yc0wTq"]' \
    --itemIds '["FMkMjT6yxRwlquKw", "vCksU7GEkN3ZI0OJ", "w2w0LKI9dU33VMgu"]' \
    --skus '["9XStOdX4EpZ4W09n", "QSzNvBvrtl7WE0u2", "JaT6QRzes0lJOUSJ"]' \
    > test.out 2>&1
eval_tap $? 396 'PublicExistsAnyUserActiveEntitlement' test.out

#- 397 PublicGetUserAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform publicGetUserAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'MDRJ18n3yt71m2NL' \
    --appId 'xCBBrrrVtEEUB7ev' \
    > test.out 2>&1
eval_tap $? 397 'PublicGetUserAppEntitlementOwnershipByAppId' test.out

#- 398 PublicGetUserEntitlementOwnershipByItemId
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'QHOpviz0FpE5Csh5' \
    --entitlementClazz 'OPTIONBOX' \
    --itemId '6mxtLrpYmdv4fMrz' \
    > test.out 2>&1
eval_tap $? 398 'PublicGetUserEntitlementOwnershipByItemId' test.out

#- 399 PublicGetUserEntitlementOwnershipByItemIds
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'F8Q5O8kM0k8KkJGr' \
    --ids '["UuuuoASuOjcJUOGI", "yikh898Bl2pS2yld", "bmY9proMdqwvWxsR"]' \
    > test.out 2>&1
eval_tap $? 399 'PublicGetUserEntitlementOwnershipByItemIds' test.out

#- 400 PublicGetUserEntitlementOwnershipBySku
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --userId 'k53eDeOlIID2y5Oy' \
    --entitlementClazz 'SUBSCRIPTION' \
    --sku 'niQbmeI8QovMjF2k' \
    > test.out 2>&1
eval_tap $? 400 'PublicGetUserEntitlementOwnershipBySku' test.out

#- 401 PublicGetUserEntitlement
samples/cli/sample-apps Platform publicGetUserEntitlement \
    --entitlementId 'rsB2auMYuRZKiDRp' \
    --namespace $AB_NAMESPACE \
    --userId 'SPMRR9SxREvBPLJz' \
    > test.out 2>&1
eval_tap $? 401 'PublicGetUserEntitlement' test.out

#- 402 PublicConsumeUserEntitlement
samples/cli/sample-apps Platform publicConsumeUserEntitlement \
    --entitlementId 'YpkNZgxwQnLMPuHC' \
    --namespace $AB_NAMESPACE \
    --userId 'pTXcLMEbejmurkQ1' \
    --body '{"options": ["o8hf0QHfVTGn0Kz6", "62vhG20fautLbgyx", "cBesJg12hsz3HmRQ"], "requestId": "b3nawI0fmcYTztQP", "useCount": 92}' \
    > test.out 2>&1
eval_tap $? 402 'PublicConsumeUserEntitlement' test.out

#- 403 PublicSellUserEntitlement
samples/cli/sample-apps Platform publicSellUserEntitlement \
    --entitlementId 't26Ob74V2z13oFW6' \
    --namespace $AB_NAMESPACE \
    --userId 'fKgmtHIb7PYp0s0S' \
    --body '{"requestId": "uRz1q7wCUh2thpe2", "useCount": 95}' \
    > test.out 2>&1
eval_tap $? 403 'PublicSellUserEntitlement' test.out

#- 404 PublicRedeemCode
samples/cli/sample-apps Platform publicRedeemCode \
    --namespace $AB_NAMESPACE \
    --userId 'h45z31AXrPXqVIf9' \
    --body '{"code": "pxXyoRKeMMZDtuzU", "language": "cB_NJMh", "region": "wbNKqBwxwbk5Hr7x"}' \
    > test.out 2>&1
eval_tap $? 404 'PublicRedeemCode' test.out

#- 405 PublicFulfillAppleIAPItem
samples/cli/sample-apps Platform publicFulfillAppleIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'QTSAEl6mImfRABTW' \
    --body '{"excludeOldTransactions": true, "language": "tob", "productId": "1GMops2Cy9is5ci6", "receiptData": "vfwn2BSKL71fiK8L", "region": "lCQdc1VRRD1NMAcj", "transactionId": "tORZG8flJbivXi8u"}' \
    > test.out 2>&1
eval_tap $? 405 'PublicFulfillAppleIAPItem' test.out

#- 406 SyncEpicGamesInventory
samples/cli/sample-apps Platform syncEpicGamesInventory \
    --namespace $AB_NAMESPACE \
    --userId '3uE3Tcb3dMGYM0Ss' \
    --body '{"epicGamesJwtToken": "VaajDA0PPiiKLJrZ"}' \
    > test.out 2>&1
eval_tap $? 406 'SyncEpicGamesInventory' test.out

#- 407 PublicFulfillGoogleIAPItem
samples/cli/sample-apps Platform publicFulfillGoogleIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'Rk5QujXHRvDmQVwj' \
    --body '{"autoAck": false, "language": "sWo_JIvQ_531", "orderId": "fEq9Vzp65UaPOjrg", "packageName": "HaJLR90fzC5gMkBK", "productId": "4FhOnqJb8PuCgCub", "purchaseTime": 39, "purchaseToken": "qB5UInqjOugNsJe3", "region": "sBnaQcQbNnN1rnu7"}' \
    > test.out 2>&1
eval_tap $? 407 'PublicFulfillGoogleIAPItem' test.out

#- 408 SyncOculusConsumableEntitlements
samples/cli/sample-apps Platform syncOculusConsumableEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'cTKbn53JzKLCtC5t' \
    > test.out 2>&1
eval_tap $? 408 'SyncOculusConsumableEntitlements' test.out

#- 409 PublicReconcilePlayStationStore
samples/cli/sample-apps Platform publicReconcilePlayStationStore \
    --namespace $AB_NAMESPACE \
    --userId 'gYLJGKGRfO7X92JE' \
    --body '{"currencyCode": "tGjfT9S7ZkQ8427X", "price": 0.8722588810273919, "productId": "DCT4YJ1ivSj3NvbH", "serviceLabel": 66}' \
    > test.out 2>&1
eval_tap $? 409 'PublicReconcilePlayStationStore' test.out

#- 410 PublicReconcilePlayStationStoreWithMultipleServiceLabels
samples/cli/sample-apps Platform publicReconcilePlayStationStoreWithMultipleServiceLabels \
    --namespace $AB_NAMESPACE \
    --userId 'XJ6KVuJ2B93nKJU7' \
    --body '{"currencyCode": "n9RDvqzUCGRVwtSY", "price": 0.9991389818781478, "productId": "s8iV1yRTWAHJBBPc", "serviceLabels": [58, 51]}' \
    > test.out 2>&1
eval_tap $? 410 'PublicReconcilePlayStationStoreWithMultipleServiceLabels' test.out

#- 411 SyncSteamInventory
samples/cli/sample-apps Platform syncSteamInventory \
    --namespace $AB_NAMESPACE \
    --userId 'bNgzlOtUXX87vBmj' \
    --body '{"appId": "iQLWdO8lXwfRq2ml", "currencyCode": "XAjcilirH0GZj20z", "language": "fF-iKxk_BL", "price": 0.1142563360859098, "productId": "flivx504QGiKYGWr", "region": "LenhF15z0VEMEU6I", "steamId": "CEU5t8hnJmgJugAU"}' \
    > test.out 2>&1
eval_tap $? 411 'SyncSteamInventory' test.out

#- 412 SyncTwitchDropsEntitlement1
samples/cli/sample-apps Platform syncTwitchDropsEntitlement1 \
    --namespace $AB_NAMESPACE \
    --userId 'KwZs6BZvKF5PWf05' \
    --body '{"gameId": "DlO6XnjoMraxVUGm", "language": "gd-jvxQ", "region": "pKUXhlPQnTJxFjes"}' \
    > test.out 2>&1
eval_tap $? 412 'SyncTwitchDropsEntitlement1' test.out

#- 413 SyncXboxInventory
samples/cli/sample-apps Platform syncXboxInventory \
    --namespace $AB_NAMESPACE \
    --userId 'u3NaFAGQ6cpvZTHe' \
    --body '{"currencyCode": "gPwwna9byHkCrcJ7", "price": 0.3976369223755579, "productId": "OLT9WhXIVkUqIAjX", "xstsToken": "5Rm3WqPH4e30m5lD"}' \
    > test.out 2>&1
eval_tap $? 413 'SyncXboxInventory' test.out

#- 414 PublicQueryUserOrders
samples/cli/sample-apps Platform publicQueryUserOrders \
    --namespace $AB_NAMESPACE \
    --userId 'OSpRXTpHt5stTq1t' \
    --itemId 'TMK3JdROFodvtyYa' \
    --limit '100' \
    --offset '82' \
    --status 'DELETED' \
    > test.out 2>&1
eval_tap $? 414 'PublicQueryUserOrders' test.out

#- 415 PublicCreateUserOrder
samples/cli/sample-apps Platform publicCreateUserOrder \
    --namespace $AB_NAMESPACE \
    --userId 'mytxhvSic85CXZdv' \
    --body '{"currencyCode": "Slgde1ht0k5VHzO2", "discountedPrice": 14, "ext": {"WPegbZCe4L9hblfS": {}, "CXnAjPfRu80yw73I": {}, "Upm3tjb3F68HPblc": {}}, "itemId": "VXhPypg030ECkwnN", "language": "Jh_nGtD_QM", "price": 28, "quantity": 74, "region": "wMJ8C6gSBj1x6apH", "returnUrl": "TZNdVIu5MvhjVLzt", "sectionId": "eVDPgHDjHqz69mBk"}' \
    > test.out 2>&1
eval_tap $? 415 'PublicCreateUserOrder' test.out

#- 416 PublicGetUserOrder
samples/cli/sample-apps Platform publicGetUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'P8Ks3Zd8Sx9hfBov' \
    --userId 'no6pNksAuuvNpcII' \
    > test.out 2>&1
eval_tap $? 416 'PublicGetUserOrder' test.out

#- 417 PublicCancelUserOrder
samples/cli/sample-apps Platform publicCancelUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'DYqkRigv6doyyi7A' \
    --userId 'nxQXj80xIgausNKy' \
    > test.out 2>&1
eval_tap $? 417 'PublicCancelUserOrder' test.out

#- 418 PublicGetUserOrderHistories
samples/cli/sample-apps Platform publicGetUserOrderHistories \
    --namespace $AB_NAMESPACE \
    --orderNo 'XBdZbHkIM1t44vkd' \
    --userId 'AW8a5JH3xSvHPPxT' \
    > test.out 2>&1
eval_tap $? 418 'PublicGetUserOrderHistories' test.out

#- 419 PublicDownloadUserOrderReceipt
samples/cli/sample-apps Platform publicDownloadUserOrderReceipt \
    --namespace $AB_NAMESPACE \
    --orderNo '3DpginqLBltjv4it' \
    --userId 'UAM8x5P0pFM7heqJ' \
    > test.out 2>&1
eval_tap $? 419 'PublicDownloadUserOrderReceipt' test.out

#- 420 PublicGetPaymentAccounts
samples/cli/sample-apps Platform publicGetPaymentAccounts \
    --namespace $AB_NAMESPACE \
    --userId 'z8aMOHE7tQFqNWsS' \
    > test.out 2>&1
eval_tap $? 420 'PublicGetPaymentAccounts' test.out

#- 421 PublicDeletePaymentAccount
samples/cli/sample-apps Platform publicDeletePaymentAccount \
    --id 'zblho9oSR48Ora9a' \
    --namespace $AB_NAMESPACE \
    --type 'card' \
    --userId 'CjfO1PzF2fHZXw7L' \
    > test.out 2>&1
eval_tap $? 421 'PublicDeletePaymentAccount' test.out

#- 422 PublicListActiveSections
samples/cli/sample-apps Platform publicListActiveSections \
    --namespace $AB_NAMESPACE \
    --userId 'tSZLXB56NFSm1AeK' \
    --autoCalcEstimatedPrice 'false' \
    --language 'dTTIZkR2XnC36ZYl' \
    --region 'bHNeh7kSPwdIOFhC' \
    --storeId 'Jf5b5ySqVxF27Hag' \
    --viewId 'CqCNLp6fSOKZq33L' \
    > test.out 2>&1
eval_tap $? 422 'PublicListActiveSections' test.out

#- 423 PublicQueryUserSubscriptions
samples/cli/sample-apps Platform publicQueryUserSubscriptions \
    --namespace $AB_NAMESPACE \
    --userId 'WHBW0xdN79wkYg6M' \
    --chargeStatus 'CHARGED' \
    --itemId 'W6jcreyNDLCBTmyW' \
    --limit '40' \
    --offset '77' \
    --sku 'JT4vvc3D2Vflj2kO' \
    --status 'INIT' \
    --subscribedBy 'USER' \
    > test.out 2>&1
eval_tap $? 423 'PublicQueryUserSubscriptions' test.out

#- 424 PublicSubscribeSubscription
samples/cli/sample-apps Platform publicSubscribeSubscription \
    --namespace $AB_NAMESPACE \
    --userId 'HOQ8hmZKGMB953Vz' \
    --body '{"currencyCode": "fRAKSUbXEGnOnx9d", "itemId": "N8YSazbfWv1tN8nw", "language": "Ors-553", "region": "6HJglX0nVA8htLxQ", "returnUrl": "PaSw9uYzkJOZ7efg", "source": "eNFdTMVerUEcaUwH"}' \
    > test.out 2>&1
eval_tap $? 424 'PublicSubscribeSubscription' test.out

#- 425 PublicCheckUserSubscriptionSubscribableByItemId
samples/cli/sample-apps Platform publicCheckUserSubscriptionSubscribableByItemId \
    --namespace $AB_NAMESPACE \
    --userId '0lOgR84RqZ5fYbWJ' \
    --itemId 'KCbUlvwKWNxTDbPI' \
    > test.out 2>&1
eval_tap $? 425 'PublicCheckUserSubscriptionSubscribableByItemId' test.out

#- 426 PublicGetUserSubscription
samples/cli/sample-apps Platform publicGetUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'ADMptUaxNv4W1xrP' \
    --userId 'OWGp3t0EzvKUi4kM' \
    > test.out 2>&1
eval_tap $? 426 'PublicGetUserSubscription' test.out

#- 427 PublicChangeSubscriptionBillingAccount
samples/cli/sample-apps Platform publicChangeSubscriptionBillingAccount \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'jxROnPEtxNwjDCPD' \
    --userId 'pLOdXd7t8OONJIB8' \
    > test.out 2>&1
eval_tap $? 427 'PublicChangeSubscriptionBillingAccount' test.out

#- 428 PublicCancelSubscription
samples/cli/sample-apps Platform publicCancelSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'fB4y7U8dfE9DERYh' \
    --userId 'oemmsSpsW0WOXxAv' \
    --body '{"immediate": false, "reason": "nUpm70JucACPOhxd"}' \
    > test.out 2>&1
eval_tap $? 428 'PublicCancelSubscription' test.out

#- 429 PublicGetUserSubscriptionBillingHistories
samples/cli/sample-apps Platform publicGetUserSubscriptionBillingHistories \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'X2vBY85safmP6aoM' \
    --userId 'KwrdVwq0o6dr4huN' \
    --excludeFree 'false' \
    --limit '34' \
    --offset '50' \
    > test.out 2>&1
eval_tap $? 429 'PublicGetUserSubscriptionBillingHistories' test.out

#- 430 PublicListViews
samples/cli/sample-apps Platform publicListViews \
    --namespace $AB_NAMESPACE \
    --userId 'GiDAaUoftbNYrif9' \
    --language 'h3ml8h4LGYucWj50' \
    --storeId 'RZ3uaIEUWYWbe7jb' \
    > test.out 2>&1
eval_tap $? 430 'PublicListViews' test.out

#- 431 PublicGetWallet
samples/cli/sample-apps Platform publicGetWallet \
    --currencyCode 'OMD4uYp3DyPAke36' \
    --namespace $AB_NAMESPACE \
    --userId 'bnwMW1fc4iFuTEV1' \
    > test.out 2>&1
eval_tap $? 431 'PublicGetWallet' test.out

#- 432 PublicListUserWalletTransactions
samples/cli/sample-apps Platform publicListUserWalletTransactions \
    --currencyCode 'pq2GsTnaoCMl4VTH' \
    --namespace $AB_NAMESPACE \
    --userId 'QIbaGOIwjcE5Iwc3' \
    --limit '96' \
    --offset '100' \
    > test.out 2>&1
eval_tap $? 432 'PublicListUserWalletTransactions' test.out

#- 433 QueryItems1
samples/cli/sample-apps Platform queryItems1 \
    --namespace $AB_NAMESPACE \
    --appType 'SOFTWARE' \
    --availableDate 'eMAiqt7KhZEEnQQ4' \
    --baseAppId '5FzXBgOtle63Bxc4' \
    --categoryPath 'JVmYnbqVjquaS8tk' \
    --features 'WQ1kLKf8l6Ca9PwX' \
    --includeSubCategoryItem 'true' \
    --itemName 'g4eog3EGAEsuMvMW' \
    --itemStatus 'INACTIVE' \
    --itemType 'LOOTBOX' \
    --limit '99' \
    --offset '39' \
    --region 'Y4nRYt1IBwkj9ydQ' \
    --sectionExclusive 'true' \
    --sortBy '["displayOrder", "updatedAt", "createdAt:desc"]' \
    --storeId 'JSv3YCsgGrlyTzxB' \
    --tags '5UwhgI7OXA9hokOG' \
    --targetNamespace 'Faosn5fsx46f1P4e' \
    --withTotal 'true' \
    > test.out 2>&1
eval_tap $? 433 'QueryItems1' test.out

#- 434 ImportStore1
samples/cli/sample-apps Platform importStore1 \
    --namespace $AB_NAMESPACE \
    --storeId 'z168nLk11lcTjFxw' \
    --strictMode 'true' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 434 'ImportStore1' test.out

#- 435 ExportStore1
samples/cli/sample-apps Platform exportStore1 \
    --namespace $AB_NAMESPACE \
    --storeId 'GHrmvUkx1v55b6sL' \
    --body '{"itemIds": ["8b4XMAveC9xW3qIA", "mEzBhRrhj9iVzEOv", "6kg6WAlm5svCUIv2"]}' \
    > test.out 2>&1
eval_tap $? 435 'ExportStore1' test.out

#- 436 FulfillRewardsV2
samples/cli/sample-apps Platform fulfillRewardsV2 \
    --namespace $AB_NAMESPACE \
    --userId 'j7LUkI6LpM5U1ljB' \
    --body '{"entitlementOrigin": "GooglePlay", "metadata": {"NN92WIrM4MTXKzOZ": {}, "9oVjjChncCg6tRS2": {}, "yHJggOKsx8ESZiN3": {}}, "origin": "Steam", "rewards": [{"currency": {"currencyCode": "M0peB4LMRoE9P1Uy", "namespace": "1qsZjy96WmDZ8utU"}, "item": {"itemId": "Xgyl9SEQI065S2IR", "itemSku": "4lBZ59cYQOx1KK5D", "itemType": "sPYc2K1JiewttTaC"}, "quantity": 55, "type": "ITEM"}, {"currency": {"currencyCode": "BXq7eRZNgtMN0CrM", "namespace": "kSCas5wqXiwkLNuq"}, "item": {"itemId": "r4GaZnplEcSxM46r", "itemSku": "8Co8RzckDtoXQmPK", "itemType": "3YnylQZNqUb7yhJq"}, "quantity": 29, "type": "ITEM"}, {"currency": {"currencyCode": "t6VWSq7mY1DvakNM", "namespace": "syMpPYr7HXChT4W4"}, "item": {"itemId": "ZCvrjpFyZFIMPEBt", "itemSku": "SEklTWExQQ1N8rmx", "itemType": "k6NiZW2N8EKMb1nd"}, "quantity": 55, "type": "ITEM"}], "source": "REDEEM_CODE", "transactionId": "1WIPUG2RXP9XRxnb"}' \
    > test.out 2>&1
eval_tap $? 436 'FulfillRewardsV2' test.out


rm -f "tmp.dat"

exit $EXIT_CODE