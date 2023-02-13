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
echo "1..383"

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

#- 3 TestFulfillmentScriptEval
samples/cli/sample-apps Platform testFulfillmentScriptEval \
    --body '{"context": {"item": {"appId": "aCwM7Znx", "appType": "GAME", "baseAppId": "Nwo5IxV9", "boothName": "j8IGSyFh", "boundItemIds": ["KqOqK04c", "RI8Ak5BK", "0umtADdM"], "categoryPath": "NPQko1kP", "clazz": "2rEFUxAs", "createdAt": "1991-12-11T00:00:00Z", "description": "GONRwwik", "displayOrder": 44, "entitlementType": "CONSUMABLE", "ext": {"H8X28afK": {}, "bmFhEkL9": {}, "UTAVqdmw": {}}, "features": ["g0nvtZKr", "qqxqh2Av", "Z4S3UUID"], "fresh": true, "images": [{"as": "rjAjynVw", "caption": "Otkoh0Rc", "height": 29, "imageUrl": "yRKFvx42", "smallImageUrl": "auOKWBzz", "width": 29}, {"as": "CmE1VdpQ", "caption": "PHejXhds", "height": 15, "imageUrl": "BPpuHvLp", "smallImageUrl": "DWQWeBds", "width": 75}, {"as": "tOxYoM7p", "caption": "QXNiNfUd", "height": 35, "imageUrl": "n0GGX8Ff", "smallImageUrl": "ON4hbqFi", "width": 64}], "itemId": "kiN5fur1", "itemIds": ["TJAvmcdo", "RvPXF5zS", "KZwTUk6U"], "itemQty": {"YA8q5rkW": 60, "RBtudr0p": 12, "Ypa0f9jq": 60}, "itemType": "SEASON", "language": "k5Id7Nxq", "listable": true, "localExt": {"w00xnorx": {}, "3UXfQAb3": {}, "mOJRKv73": {}}, "longDescription": "kQE1Eiib", "lootBoxConfig": {"rewardCount": 24, "rewards": [{"lootBoxItems": [{"count": 33, "itemId": "NeojLQ7o", "itemSku": "tyIPIaHh", "itemType": "9dv6bulV"}, {"count": 7, "itemId": "y4oy7t4a", "itemSku": "tTb60cII", "itemType": "7Zku8zgP"}, {"count": 39, "itemId": "Rp97kWF8", "itemSku": "Rv3T5IaT", "itemType": "rPEAaxS6"}], "name": "bDPvwoKS", "odds": 0.5644086996672535, "type": "REWARD_GROUP", "weight": 10}, {"lootBoxItems": [{"count": 57, "itemId": "EOC6nrJf", "itemSku": "KvPYu3KN", "itemType": "pYcnkfsf"}, {"count": 96, "itemId": "XJyo6wkK", "itemSku": "dXCr3juz", "itemType": "Y4iAGUVV"}, {"count": 89, "itemId": "m9vKfpGd", "itemSku": "2CYiNyqq", "itemType": "hwr7eSQS"}], "name": "QG5zUmJq", "odds": 0.4785917583039173, "type": "REWARD", "weight": 81}, {"lootBoxItems": [{"count": 65, "itemId": "rnnzU4pS", "itemSku": "6SlZTSqH", "itemType": "3Ixyj0fl"}, {"count": 9, "itemId": "UZMwNKYz", "itemSku": "K6D7iVxO", "itemType": "djUxQ6kA"}, {"count": 23, "itemId": "E1AYI1On", "itemSku": "xSogVe5S", "itemType": "bEOfeNkj"}], "name": "yBDE9WQh", "odds": 0.7834682649520714, "type": "REWARD", "weight": 69}], "rollFunction": "CUSTOM"}, "maxCount": 41, "maxCountPerUser": 78, "name": "Ey9qQEaI", "namespace": "9JQEMaMZ", "optionBoxConfig": {"boxItems": [{"count": 28, "itemId": "2q6Xm5Yq", "itemSku": "DC5Z0s4u", "itemType": "BD6BM7Zh"}, {"count": 50, "itemId": "kOHiqBJ1", "itemSku": "pRhE2Ldt", "itemType": "KMtEQWfy"}, {"count": 5, "itemId": "ecbCoEdf", "itemSku": "3Q28z6VY", "itemType": "WPK0fo1D"}]}, "purchasable": false, "purchaseCondition": {"conditionGroups": [{"operator": "and", "predicates": [{"anyOf": 98, "comparison": "isLessThan", "name": "SEmJuE25", "predicateType": "SeasonPassPredicate", "value": "ieyw3WmM", "values": ["c1RkvbsZ", "9RyTNuAM", "zai988df"]}, {"anyOf": 84, "comparison": "isNot", "name": "cLQ4HXnz", "predicateType": "SeasonTierPredicate", "value": "wT2Bzroz", "values": ["YWzl63jP", "Ggb5db2A", "SNz5W7zd"]}, {"anyOf": 95, "comparison": "isNot", "name": "6UcgUK75", "predicateType": "SeasonPassPredicate", "value": "6wgctcFE", "values": ["RXoQRW6F", "NaSFZ6vd", "9sJYnqsH"]}]}, {"operator": "and", "predicates": [{"anyOf": 63, "comparison": "isNot", "name": "5MPvToUj", "predicateType": "EntitlementPredicate", "value": "A0tvibxj", "values": ["fH5zFcFY", "gyPEI657", "YFs5lroE"]}, {"anyOf": 69, "comparison": "includes", "name": "RDpGpYjq", "predicateType": "SeasonPassPredicate", "value": "7AUKEBS2", "values": ["j3GeT0fL", "2pKVoqbu", "BHliDrRj"]}, {"anyOf": 19, "comparison": "isGreaterThan", "name": "F8a40bRk", "predicateType": "SeasonTierPredicate", "value": "MdJHPdJE", "values": ["vM4T8SGh", "W4ptV1y8", "HEIGvcDV"]}]}, {"operator": "and", "predicates": [{"anyOf": 23, "comparison": "excludes", "name": "LHTYUxiq", "predicateType": "SeasonPassPredicate", "value": "fzQhFYy6", "values": ["CG2J1kcH", "xQKR4L2s", "6W4akCBJ"]}, {"anyOf": 93, "comparison": "isGreaterThanOrEqual", "name": "ceBYqd2A", "predicateType": "SeasonTierPredicate", "value": "VBDliLzl", "values": ["9fysUfwt", "zbt6d41Y", "GmW7UOfi"]}, {"anyOf": 90, "comparison": "isLessThanOrEqual", "name": "IFTOJMM4", "predicateType": "EntitlementPredicate", "value": "s8OhSn4T", "values": ["G87YXv3e", "nD8kOAvv", "RkkzYqY6"]}]}]}, "recurring": {"cycle": "YEARLY", "fixedFreeDays": 12, "fixedTrialCycles": 24, "graceDays": 21}, "region": "jHvHUdTl", "regionData": [{"currencyCode": "Aw3QTkHB", "currencyNamespace": "KrK577fB", "currencyType": "REAL", "discountAmount": 100, "discountExpireAt": "1980-04-20T00:00:00Z", "discountPercentage": 92, "discountPurchaseAt": "1995-12-07T00:00:00Z", "discountedPrice": 0, "expireAt": "1972-04-07T00:00:00Z", "price": 31, "purchaseAt": "1990-06-10T00:00:00Z", "trialPrice": 85}, {"currencyCode": "u12l0Yn4", "currencyNamespace": "TI0J7FBB", "currencyType": "VIRTUAL", "discountAmount": 10, "discountExpireAt": "1986-03-28T00:00:00Z", "discountPercentage": 81, "discountPurchaseAt": "1971-11-18T00:00:00Z", "discountedPrice": 93, "expireAt": "1984-11-20T00:00:00Z", "price": 11, "purchaseAt": "1976-06-09T00:00:00Z", "trialPrice": 88}, {"currencyCode": "aiaRbwG6", "currencyNamespace": "ZYnolq5q", "currencyType": "VIRTUAL", "discountAmount": 87, "discountExpireAt": "1990-02-28T00:00:00Z", "discountPercentage": 0, "discountPurchaseAt": "1983-01-07T00:00:00Z", "discountedPrice": 61, "expireAt": "1992-02-23T00:00:00Z", "price": 65, "purchaseAt": "1990-05-09T00:00:00Z", "trialPrice": 0}], "seasonType": "TIER", "sku": "ZzthiGLJ", "stackable": true, "status": "INACTIVE", "tags": ["UZoWpBMp", "q0aZaYIR", "wI1s64mA"], "targetCurrencyCode": "LJIEHuzo", "targetItemId": "v30krPhe", "targetNamespace": "WdinC7JL", "thumbnailUrl": "kABdmoEJ", "title": "YYYILWMZ", "updatedAt": "1981-11-14T00:00:00Z", "useCount": 78}, "namespace": "vTStrOmn", "order": {"currency": {"currencyCode": "ugLvDmBf", "currencySymbol": "AUbOgoKN", "currencyType": "VIRTUAL", "decimals": 67, "namespace": "FRy7gEjf"}, "ext": {"KGMIHP4o": {}, "8JCjEKT6": {}, "9pzFIyTs": {}}, "free": false}, "source": "REFERRAL_BONUS"}, "script": "AJE9UbUP", "type": "grantDays"}' \
    > test.out 2>&1
eval_tap $? 3 'TestFulfillmentScriptEval' test.out

#- 4 GetFulfillmentScript
samples/cli/sample-apps Platform getFulfillmentScript \
    --id 'VczFgwo2' \
    > test.out 2>&1
eval_tap $? 4 'GetFulfillmentScript' test.out

#- 5 CreateFulfillmentScript
samples/cli/sample-apps Platform createFulfillmentScript \
    --id 'lHJUpYNz' \
    --body '{"grantDays": "GpvO6Ljy"}' \
    > test.out 2>&1
eval_tap $? 5 'CreateFulfillmentScript' test.out

#- 6 DeleteFulfillmentScript
samples/cli/sample-apps Platform deleteFulfillmentScript \
    --id 'N99KSd01' \
    > test.out 2>&1
eval_tap $? 6 'DeleteFulfillmentScript' test.out

#- 7 UpdateFulfillmentScript
samples/cli/sample-apps Platform updateFulfillmentScript \
    --id 'ystx9UTJ' \
    --body '{"grantDays": "XFRTSuEo"}' \
    > test.out 2>&1
eval_tap $? 7 'UpdateFulfillmentScript' test.out

#- 8 ListItemTypeConfigs
samples/cli/sample-apps Platform listItemTypeConfigs \
    > test.out 2>&1
eval_tap $? 8 'ListItemTypeConfigs' test.out

#- 9 CreateItemTypeConfig
samples/cli/sample-apps Platform createItemTypeConfig \
    --body '{"clazz": "7IfIb063", "dryRun": true, "fulfillmentUrl": "AFA9DlJu", "itemType": "MEDIA", "purchaseConditionUrl": "ssAsJAnN"}' \
    > test.out 2>&1
eval_tap $? 9 'CreateItemTypeConfig' test.out

#- 10 SearchItemTypeConfig
samples/cli/sample-apps Platform searchItemTypeConfig \
    --clazz 'Yqwqg299' \
    --itemType 'OPTIONBOX' \
    > test.out 2>&1
eval_tap $? 10 'SearchItemTypeConfig' test.out

#- 11 GetItemTypeConfig
samples/cli/sample-apps Platform getItemTypeConfig \
    --id 'ml3KOzvl' \
    > test.out 2>&1
eval_tap $? 11 'GetItemTypeConfig' test.out

#- 12 UpdateItemTypeConfig
samples/cli/sample-apps Platform updateItemTypeConfig \
    --id 'DkbRheMj' \
    --body '{"clazz": "BcPWg7Pq", "dryRun": true, "fulfillmentUrl": "YAPbqiRw", "purchaseConditionUrl": "jbeh8eUp"}' \
    > test.out 2>&1
eval_tap $? 12 'UpdateItemTypeConfig' test.out

#- 13 DeleteItemTypeConfig
samples/cli/sample-apps Platform deleteItemTypeConfig \
    --id 'BBpVIrTZ' \
    > test.out 2>&1
eval_tap $? 13 'DeleteItemTypeConfig' test.out

#- 14 QueryCampaigns
samples/cli/sample-apps Platform queryCampaigns \
    --namespace $AB_NAMESPACE \
    --limit '20' \
    --name 'WLl8Ch7m' \
    --offset '33' \
    --tag 'iw7haQKH' \
    > test.out 2>&1
eval_tap $? 14 'QueryCampaigns' test.out

#- 15 CreateCampaign
samples/cli/sample-apps Platform createCampaign \
    --namespace $AB_NAMESPACE \
    --body '{"description": "ueb2AMhA", "items": [{"extraSubscriptionDays": 67, "itemId": "uvVUPv0K", "itemName": "MbytU16Q", "quantity": 98}, {"extraSubscriptionDays": 62, "itemId": "bYmqbnfT", "itemName": "m1oEmHmj", "quantity": 79}, {"extraSubscriptionDays": 88, "itemId": "BYgljO6d", "itemName": "hBBJcmlf", "quantity": 33}], "maxRedeemCountPerCampaignPerUser": 47, "maxRedeemCountPerCode": 76, "maxRedeemCountPerCodePerUser": 58, "maxSaleCount": 13, "name": "ZPPFDhcy", "redeemEnd": "1978-09-24T00:00:00Z", "redeemStart": "1987-09-12T00:00:00Z", "redeemType": "ITEM", "status": "INACTIVE", "tags": ["3EcJVHhp", "ZvOrqOoq", "h7eQJKED"], "type": "REDEMPTION"}' \
    > test.out 2>&1
eval_tap $? 15 'CreateCampaign' test.out

#- 16 GetCampaign
samples/cli/sample-apps Platform getCampaign \
    --campaignId 'p5HXwsSs' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'GetCampaign' test.out

#- 17 UpdateCampaign
samples/cli/sample-apps Platform updateCampaign \
    --campaignId 'QXIZir31' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "jS6yaiKn", "items": [{"extraSubscriptionDays": 41, "itemId": "fzoSzrpo", "itemName": "HoLej5I8", "quantity": 64}, {"extraSubscriptionDays": 45, "itemId": "ONmqMTNP", "itemName": "UoEzZvwJ", "quantity": 24}, {"extraSubscriptionDays": 86, "itemId": "5fA7tef6", "itemName": "7BUIaWdj", "quantity": 89}], "maxRedeemCountPerCampaignPerUser": 49, "maxRedeemCountPerCode": 56, "maxRedeemCountPerCodePerUser": 45, "maxSaleCount": 48, "name": "0PhQbHv1", "redeemEnd": "1976-12-12T00:00:00Z", "redeemStart": "1971-10-29T00:00:00Z", "redeemType": "ITEM", "status": "INACTIVE", "tags": ["q2AFoy8K", "t4avQ9As", "sFCU75Kr"]}' \
    > test.out 2>&1
eval_tap $? 17 'UpdateCampaign' test.out

#- 18 GetCampaignDynamic
samples/cli/sample-apps Platform getCampaignDynamic \
    --campaignId '3rbiWjBB' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'GetCampaignDynamic' test.out

#- 19 GetRootCategories
samples/cli/sample-apps Platform getRootCategories \
    --namespace $AB_NAMESPACE \
    --storeId 'uiaRf3Ml' \
    > test.out 2>&1
eval_tap $? 19 'GetRootCategories' test.out

#- 20 CreateCategory
samples/cli/sample-apps Platform createCategory \
    --namespace $AB_NAMESPACE \
    --storeId 'iTHtCr5K' \
    --body '{"categoryPath": "E3zFr2eT", "localizationDisplayNames": {"kfm5xigP": "S4nLxKCn", "uwzzr7Cs": "URxIiLf7", "nnZRjw8Y": "2gSadxsH"}}' \
    > test.out 2>&1
eval_tap $? 20 'CreateCategory' test.out

#- 21 ListCategoriesBasic
samples/cli/sample-apps Platform listCategoriesBasic \
    --namespace $AB_NAMESPACE \
    --storeId '4rMCigJa' \
    > test.out 2>&1
eval_tap $? 21 'ListCategoriesBasic' test.out

#- 22 GetCategory
samples/cli/sample-apps Platform getCategory \
    --categoryPath '3nFMtBdh' \
    --namespace $AB_NAMESPACE \
    --storeId 'Kr0TM4Nm' \
    > test.out 2>&1
eval_tap $? 22 'GetCategory' test.out

#- 23 UpdateCategory
samples/cli/sample-apps Platform updateCategory \
    --categoryPath 'NK7SQOmU' \
    --namespace $AB_NAMESPACE \
    --storeId 'mVa7ApIm' \
    --body '{"localizationDisplayNames": {"FTtcaJ6z": "B2C33NDL", "aFtEeYIQ": "5nORnNGe", "uDHiLknA": "RUqvukjF"}}' \
    > test.out 2>&1
eval_tap $? 23 'UpdateCategory' test.out

#- 24 DeleteCategory
samples/cli/sample-apps Platform deleteCategory \
    --categoryPath 'uXdScG3q' \
    --namespace $AB_NAMESPACE \
    --storeId 'SyGkEgli' \
    > test.out 2>&1
eval_tap $? 24 'DeleteCategory' test.out

#- 25 GetChildCategories
samples/cli/sample-apps Platform getChildCategories \
    --categoryPath 'n1w5l81w' \
    --namespace $AB_NAMESPACE \
    --storeId 'm4u4Lsm7' \
    > test.out 2>&1
eval_tap $? 25 'GetChildCategories' test.out

#- 26 GetDescendantCategories
samples/cli/sample-apps Platform getDescendantCategories \
    --categoryPath 'fZeme53M' \
    --namespace $AB_NAMESPACE \
    --storeId 'uRwKHRxZ' \
    > test.out 2>&1
eval_tap $? 26 'GetDescendantCategories' test.out

#- 27 QueryCodes
samples/cli/sample-apps Platform queryCodes \
    --campaignId 'ZbPmMztl' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --batchNo '53' \
    --code 'S8drz5Oz' \
    --limit '54' \
    --offset '68' \
    > test.out 2>&1
eval_tap $? 27 'QueryCodes' test.out

#- 28 CreateCodes
samples/cli/sample-apps Platform createCodes \
    --campaignId 'RxBCaZ6O' \
    --namespace $AB_NAMESPACE \
    --body '{"quantity": 25}' \
    > test.out 2>&1
eval_tap $? 28 'CreateCodes' test.out

#- 29 Download
samples/cli/sample-apps Platform download \
    --campaignId 'pSkEyUxn' \
    --namespace $AB_NAMESPACE \
    --batchNo '72' \
    > test.out 2>&1
eval_tap $? 29 'Download' test.out

#- 30 BulkDisableCodes
samples/cli/sample-apps Platform bulkDisableCodes \
    --campaignId 'U8a93Qmj' \
    --namespace $AB_NAMESPACE \
    --batchNo '50' \
    > test.out 2>&1
eval_tap $? 30 'BulkDisableCodes' test.out

#- 31 BulkEnableCodes
samples/cli/sample-apps Platform bulkEnableCodes \
    --campaignId '0GpCJE6W' \
    --namespace $AB_NAMESPACE \
    --batchNo '74' \
    > test.out 2>&1
eval_tap $? 31 'BulkEnableCodes' test.out

#- 32 QueryRedeemHistory
samples/cli/sample-apps Platform queryRedeemHistory \
    --campaignId '97QIdQmt' \
    --namespace $AB_NAMESPACE \
    --code 'yCFnUkdk' \
    --limit '38' \
    --offset '67' \
    --userId 'Uzs9otW2' \
    > test.out 2>&1
eval_tap $? 32 'QueryRedeemHistory' test.out

#- 33 GetCode
samples/cli/sample-apps Platform getCode \
    --code '2lTpwnxA' \
    --namespace $AB_NAMESPACE \
    --redeemable 'false' \
    > test.out 2>&1
eval_tap $? 33 'GetCode' test.out

#- 34 DisableCode
samples/cli/sample-apps Platform disableCode \
    --code 'ZgOEiZT6' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 34 'DisableCode' test.out

#- 35 EnableCode
samples/cli/sample-apps Platform enableCode \
    --code 'qa6oOnQX' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 35 'EnableCode' test.out

#- 36 GetServicePluginConfig
samples/cli/sample-apps Platform getServicePluginConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 36 'GetServicePluginConfig' test.out

#- 37 UpdateServicePluginConfig
samples/cli/sample-apps Platform updateServicePluginConfig \
    --namespace $AB_NAMESPACE \
    --body '{"grpcServerAddress": "STyam6Hw"}' \
    > test.out 2>&1
eval_tap $? 37 'UpdateServicePluginConfig' test.out

#- 38 DeleteServicePluginConfig
samples/cli/sample-apps Platform deleteServicePluginConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 38 'DeleteServicePluginConfig' test.out

#- 39 ListCurrencies
samples/cli/sample-apps Platform listCurrencies \
    --namespace $AB_NAMESPACE \
    --currencyType 'REAL' \
    > test.out 2>&1
eval_tap $? 39 'ListCurrencies' test.out

#- 40 CreateCurrency
samples/cli/sample-apps Platform createCurrency \
    --namespace $AB_NAMESPACE \
    --body '{"currencyCode": "MbGA08Li", "currencySymbol": "HBv0hHx1", "currencyType": "REAL", "decimals": 33, "localizationDescriptions": {"7akNGGBW": "WDf1OFvg", "F3yBICuR": "DY6Gowrp", "4sZsfu3r": "7HPb5tEK"}}' \
    > test.out 2>&1
eval_tap $? 40 'CreateCurrency' test.out

#- 41 UpdateCurrency
samples/cli/sample-apps Platform updateCurrency \
    --currencyCode 'V5XR1cyL' \
    --namespace $AB_NAMESPACE \
    --body '{"localizationDescriptions": {"mUtZLUdU": "0sMuupKO", "1ScEGqz1": "PBNHGtkS", "4OctkEza": "Bd6mEgOG"}}' \
    > test.out 2>&1
eval_tap $? 41 'UpdateCurrency' test.out

#- 42 DeleteCurrency
samples/cli/sample-apps Platform deleteCurrency \
    --currencyCode 'lnuplv1c' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 42 'DeleteCurrency' test.out

#- 43 GetCurrencyConfig
samples/cli/sample-apps Platform getCurrencyConfig \
    --currencyCode '27wDu3wN' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 43 'GetCurrencyConfig' test.out

#- 44 GetCurrencySummary
samples/cli/sample-apps Platform getCurrencySummary \
    --currencyCode 'UEbYQM71' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 44 'GetCurrencySummary' test.out

#- 45 GetDLCItemConfig
samples/cli/sample-apps Platform getDLCItemConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 45 'GetDLCItemConfig' test.out

#- 46 UpdateDLCItemConfig
samples/cli/sample-apps Platform updateDLCItemConfig \
    --namespace $AB_NAMESPACE \
    --body '{"data": [{"id": "6tfxp57S", "rewards": [{"currency": {"currencyCode": "hABy3XRg", "namespace": "JotI2aeQ"}, "item": {"itemId": "1iz7OhfR", "itemSku": "E4SKd2ar", "itemType": "bYCc88CW"}, "quantity": 55, "type": "CURRENCY"}, {"currency": {"currencyCode": "O5UydPdq", "namespace": "0MtIH4jL"}, "item": {"itemId": "hKrJ2f8O", "itemSku": "7MyTP1xH", "itemType": "x36kvyMn"}, "quantity": 20, "type": "CURRENCY"}, {"currency": {"currencyCode": "HIpgsBOp", "namespace": "Nx5mcV25"}, "item": {"itemId": "vtFSttMl", "itemSku": "RjsjZpbZ", "itemType": "RDbwA9Ax"}, "quantity": 98, "type": "ITEM"}]}, {"id": "Pp0l9npm", "rewards": [{"currency": {"currencyCode": "m8BIsSSi", "namespace": "dT6k3bpu"}, "item": {"itemId": "GWAVRn4r", "itemSku": "CyscZLij", "itemType": "dLH3RoNR"}, "quantity": 98, "type": "ITEM"}, {"currency": {"currencyCode": "nciGPuW6", "namespace": "tFcDH4rj"}, "item": {"itemId": "qafB9KFg", "itemSku": "QLz6eoIN", "itemType": "y3C97dK6"}, "quantity": 26, "type": "CURRENCY"}, {"currency": {"currencyCode": "GxwrEsRm", "namespace": "R9J72CGM"}, "item": {"itemId": "CjezYzpZ", "itemSku": "MTGboYTK", "itemType": "MKIWJYHQ"}, "quantity": 6, "type": "ITEM"}]}, {"id": "u4kgAmDA", "rewards": [{"currency": {"currencyCode": "gVS6m2QH", "namespace": "4zl1LTZM"}, "item": {"itemId": "Xwc6P5cE", "itemSku": "W9lkXAS7", "itemType": "dE2Lyhtk"}, "quantity": 92, "type": "ITEM"}, {"currency": {"currencyCode": "TAXmED2V", "namespace": "CAlBfTQg"}, "item": {"itemId": "wsS5QMwn", "itemSku": "fiELX0hb", "itemType": "Soldkwet"}, "quantity": 50, "type": "CURRENCY"}, {"currency": {"currencyCode": "7OapONEZ", "namespace": "uKBz9DX0"}, "item": {"itemId": "3bQ1HZHm", "itemSku": "ewntzjMt", "itemType": "oGVbddw9"}, "quantity": 52, "type": "CURRENCY"}]}]}' \
    > test.out 2>&1
eval_tap $? 46 'UpdateDLCItemConfig' test.out

#- 47 DeleteDLCItemConfig
samples/cli/sample-apps Platform deleteDLCItemConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 47 'DeleteDLCItemConfig' test.out

#- 48 GetPlatformDLCConfig
samples/cli/sample-apps Platform getPlatformDLCConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 48 'GetPlatformDLCConfig' test.out

#- 49 UpdatePlatformDLCConfig
samples/cli/sample-apps Platform updatePlatformDLCConfig \
    --namespace $AB_NAMESPACE \
    --body '{"data": [{"platform": "PSN", "platformDlcIdMap": {"W660PcnN": "RmQmQNO7", "BDg3Sk43": "7kenNrJd", "gpuunOTm": "gYUEjeMA"}}, {"platform": "EPICGAMES", "platformDlcIdMap": {"0iFNyGrb": "eqeeVFD6", "oJZ02PhH": "LWdKEGYR", "sJSvQEqx": "LMWDNRen"}}, {"platform": "STEAM", "platformDlcIdMap": {"XSVoXKPF": "ZWVRzBf3", "m69e9nLS": "z5qs28Sv", "67jk4fOo": "24MhsWLn"}}]}' \
    > test.out 2>&1
eval_tap $? 49 'UpdatePlatformDLCConfig' test.out

#- 50 DeletePlatformDLCConfig
samples/cli/sample-apps Platform deletePlatformDLCConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 50 'DeletePlatformDLCConfig' test.out

#- 51 QueryEntitlements
samples/cli/sample-apps Platform queryEntitlements \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --appType 'DLC' \
    --entitlementClazz 'LOOTBOX' \
    --entitlementName 'iEC6UDSO' \
    --itemId '["MBZDrbyC", "yM5bsrpQ", "CgRrrbnq"]' \
    --limit '54' \
    --offset '80' \
    --userId 'nadKaYp3' \
    > test.out 2>&1
eval_tap $? 51 'QueryEntitlements' test.out

#- 52 GetEntitlement
samples/cli/sample-apps Platform getEntitlement \
    --entitlementId 'T7BbOpIL' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 52 'GetEntitlement' test.out

#- 53 QueryFulfillmentHistories
samples/cli/sample-apps Platform queryFulfillmentHistories \
    --namespace $AB_NAMESPACE \
    --limit '54' \
    --offset '88' \
    --status 'SUCCESS' \
    --userId 'U5JSqFNN' \
    > test.out 2>&1
eval_tap $? 53 'QueryFulfillmentHistories' test.out

#- 54 GetAppleIAPConfig
samples/cli/sample-apps Platform getAppleIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 54 'GetAppleIAPConfig' test.out

#- 55 UpdateAppleIAPConfig
samples/cli/sample-apps Platform updateAppleIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"bundleId": "rEr59kpY", "password": "PCqysr2U"}' \
    > test.out 2>&1
eval_tap $? 55 'UpdateAppleIAPConfig' test.out

#- 56 DeleteAppleIAPConfig
samples/cli/sample-apps Platform deleteAppleIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 56 'DeleteAppleIAPConfig' test.out

#- 57 GetEpicGamesIAPConfig
samples/cli/sample-apps Platform getEpicGamesIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 57 'GetEpicGamesIAPConfig' test.out

#- 58 UpdateEpicGamesIAPConfig
samples/cli/sample-apps Platform updateEpicGamesIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"sandboxId": "JUDjtMPW"}' \
    > test.out 2>&1
eval_tap $? 58 'UpdateEpicGamesIAPConfig' test.out

#- 59 DeleteEpicGamesIAPConfig
samples/cli/sample-apps Platform deleteEpicGamesIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 59 'DeleteEpicGamesIAPConfig' test.out

#- 60 GetGoogleIAPConfig
samples/cli/sample-apps Platform getGoogleIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 60 'GetGoogleIAPConfig' test.out

#- 61 UpdateGoogleIAPConfig
samples/cli/sample-apps Platform updateGoogleIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"applicationName": "go6LFruQ", "serviceAccountId": "nhYw47BW"}' \
    > test.out 2>&1
eval_tap $? 61 'UpdateGoogleIAPConfig' test.out

#- 62 DeleteGoogleIAPConfig
samples/cli/sample-apps Platform deleteGoogleIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 62 'DeleteGoogleIAPConfig' test.out

#- 63 UpdateGoogleP12File
samples/cli/sample-apps Platform updateGoogleP12File \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 63 'UpdateGoogleP12File' test.out

#- 64 GetIAPItemConfig
samples/cli/sample-apps Platform getIAPItemConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 64 'GetIAPItemConfig' test.out

#- 65 UpdateIAPItemConfig
samples/cli/sample-apps Platform updateIAPItemConfig \
    --namespace $AB_NAMESPACE \
    --body '{"data": [{"itemIdentity": "ZyRnyFD8", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"MFJ8xxiY": "47OqRcLo", "AmNhrW9H": "536nZeNK", "VhFigB3D": "He4bil2P"}}, {"itemIdentity": "d1quPQ9D", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"HQJvopdZ": "lj0Vlbez", "SyLNMruj": "j9roHPP1", "B0tDJV5M": "Dv88G4kf"}}, {"itemIdentity": "YQLrLsbs", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"0QiyreR2": "rTtn9YHt", "2Pztr9i5": "f8HpGYIn", "oMCxMglq": "SuzhDyvF"}}]}' \
    > test.out 2>&1
eval_tap $? 65 'UpdateIAPItemConfig' test.out

#- 66 DeleteIAPItemConfig
samples/cli/sample-apps Platform deleteIAPItemConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 66 'DeleteIAPItemConfig' test.out

#- 67 GetPlayStationIAPConfig
samples/cli/sample-apps Platform getPlayStationIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 67 'GetPlayStationIAPConfig' test.out

#- 68 UpdatePlaystationIAPConfig
samples/cli/sample-apps Platform updatePlaystationIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"environment": "8mZJtndz"}' \
    > test.out 2>&1
eval_tap $? 68 'UpdatePlaystationIAPConfig' test.out

#- 69 DeletePlaystationIAPConfig
samples/cli/sample-apps Platform deletePlaystationIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 69 'DeletePlaystationIAPConfig' test.out

#- 70 GetSteamIAPConfig
samples/cli/sample-apps Platform getSteamIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 70 'GetSteamIAPConfig' test.out

#- 71 UpdateSteamIAPConfig
samples/cli/sample-apps Platform updateSteamIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"appId": "rcrAhYy6", "publisherAuthenticationKey": "yZPZKBrz"}' \
    > test.out 2>&1
eval_tap $? 71 'UpdateSteamIAPConfig' test.out

#- 72 DeleteSteamIAPConfig
samples/cli/sample-apps Platform deleteSteamIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 72 'DeleteSteamIAPConfig' test.out

#- 73 GetTwitchIAPConfig
samples/cli/sample-apps Platform getTwitchIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 73 'GetTwitchIAPConfig' test.out

#- 74 UpdateTwitchIAPConfig
samples/cli/sample-apps Platform updateTwitchIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"clientId": "hVGHjk0w", "clientSecret": "yVk3H67D", "organizationId": "QHlBok7a"}' \
    > test.out 2>&1
eval_tap $? 74 'UpdateTwitchIAPConfig' test.out

#- 75 DeleteTwitchIAPConfig
samples/cli/sample-apps Platform deleteTwitchIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 75 'DeleteTwitchIAPConfig' test.out

#- 76 GetXblIAPConfig
samples/cli/sample-apps Platform getXblIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 76 'GetXblIAPConfig' test.out

#- 77 UpdateXblIAPConfig
samples/cli/sample-apps Platform updateXblIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"relyingPartyCert": "y6IMedfz"}' \
    > test.out 2>&1
eval_tap $? 77 'UpdateXblIAPConfig' test.out

#- 78 DeleteXblAPConfig
samples/cli/sample-apps Platform deleteXblAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 78 'DeleteXblAPConfig' test.out

#- 79 UpdateXblBPCertFile
samples/cli/sample-apps Platform updateXblBPCertFile \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    --password 'lJ4SrbYm' \
    > test.out 2>&1
eval_tap $? 79 'UpdateXblBPCertFile' test.out

#- 80 DownloadInvoiceDetails
samples/cli/sample-apps Platform downloadInvoiceDetails \
    --namespace $AB_NAMESPACE \
    --feature 'J2hBe3ng' \
    --itemId 'awWiQeSF' \
    --itemType 'APP' \
    --endTime 'MJOMjwlB' \
    --startTime 'HnaC9NKr' \
    > test.out 2>&1
eval_tap $? 80 'DownloadInvoiceDetails' test.out

#- 81 GenerateInvoiceSummary
samples/cli/sample-apps Platform generateInvoiceSummary \
    --namespace $AB_NAMESPACE \
    --feature 'QNEVChvW' \
    --itemId '6NU4iULW' \
    --itemType 'SUBSCRIPTION' \
    --endTime 'HLhOeFKi' \
    --startTime 'MO0RxfFq' \
    > test.out 2>&1
eval_tap $? 81 'GenerateInvoiceSummary' test.out

#- 82 SyncInGameItem
samples/cli/sample-apps Platform syncInGameItem \
    --namespace $AB_NAMESPACE \
    --storeId '1DKGdFvL' \
    --body '{"categoryPath": "GrOYRLoF", "targetItemId": "bA2HEzyC", "targetNamespace": "7W7Pj2m9"}' \
    > test.out 2>&1
eval_tap $? 82 'SyncInGameItem' test.out

#- 83 CreateItem
samples/cli/sample-apps Platform createItem \
    --namespace $AB_NAMESPACE \
    --storeId 'jvSvyiib' \
    --body '{"appId": "2eIolnce", "appType": "GAME", "baseAppId": "HD9QVbYG", "boothName": "EjxFY6b3", "categoryPath": "d7c8QEcd", "clazz": "JQTfKtAr", "displayOrder": 77, "entitlementType": "CONSUMABLE", "ext": {"ppQpQQgD": {}, "mBCSyBKN": {}, "vHj43MSn": {}}, "features": ["t5qiflGQ", "iFO4QGZ3", "4dNTqP4f"], "images": [{"as": "QcHnBckx", "caption": "mtoMk4yJ", "height": 62, "imageUrl": "wSUwFY4A", "smallImageUrl": "bwmCdg0X", "width": 23}, {"as": "62rtv2Da", "caption": "dXgEo8X5", "height": 14, "imageUrl": "dckjZAVZ", "smallImageUrl": "QlPQj0ak", "width": 38}, {"as": "oec5GPZi", "caption": "YJyb36vU", "height": 79, "imageUrl": "ca8zprRc", "smallImageUrl": "Z57ytVhv", "width": 89}], "itemIds": ["5nlBJrVK", "JBH0LYNG", "3bxr0TQW"], "itemQty": {"vTfYk20O": 25, "3xii8vXD": 93, "KNdHNfyb": 51}, "itemType": "INGAMEITEM", "listable": true, "localizations": {"qPKr9zI8": {"description": "TZD9Fibe", "localExt": {"rBjPpeiq": {}, "WySj0Idc": {}, "NTgJZruH": {}}, "longDescription": "4UNvbRHX", "title": "ipJgHjb8"}, "ZdeguSs2": {"description": "01gedggS", "localExt": {"xgWQ5c7h": {}, "K35fVk1O": {}, "D0JstSI0": {}}, "longDescription": "fINHkdYV", "title": "8UISBKt5"}, "JbKb3Enj": {"description": "D6KmJhWw", "localExt": {"aaUVdyCG": {}, "QyHMGaas": {}, "4zzBh3ML": {}}, "longDescription": "hFyClbPD", "title": "SXnMQFqS"}}, "lootBoxConfig": {"rewardCount": 22, "rewards": [{"lootBoxItems": [{"count": 45, "itemId": "omPbA3Rx", "itemSku": "sSGwAjec", "itemType": "W7e83xNZ"}, {"count": 72, "itemId": "zhTI9JgY", "itemSku": "Ih4oQVvy", "itemType": "0lzKMhBU"}, {"count": 38, "itemId": "Zu9GpdJT", "itemSku": "a7MQmUi3", "itemType": "ijVq7vUs"}], "name": "acQkOdtO", "odds": 0.01413047426147318, "type": "PROBABILITY_GROUP", "weight": 61}, {"lootBoxItems": [{"count": 24, "itemId": "XkiGg8e4", "itemSku": "3T0dSXZh", "itemType": "AYfrW08S"}, {"count": 95, "itemId": "DBvM88My", "itemSku": "8lwdwO6M", "itemType": "yupjFmhE"}, {"count": 92, "itemId": "0ELKfSLk", "itemSku": "pjAiI7LR", "itemType": "frojzWjW"}], "name": "sD5DKyPa", "odds": 0.1429466045990182, "type": "REWARD", "weight": 74}, {"lootBoxItems": [{"count": 16, "itemId": "UtSUZEOu", "itemSku": "IHaYZozw", "itemType": "q0fESQse"}, {"count": 13, "itemId": "oSwf8mUH", "itemSku": "AyThCoze", "itemType": "49u5Tx7A"}, {"count": 49, "itemId": "Cg3BQz7D", "itemSku": "xLCAqsHf", "itemType": "IbrNj6Ib"}], "name": "aEIJKPBW", "odds": 0.07551818535273702, "type": "REWARD_GROUP", "weight": 39}], "rollFunction": "CUSTOM"}, "maxCount": 11, "maxCountPerUser": 46, "name": "JBFyYp0J", "optionBoxConfig": {"boxItems": [{"count": 10, "itemId": "LcArgG6u", "itemSku": "ndeL8Wrg", "itemType": "fQzbDb87"}, {"count": 93, "itemId": "XBRuEnzP", "itemSku": "X0qbpRZN", "itemType": "GsXxAeQe"}, {"count": 23, "itemId": "UxAP9Rnr", "itemSku": "vRG9SSlo", "itemType": "pvHZWClp"}]}, "purchasable": true, "recurring": {"cycle": "MONTHLY", "fixedFreeDays": 71, "fixedTrialCycles": 9, "graceDays": 80}, "regionData": {"MZrIEWys": [{"currencyCode": "ZUgvufX8", "currencyNamespace": "wqR7Wlv8", "currencyType": "REAL", "discountAmount": 44, "discountExpireAt": "1995-05-22T00:00:00Z", "discountPercentage": 61, "discountPurchaseAt": "1972-11-01T00:00:00Z", "discountedPrice": 32, "expireAt": "1973-06-26T00:00:00Z", "price": 10, "purchaseAt": "1981-06-02T00:00:00Z", "trialPrice": 17}, {"currencyCode": "3qLYWzho", "currencyNamespace": "VltJ6KXk", "currencyType": "REAL", "discountAmount": 5, "discountExpireAt": "1976-01-06T00:00:00Z", "discountPercentage": 3, "discountPurchaseAt": "1999-09-17T00:00:00Z", "discountedPrice": 10, "expireAt": "1980-07-24T00:00:00Z", "price": 21, "purchaseAt": "1979-05-01T00:00:00Z", "trialPrice": 79}, {"currencyCode": "UgVqH81c", "currencyNamespace": "ImKnxGKt", "currencyType": "REAL", "discountAmount": 39, "discountExpireAt": "1989-07-09T00:00:00Z", "discountPercentage": 88, "discountPurchaseAt": "1990-10-03T00:00:00Z", "discountedPrice": 34, "expireAt": "1979-11-15T00:00:00Z", "price": 31, "purchaseAt": "1999-06-09T00:00:00Z", "trialPrice": 72}], "Srg3Es0p": [{"currencyCode": "BIhrgO9l", "currencyNamespace": "gUxnCYS9", "currencyType": "REAL", "discountAmount": 9, "discountExpireAt": "1999-07-16T00:00:00Z", "discountPercentage": 38, "discountPurchaseAt": "1987-02-04T00:00:00Z", "discountedPrice": 36, "expireAt": "1993-10-05T00:00:00Z", "price": 92, "purchaseAt": "1984-10-27T00:00:00Z", "trialPrice": 82}, {"currencyCode": "RhlwKLoD", "currencyNamespace": "unH9UNsm", "currencyType": "VIRTUAL", "discountAmount": 15, "discountExpireAt": "1979-09-13T00:00:00Z", "discountPercentage": 49, "discountPurchaseAt": "1993-09-11T00:00:00Z", "discountedPrice": 12, "expireAt": "1989-02-09T00:00:00Z", "price": 82, "purchaseAt": "1972-01-20T00:00:00Z", "trialPrice": 62}, {"currencyCode": "FfTcejYA", "currencyNamespace": "Z9kVIz4Z", "currencyType": "REAL", "discountAmount": 34, "discountExpireAt": "1992-03-24T00:00:00Z", "discountPercentage": 48, "discountPurchaseAt": "1990-06-28T00:00:00Z", "discountedPrice": 65, "expireAt": "1986-07-21T00:00:00Z", "price": 57, "purchaseAt": "1980-05-02T00:00:00Z", "trialPrice": 33}], "7COEPaKR": [{"currencyCode": "EEqrbaB0", "currencyNamespace": "T1RyPAFq", "currencyType": "VIRTUAL", "discountAmount": 5, "discountExpireAt": "1996-01-21T00:00:00Z", "discountPercentage": 70, "discountPurchaseAt": "1976-10-22T00:00:00Z", "discountedPrice": 59, "expireAt": "1993-10-19T00:00:00Z", "price": 41, "purchaseAt": "1975-02-11T00:00:00Z", "trialPrice": 39}, {"currencyCode": "hzwOvWUa", "currencyNamespace": "7oRoGR08", "currencyType": "REAL", "discountAmount": 46, "discountExpireAt": "1976-02-19T00:00:00Z", "discountPercentage": 15, "discountPurchaseAt": "1977-11-29T00:00:00Z", "discountedPrice": 85, "expireAt": "1978-05-24T00:00:00Z", "price": 54, "purchaseAt": "1978-08-04T00:00:00Z", "trialPrice": 22}, {"currencyCode": "vSDS49Sf", "currencyNamespace": "i0MoQFoI", "currencyType": "VIRTUAL", "discountAmount": 78, "discountExpireAt": "1987-02-11T00:00:00Z", "discountPercentage": 10, "discountPurchaseAt": "1987-04-23T00:00:00Z", "discountedPrice": 11, "expireAt": "1978-08-23T00:00:00Z", "price": 53, "purchaseAt": "1998-01-05T00:00:00Z", "trialPrice": 93}]}, "seasonType": "PASS", "sku": "JdKYYa9F", "stackable": true, "status": "ACTIVE", "tags": ["mnIKNh7z", "saTkIiKF", "jfo4J0kO"], "targetCurrencyCode": "m9lOAgp5", "targetNamespace": "r6rSydT2", "thumbnailUrl": "UQNIwYAN", "useCount": 79}' \
    > test.out 2>&1
eval_tap $? 83 'CreateItem' test.out

#- 84 GetItemByAppId
samples/cli/sample-apps Platform getItemByAppId \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'wn7IscPf' \
    --appId 'HUdGsROj' \
    > test.out 2>&1
eval_tap $? 84 'GetItemByAppId' test.out

#- 85 QueryItems
samples/cli/sample-apps Platform queryItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --appType 'GAME' \
    --availableDate 'sHiEgXt3' \
    --baseAppId 'D7tJRAQs' \
    --categoryPath 'UHAYK7c7' \
    --features 'TGHU0HBH' \
    --includeSubCategoryItem 'false' \
    --itemType 'SUBSCRIPTION' \
    --limit '59' \
    --offset '8' \
    --region 'Bpae4RVe' \
    --sortBy '["displayOrder", "createdAt:asc"]' \
    --storeId 'RRCw4CMc' \
    --tags 'HbgvlW0X' \
    --targetNamespace 'nu6tLV5J' \
    > test.out 2>&1
eval_tap $? 85 'QueryItems' test.out

#- 86 ListBasicItemsByFeatures
samples/cli/sample-apps Platform listBasicItemsByFeatures \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --features '["wptwfLJv", "OJaOjH3l", "o1G1akPN"]' \
    > test.out 2>&1
eval_tap $? 86 'ListBasicItemsByFeatures' test.out

#- 87 GetItemBySku
samples/cli/sample-apps Platform getItemBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'YckVLlQh' \
    --sku 'fZ1jPri7' \
    > test.out 2>&1
eval_tap $? 87 'GetItemBySku' test.out

#- 88 GetLocaleItemBySku
samples/cli/sample-apps Platform getLocaleItemBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --language 'J2HShej8' \
    --populateBundle 'true' \
    --region 'OYcb0qog' \
    --storeId 'LvAFc0f4' \
    --sku 'Z4BAcFhc' \
    > test.out 2>&1
eval_tap $? 88 'GetLocaleItemBySku' test.out

#- 89 GetItemIdBySku
samples/cli/sample-apps Platform getItemIdBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'w2nKBn8m' \
    --sku '6fzZhygV' \
    > test.out 2>&1
eval_tap $? 89 'GetItemIdBySku' test.out

#- 90 GetBulkItemIdBySkus
samples/cli/sample-apps Platform getBulkItemIdBySkus \
    --namespace $AB_NAMESPACE \
    --sku '["N56DPVs2", "ZmOpy1JF", "wE7ZNX4d"]' \
    --storeId 'JdcpQSyz' \
    > test.out 2>&1
eval_tap $? 90 'GetBulkItemIdBySkus' test.out

#- 91 BulkGetLocaleItems
samples/cli/sample-apps Platform bulkGetLocaleItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --language '4R9iAxwp' \
    --region 'LDJJXxgp' \
    --storeId 'rdR9nX60' \
    --itemIds '45AeCd1L' \
    > test.out 2>&1
eval_tap $? 91 'BulkGetLocaleItems' test.out

#- 92 GetAvailablePredicateTypes
samples/cli/sample-apps Platform getAvailablePredicateTypes \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 92 'GetAvailablePredicateTypes' test.out

#- 93 ValidateItemPurchaseCondition
samples/cli/sample-apps Platform validateItemPurchaseCondition \
    --namespace $AB_NAMESPACE \
    --userId 'nRX85tpV' \
    --body '{"itemIds": ["04IZ4i9s", "3JFeXTRH", "8QMYe2Tv"]}' \
    > test.out 2>&1
eval_tap $? 93 'ValidateItemPurchaseCondition' test.out

#- 94 SearchItems
samples/cli/sample-apps Platform searchItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --itemType 'COINS' \
    --limit '54' \
    --offset '67' \
    --sortBy 'vEx1lB8h' \
    --storeId 'izCjr7gk' \
    --keyword 'PIstrAUa' \
    --language 'qgtD4pFG' \
    > test.out 2>&1
eval_tap $? 94 'SearchItems' test.out

#- 95 QueryUncategorizedItems
samples/cli/sample-apps Platform queryUncategorizedItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --limit '82' \
    --offset '30' \
    --sortBy '["name:desc", "displayOrder:asc"]' \
    --storeId 'xINlxarq' \
    > test.out 2>&1
eval_tap $? 95 'QueryUncategorizedItems' test.out

#- 96 GetItem
samples/cli/sample-apps Platform getItem \
    --itemId 'cGSBZrKc' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --storeId 'fyBzONUL' \
    > test.out 2>&1
eval_tap $? 96 'GetItem' test.out

#- 97 UpdateItem
samples/cli/sample-apps Platform updateItem \
    --itemId 'W96n6Mfg' \
    --namespace $AB_NAMESPACE \
    --storeId 'vqMpArJz' \
    --body '{"appId": "uxTaTI4S", "appType": "DLC", "baseAppId": "FzBWiEWG", "boothName": "6F5ioXO9", "categoryPath": "mavlw1QX", "clazz": "mhwGALy0", "displayOrder": 88, "entitlementType": "DURABLE", "ext": {"udIbxycl": {}, "4ehUjFTF": {}, "Bkv5suop": {}}, "features": ["HxSKwqlt", "3UC3YzkP", "ctAZas4k"], "images": [{"as": "3UO5hWqw", "caption": "GvzQBIGF", "height": 14, "imageUrl": "hLMVFPhm", "smallImageUrl": "zEKMiUka", "width": 100}, {"as": "Nq48hOKw", "caption": "GBBG6gqV", "height": 5, "imageUrl": "gHvPESGn", "smallImageUrl": "wMCPh39b", "width": 92}, {"as": "9nsZU5uh", "caption": "Ui0GiOJM", "height": 85, "imageUrl": "ealipIEf", "smallImageUrl": "iQwjjdmd", "width": 82}], "itemIds": ["yyUAceQA", "ndqggNAJ", "CT0fgAAd"], "itemQty": {"mEfcQg6z": 99, "jAvcfqy6": 18, "hklg6c4A": 27}, "itemType": "EXTENSION", "listable": true, "localizations": {"7Q8H6kYR": {"description": "eFSVgwpW", "localExt": {"qKoAKi7V": {}, "aLtJXJOL": {}, "TYs3kJnc": {}}, "longDescription": "hRboTJwE", "title": "b8Rs1356"}, "lv9eSLuq": {"description": "acHgP9Ii", "localExt": {"M1CMwtpM": {}, "FhebkURO": {}, "5kP6Lmvb": {}}, "longDescription": "y6wgFWuy", "title": "y1KQMGaj"}, "Y3STZ0BC": {"description": "4yu5WYPm", "localExt": {"1sP5qlB4": {}, "tzDyQTDv": {}, "OtUr65p5": {}}, "longDescription": "NBe4l24U", "title": "80ktqOkm"}}, "lootBoxConfig": {"rewardCount": 94, "rewards": [{"lootBoxItems": [{"count": 39, "itemId": "WvjCIUvx", "itemSku": "VSTkr1cE", "itemType": "iCGqtK66"}, {"count": 38, "itemId": "CYxlSwiq", "itemSku": "V9zOWdtJ", "itemType": "JeZj9h86"}, {"count": 9, "itemId": "kZ68kBYj", "itemSku": "i6IBaTkf", "itemType": "ekhWEFWe"}], "name": "aH8pBfWI", "odds": 0.4791061421782048, "type": "REWARD", "weight": 53}, {"lootBoxItems": [{"count": 46, "itemId": "I3VwTgOY", "itemSku": "r9JJEVfi", "itemType": "3u2Hovpe"}, {"count": 42, "itemId": "mLSCHIlL", "itemSku": "pzS6SqrE", "itemType": "BY8pi3AF"}, {"count": 82, "itemId": "GbzUvvpP", "itemSku": "GIDeiCZp", "itemType": "tBLazzc8"}], "name": "eqtMEqtb", "odds": 0.19431010460951603, "type": "REWARD_GROUP", "weight": 83}, {"lootBoxItems": [{"count": 98, "itemId": "8zylu88H", "itemSku": "RV4ZAicd", "itemType": "J4eXSbJk"}, {"count": 64, "itemId": "yYbeT3L9", "itemSku": "cInIiQ0w", "itemType": "MJF0FSkb"}, {"count": 27, "itemId": "RYbdZziR", "itemSku": "qNMFaYZ3", "itemType": "hFJagubT"}], "name": "nu5e11m6", "odds": 0.5730282712292248, "type": "REWARD", "weight": 34}], "rollFunction": "DEFAULT"}, "maxCount": 52, "maxCountPerUser": 2, "name": "9I1z9OIV", "optionBoxConfig": {"boxItems": [{"count": 84, "itemId": "YJWc37GC", "itemSku": "GS41nlRM", "itemType": "UkPLQwzm"}, {"count": 11, "itemId": "txH2WWGp", "itemSku": "tgPUExMo", "itemType": "8a2slVtj"}, {"count": 4, "itemId": "fSzodplz", "itemSku": "aPUHO9wh", "itemType": "SBl5muUA"}]}, "purchasable": false, "recurring": {"cycle": "YEARLY", "fixedFreeDays": 11, "fixedTrialCycles": 74, "graceDays": 74}, "regionData": {"uufmfa1M": [{"currencyCode": "gTgX5t9i", "currencyNamespace": "0U4JAKdy", "currencyType": "REAL", "discountAmount": 13, "discountExpireAt": "1990-01-25T00:00:00Z", "discountPercentage": 40, "discountPurchaseAt": "1978-03-18T00:00:00Z", "discountedPrice": 58, "expireAt": "1998-02-04T00:00:00Z", "price": 86, "purchaseAt": "1983-01-03T00:00:00Z", "trialPrice": 24}, {"currencyCode": "6KD7HhAX", "currencyNamespace": "WeGbRkvl", "currencyType": "REAL", "discountAmount": 87, "discountExpireAt": "1973-05-22T00:00:00Z", "discountPercentage": 38, "discountPurchaseAt": "1986-03-01T00:00:00Z", "discountedPrice": 88, "expireAt": "1974-12-19T00:00:00Z", "price": 48, "purchaseAt": "1994-08-16T00:00:00Z", "trialPrice": 39}, {"currencyCode": "Wt6LdZtM", "currencyNamespace": "7Begcyap", "currencyType": "VIRTUAL", "discountAmount": 57, "discountExpireAt": "1997-01-25T00:00:00Z", "discountPercentage": 71, "discountPurchaseAt": "1975-04-03T00:00:00Z", "discountedPrice": 23, "expireAt": "1971-06-15T00:00:00Z", "price": 59, "purchaseAt": "1991-11-07T00:00:00Z", "trialPrice": 37}], "rSrlybvE": [{"currencyCode": "MJQnJTK9", "currencyNamespace": "J873lYTQ", "currencyType": "VIRTUAL", "discountAmount": 86, "discountExpireAt": "1998-07-24T00:00:00Z", "discountPercentage": 12, "discountPurchaseAt": "1984-12-01T00:00:00Z", "discountedPrice": 14, "expireAt": "1986-11-05T00:00:00Z", "price": 1, "purchaseAt": "1997-06-08T00:00:00Z", "trialPrice": 25}, {"currencyCode": "LRLBgXmr", "currencyNamespace": "y8qggZMa", "currencyType": "VIRTUAL", "discountAmount": 36, "discountExpireAt": "1986-04-05T00:00:00Z", "discountPercentage": 24, "discountPurchaseAt": "1977-09-16T00:00:00Z", "discountedPrice": 8, "expireAt": "1986-02-04T00:00:00Z", "price": 37, "purchaseAt": "1972-04-21T00:00:00Z", "trialPrice": 46}, {"currencyCode": "YafgbDyJ", "currencyNamespace": "pRFhHm9e", "currencyType": "REAL", "discountAmount": 83, "discountExpireAt": "1989-02-26T00:00:00Z", "discountPercentage": 60, "discountPurchaseAt": "1999-01-09T00:00:00Z", "discountedPrice": 54, "expireAt": "1974-07-08T00:00:00Z", "price": 90, "purchaseAt": "1985-07-10T00:00:00Z", "trialPrice": 100}], "8F5R1HZ5": [{"currencyCode": "mb3sSrqF", "currencyNamespace": "22XcK01H", "currencyType": "REAL", "discountAmount": 65, "discountExpireAt": "1976-05-04T00:00:00Z", "discountPercentage": 55, "discountPurchaseAt": "1972-04-18T00:00:00Z", "discountedPrice": 38, "expireAt": "1986-11-24T00:00:00Z", "price": 19, "purchaseAt": "1976-03-07T00:00:00Z", "trialPrice": 74}, {"currencyCode": "HPiigI9Z", "currencyNamespace": "K1zTBNdG", "currencyType": "REAL", "discountAmount": 51, "discountExpireAt": "1991-01-24T00:00:00Z", "discountPercentage": 24, "discountPurchaseAt": "1992-08-05T00:00:00Z", "discountedPrice": 63, "expireAt": "1988-07-17T00:00:00Z", "price": 97, "purchaseAt": "1974-10-29T00:00:00Z", "trialPrice": 23}, {"currencyCode": "Zi92rHBz", "currencyNamespace": "TbMlLOCW", "currencyType": "REAL", "discountAmount": 86, "discountExpireAt": "1971-09-29T00:00:00Z", "discountPercentage": 31, "discountPurchaseAt": "1979-06-05T00:00:00Z", "discountedPrice": 3, "expireAt": "1972-04-22T00:00:00Z", "price": 49, "purchaseAt": "1978-09-17T00:00:00Z", "trialPrice": 22}]}, "seasonType": "PASS", "sku": "f8V1gxkg", "stackable": true, "status": "ACTIVE", "tags": ["Q1TwuAqs", "BdGDdIBB", "FvjIMh0i"], "targetCurrencyCode": "zGbyspkF", "targetNamespace": "PaVThXPA", "thumbnailUrl": "CWYmZu16", "useCount": 15}' \
    > test.out 2>&1
eval_tap $? 97 'UpdateItem' test.out

#- 98 DeleteItem
samples/cli/sample-apps Platform deleteItem \
    --itemId 'PdFh7D4l' \
    --namespace $AB_NAMESPACE \
    --force 'true' \
    --storeId 'tPl9MMD3' \
    > test.out 2>&1
eval_tap $? 98 'DeleteItem' test.out

#- 99 AcquireItem
samples/cli/sample-apps Platform acquireItem \
    --itemId 'Sy1JGJng' \
    --namespace $AB_NAMESPACE \
    --body '{"count": 88, "orderNo": "Jk5smwE9"}' \
    > test.out 2>&1
eval_tap $? 99 'AcquireItem' test.out

#- 100 GetApp
samples/cli/sample-apps Platform getApp \
    --itemId 't2Oo4GJ5' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId '7hArh1L5' \
    > test.out 2>&1
eval_tap $? 100 'GetApp' test.out

#- 101 UpdateApp
samples/cli/sample-apps Platform updateApp \
    --itemId '5Ma52r7b' \
    --namespace $AB_NAMESPACE \
    --storeId 'qfXgFDyh' \
    --body '{"carousel": [{"alt": "5XySZcpG", "previewUrl": "L0X3CES0", "thumbnailUrl": "vilK1eZ8", "type": "video", "url": "8gcV3VRt", "videoSource": "youtube"}, {"alt": "66z1B00P", "previewUrl": "vMOWH9mZ", "thumbnailUrl": "9fTKYxUS", "type": "video", "url": "73zjjHl0", "videoSource": "youtube"}, {"alt": "p7Inh1oX", "previewUrl": "0xFcK6nG", "thumbnailUrl": "NDeKB9vL", "type": "image", "url": "9JL0rAzc", "videoSource": "youtube"}], "developer": "fgmY0yY7", "forumUrl": "q6hRFkEV", "genres": ["Casual", "Adventure", "Indie"], "localizations": {"o16SUe8z": {"announcement": "0rLsHR6f", "slogan": "mGklOmTt"}, "sY5xq9qq": {"announcement": "KMX4pnSg", "slogan": "SNVUgSPG"}, "hU9wBHA4": {"announcement": "M7WGer9i", "slogan": "4ipivJGG"}}, "platformRequirements": {"Rm4tW5Ss": [{"additionals": "m50lQEbx", "directXVersion": "ugDSfrH6", "diskSpace": "nUAjgkPO", "graphics": "65HC6Pc0", "label": "xPqI7as6", "osVersion": "R09k64Ag", "processor": "Q3Sp7tTI", "ram": "wqjvtQxV", "soundCard": "FZozShml"}, {"additionals": "kUo6zMyy", "directXVersion": "XxcC8Q5T", "diskSpace": "vSciLgU5", "graphics": "V3SYx92I", "label": "3gfe7WDV", "osVersion": "ciXsFjBA", "processor": "B9quhXPW", "ram": "bNVK69Iv", "soundCard": "fhiJSLPI"}, {"additionals": "vUGXPS6u", "directXVersion": "qOfo3HF3", "diskSpace": "gFObSjUO", "graphics": "NXPpTTqq", "label": "HelMYm5E", "osVersion": "V3dHj5mn", "processor": "OjkOvCK7", "ram": "kgnKo0OO", "soundCard": "vxwlBWdp"}], "WEDb3m2k": [{"additionals": "j815uMmG", "directXVersion": "WUk7jW7b", "diskSpace": "QCAhd8S6", "graphics": "tqOBiwuP", "label": "1ZLF1HTH", "osVersion": "AVEf1oGC", "processor": "CGQm50K6", "ram": "jRQ2Bu4H", "soundCard": "lp16Ttyl"}, {"additionals": "Sld5Fx1K", "directXVersion": "CPetUNYq", "diskSpace": "mGMrP4Xv", "graphics": "EGZc2lkO", "label": "EiHemNkL", "osVersion": "9j8PcgtP", "processor": "8vREIRhJ", "ram": "yyaHsEOm", "soundCard": "2GmdGRBE"}, {"additionals": "GbofILM4", "directXVersion": "E8yIznNi", "diskSpace": "XIa5ZNAz", "graphics": "4KEx01x1", "label": "CHls6cqu", "osVersion": "4Pe5ox8l", "processor": "DSTBcK68", "ram": "mosIpvTG", "soundCard": "YEZJkkFa"}], "1ZcuvroE": [{"additionals": "mULKl2lp", "directXVersion": "lvPMDXPF", "diskSpace": "XFxDGJlB", "graphics": "ujhBezis", "label": "e3znND7V", "osVersion": "DbsoC2ve", "processor": "KLVsQf4X", "ram": "yBf5MHF4", "soundCard": "cgPFxsnG"}, {"additionals": "Bfm3HhUj", "directXVersion": "3anCoUmH", "diskSpace": "WXLYQKXd", "graphics": "dkTkjPSl", "label": "tU3bRLF2", "osVersion": "ChAWtGNC", "processor": "E3kjQuJT", "ram": "TI6abARa", "soundCard": "l7UHMHJ9"}, {"additionals": "dC3wk1le", "directXVersion": "EJN70jjG", "diskSpace": "l2QvRgO0", "graphics": "HJB3agPK", "label": "tyGHjMSq", "osVersion": "cpsxewfQ", "processor": "rHNwS01G", "ram": "qyynMrJE", "soundCard": "SnaUpQBV"}]}, "platforms": ["IOS", "Linux", "Linux"], "players": ["CrossPlatformMulti", "MMO", "Multi"], "primaryGenre": "Strategy", "publisher": "4bHAJIVA", "releaseDate": "1984-03-22T00:00:00Z", "websiteUrl": "fQTrNSk2"}' \
    > test.out 2>&1
eval_tap $? 101 'UpdateApp' test.out

#- 102 DisableItem
samples/cli/sample-apps Platform disableItem \
    --itemId 'DQ49IAA2' \
    --namespace $AB_NAMESPACE \
    --storeId '4H9K3WkP' \
    > test.out 2>&1
eval_tap $? 102 'DisableItem' test.out

#- 103 GetItemDynamicData
samples/cli/sample-apps Platform getItemDynamicData \
    --itemId 'WB2Nqi5Z' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 103 'GetItemDynamicData' test.out

#- 104 EnableItem
samples/cli/sample-apps Platform enableItem \
    --itemId 'JptQoHDk' \
    --namespace $AB_NAMESPACE \
    --storeId 'hhOKI45y' \
    > test.out 2>&1
eval_tap $? 104 'EnableItem' test.out

#- 105 FeatureItem
samples/cli/sample-apps Platform featureItem \
    --feature 'smHCIEja' \
    --itemId 'QSCTrHlF' \
    --namespace $AB_NAMESPACE \
    --storeId 'u5iOiDWx' \
    > test.out 2>&1
eval_tap $? 105 'FeatureItem' test.out

#- 106 DefeatureItem
samples/cli/sample-apps Platform defeatureItem \
    --feature 'VgEGnYsp' \
    --itemId 'qnP2pEtb' \
    --namespace $AB_NAMESPACE \
    --storeId 'sjndzoVD' \
    > test.out 2>&1
eval_tap $? 106 'DefeatureItem' test.out

#- 107 GetLocaleItem
samples/cli/sample-apps Platform getLocaleItem \
    --itemId 'bFD3nh6C' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --language 'sVivm94Y' \
    --populateBundle 'false' \
    --region 'xAk7oms9' \
    --storeId 'R3zPKK4g' \
    > test.out 2>&1
eval_tap $? 107 'GetLocaleItem' test.out

#- 108 UpdateItemPurchaseCondition
samples/cli/sample-apps Platform updateItemPurchaseCondition \
    --itemId 'sYe8skNh' \
    --namespace $AB_NAMESPACE \
    --storeId 'HChSOqCv' \
    --body '{"purchaseCondition": {"conditionGroups": [{"operator": "and", "predicates": [{"anyOf": 22, "comparison": "isLessThanOrEqual", "name": "bEilt6KQ", "predicateType": "SeasonPassPredicate", "value": "WV2j37Iw", "values": ["yvD7pjrp", "fs5ZPo3U", "2dOl8V1F"]}, {"anyOf": 64, "comparison": "isGreaterThanOrEqual", "name": "UiONRbnt", "predicateType": "SeasonPassPredicate", "value": "XiCmKnts", "values": ["dX9fX2Yv", "8r0ZZ1fT", "cRfzymaM"]}, {"anyOf": 43, "comparison": "isGreaterThanOrEqual", "name": "8A0hiji3", "predicateType": "EntitlementPredicate", "value": "VJg4j9eN", "values": ["ZVsF6QX2", "tn7RpKJI", "g6Lx4ZB8"]}]}, {"operator": "and", "predicates": [{"anyOf": 42, "comparison": "isNot", "name": "TaYCJtep", "predicateType": "SeasonTierPredicate", "value": "tas9Au9p", "values": ["ozy4KmqK", "7c8Rxwkg", "Tgcs6liu"]}, {"anyOf": 44, "comparison": "isGreaterThanOrEqual", "name": "RHAMdkPH", "predicateType": "SeasonTierPredicate", "value": "YbFg4ics", "values": ["j9OMINtT", "h4rWm2RJ", "LXTyjbSI"]}, {"anyOf": 45, "comparison": "includes", "name": "RCoIW17E", "predicateType": "EntitlementPredicate", "value": "XIIm1utY", "values": ["YHq5iTZi", "TfsTCR2M", "BmxqAFgc"]}]}, {"operator": "or", "predicates": [{"anyOf": 43, "comparison": "is", "name": "yeirgEOl", "predicateType": "SeasonTierPredicate", "value": "KUmU6Cph", "values": ["9wKWnNmb", "0dRBZaYx", "TjLEsF5q"]}, {"anyOf": 3, "comparison": "is", "name": "lc3uGY98", "predicateType": "SeasonPassPredicate", "value": "X3i0MA4H", "values": ["dfmlJNuu", "PF4HRVJ1", "eeicyqc3"]}, {"anyOf": 84, "comparison": "isLessThan", "name": "LwB450zB", "predicateType": "SeasonPassPredicate", "value": "E4g8abnB", "values": ["GmAjEVnK", "QpfPKtId", "mnDN42QG"]}]}]}}' \
    > test.out 2>&1
eval_tap $? 108 'UpdateItemPurchaseCondition' test.out

#- 109 ReturnItem
samples/cli/sample-apps Platform returnItem \
    --itemId 'uuVmdTu0' \
    --namespace $AB_NAMESPACE \
    --body '{"orderNo": "6S6KgjEy"}' \
    > test.out 2>&1
eval_tap $? 109 'ReturnItem' test.out

#- 110 QueryKeyGroups
samples/cli/sample-apps Platform queryKeyGroups \
    --namespace $AB_NAMESPACE \
    --limit '1' \
    --name 'DBeGG6V0' \
    --offset '79' \
    --tag 'ZpzjAFLd' \
    > test.out 2>&1
eval_tap $? 110 'QueryKeyGroups' test.out

#- 111 CreateKeyGroup
samples/cli/sample-apps Platform createKeyGroup \
    --namespace $AB_NAMESPACE \
    --body '{"description": "73m1npg9", "name": "m6yxxeIw", "status": "ACTIVE", "tags": ["JFAOof6t", "1668BTKq", "MoHuPpcD"]}' \
    > test.out 2>&1
eval_tap $? 111 'CreateKeyGroup' test.out

#- 112 GetKeyGroupByBoothName
eval_tap 0 112 'GetKeyGroupByBoothName # SKIP deprecated' test.out

#- 113 GetKeyGroup
samples/cli/sample-apps Platform getKeyGroup \
    --keyGroupId '6j2gWAJe' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 113 'GetKeyGroup' test.out

#- 114 UpdateKeyGroup
samples/cli/sample-apps Platform updateKeyGroup \
    --keyGroupId 'zMAqL7M4' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "hPAjdWZo", "name": "Y9FfJ0Yj", "status": "INACTIVE", "tags": ["oDXw0cop", "lwg60QzO", "FuwyLvEl"]}' \
    > test.out 2>&1
eval_tap $? 114 'UpdateKeyGroup' test.out

#- 115 GetKeyGroupDynamic
samples/cli/sample-apps Platform getKeyGroupDynamic \
    --keyGroupId 'mGoJBpkc' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 115 'GetKeyGroupDynamic' test.out

#- 116 ListKeys
samples/cli/sample-apps Platform listKeys \
    --keyGroupId 'zH9dwFpk' \
    --namespace $AB_NAMESPACE \
    --limit '22' \
    --offset '24' \
    --status 'ACTIVE' \
    > test.out 2>&1
eval_tap $? 116 'ListKeys' test.out

#- 117 UploadKeys
samples/cli/sample-apps Platform uploadKeys \
    --keyGroupId 'Uf5ZyLEU' \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 117 'UploadKeys' test.out

#- 118 QueryOrders
samples/cli/sample-apps Platform queryOrders \
    --namespace $AB_NAMESPACE \
    --endTime 'OVYum0Vb' \
    --limit '52' \
    --offset '14' \
    --orderNos '["zVdVLBLy", "HRFVg1tk", "7O6m9nOY"]' \
    --sortBy 'bZxQp4Tq' \
    --startTime 'zpdnf5v2' \
    --status 'CHARGEBACK_REVERSED' \
    --withTotal 'false' \
    > test.out 2>&1
eval_tap $? 118 'QueryOrders' test.out

#- 119 GetOrderStatistics
samples/cli/sample-apps Platform getOrderStatistics \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 119 'GetOrderStatistics' test.out

#- 120 GetOrder
samples/cli/sample-apps Platform getOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'tqWjpQ12' \
    > test.out 2>&1
eval_tap $? 120 'GetOrder' test.out

#- 121 RefundOrder
samples/cli/sample-apps Platform refundOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'sIDE4XoT' \
    --body '{"description": "eA6zfjq2"}' \
    > test.out 2>&1
eval_tap $? 121 'RefundOrder' test.out

#- 122 GetPaymentCallbackConfig
samples/cli/sample-apps Platform getPaymentCallbackConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 122 'GetPaymentCallbackConfig' test.out

#- 123 UpdatePaymentCallbackConfig
samples/cli/sample-apps Platform updatePaymentCallbackConfig \
    --namespace $AB_NAMESPACE \
    --body '{"dryRun": true, "notifyUrl": "XJmrKfqv", "privateKey": "UiJjgz4D"}' \
    > test.out 2>&1
eval_tap $? 123 'UpdatePaymentCallbackConfig' test.out

#- 124 QueryPaymentNotifications
samples/cli/sample-apps Platform queryPaymentNotifications \
    --namespace $AB_NAMESPACE \
    --endDate '0YVtFPzt' \
    --externalId 'LrLzUTx2' \
    --limit '4' \
    --notificationSource 'PAYPAL' \
    --notificationType 'SozLh98D' \
    --offset '68' \
    --paymentOrderNo 'FTvK15RZ' \
    --startDate 'efswzEpx' \
    --status 'IGNORED' \
    > test.out 2>&1
eval_tap $? 124 'QueryPaymentNotifications' test.out

#- 125 QueryPaymentOrders
samples/cli/sample-apps Platform queryPaymentOrders \
    --namespace $AB_NAMESPACE \
    --channel 'INTERNAL' \
    --extTxId 'GipGKB2o' \
    --limit '27' \
    --offset '81' \
    --status 'REFUNDED' \
    > test.out 2>&1
eval_tap $? 125 'QueryPaymentOrders' test.out

#- 126 CreatePaymentOrderByDedicated
samples/cli/sample-apps Platform createPaymentOrderByDedicated \
    --namespace $AB_NAMESPACE \
    --body '{"currencyCode": "ivOAGBhY", "currencyNamespace": "uTSwhT73", "customParameters": {"9Nyrcy9e": {}, "TPRiPUh8": {}, "WytLVyN4": {}}, "description": "BIDAXanR", "extOrderNo": "LOnwwsZD", "extUserId": "EvYGwI3g", "itemType": "COINS", "language": "qequ", "metadata": {"NxWRnumK": "YgcW7mL5", "EBlVt350": "zw1sb3bT", "VUgxjGLm": "Sy0wNkpw"}, "notifyUrl": "hWamXxoi", "omitNotification": true, "platform": "w7VsGvbU", "price": 64, "recurringPaymentOrderNo": "L9hUUE4s", "region": "y1gAIyLn", "returnUrl": "W8mtkEd5", "sandbox": true, "sku": "oq1LLw3Y", "subscriptionId": "p327h3bG", "targetNamespace": "X0xrOptr", "targetUserId": "EyIklXQW", "title": "q6oNnCMx"}' \
    > test.out 2>&1
eval_tap $? 126 'CreatePaymentOrderByDedicated' test.out

#- 127 ListExtOrderNoByExtTxId
samples/cli/sample-apps Platform listExtOrderNoByExtTxId \
    --namespace $AB_NAMESPACE \
    --extTxId 'CZZx3lHj' \
    > test.out 2>&1
eval_tap $? 127 'ListExtOrderNoByExtTxId' test.out

#- 128 GetPaymentOrder
samples/cli/sample-apps Platform getPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'LVNwFxVh' \
    > test.out 2>&1
eval_tap $? 128 'GetPaymentOrder' test.out

#- 129 ChargePaymentOrder
samples/cli/sample-apps Platform chargePaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'UlTq8cvR' \
    --body '{"extTxId": "J1IR1DUL", "paymentMethod": "BI6p9nVn", "paymentProvider": "ALIPAY"}' \
    > test.out 2>&1
eval_tap $? 129 'ChargePaymentOrder' test.out

#- 130 RefundPaymentOrderByDedicated
samples/cli/sample-apps Platform refundPaymentOrderByDedicated \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'bAaFaqRL' \
    --body '{"description": "sEgV3PN6"}' \
    > test.out 2>&1
eval_tap $? 130 'RefundPaymentOrderByDedicated' test.out

#- 131 SimulatePaymentOrderNotification
samples/cli/sample-apps Platform simulatePaymentOrderNotification \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'qbcs97dv' \
    --body '{"amount": 1, "currencyCode": "ZUlMAupO", "notifyType": "CHARGE", "paymentProvider": "ADYEN", "salesTax": 65, "vat": 60}' \
    > test.out 2>&1
eval_tap $? 131 'SimulatePaymentOrderNotification' test.out

#- 132 GetPaymentOrderChargeStatus
samples/cli/sample-apps Platform getPaymentOrderChargeStatus \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'kUkrcpJf' \
    > test.out 2>&1
eval_tap $? 132 'GetPaymentOrderChargeStatus' test.out

#- 133 GetPlatformWalletConfig
samples/cli/sample-apps Platform getPlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'GooglePlay' \
    > test.out 2>&1
eval_tap $? 133 'GetPlatformWalletConfig' test.out

#- 134 UpdatePlatformWalletConfig
samples/cli/sample-apps Platform updatePlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Epic' \
    --body '{"allowedBalanceOrigins": ["Nintendo", "Epic", "Nintendo"]}' \
    > test.out 2>&1
eval_tap $? 134 'UpdatePlatformWalletConfig' test.out

#- 135 ResetPlatformWalletConfig
samples/cli/sample-apps Platform resetPlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Playstation' \
    > test.out 2>&1
eval_tap $? 135 'ResetPlatformWalletConfig' test.out

#- 136 GetPaymentCallbackConfig1
samples/cli/sample-apps Platform getPaymentCallbackConfig1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 136 'GetPaymentCallbackConfig1' test.out

#- 137 UpdateRevocationConfig
samples/cli/sample-apps Platform updateRevocationConfig \
    --namespace $AB_NAMESPACE \
    --body '{"entitlement": {"durable": {"enabled": false, "strategy": "REVOKE_OR_REPORT"}}, "wallet": {"enabled": false, "strategy": "ALWAYS_REVOKE"}}' \
    > test.out 2>&1
eval_tap $? 137 'UpdateRevocationConfig' test.out

#- 138 DeleteRevocationConfig
samples/cli/sample-apps Platform deleteRevocationConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 138 'DeleteRevocationConfig' test.out

#- 139 QueryRevocationHistories
samples/cli/sample-apps Platform queryRevocationHistories \
    --namespace $AB_NAMESPACE \
    --endTime 'ZKFFlMHe' \
    --limit '4' \
    --offset '35' \
    --source 'ORDER' \
    --startTime 'qFIpiIfw' \
    --status 'FAIL' \
    --transactionId '2RAHnhvs' \
    --userId 'McVoU5Fx' \
    > test.out 2>&1
eval_tap $? 139 'QueryRevocationHistories' test.out

#- 140 CreateReward
samples/cli/sample-apps Platform createReward \
    --namespace $AB_NAMESPACE \
    --body '{"description": "PSjNyO7u", "eventTopic": "8VmGMO9j", "maxAwarded": 34, "maxAwardedPerUser": 51, "namespaceExpression": "F6T2IjxY", "rewardCode": "pmnfuAZf", "rewardConditions": [{"condition": "qAlcDMn4", "conditionName": "DEWmf0Qf", "eventName": "YbBw99RV", "rewardItems": [{"duration": 63, "itemId": "S80YyZ29", "quantity": 83}, {"duration": 95, "itemId": "gv55LJe0", "quantity": 4}, {"duration": 52, "itemId": "34SfaWIY", "quantity": 67}]}, {"condition": "gR98BmC1", "conditionName": "MSperxch", "eventName": "5rkjcXX7", "rewardItems": [{"duration": 31, "itemId": "0aYcnchl", "quantity": 60}, {"duration": 24, "itemId": "AqzXEruS", "quantity": 3}, {"duration": 63, "itemId": "5iFKC6DH", "quantity": 21}]}, {"condition": "n7YnNSE9", "conditionName": "r77maCd4", "eventName": "0DpdrdTw", "rewardItems": [{"duration": 29, "itemId": "nx7zY55c", "quantity": 52}, {"duration": 90, "itemId": "bINToyMz", "quantity": 92}, {"duration": 22, "itemId": "p1om5sxw", "quantity": 26}]}], "userIdExpression": "1XTmpPdK"}' \
    > test.out 2>&1
eval_tap $? 140 'CreateReward' test.out

#- 141 QueryRewards
samples/cli/sample-apps Platform queryRewards \
    --namespace $AB_NAMESPACE \
    --eventTopic '33ykPhp8' \
    --limit '26' \
    --offset '72' \
    --sortBy '["rewardCode:asc", "rewardCode:desc", "namespace:desc"]' \
    > test.out 2>&1
eval_tap $? 141 'QueryRewards' test.out

#- 142 ExportRewards
samples/cli/sample-apps Platform exportRewards \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 142 'ExportRewards' test.out

#- 143 ImportRewards
samples/cli/sample-apps Platform importRewards \
    --namespace $AB_NAMESPACE \
    --replaceExisting 'true' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 143 'ImportRewards' test.out

#- 144 GetReward
samples/cli/sample-apps Platform getReward \
    --namespace $AB_NAMESPACE \
    --rewardId 'o0KRaeId' \
    > test.out 2>&1
eval_tap $? 144 'GetReward' test.out

#- 145 UpdateReward
samples/cli/sample-apps Platform updateReward \
    --namespace $AB_NAMESPACE \
    --rewardId 'hLyKXRry' \
    --body '{"description": "7SL7oNRx", "eventTopic": "P9rBLf2j", "maxAwarded": 68, "maxAwardedPerUser": 72, "namespaceExpression": "4A0B1NLq", "rewardCode": "Tw5cIGPu", "rewardConditions": [{"condition": "NM7j9Ugy", "conditionName": "UvdjLSIV", "eventName": "uXJLsjtD", "rewardItems": [{"duration": 90, "itemId": "EJE37XG7", "quantity": 21}, {"duration": 24, "itemId": "47MczmNl", "quantity": 2}, {"duration": 30, "itemId": "lMEI0yZH", "quantity": 77}]}, {"condition": "ERweXRIT", "conditionName": "2mlr3dta", "eventName": "iJl9LSMQ", "rewardItems": [{"duration": 71, "itemId": "V5UFmxD5", "quantity": 41}, {"duration": 45, "itemId": "N6n9tm99", "quantity": 80}, {"duration": 23, "itemId": "tUFlD5j0", "quantity": 45}]}, {"condition": "skiX5xd9", "conditionName": "T2BcC2P0", "eventName": "rAG9iYcB", "rewardItems": [{"duration": 73, "itemId": "g4kIuaCE", "quantity": 68}, {"duration": 54, "itemId": "f5YAZAoa", "quantity": 68}, {"duration": 83, "itemId": "YlJxE6BF", "quantity": 16}]}], "userIdExpression": "ic5sQ3qj"}' \
    > test.out 2>&1
eval_tap $? 145 'UpdateReward' test.out

#- 146 DeleteReward
samples/cli/sample-apps Platform deleteReward \
    --namespace $AB_NAMESPACE \
    --rewardId '5ftgfiAL' \
    > test.out 2>&1
eval_tap $? 146 'DeleteReward' test.out

#- 147 CheckEventCondition
samples/cli/sample-apps Platform checkEventCondition \
    --namespace $AB_NAMESPACE \
    --rewardId 'sKkKy8gI' \
    --body '{"payload": {"M28d3F7a": {}, "81mVp46d": {}, "CWowliI2": {}}}' \
    > test.out 2>&1
eval_tap $? 147 'CheckEventCondition' test.out

#- 148 DeleteRewardConditionRecord
samples/cli/sample-apps Platform deleteRewardConditionRecord \
    --namespace $AB_NAMESPACE \
    --rewardId 'BADfdNd2' \
    --body '{"conditionName": "DMjccGTJ", "userId": "Cw898NDF"}' \
    > test.out 2>&1
eval_tap $? 148 'DeleteRewardConditionRecord' test.out

#- 149 QuerySections
samples/cli/sample-apps Platform querySections \
    --namespace $AB_NAMESPACE \
    --end '6sdpFhQ7' \
    --limit '87' \
    --offset '47' \
    --start '4ZDJbsL4' \
    --storeId 'SaAmVniP' \
    --viewId 'TWuzjCtP' \
    > test.out 2>&1
eval_tap $? 149 'QuerySections' test.out

#- 150 CreateSection
samples/cli/sample-apps Platform createSection \
    --namespace $AB_NAMESPACE \
    --storeId 'uDMUb7sr' \
    --body '{"active": true, "displayOrder": 61, "endDate": "1973-06-24T00:00:00Z", "ext": {"KzhyuMeD": {}, "WBZJ0YIP": {}, "k17TPWA6": {}}, "fixedPeriodRotationConfig": {"backfillType": "CUSTOM", "duration": 17, "itemCount": 97, "rule": "SEQUENCE"}, "items": [{"id": "dCkZY0Hb", "sku": "rOxzSibX"}, {"id": "E172QNoW", "sku": "vp9EQtRg"}, {"id": "H0UNQjBk", "sku": "w1cexcxA"}], "localizations": {"6v7plnOw": {"description": "1SbWIxWh", "localExt": {"9vWf36yl": {}, "pP3FhDIe": {}, "wvK1T1eN": {}}, "longDescription": "iQ7Rtfka", "title": "5syUDPdN"}, "r0iLegC4": {"description": "xGP3OJO2", "localExt": {"xWPXjikM": {}, "3hXu8fbP": {}, "10uDfBjw": {}}, "longDescription": "ojw7BxUL", "title": "YMeRYLGV"}, "lpb2oaG1": {"description": "2JuYuKCf", "localExt": {"GWwUzMe0": {}, "WL9Ut6LR": {}, "qasJswHL": {}}, "longDescription": "m3H2YFD3", "title": "3bHrkZoQ"}}, "name": "p5h9qONI", "rotationType": "CUSTOM", "startDate": "1985-05-31T00:00:00Z", "viewId": "3xtRS5Wn"}' \
    > test.out 2>&1
eval_tap $? 150 'CreateSection' test.out

#- 151 PurgeExpiredSection
samples/cli/sample-apps Platform purgeExpiredSection \
    --namespace $AB_NAMESPACE \
    --storeId '1OQW5gh9' \
    > test.out 2>&1
eval_tap $? 151 'PurgeExpiredSection' test.out

#- 152 GetSection
samples/cli/sample-apps Platform getSection \
    --namespace $AB_NAMESPACE \
    --sectionId 'mVdNodGc' \
    --storeId 'XeYKE0NJ' \
    > test.out 2>&1
eval_tap $? 152 'GetSection' test.out

#- 153 UpdateSection
samples/cli/sample-apps Platform updateSection \
    --namespace $AB_NAMESPACE \
    --sectionId '8L77Z6q7' \
    --storeId 'gRwDuSTK' \
    --body '{"active": true, "displayOrder": 29, "endDate": "1982-03-11T00:00:00Z", "ext": {"HFmeGPRK": {}, "UCgxFDEX": {}, "P41nECWM": {}}, "fixedPeriodRotationConfig": {"backfillType": "NONE", "duration": 84, "itemCount": 91, "rule": "SEQUENCE"}, "items": [{"id": "bAS9EMrS", "sku": "LNGbtAli"}, {"id": "QRcoL5tH", "sku": "vS08Gzx5"}, {"id": "VwaY65Ht", "sku": "2sW94kuo"}], "localizations": {"YLNcfJkS": {"description": "ojmUapFz", "localExt": {"Xok1CKHy": {}, "DsvE8S2m": {}, "s5HH9dRR": {}}, "longDescription": "121HjBET", "title": "Bkop4Snu"}, "Uk6jLqTE": {"description": "bc8lSckb", "localExt": {"VTx8LoY6": {}, "f0UMjpep": {}, "bIk8BBAt": {}}, "longDescription": "i7zWQKsu", "title": "JgMVcg6o"}, "FQr15pVY": {"description": "H1gqVXEr", "localExt": {"cKCrUixh": {}, "OdzJd0A6": {}, "2xZN5Yo0": {}}, "longDescription": "hljvGxRt", "title": "kauvjrqd"}}, "name": "uMJsPN7B", "rotationType": "CUSTOM", "startDate": "1977-02-19T00:00:00Z", "viewId": "LZetjup7"}' \
    > test.out 2>&1
eval_tap $? 153 'UpdateSection' test.out

#- 154 DeleteSection
samples/cli/sample-apps Platform deleteSection \
    --namespace $AB_NAMESPACE \
    --sectionId 'Hc0SEW4R' \
    --storeId 'bR7YVI9G' \
    > test.out 2>&1
eval_tap $? 154 'DeleteSection' test.out

#- 155 ListStores
samples/cli/sample-apps Platform listStores \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 155 'ListStores' test.out

#- 156 CreateStore
samples/cli/sample-apps Platform createStore \
    --namespace $AB_NAMESPACE \
    --body '{"defaultLanguage": "rdngbanO", "defaultRegion": "4y0tkrPn", "description": "J3r0izeB", "supportedLanguages": ["GKDJa3wQ", "DwceU39C", "Ezxuc2Rb"], "supportedRegions": ["jc0UDsYq", "2cGdgy92", "r0tKZzGQ"], "title": "U2JPk4L4"}' \
    > test.out 2>&1
eval_tap $? 156 'CreateStore' test.out

#- 157 ImportStore
eval_tap 0 157 'ImportStore # SKIP deprecated' test.out

#- 158 GetPublishedStore
samples/cli/sample-apps Platform getPublishedStore \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 158 'GetPublishedStore' test.out

#- 159 DeletePublishedStore
samples/cli/sample-apps Platform deletePublishedStore \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 159 'DeletePublishedStore' test.out

#- 160 GetPublishedStoreBackup
samples/cli/sample-apps Platform getPublishedStoreBackup \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 160 'GetPublishedStoreBackup' test.out

#- 161 RollbackPublishedStore
samples/cli/sample-apps Platform rollbackPublishedStore \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 161 'RollbackPublishedStore' test.out

#- 162 GetStore
samples/cli/sample-apps Platform getStore \
    --namespace $AB_NAMESPACE \
    --storeId 'aAYUQhTr' \
    > test.out 2>&1
eval_tap $? 162 'GetStore' test.out

#- 163 UpdateStore
samples/cli/sample-apps Platform updateStore \
    --namespace $AB_NAMESPACE \
    --storeId 'iFHOHiKS' \
    --body '{"defaultLanguage": "T8D6Yf8T", "defaultRegion": "RZsl0JlQ", "description": "07Ax5e8X", "supportedLanguages": ["FjQWHtUG", "CyjZu7pr", "OHD5Gdcn"], "supportedRegions": ["Zr28pCOt", "zLDXKlYB", "sSk9V7BY"], "title": "2zD9DZ7R"}' \
    > test.out 2>&1
eval_tap $? 163 'UpdateStore' test.out

#- 164 DeleteStore
samples/cli/sample-apps Platform deleteStore \
    --namespace $AB_NAMESPACE \
    --storeId '4YW5iwU9' \
    > test.out 2>&1
eval_tap $? 164 'DeleteStore' test.out

#- 165 QueryChanges
samples/cli/sample-apps Platform queryChanges \
    --namespace $AB_NAMESPACE \
    --storeId 'XZjbxvha' \
    --action 'DELETE' \
    --itemSku 'EckPRuI6' \
    --itemType 'MEDIA' \
    --limit '52' \
    --offset '100' \
    --selected 'true' \
    --sortBy '["updatedAt:desc", "createdAt:asc", "updatedAt:asc"]' \
    --status 'UNPUBLISHED' \
    --type 'VIEW' \
    --updatedAtEnd 'ppZUwluc' \
    --updatedAtStart 'OprBz75x' \
    > test.out 2>&1
eval_tap $? 165 'QueryChanges' test.out

#- 166 PublishAll
samples/cli/sample-apps Platform publishAll \
    --namespace $AB_NAMESPACE \
    --storeId 'tM1vcDzr' \
    > test.out 2>&1
eval_tap $? 166 'PublishAll' test.out

#- 167 PublishSelected
samples/cli/sample-apps Platform publishSelected \
    --namespace $AB_NAMESPACE \
    --storeId 'O3c2OI3q' \
    > test.out 2>&1
eval_tap $? 167 'PublishSelected' test.out

#- 168 SelectAllRecords
samples/cli/sample-apps Platform selectAllRecords \
    --namespace $AB_NAMESPACE \
    --storeId 'lweda84I' \
    > test.out 2>&1
eval_tap $? 168 'SelectAllRecords' test.out

#- 169 GetStatistic
samples/cli/sample-apps Platform getStatistic \
    --namespace $AB_NAMESPACE \
    --storeId 'WKi07m3e' \
    --action 'DELETE' \
    --itemSku 'Fp9DkaUU' \
    --itemType 'EXTENSION' \
    --type 'SECTION' \
    --updatedAtEnd 'PK78WVZc' \
    --updatedAtStart 'xDCoj4l9' \
    > test.out 2>&1
eval_tap $? 169 'GetStatistic' test.out

#- 170 UnselectAllRecords
samples/cli/sample-apps Platform unselectAllRecords \
    --namespace $AB_NAMESPACE \
    --storeId 'MhZu5s6r' \
    > test.out 2>&1
eval_tap $? 170 'UnselectAllRecords' test.out

#- 171 SelectRecord
samples/cli/sample-apps Platform selectRecord \
    --changeId '2I8B44TR' \
    --namespace $AB_NAMESPACE \
    --storeId 'puyjsMFd' \
    > test.out 2>&1
eval_tap $? 171 'SelectRecord' test.out

#- 172 UnselectRecord
samples/cli/sample-apps Platform unselectRecord \
    --changeId 'IajHXvcf' \
    --namespace $AB_NAMESPACE \
    --storeId 'xhbjKt1T' \
    > test.out 2>&1
eval_tap $? 172 'UnselectRecord' test.out

#- 173 CloneStore
samples/cli/sample-apps Platform cloneStore \
    --namespace $AB_NAMESPACE \
    --storeId 'dLzRnoXK' \
    --targetStoreId 'Nqq4uTUp' \
    > test.out 2>&1
eval_tap $? 173 'CloneStore' test.out

#- 174 ExportStore
eval_tap 0 174 'ExportStore # SKIP deprecated' test.out

#- 175 QuerySubscriptions
samples/cli/sample-apps Platform querySubscriptions \
    --namespace $AB_NAMESPACE \
    --chargeStatus 'CHARGED' \
    --itemId 'ynohP6dW' \
    --limit '29' \
    --offset '53' \
    --sku 'twjGx9Eh' \
    --status 'CANCELLED' \
    --subscribedBy 'USER' \
    --userId 'LmZEz68P' \
    > test.out 2>&1
eval_tap $? 175 'QuerySubscriptions' test.out

#- 176 RecurringChargeSubscription
samples/cli/sample-apps Platform recurringChargeSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'Cwqx03wm' \
    > test.out 2>&1
eval_tap $? 176 'RecurringChargeSubscription' test.out

#- 177 GetTicketDynamic
samples/cli/sample-apps Platform getTicketDynamic \
    --boothName 'JdK3qbaf' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 177 'GetTicketDynamic' test.out

#- 178 DecreaseTicketSale
samples/cli/sample-apps Platform decreaseTicketSale \
    --boothName 'hYdLviGc' \
    --namespace $AB_NAMESPACE \
    --body '{"orderNo": "6YNfuHjy"}' \
    > test.out 2>&1
eval_tap $? 178 'DecreaseTicketSale' test.out

#- 179 GetTicketBoothID
samples/cli/sample-apps Platform getTicketBoothID \
    --boothName 'vut7RLQa' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 179 'GetTicketBoothID' test.out

#- 180 IncreaseTicketSale
samples/cli/sample-apps Platform increaseTicketSale \
    --boothName 'D1bw5FKU' \
    --namespace $AB_NAMESPACE \
    --body '{"count": 59, "orderNo": "bFjNHKat"}' \
    > test.out 2>&1
eval_tap $? 180 'IncreaseTicketSale' test.out

#- 181 UnlockSteamUserAchievement
samples/cli/sample-apps Platform unlockSteamUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'KlsxLxuF' \
    --body '{"achievements": [{"id": "2PcuWXky", "value": 84}, {"id": "PQAkECD6", "value": 15}, {"id": "C40l7LT5", "value": 3}], "steamUserId": "WWwhvDub"}' \
    > test.out 2>&1
eval_tap $? 181 'UnlockSteamUserAchievement' test.out

#- 182 GetXblUserAchievements
samples/cli/sample-apps Platform getXblUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId 'RxFae8ZY' \
    --xboxUserId '16lXhP6Z' \
    > test.out 2>&1
eval_tap $? 182 'GetXblUserAchievements' test.out

#- 183 UpdateXblUserAchievement
samples/cli/sample-apps Platform updateXblUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'vxy0M0rv' \
    --body '{"achievements": [{"id": "vctWCCos", "percentComplete": 95}, {"id": "hHInLokF", "percentComplete": 85}, {"id": "mxZih343", "percentComplete": 42}], "serviceConfigId": "txWsRVlx", "titleId": "zK4dPAiI", "xboxUserId": "SLjT407E"}' \
    > test.out 2>&1
eval_tap $? 183 'UpdateXblUserAchievement' test.out

#- 184 AnonymizeCampaign
samples/cli/sample-apps Platform anonymizeCampaign \
    --namespace $AB_NAMESPACE \
    --userId 'KazMqQrT' \
    > test.out 2>&1
eval_tap $? 184 'AnonymizeCampaign' test.out

#- 185 AnonymizeEntitlement
samples/cli/sample-apps Platform anonymizeEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'IhcbUyJq' \
    > test.out 2>&1
eval_tap $? 185 'AnonymizeEntitlement' test.out

#- 186 AnonymizeFulfillment
samples/cli/sample-apps Platform anonymizeFulfillment \
    --namespace $AB_NAMESPACE \
    --userId 'imnRhbKC' \
    > test.out 2>&1
eval_tap $? 186 'AnonymizeFulfillment' test.out

#- 187 AnonymizeIntegration
samples/cli/sample-apps Platform anonymizeIntegration \
    --namespace $AB_NAMESPACE \
    --userId 'nLOf5bkC' \
    > test.out 2>&1
eval_tap $? 187 'AnonymizeIntegration' test.out

#- 188 AnonymizeOrder
samples/cli/sample-apps Platform anonymizeOrder \
    --namespace $AB_NAMESPACE \
    --userId 'eegciCNh' \
    > test.out 2>&1
eval_tap $? 188 'AnonymizeOrder' test.out

#- 189 AnonymizePayment
samples/cli/sample-apps Platform anonymizePayment \
    --namespace $AB_NAMESPACE \
    --userId 'sqXgbb82' \
    > test.out 2>&1
eval_tap $? 189 'AnonymizePayment' test.out

#- 190 AnonymizeRevocation
samples/cli/sample-apps Platform anonymizeRevocation \
    --namespace $AB_NAMESPACE \
    --userId 'kOnxApem' \
    > test.out 2>&1
eval_tap $? 190 'AnonymizeRevocation' test.out

#- 191 AnonymizeSubscription
samples/cli/sample-apps Platform anonymizeSubscription \
    --namespace $AB_NAMESPACE \
    --userId 'qmgeoQYb' \
    > test.out 2>&1
eval_tap $? 191 'AnonymizeSubscription' test.out

#- 192 AnonymizeWallet
samples/cli/sample-apps Platform anonymizeWallet \
    --namespace $AB_NAMESPACE \
    --userId 'npW1huHA' \
    > test.out 2>&1
eval_tap $? 192 'AnonymizeWallet' test.out

#- 193 GetUserDLC
samples/cli/sample-apps Platform getUserDLC \
    --namespace $AB_NAMESPACE \
    --userId 'evbwcchH' \
    --type 'PSN' \
    > test.out 2>&1
eval_tap $? 193 'GetUserDLC' test.out

#- 194 QueryUserEntitlements
samples/cli/sample-apps Platform queryUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 't4cPTXtR' \
    --activeOnly 'false' \
    --appType 'SOFTWARE' \
    --entitlementClazz 'CODE' \
    --entitlementName '8coMFnMn' \
    --features '["tCpAEDin", "HxfVAYmJ", "hWw1zAjS"]' \
    --itemId '["yloG8vvR", "1K8UdOaA", "I5tOdNWc"]' \
    --limit '86' \
    --offset '39' \
    > test.out 2>&1
eval_tap $? 194 'QueryUserEntitlements' test.out

#- 195 GrantUserEntitlement
samples/cli/sample-apps Platform grantUserEntitlement \
    --namespace $AB_NAMESPACE \
    --userId '3tIbHESp' \
    --body '[{"endDate": "1981-02-07T00:00:00Z", "grantedCode": "9UyCqTt4", "itemId": "CErsETsR", "itemNamespace": "9Q488FQx", "language": "tkE", "quantity": 90, "region": "u4currU4", "source": "REWARD", "startDate": "1994-08-16T00:00:00Z", "storeId": "oeOL3rwR"}, {"endDate": "1983-09-18T00:00:00Z", "grantedCode": "PWvLnp6Y", "itemId": "CkCLlt4f", "itemNamespace": "81axUW0o", "language": "fNIg_pchJ", "quantity": 64, "region": "xpXhStz2", "source": "OTHER", "startDate": "1980-08-02T00:00:00Z", "storeId": "xrSP7hhg"}, {"endDate": "1971-10-19T00:00:00Z", "grantedCode": "thYyisVO", "itemId": "FH4mL74g", "itemNamespace": "DuelQ7yI", "language": "cfgV", "quantity": 97, "region": "m12ACRKr", "source": "REWARD", "startDate": "1988-07-29T00:00:00Z", "storeId": "K5ehhznF"}]' \
    > test.out 2>&1
eval_tap $? 195 'GrantUserEntitlement' test.out

#- 196 GetUserAppEntitlementByAppId
samples/cli/sample-apps Platform getUserAppEntitlementByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'eRY9Iq5q' \
    --activeOnly 'true' \
    --appId '6z7pX4tw' \
    > test.out 2>&1
eval_tap $? 196 'GetUserAppEntitlementByAppId' test.out

#- 197 QueryUserEntitlementsByAppType
samples/cli/sample-apps Platform queryUserEntitlementsByAppType \
    --namespace $AB_NAMESPACE \
    --userId 'pqajiWjT' \
    --activeOnly 'true' \
    --limit '52' \
    --offset '74' \
    --appType 'DLC' \
    > test.out 2>&1
eval_tap $? 197 'QueryUserEntitlementsByAppType' test.out

#- 198 GetUserEntitlementByItemId
samples/cli/sample-apps Platform getUserEntitlementByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'fiLZrRA6' \
    --activeOnly 'false' \
    --entitlementClazz 'ENTITLEMENT' \
    --itemId '79OfqhS2' \
    > test.out 2>&1
eval_tap $? 198 'GetUserEntitlementByItemId' test.out

#- 199 GetUserActiveEntitlementsByItemIds
samples/cli/sample-apps Platform getUserActiveEntitlementsByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'cP9CfnO7' \
    --ids '["kDSDic32", "lPVBlQRJ", "ysfJksk8"]' \
    > test.out 2>&1
eval_tap $? 199 'GetUserActiveEntitlementsByItemIds' test.out

#- 200 GetUserEntitlementBySku
samples/cli/sample-apps Platform getUserEntitlementBySku \
    --namespace $AB_NAMESPACE \
    --userId 'lQRUeXWP' \
    --activeOnly 'false' \
    --entitlementClazz 'CODE' \
    --sku 'zBc517E8' \
    > test.out 2>&1
eval_tap $? 200 'GetUserEntitlementBySku' test.out

#- 201 ExistsAnyUserActiveEntitlement
samples/cli/sample-apps Platform existsAnyUserActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'mLGwuxnC' \
    --appIds '["eFrlIQ6o", "kNQ2v3JS", "t9coA92i"]' \
    --itemIds '["dzSr7Msw", "7LtmUo3M", "aaDsR88N"]' \
    --skus '["pM7eJvCr", "sdLLFztu", "N0JUbFNG"]' \
    > test.out 2>&1
eval_tap $? 201 'ExistsAnyUserActiveEntitlement' test.out

#- 202 ExistsAnyUserActiveEntitlementByItemIds
samples/cli/sample-apps Platform existsAnyUserActiveEntitlementByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'QrRVwHGF' \
    --itemIds '["0gGckDgU", "zIQt8bLN", "dgLJD2Qa"]' \
    > test.out 2>&1
eval_tap $? 202 'ExistsAnyUserActiveEntitlementByItemIds' test.out

#- 203 GetUserAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform getUserAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'j0Fdo2J7' \
    --appId 'zkxKZQ9f' \
    > test.out 2>&1
eval_tap $? 203 'GetUserAppEntitlementOwnershipByAppId' test.out

#- 204 GetUserEntitlementOwnershipByItemId
samples/cli/sample-apps Platform getUserEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --userId '9cJHw4uP' \
    --entitlementClazz 'ENTITLEMENT' \
    --itemId 'LGO7EElc' \
    > test.out 2>&1
eval_tap $? 204 'GetUserEntitlementOwnershipByItemId' test.out

#- 205 GetUserEntitlementOwnershipByItemIds
samples/cli/sample-apps Platform getUserEntitlementOwnershipByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'aicGrHPr' \
    --ids '["jKCzEwBL", "RUDqpscj", "OxpwZ9Rx"]' \
    > test.out 2>&1
eval_tap $? 205 'GetUserEntitlementOwnershipByItemIds' test.out

#- 206 GetUserEntitlementOwnershipBySku
samples/cli/sample-apps Platform getUserEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --userId 'gYYXJJFU' \
    --entitlementClazz 'CODE' \
    --sku 'IrLlsVNK' \
    > test.out 2>&1
eval_tap $? 206 'GetUserEntitlementOwnershipBySku' test.out

#- 207 RevokeUserEntitlements
samples/cli/sample-apps Platform revokeUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'Mz484ktA' \
    --entitlementIds 'Ywpl5LVj' \
    > test.out 2>&1
eval_tap $? 207 'RevokeUserEntitlements' test.out

#- 208 GetUserEntitlement
samples/cli/sample-apps Platform getUserEntitlement \
    --entitlementId 'HUNUkIJi' \
    --namespace $AB_NAMESPACE \
    --userId 'vHMzBJIS' \
    > test.out 2>&1
eval_tap $? 208 'GetUserEntitlement' test.out

#- 209 UpdateUserEntitlement
samples/cli/sample-apps Platform updateUserEntitlement \
    --entitlementId 'svqQ7II4' \
    --namespace $AB_NAMESPACE \
    --userId 'CoK03mzm' \
    --body '{"endDate": "1974-01-25T00:00:00Z", "nullFieldList": ["Sgl4PrAq", "Uspo1NkF", "FuEGodle"], "startDate": "1981-02-10T00:00:00Z", "status": "CONSUMED", "useCount": 67}' \
    > test.out 2>&1
eval_tap $? 209 'UpdateUserEntitlement' test.out

#- 210 ConsumeUserEntitlement
samples/cli/sample-apps Platform consumeUserEntitlement \
    --entitlementId 'ywA68L25' \
    --namespace $AB_NAMESPACE \
    --userId 'IPKKJnAv' \
    --body '{"options": ["txVjXSyy", "OFhHcaah", "GtKHvOUn"], "requestId": "YFOQdVDq", "useCount": 91}' \
    > test.out 2>&1
eval_tap $? 210 'ConsumeUserEntitlement' test.out

#- 211 DisableUserEntitlement
samples/cli/sample-apps Platform disableUserEntitlement \
    --entitlementId 'Bp9WBdFy' \
    --namespace $AB_NAMESPACE \
    --userId 'vYO4GHuS' \
    > test.out 2>&1
eval_tap $? 211 'DisableUserEntitlement' test.out

#- 212 EnableUserEntitlement
samples/cli/sample-apps Platform enableUserEntitlement \
    --entitlementId '9giv89TI' \
    --namespace $AB_NAMESPACE \
    --userId 'Ch6snRSI' \
    > test.out 2>&1
eval_tap $? 212 'EnableUserEntitlement' test.out

#- 213 GetUserEntitlementHistories
samples/cli/sample-apps Platform getUserEntitlementHistories \
    --entitlementId 'ivhmXTmu' \
    --namespace $AB_NAMESPACE \
    --userId '5JSOJOt8' \
    > test.out 2>&1
eval_tap $? 213 'GetUserEntitlementHistories' test.out

#- 214 RevokeUserEntitlement
samples/cli/sample-apps Platform revokeUserEntitlement \
    --entitlementId 'RdhBcVcI' \
    --namespace $AB_NAMESPACE \
    --userId '9Xkb7QDO' \
    > test.out 2>&1
eval_tap $? 214 'RevokeUserEntitlement' test.out

#- 215 FulfillItem
samples/cli/sample-apps Platform fulfillItem \
    --namespace $AB_NAMESPACE \
    --userId 'fYKJT1Kb' \
    --body '{"duration": 17, "endDate": "1991-08-23T00:00:00Z", "itemId": "Ivp54Ttn", "itemSku": "3g7N4wwO", "language": "xMTALH32", "order": {"currency": {"currencyCode": "Bfso0V0v", "currencySymbol": "DWONu0CO", "currencyType": "VIRTUAL", "decimals": 7, "namespace": "7ZLPJEhA"}, "ext": {"jKsTE286": {}, "7qeDgXKw": {}, "sM7L3FEc": {}}, "free": false}, "orderNo": "US8JLGkg", "origin": "Xbox", "quantity": 66, "region": "zCeGj9s0", "source": "REWARD", "startDate": "1971-12-10T00:00:00Z", "storeId": "G9x2ihd5"}' \
    > test.out 2>&1
eval_tap $? 215 'FulfillItem' test.out

#- 216 RedeemCode
samples/cli/sample-apps Platform redeemCode \
    --namespace $AB_NAMESPACE \
    --userId '9mwOS10m' \
    --body '{"code": "2y6OwS5i", "language": "nkP-cAIn-380", "region": "y8HZCnuS"}' \
    > test.out 2>&1
eval_tap $? 216 'RedeemCode' test.out

#- 217 FulfillRewards
samples/cli/sample-apps Platform fulfillRewards \
    --namespace $AB_NAMESPACE \
    --userId 'WXHfheMp' \
    --body '{"origin": "IOS", "rewards": [{"currency": {"currencyCode": "YMqGQeSp", "namespace": "zqiyXe3U"}, "item": {"itemId": "31CWjMbS", "itemSku": "mCC60EXM", "itemType": "CcCb1uht"}, "quantity": 77, "type": "ITEM"}, {"currency": {"currencyCode": "OEVyjw9L", "namespace": "RSPWuzbV"}, "item": {"itemId": "itAUVae3", "itemSku": "qM5zXsYs", "itemType": "RjkfcR67"}, "quantity": 70, "type": "ITEM"}, {"currency": {"currencyCode": "ph5U823z", "namespace": "OrbBNiXM"}, "item": {"itemId": "Alcib0IB", "itemSku": "G6sIRiyi", "itemType": "OcHgsq6b"}, "quantity": 33, "type": "CURRENCY"}], "source": "IAP"}' \
    > test.out 2>&1
eval_tap $? 217 'FulfillRewards' test.out

#- 218 QueryUserIAPOrders
samples/cli/sample-apps Platform queryUserIAPOrders \
    --namespace $AB_NAMESPACE \
    --userId '8i9Up4Dh' \
    --endTime 'DN6YzYvn' \
    --limit '12' \
    --offset '71' \
    --productId 'qt6VhxH6' \
    --startTime 'zjKyx0CF' \
    --status 'FAILED' \
    --type 'STADIA' \
    > test.out 2>&1
eval_tap $? 218 'QueryUserIAPOrders' test.out

#- 219 QueryAllUserIAPOrders
samples/cli/sample-apps Platform queryAllUserIAPOrders \
    --namespace $AB_NAMESPACE \
    --userId 'LEH5wpfp' \
    > test.out 2>&1
eval_tap $? 219 'QueryAllUserIAPOrders' test.out

#- 220 QueryUserIAPConsumeHistory
samples/cli/sample-apps Platform queryUserIAPConsumeHistory \
    --namespace $AB_NAMESPACE \
    --userId 'fAGjbSu9' \
    --endTime 'kAPijoUa' \
    --limit '66' \
    --offset '19' \
    --startTime 'zjjTHJqV' \
    --status 'SUCCESS' \
    --type 'PLAYSTATION' \
    > test.out 2>&1
eval_tap $? 220 'QueryUserIAPConsumeHistory' test.out

#- 221 MockFulfillIAPItem
samples/cli/sample-apps Platform mockFulfillIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'Qi5M4oMK' \
    --body '{"itemIdentityType": "ITEM_ID", "language": "AME_HIJb", "productId": "s8m46GTG", "region": "OOrybk9B", "type": "APPLE"}' \
    > test.out 2>&1
eval_tap $? 221 'MockFulfillIAPItem' test.out

#- 222 QueryUserOrders
samples/cli/sample-apps Platform queryUserOrders \
    --namespace $AB_NAMESPACE \
    --userId '718mp7hN' \
    --itemId 'ptSZlft5' \
    --limit '30' \
    --offset '55' \
    --status 'CHARGEBACK_REVERSED' \
    > test.out 2>&1
eval_tap $? 222 'QueryUserOrders' test.out

#- 223 AdminCreateUserOrder
samples/cli/sample-apps Platform adminCreateUserOrder \
    --namespace $AB_NAMESPACE \
    --userId 'dt77YszD' \
    --body '{"currencyCode": "vevfPZcQ", "currencyNamespace": "OZXUu5Ab", "discountedPrice": 87, "ext": {"lt3IpBHz": {}, "aApn5KQs": {}, "7KNRZfNn": {}}, "itemId": "dNksieNo", "language": "LWAz7PuF", "options": {"skipPriceValidation": false}, "platform": "Steam", "price": 60, "quantity": 32, "region": "KUWlW1c1", "returnUrl": "EaTZllXP", "sandbox": false}' \
    > test.out 2>&1
eval_tap $? 223 'AdminCreateUserOrder' test.out

#- 224 CountOfPurchasedItem
samples/cli/sample-apps Platform countOfPurchasedItem \
    --namespace $AB_NAMESPACE \
    --userId 'zz4BCELx' \
    --itemId 'kYDSz3FY' \
    > test.out 2>&1
eval_tap $? 224 'CountOfPurchasedItem' test.out

#- 225 GetUserOrder
samples/cli/sample-apps Platform getUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'r8nLHI1q' \
    --userId 'wJSinRMH' \
    > test.out 2>&1
eval_tap $? 225 'GetUserOrder' test.out

#- 226 UpdateUserOrderStatus
samples/cli/sample-apps Platform updateUserOrderStatus \
    --namespace $AB_NAMESPACE \
    --orderNo 'bhvFOHCD' \
    --userId '8vvBDlCC' \
    --body '{"status": "REFUND_FAILED", "statusReason": "StFHR8yL"}' \
    > test.out 2>&1
eval_tap $? 226 'UpdateUserOrderStatus' test.out

#- 227 FulfillUserOrder
samples/cli/sample-apps Platform fulfillUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'Lt9p4RdZ' \
    --userId 'mUxIQrN7' \
    > test.out 2>&1
eval_tap $? 227 'FulfillUserOrder' test.out

#- 228 GetUserOrderGrant
samples/cli/sample-apps Platform getUserOrderGrant \
    --namespace $AB_NAMESPACE \
    --orderNo 'qjldHD2u' \
    --userId 'Ecr0VNGT' \
    > test.out 2>&1
eval_tap $? 228 'GetUserOrderGrant' test.out

#- 229 GetUserOrderHistories
samples/cli/sample-apps Platform getUserOrderHistories \
    --namespace $AB_NAMESPACE \
    --orderNo 'QJ9Bz6LN' \
    --userId 'qMrhNs45' \
    > test.out 2>&1
eval_tap $? 229 'GetUserOrderHistories' test.out

#- 230 ProcessUserOrderNotification
samples/cli/sample-apps Platform processUserOrderNotification \
    --namespace $AB_NAMESPACE \
    --orderNo 'fcY2uu4J' \
    --userId 'DQZVNCG2' \
    --body '{"additionalData": {"cardSummary": "lEOn4sOP"}, "authorisedTime": "1995-02-09T00:00:00Z", "chargebackReversedTime": "1990-07-17T00:00:00Z", "chargebackTime": "1983-03-30T00:00:00Z", "chargedTime": "1983-05-24T00:00:00Z", "createdTime": "1981-02-05T00:00:00Z", "currency": {"currencyCode": "lLwAMyF0", "currencySymbol": "rNekZyl2", "currencyType": "VIRTUAL", "decimals": 2, "namespace": "yIdocQZA"}, "customParameters": {"Ycdqrvdr": {}, "e9otmzXX": {}, "kxrPUhMP": {}}, "extOrderNo": "l2sxzwa7", "extTxId": "7i1HAE3K", "extUserId": "S402flvf", "issuedAt": "1988-10-19T00:00:00Z", "metadata": {"Wh5y6bt4": "LBh3hDCr", "77RQjvji": "GVu7JU3T", "wIC7BIR5": "6TGAEhVH"}, "namespace": "gCvpieCD", "nonceStr": "cVmSWO5e", "paymentMethod": "P9Dhln9J", "paymentMethodFee": 47, "paymentOrderNo": "Nit6QG5S", "paymentProvider": "XSOLLA", "paymentProviderFee": 94, "paymentStationUrl": "ucLHDmWm", "price": 21, "refundedTime": "1992-06-16T00:00:00Z", "salesTax": 65, "sandbox": true, "sku": "U90Pol2a", "status": "REFUNDING", "statusReason": "L36BRU1W", "subscriptionId": "paC9oZkS", "subtotalPrice": 40, "targetNamespace": "cjECoOYh", "targetUserId": "QKSBN3ca", "tax": 63, "totalPrice": 10, "totalTax": 67, "txEndTime": "1971-03-29T00:00:00Z", "type": "VybYNakg", "userId": "eN4zMQ5G", "vat": 59}' \
    > test.out 2>&1
eval_tap $? 230 'ProcessUserOrderNotification' test.out

#- 231 DownloadUserOrderReceipt
samples/cli/sample-apps Platform downloadUserOrderReceipt \
    --namespace $AB_NAMESPACE \
    --orderNo 'ywoDpey2' \
    --userId '9xvQ0kqG' \
    > test.out 2>&1
eval_tap $? 231 'DownloadUserOrderReceipt' test.out

#- 232 CreateUserPaymentOrder
samples/cli/sample-apps Platform createUserPaymentOrder \
    --namespace $AB_NAMESPACE \
    --userId '9oc87YSa' \
    --body '{"currencyCode": "oAMUuBhv", "currencyNamespace": "LSJNZHkx", "customParameters": {"ZLpxp19z": {}, "46rBlnaM": {}, "sQd7SIOM": {}}, "description": "ZpXBU8Qz", "extOrderNo": "r5yO6j2I", "extUserId": "18Dh8xfv", "itemType": "BUNDLE", "language": "sJkl_GZxu", "metadata": {"JrOHZ4UW": "nmocFgYa", "WSHlMCrS": "dr4z0oae", "u4ZMEDpR": "iLQ7Ji0u"}, "notifyUrl": "m1zbQhxG", "omitNotification": false, "platform": "AeupWYiq", "price": 58, "recurringPaymentOrderNo": "l1wDXmVy", "region": "5H9Sv9Cl", "returnUrl": "eG04rk8V", "sandbox": false, "sku": "JTKKhnfM", "subscriptionId": "Xvff6SiN", "title": "oyb6yxvC"}' \
    > test.out 2>&1
eval_tap $? 232 'CreateUserPaymentOrder' test.out

#- 233 RefundUserPaymentOrder
samples/cli/sample-apps Platform refundUserPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'nkxbNasB' \
    --userId 'Culfhb4J' \
    --body '{"description": "kXchWDdS"}' \
    > test.out 2>&1
eval_tap $? 233 'RefundUserPaymentOrder' test.out

#- 234 ApplyUserRedemption
samples/cli/sample-apps Platform applyUserRedemption \
    --namespace $AB_NAMESPACE \
    --userId '0e3nlcyQ' \
    --body '{"code": "5dkmRTPc", "orderNo": "SJbbHzJ4"}' \
    > test.out 2>&1
eval_tap $? 234 'ApplyUserRedemption' test.out

#- 235 DoRevocation
samples/cli/sample-apps Platform doRevocation \
    --namespace $AB_NAMESPACE \
    --userId 'BPX81nO5' \
    --body '{"meta": {"KlClriNS": {}, "1YIt82kn": {}, "Xhz9myTK": {}}, "revokeEntries": [{"currency": {"balanceOrigin": "GooglePlay", "currencyCode": "mppULVBS", "namespace": "OPWf7igz"}, "entitlement": {"clazz": "LOOTBOX", "entitlementId": "2EQQj6KX", "type": "DURABLE"}, "item": {"itemIdentity": "6W8Ywhzo", "itemIdentityType": "ITEM_SKU", "origin": "Steam"}, "quantity": 73, "type": "CURRENCY"}, {"currency": {"balanceOrigin": "Nintendo", "currencyCode": "ZyB2gpCF", "namespace": "TgADLRJ4"}, "entitlement": {"clazz": "MEDIA", "entitlementId": "mLX3TpS2", "type": "CONSUMABLE"}, "item": {"itemIdentity": "bpzTbk2C", "itemIdentityType": "ITEM_ID", "origin": "Epic"}, "quantity": 65, "type": "CURRENCY"}, {"currency": {"balanceOrigin": "GooglePlay", "currencyCode": "xNpqlhuq", "namespace": "xa5KvOB2"}, "entitlement": {"clazz": "MEDIA", "entitlementId": "IB1ksxOB", "type": "CONSUMABLE"}, "item": {"itemIdentity": "ulCvnUOd", "itemIdentityType": "ITEM_SKU", "origin": "Epic"}, "quantity": 99, "type": "CURRENCY"}], "source": "ORDER", "transactionId": "FIUsr6O4"}' \
    > test.out 2>&1
eval_tap $? 235 'DoRevocation' test.out

#- 236 QueryUserSubscriptions
samples/cli/sample-apps Platform queryUserSubscriptions \
    --namespace $AB_NAMESPACE \
    --userId 'BS7Dt56j' \
    --chargeStatus 'CHARGED' \
    --itemId 'PgZ6bhrV' \
    --limit '19' \
    --offset '9' \
    --sku 'UubzhfpN' \
    --status 'ACTIVE' \
    --subscribedBy 'USER' \
    > test.out 2>&1
eval_tap $? 236 'QueryUserSubscriptions' test.out

#- 237 GetUserSubscriptionActivities
samples/cli/sample-apps Platform getUserSubscriptionActivities \
    --namespace $AB_NAMESPACE \
    --userId 'ZdX7hMdq' \
    --excludeSystem 'false' \
    --limit '69' \
    --offset '37' \
    --subscriptionId '03WBazrQ' \
    > test.out 2>&1
eval_tap $? 237 'GetUserSubscriptionActivities' test.out

#- 238 PlatformSubscribeSubscription
samples/cli/sample-apps Platform platformSubscribeSubscription \
    --namespace $AB_NAMESPACE \
    --userId 'RUL2ZhJB' \
    --body '{"grantDays": 81, "itemId": "5S0s8Szu", "language": "CDuArrwc", "reason": "tHKq9oaL", "region": "3y1Q4DeS", "source": "8H667awK"}' \
    > test.out 2>&1
eval_tap $? 238 'PlatformSubscribeSubscription' test.out

#- 239 CheckUserSubscriptionSubscribableByItemId
samples/cli/sample-apps Platform checkUserSubscriptionSubscribableByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'ynfWlJaa' \
    --itemId 'sIKT7sJi' \
    > test.out 2>&1
eval_tap $? 239 'CheckUserSubscriptionSubscribableByItemId' test.out

#- 240 GetUserSubscription
samples/cli/sample-apps Platform getUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId '3S2oAMa7' \
    --userId 'kiBlr2WI' \
    > test.out 2>&1
eval_tap $? 240 'GetUserSubscription' test.out

#- 241 DeleteUserSubscription
samples/cli/sample-apps Platform deleteUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId '9gE7lCxB' \
    --userId '0FzRagaT' \
    > test.out 2>&1
eval_tap $? 241 'DeleteUserSubscription' test.out

#- 242 CancelSubscription
samples/cli/sample-apps Platform cancelSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId '4TlSEdi1' \
    --userId '8fs0hmJr' \
    --force 'false' \
    --body '{"immediate": true, "reason": "jeieEFhO"}' \
    > test.out 2>&1
eval_tap $? 242 'CancelSubscription' test.out

#- 243 GrantDaysToSubscription
samples/cli/sample-apps Platform grantDaysToSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'wLejFp8e' \
    --userId 'dkyXVqNL' \
    --body '{"grantDays": 94, "reason": "T6ayXZhm"}' \
    > test.out 2>&1
eval_tap $? 243 'GrantDaysToSubscription' test.out

#- 244 GetUserSubscriptionBillingHistories
samples/cli/sample-apps Platform getUserSubscriptionBillingHistories \
    --namespace $AB_NAMESPACE \
    --subscriptionId '369Nv94g' \
    --userId '1uSlSIJN' \
    --excludeFree 'false' \
    --limit '29' \
    --offset '89' \
    > test.out 2>&1
eval_tap $? 244 'GetUserSubscriptionBillingHistories' test.out

#- 245 ProcessUserSubscriptionNotification
samples/cli/sample-apps Platform processUserSubscriptionNotification \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'qWrVLtTC' \
    --userId 'aKk4v7l1' \
    --body '{"additionalData": {"cardSummary": "VnyihaTn"}, "authorisedTime": "1983-11-07T00:00:00Z", "chargebackReversedTime": "1984-12-23T00:00:00Z", "chargebackTime": "1975-06-13T00:00:00Z", "chargedTime": "1978-03-14T00:00:00Z", "createdTime": "1976-09-11T00:00:00Z", "currency": {"currencyCode": "4WPgB91g", "currencySymbol": "bkdLrVMC", "currencyType": "REAL", "decimals": 40, "namespace": "46s2ezFi"}, "customParameters": {"lNAMqKsp": {}, "YqEZRhJX": {}, "lVUZyj1B": {}}, "extOrderNo": "VdBI4Eld", "extTxId": "TkqOSW5D", "extUserId": "E5LCaiQW", "issuedAt": "1991-05-07T00:00:00Z", "metadata": {"AjJ2FE98": "0CqvWZ1g", "YK4TDpFy": "qrm0qocs", "xOENcb1X": "eKCzrpvc"}, "namespace": "ESeJV1Ny", "nonceStr": "PlxofThT", "paymentMethod": "rdw9FTFL", "paymentMethodFee": 16, "paymentOrderNo": "uUojzayZ", "paymentProvider": "PAYPAL", "paymentProviderFee": 6, "paymentStationUrl": "0QHKiKMJ", "price": 94, "refundedTime": "1971-04-17T00:00:00Z", "salesTax": 12, "sandbox": false, "sku": "TSoHW01J", "status": "CHARGE_FAILED", "statusReason": "lEPuZUXt", "subscriptionId": "fpPNybRZ", "subtotalPrice": 13, "targetNamespace": "bQ74UrFB", "targetUserId": "peonkIlj", "tax": 67, "totalPrice": 9, "totalTax": 61, "txEndTime": "1999-12-19T00:00:00Z", "type": "5fNPboDs", "userId": "77ObJoon", "vat": 63}' \
    > test.out 2>&1
eval_tap $? 245 'ProcessUserSubscriptionNotification' test.out

#- 246 AcquireUserTicket
samples/cli/sample-apps Platform acquireUserTicket \
    --boothName 'dLpAT3Xq' \
    --namespace $AB_NAMESPACE \
    --userId 'kXfglRkn' \
    --body '{"count": 65, "orderNo": "csFPUndY"}' \
    > test.out 2>&1
eval_tap $? 246 'AcquireUserTicket' test.out

#- 247 QueryUserCurrencyWallets
samples/cli/sample-apps Platform queryUserCurrencyWallets \
    --namespace $AB_NAMESPACE \
    --userId 'N9VC4muw' \
    > test.out 2>&1
eval_tap $? 247 'QueryUserCurrencyWallets' test.out

#- 248 DebitUserWalletByCurrencyCode
samples/cli/sample-apps Platform debitUserWalletByCurrencyCode \
    --currencyCode '41gr5D65' \
    --namespace $AB_NAMESPACE \
    --userId 'YS9uqeyc' \
    --body '{"allowOverdraft": false, "amount": 3, "balanceOrigin": "Playstation", "reason": "1j87L7ca"}' \
    > test.out 2>&1
eval_tap $? 248 'DebitUserWalletByCurrencyCode' test.out

#- 249 ListUserCurrencyTransactions
samples/cli/sample-apps Platform listUserCurrencyTransactions \
    --currencyCode 'o2vEMbyS' \
    --namespace $AB_NAMESPACE \
    --userId 'LdwY313T' \
    --limit '63' \
    --offset '23' \
    > test.out 2>&1
eval_tap $? 249 'ListUserCurrencyTransactions' test.out

#- 250 CheckWallet
eval_tap 0 250 'CheckWallet # SKIP deprecated' test.out

#- 251 CreditUserWallet
samples/cli/sample-apps Platform creditUserWallet \
    --currencyCode 'Ooui32Gw' \
    --namespace $AB_NAMESPACE \
    --userId '0M2O0h5q' \
    --body '{"amount": 83, "expireAt": "1988-05-26T00:00:00Z", "origin": "GooglePlay", "reason": "xb7lPiYC", "source": "REFUND"}' \
    > test.out 2>&1
eval_tap $? 251 'CreditUserWallet' test.out

#- 252 PayWithUserWallet
samples/cli/sample-apps Platform payWithUserWallet \
    --currencyCode '0wA1OrlV' \
    --namespace $AB_NAMESPACE \
    --userId 'btEf6pDX' \
    --body '{"amount": 85, "walletPlatform": "Steam"}' \
    > test.out 2>&1
eval_tap $? 252 'PayWithUserWallet' test.out

#- 253 GetUserWallet
eval_tap 0 253 'GetUserWallet # SKIP deprecated' test.out

#- 254 DebitUserWallet
eval_tap 0 254 'DebitUserWallet # SKIP deprecated' test.out

#- 255 DisableUserWallet
eval_tap 0 255 'DisableUserWallet # SKIP deprecated' test.out

#- 256 EnableUserWallet
eval_tap 0 256 'EnableUserWallet # SKIP deprecated' test.out

#- 257 ListUserWalletTransactions
eval_tap 0 257 'ListUserWalletTransactions # SKIP deprecated' test.out

#- 258 ListViews
samples/cli/sample-apps Platform listViews \
    --namespace $AB_NAMESPACE \
    --storeId 'U1vJQKR6' \
    > test.out 2>&1
eval_tap $? 258 'ListViews' test.out

#- 259 CreateView
samples/cli/sample-apps Platform createView \
    --namespace $AB_NAMESPACE \
    --storeId 'QZl64JQZ' \
    --body '{"displayOrder": 50, "localizations": {"Xsi8OlF4": {"description": "74dsbfaL", "localExt": {"FSU0kduJ": {}, "ZbmzUTjH": {}, "h8IqKC4Q": {}}, "longDescription": "ChydPHct", "title": "5KtQdd4y"}, "IMVFiFkI": {"description": "ARQbAfaf", "localExt": {"xMMLCCMm": {}, "DRW9DNhP": {}, "4GOpO0oy": {}}, "longDescription": "RtXTKUUN", "title": "Ise4yM8h"}, "7yQwa27t": {"description": "wqRxXjdG", "localExt": {"6JqkU0YQ": {}, "o6sqeCgc": {}, "z0qAYxTB": {}}, "longDescription": "XCt6CtlT", "title": "ngQNfueE"}}, "name": "aw0JXDCr"}' \
    > test.out 2>&1
eval_tap $? 259 'CreateView' test.out

#- 260 GetView
samples/cli/sample-apps Platform getView \
    --namespace $AB_NAMESPACE \
    --viewId '7d8ZoxE1' \
    --storeId 'puLqMNjk' \
    > test.out 2>&1
eval_tap $? 260 'GetView' test.out

#- 261 UpdateView
samples/cli/sample-apps Platform updateView \
    --namespace $AB_NAMESPACE \
    --viewId 'djOdnvkT' \
    --storeId '3mrWaPHk' \
    --body '{"displayOrder": 85, "localizations": {"yFsDPboe": {"description": "MtTVwJZg", "localExt": {"Lo9PBGZ8": {}, "ddxyInC6": {}, "tlxGMuXr": {}}, "longDescription": "463JnQ4a", "title": "8cpMVI6I"}, "iChxo2eb": {"description": "TvSNZCB2", "localExt": {"ZYkQzgDI": {}, "hV0PIGew": {}, "aZzAUrm7": {}}, "longDescription": "Y3eVk37V", "title": "BVWsnSft"}, "OIknQIiB": {"description": "EWFGG0mh", "localExt": {"6od6iZEN": {}, "oD3P8ORO": {}, "hzTpd8ls": {}}, "longDescription": "rAuR2flI", "title": "BWxllmdI"}}, "name": "BDmjuo6m"}' \
    > test.out 2>&1
eval_tap $? 261 'UpdateView' test.out

#- 262 DeleteView
samples/cli/sample-apps Platform deleteView \
    --namespace $AB_NAMESPACE \
    --viewId 'LJMsL1rg' \
    --storeId 'vDDqjkqv' \
    > test.out 2>&1
eval_tap $? 262 'DeleteView' test.out

#- 263 QueryWallets
eval_tap 0 263 'QueryWallets # SKIP deprecated' test.out

#- 264 GetWallet
eval_tap 0 264 'GetWallet # SKIP deprecated' test.out

#- 265 SyncOrders
samples/cli/sample-apps Platform syncOrders \
    --nextEvaluatedKey 'KbZ9fpkq' \
    --end 'KYm6oBWM' \
    --start 'szGXICWI' \
    > test.out 2>&1
eval_tap $? 265 'SyncOrders' test.out

#- 266 TestAdyenConfig
samples/cli/sample-apps Platform testAdyenConfig \
    --sandbox 'true' \
    --body '{"allowedPaymentMethods": ["puROQ9o6", "pxDqPVjt", "AcDrGmRa"], "apiKey": "748K6eGr", "authoriseAsCapture": false, "blockedPaymentMethods": ["7jlk1vX9", "6xYc3kPk", "9CWnURLY"], "clientKey": "LnjzNEmG", "dropInSettings": "cC85WN8T", "liveEndpointUrlPrefix": "BntIBnsi", "merchantAccount": "jkynrk6o", "notificationHmacKey": "PUTnSQFH", "notificationPassword": "Gt1UMa0m", "notificationUsername": "bIwNKNXa", "returnUrl": "t4YenQew", "settings": "vl43YNs3"}' \
    > test.out 2>&1
eval_tap $? 266 'TestAdyenConfig' test.out

#- 267 TestAliPayConfig
samples/cli/sample-apps Platform testAliPayConfig \
    --sandbox 'false' \
    --body '{"appId": "L1egWvX2", "privateKey": "97ctHOAv", "publicKey": "SdnsJo5Q", "returnUrl": "Uo3ZCXjV"}' \
    > test.out 2>&1
eval_tap $? 267 'TestAliPayConfig' test.out

#- 268 TestCheckoutConfig
samples/cli/sample-apps Platform testCheckoutConfig \
    --sandbox 'true' \
    --body '{"publicKey": "c0x7q31L", "secretKey": "qO4czVU0"}' \
    > test.out 2>&1
eval_tap $? 268 'TestCheckoutConfig' test.out

#- 269 DebugMatchedPaymentMerchantConfig
samples/cli/sample-apps Platform debugMatchedPaymentMerchantConfig \
    --namespace 'Z38sU1Ld' \
    --region 'ipM2FJf7' \
    > test.out 2>&1
eval_tap $? 269 'DebugMatchedPaymentMerchantConfig' test.out

#- 270 TestPayPalConfig
samples/cli/sample-apps Platform testPayPalConfig \
    --sandbox 'true' \
    --body '{"clientID": "vgEyQxPh", "clientSecret": "9e0xgBT0", "returnUrl": "wK5iIziW", "webHookId": "VFhEvLcm"}' \
    > test.out 2>&1
eval_tap $? 270 'TestPayPalConfig' test.out

#- 271 TestStripeConfig
samples/cli/sample-apps Platform testStripeConfig \
    --sandbox 'true' \
    --body '{"allowedPaymentMethodTypes": ["cWyi8Wnp", "wla9TBYe", "di1h4AUV"], "publishableKey": "hUfvyxHr", "secretKey": "g7OEdn0B", "webhookSecret": "SWprIbid"}' \
    > test.out 2>&1
eval_tap $? 271 'TestStripeConfig' test.out

#- 272 TestWxPayConfig
samples/cli/sample-apps Platform testWxPayConfig \
    --body '{"appId": "cBbLHpm0", "key": "KvuwrNZy", "mchid": "EtvhnhEP", "returnUrl": "l5lBfJV2"}' \
    > test.out 2>&1
eval_tap $? 272 'TestWxPayConfig' test.out

#- 273 TestXsollaConfig
samples/cli/sample-apps Platform testXsollaConfig \
    --body '{"apiKey": "bSw570II", "flowCompletionUrl": "xi8Lx3aB", "merchantId": 31, "projectId": 48, "projectSecretKey": "OPf1U2Kf"}' \
    > test.out 2>&1
eval_tap $? 273 'TestXsollaConfig' test.out

#- 274 GetPaymentMerchantConfig
samples/cli/sample-apps Platform getPaymentMerchantConfig \
    --id '5MqPP72g' \
    > test.out 2>&1
eval_tap $? 274 'GetPaymentMerchantConfig' test.out

#- 275 UpdateAdyenConfig
samples/cli/sample-apps Platform updateAdyenConfig \
    --id 'vRjAPWw4' \
    --sandbox 'true' \
    --validate 'false' \
    --body '{"allowedPaymentMethods": ["01gt9jDZ", "MfGVGWhm", "UMATAWor"], "apiKey": "IHcd8fYC", "authoriseAsCapture": false, "blockedPaymentMethods": ["eGA8f18D", "6giB8PzD", "kuQBc6A3"], "clientKey": "kLnQugGc", "dropInSettings": "lHvfkyNq", "liveEndpointUrlPrefix": "27QvMOt6", "merchantAccount": "owqSsgkL", "notificationHmacKey": "0TlSURZH", "notificationPassword": "U0voiAnh", "notificationUsername": "rVXXN3iP", "returnUrl": "APJbp007", "settings": "mI3jOiMV"}' \
    > test.out 2>&1
eval_tap $? 275 'UpdateAdyenConfig' test.out

#- 276 TestAdyenConfigById
samples/cli/sample-apps Platform testAdyenConfigById \
    --id 'WdsWkDin' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 276 'TestAdyenConfigById' test.out

#- 277 UpdateAliPayConfig
samples/cli/sample-apps Platform updateAliPayConfig \
    --id '3dsOsirE' \
    --sandbox 'true' \
    --validate 'true' \
    --body '{"appId": "I0dYVlTH", "privateKey": "aJoHST7F", "publicKey": "vy5upgrC", "returnUrl": "F7Pql3Pt"}' \
    > test.out 2>&1
eval_tap $? 277 'UpdateAliPayConfig' test.out

#- 278 TestAliPayConfigById
samples/cli/sample-apps Platform testAliPayConfigById \
    --id '9TC27Kp3' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 278 'TestAliPayConfigById' test.out

#- 279 UpdateCheckoutConfig
samples/cli/sample-apps Platform updateCheckoutConfig \
    --id 'ZUtxAEbU' \
    --sandbox 'true' \
    --validate 'true' \
    --body '{"publicKey": "nYnwSznK", "secretKey": "9b76IET2"}' \
    > test.out 2>&1
eval_tap $? 279 'UpdateCheckoutConfig' test.out

#- 280 TestCheckoutConfigById
samples/cli/sample-apps Platform testCheckoutConfigById \
    --id 'CN2PLWWk' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 280 'TestCheckoutConfigById' test.out

#- 281 UpdatePayPalConfig
samples/cli/sample-apps Platform updatePayPalConfig \
    --id 'G9oa23TF' \
    --sandbox 'false' \
    --validate 'true' \
    --body '{"clientID": "M9Jbimvx", "clientSecret": "lIfUwrz1", "returnUrl": "xphRuhWu", "webHookId": "CtPums8X"}' \
    > test.out 2>&1
eval_tap $? 281 'UpdatePayPalConfig' test.out

#- 282 TestPayPalConfigById
samples/cli/sample-apps Platform testPayPalConfigById \
    --id 'xSP3Eqjg' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 282 'TestPayPalConfigById' test.out

#- 283 UpdateStripeConfig
samples/cli/sample-apps Platform updateStripeConfig \
    --id 'p07UHn5u' \
    --sandbox 'true' \
    --validate 'true' \
    --body '{"allowedPaymentMethodTypes": ["qh8fGgND", "WgDqcqa4", "9h5lxFHh"], "publishableKey": "VKB9wD3G", "secretKey": "u1F2QLMJ", "webhookSecret": "iCsINiZ9"}' \
    > test.out 2>&1
eval_tap $? 283 'UpdateStripeConfig' test.out

#- 284 TestStripeConfigById
samples/cli/sample-apps Platform testStripeConfigById \
    --id 'kxPdl1EG' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 284 'TestStripeConfigById' test.out

#- 285 UpdateWxPayConfig
samples/cli/sample-apps Platform updateWxPayConfig \
    --id 'xnhR9RSJ' \
    --validate 'false' \
    --body '{"appId": "zMBk8JeH", "key": "eUJaDV0N", "mchid": "zBaUcdBS", "returnUrl": "zNDNpPT8"}' \
    > test.out 2>&1
eval_tap $? 285 'UpdateWxPayConfig' test.out

#- 286 UpdateWxPayConfigCert
samples/cli/sample-apps Platform updateWxPayConfigCert \
    --id '9YJldMjw' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 286 'UpdateWxPayConfigCert' test.out

#- 287 TestWxPayConfigById
samples/cli/sample-apps Platform testWxPayConfigById \
    --id 'wrmn5shh' \
    > test.out 2>&1
eval_tap $? 287 'TestWxPayConfigById' test.out

#- 288 UpdateXsollaConfig
samples/cli/sample-apps Platform updateXsollaConfig \
    --id 'wa5xBhpd' \
    --validate 'false' \
    --body '{"apiKey": "2kshHklQ", "flowCompletionUrl": "N1AI1Byr", "merchantId": 86, "projectId": 50, "projectSecretKey": "iI8bQlDf"}' \
    > test.out 2>&1
eval_tap $? 288 'UpdateXsollaConfig' test.out

#- 289 TestXsollaConfigById
samples/cli/sample-apps Platform testXsollaConfigById \
    --id 'MzuFEnFQ' \
    > test.out 2>&1
eval_tap $? 289 'TestXsollaConfigById' test.out

#- 290 UpdateXsollaUIConfig
samples/cli/sample-apps Platform updateXsollaUIConfig \
    --id 'hK0iQsPn' \
    --body '{"device": "DESKTOP", "showCloseButton": true, "size": "LARGE", "theme": "DARK"}' \
    > test.out 2>&1
eval_tap $? 290 'UpdateXsollaUIConfig' test.out

#- 291 QueryPaymentProviderConfig
samples/cli/sample-apps Platform queryPaymentProviderConfig \
    --limit '66' \
    --namespace 'j6DPoyxk' \
    --offset '89' \
    --region 'MwpCnbd9' \
    > test.out 2>&1
eval_tap $? 291 'QueryPaymentProviderConfig' test.out

#- 292 CreatePaymentProviderConfig
samples/cli/sample-apps Platform createPaymentProviderConfig \
    --body '{"aggregate": "ADYEN", "namespace": "y7fX2Vng", "region": "KFuqY4iV", "sandboxTaxJarApiToken": "TJBKtEsR", "specials": ["WXPAY", "ADYEN", "XSOLLA"], "taxJarApiToken": "nagHPSYX", "taxJarEnabled": false, "useGlobalTaxJarApiToken": true}' \
    > test.out 2>&1
eval_tap $? 292 'CreatePaymentProviderConfig' test.out

#- 293 GetAggregatePaymentProviders
samples/cli/sample-apps Platform getAggregatePaymentProviders \
    > test.out 2>&1
eval_tap $? 293 'GetAggregatePaymentProviders' test.out

#- 294 DebugMatchedPaymentProviderConfig
samples/cli/sample-apps Platform debugMatchedPaymentProviderConfig \
    --namespace 'Rt5XYfnG' \
    --region 'FUlmG89s' \
    > test.out 2>&1
eval_tap $? 294 'DebugMatchedPaymentProviderConfig' test.out

#- 295 GetSpecialPaymentProviders
samples/cli/sample-apps Platform getSpecialPaymentProviders \
    > test.out 2>&1
eval_tap $? 295 'GetSpecialPaymentProviders' test.out

#- 296 UpdatePaymentProviderConfig
samples/cli/sample-apps Platform updatePaymentProviderConfig \
    --id 'WFWQ7HhY' \
    --body '{"aggregate": "ADYEN", "namespace": "IUJHoZ1b", "region": "e4kJmCXE", "sandboxTaxJarApiToken": "YF2db74c", "specials": ["ADYEN", "ADYEN", "XSOLLA"], "taxJarApiToken": "mCehTrqB", "taxJarEnabled": true, "useGlobalTaxJarApiToken": true}' \
    > test.out 2>&1
eval_tap $? 296 'UpdatePaymentProviderConfig' test.out

#- 297 DeletePaymentProviderConfig
samples/cli/sample-apps Platform deletePaymentProviderConfig \
    --id 'cIW89viw' \
    > test.out 2>&1
eval_tap $? 297 'DeletePaymentProviderConfig' test.out

#- 298 GetPaymentTaxConfig
samples/cli/sample-apps Platform getPaymentTaxConfig \
    > test.out 2>&1
eval_tap $? 298 'GetPaymentTaxConfig' test.out

#- 299 UpdatePaymentTaxConfig
samples/cli/sample-apps Platform updatePaymentTaxConfig \
    --body '{"sandboxTaxJarApiToken": "CvxcFrzV", "taxJarApiToken": "PTvpthRU", "taxJarEnabled": true, "taxJarProductCodesMapping": {"qOfXzVIh": "2x61BITJ", "5JiIP5aO": "wFcDFPMp", "zE1Ycic6": "A4PMkbAC"}}' \
    > test.out 2>&1
eval_tap $? 299 'UpdatePaymentTaxConfig' test.out

#- 300 SyncPaymentOrders
samples/cli/sample-apps Platform syncPaymentOrders \
    --nextEvaluatedKey 'DVqjR0P7' \
    --end 'aISxg3Ed' \
    --start 'Glj4ea3n' \
    > test.out 2>&1
eval_tap $? 300 'SyncPaymentOrders' test.out

#- 301 PublicGetRootCategories
samples/cli/sample-apps Platform publicGetRootCategories \
    --namespace $AB_NAMESPACE \
    --language 'jj7OThp0' \
    --storeId 'WMZIfaga' \
    > test.out 2>&1
eval_tap $? 301 'PublicGetRootCategories' test.out

#- 302 DownloadCategories
samples/cli/sample-apps Platform downloadCategories \
    --namespace $AB_NAMESPACE \
    --language 'tjRDgS65' \
    --storeId 'D3NiH74X' \
    > test.out 2>&1
eval_tap $? 302 'DownloadCategories' test.out

#- 303 PublicGetCategory
samples/cli/sample-apps Platform publicGetCategory \
    --categoryPath 'wi6waki2' \
    --namespace $AB_NAMESPACE \
    --language 'xNCFJ0JY' \
    --storeId 'RqUi9VWj' \
    > test.out 2>&1
eval_tap $? 303 'PublicGetCategory' test.out

#- 304 PublicGetChildCategories
samples/cli/sample-apps Platform publicGetChildCategories \
    --categoryPath 'wYIxMrX0' \
    --namespace $AB_NAMESPACE \
    --language 'k0KawZiq' \
    --storeId 'mWbJtQbl' \
    > test.out 2>&1
eval_tap $? 304 'PublicGetChildCategories' test.out

#- 305 PublicGetDescendantCategories
samples/cli/sample-apps Platform publicGetDescendantCategories \
    --categoryPath 'LvwyrHtD' \
    --namespace $AB_NAMESPACE \
    --language 'rwKOy7TD' \
    --storeId '22YQK00q' \
    > test.out 2>&1
eval_tap $? 305 'PublicGetDescendantCategories' test.out

#- 306 PublicListCurrencies
samples/cli/sample-apps Platform publicListCurrencies \
    --namespace $AB_NAMESPACE \
    --currencyType 'VIRTUAL' \
    > test.out 2>&1
eval_tap $? 306 'PublicListCurrencies' test.out

#- 307 PublicGetItemByAppId
samples/cli/sample-apps Platform publicGetItemByAppId \
    --namespace $AB_NAMESPACE \
    --language '8XN17TQd' \
    --region 'aDfok44u' \
    --storeId 'L8Qa5SiB' \
    --appId 'EyRR7Rgq' \
    > test.out 2>&1
eval_tap $? 307 'PublicGetItemByAppId' test.out

#- 308 PublicQueryItems
samples/cli/sample-apps Platform publicQueryItems \
    --namespace $AB_NAMESPACE \
    --appType 'DEMO' \
    --baseAppId 'sza38t7w' \
    --categoryPath 'FMvJZt6b' \
    --features '3kn0zUkb' \
    --includeSubCategoryItem 'true' \
    --itemType 'OPTIONBOX' \
    --language 'iEDUDPn9' \
    --limit '12' \
    --offset '53' \
    --region 'Jge0xpHV' \
    --sortBy '["name:asc", "updatedAt:asc", "createdAt:asc"]' \
    --storeId 'GFQAiuk0' \
    --tags 'bFpnDQka' \
    > test.out 2>&1
eval_tap $? 308 'PublicQueryItems' test.out

#- 309 PublicGetItemBySku
samples/cli/sample-apps Platform publicGetItemBySku \
    --namespace $AB_NAMESPACE \
    --language '9osurWTh' \
    --region 'Ktxw0XOQ' \
    --storeId 'AVtIncUm' \
    --sku 'YX7kninG' \
    > test.out 2>&1
eval_tap $? 309 'PublicGetItemBySku' test.out

#- 310 PublicBulkGetItems
samples/cli/sample-apps Platform publicBulkGetItems \
    --namespace $AB_NAMESPACE \
    --language '3WIFeN3K' \
    --region 'GJh7uWWq' \
    --storeId '8IccpGfV' \
    --itemIds '54uktjJe' \
    > test.out 2>&1
eval_tap $? 310 'PublicBulkGetItems' test.out

#- 311 PublicValidateItemPurchaseCondition
samples/cli/sample-apps Platform publicValidateItemPurchaseCondition \
    --namespace $AB_NAMESPACE \
    --body '{"itemIds": ["7YwHKMMR", "AuaN0s61", "g1KlIJv7"]}' \
    > test.out 2>&1
eval_tap $? 311 'PublicValidateItemPurchaseCondition' test.out

#- 312 PublicSearchItems
samples/cli/sample-apps Platform publicSearchItems \
    --namespace $AB_NAMESPACE \
    --itemType 'INGAMEITEM' \
    --limit '99' \
    --offset '98' \
    --region 'BMZDoBg0' \
    --storeId 'fv0EqXgd' \
    --keyword '26o1akuE' \
    --language 'CMAobgvW' \
    > test.out 2>&1
eval_tap $? 312 'PublicSearchItems' test.out

#- 313 PublicGetApp
samples/cli/sample-apps Platform publicGetApp \
    --itemId 'vznebPQy' \
    --namespace $AB_NAMESPACE \
    --language '5TWt3TMg' \
    --region '3B7xXMLc' \
    --storeId 'VO5xhbxA' \
    > test.out 2>&1
eval_tap $? 313 'PublicGetApp' test.out

#- 314 PublicGetItemDynamicData
samples/cli/sample-apps Platform publicGetItemDynamicData \
    --itemId 'W8LTlwP0' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 314 'PublicGetItemDynamicData' test.out

#- 315 PublicGetItem
samples/cli/sample-apps Platform publicGetItem \
    --itemId 'rusbhIKk' \
    --namespace $AB_NAMESPACE \
    --language '1ZSrdugl' \
    --populateBundle 'false' \
    --region '2CzeAU4N' \
    --storeId 'xgZMk4BO' \
    > test.out 2>&1
eval_tap $? 315 'PublicGetItem' test.out

#- 316 GetPaymentCustomization
eval_tap 0 316 'GetPaymentCustomization # SKIP deprecated' test.out

#- 317 PublicGetPaymentUrl
samples/cli/sample-apps Platform publicGetPaymentUrl \
    --namespace $AB_NAMESPACE \
    --body '{"paymentOrderNo": "HcKir1sb", "paymentProvider": "ALIPAY", "returnUrl": "w69jD4fG", "ui": "HnabTD7l", "zipCode": "OQuVPAyr"}' \
    > test.out 2>&1
eval_tap $? 317 'PublicGetPaymentUrl' test.out

#- 318 PublicGetPaymentMethods
samples/cli/sample-apps Platform publicGetPaymentMethods \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'dLYGzHAW' \
    > test.out 2>&1
eval_tap $? 318 'PublicGetPaymentMethods' test.out

#- 319 PublicGetUnpaidPaymentOrder
samples/cli/sample-apps Platform publicGetUnpaidPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'hIntWPjd' \
    > test.out 2>&1
eval_tap $? 319 'PublicGetUnpaidPaymentOrder' test.out

#- 320 Pay
samples/cli/sample-apps Platform pay \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'ULwA1qgQ' \
    --paymentProvider 'STRIPE' \
    --zipCode 'O8RugQqG' \
    --body '{"token": "XCvHT8L7"}' \
    > test.out 2>&1
eval_tap $? 320 'Pay' test.out

#- 321 PublicCheckPaymentOrderPaidStatus
samples/cli/sample-apps Platform publicCheckPaymentOrderPaidStatus \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'cPWxJQp3' \
    > test.out 2>&1
eval_tap $? 321 'PublicCheckPaymentOrderPaidStatus' test.out

#- 322 GetPaymentPublicConfig
samples/cli/sample-apps Platform getPaymentPublicConfig \
    --namespace $AB_NAMESPACE \
    --sandbox 'true' \
    --paymentProvider 'PAYPAL' \
    --region 'wfr13EjR' \
    > test.out 2>&1
eval_tap $? 322 'GetPaymentPublicConfig' test.out

#- 323 PublicGetQRCode
samples/cli/sample-apps Platform publicGetQRCode \
    --namespace $AB_NAMESPACE \
    --code '3vdUvTQS' \
    > test.out 2>&1
eval_tap $? 323 'PublicGetQRCode' test.out

#- 324 PublicNormalizePaymentReturnUrl
samples/cli/sample-apps Platform publicNormalizePaymentReturnUrl \
    --namespace $AB_NAMESPACE \
    --payerID 'YKN0rEq2' \
    --foreinginvoice 'TlG6Rzu4' \
    --invoiceId 'UI41blj7' \
    --payload 'o8NhtZjY' \
    --redirectResult 'a7mrLk3R' \
    --resultCode 'MfGniQzS' \
    --sessionId '0c7KhziL' \
    --status 'Lkdpgm3o' \
    --token 'VHHc7Q5T' \
    --type '7z5CDU8j' \
    --userId 'TLqS8FBt' \
    --orderNo 'zYCb66LN' \
    --paymentOrderNo 'extS4i2Z' \
    --paymentProvider 'XSOLLA' \
    --returnUrl 'q8apJDLk' \
    > test.out 2>&1
eval_tap $? 324 'PublicNormalizePaymentReturnUrl' test.out

#- 325 GetPaymentTaxValue
samples/cli/sample-apps Platform getPaymentTaxValue \
    --namespace $AB_NAMESPACE \
    --zipCode 'VGcn9oOk' \
    --paymentOrderNo '9g0LxqE9' \
    --paymentProvider 'WXPAY' \
    > test.out 2>&1
eval_tap $? 325 'GetPaymentTaxValue' test.out

#- 326 GetRewardByCode
samples/cli/sample-apps Platform getRewardByCode \
    --namespace $AB_NAMESPACE \
    --rewardCode 'dboIr29k' \
    > test.out 2>&1
eval_tap $? 326 'GetRewardByCode' test.out

#- 327 QueryRewards1
samples/cli/sample-apps Platform queryRewards1 \
    --namespace $AB_NAMESPACE \
    --eventTopic 'TbGeLBM0' \
    --limit '94' \
    --offset '33' \
    --sortBy '["namespace:asc", "rewardCode:desc"]' \
    > test.out 2>&1
eval_tap $? 327 'QueryRewards1' test.out

#- 328 GetReward1
samples/cli/sample-apps Platform getReward1 \
    --namespace $AB_NAMESPACE \
    --rewardId 'kOkF6K6T' \
    > test.out 2>&1
eval_tap $? 328 'GetReward1' test.out

#- 329 PublicListStores
samples/cli/sample-apps Platform publicListStores \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 329 'PublicListStores' test.out

#- 330 PublicExistsAnyMyActiveEntitlement
samples/cli/sample-apps Platform publicExistsAnyMyActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --appIds '["NgXajIwQ", "mjrcGCXz", "CA97q1Wj"]' \
    --itemIds '["qDc9jzgC", "z3d7sn7e", "Ms5jgolj"]' \
    --skus '["JvpXIOXk", "E26zvA8E", "heXqpPd3"]' \
    > test.out 2>&1
eval_tap $? 330 'PublicExistsAnyMyActiveEntitlement' test.out

#- 331 PublicGetMyAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform publicGetMyAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --appId 'PLJUxKfQ' \
    > test.out 2>&1
eval_tap $? 331 'PublicGetMyAppEntitlementOwnershipByAppId' test.out

#- 332 PublicGetMyEntitlementOwnershipByItemId
samples/cli/sample-apps Platform publicGetMyEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --entitlementClazz 'LOOTBOX' \
    --itemId 'mP3GQaDh' \
    > test.out 2>&1
eval_tap $? 332 'PublicGetMyEntitlementOwnershipByItemId' test.out

#- 333 PublicGetMyEntitlementOwnershipBySku
samples/cli/sample-apps Platform publicGetMyEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --entitlementClazz 'APP' \
    --sku '6m09SinT' \
    > test.out 2>&1
eval_tap $? 333 'PublicGetMyEntitlementOwnershipBySku' test.out

#- 334 PublicGetEntitlementOwnershipToken
samples/cli/sample-apps Platform publicGetEntitlementOwnershipToken \
    --namespace $AB_NAMESPACE \
    --appIds '["2MuvmkUk", "3H0ZC93o", "975Wxtrp"]' \
    --itemIds '["ZD7pAxS0", "UuQLkzq3", "Ce8NSDli"]' \
    --skus '["oj3VVAdn", "OIrM1SeI", "y9kZ8X12"]' \
    > test.out 2>&1
eval_tap $? 334 'PublicGetEntitlementOwnershipToken' test.out

#- 335 PublicGetMyWallet
samples/cli/sample-apps Platform publicGetMyWallet \
    --currencyCode 'XLItjT4n' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 335 'PublicGetMyWallet' test.out

#- 336 SyncEpicGameDLC
samples/cli/sample-apps Platform syncEpicGameDLC \
    --namespace $AB_NAMESPACE \
    --userId 'Ud1s2TZh' \
    --body '{"epicGamesJwtToken": "ZrALAGl4"}' \
    > test.out 2>&1
eval_tap $? 336 'SyncEpicGameDLC' test.out

#- 337 PublicSyncPsnDlcInventory
samples/cli/sample-apps Platform publicSyncPsnDlcInventory \
    --namespace $AB_NAMESPACE \
    --userId '3mwsU0Qv' \
    --body '{"serviceLabel": 94}' \
    > test.out 2>&1
eval_tap $? 337 'PublicSyncPsnDlcInventory' test.out

#- 338 PublicSyncPsnDlcInventoryWithMultipleServiceLabels
samples/cli/sample-apps Platform publicSyncPsnDlcInventoryWithMultipleServiceLabels \
    --namespace $AB_NAMESPACE \
    --userId 'hgKXrQ9y' \
    --body '{"serviceLabels": [32, 42, 31]}' \
    > test.out 2>&1
eval_tap $? 338 'PublicSyncPsnDlcInventoryWithMultipleServiceLabels' test.out

#- 339 SyncSteamDLC
samples/cli/sample-apps Platform syncSteamDLC \
    --namespace $AB_NAMESPACE \
    --userId 'OmBA8IwR' \
    --body '{"appId": "rUKJYJsU", "steamId": "Dn0y1mQU"}' \
    > test.out 2>&1
eval_tap $? 339 'SyncSteamDLC' test.out

#- 340 SyncXboxDLC
samples/cli/sample-apps Platform syncXboxDLC \
    --namespace $AB_NAMESPACE \
    --userId 'JNU8JSfM' \
    --body '{"xstsToken": "qIR2X2on"}' \
    > test.out 2>&1
eval_tap $? 340 'SyncXboxDLC' test.out

#- 341 PublicQueryUserEntitlements
samples/cli/sample-apps Platform publicQueryUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'RuDGHxt0' \
    --appType 'GAME' \
    --entitlementClazz 'APP' \
    --entitlementName 'P6vk5Nps' \
    --features '["wubT2Fd3", "Nvq3SSu4", "yusBnOya"]' \
    --itemId '["cXAyF7Y6", "JecvuU15", "Pf0vW8fQ"]' \
    --limit '62' \
    --offset '1' \
    > test.out 2>&1
eval_tap $? 341 'PublicQueryUserEntitlements' test.out

#- 342 PublicGetUserAppEntitlementByAppId
samples/cli/sample-apps Platform publicGetUserAppEntitlementByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'Natv5W61' \
    --appId 'uz1toa3I' \
    > test.out 2>&1
eval_tap $? 342 'PublicGetUserAppEntitlementByAppId' test.out

#- 343 PublicQueryUserEntitlementsByAppType
samples/cli/sample-apps Platform publicQueryUserEntitlementsByAppType \
    --namespace $AB_NAMESPACE \
    --userId 'ipDnWxVq' \
    --limit '22' \
    --offset '54' \
    --appType 'DEMO' \
    > test.out 2>&1
eval_tap $? 343 'PublicQueryUserEntitlementsByAppType' test.out

#- 344 PublicGetUserEntitlementByItemId
samples/cli/sample-apps Platform publicGetUserEntitlementByItemId \
    --namespace $AB_NAMESPACE \
    --userId '6nBUzY0U' \
    --entitlementClazz 'SUBSCRIPTION' \
    --itemId 'YtkLUz9a' \
    > test.out 2>&1
eval_tap $? 344 'PublicGetUserEntitlementByItemId' test.out

#- 345 PublicGetUserEntitlementBySku
samples/cli/sample-apps Platform publicGetUserEntitlementBySku \
    --namespace $AB_NAMESPACE \
    --userId 'MQIJPv0E' \
    --entitlementClazz 'OPTIONBOX' \
    --sku 'k9vuBWOk' \
    > test.out 2>&1
eval_tap $? 345 'PublicGetUserEntitlementBySku' test.out

#- 346 PublicExistsAnyUserActiveEntitlement
samples/cli/sample-apps Platform publicExistsAnyUserActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --userId '4qX2SbtF' \
    --appIds '["VsfihIjZ", "vfIANkR2", "XjhjUKPw"]' \
    --itemIds '["AmHIVGeh", "T9HrY73t", "SrUJnar6"]' \
    --skus '["Y9MhKhX4", "NrfexQ0T", "wzk8VEJO"]' \
    > test.out 2>&1
eval_tap $? 346 'PublicExistsAnyUserActiveEntitlement' test.out

#- 347 PublicGetUserAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform publicGetUserAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --userId '2oTArhrt' \
    --appId 'MO2Bub9L' \
    > test.out 2>&1
eval_tap $? 347 'PublicGetUserAppEntitlementOwnershipByAppId' test.out

#- 348 PublicGetUserEntitlementOwnershipByItemId
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'RmYn3nIx' \
    --entitlementClazz 'SUBSCRIPTION' \
    --itemId 'eqzJCEIf' \
    > test.out 2>&1
eval_tap $? 348 'PublicGetUserEntitlementOwnershipByItemId' test.out

#- 349 PublicGetUserEntitlementOwnershipByItemIds
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'QXHhSRUK' \
    --ids '["QC4ZvOXG", "VpP6tl0f", "3m7Yezli"]' \
    > test.out 2>&1
eval_tap $? 349 'PublicGetUserEntitlementOwnershipByItemIds' test.out

#- 350 PublicGetUserEntitlementOwnershipBySku
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --userId 'Fb8naGeh' \
    --entitlementClazz 'APP' \
    --sku 'I2c30DUs' \
    > test.out 2>&1
eval_tap $? 350 'PublicGetUserEntitlementOwnershipBySku' test.out

#- 351 PublicGetUserEntitlement
samples/cli/sample-apps Platform publicGetUserEntitlement \
    --entitlementId 'kfgLL13r' \
    --namespace $AB_NAMESPACE \
    --userId 'vvLUbBrq' \
    > test.out 2>&1
eval_tap $? 351 'PublicGetUserEntitlement' test.out

#- 352 PublicConsumeUserEntitlement
samples/cli/sample-apps Platform publicConsumeUserEntitlement \
    --entitlementId 'OMk50wTV' \
    --namespace $AB_NAMESPACE \
    --userId 'hfQ5P6iC' \
    --body '{"options": ["YGy11LUC", "RFIPu8ic", "YA4ZrpwO"], "requestId": "vMCJT0OH", "useCount": 100}' \
    > test.out 2>&1
eval_tap $? 352 'PublicConsumeUserEntitlement' test.out

#- 353 PublicRedeemCode
samples/cli/sample-apps Platform publicRedeemCode \
    --namespace $AB_NAMESPACE \
    --userId 'Gj8mlb1S' \
    --body '{"code": "yl3fsIxi", "language": "xTk-350", "region": "DAhvirIa"}' \
    > test.out 2>&1
eval_tap $? 353 'PublicRedeemCode' test.out

#- 354 PublicFulfillAppleIAPItem
samples/cli/sample-apps Platform publicFulfillAppleIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'mIIpmCBD' \
    --body '{"excludeOldTransactions": false, "language": "aj", "productId": "BH0OWBX5", "receiptData": "5FHg4slp", "region": "dDqj5p8o", "transactionId": "kZkgD1YB"}' \
    > test.out 2>&1
eval_tap $? 354 'PublicFulfillAppleIAPItem' test.out

#- 355 SyncEpicGamesInventory
samples/cli/sample-apps Platform syncEpicGamesInventory \
    --namespace $AB_NAMESPACE \
    --userId 'AG40ZINs' \
    --body '{"epicGamesJwtToken": "DFu4aQvP"}' \
    > test.out 2>&1
eval_tap $? 355 'SyncEpicGamesInventory' test.out

#- 356 PublicFulfillGoogleIAPItem
samples/cli/sample-apps Platform publicFulfillGoogleIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'cH6fa8jM' \
    --body '{"autoAck": false, "language": "Tyy", "orderId": "qcCLDlsM", "packageName": "YRXFzcms", "productId": "s3YZqYh8", "purchaseTime": 99, "purchaseToken": "wLtvaWBL", "region": "ZTkwBmzZ"}' \
    > test.out 2>&1
eval_tap $? 356 'PublicFulfillGoogleIAPItem' test.out

#- 357 PublicReconcilePlayStationStore
samples/cli/sample-apps Platform publicReconcilePlayStationStore \
    --namespace $AB_NAMESPACE \
    --userId 't0hhCSj2' \
    --body '{"currencyCode": "0LbMoReG", "price": 0.1382387271681491, "productId": "WMgN0SIl", "serviceLabel": 31}' \
    > test.out 2>&1
eval_tap $? 357 'PublicReconcilePlayStationStore' test.out

#- 358 PublicReconcilePlayStationStoreWithMultipleServiceLabels
samples/cli/sample-apps Platform publicReconcilePlayStationStoreWithMultipleServiceLabels \
    --namespace $AB_NAMESPACE \
    --userId 'R1ci0BOK' \
    --body '{"currencyCode": "orWVggNm", "price": 0.9864718566941623, "productId": "TXDGyzYV", "serviceLabels": [57, 10, 59]}' \
    > test.out 2>&1
eval_tap $? 358 'PublicReconcilePlayStationStoreWithMultipleServiceLabels' test.out

#- 359 SyncSteamInventory
samples/cli/sample-apps Platform syncSteamInventory \
    --namespace $AB_NAMESPACE \
    --userId 'JZlqtapM' \
    --body '{"appId": "avNuOfRS", "currencyCode": "LsF4eAfu", "language": "dx_xVDu-373", "price": 0.43159568606184484, "productId": "j2JI4MZd", "region": "B7LBOz7X", "steamId": "j31Kdk7y"}' \
    > test.out 2>&1
eval_tap $? 359 'SyncSteamInventory' test.out

#- 360 SyncTwitchDropsEntitlement
samples/cli/sample-apps Platform syncTwitchDropsEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'z0HV1Urf' \
    --body '{"gameId": "BygQ4pk9", "language": "WUX-MiET_Ba", "region": "ygS3dMLc"}' \
    > test.out 2>&1
eval_tap $? 360 'SyncTwitchDropsEntitlement' test.out

#- 361 SyncXboxInventory
samples/cli/sample-apps Platform syncXboxInventory \
    --namespace $AB_NAMESPACE \
    --userId '3jqNdxv2' \
    --body '{"currencyCode": "bHdfOQYX", "price": 0.12864703487675022, "productId": "XoNBf7la", "xstsToken": "RiF2F13C"}' \
    > test.out 2>&1
eval_tap $? 361 'SyncXboxInventory' test.out

#- 362 PublicQueryUserOrders
samples/cli/sample-apps Platform publicQueryUserOrders \
    --namespace $AB_NAMESPACE \
    --userId 'qXGXcJZ9' \
    --itemId 'N7o2mf6z' \
    --limit '38' \
    --offset '16' \
    --status 'CHARGEBACK_REVERSED' \
    > test.out 2>&1
eval_tap $? 362 'PublicQueryUserOrders' test.out

#- 363 PublicCreateUserOrder
samples/cli/sample-apps Platform publicCreateUserOrder \
    --namespace $AB_NAMESPACE \
    --userId '6QXEHmcc' \
    --body '{"currencyCode": "bKLCMyPq", "discountedPrice": 30, "ext": {"LDev7bhB": {}, "Oneqrt4Y": {}, "lHyddvcR": {}}, "itemId": "f7J6S1IS", "language": "Pdl_LbpO", "price": 53, "quantity": 91, "region": "p5cyAAlQ", "returnUrl": "8V15oVqk"}' \
    > test.out 2>&1
eval_tap $? 363 'PublicCreateUserOrder' test.out

#- 364 PublicGetUserOrder
samples/cli/sample-apps Platform publicGetUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'AyybA8Rk' \
    --userId '9oSFVwQk' \
    > test.out 2>&1
eval_tap $? 364 'PublicGetUserOrder' test.out

#- 365 PublicCancelUserOrder
samples/cli/sample-apps Platform publicCancelUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'Ds2aEZFm' \
    --userId '7Uugn0Gw' \
    > test.out 2>&1
eval_tap $? 365 'PublicCancelUserOrder' test.out

#- 366 PublicGetUserOrderHistories
samples/cli/sample-apps Platform publicGetUserOrderHistories \
    --namespace $AB_NAMESPACE \
    --orderNo '09razUab' \
    --userId 'dQehZQNJ' \
    > test.out 2>&1
eval_tap $? 366 'PublicGetUserOrderHistories' test.out

#- 367 PublicDownloadUserOrderReceipt
samples/cli/sample-apps Platform publicDownloadUserOrderReceipt \
    --namespace $AB_NAMESPACE \
    --orderNo 'kMm3EnO2' \
    --userId 'MRW72Ua3' \
    > test.out 2>&1
eval_tap $? 367 'PublicDownloadUserOrderReceipt' test.out

#- 368 PublicGetPaymentAccounts
samples/cli/sample-apps Platform publicGetPaymentAccounts \
    --namespace $AB_NAMESPACE \
    --userId 'J2xKfqej' \
    > test.out 2>&1
eval_tap $? 368 'PublicGetPaymentAccounts' test.out

#- 369 PublicDeletePaymentAccount
samples/cli/sample-apps Platform publicDeletePaymentAccount \
    --id '6k6cNOsA' \
    --namespace $AB_NAMESPACE \
    --type 'paypal' \
    --userId 'vCsGpExy' \
    > test.out 2>&1
eval_tap $? 369 'PublicDeletePaymentAccount' test.out

#- 370 PublicListActiveSections
samples/cli/sample-apps Platform publicListActiveSections \
    --namespace $AB_NAMESPACE \
    --userId 'KG5jnRn8' \
    --language 'pzo9E17D' \
    --region 'nARuVVQ0' \
    --storeId 'UphP1Erh' \
    --viewId 'gWlTrzSD' \
    > test.out 2>&1
eval_tap $? 370 'PublicListActiveSections' test.out

#- 371 PublicQueryUserSubscriptions
samples/cli/sample-apps Platform publicQueryUserSubscriptions \
    --namespace $AB_NAMESPACE \
    --userId 'Lh2HSSHU' \
    --chargeStatus 'CHARGED' \
    --itemId '7iY4ZUY9' \
    --limit '96' \
    --offset '14' \
    --sku 'c8BHUyLo' \
    --status 'EXPIRED' \
    --subscribedBy 'USER' \
    > test.out 2>&1
eval_tap $? 371 'PublicQueryUserSubscriptions' test.out

#- 372 PublicSubscribeSubscription
samples/cli/sample-apps Platform publicSubscribeSubscription \
    --namespace $AB_NAMESPACE \
    --userId 'KsLUMnW3' \
    --body '{"currencyCode": "iKOH7Zrm", "itemId": "EEOBSnvx", "language": "QY-yUAn-DZ", "region": "8DqvTIer", "returnUrl": "Hzix1ujm", "source": "NEHIspvX"}' \
    > test.out 2>&1
eval_tap $? 372 'PublicSubscribeSubscription' test.out

#- 373 PublicCheckUserSubscriptionSubscribableByItemId
samples/cli/sample-apps Platform publicCheckUserSubscriptionSubscribableByItemId \
    --namespace $AB_NAMESPACE \
    --userId '37CYUu39' \
    --itemId '1X2kXpwZ' \
    > test.out 2>&1
eval_tap $? 373 'PublicCheckUserSubscriptionSubscribableByItemId' test.out

#- 374 PublicGetUserSubscription
samples/cli/sample-apps Platform publicGetUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId '5OApthKm' \
    --userId 'rQZL3i7O' \
    > test.out 2>&1
eval_tap $? 374 'PublicGetUserSubscription' test.out

#- 375 PublicChangeSubscriptionBillingAccount
samples/cli/sample-apps Platform publicChangeSubscriptionBillingAccount \
    --namespace $AB_NAMESPACE \
    --subscriptionId '0EMspHso' \
    --userId 'TqYUKMNi' \
    > test.out 2>&1
eval_tap $? 375 'PublicChangeSubscriptionBillingAccount' test.out

#- 376 PublicCancelSubscription
samples/cli/sample-apps Platform publicCancelSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'HYcrnkED' \
    --userId '0nmr98ww' \
    --body '{"immediate": false, "reason": "dCFGCX1t"}' \
    > test.out 2>&1
eval_tap $? 376 'PublicCancelSubscription' test.out

#- 377 PublicGetUserSubscriptionBillingHistories
samples/cli/sample-apps Platform publicGetUserSubscriptionBillingHistories \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'GdYFGB5O' \
    --userId 'O6aGXzfo' \
    --excludeFree 'true' \
    --limit '48' \
    --offset '91' \
    > test.out 2>&1
eval_tap $? 377 'PublicGetUserSubscriptionBillingHistories' test.out

#- 378 PublicListViews
samples/cli/sample-apps Platform publicListViews \
    --namespace $AB_NAMESPACE \
    --userId '2B9plHoh' \
    --language 'aMHgy31P' \
    --storeId 'V3q1AEJy' \
    > test.out 2>&1
eval_tap $? 378 'PublicListViews' test.out

#- 379 PublicGetWallet
samples/cli/sample-apps Platform publicGetWallet \
    --currencyCode 'fUbyBvh8' \
    --namespace $AB_NAMESPACE \
    --userId '7Icgnfvh' \
    > test.out 2>&1
eval_tap $? 379 'PublicGetWallet' test.out

#- 380 PublicListUserWalletTransactions
samples/cli/sample-apps Platform publicListUserWalletTransactions \
    --currencyCode '6xLPivIT' \
    --namespace $AB_NAMESPACE \
    --userId 'HHEijc9U' \
    --limit '4' \
    --offset '11' \
    > test.out 2>&1
eval_tap $? 380 'PublicListUserWalletTransactions' test.out

#- 381 QueryItems1
samples/cli/sample-apps Platform queryItems1 \
    --namespace $AB_NAMESPACE \
    --appType 'GAME' \
    --availableDate 'ynHYxwWz' \
    --baseAppId 'clbwKXIV' \
    --categoryPath 'qcZI8VHl' \
    --features 'm3kfB7eZ' \
    --includeSubCategoryItem 'true' \
    --itemName 'TPFiF5AC' \
    --itemStatus 'ACTIVE' \
    --itemType 'SEASON' \
    --limit '50' \
    --offset '9' \
    --region 'CIJPHOM6' \
    --sortBy '["name:desc", "updatedAt:desc", "displayOrder:desc"]' \
    --storeId 'F5OLLki8' \
    --tags 'smBp1vid' \
    --targetNamespace 'T4uMRQ4E' \
    > test.out 2>&1
eval_tap $? 381 'QueryItems1' test.out

#- 382 ImportStore1
samples/cli/sample-apps Platform importStore1 \
    --namespace $AB_NAMESPACE \
    --storeId 'Ry3E1XIv' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 382 'ImportStore1' test.out

#- 383 ExportStore1
samples/cli/sample-apps Platform exportStore1 \
    --namespace $AB_NAMESPACE \
    --storeId 'WjU7iwsC' \
    --body '{"itemIds": ["uf9YqONW", "5Ch8Zwta", "SbZQwNPj"]}' \
    > test.out 2>&1
eval_tap $? 383 'ExportStore1' test.out


rm -f "tmp.dat"

exit $EXIT_CODE