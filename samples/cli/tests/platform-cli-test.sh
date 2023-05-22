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
    --body '{"context": {"item": {"appId": "1proIrJARyjxgs2V", "appType": "GAME", "baseAppId": "9ixDl3quotDBcLpM", "boothName": "5xDpSAFJIR8fU9zX", "boundItemIds": ["45IFCac4YbZ4X5Of", "iu2PiCQ8jkFbq2Iz", "K84XqKUOxI5CS0XI"], "categoryPath": "Nk4oMyM8frQqwlIj", "clazz": "4XbP9bt66QjxFsHA", "createdAt": "1994-11-25T00:00:00Z", "description": "kPzEciRGtFL2tD1G", "displayOrder": 51, "entitlementType": "CONSUMABLE", "ext": {"7ncdONN3N4tQqbeo": {}, "nydoHiKIr3facA9y": {}, "rUTjcnCNXww7LCTx": {}}, "features": ["SGdbkEWQjX2GyGfk", "Rv3SftWv6WU9AAdD", "uDYe1wkLASvDJjQJ"], "fresh": true, "images": [{"as": "tioRBEUeLaeozdHY", "caption": "3kF4BgZOuXKXv8y1", "height": 43, "imageUrl": "yus8kciEZSg3NYiD", "smallImageUrl": "gfSNT6kAaYvw7An6", "width": 41}, {"as": "TQ4XxG52CAu3qSxG", "caption": "4WUhQRBi0yiGjoLh", "height": 77, "imageUrl": "oziQp2nYhaKMNbAB", "smallImageUrl": "2pR0nKfavgh0QFeT", "width": 34}, {"as": "i4TD4LQtF0yRL0t5", "caption": "RsnvpJU19EAzvu7i", "height": 95, "imageUrl": "rHz7TxrBikx7LJ4w", "smallImageUrl": "ZxnHGLYpWrlgTPRi", "width": 10}], "itemId": "E9Gcb5diB3ujRYjk", "itemIds": ["o4NOqwpKF9LPIuvW", "Cqp09n8mWIxfX4Xz", "Yg1ObQoOQYVdDDTa"], "itemQty": {"8FTjazMMINgfsYzp": 58, "7FxXSBxzBfmXO0ry": 30, "ZFRM8cxeZ47iG7ed": 69}, "itemType": "BUNDLE", "language": "ZtFAVL9CqYh1JWgl", "listable": false, "localExt": {"bBFTGgfVZNdLAamE": {}, "GnvQFvxXXk6FQFq4": {}, "EeHesux6Q8WkMPsc": {}}, "longDescription": "8BEcxkh2FqYqUrBG", "lootBoxConfig": {"rewardCount": 38, "rewards": [{"lootBoxItems": [{"count": 16, "duration": 5, "endDate": "1981-05-28T00:00:00Z", "itemId": "PrGd0vtFaiMTIb0E", "itemSku": "BRWlhNYKetyOQvWs", "itemType": "nTZfM79catLH9rom"}, {"count": 30, "duration": 20, "endDate": "1975-03-03T00:00:00Z", "itemId": "c9cFRv6GPEhXgnTb", "itemSku": "DALREnik6IcZjjoS", "itemType": "uQQgty4gGE3ldQ2m"}, {"count": 33, "duration": 84, "endDate": "1984-01-19T00:00:00Z", "itemId": "gBsnmMO5XChoVsvd", "itemSku": "VzJ4zymflWxjyRnw", "itemType": "E1gc87mgQQObtM5Z"}], "name": "PvWxzTfkh6rjl0MA", "odds": 0.8137620730017897, "type": "REWARD", "weight": 86}, {"lootBoxItems": [{"count": 67, "duration": 48, "endDate": "1975-03-26T00:00:00Z", "itemId": "kMXteD7WgKHEme0x", "itemSku": "AUMyc8yBvzWsTE7F", "itemType": "kjjxwTVCGm040jxF"}, {"count": 59, "duration": 38, "endDate": "1982-06-17T00:00:00Z", "itemId": "8RhjlvwGJMzj4bJc", "itemSku": "YWYbFrGRCTyAqkvc", "itemType": "fgjAOp1SpYbb6VoF"}, {"count": 0, "duration": 11, "endDate": "1985-04-07T00:00:00Z", "itemId": "1g2mxabWLIXomJmZ", "itemSku": "6Q8SFsGH3lEJ8vmf", "itemType": "g9e21LgmeRsCuThr"}], "name": "MEBMiHV7K8O9Gs7l", "odds": 0.8827598397314957, "type": "REWARD_GROUP", "weight": 91}, {"lootBoxItems": [{"count": 24, "duration": 6, "endDate": "1984-04-26T00:00:00Z", "itemId": "f0LaSRUHQK3AnqaZ", "itemSku": "rXBrFrjSrgIPZJPb", "itemType": "LS3qqk0mXXC1DJCF"}, {"count": 59, "duration": 5, "endDate": "1986-12-13T00:00:00Z", "itemId": "VBH5xfUPlCGgEhj9", "itemSku": "z5gnVM782jTcem0f", "itemType": "AaypxG5ZyitDIshz"}, {"count": 56, "duration": 51, "endDate": "1981-06-01T00:00:00Z", "itemId": "xE6bRNyJhb2xMR8M", "itemSku": "a6uLkrYHkKnWlfWR", "itemType": "9ZUaUCnG99nP5Klz"}], "name": "4CLUymKfjiRnbxvx", "odds": 0.050775191434704436, "type": "REWARD_GROUP", "weight": 58}], "rollFunction": "DEFAULT"}, "maxCount": 44, "maxCountPerUser": 2, "name": "zN2IbTkBVjTgqzKY", "namespace": "jhFnwOMZ35gTD2JH", "optionBoxConfig": {"boxItems": [{"count": 86, "duration": 87, "endDate": "1977-05-20T00:00:00Z", "itemId": "x8lPpOTUwDKfRQSg", "itemSku": "QSx2P6ivNhWbjFWy", "itemType": "Ykvh4POnYpl1P6xD"}, {"count": 75, "duration": 83, "endDate": "1990-01-04T00:00:00Z", "itemId": "1AQSrqcBZRrxGZZv", "itemSku": "ZTRsbT7TffWuvJNH", "itemType": "xpUj6eSombxTrtfg"}, {"count": 48, "duration": 66, "endDate": "1988-06-22T00:00:00Z", "itemId": "HxX95cOicoXQYzlC", "itemSku": "iHBpG5uGzr4oew4V", "itemType": "d4WkYZfx1FyCxtki"}]}, "purchasable": false, "purchaseCondition": {"conditionGroups": [{"operator": "and", "predicates": [{"anyOf": 0, "comparison": "excludes", "name": "abBx1hK4lAnZzggy", "predicateType": "SeasonTierPredicate", "value": "UJ5gAV7WXkOKHU9g", "values": ["Vxx3ymp2ICSXvc33", "HmK09BoJHnSMdBFO", "IJ3AklHt68Ng72Bf"]}, {"anyOf": 61, "comparison": "is", "name": "JgsEZHv5pWyGkME5", "predicateType": "SeasonPassPredicate", "value": "a7exGmGjsPJGXXJw", "values": ["0K5C42iANHLE3WJ4", "syUdXmJCXr1X4tGA", "qZ8x4EDVHG2BeEe6"]}, {"anyOf": 32, "comparison": "isLessThan", "name": "YENcJD643I8QkVHu", "predicateType": "SeasonTierPredicate", "value": "8vTHtcGQUaBxbims", "values": ["lkf8dr46Fz6S9oJe", "epG9vusTBecYxoMl", "DL7hsysyVVww8UA9"]}]}, {"operator": "and", "predicates": [{"anyOf": 99, "comparison": "isGreaterThan", "name": "CLLCyHNbDzgaKE84", "predicateType": "SeasonTierPredicate", "value": "NuCfrWzHu1W2GP7y", "values": ["pfTsCWn7RzG1dmCZ", "SdgaKCQVy7wgIam8", "KZNCdKS1YhMjq9mL"]}, {"anyOf": 18, "comparison": "isLessThanOrEqual", "name": "w8puAqSTnzCMMq2X", "predicateType": "SeasonTierPredicate", "value": "s1svc2VKpOKxySFZ", "values": ["G3FPXX47Cd2GtAQf", "oJd0VANBiDAg7mD9", "nly0C7pwy2PiB0rk"]}, {"anyOf": 66, "comparison": "is", "name": "aTY9c9d9tBOZ9XLn", "predicateType": "SeasonPassPredicate", "value": "JhC3zreMw2zUlDIH", "values": ["vIZROn4jFEjyll2f", "FJJOowyZlGRKppY9", "i7ercaRfo9hamu0K"]}]}, {"operator": "or", "predicates": [{"anyOf": 59, "comparison": "isGreaterThanOrEqual", "name": "uMdC4WBEoSZ8ht0k", "predicateType": "SeasonTierPredicate", "value": "kMBlShowezE5pdkY", "values": ["JUVouS6t2TL2L9MQ", "4BBRyGLkfOuJcKyY", "fNYsbvX2kmNu4kZ9"]}, {"anyOf": 33, "comparison": "is", "name": "s1Tsdzvev4XuHN8g", "predicateType": "SeasonPassPredicate", "value": "HWTjmF0D6RJyz0YP", "values": ["ABjGzAStmPDwLGXj", "aIZldff9QY3eUDNt", "g1Qz2K8zue0V98g3"]}, {"anyOf": 6, "comparison": "isGreaterThanOrEqual", "name": "vW25iH25bVwtFFDI", "predicateType": "EntitlementPredicate", "value": "Q1SdQ2sHebYi4kMu", "values": ["p6bg7Qo9RYXOfpMU", "pzxXr5BJ53gHeDlB", "TBXvzmAIg0rUVIOR"]}]}]}, "recurring": {"cycle": "QUARTERLY", "fixedFreeDays": 82, "fixedTrialCycles": 59, "graceDays": 61}, "region": "jCnNJrOmXPzPlut6", "regionData": [{"currencyCode": "HmIjaQ62XnuhwNKl", "currencyNamespace": "ihInmSldDt1oAvfQ", "currencyType": "VIRTUAL", "discountAmount": 24, "discountExpireAt": "1978-10-11T00:00:00Z", "discountPercentage": 27, "discountPurchaseAt": "1974-07-12T00:00:00Z", "discountedPrice": 7, "expireAt": "1981-08-31T00:00:00Z", "price": 25, "purchaseAt": "1993-02-14T00:00:00Z", "trialPrice": 71}, {"currencyCode": "NIjzcYtxBocN9VUX", "currencyNamespace": "2PXS8YqI6Xs8rkB9", "currencyType": "VIRTUAL", "discountAmount": 68, "discountExpireAt": "1996-03-05T00:00:00Z", "discountPercentage": 20, "discountPurchaseAt": "1992-12-05T00:00:00Z", "discountedPrice": 64, "expireAt": "1995-03-17T00:00:00Z", "price": 36, "purchaseAt": "1996-07-19T00:00:00Z", "trialPrice": 47}, {"currencyCode": "xwWgfUi1ZZOZwQ2w", "currencyNamespace": "OMqfcQpnLMNNtHZ5", "currencyType": "REAL", "discountAmount": 40, "discountExpireAt": "1982-04-27T00:00:00Z", "discountPercentage": 72, "discountPurchaseAt": "1996-08-14T00:00:00Z", "discountedPrice": 26, "expireAt": "1973-03-08T00:00:00Z", "price": 85, "purchaseAt": "1976-08-02T00:00:00Z", "trialPrice": 81}], "saleConfig": {"currencyCode": "m9TRbLu9HjbJCoQy", "price": 82}, "seasonType": "TIER", "sectionExclusive": true, "sellable": true, "sku": "2lmUPWwVavUobs7E", "stackable": false, "status": "INACTIVE", "tags": ["5OsLvu2A0n8wY9qv", "MCQZ4TFYP41A3uX0", "vjQthuiGoCsl25ZG"], "targetCurrencyCode": "Yl4QZtwchkUm3bwe", "targetItemId": "HaRO7zwpVr0fgpVL", "targetNamespace": "SNALSTCEdZeP3mK3", "thumbnailUrl": "eEHqV4F9N9VNq2O6", "title": "grGrM01V26MAHJvl", "updatedAt": "1987-08-17T00:00:00Z", "useCount": 100}, "namespace": "7ur0c6cv1O38vdOA", "order": {"currency": {"currencyCode": "FFJEXmzWYI6S33a9", "currencySymbol": "XVkqfR1KWns5PcBr", "currencyType": "REAL", "decimals": 50, "namespace": "WvbJZkzHCJfCKL6K"}, "ext": {"euNR14yFycI5GJ0f": {}, "DM7ItqCvloFNXUMb": {}, "yFGc8koEeMRldt50": {}}, "free": false}, "source": "GIFT"}, "script": "04vYlF9leGS6l0E8", "type": "grantDays"}' \
    > test.out 2>&1
eval_tap $? 3 'TestFulfillmentScriptEval' test.out

#- 4 GetFulfillmentScript
samples/cli/sample-apps Platform getFulfillmentScript \
    --id 'JgjD2JSBHUhFyfOH' \
    > test.out 2>&1
eval_tap $? 4 'GetFulfillmentScript' test.out

#- 5 CreateFulfillmentScript
samples/cli/sample-apps Platform createFulfillmentScript \
    --id 'LrwexOqg2XR2ihPt' \
    --body '{"grantDays": "orMLm6G937AeQM3L"}' \
    > test.out 2>&1
eval_tap $? 5 'CreateFulfillmentScript' test.out

#- 6 DeleteFulfillmentScript
samples/cli/sample-apps Platform deleteFulfillmentScript \
    --id 'OZnlhYiGWCMSPP2e' \
    > test.out 2>&1
eval_tap $? 6 'DeleteFulfillmentScript' test.out

#- 7 UpdateFulfillmentScript
samples/cli/sample-apps Platform updateFulfillmentScript \
    --id 'lQH3olmyRGl2cabd' \
    --body '{"grantDays": "Z1sVtntpyJDXzNgn"}' \
    > test.out 2>&1
eval_tap $? 7 'UpdateFulfillmentScript' test.out

#- 8 ListItemTypeConfigs
samples/cli/sample-apps Platform listItemTypeConfigs \
    > test.out 2>&1
eval_tap $? 8 'ListItemTypeConfigs' test.out

#- 9 CreateItemTypeConfig
samples/cli/sample-apps Platform createItemTypeConfig \
    --body '{"clazz": "KOpxaAFonbFZRSJY", "dryRun": true, "fulfillmentUrl": "UJrmJLaHt8gc0W5Q", "itemType": "LOOTBOX", "purchaseConditionUrl": "3o5N4NQDAgC5VXb8"}' \
    > test.out 2>&1
eval_tap $? 9 'CreateItemTypeConfig' test.out

#- 10 SearchItemTypeConfig
samples/cli/sample-apps Platform searchItemTypeConfig \
    --clazz 'Je92tHfwV17jsEEP' \
    --itemType 'SUBSCRIPTION' \
    > test.out 2>&1
eval_tap $? 10 'SearchItemTypeConfig' test.out

#- 11 GetItemTypeConfig
samples/cli/sample-apps Platform getItemTypeConfig \
    --id 'Q5fHNz7PSWv2HPW5' \
    > test.out 2>&1
eval_tap $? 11 'GetItemTypeConfig' test.out

#- 12 UpdateItemTypeConfig
samples/cli/sample-apps Platform updateItemTypeConfig \
    --id 'DUfXsFRNpLoAopbJ' \
    --body '{"clazz": "UsUx7FeFRROOqgkP", "dryRun": false, "fulfillmentUrl": "GxdUoVLWVjPvZVIR", "purchaseConditionUrl": "ddfXBrKTVmgQRGmO"}' \
    > test.out 2>&1
eval_tap $? 12 'UpdateItemTypeConfig' test.out

#- 13 DeleteItemTypeConfig
samples/cli/sample-apps Platform deleteItemTypeConfig \
    --id 'Rq7QHdg0Cjvxf6qN' \
    > test.out 2>&1
eval_tap $? 13 'DeleteItemTypeConfig' test.out

#- 14 QueryCampaigns
samples/cli/sample-apps Platform queryCampaigns \
    --namespace $AB_NAMESPACE \
    --limit '7' \
    --name 'Kqbp8qiITfdvVvGR' \
    --offset '37' \
    --tag 'DY0BQUB5GzFqxYnK' \
    > test.out 2>&1
eval_tap $? 14 'QueryCampaigns' test.out

#- 15 CreateCampaign
samples/cli/sample-apps Platform createCampaign \
    --namespace $AB_NAMESPACE \
    --body '{"description": "gFKmaopjohyx9pMH", "items": [{"extraSubscriptionDays": 52, "itemId": "gHdqEVsxiZkT9lKd", "itemName": "CR5QDhuSZQ1T11qd", "quantity": 25}, {"extraSubscriptionDays": 6, "itemId": "pUaIoJ2OspLuc5VH", "itemName": "xDNh1BeDbUKLXjPu", "quantity": 95}, {"extraSubscriptionDays": 52, "itemId": "ESqXiODIcNXr0ZeY", "itemName": "emy35GionMvHGxgS", "quantity": 5}], "maxRedeemCountPerCampaignPerUser": 49, "maxRedeemCountPerCode": 1, "maxRedeemCountPerCodePerUser": 19, "maxSaleCount": 5, "name": "Yw4ynOYs8DzCa3nD", "redeemEnd": "1978-07-13T00:00:00Z", "redeemStart": "1994-04-14T00:00:00Z", "redeemType": "ITEM", "status": "INACTIVE", "tags": ["8WY9mIHyyb5BHzXF", "7m07Hwjj5GuP5XiS", "qJKLwAW3n0K81Lqq"], "type": "REDEMPTION"}' \
    > test.out 2>&1
eval_tap $? 15 'CreateCampaign' test.out

#- 16 GetCampaign
samples/cli/sample-apps Platform getCampaign \
    --campaignId 'bppvDxEJPzbEnh5e' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'GetCampaign' test.out

#- 17 UpdateCampaign
samples/cli/sample-apps Platform updateCampaign \
    --campaignId 'dWYM6FwQTJB4MB2M' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "G72n8O6dhKLXnD3x", "items": [{"extraSubscriptionDays": 60, "itemId": "6A4oHie4bZNshNnL", "itemName": "TX7d3k91svDsZTwV", "quantity": 33}, {"extraSubscriptionDays": 66, "itemId": "Fly2wvijB09oNYlO", "itemName": "jS0lEwD8FoBV7SUs", "quantity": 70}, {"extraSubscriptionDays": 66, "itemId": "Tp4z8r8j79AgpC5D", "itemName": "f0V7oFteOiiNoROH", "quantity": 33}], "maxRedeemCountPerCampaignPerUser": 47, "maxRedeemCountPerCode": 86, "maxRedeemCountPerCodePerUser": 59, "maxSaleCount": 78, "name": "wopUk1okzgRcWb11", "redeemEnd": "1971-01-25T00:00:00Z", "redeemStart": "1985-09-25T00:00:00Z", "redeemType": "ITEM", "status": "ACTIVE", "tags": ["oyp3mtJxf2kcXsJP", "a075OPmbNN1tf3oU", "5e1bd4bRK4A6xaed"]}' \
    > test.out 2>&1
eval_tap $? 17 'UpdateCampaign' test.out

#- 18 GetCampaignDynamic
samples/cli/sample-apps Platform getCampaignDynamic \
    --campaignId 'aNZ1DgN4ZmVbxssi' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'GetCampaignDynamic' test.out

#- 19 GetRootCategories
samples/cli/sample-apps Platform getRootCategories \
    --namespace $AB_NAMESPACE \
    --storeId 'LpcQn5AWuViODhiL' \
    > test.out 2>&1
eval_tap $? 19 'GetRootCategories' test.out

#- 20 CreateCategory
samples/cli/sample-apps Platform createCategory \
    --namespace $AB_NAMESPACE \
    --storeId 'SQg7YQKHw2RQnADU' \
    --body '{"categoryPath": "pBaUIsKPB5XPZOX2", "localizationDisplayNames": {"lbzZ1KDJGuHqnUtF": "BJRaWJbyvE4xE0ka", "2NhrNI4mB9RrGj52": "nioh7YzakM7eQBw3", "lOvWaxqbTnphaDRB": "tyiWaXOvDlxCD9ei"}}' \
    > test.out 2>&1
eval_tap $? 20 'CreateCategory' test.out

#- 21 ListCategoriesBasic
samples/cli/sample-apps Platform listCategoriesBasic \
    --namespace $AB_NAMESPACE \
    --storeId 'qEO3AbEvmqvaxfx9' \
    > test.out 2>&1
eval_tap $? 21 'ListCategoriesBasic' test.out

#- 22 GetCategory
samples/cli/sample-apps Platform getCategory \
    --categoryPath 'qWEd8WOW15cg5jqV' \
    --namespace $AB_NAMESPACE \
    --storeId '55DC3AwwFwqbtx8p' \
    > test.out 2>&1
eval_tap $? 22 'GetCategory' test.out

#- 23 UpdateCategory
samples/cli/sample-apps Platform updateCategory \
    --categoryPath 'UuyARZsbMa6cTpYN' \
    --namespace $AB_NAMESPACE \
    --storeId 'ZWlqbmRsOcSIJc2c' \
    --body '{"localizationDisplayNames": {"eQZftzKBbfZE3d0p": "6hXsd6VoA9X8zJae", "NKomctUlkx1vPw2U": "4AbQtFfJkOLjy0jI", "oZPYSgUGhwCUhTGN": "ZOKYCz7S9aJxj2HC"}}' \
    > test.out 2>&1
eval_tap $? 23 'UpdateCategory' test.out

#- 24 DeleteCategory
samples/cli/sample-apps Platform deleteCategory \
    --categoryPath '68NLDSEYv9yGnqtb' \
    --namespace $AB_NAMESPACE \
    --storeId 'lLplxPcIf4Lh0Z8l' \
    > test.out 2>&1
eval_tap $? 24 'DeleteCategory' test.out

#- 25 GetChildCategories
samples/cli/sample-apps Platform getChildCategories \
    --categoryPath 'bYQStKCL4VSYJCtv' \
    --namespace $AB_NAMESPACE \
    --storeId 'pdt2h7EBX8sDkgNw' \
    > test.out 2>&1
eval_tap $? 25 'GetChildCategories' test.out

#- 26 GetDescendantCategories
samples/cli/sample-apps Platform getDescendantCategories \
    --categoryPath 'Cr6a5T1ffdIUmuwL' \
    --namespace $AB_NAMESPACE \
    --storeId 'V5FbialrdgyFX3Od' \
    > test.out 2>&1
eval_tap $? 26 'GetDescendantCategories' test.out

#- 27 QueryCodes
samples/cli/sample-apps Platform queryCodes \
    --campaignId 'wkJNc7imWf2nUt5o' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --batchNo '37' \
    --code 'NQQpNnTIw4gdnmmx' \
    --limit '5' \
    --offset '88' \
    > test.out 2>&1
eval_tap $? 27 'QueryCodes' test.out

#- 28 CreateCodes
samples/cli/sample-apps Platform createCodes \
    --campaignId 'JVYp6KUpl0l0xpCy' \
    --namespace $AB_NAMESPACE \
    --body '{"quantity": 56}' \
    > test.out 2>&1
eval_tap $? 28 'CreateCodes' test.out

#- 29 Download
samples/cli/sample-apps Platform download \
    --campaignId 'ZTTrdodsbUNqOIad' \
    --namespace $AB_NAMESPACE \
    --batchNo '49' \
    > test.out 2>&1
eval_tap $? 29 'Download' test.out

#- 30 BulkDisableCodes
samples/cli/sample-apps Platform bulkDisableCodes \
    --campaignId 'hpaMPJBIRkgmOjqv' \
    --namespace $AB_NAMESPACE \
    --batchNo '75' \
    > test.out 2>&1
eval_tap $? 30 'BulkDisableCodes' test.out

#- 31 BulkEnableCodes
samples/cli/sample-apps Platform bulkEnableCodes \
    --campaignId 'YCEJ3ElMnRdb0v3W' \
    --namespace $AB_NAMESPACE \
    --batchNo '99' \
    > test.out 2>&1
eval_tap $? 31 'BulkEnableCodes' test.out

#- 32 QueryRedeemHistory
samples/cli/sample-apps Platform queryRedeemHistory \
    --campaignId 'qa7DxrJBvOQfATYX' \
    --namespace $AB_NAMESPACE \
    --code 'RwjmbyDpKNjbItwM' \
    --limit '79' \
    --offset '60' \
    --userId 'tm6q0zBKlkT57NPB' \
    > test.out 2>&1
eval_tap $? 32 'QueryRedeemHistory' test.out

#- 33 GetCode
samples/cli/sample-apps Platform getCode \
    --code 'lIAzQCkmulHXMe7B' \
    --namespace $AB_NAMESPACE \
    --redeemable 'true' \
    > test.out 2>&1
eval_tap $? 33 'GetCode' test.out

#- 34 DisableCode
samples/cli/sample-apps Platform disableCode \
    --code 'HPuoJKXupfVAiKG5' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 34 'DisableCode' test.out

#- 35 EnableCode
samples/cli/sample-apps Platform enableCode \
    --code 'MuCkFsORkU5qFUlB' \
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
    --body '{"grpcServerAddress": "quVZSTyk3lky8sjq"}' \
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
    --body '{"currencyCode": "cXaEDJ8qvWfdq3AD", "currencySymbol": "xs60WcPtsnrGB1HB", "currencyType": "VIRTUAL", "decimals": 17, "localizationDescriptions": {"pDrQrYh3acjVFV8Y": "9JdesMTaryyEWd5K", "iPcX0HA477f2KbqG": "9PN3fgerJvzl5oVL", "0ouTss8nfUf95uIb": "YZW63VIfQWVCbBIN"}}' \
    > test.out 2>&1
eval_tap $? 40 'CreateCurrency' test.out

#- 41 UpdateCurrency
samples/cli/sample-apps Platform updateCurrency \
    --currencyCode 'OsbUvgkGjW3o0kBY' \
    --namespace $AB_NAMESPACE \
    --body '{"localizationDescriptions": {"QYenidyNSoxOJOmZ": "G6b1Dojinqmse0lC", "jDlK2anA6nCteuXK": "FJbm50cP7nTL944s", "D0SH7uDym0aQidOl": "k5JyNLj9okNZffzp"}}' \
    > test.out 2>&1
eval_tap $? 41 'UpdateCurrency' test.out

#- 42 DeleteCurrency
samples/cli/sample-apps Platform deleteCurrency \
    --currencyCode 'w0MXOM3by7gHqi48' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 42 'DeleteCurrency' test.out

#- 43 GetCurrencyConfig
samples/cli/sample-apps Platform getCurrencyConfig \
    --currencyCode 'gf8JOQiSe7wieMrF' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 43 'GetCurrencyConfig' test.out

#- 44 GetCurrencySummary
samples/cli/sample-apps Platform getCurrencySummary \
    --currencyCode 'U0G6IHqEgEYZhJAl' \
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
    --body '{"data": [{"id": "cnYeW92iTGv98B8q", "rewards": [{"currency": {"currencyCode": "MU1TcXtVTZSJPUcm", "namespace": "8PB02S23wsIgvIX4"}, "item": {"itemId": "Nj1x4wPxaBxlYkHf", "itemSku": "We5Za56OihUWTo09", "itemType": "fMaRFsnv5UnaDLCM"}, "quantity": 3, "type": "ITEM"}, {"currency": {"currencyCode": "dWGT7aH6QoDX1P8t", "namespace": "UrYeERI8EazViwyX"}, "item": {"itemId": "L4F9VDDNQwEX28Ds", "itemSku": "a8n47j93yYl9YWJR", "itemType": "h7jiWQMEB9FRo7SY"}, "quantity": 23, "type": "CURRENCY"}, {"currency": {"currencyCode": "Jz7WyfJgNnUcwpm4", "namespace": "HkJsq2HzzlyQNIPo"}, "item": {"itemId": "eDM5ZqtmDh727d9I", "itemSku": "xlE4AIQ5mZZiIShf", "itemType": "rzUfzT3GF8Jpol5j"}, "quantity": 9, "type": "CURRENCY"}]}, {"id": "vxRxdM78miKEL8cy", "rewards": [{"currency": {"currencyCode": "sl7WmeqZ2PERenx2", "namespace": "E02gFJ12GNxVnrEd"}, "item": {"itemId": "yIKgXu5RCdzOIwgx", "itemSku": "SMJbJYlnL0gDqjna", "itemType": "nYE7VyHN72FFwpWh"}, "quantity": 2, "type": "ITEM"}, {"currency": {"currencyCode": "nlUKANAdbHGGYH17", "namespace": "FThNhuK9KjWMHV20"}, "item": {"itemId": "LK2VYgEhLCGITKuu", "itemSku": "vlFIVlrpFZS8so9e", "itemType": "A3OlqkWaCu3owq7X"}, "quantity": 41, "type": "ITEM"}, {"currency": {"currencyCode": "MYXIjEGxdzqZa7CS", "namespace": "oWpSoyTq6cdWpgZN"}, "item": {"itemId": "nCq6SWQCfDm3X5Gx", "itemSku": "I75ydMDR8oEIMzXP", "itemType": "w0EIY2xlVVMJeETW"}, "quantity": 8, "type": "CURRENCY"}]}, {"id": "gb34B0INCRAiWMpc", "rewards": [{"currency": {"currencyCode": "XBnWbz0sFMiRjdfC", "namespace": "cFzbdDuYgTH9hbsR"}, "item": {"itemId": "t6YTG151ju4Xvlj1", "itemSku": "Yc4GtSNhfciNcxGR", "itemType": "5WexOdi4lu8t0vJr"}, "quantity": 73, "type": "ITEM"}, {"currency": {"currencyCode": "aIXYxBF3EFeB5aPy", "namespace": "n1YyHodm8CCCWxzd"}, "item": {"itemId": "V7q0ibiJkBHGXq7R", "itemSku": "T8ZtlfEkJz3bURf2", "itemType": "xtr6S8jRLke8p7TF"}, "quantity": 75, "type": "CURRENCY"}, {"currency": {"currencyCode": "a8uFoX3RwWmgwcCX", "namespace": "loZN6LlF60VznfCm"}, "item": {"itemId": "OZqqh0rACE1bRXby", "itemSku": "U7r9UJhCER4wEkVk", "itemType": "KJ5OnQUajPi0DyAx"}, "quantity": 17, "type": "CURRENCY"}]}]}' \
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
    --body '{"data": [{"platform": "EPICGAMES", "platformDlcIdMap": {"tX9GoIsSHBmPkSkn": "yWBcOMg7FfoCAvLo", "J2IPxcCKgXOWVeYr": "cxZIrv5GHt9s0Qk5", "LzVnMRR4zKsNmMKC": "8oZpXJPYUxrd8ZpZ"}}, {"platform": "EPICGAMES", "platformDlcIdMap": {"v9w6ZUcU71YGAuDj": "c9Dl39glpB1LZjug", "ZQArTG0pNzG2oGb4": "7TdnOx5hbtCxn5ER", "n0oufZMu8I3zml7B": "8acciZa6PLVtZ0dL"}}, {"platform": "EPICGAMES", "platformDlcIdMap": {"2boQjShJAO3wcxDf": "Ugy3RnEJ4DiV5WVU", "CbQ1FxYmZQufUK9e": "eHKpCZHse0e79RSr", "4Dn7XVvJaKYUzbqv": "1z81qE5bWGeQBvl6"}}]}' \
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
    --appType 'SOFTWARE' \
    --entitlementClazz 'SUBSCRIPTION' \
    --entitlementName 'RU1tzyhlcDSIu27e' \
    --itemId '["RlVAXEKR2jXZQ6W6", "xOpfVaS42lLSzYx4", "9d2jX7Z61zrdccBP"]' \
    --limit '7' \
    --offset '67' \
    --userId '3luPuUIWK8tw50ob' \
    > test.out 2>&1
eval_tap $? 51 'QueryEntitlements' test.out

#- 52 QueryEntitlements1
samples/cli/sample-apps Platform queryEntitlements1 \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --itemIds '["MhpuKsff9B54O1dv", "IXXL0HxylLy2W3NO", "rCiVw9CUDGKkg3v5"]' \
    --limit '86' \
    --offset '63' \
    > test.out 2>&1
eval_tap $? 52 'QueryEntitlements1' test.out

#- 53 GrantEntitlements
samples/cli/sample-apps Platform grantEntitlements \
    --namespace $AB_NAMESPACE \
    --body '{"entitlementGrantList": [{"endDate": "1986-10-16T00:00:00Z", "grantedCode": "xW3dBodCb2wCkZ4G", "itemId": "NQIL6fpSWyllgfRJ", "itemNamespace": "IDYNL4QxAIeojT3u", "language": "nKDD_npda-uc", "quantity": 34, "region": "IgOmAOy5mV8CDFLa", "source": "PROMOTION", "startDate": "1988-10-11T00:00:00Z", "storeId": "u6aJnBGr2tQqyiuP"}, {"endDate": "1997-08-22T00:00:00Z", "grantedCode": "kGZEsLgaT2IMAiA0", "itemId": "tQmjjCVSigmQ4C4v", "itemNamespace": "qiT2sYolN9II4L3d", "language": "fha_155", "quantity": 40, "region": "NOne9s8WWIEYMCq8", "source": "REDEEM_CODE", "startDate": "1986-03-07T00:00:00Z", "storeId": "34yNksLeQVLlogyA"}, {"endDate": "1998-01-06T00:00:00Z", "grantedCode": "eaBa954HAhpq0Fq2", "itemId": "93TmzaQcFtnGuQxq", "itemNamespace": "pKElfmeyTvuag0tw", "language": "zM", "quantity": 97, "region": "Go0kCP8NjoWuy8OJ", "source": "ACHIEVEMENT", "startDate": "1978-02-03T00:00:00Z", "storeId": "sXWP3bLJt0pkO9xi"}], "userIds": ["V2qVXJpdhlmLD02K", "2O5H5LAIWpzJansq", "NV6C2rlwEZ9D0cLb"]}' \
    > test.out 2>&1
eval_tap $? 53 'GrantEntitlements' test.out

#- 54 RevokeEntitlements
samples/cli/sample-apps Platform revokeEntitlements \
    --namespace $AB_NAMESPACE \
    --body '["5Raj6DhhOdzP9EXV", "QkuGMNgnp9eZ7BEZ", "SHS06J6xhlnTVW4c"]' \
    > test.out 2>&1
eval_tap $? 54 'RevokeEntitlements' test.out

#- 55 GetEntitlement
samples/cli/sample-apps Platform getEntitlement \
    --entitlementId 'gLoGNYT4H1LaiNB4' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 55 'GetEntitlement' test.out

#- 56 QueryFulfillmentHistories
samples/cli/sample-apps Platform queryFulfillmentHistories \
    --namespace $AB_NAMESPACE \
    --limit '49' \
    --offset '25' \
    --status 'FAIL' \
    --userId 'HLt2JHFcBII2wtTN' \
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
    --body '{"bundleId": "plTEm0Jk6ONIFxup", "password": "FJ3hILKI91Qad32u"}' \
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
    --body '{"sandboxId": "J9T1BI5x0NrCZCpm"}' \
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
    --body '{"applicationName": "UczNpQlawCc2kiHV", "serviceAccountId": "j211jTorEHUDUWN6"}' \
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
    --body '{"data": [{"itemIdentity": "jX1vZDTvNdmIaLhN", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"1QzlFmZxcLsPsH7r": "bHu9rEMQ1Uun819H", "QZSrrDbLM47yqzGQ": "omXSQo6IZJMr7naL", "99MLM6p8sxlfcSiG": "hzrcgq5CSRgVPWvP"}}, {"itemIdentity": "ov0TihT5znYSpa0V", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"JH7oBE4R2GDsxmFN": "Xp8oc9UKg5MC0HWh", "KaM4xImNfvqtybQf": "6M0WrGZmKORJLDnd", "JfqpnoFJrIswZfCz": "sKSamJKbRxQT1jFb"}}, {"itemIdentity": "YtSwupG5DabwS109", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"IvO4WR87AUoRyBbV": "GUnFOzvHpa6YxmA6", "eGeThS7yKTPg7Ho4": "LiCxuHxkpj7Yyuem", "vrmvGJLbNMVJtyKk": "txjbrSmRA7Jtgty0"}}]}' \
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
    --body '{"environment": "MgkWQMf3CiVvb4Fu"}' \
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
    --body '{"appId": "yJXTrhWwsewg40FL", "publisherAuthenticationKey": "GzQAJcgCXvR1k5Kj"}' \
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
    --body '{"clientId": "q6MpxSWsNTgBbucr", "clientSecret": "wJbpFhhHwWSeLDi8", "organizationId": "9eL40EKQFZrGuBoE"}' \
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
    --body '{"relyingPartyCert": "mUIePPKLmaGFXcG9"}' \
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
    --password '1NBE2aa1qFuFQgYu' \
    > test.out 2>&1
eval_tap $? 82 'UpdateXblBPCertFile' test.out

#- 83 DownloadInvoiceDetails
samples/cli/sample-apps Platform downloadInvoiceDetails \
    --namespace $AB_NAMESPACE \
    --feature 'DxIboEtfEURX8i0h' \
    --itemId 'LqMXE0dvIvOIoHiL' \
    --itemType 'SEASON' \
    --endTime 'rQD81sRfSJe1olbO' \
    --startTime 'zl4YYG3hVOgrmXKh' \
    > test.out 2>&1
eval_tap $? 83 'DownloadInvoiceDetails' test.out

#- 84 GenerateInvoiceSummary
samples/cli/sample-apps Platform generateInvoiceSummary \
    --namespace $AB_NAMESPACE \
    --feature 'F9Wgk22ekSY6nXot' \
    --itemId 'DS8SllWcX2VrRpJ1' \
    --itemType 'APP' \
    --endTime 'bSmZyN1Hw4uFdc1A' \
    --startTime 'BVR57FmhESrLdyzf' \
    > test.out 2>&1
eval_tap $? 84 'GenerateInvoiceSummary' test.out

#- 85 SyncInGameItem
samples/cli/sample-apps Platform syncInGameItem \
    --namespace $AB_NAMESPACE \
    --storeId 'AsTD44QBFt6rkvnK' \
    --body '{"categoryPath": "ftzibDEiXWgrD6SR", "targetItemId": "7u1BG5OsKQkbwBti", "targetNamespace": "wkSw6K0LuxxCjrMH"}' \
    > test.out 2>&1
eval_tap $? 85 'SyncInGameItem' test.out

#- 86 CreateItem
samples/cli/sample-apps Platform createItem \
    --namespace $AB_NAMESPACE \
    --storeId '9nV6gYIaPVPvPMPK' \
    --body '{"appId": "IFzF3OyfT8vvqYz6", "appType": "DLC", "baseAppId": "VqyiRruq6FOalsMf", "boothName": "LCpvxGQ2Fxxe68uu", "categoryPath": "3w20hnfYBbuRz7AA", "clazz": "y0o4H26klE7btzZr", "displayOrder": 67, "entitlementType": "DURABLE", "ext": {"hKMg57VzKSb9uRgO": {}, "rTiNK2Jn0MupYivR": {}, "9CN6QQNj7Tn4FAeS": {}}, "features": ["dwtREF0Dz3NQirqG", "u6byxi8AVqh6JFxU", "UNEFkq0dMLIBs2sd"], "images": [{"as": "Cuh93OCnUj298Ttb", "caption": "vYN7JToAnGX1b5sm", "height": 92, "imageUrl": "Nsj4eE6wfw3Ip3It", "smallImageUrl": "QnGCSY0djXCtxydQ", "width": 9}, {"as": "uw6ZkfSXL73rvBBn", "caption": "wDh1jnOKTao04Lp1", "height": 27, "imageUrl": "6G4wvkRgSAF6ez4p", "smallImageUrl": "RFCMkdeHWrhTeVsI", "width": 71}, {"as": "QkrekQLrXFUMQKDR", "caption": "avPisGThcjGBkd4g", "height": 48, "imageUrl": "rnXr7CcDKOtdYnPI", "smallImageUrl": "Ho1CUd5WmDYS4mdm", "width": 92}], "itemIds": ["PZ6CRpnakpWjE21T", "HUMxkKzG46lewbHm", "NvzQkFyRwARjrrOq"], "itemQty": {"cfvOfEcrnVKj3P2C": 76, "mt6q6sdcCy1tyfrO": 98, "upYZbvYVuq2UjmsQ": 2}, "itemType": "OPTIONBOX", "listable": true, "localizations": {"SeniNsTe8Uc2ZvPx": {"description": "6Ua2QekaxqqSxdnp", "localExt": {"WT6z5aoTg9065ZYB": {}, "saMksvxdHohD7y71": {}, "YFRGpJcVYuTQCjZz": {}}, "longDescription": "C5cSVIqFJpr6vlVS", "title": "JJfFrMePD3k2T496"}, "30DCtQy1Y0kQuO6E": {"description": "VAIJkd2C72NqK5ML", "localExt": {"RKw4MQegtrRIkssZ": {}, "dk5dpC9OavAQw1E5": {}, "9EJbMOjPcVx60baV": {}}, "longDescription": "lFFZFIv6hKLv9LPl", "title": "ZeAOeOUahzrzHCwM"}, "XxX8nwmivHZOCElV": {"description": "Dcmo1y9SFscYfIDh", "localExt": {"gy4FBuWmYs9S3pEd": {}, "VbETvtu9uTmxbjII": {}, "bVpVovCoCgeoCzbp": {}}, "longDescription": "rvByHtKh43tjDjcr", "title": "wSTaiyrhdHr5jRZm"}}, "lootBoxConfig": {"rewardCount": 15, "rewards": [{"lootBoxItems": [{"count": 17, "duration": 82, "endDate": "1984-09-11T00:00:00Z", "itemId": "KtOsF5fq9l6RnF58", "itemSku": "jUyoPNRAReDrXH8c", "itemType": "y2jVnLVGduJf0Bt9"}, {"count": 91, "duration": 68, "endDate": "1999-01-06T00:00:00Z", "itemId": "YylrIoaazqjpQqts", "itemSku": "tJ2MnQewAY61xzdj", "itemType": "ky9e39kWy6iy80c2"}, {"count": 80, "duration": 81, "endDate": "1978-03-16T00:00:00Z", "itemId": "YdPoFp0LtCBt6tuW", "itemSku": "I4jXIFZcKQuyJ6OX", "itemType": "heqCwAGKbZLlX287"}], "name": "Efkq1MlqXKwDcSqN", "odds": 0.6960536091747788, "type": "REWARD_GROUP", "weight": 30}, {"lootBoxItems": [{"count": 67, "duration": 58, "endDate": "1980-09-23T00:00:00Z", "itemId": "SU5Ey9zfchkh3N4s", "itemSku": "TOaIpzae6mpcy1zg", "itemType": "Qy9C6KWNDW3Drq53"}, {"count": 12, "duration": 58, "endDate": "1994-06-11T00:00:00Z", "itemId": "zZclYYKjRani7sYr", "itemSku": "8wKk0DUYwfdLNJWJ", "itemType": "wMM6UhH992pih0s5"}, {"count": 1, "duration": 9, "endDate": "1990-08-10T00:00:00Z", "itemId": "mPeF08FjLn88hTWE", "itemSku": "JaN1d2OLJV8xdpul", "itemType": "1kgvTccXDI6v5X84"}], "name": "GsvqL3bEO5AYPl1l", "odds": 0.6922115887997984, "type": "PROBABILITY_GROUP", "weight": 50}, {"lootBoxItems": [{"count": 59, "duration": 5, "endDate": "1987-02-25T00:00:00Z", "itemId": "Jj9oueyqIdAJzDkG", "itemSku": "mveernoUpYycbWiD", "itemType": "TkYoB5ehtzYb885g"}, {"count": 29, "duration": 34, "endDate": "1997-06-15T00:00:00Z", "itemId": "AFZwtheAuYh60X8i", "itemSku": "3FxnqtcWYgHYlX6A", "itemType": "Y6Bi20ouDgSiIvQZ"}, {"count": 38, "duration": 27, "endDate": "1979-02-07T00:00:00Z", "itemId": "JQBiGREpaQy8cIca", "itemSku": "589KZKWS1csS6UX0", "itemType": "aYai5jJRjgCh7CWM"}], "name": "tpH78RrKUT3NsXii", "odds": 0.003658199230815007, "type": "REWARD_GROUP", "weight": 12}], "rollFunction": "CUSTOM"}, "maxCount": 91, "maxCountPerUser": 85, "name": "q1HELCeMEDXJJM7M", "optionBoxConfig": {"boxItems": [{"count": 94, "duration": 24, "endDate": "1985-01-13T00:00:00Z", "itemId": "M6426F3YGUJAfnn6", "itemSku": "FzxZSBCMRFe3ucGB", "itemType": "zr6LmIis7KB7UA7P"}, {"count": 50, "duration": 84, "endDate": "1992-12-14T00:00:00Z", "itemId": "d3cDLlyRZcT7htvZ", "itemSku": "wvEzZITTto1J4JQ9", "itemType": "WtwP3sFa5ahG5k7i"}, {"count": 89, "duration": 51, "endDate": "1977-10-12T00:00:00Z", "itemId": "VCyCnbBrpKYzcgPz", "itemSku": "BySEuz5LBQUpI7M4", "itemType": "hwCypEzpH7J2CydQ"}]}, "purchasable": false, "recurring": {"cycle": "QUARTERLY", "fixedFreeDays": 70, "fixedTrialCycles": 78, "graceDays": 75}, "regionData": {"oWDMRWI9wFHvgyFQ": [{"currencyCode": "69o8lp7yo0JwCrPJ", "currencyNamespace": "OPa6tQwI3OyjKn7Y", "currencyType": "VIRTUAL", "discountAmount": 22, "discountExpireAt": "1987-10-12T00:00:00Z", "discountPercentage": 69, "discountPurchaseAt": "1980-11-18T00:00:00Z", "expireAt": "1998-01-16T00:00:00Z", "price": 14, "purchaseAt": "1979-07-20T00:00:00Z", "trialPrice": 64}, {"currencyCode": "dJPcqUdcG84SVaJQ", "currencyNamespace": "8i9tuoInBnuJSuYJ", "currencyType": "REAL", "discountAmount": 52, "discountExpireAt": "1975-01-16T00:00:00Z", "discountPercentage": 61, "discountPurchaseAt": "1986-10-16T00:00:00Z", "expireAt": "1978-01-25T00:00:00Z", "price": 5, "purchaseAt": "1971-08-04T00:00:00Z", "trialPrice": 19}, {"currencyCode": "w4udOFLBxHqTQxLv", "currencyNamespace": "ghUxdI2txxPB7muI", "currencyType": "VIRTUAL", "discountAmount": 46, "discountExpireAt": "1989-10-10T00:00:00Z", "discountPercentage": 18, "discountPurchaseAt": "1999-01-04T00:00:00Z", "expireAt": "1977-06-18T00:00:00Z", "price": 13, "purchaseAt": "1975-06-18T00:00:00Z", "trialPrice": 13}], "uk9NefrrWqURtKAa": [{"currencyCode": "MrhipqnSqQSujl7l", "currencyNamespace": "eHi36UE4b69xJRL5", "currencyType": "REAL", "discountAmount": 72, "discountExpireAt": "1976-03-30T00:00:00Z", "discountPercentage": 63, "discountPurchaseAt": "1994-10-31T00:00:00Z", "expireAt": "1984-09-27T00:00:00Z", "price": 0, "purchaseAt": "1989-09-01T00:00:00Z", "trialPrice": 14}, {"currencyCode": "kGXG7rQAwNWsXGdh", "currencyNamespace": "GR2aLyQ8mNSb1Bf4", "currencyType": "REAL", "discountAmount": 63, "discountExpireAt": "1990-08-13T00:00:00Z", "discountPercentage": 52, "discountPurchaseAt": "1973-09-28T00:00:00Z", "expireAt": "1997-08-13T00:00:00Z", "price": 51, "purchaseAt": "1976-03-30T00:00:00Z", "trialPrice": 86}, {"currencyCode": "zBNUk4CXKXs5nmlf", "currencyNamespace": "DnzNKbHNtw7F4bBo", "currencyType": "REAL", "discountAmount": 75, "discountExpireAt": "1998-05-12T00:00:00Z", "discountPercentage": 82, "discountPurchaseAt": "1995-12-08T00:00:00Z", "expireAt": "1975-12-26T00:00:00Z", "price": 25, "purchaseAt": "1986-11-18T00:00:00Z", "trialPrice": 97}], "40q4f8KqRFsWxVG4": [{"currencyCode": "6iDTnrUXuEVOrIOn", "currencyNamespace": "fNhHaz67O2dJRCo7", "currencyType": "VIRTUAL", "discountAmount": 18, "discountExpireAt": "1992-11-19T00:00:00Z", "discountPercentage": 91, "discountPurchaseAt": "1987-07-09T00:00:00Z", "expireAt": "1998-11-06T00:00:00Z", "price": 1, "purchaseAt": "1978-12-21T00:00:00Z", "trialPrice": 73}, {"currencyCode": "KBe4gQScvGDGCEUK", "currencyNamespace": "b5yegMsxoBjP3UmY", "currencyType": "VIRTUAL", "discountAmount": 15, "discountExpireAt": "1999-04-05T00:00:00Z", "discountPercentage": 22, "discountPurchaseAt": "1993-03-26T00:00:00Z", "expireAt": "1993-04-10T00:00:00Z", "price": 89, "purchaseAt": "1984-06-21T00:00:00Z", "trialPrice": 81}, {"currencyCode": "S1wkSJGr4aH7v47P", "currencyNamespace": "1svdGLuIUgIZ6aZ6", "currencyType": "VIRTUAL", "discountAmount": 76, "discountExpireAt": "1986-10-16T00:00:00Z", "discountPercentage": 0, "discountPurchaseAt": "1990-01-15T00:00:00Z", "expireAt": "1993-07-19T00:00:00Z", "price": 15, "purchaseAt": "1998-10-15T00:00:00Z", "trialPrice": 60}]}, "saleConfig": {"currencyCode": "KZEzcrkeiI7AgFTq", "price": 57}, "seasonType": "TIER", "sectionExclusive": false, "sellable": true, "sku": "tZ1MUMCYHGoeDcDC", "stackable": true, "status": "ACTIVE", "tags": ["Iq4mg12LtBNYe1Eg", "M7cbHIGdvFFNIdh4", "H8SNgZIsPVTfrP25"], "targetCurrencyCode": "URPT6bNmyzHuMwbS", "targetNamespace": "qRUJOzD8lAC8M9Og", "thumbnailUrl": "5UMOIZNHgWmMlvJC", "useCount": 17}' \
    > test.out 2>&1
eval_tap $? 86 'CreateItem' test.out

#- 87 GetItemByAppId
samples/cli/sample-apps Platform getItemByAppId \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'g9dY6LfjxxyWzmpJ' \
    --appId 'FtZH39yAmLtmjL2D' \
    > test.out 2>&1
eval_tap $? 87 'GetItemByAppId' test.out

#- 88 QueryItems
samples/cli/sample-apps Platform queryItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --appType 'GAME' \
    --availableDate 'f9YdzqSlrPmCi4ei' \
    --baseAppId 'Jc8Iw4iWcU6NLIXb' \
    --categoryPath 'XeT2uKTJjiG2T7Kj' \
    --features '4xzcmRHX3WobyoSA' \
    --includeSubCategoryItem 'false' \
    --itemType 'EXTENSION' \
    --limit '77' \
    --offset '84' \
    --region '72ficbVZdTobfn5g' \
    --sortBy '["displayOrder:desc", "updatedAt:asc"]' \
    --storeId 'Spn2efhHQXIbpCNN' \
    --tags 'qqddbgL8QvT4pk71' \
    --targetNamespace 'TfAVSwMvp1RUUU1E' \
    > test.out 2>&1
eval_tap $? 88 'QueryItems' test.out

#- 89 ListBasicItemsByFeatures
samples/cli/sample-apps Platform listBasicItemsByFeatures \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --features '["9XcT8zGKUZzazHFB", "LYWqehcMIkJeAC86", "oVx81Gg4ECm1l9D8"]' \
    > test.out 2>&1
eval_tap $? 89 'ListBasicItemsByFeatures' test.out

#- 90 GetItemBySku
samples/cli/sample-apps Platform getItemBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --storeId 'SypoGqyHgFrjHaQX' \
    --sku 'U2XQab7ezSFgkMNr' \
    > test.out 2>&1
eval_tap $? 90 'GetItemBySku' test.out

#- 91 GetLocaleItemBySku
samples/cli/sample-apps Platform getLocaleItemBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --language 'IHmRypYk0LKEJMLj' \
    --populateBundle 'false' \
    --region '9vVH1T4FBe0P4UkC' \
    --storeId 'tbCUzvnTOeX03fCL' \
    --sku '5YIQ1mdJhdTOtBzU' \
    > test.out 2>&1
eval_tap $? 91 'GetLocaleItemBySku' test.out

#- 92 GetItemIdBySku
samples/cli/sample-apps Platform getItemIdBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'lyrHh9eNVmDj54Uz' \
    --sku 'aTFwl1qRlUcGfoo5' \
    > test.out 2>&1
eval_tap $? 92 'GetItemIdBySku' test.out

#- 93 GetBulkItemIdBySkus
samples/cli/sample-apps Platform getBulkItemIdBySkus \
    --namespace $AB_NAMESPACE \
    --sku '["0rdIQUN0QhFAbB0p", "BB1aSTmQWVXU8DQT", "CzTZ9r6vl87zwn1g"]' \
    --storeId 'fZnQtYJ647BVy7L1' \
    > test.out 2>&1
eval_tap $? 93 'GetBulkItemIdBySkus' test.out

#- 94 BulkGetLocaleItems
samples/cli/sample-apps Platform bulkGetLocaleItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --language 'Vz4Uk3IoN5qFLMkF' \
    --region 'gKZWQdftji4yuMSn' \
    --storeId 'nfF2MJqE9PvdWMmu' \
    --itemIds 'pk3sBJTg8dsSUhw9' \
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
    --userId '9NsvMkKnFhYcdxso' \
    --body '{"itemIds": ["PLvnArGUNGrEb14l", "V2wsxVqriJzN2ehA", "5rfplxnQg9Mp1Lsa"]}' \
    > test.out 2>&1
eval_tap $? 96 'ValidateItemPurchaseCondition' test.out

#- 97 BulkUpdateRegionData
samples/cli/sample-apps Platform bulkUpdateRegionData \
    --namespace $AB_NAMESPACE \
    --storeId '1NoMl0bQEh33m90Z' \
    --body '{"changes": [{"itemIdentities": ["V7Ddxwzr4RHnOx5B", "OvJQ1QKMxngGBGnj", "elELA0Vs6c68Nqjc"], "itemIdentityType": "ITEM_ID", "regionData": {"2bBYa018kZ9x2Ipu": [{"currencyCode": "Bw46r5ONe25ZMuDH", "currencyNamespace": "mCYqIR8gdwjThH6J", "currencyType": "REAL", "discountAmount": 7, "discountExpireAt": "1994-05-28T00:00:00Z", "discountPercentage": 27, "discountPurchaseAt": "1990-09-22T00:00:00Z", "discountedPrice": 71, "expireAt": "1981-06-21T00:00:00Z", "price": 76, "purchaseAt": "1978-01-07T00:00:00Z", "trialPrice": 56}, {"currencyCode": "b7znSODL4ZNWLmfR", "currencyNamespace": "pka5zAfjm23g1Up9", "currencyType": "VIRTUAL", "discountAmount": 97, "discountExpireAt": "1976-11-12T00:00:00Z", "discountPercentage": 39, "discountPurchaseAt": "1974-05-19T00:00:00Z", "discountedPrice": 4, "expireAt": "1993-10-13T00:00:00Z", "price": 97, "purchaseAt": "1988-09-08T00:00:00Z", "trialPrice": 30}, {"currencyCode": "seDEP0RxpmyGCc6m", "currencyNamespace": "e4zjTHKv0ytThv8w", "currencyType": "REAL", "discountAmount": 47, "discountExpireAt": "1984-05-03T00:00:00Z", "discountPercentage": 24, "discountPurchaseAt": "1973-07-04T00:00:00Z", "discountedPrice": 31, "expireAt": "1996-03-01T00:00:00Z", "price": 70, "purchaseAt": "1975-08-02T00:00:00Z", "trialPrice": 3}], "Tw8D5BCatHWZioUA": [{"currencyCode": "PS914Y9rCHMMlvEE", "currencyNamespace": "DNNDUrIXqj7LELXy", "currencyType": "VIRTUAL", "discountAmount": 9, "discountExpireAt": "1989-11-15T00:00:00Z", "discountPercentage": 53, "discountPurchaseAt": "1977-10-03T00:00:00Z", "discountedPrice": 60, "expireAt": "1995-02-08T00:00:00Z", "price": 48, "purchaseAt": "1984-05-29T00:00:00Z", "trialPrice": 27}, {"currencyCode": "WoC47bHOeEKZeNEy", "currencyNamespace": "wQa9SiJ8ZFKCmOkO", "currencyType": "VIRTUAL", "discountAmount": 99, "discountExpireAt": "1981-07-10T00:00:00Z", "discountPercentage": 28, "discountPurchaseAt": "1994-08-14T00:00:00Z", "discountedPrice": 67, "expireAt": "1987-07-24T00:00:00Z", "price": 75, "purchaseAt": "1983-03-30T00:00:00Z", "trialPrice": 62}, {"currencyCode": "nl0j1sQH9EOdoORp", "currencyNamespace": "YqEAPRWlRXjecSv3", "currencyType": "REAL", "discountAmount": 48, "discountExpireAt": "1980-08-03T00:00:00Z", "discountPercentage": 97, "discountPurchaseAt": "1985-02-02T00:00:00Z", "discountedPrice": 84, "expireAt": "1984-11-19T00:00:00Z", "price": 62, "purchaseAt": "1998-06-01T00:00:00Z", "trialPrice": 46}], "avGNewRD9DCnfW2D": [{"currencyCode": "b8R1rZWWrA2kKZ2b", "currencyNamespace": "xYKzk2XMKLSsxkBY", "currencyType": "VIRTUAL", "discountAmount": 75, "discountExpireAt": "1991-01-21T00:00:00Z", "discountPercentage": 36, "discountPurchaseAt": "1985-08-05T00:00:00Z", "discountedPrice": 60, "expireAt": "1995-11-16T00:00:00Z", "price": 14, "purchaseAt": "1982-02-28T00:00:00Z", "trialPrice": 92}, {"currencyCode": "iMtUdDCK00TLAcOR", "currencyNamespace": "TeHVQmqcOY6U96l1", "currencyType": "REAL", "discountAmount": 39, "discountExpireAt": "1990-03-08T00:00:00Z", "discountPercentage": 71, "discountPurchaseAt": "1971-02-10T00:00:00Z", "discountedPrice": 73, "expireAt": "1990-09-08T00:00:00Z", "price": 60, "purchaseAt": "1984-04-22T00:00:00Z", "trialPrice": 4}, {"currencyCode": "u9310pQBpCpDCbfb", "currencyNamespace": "efURgLwNpdeVlBgR", "currencyType": "REAL", "discountAmount": 5, "discountExpireAt": "1987-04-25T00:00:00Z", "discountPercentage": 24, "discountPurchaseAt": "1982-05-16T00:00:00Z", "discountedPrice": 61, "expireAt": "1986-07-22T00:00:00Z", "price": 89, "purchaseAt": "1998-11-16T00:00:00Z", "trialPrice": 50}]}}, {"itemIdentities": ["JeMkuQwgQ7LYX435", "SQ91WXaHca0QaELq", "9CiUeWEsoCoVrJiP"], "itemIdentityType": "ITEM_SKU", "regionData": {"qFHUImU6sU4Hqe62": [{"currencyCode": "qTAIJ0fcTwifYAGB", "currencyNamespace": "XTrX4AhXR2GKWwSL", "currencyType": "VIRTUAL", "discountAmount": 30, "discountExpireAt": "1992-03-04T00:00:00Z", "discountPercentage": 72, "discountPurchaseAt": "1978-03-07T00:00:00Z", "discountedPrice": 71, "expireAt": "1984-08-13T00:00:00Z", "price": 57, "purchaseAt": "1975-06-23T00:00:00Z", "trialPrice": 49}, {"currencyCode": "DPxmEzTlNgNBmDSz", "currencyNamespace": "qkogiHbh5CyMKqcd", "currencyType": "REAL", "discountAmount": 23, "discountExpireAt": "1985-10-04T00:00:00Z", "discountPercentage": 2, "discountPurchaseAt": "1988-12-25T00:00:00Z", "discountedPrice": 27, "expireAt": "1975-05-22T00:00:00Z", "price": 4, "purchaseAt": "1994-01-17T00:00:00Z", "trialPrice": 19}, {"currencyCode": "uuPI1Uh8tKdUFU85", "currencyNamespace": "R9H7JJER11NpSio4", "currencyType": "REAL", "discountAmount": 36, "discountExpireAt": "1978-05-23T00:00:00Z", "discountPercentage": 85, "discountPurchaseAt": "1980-07-06T00:00:00Z", "discountedPrice": 86, "expireAt": "1980-10-26T00:00:00Z", "price": 85, "purchaseAt": "1995-06-23T00:00:00Z", "trialPrice": 81}], "EPtnj2HLU5h4rn21": [{"currencyCode": "wuUe8ygQr5lv5pkA", "currencyNamespace": "TRfL9qF7HA5YSe1p", "currencyType": "VIRTUAL", "discountAmount": 55, "discountExpireAt": "1999-04-23T00:00:00Z", "discountPercentage": 30, "discountPurchaseAt": "1993-05-18T00:00:00Z", "discountedPrice": 20, "expireAt": "1972-02-23T00:00:00Z", "price": 29, "purchaseAt": "1995-04-03T00:00:00Z", "trialPrice": 88}, {"currencyCode": "sHnz6mDVHeuvpef4", "currencyNamespace": "Sw1V9dkUAB2hgqfg", "currencyType": "VIRTUAL", "discountAmount": 62, "discountExpireAt": "1996-08-13T00:00:00Z", "discountPercentage": 85, "discountPurchaseAt": "1977-08-15T00:00:00Z", "discountedPrice": 43, "expireAt": "1997-06-03T00:00:00Z", "price": 50, "purchaseAt": "1971-07-28T00:00:00Z", "trialPrice": 22}, {"currencyCode": "xeDYewiA0Mzqxohh", "currencyNamespace": "kDoXMRAuT8P1QSoI", "currencyType": "VIRTUAL", "discountAmount": 99, "discountExpireAt": "1988-07-12T00:00:00Z", "discountPercentage": 41, "discountPurchaseAt": "1995-02-22T00:00:00Z", "discountedPrice": 82, "expireAt": "1990-07-05T00:00:00Z", "price": 27, "purchaseAt": "1993-07-24T00:00:00Z", "trialPrice": 7}], "2M90CCkQs1aNyFe5": [{"currencyCode": "X9Ki7v36tfcS7ERR", "currencyNamespace": "i7pJY7CUenSAawlu", "currencyType": "REAL", "discountAmount": 76, "discountExpireAt": "1988-08-08T00:00:00Z", "discountPercentage": 92, "discountPurchaseAt": "1979-04-21T00:00:00Z", "discountedPrice": 48, "expireAt": "1992-10-10T00:00:00Z", "price": 24, "purchaseAt": "1984-06-04T00:00:00Z", "trialPrice": 34}, {"currencyCode": "nmyBcrkz0o04B1uc", "currencyNamespace": "J4in6R46cTDlsDN0", "currencyType": "REAL", "discountAmount": 53, "discountExpireAt": "1975-02-26T00:00:00Z", "discountPercentage": 42, "discountPurchaseAt": "1975-06-29T00:00:00Z", "discountedPrice": 51, "expireAt": "1988-06-20T00:00:00Z", "price": 14, "purchaseAt": "1982-12-31T00:00:00Z", "trialPrice": 89}, {"currencyCode": "XjcoR47IZaxFclJ4", "currencyNamespace": "eVxAAeuruXEXwt63", "currencyType": "VIRTUAL", "discountAmount": 53, "discountExpireAt": "1971-12-15T00:00:00Z", "discountPercentage": 13, "discountPurchaseAt": "1983-12-14T00:00:00Z", "discountedPrice": 38, "expireAt": "1998-05-16T00:00:00Z", "price": 53, "purchaseAt": "1974-10-05T00:00:00Z", "trialPrice": 65}]}}, {"itemIdentities": ["i8GgCB1AZDNoLCam", "5IBA8SnjTTsWe7QY", "ai7gov5vl4FKsSzr"], "itemIdentityType": "ITEM_SKU", "regionData": {"fWAiKgZimQVNRcr2": [{"currencyCode": "wwqMCitIJVYRajEO", "currencyNamespace": "MHjorcemMhJPSxWy", "currencyType": "VIRTUAL", "discountAmount": 54, "discountExpireAt": "1977-12-27T00:00:00Z", "discountPercentage": 34, "discountPurchaseAt": "1996-09-05T00:00:00Z", "discountedPrice": 12, "expireAt": "1997-02-17T00:00:00Z", "price": 22, "purchaseAt": "1987-04-14T00:00:00Z", "trialPrice": 14}, {"currencyCode": "aRgX7xl6L2UNJYCN", "currencyNamespace": "UpzVd8DEE8q0WiX5", "currencyType": "REAL", "discountAmount": 98, "discountExpireAt": "1995-10-25T00:00:00Z", "discountPercentage": 55, "discountPurchaseAt": "1996-11-11T00:00:00Z", "discountedPrice": 13, "expireAt": "1995-11-16T00:00:00Z", "price": 12, "purchaseAt": "1999-10-04T00:00:00Z", "trialPrice": 28}, {"currencyCode": "Gu2BeDwbxbkoaw0R", "currencyNamespace": "77gOug7vkv3XlwjB", "currencyType": "VIRTUAL", "discountAmount": 5, "discountExpireAt": "1986-11-14T00:00:00Z", "discountPercentage": 18, "discountPurchaseAt": "1973-08-22T00:00:00Z", "discountedPrice": 74, "expireAt": "1984-12-25T00:00:00Z", "price": 80, "purchaseAt": "1998-11-18T00:00:00Z", "trialPrice": 17}], "mB45Zp9k5402hXAL": [{"currencyCode": "i4OKQPc8AgIFZOlC", "currencyNamespace": "zeSkLJdCTr225A9p", "currencyType": "VIRTUAL", "discountAmount": 98, "discountExpireAt": "1994-11-04T00:00:00Z", "discountPercentage": 44, "discountPurchaseAt": "1971-05-26T00:00:00Z", "discountedPrice": 39, "expireAt": "1989-06-08T00:00:00Z", "price": 58, "purchaseAt": "1988-06-26T00:00:00Z", "trialPrice": 0}, {"currencyCode": "BsBzJHCtIyrlCXdm", "currencyNamespace": "WaW4ffKonEJWlkuv", "currencyType": "VIRTUAL", "discountAmount": 36, "discountExpireAt": "1995-12-11T00:00:00Z", "discountPercentage": 97, "discountPurchaseAt": "1972-11-12T00:00:00Z", "discountedPrice": 11, "expireAt": "1996-03-19T00:00:00Z", "price": 33, "purchaseAt": "1999-11-15T00:00:00Z", "trialPrice": 96}, {"currencyCode": "SV4GXlgypwcoRhrb", "currencyNamespace": "RsA5UPqYGlJlLkVi", "currencyType": "VIRTUAL", "discountAmount": 48, "discountExpireAt": "1985-08-17T00:00:00Z", "discountPercentage": 100, "discountPurchaseAt": "1977-12-26T00:00:00Z", "discountedPrice": 30, "expireAt": "1981-12-11T00:00:00Z", "price": 97, "purchaseAt": "1998-03-24T00:00:00Z", "trialPrice": 75}], "KFc9W903CtdzRRVx": [{"currencyCode": "srjgTM14bp9Alezj", "currencyNamespace": "fzqGxj2eod8rjg4L", "currencyType": "REAL", "discountAmount": 16, "discountExpireAt": "1979-05-25T00:00:00Z", "discountPercentage": 87, "discountPurchaseAt": "1985-04-17T00:00:00Z", "discountedPrice": 31, "expireAt": "1997-10-17T00:00:00Z", "price": 14, "purchaseAt": "1983-10-28T00:00:00Z", "trialPrice": 28}, {"currencyCode": "6C5Kl0Jl1lmfVWap", "currencyNamespace": "vFMsOh5m4jbYHGcG", "currencyType": "VIRTUAL", "discountAmount": 0, "discountExpireAt": "1980-07-06T00:00:00Z", "discountPercentage": 69, "discountPurchaseAt": "1988-10-20T00:00:00Z", "discountedPrice": 15, "expireAt": "1984-07-18T00:00:00Z", "price": 98, "purchaseAt": "1996-06-15T00:00:00Z", "trialPrice": 9}, {"currencyCode": "Afxo6BJKnZ7loDvK", "currencyNamespace": "fHTNOXl8Q26dn3uL", "currencyType": "VIRTUAL", "discountAmount": 22, "discountExpireAt": "1989-07-01T00:00:00Z", "discountPercentage": 36, "discountPurchaseAt": "1993-01-06T00:00:00Z", "discountedPrice": 62, "expireAt": "1975-07-16T00:00:00Z", "price": 94, "purchaseAt": "1976-05-03T00:00:00Z", "trialPrice": 86}]}}]}' \
    > test.out 2>&1
eval_tap $? 97 'BulkUpdateRegionData' test.out

#- 98 SearchItems
samples/cli/sample-apps Platform searchItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --itemType 'APP' \
    --limit '19' \
    --offset '76' \
    --sortBy 'GLYAufEfgPH0cGHe' \
    --storeId 'W5ec0GDpLTNFQSKh' \
    --keyword '8bxFhFiEylkrj4Za' \
    --language '6a7eRocFkADTwPWd' \
    > test.out 2>&1
eval_tap $? 98 'SearchItems' test.out

#- 99 QueryUncategorizedItems
samples/cli/sample-apps Platform queryUncategorizedItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --limit '18' \
    --offset '82' \
    --sortBy '["createdAt:asc", "displayOrder:asc", "createdAt"]' \
    --storeId 'rKqtujCHHVtNl41O' \
    > test.out 2>&1
eval_tap $? 99 'QueryUncategorizedItems' test.out

#- 100 GetItem
samples/cli/sample-apps Platform getItem \
    --itemId 'd7MRSWGshA3Ih3Lj' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'NHx8COoyURKXL6Dr' \
    > test.out 2>&1
eval_tap $? 100 'GetItem' test.out

#- 101 UpdateItem
samples/cli/sample-apps Platform updateItem \
    --itemId '0k373eP45C1U4oRY' \
    --namespace $AB_NAMESPACE \
    --storeId 'XLvNBL5lWrENEc3g' \
    --body '{"appId": "pxNyyfRAaTGzyJXM", "appType": "DLC", "baseAppId": "BNKjwpi6mwauyaip", "boothName": "2tVCdCLTN899ZG7Y", "categoryPath": "2E5OJXaK25WR1DP4", "clazz": "UKR1QaGD3Qa4Dl8I", "displayOrder": 63, "entitlementType": "CONSUMABLE", "ext": {"4CLG7Ex9IyFsSs3K": {}, "Ua391CAA7cfUggI2": {}, "5xhArWNX27C2Vl18": {}}, "features": ["wIcOZ0bQtk04rnB6", "QyJqnlVd5KGSkeWQ", "vYmc8Xe4mr5MjfhT"], "images": [{"as": "gasu6ub8nWAtA5kr", "caption": "AZCw6rftFVSBqSiz", "height": 38, "imageUrl": "biB4MBqoggLM86tw", "smallImageUrl": "xbqyueQDMq3oOi4p", "width": 85}, {"as": "NSn6AGBFPnFLJpBq", "caption": "rGe13U65A8HMH0Bv", "height": 35, "imageUrl": "t9CnTTbQ7riN2nQb", "smallImageUrl": "ESRARMpS3W9MSyeW", "width": 65}, {"as": "SwYtlLyT9pOVTJmT", "caption": "577eJtsyOB5Db7kU", "height": 30, "imageUrl": "Cfe6sesFhTxBcRUW", "smallImageUrl": "GJIkDsDAaKw2rZLY", "width": 23}], "itemIds": ["r5XBIh26pTA91LqX", "METl8KwstQ0q0SWj", "G6VYIdZZi0L3BV3X"], "itemQty": {"lerZ4Q1IVAJSJvjj": 4, "Xz1oknKju1ObX8Vn": 72, "Z9VvXecv9Pb4ZPDK": 30}, "itemType": "SUBSCRIPTION", "listable": false, "localizations": {"bUB0UK0h3K8c9Xpx": {"description": "LGxafBvA2Jl5A2n8", "localExt": {"55afxOwRU5ADjOls": {}, "sIH45z0dKoOOagwC": {}, "7sg4e6Hexh5XAyd0": {}}, "longDescription": "JlVAcnofARgk4SXY", "title": "ZUQKv14HNjiPUUFN"}, "Ja1xt2KUtkyqvxdz": {"description": "qQdrsTOKUdxlHquZ", "localExt": {"nKZniv1V9YHlkRHj": {}, "OQqEk0l7WHiVNLl0": {}, "gBPU3Y8TMhSPW6Lc": {}}, "longDescription": "Qn5s2OMBortOSCDj", "title": "lumS7bzo0TobzOqL"}, "7RxLX2d4XEihZiNK": {"description": "hjTSgqOSyK7oC4mn", "localExt": {"QQl7R9PZ4zuRecgz": {}, "XNUZ9KyQAwxyiV4C": {}, "Lbhz0TPCAmfO2uQ5": {}}, "longDescription": "zT0hkdiLnZLOkrHQ", "title": "bnZw1iVaO4zxSzWJ"}}, "lootBoxConfig": {"rewardCount": 47, "rewards": [{"lootBoxItems": [{"count": 64, "duration": 38, "endDate": "1988-03-07T00:00:00Z", "itemId": "ujTGhqmWpBHhLQgm", "itemSku": "eHleY4V5YDP3a8AA", "itemType": "k0327zwGfLKzWCYG"}, {"count": 88, "duration": 74, "endDate": "1979-07-02T00:00:00Z", "itemId": "3VtAvidxXjnWKLA5", "itemSku": "Fohxo4U2jmB334fT", "itemType": "8AlWDCZWFkqGe7xS"}, {"count": 39, "duration": 81, "endDate": "1996-01-08T00:00:00Z", "itemId": "qb8tcYHkL8sLTEkB", "itemSku": "Ev6VXBbVuYEH6IIf", "itemType": "VLqx9d8ByFI4XPJa"}], "name": "QJPaHp8B0JEgF0oq", "odds": 0.4146917486079832, "type": "REWARD", "weight": 99}, {"lootBoxItems": [{"count": 57, "duration": 34, "endDate": "1987-09-29T00:00:00Z", "itemId": "3v2xod7g11S4NAw2", "itemSku": "wbVoBkhuZscwrPda", "itemType": "wGo6JMom6AdPhPGU"}, {"count": 57, "duration": 18, "endDate": "1985-04-26T00:00:00Z", "itemId": "a7J3nnRnOtqcRLHa", "itemSku": "JOjMMbqyojmdPxOq", "itemType": "ubseS8aESjU4CQvA"}, {"count": 58, "duration": 77, "endDate": "1989-01-18T00:00:00Z", "itemId": "SFcvcCxtErY56Udz", "itemSku": "ofkhvxAuJnajxWQ5", "itemType": "wo8EaIdWUmCNLScb"}], "name": "3ZIZ4SanANmk39r2", "odds": 0.4112836643179423, "type": "REWARD_GROUP", "weight": 84}, {"lootBoxItems": [{"count": 73, "duration": 0, "endDate": "1985-07-19T00:00:00Z", "itemId": "WhKJSpMgZiMpw8NE", "itemSku": "Uvxn4oJJimjDreKW", "itemType": "MFI87xQPXyoKpkml"}, {"count": 18, "duration": 10, "endDate": "1990-09-15T00:00:00Z", "itemId": "0EG7xRM4wvPOjwBg", "itemSku": "jE7v9FnJEjgQYujb", "itemType": "fAtaHZsXQUB2pkah"}, {"count": 43, "duration": 38, "endDate": "1979-08-22T00:00:00Z", "itemId": "jA6ADmFgl49LRLpT", "itemSku": "pdZa2kvGDXMXlHCI", "itemType": "D7syCGDSY2Apizo9"}], "name": "Wmbv6YAAztHca06N", "odds": 0.7442950876935359, "type": "PROBABILITY_GROUP", "weight": 65}], "rollFunction": "DEFAULT"}, "maxCount": 97, "maxCountPerUser": 47, "name": "wjHL5k2bgzQBXf16", "optionBoxConfig": {"boxItems": [{"count": 72, "duration": 85, "endDate": "1981-06-08T00:00:00Z", "itemId": "mNrKp6RnGpwFtOyl", "itemSku": "4T4lMMAj1F9z4ShH", "itemType": "h7bR9QDZHhljsAmV"}, {"count": 52, "duration": 82, "endDate": "1983-07-25T00:00:00Z", "itemId": "wBgom9x6Ul09Fczs", "itemSku": "EbHT97lh3RcACBUH", "itemType": "BWjpNIva0ZyGYx3A"}, {"count": 78, "duration": 21, "endDate": "1974-03-02T00:00:00Z", "itemId": "ZAzB3MWwesw6vnvO", "itemSku": "KVKbYjSJ4sBMJmdI", "itemType": "9p1kTIT5J6bJ4iEy"}]}, "purchasable": true, "recurring": {"cycle": "MONTHLY", "fixedFreeDays": 53, "fixedTrialCycles": 100, "graceDays": 14}, "regionData": {"78P7N7rI7EgXjBDK": [{"currencyCode": "Z533hgzkjfyRdg8y", "currencyNamespace": "UejHHRF5xFXJqCeE", "currencyType": "REAL", "discountAmount": 21, "discountExpireAt": "1979-11-16T00:00:00Z", "discountPercentage": 28, "discountPurchaseAt": "1998-06-10T00:00:00Z", "expireAt": "1996-02-07T00:00:00Z", "price": 42, "purchaseAt": "1971-09-16T00:00:00Z", "trialPrice": 42}, {"currencyCode": "eUvoRNKe1XfvC2KI", "currencyNamespace": "0Az7H432CO6IK6Y3", "currencyType": "VIRTUAL", "discountAmount": 12, "discountExpireAt": "1993-08-30T00:00:00Z", "discountPercentage": 17, "discountPurchaseAt": "1980-12-29T00:00:00Z", "expireAt": "1985-07-15T00:00:00Z", "price": 68, "purchaseAt": "1989-08-30T00:00:00Z", "trialPrice": 9}, {"currencyCode": "daShRMufyPJCGq5j", "currencyNamespace": "9jLJrOEVsRlSQdv9", "currencyType": "VIRTUAL", "discountAmount": 68, "discountExpireAt": "1985-12-30T00:00:00Z", "discountPercentage": 83, "discountPurchaseAt": "1976-05-05T00:00:00Z", "expireAt": "1993-05-21T00:00:00Z", "price": 66, "purchaseAt": "1989-01-29T00:00:00Z", "trialPrice": 71}], "WNysN8rvCkWDTqpJ": [{"currencyCode": "SfpaDkJUbc7a0OUS", "currencyNamespace": "expGgcvvSKvlDMyy", "currencyType": "REAL", "discountAmount": 26, "discountExpireAt": "1998-12-24T00:00:00Z", "discountPercentage": 76, "discountPurchaseAt": "1999-09-12T00:00:00Z", "expireAt": "1997-01-11T00:00:00Z", "price": 41, "purchaseAt": "1995-07-25T00:00:00Z", "trialPrice": 92}, {"currencyCode": "lIYZISZruDJIgTR2", "currencyNamespace": "sNRCKO9YB0Wf34jU", "currencyType": "REAL", "discountAmount": 22, "discountExpireAt": "1989-05-27T00:00:00Z", "discountPercentage": 16, "discountPurchaseAt": "1995-11-04T00:00:00Z", "expireAt": "1996-02-05T00:00:00Z", "price": 53, "purchaseAt": "1988-05-20T00:00:00Z", "trialPrice": 23}, {"currencyCode": "MQicNIFzle4SyAUQ", "currencyNamespace": "w4tJ9ZvYD6ACCR8g", "currencyType": "REAL", "discountAmount": 92, "discountExpireAt": "1997-11-12T00:00:00Z", "discountPercentage": 36, "discountPurchaseAt": "1987-09-12T00:00:00Z", "expireAt": "1985-06-12T00:00:00Z", "price": 36, "purchaseAt": "1973-05-09T00:00:00Z", "trialPrice": 17}], "erQCjthKKZfWBswr": [{"currencyCode": "tYXgJB4JPpQQANfa", "currencyNamespace": "yESveLUGT5gorKWT", "currencyType": "REAL", "discountAmount": 22, "discountExpireAt": "1998-10-28T00:00:00Z", "discountPercentage": 93, "discountPurchaseAt": "1994-05-15T00:00:00Z", "expireAt": "1979-02-09T00:00:00Z", "price": 67, "purchaseAt": "1975-08-28T00:00:00Z", "trialPrice": 91}, {"currencyCode": "8ZuZEZOTMGJrA9t1", "currencyNamespace": "kSG9D8oOopFapgoh", "currencyType": "VIRTUAL", "discountAmount": 16, "discountExpireAt": "1985-05-31T00:00:00Z", "discountPercentage": 28, "discountPurchaseAt": "1972-05-15T00:00:00Z", "expireAt": "1993-11-12T00:00:00Z", "price": 38, "purchaseAt": "1995-10-04T00:00:00Z", "trialPrice": 63}, {"currencyCode": "ZAsU72vPl8iNTNJw", "currencyNamespace": "W49lt4WC9TmqdUlF", "currencyType": "REAL", "discountAmount": 60, "discountExpireAt": "1980-09-17T00:00:00Z", "discountPercentage": 75, "discountPurchaseAt": "1982-12-19T00:00:00Z", "expireAt": "1989-01-20T00:00:00Z", "price": 34, "purchaseAt": "1995-11-08T00:00:00Z", "trialPrice": 24}]}, "saleConfig": {"currencyCode": "TLZx0bkzR820QEpv", "price": 4}, "seasonType": "PASS", "sectionExclusive": true, "sellable": false, "sku": "rYTURwQL6JPKIJyW", "stackable": false, "status": "INACTIVE", "tags": ["i76EJIZvsFhWhHNx", "XlqZPKuM5rb5yZ1s", "cqyJKanQvRyfRG5V"], "targetCurrencyCode": "WHSjvddAVKjsCVKE", "targetNamespace": "HRtqcONPQwQAFsfE", "thumbnailUrl": "OjRreMSWrlBvLvXA", "useCount": 100}' \
    > test.out 2>&1
eval_tap $? 101 'UpdateItem' test.out

#- 102 DeleteItem
samples/cli/sample-apps Platform deleteItem \
    --itemId '6cw1sQmAwtk3oBnp' \
    --namespace $AB_NAMESPACE \
    --force 'false' \
    --storeId 'LRRqxNdjKfETQxLk' \
    > test.out 2>&1
eval_tap $? 102 'DeleteItem' test.out

#- 103 AcquireItem
samples/cli/sample-apps Platform acquireItem \
    --itemId 'D254XqI8vb8fmMDb' \
    --namespace $AB_NAMESPACE \
    --body '{"count": 19, "orderNo": "XXHS5Qp70VpOBRBv"}' \
    > test.out 2>&1
eval_tap $? 103 'AcquireItem' test.out

#- 104 GetApp
samples/cli/sample-apps Platform getApp \
    --itemId '1oJGS7yvFXCVMpwO' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'S8mFAvW5mzM6ykuX' \
    > test.out 2>&1
eval_tap $? 104 'GetApp' test.out

#- 105 UpdateApp
samples/cli/sample-apps Platform updateApp \
    --itemId 'khZZwNvr5DIEVO2h' \
    --namespace $AB_NAMESPACE \
    --storeId 'FJWzVKfeqiYxm82I' \
    --body '{"carousel": [{"alt": "nBHXxCWXUn95GN8r", "previewUrl": "iaVIWxlFsj9GPL54", "thumbnailUrl": "9oMiEsMQyXr81N6Y", "type": "image", "url": "y3NQ7b2RDRizwRy2", "videoSource": "vimeo"}, {"alt": "3AoirR96uo3pT8zQ", "previewUrl": "Ylos2nl6RHnj5jJb", "thumbnailUrl": "uz4xZvZiNWAiqn4U", "type": "image", "url": "6kyiKpLwfsFymEKl", "videoSource": "youtube"}, {"alt": "fLNtPHEjd93gc6Wg", "previewUrl": "DWvcjAJiYEDnMVx6", "thumbnailUrl": "yD3l11JlGwOfyV8p", "type": "image", "url": "G8o8lFsBqqZmEp9V", "videoSource": "vimeo"}], "developer": "8BZZAJU6dQ3y9MVs", "forumUrl": "YN9NmZPoZmjlXs3r", "genres": ["Sports", "Simulation", "Action"], "localizations": {"F4z4fOYxGxP7gHq0": {"announcement": "9bZsrn7SUY3skLYf", "slogan": "hzztgf3jOqq9Mwtb"}, "KPr2Zj45eQDT6HKy": {"announcement": "8HK1Tnn6Fk91YM2r", "slogan": "Tw96DXza4dBuAjFK"}, "zO5dlzASj1Xikyb5": {"announcement": "PlaVEuKSEZzGzI0X", "slogan": "yVOuurDWVoAVnLt5"}}, "platformRequirements": {"Td1sKnzS7m13Gg56": [{"additionals": "Z3urNhGDAQO0Tp5d", "directXVersion": "XIMhMLwWIW8gOuop", "diskSpace": "2q7nU0n4FDGmMOKz", "graphics": "d5Odx9sKsldfciHg", "label": "g7Xr5H0kFWZQrp2j", "osVersion": "TUM19johef0aIucJ", "processor": "rc03cA5CoYtFMNNF", "ram": "KAR0AhVcLvj9PJtD", "soundCard": "guDRkhHHyLo7RAiB"}, {"additionals": "zn8HlxqmMaolv91D", "directXVersion": "nLgY7VGUkfXj3j7E", "diskSpace": "BPAF3uSD1PKXitE9", "graphics": "R9KQxFLnn07T1ENM", "label": "0XUTINulCSmqmCSv", "osVersion": "QRHkvx24MLPbIWPK", "processor": "c9MUzMJn0jzXSSDy", "ram": "R2Itd9nlDrlPKvRX", "soundCard": "SKg91rppBdEz4eD4"}, {"additionals": "KMTQ0UiXy2wYrXCH", "directXVersion": "smCViYn76s3fXHvq", "diskSpace": "TZd40i19UaxZJfSO", "graphics": "GyXGJFKRBwaJbZw7", "label": "HYr1OzL35vq4OpRw", "osVersion": "sS980rzc2ZBQEDbu", "processor": "HirMoryHsiqEtFZw", "ram": "VKXpL46mzO3IQMno", "soundCard": "KRqhj9ZgmWGTc6wL"}], "1drwbvsMeRT1NAAg": [{"additionals": "9VrTbb6BMqO24QQH", "directXVersion": "y0tWH8PWryDiGipm", "diskSpace": "5I4YJmfaoagBmZBi", "graphics": "wqp8wrEccVsn4n7r", "label": "BlMMoSh7ZUsnPP3S", "osVersion": "faFYu6KRHyOtrG3g", "processor": "mTvuaZhqVjZPVtfL", "ram": "jdfRotBk4tGT4MrM", "soundCard": "xZ9iVbeXWt1QfCKG"}, {"additionals": "EFTKIz6oroD6pmj8", "directXVersion": "1ONvm9UFwNy8WM0p", "diskSpace": "yqu8LSTuLCluYpGF", "graphics": "f1lJD5S5sGYSYlgj", "label": "VPE9FHrxg7M1hba6", "osVersion": "oSkPiAt39K3wMMJj", "processor": "6A3zNWK8tnDxSdrw", "ram": "uIDOJOBTfby2NOgr", "soundCard": "FdJfF56kFAKirBpJ"}, {"additionals": "MrGVixdCsMp9xzqt", "directXVersion": "nANwCzUP7ZYQy1nK", "diskSpace": "Y5lYb32dex5zdvSG", "graphics": "Eh9hW6sYemecN49a", "label": "8ajggmnCXdnzRi1z", "osVersion": "WB3V84OUHmdhDYfn", "processor": "GU7zlbS5sR9p4FDL", "ram": "sckmuYKyYwwH1Wi1", "soundCard": "gEAV5qVdqpx0giXL"}], "RArXVq41DQ9oh2fG": [{"additionals": "XrZlJXvkQuHKqpQA", "directXVersion": "VZ635ZWuC6qWWdjK", "diskSpace": "Fq6v6DQlqsdeR9He", "graphics": "LAZJ5vRkTO11Eog0", "label": "U3SxIfN7FIrX66n4", "osVersion": "rfF6luSOD98lgYCK", "processor": "wluTqRpZ5g8jZWfF", "ram": "h2CrcCZn0BCt3Fjr", "soundCard": "pMGfOt2KK8YBI5D7"}, {"additionals": "SPPwEkqTunLRRxqQ", "directXVersion": "UxHxoD8Skkmd0iXC", "diskSpace": "XaJBvvlsBbAnn0Qe", "graphics": "8jRmZYDoaWVs9GRO", "label": "SdXilrGmkZ5PfiiK", "osVersion": "KORc7Gcbdcy4VNOt", "processor": "JUBVStTH1tixjubl", "ram": "Arg2pCQzrSHkQyKJ", "soundCard": "LtwrrS31meKxYWQS"}, {"additionals": "bBOL1DpwQLj1G1jx", "directXVersion": "2PLjjBL1h2GMxRPa", "diskSpace": "Bbu1R4buYpA61enU", "graphics": "ofMzupNTJQD4wmnF", "label": "Bd48qxGPISAVy9lR", "osVersion": "GdY21PI3FjxdAQY7", "processor": "c9xwI01nsCUYWpJX", "ram": "ebYJ9BnRl76r4nk2", "soundCard": "4vxQuPAYb6WFQwyI"}]}, "platforms": ["IOS", "MacOS", "IOS"], "players": ["Coop", "LocalCoop", "MMO"], "primaryGenre": "FreeToPlay", "publisher": "LsKK2dxBTdngaZnk", "releaseDate": "1995-04-17T00:00:00Z", "websiteUrl": "oXEQiYeUxNO5K5Tp"}' \
    > test.out 2>&1
eval_tap $? 105 'UpdateApp' test.out

#- 106 DisableItem
samples/cli/sample-apps Platform disableItem \
    --itemId 'eX96YtLNpAFaYjDd' \
    --namespace $AB_NAMESPACE \
    --storeId 'dc2eQhRZL6zRx6I2' \
    > test.out 2>&1
eval_tap $? 106 'DisableItem' test.out

#- 107 GetItemDynamicData
samples/cli/sample-apps Platform getItemDynamicData \
    --itemId 'WcPKiCctJHmigt5Q' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 107 'GetItemDynamicData' test.out

#- 108 EnableItem
samples/cli/sample-apps Platform enableItem \
    --itemId '6jEZYbxhv4iY3DRk' \
    --namespace $AB_NAMESPACE \
    --storeId 'rpB3hQ6ANRORUG57' \
    > test.out 2>&1
eval_tap $? 108 'EnableItem' test.out

#- 109 FeatureItem
samples/cli/sample-apps Platform featureItem \
    --feature 'tz7x30ae9ywE6yrm' \
    --itemId '4oRwysRxKbtePOCW' \
    --namespace $AB_NAMESPACE \
    --storeId 'qckWVJ4z4IbIH8za' \
    > test.out 2>&1
eval_tap $? 109 'FeatureItem' test.out

#- 110 DefeatureItem
samples/cli/sample-apps Platform defeatureItem \
    --feature 'ZpPbVD1eMSdGrgRI' \
    --itemId '12oxf1oSSEZ1rxG9' \
    --namespace $AB_NAMESPACE \
    --storeId '2Zt2I2gp0woaUzjh' \
    > test.out 2>&1
eval_tap $? 110 'DefeatureItem' test.out

#- 111 GetLocaleItem
samples/cli/sample-apps Platform getLocaleItem \
    --itemId '8rWrjBkg56uZV8BP' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --language 'tkb3OTYvz6LkqDZm' \
    --populateBundle 'true' \
    --region 'NmPcvAJOTez0haKq' \
    --storeId 'xowPSLJapnKVgwhD' \
    > test.out 2>&1
eval_tap $? 111 'GetLocaleItem' test.out

#- 112 UpdateItemPurchaseCondition
samples/cli/sample-apps Platform updateItemPurchaseCondition \
    --itemId 'qyXX5K5L4uwxvDd8' \
    --namespace $AB_NAMESPACE \
    --storeId 'PkBweVz5o7kivZp8' \
    --body '{"purchaseCondition": {"conditionGroups": [{"operator": "or", "predicates": [{"anyOf": 31, "comparison": "is", "name": "GJ15jufjL4aOYEFJ", "predicateType": "SeasonPassPredicate", "value": "fB3bEJ7VewmjVSqG", "values": ["0RMUSRG0vq9793Qy", "vyvCLNCOjz3ADit9", "HpvNHlAnYShWdRjj"]}, {"anyOf": 39, "comparison": "isLessThan", "name": "bXZEKIMy6SFWTQdt", "predicateType": "SeasonPassPredicate", "value": "0f8fZK3Wd4B9rmPr", "values": ["2Svcqy1wJnQi1ybz", "AtQ3dMKu30BdTSfe", "T33ZWybihT7pWd0Q"]}, {"anyOf": 45, "comparison": "isGreaterThan", "name": "z2ChYXlbPwn1GpbL", "predicateType": "SeasonTierPredicate", "value": "xAjMR51tvgR05vbQ", "values": ["Arpzv4BobulQT2Zy", "NXkveI6xbrwWzojM", "GSBu8rYi50qvbZwF"]}]}, {"operator": "and", "predicates": [{"anyOf": 78, "comparison": "includes", "name": "QmghzfpKJySjyRbP", "predicateType": "SeasonPassPredicate", "value": "cl0nSy2FXiJiPIR7", "values": ["EE3F3WBOmGHOM0KI", "sYA00yLolnu9uzwE", "mQdu36THgmdmKfDm"]}, {"anyOf": 85, "comparison": "isGreaterThan", "name": "6UPeBZraRmfqGRpO", "predicateType": "SeasonPassPredicate", "value": "s2PKwJqPFY3DN5iq", "values": ["VrLs9GItfvKcL50o", "TPhPZ493mCNu9lnX", "zVRfpnCXSh3hL4VC"]}, {"anyOf": 7, "comparison": "isLessThanOrEqual", "name": "wVM0sLI9ZSBQUFaT", "predicateType": "SeasonTierPredicate", "value": "c3nF6RKsegSLAvVY", "values": ["7MArYAO1s2wFfR3n", "kmDUXKeRvjh9IJI5", "yDn3m6UFgoCHsXTI"]}]}, {"operator": "and", "predicates": [{"anyOf": 10, "comparison": "isLessThan", "name": "qsTzwG879povHd6e", "predicateType": "EntitlementPredicate", "value": "frZUFuOv7yNpucon", "values": ["sRQaILVSFSGfK0bH", "tNFvmHxrjRJ1qPPn", "JkMc3yLfclJ9mhZF"]}, {"anyOf": 23, "comparison": "isGreaterThanOrEqual", "name": "nt520tvhyzX2GKWo", "predicateType": "SeasonTierPredicate", "value": "AO7Z1EEOBoNZYxsx", "values": ["scBnkBj2zb4BPfYg", "BFw6n4a0MOYJ2QsQ", "9nQaW8QSsPTaOrEY"]}, {"anyOf": 84, "comparison": "is", "name": "1seRJWnLLJAH6740", "predicateType": "SeasonPassPredicate", "value": "0N5DXVlwHskbKNLQ", "values": ["P2G2MYUAw361T3w4", "owcq6fxP6v2CwFOK", "xk61P7TqeYW6RLOg"]}]}]}}' \
    > test.out 2>&1
eval_tap $? 112 'UpdateItemPurchaseCondition' test.out

#- 113 ReturnItem
samples/cli/sample-apps Platform returnItem \
    --itemId 'fy54JVnJOaePhE46' \
    --namespace $AB_NAMESPACE \
    --body '{"orderNo": "cC8ST3cag4AzcQ55"}' \
    > test.out 2>&1
eval_tap $? 113 'ReturnItem' test.out

#- 114 QueryKeyGroups
samples/cli/sample-apps Platform queryKeyGroups \
    --namespace $AB_NAMESPACE \
    --limit '29' \
    --name 'HBwGmXKoNib0KaDY' \
    --offset '87' \
    --tag 'TM69KHKLPLMteVXM' \
    > test.out 2>&1
eval_tap $? 114 'QueryKeyGroups' test.out

#- 115 CreateKeyGroup
samples/cli/sample-apps Platform createKeyGroup \
    --namespace $AB_NAMESPACE \
    --body '{"description": "cQGRTu1BA6f14pFm", "name": "nMgRp6EL42toCskC", "status": "INACTIVE", "tags": ["WqXOQJ4AdMuK3q8z", "xd7MtGabrEa0yyGL", "OGOtNBvvo2BI8kTg"]}' \
    > test.out 2>&1
eval_tap $? 115 'CreateKeyGroup' test.out

#- 116 GetKeyGroupByBoothName
eval_tap 0 116 'GetKeyGroupByBoothName # SKIP deprecated' test.out

#- 117 GetKeyGroup
samples/cli/sample-apps Platform getKeyGroup \
    --keyGroupId 'zTcB34tg48HMrvFP' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 117 'GetKeyGroup' test.out

#- 118 UpdateKeyGroup
samples/cli/sample-apps Platform updateKeyGroup \
    --keyGroupId 'Ab9Pj61lcXlkXrUB' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "PdKTfISFGSKILxdc", "name": "4xdqwFLdbq0lOncW", "status": "INACTIVE", "tags": ["ualw67yaRKncYote", "mkhdvljlqhvQt02m", "9V8DKbsqFpKMWGDJ"]}' \
    > test.out 2>&1
eval_tap $? 118 'UpdateKeyGroup' test.out

#- 119 GetKeyGroupDynamic
samples/cli/sample-apps Platform getKeyGroupDynamic \
    --keyGroupId '8UN4UKeGASa33Xrp' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 119 'GetKeyGroupDynamic' test.out

#- 120 ListKeys
samples/cli/sample-apps Platform listKeys \
    --keyGroupId 'Yw2digpEReuExvEF' \
    --namespace $AB_NAMESPACE \
    --limit '59' \
    --offset '83' \
    --status 'ACQUIRED' \
    > test.out 2>&1
eval_tap $? 120 'ListKeys' test.out

#- 121 UploadKeys
samples/cli/sample-apps Platform uploadKeys \
    --keyGroupId 't9lGcVtQincHQqmF' \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 121 'UploadKeys' test.out

#- 122 QueryOrders
samples/cli/sample-apps Platform queryOrders \
    --namespace $AB_NAMESPACE \
    --endTime 'zc1ACZVVX0ezO40t' \
    --limit '40' \
    --offset '4' \
    --orderNos '["bks8Ar9gsyOUhuVb", "7Pb9y8dAuQ9aau7Z", "9OESZ1wmQmkOSaP2"]' \
    --sortBy 'HNDiCYfRs3ZbpF4O' \
    --startTime 'MQ3k0LwyFpmRKRur' \
    --status 'INIT' \
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
    --orderNo 'oW5rdj0Qd3WE141q' \
    > test.out 2>&1
eval_tap $? 124 'GetOrder' test.out

#- 125 RefundOrder
samples/cli/sample-apps Platform refundOrder \
    --namespace $AB_NAMESPACE \
    --orderNo '2mCk9CHTqyIEJnpg' \
    --body '{"description": "hPW9o2f8kYLECI2o"}' \
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
    --body '{"dryRun": false, "notifyUrl": "p03ue5r0WZ4hZJo3", "privateKey": "Ed3vRbTif4bboR3S"}' \
    > test.out 2>&1
eval_tap $? 127 'UpdatePaymentCallbackConfig' test.out

#- 128 QueryPaymentNotifications
samples/cli/sample-apps Platform queryPaymentNotifications \
    --namespace $AB_NAMESPACE \
    --endDate 'jKONFnrvm0yiNPSl' \
    --externalId '6Fb8TIYr62D7gBr5' \
    --limit '98' \
    --notificationSource 'CHECKOUT' \
    --notificationType 'Lvo73BpDA1Tfa1BY' \
    --offset '95' \
    --paymentOrderNo 'RKRiC3wpG4zAPOVU' \
    --startDate '4k7SZJ38tfVVPQVF' \
    --status 'PROCESSED' \
    > test.out 2>&1
eval_tap $? 128 'QueryPaymentNotifications' test.out

#- 129 QueryPaymentOrders
samples/cli/sample-apps Platform queryPaymentOrders \
    --namespace $AB_NAMESPACE \
    --channel 'EXTERNAL' \
    --extTxId 'r6M8UI9WicNRHBtY' \
    --limit '10' \
    --offset '53' \
    --status 'CHARGEBACK' \
    > test.out 2>&1
eval_tap $? 129 'QueryPaymentOrders' test.out

#- 130 CreatePaymentOrderByDedicated
samples/cli/sample-apps Platform createPaymentOrderByDedicated \
    --namespace $AB_NAMESPACE \
    --body '{"currencyCode": "GXhiy7y6hvyaYgRv", "currencyNamespace": "XgBhTfkDS8x77HgB", "customParameters": {"JUVvvv8MV0d9CY53": {}, "3XVay9QYl5hcDC8x": {}, "iRM8xcfjvIAHZmgp": {}}, "description": "H4hWPeoFp4rokle5", "extOrderNo": "9qqOh6kQ70iGVL28", "extUserId": "lgrvCl99SoyF72zn", "itemType": "SEASON", "language": "GlM", "metadata": {"YYJCrFoC650xsSuo": "1z2lOIVV97Du1gGS", "BDUEhNoVpG2Niicj": "jjzfklGQacBEYdE0", "lQXCGifdQ4iJSbUL": "gGzbOcaH2DagEJHr"}, "notifyUrl": "nSwN7mk8uLArazhk", "omitNotification": true, "platform": "8Q1ujTzSR7OYLwzt", "price": 54, "recurringPaymentOrderNo": "eLQJqFEb99zLg4vs", "region": "mhc0mvSRkvbz5bzm", "returnUrl": "MbqDN47puZjh0cUL", "sandbox": true, "sku": "g2Mi2T0epvLlgHNz", "subscriptionId": "G4URNaAmr8U8CkGJ", "targetNamespace": "xXIh1oWH6oD8DLtb", "targetUserId": "exeqXZGWUCDhzsBh", "title": "oNuPmmFPDCPclAoF"}' \
    > test.out 2>&1
eval_tap $? 130 'CreatePaymentOrderByDedicated' test.out

#- 131 ListExtOrderNoByExtTxId
samples/cli/sample-apps Platform listExtOrderNoByExtTxId \
    --namespace $AB_NAMESPACE \
    --extTxId '1MSQsGElHT4YEHhZ' \
    > test.out 2>&1
eval_tap $? 131 'ListExtOrderNoByExtTxId' test.out

#- 132 GetPaymentOrder
samples/cli/sample-apps Platform getPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo '3DyseKKyysaWer6L' \
    > test.out 2>&1
eval_tap $? 132 'GetPaymentOrder' test.out

#- 133 ChargePaymentOrder
samples/cli/sample-apps Platform chargePaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'VDRl9HP0Zpg9PGeg' \
    --body '{"extTxId": "xutyYGVXOEGRdvEx", "paymentMethod": "bdehs1Ac99LAQZ21", "paymentProvider": "XSOLLA"}' \
    > test.out 2>&1
eval_tap $? 133 'ChargePaymentOrder' test.out

#- 134 RefundPaymentOrderByDedicated
samples/cli/sample-apps Platform refundPaymentOrderByDedicated \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'z2Zn4dJnh0hTwfCt' \
    --body '{"description": "SemT4UuWjcIngC4X"}' \
    > test.out 2>&1
eval_tap $? 134 'RefundPaymentOrderByDedicated' test.out

#- 135 SimulatePaymentOrderNotification
samples/cli/sample-apps Platform simulatePaymentOrderNotification \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo '6sTmuiDX0oyr1bzS' \
    --body '{"amount": 33, "currencyCode": "I9T9Mu4mK4lMPlq6", "notifyType": "REFUND", "paymentProvider": "CHECKOUT", "salesTax": 5, "vat": 98}' \
    > test.out 2>&1
eval_tap $? 135 'SimulatePaymentOrderNotification' test.out

#- 136 GetPaymentOrderChargeStatus
samples/cli/sample-apps Platform getPaymentOrderChargeStatus \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo '5fzjCitFR9XTh0gy' \
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
    --platform 'Epic' \
    --body '{"allowedBalanceOrigins": ["Epic", "GooglePlay", "Nintendo"]}' \
    > test.out 2>&1
eval_tap $? 138 'UpdatePlatformWalletConfig' test.out

#- 139 ResetPlatformWalletConfig
samples/cli/sample-apps Platform resetPlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'GooglePlay' \
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
    --body '{"entitlement": {"consumable": {"enabled": false, "strategy": "CUSTOM"}, "durable": {"enabled": false, "strategy": "CUSTOM"}}, "wallet": {"enabled": false, "strategy": "REVOKE_OR_REPORT"}}' \
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
    --endTime 'CyG251aw66VRASKD' \
    --limit '10' \
    --offset '94' \
    --source 'ORDER' \
    --startTime 'e8uGS9l4kjYwupft' \
    --status 'FAIL' \
    --transactionId '5TL0IQOOzfjonCyJ' \
    --userId 'QTfqjNEt5XPwUpUx' \
    > test.out 2>&1
eval_tap $? 143 'QueryRevocationHistories' test.out

#- 144 CreateReward
samples/cli/sample-apps Platform createReward \
    --namespace $AB_NAMESPACE \
    --body '{"description": "hy8gNqLiLAX2KzOe", "eventTopic": "epJ7lDYejXWp37cW", "maxAwarded": 31, "maxAwardedPerUser": 30, "namespaceExpression": "sZlS0rRtVixfBbgM", "rewardCode": "lT7LaGeF6vz4SZTK", "rewardConditions": [{"condition": "g54PDpmOQm4hQmil", "conditionName": "4Vi00SNFBOV9RWHr", "eventName": "orfgz25uYfDQXnM8", "rewardItems": [{"duration": 55, "endDate": "1984-07-18T00:00:00Z", "itemId": "3eIWoJdhexUpjlCl", "quantity": 14}, {"duration": 8, "endDate": "1989-10-25T00:00:00Z", "itemId": "PIoRO9iGy3HK6SpV", "quantity": 7}, {"duration": 20, "endDate": "1976-05-31T00:00:00Z", "itemId": "X61PPVEOSJD8j6Re", "quantity": 47}]}, {"condition": "hoZ7fxg7UOCJil9V", "conditionName": "HvPMIL5DyfPy93SL", "eventName": "5PeVx4OIiBLzcOkL", "rewardItems": [{"duration": 30, "endDate": "1987-12-31T00:00:00Z", "itemId": "siERpdCpwCjJ4l0i", "quantity": 37}, {"duration": 68, "endDate": "1980-07-15T00:00:00Z", "itemId": "TABD0UccHEMlaF9x", "quantity": 1}, {"duration": 94, "endDate": "1995-01-06T00:00:00Z", "itemId": "goNCxuHejqGspYy2", "quantity": 61}]}, {"condition": "4Dkj9zimdzzDeKcp", "conditionName": "uCPOfLo4Bi5sEdkj", "eventName": "g4XaQt1ydJC8nBI1", "rewardItems": [{"duration": 95, "endDate": "1976-06-16T00:00:00Z", "itemId": "gya5EKvjKi2YqY68", "quantity": 97}, {"duration": 60, "endDate": "1984-08-30T00:00:00Z", "itemId": "p1aHMKO2EJG2CmWp", "quantity": 42}, {"duration": 8, "endDate": "1978-07-22T00:00:00Z", "itemId": "D2yu7kwLRTceJCJ8", "quantity": 37}]}], "userIdExpression": "2Bxwe8QOHlwAQZ14"}' \
    > test.out 2>&1
eval_tap $? 144 'CreateReward' test.out

#- 145 QueryRewards
samples/cli/sample-apps Platform queryRewards \
    --namespace $AB_NAMESPACE \
    --eventTopic 'eCZvIWzxmBYmkZkC' \
    --limit '35' \
    --offset '47' \
    --sortBy '["namespace:desc", "namespace"]' \
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
    --replaceExisting 'true' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 147 'ImportRewards' test.out

#- 148 GetReward
samples/cli/sample-apps Platform getReward \
    --namespace $AB_NAMESPACE \
    --rewardId 'trVk5hRXfxT0mbSh' \
    > test.out 2>&1
eval_tap $? 148 'GetReward' test.out

#- 149 UpdateReward
samples/cli/sample-apps Platform updateReward \
    --namespace $AB_NAMESPACE \
    --rewardId 'IXJ6POdbhy8MhvCB' \
    --body '{"description": "QqLOdgyTAmd9I3I3", "eventTopic": "TUobH1Jk3x3pQdz9", "maxAwarded": 36, "maxAwardedPerUser": 14, "namespaceExpression": "r7GtVdbYwgXsypZk", "rewardCode": "CFQkytlTKIYV38Fw", "rewardConditions": [{"condition": "aLgWsgo5tLLie3au", "conditionName": "rzQbyXoq4HbWTTj4", "eventName": "lvvnIBHVXerkcD6m", "rewardItems": [{"duration": 32, "endDate": "1974-01-19T00:00:00Z", "itemId": "HE54TbQ2r7ZeiuNe", "quantity": 36}, {"duration": 14, "endDate": "1971-07-03T00:00:00Z", "itemId": "WWO7IKxjIIxgjJnR", "quantity": 66}, {"duration": 41, "endDate": "1975-07-01T00:00:00Z", "itemId": "0yezE3o0S0qq7Mmb", "quantity": 96}]}, {"condition": "17n7HDka2H85kEyM", "conditionName": "qm3pRQJNYgstCeQQ", "eventName": "y1EMbGYkkhlcqKCw", "rewardItems": [{"duration": 92, "endDate": "1971-11-16T00:00:00Z", "itemId": "t9C5wguIBRK83KAs", "quantity": 72}, {"duration": 20, "endDate": "1978-03-02T00:00:00Z", "itemId": "So58dWrSdfE5hcd6", "quantity": 5}, {"duration": 9, "endDate": "1991-05-14T00:00:00Z", "itemId": "2z6vLVgl4UsWjw6R", "quantity": 4}]}, {"condition": "tX9HsqwcTAnYbC54", "conditionName": "igvalwRjKUIQ3pch", "eventName": "4SYfMdTNwdag01OA", "rewardItems": [{"duration": 28, "endDate": "1971-10-12T00:00:00Z", "itemId": "JPv5PrzdgLIOXjmN", "quantity": 44}, {"duration": 28, "endDate": "1979-04-08T00:00:00Z", "itemId": "r0Qo7dZcYLXxW1rp", "quantity": 0}, {"duration": 3, "endDate": "1981-05-15T00:00:00Z", "itemId": "y7b2fYZc619nvZXv", "quantity": 43}]}], "userIdExpression": "Qz1hAD0U4JK4lC3n"}' \
    > test.out 2>&1
eval_tap $? 149 'UpdateReward' test.out

#- 150 DeleteReward
samples/cli/sample-apps Platform deleteReward \
    --namespace $AB_NAMESPACE \
    --rewardId 'qKAD2ZxPenyPjFG8' \
    > test.out 2>&1
eval_tap $? 150 'DeleteReward' test.out

#- 151 CheckEventCondition
samples/cli/sample-apps Platform checkEventCondition \
    --namespace $AB_NAMESPACE \
    --rewardId 'yU3BcRonS9VIUvXu' \
    --body '{"payload": {"RZP3xSFWroDRmO6a": {}, "uVC7keCGdHBAWK34": {}, "MFkIUELyJ5YYQLsY": {}}}' \
    > test.out 2>&1
eval_tap $? 151 'CheckEventCondition' test.out

#- 152 DeleteRewardConditionRecord
samples/cli/sample-apps Platform deleteRewardConditionRecord \
    --namespace $AB_NAMESPACE \
    --rewardId 'BGqNVBQPbD0dYnf7' \
    --body '{"conditionName": "NUWa6ydRObCDKDHp", "userId": "c2SwHi1XbD4Cp8s7"}' \
    > test.out 2>&1
eval_tap $? 152 'DeleteRewardConditionRecord' test.out

#- 153 QuerySections
samples/cli/sample-apps Platform querySections \
    --namespace $AB_NAMESPACE \
    --end 'RNivRzPvPgiHjhGv' \
    --limit '21' \
    --offset '11' \
    --start 'EWp2PCr3mMmDFlDv' \
    --storeId 'dJWz5YGzZozMF8C1' \
    --viewId 'z3LfwMyGONAdz3gt' \
    > test.out 2>&1
eval_tap $? 153 'QuerySections' test.out

#- 154 CreateSection
samples/cli/sample-apps Platform createSection \
    --namespace $AB_NAMESPACE \
    --storeId '3JUiqfOeY5INvOQ0' \
    --body '{"active": false, "displayOrder": 78, "endDate": "1982-04-05T00:00:00Z", "ext": {"IJO4t0k8GagxPpMr": {}, "HFGKt6LZtPpcKV6y": {}, "dNnE08noetFmUDwo": {}}, "fixedPeriodRotationConfig": {"backfillType": "CUSTOM", "duration": 44, "itemCount": 88, "rule": "SEQUENCE"}, "items": [{"id": "mgeyxFDKICs5emyF", "sku": "nJYm1UfO7yOf356j"}, {"id": "QuhG8u9i3OK8TZqs", "sku": "4mMRv0cncNG7pmRP"}, {"id": "wi7hN788jaQxLOTG", "sku": "6zFw4MjsWWCz2fFE"}], "localizations": {"A0po4cXb8oo2QC0z": {"description": "kXE1NRCg1bHB014U", "localExt": {"2iofYilVlYCjvxHC": {}, "L2ZSpfAPoBukr1j9": {}, "OYNP4P6j75RLVD9B": {}}, "longDescription": "WVP0ImUYVIbPGlUr", "title": "CYG9s9pzXGRnQjOj"}, "VqfkGZOPmwOUaMeF": {"description": "IQzfLVdTTiFIf7Zq", "localExt": {"LQnD7zFRDZRanZAR": {}, "KtmsjZhfMPRYj1xA": {}, "wIjsO7PBr9cOyZXd": {}}, "longDescription": "bzzX5yfH1xzFuBdg", "title": "0hqS2PNzHTGAjUfS"}, "IArygVxanRKxU6RN": {"description": "w3IYR15o41SNSdcQ", "localExt": {"NcKT4TIyyBtVbv6R": {}, "yOX5OCP80CKb9krD": {}, "pyQdokD6yjxNVmER": {}}, "longDescription": "RZj9gg4ChErK80zN", "title": "XB21dAYRhPU6dYIE"}}, "name": "5BKGTOyS3PeBkaSi", "rotationType": "FIXED_PERIOD", "startDate": "1980-11-02T00:00:00Z", "viewId": "QcQvUgedkr1x74U5"}' \
    > test.out 2>&1
eval_tap $? 154 'CreateSection' test.out

#- 155 PurgeExpiredSection
samples/cli/sample-apps Platform purgeExpiredSection \
    --namespace $AB_NAMESPACE \
    --storeId 'OjwOV6TnKPO0NF7j' \
    > test.out 2>&1
eval_tap $? 155 'PurgeExpiredSection' test.out

#- 156 GetSection
samples/cli/sample-apps Platform getSection \
    --namespace $AB_NAMESPACE \
    --sectionId 'cIOLQ78FxYjeuzkV' \
    --storeId 'coBsT49e57YEYzva' \
    > test.out 2>&1
eval_tap $? 156 'GetSection' test.out

#- 157 UpdateSection
samples/cli/sample-apps Platform updateSection \
    --namespace $AB_NAMESPACE \
    --sectionId 'Ar59bJNeSbyyL0lw' \
    --storeId 'PP89Tgy0re6CNozs' \
    --body '{"active": true, "displayOrder": 57, "endDate": "1999-04-15T00:00:00Z", "ext": {"h3R1WZ88VKanzdZH": {}, "T8ZpU2LkeYkxS00L": {}, "o40mxuuhvyRAXfKe": {}}, "fixedPeriodRotationConfig": {"backfillType": "NONE", "duration": 79, "itemCount": 37, "rule": "SEQUENCE"}, "items": [{"id": "l7g02asC98bl2dVN", "sku": "tW28zUqf6alHdzTz"}, {"id": "Sqrcl2wbpuTiQj1n", "sku": "T0zFcOP482JGQIK2"}, {"id": "u8dveVa1pQILlh37", "sku": "OPhm3Qf6LUxoi9pH"}], "localizations": {"e4loccHSS4hGTQKZ": {"description": "5sWA4pyFzjnTEEIB", "localExt": {"3SNOwAkHb6UZpHQd": {}, "ELVCxCUiDHp45089": {}, "tXa6CsjB3KuTji2e": {}}, "longDescription": "LvfePGa3GackMJFV", "title": "h7hYhxX2uyz4RrHT"}, "xFM4vPMTt1ZWkQhp": {"description": "KqSR5dRzsEGkvOUZ", "localExt": {"UjeN20ECLfYdWMM6": {}, "hR2GiungrcUyWlSe": {}, "GdOXHFeNAQGr2BeA": {}}, "longDescription": "6Fg2Hf3MBr0QQyzs", "title": "0JoSnauCadzulJPv"}, "AkYiUxNLfOkvns48": {"description": "jttwKgUmhR4AeV2p", "localExt": {"e6halSZ9xxAxK5mq": {}, "ekzRF5dKGSXn32FA": {}, "JtW5yT2fxtBYkPqA": {}}, "longDescription": "eAfYGOklDVl4YNNw", "title": "Hjb2dMkjxoyzPwpV"}}, "name": "0APue4mfTkNPNxFE", "rotationType": "CUSTOM", "startDate": "1982-06-10T00:00:00Z", "viewId": "pLy53DjLqfAYJIs6"}' \
    > test.out 2>&1
eval_tap $? 157 'UpdateSection' test.out

#- 158 DeleteSection
samples/cli/sample-apps Platform deleteSection \
    --namespace $AB_NAMESPACE \
    --sectionId 'F2mvT8tyUsv128M2' \
    --storeId '67MSg4nqlNfeciki' \
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
    --body '{"defaultLanguage": "sJdRqIE9s2GsgYCD", "defaultRegion": "DjcNuZQVU5zlQNMe", "description": "f3P6qaGzg8Lqo5mo", "supportedLanguages": ["DNAjO4Sq0MK1QRzJ", "QG2HiF1oX6VilVJm", "oWY6aiLnYie4aFM2"], "supportedRegions": ["2O7KarCjl4JsNOHb", "rlp4tKpjzihlWWlB", "epyiu55J6KTw6XFn"], "title": "KGHx5NKgvub9Rlyv"}' \
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
    --storeId 'O1eB9GQu6jSSUPN0' \
    > test.out 2>&1
eval_tap $? 166 'GetStore' test.out

#- 167 UpdateStore
samples/cli/sample-apps Platform updateStore \
    --namespace $AB_NAMESPACE \
    --storeId 'I4XnNU4WkfMk79hF' \
    --body '{"defaultLanguage": "JdnHqP2fSY9sOi6r", "defaultRegion": "HKnRRp4KvqK3eFOB", "description": "twSHvawQUAhF91cc", "supportedLanguages": ["I2aSziRs47bhIvAW", "gh8gfWErMr8PzvD7", "UDoM4YjZM8wlL2h1"], "supportedRegions": ["KeSePOYEKEIVarFp", "xZEbs8C9eJqV79iL", "ZazCOwpeJDqoquT5"], "title": "SsGVKb8qkg491aS9"}' \
    > test.out 2>&1
eval_tap $? 167 'UpdateStore' test.out

#- 168 DeleteStore
samples/cli/sample-apps Platform deleteStore \
    --namespace $AB_NAMESPACE \
    --storeId '4yQKKAUi1eYcLq0k' \
    > test.out 2>&1
eval_tap $? 168 'DeleteStore' test.out

#- 169 QueryChanges
samples/cli/sample-apps Platform queryChanges \
    --namespace $AB_NAMESPACE \
    --storeId 'VnSXhjXyTx2T4bsR' \
    --action 'DELETE' \
    --itemSku '1S6vvBubVOUVg50w' \
    --itemType 'MEDIA' \
    --limit '8' \
    --offset '89' \
    --selected 'true' \
    --sortBy '["updatedAt:desc", "updatedAt:asc"]' \
    --status 'PUBLISHED' \
    --type 'STORE' \
    --updatedAtEnd 'y9xIIq5S3kqZCehl' \
    --updatedAtStart '5EqL9bPj9yP5Qryx' \
    > test.out 2>&1
eval_tap $? 169 'QueryChanges' test.out

#- 170 PublishAll
samples/cli/sample-apps Platform publishAll \
    --namespace $AB_NAMESPACE \
    --storeId '7dRNqvIVZVeaQmM3' \
    > test.out 2>&1
eval_tap $? 170 'PublishAll' test.out

#- 171 PublishSelected
samples/cli/sample-apps Platform publishSelected \
    --namespace $AB_NAMESPACE \
    --storeId 'bCoWOyDo3oug2FTY' \
    > test.out 2>&1
eval_tap $? 171 'PublishSelected' test.out

#- 172 SelectAllRecords
samples/cli/sample-apps Platform selectAllRecords \
    --namespace $AB_NAMESPACE \
    --storeId 'WOzawqTZSFlCs5Qr' \
    > test.out 2>&1
eval_tap $? 172 'SelectAllRecords' test.out

#- 173 GetStatistic
samples/cli/sample-apps Platform getStatistic \
    --namespace $AB_NAMESPACE \
    --storeId 'vZdZfmR5QxctaN9K' \
    --action 'UPDATE' \
    --itemSku '13a2V8M6b5hbIg7a' \
    --itemType 'MEDIA' \
    --type 'CATEGORY' \
    --updatedAtEnd 'My2H1rLzVVUXmU1r' \
    --updatedAtStart 'O8d1RFprVt6UVocg' \
    > test.out 2>&1
eval_tap $? 173 'GetStatistic' test.out

#- 174 UnselectAllRecords
samples/cli/sample-apps Platform unselectAllRecords \
    --namespace $AB_NAMESPACE \
    --storeId 'UwVO7TvDY8sZgWWP' \
    > test.out 2>&1
eval_tap $? 174 'UnselectAllRecords' test.out

#- 175 SelectRecord
samples/cli/sample-apps Platform selectRecord \
    --changeId 'KmH2BZDAY0ZAHbqP' \
    --namespace $AB_NAMESPACE \
    --storeId 'y40XLZnCYee2WhmL' \
    > test.out 2>&1
eval_tap $? 175 'SelectRecord' test.out

#- 176 UnselectRecord
samples/cli/sample-apps Platform unselectRecord \
    --changeId '1Id7OAkRVX02srV9' \
    --namespace $AB_NAMESPACE \
    --storeId 't1558IZES4IysHls' \
    > test.out 2>&1
eval_tap $? 176 'UnselectRecord' test.out

#- 177 CloneStore
samples/cli/sample-apps Platform cloneStore \
    --namespace $AB_NAMESPACE \
    --storeId 'FhUQdm626rdf0GHU' \
    --targetStoreId 'uB5ooN6UPZTqnklq' \
    > test.out 2>&1
eval_tap $? 177 'CloneStore' test.out

#- 178 ExportStore
eval_tap 0 178 'ExportStore # SKIP deprecated' test.out

#- 179 QuerySubscriptions
samples/cli/sample-apps Platform querySubscriptions \
    --namespace $AB_NAMESPACE \
    --chargeStatus 'SETUP' \
    --itemId 'PgJY1j7aWIvglxYD' \
    --limit '99' \
    --offset '70' \
    --sku '6nNUQRcxsWnqYBFN' \
    --status 'INIT' \
    --subscribedBy 'USER' \
    --userId 'zL9gkVlNLEE9pyLu' \
    > test.out 2>&1
eval_tap $? 179 'QuerySubscriptions' test.out

#- 180 RecurringChargeSubscription
samples/cli/sample-apps Platform recurringChargeSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'Qd4kJjL9xJvu8S4v' \
    > test.out 2>&1
eval_tap $? 180 'RecurringChargeSubscription' test.out

#- 181 GetTicketDynamic
samples/cli/sample-apps Platform getTicketDynamic \
    --boothName 'p2bi9aVXR4HrEcYO' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 181 'GetTicketDynamic' test.out

#- 182 DecreaseTicketSale
samples/cli/sample-apps Platform decreaseTicketSale \
    --boothName '8gWKejfvtiu3KL39' \
    --namespace $AB_NAMESPACE \
    --body '{"orderNo": "fNdfHXKIBQvmxK1P"}' \
    > test.out 2>&1
eval_tap $? 182 'DecreaseTicketSale' test.out

#- 183 GetTicketBoothID
samples/cli/sample-apps Platform getTicketBoothID \
    --boothName 'xAaXCXQ00th0HDGp' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 183 'GetTicketBoothID' test.out

#- 184 IncreaseTicketSale
samples/cli/sample-apps Platform increaseTicketSale \
    --boothName 'e3GGDVNrmwFWIsbF' \
    --namespace $AB_NAMESPACE \
    --body '{"count": 69, "orderNo": "zMuLwTE4Ilztw4f6"}' \
    > test.out 2>&1
eval_tap $? 184 'IncreaseTicketSale' test.out

#- 185 UnlockSteamUserAchievement
samples/cli/sample-apps Platform unlockSteamUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'XJjiatOHKtbDqMW2' \
    --body '{"achievements": [{"id": "uOU9ZEd5xwkeymBM", "value": 88}, {"id": "jSPis0g7Q9PvJFly", "value": 74}, {"id": "kt3oMPwxdawIjMX5", "value": 15}], "steamUserId": "DooN9ctwxLCmoWJH"}' \
    > test.out 2>&1
eval_tap $? 185 'UnlockSteamUserAchievement' test.out

#- 186 GetXblUserAchievements
samples/cli/sample-apps Platform getXblUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId '3hVuvcu26rfFkJCx' \
    --xboxUserId 'kYjPRy7vJPRkd2ZV' \
    > test.out 2>&1
eval_tap $? 186 'GetXblUserAchievements' test.out

#- 187 UpdateXblUserAchievement
samples/cli/sample-apps Platform updateXblUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'nqXAWbH6MOI8J6gu' \
    --body '{"achievements": [{"id": "OpeIMB3WJxktn9Mf", "value": 46}, {"id": "Ebiow0FJXue5Vcps", "value": 8}, {"id": "41EIViZPx940h87d", "value": 91}], "serviceConfigId": "qWNJI9gAigssHC9Y", "titleId": "yPUvhGLax3lQGnce", "xboxUserId": "LMt2YUTvgwW70fGG"}' \
    > test.out 2>&1
eval_tap $? 187 'UpdateXblUserAchievement' test.out

#- 188 AnonymizeCampaign
samples/cli/sample-apps Platform anonymizeCampaign \
    --namespace $AB_NAMESPACE \
    --userId 'RRWxZ5zbJPm5Rd7H' \
    > test.out 2>&1
eval_tap $? 188 'AnonymizeCampaign' test.out

#- 189 AnonymizeEntitlement
samples/cli/sample-apps Platform anonymizeEntitlement \
    --namespace $AB_NAMESPACE \
    --userId '5jhb5hSao4Pfp4V3' \
    > test.out 2>&1
eval_tap $? 189 'AnonymizeEntitlement' test.out

#- 190 AnonymizeFulfillment
samples/cli/sample-apps Platform anonymizeFulfillment \
    --namespace $AB_NAMESPACE \
    --userId 'kMZ6BPv7wPeoCusv' \
    > test.out 2>&1
eval_tap $? 190 'AnonymizeFulfillment' test.out

#- 191 AnonymizeIntegration
samples/cli/sample-apps Platform anonymizeIntegration \
    --namespace $AB_NAMESPACE \
    --userId '1mRSh1HdUCgl8Jk3' \
    > test.out 2>&1
eval_tap $? 191 'AnonymizeIntegration' test.out

#- 192 AnonymizeOrder
samples/cli/sample-apps Platform anonymizeOrder \
    --namespace $AB_NAMESPACE \
    --userId 'vkB4i0PJ42BSEF9e' \
    > test.out 2>&1
eval_tap $? 192 'AnonymizeOrder' test.out

#- 193 AnonymizePayment
samples/cli/sample-apps Platform anonymizePayment \
    --namespace $AB_NAMESPACE \
    --userId 'XrGQv1rZ8IgQufya' \
    > test.out 2>&1
eval_tap $? 193 'AnonymizePayment' test.out

#- 194 AnonymizeRevocation
samples/cli/sample-apps Platform anonymizeRevocation \
    --namespace $AB_NAMESPACE \
    --userId 'SImN6nqSeamFuG1r' \
    > test.out 2>&1
eval_tap $? 194 'AnonymizeRevocation' test.out

#- 195 AnonymizeSubscription
samples/cli/sample-apps Platform anonymizeSubscription \
    --namespace $AB_NAMESPACE \
    --userId '9mKwgFFn2vqfvIkT' \
    > test.out 2>&1
eval_tap $? 195 'AnonymizeSubscription' test.out

#- 196 AnonymizeWallet
samples/cli/sample-apps Platform anonymizeWallet \
    --namespace $AB_NAMESPACE \
    --userId 'dOGohc81Ulf80DmG' \
    > test.out 2>&1
eval_tap $? 196 'AnonymizeWallet' test.out

#- 197 GetUserDLCByPlatform
samples/cli/sample-apps Platform getUserDLCByPlatform \
    --namespace $AB_NAMESPACE \
    --userId 'Ndu7oJuTnQLGM0l9' \
    --type 'STEAM' \
    > test.out 2>&1
eval_tap $? 197 'GetUserDLCByPlatform' test.out

#- 198 GetUserDLC
samples/cli/sample-apps Platform getUserDLC \
    --namespace $AB_NAMESPACE \
    --userId 'yVAROFpv240wnxn3' \
    --type 'STEAM' \
    > test.out 2>&1
eval_tap $? 198 'GetUserDLC' test.out

#- 199 QueryUserEntitlements
samples/cli/sample-apps Platform queryUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'splGaeVpneciX8b2' \
    --activeOnly 'false' \
    --appType 'DEMO' \
    --entitlementClazz 'APP' \
    --entitlementName 'NSIt34HMDGTi9LgN' \
    --features '["VlYYupJE77CluVzp", "jDQazYYrdqSOF0ET", "voL9oxfinIjFZVBS"]' \
    --itemId '["qojwZe6pGlhqfm9z", "w1QNR2vCi7Uv0UWE", "1IZTwlbe1oZnFDOU"]' \
    --limit '42' \
    --offset '4' \
    > test.out 2>&1
eval_tap $? 199 'QueryUserEntitlements' test.out

#- 200 GrantUserEntitlement
samples/cli/sample-apps Platform grantUserEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'SXx7rpyOCMUU8gB4' \
    --body '[{"endDate": "1998-08-06T00:00:00Z", "grantedCode": "ltPwpHgUte0UmFF7", "itemId": "JUEeboScw6Bh3uBZ", "itemNamespace": "YN3jRmbwSRR16z42", "language": "AeRr", "quantity": 90, "region": "IA5VLXVjKeHpEiEF", "source": "PURCHASE", "startDate": "1977-02-09T00:00:00Z", "storeId": "NTJnWmPkOGDcWRuz"}, {"endDate": "1994-12-16T00:00:00Z", "grantedCode": "5812rcrvroyL7tbR", "itemId": "o18Y8Nzsxm0K7GQf", "itemNamespace": "NjI6mRTukZPHVKxa", "language": "yD", "quantity": 36, "region": "gbXGe2OEom2KnZXC", "source": "REFERRAL_BONUS", "startDate": "1989-02-05T00:00:00Z", "storeId": "AIj7vAMkahKyo3P0"}, {"endDate": "1999-10-31T00:00:00Z", "grantedCode": "SCjvvjYt7MoLxa2X", "itemId": "bnCih8YhdpdM2EEe", "itemNamespace": "ukSfuk7e3Ebr1UBi", "language": "hfo-cdhl-Uf", "quantity": 45, "region": "RuzQy4MFmDu7lCK7", "source": "OTHER", "startDate": "1974-11-01T00:00:00Z", "storeId": "IsVsVPWm1FuErIzK"}]' \
    > test.out 2>&1
eval_tap $? 200 'GrantUserEntitlement' test.out

#- 201 GetUserAppEntitlementByAppId
samples/cli/sample-apps Platform getUserAppEntitlementByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'nrimyZjqOgWave8K' \
    --activeOnly 'true' \
    --appId 'bJuX6K7PM5IoZUAS' \
    > test.out 2>&1
eval_tap $? 201 'GetUserAppEntitlementByAppId' test.out

#- 202 QueryUserEntitlementsByAppType
samples/cli/sample-apps Platform queryUserEntitlementsByAppType \
    --namespace $AB_NAMESPACE \
    --userId 'xFn15otL8mIPwKLD' \
    --activeOnly 'false' \
    --limit '20' \
    --offset '36' \
    --appType 'SOFTWARE' \
    > test.out 2>&1
eval_tap $? 202 'QueryUserEntitlementsByAppType' test.out

#- 203 GetUserEntitlementByItemId
samples/cli/sample-apps Platform getUserEntitlementByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'ubC8EZ6FVroBmF2W' \
    --activeOnly 'true' \
    --entitlementClazz 'CODE' \
    --itemId 'XgZ6PlzoWcbP5Yco' \
    > test.out 2>&1
eval_tap $? 203 'GetUserEntitlementByItemId' test.out

#- 204 GetUserActiveEntitlementsByItemIds
samples/cli/sample-apps Platform getUserActiveEntitlementsByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'J74W8n104WW9w64x' \
    --ids '["J1DfKA46FRLeaqHL", "Cj7BfcVM8QpPOhJw", "VspvOkKYOqhzgND2"]' \
    > test.out 2>&1
eval_tap $? 204 'GetUserActiveEntitlementsByItemIds' test.out

#- 205 GetUserEntitlementBySku
samples/cli/sample-apps Platform getUserEntitlementBySku \
    --namespace $AB_NAMESPACE \
    --userId 'TDxrPbN1pIw92yt2' \
    --activeOnly 'false' \
    --entitlementClazz 'SUBSCRIPTION' \
    --sku 'OyPHfHBxBTSSB6TD' \
    > test.out 2>&1
eval_tap $? 205 'GetUserEntitlementBySku' test.out

#- 206 ExistsAnyUserActiveEntitlement
samples/cli/sample-apps Platform existsAnyUserActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --userId '3n7q86RJ0yGJY1Mf' \
    --appIds '["TKouZKXQVKeiLFCN", "jOlLqs9Mw4fHGxk2", "3Vk9x2zhJO0ipujc"]' \
    --itemIds '["aZloNwNtMXsEYH0x", "rAcIiEwQR9aiGvLz", "D6loZYRBB7Fw5qay"]' \
    --skus '["ALoz9KSxL5TkaQvI", "SMEacLpMaoHqnuDr", "bwxDsP6ksgA97QBo"]' \
    > test.out 2>&1
eval_tap $? 206 'ExistsAnyUserActiveEntitlement' test.out

#- 207 ExistsAnyUserActiveEntitlementByItemIds
samples/cli/sample-apps Platform existsAnyUserActiveEntitlementByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'zhnew0LMFNDG1PLr' \
    --itemIds '["fpvLg89cpktuZ3jR", "wwrHGSu4uy0jaygD", "97hKN10wom1hTUXh"]' \
    > test.out 2>&1
eval_tap $? 207 'ExistsAnyUserActiveEntitlementByItemIds' test.out

#- 208 GetUserAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform getUserAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'fi1AEGTMe42EuVav' \
    --appId '1RFilNYZkd97M14A' \
    > test.out 2>&1
eval_tap $? 208 'GetUserAppEntitlementOwnershipByAppId' test.out

#- 209 GetUserEntitlementOwnershipByItemId
samples/cli/sample-apps Platform getUserEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'CFwsEUEHYwArJPxL' \
    --entitlementClazz 'LOOTBOX' \
    --itemId 'TkdqBPcK3pjR25tN' \
    > test.out 2>&1
eval_tap $? 209 'GetUserEntitlementOwnershipByItemId' test.out

#- 210 GetUserEntitlementOwnershipByItemIds
samples/cli/sample-apps Platform getUserEntitlementOwnershipByItemIds \
    --namespace $AB_NAMESPACE \
    --userId '4pPM4XffHyigo0Fy' \
    --ids '["ZILXJE49Agyg6vG6", "AWc7Hipvqbq0APu5", "3zUVllMiJ9qxDqNL"]' \
    > test.out 2>&1
eval_tap $? 210 'GetUserEntitlementOwnershipByItemIds' test.out

#- 211 GetUserEntitlementOwnershipBySku
samples/cli/sample-apps Platform getUserEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --userId 'OXlXQus95xm3gk9W' \
    --entitlementClazz 'ENTITLEMENT' \
    --sku 'JvH03sR8bw9QiBas' \
    > test.out 2>&1
eval_tap $? 211 'GetUserEntitlementOwnershipBySku' test.out

#- 212 RevokeAllEntitlements
samples/cli/sample-apps Platform revokeAllEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'ztbmefIAPFIGQnbE' \
    > test.out 2>&1
eval_tap $? 212 'RevokeAllEntitlements' test.out

#- 213 RevokeUserEntitlements
samples/cli/sample-apps Platform revokeUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'wUEGdJESieCJUkXC' \
    --entitlementIds '8WrrqlZBILVXL0kC' \
    > test.out 2>&1
eval_tap $? 213 'RevokeUserEntitlements' test.out

#- 214 GetUserEntitlement
samples/cli/sample-apps Platform getUserEntitlement \
    --entitlementId 'KjO4lnzwovw2SaMX' \
    --namespace $AB_NAMESPACE \
    --userId 'Ty9WSveBYvjRLRWk' \
    > test.out 2>&1
eval_tap $? 214 'GetUserEntitlement' test.out

#- 215 UpdateUserEntitlement
samples/cli/sample-apps Platform updateUserEntitlement \
    --entitlementId 'cQjvdEH1WJ50f4Lt' \
    --namespace $AB_NAMESPACE \
    --userId 'YtJ99whuqZamx5aC' \
    --body '{"endDate": "1981-04-04T00:00:00Z", "nullFieldList": ["n06FQ8276fyszx6v", "KCmL3l0muCGHFwP6", "b3SHhLK39HJBK77V"], "startDate": "1972-08-17T00:00:00Z", "status": "REVOKED", "useCount": 99}' \
    > test.out 2>&1
eval_tap $? 215 'UpdateUserEntitlement' test.out

#- 216 ConsumeUserEntitlement
samples/cli/sample-apps Platform consumeUserEntitlement \
    --entitlementId 'uTmOPv4kntg8nhzz' \
    --namespace $AB_NAMESPACE \
    --userId 'KRBvqgFunlnBWt2K' \
    --body '{"options": ["TpR78u1LOX89sic5", "dHfPSMJ4YSueZBp9", "7035KnXrgXM2fM24"], "requestId": "bGeodUo9heM7d1H4", "useCount": 53}' \
    > test.out 2>&1
eval_tap $? 216 'ConsumeUserEntitlement' test.out

#- 217 DisableUserEntitlement
samples/cli/sample-apps Platform disableUserEntitlement \
    --entitlementId 'QI3GkfXdWnmmCdD4' \
    --namespace $AB_NAMESPACE \
    --userId 'm02fVkcpHEhb9hXS' \
    > test.out 2>&1
eval_tap $? 217 'DisableUserEntitlement' test.out

#- 218 EnableUserEntitlement
samples/cli/sample-apps Platform enableUserEntitlement \
    --entitlementId 'Djf5QJeFfH7EVZP9' \
    --namespace $AB_NAMESPACE \
    --userId 'pFWeECO8uOSw1jDG' \
    > test.out 2>&1
eval_tap $? 218 'EnableUserEntitlement' test.out

#- 219 GetUserEntitlementHistories
samples/cli/sample-apps Platform getUserEntitlementHistories \
    --entitlementId '5uR3FJkQ7xQeAzY2' \
    --namespace $AB_NAMESPACE \
    --userId 'iSkYrvgKilmlS9Rg' \
    > test.out 2>&1
eval_tap $? 219 'GetUserEntitlementHistories' test.out

#- 220 RevokeUserEntitlement
samples/cli/sample-apps Platform revokeUserEntitlement \
    --entitlementId 'ceHdKQmcyugIKtz4' \
    --namespace $AB_NAMESPACE \
    --userId '90hRYYzWnlhgko9O' \
    > test.out 2>&1
eval_tap $? 220 'RevokeUserEntitlement' test.out

#- 221 RevokeUseCount
samples/cli/sample-apps Platform revokeUseCount \
    --entitlementId 'kfNX0LBant09OdaH' \
    --namespace $AB_NAMESPACE \
    --userId 'UVoihxrvRP0BBcjr' \
    --body '{"reason": "N24HLrfiVYsDBLFt", "useCount": 64}' \
    > test.out 2>&1
eval_tap $? 221 'RevokeUseCount' test.out

#- 222 SellUserEntitlement
samples/cli/sample-apps Platform sellUserEntitlement \
    --entitlementId 'jDvJX8kq1oXoFhHO' \
    --namespace $AB_NAMESPACE \
    --userId '9Ri7RByrsDlfUtzO' \
    --body '{"requestId": "4z8QGoygbXXSkfsM", "useCount": 23}' \
    > test.out 2>&1
eval_tap $? 222 'SellUserEntitlement' test.out

#- 223 FulfillItem
samples/cli/sample-apps Platform fulfillItem \
    --namespace $AB_NAMESPACE \
    --userId 'AJ1VHTS4LVoJBdPS' \
    --body '{"duration": 61, "endDate": "1978-10-15T00:00:00Z", "itemId": "tBdFwnPzuJR4kYyF", "itemSku": "GUeY9VqKhkWtrUbs", "language": "U4ech2eTdDwd6TNl", "order": {"currency": {"currencyCode": "v9hGUnZ3wG0fb9Hd", "currencySymbol": "yMkg5uBHfrzgxgBu", "currencyType": "REAL", "decimals": 76, "namespace": "TsEjxfhw2D3kG6rX"}, "ext": {"fbIeAF4v9VcntkRq": {}, "0ftUocs6ZGyeXLVz": {}, "bFqO5xEskbZx1BM7": {}}, "free": false}, "orderNo": "npKzURyoav8BNzpU", "origin": "Playstation", "quantity": 52, "region": "44CAhC7tjmTk2pVn", "source": "DLC", "startDate": "1997-12-13T00:00:00Z", "storeId": "TscPVpGwxflLdudE"}' \
    > test.out 2>&1
eval_tap $? 223 'FulfillItem' test.out

#- 224 RedeemCode
samples/cli/sample-apps Platform redeemCode \
    --namespace $AB_NAMESPACE \
    --userId 'iFSKmHHmnHieWAZR' \
    --body '{"code": "E3FiuLRuq5tpCXEQ", "language": "ZMeN_305", "region": "NRrXJq7NONIAsfik"}' \
    > test.out 2>&1
eval_tap $? 224 'RedeemCode' test.out

#- 225 FulfillRewards
samples/cli/sample-apps Platform fulfillRewards \
    --namespace $AB_NAMESPACE \
    --userId 'etq4VUpCf98ur5Is' \
    --body '{"origin": "Twitch", "rewards": [{"currency": {"currencyCode": "OL6dSqjuWAsUhYmU", "namespace": "g8RZvKH3Siz1uFOf"}, "item": {"itemId": "roziAeg8MmCZ8eUD", "itemSku": "uSHPLEcLDOLleWQr", "itemType": "hOiGbTW4ihaQh89j"}, "quantity": 28, "type": "CURRENCY"}, {"currency": {"currencyCode": "JREq9zIWchY9wkbJ", "namespace": "5j0Kd0QYy984YDrV"}, "item": {"itemId": "iTpz0Ti3QyaOFPIt", "itemSku": "PL5hTw7kF0WRyBYs", "itemType": "isJqh2YpEZKrCGDT"}, "quantity": 69, "type": "ITEM"}, {"currency": {"currencyCode": "dmh7bzmpvbdrSGMH", "namespace": "jyrocd7W7fHRZOcK"}, "item": {"itemId": "rU1q78BpEMdQwpI7", "itemSku": "8E1TLyqoB3f3tSf0", "itemType": "4NhW1OjatHoutsGM"}, "quantity": 69, "type": "ITEM"}], "source": "REWARD"}' \
    > test.out 2>&1
eval_tap $? 225 'FulfillRewards' test.out

#- 226 QueryUserIAPOrders
samples/cli/sample-apps Platform queryUserIAPOrders \
    --namespace $AB_NAMESPACE \
    --userId 'WDgkqCbWWtLnWg3z' \
    --endTime '1LzdGIc1vdbWjwGc' \
    --limit '33' \
    --offset '72' \
    --productId 'QSLmM5vgDSYHgGKX' \
    --startTime 'l7yqgZxxkmTEojUi' \
    --status 'FAILED' \
    --type 'XBOX' \
    > test.out 2>&1
eval_tap $? 226 'QueryUserIAPOrders' test.out

#- 227 QueryAllUserIAPOrders
samples/cli/sample-apps Platform queryAllUserIAPOrders \
    --namespace $AB_NAMESPACE \
    --userId 'frq9ffGvCytRCVzW' \
    > test.out 2>&1
eval_tap $? 227 'QueryAllUserIAPOrders' test.out

#- 228 QueryUserIAPConsumeHistory
samples/cli/sample-apps Platform queryUserIAPConsumeHistory \
    --namespace $AB_NAMESPACE \
    --userId '9Di3k3uMLLWMvByP' \
    --endTime 'YF8uLtOLrRwEyw4h' \
    --limit '50' \
    --offset '53' \
    --startTime 'Fi7Z1Q4IJCrZ5Cyk' \
    --status 'PENDING' \
    --type 'PLAYSTATION' \
    > test.out 2>&1
eval_tap $? 228 'QueryUserIAPConsumeHistory' test.out

#- 229 MockFulfillIAPItem
samples/cli/sample-apps Platform mockFulfillIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'GUgYn4i1PYhtfTDu' \
    --body '{"itemIdentityType": "ITEM_ID", "language": "WQG_SAXh", "productId": "hmAsBSA27zF2ZfjQ", "region": "NmaFhentmmEXVqXT", "type": "APPLE"}' \
    > test.out 2>&1
eval_tap $? 229 'MockFulfillIAPItem' test.out

#- 230 QueryUserOrders
samples/cli/sample-apps Platform queryUserOrders \
    --namespace $AB_NAMESPACE \
    --userId 'fd7Eto8seUA0x7EG' \
    --itemId 'VbepVu7cRCKcpuEB' \
    --limit '2' \
    --offset '12' \
    --status 'FULFILL_FAILED' \
    > test.out 2>&1
eval_tap $? 230 'QueryUserOrders' test.out

#- 231 AdminCreateUserOrder
samples/cli/sample-apps Platform adminCreateUserOrder \
    --namespace $AB_NAMESPACE \
    --userId 'Ra3dXh6yLy3ePFby' \
    --body '{"currencyCode": "H5Xhyq0b0cJ1Z896", "currencyNamespace": "Rl9SzukCxd09T4P1", "discountedPrice": 79, "ext": {"098IJFo7Pf5AzWg4": {}, "0yjMqi5ybHXGwmLm": {}, "UfkOmfjkofXy69hl": {}}, "itemId": "elZ8J4cTIqwIECfK", "language": "zALDEKs4EOVzWqzY", "options": {"skipPriceValidation": true}, "platform": "IOS", "price": 96, "quantity": 43, "region": "FWLdAB2BPz0FM5Jt", "returnUrl": "aIOAFcnO4Dh3wZzY", "sandbox": false, "sectionId": "7mCK1MPbvtE648uk"}' \
    > test.out 2>&1
eval_tap $? 231 'AdminCreateUserOrder' test.out

#- 232 CountOfPurchasedItem
samples/cli/sample-apps Platform countOfPurchasedItem \
    --namespace $AB_NAMESPACE \
    --userId 'yuKs5UEfq19PtN1Q' \
    --itemId 'toLYJwtKAgUYGn4f' \
    > test.out 2>&1
eval_tap $? 232 'CountOfPurchasedItem' test.out

#- 233 GetUserOrder
samples/cli/sample-apps Platform getUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'ljcdeeu76c692a4Y' \
    --userId '1DQ8aN5O8TfXkJgc' \
    > test.out 2>&1
eval_tap $? 233 'GetUserOrder' test.out

#- 234 UpdateUserOrderStatus
samples/cli/sample-apps Platform updateUserOrderStatus \
    --namespace $AB_NAMESPACE \
    --orderNo 'MZ5KEctDDyHu19zI' \
    --userId 'LWoOZmJMLqWTCMOu' \
    --body '{"status": "INIT", "statusReason": "99dEODDjjU9afu7e"}' \
    > test.out 2>&1
eval_tap $? 234 'UpdateUserOrderStatus' test.out

#- 235 FulfillUserOrder
samples/cli/sample-apps Platform fulfillUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'nwoAHmlf7GOy1GfF' \
    --userId '297q8sKvIDp4wZWF' \
    > test.out 2>&1
eval_tap $? 235 'FulfillUserOrder' test.out

#- 236 GetUserOrderGrant
samples/cli/sample-apps Platform getUserOrderGrant \
    --namespace $AB_NAMESPACE \
    --orderNo 'pFzVRg2gGnDVkY4q' \
    --userId 'vFZj24XJfTXionE9' \
    > test.out 2>&1
eval_tap $? 236 'GetUserOrderGrant' test.out

#- 237 GetUserOrderHistories
samples/cli/sample-apps Platform getUserOrderHistories \
    --namespace $AB_NAMESPACE \
    --orderNo 'haQiMXBb6PlpSY7n' \
    --userId '7UFJb4aVffiOLogy' \
    > test.out 2>&1
eval_tap $? 237 'GetUserOrderHistories' test.out

#- 238 ProcessUserOrderNotification
samples/cli/sample-apps Platform processUserOrderNotification \
    --namespace $AB_NAMESPACE \
    --orderNo 'IcEPBi0WF7RkfLTS' \
    --userId 'rNif8R58Nx9UkHmm' \
    --body '{"additionalData": {"cardSummary": "EvlVROHOSu3jOVdJ"}, "authorisedTime": "1987-12-21T00:00:00Z", "chargebackReversedTime": "1986-09-12T00:00:00Z", "chargebackTime": "1987-11-08T00:00:00Z", "chargedTime": "1983-12-11T00:00:00Z", "createdTime": "1979-09-23T00:00:00Z", "currency": {"currencyCode": "4X6JCthJTdxILkJI", "currencySymbol": "yUebCn0PnFxo0adb", "currencyType": "VIRTUAL", "decimals": 30, "namespace": "6mZIr3JidW1K8xch"}, "customParameters": {"tb9YA8UkPEzWIv9y": {}, "8UVJOfQBOm9RD9Hg": {}, "czC4NVw5Oce9w50k": {}}, "extOrderNo": "mEBNEjL6QoMHhktY", "extTxId": "boUNaHJSGVpmyieF", "extUserId": "YTpifmHu0H9L0hsZ", "issuedAt": "1988-03-04T00:00:00Z", "metadata": {"j3Y2bizScWxZkACZ": "vCYbHDue0IZ9AwYt", "iTXABgRDVA4zGFqE": "THQfrUAU7yLhjWqJ", "MJuqnQ7u7xijNBil": "yT0r9MfRViZ3h95e"}, "namespace": "d8EUd0OUUpu6jImG", "nonceStr": "0042VCUEj2EACHin", "paymentMethod": "RSGKUIXIHPfL5VLP", "paymentMethodFee": 40, "paymentOrderNo": "iHeGnS3TtSRgczZr", "paymentProvider": "STRIPE", "paymentProviderFee": 87, "paymentStationUrl": "3pzRUQ034gPYXIXb", "price": 49, "refundedTime": "1983-02-23T00:00:00Z", "salesTax": 72, "sandbox": false, "sku": "yNz1QlGVxgFpDCPl", "status": "AUTHORISE_FAILED", "statusReason": "DgcV2bfN9o6S1Kvb", "subscriptionId": "kdRog6gVrkzz7AyD", "subtotalPrice": 23, "targetNamespace": "pULl4uFPOwcO8KFf", "targetUserId": "3dHkVaFoEdvrgVIl", "tax": 78, "totalPrice": 86, "totalTax": 56, "txEndTime": "1980-09-22T00:00:00Z", "type": "mgDLxXkz8lUrteqf", "userId": "4UpU1AYXmbGsdBC1", "vat": 46}' \
    > test.out 2>&1
eval_tap $? 238 'ProcessUserOrderNotification' test.out

#- 239 DownloadUserOrderReceipt
samples/cli/sample-apps Platform downloadUserOrderReceipt \
    --namespace $AB_NAMESPACE \
    --orderNo 'eNuMJ0jYJBsF1TvP' \
    --userId 'x87prw2nCMc3SVUs' \
    > test.out 2>&1
eval_tap $? 239 'DownloadUserOrderReceipt' test.out

#- 240 CreateUserPaymentOrder
samples/cli/sample-apps Platform createUserPaymentOrder \
    --namespace $AB_NAMESPACE \
    --userId '0ZK3Y3RqeOALRO6M' \
    --body '{"currencyCode": "MvFaejQO5AbfqoE2", "currencyNamespace": "ghvBAMtVUrcxf0OH", "customParameters": {"IdFXjnfeNE7Mq93D": {}, "Tb3zaW9f6MIdtsvl": {}, "0LpKzKJ0i3eFtlAN": {}}, "description": "k5GrYP5lp1Cps4or", "extOrderNo": "Ro6XjfgMKE3JMyaV", "extUserId": "mryEKGMcdbzIDbAg", "itemType": "APP", "language": "lS", "metadata": {"PNunyKXhxz9aTqRc": "dM5snNevnoRnNb0d", "xHwW7DeWv1TpSSPa": "zrZs3gpdHKwMvuNX", "gY8NASmRVew64UA4": "IxbRSyaJ2kr1qBF7"}, "notifyUrl": "fIfh24gdfoy6HEIt", "omitNotification": false, "platform": "uRy1xVpafbPZgupq", "price": 93, "recurringPaymentOrderNo": "YHLcj4yiG81K5jx1", "region": "gEGLdWNk4DiWvUfb", "returnUrl": "VuU7zGfmzzjTClos", "sandbox": true, "sku": "wRKZU6HR7g2TpeiH", "subscriptionId": "4eWvCXWdmbnXy0Xl", "title": "oEk1R2mBhvcVxflj"}' \
    > test.out 2>&1
eval_tap $? 240 'CreateUserPaymentOrder' test.out

#- 241 RefundUserPaymentOrder
samples/cli/sample-apps Platform refundUserPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'XtBx2azj4qE0gQzV' \
    --userId 'VNz0Dnbhf5pdpXxd' \
    --body '{"description": "jz9wfYNOrYEJ3Tnl"}' \
    > test.out 2>&1
eval_tap $? 241 'RefundUserPaymentOrder' test.out

#- 242 ApplyUserRedemption
samples/cli/sample-apps Platform applyUserRedemption \
    --namespace $AB_NAMESPACE \
    --userId 'iPyfg3JmgROTekvb' \
    --body '{"code": "ZRtmSy2hiGAQ9iRm", "orderNo": "IDZz2kIgIc1XNC0A"}' \
    > test.out 2>&1
eval_tap $? 242 'ApplyUserRedemption' test.out

#- 243 DoRevocation
samples/cli/sample-apps Platform doRevocation \
    --namespace $AB_NAMESPACE \
    --userId 'u0gI1389vRwZoKSx' \
    --body '{"meta": {"k6nzPLpqjLTM6kBr": {}, "coYTETdHbaMRs8Li": {}, "NExjp4Xd5NV6d8FK": {}}, "revokeEntries": [{"currency": {"balanceOrigin": "Nintendo", "currencyCode": "llcNimDR9i5yHKTf", "namespace": "qUwn7WY8hAKO05Fy"}, "entitlement": {"entitlementId": "hYm2gvToLeYm1Ei3"}, "item": {"itemIdentity": "My634rX9mR5PrHop", "itemIdentityType": "ITEM_ID", "origin": "Other"}, "quantity": 91, "type": "ITEM"}, {"currency": {"balanceOrigin": "Nintendo", "currencyCode": "mOZGQ1zE8bTkpo4A", "namespace": "LGph7gdVHzGxmCaL"}, "entitlement": {"entitlementId": "qyjDszKi6huqULoi"}, "item": {"itemIdentity": "8AOhsTnkhk6haxAD", "itemIdentityType": "ITEM_SKU", "origin": "Xbox"}, "quantity": 13, "type": "ITEM"}, {"currency": {"balanceOrigin": "GooglePlay", "currencyCode": "nEO7I5jZf53elgGq", "namespace": "uXwfV89KZklvRv5x"}, "entitlement": {"entitlementId": "NNPvcX0mi1iACO8W"}, "item": {"itemIdentity": "wfRBRExAQiovaAFv", "itemIdentityType": "ITEM_SKU", "origin": "Epic"}, "quantity": 3, "type": "ITEM"}], "source": "ORDER", "transactionId": "hniua3KpISpPniTh"}' \
    > test.out 2>&1
eval_tap $? 243 'DoRevocation' test.out

#- 244 RegisterXblSessions
samples/cli/sample-apps Platform registerXblSessions \
    --namespace $AB_NAMESPACE \
    --userId 'kdbdNxKFGObRhh8k' \
    --body '{"gameSessionId": "45SmXJEbK9CDCF0E", "payload": {"qjVQ6PDTUaxaB6qG": {}, "78w4FZYmfx0Vj2WO": {}, "hX1TtdDM9VxgvMTt": {}}, "scid": "BzkbOOep4pHsCkIc", "sessionTemplateName": "UXDNelTa1ITHQ17R"}' \
    > test.out 2>&1
eval_tap $? 244 'RegisterXblSessions' test.out

#- 245 QueryUserSubscriptions
samples/cli/sample-apps Platform queryUserSubscriptions \
    --namespace $AB_NAMESPACE \
    --userId 'dESX8AVmdyKpetdm' \
    --chargeStatus 'CHARGE_FAILED' \
    --itemId 'hgg6X3285leX3m65' \
    --limit '29' \
    --offset '38' \
    --sku 'wYST1MKSyzJC8Io1' \
    --status 'EXPIRED' \
    --subscribedBy 'USER' \
    > test.out 2>&1
eval_tap $? 245 'QueryUserSubscriptions' test.out

#- 246 GetUserSubscriptionActivities
samples/cli/sample-apps Platform getUserSubscriptionActivities \
    --namespace $AB_NAMESPACE \
    --userId 'SQlHKVJw1ddfcVU6' \
    --excludeSystem 'false' \
    --limit '75' \
    --offset '82' \
    --subscriptionId 'ZXrLPo25o1MQbL0j' \
    > test.out 2>&1
eval_tap $? 246 'GetUserSubscriptionActivities' test.out

#- 247 PlatformSubscribeSubscription
samples/cli/sample-apps Platform platformSubscribeSubscription \
    --namespace $AB_NAMESPACE \
    --userId 'MGwKUMVHcyh0akZh' \
    --body '{"grantDays": 0, "itemId": "BzORsPTFEWhzX5NN", "language": "zPxm2MYMe1Hc6zO8", "reason": "IMVEI8grUMCqwfQz", "region": "0v1HUqRvXWfxJzn8", "source": "bHxqatO9Fz5v3y3L"}' \
    > test.out 2>&1
eval_tap $? 247 'PlatformSubscribeSubscription' test.out

#- 248 CheckUserSubscriptionSubscribableByItemId
samples/cli/sample-apps Platform checkUserSubscriptionSubscribableByItemId \
    --namespace $AB_NAMESPACE \
    --userId '7JrMWDvWgRn6SVzD' \
    --itemId 'QMcDi3KTp9pnHypZ' \
    > test.out 2>&1
eval_tap $? 248 'CheckUserSubscriptionSubscribableByItemId' test.out

#- 249 GetUserSubscription
samples/cli/sample-apps Platform getUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId '0RevmK2rgYoKJTnc' \
    --userId 'MTw7DWJjeS2Rvlaq' \
    > test.out 2>&1
eval_tap $? 249 'GetUserSubscription' test.out

#- 250 DeleteUserSubscription
samples/cli/sample-apps Platform deleteUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId '9lmSBe2lgwAn34bI' \
    --userId 'ZkEu8B8tDg46nmJd' \
    > test.out 2>&1
eval_tap $? 250 'DeleteUserSubscription' test.out

#- 251 CancelSubscription
samples/cli/sample-apps Platform cancelSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'KkAfUKCZHDlAJzBh' \
    --userId '0JO8rET1thMYhL5q' \
    --force 'true' \
    --body '{"immediate": false, "reason": "ghu1EvW75mCLk3ml"}' \
    > test.out 2>&1
eval_tap $? 251 'CancelSubscription' test.out

#- 252 GrantDaysToSubscription
samples/cli/sample-apps Platform grantDaysToSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'r9AfslQlLfeoonGM' \
    --userId 'gpadexO3ozmn0fMX' \
    --body '{"grantDays": 87, "reason": "Rk73MP4xc9skZvkm"}' \
    > test.out 2>&1
eval_tap $? 252 'GrantDaysToSubscription' test.out

#- 253 GetUserSubscriptionBillingHistories
samples/cli/sample-apps Platform getUserSubscriptionBillingHistories \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'X6XHMXbu9NcmaplP' \
    --userId 'pi798Ev57THPO3yB' \
    --excludeFree 'true' \
    --limit '97' \
    --offset '98' \
    > test.out 2>&1
eval_tap $? 253 'GetUserSubscriptionBillingHistories' test.out

#- 254 ProcessUserSubscriptionNotification
samples/cli/sample-apps Platform processUserSubscriptionNotification \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'FD6lcj0dzDtNNKiA' \
    --userId 'CFhbUvcQK1uHMguV' \
    --body '{"additionalData": {"cardSummary": "IIpMvXIuqSeZqPsL"}, "authorisedTime": "1988-08-29T00:00:00Z", "chargebackReversedTime": "1984-03-30T00:00:00Z", "chargebackTime": "1975-06-05T00:00:00Z", "chargedTime": "1990-06-25T00:00:00Z", "createdTime": "1999-03-11T00:00:00Z", "currency": {"currencyCode": "9PDzjDFwlZDZt3Wh", "currencySymbol": "zRyTJOK5KeyXKgxa", "currencyType": "VIRTUAL", "decimals": 6, "namespace": "YqKB3Uwvaekc7yVV"}, "customParameters": {"qN2G6QgJKyPyskMN": {}, "cjEgQh1RhfX21PpV": {}, "xSYF9pmqBMLiAsR8": {}}, "extOrderNo": "cHIHFaSFR193vE6Y", "extTxId": "pNmuVJqZHvXRhVkj", "extUserId": "NjLQ15QwxKmuvvPQ", "issuedAt": "1975-05-16T00:00:00Z", "metadata": {"LZkeV51unjUKFrub": "F3QFIK4l11tFHAhD", "CYOIcdmAZxa3Bf9x": "pE7QJbCuUPNw3LQd", "urifwekAingHonTL": "DHL053UAtKjMWCfa"}, "namespace": "xpbnMtNBJbIQ9fC6", "nonceStr": "Gus5EV54g7j0fOBg", "paymentMethod": "4z1jqOGpTfEkZNMd", "paymentMethodFee": 66, "paymentOrderNo": "aRE1HwXLsQndhiTV", "paymentProvider": "WALLET", "paymentProviderFee": 55, "paymentStationUrl": "pRECuAGFhvMptB7g", "price": 17, "refundedTime": "1982-01-07T00:00:00Z", "salesTax": 1, "sandbox": false, "sku": "2An9apKDzMgYPwTh", "status": "CHARGEBACK_REVERSED", "statusReason": "Bp4Ky8tdOa53DhmK", "subscriptionId": "Yw6oSs4xGn9qJypL", "subtotalPrice": 74, "targetNamespace": "Mzuaaa2Be6Ak9a13", "targetUserId": "wuhmvCwnWx3Vo1ph", "tax": 57, "totalPrice": 15, "totalTax": 93, "txEndTime": "1973-11-17T00:00:00Z", "type": "RpAXlJ53kL7QcUty", "userId": "P2qwo0yTyQ31B04p", "vat": 92}' \
    > test.out 2>&1
eval_tap $? 254 'ProcessUserSubscriptionNotification' test.out

#- 255 AcquireUserTicket
samples/cli/sample-apps Platform acquireUserTicket \
    --boothName '78AEWra6vkLN9hsL' \
    --namespace $AB_NAMESPACE \
    --userId 'dQ0UMtZWD4xXj7mL' \
    --body '{"count": 28, "orderNo": "CXK0HjR7i3aupvAw"}' \
    > test.out 2>&1
eval_tap $? 255 'AcquireUserTicket' test.out

#- 256 QueryUserCurrencyWallets
samples/cli/sample-apps Platform queryUserCurrencyWallets \
    --namespace $AB_NAMESPACE \
    --userId 'dTdMSnZj5Rw1k5Lr' \
    > test.out 2>&1
eval_tap $? 256 'QueryUserCurrencyWallets' test.out

#- 257 DebitUserWalletByCurrencyCode
samples/cli/sample-apps Platform debitUserWalletByCurrencyCode \
    --currencyCode 'TaEtjKfViw2BOmTN' \
    --namespace $AB_NAMESPACE \
    --userId 'B199zwtxtxXZ8oEH' \
    --body '{"allowOverdraft": false, "amount": 12, "balanceOrigin": "Xbox", "reason": "kCcgwu009eDClgoO"}' \
    > test.out 2>&1
eval_tap $? 257 'DebitUserWalletByCurrencyCode' test.out

#- 258 ListUserCurrencyTransactions
samples/cli/sample-apps Platform listUserCurrencyTransactions \
    --currencyCode 'Wx9fINdHEQkx4eLR' \
    --namespace $AB_NAMESPACE \
    --userId 'YTnCXNjHfpsCG5Bt' \
    --limit '6' \
    --offset '91' \
    > test.out 2>&1
eval_tap $? 258 'ListUserCurrencyTransactions' test.out

#- 259 CheckWallet
eval_tap 0 259 'CheckWallet # SKIP deprecated' test.out

#- 260 CreditUserWallet
samples/cli/sample-apps Platform creditUserWallet \
    --currencyCode '715k4tVLvN8jKLx5' \
    --namespace $AB_NAMESPACE \
    --userId '9PNekAgx9c0tyaBg' \
    --body '{"amount": 34, "expireAt": "1983-12-10T00:00:00Z", "origin": "System", "reason": "IgoMyoeMubaSI9P8", "source": "REDEEM_CODE"}' \
    > test.out 2>&1
eval_tap $? 260 'CreditUserWallet' test.out

#- 261 PayWithUserWallet
samples/cli/sample-apps Platform payWithUserWallet \
    --currencyCode 'Pr87CH5xj3DfOqto' \
    --namespace $AB_NAMESPACE \
    --userId 'AVpQjAbdVWCcar59' \
    --body '{"amount": 20, "walletPlatform": "Xbox"}' \
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
    --storeId 'zlKegzOp1v6fnylj' \
    > test.out 2>&1
eval_tap $? 267 'ListViews' test.out

#- 268 CreateView
samples/cli/sample-apps Platform createView \
    --namespace $AB_NAMESPACE \
    --storeId '6g9RMnBmFhq3V7UI' \
    --body '{"displayOrder": 0, "localizations": {"2eRHsyWUwlSu7uq2": {"description": "Z6GGRozOUkpUWJVf", "localExt": {"l28P2n511J1zf0VS": {}, "DHMh2xaiZJxGs8Qi": {}, "5OyVE8OssKsg4JZB": {}}, "longDescription": "RdXKhlDmo0CnVVoR", "title": "qvqsa3BTKb5c6FcI"}, "P4efgLSGoVFhvLSe": {"description": "vAo3ADzhr3zH0mH0", "localExt": {"HGEa2NVigktesZ72": {}, "xnWwEcOZkA7CoVhx": {}, "TWvP1BmpxirPtt9U": {}}, "longDescription": "uCWHpyWm5gsWYFBu", "title": "mWXrSaTiUCeNvojb"}, "NP0o4h9SeW0QAyMW": {"description": "fcizUp3N4QN40RFA", "localExt": {"xBWADnqqmfVYsPZK": {}, "wQ16Wox51USr8OZE": {}, "5fSY2gR3a4ZU8Weu": {}}, "longDescription": "rW0O4rboiWup7c9M", "title": "6oLEhNNCByK0S5JE"}}, "name": "ZCVfkyRL1Q7Y3Exr"}' \
    > test.out 2>&1
eval_tap $? 268 'CreateView' test.out

#- 269 GetView
samples/cli/sample-apps Platform getView \
    --namespace $AB_NAMESPACE \
    --viewId 'lf6i9BGzMaxEUx14' \
    --storeId '73eVfPBaMPNa9tXq' \
    > test.out 2>&1
eval_tap $? 269 'GetView' test.out

#- 270 UpdateView
samples/cli/sample-apps Platform updateView \
    --namespace $AB_NAMESPACE \
    --viewId '6VWMeNDpdrskYWHm' \
    --storeId 'XXZy5Gb8ekT0jhtx' \
    --body '{"displayOrder": 53, "localizations": {"BebJPxhuTQKZHZKU": {"description": "O0gIqwh1PuB4BRZk", "localExt": {"Oa0tU9ziKuaZBpVw": {}, "2PV2VRUt8Vgmwrvd": {}, "vdWw8qY9SCWVmTJN": {}}, "longDescription": "Wqp6a7IeiXDJz4oA", "title": "dPt9fHFQAvbAmHww"}, "4wld4Dd7GGOHK3Vd": {"description": "5PMxN3YzzWsmVJyV", "localExt": {"nCm7oJ94tTWB80vp": {}, "NEHSgpGWC6sA5aJp": {}, "rSuBkEXE6MsOlrlU": {}}, "longDescription": "XxT4x1E7Q3gFgex9", "title": "eKkt7cK1Loi1fdem"}, "13c3Fuuc745PzjQ1": {"description": "IQbVjO3ysXTZWudZ", "localExt": {"wreLrvWZvxinoZKP": {}, "SaW0uKJKQoFvVjin": {}, "PqWKpRBdBcWxeXpR": {}}, "longDescription": "4446kS7zqQhsmakK", "title": "xU8fFIJApP02qqdx"}}, "name": "FcLixYhjjrbYZxGl"}' \
    > test.out 2>&1
eval_tap $? 270 'UpdateView' test.out

#- 271 DeleteView
samples/cli/sample-apps Platform deleteView \
    --namespace $AB_NAMESPACE \
    --viewId 'PInVFDNQNGRaBeKd' \
    --storeId 'Yh43HhywGSKQCYo4' \
    > test.out 2>&1
eval_tap $? 271 'DeleteView' test.out

#- 272 QueryWallets
eval_tap 0 272 'QueryWallets # SKIP deprecated' test.out

#- 273 BulkCredit
samples/cli/sample-apps Platform bulkCredit \
    --namespace $AB_NAMESPACE \
    --body '[{"creditRequest": {"amount": 5, "expireAt": "1972-10-21T00:00:00Z", "origin": "Playstation", "reason": "y5iMl9FyLIu9fpbP", "source": "OTHER"}, "currencyCode": "Ohi838O4limWHpy5", "userIds": ["cqUka8TZlHmicmSV", "PTZmddCkdLxNfXYM", "AdtoGJMNBAkkqlzN"]}, {"creditRequest": {"amount": 65, "expireAt": "1986-08-09T00:00:00Z", "origin": "Playstation", "reason": "qoS95p3wjhzX7IM4", "source": "ACHIEVEMENT"}, "currencyCode": "03QGJD11hVNpJj4Z", "userIds": ["uiqnS9NLQhXGrsSr", "0OaT33MKpoxESgiq", "OVxKPr6NQ9H4zzLa"]}, {"creditRequest": {"amount": 41, "expireAt": "1989-03-23T00:00:00Z", "origin": "Nintendo", "reason": "8Z1fRHXoscIVuEJ4", "source": "GIFT"}, "currencyCode": "O6UAnCXMRYgXHzLY", "userIds": ["tlFCHYRHOTz2Kscr", "hcgUcDzeL1QfZalO", "CX2Z3TYoo5F7kQJW"]}]' \
    > test.out 2>&1
eval_tap $? 273 'BulkCredit' test.out

#- 274 BulkDebit
samples/cli/sample-apps Platform bulkDebit \
    --namespace $AB_NAMESPACE \
    --body '[{"currencyCode": "6e3IVTkwUnSQqTgt", "request": {"allowOverdraft": false, "amount": 65, "balanceOrigin": "System", "reason": "5FiAiVIiOihjF056"}, "userIds": ["GuyG7iZc1vGfYqyF", "r62VmUCdA0ZtyC72", "QO4IBgNLTExV427o"]}, {"currencyCode": "F28Xj8Ud2NFDS7fR", "request": {"allowOverdraft": false, "amount": 81, "balanceOrigin": "System", "reason": "DbaZDYEFP0xSoWv5"}, "userIds": ["tnQFxLLmeTUmPB4s", "8L52JDExKYi1pYmG", "N9zdYG9W3WSbOvml"]}, {"currencyCode": "ELe6SMy9nlIY8YHD", "request": {"allowOverdraft": true, "amount": 45, "balanceOrigin": "GooglePlay", "reason": "AfoDthlZQ9pzxrEr"}, "userIds": ["2NwJHHqBy4CGp3bs", "ysG3Ot0A2jbh8AAg", "geDzQ50eodREY8q0"]}]' \
    > test.out 2>&1
eval_tap $? 274 'BulkDebit' test.out

#- 275 GetWallet
eval_tap 0 275 'GetWallet # SKIP deprecated' test.out

#- 276 SyncOrders
samples/cli/sample-apps Platform syncOrders \
    --nextEvaluatedKey 'OLbPT0d3Cw3ivE0l' \
    --end 'p9lpW5oqeKFA74kA' \
    --start '8hiLh5L52abcubTI' \
    > test.out 2>&1
eval_tap $? 276 'SyncOrders' test.out

#- 277 TestAdyenConfig
samples/cli/sample-apps Platform testAdyenConfig \
    --sandbox 'true' \
    --body '{"allowedPaymentMethods": ["vWD4S7dauljh3Oki", "pJxR4Pj8d646aPgf", "v9razIiSVUcDLERh"], "apiKey": "UdRjYD5gIbn84wpb", "authoriseAsCapture": false, "blockedPaymentMethods": ["8FY3PyzfjxLgchgv", "v6xjpR9c2ViuWTbt", "hx91jtqASCVnZxyN"], "clientKey": "9Mn6uc8efxzFta0h", "dropInSettings": "g0jEY0gsqcwTRqpR", "liveEndpointUrlPrefix": "r1CGkSqYSDoi4ZVR", "merchantAccount": "idZnc2GaFarcIukc", "notificationHmacKey": "c4BYMqmrcFmkeyUv", "notificationPassword": "HZkTY2UrSpI0UC1G", "notificationUsername": "JyPAs8obkFVYmzcN", "returnUrl": "HYXVlapBSl7kKflU", "settings": "7xzfE5Djh6NEam0l"}' \
    > test.out 2>&1
eval_tap $? 277 'TestAdyenConfig' test.out

#- 278 TestAliPayConfig
samples/cli/sample-apps Platform testAliPayConfig \
    --sandbox 'true' \
    --body '{"appId": "4E2HVwneWS3QGodM", "privateKey": "HBCOnii8UBwZhtsD", "publicKey": "HkGy0yl8uBcD8mtw", "returnUrl": "kgGfawZFwnnDUSAw"}' \
    > test.out 2>&1
eval_tap $? 278 'TestAliPayConfig' test.out

#- 279 TestCheckoutConfig
samples/cli/sample-apps Platform testCheckoutConfig \
    --sandbox 'false' \
    --body '{"publicKey": "ysh8qBwTPZ6KtR8Y", "secretKey": "fIS3Litb51p7rpko"}' \
    > test.out 2>&1
eval_tap $? 279 'TestCheckoutConfig' test.out

#- 280 DebugMatchedPaymentMerchantConfig
samples/cli/sample-apps Platform debugMatchedPaymentMerchantConfig \
    --namespace 'm9CuAD6s1v0PN0CT' \
    --region '49uIpQga1d2utjKt' \
    > test.out 2>&1
eval_tap $? 280 'DebugMatchedPaymentMerchantConfig' test.out

#- 281 TestPayPalConfig
samples/cli/sample-apps Platform testPayPalConfig \
    --sandbox 'true' \
    --body '{"clientID": "41LOiPbPjoWthzvI", "clientSecret": "fMw4FHOlcFUHRn50", "returnUrl": "ppnTT8TTCD2zxHvu", "webHookId": "dKfqJuTludFdRyhg"}' \
    > test.out 2>&1
eval_tap $? 281 'TestPayPalConfig' test.out

#- 282 TestStripeConfig
samples/cli/sample-apps Platform testStripeConfig \
    --sandbox 'true' \
    --body '{"allowedPaymentMethodTypes": ["bTvJCFrWq9hxv0py", "Zh0UBEJq3ADTOVZ7", "ErpOhs766TLv5fXW"], "publishableKey": "zjfvGWoExm1mx0ZB", "secretKey": "MBqQ4ow0fTcaKrTx", "webhookSecret": "bZIrUyirUcq0Re5X"}' \
    > test.out 2>&1
eval_tap $? 282 'TestStripeConfig' test.out

#- 283 TestWxPayConfig
samples/cli/sample-apps Platform testWxPayConfig \
    --body '{"appId": "F6bjWvnJ7JbBpPE3", "key": "NV5lQbRph7lwKgwK", "mchid": "Z8qKgFIoKoZjXENm", "returnUrl": "qQ1IMmIrsSvix4cN"}' \
    > test.out 2>&1
eval_tap $? 283 'TestWxPayConfig' test.out

#- 284 TestXsollaConfig
samples/cli/sample-apps Platform testXsollaConfig \
    --body '{"apiKey": "5gcwgeJUMYdEGry4", "flowCompletionUrl": "w7c587lGKDGAfQyT", "merchantId": 80, "projectId": 4, "projectSecretKey": "xWiF5EODOxmi7lDk"}' \
    > test.out 2>&1
eval_tap $? 284 'TestXsollaConfig' test.out

#- 285 GetPaymentMerchantConfig
samples/cli/sample-apps Platform getPaymentMerchantConfig \
    --id 'vsr3HQnukeiD6b0O' \
    > test.out 2>&1
eval_tap $? 285 'GetPaymentMerchantConfig' test.out

#- 286 UpdateAdyenConfig
samples/cli/sample-apps Platform updateAdyenConfig \
    --id '4vaDc8WuNUWuLp3x' \
    --sandbox 'false' \
    --validate 'true' \
    --body '{"allowedPaymentMethods": ["TipwpHXcHCLab7Xt", "JwCZjl7Zd7S55Tvp", "aILHJwHJyGV57VXr"], "apiKey": "lKCIIqs47ksydS8D", "authoriseAsCapture": false, "blockedPaymentMethods": ["RToRGu6D38TFh7HK", "y7nI6J4iizyVKSwx", "4Jcj0drFkwwispVU"], "clientKey": "fEoHsMz69boT7c2c", "dropInSettings": "nXNIqC2uSgABBwVv", "liveEndpointUrlPrefix": "vTv1zkwnIfEwYQlF", "merchantAccount": "mcmDRMEX2jwBjqX0", "notificationHmacKey": "YjNAGeucqeElQuAc", "notificationPassword": "IVWvRKMafF6gQ2Te", "notificationUsername": "YWdMjbIw7lzY5i1d", "returnUrl": "y055JABh9gs1xmdF", "settings": "JjwPMEgRBxgZk37A"}' \
    > test.out 2>&1
eval_tap $? 286 'UpdateAdyenConfig' test.out

#- 287 TestAdyenConfigById
samples/cli/sample-apps Platform testAdyenConfigById \
    --id 'HAdorX05k2YhCFqt' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 287 'TestAdyenConfigById' test.out

#- 288 UpdateAliPayConfig
samples/cli/sample-apps Platform updateAliPayConfig \
    --id 'x62Bb4gKafCEsFa9' \
    --sandbox 'false' \
    --validate 'true' \
    --body '{"appId": "nM192Um9huVrmxJD", "privateKey": "Q6wxhYQlAKfAmvN7", "publicKey": "ppkOMdQsYbS3kOq4", "returnUrl": "LHqLIXoDWssOIReR"}' \
    > test.out 2>&1
eval_tap $? 288 'UpdateAliPayConfig' test.out

#- 289 TestAliPayConfigById
samples/cli/sample-apps Platform testAliPayConfigById \
    --id 'tQazIK4nmPH8STTX' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 289 'TestAliPayConfigById' test.out

#- 290 UpdateCheckoutConfig
samples/cli/sample-apps Platform updateCheckoutConfig \
    --id 'wStFTzOuL6Fv1AGC' \
    --sandbox 'false' \
    --validate 'true' \
    --body '{"publicKey": "7TL6EjnVCS3tOiS1", "secretKey": "p2sCbLuMkv5i0G6K"}' \
    > test.out 2>&1
eval_tap $? 290 'UpdateCheckoutConfig' test.out

#- 291 TestCheckoutConfigById
samples/cli/sample-apps Platform testCheckoutConfigById \
    --id 'LDxBF1opQGCJZlHw' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 291 'TestCheckoutConfigById' test.out

#- 292 UpdatePayPalConfig
samples/cli/sample-apps Platform updatePayPalConfig \
    --id 'O3QB56mKpiylGRfc' \
    --sandbox 'true' \
    --validate 'true' \
    --body '{"clientID": "favULBT7hnPEkqd0", "clientSecret": "d4oaIUZKmmiqzJWC", "returnUrl": "Yd8gkmvXU04LvtZo", "webHookId": "tIzk650LxNoTeW5B"}' \
    > test.out 2>&1
eval_tap $? 292 'UpdatePayPalConfig' test.out

#- 293 TestPayPalConfigById
samples/cli/sample-apps Platform testPayPalConfigById \
    --id 'gFivhb1fMChGi1BB' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 293 'TestPayPalConfigById' test.out

#- 294 UpdateStripeConfig
samples/cli/sample-apps Platform updateStripeConfig \
    --id '3vDIvtc4JbdeP4F6' \
    --sandbox 'true' \
    --validate 'true' \
    --body '{"allowedPaymentMethodTypes": ["WthWsykuSn193tLG", "xKUnAMAnLUJNKFe5", "XlFQ1ti3L0xImoo5"], "publishableKey": "RZa57uOs9VTBLuft", "secretKey": "UWTx6py52bvwrQW8", "webhookSecret": "AUW6ZoxhA3KOecft"}' \
    > test.out 2>&1
eval_tap $? 294 'UpdateStripeConfig' test.out

#- 295 TestStripeConfigById
samples/cli/sample-apps Platform testStripeConfigById \
    --id 'OZgivZtDxrpvoAcq' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 295 'TestStripeConfigById' test.out

#- 296 UpdateWxPayConfig
samples/cli/sample-apps Platform updateWxPayConfig \
    --id 'oPKDTLSbyvW4zRjD' \
    --validate 'true' \
    --body '{"appId": "gORDhSiVg2T6RdhZ", "key": "JuTWrV5UIBXGBBpJ", "mchid": "mX5xO8CtgtLGqYMb", "returnUrl": "t2NKzDWarnTspP4P"}' \
    > test.out 2>&1
eval_tap $? 296 'UpdateWxPayConfig' test.out

#- 297 UpdateWxPayConfigCert
samples/cli/sample-apps Platform updateWxPayConfigCert \
    --id '8FZ5EOinnhqKXcuG' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 297 'UpdateWxPayConfigCert' test.out

#- 298 TestWxPayConfigById
samples/cli/sample-apps Platform testWxPayConfigById \
    --id '0IBdiXkNVI4B7RFS' \
    > test.out 2>&1
eval_tap $? 298 'TestWxPayConfigById' test.out

#- 299 UpdateXsollaConfig
samples/cli/sample-apps Platform updateXsollaConfig \
    --id 'WRCdZfDIZKwODQgZ' \
    --validate 'false' \
    --body '{"apiKey": "B0EOCizVDFjjGviX", "flowCompletionUrl": "tk7ScuWNQB2CHJVq", "merchantId": 6, "projectId": 11, "projectSecretKey": "JRIfmXptgkpwsojv"}' \
    > test.out 2>&1
eval_tap $? 299 'UpdateXsollaConfig' test.out

#- 300 TestXsollaConfigById
samples/cli/sample-apps Platform testXsollaConfigById \
    --id 'VVSXZ4eMcp5mhR4E' \
    > test.out 2>&1
eval_tap $? 300 'TestXsollaConfigById' test.out

#- 301 UpdateXsollaUIConfig
samples/cli/sample-apps Platform updateXsollaUIConfig \
    --id 'kMha8vBwVbC6zHDc' \
    --body '{"device": "DESKTOP", "showCloseButton": true, "size": "MEDIUM", "theme": "DARK"}' \
    > test.out 2>&1
eval_tap $? 301 'UpdateXsollaUIConfig' test.out

#- 302 QueryPaymentProviderConfig
samples/cli/sample-apps Platform queryPaymentProviderConfig \
    --limit '80' \
    --namespace 'qTJ2G8nkA6geBhzm' \
    --offset '46' \
    --region '4kgBBSgvXYcq8cY0' \
    > test.out 2>&1
eval_tap $? 302 'QueryPaymentProviderConfig' test.out

#- 303 CreatePaymentProviderConfig
samples/cli/sample-apps Platform createPaymentProviderConfig \
    --body '{"aggregate": "XSOLLA", "namespace": "9ohURLNkOQSVErXc", "region": "Lz3gdxN0cGHj4DYr", "sandboxTaxJarApiToken": "bkGxC8QNKXp0VUpS", "specials": ["ADYEN", "WALLET", "ALIPAY"], "taxJarApiToken": "Cgr2WCuub3ynOeKq", "taxJarEnabled": false, "useGlobalTaxJarApiToken": true}' \
    > test.out 2>&1
eval_tap $? 303 'CreatePaymentProviderConfig' test.out

#- 304 GetAggregatePaymentProviders
samples/cli/sample-apps Platform getAggregatePaymentProviders \
    > test.out 2>&1
eval_tap $? 304 'GetAggregatePaymentProviders' test.out

#- 305 DebugMatchedPaymentProviderConfig
samples/cli/sample-apps Platform debugMatchedPaymentProviderConfig \
    --namespace 'C5sH9UTynkEwobCc' \
    --region 'P4FmlBFCT05tVK8B' \
    > test.out 2>&1
eval_tap $? 305 'DebugMatchedPaymentProviderConfig' test.out

#- 306 GetSpecialPaymentProviders
samples/cli/sample-apps Platform getSpecialPaymentProviders \
    > test.out 2>&1
eval_tap $? 306 'GetSpecialPaymentProviders' test.out

#- 307 UpdatePaymentProviderConfig
samples/cli/sample-apps Platform updatePaymentProviderConfig \
    --id 'sw5wvk0btX9zTVjM' \
    --body '{"aggregate": "ADYEN", "namespace": "XR8qrrAO9ZMudnAK", "region": "DgnovT4xxJfxGEtj", "sandboxTaxJarApiToken": "z6QNyVVdnGNB3K01", "specials": ["WALLET", "XSOLLA", "ALIPAY"], "taxJarApiToken": "Kw4o733Lnoa0EDzk", "taxJarEnabled": false, "useGlobalTaxJarApiToken": false}' \
    > test.out 2>&1
eval_tap $? 307 'UpdatePaymentProviderConfig' test.out

#- 308 DeletePaymentProviderConfig
samples/cli/sample-apps Platform deletePaymentProviderConfig \
    --id 'i3MJOBsi4q8hLLjT' \
    > test.out 2>&1
eval_tap $? 308 'DeletePaymentProviderConfig' test.out

#- 309 GetPaymentTaxConfig
samples/cli/sample-apps Platform getPaymentTaxConfig \
    > test.out 2>&1
eval_tap $? 309 'GetPaymentTaxConfig' test.out

#- 310 UpdatePaymentTaxConfig
samples/cli/sample-apps Platform updatePaymentTaxConfig \
    --body '{"sandboxTaxJarApiToken": "VvRJGPgF61yWegUQ", "taxJarApiToken": "y6YwPzQKUBqJQmiq", "taxJarEnabled": true, "taxJarProductCodesMapping": {"sqbZZFjCFONSqsWE": "GXRzbwQqbA2Je9BD", "A8RWZluFsjShBxRN": "qvIfWuPaeqA5yu3K", "vpRjDdHSbXzuRJX2": "LpR1HwIniRpUJX76"}}' \
    > test.out 2>&1
eval_tap $? 310 'UpdatePaymentTaxConfig' test.out

#- 311 SyncPaymentOrders
samples/cli/sample-apps Platform syncPaymentOrders \
    --nextEvaluatedKey 'hkB6iLcGDdssSWtI' \
    --end 'SQDm43V8h9TjYUGG' \
    --start 'photRaR8oeXrBq1b' \
    > test.out 2>&1
eval_tap $? 311 'SyncPaymentOrders' test.out

#- 312 PublicGetRootCategories
samples/cli/sample-apps Platform publicGetRootCategories \
    --namespace $AB_NAMESPACE \
    --language 'Qk04wCexj4cWH76v' \
    --storeId 'DDHdmULEDKCcELc3' \
    > test.out 2>&1
eval_tap $? 312 'PublicGetRootCategories' test.out

#- 313 DownloadCategories
samples/cli/sample-apps Platform downloadCategories \
    --namespace $AB_NAMESPACE \
    --language '0l8v5wTRA474Re2O' \
    --storeId 'HCkrsx87S3yxETb6' \
    > test.out 2>&1
eval_tap $? 313 'DownloadCategories' test.out

#- 314 PublicGetCategory
samples/cli/sample-apps Platform publicGetCategory \
    --categoryPath 'pqF9Fx01dGlZ9zq5' \
    --namespace $AB_NAMESPACE \
    --language 'yH3IhbAkFVbPjoz4' \
    --storeId 'd0DWXSIuUTeDE5CM' \
    > test.out 2>&1
eval_tap $? 314 'PublicGetCategory' test.out

#- 315 PublicGetChildCategories
samples/cli/sample-apps Platform publicGetChildCategories \
    --categoryPath '7wEMEDDxeGDRluMe' \
    --namespace $AB_NAMESPACE \
    --language '7PYqA21PS6dY011k' \
    --storeId 'D9AQTFJsOThjF3bs' \
    > test.out 2>&1
eval_tap $? 315 'PublicGetChildCategories' test.out

#- 316 PublicGetDescendantCategories
samples/cli/sample-apps Platform publicGetDescendantCategories \
    --categoryPath '7kr8PMzLQ1nC0q7l' \
    --namespace $AB_NAMESPACE \
    --language 'qNDWjVpZdh9Squl8' \
    --storeId 'OhIGgaOPtebZFOn0' \
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
    --language 'Jps0D4erKyAJLb29' \
    --region 'qREQNoGOtYlrd7fJ' \
    --storeId 'mQ6I5YdiSJVZe1rU' \
    --appId 'JkgfgtJ9WP22hjk1' \
    > test.out 2>&1
eval_tap $? 319 'PublicGetItemByAppId' test.out

#- 320 PublicQueryItems
samples/cli/sample-apps Platform publicQueryItems \
    --namespace $AB_NAMESPACE \
    --appType 'DLC' \
    --baseAppId 'DNugy4O8pNF23FP0' \
    --categoryPath '16v2xzFrFaF71blx' \
    --features 'l1qT2hNj8sGdZotF' \
    --includeSubCategoryItem 'true' \
    --itemType 'APP' \
    --language 'vOt1EqBRyjItVTXu' \
    --limit '39' \
    --offset '3' \
    --region 'fcszdzjsay0vdYYZ' \
    --sortBy '["name:asc", "updatedAt"]' \
    --storeId 'TnV09bLHqjaH0KFW' \
    --tags 'LBWRPGIqJfMyV7pB' \
    > test.out 2>&1
eval_tap $? 320 'PublicQueryItems' test.out

#- 321 PublicGetItemBySku
samples/cli/sample-apps Platform publicGetItemBySku \
    --namespace $AB_NAMESPACE \
    --language 'rfVVNNqZ2JqBp2NH' \
    --region 'vt4bWjuAnvZ1tL2o' \
    --storeId 'tI6EVeCoAHIaUt4f' \
    --sku 'msHM0epmsTbaNZxq' \
    > test.out 2>&1
eval_tap $? 321 'PublicGetItemBySku' test.out

#- 322 PublicBulkGetItems
samples/cli/sample-apps Platform publicBulkGetItems \
    --namespace $AB_NAMESPACE \
    --language 'fZJhB9sOQWBeLhpe' \
    --region 'JWdwIEAnIHkJ9Rm4' \
    --storeId 'ZIWszyK5ZJB1lLot' \
    --itemIds 'NM7z8lQGRilfR5or' \
    > test.out 2>&1
eval_tap $? 322 'PublicBulkGetItems' test.out

#- 323 PublicValidateItemPurchaseCondition
samples/cli/sample-apps Platform publicValidateItemPurchaseCondition \
    --namespace $AB_NAMESPACE \
    --body '{"itemIds": ["mIGyZrLbdKTkJwvR", "HMwW7XdTvJAJ1q1I", "Rt7duU0KfbN8SP7e"]}' \
    > test.out 2>&1
eval_tap $? 323 'PublicValidateItemPurchaseCondition' test.out

#- 324 PublicSearchItems
samples/cli/sample-apps Platform publicSearchItems \
    --namespace $AB_NAMESPACE \
    --itemType 'CODE' \
    --limit '6' \
    --offset '28' \
    --region 'MT4NRBEHnfiToB6j' \
    --storeId 'FjgoAyqNEoHiTimf' \
    --keyword 'DNhCOebzZxOAHCxz' \
    --language 'yqgS5gDukIUtgcGT' \
    > test.out 2>&1
eval_tap $? 324 'PublicSearchItems' test.out

#- 325 PublicGetApp
samples/cli/sample-apps Platform publicGetApp \
    --itemId 'zxMeCEQaCkmEhuxK' \
    --namespace $AB_NAMESPACE \
    --language 'PI0eInXkMpJU2uWi' \
    --region 'Z1i7n5pX6L33k4WD' \
    --storeId 'VWZEKdlvJpWqdOcO' \
    > test.out 2>&1
eval_tap $? 325 'PublicGetApp' test.out

#- 326 PublicGetItemDynamicData
samples/cli/sample-apps Platform publicGetItemDynamicData \
    --itemId 'YOzeuBB5MrvvmRkV' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 326 'PublicGetItemDynamicData' test.out

#- 327 PublicGetItem
samples/cli/sample-apps Platform publicGetItem \
    --itemId 'NpYz0Ne7dpq69pqp' \
    --namespace $AB_NAMESPACE \
    --language 'nwKKvRVdxKfaKIWi' \
    --populateBundle 'true' \
    --region 'X8fi2fOzfEQsQniH' \
    --storeId 'rA384YBqiOUedWNn' \
    > test.out 2>&1
eval_tap $? 327 'PublicGetItem' test.out

#- 328 GetPaymentCustomization
eval_tap 0 328 'GetPaymentCustomization # SKIP deprecated' test.out

#- 329 PublicGetPaymentUrl
samples/cli/sample-apps Platform publicGetPaymentUrl \
    --namespace $AB_NAMESPACE \
    --body '{"paymentOrderNo": "5ONxsA5M2JhTHchL", "paymentProvider": "PAYPAL", "returnUrl": "D5VSxvHq3ygwVPgt", "ui": "4ZN60fvaErzYZDe3", "zipCode": "cfx9OhZUOKVUnmF3"}' \
    > test.out 2>&1
eval_tap $? 329 'PublicGetPaymentUrl' test.out

#- 330 PublicGetPaymentMethods
samples/cli/sample-apps Platform publicGetPaymentMethods \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'WY53CjaeQF3YXTzb' \
    > test.out 2>&1
eval_tap $? 330 'PublicGetPaymentMethods' test.out

#- 331 PublicGetUnpaidPaymentOrder
samples/cli/sample-apps Platform publicGetUnpaidPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'biGQTuKo02FrsdUU' \
    > test.out 2>&1
eval_tap $? 331 'PublicGetUnpaidPaymentOrder' test.out

#- 332 Pay
samples/cli/sample-apps Platform pay \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'UPiLWbb9CvUjStRM' \
    --paymentProvider 'CHECKOUT' \
    --zipCode 'swuB0Mpy2jIE43cG' \
    --body '{"token": "IiLHus7gtWGROjdf"}' \
    > test.out 2>&1
eval_tap $? 332 'Pay' test.out

#- 333 PublicCheckPaymentOrderPaidStatus
samples/cli/sample-apps Platform publicCheckPaymentOrderPaidStatus \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo '8edNLyAEJmSVdre4' \
    > test.out 2>&1
eval_tap $? 333 'PublicCheckPaymentOrderPaidStatus' test.out

#- 334 GetPaymentPublicConfig
samples/cli/sample-apps Platform getPaymentPublicConfig \
    --namespace $AB_NAMESPACE \
    --sandbox 'false' \
    --paymentProvider 'XSOLLA' \
    --region '21UsGBBUj3soB6RO' \
    > test.out 2>&1
eval_tap $? 334 'GetPaymentPublicConfig' test.out

#- 335 PublicGetQRCode
samples/cli/sample-apps Platform publicGetQRCode \
    --namespace $AB_NAMESPACE \
    --code '18KzrFTGp7OTmxri' \
    > test.out 2>&1
eval_tap $? 335 'PublicGetQRCode' test.out

#- 336 PublicNormalizePaymentReturnUrl
samples/cli/sample-apps Platform publicNormalizePaymentReturnUrl \
    --namespace $AB_NAMESPACE \
    --payerID 'T7yK7ZMXAbuF61qx' \
    --foreinginvoice 'Eo4arcgg9d6fdioS' \
    --invoiceId 'mkWJ0XyR9MhYZbj0' \
    --payload 'QmEDS91ZWEY8RBgB' \
    --redirectResult 'JlsAxKuMMJDHVgMr' \
    --resultCode 'jbYyIfjOt7SKpD5z' \
    --sessionId 'RDR2cmiiikmUztMq' \
    --status 'qXamlVTSpbrNUvsD' \
    --token 'I5gQHXuGjUCWfUuT' \
    --type 'VsPi73qZc87n51Tx' \
    --userId 'eXPSdMveZQpu9DWa' \
    --orderNo 'dCAj7P3j6m88BNf2' \
    --paymentOrderNo 'mEaTd59OnELUivtq' \
    --paymentProvider 'STRIPE' \
    --returnUrl '3nK9KqjDAr40MVCT' \
    > test.out 2>&1
eval_tap $? 336 'PublicNormalizePaymentReturnUrl' test.out

#- 337 GetPaymentTaxValue
samples/cli/sample-apps Platform getPaymentTaxValue \
    --namespace $AB_NAMESPACE \
    --zipCode 'S9UQRqN7xBV6c4ON' \
    --paymentOrderNo 'znxzobXReS8dbrd1' \
    --paymentProvider 'WXPAY' \
    > test.out 2>&1
eval_tap $? 337 'GetPaymentTaxValue' test.out

#- 338 GetRewardByCode
samples/cli/sample-apps Platform getRewardByCode \
    --namespace $AB_NAMESPACE \
    --rewardCode '3sqBxI2vyoQOhGdN' \
    > test.out 2>&1
eval_tap $? 338 'GetRewardByCode' test.out

#- 339 QueryRewards1
samples/cli/sample-apps Platform queryRewards1 \
    --namespace $AB_NAMESPACE \
    --eventTopic 'JJIVKPO32yNh31EL' \
    --limit '36' \
    --offset '10' \
    --sortBy '["rewardCode", "rewardCode:desc"]' \
    > test.out 2>&1
eval_tap $? 339 'QueryRewards1' test.out

#- 340 GetReward1
samples/cli/sample-apps Platform getReward1 \
    --namespace $AB_NAMESPACE \
    --rewardId 'PDtiVllvCBAtjy3i' \
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
    --appIds '["g81mjXtZ7gDFRxOZ", "tcTU3rnqjyKwL9C9", "1NoNBuxK5eG4bExo"]' \
    --itemIds '["onxjBiwG0WfjKOTq", "Uen5LE69L19tpfyy", "sZK1fLQ5ONEsP0fD"]' \
    --skus '["sPkMPxA91ySUOxZq", "66FIaYY8onv6KOlI", "YoiqrWjG7ud3xzwk"]' \
    > test.out 2>&1
eval_tap $? 342 'PublicExistsAnyMyActiveEntitlement' test.out

#- 343 PublicGetMyAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform publicGetMyAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --appId 'evxAFN5zFZ1hrlDR' \
    > test.out 2>&1
eval_tap $? 343 'PublicGetMyAppEntitlementOwnershipByAppId' test.out

#- 344 PublicGetMyEntitlementOwnershipByItemId
samples/cli/sample-apps Platform publicGetMyEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --entitlementClazz 'LOOTBOX' \
    --itemId 'EcNXq5BmEZlLmWQk' \
    > test.out 2>&1
eval_tap $? 344 'PublicGetMyEntitlementOwnershipByItemId' test.out

#- 345 PublicGetMyEntitlementOwnershipBySku
samples/cli/sample-apps Platform publicGetMyEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --entitlementClazz 'ENTITLEMENT' \
    --sku 'zYW0u2OvtKS9xAcg' \
    > test.out 2>&1
eval_tap $? 345 'PublicGetMyEntitlementOwnershipBySku' test.out

#- 346 PublicGetEntitlementOwnershipToken
samples/cli/sample-apps Platform publicGetEntitlementOwnershipToken \
    --namespace $AB_NAMESPACE \
    --appIds '["ATOkOMkwnouhDexP", "8sHMtmsJK8oZOZzm", "ZNMsYbxrqdPk1Sa9"]' \
    --itemIds '["vXhIaC4VgBa622OR", "E4Jdw1hW74PJzACa", "cGlB73QB1jas0wWS"]' \
    --skus '["i0gYlZjQhSwrPGa8", "bwi98A58oEf6AMHx", "YubJqSkG4Uo0srnu"]' \
    > test.out 2>&1
eval_tap $? 346 'PublicGetEntitlementOwnershipToken' test.out

#- 347 SyncTwitchDropsEntitlement
samples/cli/sample-apps Platform syncTwitchDropsEntitlement \
    --namespace $AB_NAMESPACE \
    --body '{"gameId": "iDREYIbw00NkVD03", "language": "cR", "region": "Hj78uVFb34V7eAEJ"}' \
    > test.out 2>&1
eval_tap $? 347 'SyncTwitchDropsEntitlement' test.out

#- 348 PublicGetMyWallet
samples/cli/sample-apps Platform publicGetMyWallet \
    --currencyCode 'nd0xfgkcB4ZumFJp' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 348 'PublicGetMyWallet' test.out

#- 349 SyncEpicGameDLC
samples/cli/sample-apps Platform syncEpicGameDLC \
    --namespace $AB_NAMESPACE \
    --userId 'ehZfnuJ9Nxg7H0f7' \
    --body '{"epicGamesJwtToken": "c0aUhC5LaVjdNV5A"}' \
    > test.out 2>&1
eval_tap $? 349 'SyncEpicGameDLC' test.out

#- 350 PublicSyncPsnDlcInventory
samples/cli/sample-apps Platform publicSyncPsnDlcInventory \
    --namespace $AB_NAMESPACE \
    --userId 'ijB0cV92DfGv0pJf' \
    --body '{"serviceLabel": 50}' \
    > test.out 2>&1
eval_tap $? 350 'PublicSyncPsnDlcInventory' test.out

#- 351 PublicSyncPsnDlcInventoryWithMultipleServiceLabels
samples/cli/sample-apps Platform publicSyncPsnDlcInventoryWithMultipleServiceLabels \
    --namespace $AB_NAMESPACE \
    --userId 'hVIGTZWjC30kbOSc' \
    --body '{"serviceLabels": [67, 47, 31]}' \
    > test.out 2>&1
eval_tap $? 351 'PublicSyncPsnDlcInventoryWithMultipleServiceLabels' test.out

#- 352 SyncSteamDLC
samples/cli/sample-apps Platform syncSteamDLC \
    --namespace $AB_NAMESPACE \
    --userId 'Xj8cABpq03RIPKhu' \
    --body '{"appId": "w2JggRRL8n9xH5sK", "steamId": "MeBJGk2UqsGOsab9"}' \
    > test.out 2>&1
eval_tap $? 352 'SyncSteamDLC' test.out

#- 353 SyncXboxDLC
samples/cli/sample-apps Platform syncXboxDLC \
    --namespace $AB_NAMESPACE \
    --userId 'pbCeqc3hjWXCCJgE' \
    --body '{"xstsToken": "8QPojU7aPgJxKuoe"}' \
    > test.out 2>&1
eval_tap $? 353 'SyncXboxDLC' test.out

#- 354 PublicQueryUserEntitlements
samples/cli/sample-apps Platform publicQueryUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'gKX6Bh3H6IZ7diLT' \
    --appType 'SOFTWARE' \
    --entitlementClazz 'LOOTBOX' \
    --entitlementName 'aTGfCArMyf6TmSkF' \
    --features '["zPBCNZ5ZthkEu8nY", "4xU6cMqLwWtcQXk6", "3ULtpbT06pKPr3pB"]' \
    --itemId '["CSX1Xm4HeByadhmu", "famZav8x6Kc1DtI6", "JL87Ivtz61FOdg3m"]' \
    --limit '98' \
    --offset '81' \
    > test.out 2>&1
eval_tap $? 354 'PublicQueryUserEntitlements' test.out

#- 355 PublicGetUserAppEntitlementByAppId
samples/cli/sample-apps Platform publicGetUserAppEntitlementByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'By0z4b3N417CHZiG' \
    --appId 'ZG6L7zWOgCzD5I48' \
    > test.out 2>&1
eval_tap $? 355 'PublicGetUserAppEntitlementByAppId' test.out

#- 356 PublicQueryUserEntitlementsByAppType
samples/cli/sample-apps Platform publicQueryUserEntitlementsByAppType \
    --namespace $AB_NAMESPACE \
    --userId 'eKUKX9QpKaycFT6O' \
    --limit '42' \
    --offset '25' \
    --appType 'DLC' \
    > test.out 2>&1
eval_tap $? 356 'PublicQueryUserEntitlementsByAppType' test.out

#- 357 PublicGetUserEntitlementByItemId
samples/cli/sample-apps Platform publicGetUserEntitlementByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'wbrRyugdEy7VsOUv' \
    --entitlementClazz 'SUBSCRIPTION' \
    --itemId 'zepHzwDJ6Eh1Q1yH' \
    > test.out 2>&1
eval_tap $? 357 'PublicGetUserEntitlementByItemId' test.out

#- 358 PublicGetUserEntitlementBySku
samples/cli/sample-apps Platform publicGetUserEntitlementBySku \
    --namespace $AB_NAMESPACE \
    --userId 'juePRM4dFg2fEyFR' \
    --entitlementClazz 'ENTITLEMENT' \
    --sku 'Q8tj8YuxK3ruPV9L' \
    > test.out 2>&1
eval_tap $? 358 'PublicGetUserEntitlementBySku' test.out

#- 359 PublicExistsAnyUserActiveEntitlement
samples/cli/sample-apps Platform publicExistsAnyUserActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'td4wCSbqF6mcWvJf' \
    --appIds '["4E58GzMXeCxVHwDf", "S0YqaFscT5oMKMEt", "CG0MVesdDcZTxXRm"]' \
    --itemIds '["nj9uTmbNbKKIkdVX", "g4BHC4qEvxmP9tDX", "Plj8LMHYOoHLsMYc"]' \
    --skus '["dcLMYw321po66pgD", "qO224UmS1U2Q8nav", "otJ5GudtcJiE0ut9"]' \
    > test.out 2>&1
eval_tap $? 359 'PublicExistsAnyUserActiveEntitlement' test.out

#- 360 PublicGetUserAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform publicGetUserAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --userId '14Mj4DxGyZjXkYRR' \
    --appId 'uD5nykjzJ6V9AjJV' \
    > test.out 2>&1
eval_tap $? 360 'PublicGetUserAppEntitlementOwnershipByAppId' test.out

#- 361 PublicGetUserEntitlementOwnershipByItemId
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'apeiRejUg8RpAGkd' \
    --entitlementClazz 'LOOTBOX' \
    --itemId '7VTWjyzm8KePvFfA' \
    > test.out 2>&1
eval_tap $? 361 'PublicGetUserEntitlementOwnershipByItemId' test.out

#- 362 PublicGetUserEntitlementOwnershipByItemIds
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'Yb6JQ8mheFZ7Rm6X' \
    --ids '["bpmRTImEBIbg3vu6", "CJZEx0fHLLYsY2vq", "Ih7zru3YcpQdVBX1"]' \
    > test.out 2>&1
eval_tap $? 362 'PublicGetUserEntitlementOwnershipByItemIds' test.out

#- 363 PublicGetUserEntitlementOwnershipBySku
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --userId 'ym93Dl6vsJfG1qTl' \
    --entitlementClazz 'LOOTBOX' \
    --sku 'eq7n6IV5pmaXPuZx' \
    > test.out 2>&1
eval_tap $? 363 'PublicGetUserEntitlementOwnershipBySku' test.out

#- 364 PublicGetUserEntitlement
samples/cli/sample-apps Platform publicGetUserEntitlement \
    --entitlementId 'QGaGTmsFdYFzcAR5' \
    --namespace $AB_NAMESPACE \
    --userId 'CBGJVlV0bVsvHaUD' \
    > test.out 2>&1
eval_tap $? 364 'PublicGetUserEntitlement' test.out

#- 365 PublicConsumeUserEntitlement
samples/cli/sample-apps Platform publicConsumeUserEntitlement \
    --entitlementId 'nuoEAQwsc7on9RD3' \
    --namespace $AB_NAMESPACE \
    --userId 'FjLrRaDjCrPZAXp9' \
    --body '{"options": ["lgghPx1btCPGLOGd", "HQcZDfRbdvQIoGId", "tzWuG1h9lKIxOMj5"], "requestId": "eN5i8JA5meu2PBqv", "useCount": 84}' \
    > test.out 2>&1
eval_tap $? 365 'PublicConsumeUserEntitlement' test.out

#- 366 PublicSellUserEntitlement
samples/cli/sample-apps Platform publicSellUserEntitlement \
    --entitlementId '2wiCYSimYIbGMvCH' \
    --namespace $AB_NAMESPACE \
    --userId 'Ub1mhem1kaX80ABZ' \
    --body '{"requestId": "I9JmsflEOQuAwKfI", "useCount": 13}' \
    > test.out 2>&1
eval_tap $? 366 'PublicSellUserEntitlement' test.out

#- 367 PublicRedeemCode
samples/cli/sample-apps Platform publicRedeemCode \
    --namespace $AB_NAMESPACE \
    --userId 'skPpGlErNQObPLXs' \
    --body '{"code": "lzwaoy4p0JeTzRKZ", "language": "PjD_TBUC", "region": "tmjf67HGl8XKSDK7"}' \
    > test.out 2>&1
eval_tap $? 367 'PublicRedeemCode' test.out

#- 368 PublicFulfillAppleIAPItem
samples/cli/sample-apps Platform publicFulfillAppleIAPItem \
    --namespace $AB_NAMESPACE \
    --userId '7K5lUrJMrZD5KhYQ' \
    --body '{"excludeOldTransactions": true, "language": "UrN-GvIV", "productId": "K4CqISMELp7qiB63", "receiptData": "DJxFBMjl4FtbyyA5", "region": "iszhAwyc5lEoHAjF", "transactionId": "tOfwvM27TknfHNDP"}' \
    > test.out 2>&1
eval_tap $? 368 'PublicFulfillAppleIAPItem' test.out

#- 369 SyncEpicGamesInventory
samples/cli/sample-apps Platform syncEpicGamesInventory \
    --namespace $AB_NAMESPACE \
    --userId '0NchQRFuJotWP0eR' \
    --body '{"epicGamesJwtToken": "xRs3SQacTuJASSKK"}' \
    > test.out 2>&1
eval_tap $? 369 'SyncEpicGamesInventory' test.out

#- 370 PublicFulfillGoogleIAPItem
samples/cli/sample-apps Platform publicFulfillGoogleIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'FvNMwEoVBmOVqF1H' \
    --body '{"autoAck": true, "language": "cn-CCrg", "orderId": "dJOA3zCz1p7TvbPi", "packageName": "HCK05iTyibpq6Rq7", "productId": "0lBwudLmLWjtDpVg", "purchaseTime": 96, "purchaseToken": "VKvAgAqB0PQ8Gi5h", "region": "PKr0UsHEyFq5QxZk"}' \
    > test.out 2>&1
eval_tap $? 370 'PublicFulfillGoogleIAPItem' test.out

#- 371 PublicReconcilePlayStationStore
samples/cli/sample-apps Platform publicReconcilePlayStationStore \
    --namespace $AB_NAMESPACE \
    --userId 'nHGetAlV5EeRFPDn' \
    --body '{"currencyCode": "AwpaI5Y8ldObazsf", "price": 0.6460078264938266, "productId": "hr9bggLzpulIDFjF", "serviceLabel": 23}' \
    > test.out 2>&1
eval_tap $? 371 'PublicReconcilePlayStationStore' test.out

#- 372 PublicReconcilePlayStationStoreWithMultipleServiceLabels
samples/cli/sample-apps Platform publicReconcilePlayStationStoreWithMultipleServiceLabels \
    --namespace $AB_NAMESPACE \
    --userId 'YC0uWa6Ckgz4Lqwd' \
    --body '{"currencyCode": "gJqvQplVZIXw2DeD", "price": 0.8784537155970766, "productId": "I7YC6E1kLwYva5uh", "serviceLabels": [73, 52, 61]}' \
    > test.out 2>&1
eval_tap $? 372 'PublicReconcilePlayStationStoreWithMultipleServiceLabels' test.out

#- 373 SyncSteamInventory
samples/cli/sample-apps Platform syncSteamInventory \
    --namespace $AB_NAMESPACE \
    --userId 'A4A2PU6AlnxtEyuZ' \
    --body '{"appId": "RlFn3KOWwN2utxU7", "currencyCode": "T0BmyQJa0my45nNV", "language": "tMp_qg", "price": 0.38865333891159837, "productId": "6fOnnHAREzVRS1GX", "region": "wVhzGXX7cRsDBII0", "steamId": "ZSYqaXiwPnzaIzOa"}' \
    > test.out 2>&1
eval_tap $? 373 'SyncSteamInventory' test.out

#- 374 SyncTwitchDropsEntitlement1
samples/cli/sample-apps Platform syncTwitchDropsEntitlement1 \
    --namespace $AB_NAMESPACE \
    --userId 'Pz5nrPV0fa20PdEG' \
    --body '{"gameId": "kw3XJFI2DdaIzAm6", "language": "KX_AD", "region": "QLBt32OD8ov8CU8o"}' \
    > test.out 2>&1
eval_tap $? 374 'SyncTwitchDropsEntitlement1' test.out

#- 375 SyncXboxInventory
samples/cli/sample-apps Platform syncXboxInventory \
    --namespace $AB_NAMESPACE \
    --userId 'UY7p8QLnK6ptTwKN' \
    --body '{"currencyCode": "G3cojZnC3HfaarCe", "price": 0.7230960152078633, "productId": "06w7f68hFMllSmdu", "xstsToken": "GXds0sQxtJvwVOf2"}' \
    > test.out 2>&1
eval_tap $? 375 'SyncXboxInventory' test.out

#- 376 PublicQueryUserOrders
samples/cli/sample-apps Platform publicQueryUserOrders \
    --namespace $AB_NAMESPACE \
    --userId 'kwxINxmryiLz99N0' \
    --itemId 'I93IyYfo7BORSYET' \
    --limit '94' \
    --offset '68' \
    --status 'REFUND_FAILED' \
    > test.out 2>&1
eval_tap $? 376 'PublicQueryUserOrders' test.out

#- 377 PublicCreateUserOrder
samples/cli/sample-apps Platform publicCreateUserOrder \
    --namespace $AB_NAMESPACE \
    --userId 'yguMIYmOOIBkMUJO' \
    --body '{"currencyCode": "BJxJnevX7EE1ChVP", "discountedPrice": 73, "ext": {"zMjb3AWhejGJKT2w": {}, "PzdZtctXA2R0JBA7": {}, "qKNJSJhv3Ivri1te": {}}, "itemId": "dPWEigaiLdp8IfCU", "language": "CJHG_JAba_204", "price": 57, "quantity": 14, "region": "k1URgj3jM5y0na6g", "returnUrl": "zoLBJXqyCD9f8SK5", "sectionId": "40e7ADu8BFIoq9aD"}' \
    > test.out 2>&1
eval_tap $? 377 'PublicCreateUserOrder' test.out

#- 378 PublicGetUserOrder
samples/cli/sample-apps Platform publicGetUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo '5nyuKRMYFFGwELV7' \
    --userId 'i8BDe4ihNtrB0SVF' \
    > test.out 2>&1
eval_tap $? 378 'PublicGetUserOrder' test.out

#- 379 PublicCancelUserOrder
samples/cli/sample-apps Platform publicCancelUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'nuhzuJ6M3WDddmKI' \
    --userId 'F4FC1neaDu6ylkSH' \
    > test.out 2>&1
eval_tap $? 379 'PublicCancelUserOrder' test.out

#- 380 PublicGetUserOrderHistories
samples/cli/sample-apps Platform publicGetUserOrderHistories \
    --namespace $AB_NAMESPACE \
    --orderNo 'U5nVpyqNCjLS8TPq' \
    --userId 'OxBRkQZJRjjIFwX0' \
    > test.out 2>&1
eval_tap $? 380 'PublicGetUserOrderHistories' test.out

#- 381 PublicDownloadUserOrderReceipt
samples/cli/sample-apps Platform publicDownloadUserOrderReceipt \
    --namespace $AB_NAMESPACE \
    --orderNo 'h2iSwEBZDVnAkrsV' \
    --userId 'jRaLrVcwxITpDTIg' \
    > test.out 2>&1
eval_tap $? 381 'PublicDownloadUserOrderReceipt' test.out

#- 382 PublicGetPaymentAccounts
samples/cli/sample-apps Platform publicGetPaymentAccounts \
    --namespace $AB_NAMESPACE \
    --userId 'kjiG4kO18XCuF8p6' \
    > test.out 2>&1
eval_tap $? 382 'PublicGetPaymentAccounts' test.out

#- 383 PublicDeletePaymentAccount
samples/cli/sample-apps Platform publicDeletePaymentAccount \
    --id 'YO2Y4s0iRsLqXMMs' \
    --namespace $AB_NAMESPACE \
    --type 'paypal' \
    --userId 'rniJ8Vw9lDGooqAB' \
    > test.out 2>&1
eval_tap $? 383 'PublicDeletePaymentAccount' test.out

#- 384 PublicListActiveSections
samples/cli/sample-apps Platform publicListActiveSections \
    --namespace $AB_NAMESPACE \
    --userId 'XMmMxfEUkDiG0BEi' \
    --language 'yTo4PCuWrZzhrSIh' \
    --region 'f64yUdgq46Qsk26C' \
    --storeId 'BtViss1DeL5qkqbt' \
    --viewId 'JoNPQhvDJJyFgEfK' \
    > test.out 2>&1
eval_tap $? 384 'PublicListActiveSections' test.out

#- 385 PublicQueryUserSubscriptions
samples/cli/sample-apps Platform publicQueryUserSubscriptions \
    --namespace $AB_NAMESPACE \
    --userId 'hpv0Tx8lbca5vQMq' \
    --chargeStatus 'NEVER' \
    --itemId 'Tjl3ZsACQPkNHq8Y' \
    --limit '22' \
    --offset '11' \
    --sku 'xMdwr5CXuzYqz6JT' \
    --status 'EXPIRED' \
    --subscribedBy 'USER' \
    > test.out 2>&1
eval_tap $? 385 'PublicQueryUserSubscriptions' test.out

#- 386 PublicSubscribeSubscription
samples/cli/sample-apps Platform publicSubscribeSubscription \
    --namespace $AB_NAMESPACE \
    --userId 'bDMiMRhrQJYiY6v8' \
    --body '{"currencyCode": "95blY0lHCSUi8fpu", "itemId": "OC0fMefEanrlbfug", "language": "LZ_442", "region": "gdsn9T7GqHaSIEEn", "returnUrl": "gL44bFyv2Z2qvvbY", "source": "yEYQSztnUDc1frZc"}' \
    > test.out 2>&1
eval_tap $? 386 'PublicSubscribeSubscription' test.out

#- 387 PublicCheckUserSubscriptionSubscribableByItemId
samples/cli/sample-apps Platform publicCheckUserSubscriptionSubscribableByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'JxHDfKrFC6HNRync' \
    --itemId 'RAJNrV8asDplSPbH' \
    > test.out 2>&1
eval_tap $? 387 'PublicCheckUserSubscriptionSubscribableByItemId' test.out

#- 388 PublicGetUserSubscription
samples/cli/sample-apps Platform publicGetUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'j4bsMAMGxF0wG8L4' \
    --userId 'stbsigI4ywbOUUYh' \
    > test.out 2>&1
eval_tap $? 388 'PublicGetUserSubscription' test.out

#- 389 PublicChangeSubscriptionBillingAccount
samples/cli/sample-apps Platform publicChangeSubscriptionBillingAccount \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'Vsd3mK8ITPDpvMjs' \
    --userId 'cBBSScXhMnO16ZKT' \
    > test.out 2>&1
eval_tap $? 389 'PublicChangeSubscriptionBillingAccount' test.out

#- 390 PublicCancelSubscription
samples/cli/sample-apps Platform publicCancelSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'RfruGtN4QgXm3ntQ' \
    --userId 'EIU4rsgXDgWH8PjG' \
    --body '{"immediate": true, "reason": "z5CEkw16YsHI5Wbq"}' \
    > test.out 2>&1
eval_tap $? 390 'PublicCancelSubscription' test.out

#- 391 PublicGetUserSubscriptionBillingHistories
samples/cli/sample-apps Platform publicGetUserSubscriptionBillingHistories \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'jMgvjU1vXbL9EwLH' \
    --userId 'jmfPcU5K2dzFaDc3' \
    --excludeFree 'false' \
    --limit '71' \
    --offset '91' \
    > test.out 2>&1
eval_tap $? 391 'PublicGetUserSubscriptionBillingHistories' test.out

#- 392 PublicListViews
samples/cli/sample-apps Platform publicListViews \
    --namespace $AB_NAMESPACE \
    --userId '5Wa02hUsqpGrVC2N' \
    --language 'JwlTUMQphO20zOpJ' \
    --storeId '55F1Af7HAoVGl1e9' \
    > test.out 2>&1
eval_tap $? 392 'PublicListViews' test.out

#- 393 PublicGetWallet
samples/cli/sample-apps Platform publicGetWallet \
    --currencyCode 'UVjqQqidEDnO3Yho' \
    --namespace $AB_NAMESPACE \
    --userId 'l3MeBFVM7Tt3eake' \
    > test.out 2>&1
eval_tap $? 393 'PublicGetWallet' test.out

#- 394 PublicListUserWalletTransactions
samples/cli/sample-apps Platform publicListUserWalletTransactions \
    --currencyCode 'WDFZhFhBRTTBNnFW' \
    --namespace $AB_NAMESPACE \
    --userId 'L7AdPZrjn5aMXKLF' \
    --limit '64' \
    --offset '86' \
    > test.out 2>&1
eval_tap $? 394 'PublicListUserWalletTransactions' test.out

#- 395 QueryItems1
samples/cli/sample-apps Platform queryItems1 \
    --namespace $AB_NAMESPACE \
    --appType 'DEMO' \
    --availableDate 'qOgWwk4f1AuXCQ1w' \
    --baseAppId 'QyjyOl9MDKCAuOY0' \
    --categoryPath 'oqbkmthIc6Ae3gvt' \
    --features 'Ptgk7OMlBBITLaxJ' \
    --includeSubCategoryItem 'true' \
    --itemName 'XG0tdS3PqIO9aQf5' \
    --itemStatus 'ACTIVE' \
    --itemType 'CODE' \
    --limit '68' \
    --offset '9' \
    --region 'TGvUdIfII2qonKdn' \
    --sectionExclusive 'false' \
    --sortBy '["name:desc", "name", "updatedAt"]' \
    --storeId 'r24qyQnHhGj7jPW1' \
    --tags 'AWPTS122KOruEZNw' \
    --targetNamespace '72fQFi4M3pijx2zF' \
    > test.out 2>&1
eval_tap $? 395 'QueryItems1' test.out

#- 396 ImportStore1
samples/cli/sample-apps Platform importStore1 \
    --namespace $AB_NAMESPACE \
    --storeId 'GnSJ82QV2zhb4IJF' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 396 'ImportStore1' test.out

#- 397 ExportStore1
samples/cli/sample-apps Platform exportStore1 \
    --namespace $AB_NAMESPACE \
    --storeId 'qEXL3PLlJPRLgB20' \
    --body '{"itemIds": ["MiVi6F6fBt1MLhQq", "UtmTuqeyQSLYOHYR", "bsoayOyDjriv1f0i"]}' \
    > test.out 2>&1
eval_tap $? 397 'ExportStore1' test.out


rm -f "tmp.dat"

exit $EXIT_CODE