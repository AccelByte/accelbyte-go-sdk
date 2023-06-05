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
echo "1..397"

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
    --body '{"context": {"item": {"appId": "QzP3JJ5aVRIFLHIb", "appType": "DEMO", "baseAppId": "zJoVzMDlYxPylI1D", "boothName": "A20NWrufKMMU5v88", "boundItemIds": ["tYdn7JdFlv0eznDY", "rps68wDQSbppSRwE", "fGg8QMKM2ZluYUWE"], "categoryPath": "CFAOtQK1a4HUSj2s", "clazz": "BPf6BSEohfZMSBlH", "createdAt": "1971-12-06T00:00:00Z", "description": "j01gKTuzuBIo5zMc", "displayOrder": 30, "entitlementType": "DURABLE", "ext": {"wURGh4mIkz6nDbQX": {}, "1sdL5dhDNsSfK754": {}, "k2Yi2Rp43OQJtmdt": {}}, "features": ["EFEbXhYPG3D253vJ", "1HJvmqXs9UJIJCY1", "irPhCj2eQTGSapzT"], "fresh": false, "images": [{"as": "Pv4uxJSa4iQDZRF6", "caption": "shnTUwk6M43A7PoQ", "height": 49, "imageUrl": "jHlDp8fUIOsZTT6Y", "smallImageUrl": "xhH9oUQ17dV4nSS2", "width": 30}, {"as": "h5MSDQ4wZRmUyI7t", "caption": "KfGkWOhVDZ5LvGNo", "height": 66, "imageUrl": "2kVQkmhXyyGFFZvI", "smallImageUrl": "mOvpM5aXOioYv4GQ", "width": 98}, {"as": "ag0IckjAfSHNyqHZ", "caption": "QiN3mkPp0kjpwY1E", "height": 66, "imageUrl": "YHnHypOGoWXYcjD0", "smallImageUrl": "XVTmET0JyudWZqHe", "width": 38}], "itemId": "fCRCx7xJefjkeZDR", "itemIds": ["jOYQLBLZ0QxPQHoD", "nODpBSbOiP3KmSsZ", "B2oXR53oAd49q7DM"], "itemQty": {"hWlq8t41VHY2Wpla": 14, "xwYgWEEys0nrNzSk": 86, "28tivLkDHJ2PKks4": 13}, "itemType": "EXTENSION", "language": "ZBCg1MHTHUTIBxEz", "listable": true, "localExt": {"0EMY9WEnXUDjUudw": {}, "kPkvmlrXgSudljXd": {}, "9iV7pTAjKquqL6Ui": {}}, "longDescription": "wOzZoulMwi5IerfA", "lootBoxConfig": {"rewardCount": 0, "rewards": [{"lootBoxItems": [{"count": 93, "duration": 68, "endDate": "1990-06-21T00:00:00Z", "itemId": "4bCte18eb1uWjJ7o", "itemSku": "L7K2QjtgLMy1uXpO", "itemType": "F3jjI1seknb4uvfM"}, {"count": 6, "duration": 66, "endDate": "1977-11-10T00:00:00Z", "itemId": "DhxmSGiQ1xMqLRJR", "itemSku": "UaSFIPdYRL0PORxu", "itemType": "aIsfvuLGidfYT6qh"}, {"count": 58, "duration": 26, "endDate": "1971-05-29T00:00:00Z", "itemId": "lNchYHPhq7AiJBHT", "itemSku": "PKsrTCRTGtk1wIgf", "itemType": "dGXDmeB0Inq15ipq"}], "name": "EWjJy8ffZGXTYo3m", "odds": 0.6507514478299078, "type": "REWARD", "weight": 71}, {"lootBoxItems": [{"count": 10, "duration": 25, "endDate": "1989-09-11T00:00:00Z", "itemId": "w41OPHSwxu3K1uj6", "itemSku": "5B8MwwH4XEbltasW", "itemType": "yQqCDVkufHVKe2Bl"}, {"count": 85, "duration": 58, "endDate": "1992-12-16T00:00:00Z", "itemId": "RhbjiILOwdnBZemN", "itemSku": "QJcMC20ZQGofN480", "itemType": "xsJsxcRmZmThFAI5"}, {"count": 74, "duration": 98, "endDate": "1976-09-20T00:00:00Z", "itemId": "WwFan8xMVuOjcafv", "itemSku": "VMv4TyccHZ946Clc", "itemType": "bF8Kq3jbTBD9Sc4j"}], "name": "VTxPDVe4Dnc51uJZ", "odds": 0.7841566409802726, "type": "REWARD", "weight": 80}, {"lootBoxItems": [{"count": 99, "duration": 20, "endDate": "1987-04-15T00:00:00Z", "itemId": "BsnSUMcXk0JVNfFF", "itemSku": "U6IS69M5Ur4o3P2p", "itemType": "qqB6iW88lOaXnEha"}, {"count": 89, "duration": 36, "endDate": "1983-05-06T00:00:00Z", "itemId": "AEjwtTZ7aAtWQohw", "itemSku": "GZpzaKBPlT5NmECl", "itemType": "GTc7Ghxesz38ufHW"}, {"count": 78, "duration": 14, "endDate": "1991-08-08T00:00:00Z", "itemId": "rCKTNsbnXBrHEiHN", "itemSku": "8oGbQ3GYMHpyTabG", "itemType": "7aVZjmE4wc2aeZdl"}], "name": "2Zs8N0e2tbThnggj", "odds": 0.26157043353733267, "type": "PROBABILITY_GROUP", "weight": 92}], "rollFunction": "DEFAULT"}, "maxCount": 35, "maxCountPerUser": 21, "name": "lHblJSxbhaDUnHh6", "namespace": "nRdPcWkx5fYLTOw3", "optionBoxConfig": {"boxItems": [{"count": 34, "duration": 2, "endDate": "1987-04-25T00:00:00Z", "itemId": "9RuO8ciUn4WSIaph", "itemSku": "Wd1O9I097NfZvexb", "itemType": "LGGBM78AAipdYvfq"}, {"count": 13, "duration": 75, "endDate": "1990-03-25T00:00:00Z", "itemId": "LkRhepmN6L2FrAm6", "itemSku": "gBJVGC06vG302vAo", "itemType": "hondox7UbeoPncAy"}, {"count": 58, "duration": 20, "endDate": "1985-07-24T00:00:00Z", "itemId": "8m227RQXRyInxPsv", "itemSku": "gkXfK1n05AMKCM9Q", "itemType": "FUO1Q28O5gYeAxaQ"}]}, "purchasable": false, "purchaseCondition": {"conditionGroups": [{"operator": "and", "predicates": [{"anyOf": 95, "comparison": "includes", "name": "f0wOvmeKbtqUUeKY", "predicateType": "SeasonTierPredicate", "value": "RbOkm1fRU4x9aB9i", "values": ["qYaVAH9joApZ1LZq", "aD2JpkWhZC5UxwgO", "RdWJrDcfw9PS594v"]}, {"anyOf": 0, "comparison": "includes", "name": "ymb3JYdkzSq0cExX", "predicateType": "EntitlementPredicate", "value": "lqeiAKFyQNnrqa4g", "values": ["mWXEGCbpVjEedipr", "QmlDnlOAoFevvvCQ", "MNkhKKzApeGof4vt"]}, {"anyOf": 18, "comparison": "isNot", "name": "Sa50X5HQadGCYEbE", "predicateType": "EntitlementPredicate", "value": "k4BZZTa5b0pjfGQC", "values": ["Zp39sJhA3jBZUFnw", "g4QCusHZDMwwyGPI", "eyWNSIIWCPFkWtCj"]}]}, {"operator": "or", "predicates": [{"anyOf": 29, "comparison": "isNot", "name": "bCGL8bX7lXCM0Gcw", "predicateType": "SeasonTierPredicate", "value": "yh7b2HoXooh2ENZM", "values": ["rj183pr2WjKRjTQ2", "bZQ3OxkmYG8lyQvC", "TtzZE0AEC3n3hMx6"]}, {"anyOf": 73, "comparison": "isNot", "name": "J276XgtJCcippEfl", "predicateType": "EntitlementPredicate", "value": "V6YIYaJJzbJUjrlq", "values": ["4iyKFwpdnva09M2S", "yAnLUkc3cHcviveP", "qtmSy8JztiLZ6ZbB"]}, {"anyOf": 14, "comparison": "excludes", "name": "Amzt7PqDiD4h7J1c", "predicateType": "SeasonTierPredicate", "value": "lcU3GCi2pvCYiNa2", "values": ["3FNA3iaML9lAN8Tz", "3gC3S0ottWc5QhLY", "PeOPCX9Rgf7mKUpB"]}]}, {"operator": "or", "predicates": [{"anyOf": 48, "comparison": "isGreaterThan", "name": "BDFICP7bdXMNeyvA", "predicateType": "SeasonPassPredicate", "value": "vjRVCvZMOzp1Nipk", "values": ["vAdIf1dmFr58bFeh", "KLtqHV4gIwtrCleo", "13dnTsvrvDajDcgp"]}, {"anyOf": 79, "comparison": "isLessThanOrEqual", "name": "cPOt861783IJ18QK", "predicateType": "SeasonPassPredicate", "value": "5dPWHLFsvrTof05t", "values": ["5mlrc2mcFlCeQwsv", "WeYafOd3B8j0kyJD", "f3NnudFdM67qzZM6"]}, {"anyOf": 92, "comparison": "isGreaterThan", "name": "xqILMJvdRQ5CuWiI", "predicateType": "SeasonPassPredicate", "value": "flzmiNkUX7uqWlcV", "values": ["h1zwsR9l82ZJJFtt", "KfISRBttteFh68Ju", "tmDAclgI6zTMygws"]}]}]}, "recurring": {"cycle": "QUARTERLY", "fixedFreeDays": 41, "fixedTrialCycles": 86, "graceDays": 52}, "region": "QGkk4wJG1sMNjQMC", "regionData": [{"currencyCode": "p8X08NqZRx9eTJXC", "currencyNamespace": "XMk6J9j9V1VJmeo1", "currencyType": "REAL", "discountAmount": 14, "discountExpireAt": "1986-05-24T00:00:00Z", "discountPercentage": 68, "discountPurchaseAt": "1974-08-10T00:00:00Z", "discountedPrice": 9, "expireAt": "1973-11-29T00:00:00Z", "price": 60, "purchaseAt": "1971-10-07T00:00:00Z", "trialPrice": 43}, {"currencyCode": "5YpsTKXe77xaCy5m", "currencyNamespace": "6o91TGY6x6lJNDsu", "currencyType": "REAL", "discountAmount": 82, "discountExpireAt": "1997-06-30T00:00:00Z", "discountPercentage": 19, "discountPurchaseAt": "1982-10-30T00:00:00Z", "discountedPrice": 35, "expireAt": "1991-11-28T00:00:00Z", "price": 25, "purchaseAt": "1980-08-19T00:00:00Z", "trialPrice": 75}, {"currencyCode": "jifpenYJO3MmoToG", "currencyNamespace": "My89X1bjH34oKKEH", "currencyType": "VIRTUAL", "discountAmount": 50, "discountExpireAt": "1973-12-24T00:00:00Z", "discountPercentage": 24, "discountPurchaseAt": "1975-08-15T00:00:00Z", "discountedPrice": 71, "expireAt": "1981-03-14T00:00:00Z", "price": 29, "purchaseAt": "1984-12-30T00:00:00Z", "trialPrice": 54}], "saleConfig": {"currencyCode": "jRGp20eiMFY5UiAx", "price": 58}, "seasonType": "TIER", "sectionExclusive": true, "sellable": true, "sku": "8sKuo2PEngwSwMNg", "stackable": true, "status": "INACTIVE", "tags": ["1iK2KtkPTsaEwNVn", "ukdTEwCVTIkKM8WN", "AuNpo5IbZDOlgiiP"], "targetCurrencyCode": "XME4hmrFsN9V5Dlz", "targetItemId": "zHMHHDdpxQRNsFid", "targetNamespace": "G2LFo6Q99pqbmCAG", "thumbnailUrl": "szVHHy2B0EiEjpKu", "title": "YHvr26AF9N7fN2EE", "updatedAt": "1987-03-31T00:00:00Z", "useCount": 56}, "namespace": "nRhGFix8QN3qFBDF", "order": {"currency": {"currencyCode": "RxGbtIl2UuYPzQCe", "currencySymbol": "5hK63YVmHBI3S0an", "currencyType": "VIRTUAL", "decimals": 99, "namespace": "2V47kqT2hGbIpoCc"}, "ext": {"ZBeetD5ODQsv8oi2": {}, "TYkfU2La89XNyhTK": {}, "u6UfQ6EdCpeko34c": {}}, "free": true}, "source": "PROMOTION"}, "script": "GKumtH5UytL9vKyw", "type": "grantDays"}' \
    > test.out 2>&1
eval_tap $? 3 'TestFulfillmentScriptEval' test.out

#- 4 GetFulfillmentScript
samples/cli/sample-apps Platform getFulfillmentScript \
    --id 'Fe7m3atmdqhyx6hv' \
    > test.out 2>&1
eval_tap $? 4 'GetFulfillmentScript' test.out

#- 5 CreateFulfillmentScript
samples/cli/sample-apps Platform createFulfillmentScript \
    --id 'Q614LBZhMJuy1SQG' \
    --body '{"grantDays": "9p35W8VTOQnr4g4C"}' \
    > test.out 2>&1
eval_tap $? 5 'CreateFulfillmentScript' test.out

#- 6 DeleteFulfillmentScript
samples/cli/sample-apps Platform deleteFulfillmentScript \
    --id 'itAvbHcuSAHo1oDX' \
    > test.out 2>&1
eval_tap $? 6 'DeleteFulfillmentScript' test.out

#- 7 UpdateFulfillmentScript
samples/cli/sample-apps Platform updateFulfillmentScript \
    --id 'gTwFRx6y3kNgzMiV' \
    --body '{"grantDays": "rrWCAKLAEy8jXvGW"}' \
    > test.out 2>&1
eval_tap $? 7 'UpdateFulfillmentScript' test.out

#- 8 ListItemTypeConfigs
samples/cli/sample-apps Platform listItemTypeConfigs \
    > test.out 2>&1
eval_tap $? 8 'ListItemTypeConfigs' test.out

#- 9 CreateItemTypeConfig
samples/cli/sample-apps Platform createItemTypeConfig \
    --body '{"clazz": "I2VZ9spXvGYLX5V2", "dryRun": true, "fulfillmentUrl": "uHibHNMXl8Fvh7cW", "itemType": "SUBSCRIPTION", "purchaseConditionUrl": "Y3EwOyjXS8qiTNl1"}' \
    > test.out 2>&1
eval_tap $? 9 'CreateItemTypeConfig' test.out

#- 10 SearchItemTypeConfig
samples/cli/sample-apps Platform searchItemTypeConfig \
    --clazz '3rKwREeDnaXDDP2q' \
    --itemType 'SEASON' \
    > test.out 2>&1
eval_tap $? 10 'SearchItemTypeConfig' test.out

#- 11 GetItemTypeConfig
samples/cli/sample-apps Platform getItemTypeConfig \
    --id 'D0yno4ormqqVA5v4' \
    > test.out 2>&1
eval_tap $? 11 'GetItemTypeConfig' test.out

#- 12 UpdateItemTypeConfig
samples/cli/sample-apps Platform updateItemTypeConfig \
    --id '3URtX4o1Mtfx1vHV' \
    --body '{"clazz": "WUuU0NR4qGPVsCY3", "dryRun": false, "fulfillmentUrl": "shcJV5RZBqeJHi6G", "purchaseConditionUrl": "4g68pSL1JK8CW8h9"}' \
    > test.out 2>&1
eval_tap $? 12 'UpdateItemTypeConfig' test.out

#- 13 DeleteItemTypeConfig
samples/cli/sample-apps Platform deleteItemTypeConfig \
    --id 'T6063Ny9iglbzPtw' \
    > test.out 2>&1
eval_tap $? 13 'DeleteItemTypeConfig' test.out

#- 14 QueryCampaigns
samples/cli/sample-apps Platform queryCampaigns \
    --namespace $AB_NAMESPACE \
    --limit '21' \
    --name '3UMGeH1LmYPEHdm5' \
    --offset '82' \
    --tag 'mdHHyAIEodYlo2ll' \
    > test.out 2>&1
eval_tap $? 14 'QueryCampaigns' test.out

#- 15 CreateCampaign
samples/cli/sample-apps Platform createCampaign \
    --namespace $AB_NAMESPACE \
    --body '{"description": "VEC9fLqRZDwVYrXh", "items": [{"extraSubscriptionDays": 31, "itemId": "swNNw1iqfRaLFEhR", "itemName": "lMUhUncdBKnovWR6", "quantity": 21}, {"extraSubscriptionDays": 39, "itemId": "csc0Hcm0J8IK8QoK", "itemName": "qDAdghE5qnW3ZIyY", "quantity": 36}, {"extraSubscriptionDays": 17, "itemId": "JgsmCBTz2euaI9iS", "itemName": "DzNGoKEfFkw5TFWd", "quantity": 7}], "maxRedeemCountPerCampaignPerUser": 23, "maxRedeemCountPerCode": 37, "maxRedeemCountPerCodePerUser": 46, "maxSaleCount": 18, "name": "U2jo9exLE8VXqJkn", "redeemEnd": "1997-01-21T00:00:00Z", "redeemStart": "1987-08-28T00:00:00Z", "redeemType": "ITEM", "status": "INACTIVE", "tags": ["rKn2ok76KbLYWqk8", "uVNaHQYWh6rVZX8f", "twvj6yke9LUg2bnL"], "type": "REDEMPTION"}' \
    > test.out 2>&1
eval_tap $? 15 'CreateCampaign' test.out

#- 16 GetCampaign
samples/cli/sample-apps Platform getCampaign \
    --campaignId 'LryJxPr7O4WgjJqw' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'GetCampaign' test.out

#- 17 UpdateCampaign
samples/cli/sample-apps Platform updateCampaign \
    --campaignId 'Os4wsXB84DRL7fVL' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "qmEUfbkCj3GopoPP", "items": [{"extraSubscriptionDays": 18, "itemId": "AZkjqZHBCXSySb4o", "itemName": "1wenxody0RAzof7S", "quantity": 47}, {"extraSubscriptionDays": 12, "itemId": "xBii660S6Eq5xslw", "itemName": "0WNkXark57sUm4hq", "quantity": 30}, {"extraSubscriptionDays": 74, "itemId": "o3Wwb7LFq1hKszsK", "itemName": "Uj6XZ022PKDHb82d", "quantity": 31}], "maxRedeemCountPerCampaignPerUser": 95, "maxRedeemCountPerCode": 61, "maxRedeemCountPerCodePerUser": 66, "maxSaleCount": 48, "name": "Mwt3moTl8jrnyiEd", "redeemEnd": "1975-10-09T00:00:00Z", "redeemStart": "1984-01-01T00:00:00Z", "redeemType": "ITEM", "status": "INACTIVE", "tags": ["oml91dEXbyCmyFsH", "jcmTb8NibfDqUhww", "imoRjr021ifoR7gb"]}' \
    > test.out 2>&1
eval_tap $? 17 'UpdateCampaign' test.out

#- 18 GetCampaignDynamic
samples/cli/sample-apps Platform getCampaignDynamic \
    --campaignId 'xz37f7A6c8b0kQfG' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'GetCampaignDynamic' test.out

#- 19 GetRootCategories
samples/cli/sample-apps Platform getRootCategories \
    --namespace $AB_NAMESPACE \
    --storeId 'jyimtlwOTCttIhSn' \
    > test.out 2>&1
eval_tap $? 19 'GetRootCategories' test.out

#- 20 CreateCategory
samples/cli/sample-apps Platform createCategory \
    --namespace $AB_NAMESPACE \
    --storeId 'o2DybCssCUeq8927' \
    --body '{"categoryPath": "FBMXddQ8cHt2ct3A", "localizationDisplayNames": {"dA5YxhXnGX4f96Wq": "Yg4zg1awKjJSxncn", "crHhwXndqmooUCJk": "yv4zBlYuJI5ZZBXY", "pVSCMpkAnjrd1ZqV": "CzhTytV0zwxoLWvl"}}' \
    > test.out 2>&1
eval_tap $? 20 'CreateCategory' test.out

#- 21 ListCategoriesBasic
samples/cli/sample-apps Platform listCategoriesBasic \
    --namespace $AB_NAMESPACE \
    --storeId 'YQ8gQyyZTdmCJwdK' \
    > test.out 2>&1
eval_tap $? 21 'ListCategoriesBasic' test.out

#- 22 GetCategory
samples/cli/sample-apps Platform getCategory \
    --categoryPath 'BfEt2VY4j2bKTEus' \
    --namespace $AB_NAMESPACE \
    --storeId 'DWNKgZmCWLYo2TrH' \
    > test.out 2>&1
eval_tap $? 22 'GetCategory' test.out

#- 23 UpdateCategory
samples/cli/sample-apps Platform updateCategory \
    --categoryPath 'BOP2pfji1Brf3gux' \
    --namespace $AB_NAMESPACE \
    --storeId 'Q1OriwiLolXRWcVE' \
    --body '{"localizationDisplayNames": {"Kf7BYSzw7HYFRkfS": "i4vsZxpjSXvWa2R1", "2Mpjnu28pmYzz201": "RWRlc772BRBKNoGy", "4xrmBTaxUD7AOTQ4": "Tf6SvwvDCalOAzCv"}}' \
    > test.out 2>&1
eval_tap $? 23 'UpdateCategory' test.out

#- 24 DeleteCategory
samples/cli/sample-apps Platform deleteCategory \
    --categoryPath '3KuZkAULMqZcNz93' \
    --namespace $AB_NAMESPACE \
    --storeId 'lu50rFihQiEqxbSp' \
    > test.out 2>&1
eval_tap $? 24 'DeleteCategory' test.out

#- 25 GetChildCategories
samples/cli/sample-apps Platform getChildCategories \
    --categoryPath 'W1l3asolf8aGtNzE' \
    --namespace $AB_NAMESPACE \
    --storeId 'BM5QMozRDTdrdUgy' \
    > test.out 2>&1
eval_tap $? 25 'GetChildCategories' test.out

#- 26 GetDescendantCategories
samples/cli/sample-apps Platform getDescendantCategories \
    --categoryPath 'QHcCuUkGtqZFd7PR' \
    --namespace $AB_NAMESPACE \
    --storeId 'zlU9D2I6bNihc3a6' \
    > test.out 2>&1
eval_tap $? 26 'GetDescendantCategories' test.out

#- 27 QueryCodes
samples/cli/sample-apps Platform queryCodes \
    --campaignId 'tyVhocCUgKo7BXR8' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --batchNo '64' \
    --code 'vazUbdhgpLBDqsDN' \
    --limit '2' \
    --offset '17' \
    > test.out 2>&1
eval_tap $? 27 'QueryCodes' test.out

#- 28 CreateCodes
samples/cli/sample-apps Platform createCodes \
    --campaignId 'fBcEnN4EZZpHw3Mb' \
    --namespace $AB_NAMESPACE \
    --body '{"quantity": 28}' \
    > test.out 2>&1
eval_tap $? 28 'CreateCodes' test.out

#- 29 Download
samples/cli/sample-apps Platform download \
    --campaignId 'pPNR4DSDaSMPP5tS' \
    --namespace $AB_NAMESPACE \
    --batchNo '2' \
    > test.out 2>&1
eval_tap $? 29 'Download' test.out

#- 30 BulkDisableCodes
samples/cli/sample-apps Platform bulkDisableCodes \
    --campaignId '56a2y5OxzdqKqmo0' \
    --namespace $AB_NAMESPACE \
    --batchNo '11' \
    > test.out 2>&1
eval_tap $? 30 'BulkDisableCodes' test.out

#- 31 BulkEnableCodes
samples/cli/sample-apps Platform bulkEnableCodes \
    --campaignId '1pVNw9dt4vf0DOOJ' \
    --namespace $AB_NAMESPACE \
    --batchNo '97' \
    > test.out 2>&1
eval_tap $? 31 'BulkEnableCodes' test.out

#- 32 QueryRedeemHistory
samples/cli/sample-apps Platform queryRedeemHistory \
    --campaignId 'g6MAnDg8l7saSO1g' \
    --namespace $AB_NAMESPACE \
    --code 'vmG5YSI2iIu8ggsu' \
    --limit '29' \
    --offset '95' \
    --userId 'hltp7ETiQ4jvQqBe' \
    > test.out 2>&1
eval_tap $? 32 'QueryRedeemHistory' test.out

#- 33 GetCode
samples/cli/sample-apps Platform getCode \
    --code 'BD2rkO9jR2Yc77yr' \
    --namespace $AB_NAMESPACE \
    --redeemable 'false' \
    > test.out 2>&1
eval_tap $? 33 'GetCode' test.out

#- 34 DisableCode
samples/cli/sample-apps Platform disableCode \
    --code 'Sy6UX5T8oZkk8XMU' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 34 'DisableCode' test.out

#- 35 EnableCode
samples/cli/sample-apps Platform enableCode \
    --code 'Cbi8mHTJgWZNN01N' \
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
    --body '{"grpcServerAddress": "mTR5BtiZnKVyOlQZ"}' \
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
    --currencyType 'VIRTUAL' \
    > test.out 2>&1
eval_tap $? 39 'ListCurrencies' test.out

#- 40 CreateCurrency
samples/cli/sample-apps Platform createCurrency \
    --namespace $AB_NAMESPACE \
    --body '{"currencyCode": "jJ7uzZOT0xoWjyvC", "currencySymbol": "0vcX4bddxXZMHmPc", "currencyType": "REAL", "decimals": 48, "localizationDescriptions": {"NdtNHeL5LOf5kSE9": "VXXoulRLvh4YABUU", "9oeRl4GqRtCPt4Y8": "a3acRwEaUYM0ajo0", "hJcX8WEFCxdSvqrW": "AmsB83CBDp4ctzYb"}}' \
    > test.out 2>&1
eval_tap $? 40 'CreateCurrency' test.out

#- 41 UpdateCurrency
samples/cli/sample-apps Platform updateCurrency \
    --currencyCode 'UZWp5qxZOOmTvROi' \
    --namespace $AB_NAMESPACE \
    --body '{"localizationDescriptions": {"1veOGDjPC2dQ4G7I": "wWITiCYguPplTxAR", "2xVzgvEJCjInD2LT": "LWgBJQoZ0q3wKKXd", "pdJZHJZjOkeyH4Ga": "ddDd8A2oQV1MMxkZ"}}' \
    > test.out 2>&1
eval_tap $? 41 'UpdateCurrency' test.out

#- 42 DeleteCurrency
samples/cli/sample-apps Platform deleteCurrency \
    --currencyCode 'jjYXShGUTa4ZkRS2' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 42 'DeleteCurrency' test.out

#- 43 GetCurrencyConfig
samples/cli/sample-apps Platform getCurrencyConfig \
    --currencyCode 'V5K1oG2ducB0aiUW' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 43 'GetCurrencyConfig' test.out

#- 44 GetCurrencySummary
samples/cli/sample-apps Platform getCurrencySummary \
    --currencyCode 'u5MldoUtGEkpJGBA' \
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
    --body '{"data": [{"id": "rZFQmXliOoiCzsFB", "rewards": [{"currency": {"currencyCode": "VQKbBDs3uKApEuvr", "namespace": "Ln8BBKtdaKlDumjc"}, "item": {"itemId": "ZuopdIXGZLOEJWk4", "itemSku": "qEUOm8K5uUFv5d5P", "itemType": "dpmAmQc8mr9hmJ08"}, "quantity": 36, "type": "ITEM"}, {"currency": {"currencyCode": "BKdRExmuUP7085cu", "namespace": "6PaA2SvqgSa6FP5q"}, "item": {"itemId": "lrqHBL27zIJ2CEMH", "itemSku": "JLitIZgVhNyqbdEF", "itemType": "xYb2UVyYi71p39K4"}, "quantity": 19, "type": "ITEM"}, {"currency": {"currencyCode": "QXK7xlPha5sQjVui", "namespace": "JNoKyTVu7MNpBAiR"}, "item": {"itemId": "HhafOAa8IGXqpEsz", "itemSku": "ZI38fa0VHIcKGaNc", "itemType": "1lfjn7Ah1aafvldQ"}, "quantity": 48, "type": "ITEM"}]}, {"id": "7nXoagRhyH3vxLI3", "rewards": [{"currency": {"currencyCode": "jsg3SRZAQ4TjJs5h", "namespace": "s200PVQYTDF5G6oQ"}, "item": {"itemId": "u2NrXDrtP3ZTsWxl", "itemSku": "XhgvZMhCzAVkymwT", "itemType": "HEqachl2d6ob2h1d"}, "quantity": 88, "type": "ITEM"}, {"currency": {"currencyCode": "lS4ft6y2xaKdF8eY", "namespace": "79J3SeGd8IrrBVSa"}, "item": {"itemId": "JcqbGoQuwGlHqULj", "itemSku": "ZuZWq7CedhyxRcvm", "itemType": "nTc4IvowMSPYyYrl"}, "quantity": 22, "type": "CURRENCY"}, {"currency": {"currencyCode": "fGlXp7eOicXbhOfi", "namespace": "5Jg4I3EvIihP6K5D"}, "item": {"itemId": "3R9U8hK6r0bjpgyX", "itemSku": "zBPpx2CEToDhLjSi", "itemType": "mAaFrlPM3zJLzE7B"}, "quantity": 86, "type": "ITEM"}]}, {"id": "Vb6QuO5tt5p90q7g", "rewards": [{"currency": {"currencyCode": "3CjQq3bKEQdhxoTX", "namespace": "rpONXJAXKeuMNCJ4"}, "item": {"itemId": "1LEOrvW6DvxcAbUg", "itemSku": "9le5CK2dr9amRO94", "itemType": "3Iytpi7CtWx9ts98"}, "quantity": 81, "type": "CURRENCY"}, {"currency": {"currencyCode": "YSaZ3RvaDcgeokMt", "namespace": "LsUwdtQ2AJPla976"}, "item": {"itemId": "LZMgy8ZFR5kfpRGN", "itemSku": "fghZank4dKLzFyxW", "itemType": "nZfg7gkLmjDuzapA"}, "quantity": 86, "type": "CURRENCY"}, {"currency": {"currencyCode": "rk0qxlVna43CLry5", "namespace": "1RDrbUwBuQEt1kHe"}, "item": {"itemId": "QFkqbGgwqTX1oLmD", "itemSku": "h70fytU3ROaEB080", "itemType": "thfemJo04taPKCsc"}, "quantity": 97, "type": "CURRENCY"}]}]}' \
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
    --body '{"data": [{"platform": "EPICGAMES", "platformDlcIdMap": {"N6TV2idZX5wElzaO": "WSGJzI8dfrrZC3Af", "7gEWFYk96HunCj0u": "lKbxfchD560En43k", "fQlUVZ5A1QJqS4uD": "3IpWGWB3aZQcx1tb"}}, {"platform": "STEAM", "platformDlcIdMap": {"r4GM3QwMAEIqcVUc": "CIs7GkovtbrcPRRg", "3u927RL3wCc0UGol": "QH9J4TxIRnxMdIFM", "UZFovbOy3ByPhRiw": "YLDWYxStojCBzG9d"}}, {"platform": "PSN", "platformDlcIdMap": {"0Zk0A6zSNpfb4BjO": "XiLYssFNbOvnRuCl", "0SkLPvXmWsppOU9k": "nXycxvHQzUuNde3z", "qFZJoT4xc6E6DqVp": "ExBVEo2LUWR0s5vI"}}]}' \
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
    --activeOnly 'false' \
    --appType 'DEMO' \
    --entitlementClazz 'CODE' \
    --entitlementName 'wE7ccczIipQjx7AT' \
    --itemId '["v89IoLMfdplBMb1Y", "90cdfFOfhlCMku22", "or4L6ZLRLbroYr2I"]' \
    --limit '5' \
    --offset '61' \
    --userId 'S0Aqo9SvlewEgEL9' \
    > test.out 2>&1
eval_tap $? 51 'QueryEntitlements' test.out

#- 52 QueryEntitlements1
samples/cli/sample-apps Platform queryEntitlements1 \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --itemIds '["38FHBBHJfaNE5hbi", "LJO3heAa68UZ8YDy", "v8r90dd9jRIwBnqK"]' \
    --limit '75' \
    --offset '36' \
    > test.out 2>&1
eval_tap $? 52 'QueryEntitlements1' test.out

#- 53 GrantEntitlements
samples/cli/sample-apps Platform grantEntitlements \
    --namespace $AB_NAMESPACE \
    --body '{"entitlementGrantList": [{"endDate": "1988-03-24T00:00:00Z", "grantedCode": "phfzZZPB9jnljxST", "itemId": "zfgzGu148vtjun9o", "itemNamespace": "L5BaghUqJbEiu7K1", "language": "Yf_738", "quantity": 15, "region": "ERoRFhS2K6KXSVpk", "source": "IAP", "startDate": "1971-10-15T00:00:00Z", "storeId": "MiYgH5BQXZFqVK1z"}, {"endDate": "1972-10-25T00:00:00Z", "grantedCode": "DPN9xJCZO3GiqcTs", "itemId": "m9t3KyjQuECKJTmH", "itemNamespace": "iPJEdAAX4dhw1yPU", "language": "DXs_nwzm", "quantity": 63, "region": "dRejxGo8U5TZftgR", "source": "ACHIEVEMENT", "startDate": "1971-04-22T00:00:00Z", "storeId": "XcMAPDJoENlwtAoL"}, {"endDate": "1971-09-25T00:00:00Z", "grantedCode": "nyOa2p8QvsJLY5Xk", "itemId": "ov6S9MTwfzEkw5vq", "itemNamespace": "9iLtmGg52o2Nnhi1", "language": "xymz-086", "quantity": 13, "region": "nGo7lozl7Mso1L0O", "source": "GIFT", "startDate": "1990-10-19T00:00:00Z", "storeId": "6FTYDN5qtr0Ijfjm"}], "userIds": ["XtoyghyzcHsbg4aa", "BRDWNqRrsuMfiurG", "eoi3HVSnXH6VcTfh"]}' \
    > test.out 2>&1
eval_tap $? 53 'GrantEntitlements' test.out

#- 54 RevokeEntitlements
samples/cli/sample-apps Platform revokeEntitlements \
    --namespace $AB_NAMESPACE \
    --body '["FMBVZkuH6Lk0jHhB", "VfiN9QKHcPiA2Dza", "UWtO7YmMiFiUeMeC"]' \
    > test.out 2>&1
eval_tap $? 54 'RevokeEntitlements' test.out

#- 55 GetEntitlement
samples/cli/sample-apps Platform getEntitlement \
    --entitlementId '07MmWwiCCBuRREnK' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 55 'GetEntitlement' test.out

#- 56 QueryFulfillmentHistories
samples/cli/sample-apps Platform queryFulfillmentHistories \
    --namespace $AB_NAMESPACE \
    --limit '74' \
    --offset '23' \
    --status 'FAIL' \
    --userId 'zPcS1644N6VCJF9X' \
    > test.out 2>&1
eval_tap $? 56 'QueryFulfillmentHistories' test.out

#- 57 GetAppleIAPConfig
samples/cli/sample-apps Platform getAppleIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 57 'GetAppleIAPConfig' test.out

#- 58 UpdateAppleIAPConfig
samples/cli/sample-apps Platform updateAppleIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"bundleId": "Ypgh37tfElwBIsqF", "password": "cMow6lQFNQJCqWIt"}' \
    > test.out 2>&1
eval_tap $? 58 'UpdateAppleIAPConfig' test.out

#- 59 DeleteAppleIAPConfig
samples/cli/sample-apps Platform deleteAppleIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 59 'DeleteAppleIAPConfig' test.out

#- 60 GetEpicGamesIAPConfig
samples/cli/sample-apps Platform getEpicGamesIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 60 'GetEpicGamesIAPConfig' test.out

#- 61 UpdateEpicGamesIAPConfig
samples/cli/sample-apps Platform updateEpicGamesIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"sandboxId": "zJo5mccGIlqT2AHn"}' \
    > test.out 2>&1
eval_tap $? 61 'UpdateEpicGamesIAPConfig' test.out

#- 62 DeleteEpicGamesIAPConfig
samples/cli/sample-apps Platform deleteEpicGamesIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 62 'DeleteEpicGamesIAPConfig' test.out

#- 63 GetGoogleIAPConfig
samples/cli/sample-apps Platform getGoogleIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 63 'GetGoogleIAPConfig' test.out

#- 64 UpdateGoogleIAPConfig
samples/cli/sample-apps Platform updateGoogleIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"applicationName": "G9TSQ9cTMxO6Vs3J", "serviceAccountId": "2dOzRqJT4RSEC983"}' \
    > test.out 2>&1
eval_tap $? 64 'UpdateGoogleIAPConfig' test.out

#- 65 DeleteGoogleIAPConfig
samples/cli/sample-apps Platform deleteGoogleIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 65 'DeleteGoogleIAPConfig' test.out

#- 66 UpdateGoogleP12File
samples/cli/sample-apps Platform updateGoogleP12File \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 66 'UpdateGoogleP12File' test.out

#- 67 GetIAPItemConfig
samples/cli/sample-apps Platform getIAPItemConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 67 'GetIAPItemConfig' test.out

#- 68 UpdateIAPItemConfig
samples/cli/sample-apps Platform updateIAPItemConfig \
    --namespace $AB_NAMESPACE \
    --body '{"data": [{"itemIdentity": "SY1t5iOd1kkR5hwm", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"0jQdYE8l0MwK7ssA": "Ko05bx5UrGr8SLsU", "PnipFnKVKsEamR6X": "prVlbk3kQpBqtedU", "VVUodLiqKbOInVl3": "J3ZsMzU8tcruTg4h"}}, {"itemIdentity": "8YSVJhBB8xwcUINb", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"fYi3c8Xr7dbUPLQg": "uMuINRovc4ItU3vt", "Wl6FvWLyayExSV7r": "eJ1oc4mz5ojCeZfB", "SbRHoCqhToglD6UD": "IrEgBUsNipAN9rVb"}}, {"itemIdentity": "0ytvTJAG6vnsKgFp", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"GYixLYPwltACX2NC": "PhTaR4NTgqLTRD1c", "vpsgBrYLHZNLOHa7": "HVMbtX8TmX0oiHte", "T9LKCvmZclSANiKB": "l0348rKd69WFxtf4"}}]}' \
    > test.out 2>&1
eval_tap $? 68 'UpdateIAPItemConfig' test.out

#- 69 DeleteIAPItemConfig
samples/cli/sample-apps Platform deleteIAPItemConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 69 'DeleteIAPItemConfig' test.out

#- 70 GetPlayStationIAPConfig
samples/cli/sample-apps Platform getPlayStationIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 70 'GetPlayStationIAPConfig' test.out

#- 71 UpdatePlaystationIAPConfig
samples/cli/sample-apps Platform updatePlaystationIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"environment": "rHexVEv9ayUifcVK"}' \
    > test.out 2>&1
eval_tap $? 71 'UpdatePlaystationIAPConfig' test.out

#- 72 DeletePlaystationIAPConfig
samples/cli/sample-apps Platform deletePlaystationIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 72 'DeletePlaystationIAPConfig' test.out

#- 73 GetSteamIAPConfig
samples/cli/sample-apps Platform getSteamIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 73 'GetSteamIAPConfig' test.out

#- 74 UpdateSteamIAPConfig
samples/cli/sample-apps Platform updateSteamIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"appId": "4XLFCRARG0nNZCrm", "publisherAuthenticationKey": "GESOdkzoaDjaeq8H"}' \
    > test.out 2>&1
eval_tap $? 74 'UpdateSteamIAPConfig' test.out

#- 75 DeleteSteamIAPConfig
samples/cli/sample-apps Platform deleteSteamIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 75 'DeleteSteamIAPConfig' test.out

#- 76 GetTwitchIAPConfig
samples/cli/sample-apps Platform getTwitchIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 76 'GetTwitchIAPConfig' test.out

#- 77 UpdateTwitchIAPConfig
samples/cli/sample-apps Platform updateTwitchIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"clientId": "PDavtAixTpMYp8OC", "clientSecret": "SgKOr9gBw1QwnkTY", "organizationId": "9Uhs6P1m9BL7WpvE"}' \
    > test.out 2>&1
eval_tap $? 77 'UpdateTwitchIAPConfig' test.out

#- 78 DeleteTwitchIAPConfig
samples/cli/sample-apps Platform deleteTwitchIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 78 'DeleteTwitchIAPConfig' test.out

#- 79 GetXblIAPConfig
samples/cli/sample-apps Platform getXblIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 79 'GetXblIAPConfig' test.out

#- 80 UpdateXblIAPConfig
samples/cli/sample-apps Platform updateXblIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"relyingPartyCert": "cwMq8NQcFXO2T3Cv"}' \
    > test.out 2>&1
eval_tap $? 80 'UpdateXblIAPConfig' test.out

#- 81 DeleteXblAPConfig
samples/cli/sample-apps Platform deleteXblAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 81 'DeleteXblAPConfig' test.out

#- 82 UpdateXblBPCertFile
samples/cli/sample-apps Platform updateXblBPCertFile \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    --password 'NE34PVkY6Fz17vsd' \
    > test.out 2>&1
eval_tap $? 82 'UpdateXblBPCertFile' test.out

#- 83 DownloadInvoiceDetails
samples/cli/sample-apps Platform downloadInvoiceDetails \
    --namespace $AB_NAMESPACE \
    --feature 'XIlPseKBZ4YCAf3M' \
    --itemId 'UllzDEPzmMOnSutk' \
    --itemType 'OPTIONBOX' \
    --endTime 'J8rROH9x41G8ymR2' \
    --startTime 'rzQzwbL8qyAmfeRh' \
    > test.out 2>&1
eval_tap $? 83 'DownloadInvoiceDetails' test.out

#- 84 GenerateInvoiceSummary
samples/cli/sample-apps Platform generateInvoiceSummary \
    --namespace $AB_NAMESPACE \
    --feature 'zJX0H2pA54RR6Q3Z' \
    --itemId 't4D639WShvWDEov5' \
    --itemType 'BUNDLE' \
    --endTime 'ykaO0AhyMYBQHjFt' \
    --startTime 'hGM3uDhefoeQNFIX' \
    > test.out 2>&1
eval_tap $? 84 'GenerateInvoiceSummary' test.out

#- 85 SyncInGameItem
samples/cli/sample-apps Platform syncInGameItem \
    --namespace $AB_NAMESPACE \
    --storeId 'ixIuymErIE53ppxb' \
    --body '{"categoryPath": "HJ9KS0nGFuU6jmNj", "targetItemId": "z5w5IVZ4D9XFI5Wc", "targetNamespace": "nZY0pHSYrIQ7KjQT"}' \
    > test.out 2>&1
eval_tap $? 85 'SyncInGameItem' test.out

#- 86 CreateItem
samples/cli/sample-apps Platform createItem \
    --namespace $AB_NAMESPACE \
    --storeId '9jtpgqixWzqAaJIc' \
    --body '{"appId": "s0eTGATTgx0xRi0f", "appType": "SOFTWARE", "baseAppId": "NeuJDIIm4bzUX2XD", "boothName": "FGnONkmlacNtYnKZ", "categoryPath": "Xa7DddE2bauGE5xp", "clazz": "ArQLeAIn8EjEeHds", "displayOrder": 41, "entitlementType": "CONSUMABLE", "ext": {"PdvGBD0mhvjLboRl": {}, "74Ay8MekCnEO8xek": {}, "6hKowsCsdYLjH7Kc": {}}, "features": ["VhTarrf1ZzJ1joDU", "xNNevPnGwl6B2wjf", "2OntpktTL7F4bP8b"], "images": [{"as": "kwskwxjCK7rhz68e", "caption": "3lZU57jPw4a20ubd", "height": 100, "imageUrl": "eWbVTbatSC1JPokw", "smallImageUrl": "LWHZzZP7g4hPBxs7", "width": 83}, {"as": "fPBnnV2cETmhbE8y", "caption": "lRbErd0GmkrK6gm9", "height": 5, "imageUrl": "3aVWoHe597ybtnGD", "smallImageUrl": "eCCBQNZ4E0KACCrB", "width": 12}, {"as": "54pFfCyHeyiecALJ", "caption": "vdXacoepnUPwnWaK", "height": 53, "imageUrl": "fe8cEWiDS1O9fjou", "smallImageUrl": "CciqGuKUgie8ipHT", "width": 88}], "itemIds": ["mnnPiLTi4a41GHMV", "WGawfn7OmedOLwiO", "SFMV2pqjKHgrbpKq"], "itemQty": {"6dV6UaJcFoTCaoLR": 84, "OGz6LaVo29DWdLSj": 65, "57INIgj34J8xSqP3": 25}, "itemType": "INGAMEITEM", "listable": false, "localizations": {"R29Y10yJPpHS20zZ": {"description": "NbZ0rb9AFG4EUQmZ", "localExt": {"DtAs76Kej3vE6WZ8": {}, "g5IOTgeKamgZCgbG": {}, "kN96XuyAFmoZXmpo": {}}, "longDescription": "eDlmNWAgOVSPRxCM", "title": "uRZ01Aa47oDwHuZK"}, "z0MQj16XhUJToYjc": {"description": "TTIZ2owQ5gpjzk8n", "localExt": {"Z3RpfNRnzFWm6RAK": {}, "AVByZqY13ZyPu1x1": {}, "wOs1yZmTJJIIlkNS": {}}, "longDescription": "voKDK9MNNIj2rJWx", "title": "fTpvTMTK6WCLaZIJ"}, "p931PLyv2Ua83upP": {"description": "1WCuHulTxx7pRWGI", "localExt": {"U5VTgPTkCvBHUEq0": {}, "2DzGp15ms3OrES9W": {}, "0llpHvkvrLTiHJyq": {}}, "longDescription": "tlJdnJFeQvB9v0HG", "title": "vHS1zaFAhocqwjzB"}}, "lootBoxConfig": {"rewardCount": 98, "rewards": [{"lootBoxItems": [{"count": 49, "duration": 75, "endDate": "1995-06-03T00:00:00Z", "itemId": "wpZUgRQc5swAUpfC", "itemSku": "UPlKFmS2Qkc6e7uY", "itemType": "Iur9sSaNSZ8AFyRC"}, {"count": 19, "duration": 0, "endDate": "1987-04-05T00:00:00Z", "itemId": "E3x3bZWOmJaOzGtm", "itemSku": "94hE0wA2hawd692h", "itemType": "6yZpwoiEK53MKuiu"}, {"count": 16, "duration": 36, "endDate": "1988-09-08T00:00:00Z", "itemId": "VYz9CMnHYeviR5or", "itemSku": "2xyb4bKct6aNTT9g", "itemType": "6yk91MlF0gHFVHmz"}], "name": "kawIl6Ojn9xFWs7B", "odds": 0.18031208793662268, "type": "REWARD_GROUP", "weight": 41}, {"lootBoxItems": [{"count": 83, "duration": 47, "endDate": "1997-02-21T00:00:00Z", "itemId": "cna7LYuvDqrcGcs2", "itemSku": "ZwvyzTHsFT9SWZJz", "itemType": "TSrI9zihgcVOMRhZ"}, {"count": 85, "duration": 61, "endDate": "1992-07-17T00:00:00Z", "itemId": "DcqavCm1B4QWFMAe", "itemSku": "1BvomrF4kZmYJfmX", "itemType": "KMujfkzd5DYuRV1z"}, {"count": 52, "duration": 97, "endDate": "1992-02-28T00:00:00Z", "itemId": "43WN350Jb2iSKcTn", "itemSku": "GYNjRw7vlNBFg7Ao", "itemType": "AwIi6koSiDgqQJDS"}], "name": "oa9k7883XErgMIkv", "odds": 0.5239839530855029, "type": "REWARD_GROUP", "weight": 98}, {"lootBoxItems": [{"count": 3, "duration": 57, "endDate": "1982-11-27T00:00:00Z", "itemId": "eZmMrfLQavnmWtkS", "itemSku": "gyIs6H1iBsaFtRS0", "itemType": "b2Gt7c0GxBWKEXIh"}, {"count": 1, "duration": 96, "endDate": "1989-01-24T00:00:00Z", "itemId": "phUPMkQmDiw181wd", "itemSku": "Zs1ZhR0oIdAjEcwd", "itemType": "oACWOOHsi81TlbYe"}, {"count": 59, "duration": 2, "endDate": "1972-05-09T00:00:00Z", "itemId": "0gK8f5dRbdEVECzu", "itemSku": "KnWKDVlRPSc8rvUz", "itemType": "PjKWGQcwz97YZy7F"}], "name": "DjdC8nc4RriG8xFZ", "odds": 0.620851392172492, "type": "REWARD_GROUP", "weight": 19}], "rollFunction": "CUSTOM"}, "maxCount": 58, "maxCountPerUser": 99, "name": "RGHyvHdJJl8xueXq", "optionBoxConfig": {"boxItems": [{"count": 67, "duration": 58, "endDate": "1972-12-08T00:00:00Z", "itemId": "YAUqrEpHOfGAiv1w", "itemSku": "ppDAFVVSv2k3gsDD", "itemType": "U7zN6MBfcaEDaTkS"}, {"count": 7, "duration": 90, "endDate": "1972-03-14T00:00:00Z", "itemId": "UtSrG4TYYLJ0I5UE", "itemSku": "IR8aoRUp1j5ZtBES", "itemType": "bw9YziL9VLqahaot"}, {"count": 49, "duration": 85, "endDate": "1979-02-20T00:00:00Z", "itemId": "pS8cEXcdLohqlRWJ", "itemSku": "PHoyfxlj2xLSmfRp", "itemType": "98Fy8MMvEl1VlHSU"}]}, "purchasable": true, "recurring": {"cycle": "WEEKLY", "fixedFreeDays": 84, "fixedTrialCycles": 94, "graceDays": 54}, "regionData": {"NeOrhtbwXkVIZYzD": [{"currencyCode": "t0e8uj9RVpwcqqvQ", "currencyNamespace": "gVpuqy1JG6xEv9fd", "currencyType": "VIRTUAL", "discountAmount": 96, "discountExpireAt": "1997-05-25T00:00:00Z", "discountPercentage": 77, "discountPurchaseAt": "1980-04-30T00:00:00Z", "expireAt": "1995-10-23T00:00:00Z", "price": 92, "purchaseAt": "1996-07-18T00:00:00Z", "trialPrice": 69}, {"currencyCode": "5EI9nIHt0P3cOlv3", "currencyNamespace": "JEgayufTVRtslfxy", "currencyType": "VIRTUAL", "discountAmount": 53, "discountExpireAt": "1995-05-27T00:00:00Z", "discountPercentage": 73, "discountPurchaseAt": "1994-07-31T00:00:00Z", "expireAt": "1972-08-05T00:00:00Z", "price": 90, "purchaseAt": "1975-11-22T00:00:00Z", "trialPrice": 30}, {"currencyCode": "RaGtYDzT71bIEo30", "currencyNamespace": "bNZSotKCaSI8xXcl", "currencyType": "VIRTUAL", "discountAmount": 28, "discountExpireAt": "1974-08-27T00:00:00Z", "discountPercentage": 50, "discountPurchaseAt": "1971-05-29T00:00:00Z", "expireAt": "1975-07-20T00:00:00Z", "price": 100, "purchaseAt": "1999-06-30T00:00:00Z", "trialPrice": 95}], "cuK7anXrHk23oXMY": [{"currencyCode": "1UxFLKYpdVEm01Zh", "currencyNamespace": "sWP5GKmfzo41fA3L", "currencyType": "REAL", "discountAmount": 81, "discountExpireAt": "1987-01-21T00:00:00Z", "discountPercentage": 1, "discountPurchaseAt": "1978-08-03T00:00:00Z", "expireAt": "1998-03-18T00:00:00Z", "price": 19, "purchaseAt": "1989-06-21T00:00:00Z", "trialPrice": 65}, {"currencyCode": "OTGBBUQCVGfoFFSL", "currencyNamespace": "RdxIVPawqclsVOOq", "currencyType": "VIRTUAL", "discountAmount": 27, "discountExpireAt": "1986-10-16T00:00:00Z", "discountPercentage": 6, "discountPurchaseAt": "1973-05-17T00:00:00Z", "expireAt": "1992-01-31T00:00:00Z", "price": 37, "purchaseAt": "1975-11-06T00:00:00Z", "trialPrice": 26}, {"currencyCode": "pZA6ajtAjERvOg1m", "currencyNamespace": "2Ps65b1wN2XSfSZW", "currencyType": "REAL", "discountAmount": 22, "discountExpireAt": "1986-02-05T00:00:00Z", "discountPercentage": 90, "discountPurchaseAt": "1999-11-10T00:00:00Z", "expireAt": "1998-09-05T00:00:00Z", "price": 36, "purchaseAt": "1972-07-20T00:00:00Z", "trialPrice": 72}], "zOtidO9FphDM7IrI": [{"currencyCode": "9MhrCY7Sz37QgMRx", "currencyNamespace": "Bs0MSczImISKkagg", "currencyType": "REAL", "discountAmount": 62, "discountExpireAt": "1977-05-16T00:00:00Z", "discountPercentage": 7, "discountPurchaseAt": "1990-01-19T00:00:00Z", "expireAt": "1979-07-12T00:00:00Z", "price": 54, "purchaseAt": "1985-01-22T00:00:00Z", "trialPrice": 52}, {"currencyCode": "NPOZLqfGtsySza4x", "currencyNamespace": "3oW27YmgJWOuWSs2", "currencyType": "REAL", "discountAmount": 95, "discountExpireAt": "1984-01-29T00:00:00Z", "discountPercentage": 3, "discountPurchaseAt": "1993-05-27T00:00:00Z", "expireAt": "1996-02-07T00:00:00Z", "price": 95, "purchaseAt": "1995-04-29T00:00:00Z", "trialPrice": 56}, {"currencyCode": "RcbTmhCI4QWCYxfO", "currencyNamespace": "jENvWAAtfp90zjb0", "currencyType": "REAL", "discountAmount": 62, "discountExpireAt": "1996-11-08T00:00:00Z", "discountPercentage": 40, "discountPurchaseAt": "1972-04-23T00:00:00Z", "expireAt": "1979-09-27T00:00:00Z", "price": 84, "purchaseAt": "1987-12-14T00:00:00Z", "trialPrice": 74}]}, "saleConfig": {"currencyCode": "YyucitluwhWcDNv5", "price": 67}, "seasonType": "TIER", "sectionExclusive": false, "sellable": false, "sku": "3OgXfcGMTFkilD89", "stackable": true, "status": "INACTIVE", "tags": ["OJ1cCNEvKOXyxrFO", "gXTZDHJZgJwplc8P", "PjvA0aXbLs6sEWXJ"], "targetCurrencyCode": "revpT7Fwvgt4dPtK", "targetNamespace": "n2MhaR9ig9R9leOR", "thumbnailUrl": "GIdm3x4pVl7ylj6N", "useCount": 29}' \
    > test.out 2>&1
eval_tap $? 86 'CreateItem' test.out

#- 87 GetItemByAppId
samples/cli/sample-apps Platform getItemByAppId \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'nyeUjbqnhARcgZgp' \
    --appId 'LGNw2c5aOAAvp93R' \
    > test.out 2>&1
eval_tap $? 87 'GetItemByAppId' test.out

#- 88 QueryItems
samples/cli/sample-apps Platform queryItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --appType 'GAME' \
    --availableDate 'qVE3MJPRm4ElSDPi' \
    --baseAppId 'CGMeEKekz4sRtoY5' \
    --categoryPath 'KUVs7O3niDyIkGVV' \
    --features 'R5LoitzJxbQgPr5D' \
    --includeSubCategoryItem 'true' \
    --itemType 'INGAMEITEM' \
    --limit '98' \
    --offset '72' \
    --region 'I4O3wI64qA4RJyAJ' \
    --sortBy '["displayOrder", "createdAt", "createdAt:desc"]' \
    --storeId 'aHzyPpTf2rKa3to3' \
    --tags 'ooBfiwLgUT6f8HW8' \
    --targetNamespace 'lMfRRiyu5YVjUhhi' \
    > test.out 2>&1
eval_tap $? 88 'QueryItems' test.out

#- 89 ListBasicItemsByFeatures
samples/cli/sample-apps Platform listBasicItemsByFeatures \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --features '["LEf5N2BCrCG2QFyx", "e35xmgJnybNroGkC", "PnRJg4qE6ZCGaZts"]' \
    > test.out 2>&1
eval_tap $? 89 'ListBasicItemsByFeatures' test.out

#- 90 GetItemBySku
samples/cli/sample-apps Platform getItemBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'lGCBwDpAVnF8f6QD' \
    --sku 'ObdaNCX99l9i8oCG' \
    > test.out 2>&1
eval_tap $? 90 'GetItemBySku' test.out

#- 91 GetLocaleItemBySku
samples/cli/sample-apps Platform getLocaleItemBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --language 'P6ggs60VeBaYxcMH' \
    --populateBundle 'true' \
    --region 'JGKF9UhgdCD9bfRR' \
    --storeId 'EjqdIUC9QtqD4ETh' \
    --sku 'FzMipcCEvZFOFou3' \
    > test.out 2>&1
eval_tap $? 91 'GetLocaleItemBySku' test.out

#- 92 GetItemIdBySku
samples/cli/sample-apps Platform getItemIdBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'uBOqMB9vk9tdp8X2' \
    --sku '9se6UkS6g5RFaJMw' \
    > test.out 2>&1
eval_tap $? 92 'GetItemIdBySku' test.out

#- 93 GetBulkItemIdBySkus
samples/cli/sample-apps Platform getBulkItemIdBySkus \
    --namespace $AB_NAMESPACE \
    --sku '["E7AzgbIVIs9q0PzR", "tRXquaVfSm7yN4lV", "GFggsruyueBtJzq5"]' \
    --storeId 'H7QisV9SCuti5GY8' \
    > test.out 2>&1
eval_tap $? 93 'GetBulkItemIdBySkus' test.out

#- 94 BulkGetLocaleItems
samples/cli/sample-apps Platform bulkGetLocaleItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --language 'YSse5jtDNbDrC3kz' \
    --region '7eeHBmALdsrSBOcY' \
    --storeId 'mW4wqFBmhB4wNqHz' \
    --itemIds 'phgwkdZoyb4OaoBd' \
    > test.out 2>&1
eval_tap $? 94 'BulkGetLocaleItems' test.out

#- 95 GetAvailablePredicateTypes
samples/cli/sample-apps Platform getAvailablePredicateTypes \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 95 'GetAvailablePredicateTypes' test.out

#- 96 ValidateItemPurchaseCondition
samples/cli/sample-apps Platform validateItemPurchaseCondition \
    --namespace $AB_NAMESPACE \
    --userId 'N8HXzLTm7diFQo2E' \
    --body '{"itemIds": ["Fjwn9DYuMxW4UzYP", "41CyrWyGsVrKGkqn", "pfhOpsKsZbZTgtB1"]}' \
    > test.out 2>&1
eval_tap $? 96 'ValidateItemPurchaseCondition' test.out

#- 97 BulkUpdateRegionData
samples/cli/sample-apps Platform bulkUpdateRegionData \
    --namespace $AB_NAMESPACE \
    --storeId 'IgEDf1PA0t9P4Fhz' \
    --body '{"changes": [{"itemIdentities": ["OcPGboZVm2Lo5bpA", "IyzV1cL2x7jgiyc4", "UDmUJa3p8jqZoRXY"], "itemIdentityType": "ITEM_SKU", "regionData": {"bOV9bCezbas1g805": [{"currencyCode": "p3jKnvO1KfU4pbtb", "currencyNamespace": "zBR2hBN18y0U9QVR", "currencyType": "REAL", "discountAmount": 70, "discountExpireAt": "1975-07-15T00:00:00Z", "discountPercentage": 79, "discountPurchaseAt": "1979-09-03T00:00:00Z", "discountedPrice": 96, "expireAt": "1978-06-12T00:00:00Z", "price": 77, "purchaseAt": "1971-06-26T00:00:00Z", "trialPrice": 31}, {"currencyCode": "qkNHG2NjWkgchbFm", "currencyNamespace": "2h1EBxafcaGWlreQ", "currencyType": "REAL", "discountAmount": 73, "discountExpireAt": "1971-04-02T00:00:00Z", "discountPercentage": 32, "discountPurchaseAt": "1972-12-11T00:00:00Z", "discountedPrice": 51, "expireAt": "1999-03-28T00:00:00Z", "price": 54, "purchaseAt": "1998-11-01T00:00:00Z", "trialPrice": 5}, {"currencyCode": "eXjts5Rff7fkA5Uk", "currencyNamespace": "VOAzHompLKgveLy8", "currencyType": "REAL", "discountAmount": 13, "discountExpireAt": "1988-09-17T00:00:00Z", "discountPercentage": 46, "discountPurchaseAt": "1995-11-02T00:00:00Z", "discountedPrice": 82, "expireAt": "1971-02-28T00:00:00Z", "price": 62, "purchaseAt": "1991-07-26T00:00:00Z", "trialPrice": 33}], "v7BEancWCnIXzD3o": [{"currencyCode": "DwsQGlXmLiXT14Nx", "currencyNamespace": "R5I6q2dtQfGz1IMo", "currencyType": "REAL", "discountAmount": 39, "discountExpireAt": "1996-06-27T00:00:00Z", "discountPercentage": 88, "discountPurchaseAt": "1990-11-23T00:00:00Z", "discountedPrice": 65, "expireAt": "1979-03-04T00:00:00Z", "price": 31, "purchaseAt": "1988-10-10T00:00:00Z", "trialPrice": 75}, {"currencyCode": "rBgHj0722aOtQDuO", "currencyNamespace": "3ITiDZTEt8bmzqIE", "currencyType": "REAL", "discountAmount": 48, "discountExpireAt": "1997-12-28T00:00:00Z", "discountPercentage": 9, "discountPurchaseAt": "1985-01-06T00:00:00Z", "discountedPrice": 0, "expireAt": "1973-08-20T00:00:00Z", "price": 11, "purchaseAt": "1995-02-16T00:00:00Z", "trialPrice": 76}, {"currencyCode": "jA3VDKsCR4UBOmha", "currencyNamespace": "a6uM3mV0W6ls2yY8", "currencyType": "VIRTUAL", "discountAmount": 83, "discountExpireAt": "1996-05-06T00:00:00Z", "discountPercentage": 16, "discountPurchaseAt": "1979-09-26T00:00:00Z", "discountedPrice": 39, "expireAt": "1999-12-15T00:00:00Z", "price": 41, "purchaseAt": "1990-06-16T00:00:00Z", "trialPrice": 19}], "4kKcVbqh0lhZVBnb": [{"currencyCode": "P1bTvfpKEYPKEsu7", "currencyNamespace": "qSCJU22kjKsvskKu", "currencyType": "VIRTUAL", "discountAmount": 51, "discountExpireAt": "1974-07-06T00:00:00Z", "discountPercentage": 76, "discountPurchaseAt": "1993-06-20T00:00:00Z", "discountedPrice": 82, "expireAt": "1979-12-13T00:00:00Z", "price": 76, "purchaseAt": "1996-01-26T00:00:00Z", "trialPrice": 75}, {"currencyCode": "KlKqveA4TvRBYQak", "currencyNamespace": "Bk59k4SovoO3uxtv", "currencyType": "REAL", "discountAmount": 83, "discountExpireAt": "1988-11-05T00:00:00Z", "discountPercentage": 50, "discountPurchaseAt": "1986-10-12T00:00:00Z", "discountedPrice": 52, "expireAt": "1993-03-07T00:00:00Z", "price": 15, "purchaseAt": "1979-09-07T00:00:00Z", "trialPrice": 72}, {"currencyCode": "WFk5hcJgjJP0aN4J", "currencyNamespace": "r37mmps56rJUvttl", "currencyType": "VIRTUAL", "discountAmount": 8, "discountExpireAt": "1973-02-15T00:00:00Z", "discountPercentage": 93, "discountPurchaseAt": "1999-01-08T00:00:00Z", "discountedPrice": 42, "expireAt": "1994-08-07T00:00:00Z", "price": 31, "purchaseAt": "1994-10-23T00:00:00Z", "trialPrice": 35}]}}, {"itemIdentities": ["TGuzByCWk2qudgky", "cldmrZLnOMllrdat", "eWPpT0TilStyc5gq"], "itemIdentityType": "ITEM_ID", "regionData": {"coGe57iA3OAiup5A": [{"currencyCode": "uvXPRxbzmgIjhYsi", "currencyNamespace": "EyfZVDxhUgKEZwXF", "currencyType": "REAL", "discountAmount": 1, "discountExpireAt": "1977-07-25T00:00:00Z", "discountPercentage": 42, "discountPurchaseAt": "1993-09-06T00:00:00Z", "discountedPrice": 81, "expireAt": "1977-04-11T00:00:00Z", "price": 94, "purchaseAt": "1980-04-28T00:00:00Z", "trialPrice": 73}, {"currencyCode": "fSkFz2d3NjzQ9RNs", "currencyNamespace": "uqBeHilpjwttlQpi", "currencyType": "VIRTUAL", "discountAmount": 53, "discountExpireAt": "1999-07-04T00:00:00Z", "discountPercentage": 39, "discountPurchaseAt": "1990-09-03T00:00:00Z", "discountedPrice": 66, "expireAt": "1983-11-16T00:00:00Z", "price": 3, "purchaseAt": "1996-12-15T00:00:00Z", "trialPrice": 42}, {"currencyCode": "bOh8HtzCqQomRy0V", "currencyNamespace": "5A0uxgTCs56FGKJ7", "currencyType": "VIRTUAL", "discountAmount": 67, "discountExpireAt": "1990-05-10T00:00:00Z", "discountPercentage": 48, "discountPurchaseAt": "1982-12-16T00:00:00Z", "discountedPrice": 6, "expireAt": "1993-02-14T00:00:00Z", "price": 14, "purchaseAt": "1987-01-31T00:00:00Z", "trialPrice": 40}], "x48rEd7ptzxIC2yu": [{"currencyCode": "oYYtgdt26gFBUWL8", "currencyNamespace": "ko0nVWihTbxX4fYu", "currencyType": "VIRTUAL", "discountAmount": 25, "discountExpireAt": "1980-06-10T00:00:00Z", "discountPercentage": 47, "discountPurchaseAt": "1997-02-06T00:00:00Z", "discountedPrice": 41, "expireAt": "1999-12-07T00:00:00Z", "price": 14, "purchaseAt": "1981-12-02T00:00:00Z", "trialPrice": 77}, {"currencyCode": "RaneEAKqPCWw15YJ", "currencyNamespace": "vz5HutFbdrJFUeVq", "currencyType": "REAL", "discountAmount": 51, "discountExpireAt": "1981-10-17T00:00:00Z", "discountPercentage": 86, "discountPurchaseAt": "1982-10-01T00:00:00Z", "discountedPrice": 73, "expireAt": "1975-10-16T00:00:00Z", "price": 77, "purchaseAt": "1985-07-23T00:00:00Z", "trialPrice": 1}, {"currencyCode": "FboZWbA6Oa9P3AJ2", "currencyNamespace": "7NNpry6NjjwFkA1Z", "currencyType": "VIRTUAL", "discountAmount": 24, "discountExpireAt": "1986-01-30T00:00:00Z", "discountPercentage": 23, "discountPurchaseAt": "1986-03-07T00:00:00Z", "discountedPrice": 56, "expireAt": "1991-08-23T00:00:00Z", "price": 24, "purchaseAt": "1973-06-18T00:00:00Z", "trialPrice": 46}], "MR4qdhVAGNO9xYg6": [{"currencyCode": "l8fofiZkVAteuD1F", "currencyNamespace": "xX44t2scJNmlZT5U", "currencyType": "REAL", "discountAmount": 83, "discountExpireAt": "1971-12-17T00:00:00Z", "discountPercentage": 16, "discountPurchaseAt": "1982-03-21T00:00:00Z", "discountedPrice": 3, "expireAt": "1989-08-25T00:00:00Z", "price": 1, "purchaseAt": "1986-03-07T00:00:00Z", "trialPrice": 78}, {"currencyCode": "pVMhsY3RgIeLaHao", "currencyNamespace": "BVuCsie1fm6uW6Jw", "currencyType": "REAL", "discountAmount": 73, "discountExpireAt": "1994-04-24T00:00:00Z", "discountPercentage": 99, "discountPurchaseAt": "1978-07-05T00:00:00Z", "discountedPrice": 34, "expireAt": "1986-08-28T00:00:00Z", "price": 31, "purchaseAt": "1977-11-09T00:00:00Z", "trialPrice": 72}, {"currencyCode": "NkB3kh8NPFzK6rpj", "currencyNamespace": "aqvaxvNLwDy7GCTW", "currencyType": "VIRTUAL", "discountAmount": 15, "discountExpireAt": "1978-10-13T00:00:00Z", "discountPercentage": 50, "discountPurchaseAt": "1978-03-05T00:00:00Z", "discountedPrice": 74, "expireAt": "1972-10-18T00:00:00Z", "price": 56, "purchaseAt": "1991-03-03T00:00:00Z", "trialPrice": 60}]}}, {"itemIdentities": ["2lkrxN1D5y9ORGr6", "0FCahN5UH1hy5rAF", "0cGKGoL8YDj4rspE"], "itemIdentityType": "ITEM_ID", "regionData": {"gppYyt1JdWKDNKOq": [{"currencyCode": "X688XuafC2xKs9bn", "currencyNamespace": "Jiw92ImvA6NCkpji", "currencyType": "VIRTUAL", "discountAmount": 16, "discountExpireAt": "1990-04-10T00:00:00Z", "discountPercentage": 7, "discountPurchaseAt": "1999-04-07T00:00:00Z", "discountedPrice": 19, "expireAt": "1997-09-10T00:00:00Z", "price": 93, "purchaseAt": "1976-07-14T00:00:00Z", "trialPrice": 5}, {"currencyCode": "GqffR733Q9qxeYBw", "currencyNamespace": "YbdVBsaRKj3uqYJG", "currencyType": "VIRTUAL", "discountAmount": 73, "discountExpireAt": "1977-06-17T00:00:00Z", "discountPercentage": 37, "discountPurchaseAt": "1983-12-18T00:00:00Z", "discountedPrice": 71, "expireAt": "1998-01-31T00:00:00Z", "price": 5, "purchaseAt": "1973-10-16T00:00:00Z", "trialPrice": 56}, {"currencyCode": "3rIVaKRKb4fKVEcW", "currencyNamespace": "LTdTyLaZicXnxCBG", "currencyType": "REAL", "discountAmount": 78, "discountExpireAt": "1990-08-20T00:00:00Z", "discountPercentage": 81, "discountPurchaseAt": "1973-12-04T00:00:00Z", "discountedPrice": 68, "expireAt": "1997-10-15T00:00:00Z", "price": 63, "purchaseAt": "1977-09-19T00:00:00Z", "trialPrice": 95}], "xigFUXJsVfsCcPF1": [{"currencyCode": "mjtBPAmgC3pIcl2D", "currencyNamespace": "duQ9oQuTEnmgS62w", "currencyType": "REAL", "discountAmount": 82, "discountExpireAt": "1995-11-14T00:00:00Z", "discountPercentage": 90, "discountPurchaseAt": "1999-04-07T00:00:00Z", "discountedPrice": 19, "expireAt": "1996-06-03T00:00:00Z", "price": 33, "purchaseAt": "1985-10-02T00:00:00Z", "trialPrice": 34}, {"currencyCode": "Wsym8KmjFrmkRwmN", "currencyNamespace": "bBQt43SHgDeeG7QG", "currencyType": "REAL", "discountAmount": 68, "discountExpireAt": "1986-02-21T00:00:00Z", "discountPercentage": 34, "discountPurchaseAt": "1997-11-04T00:00:00Z", "discountedPrice": 51, "expireAt": "1980-12-01T00:00:00Z", "price": 43, "purchaseAt": "1978-11-11T00:00:00Z", "trialPrice": 41}, {"currencyCode": "b4ov0MH2jys4nZgF", "currencyNamespace": "UB4bGRwkaeGxPrCA", "currencyType": "REAL", "discountAmount": 47, "discountExpireAt": "1999-04-28T00:00:00Z", "discountPercentage": 85, "discountPurchaseAt": "1972-07-30T00:00:00Z", "discountedPrice": 65, "expireAt": "1986-05-30T00:00:00Z", "price": 67, "purchaseAt": "1972-03-26T00:00:00Z", "trialPrice": 32}], "U9Uz90YRw2bmnYy2": [{"currencyCode": "861SXOg1aRE7B4rl", "currencyNamespace": "VMZDfRZxIBes2QuL", "currencyType": "REAL", "discountAmount": 12, "discountExpireAt": "1972-01-14T00:00:00Z", "discountPercentage": 47, "discountPurchaseAt": "1995-06-16T00:00:00Z", "discountedPrice": 0, "expireAt": "1973-03-30T00:00:00Z", "price": 36, "purchaseAt": "1982-08-08T00:00:00Z", "trialPrice": 86}, {"currencyCode": "cokFbwZBgH1zIYSF", "currencyNamespace": "GH4IpHRRk3jmvyO8", "currencyType": "REAL", "discountAmount": 19, "discountExpireAt": "1995-03-16T00:00:00Z", "discountPercentage": 71, "discountPurchaseAt": "1994-09-28T00:00:00Z", "discountedPrice": 12, "expireAt": "1984-07-11T00:00:00Z", "price": 2, "purchaseAt": "1984-01-28T00:00:00Z", "trialPrice": 96}, {"currencyCode": "ajS3INL4cLK42fbv", "currencyNamespace": "eYwThRsqs1HA4q7U", "currencyType": "VIRTUAL", "discountAmount": 22, "discountExpireAt": "1987-05-14T00:00:00Z", "discountPercentage": 78, "discountPurchaseAt": "1989-07-13T00:00:00Z", "discountedPrice": 35, "expireAt": "1997-12-20T00:00:00Z", "price": 16, "purchaseAt": "1995-02-16T00:00:00Z", "trialPrice": 53}]}}]}' \
    > test.out 2>&1
eval_tap $? 97 'BulkUpdateRegionData' test.out

#- 98 SearchItems
samples/cli/sample-apps Platform searchItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --itemType 'SEASON' \
    --limit '94' \
    --offset '14' \
    --sortBy 'TklsEWSPMon1PHzD' \
    --storeId 'jXWw8buNCkAmzVc1' \
    --keyword 'sj1cgjqjsHSoSYqX' \
    --language '8BKcsOlFD83ZuHuA' \
    > test.out 2>&1
eval_tap $? 98 'SearchItems' test.out

#- 99 QueryUncategorizedItems
samples/cli/sample-apps Platform queryUncategorizedItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --limit '4' \
    --offset '79' \
    --sortBy '["updatedAt:asc", "updatedAt:desc", "displayOrder:asc"]' \
    --storeId '0hjsqZZv9l3HPD7F' \
    > test.out 2>&1
eval_tap $? 99 'QueryUncategorizedItems' test.out

#- 100 GetItem
samples/cli/sample-apps Platform getItem \
    --itemId 'HJBtPgSTvu25Kyjc' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'ZPaEIw88JHBjpCj5' \
    > test.out 2>&1
eval_tap $? 100 'GetItem' test.out

#- 101 UpdateItem
samples/cli/sample-apps Platform updateItem \
    --itemId 'UOebsRsiqckBw1g0' \
    --namespace $AB_NAMESPACE \
    --storeId '4mGR9OdwCVZSPK9I' \
    --body '{"appId": "bizKrHryj63rJAkz", "appType": "GAME", "baseAppId": "y7PEBDcHNiSMJICT", "boothName": "9vhCWuUCKyusXeKl", "categoryPath": "4T0BlMpll8phaILt", "clazz": "m7owCgn36JEDqwzv", "displayOrder": 46, "entitlementType": "CONSUMABLE", "ext": {"Yc31qdBRRrNxwBVR": {}, "6QqOo60taicEmW9g": {}, "tQj3Mbcv7TRI8PVQ": {}}, "features": ["foBZ8BNk7ZBykzWR", "rl8WHpix7OctlqXo", "lJmz1ZTbB7L8B8ee"], "images": [{"as": "0EMuv5DrnNwfKWFi", "caption": "Z7VO3xYujUtC8fhs", "height": 87, "imageUrl": "vm3kgAH3p9ABeiRf", "smallImageUrl": "c7MkvtN58ySZkCLb", "width": 37}, {"as": "YtKi43ER9a9mx1IC", "caption": "3G3KaO9HahRra6Fs", "height": 25, "imageUrl": "rsrL78X1l7RDIgBL", "smallImageUrl": "rUQTWn8yOyNGJxc2", "width": 91}, {"as": "U9RrMoDkpvmUiDVQ", "caption": "YKFR6cEdEnvxHkaE", "height": 68, "imageUrl": "LvrPVmBSiF2LnAMM", "smallImageUrl": "Osd36FOUEnhBCrYZ", "width": 80}], "itemIds": ["FD1a20QsPio7KLoc", "M6BMiDXBCieJEvFN", "wDZDIMFm1TdPc1Dm"], "itemQty": {"0pVLsVE2z4xf3xst": 35, "P3tESzpZXXFpSMbM": 2, "EDR7Ni2UDP3MjP7s": 52}, "itemType": "SEASON", "listable": true, "localizations": {"3JSo8Vsf6opWpW76": {"description": "XLa72oBO5OoI49s4", "localExt": {"FUob3mKY6M7TdwQK": {}, "h8nNlYUBBtIBmdhR": {}, "ahfL6nFAZ1LDZIDe": {}}, "longDescription": "efWcxr3szgTxjtii", "title": "J4yiV3e2TfNy346L"}, "dveoALupWWFzdcRU": {"description": "bx9jWeqKdPgFWG34", "localExt": {"3VT47TLQfhZedxWI": {}, "03CzBNscYRrxxjXZ": {}, "BZwXcgkjfq6F7fBy": {}}, "longDescription": "aQCHupKz3xsu0Ylw", "title": "ZMHJwPdRc9vjzhwh"}, "W1pxfoJJKlm5Zyge": {"description": "8CVxEMIekolKYV1T", "localExt": {"dKrm2Z9iq8uhZAU4": {}, "Ow16AFzfnfGNcYWk": {}, "EcHoxInAItDcAjuf": {}}, "longDescription": "ZljqgSkNyeQQxVj9", "title": "AfSfZxf430oItgRJ"}}, "lootBoxConfig": {"rewardCount": 56, "rewards": [{"lootBoxItems": [{"count": 3, "duration": 26, "endDate": "1974-05-22T00:00:00Z", "itemId": "cNkdWNWdKQ4rvcal", "itemSku": "yexjUJWY8B0HmUnn", "itemType": "AxeYKthutDnYNqWF"}, {"count": 7, "duration": 61, "endDate": "1979-08-13T00:00:00Z", "itemId": "i54JJdo4qCGpQE0X", "itemSku": "ZOQ4AeUCTdGFchVU", "itemType": "EpmevKSGVIvIqDau"}, {"count": 78, "duration": 12, "endDate": "1980-05-24T00:00:00Z", "itemId": "dWTyVEcsYBSTAq4K", "itemSku": "20l91OT6Hqwhq8J6", "itemType": "2GKwKjAH92mKVwUU"}], "name": "B8QwYMdmsP2HKKAN", "odds": 0.8283524334289502, "type": "REWARD_GROUP", "weight": 44}, {"lootBoxItems": [{"count": 37, "duration": 98, "endDate": "1991-08-05T00:00:00Z", "itemId": "XCjNs8JnYEnQqcMY", "itemSku": "hj2tqoOblsR9LVXl", "itemType": "dQzt0a77hOaYirQ3"}, {"count": 0, "duration": 79, "endDate": "1993-04-05T00:00:00Z", "itemId": "9TR4jTrb7ibd3oEl", "itemSku": "wwiALQ05R1a4dhzX", "itemType": "tWHPGmn6P0oexrbr"}, {"count": 80, "duration": 79, "endDate": "1987-11-24T00:00:00Z", "itemId": "MCRf0NCkzjLOboid", "itemSku": "gyQHN12I4oeiVzQw", "itemType": "BTgJXF5NkvAInLuD"}], "name": "inNkanSQGLCRoH4g", "odds": 0.5329978492115366, "type": "PROBABILITY_GROUP", "weight": 76}, {"lootBoxItems": [{"count": 31, "duration": 74, "endDate": "1993-12-03T00:00:00Z", "itemId": "bt2mFVTOpVD6twOw", "itemSku": "WHO5s9RKWDsgybnG", "itemType": "bN0YsozmXyRCGNr1"}, {"count": 77, "duration": 16, "endDate": "1996-01-24T00:00:00Z", "itemId": "B8mVke38hV3eEQKF", "itemSku": "Rz6MRR4ID2N4Wrcu", "itemType": "lNDsxGt4UC86d5LW"}, {"count": 9, "duration": 48, "endDate": "1990-02-21T00:00:00Z", "itemId": "t8QxYVn54ZZX0p4W", "itemSku": "LOdbOXfu6KgVJXeC", "itemType": "DzD1JZ2ZpSREquGB"}], "name": "X9xbmmKF7NNo4q4V", "odds": 0.9480882757643945, "type": "REWARD", "weight": 19}], "rollFunction": "CUSTOM"}, "maxCount": 15, "maxCountPerUser": 62, "name": "RUY9lSTeZXO12zzc", "optionBoxConfig": {"boxItems": [{"count": 81, "duration": 72, "endDate": "1979-03-06T00:00:00Z", "itemId": "iU6a98GI19ewyOMK", "itemSku": "oYhwC5oOdAH3t0oh", "itemType": "DZ0vIVb5w8PJ8Uhb"}, {"count": 0, "duration": 18, "endDate": "1999-05-26T00:00:00Z", "itemId": "dvz86SEcSPPlOqAM", "itemSku": "MaijRFU9J5i10F2T", "itemType": "34mUnhwcCajgi9rz"}, {"count": 21, "duration": 6, "endDate": "1986-02-13T00:00:00Z", "itemId": "YXU3H5l1m4ZcxB0z", "itemSku": "VF8ZNA45ImpYgQb6", "itemType": "f18jFEKMzX6fIN6T"}]}, "purchasable": true, "recurring": {"cycle": "WEEKLY", "fixedFreeDays": 35, "fixedTrialCycles": 55, "graceDays": 56}, "regionData": {"Ct1NApGBjDvD4eYs": [{"currencyCode": "ws3UiayCmddlnxAp", "currencyNamespace": "ZM4Y5jzzCZ5lTBVN", "currencyType": "REAL", "discountAmount": 91, "discountExpireAt": "1989-01-07T00:00:00Z", "discountPercentage": 82, "discountPurchaseAt": "1981-03-09T00:00:00Z", "expireAt": "1987-02-18T00:00:00Z", "price": 67, "purchaseAt": "1990-05-26T00:00:00Z", "trialPrice": 94}, {"currencyCode": "cZQ77T4BOBDahKkY", "currencyNamespace": "11FTgIm7s9w1Soo9", "currencyType": "REAL", "discountAmount": 83, "discountExpireAt": "1987-11-01T00:00:00Z", "discountPercentage": 11, "discountPurchaseAt": "1985-04-04T00:00:00Z", "expireAt": "1978-02-08T00:00:00Z", "price": 82, "purchaseAt": "1979-09-14T00:00:00Z", "trialPrice": 89}, {"currencyCode": "yp2KEUlkb8fNbk1Y", "currencyNamespace": "mOkyq0VdTzqePbp7", "currencyType": "REAL", "discountAmount": 48, "discountExpireAt": "1997-09-26T00:00:00Z", "discountPercentage": 78, "discountPurchaseAt": "1980-05-08T00:00:00Z", "expireAt": "1977-07-31T00:00:00Z", "price": 9, "purchaseAt": "1997-08-18T00:00:00Z", "trialPrice": 30}], "LinrDdi2iMoMO9Z3": [{"currencyCode": "CIXF235EzOCmzJL3", "currencyNamespace": "rfs2Iv9WzRWzTTBB", "currencyType": "REAL", "discountAmount": 63, "discountExpireAt": "1991-10-08T00:00:00Z", "discountPercentage": 71, "discountPurchaseAt": "1973-08-14T00:00:00Z", "expireAt": "1985-01-04T00:00:00Z", "price": 23, "purchaseAt": "1977-09-29T00:00:00Z", "trialPrice": 42}, {"currencyCode": "UpXMbMbMLVIyDj1L", "currencyNamespace": "2jWLR5tNJ74sC00E", "currencyType": "REAL", "discountAmount": 65, "discountExpireAt": "1983-10-25T00:00:00Z", "discountPercentage": 13, "discountPurchaseAt": "1978-05-10T00:00:00Z", "expireAt": "1988-11-27T00:00:00Z", "price": 67, "purchaseAt": "1981-03-20T00:00:00Z", "trialPrice": 13}, {"currencyCode": "ZqJQjWTzSLmhrv10", "currencyNamespace": "BoGz8tHqIljzKAZK", "currencyType": "VIRTUAL", "discountAmount": 43, "discountExpireAt": "1994-02-25T00:00:00Z", "discountPercentage": 61, "discountPurchaseAt": "1993-07-28T00:00:00Z", "expireAt": "1984-08-04T00:00:00Z", "price": 10, "purchaseAt": "1985-07-14T00:00:00Z", "trialPrice": 84}], "Z9AhwOSyzpmItUxQ": [{"currencyCode": "11GKcUEirebm7t8e", "currencyNamespace": "gsuKCeor1GsOEHNX", "currencyType": "VIRTUAL", "discountAmount": 29, "discountExpireAt": "1993-08-15T00:00:00Z", "discountPercentage": 74, "discountPurchaseAt": "1994-09-17T00:00:00Z", "expireAt": "1987-10-02T00:00:00Z", "price": 5, "purchaseAt": "1993-12-01T00:00:00Z", "trialPrice": 3}, {"currencyCode": "2xIC2ASbeDeeUzCA", "currencyNamespace": "R4tCpGvF1JkA6qM7", "currencyType": "REAL", "discountAmount": 77, "discountExpireAt": "1975-06-15T00:00:00Z", "discountPercentage": 63, "discountPurchaseAt": "1983-11-28T00:00:00Z", "expireAt": "1994-06-10T00:00:00Z", "price": 85, "purchaseAt": "1971-05-28T00:00:00Z", "trialPrice": 86}, {"currencyCode": "CDLwi6V1E4Wdi89g", "currencyNamespace": "63AuvwBIHaLa9JEm", "currencyType": "REAL", "discountAmount": 57, "discountExpireAt": "1993-08-03T00:00:00Z", "discountPercentage": 3, "discountPurchaseAt": "1979-04-19T00:00:00Z", "expireAt": "1996-02-04T00:00:00Z", "price": 56, "purchaseAt": "1990-03-31T00:00:00Z", "trialPrice": 88}]}, "saleConfig": {"currencyCode": "rpY7aQ25NS6D7uQ0", "price": 93}, "seasonType": "PASS", "sectionExclusive": false, "sellable": false, "sku": "Risbedwpr9a9zQk0", "stackable": true, "status": "INACTIVE", "tags": ["0AMU9r6XaqvV1eTo", "Xzj3ZeqeiQNuotOr", "it04ZpdOeIatzFvw"], "targetCurrencyCode": "IC0mHSwVofFkloIr", "targetNamespace": "7B5K5u1GRUASuizA", "thumbnailUrl": "kFLqXl9Ud02S9gXN", "useCount": 16}' \
    > test.out 2>&1
eval_tap $? 101 'UpdateItem' test.out

#- 102 DeleteItem
samples/cli/sample-apps Platform deleteItem \
    --itemId '0n81iVnGVCWI3553' \
    --namespace $AB_NAMESPACE \
    --force 'true' \
    --storeId 'qmH6duJ0KsayXxhK' \
    > test.out 2>&1
eval_tap $? 102 'DeleteItem' test.out

#- 103 AcquireItem
samples/cli/sample-apps Platform acquireItem \
    --itemId 'nSbT4sTrWQeM67Ua' \
    --namespace $AB_NAMESPACE \
    --body '{"count": 25, "orderNo": "pF9gvFoVrHrWz0y3"}' \
    > test.out 2>&1
eval_tap $? 103 'AcquireItem' test.out

#- 104 GetApp
samples/cli/sample-apps Platform getApp \
    --itemId 'MWkFxm4wfs2RmJLi' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --storeId 'YMQlQSSyoLZ0BhGM' \
    > test.out 2>&1
eval_tap $? 104 'GetApp' test.out

#- 105 UpdateApp
samples/cli/sample-apps Platform updateApp \
    --itemId 'W4GpX13MIX6doLVW' \
    --namespace $AB_NAMESPACE \
    --storeId 'uq63tAPyaWckbqBd' \
    --body '{"carousel": [{"alt": "7FYtmz7rwqugBm2A", "previewUrl": "VfwlPs4KlffWqIdr", "thumbnailUrl": "I2kfsGfD0RZW766K", "type": "video", "url": "EFrERZPzzKRTF6mP", "videoSource": "youtube"}, {"alt": "B8WeNe47iJhAwkD5", "previewUrl": "XuZRE5tk8s5VLI2H", "thumbnailUrl": "0rgoRcdsOWBGoY5P", "type": "video", "url": "wKf02RP42LERw57m", "videoSource": "vimeo"}, {"alt": "SfdHakEbdA5n6pff", "previewUrl": "VR2hDRfpmSdxyjrp", "thumbnailUrl": "SilA9Qv8XMcv9BlG", "type": "image", "url": "atVfFaInPI2GHnKc", "videoSource": "generic"}], "developer": "Wi4r8X6F5X5QbJIh", "forumUrl": "XRR4rM3gralZyFOk", "genres": ["FreeToPlay", "Simulation", "Adventure"], "localizations": {"JR07oLjLzgwj2swW": {"announcement": "gYfblSOWCjk5WL9V", "slogan": "lC4PekDOS8bS8ccG"}, "PVpWHBQtNNUyRXtw": {"announcement": "JlY4RxWwqn1JRQpr", "slogan": "o5A92lJPsAwXIdL5"}, "pygKo6Bubz3xkxI9": {"announcement": "ug975wKA6ZSlD5oI", "slogan": "ScU5jG0061EZrfe5"}}, "platformRequirements": {"KF3eJja3vVVzAbfn": [{"additionals": "cwCMfyhSEWYcHXR9", "directXVersion": "xlta6y6iiONunzNb", "diskSpace": "Y5RIy56kQnJVDVSC", "graphics": "QhgmTfsXbepvGcmX", "label": "AkjpXRxB6mxKB7C6", "osVersion": "fuxvpasFKlSEIXUp", "processor": "VthAEJ5zmraRcfZw", "ram": "ManjqZvJ5WTL59Cd", "soundCard": "zai6szMwA94dJGx2"}, {"additionals": "0AvYzLIpILkzJnmr", "directXVersion": "TBXCWtSglBt7qETy", "diskSpace": "Il4685UDMa18WwoW", "graphics": "8KIrxQzkOcS6DMYq", "label": "QwreQKfIuR7jIZ5C", "osVersion": "lO4Mf8XOzzr93TAv", "processor": "5pKwWIAXB83SCmEM", "ram": "BmAHNT9I0xNAn30d", "soundCard": "7B4Qmmh1MIHs3eUu"}, {"additionals": "L7rsjsJmAPLLagCA", "directXVersion": "Z1GPp2Rzxwm1xKl0", "diskSpace": "s3s3H58IPILmhYVS", "graphics": "cKaOuzbAeEpMoiby", "label": "eoOSja7PezTKAddv", "osVersion": "YghJMRdO6HiTeoZn", "processor": "rHkqusC8noI1Epm3", "ram": "2UQ5CiBCFylMJTzb", "soundCard": "Iz1e3TPIMDJN1Kmi"}], "1uVISp3dYviSHHNh": [{"additionals": "MqHcGVp288k5bvpV", "directXVersion": "08UITWUUG8yhSQTj", "diskSpace": "bf6K6Uql00kHAH7t", "graphics": "mSSFBi2aZCrd1Ixf", "label": "nds7yWCvgIp1xa1s", "osVersion": "cbZLSi6vpoEBUp1V", "processor": "YzabmS30bAU595YS", "ram": "iWvtXnBMEJRfSPYz", "soundCard": "3MLtmVUG2G8cGvbU"}, {"additionals": "8SYs2ad9VicEl0aE", "directXVersion": "d2dkWZwZfKZSFoBx", "diskSpace": "gkCPexa8TwrqF6m6", "graphics": "FlgFhdaePvxcwBiY", "label": "2yfAHXTnNLj604C9", "osVersion": "uytzE5p0Q9UB9tlV", "processor": "kHGDQDPryKDCuUv2", "ram": "IhTPgMTwNXAOoLcT", "soundCard": "MgJvbJjB4XKO9RVM"}, {"additionals": "Td8LqS5Prl0amCDV", "directXVersion": "Y6gw43HTjqElGFYk", "diskSpace": "7PIuQ8fLG9WqhzRf", "graphics": "oJriLqaRYYMzECum", "label": "pypijDbGSZdgi7v4", "osVersion": "LDNZe2d1EVHBRTtM", "processor": "TDCsBhlSduwH6u0W", "ram": "vq1gH1gA8nm61pYm", "soundCard": "36qIUGnOUR1UFR9x"}], "uzvoV1fIBDewIF64": [{"additionals": "ODEBwgw60aeK0pY5", "directXVersion": "FrvacY8nuqchzuax", "diskSpace": "f4VVI94TZhouoCx2", "graphics": "O2k6RgjPWNGupuOO", "label": "UWJIl15pxL6QAM2C", "osVersion": "j7cKvmwKfDdKNfa1", "processor": "jp1hbjDORjYI96q9", "ram": "TnlG7oibykDkLvUu", "soundCard": "fOMgnXg6YqyYFTSk"}, {"additionals": "cIAs6Uby8ZmTrrfh", "directXVersion": "SYIlbEtmE7QInVrp", "diskSpace": "sX0i3LOQAiClGEfp", "graphics": "hm5iwNDGB3gRUXG3", "label": "WbjMSEZC5NYLLmt5", "osVersion": "loddZjXT1Av6XUTa", "processor": "9YPTvjgvsYpPB7oG", "ram": "BZom7CbJvpVFh07C", "soundCard": "zrpkBknNSFiQPPtq"}, {"additionals": "07uf1YZueHQDJjRr", "directXVersion": "57B7RzgggsFCjNgY", "diskSpace": "jV65Zeiym3apmDPB", "graphics": "0VpLcHGy7xOGsN8T", "label": "LUEBnZpxFbnBGl7P", "osVersion": "ZSZD0EyRCq0q94tj", "processor": "EuApqPOsFuSVROKF", "ram": "1JOTjR4C7btEsnI3", "soundCard": "QQEwGbZ8mUsIiLxG"}]}, "platforms": ["Android", "MacOS", "Android"], "players": ["LocalCoop", "Single", "Single"], "primaryGenre": "Simulation", "publisher": "2aaBdcfDAX5SsLaP", "releaseDate": "1981-12-11T00:00:00Z", "websiteUrl": "V0bB26siWBg4YJLw"}' \
    > test.out 2>&1
eval_tap $? 105 'UpdateApp' test.out

#- 106 DisableItem
samples/cli/sample-apps Platform disableItem \
    --itemId 'PCjgrhTssxkPhBEg' \
    --namespace $AB_NAMESPACE \
    --storeId 'syjfLitRcE8Hf2xN' \
    > test.out 2>&1
eval_tap $? 106 'DisableItem' test.out

#- 107 GetItemDynamicData
samples/cli/sample-apps Platform getItemDynamicData \
    --itemId 'qwv8b7Os4RdHu9NV' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 107 'GetItemDynamicData' test.out

#- 108 EnableItem
samples/cli/sample-apps Platform enableItem \
    --itemId 'T4NvQfoLI4DpnOfn' \
    --namespace $AB_NAMESPACE \
    --storeId 'wQ1bTdqgmlFjkLb5' \
    > test.out 2>&1
eval_tap $? 108 'EnableItem' test.out

#- 109 FeatureItem
samples/cli/sample-apps Platform featureItem \
    --feature 'dzQ7OagDN2RhlUxm' \
    --itemId 'xApMtfoqhcYf1ClT' \
    --namespace $AB_NAMESPACE \
    --storeId 'uW1VGgggGyFLLKQ6' \
    > test.out 2>&1
eval_tap $? 109 'FeatureItem' test.out

#- 110 DefeatureItem
samples/cli/sample-apps Platform defeatureItem \
    --feature 'HuCfKiq71jn18VLt' \
    --itemId 'KTsgCVaDAEomOsyW' \
    --namespace $AB_NAMESPACE \
    --storeId 'tFWQ7qantWZDkDes' \
    > test.out 2>&1
eval_tap $? 110 'DefeatureItem' test.out

#- 111 GetLocaleItem
samples/cli/sample-apps Platform getLocaleItem \
    --itemId 'fLJyxExFCCYpGQIG' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --language 'O1AjVjqSZOGKkAEl' \
    --populateBundle 'false' \
    --region 'RdTMZfsSQ1mwbBOj' \
    --storeId 'UhkylFMEPT197BFl' \
    > test.out 2>&1
eval_tap $? 111 'GetLocaleItem' test.out

#- 112 UpdateItemPurchaseCondition
samples/cli/sample-apps Platform updateItemPurchaseCondition \
    --itemId 'LyPMWgF29IUcpbEL' \
    --namespace $AB_NAMESPACE \
    --storeId 'Ucrcr4tWaDxi7ofh' \
    --body '{"purchaseCondition": {"conditionGroups": [{"operator": "and", "predicates": [{"anyOf": 87, "comparison": "isLessThan", "name": "F6R8xeawMb5L7zrr", "predicateType": "EntitlementPredicate", "value": "TuBpjZ5kwEPonSd7", "values": ["aqUAt61sAzqTbDtE", "AHAgR4jCmC3Yrfqp", "pc0HObH19PkPVSmD"]}, {"anyOf": 53, "comparison": "isLessThan", "name": "ZN18aaL5z780deub", "predicateType": "EntitlementPredicate", "value": "jIYwzJnM3BIv0K7T", "values": ["tJlJFGiLgcUY08Ru", "GASUDcAojMwvDYQx", "ThTTdxsLEulltuO7"]}, {"anyOf": 2, "comparison": "is", "name": "MLQZySDAZ2CjBLkn", "predicateType": "SeasonPassPredicate", "value": "ame36r4Kf7R6bEdX", "values": ["48Knfh1MkhQa7oLU", "g6q38nami600fs83", "uTn0Hes8C0pV0FDW"]}]}, {"operator": "and", "predicates": [{"anyOf": 49, "comparison": "isLessThan", "name": "jJXiYGhbIwKJFArU", "predicateType": "EntitlementPredicate", "value": "8qMgl4T4XJuLfRK6", "values": ["SG05L1KVwutqqw07", "9dOR7UVtClYINUOU", "e4E5DeoaV8OPydqg"]}, {"anyOf": 49, "comparison": "isLessThan", "name": "CdgMXgjs80N0OWBW", "predicateType": "EntitlementPredicate", "value": "kg7YFGeqCzG4aQEw", "values": ["WmufakjNJLlkdGd2", "ROceejhm4widDUqi", "pdHsEX0kqFk0Q3Vr"]}, {"anyOf": 48, "comparison": "excludes", "name": "aj7Ivk3goIK19USc", "predicateType": "EntitlementPredicate", "value": "WkG31Bew9KZZYxZs", "values": ["0YiFpYdHbFrY91Y5", "KJSMXonIZzTayzkY", "5Scv4jb7I1n67ezq"]}]}, {"operator": "or", "predicates": [{"anyOf": 58, "comparison": "is", "name": "gBAt62S2Wj0qoBkY", "predicateType": "SeasonTierPredicate", "value": "2b60YyoQccN0BvQh", "values": ["eYkJexUJrFoEhRoB", "wlUyJOqfyg0bkmdW", "FBcOj4nd0YAK8TIr"]}, {"anyOf": 6, "comparison": "isLessThanOrEqual", "name": "BibC2EhrvdRRe52J", "predicateType": "EntitlementPredicate", "value": "7Yyvubt8SmxSolxC", "values": ["CjZHAld5yw6uvKCF", "MJ0z3pP8mH3A5uXR", "4aDFY8gIXVT4ATXe"]}, {"anyOf": 71, "comparison": "isGreaterThan", "name": "vTXdGCb44Xwe9aWr", "predicateType": "SeasonPassPredicate", "value": "m1YLRRQbZ3namRUQ", "values": ["ooUDySkHczPLU45N", "7mtVJM5nCQLKG4RC", "vZBwo3x2YJN79tUC"]}]}]}}' \
    > test.out 2>&1
eval_tap $? 112 'UpdateItemPurchaseCondition' test.out

#- 113 ReturnItem
samples/cli/sample-apps Platform returnItem \
    --itemId 'RuWrydYKKwiYpw1W' \
    --namespace $AB_NAMESPACE \
    --body '{"orderNo": "OLxJVX9UQ7NXW5D2"}' \
    > test.out 2>&1
eval_tap $? 113 'ReturnItem' test.out

#- 114 QueryKeyGroups
samples/cli/sample-apps Platform queryKeyGroups \
    --namespace $AB_NAMESPACE \
    --limit '22' \
    --name '8YjLVUw4xUPmLzZe' \
    --offset '81' \
    --tag 'CqFri1WdtCTnwQ1o' \
    > test.out 2>&1
eval_tap $? 114 'QueryKeyGroups' test.out

#- 115 CreateKeyGroup
samples/cli/sample-apps Platform createKeyGroup \
    --namespace $AB_NAMESPACE \
    --body '{"description": "TRazxrDsgvhMmzRA", "name": "YN5ptPntjZgRPeM3", "status": "INACTIVE", "tags": ["yGSApfNSSg7LmFoN", "B3vckl8m1V4Zo4st", "3HWx4RZ45ttUIT0v"]}' \
    > test.out 2>&1
eval_tap $? 115 'CreateKeyGroup' test.out

#- 116 GetKeyGroupByBoothName
eval_tap 0 116 'GetKeyGroupByBoothName # SKIP deprecated' test.out

#- 117 GetKeyGroup
samples/cli/sample-apps Platform getKeyGroup \
    --keyGroupId 'qzlTVslK9G4dYLhN' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 117 'GetKeyGroup' test.out

#- 118 UpdateKeyGroup
samples/cli/sample-apps Platform updateKeyGroup \
    --keyGroupId 'r8iWtXyl0zPwNLdY' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "424nGQIQCkSjkqRF", "name": "hBpsjiXLAhItPf4X", "status": "ACTIVE", "tags": ["eHQUuPFspD9UY6S1", "a1UWg1FyO9x4Oq04", "iX5aGzthIxWFJ04v"]}' \
    > test.out 2>&1
eval_tap $? 118 'UpdateKeyGroup' test.out

#- 119 GetKeyGroupDynamic
samples/cli/sample-apps Platform getKeyGroupDynamic \
    --keyGroupId 'pLAp6ADxOOYKuYjz' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 119 'GetKeyGroupDynamic' test.out

#- 120 ListKeys
samples/cli/sample-apps Platform listKeys \
    --keyGroupId '5cb8HSYrOqxqa89D' \
    --namespace $AB_NAMESPACE \
    --limit '100' \
    --offset '61' \
    --status 'ACTIVE' \
    > test.out 2>&1
eval_tap $? 120 'ListKeys' test.out

#- 121 UploadKeys
samples/cli/sample-apps Platform uploadKeys \
    --keyGroupId '7a4lEtK3kcMZoeTK' \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 121 'UploadKeys' test.out

#- 122 QueryOrders
samples/cli/sample-apps Platform queryOrders \
    --namespace $AB_NAMESPACE \
    --endTime 'ySlRkx7nyiWxiiYr' \
    --limit '18' \
    --offset '84' \
    --orderNos '["OnePuYxn9u8VoBob", "LaYQTg2GHRRmjS2c", "ZBiXV9mCEHBdZxD8"]' \
    --sortBy '3iH0UXP0K6DpMNno' \
    --startTime 'XqPNkExkpiRUz4eD' \
    --status 'FULFILLED' \
    --withTotal 'false' \
    > test.out 2>&1
eval_tap $? 122 'QueryOrders' test.out

#- 123 GetOrderStatistics
samples/cli/sample-apps Platform getOrderStatistics \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 123 'GetOrderStatistics' test.out

#- 124 GetOrder
samples/cli/sample-apps Platform getOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'cUxIGJ1mJ5x9od3e' \
    > test.out 2>&1
eval_tap $? 124 'GetOrder' test.out

#- 125 RefundOrder
samples/cli/sample-apps Platform refundOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'zcNoVXfP4CM7WbaH' \
    --body '{"description": "jLKTRErBvJMEzBJ6"}' \
    > test.out 2>&1
eval_tap $? 125 'RefundOrder' test.out

#- 126 GetPaymentCallbackConfig
samples/cli/sample-apps Platform getPaymentCallbackConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 126 'GetPaymentCallbackConfig' test.out

#- 127 UpdatePaymentCallbackConfig
samples/cli/sample-apps Platform updatePaymentCallbackConfig \
    --namespace $AB_NAMESPACE \
    --body '{"dryRun": false, "notifyUrl": "rFfT3XUmPHDtb1qU", "privateKey": "sEAMy7BNmmtggrWj"}' \
    > test.out 2>&1
eval_tap $? 127 'UpdatePaymentCallbackConfig' test.out

#- 128 QueryPaymentNotifications
samples/cli/sample-apps Platform queryPaymentNotifications \
    --namespace $AB_NAMESPACE \
    --endDate '9IcoKfLL00vgOCMe' \
    --externalId '9tHeqQg6LbCLlwAy' \
    --limit '31' \
    --notificationSource 'STRIPE' \
    --notificationType 'WHXvj0vhx0oH9mok' \
    --offset '15' \
    --paymentOrderNo 'icbIbUHa3lv6qwZ4' \
    --startDate 'oE5u4vOsLSJpggnU' \
    --status 'IGNORED' \
    > test.out 2>&1
eval_tap $? 128 'QueryPaymentNotifications' test.out

#- 129 QueryPaymentOrders
samples/cli/sample-apps Platform queryPaymentOrders \
    --namespace $AB_NAMESPACE \
    --channel 'EXTERNAL' \
    --extTxId '5xxlSW80QZYGUDnB' \
    --limit '3' \
    --offset '22' \
    --status 'AUTHORISE_FAILED' \
    > test.out 2>&1
eval_tap $? 129 'QueryPaymentOrders' test.out

#- 130 CreatePaymentOrderByDedicated
samples/cli/sample-apps Platform createPaymentOrderByDedicated \
    --namespace $AB_NAMESPACE \
    --body '{"currencyCode": "Rc3Le9Euv3MCLZjw", "currencyNamespace": "ukIjRmvldCEVgY7w", "customParameters": {"5fUxfzgOmkTuAuHq": {}, "1VKwXhDHSjpfdnRD": {}, "ESqa0cCGlBIiyK6z": {}}, "description": "aGFv6owiU60QhIsU", "extOrderNo": "pROVuYBI7eZGQt0n", "extUserId": "jM0QKF1ezgE4MHnJ", "itemType": "INGAMEITEM", "language": "erH-veWj-Hf", "metadata": {"80TeFhr4kPobxjhe": "xwOYGRicyE7RpnIC", "LHKYMwTVMd6zi7iB": "CbkTldcLJJj3vhNG", "evDwSQ0tbYUZ3OeM": "j0tTellhTCNCL7gi"}, "notifyUrl": "YWkh8vzOIWzrVNX2", "omitNotification": false, "platform": "Y8FcKQy97O5odKVs", "price": 99, "recurringPaymentOrderNo": "HShHyO7uPV0TvNRw", "region": "6FqrkXJ27PGvIzj4", "returnUrl": "hPRqUlOZPKAzjyiF", "sandbox": false, "sku": "ucmfXZrEb5F25VsN", "subscriptionId": "Kacve2qdyQDLErdi", "targetNamespace": "HofUC29yWUVtUIly", "targetUserId": "MgggL3kY3ZuqNYrU", "title": "rfOizBHdjKC7SPke"}' \
    > test.out 2>&1
eval_tap $? 130 'CreatePaymentOrderByDedicated' test.out

#- 131 ListExtOrderNoByExtTxId
samples/cli/sample-apps Platform listExtOrderNoByExtTxId \
    --namespace $AB_NAMESPACE \
    --extTxId '2rVOLN0YmjlMYdwu' \
    > test.out 2>&1
eval_tap $? 131 'ListExtOrderNoByExtTxId' test.out

#- 132 GetPaymentOrder
samples/cli/sample-apps Platform getPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'bdM6tmLGoKRO8vfj' \
    > test.out 2>&1
eval_tap $? 132 'GetPaymentOrder' test.out

#- 133 ChargePaymentOrder
samples/cli/sample-apps Platform chargePaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'oFisilZ53rQbq2Hw' \
    --body '{"extTxId": "U5LOhSiXqPJW7DYz", "paymentMethod": "YjoriRUYTvjfp8k0", "paymentProvider": "XSOLLA"}' \
    > test.out 2>&1
eval_tap $? 133 'ChargePaymentOrder' test.out

#- 134 RefundPaymentOrderByDedicated
samples/cli/sample-apps Platform refundPaymentOrderByDedicated \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'ibbIUQjfbnJWFURq' \
    --body '{"description": "LPWxIVvqyQPwTfF7"}' \
    > test.out 2>&1
eval_tap $? 134 'RefundPaymentOrderByDedicated' test.out

#- 135 SimulatePaymentOrderNotification
samples/cli/sample-apps Platform simulatePaymentOrderNotification \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'TTC0CwoVBMeImH1f' \
    --body '{"amount": 81, "currencyCode": "uSHhnBl5gU7DiyN5", "notifyType": "REFUND", "paymentProvider": "WXPAY", "salesTax": 61, "vat": 80}' \
    > test.out 2>&1
eval_tap $? 135 'SimulatePaymentOrderNotification' test.out

#- 136 GetPaymentOrderChargeStatus
samples/cli/sample-apps Platform getPaymentOrderChargeStatus \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'bYvBDyycvfV5UHWW' \
    > test.out 2>&1
eval_tap $? 136 'GetPaymentOrderChargeStatus' test.out

#- 137 GetPlatformWalletConfig
samples/cli/sample-apps Platform getPlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Playstation' \
    > test.out 2>&1
eval_tap $? 137 'GetPlatformWalletConfig' test.out

#- 138 UpdatePlatformWalletConfig
samples/cli/sample-apps Platform updatePlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Playstation' \
    --body '{"allowedBalanceOrigins": ["Playstation", "GooglePlay", "Epic"]}' \
    > test.out 2>&1
eval_tap $? 138 'UpdatePlatformWalletConfig' test.out

#- 139 ResetPlatformWalletConfig
samples/cli/sample-apps Platform resetPlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Other' \
    > test.out 2>&1
eval_tap $? 139 'ResetPlatformWalletConfig' test.out

#- 140 GetRevocationConfig
samples/cli/sample-apps Platform getRevocationConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 140 'GetRevocationConfig' test.out

#- 141 UpdateRevocationConfig
samples/cli/sample-apps Platform updateRevocationConfig \
    --namespace $AB_NAMESPACE \
    --body '{"entitlement": {"consumable": {"enabled": false, "strategy": "REVOKE_OR_REPORT"}, "durable": {"enabled": false, "strategy": "REVOKE_OR_REPORT"}}, "wallet": {"enabled": false, "strategy": "REVOKE_OR_REPORT"}}' \
    > test.out 2>&1
eval_tap $? 141 'UpdateRevocationConfig' test.out

#- 142 DeleteRevocationConfig
samples/cli/sample-apps Platform deleteRevocationConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 142 'DeleteRevocationConfig' test.out

#- 143 QueryRevocationHistories
samples/cli/sample-apps Platform queryRevocationHistories \
    --namespace $AB_NAMESPACE \
    --endTime 't7IcCN3XypW3SRPT' \
    --limit '90' \
    --offset '67' \
    --source 'OTHER' \
    --startTime 'q5y2pDO7dS0tonrU' \
    --status 'FAIL' \
    --transactionId '18nD0z1dY6zdXFgV' \
    --userId '243K9mxYrt15fXww' \
    > test.out 2>&1
eval_tap $? 143 'QueryRevocationHistories' test.out

#- 144 CreateReward
samples/cli/sample-apps Platform createReward \
    --namespace $AB_NAMESPACE \
    --body '{"description": "9uzoRzvLGIPEjLTp", "eventTopic": "U2huohLrdmhk0jyR", "maxAwarded": 90, "maxAwardedPerUser": 65, "namespaceExpression": "tuMwfM3MqyuEwcPY", "rewardCode": "E7EEW63ixIb63igx", "rewardConditions": [{"condition": "SB3qXUPQNmH7OABE", "conditionName": "aMdUVfkcArEbLm3W", "eventName": "fjqRBn6V0HdgBxul", "rewardItems": [{"duration": 72, "endDate": "1972-09-03T00:00:00Z", "itemId": "Nh3RngWhgE70Dato", "quantity": 87}, {"duration": 59, "endDate": "1994-01-05T00:00:00Z", "itemId": "JI10QQE29AjguYbi", "quantity": 11}, {"duration": 20, "endDate": "1987-09-20T00:00:00Z", "itemId": "PBlOPXSHeyQ4n7fh", "quantity": 6}]}, {"condition": "6CJo5hjlQtgdyQOy", "conditionName": "W9ssuJNDeMocmtBQ", "eventName": "As1aRqFxPXJIqsjG", "rewardItems": [{"duration": 43, "endDate": "1998-03-07T00:00:00Z", "itemId": "r7OP5IU6Xsd8UWoh", "quantity": 90}, {"duration": 91, "endDate": "1990-07-07T00:00:00Z", "itemId": "MnH8Rw3ddKUcXby2", "quantity": 54}, {"duration": 4, "endDate": "1976-08-24T00:00:00Z", "itemId": "EsjNaQlBOfT7JepQ", "quantity": 23}]}, {"condition": "2EHMdgzOF22BAuAU", "conditionName": "cH0ToVFHAZdQOBBU", "eventName": "8E9qcBeBwqCe3ZxG", "rewardItems": [{"duration": 94, "endDate": "1975-11-01T00:00:00Z", "itemId": "UWsMLy3Qu9WkUOQW", "quantity": 51}, {"duration": 53, "endDate": "1982-11-12T00:00:00Z", "itemId": "JmQ0ZKglXTIGARZr", "quantity": 47}, {"duration": 34, "endDate": "1975-05-15T00:00:00Z", "itemId": "0CglR8SMdexP46MO", "quantity": 55}]}], "userIdExpression": "AT3eZlgKO0HngVgL"}' \
    > test.out 2>&1
eval_tap $? 144 'CreateReward' test.out

#- 145 QueryRewards
samples/cli/sample-apps Platform queryRewards \
    --namespace $AB_NAMESPACE \
    --eventTopic 'AUk0WU0FfYglbnBK' \
    --limit '85' \
    --offset '32' \
    --sortBy '["namespace:desc", "namespace:asc", "namespace"]' \
    > test.out 2>&1
eval_tap $? 145 'QueryRewards' test.out

#- 146 ExportRewards
samples/cli/sample-apps Platform exportRewards \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 146 'ExportRewards' test.out

#- 147 ImportRewards
samples/cli/sample-apps Platform importRewards \
    --namespace $AB_NAMESPACE \
    --replaceExisting 'false' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 147 'ImportRewards' test.out

#- 148 GetReward
samples/cli/sample-apps Platform getReward \
    --namespace $AB_NAMESPACE \
    --rewardId 'HrZAhzGam5MYTXyZ' \
    > test.out 2>&1
eval_tap $? 148 'GetReward' test.out

#- 149 UpdateReward
samples/cli/sample-apps Platform updateReward \
    --namespace $AB_NAMESPACE \
    --rewardId 'MvusSCBUGYXx8CKS' \
    --body '{"description": "HgG1CTo7G2zNfy5y", "eventTopic": "52l40pBT1yDhYGbH", "maxAwarded": 89, "maxAwardedPerUser": 100, "namespaceExpression": "9kWhxlIct4RY95MW", "rewardCode": "urnIQcLdl8atg6Fy", "rewardConditions": [{"condition": "8ViEZYg8tmW2dc5l", "conditionName": "PcNzsTShpUxV9IMl", "eventName": "gDDkUqcncEHApbFB", "rewardItems": [{"duration": 21, "endDate": "1995-11-30T00:00:00Z", "itemId": "vIes4uNs8iPtp5N6", "quantity": 17}, {"duration": 34, "endDate": "1993-08-04T00:00:00Z", "itemId": "N21jv34LUMJ9uol3", "quantity": 29}, {"duration": 44, "endDate": "1994-05-27T00:00:00Z", "itemId": "PcKQKPpXlyMtz3qK", "quantity": 89}]}, {"condition": "SGuLwnQXeiqzbxy4", "conditionName": "rblgY7tT7voUEgRR", "eventName": "RLYrLjYWTQkvJAig", "rewardItems": [{"duration": 8, "endDate": "1989-03-08T00:00:00Z", "itemId": "GNPvmmospbgh4b3d", "quantity": 36}, {"duration": 32, "endDate": "1995-04-20T00:00:00Z", "itemId": "xOzaPpqgRc5a69cp", "quantity": 76}, {"duration": 48, "endDate": "1973-10-05T00:00:00Z", "itemId": "66HSOPQitwr5FhmU", "quantity": 20}]}, {"condition": "JscwvVgEtexkvVeS", "conditionName": "y6U3sfPvEgk3mrgh", "eventName": "zec3sd5MnddtjXWg", "rewardItems": [{"duration": 9, "endDate": "1977-11-24T00:00:00Z", "itemId": "4PRavnCmReOR7zKs", "quantity": 26}, {"duration": 83, "endDate": "1998-12-11T00:00:00Z", "itemId": "XOSIwKzNGOfQcEfj", "quantity": 88}, {"duration": 89, "endDate": "1984-10-11T00:00:00Z", "itemId": "gBWwIJTWpYVf1Dpt", "quantity": 9}]}], "userIdExpression": "XKbVHXYLWouEh50p"}' \
    > test.out 2>&1
eval_tap $? 149 'UpdateReward' test.out

#- 150 DeleteReward
samples/cli/sample-apps Platform deleteReward \
    --namespace $AB_NAMESPACE \
    --rewardId '3YkVE4PDWjgUCO1r' \
    > test.out 2>&1
eval_tap $? 150 'DeleteReward' test.out

#- 151 CheckEventCondition
samples/cli/sample-apps Platform checkEventCondition \
    --namespace $AB_NAMESPACE \
    --rewardId 'GhdO78MFuBD1ICeC' \
    --body '{"payload": {"KC7R0FqlqePLQnMQ": {}, "7f3ouUO5SE26syZg": {}, "SaManCU2cL8QoPiv": {}}}' \
    > test.out 2>&1
eval_tap $? 151 'CheckEventCondition' test.out

#- 152 DeleteRewardConditionRecord
samples/cli/sample-apps Platform deleteRewardConditionRecord \
    --namespace $AB_NAMESPACE \
    --rewardId 'sYYIQ8pCZ7x8fGqy' \
    --body '{"conditionName": "xyfrDJrMoLPw3Ur2", "userId": "WpcfATxKqlIPyWBl"}' \
    > test.out 2>&1
eval_tap $? 152 'DeleteRewardConditionRecord' test.out

#- 153 QuerySections
samples/cli/sample-apps Platform querySections \
    --namespace $AB_NAMESPACE \
    --end 'FNmkQNcJ96Zxq9XR' \
    --limit '68' \
    --offset '70' \
    --start 'ZoQAK1IvpimlvYT7' \
    --storeId 'BbKTKAOYx9JtktsS' \
    --viewId 'G6bNuWoIzwjsc9JL' \
    > test.out 2>&1
eval_tap $? 153 'QuerySections' test.out

#- 154 CreateSection
samples/cli/sample-apps Platform createSection \
    --namespace $AB_NAMESPACE \
    --storeId 'TLW8SoZDIj3PFyCH' \
    --body '{"active": false, "displayOrder": 97, "endDate": "1994-02-24T00:00:00Z", "ext": {"1ZctbB3t6cD8YAxN": {}, "gepdD129M4JUe3HB": {}, "4q6rHOVQ1AviJuqc": {}}, "fixedPeriodRotationConfig": {"backfillType": "CUSTOM", "duration": 24, "itemCount": 82, "rule": "SEQUENCE"}, "items": [{"id": "xR80nn12dZMTYor1", "sku": "2x0djQOVV1RPpGe7"}, {"id": "WwgZPpyUJ1kSpR1r", "sku": "prOUkt8OWcyRmoyI"}, {"id": "EPZmn8TaJ3LeZTmN", "sku": "XRKQwpOTjXmNpv08"}], "localizations": {"sNNzrRcTkl22OONl": {"description": "L1GBgmoIhVIUBvnB", "localExt": {"g6dMXodlOTNpjcnB": {}, "CCAA8giimZUE4Uyu": {}, "vj9A1BC2JOce91pK": {}}, "longDescription": "eglPmuqHrlL2NQy2", "title": "EO7BVeiCKdV1VT0a"}, "VEN85wXcCwcMrosV": {"description": "eSZxelSmvZP0dexT", "localExt": {"trsiFRWTS1IGDg4u": {}, "dTZKw0IVEd5bwGkF": {}, "PfnHhsMQgcLfbaDg": {}}, "longDescription": "NpBVsaoaxsnGyR3R", "title": "rkVpnsgIq5zG4Gjx"}, "VHkQqE1yvrJfXafT": {"description": "qZ3C35VDJ8qcLwix", "localExt": {"3X7d5JilRvm9GYKh": {}, "YEj1bT420oJpYcwH": {}, "Aqn4oDVTPNqdzQ6t": {}}, "longDescription": "Lfp9LP14UTIn2sqg", "title": "sKk19fVeLcosdIyk"}}, "name": "f29aISn68S1V35ig", "rotationType": "FIXED_PERIOD", "startDate": "1984-07-16T00:00:00Z", "viewId": "O1IZYXiblPCJqPsZ"}' \
    > test.out 2>&1
eval_tap $? 154 'CreateSection' test.out

#- 155 PurgeExpiredSection
samples/cli/sample-apps Platform purgeExpiredSection \
    --namespace $AB_NAMESPACE \
    --storeId 'K9WiiVU0E7nC8Hv6' \
    > test.out 2>&1
eval_tap $? 155 'PurgeExpiredSection' test.out

#- 156 GetSection
samples/cli/sample-apps Platform getSection \
    --namespace $AB_NAMESPACE \
    --sectionId 'hMCxoNuBwXEzpRsI' \
    --storeId 'TdrNd5S3IJUiIMHf' \
    > test.out 2>&1
eval_tap $? 156 'GetSection' test.out

#- 157 UpdateSection
samples/cli/sample-apps Platform updateSection \
    --namespace $AB_NAMESPACE \
    --sectionId 'JucCtoO0DE5UrIXL' \
    --storeId 'R9R1wJRWRixpwbwm' \
    --body '{"active": true, "displayOrder": 66, "endDate": "1986-11-28T00:00:00Z", "ext": {"qqul1kl6YyD53qxn": {}, "qACVNNjuvlKafxcG": {}, "QIBY9qnLM8QTBks7": {}}, "fixedPeriodRotationConfig": {"backfillType": "CUSTOM", "duration": 83, "itemCount": 61, "rule": "SEQUENCE"}, "items": [{"id": "t9tpjXzSqplgyjTo", "sku": "Gvk0HCFa0NhXIOSY"}, {"id": "GDjH7WEfMp6PIDfb", "sku": "9fCtM7gTYrFHBDJb"}, {"id": "CE7MMyszkTSmyDkm", "sku": "7tzJS7zG8agH9bmR"}], "localizations": {"7DTdGKQ2WrCATcKC": {"description": "00nuslC2ZbC6vorw", "localExt": {"YIpRo3zJdofLXin4": {}, "gh5LpqUMVototh7u": {}, "UohVhQB963st85fk": {}}, "longDescription": "YJOnIsTpiezeZ2to", "title": "ytvh7uDhti927Wcy"}, "rYq39CwOUp8HPQuu": {"description": "pVgbtQRwUEHMSsjZ", "localExt": {"h2w2SkwT36CIvR1M": {}, "JC6rojNtEqxjTjxL": {}, "QuQnE4jEj9FQKZNh": {}}, "longDescription": "UH3rVJ7oYduv495o", "title": "1cuxuPiewbPS1GZe"}, "nwU0llnkwLjzU61L": {"description": "18IAaUEQFo5YOUkB", "localExt": {"6o091gzPxKjUNFd9": {}, "p5ECv1bZd9PG4Ca3": {}, "oKCRutmxxsxeeUhN": {}}, "longDescription": "PV4DcvPN1zyZX4Au", "title": "UYFpD8A6l4ISQ0Qk"}}, "name": "3cDRka8kmvqJoFJY", "rotationType": "NONE", "startDate": "1988-03-07T00:00:00Z", "viewId": "IOKknJDcDV1CYf97"}' \
    > test.out 2>&1
eval_tap $? 157 'UpdateSection' test.out

#- 158 DeleteSection
samples/cli/sample-apps Platform deleteSection \
    --namespace $AB_NAMESPACE \
    --sectionId 'cGOnPOjaGoyowCN9' \
    --storeId 'ujEi7iSjLbvkhh0d' \
    > test.out 2>&1
eval_tap $? 158 'DeleteSection' test.out

#- 159 ListStores
samples/cli/sample-apps Platform listStores \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 159 'ListStores' test.out

#- 160 CreateStore
samples/cli/sample-apps Platform createStore \
    --namespace $AB_NAMESPACE \
    --body '{"defaultLanguage": "bZWBvNIv7n58txyl", "defaultRegion": "GGev12tfq0StCnmc", "description": "7tauLp8CAUdXCH2g", "supportedLanguages": ["VvyYv65lMXCCSEVi", "ZaX3XzBw1MNtRXiE", "mtjCWncaS9qr0h1d"], "supportedRegions": ["L40hBHkXU0upIPFV", "XA7eEnKPfaZhijN8", "Fh9E75TYtxT2ccf8"], "title": "SODfjUUR1KzGJ1wl"}' \
    > test.out 2>&1
eval_tap $? 160 'CreateStore' test.out

#- 161 ImportStore
eval_tap 0 161 'ImportStore # SKIP deprecated' test.out

#- 162 GetPublishedStore
samples/cli/sample-apps Platform getPublishedStore \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 162 'GetPublishedStore' test.out

#- 163 DeletePublishedStore
samples/cli/sample-apps Platform deletePublishedStore \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 163 'DeletePublishedStore' test.out

#- 164 GetPublishedStoreBackup
samples/cli/sample-apps Platform getPublishedStoreBackup \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 164 'GetPublishedStoreBackup' test.out

#- 165 RollbackPublishedStore
samples/cli/sample-apps Platform rollbackPublishedStore \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 165 'RollbackPublishedStore' test.out

#- 166 GetStore
samples/cli/sample-apps Platform getStore \
    --namespace $AB_NAMESPACE \
    --storeId 'a5vmyjni4UwarHGP' \
    > test.out 2>&1
eval_tap $? 166 'GetStore' test.out

#- 167 UpdateStore
samples/cli/sample-apps Platform updateStore \
    --namespace $AB_NAMESPACE \
    --storeId 'TjWYdcU2qk1YcRBv' \
    --body '{"defaultLanguage": "Gd31jOiHQYOPuqHi", "defaultRegion": "4NI91ODBtcJHTSiC", "description": "U6L9HjhA7iWMms0d", "supportedLanguages": ["YDUTJhM3ebqJUpi6", "KPNrlZG7e8EutJTp", "almUbAlOpZlGjUlY"], "supportedRegions": ["Q8cBYLAzuDKnkkMy", "7zAEn8PHbXHBTZmU", "eNjwVC771YhrU8vQ"], "title": "zWFMbj4RcAwH9zqI"}' \
    > test.out 2>&1
eval_tap $? 167 'UpdateStore' test.out

#- 168 DeleteStore
samples/cli/sample-apps Platform deleteStore \
    --namespace $AB_NAMESPACE \
    --storeId 'YoFZE7Gvv7917xLf' \
    > test.out 2>&1
eval_tap $? 168 'DeleteStore' test.out

#- 169 QueryChanges
samples/cli/sample-apps Platform queryChanges \
    --namespace $AB_NAMESPACE \
    --storeId '21SlJo2eZFt999st' \
    --action 'DELETE' \
    --itemSku 'vod4JSYR89Y9uzye' \
    --itemType 'SUBSCRIPTION' \
    --limit '56' \
    --offset '31' \
    --selected 'false' \
    --sortBy '["updatedAt", "createdAt", "createdAt:asc"]' \
    --status 'UNPUBLISHED' \
    --type 'SECTION' \
    --updatedAtEnd 'Twe8thNP0UH5fYPx' \
    --updatedAtStart 'VJ30Z1SUZPl9NBQe' \
    > test.out 2>&1
eval_tap $? 169 'QueryChanges' test.out

#- 170 PublishAll
samples/cli/sample-apps Platform publishAll \
    --namespace $AB_NAMESPACE \
    --storeId 'qdO26pUbzZOXeugg' \
    > test.out 2>&1
eval_tap $? 170 'PublishAll' test.out

#- 171 PublishSelected
samples/cli/sample-apps Platform publishSelected \
    --namespace $AB_NAMESPACE \
    --storeId 'XdBRywrgbBVlh0aU' \
    > test.out 2>&1
eval_tap $? 171 'PublishSelected' test.out

#- 172 SelectAllRecords
samples/cli/sample-apps Platform selectAllRecords \
    --namespace $AB_NAMESPACE \
    --storeId 'vfGnF467XIBbWdHj' \
    > test.out 2>&1
eval_tap $? 172 'SelectAllRecords' test.out

#- 173 GetStatistic
samples/cli/sample-apps Platform getStatistic \
    --namespace $AB_NAMESPACE \
    --storeId 'q6VDckje2jpDuRTX' \
    --action 'DELETE' \
    --itemSku 'ICJfFvlIjCW9tPDo' \
    --itemType 'BUNDLE' \
    --type 'VIEW' \
    --updatedAtEnd 'Hb2ERZ1llmJj8VRI' \
    --updatedAtStart 'Oe6jpuQMqYwnIl1u' \
    > test.out 2>&1
eval_tap $? 173 'GetStatistic' test.out

#- 174 UnselectAllRecords
samples/cli/sample-apps Platform unselectAllRecords \
    --namespace $AB_NAMESPACE \
    --storeId '9fy2LfmBUlaJgYO0' \
    > test.out 2>&1
eval_tap $? 174 'UnselectAllRecords' test.out

#- 175 SelectRecord
samples/cli/sample-apps Platform selectRecord \
    --changeId 'KTmJYM1bwgdyVe6t' \
    --namespace $AB_NAMESPACE \
    --storeId 'oOZszyrzhve3dP00' \
    > test.out 2>&1
eval_tap $? 175 'SelectRecord' test.out

#- 176 UnselectRecord
samples/cli/sample-apps Platform unselectRecord \
    --changeId '3NTe9i7xW7L9qC1D' \
    --namespace $AB_NAMESPACE \
    --storeId 'A5UdFjG3D6ldXDq8' \
    > test.out 2>&1
eval_tap $? 176 'UnselectRecord' test.out

#- 177 CloneStore
samples/cli/sample-apps Platform cloneStore \
    --namespace $AB_NAMESPACE \
    --storeId 'nYZWU2dmS0VA7lN2' \
    --targetStoreId 'sKAEQDtkG2wXbZb5' \
    > test.out 2>&1
eval_tap $? 177 'CloneStore' test.out

#- 178 ExportStore
eval_tap 0 178 'ExportStore # SKIP deprecated' test.out

#- 179 QuerySubscriptions
samples/cli/sample-apps Platform querySubscriptions \
    --namespace $AB_NAMESPACE \
    --chargeStatus 'RECURRING_CHARGING' \
    --itemId 'fHYMaGNFRT5oHz0B' \
    --limit '74' \
    --offset '68' \
    --sku '99rqqT1FZff6VTEC' \
    --status 'ACTIVE' \
    --subscribedBy 'PLATFORM' \
    --userId '3bI2GxAR5oqnL9SO' \
    > test.out 2>&1
eval_tap $? 179 'QuerySubscriptions' test.out

#- 180 RecurringChargeSubscription
samples/cli/sample-apps Platform recurringChargeSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'HJASlxor7eiiqcCE' \
    > test.out 2>&1
eval_tap $? 180 'RecurringChargeSubscription' test.out

#- 181 GetTicketDynamic
samples/cli/sample-apps Platform getTicketDynamic \
    --boothName 'K9tuuT7fEQQF0o4j' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 181 'GetTicketDynamic' test.out

#- 182 DecreaseTicketSale
samples/cli/sample-apps Platform decreaseTicketSale \
    --boothName 'RvsgTDHSYuolIluj' \
    --namespace $AB_NAMESPACE \
    --body '{"orderNo": "7ToK21ZtiHAzPn14"}' \
    > test.out 2>&1
eval_tap $? 182 'DecreaseTicketSale' test.out

#- 183 GetTicketBoothID
samples/cli/sample-apps Platform getTicketBoothID \
    --boothName 'qgHyd8yVWny3IXSe' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 183 'GetTicketBoothID' test.out

#- 184 IncreaseTicketSale
samples/cli/sample-apps Platform increaseTicketSale \
    --boothName 'fSd63MeWf86CUek4' \
    --namespace $AB_NAMESPACE \
    --body '{"count": 50, "orderNo": "YDrgyKieH9YGXhgO"}' \
    > test.out 2>&1
eval_tap $? 184 'IncreaseTicketSale' test.out

#- 185 UnlockSteamUserAchievement
samples/cli/sample-apps Platform unlockSteamUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'rToMEKX8NkDr0cQl' \
    --body '{"achievements": [{"id": "RnRBHIun1xTQoIdM", "value": 8}, {"id": "J4YRZSrvdDl7VIJl", "value": 10}, {"id": "yXH9yJXNaCd89Jqc", "value": 56}], "steamUserId": "K84cywMncPLg2EWV"}' \
    > test.out 2>&1
eval_tap $? 185 'UnlockSteamUserAchievement' test.out

#- 186 GetXblUserAchievements
samples/cli/sample-apps Platform getXblUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId 'PbW6jOsLXw7W6ygu' \
    --xboxUserId 'I1VztmypGmDelAJt' \
    > test.out 2>&1
eval_tap $? 186 'GetXblUserAchievements' test.out

#- 187 UpdateXblUserAchievement
samples/cli/sample-apps Platform updateXblUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'ZdjVcBvDBWL4JNaa' \
    --body '{"achievements": [{"id": "aINFhPjCkT88i3KR", "value": 28}, {"id": "DppMZpnZkb02ywSA", "value": 9}, {"id": "LNRfkPxuK7QyxVnj", "value": 4}], "serviceConfigId": "se0BIgp8NCG8PYur", "titleId": "2GAYDwUzLR2eP9A0", "xboxUserId": "JI5tuJUN0jKceq8A"}' \
    > test.out 2>&1
eval_tap $? 187 'UpdateXblUserAchievement' test.out

#- 188 AnonymizeCampaign
samples/cli/sample-apps Platform anonymizeCampaign \
    --namespace $AB_NAMESPACE \
    --userId '4lIgNkbnDo2IIQvN' \
    > test.out 2>&1
eval_tap $? 188 'AnonymizeCampaign' test.out

#- 189 AnonymizeEntitlement
samples/cli/sample-apps Platform anonymizeEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'VkSjjZnmhBxmhYbn' \
    > test.out 2>&1
eval_tap $? 189 'AnonymizeEntitlement' test.out

#- 190 AnonymizeFulfillment
samples/cli/sample-apps Platform anonymizeFulfillment \
    --namespace $AB_NAMESPACE \
    --userId 'CskEGgJlIMm8F12y' \
    > test.out 2>&1
eval_tap $? 190 'AnonymizeFulfillment' test.out

#- 191 AnonymizeIntegration
samples/cli/sample-apps Platform anonymizeIntegration \
    --namespace $AB_NAMESPACE \
    --userId 'fbBu4lhr6D1l7qLP' \
    > test.out 2>&1
eval_tap $? 191 'AnonymizeIntegration' test.out

#- 192 AnonymizeOrder
samples/cli/sample-apps Platform anonymizeOrder \
    --namespace $AB_NAMESPACE \
    --userId 'mL9ejYQD47Uf18e5' \
    > test.out 2>&1
eval_tap $? 192 'AnonymizeOrder' test.out

#- 193 AnonymizePayment
samples/cli/sample-apps Platform anonymizePayment \
    --namespace $AB_NAMESPACE \
    --userId '0YrwGu6fUbrYS8FO' \
    > test.out 2>&1
eval_tap $? 193 'AnonymizePayment' test.out

#- 194 AnonymizeRevocation
samples/cli/sample-apps Platform anonymizeRevocation \
    --namespace $AB_NAMESPACE \
    --userId 'Tvj1mzNb1Hb9iLjF' \
    > test.out 2>&1
eval_tap $? 194 'AnonymizeRevocation' test.out

#- 195 AnonymizeSubscription
samples/cli/sample-apps Platform anonymizeSubscription \
    --namespace $AB_NAMESPACE \
    --userId 'NqXt7KxoB4pIFnbZ' \
    > test.out 2>&1
eval_tap $? 195 'AnonymizeSubscription' test.out

#- 196 AnonymizeWallet
samples/cli/sample-apps Platform anonymizeWallet \
    --namespace $AB_NAMESPACE \
    --userId 'CNREX0CbNiTDzwEM' \
    > test.out 2>&1
eval_tap $? 196 'AnonymizeWallet' test.out

#- 197 GetUserDLCByPlatform
samples/cli/sample-apps Platform getUserDLCByPlatform \
    --namespace $AB_NAMESPACE \
    --userId 'kqhpJsCFfc25fy0z' \
    --type 'STEAM' \
    > test.out 2>&1
eval_tap $? 197 'GetUserDLCByPlatform' test.out

#- 198 GetUserDLC
samples/cli/sample-apps Platform getUserDLC \
    --namespace $AB_NAMESPACE \
    --userId 'ultG5YOPMSAY5PF6' \
    --type 'STEAM' \
    > test.out 2>&1
eval_tap $? 198 'GetUserDLC' test.out

#- 199 QueryUserEntitlements
samples/cli/sample-apps Platform queryUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'FBg11H1k3QGit2K5' \
    --activeOnly 'false' \
    --appType 'SOFTWARE' \
    --entitlementClazz 'ENTITLEMENT' \
    --entitlementName 'UB3GUQH7Ohilrh9N' \
    --features '["H6g8wE6N8ChQi04P", "rBYHU7X4o0o3bfI2", "ZsDplolmNz1q49WZ"]' \
    --itemId '["w4HnZNo3Ts3mu7Gd", "J6Gs9wquXozh2ASj", "cMHz1TnDhulbIfZg"]' \
    --limit '5' \
    --offset '98' \
    > test.out 2>&1
eval_tap $? 199 'QueryUserEntitlements' test.out

#- 200 GrantUserEntitlement
samples/cli/sample-apps Platform grantUserEntitlement \
    --namespace $AB_NAMESPACE \
    --userId '4F6KE77WXzdzEF01' \
    --body '[{"endDate": "1997-06-27T00:00:00Z", "grantedCode": "MWIZPgSExuGEzjdp", "itemId": "HZ5SAUGO32FuZWK0", "itemNamespace": "B66PaBpXE5SI4axv", "language": "ml-wdyW", "quantity": 9, "region": "ZRfg1NCzVoE9qjZW", "source": "PURCHASE", "startDate": "1977-01-31T00:00:00Z", "storeId": "lLCPyzBsI1D8bL95"}, {"endDate": "1983-03-21T00:00:00Z", "grantedCode": "r0b492zKFgVFB4XA", "itemId": "yrCJ2OvHW6OU18L7", "itemNamespace": "xad9eywVl6jX8nql", "language": "xOC_Hign", "quantity": 97, "region": "JEJy51lVAB22PzAm", "source": "GIFT", "startDate": "1999-03-25T00:00:00Z", "storeId": "VD6L7Sk9Y8X5Fzir"}, {"endDate": "1996-03-03T00:00:00Z", "grantedCode": "nIa5G8fXHCtziuRM", "itemId": "uEk7LUndK98eUzEG", "itemNamespace": "80nnhKOyJCMBZySU", "language": "AEY", "quantity": 66, "region": "X62uHkaONdbupDaI", "source": "ACHIEVEMENT", "startDate": "1977-07-21T00:00:00Z", "storeId": "gACN5tSkBPpn1oMc"}]' \
    > test.out 2>&1
eval_tap $? 200 'GrantUserEntitlement' test.out

#- 201 GetUserAppEntitlementByAppId
samples/cli/sample-apps Platform getUserAppEntitlementByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'PoiH2uon6oWWTaT9' \
    --activeOnly 'false' \
    --appId 'Cmp9eaXIF7fbxXQP' \
    > test.out 2>&1
eval_tap $? 201 'GetUserAppEntitlementByAppId' test.out

#- 202 QueryUserEntitlementsByAppType
samples/cli/sample-apps Platform queryUserEntitlementsByAppType \
    --namespace $AB_NAMESPACE \
    --userId 'eAEnMORXjA34FpWw' \
    --activeOnly 'true' \
    --limit '15' \
    --offset '8' \
    --appType 'GAME' \
    > test.out 2>&1
eval_tap $? 202 'QueryUserEntitlementsByAppType' test.out

#- 203 GetUserEntitlementByItemId
samples/cli/sample-apps Platform getUserEntitlementByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'lE6Tx0Fv9Y3XE3YV' \
    --activeOnly 'false' \
    --entitlementClazz 'MEDIA' \
    --itemId 'NGJG1eFSqp4gJdTb' \
    > test.out 2>&1
eval_tap $? 203 'GetUserEntitlementByItemId' test.out

#- 204 GetUserActiveEntitlementsByItemIds
samples/cli/sample-apps Platform getUserActiveEntitlementsByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'KnTMWs51xOCOI203' \
    --ids '["fF8ZCDLWnkygdcix", "6fuIanxrCmFIlI2p", "SAnhe1o0Ph4CuPKh"]' \
    > test.out 2>&1
eval_tap $? 204 'GetUserActiveEntitlementsByItemIds' test.out

#- 205 GetUserEntitlementBySku
samples/cli/sample-apps Platform getUserEntitlementBySku \
    --namespace $AB_NAMESPACE \
    --userId '3jj83siyZvEOp0V5' \
    --activeOnly 'false' \
    --entitlementClazz 'CODE' \
    --sku '3GEbjIxc1KKHbHS9' \
    > test.out 2>&1
eval_tap $? 205 'GetUserEntitlementBySku' test.out

#- 206 ExistsAnyUserActiveEntitlement
samples/cli/sample-apps Platform existsAnyUserActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'whQkePbElor6OFTM' \
    --appIds '["BM6abPZNfHI4gLzM", "eZv3x0TvUjUMy4FR", "Zd0ZXgmSJOE7KEEd"]' \
    --itemIds '["CRRRhJwmgZNOwUMo", "zRa1EHWHcKmF9rz9", "WBUcpRzwUWGLgDmI"]' \
    --skus '["ugUAo9qexSCX3DH3", "JgUeykUwt5bSJcFt", "UQ0mYNZJyzvmeSd7"]' \
    > test.out 2>&1
eval_tap $? 206 'ExistsAnyUserActiveEntitlement' test.out

#- 207 ExistsAnyUserActiveEntitlementByItemIds
samples/cli/sample-apps Platform existsAnyUserActiveEntitlementByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'UGdGaULOV4JxiVif' \
    --itemIds '["XBcscBcTZEQAGbZ3", "HaSLEE0bnvwiXqlY", "57Uzw91RPN4R2LCv"]' \
    > test.out 2>&1
eval_tap $? 207 'ExistsAnyUserActiveEntitlementByItemIds' test.out

#- 208 GetUserAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform getUserAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'sQYf3nekYUknCkKN' \
    --appId 'LawRUQ4u8LW19StJ' \
    > test.out 2>&1
eval_tap $? 208 'GetUserAppEntitlementOwnershipByAppId' test.out

#- 209 GetUserEntitlementOwnershipByItemId
samples/cli/sample-apps Platform getUserEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'VTlVF3imN9WnIGz1' \
    --entitlementClazz 'SUBSCRIPTION' \
    --itemId 'xpTxtl8rlmlD3g8p' \
    > test.out 2>&1
eval_tap $? 209 'GetUserEntitlementOwnershipByItemId' test.out

#- 210 GetUserEntitlementOwnershipByItemIds
samples/cli/sample-apps Platform getUserEntitlementOwnershipByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'HTJJzrxlubKafG4Y' \
    --ids '["x3Nch47arolPcXbF", "YEyYSjWUrXvDC86Z", "BvgUPDxwySnlULfN"]' \
    > test.out 2>&1
eval_tap $? 210 'GetUserEntitlementOwnershipByItemIds' test.out

#- 211 GetUserEntitlementOwnershipBySku
samples/cli/sample-apps Platform getUserEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --userId 'MiBuEFTXWQVd9oKh' \
    --entitlementClazz 'ENTITLEMENT' \
    --sku 'g1ccFGNNEkYuhqhG' \
    > test.out 2>&1
eval_tap $? 211 'GetUserEntitlementOwnershipBySku' test.out

#- 212 RevokeAllEntitlements
samples/cli/sample-apps Platform revokeAllEntitlements \
    --namespace $AB_NAMESPACE \
    --userId '0yOnxtL9XbGViXS7' \
    > test.out 2>&1
eval_tap $? 212 'RevokeAllEntitlements' test.out

#- 213 RevokeUserEntitlements
samples/cli/sample-apps Platform revokeUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'DA4ETIiSzh1CqC0K' \
    --entitlementIds 'kyy2NDobQB5a7ntZ' \
    > test.out 2>&1
eval_tap $? 213 'RevokeUserEntitlements' test.out

#- 214 GetUserEntitlement
samples/cli/sample-apps Platform getUserEntitlement \
    --entitlementId 'nSolNeAPCS8q4KT9' \
    --namespace $AB_NAMESPACE \
    --userId 'iaBXo2BH1oXEMd52' \
    > test.out 2>&1
eval_tap $? 214 'GetUserEntitlement' test.out

#- 215 UpdateUserEntitlement
samples/cli/sample-apps Platform updateUserEntitlement \
    --entitlementId 'zjsaR3L7mY2vQJk7' \
    --namespace $AB_NAMESPACE \
    --userId 'rClDrKX0DE85xfVc' \
    --body '{"endDate": "1996-06-16T00:00:00Z", "nullFieldList": ["JJFOhf28TVlwIkDC", "kRiKfEt1FNMKCzRb", "LQ3og1zfLb6tiUGy"], "startDate": "1972-09-23T00:00:00Z", "status": "CONSUMED", "useCount": 19}' \
    > test.out 2>&1
eval_tap $? 215 'UpdateUserEntitlement' test.out

#- 216 ConsumeUserEntitlement
samples/cli/sample-apps Platform consumeUserEntitlement \
    --entitlementId 'Rhm9SkVNp6m0B4yf' \
    --namespace $AB_NAMESPACE \
    --userId 'G8KJleTUCiPOGBkY' \
    --body '{"options": ["mlucRcO1uISLC7aR", "phtDZO0D9pAKiIU3", "QadMCiK0ldYLCSmj"], "requestId": "DTEsWLRMhR8NRzLh", "useCount": 98}' \
    > test.out 2>&1
eval_tap $? 216 'ConsumeUserEntitlement' test.out

#- 217 DisableUserEntitlement
samples/cli/sample-apps Platform disableUserEntitlement \
    --entitlementId 's6jNVsSJSWmsrlxa' \
    --namespace $AB_NAMESPACE \
    --userId 'lcFiAUZEV6eAYGn7' \
    > test.out 2>&1
eval_tap $? 217 'DisableUserEntitlement' test.out

#- 218 EnableUserEntitlement
samples/cli/sample-apps Platform enableUserEntitlement \
    --entitlementId 'twtQlC2pWXBmhHpu' \
    --namespace $AB_NAMESPACE \
    --userId 'yE5gA0SlETMpjkG9' \
    > test.out 2>&1
eval_tap $? 218 'EnableUserEntitlement' test.out

#- 219 GetUserEntitlementHistories
samples/cli/sample-apps Platform getUserEntitlementHistories \
    --entitlementId 'daXEDvzAnM5ZF6bc' \
    --namespace $AB_NAMESPACE \
    --userId 'JxgisKkEjpSnZSBU' \
    > test.out 2>&1
eval_tap $? 219 'GetUserEntitlementHistories' test.out

#- 220 RevokeUserEntitlement
samples/cli/sample-apps Platform revokeUserEntitlement \
    --entitlementId 'e3rftAepxTcoK4rq' \
    --namespace $AB_NAMESPACE \
    --userId 'I65DZRRq0tzDNTTR' \
    > test.out 2>&1
eval_tap $? 220 'RevokeUserEntitlement' test.out

#- 221 RevokeUseCount
samples/cli/sample-apps Platform revokeUseCount \
    --entitlementId 'mCoIzHuV2FFO0GrU' \
    --namespace $AB_NAMESPACE \
    --userId 'zGTN9jWwIi0PUfyZ' \
    --body '{"reason": "46CKx3bZFgoO5yYc", "useCount": 4}' \
    > test.out 2>&1
eval_tap $? 221 'RevokeUseCount' test.out

#- 222 SellUserEntitlement
samples/cli/sample-apps Platform sellUserEntitlement \
    --entitlementId 'mkMFjpRqyakowVB8' \
    --namespace $AB_NAMESPACE \
    --userId 'w1MuWQoGNXsvdGUv' \
    --body '{"requestId": "YQHwm5YmMiC0IhDY", "useCount": 75}' \
    > test.out 2>&1
eval_tap $? 222 'SellUserEntitlement' test.out

#- 223 FulfillItem
samples/cli/sample-apps Platform fulfillItem \
    --namespace $AB_NAMESPACE \
    --userId '6san2UsKWiGqpeOG' \
    --body '{"duration": 32, "endDate": "1988-10-26T00:00:00Z", "itemId": "myinKKDWfVCURRFV", "itemSku": "yzrztB7CvNeBIECp", "language": "DBZPwv7s0yL5oRLd", "order": {"currency": {"currencyCode": "px79aVo7FKkeOGXE", "currencySymbol": "NlZJNju4mFwBJc77", "currencyType": "VIRTUAL", "decimals": 43, "namespace": "eydacduW9Vyzv4ed"}, "ext": {"U30AhCslcEAlP0ox": {}, "YHlYsizioeowShim": {}, "j9tRiEsFk2Yv9Bmo": {}}, "free": true}, "orderNo": "iE9dBTFliuHId96c", "origin": "GooglePlay", "quantity": 24, "region": "adCM0ieZT48IqJ6U", "source": "ACHIEVEMENT", "startDate": "1977-12-02T00:00:00Z", "storeId": "ZpHqg5uOmY0MoKqz"}' \
    > test.out 2>&1
eval_tap $? 223 'FulfillItem' test.out

#- 224 RedeemCode
samples/cli/sample-apps Platform redeemCode \
    --namespace $AB_NAMESPACE \
    --userId 'U9CiFfaqjJyX1v1x' \
    --body '{"code": "V967MmEPFcvb844E", "language": "JhU", "region": "k7BSOKleXoK7UXNR"}' \
    > test.out 2>&1
eval_tap $? 224 'RedeemCode' test.out

#- 225 FulfillRewards
samples/cli/sample-apps Platform fulfillRewards \
    --namespace $AB_NAMESPACE \
    --userId 'FXHgqfqvI91gWkYh' \
    --body '{"origin": "Steam", "rewards": [{"currency": {"currencyCode": "eMmEe045OmQ8qe8r", "namespace": "lrEReWjiVEO8OpYP"}, "item": {"itemId": "1i9JxmkdgDvRwbPG", "itemSku": "zzXR4yNVg6Xxt1yn", "itemType": "WJskKqW8KHWAhdbY"}, "quantity": 85, "type": "ITEM"}, {"currency": {"currencyCode": "vNlypJj8YPciapMm", "namespace": "6twGUkwa8AIgsdmx"}, "item": {"itemId": "SF3ms9JiwZo9BN6A", "itemSku": "PrQr10GzuNlyui3P", "itemType": "fO4p40IvD59qG8wX"}, "quantity": 82, "type": "ITEM"}, {"currency": {"currencyCode": "wacK1gJFi2XlXvCY", "namespace": "TXy3jzgS7jz171Mu"}, "item": {"itemId": "9JZVZ0YhhNJ4KXPo", "itemSku": "kwSXsKS2RnPR2JcR", "itemType": "1l9uOsaPjLopM3XY"}, "quantity": 39, "type": "ITEM"}], "source": "REWARD"}' \
    > test.out 2>&1
eval_tap $? 225 'FulfillRewards' test.out

#- 226 QueryUserIAPOrders
samples/cli/sample-apps Platform queryUserIAPOrders \
    --namespace $AB_NAMESPACE \
    --userId 'yZ1I2fCmnX5BNMmX' \
    --endTime 'apeqjWxCxU2icHTw' \
    --limit '85' \
    --offset '54' \
    --productId 'VUW1bcosLLaOjPEf' \
    --startTime 'yPcDJP0T63xOmDG2' \
    --status 'VERIFIED' \
    --type 'GOOGLE' \
    > test.out 2>&1
eval_tap $? 226 'QueryUserIAPOrders' test.out

#- 227 QueryAllUserIAPOrders
samples/cli/sample-apps Platform queryAllUserIAPOrders \
    --namespace $AB_NAMESPACE \
    --userId 'C8hnnRzQhSchbtGY' \
    > test.out 2>&1
eval_tap $? 227 'QueryAllUserIAPOrders' test.out

#- 228 QueryUserIAPConsumeHistory
samples/cli/sample-apps Platform queryUserIAPConsumeHistory \
    --namespace $AB_NAMESPACE \
    --userId '0SpTLIuhNMCSraUp' \
    --endTime 'pAk9sBP5EQnFg2oB' \
    --limit '56' \
    --offset '41' \
    --startTime 'u9eKnqHIJsGq219m' \
    --status 'FAIL' \
    --type 'STEAM' \
    > test.out 2>&1
eval_tap $? 228 'QueryUserIAPConsumeHistory' test.out

#- 229 MockFulfillIAPItem
samples/cli/sample-apps Platform mockFulfillIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'B0qini3RO5TiAoS2' \
    --body '{"itemIdentityType": "ITEM_ID", "language": "MO", "productId": "EzXSBzUDkA5Lmreo", "region": "7RAGa4ALjlqsdd6y", "type": "PLAYSTATION"}' \
    > test.out 2>&1
eval_tap $? 229 'MockFulfillIAPItem' test.out

#- 230 QueryUserOrders
samples/cli/sample-apps Platform queryUserOrders \
    --namespace $AB_NAMESPACE \
    --userId 'J7NRKpoB2CKSJh6Z' \
    --itemId 'B0FFLAHnrgsh6KWR' \
    --limit '65' \
    --offset '73' \
    --status 'REFUNDING' \
    > test.out 2>&1
eval_tap $? 230 'QueryUserOrders' test.out

#- 231 AdminCreateUserOrder
samples/cli/sample-apps Platform adminCreateUserOrder \
    --namespace $AB_NAMESPACE \
    --userId 'kaXLF3zZqJCNzKca' \
    --body '{"currencyCode": "2hbu3CCmIfhePNaw", "currencyNamespace": "WE3IGkXO7Z9cG18F", "discountedPrice": 10, "ext": {"FWiKEu4qnHypQvPK": {}, "9tDf1frs3Hnaxnog": {}, "cG8yIemNZQv9pxzs": {}}, "itemId": "qZff8XhGlWz7uiO8", "language": "uR43SWZD72XaoHjJ", "options": {"skipPriceValidation": true}, "platform": "IOS", "price": 17, "quantity": 63, "region": "5FKNyxPC2YZiduSP", "returnUrl": "uWqZFzsCi856XMre", "sandbox": false, "sectionId": "ZZ5EUtDSUVHaTM1f"}' \
    > test.out 2>&1
eval_tap $? 231 'AdminCreateUserOrder' test.out

#- 232 CountOfPurchasedItem
samples/cli/sample-apps Platform countOfPurchasedItem \
    --namespace $AB_NAMESPACE \
    --userId 'eNe7X3fNvuHLfwrm' \
    --itemId 'P4dvGttesbgw5YSI' \
    > test.out 2>&1
eval_tap $? 232 'CountOfPurchasedItem' test.out

#- 233 GetUserOrder
samples/cli/sample-apps Platform getUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'p8vxIouh1WDWIgTJ' \
    --userId 'Thh6a1GxtVgYWv8V' \
    > test.out 2>&1
eval_tap $? 233 'GetUserOrder' test.out

#- 234 UpdateUserOrderStatus
samples/cli/sample-apps Platform updateUserOrderStatus \
    --namespace $AB_NAMESPACE \
    --orderNo 'AXCoMhbeS41z5hrY' \
    --userId 'B9pkKF2c0A1uqOO9' \
    --body '{"status": "CHARGEBACK_REVERSED", "statusReason": "cj12XcSMjPrrLHSw"}' \
    > test.out 2>&1
eval_tap $? 234 'UpdateUserOrderStatus' test.out

#- 235 FulfillUserOrder
samples/cli/sample-apps Platform fulfillUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'w6DB5SlNb47iq1lc' \
    --userId 'nsP9VSRJ4J3U589r' \
    > test.out 2>&1
eval_tap $? 235 'FulfillUserOrder' test.out

#- 236 GetUserOrderGrant
samples/cli/sample-apps Platform getUserOrderGrant \
    --namespace $AB_NAMESPACE \
    --orderNo 'oQkgzEiimlQc0OkT' \
    --userId '7d3VwJCW9PnAHNoW' \
    > test.out 2>&1
eval_tap $? 236 'GetUserOrderGrant' test.out

#- 237 GetUserOrderHistories
samples/cli/sample-apps Platform getUserOrderHistories \
    --namespace $AB_NAMESPACE \
    --orderNo 'mXOFpOytly5vK10X' \
    --userId 'aRhoIa9a2dXWXtpM' \
    > test.out 2>&1
eval_tap $? 237 'GetUserOrderHistories' test.out

#- 238 ProcessUserOrderNotification
samples/cli/sample-apps Platform processUserOrderNotification \
    --namespace $AB_NAMESPACE \
    --orderNo 'r653U6FGz0Di7MCF' \
    --userId 'DJnpOSqQkSef7gPj' \
    --body '{"additionalData": {"cardSummary": "ciZ5k7ccIIQVUK4A"}, "authorisedTime": "1992-04-24T00:00:00Z", "chargebackReversedTime": "1995-02-21T00:00:00Z", "chargebackTime": "1979-01-24T00:00:00Z", "chargedTime": "1971-02-22T00:00:00Z", "createdTime": "1991-04-18T00:00:00Z", "currency": {"currencyCode": "iDzh6h6ywsvIeQgd", "currencySymbol": "hnNqrMwTPAio780Q", "currencyType": "VIRTUAL", "decimals": 54, "namespace": "k2kYoh3v4N6mr0pE"}, "customParameters": {"hHGYASr5TSNnNyQH": {}, "8dHILxBVMNDX2t07": {}, "05b5IbMa8g4U2kPS": {}}, "extOrderNo": "fNT8mcOJRCBoTFUf", "extTxId": "YzlDmOO8SGrmG4p7", "extUserId": "9mFWfGIYZvbCty1b", "issuedAt": "1998-12-14T00:00:00Z", "metadata": {"oT2ZzybNIGnlrBY6": "dxaEedAiXSrQpLzs", "2SVqKoAGFYP5xQsv": "6icxQQqS6SbPXbU6", "1xuAusFkcxO6wVtm": "714D7z8fhI7plJdc"}, "namespace": "yLg65sNPQxBzUzgD", "nonceStr": "xJHDGl7hsjTwuEdf", "paymentMethod": "4P2kXcuAe5FzJybL", "paymentMethodFee": 29, "paymentOrderNo": "e95dPLT5Q2WTUKgk", "paymentProvider": "WALLET", "paymentProviderFee": 46, "paymentStationUrl": "YP3o6UVCh5VQq6w1", "price": 65, "refundedTime": "1985-10-19T00:00:00Z", "salesTax": 35, "sandbox": true, "sku": "KQtcQhgqWGYzSUyS", "status": "REFUNDED", "statusReason": "Ncc3lybgkfCiBNSv", "subscriptionId": "DA7xFQ8vU1h5jEmN", "subtotalPrice": 98, "targetNamespace": "8RXIsXjxOQaskG8h", "targetUserId": "XHuRuD4jJ7outpLH", "tax": 69, "totalPrice": 77, "totalTax": 25, "txEndTime": "1971-04-22T00:00:00Z", "type": "nbZP7Oqs4TOpmVkD", "userId": "AoiXvSYnmwxkjLen", "vat": 56}' \
    > test.out 2>&1
eval_tap $? 238 'ProcessUserOrderNotification' test.out

#- 239 DownloadUserOrderReceipt
samples/cli/sample-apps Platform downloadUserOrderReceipt \
    --namespace $AB_NAMESPACE \
    --orderNo 'xYvhCuE6vLicUhU6' \
    --userId 'XL5RjGNv2rbrHJGq' \
    > test.out 2>&1
eval_tap $? 239 'DownloadUserOrderReceipt' test.out

#- 240 CreateUserPaymentOrder
samples/cli/sample-apps Platform createUserPaymentOrder \
    --namespace $AB_NAMESPACE \
    --userId 'WSE34TgQ8zKdctFm' \
    --body '{"currencyCode": "CSx26UaHvV6jzx5e", "currencyNamespace": "qhRYmST0hJNAohH1", "customParameters": {"QkOXb6EPbc5zWhOR": {}, "80nz12hUfGYKoBBW": {}, "LIcbbAPAndJwswvX": {}}, "description": "ZVfiWbcWSayXlIkV", "extOrderNo": "o8l9mt0AWqPd8oXo", "extUserId": "7uyYLs1s6YNhDe20", "itemType": "MEDIA", "language": "YWzq_mD", "metadata": {"AVNRcWzpla5t2lcb": "aLIq9p4DdsXTnMFf", "r3CZR88cbEUGXv4e": "krGnFwNQ0B3lVKHB", "fsLUfDGSraCeWLW4": "k7BAOisWVgo6oRnN"}, "notifyUrl": "mVx82c1cFZntzUDJ", "omitNotification": true, "platform": "1BZuBEffz2KBnmBT", "price": 11, "recurringPaymentOrderNo": "R1xTqGEGWC7CG7na", "region": "uL9IJKFzFaqGcidS", "returnUrl": "MEGs0I0zaXwOV1RG", "sandbox": false, "sku": "nTpIxbQNJ8pstx6N", "subscriptionId": "u2eoRn8zwZh0g9Z5", "title": "sR7eQCpzQm6ofqJm"}' \
    > test.out 2>&1
eval_tap $? 240 'CreateUserPaymentOrder' test.out

#- 241 RefundUserPaymentOrder
samples/cli/sample-apps Platform refundUserPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'qKkAUa6PTpdxPlWi' \
    --userId 'kbv0jQ2MeQB6Ec6h' \
    --body '{"description": "tpX6a21YvX4qX1aX"}' \
    > test.out 2>&1
eval_tap $? 241 'RefundUserPaymentOrder' test.out

#- 242 ApplyUserRedemption
samples/cli/sample-apps Platform applyUserRedemption \
    --namespace $AB_NAMESPACE \
    --userId 'axZ8BZGGg49Acfdh' \
    --body '{"code": "2GAstNR3tBHTCgzi", "orderNo": "5kcKd388sYMybqlB"}' \
    > test.out 2>&1
eval_tap $? 242 'ApplyUserRedemption' test.out

#- 243 DoRevocation
samples/cli/sample-apps Platform doRevocation \
    --namespace $AB_NAMESPACE \
    --userId 'UrcONWRUZGHcJkF0' \
    --body '{"meta": {"u1DuBihoB61N5gxM": {}, "FkDmmXmg6mvml2Gl": {}, "3YbaSis8HFgyx4iX": {}}, "revokeEntries": [{"currency": {"balanceOrigin": "Twitch", "currencyCode": "goZQ6PiGrYj5UtZ6", "namespace": "FBJ4eJPFqsyrSN78"}, "entitlement": {"entitlementId": "5Shq0C8xfzIOnWDv"}, "item": {"itemIdentity": "CmZUHFFkTzLN9Svl", "itemIdentityType": "ITEM_ID", "origin": "Playstation"}, "quantity": 38, "type": "ENTITLEMENT"}, {"currency": {"balanceOrigin": "Steam", "currencyCode": "wMcBhjk6FGO44eah", "namespace": "T4zfZM01DqJIBIFp"}, "entitlement": {"entitlementId": "FbGvodlhBNOqTrVa"}, "item": {"itemIdentity": "gkP5g9s2kEUg51EY", "itemIdentityType": "ITEM_ID", "origin": "Playstation"}, "quantity": 35, "type": "CURRENCY"}, {"currency": {"balanceOrigin": "Xbox", "currencyCode": "dkIOytXzHjCh9DnA", "namespace": "ZuR4mpJqUKkm4BXX"}, "entitlement": {"entitlementId": "7m2nPxpAaVFvFEDC"}, "item": {"itemIdentity": "UTludYuiv7T9MvXO", "itemIdentityType": "ITEM_ID", "origin": "Epic"}, "quantity": 93, "type": "ENTITLEMENT"}], "source": "ORDER", "transactionId": "XfGgcxGRJxd2tiec"}' \
    > test.out 2>&1
eval_tap $? 243 'DoRevocation' test.out

#- 244 RegisterXblSessions
samples/cli/sample-apps Platform registerXblSessions \
    --namespace $AB_NAMESPACE \
    --userId 'WdORulX8NhwxdKGx' \
    --body '{"gameSessionId": "tJSsgiabBaowzght", "payload": {"5E5irzzERXbaAkCb": {}, "31YKFotdvYOapos0": {}, "gahLbcwl0esgzCVK": {}}, "scid": "GW79DBoFlG0P0soE", "sessionTemplateName": "0Ttpx5ZlSUarHGOi"}' \
    > test.out 2>&1
eval_tap $? 244 'RegisterXblSessions' test.out

#- 245 QueryUserSubscriptions
samples/cli/sample-apps Platform queryUserSubscriptions \
    --namespace $AB_NAMESPACE \
    --userId 'OplJzHQeMfkrclrj' \
    --chargeStatus 'SETUP' \
    --itemId 'nqTHRBUeYWFmGxng' \
    --limit '29' \
    --offset '52' \
    --sku 'qdbvIQ0Y8gA4e44J' \
    --status 'ACTIVE' \
    --subscribedBy 'USER' \
    > test.out 2>&1
eval_tap $? 245 'QueryUserSubscriptions' test.out

#- 246 GetUserSubscriptionActivities
samples/cli/sample-apps Platform getUserSubscriptionActivities \
    --namespace $AB_NAMESPACE \
    --userId 'SgBcTMKc68lFkZ7E' \
    --excludeSystem 'true' \
    --limit '8' \
    --offset '64' \
    --subscriptionId 'C1O31dQOcEGLZPRC' \
    > test.out 2>&1
eval_tap $? 246 'GetUserSubscriptionActivities' test.out

#- 247 PlatformSubscribeSubscription
samples/cli/sample-apps Platform platformSubscribeSubscription \
    --namespace $AB_NAMESPACE \
    --userId '71ChIBEGGiNAXmv2' \
    --body '{"grantDays": 51, "itemId": "J1gYYy5Hn2SXnlIS", "language": "AxPp2QkqrzHyE83H", "reason": "R6vdUNPKjIZHSrJm", "region": "xMfaTFujUsgInckr", "source": "rknpe3unQ452MQWO"}' \
    > test.out 2>&1
eval_tap $? 247 'PlatformSubscribeSubscription' test.out

#- 248 CheckUserSubscriptionSubscribableByItemId
samples/cli/sample-apps Platform checkUserSubscriptionSubscribableByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'KaTgRinhme0lQKJb' \
    --itemId '6N4RieMXdLNw4sz5' \
    > test.out 2>&1
eval_tap $? 248 'CheckUserSubscriptionSubscribableByItemId' test.out

#- 249 GetUserSubscription
samples/cli/sample-apps Platform getUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId '7U6dL8h4V8RiZskU' \
    --userId 'Wg8kqLP1i6GRgINs' \
    > test.out 2>&1
eval_tap $? 249 'GetUserSubscription' test.out

#- 250 DeleteUserSubscription
samples/cli/sample-apps Platform deleteUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId '2PnsZfI4XlMjmOey' \
    --userId 'fXelmbDGD2ajpYsa' \
    > test.out 2>&1
eval_tap $? 250 'DeleteUserSubscription' test.out

#- 251 CancelSubscription
samples/cli/sample-apps Platform cancelSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'h7jcxasMayvFC9NB' \
    --userId 'ute1rlukl08Mv7q6' \
    --force 'true' \
    --body '{"immediate": true, "reason": "bEQAa5NmDRfBeBB3"}' \
    > test.out 2>&1
eval_tap $? 251 'CancelSubscription' test.out

#- 252 GrantDaysToSubscription
samples/cli/sample-apps Platform grantDaysToSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'kmQiNrPmpIowJd6I' \
    --userId 'p4My1dEpdpyDotFd' \
    --body '{"grantDays": 71, "reason": "ykbLV75MbM8ujtoz"}' \
    > test.out 2>&1
eval_tap $? 252 'GrantDaysToSubscription' test.out

#- 253 GetUserSubscriptionBillingHistories
samples/cli/sample-apps Platform getUserSubscriptionBillingHistories \
    --namespace $AB_NAMESPACE \
    --subscriptionId '2XXJoZgqO1Me1Z6S' \
    --userId 'WYGqMeTUFR1p2U45' \
    --excludeFree 'false' \
    --limit '83' \
    --offset '81' \
    > test.out 2>&1
eval_tap $? 253 'GetUserSubscriptionBillingHistories' test.out

#- 254 ProcessUserSubscriptionNotification
samples/cli/sample-apps Platform processUserSubscriptionNotification \
    --namespace $AB_NAMESPACE \
    --subscriptionId '3h4thudexxyCfFZg' \
    --userId 'I1FcJCZba1pxl0db' \
    --body '{"additionalData": {"cardSummary": "MJFFzCmCwXeoajdk"}, "authorisedTime": "1996-03-15T00:00:00Z", "chargebackReversedTime": "1997-03-24T00:00:00Z", "chargebackTime": "1987-09-14T00:00:00Z", "chargedTime": "1984-11-13T00:00:00Z", "createdTime": "1986-07-21T00:00:00Z", "currency": {"currencyCode": "6WeXLBnevAxqDMsj", "currencySymbol": "65KCibpE4HDDdwD9", "currencyType": "VIRTUAL", "decimals": 9, "namespace": "uRehFH0Zr8x6e3PY"}, "customParameters": {"YSSK8IX6MnSHZiBw": {}, "dV1CvV9YSHwlsqfX": {}, "8wPslPfRK5nuLJxX": {}}, "extOrderNo": "TsPJ7fL51y45iqwP", "extTxId": "Evo5OcYahOnqHAI0", "extUserId": "YXhVrZB9UiK4A6hs", "issuedAt": "1977-07-05T00:00:00Z", "metadata": {"6SjFb8PepCAJmxwv": "keIOjW0ptdwzhDjq", "0lAlPNc1IBaeItRt": "iiJuKfqtjh8QcRD0", "Dg6wd4rBhQN4MMMR": "V6MQIA0hOwihgNV8"}, "namespace": "lcrftimTD0o6YCyD", "nonceStr": "4sH3PFKzuadDJGZ9", "paymentMethod": "V18dKDhtVGiQaOgQ", "paymentMethodFee": 86, "paymentOrderNo": "xNngTQrBIIiBUG4A", "paymentProvider": "PAYPAL", "paymentProviderFee": 98, "paymentStationUrl": "dU9mjFLkN3CUcejz", "price": 2, "refundedTime": "1991-10-10T00:00:00Z", "salesTax": 23, "sandbox": true, "sku": "JLJOtXwLROLaOeiM", "status": "CHARGEBACK_REVERSED", "statusReason": "7sAzeZNnNO8YLYME", "subscriptionId": "oOISmNBvL9B7kkDj", "subtotalPrice": 77, "targetNamespace": "cW7EFLQKtJXBeWqq", "targetUserId": "3bksISHys12qkgEe", "tax": 62, "totalPrice": 74, "totalTax": 60, "txEndTime": "1989-09-06T00:00:00Z", "type": "UFYOqI4IaCoEYST1", "userId": "lmMcFaUaQBHLAiws", "vat": 36}' \
    > test.out 2>&1
eval_tap $? 254 'ProcessUserSubscriptionNotification' test.out

#- 255 AcquireUserTicket
samples/cli/sample-apps Platform acquireUserTicket \
    --boothName 'SveMOS5XS6DDmfFP' \
    --namespace $AB_NAMESPACE \
    --userId 'GaWpxecacotTlqTw' \
    --body '{"count": 86, "orderNo": "nxlXmXyifvmsUU2w"}' \
    > test.out 2>&1
eval_tap $? 255 'AcquireUserTicket' test.out

#- 256 QueryUserCurrencyWallets
samples/cli/sample-apps Platform queryUserCurrencyWallets \
    --namespace $AB_NAMESPACE \
    --userId 'sFxe5yBo64wyiVk5' \
    > test.out 2>&1
eval_tap $? 256 'QueryUserCurrencyWallets' test.out

#- 257 DebitUserWalletByCurrencyCode
samples/cli/sample-apps Platform debitUserWalletByCurrencyCode \
    --currencyCode '5JBH8CrDnF9iec5J' \
    --namespace $AB_NAMESPACE \
    --userId 'q1pajTHPPrbY1DFi' \
    --body '{"allowOverdraft": true, "amount": 77, "balanceOrigin": "Playstation", "reason": "yG0ChNUd7EF6Ryjt"}' \
    > test.out 2>&1
eval_tap $? 257 'DebitUserWalletByCurrencyCode' test.out

#- 258 ListUserCurrencyTransactions
samples/cli/sample-apps Platform listUserCurrencyTransactions \
    --currencyCode 'hFNAQ6gFAqmsfoRH' \
    --namespace $AB_NAMESPACE \
    --userId 'hTucApwar0Ez2uZW' \
    --limit '31' \
    --offset '97' \
    > test.out 2>&1
eval_tap $? 258 'ListUserCurrencyTransactions' test.out

#- 259 CheckWallet
eval_tap 0 259 'CheckWallet # SKIP deprecated' test.out

#- 260 CreditUserWallet
samples/cli/sample-apps Platform creditUserWallet \
    --currencyCode 'ydWF3NPtv3qjclzI' \
    --namespace $AB_NAMESPACE \
    --userId '4SyMrz2x1Z4e6OGm' \
    --body '{"amount": 54, "expireAt": "1972-02-29T00:00:00Z", "origin": "Steam", "reason": "qcJ5genFhHdI1sEw", "source": "OTHER"}' \
    > test.out 2>&1
eval_tap $? 260 'CreditUserWallet' test.out

#- 261 PayWithUserWallet
samples/cli/sample-apps Platform payWithUserWallet \
    --currencyCode 'kq1f5AgOVRx3tZtR' \
    --namespace $AB_NAMESPACE \
    --userId 'uO2HMWYvHCXFPTJ3' \
    --body '{"amount": 93, "walletPlatform": "IOS"}' \
    > test.out 2>&1
eval_tap $? 261 'PayWithUserWallet' test.out

#- 262 GetUserWallet
eval_tap 0 262 'GetUserWallet # SKIP deprecated' test.out

#- 263 DebitUserWallet
eval_tap 0 263 'DebitUserWallet # SKIP deprecated' test.out

#- 264 DisableUserWallet
eval_tap 0 264 'DisableUserWallet # SKIP deprecated' test.out

#- 265 EnableUserWallet
eval_tap 0 265 'EnableUserWallet # SKIP deprecated' test.out

#- 266 ListUserWalletTransactions
eval_tap 0 266 'ListUserWalletTransactions # SKIP deprecated' test.out

#- 267 ListViews
samples/cli/sample-apps Platform listViews \
    --namespace $AB_NAMESPACE \
    --storeId 'ZrbDnf8EWOopIDaA' \
    > test.out 2>&1
eval_tap $? 267 'ListViews' test.out

#- 268 CreateView
samples/cli/sample-apps Platform createView \
    --namespace $AB_NAMESPACE \
    --storeId 'rRnETBVLUx74koHn' \
    --body '{"displayOrder": 91, "localizations": {"CaWhjRlrq7Ph1zA3": {"description": "db00cK6PzoE5qIYO", "localExt": {"A2jfyw3rP3CBI3dt": {}, "nzLouo6jrTjnRyIq": {}, "OQNfEgsZBKXifEOJ": {}}, "longDescription": "LO1Sil7LQ1ZQbiO0", "title": "cNswk3ldhO75KCFC"}, "YO6kElxsSuSqN5Yp": {"description": "goGfAMtmFccxIxsc", "localExt": {"QWZnwvcR0aUGPPAn": {}, "96vw1oEAOGx0uIhz": {}, "oHKX5zywly21ETsT": {}}, "longDescription": "3MdcNCssUGATkM4c", "title": "VjQkASXkGYqVxv6v"}, "KQ09paHczFRUi0gr": {"description": "1XhIsCpSy3I2iCTa", "localExt": {"BCmOfR6kcRx4oFc0": {}, "dPUmwm3HkyRpFtzG": {}, "ycYnYqeoAc6Y613Y": {}}, "longDescription": "r8Mt0w8sMF02JS3a", "title": "D16GsWpXQspsPuCh"}}, "name": "buv1ftVySINPRga2"}' \
    > test.out 2>&1
eval_tap $? 268 'CreateView' test.out

#- 269 GetView
samples/cli/sample-apps Platform getView \
    --namespace $AB_NAMESPACE \
    --viewId '6DHsT7BjDUF0jW5A' \
    --storeId 'fRg9RQ845Us9ajUc' \
    > test.out 2>&1
eval_tap $? 269 'GetView' test.out

#- 270 UpdateView
samples/cli/sample-apps Platform updateView \
    --namespace $AB_NAMESPACE \
    --viewId 'tmQPuZ8fSt333jZI' \
    --storeId 'wwRuRzW22Cv1yuQC' \
    --body '{"displayOrder": 26, "localizations": {"ZGyN4rS8bMacevJq": {"description": "RGkGh5bpnSpsOfqx", "localExt": {"aKopSk591CjGZDJU": {}, "jWVtDHxGjN2ODjE2": {}, "HNpr3DLTx1hoLIiA": {}}, "longDescription": "tbyNqDXkpuKCA1NE", "title": "25s0qqFpvWvewOuM"}, "sTDYBsliA8AqKsVl": {"description": "fXfdRdOxNZS6f5Fc", "localExt": {"z3dMUwXddzx3lE52": {}, "vVW6pmWhMvhKeDMG": {}, "htBtx0Z79ZuNdqQI": {}}, "longDescription": "ysSGeDN167z2yXBh", "title": "Rcx6YDt0PA44TIpd"}, "VmE6vR2jIpbKFtyr": {"description": "cAHlkuVPaK9xNUnQ", "localExt": {"z3mZPU5HKotSGzaB": {}, "RFcnAbMgYM6LxyFh": {}, "LoAX6veg8aeaVlce": {}}, "longDescription": "t7hrBPsJda8F8KMr", "title": "J5diDvBTGv5KGNqA"}}, "name": "Grc7FIgEiUzyan69"}' \
    > test.out 2>&1
eval_tap $? 270 'UpdateView' test.out

#- 271 DeleteView
samples/cli/sample-apps Platform deleteView \
    --namespace $AB_NAMESPACE \
    --viewId 'iDY8OfmYmcat5MCi' \
    --storeId 'Cp5YtckJOpiIrhDK' \
    > test.out 2>&1
eval_tap $? 271 'DeleteView' test.out

#- 272 QueryWallets
eval_tap 0 272 'QueryWallets # SKIP deprecated' test.out

#- 273 BulkCredit
samples/cli/sample-apps Platform bulkCredit \
    --namespace $AB_NAMESPACE \
    --body '[{"creditRequest": {"amount": 49, "expireAt": "1985-03-09T00:00:00Z", "origin": "Playstation", "reason": "fiRkrFrSyrye2Kf0", "source": "PROMOTION"}, "currencyCode": "bwZKyHaab0cIHiBP", "userIds": ["2I3QtRMK90ZxfXBT", "dbdtuSRDDiUI8X1G", "KMBt7VlDSu90J5br"]}, {"creditRequest": {"amount": 100, "expireAt": "1999-06-15T00:00:00Z", "origin": "Xbox", "reason": "UTGffFGIprjdGfNi", "source": "PROMOTION"}, "currencyCode": "5rlKvTCSt84XQgvI", "userIds": ["0vAl7zgL01t5KFuG", "aYogK2jHFL2YSPT1", "PiHlBjzyOfdpggnW"]}, {"creditRequest": {"amount": 72, "expireAt": "1995-02-11T00:00:00Z", "origin": "IOS", "reason": "KQvb4US23ojWQlm5", "source": "REWARD"}, "currencyCode": "QtzBXjtPL3LckAHN", "userIds": ["f6OvRGeNrCljevqW", "c5gh5gH0kVbGw3G7", "LnGa0LQOlbLnK0Jf"]}]' \
    > test.out 2>&1
eval_tap $? 273 'BulkCredit' test.out

#- 274 BulkDebit
samples/cli/sample-apps Platform bulkDebit \
    --namespace $AB_NAMESPACE \
    --body '[{"currencyCode": "Z0tUdS0mz9IjWdMb", "request": {"allowOverdraft": true, "amount": 10, "balanceOrigin": "Xbox", "reason": "w739Y4coJpDbjESg"}, "userIds": ["4r8RMo7zQcvETszt", "y5RFXCGhLDIUZczD", "2LNILDQ6sZMG2PfZ"]}, {"currencyCode": "iRArZoVdw9GFdqbP", "request": {"allowOverdraft": false, "amount": 44, "balanceOrigin": "Xbox", "reason": "qsDuPLMgEbpQJKd2"}, "userIds": ["7IPMce9kDS6AToYA", "PnRU3EHJeS7oCfoJ", "eiet9AS2djD6V121"]}, {"currencyCode": "xyy3LBwWnjizsFBc", "request": {"allowOverdraft": false, "amount": 42, "balanceOrigin": "Twitch", "reason": "6ov03opIOHVgmdID"}, "userIds": ["pkmH0yVX1QnERwbJ", "3stXxXW2H8ZWlEyb", "ITylyGgAOjkEpQ55"]}]' \
    > test.out 2>&1
eval_tap $? 274 'BulkDebit' test.out

#- 275 GetWallet
eval_tap 0 275 'GetWallet # SKIP deprecated' test.out

#- 276 SyncOrders
samples/cli/sample-apps Platform syncOrders \
    --nextEvaluatedKey '2SesY8w7Rpvyy1le' \
    --end '9ktM6OigUeHCzjAj' \
    --start 'W9JtmFXApRbf3Zvo' \
    > test.out 2>&1
eval_tap $? 276 'SyncOrders' test.out

#- 277 TestAdyenConfig
samples/cli/sample-apps Platform testAdyenConfig \
    --sandbox 'false' \
    --body '{"allowedPaymentMethods": ["PTFVJ2dwBwk3oqBz", "7fIQobzkgaQ75XbR", "Bv8UYtTjXdil53IJ"], "apiKey": "DIzD1V237jnxS7Hm", "authoriseAsCapture": true, "blockedPaymentMethods": ["rKdKKDMysHIEw6dY", "f213LN0XxxeIBOPI", "2gVe6uCQ7N8Irv2o"], "clientKey": "Vnf0gAyV4nWHCy4B", "dropInSettings": "t4U0drZXvWwzlpux", "liveEndpointUrlPrefix": "poHH6ydQR2R0xxCq", "merchantAccount": "iGoOiItK0XZm8JyC", "notificationHmacKey": "tw4W9cTg8pskUPck", "notificationPassword": "jTbqq2bsB2g25X3I", "notificationUsername": "cF8Ke8GErT5q6Nwq", "returnUrl": "LLZWMbYZPlwk91g1", "settings": "yFp2FEVqUCqL6aHp"}' \
    > test.out 2>&1
eval_tap $? 277 'TestAdyenConfig' test.out

#- 278 TestAliPayConfig
samples/cli/sample-apps Platform testAliPayConfig \
    --sandbox 'true' \
    --body '{"appId": "7m4NuE28BcbdHpO6", "privateKey": "mYajrnhf6GYrWfZB", "publicKey": "WRmqpf9KnvqRdE8K", "returnUrl": "QpV09sGNdJWUE8LB"}' \
    > test.out 2>&1
eval_tap $? 278 'TestAliPayConfig' test.out

#- 279 TestCheckoutConfig
samples/cli/sample-apps Platform testCheckoutConfig \
    --sandbox 'true' \
    --body '{"publicKey": "j3I9qAt3PwcZqbe6", "secretKey": "wegMjZG0qd5pqE5p"}' \
    > test.out 2>&1
eval_tap $? 279 'TestCheckoutConfig' test.out

#- 280 DebugMatchedPaymentMerchantConfig
samples/cli/sample-apps Platform debugMatchedPaymentMerchantConfig \
    --namespace 'itGJujLCOM1QoA4o' \
    --region 'eDVzWRK0H5NeYiIz' \
    > test.out 2>&1
eval_tap $? 280 'DebugMatchedPaymentMerchantConfig' test.out

#- 281 TestPayPalConfig
samples/cli/sample-apps Platform testPayPalConfig \
    --sandbox 'true' \
    --body '{"clientID": "8Mh8iusrSmZEwGIh", "clientSecret": "H5VH9LS4yaDyD7Pc", "returnUrl": "hHUxxj0is0SjCmeq", "webHookId": "WYArEFus9KG3vO2s"}' \
    > test.out 2>&1
eval_tap $? 281 'TestPayPalConfig' test.out

#- 282 TestStripeConfig
samples/cli/sample-apps Platform testStripeConfig \
    --sandbox 'true' \
    --body '{"allowedPaymentMethodTypes": ["zi8QOR4HiggV0NcI", "zTj7xN8URrJs1ADr", "XyAJpFiAZEv83M31"], "publishableKey": "RrvS4EcFioDRYj2n", "secretKey": "F2ASjF7vSlwn5nJb", "webhookSecret": "hQXWIDV3MKbHgW2D"}' \
    > test.out 2>&1
eval_tap $? 282 'TestStripeConfig' test.out

#- 283 TestWxPayConfig
samples/cli/sample-apps Platform testWxPayConfig \
    --body '{"appId": "Dmtk6mHK0gx09cCF", "key": "K3xe8UaI6x01Rzpu", "mchid": "3kpEKqWmRxQXewEe", "returnUrl": "X9fcTi8xCiZAU9V5"}' \
    > test.out 2>&1
eval_tap $? 283 'TestWxPayConfig' test.out

#- 284 TestXsollaConfig
samples/cli/sample-apps Platform testXsollaConfig \
    --body '{"apiKey": "V1w5jRJigcl1KxEb", "flowCompletionUrl": "h5Djre8ovJsFfL2T", "merchantId": 43, "projectId": 62, "projectSecretKey": "Qp07hS65ASeUzwSK"}' \
    > test.out 2>&1
eval_tap $? 284 'TestXsollaConfig' test.out

#- 285 GetPaymentMerchantConfig
samples/cli/sample-apps Platform getPaymentMerchantConfig \
    --id 'yWFS7luFM3OqHq6b' \
    > test.out 2>&1
eval_tap $? 285 'GetPaymentMerchantConfig' test.out

#- 286 UpdateAdyenConfig
samples/cli/sample-apps Platform updateAdyenConfig \
    --id 'qyjt0zuYxFhcEMhW' \
    --sandbox 'false' \
    --validate 'true' \
    --body '{"allowedPaymentMethods": ["XvmwZJBEzMP5aEtB", "TRaIHkrf5zWxpHXm", "TnrArKxKgnqLsnoE"], "apiKey": "fsMx36avOdAnl8Iz", "authoriseAsCapture": true, "blockedPaymentMethods": ["rmc5fY103aN1AxSf", "tLXMqYJZuaCT9OBM", "OAGzpwXWysujlUaK"], "clientKey": "P6HZTFjL9hbjmn72", "dropInSettings": "G3NQDFz6SoaLdPXV", "liveEndpointUrlPrefix": "uE62SjoB8ilTAkkz", "merchantAccount": "k8tRwo3L4zcORjtq", "notificationHmacKey": "X2wswyuvYMJvAPkL", "notificationPassword": "wGZ07YR1qGxKzSb2", "notificationUsername": "bKJiYqcglPg2Ibce", "returnUrl": "AG5rY4x4UJClKW9y", "settings": "xQ4lLn6Rnuexugeu"}' \
    > test.out 2>&1
eval_tap $? 286 'UpdateAdyenConfig' test.out

#- 287 TestAdyenConfigById
samples/cli/sample-apps Platform testAdyenConfigById \
    --id 'lLUfOAeQMCefptFG' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 287 'TestAdyenConfigById' test.out

#- 288 UpdateAliPayConfig
samples/cli/sample-apps Platform updateAliPayConfig \
    --id 'AhFTF3CS7imqHCwi' \
    --sandbox 'true' \
    --validate 'true' \
    --body '{"appId": "g5Zju1ckUn3G0Atv", "privateKey": "y0XQvhppGhR8zlXN", "publicKey": "Q8xAEdfhiBeK7T8S", "returnUrl": "A8QxGxiY5RqCq77b"}' \
    > test.out 2>&1
eval_tap $? 288 'UpdateAliPayConfig' test.out

#- 289 TestAliPayConfigById
samples/cli/sample-apps Platform testAliPayConfigById \
    --id 'Ftax0EqZvhn9paWn' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 289 'TestAliPayConfigById' test.out

#- 290 UpdateCheckoutConfig
samples/cli/sample-apps Platform updateCheckoutConfig \
    --id '1lCQf0QKo2nQGfLJ' \
    --sandbox 'true' \
    --validate 'false' \
    --body '{"publicKey": "cuTEtgkEnYlh01eA", "secretKey": "H0LFU07dQlVSSUda"}' \
    > test.out 2>&1
eval_tap $? 290 'UpdateCheckoutConfig' test.out

#- 291 TestCheckoutConfigById
samples/cli/sample-apps Platform testCheckoutConfigById \
    --id 'FWkC7JDxreyDDdxU' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 291 'TestCheckoutConfigById' test.out

#- 292 UpdatePayPalConfig
samples/cli/sample-apps Platform updatePayPalConfig \
    --id 'UZ0uFR6TfO186nF3' \
    --sandbox 'true' \
    --validate 'false' \
    --body '{"clientID": "2bAaNdA0Umew18SD", "clientSecret": "doEEQ24jyo04NR4S", "returnUrl": "pxub71sB9ca41ZCK", "webHookId": "KrKVjfeSTZDrqyK3"}' \
    > test.out 2>&1
eval_tap $? 292 'UpdatePayPalConfig' test.out

#- 293 TestPayPalConfigById
samples/cli/sample-apps Platform testPayPalConfigById \
    --id 'INIJo66oGoQrhxaF' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 293 'TestPayPalConfigById' test.out

#- 294 UpdateStripeConfig
samples/cli/sample-apps Platform updateStripeConfig \
    --id 'rUulY00wRkPEIp9W' \
    --sandbox 'true' \
    --validate 'true' \
    --body '{"allowedPaymentMethodTypes": ["SN9HLORPiZ2XaekP", "pNzFKDXGW8FHy8n6", "87ClC5tpNCY2kPpz"], "publishableKey": "vWlvNfc5zuqlkcji", "secretKey": "ZiokCrw3mB5U40e6", "webhookSecret": "X2Q58nSkkYhZrHUE"}' \
    > test.out 2>&1
eval_tap $? 294 'UpdateStripeConfig' test.out

#- 295 TestStripeConfigById
samples/cli/sample-apps Platform testStripeConfigById \
    --id 'kezFEcbz5JVGJvgu' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 295 'TestStripeConfigById' test.out

#- 296 UpdateWxPayConfig
samples/cli/sample-apps Platform updateWxPayConfig \
    --id 'NZ8ZVoF320Jewhbi' \
    --validate 'false' \
    --body '{"appId": "dsg3678V4atyOVfc", "key": "LUnw4cDlbpZrVVIg", "mchid": "2vY897VQErCvgd9f", "returnUrl": "XHGeuXIacKQHwCPy"}' \
    > test.out 2>&1
eval_tap $? 296 'UpdateWxPayConfig' test.out

#- 297 UpdateWxPayConfigCert
samples/cli/sample-apps Platform updateWxPayConfigCert \
    --id 'XL2CN7IyoVGNA84z' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 297 'UpdateWxPayConfigCert' test.out

#- 298 TestWxPayConfigById
samples/cli/sample-apps Platform testWxPayConfigById \
    --id 'ETquqpp9FBDcPYAl' \
    > test.out 2>&1
eval_tap $? 298 'TestWxPayConfigById' test.out

#- 299 UpdateXsollaConfig
samples/cli/sample-apps Platform updateXsollaConfig \
    --id '2u8XDKP9nNjrchu8' \
    --validate 'false' \
    --body '{"apiKey": "NXMgIcfmyl3Lx0ir", "flowCompletionUrl": "iP4CpWObcxeeRgUt", "merchantId": 32, "projectId": 30, "projectSecretKey": "lKkehKIZNMoGXAgh"}' \
    > test.out 2>&1
eval_tap $? 299 'UpdateXsollaConfig' test.out

#- 300 TestXsollaConfigById
samples/cli/sample-apps Platform testXsollaConfigById \
    --id 'G6Ak4ZiJBZFSZtSP' \
    > test.out 2>&1
eval_tap $? 300 'TestXsollaConfigById' test.out

#- 301 UpdateXsollaUIConfig
samples/cli/sample-apps Platform updateXsollaUIConfig \
    --id 'va1UomNKOHqxJ9Zi' \
    --body '{"device": "MOBILE", "showCloseButton": false, "size": "MEDIUM", "theme": "DARK"}' \
    > test.out 2>&1
eval_tap $? 301 'UpdateXsollaUIConfig' test.out

#- 302 QueryPaymentProviderConfig
samples/cli/sample-apps Platform queryPaymentProviderConfig \
    --limit '88' \
    --namespace 'PrfmMsqLFTh0ZJXV' \
    --offset '54' \
    --region 'TMkadgRuuWfI4v8U' \
    > test.out 2>&1
eval_tap $? 302 'QueryPaymentProviderConfig' test.out

#- 303 CreatePaymentProviderConfig
samples/cli/sample-apps Platform createPaymentProviderConfig \
    --body '{"aggregate": "ADYEN", "namespace": "Fi84JNyTL1etRyon", "region": "uovXAJ78wNqA7NWo", "sandboxTaxJarApiToken": "qgw4O1oDfG8Tf9Ja", "specials": ["XSOLLA", "WXPAY", "PAYPAL"], "taxJarApiToken": "v5nbiRmnyVFKuXvC", "taxJarEnabled": false, "useGlobalTaxJarApiToken": true}' \
    > test.out 2>&1
eval_tap $? 303 'CreatePaymentProviderConfig' test.out

#- 304 GetAggregatePaymentProviders
samples/cli/sample-apps Platform getAggregatePaymentProviders \
    > test.out 2>&1
eval_tap $? 304 'GetAggregatePaymentProviders' test.out

#- 305 DebugMatchedPaymentProviderConfig
samples/cli/sample-apps Platform debugMatchedPaymentProviderConfig \
    --namespace 'OYOl8SPEXtHSrd45' \
    --region 'g0EWMExdIi7jUkbC' \
    > test.out 2>&1
eval_tap $? 305 'DebugMatchedPaymentProviderConfig' test.out

#- 306 GetSpecialPaymentProviders
samples/cli/sample-apps Platform getSpecialPaymentProviders \
    > test.out 2>&1
eval_tap $? 306 'GetSpecialPaymentProviders' test.out

#- 307 UpdatePaymentProviderConfig
samples/cli/sample-apps Platform updatePaymentProviderConfig \
    --id 'FySLTAUeT0RyRfBG' \
    --body '{"aggregate": "ADYEN", "namespace": "CaWJLQPUr2MRRbkU", "region": "1wxeqPjpr8rFslPJ", "sandboxTaxJarApiToken": "L2HtJaHkQ1eSX07Y", "specials": ["WALLET", "ADYEN", "PAYPAL"], "taxJarApiToken": "UdztQLf1JMypBHYt", "taxJarEnabled": false, "useGlobalTaxJarApiToken": true}' \
    > test.out 2>&1
eval_tap $? 307 'UpdatePaymentProviderConfig' test.out

#- 308 DeletePaymentProviderConfig
samples/cli/sample-apps Platform deletePaymentProviderConfig \
    --id '5mtW67rHcVCsbSeB' \
    > test.out 2>&1
eval_tap $? 308 'DeletePaymentProviderConfig' test.out

#- 309 GetPaymentTaxConfig
samples/cli/sample-apps Platform getPaymentTaxConfig \
    > test.out 2>&1
eval_tap $? 309 'GetPaymentTaxConfig' test.out

#- 310 UpdatePaymentTaxConfig
samples/cli/sample-apps Platform updatePaymentTaxConfig \
    --body '{"sandboxTaxJarApiToken": "7kENP6eW5XlM1Lwt", "taxJarApiToken": "uSEPaOaWCfUIQnaF", "taxJarEnabled": false, "taxJarProductCodesMapping": {"H2r2h1gYuUpyHeJR": "uhNk9AqqMN2JM7IT", "RkAcequob5C3RUA7": "mqgm8GAifKBy5y48", "BJ7CWjEizHhA96eF": "Ecmca31tQf0zPMo6"}}' \
    > test.out 2>&1
eval_tap $? 310 'UpdatePaymentTaxConfig' test.out

#- 311 SyncPaymentOrders
samples/cli/sample-apps Platform syncPaymentOrders \
    --nextEvaluatedKey '9SDsf9WPXJDz8zOj' \
    --end 'd1gZgNVGMS4eJPDa' \
    --start 'sCa2xh2Svmr8b0UD' \
    > test.out 2>&1
eval_tap $? 311 'SyncPaymentOrders' test.out

#- 312 PublicGetRootCategories
samples/cli/sample-apps Platform publicGetRootCategories \
    --namespace $AB_NAMESPACE \
    --language 'taSQZ8SpwLuSJ5CF' \
    --storeId '2sxNzv9420VVnNyL' \
    > test.out 2>&1
eval_tap $? 312 'PublicGetRootCategories' test.out

#- 313 DownloadCategories
samples/cli/sample-apps Platform downloadCategories \
    --namespace $AB_NAMESPACE \
    --language 'PQgT6ZBQEPTOwo0C' \
    --storeId 'jLisC93MhsCEujw3' \
    > test.out 2>&1
eval_tap $? 313 'DownloadCategories' test.out

#- 314 PublicGetCategory
samples/cli/sample-apps Platform publicGetCategory \
    --categoryPath 'RaeHMATeKDC5NigP' \
    --namespace $AB_NAMESPACE \
    --language '8Xifp5FoU7ej0ftS' \
    --storeId 'KYk0s9W9ZNboM8eW' \
    > test.out 2>&1
eval_tap $? 314 'PublicGetCategory' test.out

#- 315 PublicGetChildCategories
samples/cli/sample-apps Platform publicGetChildCategories \
    --categoryPath 'z2nTKkJcLtAeLFcf' \
    --namespace $AB_NAMESPACE \
    --language 'K8WvrnjC8miGsBdX' \
    --storeId 'YMhTb4eDmaMyY8Dk' \
    > test.out 2>&1
eval_tap $? 315 'PublicGetChildCategories' test.out

#- 316 PublicGetDescendantCategories
samples/cli/sample-apps Platform publicGetDescendantCategories \
    --categoryPath 'z4thi8d0jP8M7YNM' \
    --namespace $AB_NAMESPACE \
    --language 'Ny4iKRKV4vm2sHQf' \
    --storeId 'P9cJg2gq6q8TdNfj' \
    > test.out 2>&1
eval_tap $? 316 'PublicGetDescendantCategories' test.out

#- 317 PublicListCurrencies
samples/cli/sample-apps Platform publicListCurrencies \
    --namespace $AB_NAMESPACE \
    --currencyType 'VIRTUAL' \
    > test.out 2>&1
eval_tap $? 317 'PublicListCurrencies' test.out

#- 318 GetIAPItemMapping
samples/cli/sample-apps Platform getIAPItemMapping \
    --namespace $AB_NAMESPACE \
    --platform 'GOOGLE' \
    > test.out 2>&1
eval_tap $? 318 'GetIAPItemMapping' test.out

#- 319 PublicGetItemByAppId
samples/cli/sample-apps Platform publicGetItemByAppId \
    --namespace $AB_NAMESPACE \
    --language 'i1FolccwYzAPO1On' \
    --region 'o0lZKj7XggSeAVFL' \
    --storeId '77eSgnlXbiYV8sB9' \
    --appId 'uj4TVsNPZnNmNlfC' \
    > test.out 2>&1
eval_tap $? 319 'PublicGetItemByAppId' test.out

#- 320 PublicQueryItems
samples/cli/sample-apps Platform publicQueryItems \
    --namespace $AB_NAMESPACE \
    --appType 'DLC' \
    --baseAppId 'flLciSsnVX38jFIS' \
    --categoryPath 'IrNmPIiuksd0tdTM' \
    --features 'czEpy5Kl266QFBag' \
    --includeSubCategoryItem 'false' \
    --itemType 'COINS' \
    --language 'vTfI1SRLtakKNH43' \
    --limit '65' \
    --offset '57' \
    --region 'TzVOcEixiQFuTXPR' \
    --sortBy '["name", "updatedAt:asc", "name:asc"]' \
    --storeId 'FK6KiYXyU3F6i3lY' \
    --tags 'CB0kiJ8Uj0OZe89K' \
    > test.out 2>&1
eval_tap $? 320 'PublicQueryItems' test.out

#- 321 PublicGetItemBySku
samples/cli/sample-apps Platform publicGetItemBySku \
    --namespace $AB_NAMESPACE \
    --language 'fY4qF5psKb6RgQsn' \
    --region '3ENH2vRwjtd3lIRd' \
    --storeId 'VWxtvNDlzEanZQz0' \
    --sku 'OHWSvyLSrdK1vfdK' \
    > test.out 2>&1
eval_tap $? 321 'PublicGetItemBySku' test.out

#- 322 PublicBulkGetItems
samples/cli/sample-apps Platform publicBulkGetItems \
    --namespace $AB_NAMESPACE \
    --language 'jsTuQW4IM2QtIQ8N' \
    --region 'PWsa4tdTi2OsUl86' \
    --storeId 'Gdz6peuXbZPU8L9Z' \
    --itemIds 'sfpiw4gLGjCZABTi' \
    > test.out 2>&1
eval_tap $? 322 'PublicBulkGetItems' test.out

#- 323 PublicValidateItemPurchaseCondition
samples/cli/sample-apps Platform publicValidateItemPurchaseCondition \
    --namespace $AB_NAMESPACE \
    --body '{"itemIds": ["abdiHCpC3HJzAvLy", "LWNWBjoEAapibEkB", "xg3lLMtWmsqOsDJb"]}' \
    > test.out 2>&1
eval_tap $? 323 'PublicValidateItemPurchaseCondition' test.out

#- 324 PublicSearchItems
samples/cli/sample-apps Platform publicSearchItems \
    --namespace $AB_NAMESPACE \
    --itemType 'CODE' \
    --limit '85' \
    --offset '4' \
    --region 'BZaTjVwNBPh4sKYV' \
    --storeId '9a08LXCFs6DUUFA9' \
    --keyword 'UL0n7ewnSZZ6H2JO' \
    --language 'pyGKztRmFo6qXiql' \
    > test.out 2>&1
eval_tap $? 324 'PublicSearchItems' test.out

#- 325 PublicGetApp
samples/cli/sample-apps Platform publicGetApp \
    --itemId '3bSmg0OPmYDaHZFs' \
    --namespace $AB_NAMESPACE \
    --language 'tw035JhBFa5e4ONL' \
    --region 'bmGVJo2OAxWBleAe' \
    --storeId 'PbNahowVEuwgCCkD' \
    > test.out 2>&1
eval_tap $? 325 'PublicGetApp' test.out

#- 326 PublicGetItemDynamicData
samples/cli/sample-apps Platform publicGetItemDynamicData \
    --itemId 'rWELf22SXHiiUBx8' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 326 'PublicGetItemDynamicData' test.out

#- 327 PublicGetItem
samples/cli/sample-apps Platform publicGetItem \
    --itemId 'blhGyyuBIhYUnxCF' \
    --namespace $AB_NAMESPACE \
    --language '1IlT59KMTA26LTs4' \
    --populateBundle 'false' \
    --region 'W6kMcG6ji9NgmdRT' \
    --storeId '2NtW9s0ZrDvbWCmN' \
    > test.out 2>&1
eval_tap $? 327 'PublicGetItem' test.out

#- 328 GetPaymentCustomization
eval_tap 0 328 'GetPaymentCustomization # SKIP deprecated' test.out

#- 329 PublicGetPaymentUrl
samples/cli/sample-apps Platform publicGetPaymentUrl \
    --namespace $AB_NAMESPACE \
    --body '{"paymentOrderNo": "OISq3jCPqLqgWbd2", "paymentProvider": "WALLET", "returnUrl": "oEiVzJdJ6kzxasQJ", "ui": "6Nnhcw0NNWSBrFMe", "zipCode": "xqkYRI99nYUgjOqR"}' \
    > test.out 2>&1
eval_tap $? 329 'PublicGetPaymentUrl' test.out

#- 330 PublicGetPaymentMethods
samples/cli/sample-apps Platform publicGetPaymentMethods \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'uHbY6m6SP1xGNVFm' \
    > test.out 2>&1
eval_tap $? 330 'PublicGetPaymentMethods' test.out

#- 331 PublicGetUnpaidPaymentOrder
samples/cli/sample-apps Platform publicGetUnpaidPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo '99nPKKeRE1vOgejj' \
    > test.out 2>&1
eval_tap $? 331 'PublicGetUnpaidPaymentOrder' test.out

#- 332 Pay
samples/cli/sample-apps Platform pay \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'LFmvFwQyjfBCvnVy' \
    --paymentProvider 'STRIPE' \
    --zipCode 'PcBWolQv6MGVDmJr' \
    --body '{"token": "MJsHqpKsXiM105Ow"}' \
    > test.out 2>&1
eval_tap $? 332 'Pay' test.out

#- 333 PublicCheckPaymentOrderPaidStatus
samples/cli/sample-apps Platform publicCheckPaymentOrderPaidStatus \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'iNNUHFEazCSPzEW4' \
    > test.out 2>&1
eval_tap $? 333 'PublicCheckPaymentOrderPaidStatus' test.out

#- 334 GetPaymentPublicConfig
samples/cli/sample-apps Platform getPaymentPublicConfig \
    --namespace $AB_NAMESPACE \
    --sandbox 'true' \
    --paymentProvider 'ALIPAY' \
    --region 'BVYKk9aGSymp0lA6' \
    > test.out 2>&1
eval_tap $? 334 'GetPaymentPublicConfig' test.out

#- 335 PublicGetQRCode
samples/cli/sample-apps Platform publicGetQRCode \
    --namespace $AB_NAMESPACE \
    --code 'o7zPJDqPKjvjnv4k' \
    > test.out 2>&1
eval_tap $? 335 'PublicGetQRCode' test.out

#- 336 PublicNormalizePaymentReturnUrl
samples/cli/sample-apps Platform publicNormalizePaymentReturnUrl \
    --namespace $AB_NAMESPACE \
    --payerID 'pY3vGrFycHkl7oaP' \
    --foreinginvoice 'dxurWpD23depVL3r' \
    --invoiceId 'lCLzL9QlLug6UJOT' \
    --payload 'ZkzzpalQpQ2nNlQM' \
    --redirectResult 'qVcLkPSL1QcPyunM' \
    --resultCode 'rD3RaOCe8fVMO96z' \
    --sessionId '9sQhIGPxgWvipnig' \
    --status 'wyUQFNbpzojFlyYl' \
    --token 'gepYmnO4OoGuh4Rm' \
    --type 'pKiMnNDaG6GsQny1' \
    --userId 'ATVUjBBWn0GfaSAq' \
    --orderNo '3d8kkUdArb2rplqk' \
    --paymentOrderNo 'ucHRMFTOjwUMLNpZ' \
    --paymentProvider 'WALLET' \
    --returnUrl 'aLP1eSMhJ8ECSCEQ' \
    > test.out 2>&1
eval_tap $? 336 'PublicNormalizePaymentReturnUrl' test.out

#- 337 GetPaymentTaxValue
samples/cli/sample-apps Platform getPaymentTaxValue \
    --namespace $AB_NAMESPACE \
    --zipCode 'AfqaW7OXpl3e3urJ' \
    --paymentOrderNo 'IZRr3U1BlORG8tT3' \
    --paymentProvider 'WALLET' \
    > test.out 2>&1
eval_tap $? 337 'GetPaymentTaxValue' test.out

#- 338 GetRewardByCode
samples/cli/sample-apps Platform getRewardByCode \
    --namespace $AB_NAMESPACE \
    --rewardCode 'QpXSydHLasCbl8aR' \
    > test.out 2>&1
eval_tap $? 338 'GetRewardByCode' test.out

#- 339 QueryRewards1
samples/cli/sample-apps Platform queryRewards1 \
    --namespace $AB_NAMESPACE \
    --eventTopic 'IjaOsutxJFu6U2E3' \
    --limit '9' \
    --offset '90' \
    --sortBy '["rewardCode:asc", "rewardCode"]' \
    > test.out 2>&1
eval_tap $? 339 'QueryRewards1' test.out

#- 340 GetReward1
samples/cli/sample-apps Platform getReward1 \
    --namespace $AB_NAMESPACE \
    --rewardId 'CpcchqSDG5DilERJ' \
    > test.out 2>&1
eval_tap $? 340 'GetReward1' test.out

#- 341 PublicListStores
samples/cli/sample-apps Platform publicListStores \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 341 'PublicListStores' test.out

#- 342 PublicExistsAnyMyActiveEntitlement
samples/cli/sample-apps Platform publicExistsAnyMyActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --appIds '["cjqEHmIfauxX6Pq7", "7Z0zcUvXryFVRUbC", "RjPFECpYbTFQP10P"]' \
    --itemIds '["bjEx195xAYyaFx3I", "FZywAlH4rgXzcuas", "YzmkM3BpZbfBMRvT"]' \
    --skus '["Ce120KkSsQ2A3iS3", "f4no2vptvEduIIs0", "2Qm5z08bnwfG5A91"]' \
    > test.out 2>&1
eval_tap $? 342 'PublicExistsAnyMyActiveEntitlement' test.out

#- 343 PublicGetMyAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform publicGetMyAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --appId 'Ka10s7bXyUdG1g1q' \
    > test.out 2>&1
eval_tap $? 343 'PublicGetMyAppEntitlementOwnershipByAppId' test.out

#- 344 PublicGetMyEntitlementOwnershipByItemId
samples/cli/sample-apps Platform publicGetMyEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --entitlementClazz 'ENTITLEMENT' \
    --itemId 'g5MexQQC8L6IwROq' \
    > test.out 2>&1
eval_tap $? 344 'PublicGetMyEntitlementOwnershipByItemId' test.out

#- 345 PublicGetMyEntitlementOwnershipBySku
samples/cli/sample-apps Platform publicGetMyEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --entitlementClazz 'APP' \
    --sku '2iQi6nIA5CdD0XaI' \
    > test.out 2>&1
eval_tap $? 345 'PublicGetMyEntitlementOwnershipBySku' test.out

#- 346 PublicGetEntitlementOwnershipToken
samples/cli/sample-apps Platform publicGetEntitlementOwnershipToken \
    --namespace $AB_NAMESPACE \
    --appIds '["oJMC4btIBqPkqBU6", "McNNxy5U8TARlpEa", "6gdjfACroj9W3AWH"]' \
    --itemIds '["KPGLiWAlmKs3IcBb", "mYJzsnTRGUR1QlXk", "44xhFJ0R4NgXNKhB"]' \
    --skus '["wlNSH6KjzieRHWm3", "JcNq2XpGqp2aF5le", "S2bWoRqiBZQ1onUl"]' \
    > test.out 2>&1
eval_tap $? 346 'PublicGetEntitlementOwnershipToken' test.out

#- 347 SyncTwitchDropsEntitlement
samples/cli/sample-apps Platform syncTwitchDropsEntitlement \
    --namespace $AB_NAMESPACE \
    --body '{"gameId": "rnVpqVdmMScnZRCC", "language": "tiB-SpaC-105", "region": "AwRWixRRYuHJpbuv"}' \
    > test.out 2>&1
eval_tap $? 347 'SyncTwitchDropsEntitlement' test.out

#- 348 PublicGetMyWallet
samples/cli/sample-apps Platform publicGetMyWallet \
    --currencyCode 'H4GQMUbGp62wGkvF' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 348 'PublicGetMyWallet' test.out

#- 349 SyncEpicGameDLC
samples/cli/sample-apps Platform syncEpicGameDLC \
    --namespace $AB_NAMESPACE \
    --userId '55trypGRnTTuW52h' \
    --body '{"epicGamesJwtToken": "UIrhMOZG3KlauDVh"}' \
    > test.out 2>&1
eval_tap $? 349 'SyncEpicGameDLC' test.out

#- 350 PublicSyncPsnDlcInventory
samples/cli/sample-apps Platform publicSyncPsnDlcInventory \
    --namespace $AB_NAMESPACE \
    --userId '6KkMykC84J2Ukt3U' \
    --body '{"serviceLabel": 1}' \
    > test.out 2>&1
eval_tap $? 350 'PublicSyncPsnDlcInventory' test.out

#- 351 PublicSyncPsnDlcInventoryWithMultipleServiceLabels
samples/cli/sample-apps Platform publicSyncPsnDlcInventoryWithMultipleServiceLabels \
    --namespace $AB_NAMESPACE \
    --userId 'pz712wmWpDyjIda2' \
    --body '{"serviceLabels": [0, 66, 18]}' \
    > test.out 2>&1
eval_tap $? 351 'PublicSyncPsnDlcInventoryWithMultipleServiceLabels' test.out

#- 352 SyncSteamDLC
samples/cli/sample-apps Platform syncSteamDLC \
    --namespace $AB_NAMESPACE \
    --userId 'uSsPNTgjH5pd79Ia' \
    --body '{"appId": "dZKV8NU3gemctgao", "steamId": "vy7EKhARBWlCEyQH"}' \
    > test.out 2>&1
eval_tap $? 352 'SyncSteamDLC' test.out

#- 353 SyncXboxDLC
samples/cli/sample-apps Platform syncXboxDLC \
    --namespace $AB_NAMESPACE \
    --userId 'zMcv94YkM2p7HjRe' \
    --body '{"xstsToken": "HBGdTFhwX8pD6CJO"}' \
    > test.out 2>&1
eval_tap $? 353 'SyncXboxDLC' test.out

#- 354 PublicQueryUserEntitlements
samples/cli/sample-apps Platform publicQueryUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'h8MgrTqJ3sfnuq9O' \
    --appType 'GAME' \
    --entitlementClazz 'MEDIA' \
    --entitlementName 'yuYJv0PXNyikkojN' \
    --features '["pmwoyWdoItBK2nD0", "ZMGHWCySLaXZydpu", "lVLxMxLHCdUAOqRx"]' \
    --itemId '["HipLH4GqIycNgukC", "ahkflaKLSSmpTQa4", "1f89O4ewSCQ14c4W"]' \
    --limit '37' \
    --offset '7' \
    > test.out 2>&1
eval_tap $? 354 'PublicQueryUserEntitlements' test.out

#- 355 PublicGetUserAppEntitlementByAppId
samples/cli/sample-apps Platform publicGetUserAppEntitlementByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'irBJuAH9ITcocijm' \
    --appId 'stj6YHpNvl5gCFvG' \
    > test.out 2>&1
eval_tap $? 355 'PublicGetUserAppEntitlementByAppId' test.out

#- 356 PublicQueryUserEntitlementsByAppType
samples/cli/sample-apps Platform publicQueryUserEntitlementsByAppType \
    --namespace $AB_NAMESPACE \
    --userId 'mvuZCiGmHHZL3DvX' \
    --limit '62' \
    --offset '88' \
    --appType 'DLC' \
    > test.out 2>&1
eval_tap $? 356 'PublicQueryUserEntitlementsByAppType' test.out

#- 357 PublicGetUserEntitlementByItemId
samples/cli/sample-apps Platform publicGetUserEntitlementByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'IcV4P1Hby7hotflW' \
    --entitlementClazz 'APP' \
    --itemId 'eGpE9IIHZ3XOenmh' \
    > test.out 2>&1
eval_tap $? 357 'PublicGetUserEntitlementByItemId' test.out

#- 358 PublicGetUserEntitlementBySku
samples/cli/sample-apps Platform publicGetUserEntitlementBySku \
    --namespace $AB_NAMESPACE \
    --userId 'oYmyL009uJbWlt5N' \
    --entitlementClazz 'APP' \
    --sku 'sBhGPWJksGgrtSK7' \
    > test.out 2>&1
eval_tap $? 358 'PublicGetUserEntitlementBySku' test.out

#- 359 PublicExistsAnyUserActiveEntitlement
samples/cli/sample-apps Platform publicExistsAnyUserActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'jeLi1gEnqczM42wY' \
    --appIds '["gZJiXc2cmUjUpXzm", "agcRLFO058lP1SqW", "z6X8u4BRtRtkx0Yy"]' \
    --itemIds '["7yQS2TFaB26hTGHp", "9IhTvDVUT3SNfVIE", "CMzcn08fbXkk7oB5"]' \
    --skus '["TVWiPgnYH8iJbLLv", "LqyHnzR11sWH6BDO", "PQpxwa46M07W2mhU"]' \
    > test.out 2>&1
eval_tap $? 359 'PublicExistsAnyUserActiveEntitlement' test.out

#- 360 PublicGetUserAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform publicGetUserAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'r1TyWaVGlHXendHo' \
    --appId '6T5BiGslk6rvl3Sv' \
    > test.out 2>&1
eval_tap $? 360 'PublicGetUserAppEntitlementOwnershipByAppId' test.out

#- 361 PublicGetUserEntitlementOwnershipByItemId
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'HNYqDSAkRC7vqNkK' \
    --entitlementClazz 'SUBSCRIPTION' \
    --itemId 'goygh6B4UFCZZzH2' \
    > test.out 2>&1
eval_tap $? 361 'PublicGetUserEntitlementOwnershipByItemId' test.out

#- 362 PublicGetUserEntitlementOwnershipByItemIds
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'Q9yqzGTMuLqjoHka' \
    --ids '["Cg737Xy2kkdPxT3G", "lNlqMGukoLfUVA0h", "4bYHwhkHyHR4ByIp"]' \
    > test.out 2>&1
eval_tap $? 362 'PublicGetUserEntitlementOwnershipByItemIds' test.out

#- 363 PublicGetUserEntitlementOwnershipBySku
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --userId 'VGMyazKAtTPWokDy' \
    --entitlementClazz 'APP' \
    --sku 'vPY5q6eVnlDjCt1n' \
    > test.out 2>&1
eval_tap $? 363 'PublicGetUserEntitlementOwnershipBySku' test.out

#- 364 PublicGetUserEntitlement
samples/cli/sample-apps Platform publicGetUserEntitlement \
    --entitlementId 'Lv85Xa6JUkCRPQA9' \
    --namespace $AB_NAMESPACE \
    --userId 'VclnwOqdwQs5jhsz' \
    > test.out 2>&1
eval_tap $? 364 'PublicGetUserEntitlement' test.out

#- 365 PublicConsumeUserEntitlement
samples/cli/sample-apps Platform publicConsumeUserEntitlement \
    --entitlementId 'YkkWdQgnCpGe84d2' \
    --namespace $AB_NAMESPACE \
    --userId 'HZqXXUOjnCy0Y8hN' \
    --body '{"options": ["OuhsGzACxDTcax5n", "hxmmvdZl8XLGQXZN", "xLrpBmsMLSg2IH2V"], "requestId": "8GPd36DDr5437MGJ", "useCount": 98}' \
    > test.out 2>&1
eval_tap $? 365 'PublicConsumeUserEntitlement' test.out

#- 366 PublicSellUserEntitlement
samples/cli/sample-apps Platform publicSellUserEntitlement \
    --entitlementId 'duagkH5k5R1JXwlm' \
    --namespace $AB_NAMESPACE \
    --userId 'MhMx4LXhD0AZeDOT' \
    --body '{"requestId": "34BhQlhkBkwwpjnQ", "useCount": 42}' \
    > test.out 2>&1
eval_tap $? 366 'PublicSellUserEntitlement' test.out

#- 367 PublicRedeemCode
samples/cli/sample-apps Platform publicRedeemCode \
    --namespace $AB_NAMESPACE \
    --userId 'OkrifZ0pzKxC5iEK' \
    --body '{"code": "hihXyqm1U0BveKEs", "language": "la-iwff_981", "region": "4r5PKMxbLVW9JeO8"}' \
    > test.out 2>&1
eval_tap $? 367 'PublicRedeemCode' test.out

#- 368 PublicFulfillAppleIAPItem
samples/cli/sample-apps Platform publicFulfillAppleIAPItem \
    --namespace $AB_NAMESPACE \
    --userId '7OTkQyKpZIs6bGQS' \
    --body '{"excludeOldTransactions": false, "language": "kmN_vDkk", "productId": "J9txDZw2kDUoox2v", "receiptData": "7kYXMaZm0sdJ0Y6W", "region": "wHPvrjmBctsULC9I", "transactionId": "Cw5kYrlJAtkxO1Z4"}' \
    > test.out 2>&1
eval_tap $? 368 'PublicFulfillAppleIAPItem' test.out

#- 369 SyncEpicGamesInventory
samples/cli/sample-apps Platform syncEpicGamesInventory \
    --namespace $AB_NAMESPACE \
    --userId 'Ioaa2LMoyUZ9ZDJP' \
    --body '{"epicGamesJwtToken": "u29oUyYIYzwGIJNg"}' \
    > test.out 2>&1
eval_tap $? 369 'SyncEpicGamesInventory' test.out

#- 370 PublicFulfillGoogleIAPItem
samples/cli/sample-apps Platform publicFulfillGoogleIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'OT6n06fJ9WFHdSfJ' \
    --body '{"autoAck": true, "language": "bs", "orderId": "GCxAGhHnhEiYix0S", "packageName": "3D6FFmbMrZjr7YYh", "productId": "HxnVkjcMsTCtZl99", "purchaseTime": 31, "purchaseToken": "JcqsVyNDKc61r0q3", "region": "jgUV3nzDS1Sr6ddO"}' \
    > test.out 2>&1
eval_tap $? 370 'PublicFulfillGoogleIAPItem' test.out

#- 371 PublicReconcilePlayStationStore
samples/cli/sample-apps Platform publicReconcilePlayStationStore \
    --namespace $AB_NAMESPACE \
    --userId 'R4Sa8dQfGkvqwgxZ' \
    --body '{"currencyCode": "CtpUhUihzObVKXD4", "price": 0.485199587867679, "productId": "4opKMXNP10vYuYXK", "serviceLabel": 72}' \
    > test.out 2>&1
eval_tap $? 371 'PublicReconcilePlayStationStore' test.out

#- 372 PublicReconcilePlayStationStoreWithMultipleServiceLabels
samples/cli/sample-apps Platform publicReconcilePlayStationStoreWithMultipleServiceLabels \
    --namespace $AB_NAMESPACE \
    --userId 'tZ5MxaXo3xffkVjL' \
    --body '{"currencyCode": "IfOrgzKsDUEbBfoe", "price": 0.30089101283203223, "productId": "D7DO6R5XODoVvLNv", "serviceLabels": [80, 3, 60]}' \
    > test.out 2>&1
eval_tap $? 372 'PublicReconcilePlayStationStoreWithMultipleServiceLabels' test.out

#- 373 SyncSteamInventory
samples/cli/sample-apps Platform syncSteamInventory \
    --namespace $AB_NAMESPACE \
    --userId 'PbwtFAxeeSPxbCBE' \
    --body '{"appId": "jeAHxXrPb0JjYFhv", "currencyCode": "RroXXGRvKzwY6qbY", "language": "GXda-qhyj", "price": 0.06901282925196606, "productId": "emWzDZzKELR2UCoJ", "region": "0v7q22H8kcVkyzee", "steamId": "pY2KCRIuAlMrTHdI"}' \
    > test.out 2>&1
eval_tap $? 373 'SyncSteamInventory' test.out

#- 374 SyncTwitchDropsEntitlement1
samples/cli/sample-apps Platform syncTwitchDropsEntitlement1 \
    --namespace $AB_NAMESPACE \
    --userId 'uoLB5xuPrDrZlD9l' \
    --body '{"gameId": "pTOs7mxFBcWmjaVU", "language": "hfIO", "region": "zaW6WO4sSItTD9Tu"}' \
    > test.out 2>&1
eval_tap $? 374 'SyncTwitchDropsEntitlement1' test.out

#- 375 SyncXboxInventory
samples/cli/sample-apps Platform syncXboxInventory \
    --namespace $AB_NAMESPACE \
    --userId 'mZpmLdZTEODAGYyn' \
    --body '{"currencyCode": "sE15xuNfgl6QjBRV", "price": 0.22268953480327913, "productId": "UD78wUHiWevZtQNn", "xstsToken": "Ugwe7VUMacd0pqMs"}' \
    > test.out 2>&1
eval_tap $? 375 'SyncXboxInventory' test.out

#- 376 PublicQueryUserOrders
samples/cli/sample-apps Platform publicQueryUserOrders \
    --namespace $AB_NAMESPACE \
    --userId 'oNOf5PImYavDpmNl' \
    --itemId 'hsUQexP7CakBZcEy' \
    --limit '25' \
    --offset '43' \
    --status 'REFUNDED' \
    > test.out 2>&1
eval_tap $? 376 'PublicQueryUserOrders' test.out

#- 377 PublicCreateUserOrder
samples/cli/sample-apps Platform publicCreateUserOrder \
    --namespace $AB_NAMESPACE \
    --userId 'EwlW0vEtR1TRcZXk' \
    --body '{"currencyCode": "Hczfj50yU4WqdUPA", "discountedPrice": 20, "ext": {"EKplTPynAtm51VRe": {}, "I8EhlXeOb2y1RHdu": {}, "PsvSQ5TnRs5EgBsz": {}}, "itemId": "rycILgSPenVnHSXN", "language": "Fud_Ppye", "price": 28, "quantity": 9, "region": "58HbutcNz0pMMYY6", "returnUrl": "nNSq7yH9P1y4Anoa", "sectionId": "XFJyPKy8LwIhZA5n"}' \
    > test.out 2>&1
eval_tap $? 377 'PublicCreateUserOrder' test.out

#- 378 PublicGetUserOrder
samples/cli/sample-apps Platform publicGetUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo '8atkU0kiYf2kqy4C' \
    --userId '2gzwuVpWnz5lLIpd' \
    > test.out 2>&1
eval_tap $? 378 'PublicGetUserOrder' test.out

#- 379 PublicCancelUserOrder
samples/cli/sample-apps Platform publicCancelUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'xEEmAJzLEp6ETc41' \
    --userId 'jRNuTW1Nos200bl8' \
    > test.out 2>&1
eval_tap $? 379 'PublicCancelUserOrder' test.out

#- 380 PublicGetUserOrderHistories
samples/cli/sample-apps Platform publicGetUserOrderHistories \
    --namespace $AB_NAMESPACE \
    --orderNo 'Oa1Bgh6NtFPK5n4j' \
    --userId 'dZMM3QDRkEdg6Kfg' \
    > test.out 2>&1
eval_tap $? 380 'PublicGetUserOrderHistories' test.out

#- 381 PublicDownloadUserOrderReceipt
samples/cli/sample-apps Platform publicDownloadUserOrderReceipt \
    --namespace $AB_NAMESPACE \
    --orderNo 'aQXhZjXemPgKIcq1' \
    --userId 'hxZMFinlSlkIVATL' \
    > test.out 2>&1
eval_tap $? 381 'PublicDownloadUserOrderReceipt' test.out

#- 382 PublicGetPaymentAccounts
samples/cli/sample-apps Platform publicGetPaymentAccounts \
    --namespace $AB_NAMESPACE \
    --userId 'wu8stu0ZL2habwjF' \
    > test.out 2>&1
eval_tap $? 382 'PublicGetPaymentAccounts' test.out

#- 383 PublicDeletePaymentAccount
samples/cli/sample-apps Platform publicDeletePaymentAccount \
    --id 'a2U9qJEpNbzELbBX' \
    --namespace $AB_NAMESPACE \
    --type 'card' \
    --userId 'uNIZwdVdxVNXmjK4' \
    > test.out 2>&1
eval_tap $? 383 'PublicDeletePaymentAccount' test.out

#- 384 PublicListActiveSections
samples/cli/sample-apps Platform publicListActiveSections \
    --namespace $AB_NAMESPACE \
    --userId 'DKjBqP7gxhiMFPiY' \
    --language 'cHGtl4G0f4tiYygq' \
    --region 'WbpNOfkpxQSOp4T5' \
    --storeId 'ojWm5EwdaKrNoQPw' \
    --viewId 'PgVVWcWb2RbG6KIg' \
    > test.out 2>&1
eval_tap $? 384 'PublicListActiveSections' test.out

#- 385 PublicQueryUserSubscriptions
samples/cli/sample-apps Platform publicQueryUserSubscriptions \
    --namespace $AB_NAMESPACE \
    --userId '9nRzlmmQu6MCbD6U' \
    --chargeStatus 'RECURRING_CHARGING' \
    --itemId 'emuLvS7axGbWAb5C' \
    --limit '45' \
    --offset '68' \
    --sku 'rlPHpmryRU6bc1gx' \
    --status 'CANCELLED' \
    --subscribedBy 'USER' \
    > test.out 2>&1
eval_tap $? 385 'PublicQueryUserSubscriptions' test.out

#- 386 PublicSubscribeSubscription
samples/cli/sample-apps Platform publicSubscribeSubscription \
    --namespace $AB_NAMESPACE \
    --userId 'lQZhgkF57tZFdP3Z' \
    --body '{"currencyCode": "y7bK0hZYSJWYDv4K", "itemId": "xDxoF3fEL2YL5Umm", "language": "iHd", "region": "OVdRlFZEQCJhHjT7", "returnUrl": "IedwTnJNNfhrtfcA", "source": "Hfpb09CWMPbBtd3U"}' \
    > test.out 2>&1
eval_tap $? 386 'PublicSubscribeSubscription' test.out

#- 387 PublicCheckUserSubscriptionSubscribableByItemId
samples/cli/sample-apps Platform publicCheckUserSubscriptionSubscribableByItemId \
    --namespace $AB_NAMESPACE \
    --userId '4XgHHuz1RgzBAwJk' \
    --itemId 'jbA1WBudsRCe0UkS' \
    > test.out 2>&1
eval_tap $? 387 'PublicCheckUserSubscriptionSubscribableByItemId' test.out

#- 388 PublicGetUserSubscription
samples/cli/sample-apps Platform publicGetUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'mRlAAjvZnJzow2a5' \
    --userId 'lXEI8MelCMz33PpO' \
    > test.out 2>&1
eval_tap $? 388 'PublicGetUserSubscription' test.out

#- 389 PublicChangeSubscriptionBillingAccount
samples/cli/sample-apps Platform publicChangeSubscriptionBillingAccount \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'C92gkILncj2rb58o' \
    --userId 'qWCUK2aclYge0n6H' \
    > test.out 2>&1
eval_tap $? 389 'PublicChangeSubscriptionBillingAccount' test.out

#- 390 PublicCancelSubscription
samples/cli/sample-apps Platform publicCancelSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'IzZmt0BlEMbxcMHg' \
    --userId '1Ap4yd1EDIVHJxCS' \
    --body '{"immediate": false, "reason": "mAZGygSedkvAO1Co"}' \
    > test.out 2>&1
eval_tap $? 390 'PublicCancelSubscription' test.out

#- 391 PublicGetUserSubscriptionBillingHistories
samples/cli/sample-apps Platform publicGetUserSubscriptionBillingHistories \
    --namespace $AB_NAMESPACE \
    --subscriptionId '3JZMJD1dHM8likRR' \
    --userId 'BG3NSJFFvbEHtzm6' \
    --excludeFree 'true' \
    --limit '78' \
    --offset '71' \
    > test.out 2>&1
eval_tap $? 391 'PublicGetUserSubscriptionBillingHistories' test.out

#- 392 PublicListViews
samples/cli/sample-apps Platform publicListViews \
    --namespace $AB_NAMESPACE \
    --userId 'cjcdVu7leabimKBU' \
    --language 'AiKKZcxM2kX2AheY' \
    --storeId '5gf49S4sMYF165sE' \
    > test.out 2>&1
eval_tap $? 392 'PublicListViews' test.out

#- 393 PublicGetWallet
samples/cli/sample-apps Platform publicGetWallet \
    --currencyCode '5TGh4gNx1FHCIE1U' \
    --namespace $AB_NAMESPACE \
    --userId 'JrUd2AQZUP08Uwxn' \
    > test.out 2>&1
eval_tap $? 393 'PublicGetWallet' test.out

#- 394 PublicListUserWalletTransactions
samples/cli/sample-apps Platform publicListUserWalletTransactions \
    --currencyCode 'QJhWm9D8qZM3ptSl' \
    --namespace $AB_NAMESPACE \
    --userId 'l7moslefly48aytS' \
    --limit '71' \
    --offset '17' \
    > test.out 2>&1
eval_tap $? 394 'PublicListUserWalletTransactions' test.out

#- 395 QueryItems1
samples/cli/sample-apps Platform queryItems1 \
    --namespace $AB_NAMESPACE \
    --appType 'DEMO' \
    --availableDate 'LO6t6jevHrgoejtT' \
    --baseAppId 'C4xJL0xURDORE1su' \
    --categoryPath '48E3cJNX2aast16s' \
    --features 'yuqzEBcE4tOyzLVb' \
    --includeSubCategoryItem 'true' \
    --itemName 'PCN7WCYFJlmd6Td9' \
    --itemStatus 'INACTIVE' \
    --itemType 'LOOTBOX' \
    --limit '80' \
    --offset '73' \
    --region 'pqSYOoMDCJ9JlJjq' \
    --sectionExclusive 'true' \
    --sortBy '["updatedAt:asc", "createdAt:desc", "displayOrder:asc"]' \
    --storeId 'aBEbQsaXqJyGB6BO' \
    --tags 'FoazQPFxNeVeZIHH' \
    --targetNamespace 'cb4rApzApJXyXgyQ' \
    > test.out 2>&1
eval_tap $? 395 'QueryItems1' test.out

#- 396 ImportStore1
samples/cli/sample-apps Platform importStore1 \
    --namespace $AB_NAMESPACE \
    --storeId 'Asp690v0YGzM0WtS' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 396 'ImportStore1' test.out

#- 397 ExportStore1
samples/cli/sample-apps Platform exportStore1 \
    --namespace $AB_NAMESPACE \
    --storeId 'gVPGTyMQknFhttf1' \
    --body '{"itemIds": ["Z25L8iBm7imSP93Z", "vBMnAEHLSBj97gEW", "mzgs6ad64TpRlooZ"]}' \
    > test.out 2>&1
eval_tap $? 397 'ExportStore1' test.out


rm -f "tmp.dat"

exit $EXIT_CODE