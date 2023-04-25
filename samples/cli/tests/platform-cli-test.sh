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
echo "1..396"

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
    --body '{"context": {"item": {"appId": "UHHEl5kDoA6sX7wy", "appType": "GAME", "baseAppId": "2cWzsXzenvweHjSs", "boothName": "Ix2WF33ZwUUKPO8u", "boundItemIds": ["xBwFzGwc181Tos3Y", "D009SLh7Qoag4raq", "L1tdIbTiPcTYlQKo"], "categoryPath": "Gn7pje7ojTA7dg7o", "clazz": "TxKyxSVNxVZnnMyQ", "createdAt": "1978-11-05T00:00:00Z", "description": "oCQaekiRpWu02YzZ", "displayOrder": 71, "entitlementType": "DURABLE", "ext": {"MPliH4pjbkOtsbj3": {}, "90uGjA9rZ75dLNjZ": {}, "XXeYGBxrZxEDeQXV": {}}, "features": ["NwY89l1Gvqkp3jkX", "15BodNH96k4DKeVr", "eouJnjzjMWW3k1yg"], "fresh": true, "images": [{"as": "vEalzFuybFLojagX", "caption": "QjaV6EM5qrOYUDYo", "height": 21, "imageUrl": "bAk5ke2eZqic9f8H", "smallImageUrl": "6FvQCfxSvMAwoG1u", "width": 51}, {"as": "5XxxDGyRKYSfNFLf", "caption": "OI0Bq9Fg2CjGhqbY", "height": 19, "imageUrl": "WtIbxt760M3AjsBC", "smallImageUrl": "VjLNtOKqpxHw26jn", "width": 27}, {"as": "9jbSHB5MXMzTpv6x", "caption": "FFtzfRXQuHIaD0jk", "height": 26, "imageUrl": "SWOhIUywYNKsYMvm", "smallImageUrl": "veD0VmDCvX9NYoJP", "width": 45}], "itemId": "dQWMiJIlWqAwXIGj", "itemIds": ["SPZM33qhW2XlIatR", "Z3lIA2rHiL4bFpjY", "CRtsOwVFJx8kAdxE"], "itemQty": {"aqvmiSpzY3PU1gUO": 29, "a3jSQJurtPDVDlPT": 92, "WihLjmxh9k89ZSX5": 40}, "itemType": "MEDIA", "language": "jVZ2SU0qQ7kvjSAv", "listable": false, "localExt": {"eIjXLz4WqrMZAw2m": {}, "fzKWi2yGSnQO3Mko": {}, "OssXz8twzHcCppeg": {}}, "longDescription": "wcF8Uh5XPRDAhgEt", "lootBoxConfig": {"rewardCount": 31, "rewards": [{"lootBoxItems": [{"count": 42, "itemId": "5T4sUIZ5wiJ4sPrC", "itemSku": "EUVFEsPEkJS1dRxw", "itemType": "RdP0iA2DphOqZzxZ"}, {"count": 26, "itemId": "NRnKnbMHPJi5ljl4", "itemSku": "bD6yIy40iv7iPCAu", "itemType": "TGEgMkWTLIr7rc95"}, {"count": 70, "itemId": "rAnz8gC9ET88jhxf", "itemSku": "QGigLDIBCdjlILcj", "itemType": "WDjtCyieX134N765"}], "name": "ARjMh2gvDqD2Yiuu", "odds": 0.7393732289869998, "type": "PROBABILITY_GROUP", "weight": 76}, {"lootBoxItems": [{"count": 90, "itemId": "ccvZGxzzeG5wL5wj", "itemSku": "XTVJAzqZIJqYbOOF", "itemType": "SYnRrja6EMeyAsuQ"}, {"count": 30, "itemId": "n4IAoqE1lhgUK3qF", "itemSku": "T5dYb57bqYd1x0dg", "itemType": "ueCrLhsN890DWm97"}, {"count": 55, "itemId": "nj7f7lR7tNVvby5L", "itemSku": "49Yg2MuOb5YxHAip", "itemType": "gcO9KI2jQ99W1Mgc"}], "name": "nPKjkcHmdswyxJWX", "odds": 0.10925766629424893, "type": "PROBABILITY_GROUP", "weight": 89}, {"lootBoxItems": [{"count": 34, "itemId": "anNzumyLm7fv1gY1", "itemSku": "aAM5J4FWI9zSkxsg", "itemType": "4iah5wYJgpioxyyH"}, {"count": 56, "itemId": "3NBRktSGMWBYkUwV", "itemSku": "IQx1HFz86Wq10fk6", "itemType": "f8t6fMblpL1UTleB"}, {"count": 21, "itemId": "E0or7ZMVg8rRRmvA", "itemSku": "Eay32eDAqTeQvw9I", "itemType": "gU8lMUX0Zevb9L3Z"}], "name": "CnPUZl8MqC8UISgg", "odds": 0.043273689158323525, "type": "PROBABILITY_GROUP", "weight": 65}], "rollFunction": "CUSTOM"}, "maxCount": 59, "maxCountPerUser": 75, "name": "zSWran5GHngPuIrs", "namespace": "u2zQeOuajL03nWmJ", "optionBoxConfig": {"boxItems": [{"count": 48, "itemId": "blLarfTtZscJz5bf", "itemSku": "a1meWVUitBy2hBmB", "itemType": "2bJkOhQExpDyFCYZ"}, {"count": 55, "itemId": "BzyCLl2YupnDeafs", "itemSku": "AmZu4ppanHLcQe3m", "itemType": "2NPdGHwqWVhGt0mf"}, {"count": 45, "itemId": "nHZfuMxo98mS8Zbb", "itemSku": "jGrAK4XZ3w9O5AUs", "itemType": "onHws20iDsMLCL5Y"}]}, "purchasable": false, "purchaseCondition": {"conditionGroups": [{"operator": "and", "predicates": [{"anyOf": 47, "comparison": "isGreaterThan", "name": "zyBcwtaKTaKgBMqu", "predicateType": "EntitlementPredicate", "value": "zfSYN6y0UJlft0rX", "values": ["lG3UjEgKa1dLYrSy", "kX7D7lW87AFUiLHI", "wGyXSANfUYxEBwiU"]}, {"anyOf": 66, "comparison": "isLessThanOrEqual", "name": "HoTCrPCzxAmOZ39J", "predicateType": "EntitlementPredicate", "value": "kPxa4535FjFfgyzw", "values": ["q0kMknOKjgrmeGiZ", "mHetGyu3WLhbaYUZ", "IKLa7GDQWXuBLNJp"]}, {"anyOf": 71, "comparison": "isLessThan", "name": "3eERTrpeGwA7ZyPy", "predicateType": "SeasonPassPredicate", "value": "SuMPnQcPlqZR4SbH", "values": ["RHsTuKtYqYrP9WBF", "Mcz4NulCamXf4VRM", "LzaSkyRFz499djHO"]}]}, {"operator": "and", "predicates": [{"anyOf": 49, "comparison": "isLessThan", "name": "ydprW6RFKzrPmdQS", "predicateType": "SeasonPassPredicate", "value": "oJsuDfS9I3alLVtg", "values": ["YlGEuC4G5sHp7w6w", "RnEyZoHcADr9Co8Y", "cn36dMDM0K6QACz6"]}, {"anyOf": 51, "comparison": "isLessThanOrEqual", "name": "1L1mkRJs3cQQ7b5f", "predicateType": "SeasonPassPredicate", "value": "aQUOlecE40KnnQp4", "values": ["WYgYA1Ve3KzcwmdN", "EpaTJNtSdIaLuFXG", "Bxbnl3uYo0b3Y5Za"]}, {"anyOf": 62, "comparison": "isNot", "name": "9SpFoIgvMnwune7P", "predicateType": "SeasonPassPredicate", "value": "RMKG4HWjNSqgzoTT", "values": ["680QjiGPsHkIb6Ri", "MP9Rsmd4gf2Y6bKU", "nxBDLnjJ44CW1J2H"]}]}, {"operator": "or", "predicates": [{"anyOf": 97, "comparison": "isLessThan", "name": "nN0sGHYN8fFgPgMk", "predicateType": "EntitlementPredicate", "value": "joAyl1QDWyGUIRWH", "values": ["gm4tGjuKcHz5EM8z", "4d23Z76MjoaN6AV1", "yPPyTHCeHucHiO89"]}, {"anyOf": 19, "comparison": "isNot", "name": "0stJjI7xLwbHdkXD", "predicateType": "SeasonPassPredicate", "value": "gCjmsEuOt7okWIQW", "values": ["4U9xIY3U5PrCtICC", "WPjQyyUdxHxC5MNd", "sknBJpIqeD1QysnC"]}, {"anyOf": 34, "comparison": "isGreaterThanOrEqual", "name": "3NPERvQK2PRJgphd", "predicateType": "SeasonPassPredicate", "value": "h5yhczkEr0veHTBq", "values": ["w0ZU51qRiab159e9", "IX6z53MUkmIWOFCA", "IGkWIGLnAhG7YAK1"]}]}]}, "recurring": {"cycle": "WEEKLY", "fixedFreeDays": 89, "fixedTrialCycles": 25, "graceDays": 35}, "region": "sMp5LPrVxHVZEFd1", "regionData": [{"currencyCode": "Im5RkB4zWoSDnKI5", "currencyNamespace": "pv6goBdMtuQn5KhY", "currencyType": "REAL", "discountAmount": 90, "discountExpireAt": "1996-07-28T00:00:00Z", "discountPercentage": 92, "discountPurchaseAt": "1982-08-03T00:00:00Z", "discountedPrice": 52, "expireAt": "1986-10-01T00:00:00Z", "price": 54, "purchaseAt": "1984-03-03T00:00:00Z", "trialPrice": 2}, {"currencyCode": "nVwe42WgeIfUR1eH", "currencyNamespace": "aC9agr4hirYVANEa", "currencyType": "REAL", "discountAmount": 39, "discountExpireAt": "1980-08-28T00:00:00Z", "discountPercentage": 40, "discountPurchaseAt": "1996-06-20T00:00:00Z", "discountedPrice": 14, "expireAt": "1977-09-12T00:00:00Z", "price": 24, "purchaseAt": "1990-09-11T00:00:00Z", "trialPrice": 90}, {"currencyCode": "Si3GeIrHuNF1HH5N", "currencyNamespace": "Iu56DCdhxjzNigBL", "currencyType": "REAL", "discountAmount": 84, "discountExpireAt": "1979-09-22T00:00:00Z", "discountPercentage": 31, "discountPurchaseAt": "1973-03-26T00:00:00Z", "discountedPrice": 70, "expireAt": "1996-12-23T00:00:00Z", "price": 29, "purchaseAt": "1988-12-24T00:00:00Z", "trialPrice": 77}], "saleConfig": {"currencyCode": "vrhbPY85DVjuSODB", "price": 7}, "seasonType": "PASS", "sectionExclusive": true, "sellable": true, "sku": "9b25apizvk6eHtuH", "stackable": true, "status": "ACTIVE", "tags": ["fVMjgFAh5ZirrdgV", "HFoJeyCm3eJfEIx6", "uNIPHcWMWPtNIIx6"], "targetCurrencyCode": "JSBD9JP2hveBy4Kw", "targetItemId": "3Xmyq6Eukv0ZHDt8", "targetNamespace": "vNSSMe8K45VCgR4s", "thumbnailUrl": "Z0KzTq95etDAltYH", "title": "wcFqMUcfccRhf7Y7", "updatedAt": "1990-08-19T00:00:00Z", "useCount": 77}, "namespace": "FcEfBw5paWFme13C", "order": {"currency": {"currencyCode": "ttv3KGdYdOVMZV0w", "currencySymbol": "Qfz6oTA3yLPmZAtF", "currencyType": "REAL", "decimals": 68, "namespace": "lNcO3Xlm6sxnXvQa"}, "ext": {"SvNqawlCoNnMQAfi": {}, "M1CTuX0Xar0ibrMn": {}, "zXFtK9U2ekzCvhiz": {}}, "free": true}, "source": "PROMOTION"}, "script": "EDn51t00hds8iTp0", "type": "grantDays"}' \
    > test.out 2>&1
eval_tap $? 3 'TestFulfillmentScriptEval' test.out

#- 4 GetFulfillmentScript
samples/cli/sample-apps Platform getFulfillmentScript \
    --id 'Kbt4VLeeEyUfUDjJ' \
    > test.out 2>&1
eval_tap $? 4 'GetFulfillmentScript' test.out

#- 5 CreateFulfillmentScript
samples/cli/sample-apps Platform createFulfillmentScript \
    --id 'vaQTr5HVVsEjTxlG' \
    --body '{"grantDays": "BcZR3JM84Y2mpGgi"}' \
    > test.out 2>&1
eval_tap $? 5 'CreateFulfillmentScript' test.out

#- 6 DeleteFulfillmentScript
samples/cli/sample-apps Platform deleteFulfillmentScript \
    --id 'EGs9aKW0DOsfnFHz' \
    > test.out 2>&1
eval_tap $? 6 'DeleteFulfillmentScript' test.out

#- 7 UpdateFulfillmentScript
samples/cli/sample-apps Platform updateFulfillmentScript \
    --id 'RrqYkJExBBQ1Wp6p' \
    --body '{"grantDays": "3M9fFYXrK9xIpC5v"}' \
    > test.out 2>&1
eval_tap $? 7 'UpdateFulfillmentScript' test.out

#- 8 ListItemTypeConfigs
samples/cli/sample-apps Platform listItemTypeConfigs \
    > test.out 2>&1
eval_tap $? 8 'ListItemTypeConfigs' test.out

#- 9 CreateItemTypeConfig
samples/cli/sample-apps Platform createItemTypeConfig \
    --body '{"clazz": "0LLnmAc5eiffQBJc", "dryRun": true, "fulfillmentUrl": "EelvfzyEK1LxFhe2", "itemType": "OPTIONBOX", "purchaseConditionUrl": "Uo6grUopXIPsUiql"}' \
    > test.out 2>&1
eval_tap $? 9 'CreateItemTypeConfig' test.out

#- 10 SearchItemTypeConfig
samples/cli/sample-apps Platform searchItemTypeConfig \
    --clazz 'DvL8EzpzwHTVAPQV' \
    --itemType 'COINS' \
    > test.out 2>&1
eval_tap $? 10 'SearchItemTypeConfig' test.out

#- 11 GetItemTypeConfig
samples/cli/sample-apps Platform getItemTypeConfig \
    --id 'VhbIbuYtw7mZRaSp' \
    > test.out 2>&1
eval_tap $? 11 'GetItemTypeConfig' test.out

#- 12 UpdateItemTypeConfig
samples/cli/sample-apps Platform updateItemTypeConfig \
    --id 'jp23lpiymyJPZazr' \
    --body '{"clazz": "YZx4R4cYOyH3dlN8", "dryRun": false, "fulfillmentUrl": "BSZzc8OvkR2dB7aW", "purchaseConditionUrl": "9NRfZJss8OeTL6IV"}' \
    > test.out 2>&1
eval_tap $? 12 'UpdateItemTypeConfig' test.out

#- 13 DeleteItemTypeConfig
samples/cli/sample-apps Platform deleteItemTypeConfig \
    --id 'skpO05fLyrXxyMwA' \
    > test.out 2>&1
eval_tap $? 13 'DeleteItemTypeConfig' test.out

#- 14 QueryCampaigns
samples/cli/sample-apps Platform queryCampaigns \
    --namespace $AB_NAMESPACE \
    --limit '11' \
    --name '0HLpKcsqVD09LUPN' \
    --offset '59' \
    --tag '1J5cgBPQExszCyXB' \
    > test.out 2>&1
eval_tap $? 14 'QueryCampaigns' test.out

#- 15 CreateCampaign
samples/cli/sample-apps Platform createCampaign \
    --namespace $AB_NAMESPACE \
    --body '{"description": "2IdE5fE9myZ8LW9O", "items": [{"extraSubscriptionDays": 37, "itemId": "fPwptAwijhZKb1eB", "itemName": "w1ElxccTVsrQmjCD", "quantity": 80}, {"extraSubscriptionDays": 92, "itemId": "aeK4RKxZzqi7h4Cb", "itemName": "tRLgBA4fiubhqQbX", "quantity": 52}, {"extraSubscriptionDays": 61, "itemId": "ziFWahCE07aW1Fty", "itemName": "AMkOeDv3jEvpL1UJ", "quantity": 79}], "maxRedeemCountPerCampaignPerUser": 89, "maxRedeemCountPerCode": 15, "maxRedeemCountPerCodePerUser": 25, "maxSaleCount": 58, "name": "ODwcw6wrWrG9QFEi", "redeemEnd": "1978-03-20T00:00:00Z", "redeemStart": "1989-07-22T00:00:00Z", "redeemType": "ITEM", "status": "ACTIVE", "tags": ["yIcOFicVv5dyoJRu", "ZqJ8tB8bPsBTX2te", "WQBIB4FHkUO90wfx"], "type": "REDEMPTION"}' \
    > test.out 2>&1
eval_tap $? 15 'CreateCampaign' test.out

#- 16 GetCampaign
samples/cli/sample-apps Platform getCampaign \
    --campaignId 'YpWmcvg0MURQarso' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'GetCampaign' test.out

#- 17 UpdateCampaign
samples/cli/sample-apps Platform updateCampaign \
    --campaignId 'k78kR9L3PlQ8v4ci' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "4r3D6uCOLfisFt4c", "items": [{"extraSubscriptionDays": 77, "itemId": "SUvZRY7unm0HDAxK", "itemName": "pmgOSBmZpcrz9EVj", "quantity": 2}, {"extraSubscriptionDays": 25, "itemId": "soh0nJRyrmkO1lpq", "itemName": "TJa7CUDweqDLN2sp", "quantity": 70}, {"extraSubscriptionDays": 61, "itemId": "1vdEOX7BTx86LfiQ", "itemName": "ikzbH5BYALVj6n8w", "quantity": 25}], "maxRedeemCountPerCampaignPerUser": 50, "maxRedeemCountPerCode": 0, "maxRedeemCountPerCodePerUser": 91, "maxSaleCount": 43, "name": "g1yShP0G5EBKL60b", "redeemEnd": "1978-08-13T00:00:00Z", "redeemStart": "1998-08-09T00:00:00Z", "redeemType": "ITEM", "status": "ACTIVE", "tags": ["Yi74kVSuINRpWjCc", "rYe8T9sNEejOQEGy", "tHFD80JDdSLKDkA2"]}' \
    > test.out 2>&1
eval_tap $? 17 'UpdateCampaign' test.out

#- 18 GetCampaignDynamic
samples/cli/sample-apps Platform getCampaignDynamic \
    --campaignId 'bU11z19ErJX6axIz' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'GetCampaignDynamic' test.out

#- 19 GetRootCategories
samples/cli/sample-apps Platform getRootCategories \
    --namespace $AB_NAMESPACE \
    --storeId 'ZnDGPnKDJ81CnTu5' \
    > test.out 2>&1
eval_tap $? 19 'GetRootCategories' test.out

#- 20 CreateCategory
samples/cli/sample-apps Platform createCategory \
    --namespace $AB_NAMESPACE \
    --storeId 'U2SfyFe8JA9bCjXq' \
    --body '{"categoryPath": "yBOoaIowl5GFRZQz", "localizationDisplayNames": {"oyF9kXUWnaSzD1XR": "KCUeP3zdJToy1gZa", "UEFm2CeZeHs4Xbc6": "qZlyv7SYiQEWsKjq", "0ODHhJf8Ne0jaL2U": "QqBsY6Vo61h0bBHf"}}' \
    > test.out 2>&1
eval_tap $? 20 'CreateCategory' test.out

#- 21 ListCategoriesBasic
samples/cli/sample-apps Platform listCategoriesBasic \
    --namespace $AB_NAMESPACE \
    --storeId 'w4HyVpQUbvRGd1Ub' \
    > test.out 2>&1
eval_tap $? 21 'ListCategoriesBasic' test.out

#- 22 GetCategory
samples/cli/sample-apps Platform getCategory \
    --categoryPath 'KjmlFHnRAFgtoRRD' \
    --namespace $AB_NAMESPACE \
    --storeId 'CompAus0mLZncvtd' \
    > test.out 2>&1
eval_tap $? 22 'GetCategory' test.out

#- 23 UpdateCategory
samples/cli/sample-apps Platform updateCategory \
    --categoryPath 'Ez3Oqfsoh07GZOEP' \
    --namespace $AB_NAMESPACE \
    --storeId '3YECccNgABoCkvSV' \
    --body '{"localizationDisplayNames": {"ofdrTTy2tJBgs4IQ": "yfOXktFSFNjDo3aJ", "1KOjn5HKepwguTg2": "uG74UdjZxaXNLrX8", "HFLVG0proKFYRqKp": "Nb4AioBZlA4g6g3U"}}' \
    > test.out 2>&1
eval_tap $? 23 'UpdateCategory' test.out

#- 24 DeleteCategory
samples/cli/sample-apps Platform deleteCategory \
    --categoryPath '6kxVYNtNef7jpl5Q' \
    --namespace $AB_NAMESPACE \
    --storeId 'OtZZefigciuySyfS' \
    > test.out 2>&1
eval_tap $? 24 'DeleteCategory' test.out

#- 25 GetChildCategories
samples/cli/sample-apps Platform getChildCategories \
    --categoryPath 'rzj6BGzfro1zAl8b' \
    --namespace $AB_NAMESPACE \
    --storeId 'OvOrBpwVwlR9exTR' \
    > test.out 2>&1
eval_tap $? 25 'GetChildCategories' test.out

#- 26 GetDescendantCategories
samples/cli/sample-apps Platform getDescendantCategories \
    --categoryPath 'WwXoos1oZKtCsTO4' \
    --namespace $AB_NAMESPACE \
    --storeId 'XCx4PdedOa9KEP0n' \
    > test.out 2>&1
eval_tap $? 26 'GetDescendantCategories' test.out

#- 27 QueryCodes
samples/cli/sample-apps Platform queryCodes \
    --campaignId 'IuUjoU38k5vIREUj' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --batchNo '8' \
    --code 'GNSrjXRvwZo5v505' \
    --limit '31' \
    --offset '91' \
    > test.out 2>&1
eval_tap $? 27 'QueryCodes' test.out

#- 28 CreateCodes
samples/cli/sample-apps Platform createCodes \
    --campaignId 'JLPEn8Rn0aZiyGPC' \
    --namespace $AB_NAMESPACE \
    --body '{"quantity": 72}' \
    > test.out 2>&1
eval_tap $? 28 'CreateCodes' test.out

#- 29 Download
samples/cli/sample-apps Platform download \
    --campaignId 'b3NkuKlgQGKD7y68' \
    --namespace $AB_NAMESPACE \
    --batchNo '3' \
    > test.out 2>&1
eval_tap $? 29 'Download' test.out

#- 30 BulkDisableCodes
samples/cli/sample-apps Platform bulkDisableCodes \
    --campaignId 'BbDk0Xp0EpQIXFTd' \
    --namespace $AB_NAMESPACE \
    --batchNo '50' \
    > test.out 2>&1
eval_tap $? 30 'BulkDisableCodes' test.out

#- 31 BulkEnableCodes
samples/cli/sample-apps Platform bulkEnableCodes \
    --campaignId 'dliWPXXuDIGwO6yp' \
    --namespace $AB_NAMESPACE \
    --batchNo '7' \
    > test.out 2>&1
eval_tap $? 31 'BulkEnableCodes' test.out

#- 32 QueryRedeemHistory
samples/cli/sample-apps Platform queryRedeemHistory \
    --campaignId 'Ycl92rGLHuutid5k' \
    --namespace $AB_NAMESPACE \
    --code 'vLOAb7WTVsxhJ79W' \
    --limit '67' \
    --offset '7' \
    --userId 'vMprpAXmkRNJTPsj' \
    > test.out 2>&1
eval_tap $? 32 'QueryRedeemHistory' test.out

#- 33 GetCode
samples/cli/sample-apps Platform getCode \
    --code 'pszNCq5KgtkqCLAk' \
    --namespace $AB_NAMESPACE \
    --redeemable 'false' \
    > test.out 2>&1
eval_tap $? 33 'GetCode' test.out

#- 34 DisableCode
samples/cli/sample-apps Platform disableCode \
    --code '24r8P6V42m0Q0hK9' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 34 'DisableCode' test.out

#- 35 EnableCode
samples/cli/sample-apps Platform enableCode \
    --code 'aNiqZBBzxIhYW5eK' \
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
    --body '{"grpcServerAddress": "niM41qabovEgYrYq"}' \
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
    --body '{"currencyCode": "QaVacn2wnOCspypH", "currencySymbol": "EkCaF7tAnqe88a6H", "currencyType": "VIRTUAL", "decimals": 25, "localizationDescriptions": {"p7WNfcg59GV5gip6": "5Dk4cqBxeX2XnW2i", "BHMjRfgT7Iqsm8BY": "2zeDYeuymYtbL37E", "9jKDCUNDokEVSh7O": "KdFvNMqTcIyPAr6K"}}' \
    > test.out 2>&1
eval_tap $? 40 'CreateCurrency' test.out

#- 41 UpdateCurrency
samples/cli/sample-apps Platform updateCurrency \
    --currencyCode 'vLSe4maDs3S4IiMQ' \
    --namespace $AB_NAMESPACE \
    --body '{"localizationDescriptions": {"yikVZ5OvD6uqZe6r": "7o6nJgwO3yCYrikn", "QioIS0YzlQGJaVIy": "jxYCe22gNPdC4ScO", "EPhRPBMLNuu6ZiMf": "E2nF9zMhRbc2OHPp"}}' \
    > test.out 2>&1
eval_tap $? 41 'UpdateCurrency' test.out

#- 42 DeleteCurrency
samples/cli/sample-apps Platform deleteCurrency \
    --currencyCode 'TvaHY7k2obMLG3tc' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 42 'DeleteCurrency' test.out

#- 43 GetCurrencyConfig
samples/cli/sample-apps Platform getCurrencyConfig \
    --currencyCode 'UxhTnWDrHHMeIKcJ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 43 'GetCurrencyConfig' test.out

#- 44 GetCurrencySummary
samples/cli/sample-apps Platform getCurrencySummary \
    --currencyCode 'LJnPt4W7TJEgvGCw' \
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
    --body '{"data": [{"id": "enKyw1jQ3or3ZLoc", "rewards": [{"currency": {"currencyCode": "BqhBy89cYuvBcF09", "namespace": "taI9CJgiC0AeDIoC"}, "item": {"itemId": "bjIpipNWrsmOZ4Gr", "itemSku": "XVVc0upOWsgFhQCo", "itemType": "QuZyiZBTNoRGXRCg"}, "quantity": 78, "type": "CURRENCY"}, {"currency": {"currencyCode": "ix6dCRZonCEyZua8", "namespace": "dUnvytjTD7w5DD4G"}, "item": {"itemId": "fAgdRDNfEkwT9CKy", "itemSku": "yqMbtUUfidrfVVKW", "itemType": "UUtDO56rA5DJrhfu"}, "quantity": 87, "type": "CURRENCY"}, {"currency": {"currencyCode": "Qa1FvqxHfrtlMHqF", "namespace": "Uds584PFxgCFDvh4"}, "item": {"itemId": "r3cB2wVZ1zxJiIMF", "itemSku": "Zod721fr6y5NgAZR", "itemType": "Kohoav8WzcIGSLpB"}, "quantity": 47, "type": "CURRENCY"}]}, {"id": "bXwDyF7rF9LZKK2v", "rewards": [{"currency": {"currencyCode": "MnsHPfgPbFfITGmt", "namespace": "7aCfs32EiwanMDdM"}, "item": {"itemId": "RCB1RcrKhCSCGcFf", "itemSku": "EpnK7NWP35OL7bci", "itemType": "kqvM60t9BPpitWhD"}, "quantity": 23, "type": "CURRENCY"}, {"currency": {"currencyCode": "TdiZVyTHRPLiaQMe", "namespace": "YeLLzVaXPA2LwUzZ"}, "item": {"itemId": "2Q3o02CSxTyjAn3E", "itemSku": "GcR321lf4JnWaV5U", "itemType": "0xCLhAqtUPbxmvOo"}, "quantity": 0, "type": "ITEM"}, {"currency": {"currencyCode": "30UB92ODyXA0yrQc", "namespace": "fm6ZE2S9OpZITnH1"}, "item": {"itemId": "P16GTzHrw2ErwHj7", "itemSku": "U9DLManH8QwoFXxk", "itemType": "rn0vXz5cjTkiJjTu"}, "quantity": 61, "type": "CURRENCY"}]}, {"id": "YCEjARiH8ek5aLNS", "rewards": [{"currency": {"currencyCode": "oOt0c0piYTM0fSu3", "namespace": "kxVaziBSRCI6K7XS"}, "item": {"itemId": "JLDOqicV1n80LfYw", "itemSku": "PoC4lYXUFwmhhoeg", "itemType": "T4lS2aC12BMItXry"}, "quantity": 1, "type": "CURRENCY"}, {"currency": {"currencyCode": "qJGCIdTFOLuBwAQA", "namespace": "QxyFtFsUMu8F4OQX"}, "item": {"itemId": "FTl9N1v1b3BwDlBB", "itemSku": "K1kfSIFWsGjD3sAm", "itemType": "uEfsaKBB3mw18Exj"}, "quantity": 33, "type": "ITEM"}, {"currency": {"currencyCode": "lduxuCY9hlOE4wmJ", "namespace": "IAWM3Mff9btX9lYl"}, "item": {"itemId": "PZrZ26emxoo5P3HV", "itemSku": "wualdKfZ6SaXZ6PU", "itemType": "GPS8pKyIG8U5wLOL"}, "quantity": 20, "type": "CURRENCY"}]}]}' \
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
    --body '{"data": [{"platform": "STEAM", "platformDlcIdMap": {"NfFc2HFVoPSdXpGe": "yzibqYoTHYITYQJH", "V2eOZ6JKosDgyjU1": "GL3A5a4uhHnc5Itj", "pr9AyWBwQZiI2QeE": "lrzX5UQLG4sYnILD"}}, {"platform": "PSN", "platformDlcIdMap": {"XOrnodVjiG1KCBBT": "NXKoq7sUJjAv4fTz", "faVMJ6ADElA7OZGb": "bU6jn0XxXfspwRNt", "Aqcfd4QCwlTTxfH0": "WG84L4i99DZY4LaL"}}, {"platform": "XBOX", "platformDlcIdMap": {"aM91X853EKv3US9I": "o52CflgrgW1aCxij", "4jkiROEYtCkJR7tL": "ZhlbpsmHiMl8nm60", "x1uYrk4vXTv8TGq1": "YlQXit13JVIuQbbn"}}]}' \
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
    --entitlementClazz 'SUBSCRIPTION' \
    --entitlementName '5nJ1V4xpz57l88ni' \
    --itemId '["Faat0jj669S5cTMc", "GjAzFTNSuJN2oJuk", "ZHNzxHxvOmAFJEmK"]' \
    --limit '9' \
    --offset '48' \
    --userId '9jlCcY8K01CuQpGC' \
    > test.out 2>&1
eval_tap $? 51 'QueryEntitlements' test.out

#- 52 QueryEntitlements1
samples/cli/sample-apps Platform queryEntitlements1 \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --itemIds '["ks0xGKcCpOZiKPzA", "OvRSj0cgUrjy7ajv", "kMjduNqCizY7Dd1f"]' \
    --limit '53' \
    --offset '92' \
    > test.out 2>&1
eval_tap $? 52 'QueryEntitlements1' test.out

#- 53 GrantEntitlements
samples/cli/sample-apps Platform grantEntitlements \
    --namespace $AB_NAMESPACE \
    --body '{"entitlementGrantList": [{"endDate": "1988-01-22T00:00:00Z", "grantedCode": "qUxfDjGo4aENjPeL", "itemId": "u13ZjVAAdcUvSKN2", "itemNamespace": "OZINFwUv6rfBk1An", "language": "FJcA_YSRx", "quantity": 44, "region": "Xld0ezBNIMQF8Uwi", "source": "REWARD", "startDate": "1981-10-09T00:00:00Z", "storeId": "O1jPoKZ57I6tZY4l"}, {"endDate": "1976-10-09T00:00:00Z", "grantedCode": "ftLERnuO5QUF2JV0", "itemId": "TxIrNJouinu3RI2f", "itemNamespace": "T67DmuQITo0yKLuz", "language": "BGd_aERK", "quantity": 88, "region": "qEdXa170WFGLxwux", "source": "REDEEM_CODE", "startDate": "1991-10-30T00:00:00Z", "storeId": "5lqzOtHA9NAmQM04"}, {"endDate": "1982-07-05T00:00:00Z", "grantedCode": "srOAwWSwjZlFslHd", "itemId": "sWZ608FAG4dWDlT6", "itemNamespace": "kzvHJ86SzdWx3NnD", "language": "eJEO-OHlm-VR", "quantity": 41, "region": "5ZWrbzQosVwWbmWj", "source": "PURCHASE", "startDate": "1987-04-12T00:00:00Z", "storeId": "2w4wU83oCMtFmzGq"}], "userIds": ["ENyrWRfpsFgLro4p", "lmVIUA1auTEeiroR", "iOrFvHoTodQ5kwbz"]}' \
    > test.out 2>&1
eval_tap $? 53 'GrantEntitlements' test.out

#- 54 RevokeEntitlements
samples/cli/sample-apps Platform revokeEntitlements \
    --namespace $AB_NAMESPACE \
    --body '["um5WOoLuskMieb4w", "5EaSdenLqrzZtOzB", "01kaSYtKWNwApjJl"]' \
    > test.out 2>&1
eval_tap $? 54 'RevokeEntitlements' test.out

#- 55 GetEntitlement
samples/cli/sample-apps Platform getEntitlement \
    --entitlementId 'uPLJoxwcAfHmfh91' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 55 'GetEntitlement' test.out

#- 56 QueryFulfillmentHistories
samples/cli/sample-apps Platform queryFulfillmentHistories \
    --namespace $AB_NAMESPACE \
    --limit '61' \
    --offset '12' \
    --status 'SUCCESS' \
    --userId 'nTbM0knSVeOZJYMU' \
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
    --body '{"bundleId": "zpas4B1Bvg1FxIiI", "password": "CJTWx8xohkaRPqse"}' \
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
    --body '{"sandboxId": "xxYMbqeNvZXQjmje"}' \
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
    --body '{"applicationName": "bT1vMI6EuDZqQPWa", "serviceAccountId": "mjWQRvUR2UrRXGKd"}' \
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
    --body '{"data": [{"itemIdentity": "V9OgtykTOxgaK5ti", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"AxjI3He19RL8xyLv": "MMgbbHUoMZ9WF1yT", "vmWE9DeXsw8Irj0H": "JRCzSnXrSZJEyd8U", "zaZb8KIhBnWk3lik": "MrmsuIRt2TB3Tn7W"}}, {"itemIdentity": "oPzxnXZFo7O8fMao", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"iwuRWYPpOWP13DsV": "MkDrWZP8C9dMEnr6", "uoscEeaF23hdwe1M": "sagE3i20EEcJNXmb", "RL2sBTIeD7C7vptX": "E9tfC75iDFkp0bku"}}, {"itemIdentity": "O5gUQSUWsbDpivzc", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"uhfSGqGE6g9D2V6D": "PqEZjr4mKx2apkKK", "UZ2gVJXcxGwRRzQr": "J6kkQoe3aY2AsIQ1", "4HzWdBoTmUSHs341": "JdlvQaok8Gv5nLUX"}}]}' \
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
    --body '{"environment": "W6cDLU1clLkxNRmV"}' \
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
    --body '{"appId": "O60IFv405wrvq8ey", "publisherAuthenticationKey": "2Iu8LomEOpUb23hb"}' \
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
    --body '{"clientId": "mVBzEHQG9WyxyAA7", "clientSecret": "W72wLiEVob8PbS37", "organizationId": "H9GkP2o4H4Doij2i"}' \
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
    --body '{"relyingPartyCert": "Dz1E4kPv1Zv4Jl0X"}' \
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
    --password 'SNA1pL113shn022O' \
    > test.out 2>&1
eval_tap $? 82 'UpdateXblBPCertFile' test.out

#- 83 DownloadInvoiceDetails
samples/cli/sample-apps Platform downloadInvoiceDetails \
    --namespace $AB_NAMESPACE \
    --feature 'lYZ2s8bjZe6r4SSW' \
    --itemId 'c5eFpkRrzhO8GeQy' \
    --itemType 'BUNDLE' \
    --endTime '7AprYnDzFsGcVIbf' \
    --startTime 'AcBQfM4h5qrLysNG' \
    > test.out 2>&1
eval_tap $? 83 'DownloadInvoiceDetails' test.out

#- 84 GenerateInvoiceSummary
samples/cli/sample-apps Platform generateInvoiceSummary \
    --namespace $AB_NAMESPACE \
    --feature '7Jz7c70tNUlagEqm' \
    --itemId 'SeE3PxF3ZRtGBtGC' \
    --itemType 'OPTIONBOX' \
    --endTime '2Un5kYgSVZpOOKBA' \
    --startTime 'J9PhM0K7cAEURW1N' \
    > test.out 2>&1
eval_tap $? 84 'GenerateInvoiceSummary' test.out

#- 85 SyncInGameItem
samples/cli/sample-apps Platform syncInGameItem \
    --namespace $AB_NAMESPACE \
    --storeId '0iepZbo717SR3D9K' \
    --body '{"categoryPath": "iXyyLmhgRacEzMpf", "targetItemId": "GUgc6FHNKSvs3213", "targetNamespace": "7NrttokCPr14hngY"}' \
    > test.out 2>&1
eval_tap $? 85 'SyncInGameItem' test.out

#- 86 CreateItem
samples/cli/sample-apps Platform createItem \
    --namespace $AB_NAMESPACE \
    --storeId 'QtQ0aXzsef9aIIu3' \
    --body '{"appId": "xXh5ywvYCpAUn3S0", "appType": "DLC", "baseAppId": "0NJNkD8XvJ3KeCk9", "boothName": "hw4NLLJyq7MexK6N", "categoryPath": "ipO1WscDQzt3Xs1s", "clazz": "yFDqCMRDYubWGjoq", "displayOrder": 11, "entitlementType": "DURABLE", "ext": {"URc8nF59aQ9QZAJk": {}, "cY7jVqZe5Qtdmo5k": {}, "HB9WFoFd154lQ3vR": {}}, "features": ["tUvMm6ggXPRhH9JF", "R6zOvnJDcq7QTWJt", "mgbraJAj2JMyjCnP"], "images": [{"as": "hjwSDrBFK2CXNmxo", "caption": "3qqMoXAPhM1M6yLv", "height": 12, "imageUrl": "d3SIs7Vg2C9ND3gl", "smallImageUrl": "gdFgpF1O2zhNMK8X", "width": 13}, {"as": "Z6EDvXhF5GiYkgi6", "caption": "fGkRavndvAGsuIij", "height": 9, "imageUrl": "ViNlqTgUCt9VuKsb", "smallImageUrl": "2fTT4TpxX5g2sUji", "width": 35}, {"as": "jtaEnwbtandkFZO1", "caption": "VwGvrAVQFkm6DiLI", "height": 26, "imageUrl": "tEGptXkZPeR48zEJ", "smallImageUrl": "38INpaVMByHLfXBd", "width": 38}], "itemIds": ["ErW30Kz5NfGYLzHp", "rcMoqqIr0hMfQU88", "3MsI8V5XN9wJtanY"], "itemQty": {"uvhWd194NYg1AC6o": 16, "yIfWA79jGU2jLPRh": 49, "YvDoaUjq9UB6M8aQ": 78}, "itemType": "LOOTBOX", "listable": false, "localizations": {"KImX3TKDB20yb4t7": {"description": "gbp0HjXs1r3MJqs5", "localExt": {"vvv8uyh0LhKBrjxa": {}, "O1TuCidRGRw9LMO3": {}, "8g6N8SWyKQQNSUz7": {}}, "longDescription": "e3OHtu5eEmNic4n5", "title": "zqTCKmVYRnv3IHeO"}, "tBoaJ2fzpvQypLqi": {"description": "7Q3DH8DLO7lOLh8g", "localExt": {"GOHDZk6oxidkGCb7": {}, "AyK84zclBgvA0Ku8": {}, "8KIWMi6FHZ2fDInk": {}}, "longDescription": "WkvglQkONpRpUFSA", "title": "m3rrXYEyp09kmBUL"}, "hw0kTcH5g11Z5peR": {"description": "OxH2E97M8zQlCQBG", "localExt": {"AgomlRZNgxkFSVAF": {}, "MyacaeugEdLTJBtH": {}, "I1w8iyiTrDh19yCJ": {}}, "longDescription": "drPMhf2NOX4WlqYL", "title": "BZs9wj81TCAd8YPy"}}, "lootBoxConfig": {"rewardCount": 86, "rewards": [{"lootBoxItems": [{"count": 87, "itemId": "COebxnOuh1C9D88t", "itemSku": "wyBoxU7HvRYZt2g7", "itemType": "ddq8SRaZ6NKu8NGJ"}, {"count": 85, "itemId": "JVeT5EA4xoOLSALF", "itemSku": "nKgIHhMPnvIoAVXM", "itemType": "NklE7gkpdY0xuRd6"}, {"count": 99, "itemId": "9XjJRR58RwVfmSq7", "itemSku": "lXAEQeOl5owrjBG9", "itemType": "WqburDwVMCwGXG85"}], "name": "Iztq9uIo7x175B5G", "odds": 0.40660669255819615, "type": "REWARD", "weight": 71}, {"lootBoxItems": [{"count": 33, "itemId": "909n68ANAYOj0Buc", "itemSku": "MoaglVJRYmfG0QaQ", "itemType": "uVKKwwNBmKkunHb1"}, {"count": 73, "itemId": "eR8Lvh2F9U7C3Cxa", "itemSku": "nzuoNpIr35m7yiJ1", "itemType": "HYpaF80SDvlgLFHp"}, {"count": 15, "itemId": "xGdb0qTKyEeSAxW8", "itemSku": "iMTrhoSbmMaSa46R", "itemType": "S685aV0nGrKKrpMk"}], "name": "YnfuNVbaiQ3Ykshy", "odds": 0.8681394825521559, "type": "REWARD", "weight": 86}, {"lootBoxItems": [{"count": 56, "itemId": "zcXzgaMGR54PeMK6", "itemSku": "tNcZOdXMu2mEtlhb", "itemType": "WpsNgnETI7QqOkOX"}, {"count": 21, "itemId": "k6oFlW0hJ6sVKapu", "itemSku": "BpIQvDUO0U29swsw", "itemType": "61q1UVpK8cTjggAh"}, {"count": 54, "itemId": "g7KMQHdoCgdgY24p", "itemSku": "do4FyVjYyjoL1GHZ", "itemType": "H2bXOUDapjo5kuWR"}], "name": "SmiBQp6ZOtUSR6my", "odds": 0.7554031214465895, "type": "REWARD", "weight": 30}], "rollFunction": "CUSTOM"}, "maxCount": 13, "maxCountPerUser": 67, "name": "ZJO581iqnYNZAbj0", "optionBoxConfig": {"boxItems": [{"count": 35, "itemId": "8btLzpO5J311zTSi", "itemSku": "gV2sFMVqpxJWGCLh", "itemType": "1c4oo2uMqKv1z1Zs"}, {"count": 35, "itemId": "i3TAIVrBsGNnwdeT", "itemSku": "2hVH2794P6hdmuG1", "itemType": "n9YkF8BVhEihqn5b"}, {"count": 81, "itemId": "fd5ZqQWRDrVAHmHW", "itemSku": "kcf6Zbh9aXE7al1p", "itemType": "PoO1CzqC9uBmYuoV"}]}, "purchasable": false, "recurring": {"cycle": "YEARLY", "fixedFreeDays": 2, "fixedTrialCycles": 76, "graceDays": 11}, "regionData": {"zXyvMCtuLQwoFeYg": [{"currencyCode": "QmmJ6kxxMxSLygIj", "currencyNamespace": "kYHDpDwfP4S6bsED", "currencyType": "VIRTUAL", "discountAmount": 76, "discountExpireAt": "1992-09-28T00:00:00Z", "discountPercentage": 7, "discountPurchaseAt": "1971-01-17T00:00:00Z", "expireAt": "1998-06-13T00:00:00Z", "price": 78, "purchaseAt": "1984-07-13T00:00:00Z", "trialPrice": 39}, {"currencyCode": "pb1hznlnRTBVOwih", "currencyNamespace": "71gyKGCewxB6Fox9", "currencyType": "VIRTUAL", "discountAmount": 91, "discountExpireAt": "1999-10-25T00:00:00Z", "discountPercentage": 16, "discountPurchaseAt": "1973-07-24T00:00:00Z", "expireAt": "1994-02-13T00:00:00Z", "price": 3, "purchaseAt": "1997-10-11T00:00:00Z", "trialPrice": 34}, {"currencyCode": "7YrWAlF3Y543J2TV", "currencyNamespace": "N4kay8FSQBZIatiR", "currencyType": "REAL", "discountAmount": 9, "discountExpireAt": "1995-07-25T00:00:00Z", "discountPercentage": 91, "discountPurchaseAt": "1988-08-29T00:00:00Z", "expireAt": "1974-11-19T00:00:00Z", "price": 26, "purchaseAt": "1988-10-20T00:00:00Z", "trialPrice": 72}], "RFGiCibaqmrLUC7K": [{"currencyCode": "dnp8dtVcfdD5rhFV", "currencyNamespace": "OAWvcJRj8nndiU71", "currencyType": "VIRTUAL", "discountAmount": 10, "discountExpireAt": "1974-12-20T00:00:00Z", "discountPercentage": 54, "discountPurchaseAt": "1980-05-03T00:00:00Z", "expireAt": "1980-12-05T00:00:00Z", "price": 69, "purchaseAt": "1975-02-21T00:00:00Z", "trialPrice": 69}, {"currencyCode": "Kvve9TX9KEDFLaLK", "currencyNamespace": "EMoqu2w7hTYgrJ6V", "currencyType": "VIRTUAL", "discountAmount": 69, "discountExpireAt": "1991-03-26T00:00:00Z", "discountPercentage": 50, "discountPurchaseAt": "1976-03-15T00:00:00Z", "expireAt": "1972-12-23T00:00:00Z", "price": 31, "purchaseAt": "1971-04-03T00:00:00Z", "trialPrice": 75}, {"currencyCode": "cDlxsBOgVLjnPXLf", "currencyNamespace": "vXjQgvTaku60Sz65", "currencyType": "REAL", "discountAmount": 16, "discountExpireAt": "1992-08-09T00:00:00Z", "discountPercentage": 100, "discountPurchaseAt": "1983-06-16T00:00:00Z", "expireAt": "1980-06-20T00:00:00Z", "price": 27, "purchaseAt": "1986-06-23T00:00:00Z", "trialPrice": 95}], "oXrkFXEZs6cUHiqg": [{"currencyCode": "RTYodmRWClwqfwEB", "currencyNamespace": "13D1aebNp8or8Ns6", "currencyType": "REAL", "discountAmount": 25, "discountExpireAt": "1998-10-20T00:00:00Z", "discountPercentage": 79, "discountPurchaseAt": "1976-04-30T00:00:00Z", "expireAt": "1990-07-31T00:00:00Z", "price": 76, "purchaseAt": "1984-03-26T00:00:00Z", "trialPrice": 93}, {"currencyCode": "tdfnL412VSbVD6d3", "currencyNamespace": "zTNUfHK2moBflYlL", "currencyType": "REAL", "discountAmount": 84, "discountExpireAt": "1995-07-29T00:00:00Z", "discountPercentage": 68, "discountPurchaseAt": "1973-10-07T00:00:00Z", "expireAt": "1987-09-21T00:00:00Z", "price": 15, "purchaseAt": "1983-07-26T00:00:00Z", "trialPrice": 54}, {"currencyCode": "i9lYnj4p2xZr0Pcl", "currencyNamespace": "6Y5pLbL0izOpw2IG", "currencyType": "REAL", "discountAmount": 35, "discountExpireAt": "1981-12-11T00:00:00Z", "discountPercentage": 18, "discountPurchaseAt": "1972-11-16T00:00:00Z", "expireAt": "1976-08-12T00:00:00Z", "price": 24, "purchaseAt": "1993-11-27T00:00:00Z", "trialPrice": 27}]}, "saleConfig": {"currencyCode": "vtuuyEULM95jIUi0", "price": 71}, "seasonType": "PASS", "sectionExclusive": true, "sellable": false, "sku": "r47q0HyWkbAX6z5K", "stackable": false, "status": "ACTIVE", "tags": ["HRq3voddFoygwJ37", "MsE6uUyZNUO333T4", "a3eX6Nbnl6gTIJ31"], "targetCurrencyCode": "RIp9UBz78cvBhGmb", "targetNamespace": "OjdqAQ2VQKEGzPsC", "thumbnailUrl": "GPlQRvDar4JEDMXt", "useCount": 4}' \
    > test.out 2>&1
eval_tap $? 86 'CreateItem' test.out

#- 87 GetItemByAppId
samples/cli/sample-apps Platform getItemByAppId \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'It0cAp1pkRepdmMq' \
    --appId 'YUbfV7GpWKT2iUYq' \
    > test.out 2>&1
eval_tap $? 87 'GetItemByAppId' test.out

#- 88 QueryItems
samples/cli/sample-apps Platform queryItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --appType 'DLC' \
    --availableDate 'EPuBEluNWCKLO4T4' \
    --baseAppId 'AgmNHrmkFtIkpzqa' \
    --categoryPath 'x9Tp5S2DZSxI32BI' \
    --features 'T5OxOuczGSNlHubN' \
    --includeSubCategoryItem 'true' \
    --itemType 'SEASON' \
    --limit '100' \
    --offset '19' \
    --region 'H3RpUhdfjbIDL6PN' \
    --sortBy '["displayOrder:asc", "displayOrder", "updatedAt:asc"]' \
    --storeId 'vgaI5KBXuZBCqenU' \
    --tags 'LcP89mKawF5rLBuG' \
    --targetNamespace 'XCenRIQWfZw4hJYm' \
    > test.out 2>&1
eval_tap $? 88 'QueryItems' test.out

#- 89 ListBasicItemsByFeatures
samples/cli/sample-apps Platform listBasicItemsByFeatures \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --features '["riVvOYWioRuFqshl", "G2209XY03EyKsSpx", "a1o0qBv0Ae33cCPf"]' \
    > test.out 2>&1
eval_tap $? 89 'ListBasicItemsByFeatures' test.out

#- 90 GetItemBySku
samples/cli/sample-apps Platform getItemBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --storeId 'yyt7uuQxhmjm3QLp' \
    --sku 'uJkfCNZi2RdlbvMf' \
    > test.out 2>&1
eval_tap $? 90 'GetItemBySku' test.out

#- 91 GetLocaleItemBySku
samples/cli/sample-apps Platform getLocaleItemBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --language 'tYLh2EkwQDSWIRmF' \
    --populateBundle 'false' \
    --region '6Qc12TtTC1VVrTk7' \
    --storeId 'rBjYXvhDdiWjijuS' \
    --sku 'rygDN9OYzrNhhhxk' \
    > test.out 2>&1
eval_tap $? 91 'GetLocaleItemBySku' test.out

#- 92 GetItemIdBySku
samples/cli/sample-apps Platform getItemIdBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --storeId 'T0qpVbQzSzH1dDzd' \
    --sku 'IaFSAvzwvg4oXPHu' \
    > test.out 2>&1
eval_tap $? 92 'GetItemIdBySku' test.out

#- 93 GetBulkItemIdBySkus
samples/cli/sample-apps Platform getBulkItemIdBySkus \
    --namespace $AB_NAMESPACE \
    --sku '["G47OCfJTYHNTSLsf", "fTQKmwpl5xcLzzSN", "nFYmISyaPT04mQ58"]' \
    --storeId 'e6psxrjwTFalON3h' \
    > test.out 2>&1
eval_tap $? 93 'GetBulkItemIdBySkus' test.out

#- 94 BulkGetLocaleItems
samples/cli/sample-apps Platform bulkGetLocaleItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --language 'm0Hy6lPvswUKLglS' \
    --region 'b7hKUqZJ01s3joKC' \
    --storeId '3c65vGUVQhiz7thJ' \
    --itemIds 'hMrBXj3TscirW3pm' \
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
    --userId 'Xjf0c02zGNqjCdcx' \
    --body '{"itemIds": ["wwOpDyphN4DOy6Vm", "RlleQdyT1cN7o3xH", "5BfDiQnDVYtvXyKY"]}' \
    > test.out 2>&1
eval_tap $? 96 'ValidateItemPurchaseCondition' test.out

#- 97 BulkUpdateRegionData
samples/cli/sample-apps Platform bulkUpdateRegionData \
    --namespace $AB_NAMESPACE \
    --storeId 'xBzTMPUTe5jiQ1Qj' \
    --body '{"changes": [{"itemIdentities": ["5ti7QwCtXTEBbBNy", "pdsW7iBx3dTYvWmg", "XqM2uGtkbioKH2z5"], "itemIdentityType": "ITEM_SKU", "regionData": {"qNrCndTONzzdQkoR": [{"currencyCode": "8VXgj8RaEZKXyy7n", "currencyNamespace": "WeFhQlZVjn73uqPu", "currencyType": "VIRTUAL", "discountAmount": 60, "discountExpireAt": "1979-06-22T00:00:00Z", "discountPercentage": 84, "discountPurchaseAt": "1975-10-20T00:00:00Z", "discountedPrice": 64, "expireAt": "1980-01-17T00:00:00Z", "price": 62, "purchaseAt": "1994-02-05T00:00:00Z", "trialPrice": 45}, {"currencyCode": "CBHUCZnfDP3I4RzP", "currencyNamespace": "0M5s61evDafWbMRe", "currencyType": "VIRTUAL", "discountAmount": 3, "discountExpireAt": "1991-08-23T00:00:00Z", "discountPercentage": 6, "discountPurchaseAt": "1991-09-30T00:00:00Z", "discountedPrice": 82, "expireAt": "1995-02-13T00:00:00Z", "price": 13, "purchaseAt": "1971-12-11T00:00:00Z", "trialPrice": 87}, {"currencyCode": "4ul99mulMSnhU2CT", "currencyNamespace": "qxqNInF8Vhb2oSF9", "currencyType": "VIRTUAL", "discountAmount": 9, "discountExpireAt": "1995-08-29T00:00:00Z", "discountPercentage": 41, "discountPurchaseAt": "1979-10-09T00:00:00Z", "discountedPrice": 2, "expireAt": "1988-10-24T00:00:00Z", "price": 82, "purchaseAt": "1998-08-31T00:00:00Z", "trialPrice": 83}], "gT3aSDWlE4FSMETH": [{"currencyCode": "VbAK2mnxzi588eRM", "currencyNamespace": "nl36pv4W6XUtmhgC", "currencyType": "REAL", "discountAmount": 32, "discountExpireAt": "1980-11-27T00:00:00Z", "discountPercentage": 6, "discountPurchaseAt": "1992-05-24T00:00:00Z", "discountedPrice": 83, "expireAt": "1979-05-31T00:00:00Z", "price": 92, "purchaseAt": "1995-02-01T00:00:00Z", "trialPrice": 1}, {"currencyCode": "bMy5VSoaKAD3VDfo", "currencyNamespace": "XXDp9kHi9YYTTLyu", "currencyType": "VIRTUAL", "discountAmount": 87, "discountExpireAt": "1978-11-01T00:00:00Z", "discountPercentage": 63, "discountPurchaseAt": "1980-05-31T00:00:00Z", "discountedPrice": 89, "expireAt": "1976-06-13T00:00:00Z", "price": 1, "purchaseAt": "1999-01-24T00:00:00Z", "trialPrice": 24}, {"currencyCode": "9q5ctO12X6l3TZwM", "currencyNamespace": "WyLdjYYOBJWz3UID", "currencyType": "VIRTUAL", "discountAmount": 21, "discountExpireAt": "1978-03-30T00:00:00Z", "discountPercentage": 3, "discountPurchaseAt": "1987-06-07T00:00:00Z", "discountedPrice": 29, "expireAt": "1976-04-02T00:00:00Z", "price": 34, "purchaseAt": "1990-06-13T00:00:00Z", "trialPrice": 11}], "NhzXleFeMWo7OcPO": [{"currencyCode": "uCvqoeA2RJMu3v2k", "currencyNamespace": "ENBUiAfYo4GHXqZy", "currencyType": "REAL", "discountAmount": 26, "discountExpireAt": "1984-10-02T00:00:00Z", "discountPercentage": 36, "discountPurchaseAt": "1971-05-18T00:00:00Z", "discountedPrice": 81, "expireAt": "1977-04-27T00:00:00Z", "price": 77, "purchaseAt": "1981-04-07T00:00:00Z", "trialPrice": 12}, {"currencyCode": "t04ZLBdcCWnj5mKE", "currencyNamespace": "huFEH2B7buxr6WIM", "currencyType": "REAL", "discountAmount": 98, "discountExpireAt": "1995-04-04T00:00:00Z", "discountPercentage": 45, "discountPurchaseAt": "1977-04-17T00:00:00Z", "discountedPrice": 7, "expireAt": "1985-09-09T00:00:00Z", "price": 33, "purchaseAt": "1972-02-22T00:00:00Z", "trialPrice": 42}, {"currencyCode": "l9rg9UoCpPpKzY4e", "currencyNamespace": "SlLSFcuRAz7nalWe", "currencyType": "REAL", "discountAmount": 60, "discountExpireAt": "1993-07-19T00:00:00Z", "discountPercentage": 17, "discountPurchaseAt": "1996-12-24T00:00:00Z", "discountedPrice": 26, "expireAt": "1972-04-27T00:00:00Z", "price": 4, "purchaseAt": "1999-11-02T00:00:00Z", "trialPrice": 47}]}}, {"itemIdentities": ["xcOF4gOx7hQ0sHAu", "VL5qi7iK2Z9QAgpP", "FwtbK0ypyEKRkp02"], "itemIdentityType": "ITEM_SKU", "regionData": {"au5CqUbq1Dj53j5H": [{"currencyCode": "lHx2yykaqcoqcszs", "currencyNamespace": "z7r9mMHkDIu6POMM", "currencyType": "REAL", "discountAmount": 45, "discountExpireAt": "1989-03-31T00:00:00Z", "discountPercentage": 10, "discountPurchaseAt": "1998-02-02T00:00:00Z", "discountedPrice": 78, "expireAt": "1975-08-18T00:00:00Z", "price": 30, "purchaseAt": "1992-09-27T00:00:00Z", "trialPrice": 75}, {"currencyCode": "KaoapzxIoemnlUD2", "currencyNamespace": "Cx5HA5tss90NveCa", "currencyType": "VIRTUAL", "discountAmount": 58, "discountExpireAt": "1983-08-15T00:00:00Z", "discountPercentage": 7, "discountPurchaseAt": "1972-04-20T00:00:00Z", "discountedPrice": 62, "expireAt": "1988-08-13T00:00:00Z", "price": 52, "purchaseAt": "1992-06-07T00:00:00Z", "trialPrice": 73}, {"currencyCode": "Scp4B0lcic9aRXvC", "currencyNamespace": "c8iBwJwybTbtwVoW", "currencyType": "REAL", "discountAmount": 89, "discountExpireAt": "1999-11-07T00:00:00Z", "discountPercentage": 52, "discountPurchaseAt": "1979-07-07T00:00:00Z", "discountedPrice": 41, "expireAt": "1980-09-13T00:00:00Z", "price": 8, "purchaseAt": "1986-09-11T00:00:00Z", "trialPrice": 69}], "wAUokPe1B51bFcqm": [{"currencyCode": "UXE6yLvrSXMdJiMl", "currencyNamespace": "Emow3jmrzXlSStmX", "currencyType": "REAL", "discountAmount": 84, "discountExpireAt": "1982-07-03T00:00:00Z", "discountPercentage": 9, "discountPurchaseAt": "1985-03-23T00:00:00Z", "discountedPrice": 79, "expireAt": "1991-02-10T00:00:00Z", "price": 71, "purchaseAt": "1995-12-20T00:00:00Z", "trialPrice": 53}, {"currencyCode": "lZkPlrOAKXk2PRUd", "currencyNamespace": "GQE43QCnNIUMG9lU", "currencyType": "REAL", "discountAmount": 93, "discountExpireAt": "1994-12-20T00:00:00Z", "discountPercentage": 2, "discountPurchaseAt": "1983-02-09T00:00:00Z", "discountedPrice": 0, "expireAt": "1986-05-22T00:00:00Z", "price": 20, "purchaseAt": "1979-11-05T00:00:00Z", "trialPrice": 49}, {"currencyCode": "cdSGa7aVAmAzOBZF", "currencyNamespace": "sAEET7Dk5D92YGgR", "currencyType": "VIRTUAL", "discountAmount": 1, "discountExpireAt": "1998-03-17T00:00:00Z", "discountPercentage": 1, "discountPurchaseAt": "1989-09-26T00:00:00Z", "discountedPrice": 11, "expireAt": "1990-04-14T00:00:00Z", "price": 56, "purchaseAt": "1975-10-29T00:00:00Z", "trialPrice": 95}], "YtukYkfTTw2bpcSx": [{"currencyCode": "qExvpyqk0kxxLS0j", "currencyNamespace": "y70fkkzsX48CWgkx", "currencyType": "REAL", "discountAmount": 3, "discountExpireAt": "1997-08-17T00:00:00Z", "discountPercentage": 9, "discountPurchaseAt": "1983-06-11T00:00:00Z", "discountedPrice": 26, "expireAt": "1971-06-21T00:00:00Z", "price": 26, "purchaseAt": "1974-10-26T00:00:00Z", "trialPrice": 50}, {"currencyCode": "gPoE59UzbkeohRii", "currencyNamespace": "ZV0XWrelbd1sQURC", "currencyType": "REAL", "discountAmount": 50, "discountExpireAt": "1984-04-17T00:00:00Z", "discountPercentage": 75, "discountPurchaseAt": "1998-12-11T00:00:00Z", "discountedPrice": 79, "expireAt": "1971-08-17T00:00:00Z", "price": 86, "purchaseAt": "1994-08-12T00:00:00Z", "trialPrice": 1}, {"currencyCode": "GJyKRAwaJrBXYVBR", "currencyNamespace": "LqGvStZgS6LPz8Y1", "currencyType": "VIRTUAL", "discountAmount": 17, "discountExpireAt": "1985-02-03T00:00:00Z", "discountPercentage": 11, "discountPurchaseAt": "1981-02-08T00:00:00Z", "discountedPrice": 32, "expireAt": "1977-08-10T00:00:00Z", "price": 79, "purchaseAt": "1971-04-19T00:00:00Z", "trialPrice": 25}]}}, {"itemIdentities": ["PLX4HTR22EibZWhl", "O7kvSR584bpgyIKo", "WEAJp8dPxDvzrVda"], "itemIdentityType": "ITEM_ID", "regionData": {"C0FC5ZnTou6ksNV0": [{"currencyCode": "D5Y8Q4q82CyteFjb", "currencyNamespace": "YaZ355zcgc7JMQcQ", "currencyType": "REAL", "discountAmount": 94, "discountExpireAt": "1996-12-05T00:00:00Z", "discountPercentage": 49, "discountPurchaseAt": "1990-04-29T00:00:00Z", "discountedPrice": 40, "expireAt": "1972-08-08T00:00:00Z", "price": 10, "purchaseAt": "1980-06-30T00:00:00Z", "trialPrice": 49}, {"currencyCode": "nGFo6X3iL0zSA8yA", "currencyNamespace": "ayyVfWQQJgjSS3jo", "currencyType": "VIRTUAL", "discountAmount": 92, "discountExpireAt": "1979-03-29T00:00:00Z", "discountPercentage": 4, "discountPurchaseAt": "1991-09-11T00:00:00Z", "discountedPrice": 17, "expireAt": "1985-02-28T00:00:00Z", "price": 54, "purchaseAt": "1973-02-24T00:00:00Z", "trialPrice": 63}, {"currencyCode": "wGMH2h5y4bBo362b", "currencyNamespace": "1PO7FDATXLNbkWp6", "currencyType": "VIRTUAL", "discountAmount": 31, "discountExpireAt": "1981-02-11T00:00:00Z", "discountPercentage": 73, "discountPurchaseAt": "1991-04-27T00:00:00Z", "discountedPrice": 74, "expireAt": "1996-03-05T00:00:00Z", "price": 3, "purchaseAt": "1987-11-30T00:00:00Z", "trialPrice": 92}], "0I4e6cwVP9I59VC4": [{"currencyCode": "b0m9mvhCuXk41891", "currencyNamespace": "cjPyoWZPCL8GYNI8", "currencyType": "REAL", "discountAmount": 60, "discountExpireAt": "1994-07-27T00:00:00Z", "discountPercentage": 70, "discountPurchaseAt": "1973-06-10T00:00:00Z", "discountedPrice": 36, "expireAt": "1987-08-18T00:00:00Z", "price": 33, "purchaseAt": "1994-11-23T00:00:00Z", "trialPrice": 39}, {"currencyCode": "d7fpKcRuasffGsrC", "currencyNamespace": "5Q2Imdd8u2tPVgkE", "currencyType": "REAL", "discountAmount": 36, "discountExpireAt": "1979-04-12T00:00:00Z", "discountPercentage": 19, "discountPurchaseAt": "1982-06-29T00:00:00Z", "discountedPrice": 42, "expireAt": "1990-08-23T00:00:00Z", "price": 40, "purchaseAt": "1972-02-07T00:00:00Z", "trialPrice": 91}, {"currencyCode": "t2ibffv7tqqTD4Wj", "currencyNamespace": "o1lCGwe4Uiabz8bE", "currencyType": "REAL", "discountAmount": 36, "discountExpireAt": "1993-03-08T00:00:00Z", "discountPercentage": 20, "discountPurchaseAt": "1994-12-21T00:00:00Z", "discountedPrice": 31, "expireAt": "1984-02-08T00:00:00Z", "price": 92, "purchaseAt": "1992-09-24T00:00:00Z", "trialPrice": 3}], "9dPZpm0ErgnCbIc8": [{"currencyCode": "j5JN5JTpThlj59fO", "currencyNamespace": "7sDwFgPv7ntjU7ZB", "currencyType": "VIRTUAL", "discountAmount": 68, "discountExpireAt": "1976-06-16T00:00:00Z", "discountPercentage": 27, "discountPurchaseAt": "1990-04-02T00:00:00Z", "discountedPrice": 10, "expireAt": "1985-01-02T00:00:00Z", "price": 47, "purchaseAt": "1977-09-07T00:00:00Z", "trialPrice": 83}, {"currencyCode": "4ptd5zdvZPFFCl0v", "currencyNamespace": "M6Hyvb2J3WEsabfR", "currencyType": "REAL", "discountAmount": 52, "discountExpireAt": "1992-03-20T00:00:00Z", "discountPercentage": 80, "discountPurchaseAt": "1998-11-21T00:00:00Z", "discountedPrice": 90, "expireAt": "1996-12-27T00:00:00Z", "price": 14, "purchaseAt": "1974-07-16T00:00:00Z", "trialPrice": 63}, {"currencyCode": "BS83kgJOCMuXZJpy", "currencyNamespace": "KCC6JVHG9EMGLz0u", "currencyType": "VIRTUAL", "discountAmount": 68, "discountExpireAt": "1972-04-30T00:00:00Z", "discountPercentage": 9, "discountPurchaseAt": "1997-05-21T00:00:00Z", "discountedPrice": 32, "expireAt": "1984-11-03T00:00:00Z", "price": 48, "purchaseAt": "1976-08-08T00:00:00Z", "trialPrice": 88}]}}]}' \
    > test.out 2>&1
eval_tap $? 97 'BulkUpdateRegionData' test.out

#- 98 SearchItems
samples/cli/sample-apps Platform searchItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --itemType 'EXTENSION' \
    --limit '24' \
    --offset '71' \
    --sortBy '3v0ffr7XJ7uPhOXp' \
    --storeId 'eKHj20dwaHxUsg3N' \
    --keyword 'FcJiCIW3YVD67Ot1' \
    --language 'sjCRuC25RijKEIkh' \
    > test.out 2>&1
eval_tap $? 98 'SearchItems' test.out

#- 99 QueryUncategorizedItems
samples/cli/sample-apps Platform queryUncategorizedItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --limit '71' \
    --offset '77' \
    --sortBy '["createdAt", "createdAt:asc", "displayOrder:asc"]' \
    --storeId '4flVig6TWb4SxN7D' \
    > test.out 2>&1
eval_tap $? 99 'QueryUncategorizedItems' test.out

#- 100 GetItem
samples/cli/sample-apps Platform getItem \
    --itemId 'WhlL7LOaldwsN4jW' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --storeId 'jwdYYggWWu93HL0i' \
    > test.out 2>&1
eval_tap $? 100 'GetItem' test.out

#- 101 UpdateItem
samples/cli/sample-apps Platform updateItem \
    --itemId 'GC0iEOQd4qAg6Uls' \
    --namespace $AB_NAMESPACE \
    --storeId 'LnYgsT2ZvUvPfoXh' \
    --body '{"appId": "hoz1dCYlUqSWUlHx", "appType": "DEMO", "baseAppId": "IpLv5Uayjac7xgPI", "boothName": "YoCnzHOcka4bC26m", "categoryPath": "vjyFfC1QeOuVxlA6", "clazz": "MRZVeQBX0CZsjOIo", "displayOrder": 85, "entitlementType": "CONSUMABLE", "ext": {"HyEbQgDNgDhjppN5": {}, "aoVluSUHniIRF0Q9": {}, "abnpQOJAXoRTnPE3": {}}, "features": ["k93yMraSRgfFVDt3", "YKt5Ga3e1GuDjfw2", "XVkEmuhaGXQFsmBQ"], "images": [{"as": "VNrxRo2hOlOHnmeX", "caption": "vxcjsIcl7qJhAs5L", "height": 68, "imageUrl": "EORtK1S3nfxJnu3e", "smallImageUrl": "HDl4duW600l8Je8w", "width": 54}, {"as": "TLk5iwXhJFJht5bn", "caption": "ykzKHkyKyb4N9ya4", "height": 95, "imageUrl": "APIdxRKcQzSxJuwE", "smallImageUrl": "cdE7FhRkOCKycwfR", "width": 88}, {"as": "S2tdhpUBrmlF5bHy", "caption": "KyR4On8TNXqjzcpn", "height": 38, "imageUrl": "VV0GZ6mldy4BtxIu", "smallImageUrl": "O4ipW0COvWbcvfrp", "width": 94}], "itemIds": ["HHPIH5R2adpIFWF2", "dCIu9qK1gH0weHjg", "t61j8MvMkSAINjoT"], "itemQty": {"n9FnvRgYRDyNijJd": 41, "i21em8rG7uv7KciO": 14, "NL5FXvIDC08YS0uY": 81}, "itemType": "CODE", "listable": false, "localizations": {"ngzfOU8nrX7cZRHP": {"description": "Ydzp7dz4n4zWVFjy", "localExt": {"ujbKLgO5ii7GFTh4": {}, "k9Ims0SVmaBeIKch": {}, "aCvugDS06MNJ8gi5": {}}, "longDescription": "jPEP8yksaoxKhcEP", "title": "S05Abketd8dBjf2z"}, "MfFfOkWny3koTmYT": {"description": "uBVEITBJE7FVWiFb", "localExt": {"dcwraA2wYMG00Qab": {}, "4tlKcKxN3Mo8HRNo": {}, "N5lP48NsCyMoG0hn": {}}, "longDescription": "iPyUvXxC1ON9ALIp", "title": "G2ni5ZQyD6C8GVUC"}, "S8QA2jkzvsLgSlll": {"description": "0GY5EGfgte2Zgg9G", "localExt": {"k5fGSZeFSM4957DB": {}, "6kvMoIqyThzdA6ZZ": {}, "LcMDQ4YK9Hn1cNTv": {}}, "longDescription": "E4QqOjxgL5LIDbqF", "title": "GZT2enY9QJthltMK"}}, "lootBoxConfig": {"rewardCount": 69, "rewards": [{"lootBoxItems": [{"count": 66, "itemId": "RydsAlIorRqB3R2X", "itemSku": "Qxgk6WIrTH4V5va7", "itemType": "g0iRvC8RiCpWD2Xj"}, {"count": 95, "itemId": "pmSm7JCnURmLrWbI", "itemSku": "wkRDGZKOnIdc8RCv", "itemType": "Nuho4k0IuYK880HC"}, {"count": 86, "itemId": "fjKJ2EHIuPCCvjnY", "itemSku": "y5BDN6lOSybQFRbG", "itemType": "Ul5AH8byJtbk4PTd"}], "name": "BCQiKSaxmXd3Qyvn", "odds": 0.44186816707079923, "type": "PROBABILITY_GROUP", "weight": 11}, {"lootBoxItems": [{"count": 65, "itemId": "IEXwVun0lLMU42RN", "itemSku": "5oFEPPcCzn6YghtL", "itemType": "xHWrrgYSVJLcY6vA"}, {"count": 25, "itemId": "y7ciJw3lB6zc2BKr", "itemSku": "TLkHNqsgaZJ0lfI3", "itemType": "MLXJ5xpo8bqdKZUq"}, {"count": 50, "itemId": "rcMfIjYu62hstw0h", "itemSku": "YC9g6NEfxP5dmowD", "itemType": "NHLqhZMern3Oq2e0"}], "name": "gvamv4vPIZLm47CJ", "odds": 0.6630870440568287, "type": "REWARD_GROUP", "weight": 50}, {"lootBoxItems": [{"count": 91, "itemId": "5itdhsOB0eDoPwoG", "itemSku": "d9ZZsnSa8oYVPRyN", "itemType": "wXNeoP62JpsOxOv5"}, {"count": 16, "itemId": "vBZIgKqYOKdf0RCV", "itemSku": "r2cjMAhO9KpUfqKY", "itemType": "oZEpWokmJ32s6Y6W"}, {"count": 50, "itemId": "DhowvIwBOXTMnpuD", "itemSku": "QMPH3gjScSMlzVXQ", "itemType": "NJTFC88mt1RLljis"}], "name": "asYt4SKiiKEYcpZb", "odds": 0.9380994320514262, "type": "REWARD", "weight": 8}], "rollFunction": "CUSTOM"}, "maxCount": 73, "maxCountPerUser": 90, "name": "SrN0sqDPcoveCVV0", "optionBoxConfig": {"boxItems": [{"count": 0, "itemId": "mB4x5i8cEmmI0xVS", "itemSku": "aPfh8sUo5Sgg3M9M", "itemType": "94bm8SteOySemytI"}, {"count": 74, "itemId": "yTpD4DePK9jB5XpQ", "itemSku": "vUZzlvDGaopauCgZ", "itemType": "TDUzBrpbrgiTfy9R"}, {"count": 23, "itemId": "HzkvbpYNmrvSIi2Z", "itemSku": "CfmckNHBg1fo9z03", "itemType": "EoxJpW35lxt3T1x9"}]}, "purchasable": true, "recurring": {"cycle": "WEEKLY", "fixedFreeDays": 98, "fixedTrialCycles": 42, "graceDays": 0}, "regionData": {"cfcSEFb7vunM4cnj": [{"currencyCode": "kIUuKKTPPDuq7jLr", "currencyNamespace": "3PiNynCxrCR1Adyn", "currencyType": "REAL", "discountAmount": 75, "discountExpireAt": "1979-05-23T00:00:00Z", "discountPercentage": 95, "discountPurchaseAt": "1987-11-24T00:00:00Z", "expireAt": "1976-08-21T00:00:00Z", "price": 49, "purchaseAt": "1996-05-29T00:00:00Z", "trialPrice": 55}, {"currencyCode": "QWMI0pSaRf2exCMt", "currencyNamespace": "bT2RkhoUVbdhIKY6", "currencyType": "REAL", "discountAmount": 99, "discountExpireAt": "1993-08-21T00:00:00Z", "discountPercentage": 54, "discountPurchaseAt": "1989-02-26T00:00:00Z", "expireAt": "1982-11-10T00:00:00Z", "price": 59, "purchaseAt": "1999-06-26T00:00:00Z", "trialPrice": 14}, {"currencyCode": "qdcsMRgXlsbScgO6", "currencyNamespace": "mr3Brn7mUAdQFckI", "currencyType": "VIRTUAL", "discountAmount": 51, "discountExpireAt": "1981-07-18T00:00:00Z", "discountPercentage": 15, "discountPurchaseAt": "1990-09-07T00:00:00Z", "expireAt": "1977-07-22T00:00:00Z", "price": 24, "purchaseAt": "1993-04-04T00:00:00Z", "trialPrice": 12}], "B1ViaAqDQTM1huee": [{"currencyCode": "X72CYm1vl4ZGLWCC", "currencyNamespace": "avdZ5Uubhlf6VcoM", "currencyType": "REAL", "discountAmount": 31, "discountExpireAt": "1975-06-29T00:00:00Z", "discountPercentage": 71, "discountPurchaseAt": "1976-10-09T00:00:00Z", "expireAt": "1983-10-18T00:00:00Z", "price": 96, "purchaseAt": "1995-11-06T00:00:00Z", "trialPrice": 56}, {"currencyCode": "3iNgD0NiLVUIabQ4", "currencyNamespace": "UOktiN6vwT4z9WrQ", "currencyType": "VIRTUAL", "discountAmount": 95, "discountExpireAt": "1994-07-06T00:00:00Z", "discountPercentage": 74, "discountPurchaseAt": "1971-08-30T00:00:00Z", "expireAt": "1979-01-14T00:00:00Z", "price": 71, "purchaseAt": "1977-03-30T00:00:00Z", "trialPrice": 13}, {"currencyCode": "oCjbvoVXKiQZd0rE", "currencyNamespace": "Rtdsj6liWEZ5vkyl", "currencyType": "REAL", "discountAmount": 88, "discountExpireAt": "1972-10-01T00:00:00Z", "discountPercentage": 20, "discountPurchaseAt": "1975-09-17T00:00:00Z", "expireAt": "1979-09-03T00:00:00Z", "price": 15, "purchaseAt": "1986-06-05T00:00:00Z", "trialPrice": 45}], "aEfTPCfXuIw6U7CN": [{"currencyCode": "6aDtiFsZ2NFD1pUU", "currencyNamespace": "TVE0RtuErE2elipp", "currencyType": "VIRTUAL", "discountAmount": 68, "discountExpireAt": "1986-07-25T00:00:00Z", "discountPercentage": 94, "discountPurchaseAt": "1985-11-05T00:00:00Z", "expireAt": "1992-10-12T00:00:00Z", "price": 96, "purchaseAt": "1990-03-17T00:00:00Z", "trialPrice": 18}, {"currencyCode": "NhEOgA7fXIkajhYv", "currencyNamespace": "2RaFzxcJrJsjPzfu", "currencyType": "VIRTUAL", "discountAmount": 74, "discountExpireAt": "1994-09-06T00:00:00Z", "discountPercentage": 99, "discountPurchaseAt": "1994-02-01T00:00:00Z", "expireAt": "1973-01-26T00:00:00Z", "price": 7, "purchaseAt": "1981-02-09T00:00:00Z", "trialPrice": 66}, {"currencyCode": "KPrLhPa6s3Dd1mz8", "currencyNamespace": "xGX9jxnILnXi4qCw", "currencyType": "REAL", "discountAmount": 40, "discountExpireAt": "1985-12-22T00:00:00Z", "discountPercentage": 69, "discountPurchaseAt": "1973-05-16T00:00:00Z", "expireAt": "1982-05-13T00:00:00Z", "price": 21, "purchaseAt": "1992-04-06T00:00:00Z", "trialPrice": 56}]}, "saleConfig": {"currencyCode": "q2KLuFLpCVvmMN9u", "price": 32}, "seasonType": "TIER", "sectionExclusive": true, "sellable": true, "sku": "7HxNEqo1FIVf3Z1f", "stackable": true, "status": "INACTIVE", "tags": ["o3I4rnKyyiqRxPm3", "YzNi9IhmMvXRbWMh", "pOLQ63s8zDUoyZTQ"], "targetCurrencyCode": "63cUTCItKJsSGrFy", "targetNamespace": "2GvEWMO9HHVBlYC5", "thumbnailUrl": "tdT3i3CtOTgkB3G5", "useCount": 89}' \
    > test.out 2>&1
eval_tap $? 101 'UpdateItem' test.out

#- 102 DeleteItem
samples/cli/sample-apps Platform deleteItem \
    --itemId 'hqPH1EAcd4IdMm0T' \
    --namespace $AB_NAMESPACE \
    --force 'false' \
    --storeId 'nAIAgpUFDHIVFrrC' \
    > test.out 2>&1
eval_tap $? 102 'DeleteItem' test.out

#- 103 AcquireItem
samples/cli/sample-apps Platform acquireItem \
    --itemId 'wy7ic7H5dGZyLjYo' \
    --namespace $AB_NAMESPACE \
    --body '{"count": 52, "orderNo": "ebBN1ohSGiozHyxO"}' \
    > test.out 2>&1
eval_tap $? 103 'AcquireItem' test.out

#- 104 GetApp
samples/cli/sample-apps Platform getApp \
    --itemId 'CUBRbztY1KBfFKKT' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'cJxC6z94WEf8yGLg' \
    > test.out 2>&1
eval_tap $? 104 'GetApp' test.out

#- 105 UpdateApp
samples/cli/sample-apps Platform updateApp \
    --itemId 'KRBXkppemv9Nuv9F' \
    --namespace $AB_NAMESPACE \
    --storeId 'rEcrafseb5dYvdyk' \
    --body '{"carousel": [{"alt": "mgoIxC3ionkEllsp", "previewUrl": "tBzMZvPqUZvu856Z", "thumbnailUrl": "Bv74y4qhwqJCvPxm", "type": "image", "url": "rlwXIx3f1L03QSLB", "videoSource": "vimeo"}, {"alt": "kqSClTje5ZTeIgtW", "previewUrl": "1t75RhGyNJxIMw91", "thumbnailUrl": "ylu5yhbfr2powBhR", "type": "video", "url": "orDeRmNO3hjcOjXx", "videoSource": "generic"}, {"alt": "YD6gEUOx7aXnGlAq", "previewUrl": "Fo9TGBAedUBGO4Vx", "thumbnailUrl": "DPmC0nWNsdufDtPv", "type": "video", "url": "BQIOteeVW5so0JLI", "videoSource": "youtube"}], "developer": "RPg2mR1aclayldb9", "forumUrl": "LlC4GEyfdlq720Q0", "genres": ["Simulation", "Sports", "Strategy"], "localizations": {"3tEKEJ0cFdbkPmnN": {"announcement": "NGeQEvHj2512Rmpv", "slogan": "iAnCRpWACHJs5xVj"}, "hb8HTeegRvd37vPr": {"announcement": "lxUVZ3Ra94ZevRGl", "slogan": "Ox8sngPSOqCsujdM"}, "UC9jqq5Y4WcQNCQP": {"announcement": "xCHv8Yd5SrVMzCcD", "slogan": "GgWTPY6aPWfQ2gGg"}}, "platformRequirements": {"I790CU0NTUW8BT5C": [{"additionals": "dpu5bsGmMaK5AkXG", "directXVersion": "epMP5FTtilw7hnkb", "diskSpace": "e2rpEz1K5TvXdOPg", "graphics": "QAQSxFG5WzzXem8R", "label": "9qf5Um9ZFl2m1e6i", "osVersion": "qFqy0qdugPYFSg7T", "processor": "zGqgHjP7FR9tJADs", "ram": "ku6qkg4xFPKNEdvu", "soundCard": "9eV2kDyOXjuzJZpU"}, {"additionals": "sXKhAdOlH5fzzO3V", "directXVersion": "MuHV7IkwmxaVe0oM", "diskSpace": "qMxAs2jiiccDdSFW", "graphics": "M4tibVlEwcPDUmcS", "label": "d551BsldPyTleUdy", "osVersion": "AN8RiPaCUNblauzL", "processor": "SH0zhIAKRzbhKk69", "ram": "2q1CpW535M9yUm3U", "soundCard": "F808vktar7RStViZ"}, {"additionals": "NbIZWVHVWusnVrXd", "directXVersion": "AV0WOsLpDgpHmLH0", "diskSpace": "CYNHFQ0opaMixAWk", "graphics": "RhDygayC2tNpBORJ", "label": "PI8SqEAvt1MxAoUO", "osVersion": "ekOSLezeJLZPHTQC", "processor": "oeSpUWHFjApcqUaA", "ram": "6XXAXGY9ckDo6hMK", "soundCard": "Ic9a0jm2tnNzazNC"}], "SDMeJ4Hf9YM6Lhzx": [{"additionals": "zWs9pE395RlRGrHi", "directXVersion": "W5zDebksxM8bDM8I", "diskSpace": "b3veqsnEL6HlGXls", "graphics": "v7zSCjSB86VWz2Um", "label": "DyfWm2kbDVT5Cdgs", "osVersion": "QSOFF1rJWQ38Gbtl", "processor": "HBX1V96zL0BD5vjf", "ram": "PcHYBAQow19fe6xj", "soundCard": "sNUFVJvsDwvbrbtw"}, {"additionals": "P66Rej9jn7PZKdBi", "directXVersion": "WZ7v3O9TGrhAOXy4", "diskSpace": "pKhvMdJH5ubrh7uz", "graphics": "GCOdPwaTyxlvoe4r", "label": "MHFbUpqDnZ5I7TDJ", "osVersion": "hpPOPVxnruuLqyXP", "processor": "AGi9KpN1ACyzjsa5", "ram": "ivPS3x9BOxoaumou", "soundCard": "Wl9Kw6zgU1N8Uzlq"}, {"additionals": "FhgocBZT4M6zN6Qm", "directXVersion": "UkZ068ebQPyjvY0E", "diskSpace": "PA3tlNC5Bkx5GC3v", "graphics": "XCSIG0VS67ykwPNf", "label": "kU2NkN4Hhs5CwFbh", "osVersion": "mnsDfBQ0ltWcyq5s", "processor": "EiWvtFHZdznCy1Wb", "ram": "eemAeHQlq8t3ExAW", "soundCard": "KoOV1M9zLheHubXJ"}], "jN8bIUWgHx4RLWNn": [{"additionals": "tIhVeYdMo8Ek2oTY", "directXVersion": "bB6wb9N9JiwAld0L", "diskSpace": "SmdnbLNw5I7Q3ret", "graphics": "AuMiy1R6VSxmNdFu", "label": "F9sd2ZpZwKcCiVAn", "osVersion": "3JmoafjcwAwcQsIG", "processor": "I7OJV3yS11hlCZoD", "ram": "iLoKpGk7DofzJens", "soundCard": "l3lkonzKGmrcXfkR"}, {"additionals": "RNtmob93FGSdp0ge", "directXVersion": "AFbsJQqkFZsZlJvs", "diskSpace": "uRL5B1QyffZ5p64B", "graphics": "T0J9KZRVYeSuBnBc", "label": "GuPJ3b6orBbRKKRJ", "osVersion": "CekVpAMa6OwfADys", "processor": "MqsovUYQDqLAdTXF", "ram": "RXELKdKimSQIznbH", "soundCard": "EUvhPQN1plPkTlXZ"}, {"additionals": "cWKxdEPRlwcbXMXs", "directXVersion": "SxhbSZywn28RlaYJ", "diskSpace": "FCk4i4f3cvv5fIRd", "graphics": "AAriiWx1rej0rW9D", "label": "oIr7KkYTB3I0m7Ki", "osVersion": "wKAgrDT54JVKwKoN", "processor": "5hkHHLAnWcs9M2tp", "ram": "vZkznKQ6dTWOW0U7", "soundCard": "BLkLDvaS0hcUh8bY"}]}, "platforms": ["Windows", "IOS", "Android"], "players": ["LocalCoop", "MMO", "Single"], "primaryGenre": "Casual", "publisher": "xLxCWpEu9dnAOTUM", "releaseDate": "1978-11-02T00:00:00Z", "websiteUrl": "MCcMW8y785PB8IER"}' \
    > test.out 2>&1
eval_tap $? 105 'UpdateApp' test.out

#- 106 DisableItem
samples/cli/sample-apps Platform disableItem \
    --itemId '15vPWd817kfbFoYn' \
    --namespace $AB_NAMESPACE \
    --storeId 'hSo4sbAs4Ofe4FaV' \
    > test.out 2>&1
eval_tap $? 106 'DisableItem' test.out

#- 107 GetItemDynamicData
samples/cli/sample-apps Platform getItemDynamicData \
    --itemId 'xSU9u1OSqAGhwrMf' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 107 'GetItemDynamicData' test.out

#- 108 EnableItem
samples/cli/sample-apps Platform enableItem \
    --itemId 'aU6kY3ig0e1uzSAn' \
    --namespace $AB_NAMESPACE \
    --storeId 'CPT2Cbfs5hwPhUYv' \
    > test.out 2>&1
eval_tap $? 108 'EnableItem' test.out

#- 109 FeatureItem
samples/cli/sample-apps Platform featureItem \
    --feature 'paIE7y0lslvAtngx' \
    --itemId '4UTehEztFgap6udd' \
    --namespace $AB_NAMESPACE \
    --storeId 'ohrbO2d553jygzRI' \
    > test.out 2>&1
eval_tap $? 109 'FeatureItem' test.out

#- 110 DefeatureItem
samples/cli/sample-apps Platform defeatureItem \
    --feature 'Xc4WU7gvgmGFRto7' \
    --itemId 'hyV17ZDWsgdap48Q' \
    --namespace $AB_NAMESPACE \
    --storeId 'ruVi4nVRbwqG4Q7g' \
    > test.out 2>&1
eval_tap $? 110 'DefeatureItem' test.out

#- 111 GetLocaleItem
samples/cli/sample-apps Platform getLocaleItem \
    --itemId 'I2G4okNH9iJdupG1' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --language 'oNJMjpR2cvEf4bOP' \
    --populateBundle 'true' \
    --region 'VJ6EnWsfZsFUnQhJ' \
    --storeId 'DRJIq61OJV93HIhj' \
    > test.out 2>&1
eval_tap $? 111 'GetLocaleItem' test.out

#- 112 UpdateItemPurchaseCondition
samples/cli/sample-apps Platform updateItemPurchaseCondition \
    --itemId '60EZzS4IvEITMTMY' \
    --namespace $AB_NAMESPACE \
    --storeId '4pAn1f4PnhoH52qi' \
    --body '{"purchaseCondition": {"conditionGroups": [{"operator": "or", "predicates": [{"anyOf": 42, "comparison": "isGreaterThan", "name": "rahsBFkt5md6QjmQ", "predicateType": "SeasonTierPredicate", "value": "0IxDtcx4MlVclzqk", "values": ["pdYsZX32qUmM3SjM", "lLy9WsYBBBUqsgu4", "Unmgzm5tO3aZkNbd"]}, {"anyOf": 82, "comparison": "excludes", "name": "oMevnzAPtsl8mJxH", "predicateType": "SeasonPassPredicate", "value": "QIwkMtyezaCHXkxV", "values": ["B58JXIOJ3babz4RR", "YxOL3Dk4cTYVRQVF", "1Cobk2rCrTSYQwQA"]}, {"anyOf": 56, "comparison": "is", "name": "FZj7wIiyYDXnsuEq", "predicateType": "SeasonPassPredicate", "value": "ktWseNUCSXODgt7n", "values": ["ZMENdWTnpkNls3FO", "pVxo9po1ZrfaCqAa", "0TzQxnROMHQZdMJo"]}]}, {"operator": "or", "predicates": [{"anyOf": 17, "comparison": "isLessThanOrEqual", "name": "FdWGOuBaMm7YBhRz", "predicateType": "SeasonPassPredicate", "value": "8OslVedNKZ2aQTSb", "values": ["egZCBqOI82EzM9fZ", "tuUOwmHAwkEKkabP", "gKwy4qnVCxFEjiCc"]}, {"anyOf": 46, "comparison": "isGreaterThan", "name": "RNvL1r7um2aL8Ghm", "predicateType": "EntitlementPredicate", "value": "vd98pTnqzGG8laUo", "values": ["fKzH2I4RrLzGgg4y", "6qZ1fBTl3YaJLOQS", "D6XRzjX6DVkwj9Lt"]}, {"anyOf": 74, "comparison": "isGreaterThan", "name": "NvYKMnuuRSk49Sru", "predicateType": "SeasonTierPredicate", "value": "UDPfnVOr7SaRpI9q", "values": ["bcsJ8Sbslzyh72mf", "olY6NPZi4KstsmsX", "Gg2rZCFjyRhKnCDw"]}]}, {"operator": "and", "predicates": [{"anyOf": 16, "comparison": "includes", "name": "7Hb0V8mi7MkYcuwZ", "predicateType": "SeasonTierPredicate", "value": "dTQhqhsGHDdDFTIx", "values": ["mVZtjYh7uNRXTm9d", "KPG2cMfn3W0XiU0k", "SaBCxl78SVZqFnLM"]}, {"anyOf": 1, "comparison": "excludes", "name": "NChyiUF17uusXVN4", "predicateType": "SeasonTierPredicate", "value": "2D7n3HnwaLiCFc3R", "values": ["i0uXGc4nVLQ4IiKv", "eZA3QmEPXAvOWN35", "KUyWDBMI6esqVBNG"]}, {"anyOf": 86, "comparison": "isLessThan", "name": "MuHqde2T3LJXaif6", "predicateType": "EntitlementPredicate", "value": "XahyC7hMLHEkIXsz", "values": ["aQEWVHlRML7jAcmT", "Q5X3pVOtwZfVvNNr", "0ZqJ8w5P4IarHawR"]}]}]}}' \
    > test.out 2>&1
eval_tap $? 112 'UpdateItemPurchaseCondition' test.out

#- 113 ReturnItem
samples/cli/sample-apps Platform returnItem \
    --itemId 'eiyYgvztvUPVCgKD' \
    --namespace $AB_NAMESPACE \
    --body '{"orderNo": "ddWY1OoZ9brklX0i"}' \
    > test.out 2>&1
eval_tap $? 113 'ReturnItem' test.out

#- 114 QueryKeyGroups
samples/cli/sample-apps Platform queryKeyGroups \
    --namespace $AB_NAMESPACE \
    --limit '2' \
    --name 'RIpvMaYgkcUwmH1n' \
    --offset '62' \
    --tag 'WgcDw80yfnwtP5rf' \
    > test.out 2>&1
eval_tap $? 114 'QueryKeyGroups' test.out

#- 115 CreateKeyGroup
samples/cli/sample-apps Platform createKeyGroup \
    --namespace $AB_NAMESPACE \
    --body '{"description": "7t8reIECxOQpmZBk", "name": "mMgl7FosQ9mFL4O3", "status": "ACTIVE", "tags": ["crA2FvtC3sXS7g7v", "skGbzhhFUurqciBc", "FE5A0anfJYm7CMry"]}' \
    > test.out 2>&1
eval_tap $? 115 'CreateKeyGroup' test.out

#- 116 GetKeyGroupByBoothName
eval_tap 0 116 'GetKeyGroupByBoothName # SKIP deprecated' test.out

#- 117 GetKeyGroup
samples/cli/sample-apps Platform getKeyGroup \
    --keyGroupId 'CcnXN8vRRzhvGL4Q' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 117 'GetKeyGroup' test.out

#- 118 UpdateKeyGroup
samples/cli/sample-apps Platform updateKeyGroup \
    --keyGroupId '2XxmWERVBjjViSGg' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "GG2dyKKOSVQtJR5z", "name": "5WzkwX3hioqgJMuk", "status": "ACTIVE", "tags": ["xTjhyLzTYKrqFRPK", "6laFbS6xh7AqWdM9", "fJMMDvwX3e5T9XGF"]}' \
    > test.out 2>&1
eval_tap $? 118 'UpdateKeyGroup' test.out

#- 119 GetKeyGroupDynamic
samples/cli/sample-apps Platform getKeyGroupDynamic \
    --keyGroupId '9wMZDcK8jDj83n1F' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 119 'GetKeyGroupDynamic' test.out

#- 120 ListKeys
samples/cli/sample-apps Platform listKeys \
    --keyGroupId 'QzKA3p2cGdZMVzoT' \
    --namespace $AB_NAMESPACE \
    --limit '61' \
    --offset '66' \
    --status 'ACQUIRED' \
    > test.out 2>&1
eval_tap $? 120 'ListKeys' test.out

#- 121 UploadKeys
samples/cli/sample-apps Platform uploadKeys \
    --keyGroupId 'gTuP1TuagyCx8rdj' \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 121 'UploadKeys' test.out

#- 122 QueryOrders
samples/cli/sample-apps Platform queryOrders \
    --namespace $AB_NAMESPACE \
    --endTime 'LbxHzFJlU55PTxKC' \
    --limit '95' \
    --offset '31' \
    --orderNos '["N72u4N0aELxCPQxO", "lqmWJiEIIzwcShAz", "pGdtMhGlN5QNtPSY"]' \
    --sortBy 'gn4oOno1GAixhxgh' \
    --startTime 'fzhpcYt0ZTYH6l57' \
    --status 'CHARGEBACK' \
    --withTotal 'true' \
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
    --orderNo 'FCgf1Xjsjja8f9JY' \
    > test.out 2>&1
eval_tap $? 124 'GetOrder' test.out

#- 125 RefundOrder
samples/cli/sample-apps Platform refundOrder \
    --namespace $AB_NAMESPACE \
    --orderNo '5mOi16H9Imbm0Xrf' \
    --body '{"description": "w4uGr8CH1uYUkh2z"}' \
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
    --body '{"dryRun": false, "notifyUrl": "LbQW8B8DqlX26RW2", "privateKey": "GUmx7hG2LfzbnRwl"}' \
    > test.out 2>&1
eval_tap $? 127 'UpdatePaymentCallbackConfig' test.out

#- 128 QueryPaymentNotifications
samples/cli/sample-apps Platform queryPaymentNotifications \
    --namespace $AB_NAMESPACE \
    --endDate 'lO7PoA5bjDQD6CFC' \
    --externalId '1LEf7WmiOLw49qd5' \
    --limit '50' \
    --notificationSource 'CHECKOUT' \
    --notificationType 'SLfaObhQbhoGkjSt' \
    --offset '84' \
    --paymentOrderNo '5bZ1MoHUZOWMCsAG' \
    --startDate 'SpfRUuL6riIbmDlQ' \
    --status 'ERROR' \
    > test.out 2>&1
eval_tap $? 128 'QueryPaymentNotifications' test.out

#- 129 QueryPaymentOrders
samples/cli/sample-apps Platform queryPaymentOrders \
    --namespace $AB_NAMESPACE \
    --channel 'EXTERNAL' \
    --extTxId 'n1ZU4cjlLw3AnVMt' \
    --limit '37' \
    --offset '88' \
    --status 'DELETED' \
    > test.out 2>&1
eval_tap $? 129 'QueryPaymentOrders' test.out

#- 130 CreatePaymentOrderByDedicated
samples/cli/sample-apps Platform createPaymentOrderByDedicated \
    --namespace $AB_NAMESPACE \
    --body '{"currencyCode": "n04XZLLzSzn8FSrY", "currencyNamespace": "tDnWWZq68KgREbmR", "customParameters": {"gdHwl8ozJ68JxaZg": {}, "x7CmMN9ztZeNc6ku": {}, "GmrKzqMEWAmGwSfF": {}}, "description": "xGH6MDmJEWlg7ghX", "extOrderNo": "6Ao6PMJIrJUYlLTk", "extUserId": "F8Ah0rAzXBPFY915", "itemType": "MEDIA", "language": "CN", "metadata": {"G5BEZgQYYjO5gUME": "HqRqGHpe8caj8Ux6", "9XGgq0MRZk9Y450e": "2z0gi8vHp2y0wZiq", "IWFWOsQ7V3klbrU0": "kGIBTFXohsEXDqnJ"}, "notifyUrl": "Z6CFJks0cZ8J9P4u", "omitNotification": false, "platform": "676daosGxyGbR8oU", "price": 20, "recurringPaymentOrderNo": "ujBhSeh0LRFBU25x", "region": "e7BvPesm4nvvvqFG", "returnUrl": "oxJKvzlRxvlDvKQX", "sandbox": false, "sku": "vvRpvAPxwCSaMrkP", "subscriptionId": "hyaUYA1L5qGk44LN", "targetNamespace": "V9LEeo51IhAX8KkO", "targetUserId": "HjvFxmugh1VBqFmM", "title": "DYmWSzSmp8LEBzRu"}' \
    > test.out 2>&1
eval_tap $? 130 'CreatePaymentOrderByDedicated' test.out

#- 131 ListExtOrderNoByExtTxId
samples/cli/sample-apps Platform listExtOrderNoByExtTxId \
    --namespace $AB_NAMESPACE \
    --extTxId 'r537Pxbigx2IQ99Y' \
    > test.out 2>&1
eval_tap $? 131 'ListExtOrderNoByExtTxId' test.out

#- 132 GetPaymentOrder
samples/cli/sample-apps Platform getPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'SXM9JY2PmoUzcOpD' \
    > test.out 2>&1
eval_tap $? 132 'GetPaymentOrder' test.out

#- 133 ChargePaymentOrder
samples/cli/sample-apps Platform chargePaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'zEpZH3yCd52vK8gm' \
    --body '{"extTxId": "vMmaWasprXb6rMgm", "paymentMethod": "23634I0xNiMCAVkB", "paymentProvider": "WXPAY"}' \
    > test.out 2>&1
eval_tap $? 133 'ChargePaymentOrder' test.out

#- 134 RefundPaymentOrderByDedicated
samples/cli/sample-apps Platform refundPaymentOrderByDedicated \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'WslR4x1Zws9BDPoC' \
    --body '{"description": "mS1dSaYz6UdB4wNo"}' \
    > test.out 2>&1
eval_tap $? 134 'RefundPaymentOrderByDedicated' test.out

#- 135 SimulatePaymentOrderNotification
samples/cli/sample-apps Platform simulatePaymentOrderNotification \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'OOc1SkJHKjF2yxtf' \
    --body '{"amount": 34, "currencyCode": "VpSp2XTB9vclXmFE", "notifyType": "CHARGE", "paymentProvider": "ADYEN", "salesTax": 81, "vat": 10}' \
    > test.out 2>&1
eval_tap $? 135 'SimulatePaymentOrderNotification' test.out

#- 136 GetPaymentOrderChargeStatus
samples/cli/sample-apps Platform getPaymentOrderChargeStatus \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'emLV6ddMJzEOErIR' \
    > test.out 2>&1
eval_tap $? 136 'GetPaymentOrderChargeStatus' test.out

#- 137 GetPlatformWalletConfig
samples/cli/sample-apps Platform getPlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'IOS' \
    > test.out 2>&1
eval_tap $? 137 'GetPlatformWalletConfig' test.out

#- 138 UpdatePlatformWalletConfig
samples/cli/sample-apps Platform updatePlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Steam' \
    --body '{"allowedBalanceOrigins": ["Epic", "Nintendo", "Nintendo"]}' \
    > test.out 2>&1
eval_tap $? 138 'UpdatePlatformWalletConfig' test.out

#- 139 ResetPlatformWalletConfig
samples/cli/sample-apps Platform resetPlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Xbox' \
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
    --body '{"entitlement": {"consumable": {"enabled": true, "strategy": "REVOKE_OR_REPORT"}, "durable": {"enabled": true, "strategy": "REVOKE_OR_REPORT"}}, "wallet": {"enabled": false, "strategy": "REVOKE_OR_REPORT"}}' \
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
    --endTime 'GVxW5uVGaFuvdIUi' \
    --limit '43' \
    --offset '0' \
    --source 'ORDER' \
    --startTime 'iWsrJA80Zm8H6LFG' \
    --status 'SUCCESS' \
    --transactionId 'e5zrrId5gxrRGr0E' \
    --userId 'ZjIL914d45EKp5Zw' \
    > test.out 2>&1
eval_tap $? 143 'QueryRevocationHistories' test.out

#- 144 CreateReward
samples/cli/sample-apps Platform createReward \
    --namespace $AB_NAMESPACE \
    --body '{"description": "DFTkJbVXDAWRi3Ys", "eventTopic": "vVZJMI4CxmNH4W1Q", "maxAwarded": 47, "maxAwardedPerUser": 51, "namespaceExpression": "3vET15TKjr1m4siC", "rewardCode": "m4JV1n1EPRjS7jFb", "rewardConditions": [{"condition": "EEAqiVL5l4rDhNSF", "conditionName": "8o86rDa4j82bKJLN", "eventName": "DY8AMuk7tHx1jB7A", "rewardItems": [{"duration": 22, "itemId": "wd3wKI2ESgcdezGM", "quantity": 41}, {"duration": 85, "itemId": "bs7YwTIb7eDcsFEH", "quantity": 100}, {"duration": 67, "itemId": "TAsda2qRVgkgbwvw", "quantity": 90}]}, {"condition": "RImG0y5GbnlxMP96", "conditionName": "hw44sc2NtTZIgmAG", "eventName": "yWZwdKg8Ui28Ky0I", "rewardItems": [{"duration": 78, "itemId": "rXVcosHZP4R7inU2", "quantity": 10}, {"duration": 64, "itemId": "sySC6z1Nxff21NQP", "quantity": 6}, {"duration": 54, "itemId": "ejlD1u4qBZADiAc6", "quantity": 28}]}, {"condition": "KBD3HDUMeapos4U1", "conditionName": "TY6qn5ainUnwlJ1z", "eventName": "8jM2lPAhKO5WAKdA", "rewardItems": [{"duration": 82, "itemId": "nm7OfYACOU2LyjKN", "quantity": 43}, {"duration": 91, "itemId": "99QfbvojfsLUS6JQ", "quantity": 85}, {"duration": 71, "itemId": "2AfwKEtWclLy9XTY", "quantity": 47}]}], "userIdExpression": "x8GDXHDSJfb5TbQy"}' \
    > test.out 2>&1
eval_tap $? 144 'CreateReward' test.out

#- 145 QueryRewards
samples/cli/sample-apps Platform queryRewards \
    --namespace $AB_NAMESPACE \
    --eventTopic '0ppsztowFlj6ICvC' \
    --limit '80' \
    --offset '10' \
    --sortBy '["namespace:desc", "namespace", "rewardCode:desc"]' \
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
    --rewardId 'uFytLVqygemiv7WW' \
    > test.out 2>&1
eval_tap $? 148 'GetReward' test.out

#- 149 UpdateReward
samples/cli/sample-apps Platform updateReward \
    --namespace $AB_NAMESPACE \
    --rewardId 'eC4wjE5I0H8hTs3N' \
    --body '{"description": "C5OByS8ZODC8Ahvk", "eventTopic": "Xj8ivGtc8pxmJQtN", "maxAwarded": 13, "maxAwardedPerUser": 36, "namespaceExpression": "ghoHbPRzrdLm98VG", "rewardCode": "FTnK7KUTUsMqILmx", "rewardConditions": [{"condition": "j4o46DDsk5lsbTIa", "conditionName": "JFrxtXYbscGzEoYA", "eventName": "kZuzjkKjo9vCeL2A", "rewardItems": [{"duration": 29, "itemId": "oSjyrz2kdb7JMl4c", "quantity": 76}, {"duration": 46, "itemId": "9TmmP01CYA7p8LEN", "quantity": 79}, {"duration": 80, "itemId": "lRTbAy583fc4ivdG", "quantity": 55}]}, {"condition": "EQCIPZxnvXBvvC7I", "conditionName": "qlmLr7tL2oouA3EI", "eventName": "5xvsR4WvCjskaWey", "rewardItems": [{"duration": 26, "itemId": "f5VyUsUxUUawV40s", "quantity": 22}, {"duration": 78, "itemId": "WoVKGfAqMqLRx44e", "quantity": 58}, {"duration": 46, "itemId": "SVEeKLi0XuoqtMGN", "quantity": 1}]}, {"condition": "vgRTNCdd5CNu0Qfi", "conditionName": "uywygafwF2kdEKVz", "eventName": "YdfbVs8BP7w1TT7v", "rewardItems": [{"duration": 36, "itemId": "Q2Y6ynSZcsTK0GoO", "quantity": 53}, {"duration": 50, "itemId": "ZF44LG6V9vI7zFiO", "quantity": 26}, {"duration": 44, "itemId": "oEq6AVFPpKImsDCl", "quantity": 77}]}], "userIdExpression": "poQKUUBsqMOvZHMa"}' \
    > test.out 2>&1
eval_tap $? 149 'UpdateReward' test.out

#- 150 DeleteReward
samples/cli/sample-apps Platform deleteReward \
    --namespace $AB_NAMESPACE \
    --rewardId 'XQXx0mrQfDWKWUPY' \
    > test.out 2>&1
eval_tap $? 150 'DeleteReward' test.out

#- 151 CheckEventCondition
samples/cli/sample-apps Platform checkEventCondition \
    --namespace $AB_NAMESPACE \
    --rewardId 'A6QE2qquMqlOC6E6' \
    --body '{"payload": {"AhSaJeMgWt7H7USa": {}, "hUF5NPgh1rIYgWka": {}, "aHtBRnnYlDS8h5s8": {}}}' \
    > test.out 2>&1
eval_tap $? 151 'CheckEventCondition' test.out

#- 152 DeleteRewardConditionRecord
samples/cli/sample-apps Platform deleteRewardConditionRecord \
    --namespace $AB_NAMESPACE \
    --rewardId 'JeEZTLTtX15fonHq' \
    --body '{"conditionName": "jIddP4I3K5a5a1i7", "userId": "yo7PkKzhBiyTaxF9"}' \
    > test.out 2>&1
eval_tap $? 152 'DeleteRewardConditionRecord' test.out

#- 153 QuerySections
samples/cli/sample-apps Platform querySections \
    --namespace $AB_NAMESPACE \
    --end 'tdzqxSR439oUoF3b' \
    --limit '82' \
    --offset '6' \
    --start 'PlInyiyUzQI915cm' \
    --storeId 'CHsyXdra5t6x1W3L' \
    --viewId 'JoOsClweEPjYTYGU' \
    > test.out 2>&1
eval_tap $? 153 'QuerySections' test.out

#- 154 CreateSection
samples/cli/sample-apps Platform createSection \
    --namespace $AB_NAMESPACE \
    --storeId 'hqTJlYKsgoI7AtQr' \
    --body '{"active": true, "displayOrder": 12, "endDate": "1992-11-18T00:00:00Z", "ext": {"UGHbwB0nZyCr5scK": {}, "lq408nLk5pZl2Orz": {}, "MqLkvEON0UiZ0TNY": {}}, "fixedPeriodRotationConfig": {"backfillType": "CUSTOM", "duration": 41, "itemCount": 91, "rule": "SEQUENCE"}, "items": [{"id": "ZApqsvaAxDZdnAyh", "sku": "Sodo0IvA3hg5xxFS"}, {"id": "ELEjqFYiX50vjVfh", "sku": "0rifQFn8tUPgV8nN"}, {"id": "EwhkSqvMHqVKvzgC", "sku": "qoOiH9hKiV2D5LjG"}], "localizations": {"oLo55yt0OLoDDtjI": {"description": "D1L5z01lAskpZkkv", "localExt": {"EvxSOJw9x63uhz46": {}, "51sfB4ByUhI957VX": {}, "fKeJNBr5PDpkpZTs": {}}, "longDescription": "qmAo3JLXFyLk1FJ7", "title": "h1dbpl4ggj0VpwwD"}, "xDvxaYtVCtRMYFqx": {"description": "9ecFZ0ACCQEGIgVa", "localExt": {"kXRC29L8oTk6aIcw": {}, "Zzk2GTncvbUyfhFC": {}, "INu68i7I33LGWY3S": {}}, "longDescription": "lCOspjQ8rT2XmfMC", "title": "U9Xxupi0QHRLvqZs"}, "lOenXWsXtzyQTb1s": {"description": "44mvX7e7tq0xBKmi", "localExt": {"tNKM8Lt2phxyipx1": {}, "8x5gZKjcT7TSVuO0": {}, "WsKFcKOCiZhkxoaY": {}}, "longDescription": "iOCFWcKu2zoV6WUL", "title": "wwGIm5cNIfO6jvn6"}}, "name": "PdLquUtP1XjU9qnh", "rotationType": "CUSTOM", "startDate": "1987-07-23T00:00:00Z", "viewId": "RIZyiGa2QQJFxyUo"}' \
    > test.out 2>&1
eval_tap $? 154 'CreateSection' test.out

#- 155 PurgeExpiredSection
samples/cli/sample-apps Platform purgeExpiredSection \
    --namespace $AB_NAMESPACE \
    --storeId '9s1Dd3TwunKOuuce' \
    > test.out 2>&1
eval_tap $? 155 'PurgeExpiredSection' test.out

#- 156 GetSection
samples/cli/sample-apps Platform getSection \
    --namespace $AB_NAMESPACE \
    --sectionId 'mAiiHlWavoiDcrUr' \
    --storeId 'KJ0p1NTpBud1zioa' \
    > test.out 2>&1
eval_tap $? 156 'GetSection' test.out

#- 157 UpdateSection
samples/cli/sample-apps Platform updateSection \
    --namespace $AB_NAMESPACE \
    --sectionId 'Imn4O43cy5vJFkM0' \
    --storeId 'T3OJXGbo96KcyudB' \
    --body '{"active": false, "displayOrder": 82, "endDate": "1983-11-13T00:00:00Z", "ext": {"RfzbzA2TanGxWtTk": {}, "pFjy7jXcbiezRwYO": {}, "BkXUUcBB09YjS1aj": {}}, "fixedPeriodRotationConfig": {"backfillType": "NONE", "duration": 76, "itemCount": 13, "rule": "SEQUENCE"}, "items": [{"id": "emOhUfB3h3jJSX8Q", "sku": "77oiquJu36wVeu4C"}, {"id": "TZoBcPnOpHFFn871", "sku": "LlN2qjS6QVjTrlgm"}, {"id": "5fDDXKyJoPf1Ckca", "sku": "s8w4Z89dOfbMeOWT"}], "localizations": {"gHz29eTT9IKElk45": {"description": "PZDp3ckqeHQhY2lP", "localExt": {"0CnJGriZScq1kuz7": {}, "Gfn5YKibQ14ULca3": {}, "8waAKDhaszEejXwc": {}}, "longDescription": "ZSubftEyWuLvNOdf", "title": "iK7EWqmQKIDlUjsa"}, "gdldNxYUQNlOCCyY": {"description": "6lkxaOAlu63FcWTM", "localExt": {"sVU8mWpQKVHqllpF": {}, "soONjgMTRJSn661y": {}, "YJChaog1TAWj19w9": {}}, "longDescription": "FIG2jPXd65QUVfcK", "title": "A5zYKwr7WWKkAMqC"}, "a16wOk8xiLfW9EpG": {"description": "7EEMbhZ0ZKZawLVO", "localExt": {"7Pzmqb2to2dAaSRw": {}, "uhgRHRjphHVFLzaR": {}, "ZIycgvGZ1F0IP4Bz": {}}, "longDescription": "4HMrrGqCqfr1aLTe", "title": "BdCuHF7QkotQQmDV"}}, "name": "ErSY6DD6k2dDilq4", "rotationType": "FIXED_PERIOD", "startDate": "1998-06-26T00:00:00Z", "viewId": "h7uiHolcyMBF0Q21"}' \
    > test.out 2>&1
eval_tap $? 157 'UpdateSection' test.out

#- 158 DeleteSection
samples/cli/sample-apps Platform deleteSection \
    --namespace $AB_NAMESPACE \
    --sectionId '8Gt7XxcBGI0rWURG' \
    --storeId '8YdJ74w8gruKvz5U' \
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
    --body '{"defaultLanguage": "z9EYItgmMuE6xUQe", "defaultRegion": "Qp2jhO5Adp00iXUZ", "description": "j8zX1kHgVO1x0ocv", "supportedLanguages": ["gNviLfVCzX0gmqRy", "XzctTurmUxsFP1Sp", "LVso7VWTLGxAUDJx"], "supportedRegions": ["8hijT7f3WHnWbd4g", "ZyBNJg7qlEBLw713", "QVFcQyD6dGtJEXMj"], "title": "t6v9tum8BshY6CQK"}' \
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
    --storeId 'hFw5C5fuoN8WfWWT' \
    > test.out 2>&1
eval_tap $? 166 'GetStore' test.out

#- 167 UpdateStore
samples/cli/sample-apps Platform updateStore \
    --namespace $AB_NAMESPACE \
    --storeId '1kWHxtO3cnOvAbxX' \
    --body '{"defaultLanguage": "haUyfB9vC8wWFTRF", "defaultRegion": "yUBYnPHUqkb2TYuR", "description": "zqZEoqreB8SUk6SF", "supportedLanguages": ["6WEuhVCKtVDTSQyt", "pXRhjhyF6vlsAAhU", "Qs351acA762TQXYb"], "supportedRegions": ["tGvXVli6PBETkqDg", "zgXHaXzXyURCCVj0", "Sf3tRoDTTPgMKaYq"], "title": "D5ftquDbLxXKDrtY"}' \
    > test.out 2>&1
eval_tap $? 167 'UpdateStore' test.out

#- 168 DeleteStore
samples/cli/sample-apps Platform deleteStore \
    --namespace $AB_NAMESPACE \
    --storeId 'yY6i6peL7arFyBI7' \
    > test.out 2>&1
eval_tap $? 168 'DeleteStore' test.out

#- 169 QueryChanges
samples/cli/sample-apps Platform queryChanges \
    --namespace $AB_NAMESPACE \
    --storeId 'OwU0nPUNTqA8zBV3' \
    --action 'DELETE' \
    --itemSku 'SKlDVeZNWVWeWud2' \
    --itemType 'OPTIONBOX' \
    --limit '95' \
    --offset '3' \
    --selected 'false' \
    --sortBy '["updatedAt:desc", "createdAt:asc", "updatedAt"]' \
    --status 'PUBLISHED' \
    --type 'ITEM' \
    --updatedAtEnd 't5XagGeNSS0KrQwj' \
    --updatedAtStart '2aS0crfllRh05MHD' \
    > test.out 2>&1
eval_tap $? 169 'QueryChanges' test.out

#- 170 PublishAll
samples/cli/sample-apps Platform publishAll \
    --namespace $AB_NAMESPACE \
    --storeId 'D1fCLgRlmPpkC2LM' \
    > test.out 2>&1
eval_tap $? 170 'PublishAll' test.out

#- 171 PublishSelected
samples/cli/sample-apps Platform publishSelected \
    --namespace $AB_NAMESPACE \
    --storeId 'CH93EUwLOsvZxwad' \
    > test.out 2>&1
eval_tap $? 171 'PublishSelected' test.out

#- 172 SelectAllRecords
samples/cli/sample-apps Platform selectAllRecords \
    --namespace $AB_NAMESPACE \
    --storeId '5QOOunwfL3gBhbSr' \
    > test.out 2>&1
eval_tap $? 172 'SelectAllRecords' test.out

#- 173 GetStatistic
samples/cli/sample-apps Platform getStatistic \
    --namespace $AB_NAMESPACE \
    --storeId '22DEh8kFXh0Wjv7G' \
    --action 'UPDATE' \
    --itemSku 'DRexSTxEbtr6YgWy' \
    --itemType 'CODE' \
    --type 'STORE' \
    --updatedAtEnd 'HYNeLufBgYYQjs9f' \
    --updatedAtStart 'aNoUgHl0vwgM8r6e' \
    > test.out 2>&1
eval_tap $? 173 'GetStatistic' test.out

#- 174 UnselectAllRecords
samples/cli/sample-apps Platform unselectAllRecords \
    --namespace $AB_NAMESPACE \
    --storeId 'gtS9b2vp5li4V4ea' \
    > test.out 2>&1
eval_tap $? 174 'UnselectAllRecords' test.out

#- 175 SelectRecord
samples/cli/sample-apps Platform selectRecord \
    --changeId 'wtob3TfIk3Qo5fwP' \
    --namespace $AB_NAMESPACE \
    --storeId 'EYjpuzQxRnD724Ak' \
    > test.out 2>&1
eval_tap $? 175 'SelectRecord' test.out

#- 176 UnselectRecord
samples/cli/sample-apps Platform unselectRecord \
    --changeId '5SDCiniDmnx8R9Ct' \
    --namespace $AB_NAMESPACE \
    --storeId 'mgKh8d3jt9ARFivv' \
    > test.out 2>&1
eval_tap $? 176 'UnselectRecord' test.out

#- 177 CloneStore
samples/cli/sample-apps Platform cloneStore \
    --namespace $AB_NAMESPACE \
    --storeId 'BHRe8VsbHLURosGu' \
    --targetStoreId 'vQNEj8JFrJ15S12S' \
    > test.out 2>&1
eval_tap $? 177 'CloneStore' test.out

#- 178 ExportStore
eval_tap 0 178 'ExportStore # SKIP deprecated' test.out

#- 179 QuerySubscriptions
samples/cli/sample-apps Platform querySubscriptions \
    --namespace $AB_NAMESPACE \
    --chargeStatus 'RECURRING_CHARGING' \
    --itemId 'oFx1cBx2gESmp0gm' \
    --limit '92' \
    --offset '57' \
    --sku 'nt1eXYxnDsYBjfbc' \
    --status 'EXPIRED' \
    --subscribedBy 'USER' \
    --userId 'sPqZd72wu4GI2ssu' \
    > test.out 2>&1
eval_tap $? 179 'QuerySubscriptions' test.out

#- 180 RecurringChargeSubscription
samples/cli/sample-apps Platform recurringChargeSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'vonUp9AeOqUj0Pzk' \
    > test.out 2>&1
eval_tap $? 180 'RecurringChargeSubscription' test.out

#- 181 GetTicketDynamic
samples/cli/sample-apps Platform getTicketDynamic \
    --boothName 'pfra83QC0MjXFpkN' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 181 'GetTicketDynamic' test.out

#- 182 DecreaseTicketSale
samples/cli/sample-apps Platform decreaseTicketSale \
    --boothName 'EyK1w4Aw5MXCC62Z' \
    --namespace $AB_NAMESPACE \
    --body '{"orderNo": "xSw8DZKiPjyWV8Fk"}' \
    > test.out 2>&1
eval_tap $? 182 'DecreaseTicketSale' test.out

#- 183 GetTicketBoothID
samples/cli/sample-apps Platform getTicketBoothID \
    --boothName 'hGNpc9iJwd1nqTF9' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 183 'GetTicketBoothID' test.out

#- 184 IncreaseTicketSale
samples/cli/sample-apps Platform increaseTicketSale \
    --boothName 'ZNaPOlCz5ue17eU2' \
    --namespace $AB_NAMESPACE \
    --body '{"count": 96, "orderNo": "fRLK6lobkSrObJtt"}' \
    > test.out 2>&1
eval_tap $? 184 'IncreaseTicketSale' test.out

#- 185 UnlockSteamUserAchievement
samples/cli/sample-apps Platform unlockSteamUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'vXgb9OKAzglDA89W' \
    --body '{"achievements": [{"id": "nshgNL8SK1zgi7qk", "value": 9}, {"id": "H3N0dEc0op8R47Vy", "value": 43}, {"id": "gWf6nb2OXisWMgaA", "value": 99}], "steamUserId": "BGNXgZo1ctxq83KU"}' \
    > test.out 2>&1
eval_tap $? 185 'UnlockSteamUserAchievement' test.out

#- 186 GetXblUserAchievements
samples/cli/sample-apps Platform getXblUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId '245TSMH5npTRAIpZ' \
    --xboxUserId 'HhrA6HHqZSt4Nfrq' \
    > test.out 2>&1
eval_tap $? 186 'GetXblUserAchievements' test.out

#- 187 UpdateXblUserAchievement
samples/cli/sample-apps Platform updateXblUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'A3mnfx0UIPA3il6x' \
    --body '{"achievements": [{"id": "faUkWqQM2s6hnHGK", "value": 64}, {"id": "nogVNBUAgbddMX6a", "value": 75}, {"id": "sd198xYcvvpIdAMJ", "value": 5}], "serviceConfigId": "ZeepPTgx3nmAsFjU", "titleId": "XJkNNuirfVqaXdJK", "xboxUserId": "fy1aiApb0KU7V9yD"}' \
    > test.out 2>&1
eval_tap $? 187 'UpdateXblUserAchievement' test.out

#- 188 AnonymizeCampaign
samples/cli/sample-apps Platform anonymizeCampaign \
    --namespace $AB_NAMESPACE \
    --userId 'zEd5bob7qWrrhNZq' \
    > test.out 2>&1
eval_tap $? 188 'AnonymizeCampaign' test.out

#- 189 AnonymizeEntitlement
samples/cli/sample-apps Platform anonymizeEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'XEmo3VT9utyf3fBi' \
    > test.out 2>&1
eval_tap $? 189 'AnonymizeEntitlement' test.out

#- 190 AnonymizeFulfillment
samples/cli/sample-apps Platform anonymizeFulfillment \
    --namespace $AB_NAMESPACE \
    --userId 'ozMhlAdru7OIz3YI' \
    > test.out 2>&1
eval_tap $? 190 'AnonymizeFulfillment' test.out

#- 191 AnonymizeIntegration
samples/cli/sample-apps Platform anonymizeIntegration \
    --namespace $AB_NAMESPACE \
    --userId 'NYLiRubNTU9p02By' \
    > test.out 2>&1
eval_tap $? 191 'AnonymizeIntegration' test.out

#- 192 AnonymizeOrder
samples/cli/sample-apps Platform anonymizeOrder \
    --namespace $AB_NAMESPACE \
    --userId 'r7oGyudNExUgOPrb' \
    > test.out 2>&1
eval_tap $? 192 'AnonymizeOrder' test.out

#- 193 AnonymizePayment
samples/cli/sample-apps Platform anonymizePayment \
    --namespace $AB_NAMESPACE \
    --userId 'IlaC5ts0fNsypCBn' \
    > test.out 2>&1
eval_tap $? 193 'AnonymizePayment' test.out

#- 194 AnonymizeRevocation
samples/cli/sample-apps Platform anonymizeRevocation \
    --namespace $AB_NAMESPACE \
    --userId 'MU1H3YJ4wev9rQPt' \
    > test.out 2>&1
eval_tap $? 194 'AnonymizeRevocation' test.out

#- 195 AnonymizeSubscription
samples/cli/sample-apps Platform anonymizeSubscription \
    --namespace $AB_NAMESPACE \
    --userId 'zTUM4iKTwDZlASjR' \
    > test.out 2>&1
eval_tap $? 195 'AnonymizeSubscription' test.out

#- 196 AnonymizeWallet
samples/cli/sample-apps Platform anonymizeWallet \
    --namespace $AB_NAMESPACE \
    --userId 'hKSqd8PHf6q650jY' \
    > test.out 2>&1
eval_tap $? 196 'AnonymizeWallet' test.out

#- 197 GetUserDLCByPlatform
samples/cli/sample-apps Platform getUserDLCByPlatform \
    --namespace $AB_NAMESPACE \
    --userId 'uQSQ0y44mer6U0VL' \
    --type 'XBOX' \
    > test.out 2>&1
eval_tap $? 197 'GetUserDLCByPlatform' test.out

#- 198 GetUserDLC
samples/cli/sample-apps Platform getUserDLC \
    --namespace $AB_NAMESPACE \
    --userId 'iU1sNo0SxyLkOZlG' \
    --type 'XBOX' \
    > test.out 2>&1
eval_tap $? 198 'GetUserDLC' test.out

#- 199 QueryUserEntitlements
samples/cli/sample-apps Platform queryUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'Kfvey8Jx62OFJFfA' \
    --activeOnly 'true' \
    --appType 'GAME' \
    --entitlementClazz 'APP' \
    --entitlementName 'JkNQF8GznypI5diD' \
    --features '["GNhbVcHkszDRaKSN", "OfgW40egNGzdSuVm", "23rUYXcqdKkukXMX"]' \
    --itemId '["Rt6GYgy5jztHuzGQ", "AeOzpO52Sop2NfJ6", "jaYyTOHjX3tfXicw"]' \
    --limit '44' \
    --offset '78' \
    > test.out 2>&1
eval_tap $? 199 'QueryUserEntitlements' test.out

#- 200 GrantUserEntitlement
samples/cli/sample-apps Platform grantUserEntitlement \
    --namespace $AB_NAMESPACE \
    --userId '3Z0fU5tT2YG6foHN' \
    --body '[{"endDate": "1975-03-12T00:00:00Z", "grantedCode": "GOwY4YxzNaosgFaB", "itemId": "OEhENVgc4Xa7oXHC", "itemNamespace": "xGvxGSXO7sC6PE47", "language": "DOe-pUcq", "quantity": 70, "region": "wQ02tbS4a5416Kwh", "source": "REWARD", "startDate": "1989-07-25T00:00:00Z", "storeId": "ro5yPQDRBy8hGvFI"}, {"endDate": "1998-01-13T00:00:00Z", "grantedCode": "K3xmBOklATLJ81RW", "itemId": "jpbTQT5TMwVjqC5K", "itemNamespace": "M9NMyuf6jkXu3RD9", "language": "QEPZ_lrBu_dC", "quantity": 87, "region": "vmt6MWsabDp644O3", "source": "REFERRAL_BONUS", "startDate": "1997-04-07T00:00:00Z", "storeId": "dQCfkyrWOHq9LcWi"}, {"endDate": "1988-06-04T00:00:00Z", "grantedCode": "wRPvP1DChLsVjFA4", "itemId": "DZcPVAuY7x6kiVm5", "itemNamespace": "nDDcaxZ2cPONaEdg", "language": "Uph_IzUp", "quantity": 40, "region": "qhUVWsHI8hQ18Amf", "source": "REDEEM_CODE", "startDate": "1995-04-09T00:00:00Z", "storeId": "ds0JxkiljY2FKh59"}]' \
    > test.out 2>&1
eval_tap $? 200 'GrantUserEntitlement' test.out

#- 201 GetUserAppEntitlementByAppId
samples/cli/sample-apps Platform getUserAppEntitlementByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'rRUXrgitgtn5LoBV' \
    --activeOnly 'false' \
    --appId 'ZZjhMUXzLtnhz2W5' \
    > test.out 2>&1
eval_tap $? 201 'GetUserAppEntitlementByAppId' test.out

#- 202 QueryUserEntitlementsByAppType
samples/cli/sample-apps Platform queryUserEntitlementsByAppType \
    --namespace $AB_NAMESPACE \
    --userId 'aJsPWqfmfnuMsylK' \
    --activeOnly 'false' \
    --limit '6' \
    --offset '73' \
    --appType 'SOFTWARE' \
    > test.out 2>&1
eval_tap $? 202 'QueryUserEntitlementsByAppType' test.out

#- 203 GetUserEntitlementByItemId
samples/cli/sample-apps Platform getUserEntitlementByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'L6Oho2i8yurRM6G1' \
    --activeOnly 'false' \
    --entitlementClazz 'APP' \
    --itemId 'V8f7dqIWyZTeeqsx' \
    > test.out 2>&1
eval_tap $? 203 'GetUserEntitlementByItemId' test.out

#- 204 GetUserActiveEntitlementsByItemIds
samples/cli/sample-apps Platform getUserActiveEntitlementsByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'iUPDyWUmrkYzIs6L' \
    --ids '["7Yv5Z1XzsGq6TxHg", "9RmUH3d3xwCWcWK6", "FRqQAPNiS0C8oqcd"]' \
    > test.out 2>&1
eval_tap $? 204 'GetUserActiveEntitlementsByItemIds' test.out

#- 205 GetUserEntitlementBySku
samples/cli/sample-apps Platform getUserEntitlementBySku \
    --namespace $AB_NAMESPACE \
    --userId '3NEFOBXmDCDs7foP' \
    --activeOnly 'false' \
    --entitlementClazz 'OPTIONBOX' \
    --sku '9lsNrHAk3W3ZLHCU' \
    > test.out 2>&1
eval_tap $? 205 'GetUserEntitlementBySku' test.out

#- 206 ExistsAnyUserActiveEntitlement
samples/cli/sample-apps Platform existsAnyUserActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'oqu5tM0uz9orXzKP' \
    --appIds '["aTWtvge3Xmnxzdvu", "shYN8yvjvxeG8rZK", "Cavgzse0UbOEA2iv"]' \
    --itemIds '["RrZXpp5kbxV59fAM", "FmpF5w048Qf8Jad0", "buwDmmtHjrGQcukY"]' \
    --skus '["7zXqo9dPFmbvp8l2", "lHPWQEKmxXibzz88", "aZ7iHYtTpnqg9Lmj"]' \
    > test.out 2>&1
eval_tap $? 206 'ExistsAnyUserActiveEntitlement' test.out

#- 207 ExistsAnyUserActiveEntitlementByItemIds
samples/cli/sample-apps Platform existsAnyUserActiveEntitlementByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'sKIAMuh6BhsY7fm1' \
    --itemIds '["OJZgYREcZMyDtg2V", "rQ7SlVl4i4uTjNHH", "RooIKcO1urIXIBkT"]' \
    > test.out 2>&1
eval_tap $? 207 'ExistsAnyUserActiveEntitlementByItemIds' test.out

#- 208 GetUserAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform getUserAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'CaqpP3wcLxOl3XkO' \
    --appId 'QdP1QIcWMD3PxUgN' \
    > test.out 2>&1
eval_tap $? 208 'GetUserAppEntitlementOwnershipByAppId' test.out

#- 209 GetUserEntitlementOwnershipByItemId
samples/cli/sample-apps Platform getUserEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'BX1DYtg6yity6OML' \
    --entitlementClazz 'ENTITLEMENT' \
    --itemId 'xtkZAegOSvnYNxz4' \
    > test.out 2>&1
eval_tap $? 209 'GetUserEntitlementOwnershipByItemId' test.out

#- 210 GetUserEntitlementOwnershipByItemIds
samples/cli/sample-apps Platform getUserEntitlementOwnershipByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'XQwiiWtyWcXQQFX8' \
    --ids '["QtQLNaguubebNqT9", "eMkNpDWKlSptddJO", "vrQYW7bVe2eVfe4V"]' \
    > test.out 2>&1
eval_tap $? 210 'GetUserEntitlementOwnershipByItemIds' test.out

#- 211 GetUserEntitlementOwnershipBySku
samples/cli/sample-apps Platform getUserEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --userId 'gkwHeAnrCWGsX10z' \
    --entitlementClazz 'OPTIONBOX' \
    --sku 'bnCLGy7AXL2dkjm1' \
    > test.out 2>&1
eval_tap $? 211 'GetUserEntitlementOwnershipBySku' test.out

#- 212 RevokeAllEntitlements
samples/cli/sample-apps Platform revokeAllEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'zytNd6mVoClmdnWa' \
    > test.out 2>&1
eval_tap $? 212 'RevokeAllEntitlements' test.out

#- 213 RevokeUserEntitlements
samples/cli/sample-apps Platform revokeUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'aYOOFlkKrkJb8mb3' \
    --entitlementIds 'j9Uk28MOnceeh54C' \
    > test.out 2>&1
eval_tap $? 213 'RevokeUserEntitlements' test.out

#- 214 GetUserEntitlement
samples/cli/sample-apps Platform getUserEntitlement \
    --entitlementId 'AoXRQu57OQZ4AVf6' \
    --namespace $AB_NAMESPACE \
    --userId 'yV3qtUdrJ1FdMJY6' \
    > test.out 2>&1
eval_tap $? 214 'GetUserEntitlement' test.out

#- 215 UpdateUserEntitlement
samples/cli/sample-apps Platform updateUserEntitlement \
    --entitlementId 'WKm9AhARjSUGvJ7W' \
    --namespace $AB_NAMESPACE \
    --userId 'UWQxplxDGRy2kxUJ' \
    --body '{"endDate": "1988-07-13T00:00:00Z", "nullFieldList": ["8CSYPj1vHCip7vO5", "xDtQluaDrR392BZq", "yMlEdCn8d1hguhEG"], "startDate": "1979-10-13T00:00:00Z", "status": "INACTIVE", "useCount": 57}' \
    > test.out 2>&1
eval_tap $? 215 'UpdateUserEntitlement' test.out

#- 216 ConsumeUserEntitlement
samples/cli/sample-apps Platform consumeUserEntitlement \
    --entitlementId 'QgzDH66Rr3QttAOO' \
    --namespace $AB_NAMESPACE \
    --userId 'xNHBPULTLPgha98i' \
    --body '{"options": ["MS0ASL8096wh7ef6", "c2CwIMEhn5g7w9TQ", "1Ciun4qdHeG6dpeh"], "requestId": "eKhoxwYUcqSNBfi3", "useCount": 69}' \
    > test.out 2>&1
eval_tap $? 216 'ConsumeUserEntitlement' test.out

#- 217 DisableUserEntitlement
samples/cli/sample-apps Platform disableUserEntitlement \
    --entitlementId 'cGliEKp6bapLSznd' \
    --namespace $AB_NAMESPACE \
    --userId 'zmHaAGYKJwbLH88I' \
    > test.out 2>&1
eval_tap $? 217 'DisableUserEntitlement' test.out

#- 218 EnableUserEntitlement
samples/cli/sample-apps Platform enableUserEntitlement \
    --entitlementId 'dorm0K3r4KQU9nsa' \
    --namespace $AB_NAMESPACE \
    --userId 'L7DeEuCqFBhSfnYu' \
    > test.out 2>&1
eval_tap $? 218 'EnableUserEntitlement' test.out

#- 219 GetUserEntitlementHistories
samples/cli/sample-apps Platform getUserEntitlementHistories \
    --entitlementId '8tTTcIl9RWHeNivD' \
    --namespace $AB_NAMESPACE \
    --userId '8FFM3bEIvZcXKIqH' \
    > test.out 2>&1
eval_tap $? 219 'GetUserEntitlementHistories' test.out

#- 220 RevokeUserEntitlement
samples/cli/sample-apps Platform revokeUserEntitlement \
    --entitlementId '5vCs1rDBCRBV024K' \
    --namespace $AB_NAMESPACE \
    --userId 'Am1mPpV0fwK94VAn' \
    > test.out 2>&1
eval_tap $? 220 'RevokeUserEntitlement' test.out

#- 221 RevokeUseCount
samples/cli/sample-apps Platform revokeUseCount \
    --entitlementId '7q4KztV4SGmISGpA' \
    --namespace $AB_NAMESPACE \
    --userId '5PGGNFLpqkX2EKZY' \
    --body '{"reason": "tGtNTwiv2154r7aq", "useCount": 80}' \
    > test.out 2>&1
eval_tap $? 221 'RevokeUseCount' test.out

#- 222 SellUserEntitlement
samples/cli/sample-apps Platform sellUserEntitlement \
    --entitlementId 'ieSDk6wf2RpprGJT' \
    --namespace $AB_NAMESPACE \
    --userId 'D8tuMswZ0hNaL1jm' \
    --body '{"requestId": "9TdApvSvhDxo86KO", "useCount": 4}' \
    > test.out 2>&1
eval_tap $? 222 'SellUserEntitlement' test.out

#- 223 FulfillItem
samples/cli/sample-apps Platform fulfillItem \
    --namespace $AB_NAMESPACE \
    --userId 'aImb4umaX23SNmzs' \
    --body '{"duration": 90, "endDate": "1996-10-09T00:00:00Z", "itemId": "NMbueRAIzjslhlda", "itemSku": "ZQs0UnJWfVxI82Ew", "language": "wLYpTtsy9x1nneKl", "order": {"currency": {"currencyCode": "j1VaZvysMQrEaysl", "currencySymbol": "bJNv9y4QspiRXXYP", "currencyType": "VIRTUAL", "decimals": 16, "namespace": "iYVjTWh5G5MKeq99"}, "ext": {"bFHAFwzkKZ4wHb3D": {}, "tEx0rSENlxSneT2Z": {}, "6B8CREwFkuCnFq8q": {}}, "free": true}, "orderNo": "PNK37bozvNYEBnoM", "origin": "Playstation", "quantity": 68, "region": "i2uyF6GzfLxXaPQL", "source": "REWARD", "startDate": "1980-02-12T00:00:00Z", "storeId": "AxpgktaRm5zV6vIH"}' \
    > test.out 2>&1
eval_tap $? 223 'FulfillItem' test.out

#- 224 RedeemCode
samples/cli/sample-apps Platform redeemCode \
    --namespace $AB_NAMESPACE \
    --userId 'SfvjeSNWRu7TP42y' \
    --body '{"code": "BRDvxHjAi504suLX", "language": "ykef-WNgq_997", "region": "req6V2hUFIZC3ONK"}' \
    > test.out 2>&1
eval_tap $? 224 'RedeemCode' test.out

#- 225 FulfillRewards
samples/cli/sample-apps Platform fulfillRewards \
    --namespace $AB_NAMESPACE \
    --userId 'IXDQuqKFY5UvauNc' \
    --body '{"origin": "Epic", "rewards": [{"currency": {"currencyCode": "fBbkBnqWAIYYKH7q", "namespace": "Rt7O9LR1fWlpRINx"}, "item": {"itemId": "Mbe0EqXkAGjBl6KR", "itemSku": "RbYU6HqStno5kf9C", "itemType": "nK68l3cXzypGZJJQ"}, "quantity": 49, "type": "CURRENCY"}, {"currency": {"currencyCode": "kS19jQBawBD5WmO3", "namespace": "utxIRc6mORc0Rdj7"}, "item": {"itemId": "C6ALViZt3XGGeEoP", "itemSku": "r4imF36ujXW6vSe6", "itemType": "AB1dr2wj0R8Ph7wn"}, "quantity": 83, "type": "CURRENCY"}, {"currency": {"currencyCode": "nBxseS7CN2iR5Fwp", "namespace": "IwpJ29Jd2IUfWpmW"}, "item": {"itemId": "bcat4pbP1dTL78Co", "itemSku": "wm3ApVMbGyrGoq4w", "itemType": "LnhHLMxGrC0bfCMp"}, "quantity": 17, "type": "ITEM"}], "source": "ACHIEVEMENT"}' \
    > test.out 2>&1
eval_tap $? 225 'FulfillRewards' test.out

#- 226 QueryUserIAPOrders
samples/cli/sample-apps Platform queryUserIAPOrders \
    --namespace $AB_NAMESPACE \
    --userId 'cVkJJkDlubMn2fv4' \
    --endTime 'zkOUp8YIK2Cx6jmS' \
    --limit '100' \
    --offset '26' \
    --productId 'K15TpdaPgc0dDq2Q' \
    --startTime 'tzN2DYimpgGwkxVb' \
    --status 'FULFILLED' \
    --type 'XBOX' \
    > test.out 2>&1
eval_tap $? 226 'QueryUserIAPOrders' test.out

#- 227 QueryAllUserIAPOrders
samples/cli/sample-apps Platform queryAllUserIAPOrders \
    --namespace $AB_NAMESPACE \
    --userId 'isxpBrsE9KuPu8gV' \
    > test.out 2>&1
eval_tap $? 227 'QueryAllUserIAPOrders' test.out

#- 228 QueryUserIAPConsumeHistory
samples/cli/sample-apps Platform queryUserIAPConsumeHistory \
    --namespace $AB_NAMESPACE \
    --userId 'dyxcMzxzZeYTuFva' \
    --endTime '0mP6io30JorFc6n6' \
    --limit '1' \
    --offset '39' \
    --startTime 'kglSyuueXnUnY1JD' \
    --status 'SUCCESS' \
    --type 'PLAYSTATION' \
    > test.out 2>&1
eval_tap $? 228 'QueryUserIAPConsumeHistory' test.out

#- 229 MockFulfillIAPItem
samples/cli/sample-apps Platform mockFulfillIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'E3KV6uCuIDPJBnPV' \
    --body '{"itemIdentityType": "ITEM_SKU", "language": "FUhh_iZOG-876", "productId": "CrQ1Op7IkvtHunAp", "region": "CcqYa2n0iauARaJO", "type": "TWITCH"}' \
    > test.out 2>&1
eval_tap $? 229 'MockFulfillIAPItem' test.out

#- 230 QueryUserOrders
samples/cli/sample-apps Platform queryUserOrders \
    --namespace $AB_NAMESPACE \
    --userId 'w6S0rDLNdfEtxcsW' \
    --itemId 'C4qFPFNzgLdqKoeH' \
    --limit '82' \
    --offset '4' \
    --status 'REFUNDED' \
    > test.out 2>&1
eval_tap $? 230 'QueryUserOrders' test.out

#- 231 AdminCreateUserOrder
samples/cli/sample-apps Platform adminCreateUserOrder \
    --namespace $AB_NAMESPACE \
    --userId 'KFobPDudHgzpDR6t' \
    --body '{"currencyCode": "wXhVtHZR4Hac5Exj", "currencyNamespace": "0eIO5ukwtT0jSMFd", "discountedPrice": 97, "ext": {"aRuSU1MOz6OWoRBW": {}, "TeVX5kReUmSRokaf": {}, "jBMyLLZmwgIBIfHI": {}}, "itemId": "S0fPJoFgzZYq57v1", "language": "cSqnisypBgSEvwkP", "options": {"skipPriceValidation": true}, "platform": "Nintendo", "price": 11, "quantity": 19, "region": "d8sNDJg11wbTKfqr", "returnUrl": "eHLAmlaVJh7ObJVi", "sandbox": false, "sectionId": "EagmvzFR0hAWkE7B"}' \
    > test.out 2>&1
eval_tap $? 231 'AdminCreateUserOrder' test.out

#- 232 CountOfPurchasedItem
samples/cli/sample-apps Platform countOfPurchasedItem \
    --namespace $AB_NAMESPACE \
    --userId 'eQkbuOK3pcAX0Y3L' \
    --itemId '9rpd9jBFycTwJ1bl' \
    > test.out 2>&1
eval_tap $? 232 'CountOfPurchasedItem' test.out

#- 233 GetUserOrder
samples/cli/sample-apps Platform getUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'Aa47RGhY1tw0igV8' \
    --userId 'mkudFEFI0vzqgQK9' \
    > test.out 2>&1
eval_tap $? 233 'GetUserOrder' test.out

#- 234 UpdateUserOrderStatus
samples/cli/sample-apps Platform updateUserOrderStatus \
    --namespace $AB_NAMESPACE \
    --orderNo 'PAiv9KXtNi7LESVt' \
    --userId 'yG6Z46tDCbCUgvDx' \
    --body '{"status": "INIT", "statusReason": "9CzozYS4t5JL3WdX"}' \
    > test.out 2>&1
eval_tap $? 234 'UpdateUserOrderStatus' test.out

#- 235 FulfillUserOrder
samples/cli/sample-apps Platform fulfillUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'AGAtrooFmKb9wDXQ' \
    --userId 'S3FVkXRR0iKWbzy1' \
    > test.out 2>&1
eval_tap $? 235 'FulfillUserOrder' test.out

#- 236 GetUserOrderGrant
samples/cli/sample-apps Platform getUserOrderGrant \
    --namespace $AB_NAMESPACE \
    --orderNo '74D1whWYYwOx2Kng' \
    --userId 'UZ53nq3kG9ysg90t' \
    > test.out 2>&1
eval_tap $? 236 'GetUserOrderGrant' test.out

#- 237 GetUserOrderHistories
samples/cli/sample-apps Platform getUserOrderHistories \
    --namespace $AB_NAMESPACE \
    --orderNo 'NsyN6VUBlEJp0XjE' \
    --userId 'XVRicU6Js7tbGiAu' \
    > test.out 2>&1
eval_tap $? 237 'GetUserOrderHistories' test.out

#- 238 ProcessUserOrderNotification
samples/cli/sample-apps Platform processUserOrderNotification \
    --namespace $AB_NAMESPACE \
    --orderNo 'Ry2yDiXs49LYCTHe' \
    --userId 'pEfKsPQeDomObwjG' \
    --body '{"additionalData": {"cardSummary": "SUnINk1jPIdXgaKF"}, "authorisedTime": "1992-07-11T00:00:00Z", "chargebackReversedTime": "1986-09-14T00:00:00Z", "chargebackTime": "1995-08-10T00:00:00Z", "chargedTime": "1984-11-04T00:00:00Z", "createdTime": "1994-11-26T00:00:00Z", "currency": {"currencyCode": "r7T37SAyzZMtWAfl", "currencySymbol": "Fq2e18D4hD4pYWia", "currencyType": "REAL", "decimals": 45, "namespace": "A8LWGCymxqWyhwaS"}, "customParameters": {"Wcus4EBjyaU2meWw": {}, "zdo8bBZ8zesKa2Us": {}, "iuJJMtJHZHSrfK1I": {}}, "extOrderNo": "xDQ98YZzcrBObp97", "extTxId": "diJ2TraUDsCT0tRc", "extUserId": "MoIObi0GU9M2u1ok", "issuedAt": "1973-06-20T00:00:00Z", "metadata": {"SYs1NLopIcqUGuuU": "e3CeM7EFUP03zBDg", "kkpHG63UjDJLSCxG": "4TSgGMN5OtdMawf2", "R0WoAvojCTmp7krO": "OCN3LGOCXXVdhRAo"}, "namespace": "i19e6UC3mD0S85qH", "nonceStr": "zRNMR9vQhcXf9rNk", "paymentMethod": "gbTNqsPEzWqMdbLh", "paymentMethodFee": 44, "paymentOrderNo": "Pf2c6g3V5iSjUh9v", "paymentProvider": "ADYEN", "paymentProviderFee": 26, "paymentStationUrl": "KThQk4dgXpqcWo8F", "price": 76, "refundedTime": "1980-11-22T00:00:00Z", "salesTax": 89, "sandbox": true, "sku": "k4bbdi3IV0BzdzBi", "status": "CHARGEBACK_REVERSED", "statusReason": "x8dWjOuiDI0AsR2q", "subscriptionId": "m7Pk2UkZnPo6sSaJ", "subtotalPrice": 34, "targetNamespace": "HdjWOqEyRN9J1xO9", "targetUserId": "iLMOfj568uOULfPV", "tax": 42, "totalPrice": 20, "totalTax": 10, "txEndTime": "1987-08-17T00:00:00Z", "type": "kNSepzWgmP00l4gp", "userId": "SZ9ccqgB8cWltAU1", "vat": 87}' \
    > test.out 2>&1
eval_tap $? 238 'ProcessUserOrderNotification' test.out

#- 239 DownloadUserOrderReceipt
samples/cli/sample-apps Platform downloadUserOrderReceipt \
    --namespace $AB_NAMESPACE \
    --orderNo 'AghFQrj8BFTIpGnK' \
    --userId 'IIRdikElaiA5UAQm' \
    > test.out 2>&1
eval_tap $? 239 'DownloadUserOrderReceipt' test.out

#- 240 CreateUserPaymentOrder
samples/cli/sample-apps Platform createUserPaymentOrder \
    --namespace $AB_NAMESPACE \
    --userId '5do5cBwRalu1iMQy' \
    --body '{"currencyCode": "85qmFOzkwEbA6xdn", "currencyNamespace": "eHqA8FPMCRtIVTvR", "customParameters": {"rCc6Dufnnq2BGAsE": {}, "iNdWakaaYnc2joo7": {}, "DWtix82qS3UptNpS": {}}, "description": "SkqdrvbDaPJvEiHN", "extOrderNo": "PVfQq1JVMisfXp5D", "extUserId": "1zQCYN3mjYkBfh0G", "itemType": "LOOTBOX", "language": "xI-zcCO", "metadata": {"y5DZuvM4DIFx0cBZ": "pVCLI7vEFJBJqJmt", "ezFk0xjoBkIFv9Eg": "UOAsSmJ8EilfNSFP", "kccA51YcWlH2eNmT": "0hrhp7sLCwsQhKMx"}, "notifyUrl": "px0RkbRSF41LQWeu", "omitNotification": false, "platform": "ZnZrwQCAjAeBxCtT", "price": 61, "recurringPaymentOrderNo": "glgATTNVptG7YtN6", "region": "7i0W44LbWtQZxrSF", "returnUrl": "mfcozC4LvSX2gFQO", "sandbox": false, "sku": "PAKQzLBiCTZ0WV9U", "subscriptionId": "g3dblKK1py6A3zKi", "title": "8oFiAYxb2aE1yq0P"}' \
    > test.out 2>&1
eval_tap $? 240 'CreateUserPaymentOrder' test.out

#- 241 RefundUserPaymentOrder
samples/cli/sample-apps Platform refundUserPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'TeC8S1qDR64I9SsP' \
    --userId 'sPnRfPh2EO3M7q3W' \
    --body '{"description": "eDK3NSzWYqDCnzA5"}' \
    > test.out 2>&1
eval_tap $? 241 'RefundUserPaymentOrder' test.out

#- 242 ApplyUserRedemption
samples/cli/sample-apps Platform applyUserRedemption \
    --namespace $AB_NAMESPACE \
    --userId '92T26CU1ginzTX13' \
    --body '{"code": "5PAkfdqwtzn3TPPC", "orderNo": "pvfeyCf9O8WNKXAF"}' \
    > test.out 2>&1
eval_tap $? 242 'ApplyUserRedemption' test.out

#- 243 DoRevocation
samples/cli/sample-apps Platform doRevocation \
    --namespace $AB_NAMESPACE \
    --userId 'FD6RCtHoJc6xtroP' \
    --body '{"meta": {"F7Jy3NiYtKpfeJKG": {}, "g9RURoOjjie46aGh": {}, "Qkq2TbrbanB3JcvO": {}}, "revokeEntries": [{"currency": {"balanceOrigin": "IOS", "currencyCode": "tEzCTMni47LaUgOk", "namespace": "K1rQGRF0oG9h0SYh"}, "entitlement": {"entitlementId": "8CRVD6ogaybWj6qi"}, "item": {"itemIdentity": "t3YNhlFZP0c2R4M3", "itemIdentityType": "ITEM_SKU", "origin": "Playstation"}, "quantity": 17, "type": "ITEM"}, {"currency": {"balanceOrigin": "System", "currencyCode": "Sb8V2sp4Vuf7HMXc", "namespace": "Xh0LXpckCNDZyIm1"}, "entitlement": {"entitlementId": "845mmbjiexWn6Xg3"}, "item": {"itemIdentity": "iw1xPZE3xAh6SZcC", "itemIdentityType": "ITEM_ID", "origin": "System"}, "quantity": 95, "type": "ENTITLEMENT"}, {"currency": {"balanceOrigin": "System", "currencyCode": "FA8L80X7XKQWRqD7", "namespace": "AcVfDvmJMwFhkyJu"}, "entitlement": {"entitlementId": "zfnedLmHD2lkw7al"}, "item": {"itemIdentity": "pQD9jj0ENFFN4Dx2", "itemIdentityType": "ITEM_SKU", "origin": "Xbox"}, "quantity": 90, "type": "ENTITLEMENT"}], "source": "OTHER", "transactionId": "FVb2Pf2jziwIBY2P"}' \
    > test.out 2>&1
eval_tap $? 243 'DoRevocation' test.out

#- 244 QueryUserSubscriptions
samples/cli/sample-apps Platform queryUserSubscriptions \
    --namespace $AB_NAMESPACE \
    --userId 'EOJ2p30F8FCmbiW9' \
    --chargeStatus 'CHARGED' \
    --itemId 'hzEURipL3wQSP3ff' \
    --limit '57' \
    --offset '3' \
    --sku 'HK6bRDrn8LcZZzdT' \
    --status 'EXPIRED' \
    --subscribedBy 'PLATFORM' \
    > test.out 2>&1
eval_tap $? 244 'QueryUserSubscriptions' test.out

#- 245 GetUserSubscriptionActivities
samples/cli/sample-apps Platform getUserSubscriptionActivities \
    --namespace $AB_NAMESPACE \
    --userId 'sJlLQdtt4ZKXYhTJ' \
    --excludeSystem 'false' \
    --limit '62' \
    --offset '83' \
    --subscriptionId 'JVX9ypILH9hExFof' \
    > test.out 2>&1
eval_tap $? 245 'GetUserSubscriptionActivities' test.out

#- 246 PlatformSubscribeSubscription
samples/cli/sample-apps Platform platformSubscribeSubscription \
    --namespace $AB_NAMESPACE \
    --userId 'uJ73zUloox8qoLLf' \
    --body '{"grantDays": 71, "itemId": "m0J0DOOsMXlAR9lD", "language": "gkjib15jJ1NE8eSJ", "reason": "du1oQFabx84z8qF5", "region": "4B6YVdNZbEijK0pR", "source": "Uu42tFwnQr7DaKCx"}' \
    > test.out 2>&1
eval_tap $? 246 'PlatformSubscribeSubscription' test.out

#- 247 CheckUserSubscriptionSubscribableByItemId
samples/cli/sample-apps Platform checkUserSubscriptionSubscribableByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'bcbINEzOyXQfVr5D' \
    --itemId 'yPcM9cgDGpFClAxs' \
    > test.out 2>&1
eval_tap $? 247 'CheckUserSubscriptionSubscribableByItemId' test.out

#- 248 GetUserSubscription
samples/cli/sample-apps Platform getUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'i3jFvyhSZV33mjSb' \
    --userId 'uW0Fg8icdsgHeQP8' \
    > test.out 2>&1
eval_tap $? 248 'GetUserSubscription' test.out

#- 249 DeleteUserSubscription
samples/cli/sample-apps Platform deleteUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'PsdLaD7eh15ICTIw' \
    --userId '7NVnWJfceisuxc8J' \
    > test.out 2>&1
eval_tap $? 249 'DeleteUserSubscription' test.out

#- 250 CancelSubscription
samples/cli/sample-apps Platform cancelSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'FECs0c2o0tTAIOCG' \
    --userId 'ikVxDxx1H3YDiPSY' \
    --force 'true' \
    --body '{"immediate": false, "reason": "zDsZXfbKSxyXYJad"}' \
    > test.out 2>&1
eval_tap $? 250 'CancelSubscription' test.out

#- 251 GrantDaysToSubscription
samples/cli/sample-apps Platform grantDaysToSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId '8PUy3XVPHoTqOZWa' \
    --userId 'COLLlS2QB6Qw5kUj' \
    --body '{"grantDays": 36, "reason": "NsDEWNDDlUksnuFQ"}' \
    > test.out 2>&1
eval_tap $? 251 'GrantDaysToSubscription' test.out

#- 252 GetUserSubscriptionBillingHistories
samples/cli/sample-apps Platform getUserSubscriptionBillingHistories \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'D87Aetpuft73YWyk' \
    --userId 'HVQBH4aVxlf7WLyM' \
    --excludeFree 'true' \
    --limit '24' \
    --offset '58' \
    > test.out 2>&1
eval_tap $? 252 'GetUserSubscriptionBillingHistories' test.out

#- 253 ProcessUserSubscriptionNotification
samples/cli/sample-apps Platform processUserSubscriptionNotification \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'QapK1fqjyvc9M4Bo' \
    --userId 'QXaIqaCJHS2H9y5O' \
    --body '{"additionalData": {"cardSummary": "bWCnHSB7pP8AY9oB"}, "authorisedTime": "1980-08-07T00:00:00Z", "chargebackReversedTime": "1997-11-18T00:00:00Z", "chargebackTime": "1987-05-20T00:00:00Z", "chargedTime": "1981-09-08T00:00:00Z", "createdTime": "1974-09-04T00:00:00Z", "currency": {"currencyCode": "vUzakw5k2bgpoddk", "currencySymbol": "Hi0yNmnV1Ozsk8s3", "currencyType": "VIRTUAL", "decimals": 25, "namespace": "Jo80i85tc67LgRm2"}, "customParameters": {"D6DtHM7s50c15AYb": {}, "dV271fTISpnk8QC0": {}, "fBj8dRwJfMSI9z1D": {}}, "extOrderNo": "kZi0RvARB2RhBBaO", "extTxId": "62wZ7ycgZ8EeLteb", "extUserId": "H4z1yZEoUnhZmb0i", "issuedAt": "1977-07-30T00:00:00Z", "metadata": {"vUJc3qtVZcU0ntEp": "HpE6liblv1dVV8KF", "FO3xDZKNBcdJFiP0": "m0kepv0Dsv2zrfil", "aHvz4oi3dNkj40zt": "vll8wOJXj4gcsert"}, "namespace": "svidZKjO400M8f80", "nonceStr": "yzSAl2UUdGHpiCDy", "paymentMethod": "MXyvkgv3M7JFnRef", "paymentMethodFee": 24, "paymentOrderNo": "DPBLqXoLeOgR7Qgp", "paymentProvider": "WALLET", "paymentProviderFee": 21, "paymentStationUrl": "YU4fmLJuEizsR6JX", "price": 80, "refundedTime": "1993-01-17T00:00:00Z", "salesTax": 33, "sandbox": true, "sku": "v4TqMLsLxKgM11mG", "status": "NOTIFICATION_OF_CHARGEBACK", "statusReason": "GxH06prpKi9NIX2u", "subscriptionId": "4DHVaQ8Od9ofGwEc", "subtotalPrice": 38, "targetNamespace": "K3fRjTFXxiHplziP", "targetUserId": "mYque9YbGwpH21cy", "tax": 29, "totalPrice": 38, "totalTax": 93, "txEndTime": "1991-01-24T00:00:00Z", "type": "wB8iGMIM6SRPo1wZ", "userId": "n8wewFjlKwnYlTcx", "vat": 68}' \
    > test.out 2>&1
eval_tap $? 253 'ProcessUserSubscriptionNotification' test.out

#- 254 AcquireUserTicket
samples/cli/sample-apps Platform acquireUserTicket \
    --boothName 'mQXDya0Z9YAezYfk' \
    --namespace $AB_NAMESPACE \
    --userId 'uaIwMrHQ30YAGKZn' \
    --body '{"count": 87, "orderNo": "sfUgB0flCIXqRBhH"}' \
    > test.out 2>&1
eval_tap $? 254 'AcquireUserTicket' test.out

#- 255 QueryUserCurrencyWallets
samples/cli/sample-apps Platform queryUserCurrencyWallets \
    --namespace $AB_NAMESPACE \
    --userId 'CUFWrKyliCEgZ66h' \
    > test.out 2>&1
eval_tap $? 255 'QueryUserCurrencyWallets' test.out

#- 256 DebitUserWalletByCurrencyCode
samples/cli/sample-apps Platform debitUserWalletByCurrencyCode \
    --currencyCode '5Nc6caA735N8DzMw' \
    --namespace $AB_NAMESPACE \
    --userId 'Ly9Ma4e3jeHfzMl3' \
    --body '{"allowOverdraft": false, "amount": 27, "balanceOrigin": "Other", "reason": "LwCb8wxRxRN2IIYx"}' \
    > test.out 2>&1
eval_tap $? 256 'DebitUserWalletByCurrencyCode' test.out

#- 257 ListUserCurrencyTransactions
samples/cli/sample-apps Platform listUserCurrencyTransactions \
    --currencyCode 'f82jwipsYDIPIuaH' \
    --namespace $AB_NAMESPACE \
    --userId 'Dx1mJr098wGlHa73' \
    --limit '5' \
    --offset '52' \
    > test.out 2>&1
eval_tap $? 257 'ListUserCurrencyTransactions' test.out

#- 258 CheckWallet
eval_tap 0 258 'CheckWallet # SKIP deprecated' test.out

#- 259 CreditUserWallet
samples/cli/sample-apps Platform creditUserWallet \
    --currencyCode '54Yx1Eo9jxemzh5Z' \
    --namespace $AB_NAMESPACE \
    --userId 'EsnyeCwGxFa1jL8Q' \
    --body '{"amount": 69, "expireAt": "1985-06-10T00:00:00Z", "origin": "Twitch", "reason": "afDEkHLXQ6Yyq4X1", "source": "DLC"}' \
    > test.out 2>&1
eval_tap $? 259 'CreditUserWallet' test.out

#- 260 PayWithUserWallet
samples/cli/sample-apps Platform payWithUserWallet \
    --currencyCode '22LX1Lz480Fc6FEw' \
    --namespace $AB_NAMESPACE \
    --userId 'aXkJjWpphVy51jfe' \
    --body '{"amount": 66, "walletPlatform": "Playstation"}' \
    > test.out 2>&1
eval_tap $? 260 'PayWithUserWallet' test.out

#- 261 GetUserWallet
eval_tap 0 261 'GetUserWallet # SKIP deprecated' test.out

#- 262 DebitUserWallet
eval_tap 0 262 'DebitUserWallet # SKIP deprecated' test.out

#- 263 DisableUserWallet
eval_tap 0 263 'DisableUserWallet # SKIP deprecated' test.out

#- 264 EnableUserWallet
eval_tap 0 264 'EnableUserWallet # SKIP deprecated' test.out

#- 265 ListUserWalletTransactions
eval_tap 0 265 'ListUserWalletTransactions # SKIP deprecated' test.out

#- 266 ListViews
samples/cli/sample-apps Platform listViews \
    --namespace $AB_NAMESPACE \
    --storeId '7xJ2zOqwfRGSQw4C' \
    > test.out 2>&1
eval_tap $? 266 'ListViews' test.out

#- 267 CreateView
samples/cli/sample-apps Platform createView \
    --namespace $AB_NAMESPACE \
    --storeId 'bPaCneTF96SMYZmJ' \
    --body '{"displayOrder": 37, "localizations": {"2g2KpWBKFx7mTQrT": {"description": "JVZ9Y8jNgiYkNgKi", "localExt": {"JnrZy6eP1847qUga": {}, "Kks560vOoNkl7Sqs": {}, "TRe8CFJkrXq7jBSA": {}}, "longDescription": "Gnly6NOJq9fFMXVH", "title": "0fKIPlgdLXLXidPy"}, "uJc7DG1Q1ssdG1wY": {"description": "b1YuoaEATPMgt5Jp", "localExt": {"6q7oIavNGbjtV5vJ": {}, "Zj2jBnhDoG46q6qO": {}, "CZEUlHicQgFyk65r": {}}, "longDescription": "9Otvp0LAGv69tEQj", "title": "E0n26wiSzY0AZjC9"}, "zdIUHgd24vsVkumz": {"description": "zSIid2q2pmO9udJI", "localExt": {"Qx935r3dtKAykT0F": {}, "WCJgmH9dZItX53Tt": {}, "M68VRxXAm8WRR4db": {}}, "longDescription": "XUlVXmNQaLXMSQFd", "title": "DIQocrwWTWPoP4gH"}}, "name": "XeP86yQLpuubml7V"}' \
    > test.out 2>&1
eval_tap $? 267 'CreateView' test.out

#- 268 GetView
samples/cli/sample-apps Platform getView \
    --namespace $AB_NAMESPACE \
    --viewId 'on6GOkdLmQETJFd8' \
    --storeId 'KpFyUfve4dnr1r8g' \
    > test.out 2>&1
eval_tap $? 268 'GetView' test.out

#- 269 UpdateView
samples/cli/sample-apps Platform updateView \
    --namespace $AB_NAMESPACE \
    --viewId 'bxU0Sc1X88b8hOX1' \
    --storeId 'dkFVmVlb5sLc3wLe' \
    --body '{"displayOrder": 60, "localizations": {"bq0loR4lIugQrimY": {"description": "t0ew3ZvJTZOS22L5", "localExt": {"ceToqImKJNbuqGPh": {}, "GxCKjHYuCsJu8xax": {}, "SesMf9lj12uOC6S7": {}}, "longDescription": "6SCjFuYVHz3sKmGy", "title": "GLUBL2GGYmDuu2iA"}, "RKb5O9F4tsjKTiGj": {"description": "X2fzikt22ZCPbCiz", "localExt": {"2nwUOn4Sm0ODnSWY": {}, "KJttFoxOiGSeUAEK": {}, "8DSniolfh5yTwdRn": {}}, "longDescription": "lbTAs50m54EksB1T", "title": "LmUTxPyMPqlpVXLm"}, "j3TVjvFzHWkuqVl1": {"description": "QmRB6jtHSBwCkg6i", "localExt": {"liLNI1Z9W00L4JCs": {}, "AreuDr1AlPt9f314": {}, "qUIpWefHfztwBNdI": {}}, "longDescription": "89nZ9tevEXJ6EgFA", "title": "GGzi23N7ZhpgG4gF"}}, "name": "eJnA0AHVeS6TMy2a"}' \
    > test.out 2>&1
eval_tap $? 269 'UpdateView' test.out

#- 270 DeleteView
samples/cli/sample-apps Platform deleteView \
    --namespace $AB_NAMESPACE \
    --viewId '7LYJmTFah7InzPhJ' \
    --storeId 'GnjuY3xsHfwUhAqZ' \
    > test.out 2>&1
eval_tap $? 270 'DeleteView' test.out

#- 271 QueryWallets
eval_tap 0 271 'QueryWallets # SKIP deprecated' test.out

#- 272 BulkCredit
samples/cli/sample-apps Platform bulkCredit \
    --namespace $AB_NAMESPACE \
    --body '[{"creditRequest": {"amount": 11, "expireAt": "1982-12-12T00:00:00Z", "origin": "Steam", "reason": "lTFO0yDjmxRGhVka", "source": "REDEEM_CODE"}, "currencyCode": "lzuBLAfCq7paHilc", "userIds": ["1gFHDNsgvL8KaTpZ", "MpJVNDBEKqUc1Y5g", "1c1rpjnhADO7rlUt"]}, {"creditRequest": {"amount": 89, "expireAt": "1976-09-17T00:00:00Z", "origin": "IOS", "reason": "KZKA4SqjFDs89yaV", "source": "REFUND"}, "currencyCode": "DzqoCEzRUhZCByHZ", "userIds": ["SmJ98DEIm084glH4", "ZxmCzuDAo1uWZt1X", "UlGi8DixJ1RKM6cc"]}, {"creditRequest": {"amount": 55, "expireAt": "1985-10-08T00:00:00Z", "origin": "Twitch", "reason": "cjIDGkXHpQKBouox", "source": "IAP"}, "currencyCode": "XvEsHJHKjpnbEkgm", "userIds": ["T4VtunNbzDWmarDh", "UVgQnxAMfLDMPPY2", "jUjLC79PcOMTvkJ7"]}]' \
    > test.out 2>&1
eval_tap $? 272 'BulkCredit' test.out

#- 273 BulkDebit
samples/cli/sample-apps Platform bulkDebit \
    --namespace $AB_NAMESPACE \
    --body '[{"currencyCode": "ZAURUK7znKzHpJ4j", "request": {"allowOverdraft": true, "amount": 34, "balanceOrigin": "Twitch", "reason": "8I7oLgOwhW0rxrWV"}, "userIds": ["QUMvB9XrpvriSawV", "0RMNz2gwaULWU2Ll", "Xar2gDnph205lLC1"]}, {"currencyCode": "Ko5KtfEBmAzbIoEq", "request": {"allowOverdraft": true, "amount": 87, "balanceOrigin": "IOS", "reason": "NXy8oWdkxmDLGNZn"}, "userIds": ["RemAbdM2kLKNiTuU", "XQwNCU4qOWbDicoZ", "Rw9F5Vss3mQoD5Xc"]}, {"currencyCode": "beUuTwj62aGxWa9O", "request": {"allowOverdraft": false, "amount": 2, "balanceOrigin": "Nintendo", "reason": "NawxY9gUYnR6PLxt"}, "userIds": ["VP7Tio8ZVjPKXWF2", "rztd3KyvZyES203C", "GsTncQJpkGKpq2no"]}]' \
    > test.out 2>&1
eval_tap $? 273 'BulkDebit' test.out

#- 274 GetWallet
eval_tap 0 274 'GetWallet # SKIP deprecated' test.out

#- 275 SyncOrders
samples/cli/sample-apps Platform syncOrders \
    --nextEvaluatedKey '9qO9651SHk9CgoD9' \
    --end '0Oj9Ugqcm62W5s2C' \
    --start 'qrvppR27kUanofSN' \
    > test.out 2>&1
eval_tap $? 275 'SyncOrders' test.out

#- 276 TestAdyenConfig
samples/cli/sample-apps Platform testAdyenConfig \
    --sandbox 'false' \
    --body '{"allowedPaymentMethods": ["Q2H89O0sYkJTtjZP", "7dfBD6VvavvrzGSR", "XILpZtqeZM6Btttj"], "apiKey": "xQPuxAtrcpR08pwO", "authoriseAsCapture": false, "blockedPaymentMethods": ["mqSPexm7imkaUuQP", "7xGGhxStHvW9sLfl", "XRtDrBl3eaRK9ULp"], "clientKey": "Qo5SVclFX82klqP1", "dropInSettings": "CSqhJRC8W3ysprBZ", "liveEndpointUrlPrefix": "aHls30dLU5Xi2kHV", "merchantAccount": "kqT2dTum7pfEv77f", "notificationHmacKey": "PSFIoYo4Bq3X9Unh", "notificationPassword": "4Chcetb10k8KTh9m", "notificationUsername": "j97UPngwm9ivZ8DR", "returnUrl": "hXHDJutPiXLNTPyn", "settings": "5ZZragUXKlFinjha"}' \
    > test.out 2>&1
eval_tap $? 276 'TestAdyenConfig' test.out

#- 277 TestAliPayConfig
samples/cli/sample-apps Platform testAliPayConfig \
    --sandbox 'true' \
    --body '{"appId": "0KRyWae4mzkPzWNX", "privateKey": "bgUSC9HpGiRBtlFW", "publicKey": "WKX1yfdXtOtUQeiy", "returnUrl": "Ts2BGvEjOthZLPhA"}' \
    > test.out 2>&1
eval_tap $? 277 'TestAliPayConfig' test.out

#- 278 TestCheckoutConfig
samples/cli/sample-apps Platform testCheckoutConfig \
    --sandbox 'true' \
    --body '{"publicKey": "viVseTrDeBfl9UKG", "secretKey": "tz81LJoIR6sX0T2N"}' \
    > test.out 2>&1
eval_tap $? 278 'TestCheckoutConfig' test.out

#- 279 DebugMatchedPaymentMerchantConfig
samples/cli/sample-apps Platform debugMatchedPaymentMerchantConfig \
    --namespace 'wTFXaXSI1fRezcxd' \
    --region 'sSNCgUPIbimphTrL' \
    > test.out 2>&1
eval_tap $? 279 'DebugMatchedPaymentMerchantConfig' test.out

#- 280 TestPayPalConfig
samples/cli/sample-apps Platform testPayPalConfig \
    --sandbox 'true' \
    --body '{"clientID": "rfuiBddav5uEBG0g", "clientSecret": "ng1lKlmt4UY7TDzG", "returnUrl": "9SedlyIdfgy6k3QN", "webHookId": "eNCdTbphmSMr8lzO"}' \
    > test.out 2>&1
eval_tap $? 280 'TestPayPalConfig' test.out

#- 281 TestStripeConfig
samples/cli/sample-apps Platform testStripeConfig \
    --sandbox 'true' \
    --body '{"allowedPaymentMethodTypes": ["Mcx6aI69YZU6uHxx", "b41ZAHTDKf6PBjqX", "umnMyWJoGE3EKDv3"], "publishableKey": "kpGCYKHvx5d5QwMg", "secretKey": "eDGlHGIKQDySQBXD", "webhookSecret": "00k18aevbTb6M1OB"}' \
    > test.out 2>&1
eval_tap $? 281 'TestStripeConfig' test.out

#- 282 TestWxPayConfig
samples/cli/sample-apps Platform testWxPayConfig \
    --body '{"appId": "R0nu7qkD1CGhXG84", "key": "cGu7uALppJPgrhgN", "mchid": "8RMBKTZ9FblcR8is", "returnUrl": "BS5QKaNL5krWUomB"}' \
    > test.out 2>&1
eval_tap $? 282 'TestWxPayConfig' test.out

#- 283 TestXsollaConfig
samples/cli/sample-apps Platform testXsollaConfig \
    --body '{"apiKey": "AzarfAtDwElsXUN4", "flowCompletionUrl": "lnUmEFzwKxGDNart", "merchantId": 4, "projectId": 44, "projectSecretKey": "hVTs4bCvuIapMs1e"}' \
    > test.out 2>&1
eval_tap $? 283 'TestXsollaConfig' test.out

#- 284 GetPaymentMerchantConfig
samples/cli/sample-apps Platform getPaymentMerchantConfig \
    --id '7rsOTMoT30rENLB2' \
    > test.out 2>&1
eval_tap $? 284 'GetPaymentMerchantConfig' test.out

#- 285 UpdateAdyenConfig
samples/cli/sample-apps Platform updateAdyenConfig \
    --id 'gb8yxxK8InmqmS3g' \
    --sandbox 'true' \
    --validate 'true' \
    --body '{"allowedPaymentMethods": ["ZTI9sLlDhsE6wxa1", "0S11saJNWYSebvhy", "7ewkAdV8de4SyUSP"], "apiKey": "iauOwgO1fb2rO4SM", "authoriseAsCapture": true, "blockedPaymentMethods": ["5GIEqa37BJlDecjp", "tjW94w4Is0tEmzWy", "pWMvfjUDkg9EBxtL"], "clientKey": "NTUTUfnybyt4zdrc", "dropInSettings": "GI3OpeiJmw89lz6D", "liveEndpointUrlPrefix": "4WcXTgWVS1Rvthq9", "merchantAccount": "rCjp3QIW7WaZb364", "notificationHmacKey": "yksQezNqIrCPqIcT", "notificationPassword": "6PRUSzeMQ73foz4b", "notificationUsername": "6owXdG2MSyFCPply", "returnUrl": "4BkJb0tFWCLLFXR7", "settings": "SzcERmvt0LuQp204"}' \
    > test.out 2>&1
eval_tap $? 285 'UpdateAdyenConfig' test.out

#- 286 TestAdyenConfigById
samples/cli/sample-apps Platform testAdyenConfigById \
    --id 'o8r7kbuCttdx0ynh' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 286 'TestAdyenConfigById' test.out

#- 287 UpdateAliPayConfig
samples/cli/sample-apps Platform updateAliPayConfig \
    --id 'CHyzUML9b0zmGe7o' \
    --sandbox 'true' \
    --validate 'false' \
    --body '{"appId": "FNtiDNDQvNS5AwiF", "privateKey": "O7P2oUIj9B9bu6RP", "publicKey": "rDGseul2Zpa16TsU", "returnUrl": "a4YJ4qDda037V1b1"}' \
    > test.out 2>&1
eval_tap $? 287 'UpdateAliPayConfig' test.out

#- 288 TestAliPayConfigById
samples/cli/sample-apps Platform testAliPayConfigById \
    --id 'JxXOUmjAGsNLqpkP' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 288 'TestAliPayConfigById' test.out

#- 289 UpdateCheckoutConfig
samples/cli/sample-apps Platform updateCheckoutConfig \
    --id 'jNluY0VT9sTulTPO' \
    --sandbox 'true' \
    --validate 'false' \
    --body '{"publicKey": "syYdsQW8DIXyPde2", "secretKey": "yWNQkXch36trxDBB"}' \
    > test.out 2>&1
eval_tap $? 289 'UpdateCheckoutConfig' test.out

#- 290 TestCheckoutConfigById
samples/cli/sample-apps Platform testCheckoutConfigById \
    --id 'pYxxIEqzNarvqNoi' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 290 'TestCheckoutConfigById' test.out

#- 291 UpdatePayPalConfig
samples/cli/sample-apps Platform updatePayPalConfig \
    --id 'MdKsTEbMY93R6bGO' \
    --sandbox 'true' \
    --validate 'true' \
    --body '{"clientID": "OB5tX4KylbhiHkWH", "clientSecret": "bU65znQSapYu2KoV", "returnUrl": "H2UNsoezzeYkcuOR", "webHookId": "Topw8JVWgDDHEx6x"}' \
    > test.out 2>&1
eval_tap $? 291 'UpdatePayPalConfig' test.out

#- 292 TestPayPalConfigById
samples/cli/sample-apps Platform testPayPalConfigById \
    --id 'pbqmy6FcMNkYI1aJ' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 292 'TestPayPalConfigById' test.out

#- 293 UpdateStripeConfig
samples/cli/sample-apps Platform updateStripeConfig \
    --id 'lLLHk5F3LNePP39k' \
    --sandbox 'false' \
    --validate 'true' \
    --body '{"allowedPaymentMethodTypes": ["zhPIqYVJsMXDaoog", "JyQm3ISFwE3j9xAh", "1SWuyA83ohTvgyAc"], "publishableKey": "pcW3D1GcxWxehVD2", "secretKey": "YRjcvgspJx9r6YTO", "webhookSecret": "wkUTKieYJQ1MQSqE"}' \
    > test.out 2>&1
eval_tap $? 293 'UpdateStripeConfig' test.out

#- 294 TestStripeConfigById
samples/cli/sample-apps Platform testStripeConfigById \
    --id 'qj4MkyQLqFKNI0oa' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 294 'TestStripeConfigById' test.out

#- 295 UpdateWxPayConfig
samples/cli/sample-apps Platform updateWxPayConfig \
    --id 'wJcIK4WJfaMh1sYc' \
    --validate 'true' \
    --body '{"appId": "9K3gwB9lmqt7n1Jg", "key": "TkBbPPwzXh9e63Qy", "mchid": "gfB5xnRyRURN2RDs", "returnUrl": "Yw97ZNTiVq7muvEQ"}' \
    > test.out 2>&1
eval_tap $? 295 'UpdateWxPayConfig' test.out

#- 296 UpdateWxPayConfigCert
samples/cli/sample-apps Platform updateWxPayConfigCert \
    --id 'CUmcizBHllysp1Zv' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 296 'UpdateWxPayConfigCert' test.out

#- 297 TestWxPayConfigById
samples/cli/sample-apps Platform testWxPayConfigById \
    --id 'tlGSAkWWvhLdcglt' \
    > test.out 2>&1
eval_tap $? 297 'TestWxPayConfigById' test.out

#- 298 UpdateXsollaConfig
samples/cli/sample-apps Platform updateXsollaConfig \
    --id 'bIfDcWNl22VcQGt7' \
    --validate 'true' \
    --body '{"apiKey": "s8GdSHCHr7mNL3vV", "flowCompletionUrl": "uhUaHG6dEWE6v1Re", "merchantId": 59, "projectId": 90, "projectSecretKey": "dS2LSLPlu4psNqYo"}' \
    > test.out 2>&1
eval_tap $? 298 'UpdateXsollaConfig' test.out

#- 299 TestXsollaConfigById
samples/cli/sample-apps Platform testXsollaConfigById \
    --id '7M2bU9CtFEKCcmHw' \
    > test.out 2>&1
eval_tap $? 299 'TestXsollaConfigById' test.out

#- 300 UpdateXsollaUIConfig
samples/cli/sample-apps Platform updateXsollaUIConfig \
    --id 'i8YyffZ4S5VqAkoM' \
    --body '{"device": "MOBILE", "showCloseButton": true, "size": "SMALL", "theme": "DEFAULT"}' \
    > test.out 2>&1
eval_tap $? 300 'UpdateXsollaUIConfig' test.out

#- 301 QueryPaymentProviderConfig
samples/cli/sample-apps Platform queryPaymentProviderConfig \
    --limit '75' \
    --namespace 'Zk6nXxoMm0vCG2c6' \
    --offset '41' \
    --region 'MNNrqFBKJ6mMsKdW' \
    > test.out 2>&1
eval_tap $? 301 'QueryPaymentProviderConfig' test.out

#- 302 CreatePaymentProviderConfig
samples/cli/sample-apps Platform createPaymentProviderConfig \
    --body '{"aggregate": "XSOLLA", "namespace": "3Vf3baY3ABI5fKD0", "region": "V0DXva09KkQXsMv4", "sandboxTaxJarApiToken": "BYxDrQUCigfb3sa4", "specials": ["CHECKOUT", "CHECKOUT", "ADYEN"], "taxJarApiToken": "FgJZHFwrcRv5No82", "taxJarEnabled": true, "useGlobalTaxJarApiToken": true}' \
    > test.out 2>&1
eval_tap $? 302 'CreatePaymentProviderConfig' test.out

#- 303 GetAggregatePaymentProviders
samples/cli/sample-apps Platform getAggregatePaymentProviders \
    > test.out 2>&1
eval_tap $? 303 'GetAggregatePaymentProviders' test.out

#- 304 DebugMatchedPaymentProviderConfig
samples/cli/sample-apps Platform debugMatchedPaymentProviderConfig \
    --namespace 'NJMZbJ60RQR4QJDJ' \
    --region 'fbmkAo3YQRl4FLhm' \
    > test.out 2>&1
eval_tap $? 304 'DebugMatchedPaymentProviderConfig' test.out

#- 305 GetSpecialPaymentProviders
samples/cli/sample-apps Platform getSpecialPaymentProviders \
    > test.out 2>&1
eval_tap $? 305 'GetSpecialPaymentProviders' test.out

#- 306 UpdatePaymentProviderConfig
samples/cli/sample-apps Platform updatePaymentProviderConfig \
    --id '3PrqPvDq3oTtLGqz' \
    --body '{"aggregate": "ADYEN", "namespace": "ZAy2LY1b52d86hIk", "region": "znhfUiTfstYyBAhw", "sandboxTaxJarApiToken": "nADLJ03c8o1gKZIb", "specials": ["STRIPE", "CHECKOUT", "STRIPE"], "taxJarApiToken": "Wiu9oY6LeOpgGRgY", "taxJarEnabled": false, "useGlobalTaxJarApiToken": false}' \
    > test.out 2>&1
eval_tap $? 306 'UpdatePaymentProviderConfig' test.out

#- 307 DeletePaymentProviderConfig
samples/cli/sample-apps Platform deletePaymentProviderConfig \
    --id 'o9bTBDDVVhdh90k1' \
    > test.out 2>&1
eval_tap $? 307 'DeletePaymentProviderConfig' test.out

#- 308 GetPaymentTaxConfig
samples/cli/sample-apps Platform getPaymentTaxConfig \
    > test.out 2>&1
eval_tap $? 308 'GetPaymentTaxConfig' test.out

#- 309 UpdatePaymentTaxConfig
samples/cli/sample-apps Platform updatePaymentTaxConfig \
    --body '{"sandboxTaxJarApiToken": "kPt3wpDX86UoOP9U", "taxJarApiToken": "xyPd9xcutjWtHWRQ", "taxJarEnabled": false, "taxJarProductCodesMapping": {"bD4Nif8RePbIvksT": "QukcMJzs6pBF6fR8", "r235cPcsHJiaJZ1E": "ntvj0DDXOTOxmApL", "ORpnmeUO4FVd70hI": "JK671W2NzhHmfqp9"}}' \
    > test.out 2>&1
eval_tap $? 309 'UpdatePaymentTaxConfig' test.out

#- 310 SyncPaymentOrders
samples/cli/sample-apps Platform syncPaymentOrders \
    --nextEvaluatedKey 'KHfrESO0kjgwgCmW' \
    --end 'CmTbdVetDwFNb6UL' \
    --start 'kiDrXqgN7q9NfqMY' \
    > test.out 2>&1
eval_tap $? 310 'SyncPaymentOrders' test.out

#- 311 PublicGetRootCategories
samples/cli/sample-apps Platform publicGetRootCategories \
    --namespace $AB_NAMESPACE \
    --language 'BzcqjvKKUQ5gBc1H' \
    --storeId '4P8CSF0EcESj7A6K' \
    > test.out 2>&1
eval_tap $? 311 'PublicGetRootCategories' test.out

#- 312 DownloadCategories
samples/cli/sample-apps Platform downloadCategories \
    --namespace $AB_NAMESPACE \
    --language '9vse7vQTfjVBlITr' \
    --storeId 'ViBFptMVJHHvZ4m7' \
    > test.out 2>&1
eval_tap $? 312 'DownloadCategories' test.out

#- 313 PublicGetCategory
samples/cli/sample-apps Platform publicGetCategory \
    --categoryPath 'dPmoknoMeED8U5Qn' \
    --namespace $AB_NAMESPACE \
    --language 'wQzRcFbJhOnENoFG' \
    --storeId 'FU5olzp6nfMJ2sYe' \
    > test.out 2>&1
eval_tap $? 313 'PublicGetCategory' test.out

#- 314 PublicGetChildCategories
samples/cli/sample-apps Platform publicGetChildCategories \
    --categoryPath '4mkBr83SH1zsXJ3P' \
    --namespace $AB_NAMESPACE \
    --language 'CGKALIu7RrlvniSs' \
    --storeId 'ZQbSCKuiCJdwLnyj' \
    > test.out 2>&1
eval_tap $? 314 'PublicGetChildCategories' test.out

#- 315 PublicGetDescendantCategories
samples/cli/sample-apps Platform publicGetDescendantCategories \
    --categoryPath '1jodM34ijx0CfsxO' \
    --namespace $AB_NAMESPACE \
    --language 'Mq82IrnQ8gtNG2Qn' \
    --storeId 'QvizCKEkRfrdEr8b' \
    > test.out 2>&1
eval_tap $? 315 'PublicGetDescendantCategories' test.out

#- 316 PublicListCurrencies
samples/cli/sample-apps Platform publicListCurrencies \
    --namespace $AB_NAMESPACE \
    --currencyType 'VIRTUAL' \
    > test.out 2>&1
eval_tap $? 316 'PublicListCurrencies' test.out

#- 317 GetIAPItemMapping
samples/cli/sample-apps Platform getIAPItemMapping \
    --namespace $AB_NAMESPACE \
    --platform 'PLAYSTATION' \
    > test.out 2>&1
eval_tap $? 317 'GetIAPItemMapping' test.out

#- 318 PublicGetItemByAppId
samples/cli/sample-apps Platform publicGetItemByAppId \
    --namespace $AB_NAMESPACE \
    --language 'k1kjeHkvoCo834k6' \
    --region '3OwDtOm040Ub1UAQ' \
    --storeId 'vA6f5alO2vlCYqnf' \
    --appId 'DmPOT2Xd3gk2nKW6' \
    > test.out 2>&1
eval_tap $? 318 'PublicGetItemByAppId' test.out

#- 319 PublicQueryItems
samples/cli/sample-apps Platform publicQueryItems \
    --namespace $AB_NAMESPACE \
    --appType 'DLC' \
    --baseAppId 'ktW3uB7RkWASn5oZ' \
    --categoryPath 'hpDCf4D73WOh1H6u' \
    --features 'BRwVo1f4mrmkMdn3' \
    --includeSubCategoryItem 'false' \
    --itemType 'SEASON' \
    --language 'xMM3u9Kz6ZzlEHu3' \
    --limit '77' \
    --offset '64' \
    --region 'b86UV3VWk13sFaGs' \
    --sortBy '["name:asc", "updatedAt:asc", "updatedAt"]' \
    --storeId 'Ctda5hYFN9K10pdL' \
    --tags 'fH5tOJKn1D9ITZhN' \
    > test.out 2>&1
eval_tap $? 319 'PublicQueryItems' test.out

#- 320 PublicGetItemBySku
samples/cli/sample-apps Platform publicGetItemBySku \
    --namespace $AB_NAMESPACE \
    --language 'aHBBTU4wAQG4cNDY' \
    --region 'kZkNZgPBSZpu6K6m' \
    --storeId 'X4jRA5DpbfNEviEP' \
    --sku 'ZRJLvWuv1M6O733t' \
    > test.out 2>&1
eval_tap $? 320 'PublicGetItemBySku' test.out

#- 321 PublicBulkGetItems
samples/cli/sample-apps Platform publicBulkGetItems \
    --namespace $AB_NAMESPACE \
    --language 'Hgd9gMZQ4LjUeYE5' \
    --region '7XPCrXjSniZSc81I' \
    --storeId 'E6kXpFrxVhmo8p5b' \
    --itemIds 'WJlmu9OSEXCHk0Qg' \
    > test.out 2>&1
eval_tap $? 321 'PublicBulkGetItems' test.out

#- 322 PublicValidateItemPurchaseCondition
samples/cli/sample-apps Platform publicValidateItemPurchaseCondition \
    --namespace $AB_NAMESPACE \
    --body '{"itemIds": ["AImXggvwG5ZNNTSx", "O0Tdn24hJUnsdlcY", "rEFiPUUYeR0LSHPV"]}' \
    > test.out 2>&1
eval_tap $? 322 'PublicValidateItemPurchaseCondition' test.out

#- 323 PublicSearchItems
samples/cli/sample-apps Platform publicSearchItems \
    --namespace $AB_NAMESPACE \
    --itemType 'SEASON' \
    --limit '60' \
    --offset '46' \
    --region 'pU1TPgZWssHO2PLP' \
    --storeId 'Rua7eazMYsxdVupS' \
    --keyword 'ji16mHbrTmy2eE3G' \
    --language '9jKOfnpDFEN2jzjC' \
    > test.out 2>&1
eval_tap $? 323 'PublicSearchItems' test.out

#- 324 PublicGetApp
samples/cli/sample-apps Platform publicGetApp \
    --itemId 'L79JCpOkzdTs7H7G' \
    --namespace $AB_NAMESPACE \
    --language 'qQrSbHp0DDfFKLra' \
    --region 'Yaqb3QUEIeFnKxvf' \
    --storeId 'yREhpcaCxRdvWGky' \
    > test.out 2>&1
eval_tap $? 324 'PublicGetApp' test.out

#- 325 PublicGetItemDynamicData
samples/cli/sample-apps Platform publicGetItemDynamicData \
    --itemId 'GC3BHYzYQRIZzP8u' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 325 'PublicGetItemDynamicData' test.out

#- 326 PublicGetItem
samples/cli/sample-apps Platform publicGetItem \
    --itemId 'eIF6eZkWXYLkUxJN' \
    --namespace $AB_NAMESPACE \
    --language 'lLjsmq3KKW5vQBea' \
    --populateBundle 'false' \
    --region 'eautTrqxROYUTXWs' \
    --storeId 'xdWQWZ8VAlkKoj1d' \
    > test.out 2>&1
eval_tap $? 326 'PublicGetItem' test.out

#- 327 GetPaymentCustomization
eval_tap 0 327 'GetPaymentCustomization # SKIP deprecated' test.out

#- 328 PublicGetPaymentUrl
samples/cli/sample-apps Platform publicGetPaymentUrl \
    --namespace $AB_NAMESPACE \
    --body '{"paymentOrderNo": "j8xex1qGhgJZ8Glv", "paymentProvider": "WXPAY", "returnUrl": "KcYcqmW3cztUh3yN", "ui": "xozLjWVphuoiwyA8", "zipCode": "OVjVzhn8lOjyEK7K"}' \
    > test.out 2>&1
eval_tap $? 328 'PublicGetPaymentUrl' test.out

#- 329 PublicGetPaymentMethods
samples/cli/sample-apps Platform publicGetPaymentMethods \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'fS2zTbNHoTU75mus' \
    > test.out 2>&1
eval_tap $? 329 'PublicGetPaymentMethods' test.out

#- 330 PublicGetUnpaidPaymentOrder
samples/cli/sample-apps Platform publicGetUnpaidPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'FxklGvfgAjs1uVEk' \
    > test.out 2>&1
eval_tap $? 330 'PublicGetUnpaidPaymentOrder' test.out

#- 331 Pay
samples/cli/sample-apps Platform pay \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'Z7cMHVPJ7nrh493Q' \
    --paymentProvider 'WXPAY' \
    --zipCode 'UzZ7Vpr1W3VDSRcS' \
    --body '{"token": "mVbYRMNcxirTRWi9"}' \
    > test.out 2>&1
eval_tap $? 331 'Pay' test.out

#- 332 PublicCheckPaymentOrderPaidStatus
samples/cli/sample-apps Platform publicCheckPaymentOrderPaidStatus \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'Bz3eZvkNcEviQQd7' \
    > test.out 2>&1
eval_tap $? 332 'PublicCheckPaymentOrderPaidStatus' test.out

#- 333 GetPaymentPublicConfig
samples/cli/sample-apps Platform getPaymentPublicConfig \
    --namespace $AB_NAMESPACE \
    --sandbox 'false' \
    --paymentProvider 'CHECKOUT' \
    --region 'qo87cK3wFtyiO5Pg' \
    > test.out 2>&1
eval_tap $? 333 'GetPaymentPublicConfig' test.out

#- 334 PublicGetQRCode
samples/cli/sample-apps Platform publicGetQRCode \
    --namespace $AB_NAMESPACE \
    --code 'bgwl2Fy0UvGMqmvW' \
    > test.out 2>&1
eval_tap $? 334 'PublicGetQRCode' test.out

#- 335 PublicNormalizePaymentReturnUrl
samples/cli/sample-apps Platform publicNormalizePaymentReturnUrl \
    --namespace $AB_NAMESPACE \
    --payerID 'QaXLoPTbQnjEZ0dz' \
    --foreinginvoice 'IHcZF1yqkSGoscBv' \
    --invoiceId 'rKSy5C5F1fDw8RfE' \
    --payload 'YeZT0mzKDQxd3UlS' \
    --redirectResult 'VqG35t3Gyu5O2LfO' \
    --resultCode 'pTO6OTsZ1tBAjWVW' \
    --sessionId 'L7u6jwZDjFLjOxzW' \
    --status 'oToV14f2HrFSTSHI' \
    --token 'mcGXfaElkJcIHG4V' \
    --type 'ItDfyOv746M4xCM2' \
    --userId 'KlVOcQdRT18lopp0' \
    --orderNo 'EOJDO3G521I8Nyzn' \
    --paymentOrderNo 'HyprzBioQRxVnFHl' \
    --paymentProvider 'WXPAY' \
    --returnUrl 'wjkIdtrnOtfxJ2iZ' \
    > test.out 2>&1
eval_tap $? 335 'PublicNormalizePaymentReturnUrl' test.out

#- 336 GetPaymentTaxValue
samples/cli/sample-apps Platform getPaymentTaxValue \
    --namespace $AB_NAMESPACE \
    --zipCode 'yNuHwTicfL24jx3M' \
    --paymentOrderNo 'vgv7HapiQoLeJQ9y' \
    --paymentProvider 'ADYEN' \
    > test.out 2>&1
eval_tap $? 336 'GetPaymentTaxValue' test.out

#- 337 GetRewardByCode
samples/cli/sample-apps Platform getRewardByCode \
    --namespace $AB_NAMESPACE \
    --rewardCode 'IeHIEvVNBVY0isvw' \
    > test.out 2>&1
eval_tap $? 337 'GetRewardByCode' test.out

#- 338 QueryRewards1
samples/cli/sample-apps Platform queryRewards1 \
    --namespace $AB_NAMESPACE \
    --eventTopic '9WEnqFqTATImcMcf' \
    --limit '31' \
    --offset '61' \
    --sortBy '["namespace:desc", "rewardCode"]' \
    > test.out 2>&1
eval_tap $? 338 'QueryRewards1' test.out

#- 339 GetReward1
samples/cli/sample-apps Platform getReward1 \
    --namespace $AB_NAMESPACE \
    --rewardId 'YQjWjLgR6d5HEP9a' \
    > test.out 2>&1
eval_tap $? 339 'GetReward1' test.out

#- 340 PublicListStores
samples/cli/sample-apps Platform publicListStores \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 340 'PublicListStores' test.out

#- 341 PublicExistsAnyMyActiveEntitlement
samples/cli/sample-apps Platform publicExistsAnyMyActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --appIds '["Daw6uOqSAV3SKqMn", "jmjpwCAYVWZStXph", "Ah13DdW6eoa4amyR"]' \
    --itemIds '["o4qOGSXwORaKWP5d", "fh9hWHEn2IyVLZcN", "fw0KcTi0xN7ZSziV"]' \
    --skus '["21l7RG0pH2f7jGOb", "aMhjXWMzU4CkON4i", "3biKK0GYen4fReE0"]' \
    > test.out 2>&1
eval_tap $? 341 'PublicExistsAnyMyActiveEntitlement' test.out

#- 342 PublicGetMyAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform publicGetMyAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --appId '9OH8Zk9mMrDOup40' \
    > test.out 2>&1
eval_tap $? 342 'PublicGetMyAppEntitlementOwnershipByAppId' test.out

#- 343 PublicGetMyEntitlementOwnershipByItemId
samples/cli/sample-apps Platform publicGetMyEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --entitlementClazz 'OPTIONBOX' \
    --itemId 'IVpeHyvsCvCYTXjV' \
    > test.out 2>&1
eval_tap $? 343 'PublicGetMyEntitlementOwnershipByItemId' test.out

#- 344 PublicGetMyEntitlementOwnershipBySku
samples/cli/sample-apps Platform publicGetMyEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --entitlementClazz 'APP' \
    --sku 'A4mG4MGZVWGSrVgA' \
    > test.out 2>&1
eval_tap $? 344 'PublicGetMyEntitlementOwnershipBySku' test.out

#- 345 PublicGetEntitlementOwnershipToken
samples/cli/sample-apps Platform publicGetEntitlementOwnershipToken \
    --namespace $AB_NAMESPACE \
    --appIds '["AaT7d3xdnJdcHt80", "YkjxiIQ96CgopMaJ", "YpO0S5NJITQWaT0t"]' \
    --itemIds '["IkOrFm7xjoVt2EWZ", "92kHpdGs14qrVHS3", "LVpb9C2XJ1rxO9mv"]' \
    --skus '["PfPfaKNDfX9n644P", "ERJBl66m1mPc1VQ3", "BuAK1CULfHAgcJYT"]' \
    > test.out 2>&1
eval_tap $? 345 'PublicGetEntitlementOwnershipToken' test.out

#- 346 SyncTwitchDropsEntitlement
samples/cli/sample-apps Platform syncTwitchDropsEntitlement \
    --namespace $AB_NAMESPACE \
    --body '{"gameId": "BAZYeGMrJI9b8KXC", "language": "RPLo-xXtL", "region": "7MBDYrke1GEjdf3f"}' \
    > test.out 2>&1
eval_tap $? 346 'SyncTwitchDropsEntitlement' test.out

#- 347 PublicGetMyWallet
samples/cli/sample-apps Platform publicGetMyWallet \
    --currencyCode 'Sl8p8MLtYUOOgXqu' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 347 'PublicGetMyWallet' test.out

#- 348 SyncEpicGameDLC
samples/cli/sample-apps Platform syncEpicGameDLC \
    --namespace $AB_NAMESPACE \
    --userId 'IrbJqtmb9tqqBcf7' \
    --body '{"epicGamesJwtToken": "PYIPUZW5xeC9h9aw"}' \
    > test.out 2>&1
eval_tap $? 348 'SyncEpicGameDLC' test.out

#- 349 PublicSyncPsnDlcInventory
samples/cli/sample-apps Platform publicSyncPsnDlcInventory \
    --namespace $AB_NAMESPACE \
    --userId 'w7AgzAbUsTYWHGfu' \
    --body '{"serviceLabel": 97}' \
    > test.out 2>&1
eval_tap $? 349 'PublicSyncPsnDlcInventory' test.out

#- 350 PublicSyncPsnDlcInventoryWithMultipleServiceLabels
samples/cli/sample-apps Platform publicSyncPsnDlcInventoryWithMultipleServiceLabels \
    --namespace $AB_NAMESPACE \
    --userId '8u0Uvvi4H2egb0Vn' \
    --body '{"serviceLabels": [9, 58, 35]}' \
    > test.out 2>&1
eval_tap $? 350 'PublicSyncPsnDlcInventoryWithMultipleServiceLabels' test.out

#- 351 SyncSteamDLC
samples/cli/sample-apps Platform syncSteamDLC \
    --namespace $AB_NAMESPACE \
    --userId '8BJAdtfLSBvluvWf' \
    --body '{"appId": "BrJ8RzhPoTWSUZL7", "steamId": "BhVEFMAArlID1tYO"}' \
    > test.out 2>&1
eval_tap $? 351 'SyncSteamDLC' test.out

#- 352 SyncXboxDLC
samples/cli/sample-apps Platform syncXboxDLC \
    --namespace $AB_NAMESPACE \
    --userId 'fv6skqNrWcMCuwPZ' \
    --body '{"xstsToken": "VpCyI4CbOx1RxVSK"}' \
    > test.out 2>&1
eval_tap $? 352 'SyncXboxDLC' test.out

#- 353 PublicQueryUserEntitlements
samples/cli/sample-apps Platform publicQueryUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'eb9OXg7G75ZvfXHm' \
    --appType 'DLC' \
    --entitlementClazz 'CODE' \
    --entitlementName 'ieY6MnSO5IM24Gcn' \
    --features '["LTV54nA2PwdY3Oy4", "ku9jBkuXL1lsbaOr", "xSajjK6rjGdoNbYf"]' \
    --itemId '["gBtXeF059YnLeS7X", "qysdmdtg3Pg009hg", "8luMv4JDhXyBAulv"]' \
    --limit '33' \
    --offset '9' \
    > test.out 2>&1
eval_tap $? 353 'PublicQueryUserEntitlements' test.out

#- 354 PublicGetUserAppEntitlementByAppId
samples/cli/sample-apps Platform publicGetUserAppEntitlementByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'QZeXPrpBW92pQTEl' \
    --appId '2y1WqYZ1aCqbaUkZ' \
    > test.out 2>&1
eval_tap $? 354 'PublicGetUserAppEntitlementByAppId' test.out

#- 355 PublicQueryUserEntitlementsByAppType
samples/cli/sample-apps Platform publicQueryUserEntitlementsByAppType \
    --namespace $AB_NAMESPACE \
    --userId 'YUjNVsDKHMb2oFEO' \
    --limit '7' \
    --offset '62' \
    --appType 'GAME' \
    > test.out 2>&1
eval_tap $? 355 'PublicQueryUserEntitlementsByAppType' test.out

#- 356 PublicGetUserEntitlementByItemId
samples/cli/sample-apps Platform publicGetUserEntitlementByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'rZxnr8jc751VwiMd' \
    --entitlementClazz 'ENTITLEMENT' \
    --itemId '7DpWGffxMhexEAkX' \
    > test.out 2>&1
eval_tap $? 356 'PublicGetUserEntitlementByItemId' test.out

#- 357 PublicGetUserEntitlementBySku
samples/cli/sample-apps Platform publicGetUserEntitlementBySku \
    --namespace $AB_NAMESPACE \
    --userId 'rQjJ9T9qGjwJAXa7' \
    --entitlementClazz 'ENTITLEMENT' \
    --sku 'wxggO9WO0y6eCW2H' \
    > test.out 2>&1
eval_tap $? 357 'PublicGetUserEntitlementBySku' test.out

#- 358 PublicExistsAnyUserActiveEntitlement
samples/cli/sample-apps Platform publicExistsAnyUserActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'tlY0dzZlfFJBYpQ1' \
    --appIds '["GEJcJeBjrwt7QCez", "ZnFJmo8dDTMXl5FM", "dLRhspBURsclx136"]' \
    --itemIds '["cHVzGZiktzfWHtps", "WAZgPg34wSIvt8Vt", "3rG8hpR8KGBMCoqB"]' \
    --skus '["vns0fiuHZDD0mqRY", "LfyQct1Wez2rhrwt", "nTWZwTOfp5TBvgIt"]' \
    > test.out 2>&1
eval_tap $? 358 'PublicExistsAnyUserActiveEntitlement' test.out

#- 359 PublicGetUserAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform publicGetUserAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --userId '2U2LEJXhfS3pcu00' \
    --appId '46bZ0FQEYBC07BlU' \
    > test.out 2>&1
eval_tap $? 359 'PublicGetUserAppEntitlementOwnershipByAppId' test.out

#- 360 PublicGetUserEntitlementOwnershipByItemId
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'WkQIdK2XjpuOAQCS' \
    --entitlementClazz 'APP' \
    --itemId 'eKgKv2Qja5SCG9qe' \
    > test.out 2>&1
eval_tap $? 360 'PublicGetUserEntitlementOwnershipByItemId' test.out

#- 361 PublicGetUserEntitlementOwnershipByItemIds
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'Xd4UmFOhu2V0lHqk' \
    --ids '["xZaRBMH5ciEskh8q", "EuPUsidn2sleI2Su", "DfLXMf2ztHBIHlli"]' \
    > test.out 2>&1
eval_tap $? 361 'PublicGetUserEntitlementOwnershipByItemIds' test.out

#- 362 PublicGetUserEntitlementOwnershipBySku
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --userId '7GStkVuFqHOJtE8P' \
    --entitlementClazz 'CODE' \
    --sku 'MQetB3xbIpO7hEYC' \
    > test.out 2>&1
eval_tap $? 362 'PublicGetUserEntitlementOwnershipBySku' test.out

#- 363 PublicGetUserEntitlement
samples/cli/sample-apps Platform publicGetUserEntitlement \
    --entitlementId 'QlxRHae0n53oWaHu' \
    --namespace $AB_NAMESPACE \
    --userId 'ka8ckP3UK97FZG2E' \
    > test.out 2>&1
eval_tap $? 363 'PublicGetUserEntitlement' test.out

#- 364 PublicConsumeUserEntitlement
samples/cli/sample-apps Platform publicConsumeUserEntitlement \
    --entitlementId 'eFpY4wUTT0eJo5Rn' \
    --namespace $AB_NAMESPACE \
    --userId 'SjL6mRNfFfSK9ezG' \
    --body '{"options": ["kzz6I84nWLTaScaZ", "Y5WuvmU1q0iTjriR", "fBMAHT2Sm6YAu46s"], "requestId": "oo2QfO1l3F275Gz6", "useCount": 45}' \
    > test.out 2>&1
eval_tap $? 364 'PublicConsumeUserEntitlement' test.out

#- 365 PublicSellUserEntitlement
samples/cli/sample-apps Platform publicSellUserEntitlement \
    --entitlementId 'LvqVf10fbe3gwOGK' \
    --namespace $AB_NAMESPACE \
    --userId '5Cc5t2eK5Q3qQ3LF' \
    --body '{"requestId": "X90rnhpaZZjst81W", "useCount": 6}' \
    > test.out 2>&1
eval_tap $? 365 'PublicSellUserEntitlement' test.out

#- 366 PublicRedeemCode
samples/cli/sample-apps Platform publicRedeemCode \
    --namespace $AB_NAMESPACE \
    --userId '5rMvTD8qRXH2kSzN' \
    --body '{"code": "awncNoIO3I0TvofH", "language": "ad-NgjX", "region": "X5KPFOsFHSQRG1Lb"}' \
    > test.out 2>&1
eval_tap $? 366 'PublicRedeemCode' test.out

#- 367 PublicFulfillAppleIAPItem
samples/cli/sample-apps Platform publicFulfillAppleIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'SNkEP3Z56TYzqsPd' \
    --body '{"excludeOldTransactions": false, "language": "uQRC", "productId": "osByPdscLKhkeqlf", "receiptData": "IMRVmf2wEbvvtyCU", "region": "Ypa5wrAskrmyAYe6", "transactionId": "izik1uigevkjJIBv"}' \
    > test.out 2>&1
eval_tap $? 367 'PublicFulfillAppleIAPItem' test.out

#- 368 SyncEpicGamesInventory
samples/cli/sample-apps Platform syncEpicGamesInventory \
    --namespace $AB_NAMESPACE \
    --userId 'djCYx0royBHJKjOr' \
    --body '{"epicGamesJwtToken": "k0OaDYdZYVqgRL0i"}' \
    > test.out 2>&1
eval_tap $? 368 'SyncEpicGamesInventory' test.out

#- 369 PublicFulfillGoogleIAPItem
samples/cli/sample-apps Platform publicFulfillGoogleIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'VollWlYo7Q99vwOS' \
    --body '{"autoAck": true, "language": "GMpy_zxVf", "orderId": "dlWbYDGIvuGpV72e", "packageName": "5CIHXRK88p0j547l", "productId": "KNVe1Gchsgv6OAZ4", "purchaseTime": 12, "purchaseToken": "oS3SdooiyHEwiBYZ", "region": "8y0V84plUOVpYS1K"}' \
    > test.out 2>&1
eval_tap $? 369 'PublicFulfillGoogleIAPItem' test.out

#- 370 PublicReconcilePlayStationStore
samples/cli/sample-apps Platform publicReconcilePlayStationStore \
    --namespace $AB_NAMESPACE \
    --userId 'zFAAkzit2jk5eI7w' \
    --body '{"currencyCode": "GysdAITT6LGDZtfr", "price": 0.11538250735831479, "productId": "OG7mmVgagVnzy2bE", "serviceLabel": 23}' \
    > test.out 2>&1
eval_tap $? 370 'PublicReconcilePlayStationStore' test.out

#- 371 PublicReconcilePlayStationStoreWithMultipleServiceLabels
samples/cli/sample-apps Platform publicReconcilePlayStationStoreWithMultipleServiceLabels \
    --namespace $AB_NAMESPACE \
    --userId 'JiPuFXDpw7jkZTDG' \
    --body '{"currencyCode": "y7mxHTrSsOul5kjX", "price": 0.06621246402239045, "productId": "37dSFXBa1BKNhr35", "serviceLabels": [42, 76, 87]}' \
    > test.out 2>&1
eval_tap $? 371 'PublicReconcilePlayStationStoreWithMultipleServiceLabels' test.out

#- 372 SyncSteamInventory
samples/cli/sample-apps Platform syncSteamInventory \
    --namespace $AB_NAMESPACE \
    --userId 'BulJWuL6dDlmJzwc' \
    --body '{"appId": "pc0tKaVUY0xIe0Xd", "currencyCode": "CBa1KwjbcYHrLhau", "language": "Wr_ps", "price": 0.2743109565880337, "productId": "8vexKt1dkh2mgJ57", "region": "IAmy9P4JukJaMmlQ", "steamId": "WaCsjV8QgzocmgTV"}' \
    > test.out 2>&1
eval_tap $? 372 'SyncSteamInventory' test.out

#- 373 SyncTwitchDropsEntitlement1
samples/cli/sample-apps Platform syncTwitchDropsEntitlement1 \
    --namespace $AB_NAMESPACE \
    --userId 'gdEaqyXNXZo8nIIr' \
    --body '{"gameId": "UBfgOEhGhrszxisc", "language": "yt_403", "region": "BnzKMSRxIw04gyGo"}' \
    > test.out 2>&1
eval_tap $? 373 'SyncTwitchDropsEntitlement1' test.out

#- 374 SyncXboxInventory
samples/cli/sample-apps Platform syncXboxInventory \
    --namespace $AB_NAMESPACE \
    --userId 'aVNu6liEWPbqODmp' \
    --body '{"currencyCode": "ybnXZJmakt3jzYln", "price": 0.7025499356948366, "productId": "NP8fbIv68CTssyvc", "xstsToken": "FZq8aki5XUZ83OyO"}' \
    > test.out 2>&1
eval_tap $? 374 'SyncXboxInventory' test.out

#- 375 PublicQueryUserOrders
samples/cli/sample-apps Platform publicQueryUserOrders \
    --namespace $AB_NAMESPACE \
    --userId 'qJds9Zc4oc11CU9o' \
    --itemId 'aq8jouPJ17jBlhfy' \
    --limit '48' \
    --offset '41' \
    --status 'FULFILLED' \
    > test.out 2>&1
eval_tap $? 375 'PublicQueryUserOrders' test.out

#- 376 PublicCreateUserOrder
samples/cli/sample-apps Platform publicCreateUserOrder \
    --namespace $AB_NAMESPACE \
    --userId 'jixrIy2TFPeFuQzE' \
    --body '{"currencyCode": "DIEVZRB6gJPCnueh", "discountedPrice": 84, "ext": {"AHt3Dv7nvvD4N2yh": {}, "1TzhNo3j2zADXjXf": {}, "GkhyNMR6GoD7M8xJ": {}}, "itemId": "M3TRM6cG7CHEZxJL", "language": "MAD_559", "price": 28, "quantity": 83, "region": "hSFD7tzY9YWNsiW3", "returnUrl": "Ececx6czkRCN6GMQ", "sectionId": "zltPCtmOAgBDMVnd"}' \
    > test.out 2>&1
eval_tap $? 376 'PublicCreateUserOrder' test.out

#- 377 PublicGetUserOrder
samples/cli/sample-apps Platform publicGetUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'hyqC8eqwDjR3P2oP' \
    --userId 'Aqrc0X9nXH8SoZuj' \
    > test.out 2>&1
eval_tap $? 377 'PublicGetUserOrder' test.out

#- 378 PublicCancelUserOrder
samples/cli/sample-apps Platform publicCancelUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'vUR85ufAQGy7MAhJ' \
    --userId 'v9XS0EPQAZRB3dPe' \
    > test.out 2>&1
eval_tap $? 378 'PublicCancelUserOrder' test.out

#- 379 PublicGetUserOrderHistories
samples/cli/sample-apps Platform publicGetUserOrderHistories \
    --namespace $AB_NAMESPACE \
    --orderNo 'fGcVuqy5M2s8dkVG' \
    --userId 'UGXPTuQUAYl9an8R' \
    > test.out 2>&1
eval_tap $? 379 'PublicGetUserOrderHistories' test.out

#- 380 PublicDownloadUserOrderReceipt
samples/cli/sample-apps Platform publicDownloadUserOrderReceipt \
    --namespace $AB_NAMESPACE \
    --orderNo 'Wzajj9oO5Ak3IJmq' \
    --userId 'u1auIrIgiwB2Ucph' \
    > test.out 2>&1
eval_tap $? 380 'PublicDownloadUserOrderReceipt' test.out

#- 381 PublicGetPaymentAccounts
samples/cli/sample-apps Platform publicGetPaymentAccounts \
    --namespace $AB_NAMESPACE \
    --userId 'P0vkpo7sIKCfuDEz' \
    > test.out 2>&1
eval_tap $? 381 'PublicGetPaymentAccounts' test.out

#- 382 PublicDeletePaymentAccount
samples/cli/sample-apps Platform publicDeletePaymentAccount \
    --id 'aU55xITFKapDpP5J' \
    --namespace $AB_NAMESPACE \
    --type 'card' \
    --userId 'NnyubR0gm7RUfcv2' \
    > test.out 2>&1
eval_tap $? 382 'PublicDeletePaymentAccount' test.out

#- 383 PublicListActiveSections
samples/cli/sample-apps Platform publicListActiveSections \
    --namespace $AB_NAMESPACE \
    --userId 'YHulhpShupV1POo7' \
    --language 'REd7JNIC1PmIWubv' \
    --region 'J1YOzPorIFnhNxi5' \
    --storeId 'v3kjXnqQCeQfPAVN' \
    --viewId 'YDNP1GTsHkCjaUd6' \
    > test.out 2>&1
eval_tap $? 383 'PublicListActiveSections' test.out

#- 384 PublicQueryUserSubscriptions
samples/cli/sample-apps Platform publicQueryUserSubscriptions \
    --namespace $AB_NAMESPACE \
    --userId 'd0bDINUF7xFFl29Y' \
    --chargeStatus 'RECURRING_CHARGING' \
    --itemId '0EHiAYZaynQr1jN6' \
    --limit '26' \
    --offset '77' \
    --sku '9ib0wVOYTuHWyVNo' \
    --status 'CANCELLED' \
    --subscribedBy 'PLATFORM' \
    > test.out 2>&1
eval_tap $? 384 'PublicQueryUserSubscriptions' test.out

#- 385 PublicSubscribeSubscription
samples/cli/sample-apps Platform publicSubscribeSubscription \
    --namespace $AB_NAMESPACE \
    --userId 'o0AKUAsq8Cqn1ZnJ' \
    --body '{"currencyCode": "GWIc34RWTCVq6zHo", "itemId": "AzuLQ1aURQyPTyQN", "language": "pl-410", "region": "3octOgriSM9uiGnt", "returnUrl": "FGLdTrhcRV8O84wJ", "source": "ysugteWXosxi6x6l"}' \
    > test.out 2>&1
eval_tap $? 385 'PublicSubscribeSubscription' test.out

#- 386 PublicCheckUserSubscriptionSubscribableByItemId
samples/cli/sample-apps Platform publicCheckUserSubscriptionSubscribableByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'HZKB8K4FXkc2e8Am' \
    --itemId '8A3PPkoxJSmCvJMM' \
    > test.out 2>&1
eval_tap $? 386 'PublicCheckUserSubscriptionSubscribableByItemId' test.out

#- 387 PublicGetUserSubscription
samples/cli/sample-apps Platform publicGetUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'lN5hCT7Dqp1lGXgO' \
    --userId 'JpnzNXlHmsvQROTm' \
    > test.out 2>&1
eval_tap $? 387 'PublicGetUserSubscription' test.out

#- 388 PublicChangeSubscriptionBillingAccount
samples/cli/sample-apps Platform publicChangeSubscriptionBillingAccount \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'Sr6KlMTJsx6GrOtk' \
    --userId '1eufV6a1SflAQhpT' \
    > test.out 2>&1
eval_tap $? 388 'PublicChangeSubscriptionBillingAccount' test.out

#- 389 PublicCancelSubscription
samples/cli/sample-apps Platform publicCancelSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'tAGH8c1sGoWH0r6j' \
    --userId '8BovRtBTpPjfQVsq' \
    --body '{"immediate": false, "reason": "ES5TbtTF0Eh4ib1E"}' \
    > test.out 2>&1
eval_tap $? 389 'PublicCancelSubscription' test.out

#- 390 PublicGetUserSubscriptionBillingHistories
samples/cli/sample-apps Platform publicGetUserSubscriptionBillingHistories \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'OqwsN4KOqFChMlNB' \
    --userId 'nkXIXxwaQ4Ku3Lak' \
    --excludeFree 'false' \
    --limit '35' \
    --offset '15' \
    > test.out 2>&1
eval_tap $? 390 'PublicGetUserSubscriptionBillingHistories' test.out

#- 391 PublicListViews
samples/cli/sample-apps Platform publicListViews \
    --namespace $AB_NAMESPACE \
    --userId 'BQdg7Z8GApUQNk0E' \
    --language 'Sku1wnxCHqIKsDet' \
    --storeId 'NsnKex0C7i3rZk2X' \
    > test.out 2>&1
eval_tap $? 391 'PublicListViews' test.out

#- 392 PublicGetWallet
samples/cli/sample-apps Platform publicGetWallet \
    --currencyCode 'QKvybn84UsqUIQ56' \
    --namespace $AB_NAMESPACE \
    --userId 'S8dCrNd9KCsHkBPL' \
    > test.out 2>&1
eval_tap $? 392 'PublicGetWallet' test.out

#- 393 PublicListUserWalletTransactions
samples/cli/sample-apps Platform publicListUserWalletTransactions \
    --currencyCode 'JAsNDFSTAktRxC9H' \
    --namespace $AB_NAMESPACE \
    --userId 'MswximBrwVw2TC3v' \
    --limit '51' \
    --offset '6' \
    > test.out 2>&1
eval_tap $? 393 'PublicListUserWalletTransactions' test.out

#- 394 QueryItems1
samples/cli/sample-apps Platform queryItems1 \
    --namespace $AB_NAMESPACE \
    --appType 'DLC' \
    --availableDate 'x0vDjmgPjcPFDlYU' \
    --baseAppId 'GpZ9bZgT45oEfmC3' \
    --categoryPath 'p6HcwlMPNkng0HOI' \
    --features 'Yg7J7RLh6rOh5ond' \
    --includeSubCategoryItem 'false' \
    --itemName 'by46asbRoHWZnKg5' \
    --itemStatus 'INACTIVE' \
    --itemType 'EXTENSION' \
    --limit '68' \
    --offset '37' \
    --region 'Ronv9gJ0fAgEemJ4' \
    --sectionExclusive 'false' \
    --sortBy '["displayOrder", "name:desc", "createdAt:desc"]' \
    --storeId 'WMfpv3jSiv2ljldc' \
    --tags 'GTd0ZwQkn3FHEMDv' \
    --targetNamespace 'sZ5pbobvYgMFa8k9' \
    > test.out 2>&1
eval_tap $? 394 'QueryItems1' test.out

#- 395 ImportStore1
samples/cli/sample-apps Platform importStore1 \
    --namespace $AB_NAMESPACE \
    --storeId 'elK3tz2EsQ3yOrAa' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 395 'ImportStore1' test.out

#- 396 ExportStore1
samples/cli/sample-apps Platform exportStore1 \
    --namespace $AB_NAMESPACE \
    --storeId 'wajeMmNZ8xeSwCFC' \
    --body '{"itemIds": ["oFenzQUKVwGC1PWV", "NARxqlRqAde7ZHLT", "sFRiLQlWZLJrUFIm"]}' \
    > test.out 2>&1
eval_tap $? 396 'ExportStore1' test.out


rm -f "tmp.dat"

exit $EXIT_CODE